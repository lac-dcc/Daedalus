; ModuleID = 'AMGmk.e.bc.ll'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i64, i64 }
%struct.hypre_Vector = type { ptr, i32, i32, i32, i32, i32, i32 }
%struct.hypre_CSRMatrix = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32 }

@hypre__global_error = internal unnamed_addr global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Out of memory trying to allocate %d bytes\0A\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@totalWallTime = internal unnamed_addr global double 0.000000e+00, align 8
@totalCPUTime = internal unnamed_addr global double 0.000000e+00, align 8
@.str.7 = private unnamed_addr constant [22 x i8] c" \0A Matvec: error: %e\0A\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c" \0A Relax: error: %e\0A\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c" \0A Axpy: error: %e\0A\00", align 1
@str.11 = private unnamed_addr constant [35 x i8] c"//  Sequoia Benchmark Version 1.0 \00", align 1
@str.16 = private unnamed_addr constant [12 x i8] c"//   MATVEC\00", align 1
@str.21 = private unnamed_addr constant [11 x i8] c"//   Relax\00", align 1
@str.26 = private unnamed_addr constant [10 x i8] c"//   Axpy\00", align 1
@str.27 = private unnamed_addr constant [4 x i8] c"// \00", align 1
@str.28 = private unnamed_addr constant [16 x i8] c"//------------ \00", align 1

; Function Attrs: nounwind optsize uwtable
define dso_local i32 @main(i32 noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = alloca %struct.timeval, align 8
  %4 = alloca %struct.timeval, align 8
  %5 = alloca %struct.timeval, align 8
  %6 = alloca %struct.timeval, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca %struct.timeval, align 8
  %11 = alloca %struct.timeval, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca %struct.timeval, align 8
  %16 = alloca %struct.timeval, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %15) #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %16) #12
  %17 = tail call i32 @putchar(i32 10)
  %18 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.28)
  %19 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.27)
  %20 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.11)
  %21 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.27)
  %22 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.28)
  %23 = call i32 @gettimeofday(ptr noundef nonnull %15, ptr noundef null) #13
  %24 = tail call i64 @clock() #13
  store double 0.000000e+00, ptr @totalWallTime, align 8, !tbaa !7
  store double 0.000000e+00, ptr @totalCPUTime, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #12
  %25 = tail call fastcc ptr @hypre_CAlloc(i32 noundef 4, i32 noundef 8) #13
  store <2 x double> <double 6.000000e+00, double -1.000000e+00>, ptr %25, align 8, !tbaa !7
  %26 = getelementptr inbounds double, ptr %25, i64 2
  store <2 x double> <double -1.000000e+00, double -1.000000e+00>, ptr %26, align 8, !tbaa !7
  %27 = call fastcc ptr @GenerateSeqLaplacian(ptr noundef nonnull %25, ptr noundef nonnull %13, ptr noundef nonnull %12, ptr noundef nonnull %14) #13
  %28 = load ptr, ptr %12, align 8, !tbaa !11
  %29 = load ptr, ptr %28, align 8, !tbaa !13
  %30 = getelementptr inbounds %struct.hypre_Vector, ptr %28, i64 0, i32 1
  %31 = load i32, ptr %30, align 8, !tbaa !16
  %32 = getelementptr inbounds %struct.hypre_Vector, ptr %28, i64 0, i32 3
  %33 = load i32, ptr %32, align 8, !tbaa !17
  %34 = mul nsw i32 %33, %31
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %59

36:                                               ; preds = %2
  %37 = zext i32 %34 to i64
  %38 = add nuw nsw i64 %37, 1
  %39 = and i64 %38, 8589934590
  %40 = add nsw i64 %37, -1
  %41 = insertelement <2 x i64> poison, i64 %40, i64 0
  %42 = shufflevector <2 x i64> %41, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %43

43:                                               ; preds = %55, %36
  %44 = phi i64 [ 0, %36 ], [ %56, %55 ]
  %45 = phi <2 x i64> [ <i64 0, i64 1>, %36 ], [ %57, %55 ]
  %46 = icmp ule <2 x i64> %45, %42
  %47 = extractelement <2 x i1> %46, i64 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %43
  %49 = getelementptr inbounds double, ptr %29, i64 %44
  store double 1.000000e+00, ptr %49, align 8, !tbaa !7
  br label %50

50:                                               ; preds = %48, %43
  %51 = extractelement <2 x i1> %46, i64 1
  br i1 %51, label %52, label %55

52:                                               ; preds = %50
  %53 = or i64 %44, 1
  %54 = getelementptr inbounds double, ptr %29, i64 %53
  store double 1.000000e+00, ptr %54, align 8, !tbaa !7
  br label %55

55:                                               ; preds = %52, %50
  %56 = add i64 %44, 2
  %57 = add <2 x i64> %45, <i64 2, i64 2>
  %58 = icmp eq i64 %56, %39
  br i1 %58, label %59, label %43, !llvm.loop !18

59:                                               ; preds = %55, %2
  %60 = load ptr, ptr %13, align 8, !tbaa !11
  %61 = load ptr, ptr %60, align 8, !tbaa !13
  %62 = getelementptr inbounds %struct.hypre_Vector, ptr %60, i64 0, i32 1
  %63 = load i32, ptr %62, align 8, !tbaa !16
  %64 = getelementptr inbounds %struct.hypre_Vector, ptr %60, i64 0, i32 3
  %65 = load i32, ptr %64, align 8, !tbaa !17
  %66 = mul nsw i32 %65, %63
  %67 = icmp sgt i32 %66, 0
  br i1 %67, label %68, label %91

68:                                               ; preds = %59
  %69 = zext i32 %66 to i64
  %70 = add nuw nsw i64 %69, 1
  %71 = and i64 %70, 8589934590
  %72 = add nsw i64 %69, -1
  %73 = insertelement <2 x i64> poison, i64 %72, i64 0
  %74 = shufflevector <2 x i64> %73, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %75

75:                                               ; preds = %87, %68
  %76 = phi i64 [ 0, %68 ], [ %88, %87 ]
  %77 = phi <2 x i64> [ <i64 0, i64 1>, %68 ], [ %89, %87 ]
  %78 = icmp ule <2 x i64> %77, %74
  %79 = extractelement <2 x i1> %78, i64 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %75
  %81 = getelementptr inbounds double, ptr %61, i64 %76
  store double 0.000000e+00, ptr %81, align 8, !tbaa !7
  br label %82

82:                                               ; preds = %80, %75
  %83 = extractelement <2 x i1> %78, i64 1
  br i1 %83, label %84, label %87

84:                                               ; preds = %82
  %85 = or i64 %76, 1
  %86 = getelementptr inbounds double, ptr %61, i64 %85
  store double 0.000000e+00, ptr %86, align 8, !tbaa !7
  br label %87

87:                                               ; preds = %84, %82
  %88 = add i64 %76, 2
  %89 = add <2 x i64> %77, <i64 2, i64 2>
  %90 = icmp eq i64 %88, %71
  br i1 %90, label %91, label %75, !llvm.loop !18

91:                                               ; preds = %87, %59
  %92 = call i32 @gettimeofday(ptr noundef nonnull %10, ptr noundef null) #13
  %93 = tail call i64 @clock() #13
  %94 = load ptr, ptr %27, align 8, !tbaa !22
  %95 = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %27, i64 0, i32 1
  %96 = load ptr, ptr %95, align 8, !tbaa !24
  %97 = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %27, i64 0, i32 2
  %98 = load ptr, ptr %97, align 8, !tbaa !25
  %99 = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %27, i64 0, i32 3
  %100 = load i32, ptr %99, align 8, !tbaa !26
  %101 = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %27, i64 0, i32 6
  %102 = load ptr, ptr %101, align 8, !tbaa !27
  %103 = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %27, i64 0, i32 7
  %104 = load i32, ptr %103, align 8, !tbaa !28
  %105 = load ptr, ptr %28, align 8, !tbaa !13
  %106 = load ptr, ptr %60, align 8, !tbaa !13
  %107 = load i32, ptr %32, align 8, !tbaa !17
  %108 = getelementptr inbounds %struct.hypre_Vector, ptr %60, i64 0, i32 6
  %109 = load i32, ptr %108, align 4, !tbaa !29
  %110 = getelementptr inbounds %struct.hypre_Vector, ptr %60, i64 0, i32 5
  %111 = load i32, ptr %110, align 8, !tbaa !30
  %112 = getelementptr inbounds %struct.hypre_Vector, ptr %28, i64 0, i32 6
  %113 = load i32, ptr %112, align 4, !tbaa !29
  %114 = getelementptr inbounds %struct.hypre_Vector, ptr %28, i64 0, i32 5
  %115 = load i32, ptr %114, align 8, !tbaa !30
  %116 = mul nsw i32 %107, %100
  %117 = icmp sgt i32 %116, 0
  %118 = sitofp i32 %104 to double
  %119 = sitofp i32 %100 to double
  %120 = fmul double %119, 0x3FE6666666666666
  %121 = fcmp ogt double %120, %118
  %122 = zext i32 %116 to i64
  %123 = shl nuw nsw i64 %122, 3
  %124 = icmp sgt i32 %100, 0
  %125 = icmp eq i32 %107, 1
  %126 = icmp sgt i32 %107, 0
  %127 = sext i32 %111 to i64
  %128 = sext i32 %115 to i64
  %129 = sext i32 %109 to i64
  %130 = zext i32 %100 to i64
  %131 = zext i32 %107 to i64
  %132 = icmp sgt i32 %104, 0
  %133 = zext i32 %104 to i64
  br label %134

134:                                              ; preds = %289, %91
  %135 = phi i32 [ 0, %91 ], [ %290, %289 ]
  br i1 %117, label %136, label %137

136:                                              ; preds = %134
  tail call void @llvm.memset.p0.i64(ptr align 8 %106, i8 0, i64 %123, i1 false), !tbaa !7
  br label %137

137:                                              ; preds = %136, %134
  br i1 %121, label %139, label %138

138:                                              ; preds = %137
  br i1 %124, label %217, label %289

139:                                              ; preds = %137
  br i1 %132, label %140, label %289

140:                                              ; preds = %214, %139
  %141 = phi i64 [ %215, %214 ], [ 0, %139 ]
  %142 = getelementptr inbounds i32, ptr %102, i64 %141
  %143 = load i32, ptr %142, align 4, !tbaa !31
  br i1 %125, label %158, label %144

144:                                              ; preds = %140
  br i1 %126, label %145, label %214

145:                                              ; preds = %144
  %146 = mul nsw i32 %143, %109
  %147 = sext i32 %143 to i64
  %148 = getelementptr inbounds i32, ptr %96, i64 %147
  %149 = load i32, ptr %148, align 4, !tbaa !31
  %150 = add nsw i32 %143, 1
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, ptr %96, i64 %151
  %153 = load i32, ptr %152, align 4, !tbaa !31
  %154 = icmp slt i32 %149, %153
  %155 = sext i32 %149 to i64
  %156 = sext i32 %146 to i64
  %157 = sext i32 %153 to i64
  br label %187

158:                                              ; preds = %140
  %159 = sext i32 %143 to i64
  %160 = getelementptr inbounds double, ptr %106, i64 %159
  %161 = load double, ptr %160, align 8, !tbaa !7
  %162 = getelementptr inbounds i32, ptr %96, i64 %159
  %163 = load i32, ptr %162, align 4, !tbaa !31
  %164 = add nsw i32 %143, 1
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i32, ptr %96, i64 %165
  %167 = load i32, ptr %166, align 4, !tbaa !31
  %168 = icmp slt i32 %163, %167
  br i1 %168, label %169, label %185

169:                                              ; preds = %158
  %170 = sext i32 %163 to i64
  %171 = sext i32 %167 to i64
  br label %172

172:                                              ; preds = %172, %169
  %173 = phi i64 [ %170, %169 ], [ %183, %172 ]
  %174 = phi double [ %161, %169 ], [ %182, %172 ]
  %175 = getelementptr inbounds double, ptr %94, i64 %173
  %176 = load double, ptr %175, align 8, !tbaa !7
  %177 = getelementptr inbounds i32, ptr %98, i64 %173
  %178 = load i32, ptr %177, align 4, !tbaa !31
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds double, ptr %105, i64 %179
  %181 = load double, ptr %180, align 8, !tbaa !7
  %182 = tail call double @llvm.fmuladd.f64(double %176, double %181, double %174)
  %183 = add nsw i64 %173, 1
  %184 = icmp eq i64 %183, %171
  br i1 %184, label %185, label %172, !llvm.loop !32

185:                                              ; preds = %172, %158
  %186 = phi double [ %161, %158 ], [ %182, %172 ]
  store double %186, ptr %160, align 8, !tbaa !7
  br label %214

187:                                              ; preds = %210, %145
  %188 = phi i64 [ 0, %145 ], [ %212, %210 ]
  %189 = mul nsw i64 %188, %127
  %190 = add nsw i64 %189, %156
  %191 = getelementptr inbounds double, ptr %106, i64 %190
  %192 = load double, ptr %191, align 8, !tbaa !7
  br i1 %154, label %193, label %210

193:                                              ; preds = %187
  %194 = mul nsw i64 %188, %128
  br label %195

195:                                              ; preds = %195, %193
  %196 = phi i64 [ %155, %193 ], [ %208, %195 ]
  %197 = phi double [ %192, %193 ], [ %207, %195 ]
  %198 = getelementptr inbounds double, ptr %94, i64 %196
  %199 = load double, ptr %198, align 8, !tbaa !7
  %200 = getelementptr inbounds i32, ptr %98, i64 %196
  %201 = load i32, ptr %200, align 4, !tbaa !31
  %202 = mul nsw i32 %201, %113
  %203 = sext i32 %202 to i64
  %204 = add nsw i64 %194, %203
  %205 = getelementptr inbounds double, ptr %105, i64 %204
  %206 = load double, ptr %205, align 8, !tbaa !7
  %207 = tail call double @llvm.fmuladd.f64(double %199, double %206, double %197)
  %208 = add nsw i64 %196, 1
  %209 = icmp eq i64 %208, %157
  br i1 %209, label %210, label %195, !llvm.loop !33

210:                                              ; preds = %195, %187
  %211 = phi double [ %192, %187 ], [ %207, %195 ]
  store double %211, ptr %191, align 8, !tbaa !7
  %212 = add nuw nsw i64 %188, 1
  %213 = icmp eq i64 %212, %131
  br i1 %213, label %214, label %187, !llvm.loop !34

214:                                              ; preds = %210, %185, %144
  %215 = add nuw nsw i64 %141, 1
  %216 = icmp eq i64 %215, %133
  br i1 %216, label %289, label %140, !llvm.loop !35

217:                                              ; preds = %286, %138
  %218 = phi i64 [ %287, %286 ], [ 0, %138 ]
  br i1 %125, label %232, label %219

219:                                              ; preds = %217
  br i1 %126, label %222, label %220

220:                                              ; preds = %219
  %221 = add nuw nsw i64 %218, 1
  br label %286

222:                                              ; preds = %219
  %223 = mul nsw i64 %218, %129
  %224 = getelementptr inbounds i32, ptr %96, i64 %218
  %225 = load i32, ptr %224, align 4, !tbaa !31
  %226 = add nuw nsw i64 %218, 1
  %227 = getelementptr inbounds i32, ptr %96, i64 %226
  %228 = load i32, ptr %227, align 4, !tbaa !31
  %229 = icmp slt i32 %225, %228
  %230 = sext i32 %225 to i64
  %231 = sext i32 %228 to i64
  br label %259

232:                                              ; preds = %217
  %233 = getelementptr inbounds double, ptr %106, i64 %218
  %234 = load double, ptr %233, align 8, !tbaa !7
  %235 = getelementptr inbounds i32, ptr %96, i64 %218
  %236 = load i32, ptr %235, align 4, !tbaa !31
  %237 = add nuw nsw i64 %218, 1
  %238 = getelementptr inbounds i32, ptr %96, i64 %237
  %239 = load i32, ptr %238, align 4, !tbaa !31
  %240 = icmp slt i32 %236, %239
  br i1 %240, label %241, label %257

241:                                              ; preds = %232
  %242 = sext i32 %236 to i64
  %243 = sext i32 %239 to i64
  br label %244

244:                                              ; preds = %244, %241
  %245 = phi i64 [ %242, %241 ], [ %255, %244 ]
  %246 = phi double [ %234, %241 ], [ %254, %244 ]
  %247 = getelementptr inbounds double, ptr %94, i64 %245
  %248 = load double, ptr %247, align 8, !tbaa !7
  %249 = getelementptr inbounds i32, ptr %98, i64 %245
  %250 = load i32, ptr %249, align 4, !tbaa !31
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds double, ptr %105, i64 %251
  %253 = load double, ptr %252, align 8, !tbaa !7
  %254 = tail call double @llvm.fmuladd.f64(double %248, double %253, double %246)
  %255 = add nsw i64 %245, 1
  %256 = icmp eq i64 %255, %243
  br i1 %256, label %257, label %244, !llvm.loop !36

257:                                              ; preds = %244, %232
  %258 = phi double [ %234, %232 ], [ %254, %244 ]
  store double %258, ptr %233, align 8, !tbaa !7
  br label %286

259:                                              ; preds = %282, %222
  %260 = phi i64 [ 0, %222 ], [ %284, %282 ]
  %261 = mul nsw i64 %260, %127
  %262 = add nsw i64 %261, %223
  %263 = getelementptr inbounds double, ptr %106, i64 %262
  %264 = load double, ptr %263, align 8, !tbaa !7
  br i1 %229, label %265, label %282

265:                                              ; preds = %259
  %266 = mul nsw i64 %260, %128
  br label %267

267:                                              ; preds = %267, %265
  %268 = phi i64 [ %230, %265 ], [ %280, %267 ]
  %269 = phi double [ %264, %265 ], [ %279, %267 ]
  %270 = getelementptr inbounds double, ptr %94, i64 %268
  %271 = load double, ptr %270, align 8, !tbaa !7
  %272 = getelementptr inbounds i32, ptr %98, i64 %268
  %273 = load i32, ptr %272, align 4, !tbaa !31
  %274 = mul nsw i32 %273, %113
  %275 = sext i32 %274 to i64
  %276 = add nsw i64 %266, %275
  %277 = getelementptr inbounds double, ptr %105, i64 %276
  %278 = load double, ptr %277, align 8, !tbaa !7
  %279 = tail call double @llvm.fmuladd.f64(double %271, double %278, double %269)
  %280 = add nsw i64 %268, 1
  %281 = icmp eq i64 %280, %231
  br i1 %281, label %282, label %267, !llvm.loop !37

282:                                              ; preds = %267, %259
  %283 = phi double [ %264, %259 ], [ %279, %267 ]
  store double %283, ptr %263, align 8, !tbaa !7
  %284 = add nuw nsw i64 %260, 1
  %285 = icmp eq i64 %284, %131
  br i1 %285, label %286, label %259, !llvm.loop !38

286:                                              ; preds = %282, %257, %220
  %287 = phi i64 [ %221, %220 ], [ %237, %257 ], [ %226, %282 ]
  %288 = icmp eq i64 %287, %130
  br i1 %288, label %289, label %217, !llvm.loop !39

289:                                              ; preds = %286, %214, %139, %138
  %290 = add nuw nsw i32 %135, 1
  %291 = icmp eq i32 %290, 2000
  br i1 %291, label %292, label %134, !llvm.loop !40

292:                                              ; preds = %289
  %293 = call i32 @gettimeofday(ptr noundef nonnull %11, ptr noundef null) #13
  %294 = tail call i64 @clock() #13
  %295 = load i64, ptr %11, align 8, !tbaa !41
  %296 = load i64, ptr %10, align 8, !tbaa !41
  %297 = sub nsw i64 %295, %296
  %298 = sitofp i64 %297 to double
  %299 = getelementptr inbounds %struct.timeval, ptr %11, i64 0, i32 1
  %300 = load i64, ptr %299, align 8, !tbaa !44
  %301 = getelementptr inbounds %struct.timeval, ptr %10, i64 0, i32 1
  %302 = load i64, ptr %301, align 8, !tbaa !44
  %303 = sub nsw i64 %300, %302
  %304 = sitofp i64 %303 to double
  %305 = fdiv double %304, 1.000000e+06
  %306 = fadd double %305, %298
  %307 = load double, ptr @totalWallTime, align 8, !tbaa !7
  %308 = fadd double %307, %306
  store double %308, ptr @totalWallTime, align 8, !tbaa !7
  %309 = sub nsw i64 %294, %93
  %310 = sitofp i64 %309 to double
  %311 = fdiv double %310, 1.000000e+06
  %312 = load double, ptr @totalCPUTime, align 8, !tbaa !7
  %313 = fadd double %311, %312
  store double %313, ptr @totalCPUTime, align 8, !tbaa !7
  %314 = load ptr, ptr %60, align 8, !tbaa !13
  %315 = load ptr, ptr %14, align 8, !tbaa !11
  %316 = load ptr, ptr %315, align 8, !tbaa !13
  br label %317

317:                                              ; preds = %317, %292
  %318 = phi i64 [ 0, %292 ], [ %328, %317 ]
  %319 = phi double [ 0.000000e+00, %292 ], [ %327, %317 ]
  %320 = getelementptr inbounds double, ptr %314, i64 %318
  %321 = load double, ptr %320, align 8, !tbaa !7
  %322 = getelementptr inbounds double, ptr %316, i64 %318
  %323 = load double, ptr %322, align 8, !tbaa !7
  %324 = fsub double %321, %323
  %325 = tail call double @llvm.fabs.f64(double %324)
  %326 = fcmp ogt double %325, %319
  %327 = select i1 %326, double %325, double %319
  %328 = add nuw nsw i64 %318, 1
  %329 = icmp eq i64 %328, 125000
  br i1 %329, label %330, label %317, !llvm.loop !45

330:                                              ; preds = %317
  %.lcssa2 = phi double [ %327, %317 ]
  %331 = fcmp ogt double %.lcssa2, 0.000000e+00
  br i1 %331, label %332, label %334

332:                                              ; preds = %330
  %333 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, double noundef %.lcssa2) #14
  br label %334

334:                                              ; preds = %332, %330
  tail call void @free(ptr noundef nonnull %25) #13
  tail call fastcc void @hypre_CSRMatrixDestroy(ptr noundef nonnull %27) #13
  tail call fastcc void @hypre_SeqVectorDestroy(ptr noundef nonnull %28) #13
  tail call fastcc void @hypre_SeqVectorDestroy(ptr noundef nonnull %60) #13
  tail call fastcc void @hypre_SeqVectorDestroy(ptr noundef nonnull %315) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #12
  %335 = tail call i32 @putchar(i32 10)
  %336 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.28)
  %337 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.27)
  %338 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.16)
  %339 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.27)
  %340 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.28)
  store double 0.000000e+00, ptr @totalWallTime, align 8, !tbaa !7
  store double 0.000000e+00, ptr @totalCPUTime, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #12
  %341 = tail call fastcc ptr @hypre_CAlloc(i32 noundef 4, i32 noundef 8) #13
  store <2 x double> <double 6.000000e+00, double -1.000000e+00>, ptr %341, align 8, !tbaa !7
  %342 = getelementptr inbounds double, ptr %341, i64 2
  store <2 x double> <double -1.000000e+00, double -1.000000e+00>, ptr %342, align 8, !tbaa !7
  %343 = call fastcc ptr @GenerateSeqLaplacian(ptr noundef nonnull %341, ptr noundef nonnull %8, ptr noundef nonnull %7, ptr noundef nonnull %9) #13
  %344 = load ptr, ptr %7, align 8, !tbaa !11
  %345 = load ptr, ptr %344, align 8, !tbaa !13
  %346 = getelementptr inbounds %struct.hypre_Vector, ptr %344, i64 0, i32 1
  %347 = load i32, ptr %346, align 8, !tbaa !16
  %348 = getelementptr inbounds %struct.hypre_Vector, ptr %344, i64 0, i32 3
  %349 = load i32, ptr %348, align 8, !tbaa !17
  %350 = mul nsw i32 %349, %347
  %351 = icmp sgt i32 %350, 0
  br i1 %351, label %352, label %375

352:                                              ; preds = %334
  %353 = zext i32 %350 to i64
  %354 = add nuw nsw i64 %353, 1
  %355 = and i64 %354, 8589934590
  %356 = add nsw i64 %353, -1
  %357 = insertelement <2 x i64> poison, i64 %356, i64 0
  %358 = shufflevector <2 x i64> %357, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %359

359:                                              ; preds = %371, %352
  %360 = phi i64 [ 0, %352 ], [ %372, %371 ]
  %361 = phi <2 x i64> [ <i64 0, i64 1>, %352 ], [ %373, %371 ]
  %362 = icmp ule <2 x i64> %361, %358
  %363 = extractelement <2 x i1> %362, i64 0
  br i1 %363, label %364, label %366

364:                                              ; preds = %359
  %365 = getelementptr inbounds double, ptr %345, i64 %360
  store double 1.000000e+00, ptr %365, align 8, !tbaa !7
  br label %366

366:                                              ; preds = %364, %359
  %367 = extractelement <2 x i1> %362, i64 1
  br i1 %367, label %368, label %371

368:                                              ; preds = %366
  %369 = or i64 %360, 1
  %370 = getelementptr inbounds double, ptr %345, i64 %369
  store double 1.000000e+00, ptr %370, align 8, !tbaa !7
  br label %371

371:                                              ; preds = %368, %366
  %372 = add i64 %360, 2
  %373 = add <2 x i64> %361, <i64 2, i64 2>
  %374 = icmp eq i64 %372, %355
  br i1 %374, label %375, label %359, !llvm.loop !18

375:                                              ; preds = %371, %334
  %376 = call i32 @gettimeofday(ptr noundef nonnull %5, ptr noundef null) #13
  %377 = tail call i64 @clock() #13
  %378 = load ptr, ptr %9, align 8, !tbaa !11
  %379 = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %343, i64 0, i32 1
  %380 = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %343, i64 0, i32 2
  %381 = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %343, i64 0, i32 3
  %382 = load ptr, ptr %343, align 8, !tbaa !22
  %383 = load ptr, ptr %379, align 8, !tbaa !24
  %384 = load ptr, ptr %380, align 8, !tbaa !25
  %385 = load i32, ptr %381, align 8, !tbaa !26
  %386 = icmp sgt i32 %385, 0
  %387 = zext i32 %385 to i64
  %388 = shl nuw nsw i64 %387, 3
  br label %389

389:                                              ; preds = %446, %375
  %390 = phi i32 [ 0, %375 ], [ %447, %446 ]
  %391 = load ptr, ptr %344, align 8, !tbaa !13
  %392 = load ptr, ptr %378, align 8, !tbaa !13
  %393 = tail call fastcc ptr @hypre_CAlloc(i32 noundef %385, i32 noundef 8) #13
  br i1 %386, label %394, label %443

394:                                              ; preds = %389
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %393, ptr align 8 %391, i64 %388, i1 false), !tbaa !7
  br label %395

395:                                              ; preds = %440, %394
  %396 = phi i64 [ %441, %440 ], [ 0, %394 ]
  %397 = getelementptr inbounds i32, ptr %383, i64 %396
  %398 = load i32, ptr %397, align 4, !tbaa !31
  %399 = sext i32 %398 to i64
  %400 = getelementptr inbounds double, ptr %382, i64 %399
  %401 = load double, ptr %400, align 8, !tbaa !7
  %402 = fcmp une double %401, 0.000000e+00
  br i1 %402, label %405, label %403

403:                                              ; preds = %395
  %404 = add nuw nsw i64 %396, 1
  br label %440

405:                                              ; preds = %395
  %406 = getelementptr inbounds double, ptr %392, i64 %396
  %407 = load double, ptr %406, align 8, !tbaa !7
  %408 = add nuw nsw i64 %396, 1
  %409 = getelementptr inbounds i32, ptr %383, i64 %408
  %410 = load i32, ptr %409, align 4, !tbaa !31
  %411 = add nsw i32 %398, 1
  %412 = icmp slt i32 %411, %410
  br i1 %412, label %413, label %436

413:                                              ; preds = %405
  %414 = sext i32 %411 to i64
  br label %415

415:                                              ; preds = %415, %413
  %416 = phi i64 [ %414, %413 ], [ %433, %415 ]
  %417 = phi double [ %407, %413 ], [ %432, %415 ]
  %418 = getelementptr inbounds i32, ptr %384, i64 %416
  %419 = load i32, ptr %418, align 4, !tbaa !31
  %420 = icmp sgt i32 %419, -1
  %421 = icmp slt i32 %419, %385
  %422 = and i1 %420, %421
  %423 = getelementptr inbounds double, ptr %382, i64 %416
  %424 = load double, ptr %423, align 8, !tbaa !7
  %425 = fneg double %424
  %426 = zext i32 %419 to i64
  %427 = getelementptr inbounds double, ptr %391, i64 %426
  %428 = sext i32 %419 to i64
  %429 = getelementptr inbounds double, ptr %393, i64 %428
  %430 = select i1 %422, ptr %427, ptr %429
  %431 = load double, ptr %430, align 8, !tbaa !7
  %432 = tail call double @llvm.fmuladd.f64(double %425, double %431, double %417)
  %433 = add nsw i64 %416, 1
  %434 = trunc i64 %433 to i32
  %435 = icmp eq i32 %410, %434
  br i1 %435, label %436, label %415, !llvm.loop !46

436:                                              ; preds = %415, %405
  %437 = phi double [ %407, %405 ], [ %432, %415 ]
  %438 = fdiv double %437, %401
  %439 = getelementptr inbounds double, ptr %391, i64 %396
  store double %438, ptr %439, align 8, !tbaa !7
  br label %440

440:                                              ; preds = %436, %403
  %441 = phi i64 [ %404, %403 ], [ %408, %436 ]
  %442 = icmp eq i64 %441, %387
  br i1 %442, label %443, label %395, !llvm.loop !47

443:                                              ; preds = %440, %389
  %444 = icmp eq ptr %393, null
  br i1 %444, label %446, label %445

445:                                              ; preds = %443
  tail call void @free(ptr noundef nonnull %393) #13
  br label %446

446:                                              ; preds = %445, %443
  %447 = add nuw nsw i32 %390, 1
  %448 = icmp eq i32 %447, 2000
  br i1 %448, label %449, label %389, !llvm.loop !48

449:                                              ; preds = %446
  %450 = call i32 @gettimeofday(ptr noundef nonnull %6, ptr noundef null) #13
  %451 = tail call i64 @clock() #13
  %452 = load i64, ptr %6, align 8, !tbaa !41
  %453 = load i64, ptr %5, align 8, !tbaa !41
  %454 = sub nsw i64 %452, %453
  %455 = sitofp i64 %454 to double
  %456 = getelementptr inbounds %struct.timeval, ptr %6, i64 0, i32 1
  %457 = load i64, ptr %456, align 8, !tbaa !44
  %458 = getelementptr inbounds %struct.timeval, ptr %5, i64 0, i32 1
  %459 = load i64, ptr %458, align 8, !tbaa !44
  %460 = sub nsw i64 %457, %459
  %461 = sitofp i64 %460 to double
  %462 = fdiv double %461, 1.000000e+06
  %463 = fadd double %462, %455
  %464 = load double, ptr @totalWallTime, align 8, !tbaa !7
  %465 = fadd double %464, %463
  store double %465, ptr @totalWallTime, align 8, !tbaa !7
  %466 = sub nsw i64 %451, %377
  %467 = sitofp i64 %466 to double
  %468 = fdiv double %467, 1.000000e+06
  %469 = load double, ptr @totalCPUTime, align 8, !tbaa !7
  %470 = fadd double %468, %469
  store double %470, ptr @totalCPUTime, align 8, !tbaa !7
  %471 = load ptr, ptr %344, align 8, !tbaa !13
  br label %472

472:                                              ; preds = %472, %449
  %473 = phi i64 [ 0, %449 ], [ %481, %472 ]
  %474 = phi double [ 0.000000e+00, %449 ], [ %480, %472 ]
  %475 = getelementptr inbounds double, ptr %471, i64 %473
  %476 = load double, ptr %475, align 8, !tbaa !7
  %477 = fadd double %476, -1.000000e+00
  %478 = tail call double @llvm.fabs.f64(double %477)
  %479 = fcmp ogt double %478, %474
  %480 = select i1 %479, double %478, double %474
  %481 = add nuw nsw i64 %473, 1
  %482 = icmp eq i64 %481, 125000
  br i1 %482, label %483, label %472, !llvm.loop !49

483:                                              ; preds = %472
  %.lcssa1 = phi double [ %480, %472 ]
  %484 = fcmp ogt double %.lcssa1, 0.000000e+00
  br i1 %484, label %485, label %487

485:                                              ; preds = %483
  %486 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, double noundef %.lcssa1) #14
  br label %487

487:                                              ; preds = %485, %483
  tail call void @free(ptr noundef nonnull %341) #13
  tail call fastcc void @hypre_CSRMatrixDestroy(ptr noundef nonnull %343) #13
  tail call fastcc void @hypre_SeqVectorDestroy(ptr noundef nonnull %344) #13
  %488 = load ptr, ptr %8, align 8, !tbaa !11
  tail call fastcc void @hypre_SeqVectorDestroy(ptr noundef %488) #13
  tail call fastcc void @hypre_SeqVectorDestroy(ptr noundef nonnull %378) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #12
  %489 = tail call i32 @putchar(i32 10)
  %490 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.28)
  %491 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.27)
  %492 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.21)
  %493 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.27)
  %494 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.28)
  store double 0.000000e+00, ptr @totalWallTime, align 8, !tbaa !7
  store double 0.000000e+00, ptr @totalCPUTime, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #12
  %495 = tail call fastcc ptr @hypre_CAlloc(i32 noundef 1, i32 noundef 32) #13
  store ptr null, ptr %495, align 8, !tbaa !13
  %496 = getelementptr inbounds %struct.hypre_Vector, ptr %495, i64 0, i32 1
  %497 = getelementptr inbounds %struct.hypre_Vector, ptr %495, i64 0, i32 3
  store <4 x i32> <i32 125000, i32 1, i32 1, i32 0>, ptr %496, align 8, !tbaa !31
  %498 = tail call fastcc ptr @hypre_CAlloc(i32 noundef 1, i32 noundef 32) #13
  store ptr null, ptr %498, align 8, !tbaa !13
  %499 = getelementptr inbounds %struct.hypre_Vector, ptr %498, i64 0, i32 1
  %500 = getelementptr inbounds %struct.hypre_Vector, ptr %498, i64 0, i32 3
  store <4 x i32> <i32 125000, i32 1, i32 1, i32 0>, ptr %499, align 8, !tbaa !31
  tail call fastcc void @hypre_SeqVectorInitialize(ptr noundef nonnull %495) #13
  tail call fastcc void @hypre_SeqVectorInitialize(ptr noundef nonnull %498) #13
  %501 = load ptr, ptr %495, align 8, !tbaa !13
  %502 = load i32, ptr %496, align 8, !tbaa !16
  %503 = load i32, ptr %497, align 8, !tbaa !17
  %504 = mul nsw i32 %503, %502
  %505 = icmp sgt i32 %504, 0
  br i1 %505, label %506, label %529

506:                                              ; preds = %487
  %507 = zext i32 %504 to i64
  %508 = add nuw nsw i64 %507, 1
  %509 = and i64 %508, 8589934590
  %510 = add nsw i64 %507, -1
  %511 = insertelement <2 x i64> poison, i64 %510, i64 0
  %512 = shufflevector <2 x i64> %511, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %513

513:                                              ; preds = %525, %506
  %514 = phi i64 [ 0, %506 ], [ %526, %525 ]
  %515 = phi <2 x i64> [ <i64 0, i64 1>, %506 ], [ %527, %525 ]
  %516 = icmp ule <2 x i64> %515, %512
  %517 = extractelement <2 x i1> %516, i64 0
  br i1 %517, label %518, label %520

518:                                              ; preds = %513
  %519 = getelementptr inbounds double, ptr %501, i64 %514
  store double 1.000000e+00, ptr %519, align 8, !tbaa !7
  br label %520

520:                                              ; preds = %518, %513
  %521 = extractelement <2 x i1> %516, i64 1
  br i1 %521, label %522, label %525

522:                                              ; preds = %520
  %523 = or i64 %514, 1
  %524 = getelementptr inbounds double, ptr %501, i64 %523
  store double 1.000000e+00, ptr %524, align 8, !tbaa !7
  br label %525

525:                                              ; preds = %522, %520
  %526 = add i64 %514, 2
  %527 = add <2 x i64> %515, <i64 2, i64 2>
  %528 = icmp eq i64 %526, %509
  br i1 %528, label %529, label %513, !llvm.loop !18

529:                                              ; preds = %525, %487
  %530 = load ptr, ptr %498, align 8, !tbaa !13
  %531 = load i32, ptr %499, align 8, !tbaa !16
  %532 = load i32, ptr %500, align 8, !tbaa !17
  %533 = mul nsw i32 %532, %531
  %534 = icmp sgt i32 %533, 0
  br i1 %534, label %535, label %558

535:                                              ; preds = %529
  %536 = zext i32 %533 to i64
  %537 = add nuw nsw i64 %536, 1
  %538 = and i64 %537, 8589934590
  %539 = add nsw i64 %536, -1
  %540 = insertelement <2 x i64> poison, i64 %539, i64 0
  %541 = shufflevector <2 x i64> %540, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %542

542:                                              ; preds = %554, %535
  %543 = phi i64 [ 0, %535 ], [ %555, %554 ]
  %544 = phi <2 x i64> [ <i64 0, i64 1>, %535 ], [ %556, %554 ]
  %545 = icmp ule <2 x i64> %544, %541
  %546 = extractelement <2 x i1> %545, i64 0
  br i1 %546, label %547, label %549

547:                                              ; preds = %542
  %548 = getelementptr inbounds double, ptr %530, i64 %543
  store double 1.000000e+00, ptr %548, align 8, !tbaa !7
  br label %549

549:                                              ; preds = %547, %542
  %550 = extractelement <2 x i1> %545, i64 1
  br i1 %550, label %551, label %554

551:                                              ; preds = %549
  %552 = or i64 %543, 1
  %553 = getelementptr inbounds double, ptr %530, i64 %552
  store double 1.000000e+00, ptr %553, align 8, !tbaa !7
  br label %554

554:                                              ; preds = %551, %549
  %555 = add i64 %543, 2
  %556 = add <2 x i64> %544, <i64 2, i64 2>
  %557 = icmp eq i64 %555, %538
  br i1 %557, label %558, label %542, !llvm.loop !18

558:                                              ; preds = %554, %529
  %559 = call i32 @gettimeofday(ptr noundef nonnull %3, ptr noundef null) #13
  %560 = tail call i64 @clock() #13
  %561 = zext i32 %504 to i64
  br label %562

562:                                              ; preds = %573, %558
  %563 = phi i32 [ 0, %558 ], [ %574, %573 ]
  br i1 %505, label %564, label %573

564:                                              ; preds = %564, %562
  %565 = phi i64 [ %571, %564 ], [ 0, %562 ]
  %566 = getelementptr inbounds double, ptr %501, i64 %565
  %567 = load double, ptr %566, align 8, !tbaa !7
  %568 = getelementptr inbounds double, ptr %530, i64 %565
  %569 = load double, ptr %568, align 8, !tbaa !7
  %570 = tail call double @llvm.fmuladd.f64(double %567, double 5.000000e-01, double %569)
  store double %570, ptr %568, align 8, !tbaa !7
  %571 = add nuw nsw i64 %565, 1
  %572 = icmp eq i64 %571, %561
  br i1 %572, label %573, label %564, !llvm.loop !50

573:                                              ; preds = %564, %562
  %574 = add nuw nsw i32 %563, 1
  %575 = icmp eq i32 %574, 2000
  br i1 %575, label %576, label %562, !llvm.loop !51

576:                                              ; preds = %573
  %577 = call i32 @gettimeofday(ptr noundef nonnull %4, ptr noundef null) #13
  %578 = tail call i64 @clock() #13
  br label %579

579:                                              ; preds = %579, %576
  %580 = phi i64 [ 0, %576 ], [ %589, %579 ]
  %581 = phi double [ 0.000000e+00, %576 ], [ %588, %579 ]
  %582 = getelementptr inbounds double, ptr %530, i64 %580
  %583 = load double, ptr %582, align 8, !tbaa !7
  %584 = fadd double %583, -1.000000e+00
  %585 = fadd double %584, -1.000000e+03
  %586 = tail call double @llvm.fabs.f64(double %585)
  %587 = fcmp ogt double %586, %581
  %588 = select i1 %587, double %586, double %581
  %589 = add nuw nsw i64 %580, 1
  %590 = icmp eq i64 %589, 125000
  br i1 %590, label %591, label %579, !llvm.loop !52

591:                                              ; preds = %579
  %.lcssa = phi double [ %588, %579 ]
  %592 = fcmp ogt double %.lcssa, 0.000000e+00
  br i1 %592, label %593, label %595

593:                                              ; preds = %591
  %594 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, double noundef %.lcssa) #14
  br label %595

595:                                              ; preds = %593, %591
  %596 = load i64, ptr %4, align 8, !tbaa !41
  %597 = load i64, ptr %3, align 8, !tbaa !41
  %598 = sub nsw i64 %596, %597
  %599 = sitofp i64 %598 to double
  %600 = getelementptr inbounds %struct.timeval, ptr %4, i64 0, i32 1
  %601 = load i64, ptr %600, align 8, !tbaa !44
  %602 = getelementptr inbounds %struct.timeval, ptr %3, i64 0, i32 1
  %603 = load i64, ptr %602, align 8, !tbaa !44
  %604 = sub nsw i64 %601, %603
  %605 = sitofp i64 %604 to double
  %606 = fdiv double %605, 1.000000e+06
  %607 = fadd double %606, %599
  %608 = load double, ptr @totalWallTime, align 8, !tbaa !7
  %609 = fadd double %608, %607
  store double %609, ptr @totalWallTime, align 8, !tbaa !7
  %610 = sub nsw i64 %578, %560
  %611 = sitofp i64 %610 to double
  %612 = fdiv double %611, 1.000000e+06
  %613 = load double, ptr @totalCPUTime, align 8, !tbaa !7
  %614 = fadd double %612, %613
  store double %614, ptr @totalCPUTime, align 8, !tbaa !7
  tail call fastcc void @hypre_SeqVectorDestroy(ptr noundef nonnull %495) #13
  tail call fastcc void @hypre_SeqVectorDestroy(ptr noundef nonnull %498) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #12
  %615 = tail call i32 @putchar(i32 10)
  %616 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.28)
  %617 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.27)
  %618 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.26)
  %619 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.27)
  %620 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.28)
  %621 = call i32 @gettimeofday(ptr noundef nonnull %16, ptr noundef null) #13
  %622 = tail call i64 @clock() #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %16) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %15) #12
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @gettimeofday(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nounwind optsize
declare i64 @clock() local_unnamed_addr #4

; Function Attrs: nofree nounwind optsize uwtable
define internal fastcc noalias ptr @hypre_CAlloc(i32 noundef %0, i32 noundef %1) unnamed_addr #5 {
  %3 = mul nsw i32 %1, %0
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %16

5:                                                ; preds = %2
  %6 = sext i32 %0 to i64
  %7 = zext i32 %1 to i64
  %8 = tail call noalias ptr @calloc(i64 noundef %6, i64 noundef %7) #15
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %16

10:                                               ; preds = %5
  %11 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %3) #14
  %12 = load ptr, ptr @stdout, align 8, !tbaa !11
  %13 = tail call i32 @fflush(ptr noundef %12) #14
  %14 = load i32, ptr @hypre__global_error, align 4, !tbaa !31
  %15 = or i32 %14, 2
  store i32 %15, ptr @hypre__global_error, align 4, !tbaa !31
  br label %16

16:                                               ; preds = %10, %5, %2
  %17 = phi ptr [ null, %10 ], [ %8, %5 ], [ null, %2 ]
  ret ptr %17
}

; Function Attrs: nofree nounwind optsize uwtable
define internal fastcc noalias ptr @GenerateSeqLaplacian(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) unnamed_addr #5 {
  %5 = tail call fastcc ptr @hypre_CAlloc(i32 noundef 125001, i32 noundef 4) #13
  %6 = tail call fastcc ptr @hypre_CAlloc(i32 noundef 125000, i32 noundef 8) #13
  %7 = tail call fastcc ptr @hypre_CAlloc(i32 noundef 125000, i32 noundef 8) #13
  %8 = tail call fastcc ptr @hypre_CAlloc(i32 noundef 125000, i32 noundef 8) #13
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1000000) %7, i8 0, i64 1000000, i1 false), !tbaa !7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1000000) %8, i8 0, i64 1000000, i1 false), !tbaa !7
  br label %9

9:                                                ; preds = %9, %4
  %10 = phi i64 [ 0, %4 ], [ %12, %9 ]
  %11 = getelementptr inbounds double, ptr %6, i64 %10
  store <2 x double> <double 1.000000e+00, double 1.000000e+00>, ptr %11, align 8, !tbaa !7
  %12 = add nuw nsw i64 %10, 2
  %13 = icmp eq i64 %12, 125000
  br i1 %13, label %14, label %9, !llvm.loop !53

14:                                               ; preds = %9
  store i32 0, ptr %5, align 4, !tbaa !31
  %15 = getelementptr i8, ptr %5, i64 -4
  br label %16

16:                                               ; preds = %56, %14
  %17 = phi i64 [ 1, %14 ], [ %.lcssa3.lcssa, %56 ]
  %18 = phi i32 [ 0, %14 ], [ %57, %56 ]
  %19 = icmp eq i32 %18, 0
  %20 = select i1 %19, i32 1, i32 2
  %21 = icmp ult i32 %18, 49
  %22 = zext i1 %21 to i32
  %23 = add nuw nsw i32 %20, %22
  br label %24

24:                                               ; preds = %53, %16
  %25 = phi i64 [ %17, %16 ], [ %.lcssa3, %53 ]
  %26 = phi i32 [ 0, %16 ], [ %54, %53 ]
  %27 = icmp ne i32 %26, 0
  %28 = icmp ult i32 %26, 49
  %29 = shl i64 %25, 32
  %30 = ashr exact i64 %29, 32
  %31 = zext i1 %27 to i32
  %32 = ashr exact i64 %29, 30
  %33 = getelementptr i8, ptr %15, i64 %32
  %34 = load i32, ptr %33, align 4
  %35 = zext i1 %28 to i32
  %36 = add nuw nsw i32 %23, %31
  %37 = add nuw nsw i32 %36, %35
  br label %38

38:                                               ; preds = %38, %24
  %39 = phi i32 [ %34, %24 ], [ %50, %38 ]
  %40 = phi i64 [ %30, %24 ], [ %51, %38 ]
  %41 = phi i32 [ 0, %24 ], [ %45, %38 ]
  %42 = getelementptr inbounds i32, ptr %5, i64 %40
  %43 = icmp ne i32 %41, 0
  %44 = zext i1 %43 to i32
  %45 = add nuw nsw i32 %41, 1
  %46 = icmp ult i32 %41, 49
  %47 = zext i1 %46 to i32
  %48 = add i32 %37, %39
  %49 = add i32 %48, %44
  %50 = add i32 %49, %47
  store i32 %50, ptr %42, align 4, !tbaa !31
  %51 = add nsw i64 %40, 1
  %52 = icmp eq i32 %45, 50
  br i1 %52, label %53, label %38, !llvm.loop !54

53:                                               ; preds = %38
  %.lcssa3 = phi i64 [ %51, %38 ]
  %54 = add nuw nsw i32 %26, 1
  %55 = icmp eq i32 %54, 50
  br i1 %55, label %56, label %24, !llvm.loop !55

56:                                               ; preds = %53
  %.lcssa3.lcssa = phi i64 [ %.lcssa3, %53 ]
  %57 = add nuw nsw i32 %18, 1
  %58 = icmp eq i32 %57, 50
  br i1 %58, label %59, label %16, !llvm.loop !56

59:                                               ; preds = %56
  %60 = getelementptr inbounds i32, ptr %5, i64 125000
  %61 = load i32, ptr %60, align 4, !tbaa !31
  %62 = tail call fastcc ptr @hypre_CAlloc(i32 noundef %61, i32 noundef 4) #13
  %63 = tail call fastcc ptr @hypre_CAlloc(i32 noundef %61, i32 noundef 8) #13
  %64 = getelementptr inbounds double, ptr %0, i64 3
  %65 = getelementptr inbounds double, ptr %0, i64 2
  %66 = getelementptr inbounds double, ptr %0, i64 1
  %67 = load double, ptr %0, align 8, !tbaa !7
  %68 = load double, ptr %66, align 8, !tbaa !7
  br label %69

69:                                               ; preds = %150, %59
  %70 = phi i32 [ 0, %59 ], [ %.lcssa1.lcssa, %150 ]
  %71 = phi i32 [ 0, %59 ], [ %.lcssa2.lcssa, %150 ]
  %72 = phi i32 [ 0, %59 ], [ %151, %150 ]
  %73 = icmp eq i32 %72, 0
  %74 = icmp ult i32 %72, 49
  br label %75

75:                                               ; preds = %147, %69
  %76 = phi i32 [ %70, %69 ], [ %.lcssa1, %147 ]
  %77 = phi i32 [ %71, %69 ], [ %.lcssa2, %147 ]
  %78 = phi i32 [ 0, %69 ], [ %148, %147 ]
  %79 = icmp eq i32 %78, 0
  %80 = icmp ult i32 %78, 49
  br label %81

81:                                               ; preds = %143, %75
  %82 = phi i32 [ 0, %75 ], [ %125, %143 ]
  %83 = phi i32 [ %76, %75 ], [ %145, %143 ]
  %84 = phi i32 [ %77, %75 ], [ %144, %143 ]
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, ptr %62, i64 %85
  store i32 %83, ptr %86, align 4, !tbaa !31
  %87 = add nsw i32 %84, 1
  %88 = getelementptr inbounds double, ptr %63, i64 %85
  store double %67, ptr %88, align 8, !tbaa !7
  br i1 %73, label %96, label %89

89:                                               ; preds = %81
  %90 = add nsw i32 %83, -2500
  %91 = sext i32 %87 to i64
  %92 = getelementptr inbounds i32, ptr %62, i64 %91
  store i32 %90, ptr %92, align 4, !tbaa !31
  %93 = load double, ptr %64, align 8, !tbaa !7
  %94 = add nsw i32 %84, 2
  %95 = getelementptr inbounds double, ptr %63, i64 %91
  store double %93, ptr %95, align 8, !tbaa !7
  br label %96

96:                                               ; preds = %89, %81
  %97 = phi i32 [ %94, %89 ], [ %87, %81 ]
  br i1 %79, label %105, label %98

98:                                               ; preds = %96
  %99 = add nsw i32 %83, -50
  %100 = sext i32 %97 to i64
  %101 = getelementptr inbounds i32, ptr %62, i64 %100
  store i32 %99, ptr %101, align 4, !tbaa !31
  %102 = load double, ptr %65, align 8, !tbaa !7
  %103 = add nsw i32 %97, 1
  %104 = getelementptr inbounds double, ptr %63, i64 %100
  store double %102, ptr %104, align 8, !tbaa !7
  br label %105

105:                                              ; preds = %98, %96
  %106 = phi i32 [ %103, %98 ], [ %97, %96 ]
  %107 = icmp eq i32 %82, 0
  br i1 %107, label %116, label %108

108:                                              ; preds = %105
  %109 = add nsw i32 %83, -1
  %110 = sext i32 %106 to i64
  %111 = getelementptr inbounds i32, ptr %62, i64 %110
  store i32 %109, ptr %111, align 4, !tbaa !31
  %112 = add nsw i32 %106, 1
  %113 = getelementptr inbounds double, ptr %63, i64 %110
  store double %68, ptr %113, align 8, !tbaa !7
  %114 = add nuw nsw i32 %82, 1
  %115 = icmp ult i32 %82, 49
  br i1 %115, label %116, label %124

116:                                              ; preds = %108, %105
  %117 = phi i32 [ %114, %108 ], [ 1, %105 ]
  %118 = phi i32 [ %112, %108 ], [ %106, %105 ]
  %119 = add nsw i32 %83, 1
  %120 = sext i32 %118 to i64
  %121 = getelementptr inbounds i32, ptr %62, i64 %120
  store i32 %119, ptr %121, align 4, !tbaa !31
  %122 = add nsw i32 %118, 1
  %123 = getelementptr inbounds double, ptr %63, i64 %120
  store double %68, ptr %123, align 8, !tbaa !7
  br label %124

124:                                              ; preds = %116, %108
  %125 = phi i32 [ %117, %116 ], [ %114, %108 ]
  %126 = phi i32 [ %122, %116 ], [ %112, %108 ]
  br i1 %80, label %127, label %134

127:                                              ; preds = %124
  %128 = add nsw i32 %83, 50
  %129 = sext i32 %126 to i64
  %130 = getelementptr inbounds i32, ptr %62, i64 %129
  store i32 %128, ptr %130, align 4, !tbaa !31
  %131 = load double, ptr %65, align 8, !tbaa !7
  %132 = add nsw i32 %126, 1
  %133 = getelementptr inbounds double, ptr %63, i64 %129
  store double %131, ptr %133, align 8, !tbaa !7
  br label %134

134:                                              ; preds = %127, %124
  %135 = phi i32 [ %132, %127 ], [ %126, %124 ]
  br i1 %74, label %136, label %143

136:                                              ; preds = %134
  %137 = add nsw i32 %83, 2500
  %138 = sext i32 %135 to i64
  %139 = getelementptr inbounds i32, ptr %62, i64 %138
  store i32 %137, ptr %139, align 4, !tbaa !31
  %140 = load double, ptr %64, align 8, !tbaa !7
  %141 = add nsw i32 %135, 1
  %142 = getelementptr inbounds double, ptr %63, i64 %138
  store double %140, ptr %142, align 8, !tbaa !7
  br label %143

143:                                              ; preds = %136, %134
  %144 = phi i32 [ %141, %136 ], [ %135, %134 ]
  %145 = add nsw i32 %83, 1
  %146 = icmp eq i32 %125, 50
  br i1 %146, label %147, label %81, !llvm.loop !57

147:                                              ; preds = %143
  %.lcssa2 = phi i32 [ %144, %143 ]
  %.lcssa1 = phi i32 [ %145, %143 ]
  %148 = add nuw nsw i32 %78, 1
  %149 = icmp eq i32 %148, 50
  br i1 %149, label %150, label %75, !llvm.loop !58

150:                                              ; preds = %147
  %.lcssa2.lcssa = phi i32 [ %.lcssa2, %147 ]
  %.lcssa1.lcssa = phi i32 [ %.lcssa1, %147 ]
  %151 = add nuw nsw i32 %72, 1
  %152 = icmp eq i32 %151, 50
  br i1 %152, label %153, label %69, !llvm.loop !59

153:                                              ; preds = %150
  %154 = tail call fastcc ptr @hypre_CAlloc(i32 noundef 1, i32 noundef 56) #13
  %155 = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %154, i64 0, i32 6
  store ptr null, ptr %155, align 8, !tbaa !27
  %156 = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %154, i64 0, i32 3
  store i32 125000, ptr %156, align 8, !tbaa !26
  %157 = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %154, i64 0, i32 4
  store i32 125000, ptr %157, align 4, !tbaa !60
  %158 = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %154, i64 0, i32 5
  store i32 %61, ptr %158, align 8, !tbaa !61
  %159 = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %154, i64 0, i32 8
  store i32 1, ptr %159, align 4, !tbaa !62
  %160 = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %154, i64 0, i32 7
  store i32 125000, ptr %160, align 8, !tbaa !28
  %161 = tail call fastcc ptr @hypre_CAlloc(i32 noundef 1, i32 noundef 32) #13
  %162 = getelementptr inbounds %struct.hypre_Vector, ptr %161, i64 0, i32 1
  store <4 x i32> <i32 125000, i32 1, i32 1, i32 0>, ptr %162, align 8, !tbaa !31
  store ptr %6, ptr %161, align 8, !tbaa !13
  %163 = tail call fastcc ptr @hypre_CAlloc(i32 noundef 1, i32 noundef 32) #13
  %164 = getelementptr inbounds %struct.hypre_Vector, ptr %163, i64 0, i32 1
  store <4 x i32> <i32 125000, i32 1, i32 1, i32 0>, ptr %164, align 8, !tbaa !31
  store ptr %7, ptr %163, align 8, !tbaa !13
  %165 = load i32, ptr %5, align 4, !tbaa !31
  br label %169

166:                                              ; preds = %181
  %.lcssa = phi double [ %186, %181 ]
  store double %.lcssa, ptr %177, align 8, !tbaa !7
  br label %167

167:                                              ; preds = %169, %166
  %168 = icmp eq i64 %172, 125000
  br i1 %168, label %189, label %169, !llvm.loop !63

169:                                              ; preds = %167, %153
  %170 = phi i32 [ %165, %153 ], [ %174, %167 ]
  %171 = phi i64 [ 0, %153 ], [ %172, %167 ]
  %172 = add nuw nsw i64 %171, 1
  %173 = getelementptr inbounds i32, ptr %5, i64 %172
  %174 = load i32, ptr %173, align 4, !tbaa !31
  %175 = icmp slt i32 %170, %174
  br i1 %175, label %176, label %167

176:                                              ; preds = %169
  %177 = getelementptr inbounds double, ptr %8, i64 %171
  %178 = load double, ptr %177, align 8, !tbaa !7
  %179 = sext i32 %170 to i64
  %180 = sext i32 %174 to i64
  br label %181

181:                                              ; preds = %181, %176
  %182 = phi i64 [ %179, %176 ], [ %187, %181 ]
  %183 = phi double [ %178, %176 ], [ %186, %181 ]
  %184 = getelementptr inbounds double, ptr %63, i64 %182
  %185 = load double, ptr %184, align 8, !tbaa !7
  %186 = fadd double %183, %185
  %187 = add nsw i64 %182, 1
  %188 = icmp eq i64 %187, %180
  br i1 %188, label %166, label %181, !llvm.loop !64

189:                                              ; preds = %167
  %190 = tail call fastcc ptr @hypre_CAlloc(i32 noundef 1, i32 noundef 32) #13
  %191 = getelementptr inbounds %struct.hypre_Vector, ptr %190, i64 0, i32 1
  store <4 x i32> <i32 125000, i32 1, i32 1, i32 0>, ptr %191, align 8, !tbaa !31
  store ptr %8, ptr %190, align 8, !tbaa !13
  %192 = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %154, i64 0, i32 1
  store ptr %5, ptr %192, align 8, !tbaa !24
  %193 = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %154, i64 0, i32 2
  store ptr %62, ptr %193, align 8, !tbaa !25
  store ptr %63, ptr %154, align 8, !tbaa !22
  store ptr %161, ptr %1, align 8, !tbaa !11
  store ptr %163, ptr %2, align 8, !tbaa !11
  store ptr %190, ptr %3, align 8, !tbaa !11
  ret ptr %154
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #7

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind optsize willreturn uwtable
define internal fastcc void @hypre_CSRMatrixDestroy(ptr noundef %0) unnamed_addr #9 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %27, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !24
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %3
  tail call void @free(ptr noundef nonnull %5) #13
  br label %8

8:                                                ; preds = %7, %3
  store ptr null, ptr %4, align 8, !tbaa !24
  %9 = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %0, i64 0, i32 6
  %10 = load ptr, ptr %9, align 8, !tbaa !27
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call void @free(ptr noundef nonnull %10) #13
  store ptr null, ptr %9, align 8, !tbaa !27
  br label %13

13:                                               ; preds = %12, %8
  %14 = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %0, i64 0, i32 8
  %15 = load i32, ptr %14, align 4, !tbaa !62
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %26, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %0, align 8, !tbaa !22
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %17
  tail call void @free(ptr noundef nonnull %18) #13
  br label %21

21:                                               ; preds = %20, %17
  store ptr null, ptr %0, align 8, !tbaa !22
  %22 = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %0, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !25
  %24 = icmp eq ptr %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %21
  tail call void @free(ptr noundef nonnull %23) #13
  br label %26

26:                                               ; preds = %25, %21, %13
  tail call void @free(ptr noundef nonnull %0) #13
  br label %27

27:                                               ; preds = %26, %1
  ret void
}

; Function Attrs: mustprogress nounwind optsize willreturn uwtable
define internal fastcc void @hypre_SeqVectorDestroy(ptr noundef %0) unnamed_addr #9 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %12, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.hypre_Vector, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !65
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr %0, align 8, !tbaa !13
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %7
  tail call void @free(ptr noundef nonnull %8) #13
  br label %11

11:                                               ; preds = %10, %7, %3
  tail call void @free(ptr noundef nonnull %0) #13
  br label %12

12:                                               ; preds = %11, %1
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #10

; Function Attrs: nofree nounwind optsize uwtable
define internal fastcc void @hypre_SeqVectorInitialize(ptr nocapture noundef %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.hypre_Vector, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !16
  %4 = getelementptr inbounds %struct.hypre_Vector, ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !17
  %6 = getelementptr inbounds %struct.hypre_Vector, ptr %0, i64 0, i32 4
  %7 = load i32, ptr %6, align 4, !tbaa !66
  %8 = load ptr, ptr %0, align 8, !tbaa !13
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = mul nsw i32 %5, %3
  %12 = tail call fastcc ptr @hypre_CAlloc(i32 noundef %11, i32 noundef 8) #13
  store ptr %12, ptr %0, align 8, !tbaa !13
  br label %13

13:                                               ; preds = %10, %1
  switch i32 %7, label %20 [
    i32 0, label %15
    i32 1, label %14
  ]

14:                                               ; preds = %13
  br label %15

15:                                               ; preds = %14, %13
  %16 = phi i32 [ 1, %14 ], [ %3, %13 ]
  %17 = phi i32 [ %5, %14 ], [ 1, %13 ]
  %18 = getelementptr inbounds %struct.hypre_Vector, ptr %0, i64 0, i32 5
  store i32 %16, ptr %18, align 8, !tbaa !30
  %19 = getelementptr inbounds %struct.hypre_Vector, ptr %0, i64 0, i32 6
  store i32 %17, ptr %19, align 4, !tbaa !29
  br label %20

20:                                               ; preds = %15, %13
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #3

attributes #0 = { nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind }
attributes #3 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind }
attributes #13 = { nounwind optsize }
attributes #14 = { optsize }
attributes #15 = { nounwind optsize allocsize(0,1) }

!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0}
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
!11 = !{!12, !12, i64 0}
!12 = !{!"any pointer", !9, i64 0}
!13 = !{!14, !12, i64 0}
!14 = !{!"", !12, i64 0, !15, i64 8, !15, i64 12, !15, i64 16, !15, i64 20, !15, i64 24, !15, i64 28}
!15 = !{!"int", !9, i64 0}
!16 = !{!14, !15, i64 8}
!17 = !{!14, !15, i64 16}
!18 = distinct !{!18, !19, !20, !21}
!19 = !{!"llvm.loop.mustprogress"}
!20 = !{!"llvm.loop.isvectorized", i32 1}
!21 = !{!"llvm.loop.unroll.runtime.disable"}
!22 = !{!23, !12, i64 0}
!23 = !{!"", !12, i64 0, !12, i64 8, !12, i64 16, !15, i64 24, !15, i64 28, !15, i64 32, !12, i64 40, !15, i64 48, !15, i64 52}
!24 = !{!23, !12, i64 8}
!25 = !{!23, !12, i64 16}
!26 = !{!23, !15, i64 24}
!27 = !{!23, !12, i64 40}
!28 = !{!23, !15, i64 48}
!29 = !{!14, !15, i64 28}
!30 = !{!14, !15, i64 24}
!31 = !{!15, !15, i64 0}
!32 = distinct !{!32, !19}
!33 = distinct !{!33, !19}
!34 = distinct !{!34, !19}
!35 = distinct !{!35, !19}
!36 = distinct !{!36, !19}
!37 = distinct !{!37, !19}
!38 = distinct !{!38, !19}
!39 = distinct !{!39, !19}
!40 = distinct !{!40, !19}
!41 = !{!42, !43, i64 0}
!42 = !{!"timeval", !43, i64 0, !43, i64 8}
!43 = !{!"long", !9, i64 0}
!44 = !{!42, !43, i64 8}
!45 = distinct !{!45, !19}
!46 = distinct !{!46, !19}
!47 = distinct !{!47, !19}
!48 = distinct !{!48, !19}
!49 = distinct !{!49, !19}
!50 = distinct !{!50, !19}
!51 = distinct !{!51, !19}
!52 = distinct !{!52, !19}
!53 = distinct !{!53, !19, !20, !21}
!54 = distinct !{!54, !19}
!55 = distinct !{!55, !19}
!56 = distinct !{!56, !19}
!57 = distinct !{!57, !19}
!58 = distinct !{!58, !19}
!59 = distinct !{!59, !19}
!60 = !{!23, !15, i64 28}
!61 = !{!23, !15, i64 32}
!62 = !{!23, !15, i64 52}
!63 = distinct !{!63, !19}
!64 = distinct !{!64, !19}
!65 = !{!14, !15, i64 12}
!66 = !{!14, !15, i64 20}
