; ModuleID = '/src/llvm-test-suite/build/MultiSource/Benchmarks/McCat/08-main/main.e.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.HPointStruct = type { double, double, double, double }
%struct.ObjPointStruct = type { double, double, double, double, double, double }
%struct.PointStruct = type { double, double, double }
%struct.ObjectStruct = type { [57 x i8], ptr, ptr, ptr, ptr, ptr, %struct.PointStruct, i32, i32, %struct.PointStruct, %struct.PointStruct, %struct.PointStruct, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.PointListStruct = type { ptr, ptr, ptr }
%struct.Poly4Struct = type { [4 x ptr], ptr, ptr, ptr, ptr }
%struct.Poly3Struct = type { [3 x ptr], ptr, ptr, ptr, ptr }

@.str = private unnamed_addr constant [11 x i8] c"TestObject\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"SphereObject\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"Point[%i] = (%.2f, %.2f, %.2f)\00", align 1
@.str.1.6 = private unnamed_addr constant [24 x i8] c" -> (%.2f, %.2f, %.2f)\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"PrintPoly3s[%i] = (%.2f, %.2f, %.2f)\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"-> (%.2f, %.2f, %.2f)\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"PrintPoly4s[%i] = %.2f, %.2f, %.2f\00", align 1
@.str.5.9 = private unnamed_addr constant [10 x i8] c"Name: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"Scale    : (%.2f,%.2f,%.2f)\0A\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"Origin   : (%.2f,%.2f,%.2f)\0A\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"Rotation : (%.2f,%.2f,%.2f)\0A\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"Color    : (%.2f,%.2f,%.2f)\0A\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.13 = private unnamed_addr constant [30 x i8] c"Cannot Translate NULL-object\0A\00", align 1
@.str.14 = private unnamed_addr constant [27 x i8] c"Cannot Rotate NULL-object\0A\00", align 1
@.str.15 = private unnamed_addr constant [26 x i8] c"Cannot Scale NULL-object\0A\00", align 1
@str = private unnamed_addr constant [17 x i8] c"Style     : NONE\00", align 1
@str.16 = private unnamed_addr constant [17 x i8] c"Style     : HALF\00", align 1
@str.17 = private unnamed_addr constant [17 x i8] c"Style     : FULL\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal void @PointToHPoint(ptr noalias nocapture writeonly sret(%struct.HPointStruct) align 8 %0, ptr nocapture noundef readonly byval(%struct.ObjPointStruct) align 8 %1) #0 {
  %3 = load <2 x double>, ptr %1, align 8, !tbaa !7
  store <2 x double> %3, ptr %0, align 8, !tbaa !7
  %4 = getelementptr inbounds %struct.ObjPointStruct, ptr %1, i64 0, i32 2
  %5 = load double, ptr %4, align 8, !tbaa !11
  %6 = getelementptr inbounds %struct.HPointStruct, ptr %0, i64 0, i32 2
  store double %5, ptr %6, align 8, !tbaa !13
  %7 = getelementptr inbounds %struct.HPointStruct, ptr %0, i64 0, i32 3
  store double 1.000000e+00, ptr %7, align 8, !tbaa !15
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal void @TPointToHPoint(ptr noalias nocapture writeonly sret(%struct.HPointStruct) align 8 %0, ptr nocapture noundef readonly byval(%struct.ObjPointStruct) align 8 %1) #0 {
  %3 = getelementptr inbounds %struct.ObjPointStruct, ptr %1, i64 0, i32 3
  %4 = load <2 x double>, ptr %3, align 8, !tbaa !7
  store <2 x double> %4, ptr %0, align 8, !tbaa !7
  %5 = getelementptr inbounds %struct.ObjPointStruct, ptr %1, i64 0, i32 5
  %6 = load double, ptr %5, align 8, !tbaa !16
  %7 = getelementptr inbounds %struct.HPointStruct, ptr %0, i64 0, i32 2
  store double %6, ptr %7, align 8, !tbaa !13
  %8 = getelementptr inbounds %struct.HPointStruct, ptr %0, i64 0, i32 3
  store double 1.000000e+00, ptr %8, align 8, !tbaa !15
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @MakeSphere(ptr noundef returned %0, i32 noundef %1, i32 noundef %2, double noundef %3) #1 {
  %5 = alloca [4 x %struct.PointStruct], align 16
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %5) #18
  %6 = sitofp i32 %1 to double
  %7 = fdiv double 0x401921FB54442EEA, %6
  %8 = sitofp i32 %2 to double
  %9 = fdiv double 0x401921FB54442EEA, %8
  %10 = getelementptr inbounds %struct.PointStruct, ptr %5, i64 0, i32 1
  %11 = getelementptr inbounds %struct.PointStruct, ptr %5, i64 0, i32 2
  %12 = getelementptr inbounds [4 x %struct.PointStruct], ptr %5, i64 0, i64 1
  %13 = getelementptr inbounds [4 x %struct.PointStruct], ptr %5, i64 0, i64 1, i32 1
  %14 = getelementptr inbounds [4 x %struct.PointStruct], ptr %5, i64 0, i64 1, i32 2
  %15 = getelementptr inbounds [4 x %struct.PointStruct], ptr %5, i64 0, i64 2
  %16 = getelementptr inbounds [4 x %struct.PointStruct], ptr %5, i64 0, i64 2, i32 1
  %17 = getelementptr inbounds [4 x %struct.PointStruct], ptr %5, i64 0, i64 2, i32 2
  %18 = getelementptr inbounds [4 x %struct.PointStruct], ptr %5, i64 0, i64 3
  %19 = getelementptr inbounds [4 x %struct.PointStruct], ptr %5, i64 0, i64 3, i32 1
  %20 = getelementptr inbounds [4 x %struct.PointStruct], ptr %5, i64 0, i64 3, i32 2
  br label %21

21:                                               ; preds = %68, %4
  %22 = phi double [ 0xC00921FB54442EEA, %4 ], [ %23, %68 ]
  %23 = fadd double %7, %22
  br label %24

24:                                               ; preds = %24, %21
  %25 = phi double [ 0xC00921FB54442EEA, %21 ], [ %46, %24 ]
  %26 = call double @cos(double noundef %25) #19
  %27 = call double @cos(double noundef %22) #19
  %28 = fmul double %26, %27
  %29 = fmul double %28, %3
  store double %29, ptr %5, align 16, !tbaa !17
  %30 = call double @sin(double noundef %25) #19
  %31 = call double @cos(double noundef %22) #19
  %32 = fmul double %30, %31
  %33 = fmul double %32, %3
  store double %33, ptr %10, align 8, !tbaa !19
  %34 = call double @sin(double noundef %22) #19
  %35 = fmul double %34, %3
  store double %35, ptr %11, align 16, !tbaa !20
  %36 = call double @cos(double noundef %25) #19
  %37 = call double @cos(double noundef %23) #19
  %38 = fmul double %36, %37
  %39 = fmul double %38, %3
  store double %39, ptr %12, align 8, !tbaa !17
  %40 = call double @sin(double noundef %25) #19
  %41 = call double @cos(double noundef %23) #19
  %42 = fmul double %40, %41
  %43 = fmul double %42, %3
  store double %43, ptr %13, align 16, !tbaa !19
  %44 = call double @sin(double noundef %23) #19
  %45 = fmul double %44, %3
  store double %45, ptr %14, align 8, !tbaa !20
  %46 = fadd double %9, %25
  %47 = call double @cos(double noundef %46) #19
  %48 = call double @cos(double noundef %23) #19
  %49 = fmul double %47, %48
  %50 = fmul double %49, %3
  store double %50, ptr %15, align 16, !tbaa !17
  %51 = call double @sin(double noundef %46) #19
  %52 = call double @cos(double noundef %23) #19
  %53 = fmul double %51, %52
  %54 = fmul double %53, %3
  store double %54, ptr %16, align 8, !tbaa !19
  %55 = call double @sin(double noundef %23) #19
  %56 = fmul double %55, %3
  store double %56, ptr %17, align 16, !tbaa !20
  %57 = call double @cos(double noundef %46) #19
  %58 = call double @cos(double noundef %22) #19
  %59 = fmul double %57, %58
  %60 = fmul double %59, %3
  store double %60, ptr %18, align 8, !tbaa !17
  %61 = call double @sin(double noundef %46) #19
  %62 = call double @cos(double noundef %22) #19
  %63 = fmul double %61, %62
  %64 = fmul double %63, %3
  store double %64, ptr %19, align 16, !tbaa !19
  %65 = call double @sin(double noundef %22) #19
  %66 = fmul double %65, %3
  store double %66, ptr %20, align 8, !tbaa !20
  call void @InsertPoly4(ptr noundef %0, ptr noundef nonnull %5, ptr noundef null, ptr noundef null) #19
  %67 = fcmp olt double %46, 0x400921FBDA7BEBF0
  br i1 %67, label %24, label %68, !llvm.loop !21

68:                                               ; preds = %24
  %69 = fcmp olt double %23, 0x400921FBDA7BEBF0
  br i1 %69, label %21, label %70, !llvm.loop !23

70:                                               ; preds = %68
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %5) #18
  ret ptr %0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @cos(double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @sin(double noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind optsize uwtable
define dso_local i32 @main(i32 noundef %0, ptr nocapture noundef readnone %1) #1 {
  %3 = tail call ptr @Oalloc(ptr noundef nonnull @.str) #19
  %4 = tail call ptr @Oalloc(ptr noundef nonnull @.str.1) #19
  %5 = tail call ptr @MakeSphere(ptr noundef %4, i32 noundef 25, i32 noundef 25, double noundef 1.000000e+01) #20
  %6 = getelementptr inbounds %struct.ObjectStruct, ptr %4, i64 0, i32 9
  store <2 x double> <double 8.700000e+01, double 8.700000e+01>, ptr %6, align 8, !tbaa !7
  tail call void @InsertChild(ptr noundef %3, ptr noundef %4) #19
  %7 = getelementptr inbounds %struct.ObjectStruct, ptr %3, i64 0, i32 10, i32 1
  br label %8

8:                                                ; preds = %8, %2
  %9 = phi i32 [ 0, %2 ], [ %11, %8 ]
  %10 = sitofp i32 %9 to double
  store double %10, ptr %7, align 8, !tbaa !24
  tail call void @CalcObject(ptr noundef %3) #19
  %11 = add nuw nsw i32 %9, 1
  %12 = icmp eq i32 %11, 360
  br i1 %12, label %13, label %8, !llvm.loop !29

13:                                               ; preds = %8
  tail call void @PrintObject(ptr noundef %4) #19
  tail call void @Draw_All(ptr noundef null) #19
  ret i32 0
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn uwtable
define internal ptr @Oalloc(ptr nocapture noundef readonly %0) #4 {
  %2 = tail call noalias dereferenceable_or_null(272) ptr @calloc(i64 noundef 272, i64 noundef 1) #21
  %3 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) %0) #19
  %4 = getelementptr inbounds %struct.ObjectStruct, ptr %2, i64 0, i32 6
  store <2 x double> <double 1.000000e+00, double 1.000000e+00>, ptr %4, align 8, !tbaa !7
  %5 = getelementptr inbounds %struct.ObjectStruct, ptr %2, i64 0, i32 6, i32 2
  store double 1.000000e+00, ptr %5, align 8, !tbaa !30
  %6 = getelementptr inbounds %struct.ObjectStruct, ptr %2, i64 0, i32 7
  store i32 0, ptr %6, align 8, !tbaa !31
  %7 = getelementptr inbounds %struct.ObjectStruct, ptr %2, i64 0, i32 8
  store i32 0, ptr %7, align 4, !tbaa !32
  %8 = getelementptr inbounds %struct.ObjectStruct, ptr %2, i64 0, i32 12
  %9 = getelementptr inbounds %struct.ObjectStruct, ptr %2, i64 0, i32 10
  %10 = getelementptr inbounds %struct.ObjectStruct, ptr %2, i64 0, i32 11
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %8, i8 0, i64 44, i1 false)
  store <2 x double> <double 1.000000e+00, double 1.000000e+00>, ptr %10, align 8, !tbaa !7
  %11 = getelementptr inbounds %struct.ObjectStruct, ptr %2, i64 0, i32 11, i32 2
  store double 1.000000e+00, ptr %11, align 8, !tbaa !33
  %12 = getelementptr inbounds %struct.ObjectStruct, ptr %2, i64 0, i32 9
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  ret ptr %2
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #6

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: nofree nounwind optsize uwtable
define internal ptr @InsertPoint(ptr nocapture noundef %0, double noundef %1, double noundef %2, double noundef %3) #8 {
  %5 = getelementptr inbounds %struct.ObjectStruct, ptr %0, i64 0, i32 15
  %6 = load i32, ptr %5, align 4, !tbaa !34
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %18

8:                                                ; preds = %4
  %9 = tail call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #22
  %10 = getelementptr inbounds %struct.ObjectStruct, ptr %0, i64 0, i32 1
  store ptr %9, ptr %10, align 8, !tbaa !35
  %11 = tail call noalias dereferenceable_or_null(48) ptr @malloc(i64 noundef 48) #22
  store ptr %11, ptr %9, align 8, !tbaa !36
  store double %1, ptr %11, align 8, !tbaa !38
  %12 = getelementptr inbounds %struct.ObjPointStruct, ptr %11, i64 0, i32 1
  store double %2, ptr %12, align 8, !tbaa !39
  %13 = getelementptr inbounds %struct.ObjPointStruct, ptr %11, i64 0, i32 2
  store double %3, ptr %13, align 8, !tbaa !11
  %14 = getelementptr inbounds %struct.ObjPointStruct, ptr %11, i64 0, i32 3
  store double %1, ptr %14, align 8, !tbaa !40
  %15 = getelementptr inbounds %struct.ObjPointStruct, ptr %11, i64 0, i32 4
  store double %2, ptr %15, align 8, !tbaa !41
  %16 = getelementptr inbounds %struct.ObjPointStruct, ptr %11, i64 0, i32 5
  store double %3, ptr %16, align 8, !tbaa !16
  %17 = getelementptr inbounds %struct.PointListStruct, ptr %9, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %17, i8 0, i64 16, i1 false)
  br label %59

18:                                               ; preds = %4
  %19 = getelementptr inbounds %struct.ObjectStruct, ptr %0, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !35, !nonnull !42, !noundef !42
  br label %21

21:                                               ; preds = %43, %18
  %22 = phi ptr [ %45, %43 ], [ %20, %18 ]
  %23 = load ptr, ptr %22, align 8, !tbaa !36
  %24 = load double, ptr %23, align 8, !tbaa !38
  %25 = fsub double %24, %1
  %26 = tail call double @llvm.fabs.f64(double %25)
  %27 = fpext double %26 to x86_fp80
  %28 = fcmp uge x86_fp80 %27, 0xK3FEB8637BD05AF6C69B6
  br i1 %28, label %43, label %29

29:                                               ; preds = %21
  %30 = getelementptr inbounds %struct.ObjPointStruct, ptr %23, i64 0, i32 1
  %31 = load double, ptr %30, align 8, !tbaa !39
  %32 = fsub double %31, %2
  %33 = tail call double @llvm.fabs.f64(double %32)
  %34 = fpext double %33 to x86_fp80
  %35 = fcmp uge x86_fp80 %34, 0xK3FEB8637BD05AF6C69B6
  br i1 %35, label %43, label %36

36:                                               ; preds = %29
  %37 = getelementptr inbounds %struct.ObjPointStruct, ptr %23, i64 0, i32 2
  %38 = load double, ptr %37, align 8, !tbaa !11
  %39 = fsub double %38, %3
  %40 = tail call double @llvm.fabs.f64(double %39)
  %41 = fpext double %40 to x86_fp80
  %42 = fcmp uge x86_fp80 %41, 0xK3FEB8637BD05AF6C69B6
  br i1 %42, label %43, label %62

43:                                               ; preds = %36, %29, %21
  %44 = getelementptr inbounds %struct.PointListStruct, ptr %22, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !43
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %21, !llvm.loop !44

47:                                               ; preds = %43
  %.lcssa = phi ptr [ %22, %43 ]
  %48 = tail call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #22
  %49 = getelementptr inbounds %struct.PointListStruct, ptr %.lcssa, i64 0, i32 1
  store ptr %48, ptr %49, align 8, !tbaa !43
  %50 = tail call noalias dereferenceable_or_null(48) ptr @malloc(i64 noundef 48) #22
  store ptr %50, ptr %48, align 8, !tbaa !36
  store double %1, ptr %50, align 8, !tbaa !38
  %51 = getelementptr inbounds %struct.ObjPointStruct, ptr %50, i64 0, i32 1
  store double %2, ptr %51, align 8, !tbaa !39
  %52 = getelementptr inbounds %struct.ObjPointStruct, ptr %50, i64 0, i32 2
  store double %3, ptr %52, align 8, !tbaa !11
  %53 = getelementptr inbounds %struct.ObjPointStruct, ptr %50, i64 0, i32 3
  store double %1, ptr %53, align 8, !tbaa !40
  %54 = getelementptr inbounds %struct.ObjPointStruct, ptr %50, i64 0, i32 4
  store double %2, ptr %54, align 8, !tbaa !41
  %55 = getelementptr inbounds %struct.ObjPointStruct, ptr %50, i64 0, i32 5
  store double %3, ptr %55, align 8, !tbaa !16
  %56 = getelementptr inbounds %struct.PointListStruct, ptr %48, i64 0, i32 2
  store ptr %.lcssa, ptr %56, align 8, !tbaa !45
  %57 = getelementptr inbounds %struct.PointListStruct, ptr %48, i64 0, i32 1
  store ptr null, ptr %57, align 8, !tbaa !43
  %58 = add nsw i32 %6, 1
  br label %59

59:                                               ; preds = %47, %8
  %60 = phi i32 [ %58, %47 ], [ 1, %8 ]
  %61 = phi ptr [ %50, %47 ], [ %11, %8 ]
  store i32 %60, ptr %5, align 4, !tbaa !34
  br label %62

62:                                               ; preds = %59, %36
  %63 = phi ptr [ %61, %59 ], [ %23, %36 ]
  ret ptr %63
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #10

; Function Attrs: nofree nounwind optsize uwtable
define internal void @InsertPoly4(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2, ptr nocapture readnone %3) #8 {
  %5 = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #22
  %6 = getelementptr inbounds %struct.Poly4Struct, ptr %5, i64 0, i32 3
  %7 = getelementptr inbounds %struct.Poly4Struct, ptr %5, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, i8 0, i64 32, i1 false)
  br label %8

8:                                                ; preds = %8, %4
  %9 = phi i64 [ 0, %4 ], [ %18, %8 ]
  %10 = getelementptr inbounds %struct.PointStruct, ptr %1, i64 %9
  %11 = load double, ptr %10, align 8, !tbaa !17
  %12 = getelementptr inbounds %struct.PointStruct, ptr %1, i64 %9, i32 1
  %13 = load double, ptr %12, align 8, !tbaa !19
  %14 = getelementptr inbounds %struct.PointStruct, ptr %1, i64 %9, i32 2
  %15 = load double, ptr %14, align 8, !tbaa !20
  %16 = tail call ptr @InsertPoint(ptr noundef %0, double noundef %11, double noundef %13, double noundef %15) #20
  %17 = getelementptr inbounds [4 x ptr], ptr %5, i64 0, i64 %9
  store ptr %16, ptr %17, align 8, !tbaa !46
  %18 = add nuw nsw i64 %9, 1
  %19 = icmp eq i64 %18, 4
  br i1 %19, label %20, label %8, !llvm.loop !47

20:                                               ; preds = %8
  %21 = getelementptr inbounds %struct.ObjectStruct, ptr %0, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !48
  %23 = icmp eq ptr %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.Poly4Struct, ptr %22, i64 0, i32 4
  store ptr %5, ptr %25, align 8, !tbaa !49
  store ptr %22, ptr %6, align 8, !tbaa !51
  br label %26

26:                                               ; preds = %24, %20
  store ptr %5, ptr %21, align 8, !tbaa !48
  %27 = getelementptr inbounds %struct.ObjectStruct, ptr %0, i64 0, i32 17
  %28 = load i32, ptr %27, align 4, !tbaa !52
  %29 = add nsw i32 %28, 1
  store i32 %29, ptr %27, align 4, !tbaa !52
  ret void
}

; Function Attrs: nofree nounwind optsize uwtable
define internal void @PrintPoints(ptr nocapture noundef readonly %0) #8 {
  %2 = getelementptr inbounds %struct.ObjectStruct, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = icmp eq ptr %3, null
  br i1 %4, label %27, label %5

5:                                                ; preds = %5, %1
  %6 = phi ptr [ %25, %5 ], [ %3, %1 ]
  %7 = phi i32 [ %23, %5 ], [ 0, %1 ]
  %8 = load ptr, ptr %6, align 8, !tbaa !36
  %9 = load double, ptr %8, align 8, !tbaa !38
  %10 = getelementptr inbounds %struct.ObjPointStruct, ptr %8, i64 0, i32 1
  %11 = load double, ptr %10, align 8, !tbaa !39
  %12 = getelementptr inbounds %struct.ObjPointStruct, ptr %8, i64 0, i32 2
  %13 = load double, ptr %12, align 8, !tbaa !11
  %14 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, i32 noundef %7, double noundef %9, double noundef %11, double noundef %13) #20
  %15 = load ptr, ptr %6, align 8, !tbaa !36
  %16 = getelementptr inbounds %struct.ObjPointStruct, ptr %15, i64 0, i32 3
  %17 = load double, ptr %16, align 8, !tbaa !40
  %18 = getelementptr inbounds %struct.ObjPointStruct, ptr %15, i64 0, i32 4
  %19 = load double, ptr %18, align 8, !tbaa !41
  %20 = getelementptr inbounds %struct.ObjPointStruct, ptr %15, i64 0, i32 5
  %21 = load double, ptr %20, align 8, !tbaa !16
  %22 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1.6, double noundef %17, double noundef %19, double noundef %21) #20
  %23 = add nuw nsw i32 %7, 1
  %24 = getelementptr inbounds %struct.PointListStruct, ptr %6, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !46
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %5, !llvm.loop !53

27:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #11

; Function Attrs: nofree nounwind optsize uwtable
define internal void @PrintPoly3s(ptr nocapture noundef readonly %0) #8 {
  %2 = getelementptr inbounds %struct.ObjectStruct, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !54
  %4 = icmp eq ptr %3, null
  br i1 %4, label %32, label %5

5:                                                ; preds = %28, %1
  %6 = phi ptr [ %30, %28 ], [ %3, %1 ]
  br label %7

7:                                                ; preds = %7, %5
  %8 = phi i64 [ 0, %5 ], [ %26, %7 ]
  %9 = getelementptr inbounds [3 x ptr], ptr %6, i64 0, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !46
  %11 = load double, ptr %10, align 8, !tbaa !38
  %12 = getelementptr inbounds %struct.ObjPointStruct, ptr %10, i64 0, i32 1
  %13 = load double, ptr %12, align 8, !tbaa !39
  %14 = getelementptr inbounds %struct.ObjPointStruct, ptr %10, i64 0, i32 2
  %15 = load double, ptr %14, align 8, !tbaa !11
  %16 = trunc i64 %8 to i32
  %17 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %16, double noundef %11, double noundef %13, double noundef %15) #20
  %18 = load ptr, ptr %9, align 8, !tbaa !46
  %19 = getelementptr inbounds %struct.ObjPointStruct, ptr %18, i64 0, i32 3
  %20 = load double, ptr %19, align 8, !tbaa !40
  %21 = getelementptr inbounds %struct.ObjPointStruct, ptr %18, i64 0, i32 4
  %22 = load double, ptr %21, align 8, !tbaa !41
  %23 = getelementptr inbounds %struct.ObjPointStruct, ptr %18, i64 0, i32 5
  %24 = load double, ptr %23, align 8, !tbaa !16
  %25 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, double noundef %20, double noundef %22, double noundef %24) #20
  %26 = add nuw nsw i64 %8, 1
  %27 = icmp eq i64 %26, 3
  br i1 %27, label %28, label %7, !llvm.loop !55

28:                                               ; preds = %7
  %29 = getelementptr inbounds %struct.Poly3Struct, ptr %6, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !56
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %5, !llvm.loop !58

32:                                               ; preds = %28, %1
  ret void
}

; Function Attrs: nofree nounwind optsize uwtable
define internal void @PrintPoly4s(ptr nocapture noundef readonly %0) #8 {
  %2 = getelementptr inbounds %struct.ObjectStruct, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !48
  %4 = icmp eq ptr %3, null
  br i1 %4, label %32, label %5

5:                                                ; preds = %28, %1
  %6 = phi ptr [ %30, %28 ], [ %3, %1 ]
  br label %7

7:                                                ; preds = %7, %5
  %8 = phi i64 [ 0, %5 ], [ %26, %7 ]
  %9 = getelementptr inbounds [4 x ptr], ptr %6, i64 0, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !46
  %11 = load double, ptr %10, align 8, !tbaa !38
  %12 = getelementptr inbounds %struct.ObjPointStruct, ptr %10, i64 0, i32 1
  %13 = load double, ptr %12, align 8, !tbaa !39
  %14 = getelementptr inbounds %struct.ObjPointStruct, ptr %10, i64 0, i32 2
  %15 = load double, ptr %14, align 8, !tbaa !11
  %16 = trunc i64 %8 to i32
  %17 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i32 noundef %16, double noundef %11, double noundef %13, double noundef %15) #20
  %18 = load ptr, ptr %9, align 8, !tbaa !46
  %19 = getelementptr inbounds %struct.ObjPointStruct, ptr %18, i64 0, i32 3
  %20 = load double, ptr %19, align 8, !tbaa !40
  %21 = getelementptr inbounds %struct.ObjPointStruct, ptr %18, i64 0, i32 4
  %22 = load double, ptr %21, align 8, !tbaa !41
  %23 = getelementptr inbounds %struct.ObjPointStruct, ptr %18, i64 0, i32 5
  %24 = load double, ptr %23, align 8, !tbaa !16
  %25 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, double noundef %20, double noundef %22, double noundef %24) #20
  %26 = add nuw nsw i64 %8, 1
  %27 = icmp eq i64 %26, 4
  br i1 %27, label %28, label %7, !llvm.loop !59

28:                                               ; preds = %7
  %29 = getelementptr inbounds %struct.Poly4Struct, ptr %6, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !51
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %5, !llvm.loop !60

32:                                               ; preds = %28, %1
  ret void
}

; Function Attrs: nofree nounwind optsize uwtable
define internal void @PrintObject(ptr noundef %0) #8 {
  %2 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5.9, ptr noundef %0) #20
  tail call void @PrintPoints(ptr noundef %0) #20
  tail call void @PrintPoly3s(ptr noundef %0) #20
  tail call void @PrintPoly4s(ptr noundef %0) #20
  %3 = getelementptr inbounds %struct.ObjectStruct, ptr %0, i64 0, i32 11
  %4 = load double, ptr %3, align 8, !tbaa !61
  %5 = getelementptr inbounds %struct.ObjectStruct, ptr %0, i64 0, i32 11, i32 1
  %6 = load double, ptr %5, align 8, !tbaa !62
  %7 = getelementptr inbounds %struct.ObjectStruct, ptr %0, i64 0, i32 11, i32 2
  %8 = load double, ptr %7, align 8, !tbaa !33
  %9 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, double noundef %4, double noundef %6, double noundef %8) #20
  %10 = getelementptr inbounds %struct.ObjectStruct, ptr %0, i64 0, i32 9
  %11 = load double, ptr %10, align 8, !tbaa !63
  %12 = getelementptr inbounds %struct.ObjectStruct, ptr %0, i64 0, i32 9, i32 1
  %13 = load double, ptr %12, align 8, !tbaa !64
  %14 = getelementptr inbounds %struct.ObjectStruct, ptr %0, i64 0, i32 9, i32 2
  %15 = load double, ptr %14, align 8, !tbaa !65
  %16 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, double noundef %11, double noundef %13, double noundef %15) #20
  %17 = getelementptr inbounds %struct.ObjectStruct, ptr %0, i64 0, i32 10
  %18 = load double, ptr %17, align 8, !tbaa !66
  %19 = getelementptr inbounds %struct.ObjectStruct, ptr %0, i64 0, i32 10, i32 1
  %20 = load double, ptr %19, align 8, !tbaa !24
  %21 = getelementptr inbounds %struct.ObjectStruct, ptr %0, i64 0, i32 10, i32 2
  %22 = load double, ptr %21, align 8, !tbaa !67
  %23 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, double noundef %18, double noundef %20, double noundef %22) #20
  %24 = getelementptr inbounds %struct.ObjectStruct, ptr %0, i64 0, i32 6
  %25 = load double, ptr %24, align 8, !tbaa !68
  %26 = getelementptr inbounds %struct.ObjectStruct, ptr %0, i64 0, i32 6, i32 1
  %27 = load double, ptr %26, align 8, !tbaa !69
  %28 = getelementptr inbounds %struct.ObjectStruct, ptr %0, i64 0, i32 6, i32 2
  %29 = load double, ptr %28, align 8, !tbaa !30
  %30 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, double noundef %25, double noundef %27, double noundef %29) #20
  %31 = getelementptr inbounds %struct.ObjectStruct, ptr %0, i64 0, i32 8
  %32 = load i32, ptr %31, align 4, !tbaa !32
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %1
  %35 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.17)
  %36 = load i32, ptr %31, align 4, !tbaa !32
  br label %37

37:                                               ; preds = %34, %1
  %38 = phi i32 [ %36, %34 ], [ %32, %1 ]
  %39 = icmp eq i32 %38, 1
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.16)
  %42 = load i32, ptr %31, align 4, !tbaa !32
  br label %43

43:                                               ; preds = %40, %37
  %44 = phi i32 [ %42, %40 ], [ %38, %37 ]
  %45 = icmp eq i32 %44, 2
  br i1 %45, label %46, label %48

46:                                               ; preds = %43
  %47 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %48

48:                                               ; preds = %46, %43
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #12

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @InsertChild(ptr noundef %0, ptr noundef %1) #13 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %13, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.ObjectStruct, ptr %0, i64 0, i32 12
  %6 = load ptr, ptr %5, align 8, !tbaa !70
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.ObjectStruct, ptr %6, i64 0, i32 21
  store ptr %1, ptr %9, align 8, !tbaa !71
  %10 = getelementptr inbounds %struct.ObjectStruct, ptr %1, i64 0, i32 22
  store ptr %6, ptr %10, align 8, !tbaa !72
  %11 = getelementptr inbounds %struct.ObjectStruct, ptr %1, i64 0, i32 21
  store ptr null, ptr %11, align 8, !tbaa !71
  br label %12

12:                                               ; preds = %8, %4
  store ptr %1, ptr %5, align 8, !tbaa !70
  br label %13

13:                                               ; preds = %12, %2
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @CalcObjectChildren(ptr noundef readonly %0, double noundef %1, double noundef %2, double noundef %3, double noundef %4, double noundef %5, double noundef %6, double noundef %7, double noundef %8, double noundef %9) #1 {
  %11 = icmp eq ptr %0, null
  br i1 %11, label %21, label %12

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.ObjectStruct, ptr %0, i64 0, i32 12
  %14 = load ptr, ptr %13, align 8, !tbaa !46
  %15 = icmp eq ptr %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %16, %12
  %17 = phi ptr [ %19, %16 ], [ %14, %12 ]
  tail call void @ScaleObjectAdd(ptr noundef nonnull %17, double noundef %1, double noundef %2, double noundef %3) #20
  tail call void @RotateObjectAdd(ptr noundef nonnull %17, double noundef %4, double noundef %5, double noundef %6) #20
  tail call void @TranslateObjectAdd(ptr noundef nonnull %17, double noundef %7, double noundef %8, double noundef %9) #20
  tail call void @CalcObjectChildren(ptr noundef nonnull %17, double noundef %1, double noundef %2, double noundef %3, double noundef %4, double noundef %5, double noundef %6, double noundef %7, double noundef %8, double noundef %9) #20
  %18 = getelementptr inbounds %struct.ObjectStruct, ptr %17, i64 0, i32 21
  %19 = load ptr, ptr %18, align 8, !tbaa !46
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %16, !llvm.loop !73

21:                                               ; preds = %16, %12, %10
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @ScaleObjectAdd(ptr noundef readonly %0, double noundef %1, double noundef %2, double noundef %3) #1 {
  %5 = alloca %struct.HPointStruct, align 16
  %6 = alloca %struct.HPointStruct, align 8
  %7 = alloca %struct.HPointStruct, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #18
  %8 = tail call ptr @ScaleMatrix(double noundef %1, double noundef %2, double noundef %3) #19
  %9 = icmp eq ptr %0, null
  br i1 %9, label %27, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.ObjectStruct, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !46
  %13 = icmp eq ptr %12, null
  br i1 %13, label %30, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.HPointStruct, ptr %5, i64 0, i32 2
  br label %16

16:                                               ; preds = %16, %14
  %17 = phi ptr [ %12, %14 ], [ %25, %16 ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #18
  %18 = load ptr, ptr %17, align 8, !tbaa !36
  call void @TPointToHPoint(ptr nonnull sret(%struct.HPointStruct) align 8 %6, ptr noundef byval(%struct.ObjPointStruct) align 8 %18) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !tbaa.struct !74
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #18
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #18
  call void @MultMatrixHPoint(ptr nonnull sret(%struct.HPointStruct) align 8 %7, ptr noundef %8, ptr noundef nonnull byval(%struct.HPointStruct) align 8 %5) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %7, i64 32, i1 false), !tbaa.struct !74
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #18
  %19 = load ptr, ptr %17, align 8, !tbaa !36
  %20 = getelementptr inbounds %struct.ObjPointStruct, ptr %19, i64 0, i32 3
  %21 = load <2 x double>, ptr %5, align 16, !tbaa !7
  store <2 x double> %21, ptr %20, align 8, !tbaa !7
  %22 = load double, ptr %15, align 16, !tbaa !13
  %23 = getelementptr inbounds %struct.ObjPointStruct, ptr %19, i64 0, i32 5
  store double %22, ptr %23, align 8, !tbaa !16
  %24 = getelementptr inbounds %struct.PointListStruct, ptr %17, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !46
  %26 = icmp eq ptr %25, null
  br i1 %26, label %30, label %16, !llvm.loop !75

27:                                               ; preds = %4
  %28 = load ptr, ptr @stderr, align 8, !tbaa !46
  %29 = tail call i64 @fwrite(ptr nonnull @.str.15, i64 25, i64 1, ptr %28) #23
  br label %30

30:                                               ; preds = %27, %16, %10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #18
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @RotateObjectAdd(ptr noundef readonly %0, double noundef %1, double noundef %2, double noundef %3) #1 {
  %5 = alloca %struct.HPointStruct, align 16
  %6 = alloca %struct.HPointStruct, align 8
  %7 = alloca %struct.HPointStruct, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #18
  %8 = icmp eq ptr %0, null
  br i1 %8, label %27, label %9

9:                                                ; preds = %4
  %10 = tail call ptr @RotateMatrix(double noundef %1, double noundef %2, double noundef %3) #19
  %11 = getelementptr inbounds %struct.ObjectStruct, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !46
  %13 = icmp eq ptr %12, null
  br i1 %13, label %30, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.HPointStruct, ptr %5, i64 0, i32 2
  br label %16

16:                                               ; preds = %16, %14
  %17 = phi ptr [ %12, %14 ], [ %25, %16 ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #18
  %18 = load ptr, ptr %17, align 8, !tbaa !36
  call void @TPointToHPoint(ptr nonnull sret(%struct.HPointStruct) align 8 %6, ptr noundef byval(%struct.ObjPointStruct) align 8 %18) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !tbaa.struct !74
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #18
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #18
  call void @MultMatrixHPoint(ptr nonnull sret(%struct.HPointStruct) align 8 %7, ptr noundef %10, ptr noundef nonnull byval(%struct.HPointStruct) align 8 %5) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %7, i64 32, i1 false), !tbaa.struct !74
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #18
  %19 = load ptr, ptr %17, align 8, !tbaa !36
  %20 = getelementptr inbounds %struct.ObjPointStruct, ptr %19, i64 0, i32 3
  %21 = load <2 x double>, ptr %5, align 16, !tbaa !7
  store <2 x double> %21, ptr %20, align 8, !tbaa !7
  %22 = load double, ptr %15, align 16, !tbaa !13
  %23 = getelementptr inbounds %struct.ObjPointStruct, ptr %19, i64 0, i32 5
  store double %22, ptr %23, align 8, !tbaa !16
  %24 = getelementptr inbounds %struct.PointListStruct, ptr %17, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !46
  %26 = icmp eq ptr %25, null
  br i1 %26, label %30, label %16, !llvm.loop !76

27:                                               ; preds = %4
  %28 = load ptr, ptr @stderr, align 8, !tbaa !46
  %29 = tail call i64 @fwrite(ptr nonnull @.str.14, i64 26, i64 1, ptr %28) #23
  br label %30

30:                                               ; preds = %27, %16, %9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #18
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @TranslateObjectAdd(ptr noundef readonly %0, double noundef %1, double noundef %2, double noundef %3) #1 {
  %5 = alloca %struct.HPointStruct, align 16
  %6 = alloca %struct.HPointStruct, align 8
  %7 = alloca %struct.HPointStruct, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #18
  %8 = icmp eq ptr %0, null
  br i1 %8, label %27, label %9

9:                                                ; preds = %4
  %10 = tail call ptr @TranslateMatrix(double noundef %1, double noundef %2, double noundef %3) #19
  %11 = getelementptr inbounds %struct.ObjectStruct, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !46
  %13 = icmp eq ptr %12, null
  br i1 %13, label %30, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.HPointStruct, ptr %5, i64 0, i32 2
  br label %16

16:                                               ; preds = %16, %14
  %17 = phi ptr [ %12, %14 ], [ %25, %16 ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #18
  %18 = load ptr, ptr %17, align 8, !tbaa !36
  call void @TPointToHPoint(ptr nonnull sret(%struct.HPointStruct) align 8 %6, ptr noundef byval(%struct.ObjPointStruct) align 8 %18) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !tbaa.struct !74
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #18
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #18
  call void @MultMatrixHPoint(ptr nonnull sret(%struct.HPointStruct) align 8 %7, ptr noundef %10, ptr noundef nonnull byval(%struct.HPointStruct) align 8 %5) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %7, i64 32, i1 false), !tbaa.struct !74
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #18
  %19 = load ptr, ptr %17, align 8, !tbaa !36
  %20 = getelementptr inbounds %struct.ObjPointStruct, ptr %19, i64 0, i32 3
  %21 = load <2 x double>, ptr %5, align 16, !tbaa !7
  store <2 x double> %21, ptr %20, align 8, !tbaa !7
  %22 = load double, ptr %15, align 16, !tbaa !13
  %23 = getelementptr inbounds %struct.ObjPointStruct, ptr %19, i64 0, i32 5
  store double %22, ptr %23, align 8, !tbaa !16
  %24 = getelementptr inbounds %struct.PointListStruct, ptr %17, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !46
  %26 = icmp eq ptr %25, null
  br i1 %26, label %30, label %16, !llvm.loop !77

27:                                               ; preds = %4
  %28 = load ptr, ptr @stderr, align 8, !tbaa !46
  %29 = tail call i64 @fwrite(ptr nonnull @.str.13, i64 29, i64 1, ptr %28) #23
  br label %30

30:                                               ; preds = %27, %16, %9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #18
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #14

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: nounwind optsize uwtable
define internal void @CalcObject(ptr noundef %0) #1 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %40, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.ObjectStruct, ptr %0, i64 0, i32 12
  %5 = load ptr, ptr %4, align 8, !tbaa !46
  %6 = icmp eq ptr %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %7, %3
  %8 = phi ptr [ %10, %7 ], [ %5, %3 ]
  tail call void @CalcObject(ptr noundef nonnull %8) #20
  %9 = getelementptr inbounds %struct.ObjectStruct, ptr %8, i64 0, i32 21
  %10 = load ptr, ptr %9, align 8, !tbaa !46
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %7, !llvm.loop !78

12:                                               ; preds = %7, %3
  %13 = getelementptr inbounds %struct.ObjectStruct, ptr %0, i64 0, i32 11
  %14 = load double, ptr %13, align 8, !tbaa !61
  %15 = getelementptr inbounds %struct.ObjectStruct, ptr %0, i64 0, i32 11, i32 1
  %16 = load double, ptr %15, align 8, !tbaa !62
  %17 = getelementptr inbounds %struct.ObjectStruct, ptr %0, i64 0, i32 11, i32 2
  %18 = load double, ptr %17, align 8, !tbaa !33
  %19 = getelementptr inbounds %struct.ObjectStruct, ptr %0, i64 0, i32 10
  %20 = load double, ptr %19, align 8, !tbaa !66
  %21 = getelementptr inbounds %struct.ObjectStruct, ptr %0, i64 0, i32 10, i32 1
  %22 = load double, ptr %21, align 8, !tbaa !24
  %23 = getelementptr inbounds %struct.ObjectStruct, ptr %0, i64 0, i32 10, i32 2
  %24 = load double, ptr %23, align 8, !tbaa !67
  %25 = getelementptr inbounds %struct.ObjectStruct, ptr %0, i64 0, i32 9
  %26 = load double, ptr %25, align 8, !tbaa !63
  %27 = getelementptr inbounds %struct.ObjectStruct, ptr %0, i64 0, i32 9, i32 1
  %28 = load double, ptr %27, align 8, !tbaa !64
  %29 = getelementptr inbounds %struct.ObjectStruct, ptr %0, i64 0, i32 9, i32 2
  %30 = load double, ptr %29, align 8, !tbaa !65
  tail call void @CalcObjectChildren(ptr noundef nonnull %0, double noundef %14, double noundef %16, double noundef %18, double noundef %20, double noundef %22, double noundef %24, double noundef %26, double noundef %28, double noundef %30) #20
  %31 = load double, ptr %13, align 8, !tbaa !61
  %32 = load double, ptr %15, align 8, !tbaa !62
  %33 = load double, ptr %17, align 8, !tbaa !33
  tail call void @ScaleObjectOverwrite(ptr noundef nonnull %0, double noundef %31, double noundef %32, double noundef %33) #20
  %34 = load double, ptr %19, align 8, !tbaa !66
  %35 = load double, ptr %21, align 8, !tbaa !24
  %36 = load double, ptr %23, align 8, !tbaa !67
  tail call void @RotateObjectAdd(ptr noundef nonnull %0, double noundef %34, double noundef %35, double noundef %36) #20
  %37 = load double, ptr %25, align 8, !tbaa !63
  %38 = load double, ptr %27, align 8, !tbaa !64
  %39 = load double, ptr %29, align 8, !tbaa !65
  tail call void @TranslateObjectAdd(ptr noundef nonnull %0, double noundef %37, double noundef %38, double noundef %39) #20
  br label %40

40:                                               ; preds = %12, %1
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @ScaleObjectOverwrite(ptr noundef readonly %0, double noundef %1, double noundef %2, double noundef %3) #1 {
  %5 = alloca %struct.HPointStruct, align 16
  %6 = alloca %struct.HPointStruct, align 8
  %7 = alloca %struct.HPointStruct, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #18
  %8 = tail call ptr @ScaleMatrix(double noundef %1, double noundef %2, double noundef %3) #19
  %9 = icmp eq ptr %0, null
  br i1 %9, label %27, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.ObjectStruct, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !46
  %13 = icmp eq ptr %12, null
  br i1 %13, label %30, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.HPointStruct, ptr %5, i64 0, i32 2
  br label %16

16:                                               ; preds = %16, %14
  %17 = phi ptr [ %12, %14 ], [ %25, %16 ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #18
  %18 = load ptr, ptr %17, align 8, !tbaa !36
  call void @PointToHPoint(ptr nonnull sret(%struct.HPointStruct) align 8 %6, ptr noundef byval(%struct.ObjPointStruct) align 8 %18) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !tbaa.struct !74
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #18
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #18
  call void @MultMatrixHPoint(ptr nonnull sret(%struct.HPointStruct) align 8 %7, ptr noundef %8, ptr noundef nonnull byval(%struct.HPointStruct) align 8 %5) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %7, i64 32, i1 false), !tbaa.struct !74
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #18
  %19 = load ptr, ptr %17, align 8, !tbaa !36
  %20 = getelementptr inbounds %struct.ObjPointStruct, ptr %19, i64 0, i32 3
  %21 = load <2 x double>, ptr %5, align 16, !tbaa !7
  store <2 x double> %21, ptr %20, align 8, !tbaa !7
  %22 = load double, ptr %15, align 16, !tbaa !13
  %23 = getelementptr inbounds %struct.ObjPointStruct, ptr %19, i64 0, i32 5
  store double %22, ptr %23, align 8, !tbaa !16
  %24 = getelementptr inbounds %struct.PointListStruct, ptr %17, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !46
  %26 = icmp eq ptr %25, null
  br i1 %26, label %30, label %16, !llvm.loop !79

27:                                               ; preds = %4
  %28 = load ptr, ptr @stderr, align 8, !tbaa !46
  %29 = tail call i64 @fwrite(ptr nonnull @.str.15, i64 25, i64 1, ptr %28) #23
  br label %30

30:                                               ; preds = %27, %16, %10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #18
  ret void
}

; Function Attrs: nofree nounwind optsize uwtable
define internal void @Draw_Children(ptr noundef %0) #8 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %12, label %3

3:                                                ; preds = %1
  tail call void @PrintObject(ptr noundef nonnull %0) #20
  %4 = getelementptr inbounds %struct.ObjectStruct, ptr %0, i64 0, i32 12
  %5 = load ptr, ptr %4, align 8, !tbaa !46
  %6 = icmp eq ptr %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %7, %3
  %8 = phi ptr [ %10, %7 ], [ %5, %3 ]
  tail call void @Draw_Children(ptr noundef nonnull %8) #20
  %9 = getelementptr inbounds %struct.ObjectStruct, ptr %8, i64 0, i32 21
  %10 = load ptr, ptr %9, align 8, !tbaa !46
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %7, !llvm.loop !80

12:                                               ; preds = %7, %3, %1
  ret void
}

; Function Attrs: nofree nounwind optsize uwtable
define internal void @Draw_Object(ptr noundef %0) #8 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  tail call void @PrintObject(ptr noundef nonnull %0) #20
  %4 = getelementptr inbounds %struct.ObjectStruct, ptr %0, i64 0, i32 12
  %5 = load ptr, ptr %4, align 8, !tbaa !70
  tail call void @Draw_Children(ptr noundef %5) #20
  br label %6

6:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @Draw_All_Nexts(ptr noundef readonly %0) #1 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %14, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.ObjectStruct, ptr %0, i64 0, i32 21
  %5 = load ptr, ptr %4, align 8, !tbaa !71
  %6 = icmp eq ptr %5, null
  br i1 %6, label %14, label %7

7:                                                ; preds = %7, %3
  %8 = phi ptr [ %12, %7 ], [ %5, %3 ]
  tail call void @CalcObject(ptr noundef nonnull %8) #20
  tail call void @PrintObject(ptr noundef nonnull %8) #20
  %9 = getelementptr inbounds %struct.ObjectStruct, ptr %8, i64 0, i32 12
  %10 = load ptr, ptr %9, align 8, !tbaa !70
  tail call void @Draw_Children(ptr noundef %10) #20
  %11 = getelementptr inbounds %struct.ObjectStruct, ptr %8, i64 0, i32 21
  %12 = load ptr, ptr %11, align 8, !tbaa !71
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %7, !llvm.loop !81

14:                                               ; preds = %7, %3, %1
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @Draw_All_Prevs(ptr noundef readonly %0) #1 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %14, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.ObjectStruct, ptr %0, i64 0, i32 22
  %5 = load ptr, ptr %4, align 8, !tbaa !72
  %6 = icmp eq ptr %5, null
  br i1 %6, label %14, label %7

7:                                                ; preds = %7, %3
  %8 = phi ptr [ %12, %7 ], [ %5, %3 ]
  tail call void @CalcObject(ptr noundef nonnull %8) #20
  tail call void @PrintObject(ptr noundef nonnull %8) #20
  %9 = getelementptr inbounds %struct.ObjectStruct, ptr %8, i64 0, i32 12
  %10 = load ptr, ptr %9, align 8, !tbaa !70
  tail call void @Draw_Children(ptr noundef %10) #20
  %11 = getelementptr inbounds %struct.ObjectStruct, ptr %8, i64 0, i32 22
  %12 = load ptr, ptr %11, align 8, !tbaa !72
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %7, !llvm.loop !82

14:                                               ; preds = %7, %3, %1
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @Draw_All(ptr noundef %0) #1 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %1
  tail call void @CalcObject(ptr noundef nonnull %0) #20
  br label %4

4:                                                ; preds = %3, %1
  tail call void @Draw_All_Prevs(ptr noundef %0) #20
  tail call void @Draw_Object(ptr noundef %0) #20
  tail call void @Draw_All_Nexts(ptr noundef %0) #20
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal void @MultMatrixHPoint(ptr noalias nocapture writeonly sret(%struct.HPointStruct) align 8 %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly byval(%struct.HPointStruct) align 8 %2) #15 {
  %4 = load <2 x double>, ptr %2, align 8
  %5 = load double, ptr %1, align 8, !tbaa !7
  %6 = getelementptr inbounds %struct.HPointStruct, ptr %2, i64 0, i32 1
  %7 = load <2 x double>, ptr %6, align 8
  %8 = getelementptr inbounds [4 x double], ptr %1, i64 0, i64 1
  %9 = load double, ptr %8, align 8, !tbaa !7
  %10 = getelementptr inbounds %struct.HPointStruct, ptr %2, i64 0, i32 2
  %11 = load <2 x double>, ptr %10, align 8
  %12 = getelementptr inbounds [4 x double], ptr %1, i64 0, i64 2
  %13 = load double, ptr %12, align 8, !tbaa !7
  %14 = getelementptr inbounds %struct.HPointStruct, ptr %2, i64 0, i32 3
  %15 = load double, ptr %14, align 8, !tbaa !15
  %16 = getelementptr inbounds [4 x double], ptr %1, i64 0, i64 3
  %17 = load double, ptr %16, align 8, !tbaa !7
  %18 = getelementptr inbounds [4 x [4 x double]], ptr %1, i64 0, i64 1
  %19 = load double, ptr %18, align 8, !tbaa !7
  %20 = getelementptr inbounds [4 x [4 x double]], ptr %1, i64 0, i64 1, i64 1
  %21 = load double, ptr %20, align 8, !tbaa !7
  %22 = getelementptr inbounds [4 x [4 x double]], ptr %1, i64 0, i64 1, i64 2
  %23 = load double, ptr %22, align 8, !tbaa !7
  %24 = getelementptr inbounds [4 x [4 x double]], ptr %1, i64 0, i64 1, i64 3
  %25 = load double, ptr %24, align 8, !tbaa !7
  %26 = shufflevector <2 x double> %7, <2 x double> poison, <2 x i32> zeroinitializer
  %27 = insertelement <2 x double> poison, double %9, i64 0
  %28 = insertelement <2 x double> %27, double %21, i64 1
  %29 = fmul <2 x double> %26, %28
  %30 = shufflevector <2 x double> %4, <2 x double> poison, <2 x i32> zeroinitializer
  %31 = insertelement <2 x double> poison, double %5, i64 0
  %32 = insertelement <2 x double> %31, double %19, i64 1
  %33 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %30, <2 x double> %32, <2 x double> %29)
  %34 = shufflevector <2 x double> %11, <2 x double> poison, <2 x i32> zeroinitializer
  %35 = insertelement <2 x double> poison, double %13, i64 0
  %36 = insertelement <2 x double> %35, double %23, i64 1
  %37 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %34, <2 x double> %36, <2 x double> %33)
  %38 = insertelement <2 x double> poison, double %15, i64 0
  %39 = shufflevector <2 x double> %38, <2 x double> poison, <2 x i32> zeroinitializer
  %40 = insertelement <2 x double> poison, double %17, i64 0
  %41 = insertelement <2 x double> %40, double %25, i64 1
  %42 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %39, <2 x double> %41, <2 x double> %37)
  store <2 x double> %42, ptr %0, align 8, !tbaa !7
  %43 = getelementptr inbounds [4 x [4 x double]], ptr %1, i64 0, i64 2
  %44 = load double, ptr %43, align 8, !tbaa !7
  %45 = getelementptr inbounds [4 x [4 x double]], ptr %1, i64 0, i64 2, i64 1
  %46 = load double, ptr %45, align 8, !tbaa !7
  %47 = getelementptr inbounds [4 x [4 x double]], ptr %1, i64 0, i64 2, i64 2
  %48 = load double, ptr %47, align 8, !tbaa !7
  %49 = getelementptr inbounds [4 x [4 x double]], ptr %1, i64 0, i64 2, i64 3
  %50 = load double, ptr %49, align 8, !tbaa !7
  %51 = getelementptr inbounds %struct.HPointStruct, ptr %0, i64 0, i32 2
  %52 = getelementptr inbounds [4 x [4 x double]], ptr %1, i64 0, i64 3
  %53 = load double, ptr %52, align 8, !tbaa !7
  %54 = getelementptr inbounds [4 x [4 x double]], ptr %1, i64 0, i64 3, i64 1
  %55 = load double, ptr %54, align 8, !tbaa !7
  %56 = getelementptr inbounds [4 x [4 x double]], ptr %1, i64 0, i64 3, i64 2
  %57 = load double, ptr %56, align 8, !tbaa !7
  %58 = getelementptr inbounds [4 x [4 x double]], ptr %1, i64 0, i64 3, i64 3
  %59 = load double, ptr %58, align 8, !tbaa !7
  %60 = insertelement <2 x double> poison, double %46, i64 0
  %61 = insertelement <2 x double> %60, double %55, i64 1
  %62 = fmul <2 x double> %26, %61
  %63 = insertelement <2 x double> poison, double %44, i64 0
  %64 = insertelement <2 x double> %63, double %53, i64 1
  %65 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %30, <2 x double> %64, <2 x double> %62)
  %66 = insertelement <2 x double> poison, double %48, i64 0
  %67 = insertelement <2 x double> %66, double %57, i64 1
  %68 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %34, <2 x double> %67, <2 x double> %65)
  %69 = insertelement <2 x double> poison, double %50, i64 0
  %70 = insertelement <2 x double> %69, double %59, i64 1
  %71 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %39, <2 x double> %70, <2 x double> %68)
  store <2 x double> %71, ptr %51, align 8, !tbaa !7
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #10

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: readwrite) uwtable
define internal noalias ptr @TranslateMatrix(double noundef %0, double noundef %1, double noundef %2) #16 {
  %4 = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #22
  store double 1.000000e+00, ptr %4, align 8, !tbaa !7
  %5 = getelementptr inbounds i8, ptr %4, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, i8 0, i64 32, i1 false)
  %6 = getelementptr inbounds i8, ptr %4, i64 40
  store double 1.000000e+00, ptr %6, align 8, !tbaa !7
  %7 = getelementptr inbounds i8, ptr %4, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, i8 0, i64 32, i1 false)
  %8 = getelementptr inbounds i8, ptr %4, i64 80
  store double 1.000000e+00, ptr %8, align 8, !tbaa !7
  %9 = getelementptr inbounds i8, ptr %4, i64 88
  %10 = getelementptr inbounds i8, ptr %4, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %10, i8 0, i64 24, i1 false)
  %11 = getelementptr inbounds i8, ptr %4, i64 120
  store double 1.000000e+00, ptr %11, align 8, !tbaa !7
  %12 = getelementptr inbounds [4 x double], ptr %4, i64 0, i64 3
  store double %0, ptr %12, align 8, !tbaa !7
  %13 = getelementptr inbounds [4 x [4 x double]], ptr %4, i64 0, i64 1, i64 3
  store double %1, ptr %13, align 8, !tbaa !7
  store double %2, ptr %9, align 8, !tbaa !7
  ret ptr %4
}

; Function Attrs: nofree nounwind optsize memory(readwrite, argmem: write) uwtable
define internal noalias ptr @RotateMatrix(double noundef %0, double noundef %1, double noundef %2) #17 {
  %4 = fmul double %0, 0x3F91DF46A2529E84
  %5 = tail call double @cos(double noundef %4) #19
  %6 = tail call double @sin(double noundef %4) #19
  %7 = fmul double %1, 0x3F91DF46A2529E84
  %8 = tail call double @cos(double noundef %7) #19
  %9 = tail call double @sin(double noundef %7) #19
  %10 = fmul double %2, 0x3F91DF46A2529E84
  %11 = tail call double @cos(double noundef %10) #19
  %12 = tail call double @sin(double noundef %10) #19
  %13 = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #22
  store double 1.000000e+00, ptr %13, align 8, !tbaa !7
  %14 = getelementptr inbounds i8, ptr %13, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %14, i8 0, i64 32, i1 false)
  %15 = getelementptr inbounds i8, ptr %13, i64 40
  %16 = getelementptr inbounds i8, ptr %13, i64 48
  %17 = getelementptr inbounds i8, ptr %13, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %17, i8 0, i64 16, i1 false)
  %18 = getelementptr inbounds i8, ptr %13, i64 80
  %19 = getelementptr inbounds i8, ptr %13, i64 88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %19, i8 0, i64 32, i1 false)
  %20 = getelementptr inbounds i8, ptr %13, i64 120
  store double 1.000000e+00, ptr %20, align 8, !tbaa !7
  %21 = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #22
  %22 = getelementptr inbounds i8, ptr %21, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %22, i8 0, i64 32, i1 false)
  %23 = getelementptr inbounds i8, ptr %21, i64 40
  store double 1.000000e+00, ptr %23, align 8, !tbaa !7
  %24 = getelementptr inbounds i8, ptr %21, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %24, i8 0, i64 32, i1 false)
  %25 = getelementptr inbounds i8, ptr %21, i64 80
  %26 = getelementptr inbounds i8, ptr %21, i64 88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %26, i8 0, i64 32, i1 false)
  %27 = getelementptr inbounds i8, ptr %21, i64 120
  store double 1.000000e+00, ptr %27, align 8, !tbaa !7
  %28 = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #22
  %29 = getelementptr inbounds i8, ptr %28, i64 8
  %30 = getelementptr inbounds i8, ptr %28, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %30, i8 0, i64 16, i1 false)
  %31 = getelementptr inbounds i8, ptr %28, i64 40
  %32 = getelementptr inbounds i8, ptr %28, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %32, i8 0, i64 32, i1 false)
  %33 = getelementptr inbounds i8, ptr %28, i64 80
  store double 1.000000e+00, ptr %33, align 8, !tbaa !7
  %34 = getelementptr inbounds i8, ptr %28, i64 88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %34, i8 0, i64 32, i1 false)
  %35 = getelementptr inbounds i8, ptr %28, i64 120
  store double 1.000000e+00, ptr %35, align 8, !tbaa !7
  %36 = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #22
  store double 1.000000e+00, ptr %36, align 8, !tbaa !7
  %37 = getelementptr inbounds i8, ptr %36, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %37, i8 0, i64 32, i1 false)
  %38 = getelementptr inbounds i8, ptr %36, i64 40
  store double 1.000000e+00, ptr %38, align 8, !tbaa !7
  %39 = getelementptr inbounds i8, ptr %36, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %39, i8 0, i64 32, i1 false)
  %40 = getelementptr inbounds i8, ptr %36, i64 80
  store double 1.000000e+00, ptr %40, align 8, !tbaa !7
  %41 = getelementptr inbounds i8, ptr %36, i64 88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %41, i8 0, i64 32, i1 false)
  %42 = getelementptr inbounds i8, ptr %36, i64 120
  store double 1.000000e+00, ptr %42, align 8, !tbaa !7
  %43 = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #22
  store double 1.000000e+00, ptr %43, align 8, !tbaa !7
  %44 = getelementptr inbounds i8, ptr %43, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %44, i8 0, i64 32, i1 false)
  %45 = getelementptr inbounds i8, ptr %43, i64 40
  store double 1.000000e+00, ptr %45, align 8, !tbaa !7
  %46 = getelementptr inbounds i8, ptr %43, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %46, i8 0, i64 32, i1 false)
  %47 = getelementptr inbounds i8, ptr %43, i64 80
  store double 1.000000e+00, ptr %47, align 8, !tbaa !7
  %48 = getelementptr inbounds i8, ptr %43, i64 88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %48, i8 0, i64 32, i1 false)
  %49 = getelementptr inbounds i8, ptr %43, i64 120
  store double 1.000000e+00, ptr %49, align 8, !tbaa !7
  store double %5, ptr %15, align 8, !tbaa !7
  %50 = fneg double %6
  store double %50, ptr %16, align 8, !tbaa !7
  %51 = getelementptr inbounds [4 x [4 x double]], ptr %13, i64 0, i64 2, i64 1
  store double %6, ptr %51, align 8, !tbaa !7
  store double %5, ptr %18, align 8, !tbaa !7
  store double %8, ptr %21, align 8, !tbaa !7
  %52 = getelementptr inbounds [4 x double], ptr %21, i64 0, i64 2
  store double %9, ptr %52, align 8, !tbaa !7
  %53 = fneg double %9
  %54 = getelementptr inbounds [4 x [4 x double]], ptr %21, i64 0, i64 2
  store double %53, ptr %54, align 8, !tbaa !7
  store double %8, ptr %25, align 8, !tbaa !7
  store double %11, ptr %28, align 8, !tbaa !7
  %55 = fneg double %12
  store double %55, ptr %29, align 8, !tbaa !7
  %56 = getelementptr inbounds [4 x [4 x double]], ptr %28, i64 0, i64 1
  store double %12, ptr %56, align 8, !tbaa !7
  store double %11, ptr %31, align 8, !tbaa !7
  br label %57

57:                                               ; preds = %75, %3
  %58 = phi i64 [ 0, %3 ], [ %76, %75 ]
  br label %59

59:                                               ; preds = %72, %57
  %60 = phi i64 [ 0, %57 ], [ %73, %72 ]
  %61 = getelementptr inbounds [4 x [4 x double]], ptr %36, i64 0, i64 %58, i64 %60
  br label %62

62:                                               ; preds = %62, %59
  %63 = phi i64 [ 0, %59 ], [ %70, %62 ]
  %64 = phi double [ 0.000000e+00, %59 ], [ %69, %62 ]
  %65 = getelementptr inbounds [4 x [4 x double]], ptr %13, i64 0, i64 %58, i64 %63
  %66 = load double, ptr %65, align 8, !tbaa !7
  %67 = getelementptr inbounds [4 x [4 x double]], ptr %21, i64 0, i64 %63, i64 %60
  %68 = load double, ptr %67, align 8, !tbaa !7
  %69 = tail call double @llvm.fmuladd.f64(double %66, double %68, double %64)
  %70 = add nuw nsw i64 %63, 1
  %71 = icmp eq i64 %70, 4
  br i1 %71, label %72, label %62, !llvm.loop !83

72:                                               ; preds = %62
  %.lcssa1 = phi double [ %69, %62 ]
  store double %.lcssa1, ptr %61, align 8, !tbaa !7
  %73 = add nuw nsw i64 %60, 1
  %74 = icmp eq i64 %73, 4
  br i1 %74, label %75, label %59, !llvm.loop !84

75:                                               ; preds = %72
  %76 = add nuw nsw i64 %58, 1
  %77 = icmp eq i64 %76, 4
  br i1 %77, label %78, label %57, !llvm.loop !85

78:                                               ; preds = %96, %75
  %79 = phi i64 [ %97, %96 ], [ 0, %75 ]
  br label %80

80:                                               ; preds = %93, %78
  %81 = phi i64 [ 0, %78 ], [ %94, %93 ]
  %82 = getelementptr inbounds [4 x [4 x double]], ptr %43, i64 0, i64 %79, i64 %81
  br label %83

83:                                               ; preds = %83, %80
  %84 = phi i64 [ 0, %80 ], [ %91, %83 ]
  %85 = phi double [ 0.000000e+00, %80 ], [ %90, %83 ]
  %86 = getelementptr inbounds [4 x [4 x double]], ptr %36, i64 0, i64 %79, i64 %84
  %87 = load double, ptr %86, align 8, !tbaa !7
  %88 = getelementptr inbounds [4 x [4 x double]], ptr %28, i64 0, i64 %84, i64 %81
  %89 = load double, ptr %88, align 8, !tbaa !7
  %90 = tail call double @llvm.fmuladd.f64(double %87, double %89, double %85)
  %91 = add nuw nsw i64 %84, 1
  %92 = icmp eq i64 %91, 4
  br i1 %92, label %93, label %83, !llvm.loop !83

93:                                               ; preds = %83
  %.lcssa = phi double [ %90, %83 ]
  store double %.lcssa, ptr %82, align 8, !tbaa !7
  %94 = add nuw nsw i64 %81, 1
  %95 = icmp eq i64 %94, 4
  br i1 %95, label %96, label %80, !llvm.loop !84

96:                                               ; preds = %93
  %97 = add nuw nsw i64 %79, 1
  %98 = icmp eq i64 %97, 4
  br i1 %98, label %99, label %78, !llvm.loop !85

99:                                               ; preds = %96
  ret ptr %43
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #10

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: readwrite) uwtable
define internal noalias ptr @ScaleMatrix(double noundef %0, double noundef %1, double noundef %2) #16 {
  %4 = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #22
  %5 = getelementptr inbounds i8, ptr %4, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, i8 0, i64 32, i1 false)
  %6 = getelementptr inbounds i8, ptr %4, i64 40
  %7 = getelementptr inbounds i8, ptr %4, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, i8 0, i64 32, i1 false)
  %8 = getelementptr inbounds i8, ptr %4, i64 80
  %9 = getelementptr inbounds i8, ptr %4, i64 88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %9, i8 0, i64 32, i1 false)
  %10 = getelementptr inbounds i8, ptr %4, i64 120
  store double 1.000000e+00, ptr %10, align 8, !tbaa !7
  store double %0, ptr %4, align 8, !tbaa !7
  store double %1, ptr %6, align 8, !tbaa !7
  store double %2, ptr %8, align 8, !tbaa !7
  ret ptr %4
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { nofree nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind }
attributes #13 = { mustprogress nofree norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #15 = { mustprogress nofree nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree nounwind optsize memory(readwrite, argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nounwind }
attributes #19 = { nounwind optsize }
attributes #20 = { optsize }
attributes #21 = { nounwind optsize allocsize(0,1) }
attributes #22 = { nounwind optsize allocsize(0) }
attributes #23 = { cold }

!llvm.ident = !{!0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3, !4, !5, !6}

!0 = !{!"clang version 17.0.6 (https://github.com/Casperento/llvm-project.git 9b0073551ece0d22bf3378af2b03e456a26031b6)"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 1, !"ThinLTO", i32 0}
!6 = !{i32 1, !"EnableSplitLTOUnit", i32 1}
!7 = !{!8, !8, i64 0}
!8 = !{!"double", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!12, !8, i64 16}
!12 = !{!"ObjPointStruct", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40}
!13 = !{!14, !8, i64 16}
!14 = !{!"HPointStruct", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24}
!15 = !{!14, !8, i64 24}
!16 = !{!12, !8, i64 40}
!17 = !{!18, !8, i64 0}
!18 = !{!"PointStruct", !8, i64 0, !8, i64 8, !8, i64 16}
!19 = !{!18, !8, i64 8}
!20 = !{!18, !8, i64 16}
!21 = distinct !{!21, !22}
!22 = !{!"llvm.loop.mustprogress"}
!23 = distinct !{!23, !22}
!24 = !{!25, !8, i64 168}
!25 = !{!"ObjectStruct", !9, i64 0, !26, i64 64, !26, i64 72, !26, i64 80, !26, i64 88, !26, i64 96, !27, i64 104, !28, i64 128, !9, i64 132, !18, i64 136, !18, i64 160, !18, i64 184, !26, i64 208, !26, i64 216, !28, i64 224, !28, i64 228, !28, i64 232, !28, i64 236, !28, i64 240, !28, i64 244, !28, i64 248, !26, i64 256, !26, i64 264}
!26 = !{!"any pointer", !9, i64 0}
!27 = !{!"RGBStruct", !8, i64 0, !8, i64 8, !8, i64 16}
!28 = !{!"int", !9, i64 0}
!29 = distinct !{!29, !22}
!30 = !{!25, !8, i64 120}
!31 = !{!25, !28, i64 128}
!32 = !{!25, !9, i64 132}
!33 = !{!25, !8, i64 200}
!34 = !{!25, !28, i64 228}
!35 = !{!25, !26, i64 64}
!36 = !{!37, !26, i64 0}
!37 = !{!"PointListStruct", !26, i64 0, !26, i64 8, !26, i64 16}
!38 = !{!12, !8, i64 0}
!39 = !{!12, !8, i64 8}
!40 = !{!12, !8, i64 24}
!41 = !{!12, !8, i64 32}
!42 = !{}
!43 = !{!37, !26, i64 8}
!44 = distinct !{!44, !22}
!45 = !{!37, !26, i64 16}
!46 = !{!26, !26, i64 0}
!47 = distinct !{!47, !22}
!48 = !{!25, !26, i64 80}
!49 = !{!50, !26, i64 56}
!50 = !{!"Poly4Struct", !9, i64 0, !26, i64 32, !26, i64 40, !26, i64 48, !26, i64 56}
!51 = !{!50, !26, i64 48}
!52 = !{!25, !28, i64 236}
!53 = distinct !{!53, !22}
!54 = !{!25, !26, i64 72}
!55 = distinct !{!55, !22}
!56 = !{!57, !26, i64 40}
!57 = !{!"Poly3Struct", !9, i64 0, !26, i64 24, !26, i64 32, !26, i64 40, !26, i64 48}
!58 = distinct !{!58, !22}
!59 = distinct !{!59, !22}
!60 = distinct !{!60, !22}
!61 = !{!25, !8, i64 184}
!62 = !{!25, !8, i64 192}
!63 = !{!25, !8, i64 136}
!64 = !{!25, !8, i64 144}
!65 = !{!25, !8, i64 152}
!66 = !{!25, !8, i64 160}
!67 = !{!25, !8, i64 176}
!68 = !{!25, !8, i64 104}
!69 = !{!25, !8, i64 112}
!70 = !{!25, !26, i64 208}
!71 = !{!25, !26, i64 256}
!72 = !{!25, !26, i64 264}
!73 = distinct !{!73, !22}
!74 = !{i64 0, i64 8, !7, i64 8, i64 8, !7, i64 16, i64 8, !7, i64 24, i64 8, !7}
!75 = distinct !{!75, !22}
!76 = distinct !{!76, !22}
!77 = distinct !{!77, !22}
!78 = distinct !{!78, !22}
!79 = distinct !{!79, !22}
!80 = distinct !{!80, !22}
!81 = distinct !{!81, !22}
!82 = distinct !{!82, !22}
!83 = distinct !{!83, !22}
!84 = distinct !{!84, !22}
!85 = distinct !{!85, !22}
