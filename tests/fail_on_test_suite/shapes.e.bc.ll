; ModuleID = '/src/llvm-test-suite/build/MultiSource/Benchmarks/Prolangs-C++/shapes/shapes.e.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%struct.shape = type { ptr, ptr }
%struct.point = type { i32, i32 }
%class.rectangle = type { %struct.shape, ptr, ptr }
%class.myshape = type { %class.rectangle, ptr, ptr, ptr }

$_ZNK9rectangle5northEv = comdat any

$_ZNK9rectangle5southEv = comdat any

$_ZNK9rectangle4eastEv = comdat any

$_ZNK9rectangle4westEv = comdat any

$_ZNK9rectangle5neastEv = comdat any

$_ZNK9rectangle5seastEv = comdat any

$_ZNK9rectangle5nwestEv = comdat any

$_ZNK9rectangle5swestEv = comdat any

$_ZN9rectangle4moveEii = comdat any

$_ZN7myshapeC2EP5pointS1_ = comdat any

$_ZNK4line5northEv = comdat any

$_ZNK4line5southEv = comdat any

$_ZNK4line4eastEv = comdat any

$_ZNK4line4westEv = comdat any

$_ZNK4line5neastEv = comdat any

$_ZNK4line5seastEv = comdat any

$_ZNK4line5nwestEv = comdat any

$_ZNK4line5swestEv = comdat any

$_ZN4line4drawEv = comdat any

$_ZN4line4moveEii = comdat any

$_ZTS5shape = comdat any

$_ZTI5shape = comdat any

$_ZTV4line = comdat any

$_ZTS4line = comdat any

$_ZTI4line = comdat any

@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_bjarne.cpp, ptr null }]
@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@screen = internal global [40 x [24 x i8]] zeroinitializer, align 16
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@_ZTV9rectangle = internal unnamed_addr constant { [12 x ptr] } { [12 x ptr] [ptr null, ptr @_ZTI9rectangle, ptr @_ZNK9rectangle5northEv, ptr @_ZNK9rectangle5southEv, ptr @_ZNK9rectangle4eastEv, ptr @_ZNK9rectangle4westEv, ptr @_ZNK9rectangle5neastEv, ptr @_ZNK9rectangle5seastEv, ptr @_ZNK9rectangle5nwestEv, ptr @_ZNK9rectangle5swestEv, ptr @_ZN9rectangle4drawEv, ptr @_ZN9rectangle4moveEii] }, align 8, !type !0, !type !1, !type !2, !type !3, !type !4, !type !5, !type !6, !type !7, !type !8, !type !9, !type !10, !type !11, !type !12, !type !13, !type !14, !type !15, !type !16, !type !17, !type !18, !type !19, !type !20, !type !21
@_ZN5shape4listE = internal global ptr null, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global ptr
@_ZTS9rectangle = internal constant [11 x i8] c"9rectangle\00", align 1
@_ZTVN10__cxxabiv117__class_type_infoE = external global ptr
@_ZTS5shape = internal constant [7 x i8] c"5shape\00", comdat, align 1
@_ZTI5shape = internal constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTS5shape }, comdat, align 8
@_ZTI9rectangle = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS9rectangle, ptr @_ZTI5shape }, align 8
@_ZTV7myshape = internal unnamed_addr constant { [12 x ptr] } { [12 x ptr] [ptr null, ptr @_ZTI7myshape, ptr @_ZNK9rectangle5northEv, ptr @_ZNK9rectangle5southEv, ptr @_ZNK9rectangle4eastEv, ptr @_ZNK9rectangle4westEv, ptr @_ZNK9rectangle5neastEv, ptr @_ZNK9rectangle5seastEv, ptr @_ZNK9rectangle5nwestEv, ptr @_ZNK9rectangle5swestEv, ptr @_ZN7myshape4drawEv, ptr @_ZN7myshape4moveEii] }, align 8, !type !0, !type !1, !type !2, !type !3, !type !4, !type !5, !type !6, !type !7, !type !8, !type !9, !type !10, !type !22, !type !23, !type !24, !type !25, !type !26, !type !27, !type !28, !type !29, !type !30, !type !31, !type !32, !type !11, !type !12, !type !13, !type !14, !type !15, !type !16, !type !17, !type !18, !type !19, !type !20, !type !21
@_ZTS7myshape = internal constant [9 x i8] c"7myshape\00", align 1
@_ZTI7myshape = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS7myshape, ptr @_ZTI9rectangle }, align 8
@_ZTV4line = internal unnamed_addr constant { [12 x ptr] } { [12 x ptr] [ptr null, ptr @_ZTI4line, ptr @_ZNK4line5northEv, ptr @_ZNK4line5southEv, ptr @_ZNK4line4eastEv, ptr @_ZNK4line4westEv, ptr @_ZNK4line5neastEv, ptr @_ZNK4line5seastEv, ptr @_ZNK4line5nwestEv, ptr @_ZNK4line5swestEv, ptr @_ZN4line4drawEv, ptr @_ZN4line4moveEii] }, comdat, align 8, !type !33, !type !34, !type !35, !type !36, !type !37, !type !38, !type !39, !type !40, !type !41, !type !42, !type !43, !type !0, !type !1, !type !2, !type !3, !type !4, !type !5, !type !6, !type !7, !type !8, !type !9, !type !10
@_ZTS4line = internal constant [6 x i8] c"4line\00", comdat, align 1
@_ZTI4line = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS4line, ptr @_ZTI5shape }, comdat, align 8

; Function Attrs: optsize uwtable
define internal void @_GLOBAL__sub_I_bjarne.cpp() #0 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit) #13
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt8ios_base4InitD1Ev, ptr nonnull @_ZStL8__ioinit, ptr nonnull @__dso_handle) #14
  ret void
}

; Function Attrs: optsize
declare void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nounwind optsize
declare void @_ZNSt8ios_base4InitD1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #2

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind optsize memory(write, argmem: none, inaccessiblemem: none) uwtable
define internal void @_Z8put_lineiiii(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #4 {
  %5 = sub nsw i32 %2, %0
  %6 = tail call i32 @llvm.abs.i32(i32 %5, i1 true)
  %7 = icmp sgt i32 %5, -1
  %8 = select i1 %7, i32 1, i32 -1
  %9 = sub nsw i32 %3, %1
  %10 = icmp sgt i32 %9, -1
  %11 = select i1 %10, i32 1, i32 -1
  %12 = tail call i32 @llvm.abs.i32(i32 %9, i1 true)
  %13 = shl nuw nsw i32 %6, 1
  %14 = shl nuw nsw i32 %12, 1
  %15 = sub nsw i32 %13, %12
  %16 = icmp ugt i32 %6, %12
  br label %17

17:                                               ; preds = %32, %4
  %18 = phi i32 [ %1, %4 ], [ %41, %32 ]
  %19 = phi i32 [ %0, %4 ], [ %35, %32 ]
  %20 = phi i32 [ 0, %4 ], [ %43, %32 ]
  %21 = icmp ugt i32 %19, 39
  %22 = icmp ugt i32 %18, 23
  %23 = or i1 %22, %21
  br i1 %23, label %28, label %24

24:                                               ; preds = %17
  %25 = zext i32 %19 to i64
  %26 = zext i32 %18 to i64
  %27 = getelementptr inbounds [40 x [24 x i8]], ptr @screen, i64 0, i64 %25, i64 %26
  store i8 42, ptr %27, align 1, !tbaa !51
  br label %28

28:                                               ; preds = %24, %17
  %29 = icmp eq i32 %19, %2
  %30 = icmp eq i32 %18, %3
  %31 = and i1 %30, %29
  br i1 %31, label %44, label %32

32:                                               ; preds = %28
  %33 = icmp sgt i32 %20, %15
  %34 = select i1 %33, i32 0, i32 %8
  %35 = add nsw i32 %34, %19
  %36 = select i1 %33, i32 0, i32 %14
  %37 = add nsw i32 %36, %20
  %38 = icmp slt i32 %37, %6
  %39 = select i1 %38, i1 true, i1 %16
  %40 = select i1 %39, i32 0, i32 %11
  %41 = add nsw i32 %40, %18
  %42 = select i1 %39, i32 0, i32 %13
  %43 = sub nsw i32 %37, %42
  br label %17, !llvm.loop !54

44:                                               ; preds = %28
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

; Function Attrs: mustprogress optsize uwtable
define internal void @_Z14screen_refreshv() #6 {
  %1 = alloca i8, align 1
  %2 = alloca i8, align 1
  br label %3

3:                                                ; preds = %17, %0
  %4 = phi i64 [ 23, %0 ], [ %18, %17 ]
  br label %20

5:                                                ; preds = %17
  ret void

6:                                                ; preds = %34
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2)
  store i8 10, ptr %2, align 1, !tbaa !51
  %7 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !56
  %8 = getelementptr i8, ptr %7, i64 -24
  %9 = load i64, ptr %8, align 8
  %10 = getelementptr i8, ptr getelementptr inbounds (%"class.std::basic_ostream", ptr @_ZSt4cout, i64 0, i32 1, i32 0, i32 1), i64 %9
  %11 = load i64, ptr %10, align 8, !tbaa !58
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %6
  %14 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %2, i64 noundef 1) #13
  br label %17

15:                                               ; preds = %6
  %16 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext 10) #13
  br label %17

17:                                               ; preds = %15, %13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2)
  %18 = add nsw i64 %4, -1
  %19 = icmp eq i64 %4, 0
  br i1 %19, label %5, label %3, !llvm.loop !67

20:                                               ; preds = %34, %3
  %21 = phi i64 [ 0, %3 ], [ %35, %34 ]
  %22 = getelementptr inbounds [40 x [24 x i8]], ptr @screen, i64 0, i64 %21, i64 %4
  %23 = load i8, ptr %22, align 1, !tbaa !51
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %1)
  store i8 %23, ptr %1, align 1, !tbaa !51
  %24 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !56
  %25 = getelementptr i8, ptr %24, i64 -24
  %26 = load i64, ptr %25, align 8
  %27 = getelementptr i8, ptr getelementptr inbounds (%"class.std::basic_ostream", ptr @_ZSt4cout, i64 0, i32 1, i32 0, i32 1), i64 %26
  %28 = load i64, ptr %27, align 8, !tbaa !58
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %20
  %31 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %1, i64 noundef 1) #13
  br label %34

32:                                               ; preds = %20
  %33 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %23) #13
  br label %34

34:                                               ; preds = %32, %30
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %1)
  %35 = add nuw nsw i64 %21, 1
  %36 = icmp eq i64 %35, 40
  br i1 %36, label %6, label %20, !llvm.loop !68
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: optsize uwtable
define internal void @_ZN9rectangleC2EP5pointS1_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
  %4 = load ptr, ptr @_ZN5shape4listE, align 8, !tbaa !69
  %5 = getelementptr inbounds %struct.shape, ptr %0, i64 0, i32 1
  store ptr %4, ptr %5, align 8, !tbaa !70
  store ptr %0, ptr @_ZN5shape4listE, align 8, !tbaa !69
  store ptr getelementptr inbounds ({ [12 x ptr] }, ptr @_ZTV9rectangle, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !56
  %6 = load i32, ptr %1, align 4, !tbaa !72
  %7 = load i32, ptr %2, align 4, !tbaa !72
  %8 = icmp sgt i32 %6, %7
  %9 = getelementptr inbounds %struct.point, ptr %1, i64 0, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !74
  %11 = getelementptr inbounds %struct.point, ptr %2, i64 0, i32 1
  %12 = load i32, ptr %11, align 4, !tbaa !74
  %13 = icmp sgt i32 %10, %12
  br i1 %8, label %23, label %14

14:                                               ; preds = %3
  br i1 %13, label %17, label %15

15:                                               ; preds = %14
  %16 = getelementptr inbounds %class.rectangle, ptr %0, i64 0, i32 1
  store ptr %1, ptr %16, align 8, !tbaa !75
  br label %32

17:                                               ; preds = %14
  %18 = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #15
  store i32 %6, ptr %18, align 4, !tbaa !72
  %19 = getelementptr inbounds %struct.point, ptr %18, i64 0, i32 1
  store i32 %12, ptr %19, align 4, !tbaa !74
  %20 = getelementptr inbounds %class.rectangle, ptr %0, i64 0, i32 1
  store ptr %18, ptr %20, align 8, !tbaa !75
  %21 = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #15
  store i32 %7, ptr %21, align 4, !tbaa !72
  %22 = getelementptr inbounds %struct.point, ptr %21, i64 0, i32 1
  store i32 %10, ptr %22, align 4, !tbaa !74
  br label %32

23:                                               ; preds = %3
  br i1 %13, label %30, label %24

24:                                               ; preds = %23
  %25 = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #15
  store i32 %7, ptr %25, align 4, !tbaa !72
  %26 = getelementptr inbounds %struct.point, ptr %25, i64 0, i32 1
  store i32 %10, ptr %26, align 4, !tbaa !74
  %27 = getelementptr inbounds %class.rectangle, ptr %0, i64 0, i32 1
  store ptr %25, ptr %27, align 8, !tbaa !75
  %28 = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #15
  store i32 %6, ptr %28, align 4, !tbaa !72
  %29 = getelementptr inbounds %struct.point, ptr %28, i64 0, i32 1
  store i32 %12, ptr %29, align 4, !tbaa !74
  br label %32

30:                                               ; preds = %23
  %31 = getelementptr inbounds %class.rectangle, ptr %0, i64 0, i32 1
  store ptr %2, ptr %31, align 8, !tbaa !75
  br label %32

32:                                               ; preds = %30, %24, %17, %15
  %33 = phi ptr [ %28, %24 ], [ %1, %30 ], [ %2, %15 ], [ %21, %17 ]
  %34 = getelementptr inbounds %class.rectangle, ptr %0, i64 0, i32 2
  store ptr %33, ptr %34, align 8, !tbaa !77
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin optsize allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #8

; Function Attrs: optsize uwtable
define internal noundef ptr @_ZNK9rectangle5northEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %2 = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #15
  %3 = getelementptr inbounds %class.rectangle, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !75
  %5 = load i32, ptr %4, align 4, !tbaa !72
  %6 = getelementptr inbounds %class.rectangle, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !77
  %8 = load i32, ptr %7, align 4, !tbaa !72
  %9 = add nsw i32 %8, %5
  %10 = sdiv i32 %9, 2
  %11 = getelementptr inbounds %struct.point, ptr %7, i64 0, i32 1
  %12 = load i32, ptr %11, align 4, !tbaa !74
  store i32 %10, ptr %2, align 4, !tbaa !72
  %13 = getelementptr inbounds %struct.point, ptr %2, i64 0, i32 1
  store i32 %12, ptr %13, align 4, !tbaa !74
  ret ptr %2
}

; Function Attrs: optsize uwtable
define internal noundef ptr @_ZNK9rectangle5southEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %2 = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #15
  %3 = getelementptr inbounds %class.rectangle, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !75
  %5 = load i32, ptr %4, align 4, !tbaa !72
  %6 = getelementptr inbounds %class.rectangle, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !77
  %8 = load i32, ptr %7, align 4, !tbaa !72
  %9 = add nsw i32 %8, %5
  %10 = sdiv i32 %9, 2
  %11 = getelementptr inbounds %struct.point, ptr %4, i64 0, i32 1
  %12 = load i32, ptr %11, align 4, !tbaa !74
  store i32 %10, ptr %2, align 4, !tbaa !72
  %13 = getelementptr inbounds %struct.point, ptr %2, i64 0, i32 1
  store i32 %12, ptr %13, align 4, !tbaa !74
  ret ptr %2
}

; Function Attrs: mustprogress nounwind optsize uwtable
define internal noundef ptr @_ZNK9rectangle4eastEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #9 comdat align 2 {
  unreachable
}

; Function Attrs: mustprogress nounwind optsize uwtable
define internal noundef ptr @_ZNK9rectangle4westEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #9 comdat align 2 {
  unreachable
}

; Function Attrs: mustprogress nounwind optsize uwtable
define internal noundef ptr @_ZNK9rectangle5neastEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #9 comdat align 2 {
  %2 = getelementptr inbounds %class.rectangle, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !77
  ret ptr %3
}

; Function Attrs: mustprogress nounwind optsize uwtable
define internal noundef ptr @_ZNK9rectangle5seastEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #9 comdat align 2 {
  unreachable
}

; Function Attrs: mustprogress nounwind optsize uwtable
define internal noundef ptr @_ZNK9rectangle5nwestEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #9 comdat align 2 {
  unreachable
}

; Function Attrs: mustprogress nounwind optsize uwtable
define internal noundef ptr @_ZNK9rectangle5swestEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #9 comdat align 2 {
  %2 = getelementptr inbounds %class.rectangle, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !75
  ret ptr %3
}

; Function Attrs: nofree nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal void @_ZN9rectangle4drawEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %0) unnamed_addr #10 align 2 {
  %2 = getelementptr inbounds %class.rectangle, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !75
  %4 = load i32, ptr %3, align 4, !tbaa !72
  %5 = getelementptr inbounds %class.rectangle, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !77
  %7 = getelementptr inbounds %struct.point, ptr %6, i64 0, i32 1
  %8 = load i32, ptr %7, align 4, !tbaa !74
  %9 = load i32, ptr %6, align 4, !tbaa !72
  %10 = getelementptr inbounds %struct.point, ptr %3, i64 0, i32 1
  %11 = load i32, ptr %10, align 4, !tbaa !74
  tail call void @_Z8put_lineiiii(i32 noundef %4, i32 noundef %8, i32 noundef %9, i32 noundef %8) #13
  %12 = load ptr, ptr %5, align 8, !tbaa !77
  %13 = load i32, ptr %12, align 4, !tbaa !72
  %14 = getelementptr inbounds %struct.point, ptr %12, i64 0, i32 1
  %15 = load i32, ptr %14, align 4, !tbaa !74
  tail call void @_Z8put_lineiiii(i32 noundef %13, i32 noundef %15, i32 noundef %9, i32 noundef %11) #13
  %16 = load ptr, ptr %2, align 8, !tbaa !75
  %17 = load i32, ptr %16, align 4, !tbaa !72
  %18 = getelementptr inbounds %struct.point, ptr %16, i64 0, i32 1
  %19 = load i32, ptr %18, align 4, !tbaa !74
  tail call void @_Z8put_lineiiii(i32 noundef %9, i32 noundef %11, i32 noundef %17, i32 noundef %19) #13
  %20 = load ptr, ptr %2, align 8, !tbaa !75
  %21 = load i32, ptr %20, align 4, !tbaa !72
  %22 = getelementptr inbounds %struct.point, ptr %20, i64 0, i32 1
  %23 = load i32, ptr %22, align 4, !tbaa !74
  tail call void @_Z8put_lineiiii(i32 noundef %21, i32 noundef %23, i32 noundef %4, i32 noundef %8) #13
  ret void
}

; Function Attrs: mustprogress nounwind optsize uwtable
define internal void @_ZN9rectangle4moveEii(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #9 comdat align 2 {
  %4 = getelementptr inbounds %class.rectangle, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !75
  %6 = load i32, ptr %5, align 4, !tbaa !72
  %7 = add nsw i32 %6, %1
  store i32 %7, ptr %5, align 4, !tbaa !72
  %8 = getelementptr inbounds %struct.point, ptr %5, i64 0, i32 1
  %9 = load i32, ptr %8, align 4, !tbaa !74
  %10 = add nsw i32 %9, %2
  store i32 %10, ptr %8, align 4, !tbaa !74
  %11 = getelementptr inbounds %class.rectangle, ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !77
  %13 = load i32, ptr %12, align 4, !tbaa !72
  %14 = add nsw i32 %13, %1
  store i32 %14, ptr %12, align 4, !tbaa !72
  %15 = getelementptr inbounds %struct.point, ptr %12, i64 0, i32 1
  %16 = load i32, ptr %15, align 4, !tbaa !74
  %17 = add nsw i32 %16, %2
  store i32 %17, ptr %15, align 4, !tbaa !74
  ret void
}

; Function Attrs: mustprogress optsize uwtable
define internal void @_Z13shape_refreshv() #6 {
  br label %1

1:                                                ; preds = %49, %0
  %2 = phi i64 [ 0, %0 ], [ %50, %49 ]
  br label %3

3:                                                ; preds = %45, %1
  %4 = phi i64 [ 0, %1 ], [ %46, %45 ]
  %5 = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %1 ], [ %47, %45 ]
  %6 = icmp ult <8 x i64> %5, <i64 40, i64 40, i64 40, i64 40, i64 40, i64 40, i64 40, i64 40>
  %7 = extractelement <8 x i1> %6, i64 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %3
  %9 = getelementptr inbounds [40 x [24 x i8]], ptr @screen, i64 0, i64 %4, i64 %2
  store i8 32, ptr %9, align 1, !tbaa !51
  br label %10

10:                                               ; preds = %8, %3
  %11 = extractelement <8 x i1> %6, i64 1
  br i1 %11, label %12, label %15

12:                                               ; preds = %10
  %13 = or i64 %4, 1
  %14 = getelementptr inbounds [40 x [24 x i8]], ptr @screen, i64 0, i64 %13, i64 %2
  store i8 32, ptr %14, align 1, !tbaa !51
  br label %15

15:                                               ; preds = %12, %10
  %16 = extractelement <8 x i1> %6, i64 2
  br i1 %16, label %17, label %20

17:                                               ; preds = %15
  %18 = or i64 %4, 2
  %19 = getelementptr inbounds [40 x [24 x i8]], ptr @screen, i64 0, i64 %18, i64 %2
  store i8 32, ptr %19, align 1, !tbaa !51
  br label %20

20:                                               ; preds = %17, %15
  %21 = extractelement <8 x i1> %6, i64 3
  br i1 %21, label %22, label %25

22:                                               ; preds = %20
  %23 = or i64 %4, 3
  %24 = getelementptr inbounds [40 x [24 x i8]], ptr @screen, i64 0, i64 %23, i64 %2
  store i8 32, ptr %24, align 1, !tbaa !51
  br label %25

25:                                               ; preds = %22, %20
  %26 = extractelement <8 x i1> %6, i64 4
  br i1 %26, label %27, label %30

27:                                               ; preds = %25
  %28 = or i64 %4, 4
  %29 = getelementptr inbounds [40 x [24 x i8]], ptr @screen, i64 0, i64 %28, i64 %2
  store i8 32, ptr %29, align 1, !tbaa !51
  br label %30

30:                                               ; preds = %27, %25
  %31 = extractelement <8 x i1> %6, i64 5
  br i1 %31, label %32, label %35

32:                                               ; preds = %30
  %33 = or i64 %4, 5
  %34 = getelementptr inbounds [40 x [24 x i8]], ptr @screen, i64 0, i64 %33, i64 %2
  store i8 32, ptr %34, align 1, !tbaa !51
  br label %35

35:                                               ; preds = %32, %30
  %36 = extractelement <8 x i1> %6, i64 6
  br i1 %36, label %37, label %40

37:                                               ; preds = %35
  %38 = or i64 %4, 6
  %39 = getelementptr inbounds [40 x [24 x i8]], ptr @screen, i64 0, i64 %38, i64 %2
  store i8 32, ptr %39, align 1, !tbaa !51
  br label %40

40:                                               ; preds = %37, %35
  %41 = extractelement <8 x i1> %6, i64 7
  br i1 %41, label %42, label %45

42:                                               ; preds = %40
  %43 = or i64 %4, 7
  %44 = getelementptr inbounds [40 x [24 x i8]], ptr @screen, i64 0, i64 %43, i64 %2
  store i8 32, ptr %44, align 1, !tbaa !51
  br label %45

45:                                               ; preds = %42, %40
  %46 = add i64 %4, 8
  %47 = add <8 x i64> %5, <i64 8, i64 8, i64 8, i64 8, i64 8, i64 8, i64 8, i64 8>
  %48 = icmp eq i64 %46, 40
  br i1 %48, label %49, label %3, !llvm.loop !78

49:                                               ; preds = %45
  %50 = add nuw nsw i64 %2, 1
  %51 = icmp eq i64 %50, 24
  br i1 %51, label %52, label %1, !llvm.loop !81

52:                                               ; preds = %49
  %53 = load ptr, ptr @_ZN5shape4listE, align 8, !tbaa !69
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %56

55:                                               ; preds = %56, %52
  tail call void @_Z14screen_refreshv() #13
  ret void

56:                                               ; preds = %56, %52
  %57 = phi ptr [ %62, %56 ], [ %53, %52 ]
  %58 = load ptr, ptr %57, align 8, !tbaa !56
  %59 = getelementptr inbounds ptr, ptr %58, i64 8
  %60 = load ptr, ptr %59, align 8
  tail call void %60(ptr noundef nonnull align 8 dereferenceable(16) %57) #13
  %61 = getelementptr inbounds %struct.shape, ptr %57, i64 0, i32 1
  %62 = load ptr, ptr %61, align 8, !tbaa !69
  %63 = icmp eq ptr %62, null
  br i1 %63, label %55, label %56, !llvm.loop !82
}

; Function Attrs: optsize uwtable
define internal void @_ZN7myshape4drawEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
  tail call void @_ZN9rectangle4drawEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %2 = load ptr, ptr %0, align 8, !tbaa !56
  %3 = getelementptr inbounds ptr, ptr %2, i64 7
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %6 = load i32, ptr %5, align 4, !tbaa !72
  %7 = load ptr, ptr %0, align 8, !tbaa !56
  %8 = getelementptr inbounds ptr, ptr %7, i64 4
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef ptr %9(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %11 = load i32, ptr %10, align 4, !tbaa !72
  %12 = add nsw i32 %11, %6
  %13 = sdiv i32 %12, 2
  %14 = load ptr, ptr %0, align 8, !tbaa !56
  %15 = getelementptr inbounds ptr, ptr %14, i64 7
  %16 = load ptr, ptr %15, align 8
  %17 = tail call noundef ptr %16(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %18 = getelementptr inbounds %struct.point, ptr %17, i64 0, i32 1
  %19 = load i32, ptr %18, align 4, !tbaa !74
  %20 = load ptr, ptr %0, align 8, !tbaa !56
  %21 = getelementptr inbounds ptr, ptr %20, i64 4
  %22 = load ptr, ptr %21, align 8
  %23 = tail call noundef ptr %22(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %24 = getelementptr inbounds %struct.point, ptr %23, i64 0, i32 1
  %25 = load i32, ptr %24, align 4, !tbaa !74
  %26 = add nsw i32 %25, %19
  %27 = sdiv i32 %26, 2
  %28 = icmp ugt i32 %13, 39
  %29 = icmp ugt i32 %27, 23
  %30 = or i1 %28, %29
  br i1 %30, label %35, label %31

31:                                               ; preds = %1
  %32 = zext i32 %13 to i64
  %33 = zext i32 %27 to i64
  %34 = getelementptr inbounds [40 x [24 x i8]], ptr @screen, i64 0, i64 %32, i64 %33
  store i8 42, ptr %34, align 1, !tbaa !51
  br label %35

35:                                               ; preds = %31, %1
  ret void
}

; Function Attrs: mustprogress optsize uwtable
define internal void @_ZN7myshape4moveEii(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #6 align 2 {
  %4 = getelementptr inbounds %class.rectangle, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !75
  %6 = load i32, ptr %5, align 4, !tbaa !72
  %7 = add nsw i32 %6, %1
  store i32 %7, ptr %5, align 4, !tbaa !72
  %8 = getelementptr inbounds %struct.point, ptr %5, i64 0, i32 1
  %9 = load i32, ptr %8, align 4, !tbaa !74
  %10 = add nsw i32 %9, %2
  store i32 %10, ptr %8, align 4, !tbaa !74
  %11 = getelementptr inbounds %class.rectangle, ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !77
  %13 = load i32, ptr %12, align 4, !tbaa !72
  %14 = add nsw i32 %13, %1
  store i32 %14, ptr %12, align 4, !tbaa !72
  %15 = getelementptr inbounds %struct.point, ptr %12, i64 0, i32 1
  %16 = load i32, ptr %15, align 4, !tbaa !74
  %17 = add nsw i32 %16, %2
  store i32 %17, ptr %15, align 4, !tbaa !74
  %18 = getelementptr inbounds %class.myshape, ptr %0, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !83
  %20 = load ptr, ptr %19, align 8, !tbaa !56
  %21 = getelementptr inbounds ptr, ptr %20, i64 9
  %22 = load ptr, ptr %21, align 8
  tail call void %22(ptr noundef nonnull align 8 dereferenceable(32) %19, i32 noundef %1, i32 noundef %2) #13
  %23 = getelementptr inbounds %class.myshape, ptr %0, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !85
  %25 = load ptr, ptr %24, align 8, !tbaa !56
  %26 = getelementptr inbounds ptr, ptr %25, i64 9
  %27 = load ptr, ptr %26, align 8
  tail call void %27(ptr noundef nonnull align 8 dereferenceable(32) %24, i32 noundef %1, i32 noundef %2) #13
  %28 = getelementptr inbounds %class.myshape, ptr %0, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !86
  %30 = load ptr, ptr %29, align 8, !tbaa !56
  %31 = getelementptr inbounds ptr, ptr %30, i64 9
  %32 = load ptr, ptr %31, align 8
  tail call void %32(ptr noundef nonnull align 8 dereferenceable(32) %29, i32 noundef %1, i32 noundef %2) #13
  ret void
}

; Function Attrs: norecurse optsize uwtable
define dso_local noundef i32 @main() #11 personality ptr @__gxx_personality_v0 {
  br label %1

1:                                                ; preds = %49, %0
  %2 = phi i64 [ 0, %0 ], [ %50, %49 ]
  br label %3

3:                                                ; preds = %45, %1
  %4 = phi i64 [ 0, %1 ], [ %46, %45 ]
  %5 = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %1 ], [ %47, %45 ]
  %6 = icmp ult <8 x i64> %5, <i64 40, i64 40, i64 40, i64 40, i64 40, i64 40, i64 40, i64 40>
  %7 = extractelement <8 x i1> %6, i64 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %3
  %9 = getelementptr inbounds [40 x [24 x i8]], ptr @screen, i64 0, i64 %4, i64 %2
  store i8 32, ptr %9, align 1, !tbaa !51
  br label %10

10:                                               ; preds = %8, %3
  %11 = extractelement <8 x i1> %6, i64 1
  br i1 %11, label %12, label %15

12:                                               ; preds = %10
  %13 = or i64 %4, 1
  %14 = getelementptr inbounds [40 x [24 x i8]], ptr @screen, i64 0, i64 %13, i64 %2
  store i8 32, ptr %14, align 1, !tbaa !51
  br label %15

15:                                               ; preds = %12, %10
  %16 = extractelement <8 x i1> %6, i64 2
  br i1 %16, label %17, label %20

17:                                               ; preds = %15
  %18 = or i64 %4, 2
  %19 = getelementptr inbounds [40 x [24 x i8]], ptr @screen, i64 0, i64 %18, i64 %2
  store i8 32, ptr %19, align 1, !tbaa !51
  br label %20

20:                                               ; preds = %17, %15
  %21 = extractelement <8 x i1> %6, i64 3
  br i1 %21, label %22, label %25

22:                                               ; preds = %20
  %23 = or i64 %4, 3
  %24 = getelementptr inbounds [40 x [24 x i8]], ptr @screen, i64 0, i64 %23, i64 %2
  store i8 32, ptr %24, align 1, !tbaa !51
  br label %25

25:                                               ; preds = %22, %20
  %26 = extractelement <8 x i1> %6, i64 4
  br i1 %26, label %27, label %30

27:                                               ; preds = %25
  %28 = or i64 %4, 4
  %29 = getelementptr inbounds [40 x [24 x i8]], ptr @screen, i64 0, i64 %28, i64 %2
  store i8 32, ptr %29, align 1, !tbaa !51
  br label %30

30:                                               ; preds = %27, %25
  %31 = extractelement <8 x i1> %6, i64 5
  br i1 %31, label %32, label %35

32:                                               ; preds = %30
  %33 = or i64 %4, 5
  %34 = getelementptr inbounds [40 x [24 x i8]], ptr @screen, i64 0, i64 %33, i64 %2
  store i8 32, ptr %34, align 1, !tbaa !51
  br label %35

35:                                               ; preds = %32, %30
  %36 = extractelement <8 x i1> %6, i64 6
  br i1 %36, label %37, label %40

37:                                               ; preds = %35
  %38 = or i64 %4, 6
  %39 = getelementptr inbounds [40 x [24 x i8]], ptr @screen, i64 0, i64 %38, i64 %2
  store i8 32, ptr %39, align 1, !tbaa !51
  br label %40

40:                                               ; preds = %37, %35
  %41 = extractelement <8 x i1> %6, i64 7
  br i1 %41, label %42, label %45

42:                                               ; preds = %40
  %43 = or i64 %4, 7
  %44 = getelementptr inbounds [40 x [24 x i8]], ptr @screen, i64 0, i64 %43, i64 %2
  store i8 32, ptr %44, align 1, !tbaa !51
  br label %45

45:                                               ; preds = %42, %40
  %46 = add i64 %4, 8
  %47 = add <8 x i64> %5, <i64 8, i64 8, i64 8, i64 8, i64 8, i64 8, i64 8, i64 8>
  %48 = icmp eq i64 %46, 40
  br i1 %48, label %49, label %3, !llvm.loop !87

49:                                               ; preds = %45
  %50 = add nuw nsw i64 %2, 1
  %51 = icmp eq i64 %50, 24
  br i1 %51, label %52, label %1, !llvm.loop !81

52:                                               ; preds = %49
  %53 = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #15
  store i32 0, ptr %53, align 4, !tbaa !72
  %54 = getelementptr inbounds %struct.point, ptr %53, i64 0, i32 1
  store i32 0, ptr %54, align 4, !tbaa !74
  %55 = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #15
  store i32 10, ptr %55, align 4, !tbaa !72
  %56 = getelementptr inbounds %struct.point, ptr %55, i64 0, i32 1
  store i32 10, ptr %56, align 4, !tbaa !74
  %57 = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #15
  store i32 0, ptr %57, align 4, !tbaa !72
  %58 = getelementptr inbounds %struct.point, ptr %57, i64 0, i32 1
  store i32 15, ptr %58, align 4, !tbaa !74
  %59 = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #15
  store i32 15, ptr %59, align 4, !tbaa !72
  %60 = getelementptr inbounds %struct.point, ptr %59, i64 0, i32 1
  store i32 10, ptr %60, align 4, !tbaa !74
  %61 = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #15
  store i32 27, ptr %61, align 4, !tbaa !72
  %62 = getelementptr inbounds %struct.point, ptr %61, i64 0, i32 1
  store i32 18, ptr %62, align 4, !tbaa !74
  %63 = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #15
  invoke void @_ZN9rectangleC2EP5pointS1_(ptr noundef nonnull align 8 dereferenceable(32) %63, ptr noundef nonnull %53, ptr noundef nonnull %55) #13
          to label %64 unwind label %116

64:                                               ; preds = %52
  %65 = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #15
  %66 = load ptr, ptr @_ZN5shape4listE, align 8, !tbaa !69
  %67 = getelementptr inbounds %struct.shape, ptr %65, i64 0, i32 1
  store ptr %66, ptr %67, align 8, !tbaa !70
  store ptr %65, ptr @_ZN5shape4listE, align 8, !tbaa !69
  store ptr getelementptr inbounds ({ [12 x ptr] }, ptr @_ZTV4line, i64 0, inrange i32 0, i64 2), ptr %65, align 8, !tbaa !56
  %68 = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #15
          to label %69 unwind label %118

69:                                               ; preds = %64
  store i32 16, ptr %68, align 4, !tbaa !72
  %70 = getelementptr inbounds %struct.point, ptr %68, i64 0, i32 1
  store i32 15, ptr %70, align 4, !tbaa !74
  %71 = getelementptr inbounds %class.rectangle, ptr %65, i64 0, i32 1
  store ptr %68, ptr %71, align 8, !tbaa !88
  %72 = getelementptr inbounds %class.rectangle, ptr %65, i64 0, i32 2
  store ptr %57, ptr %72, align 8, !tbaa !90
  %73 = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #15
  invoke void @_ZN7myshapeC2EP5pointS1_(ptr noundef nonnull align 8 dereferenceable(56) %73, ptr noundef nonnull %59, ptr noundef nonnull %61) #13
          to label %74 unwind label %120

74:                                               ; preds = %69
  tail call void @_Z13shape_refreshv() #13
  %75 = load ptr, ptr %73, align 8, !tbaa !56
  %76 = getelementptr inbounds ptr, ptr %75, i64 9
  %77 = load ptr, ptr %76, align 8
  tail call void %77(ptr noundef nonnull align 8 dereferenceable(16) %73, i32 noundef -10, i32 noundef -10) #13
  %78 = load ptr, ptr %73, align 8, !tbaa !56
  %79 = load ptr, ptr %78, align 8
  %80 = tail call noundef ptr %79(ptr noundef nonnull align 8 dereferenceable(16) %73) #13
  %81 = load ptr, ptr %65, align 8, !tbaa !56
  %82 = getelementptr inbounds ptr, ptr %81, i64 1
  %83 = load ptr, ptr %82, align 8
  %84 = tail call noundef ptr %83(ptr noundef nonnull align 8 dereferenceable(16) %65) #13
  %85 = load i32, ptr %80, align 4, !tbaa !72
  %86 = load i32, ptr %84, align 4, !tbaa !72
  %87 = sub nsw i32 %85, %86
  %88 = getelementptr inbounds %struct.point, ptr %80, i64 0, i32 1
  %89 = load i32, ptr %88, align 4, !tbaa !74
  %90 = getelementptr inbounds %struct.point, ptr %84, i64 0, i32 1
  %91 = load i32, ptr %90, align 4, !tbaa !74
  %92 = add i32 %89, 1
  %93 = sub i32 %92, %91
  %94 = load ptr, ptr %65, align 8, !tbaa !56
  %95 = getelementptr inbounds ptr, ptr %94, i64 9
  %96 = load ptr, ptr %95, align 8
  tail call void %96(ptr noundef nonnull align 8 dereferenceable(16) %65, i32 noundef %87, i32 noundef %93) #13
  %97 = load ptr, ptr %65, align 8, !tbaa !56
  %98 = load ptr, ptr %97, align 8
  %99 = tail call noundef ptr %98(ptr noundef nonnull align 8 dereferenceable(16) %65) #13
  %100 = load ptr, ptr %63, align 8, !tbaa !56
  %101 = getelementptr inbounds ptr, ptr %100, i64 1
  %102 = load ptr, ptr %101, align 8
  %103 = tail call noundef ptr %102(ptr noundef nonnull align 8 dereferenceable(16) %63) #13
  %104 = load i32, ptr %99, align 4, !tbaa !72
  %105 = load i32, ptr %103, align 4, !tbaa !72
  %106 = sub nsw i32 %104, %105
  %107 = getelementptr inbounds %struct.point, ptr %99, i64 0, i32 1
  %108 = load i32, ptr %107, align 4, !tbaa !74
  %109 = getelementptr inbounds %struct.point, ptr %103, i64 0, i32 1
  %110 = load i32, ptr %109, align 4, !tbaa !74
  %111 = add i32 %108, 1
  %112 = sub i32 %111, %110
  %113 = load ptr, ptr %63, align 8, !tbaa !56
  %114 = getelementptr inbounds ptr, ptr %113, i64 9
  %115 = load ptr, ptr %114, align 8
  tail call void %115(ptr noundef nonnull align 8 dereferenceable(16) %63, i32 noundef %106, i32 noundef %112) #13
  tail call void @_Z13shape_refreshv() #13
  ret i32 0

116:                                              ; preds = %52
  %117 = landingpad { ptr, i32 }
          cleanup
  br label %122

118:                                              ; preds = %64
  %119 = landingpad { ptr, i32 }
          cleanup
  br label %122

120:                                              ; preds = %69
  %121 = landingpad { ptr, i32 }
          cleanup
  br label %122

122:                                              ; preds = %120, %118, %116
  %123 = phi ptr [ %65, %118 ], [ %73, %120 ], [ %63, %116 ]
  %124 = phi { ptr, i32 } [ %119, %118 ], [ %121, %120 ], [ %117, %116 ]
  tail call void @_ZdlPv(ptr noundef nonnull %123) #16
  resume { ptr, i32 } %124
}

; Function Attrs: optsize uwtable
define internal void @_ZN7myshapeC2EP5pointS1_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  tail call void @_ZN9rectangleC2EP5pointS1_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) #13
  store ptr getelementptr inbounds ({ [12 x ptr] }, ptr @_ZTV7myshape, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !56
  %4 = getelementptr inbounds %class.rectangle, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !77
  %6 = load i32, ptr %5, align 4, !tbaa !72
  %7 = getelementptr inbounds %class.rectangle, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !75
  %9 = load i32, ptr %8, align 4, !tbaa !72
  %10 = sub nsw i32 %6, %9
  %11 = getelementptr inbounds %struct.point, ptr %5, i64 0, i32 1
  %12 = load i32, ptr %11, align 4, !tbaa !74
  %13 = getelementptr inbounds %struct.point, ptr %8, i64 0, i32 1
  %14 = load i32, ptr %13, align 4, !tbaa !74
  %15 = sub nsw i32 %12, %14
  %16 = add nsw i32 %15, 1
  %17 = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #15
  %18 = load i32, ptr %8, align 4, !tbaa !72
  %19 = tail call noundef ptr @_ZNK9rectangle5swestEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
  %20 = add nsw i32 %18, 2
  %21 = getelementptr inbounds %struct.point, ptr %19, i64 0, i32 1
  %22 = load i32, ptr %21, align 4, !tbaa !74
  %23 = mul nsw i32 %16, 3
  %24 = sdiv i32 %23, 4
  %25 = add nsw i32 %22, %24
  store i32 %20, ptr %17, align 4, !tbaa !72
  %26 = getelementptr inbounds %struct.point, ptr %17, i64 0, i32 1
  store i32 %25, ptr %26, align 4, !tbaa !74
  %27 = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #15
  %28 = load ptr, ptr %0, align 8, !tbaa !56
  %29 = getelementptr inbounds ptr, ptr %28, i64 7
  %30 = load ptr, ptr %29, align 8
  %31 = invoke noundef ptr %30(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
          to label %32 unwind label %92

32:                                               ; preds = %3
  %33 = load i32, ptr %31, align 4, !tbaa !72
  %34 = load ptr, ptr %0, align 8, !tbaa !56
  %35 = getelementptr inbounds ptr, ptr %34, i64 7
  %36 = load ptr, ptr %35, align 8
  %37 = invoke noundef ptr %36(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
          to label %38 unwind label %92

38:                                               ; preds = %32
  %39 = add i32 %10, -3
  %40 = add i32 %39, %33
  %41 = getelementptr inbounds %struct.point, ptr %37, i64 0, i32 1
  %42 = load i32, ptr %41, align 4, !tbaa !74
  %43 = add nsw i32 %42, %24
  store i32 %40, ptr %27, align 4, !tbaa !72
  %44 = getelementptr inbounds %struct.point, ptr %27, i64 0, i32 1
  store i32 %43, ptr %44, align 4, !tbaa !74
  %45 = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #15
  %46 = load ptr, ptr %0, align 8, !tbaa !56
  %47 = getelementptr inbounds ptr, ptr %46, i64 7
  %48 = load ptr, ptr %47, align 8
  %49 = invoke noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
          to label %50 unwind label %94

50:                                               ; preds = %38
  %51 = load i32, ptr %49, align 4, !tbaa !72
  %52 = load ptr, ptr %0, align 8, !tbaa !56
  %53 = getelementptr inbounds ptr, ptr %52, i64 7
  %54 = load ptr, ptr %53, align 8
  %55 = invoke noundef ptr %54(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
          to label %56 unwind label %94

56:                                               ; preds = %50
  %57 = add nsw i32 %51, 2
  %58 = getelementptr inbounds %struct.point, ptr %55, i64 0, i32 1
  %59 = load i32, ptr %58, align 4, !tbaa !74
  %60 = sdiv i32 %16, 4
  %61 = add nsw i32 %59, %60
  store i32 %57, ptr %45, align 4, !tbaa !72
  %62 = getelementptr inbounds %struct.point, ptr %45, i64 0, i32 1
  store i32 %61, ptr %62, align 4, !tbaa !74
  %63 = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #15
  %64 = load ptr, ptr @_ZN5shape4listE, align 8, !tbaa !69
  %65 = getelementptr inbounds %struct.shape, ptr %63, i64 0, i32 1
  store ptr %64, ptr %65, align 8, !tbaa !70
  store ptr %63, ptr @_ZN5shape4listE, align 8, !tbaa !69
  store ptr getelementptr inbounds ({ [12 x ptr] }, ptr @_ZTV4line, i64 0, inrange i32 0, i64 2), ptr %63, align 8, !tbaa !56
  %66 = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #15
          to label %67 unwind label %96

67:                                               ; preds = %56
  %68 = add i32 %18, 3
  store i32 %68, ptr %66, align 4, !tbaa !72
  %69 = getelementptr inbounds %struct.point, ptr %66, i64 0, i32 1
  store i32 %25, ptr %69, align 4, !tbaa !74
  %70 = getelementptr inbounds %class.rectangle, ptr %63, i64 0, i32 1
  store ptr %66, ptr %70, align 8, !tbaa !88
  %71 = getelementptr inbounds %class.rectangle, ptr %63, i64 0, i32 2
  store ptr %17, ptr %71, align 8, !tbaa !90
  %72 = getelementptr inbounds %class.myshape, ptr %0, i64 0, i32 1
  store ptr %63, ptr %72, align 8, !tbaa !83
  %73 = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #15
  %74 = getelementptr inbounds %struct.shape, ptr %73, i64 0, i32 1
  store ptr %63, ptr %74, align 8, !tbaa !70
  store ptr %73, ptr @_ZN5shape4listE, align 8, !tbaa !69
  store ptr getelementptr inbounds ({ [12 x ptr] }, ptr @_ZTV4line, i64 0, inrange i32 0, i64 2), ptr %73, align 8, !tbaa !56
  %75 = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #15
          to label %76 unwind label %98

76:                                               ; preds = %67
  %77 = add i32 %40, 1
  store i32 %77, ptr %75, align 4, !tbaa !72
  %78 = getelementptr inbounds %struct.point, ptr %75, i64 0, i32 1
  store i32 %43, ptr %78, align 4, !tbaa !74
  %79 = getelementptr inbounds %class.rectangle, ptr %73, i64 0, i32 1
  store ptr %75, ptr %79, align 8, !tbaa !88
  %80 = getelementptr inbounds %class.rectangle, ptr %73, i64 0, i32 2
  store ptr %27, ptr %80, align 8, !tbaa !90
  %81 = getelementptr inbounds %class.myshape, ptr %0, i64 0, i32 2
  store ptr %73, ptr %81, align 8, !tbaa !85
  %82 = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #15
  %83 = getelementptr inbounds %struct.shape, ptr %82, i64 0, i32 1
  store ptr %73, ptr %83, align 8, !tbaa !70
  store ptr %82, ptr @_ZN5shape4listE, align 8, !tbaa !69
  store ptr getelementptr inbounds ({ [12 x ptr] }, ptr @_ZTV4line, i64 0, inrange i32 0, i64 2), ptr %82, align 8, !tbaa !56
  %84 = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #15
          to label %85 unwind label %100

85:                                               ; preds = %76
  %86 = add i32 %10, -4
  %87 = add i32 %86, %57
  store i32 %87, ptr %84, align 4, !tbaa !72
  %88 = getelementptr inbounds %struct.point, ptr %84, i64 0, i32 1
  store i32 %61, ptr %88, align 4, !tbaa !74
  %89 = getelementptr inbounds %class.rectangle, ptr %82, i64 0, i32 1
  store ptr %84, ptr %89, align 8, !tbaa !88
  %90 = getelementptr inbounds %class.rectangle, ptr %82, i64 0, i32 2
  store ptr %45, ptr %90, align 8, !tbaa !90
  %91 = getelementptr inbounds %class.myshape, ptr %0, i64 0, i32 3
  store ptr %82, ptr %91, align 8, !tbaa !86
  ret void

92:                                               ; preds = %32, %3
  %93 = landingpad { ptr, i32 }
          cleanup
  br label %102

94:                                               ; preds = %50, %38
  %95 = landingpad { ptr, i32 }
          cleanup
  br label %102

96:                                               ; preds = %56
  %97 = landingpad { ptr, i32 }
          cleanup
  br label %102

98:                                               ; preds = %67
  %99 = landingpad { ptr, i32 }
          cleanup
  br label %102

100:                                              ; preds = %76
  %101 = landingpad { ptr, i32 }
          cleanup
  br label %102

102:                                              ; preds = %100, %98, %96, %94, %92
  %103 = phi ptr [ %27, %92 ], [ %82, %100 ], [ %73, %98 ], [ %63, %96 ], [ %45, %94 ]
  %104 = phi { ptr, i32 } [ %93, %92 ], [ %101, %100 ], [ %99, %98 ], [ %97, %96 ], [ %95, %94 ]
  tail call void @_ZdlPv(ptr noundef nonnull %103) #16
  resume { ptr, i32 } %104
}

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #12

; Function Attrs: optsize uwtable
define internal noundef ptr @_ZNK4line5northEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %2 = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #15
  %3 = getelementptr inbounds %class.rectangle, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !88
  %5 = load i32, ptr %4, align 4, !tbaa !72
  %6 = getelementptr inbounds %class.rectangle, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !90
  %8 = load i32, ptr %7, align 4, !tbaa !72
  %9 = getelementptr inbounds %struct.point, ptr %7, i64 0, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !74
  %11 = getelementptr inbounds %struct.point, ptr %4, i64 0, i32 1
  %12 = load i32, ptr %11, align 4, !tbaa !74
  %13 = tail call i32 @llvm.smax.i32(i32 %10, i32 %12)
  %14 = add nsw i32 %8, %5
  %15 = sdiv i32 %14, 2
  store i32 %15, ptr %2, align 4, !tbaa !72
  %16 = getelementptr inbounds %struct.point, ptr %2, i64 0, i32 1
  store i32 %13, ptr %16, align 4, !tbaa !74
  ret ptr %2
}

; Function Attrs: optsize uwtable
define internal noundef ptr @_ZNK4line5southEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %2 = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #15
  %3 = getelementptr inbounds %class.rectangle, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !88
  %5 = load i32, ptr %4, align 4, !tbaa !72
  %6 = getelementptr inbounds %class.rectangle, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !90
  %8 = load i32, ptr %7, align 4, !tbaa !72
  %9 = getelementptr inbounds %struct.point, ptr %7, i64 0, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !74
  %11 = getelementptr inbounds %struct.point, ptr %4, i64 0, i32 1
  %12 = load i32, ptr %11, align 4, !tbaa !74
  %13 = tail call i32 @llvm.smin.i32(i32 %10, i32 %12)
  %14 = add nsw i32 %8, %5
  %15 = sdiv i32 %14, 2
  store i32 %15, ptr %2, align 4, !tbaa !72
  %16 = getelementptr inbounds %struct.point, ptr %2, i64 0, i32 1
  store i32 %13, ptr %16, align 4, !tbaa !74
  ret ptr %2
}

; Function Attrs: mustprogress nounwind optsize uwtable
define internal noundef ptr @_ZNK4line4eastEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #9 comdat align 2 {
  unreachable
}

; Function Attrs: mustprogress nounwind optsize uwtable
define internal noundef ptr @_ZNK4line4westEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #9 comdat align 2 {
  unreachable
}

; Function Attrs: mustprogress nounwind optsize uwtable
define internal noundef ptr @_ZNK4line5neastEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #9 comdat align 2 {
  unreachable
}

; Function Attrs: mustprogress nounwind optsize uwtable
define internal noundef ptr @_ZNK4line5seastEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #9 comdat align 2 {
  unreachable
}

; Function Attrs: mustprogress nounwind optsize uwtable
define internal noundef ptr @_ZNK4line5nwestEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #9 comdat align 2 {
  unreachable
}

; Function Attrs: mustprogress nounwind optsize uwtable
define internal noundef ptr @_ZNK4line5swestEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #9 comdat align 2 {
  unreachable
}

; Function Attrs: mustprogress optsize uwtable
define internal void @_ZN4line4drawEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #6 comdat align 2 {
  %2 = getelementptr inbounds %class.rectangle, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !88
  %4 = getelementptr inbounds %class.rectangle, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !90
  %6 = load i32, ptr %3, align 4, !tbaa !72
  %7 = getelementptr inbounds %struct.point, ptr %3, i64 0, i32 1
  %8 = load i32, ptr %7, align 4, !tbaa !74
  %9 = load i32, ptr %5, align 4, !tbaa !72
  %10 = getelementptr inbounds %struct.point, ptr %5, i64 0, i32 1
  %11 = load i32, ptr %10, align 4, !tbaa !74
  tail call void @_Z8put_lineiiii(i32 noundef %6, i32 noundef %8, i32 noundef %9, i32 noundef %11) #13
  ret void
}

; Function Attrs: mustprogress nounwind optsize uwtable
define internal void @_ZN4line4moveEii(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #9 comdat align 2 {
  %4 = getelementptr inbounds %class.rectangle, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !88
  %6 = load i32, ptr %5, align 4, !tbaa !72
  %7 = add nsw i32 %6, %1
  store i32 %7, ptr %5, align 4, !tbaa !72
  %8 = getelementptr inbounds %struct.point, ptr %5, i64 0, i32 1
  %9 = load i32, ptr %8, align 4, !tbaa !74
  %10 = add nsw i32 %9, %2
  store i32 %10, ptr %8, align 4, !tbaa !74
  %11 = getelementptr inbounds %class.rectangle, ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !90
  %13 = load i32, ptr %12, align 4, !tbaa !72
  %14 = add nsw i32 %13, %1
  store i32 %14, ptr %12, align 4, !tbaa !72
  %15 = getelementptr inbounds %struct.point, ptr %12, i64 0, i32 1
  %16 = load i32, ptr %15, align 4, !tbaa !74
  %17 = add nsw i32 %16, %2
  store i32 %17, ptr %15, align 4, !tbaa !74
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
attributes #4 = { mustprogress nofree nosync nounwind optsize memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nobuiltin optsize allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { norecurse optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { optsize }
attributes #14 = { nounwind }
attributes #15 = { builtin optsize allocsize(0) }
attributes #16 = { builtin nounwind optsize }

!llvm.ident = !{!44}
!llvm.module.flags = !{!45, !46, !47, !48, !49, !50}

!0 = !{i64 16, !"_ZTS5shape"}
!1 = !{i64 16, !"_ZTSM5shapeKFP5pointvE.virtual"}
!2 = !{i64 24, !"_ZTSM5shapeKFP5pointvE.virtual"}
!3 = !{i64 32, !"_ZTSM5shapeKFP5pointvE.virtual"}
!4 = !{i64 40, !"_ZTSM5shapeKFP5pointvE.virtual"}
!5 = !{i64 48, !"_ZTSM5shapeKFP5pointvE.virtual"}
!6 = !{i64 56, !"_ZTSM5shapeKFP5pointvE.virtual"}
!7 = !{i64 64, !"_ZTSM5shapeKFP5pointvE.virtual"}
!8 = !{i64 72, !"_ZTSM5shapeKFP5pointvE.virtual"}
!9 = !{i64 80, !"_ZTSM5shapeFvvE.virtual"}
!10 = !{i64 88, !"_ZTSM5shapeFviiE.virtual"}
!11 = !{i64 16, !"_ZTS9rectangle"}
!12 = !{i64 16, !"_ZTSM9rectangleKFP5pointvE.virtual"}
!13 = !{i64 24, !"_ZTSM9rectangleKFP5pointvE.virtual"}
!14 = !{i64 32, !"_ZTSM9rectangleKFP5pointvE.virtual"}
!15 = !{i64 40, !"_ZTSM9rectangleKFP5pointvE.virtual"}
!16 = !{i64 48, !"_ZTSM9rectangleKFP5pointvE.virtual"}
!17 = !{i64 56, !"_ZTSM9rectangleKFP5pointvE.virtual"}
!18 = !{i64 64, !"_ZTSM9rectangleKFP5pointvE.virtual"}
!19 = !{i64 72, !"_ZTSM9rectangleKFP5pointvE.virtual"}
!20 = !{i64 80, !"_ZTSM9rectangleFvvE.virtual"}
!21 = !{i64 88, !"_ZTSM9rectangleFviiE.virtual"}
!22 = !{i64 16, !"_ZTS7myshape"}
!23 = !{i64 16, !"_ZTSM7myshapeKFP5pointvE.virtual"}
!24 = !{i64 24, !"_ZTSM7myshapeKFP5pointvE.virtual"}
!25 = !{i64 32, !"_ZTSM7myshapeKFP5pointvE.virtual"}
!26 = !{i64 40, !"_ZTSM7myshapeKFP5pointvE.virtual"}
!27 = !{i64 48, !"_ZTSM7myshapeKFP5pointvE.virtual"}
!28 = !{i64 56, !"_ZTSM7myshapeKFP5pointvE.virtual"}
!29 = !{i64 64, !"_ZTSM7myshapeKFP5pointvE.virtual"}
!30 = !{i64 72, !"_ZTSM7myshapeKFP5pointvE.virtual"}
!31 = !{i64 80, !"_ZTSM7myshapeFvvE.virtual"}
!32 = !{i64 88, !"_ZTSM7myshapeFviiE.virtual"}
!33 = !{i64 16, !"_ZTS4line"}
!34 = !{i64 16, !"_ZTSM4lineKFP5pointvE.virtual"}
!35 = !{i64 24, !"_ZTSM4lineKFP5pointvE.virtual"}
!36 = !{i64 32, !"_ZTSM4lineKFP5pointvE.virtual"}
!37 = !{i64 40, !"_ZTSM4lineKFP5pointvE.virtual"}
!38 = !{i64 48, !"_ZTSM4lineKFP5pointvE.virtual"}
!39 = !{i64 56, !"_ZTSM4lineKFP5pointvE.virtual"}
!40 = !{i64 64, !"_ZTSM4lineKFP5pointvE.virtual"}
!41 = !{i64 72, !"_ZTSM4lineKFP5pointvE.virtual"}
!42 = !{i64 80, !"_ZTSM4lineFvvE.virtual"}
!43 = !{i64 88, !"_ZTSM4lineFviiE.virtual"}
!44 = !{!"clang version 17.0.6 (https://github.com/Casperento/llvm-project.git 9b0073551ece0d22bf3378af2b03e456a26031b6)"}
!45 = !{i32 1, !"wchar_size", i32 4}
!46 = !{i32 8, !"PIC Level", i32 2}
!47 = !{i32 7, !"PIE Level", i32 2}
!48 = !{i32 7, !"uwtable", i32 2}
!49 = !{i32 1, !"ThinLTO", i32 0}
!50 = !{i32 1, !"EnableSplitLTOUnit", i32 1}
!51 = !{!52, !52, i64 0}
!52 = !{!"omnipotent char", !53, i64 0}
!53 = !{!"Simple C++ TBAA"}
!54 = distinct !{!54, !55}
!55 = !{!"llvm.loop.mustprogress"}
!56 = !{!57, !57, i64 0}
!57 = !{!"vtable pointer", !53, i64 0}
!58 = !{!59, !60, i64 16}
!59 = !{!"_ZTSSt8ios_base", !60, i64 8, !60, i64 16, !61, i64 24, !62, i64 28, !62, i64 32, !63, i64 40, !64, i64 48, !52, i64 64, !65, i64 192, !63, i64 200, !66, i64 208}
!60 = !{!"long", !52, i64 0}
!61 = !{!"_ZTSSt13_Ios_Fmtflags", !52, i64 0}
!62 = !{!"_ZTSSt12_Ios_Iostate", !52, i64 0}
!63 = !{!"any pointer", !52, i64 0}
!64 = !{!"_ZTSNSt8ios_base6_WordsE", !63, i64 0, !60, i64 8}
!65 = !{!"int", !52, i64 0}
!66 = !{!"_ZTSSt6locale", !63, i64 0}
!67 = distinct !{!67, !55}
!68 = distinct !{!68, !55}
!69 = !{!63, !63, i64 0}
!70 = !{!71, !63, i64 8}
!71 = !{!"_ZTS5shape", !63, i64 8}
!72 = !{!73, !65, i64 0}
!73 = !{!"_ZTS5point", !65, i64 0, !65, i64 4}
!74 = !{!73, !65, i64 4}
!75 = !{!76, !63, i64 16}
!76 = !{!"_ZTS9rectangle", !71, i64 0, !63, i64 16, !63, i64 24}
!77 = !{!76, !63, i64 24}
!78 = distinct !{!78, !55, !79, !80}
!79 = !{!"llvm.loop.isvectorized", i32 1}
!80 = !{!"llvm.loop.unroll.runtime.disable"}
!81 = distinct !{!81, !55}
!82 = distinct !{!82, !55}
!83 = !{!84, !63, i64 32}
!84 = !{!"_ZTS7myshape", !76, i64 0, !63, i64 32, !63, i64 40, !63, i64 48}
!85 = !{!84, !63, i64 40}
!86 = !{!84, !63, i64 48}
!87 = distinct !{!87, !55, !79, !80}
!88 = !{!89, !63, i64 16}
!89 = !{!"_ZTS4line", !71, i64 0, !63, i64 16, !63, i64 24}
!90 = !{!89, !63, i64 24}
