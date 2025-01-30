; ModuleID = '/src/llvm-test-suite/build/SingleSource/Benchmarks/Shootout-C++/Shootout-C++-lists.e.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::__cxx11::list" = type { %"class.std::__cxx11::_List_base" }
%"class.std::__cxx11::_List_base" = type { %"struct.std::__cxx11::_List_base<unsigned long, std::allocator<unsigned long>>::_List_impl" }
%"struct.std::__cxx11::_List_base<unsigned long, std::allocator<unsigned long>>::_List_impl" = type { %"struct.std::__detail::_List_node_header" }
%"struct.std::__detail::_List_node_header" = type { %"struct.std::__detail::_List_node_base", i64 }
%"struct.std::__detail::_List_node_base" = type { ptr, ptr }
%"struct.std::_List_node" = type { %"struct.std::__detail::_List_node_base", %"struct.__gnu_cxx::__aligned_membuf" }
%"struct.__gnu_cxx::__aligned_membuf" = type { [8 x i8] }
%"class.std::ctype" = type <{ %"class.std::locale::facet.base", [4 x i8], ptr, i8, [7 x i8], ptr, ptr, ptr, i8, [256 x i8], [256 x i8], i8, [6 x i8] }>
%"class.std::locale::facet.base" = type <{ ptr, i32 }>

$_ZNSt7__cxx114listImSaImEEC2EmRKS1_ = comdat any

$_ZNSt7__cxx114listImSaImEEC2ERKS2_ = comdat any

$_ZNSt7__cxx114listImSaImEE22_M_initialize_dispatchISt20_List_const_iteratorImEEEvT_S6_St12__false_type = comdat any

$_ZNSt7__cxx114listImSaImEE21_M_default_initializeEm = comdat any

@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_lists.cpp, ptr null }]
@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8

; Function Attrs: optsize uwtable
define internal void @_GLOBAL__sub_I_lists.cpp() #0 section ".text.startup" {
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
define internal noundef i64 @_Z10test_listsv() #0 personality ptr @__gxx_personality_v0 {
  %1 = alloca %"class.std::__cxx11::list", align 8
  %2 = alloca %"class.std::ios_base::Init", align 1
  %3 = alloca %"class.std::__cxx11::list", align 8
  %4 = alloca %"class.std::__cxx11::list", align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %1) #13
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #13
  call void @_ZNSt7__cxx114listImSaImEEC2EmRKS1_(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 10000, ptr noundef nonnull align 1 dereferenceable(1) %2) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #13
  %5 = load ptr, ptr %1, align 8, !tbaa !7
  %6 = icmp eq ptr %5, %1
  br i1 %6, label %14, label %7

7:                                                ; preds = %7, %0
  %8 = phi i64 [ %10, %7 ], [ 1, %0 ]
  %9 = phi ptr [ %11, %7 ], [ %5, %0 ]
  %10 = add i64 %8, 1
  %11 = load ptr, ptr %9, align 8, !tbaa !7
  %12 = getelementptr inbounds %"struct.std::_List_node", ptr %9, i64 0, i32 1
  store i64 %8, ptr %12, align 8, !tbaa !12
  %13 = icmp eq ptr %11, %1
  br i1 %13, label %14, label %7, !llvm.loop !14

14:                                               ; preds = %7, %0
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #13
  invoke void @_ZNSt7__cxx114listImSaImEEC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %1) #12
          to label %15 unwind label %36

15:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #13
  %16 = getelementptr inbounds %"struct.std::__detail::_List_node_base", ptr %4, i64 0, i32 1
  store ptr %4, ptr %16, align 8, !tbaa !16
  store ptr %4, ptr %4, align 8, !tbaa !7
  %17 = getelementptr inbounds %"struct.std::__detail::_List_node_header", ptr %4, i64 0, i32 1
  store i64 0, ptr %17, align 8, !tbaa !17
  %18 = getelementptr inbounds %"struct.std::__detail::_List_node_header", ptr %3, i64 0, i32 1
  %19 = load i64, ptr %18, align 8, !tbaa !19
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %75, label %21

21:                                               ; preds = %25, %15
  %22 = phi i64 [ %26, %25 ], [ %19, %15 ]
  %23 = load ptr, ptr %3, align 8, !tbaa !7
  %24 = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #14
          to label %25 unwind label %40

25:                                               ; preds = %21
  %26 = add i64 %22, -1
  %27 = getelementptr inbounds %"struct.std::_List_node", ptr %23, i64 0, i32 1
  %28 = getelementptr inbounds %"struct.std::_List_node", ptr %24, i64 0, i32 1
  %29 = load i64, ptr %27, align 8, !tbaa !12
  store i64 %29, ptr %28, align 8, !tbaa !12
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %24, ptr noundef nonnull %4) #15
  %30 = load i64, ptr %17, align 8, !tbaa !19
  %31 = add i64 %30, 1
  store i64 %31, ptr %17, align 8, !tbaa !19
  %32 = load ptr, ptr %3, align 8, !tbaa !7
  %33 = load i64, ptr %18, align 8, !tbaa !19
  %34 = add i64 %33, -1
  store i64 %34, ptr %18, align 8, !tbaa !19
  call void @_ZNSt8__detail15_List_node_base9_M_unhookEv(ptr noundef nonnull align 8 dereferenceable(16) %32) #15
  call void @_ZdlPv(ptr noundef %32) #16
  %35 = icmp eq i64 %26, 0
  br i1 %35, label %57, label %21, !llvm.loop !22

36:                                               ; preds = %14
  %37 = landingpad { ptr, i32 }
          cleanup
  br label %127

38:                                               ; preds = %60
  %39 = landingpad { ptr, i32 }
          cleanup
  br label %42

40:                                               ; preds = %21
  %41 = landingpad { ptr, i32 }
          cleanup
  br label %42

42:                                               ; preds = %40, %38
  %43 = phi { ptr, i32 } [ %39, %38 ], [ %41, %40 ]
  %44 = load ptr, ptr %4, align 8, !tbaa !7
  %45 = icmp eq ptr %44, %4
  br i1 %45, label %50, label %46

46:                                               ; preds = %46, %42
  %47 = phi ptr [ %48, %46 ], [ %44, %42 ]
  %48 = load ptr, ptr %47, align 8, !tbaa !7
  call void @_ZdlPv(ptr noundef %47) #16
  %49 = icmp eq ptr %48, %4
  br i1 %49, label %50, label %46, !llvm.loop !23

50:                                               ; preds = %46, %42
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #13
  %51 = load ptr, ptr %3, align 8, !tbaa !7
  %52 = icmp eq ptr %51, %3
  br i1 %52, label %127, label %53

53:                                               ; preds = %53, %50
  %54 = phi ptr [ %55, %53 ], [ %51, %50 ]
  %55 = load ptr, ptr %54, align 8, !tbaa !7
  call void @_ZdlPv(ptr noundef %54) #16
  %56 = icmp eq ptr %55, %3
  br i1 %56, label %127, label %53, !llvm.loop !23

57:                                               ; preds = %25
  %58 = load i64, ptr %17, align 8, !tbaa !19
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %75, label %60

60:                                               ; preds = %64, %57
  %61 = phi i64 [ %65, %64 ], [ %58, %57 ]
  %62 = load ptr, ptr %16, align 8, !tbaa !16
  %63 = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #14
          to label %64 unwind label %38

64:                                               ; preds = %60
  %65 = add i64 %61, -1
  %66 = getelementptr inbounds %"struct.std::_List_node", ptr %62, i64 0, i32 1
  %67 = getelementptr inbounds %"struct.std::_List_node", ptr %63, i64 0, i32 1
  %68 = load i64, ptr %66, align 8, !tbaa !12
  store i64 %68, ptr %67, align 8, !tbaa !12
  call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %63, ptr noundef nonnull %3) #15
  %69 = load i64, ptr %18, align 8, !tbaa !19
  %70 = add i64 %69, 1
  store i64 %70, ptr %18, align 8, !tbaa !19
  %71 = load ptr, ptr %16, align 8, !tbaa !16
  %72 = load i64, ptr %17, align 8, !tbaa !19
  %73 = add i64 %72, -1
  store i64 %73, ptr %17, align 8, !tbaa !19
  call void @_ZNSt8__detail15_List_node_base9_M_unhookEv(ptr noundef nonnull align 8 dereferenceable(16) %71) #15
  call void @_ZdlPv(ptr noundef %71) #16
  %74 = icmp eq i64 %65, 0
  br i1 %74, label %75, label %60, !llvm.loop !24

75:                                               ; preds = %64, %57, %15
  call void @_ZNSt8__detail15_List_node_base10_M_reverseEv(ptr noundef nonnull align 8 dereferenceable(16) %1) #15
  %76 = load ptr, ptr %1, align 8, !tbaa !7
  %77 = getelementptr inbounds %"struct.std::_List_node", ptr %76, i64 0, i32 1
  %78 = load i64, ptr %77, align 8, !tbaa !12
  %79 = icmp eq i64 %78, 10000
  br i1 %79, label %80, label %104

80:                                               ; preds = %75
  %81 = getelementptr inbounds %"struct.std::__detail::_List_node_header", ptr %1, i64 0, i32 1
  %82 = load i64, ptr %81, align 8, !tbaa !19
  %83 = load i64, ptr %18, align 8, !tbaa !19
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %104

85:                                               ; preds = %93, %80
  %86 = phi ptr [ %89, %93 ], [ %1, %80 ]
  %87 = phi ptr [ %88, %93 ], [ %3, %80 ]
  %88 = load ptr, ptr %87, align 8, !tbaa !7
  %89 = load ptr, ptr %86, align 8, !tbaa !7
  %90 = icmp ne ptr %89, %1
  %91 = icmp ne ptr %88, %3
  %92 = select i1 %90, i1 %91, i1 false
  br i1 %92, label %93, label %99

93:                                               ; preds = %85
  %94 = getelementptr inbounds %"struct.std::_List_node", ptr %89, i64 0, i32 1
  %95 = load i64, ptr %94, align 8, !tbaa !12
  %96 = getelementptr inbounds %"struct.std::_List_node", ptr %88, i64 0, i32 1
  %97 = load i64, ptr %96, align 8, !tbaa !12
  %98 = icmp eq i64 %95, %97
  br i1 %98, label %85, label %99, !llvm.loop !25

99:                                               ; preds = %93, %85
  %.lcssa1 = phi ptr [ %88, %93 ], [ %88, %85 ]
  %.lcssa = phi ptr [ %89, %93 ], [ %89, %85 ]
  %100 = icmp eq ptr %.lcssa, %1
  %101 = icmp eq ptr %.lcssa1, %3
  %102 = select i1 %100, i1 %101, i1 false
  %103 = select i1 %102, i64 %82, i64 0
  br label %104

104:                                              ; preds = %99, %80, %75
  %105 = phi i64 [ 0, %75 ], [ 0, %80 ], [ %103, %99 ]
  %106 = load ptr, ptr %4, align 8, !tbaa !7
  %107 = icmp eq ptr %106, %4
  br i1 %107, label %112, label %108

108:                                              ; preds = %108, %104
  %109 = phi ptr [ %110, %108 ], [ %106, %104 ]
  %110 = load ptr, ptr %109, align 8, !tbaa !7
  call void @_ZdlPv(ptr noundef %109) #16
  %111 = icmp eq ptr %110, %4
  br i1 %111, label %112, label %108, !llvm.loop !23

112:                                              ; preds = %108, %104
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #13
  %113 = load ptr, ptr %3, align 8, !tbaa !7
  %114 = icmp eq ptr %113, %3
  br i1 %114, label %119, label %115

115:                                              ; preds = %115, %112
  %116 = phi ptr [ %117, %115 ], [ %113, %112 ]
  %117 = load ptr, ptr %116, align 8, !tbaa !7
  call void @_ZdlPv(ptr noundef %116) #16
  %118 = icmp eq ptr %117, %3
  br i1 %118, label %119, label %115, !llvm.loop !23

119:                                              ; preds = %115, %112
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #13
  %120 = load ptr, ptr %1, align 8, !tbaa !7
  %121 = icmp eq ptr %120, %1
  br i1 %121, label %126, label %122

122:                                              ; preds = %122, %119
  %123 = phi ptr [ %124, %122 ], [ %120, %119 ]
  %124 = load ptr, ptr %123, align 8, !tbaa !7
  call void @_ZdlPv(ptr noundef %123) #16
  %125 = icmp eq ptr %124, %1
  br i1 %125, label %126, label %122, !llvm.loop !23

126:                                              ; preds = %122, %119
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %1) #13
  ret i64 %105

127:                                              ; preds = %53, %50, %36
  %128 = phi { ptr, i32 } [ %37, %36 ], [ %43, %50 ], [ %43, %53 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #13
  %129 = load ptr, ptr %1, align 8, !tbaa !7
  %130 = icmp eq ptr %129, %1
  br i1 %130, label %135, label %131

131:                                              ; preds = %131, %127
  %132 = phi ptr [ %133, %131 ], [ %129, %127 ]
  %133 = load ptr, ptr %132, align 8, !tbaa !7
  call void @_ZdlPv(ptr noundef %132) #16
  %134 = icmp eq ptr %133, %1
  br i1 %134, label %135, label %131, !llvm.loop !23

135:                                              ; preds = %131, %127
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %1) #13
  resume { ptr, i32 } %128
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: optsize uwtable
define internal void @_ZNSt7__cxx114listImSaImEEC2EmRKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = getelementptr inbounds %"struct.std::__detail::_List_node_base", ptr %0, i64 0, i32 1
  store ptr %0, ptr %4, align 8, !tbaa !16
  store ptr %0, ptr %0, align 8, !tbaa !7
  %5 = getelementptr inbounds %"struct.std::__detail::_List_node_header", ptr %0, i64 0, i32 1
  store i64 0, ptr %5, align 8, !tbaa !17
  invoke void @_ZNSt7__cxx114listImSaImEE21_M_default_initializeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #12
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
  tail call void @_ZdlPv(ptr noundef %12) #16
  %14 = icmp eq ptr %13, %0
  br i1 %14, label %15, label %11, !llvm.loop !23

15:                                               ; preds = %11, %7
  resume { ptr, i32 } %8
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: optsize uwtable
define internal void @_ZNSt7__cxx114listImSaImEEC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %3 = getelementptr inbounds %"struct.std::__detail::_List_node_base", ptr %0, i64 0, i32 1
  store ptr %0, ptr %3, align 8, !tbaa !16
  store ptr %0, ptr %0, align 8, !tbaa !7
  %4 = getelementptr inbounds %"struct.std::__detail::_List_node_header", ptr %0, i64 0, i32 1
  store i64 0, ptr %4, align 8, !tbaa !17
  %5 = load ptr, ptr %1, align 8, !tbaa !7
  invoke void @_ZNSt7__cxx114listImSaImEE22_M_initialize_dispatchISt20_List_const_iteratorImEEEvT_S6_St12__false_type(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %5, ptr nonnull %1) #12
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
  tail call void @_ZdlPv(ptr noundef %12) #16
  %14 = icmp eq ptr %13, %0
  br i1 %14, label %15, label %11, !llvm.loop !23

15:                                               ; preds = %11, %7
  resume { ptr, i32 } %8
}

; Function Attrs: nobuiltin optsize allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind optsize
declare void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind optsize
declare void @_ZNSt8__detail15_List_node_base9_M_unhookEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind optsize
declare void @_ZNSt8__detail15_List_node_base10_M_reverseEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: optsize uwtable
define internal void @_ZNSt7__cxx114listImSaImEE22_M_initialize_dispatchISt20_List_const_iteratorImEEEvT_S6_St12__false_type(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = icmp eq ptr %1, %2
  br i1 %4, label %17, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %"struct.std::__detail::_List_node_header", ptr %0, i64 0, i32 1
  br label %7

7:                                                ; preds = %7, %5
  %8 = phi ptr [ %1, %5 ], [ %15, %7 ]
  %9 = getelementptr inbounds %"struct.std::_List_node", ptr %8, i64 0, i32 1
  %10 = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #14
  %11 = getelementptr inbounds %"struct.std::_List_node", ptr %10, i64 0, i32 1
  %12 = load i64, ptr %9, align 8, !tbaa !12
  store i64 %12, ptr %11, align 8, !tbaa !12
  tail call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull %0) #15
  %13 = load i64, ptr %6, align 8, !tbaa !19
  %14 = add i64 %13, 1
  store i64 %14, ptr %6, align 8, !tbaa !19
  %15 = load ptr, ptr %8, align 8, !tbaa !7
  %16 = icmp eq ptr %15, %2
  br i1 %16, label %17, label %7, !llvm.loop !26

17:                                               ; preds = %7, %3
  ret void
}

; Function Attrs: optsize uwtable
define internal void @_ZNSt7__cxx114listImSaImEE21_M_default_initializeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %14, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %"struct.std::__detail::_List_node_header", ptr %0, i64 0, i32 1
  br label %6

6:                                                ; preds = %6, %4
  %7 = phi i64 [ %1, %4 ], [ %12, %6 ]
  %8 = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #14
  %9 = getelementptr inbounds %"struct.std::_List_node", ptr %8, i64 0, i32 1
  store i64 0, ptr %9, align 8, !tbaa !12
  tail call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull %0) #15
  %10 = load i64, ptr %5, align 8, !tbaa !19
  %11 = add i64 %10, 1
  store i64 %11, ptr %5, align 8, !tbaa !19
  %12 = add i64 %7, -1
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %6, !llvm.loop !27

14:                                               ; preds = %6, %2
  ret void
}

; Function Attrs: mustprogress norecurse optsize uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nocapture noundef readonly %1) #7 {
  %3 = icmp eq i32 %0, 2
  br i1 %3, label %4, label %10

4:                                                ; preds = %2
  %5 = getelementptr inbounds ptr, ptr %1, i64 1
  %6 = load ptr, ptr %5, align 8, !tbaa !28
  %7 = tail call i32 @atoi(ptr nocapture noundef %6) #17
  %8 = tail call i32 @llvm.smax.i32(i32 %7, i32 1)
  %9 = zext i32 %8 to i64
  br label %10

10:                                               ; preds = %4, %2
  %11 = phi i64 [ %9, %4 ], [ 3000, %2 ]
  br label %12

12:                                               ; preds = %12, %10
  %13 = phi i64 [ %15, %12 ], [ %11, %10 ]
  %14 = tail call noundef i64 @_Z10test_listsv() #12
  %15 = add nsw i64 %13, -1
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %12, !llvm.loop !29

17:                                               ; preds = %12
  %.lcssa = phi i64 [ %14, %12 ]
  %18 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i64 noundef %.lcssa) #12
  %19 = load ptr, ptr %18, align 8, !tbaa !30
  %20 = getelementptr i8, ptr %19, i64 -24
  %21 = load i64, ptr %20, align 8
  %22 = getelementptr inbounds i8, ptr %18, i64 %21
  %23 = tail call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %22, i8 noundef signext 10) #12
  %24 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %18, i8 noundef signext %23) #12
  %25 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %24) #12
  ret i32 0
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(read)
declare i32 @atoi(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress optsize uwtable
define available_externally noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %0, i8 noundef signext %1) local_unnamed_addr #10 align 2 {
  %3 = getelementptr inbounds %"class.std::basic_ios", ptr %0, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !32
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void @_ZSt16__throw_bad_castv() #18
  unreachable

7:                                                ; preds = %2
  %8 = getelementptr inbounds %"class.std::ctype", ptr %4, i64 0, i32 8
  %9 = load i8, ptr %8, align 8, !tbaa !41
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %7
  %12 = zext i8 %1 to i64
  %13 = getelementptr inbounds %"class.std::ctype", ptr %4, i64 0, i32 9, i64 %12
  %14 = load i8, ptr %13, align 1, !tbaa !44
  br label %20

15:                                               ; preds = %7
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %4) #12
  %16 = load ptr, ptr %4, align 8, !tbaa !30
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
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #11

; Function Attrs: optsize
declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #1

attributes #0 = { optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nobuiltin optsize allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress norecurse optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind optsize willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { mustprogress optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { noreturn optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { optsize }
attributes #13 = { nounwind }
attributes #14 = { builtin optsize allocsize(0) }
attributes #15 = { nounwind optsize }
attributes #16 = { builtin nounwind optsize }
attributes #17 = { nounwind optsize willreturn memory(read) }
attributes #18 = { noreturn optsize }

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
!13 = !{!"long", !10, i64 0}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{!8, !9, i64 8}
!17 = !{!18, !13, i64 16}
!18 = !{!"_ZTSNSt8__detail17_List_node_headerE", !8, i64 0, !13, i64 16}
!19 = !{!20, !13, i64 16}
!20 = !{!"_ZTSNSt7__cxx1110_List_baseImSaImEEE", !21, i64 0}
!21 = !{!"_ZTSNSt7__cxx1110_List_baseImSaImEE10_List_implE", !18, i64 0}
!22 = distinct !{!22, !15}
!23 = distinct !{!23, !15}
!24 = distinct !{!24, !15}
!25 = distinct !{!25, !15}
!26 = distinct !{!26, !15}
!27 = distinct !{!27, !15}
!28 = !{!9, !9, i64 0}
!29 = distinct !{!29, !15}
!30 = !{!31, !31, i64 0}
!31 = !{!"vtable pointer", !11, i64 0}
!32 = !{!33, !9, i64 240}
!33 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !34, i64 0, !9, i64 216, !10, i64 224, !40, i64 225, !9, i64 232, !9, i64 240, !9, i64 248, !9, i64 256}
!34 = !{!"_ZTSSt8ios_base", !13, i64 8, !13, i64 16, !35, i64 24, !36, i64 28, !36, i64 32, !9, i64 40, !37, i64 48, !10, i64 64, !38, i64 192, !9, i64 200, !39, i64 208}
!35 = !{!"_ZTSSt13_Ios_Fmtflags", !10, i64 0}
!36 = !{!"_ZTSSt12_Ios_Iostate", !10, i64 0}
!37 = !{!"_ZTSNSt8ios_base6_WordsE", !9, i64 0, !13, i64 8}
!38 = !{!"int", !10, i64 0}
!39 = !{!"_ZTSSt6locale", !9, i64 0}
!40 = !{!"bool", !10, i64 0}
!41 = !{!42, !10, i64 56}
!42 = !{!"_ZTSSt5ctypeIcE", !43, i64 0, !9, i64 16, !40, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !10, i64 56, !10, i64 57, !10, i64 313, !10, i64 569}
!43 = !{!"_ZTSNSt6locale5facetE", !38, i64 8}
!44 = !{!10, !10, i64 0}
