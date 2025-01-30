; ModuleID = '/src/llvm-test-suite/build/SingleSource/Benchmarks/Polybench/stencils/fdtd-apml/fdtd-apml.e.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [51 x i8] c"[PolyBench] posix_memalign: cannot allocate memory\00", align 1
@.str.2 = private unnamed_addr constant [84 x i8] c"A[%d][%d][%d] = %lf and B[%d][%d][%d] = %lf differ more than FP_ABSTOLERANCE = %lf\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"%0.2lf \00", align 1

; Function Attrs: nounwind optsize uwtable
define internal ptr @polybench_alloc_data(i64 noundef %0, i32 noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = sext i32 %1 to i64
  %5 = mul i64 %4, %0
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #8
  store ptr null, ptr %3, align 8, !tbaa !7
  %6 = call i32 @posix_memalign(ptr noundef nonnull %3, i64 noundef 32, i64 noundef %5) #9
  %7 = load ptr, ptr %3, align 8, !tbaa !7
  %8 = icmp eq ptr %7, null
  %9 = icmp ne i32 %6, 0
  %10 = select i1 %8, i1 true, i1 %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load ptr, ptr @stderr, align 8, !tbaa !7
  %13 = call i64 @fwrite(ptr nonnull @.str.1, i64 50, i64 1, ptr %12) #10
  call void @exit(i32 noundef 1) #11
  unreachable

14:                                               ; preds = %2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #8
  ret ptr %7
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind optsize
declare i32 @posix_memalign(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind optsize uwtable
define dso_local i32 @main(i32 noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca double, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #8
  %5 = tail call ptr @polybench_alloc_data(i64 noundef 4225, i32 noundef 8) #12
  %6 = tail call ptr @polybench_alloc_data(i64 noundef 4225, i32 noundef 8) #12
  %7 = tail call ptr @polybench_alloc_data(i64 noundef 4225, i32 noundef 8) #12
  %8 = tail call ptr @polybench_alloc_data(i64 noundef 4225, i32 noundef 8) #12
  %9 = tail call ptr @polybench_alloc_data(i64 noundef 274625, i32 noundef 8) #12
  %10 = tail call ptr @polybench_alloc_data(i64 noundef 274625, i32 noundef 8) #12
  %11 = tail call ptr @polybench_alloc_data(i64 noundef 274625, i32 noundef 8) #12
  %12 = tail call ptr @polybench_alloc_data(i64 noundef 274625, i32 noundef 8) #12
  %13 = tail call ptr @polybench_alloc_data(i64 noundef 274625, i32 noundef 8) #12
  %14 = tail call ptr @polybench_alloc_data(i64 noundef 274625, i32 noundef 8) #12
  %15 = tail call ptr @polybench_alloc_data(i64 noundef 274625, i32 noundef 8) #12
  %16 = tail call ptr @polybench_alloc_data(i64 noundef 274625, i32 noundef 8) #12
  %17 = tail call ptr @polybench_alloc_data(i64 noundef 65, i32 noundef 8) #12
  %18 = tail call ptr @polybench_alloc_data(i64 noundef 65, i32 noundef 8) #12
  %19 = tail call ptr @polybench_alloc_data(i64 noundef 65, i32 noundef 8) #12
  %20 = tail call ptr @polybench_alloc_data(i64 noundef 65, i32 noundef 8) #12
  %21 = tail call ptr @polybench_alloc_data(i64 noundef 65, i32 noundef 8) #12
  %22 = tail call ptr @polybench_alloc_data(i64 noundef 65, i32 noundef 8) #12
  call fastcc void @init_array(ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef %5, ptr noundef %6, ptr noundef %10, ptr noundef %11, ptr noundef %12, ptr noundef %17, ptr noundef %18, ptr noundef %19, ptr noundef %20, ptr noundef %21, ptr noundef %22) #12
  %23 = load double, ptr %3, align 8, !tbaa !11
  %24 = load double, ptr %4, align 8, !tbaa !11
  %25 = fneg double %24
  %26 = getelementptr inbounds double, ptr %19, i64 64
  %27 = getelementptr inbounds double, ptr %20, i64 64
  %28 = getelementptr inbounds double, ptr %21, i64 64
  %29 = getelementptr inbounds double, ptr %22, i64 64
  br label %30

30:                                               ; preds = %201, %2
  %31 = phi i64 [ 0, %2 ], [ %202, %201 ]
  %32 = getelementptr inbounds double, ptr %18, i64 %31
  %33 = getelementptr inbounds double, ptr %17, i64 %31
  %34 = getelementptr inbounds [65 x [65 x double]], ptr %10, i64 %31, i64 64, i64 64
  %35 = getelementptr inbounds [65 x double], ptr %5, i64 %31, i64 64
  %36 = getelementptr inbounds [65 x double], ptr %6, i64 %31, i64 64
  %37 = getelementptr inbounds [65 x [65 x double]], ptr %11, i64 %31, i64 64, i64 64
  %38 = getelementptr inbounds [65 x [65 x double]], ptr %9, i64 %31, i64 64, i64 64
  %39 = getelementptr inbounds [65 x [65 x double]], ptr %12, i64 %31, i64 64, i64 64
  br label %40

40:                                               ; preds = %169, %30
  %41 = phi i64 [ 0, %30 ], [ %42, %169 ]
  %42 = add nuw nsw i64 %41, 1
  %43 = getelementptr inbounds [65 x double], ptr %7, i64 %31, i64 %41
  %44 = getelementptr inbounds double, ptr %21, i64 %41
  %45 = getelementptr inbounds double, ptr %22, i64 %41
  %46 = getelementptr inbounds [65 x double], ptr %8, i64 %31, i64 %41
  br label %47

47:                                               ; preds = %47, %40
  %48 = phi i64 [ 0, %40 ], [ %54, %47 ]
  %49 = getelementptr inbounds [65 x [65 x double]], ptr %10, i64 %31, i64 %41, i64 %48
  %50 = load double, ptr %49, align 8, !tbaa !11
  %51 = getelementptr inbounds [65 x [65 x double]], ptr %10, i64 %31, i64 %42, i64 %48
  %52 = load double, ptr %51, align 8, !tbaa !11
  %53 = fsub double %50, %52
  %54 = add nuw nsw i64 %48, 1
  %55 = getelementptr inbounds [65 x [65 x double]], ptr %11, i64 %31, i64 %41, i64 %54
  %56 = load double, ptr %55, align 8, !tbaa !11
  %57 = fadd double %53, %56
  %58 = getelementptr inbounds [65 x [65 x double]], ptr %11, i64 %31, i64 %41, i64 %48
  %59 = load double, ptr %58, align 8, !tbaa !11
  %60 = fsub double %57, %59
  store double %60, ptr %43, align 8, !tbaa !11
  %61 = load double, ptr %44, align 8, !tbaa !11
  %62 = load double, ptr %45, align 8, !tbaa !11
  %63 = fdiv double %61, %62
  %64 = getelementptr inbounds [65 x [65 x double]], ptr %9, i64 %31, i64 %41, i64 %48
  %65 = load double, ptr %64, align 8, !tbaa !11
  %66 = fdiv double %25, %62
  %67 = fmul double %60, %66
  %68 = tail call double @llvm.fmuladd.f64(double %63, double %65, double %67)
  store double %68, ptr %46, align 8, !tbaa !11
  %69 = getelementptr inbounds double, ptr %19, i64 %48
  %70 = load double, ptr %69, align 8, !tbaa !11
  %71 = getelementptr inbounds double, ptr %20, i64 %48
  %72 = load double, ptr %71, align 8, !tbaa !11
  %73 = fdiv double %70, %72
  %74 = getelementptr inbounds [65 x [65 x double]], ptr %12, i64 %31, i64 %41, i64 %48
  %75 = load double, ptr %74, align 8, !tbaa !11
  %76 = load double, ptr %32, align 8, !tbaa !11
  %77 = fmul double %23, %76
  %78 = fdiv double %77, %72
  %79 = fmul double %68, %78
  %80 = tail call double @llvm.fmuladd.f64(double %73, double %75, double %79)
  %81 = load double, ptr %33, align 8, !tbaa !11
  %82 = load double, ptr %64, align 8, !tbaa !11
  %83 = fneg double %81
  %84 = fmul double %23, %83
  %85 = fdiv double %84, %72
  %86 = tail call double @llvm.fmuladd.f64(double %85, double %82, double %80)
  store double %86, ptr %74, align 8, !tbaa !11
  %87 = load double, ptr %46, align 8, !tbaa !11
  store double %87, ptr %64, align 8, !tbaa !11
  %88 = icmp eq i64 %54, 64
  br i1 %88, label %89, label %47, !llvm.loop !13

89:                                               ; preds = %47
  %90 = getelementptr inbounds [65 x [65 x double]], ptr %10, i64 %31, i64 %41, i64 64
  %91 = load double, ptr %90, align 8, !tbaa !11
  %92 = getelementptr inbounds [65 x [65 x double]], ptr %10, i64 %31, i64 %42, i64 64
  %93 = load double, ptr %92, align 8, !tbaa !11
  %94 = fsub double %91, %93
  %95 = getelementptr inbounds [65 x double], ptr %6, i64 %31, i64 %41
  %96 = load double, ptr %95, align 8, !tbaa !11
  %97 = fadd double %94, %96
  %98 = getelementptr inbounds [65 x [65 x double]], ptr %11, i64 %31, i64 %41, i64 64
  %99 = load double, ptr %98, align 8, !tbaa !11
  %100 = fsub double %97, %99
  store double %100, ptr %43, align 8, !tbaa !11
  %101 = load double, ptr %44, align 8, !tbaa !11
  %102 = load double, ptr %45, align 8, !tbaa !11
  %103 = fdiv double %101, %102
  %104 = getelementptr inbounds [65 x [65 x double]], ptr %9, i64 %31, i64 %41, i64 64
  %105 = load double, ptr %104, align 8, !tbaa !11
  %106 = fdiv double %25, %102
  %107 = fmul double %100, %106
  %108 = tail call double @llvm.fmuladd.f64(double %103, double %105, double %107)
  store double %108, ptr %46, align 8, !tbaa !11
  %109 = load double, ptr %26, align 8, !tbaa !11
  %110 = load double, ptr %27, align 8, !tbaa !11
  %111 = fdiv double %109, %110
  %112 = getelementptr inbounds [65 x [65 x double]], ptr %12, i64 %31, i64 %41, i64 64
  %113 = load double, ptr %112, align 8, !tbaa !11
  %114 = load double, ptr %32, align 8, !tbaa !11
  %115 = fmul double %23, %114
  %116 = fdiv double %115, %110
  %117 = fmul double %108, %116
  %118 = tail call double @llvm.fmuladd.f64(double %111, double %113, double %117)
  %119 = load double, ptr %33, align 8, !tbaa !11
  %120 = load double, ptr %104, align 8, !tbaa !11
  %121 = fneg double %119
  %122 = fmul double %23, %121
  %123 = fdiv double %122, %110
  %124 = tail call double @llvm.fmuladd.f64(double %123, double %120, double %118)
  store double %124, ptr %112, align 8, !tbaa !11
  %125 = load double, ptr %46, align 8, !tbaa !11
  store double %125, ptr %104, align 8, !tbaa !11
  br label %126

126:                                              ; preds = %126, %89
  %127 = phi i64 [ 0, %89 ], [ %133, %126 ]
  %128 = getelementptr inbounds [65 x [65 x double]], ptr %10, i64 %31, i64 64, i64 %127
  %129 = load double, ptr %128, align 8, !tbaa !11
  %130 = getelementptr inbounds [65 x double], ptr %5, i64 %31, i64 %127
  %131 = load double, ptr %130, align 8, !tbaa !11
  %132 = fsub double %129, %131
  %133 = add nuw nsw i64 %127, 1
  %134 = getelementptr inbounds [65 x [65 x double]], ptr %11, i64 %31, i64 64, i64 %133
  %135 = load double, ptr %134, align 8, !tbaa !11
  %136 = fadd double %132, %135
  %137 = getelementptr inbounds [65 x [65 x double]], ptr %11, i64 %31, i64 64, i64 %127
  %138 = load double, ptr %137, align 8, !tbaa !11
  %139 = fsub double %136, %138
  store double %139, ptr %43, align 8, !tbaa !11
  %140 = load double, ptr %28, align 8, !tbaa !11
  %141 = load double, ptr %45, align 8, !tbaa !11
  %142 = fdiv double %140, %141
  %143 = getelementptr inbounds [65 x [65 x double]], ptr %9, i64 %31, i64 %41, i64 %127
  %144 = load double, ptr %143, align 8, !tbaa !11
  %145 = fdiv double %25, %141
  %146 = fmul double %139, %145
  %147 = tail call double @llvm.fmuladd.f64(double %142, double %144, double %146)
  store double %147, ptr %46, align 8, !tbaa !11
  %148 = getelementptr inbounds double, ptr %19, i64 %127
  %149 = load double, ptr %148, align 8, !tbaa !11
  %150 = getelementptr inbounds double, ptr %20, i64 %127
  %151 = load double, ptr %150, align 8, !tbaa !11
  %152 = fdiv double %149, %151
  %153 = getelementptr inbounds [65 x [65 x double]], ptr %12, i64 %31, i64 64, i64 %127
  %154 = load double, ptr %153, align 8, !tbaa !11
  %155 = load double, ptr %32, align 8, !tbaa !11
  %156 = fmul double %23, %155
  %157 = fdiv double %156, %151
  %158 = fmul double %147, %157
  %159 = tail call double @llvm.fmuladd.f64(double %152, double %154, double %158)
  %160 = load double, ptr %33, align 8, !tbaa !11
  %161 = getelementptr inbounds [65 x [65 x double]], ptr %9, i64 %31, i64 64, i64 %127
  %162 = load double, ptr %161, align 8, !tbaa !11
  %163 = fneg double %160
  %164 = fmul double %23, %163
  %165 = fdiv double %164, %151
  %166 = tail call double @llvm.fmuladd.f64(double %165, double %162, double %159)
  store double %166, ptr %153, align 8, !tbaa !11
  %167 = load double, ptr %46, align 8, !tbaa !11
  store double %167, ptr %161, align 8, !tbaa !11
  %168 = icmp eq i64 %133, 64
  br i1 %168, label %169, label %126, !llvm.loop !15

169:                                              ; preds = %126
  %170 = load double, ptr %34, align 8, !tbaa !11
  %171 = load double, ptr %35, align 8, !tbaa !11
  %172 = fsub double %170, %171
  %173 = load double, ptr %36, align 8, !tbaa !11
  %174 = fadd double %172, %173
  %175 = load double, ptr %37, align 8, !tbaa !11
  %176 = fsub double %174, %175
  store double %176, ptr %43, align 8, !tbaa !11
  %177 = load double, ptr %28, align 8, !tbaa !11
  %178 = load double, ptr %29, align 8, !tbaa !11
  %179 = fdiv double %177, %178
  %180 = load double, ptr %38, align 8, !tbaa !11
  %181 = fdiv double %25, %178
  %182 = fmul double %176, %181
  %183 = tail call double @llvm.fmuladd.f64(double %179, double %180, double %182)
  store double %183, ptr %46, align 8, !tbaa !11
  %184 = load double, ptr %26, align 8, !tbaa !11
  %185 = load double, ptr %27, align 8, !tbaa !11
  %186 = fdiv double %184, %185
  %187 = load double, ptr %39, align 8, !tbaa !11
  %188 = load double, ptr %32, align 8, !tbaa !11
  %189 = fmul double %23, %188
  %190 = fdiv double %189, %185
  %191 = fmul double %183, %190
  %192 = tail call double @llvm.fmuladd.f64(double %186, double %187, double %191)
  %193 = load double, ptr %33, align 8, !tbaa !11
  %194 = load double, ptr %38, align 8, !tbaa !11
  %195 = fneg double %193
  %196 = fmul double %23, %195
  %197 = fdiv double %196, %185
  %198 = tail call double @llvm.fmuladd.f64(double %197, double %194, double %192)
  store double %198, ptr %39, align 8, !tbaa !11
  %199 = load double, ptr %46, align 8, !tbaa !11
  store double %199, ptr %38, align 8, !tbaa !11
  %200 = icmp eq i64 %42, 64
  br i1 %200, label %201, label %40, !llvm.loop !16

201:                                              ; preds = %169
  %202 = add nuw nsw i64 %31, 1
  %203 = icmp eq i64 %202, 64
  br i1 %203, label %204, label %30, !llvm.loop !17

204:                                              ; preds = %201
  call fastcc void @init_array(ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef %14, ptr noundef %15, ptr noundef %16, ptr noundef nonnull %17, ptr noundef nonnull %18, ptr noundef nonnull %19, ptr noundef nonnull %20, ptr noundef nonnull %21, ptr noundef nonnull %22) #12
  %205 = load double, ptr %3, align 8, !tbaa !11
  %206 = load double, ptr %4, align 8, !tbaa !11
  %207 = insertelement <2 x double> poison, double %206, i64 1
  br label %208

208:                                              ; preds = %431, %204
  %209 = phi i64 [ 0, %204 ], [ %432, %431 ]
  %210 = getelementptr inbounds double, ptr %18, i64 %209
  %211 = getelementptr inbounds double, ptr %17, i64 %209
  %212 = getelementptr inbounds [65 x [65 x double]], ptr %14, i64 %209, i64 64, i64 64
  %213 = getelementptr inbounds [65 x double], ptr %5, i64 %209, i64 64
  %214 = getelementptr inbounds [65 x double], ptr %6, i64 %209, i64 64
  %215 = getelementptr inbounds [65 x [65 x double]], ptr %15, i64 %209, i64 64, i64 64
  %216 = getelementptr inbounds [65 x [65 x double]], ptr %13, i64 %209, i64 64, i64 64
  %217 = getelementptr inbounds [65 x [65 x double]], ptr %16, i64 %209, i64 64, i64 64
  br label %218

218:                                              ; preds = %386, %208
  %219 = phi i64 [ 0, %208 ], [ %220, %386 ]
  %220 = add nuw nsw i64 %219, 1
  %221 = getelementptr inbounds [65 x double], ptr %7, i64 %209, i64 %219
  %222 = getelementptr inbounds double, ptr %21, i64 %219
  %223 = getelementptr inbounds double, ptr %22, i64 %219
  %224 = getelementptr inbounds [65 x double], ptr %8, i64 %209, i64 %219
  br label %225

225:                                              ; preds = %225, %218
  %226 = phi i64 [ 0, %218 ], [ %232, %225 ]
  %227 = getelementptr inbounds [65 x [65 x double]], ptr %14, i64 %209, i64 %219, i64 %226
  %228 = load double, ptr %227, align 8, !tbaa !11
  %229 = getelementptr inbounds [65 x [65 x double]], ptr %14, i64 %209, i64 %220, i64 %226
  %230 = load double, ptr %229, align 8, !tbaa !11
  %231 = fsub double %228, %230
  %232 = add nuw nsw i64 %226, 1
  %233 = getelementptr inbounds [65 x [65 x double]], ptr %15, i64 %209, i64 %219, i64 %232
  %234 = load double, ptr %233, align 8, !tbaa !11
  %235 = fadd double %231, %234
  %236 = getelementptr inbounds [65 x [65 x double]], ptr %15, i64 %209, i64 %219, i64 %226
  %237 = load double, ptr %236, align 8, !tbaa !11
  %238 = fsub double %235, %237
  store double %238, ptr %221, align 8, !tbaa !11
  %239 = load double, ptr %222, align 8, !tbaa !11
  %240 = load double, ptr %223, align 8, !tbaa !11
  %241 = getelementptr inbounds [65 x [65 x double]], ptr %13, i64 %209, i64 %219, i64 %226
  %242 = load double, ptr %241, align 8, !tbaa !11
  %243 = insertelement <2 x double> %207, double %239, i64 0
  %244 = insertelement <2 x double> poison, double %240, i64 0
  %245 = shufflevector <2 x double> %244, <2 x double> poison, <2 x i32> zeroinitializer
  %246 = fdiv <2 x double> %243, %245
  %247 = insertelement <2 x double> poison, double %242, i64 0
  %248 = insertelement <2 x double> %247, double %238, i64 1
  %249 = fmul <2 x double> %246, %248
  %250 = shufflevector <2 x double> %249, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %251 = fsub <2 x double> %249, %250
  %252 = extractelement <2 x double> %251, i64 0
  store double %252, ptr %224, align 8, !tbaa !11
  %253 = getelementptr inbounds double, ptr %19, i64 %226
  %254 = load double, ptr %253, align 8, !tbaa !11
  %255 = getelementptr inbounds double, ptr %20, i64 %226
  %256 = load double, ptr %255, align 8, !tbaa !11
  %257 = getelementptr inbounds [65 x [65 x double]], ptr %16, i64 %209, i64 %219, i64 %226
  %258 = load double, ptr %257, align 8, !tbaa !11
  %259 = load double, ptr %210, align 8, !tbaa !11
  %260 = fmul double %205, %259
  %261 = fdiv double %260, %256
  %262 = fmul double %252, %261
  %263 = load double, ptr %211, align 8, !tbaa !11
  %264 = fmul double %205, %263
  %265 = load double, ptr %241, align 8, !tbaa !11
  %266 = insertelement <2 x double> poison, double %254, i64 0
  %267 = insertelement <2 x double> %266, double %264, i64 1
  %268 = insertelement <2 x double> poison, double %256, i64 0
  %269 = shufflevector <2 x double> %268, <2 x double> poison, <2 x i32> zeroinitializer
  %270 = fdiv <2 x double> %267, %269
  %271 = insertelement <2 x double> poison, double %258, i64 0
  %272 = insertelement <2 x double> %271, double %265, i64 1
  %273 = fmul <2 x double> %270, %272
  %274 = extractelement <2 x double> %273, i64 0
  %275 = fadd double %274, %262
  %276 = extractelement <2 x double> %273, i64 1
  %277 = fsub double %275, %276
  store double %277, ptr %257, align 8, !tbaa !11
  %278 = load double, ptr %224, align 8, !tbaa !11
  store double %278, ptr %241, align 8, !tbaa !11
  %279 = icmp eq i64 %232, 64
  br i1 %279, label %280, label %225, !llvm.loop !18

280:                                              ; preds = %225
  %281 = getelementptr inbounds [65 x [65 x double]], ptr %14, i64 %209, i64 %219, i64 64
  %282 = load double, ptr %281, align 8, !tbaa !11
  %283 = getelementptr inbounds [65 x [65 x double]], ptr %14, i64 %209, i64 %220, i64 64
  %284 = load double, ptr %283, align 8, !tbaa !11
  %285 = fsub double %282, %284
  %286 = getelementptr inbounds [65 x double], ptr %6, i64 %209, i64 %219
  %287 = load double, ptr %286, align 8, !tbaa !11
  %288 = fadd double %285, %287
  %289 = getelementptr inbounds [65 x [65 x double]], ptr %15, i64 %209, i64 %219, i64 64
  %290 = load double, ptr %289, align 8, !tbaa !11
  %291 = fsub double %288, %290
  store double %291, ptr %221, align 8, !tbaa !11
  %292 = load double, ptr %222, align 8, !tbaa !11
  %293 = load double, ptr %223, align 8, !tbaa !11
  %294 = getelementptr inbounds [65 x [65 x double]], ptr %13, i64 %209, i64 %219, i64 64
  %295 = load double, ptr %294, align 8, !tbaa !11
  %296 = insertelement <2 x double> %207, double %292, i64 0
  %297 = insertelement <2 x double> poison, double %293, i64 0
  %298 = shufflevector <2 x double> %297, <2 x double> poison, <2 x i32> zeroinitializer
  %299 = fdiv <2 x double> %296, %298
  %300 = insertelement <2 x double> poison, double %295, i64 0
  %301 = insertelement <2 x double> %300, double %291, i64 1
  %302 = fmul <2 x double> %299, %301
  %303 = shufflevector <2 x double> %302, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %304 = fsub <2 x double> %302, %303
  %305 = extractelement <2 x double> %304, i64 0
  store double %305, ptr %224, align 8, !tbaa !11
  %306 = load double, ptr %26, align 8, !tbaa !11
  %307 = load double, ptr %27, align 8, !tbaa !11
  %308 = getelementptr inbounds [65 x [65 x double]], ptr %16, i64 %209, i64 %219, i64 64
  %309 = load double, ptr %308, align 8, !tbaa !11
  %310 = load double, ptr %210, align 8, !tbaa !11
  %311 = fmul double %205, %310
  %312 = fdiv double %311, %307
  %313 = fmul double %305, %312
  %314 = load double, ptr %211, align 8, !tbaa !11
  %315 = fmul double %205, %314
  %316 = load double, ptr %294, align 8, !tbaa !11
  %317 = insertelement <2 x double> poison, double %306, i64 0
  %318 = insertelement <2 x double> %317, double %315, i64 1
  %319 = insertelement <2 x double> poison, double %307, i64 0
  %320 = shufflevector <2 x double> %319, <2 x double> poison, <2 x i32> zeroinitializer
  %321 = fdiv <2 x double> %318, %320
  %322 = insertelement <2 x double> poison, double %309, i64 0
  %323 = insertelement <2 x double> %322, double %316, i64 1
  %324 = fmul <2 x double> %321, %323
  %325 = extractelement <2 x double> %324, i64 0
  %326 = fadd double %325, %313
  %327 = extractelement <2 x double> %324, i64 1
  %328 = fsub double %326, %327
  store double %328, ptr %308, align 8, !tbaa !11
  %329 = load double, ptr %224, align 8, !tbaa !11
  store double %329, ptr %294, align 8, !tbaa !11
  br label %330

330:                                              ; preds = %330, %280
  %331 = phi i64 [ 0, %280 ], [ %337, %330 ]
  %332 = getelementptr inbounds [65 x [65 x double]], ptr %14, i64 %209, i64 64, i64 %331
  %333 = load double, ptr %332, align 8, !tbaa !11
  %334 = getelementptr inbounds [65 x double], ptr %5, i64 %209, i64 %331
  %335 = load double, ptr %334, align 8, !tbaa !11
  %336 = fsub double %333, %335
  %337 = add nuw nsw i64 %331, 1
  %338 = getelementptr inbounds [65 x [65 x double]], ptr %15, i64 %209, i64 64, i64 %337
  %339 = load double, ptr %338, align 8, !tbaa !11
  %340 = fadd double %336, %339
  %341 = getelementptr inbounds [65 x [65 x double]], ptr %15, i64 %209, i64 64, i64 %331
  %342 = load double, ptr %341, align 8, !tbaa !11
  %343 = fsub double %340, %342
  store double %343, ptr %221, align 8, !tbaa !11
  %344 = load double, ptr %28, align 8, !tbaa !11
  %345 = load double, ptr %223, align 8, !tbaa !11
  %346 = getelementptr inbounds [65 x [65 x double]], ptr %13, i64 %209, i64 %219, i64 %331
  %347 = load double, ptr %346, align 8, !tbaa !11
  %348 = insertelement <2 x double> %207, double %344, i64 0
  %349 = insertelement <2 x double> poison, double %345, i64 0
  %350 = shufflevector <2 x double> %349, <2 x double> poison, <2 x i32> zeroinitializer
  %351 = fdiv <2 x double> %348, %350
  %352 = insertelement <2 x double> poison, double %347, i64 0
  %353 = insertelement <2 x double> %352, double %343, i64 1
  %354 = fmul <2 x double> %351, %353
  %355 = shufflevector <2 x double> %354, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %356 = fsub <2 x double> %354, %355
  %357 = extractelement <2 x double> %356, i64 0
  store double %357, ptr %224, align 8, !tbaa !11
  %358 = getelementptr inbounds double, ptr %19, i64 %331
  %359 = load double, ptr %358, align 8, !tbaa !11
  %360 = getelementptr inbounds double, ptr %20, i64 %331
  %361 = load double, ptr %360, align 8, !tbaa !11
  %362 = getelementptr inbounds [65 x [65 x double]], ptr %16, i64 %209, i64 64, i64 %331
  %363 = load double, ptr %362, align 8, !tbaa !11
  %364 = load double, ptr %210, align 8, !tbaa !11
  %365 = fmul double %205, %364
  %366 = fdiv double %365, %361
  %367 = fmul double %357, %366
  %368 = load double, ptr %211, align 8, !tbaa !11
  %369 = fmul double %205, %368
  %370 = getelementptr inbounds [65 x [65 x double]], ptr %13, i64 %209, i64 64, i64 %331
  %371 = load double, ptr %370, align 8, !tbaa !11
  %372 = insertelement <2 x double> poison, double %359, i64 0
  %373 = insertelement <2 x double> %372, double %369, i64 1
  %374 = insertelement <2 x double> poison, double %361, i64 0
  %375 = shufflevector <2 x double> %374, <2 x double> poison, <2 x i32> zeroinitializer
  %376 = fdiv <2 x double> %373, %375
  %377 = insertelement <2 x double> poison, double %363, i64 0
  %378 = insertelement <2 x double> %377, double %371, i64 1
  %379 = fmul <2 x double> %376, %378
  %380 = extractelement <2 x double> %379, i64 0
  %381 = fadd double %380, %367
  %382 = extractelement <2 x double> %379, i64 1
  %383 = fsub double %381, %382
  store double %383, ptr %362, align 8, !tbaa !11
  %384 = load double, ptr %224, align 8, !tbaa !11
  store double %384, ptr %370, align 8, !tbaa !11
  %385 = icmp eq i64 %337, 64
  br i1 %385, label %386, label %330, !llvm.loop !19

386:                                              ; preds = %330
  %387 = load double, ptr %212, align 8, !tbaa !11
  %388 = load double, ptr %213, align 8, !tbaa !11
  %389 = fsub double %387, %388
  %390 = load double, ptr %214, align 8, !tbaa !11
  %391 = fadd double %389, %390
  %392 = load double, ptr %215, align 8, !tbaa !11
  %393 = fsub double %391, %392
  store double %393, ptr %221, align 8, !tbaa !11
  %394 = load double, ptr %28, align 8, !tbaa !11
  %395 = load double, ptr %29, align 8, !tbaa !11
  %396 = load double, ptr %216, align 8, !tbaa !11
  %397 = insertelement <2 x double> %207, double %394, i64 0
  %398 = insertelement <2 x double> poison, double %395, i64 0
  %399 = shufflevector <2 x double> %398, <2 x double> poison, <2 x i32> zeroinitializer
  %400 = fdiv <2 x double> %397, %399
  %401 = insertelement <2 x double> poison, double %396, i64 0
  %402 = insertelement <2 x double> %401, double %393, i64 1
  %403 = fmul <2 x double> %400, %402
  %404 = shufflevector <2 x double> %403, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %405 = fsub <2 x double> %403, %404
  %406 = extractelement <2 x double> %405, i64 0
  store double %406, ptr %224, align 8, !tbaa !11
  %407 = load double, ptr %26, align 8, !tbaa !11
  %408 = load double, ptr %27, align 8, !tbaa !11
  %409 = load double, ptr %217, align 8, !tbaa !11
  %410 = load double, ptr %210, align 8, !tbaa !11
  %411 = fmul double %205, %410
  %412 = fdiv double %411, %408
  %413 = fmul double %406, %412
  %414 = load double, ptr %211, align 8, !tbaa !11
  %415 = fmul double %205, %414
  %416 = load double, ptr %216, align 8, !tbaa !11
  %417 = insertelement <2 x double> poison, double %407, i64 0
  %418 = insertelement <2 x double> %417, double %415, i64 1
  %419 = insertelement <2 x double> poison, double %408, i64 0
  %420 = shufflevector <2 x double> %419, <2 x double> poison, <2 x i32> zeroinitializer
  %421 = fdiv <2 x double> %418, %420
  %422 = insertelement <2 x double> poison, double %409, i64 0
  %423 = insertelement <2 x double> %422, double %416, i64 1
  %424 = fmul <2 x double> %421, %423
  %425 = extractelement <2 x double> %424, i64 0
  %426 = fadd double %425, %413
  %427 = extractelement <2 x double> %424, i64 1
  %428 = fsub double %426, %427
  store double %428, ptr %217, align 8, !tbaa !11
  %429 = load double, ptr %224, align 8, !tbaa !11
  store double %429, ptr %216, align 8, !tbaa !11
  %430 = icmp eq i64 %220, 64
  br i1 %430, label %431, label %218, !llvm.loop !20

431:                                              ; preds = %386
  %432 = add nuw nsw i64 %209, 1
  %433 = icmp eq i64 %432, 64
  br i1 %433, label %434, label %208, !llvm.loop !21

434:                                              ; preds = %459, %431
  %435 = phi i64 [ %460, %459 ], [ 0, %431 ]
  br label %436

436:                                              ; preds = %456, %434
  %437 = phi i64 [ 0, %434 ], [ %457, %456 ]
  br label %438

438:                                              ; preds = %453, %436
  %439 = phi i64 [ 0, %436 ], [ %454, %453 ]
  %440 = getelementptr inbounds [65 x [65 x double]], ptr %9, i64 %435, i64 %437, i64 %439
  %441 = load double, ptr %440, align 8, !tbaa !11
  %442 = getelementptr inbounds [65 x [65 x double]], ptr %13, i64 %435, i64 %437, i64 %439
  %443 = load double, ptr %442, align 8, !tbaa !11
  %444 = fsub double %441, %443
  %445 = tail call double @llvm.fabs.f64(double %444)
  %446 = fcmp ule double %445, 1.000000e-05
  br i1 %446, label %453, label %447

447:                                              ; preds = %438
  %.lcssa38 = phi i64 [ %435, %438 ]
  %.lcssa36 = phi i64 [ %437, %438 ]
  %.lcssa34 = phi i64 [ %439, %438 ]
  %.lcssa32 = phi double [ %441, %438 ]
  %.lcssa30 = phi double [ %443, %438 ]
  %448 = trunc i64 %.lcssa38 to i32
  %449 = trunc i64 %.lcssa36 to i32
  %450 = trunc i64 %.lcssa34 to i32
  %451 = load ptr, ptr @stderr, align 8, !tbaa !7
  %452 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %451, ptr noundef nonnull @.str.2, i32 noundef %448, i32 noundef %449, i32 noundef %450, double noundef %.lcssa32, i32 noundef %448, i32 noundef %449, i32 noundef %450, double noundef %.lcssa30, double noundef 1.000000e-05) #13
  br label %588

453:                                              ; preds = %438
  %454 = add nuw nsw i64 %439, 1
  %455 = icmp eq i64 %454, 65
  br i1 %455, label %456, label %438, !llvm.loop !22

456:                                              ; preds = %453
  %457 = add nuw nsw i64 %437, 1
  %458 = icmp eq i64 %457, 65
  br i1 %458, label %459, label %436, !llvm.loop !23

459:                                              ; preds = %456
  %460 = add nuw nsw i64 %435, 1
  %461 = icmp eq i64 %460, 65
  br i1 %461, label %462, label %434, !llvm.loop !24

462:                                              ; preds = %487, %459
  %.lcssa39 = phi i64 [ %.lcssa39, %487 ], [ %435, %459 ]
  %463 = phi i64 [ %488, %487 ], [ 0, %459 ]
  br label %464

464:                                              ; preds = %484, %462
  %465 = phi i64 [ 0, %462 ], [ %485, %484 ]
  br label %466

466:                                              ; preds = %481, %464
  %467 = phi i64 [ 0, %464 ], [ %482, %481 ]
  %468 = getelementptr inbounds [65 x [65 x double]], ptr %10, i64 %463, i64 %465, i64 %467
  %469 = load double, ptr %468, align 8, !tbaa !11
  %470 = getelementptr inbounds [65 x [65 x double]], ptr %14, i64 %463, i64 %465, i64 %467
  %471 = load double, ptr %470, align 8, !tbaa !11
  %472 = fsub double %469, %471
  %473 = tail call double @llvm.fabs.f64(double %472)
  %474 = fcmp ule double %473, 1.000000e-05
  br i1 %474, label %481, label %475

475:                                              ; preds = %466
  %.lcssa28 = phi i64 [ %463, %466 ]
  %.lcssa26 = phi i64 [ %465, %466 ]
  %.lcssa24 = phi i64 [ %467, %466 ]
  %.lcssa22 = phi double [ %469, %466 ]
  %.lcssa20 = phi double [ %471, %466 ]
  %476 = trunc i64 %.lcssa28 to i32
  %477 = trunc i64 %.lcssa26 to i32
  %478 = trunc i64 %.lcssa24 to i32
  %479 = load ptr, ptr @stderr, align 8, !tbaa !7
  %480 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %479, ptr noundef nonnull @.str.2, i32 noundef %476, i32 noundef %477, i32 noundef %478, double noundef %.lcssa22, i32 noundef %476, i32 noundef %477, i32 noundef %478, double noundef %.lcssa20, double noundef 1.000000e-05) #13
  br label %588

481:                                              ; preds = %466
  %482 = add nuw nsw i64 %467, 1
  %483 = icmp eq i64 %482, 65
  br i1 %483, label %484, label %466, !llvm.loop !22

484:                                              ; preds = %481
  %485 = add nuw nsw i64 %465, 1
  %486 = icmp eq i64 %485, 65
  br i1 %486, label %487, label %464, !llvm.loop !23

487:                                              ; preds = %484
  %488 = add nuw nsw i64 %463, 1
  %489 = icmp eq i64 %488, 65
  br i1 %489, label %490, label %462, !llvm.loop !24

490:                                              ; preds = %515, %487
  %.lcssa29 = phi i64 [ %.lcssa29, %515 ], [ %463, %487 ]
  %491 = phi i64 [ %516, %515 ], [ 0, %487 ]
  br label %492

492:                                              ; preds = %512, %490
  %493 = phi i64 [ 0, %490 ], [ %513, %512 ]
  br label %494

494:                                              ; preds = %509, %492
  %495 = phi i64 [ 0, %492 ], [ %510, %509 ]
  %496 = getelementptr inbounds [65 x [65 x double]], ptr %11, i64 %491, i64 %493, i64 %495
  %497 = load double, ptr %496, align 8, !tbaa !11
  %498 = getelementptr inbounds [65 x [65 x double]], ptr %15, i64 %491, i64 %493, i64 %495
  %499 = load double, ptr %498, align 8, !tbaa !11
  %500 = fsub double %497, %499
  %501 = tail call double @llvm.fabs.f64(double %500)
  %502 = fcmp ule double %501, 1.000000e-05
  br i1 %502, label %509, label %503

503:                                              ; preds = %494
  %.lcssa18 = phi i64 [ %491, %494 ]
  %.lcssa16 = phi i64 [ %493, %494 ]
  %.lcssa14 = phi i64 [ %495, %494 ]
  %.lcssa12 = phi double [ %497, %494 ]
  %.lcssa10 = phi double [ %499, %494 ]
  %504 = trunc i64 %.lcssa18 to i32
  %505 = trunc i64 %.lcssa16 to i32
  %506 = trunc i64 %.lcssa14 to i32
  %507 = load ptr, ptr @stderr, align 8, !tbaa !7
  %508 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %507, ptr noundef nonnull @.str.2, i32 noundef %504, i32 noundef %505, i32 noundef %506, double noundef %.lcssa12, i32 noundef %504, i32 noundef %505, i32 noundef %506, double noundef %.lcssa10, double noundef 1.000000e-05) #13
  br label %588

509:                                              ; preds = %494
  %510 = add nuw nsw i64 %495, 1
  %511 = icmp eq i64 %510, 65
  br i1 %511, label %512, label %494, !llvm.loop !22

512:                                              ; preds = %509
  %513 = add nuw nsw i64 %493, 1
  %514 = icmp eq i64 %513, 65
  br i1 %514, label %515, label %492, !llvm.loop !23

515:                                              ; preds = %512
  %516 = add nuw nsw i64 %491, 1
  %517 = icmp eq i64 %516, 65
  br i1 %517, label %518, label %490, !llvm.loop !24

518:                                              ; preds = %543, %515
  %.lcssa19 = phi i64 [ %.lcssa19, %543 ], [ %491, %515 ]
  %519 = phi i64 [ %544, %543 ], [ 0, %515 ]
  br label %520

520:                                              ; preds = %540, %518
  %521 = phi i64 [ 0, %518 ], [ %541, %540 ]
  br label %522

522:                                              ; preds = %537, %520
  %523 = phi i64 [ 0, %520 ], [ %538, %537 ]
  %524 = getelementptr inbounds [65 x [65 x double]], ptr %12, i64 %519, i64 %521, i64 %523
  %525 = load double, ptr %524, align 8, !tbaa !11
  %526 = getelementptr inbounds [65 x [65 x double]], ptr %16, i64 %519, i64 %521, i64 %523
  %527 = load double, ptr %526, align 8, !tbaa !11
  %528 = fsub double %525, %527
  %529 = tail call double @llvm.fabs.f64(double %528)
  %530 = fcmp ule double %529, 1.000000e-05
  br i1 %530, label %537, label %531

531:                                              ; preds = %522
  %.lcssa8 = phi i64 [ %519, %522 ]
  %.lcssa6 = phi i64 [ %521, %522 ]
  %.lcssa4 = phi i64 [ %523, %522 ]
  %.lcssa2 = phi double [ %525, %522 ]
  %.lcssa = phi double [ %527, %522 ]
  %532 = trunc i64 %.lcssa8 to i32
  %533 = trunc i64 %.lcssa6 to i32
  %534 = trunc i64 %.lcssa4 to i32
  %535 = load ptr, ptr @stderr, align 8, !tbaa !7
  %536 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %535, ptr noundef nonnull @.str.2, i32 noundef %532, i32 noundef %533, i32 noundef %534, double noundef %.lcssa2, i32 noundef %532, i32 noundef %533, i32 noundef %534, double noundef %.lcssa, double noundef 1.000000e-05) #13
  br label %588

537:                                              ; preds = %522
  %538 = add nuw nsw i64 %523, 1
  %539 = icmp eq i64 %538, 65
  br i1 %539, label %540, label %522, !llvm.loop !22

540:                                              ; preds = %537
  %541 = add nuw nsw i64 %521, 1
  %542 = icmp eq i64 %541, 65
  br i1 %542, label %543, label %520, !llvm.loop !23

543:                                              ; preds = %540
  %544 = add nuw nsw i64 %519, 1
  %545 = icmp eq i64 %544, 65
  br i1 %545, label %546, label %518, !llvm.loop !24

546:                                              ; preds = %582, %543
  %.lcssa9 = phi i64 [ %.lcssa9, %582 ], [ %519, %543 ]
  %547 = phi i64 [ %583, %582 ], [ 0, %543 ]
  %548 = shl nsw i64 %547, 6
  br label %549

549:                                              ; preds = %579, %546
  %550 = phi i64 [ 0, %546 ], [ %580, %579 ]
  %551 = add nuw nsw i64 %550, %548
  %552 = trunc i64 %551 to i32
  %553 = urem i32 %552, 20
  %554 = icmp eq i32 %553, 0
  br label %555

555:                                              ; preds = %576, %549
  %556 = phi i64 [ 0, %549 ], [ %577, %576 ]
  %557 = load ptr, ptr @stderr, align 8, !tbaa !7
  %558 = getelementptr inbounds [65 x [65 x double]], ptr %13, i64 %547, i64 %550, i64 %556
  %559 = load double, ptr %558, align 8, !tbaa !11
  %560 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %557, ptr noundef nonnull @.str.3, double noundef %559) #13
  %561 = load ptr, ptr @stderr, align 8, !tbaa !7
  %562 = getelementptr inbounds [65 x [65 x double]], ptr %14, i64 %547, i64 %550, i64 %556
  %563 = load double, ptr %562, align 8, !tbaa !11
  %564 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %561, ptr noundef nonnull @.str.3, double noundef %563) #13
  %565 = load ptr, ptr @stderr, align 8, !tbaa !7
  %566 = getelementptr inbounds [65 x [65 x double]], ptr %15, i64 %547, i64 %550, i64 %556
  %567 = load double, ptr %566, align 8, !tbaa !11
  %568 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %565, ptr noundef nonnull @.str.3, double noundef %567) #13
  %569 = load ptr, ptr @stderr, align 8, !tbaa !7
  %570 = getelementptr inbounds [65 x [65 x double]], ptr %16, i64 %547, i64 %550, i64 %556
  %571 = load double, ptr %570, align 8, !tbaa !11
  %572 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %569, ptr noundef nonnull @.str.3, double noundef %571) #13
  br i1 %554, label %573, label %576

573:                                              ; preds = %555
  %574 = load ptr, ptr @stderr, align 8, !tbaa !7
  %575 = tail call i32 @fputc(i32 10, ptr %574)
  br label %576

576:                                              ; preds = %573, %555
  %577 = add nuw nsw i64 %556, 1
  %578 = icmp eq i64 %577, 65
  br i1 %578, label %579, label %555, !llvm.loop !25

579:                                              ; preds = %576
  %580 = add nuw nsw i64 %550, 1
  %581 = icmp eq i64 %580, 65
  br i1 %581, label %582, label %549, !llvm.loop !26

582:                                              ; preds = %579
  %583 = add nuw nsw i64 %547, 1
  %584 = icmp eq i64 %583, 65
  br i1 %584, label %585, label %546, !llvm.loop !27

585:                                              ; preds = %582
  %586 = load ptr, ptr @stderr, align 8, !tbaa !7
  %587 = tail call i32 @fputc(i32 10, ptr %586)
  tail call void @free(ptr noundef %5) #9
  tail call void @free(ptr noundef %6) #9
  tail call void @free(ptr noundef %7) #9
  tail call void @free(ptr noundef %8) #9
  tail call void @free(ptr noundef %9) #9
  tail call void @free(ptr noundef %10) #9
  tail call void @free(ptr noundef %11) #9
  tail call void @free(ptr noundef %12) #9
  tail call void @free(ptr noundef nonnull %13) #9
  tail call void @free(ptr noundef nonnull %14) #9
  tail call void @free(ptr noundef nonnull %15) #9
  tail call void @free(ptr noundef nonnull %16) #9
  tail call void @free(ptr noundef %17) #9
  tail call void @free(ptr noundef %18) #9
  tail call void @free(ptr noundef %19) #9
  tail call void @free(ptr noundef %20) #9
  tail call void @free(ptr noundef %21) #9
  tail call void @free(ptr noundef %22) #9
  br label %588

588:                                              ; preds = %585, %531, %503, %475, %447
  %589 = phi i32 [ 0, %585 ], [ 1, %447 ], [ 1, %475 ], [ 1, %503 ], [ 1, %531 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #8
  ret i32 %589
}

; Function Attrs: nofree norecurse nosync nounwind optsize memory(argmem: write) uwtable
define internal fastcc void @init_array(ptr nocapture noundef writeonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5, ptr nocapture noundef writeonly %6, ptr nocapture noundef writeonly %7, ptr nocapture noundef writeonly %8, ptr nocapture noundef writeonly %9, ptr nocapture noundef writeonly %10, ptr nocapture noundef writeonly %11, ptr nocapture noundef writeonly %12) unnamed_addr #5 {
  store double 2.341000e+03, ptr %0, align 8, !tbaa !11
  store double 4.200000e+01, ptr %1, align 8, !tbaa !11
  br label %14

14:                                               ; preds = %14, %13
  %15 = phi i64 [ 0, %13 ], [ %24, %14 ]
  %16 = trunc i64 %15 to i32
  %17 = sitofp i32 %16 to double
  %18 = fadd double %17, 1.000000e+00
  %19 = fmul double %18, 1.562500e-02
  %20 = getelementptr inbounds double, ptr %7, i64 %15
  store double %19, ptr %20, align 8, !tbaa !11
  %21 = fadd double %17, 2.000000e+00
  %22 = fmul double %21, 1.562500e-02
  %23 = getelementptr inbounds double, ptr %8, i64 %15
  store double %22, ptr %23, align 8, !tbaa !11
  %24 = add nuw nsw i64 %15, 1
  %25 = icmp eq i64 %24, 65
  br i1 %25, label %26, label %14, !llvm.loop !28

26:                                               ; preds = %26, %14
  %27 = phi i64 [ %36, %26 ], [ 0, %14 ]
  %28 = trunc i64 %27 to i32
  %29 = sitofp i32 %28 to double
  %30 = fadd double %29, 3.000000e+00
  %31 = fmul double %30, 1.562500e-02
  %32 = getelementptr inbounds double, ptr %9, i64 %27
  store double %31, ptr %32, align 8, !tbaa !11
  %33 = fadd double %29, 4.000000e+00
  %34 = fmul double %33, 1.562500e-02
  %35 = getelementptr inbounds double, ptr %10, i64 %27
  store double %34, ptr %35, align 8, !tbaa !11
  %36 = add nuw nsw i64 %27, 1
  %37 = icmp eq i64 %36, 65
  br i1 %37, label %38, label %26, !llvm.loop !29

38:                                               ; preds = %38, %26
  %39 = phi i64 [ %48, %38 ], [ 0, %26 ]
  %40 = trunc i64 %39 to i32
  %41 = sitofp i32 %40 to double
  %42 = fadd double %41, 5.000000e+00
  %43 = fmul double %42, 1.562500e-02
  %44 = getelementptr inbounds double, ptr %11, i64 %39
  store double %43, ptr %44, align 8, !tbaa !11
  %45 = fadd double %41, 6.000000e+00
  %46 = fmul double %45, 1.562500e-02
  %47 = getelementptr inbounds double, ptr %12, i64 %39
  store double %46, ptr %47, align 8, !tbaa !11
  %48 = add nuw nsw i64 %39, 1
  %49 = icmp eq i64 %48, 65
  br i1 %49, label %50, label %38, !llvm.loop !30

50:                                               ; preds = %102, %38
  %51 = phi i64 [ %103, %102 ], [ 0, %38 ]
  %52 = trunc i64 %51 to i32
  %53 = sitofp i32 %52 to double
  br label %56

54:                                               ; preds = %84
  %55 = icmp eq i64 %58, 65
  br i1 %55, label %102, label %56, !llvm.loop !31

56:                                               ; preds = %54, %50
  %57 = phi i64 [ 0, %50 ], [ %58, %54 ]
  %58 = add nuw nsw i64 %57, 1
  %59 = trunc i64 %58 to i32
  %60 = sitofp i32 %59 to double
  %61 = fmul double %53, %60
  %62 = fadd double %61, 1.000000e+01
  %63 = fmul double %62, 1.562500e-02
  %64 = getelementptr inbounds [65 x double], ptr %3, i64 %51, i64 %57
  store double %63, ptr %64, align 8, !tbaa !11
  %65 = trunc i64 %57 to i32
  %66 = add i32 %65, 2
  %67 = sitofp i32 %66 to double
  %68 = fmul double %53, %67
  %69 = fadd double %68, 1.100000e+01
  %70 = fmul double %69, 1.562500e-02
  %71 = getelementptr inbounds [65 x double], ptr %2, i64 %51, i64 %57
  store double %70, ptr %71, align 8, !tbaa !11
  %72 = trunc i64 %57 to i32
  %73 = add i32 %72, 3
  %74 = sitofp i32 %73 to double
  %75 = fmul double %53, %74
  %76 = trunc i64 %57 to i32
  %77 = add i32 %76, 4
  %78 = sitofp i32 %77 to double
  %79 = fmul double %53, %78
  %80 = trunc i64 %57 to i32
  %81 = add i32 %80, 5
  %82 = sitofp i32 %81 to double
  %83 = fmul double %53, %82
  br label %84

84:                                               ; preds = %84, %56
  %85 = phi i64 [ 0, %56 ], [ %100, %84 ]
  %86 = trunc i64 %85 to i32
  %87 = sitofp i32 %86 to double
  %88 = fadd double %75, %87
  %89 = fadd double %88, 1.000000e+00
  %90 = fmul double %89, 1.562500e-02
  %91 = getelementptr inbounds [65 x [65 x double]], ptr %4, i64 %51, i64 %57, i64 %85
  store double %90, ptr %91, align 8, !tbaa !11
  %92 = fadd double %79, %87
  %93 = fadd double %92, 2.000000e+00
  %94 = fmul double %93, 1.562500e-02
  %95 = getelementptr inbounds [65 x [65 x double]], ptr %5, i64 %51, i64 %57, i64 %85
  store double %94, ptr %95, align 8, !tbaa !11
  %96 = fadd double %83, %87
  %97 = fadd double %96, 3.000000e+00
  %98 = fmul double %97, 1.562500e-02
  %99 = getelementptr inbounds [65 x [65 x double]], ptr %6, i64 %51, i64 %57, i64 %85
  store double %98, ptr %99, align 8, !tbaa !11
  %100 = add nuw nsw i64 %85, 1
  %101 = icmp eq i64 %100, 65
  br i1 %101, label %54, label %84, !llvm.loop !32

102:                                              ; preds = %54
  %103 = add nuw nsw i64 %51, 1
  %104 = icmp eq i64 %103, 65
  br i1 %104, label %105, label %50, !llvm.loop !33

105:                                              ; preds = %102
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #6

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #7

attributes #0 = { nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
attributes #4 = { noreturn nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind optsize memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }
attributes #9 = { nounwind optsize }
attributes #10 = { cold }
attributes #11 = { noreturn nounwind optsize }
attributes #12 = { optsize }
attributes #13 = { cold optsize }

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
!12 = !{!"double", !9, i64 0}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.mustprogress"}
!15 = distinct !{!15, !14}
!16 = distinct !{!16, !14}
!17 = distinct !{!17, !14}
!18 = distinct !{!18, !14}
!19 = distinct !{!19, !14}
!20 = distinct !{!20, !14}
!21 = distinct !{!21, !14}
!22 = distinct !{!22, !14}
!23 = distinct !{!23, !14}
!24 = distinct !{!24, !14}
!25 = distinct !{!25, !14}
!26 = distinct !{!26, !14}
!27 = distinct !{!27, !14}
!28 = distinct !{!28, !14}
!29 = distinct !{!29, !14}
!30 = distinct !{!30, !14}
!31 = distinct !{!31, !14}
!32 = distinct !{!32, !14}
!33 = distinct !{!33, !14}
