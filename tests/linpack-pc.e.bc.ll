; ModuleID = 'linpack-pc.e.bc.ll'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@main.aa = internal global [40000 x float] zeroinitializer, align 16
@main.a = internal global [40200 x float] zeroinitializer, align 16
@main.b = internal unnamed_addr global [200 x float] zeroinitializer, align 16
@main.x = internal unnamed_addr global [200 x float] zeroinitializer, align 16
@main.ipvt = internal unnamed_addr global [200 x i32] zeroinitializer, align 16
@main.j = internal unnamed_addr global i32 0, align 4
@main.ntimes = internal unnamed_addr global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"INSERT COMPILER NAME HERE\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"INSERT OPTIMISATION OPTIONS HERE\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"Rolled \00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"Single \00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"Precision Linpack Benchmark - PC Version in 'C/C++'\0A\0A\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"Compiler     %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"Optimisation %s\0A\0A\00", align 1
@atime = internal unnamed_addr global [9 x [15 x float]] zeroinitializer, align 16
@.str.7 = private unnamed_addr constant [39 x i8] c"norm resid      resid           machep\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"         x[0]-1          x[n-1]-1\0A\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"%6.1f %17.8e%17.8e%17.8e%17.8e\0A\0A\00", align 1
@.str.10 = private unnamed_addr constant [53 x i8] c"Times are reported for matrices of order        %5d\0A\00", align 1
@.str.11 = private unnamed_addr constant [54 x i8] c"1 pass times for array with leading dimension of%5d\0A\0A\00", align 1
@.str.12 = private unnamed_addr constant [56 x i8] c"      dgefa      dgesl      total     Mflops       unit\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"      ratio\0A\00", align 1
@.str.14 = private unnamed_addr constant [30 x i8] c"\0ACalculating matgen overhead\0A\00", align 1
@.str.15 = private unnamed_addr constant [26 x i8] c"%10d times %6.2f seconds\0A\00", align 1
@.str.16 = private unnamed_addr constant [39 x i8] c"Overhead for 1 matgen %12.5f seconds\0A\0A\00", align 1
@.str.17 = private unnamed_addr constant [47 x i8] c"Calculating matgen/dgefa passes for 5 seconds\0A\00", align 1
@.str.18 = private unnamed_addr constant [20 x i8] c"Passes used %10d \0A\0A\00", align 1
@.str.19 = private unnamed_addr constant [47 x i8] c"Times for array with leading dimension of%4d\0A\0A\00", align 1
@.str.20 = private unnamed_addr constant [41 x i8] c"Average                          %11.2f\0A\00", align 1
@.str.21 = private unnamed_addr constant [31 x i8] c"\0ACalculating matgen2 overhead\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define dso_local i32 @main() #0 {
  %1 = alloca float, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #11
  %2 = load ptr, ptr @stderr, align 8, !tbaa !7
  %3 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 7, i64 1, ptr %2) #12
  %4 = load ptr, ptr @stderr, align 8, !tbaa !7
  %5 = tail call i64 @fwrite(ptr nonnull @.str.3, i64 7, i64 1, ptr %4) #12
  %6 = load ptr, ptr @stderr, align 8, !tbaa !7
  %7 = tail call i64 @fwrite(ptr nonnull @.str.4, i64 53, i64 1, ptr %6) #12
  %8 = load ptr, ptr @stderr, align 8, !tbaa !7
  %9 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str) #13
  %10 = load ptr, ptr @stderr, align 8, !tbaa !7
  %11 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1) #13
  call fastcc void @matgen(ptr noundef nonnull @main.a, i32 noundef 201, ptr noundef nonnull %1) #14
  %12 = tail call i64 @clock() #15
  %13 = sitofp i64 %12 to float
  %14 = fdiv float %13, 1.000000e+06
  tail call fastcc void @dgefa(ptr noundef nonnull @main.a, i32 noundef 201) #14
  %15 = tail call i64 @clock() #15
  %16 = sitofp i64 %15 to float
  %17 = fdiv float %16, 1.000000e+06
  %18 = fsub float %17, %14
  store float %18, ptr @atime, align 16, !tbaa !11
  %19 = tail call i64 @clock() #15
  %20 = sitofp i64 %19 to float
  %21 = fdiv float %20, 1.000000e+06
  tail call fastcc void @dgesl(ptr noundef nonnull @main.a, i32 noundef 201) #14
  %22 = tail call i64 @clock() #15
  %23 = sitofp i64 %22 to float
  %24 = fdiv float %23, 1.000000e+06
  %25 = fsub float %24, %21
  store float %25, ptr getelementptr inbounds ([9 x [15 x float]], ptr @atime, i64 0, i64 1), align 4, !tbaa !11
  %26 = load float, ptr @atime, align 16, !tbaa !11
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(400) @main.x, ptr noundef nonnull align 16 dereferenceable(400) @main.b, i64 400, i1 false), !tbaa !11
  call fastcc void @matgen(ptr noundef nonnull @main.a, i32 noundef 201, ptr noundef nonnull %1) #14
  br label %27

27:                                               ; preds = %27, %0
  %28 = phi i64 [ 0, %0 ], [ %32, %27 ]
  %29 = getelementptr inbounds [200 x float], ptr @main.b, i64 0, i64 %28
  %30 = load <4 x float>, ptr %29, align 16, !tbaa !11
  %31 = fneg <4 x float> %30
  store <4 x float> %31, ptr %29, align 16, !tbaa !11
  %32 = add nuw nsw i64 %28, 4
  %33 = icmp eq i64 %32, 100
  br i1 %33, label %34, label %27, !llvm.loop !13

34:                                               ; preds = %27
  %35 = load float, ptr @main.x, align 16, !tbaa !11
  %36 = load <4 x float>, ptr getelementptr inbounds ([200 x float], ptr @main.x, i64 0, i64 3), align 4
  %37 = load <4 x float>, ptr getelementptr inbounds ([200 x float], ptr @main.x, i64 0, i64 2), align 8
  %38 = load <4 x float>, ptr getelementptr inbounds ([200 x float], ptr @main.x, i64 0, i64 1), align 4
  %39 = insertelement <4 x float> poison, float %35, i64 0
  %40 = shufflevector <4 x float> %39, <4 x float> poison, <4 x i32> zeroinitializer
  %41 = shufflevector <4 x float> %38, <4 x float> poison, <4 x i32> zeroinitializer
  %42 = shufflevector <4 x float> %37, <4 x float> poison, <4 x i32> zeroinitializer
  %43 = shufflevector <4 x float> %36, <4 x float> poison, <4 x i32> zeroinitializer
  br label %44

44:                                               ; preds = %44, %34
  %45 = phi i64 [ 0, %34 ], [ %67, %44 ]
  %46 = getelementptr inbounds float, ptr @main.b, i64 %45
  %47 = load <4 x float>, ptr %46, align 16, !tbaa !11
  %48 = getelementptr inbounds float, ptr @main.a, i64 %45
  %49 = load <4 x float>, ptr %48, align 16, !tbaa !11
  %50 = fmul <4 x float> %40, %49
  %51 = fadd <4 x float> %47, %50
  %52 = add nuw nsw i64 %45, 201
  %53 = getelementptr inbounds float, ptr @main.a, i64 %52
  %54 = load <4 x float>, ptr %53, align 4, !tbaa !11
  %55 = fmul <4 x float> %41, %54
  %56 = fadd <4 x float> %51, %55
  %57 = add nuw nsw i64 %45, 402
  %58 = getelementptr inbounds float, ptr @main.a, i64 %57
  %59 = load <4 x float>, ptr %58, align 8, !tbaa !11
  %60 = fmul <4 x float> %42, %59
  %61 = fadd <4 x float> %56, %60
  %62 = add nuw nsw i64 %45, 603
  %63 = getelementptr inbounds float, ptr @main.a, i64 %62
  %64 = load <4 x float>, ptr %63, align 4, !tbaa !11
  %65 = fmul <4 x float> %43, %64
  %66 = fadd <4 x float> %61, %65
  store <4 x float> %66, ptr %46, align 16, !tbaa !11
  %67 = add nuw i64 %45, 4
  %68 = icmp eq i64 %67, 100
  br i1 %68, label %69, label %44, !llvm.loop !17

69:                                               ; preds = %221, %44
  %70 = phi i64 [ %222, %221 ], [ 19, %44 ]
  %71 = add nsw i64 %70, -15
  %72 = getelementptr inbounds float, ptr @main.x, i64 %71
  %73 = mul nuw nsw i64 %71, 201
  %74 = add nsw i64 %70, -14
  %75 = getelementptr inbounds float, ptr @main.x, i64 %74
  %76 = mul nuw nsw i64 %74, 201
  %77 = add nsw i64 %70, -13
  %78 = getelementptr inbounds float, ptr @main.x, i64 %77
  %79 = mul nuw nsw i64 %77, 201
  %80 = add nsw i64 %70, -12
  %81 = getelementptr inbounds float, ptr @main.x, i64 %80
  %82 = mul nuw nsw i64 %80, 201
  %83 = add nsw i64 %70, -11
  %84 = getelementptr inbounds float, ptr @main.x, i64 %83
  %85 = mul nuw nsw i64 %83, 201
  %86 = mul nuw nsw i64 %70, 201
  %87 = add nsw i64 %86, -2010
  %88 = add nsw i64 %70, -9
  %89 = getelementptr inbounds float, ptr @main.x, i64 %88
  %90 = mul nuw nsw i64 %88, 201
  %91 = add nsw i64 %86, -1608
  %92 = add nsw i64 %70, -7
  %93 = getelementptr inbounds float, ptr @main.x, i64 %92
  %94 = mul nuw nsw i64 %92, 201
  %95 = add nsw i64 %86, -1206
  %96 = add nsw i64 %70, -5
  %97 = getelementptr inbounds float, ptr @main.x, i64 %96
  %98 = mul nuw nsw i64 %96, 201
  %99 = add nsw i64 %86, -804
  %100 = add nsw i64 %70, -3
  %101 = getelementptr inbounds float, ptr @main.x, i64 %100
  %102 = mul nuw nsw i64 %100, 201
  %103 = add nsw i64 %86, -402
  %104 = add nsw i64 %70, -1
  %105 = getelementptr inbounds float, ptr @main.x, i64 %104
  %106 = mul nuw nsw i64 %104, 201
  %107 = load float, ptr %72, align 4, !tbaa !11
  %108 = load float, ptr %75, align 4, !tbaa !11
  %109 = load float, ptr %78, align 4, !tbaa !11
  %110 = load float, ptr %81, align 4, !tbaa !11
  %111 = load <2 x float>, ptr %84, align 4, !tbaa !11
  %112 = load <2 x float>, ptr %89, align 4, !tbaa !11
  %113 = load <2 x float>, ptr %93, align 4, !tbaa !11
  %114 = load <2 x float>, ptr %97, align 4, !tbaa !11
  %115 = load <2 x float>, ptr %101, align 4, !tbaa !11
  %116 = load <2 x float>, ptr %105, align 4, !tbaa !11
  br label %117

117:                                              ; preds = %117, %69
  %118 = phi i64 [ 0, %69 ], [ %219, %117 ]
  %119 = getelementptr inbounds float, ptr @main.b, i64 %118
  %120 = load float, ptr %119, align 4, !tbaa !11
  %121 = add nuw nsw i64 %118, %73
  %122 = getelementptr inbounds float, ptr @main.a, i64 %121
  %123 = load float, ptr %122, align 4, !tbaa !11
  %124 = fmul float %107, %123
  %125 = fadd float %120, %124
  %126 = add nuw nsw i64 %118, %76
  %127 = getelementptr inbounds float, ptr @main.a, i64 %126
  %128 = load float, ptr %127, align 4, !tbaa !11
  %129 = fmul float %108, %128
  %130 = fadd float %125, %129
  %131 = add nuw nsw i64 %118, %79
  %132 = getelementptr inbounds float, ptr @main.a, i64 %131
  %133 = load float, ptr %132, align 4, !tbaa !11
  %134 = fmul float %109, %133
  %135 = fadd float %130, %134
  %136 = add nuw nsw i64 %118, %82
  %137 = getelementptr inbounds float, ptr @main.a, i64 %136
  %138 = load float, ptr %137, align 4, !tbaa !11
  %139 = fmul float %110, %138
  %140 = fadd float %135, %139
  %141 = add nuw nsw i64 %118, %85
  %142 = getelementptr inbounds float, ptr @main.a, i64 %141
  %143 = load float, ptr %142, align 4, !tbaa !11
  %144 = add nuw nsw i64 %87, %118
  %145 = getelementptr inbounds float, ptr @main.a, i64 %144
  %146 = load float, ptr %145, align 4, !tbaa !11
  %147 = insertelement <2 x float> poison, float %143, i64 0
  %148 = insertelement <2 x float> %147, float %146, i64 1
  %149 = fmul <2 x float> %111, %148
  %150 = extractelement <2 x float> %149, i64 0
  %151 = fadd float %140, %150
  %152 = extractelement <2 x float> %149, i64 1
  %153 = fadd float %152, %151
  %154 = add nuw nsw i64 %118, %90
  %155 = getelementptr inbounds float, ptr @main.a, i64 %154
  %156 = load float, ptr %155, align 4, !tbaa !11
  %157 = add nuw nsw i64 %91, %118
  %158 = getelementptr inbounds float, ptr @main.a, i64 %157
  %159 = load float, ptr %158, align 4, !tbaa !11
  %160 = insertelement <2 x float> poison, float %156, i64 0
  %161 = insertelement <2 x float> %160, float %159, i64 1
  %162 = fmul <2 x float> %112, %161
  %163 = extractelement <2 x float> %162, i64 0
  %164 = fadd float %153, %163
  %165 = extractelement <2 x float> %162, i64 1
  %166 = fadd float %165, %164
  %167 = add nuw nsw i64 %118, %94
  %168 = getelementptr inbounds float, ptr @main.a, i64 %167
  %169 = load float, ptr %168, align 4, !tbaa !11
  %170 = add nuw nsw i64 %95, %118
  %171 = getelementptr inbounds float, ptr @main.a, i64 %170
  %172 = load float, ptr %171, align 4, !tbaa !11
  %173 = insertelement <2 x float> poison, float %169, i64 0
  %174 = insertelement <2 x float> %173, float %172, i64 1
  %175 = fmul <2 x float> %113, %174
  %176 = extractelement <2 x float> %175, i64 0
  %177 = fadd float %166, %176
  %178 = extractelement <2 x float> %175, i64 1
  %179 = fadd float %178, %177
  %180 = add nuw nsw i64 %118, %98
  %181 = getelementptr inbounds float, ptr @main.a, i64 %180
  %182 = load float, ptr %181, align 4, !tbaa !11
  %183 = add nuw nsw i64 %99, %118
  %184 = getelementptr inbounds float, ptr @main.a, i64 %183
  %185 = load float, ptr %184, align 4, !tbaa !11
  %186 = insertelement <2 x float> poison, float %182, i64 0
  %187 = insertelement <2 x float> %186, float %185, i64 1
  %188 = fmul <2 x float> %114, %187
  %189 = extractelement <2 x float> %188, i64 0
  %190 = fadd float %179, %189
  %191 = extractelement <2 x float> %188, i64 1
  %192 = fadd float %191, %190
  %193 = add nuw nsw i64 %118, %102
  %194 = getelementptr inbounds float, ptr @main.a, i64 %193
  %195 = load float, ptr %194, align 4, !tbaa !11
  %196 = add nuw nsw i64 %103, %118
  %197 = getelementptr inbounds float, ptr @main.a, i64 %196
  %198 = load float, ptr %197, align 4, !tbaa !11
  %199 = insertelement <2 x float> poison, float %195, i64 0
  %200 = insertelement <2 x float> %199, float %198, i64 1
  %201 = fmul <2 x float> %115, %200
  %202 = extractelement <2 x float> %201, i64 0
  %203 = fadd float %192, %202
  %204 = extractelement <2 x float> %201, i64 1
  %205 = fadd float %204, %203
  %206 = add nuw nsw i64 %118, %106
  %207 = getelementptr inbounds float, ptr @main.a, i64 %206
  %208 = load float, ptr %207, align 4, !tbaa !11
  %209 = add nuw nsw i64 %118, %86
  %210 = getelementptr inbounds float, ptr @main.a, i64 %209
  %211 = load float, ptr %210, align 4, !tbaa !11
  %212 = insertelement <2 x float> poison, float %208, i64 0
  %213 = insertelement <2 x float> %212, float %211, i64 1
  %214 = fmul <2 x float> %116, %213
  %215 = extractelement <2 x float> %214, i64 0
  %216 = fadd float %205, %215
  %217 = extractelement <2 x float> %214, i64 1
  %218 = fadd float %217, %216
  store float %218, ptr %119, align 4, !tbaa !11
  %219 = add nuw nsw i64 %118, 1
  %220 = icmp eq i64 %219, 100
  br i1 %220, label %221, label %117, !llvm.loop !18

221:                                              ; preds = %117
  %222 = add nuw nsw i64 %70, 16
  %223 = icmp ult i64 %70, 84
  br i1 %223, label %69, label %224, !llvm.loop !19

224:                                              ; preds = %224, %221
  %225 = phi i64 [ %236, %224 ], [ 0, %221 ]
  %226 = phi <2 x float> [ %235, %224 ], [ zeroinitializer, %221 ]
  %227 = getelementptr inbounds [200 x float], ptr @main.b, i64 0, i64 %225
  %228 = load float, ptr %227, align 4, !tbaa !11
  %229 = getelementptr inbounds [200 x float], ptr @main.x, i64 0, i64 %225
  %230 = load float, ptr %229, align 4, !tbaa !11
  %231 = insertelement <2 x float> poison, float %230, i64 0
  %232 = insertelement <2 x float> %231, float %228, i64 1
  %233 = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %232)
  %234 = fcmp ogt <2 x float> %226, %233
  %235 = select <2 x i1> %234, <2 x float> %226, <2 x float> %233
  %236 = add nuw nsw i64 %225, 1
  %237 = icmp eq i64 %236, 100
  br i1 %237, label %238, label %224, !llvm.loop !20

238:                                              ; preds = %224
  %.lcssa4 = phi <2 x float> [ %235, %224 ]
  %239 = fadd float %26, %25
  %240 = load float, ptr %1, align 4, !tbaa !11
  %241 = fmul float %240, 1.000000e+02
  %242 = extractelement <2 x float> %.lcssa4, i64 0
  %243 = fmul float %242, %241
  %244 = fmul float %243, 0x3E80000000000000
  %245 = extractelement <2 x float> %.lcssa4, i64 1
  %246 = fdiv float %245, %244
  %247 = fadd float %35, -1.000000e+00
  %248 = load float, ptr getelementptr inbounds ([200 x float], ptr @main.x, i64 0, i64 99), align 4, !tbaa !11
  %249 = fadd float %248, -1.000000e+00
  %250 = load ptr, ptr @stderr, align 8, !tbaa !7
  %251 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 38, i64 1, ptr %250) #12
  %252 = load ptr, ptr @stderr, align 8, !tbaa !7
  %253 = tail call i64 @fwrite(ptr nonnull @.str.8, i64 34, i64 1, ptr %252) #12
  %254 = load ptr, ptr @stderr, align 8, !tbaa !7
  %255 = fpext float %246 to double
  %256 = fpext float %245 to double
  %257 = fpext float %247 to double
  %258 = fpext float %249 to double
  %259 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %254, ptr noundef nonnull @.str.9, double noundef %255, double noundef %256, double noundef 0x3E80000000000000, double noundef %257, double noundef %258) #13
  %260 = load ptr, ptr @stderr, align 8, !tbaa !7
  %261 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %260, ptr noundef nonnull @.str.10, i32 noundef 100) #13
  %262 = load ptr, ptr @stderr, align 8, !tbaa !7
  %263 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %262, ptr noundef nonnull @.str.11, i32 noundef 201) #13
  %264 = load ptr, ptr @stderr, align 8, !tbaa !7
  %265 = tail call i64 @fwrite(ptr nonnull @.str.12, i64 55, i64 1, ptr %264) #12
  %266 = load ptr, ptr @stderr, align 8, !tbaa !7
  %267 = tail call i64 @fwrite(ptr nonnull @.str.13, i64 12, i64 1, ptr %266) #12
  store float %239, ptr getelementptr inbounds ([9 x [15 x float]], ptr @atime, i64 0, i64 2), align 8, !tbaa !11
  %268 = fcmp ogt float %239, 0.000000e+00
  br i1 %268, label %269, label %275

269:                                              ; preds = %238
  %270 = fpext float %239 to double
  %271 = fmul double %270, 1.000000e+06
  %272 = fdiv double 0x4124F49560000000, %271
  %273 = fptrunc double %272 to float
  %274 = fdiv float 2.000000e+00, %273
  br label %275

275:                                              ; preds = %269, %238
  %276 = phi float [ %273, %269 ], [ 0.000000e+00, %238 ]
  %277 = phi float [ %274, %269 ], [ 0.000000e+00, %238 ]
  store float %276, ptr getelementptr inbounds ([9 x [15 x float]], ptr @atime, i64 0, i64 3), align 4
  store float %277, ptr getelementptr inbounds ([9 x [15 x float]], ptr @atime, i64 0, i64 4), align 16, !tbaa !11
  %278 = fdiv float %239, 0x3FACAC0840000000
  store float %278, ptr getelementptr inbounds ([9 x [15 x float]], ptr @atime, i64 0, i64 5), align 4, !tbaa !11
  %279 = load ptr, ptr @stderr, align 8, !tbaa !7
  %280 = tail call i64 @fwrite(ptr nonnull @.str.14, i64 29, i64 1, ptr %279) #12
  br label %281

281:                                              ; preds = %289, %275
  %282 = phi i32 [ -3, %275 ], [ %290, %289 ]
  %283 = phi i32 [ 100, %275 ], [ %294, %289 ]
  %284 = tail call i64 @clock() #15
  br label %285

285:                                              ; preds = %285, %281
  %286 = phi i32 [ %287, %285 ], [ 0, %281 ]
  call fastcc void @matgen(ptr noundef nonnull @main.a, i32 noundef 201, ptr noundef nonnull %1) #14
  %287 = add nuw nsw i32 %286, 1
  %288 = icmp eq i32 %287, %283
  br i1 %288, label %289, label %285, !llvm.loop !21

289:                                              ; preds = %285
  %290 = add nsw i32 %282, 1
  %291 = tail call i64 @clock() #15
  %292 = load ptr, ptr @stderr, align 8, !tbaa !7
  %293 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %292, ptr noundef nonnull @.str.15, i32 noundef %283, double noundef 0.000000e+00) #13
  %294 = shl nsw i32 %283, 1
  %295 = icmp eq i32 %290, 0
  br i1 %295, label %296, label %281, !llvm.loop !22

296:                                              ; preds = %289
  %.lcssa3 = phi i64 [ %291, %289 ]
  %.lcssa2 = phi i64 [ %284, %289 ]
  %297 = sitofp i64 %.lcssa2 to float
  %298 = sitofp i64 %.lcssa3 to float
  %299 = fdiv float %298, 1.000000e+06
  %300 = load ptr, ptr @stderr, align 8, !tbaa !7
  %301 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %300, ptr noundef nonnull @.str.16, double noundef 0.000000e+00) #13
  %302 = load ptr, ptr @stderr, align 8, !tbaa !7
  %303 = tail call i64 @fwrite(ptr nonnull @.str.17, i64 46, i64 1, ptr %302) #12
  br label %304

304:                                              ; preds = %321, %296
  %305 = phi i32 [ 100, %296 ], [ %323, %321 ]
  %306 = phi i32 [ -3, %296 ], [ %308, %321 ]
  store i32 %305, ptr @main.ntimes, align 4, !tbaa !23
  %307 = tail call i64 @clock() #15
  %308 = add nsw i32 %306, 1
  %309 = load i32, ptr @main.ntimes, align 4, !tbaa !23
  %310 = icmp sgt i32 %309, 0
  br i1 %310, label %311, label %315

311:                                              ; preds = %311, %304
  %312 = phi i32 [ %313, %311 ], [ 0, %304 ]
  call fastcc void @matgen(ptr noundef nonnull @main.a, i32 noundef 201, ptr noundef nonnull %1) #14
  tail call fastcc void @dgefa(ptr noundef nonnull @main.a, i32 noundef 201) #14
  %313 = add nuw nsw i32 %312, 1
  %314 = icmp eq i32 %313, %309
  br i1 %314, label %315, label %311, !llvm.loop !25

315:                                              ; preds = %311, %304
  %316 = tail call i64 @clock() #15
  %317 = load ptr, ptr @stderr, align 8, !tbaa !7
  %318 = load i32, ptr @main.ntimes, align 4, !tbaa !23
  %319 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %317, ptr noundef nonnull @.str.15, i32 noundef %318, double noundef 0.000000e+00) #13
  %320 = icmp eq i32 %306, -1
  br i1 %320, label %324, label %321

321:                                              ; preds = %315
  %322 = load i32, ptr @main.ntimes, align 4, !tbaa !23
  %323 = shl nsw i32 %322, 1
  br label %304, !llvm.loop !26

324:                                              ; preds = %315
  %325 = fdiv float %297, 1.000000e+06
  %326 = fsub float %299, %325
  %327 = fdiv float %326, 4.000000e+02
  store i32 1000, ptr @main.ntimes, align 4
  %328 = load ptr, ptr @stderr, align 8, !tbaa !7
  %329 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %328, ptr noundef nonnull @.str.18, i32 noundef 0) #13
  %330 = load ptr, ptr @stderr, align 8, !tbaa !7
  %331 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %330, ptr noundef nonnull @.str.19, i32 noundef 201) #13
  %332 = load ptr, ptr @stderr, align 8, !tbaa !7
  %333 = tail call i64 @fwrite(ptr nonnull @.str.12, i64 55, i64 1, ptr %332) #12
  %334 = load ptr, ptr @stderr, align 8, !tbaa !7
  %335 = tail call i64 @fwrite(ptr nonnull @.str.13, i64 12, i64 1, ptr %334) #12
  %336 = load i32, ptr @main.ntimes, align 4, !tbaa !23
  %337 = sitofp i32 %336 to float
  %338 = fmul float %327, %337
  store float 0.000000e+00, ptr getelementptr inbounds ([9 x [15 x float]], ptr @atime, i64 0, i64 3, i64 6), align 4, !tbaa !11
  store i32 1, ptr @main.j, align 4, !tbaa !23
  br label %339

339:                                              ; preds = %370, %324
  %340 = tail call i64 @clock() #15
  %341 = sitofp i64 %340 to float
  %342 = fdiv float %341, 1.000000e+06
  %343 = load i32, ptr @main.ntimes, align 4, !tbaa !23
  %344 = icmp sgt i32 %343, 0
  br i1 %344, label %345, label %349

345:                                              ; preds = %345, %339
  %346 = phi i32 [ %347, %345 ], [ 0, %339 ]
  call fastcc void @matgen(ptr noundef nonnull @main.a, i32 noundef 201, ptr noundef nonnull %1) #14
  tail call fastcc void @dgefa(ptr noundef nonnull @main.a, i32 noundef 201) #14
  %347 = add nuw nsw i32 %346, 1
  %348 = icmp eq i32 %347, %343
  br i1 %348, label %349, label %345, !llvm.loop !27

349:                                              ; preds = %345, %339
  %350 = tail call i64 @clock() #15
  %351 = sitofp i64 %350 to float
  %352 = fdiv float %351, 1.000000e+06
  %353 = fsub float %352, %342
  %354 = fsub float %353, %338
  %355 = load i32, ptr @main.ntimes, align 4, !tbaa !23
  %356 = sitofp i32 %355 to float
  %357 = fdiv float %354, %356
  %358 = load i32, ptr @main.j, align 4, !tbaa !23
  %359 = sext i32 %358 to i64
  %360 = getelementptr inbounds [15 x float], ptr @atime, i64 0, i64 %359
  store float %357, ptr %360, align 4, !tbaa !11
  %361 = tail call i64 @clock() #15
  %362 = sitofp i64 %361 to float
  %363 = fdiv float %362, 1.000000e+06
  %364 = load i32, ptr @main.ntimes, align 4, !tbaa !23
  %365 = icmp sgt i32 %364, 0
  br i1 %365, label %366, label %370

366:                                              ; preds = %366, %349
  %367 = phi i32 [ %368, %366 ], [ 0, %349 ]
  tail call fastcc void @dgesl(ptr noundef nonnull @main.a, i32 noundef 201) #14
  %368 = add nuw nsw i32 %367, 1
  %369 = icmp eq i32 %368, %364
  br i1 %369, label %370, label %366, !llvm.loop !28

370:                                              ; preds = %366, %349
  %371 = tail call i64 @clock() #15
  %372 = sitofp i64 %371 to float
  %373 = fdiv float %372, 1.000000e+06
  %374 = fsub float %373, %363
  %375 = load i32, ptr @main.ntimes, align 4, !tbaa !23
  %376 = sitofp i32 %375 to float
  %377 = fdiv float %374, %376
  %378 = load i32, ptr @main.j, align 4, !tbaa !23
  %379 = sext i32 %378 to i64
  %380 = getelementptr inbounds [9 x [15 x float]], ptr @atime, i64 0, i64 1, i64 %379
  store float %377, ptr %380, align 4, !tbaa !11
  %381 = getelementptr inbounds [15 x float], ptr @atime, i64 0, i64 %379
  %382 = load float, ptr %381, align 4, !tbaa !11
  %383 = fadd float %382, %377
  %384 = getelementptr inbounds [9 x [15 x float]], ptr @atime, i64 0, i64 2, i64 %379
  store float %383, ptr %384, align 4, !tbaa !11
  %385 = fpext float %383 to double
  %386 = fmul double %385, 1.000000e+06
  %387 = fdiv double 0x4124F49560000000, %386
  %388 = fptrunc double %387 to float
  %389 = getelementptr inbounds [9 x [15 x float]], ptr @atime, i64 0, i64 3, i64 %379
  store float %388, ptr %389, align 4, !tbaa !11
  %390 = fdiv float 2.000000e+00, %388
  %391 = getelementptr inbounds [9 x [15 x float]], ptr @atime, i64 0, i64 4, i64 %379
  store float %390, ptr %391, align 4, !tbaa !11
  %392 = fdiv float %383, 0x3FACAC0840000000
  %393 = getelementptr inbounds [9 x [15 x float]], ptr @atime, i64 0, i64 5, i64 %379
  store float %392, ptr %393, align 4, !tbaa !11
  %394 = load float, ptr getelementptr inbounds ([9 x [15 x float]], ptr @atime, i64 0, i64 3, i64 6), align 4, !tbaa !11
  %395 = fadd float %394, %388
  store float %395, ptr getelementptr inbounds ([9 x [15 x float]], ptr @atime, i64 0, i64 3, i64 6), align 4, !tbaa !11
  %396 = add nsw i32 %378, 1
  store i32 %396, ptr @main.j, align 4, !tbaa !23
  %397 = icmp slt i32 %378, 5
  br i1 %397, label %339, label %398, !llvm.loop !29

398:                                              ; preds = %370
  %.lcssa1 = phi float [ %395, %370 ]
  %399 = fdiv float %.lcssa1, 5.000000e+00
  store float %399, ptr getelementptr inbounds ([9 x [15 x float]], ptr @atime, i64 0, i64 3, i64 6), align 4, !tbaa !11
  %400 = load ptr, ptr @stderr, align 8, !tbaa !7
  %401 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %400, ptr noundef nonnull @.str.20, double noundef 0.000000e+00) #13
  %402 = load ptr, ptr @stderr, align 8, !tbaa !7
  %403 = tail call i64 @fwrite(ptr nonnull @.str.21, i64 30, i64 1, ptr %402) #12
  %404 = tail call i64 @clock() #15
  %405 = sitofp i64 %404 to float
  br label %406

406:                                              ; preds = %406, %398
  %407 = phi i32 [ %408, %406 ], [ 0, %398 ]
  call fastcc void @matgen(ptr noundef nonnull @main.aa, i32 noundef 200, ptr noundef nonnull %1) #14
  %408 = add nuw nsw i32 %407, 1
  %409 = icmp eq i32 %408, 400
  br i1 %409, label %410, label %406, !llvm.loop !30

410:                                              ; preds = %406
  %411 = fdiv float %405, 1.000000e+06
  %412 = tail call i64 @clock() #15
  %413 = sitofp i64 %412 to float
  %414 = fdiv float %413, 1.000000e+06
  %415 = fsub float %414, %411
  %416 = fdiv float %415, 4.000000e+02
  %417 = load ptr, ptr @stderr, align 8, !tbaa !7
  %418 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %417, ptr noundef nonnull @.str.16, double noundef 0.000000e+00) #13
  %419 = load ptr, ptr @stderr, align 8, !tbaa !7
  %420 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %419, ptr noundef nonnull @.str.19, i32 noundef 200) #13
  %421 = load ptr, ptr @stderr, align 8, !tbaa !7
  %422 = tail call i64 @fwrite(ptr nonnull @.str.12, i64 55, i64 1, ptr %421) #12
  %423 = load ptr, ptr @stderr, align 8, !tbaa !7
  %424 = tail call i64 @fwrite(ptr nonnull @.str.13, i64 12, i64 1, ptr %423) #12
  %425 = load i32, ptr @main.ntimes, align 4, !tbaa !23
  %426 = sitofp i32 %425 to float
  %427 = fmul float %416, %426
  store float 0.000000e+00, ptr getelementptr inbounds ([9 x [15 x float]], ptr @atime, i64 0, i64 3, i64 12), align 4, !tbaa !11
  store i32 7, ptr @main.j, align 4, !tbaa !23
  br label %428

428:                                              ; preds = %459, %410
  %429 = tail call i64 @clock() #15
  %430 = sitofp i64 %429 to float
  %431 = fdiv float %430, 1.000000e+06
  %432 = load i32, ptr @main.ntimes, align 4, !tbaa !23
  %433 = icmp sgt i32 %432, 0
  br i1 %433, label %434, label %438

434:                                              ; preds = %434, %428
  %435 = phi i32 [ %436, %434 ], [ 0, %428 ]
  call fastcc void @matgen(ptr noundef nonnull @main.aa, i32 noundef 200, ptr noundef nonnull %1) #14
  tail call fastcc void @dgefa(ptr noundef nonnull @main.aa, i32 noundef 200) #14
  %436 = add nuw nsw i32 %435, 1
  %437 = icmp eq i32 %436, %432
  br i1 %437, label %438, label %434, !llvm.loop !31

438:                                              ; preds = %434, %428
  %439 = tail call i64 @clock() #15
  %440 = sitofp i64 %439 to float
  %441 = fdiv float %440, 1.000000e+06
  %442 = fsub float %441, %431
  %443 = fsub float %442, %427
  %444 = load i32, ptr @main.ntimes, align 4, !tbaa !23
  %445 = sitofp i32 %444 to float
  %446 = fdiv float %443, %445
  %447 = load i32, ptr @main.j, align 4, !tbaa !23
  %448 = sext i32 %447 to i64
  %449 = getelementptr inbounds [15 x float], ptr @atime, i64 0, i64 %448
  store float %446, ptr %449, align 4, !tbaa !11
  %450 = tail call i64 @clock() #15
  %451 = sitofp i64 %450 to float
  %452 = fdiv float %451, 1.000000e+06
  %453 = load i32, ptr @main.ntimes, align 4, !tbaa !23
  %454 = icmp sgt i32 %453, 0
  br i1 %454, label %455, label %459

455:                                              ; preds = %455, %438
  %456 = phi i32 [ %457, %455 ], [ 0, %438 ]
  tail call fastcc void @dgesl(ptr noundef nonnull @main.aa, i32 noundef 200) #14
  %457 = add nuw nsw i32 %456, 1
  %458 = icmp eq i32 %457, %453
  br i1 %458, label %459, label %455, !llvm.loop !32

459:                                              ; preds = %455, %438
  %460 = tail call i64 @clock() #15
  %461 = sitofp i64 %460 to float
  %462 = fdiv float %461, 1.000000e+06
  %463 = fsub float %462, %452
  %464 = load i32, ptr @main.ntimes, align 4, !tbaa !23
  %465 = sitofp i32 %464 to float
  %466 = fdiv float %463, %465
  %467 = load i32, ptr @main.j, align 4, !tbaa !23
  %468 = sext i32 %467 to i64
  %469 = getelementptr inbounds [9 x [15 x float]], ptr @atime, i64 0, i64 1, i64 %468
  store float %466, ptr %469, align 4, !tbaa !11
  %470 = getelementptr inbounds [15 x float], ptr @atime, i64 0, i64 %468
  %471 = load float, ptr %470, align 4, !tbaa !11
  %472 = fadd float %471, %466
  %473 = getelementptr inbounds [9 x [15 x float]], ptr @atime, i64 0, i64 2, i64 %468
  store float %472, ptr %473, align 4, !tbaa !11
  %474 = fpext float %472 to double
  %475 = fmul double %474, 1.000000e+06
  %476 = fdiv double 0x4124F49560000000, %475
  %477 = fptrunc double %476 to float
  %478 = getelementptr inbounds [9 x [15 x float]], ptr @atime, i64 0, i64 3, i64 %468
  store float %477, ptr %478, align 4, !tbaa !11
  %479 = fdiv float 2.000000e+00, %477
  %480 = getelementptr inbounds [9 x [15 x float]], ptr @atime, i64 0, i64 4, i64 %468
  store float %479, ptr %480, align 4, !tbaa !11
  %481 = fdiv float %472, 0x3FACAC0840000000
  %482 = getelementptr inbounds [9 x [15 x float]], ptr @atime, i64 0, i64 5, i64 %468
  store float %481, ptr %482, align 4, !tbaa !11
  %483 = load float, ptr getelementptr inbounds ([9 x [15 x float]], ptr @atime, i64 0, i64 3, i64 12), align 4, !tbaa !11
  %484 = fadd float %483, %477
  store float %484, ptr getelementptr inbounds ([9 x [15 x float]], ptr @atime, i64 0, i64 3, i64 12), align 4, !tbaa !11
  %485 = add nsw i32 %467, 1
  store i32 %485, ptr @main.j, align 4, !tbaa !23
  %486 = icmp slt i32 %467, 11
  br i1 %486, label %428, label %487, !llvm.loop !33

487:                                              ; preds = %459
  %.lcssa = phi float [ %484, %459 ]
  %488 = fdiv float %.lcssa, 5.000000e+00
  store float %488, ptr getelementptr inbounds ([9 x [15 x float]], ptr @atime, i64 0, i64 3, i64 12), align 4, !tbaa !11
  %489 = load ptr, ptr @stderr, align 8, !tbaa !7
  %490 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %489, ptr noundef nonnull @.str.20, double noundef 0.000000e+00) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #11
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: nofree nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @matgen(ptr nocapture noundef %0, i32 noundef %1, ptr nocapture noundef %2) unnamed_addr #4 {
  store float 0.000000e+00, ptr %2, align 4, !tbaa !11
  %4 = zext i32 %1 to i64
  br label %5

5:                                                ; preds = %25, %3
  %6 = phi i64 [ 0, %3 ], [ %26, %25 ]
  %7 = phi i32 [ 1325, %3 ], [ %.lcssa, %25 ]
  %8 = mul nuw nsw i64 %6, %4
  br label %9

9:                                                ; preds = %9, %5
  %10 = phi i64 [ 0, %5 ], [ %23, %9 ]
  %11 = phi i32 [ %7, %5 ], [ %13, %9 ]
  %12 = mul nuw nsw i32 %11, 3125
  %13 = and i32 %12, 65535
  %14 = add nsw i32 %13, -32768
  %15 = sitofp i32 %14 to double
  %16 = fmul double %15, 0x3F10000000000000
  %17 = fptrunc double %16 to float
  %18 = add nuw nsw i64 %10, %8
  %19 = getelementptr inbounds float, ptr %0, i64 %18
  store float %17, ptr %19, align 4, !tbaa !11
  %20 = load float, ptr %2, align 4, !tbaa !11
  %21 = fcmp olt float %20, %17
  %22 = select i1 %21, float %17, float %20
  store float %22, ptr %2, align 4, !tbaa !11
  %23 = add nuw nsw i64 %10, 1
  %24 = icmp eq i64 %23, 100
  br i1 %24, label %25, label %9, !llvm.loop !34

25:                                               ; preds = %9
  %.lcssa = phi i32 [ %13, %9 ]
  %26 = add nuw nsw i64 %6, 1
  %27 = icmp eq i64 %26, 100
  br i1 %27, label %28, label %5, !llvm.loop !35

28:                                               ; preds = %25
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(400) @main.b, i8 0, i64 400, i1 false), !tbaa !11
  br label %29

29:                                               ; preds = %42, %28
  %30 = phi i64 [ 0, %28 ], [ %43, %42 ]
  %31 = mul nuw nsw i64 %30, %4
  br label %32

32:                                               ; preds = %32, %29
  %33 = phi i64 [ 0, %29 ], [ %40, %32 ]
  %34 = getelementptr inbounds float, ptr @main.b, i64 %33
  %35 = load <4 x float>, ptr %34, align 16, !tbaa !11
  %36 = add nuw nsw i64 %33, %31
  %37 = getelementptr inbounds float, ptr %0, i64 %36
  %38 = load <4 x float>, ptr %37, align 4, !tbaa !11
  %39 = fadd <4 x float> %35, %38
  store <4 x float> %39, ptr %34, align 16, !tbaa !11
  %40 = add nuw i64 %33, 4
  %41 = icmp eq i64 %40, 100
  br i1 %41, label %42, label %32, !llvm.loop !36

42:                                               ; preds = %32
  %43 = add nuw nsw i64 %30, 1
  %44 = icmp eq i64 %43, 100
  br i1 %44, label %45, label %29, !llvm.loop !37

45:                                               ; preds = %42
  ret void
}

; Function Attrs: nounwind optsize
declare i64 @clock() local_unnamed_addr #5

; Function Attrs: nofree nosync nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @dgefa(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #6 {
  %3 = zext i32 %1 to i64
  %4 = add nuw nsw i32 %1, 1
  br label %5

5:                                                ; preds = %85, %2
  %6 = phi i64 [ 0, %2 ], [ %9, %85 ]
  %7 = phi i64 [ 1, %2 ], [ %86, %85 ]
  %8 = trunc i64 %6 to i32
  %9 = add nuw nsw i64 %6, 1
  %10 = mul nuw nsw i64 %6, %3
  %11 = mul i32 %4, %8
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds float, ptr %0, i64 %12
  %14 = sub nuw nsw i64 100, %6
  %15 = load float, ptr %13, align 4, !tbaa !11
  %16 = tail call float @llvm.fabs.f32(float %15)
  br label %17

17:                                               ; preds = %17, %5
  %18 = phi i64 [ 1, %5 ], [ %28, %17 ]
  %19 = phi i32 [ 0, %5 ], [ %27, %17 ]
  %20 = phi float [ %16, %5 ], [ %25, %17 ]
  %21 = getelementptr inbounds float, ptr %13, i64 %18
  %22 = load float, ptr %21, align 4, !tbaa !11
  %23 = tail call float @llvm.fabs.f32(float %22)
  %24 = fcmp ogt float %23, %20
  %25 = select i1 %24, float %23, float %20
  %26 = trunc i64 %18 to i32
  %27 = select i1 %24, i32 %26, i32 %19
  %28 = add nuw nsw i64 %18, 1
  %29 = icmp eq i64 %28, %14
  br i1 %29, label %30, label %17, !llvm.loop !38

30:                                               ; preds = %17
  %.lcssa = phi i32 [ %27, %17 ]
  %31 = add nsw i32 %.lcssa, %8
  %32 = getelementptr inbounds i32, ptr @main.ipvt, i64 %6
  store i32 %31, ptr %32, align 4, !tbaa !23
  %33 = sext i32 %31 to i64
  %34 = add nsw i64 %10, %33
  %35 = getelementptr inbounds float, ptr %0, i64 %34
  %36 = load float, ptr %35, align 4, !tbaa !11
  %37 = fcmp une float %36, 0.000000e+00
  br i1 %37, label %38, label %85

38:                                               ; preds = %30
  %39 = icmp eq i32 %.lcssa, 0
  %40 = load float, ptr %13, align 4, !tbaa !11
  br i1 %39, label %42, label %41

41:                                               ; preds = %38
  store float %40, ptr %35, align 4, !tbaa !11
  store float %36, ptr %13, align 4, !tbaa !11
  br label %42

42:                                               ; preds = %41, %38
  %43 = phi float [ %36, %41 ], [ %40, %38 ]
  %44 = fdiv float -1.000000e+00, %43
  %45 = sub nuw nsw i64 99, %6
  %46 = add nsw i32 %11, 1
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds float, ptr %0, i64 %47
  br label %49

49:                                               ; preds = %49, %42
  %50 = phi i64 [ 0, %42 ], [ %54, %49 ]
  %51 = getelementptr inbounds float, ptr %48, i64 %50
  %52 = load float, ptr %51, align 4, !tbaa !11
  %53 = fmul float %44, %52
  store float %53, ptr %51, align 4, !tbaa !11
  %54 = add nuw nsw i64 %50, 1
  %55 = icmp eq i64 %54, %45
  br i1 %55, label %56, label %49, !llvm.loop !39

56:                                               ; preds = %82, %49
  %57 = phi i64 [ %83, %82 ], [ %7, %49 ]
  %58 = mul nuw nsw i64 %57, %3
  %59 = add nsw i64 %58, %33
  %60 = getelementptr inbounds float, ptr %0, i64 %59
  %61 = load float, ptr %60, align 4, !tbaa !11
  br i1 %39, label %66, label %62

62:                                               ; preds = %56
  %63 = add nuw nsw i64 %58, %6
  %64 = getelementptr inbounds float, ptr %0, i64 %63
  %65 = load float, ptr %64, align 4, !tbaa !11
  store float %65, ptr %60, align 4, !tbaa !11
  store float %61, ptr %64, align 4, !tbaa !11
  br label %66

66:                                               ; preds = %62, %56
  %67 = add nuw nsw i64 %58, %9
  %68 = shl i64 %67, 32
  %69 = ashr exact i64 %68, 32
  %70 = getelementptr inbounds float, ptr %0, i64 %69
  %71 = fcmp oeq float %61, 0.000000e+00
  br i1 %71, label %82, label %72

72:                                               ; preds = %72, %66
  %73 = phi i64 [ %80, %72 ], [ 0, %66 ]
  %74 = getelementptr inbounds float, ptr %70, i64 %73
  %75 = load float, ptr %74, align 4, !tbaa !11
  %76 = getelementptr inbounds float, ptr %48, i64 %73
  %77 = load float, ptr %76, align 4, !tbaa !11
  %78 = fmul float %61, %77
  %79 = fadd float %75, %78
  store float %79, ptr %74, align 4, !tbaa !11
  %80 = add nuw nsw i64 %73, 1
  %81 = icmp eq i64 %80, %45
  br i1 %81, label %82, label %72, !llvm.loop !40

82:                                               ; preds = %72, %66
  %83 = add nuw nsw i64 %57, 1
  %84 = icmp eq i64 %83, 100
  br i1 %84, label %85, label %56, !llvm.loop !41

85:                                               ; preds = %82, %30
  %86 = add nuw nsw i64 %7, 1
  %87 = icmp eq i64 %9, 99
  br i1 %87, label %88, label %5, !llvm.loop !42

88:                                               ; preds = %85
  store i32 99, ptr getelementptr inbounds ([200 x i32], ptr @main.ipvt, i64 0, i64 99), align 4, !tbaa !23
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind optsize memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define internal fastcc void @dgesl(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #7 {
  %3 = add nuw nsw i32 %1, 1
  br label %4

4:                                                ; preds = %37, %2
  %5 = phi i64 [ 0, %2 ], [ %17, %37 ]
  %6 = getelementptr inbounds i32, ptr @main.ipvt, i64 %5
  %7 = load i32, ptr %6, align 4, !tbaa !23
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds float, ptr @main.b, i64 %8
  %10 = load float, ptr %9, align 4, !tbaa !11
  %11 = zext i32 %7 to i64
  %12 = icmp eq i64 %5, %11
  br i1 %12, label %16, label %13

13:                                               ; preds = %4
  %14 = getelementptr inbounds float, ptr @main.b, i64 %5
  %15 = load float, ptr %14, align 4, !tbaa !11
  store float %15, ptr %9, align 4, !tbaa !11
  store float %10, ptr %14, align 4, !tbaa !11
  br label %16

16:                                               ; preds = %13, %4
  %17 = add nuw nsw i64 %5, 1
  %18 = trunc i64 %5 to i32
  %19 = mul i32 %3, %18
  %20 = add nsw i32 %19, 1
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds float, ptr %0, i64 %21
  %23 = getelementptr inbounds float, ptr @main.b, i64 %17
  %24 = fcmp oeq float %10, 0.000000e+00
  br i1 %24, label %37, label %25

25:                                               ; preds = %16
  %26 = sub nuw nsw i64 99, %5
  br label %27

27:                                               ; preds = %27, %25
  %28 = phi i64 [ 0, %25 ], [ %35, %27 ]
  %29 = getelementptr inbounds float, ptr %23, i64 %28
  %30 = load float, ptr %29, align 4, !tbaa !11
  %31 = getelementptr inbounds float, ptr %22, i64 %28
  %32 = load float, ptr %31, align 4, !tbaa !11
  %33 = fmul float %10, %32
  %34 = fadd float %30, %33
  store float %34, ptr %29, align 4, !tbaa !11
  %35 = add nuw nsw i64 %28, 1
  %36 = icmp eq i64 %35, %26
  br i1 %36, label %37, label %27, !llvm.loop !40

37:                                               ; preds = %27, %16
  %38 = icmp eq i64 %17, 99
  br i1 %38, label %39, label %4, !llvm.loop !43

39:                                               ; preds = %37
  %40 = zext i32 %1 to i64
  br label %41

41:                                               ; preds = %70, %39
  %42 = phi i64 [ 0, %39 ], [ %43, %70 ]
  %43 = add nuw nsw i64 %42, 1
  %44 = trunc i64 %43 to i32
  %45 = sub nuw nsw i64 99, %42
  %46 = sub nsw i32 100, %44
  %47 = getelementptr inbounds float, ptr @main.b, i64 %45
  %48 = load float, ptr %47, align 4, !tbaa !11
  %49 = mul nsw i64 %45, %40
  %50 = mul nsw i32 %46, %1
  %51 = sext i32 %50 to i64
  %52 = add nsw i64 %45, %51
  %53 = getelementptr inbounds float, ptr %0, i64 %52
  %54 = load float, ptr %53, align 4, !tbaa !11
  %55 = fdiv float %48, %54
  store float %55, ptr %47, align 4, !tbaa !11
  %56 = getelementptr inbounds float, ptr %0, i64 %49
  %57 = icmp ugt i64 %42, 98
  %58 = fcmp oeq float %55, 0.000000e+00
  %59 = or i1 %57, %58
  br i1 %59, label %70, label %60

60:                                               ; preds = %60, %41
  %61 = phi i64 [ %68, %60 ], [ 0, %41 ]
  %62 = getelementptr inbounds float, ptr @main.b, i64 %61
  %63 = load float, ptr %62, align 4, !tbaa !11
  %64 = getelementptr inbounds float, ptr %56, i64 %61
  %65 = load float, ptr %64, align 4, !tbaa !11
  %66 = fmul float %55, %65
  %67 = fsub float %63, %66
  store float %67, ptr %62, align 4, !tbaa !11
  %68 = add nuw nsw i64 %61, 1
  %69 = icmp eq i64 %68, %45
  br i1 %69, label %70, label %60, !llvm.loop !40

70:                                               ; preds = %60, %41
  %71 = icmp eq i64 %43, 100
  br i1 %71, label %72, label %41, !llvm.loop !44

72:                                               ; preds = %70
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #9

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

attributes #0 = { nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind }
attributes #3 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nosync nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind optsize memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #11 = { nounwind }
attributes #12 = { cold }
attributes #13 = { cold optsize }
attributes #14 = { optsize }
attributes #15 = { nounwind optsize }

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
!12 = !{!"float", !9, i64 0}
!13 = distinct !{!13, !14, !15, !16}
!14 = !{!"llvm.loop.mustprogress"}
!15 = !{!"llvm.loop.isvectorized", i32 1}
!16 = !{!"llvm.loop.unroll.runtime.disable"}
!17 = distinct !{!17, !14, !15, !16}
!18 = distinct !{!18, !14}
!19 = distinct !{!19, !14}
!20 = distinct !{!20, !14}
!21 = distinct !{!21, !14}
!22 = distinct !{!22, !14}
!23 = !{!24, !24, i64 0}
!24 = !{!"int", !9, i64 0}
!25 = distinct !{!25, !14}
!26 = distinct !{!26, !14}
!27 = distinct !{!27, !14}
!28 = distinct !{!28, !14}
!29 = distinct !{!29, !14}
!30 = distinct !{!30, !14}
!31 = distinct !{!31, !14}
!32 = distinct !{!32, !14}
!33 = distinct !{!33, !14}
!34 = distinct !{!34, !14}
!35 = distinct !{!35, !14}
!36 = distinct !{!36, !14, !15, !16}
!37 = distinct !{!37, !14}
!38 = distinct !{!38, !14}
!39 = distinct !{!39, !14}
!40 = distinct !{!40, !14}
!41 = distinct !{!41, !14}
!42 = distinct !{!42, !14}
!43 = distinct !{!43, !14}
!44 = distinct !{!44, !14}
