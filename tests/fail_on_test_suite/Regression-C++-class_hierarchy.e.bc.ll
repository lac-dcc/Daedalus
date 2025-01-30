; ModuleID = '/src/llvm-test-suite/build/SingleSource/Regression/C++/EH/Regression-C++-class_hierarchy.e.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%class.Base = type { %"class.std::exception", i32, ptr }
%"class.std::exception" = type { ptr }

$_ZN4BaseC2Ej = comdat any

$_ZN7DerivedC2Ej = comdat any

$_ZN6UnusedC2Ev = comdat any

$_ZN7Unused2D0Ev = comdat any

$_ZN6UnusedD0Ev = comdat any

$_ZN4Base4initEjPKc = comdat any

$_ZN7DerivedD0Ev = comdat any

$_ZN4BaseD0Ev = comdat any

$_ZTS4Base = comdat any

$_ZTI4Base = comdat any

$_ZTS7Derived = comdat any

$_ZTI7Derived = comdat any

$_ZTS6Unused = comdat any

$_ZTI6Unused = comdat any

$_ZTS7Unused2 = comdat any

$_ZTI7Unused2 = comdat any

$_ZTV4Base = comdat any

$_ZTV7Derived = comdat any

$_ZTV6Unused = comdat any

$_ZTV7Unused2 = comdat any

@_ZTVN10__cxxabiv120__si_class_type_infoE = external global ptr
@_ZTS4Base = internal constant [6 x i8] c"4Base\00", comdat, align 1
@_ZTISt9exception = external constant ptr
@_ZTI4Base = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS4Base, ptr @_ZTISt9exception }, comdat, align 8
@_ZTS7Derived = internal constant [9 x i8] c"7Derived\00", comdat, align 1
@_ZTI7Derived = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS7Derived, ptr @_ZTI4Base }, comdat, align 8
@_ZTS6Unused = internal constant [8 x i8] c"6Unused\00", comdat, align 1
@_ZTI6Unused = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS6Unused, ptr @_ZTI4Base }, comdat, align 8
@_ZTS7Unused2 = internal constant [9 x i8] c"7Unused2\00", comdat, align 1
@_ZTI7Unused2 = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS7Unused2, ptr @_ZTISt9exception }, comdat, align 8
@.str = private unnamed_addr constant [6 x i8] c"what?\00", align 1
@_ZTIPKc = external constant ptr
@.str.2 = private unnamed_addr constant [22 x i8] c"Caught exception: %s\0A\00", align 1
@_ZTV4Base = internal unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTI4Base, ptr @_ZNSt9exceptionD2Ev, ptr @_ZN4BaseD0Ev, ptr @_ZNKSt9exception4whatEv] }, comdat, align 8, !type !0, !type !1, !type !2, !type !3
@.str.3 = private unnamed_addr constant [5 x i8] c"base\00", align 1
@_ZTVSt9exception = available_externally unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTISt9exception, ptr @_ZNSt9exceptionD1Ev, ptr @_ZNSt9exceptionD0Ev, ptr @_ZNKSt9exception4whatEv] }, align 8
@.str.4 = private unnamed_addr constant [12 x i8] c"n: %s class\00", align 1
@_ZTV7Derived = internal unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTI7Derived, ptr @_ZNSt9exceptionD2Ev, ptr @_ZN7DerivedD0Ev, ptr @_ZNKSt9exception4whatEv] }, comdat, align 8, !type !0, !type !1, !type !4, !type !5, !type !2, !type !3
@.str.5 = private unnamed_addr constant [8 x i8] c"derived\00", align 1
@_ZTV6Unused = internal unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTI6Unused, ptr @_ZNSt9exceptionD2Ev, ptr @_ZN6UnusedD0Ev, ptr @_ZNKSt9exception4whatEv] }, comdat, align 8, !type !0, !type !1, !type !6, !type !7, !type !2, !type !3
@_ZTV7Unused2 = internal unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTI7Unused2, ptr @_ZNSt9exceptionD2Ev, ptr @_ZN7Unused2D0Ev, ptr @_ZNKSt9exception4whatEv] }, comdat, align 8, !type !8, !type !9, !type !2, !type !3
@str = private unnamed_addr constant [25 x i8] c"Caught unknown exception\00", align 1

; Function Attrs: noreturn optsize uwtable
define internal void @_Z4funcj(i32 noundef %0) #0 personality ptr @__gxx_personality_v0 {
  %2 = icmp ult i32 %0, 10
  br i1 %2, label %3, label %8

3:                                                ; preds = %1
  %4 = tail call ptr @__cxa_allocate_exception(i64 24) #12
  invoke void @_ZN4BaseC2Ej(ptr noundef nonnull align 8 dereferenceable(24) %4, i32 noundef %0) #13
          to label %5 unwind label %6

5:                                                ; preds = %3
  tail call void @__cxa_throw(ptr nonnull %4, ptr nonnull @_ZTI4Base, ptr nonnull @_ZNSt9exceptionD2Ev) #14
  unreachable

6:                                                ; preds = %3
  %7 = landingpad { ptr, i32 }
          cleanup
  br label %31

8:                                                ; preds = %1
  %9 = icmp ult i32 %0, 20
  br i1 %9, label %10, label %15

10:                                               ; preds = %8
  %11 = tail call ptr @__cxa_allocate_exception(i64 24) #12
  invoke void @_ZN7DerivedC2Ej(ptr noundef nonnull align 8 dereferenceable(24) %11, i32 noundef %0) #13
          to label %12 unwind label %13

12:                                               ; preds = %10
  tail call void @__cxa_throw(ptr nonnull %11, ptr nonnull @_ZTI7Derived, ptr nonnull @_ZNSt9exceptionD2Ev) #14
  unreachable

13:                                               ; preds = %10
  %14 = landingpad { ptr, i32 }
          cleanup
  br label %31

15:                                               ; preds = %8
  %16 = icmp eq i32 %0, 20
  br i1 %16, label %17, label %22

17:                                               ; preds = %15
  %18 = tail call ptr @__cxa_allocate_exception(i64 24) #12
  invoke void @_ZN6UnusedC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %18) #13
          to label %19 unwind label %20

19:                                               ; preds = %17
  tail call void @__cxa_throw(ptr nonnull %18, ptr nonnull @_ZTI6Unused, ptr nonnull @_ZNSt9exceptionD2Ev) #14
  unreachable

20:                                               ; preds = %17
  %21 = landingpad { ptr, i32 }
          cleanup
  br label %31

22:                                               ; preds = %15
  %23 = icmp ult i32 %0, 22
  br i1 %23, label %24, label %26

24:                                               ; preds = %22
  %25 = tail call ptr @__cxa_allocate_exception(i64 8) #12
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTV7Unused2, i64 0, inrange i32 0, i64 2), ptr %25, align 8, !tbaa !17
  tail call void @__cxa_throw(ptr nonnull %25, ptr nonnull @_ZTI7Unused2, ptr nonnull @_ZNSt9exceptionD2Ev) #14
  unreachable

26:                                               ; preds = %22
  %27 = icmp eq i32 %0, 22
  %28 = tail call ptr @__cxa_allocate_exception(i64 8) #12
  br i1 %27, label %29, label %30

29:                                               ; preds = %26
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVSt9exception, i64 0, inrange i32 0, i64 2), ptr %28, align 8, !tbaa !17
  tail call void @__cxa_throw(ptr nonnull %28, ptr nonnull @_ZTISt9exception, ptr nonnull @_ZNSt9exceptionD1Ev) #14
  unreachable

30:                                               ; preds = %26
  store ptr @.str, ptr %28, align 16, !tbaa !20
  tail call void @__cxa_throw(ptr nonnull %28, ptr nonnull @_ZTIPKc, ptr null) #14
  unreachable

31:                                               ; preds = %20, %13, %6
  %32 = phi ptr [ %18, %20 ], [ %11, %13 ], [ %4, %6 ]
  %33 = phi { ptr, i32 } [ %21, %20 ], [ %14, %13 ], [ %7, %6 ]
  tail call void @__cxa_free_exception(ptr %32) #12
  resume { ptr, i32 } %33
}

declare i32 @__gxx_personality_v0(...)

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: optsize uwtable
define internal void @_ZN4BaseC2Ej(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTV4Base, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !17
  invoke void @_ZN4Base4initEjPKc(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1, ptr noundef nonnull @.str.3) #13
          to label %3 unwind label %4

3:                                                ; preds = %2
  ret void

4:                                                ; preds = %2
  %5 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #15
  resume { ptr, i32 } %5
}

; Function Attrs: nounwind optsize
declare void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: optsize uwtable
define internal void @_ZN7DerivedC2Ej(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTV7Derived, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !17
  %3 = add i32 %1, -10
  invoke void @_ZN4Base4initEjPKc(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %3, ptr noundef nonnull @.str.5) #13
          to label %4 unwind label %5

4:                                                ; preds = %2
  ret void

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #15
  resume { ptr, i32 } %6
}

; Function Attrs: optsize uwtable
define internal void @_ZN6UnusedC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 comdat align 2 {
  tail call void @_ZN4BaseC2Ej(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef 0) #13
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTV6Unused, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !17
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZNSt9exceptionD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind optsize
declare void @_ZNSt9exceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: nounwind optsize
declare noundef ptr @_ZNKSt9exception4whatEv(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: inlinehint nounwind optsize uwtable
define internal void @_ZN7Unused2D0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #3 comdat align 2 {
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #15
  tail call void @_ZdlPv(ptr noundef nonnull %0) #16
  ret void
}

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind optsize uwtable
define internal void @_ZN6UnusedD0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 comdat align 2 {
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #15
  tail call void @_ZdlPv(ptr noundef nonnull %0) #16
  ret void
}

; Function Attrs: mustprogress optsize uwtable
define internal void @_ZN4Base4initEjPKc(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1, ptr noundef %2) #5 comdat align 2 {
  %4 = getelementptr inbounds %class.Base, ptr %0, i64 0, i32 1
  store i32 %1, ptr %4, align 8, !tbaa !23
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #17
  %6 = add i64 %5, 10
  %7 = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %6) #18
  %8 = getelementptr inbounds %class.Base, ptr %0, i64 0, i32 2
  store ptr %7, ptr %8, align 8, !tbaa !27
  %9 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(1) @.str.4, ptr noundef %2) #15
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nobuiltin optsize allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind optsize
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: inlinehint nounwind optsize uwtable
define internal void @_ZN7DerivedD0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 comdat align 2 {
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #15
  tail call void @_ZdlPv(ptr noundef nonnull %0) #16
  ret void
}

; Function Attrs: inlinehint nounwind optsize uwtable
define internal void @_ZN4BaseD0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 comdat align 2 {
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #15
  tail call void @_ZdlPv(ptr noundef nonnull %0) #16
  ret void
}

; Function Attrs: mustprogress norecurse optsize uwtable
define dso_local noundef i32 @main() #9 personality ptr @__gxx_personality_v0 {
  br label %2

1:                                                ; preds = %21
  ret i32 0

2:                                                ; preds = %21, %0
  %3 = phi i32 [ 0, %0 ], [ %22, %21 ]
  invoke void @_Z4funcj(i32 noundef %3) #13
          to label %20 unwind label %4

4:                                                ; preds = %2
  %5 = landingpad { ptr, i32 }
          catch ptr @_ZTI7Derived
          catch ptr @_ZTI4Base
          catch ptr @_ZTISt9exception
          catch ptr null
  %6 = extractvalue { ptr, i32 } %5, 0
  %7 = extractvalue { ptr, i32 } %5, 1
  %8 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTI7Derived) #12
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %10, label %24

10:                                               ; preds = %4
  %11 = tail call ptr @__cxa_begin_catch(ptr %6) #12
  %12 = getelementptr inbounds %class.Base, ptr %11, i64 0, i32 1
  %13 = load i32, ptr %12, align 8, !tbaa !23
  %14 = trunc i32 %13 to i8
  %15 = add i8 %14, 48
  %16 = getelementptr inbounds %class.Base, ptr %11, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !27
  store i8 %15, ptr %17, align 1, !tbaa !28
  %18 = load ptr, ptr %16, align 8, !tbaa !27
  %19 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, ptr noundef %18) #13
  br label %21

20:                                               ; preds = %2
  unreachable

21:                                               ; preds = %47, %41, %27, %10
  tail call void @__cxa_end_catch()
  %22 = add nuw nsw i32 %3, 1
  %23 = icmp eq i32 %22, 25
  br i1 %23, label %1, label %2, !llvm.loop !29

24:                                               ; preds = %4
  %25 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTI4Base) #12
  %26 = icmp eq i32 %7, %25
  br i1 %26, label %27, label %37

27:                                               ; preds = %24
  %28 = tail call ptr @__cxa_begin_catch(ptr %6) #12
  %29 = getelementptr inbounds %class.Base, ptr %28, i64 0, i32 1
  %30 = load i32, ptr %29, align 8, !tbaa !23
  %31 = trunc i32 %30 to i8
  %32 = add i8 %31, 48
  %33 = getelementptr inbounds %class.Base, ptr %28, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !27
  store i8 %32, ptr %34, align 1, !tbaa !28
  %35 = load ptr, ptr %33, align 8, !tbaa !27
  %36 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, ptr noundef %35) #13
  br label %21

37:                                               ; preds = %24
  %38 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTISt9exception) #12
  %39 = icmp eq i32 %7, %38
  %40 = tail call ptr @__cxa_begin_catch(ptr %6) #12
  br i1 %39, label %41, label %47

41:                                               ; preds = %37
  %42 = load ptr, ptr %40, align 8, !tbaa !17
  %43 = getelementptr inbounds ptr, ptr %42, i64 2
  %44 = load ptr, ptr %43, align 8
  %45 = tail call noundef ptr %44(ptr noundef nonnull align 8 dereferenceable(8) %40) #15
  %46 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, ptr noundef %45) #13
  br label %21

47:                                               ; preds = %37
  %48 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %21
}

; Function Attrs: nounwind memory(none)
declare i32 @llvm.eh.typeid.for(ptr) #10

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #8

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #11

attributes #0 = { noreturn optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin optsize allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress norecurse optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind memory(none) }
attributes #11 = { nofree nounwind }
attributes #12 = { nounwind }
attributes #13 = { optsize }
attributes #14 = { noreturn }
attributes #15 = { nounwind optsize }
attributes #16 = { builtin nounwind optsize }
attributes #17 = { nounwind optsize willreturn memory(read) }
attributes #18 = { builtin optsize allocsize(0) }

!llvm.ident = !{!10}
!llvm.module.flags = !{!11, !12, !13, !14, !15, !16}

!0 = !{i64 16, !"_ZTS4Base"}
!1 = !{i64 32, !"_ZTSM4BaseKFPKcvE.virtual"}
!2 = !{i64 16, !"_ZTSSt9exception"}
!3 = !{i64 32, !"_ZTSMSt9exceptionKFPKcvE.virtual"}
!4 = !{i64 16, !"_ZTS7Derived"}
!5 = !{i64 32, !"_ZTSM7DerivedKFPKcvE.virtual"}
!6 = !{i64 16, !"_ZTS6Unused"}
!7 = !{i64 32, !"_ZTSM6UnusedKFPKcvE.virtual"}
!8 = !{i64 16, !"_ZTS7Unused2"}
!9 = !{i64 32, !"_ZTSM7Unused2KFPKcvE.virtual"}
!10 = !{!"clang version 17.0.6 (https://github.com/Casperento/llvm-project.git 9b0073551ece0d22bf3378af2b03e456a26031b6)"}
!11 = !{i32 1, !"wchar_size", i32 4}
!12 = !{i32 8, !"PIC Level", i32 2}
!13 = !{i32 7, !"PIE Level", i32 2}
!14 = !{i32 7, !"uwtable", i32 2}
!15 = !{i32 1, !"ThinLTO", i32 0}
!16 = !{i32 1, !"EnableSplitLTOUnit", i32 1}
!17 = !{!18, !18, i64 0}
!18 = !{!"vtable pointer", !19, i64 0}
!19 = !{!"Simple C++ TBAA"}
!20 = !{!21, !21, i64 0}
!21 = !{!"any pointer", !22, i64 0}
!22 = !{!"omnipotent char", !19, i64 0}
!23 = !{!24, !26, i64 8}
!24 = !{!"_ZTS4Base", !25, i64 0, !26, i64 8, !21, i64 16}
!25 = !{!"_ZTSSt9exception"}
!26 = !{!"int", !22, i64 0}
!27 = !{!24, !21, i64 16}
!28 = !{!22, !22, i64 0}
!29 = distinct !{!29, !30}
!30 = !{!"llvm.loop.mustprogress"}
