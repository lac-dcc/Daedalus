; ModuleID = '/src/llvm-test-suite/build/MultiSource/Benchmarks/FreeBench/distray/distray.e.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.OBJ = type { %struct.VECTOR, double, %struct.TEXTURE }
%struct.VECTOR = type { double, double, double }
%struct.TEXTURE = type { %struct.VECTOR, double, double, double }

@objs = internal global [4 x %struct.OBJ] [%struct.OBJ { %struct.VECTOR { double 0.000000e+00, double 4.000000e+00, double 1.000000e+00 }, double 1.000000e+00, %struct.TEXTURE { %struct.VECTOR { double 1.000000e+00, double 4.000000e-01, double 0.000000e+00 }, double 4.000000e-01, double 8.000000e-01, double 2.000000e-02 } }, %struct.OBJ { %struct.VECTOR { double -1.000000e+00, double 3.000000e+00, double 4.000000e-01 }, double 4.000000e-01, %struct.TEXTURE { %struct.VECTOR { double 5.000000e-01, double 3.000000e-01, double 1.000000e+00 }, double 5.000000e-01, double 9.000000e-01, double 1.000000e-02 } }, %struct.OBJ { %struct.VECTOR { double -3.000000e-01, double 1.000000e+00, double 4.000000e-01 }, double 4.000000e-01, %struct.TEXTURE { %struct.VECTOR { double 1.000000e-01, double 0x3FEE666666666666, double 2.000000e-01 }, double 6.000000e-01, double 8.000000e-01, double 1.000000e-02 } }, %struct.OBJ { %struct.VECTOR { double 1.000000e+00, double 2.000000e+00, double 4.000000e-01 }, double 4.000000e-01, %struct.TEXTURE { %struct.VECTOR { double 8.600000e-01, double 8.300000e-01, double 0.000000e+00 }, double 0x3FE6666666666666, double 6.000000e-01, double 1.000000e-02 } }], align 16
@Groundpos = internal global double 0.000000e+00, align 8
@Groundtxt = internal global [2 x %struct.TEXTURE] [%struct.TEXTURE { %struct.VECTOR { double 0.000000e+00, double 1.000000e-01, double 5.000000e-01 }, double 8.000000e-01, double 4.400000e-01, double 2.000000e-02 }, %struct.TEXTURE { %struct.VECTOR { double 6.000000e-01, double 1.000000e+00, double 5.000000e-01 }, double 8.000000e-01, double 4.400000e-01, double 1.000000e-02 }], align 16
@Lightpos = internal global %struct.VECTOR { double -3.000000e+00, double 1.000000e+00, double 5.000000e+00 }, align 16
@Lightr = internal global double 4.000000e-01, align 8
@Camerapos = internal global %struct.VECTOR { double 1.500000e+00, double -1.400000e+00, double 1.200000e+00 }, align 8
@Cameraright = internal global %struct.VECTOR { double 3.000000e+00, double 1.000000e+00, double 0.000000e+00 }, align 16
@Cameradir = internal global %struct.VECTOR { double -1.000000e+00, double 3.000000e+00, double 0.000000e+00 }, align 16
@Cameraup = internal global %struct.VECTOR { double 0.000000e+00, double 0.000000e+00, double 2.371700e+00 }, align 16
@Ambient = internal global double 3.000000e-01, align 8
@Skycolor = internal global [2 x %struct.VECTOR] [%struct.VECTOR { double 5.000000e-01, double 3.000000e-01, double 0x3FE6666666666666 }, %struct.VECTOR { double 0.000000e+00, double 0.000000e+00, double 2.000000e-01 }], align 16
@rnd = internal global i64 1380328551, align 8
@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [18 x i8] c"Compile date: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"today\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"Compiler switches: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@DISTRIB = internal global i32 0, align 4
@stdout = external local_unnamed_addr global ptr, align 8
@.str.7 = private unnamed_addr constant [3 x i8] c"P6\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"%d %d\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"255\00", align 1
@memory = internal global [921600 x i8] zeroinitializer, align 16
@str = private unnamed_addr constant [34 x i8] c"ERROR: Could not open indata file\00", align 1

; Function Attrs: nounwind optsize uwtable
define dso_local i32 @main(i32 noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.VECTOR, align 8
  %4 = alloca %struct.VECTOR, align 16
  %5 = alloca %struct.VECTOR, align 16
  %6 = alloca %struct.VECTOR, align 16
  %7 = load ptr, ptr @stderr, align 8, !tbaa !7
  %8 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #12
  %9 = load ptr, ptr @stderr, align 8, !tbaa !7
  %10 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #12
  %11 = getelementptr inbounds ptr, ptr %1, i64 1
  %12 = load ptr, ptr %11, align 8, !tbaa !7
  %13 = tail call noalias ptr @fopen(ptr noundef %12, ptr noundef nonnull @.str.4) #13
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  tail call void @exit(i32 noundef 1) #14
  unreachable

17:                                               ; preds = %2
  %18 = tail call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef nonnull %13, ptr noundef nonnull @.str.6, ptr noundef nonnull @DISTRIB) #15
  %19 = tail call i32 @fclose(ptr noundef nonnull %13) #13
  %20 = load ptr, ptr @stdout, align 8, !tbaa !7
  %21 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 2, i64 1, ptr %20)
  %22 = load ptr, ptr @stdout, align 8, !tbaa !7
  %23 = tail call i32 @fputc(i32 noundef 10, ptr noundef %22) #13
  %24 = load ptr, ptr @stdout, align 8, !tbaa !7
  %25 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %24, ptr noundef nonnull @.str.8, i32 noundef 640, i32 noundef 480) #13
  %26 = load ptr, ptr @stdout, align 8, !tbaa !7
  %27 = tail call i32 @fputc(i32 noundef 10, ptr noundef %26) #13
  %28 = load ptr, ptr @stdout, align 8, !tbaa !7
  %29 = tail call i64 @fwrite(ptr nonnull @.str.9, i64 3, i64 1, ptr %28)
  %30 = load ptr, ptr @stdout, align 8, !tbaa !7
  %31 = tail call i32 @fputc(i32 noundef 10, ptr noundef %30) #13
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #16
  %32 = getelementptr inbounds %struct.VECTOR, ptr %4, i64 0, i32 2
  %33 = getelementptr inbounds %struct.VECTOR, ptr %6, i64 0, i32 2
  %34 = getelementptr inbounds %struct.VECTOR, ptr %5, i64 0, i32 2
  %35 = getelementptr inbounds %struct.VECTOR, ptr %3, i64 0, i32 1
  %36 = load i32, ptr @DISTRIB, align 4, !tbaa !11
  br label %37

37:                                               ; preds = %112, %17
  %38 = phi i32 [ %36, %17 ], [ %.lcssa, %112 ]
  %39 = phi i64 [ 0, %17 ], [ %113, %112 ]
  %40 = trunc i64 %39 to i32
  %41 = sub i32 240, %40
  %42 = sitofp i32 %41 to double
  %43 = fdiv double %42, 4.800000e+02
  %44 = mul nuw nsw i64 %39, 640
  %45 = insertelement <2 x double> poison, double %43, i64 0
  %46 = shufflevector <2 x double> %45, <2 x double> poison, <2 x i32> zeroinitializer
  br label %47

47:                                               ; preds = %85, %37
  %48 = phi i32 [ %38, %37 ], [ %86, %85 ]
  %49 = phi i32 [ %38, %37 ], [ %87, %85 ]
  %50 = phi i64 [ 0, %37 ], [ %110, %85 ]
  %51 = trunc i64 %50 to i32
  %52 = add i32 %51, -320
  %53 = sitofp i32 %52 to double
  %54 = fdiv double %53, 6.400000e+02
  %55 = load <2 x double>, ptr @Cameraright, align 16, !tbaa !13
  %56 = load <2 x double>, ptr @Cameradir, align 16, !tbaa !13
  %57 = insertelement <2 x double> poison, double %54, i64 0
  %58 = shufflevector <2 x double> %57, <2 x double> poison, <2 x i32> zeroinitializer
  %59 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %55, <2 x double> %58, <2 x double> %56)
  %60 = load <2 x double>, ptr @Cameraup, align 16, !tbaa !13
  %61 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %60, <2 x double> %46, <2 x double> %59)
  store <2 x double> %61, ptr %4, align 16, !tbaa !13
  %62 = load double, ptr getelementptr inbounds (%struct.VECTOR, ptr @Cameraright, i64 0, i32 2), align 16, !tbaa !15
  %63 = load double, ptr getelementptr inbounds (%struct.VECTOR, ptr @Cameradir, i64 0, i32 2), align 16, !tbaa !15
  %64 = tail call double @llvm.fmuladd.f64(double %62, double %54, double %63)
  %65 = load double, ptr getelementptr inbounds (%struct.VECTOR, ptr @Cameraup, i64 0, i32 2), align 16, !tbaa !15
  %66 = tail call double @llvm.fmuladd.f64(double %65, double %43, double %64)
  store double %66, ptr %32, align 16, !tbaa !15
  %67 = icmp sgt i32 %49, 0
  br i1 %67, label %68, label %85

68:                                               ; preds = %68, %47
  %69 = phi i32 [ %82, %68 ], [ 0, %47 ]
  %70 = phi double [ %79, %68 ], [ 0.000000e+00, %47 ]
  %71 = phi <2 x double> [ %81, %68 ], [ zeroinitializer, %47 ]
  call fastcc void @DistribVector(ptr noundef nonnull %6, ptr noundef nonnull %4, double noundef 7.812500e-04, double noundef 0x3F51111111111111) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %5, ptr noundef nonnull align 16 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !17
  %72 = load <2 x double>, ptr %6, align 16, !tbaa !13
  %73 = load <2 x double>, ptr %5, align 16, !tbaa !13
  %74 = fadd <2 x double> %72, %73
  store <2 x double> %74, ptr %5, align 16, !tbaa !13
  %75 = load double, ptr %33, align 16, !tbaa !15
  %76 = load double, ptr %34, align 16, !tbaa !15
  %77 = fadd double %75, %76
  store double %77, ptr %34, align 16, !tbaa !15
  call fastcc void @TraceLine(ptr noundef nonnull @Camerapos, ptr noundef nonnull %5, ptr noundef nonnull %3, i32 noundef 6) #13
  %78 = load double, ptr %3, align 8, !tbaa !18
  %79 = fadd double %70, %78
  %80 = load <2 x double>, ptr %35, align 8, !tbaa !13
  %81 = fadd <2 x double> %71, %80
  %82 = add nuw nsw i32 %69, 1
  %83 = load i32, ptr @DISTRIB, align 4, !tbaa !11
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %68, label %85, !llvm.loop !19

85:                                               ; preds = %68, %47
  %86 = phi i32 [ %48, %47 ], [ %83, %68 ]
  %87 = phi i32 [ %49, %47 ], [ %83, %68 ]
  %88 = phi double [ 0.000000e+00, %47 ], [ %79, %68 ]
  %89 = phi <2 x double> [ zeroinitializer, %47 ], [ %81, %68 ]
  %90 = sitofp i32 %87 to double
  %91 = fdiv double 1.000000e+00, %90
  %92 = fmul double %91, %88
  %93 = extractelement <2 x double> %89, i64 0
  %94 = fmul double %93, %91
  %95 = extractelement <2 x double> %89, i64 1
  %96 = fmul double %95, %91
  %97 = fmul double %92, 2.550000e+02
  %98 = fptoui double %97 to i8
  %99 = add nuw nsw i64 %50, %44
  %100 = mul nuw nsw i64 %99, 3
  %101 = getelementptr inbounds [921600 x i8], ptr @memory, i64 0, i64 %100
  store i8 %98, ptr %101, align 1, !tbaa !21
  %102 = fmul double %94, 2.550000e+02
  %103 = fptoui double %102 to i8
  %104 = add nuw nsw i64 %100, 1
  %105 = getelementptr inbounds [921600 x i8], ptr @memory, i64 0, i64 %104
  store i8 %103, ptr %105, align 1, !tbaa !21
  %106 = fmul double %96, 2.550000e+02
  %107 = fptoui double %106 to i8
  %108 = add nuw nsw i64 %100, 2
  %109 = getelementptr inbounds [921600 x i8], ptr @memory, i64 0, i64 %108
  store i8 %107, ptr %109, align 1, !tbaa !21
  %110 = add nuw nsw i64 %50, 1
  %111 = icmp eq i64 %110, 640
  br i1 %111, label %112, label %47, !llvm.loop !22

112:                                              ; preds = %85
  %.lcssa = phi i32 [ %86, %85 ]
  %113 = add nuw nsw i64 %39, 1
  %114 = icmp eq i64 %113, 480
  br i1 %114, label %115, label %37, !llvm.loop !23

115:                                              ; preds = %112
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #16
  br label %116

116:                                              ; preds = %116, %115
  %117 = phi i64 [ 0, %115 ], [ %132, %116 ]
  %118 = add nuw nsw i64 %117, 1
  %119 = getelementptr inbounds [921600 x i8], ptr @memory, i64 0, i64 %117
  %120 = load i8, ptr %119, align 1, !tbaa !21
  %121 = and i8 %120, -2
  %122 = zext i8 %121 to i32
  %123 = load ptr, ptr @stdout, align 8, !tbaa !7
  %124 = tail call i32 @fputc(i32 noundef %122, ptr noundef %123) #13
  %125 = add nuw nsw i64 %117, 2
  %126 = getelementptr inbounds [921600 x i8], ptr @memory, i64 0, i64 %118
  %127 = load i8, ptr %126, align 1, !tbaa !21
  %128 = and i8 %127, -2
  %129 = zext i8 %128 to i32
  %130 = load ptr, ptr @stdout, align 8, !tbaa !7
  %131 = tail call i32 @fputc(i32 noundef %129, ptr noundef %130) #13
  %132 = add nuw nsw i64 %117, 3
  %133 = getelementptr inbounds [921600 x i8], ptr @memory, i64 0, i64 %125
  %134 = load i8, ptr %133, align 1, !tbaa !21
  %135 = and i8 %134, -2
  %136 = zext i8 %135 to i32
  %137 = load ptr, ptr @stdout, align 8, !tbaa !7
  %138 = tail call i32 @fputc(i32 noundef %136, ptr noundef %137) #13
  %139 = icmp ult i64 %117, 921597
  br i1 %139, label %116, label %140, !llvm.loop !24

140:                                              ; preds = %116
  ret i32 0
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: nofree nounwind optsize
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #2

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @__isoc99_fscanf(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #6

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @DistribVector(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, double noundef %2, double noundef %3) unnamed_addr #7 {
  %5 = getelementptr inbounds %struct.VECTOR, ptr %1, i64 0, i32 2
  %6 = load double, ptr %5, align 8, !tbaa !15
  %7 = tail call double @llvm.fabs.f64(double %6)
  %8 = fcmp ogt double %7, 1.000000e-05
  %9 = getelementptr inbounds %struct.VECTOR, ptr %1, i64 0, i32 1
  %10 = load double, ptr %9, align 8, !tbaa !25
  br i1 %8, label %11, label %26

11:                                               ; preds = %4
  %12 = fmul double %6, %10
  %13 = load double, ptr %1, align 8, !tbaa !18
  %14 = fneg double %13
  %15 = fmul double %6, %14
  %16 = fmul double %6, %15
  %17 = fneg double %12
  %18 = fmul double %6, %17
  %19 = fneg double %15
  %20 = fmul double %13, %19
  %21 = tail call double @llvm.fmuladd.f64(double %12, double %10, double %20)
  %22 = insertelement <2 x double> poison, double %16, i64 0
  %23 = insertelement <2 x double> %22, double %15, i64 1
  %24 = insertelement <2 x double> poison, double %21, i64 0
  %25 = insertelement <2 x double> %24, double %12, i64 1
  br label %31

26:                                               ; preds = %4
  %27 = load double, ptr %1, align 8, !tbaa !18
  %28 = fneg double %27
  %29 = insertelement <2 x double> <double 0.000000e+00, double poison>, double %28, i64 1
  %30 = insertelement <2 x double> <double 1.000000e+00, double poison>, double %10, i64 1
  br label %31

31:                                               ; preds = %26, %11
  %32 = phi double [ %13, %11 ], [ %27, %26 ]
  %33 = phi double [ %18, %11 ], [ 0.000000e+00, %26 ]
  %34 = phi <2 x double> [ %23, %11 ], [ %29, %26 ]
  %35 = phi <2 x double> [ %25, %11 ], [ %30, %26 ]
  %36 = fmul double %10, %10
  %37 = tail call double @llvm.fmuladd.f64(double %32, double %32, double %36)
  %38 = tail call double @llvm.fmuladd.f64(double %6, double %6, double %37)
  %39 = tail call double @llvm.sqrt.f64(double %38)
  %40 = fmul <2 x double> %34, %34
  %41 = load i64, ptr @rnd, align 8, !tbaa !26
  %42 = mul i64 %41, 1103515245
  %43 = fmul double %33, %33
  %44 = extractelement <2 x double> %34, i64 0
  %45 = tail call double @llvm.fmuladd.f64(double %44, double %44, double %43)
  %46 = add i64 %42, 12345
  %47 = insertelement <2 x double> %40, double %45, i64 0
  %48 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %35, <2 x double> %35, <2 x double> %47)
  %49 = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %48)
  %50 = insertelement <2 x double> poison, double %39, i64 0
  %51 = shufflevector <2 x double> %50, <2 x double> poison, <2 x i32> zeroinitializer
  %52 = fdiv <2 x double> %51, %49
  %53 = insertelement <2 x double> poison, double %3, i64 0
  %54 = insertelement <2 x double> %53, double %2, i64 1
  %55 = fmul <2 x double> %52, %54
  %56 = mul i64 %46, 1103515245
  %57 = add i64 %56, 12345
  %58 = insertelement <2 x i64> poison, i64 %57, i64 0
  %59 = insertelement <2 x i64> %58, i64 %46, i64 1
  %60 = and <2 x i64> %59, <i64 2147483647, i64 2147483647>
  %61 = uitofp <2 x i64> %60 to <2 x double>
  %62 = fdiv <2 x double> %61, <double 0x41CFFFFFFF800000, double 0x41CFFFFFFF800000>
  %63 = fsub <2 x double> <double 1.000000e+00, double 1.000000e+00>, %62
  %64 = fmul <2 x double> %55, %63
  %65 = extractelement <2 x double> %64, i64 1
  %66 = fmul double %65, 0.000000e+00
  %67 = extractelement <2 x i64> %60, i64 0
  store i64 %67, ptr @rnd, align 8, !tbaa !26
  %68 = fmul <2 x double> %34, %64
  %69 = shufflevector <2 x double> %35, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %70 = insertelement <2 x double> %69, double %33, i64 1
  %71 = shufflevector <2 x double> %64, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %72 = fmul <2 x double> %70, %71
  %73 = fmul <2 x double> %35, %64
  %74 = extractelement <2 x double> %73, i64 0
  %75 = fadd <2 x double> %68, %72
  store <2 x double> %75, ptr %0, align 8, !tbaa !13
  %76 = fadd double %66, %74
  %77 = getelementptr inbounds %struct.VECTOR, ptr %0, i64 0, i32 2
  store double %76, ptr %77, align 8, !tbaa !15
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: nofree nounwind optsize memory(readwrite, inaccessiblemem: write) uwtable
define internal fastcc void @TraceLine(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2, i32 noundef %3) unnamed_addr #9 {
  %5 = alloca %struct.VECTOR, align 16
  %6 = alloca %struct.VECTOR, align 16
  %7 = alloca %struct.VECTOR, align 16
  %8 = alloca %struct.VECTOR, align 16
  %9 = alloca %struct.VECTOR, align 16
  %10 = alloca %struct.VECTOR, align 8
  %11 = alloca %struct.VECTOR, align 8
  %12 = alloca %struct.VECTOR, align 8
  %13 = alloca %struct.VECTOR, align 8
  %14 = alloca %struct.VECTOR, align 16
  %15 = alloca ptr, align 8
  %16 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %12) #16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %13) #16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %14) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16) #16
  %17 = getelementptr inbounds %struct.VECTOR, ptr %2, i64 0, i32 2
  %18 = getelementptr inbounds %struct.VECTOR, ptr %2, i64 0, i32 1
  %19 = icmp sgt i32 %3, 0
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  br i1 %19, label %20, label %248

20:                                               ; preds = %4
  %21 = icmp ugt i32 %3, 3
  %22 = call fastcc double @IntersectObjs(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %15) #13
  %23 = fcmp ogt double %22, 1.000000e-05
  br i1 %23, label %24, label %199

24:                                               ; preds = %20
  %25 = load <2 x double>, ptr @Lightpos, align 16, !tbaa !13
  %26 = load <2 x double>, ptr %5, align 16, !tbaa !13
  %27 = fsub <2 x double> %25, %26
  store <2 x double> %27, ptr %7, align 16, !tbaa !13
  %28 = load double, ptr getelementptr inbounds (%struct.VECTOR, ptr @Lightpos, i64 0, i32 2), align 16, !tbaa !15
  %29 = getelementptr inbounds %struct.VECTOR, ptr %5, i64 0, i32 2
  %30 = load double, ptr %29, align 16, !tbaa !15
  %31 = fsub double %28, %30
  %32 = getelementptr inbounds %struct.VECTOR, ptr %7, i64 0, i32 2
  store double %31, ptr %32, align 16, !tbaa !15
  %33 = load <2 x double>, ptr %6, align 16, !tbaa !13
  %34 = extractelement <2 x double> %33, i64 1
  %35 = extractelement <2 x double> %27, i64 1
  %36 = fmul double %35, %34
  %37 = extractelement <2 x double> %33, i64 0
  %38 = extractelement <2 x double> %27, i64 0
  %39 = tail call double @llvm.fmuladd.f64(double %38, double %37, double %36)
  %40 = getelementptr inbounds %struct.VECTOR, ptr %6, i64 0, i32 2
  %41 = load double, ptr %40, align 16, !tbaa !15
  %42 = tail call double @llvm.fmuladd.f64(double %31, double %41, double %39)
  %43 = fcmp ogt double %42, 0.000000e+00
  br i1 %43, label %44, label %107

44:                                               ; preds = %24
  br i1 %21, label %45, label %75

45:                                               ; preds = %44
  %46 = load double, ptr @Lightr, align 8, !tbaa !13
  %47 = fmul double %35, %35
  %48 = tail call double @llvm.fmuladd.f64(double %38, double %38, double %47)
  %49 = tail call double @llvm.fmuladd.f64(double %31, double %31, double %48)
  %50 = tail call double @llvm.sqrt.f64(double %49)
  %51 = fdiv double %46, %50
  %52 = load i32, ptr @DISTRIB, align 4, !tbaa !11
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %54, label %107

54:                                               ; preds = %45
  %55 = getelementptr inbounds %struct.VECTOR, ptr %14, i64 0, i32 2
  %56 = getelementptr inbounds %struct.VECTOR, ptr %8, i64 0, i32 2
  br label %57

57:                                               ; preds = %57, %54
  %58 = phi i32 [ 0, %54 ], [ %71, %57 ]
  %59 = phi i32 [ 0, %54 ], [ %72, %57 ]
  call fastcc void @DistribVector(ptr noundef nonnull %14, ptr noundef nonnull %7, double noundef %51, double noundef %51) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %8, ptr noundef nonnull align 16 dereferenceable(24) %7, i64 24, i1 false), !tbaa.struct !17
  %60 = load <2 x double>, ptr %14, align 16, !tbaa !13
  %61 = load <2 x double>, ptr %8, align 16, !tbaa !13
  %62 = fadd <2 x double> %60, %61
  store <2 x double> %62, ptr %8, align 16, !tbaa !13
  %63 = load double, ptr %55, align 16, !tbaa !15
  %64 = load double, ptr %56, align 16, !tbaa !15
  %65 = fadd double %63, %64
  store double %65, ptr %56, align 16, !tbaa !15
  %66 = call fastcc double @IntersectObjs(ptr noundef nonnull %5, ptr noundef nonnull %8, ptr noundef nonnull %12, ptr noundef nonnull %13, ptr noundef nonnull %16) #13
  %67 = fcmp olt double %66, 1.000000e-05
  %68 = fcmp ogt double %66, 1.000000e+00
  %69 = or i1 %67, %68
  %70 = zext i1 %69 to i32
  %71 = add nuw nsw i32 %58, %70
  %72 = add nuw nsw i32 %59, 1
  %73 = load i32, ptr @DISTRIB, align 4, !tbaa !11
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %57, label %81, !llvm.loop !28

75:                                               ; preds = %44
  %76 = call fastcc double @IntersectObjs(ptr noundef nonnull %5, ptr noundef nonnull %7, ptr noundef nonnull %12, ptr noundef nonnull %13, ptr noundef nonnull %16) #13
  %77 = fcmp olt double %76, 1.000000e-05
  %78 = fcmp ogt double %76, 1.000000e+00
  %79 = or i1 %77, %78
  %80 = load i32, ptr @DISTRIB, align 4
  br i1 %79, label %81, label %107

81:                                               ; preds = %75, %57
  %82 = phi i32 [ %80, %75 ], [ %71, %57 ]
  %83 = icmp sgt i32 %82, 0
  br i1 %83, label %84, label %107

84:                                               ; preds = %81
  %85 = shufflevector <2 x double> %33, <2 x double> %27, <2 x i32> <i32 3, i32 1>
  %86 = fmul <2 x double> %85, %85
  %87 = shufflevector <2 x double> %33, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %88 = shufflevector <2 x double> %27, <2 x double> %87, <2 x i32> <i32 0, i32 3>
  %89 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %88, <2 x double> %88, <2 x double> %86)
  %90 = insertelement <2 x double> poison, double %31, i64 0
  %91 = insertelement <2 x double> %90, double %41, i64 1
  %92 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %91, <2 x double> %91, <2 x double> %89)
  %93 = shufflevector <2 x double> %92, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %94 = fmul <2 x double> %92, %93
  %95 = extractelement <2 x double> %94, i64 0
  %96 = tail call double @sqrt(double noundef %95) #15
  %97 = fdiv double %42, %96
  %98 = load ptr, ptr %15, align 8, !tbaa !7
  %99 = getelementptr inbounds %struct.TEXTURE, ptr %98, i64 0, i32 1
  %100 = load double, ptr %99, align 8, !tbaa !29
  %101 = fmul double %97, %100
  %102 = sitofp i32 %82 to double
  %103 = fmul double %101, %102
  %104 = load i32, ptr @DISTRIB, align 4, !tbaa !11
  %105 = sitofp i32 %104 to double
  %106 = fdiv double %103, %105
  br label %107

107:                                              ; preds = %84, %81, %75, %45, %24
  %108 = phi double [ %106, %84 ], [ 0.000000e+00, %81 ], [ 0.000000e+00, %24 ], [ 0.000000e+00, %75 ], [ 0.000000e+00, %45 ]
  %109 = load ptr, ptr %15, align 8, !tbaa !7
  %110 = load double, ptr %109, align 8, !tbaa !31
  %111 = load double, ptr @Ambient, align 8, !tbaa !13
  %112 = fadd double %108, %111
  %113 = fmul double %110, %112
  store double %113, ptr %2, align 8, !tbaa !18
  %114 = getelementptr inbounds %struct.VECTOR, ptr %109, i64 0, i32 1
  %115 = load double, ptr @Ambient, align 8, !tbaa !13
  %116 = fadd double %108, %115
  %117 = load <2 x double>, ptr %114, align 8, !tbaa !13
  %118 = insertelement <2 x double> poison, double %116, i64 0
  %119 = shufflevector <2 x double> %118, <2 x double> poison, <2 x i32> zeroinitializer
  %120 = fmul <2 x double> %119, %117
  store <2 x double> %120, ptr %18, align 8, !tbaa !13
  %121 = getelementptr inbounds %struct.TEXTURE, ptr %109, i64 0, i32 2
  %122 = load double, ptr %121, align 8, !tbaa !32
  %123 = fcmp ogt double %122, 1.000000e-05
  br i1 %123, label %124, label %235

124:                                              ; preds = %107
  %125 = fmul double %34, %34
  %126 = tail call double @llvm.fmuladd.f64(double %37, double %37, double %125)
  %127 = tail call double @llvm.fmuladd.f64(double %41, double %41, double %126)
  %128 = getelementptr inbounds %struct.VECTOR, ptr %1, i64 0, i32 2
  %129 = load double, ptr %128, align 8, !tbaa !15
  %130 = load <2 x double>, ptr %1, align 8, !tbaa !13
  %131 = fmul <2 x double> %33, %130
  %132 = extractelement <2 x double> %131, i64 1
  %133 = extractelement <2 x double> %130, i64 0
  %134 = tail call double @llvm.fmuladd.f64(double %133, double %37, double %132)
  %135 = tail call double @llvm.fmuladd.f64(double %129, double %41, double %134)
  %136 = fmul double %135, -2.000000e+00
  %137 = fdiv double %136, %127
  %138 = insertelement <2 x double> poison, double %137, i64 0
  %139 = shufflevector <2 x double> %138, <2 x double> poison, <2 x i32> zeroinitializer
  %140 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %139, <2 x double> %33, <2 x double> %130)
  store <2 x double> %140, ptr %8, align 16, !tbaa !13
  %141 = tail call double @llvm.fmuladd.f64(double %137, double %41, double %129)
  %142 = getelementptr inbounds %struct.VECTOR, ptr %8, i64 0, i32 2
  store double %141, ptr %142, align 16, !tbaa !15
  %143 = getelementptr inbounds %struct.VECTOR, ptr %10, i64 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  br i1 %21, label %144, label %184

144:                                              ; preds = %124
  %145 = getelementptr inbounds %struct.TEXTURE, ptr %109, i64 0, i32 3
  %146 = load double, ptr %145, align 8, !tbaa !33
  %147 = fcmp ogt double %146, 1.000000e-05
  br i1 %147, label %148, label %184

148:                                              ; preds = %144
  %149 = load i32, ptr @DISTRIB, align 4, !tbaa !11
  %150 = icmp sgt i32 %149, 0
  br i1 %150, label %151, label %174

151:                                              ; preds = %148
  %152 = getelementptr inbounds %struct.VECTOR, ptr %14, i64 0, i32 2
  %153 = getelementptr inbounds %struct.VECTOR, ptr %9, i64 0, i32 2
  %154 = add nsw i32 %3, -1
  %155 = getelementptr inbounds %struct.VECTOR, ptr %11, i64 0, i32 1
  br label %156

156:                                              ; preds = %156, %151
  %157 = phi i32 [ 0, %151 ], [ %171, %156 ]
  %158 = phi double [ 0.000000e+00, %151 ], [ %168, %156 ]
  %159 = phi <2 x double> [ zeroinitializer, %151 ], [ %170, %156 ]
  %160 = load double, ptr %145, align 8, !tbaa !33
  call fastcc void @DistribVector(ptr noundef nonnull %14, ptr noundef nonnull %8, double noundef %160, double noundef %160) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %9, ptr noundef nonnull align 16 dereferenceable(24) %8, i64 24, i1 false), !tbaa.struct !17
  %161 = load <2 x double>, ptr %14, align 16, !tbaa !13
  %162 = load <2 x double>, ptr %9, align 16, !tbaa !13
  %163 = fadd <2 x double> %161, %162
  store <2 x double> %163, ptr %9, align 16, !tbaa !13
  %164 = load double, ptr %152, align 16, !tbaa !15
  %165 = load double, ptr %153, align 16, !tbaa !15
  %166 = fadd double %164, %165
  store double %166, ptr %153, align 16, !tbaa !15
  call fastcc void @TraceLine(ptr noundef nonnull %5, ptr noundef nonnull %9, ptr noundef nonnull %11, i32 noundef %154) #13
  %167 = load double, ptr %11, align 8, !tbaa !18
  %168 = fadd double %167, %158
  %169 = load <2 x double>, ptr %155, align 8, !tbaa !13
  %170 = fadd <2 x double> %169, %159
  %171 = add nuw nsw i32 %157, 1
  %172 = load i32, ptr @DISTRIB, align 4, !tbaa !11
  %173 = icmp slt i32 %171, %172
  br i1 %173, label %156, label %174, !llvm.loop !34

174:                                              ; preds = %156, %148
  %175 = phi double [ 0.000000e+00, %148 ], [ %168, %156 ]
  %176 = phi i32 [ %149, %148 ], [ %172, %156 ]
  %177 = phi <2 x double> [ zeroinitializer, %148 ], [ %170, %156 ]
  %178 = sitofp i32 %176 to double
  %179 = fdiv double 1.000000e+00, %178
  %180 = fmul double %179, %175
  %181 = insertelement <2 x double> poison, double %179, i64 0
  %182 = shufflevector <2 x double> %181, <2 x double> poison, <2 x i32> zeroinitializer
  %183 = fmul <2 x double> %182, %177
  br label %188

184:                                              ; preds = %144, %124
  %185 = add nsw i32 %3, -1
  call fastcc void @TraceLine(ptr noundef nonnull %5, ptr noundef nonnull %8, ptr noundef nonnull %10, i32 noundef %185) #13
  %186 = load double, ptr %10, align 8, !tbaa !18
  %187 = load <2 x double>, ptr %143, align 8, !tbaa !13
  br label %188

188:                                              ; preds = %184, %174
  %189 = phi double [ %186, %184 ], [ %180, %174 ]
  %190 = phi <2 x double> [ %187, %184 ], [ %183, %174 ]
  %191 = load double, ptr %121, align 8, !tbaa !32
  %192 = load double, ptr %2, align 8, !tbaa !18
  %193 = tail call double @llvm.fmuladd.f64(double %189, double %191, double %192)
  store double %193, ptr %2, align 8, !tbaa !18
  %194 = load <2 x double>, ptr %18, align 8, !tbaa !13
  %195 = insertelement <2 x double> poison, double %191, i64 0
  %196 = shufflevector <2 x double> %195, <2 x double> poison, <2 x i32> zeroinitializer
  %197 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %190, <2 x double> %196, <2 x double> %194)
  %198 = extractelement <2 x double> %197, i64 0
  br label %230

199:                                              ; preds = %20
  %200 = load double, ptr %1, align 8, !tbaa !18
  %201 = getelementptr inbounds %struct.VECTOR, ptr %1, i64 0, i32 1
  %202 = load double, ptr %201, align 8, !tbaa !25
  %203 = fmul double %202, %202
  %204 = tail call double @llvm.fmuladd.f64(double %200, double %200, double %203)
  %205 = tail call double @llvm.sqrt.f64(double %204)
  %206 = fcmp ogt double %205, 0.000000e+00
  br i1 %206, label %207, label %214

207:                                              ; preds = %199
  %208 = getelementptr inbounds %struct.VECTOR, ptr %1, i64 0, i32 2
  %209 = load double, ptr %208, align 8, !tbaa !15
  %210 = tail call double @llvm.fabs.f64(double %209)
  %211 = fdiv double %210, %205
  %212 = tail call double @atan(double noundef %211) #15
  %213 = fmul double %212, 0x3FE45F306C8462A6
  br label %214

214:                                              ; preds = %207, %199
  %215 = phi double [ %213, %207 ], [ 1.000000e+00, %199 ]
  %216 = load double, ptr getelementptr inbounds ([2 x %struct.VECTOR], ptr @Skycolor, i64 0, i64 1), align 8, !tbaa !18
  %217 = load double, ptr @Skycolor, align 16, !tbaa !18
  %218 = fsub double 1.000000e+00, %215
  %219 = fmul double %218, %217
  %220 = tail call double @llvm.fmuladd.f64(double %216, double %215, double %219)
  store double %220, ptr %2, align 8, !tbaa !18
  %221 = load <2 x double>, ptr getelementptr inbounds ([2 x %struct.VECTOR], ptr @Skycolor, i64 0, i64 1, i32 1), align 16, !tbaa !13
  %222 = load <2 x double>, ptr getelementptr inbounds ([2 x %struct.VECTOR], ptr @Skycolor, i64 0, i64 0, i32 1), align 8, !tbaa !13
  %223 = insertelement <2 x double> poison, double %218, i64 0
  %224 = shufflevector <2 x double> %223, <2 x double> poison, <2 x i32> zeroinitializer
  %225 = fmul <2 x double> %224, %222
  %226 = insertelement <2 x double> poison, double %215, i64 0
  %227 = shufflevector <2 x double> %226, <2 x double> poison, <2 x i32> zeroinitializer
  %228 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %221, <2 x double> %227, <2 x double> %225)
  %229 = extractelement <2 x double> %228, i64 0
  br label %230

230:                                              ; preds = %214, %188
  %231 = phi double [ %229, %214 ], [ %198, %188 ]
  %232 = phi double [ %220, %214 ], [ %193, %188 ]
  %233 = phi <2 x double> [ %228, %214 ], [ %197, %188 ]
  store double %231, ptr %18, align 8, !tbaa !25
  %234 = extractelement <2 x double> %233, i64 1
  store double %234, ptr %17, align 8, !tbaa !15
  br label %235

235:                                              ; preds = %230, %107
  %236 = phi double [ %113, %107 ], [ %232, %230 ]
  %237 = phi <2 x double> [ %120, %107 ], [ %233, %230 ]
  %238 = fcmp ogt double %236, 1.000000e+00
  br i1 %238, label %239, label %240

239:                                              ; preds = %235
  store double 1.000000e+00, ptr %2, align 8, !tbaa !18
  br label %240

240:                                              ; preds = %239, %235
  %241 = extractelement <2 x double> %237, i64 0
  %242 = fcmp ogt double %241, 1.000000e+00
  br i1 %242, label %243, label %244

243:                                              ; preds = %240
  store double 1.000000e+00, ptr %18, align 8, !tbaa !25
  br label %244

244:                                              ; preds = %243, %240
  %245 = extractelement <2 x double> %237, i64 1
  %246 = fcmp ogt double %245, 1.000000e+00
  br i1 %246, label %247, label %248

247:                                              ; preds = %244
  store double 1.000000e+00, ptr %17, align 8, !tbaa !15
  br label %248

248:                                              ; preds = %247, %244, %4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %14) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %13) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %12) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #16
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

; Function Attrs: nofree nounwind optsize memory(readwrite, inaccessiblemem: write) uwtable
define internal fastcc double @IntersectObjs(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4) unnamed_addr #9 {
  %6 = getelementptr inbounds %struct.VECTOR, ptr %1, i64 0, i32 2
  %7 = load double, ptr %6, align 8, !tbaa !15
  %8 = tail call double @llvm.fabs.f64(double %7)
  %9 = fcmp ogt double %8, 1.000000e-05
  br i1 %9, label %10, label %37

10:                                               ; preds = %5
  %11 = load double, ptr @Groundpos, align 8, !tbaa !13
  %12 = getelementptr inbounds %struct.VECTOR, ptr %0, i64 0, i32 2
  %13 = load double, ptr %12, align 8, !tbaa !15
  %14 = fsub double %11, %13
  %15 = fdiv double %14, %7
  %16 = fcmp ogt double %15, 1.000000e-05
  %17 = fcmp olt double %15, 1.000000e+05
  %18 = and i1 %16, %17
  br i1 %18, label %19, label %37

19:                                               ; preds = %10
  %20 = load <2 x double>, ptr %0, align 8, !tbaa !13
  %21 = load <2 x double>, ptr %1, align 8, !tbaa !13
  %22 = insertelement <2 x double> poison, double %15, i64 0
  %23 = shufflevector <2 x double> %22, <2 x double> poison, <2 x i32> zeroinitializer
  %24 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %21, <2 x double> %23, <2 x double> %20)
  store <2 x double> %24, ptr %2, align 8, !tbaa !13
  %25 = tail call double @llvm.fmuladd.f64(double %7, double %15, double %13)
  %26 = getelementptr inbounds %struct.VECTOR, ptr %2, i64 0, i32 2
  store double %25, ptr %26, align 8, !tbaa !15
  %27 = getelementptr inbounds %struct.VECTOR, ptr %3, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  store double 1.000000e+00, ptr %27, align 8, !tbaa !15
  %28 = load <2 x double>, ptr %2, align 8, !tbaa !13
  %29 = fadd <2 x double> %28, <double 5.000000e+04, double 5.000000e+04>
  %30 = fptosi <2 x double> %29 to <2 x i32>
  %31 = shufflevector <2 x i32> %30, <2 x i32> poison, <2 x i32> <i32 1, i32 poison>
  %32 = add nsw <2 x i32> %31, %30
  %33 = extractelement <2 x i32> %32, i64 0
  %34 = and i32 %33, 1
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds [2 x %struct.TEXTURE], ptr @Groundtxt, i64 0, i64 %35
  store ptr %36, ptr %4, align 8, !tbaa !7
  br label %37

37:                                               ; preds = %19, %10, %5
  %38 = phi double [ %15, %19 ], [ -1.000000e+00, %10 ], [ -1.000000e+00, %5 ]
  %39 = getelementptr inbounds %struct.VECTOR, ptr %0, i64 0, i32 2
  %40 = getelementptr inbounds %struct.VECTOR, ptr %1, i64 0, i32 1
  %41 = getelementptr inbounds %struct.VECTOR, ptr %2, i64 0, i32 2
  %42 = getelementptr inbounds %struct.VECTOR, ptr %3, i64 0, i32 2
  br label %43

43:                                               ; preds = %106, %37
  %44 = phi i64 [ 0, %37 ], [ %108, %106 ]
  %45 = phi double [ %38, %37 ], [ %107, %106 ]
  %46 = getelementptr inbounds [4 x %struct.OBJ], ptr @objs, i64 0, i64 %44
  %47 = getelementptr inbounds i8, ptr %46, i64 16
  %48 = load double, ptr %47, align 16, !tbaa.struct !35
  %49 = load <2 x double>, ptr %46, align 16
  %50 = load <2 x double>, ptr %0, align 8, !tbaa !13
  %51 = fsub <2 x double> %49, %50
  %52 = load double, ptr %39, align 8, !tbaa !15
  %53 = fsub double %48, %52
  %54 = load double, ptr %1, align 8, !tbaa !18
  %55 = load double, ptr %40, align 8, !tbaa !25
  %56 = fmul double %55, %55
  %57 = tail call double @llvm.fmuladd.f64(double %54, double %54, double %56)
  %58 = load double, ptr %6, align 8, !tbaa !15
  %59 = tail call double @llvm.fmuladd.f64(double %58, double %58, double %57)
  %60 = fdiv double 1.000000e+00, %59
  %61 = extractelement <2 x double> %51, i64 1
  %62 = fmul double %61, %55
  %63 = extractelement <2 x double> %51, i64 0
  %64 = tail call double @llvm.fmuladd.f64(double %63, double %54, double %62)
  %65 = tail call double @llvm.fmuladd.f64(double %53, double %58, double %64)
  %66 = fmul double %65, %60
  %67 = getelementptr inbounds [4 x %struct.OBJ], ptr @objs, i64 0, i64 %44, i32 1
  %68 = load double, ptr %67, align 8, !tbaa !36
  %69 = fneg double %63
  %70 = fmul double %63, %69
  %71 = tail call double @llvm.fmuladd.f64(double %68, double %68, double %70)
  %72 = fneg double %61
  %73 = tail call double @llvm.fmuladd.f64(double %72, double %61, double %71)
  %74 = fneg double %53
  %75 = tail call double @llvm.fmuladd.f64(double %74, double %53, double %73)
  %76 = fmul double %60, %75
  %77 = tail call double @llvm.fmuladd.f64(double %66, double %66, double %76)
  %78 = fcmp ogt double %77, 0.000000e+00
  br i1 %78, label %79, label %106

79:                                               ; preds = %43
  %80 = tail call double @sqrt(double noundef %77) #15
  %81 = fsub double %66, %80
  %82 = fcmp olt double %81, 1.000000e-05
  %83 = fadd double %66, %80
  %84 = select i1 %82, double %83, double %81
  %85 = fcmp ogt double %84, 1.000000e-05
  br i1 %85, label %86, label %106

86:                                               ; preds = %79
  %87 = fcmp olt double %84, %45
  %88 = fcmp olt double %45, 0.000000e+00
  %89 = or i1 %88, %87
  br i1 %89, label %90, label %106

90:                                               ; preds = %86
  %91 = load <2 x double>, ptr %1, align 8, !tbaa !13
  %92 = insertelement <2 x double> poison, double %84, i64 0
  %93 = shufflevector <2 x double> %92, <2 x double> poison, <2 x i32> zeroinitializer
  %94 = fmul <2 x double> %93, %91
  store <2 x double> %94, ptr %2, align 8, !tbaa !13
  %95 = load double, ptr %6, align 8, !tbaa !15
  %96 = fmul double %84, %95
  store double %96, ptr %41, align 8, !tbaa !15
  %97 = fsub <2 x double> %94, %51
  store <2 x double> %97, ptr %3, align 8, !tbaa !13
  %98 = fsub double %96, %53
  store double %98, ptr %42, align 8, !tbaa !15
  %99 = load <2 x double>, ptr %0, align 8, !tbaa !13
  %100 = load <2 x double>, ptr %2, align 8, !tbaa !13
  %101 = fadd <2 x double> %99, %100
  store <2 x double> %101, ptr %2, align 8, !tbaa !13
  %102 = load double, ptr %39, align 8, !tbaa !15
  %103 = load double, ptr %41, align 8, !tbaa !15
  %104 = fadd double %102, %103
  store double %104, ptr %41, align 8, !tbaa !15
  %105 = getelementptr inbounds [4 x %struct.OBJ], ptr @objs, i64 0, i64 %44, i32 2
  store ptr %105, ptr %4, align 8, !tbaa !7
  br label %106

106:                                              ; preds = %90, %86, %79, %43
  %107 = phi double [ %84, %90 ], [ %45, %86 ], [ %45, %79 ], [ %45, %43 ]
  %108 = add nuw nsw i64 %44, 1
  %109 = icmp eq i64 %108, 4
  br i1 %109, label %110, label %43, !llvm.loop !38

110:                                              ; preds = %106
  %.lcssa = phi double [ %107, %106 ]
  ret double %.lcssa
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #6

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @sqrt(double noundef) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #6

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @atan(double noundef) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.sqrt.v2f64(<2 x double>) #6

attributes #0 = { nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { noreturn nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { mustprogress nofree nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { nofree nounwind optsize memory(readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #11 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold optsize }
attributes #13 = { optsize }
attributes #14 = { noreturn nounwind optsize }
attributes #15 = { nounwind optsize }
attributes #16 = { nounwind }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1, !2, !3, !4, !5, !6}

!0 = !{!"clang version 17.0.6 (https://github.com/Casperento/llvm-project.git 9b0073551ece0d22bf3378af2b03e456a26031b6)"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 1, !"ThinLTO", i32 0}
!6 = !{i32 1, !"EnableSplitLTOUnit", i32 1}
!7 = !{!8, !8, i64 0}
!8 = !{!"any pointer", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!12, !12, i64 0}
!12 = !{!"int", !9, i64 0}
!13 = !{!14, !14, i64 0}
!14 = !{!"double", !9, i64 0}
!15 = !{!16, !14, i64 16}
!16 = !{!"", !14, i64 0, !14, i64 8, !14, i64 16}
!17 = !{i64 0, i64 8, !13, i64 8, i64 8, !13, i64 16, i64 8, !13}
!18 = !{!16, !14, i64 0}
!19 = distinct !{!19, !20}
!20 = !{!"llvm.loop.mustprogress"}
!21 = !{!9, !9, i64 0}
!22 = distinct !{!22, !20}
!23 = distinct !{!23, !20}
!24 = distinct !{!24, !20}
!25 = !{!16, !14, i64 8}
!26 = !{!27, !27, i64 0}
!27 = !{!"long", !9, i64 0}
!28 = distinct !{!28, !20}
!29 = !{!30, !14, i64 24}
!30 = !{!"", !16, i64 0, !14, i64 24, !14, i64 32, !14, i64 40}
!31 = !{!30, !14, i64 0}
!32 = !{!30, !14, i64 32}
!33 = !{!30, !14, i64 40}
!34 = distinct !{!34, !20}
!35 = !{i64 0, i64 8, !13}
!36 = !{!37, !14, i64 24}
!37 = !{!"", !16, i64 0, !14, i64 24, !30, i64 32}
!38 = distinct !{!38, !20}
