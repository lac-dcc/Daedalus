; ModuleID = '/src/llvm-test-suite/build/SingleSource/Benchmarks/Shootout-C++/Shootout-C++-wordfreq.e.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"struct.std::less" = type { i8 }
%class.word_reader = type { i32, [4097 x i8], ptr, ptr, ptr }
%"class.std::map" = type { %"class.std::_Rb_tree" }
%"class.std::_Rb_tree" = type { %"struct.std::_Rb_tree<const char *, std::pair<const char *const, int>, std::_Select1st<std::pair<const char *const, int>>, std::less<const char *>>::_Rb_tree_impl" }
%"struct.std::_Rb_tree<const char *, std::pair<const char *const, int>, std::_Select1st<std::pair<const char *const, int>>, std::less<const char *>>::_Rb_tree_impl" = type { %"struct.std::_Rb_tree_key_compare", %"struct.std::_Rb_tree_header" }
%"struct.std::_Rb_tree_key_compare" = type { %"struct.std::less" }
%"struct.std::_Rb_tree_header" = type { %"struct.std::_Rb_tree_node_base", i64 }
%"struct.std::_Rb_tree_node_base" = type { i32, ptr, ptr, ptr }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<std::pair<const char *, int>, std::allocator<std::pair<const char *, int>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::pair<const char *, int>, std::allocator<std::pair<const char *, int>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::pair<const char *, int>, std::allocator<std::pair<const char *, int>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::pair<const char *, int>, std::allocator<std::pair<const char *, int>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"struct.std::_Rb_tree_node" = type { %"struct.std::_Rb_tree_node_base", %"struct.__gnu_cxx::__aligned_membuf" }
%"struct.__gnu_cxx::__aligned_membuf" = type { [16 x i8] }
%"struct.std::pair.3" = type <{ ptr, i32, [4 x i8] }>
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base" }
%"struct.std::_Head_base" = type { ptr }

$_ZNSt3mapIPKciSt4lessIS1_ESaISt4pairIKS1_iEEEixEOS1_ = comdat any

$_ZNSt6vectorISt4pairIPKciESaIS3_EEC2ISt17_Rb_tree_iteratorIS0_IKS2_iEEvEET_SB_RKS4_ = comdat any

$_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_less_iterEEvT_SD_T0_T1_ = comdat any

$_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_T0_ = comdat any

$_ZNSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EED2Ev = comdat any

$_ZNSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E = comdat any

$__clang_call_terminate = comdat any

$_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_T0_ = comdat any

$_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_less_iterEEvT_T0_ = comdat any

$_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_RT0_ = comdat any

$_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_RT0_ = comdat any

$_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_SD_T0_ = comdat any

$_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEET_SD_SD_SD_T0_ = comdat any

$_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_less_iterEEvT_T0_SE_T1_T2_ = comdat any

$_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops14_Iter_less_valEEvT_T0_SE_T1_RT2_ = comdat any

$_ZNSt6vectorISt4pairIPKciESaIS3_EE19_M_range_initializeISt17_Rb_tree_iteratorIS0_IKS2_iEEEEvT_SB_St20forward_iterator_tag = comdat any

$_ZNSt15__new_allocatorISt4pairIPKciEE8allocateEmPKv = comdat any

$_ZNSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOS1_EESF_IJEEEEESt17_Rb_tree_iteratorIS4_ESt23_Rb_tree_const_iteratorIS4_EDpOT_ = comdat any

$_ZNSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS4_ERS3_ = comdat any

$_ZNSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE14_M_insert_nodeEPSt18_Rb_tree_node_baseSC_PSt13_Rb_tree_nodeIS4_E = comdat any

$_ZNSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE24_M_get_insert_unique_posERS3_ = comdat any

$_ZSt19piecewise_construct = comdat any

@stdin = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [8 x i8] c"%7d\09%s\0A\00", align 1
@_ZSt19piecewise_construct = internal constant %"struct.std::less" zeroinitializer, comdat, align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1

; Function Attrs: mustprogress optsize uwtable
define internal noundef i32 @_ZN11word_readerclEPPKc(ptr noundef nonnull align 8 dereferenceable(4128) %0, ptr nocapture noundef writeonly %1) #0 align 2 {
  %3 = getelementptr inbounds %class.word_reader, ptr %0, i64 0, i32 1
  %4 = getelementptr inbounds %class.word_reader, ptr %0, i64 0, i32 4
  %5 = getelementptr inbounds %class.word_reader, ptr %0, i64 0, i32 2
  %6 = getelementptr inbounds %class.word_reader, ptr %0, i64 0, i32 3
  br label %7

7:                                                ; preds = %48, %2
  %8 = phi i32 [ 0, %2 ], [ %35, %48 ]
  %9 = icmp eq i32 %8, 0
  br label %10

10:                                               ; preds = %49, %7
  %11 = load ptr, ptr %5, align 8, !tbaa !7
  %12 = load i8, ptr %11, align 1, !tbaa !13
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %10
  %15 = load ptr, ptr %4, align 8, !tbaa !14
  %16 = tail call i64 @fread(ptr noundef nonnull %3, i64 noundef 1, i64 noundef 4096, ptr noundef %15) #18
  %17 = trunc i64 %16 to i32
  %18 = shl i64 %16, 32
  %19 = ashr exact i64 %18, 32
  %20 = getelementptr inbounds %class.word_reader, ptr %0, i64 0, i32 1, i64 %19
  store i8 0, ptr %20, align 1, !tbaa !13
  store ptr %3, ptr %5, align 8, !tbaa !7
  %21 = icmp sgt i32 %17, 0
  br i1 %21, label %22, label %50

22:                                               ; preds = %14, %10
  %23 = phi ptr [ %11, %10 ], [ %3, %14 ]
  %24 = getelementptr inbounds i8, ptr %23, i64 1
  store ptr %24, ptr %5, align 8, !tbaa !7
  %25 = load i8, ptr %23, align 1, !tbaa !13
  %26 = sext i8 %25 to i32
  %27 = tail call i32 @isalpha(i32 noundef %26) #19
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %49, label %29

29:                                               ; preds = %22
  %.lcssa = phi i32 [ %26, %22 ]
  %30 = tail call i32 @tolower(i32 noundef %.lcssa) #19
  %31 = trunc i32 %30 to i8
  %32 = load ptr, ptr %6, align 8, !tbaa !15
  %33 = zext i32 %8 to i64
  %34 = getelementptr inbounds i8, ptr %32, i64 %33
  store i8 %31, ptr %34, align 1, !tbaa !13
  %35 = add nuw nsw i32 %8, 1
  %36 = load i32, ptr %0, align 8, !tbaa !16
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %48

38:                                               ; preds = %29
  %39 = shl nuw nsw i32 %35, 1
  store i32 %39, ptr %0, align 8, !tbaa !16
  %40 = or i32 %39, 1
  %41 = zext i32 %40 to i64
  %42 = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %41) #20
  %43 = load ptr, ptr %6, align 8, !tbaa !15
  %44 = zext i32 %35 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %42, ptr noundef nonnull align 1 dereferenceable(1) %43, i64 %44, i1 false)
  %45 = icmp eq ptr %43, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %38
  tail call void @_ZdaPv(ptr noundef nonnull %43) #21
  br label %47

47:                                               ; preds = %46, %38
  store ptr %42, ptr %6, align 8, !tbaa !15
  br label %48

48:                                               ; preds = %47, %29
  br label %7, !llvm.loop !17

49:                                               ; preds = %22
  br i1 %9, label %10, label %50, !llvm.loop !17

50:                                               ; preds = %49, %14
  %.lcssa1 = phi i32 [ %8, %49 ], [ %8, %14 ]
  %51 = load ptr, ptr %6, align 8, !tbaa !15
  store ptr %51, ptr %1, align 8, !tbaa !19
  %52 = load ptr, ptr %6, align 8, !tbaa !15
  %53 = zext i32 %.lcssa1 to i64
  %54 = getelementptr inbounds i8, ptr %52, i64 %53
  store i8 0, ptr %54, align 1, !tbaa !13
  ret i32 %.lcssa1
}

; Function Attrs: nofree nounwind optsize
declare noundef i64 @fread(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(read)
declare i32 @isalpha(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(read)
declare i32 @tolower(i32 noundef) local_unnamed_addr #2

; Function Attrs: nobuiltin optsize allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #5

; Function Attrs: norecurse optsize uwtable
define dso_local noundef i32 @main() #6 personality ptr @__gxx_personality_v0 {
  %1 = alloca ptr, align 8
  %2 = alloca %"class.std::map", align 8
  %3 = alloca %class.word_reader, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %"class.std::vector", align 8
  %6 = alloca %"struct.std::less", align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #22
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %2) #22
  %7 = getelementptr inbounds i8, ptr %2, i64 8
  store i32 0, ptr %7, align 8, !tbaa !20
  %8 = getelementptr inbounds i8, ptr %2, i64 16
  store ptr null, ptr %8, align 8, !tbaa !25
  %9 = getelementptr inbounds i8, ptr %2, i64 24
  store ptr %7, ptr %9, align 8, !tbaa !26
  %10 = getelementptr inbounds i8, ptr %2, i64 32
  store ptr %7, ptr %10, align 8, !tbaa !27
  %11 = getelementptr inbounds i8, ptr %2, i64 40
  store i64 0, ptr %11, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(i64 4128, ptr nonnull %3) #22
  %12 = load ptr, ptr @stdin, align 8, !tbaa !19
  store i32 64, ptr %3, align 8, !tbaa !16
  %13 = getelementptr inbounds %class.word_reader, ptr %3, i64 0, i32 2
  %14 = getelementptr inbounds %class.word_reader, ptr %3, i64 0, i32 1
  store ptr %14, ptr %13, align 8, !tbaa !7
  %15 = invoke noalias noundef nonnull dereferenceable(65) ptr @_Znam(i64 noundef 65) #20
          to label %16 unwind label %59

16:                                               ; preds = %0
  %17 = getelementptr inbounds %class.word_reader, ptr %3, i64 0, i32 3
  store ptr %15, ptr %17, align 8, !tbaa !15
  %18 = getelementptr inbounds %class.word_reader, ptr %3, i64 0, i32 4
  store ptr %12, ptr %18, align 8, !tbaa !14
  store i8 0, ptr %15, align 1, !tbaa !13
  store i8 0, ptr %14, align 4, !tbaa !13
  br label %19

19:                                               ; preds = %67, %16
  %20 = invoke noundef i32 @_ZN11word_readerclEPPKc(ptr noundef nonnull align 8 dereferenceable(4128) %3, ptr noundef nonnull %1) #18
          to label %21 unwind label %57

21:                                               ; preds = %19
  %22 = icmp sgt i32 %20, 0
  br i1 %22, label %23, label %68

23:                                               ; preds = %21
  %24 = load ptr, ptr %8, align 8, !tbaa !25
  %25 = icmp eq ptr %24, null
  br i1 %25, label %48, label %26

26:                                               ; preds = %23
  %27 = load ptr, ptr %1, align 8, !tbaa !19
  br label %28

28:                                               ; preds = %28, %26
  %29 = phi ptr [ %24, %26 ], [ %38, %28 ]
  %30 = phi ptr [ %7, %26 ], [ %36, %28 ]
  %31 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %29, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !19
  %33 = icmp ult ptr %32, %27
  %34 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %29, i64 0, i32 3
  %35 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %29, i64 0, i32 2
  %36 = select i1 %33, ptr %30, ptr %29
  %37 = select i1 %33, ptr %34, ptr %35
  %38 = load ptr, ptr %37, align 8, !tbaa !19
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %28, !llvm.loop !29

40:                                               ; preds = %28
  %.lcssa3 = phi ptr [ %29, %28 ]
  %.lcssa2 = phi ptr [ %30, %28 ]
  %.lcssa1 = phi i1 [ %33, %28 ]
  %.lcssa = phi ptr [ %36, %28 ]
  %41 = icmp eq ptr %.lcssa, %7
  br i1 %41, label %48, label %42

42:                                               ; preds = %40
  %43 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %.lcssa3, i64 0, i32 1
  %44 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %.lcssa2, i64 0, i32 1
  %45 = select i1 %.lcssa1, ptr %44, ptr %43
  %46 = load ptr, ptr %45, align 8, !tbaa !19
  %47 = icmp ult ptr %27, %46
  br i1 %47, label %48, label %63

48:                                               ; preds = %42, %40, %23
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #22
  %49 = add nuw nsw i32 %20, 1
  %50 = sext i32 %49 to i64
  %51 = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %50) #20
          to label %52 unwind label %61

52:                                               ; preds = %48
  %53 = load ptr, ptr %1, align 8, !tbaa !19
  %54 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %51, ptr noundef nonnull dereferenceable(1) %53) #23
  store ptr %51, ptr %4, align 8, !tbaa !19
  %55 = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3mapIPKciSt4lessIS1_ESaISt4pairIKS1_iEEEixEOS1_(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(8) %4) #18
          to label %56 unwind label %61

56:                                               ; preds = %52
  store i32 1, ptr %55, align 4, !tbaa !30
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #22
  br label %67

57:                                               ; preds = %19
  %58 = landingpad { ptr, i32 }
          cleanup
  br label %118

59:                                               ; preds = %0
  %60 = landingpad { ptr, i32 }
          cleanup
  br label %118

61:                                               ; preds = %52, %48
  %62 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #22
  br label %118

63:                                               ; preds = %42
  %64 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %.lcssa, i64 0, i32 1, i32 0, i64 8
  %65 = load i32, ptr %64, align 8, !tbaa !31
  %66 = add nsw i32 %65, 1
  store i32 %66, ptr %64, align 8, !tbaa !31
  br label %67

67:                                               ; preds = %63, %56
  br label %19, !llvm.loop !33

68:                                               ; preds = %21
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #22
  %69 = load ptr, ptr %9, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #22
  invoke void @_ZNSt6vectorISt4pairIPKciESaIS3_EEC2ISt17_Rb_tree_iteratorIS0_IKS2_iEEvEET_SB_RKS4_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr %69, ptr nonnull %7, ptr noundef nonnull align 1 dereferenceable(1) %6) #18
          to label %70 unwind label %93

70:                                               ; preds = %68
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #22
  %71 = load ptr, ptr %5, align 8, !tbaa !19
  %72 = getelementptr inbounds %"struct.std::_Vector_base<std::pair<const char *, int>, std::allocator<std::pair<const char *, int>>>::_Vector_impl_data", ptr %5, i64 0, i32 1
  %73 = load ptr, ptr %72, align 8, !tbaa !19
  %74 = icmp eq ptr %71, %73
  br i1 %74, label %88, label %75

75:                                               ; preds = %70
  %76 = ptrtoint ptr %73 to i64
  %77 = ptrtoint ptr %71 to i64
  %78 = sub i64 %76, %77
  %79 = ashr exact i64 %78, 4
  %80 = call i64 @llvm.ctlz.i64(i64 %79, i1 true), !range !34
  %81 = shl nuw nsw i64 %80, 1
  %82 = xor i64 %81, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_less_iterEEvT_SD_T0_T1_(ptr %71, ptr %73, i64 noundef %82) #18
          to label %83 unwind label %95

83:                                               ; preds = %75
  invoke void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_T0_(ptr %71, ptr %73) #18
          to label %84 unwind label %95

84:                                               ; preds = %83
  %85 = load ptr, ptr %72, align 8, !tbaa !35
  %86 = load ptr, ptr %5, align 8, !tbaa !37
  %87 = icmp eq ptr %85, %86
  br i1 %87, label %88, label %100

88:                                               ; preds = %100, %84, %70
  %89 = phi ptr [ %86, %84 ], [ %71, %70 ], [ %110, %100 ]
  %90 = icmp eq ptr %89, null
  br i1 %90, label %92, label %91

91:                                               ; preds = %88
  call void @_ZdlPv(ptr noundef nonnull %89) #21
  br label %92

92:                                               ; preds = %91, %88
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 4128, ptr nonnull %3) #22
  call void @_ZNSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %2) #23
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %2) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #22
  ret i32 0

93:                                               ; preds = %68
  %94 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #22
  br label %116

95:                                               ; preds = %83, %75
  %96 = landingpad { ptr, i32 }
          cleanup
  %97 = load ptr, ptr %5, align 8, !tbaa !37
  %98 = icmp eq ptr %97, null
  br i1 %98, label %116, label %99

99:                                               ; preds = %95
  call void @_ZdlPv(ptr noundef nonnull %97) #21
  br label %116

100:                                              ; preds = %100, %84
  %101 = phi ptr [ %110, %100 ], [ %86, %84 ]
  %102 = phi i64 [ %108, %100 ], [ 0, %84 ]
  %103 = getelementptr inbounds %"struct.std::pair.3", ptr %101, i64 %102
  %104 = getelementptr inbounds %"struct.std::pair.3", ptr %101, i64 %102, i32 1
  %105 = load i32, ptr %104, align 8, !tbaa !38
  %106 = load ptr, ptr %103, align 8, !tbaa !40
  %107 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %105, ptr noundef %106) #18
  %108 = add nuw i64 %102, 1
  %109 = load ptr, ptr %72, align 8, !tbaa !35
  %110 = load ptr, ptr %5, align 8, !tbaa !37
  %111 = ptrtoint ptr %109 to i64
  %112 = ptrtoint ptr %110 to i64
  %113 = sub i64 %111, %112
  %114 = ashr exact i64 %113, 4
  %115 = icmp ult i64 %108, %114
  br i1 %115, label %100, label %88, !llvm.loop !41

116:                                              ; preds = %99, %95, %93
  %117 = phi { ptr, i32 } [ %94, %93 ], [ %96, %95 ], [ %96, %99 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #22
  br label %118

118:                                              ; preds = %116, %61, %59, %57
  %119 = phi { ptr, i32 } [ %117, %116 ], [ %62, %61 ], [ %58, %57 ], [ %60, %59 ]
  call void @llvm.lifetime.end.p0(i64 4128, ptr nonnull %3) #22
  call void @_ZNSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %2) #23
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %2) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #22
  resume { ptr, i32 } %119
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #8

; Function Attrs: optsize uwtable
define internal noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3mapIPKciSt4lessIS1_ESaISt4pairIKS1_iEEEixEOS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #9 comdat align 2 personality ptr @__gxx_personality_v0 {
  %3 = alloca %"class.std::tuple", align 8
  %4 = alloca %"struct.std::less", align 1
  %5 = getelementptr inbounds i8, ptr %0, i64 16
  %6 = load ptr, ptr %5, align 8, !tbaa !25
  %7 = getelementptr inbounds i8, ptr %0, i64 8
  %8 = icmp eq ptr %6, null
  br i1 %8, label %29, label %9

9:                                                ; preds = %2
  %10 = load ptr, ptr %1, align 8, !tbaa !19
  br label %11

11:                                               ; preds = %11, %9
  %12 = phi ptr [ %6, %9 ], [ %21, %11 ]
  %13 = phi ptr [ %7, %9 ], [ %19, %11 ]
  %14 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %12, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !19
  %16 = icmp ult ptr %15, %10
  %17 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %12, i64 0, i32 3
  %18 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %12, i64 0, i32 2
  %19 = select i1 %16, ptr %13, ptr %12
  %20 = select i1 %16, ptr %17, ptr %18
  %21 = load ptr, ptr %20, align 8, !tbaa !19
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %11, !llvm.loop !29

23:                                               ; preds = %11
  %.lcssa = phi ptr [ %19, %11 ]
  %24 = icmp eq ptr %.lcssa, %7
  br i1 %24, label %29, label %25

25:                                               ; preds = %23
  %26 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %.lcssa, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !42
  %28 = icmp ult ptr %10, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %25, %23, %2
  %30 = phi ptr [ %.lcssa, %25 ], [ %7, %23 ], [ %7, %2 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #22
  store ptr %1, ptr %3, align 8, !tbaa !19, !alias.scope !43
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #22
  %31 = call ptr @_ZNSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOS1_EESF_IJEEEEESt17_Rb_tree_iteratorIS4_ESt23_Rb_tree_const_iteratorIS4_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %30, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) #18
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #22
  br label %32

32:                                               ; preds = %29, %25
  %33 = phi ptr [ %31, %29 ], [ %.lcssa, %25 ]
  %34 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %33, i64 0, i32 1, i32 0, i64 8
  ret ptr %34
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: optsize uwtable
define internal void @_ZNSt6vectorISt4pairIPKciESaIS3_EEC2ISt17_Rb_tree_iteratorIS0_IKS2_iEEvEET_SB_RKS4_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2, ptr noundef nonnull align 1 dereferenceable(1) %3) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  invoke void @_ZNSt6vectorISt4pairIPKciESaIS3_EE19_M_range_initializeISt17_Rb_tree_iteratorIS0_IKS2_iEEEEvT_SB_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2) #18
          to label %5 unwind label %6

5:                                                ; preds = %4
  ret void

6:                                                ; preds = %4
  %7 = landingpad { ptr, i32 }
          cleanup
  %8 = load ptr, ptr %0, align 8, !tbaa !37
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %6
  tail call void @_ZdlPv(ptr noundef nonnull %8) #21
  br label %11

11:                                               ; preds = %10, %6
  resume { ptr, i32 } %7
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #10

; Function Attrs: optsize uwtable
define internal void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_less_iterEEvT_SD_T0_T1_(ptr %0, ptr %1, i64 noundef %2) #9 comdat {
  %4 = alloca %"struct.std::less", align 1
  %5 = alloca %"struct.std::less", align 1
  %6 = ptrtoint ptr %0 to i64
  %7 = ptrtoint ptr %1 to i64
  %8 = sub i64 %7, %6
  %9 = icmp sgt i64 %8, 256
  br i1 %9, label %10, label %27

10:                                               ; preds = %3
  %11 = getelementptr inbounds %"struct.std::pair.3", ptr %0, i64 1
  br label %12

12:                                               ; preds = %18, %10
  %13 = phi i64 [ %8, %10 ], [ %25, %18 ]
  %14 = phi i64 [ %2, %10 ], [ %20, %18 ]
  %15 = phi ptr [ %1, %10 ], [ %23, %18 ]
  %16 = icmp eq i64 %14, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  %.lcssa = phi ptr [ %15, %12 ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4)
  call void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_RT0_(ptr %0, ptr %.lcssa, ptr noundef nonnull align 1 dereferenceable(1) %4) #18
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4)
  call void @_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_RT0_(ptr %0, ptr %.lcssa, ptr noundef nonnull align 1 dereferenceable(1) %5) #18
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5)
  br label %27

18:                                               ; preds = %12
  %19 = lshr i64 %13, 5
  %20 = add nsw i64 %14, -1
  %21 = getelementptr inbounds %"struct.std::pair.3", ptr %0, i64 %19
  %22 = getelementptr inbounds %"struct.std::pair.3", ptr %15, i64 -1
  tail call void @_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_SD_T0_(ptr %0, ptr nonnull %11, ptr %21, ptr nonnull %22) #18
  %23 = tail call ptr @_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEET_SD_SD_SD_T0_(ptr nonnull %11, ptr %15, ptr %0) #18
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_less_iterEEvT_SD_T0_T1_(ptr %23, ptr %15, i64 noundef %20) #18
  %24 = ptrtoint ptr %23 to i64
  %25 = sub i64 %24, %6
  %26 = icmp sgt i64 %25, 256
  br i1 %26, label %12, label %27, !llvm.loop !46

27:                                               ; preds = %18, %17, %3
  ret void
}

; Function Attrs: optsize uwtable
define internal void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_T0_(ptr %0, ptr %1) #9 comdat {
  %3 = ptrtoint ptr %1 to i64
  %4 = ptrtoint ptr %0 to i64
  %5 = sub i64 %3, %4
  %6 = icmp sgt i64 %5, 256
  br i1 %6, label %7, label %14

7:                                                ; preds = %2
  %8 = getelementptr inbounds %"struct.std::pair.3", ptr %0, i64 16
  tail call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_T0_(ptr %0, ptr nonnull %8) #18
  %9 = icmp eq ptr %8, %1
  br i1 %9, label %15, label %10

10:                                               ; preds = %10, %7
  %11 = phi ptr [ %12, %10 ], [ %8, %7 ]
  tail call void @_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_less_iterEEvT_T0_(ptr nonnull %11) #18
  %12 = getelementptr inbounds %"struct.std::pair.3", ptr %11, i64 1
  %13 = icmp eq ptr %12, %1
  br i1 %13, label %15, label %10, !llvm.loop !47

14:                                               ; preds = %2
  tail call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_T0_(ptr %0, ptr %1) #18
  br label %15

15:                                               ; preds = %14, %10, %7
  ret void
}

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind optsize uwtable
define internal void @_ZNSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
  %2 = getelementptr inbounds i8, ptr %0, i64 16
  %3 = load ptr, ptr %2, align 8, !tbaa !25
  invoke void @_ZNSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %3) #18
          to label %4 unwind label %5

4:                                                ; preds = %1
  ret void

5:                                                ; preds = %1
  %6 = landingpad { ptr, i32 }
          catch ptr null
  %7 = extractvalue { ptr, i32 } %6, 0
  tail call void @__clang_call_terminate(ptr %7) #24
  unreachable
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: mustprogress optsize uwtable
define internal void @_ZNSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %11, label %4

4:                                                ; preds = %4, %2
  %5 = phi ptr [ %9, %4 ], [ %1, %2 ]
  %6 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %5, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !48
  tail call void @_ZNSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %7) #18
  %8 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %5, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !49
  tail call void @_ZdlPv(ptr noundef nonnull %5) #21
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %4, !llvm.loop !50

11:                                               ; preds = %4, %2
  ret void
}

; Function Attrs: noinline noreturn nounwind optsize uwtable
define internal void @__clang_call_terminate(ptr noundef %0) #12 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #22
  tail call void @_ZSt9terminatev() #24
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: optsize uwtable
define internal void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_T0_(ptr %0, ptr %1) #9 comdat {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %51, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %"struct.std::pair.3", ptr %0, i64 1
  %6 = icmp eq ptr %5, %1
  br i1 %6, label %51, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %"struct.std::pair.3", ptr %0, i64 0, i32 1
  %9 = ptrtoint ptr %0 to i64
  br label %10

10:                                               ; preds = %48, %7
  %11 = phi ptr [ %5, %7 ], [ %49, %48 ]
  %12 = phi ptr [ %0, %7 ], [ %11, %48 ]
  %13 = getelementptr inbounds %"struct.std::pair.3", ptr %12, i64 1, i32 1
  %14 = load i32, ptr %13, align 8
  %15 = load i32, ptr %8, align 8, !tbaa !38
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %21, label %17

17:                                               ; preds = %10
  %18 = icmp sgt i32 %14, %15
  br i1 %18, label %19, label %47

19:                                               ; preds = %17
  %20 = load ptr, ptr %11, align 8
  br label %26

21:                                               ; preds = %10
  %22 = load ptr, ptr %11, align 8
  %23 = load ptr, ptr %0, align 8, !tbaa !40
  %24 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %22, ptr noundef nonnull dereferenceable(1) %23) #19
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %47

26:                                               ; preds = %21, %19
  %27 = phi ptr [ %20, %19 ], [ %22, %21 ]
  %28 = ptrtoint ptr %11 to i64
  %29 = sub i64 %28, %9
  %30 = icmp sgt i64 %29, 0
  br i1 %30, label %31, label %46

31:                                               ; preds = %26
  %32 = getelementptr inbounds %"struct.std::pair.3", ptr %12, i64 2
  %33 = lshr exact i64 %29, 4
  br label %34

34:                                               ; preds = %34, %31
  %35 = phi i64 [ %44, %34 ], [ %33, %31 ]
  %36 = phi ptr [ %39, %34 ], [ %32, %31 ]
  %37 = phi ptr [ %38, %34 ], [ %11, %31 ]
  %38 = getelementptr inbounds %"struct.std::pair.3", ptr %37, i64 -1
  %39 = getelementptr inbounds %"struct.std::pair.3", ptr %36, i64 -1
  %40 = load ptr, ptr %38, align 8, !tbaa !19
  store ptr %40, ptr %39, align 8, !tbaa !40
  %41 = getelementptr %"struct.std::pair.3", ptr %37, i64 -1, i32 1
  %42 = load i32, ptr %41, align 8, !tbaa !30
  %43 = getelementptr %"struct.std::pair.3", ptr %36, i64 -1, i32 1
  store i32 %42, ptr %43, align 8, !tbaa !38
  %44 = add nsw i64 %35, -1
  %45 = icmp ugt i64 %35, 1
  br i1 %45, label %34, label %46, !llvm.loop !51

46:                                               ; preds = %34, %26
  store ptr %27, ptr %0, align 8, !tbaa !40
  store i32 %14, ptr %8, align 8, !tbaa !38
  br label %48

47:                                               ; preds = %21, %17
  tail call void @_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_less_iterEEvT_T0_(ptr nonnull %11) #18
  br label %48

48:                                               ; preds = %47, %46
  %49 = getelementptr inbounds %"struct.std::pair.3", ptr %11, i64 1
  %50 = icmp eq ptr %49, %1
  br i1 %50, label %51, label %10, !llvm.loop !52

51:                                               ; preds = %48, %4, %2
  ret void
}

; Function Attrs: mustprogress optsize uwtable
define internal void @_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_less_iterEEvT_T0_(ptr %0) #0 comdat {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds i8, ptr %0, i64 8
  %4 = load i32, ptr %3, align 8
  br label %5

5:                                                ; preds = %19, %1
  %6 = phi ptr [ %0, %1 ], [ %7, %19 ]
  %7 = getelementptr inbounds %"struct.std::pair.3", ptr %6, i64 -1
  %8 = getelementptr %"struct.std::pair.3", ptr %6, i64 -1, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !30
  %10 = icmp eq i32 %4, %9
  br i1 %10, label %15, label %11

11:                                               ; preds = %5
  %12 = icmp sgt i32 %4, %9
  br i1 %12, label %13, label %22

13:                                               ; preds = %11
  %14 = load ptr, ptr %7, align 8, !tbaa !19
  br label %19

15:                                               ; preds = %5
  %16 = load ptr, ptr %7, align 8, !tbaa !19
  %17 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) %16) #19
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %15, %13
  %20 = phi ptr [ %14, %13 ], [ %16, %15 ]
  store ptr %20, ptr %6, align 8, !tbaa !40
  %21 = getelementptr inbounds %"struct.std::pair.3", ptr %6, i64 0, i32 1
  store i32 %9, ptr %21, align 8, !tbaa !38
  br label %5, !llvm.loop !53

22:                                               ; preds = %15, %11
  %.lcssa = phi ptr [ %6, %15 ], [ %6, %11 ]
  store ptr %2, ptr %.lcssa, align 8, !tbaa !40
  %23 = getelementptr inbounds %"struct.std::pair.3", ptr %.lcssa, i64 0, i32 1
  store i32 %4, ptr %23, align 8, !tbaa !38
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: optsize uwtable
define internal void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_RT0_(ptr %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2) #9 comdat {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = ashr exact i64 %6, 4
  %8 = icmp slt i64 %6, 32
  br i1 %8, label %20, label %9

9:                                                ; preds = %3
  %10 = add nsw i64 %7, -2
  %11 = lshr i64 %10, 1
  br label %12

12:                                               ; preds = %12, %9
  %13 = phi i64 [ %11, %9 ], [ %19, %12 ]
  %14 = getelementptr inbounds %"struct.std::pair.3", ptr %0, i64 %13
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr inbounds i8, ptr %14, i64 8
  %17 = load i32, ptr %16, align 8
  tail call void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_less_iterEEvT_T0_SE_T1_T2_(ptr %0, i64 noundef %13, i64 noundef %7, ptr %15, i32 %17) #18
  %18 = icmp eq i64 %13, 0
  %19 = add nsw i64 %13, -1
  br i1 %18, label %20, label %12, !llvm.loop !54

20:                                               ; preds = %12, %3
  ret void
}

; Function Attrs: mustprogress optsize uwtable
define internal void @_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_RT0_(ptr %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2) #0 comdat {
  %4 = ptrtoint ptr %0 to i64
  %5 = ptrtoint ptr %1 to i64
  %6 = sub i64 %5, %4
  %7 = icmp sgt i64 %6, 16
  br i1 %7, label %8, label %22

8:                                                ; preds = %3
  %9 = getelementptr inbounds %"struct.std::pair.3", ptr %0, i64 0, i32 1
  br label %10

10:                                               ; preds = %10, %8
  %11 = phi ptr [ %1, %8 ], [ %12, %10 ]
  %12 = getelementptr inbounds %"struct.std::pair.3", ptr %11, i64 -1
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr %"struct.std::pair.3", ptr %11, i64 -1, i32 1
  %15 = load i32, ptr %14, align 8
  %16 = load ptr, ptr %0, align 8, !tbaa !19
  store ptr %16, ptr %12, align 8, !tbaa !40
  %17 = load i32, ptr %9, align 8, !tbaa !30
  store i32 %17, ptr %14, align 8, !tbaa !38
  %18 = ptrtoint ptr %12 to i64
  %19 = sub i64 %18, %4
  %20 = ashr exact i64 %19, 4
  tail call void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_less_iterEEvT_T0_SE_T1_T2_(ptr nonnull %0, i64 noundef 0, i64 noundef %20, ptr %13, i32 %15) #18
  %21 = icmp sgt i64 %19, 16
  br i1 %21, label %10, label %22, !llvm.loop !55

22:                                               ; preds = %10, %3
  ret void
}

; Function Attrs: mustprogress optsize uwtable
define internal void @_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_SD_T0_(ptr %0, ptr %1, ptr %2, ptr %3) #0 comdat {
  %5 = getelementptr inbounds %"struct.std::pair.3", ptr %1, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !30
  %7 = getelementptr inbounds %"struct.std::pair.3", ptr %2, i64 0, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !30
  %9 = icmp eq i32 %6, %8
  br i1 %9, label %12, label %10

10:                                               ; preds = %4
  %11 = icmp sgt i32 %6, %8
  br i1 %11, label %17, label %58

12:                                               ; preds = %4
  %13 = load ptr, ptr %1, align 8, !tbaa !19
  %14 = load ptr, ptr %2, align 8, !tbaa !19
  %15 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %13, ptr noundef nonnull dereferenceable(1) %14) #19
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %58

17:                                               ; preds = %12, %10
  %18 = getelementptr inbounds %"struct.std::pair.3", ptr %3, i64 0, i32 1
  %19 = load i32, ptr %18, align 8, !tbaa !30
  %20 = icmp eq i32 %8, %19
  br i1 %20, label %25, label %21

21:                                               ; preds = %17
  %22 = icmp sgt i32 %8, %19
  br i1 %22, label %23, label %35

23:                                               ; preds = %21
  %24 = load ptr, ptr %2, align 8, !tbaa !19
  br label %30

25:                                               ; preds = %17
  %26 = load ptr, ptr %2, align 8, !tbaa !19
  %27 = load ptr, ptr %3, align 8, !tbaa !19
  %28 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %26, ptr noundef nonnull dereferenceable(1) %27) #19
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %25, %23
  %31 = phi ptr [ %24, %23 ], [ %26, %25 ]
  %32 = load ptr, ptr %0, align 8, !tbaa !19
  store ptr %31, ptr %0, align 8, !tbaa !19
  store ptr %32, ptr %2, align 8, !tbaa !19
  %33 = getelementptr inbounds %"struct.std::pair.3", ptr %0, i64 0, i32 1
  %34 = load i32, ptr %33, align 8, !tbaa !30
  store i32 %8, ptr %33, align 8, !tbaa !30
  store i32 %34, ptr %7, align 8, !tbaa !30
  br label %99

35:                                               ; preds = %25, %21
  %36 = icmp eq i32 %6, %19
  br i1 %36, label %43, label %37

37:                                               ; preds = %35
  %38 = icmp sgt i32 %6, %19
  br i1 %38, label %39, label %41

39:                                               ; preds = %37
  %40 = load ptr, ptr %3, align 8, !tbaa !19
  br label %48

41:                                               ; preds = %37
  %42 = load ptr, ptr %1, align 8, !tbaa !19
  br label %53

43:                                               ; preds = %35
  %44 = load ptr, ptr %1, align 8, !tbaa !19
  %45 = load ptr, ptr %3, align 8, !tbaa !19
  %46 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %44, ptr noundef nonnull dereferenceable(1) %45) #19
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %43, %39
  %49 = phi ptr [ %40, %39 ], [ %45, %43 ]
  %50 = load ptr, ptr %0, align 8, !tbaa !19
  store ptr %49, ptr %0, align 8, !tbaa !19
  store ptr %50, ptr %3, align 8, !tbaa !19
  %51 = getelementptr inbounds %"struct.std::pair.3", ptr %0, i64 0, i32 1
  %52 = load i32, ptr %51, align 8, !tbaa !30
  store i32 %19, ptr %51, align 8, !tbaa !30
  store i32 %52, ptr %18, align 8, !tbaa !30
  br label %99

53:                                               ; preds = %43, %41
  %54 = phi ptr [ %42, %41 ], [ %44, %43 ]
  %55 = load ptr, ptr %0, align 8, !tbaa !19
  store ptr %54, ptr %0, align 8, !tbaa !19
  store ptr %55, ptr %1, align 8, !tbaa !19
  %56 = getelementptr inbounds %"struct.std::pair.3", ptr %0, i64 0, i32 1
  %57 = load i32, ptr %56, align 8, !tbaa !30
  store i32 %6, ptr %56, align 8, !tbaa !30
  store i32 %57, ptr %5, align 8, !tbaa !30
  br label %99

58:                                               ; preds = %12, %10
  %59 = getelementptr inbounds %"struct.std::pair.3", ptr %3, i64 0, i32 1
  %60 = load i32, ptr %59, align 8, !tbaa !30
  %61 = icmp eq i32 %6, %60
  br i1 %61, label %66, label %62

62:                                               ; preds = %58
  %63 = icmp sgt i32 %6, %60
  br i1 %63, label %64, label %76

64:                                               ; preds = %62
  %65 = load ptr, ptr %1, align 8, !tbaa !19
  br label %71

66:                                               ; preds = %58
  %67 = load ptr, ptr %1, align 8, !tbaa !19
  %68 = load ptr, ptr %3, align 8, !tbaa !19
  %69 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %67, ptr noundef nonnull dereferenceable(1) %68) #19
  %70 = icmp sgt i32 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %66, %64
  %72 = phi ptr [ %65, %64 ], [ %67, %66 ]
  %73 = load ptr, ptr %0, align 8, !tbaa !19
  store ptr %72, ptr %0, align 8, !tbaa !19
  store ptr %73, ptr %1, align 8, !tbaa !19
  %74 = getelementptr inbounds %"struct.std::pair.3", ptr %0, i64 0, i32 1
  %75 = load i32, ptr %74, align 8, !tbaa !30
  store i32 %6, ptr %74, align 8, !tbaa !30
  store i32 %75, ptr %5, align 8, !tbaa !30
  br label %99

76:                                               ; preds = %66, %62
  %77 = icmp eq i32 %8, %60
  br i1 %77, label %84, label %78

78:                                               ; preds = %76
  %79 = icmp sgt i32 %8, %60
  br i1 %79, label %80, label %82

80:                                               ; preds = %78
  %81 = load ptr, ptr %3, align 8, !tbaa !19
  br label %89

82:                                               ; preds = %78
  %83 = load ptr, ptr %2, align 8, !tbaa !19
  br label %94

84:                                               ; preds = %76
  %85 = load ptr, ptr %2, align 8, !tbaa !19
  %86 = load ptr, ptr %3, align 8, !tbaa !19
  %87 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %85, ptr noundef nonnull dereferenceable(1) %86) #19
  %88 = icmp sgt i32 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %84, %80
  %90 = phi ptr [ %81, %80 ], [ %86, %84 ]
  %91 = load ptr, ptr %0, align 8, !tbaa !19
  store ptr %90, ptr %0, align 8, !tbaa !19
  store ptr %91, ptr %3, align 8, !tbaa !19
  %92 = getelementptr inbounds %"struct.std::pair.3", ptr %0, i64 0, i32 1
  %93 = load i32, ptr %92, align 8, !tbaa !30
  store i32 %60, ptr %92, align 8, !tbaa !30
  store i32 %93, ptr %59, align 8, !tbaa !30
  br label %99

94:                                               ; preds = %84, %82
  %95 = phi ptr [ %83, %82 ], [ %85, %84 ]
  %96 = load ptr, ptr %0, align 8, !tbaa !19
  store ptr %95, ptr %0, align 8, !tbaa !19
  store ptr %96, ptr %2, align 8, !tbaa !19
  %97 = getelementptr inbounds %"struct.std::pair.3", ptr %0, i64 0, i32 1
  %98 = load i32, ptr %97, align 8, !tbaa !30
  store i32 %8, ptr %97, align 8, !tbaa !30
  store i32 %98, ptr %7, align 8, !tbaa !30
  br label %99

99:                                               ; preds = %94, %89, %71, %53, %48, %30
  ret void
}

; Function Attrs: mustprogress nounwind optsize uwtable
define internal ptr @_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEET_SD_SD_SD_T0_(ptr %0, ptr %1, ptr %2) #14 comdat {
  %4 = getelementptr inbounds %"struct.std::pair.3", ptr %2, i64 0, i32 1
  br label %5

5:                                                ; preds = %44, %3
  %6 = phi ptr [ %0, %3 ], [ %48, %44 ]
  %7 = phi ptr [ %1, %3 ], [ %.lcssa1, %44 ]
  %8 = load i32, ptr %4, align 8, !tbaa !38
  br label %9

9:                                                ; preds = %21, %5
  %10 = phi ptr [ %6, %5 ], [ %22, %21 ]
  %11 = getelementptr inbounds %"struct.std::pair.3", ptr %10, i64 0, i32 1
  %12 = load i32, ptr %11, align 8, !tbaa !30
  %13 = icmp eq i32 %12, %8
  br i1 %13, label %16, label %14

14:                                               ; preds = %9
  %15 = icmp sgt i32 %12, %8
  br i1 %15, label %21, label %23

16:                                               ; preds = %9
  %17 = load ptr, ptr %10, align 8, !tbaa !40
  %18 = load ptr, ptr %2, align 8, !tbaa !40
  %19 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %17, ptr noundef nonnull dereferenceable(1) %18) #19
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %16, %14
  %22 = getelementptr inbounds %"struct.std::pair.3", ptr %10, i64 1
  br label %9, !llvm.loop !56

23:                                               ; preds = %16, %14
  %.lcssa = phi ptr [ %10, %16 ], [ %10, %14 ]
  %24 = phi i32 [ %12, %14 ], [ %8, %16 ]
  %25 = getelementptr inbounds %"struct.std::pair.3", ptr %.lcssa, i64 0, i32 1
  br label %26

26:                                               ; preds = %34, %23
  %27 = phi ptr [ %7, %23 ], [ %28, %34 ]
  %28 = getelementptr inbounds %"struct.std::pair.3", ptr %27, i64 -1
  %29 = getelementptr %"struct.std::pair.3", ptr %27, i64 -1, i32 1
  %30 = load i32, ptr %29, align 8, !tbaa !30
  %31 = icmp eq i32 %8, %30
  br i1 %31, label %35, label %32

32:                                               ; preds = %26
  %33 = icmp sgt i32 %8, %30
  br i1 %33, label %34, label %40

34:                                               ; preds = %35, %32
  br label %26, !llvm.loop !57

35:                                               ; preds = %26
  %36 = load ptr, ptr %2, align 8, !tbaa !40
  %37 = load ptr, ptr %28, align 8, !tbaa !40
  %38 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %36, ptr noundef nonnull dereferenceable(1) %37) #19
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %34, label %40

40:                                               ; preds = %35, %32
  %.lcssa2 = phi ptr [ %27, %35 ], [ %27, %32 ]
  %.lcssa1 = phi ptr [ %28, %35 ], [ %28, %32 ]
  %41 = phi i32 [ %30, %32 ], [ %8, %35 ]
  %42 = icmp ult ptr %.lcssa, %.lcssa1
  br i1 %42, label %44, label %43

43:                                               ; preds = %40
  %.lcssa.lcssa = phi ptr [ %.lcssa, %40 ]
  ret ptr %.lcssa.lcssa

44:                                               ; preds = %40
  %45 = getelementptr %"struct.std::pair.3", ptr %.lcssa2, i64 -1, i32 1
  %46 = load ptr, ptr %.lcssa, align 8, !tbaa !19
  %47 = load ptr, ptr %.lcssa1, align 8, !tbaa !19
  store ptr %47, ptr %.lcssa, align 8, !tbaa !19
  store ptr %46, ptr %.lcssa1, align 8, !tbaa !19
  store i32 %41, ptr %25, align 8, !tbaa !30
  store i32 %24, ptr %45, align 8, !tbaa !30
  %48 = getelementptr inbounds %"struct.std::pair.3", ptr %.lcssa, i64 1
  br label %5, !llvm.loop !58
}

; Function Attrs: optsize uwtable
define internal void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_less_iterEEvT_T0_SE_T1_T2_(ptr %0, i64 noundef %1, i64 noundef %2, ptr %3, i32 %4) #9 comdat {
  %6 = alloca %"struct.std::less", align 1
  %7 = add nsw i64 %2, -1
  %8 = sdiv i64 %7, 2
  %9 = icmp sgt i64 %8, %1
  br i1 %9, label %10, label %39

10:                                               ; preds = %29, %5
  %11 = phi i64 [ %31, %29 ], [ %1, %5 ]
  %12 = shl i64 %11, 1
  %13 = add i64 %12, 2
  %14 = or i64 %12, 1
  %15 = getelementptr inbounds %"struct.std::pair.3", ptr %0, i64 %13, i32 1
  %16 = load i32, ptr %15, align 8, !tbaa !38
  %17 = getelementptr inbounds %"struct.std::pair.3", ptr %0, i64 %14, i32 1
  %18 = load i32, ptr %17, align 8, !tbaa !38
  %19 = icmp eq i32 %16, %18
  br i1 %19, label %22, label %20

20:                                               ; preds = %10
  %21 = icmp sgt i32 %16, %18
  br label %29

22:                                               ; preds = %10
  %23 = getelementptr inbounds %"struct.std::pair.3", ptr %0, i64 %14
  %24 = getelementptr inbounds %"struct.std::pair.3", ptr %0, i64 %13
  %25 = load ptr, ptr %24, align 8, !tbaa !40
  %26 = load ptr, ptr %23, align 8, !tbaa !40
  %27 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %25, ptr noundef nonnull dereferenceable(1) %26) #19
  %28 = icmp sgt i32 %27, 0
  br label %29

29:                                               ; preds = %22, %20
  %30 = phi i1 [ %21, %20 ], [ %28, %22 ]
  %31 = select i1 %30, i64 %14, i64 %13
  %32 = getelementptr inbounds %"struct.std::pair.3", ptr %0, i64 %31
  %33 = getelementptr inbounds %"struct.std::pair.3", ptr %0, i64 %11
  %34 = load ptr, ptr %32, align 8, !tbaa !19
  store ptr %34, ptr %33, align 8, !tbaa !40
  %35 = getelementptr inbounds %"struct.std::pair.3", ptr %0, i64 %31, i32 1
  %36 = load i32, ptr %35, align 8, !tbaa !30
  %37 = getelementptr inbounds %"struct.std::pair.3", ptr %0, i64 %11, i32 1
  store i32 %36, ptr %37, align 8, !tbaa !38
  %38 = icmp slt i64 %31, %8
  br i1 %38, label %10, label %39, !llvm.loop !59

39:                                               ; preds = %29, %5
  %40 = phi i64 [ %1, %5 ], [ %31, %29 ]
  %41 = and i64 %2, 1
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %56

43:                                               ; preds = %39
  %44 = add nsw i64 %2, -2
  %45 = sdiv i64 %44, 2
  %46 = icmp eq i64 %40, %45
  br i1 %46, label %47, label %56

47:                                               ; preds = %43
  %48 = shl i64 %40, 1
  %49 = or i64 %48, 1
  %50 = getelementptr inbounds %"struct.std::pair.3", ptr %0, i64 %49
  %51 = getelementptr inbounds %"struct.std::pair.3", ptr %0, i64 %40
  %52 = load ptr, ptr %50, align 8, !tbaa !19
  store ptr %52, ptr %51, align 8, !tbaa !40
  %53 = getelementptr inbounds %"struct.std::pair.3", ptr %0, i64 %49, i32 1
  %54 = load i32, ptr %53, align 8, !tbaa !30
  %55 = getelementptr inbounds %"struct.std::pair.3", ptr %0, i64 %40, i32 1
  store i32 %54, ptr %55, align 8, !tbaa !38
  br label %56

56:                                               ; preds = %47, %43, %39
  %57 = phi i64 [ %49, %47 ], [ %40, %43 ], [ %40, %39 ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #22
  call void @_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops14_Iter_less_valEEvT_T0_SE_T1_RT2_(ptr %0, i64 noundef %57, i64 noundef %1, ptr %3, i32 %4, ptr noundef nonnull align 1 dereferenceable(1) %6) #18
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #22
  ret void
}

; Function Attrs: optsize uwtable
define internal void @_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKciESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops14_Iter_less_valEEvT_T0_SE_T1_RT2_(ptr %0, i64 noundef %1, i64 noundef %2, ptr %3, i32 %4, ptr noundef nonnull align 1 dereferenceable(1) %5) #9 comdat {
  %7 = icmp sgt i64 %1, %2
  br i1 %7, label %8, label %29

8:                                                ; preds = %24, %6
  %9 = phi i64 [ %11, %24 ], [ %1, %6 ]
  %10 = add nsw i64 %9, -1
  %11 = sdiv i64 %10, 2
  %12 = getelementptr inbounds %"struct.std::pair.3", ptr %0, i64 %11
  %13 = getelementptr inbounds %"struct.std::pair.3", ptr %0, i64 %11, i32 1
  %14 = load i32, ptr %13, align 8, !tbaa !30
  %15 = icmp eq i32 %14, %4
  br i1 %15, label %20, label %16

16:                                               ; preds = %8
  %17 = icmp sgt i32 %14, %4
  br i1 %17, label %18, label %29

18:                                               ; preds = %16
  %19 = load ptr, ptr %12, align 8, !tbaa !19
  br label %24

20:                                               ; preds = %8
  %21 = load ptr, ptr %12, align 8, !tbaa !19
  %22 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %21, ptr noundef nonnull dereferenceable(1) %3) #19
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %20, %18
  %25 = phi ptr [ %19, %18 ], [ %21, %20 ]
  %26 = getelementptr inbounds %"struct.std::pair.3", ptr %0, i64 %9
  store ptr %25, ptr %26, align 8, !tbaa !40
  %27 = getelementptr inbounds %"struct.std::pair.3", ptr %0, i64 %9, i32 1
  store i32 %14, ptr %27, align 8, !tbaa !38
  %28 = icmp sgt i64 %11, %2
  br i1 %28, label %8, label %29, !llvm.loop !60

29:                                               ; preds = %24, %20, %16, %6
  %30 = phi i64 [ %1, %6 ], [ %9, %16 ], [ %11, %24 ], [ %9, %20 ]
  %31 = getelementptr inbounds %"struct.std::pair.3", ptr %0, i64 %30
  store ptr %3, ptr %31, align 8, !tbaa !40
  %32 = getelementptr inbounds %"struct.std::pair.3", ptr %0, i64 %30, i32 1
  store i32 %4, ptr %32, align 8, !tbaa !38
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #15

; Function Attrs: optsize uwtable
define internal void @_ZNSt6vectorISt4pairIPKciESaIS3_EE19_M_range_initializeISt17_Rb_tree_iteratorIS0_IKS2_iEEEEvT_SB_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2) #9 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = icmp eq ptr %1, %2
  br i1 %4, label %5, label %7

5:                                                ; preds = %3
  store ptr null, ptr %0, align 8, !tbaa !37
  %6 = getelementptr inbounds %"struct.std::_Vector_base<std::pair<const char *, int>, std::allocator<std::pair<const char *, int>>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  store ptr null, ptr %6, align 8, !tbaa !61
  br label %31

7:                                                ; preds = %7, %3
  %8 = phi i64 [ %11, %7 ], [ 0, %3 ]
  %9 = phi ptr [ %10, %7 ], [ %1, %3 ]
  %10 = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %9) #19
  %11 = add nuw nsw i64 %8, 1
  %12 = icmp eq ptr %10, %2
  br i1 %12, label %13, label %7, !llvm.loop !62

13:                                               ; preds = %7
  %.lcssa1 = phi i64 [ %8, %7 ]
  %.lcssa = phi i64 [ %11, %7 ]
  %14 = icmp ugt i64 %.lcssa1, 576460752303423486
  br i1 %14, label %15, label %16

15:                                               ; preds = %13
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #25
  unreachable

16:                                               ; preds = %13
  %17 = tail call noundef ptr @_ZNSt15__new_allocatorISt4pairIPKciEE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %.lcssa, ptr noundef null) #18
  store ptr %17, ptr %0, align 8, !tbaa !37
  %18 = getelementptr inbounds %"struct.std::pair.3", ptr %17, i64 %.lcssa
  %19 = getelementptr inbounds %"struct.std::_Vector_base<std::pair<const char *, int>, std::allocator<std::pair<const char *, int>>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  store ptr %18, ptr %19, align 8, !tbaa !61
  br label %20

20:                                               ; preds = %20, %16
  %21 = phi ptr [ %29, %20 ], [ %17, %16 ]
  %22 = phi ptr [ %28, %20 ], [ %1, %16 ]
  %23 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %22, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !42
  store ptr %24, ptr %21, align 8, !tbaa !40
  %25 = getelementptr inbounds %"struct.std::pair.3", ptr %21, i64 0, i32 1
  %26 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %22, i64 0, i32 1, i32 0, i64 8
  %27 = load i32, ptr %26, align 8, !tbaa !31
  store i32 %27, ptr %25, align 8, !tbaa !38
  %28 = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %22) #19
  %29 = getelementptr inbounds %"struct.std::pair.3", ptr %21, i64 1
  %30 = icmp eq ptr %28, %2
  br i1 %30, label %31, label %20, !llvm.loop !63

31:                                               ; preds = %20, %5
  %32 = phi ptr [ null, %5 ], [ %29, %20 ]
  %33 = getelementptr inbounds %"struct.std::_Vector_base<std::pair<const char *, int>, std::allocator<std::pair<const char *, int>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  store ptr %32, ptr %33, align 8, !tbaa !35
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #2

; Function Attrs: noreturn optsize
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #16

; Function Attrs: mustprogress optsize uwtable
define internal noundef ptr @_ZNSt15__new_allocatorISt4pairIPKciEE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef %2) #0 comdat align 2 {
  %4 = icmp ugt i64 %1, 576460752303423487
  br i1 %4, label %5, label %9, !prof !64

5:                                                ; preds = %3
  %6 = icmp ugt i64 %1, 1152921504606846975
  br i1 %6, label %7, label %8

7:                                                ; preds = %5
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #25
  unreachable

8:                                                ; preds = %5
  tail call void @_ZSt17__throw_bad_allocv() #25
  unreachable

9:                                                ; preds = %3
  %10 = shl nuw nsw i64 %1, 4
  %11 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %10) #20
  ret ptr %11
}

; Function Attrs: noreturn optsize
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #16

; Function Attrs: noreturn optsize
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #16

; Function Attrs: nobuiltin optsize allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize uwtable
define internal ptr @_ZNSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOS1_EESF_IJEEEEESt17_Rb_tree_iteratorIS4_ESt23_Rb_tree_const_iteratorIS4_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) #9 comdat align 2 personality ptr @__gxx_personality_v0 {
  %6 = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #20
  %7 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %6, i64 0, i32 1
  %8 = load i64, ptr %3, align 8, !tbaa !19
  %9 = inttoptr i64 %8 to ptr
  %10 = load ptr, ptr %9, align 8, !tbaa !19
  store ptr %10, ptr %7, align 8, !tbaa !42
  %11 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %6, i64 0, i32 1, i32 0, i64 8
  store i32 0, ptr %11, align 8, !tbaa !31
  %12 = invoke { ptr, ptr } @_ZNSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS4_ERS3_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %7) #18
          to label %13 unwind label %19

13:                                               ; preds = %5
  %14 = extractvalue { ptr, ptr } %12, 0
  %15 = extractvalue { ptr, ptr } %12, 1
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %13
  %18 = invoke ptr @_ZNSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE14_M_insert_nodeEPSt18_Rb_tree_node_baseSC_PSt13_Rb_tree_nodeIS4_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %14, ptr noundef nonnull %15, ptr noundef nonnull %6) #18
          to label %22 unwind label %19

19:                                               ; preds = %17, %5
  %20 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %6) #21
  resume { ptr, i32 } %20

21:                                               ; preds = %13
  tail call void @_ZdlPv(ptr noundef nonnull %6) #21
  br label %22

22:                                               ; preds = %21, %17
  %23 = phi ptr [ %14, %21 ], [ %18, %17 ]
  ret ptr %23
}

; Function Attrs: optsize uwtable
define internal { ptr, ptr } @_ZNSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS4_ERS3_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #9 comdat align 2 {
  %4 = getelementptr inbounds i8, ptr %0, i64 8
  %5 = icmp eq ptr %4, %1
  br i1 %5, label %6, label %21

6:                                                ; preds = %3
  %7 = getelementptr inbounds i8, ptr %0, i64 40
  %8 = load i64, ptr %7, align 8, !tbaa !28
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %17, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds i8, ptr %0, i64 32
  %12 = load ptr, ptr %11, align 8, !tbaa !19
  %13 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %12, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !19
  %15 = load ptr, ptr %2, align 8, !tbaa !19
  %16 = icmp ult ptr %14, %15
  br i1 %16, label %66, label %17

17:                                               ; preds = %10, %6
  %18 = tail call { ptr, ptr } @_ZNSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE24_M_get_insert_unique_posERS3_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %2) #18
  %19 = extractvalue { ptr, ptr } %18, 0
  %20 = extractvalue { ptr, ptr } %18, 1
  br label %66

21:                                               ; preds = %3
  %22 = load ptr, ptr %2, align 8, !tbaa !19
  %23 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %1, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !19
  %25 = icmp ult ptr %22, %24
  br i1 %25, label %26, label %45

26:                                               ; preds = %21
  %27 = getelementptr inbounds i8, ptr %0, i64 24
  %28 = load ptr, ptr %27, align 8, !tbaa !19
  %29 = icmp eq ptr %28, %1
  br i1 %29, label %66, label %30

30:                                               ; preds = %26
  %31 = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %1) #19
  %32 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %31, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !19
  %34 = icmp ult ptr %33, %22
  br i1 %34, label %35, label %41

35:                                               ; preds = %30
  %36 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %31, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !48
  %38 = icmp eq ptr %37, null
  %39 = select i1 %38, ptr null, ptr %1
  %40 = select i1 %38, ptr %31, ptr %1
  br label %66

41:                                               ; preds = %30
  %42 = tail call { ptr, ptr } @_ZNSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE24_M_get_insert_unique_posERS3_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %2) #18
  %43 = extractvalue { ptr, ptr } %42, 0
  %44 = extractvalue { ptr, ptr } %42, 1
  br label %66

45:                                               ; preds = %21
  %46 = icmp ult ptr %24, %22
  br i1 %46, label %47, label %66

47:                                               ; preds = %45
  %48 = getelementptr inbounds i8, ptr %0, i64 32
  %49 = load ptr, ptr %48, align 8, !tbaa !19
  %50 = icmp eq ptr %49, %1
  br i1 %50, label %66, label %51

51:                                               ; preds = %47
  %52 = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %1) #19
  %53 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %52, i64 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !19
  %55 = icmp ult ptr %22, %54
  br i1 %55, label %56, label %62

56:                                               ; preds = %51
  %57 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %1, i64 0, i32 3
  %58 = load ptr, ptr %57, align 8, !tbaa !48
  %59 = icmp eq ptr %58, null
  %60 = select i1 %59, ptr null, ptr %52
  %61 = select i1 %59, ptr %1, ptr %52
  br label %66

62:                                               ; preds = %51
  %63 = tail call { ptr, ptr } @_ZNSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE24_M_get_insert_unique_posERS3_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %2) #18
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
define internal ptr @_ZNSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE14_M_insert_nodeEPSt18_Rb_tree_node_baseSC_PSt13_Rb_tree_nodeIS4_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #9 comdat align 2 {
  %5 = icmp ne ptr %1, null
  %6 = getelementptr inbounds i8, ptr %0, i64 8
  %7 = icmp eq ptr %6, %2
  %8 = select i1 %5, i1 true, i1 %7
  br i1 %8, label %15, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %3, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !19
  %12 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %2, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !19
  %14 = icmp ult ptr %11, %13
  br label %15

15:                                               ; preds = %9, %4
  %16 = phi i1 [ true, %4 ], [ %14, %9 ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %16, ptr noundef %3, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %6) #23
  %17 = getelementptr inbounds i8, ptr %0, i64 40
  %18 = load i64, ptr %17, align 8, !tbaa !28
  %19 = add i64 %18, 1
  store i64 %19, ptr %17, align 8, !tbaa !28
  ret ptr %3
}

; Function Attrs: nounwind optsize
declare void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #17

; Function Attrs: optsize uwtable
define internal { ptr, ptr } @_ZNSt8_Rb_treeIPKcSt4pairIKS1_iESt10_Select1stIS4_ESt4lessIS1_ESaIS4_EE24_M_get_insert_unique_posERS3_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #9 comdat align 2 {
  %3 = getelementptr inbounds i8, ptr %0, i64 16
  %4 = getelementptr inbounds i8, ptr %0, i64 8
  %5 = load ptr, ptr %3, align 8, !tbaa !19
  %6 = icmp eq ptr %5, null
  br i1 %6, label %20, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %1, align 8, !tbaa !19
  br label %9

9:                                                ; preds = %9, %7
  %10 = phi ptr [ %5, %7 ], [ %17, %9 ]
  %11 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !19
  %13 = icmp ult ptr %8, %12
  %14 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %10, i64 0, i32 2
  %15 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %10, i64 0, i32 3
  %16 = select i1 %13, ptr %14, ptr %15
  %17 = load ptr, ptr %16, align 8, !tbaa !19
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %9, !llvm.loop !65

19:                                               ; preds = %9
  %.lcssa1 = phi ptr [ %10, %9 ]
  %.lcssa = phi i1 [ %13, %9 ]
  br i1 %.lcssa, label %20, label %27

20:                                               ; preds = %19, %2
  %21 = phi ptr [ %.lcssa1, %19 ], [ %4, %2 ]
  %22 = getelementptr inbounds i8, ptr %0, i64 24
  %23 = load ptr, ptr %22, align 8, !tbaa !26
  %24 = icmp eq ptr %21, %23
  br i1 %24, label %36, label %25

25:                                               ; preds = %20
  %26 = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %21) #19
  br label %27

27:                                               ; preds = %25, %19
  %28 = phi ptr [ %21, %25 ], [ %.lcssa1, %19 ]
  %29 = phi ptr [ %26, %25 ], [ %.lcssa1, %19 ]
  %30 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %29, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !19
  %32 = load ptr, ptr %1, align 8, !tbaa !19
  %33 = icmp ult ptr %31, %32
  %34 = select i1 %33, ptr null, ptr %29
  %35 = select i1 %33, ptr %28, ptr null
  br label %36

36:                                               ; preds = %27, %20
  %37 = phi ptr [ null, %20 ], [ %34, %27 ]
  %38 = phi ptr [ %21, %20 ], [ %35, %27 ]
  %39 = insertvalue { ptr, ptr } poison, ptr %37, 0
  %40 = insertvalue { ptr, ptr } %39, ptr %38, 1
  ret { ptr, ptr } %40
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #2

attributes #0 = { mustprogress optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nounwind optsize willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin optsize allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { norecurse optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #16 = { noreturn optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { optsize }
attributes #19 = { nounwind optsize willreturn memory(read) }
attributes #20 = { builtin optsize allocsize(0) }
attributes #21 = { builtin nounwind optsize }
attributes #22 = { nounwind }
attributes #23 = { nounwind optsize }
attributes #24 = { noreturn nounwind }
attributes #25 = { noreturn optsize }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1, !2, !3, !4, !5, !6}

!0 = !{!"clang version 17.0.6 (https://github.com/Casperento/llvm-project.git 9b0073551ece0d22bf3378af2b03e456a26031b6)"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 1, !"ThinLTO", i32 0}
!6 = !{i32 1, !"EnableSplitLTOUnit", i32 1}
!7 = !{!8, !12, i64 4104}
!8 = !{!"_ZTS11word_reader", !9, i64 0, !10, i64 4, !12, i64 4104, !12, i64 4112, !12, i64 4120}
!9 = !{!"int", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C++ TBAA"}
!12 = !{!"any pointer", !10, i64 0}
!13 = !{!10, !10, i64 0}
!14 = !{!8, !12, i64 4120}
!15 = !{!8, !12, i64 4112}
!16 = !{!8, !9, i64 0}
!17 = distinct !{!17, !18}
!18 = !{!"llvm.loop.mustprogress"}
!19 = !{!12, !12, i64 0}
!20 = !{!21, !23, i64 0}
!21 = !{!"_ZTSSt15_Rb_tree_header", !22, i64 0, !24, i64 32}
!22 = !{!"_ZTSSt18_Rb_tree_node_base", !23, i64 0, !12, i64 8, !12, i64 16, !12, i64 24}
!23 = !{!"_ZTSSt14_Rb_tree_color", !10, i64 0}
!24 = !{!"long", !10, i64 0}
!25 = !{!21, !12, i64 8}
!26 = !{!21, !12, i64 16}
!27 = !{!21, !12, i64 24}
!28 = !{!21, !24, i64 32}
!29 = distinct !{!29, !18}
!30 = !{!9, !9, i64 0}
!31 = !{!32, !9, i64 8}
!32 = !{!"_ZTSSt4pairIKPKciE", !12, i64 0, !9, i64 8}
!33 = distinct !{!33, !18}
!34 = !{i64 0, i64 65}
!35 = !{!36, !12, i64 8}
!36 = !{!"_ZTSNSt12_Vector_baseISt4pairIPKciESaIS3_EE17_Vector_impl_dataE", !12, i64 0, !12, i64 8, !12, i64 16}
!37 = !{!36, !12, i64 0}
!38 = !{!39, !9, i64 8}
!39 = !{!"_ZTSSt4pairIPKciE", !12, i64 0, !9, i64 8}
!40 = !{!39, !12, i64 0}
!41 = distinct !{!41, !18}
!42 = !{!32, !12, i64 0}
!43 = !{!44}
!44 = distinct !{!44, !45, !"_ZSt16forward_as_tupleIJPKcEESt5tupleIJDpOT_EES5_: %agg.result"}
!45 = distinct !{!45, !"_ZSt16forward_as_tupleIJPKcEESt5tupleIJDpOT_EES5_"}
!46 = distinct !{!46, !18}
!47 = distinct !{!47, !18}
!48 = !{!22, !12, i64 24}
!49 = !{!22, !12, i64 16}
!50 = distinct !{!50, !18}
!51 = distinct !{!51, !18}
!52 = distinct !{!52, !18}
!53 = distinct !{!53, !18}
!54 = distinct !{!54, !18}
!55 = distinct !{!55, !18}
!56 = distinct !{!56, !18}
!57 = distinct !{!57, !18}
!58 = distinct !{!58, !18}
!59 = distinct !{!59, !18}
!60 = distinct !{!60, !18}
!61 = !{!36, !12, i64 16}
!62 = distinct !{!62, !18}
!63 = distinct !{!63, !18}
!64 = !{!"branch_weights", i32 1, i32 2000}
!65 = distinct !{!65, !18}
