; ModuleID = '/src/llvm-test-suite/build/SingleSource/Benchmarks/Misc-C++/oopack_v1p8.e.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%class.MaxBenchmark = type { %class.Benchmark }
%class.Benchmark = type { ptr }
%class.Complex = type { double, double }

$_ZNK16ComplexBenchmark4nameEv = comdat any

$_ZNK17IteratorBenchmark4nameEv = comdat any

$_ZNK15MatrixBenchmark4nameEv = comdat any

$_ZNK12MaxBenchmark4nameEv = comdat any

$_ZTS9Benchmark = comdat any

$_ZTI9Benchmark = comdat any

@llvm.global_ctors = appending global [0 x { i32, ptr, ptr }] zeroinitializer
@_ZN9Benchmark5countE = internal global i32 4, align 4
@_ZN9Benchmark4listE = internal global [4 x ptr] [ptr @TheMaxBenchmark, ptr @TheMatrixBenchmark, ptr @TheIteratorBenchmark, ptr @TheComplexBenchmark], align 16
@U = internal global [1000 x double] zeroinitializer, align 16
@MaxResult = internal global double 0.000000e+00, align 8
@TheMaxBenchmark = internal global %class.MaxBenchmark { %class.Benchmark { ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTV12MaxBenchmark, i64 0, inrange i32 0, i64 2) } }, align 8
@C = internal global [2500 x double] zeroinitializer, align 16
@D = internal global [2500 x double] zeroinitializer, align 16
@E = internal global [2500 x double] zeroinitializer, align 16
@TheMatrixBenchmark = internal global %class.MaxBenchmark { %class.Benchmark { ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTV15MatrixBenchmark, i64 0, inrange i32 0, i64 2) } }, align 8
@A = internal global [1000 x double] zeroinitializer, align 16
@B = internal global [1000 x double] zeroinitializer, align 16
@IteratorResult = internal global double 0.000000e+00, align 8
@TheIteratorBenchmark = internal global %class.MaxBenchmark { %class.Benchmark { ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTV17IteratorBenchmark, i64 0, inrange i32 0, i64 2) } }, align 8
@TheComplexBenchmark = internal global %class.MaxBenchmark { %class.Benchmark { ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTV16ComplexBenchmark, i64 0, inrange i32 0, i64 2) } }, align 8
@X = internal global [1000 x %class.Complex] zeroinitializer, align 16
@Y = internal global [1000 x %class.Complex] zeroinitializer, align 16
@.str = private unnamed_addr constant [75 x i8] c"%-10s: warning: relative checksum error of %g between C (%g) and oop (%g)\0A\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"%-10s %10d\0A\00", align 1
@.str.8 = private unnamed_addr constant [51 x i8] c"Usage:\09%s test1=iterations1 test2=iterations2 ...\0A\00", align 1
@__const.main.str1 = private unnamed_addr constant [6 x i8] c"a.out\00", align 1
@__const.main.str2 = private unnamed_addr constant [10 x i8] c"Max=15000\00", align 1
@__const.main.str3 = private unnamed_addr constant [11 x i8] c"Matrix=200\00", align 1
@__const.main.str4 = private unnamed_addr constant [13 x i8] c"Complex=2000\00", align 1
@__const.main.str5 = private unnamed_addr constant [15 x i8] c"Iterator=20000\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"%-10s %10s  %11s  %11s  %5s\0A\00", align 1
@.str.11 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"Seconds  \00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"Mflops  \00", align 1
@.str.14 = private unnamed_addr constant [35 x i8] c"%-10s %10s  %5s %5s  %5s %5s  %5s\0A\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"Test\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"Iterations\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c" C \00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"OOP\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"Ratio\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"----\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"----------\00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c"-----------\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"-----\00", align 1
@.str.24 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.25 = private unnamed_addr constant [39 x i8] c"missing iteration count for test '%s'\0A\00", align 1
@.str.26 = private unnamed_addr constant [35 x i8] c"skipping non-existent test = '%s'\0A\00", align 1
@_ZTV12MaxBenchmark = internal unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTI12MaxBenchmark, ptr @_ZNK12MaxBenchmark4nameEv, ptr @_ZNK12MaxBenchmark4initEv, ptr @_ZNK12MaxBenchmark7c_styleEv, ptr @_ZNK12MaxBenchmark9oop_styleEv, ptr @_ZNK12MaxBenchmark5checkEiRdS0_] }, align 8, !type !0, !type !1, !type !2, !type !3, !type !4, !type !5, !type !6, !type !7, !type !8, !type !9, !type !10, !type !11
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global ptr
@_ZTS12MaxBenchmark = internal constant [15 x i8] c"12MaxBenchmark\00", align 1
@_ZTVN10__cxxabiv117__class_type_infoE = external global ptr
@_ZTS9Benchmark = internal constant [11 x i8] c"9Benchmark\00", comdat, align 1
@_ZTI9Benchmark = internal constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTS9Benchmark }, comdat, align 8
@_ZTI12MaxBenchmark = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS12MaxBenchmark, ptr @_ZTI9Benchmark }, align 8
@_ZTV15MatrixBenchmark = internal unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTI15MatrixBenchmark, ptr @_ZNK15MatrixBenchmark4nameEv, ptr @_ZNK15MatrixBenchmark4initEv, ptr @_ZNK15MatrixBenchmark7c_styleEv, ptr @_ZNK15MatrixBenchmark9oop_styleEv, ptr @_ZNK15MatrixBenchmark5checkEiRdS0_] }, align 8, !type !12, !type !13, !type !14, !type !15, !type !16, !type !17, !type !6, !type !7, !type !8, !type !9, !type !10, !type !11
@_ZTS15MatrixBenchmark = internal constant [18 x i8] c"15MatrixBenchmark\00", align 1
@_ZTI15MatrixBenchmark = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS15MatrixBenchmark, ptr @_ZTI9Benchmark }, align 8
@_ZTV17IteratorBenchmark = internal unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTI17IteratorBenchmark, ptr @_ZNK17IteratorBenchmark4nameEv, ptr @_ZNK17IteratorBenchmark4initEv, ptr @_ZNK17IteratorBenchmark7c_styleEv, ptr @_ZNK17IteratorBenchmark9oop_styleEv, ptr @_ZNK17IteratorBenchmark5checkEiRdS0_] }, align 8, !type !18, !type !19, !type !20, !type !21, !type !22, !type !23, !type !6, !type !7, !type !8, !type !9, !type !10, !type !11
@_ZTS17IteratorBenchmark = internal constant [20 x i8] c"17IteratorBenchmark\00", align 1
@_ZTI17IteratorBenchmark = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS17IteratorBenchmark, ptr @_ZTI9Benchmark }, align 8
@_ZTV16ComplexBenchmark = internal unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTI16ComplexBenchmark, ptr @_ZNK16ComplexBenchmark4nameEv, ptr @_ZNK16ComplexBenchmark4initEv, ptr @_ZNK16ComplexBenchmark7c_styleEv, ptr @_ZNK16ComplexBenchmark9oop_styleEv, ptr @_ZNK16ComplexBenchmark5checkEiRdS0_] }, align 8, !type !24, !type !25, !type !26, !type !27, !type !28, !type !29, !type !6, !type !7, !type !8, !type !9, !type !10, !type !11
@_ZTS16ComplexBenchmark = internal constant [19 x i8] c"16ComplexBenchmark\00", align 1
@_ZTI16ComplexBenchmark = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS16ComplexBenchmark, ptr @_ZTI9Benchmark }, align 8
@.str.28 = private unnamed_addr constant [4 x i8] c"Max\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"Matrix\00", align 1
@.str.30 = private unnamed_addr constant [9 x i8] c"Iterator\00", align 1
@.str.31 = private unnamed_addr constant [8 x i8] c"Complex\00", align 1
@str = private unnamed_addr constant [60 x i8] c"E.g.:\09a.out  Max=5000 Matrix=50 Complex=2000  Iterator=5000\00", align 1
@str.32 = private unnamed_addr constant [7 x i8] c"\0ADONE!\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define internal void @_ZNK12MaxBenchmark7c_styleEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #0 align 2 {
  %2 = load double, ptr @U, align 16, !tbaa !37
  br label %4

3:                                                ; preds = %4
  %.lcssa = phi double [ %10, %4 ]
  store double %.lcssa, ptr @MaxResult, align 8, !tbaa !37
  ret void

4:                                                ; preds = %4, %1
  %5 = phi i64 [ 1, %1 ], [ %11, %4 ]
  %6 = phi double [ %2, %1 ], [ %10, %4 ]
  %7 = getelementptr inbounds [1000 x double], ptr @U, i64 0, i64 %5
  %8 = load double, ptr %7, align 8, !tbaa !37
  %9 = fcmp ogt double %8, %6
  %10 = select i1 %9, double %8, double %6
  %11 = add nuw nsw i64 %5, 1
  %12 = icmp eq i64 %11, 1000
  br i1 %12, label %3, label %4, !llvm.loop !41
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define internal void @_ZNK12MaxBenchmark9oop_styleEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #0 align 2 {
  %2 = load double, ptr @U, align 16, !tbaa !37
  br label %4

3:                                                ; preds = %4
  %.lcssa = phi double [ %10, %4 ]
  store double %.lcssa, ptr @MaxResult, align 8, !tbaa !37
  ret void

4:                                                ; preds = %4, %1
  %5 = phi i64 [ 1, %1 ], [ %11, %4 ]
  %6 = phi double [ %2, %1 ], [ %10, %4 ]
  %7 = getelementptr inbounds [1000 x double], ptr @U, i64 0, i64 %5
  %8 = load double, ptr %7, align 8, !tbaa !37
  %9 = fcmp ogt double %8, %6
  %10 = select i1 %9, double %8, double %6
  %11 = add nuw nsw i64 %5, 1
  %12 = icmp eq i64 %11, 1000
  br i1 %12, label %3, label %4, !llvm.loop !43
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize memory(write, argmem: none, inaccessiblemem: none) uwtable
define internal void @_ZNK12MaxBenchmark4initEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #1 align 2 {
  br label %2

2:                                                ; preds = %2, %1
  %3 = phi i64 [ 0, %1 ], [ %11, %2 ]
  %4 = phi <2 x i32> [ <i32 0, i32 1>, %1 ], [ %12, %2 ]
  %5 = and <2 x i32> %4, <i32 1, i32 1>
  %6 = icmp eq <2 x i32> %5, zeroinitializer
  %7 = sub nsw <2 x i32> zeroinitializer, %4
  %8 = select <2 x i1> %6, <2 x i32> %4, <2 x i32> %7
  %9 = sitofp <2 x i32> %8 to <2 x double>
  %10 = getelementptr inbounds [1000 x double], ptr @U, i64 0, i64 %3
  store <2 x double> %9, ptr %10, align 16, !tbaa !37
  %11 = add nuw i64 %3, 2
  %12 = add <2 x i32> %4, <i32 2, i32 2>
  %13 = icmp eq i64 %11, 1000
  br i1 %13, label %14, label %2, !llvm.loop !44

14:                                               ; preds = %2
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(read, argmem: write, inaccessiblemem: none) uwtable
define internal void @_ZNK12MaxBenchmark5checkEiRdS0_(ptr nocapture nonnull readnone align 8 %0, i32 noundef %1, ptr nocapture noundef nonnull writeonly align 8 dereferenceable(8) %2, ptr nocapture noundef nonnull writeonly align 8 dereferenceable(8) %3) unnamed_addr #2 align 2 {
  %5 = sitofp i32 %1 to double
  %6 = fmul double %5, 1.000000e+03
  store double %6, ptr %2, align 8, !tbaa !37
  %7 = load double, ptr @MaxResult, align 8, !tbaa !37
  store double %7, ptr %3, align 8, !tbaa !37
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind optsize memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define internal void @_ZNK15MatrixBenchmark7c_styleEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #3 align 2 {
  br label %2

2:                                                ; preds = %8, %1
  %3 = phi i64 [ 0, %1 ], [ %9, %8 ]
  %4 = mul nuw nsw i64 %3, 50
  br label %6

5:                                                ; preds = %8
  ret void

6:                                                ; preds = %11, %2
  %7 = phi i64 [ 0, %2 ], [ %14, %11 ]
  br label %16

8:                                                ; preds = %11
  %9 = add nuw nsw i64 %3, 1
  %10 = icmp eq i64 %9, 50
  br i1 %10, label %5, label %2, !llvm.loop !47

11:                                               ; preds = %16
  %.lcssa = phi double [ %26, %16 ]
  %12 = add nuw nsw i64 %7, %4
  %13 = getelementptr inbounds [2500 x double], ptr @E, i64 0, i64 %12
  store double %.lcssa, ptr %13, align 8, !tbaa !37
  %14 = add nuw nsw i64 %7, 1
  %15 = icmp eq i64 %14, 50
  br i1 %15, label %8, label %6, !llvm.loop !48

16:                                               ; preds = %16, %6
  %17 = phi i64 [ 0, %6 ], [ %27, %16 ]
  %18 = phi double [ 0.000000e+00, %6 ], [ %26, %16 ]
  %19 = add nuw nsw i64 %17, %4
  %20 = getelementptr inbounds [2500 x double], ptr @C, i64 0, i64 %19
  %21 = load double, ptr %20, align 8, !tbaa !37
  %22 = mul nuw nsw i64 %17, 50
  %23 = add nuw nsw i64 %22, %7
  %24 = getelementptr inbounds [2500 x double], ptr @D, i64 0, i64 %23
  %25 = load double, ptr %24, align 8, !tbaa !37
  %26 = tail call double @llvm.fmuladd.f64(double %21, double %25, double %18)
  %27 = add nuw nsw i64 %17, 1
  %28 = icmp eq i64 %27, 50
  br i1 %28, label %11, label %16, !llvm.loop !49
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

; Function Attrs: nofree nosync nounwind optsize memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define internal void @_ZNK15MatrixBenchmark9oop_styleEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #5 align 2 {
  br label %2

2:                                                ; preds = %8, %1
  %3 = phi i64 [ 0, %1 ], [ %9, %8 ]
  %4 = mul nuw nsw i64 %3, 50
  br label %6

5:                                                ; preds = %8
  ret void

6:                                                ; preds = %11, %2
  %7 = phi i64 [ 0, %2 ], [ %14, %11 ]
  br label %16

8:                                                ; preds = %11
  %9 = add nuw nsw i64 %3, 1
  %10 = icmp eq i64 %9, 50
  br i1 %10, label %5, label %2, !llvm.loop !50

11:                                               ; preds = %16
  %.lcssa = phi double [ %26, %16 ]
  %12 = add nuw nsw i64 %7, %4
  %13 = getelementptr inbounds double, ptr @E, i64 %12
  store double %.lcssa, ptr %13, align 8, !tbaa !37
  %14 = add nuw nsw i64 %7, 1
  %15 = icmp eq i64 %14, 50
  br i1 %15, label %8, label %6, !llvm.loop !51

16:                                               ; preds = %16, %6
  %17 = phi i64 [ 0, %6 ], [ %27, %16 ]
  %18 = phi double [ 0.000000e+00, %6 ], [ %26, %16 ]
  %19 = add nuw nsw i64 %17, %4
  %20 = getelementptr inbounds double, ptr @C, i64 %19
  %21 = load double, ptr %20, align 8, !tbaa !37
  %22 = mul nuw nsw i64 %17, 50
  %23 = add nuw nsw i64 %22, %7
  %24 = getelementptr inbounds double, ptr @D, i64 %23
  %25 = load double, ptr %24, align 8, !tbaa !37
  %26 = tail call double @llvm.fmuladd.f64(double %21, double %25, double %18)
  %27 = add nuw nsw i64 %17, 1
  %28 = icmp eq i64 %27, 50
  br i1 %28, label %11, label %16, !llvm.loop !52
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize memory(write, argmem: none, inaccessiblemem: none) uwtable
define internal void @_ZNK15MatrixBenchmark4initEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #1 align 2 {
  br label %2

2:                                                ; preds = %2, %1
  %3 = phi i64 [ 0, %1 ], [ %11, %2 ]
  %4 = phi <2 x i64> [ <i64 0, i64 1>, %1 ], [ %12, %2 ]
  %5 = trunc <2 x i64> %4 to <2 x i32>
  %6 = add <2 x i32> %5, <i32 1, i32 1>
  %7 = sitofp <2 x i32> %6 to <2 x double>
  %8 = getelementptr inbounds [2500 x double], ptr @C, i64 0, i64 %3
  store <2 x double> %7, ptr %8, align 16, !tbaa !37
  %9 = fdiv <2 x double> <double 1.000000e+00, double 1.000000e+00>, %7
  %10 = getelementptr inbounds [2500 x double], ptr @D, i64 0, i64 %3
  store <2 x double> %9, ptr %10, align 16, !tbaa !37
  %11 = add nuw i64 %3, 2
  %12 = add <2 x i64> %4, <i64 2, i64 2>
  %13 = icmp eq i64 %11, 2500
  br i1 %13, label %14, label %2, !llvm.loop !53

14:                                               ; preds = %2
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize memory(read, argmem: write, inaccessiblemem: none) uwtable
define internal void @_ZNK15MatrixBenchmark5checkEiRdS0_(ptr nocapture nonnull readnone align 8 %0, i32 noundef %1, ptr nocapture noundef nonnull writeonly align 8 dereferenceable(8) %2, ptr nocapture noundef nonnull writeonly align 8 dereferenceable(8) %3) unnamed_addr #6 align 2 {
  br label %8

5:                                                ; preds = %8
  %.lcssa = phi double [ %13, %8 ]
  store double %.lcssa, ptr %3, align 8, !tbaa !37
  %6 = sitofp i32 %1 to double
  %7 = fmul double %6, 2.500000e+05
  store double %7, ptr %2, align 8, !tbaa !37
  ret void

8:                                                ; preds = %8, %4
  %9 = phi i64 [ 0, %4 ], [ %14, %8 ]
  %10 = phi double [ 0.000000e+00, %4 ], [ %13, %8 ]
  %11 = getelementptr inbounds [2500 x double], ptr @E, i64 0, i64 %9
  %12 = load double, ptr %11, align 8, !tbaa !37
  %13 = fadd double %10, %12
  %14 = add nuw nsw i64 %9, 1
  %15 = icmp eq i64 %14, 2500
  br i1 %15, label %5, label %8, !llvm.loop !54
}

; Function Attrs: mustprogress nofree nosync nounwind optsize memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define internal void @_ZNK17IteratorBenchmark7c_styleEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #3 align 2 {
  br label %3

2:                                                ; preds = %3
  %.lcssa = phi double [ %10, %3 ]
  store double %.lcssa, ptr @IteratorResult, align 8, !tbaa !37
  ret void

3:                                                ; preds = %3, %1
  %4 = phi i64 [ 0, %1 ], [ %11, %3 ]
  %5 = phi double [ 0.000000e+00, %1 ], [ %10, %3 ]
  %6 = getelementptr inbounds [1000 x double], ptr @A, i64 0, i64 %4
  %7 = load double, ptr %6, align 8, !tbaa !37
  %8 = getelementptr inbounds [1000 x double], ptr @B, i64 0, i64 %4
  %9 = load double, ptr %8, align 8, !tbaa !37
  %10 = tail call double @llvm.fmuladd.f64(double %7, double %9, double %5)
  %11 = add nuw nsw i64 %4, 1
  %12 = icmp eq i64 %11, 1000
  br i1 %12, label %2, label %3, !llvm.loop !55
}

; Function Attrs: nofree nosync nounwind optsize memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define internal void @_ZNK17IteratorBenchmark9oop_styleEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #5 align 2 {
  br label %3

2:                                                ; preds = %3
  %.lcssa = phi double [ %10, %3 ]
  store double %.lcssa, ptr @IteratorResult, align 8, !tbaa !37
  ret void

3:                                                ; preds = %3, %1
  %4 = phi i64 [ 0, %1 ], [ %11, %3 ]
  %5 = phi double [ 0.000000e+00, %1 ], [ %10, %3 ]
  %6 = getelementptr inbounds double, ptr @A, i64 %4
  %7 = load double, ptr %6, align 8, !tbaa !37
  %8 = getelementptr inbounds double, ptr @B, i64 %4
  %9 = load double, ptr %8, align 8, !tbaa !37
  %10 = tail call double @llvm.fmuladd.f64(double %7, double %9, double %5)
  %11 = add nuw nsw i64 %4, 1
  %12 = icmp eq i64 %11, 1000
  br i1 %12, label %2, label %3, !llvm.loop !56
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize memory(write, argmem: none, inaccessiblemem: none) uwtable
define internal void @_ZNK17IteratorBenchmark4initEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #1 align 2 {
  br label %2

2:                                                ; preds = %2, %1
  %3 = phi i64 [ 0, %1 ], [ %11, %2 ]
  %4 = phi <2 x i64> [ <i64 0, i64 1>, %1 ], [ %12, %2 ]
  %5 = trunc <2 x i64> %4 to <2 x i32>
  %6 = add <2 x i32> %5, <i32 1, i32 1>
  %7 = sitofp <2 x i32> %6 to <2 x double>
  %8 = getelementptr inbounds [1000 x double], ptr @A, i64 0, i64 %3
  store <2 x double> %7, ptr %8, align 16, !tbaa !37
  %9 = fdiv <2 x double> <double 1.000000e+00, double 1.000000e+00>, %7
  %10 = getelementptr inbounds [1000 x double], ptr @B, i64 0, i64 %3
  store <2 x double> %9, ptr %10, align 16, !tbaa !37
  %11 = add nuw i64 %3, 2
  %12 = add <2 x i64> %4, <i64 2, i64 2>
  %13 = icmp eq i64 %11, 1000
  br i1 %13, label %14, label %2, !llvm.loop !57

14:                                               ; preds = %2
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(read, argmem: write, inaccessiblemem: none) uwtable
define internal void @_ZNK17IteratorBenchmark5checkEiRdS0_(ptr nocapture nonnull readnone align 8 %0, i32 noundef %1, ptr nocapture noundef nonnull writeonly align 8 dereferenceable(8) %2, ptr nocapture noundef nonnull writeonly align 8 dereferenceable(8) %3) unnamed_addr #2 align 2 {
  %5 = mul nsw i32 %1, 2000
  %6 = sitofp i32 %5 to double
  store double %6, ptr %2, align 8, !tbaa !37
  %7 = load double, ptr @IteratorResult, align 8, !tbaa !37
  store double %7, ptr %3, align 8, !tbaa !37
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind optsize memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define internal void @_ZNK16ComplexBenchmark7c_styleEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #3 align 2 {
  br label %2

2:                                                ; preds = %2, %1
  %3 = phi i64 [ 0, %1 ], [ %18, %2 ]
  %4 = getelementptr inbounds [1000 x %class.Complex], ptr @Y, i64 0, i64 %3
  %5 = load <4 x double>, ptr %4, align 16, !tbaa !37
  %6 = shufflevector <4 x double> %5, <4 x double> poison, <2 x i32> <i32 0, i32 2>
  %7 = shufflevector <4 x double> %5, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %8 = getelementptr inbounds [1000 x %class.Complex], ptr @X, i64 0, i64 %3
  %9 = load <4 x double>, ptr %8, align 16, !tbaa !37
  %10 = shufflevector <4 x double> %9, <4 x double> poison, <2 x i32> <i32 0, i32 2>
  %11 = shufflevector <4 x double> %9, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %12 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %10, <2 x double> <double 5.000000e-01, double 5.000000e-01>, <2 x double> %6)
  %13 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %11, <2 x double> <double 0xBFEBB67AE8584CAA, double 0xBFEBB67AE8584CAA>, <2 x double> %12)
  %14 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %11, <2 x double> <double 5.000000e-01, double 5.000000e-01>, <2 x double> %7)
  %15 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %10, <2 x double> <double 0x3FEBB67AE8584CAA, double 0x3FEBB67AE8584CAA>, <2 x double> %14)
  %16 = getelementptr inbounds [1000 x %class.Complex], ptr @Y, i64 0, i64 %3
  %17 = shufflevector <2 x double> %13, <2 x double> %15, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %17, ptr %16, align 16, !tbaa !37
  %18 = add nuw i64 %3, 2
  %19 = icmp eq i64 %18, 1000
  br i1 %19, label %20, label %2, !llvm.loop !58

20:                                               ; preds = %2
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #4

; Function Attrs: nofree nosync nounwind optsize memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define internal void @_ZNK16ComplexBenchmark9oop_styleEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #5 align 2 {
  br label %2

2:                                                ; preds = %2, %1
  %3 = phi i64 [ 0, %1 ], [ %19, %2 ]
  %4 = getelementptr inbounds [1000 x %class.Complex], ptr @Y, i64 0, i64 %3
  %5 = load <4 x double>, ptr %4, align 16
  %6 = shufflevector <4 x double> %5, <4 x double> poison, <2 x i32> <i32 0, i32 2>
  %7 = shufflevector <4 x double> %5, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %8 = getelementptr inbounds [1000 x %class.Complex], ptr @X, i64 0, i64 %3
  %9 = load <4 x double>, ptr %8, align 16
  %10 = shufflevector <4 x double> %9, <4 x double> poison, <2 x i32> <i32 0, i32 2>
  %11 = shufflevector <4 x double> %9, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %12 = fmul <2 x double> %11, <double 0xBFEBB67AE8584CAA, double 0xBFEBB67AE8584CAA>
  %13 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %10, <2 x double> <double 5.000000e-01, double 5.000000e-01>, <2 x double> %12)
  %14 = fmul <2 x double> %10, <double 0x3FEBB67AE8584CAA, double 0x3FEBB67AE8584CAA>
  %15 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %11, <2 x double> <double 5.000000e-01, double 5.000000e-01>, <2 x double> %14)
  %16 = fadd <2 x double> %6, %13
  %17 = fadd <2 x double> %7, %15
  %18 = shufflevector <2 x double> %16, <2 x double> %17, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %18, ptr %4, align 16
  %19 = add nuw i64 %3, 2
  %20 = icmp eq i64 %19, 1000
  br i1 %20, label %21, label %2, !llvm.loop !59

21:                                               ; preds = %2
  ret void
}

; Function Attrs: nofree nosync nounwind optsize memory(write, argmem: none, inaccessiblemem: none) uwtable
define internal void @_ZNK16ComplexBenchmark4initEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #7 align 2 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16000) @Y, i8 0, i64 16000, i1 false)
  br label %2

2:                                                ; preds = %2, %1
  %3 = phi i64 [ 0, %1 ], [ %11, %2 ]
  %4 = phi <2 x i64> [ <i64 0, i64 1>, %1 ], [ %12, %2 ]
  %5 = trunc <2 x i64> %4 to <2 x i32>
  %6 = add <2 x i32> %5, <i32 1, i32 1>
  %7 = sitofp <2 x i32> %6 to <2 x double>
  %8 = fdiv <2 x double> <double 1.000000e+00, double 1.000000e+00>, %7
  %9 = getelementptr inbounds [1000 x %class.Complex], ptr @X, i64 0, i64 %3
  %10 = shufflevector <2 x double> %7, <2 x double> %8, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %10, ptr %9, align 16
  %11 = add nuw i64 %3, 2
  %12 = add <2 x i64> %4, <i64 2, i64 2>
  %13 = icmp eq i64 %11, 1000
  br i1 %13, label %14, label %2, !llvm.loop !60

14:                                               ; preds = %2
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize memory(read, argmem: write, inaccessiblemem: none) uwtable
define internal void @_ZNK16ComplexBenchmark5checkEiRdS0_(ptr nocapture nonnull readnone align 8 %0, i32 noundef %1, ptr nocapture noundef nonnull writeonly align 8 dereferenceable(8) %2, ptr nocapture noundef nonnull writeonly align 8 dereferenceable(8) %3) unnamed_addr #6 align 2 {
  br label %8

5:                                                ; preds = %8
  %.lcssa = phi double [ %16, %8 ]
  store double %.lcssa, ptr %3, align 8, !tbaa !37
  %6 = mul nsw i32 %1, 8000
  %7 = sitofp i32 %6 to double
  store double %7, ptr %2, align 8, !tbaa !37
  ret void

8:                                                ; preds = %8, %4
  %9 = phi i64 [ 0, %4 ], [ %17, %8 ]
  %10 = phi double [ 0.000000e+00, %4 ], [ %16, %8 ]
  %11 = getelementptr inbounds [1000 x %class.Complex], ptr @Y, i64 0, i64 %9
  %12 = load double, ptr %11, align 16, !tbaa !61
  %13 = getelementptr inbounds [1000 x %class.Complex], ptr @Y, i64 0, i64 %9, i32 1
  %14 = load double, ptr %13, align 8, !tbaa !63
  %15 = fadd double %12, %14
  %16 = fadd double %10, %15
  %17 = add nuw nsw i64 %9, 1
  %18 = icmp eq i64 %17, 1000
  br i1 %18, label %5, label %8, !llvm.loop !64
}

; Function Attrs: mustprogress optsize uwtable
define internal void @_ZNK9Benchmark8time_oneEMS_KFvvEiRdS2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 %1, i64 %2, i32 noundef %3, ptr nocapture noundef nonnull writeonly align 8 dereferenceable(8) %4, ptr nocapture noundef nonnull writeonly align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6) #9 align 2 {
  %8 = alloca double, align 8
  %9 = load ptr, ptr %0, align 8, !tbaa !65
  %10 = getelementptr inbounds ptr, ptr %9, i64 1
  %11 = load ptr, ptr %10, align 8
  tail call void %11(ptr noundef nonnull align 8 dereferenceable(8) %0) #21
  %12 = getelementptr inbounds i8, ptr %0, i64 %2
  %13 = and i64 %1, 1
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %7
  %16 = load ptr, ptr %12, align 8, !tbaa !65
  %17 = add i64 %1, -1
  %18 = getelementptr i8, ptr %16, i64 %17, !nosanitize !67
  %19 = load ptr, ptr %18, align 8, !nosanitize !67
  br label %22

20:                                               ; preds = %7
  %21 = inttoptr i64 %1 to ptr
  br label %22

22:                                               ; preds = %20, %15
  %23 = phi ptr [ %19, %15 ], [ %21, %20 ]
  tail call void %23(ptr noundef nonnull align 8 dereferenceable(8) %12) #21
  %24 = load ptr, ptr %0, align 8, !tbaa !65
  %25 = getelementptr inbounds ptr, ptr %24, i64 1
  %26 = load ptr, ptr %25, align 8
  tail call void %26(ptr noundef nonnull align 8 dereferenceable(8) %0) #21
  %27 = tail call i64 @clock() #22
  %28 = icmp sgt i32 %3, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %22
  %30 = add i64 %1, -1
  %31 = inttoptr i64 %1 to ptr
  br label %43

32:                                               ; preds = %49, %22
  %33 = tail call i64 @clock() #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #23
  %34 = load ptr, ptr %0, align 8, !tbaa !65
  %35 = getelementptr inbounds ptr, ptr %34, i64 4
  %36 = load ptr, ptr %35, align 8
  call void %36(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %6) #21
  %37 = sub nsw i64 %33, %27
  %38 = sitofp i64 %37 to double
  %39 = fdiv double %38, 1.000000e+06
  store double %39, ptr %4, align 8, !tbaa !37
  %40 = load double, ptr %8, align 8, !tbaa !37
  %41 = fdiv double %40, %39
  %42 = fmul double %41, 0x3EB0C6F7A0B5ED8D
  store double %42, ptr %5, align 8, !tbaa !37
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #23
  ret void

43:                                               ; preds = %49, %29
  %44 = phi i32 [ 0, %29 ], [ %51, %49 ]
  br i1 %14, label %49, label %45

45:                                               ; preds = %43
  %46 = load ptr, ptr %12, align 8, !tbaa !65
  %47 = getelementptr i8, ptr %46, i64 %30, !nosanitize !67
  %48 = load ptr, ptr %47, align 8, !nosanitize !67
  br label %49

49:                                               ; preds = %45, %43
  %50 = phi ptr [ %48, %45 ], [ %31, %43 ]
  tail call void %50(ptr noundef nonnull align 8 dereferenceable(8) %12) #21
  %51 = add nuw nsw i32 %44, 1
  %52 = icmp eq i32 %51, %3
  br i1 %52, label %32, label %43, !llvm.loop !68
}

; Function Attrs: nounwind optsize
declare i64 @clock() local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #11

; Function Attrs: mustprogress optsize uwtable
define internal noundef ptr @_ZN9Benchmark4findEPKc(ptr nocapture noundef readonly %0) #9 align 2 {
  %2 = load i32, ptr @_ZN9Benchmark5countE, align 4, !tbaa !69
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %9, label %20

4:                                                ; preds = %9
  %5 = add nuw nsw i64 %10, 1
  %6 = load i32, ptr @_ZN9Benchmark5countE, align 4, !tbaa !69
  %7 = sext i32 %6 to i64
  %8 = icmp slt i64 %5, %7
  br i1 %8, label %9, label %20, !llvm.loop !71

9:                                                ; preds = %4, %1
  %10 = phi i64 [ %5, %4 ], [ 0, %1 ]
  %11 = getelementptr inbounds [4 x ptr], ptr @_ZN9Benchmark4listE, i64 0, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !72
  %13 = load ptr, ptr %12, align 8, !tbaa !65
  %14 = load ptr, ptr %13, align 8
  %15 = tail call noundef ptr %14(ptr noundef nonnull align 8 dereferenceable(8) %12) #21
  %16 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %15) #24
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %4

18:                                               ; preds = %9
  %.lcssa = phi ptr [ %11, %9 ]
  %19 = load ptr, ptr %.lcssa, align 8, !tbaa !72
  br label %20

20:                                               ; preds = %18, %4, %1
  %21 = phi ptr [ %19, %18 ], [ null, %1 ], [ null, %4 ]
  ret ptr %21
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nounwind optsize uwtable
define internal noundef ptr @_ZNK16ComplexBenchmark4nameEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #13 comdat align 2 {
  ret ptr @.str.31
}

; Function Attrs: mustprogress nounwind optsize uwtable
define internal noundef ptr @_ZNK17IteratorBenchmark4nameEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #13 comdat align 2 {
  ret ptr @.str.30
}

; Function Attrs: mustprogress nounwind optsize uwtable
define internal noundef ptr @_ZNK15MatrixBenchmark4nameEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #13 comdat align 2 {
  ret ptr @.str.29
}

; Function Attrs: mustprogress nounwind optsize uwtable
define internal noundef ptr @_ZNK12MaxBenchmark4nameEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #13 comdat align 2 {
  ret ptr @.str.28
}

; Function Attrs: mustprogress optsize uwtable
define internal void @_ZNK9Benchmark9time_bothEi(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %1) #9 align 2 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #23
  call void @_ZNK9Benchmark8time_oneEMS_KFvvEiRdS2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 17, i64 0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #23
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #23
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #23
  call void @_ZNK9Benchmark8time_oneEMS_KFvvEiRdS2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 25, i64 0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %8) #21
  %9 = load double, ptr %5, align 8
  %10 = load double, ptr %8, align 8
  %11 = fsub double %9, %10
  %12 = fcmp olt double %9, %10
  %13 = select i1 %12, double %9, double %10
  %14 = fdiv double %11, %13
  %15 = fcmp ogt double %14, 0x3D10000000000000
  %16 = fcmp olt double %14, 0xBD10000000000000
  %17 = or i1 %15, %16
  br i1 %17, label %18, label %25

18:                                               ; preds = %2
  %19 = load ptr, ptr %0, align 8, !tbaa !65
  %20 = load ptr, ptr %19, align 8
  %21 = call noundef ptr %20(ptr noundef nonnull align 8 dereferenceable(8) %0) #21
  %22 = load double, ptr %5, align 8, !tbaa !37
  %23 = load double, ptr %8, align 8, !tbaa !37
  %24 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef %21, double noundef %14, double noundef %22, double noundef %23) #21
  br label %25

25:                                               ; preds = %18, %2
  %26 = load ptr, ptr %0, align 8, !tbaa !65
  %27 = load ptr, ptr %26, align 8
  %28 = call noundef ptr %27(ptr noundef nonnull align 8 dereferenceable(8) %0) #21
  %29 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, ptr noundef %28, i32 noundef %1) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #23
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #14

; Function Attrs: mustprogress norecurse optsize uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nocapture noundef readnone %1) #15 {
  %3 = alloca [6 x i8], align 1
  %4 = alloca [10 x i8], align 1
  %5 = alloca [11 x i8], align 1
  %6 = alloca [13 x i8], align 1
  %7 = alloca [15 x i8], align 1
  %8 = alloca [6 x ptr], align 16
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %3) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %3, ptr noundef nonnull align 1 dereferenceable(6) @__const.main.str1, i64 6, i1 false)
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %4) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %4, ptr noundef nonnull align 1 dereferenceable(10) @__const.main.str2, i64 10, i1 false)
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %5) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %5, ptr noundef nonnull align 1 dereferenceable(11) @__const.main.str3, i64 11, i1 false)
  call void @llvm.lifetime.start.p0(i64 13, ptr nonnull %6) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %6, ptr noundef nonnull align 1 dereferenceable(13) @__const.main.str4, i64 13, i1 false)
  call void @llvm.lifetime.start.p0(i64 15, ptr nonnull %7) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %7, ptr noundef nonnull align 1 dereferenceable(15) @__const.main.str5, i64 15, i1 false)
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %8) #23
  %9 = getelementptr inbounds ptr, ptr %8, i64 1
  store ptr %4, ptr %9, align 8, !tbaa !72
  %10 = getelementptr inbounds ptr, ptr %8, i64 2
  store ptr %5, ptr %10, align 16, !tbaa !72
  %11 = getelementptr inbounds ptr, ptr %8, i64 3
  store ptr %6, ptr %11, align 8, !tbaa !72
  %12 = getelementptr inbounds ptr, ptr %8, i64 4
  store ptr %7, ptr %12, align 16, !tbaa !72
  %13 = getelementptr inbounds ptr, ptr %8, i64 5
  store ptr null, ptr %13, align 8, !tbaa !72
  br label %17

14:                                               ; preds = %17
  %15 = add nuw nsw i64 %18, 1
  %16 = icmp eq i64 %15, 5
  br i1 %16, label %28, label %17, !llvm.loop !74

17:                                               ; preds = %14, %2
  %18 = phi i64 [ 1, %2 ], [ %15, %14 ]
  %19 = getelementptr inbounds ptr, ptr %8, i64 %18
  %20 = load ptr, ptr %19, align 8, !tbaa !72
  %21 = load i8, ptr %20, align 1, !tbaa !75
  %22 = sext i8 %21 to i32
  %23 = call i32 @isalpha(i32 noundef %22) #24
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %14

25:                                               ; preds = %17
  %26 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, ptr noundef nonnull %3) #21
  %27 = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  call void @exit(i32 noundef 1) #25
  unreachable

28:                                               ; preds = %14
  %29 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.11) #21
  %30 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19) #21
  %31 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23) #21
  br label %32

32:                                               ; preds = %49, %28
  %33 = phi i64 [ 1, %28 ], [ %50, %49 ]
  %34 = getelementptr inbounds ptr, ptr %8, i64 %33
  %35 = load ptr, ptr %34, align 8, !tbaa !72
  %36 = call ptr @strtok(ptr noundef %35, ptr noundef nonnull @.str.24) #22
  %37 = call ptr @strtok(ptr noundef null, ptr noundef nonnull @.str.11) #22
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %41

39:                                               ; preds = %32
  %40 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.25, ptr noundef %36) #21
  br label %49

41:                                               ; preds = %32
  %42 = call i64 @strtol(ptr nocapture noundef nonnull %37, ptr noundef null, i32 noundef 0) #22
  %43 = call noundef ptr @_ZN9Benchmark4findEPKc(ptr noundef %36) #21
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %.lcssa = phi ptr [ %36, %41 ]
  %46 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.26, ptr noundef %.lcssa) #21
  call void @abort() #25
  unreachable

47:                                               ; preds = %41
  %48 = trunc i64 %42 to i32
  call void @_ZNK9Benchmark9time_bothEi(ptr noundef nonnull align 8 dereferenceable(8) %43, i32 noundef %48) #21
  br label %49

49:                                               ; preds = %47, %39
  %50 = add nuw nsw i64 %33, 1
  %51 = icmp eq i64 %50, 5
  br i1 %51, label %52, label %32, !llvm.loop !76

52:                                               ; preds = %49
  %53 = call i32 @puts(ptr nonnull dereferenceable(1) @str.32)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(i64 15, ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(i64 13, ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %3) #23
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #16

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(read)
declare i32 @isalpha(i32 noundef) local_unnamed_addr #17

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #18

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32 noundef) local_unnamed_addr #19

; Function Attrs: mustprogress nofree nounwind optsize willreturn
declare ptr @strtok(ptr noundef, ptr nocapture noundef readonly) local_unnamed_addr #20

; Function Attrs: mustprogress nofree nounwind optsize willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #20

; Function Attrs: noreturn nounwind optsize
declare void @abort() local_unnamed_addr #19

attributes #0 = { mustprogress nofree norecurse nosync nounwind optsize memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind optsize memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind optsize willreturn memory(read, argmem: write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nosync nounwind optsize memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nofree nosync nounwind optsize memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind optsize memory(read, argmem: write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nosync nounwind optsize memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { mustprogress optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress norecurse optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #17 = { mustprogress nofree nounwind optsize willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree nounwind }
attributes #19 = { noreturn nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree nounwind optsize willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { optsize }
attributes #22 = { nounwind optsize }
attributes #23 = { nounwind }
attributes #24 = { nounwind optsize willreturn memory(read) }
attributes #25 = { noreturn nounwind optsize }

!llvm.ident = !{!30}
!llvm.module.flags = !{!31, !32, !33, !34, !35, !36}

!0 = !{i64 16, !"_ZTS12MaxBenchmark"}
!1 = !{i64 16, !"_ZTSM12MaxBenchmarkKFPKcvE.virtual"}
!2 = !{i64 24, !"_ZTSM12MaxBenchmarkKFvvE.virtual"}
!3 = !{i64 32, !"_ZTSM12MaxBenchmarkKFvvE.virtual"}
!4 = !{i64 40, !"_ZTSM12MaxBenchmarkKFvvE.virtual"}
!5 = !{i64 48, !"_ZTSM12MaxBenchmarkKFviRdS0_E.virtual"}
!6 = !{i64 16, !"_ZTS9Benchmark"}
!7 = !{i64 16, !"_ZTSM9BenchmarkKFPKcvE.virtual"}
!8 = !{i64 24, !"_ZTSM9BenchmarkKFvvE.virtual"}
!9 = !{i64 32, !"_ZTSM9BenchmarkKFvvE.virtual"}
!10 = !{i64 40, !"_ZTSM9BenchmarkKFvvE.virtual"}
!11 = !{i64 48, !"_ZTSM9BenchmarkKFviRdS0_E.virtual"}
!12 = !{i64 16, !"_ZTS15MatrixBenchmark"}
!13 = !{i64 16, !"_ZTSM15MatrixBenchmarkKFPKcvE.virtual"}
!14 = !{i64 24, !"_ZTSM15MatrixBenchmarkKFvvE.virtual"}
!15 = !{i64 32, !"_ZTSM15MatrixBenchmarkKFvvE.virtual"}
!16 = !{i64 40, !"_ZTSM15MatrixBenchmarkKFvvE.virtual"}
!17 = !{i64 48, !"_ZTSM15MatrixBenchmarkKFviRdS0_E.virtual"}
!18 = !{i64 16, !"_ZTS17IteratorBenchmark"}
!19 = !{i64 16, !"_ZTSM17IteratorBenchmarkKFPKcvE.virtual"}
!20 = !{i64 24, !"_ZTSM17IteratorBenchmarkKFvvE.virtual"}
!21 = !{i64 32, !"_ZTSM17IteratorBenchmarkKFvvE.virtual"}
!22 = !{i64 40, !"_ZTSM17IteratorBenchmarkKFvvE.virtual"}
!23 = !{i64 48, !"_ZTSM17IteratorBenchmarkKFviRdS0_E.virtual"}
!24 = !{i64 16, !"_ZTS16ComplexBenchmark"}
!25 = !{i64 16, !"_ZTSM16ComplexBenchmarkKFPKcvE.virtual"}
!26 = !{i64 24, !"_ZTSM16ComplexBenchmarkKFvvE.virtual"}
!27 = !{i64 32, !"_ZTSM16ComplexBenchmarkKFvvE.virtual"}
!28 = !{i64 40, !"_ZTSM16ComplexBenchmarkKFvvE.virtual"}
!29 = !{i64 48, !"_ZTSM16ComplexBenchmarkKFviRdS0_E.virtual"}
!30 = !{!"clang version 17.0.6 (https://github.com/Casperento/llvm-project.git 9b0073551ece0d22bf3378af2b03e456a26031b6)"}
!31 = !{i32 1, !"wchar_size", i32 4}
!32 = !{i32 8, !"PIC Level", i32 2}
!33 = !{i32 7, !"PIE Level", i32 2}
!34 = !{i32 7, !"uwtable", i32 2}
!35 = !{i32 1, !"ThinLTO", i32 0}
!36 = !{i32 1, !"EnableSplitLTOUnit", i32 1}
!37 = !{!38, !38, i64 0}
!38 = !{!"double", !39, i64 0}
!39 = !{!"omnipotent char", !40, i64 0}
!40 = !{!"Simple C++ TBAA"}
!41 = distinct !{!41, !42}
!42 = !{!"llvm.loop.mustprogress"}
!43 = distinct !{!43, !42}
!44 = distinct !{!44, !42, !45, !46}
!45 = !{!"llvm.loop.isvectorized", i32 1}
!46 = !{!"llvm.loop.unroll.runtime.disable"}
!47 = distinct !{!47, !42}
!48 = distinct !{!48, !42}
!49 = distinct !{!49, !42}
!50 = distinct !{!50, !42}
!51 = distinct !{!51, !42}
!52 = distinct !{!52, !42}
!53 = distinct !{!53, !42, !45, !46}
!54 = distinct !{!54, !42}
!55 = distinct !{!55, !42}
!56 = distinct !{!56, !42}
!57 = distinct !{!57, !42, !45, !46}
!58 = distinct !{!58, !42, !45, !46}
!59 = distinct !{!59, !42, !45, !46}
!60 = distinct !{!60, !42, !45, !46}
!61 = !{!62, !38, i64 0}
!62 = !{!"_ZTS7Complex", !38, i64 0, !38, i64 8}
!63 = !{!62, !38, i64 8}
!64 = distinct !{!64, !42}
!65 = !{!66, !66, i64 0}
!66 = !{!"vtable pointer", !40, i64 0}
!67 = !{}
!68 = distinct !{!68, !42}
!69 = !{!70, !70, i64 0}
!70 = !{!"int", !39, i64 0}
!71 = distinct !{!71, !42}
!72 = !{!73, !73, i64 0}
!73 = !{!"any pointer", !39, i64 0}
!74 = distinct !{!74, !42}
!75 = !{!39, !39, i64 0}
!76 = distinct !{!76, !42}
