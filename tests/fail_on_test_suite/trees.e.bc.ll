; ModuleID = '/src/llvm-test-suite/build/MultiSource/Benchmarks/Prolangs-C++/trees/trees.e.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%class.Node = type <{ ptr, i32, [4 x i8] }>
%class.RealNode = type { %class.Node.base, float, ptr }
%class.Node.base = type <{ ptr, i32 }>
%class.Tree = type { ptr }
%class.UnaryNode = type { %class.Node.base, ptr, ptr }
%class.BinaryNode = type { %class.Node.base, ptr, ptr, ptr }

$_ZN8RealNodeD2Ev = comdat any

$_ZN8RealNodeD0Ev = comdat any

$_ZN9UnaryNodeD2Ev = comdat any

$_ZN9UnaryNodeD0Ev = comdat any

$_ZN10BinaryNodeD2Ev = comdat any

$_ZN10BinaryNodeD0Ev = comdat any

$_ZTS4Node = comdat any

$_ZTI4Node = comdat any

@values0 = internal global float 0.000000e+00, align 4
@values1 = internal global float 0.000000e+00, align 4
@values2 = internal global float 0.000000e+00, align 4
@_ZTV10BinaryNode = internal unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTI10BinaryNode, ptr @_ZN10BinaryNode9nodeValueEv, ptr @_ZN10BinaryNodeD2Ev, ptr @_ZN10BinaryNodeD0Ev] }, align 8, !type !0, !type !1, !type !2, !type !3
@_ZTV9UnaryNode = internal unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTI9UnaryNode, ptr @_ZN9UnaryNode9nodeValueEv, ptr @_ZN9UnaryNodeD2Ev, ptr @_ZN9UnaryNodeD0Ev] }, align 8, !type !2, !type !3, !type !4, !type !5
@_ZTV8RealNode = internal unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTI8RealNode, ptr @_ZN8RealNode9nodeValueEv, ptr @_ZN8RealNodeD2Ev, ptr @_ZN8RealNodeD0Ev] }, align 8, !type !2, !type !3, !type !6, !type !7
@.str = private unnamed_addr constant [2 x i8] c"u\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global ptr
@_ZTS8RealNode = internal constant [10 x i8] c"8RealNode\00", align 1
@_ZTVN10__cxxabiv117__class_type_infoE = external global ptr
@_ZTS4Node = internal constant [6 x i8] c"4Node\00", comdat, align 1
@_ZTI4Node = internal constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTS4Node }, comdat, align 8
@_ZTI8RealNode = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS8RealNode, ptr @_ZTI4Node }, align 8
@_ZTS9UnaryNode = internal constant [11 x i8] c"9UnaryNode\00", align 1
@_ZTI9UnaryNode = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS9UnaryNode, ptr @_ZTI4Node }, align 8
@_ZTS10BinaryNode = internal constant [13 x i8] c"10BinaryNode\00", align 1
@_ZTI10BinaryNode = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS10BinaryNode, ptr @_ZTI4Node }, align 8

; Function Attrs: optsize uwtable
define internal void @_ZN4TreeC2EPc(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(8) %0, ptr noundef readonly %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
  %3 = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #9
  %4 = getelementptr inbounds %class.Node, ptr %3, i64 0, i32 1
  store i32 1, ptr %4, align 8, !tbaa !15
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTV8RealNode, i64 0, inrange i32 0, i64 2), ptr %3, align 8, !tbaa !20
  %5 = getelementptr inbounds %class.RealNode, ptr %3, i64 0, i32 2
  store ptr null, ptr %5, align 8, !tbaa !22
  %6 = getelementptr inbounds %class.RealNode, ptr %3, i64 0, i32 1
  store float 0.000000e+00, ptr %6, align 4, !tbaa !26
  %7 = icmp eq ptr %1, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %2
  %9 = invoke noalias noundef nonnull dereferenceable(1) ptr @_Znwm(i64 noundef 1) #9
          to label %10 unwind label %13

10:                                               ; preds = %8
  store ptr %9, ptr %5, align 8, !tbaa !22
  %11 = load i8, ptr %1, align 1, !tbaa !27
  store i8 %11, ptr %9, align 1, !tbaa !27
  br label %12

12:                                               ; preds = %10, %2
  store ptr %3, ptr %0, align 8, !tbaa !28
  ret void

13:                                               ; preds = %8
  %14 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %3) #10
  resume { ptr, i32 } %14
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin optsize allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #1

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal noundef float @_ZN8RealNode9nodeValueEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0) unnamed_addr #3 align 2 {
  %2 = getelementptr inbounds %class.RealNode, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !22
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = getelementptr inbounds %class.RealNode, ptr %0, i64 0, i32 1
  br label %13

7:                                                ; preds = %1
  %8 = load i8, ptr %3, align 1, !tbaa !27
  %9 = icmp eq i8 %8, 121
  %10 = select i1 %9, ptr @values1, ptr @values2
  %11 = icmp eq i8 %8, 120
  %12 = select i1 %11, ptr @values0, ptr %10
  br label %13

13:                                               ; preds = %7, %5
  %14 = phi ptr [ %6, %5 ], [ %12, %7 ]
  %15 = load float, ptr %14, align 4, !tbaa !30
  ret float %15
}

; Function Attrs: nounwind optsize uwtable
define internal void @_ZN8RealNodeD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #4 comdat align 2 {
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTV8RealNode, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !20
  %2 = getelementptr inbounds %class.RealNode, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !22
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @_ZdlPv(ptr noundef nonnull %3) #10
  br label %6

6:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @_ZN8RealNodeD0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #4 comdat align 2 {
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTV8RealNode, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !20
  %2 = getelementptr inbounds %class.RealNode, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !22
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @_ZdlPv(ptr noundef nonnull %3) #10
  br label %6

6:                                                ; preds = %5, %1
  tail call void @_ZdlPv(ptr noundef nonnull %0) #10
  ret void
}

; Function Attrs: optsize uwtable
define internal void @_ZN4TreeC2EPcS_(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(8) %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
  %4 = alloca %class.Tree, align 8
  %5 = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #9
  %6 = load ptr, ptr %2, align 8, !tbaa !28
  store ptr %6, ptr %4, align 8, !tbaa !28
  %7 = getelementptr inbounds %class.Node, ptr %6, i64 0, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !15
  %9 = add nsw i32 %8, 1
  store i32 %9, ptr %7, align 8, !tbaa !15
  invoke void @_ZN9UnaryNodeC2EPc4Tree(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %1, ptr noundef nonnull %4) #11
          to label %10 unwind label %19

10:                                               ; preds = %3
  store ptr %5, ptr %0, align 8, !tbaa !28
  %11 = load i32, ptr %7, align 8, !tbaa !15
  %12 = add nsw i32 %11, -1
  store i32 %12, ptr %7, align 8, !tbaa !15
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %10
  %15 = load ptr, ptr %6, align 8, !tbaa !20
  %16 = getelementptr inbounds ptr, ptr %15, i64 2
  %17 = load ptr, ptr %16, align 8
  tail call void %17(ptr noundef nonnull align 8 dereferenceable(12) %6) #12
  br label %18

18:                                               ; preds = %14, %10
  ret void

19:                                               ; preds = %3
  %20 = landingpad { ptr, i32 }
          cleanup
  %21 = load i32, ptr %7, align 8, !tbaa !15
  %22 = add nsw i32 %21, -1
  store i32 %22, ptr %7, align 8, !tbaa !15
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = load ptr, ptr %6, align 8, !tbaa !20
  %26 = getelementptr inbounds ptr, ptr %25, i64 2
  %27 = load ptr, ptr %26, align 8
  tail call void %27(ptr noundef nonnull align 8 dereferenceable(12) %6) #12
  br label %28

28:                                               ; preds = %24, %19
  tail call void @_ZdlPv(ptr noundef nonnull %5) #10
  resume { ptr, i32 } %20
}

; Function Attrs: optsize uwtable
define internal void @_ZN9UnaryNodeC2EPc4Tree(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(32) %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
  %4 = getelementptr inbounds %class.Node, ptr %0, i64 0, i32 1
  store i32 1, ptr %4, align 8, !tbaa !15
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTV9UnaryNode, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !20
  %5 = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #9
  %6 = load ptr, ptr %2, align 8, !tbaa !28
  store ptr %6, ptr %5, align 8, !tbaa !28
  %7 = getelementptr inbounds %class.Node, ptr %6, i64 0, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !15
  %9 = add nsw i32 %8, 1
  store i32 %9, ptr %7, align 8, !tbaa !15
  %10 = getelementptr inbounds %class.UnaryNode, ptr %0, i64 0, i32 2
  store ptr %5, ptr %10, align 8, !tbaa !31
  %11 = tail call noalias noundef nonnull dereferenceable(1) ptr @_Znwm(i64 noundef 1) #9
  %12 = getelementptr inbounds %class.UnaryNode, ptr %0, i64 0, i32 1
  store ptr %11, ptr %12, align 8, !tbaa !33
  %13 = load i8, ptr %1, align 1, !tbaa !27
  store i8 %13, ptr %11, align 1, !tbaa !27
  ret void
}

; Function Attrs: mustprogress optsize uwtable
define internal noundef float @_ZN9UnaryNode9nodeValueEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %0) unnamed_addr #5 align 2 {
  %2 = getelementptr inbounds %class.UnaryNode, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !33
  %4 = load i8, ptr %3, align 1, !tbaa !27
  %5 = icmp eq i8 %4, 45
  br i1 %5, label %6, label %14

6:                                                ; preds = %1
  %7 = getelementptr inbounds %class.UnaryNode, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !31
  %9 = load ptr, ptr %8, align 8, !tbaa !28
  %10 = load ptr, ptr %9, align 8, !tbaa !20
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef float %11(ptr noundef nonnull align 8 dereferenceable(12) %9) #11
  %13 = fneg float %12
  br label %22

14:                                               ; preds = %1
  %15 = icmp eq i8 %4, 43
  tail call void @llvm.assume(i1 %15)
  %16 = getelementptr inbounds %class.UnaryNode, ptr %0, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !31
  %18 = load ptr, ptr %17, align 8, !tbaa !28
  %19 = load ptr, ptr %18, align 8, !tbaa !20
  %20 = load ptr, ptr %19, align 8
  %21 = tail call noundef float %20(ptr noundef nonnull align 8 dereferenceable(12) %18) #11
  br label %22

22:                                               ; preds = %14, %6
  %23 = phi float [ %13, %6 ], [ %21, %14 ]
  ret float %23
}

; Function Attrs: nounwind optsize uwtable
define internal void @_ZN9UnaryNodeD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #4 comdat align 2 {
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTV9UnaryNode, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !20
  %2 = getelementptr inbounds %class.UnaryNode, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !33
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @_ZdlPv(ptr noundef nonnull %3) #10
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr inbounds %class.UnaryNode, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !31
  %9 = icmp eq ptr %8, null
  br i1 %9, label %21, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !28
  %12 = getelementptr inbounds %class.Node, ptr %11, i64 0, i32 1
  %13 = load i32, ptr %12, align 8, !tbaa !15
  %14 = add nsw i32 %13, -1
  store i32 %14, ptr %12, align 8, !tbaa !15
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %10
  %17 = load ptr, ptr %11, align 8, !tbaa !20
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  tail call void %19(ptr noundef nonnull align 8 dereferenceable(12) %11) #12
  br label %20

20:                                               ; preds = %16, %10
  tail call void @_ZdlPv(ptr noundef nonnull %8) #10
  br label %21

21:                                               ; preds = %20, %6
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @_ZN9UnaryNodeD0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #4 comdat align 2 {
  tail call void @_ZN9UnaryNodeD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #12
  tail call void @_ZdlPv(ptr noundef nonnull %0) #10
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.assume(i1 noundef) #6

; Function Attrs: optsize uwtable
define internal void @_ZN4TreeC2ES_PcS_(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(8) %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
  %5 = alloca %class.Tree, align 8
  %6 = alloca %class.Tree, align 8
  %7 = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #9
  %8 = load ptr, ptr %1, align 8, !tbaa !28
  store ptr %8, ptr %5, align 8, !tbaa !28
  %9 = getelementptr inbounds %class.Node, ptr %8, i64 0, i32 1
  %10 = load i32, ptr %9, align 8, !tbaa !15
  %11 = add nsw i32 %10, 1
  store i32 %11, ptr %9, align 8, !tbaa !15
  %12 = load ptr, ptr %3, align 8, !tbaa !28
  store ptr %12, ptr %6, align 8, !tbaa !28
  %13 = getelementptr inbounds %class.Node, ptr %12, i64 0, i32 1
  %14 = load i32, ptr %13, align 8, !tbaa !15
  %15 = add nsw i32 %14, 1
  store i32 %15, ptr %13, align 8, !tbaa !15
  invoke void @_ZN10BinaryNodeC2EPc4TreeS1_(ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %6) #11
          to label %16 unwind label %33

16:                                               ; preds = %4
  store ptr %7, ptr %0, align 8, !tbaa !28
  %17 = load i32, ptr %13, align 8, !tbaa !15
  %18 = add nsw i32 %17, -1
  store i32 %18, ptr %13, align 8, !tbaa !15
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = load ptr, ptr %12, align 8, !tbaa !20
  %22 = getelementptr inbounds ptr, ptr %21, i64 2
  %23 = load ptr, ptr %22, align 8
  tail call void %23(ptr noundef nonnull align 8 dereferenceable(12) %12) #12
  br label %24

24:                                               ; preds = %20, %16
  %25 = load i32, ptr %9, align 8, !tbaa !15
  %26 = add nsw i32 %25, -1
  store i32 %26, ptr %9, align 8, !tbaa !15
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = load ptr, ptr %8, align 8, !tbaa !20
  %30 = getelementptr inbounds ptr, ptr %29, i64 2
  %31 = load ptr, ptr %30, align 8
  tail call void %31(ptr noundef nonnull align 8 dereferenceable(12) %8) #12
  br label %32

32:                                               ; preds = %28, %24
  ret void

33:                                               ; preds = %4
  %34 = landingpad { ptr, i32 }
          cleanup
  %35 = load i32, ptr %13, align 8, !tbaa !15
  %36 = add nsw i32 %35, -1
  store i32 %36, ptr %13, align 8, !tbaa !15
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %33
  %39 = load ptr, ptr %12, align 8, !tbaa !20
  %40 = getelementptr inbounds ptr, ptr %39, i64 2
  %41 = load ptr, ptr %40, align 8
  tail call void %41(ptr noundef nonnull align 8 dereferenceable(12) %12) #12
  br label %42

42:                                               ; preds = %38, %33
  %43 = load i32, ptr %9, align 8, !tbaa !15
  %44 = add nsw i32 %43, -1
  store i32 %44, ptr %9, align 8, !tbaa !15
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %42
  %47 = load ptr, ptr %8, align 8, !tbaa !20
  %48 = getelementptr inbounds ptr, ptr %47, i64 2
  %49 = load ptr, ptr %48, align 8
  tail call void %49(ptr noundef nonnull align 8 dereferenceable(12) %8) #12
  br label %50

50:                                               ; preds = %46, %42
  tail call void @_ZdlPv(ptr noundef nonnull %7) #10
  resume { ptr, i32 } %34
}

; Function Attrs: optsize uwtable
define internal void @_ZN10BinaryNodeC2EPc4TreeS1_(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(40) %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
  %5 = getelementptr inbounds %class.Node, ptr %0, i64 0, i32 1
  store i32 1, ptr %5, align 8, !tbaa !15
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTV10BinaryNode, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !20
  %6 = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #9
  %7 = load ptr, ptr %2, align 8, !tbaa !28
  store ptr %7, ptr %6, align 8, !tbaa !28
  %8 = getelementptr inbounds %class.Node, ptr %7, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !15
  %10 = add nsw i32 %9, 1
  store i32 %10, ptr %8, align 8, !tbaa !15
  %11 = getelementptr inbounds %class.BinaryNode, ptr %0, i64 0, i32 2
  store ptr %6, ptr %11, align 8, !tbaa !34
  %12 = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #9
  %13 = load ptr, ptr %3, align 8, !tbaa !28
  store ptr %13, ptr %12, align 8, !tbaa !28
  %14 = getelementptr inbounds %class.Node, ptr %13, i64 0, i32 1
  %15 = load i32, ptr %14, align 8, !tbaa !15
  %16 = add nsw i32 %15, 1
  store i32 %16, ptr %14, align 8, !tbaa !15
  %17 = getelementptr inbounds %class.BinaryNode, ptr %0, i64 0, i32 3
  store ptr %12, ptr %17, align 8, !tbaa !36
  %18 = tail call noalias noundef nonnull dereferenceable(1) ptr @_Znwm(i64 noundef 1) #9
  %19 = getelementptr inbounds %class.BinaryNode, ptr %0, i64 0, i32 1
  store ptr %18, ptr %19, align 8, !tbaa !37
  %20 = load i8, ptr %1, align 1, !tbaa !27
  store i8 %20, ptr %18, align 1, !tbaa !27
  ret void
}

; Function Attrs: mustprogress optsize uwtable
define internal noundef float @_ZN10BinaryNode9nodeValueEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(40) %0) unnamed_addr #5 align 2 {
  %2 = getelementptr inbounds %class.BinaryNode, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !37
  %4 = load i8, ptr %3, align 1, !tbaa !27
  %5 = icmp eq i8 %4, 43
  %6 = getelementptr inbounds %class.BinaryNode, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  %8 = load ptr, ptr %7, align 8, !tbaa !28
  %9 = load ptr, ptr %8, align 8, !tbaa !20
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef float %10(ptr noundef nonnull align 8 dereferenceable(12) %8) #11
  %12 = getelementptr inbounds %class.BinaryNode, ptr %0, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !36
  %14 = load ptr, ptr %13, align 8, !tbaa !28
  %15 = load ptr, ptr %14, align 8, !tbaa !20
  %16 = load ptr, ptr %15, align 8
  %17 = tail call noundef float %16(ptr noundef nonnull align 8 dereferenceable(12) %14) #11
  %18 = fadd float %11, %17
  %19 = select i1 %5, float %18, float 0x416312CFE0000000
  ret float %19
}

; Function Attrs: nounwind optsize uwtable
define internal void @_ZN10BinaryNodeD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #4 comdat align 2 {
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTV10BinaryNode, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !20
  %2 = getelementptr inbounds %class.BinaryNode, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !37
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @_ZdlPv(ptr noundef nonnull %3) #10
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr inbounds %class.BinaryNode, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !34
  %9 = icmp eq ptr %8, null
  br i1 %9, label %21, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !28
  %12 = getelementptr inbounds %class.Node, ptr %11, i64 0, i32 1
  %13 = load i32, ptr %12, align 8, !tbaa !15
  %14 = add nsw i32 %13, -1
  store i32 %14, ptr %12, align 8, !tbaa !15
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %10
  %17 = load ptr, ptr %11, align 8, !tbaa !20
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  tail call void %19(ptr noundef nonnull align 8 dereferenceable(12) %11) #12
  br label %20

20:                                               ; preds = %16, %10
  tail call void @_ZdlPv(ptr noundef nonnull %8) #10
  br label %21

21:                                               ; preds = %20, %6
  %22 = getelementptr inbounds %class.BinaryNode, ptr %0, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !36
  %24 = icmp eq ptr %23, null
  br i1 %24, label %36, label %25

25:                                               ; preds = %21
  %26 = load ptr, ptr %23, align 8, !tbaa !28
  %27 = getelementptr inbounds %class.Node, ptr %26, i64 0, i32 1
  %28 = load i32, ptr %27, align 8, !tbaa !15
  %29 = add nsw i32 %28, -1
  store i32 %29, ptr %27, align 8, !tbaa !15
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %25
  %32 = load ptr, ptr %26, align 8, !tbaa !20
  %33 = getelementptr inbounds ptr, ptr %32, i64 2
  %34 = load ptr, ptr %33, align 8
  tail call void %34(ptr noundef nonnull align 8 dereferenceable(12) %26) #12
  br label %35

35:                                               ; preds = %31, %25
  tail call void @_ZdlPv(ptr noundef nonnull %23) #10
  br label %36

36:                                               ; preds = %35, %21
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @_ZN10BinaryNodeD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #4 comdat align 2 {
  tail call void @_ZN10BinaryNodeD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #12
  tail call void @_ZdlPv(ptr noundef nonnull %0) #10
  ret void
}

; Function Attrs: norecurse optsize uwtable
define dso_local noundef i32 @main() #7 personality ptr @__gxx_personality_v0 {
  %1 = alloca %class.Tree, align 8
  %2 = alloca %class.Tree, align 8
  %3 = alloca %class.Tree, align 8
  %4 = alloca %class.Tree, align 8
  %5 = alloca %class.Tree, align 8
  %6 = alloca %class.Tree, align 8
  %7 = alloca %class.Tree, align 8
  %8 = alloca %class.Tree, align 8
  %9 = alloca %class.Tree, align 8
  %10 = alloca %class.Tree, align 8
  %11 = alloca %class.Tree, align 8
  %12 = alloca %class.Tree, align 8
  %13 = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #9
  %14 = getelementptr inbounds %class.Node, ptr %13, i64 0, i32 1
  store i32 1, ptr %14, align 8, !tbaa !15
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTV8RealNode, i64 0, inrange i32 0, i64 2), ptr %13, align 8, !tbaa !20
  %15 = getelementptr inbounds %class.RealNode, ptr %13, i64 0, i32 2
  store ptr null, ptr %15, align 8, !tbaa !22
  %16 = getelementptr inbounds %class.RealNode, ptr %13, i64 0, i32 1
  store float 1.000000e+00, ptr %16, align 4, !tbaa !26
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #13
  invoke void @_ZN4TreeC2EPc(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str) #11
          to label %17 unwind label %177

17:                                               ; preds = %0
  %18 = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #9
          to label %19 unwind label %179

19:                                               ; preds = %17
  %20 = getelementptr inbounds %class.Node, ptr %18, i64 0, i32 1
  store i32 1, ptr %20, align 8, !tbaa !15
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTV8RealNode, i64 0, inrange i32 0, i64 2), ptr %18, align 8, !tbaa !20
  %21 = getelementptr inbounds %class.RealNode, ptr %18, i64 0, i32 2
  store ptr null, ptr %21, align 8, !tbaa !22
  %22 = getelementptr inbounds %class.RealNode, ptr %18, i64 0, i32 1
  store float 5.000000e+00, ptr %22, align 4, !tbaa !26
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #13
  store ptr %13, ptr %3, align 8, !tbaa !28
  store i32 2, ptr %14, align 8, !tbaa !15
  %23 = load ptr, ptr %1, align 8, !tbaa !28
  store ptr %23, ptr %4, align 8, !tbaa !28
  %24 = getelementptr inbounds %class.Node, ptr %23, i64 0, i32 1
  %25 = load i32, ptr %24, align 8, !tbaa !15
  %26 = add nsw i32 %25, 1
  store i32 %26, ptr %24, align 8, !tbaa !15
  invoke void @_ZN4TreeC2ES_PcS_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %3, ptr noundef nonnull @.str.1, ptr noundef nonnull %4) #11
          to label %27 unwind label %182

27:                                               ; preds = %19
  %28 = load i32, ptr %24, align 8, !tbaa !15
  %29 = add nsw i32 %28, -1
  store i32 %29, ptr %24, align 8, !tbaa !15
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = load ptr, ptr %23, align 8, !tbaa !20
  %33 = getelementptr inbounds ptr, ptr %32, i64 2
  %34 = load ptr, ptr %33, align 8
  tail call void %34(ptr noundef nonnull align 8 dereferenceable(12) %23) #12
  br label %35

35:                                               ; preds = %31, %27
  %36 = load i32, ptr %14, align 8, !tbaa !15
  %37 = add nsw i32 %36, -1
  store i32 %37, ptr %14, align 8, !tbaa !15
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %35
  %40 = load ptr, ptr %13, align 8, !tbaa !20
  %41 = getelementptr inbounds ptr, ptr %40, i64 2
  %42 = load ptr, ptr %41, align 8
  tail call void %42(ptr noundef nonnull align 8 dereferenceable(12) %13) #12
  br label %43

43:                                               ; preds = %39, %35
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #13
  store ptr %18, ptr %6, align 8, !tbaa !28
  %44 = load i32, ptr %20, align 8, !tbaa !15
  %45 = add nsw i32 %44, 1
  store i32 %45, ptr %20, align 8, !tbaa !15
  invoke void @_ZN4TreeC2EPcS_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull @.str.2, ptr noundef nonnull %6) #11
          to label %46 unwind label %195

46:                                               ; preds = %43
  %47 = load i32, ptr %20, align 8, !tbaa !15
  %48 = add nsw i32 %47, -1
  store i32 %48, ptr %20, align 8, !tbaa !15
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %46
  %51 = load ptr, ptr %18, align 8, !tbaa !20
  %52 = getelementptr inbounds ptr, ptr %51, i64 2
  %53 = load ptr, ptr %52, align 8
  tail call void %53(ptr noundef nonnull align 8 dereferenceable(12) %18) #12
  br label %54

54:                                               ; preds = %50, %46
  store float 1.200000e+01, ptr @values0, align 4, !tbaa !30
  store float 0.000000e+00, ptr @values1, align 4, !tbaa !30
  store float 0.000000e+00, ptr @values2, align 4, !tbaa !30
  %55 = load ptr, ptr %2, align 8, !tbaa !28
  %56 = load ptr, ptr %55, align 8, !tbaa !20
  %57 = load ptr, ptr %56, align 8
  %58 = invoke noundef float %57(ptr noundef nonnull align 8 dereferenceable(12) %55) #11
          to label %59 unwind label %200

59:                                               ; preds = %54
  %60 = load ptr, ptr %5, align 8, !tbaa !28
  %61 = load ptr, ptr %60, align 8, !tbaa !20
  %62 = load ptr, ptr %61, align 8
  %63 = invoke noundef float %62(ptr noundef nonnull align 8 dereferenceable(12) %60) #11
          to label %64 unwind label %200

64:                                               ; preds = %59
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #13
  store ptr %13, ptr %8, align 8, !tbaa !28
  %65 = load i32, ptr %14, align 8, !tbaa !15
  %66 = add nsw i32 %65, 1
  store i32 %66, ptr %14, align 8, !tbaa !15
  store ptr %18, ptr %9, align 8, !tbaa !28
  %67 = load i32, ptr %20, align 8, !tbaa !15
  %68 = add nsw i32 %67, 1
  store i32 %68, ptr %20, align 8, !tbaa !15
  invoke void @_ZN4TreeC2ES_PcS_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull %8, ptr noundef nonnull @.str.3, ptr noundef nonnull %9) #11
          to label %69 unwind label %203

69:                                               ; preds = %64
  %70 = load i32, ptr %20, align 8, !tbaa !15
  %71 = add nsw i32 %70, -1
  store i32 %71, ptr %20, align 8, !tbaa !15
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %69
  %74 = load ptr, ptr %18, align 8, !tbaa !20
  %75 = getelementptr inbounds ptr, ptr %74, i64 2
  %76 = load ptr, ptr %75, align 8
  tail call void %76(ptr noundef nonnull align 8 dereferenceable(12) %18) #12
  br label %77

77:                                               ; preds = %73, %69
  %78 = load i32, ptr %14, align 8, !tbaa !15
  %79 = add nsw i32 %78, -1
  store i32 %79, ptr %14, align 8, !tbaa !15
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %77
  %82 = load ptr, ptr %13, align 8, !tbaa !20
  %83 = getelementptr inbounds ptr, ptr %82, i64 2
  %84 = load ptr, ptr %83, align 8
  tail call void %84(ptr noundef nonnull align 8 dereferenceable(12) %13) #12
  br label %85

85:                                               ; preds = %81, %77
  store float 0x40283D70A0000000, ptr @values0, align 4, !tbaa !30
  store float 0.000000e+00, ptr @values1, align 4, !tbaa !30
  store float 0.000000e+00, ptr @values2, align 4, !tbaa !30
  %86 = load ptr, ptr %7, align 8, !tbaa !28
  %87 = load ptr, ptr %86, align 8, !tbaa !20
  %88 = load ptr, ptr %87, align 8
  %89 = invoke noundef float %88(ptr noundef nonnull align 8 dereferenceable(12) %86) #11
          to label %90 unwind label %216

90:                                               ; preds = %85
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #13
  store ptr %13, ptr %11, align 8, !tbaa !28
  %91 = load i32, ptr %14, align 8, !tbaa !15
  %92 = add nsw i32 %91, 1
  store i32 %92, ptr %14, align 8, !tbaa !15
  store ptr %60, ptr %12, align 8, !tbaa !28
  %93 = getelementptr inbounds %class.Node, ptr %60, i64 0, i32 1
  %94 = load i32, ptr %93, align 8, !tbaa !15
  %95 = add nsw i32 %94, 1
  store i32 %95, ptr %93, align 8, !tbaa !15
  invoke void @_ZN4TreeC2ES_PcS_(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull %11, ptr noundef nonnull @.str.4, ptr noundef nonnull %12) #11
          to label %96 unwind label %218

96:                                               ; preds = %90
  %97 = load i32, ptr %93, align 8, !tbaa !15
  %98 = add nsw i32 %97, -1
  store i32 %98, ptr %93, align 8, !tbaa !15
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %96
  %101 = load ptr, ptr %60, align 8, !tbaa !20
  %102 = getelementptr inbounds ptr, ptr %101, i64 2
  %103 = load ptr, ptr %102, align 8
  tail call void %103(ptr noundef nonnull align 8 dereferenceable(12) %60) #12
  br label %104

104:                                              ; preds = %100, %96
  %105 = load i32, ptr %14, align 8, !tbaa !15
  %106 = add nsw i32 %105, -1
  store i32 %106, ptr %14, align 8, !tbaa !15
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %104
  %109 = load ptr, ptr %13, align 8, !tbaa !20
  %110 = getelementptr inbounds ptr, ptr %109, i64 2
  %111 = load ptr, ptr %110, align 8
  tail call void %111(ptr noundef nonnull align 8 dereferenceable(12) %13) #12
  br label %112

112:                                              ; preds = %108, %104
  %113 = load ptr, ptr %10, align 8, !tbaa !28
  %114 = load ptr, ptr %113, align 8, !tbaa !20
  %115 = load ptr, ptr %114, align 8
  %116 = invoke noundef float %115(ptr noundef nonnull align 8 dereferenceable(12) %113) #11
          to label %117 unwind label %231

117:                                              ; preds = %112
  %118 = getelementptr inbounds %class.Node, ptr %113, i64 0, i32 1
  %119 = load i32, ptr %118, align 8, !tbaa !15
  %120 = add nsw i32 %119, -1
  store i32 %120, ptr %118, align 8, !tbaa !15
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %117
  %123 = load ptr, ptr %113, align 8, !tbaa !20
  %124 = getelementptr inbounds ptr, ptr %123, i64 2
  %125 = load ptr, ptr %124, align 8
  tail call void %125(ptr noundef nonnull align 8 dereferenceable(12) %113) #12
  br label %126

126:                                              ; preds = %122, %117
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #13
  %127 = getelementptr inbounds %class.Node, ptr %86, i64 0, i32 1
  %128 = load i32, ptr %127, align 8, !tbaa !15
  %129 = add nsw i32 %128, -1
  store i32 %129, ptr %127, align 8, !tbaa !15
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %135

131:                                              ; preds = %126
  %132 = load ptr, ptr %86, align 8, !tbaa !20
  %133 = getelementptr inbounds ptr, ptr %132, i64 2
  %134 = load ptr, ptr %133, align 8
  tail call void %134(ptr noundef nonnull align 8 dereferenceable(12) %86) #12
  br label %135

135:                                              ; preds = %131, %126
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #13
  %136 = load i32, ptr %93, align 8, !tbaa !15
  %137 = add nsw i32 %136, -1
  store i32 %137, ptr %93, align 8, !tbaa !15
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %143

139:                                              ; preds = %135
  %140 = load ptr, ptr %60, align 8, !tbaa !20
  %141 = getelementptr inbounds ptr, ptr %140, i64 2
  %142 = load ptr, ptr %141, align 8
  tail call void %142(ptr noundef nonnull align 8 dereferenceable(12) %60) #12
  br label %143

143:                                              ; preds = %139, %135
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #13
  %144 = getelementptr inbounds %class.Node, ptr %55, i64 0, i32 1
  %145 = load i32, ptr %144, align 8, !tbaa !15
  %146 = add nsw i32 %145, -1
  store i32 %146, ptr %144, align 8, !tbaa !15
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %152

148:                                              ; preds = %143
  %149 = load ptr, ptr %55, align 8, !tbaa !20
  %150 = getelementptr inbounds ptr, ptr %149, i64 2
  %151 = load ptr, ptr %150, align 8
  tail call void %151(ptr noundef nonnull align 8 dereferenceable(12) %55) #12
  br label %152

152:                                              ; preds = %148, %143
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #13
  %153 = load i32, ptr %20, align 8, !tbaa !15
  %154 = add nsw i32 %153, -1
  store i32 %154, ptr %20, align 8, !tbaa !15
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %160

156:                                              ; preds = %152
  %157 = load ptr, ptr %18, align 8, !tbaa !20
  %158 = getelementptr inbounds ptr, ptr %157, i64 2
  %159 = load ptr, ptr %158, align 8
  tail call void %159(ptr noundef nonnull align 8 dereferenceable(12) %18) #12
  br label %160

160:                                              ; preds = %156, %152
  %161 = load i32, ptr %24, align 8, !tbaa !15
  %162 = add nsw i32 %161, -1
  store i32 %162, ptr %24, align 8, !tbaa !15
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %164, label %168

164:                                              ; preds = %160
  %165 = load ptr, ptr %23, align 8, !tbaa !20
  %166 = getelementptr inbounds ptr, ptr %165, i64 2
  %167 = load ptr, ptr %166, align 8
  tail call void %167(ptr noundef nonnull align 8 dereferenceable(12) %23) #12
  br label %168

168:                                              ; preds = %164, %160
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #13
  %169 = load i32, ptr %14, align 8, !tbaa !15
  %170 = add nsw i32 %169, -1
  store i32 %170, ptr %14, align 8, !tbaa !15
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %172, label %176

172:                                              ; preds = %168
  %173 = load ptr, ptr %13, align 8, !tbaa !20
  %174 = getelementptr inbounds ptr, ptr %173, i64 2
  %175 = load ptr, ptr %174, align 8
  tail call void %175(ptr noundef nonnull align 8 dereferenceable(12) %13) #12
  br label %176

176:                                              ; preds = %172, %168
  ret i32 0

177:                                              ; preds = %0
  %178 = landingpad { ptr, i32 }
          cleanup
  br label %305

179:                                              ; preds = %17
  %180 = landingpad { ptr, i32 }
          cleanup
  %181 = load ptr, ptr %1, align 8, !tbaa !28
  br label %294

182:                                              ; preds = %19
  %183 = landingpad { ptr, i32 }
          cleanup
  %184 = load i32, ptr %24, align 8, !tbaa !15
  %185 = add nsw i32 %184, -1
  store i32 %185, ptr %24, align 8, !tbaa !15
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %187, label %191

187:                                              ; preds = %182
  %188 = load ptr, ptr %23, align 8, !tbaa !20
  %189 = getelementptr inbounds ptr, ptr %188, i64 2
  %190 = load ptr, ptr %189, align 8
  tail call void %190(ptr noundef nonnull align 8 dereferenceable(12) %23) #12
  br label %191

191:                                              ; preds = %187, %182
  %192 = load i32, ptr %14, align 8, !tbaa !15
  %193 = add nsw i32 %192, -1
  store i32 %193, ptr %14, align 8, !tbaa !15
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %279, label %285

195:                                              ; preds = %43
  %196 = landingpad { ptr, i32 }
          cleanup
  %197 = load i32, ptr %20, align 8, !tbaa !15
  %198 = add nsw i32 %197, -1
  store i32 %198, ptr %20, align 8, !tbaa !15
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %266, label %272

200:                                              ; preds = %59, %54
  %201 = landingpad { ptr, i32 }
          cleanup
  %202 = load ptr, ptr %5, align 8, !tbaa !28
  br label %259

203:                                              ; preds = %64
  %204 = landingpad { ptr, i32 }
          cleanup
  %205 = load i32, ptr %20, align 8, !tbaa !15
  %206 = add nsw i32 %205, -1
  store i32 %206, ptr %20, align 8, !tbaa !15
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %208, label %212

208:                                              ; preds = %203
  %209 = load ptr, ptr %18, align 8, !tbaa !20
  %210 = getelementptr inbounds ptr, ptr %209, i64 2
  %211 = load ptr, ptr %210, align 8
  tail call void %211(ptr noundef nonnull align 8 dereferenceable(12) %18) #12
  br label %212

212:                                              ; preds = %208, %203
  %213 = load i32, ptr %14, align 8, !tbaa !15
  %214 = add nsw i32 %213, -1
  store i32 %214, ptr %14, align 8, !tbaa !15
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %251, label %257

216:                                              ; preds = %85
  %217 = landingpad { ptr, i32 }
          cleanup
  br label %245

218:                                              ; preds = %90
  %219 = landingpad { ptr, i32 }
          cleanup
  %220 = load i32, ptr %93, align 8, !tbaa !15
  %221 = add nsw i32 %220, -1
  store i32 %221, ptr %93, align 8, !tbaa !15
  %222 = icmp eq i32 %221, 0
  br i1 %222, label %223, label %227

223:                                              ; preds = %218
  %224 = load ptr, ptr %60, align 8, !tbaa !20
  %225 = getelementptr inbounds ptr, ptr %224, i64 2
  %226 = load ptr, ptr %225, align 8
  tail call void %226(ptr noundef nonnull align 8 dereferenceable(12) %60) #12
  br label %227

227:                                              ; preds = %223, %218
  %228 = load i32, ptr %14, align 8, !tbaa !15
  %229 = add nsw i32 %228, -1
  store i32 %229, ptr %14, align 8, !tbaa !15
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %237, label %243

231:                                              ; preds = %112
  %232 = landingpad { ptr, i32 }
          cleanup
  %233 = getelementptr inbounds %class.Node, ptr %113, i64 0, i32 1
  %234 = load i32, ptr %233, align 8, !tbaa !15
  %235 = add nsw i32 %234, -1
  store i32 %235, ptr %233, align 8, !tbaa !15
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %237, label %243

237:                                              ; preds = %231, %227
  %238 = phi ptr [ %13, %227 ], [ %113, %231 ]
  %239 = phi { ptr, i32 } [ %219, %227 ], [ %232, %231 ]
  %240 = load ptr, ptr %238, align 8, !tbaa !20
  %241 = getelementptr inbounds ptr, ptr %240, i64 2
  %242 = load ptr, ptr %241, align 8
  tail call void %242(ptr noundef nonnull align 8 dereferenceable(12) %238) #12
  br label %243

243:                                              ; preds = %237, %231, %227
  %244 = phi { ptr, i32 } [ %219, %227 ], [ %232, %231 ], [ %239, %237 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #13
  br label %245

245:                                              ; preds = %243, %216
  %246 = phi { ptr, i32 } [ %244, %243 ], [ %217, %216 ]
  %247 = getelementptr inbounds %class.Node, ptr %86, i64 0, i32 1
  %248 = load i32, ptr %247, align 8, !tbaa !15
  %249 = add nsw i32 %248, -1
  store i32 %249, ptr %247, align 8, !tbaa !15
  %250 = icmp eq i32 %249, 0
  br i1 %250, label %251, label %257

251:                                              ; preds = %245, %212
  %252 = phi ptr [ %13, %212 ], [ %86, %245 ]
  %253 = phi { ptr, i32 } [ %204, %212 ], [ %246, %245 ]
  %254 = load ptr, ptr %252, align 8, !tbaa !20
  %255 = getelementptr inbounds ptr, ptr %254, i64 2
  %256 = load ptr, ptr %255, align 8
  tail call void %256(ptr noundef nonnull align 8 dereferenceable(12) %252) #12
  br label %257

257:                                              ; preds = %251, %245, %212
  %258 = phi { ptr, i32 } [ %204, %212 ], [ %246, %245 ], [ %253, %251 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #13
  br label %259

259:                                              ; preds = %257, %200
  %260 = phi ptr [ %60, %257 ], [ %202, %200 ]
  %261 = phi { ptr, i32 } [ %258, %257 ], [ %201, %200 ]
  %262 = getelementptr inbounds %class.Node, ptr %260, i64 0, i32 1
  %263 = load i32, ptr %262, align 8, !tbaa !15
  %264 = add nsw i32 %263, -1
  store i32 %264, ptr %262, align 8, !tbaa !15
  %265 = icmp eq i32 %264, 0
  br i1 %265, label %266, label %272

266:                                              ; preds = %259, %195
  %267 = phi ptr [ %18, %195 ], [ %260, %259 ]
  %268 = phi { ptr, i32 } [ %196, %195 ], [ %261, %259 ]
  %269 = load ptr, ptr %267, align 8, !tbaa !20
  %270 = getelementptr inbounds ptr, ptr %269, i64 2
  %271 = load ptr, ptr %270, align 8
  tail call void %271(ptr noundef nonnull align 8 dereferenceable(12) %267) #12
  br label %272

272:                                              ; preds = %266, %259, %195
  %273 = phi { ptr, i32 } [ %196, %195 ], [ %261, %259 ], [ %268, %266 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #13
  %274 = load ptr, ptr %2, align 8, !tbaa !28
  %275 = getelementptr inbounds %class.Node, ptr %274, i64 0, i32 1
  %276 = load i32, ptr %275, align 8, !tbaa !15
  %277 = add nsw i32 %276, -1
  store i32 %277, ptr %275, align 8, !tbaa !15
  %278 = icmp eq i32 %277, 0
  br i1 %278, label %279, label %285

279:                                              ; preds = %272, %191
  %280 = phi ptr [ %13, %191 ], [ %274, %272 ]
  %281 = phi { ptr, i32 } [ %183, %191 ], [ %273, %272 ]
  %282 = load ptr, ptr %280, align 8, !tbaa !20
  %283 = getelementptr inbounds ptr, ptr %282, i64 2
  %284 = load ptr, ptr %283, align 8
  tail call void %284(ptr noundef nonnull align 8 dereferenceable(12) %280) #12
  br label %285

285:                                              ; preds = %279, %272, %191
  %286 = phi { ptr, i32 } [ %183, %191 ], [ %273, %272 ], [ %281, %279 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #13
  %287 = load i32, ptr %20, align 8, !tbaa !15
  %288 = add nsw i32 %287, -1
  store i32 %288, ptr %20, align 8, !tbaa !15
  %289 = icmp eq i32 %288, 0
  br i1 %289, label %290, label %294

290:                                              ; preds = %285
  %291 = load ptr, ptr %18, align 8, !tbaa !20
  %292 = getelementptr inbounds ptr, ptr %291, i64 2
  %293 = load ptr, ptr %292, align 8
  tail call void %293(ptr noundef nonnull align 8 dereferenceable(12) %18) #12
  br label %294

294:                                              ; preds = %290, %285, %179
  %295 = phi ptr [ %181, %179 ], [ %23, %285 ], [ %23, %290 ]
  %296 = phi { ptr, i32 } [ %180, %179 ], [ %286, %285 ], [ %286, %290 ]
  %297 = getelementptr inbounds %class.Node, ptr %295, i64 0, i32 1
  %298 = load i32, ptr %297, align 8, !tbaa !15
  %299 = add nsw i32 %298, -1
  store i32 %299, ptr %297, align 8, !tbaa !15
  %300 = icmp eq i32 %299, 0
  br i1 %300, label %301, label %305

301:                                              ; preds = %294
  %302 = load ptr, ptr %295, align 8, !tbaa !20
  %303 = getelementptr inbounds ptr, ptr %302, i64 2
  %304 = load ptr, ptr %303, align 8
  tail call void %304(ptr noundef nonnull align 8 dereferenceable(12) %295) #12
  br label %305

305:                                              ; preds = %301, %294, %177
  %306 = phi { ptr, i32 } [ %178, %177 ], [ %296, %294 ], [ %296, %301 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #13
  %307 = load i32, ptr %14, align 8, !tbaa !15
  %308 = add nsw i32 %307, -1
  store i32 %308, ptr %14, align 8, !tbaa !15
  %309 = icmp eq i32 %308, 0
  br i1 %309, label %310, label %314

310:                                              ; preds = %305
  %311 = load ptr, ptr %13, align 8, !tbaa !20
  %312 = getelementptr inbounds ptr, ptr %311, i64 2
  %313 = load ptr, ptr %312, align 8
  tail call void %313(ptr noundef nonnull align 8 dereferenceable(12) %13) #12
  br label %314

314:                                              ; preds = %310, %305
  resume { ptr, i32 } %306
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

attributes #0 = { optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nobuiltin optsize allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #7 = { norecurse optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { builtin optsize allocsize(0) }
attributes #10 = { builtin nounwind optsize }
attributes #11 = { optsize }
attributes #12 = { nounwind optsize }
attributes #13 = { nounwind }

!llvm.ident = !{!8}
!llvm.module.flags = !{!9, !10, !11, !12, !13, !14}

!0 = !{i64 16, !"_ZTS10BinaryNode"}
!1 = !{i64 16, !"_ZTSM10BinaryNodeFfvE.virtual"}
!2 = !{i64 16, !"_ZTS4Node"}
!3 = !{i64 16, !"_ZTSM4NodeFfvE.virtual"}
!4 = !{i64 16, !"_ZTS9UnaryNode"}
!5 = !{i64 16, !"_ZTSM9UnaryNodeFfvE.virtual"}
!6 = !{i64 16, !"_ZTS8RealNode"}
!7 = !{i64 16, !"_ZTSM8RealNodeFfvE.virtual"}
!8 = !{!"clang version 17.0.6 (https://github.com/Casperento/llvm-project.git 9b0073551ece0d22bf3378af2b03e456a26031b6)"}
!9 = !{i32 1, !"wchar_size", i32 4}
!10 = !{i32 8, !"PIC Level", i32 2}
!11 = !{i32 7, !"PIE Level", i32 2}
!12 = !{i32 7, !"uwtable", i32 2}
!13 = !{i32 1, !"ThinLTO", i32 0}
!14 = !{i32 1, !"EnableSplitLTOUnit", i32 1}
!15 = !{!16, !17, i64 8}
!16 = !{!"_ZTS4Node", !17, i64 8}
!17 = !{!"int", !18, i64 0}
!18 = !{!"omnipotent char", !19, i64 0}
!19 = !{!"Simple C++ TBAA"}
!20 = !{!21, !21, i64 0}
!21 = !{!"vtable pointer", !19, i64 0}
!22 = !{!23, !25, i64 16}
!23 = !{!"_ZTS8RealNode", !16, i64 0, !24, i64 12, !25, i64 16}
!24 = !{!"float", !18, i64 0}
!25 = !{!"any pointer", !18, i64 0}
!26 = !{!23, !24, i64 12}
!27 = !{!18, !18, i64 0}
!28 = !{!29, !25, i64 0}
!29 = !{!"_ZTS4Tree", !25, i64 0}
!30 = !{!24, !24, i64 0}
!31 = !{!32, !25, i64 24}
!32 = !{!"_ZTS9UnaryNode", !16, i64 0, !25, i64 16, !25, i64 24}
!33 = !{!32, !25, i64 16}
!34 = !{!35, !25, i64 24}
!35 = !{!"_ZTS10BinaryNode", !16, i64 0, !25, i64 16, !25, i64 24, !25, i64 32}
!36 = !{!35, !25, i64 32}
!37 = !{!35, !25, i64 16}
