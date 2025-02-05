; ModuleID = 'flops.e.bc.ll'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i64, i64 }

@A3 = internal unnamed_addr global double 0x3F2A01A03FB1CA71, align 8
@A5 = internal unnamed_addr global double 0x3E5AEB5A8CF8A426, align 8
@T = internal unnamed_addr global [36 x double] zeroinitializer, align 16
@scale = internal unnamed_addr global double 0.000000e+00, align 8
@sa = internal unnamed_addr global double 0.000000e+00, align 8
@nulltime = internal unnamed_addr global double 0.000000e+00, align 8
@sc = internal unnamed_addr global double 0.000000e+00, align 8
@.str.4 = private unnamed_addr constant [36 x i8] c"     1   %13.4lf  %10.4lf  %10.4lf\0A\00", align 1
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
  store double 1.000000e+00, ptr @scale, align 8, !tbaa !7
  %3 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.18)
  %4 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.19)
  %5 = tail call i32 @gettimeofday(ptr noundef nonnull @tnow, ptr noundef null) #4
  %6 = tail call i32 @gettimeofday(ptr noundef nonnull @tnow, ptr noundef null) #4
  store double 0.000000e+00, ptr @sa, align 8, !tbaa !7
  br label %7

7:                                                ; preds = %35, %0
  %8 = phi i64 [ %9, %35 ], [ 15625, %0 ]
  %9 = shl i64 %8, 1
  %10 = sitofp i64 %9 to double
  %11 = fdiv double 1.000000e+00, %10
  %12 = tail call i32 @gettimeofday(ptr noundef nonnull @tnow, ptr noundef null) #4
  %13 = load i64, ptr @tnow, align 8, !tbaa !11
  %14 = load i64, ptr getelementptr inbounds (%struct.timeval, ptr @tnow, i64 0, i32 1), align 8, !tbaa !14
  %15 = sitofp i64 %14 to double
  %16 = tail call i64 @llvm.smax.i64(i64 %9, i64 2)
  br label %17

17:                                               ; preds = %17, %7
  %18 = phi i64 [ 1, %7 ], [ %33, %17 ]
  %19 = phi double [ 0.000000e+00, %7 ], [ %32, %17 ]
  %20 = phi double [ 0.000000e+00, %7 ], [ %21, %17 ]
  %21 = fadd double %20, 1.000000e+00
  %22 = fmul double %11, %21
  %23 = tail call double @llvm.fmuladd.f64(double %22, double 4.110510e-07, double 4.800000e-04)
  %24 = insertelement <2 x double> poison, double %22, i64 0
  %25 = shufflevector <2 x double> %24, <2 x double> poison, <2 x i32> zeroinitializer
  %26 = insertelement <2 x double> <double 0x3EB4B05A0FF4A728, double poison>, double %23, i64 1
  %27 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %25, <2 x double> %26, <2 x double> <double 9.600000e-04, double 0x3FA47AE143138374>)
  %28 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %25, <2 x double> %27, <2 x double> <double 0x3FA47AE143138374, double 1.000000e+00>)
  %29 = extractelement <2 x double> %28, i64 0
  %30 = extractelement <2 x double> %28, i64 1
  %31 = fdiv double %29, %30
  %32 = fadd double %19, %31
  %33 = add nuw nsw i64 %18, 1
  %34 = icmp eq i64 %33, %16
  br i1 %34, label %35, label %17, !llvm.loop !15

35:                                               ; preds = %17
  %.lcssa6 = phi double [ %32, %17 ]
  %36 = sitofp i64 %13 to double
  %37 = tail call double @llvm.fmuladd.f64(double %15, double 0x3EB0C6F7A0B5ED8D, double %36)
  %38 = tail call i32 @gettimeofday(ptr noundef nonnull @tnow, ptr noundef null) #4
  %39 = load i64, ptr @tnow, align 8, !tbaa !11
  %40 = sitofp i64 %39 to double
  %41 = load i64, ptr getelementptr inbounds (%struct.timeval, ptr @tnow, i64 0, i32 1), align 8, !tbaa !14
  %42 = sitofp i64 %41 to double
  %43 = tail call double @llvm.fmuladd.f64(double %42, double 0x3EB0C6F7A0B5ED8D, double %40)
  %44 = fsub double %43, %37
  store double %44, ptr @sa, align 8, !tbaa !7
  %45 = icmp ne i64 %8, 256000000
  %46 = fcmp olt double %44, 1.000000e+00
  %47 = select i1 %45, i1 %46, i1 false
  br i1 %47, label %7, label %48, !llvm.loop !17

48:                                               ; preds = %35
  %.lcssa7 = phi double [ %11, %35 ]
  %.lcssa6.lcssa = phi double [ %.lcssa6, %35 ]
  store double 1.589500e-02, ptr @scale, align 8, !tbaa !7
  store double 1.589500e-02, ptr getelementptr inbounds ([36 x double], ptr @T, i64 0, i64 1), align 8, !tbaa !7
  %49 = tail call i32 @gettimeofday(ptr noundef nonnull @tnow, ptr noundef null) #4
  %50 = load i64, ptr @tnow, align 8, !tbaa !11
  %51 = sitofp i64 %50 to double
  %52 = load i64, ptr getelementptr inbounds (%struct.timeval, ptr @tnow, i64 0, i32 1), align 8, !tbaa !14
  %53 = sitofp i64 %52 to double
  %54 = tail call double @llvm.fmuladd.f64(double %53, double 0x3EB0C6F7A0B5ED8D, double %51)
  %55 = tail call i32 @gettimeofday(ptr noundef nonnull @tnow, ptr noundef null) #4
  %56 = load i64, ptr @tnow, align 8, !tbaa !11
  %57 = sitofp i64 %56 to double
  %58 = load i64, ptr getelementptr inbounds (%struct.timeval, ptr @tnow, i64 0, i32 1), align 8, !tbaa !14
  %59 = sitofp i64 %58 to double
  %60 = tail call double @llvm.fmuladd.f64(double %59, double 0x3EB0C6F7A0B5ED8D, double %57)
  %61 = fsub double %60, %54
  %62 = load double, ptr getelementptr inbounds ([36 x double], ptr @T, i64 0, i64 1), align 8, !tbaa !7
  %63 = fmul double %62, %61
  %64 = fcmp olt double %63, 0.000000e+00
  %65 = select i1 %64, double 0.000000e+00, double %63
  store double %65, ptr @nulltime, align 8, !tbaa !7
  %66 = load double, ptr @sa, align 8, !tbaa !7
  %67 = fneg double %65
  %68 = tail call double @llvm.fmuladd.f64(double %62, double %66, double %67)
  store double %68, ptr getelementptr inbounds ([36 x double], ptr @T, i64 0, i64 2), align 16, !tbaa !7
  %69 = fdiv double %68, 1.400000e+01
  store double %69, ptr getelementptr inbounds ([36 x double], ptr @T, i64 0, i64 3), align 8, !tbaa !7
  %70 = tail call double @llvm.fmuladd.f64(double %.lcssa6.lcssa, double 2.000000e+00, double 0x3FB4516F9E23A8CA)
  %71 = fmul double %.lcssa7, %70
  %72 = fmul double %71, 5.000000e-01
  store double %72, ptr @sa, align 8, !tbaa !7
  %73 = fdiv double 1.000000e+00, %72
  %74 = fptosi double %73 to i64
  %75 = mul nsw i64 %74, 40000
  %76 = sitofp i64 %75 to double
  %77 = load double, ptr @scale, align 8, !tbaa !7
  %78 = fdiv double %76, %77
  %79 = fptosi double %78 to i64
  %80 = fadd double %73, -2.520000e+01
  store double %80, ptr @sc, align 8, !tbaa !7
  %81 = fdiv double 1.000000e+00, %69
  store double %81, ptr getelementptr inbounds ([36 x double], ptr @T, i64 0, i64 4), align 16, !tbaa !7
  %82 = fmul double %80, 1.000000e-30
  %83 = fmul double %68, 1.000000e-30
  %84 = fmul double %81, 1.000000e-30
  %85 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, double noundef %82, double noundef %83, double noundef %84) #5
  store double -1.000000e+00, ptr @sa, align 8, !tbaa !7
  %86 = tail call i32 @gettimeofday(ptr noundef nonnull @tnow, ptr noundef null) #4
  %87 = load i64, ptr @tnow, align 8, !tbaa !11
  %88 = sitofp i64 %87 to double
  %89 = load i64, ptr getelementptr inbounds (%struct.timeval, ptr @tnow, i64 0, i32 1), align 8, !tbaa !14
  %90 = sitofp i64 %89 to double
  %91 = tail call double @llvm.fmuladd.f64(double %90, double 0x3EB0C6F7A0B5ED8D, double %88)
  %92 = icmp slt i64 %79, 1
  br i1 %92, label %104, label %93

93:                                               ; preds = %48
  %94 = load double, ptr @sa, align 8, !tbaa !7
  br label %95

95:                                               ; preds = %95, %93
  %96 = phi i64 [ %101, %95 ], [ 1, %93 ]
  %97 = phi double [ %99, %95 ], [ -5.000000e+00, %93 ]
  %98 = phi double [ %100, %95 ], [ %94, %93 ]
  %99 = fneg double %97
  %100 = fsub double %98, %97
  %101 = add nuw i64 %96, 1
  %102 = icmp eq i64 %96, %79
  br i1 %102, label %103, label %95, !llvm.loop !18

103:                                              ; preds = %95
  %.lcssa5 = phi double [ %99, %95 ]
  %.lcssa4 = phi double [ %100, %95 ]
  store double %.lcssa4, ptr @sa, align 8, !tbaa !7
  br label %104

104:                                              ; preds = %103, %48
  %105 = phi double [ %.lcssa5, %103 ], [ -5.000000e+00, %48 ]
  %106 = tail call i32 @gettimeofday(ptr noundef nonnull @tnow, ptr noundef null) #4
  %107 = load i64, ptr @tnow, align 8, !tbaa !11
  %108 = sitofp i64 %107 to double
  %109 = load i64, ptr getelementptr inbounds (%struct.timeval, ptr @tnow, i64 0, i32 1), align 8, !tbaa !14
  %110 = sitofp i64 %109 to double
  %111 = tail call double @llvm.fmuladd.f64(double %110, double 0x3EB0C6F7A0B5ED8D, double %108)
  %112 = fsub double %111, %91
  %113 = load double, ptr getelementptr inbounds ([36 x double], ptr @T, i64 0, i64 1), align 8, !tbaa !7
  %114 = fmul double %113, %112
  %115 = fcmp olt double %114, 0.000000e+00
  %116 = select i1 %115, double 0.000000e+00, double %114
  store double %116, ptr getelementptr inbounds ([36 x double], ptr @T, i64 0, i64 5), align 8, !tbaa !7
  %117 = sitofp i64 %79 to double
  store double %117, ptr @sc, align 8, !tbaa !7
  %118 = load double, ptr @sa, align 8, !tbaa !7
  %119 = tail call i32 @gettimeofday(ptr noundef nonnull @tnow, ptr noundef null) #4
  %120 = load i64, ptr @tnow, align 8, !tbaa !11
  %121 = sitofp i64 %120 to double
  %122 = load i64, ptr getelementptr inbounds (%struct.timeval, ptr @tnow, i64 0, i32 1), align 8, !tbaa !14
  %123 = sitofp i64 %122 to double
  %124 = tail call double @llvm.fmuladd.f64(double %123, double 0x3EB0C6F7A0B5ED8D, double %121)
  br i1 %92, label %147, label %125

125:                                              ; preds = %104
  %126 = load double, ptr @sa, align 8, !tbaa !7
  br label %127

127:                                              ; preds = %127, %125
  %128 = phi i64 [ 1, %125 ], [ %143, %127 ]
  %129 = phi double [ %105, %125 ], [ %135, %127 ]
  %130 = phi double [ %118, %125 ], [ %137, %127 ]
  %131 = phi double [ 0.000000e+00, %125 ], [ %139, %127 ]
  %132 = phi double [ 0.000000e+00, %125 ], [ %142, %127 ]
  %133 = phi double [ 0.000000e+00, %125 ], [ %140, %127 ]
  %134 = phi double [ %126, %125 ], [ %136, %127 ]
  %135 = fneg double %129
  %136 = fsub double %134, %129
  %137 = fadd double %130, 2.000000e+00
  %138 = fsub double %135, %137
  %139 = fadd double %131, %138
  %140 = tail call double @llvm.fmuladd.f64(double %129, double %137, double %133)
  %141 = fdiv double %129, %137
  %142 = fsub double %132, %141
  %143 = add nuw i64 %128, 1
  %144 = icmp eq i64 %128, %79
  br i1 %144, label %145, label %127, !llvm.loop !19

145:                                              ; preds = %127
  %.lcssa3 = phi double [ %136, %127 ]
  %.lcssa2 = phi double [ %139, %127 ]
  %.lcssa1 = phi double [ %140, %127 ]
  %.lcssa = phi double [ %142, %127 ]
  store double %.lcssa3, ptr @sa, align 8, !tbaa !7
  %146 = fmul double %.lcssa, 4.000000e+00
  br label %147

147:                                              ; preds = %145, %104
  %148 = phi double [ %.lcssa1, %145 ], [ 0.000000e+00, %104 ]
  %149 = phi double [ %146, %145 ], [ 0.000000e+00, %104 ]
  %150 = phi double [ %.lcssa2, %145 ], [ 0.000000e+00, %104 ]
  %151 = tail call i32 @gettimeofday(ptr noundef nonnull @tnow, ptr noundef null) #4
  %152 = load i64, ptr @tnow, align 8, !tbaa !11
  %153 = sitofp i64 %152 to double
  %154 = load i64, ptr getelementptr inbounds (%struct.timeval, ptr @tnow, i64 0, i32 1), align 8, !tbaa !14
  %155 = sitofp i64 %154 to double
  %156 = tail call double @llvm.fmuladd.f64(double %155, double 0x3EB0C6F7A0B5ED8D, double %153)
  %157 = fsub double %156, %124
  %158 = load double, ptr getelementptr inbounds ([36 x double], ptr @T, i64 0, i64 1), align 8, !tbaa !7
  %159 = fmul double %158, %157
  store double %159, ptr getelementptr inbounds ([36 x double], ptr @T, i64 0, i64 6), align 16, !tbaa !7
  %160 = load double, ptr getelementptr inbounds ([36 x double], ptr @T, i64 0, i64 5), align 8, !tbaa !7
  %161 = fsub double %159, %160
  %162 = fdiv double %161, 7.000000e+00
  store double %162, ptr getelementptr inbounds ([36 x double], ptr @T, i64 0, i64 7), align 8, !tbaa !7
  %163 = load double, ptr @sa, align 8, !tbaa !7
  %164 = fmul double %150, %163
  %165 = load double, ptr @sc, align 8, !tbaa !7
  %166 = fdiv double %164, %165
  %167 = fptosi double %166 to i64
  %168 = insertelement <2 x double> <double poison, double 5.000000e+00>, double %149, i64 0
  %169 = insertelement <2 x double> <double 5.000000e+00, double poison>, double %148, i64 1
  %170 = fdiv <2 x double> %168, %169
  %171 = extractelement <2 x double> %170, i64 0
  store double %171, ptr @sa, align 8, !tbaa !7
  %172 = shufflevector <2 x double> %170, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %173 = fadd <2 x double> %170, %172
  %174 = extractelement <2 x double> %173, i64 0
  store double 3.125000e+01, ptr @sc, align 8, !tbaa !7
  %175 = fmul double %148, %148
  %176 = fmul double %148, %175
  %177 = fdiv double 3.125000e+01, %176
  %178 = fsub double %174, %177
  %179 = fadd double %178, 0xC00921FB54442D18
  %180 = fdiv double 1.000000e+00, %162
  store double %180, ptr getelementptr inbounds ([36 x double], ptr @T, i64 0, i64 8), align 16, !tbaa !7
  %181 = fmul double %179, 1.000000e-30
  %182 = fmul double %161, 1.000000e-30
  %183 = fmul double %180, 1.000000e-30
  %184 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, double noundef %181, double noundef %182, double noundef %183) #5
  %185 = sitofp i64 %167 to double
  %186 = fmul double %185, 3.000000e+00
  %187 = fdiv double 0x400921FB54442D18, %186
  %188 = tail call i32 @gettimeofday(ptr noundef nonnull @tnow, ptr noundef null) #4
  %189 = load i64, ptr @tnow, align 8, !tbaa !11
  %190 = sitofp i64 %189 to double
  %191 = load i64, ptr getelementptr inbounds (%struct.timeval, ptr @tnow, i64 0, i32 1), align 8, !tbaa !14
  %192 = sitofp i64 %191 to double
  %193 = tail call double @llvm.fmuladd.f64(double %192, double 0x3EB0C6F7A0B5ED8D, double %190)
  %194 = icmp sgt i64 %167, 1
  br i1 %194, label %195, label %216

195:                                              ; preds = %147
  %196 = load double, ptr @A5, align 8, !tbaa !7
  %197 = fneg double %196
  %198 = load double, ptr @A3, align 8, !tbaa !7
  %199 = fneg double %198
  br label %200

200:                                              ; preds = %200, %195
  %201 = phi i64 [ 1, %195 ], [ %214, %200 ]
  %202 = phi double [ 0.000000e+00, %195 ], [ %213, %200 ]
  %203 = phi double [ 0.000000e+00, %195 ], [ %204, %200 ]
  %204 = fadd double %203, 1.000000e+00
  %205 = fmul double %187, %204
  %206 = fmul double %205, %205
  %207 = tail call double @llvm.fmuladd.f64(double %206, double 0x3DE68DF75229C1A6, double %197)
  %208 = tail call double @llvm.fmuladd.f64(double %207, double %206, double 0x3EC71DF284AA3566)
  %209 = tail call double @llvm.fmuladd.f64(double %208, double %206, double %199)
  %210 = tail call double @llvm.fmuladd.f64(double %209, double %206, double 0x3F811111113AE9A3)
  %211 = tail call double @llvm.fmuladd.f64(double %210, double %206, double 0xBFC5555555559705)
  %212 = tail call double @llvm.fmuladd.f64(double %211, double %206, double 1.000000e+00)
  %213 = tail call double @llvm.fmuladd.f64(double %205, double %212, double %202)
  %214 = add nuw nsw i64 %201, 1
  %215 = icmp eq i64 %214, %167
  br i1 %215, label %216, label %200, !llvm.loop !20

216:                                              ; preds = %200, %147
  %217 = phi double [ 0.000000e+00, %147 ], [ %213, %200 ]
  %218 = tail call i32 @gettimeofday(ptr noundef nonnull @tnow, ptr noundef null) #4
  %219 = load i64, ptr @tnow, align 8, !tbaa !11
  %220 = sitofp i64 %219 to double
  %221 = load i64, ptr getelementptr inbounds (%struct.timeval, ptr @tnow, i64 0, i32 1), align 8, !tbaa !14
  %222 = sitofp i64 %221 to double
  %223 = tail call double @llvm.fmuladd.f64(double %222, double 0x3EB0C6F7A0B5ED8D, double %220)
  %224 = fsub double %223, %193
  %225 = load double, ptr getelementptr inbounds ([36 x double], ptr @T, i64 0, i64 1), align 8, !tbaa !7
  %226 = load double, ptr @nulltime, align 8, !tbaa !7
  %227 = fneg double %226
  %228 = tail call double @llvm.fmuladd.f64(double %225, double %224, double %227)
  store double %228, ptr getelementptr inbounds ([36 x double], ptr @T, i64 0, i64 9), align 8, !tbaa !7
  %229 = load double, ptr @A5, align 8, !tbaa !7
  %230 = fsub double 0x3DE8BBDCC362E5E2, %229
  %231 = tail call double @llvm.fmuladd.f64(double %230, double 0x3FF18BC4418CAFE1, double 0x3EC71DF284AA3566)
  %232 = load double, ptr @A3, align 8, !tbaa !7
  %233 = fneg double %232
  %234 = tail call double @llvm.fmuladd.f64(double %231, double 0x3FF18BC4418CAFE1, double %233)
  %235 = tail call double @llvm.fmuladd.f64(double %234, double 0x3FF18BC4418CAFE1, double 0x3F811111113AE9A3)
  %236 = tail call double @llvm.fmuladd.f64(double %235, double 0x3FF18BC4418CAFE1, double 0xBFC5555555559705)
  %237 = tail call double @llvm.fmuladd.f64(double %236, double 0x3FF18BC4418CAFE1, double 1.000000e+00)
  %238 = fmul double %237, 0x3FF0C152382D7365
  %239 = fdiv double %228, 1.700000e+01
  store double %239, ptr getelementptr inbounds ([36 x double], ptr @T, i64 0, i64 10), align 16, !tbaa !7
  %240 = tail call double @llvm.fmuladd.f64(double %217, double 2.000000e+00, double %238)
  %241 = fmul double %187, %240
  %242 = fmul double %241, 5.000000e-01
  store double %242, ptr @sa, align 8, !tbaa !7
  %243 = fadd double %242, -5.000000e-01
  store double %243, ptr @sc, align 8, !tbaa !7
  %244 = fdiv double 1.000000e+00, %239
  store double %244, ptr getelementptr inbounds ([36 x double], ptr @T, i64 0, i64 11), align 8, !tbaa !7
  %245 = fmul double %243, 1.000000e-30
  %246 = fmul double %228, 1.000000e-30
  %247 = fmul double %244, 1.000000e-30
  %248 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, double noundef %245, double noundef %246, double noundef %247) #5
  %249 = load double, ptr @A3, align 8, !tbaa !7
  %250 = fneg double %249
  store double %250, ptr @A3, align 8, !tbaa !7
  %251 = load double, ptr @A5, align 8, !tbaa !7
  %252 = fneg double %251
  store double %252, ptr @A5, align 8, !tbaa !7
  %253 = tail call i32 @gettimeofday(ptr noundef nonnull @tnow, ptr noundef null) #4
  %254 = load i64, ptr @tnow, align 8, !tbaa !11
  %255 = sitofp i64 %254 to double
  %256 = load i64, ptr getelementptr inbounds (%struct.timeval, ptr @tnow, i64 0, i32 1), align 8, !tbaa !14
  %257 = sitofp i64 %256 to double
  %258 = tail call double @llvm.fmuladd.f64(double %257, double 0x3EB0C6F7A0B5ED8D, double %255)
  br i1 %194, label %259, label %274

259:                                              ; preds = %259, %216
  %260 = phi i64 [ %272, %259 ], [ 1, %216 ]
  %261 = phi double [ %271, %259 ], [ 0.000000e+00, %216 ]
  %262 = sitofp i64 %260 to double
  %263 = fmul double %187, %262
  %264 = fmul double %263, %263
  %265 = tail call double @llvm.fmuladd.f64(double %264, double 0x3E2157B275DF182A, double 0xBE927BB3D47DDB8E)
  %266 = tail call double @llvm.fmuladd.f64(double %264, double %265, double 0x3EFA019528242DB7)
  %267 = tail call double @llvm.fmuladd.f64(double %264, double %266, double 0xBF56C16BFFE76516)
  %268 = tail call double @llvm.fmuladd.f64(double %264, double %267, double 0x3FA5555555290224)
  %269 = tail call double @llvm.fmuladd.f64(double %264, double %268, double 0xBFDFFFFFFFFF8156)
  %270 = tail call double @llvm.fmuladd.f64(double %264, double %269, double %261)
  %271 = fadd double %270, 1.000000e+00
  %272 = add nuw nsw i64 %260, 1
  %273 = icmp eq i64 %272, %167
  br i1 %273, label %274, label %259, !llvm.loop !21

274:                                              ; preds = %259, %216
  %275 = phi double [ 0.000000e+00, %216 ], [ %271, %259 ]
  %276 = tail call i32 @gettimeofday(ptr noundef nonnull @tnow, ptr noundef null) #4
  %277 = load i64, ptr @tnow, align 8, !tbaa !11
  %278 = sitofp i64 %277 to double
  %279 = load i64, ptr getelementptr inbounds (%struct.timeval, ptr @tnow, i64 0, i32 1), align 8, !tbaa !14
  %280 = sitofp i64 %279 to double
  %281 = tail call double @llvm.fmuladd.f64(double %280, double 0x3EB0C6F7A0B5ED8D, double %278)
  %282 = fsub double %281, %258
  %283 = load double, ptr getelementptr inbounds ([36 x double], ptr @T, i64 0, i64 1), align 8, !tbaa !7
  %284 = load double, ptr @nulltime, align 8, !tbaa !7
  %285 = fneg double %284
  %286 = tail call double @llvm.fmuladd.f64(double %283, double %282, double %285)
  store double %286, ptr getelementptr inbounds ([36 x double], ptr @T, i64 0, i64 12), align 16, !tbaa !7
  %287 = fdiv double %286, 1.500000e+01
  store double %287, ptr getelementptr inbounds ([36 x double], ptr @T, i64 0, i64 13), align 8, !tbaa !7
  %288 = tail call double @llvm.fmuladd.f64(double %275, double 2.000000e+00, double 0x3FF80000000001F6)
  %289 = fmul double %187, %288
  %290 = fmul double %289, 5.000000e-01
  store double %290, ptr @sa, align 8, !tbaa !7
  %291 = load double, ptr @A5, align 8, !tbaa !7
  %292 = fadd double %291, 0x3DE8BBDCC362E5E2
  %293 = tail call double @llvm.fmuladd.f64(double %292, double 0x3FF18BC4418CAFE1, double 0x3EC71DF284AA3566)
  %294 = load double, ptr @A3, align 8, !tbaa !7
  %295 = tail call double @llvm.fmuladd.f64(double %293, double 0x3FF18BC4418CAFE1, double %294)
  %296 = tail call double @llvm.fmuladd.f64(double %295, double 0x3FF18BC4418CAFE1, double 0x3F811111113AE9A3)
  %297 = tail call double @llvm.fmuladd.f64(double %296, double 0x3FF18BC4418CAFE1, double 0xBFC5555555559705)
  %298 = tail call double @llvm.fmuladd.f64(double %297, double 0x3FF18BC4418CAFE1, double 1.000000e+00)
  %299 = fmul double %298, 0x3FF0C152382D7365
  %300 = fsub double %290, %299
  store double %300, ptr @sc, align 8, !tbaa !7
  %301 = fdiv double 1.000000e+00, %287
  store double %301, ptr getelementptr inbounds ([36 x double], ptr @T, i64 0, i64 14), align 16, !tbaa !7
  %302 = fmul double %300, 1.000000e-30
  %303 = fmul double %286, 1.000000e-30
  %304 = fmul double %301, 1.000000e-30
  %305 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, double noundef %302, double noundef %303, double noundef %304) #5
  %306 = tail call i32 @gettimeofday(ptr noundef nonnull @tnow, ptr noundef null) #4
  %307 = load i64, ptr @tnow, align 8, !tbaa !11
  %308 = sitofp i64 %307 to double
  %309 = load i64, ptr getelementptr inbounds (%struct.timeval, ptr @tnow, i64 0, i32 1), align 8, !tbaa !14
  %310 = sitofp i64 %309 to double
  %311 = tail call double @llvm.fmuladd.f64(double %310, double 0x3EB0C6F7A0B5ED8D, double %308)
  br i1 %194, label %312, label %338

312:                                              ; preds = %274
  %313 = load double, ptr @A5, align 8, !tbaa !7
  %314 = load double, ptr @A3, align 8, !tbaa !7
  br label %315

315:                                              ; preds = %315, %312
  %316 = phi i64 [ 1, %312 ], [ %336, %315 ]
  %317 = phi double [ 0.000000e+00, %312 ], [ %335, %315 ]
  %318 = sitofp i64 %316 to double
  %319 = fmul double %187, %318
  %320 = fmul double %319, %319
  %321 = tail call double @llvm.fmuladd.f64(double %320, double 0x3DE68DF75229C1A6, double %313)
  %322 = tail call double @llvm.fmuladd.f64(double %321, double %320, double 0x3EC71DF284AA3566)
  %323 = tail call double @llvm.fmuladd.f64(double %322, double %320, double %314)
  %324 = tail call double @llvm.fmuladd.f64(double %323, double %320, double 0x3F811111113AE9A3)
  %325 = tail call double @llvm.fmuladd.f64(double %324, double %320, double 0xBFC5555555559705)
  %326 = tail call double @llvm.fmuladd.f64(double %325, double %320, double 1.000000e+00)
  %327 = fmul double %319, %326
  %328 = tail call double @llvm.fmuladd.f64(double %320, double 0x3E2157B275DF182A, double 0xBE927BB3D47DDB8E)
  %329 = tail call double @llvm.fmuladd.f64(double %320, double %328, double 0x3EFA019528242DB7)
  %330 = tail call double @llvm.fmuladd.f64(double %320, double %329, double 0xBF56C16BFFE76516)
  %331 = tail call double @llvm.fmuladd.f64(double %320, double %330, double 0x3FA5555555290224)
  %332 = tail call double @llvm.fmuladd.f64(double %320, double %331, double 0xBFDFFFFFFFFF8156)
  %333 = tail call double @llvm.fmuladd.f64(double %320, double %332, double 1.000000e+00)
  %334 = fdiv double %327, %333
  %335 = fadd double %317, %334
  %336 = add nuw nsw i64 %316, 1
  %337 = icmp eq i64 %336, %167
  br i1 %337, label %338, label %315, !llvm.loop !22

338:                                              ; preds = %315, %274
  %339 = phi double [ 0.000000e+00, %274 ], [ %335, %315 ]
  %340 = tail call i32 @gettimeofday(ptr noundef nonnull @tnow, ptr noundef null) #4
  %341 = load i64, ptr @tnow, align 8, !tbaa !11
  %342 = sitofp i64 %341 to double
  %343 = load i64, ptr getelementptr inbounds (%struct.timeval, ptr @tnow, i64 0, i32 1), align 8, !tbaa !14
  %344 = sitofp i64 %343 to double
  %345 = tail call double @llvm.fmuladd.f64(double %344, double 0x3EB0C6F7A0B5ED8D, double %342)
  %346 = fsub double %345, %311
  %347 = load double, ptr getelementptr inbounds ([36 x double], ptr @T, i64 0, i64 1), align 8, !tbaa !7
  %348 = load double, ptr @nulltime, align 8, !tbaa !7
  %349 = fneg double %348
  %350 = tail call double @llvm.fmuladd.f64(double %347, double %346, double %349)
  store double %350, ptr getelementptr inbounds ([36 x double], ptr @T, i64 0, i64 15), align 8, !tbaa !7
  %351 = load double, ptr @A5, align 8, !tbaa !7
  %352 = fadd double %351, 0x3DE8BBDCC362E5E2
  %353 = tail call double @llvm.fmuladd.f64(double %352, double 0x3FF18BC4418CAFE1, double 0x3EC71DF284AA3566)
  %354 = load double, ptr @A3, align 8, !tbaa !7
  %355 = tail call double @llvm.fmuladd.f64(double %353, double 0x3FF18BC4418CAFE1, double %354)
  %356 = tail call double @llvm.fmuladd.f64(double %355, double 0x3FF18BC4418CAFE1, double 0x3F811111113AE9A3)
  %357 = tail call double @llvm.fmuladd.f64(double %356, double 0x3FF18BC4418CAFE1, double 0xBFC5555555559705)
  %358 = tail call double @llvm.fmuladd.f64(double %357, double 0x3FF18BC4418CAFE1, double 1.000000e+00)
  %359 = fmul double %358, 0x3FF0C152382D7365
  %360 = fdiv double %359, 0x3FE00000000003EB
  %361 = fdiv double %350, 2.900000e+01
  store double %361, ptr getelementptr inbounds ([36 x double], ptr @T, i64 0, i64 16), align 16, !tbaa !7
  %362 = tail call double @llvm.fmuladd.f64(double %339, double 2.000000e+00, double %360)
  %363 = fmul double %187, %362
  %364 = fmul double %363, 5.000000e-01
  store double %364, ptr @sa, align 8, !tbaa !7
  %365 = fadd double %364, 0xBFE62E42FEFA39EF
  store double %365, ptr @sc, align 8, !tbaa !7
  %366 = fdiv double 1.000000e+00, %361
  store double %366, ptr getelementptr inbounds ([36 x double], ptr @T, i64 0, i64 17), align 8, !tbaa !7
  %367 = fmul double %365, 1.000000e-30
  %368 = fmul double %350, 1.000000e-30
  %369 = fmul double %366, 1.000000e-30
  %370 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, double noundef %367, double noundef %368, double noundef %369) #5
  %371 = fmul double %185, 4.000000e+00
  %372 = fdiv double 0x400921FB54442D18, %371
  %373 = tail call i32 @gettimeofday(ptr noundef nonnull @tnow, ptr noundef null) #4
  %374 = load i64, ptr @tnow, align 8, !tbaa !11
  %375 = sitofp i64 %374 to double
  %376 = load i64, ptr getelementptr inbounds (%struct.timeval, ptr @tnow, i64 0, i32 1), align 8, !tbaa !14
  %377 = sitofp i64 %376 to double
  %378 = tail call double @llvm.fmuladd.f64(double %377, double 0x3EB0C6F7A0B5ED8D, double %375)
  br i1 %194, label %379, label %404

379:                                              ; preds = %338
  %380 = load double, ptr @A5, align 8, !tbaa !7
  %381 = load double, ptr @A3, align 8, !tbaa !7
  br label %382

382:                                              ; preds = %382, %379
  %383 = phi i64 [ 1, %379 ], [ %402, %382 ]
  %384 = phi double [ 0.000000e+00, %379 ], [ %401, %382 ]
  %385 = sitofp i64 %383 to double
  %386 = fmul double %372, %385
  %387 = fmul double %386, %386
  %388 = tail call double @llvm.fmuladd.f64(double %387, double 0x3DE68DF75229C1A6, double %380)
  %389 = tail call double @llvm.fmuladd.f64(double %388, double %387, double 0x3EC71DF284AA3566)
  %390 = tail call double @llvm.fmuladd.f64(double %389, double %387, double %381)
  %391 = tail call double @llvm.fmuladd.f64(double %390, double %387, double 0x3F811111113AE9A3)
  %392 = tail call double @llvm.fmuladd.f64(double %391, double %387, double 0xBFC5555555559705)
  %393 = tail call double @llvm.fmuladd.f64(double %392, double %387, double 1.000000e+00)
  %394 = fmul double %386, %393
  %395 = tail call double @llvm.fmuladd.f64(double %387, double 0x3E2157B275DF182A, double 0xBE927BB3D47DDB8E)
  %396 = tail call double @llvm.fmuladd.f64(double %387, double %395, double 0x3EFA019528242DB7)
  %397 = tail call double @llvm.fmuladd.f64(double %387, double %396, double 0xBF56C16BFFE76516)
  %398 = tail call double @llvm.fmuladd.f64(double %387, double %397, double 0x3FA5555555290224)
  %399 = tail call double @llvm.fmuladd.f64(double %387, double %398, double 0xBFDFFFFFFFFF8156)
  %400 = tail call double @llvm.fmuladd.f64(double %387, double %399, double 1.000000e+00)
  %401 = tail call double @llvm.fmuladd.f64(double %394, double %400, double %384)
  %402 = add nuw nsw i64 %383, 1
  %403 = icmp eq i64 %402, %167
  br i1 %403, label %404, label %382, !llvm.loop !23

404:                                              ; preds = %382, %338
  %405 = phi double [ 0.000000e+00, %338 ], [ %401, %382 ]
  %406 = tail call i32 @gettimeofday(ptr noundef nonnull @tnow, ptr noundef null) #4
  %407 = load i64, ptr @tnow, align 8, !tbaa !11
  %408 = sitofp i64 %407 to double
  %409 = load i64, ptr getelementptr inbounds (%struct.timeval, ptr @tnow, i64 0, i32 1), align 8, !tbaa !14
  %410 = sitofp i64 %409 to double
  %411 = tail call double @llvm.fmuladd.f64(double %410, double 0x3EB0C6F7A0B5ED8D, double %408)
  %412 = fsub double %411, %378
  %413 = load double, ptr getelementptr inbounds ([36 x double], ptr @T, i64 0, i64 1), align 8, !tbaa !7
  %414 = load double, ptr @nulltime, align 8, !tbaa !7
  %415 = fneg double %414
  %416 = tail call double @llvm.fmuladd.f64(double %413, double %412, double %415)
  store double %416, ptr getelementptr inbounds ([36 x double], ptr @T, i64 0, i64 18), align 16, !tbaa !7
  %417 = load double, ptr @A5, align 8, !tbaa !7
  %418 = fadd double %417, 0x3DDBD3585BCF429F
  %419 = tail call double @llvm.fmuladd.f64(double %418, double 0x3FE3BD3CC9BE45DE, double 0x3EC71DF284AA3566)
  %420 = load double, ptr @A3, align 8, !tbaa !7
  %421 = tail call double @llvm.fmuladd.f64(double %419, double 0x3FE3BD3CC9BE45DE, double %420)
  %422 = tail call double @llvm.fmuladd.f64(double %421, double 0x3FE3BD3CC9BE45DE, double 0x3F811111113AE9A3)
  %423 = tail call double @llvm.fmuladd.f64(double %422, double 0x3FE3BD3CC9BE45DE, double 0xBFC5555555559705)
  %424 = tail call double @llvm.fmuladd.f64(double %423, double 0x3FE3BD3CC9BE45DE, double 1.000000e+00)
  %425 = fmul double %424, 0x3FE921FB54442D18
  %426 = fmul double %425, 0x3FE6A09E667F3DDE
  %427 = fdiv double %416, 2.900000e+01
  store double %427, ptr getelementptr inbounds ([36 x double], ptr @T, i64 0, i64 19), align 8, !tbaa !7
  %428 = tail call double @llvm.fmuladd.f64(double %405, double 2.000000e+00, double %426)
  %429 = fmul double %372, %428
  %430 = fmul double %429, 5.000000e-01
  store double %430, ptr @sa, align 8, !tbaa !7
  %431 = fadd double %430, -2.500000e-01
  store double %431, ptr @sc, align 8, !tbaa !7
  %432 = fdiv double 1.000000e+00, %427
  store double %432, ptr getelementptr inbounds ([36 x double], ptr @T, i64 0, i64 20), align 16, !tbaa !7
  %433 = fmul double %431, 1.000000e-30
  %434 = fmul double %416, 1.000000e-30
  %435 = fmul double %432, 1.000000e-30
  %436 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, double noundef %433, double noundef %434, double noundef %435) #5
  store double 0x40599541F7F192A4, ptr @sa, align 8, !tbaa !7
  %437 = fdiv double 0x40599541F7F192A4, %185
  %438 = tail call i32 @gettimeofday(ptr noundef nonnull @tnow, ptr noundef null) #4
  %439 = load i64, ptr @tnow, align 8, !tbaa !11
  %440 = sitofp i64 %439 to double
  %441 = load i64, ptr getelementptr inbounds (%struct.timeval, ptr @tnow, i64 0, i32 1), align 8, !tbaa !14
  %442 = sitofp i64 %441 to double
  %443 = tail call double @llvm.fmuladd.f64(double %442, double 0x3EB0C6F7A0B5ED8D, double %440)
  br i1 %194, label %444, label %466

444:                                              ; preds = %444, %404
  %445 = phi i64 [ %464, %444 ], [ 1, %404 ]
  %446 = phi double [ %463, %444 ], [ 0.000000e+00, %404 ]
  %447 = sitofp i64 %445 to double
  %448 = fmul double %437, %447
  %449 = fmul double %448, %448
  %450 = fadd double %448, 1.000000e+00
  %451 = fdiv double 1.000000e+00, %450
  %452 = fsub double %446, %451
  %453 = fadd double %449, 1.000000e+00
  %454 = tail call double @llvm.fmuladd.f64(double %448, double %449, double 1.000000e+00)
  %455 = insertelement <2 x double> poison, double %448, i64 0
  %456 = insertelement <2 x double> %455, double %449, i64 1
  %457 = insertelement <2 x double> poison, double %453, i64 0
  %458 = insertelement <2 x double> %457, double %454, i64 1
  %459 = fdiv <2 x double> %456, %458
  %460 = extractelement <2 x double> %459, i64 0
  %461 = fsub double %452, %460
  %462 = extractelement <2 x double> %459, i64 1
  %463 = fsub double %461, %462
  %464 = add nuw nsw i64 %445, 1
  %465 = icmp eq i64 %464, %167
  br i1 %465, label %466, label %444, !llvm.loop !24

466:                                              ; preds = %444, %404
  %467 = phi double [ 0.000000e+00, %404 ], [ %463, %444 ]
  %468 = tail call i32 @gettimeofday(ptr noundef nonnull @tnow, ptr noundef null) #4
  %469 = load i64, ptr @tnow, align 8, !tbaa !11
  %470 = sitofp i64 %469 to double
  %471 = load i64, ptr getelementptr inbounds (%struct.timeval, ptr @tnow, i64 0, i32 1), align 8, !tbaa !14
  %472 = sitofp i64 %471 to double
  %473 = tail call double @llvm.fmuladd.f64(double %472, double 0x3EB0C6F7A0B5ED8D, double %470)
  %474 = fsub double %473, %443
  %475 = load double, ptr getelementptr inbounds ([36 x double], ptr @T, i64 0, i64 1), align 8, !tbaa !7
  %476 = load double, ptr @nulltime, align 8, !tbaa !7
  %477 = fneg double %476
  %478 = tail call double @llvm.fmuladd.f64(double %475, double %474, double %477)
  store double %478, ptr getelementptr inbounds ([36 x double], ptr @T, i64 0, i64 21), align 8, !tbaa !7
  %479 = fdiv double %478, 1.200000e+01
  store double %479, ptr getelementptr inbounds ([36 x double], ptr @T, i64 0, i64 22), align 16, !tbaa !7
  %480 = load double, ptr @sa, align 8, !tbaa !7
  %481 = fmul double %480, %480
  %482 = insertelement <2 x double> poison, double %480, i64 0
  %483 = insertelement <2 x double> %482, double %481, i64 1
  %484 = fadd <2 x double> %483, <double 1.000000e+00, double 1.000000e+00>
  %485 = insertelement <2 x double> <double 1.000000e+00, double poison>, double %480, i64 1
  %486 = fdiv <2 x double> %485, %484
  %487 = extractelement <2 x double> %486, i64 0
  %488 = fsub double -1.000000e+00, %487
  %489 = extractelement <2 x double> %486, i64 1
  %490 = fsub double %488, %489
  %491 = tail call double @llvm.fmuladd.f64(double %480, double %481, double 1.000000e+00)
  %492 = fdiv double %481, %491
  %493 = fsub double %490, %492
  %494 = fmul double %437, 1.800000e+01
  %495 = tail call double @llvm.fmuladd.f64(double %467, double 2.000000e+00, double %493)
  %496 = fmul double %494, %495
  store double %496, ptr @sa, align 8, !tbaa !7
  %497 = fptosi double %496 to i64
  %498 = mul nsw i64 %497, -2000
  %499 = sitofp i64 %498 to double
  %500 = load double, ptr @scale, align 8, !tbaa !7
  %501 = fdiv double %499, %500
  %502 = fptosi double %501 to i64
  %503 = fadd double %496, 5.002000e+02
  store double %503, ptr @sc, align 8, !tbaa !7
  %504 = fdiv double 1.000000e+00, %479
  store double %504, ptr getelementptr inbounds ([36 x double], ptr @T, i64 0, i64 23), align 8, !tbaa !7
  %505 = fmul double %503, 1.000000e-30
  %506 = fmul double %478, 1.000000e-30
  %507 = fmul double %504, 1.000000e-30
  %508 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, double noundef %505, double noundef %506, double noundef %507) #5
  %509 = sitofp i64 %502 to double
  %510 = fmul double %509, 3.000000e+00
  %511 = fdiv double 0x400921FB54442D18, %510
  %512 = tail call i32 @gettimeofday(ptr noundef nonnull @tnow, ptr noundef null) #4
  %513 = load i64, ptr @tnow, align 8, !tbaa !11
  %514 = load i64, ptr getelementptr inbounds (%struct.timeval, ptr @tnow, i64 0, i32 1), align 8, !tbaa !14
  %515 = icmp sgt i64 %502, 1
  br i1 %515, label %516, label %542

516:                                              ; preds = %466
  %517 = load double, ptr @A5, align 8, !tbaa !7
  %518 = load double, ptr @A3, align 8, !tbaa !7
  br label %519

519:                                              ; preds = %519, %516
  %520 = phi i64 [ 1, %516 ], [ %540, %519 ]
  %521 = phi double [ 0.000000e+00, %516 ], [ %539, %519 ]
  %522 = sitofp i64 %520 to double
  %523 = fmul double %511, %522
  %524 = fmul double %523, %523
  %525 = tail call double @llvm.fmuladd.f64(double %524, double 0x3E2157B275DF182A, double 0xBE927BB3D47DDB8E)
  %526 = tail call double @llvm.fmuladd.f64(double %524, double %525, double 0x3EFA019528242DB7)
  %527 = tail call double @llvm.fmuladd.f64(double %524, double %526, double 0xBF56C16BFFE76516)
  %528 = tail call double @llvm.fmuladd.f64(double %524, double %527, double 0x3FA5555555290224)
  %529 = tail call double @llvm.fmuladd.f64(double %524, double %528, double 0xBFDFFFFFFFFF8156)
  %530 = tail call double @llvm.fmuladd.f64(double %524, double %529, double 1.000000e+00)
  %531 = fmul double %530, %530
  %532 = fmul double %523, %531
  %533 = tail call double @llvm.fmuladd.f64(double %524, double 0x3DE68DF75229C1A6, double %517)
  %534 = tail call double @llvm.fmuladd.f64(double %533, double %524, double 0x3EC71DF284AA3566)
  %535 = tail call double @llvm.fmuladd.f64(double %534, double %524, double %518)
  %536 = tail call double @llvm.fmuladd.f64(double %535, double %524, double 0x3F811111113AE9A3)
  %537 = tail call double @llvm.fmuladd.f64(double %536, double %524, double 0xBFC5555555559705)
  %538 = tail call double @llvm.fmuladd.f64(double %537, double %524, double 1.000000e+00)
  %539 = tail call double @llvm.fmuladd.f64(double %532, double %538, double %521)
  %540 = add nuw nsw i64 %520, 1
  %541 = icmp eq i64 %540, %502
  br i1 %541, label %542, label %519, !llvm.loop !25

542:                                              ; preds = %519, %466
  %543 = phi double [ 0.000000e+00, %466 ], [ %539, %519 ]
  %544 = sitofp i64 %514 to double
  %545 = sitofp i64 %513 to double
  %546 = tail call double @llvm.fmuladd.f64(double %544, double 0x3EB0C6F7A0B5ED8D, double %545)
  %547 = tail call i32 @gettimeofday(ptr noundef nonnull @tnow, ptr noundef null) #4
  %548 = load i64, ptr @tnow, align 8, !tbaa !11
  %549 = sitofp i64 %548 to double
  %550 = load i64, ptr getelementptr inbounds (%struct.timeval, ptr @tnow, i64 0, i32 1), align 8, !tbaa !14
  %551 = sitofp i64 %550 to double
  %552 = tail call double @llvm.fmuladd.f64(double %551, double 0x3EB0C6F7A0B5ED8D, double %549)
  %553 = fsub double %552, %546
  %554 = load double, ptr getelementptr inbounds ([36 x double], ptr @T, i64 0, i64 1), align 8, !tbaa !7
  %555 = load double, ptr @nulltime, align 8, !tbaa !7
  %556 = fneg double %555
  %557 = tail call double @llvm.fmuladd.f64(double %554, double %553, double %556)
  store double %557, ptr getelementptr inbounds ([36 x double], ptr @T, i64 0, i64 24), align 16, !tbaa !7
  %558 = load double, ptr @A5, align 8, !tbaa !7
  %559 = fadd double %558, 0x3DE8BBDCC362E5E2
  %560 = tail call double @llvm.fmuladd.f64(double %559, double 0x3FF18BC4418CAFE1, double 0x3EC71DF284AA3566)
  %561 = load double, ptr @A3, align 8, !tbaa !7
  %562 = tail call double @llvm.fmuladd.f64(double %560, double 0x3FF18BC4418CAFE1, double %561)
  %563 = tail call double @llvm.fmuladd.f64(double %562, double 0x3FF18BC4418CAFE1, double 0x3F811111113AE9A3)
  %564 = tail call double @llvm.fmuladd.f64(double %563, double 0x3FF18BC4418CAFE1, double 0xBFC5555555559705)
  %565 = tail call double @llvm.fmuladd.f64(double %564, double 0x3FF18BC4418CAFE1, double 1.000000e+00)
  %566 = fmul double %565, 0x3FF0C152382D7365
  %567 = fmul double %566, 0x3FE00000000003EB
  %568 = fmul double %567, 0x3FE00000000003EB
  %569 = fdiv double %557, 3.000000e+01
  store double %569, ptr getelementptr inbounds ([36 x double], ptr @T, i64 0, i64 25), align 8, !tbaa !7
  %570 = tail call double @llvm.fmuladd.f64(double %543, double 2.000000e+00, double %568)
  %571 = fmul double %511, %570
  %572 = fmul double %571, 5.000000e-01
  store double %572, ptr @sa, align 8, !tbaa !7
  %573 = fadd double %572, 0xBFD2AAAAAAAAAAAB
  store double %573, ptr @sc, align 8, !tbaa !7
  %574 = fdiv double 1.000000e+00, %569
  store double %574, ptr getelementptr inbounds ([36 x double], ptr @T, i64 0, i64 26), align 16, !tbaa !7
  %575 = fmul double %573, 1.000000e-30
  %576 = fmul double %557, 1.000000e-30
  %577 = fmul double %574, 1.000000e-30
  %578 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, double noundef %575, double noundef %576, double noundef %577) #5
  %579 = load double, ptr getelementptr inbounds ([36 x double], ptr @T, i64 0, i64 6), align 16, !tbaa !7
  %580 = load double, ptr getelementptr inbounds ([36 x double], ptr @T, i64 0, i64 5), align 8, !tbaa !7
  %581 = fsub double %579, %580
  %582 = load double, ptr getelementptr inbounds ([36 x double], ptr @T, i64 0, i64 9), align 8, !tbaa !7
  %583 = tail call double @llvm.fmuladd.f64(double %581, double 5.000000e+00, double %582)
  %584 = fdiv double %583, 5.200000e+01
  store double %584, ptr getelementptr inbounds ([36 x double], ptr @T, i64 0, i64 27), align 8, !tbaa !7
  %585 = load double, ptr getelementptr inbounds ([36 x double], ptr @T, i64 0, i64 2), align 16, !tbaa !7
  %586 = fadd double %582, %585
  %587 = load double, ptr getelementptr inbounds ([36 x double], ptr @T, i64 0, i64 12), align 16, !tbaa !7
  %588 = fadd double %586, %587
  %589 = load double, ptr getelementptr inbounds ([36 x double], ptr @T, i64 0, i64 15), align 8, !tbaa !7
  %590 = fadd double %588, %589
  %591 = load double, ptr getelementptr inbounds ([36 x double], ptr @T, i64 0, i64 18), align 16, !tbaa !7
  %592 = fadd double %590, %591
  %593 = load double, ptr getelementptr inbounds ([36 x double], ptr @T, i64 0, i64 21), align 8, !tbaa !7
  %594 = tail call double @llvm.fmuladd.f64(double %593, double 4.000000e+00, double %592)
  %595 = insertelement <2 x double> <double 1.000000e+00, double poison>, double %594, i64 1
  %596 = insertelement <2 x double> <double poison, double 1.520000e+02>, double %584, i64 0
  %597 = fdiv <2 x double> %595, %596
  store <2 x double> %597, ptr getelementptr inbounds ([36 x double], ptr @T, i64 0, i64 28), align 16, !tbaa !7
  %598 = fadd double %592, %593
  %599 = load double, ptr getelementptr inbounds ([36 x double], ptr @T, i64 0, i64 24), align 16, !tbaa !7
  %600 = fadd double %598, %599
  %601 = insertelement <2 x double> <double 1.000000e+00, double poison>, double %600, i64 1
  %602 = shufflevector <2 x double> %597, <2 x double> <double poison, double 1.460000e+02>, <2 x i32> <i32 1, i32 3>
  %603 = fdiv <2 x double> %601, %602
  store <2 x double> %603, ptr getelementptr inbounds ([36 x double], ptr @T, i64 0, i64 30), align 16, !tbaa !7
  %604 = fadd double %582, %587
  %605 = fadd double %604, %591
  %606 = fadd double %605, %599
  %607 = insertelement <2 x double> <double 1.000000e+00, double poison>, double %606, i64 1
  %608 = shufflevector <2 x double> %603, <2 x double> <double poison, double 9.100000e+01>, <2 x i32> <i32 1, i32 3>
  %609 = fdiv <2 x double> %607, %608
  store <2 x double> %609, ptr getelementptr inbounds ([36 x double], ptr @T, i64 0, i64 32), align 16, !tbaa !7
  %610 = extractelement <2 x double> %609, i64 1
  %611 = fdiv double 1.000000e+00, %610
  store double %611, ptr getelementptr inbounds ([36 x double], ptr @T, i64 0, i64 34), align 16, !tbaa !7
  %612 = tail call i32 @putchar(i32 10)
  %613 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, i64 noundef %502) #5
  %614 = load double, ptr @nulltime, align 8, !tbaa !7
  %615 = fmul double %614, 1.000000e-30
  %616 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, double noundef %615) #5
  %617 = load double, ptr getelementptr inbounds ([36 x double], ptr @T, i64 0, i64 28), align 16, !tbaa !7
  %618 = fmul double %617, 1.000000e-30
  %619 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14, double noundef %618) #5
  %620 = load double, ptr getelementptr inbounds ([36 x double], ptr @T, i64 0, i64 30), align 16, !tbaa !7
  %621 = fmul double %620, 1.000000e-30
  %622 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.15, double noundef %621) #5
  %623 = load double, ptr getelementptr inbounds ([36 x double], ptr @T, i64 0, i64 32), align 16, !tbaa !7
  %624 = fmul double %623, 1.000000e-30
  %625 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, double noundef %624) #5
  %626 = load double, ptr getelementptr inbounds ([36 x double], ptr @T, i64 0, i64 34), align 16, !tbaa !7
  %627 = fmul double %626, 1.000000e-30
  %628 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, double noundef %627) #5
  ret i32 0
}

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #1

; Function Attrs: nofree nounwind optsize
declare noundef i32 @gettimeofday(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

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
