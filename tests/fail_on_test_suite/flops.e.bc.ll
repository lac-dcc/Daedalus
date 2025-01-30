; ModuleID = '/src/llvm-test-suite/build/SingleSource/Benchmarks/Misc/flops.e.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i64, i64 }

@A0 = internal global double 1.000000e+00, align 8
@A1 = internal global double 0xBFC5555555559705, align 8
@A2 = internal global double 0x3F811111113AE9A3, align 8
@A3 = internal global double 0x3F2A01A03FB1CA71, align 8
@A4 = internal global double 0x3EC71DF284AA3566, align 8
@A5 = internal global double 0x3E5AEB5A8CF8A426, align 8
@A6 = internal global double 0x3DE68DF75229C1A6, align 8
@B1 = internal global double 0xBFDFFFFFFFFF8156, align 8
@B2 = internal global double 0x3FA5555555290224, align 8
@B3 = internal global double 0xBF56C16BFFE76516, align 8
@B4 = internal global double 0x3EFA019528242DB7, align 8
@B5 = internal global double 0xBE927BB3D47DDB8E, align 8
@B6 = internal global double 0x3E2157B275DF182A, align 8
@D1 = internal global double 0x3FA47AE143138374, align 8
@D2 = internal global double 9.600000e-04, align 8
@D3 = internal global double 0x3EB4B05A0FF4A728, align 8
@E2 = internal global double 4.800000e-04, align 8
@E3 = internal global double 4.110510e-07, align 8
@T = internal global [36 x double] zeroinitializer, align 16
@TLimit = internal global double 0.000000e+00, align 8
@piref = internal global double 0.000000e+00, align 8
@one = internal global double 0.000000e+00, align 8
@two = internal global double 0.000000e+00, align 8
@three = internal global double 0.000000e+00, align 8
@four = internal global double 0.000000e+00, align 8
@five = internal global double 0.000000e+00, align 8
@scale = internal global double 0.000000e+00, align 8
@TimeArray = internal global [3 x double] zeroinitializer, align 16
@sa = internal global double 0.000000e+00, align 8
@nulltime = internal global double 0.000000e+00, align 8
@sb = internal global double 0.000000e+00, align 8
@sc = internal global double 0.000000e+00, align 8
@.str.4 = private unnamed_addr constant [36 x i8] c"     1   %13.4lf  %10.4lf  %10.4lf\0A\00", align 1
@piprg = internal global double 0.000000e+00, align 8
@pierr = internal global double 0.000000e+00, align 8
@.str.5 = private unnamed_addr constant [36 x i8] c"     2   %13.4lf  %10.4lf  %10.4lf\0A\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"     3   %13.4lf  %10.4lf  %10.4lf\0A\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"     4   %13.4lf  %10.4lf  %10.4lf\0A\00", align 1
@.str.8 = private unnamed_addr constant [36 x i8] c"     5   %13.4lf  %10.4lf  %10.4lf\0A\00", align 1
@.str.9 = private unnamed_addr constant [36 x i8] c"     6   %13.4lf  %10.4lf  %10.4lf\0A\00", align 1
@.str.10 = private unnamed_addr constant [36 x i8] c"     7   %13.4lf  %10.4lf  %10.4lf\0A\00", align 1
@.str.11 = private unnamed_addr constant [36 x i8] c"     8   %13.4lf  %10.4lf  %10.4lf\0A\00", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"   Iterations      = %10ld\0A\00", align 1
@.str.13 = private unnamed_addr constant [30 x i8] c"   NullTime (usec) = %10.4lf\0A\00", align 1
@.str.14 = private unnamed_addr constant [30 x i8] c"   MFLOPS(1)       = %10.4lf\0A\00", align 1
@.str.15 = private unnamed_addr constant [30 x i8] c"   MFLOPS(2)       = %10.4lf\0A\00", align 1
@.str.16 = private unnamed_addr constant [30 x i8] c"   MFLOPS(3)       = %10.4lf\0A\00", align 1
@.str.17 = private unnamed_addr constant [31 x i8] c"   MFLOPS(4)       = %10.4lf\0A\0A\00", align 1
@tnow = internal global %struct.timeval zeroinitializer, align 8
@str = private unnamed_addr constant [57 x i8] c"   FLOPS C Program (Double Precision), V2.0 18 Dec 1992\0A\00", align 1
@str.18 = private unnamed_addr constant [47 x i8] c"   Module     Error        RunTime      MFLOPS\00", align 1
@str.19 = private unnamed_addr constant [35 x i8] c"                            (usec)\00", align 1

; Function Attrs: nofree nounwind optsize uwtable
define dso_local i32 @main() #0 {
  %1 = tail call i32 @putchar(i32 10)
  %2 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  store double 6.400000e+01, ptr getelementptr inbounds ([36 x double], ptr @T, i64 0, i64 1), align 8, !tbaa !7
  store double 1.000000e+00, ptr @TLimit, align 8, !tbaa !7
  store double 0x400921FB54442D18, ptr @piref, align 8, !tbaa !7
  store double 1.000000e+00, ptr @one, align 8, !tbaa !7
  store double 2.000000e+00, ptr @two, align 8, !tbaa !7
  store double 3.000000e+00, ptr @three, align 8, !tbaa !7
  store double 4.000000e+00, ptr @four, align 8, !tbaa !7
  store double 5.000000e+00, ptr @five, align 8, !tbaa !7
  store double 1.000000e+00, ptr @scale, align 8, !tbaa !7
  %3 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.18)
  %4 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.19)
  %5 = load double, ptr getelementptr inbounds ([3 x double], ptr @TimeArray, i64 0, i64 2), align 16, !tbaa !7
  %6 = tail call i32 @gettimeofday(ptr noundef nonnull @tnow, ptr noundef null) #4
  %7 = load i64, ptr @tnow, align 8, !tbaa !11
  %8 = sitofp i64 %7 to double
  %9 = load i64, ptr getelementptr inbounds (%struct.timeval, ptr @tnow, i64 0, i32 1), align 8, !tbaa !14
  %10 = sitofp i64 %9 to double
  %11 = tail call double @llvm.fmuladd.f64(double %10, double 0x3EB0C6F7A0B5ED8D, double %8)
  store double %11, ptr getelementptr inbounds ([3 x double], ptr @TimeArray, i64 0, i64 2), align 16, !tbaa !7
  %12 = fsub double %11, %5
  store double %12, ptr getelementptr inbounds ([3 x double], ptr @TimeArray, i64 0, i64 1), align 8, !tbaa !7
  %13 = tail call i32 @gettimeofday(ptr noundef nonnull @tnow, ptr noundef null) #4
  %14 = load i64, ptr @tnow, align 8, !tbaa !11
  %15 = sitofp i64 %14 to double
  %16 = load i64, ptr getelementptr inbounds (%struct.timeval, ptr @tnow, i64 0, i32 1), align 8, !tbaa !14
  %17 = sitofp i64 %16 to double
  %18 = tail call double @llvm.fmuladd.f64(double %17, double 0x3EB0C6F7A0B5ED8D, double %15)
  store double %18, ptr getelementptr inbounds ([3 x double], ptr @TimeArray, i64 0, i64 2), align 16, !tbaa !7
  %19 = fsub double %18, %11
  store double %19, ptr getelementptr inbounds ([3 x double], ptr @TimeArray, i64 0, i64 1), align 8, !tbaa !7
  store double 0.000000e+00, ptr @sa, align 8, !tbaa !7
  %20 = load double, ptr @TLimit, align 8, !tbaa !7
  %21 = fcmp ogt double %20, 0.000000e+00
  br i1 %21, label %22, label %77

22:                                               ; preds = %65, %0
  %23 = phi double [ %71, %65 ], [ %18, %0 ]
  %24 = phi i64 [ %25, %65 ], [ 15625, %0 ]
  %25 = shl i64 %24, 1
  %26 = load double, ptr @one, align 8, !tbaa !7
  %27 = sitofp i64 %25 to double
  %28 = fdiv double %26, %27
  %29 = tail call i32 @gettimeofday(ptr noundef nonnull @tnow, ptr noundef null) #4
  %30 = load i64, ptr @tnow, align 8, !tbaa !11
  %31 = sitofp i64 %30 to double
  %32 = load i64, ptr getelementptr inbounds (%struct.timeval, ptr @tnow, i64 0, i32 1), align 8, !tbaa !14
  %33 = sitofp i64 %32 to double
  %34 = tail call double @llvm.fmuladd.f64(double %33, double 0x3EB0C6F7A0B5ED8D, double %31)
  store double %34, ptr getelementptr inbounds ([3 x double], ptr @TimeArray, i64 0, i64 2), align 16, !tbaa !7
  %35 = fsub double %34, %23
  store double %35, ptr getelementptr inbounds ([3 x double], ptr @TimeArray, i64 0, i64 1), align 8, !tbaa !7
  %36 = load double, ptr @D1, align 8, !tbaa !7
  %37 = load double, ptr @D2, align 8, !tbaa !7
  %38 = load double, ptr @D3, align 8, !tbaa !7
  %39 = load double, ptr @E2, align 8, !tbaa !7
  %40 = load double, ptr @E3, align 8, !tbaa !7
  %41 = tail call i64 @llvm.smax.i64(i64 %25, i64 2)
  %42 = insertelement <2 x double> poison, double %38, i64 0
  %43 = insertelement <2 x double> poison, double %37, i64 0
  %44 = insertelement <2 x double> %43, double %36, i64 1
  %45 = insertelement <2 x double> poison, double %36, i64 0
  %46 = insertelement <2 x double> %45, double %26, i64 1
  br label %47

47:                                               ; preds = %47, %22
  %48 = phi i64 [ 1, %22 ], [ %63, %47 ]
  %49 = phi double [ 0.000000e+00, %22 ], [ %62, %47 ]
  %50 = phi double [ 0.000000e+00, %22 ], [ %51, %47 ]
  %51 = fadd double %26, %50
  %52 = fmul double %28, %51
  %53 = tail call double @llvm.fmuladd.f64(double %52, double %40, double %39)
  %54 = insertelement <2 x double> poison, double %52, i64 0
  %55 = shufflevector <2 x double> %54, <2 x double> poison, <2 x i32> zeroinitializer
  %56 = insertelement <2 x double> %42, double %53, i64 1
  %57 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %55, <2 x double> %56, <2 x double> %44)
  %58 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %55, <2 x double> %57, <2 x double> %46)
  %59 = extractelement <2 x double> %58, i64 0
  %60 = extractelement <2 x double> %58, i64 1
  %61 = fdiv double %59, %60
  %62 = fadd double %49, %61
  %63 = add nuw nsw i64 %48, 1
  %64 = icmp eq i64 %63, %41
  br i1 %64, label %65, label %47, !llvm.loop !15

65:                                               ; preds = %47
  %.lcssa6 = phi double [ %62, %47 ]
  %66 = tail call i32 @gettimeofday(ptr noundef nonnull @tnow, ptr noundef null) #4
  %67 = load i64, ptr @tnow, align 8, !tbaa !11
  %68 = sitofp i64 %67 to double
  %69 = load i64, ptr getelementptr inbounds (%struct.timeval, ptr @tnow, i64 0, i32 1), align 8, !tbaa !14
  %70 = sitofp i64 %69 to double
  %71 = tail call double @llvm.fmuladd.f64(double %70, double 0x3EB0C6F7A0B5ED8D, double %68)
  store double %71, ptr getelementptr inbounds ([3 x double], ptr @TimeArray, i64 0, i64 2), align 16, !tbaa !7
  %72 = fsub double %71, %34
  store double %72, ptr getelementptr inbounds ([3 x double], ptr @TimeArray, i64 0, i64 1), align 8, !tbaa !7
  store double %72, ptr @sa, align 8, !tbaa !7
  %73 = icmp ne i64 %24, 256000000
  %74 = load double, ptr @TLimit, align 8
  %75 = fcmp olt double %72, %74
  %76 = select i1 %73, i1 %75, i1 false
  br i1 %76, label %22, label %77, !llvm.loop !17

77:                                               ; preds = %65, %0
  %78 = phi double [ %18, %0 ], [ %71, %65 ]
  %79 = phi double [ undef, %0 ], [ %28, %65 ]
  %80 = phi double [ undef, %0 ], [ %.lcssa6, %65 ]
  store double 1.589500e-02, ptr @scale, align 8, !tbaa !7
  store double 1.589500e-02, ptr getelementptr inbounds ([36 x double], ptr @T, i64 0, i64 1), align 8, !tbaa !7
  %81 = tail call i32 @gettimeofday(ptr noundef nonnull @tnow, ptr noundef null) #4
  %82 = load i64, ptr @tnow, align 8, !tbaa !11
  %83 = sitofp i64 %82 to double
  %84 = load i64, ptr getelementptr inbounds (%struct.timeval, ptr @tnow, i64 0, i32 1), align 8, !tbaa !14
  %85 = sitofp i64 %84 to double
  %86 = tail call double @llvm.fmuladd.f64(double %85, double 0x3EB0C6F7A0B5ED8D, double %83)
  store double %86, ptr getelementptr inbounds ([3 x double], ptr @TimeArray, i64 0, i64 2), align 16, !tbaa !7
  %87 = fsub double %86, %78
  store double %87, ptr getelementptr inbounds ([3 x double], ptr @TimeArray, i64 0, i64 1), align 8, !tbaa !7
  %88 = tail call i32 @gettimeofday(ptr noundef nonnull @tnow, ptr noundef null) #4
  %89 = load i64, ptr @tnow, align 8, !tbaa !11
  %90 = sitofp i64 %89 to double
  %91 = load i64, ptr getelementptr inbounds (%struct.timeval, ptr @tnow, i64 0, i32 1), align 8, !tbaa !14
  %92 = sitofp i64 %91 to double
  %93 = tail call double @llvm.fmuladd.f64(double %92, double 0x3EB0C6F7A0B5ED8D, double %90)
  store double %93, ptr getelementptr inbounds ([3 x double], ptr @TimeArray, i64 0, i64 2), align 16, !tbaa !7
  %94 = fsub double %93, %86
  store double %94, ptr getelementptr inbounds ([3 x double], ptr @TimeArray, i64 0, i64 1), align 8, !tbaa !7
  %95 = load double, ptr getelementptr inbounds ([36 x double], ptr @T, i64 0, i64 1), align 8, !tbaa !7
  %96 = fmul double %95, %94
  %97 = fcmp olt double %96, 0.000000e+00
  %98 = select i1 %97, double 0.000000e+00, double %96
  store double %98, ptr @nulltime, align 8, !tbaa !7
  %99 = load double, ptr @sa, align 8, !tbaa !7
  %100 = fneg double %98
  %101 = tail call double @llvm.fmuladd.f64(double %95, double %99, double %100)
  store double %101, ptr getelementptr inbounds ([36 x double], ptr @T, i64 0, i64 2), align 16, !tbaa !7
  %102 = load double, ptr @D1, align 8, !tbaa !7
  %103 = load double, ptr @D2, align 8, !tbaa !7
  %104 = fadd double %102, %103
  %105 = load double, ptr @D3, align 8, !tbaa !7
  %106 = fadd double %104, %105
  %107 = load double, ptr @one, align 8, !tbaa !7
  %108 = fadd double %102, %107
  %109 = load double, ptr @E2, align 8, !tbaa !7
  %110 = fadd double %108, %109
  %111 = load double, ptr @E3, align 8, !tbaa !7
  %112 = fadd double %110, %111
  %113 = fdiv double %106, %112
  %114 = fdiv double %101, 1.400000e+01
  store double %114, ptr getelementptr inbounds ([36 x double], ptr @T, i64 0, i64 3), align 8, !tbaa !7
  %115 = fadd double %102, %113
  %116 = load double, ptr @two, align 8, !tbaa !7
  %117 = tail call double @llvm.fmuladd.f64(double %116, double %80, double %115)
  %118 = fmul double %79, %117
  %119 = fdiv double %118, %116
  store double %119, ptr @sa, align 8, !tbaa !7
  %120 = fdiv double %107, %119
  store double %120, ptr @sb, align 8, !tbaa !7
  %121 = fptosi double %120 to i64
  %122 = mul nsw i64 %121, 40000
  %123 = sitofp i64 %122 to double
  %124 = load double, ptr @scale, align 8, !tbaa !7
  %125 = fdiv double %123, %124
  %126 = fptosi double %125 to i64
  %127 = fadd double %120, -2.520000e+01
  store double %127, ptr @sc, align 8, !tbaa !7
  %128 = fdiv double %107, %114
  store double %128, ptr getelementptr inbounds ([36 x double], ptr @T, i64 0, i64 4), align 16, !tbaa !7
  %129 = fmul double %127, 1.000000e-30
  %130 = fmul double %101, 1.000000e-30
  %131 = fmul double %128, 1.000000e-30
  %132 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, double noundef %129, double noundef %130, double noundef %131) #5
  %133 = load double, ptr @five, align 8, !tbaa !7
  %134 = fneg double %133
  %135 = load double, ptr @one, align 8, !tbaa !7
  %136 = fneg double %135
  store double %136, ptr @sa, align 8, !tbaa !7
  %137 = load double, ptr getelementptr inbounds ([3 x double], ptr @TimeArray, i64 0, i64 2), align 16, !tbaa !7
  %138 = tail call i32 @gettimeofday(ptr noundef nonnull @tnow, ptr noundef null) #4
  %139 = load i64, ptr @tnow, align 8, !tbaa !11
  %140 = sitofp i64 %139 to double
  %141 = load i64, ptr getelementptr inbounds (%struct.timeval, ptr @tnow, i64 0, i32 1), align 8, !tbaa !14
  %142 = sitofp i64 %141 to double
  %143 = tail call double @llvm.fmuladd.f64(double %142, double 0x3EB0C6F7A0B5ED8D, double %140)
  store double %143, ptr getelementptr inbounds ([3 x double], ptr @TimeArray, i64 0, i64 2), align 16, !tbaa !7
  %144 = fsub double %143, %137
  store double %144, ptr getelementptr inbounds ([3 x double], ptr @TimeArray, i64 0, i64 1), align 8, !tbaa !7
  %145 = icmp slt i64 %126, 1
  br i1 %145, label %157, label %146

146:                                              ; preds = %77
  %147 = load double, ptr @sa, align 8, !tbaa !7
  br label %148

148:                                              ; preds = %148, %146
  %149 = phi i64 [ %154, %148 ], [ 1, %146 ]
  %150 = phi double [ %152, %148 ], [ %134, %146 ]
  %151 = phi double [ %153, %148 ], [ %147, %146 ]
  %152 = fneg double %150
  %153 = fsub double %151, %150
  %154 = add nuw i64 %149, 1
  %155 = icmp eq i64 %149, %126
  br i1 %155, label %156, label %148, !llvm.loop !18

156:                                              ; preds = %148
  %.lcssa5 = phi double [ %152, %148 ]
  %.lcssa4 = phi double [ %153, %148 ]
  store double %.lcssa4, ptr @sa, align 8, !tbaa !7
  br label %157

157:                                              ; preds = %156, %77
  %158 = phi double [ %.lcssa5, %156 ], [ %134, %77 ]
  %159 = tail call i32 @gettimeofday(ptr noundef nonnull @tnow, ptr noundef null) #4
  %160 = load i64, ptr @tnow, align 8, !tbaa !11
  %161 = sitofp i64 %160 to double
  %162 = load i64, ptr getelementptr inbounds (%struct.timeval, ptr @tnow, i64 0, i32 1), align 8, !tbaa !14
  %163 = sitofp i64 %162 to double
  %164 = tail call double @llvm.fmuladd.f64(double %163, double 0x3EB0C6F7A0B5ED8D, double %161)
  store double %164, ptr getelementptr inbounds ([3 x double], ptr @TimeArray, i64 0, i64 2), align 16, !tbaa !7
  %165 = fsub double %164, %143
  store double %165, ptr getelementptr inbounds ([3 x double], ptr @TimeArray, i64 0, i64 1), align 8, !tbaa !7
  %166 = load double, ptr getelementptr inbounds ([36 x double], ptr @T, i64 0, i64 1), align 8, !tbaa !7
  %167 = fmul double %166, %165
  %168 = fcmp olt double %167, 0.000000e+00
  %169 = select i1 %168, double 0.000000e+00, double %167
  store double %169, ptr getelementptr inbounds ([36 x double], ptr @T, i64 0, i64 5), align 8, !tbaa !7
  %170 = sitofp i64 %126 to double
  store double %170, ptr @sc, align 8, !tbaa !7
  %171 = load double, ptr @sa, align 8, !tbaa !7
  %172 = tail call i32 @gettimeofday(ptr noundef nonnull @tnow, ptr noundef null) #4
  %173 = load i64, ptr @tnow, align 8, !tbaa !11
  %174 = sitofp i64 %173 to double
  %175 = load i64, ptr getelementptr inbounds (%struct.timeval, ptr @tnow, i64 0, i32 1), align 8, !tbaa !14
  %176 = sitofp i64 %175 to double
  %177 = tail call double @llvm.fmuladd.f64(double %176, double 0x3EB0C6F7A0B5ED8D, double %174)
  store double %177, ptr getelementptr inbounds ([3 x double], ptr @TimeArray, i64 0, i64 2), align 16, !tbaa !7
  %178 = fsub double %177, %164
  store double %178, ptr getelementptr inbounds ([3 x double], ptr @TimeArray, i64 0, i64 1), align 8, !tbaa !7
  br i1 %145, label %201, label %179

179:                                              ; preds = %157
  %180 = load double, ptr @sa, align 8, !tbaa !7
  %181 = load double, ptr @two, align 8, !tbaa !7
  br label %182

182:                                              ; preds = %182, %179
  %183 = phi i64 [ 1, %179 ], [ %198, %182 ]
  %184 = phi double [ %158, %179 ], [ %190, %182 ]
  %185 = phi double [ %171, %179 ], [ %192, %182 ]
  %186 = phi double [ 0.000000e+00, %179 ], [ %194, %182 ]
  %187 = phi double [ 0.000000e+00, %179 ], [ %197, %182 ]
  %188 = phi double [ 0.000000e+00, %179 ], [ %195, %182 ]
  %189 = phi double [ %180, %179 ], [ %191, %182 ]
  %190 = fneg double %184
  %191 = fsub double %189, %184
  %192 = fadd double %185, %181
  %193 = fsub double %190, %192
  %194 = fadd double %186, %193
  %195 = tail call double @llvm.fmuladd.f64(double %184, double %192, double %188)
  %196 = fdiv double %184, %192
  %197 = fsub double %187, %196
  %198 = add nuw i64 %183, 1
  %199 = icmp eq i64 %183, %126
  br i1 %199, label %200, label %182, !llvm.loop !19

200:                                              ; preds = %182
  %.lcssa3 = phi double [ %191, %182 ]
  %.lcssa2 = phi double [ %194, %182 ]
  %.lcssa1 = phi double [ %195, %182 ]
  %.lcssa = phi double [ %197, %182 ]
  store double %.lcssa3, ptr @sa, align 8, !tbaa !7
  br label %201

201:                                              ; preds = %200, %157
  %202 = phi double [ %.lcssa1, %200 ], [ 0.000000e+00, %157 ]
  %203 = phi double [ %.lcssa, %200 ], [ 0.000000e+00, %157 ]
  %204 = phi double [ %.lcssa2, %200 ], [ 0.000000e+00, %157 ]
  %205 = tail call i32 @gettimeofday(ptr noundef nonnull @tnow, ptr noundef null) #4
  %206 = load i64, ptr @tnow, align 8, !tbaa !11
  %207 = sitofp i64 %206 to double
  %208 = load i64, ptr getelementptr inbounds (%struct.timeval, ptr @tnow, i64 0, i32 1), align 8, !tbaa !14
  %209 = sitofp i64 %208 to double
  %210 = tail call double @llvm.fmuladd.f64(double %209, double 0x3EB0C6F7A0B5ED8D, double %207)
  store double %210, ptr getelementptr inbounds ([3 x double], ptr @TimeArray, i64 0, i64 2), align 16, !tbaa !7
  %211 = fsub double %210, %177
  store double %211, ptr getelementptr inbounds ([3 x double], ptr @TimeArray, i64 0, i64 1), align 8, !tbaa !7
  %212 = load double, ptr getelementptr inbounds ([36 x double], ptr @T, i64 0, i64 1), align 8, !tbaa !7
  %213 = fmul double %212, %211
  store double %213, ptr getelementptr inbounds ([36 x double], ptr @T, i64 0, i64 6), align 16, !tbaa !7
  %214 = load double, ptr getelementptr inbounds ([36 x double], ptr @T, i64 0, i64 5), align 8, !tbaa !7
  %215 = fsub double %213, %214
  %216 = fdiv double %215, 7.000000e+00
  store double %216, ptr getelementptr inbounds ([36 x double], ptr @T, i64 0, i64 7), align 8, !tbaa !7
  %217 = load double, ptr @sa, align 8, !tbaa !7
  %218 = fmul double %204, %217
  %219 = load double, ptr @sc, align 8, !tbaa !7
  %220 = fdiv double %218, %219
  %221 = fptosi double %220 to i64
  %222 = load double, ptr @four, align 8, !tbaa !7
  %223 = fmul double %203, %222
  %224 = load double, ptr @five, align 8, !tbaa !7
  %225 = insertelement <2 x double> poison, double %223, i64 0
  %226 = insertelement <2 x double> %225, double %224, i64 1
  %227 = insertelement <2 x double> poison, double %224, i64 0
  %228 = insertelement <2 x double> %227, double %202, i64 1
  %229 = fdiv <2 x double> %226, %228
  %230 = extractelement <2 x double> %229, i64 0
  store double %230, ptr @sa, align 8, !tbaa !7
  %231 = shufflevector <2 x double> %229, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %232 = fadd <2 x double> %229, %231
  %233 = extractelement <2 x double> %232, i64 0
  store double %233, ptr @sb, align 8, !tbaa !7
  store double 3.125000e+01, ptr @sc, align 8, !tbaa !7
  %234 = fmul double %202, %202
  %235 = fmul double %202, %234
  %236 = fdiv double 3.125000e+01, %235
  %237 = fsub double %233, %236
  store double %237, ptr @piprg, align 8, !tbaa !7
  %238 = load double, ptr @piref, align 8, !tbaa !7
  %239 = fsub double %237, %238
  store double %239, ptr @pierr, align 8, !tbaa !7
  %240 = load double, ptr @one, align 8, !tbaa !7
  %241 = fdiv double %240, %216
  store double %241, ptr getelementptr inbounds ([36 x double], ptr @T, i64 0, i64 8), align 16, !tbaa !7
  %242 = fmul double %239, 1.000000e-30
  %243 = fmul double %215, 1.000000e-30
  %244 = fmul double %241, 1.000000e-30
  %245 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, double noundef %242, double noundef %243, double noundef %244) #5
  %246 = load double, ptr @piref, align 8, !tbaa !7
  %247 = load double, ptr @three, align 8, !tbaa !7
  %248 = sitofp i64 %221 to double
  %249 = fmul double %247, %248
  %250 = fdiv double %246, %249
  %251 = load double, ptr getelementptr inbounds ([3 x double], ptr @TimeArray, i64 0, i64 2), align 16, !tbaa !7
  %252 = tail call i32 @gettimeofday(ptr noundef nonnull @tnow, ptr noundef null) #4
  %253 = load i64, ptr @tnow, align 8, !tbaa !11
  %254 = sitofp i64 %253 to double
  %255 = load i64, ptr getelementptr inbounds (%struct.timeval, ptr @tnow, i64 0, i32 1), align 8, !tbaa !14
  %256 = sitofp i64 %255 to double
  %257 = tail call double @llvm.fmuladd.f64(double %256, double 0x3EB0C6F7A0B5ED8D, double %254)
  store double %257, ptr getelementptr inbounds ([3 x double], ptr @TimeArray, i64 0, i64 2), align 16, !tbaa !7
  %258 = fsub double %257, %251
  store double %258, ptr getelementptr inbounds ([3 x double], ptr @TimeArray, i64 0, i64 1), align 8, !tbaa !7
  %259 = icmp sgt i64 %221, 1
  br i1 %259, label %260, label %286

260:                                              ; preds = %201
  %261 = load double, ptr @one, align 8, !tbaa !7
  %262 = load double, ptr @A6, align 8, !tbaa !7
  %263 = load double, ptr @A5, align 8, !tbaa !7
  %264 = fneg double %263
  %265 = load double, ptr @A4, align 8, !tbaa !7
  %266 = load double, ptr @A3, align 8, !tbaa !7
  %267 = fneg double %266
  %268 = load double, ptr @A2, align 8, !tbaa !7
  %269 = load double, ptr @A1, align 8, !tbaa !7
  br label %270

270:                                              ; preds = %270, %260
  %271 = phi i64 [ 1, %260 ], [ %284, %270 ]
  %272 = phi double [ 0.000000e+00, %260 ], [ %283, %270 ]
  %273 = phi double [ 0.000000e+00, %260 ], [ %274, %270 ]
  %274 = fadd double %273, %261
  %275 = fmul double %250, %274
  %276 = fmul double %275, %275
  %277 = tail call double @llvm.fmuladd.f64(double %262, double %276, double %264)
  %278 = tail call double @llvm.fmuladd.f64(double %277, double %276, double %265)
  %279 = tail call double @llvm.fmuladd.f64(double %278, double %276, double %267)
  %280 = tail call double @llvm.fmuladd.f64(double %279, double %276, double %268)
  %281 = tail call double @llvm.fmuladd.f64(double %280, double %276, double %269)
  %282 = tail call double @llvm.fmuladd.f64(double %281, double %276, double %261)
  %283 = tail call double @llvm.fmuladd.f64(double %275, double %282, double %272)
  %284 = add nuw nsw i64 %271, 1
  %285 = icmp eq i64 %284, %221
  br i1 %285, label %286, label %270, !llvm.loop !20

286:                                              ; preds = %270, %201
  %287 = phi double [ 0.000000e+00, %201 ], [ %283, %270 ]
  %288 = tail call i32 @gettimeofday(ptr noundef nonnull @tnow, ptr noundef null) #4
  %289 = load i64, ptr @tnow, align 8, !tbaa !11
  %290 = sitofp i64 %289 to double
  %291 = load i64, ptr getelementptr inbounds (%struct.timeval, ptr @tnow, i64 0, i32 1), align 8, !tbaa !14
  %292 = sitofp i64 %291 to double
  %293 = tail call double @llvm.fmuladd.f64(double %292, double 0x3EB0C6F7A0B5ED8D, double %290)
  store double %293, ptr getelementptr inbounds ([3 x double], ptr @TimeArray, i64 0, i64 2), align 16, !tbaa !7
  %294 = fsub double %293, %257
  store double %294, ptr getelementptr inbounds ([3 x double], ptr @TimeArray, i64 0, i64 1), align 8, !tbaa !7
  %295 = load double, ptr getelementptr inbounds ([36 x double], ptr @T, i64 0, i64 1), align 8, !tbaa !7
  %296 = load double, ptr @nulltime, align 8, !tbaa !7
  %297 = fneg double %296
  %298 = tail call double @llvm.fmuladd.f64(double %295, double %294, double %297)
  store double %298, ptr getelementptr inbounds ([36 x double], ptr @T, i64 0, i64 9), align 8, !tbaa !7
  %299 = load double, ptr @piref, align 8, !tbaa !7
  %300 = load double, ptr @three, align 8, !tbaa !7
  %301 = fdiv double %299, %300
  %302 = fmul double %301, %301
  %303 = load double, ptr @A6, align 8, !tbaa !7
  %304 = load double, ptr @A5, align 8, !tbaa !7
  %305 = fneg double %304
  %306 = tail call double @llvm.fmuladd.f64(double %303, double %302, double %305)
  %307 = load double, ptr @A4, align 8, !tbaa !7
  %308 = tail call double @llvm.fmuladd.f64(double %306, double %302, double %307)
  %309 = load double, ptr @A3, align 8, !tbaa !7
  %310 = fneg double %309
  %311 = tail call double @llvm.fmuladd.f64(double %308, double %302, double %310)
  %312 = load double, ptr @A2, align 8, !tbaa !7
  %313 = tail call double @llvm.fmuladd.f64(double %311, double %302, double %312)
  %314 = load double, ptr @A1, align 8, !tbaa !7
  %315 = tail call double @llvm.fmuladd.f64(double %313, double %302, double %314)
  %316 = load double, ptr @one, align 8, !tbaa !7
  %317 = tail call double @llvm.fmuladd.f64(double %315, double %302, double %316)
  %318 = fmul double %301, %317
  %319 = fdiv double %298, 1.700000e+01
  store double %319, ptr getelementptr inbounds ([36 x double], ptr @T, i64 0, i64 10), align 16, !tbaa !7
  %320 = load double, ptr @two, align 8, !tbaa !7
  %321 = tail call double @llvm.fmuladd.f64(double %320, double %287, double %318)
  %322 = fmul double %250, %321
  %323 = fdiv double %322, %320
  store double %323, ptr @sa, align 8, !tbaa !7
  store double 5.000000e-01, ptr @sb, align 8, !tbaa !7
  %324 = fadd double %323, -5.000000e-01
  store double %324, ptr @sc, align 8, !tbaa !7
  %325 = fdiv double %316, %319
  store double %325, ptr getelementptr inbounds ([36 x double], ptr @T, i64 0, i64 11), align 8, !tbaa !7
  %326 = fmul double %324, 1.000000e-30
  %327 = fmul double %298, 1.000000e-30
  %328 = fmul double %325, 1.000000e-30
  %329 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, double noundef %326, double noundef %327, double noundef %328) #5
  %330 = load double, ptr @A3, align 8, !tbaa !7
  %331 = fneg double %330
  store double %331, ptr @A3, align 8, !tbaa !7
  %332 = load double, ptr @A5, align 8, !tbaa !7
  %333 = fneg double %332
  store double %333, ptr @A5, align 8, !tbaa !7
  %334 = load double, ptr @piref, align 8, !tbaa !7
  %335 = load double, ptr @three, align 8, !tbaa !7
  %336 = fmul double %335, %248
  %337 = fdiv double %334, %336
  %338 = load double, ptr getelementptr inbounds ([3 x double], ptr @TimeArray, i64 0, i64 2), align 16, !tbaa !7
  %339 = tail call i32 @gettimeofday(ptr noundef nonnull @tnow, ptr noundef null) #4
  %340 = load i64, ptr @tnow, align 8, !tbaa !11
  %341 = sitofp i64 %340 to double
  %342 = load i64, ptr getelementptr inbounds (%struct.timeval, ptr @tnow, i64 0, i32 1), align 8, !tbaa !14
  %343 = sitofp i64 %342 to double
  %344 = tail call double @llvm.fmuladd.f64(double %343, double 0x3EB0C6F7A0B5ED8D, double %341)
  store double %344, ptr getelementptr inbounds ([3 x double], ptr @TimeArray, i64 0, i64 2), align 16, !tbaa !7
  %345 = fsub double %344, %338
  store double %345, ptr getelementptr inbounds ([3 x double], ptr @TimeArray, i64 0, i64 1), align 8, !tbaa !7
  br i1 %259, label %346, label %369

346:                                              ; preds = %286
  %347 = load double, ptr @B6, align 8, !tbaa !7
  %348 = load double, ptr @B5, align 8, !tbaa !7
  %349 = load double, ptr @B4, align 8, !tbaa !7
  %350 = load double, ptr @B3, align 8, !tbaa !7
  %351 = load double, ptr @B2, align 8, !tbaa !7
  %352 = load double, ptr @B1, align 8, !tbaa !7
  %353 = load double, ptr @one, align 8, !tbaa !7
  br label %354

354:                                              ; preds = %354, %346
  %355 = phi i64 [ 1, %346 ], [ %367, %354 ]
  %356 = phi double [ 0.000000e+00, %346 ], [ %366, %354 ]
  %357 = sitofp i64 %355 to double
  %358 = fmul double %337, %357
  %359 = fmul double %358, %358
  %360 = tail call double @llvm.fmuladd.f64(double %347, double %359, double %348)
  %361 = tail call double @llvm.fmuladd.f64(double %359, double %360, double %349)
  %362 = tail call double @llvm.fmuladd.f64(double %359, double %361, double %350)
  %363 = tail call double @llvm.fmuladd.f64(double %359, double %362, double %351)
  %364 = tail call double @llvm.fmuladd.f64(double %359, double %363, double %352)
  %365 = tail call double @llvm.fmuladd.f64(double %359, double %364, double %356)
  %366 = fadd double %353, %365
  %367 = add nuw nsw i64 %355, 1
  %368 = icmp eq i64 %367, %221
  br i1 %368, label %369, label %354, !llvm.loop !21

369:                                              ; preds = %354, %286
  %370 = phi double [ 0.000000e+00, %286 ], [ %366, %354 ]
  %371 = tail call i32 @gettimeofday(ptr noundef nonnull @tnow, ptr noundef null) #4
  %372 = load i64, ptr @tnow, align 8, !tbaa !11
  %373 = sitofp i64 %372 to double
  %374 = load i64, ptr getelementptr inbounds (%struct.timeval, ptr @tnow, i64 0, i32 1), align 8, !tbaa !14
  %375 = sitofp i64 %374 to double
  %376 = tail call double @llvm.fmuladd.f64(double %375, double 0x3EB0C6F7A0B5ED8D, double %373)
  store double %376, ptr getelementptr inbounds ([3 x double], ptr @TimeArray, i64 0, i64 2), align 16, !tbaa !7
  %377 = fsub double %376, %344
  store double %377, ptr getelementptr inbounds ([3 x double], ptr @TimeArray, i64 0, i64 1), align 8, !tbaa !7
  %378 = load double, ptr getelementptr inbounds ([36 x double], ptr @T, i64 0, i64 1), align 8, !tbaa !7
  %379 = load double, ptr @nulltime, align 8, !tbaa !7
  %380 = fneg double %379
  %381 = tail call double @llvm.fmuladd.f64(double %378, double %377, double %380)
  store double %381, ptr getelementptr inbounds ([36 x double], ptr @T, i64 0, i64 12), align 16, !tbaa !7
  %382 = load double, ptr @piref, align 8, !tbaa !7
  %383 = load double, ptr @three, align 8, !tbaa !7
  %384 = fdiv double %382, %383
  %385 = fmul double %384, %384
  %386 = load double, ptr @B6, align 8, !tbaa !7
  %387 = load double, ptr @B5, align 8, !tbaa !7
  %388 = tail call double @llvm.fmuladd.f64(double %386, double %385, double %387)
  %389 = load double, ptr @B4, align 8, !tbaa !7
  %390 = tail call double @llvm.fmuladd.f64(double %385, double %388, double %389)
  %391 = load double, ptr @B3, align 8, !tbaa !7
  %392 = tail call double @llvm.fmuladd.f64(double %385, double %390, double %391)
  %393 = load double, ptr @B2, align 8, !tbaa !7
  %394 = tail call double @llvm.fmuladd.f64(double %385, double %392, double %393)
  %395 = load double, ptr @B1, align 8, !tbaa !7
  %396 = tail call double @llvm.fmuladd.f64(double %385, double %394, double %395)
  %397 = load double, ptr @one, align 8, !tbaa !7
  %398 = tail call double @llvm.fmuladd.f64(double %385, double %396, double %397)
  %399 = fdiv double %381, 1.500000e+01
  store double %399, ptr getelementptr inbounds ([36 x double], ptr @T, i64 0, i64 13), align 8, !tbaa !7
  %400 = fadd double %397, %398
  %401 = load double, ptr @two, align 8, !tbaa !7
  %402 = tail call double @llvm.fmuladd.f64(double %401, double %370, double %400)
  %403 = fmul double %337, %402
  %404 = fdiv double %403, %401
  store double %404, ptr @sa, align 8, !tbaa !7
  %405 = load double, ptr @A6, align 8, !tbaa !7
  %406 = load double, ptr @A5, align 8, !tbaa !7
  %407 = tail call double @llvm.fmuladd.f64(double %405, double %385, double %406)
  %408 = load double, ptr @A4, align 8, !tbaa !7
  %409 = tail call double @llvm.fmuladd.f64(double %407, double %385, double %408)
  %410 = load double, ptr @A3, align 8, !tbaa !7
  %411 = tail call double @llvm.fmuladd.f64(double %409, double %385, double %410)
  %412 = load double, ptr @A2, align 8, !tbaa !7
  %413 = tail call double @llvm.fmuladd.f64(double %411, double %385, double %412)
  %414 = load double, ptr @A1, align 8, !tbaa !7
  %415 = tail call double @llvm.fmuladd.f64(double %413, double %385, double %414)
  %416 = load double, ptr @A0, align 8, !tbaa !7
  %417 = tail call double @llvm.fmuladd.f64(double %415, double %385, double %416)
  %418 = fmul double %384, %417
  store double %418, ptr @sb, align 8, !tbaa !7
  %419 = fsub double %404, %418
  store double %419, ptr @sc, align 8, !tbaa !7
  %420 = fdiv double %397, %399
  store double %420, ptr getelementptr inbounds ([36 x double], ptr @T, i64 0, i64 14), align 16, !tbaa !7
  %421 = fmul double %419, 1.000000e-30
  %422 = fmul double %381, 1.000000e-30
  %423 = fmul double %420, 1.000000e-30
  %424 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, double noundef %421, double noundef %422, double noundef %423) #5
  %425 = load double, ptr @piref, align 8, !tbaa !7
  %426 = load double, ptr @three, align 8, !tbaa !7
  %427 = fmul double %426, %248
  %428 = fdiv double %425, %427
  %429 = load double, ptr getelementptr inbounds ([3 x double], ptr @TimeArray, i64 0, i64 2), align 16, !tbaa !7
  %430 = tail call i32 @gettimeofday(ptr noundef nonnull @tnow, ptr noundef null) #4
  %431 = load i64, ptr @tnow, align 8, !tbaa !11
  %432 = sitofp i64 %431 to double
  %433 = load i64, ptr getelementptr inbounds (%struct.timeval, ptr @tnow, i64 0, i32 1), align 8, !tbaa !14
  %434 = sitofp i64 %433 to double
  %435 = tail call double @llvm.fmuladd.f64(double %434, double 0x3EB0C6F7A0B5ED8D, double %432)
  store double %435, ptr getelementptr inbounds ([3 x double], ptr @TimeArray, i64 0, i64 2), align 16, !tbaa !7
  %436 = fsub double %435, %429
  store double %436, ptr getelementptr inbounds ([3 x double], ptr @TimeArray, i64 0, i64 1), align 8, !tbaa !7
  br i1 %259, label %437, label %474

437:                                              ; preds = %369
  %438 = load double, ptr @A6, align 8, !tbaa !7
  %439 = load double, ptr @A5, align 8, !tbaa !7
  %440 = load double, ptr @A4, align 8, !tbaa !7
  %441 = load double, ptr @A3, align 8, !tbaa !7
  %442 = load double, ptr @A2, align 8, !tbaa !7
  %443 = load double, ptr @A1, align 8, !tbaa !7
  %444 = load double, ptr @one, align 8, !tbaa !7
  %445 = load double, ptr @B6, align 8, !tbaa !7
  %446 = load double, ptr @B5, align 8, !tbaa !7
  %447 = load double, ptr @B4, align 8, !tbaa !7
  %448 = load double, ptr @B3, align 8, !tbaa !7
  %449 = load double, ptr @B2, align 8, !tbaa !7
  %450 = load double, ptr @B1, align 8, !tbaa !7
  br label %451

451:                                              ; preds = %451, %437
  %452 = phi i64 [ 1, %437 ], [ %472, %451 ]
  %453 = phi double [ 0.000000e+00, %437 ], [ %471, %451 ]
  %454 = sitofp i64 %452 to double
  %455 = fmul double %428, %454
  %456 = fmul double %455, %455
  %457 = tail call double @llvm.fmuladd.f64(double %438, double %456, double %439)
  %458 = tail call double @llvm.fmuladd.f64(double %457, double %456, double %440)
  %459 = tail call double @llvm.fmuladd.f64(double %458, double %456, double %441)
  %460 = tail call double @llvm.fmuladd.f64(double %459, double %456, double %442)
  %461 = tail call double @llvm.fmuladd.f64(double %460, double %456, double %443)
  %462 = tail call double @llvm.fmuladd.f64(double %461, double %456, double %444)
  %463 = fmul double %455, %462
  %464 = tail call double @llvm.fmuladd.f64(double %445, double %456, double %446)
  %465 = tail call double @llvm.fmuladd.f64(double %456, double %464, double %447)
  %466 = tail call double @llvm.fmuladd.f64(double %456, double %465, double %448)
  %467 = tail call double @llvm.fmuladd.f64(double %456, double %466, double %449)
  %468 = tail call double @llvm.fmuladd.f64(double %456, double %467, double %450)
  %469 = tail call double @llvm.fmuladd.f64(double %456, double %468, double %444)
  %470 = fdiv double %463, %469
  %471 = fadd double %453, %470
  %472 = add nuw nsw i64 %452, 1
  %473 = icmp eq i64 %472, %221
  br i1 %473, label %474, label %451, !llvm.loop !22

474:                                              ; preds = %451, %369
  %475 = phi double [ 0.000000e+00, %369 ], [ %471, %451 ]
  %476 = tail call i32 @gettimeofday(ptr noundef nonnull @tnow, ptr noundef null) #4
  %477 = load i64, ptr @tnow, align 8, !tbaa !11
  %478 = sitofp i64 %477 to double
  %479 = load i64, ptr getelementptr inbounds (%struct.timeval, ptr @tnow, i64 0, i32 1), align 8, !tbaa !14
  %480 = sitofp i64 %479 to double
  %481 = tail call double @llvm.fmuladd.f64(double %480, double 0x3EB0C6F7A0B5ED8D, double %478)
  store double %481, ptr getelementptr inbounds ([3 x double], ptr @TimeArray, i64 0, i64 2), align 16, !tbaa !7
  %482 = fsub double %481, %435
  store double %482, ptr getelementptr inbounds ([3 x double], ptr @TimeArray, i64 0, i64 1), align 8, !tbaa !7
  %483 = load double, ptr getelementptr inbounds ([36 x double], ptr @T, i64 0, i64 1), align 8, !tbaa !7
  %484 = load double, ptr @nulltime, align 8, !tbaa !7
  %485 = fneg double %484
  %486 = tail call double @llvm.fmuladd.f64(double %483, double %482, double %485)
  store double %486, ptr getelementptr inbounds ([36 x double], ptr @T, i64 0, i64 15), align 8, !tbaa !7
  %487 = load double, ptr @piref, align 8, !tbaa !7
  %488 = load double, ptr @three, align 8, !tbaa !7
  %489 = fdiv double %487, %488
  %490 = fmul double %489, %489
  %491 = load double, ptr @A6, align 8, !tbaa !7
  %492 = load double, ptr @A5, align 8, !tbaa !7
  %493 = tail call double @llvm.fmuladd.f64(double %491, double %490, double %492)
  %494 = load double, ptr @A4, align 8, !tbaa !7
  %495 = tail call double @llvm.fmuladd.f64(double %493, double %490, double %494)
  %496 = load double, ptr @A3, align 8, !tbaa !7
  %497 = tail call double @llvm.fmuladd.f64(double %495, double %490, double %496)
  %498 = load double, ptr @A2, align 8, !tbaa !7
  %499 = tail call double @llvm.fmuladd.f64(double %497, double %490, double %498)
  %500 = load double, ptr @A1, align 8, !tbaa !7
  %501 = tail call double @llvm.fmuladd.f64(double %499, double %490, double %500)
  %502 = load double, ptr @one, align 8, !tbaa !7
  %503 = tail call double @llvm.fmuladd.f64(double %501, double %490, double %502)
  %504 = fmul double %489, %503
  %505 = load double, ptr @B6, align 8, !tbaa !7
  %506 = load double, ptr @B5, align 8, !tbaa !7
  %507 = tail call double @llvm.fmuladd.f64(double %505, double %490, double %506)
  %508 = load double, ptr @B4, align 8, !tbaa !7
  %509 = tail call double @llvm.fmuladd.f64(double %490, double %507, double %508)
  %510 = load double, ptr @B3, align 8, !tbaa !7
  %511 = tail call double @llvm.fmuladd.f64(double %490, double %509, double %510)
  %512 = load double, ptr @B2, align 8, !tbaa !7
  %513 = tail call double @llvm.fmuladd.f64(double %490, double %511, double %512)
  %514 = load double, ptr @B1, align 8, !tbaa !7
  %515 = tail call double @llvm.fmuladd.f64(double %490, double %513, double %514)
  %516 = tail call double @llvm.fmuladd.f64(double %490, double %515, double %502)
  %517 = fdiv double %504, %516
  %518 = fdiv double %486, 2.900000e+01
  store double %518, ptr getelementptr inbounds ([36 x double], ptr @T, i64 0, i64 16), align 16, !tbaa !7
  %519 = load double, ptr @two, align 8, !tbaa !7
  %520 = tail call double @llvm.fmuladd.f64(double %519, double %475, double %517)
  %521 = fmul double %428, %520
  %522 = fdiv double %521, %519
  store double %522, ptr @sa, align 8, !tbaa !7
  store double 0x3FE62E42FEFA39EF, ptr @sb, align 8, !tbaa !7
  %523 = fadd double %522, 0xBFE62E42FEFA39EF
  store double %523, ptr @sc, align 8, !tbaa !7
  %524 = fdiv double %502, %518
  store double %524, ptr getelementptr inbounds ([36 x double], ptr @T, i64 0, i64 17), align 8, !tbaa !7
  %525 = fmul double %523, 1.000000e-30
  %526 = fmul double %486, 1.000000e-30
  %527 = fmul double %524, 1.000000e-30
  %528 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, double noundef %525, double noundef %526, double noundef %527) #5
  %529 = load double, ptr @piref, align 8, !tbaa !7
  %530 = load double, ptr @four, align 8, !tbaa !7
  %531 = fmul double %530, %248
  %532 = fdiv double %529, %531
  %533 = load double, ptr getelementptr inbounds ([3 x double], ptr @TimeArray, i64 0, i64 2), align 16, !tbaa !7
  %534 = tail call i32 @gettimeofday(ptr noundef nonnull @tnow, ptr noundef null) #4
  %535 = load i64, ptr @tnow, align 8, !tbaa !11
  %536 = sitofp i64 %535 to double
  %537 = load i64, ptr getelementptr inbounds (%struct.timeval, ptr @tnow, i64 0, i32 1), align 8, !tbaa !14
  %538 = sitofp i64 %537 to double
  %539 = tail call double @llvm.fmuladd.f64(double %538, double 0x3EB0C6F7A0B5ED8D, double %536)
  store double %539, ptr getelementptr inbounds ([3 x double], ptr @TimeArray, i64 0, i64 2), align 16, !tbaa !7
  %540 = fsub double %539, %533
  store double %540, ptr getelementptr inbounds ([3 x double], ptr @TimeArray, i64 0, i64 1), align 8, !tbaa !7
  br i1 %259, label %541, label %577

541:                                              ; preds = %474
  %542 = load double, ptr @A6, align 8, !tbaa !7
  %543 = load double, ptr @A5, align 8, !tbaa !7
  %544 = load double, ptr @A4, align 8, !tbaa !7
  %545 = load double, ptr @A3, align 8, !tbaa !7
  %546 = load double, ptr @A2, align 8, !tbaa !7
  %547 = load double, ptr @A1, align 8, !tbaa !7
  %548 = load double, ptr @one, align 8, !tbaa !7
  %549 = load double, ptr @B6, align 8, !tbaa !7
  %550 = load double, ptr @B5, align 8, !tbaa !7
  %551 = load double, ptr @B4, align 8, !tbaa !7
  %552 = load double, ptr @B3, align 8, !tbaa !7
  %553 = load double, ptr @B2, align 8, !tbaa !7
  %554 = load double, ptr @B1, align 8, !tbaa !7
  br label %555

555:                                              ; preds = %555, %541
  %556 = phi i64 [ 1, %541 ], [ %575, %555 ]
  %557 = phi double [ 0.000000e+00, %541 ], [ %574, %555 ]
  %558 = sitofp i64 %556 to double
  %559 = fmul double %532, %558
  %560 = fmul double %559, %559
  %561 = tail call double @llvm.fmuladd.f64(double %542, double %560, double %543)
  %562 = tail call double @llvm.fmuladd.f64(double %561, double %560, double %544)
  %563 = tail call double @llvm.fmuladd.f64(double %562, double %560, double %545)
  %564 = tail call double @llvm.fmuladd.f64(double %563, double %560, double %546)
  %565 = tail call double @llvm.fmuladd.f64(double %564, double %560, double %547)
  %566 = tail call double @llvm.fmuladd.f64(double %565, double %560, double %548)
  %567 = fmul double %559, %566
  %568 = tail call double @llvm.fmuladd.f64(double %549, double %560, double %550)
  %569 = tail call double @llvm.fmuladd.f64(double %560, double %568, double %551)
  %570 = tail call double @llvm.fmuladd.f64(double %560, double %569, double %552)
  %571 = tail call double @llvm.fmuladd.f64(double %560, double %570, double %553)
  %572 = tail call double @llvm.fmuladd.f64(double %560, double %571, double %554)
  %573 = tail call double @llvm.fmuladd.f64(double %560, double %572, double %548)
  %574 = tail call double @llvm.fmuladd.f64(double %567, double %573, double %557)
  %575 = add nuw nsw i64 %556, 1
  %576 = icmp eq i64 %575, %221
  br i1 %576, label %577, label %555, !llvm.loop !23

577:                                              ; preds = %555, %474
  %578 = phi double [ 0.000000e+00, %474 ], [ %574, %555 ]
  %579 = tail call i32 @gettimeofday(ptr noundef nonnull @tnow, ptr noundef null) #4
  %580 = load i64, ptr @tnow, align 8, !tbaa !11
  %581 = sitofp i64 %580 to double
  %582 = load i64, ptr getelementptr inbounds (%struct.timeval, ptr @tnow, i64 0, i32 1), align 8, !tbaa !14
  %583 = sitofp i64 %582 to double
  %584 = tail call double @llvm.fmuladd.f64(double %583, double 0x3EB0C6F7A0B5ED8D, double %581)
  store double %584, ptr getelementptr inbounds ([3 x double], ptr @TimeArray, i64 0, i64 2), align 16, !tbaa !7
  %585 = fsub double %584, %539
  store double %585, ptr getelementptr inbounds ([3 x double], ptr @TimeArray, i64 0, i64 1), align 8, !tbaa !7
  %586 = load double, ptr getelementptr inbounds ([36 x double], ptr @T, i64 0, i64 1), align 8, !tbaa !7
  %587 = load double, ptr @nulltime, align 8, !tbaa !7
  %588 = fneg double %587
  %589 = tail call double @llvm.fmuladd.f64(double %586, double %585, double %588)
  store double %589, ptr getelementptr inbounds ([36 x double], ptr @T, i64 0, i64 18), align 16, !tbaa !7
  %590 = load double, ptr @piref, align 8, !tbaa !7
  %591 = load double, ptr @four, align 8, !tbaa !7
  %592 = fdiv double %590, %591
  %593 = fmul double %592, %592
  %594 = load double, ptr @A6, align 8, !tbaa !7
  %595 = load double, ptr @A5, align 8, !tbaa !7
  %596 = tail call double @llvm.fmuladd.f64(double %594, double %593, double %595)
  %597 = load double, ptr @A4, align 8, !tbaa !7
  %598 = tail call double @llvm.fmuladd.f64(double %596, double %593, double %597)
  %599 = load double, ptr @A3, align 8, !tbaa !7
  %600 = tail call double @llvm.fmuladd.f64(double %598, double %593, double %599)
  %601 = load double, ptr @A2, align 8, !tbaa !7
  %602 = tail call double @llvm.fmuladd.f64(double %600, double %593, double %601)
  %603 = load double, ptr @A1, align 8, !tbaa !7
  %604 = tail call double @llvm.fmuladd.f64(double %602, double %593, double %603)
  %605 = load double, ptr @one, align 8, !tbaa !7
  %606 = tail call double @llvm.fmuladd.f64(double %604, double %593, double %605)
  %607 = fmul double %592, %606
  %608 = load double, ptr @B6, align 8, !tbaa !7
  %609 = load double, ptr @B5, align 8, !tbaa !7
  %610 = tail call double @llvm.fmuladd.f64(double %608, double %593, double %609)
  %611 = load double, ptr @B4, align 8, !tbaa !7
  %612 = tail call double @llvm.fmuladd.f64(double %593, double %610, double %611)
  %613 = load double, ptr @B3, align 8, !tbaa !7
  %614 = tail call double @llvm.fmuladd.f64(double %593, double %612, double %613)
  %615 = load double, ptr @B2, align 8, !tbaa !7
  %616 = tail call double @llvm.fmuladd.f64(double %593, double %614, double %615)
  %617 = load double, ptr @B1, align 8, !tbaa !7
  %618 = tail call double @llvm.fmuladd.f64(double %593, double %616, double %617)
  %619 = tail call double @llvm.fmuladd.f64(double %593, double %618, double %605)
  %620 = fmul double %607, %619
  %621 = fdiv double %589, 2.900000e+01
  store double %621, ptr getelementptr inbounds ([36 x double], ptr @T, i64 0, i64 19), align 8, !tbaa !7
  %622 = load double, ptr @two, align 8, !tbaa !7
  %623 = tail call double @llvm.fmuladd.f64(double %622, double %578, double %620)
  %624 = fmul double %532, %623
  %625 = fdiv double %624, %622
  store double %625, ptr @sa, align 8, !tbaa !7
  store double 2.500000e-01, ptr @sb, align 8, !tbaa !7
  %626 = fadd double %625, -2.500000e-01
  store double %626, ptr @sc, align 8, !tbaa !7
  %627 = fdiv double %605, %621
  store double %627, ptr getelementptr inbounds ([36 x double], ptr @T, i64 0, i64 20), align 16, !tbaa !7
  %628 = fmul double %626, 1.000000e-30
  %629 = fmul double %589, 1.000000e-30
  %630 = fmul double %627, 1.000000e-30
  %631 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, double noundef %628, double noundef %629, double noundef %630) #5
  %632 = load double, ptr @one, align 8, !tbaa !7
  store double 0x40599541F7F192A4, ptr @sa, align 8, !tbaa !7
  %633 = fdiv double 0x40599541F7F192A4, %248
  %634 = load double, ptr getelementptr inbounds ([3 x double], ptr @TimeArray, i64 0, i64 2), align 16, !tbaa !7
  %635 = tail call i32 @gettimeofday(ptr noundef nonnull @tnow, ptr noundef null) #4
  %636 = load i64, ptr @tnow, align 8, !tbaa !11
  %637 = sitofp i64 %636 to double
  %638 = load i64, ptr getelementptr inbounds (%struct.timeval, ptr @tnow, i64 0, i32 1), align 8, !tbaa !14
  %639 = sitofp i64 %638 to double
  %640 = tail call double @llvm.fmuladd.f64(double %639, double 0x3EB0C6F7A0B5ED8D, double %637)
  store double %640, ptr getelementptr inbounds ([3 x double], ptr @TimeArray, i64 0, i64 2), align 16, !tbaa !7
  %641 = fsub double %640, %634
  store double %641, ptr getelementptr inbounds ([3 x double], ptr @TimeArray, i64 0, i64 1), align 8, !tbaa !7
  br i1 %259, label %642, label %664

642:                                              ; preds = %642, %577
  %643 = phi i64 [ %662, %642 ], [ 1, %577 ]
  %644 = phi double [ %661, %642 ], [ 0.000000e+00, %577 ]
  %645 = sitofp i64 %643 to double
  %646 = fmul double %633, %645
  %647 = fmul double %646, %646
  %648 = fadd double %632, %646
  %649 = fdiv double %632, %648
  %650 = fsub double %644, %649
  %651 = fadd double %632, %647
  %652 = tail call double @llvm.fmuladd.f64(double %646, double %647, double %632)
  %653 = insertelement <2 x double> poison, double %646, i64 0
  %654 = insertelement <2 x double> %653, double %647, i64 1
  %655 = insertelement <2 x double> poison, double %651, i64 0
  %656 = insertelement <2 x double> %655, double %652, i64 1
  %657 = fdiv <2 x double> %654, %656
  %658 = extractelement <2 x double> %657, i64 0
  %659 = fsub double %650, %658
  %660 = extractelement <2 x double> %657, i64 1
  %661 = fsub double %659, %660
  %662 = add nuw nsw i64 %643, 1
  %663 = icmp eq i64 %662, %221
  br i1 %663, label %664, label %642, !llvm.loop !24

664:                                              ; preds = %642, %577
  %665 = phi double [ 0.000000e+00, %577 ], [ %661, %642 ]
  %666 = tail call i32 @gettimeofday(ptr noundef nonnull @tnow, ptr noundef null) #4
  %667 = load i64, ptr @tnow, align 8, !tbaa !11
  %668 = sitofp i64 %667 to double
  %669 = load i64, ptr getelementptr inbounds (%struct.timeval, ptr @tnow, i64 0, i32 1), align 8, !tbaa !14
  %670 = sitofp i64 %669 to double
  %671 = tail call double @llvm.fmuladd.f64(double %670, double 0x3EB0C6F7A0B5ED8D, double %668)
  store double %671, ptr getelementptr inbounds ([3 x double], ptr @TimeArray, i64 0, i64 2), align 16, !tbaa !7
  %672 = fsub double %671, %640
  store double %672, ptr getelementptr inbounds ([3 x double], ptr @TimeArray, i64 0, i64 1), align 8, !tbaa !7
  %673 = load double, ptr getelementptr inbounds ([36 x double], ptr @T, i64 0, i64 1), align 8, !tbaa !7
  %674 = load double, ptr @nulltime, align 8, !tbaa !7
  %675 = fneg double %674
  %676 = tail call double @llvm.fmuladd.f64(double %673, double %672, double %675)
  store double %676, ptr getelementptr inbounds ([36 x double], ptr @T, i64 0, i64 21), align 8, !tbaa !7
  %677 = fdiv double %676, 1.200000e+01
  store double %677, ptr getelementptr inbounds ([36 x double], ptr @T, i64 0, i64 22), align 16, !tbaa !7
  %678 = load double, ptr @sa, align 8, !tbaa !7
  %679 = fmul double %678, %678
  %680 = fneg double %632
  %681 = insertelement <2 x double> poison, double %632, i64 0
  %682 = shufflevector <2 x double> %681, <2 x double> poison, <2 x i32> zeroinitializer
  %683 = insertelement <2 x double> poison, double %678, i64 0
  %684 = insertelement <2 x double> %683, double %679, i64 1
  %685 = fadd <2 x double> %682, %684
  %686 = insertelement <2 x double> %681, double %678, i64 1
  %687 = fdiv <2 x double> %686, %685
  %688 = extractelement <2 x double> %687, i64 0
  %689 = fsub double %680, %688
  %690 = extractelement <2 x double> %687, i64 1
  %691 = fsub double %689, %690
  %692 = tail call double @llvm.fmuladd.f64(double %678, double %679, double %632)
  %693 = fdiv double %679, %692
  %694 = fsub double %691, %693
  %695 = fmul double %633, 1.800000e+01
  %696 = load double, ptr @two, align 8, !tbaa !7
  %697 = tail call double @llvm.fmuladd.f64(double %696, double %665, double %694)
  %698 = fmul double %695, %697
  store double %698, ptr @sa, align 8, !tbaa !7
  %699 = fptosi double %698 to i64
  %700 = mul nsw i64 %699, -2000
  %701 = sitofp i64 %700 to double
  %702 = load double, ptr @scale, align 8, !tbaa !7
  %703 = fdiv double %701, %702
  %704 = fptosi double %703 to i64
  %705 = fadd double %698, 5.002000e+02
  store double %705, ptr @sc, align 8, !tbaa !7
  %706 = load double, ptr @one, align 8, !tbaa !7
  %707 = fdiv double %706, %677
  store double %707, ptr getelementptr inbounds ([36 x double], ptr @T, i64 0, i64 23), align 8, !tbaa !7
  %708 = fmul double %705, 1.000000e-30
  %709 = fmul double %676, 1.000000e-30
  %710 = fmul double %707, 1.000000e-30
  %711 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, double noundef %708, double noundef %709, double noundef %710) #5
  %712 = load double, ptr @piref, align 8, !tbaa !7
  %713 = load double, ptr @three, align 8, !tbaa !7
  %714 = sitofp i64 %704 to double
  %715 = fmul double %713, %714
  %716 = fdiv double %712, %715
  %717 = load double, ptr getelementptr inbounds ([3 x double], ptr @TimeArray, i64 0, i64 2), align 16, !tbaa !7
  %718 = tail call i32 @gettimeofday(ptr noundef nonnull @tnow, ptr noundef null) #4
  %719 = load i64, ptr @tnow, align 8, !tbaa !11
  %720 = sitofp i64 %719 to double
  %721 = load i64, ptr getelementptr inbounds (%struct.timeval, ptr @tnow, i64 0, i32 1), align 8, !tbaa !14
  %722 = sitofp i64 %721 to double
  %723 = tail call double @llvm.fmuladd.f64(double %722, double 0x3EB0C6F7A0B5ED8D, double %720)
  store double %723, ptr getelementptr inbounds ([3 x double], ptr @TimeArray, i64 0, i64 2), align 16, !tbaa !7
  %724 = fsub double %723, %717
  store double %724, ptr getelementptr inbounds ([3 x double], ptr @TimeArray, i64 0, i64 1), align 8, !tbaa !7
  %725 = icmp sgt i64 %704, 1
  br i1 %725, label %726, label %763

726:                                              ; preds = %664
  %727 = load double, ptr @B6, align 8, !tbaa !7
  %728 = load double, ptr @B5, align 8, !tbaa !7
  %729 = load double, ptr @B4, align 8, !tbaa !7
  %730 = load double, ptr @B3, align 8, !tbaa !7
  %731 = load double, ptr @B2, align 8, !tbaa !7
  %732 = load double, ptr @B1, align 8, !tbaa !7
  %733 = load double, ptr @one, align 8, !tbaa !7
  %734 = load double, ptr @A6, align 8, !tbaa !7
  %735 = load double, ptr @A5, align 8, !tbaa !7
  %736 = load double, ptr @A4, align 8, !tbaa !7
  %737 = load double, ptr @A3, align 8, !tbaa !7
  %738 = load double, ptr @A2, align 8, !tbaa !7
  %739 = load double, ptr @A1, align 8, !tbaa !7
  br label %740

740:                                              ; preds = %740, %726
  %741 = phi i64 [ 1, %726 ], [ %761, %740 ]
  %742 = phi double [ 0.000000e+00, %726 ], [ %760, %740 ]
  %743 = sitofp i64 %741 to double
  %744 = fmul double %716, %743
  %745 = fmul double %744, %744
  %746 = tail call double @llvm.fmuladd.f64(double %727, double %745, double %728)
  %747 = tail call double @llvm.fmuladd.f64(double %745, double %746, double %729)
  %748 = tail call double @llvm.fmuladd.f64(double %745, double %747, double %730)
  %749 = tail call double @llvm.fmuladd.f64(double %745, double %748, double %731)
  %750 = tail call double @llvm.fmuladd.f64(double %745, double %749, double %732)
  %751 = tail call double @llvm.fmuladd.f64(double %745, double %750, double %733)
  %752 = fmul double %751, %751
  %753 = fmul double %744, %752
  %754 = tail call double @llvm.fmuladd.f64(double %734, double %745, double %735)
  %755 = tail call double @llvm.fmuladd.f64(double %754, double %745, double %736)
  %756 = tail call double @llvm.fmuladd.f64(double %755, double %745, double %737)
  %757 = tail call double @llvm.fmuladd.f64(double %756, double %745, double %738)
  %758 = tail call double @llvm.fmuladd.f64(double %757, double %745, double %739)
  %759 = tail call double @llvm.fmuladd.f64(double %758, double %745, double %733)
  %760 = tail call double @llvm.fmuladd.f64(double %753, double %759, double %742)
  %761 = add nuw nsw i64 %741, 1
  %762 = icmp eq i64 %761, %704
  br i1 %762, label %763, label %740, !llvm.loop !25

763:                                              ; preds = %740, %664
  %764 = phi double [ 0.000000e+00, %664 ], [ %760, %740 ]
  %765 = tail call i32 @gettimeofday(ptr noundef nonnull @tnow, ptr noundef null) #4
  %766 = load i64, ptr @tnow, align 8, !tbaa !11
  %767 = sitofp i64 %766 to double
  %768 = load i64, ptr getelementptr inbounds (%struct.timeval, ptr @tnow, i64 0, i32 1), align 8, !tbaa !14
  %769 = sitofp i64 %768 to double
  %770 = tail call double @llvm.fmuladd.f64(double %769, double 0x3EB0C6F7A0B5ED8D, double %767)
  store double %770, ptr getelementptr inbounds ([3 x double], ptr @TimeArray, i64 0, i64 2), align 16, !tbaa !7
  %771 = fsub double %770, %723
  store double %771, ptr getelementptr inbounds ([3 x double], ptr @TimeArray, i64 0, i64 1), align 8, !tbaa !7
  %772 = load double, ptr getelementptr inbounds ([36 x double], ptr @T, i64 0, i64 1), align 8, !tbaa !7
  %773 = load double, ptr @nulltime, align 8, !tbaa !7
  %774 = fneg double %773
  %775 = tail call double @llvm.fmuladd.f64(double %772, double %771, double %774)
  store double %775, ptr getelementptr inbounds ([36 x double], ptr @T, i64 0, i64 24), align 16, !tbaa !7
  %776 = load double, ptr @piref, align 8, !tbaa !7
  %777 = load double, ptr @three, align 8, !tbaa !7
  %778 = fdiv double %776, %777
  %779 = fmul double %778, %778
  %780 = load double, ptr @A6, align 8, !tbaa !7
  %781 = load double, ptr @A5, align 8, !tbaa !7
  %782 = tail call double @llvm.fmuladd.f64(double %780, double %779, double %781)
  %783 = load double, ptr @A4, align 8, !tbaa !7
  %784 = tail call double @llvm.fmuladd.f64(double %782, double %779, double %783)
  %785 = load double, ptr @A3, align 8, !tbaa !7
  %786 = tail call double @llvm.fmuladd.f64(double %784, double %779, double %785)
  %787 = load double, ptr @A2, align 8, !tbaa !7
  %788 = tail call double @llvm.fmuladd.f64(double %786, double %779, double %787)
  %789 = load double, ptr @A1, align 8, !tbaa !7
  %790 = tail call double @llvm.fmuladd.f64(double %788, double %779, double %789)
  %791 = load double, ptr @one, align 8, !tbaa !7
  %792 = tail call double @llvm.fmuladd.f64(double %790, double %779, double %791)
  %793 = fmul double %778, %792
  %794 = load double, ptr @B6, align 8, !tbaa !7
  %795 = load double, ptr @B5, align 8, !tbaa !7
  %796 = tail call double @llvm.fmuladd.f64(double %794, double %779, double %795)
  %797 = load double, ptr @B4, align 8, !tbaa !7
  %798 = tail call double @llvm.fmuladd.f64(double %779, double %796, double %797)
  %799 = load double, ptr @B3, align 8, !tbaa !7
  %800 = tail call double @llvm.fmuladd.f64(double %779, double %798, double %799)
  %801 = load double, ptr @B2, align 8, !tbaa !7
  %802 = tail call double @llvm.fmuladd.f64(double %779, double %800, double %801)
  %803 = load double, ptr @B1, align 8, !tbaa !7
  %804 = tail call double @llvm.fmuladd.f64(double %779, double %802, double %803)
  %805 = tail call double @llvm.fmuladd.f64(double %779, double %804, double %791)
  %806 = fmul double %793, %805
  %807 = fmul double %805, %806
  %808 = fdiv double %775, 3.000000e+01
  store double %808, ptr getelementptr inbounds ([36 x double], ptr @T, i64 0, i64 25), align 8, !tbaa !7
  %809 = load double, ptr @two, align 8, !tbaa !7
  %810 = tail call double @llvm.fmuladd.f64(double %809, double %764, double %807)
  %811 = fmul double %716, %810
  %812 = fdiv double %811, %809
  store double %812, ptr @sa, align 8, !tbaa !7
  store double 0x3FD2AAAAAAAAAAAB, ptr @sb, align 8, !tbaa !7
  %813 = fadd double %812, 0xBFD2AAAAAAAAAAAB
  store double %813, ptr @sc, align 8, !tbaa !7
  %814 = fdiv double %791, %808
  store double %814, ptr getelementptr inbounds ([36 x double], ptr @T, i64 0, i64 26), align 16, !tbaa !7
  %815 = fmul double %813, 1.000000e-30
  %816 = fmul double %775, 1.000000e-30
  %817 = fmul double %814, 1.000000e-30
  %818 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, double noundef %815, double noundef %816, double noundef %817) #5
  %819 = load double, ptr @five, align 8, !tbaa !7
  %820 = load double, ptr getelementptr inbounds ([36 x double], ptr @T, i64 0, i64 6), align 16, !tbaa !7
  %821 = load double, ptr getelementptr inbounds ([36 x double], ptr @T, i64 0, i64 5), align 8, !tbaa !7
  %822 = fsub double %820, %821
  %823 = load double, ptr getelementptr inbounds ([36 x double], ptr @T, i64 0, i64 9), align 8, !tbaa !7
  %824 = tail call double @llvm.fmuladd.f64(double %819, double %822, double %823)
  %825 = fdiv double %824, 5.200000e+01
  store double %825, ptr getelementptr inbounds ([36 x double], ptr @T, i64 0, i64 27), align 8, !tbaa !7
  %826 = load double, ptr @one, align 8, !tbaa !7
  %827 = load double, ptr getelementptr inbounds ([36 x double], ptr @T, i64 0, i64 2), align 16, !tbaa !7
  %828 = fadd double %823, %827
  %829 = load double, ptr getelementptr inbounds ([36 x double], ptr @T, i64 0, i64 12), align 16, !tbaa !7
  %830 = fadd double %828, %829
  %831 = load double, ptr getelementptr inbounds ([36 x double], ptr @T, i64 0, i64 15), align 8, !tbaa !7
  %832 = fadd double %830, %831
  %833 = load double, ptr getelementptr inbounds ([36 x double], ptr @T, i64 0, i64 18), align 16, !tbaa !7
  %834 = fadd double %832, %833
  %835 = load double, ptr @four, align 8, !tbaa !7
  %836 = load double, ptr getelementptr inbounds ([36 x double], ptr @T, i64 0, i64 21), align 8, !tbaa !7
  %837 = tail call double @llvm.fmuladd.f64(double %835, double %836, double %834)
  %838 = insertelement <2 x double> poison, double %826, i64 0
  %839 = insertelement <2 x double> %838, double %837, i64 1
  %840 = insertelement <2 x double> <double poison, double 1.520000e+02>, double %825, i64 0
  %841 = fdiv <2 x double> %839, %840
  store <2 x double> %841, ptr getelementptr inbounds ([36 x double], ptr @T, i64 0, i64 28), align 16, !tbaa !7
  %842 = fadd double %834, %836
  %843 = load double, ptr getelementptr inbounds ([36 x double], ptr @T, i64 0, i64 24), align 16, !tbaa !7
  %844 = fadd double %842, %843
  %845 = insertelement <2 x double> %838, double %844, i64 1
  %846 = shufflevector <2 x double> %841, <2 x double> <double poison, double 1.460000e+02>, <2 x i32> <i32 1, i32 3>
  %847 = fdiv <2 x double> %845, %846
  store <2 x double> %847, ptr getelementptr inbounds ([36 x double], ptr @T, i64 0, i64 30), align 16, !tbaa !7
  %848 = fadd double %823, %829
  %849 = fadd double %848, %833
  %850 = fadd double %849, %843
  %851 = insertelement <2 x double> %838, double %850, i64 1
  %852 = shufflevector <2 x double> %847, <2 x double> <double poison, double 9.100000e+01>, <2 x i32> <i32 1, i32 3>
  %853 = fdiv <2 x double> %851, %852
  store <2 x double> %853, ptr getelementptr inbounds ([36 x double], ptr @T, i64 0, i64 32), align 16, !tbaa !7
  %854 = extractelement <2 x double> %853, i64 1
  %855 = fdiv double %826, %854
  store double %855, ptr getelementptr inbounds ([36 x double], ptr @T, i64 0, i64 34), align 16, !tbaa !7
  %856 = tail call i32 @putchar(i32 10)
  %857 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, i64 noundef %704) #5
  %858 = load double, ptr @nulltime, align 8, !tbaa !7
  %859 = fmul double %858, 1.000000e-30
  %860 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, double noundef %859) #5
  %861 = load double, ptr getelementptr inbounds ([36 x double], ptr @T, i64 0, i64 28), align 16, !tbaa !7
  %862 = fmul double %861, 1.000000e-30
  %863 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14, double noundef %862) #5
  %864 = load double, ptr getelementptr inbounds ([36 x double], ptr @T, i64 0, i64 30), align 16, !tbaa !7
  %865 = fmul double %864, 1.000000e-30
  %866 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.15, double noundef %865) #5
  %867 = load double, ptr getelementptr inbounds ([36 x double], ptr @T, i64 0, i64 32), align 16, !tbaa !7
  %868 = fmul double %867, 1.000000e-30
  %869 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, double noundef %868) #5
  %870 = load double, ptr getelementptr inbounds ([36 x double], ptr @T, i64 0, i64 34), align 16, !tbaa !7
  %871 = fmul double %870, 1.000000e-30
  %872 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, double noundef %871) #5
  ret i32 0
}

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #1

; Function Attrs: nofree nounwind optsize
declare noundef i32 @gettimeofday(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #3

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #2

attributes #0 = { nofree nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind }
attributes #2 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind optsize }
attributes #5 = { optsize }

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
!8 = !{!"double", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!12, !13, i64 0}
!12 = !{!"timeval", !13, i64 0, !13, i64 8}
!13 = !{!"long", !9, i64 0}
!14 = !{!12, !13, i64 8}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.mustprogress"}
!17 = distinct !{!17, !16}
!18 = distinct !{!18, !16}
!19 = distinct !{!19, !16}
!20 = distinct !{!20, !16}
!21 = distinct !{!21, !16}
!22 = distinct !{!22, !16}
!23 = distinct !{!23, !16}
!24 = distinct !{!24, !16}
!25 = distinct !{!25, !16}
