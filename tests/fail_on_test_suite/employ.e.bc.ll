; ModuleID = '/src/llvm-test-suite/build/MultiSource/Benchmarks/Prolangs-C++/employ/employ.e.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%class.Employee = type <{ ptr, ptr, ptr, float, [4 x i8] }>
%class.Boss = type { %class.Employee.base, float }
%class.Employee.base = type <{ ptr, ptr, ptr, float }>
%class.CommissionedWorker = type { %class.Employee.base, float, float, float }
%class.PieceWorker = type { %class.Boss, i32, [4 x i8] }
%class.HourlyWorker = type { %class.Boss, float, [4 x i8] }
%class.EmployeeNode = type { ptr, ptr }

$_ZN18CommissionedWorkerD0Ev = comdat any

$_ZN11PieceWorkerD0Ev = comdat any

$_ZN20HourlyWorkerOvertimeD0Ev = comdat any

$_ZN22HourlyWorkerNoOvertimeD0Ev = comdat any

$_ZN4BossD0Ev = comdat any

@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_driver.cpp, ptr null }]
@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@_ZTV8Employee = internal unnamed_addr constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTI8Employee, ptr @_ZN8EmployeeD2Ev, ptr @_ZN8EmployeeD0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, align 8, !type !0, !type !1, !type !2, !type !3, !type !4
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [10 x i8] c" earned $\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c" in week \00", align 1
@_ZTV4Boss = internal unnamed_addr constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTI4Boss, ptr @_ZN8EmployeeD2Ev, ptr @_ZN4BossD0Ev, ptr @_ZN4Boss8EarningsEv, ptr @_ZN4Boss5PrintEv, ptr @_ZN4Boss5RaiseEi, ptr @_ZN4Boss7NewWeekEv] }, align 8, !type !5, !type !6, !type !7, !type !8, !type !9, !type !0, !type !1, !type !2, !type !3, !type !4
@.str.2 = private unnamed_addr constant [22 x i8] c"               Boss: \00", align 1
@_ZTV18CommissionedWorker = internal unnamed_addr constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTI18CommissionedWorker, ptr @_ZN8EmployeeD2Ev, ptr @_ZN18CommissionedWorkerD0Ev, ptr @_ZN18CommissionedWorker8EarningsEv, ptr @_ZN18CommissionedWorker5PrintEv, ptr @_ZN18CommissionedWorker5RaiseEi, ptr @_ZN18CommissionedWorker7NewWeekEv] }, align 8, !type !10, !type !11, !type !12, !type !13, !type !14, !type !0, !type !1, !type !2, !type !3, !type !4
@.str.3 = private unnamed_addr constant [22 x i8] c"Commissioned Worker: \00", align 1
@_ZTV11PieceWorker = internal unnamed_addr constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTI11PieceWorker, ptr @_ZN8EmployeeD2Ev, ptr @_ZN11PieceWorkerD0Ev, ptr @_ZN11PieceWorker8EarningsEv, ptr @_ZN11PieceWorker5PrintEv, ptr @_ZN10WageWorker5RaiseEi, ptr @_ZN11PieceWorker7NewWeekEv] }, align 8, !type !15, !type !16, !type !17, !type !18, !type !19, !type !20, !type !21, !type !22, !type !23, !type !24, !type !0, !type !1, !type !2, !type !3, !type !4
@.str.4 = private unnamed_addr constant [22 x i8] c"       Piece Worker: \00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"      Hourly Worker: \00", align 1
@_ZTV22HourlyWorkerNoOvertime = internal unnamed_addr constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTI22HourlyWorkerNoOvertime, ptr @_ZN8EmployeeD2Ev, ptr @_ZN22HourlyWorkerNoOvertimeD0Ev, ptr @_ZN22HourlyWorkerNoOvertime8EarningsEv, ptr @_ZN12HourlyWorker5PrintEv, ptr @_ZN12HourlyWorker5RaiseEi, ptr @_ZN12HourlyWorker7NewWeekEv] }, align 8, !type !15, !type !16, !type !17, !type !18, !type !19, !type !25, !type !26, !type !27, !type !28, !type !29, !type !30, !type !31, !type !32, !type !33, !type !34, !type !0, !type !1, !type !2, !type !3, !type !4
@_ZTV20HourlyWorkerOvertime = internal unnamed_addr constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTI20HourlyWorkerOvertime, ptr @_ZN8EmployeeD2Ev, ptr @_ZN20HourlyWorkerOvertimeD0Ev, ptr @_ZN20HourlyWorkerOvertime8EarningsEv, ptr @_ZN12HourlyWorker5PrintEv, ptr @_ZN12HourlyWorker5RaiseEi, ptr @_ZN12HourlyWorker7NewWeekEv] }, align 8, !type !15, !type !16, !type !17, !type !18, !type !19, !type !25, !type !26, !type !27, !type !28, !type !29, !type !35, !type !36, !type !37, !type !38, !type !39, !type !0, !type !1, !type !2, !type !3, !type !4
@stderr = external local_unnamed_addr global ptr, align 8
@.str.6 = private unnamed_addr constant [29 x i8] c"usage: %s <number_of_weeks>\0A\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"employ\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"%d%s%s%f\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"INVALID EMPLOYEE CODE(%d)\0A\00", align 1
@_ZTVN10__cxxabiv117__class_type_infoE = external global ptr
@_ZTS8Employee = internal constant [10 x i8] c"8Employee\00", align 1
@_ZTI8Employee = internal constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTS8Employee }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global ptr
@_ZTS4Boss = internal constant [6 x i8] c"4Boss\00", align 1
@_ZTI4Boss = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS4Boss, ptr @_ZTI8Employee }, align 8
@_ZTS18CommissionedWorker = internal constant [21 x i8] c"18CommissionedWorker\00", align 1
@_ZTI18CommissionedWorker = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS18CommissionedWorker, ptr @_ZTI8Employee }, align 8
@_ZTS10WageWorker = internal constant [13 x i8] c"10WageWorker\00", align 1
@_ZTI10WageWorker = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS10WageWorker, ptr @_ZTI8Employee }, align 8
@_ZTS11PieceWorker = internal constant [14 x i8] c"11PieceWorker\00", align 1
@_ZTI11PieceWorker = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS11PieceWorker, ptr @_ZTI10WageWorker }, align 8
@_ZTS12HourlyWorker = internal constant [15 x i8] c"12HourlyWorker\00", align 1
@_ZTI12HourlyWorker = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS12HourlyWorker, ptr @_ZTI10WageWorker }, align 8
@_ZTS22HourlyWorkerNoOvertime = internal constant [25 x i8] c"22HourlyWorkerNoOvertime\00", align 1
@_ZTI22HourlyWorkerNoOvertime = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS22HourlyWorkerNoOvertime, ptr @_ZTI12HourlyWorker }, align 8
@_ZTS20HourlyWorkerOvertime = internal constant [23 x i8] c"20HourlyWorkerOvertime\00", align 1
@_ZTI20HourlyWorkerOvertime = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS20HourlyWorkerOvertime, ptr @_ZTI12HourlyWorker }, align 8

; Function Attrs: optsize uwtable
define internal void @_GLOBAL__sub_I_driver.cpp() #0 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit) #23
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt8ios_base4InitD1Ev, ptr nonnull @_ZStL8__ioinit, ptr nonnull @__dso_handle) #24
  ret void
}

; Function Attrs: optsize
declare void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nounwind optsize
declare void @_ZNSt8ios_base4InitD1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #2

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #3

; Function Attrs: optsize uwtable
define internal void @_ZN8EmployeeC2EPKcS1_(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(28) %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #0 align 2 {
  store ptr getelementptr inbounds ({ [8 x ptr] }, ptr @_ZTV8Employee, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !47
  %4 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #25
  %5 = add i64 %4, 1
  %6 = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %5) #26
  %7 = getelementptr inbounds %class.Employee, ptr %0, i64 0, i32 1
  store ptr %6, ptr %7, align 8, !tbaa !50
  %8 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(1) %1) #27
  %9 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #25
  %10 = add i64 %9, 1
  %11 = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %10) #26
  %12 = getelementptr inbounds %class.Employee, ptr %0, i64 0, i32 2
  store ptr %11, ptr %12, align 8, !tbaa !55
  %13 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %11, ptr noundef nonnull dereferenceable(1) %2) #27
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nobuiltin optsize allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #6

; Function Attrs: nounwind optsize uwtable
define internal void @_ZN8EmployeeD2Ev(ptr nocapture noundef nonnull align 8 dereferenceable(28) %0) unnamed_addr #7 align 2 {
  store ptr getelementptr inbounds ({ [8 x ptr] }, ptr @_ZTV8Employee, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !47
  %2 = getelementptr inbounds %class.Employee, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !50
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @_ZdaPv(ptr noundef nonnull %3) #28
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr inbounds %class.Employee, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !55
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %6
  tail call void @_ZdaPv(ptr noundef nonnull %8) #28
  br label %11

11:                                               ; preds = %10, %6
  ret void
}

; Function Attrs: noreturn nounwind optsize uwtable
define internal void @_ZN8EmployeeD0Ev(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #8 align 2 {
  tail call void @llvm.trap() #29
  unreachable
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: cold noreturn nounwind
declare void @llvm.trap() #9

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #10

; Function Attrs: mustprogress optsize uwtable
define internal void @_ZN8Employee17PrintWithEarningsEi(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef %1) #11 align 2 {
  %3 = alloca i8, align 1
  %4 = load ptr, ptr %0, align 8, !tbaa !47
  %5 = getelementptr inbounds ptr, ptr %4, i64 3
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(28) %0) #23
  %7 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str, i64 noundef 9) #23
  %8 = load ptr, ptr %0, align 8, !tbaa !47
  %9 = getelementptr inbounds ptr, ptr %8, i64 2
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef float %10(ptr noundef nonnull align 8 dereferenceable(28) %0) #23
  %12 = fpext float %11 to double
  %13 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, double noundef %12) #23
  %14 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull @.str.1, i64 noundef 9) #23
  %15 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %13, i32 noundef %1) #23
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3)
  store i8 10, ptr %3, align 1, !tbaa !56
  %16 = load ptr, ptr %15, align 8, !tbaa !47
  %17 = getelementptr i8, ptr %16, i64 -24
  %18 = load i64, ptr %17, align 8
  %19 = getelementptr inbounds i8, ptr %15, i64 %18
  %20 = getelementptr inbounds %"class.std::ios_base", ptr %19, i64 0, i32 2
  %21 = load i64, ptr %20, align 8, !tbaa !57
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %2
  %24 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef nonnull %3, i64 noundef 1) #23
  br label %27

25:                                               ; preds = %2
  %26 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %15, i8 noundef signext 10) #23
  br label %27

27:                                               ; preds = %25, %23
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3)
  ret void
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #12

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #12

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal noundef float @_ZN4Boss8EarningsEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %0) unnamed_addr #13 align 2 {
  %2 = getelementptr inbounds %class.Boss, ptr %0, i64 0, i32 1
  %3 = load float, ptr %2, align 4, !tbaa !65
  ret float %3
}

; Function Attrs: mustprogress optsize uwtable
define internal void @_ZN4Boss5PrintEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %0) unnamed_addr #11 align 2 {
  %2 = alloca i8, align 1
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.2, i64 noundef 21) #23
  %4 = getelementptr inbounds %class.Employee, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !50
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %15

7:                                                ; preds = %1
  %8 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !47
  %9 = getelementptr i8, ptr %8, i64 -24
  %10 = load i64, ptr %9, align 8
  %11 = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %10
  %12 = getelementptr inbounds %"class.std::ios_base", ptr %11, i64 0, i32 5
  %13 = load i32, ptr %12, align 8, !tbaa !67
  %14 = or i32 %13, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %11, i32 noundef %14) #23
  br label %18

15:                                               ; preds = %1
  %16 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %5) #27
  %17 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %5, i64 noundef %16) #23
  br label %18

18:                                               ; preds = %15, %7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2)
  store i8 32, ptr %2, align 1, !tbaa !56
  %19 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !47
  %20 = getelementptr i8, ptr %19, i64 -24
  %21 = load i64, ptr %20, align 8
  %22 = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %21
  %23 = getelementptr inbounds %"class.std::ios_base", ptr %22, i64 0, i32 2
  %24 = load i64, ptr %23, align 8, !tbaa !57
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %18
  %27 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %2, i64 noundef 1) #23
  br label %30

28:                                               ; preds = %18
  %29 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext 32) #23
  br label %30

30:                                               ; preds = %28, %26
  %31 = phi ptr [ %27, %26 ], [ @_ZSt4cout, %28 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2)
  %32 = getelementptr inbounds %class.Employee, ptr %0, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !55
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %43

35:                                               ; preds = %30
  %36 = load ptr, ptr %31, align 8, !tbaa !47
  %37 = getelementptr i8, ptr %36, i64 -24
  %38 = load i64, ptr %37, align 8
  %39 = getelementptr inbounds i8, ptr %31, i64 %38
  %40 = getelementptr inbounds %"class.std::ios_base", ptr %39, i64 0, i32 5
  %41 = load i32, ptr %40, align 8, !tbaa !67
  %42 = or i32 %41, 1
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %39, i32 noundef %42) #23
  br label %46

43:                                               ; preds = %30
  %44 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %33) #27
  %45 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %31, ptr noundef nonnull %33, i64 noundef %44) #23
  br label %46

46:                                               ; preds = %43, %35
  ret void
}

; Function Attrs: optsize
declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal void @_ZN4Boss5RaiseEi(ptr nocapture noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) unnamed_addr #14 align 2 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %11

4:                                                ; preds = %2
  %5 = sitofp i32 %1 to float
  %6 = getelementptr inbounds %class.Employee, ptr %0, i64 0, i32 3
  %7 = load float, ptr %6, align 8, !tbaa !68
  %8 = getelementptr inbounds %class.Boss, ptr %0, i64 0, i32 1
  %9 = load float, ptr %8, align 4, !tbaa !65
  %10 = tail call float @llvm.fmuladd.f32(float %5, float %7, float %9)
  store float %10, ptr %8, align 4, !tbaa !65
  br label %11

11:                                               ; preds = %4, %2
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #15

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal void @_ZN4Boss7NewWeekEv(ptr nocapture nonnull align 8 %0) unnamed_addr #16 align 2 {
  ret void
}

; Function Attrs: optsize uwtable
define internal void @_ZN18CommissionedWorkerC2EPKcS1_ff(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(40) %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, float noundef %3, float noundef %4) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
  tail call void @_ZN8EmployeeC2EPKcS1_(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef %1, ptr noundef %2) #23
  store ptr getelementptr inbounds ({ [8 x ptr] }, ptr @_ZTV18CommissionedWorker, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !47
  %6 = getelementptr inbounds %class.CommissionedWorker, ptr %0, i64 0, i32 3
  store float 0.000000e+00, ptr %6, align 4, !tbaa !69
  %7 = fcmp ogt float %3, 0.000000e+00
  %8 = select i1 %7, float %3, float 0.000000e+00
  %9 = getelementptr inbounds %class.CommissionedWorker, ptr %0, i64 0, i32 1
  store float %8, ptr %9, align 4, !tbaa !71
  %10 = fcmp olt float %4, 0.000000e+00
  br i1 %10, label %11, label %13

11:                                               ; preds = %5
  %12 = getelementptr inbounds %class.CommissionedWorker, ptr %0, i64 0, i32 2
  store float 0.000000e+00, ptr %12, align 8, !tbaa !72
  br label %18

13:                                               ; preds = %5
  %14 = fcmp ogt float %4, 6.000000e+01
  %15 = getelementptr inbounds %class.CommissionedWorker, ptr %0, i64 0, i32 2
  br i1 %14, label %16, label %17

16:                                               ; preds = %13
  store float 6.000000e+01, ptr %15, align 8, !tbaa !72
  br label %18

17:                                               ; preds = %13
  store float %4, ptr %15, align 8, !tbaa !72
  br label %18

18:                                               ; preds = %17, %16, %11
  %19 = getelementptr inbounds %class.Employee, ptr %0, i64 0, i32 3
  store float 1.000000e+01, ptr %19, align 8, !tbaa !68
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: inlinehint nounwind optsize uwtable
define internal void @_ZN18CommissionedWorkerD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #17 comdat align 2 {
  tail call void @_ZN8EmployeeD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #27
  tail call void @_ZdlPv(ptr noundef nonnull %0) #28
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal noundef float @_ZN18CommissionedWorker8EarningsEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(40) %0) unnamed_addr #18 align 2 {
  %2 = getelementptr inbounds %class.CommissionedWorker, ptr %0, i64 0, i32 1
  %3 = load float, ptr %2, align 4, !tbaa !71
  %4 = fpext float %3 to double
  %5 = getelementptr inbounds %class.CommissionedWorker, ptr %0, i64 0, i32 2
  %6 = load float, ptr %5, align 8, !tbaa !72
  %7 = fpext float %6 to double
  %8 = fdiv double %7, 1.000000e+02
  %9 = getelementptr inbounds %class.CommissionedWorker, ptr %0, i64 0, i32 3
  %10 = load float, ptr %9, align 4, !tbaa !69
  %11 = fpext float %10 to double
  %12 = tail call double @llvm.fmuladd.f64(double %8, double %11, double %4)
  %13 = fptrunc double %12 to float
  ret float %13
}

; Function Attrs: mustprogress optsize uwtable
define internal void @_ZN18CommissionedWorker5PrintEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(40) %0) unnamed_addr #11 align 2 {
  %2 = alloca i8, align 1
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.3, i64 noundef 21) #23
  %4 = getelementptr inbounds %class.Employee, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !50
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %15

7:                                                ; preds = %1
  %8 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !47
  %9 = getelementptr i8, ptr %8, i64 -24
  %10 = load i64, ptr %9, align 8
  %11 = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %10
  %12 = getelementptr inbounds %"class.std::ios_base", ptr %11, i64 0, i32 5
  %13 = load i32, ptr %12, align 8, !tbaa !67
  %14 = or i32 %13, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %11, i32 noundef %14) #23
  br label %18

15:                                               ; preds = %1
  %16 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %5) #27
  %17 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %5, i64 noundef %16) #23
  br label %18

18:                                               ; preds = %15, %7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2)
  store i8 32, ptr %2, align 1, !tbaa !56
  %19 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !47
  %20 = getelementptr i8, ptr %19, i64 -24
  %21 = load i64, ptr %20, align 8
  %22 = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %21
  %23 = getelementptr inbounds %"class.std::ios_base", ptr %22, i64 0, i32 2
  %24 = load i64, ptr %23, align 8, !tbaa !57
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %18
  %27 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %2, i64 noundef 1) #23
  br label %30

28:                                               ; preds = %18
  %29 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext 32) #23
  br label %30

30:                                               ; preds = %28, %26
  %31 = phi ptr [ %27, %26 ], [ @_ZSt4cout, %28 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2)
  %32 = getelementptr inbounds %class.Employee, ptr %0, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !55
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %43

35:                                               ; preds = %30
  %36 = load ptr, ptr %31, align 8, !tbaa !47
  %37 = getelementptr i8, ptr %36, i64 -24
  %38 = load i64, ptr %37, align 8
  %39 = getelementptr inbounds i8, ptr %31, i64 %38
  %40 = getelementptr inbounds %"class.std::ios_base", ptr %39, i64 0, i32 5
  %41 = load i32, ptr %40, align 8, !tbaa !67
  %42 = or i32 %41, 1
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %39, i32 noundef %42) #23
  br label %46

43:                                               ; preds = %30
  %44 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %33) #27
  %45 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %31, ptr noundef nonnull %33, i64 noundef %44) #23
  br label %46

46:                                               ; preds = %43, %35
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal void @_ZN18CommissionedWorker5RaiseEi(ptr nocapture noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) unnamed_addr #14 align 2 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %18

4:                                                ; preds = %2
  %5 = getelementptr inbounds %class.CommissionedWorker, ptr %0, i64 0, i32 2
  %6 = load float, ptr %5, align 8, !tbaa !72
  %7 = sitofp i32 %1 to float
  %8 = fadd float %6, %7
  %9 = fcmp olt float %8, 0.000000e+00
  %10 = fcmp ogt float %8, 6.000000e+01
  %11 = select i1 %10, float 6.000000e+01, float %8
  %12 = select i1 %9, float 0.000000e+00, float %11
  store float %12, ptr %5, align 8, !tbaa !72
  %13 = getelementptr inbounds %class.Employee, ptr %0, i64 0, i32 3
  %14 = load float, ptr %13, align 8, !tbaa !68
  %15 = getelementptr inbounds %class.CommissionedWorker, ptr %0, i64 0, i32 1
  %16 = load float, ptr %15, align 4, !tbaa !71
  %17 = tail call float @llvm.fmuladd.f32(float %7, float %14, float %16)
  store float %17, ptr %15, align 4, !tbaa !71
  br label %18

18:                                               ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal void @_ZN18CommissionedWorker7NewWeekEv(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(40) %0) unnamed_addr #19 align 2 {
  %2 = getelementptr inbounds %class.CommissionedWorker, ptr %0, i64 0, i32 3
  store float 2.500000e+04, ptr %2, align 4, !tbaa !69
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #15

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal void @_ZN10WageWorker5RaiseEi(ptr nocapture noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) unnamed_addr #14 align 2 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %11

4:                                                ; preds = %2
  %5 = sitofp i32 %1 to float
  %6 = getelementptr inbounds %class.Employee, ptr %0, i64 0, i32 3
  %7 = load float, ptr %6, align 8, !tbaa !68
  %8 = getelementptr inbounds %class.Boss, ptr %0, i64 0, i32 1
  %9 = load float, ptr %8, align 4, !tbaa !73
  %10 = tail call float @llvm.fmuladd.f32(float %5, float %7, float %9)
  store float %10, ptr %8, align 4, !tbaa !73
  br label %11

11:                                               ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal noundef float @_ZN11PieceWorker8EarningsEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(36) %0) unnamed_addr #13 align 2 {
  %2 = getelementptr inbounds %class.Boss, ptr %0, i64 0, i32 1
  %3 = load float, ptr %2, align 4, !tbaa !73
  %4 = getelementptr inbounds %class.PieceWorker, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !75
  %6 = sitofp i32 %5 to float
  %7 = fmul float %3, %6
  ret float %7
}

; Function Attrs: mustprogress optsize uwtable
define internal void @_ZN11PieceWorker5PrintEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(36) %0) unnamed_addr #11 align 2 {
  %2 = alloca i8, align 1
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.4, i64 noundef 21) #23
  %4 = getelementptr inbounds %class.Employee, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !50
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %15

7:                                                ; preds = %1
  %8 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !47
  %9 = getelementptr i8, ptr %8, i64 -24
  %10 = load i64, ptr %9, align 8
  %11 = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %10
  %12 = getelementptr inbounds %"class.std::ios_base", ptr %11, i64 0, i32 5
  %13 = load i32, ptr %12, align 8, !tbaa !67
  %14 = or i32 %13, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %11, i32 noundef %14) #23
  br label %18

15:                                               ; preds = %1
  %16 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %5) #27
  %17 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %5, i64 noundef %16) #23
  br label %18

18:                                               ; preds = %15, %7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2)
  store i8 32, ptr %2, align 1, !tbaa !56
  %19 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !47
  %20 = getelementptr i8, ptr %19, i64 -24
  %21 = load i64, ptr %20, align 8
  %22 = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %21
  %23 = getelementptr inbounds %"class.std::ios_base", ptr %22, i64 0, i32 2
  %24 = load i64, ptr %23, align 8, !tbaa !57
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %18
  %27 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %2, i64 noundef 1) #23
  br label %30

28:                                               ; preds = %18
  %29 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext 32) #23
  br label %30

30:                                               ; preds = %28, %26
  %31 = phi ptr [ %27, %26 ], [ @_ZSt4cout, %28 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2)
  %32 = getelementptr inbounds %class.Employee, ptr %0, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !55
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %43

35:                                               ; preds = %30
  %36 = load ptr, ptr %31, align 8, !tbaa !47
  %37 = getelementptr i8, ptr %36, i64 -24
  %38 = load i64, ptr %37, align 8
  %39 = getelementptr inbounds i8, ptr %31, i64 %38
  %40 = getelementptr inbounds %"class.std::ios_base", ptr %39, i64 0, i32 5
  %41 = load i32, ptr %40, align 8, !tbaa !67
  %42 = or i32 %41, 1
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %39, i32 noundef %42) #23
  br label %46

43:                                               ; preds = %30
  %44 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %33) #27
  %45 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %31, ptr noundef nonnull %33, i64 noundef %44) #23
  br label %46

46:                                               ; preds = %43, %35
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal void @_ZN11PieceWorker7NewWeekEv(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(36) %0) unnamed_addr #19 align 2 {
  %2 = getelementptr inbounds %class.PieceWorker, ptr %0, i64 0, i32 1
  store i32 3, ptr %2, align 8, !tbaa !75
  ret void
}

; Function Attrs: mustprogress optsize uwtable
define internal void @_ZN12HourlyWorker5PrintEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(36) %0) unnamed_addr #11 align 2 {
  %2 = alloca i8, align 1
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.5, i64 noundef 21) #23
  %4 = getelementptr inbounds %class.Employee, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !50
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %15

7:                                                ; preds = %1
  %8 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !47
  %9 = getelementptr i8, ptr %8, i64 -24
  %10 = load i64, ptr %9, align 8
  %11 = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %10
  %12 = getelementptr inbounds %"class.std::ios_base", ptr %11, i64 0, i32 5
  %13 = load i32, ptr %12, align 8, !tbaa !67
  %14 = or i32 %13, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %11, i32 noundef %14) #23
  br label %18

15:                                               ; preds = %1
  %16 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %5) #27
  %17 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %5, i64 noundef %16) #23
  br label %18

18:                                               ; preds = %15, %7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2)
  store i8 32, ptr %2, align 1, !tbaa !56
  %19 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !47
  %20 = getelementptr i8, ptr %19, i64 -24
  %21 = load i64, ptr %20, align 8
  %22 = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %21
  %23 = getelementptr inbounds %"class.std::ios_base", ptr %22, i64 0, i32 2
  %24 = load i64, ptr %23, align 8, !tbaa !57
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %18
  %27 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %2, i64 noundef 1) #23
  br label %30

28:                                               ; preds = %18
  %29 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext 32) #23
  br label %30

30:                                               ; preds = %28, %26
  %31 = phi ptr [ %27, %26 ], [ @_ZSt4cout, %28 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2)
  %32 = getelementptr inbounds %class.Employee, ptr %0, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !55
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %43

35:                                               ; preds = %30
  %36 = load ptr, ptr %31, align 8, !tbaa !47
  %37 = getelementptr i8, ptr %36, i64 -24
  %38 = load i64, ptr %37, align 8
  %39 = getelementptr inbounds i8, ptr %31, i64 %38
  %40 = getelementptr inbounds %"class.std::ios_base", ptr %39, i64 0, i32 5
  %41 = load i32, ptr %40, align 8, !tbaa !67
  %42 = or i32 %41, 1
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %39, i32 noundef %42) #23
  br label %46

43:                                               ; preds = %30
  %44 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %33) #27
  %45 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %31, ptr noundef nonnull %33, i64 noundef %44) #23
  br label %46

46:                                               ; preds = %43, %35
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal void @_ZN12HourlyWorker5RaiseEi(ptr nocapture noundef nonnull align 8 dereferenceable(36) %0, i32 noundef %1) unnamed_addr #14 align 2 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %13

4:                                                ; preds = %2
  %5 = getelementptr inbounds %class.Boss, ptr %0, i64 0, i32 1
  %6 = load float, ptr %5, align 4, !tbaa !73
  %7 = sitofp i32 %1 to float
  %8 = getelementptr inbounds %class.Employee, ptr %0, i64 0, i32 3
  %9 = load float, ptr %8, align 8, !tbaa !68
  %10 = tail call float @llvm.fmuladd.f32(float %7, float %9, float %6)
  %11 = fcmp ogt float %10, 0.000000e+00
  %12 = select i1 %11, float %10, float 0.000000e+00
  store float %12, ptr %5, align 4, !tbaa !73
  br label %13

13:                                               ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal void @_ZN12HourlyWorker7NewWeekEv(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(36) %0) unnamed_addr #19 align 2 {
  %2 = getelementptr inbounds %class.HourlyWorker, ptr %0, i64 0, i32 1
  store float 4.400000e+01, ptr %2, align 8, !tbaa !77
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal noundef float @_ZN22HourlyWorkerNoOvertime8EarningsEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(36) %0) unnamed_addr #13 align 2 {
  %2 = getelementptr inbounds %class.Boss, ptr %0, i64 0, i32 1
  %3 = load float, ptr %2, align 4, !tbaa !73
  %4 = getelementptr inbounds %class.HourlyWorker, ptr %0, i64 0, i32 1
  %5 = load float, ptr %4, align 8, !tbaa !77
  %6 = fmul float %3, %5
  ret float %6
}

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal noundef float @_ZN20HourlyWorkerOvertime8EarningsEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(36) %0) unnamed_addr #18 align 2 {
  %2 = getelementptr inbounds %class.HourlyWorker, ptr %0, i64 0, i32 1
  %3 = load float, ptr %2, align 8, !tbaa !77
  %4 = fcmp ogt float %3, 4.000000e+01
  %5 = fadd float %3, -4.000000e+01
  %6 = fpext float %5 to double
  %7 = select i1 %4, double %6, double 0.000000e+00
  %8 = getelementptr inbounds %class.Boss, ptr %0, i64 0, i32 1
  %9 = load float, ptr %8, align 4, !tbaa !73
  %10 = fmul float %3, %9
  %11 = fpext float %10 to double
  %12 = fpext float %9 to double
  %13 = fmul double %12, 5.000000e-01
  %14 = tail call double @llvm.fmuladd.f64(double %13, double %7, double %11)
  %15 = fptrunc double %14 to float
  ret float %15
}

; Function Attrs: norecurse optsize uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nocapture noundef readonly %1) #20 personality ptr @__gxx_personality_v0 {
  %3 = alloca i32, align 4
  %4 = alloca [80 x i8], align 16
  %5 = alloca [80 x i8], align 16
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %5) #24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #24
  %8 = icmp eq i32 %0, 2
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = load ptr, ptr @stderr, align 8, !tbaa !79
  %11 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7) #30
  br label %127

12:                                               ; preds = %2
  %13 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !47
  %14 = getelementptr i8, ptr %13, i64 -24
  %15 = load i64, ptr %14, align 8
  %16 = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %15
  %17 = getelementptr inbounds %"class.std::ios_base", ptr %16, i64 0, i32 3
  %18 = load i32, ptr %17, align 8, !tbaa !80
  %19 = or i32 %18, 1028
  store i32 %19, ptr %17, align 8, !tbaa !80
  %20 = load i64, ptr %14, align 8
  %21 = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %20
  %22 = getelementptr inbounds %"class.std::ios_base", ptr %21, i64 0, i32 1
  store i64 2, ptr %22, align 8, !tbaa !81
  %23 = getelementptr inbounds ptr, ptr %1, i64 1
  %24 = load ptr, ptr %23, align 8, !tbaa !79
  %25 = tail call i32 @atoi(ptr nocapture noundef %24) #25
  br label %26

26:                                               ; preds = %88, %12
  %27 = phi ptr [ %90, %88 ], [ null, %12 ]
  %28 = call i32 (ptr, ...) @__isoc99_scanf(ptr noundef nonnull @.str.8, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6) #23
  %29 = icmp eq i32 %28, 4
  br i1 %29, label %34, label %30

30:                                               ; preds = %26
  %.lcssa4 = phi ptr [ %27, %26 ]
  %31 = icmp sgt i32 %25, 0
  br i1 %31, label %32, label %127

32:                                               ; preds = %30
  %33 = icmp eq ptr %.lcssa4, null
  br label %92

34:                                               ; preds = %26
  %35 = load i32, ptr %3, align 4, !tbaa !82
  switch i32 %35, label %85 [
    i32 1, label %36
    i32 7, label %46
    i32 6, label %57
    i32 4, label %68
    i32 2, label %78
  ]

36:                                               ; preds = %34
  %37 = call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #26
  %38 = load float, ptr %6, align 4, !tbaa !83
  invoke void @_ZN8EmployeeC2EPKcS1_(ptr noundef nonnull align 8 dereferenceable(28) %37, ptr noundef nonnull %4, ptr noundef nonnull %5) #23
          to label %39 unwind label %44

39:                                               ; preds = %36
  store ptr getelementptr inbounds ({ [8 x ptr] }, ptr @_ZTV4Boss, i64 0, inrange i32 0, i64 2), ptr %37, align 8, !tbaa !47
  %40 = fcmp ogt float %38, 0.000000e+00
  %41 = select i1 %40, float %38, float 0.000000e+00
  %42 = getelementptr inbounds %class.Boss, ptr %37, i64 0, i32 1
  store float %41, ptr %42, align 4, !tbaa !65
  %43 = getelementptr inbounds %class.Employee, ptr %37, i64 0, i32 3
  store float 1.000000e+02, ptr %43, align 8, !tbaa !68
  br label %88

44:                                               ; preds = %36
  %.lcssa17 = phi ptr [ %37, %36 ]
  %45 = landingpad { ptr, i32 }
          cleanup
  br label %129

46:                                               ; preds = %34
  %47 = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #26
  %48 = load float, ptr %6, align 4, !tbaa !83
  invoke void @_ZN8EmployeeC2EPKcS1_(ptr noundef nonnull align 8 dereferenceable(28) %47, ptr noundef nonnull %4, ptr noundef nonnull %5) #23
          to label %49 unwind label %55

49:                                               ; preds = %46
  %50 = fcmp ogt float %48, 0.000000e+00
  %51 = select i1 %50, float %48, float 0.000000e+00
  %52 = getelementptr inbounds %class.Boss, ptr %47, i64 0, i32 1
  store float %51, ptr %52, align 4, !tbaa !73
  %53 = getelementptr inbounds %class.Employee, ptr %47, i64 0, i32 3
  store float 5.000000e-01, ptr %53, align 8, !tbaa !68
  %54 = getelementptr inbounds %class.HourlyWorker, ptr %47, i64 0, i32 1
  store float 0.000000e+00, ptr %54, align 8, !tbaa !77
  store ptr getelementptr inbounds ({ [8 x ptr] }, ptr @_ZTV22HourlyWorkerNoOvertime, i64 0, inrange i32 0, i64 2), ptr %47, align 8, !tbaa !47
  br label %88

55:                                               ; preds = %46
  %.lcssa3 = phi ptr [ %47, %46 ]
  %56 = landingpad { ptr, i32 }
          cleanup
  br label %129

57:                                               ; preds = %34
  %58 = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #26
  %59 = load float, ptr %6, align 4, !tbaa !83
  invoke void @_ZN8EmployeeC2EPKcS1_(ptr noundef nonnull align 8 dereferenceable(28) %58, ptr noundef nonnull %4, ptr noundef nonnull %5) #23
          to label %60 unwind label %66

60:                                               ; preds = %57
  %61 = fcmp ogt float %59, 0.000000e+00
  %62 = select i1 %61, float %59, float 0.000000e+00
  %63 = getelementptr inbounds %class.Boss, ptr %58, i64 0, i32 1
  store float %62, ptr %63, align 4, !tbaa !73
  %64 = getelementptr inbounds %class.Employee, ptr %58, i64 0, i32 3
  store float 5.000000e-01, ptr %64, align 8, !tbaa !68
  %65 = getelementptr inbounds %class.HourlyWorker, ptr %58, i64 0, i32 1
  store float 0.000000e+00, ptr %65, align 8, !tbaa !77
  store ptr getelementptr inbounds ({ [8 x ptr] }, ptr @_ZTV20HourlyWorkerOvertime, i64 0, inrange i32 0, i64 2), ptr %58, align 8, !tbaa !47
  br label %88

66:                                               ; preds = %57
  %.lcssa2 = phi ptr [ %58, %57 ]
  %67 = landingpad { ptr, i32 }
          cleanup
  br label %129

68:                                               ; preds = %34
  %69 = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #26
  %70 = load float, ptr %6, align 4, !tbaa !83
  invoke void @_ZN8EmployeeC2EPKcS1_(ptr noundef nonnull align 8 dereferenceable(28) %69, ptr noundef nonnull %4, ptr noundef nonnull %5) #23
          to label %71 unwind label %76

71:                                               ; preds = %68
  %72 = fcmp ogt float %70, 0.000000e+00
  %73 = select i1 %72, float %70, float 0.000000e+00
  %74 = getelementptr inbounds %class.Boss, ptr %69, i64 0, i32 1
  store float %73, ptr %74, align 4, !tbaa !73
  store ptr getelementptr inbounds ({ [8 x ptr] }, ptr @_ZTV11PieceWorker, i64 0, inrange i32 0, i64 2), ptr %69, align 8, !tbaa !47
  %75 = getelementptr inbounds %class.Employee, ptr %69, i64 0, i32 3
  store float 1.500000e+01, ptr %75, align 8, !tbaa !68
  br label %88

76:                                               ; preds = %68
  %.lcssa1 = phi ptr [ %69, %68 ]
  %77 = landingpad { ptr, i32 }
          cleanup
  br label %129

78:                                               ; preds = %34
  %79 = call i32 (ptr, ...) @__isoc99_scanf(ptr noundef nonnull @.str.9, ptr noundef nonnull %7) #23
  %80 = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #26
  %81 = load float, ptr %6, align 4, !tbaa !83
  %82 = load float, ptr %7, align 4, !tbaa !83
  invoke void @_ZN18CommissionedWorkerC2EPKcS1_ff(ptr noundef nonnull align 8 dereferenceable(40) %80, ptr noundef nonnull %4, ptr noundef nonnull %5, float noundef %81, float noundef %82) #23
          to label %88 unwind label %83

83:                                               ; preds = %78
  %.lcssa = phi ptr [ %80, %78 ]
  %84 = landingpad { ptr, i32 }
          cleanup
  br label %129

85:                                               ; preds = %34
  %.lcssa11 = phi i32 [ %35, %34 ]
  %86 = load ptr, ptr @stderr, align 8, !tbaa !79
  %87 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %86, ptr noundef nonnull @.str.10, i32 noundef %.lcssa11) #30
  br label %127

88:                                               ; preds = %78, %71, %60, %49, %39
  %89 = phi ptr [ %37, %39 ], [ %47, %49 ], [ %58, %60 ], [ %69, %71 ], [ %80, %78 ]
  %90 = call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #26
  store ptr %89, ptr %90, align 8, !tbaa !84
  %91 = getelementptr inbounds %class.EmployeeNode, ptr %90, i64 0, i32 1
  store ptr %27, ptr %91, align 8, !tbaa !86
  br label %26, !llvm.loop !87

92:                                               ; preds = %124, %32
  %93 = phi i32 [ 0, %32 ], [ %95, %124 ]
  %94 = phi i32 [ 0, %32 ], [ %125, %124 ]
  %95 = add nuw nsw i32 %93, 1
  br i1 %33, label %124, label %96

96:                                               ; preds = %96, %92
  %97 = phi ptr [ %103, %96 ], [ %.lcssa4, %92 ]
  %98 = load ptr, ptr %97, align 8, !tbaa !84
  %99 = load ptr, ptr %98, align 8, !tbaa !47
  %100 = getelementptr inbounds ptr, ptr %99, i64 5
  %101 = load ptr, ptr %100, align 8
  call void %101(ptr noundef nonnull align 8 dereferenceable(28) %98) #23
  %102 = getelementptr inbounds %class.EmployeeNode, ptr %97, i64 0, i32 1
  %103 = load ptr, ptr %102, align 8, !tbaa !79
  %104 = icmp eq ptr %103, null
  br i1 %104, label %105, label %96, !llvm.loop !89

105:                                              ; preds = %105, %96
  %106 = phi ptr [ %109, %105 ], [ %.lcssa4, %96 ]
  %107 = load ptr, ptr %106, align 8, !tbaa !84
  call void @_ZN8Employee17PrintWithEarningsEi(ptr noundef nonnull align 8 dereferenceable(28) %107, i32 noundef %95) #23
  %108 = getelementptr inbounds %class.EmployeeNode, ptr %106, i64 0, i32 1
  %109 = load ptr, ptr %108, align 8, !tbaa !79
  %110 = icmp eq ptr %109, null
  br i1 %110, label %111, label %105, !llvm.loop !90

111:                                              ; preds = %105
  %112 = urem i32 %94, 10
  %113 = icmp ne i32 %112, 0
  %114 = or i1 %113, %33
  br i1 %114, label %124, label %115

115:                                              ; preds = %115, %111
  %116 = phi ptr [ %122, %115 ], [ %.lcssa4, %111 ]
  %117 = load ptr, ptr %116, align 8, !tbaa !84
  %118 = load ptr, ptr %117, align 8, !tbaa !47
  %119 = getelementptr inbounds ptr, ptr %118, i64 4
  %120 = load ptr, ptr %119, align 8
  call void %120(ptr noundef nonnull align 8 dereferenceable(28) %117, i32 noundef 1) #23
  %121 = getelementptr inbounds %class.EmployeeNode, ptr %116, i64 0, i32 1
  %122 = load ptr, ptr %121, align 8, !tbaa !79
  %123 = icmp eq ptr %122, null
  br i1 %123, label %124, label %115, !llvm.loop !91

124:                                              ; preds = %115, %111, %92
  %125 = add nuw nsw i32 %94, 1
  %126 = icmp eq i32 %125, %25
  br i1 %126, label %127, label %92, !llvm.loop !92

127:                                              ; preds = %124, %85, %30, %9
  %128 = phi i32 [ 1, %9 ], [ -1, %85 ], [ 0, %30 ], [ 0, %124 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #24
  ret i32 %128

129:                                              ; preds = %83, %76, %66, %55, %44
  %130 = phi ptr [ %.lcssa, %83 ], [ %.lcssa1, %76 ], [ %.lcssa2, %66 ], [ %.lcssa3, %55 ], [ %.lcssa17, %44 ]
  %131 = phi { ptr, i32 } [ %84, %83 ], [ %77, %76 ], [ %67, %66 ], [ %56, %55 ], [ %45, %44 ]
  call void @_ZdlPv(ptr noundef nonnull %130) #28
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #24
  resume { ptr, i32 } %131
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #21

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(read)
declare i32 @atoi(ptr nocapture noundef) local_unnamed_addr #22

; Function Attrs: nofree nounwind optsize
declare noundef i32 @__isoc99_scanf(ptr nocapture noundef readonly, ...) local_unnamed_addr #21

; Function Attrs: nobuiltin optsize allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind optsize uwtable
define internal void @_ZN11PieceWorkerD0Ev(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #17 comdat align 2 {
  tail call void @_ZN8EmployeeD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %0) #27
  tail call void @_ZdlPv(ptr noundef nonnull %0) #28
  ret void
}

; Function Attrs: inlinehint nounwind optsize uwtable
define internal void @_ZN20HourlyWorkerOvertimeD0Ev(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #17 comdat align 2 {
  tail call void @_ZN8EmployeeD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %0) #27
  tail call void @_ZdlPv(ptr noundef nonnull %0) #28
  ret void
}

; Function Attrs: inlinehint nounwind optsize uwtable
define internal void @_ZN22HourlyWorkerNoOvertimeD0Ev(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #17 comdat align 2 {
  tail call void @_ZN8EmployeeD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %0) #27
  tail call void @_ZdlPv(ptr noundef nonnull %0) #28
  ret void
}

; Function Attrs: inlinehint nounwind optsize uwtable
define internal void @_ZN4BossD0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #17 comdat align 2 {
  tail call void @_ZN8EmployeeD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #27
  tail call void @_ZdlPv(ptr noundef nonnull %0) #28
  ret void
}

attributes #0 = { optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
attributes #4 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin optsize allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold noreturn nounwind }
attributes #10 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { mustprogress nofree norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { inlinehint nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { norecurse optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree nounwind optsize willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { optsize }
attributes #24 = { nounwind }
attributes #25 = { nounwind optsize willreturn memory(read) }
attributes #26 = { builtin optsize allocsize(0) }
attributes #27 = { nounwind optsize }
attributes #28 = { builtin nounwind optsize }
attributes #29 = { noreturn nounwind }
attributes #30 = { cold optsize }

!llvm.ident = !{!40}
!llvm.module.flags = !{!41, !42, !43, !44, !45, !46}

!0 = !{i64 16, !"_ZTS8Employee"}
!1 = !{i64 32, !"_ZTSM8EmployeeFfvE.virtual"}
!2 = !{i64 40, !"_ZTSM8EmployeeFvvE.virtual"}
!3 = !{i64 48, !"_ZTSM8EmployeeFviE.virtual"}
!4 = !{i64 56, !"_ZTSM8EmployeeFvvE.virtual"}
!5 = !{i64 16, !"_ZTS4Boss"}
!6 = !{i64 32, !"_ZTSM4BossFfvE.virtual"}
!7 = !{i64 40, !"_ZTSM4BossFvvE.virtual"}
!8 = !{i64 48, !"_ZTSM4BossFviE.virtual"}
!9 = !{i64 56, !"_ZTSM4BossFvvE.virtual"}
!10 = !{i64 16, !"_ZTS18CommissionedWorker"}
!11 = !{i64 32, !"_ZTSM18CommissionedWorkerFfvE.virtual"}
!12 = !{i64 40, !"_ZTSM18CommissionedWorkerFvvE.virtual"}
!13 = !{i64 48, !"_ZTSM18CommissionedWorkerFviE.virtual"}
!14 = !{i64 56, !"_ZTSM18CommissionedWorkerFvvE.virtual"}
!15 = !{i64 16, !"_ZTS10WageWorker"}
!16 = !{i64 32, !"_ZTSM10WageWorkerFfvE.virtual"}
!17 = !{i64 40, !"_ZTSM10WageWorkerFvvE.virtual"}
!18 = !{i64 48, !"_ZTSM10WageWorkerFviE.virtual"}
!19 = !{i64 56, !"_ZTSM10WageWorkerFvvE.virtual"}
!20 = !{i64 16, !"_ZTS11PieceWorker"}
!21 = !{i64 32, !"_ZTSM11PieceWorkerFfvE.virtual"}
!22 = !{i64 40, !"_ZTSM11PieceWorkerFvvE.virtual"}
!23 = !{i64 48, !"_ZTSM11PieceWorkerFviE.virtual"}
!24 = !{i64 56, !"_ZTSM11PieceWorkerFvvE.virtual"}
!25 = !{i64 16, !"_ZTS12HourlyWorker"}
!26 = !{i64 32, !"_ZTSM12HourlyWorkerFfvE.virtual"}
!27 = !{i64 40, !"_ZTSM12HourlyWorkerFvvE.virtual"}
!28 = !{i64 48, !"_ZTSM12HourlyWorkerFviE.virtual"}
!29 = !{i64 56, !"_ZTSM12HourlyWorkerFvvE.virtual"}
!30 = !{i64 16, !"_ZTS22HourlyWorkerNoOvertime"}
!31 = !{i64 32, !"_ZTSM22HourlyWorkerNoOvertimeFfvE.virtual"}
!32 = !{i64 40, !"_ZTSM22HourlyWorkerNoOvertimeFvvE.virtual"}
!33 = !{i64 48, !"_ZTSM22HourlyWorkerNoOvertimeFviE.virtual"}
!34 = !{i64 56, !"_ZTSM22HourlyWorkerNoOvertimeFvvE.virtual"}
!35 = !{i64 16, !"_ZTS20HourlyWorkerOvertime"}
!36 = !{i64 32, !"_ZTSM20HourlyWorkerOvertimeFfvE.virtual"}
!37 = !{i64 40, !"_ZTSM20HourlyWorkerOvertimeFvvE.virtual"}
!38 = !{i64 48, !"_ZTSM20HourlyWorkerOvertimeFviE.virtual"}
!39 = !{i64 56, !"_ZTSM20HourlyWorkerOvertimeFvvE.virtual"}
!40 = !{!"clang version 17.0.6 (https://github.com/Casperento/llvm-project.git 9b0073551ece0d22bf3378af2b03e456a26031b6)"}
!41 = !{i32 1, !"wchar_size", i32 4}
!42 = !{i32 8, !"PIC Level", i32 2}
!43 = !{i32 7, !"PIE Level", i32 2}
!44 = !{i32 7, !"uwtable", i32 2}
!45 = !{i32 1, !"ThinLTO", i32 0}
!46 = !{i32 1, !"EnableSplitLTOUnit", i32 1}
!47 = !{!48, !48, i64 0}
!48 = !{!"vtable pointer", !49, i64 0}
!49 = !{!"Simple C++ TBAA"}
!50 = !{!51, !52, i64 8}
!51 = !{!"_ZTS8Employee", !52, i64 8, !52, i64 16, !54, i64 24}
!52 = !{!"any pointer", !53, i64 0}
!53 = !{!"omnipotent char", !49, i64 0}
!54 = !{!"float", !53, i64 0}
!55 = !{!51, !52, i64 16}
!56 = !{!53, !53, i64 0}
!57 = !{!58, !59, i64 16}
!58 = !{!"_ZTSSt8ios_base", !59, i64 8, !59, i64 16, !60, i64 24, !61, i64 28, !61, i64 32, !52, i64 40, !62, i64 48, !53, i64 64, !63, i64 192, !52, i64 200, !64, i64 208}
!59 = !{!"long", !53, i64 0}
!60 = !{!"_ZTSSt13_Ios_Fmtflags", !53, i64 0}
!61 = !{!"_ZTSSt12_Ios_Iostate", !53, i64 0}
!62 = !{!"_ZTSNSt8ios_base6_WordsE", !52, i64 0, !59, i64 8}
!63 = !{!"int", !53, i64 0}
!64 = !{!"_ZTSSt6locale", !52, i64 0}
!65 = !{!66, !54, i64 28}
!66 = !{!"_ZTS4Boss", !51, i64 0, !54, i64 28}
!67 = !{!58, !61, i64 32}
!68 = !{!51, !54, i64 24}
!69 = !{!70, !54, i64 36}
!70 = !{!"_ZTS18CommissionedWorker", !51, i64 0, !54, i64 28, !54, i64 32, !54, i64 36}
!71 = !{!70, !54, i64 28}
!72 = !{!70, !54, i64 32}
!73 = !{!74, !54, i64 28}
!74 = !{!"_ZTS10WageWorker", !51, i64 0, !54, i64 28}
!75 = !{!76, !63, i64 32}
!76 = !{!"_ZTS11PieceWorker", !74, i64 0, !63, i64 32}
!77 = !{!78, !54, i64 32}
!78 = !{!"_ZTS12HourlyWorker", !74, i64 0, !54, i64 32}
!79 = !{!52, !52, i64 0}
!80 = !{!60, !60, i64 0}
!81 = !{!58, !59, i64 8}
!82 = !{!63, !63, i64 0}
!83 = !{!54, !54, i64 0}
!84 = !{!85, !52, i64 0}
!85 = !{!"_ZTS12EmployeeNode", !52, i64 0, !52, i64 8}
!86 = !{!85, !52, i64 8}
!87 = distinct !{!87, !88}
!88 = !{!"llvm.loop.mustprogress"}
!89 = distinct !{!89, !88}
!90 = distinct !{!90, !88}
!91 = distinct !{!91, !88}
!92 = distinct !{!92, !88}
