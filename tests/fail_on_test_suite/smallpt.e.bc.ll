; ModuleID = '/src/llvm-test-suite/build/SingleSource/Benchmarks/SmallPT/smallpt.e.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Sphere = type <{ double, %struct.Vec, %struct.Vec, %struct.Vec, i32, [4 x i8] }>
%struct.Vec = type { double, double, double }
%struct.Ray = type { %struct.Vec, %struct.Vec }

$_ZNK6Sphere9intersectERK3Ray = comdat any

@llvm.global_ctors = appending global [0 x { i32, ptr, ptr }] zeroinitializer
@spheres = internal global [9 x %struct.Sphere] [%struct.Sphere <{ double 1.000000e+05, %struct.Vec { double 1.000010e+05, double 4.080000e+01, double 8.160000e+01 }, %struct.Vec zeroinitializer, %struct.Vec { double 7.500000e-01, double 2.500000e-01, double 2.500000e-01 }, i32 0, [4 x i8] zeroinitializer }>, %struct.Sphere <{ double 1.000000e+05, %struct.Vec { double -9.990100e+04, double 4.080000e+01, double 8.160000e+01 }, %struct.Vec zeroinitializer, %struct.Vec { double 2.500000e-01, double 2.500000e-01, double 7.500000e-01 }, i32 0, [4 x i8] zeroinitializer }>, %struct.Sphere <{ double 1.000000e+05, %struct.Vec { double 5.000000e+01, double 4.080000e+01, double 1.000000e+05 }, %struct.Vec zeroinitializer, %struct.Vec { double 7.500000e-01, double 7.500000e-01, double 7.500000e-01 }, i32 0, [4 x i8] zeroinitializer }>, %struct.Sphere <{ double 1.000000e+05, %struct.Vec { double 5.000000e+01, double 4.080000e+01, double -9.983000e+04 }, %struct.Vec zeroinitializer, %struct.Vec zeroinitializer, i32 0, [4 x i8] zeroinitializer }>, %struct.Sphere <{ double 1.000000e+05, %struct.Vec { double 5.000000e+01, double 1.000000e+05, double 8.160000e+01 }, %struct.Vec zeroinitializer, %struct.Vec { double 7.500000e-01, double 7.500000e-01, double 7.500000e-01 }, i32 0, [4 x i8] zeroinitializer }>, %struct.Sphere <{ double 1.000000e+05, %struct.Vec { double 5.000000e+01, double 0xC0F864E666666666, double 8.160000e+01 }, %struct.Vec zeroinitializer, %struct.Vec { double 7.500000e-01, double 7.500000e-01, double 7.500000e-01 }, i32 0, [4 x i8] zeroinitializer }>, %struct.Sphere <{ double 1.650000e+01, %struct.Vec { double 2.700000e+01, double 1.650000e+01, double 4.700000e+01 }, %struct.Vec zeroinitializer, %struct.Vec { double 0x3FEFF7CED916872B, double 0x3FEFF7CED916872B, double 0x3FEFF7CED916872B }, i32 1, [4 x i8] zeroinitializer }>, %struct.Sphere <{ double 1.650000e+01, %struct.Vec { double 7.300000e+01, double 1.650000e+01, double 7.800000e+01 }, %struct.Vec zeroinitializer, %struct.Vec { double 0x3FEFF7CED916872B, double 0x3FEFF7CED916872B, double 0x3FEFF7CED916872B }, i32 2, [4 x i8] zeroinitializer }>, %struct.Sphere <{ double 6.000000e+02, %struct.Vec { double 5.000000e+01, double 6.813300e+02, double 8.160000e+01 }, %struct.Vec { double 1.200000e+01, double 1.200000e+01, double 1.200000e+01 }, %struct.Vec zeroinitializer, i32 0, [4 x i8] zeroinitializer }>], align 16
@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [20 x i8] c"Rendering (%d spp)\0A\00", align 1

; Function Attrs: optsize uwtable
define internal void @_Z8radianceRK3RayiPt(ptr noalias nocapture writeonly sret(%struct.Vec) align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = alloca %struct.Vec, align 16
  %6 = alloca %struct.Ray, align 16
  %7 = alloca %struct.Vec, align 16
  %8 = alloca %struct.Ray, align 16
  %9 = alloca %struct.Ray, align 16
  %10 = alloca %struct.Vec, align 16
  %11 = alloca %struct.Vec, align 16
  %12 = alloca %struct.Vec, align 16
  %13 = alloca %struct.Ray, align 16
  %14 = alloca %struct.Vec, align 16
  %15 = alloca %struct.Vec, align 16
  %16 = alloca %struct.Ray, align 16
  br label %17

17:                                               ; preds = %17, %4
  %18 = phi i32 [ 0, %4 ], [ %27, %17 ]
  %19 = phi double [ 1.000000e+20, %4 ], [ %28, %17 ]
  %20 = phi i64 [ 8, %4 ], [ %29, %17 ]
  %21 = getelementptr inbounds [9 x %struct.Sphere], ptr @spheres, i64 0, i64 %20
  %22 = tail call noundef double @_ZNK6Sphere9intersectERK3Ray(ptr noundef nonnull align 8 dereferenceable(84) %21, ptr noundef nonnull align 8 dereferenceable(48) %1) #12
  %23 = fcmp une double %22, 0.000000e+00
  %24 = fcmp olt double %22, %19
  %25 = select i1 %23, i1 %24, i1 false
  %26 = trunc i64 %20 to i32
  %27 = select i1 %25, i32 %26, i32 %18
  %28 = select i1 %25, double %22, double %19
  %29 = add nsw i64 %20, -1
  %30 = icmp eq i64 %20, 0
  br i1 %30, label %31, label %17

31:                                               ; preds = %17
  %.lcssa1 = phi i32 [ %27, %17 ]
  %.lcssa = phi double [ %28, %17 ]
  %32 = fcmp olt double %.lcssa, 1.000000e+20
  br i1 %32, label %34, label %33

33:                                               ; preds = %31
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %390

34:                                               ; preds = %31
  %35 = sext i32 %.lcssa1 to i64
  %36 = getelementptr inbounds %struct.Ray, ptr %1, i64 0, i32 1
  %37 = getelementptr inbounds %struct.Ray, ptr %1, i64 0, i32 1, i32 2
  %38 = load double, ptr %37, align 8, !tbaa !7
  %39 = fmul double %.lcssa, %38
  %40 = load <2 x double>, ptr %36, align 8, !tbaa !12
  %41 = insertelement <2 x double> poison, double %.lcssa, i64 0
  %42 = shufflevector <2 x double> %41, <2 x double> poison, <2 x i32> zeroinitializer
  %43 = fmul <2 x double> %42, %40
  %44 = load <2 x double>, ptr %1, align 8, !tbaa !12, !noalias !13
  %45 = fadd <2 x double> %43, %44
  %46 = getelementptr inbounds %struct.Vec, ptr %1, i64 0, i32 2
  %47 = load double, ptr %46, align 8, !tbaa !7, !noalias !13
  %48 = fadd double %39, %47
  %49 = getelementptr inbounds [9 x %struct.Sphere], ptr @spheres, i64 0, i64 %35, i32 1
  %50 = getelementptr inbounds [9 x %struct.Sphere], ptr @spheres, i64 0, i64 %35, i32 1, i32 2
  %51 = load double, ptr %50, align 8, !tbaa !7, !noalias !16
  %52 = fsub double %48, %51
  %53 = load <2 x double>, ptr %49, align 8, !tbaa !12, !noalias !16
  %54 = fsub <2 x double> %45, %53
  %55 = fmul <2 x double> %54, %54
  %56 = extractelement <2 x double> %55, i64 1
  %57 = extractelement <2 x double> %54, i64 0
  %58 = tail call double @llvm.fmuladd.f64(double %57, double %57, double %56)
  %59 = tail call double @llvm.fmuladd.f64(double %52, double %52, double %58)
  %60 = tail call double @llvm.sqrt.f64(double %59)
  %61 = fdiv double 1.000000e+00, %60
  %62 = insertelement <2 x double> poison, double %61, i64 0
  %63 = shufflevector <2 x double> %62, <2 x double> poison, <2 x i32> zeroinitializer
  %64 = fmul <2 x double> %54, %63
  %65 = fmul double %52, %61
  %66 = extractelement <2 x double> %64, i64 1
  %67 = fmul <2 x double> %40, %64
  %68 = extractelement <2 x double> %67, i64 1
  %69 = extractelement <2 x double> %40, i64 0
  %70 = extractelement <2 x double> %64, i64 0
  %71 = tail call double @llvm.fmuladd.f64(double %70, double %69, double %68)
  %72 = tail call double @llvm.fmuladd.f64(double %65, double %38, double %71)
  %73 = fcmp olt double %72, 0.000000e+00
  %74 = fneg <2 x double> %64
  %75 = fneg double %65
  %76 = insertelement <2 x i1> poison, i1 %73, i64 0
  %77 = shufflevector <2 x i1> %76, <2 x i1> poison, <2 x i32> zeroinitializer
  %78 = select <2 x i1> %77, <2 x double> %64, <2 x double> %74
  %79 = select i1 %73, double %65, double %75
  %80 = getelementptr inbounds [9 x %struct.Sphere], ptr @spheres, i64 0, i64 %35, i32 3
  %81 = load <2 x double>, ptr %80, align 8
  %82 = getelementptr inbounds i8, ptr %80, i64 16
  %83 = load double, ptr %82, align 8, !tbaa.struct !19
  %84 = extractelement <2 x double> %81, i64 0
  %85 = extractelement <2 x double> %81, i64 1
  %86 = fcmp ogt double %84, %85
  %87 = fcmp ogt double %84, %83
  %88 = select i1 %86, i1 %87, i1 false
  %89 = fcmp ogt double %85, %83
  %90 = select i1 %89, double %85, double %83
  %91 = select i1 %88, double %84, double %90
  %92 = add nsw i32 %2, 1
  %93 = icmp sgt i32 %2, 4
  br i1 %93, label %94, label %108

94:                                               ; preds = %34
  %95 = tail call double @erand48(ptr noundef %3) #13
  %96 = fcmp olt double %95, %91
  br i1 %96, label %99, label %97

97:                                               ; preds = %94
  %98 = getelementptr inbounds [9 x %struct.Sphere], ptr @spheres, i64 0, i64 %35, i32 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %98, i64 24, i1 false), !tbaa.struct !20
  br label %390

99:                                               ; preds = %94
  %100 = fdiv double 1.000000e+00, %91
  %101 = insertelement <2 x double> poison, double %100, i64 0
  %102 = shufflevector <2 x double> %101, <2 x double> poison, <2 x i32> zeroinitializer
  %103 = fmul <2 x double> %81, %102
  %104 = fmul double %83, %100
  %105 = icmp ugt i32 %2, 127
  br i1 %105, label %106, label %108

106:                                              ; preds = %99
  %107 = getelementptr inbounds [9 x %struct.Sphere], ptr @spheres, i64 0, i64 %35, i32 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %107, i64 24, i1 false), !tbaa.struct !20
  br label %390

108:                                              ; preds = %99, %34
  %109 = phi double [ %104, %99 ], [ %83, %34 ]
  %110 = phi <2 x double> [ %103, %99 ], [ %81, %34 ]
  %111 = getelementptr inbounds [9 x %struct.Sphere], ptr @spheres, i64 0, i64 %35, i32 4
  %112 = load i32, ptr %111, align 8, !tbaa !21
  switch i32 %112, label %241 [
    i32 0, label %113
    i32 1, label %210
  ]

113:                                              ; preds = %108
  %114 = tail call double @erand48(ptr noundef %3) #13
  %115 = fmul double %114, 0x401921FB54442D18
  %116 = tail call double @erand48(ptr noundef %3) #13
  %117 = tail call double @sqrt(double noundef %116) #13
  %118 = tail call double @llvm.fabs.f64(double %70)
  %119 = fcmp ogt double %118, 1.000000e-01
  %120 = select i1 %119, double 0.000000e+00, double 1.000000e+00
  %121 = select i1 %119, double 1.000000e+00, double 0.000000e+00
  %122 = fneg double %120
  %123 = fneg double %121
  %124 = extractelement <2 x double> %78, i64 0
  %125 = fmul double %124, %123
  %126 = extractelement <2 x double> %78, i64 1
  %127 = tail call double @llvm.fmuladd.f64(double %120, double %126, double %125)
  %128 = shufflevector <2 x double> %78, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %129 = insertelement <2 x double> %128, double %79, i64 0
  %130 = fneg <2 x double> %129
  %131 = fneg double %126
  %132 = tail call double @cos(double noundef %115) #13
  %133 = tail call double @sin(double noundef %115) #13
  %134 = fsub double 1.000000e+00, %116
  %135 = tail call double @sqrt(double noundef %134) #13
  %136 = fmul double %79, %135
  %137 = getelementptr inbounds [9 x %struct.Sphere], ptr @spheres, i64 0, i64 %35, i32 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #14
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %6) #14
  store <2 x double> %45, ptr %6, align 16
  %138 = getelementptr inbounds i8, ptr %6, i64 16
  store double %48, ptr %138, align 16, !tbaa.struct !19
  %139 = getelementptr inbounds %struct.Ray, ptr %6, i64 0, i32 1
  %140 = shufflevector <2 x double> %78, <2 x double> %129, <2 x i32> <i32 1, i32 2>
  %141 = insertelement <2 x double> <double -0.000000e+00, double poison>, double %122, i64 1
  %142 = fmul <2 x double> %140, %141
  %143 = insertelement <2 x double> %128, double %121, i64 0
  %144 = shufflevector <2 x double> %140, <2 x double> <double poison, double 0.000000e+00>, <2 x i32> <i32 1, i32 3>
  %145 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %143, <2 x double> %144, <2 x double> %142)
  %146 = fmul <2 x double> %145, %145
  %147 = extractelement <2 x double> %146, i64 1
  %148 = extractelement <2 x double> %145, i64 0
  %149 = tail call double @llvm.fmuladd.f64(double %148, double %148, double %147)
  %150 = tail call double @llvm.fmuladd.f64(double %127, double %127, double %149)
  %151 = tail call double @llvm.sqrt.f64(double %150)
  %152 = fdiv double 1.000000e+00, %151
  %153 = insertelement <2 x double> poison, double %152, i64 0
  %154 = shufflevector <2 x double> %153, <2 x double> poison, <2 x i32> zeroinitializer
  %155 = fmul <2 x double> %145, %154
  %156 = fmul double %127, %152
  %157 = shufflevector <2 x double> %155, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %158 = insertelement <2 x double> %157, double %156, i64 1
  %159 = fmul <2 x double> %158, %130
  %160 = shufflevector <2 x double> %158, <2 x double> %155, <2 x i32> <i32 1, i32 2>
  %161 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %140, <2 x double> %160, <2 x double> %159)
  %162 = extractelement <2 x double> %155, i64 0
  %163 = fmul double %162, %131
  %164 = extractelement <2 x double> %155, i64 1
  %165 = tail call double @llvm.fmuladd.f64(double %124, double %164, double %163)
  %166 = insertelement <2 x double> poison, double %132, i64 0
  %167 = shufflevector <2 x double> %166, <2 x double> poison, <2 x i32> zeroinitializer
  %168 = fmul <2 x double> %155, %167
  %169 = fmul double %156, %132
  %170 = insertelement <2 x double> poison, double %117, i64 0
  %171 = shufflevector <2 x double> %170, <2 x double> poison, <2 x i32> zeroinitializer
  %172 = fmul <2 x double> %171, %168
  %173 = fmul double %117, %169
  %174 = insertelement <2 x double> poison, double %133, i64 0
  %175 = shufflevector <2 x double> %174, <2 x double> poison, <2 x i32> zeroinitializer
  %176 = fmul <2 x double> %161, %175
  %177 = fmul double %165, %133
  %178 = fmul <2 x double> %171, %176
  %179 = fmul double %117, %177
  %180 = fadd <2 x double> %172, %178
  %181 = fadd double %173, %179
  %182 = insertelement <2 x double> poison, double %135, i64 0
  %183 = shufflevector <2 x double> %182, <2 x double> poison, <2 x i32> zeroinitializer
  %184 = fmul <2 x double> %78, %183
  %185 = fadd <2 x double> %184, %180
  %186 = fadd double %136, %181
  %187 = fmul <2 x double> %185, %185
  %188 = extractelement <2 x double> %187, i64 1
  %189 = extractelement <2 x double> %185, i64 0
  %190 = tail call double @llvm.fmuladd.f64(double %189, double %189, double %188)
  %191 = tail call double @llvm.fmuladd.f64(double %186, double %186, double %190)
  %192 = tail call double @llvm.sqrt.f64(double %191)
  %193 = fdiv double 1.000000e+00, %192
  %194 = insertelement <2 x double> poison, double %193, i64 0
  %195 = shufflevector <2 x double> %194, <2 x double> poison, <2 x i32> zeroinitializer
  %196 = fmul <2 x double> %185, %195
  %197 = fmul double %186, %193
  store <2 x double> %196, ptr %139, align 8
  %198 = getelementptr inbounds %struct.Ray, ptr %6, i64 0, i32 1, i32 2
  store double %197, ptr %198, align 8, !tbaa.struct !19
  call void @_Z8radianceRK3RayiPt(ptr nonnull sret(%struct.Vec) align 8 %5, ptr noundef nonnull align 8 dereferenceable(48) %6, i32 noundef %92, ptr noundef %3) #12
  %199 = getelementptr inbounds %struct.Vec, ptr %5, i64 0, i32 2
  %200 = load double, ptr %199, align 16, !tbaa !7, !noalias !24
  %201 = fmul double %109, %200
  call void @llvm.experimental.noalias.scope.decl(metadata !27)
  %202 = getelementptr inbounds [9 x %struct.Sphere], ptr @spheres, i64 0, i64 %35, i32 2, i32 2
  %203 = load double, ptr %202, align 8, !tbaa !7, !noalias !27
  %204 = fadd double %201, %203
  %205 = load <2 x double>, ptr %5, align 16, !tbaa !12, !noalias !24
  %206 = fmul <2 x double> %110, %205
  %207 = load <2 x double>, ptr %137, align 8, !tbaa !12, !noalias !27
  %208 = fadd <2 x double> %206, %207
  store <2 x double> %208, ptr %0, align 8, !tbaa !12, !alias.scope !27
  %209 = getelementptr inbounds %struct.Vec, ptr %0, i64 0, i32 2
  store double %204, ptr %209, align 8, !tbaa !7, !alias.scope !27
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #14
  br label %390

210:                                              ; preds = %108
  %211 = getelementptr inbounds [9 x %struct.Sphere], ptr @spheres, i64 0, i64 %35, i32 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #14
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %8) #14
  %212 = fmul double %65, 2.000000e+00
  %213 = load double, ptr %37, align 8, !tbaa !7
  store <2 x double> %45, ptr %8, align 16
  %214 = getelementptr inbounds i8, ptr %8, i64 16
  store double %48, ptr %214, align 16, !tbaa.struct !19
  %215 = getelementptr inbounds %struct.Ray, ptr %8, i64 0, i32 1
  %216 = fmul <2 x double> %64, <double 2.000000e+00, double 2.000000e+00>
  %217 = load <2 x double>, ptr %36, align 8, !tbaa !12
  %218 = fmul <2 x double> %64, %217
  %219 = extractelement <2 x double> %218, i64 1
  %220 = extractelement <2 x double> %217, i64 0
  %221 = tail call double @llvm.fmuladd.f64(double %70, double %220, double %219)
  %222 = tail call double @llvm.fmuladd.f64(double %65, double %213, double %221)
  %223 = insertelement <2 x double> poison, double %222, i64 0
  %224 = shufflevector <2 x double> %223, <2 x double> poison, <2 x i32> zeroinitializer
  %225 = fmul <2 x double> %216, %224
  %226 = fmul double %212, %222
  %227 = fsub <2 x double> %217, %225
  %228 = fsub double %213, %226
  store <2 x double> %227, ptr %215, align 8
  %229 = getelementptr inbounds %struct.Ray, ptr %8, i64 0, i32 1, i32 2
  store double %228, ptr %229, align 8, !tbaa.struct !19
  call void @_Z8radianceRK3RayiPt(ptr nonnull sret(%struct.Vec) align 8 %7, ptr noundef nonnull align 8 dereferenceable(48) %8, i32 noundef %92, ptr noundef %3) #12
  %230 = getelementptr inbounds %struct.Vec, ptr %7, i64 0, i32 2
  %231 = load double, ptr %230, align 16, !tbaa !7, !noalias !30
  %232 = fmul double %109, %231
  call void @llvm.experimental.noalias.scope.decl(metadata !33)
  %233 = getelementptr inbounds [9 x %struct.Sphere], ptr @spheres, i64 0, i64 %35, i32 2, i32 2
  %234 = load double, ptr %233, align 8, !tbaa !7, !noalias !33
  %235 = fadd double %232, %234
  %236 = load <2 x double>, ptr %7, align 16, !tbaa !12, !noalias !30
  %237 = fmul <2 x double> %110, %236
  %238 = load <2 x double>, ptr %211, align 8, !tbaa !12, !noalias !33
  %239 = fadd <2 x double> %237, %238
  store <2 x double> %239, ptr %0, align 8, !tbaa !12, !alias.scope !33
  %240 = getelementptr inbounds %struct.Vec, ptr %0, i64 0, i32 2
  store double %235, ptr %240, align 8, !tbaa !7, !alias.scope !33
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %8) #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #14
  br label %390

241:                                              ; preds = %108
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %9) #14
  %242 = fmul double %65, 2.000000e+00
  %243 = load <2 x double>, ptr %36, align 8, !tbaa !12
  %244 = extractelement <2 x double> %243, i64 1
  %245 = fmul double %66, %244
  %246 = extractelement <2 x double> %243, i64 0
  %247 = tail call double @llvm.fmuladd.f64(double %70, double %246, double %245)
  %248 = load double, ptr %37, align 8, !tbaa !7
  %249 = tail call double @llvm.fmuladd.f64(double %65, double %248, double %247)
  %250 = fmul double %242, %249
  %251 = fsub double %248, %250
  store <2 x double> %45, ptr %9, align 16
  %252 = getelementptr inbounds i8, ptr %9, i64 16
  store double %48, ptr %252, align 16, !tbaa.struct !19
  %253 = getelementptr inbounds %struct.Ray, ptr %9, i64 0, i32 1
  %254 = fmul <2 x double> %64, <double 2.000000e+00, double 2.000000e+00>
  %255 = insertelement <2 x double> poison, double %249, i64 0
  %256 = shufflevector <2 x double> %255, <2 x double> poison, <2 x i32> zeroinitializer
  %257 = fmul <2 x double> %254, %256
  %258 = fsub <2 x double> %243, %257
  store <2 x double> %258, ptr %253, align 8
  %259 = getelementptr inbounds %struct.Ray, ptr %9, i64 0, i32 1, i32 2
  store double %251, ptr %259, align 8, !tbaa.struct !19
  %260 = extractelement <2 x double> %78, i64 1
  %261 = fmul double %66, %260
  %262 = extractelement <2 x double> %78, i64 0
  %263 = tail call double @llvm.fmuladd.f64(double %70, double %262, double %261)
  %264 = tail call double @llvm.fmuladd.f64(double %65, double %79, double %263)
  %265 = fcmp ogt double %264, 0.000000e+00
  %266 = select i1 %265, double 0x3FE5555555555555, double 1.500000e+00
  %267 = fmul double %260, %244
  %268 = tail call double @llvm.fmuladd.f64(double %246, double %262, double %267)
  %269 = tail call double @llvm.fmuladd.f64(double %248, double %79, double %268)
  %270 = fneg double %269
  %271 = tail call double @llvm.fmuladd.f64(double %270, double %269, double 1.000000e+00)
  %272 = fneg double %266
  %273 = fmul double %266, %272
  %274 = tail call double @llvm.fmuladd.f64(double %273, double %271, double 1.000000e+00)
  %275 = fcmp olt double %274, 0.000000e+00
  br i1 %275, label %276, label %289

276:                                              ; preds = %241
  %277 = getelementptr inbounds [9 x %struct.Sphere], ptr @spheres, i64 0, i64 %35, i32 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #14
  call void @_Z8radianceRK3RayiPt(ptr nonnull sret(%struct.Vec) align 8 %10, ptr noundef nonnull align 8 dereferenceable(48) %9, i32 noundef %92, ptr noundef %3) #12
  %278 = getelementptr inbounds %struct.Vec, ptr %10, i64 0, i32 2
  %279 = load double, ptr %278, align 16, !tbaa !7, !noalias !36
  %280 = fmul double %109, %279
  call void @llvm.experimental.noalias.scope.decl(metadata !39)
  %281 = getelementptr inbounds [9 x %struct.Sphere], ptr @spheres, i64 0, i64 %35, i32 2, i32 2
  %282 = load double, ptr %281, align 8, !tbaa !7, !noalias !39
  %283 = fadd double %280, %282
  %284 = load <2 x double>, ptr %10, align 16, !tbaa !12, !noalias !36
  %285 = fmul <2 x double> %110, %284
  %286 = load <2 x double>, ptr %277, align 8, !tbaa !12, !noalias !39
  %287 = fadd <2 x double> %285, %286
  store <2 x double> %287, ptr %0, align 8, !tbaa !12, !alias.scope !39
  %288 = getelementptr inbounds %struct.Vec, ptr %0, i64 0, i32 2
  store double %283, ptr %288, align 8, !tbaa !7, !alias.scope !39
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #14
  br label %389

289:                                              ; preds = %241
  %290 = insertelement <2 x double> poison, double %266, i64 0
  %291 = shufflevector <2 x double> %290, <2 x double> poison, <2 x i32> zeroinitializer
  %292 = fmul <2 x double> %291, %243
  %293 = fmul double %266, %248
  %294 = tail call double @sqrt(double noundef %274) #13
  %295 = tail call double @llvm.fmuladd.f64(double %269, double %266, double %294)
  %296 = fneg double %295
  %297 = select i1 %265, double %295, double %296
  %298 = fmul double %65, %297
  %299 = insertelement <2 x double> poison, double %297, i64 0
  %300 = shufflevector <2 x double> %299, <2 x double> poison, <2 x i32> zeroinitializer
  %301 = fmul <2 x double> %64, %300
  %302 = fsub <2 x double> %292, %301
  %303 = fsub double %293, %298
  %304 = fmul <2 x double> %302, %302
  %305 = extractelement <2 x double> %304, i64 1
  %306 = extractelement <2 x double> %302, i64 0
  %307 = tail call double @llvm.fmuladd.f64(double %306, double %306, double %305)
  %308 = tail call double @llvm.fmuladd.f64(double %303, double %303, double %307)
  %309 = tail call double @llvm.sqrt.f64(double %308)
  %310 = fdiv double 1.000000e+00, %309
  %311 = insertelement <2 x double> poison, double %310, i64 0
  %312 = shufflevector <2 x double> %311, <2 x double> poison, <2 x i32> zeroinitializer
  %313 = fmul <2 x double> %302, %312
  %314 = fmul double %303, %310
  br i1 %265, label %321, label %315

315:                                              ; preds = %289
  %316 = fmul <2 x double> %64, %313
  %317 = extractelement <2 x double> %316, i64 1
  %318 = extractelement <2 x double> %313, i64 0
  %319 = tail call double @llvm.fmuladd.f64(double %318, double %70, double %317)
  %320 = tail call double @llvm.fmuladd.f64(double %314, double %65, double %319)
  br label %321

321:                                              ; preds = %315, %289
  %322 = phi double [ %320, %315 ], [ %270, %289 ]
  %323 = fsub double 1.000000e+00, %322
  %324 = fmul double %323, 0x3FEEB851EB851EB8
  %325 = fmul double %323, %324
  %326 = fmul double %323, %325
  %327 = fmul double %323, %326
  %328 = tail call double @llvm.fmuladd.f64(double %327, double %323, double 4.000000e-02)
  %329 = fsub double 1.000000e+00, %328
  %330 = tail call double @llvm.fmuladd.f64(double %328, double 5.000000e-01, double 2.500000e-01)
  %331 = fdiv double %328, %330
  %332 = fsub double 1.000000e+00, %330
  %333 = fdiv double %329, %332
  %334 = getelementptr inbounds [9 x %struct.Sphere], ptr @spheres, i64 0, i64 %35, i32 2
  %335 = icmp sgt i32 %2, 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #14
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %12) #14
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %13) #14
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %14) #14
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %15) #14
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %16) #14
  br i1 %335, label %336, label %358

336:                                              ; preds = %321
  %337 = tail call double @erand48(ptr noundef %3) #13
  %338 = fcmp olt double %337, %330
  br i1 %338, label %339, label %347

339:                                              ; preds = %336
  call void @_Z8radianceRK3RayiPt(ptr nonnull sret(%struct.Vec) align 8 %11, ptr noundef nonnull align 8 dereferenceable(48) %9, i32 noundef %92, ptr noundef %3) #12
  %340 = load <2 x double>, ptr %11, align 16, !tbaa !12, !noalias !42
  %341 = insertelement <2 x double> poison, double %331, i64 0
  %342 = shufflevector <2 x double> %341, <2 x double> poison, <2 x i32> zeroinitializer
  %343 = fmul <2 x double> %342, %340
  %344 = getelementptr inbounds %struct.Vec, ptr %11, i64 0, i32 2
  %345 = load double, ptr %344, align 16, !tbaa !7, !noalias !42
  %346 = fmul double %331, %345
  br label %378

347:                                              ; preds = %336
  store <2 x double> %45, ptr %13, align 16
  %348 = getelementptr inbounds i8, ptr %13, i64 16
  store double %48, ptr %348, align 16, !tbaa.struct !19
  %349 = getelementptr inbounds %struct.Ray, ptr %13, i64 0, i32 1
  store <2 x double> %313, ptr %349, align 8
  %350 = getelementptr inbounds %struct.Ray, ptr %13, i64 0, i32 1, i32 2
  store double %314, ptr %350, align 8, !tbaa.struct !19
  call void @_Z8radianceRK3RayiPt(ptr nonnull sret(%struct.Vec) align 8 %12, ptr noundef nonnull align 8 dereferenceable(48) %13, i32 noundef %92, ptr noundef %3) #12
  %351 = load <2 x double>, ptr %12, align 16, !tbaa !12, !noalias !45
  %352 = insertelement <2 x double> poison, double %333, i64 0
  %353 = shufflevector <2 x double> %352, <2 x double> poison, <2 x i32> zeroinitializer
  %354 = fmul <2 x double> %353, %351
  %355 = getelementptr inbounds %struct.Vec, ptr %12, i64 0, i32 2
  %356 = load double, ptr %355, align 16, !tbaa !7, !noalias !45
  %357 = fmul double %333, %356
  br label %378

358:                                              ; preds = %321
  call void @_Z8radianceRK3RayiPt(ptr nonnull sret(%struct.Vec) align 8 %14, ptr noundef nonnull align 8 dereferenceable(48) %9, i32 noundef %92, ptr noundef %3) #12
  %359 = getelementptr inbounds %struct.Vec, ptr %14, i64 0, i32 2
  %360 = load double, ptr %359, align 16, !tbaa !7, !noalias !48
  %361 = fmul double %328, %360
  store <2 x double> %45, ptr %16, align 16
  %362 = getelementptr inbounds i8, ptr %16, i64 16
  store double %48, ptr %362, align 16, !tbaa.struct !19
  %363 = getelementptr inbounds %struct.Ray, ptr %16, i64 0, i32 1
  store <2 x double> %313, ptr %363, align 8
  %364 = getelementptr inbounds %struct.Ray, ptr %16, i64 0, i32 1, i32 2
  store double %314, ptr %364, align 8, !tbaa.struct !19
  call void @_Z8radianceRK3RayiPt(ptr nonnull sret(%struct.Vec) align 8 %15, ptr noundef nonnull align 8 dereferenceable(48) %16, i32 noundef %92, ptr noundef %3) #12
  %365 = load <2 x double>, ptr %14, align 16, !tbaa !12, !noalias !48
  %366 = insertelement <2 x double> poison, double %328, i64 0
  %367 = shufflevector <2 x double> %366, <2 x double> poison, <2 x i32> zeroinitializer
  %368 = fmul <2 x double> %367, %365
  %369 = load <2 x double>, ptr %15, align 16, !tbaa !12, !noalias !51
  %370 = insertelement <2 x double> poison, double %329, i64 0
  %371 = shufflevector <2 x double> %370, <2 x double> poison, <2 x i32> zeroinitializer
  %372 = fmul <2 x double> %371, %369
  %373 = getelementptr inbounds %struct.Vec, ptr %15, i64 0, i32 2
  %374 = load double, ptr %373, align 16, !tbaa !7, !noalias !51
  %375 = fmul double %329, %374
  %376 = fadd <2 x double> %368, %372
  %377 = fadd double %361, %375
  br label %378

378:                                              ; preds = %358, %347, %339
  %379 = phi double [ %346, %339 ], [ %357, %347 ], [ %377, %358 ]
  %380 = phi <2 x double> [ %343, %339 ], [ %354, %347 ], [ %376, %358 ]
  %381 = fmul double %109, %379
  call void @llvm.experimental.noalias.scope.decl(metadata !54)
  %382 = getelementptr inbounds [9 x %struct.Sphere], ptr @spheres, i64 0, i64 %35, i32 2, i32 2
  %383 = load double, ptr %382, align 8, !tbaa !7, !noalias !54
  %384 = fadd double %381, %383
  %385 = fmul <2 x double> %110, %380
  %386 = load <2 x double>, ptr %334, align 8, !tbaa !12, !noalias !54
  %387 = fadd <2 x double> %385, %386
  store <2 x double> %387, ptr %0, align 8, !tbaa !12, !alias.scope !54
  %388 = getelementptr inbounds %struct.Vec, ptr %0, i64 0, i32 2
  store double %384, ptr %388, align 8, !tbaa !7, !alias.scope !54
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %16) #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %15) #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %14) #14
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %13) #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %12) #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #14
  br label %389

389:                                              ; preds = %378, %276
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %9) #14
  br label %390

390:                                              ; preds = %389, %210, %113, %106, %97, %33
  ret void
}

; Function Attrs: optsize uwtable
define internal noundef double @_ZNK6Sphere9intersectERK3Ray(ptr noundef nonnull align 8 dereferenceable(84) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #0 comdat align 2 {
  %3 = getelementptr inbounds %struct.Sphere, ptr %0, i64 0, i32 1
  %4 = load double, ptr %3, align 8, !tbaa !57, !noalias !58
  %5 = load double, ptr %1, align 8, !tbaa !57, !noalias !58
  %6 = fsub double %4, %5
  %7 = getelementptr inbounds %struct.Sphere, ptr %0, i64 0, i32 1, i32 1
  %8 = load double, ptr %7, align 8, !tbaa !61, !noalias !58
  %9 = getelementptr inbounds %struct.Vec, ptr %1, i64 0, i32 1
  %10 = load double, ptr %9, align 8, !tbaa !61, !noalias !58
  %11 = fsub double %8, %10
  %12 = getelementptr inbounds %struct.Sphere, ptr %0, i64 0, i32 1, i32 2
  %13 = load double, ptr %12, align 8, !tbaa !7, !noalias !58
  %14 = getelementptr inbounds %struct.Vec, ptr %1, i64 0, i32 2
  %15 = load double, ptr %14, align 8, !tbaa !7, !noalias !58
  %16 = fsub double %13, %15
  %17 = getelementptr inbounds %struct.Ray, ptr %1, i64 0, i32 1
  %18 = load double, ptr %17, align 8, !tbaa !57
  %19 = getelementptr inbounds %struct.Ray, ptr %1, i64 0, i32 1, i32 1
  %20 = load double, ptr %19, align 8, !tbaa !61
  %21 = fmul double %11, %20
  %22 = tail call double @llvm.fmuladd.f64(double %6, double %18, double %21)
  %23 = getelementptr inbounds %struct.Ray, ptr %1, i64 0, i32 1, i32 2
  %24 = load double, ptr %23, align 8, !tbaa !7
  %25 = tail call double @llvm.fmuladd.f64(double %16, double %24, double %22)
  %26 = fmul double %11, %11
  %27 = tail call double @llvm.fmuladd.f64(double %6, double %6, double %26)
  %28 = tail call double @llvm.fmuladd.f64(double %16, double %16, double %27)
  %29 = fneg double %28
  %30 = tail call double @llvm.fmuladd.f64(double %25, double %25, double %29)
  %31 = load double, ptr %0, align 8, !tbaa !62
  %32 = tail call double @llvm.fmuladd.f64(double %31, double %31, double %30)
  %33 = fcmp olt double %32, 0.000000e+00
  br i1 %33, label %42, label %34

34:                                               ; preds = %2
  %35 = tail call double @sqrt(double noundef %32) #13
  %36 = fsub double %25, %35
  %37 = fcmp ogt double %36, 1.000000e-04
  br i1 %37, label %42, label %38

38:                                               ; preds = %34
  %39 = fadd double %25, %35
  %40 = fcmp ogt double %39, 1.000000e-04
  %41 = select i1 %40, double %39, double 0.000000e+00
  br label %42

42:                                               ; preds = %38, %34, %2
  %43 = phi double [ 0.000000e+00, %2 ], [ %41, %38 ], [ %36, %34 ]
  ret double %43
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #2

; Function Attrs: nounwind optsize
declare double @erand48(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @sqrt(double noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @cos(double noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @sin(double noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: norecurse optsize uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nocapture noundef readonly %1) #8 personality ptr @__gxx_personality_v0 {
  %3 = alloca [3 x i16], align 2
  %4 = alloca %struct.Vec, align 16
  %5 = alloca %struct.Ray, align 16
  %6 = icmp eq i32 %0, 2
  br i1 %6, label %7, label %12

7:                                                ; preds = %2
  %8 = getelementptr inbounds ptr, ptr %1, i64 1
  %9 = load ptr, ptr %8, align 8, !tbaa !63
  %10 = tail call i32 @atoi(ptr nocapture noundef %9) #15
  %11 = sdiv i32 %10, 4
  br label %12

12:                                               ; preds = %7, %2
  %13 = phi i32 [ %11, %7 ], [ 1, %2 ]
  %14 = tail call noalias noundef nonnull dereferenceable(18874368) ptr @_Znam(i64 noundef 18874368) #16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(18874368) %14, i8 0, i64 18874368, i1 false), !tbaa !12
  %15 = load ptr, ptr @stderr, align 8, !tbaa !63
  %16 = shl nsw i32 %13, 2
  %17 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef nonnull @.str, i32 noundef %16) #17
  %18 = getelementptr inbounds i16, ptr %3, i64 1
  %19 = getelementptr inbounds i16, ptr %3, i64 2
  %20 = icmp sgt i32 %13, 0
  %21 = getelementptr inbounds i8, ptr %5, i64 16
  %22 = getelementptr inbounds %struct.Ray, ptr %5, i64 0, i32 1
  %23 = getelementptr inbounds %struct.Ray, ptr %5, i64 0, i32 1, i32 2
  %24 = sitofp i32 %13 to double
  %25 = fdiv double 1.000000e+00, %24
  %26 = getelementptr inbounds %struct.Vec, ptr %4, i64 0, i32 2
  %27 = insertelement <2 x double> poison, double %25, i64 0
  %28 = shufflevector <2 x double> %27, <2 x double> poison, <2 x i32> zeroinitializer
  br label %30

29:                                               ; preds = %38
  ret i32 0

30:                                               ; preds = %38, %12
  %31 = phi i64 [ 0, %12 ], [ %39, %38 ]
  %32 = trunc i64 %31 to i32
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %3) #14
  store i16 0, ptr %3, align 2, !tbaa !65
  store i16 0, ptr %18, align 2, !tbaa !65
  %33 = mul nuw nsw i32 %32, %32
  %34 = mul nuw nsw i32 %33, %32
  %35 = trunc i32 %34 to i16
  store i16 %35, ptr %19, align 2, !tbaa !65
  %36 = shl i64 %31, 10
  %37 = sitofp i32 %32 to double
  br label %41

38:                                               ; preds = %54
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %3) #14
  %39 = add nuw nsw i64 %31, 1
  %40 = icmp eq i64 %39, 768
  br i1 %40, label %29, label %30

41:                                               ; preds = %54, %30
  %42 = phi i64 [ 0, %30 ], [ %55, %54 ]
  %43 = phi i32 [ 0, %30 ], [ %56, %54 ]
  %44 = sub nsw i64 %42, %36
  %45 = add nsw i64 %44, 785408
  %46 = trunc i32 %43 to i16
  %47 = uitofp i16 %46 to double
  %48 = getelementptr inbounds %struct.Vec, ptr %14, i64 %45
  %49 = getelementptr inbounds %struct.Vec, ptr %14, i64 %45, i32 2
  %50 = getelementptr inbounds i8, ptr %48, i64 16
  br label %51

51:                                               ; preds = %61, %41
  %52 = phi i1 [ true, %41 ], [ false, %61 ]
  %53 = phi double [ 5.000000e-01, %41 ], [ 1.500000e+00, %61 ]
  br label %58

54:                                               ; preds = %61
  %55 = add nuw nsw i64 %42, 1
  %56 = add nuw nsw i32 %43, 1
  %57 = icmp eq i64 %55, 1024
  br i1 %57, label %38, label %41

58:                                               ; preds = %62, %51
  %59 = phi i1 [ true, %51 ], [ false, %62 ]
  %60 = phi double [ 5.000000e-01, %51 ], [ 1.500000e+00, %62 ]
  br i1 %20, label %79, label %62

61:                                               ; preds = %62
  br i1 %52, label %51, label %54

62:                                               ; preds = %105, %58
  %63 = phi double [ 0.000000e+00, %58 ], [ %149, %105 ]
  %64 = phi <2 x double> [ zeroinitializer, %58 ], [ %148, %105 ]
  %65 = fcmp olt <2 x double> %64, zeroinitializer
  %66 = fcmp ogt <2 x double> %64, <double 1.000000e+00, double 1.000000e+00>
  %67 = fmul <2 x double> %64, <double 2.500000e-01, double 2.500000e-01>
  %68 = fcmp olt double %63, 0.000000e+00
  %69 = fcmp ogt double %63, 1.000000e+00
  %70 = fmul double %63, 2.500000e-01
  %71 = select i1 %69, double 2.500000e-01, double %70
  %72 = select i1 %68, double 0.000000e+00, double %71
  %73 = load double, ptr %49, align 8, !tbaa !7, !noalias !67
  %74 = fadd double %72, %73
  %75 = select <2 x i1> %66, <2 x double> <double 2.500000e-01, double 2.500000e-01>, <2 x double> %67
  %76 = select <2 x i1> %65, <2 x double> zeroinitializer, <2 x double> %75
  %77 = load <2 x double>, ptr %48, align 8, !tbaa !12, !noalias !67
  %78 = fadd <2 x double> %76, %77
  store <2 x double> %78, ptr %48, align 8
  store double %74, ptr %50, align 8, !tbaa.struct !19
  br i1 %59, label %58, label %61

79:                                               ; preds = %105, %58
  %80 = phi i32 [ %150, %105 ], [ 0, %58 ]
  %81 = phi double [ %149, %105 ], [ 0.000000e+00, %58 ]
  %82 = phi <2 x double> [ %148, %105 ], [ zeroinitializer, %58 ]
  %83 = call double @erand48(ptr noundef nonnull %3) #13
  %84 = fmul double %83, 2.000000e+00
  %85 = fcmp olt double %84, 1.000000e+00
  br i1 %85, label %86, label %89

86:                                               ; preds = %79
  %87 = call double @sqrt(double noundef %84) #13
  %88 = fadd double %87, -1.000000e+00
  br label %93

89:                                               ; preds = %79
  %90 = fsub double 2.000000e+00, %84
  %91 = call double @sqrt(double noundef %90) #13
  %92 = fsub double 1.000000e+00, %91
  br label %93

93:                                               ; preds = %89, %86
  %94 = phi double [ %88, %86 ], [ %92, %89 ]
  %95 = call double @erand48(ptr noundef nonnull %3) #13
  %96 = fmul double %95, 2.000000e+00
  %97 = fcmp olt double %96, 1.000000e+00
  br i1 %97, label %98, label %101

98:                                               ; preds = %93
  %99 = call double @sqrt(double noundef %96) #13
  %100 = fadd double %99, -1.000000e+00
  br label %105

101:                                              ; preds = %93
  %102 = fsub double 2.000000e+00, %96
  %103 = call double @sqrt(double noundef %102) #13
  %104 = fsub double 1.000000e+00, %103
  br label %105

105:                                              ; preds = %101, %98
  %106 = phi double [ %100, %98 ], [ %104, %101 ]
  %107 = fadd double %60, %94
  %108 = fmul double %107, 5.000000e-01
  %109 = fadd double %108, %47
  %110 = fmul double %109, 0x3F50000000000000
  %111 = fadd double %110, -5.000000e-01
  %112 = fadd double %53, %106
  %113 = fmul double %112, 5.000000e-01
  %114 = fadd double %113, %37
  %115 = fdiv double %114, 7.680000e+02
  %116 = fadd double %115, -5.000000e-01
  %117 = fmul double %116, 0x3F9662D746DC5A9D
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #14
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %5) #14
  %118 = insertelement <2 x double> poison, double %111, i64 0
  %119 = shufflevector <2 x double> %118, <2 x double> poison, <2 x i32> zeroinitializer
  %120 = fmul <2 x double> %119, <double 0x3FE5E8CA11BFD44F, double 0.000000e+00>
  %121 = insertelement <2 x double> poison, double %116, i64 0
  %122 = shufflevector <2 x double> %121, <2 x double> poison, <2 x i32> zeroinitializer
  %123 = fmul <2 x double> %122, <double 0.000000e+00, double 0x3FE06AC72F44BE81>
  %124 = fadd <2 x double> %120, %123
  %125 = extractelement <2 x double> %120, i64 1
  %126 = fsub double %125, %117
  %127 = fadd <2 x double> %124, <double 0.000000e+00, double 0xBFA5CC2D1960285F>
  %128 = fadd double %126, 0xBFEFF8929A5E7D34
  %129 = fmul <2 x double> %127, <double 1.400000e+02, double 1.400000e+02>
  %130 = fmul double %128, 1.400000e+02
  %131 = fadd <2 x double> %129, <double 5.000000e+01, double 5.200000e+01>
  %132 = fadd double %130, 2.956000e+02
  %133 = fmul <2 x double> %127, %127
  %134 = extractelement <2 x double> %133, i64 1
  %135 = extractelement <2 x double> %127, i64 0
  %136 = call double @llvm.fmuladd.f64(double %135, double %135, double %134)
  %137 = call double @llvm.fmuladd.f64(double %128, double %128, double %136)
  %138 = call double @llvm.sqrt.f64(double %137)
  %139 = fdiv double 1.000000e+00, %138
  %140 = fmul double %128, %139
  store <2 x double> %131, ptr %5, align 16
  store double %132, ptr %21, align 16, !tbaa.struct !19
  %141 = insertelement <2 x double> poison, double %139, i64 0
  %142 = shufflevector <2 x double> %141, <2 x double> poison, <2 x i32> zeroinitializer
  %143 = fmul <2 x double> %127, %142
  store <2 x double> %143, ptr %22, align 8
  store double %140, ptr %23, align 8, !tbaa.struct !19
  call void @_Z8radianceRK3RayiPt(ptr nonnull sret(%struct.Vec) align 8 %4, ptr noundef nonnull align 8 dereferenceable(48) %5, i32 noundef 0, ptr noundef nonnull %3) #12
  %144 = load <2 x double>, ptr %4, align 16, !tbaa !12, !noalias !70
  %145 = fmul <2 x double> %28, %144
  %146 = load double, ptr %26, align 16, !tbaa !7, !noalias !70
  %147 = fmul double %25, %146
  %148 = fadd <2 x double> %82, %145
  %149 = fadd double %81, %147
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #14
  %150 = add nuw nsw i32 %80, 1
  %151 = icmp eq i32 %150, %13
  br i1 %151, label %62, label %79
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(read)
declare i32 @atoi(ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: nobuiltin optsize allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #10

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #11

attributes #0 = { optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #8 = { norecurse optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind optsize willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin optsize allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { optsize }
attributes #13 = { nounwind optsize }
attributes #14 = { nounwind }
attributes #15 = { nounwind optsize willreturn memory(read) }
attributes #16 = { builtin optsize allocsize(0) }
attributes #17 = { cold optsize }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1, !2, !3, !4, !5, !6}

!0 = !{!"clang version 17.0.6 (https://github.com/Casperento/llvm-project.git 9b0073551ece0d22bf3378af2b03e456a26031b6)"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 1, !"ThinLTO", i32 0}
!6 = !{i32 1, !"EnableSplitLTOUnit", i32 1}
!7 = !{!8, !9, i64 16}
!8 = !{!"_ZTS3Vec", !9, i64 0, !9, i64 8, !9, i64 16}
!9 = !{!"double", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C++ TBAA"}
!12 = !{!9, !9, i64 0}
!13 = !{!14}
!14 = distinct !{!14, !15, !"_ZNK3VecplERKS_: %agg.result"}
!15 = distinct !{!15, !"_ZNK3VecplERKS_"}
!16 = !{!17}
!17 = distinct !{!17, !18, !"_ZNK3VecmiERKS_: %agg.result"}
!18 = distinct !{!18, !"_ZNK3VecmiERKS_"}
!19 = !{i64 0, i64 8, !12}
!20 = !{i64 0, i64 8, !12, i64 8, i64 8, !12, i64 16, i64 8, !12}
!21 = !{!22, !23, i64 80}
!22 = !{!"_ZTS6Sphere", !9, i64 0, !8, i64 8, !8, i64 32, !8, i64 56, !23, i64 80}
!23 = !{!"_ZTS6Refl_t", !10, i64 0}
!24 = !{!25}
!25 = distinct !{!25, !26, !"_ZNK3Vec4multERKS_: %agg.result"}
!26 = distinct !{!26, !"_ZNK3Vec4multERKS_"}
!27 = !{!28}
!28 = distinct !{!28, !29, !"_ZNK3VecplERKS_: %agg.result"}
!29 = distinct !{!29, !"_ZNK3VecplERKS_"}
!30 = !{!31}
!31 = distinct !{!31, !32, !"_ZNK3Vec4multERKS_: %agg.result"}
!32 = distinct !{!32, !"_ZNK3Vec4multERKS_"}
!33 = !{!34}
!34 = distinct !{!34, !35, !"_ZNK3VecplERKS_: %agg.result"}
!35 = distinct !{!35, !"_ZNK3VecplERKS_"}
!36 = !{!37}
!37 = distinct !{!37, !38, !"_ZNK3Vec4multERKS_: %agg.result"}
!38 = distinct !{!38, !"_ZNK3Vec4multERKS_"}
!39 = !{!40}
!40 = distinct !{!40, !41, !"_ZNK3VecplERKS_: %agg.result"}
!41 = distinct !{!41, !"_ZNK3VecplERKS_"}
!42 = !{!43}
!43 = distinct !{!43, !44, !"_ZNK3VecmlEd: %agg.result"}
!44 = distinct !{!44, !"_ZNK3VecmlEd"}
!45 = !{!46}
!46 = distinct !{!46, !47, !"_ZNK3VecmlEd: %agg.result"}
!47 = distinct !{!47, !"_ZNK3VecmlEd"}
!48 = !{!49}
!49 = distinct !{!49, !50, !"_ZNK3VecmlEd: %agg.result"}
!50 = distinct !{!50, !"_ZNK3VecmlEd"}
!51 = !{!52}
!52 = distinct !{!52, !53, !"_ZNK3VecmlEd: %agg.result"}
!53 = distinct !{!53, !"_ZNK3VecmlEd"}
!54 = !{!55}
!55 = distinct !{!55, !56, !"_ZNK3VecplERKS_: %agg.result"}
!56 = distinct !{!56, !"_ZNK3VecplERKS_"}
!57 = !{!8, !9, i64 0}
!58 = !{!59}
!59 = distinct !{!59, !60, !"_ZNK3VecmiERKS_: %agg.result"}
!60 = distinct !{!60, !"_ZNK3VecmiERKS_"}
!61 = !{!8, !9, i64 8}
!62 = !{!22, !9, i64 0}
!63 = !{!64, !64, i64 0}
!64 = !{!"any pointer", !10, i64 0}
!65 = !{!66, !66, i64 0}
!66 = !{!"short", !10, i64 0}
!67 = !{!68}
!68 = distinct !{!68, !69, !"_ZNK3VecplERKS_: %agg.result"}
!69 = distinct !{!69, !"_ZNK3VecplERKS_"}
!70 = !{!71}
!71 = distinct !{!71, !72, !"_ZNK3VecmlEd: %agg.result"}
!72 = distinct !{!72, !"_ZNK3VecmlEd"}
