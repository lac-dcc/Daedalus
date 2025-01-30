; ModuleID = '/src/llvm-test-suite/build/SingleSource/Benchmarks/Shootout-C++/Shootout-C++-lists1.e.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"struct.std::_List_node" = type <{ %"struct.std::__detail::_List_node_base", %"struct.__gnu_cxx::__aligned_membuf", [4 x i8] }>
%"struct.std::__detail::_List_node_base" = type { ptr, ptr }
%"struct.__gnu_cxx::__aligned_membuf" = type { [4 x i8] }
%"class.std::ctype" = type <{ %"class.std::locale::facet.base", [4 x i8], ptr, i8, [7 x i8], ptr, ptr, ptr, i8, [256 x i8], [256 x i8], i8, [6 x i8] }>
%"class.std::locale::facet.base" = type <{ ptr, i32 }>
%"class.std::__cxx11::list" = type { %"class.std::__cxx11::_List_base" }
%"class.std::__cxx11::_List_base" = type { %"struct.std::__cxx11::_List_base<int, std::allocator<int>>::_List_impl" }
%"struct.std::__cxx11::_List_base<int, std::allocator<int>>::_List_impl" = type { %"struct.std::__detail::_List_node_header" }
%"struct.std::__detail::_List_node_header" = type { %"struct.std::__detail::_List_node_base", i64 }

$_ZNSt7__cxx114listIiSaIiEEC2EmRKS1_ = comdat any

$_ZNSt7__cxx114listIiSaIiEEC2ERKS2_ = comdat any

$_ZNSt7__cxx114listIiSaIiEE22_M_initialize_dispatchISt20_List_const_iteratorIiEEEvT_S6_St12__false_type = comdat any

$_ZNSt7__cxx114listIiSaIiEE21_M_default_initializeEm = comdat any

@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_lists1.cpp, ptr null }]
@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"true\00", align 1

; Function Attrs: optsize uwtable
define internal void @_GLOBAL__sub_I_lists1.cpp() #0 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit) #12
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt8ios_base4InitD1Ev, ptr nonnull @_ZStL8__ioinit, ptr nonnull @__dso_handle) #13
  ret void
}

; Function Attrs: optsize
declare void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nounwind optsize
declare void @_ZNSt8ios_base4InitD1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #2

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #3

; Function Attrs: optsize uwtable
define internal void @_Z12list_print_nNSt7__cxx114listIiSaIiEEEi(ptr noundef readonly %0, i32 noundef %1) #0 {
  %3 = add nsw i32 %1, -1
  %4 = load ptr, ptr %0, align 8, !tbaa !7
  %5 = icmp ne ptr %4, %0
  %6 = icmp sgt i32 %1, 0
  %7 = and i1 %5, %6
  br i1 %7, label %8, label %23

8:                                                ; preds = %17, %2
  %9 = phi ptr [ %19, %17 ], [ %4, %2 ]
  %10 = phi i32 [ %18, %17 ], [ 0, %2 ]
  %11 = getelementptr inbounds %"struct.std::_List_node", ptr %9, i64 0, i32 1
  %12 = load i32, ptr %11, align 4, !tbaa !12
  %13 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %12) #12
  %14 = icmp slt i32 %10, %3
  br i1 %14, label %15, label %17

15:                                               ; preds = %8
  %16 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str, i64 noundef 1) #12
  br label %17

17:                                               ; preds = %15, %8
  %18 = add nuw nsw i32 %10, 1
  %19 = load ptr, ptr %9, align 8, !tbaa !7
  %20 = icmp ne ptr %19, %0
  %21 = icmp slt i32 %18, %1
  %22 = select i1 %20, i1 %21, i1 false
  br i1 %22, label %8, label %23, !llvm.loop !14

23:                                               ; preds = %17, %2
  %24 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !16
  %25 = getelementptr i8, ptr %24, i64 -24
  %26 = load i64, ptr %25, align 8
  %27 = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %26
  %28 = tail call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %27, i8 noundef signext 10) #12
  %29 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %28) #12
  %30 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %29) #12
  ret void
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress optsize uwtable
define available_externally noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %0, i8 noundef signext %1) local_unnamed_addr #4 align 2 {
  %3 = getelementptr inbounds %"class.std::basic_ios", ptr %0, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !18
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void @_ZSt16__throw_bad_castv() #14
  unreachable

7:                                                ; preds = %2
  %8 = getelementptr inbounds %"class.std::ctype", ptr %4, i64 0, i32 8
  %9 = load i8, ptr %8, align 8, !tbaa !27
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %7
  %12 = zext i8 %1 to i64
  %13 = getelementptr inbounds %"class.std::ctype", ptr %4, i64 0, i32 9, i64 %12
  %14 = load i8, ptr %13, align 1, !tbaa !30
  br label %20

15:                                               ; preds = %7
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %4) #12
  %16 = load ptr, ptr %4, align 8, !tbaa !16
  %17 = getelementptr inbounds ptr, ptr %16, i64 6
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef signext i8 %18(ptr noundef nonnull align 8 dereferenceable(570) %4, i8 noundef signext %1) #12
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
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #5

; Function Attrs: optsize
declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #1

; Function Attrs: norecurse optsize uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nocapture noundef readonly %1) #6 personality ptr @__gxx_personality_v0 {
  %3 = alloca %"class.std::__cxx11::list", align 8
  %4 = alloca %"class.std::__cxx11::list", align 8
  %5 = alloca %"class.std::ios_base::Init", align 1
  %6 = alloca %"class.std::__cxx11::list", align 8
  %7 = alloca %"class.std::__cxx11::list", align 8
  %8 = icmp eq i32 %0, 2
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = getelementptr inbounds ptr, ptr %1, i64 1
  %11 = load ptr, ptr %10, align 8, !tbaa !31
  %12 = tail call i32 @atoi(ptr nocapture noundef %11) #15
  %13 = tail call i32 @llvm.smax.i32(i32 %12, i32 1)
  br label %14

14:                                               ; preds = %9, %2
  %15 = phi i32 [ 1000000, %2 ], [ %13, %9 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #13
  %16 = getelementptr inbounds %"struct.std::__detail::_List_node_base", ptr %3, i64 0, i32 1
  store ptr %3, ptr %16, align 8, !tbaa !32
  store ptr %3, ptr %3, align 8, !tbaa !7
  %17 = getelementptr inbounds %"struct.std::__detail::_List_node_header", ptr %3, i64 0, i32 1
  store i64 0, ptr %17, align 8, !tbaa !33
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #13
  %18 = zext i32 %15 to i64
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #13
  invoke void @_ZNSt7__cxx114listIiSaIiEEC2EmRKS1_(ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %18, ptr noundef nonnull align 1 dereferenceable(1) %5) #12
          to label %19 unwind label %47

19:                                               ; preds = %14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #13
  %20 = load ptr, ptr %4, align 8, !tbaa !7
  %21 = icmp eq ptr %20, %4
  br i1 %21, label %53, label %22

22:                                               ; preds = %22, %19
  %23 = phi i32 [ %25, %22 ], [ 1, %19 ]
  %24 = phi ptr [ %26, %22 ], [ %20, %19 ]
  %25 = add nuw nsw i32 %23, 1
  %26 = load ptr, ptr %24, align 8, !tbaa !7
  %27 = getelementptr inbounds %"struct.std::_List_node", ptr %24, i64 0, i32 1
  store i32 %23, ptr %27, align 4, !tbaa !12
  %28 = icmp eq ptr %26, %4
  br i1 %28, label %29, label %22, !llvm.loop !35

29:                                               ; preds = %22
  br i1 %21, label %53, label %30

30:                                               ; preds = %29
  %31 = getelementptr inbounds %"struct.std::__detail::_List_node_header", ptr %4, i64 0, i32 1
  br label %32

32:                                               ; preds = %36, %30
  %33 = phi ptr [ %20, %30 ], [ %45, %36 ]
  %34 = load ptr, ptr %3, align 8, !tbaa !7
  %35 = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #16
          to label %36 unwind label %49

36:                                               ; preds = %32
  %37 = getelementptr inbounds %"struct.std::_List_node", ptr %33, i64 0, i32 1
  %38 = getelementptr inbounds %"struct.std::_List_node", ptr %35, i64 0, i32 1
  %39 = load i32, ptr %37, align 4, !tbaa !12
  store i32 %39, ptr %38, align 4, !tbaa !12
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %35, ptr noundef %34) #17
  %40 = load i64, ptr %17, align 8, !tbaa !36
  %41 = add i64 %40, 1
  store i64 %41, ptr %17, align 8, !tbaa !36
  %42 = load ptr, ptr %4, align 8, !tbaa !7
  %43 = load i64, ptr %31, align 8, !tbaa !36
  %44 = add i64 %43, -1
  store i64 %44, ptr %31, align 8, !tbaa !36
  call void @_ZNSt8__detail15_List_node_base9_M_unhookEv(ptr noundef nonnull align 8 dereferenceable(16) %42) #17
  call void @_ZdlPv(ptr noundef %42) #18
  %45 = load ptr, ptr %4, align 8, !tbaa !7
  %46 = icmp eq ptr %45, %4
  br i1 %46, label %53, label %32, !llvm.loop !39

47:                                               ; preds = %14
  %48 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #13
  br label %253

49:                                               ; preds = %32
  %50 = landingpad { ptr, i32 }
          cleanup
  br label %245

51:                                               ; preds = %53
  %52 = landingpad { ptr, i32 }
          cleanup
  br label %245

53:                                               ; preds = %36, %29, %19
  invoke void @_ZNSt7__cxx114listIiSaIiEEC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %3) #12
          to label %54 unwind label %51

54:                                               ; preds = %53
  invoke void @_Z12list_print_nNSt7__cxx114listIiSaIiEEEi(ptr noundef nonnull %6, i32 noundef 2) #12
          to label %55 unwind label %134

55:                                               ; preds = %54
  %56 = load ptr, ptr %6, align 8, !tbaa !7
  %57 = icmp eq ptr %56, %6
  br i1 %57, label %62, label %58

58:                                               ; preds = %58, %55
  %59 = phi ptr [ %60, %58 ], [ %56, %55 ]
  %60 = load ptr, ptr %59, align 8, !tbaa !7
  call void @_ZdlPv(ptr noundef %59) #18
  %61 = icmp eq ptr %60, %6
  br i1 %61, label %62, label %58, !llvm.loop !40

62:                                               ; preds = %58, %55
  call void @_ZNSt8__detail15_List_node_base10_M_reverseEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #17
  %63 = load ptr, ptr %3, align 8, !tbaa !7
  %64 = icmp eq ptr %63, %3
  br i1 %64, label %73, label %65

65:                                               ; preds = %70, %62
  %66 = phi ptr [ %71, %70 ], [ %63, %62 ]
  %67 = getelementptr inbounds %"struct.std::_List_node", ptr %66, i64 0, i32 1
  %68 = load i32, ptr %67, align 4, !tbaa !12
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %65
  %71 = load ptr, ptr %66, align 8, !tbaa !7
  %72 = icmp eq ptr %71, %3
  br i1 %72, label %73, label %65, !llvm.loop !41

73:                                               ; preds = %70, %65, %62
  %74 = phi ptr [ %3, %62 ], [ %66, %65 ], [ %3, %70 ]
  %75 = icmp eq ptr %74, %3
  %76 = select i1 %75, ptr @.str.1, ptr @.str.2
  %77 = select i1 %75, i64 5, i64 4
  %78 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %76, i64 noundef %77) #12
          to label %79 unwind label %142

79:                                               ; preds = %73
  %80 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !16
  %81 = getelementptr i8, ptr %80, i64 -24
  %82 = load i64, ptr %81, align 8
  %83 = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %82
  %84 = invoke noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %83, i8 noundef signext 10) #12
          to label %85 unwind label %142

85:                                               ; preds = %79
  %86 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %84) #12
          to label %87 unwind label %142

87:                                               ; preds = %85
  %88 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %86) #12
          to label %89 unwind label %142

89:                                               ; preds = %87
  %90 = load ptr, ptr %3, align 8, !tbaa !7
  %91 = icmp eq ptr %90, %3
  br i1 %91, label %100, label %92

92:                                               ; preds = %97, %89
  %93 = phi ptr [ %98, %97 ], [ %90, %89 ]
  %94 = getelementptr inbounds %"struct.std::_List_node", ptr %93, i64 0, i32 1
  %95 = load i32, ptr %94, align 4, !tbaa !12
  %96 = icmp eq i32 %95, %15
  br i1 %96, label %100, label %97

97:                                               ; preds = %92
  %98 = load ptr, ptr %93, align 8, !tbaa !7
  %99 = icmp eq ptr %98, %3
  br i1 %99, label %100, label %92, !llvm.loop !41

100:                                              ; preds = %97, %92, %89
  %101 = phi ptr [ %3, %89 ], [ %93, %92 ], [ %3, %97 ]
  %102 = icmp eq ptr %101, %3
  %103 = select i1 %102, ptr @.str.1, ptr @.str.2
  %104 = select i1 %102, i64 5, i64 4
  %105 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %103, i64 noundef %104) #12
          to label %106 unwind label %144

106:                                              ; preds = %100
  %107 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !16
  %108 = getelementptr i8, ptr %107, i64 -24
  %109 = load i64, ptr %108, align 8
  %110 = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %109
  %111 = invoke noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %110, i8 noundef signext 10) #12
          to label %112 unwind label %144

112:                                              ; preds = %106
  %113 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %111) #12
          to label %114 unwind label %144

114:                                              ; preds = %112
  %115 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %113) #12
          to label %116 unwind label %144

116:                                              ; preds = %114
  %117 = lshr i32 %15, 1
  %118 = load ptr, ptr %3, align 8, !tbaa !7
  %119 = icmp eq ptr %118, %3
  br i1 %119, label %153, label %120

120:                                              ; preds = %116
  %121 = getelementptr inbounds %"struct.std::__detail::_List_node_header", ptr %4, i64 0, i32 1
  br label %122

122:                                              ; preds = %150, %120
  %123 = phi ptr [ %118, %120 ], [ %151, %150 ]
  %124 = getelementptr inbounds %"struct.std::_List_node", ptr %123, i64 0, i32 1
  %125 = load i32, ptr %124, align 4, !tbaa !12
  %126 = icmp slt i32 %125, %117
  br i1 %126, label %127, label %150

127:                                              ; preds = %122
  %128 = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #16
          to label %129 unwind label %146

129:                                              ; preds = %127
  %130 = getelementptr inbounds %"struct.std::_List_node", ptr %128, i64 0, i32 1
  %131 = load i32, ptr %124, align 4, !tbaa !12
  store i32 %131, ptr %130, align 4, !tbaa !12
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %128, ptr noundef nonnull %4) #17
  %132 = load i64, ptr %121, align 8, !tbaa !36
  %133 = add i64 %132, 1
  store i64 %133, ptr %121, align 8, !tbaa !36
  br label %150

134:                                              ; preds = %54
  %135 = landingpad { ptr, i32 }
          cleanup
  %136 = load ptr, ptr %6, align 8, !tbaa !7
  %137 = icmp eq ptr %136, %6
  br i1 %137, label %245, label %138

138:                                              ; preds = %138, %134
  %139 = phi ptr [ %140, %138 ], [ %136, %134 ]
  %140 = load ptr, ptr %139, align 8, !tbaa !7
  call void @_ZdlPv(ptr noundef %139) #18
  %141 = icmp eq ptr %140, %6
  br i1 %141, label %245, label %138, !llvm.loop !40

142:                                              ; preds = %87, %85, %79, %73
  %143 = landingpad { ptr, i32 }
          cleanup
  br label %245

144:                                              ; preds = %114, %112, %106, %100
  %145 = landingpad { ptr, i32 }
          cleanup
  br label %245

146:                                              ; preds = %127
  %147 = landingpad { ptr, i32 }
          cleanup
  br label %245

148:                                              ; preds = %153
  %149 = landingpad { ptr, i32 }
          cleanup
  br label %245

150:                                              ; preds = %129, %122
  %151 = load ptr, ptr %123, align 8, !tbaa !7
  %152 = icmp eq ptr %151, %3
  br i1 %152, label %153, label %122, !llvm.loop !42

153:                                              ; preds = %150, %116
  invoke void @_ZNSt7__cxx114listIiSaIiEEC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %4) #12
          to label %154 unwind label %148

154:                                              ; preds = %153
  invoke void @_Z12list_print_nNSt7__cxx114listIiSaIiEEEi(ptr noundef nonnull %7, i32 noundef 10) #12
          to label %155 unwind label %175

155:                                              ; preds = %154
  %156 = load ptr, ptr %7, align 8, !tbaa !7
  %157 = icmp eq ptr %156, %7
  br i1 %157, label %162, label %158

158:                                              ; preds = %158, %155
  %159 = phi ptr [ %160, %158 ], [ %156, %155 ]
  %160 = load ptr, ptr %159, align 8, !tbaa !7
  call void @_ZdlPv(ptr noundef %159) #18
  %161 = icmp eq ptr %160, %7
  br i1 %161, label %162, label %158, !llvm.loop !40

162:                                              ; preds = %158, %155
  %163 = load ptr, ptr %4, align 8, !tbaa !7
  %164 = icmp eq ptr %163, %4
  br i1 %164, label %183, label %165

165:                                              ; preds = %165, %162
  %166 = phi ptr [ %173, %165 ], [ %163, %162 ]
  %167 = phi i32 [ %172, %165 ], [ 0, %162 ]
  %168 = getelementptr inbounds %"struct.std::_List_node", ptr %166, i64 0, i32 1
  %169 = load i32, ptr %168, align 4, !tbaa !12
  %170 = icmp slt i32 %169, 1000
  %171 = select i1 %170, i32 %169, i32 0
  %172 = add nsw i32 %171, %167
  %173 = load ptr, ptr %166, align 8, !tbaa !7
  %174 = icmp eq ptr %173, %4
  br i1 %174, label %183, label %165, !llvm.loop !43

175:                                              ; preds = %154
  %176 = landingpad { ptr, i32 }
          cleanup
  %177 = load ptr, ptr %7, align 8, !tbaa !7
  %178 = icmp eq ptr %177, %7
  br i1 %178, label %245, label %179

179:                                              ; preds = %179, %175
  %180 = phi ptr [ %181, %179 ], [ %177, %175 ]
  %181 = load ptr, ptr %180, align 8, !tbaa !7
  call void @_ZdlPv(ptr noundef %180) #18
  %182 = icmp eq ptr %181, %7
  br i1 %182, label %245, label %179, !llvm.loop !40

183:                                              ; preds = %165, %162
  %184 = phi i32 [ 0, %162 ], [ %172, %165 ]
  %185 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %184) #12
          to label %186 unwind label %243

186:                                              ; preds = %183
  %187 = load ptr, ptr %185, align 8, !tbaa !16
  %188 = getelementptr i8, ptr %187, i64 -24
  %189 = load i64, ptr %188, align 8
  %190 = getelementptr inbounds i8, ptr %185, i64 %189
  %191 = invoke noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %190, i8 noundef signext 10) #12
          to label %192 unwind label %243

192:                                              ; preds = %186
  %193 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %185, i8 noundef signext %191) #12
          to label %194 unwind label %243

194:                                              ; preds = %192
  %195 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %193) #12
          to label %196 unwind label %243

196:                                              ; preds = %194
  %197 = load ptr, ptr %3, align 8, !tbaa !7
  %198 = icmp eq ptr %197, %3
  br i1 %198, label %199, label %202

199:                                              ; preds = %196
  %200 = getelementptr inbounds %"struct.std::__detail::_List_node_header", ptr %4, i64 0, i32 1
  %201 = load i64, ptr %200, align 8, !tbaa !36
  br label %207

202:                                              ; preds = %196
  call void @_ZNSt8__detail15_List_node_base11_M_transferEPS0_S1_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef %197, ptr noundef nonnull %3) #17
  %203 = load i64, ptr %17, align 8, !tbaa !36
  %204 = getelementptr inbounds %"struct.std::__detail::_List_node_header", ptr %4, i64 0, i32 1
  %205 = load i64, ptr %204, align 8, !tbaa !36
  %206 = add i64 %205, %203
  store i64 %206, ptr %204, align 8, !tbaa !36
  store i64 0, ptr %17, align 8, !tbaa !36
  br label %207

207:                                              ; preds = %202, %199
  %208 = phi i64 [ %201, %199 ], [ %206, %202 ]
  %209 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i64 noundef %208) #12
          to label %210 unwind label %243

210:                                              ; preds = %207
  %211 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %209, ptr noundef nonnull @.str, i64 noundef 1) #12
          to label %212 unwind label %243

212:                                              ; preds = %210
  %213 = getelementptr inbounds %"struct.std::__detail::_List_node_base", ptr %4, i64 0, i32 1
  %214 = load ptr, ptr %213, align 8, !tbaa !32
  %215 = getelementptr inbounds %"struct.std::_List_node", ptr %214, i64 0, i32 1
  %216 = load i32, ptr %215, align 4, !tbaa !12
  %217 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %209, i32 noundef %216) #12
          to label %218 unwind label %243

218:                                              ; preds = %212
  %219 = load ptr, ptr %217, align 8, !tbaa !16
  %220 = getelementptr i8, ptr %219, i64 -24
  %221 = load i64, ptr %220, align 8
  %222 = getelementptr inbounds i8, ptr %217, i64 %221
  %223 = invoke noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %222, i8 noundef signext 10) #12
          to label %224 unwind label %243

224:                                              ; preds = %218
  %225 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %217, i8 noundef signext %223) #12
          to label %226 unwind label %243

226:                                              ; preds = %224
  %227 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %225) #12
          to label %228 unwind label %243

228:                                              ; preds = %226
  %229 = load ptr, ptr %4, align 8, !tbaa !7
  %230 = icmp eq ptr %229, %4
  br i1 %230, label %235, label %231

231:                                              ; preds = %231, %228
  %232 = phi ptr [ %233, %231 ], [ %229, %228 ]
  %233 = load ptr, ptr %232, align 8, !tbaa !7
  call void @_ZdlPv(ptr noundef %232) #18
  %234 = icmp eq ptr %233, %4
  br i1 %234, label %235, label %231, !llvm.loop !40

235:                                              ; preds = %231, %228
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #13
  %236 = load ptr, ptr %3, align 8, !tbaa !7
  %237 = icmp eq ptr %236, %3
  br i1 %237, label %242, label %238

238:                                              ; preds = %238, %235
  %239 = phi ptr [ %240, %238 ], [ %236, %235 ]
  %240 = load ptr, ptr %239, align 8, !tbaa !7
  call void @_ZdlPv(ptr noundef %239) #18
  %241 = icmp eq ptr %240, %3
  br i1 %241, label %242, label %238, !llvm.loop !40

242:                                              ; preds = %238, %235
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #13
  ret i32 0

243:                                              ; preds = %226, %224, %218, %212, %210, %207, %194, %192, %186, %183
  %244 = landingpad { ptr, i32 }
          cleanup
  br label %245

245:                                              ; preds = %243, %179, %175, %148, %146, %144, %142, %138, %134, %51, %49
  %246 = phi { ptr, i32 } [ %244, %243 ], [ %135, %134 ], [ %143, %142 ], [ %145, %144 ], [ %176, %175 ], [ %50, %49 ], [ %52, %51 ], [ %147, %146 ], [ %149, %148 ], [ %176, %179 ], [ %135, %138 ]
  %247 = load ptr, ptr %4, align 8, !tbaa !7
  %248 = icmp eq ptr %247, %4
  br i1 %248, label %253, label %249

249:                                              ; preds = %249, %245
  %250 = phi ptr [ %251, %249 ], [ %247, %245 ]
  %251 = load ptr, ptr %250, align 8, !tbaa !7
  call void @_ZdlPv(ptr noundef %250) #18
  %252 = icmp eq ptr %251, %4
  br i1 %252, label %253, label %249, !llvm.loop !40

253:                                              ; preds = %249, %245, %47
  %254 = phi { ptr, i32 } [ %48, %47 ], [ %246, %245 ], [ %246, %249 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #13
  %255 = load ptr, ptr %3, align 8, !tbaa !7
  %256 = icmp eq ptr %255, %3
  br i1 %256, label %261, label %257

257:                                              ; preds = %257, %253
  %258 = phi ptr [ %259, %257 ], [ %255, %253 ]
  %259 = load ptr, ptr %258, align 8, !tbaa !7
  call void @_ZdlPv(ptr noundef %258) #18
  %260 = icmp eq ptr %259, %3
  br i1 %260, label %261, label %257, !llvm.loop !40

261:                                              ; preds = %257, %253
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #13
  resume { ptr, i32 } %254
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(read)
declare i32 @atoi(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #9

; Function Attrs: optsize uwtable
define internal void @_ZNSt7__cxx114listIiSaIiEEC2EmRKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = getelementptr inbounds %"struct.std::__detail::_List_node_base", ptr %0, i64 0, i32 1
  store ptr %0, ptr %4, align 8, !tbaa !32
  store ptr %0, ptr %0, align 8, !tbaa !7
  %5 = getelementptr inbounds %"struct.std::__detail::_List_node_header", ptr %0, i64 0, i32 1
  store i64 0, ptr %5, align 8, !tbaa !33
  invoke void @_ZNSt7__cxx114listIiSaIiEE21_M_default_initializeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #12
          to label %6 unwind label %7

6:                                                ; preds = %3
  ret void

7:                                                ; preds = %3
  %8 = landingpad { ptr, i32 }
          cleanup
  %9 = load ptr, ptr %0, align 8, !tbaa !7
  %10 = icmp eq ptr %9, %0
  br i1 %10, label %15, label %11

11:                                               ; preds = %11, %7
  %12 = phi ptr [ %13, %11 ], [ %9, %7 ]
  %13 = load ptr, ptr %12, align 8, !tbaa !7
  tail call void @_ZdlPv(ptr noundef %12) #18
  %14 = icmp eq ptr %13, %0
  br i1 %14, label %15, label %11, !llvm.loop !40

15:                                               ; preds = %11, %7
  resume { ptr, i32 } %8
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #9

; Function Attrs: nobuiltin optsize allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #10

; Function Attrs: nounwind optsize
declare void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind optsize
declare void @_ZNSt8__detail15_List_node_base9_M_unhookEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #11

; Function Attrs: optsize uwtable
define internal void @_ZNSt7__cxx114listIiSaIiEEC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %3 = getelementptr inbounds %"struct.std::__detail::_List_node_base", ptr %0, i64 0, i32 1
  store ptr %0, ptr %3, align 8, !tbaa !32
  store ptr %0, ptr %0, align 8, !tbaa !7
  %4 = getelementptr inbounds %"struct.std::__detail::_List_node_header", ptr %0, i64 0, i32 1
  store i64 0, ptr %4, align 8, !tbaa !33
  %5 = load ptr, ptr %1, align 8, !tbaa !7
  invoke void @_ZNSt7__cxx114listIiSaIiEE22_M_initialize_dispatchISt20_List_const_iteratorIiEEEvT_S6_St12__false_type(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %5, ptr nonnull %1) #12
          to label %6 unwind label %7

6:                                                ; preds = %2
  ret void

7:                                                ; preds = %2
  %8 = landingpad { ptr, i32 }
          cleanup
  %9 = load ptr, ptr %0, align 8, !tbaa !7
  %10 = icmp eq ptr %9, %0
  br i1 %10, label %15, label %11

11:                                               ; preds = %11, %7
  %12 = phi ptr [ %13, %11 ], [ %9, %7 ]
  %13 = load ptr, ptr %12, align 8, !tbaa !7
  tail call void @_ZdlPv(ptr noundef %12) #18
  %14 = icmp eq ptr %13, %0
  br i1 %14, label %15, label %11, !llvm.loop !40

15:                                               ; preds = %11, %7
  resume { ptr, i32 } %8
}

; Function Attrs: nounwind optsize
declare void @_ZNSt8__detail15_List_node_base10_M_reverseEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: nounwind optsize
declare void @_ZNSt8__detail15_List_node_base11_M_transferEPS0_S1_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize uwtable
define internal void @_ZNSt7__cxx114listIiSaIiEE22_M_initialize_dispatchISt20_List_const_iteratorIiEEEvT_S6_St12__false_type(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = icmp eq ptr %1, %2
  br i1 %4, label %17, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %"struct.std::__detail::_List_node_header", ptr %0, i64 0, i32 1
  br label %7

7:                                                ; preds = %7, %5
  %8 = phi ptr [ %1, %5 ], [ %15, %7 ]
  %9 = getelementptr inbounds %"struct.std::_List_node", ptr %8, i64 0, i32 1
  %10 = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #16
  %11 = getelementptr inbounds %"struct.std::_List_node", ptr %10, i64 0, i32 1
  %12 = load i32, ptr %9, align 4, !tbaa !12
  store i32 %12, ptr %11, align 4, !tbaa !12
  tail call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull %0) #17
  %13 = load i64, ptr %6, align 8, !tbaa !36
  %14 = add i64 %13, 1
  store i64 %14, ptr %6, align 8, !tbaa !36
  %15 = load ptr, ptr %8, align 8, !tbaa !7
  %16 = icmp eq ptr %15, %2
  br i1 %16, label %17, label %7, !llvm.loop !44

17:                                               ; preds = %7, %3
  ret void
}

; Function Attrs: optsize uwtable
define internal void @_ZNSt7__cxx114listIiSaIiEE21_M_default_initializeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %14, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %"struct.std::__detail::_List_node_header", ptr %0, i64 0, i32 1
  br label %6

6:                                                ; preds = %6, %4
  %7 = phi i64 [ %1, %4 ], [ %12, %6 ]
  %8 = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #16
  %9 = getelementptr inbounds %"struct.std::_List_node", ptr %8, i64 0, i32 1
  store i32 0, ptr %9, align 4, !tbaa !12
  tail call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull %0) #17
  %10 = load i64, ptr %5, align 8, !tbaa !36
  %11 = add i64 %10, 1
  store i64 %11, ptr %5, align 8, !tbaa !36
  %12 = add i64 %7, -1
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %6, !llvm.loop !45

14:                                               ; preds = %6, %2
  ret void
}

attributes #0 = { optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
attributes #4 = { mustprogress optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { norecurse optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind optsize willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { nobuiltin optsize allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { optsize }
attributes #13 = { nounwind }
attributes #14 = { noreturn optsize }
attributes #15 = { nounwind optsize willreturn memory(read) }
attributes #16 = { builtin optsize allocsize(0) }
attributes #17 = { nounwind optsize }
attributes #18 = { builtin nounwind optsize }

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
!8 = !{!"_ZTSNSt8__detail15_List_node_baseE", !9, i64 0, !9, i64 8}
!9 = !{!"any pointer", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C++ TBAA"}
!12 = !{!13, !13, i64 0}
!13 = !{!"int", !10, i64 0}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{!17, !17, i64 0}
!17 = !{!"vtable pointer", !11, i64 0}
!18 = !{!19, !9, i64 240}
!19 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !20, i64 0, !9, i64 216, !10, i64 224, !26, i64 225, !9, i64 232, !9, i64 240, !9, i64 248, !9, i64 256}
!20 = !{!"_ZTSSt8ios_base", !21, i64 8, !21, i64 16, !22, i64 24, !23, i64 28, !23, i64 32, !9, i64 40, !24, i64 48, !10, i64 64, !13, i64 192, !9, i64 200, !25, i64 208}
!21 = !{!"long", !10, i64 0}
!22 = !{!"_ZTSSt13_Ios_Fmtflags", !10, i64 0}
!23 = !{!"_ZTSSt12_Ios_Iostate", !10, i64 0}
!24 = !{!"_ZTSNSt8ios_base6_WordsE", !9, i64 0, !21, i64 8}
!25 = !{!"_ZTSSt6locale", !9, i64 0}
!26 = !{!"bool", !10, i64 0}
!27 = !{!28, !10, i64 56}
!28 = !{!"_ZTSSt5ctypeIcE", !29, i64 0, !9, i64 16, !26, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !10, i64 56, !10, i64 57, !10, i64 313, !10, i64 569}
!29 = !{!"_ZTSNSt6locale5facetE", !13, i64 8}
!30 = !{!10, !10, i64 0}
!31 = !{!9, !9, i64 0}
!32 = !{!8, !9, i64 8}
!33 = !{!34, !21, i64 16}
!34 = !{!"_ZTSNSt8__detail17_List_node_headerE", !8, i64 0, !21, i64 16}
!35 = distinct !{!35, !15}
!36 = !{!37, !21, i64 16}
!37 = !{!"_ZTSNSt7__cxx1110_List_baseIiSaIiEEE", !38, i64 0}
!38 = !{!"_ZTSNSt7__cxx1110_List_baseIiSaIiEE10_List_implE", !34, i64 0}
!39 = distinct !{!39, !15}
!40 = distinct !{!40, !15}
!41 = distinct !{!41, !15}
!42 = distinct !{!42, !15}
!43 = distinct !{!43, !15}
!44 = distinct !{!44, !15}
!45 = distinct !{!45, !15}
