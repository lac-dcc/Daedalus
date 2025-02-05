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
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %15) #14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %16) #14
  %17 = tail call i32 @putchar(i32 10)
  %18 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.28)
  %19 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.27)
  %20 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.11)
  %21 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.27)
  %22 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.28)
  %23 = call i32 @gettimeofday(ptr noundef nonnull %15, ptr noundef null) #15
  %24 = tail call i64 @clock() #15
  store double 0.000000e+00, ptr @totalWallTime, align 8, !tbaa !7
  store double 0.000000e+00, ptr @totalCPUTime, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #14
  %25 = tail call fastcc ptr @hypre_CAlloc(i32 noundef 4, i32 noundef 8) #15
  store <2 x double> <double 6.000000e+00, double -1.000000e+00>, ptr %25, align 8, !tbaa !7
  %26 = getelementptr inbounds double, ptr %25, i64 2
  store <2 x double> <double -1.000000e+00, double -1.000000e+00>, ptr %26, align 8, !tbaa !7
  %27 = call fastcc ptr @GenerateSeqLaplacian(ptr noundef nonnull %25, ptr noundef nonnull %13, ptr noundef nonnull %12, ptr noundef nonnull %14) #15
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
  %92 = call i32 @gettimeofday(ptr noundef nonnull %10, ptr noundef null) #15
  %93 = load ptr, ptr %27, align 8, !tbaa !22
  %94 = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %27, i64 0, i32 1
  %95 = load ptr, ptr %94, align 8, !tbaa !24
  %96 = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %27, i64 0, i32 2
  %97 = load ptr, ptr %96, align 8, !tbaa !25
  %98 = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %27, i64 0, i32 3
  %99 = load i32, ptr %98, align 8, !tbaa !26
  %100 = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %27, i64 0, i32 6
  %101 = load ptr, ptr %100, align 8, !tbaa !27
  %102 = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %27, i64 0, i32 7
  %103 = load i32, ptr %102, align 8, !tbaa !28
  %104 = load ptr, ptr %28, align 8, !tbaa !13
  %105 = load ptr, ptr %60, align 8, !tbaa !13
  %106 = load i32, ptr %32, align 8, !tbaa !17
  %107 = getelementptr inbounds %struct.hypre_Vector, ptr %60, i64 0, i32 6
  %108 = load i32, ptr %107, align 4, !tbaa !29
  %109 = getelementptr inbounds %struct.hypre_Vector, ptr %60, i64 0, i32 5
  %110 = load i32, ptr %109, align 8, !tbaa !30
  %111 = getelementptr inbounds %struct.hypre_Vector, ptr %28, i64 0, i32 6
  %112 = load i32, ptr %111, align 4, !tbaa !29
  %113 = getelementptr inbounds %struct.hypre_Vector, ptr %28, i64 0, i32 5
  %114 = load i32, ptr %113, align 8, !tbaa !30
  %115 = mul nsw i32 %106, %99
  %116 = icmp sgt i32 %115, 0
  %117 = sitofp i32 %103 to double
  %118 = sitofp i32 %99 to double
  %119 = fmul double %118, 0x3FE6666666666666
  %120 = fcmp ogt double %119, %117
  %121 = zext i32 %115 to i64
  %122 = shl nuw nsw i64 %121, 3
  %123 = icmp sgt i32 %99, 0
  %124 = icmp eq i32 %106, 1
  %125 = icmp sgt i32 %106, 0
  %126 = sext i32 %110 to i64
  %127 = sext i32 %114 to i64
  %128 = sext i32 %108 to i64
  %129 = zext i32 %99 to i64
  %130 = zext i32 %106 to i64
  %131 = icmp sgt i32 %103, 0
  %132 = zext i32 %103 to i64
  br label %133

133:                                              ; preds = %288, %91
  %134 = phi i32 [ 0, %91 ], [ %289, %288 ]
  br i1 %116, label %135, label %136

135:                                              ; preds = %133
  tail call void @llvm.memset.p0.i64(ptr align 8 %105, i8 0, i64 %122, i1 false), !tbaa !7
  br label %136

136:                                              ; preds = %135, %133
  br i1 %120, label %138, label %137

137:                                              ; preds = %136
  br i1 %123, label %216, label %288

138:                                              ; preds = %136
  br i1 %131, label %139, label %288

139:                                              ; preds = %213, %138
  %140 = phi i64 [ %214, %213 ], [ 0, %138 ]
  %141 = getelementptr inbounds i32, ptr %101, i64 %140
  %142 = load i32, ptr %141, align 4, !tbaa !31
  br i1 %124, label %157, label %143

143:                                              ; preds = %139
  br i1 %125, label %144, label %213

144:                                              ; preds = %143
  %145 = mul nsw i32 %142, %108
  %146 = sext i32 %142 to i64
  %147 = getelementptr inbounds i32, ptr %95, i64 %146
  %148 = load i32, ptr %147, align 4, !tbaa !31
  %149 = add nsw i32 %142, 1
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32, ptr %95, i64 %150
  %152 = load i32, ptr %151, align 4, !tbaa !31
  %153 = icmp slt i32 %148, %152
  %154 = sext i32 %148 to i64
  %155 = sext i32 %145 to i64
  %156 = sext i32 %152 to i64
  br label %186

157:                                              ; preds = %139
  %158 = sext i32 %142 to i64
  %159 = getelementptr inbounds double, ptr %105, i64 %158
  %160 = load double, ptr %159, align 8, !tbaa !7
  %161 = getelementptr inbounds i32, ptr %95, i64 %158
  %162 = load i32, ptr %161, align 4, !tbaa !31
  %163 = add nsw i32 %142, 1
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32, ptr %95, i64 %164
  %166 = load i32, ptr %165, align 4, !tbaa !31
  %167 = icmp slt i32 %162, %166
  br i1 %167, label %168, label %184

168:                                              ; preds = %157
  %169 = sext i32 %162 to i64
  %170 = sext i32 %166 to i64
  br label %171

171:                                              ; preds = %171, %168
  %172 = phi i64 [ %169, %168 ], [ %182, %171 ]
  %173 = phi double [ %160, %168 ], [ %181, %171 ]
  %174 = getelementptr inbounds double, ptr %93, i64 %172
  %175 = load double, ptr %174, align 8, !tbaa !7
  %176 = getelementptr inbounds i32, ptr %97, i64 %172
  %177 = load i32, ptr %176, align 4, !tbaa !31
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds double, ptr %104, i64 %178
  %180 = load double, ptr %179, align 8, !tbaa !7
  %181 = tail call double @llvm.fmuladd.f64(double %175, double %180, double %173)
  %182 = add nsw i64 %172, 1
  %183 = icmp eq i64 %182, %170
  br i1 %183, label %184, label %171, !llvm.loop !32

184:                                              ; preds = %171, %157
  %185 = phi double [ %160, %157 ], [ %181, %171 ]
  store double %185, ptr %159, align 8, !tbaa !7
  br label %213

186:                                              ; preds = %209, %144
  %187 = phi i64 [ 0, %144 ], [ %211, %209 ]
  %188 = mul nsw i64 %187, %126
  %189 = add nsw i64 %188, %155
  %190 = getelementptr inbounds double, ptr %105, i64 %189
  %191 = load double, ptr %190, align 8, !tbaa !7
  br i1 %153, label %192, label %209

192:                                              ; preds = %186
  %193 = mul nsw i64 %187, %127
  br label %194

194:                                              ; preds = %194, %192
  %195 = phi i64 [ %154, %192 ], [ %207, %194 ]
  %196 = phi double [ %191, %192 ], [ %206, %194 ]
  %197 = getelementptr inbounds double, ptr %93, i64 %195
  %198 = load double, ptr %197, align 8, !tbaa !7
  %199 = getelementptr inbounds i32, ptr %97, i64 %195
  %200 = load i32, ptr %199, align 4, !tbaa !31
  %201 = mul nsw i32 %200, %112
  %202 = sext i32 %201 to i64
  %203 = add nsw i64 %193, %202
  %204 = getelementptr inbounds double, ptr %104, i64 %203
  %205 = load double, ptr %204, align 8, !tbaa !7
  %206 = tail call double @llvm.fmuladd.f64(double %198, double %205, double %196)
  %207 = add nsw i64 %195, 1
  %208 = icmp eq i64 %207, %156
  br i1 %208, label %209, label %194, !llvm.loop !33

209:                                              ; preds = %194, %186
  %210 = phi double [ %191, %186 ], [ %206, %194 ]
  store double %210, ptr %190, align 8, !tbaa !7
  %211 = add nuw nsw i64 %187, 1
  %212 = icmp eq i64 %211, %130
  br i1 %212, label %213, label %186, !llvm.loop !34

213:                                              ; preds = %209, %184, %143
  %214 = add nuw nsw i64 %140, 1
  %215 = icmp eq i64 %214, %132
  br i1 %215, label %288, label %139, !llvm.loop !35

216:                                              ; preds = %285, %137
  %217 = phi i64 [ %286, %285 ], [ 0, %137 ]
  br i1 %124, label %231, label %218

218:                                              ; preds = %216
  br i1 %125, label %221, label %219

219:                                              ; preds = %218
  %220 = add nuw nsw i64 %217, 1
  br label %285

221:                                              ; preds = %218
  %222 = mul nsw i64 %217, %128
  %223 = getelementptr inbounds i32, ptr %95, i64 %217
  %224 = load i32, ptr %223, align 4, !tbaa !31
  %225 = add nuw nsw i64 %217, 1
  %226 = getelementptr inbounds i32, ptr %95, i64 %225
  %227 = load i32, ptr %226, align 4, !tbaa !31
  %228 = icmp slt i32 %224, %227
  %229 = sext i32 %224 to i64
  %230 = sext i32 %227 to i64
  br label %258

231:                                              ; preds = %216
  %232 = getelementptr inbounds double, ptr %105, i64 %217
  %233 = load double, ptr %232, align 8, !tbaa !7
  %234 = getelementptr inbounds i32, ptr %95, i64 %217
  %235 = load i32, ptr %234, align 4, !tbaa !31
  %236 = add nuw nsw i64 %217, 1
  %237 = getelementptr inbounds i32, ptr %95, i64 %236
  %238 = load i32, ptr %237, align 4, !tbaa !31
  %239 = icmp slt i32 %235, %238
  br i1 %239, label %240, label %256

240:                                              ; preds = %231
  %241 = sext i32 %235 to i64
  %242 = sext i32 %238 to i64
  br label %243

243:                                              ; preds = %243, %240
  %244 = phi i64 [ %241, %240 ], [ %254, %243 ]
  %245 = phi double [ %233, %240 ], [ %253, %243 ]
  %246 = getelementptr inbounds double, ptr %93, i64 %244
  %247 = load double, ptr %246, align 8, !tbaa !7
  %248 = getelementptr inbounds i32, ptr %97, i64 %244
  %249 = load i32, ptr %248, align 4, !tbaa !31
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds double, ptr %104, i64 %250
  %252 = load double, ptr %251, align 8, !tbaa !7
  %253 = tail call double @llvm.fmuladd.f64(double %247, double %252, double %245)
  %254 = add nsw i64 %244, 1
  %255 = icmp eq i64 %254, %242
  br i1 %255, label %256, label %243, !llvm.loop !36

256:                                              ; preds = %243, %231
  %257 = phi double [ %233, %231 ], [ %253, %243 ]
  store double %257, ptr %232, align 8, !tbaa !7
  br label %285

258:                                              ; preds = %281, %221
  %259 = phi i64 [ 0, %221 ], [ %283, %281 ]
  %260 = mul nsw i64 %259, %126
  %261 = add nsw i64 %260, %222
  %262 = getelementptr inbounds double, ptr %105, i64 %261
  %263 = load double, ptr %262, align 8, !tbaa !7
  br i1 %228, label %264, label %281

264:                                              ; preds = %258
  %265 = mul nsw i64 %259, %127
  br label %266

266:                                              ; preds = %266, %264
  %267 = phi i64 [ %229, %264 ], [ %279, %266 ]
  %268 = phi double [ %263, %264 ], [ %278, %266 ]
  %269 = getelementptr inbounds double, ptr %93, i64 %267
  %270 = load double, ptr %269, align 8, !tbaa !7
  %271 = getelementptr inbounds i32, ptr %97, i64 %267
  %272 = load i32, ptr %271, align 4, !tbaa !31
  %273 = mul nsw i32 %272, %112
  %274 = sext i32 %273 to i64
  %275 = add nsw i64 %265, %274
  %276 = getelementptr inbounds double, ptr %104, i64 %275
  %277 = load double, ptr %276, align 8, !tbaa !7
  %278 = tail call double @llvm.fmuladd.f64(double %270, double %277, double %268)
  %279 = add nsw i64 %267, 1
  %280 = icmp eq i64 %279, %230
  br i1 %280, label %281, label %266, !llvm.loop !37

281:                                              ; preds = %266, %258
  %282 = phi double [ %263, %258 ], [ %278, %266 ]
  store double %282, ptr %262, align 8, !tbaa !7
  %283 = add nuw nsw i64 %259, 1
  %284 = icmp eq i64 %283, %130
  br i1 %284, label %285, label %258, !llvm.loop !38

285:                                              ; preds = %281, %256, %219
  %286 = phi i64 [ %220, %219 ], [ %236, %256 ], [ %225, %281 ]
  %287 = icmp eq i64 %286, %129
  br i1 %287, label %288, label %216, !llvm.loop !39

288:                                              ; preds = %285, %213, %138, %137
  %289 = add nuw nsw i32 %134, 1
  %290 = icmp eq i32 %289, 2000
  br i1 %290, label %291, label %133, !llvm.loop !40

291:                                              ; preds = %288
  %292 = call i32 @gettimeofday(ptr noundef nonnull %11, ptr noundef null) #15
  %293 = load i64, ptr %11, align 8, !tbaa !41
  %294 = load i64, ptr %10, align 8, !tbaa !41
  %295 = sub nsw i64 %293, %294
  %296 = sitofp i64 %295 to double
  %297 = getelementptr inbounds %struct.timeval, ptr %11, i64 0, i32 1
  %298 = load i64, ptr %297, align 8, !tbaa !44
  %299 = getelementptr inbounds %struct.timeval, ptr %10, i64 0, i32 1
  %300 = load i64, ptr %299, align 8, !tbaa !44
  %301 = sub nsw i64 %298, %300
  %302 = sitofp i64 %301 to double
  %303 = fdiv double %302, 1.000000e+06
  %304 = fadd double %303, %296
  %305 = load double, ptr @totalWallTime, align 8, !tbaa !7
  %306 = fadd double %305, %304
  store double %306, ptr @totalWallTime, align 8, !tbaa !7
  %307 = call double @_wyvern_slice_main__505471819()
  store double %307, ptr @totalCPUTime, align 8, !tbaa !7
  %308 = load ptr, ptr %60, align 8, !tbaa !13
  %309 = load ptr, ptr %14, align 8, !tbaa !11
  %310 = load ptr, ptr %309, align 8, !tbaa !13
  br label %311

311:                                              ; preds = %311, %291
  %312 = phi i64 [ 0, %291 ], [ %322, %311 ]
  %313 = phi double [ 0.000000e+00, %291 ], [ %321, %311 ]
  %314 = getelementptr inbounds double, ptr %308, i64 %312
  %315 = load double, ptr %314, align 8, !tbaa !7
  %316 = getelementptr inbounds double, ptr %310, i64 %312
  %317 = load double, ptr %316, align 8, !tbaa !7
  %318 = fsub double %315, %317
  %319 = tail call double @llvm.fabs.f64(double %318)
  %320 = fcmp ogt double %319, %313
  %321 = select i1 %320, double %319, double %313
  %322 = add nuw nsw i64 %312, 1
  %323 = icmp eq i64 %322, 125000
  br i1 %323, label %324, label %311, !llvm.loop !45

324:                                              ; preds = %311
  %.lcssa2 = phi double [ %321, %311 ]
  %325 = fcmp ogt double %.lcssa2, 0.000000e+00
  br i1 %325, label %326, label %328

326:                                              ; preds = %324
  %327 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, double noundef %.lcssa2) #16
  br label %328

328:                                              ; preds = %326, %324
  tail call void @free(ptr noundef nonnull %25) #15
  tail call fastcc void @hypre_CSRMatrixDestroy(ptr noundef nonnull %27) #15
  tail call fastcc void @hypre_SeqVectorDestroy(ptr noundef nonnull %28) #15
  tail call fastcc void @hypre_SeqVectorDestroy(ptr noundef nonnull %60) #15
  tail call fastcc void @hypre_SeqVectorDestroy(ptr noundef nonnull %309) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #14
  %329 = tail call i32 @putchar(i32 10)
  %330 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.28)
  %331 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.27)
  %332 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.16)
  %333 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.27)
  %334 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.28)
  store double 0.000000e+00, ptr @totalWallTime, align 8, !tbaa !7
  store double 0.000000e+00, ptr @totalCPUTime, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #14
  %335 = tail call fastcc ptr @hypre_CAlloc(i32 noundef 4, i32 noundef 8) #15
  store <2 x double> <double 6.000000e+00, double -1.000000e+00>, ptr %335, align 8, !tbaa !7
  %336 = getelementptr inbounds double, ptr %335, i64 2
  store <2 x double> <double -1.000000e+00, double -1.000000e+00>, ptr %336, align 8, !tbaa !7
  %337 = call fastcc ptr @GenerateSeqLaplacian(ptr noundef nonnull %335, ptr noundef nonnull %8, ptr noundef nonnull %7, ptr noundef nonnull %9) #15
  %338 = load ptr, ptr %7, align 8, !tbaa !11
  %339 = load ptr, ptr %338, align 8, !tbaa !13
  %340 = getelementptr inbounds %struct.hypre_Vector, ptr %338, i64 0, i32 1
  %341 = load i32, ptr %340, align 8, !tbaa !16
  %342 = getelementptr inbounds %struct.hypre_Vector, ptr %338, i64 0, i32 3
  %343 = load i32, ptr %342, align 8, !tbaa !17
  %344 = mul nsw i32 %343, %341
  %345 = icmp sgt i32 %344, 0
  br i1 %345, label %346, label %369

346:                                              ; preds = %328
  %347 = zext i32 %344 to i64
  %348 = add nuw nsw i64 %347, 1
  %349 = and i64 %348, 8589934590
  %350 = add nsw i64 %347, -1
  %351 = insertelement <2 x i64> poison, i64 %350, i64 0
  %352 = shufflevector <2 x i64> %351, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %353

353:                                              ; preds = %365, %346
  %354 = phi i64 [ 0, %346 ], [ %366, %365 ]
  %355 = phi <2 x i64> [ <i64 0, i64 1>, %346 ], [ %367, %365 ]
  %356 = icmp ule <2 x i64> %355, %352
  %357 = extractelement <2 x i1> %356, i64 0
  br i1 %357, label %358, label %360

358:                                              ; preds = %353
  %359 = getelementptr inbounds double, ptr %339, i64 %354
  store double 1.000000e+00, ptr %359, align 8, !tbaa !7
  br label %360

360:                                              ; preds = %358, %353
  %361 = extractelement <2 x i1> %356, i64 1
  br i1 %361, label %362, label %365

362:                                              ; preds = %360
  %363 = or i64 %354, 1
  %364 = getelementptr inbounds double, ptr %339, i64 %363
  store double 1.000000e+00, ptr %364, align 8, !tbaa !7
  br label %365

365:                                              ; preds = %362, %360
  %366 = add i64 %354, 2
  %367 = add <2 x i64> %355, <i64 2, i64 2>
  %368 = icmp eq i64 %366, %349
  br i1 %368, label %369, label %353, !llvm.loop !18

369:                                              ; preds = %365, %328
  %370 = call i32 @gettimeofday(ptr noundef nonnull %5, ptr noundef null) #15
  %371 = load ptr, ptr %9, align 8, !tbaa !11
  %372 = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %337, i64 0, i32 1
  %373 = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %337, i64 0, i32 2
  %374 = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %337, i64 0, i32 3
  %375 = load ptr, ptr %337, align 8, !tbaa !22
  %376 = load ptr, ptr %372, align 8, !tbaa !24
  %377 = load ptr, ptr %373, align 8, !tbaa !25
  %378 = load i32, ptr %374, align 8, !tbaa !26
  %379 = icmp sgt i32 %378, 0
  %380 = zext i32 %378 to i64
  %381 = shl nuw nsw i64 %380, 3
  br label %382

382:                                              ; preds = %439, %369
  %383 = phi i32 [ 0, %369 ], [ %440, %439 ]
  %384 = load ptr, ptr %338, align 8, !tbaa !13
  %385 = load ptr, ptr %371, align 8, !tbaa !13
  %386 = tail call fastcc ptr @hypre_CAlloc(i32 noundef %378, i32 noundef 8) #15
  br i1 %379, label %387, label %436

387:                                              ; preds = %382
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %386, ptr align 8 %384, i64 %381, i1 false), !tbaa !7
  br label %388

388:                                              ; preds = %433, %387
  %389 = phi i64 [ %434, %433 ], [ 0, %387 ]
  %390 = getelementptr inbounds i32, ptr %376, i64 %389
  %391 = load i32, ptr %390, align 4, !tbaa !31
  %392 = sext i32 %391 to i64
  %393 = getelementptr inbounds double, ptr %375, i64 %392
  %394 = load double, ptr %393, align 8, !tbaa !7
  %395 = fcmp une double %394, 0.000000e+00
  br i1 %395, label %398, label %396

396:                                              ; preds = %388
  %397 = add nuw nsw i64 %389, 1
  br label %433

398:                                              ; preds = %388
  %399 = getelementptr inbounds double, ptr %385, i64 %389
  %400 = load double, ptr %399, align 8, !tbaa !7
  %401 = add nuw nsw i64 %389, 1
  %402 = getelementptr inbounds i32, ptr %376, i64 %401
  %403 = load i32, ptr %402, align 4, !tbaa !31
  %404 = add nsw i32 %391, 1
  %405 = icmp slt i32 %404, %403
  br i1 %405, label %406, label %429

406:                                              ; preds = %398
  %407 = sext i32 %404 to i64
  br label %408

408:                                              ; preds = %408, %406
  %409 = phi i64 [ %407, %406 ], [ %426, %408 ]
  %410 = phi double [ %400, %406 ], [ %425, %408 ]
  %411 = getelementptr inbounds i32, ptr %377, i64 %409
  %412 = load i32, ptr %411, align 4, !tbaa !31
  %413 = icmp sgt i32 %412, -1
  %414 = icmp slt i32 %412, %378
  %415 = and i1 %413, %414
  %416 = getelementptr inbounds double, ptr %375, i64 %409
  %417 = load double, ptr %416, align 8, !tbaa !7
  %418 = fneg double %417
  %419 = zext i32 %412 to i64
  %420 = getelementptr inbounds double, ptr %384, i64 %419
  %421 = sext i32 %412 to i64
  %422 = getelementptr inbounds double, ptr %386, i64 %421
  %423 = select i1 %415, ptr %420, ptr %422
  %424 = load double, ptr %423, align 8, !tbaa !7
  %425 = tail call double @llvm.fmuladd.f64(double %418, double %424, double %410)
  %426 = add nsw i64 %409, 1
  %427 = trunc i64 %426 to i32
  %428 = icmp eq i32 %403, %427
  br i1 %428, label %429, label %408, !llvm.loop !46

429:                                              ; preds = %408, %398
  %430 = phi double [ %400, %398 ], [ %425, %408 ]
  %431 = fdiv double %430, %394
  %432 = getelementptr inbounds double, ptr %384, i64 %389
  store double %431, ptr %432, align 8, !tbaa !7
  br label %433

433:                                              ; preds = %429, %396
  %434 = phi i64 [ %397, %396 ], [ %401, %429 ]
  %435 = icmp eq i64 %434, %380
  br i1 %435, label %436, label %388, !llvm.loop !47

436:                                              ; preds = %433, %382
  %437 = icmp eq ptr %386, null
  br i1 %437, label %439, label %438

438:                                              ; preds = %436
  tail call void @free(ptr noundef nonnull %386) #15
  br label %439

439:                                              ; preds = %438, %436
  %440 = add nuw nsw i32 %383, 1
  %441 = icmp eq i32 %440, 2000
  br i1 %441, label %442, label %382, !llvm.loop !48

442:                                              ; preds = %439
  %443 = call i32 @gettimeofday(ptr noundef nonnull %6, ptr noundef null) #15
  %444 = load i64, ptr %6, align 8, !tbaa !41
  %445 = load i64, ptr %5, align 8, !tbaa !41
  %446 = sub nsw i64 %444, %445
  %447 = sitofp i64 %446 to double
  %448 = getelementptr inbounds %struct.timeval, ptr %6, i64 0, i32 1
  %449 = load i64, ptr %448, align 8, !tbaa !44
  %450 = getelementptr inbounds %struct.timeval, ptr %5, i64 0, i32 1
  %451 = load i64, ptr %450, align 8, !tbaa !44
  %452 = sub nsw i64 %449, %451
  %453 = sitofp i64 %452 to double
  %454 = fdiv double %453, 1.000000e+06
  %455 = fadd double %454, %447
  %456 = load double, ptr @totalWallTime, align 8, !tbaa !7
  %457 = fadd double %456, %455
  store double %457, ptr @totalWallTime, align 8, !tbaa !7
  %458 = call double @_wyvern_slice_main__505471819()
  store double %458, ptr @totalCPUTime, align 8, !tbaa !7
  %459 = load ptr, ptr %338, align 8, !tbaa !13
  br label %460

460:                                              ; preds = %460, %442
  %461 = phi i64 [ 0, %442 ], [ %469, %460 ]
  %462 = phi double [ 0.000000e+00, %442 ], [ %468, %460 ]
  %463 = getelementptr inbounds double, ptr %459, i64 %461
  %464 = load double, ptr %463, align 8, !tbaa !7
  %465 = fadd double %464, -1.000000e+00
  %466 = tail call double @llvm.fabs.f64(double %465)
  %467 = fcmp ogt double %466, %462
  %468 = select i1 %467, double %466, double %462
  %469 = add nuw nsw i64 %461, 1
  %470 = icmp eq i64 %469, 125000
  br i1 %470, label %471, label %460, !llvm.loop !49

471:                                              ; preds = %460
  %.lcssa1 = phi double [ %468, %460 ]
  %472 = fcmp ogt double %.lcssa1, 0.000000e+00
  br i1 %472, label %473, label %475

473:                                              ; preds = %471
  %474 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, double noundef %.lcssa1) #16
  br label %475

475:                                              ; preds = %473, %471
  tail call void @free(ptr noundef nonnull %335) #15
  tail call fastcc void @hypre_CSRMatrixDestroy(ptr noundef nonnull %337) #15
  tail call fastcc void @hypre_SeqVectorDestroy(ptr noundef nonnull %338) #15
  %476 = load ptr, ptr %8, align 8, !tbaa !11
  tail call fastcc void @hypre_SeqVectorDestroy(ptr noundef %476) #15
  tail call fastcc void @hypre_SeqVectorDestroy(ptr noundef nonnull %371) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #14
  %477 = tail call i32 @putchar(i32 10)
  %478 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.28)
  %479 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.27)
  %480 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.21)
  %481 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.27)
  %482 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.28)
  store double 0.000000e+00, ptr @totalWallTime, align 8, !tbaa !7
  store double 0.000000e+00, ptr @totalCPUTime, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #14
  %483 = tail call fastcc ptr @hypre_CAlloc(i32 noundef 1, i32 noundef 32) #15
  store ptr null, ptr %483, align 8, !tbaa !13
  %484 = getelementptr inbounds %struct.hypre_Vector, ptr %483, i64 0, i32 1
  %485 = getelementptr inbounds %struct.hypre_Vector, ptr %483, i64 0, i32 3
  store <4 x i32> <i32 125000, i32 1, i32 1, i32 0>, ptr %484, align 8, !tbaa !31
  %486 = tail call fastcc ptr @hypre_CAlloc(i32 noundef 1, i32 noundef 32) #15
  store ptr null, ptr %486, align 8, !tbaa !13
  %487 = getelementptr inbounds %struct.hypre_Vector, ptr %486, i64 0, i32 1
  %488 = getelementptr inbounds %struct.hypre_Vector, ptr %486, i64 0, i32 3
  store <4 x i32> <i32 125000, i32 1, i32 1, i32 0>, ptr %487, align 8, !tbaa !31
  tail call fastcc void @hypre_SeqVectorInitialize(ptr noundef nonnull %483) #15
  tail call fastcc void @hypre_SeqVectorInitialize(ptr noundef nonnull %486) #15
  %489 = load ptr, ptr %483, align 8, !tbaa !13
  %490 = load i32, ptr %484, align 8, !tbaa !16
  %491 = load i32, ptr %485, align 8, !tbaa !17
  %492 = mul nsw i32 %491, %490
  %493 = icmp sgt i32 %492, 0
  br i1 %493, label %494, label %517

494:                                              ; preds = %475
  %495 = zext i32 %492 to i64
  %496 = add nuw nsw i64 %495, 1
  %497 = and i64 %496, 8589934590
  %498 = add nsw i64 %495, -1
  %499 = insertelement <2 x i64> poison, i64 %498, i64 0
  %500 = shufflevector <2 x i64> %499, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %501

501:                                              ; preds = %513, %494
  %502 = phi i64 [ 0, %494 ], [ %514, %513 ]
  %503 = phi <2 x i64> [ <i64 0, i64 1>, %494 ], [ %515, %513 ]
  %504 = icmp ule <2 x i64> %503, %500
  %505 = extractelement <2 x i1> %504, i64 0
  br i1 %505, label %506, label %508

506:                                              ; preds = %501
  %507 = getelementptr inbounds double, ptr %489, i64 %502
  store double 1.000000e+00, ptr %507, align 8, !tbaa !7
  br label %508

508:                                              ; preds = %506, %501
  %509 = extractelement <2 x i1> %504, i64 1
  br i1 %509, label %510, label %513

510:                                              ; preds = %508
  %511 = or i64 %502, 1
  %512 = getelementptr inbounds double, ptr %489, i64 %511
  store double 1.000000e+00, ptr %512, align 8, !tbaa !7
  br label %513

513:                                              ; preds = %510, %508
  %514 = add i64 %502, 2
  %515 = add <2 x i64> %503, <i64 2, i64 2>
  %516 = icmp eq i64 %514, %497
  br i1 %516, label %517, label %501, !llvm.loop !18

517:                                              ; preds = %513, %475
  %518 = load ptr, ptr %486, align 8, !tbaa !13
  %519 = load i32, ptr %487, align 8, !tbaa !16
  %520 = load i32, ptr %488, align 8, !tbaa !17
  %521 = mul nsw i32 %520, %519
  %522 = icmp sgt i32 %521, 0
  br i1 %522, label %523, label %546

523:                                              ; preds = %517
  %524 = zext i32 %521 to i64
  %525 = add nuw nsw i64 %524, 1
  %526 = and i64 %525, 8589934590
  %527 = add nsw i64 %524, -1
  %528 = insertelement <2 x i64> poison, i64 %527, i64 0
  %529 = shufflevector <2 x i64> %528, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %530

530:                                              ; preds = %542, %523
  %531 = phi i64 [ 0, %523 ], [ %543, %542 ]
  %532 = phi <2 x i64> [ <i64 0, i64 1>, %523 ], [ %544, %542 ]
  %533 = icmp ule <2 x i64> %532, %529
  %534 = extractelement <2 x i1> %533, i64 0
  br i1 %534, label %535, label %537

535:                                              ; preds = %530
  %536 = getelementptr inbounds double, ptr %518, i64 %531
  store double 1.000000e+00, ptr %536, align 8, !tbaa !7
  br label %537

537:                                              ; preds = %535, %530
  %538 = extractelement <2 x i1> %533, i64 1
  br i1 %538, label %539, label %542

539:                                              ; preds = %537
  %540 = or i64 %531, 1
  %541 = getelementptr inbounds double, ptr %518, i64 %540
  store double 1.000000e+00, ptr %541, align 8, !tbaa !7
  br label %542

542:                                              ; preds = %539, %537
  %543 = add i64 %531, 2
  %544 = add <2 x i64> %532, <i64 2, i64 2>
  %545 = icmp eq i64 %543, %526
  br i1 %545, label %546, label %530, !llvm.loop !18

546:                                              ; preds = %542, %517
  %547 = call i32 @gettimeofday(ptr noundef nonnull %3, ptr noundef null) #15
  %548 = tail call i64 @clock() #15
  %549 = zext i32 %492 to i64
  br label %550

550:                                              ; preds = %561, %546
  %551 = phi i32 [ 0, %546 ], [ %562, %561 ]
  br i1 %493, label %552, label %561

552:                                              ; preds = %552, %550
  %553 = phi i64 [ %559, %552 ], [ 0, %550 ]
  %554 = getelementptr inbounds double, ptr %489, i64 %553
  %555 = load double, ptr %554, align 8, !tbaa !7
  %556 = getelementptr inbounds double, ptr %518, i64 %553
  %557 = load double, ptr %556, align 8, !tbaa !7
  %558 = tail call double @llvm.fmuladd.f64(double %555, double 5.000000e-01, double %557)
  store double %558, ptr %556, align 8, !tbaa !7
  %559 = add nuw nsw i64 %553, 1
  %560 = icmp eq i64 %559, %549
  br i1 %560, label %561, label %552, !llvm.loop !50

561:                                              ; preds = %552, %550
  %562 = add nuw nsw i32 %551, 1
  %563 = icmp eq i32 %562, 2000
  br i1 %563, label %564, label %550, !llvm.loop !51

564:                                              ; preds = %561
  %565 = call i32 @gettimeofday(ptr noundef nonnull %4, ptr noundef null) #15
  %566 = tail call i64 @clock() #15
  br label %567

567:                                              ; preds = %567, %564
  %568 = phi i64 [ 0, %564 ], [ %577, %567 ]
  %569 = phi double [ 0.000000e+00, %564 ], [ %576, %567 ]
  %570 = getelementptr inbounds double, ptr %518, i64 %568
  %571 = load double, ptr %570, align 8, !tbaa !7
  %572 = fadd double %571, -1.000000e+00
  %573 = fadd double %572, -1.000000e+03
  %574 = tail call double @llvm.fabs.f64(double %573)
  %575 = fcmp ogt double %574, %569
  %576 = select i1 %575, double %574, double %569
  %577 = add nuw nsw i64 %568, 1
  %578 = icmp eq i64 %577, 125000
  br i1 %578, label %579, label %567, !llvm.loop !52

579:                                              ; preds = %567
  %.lcssa = phi double [ %576, %567 ]
  %580 = fcmp ogt double %.lcssa, 0.000000e+00
  br i1 %580, label %581, label %583

581:                                              ; preds = %579
  %582 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, double noundef %.lcssa) #16
  br label %583

583:                                              ; preds = %581, %579
  %584 = load i64, ptr %4, align 8, !tbaa !41
  %585 = load i64, ptr %3, align 8, !tbaa !41
  %586 = sub nsw i64 %584, %585
  %587 = sitofp i64 %586 to double
  %588 = getelementptr inbounds %struct.timeval, ptr %4, i64 0, i32 1
  %589 = load i64, ptr %588, align 8, !tbaa !44
  %590 = getelementptr inbounds %struct.timeval, ptr %3, i64 0, i32 1
  %591 = load i64, ptr %590, align 8, !tbaa !44
  %592 = sub nsw i64 %589, %591
  %593 = sitofp i64 %592 to double
  %594 = fdiv double %593, 1.000000e+06
  %595 = fadd double %594, %587
  %596 = load double, ptr @totalWallTime, align 8, !tbaa !7
  %597 = fadd double %596, %595
  store double %597, ptr @totalWallTime, align 8, !tbaa !7
  %598 = sub nsw i64 %566, %548
  %599 = sitofp i64 %598 to double
  %600 = fdiv double %599, 1.000000e+06
  %601 = load double, ptr @totalCPUTime, align 8, !tbaa !7
  %602 = fadd double %600, %601
  store double %602, ptr @totalCPUTime, align 8, !tbaa !7
  tail call fastcc void @hypre_SeqVectorDestroy(ptr noundef nonnull %483) #15
  tail call fastcc void @hypre_SeqVectorDestroy(ptr noundef nonnull %486) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #14
  %603 = tail call i32 @putchar(i32 10)
  %604 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.28)
  %605 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.27)
  %606 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.26)
  %607 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.27)
  %608 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.28)
  %609 = call i32 @gettimeofday(ptr noundef nonnull %16, ptr noundef null) #15
  %610 = tail call i64 @clock() #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %16) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %15) #14
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
  %8 = tail call noalias ptr @calloc(i64 noundef %6, i64 noundef %7) #17
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %16

10:                                               ; preds = %5
  %11 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %3) #16
  %12 = load ptr, ptr @stdout, align 8, !tbaa !11
  %13 = tail call i32 @fflush(ptr noundef %12) #16
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
  %5 = tail call fastcc ptr @hypre_CAlloc(i32 noundef 125001, i32 noundef 4) #15
  %6 = tail call fastcc ptr @hypre_CAlloc(i32 noundef 125000, i32 noundef 8) #15
  %7 = tail call fastcc ptr @hypre_CAlloc(i32 noundef 125000, i32 noundef 8) #15
  %8 = tail call fastcc ptr @hypre_CAlloc(i32 noundef 125000, i32 noundef 8) #15
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
  %62 = tail call fastcc ptr @hypre_CAlloc(i32 noundef %61, i32 noundef 4) #15
  %63 = tail call fastcc ptr @hypre_CAlloc(i32 noundef %61, i32 noundef 8) #15
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
  %154 = tail call fastcc ptr @hypre_CAlloc(i32 noundef 1, i32 noundef 56) #15
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
  %161 = tail call fastcc ptr @hypre_CAlloc(i32 noundef 1, i32 noundef 32) #15
  %162 = getelementptr inbounds %struct.hypre_Vector, ptr %161, i64 0, i32 1
  store <4 x i32> <i32 125000, i32 1, i32 1, i32 0>, ptr %162, align 8, !tbaa !31
  store ptr %6, ptr %161, align 8, !tbaa !13
  %163 = tail call fastcc ptr @hypre_CAlloc(i32 noundef 1, i32 noundef 32) #15
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
  %190 = tail call fastcc ptr @hypre_CAlloc(i32 noundef 1, i32 noundef 32) #15
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
  tail call void @free(ptr noundef nonnull %5) #15
  br label %8

8:                                                ; preds = %7, %3
  store ptr null, ptr %4, align 8, !tbaa !24
  %9 = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %0, i64 0, i32 6
  %10 = load ptr, ptr %9, align 8, !tbaa !27
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call void @free(ptr noundef nonnull %10) #15
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
  tail call void @free(ptr noundef nonnull %18) #15
  br label %21

21:                                               ; preds = %20, %17
  store ptr null, ptr %0, align 8, !tbaa !22
  %22 = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %0, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !25
  %24 = icmp eq ptr %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %21
  tail call void @free(ptr noundef nonnull %23) #15
  br label %26

26:                                               ; preds = %25, %21, %13
  tail call void @free(ptr noundef nonnull %0) #15
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
  tail call void @free(ptr noundef nonnull %8) #15
  br label %11

11:                                               ; preds = %10, %7, %3
  tail call void @free(ptr noundef nonnull %0) #15
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
  %12 = tail call fastcc ptr @hypre_CAlloc(i32 noundef %11, i32 noundef 8) #15
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

; Function Attrs: nounwind optsize willreturn
define internal i64 @_wyvern_slice_main__166472485() #12 {
sliceclone_:
  %0 = tail call i64 @clock() #15
  %1 = tail call i64 @clock() #15
  %2 = sub nsw i64 %1, %0
  ret i64 %2
}

; Function Attrs: nounwind optsize willreturn
define internal double @_wyvern_slice_main__293818467() #12 {
sliceclone_:
  %0 = call i64 @_wyvern_slice_main__166472485()
  %1 = sitofp i64 %0 to double
  %2 = fdiv double %1, 1.000000e+06
  ret double %2
}

; Function Attrs: noinline nounwind optsize willreturn
define internal double @_wyvern_slice_main__505471819() #13 {
sliceclone_:
  %0 = call double @_wyvern_slice_main__293818467()
  %1 = load double, ptr @totalCPUTime, align 8, !tbaa !7
  %2 = fadd double %0, %1
  ret double %2
}

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
attributes #12 = { nounwind optsize willreturn "Daedalus"="1" }
attributes #13 = { noinline nounwind optsize willreturn "Daedalus"="1" }
attributes #14 = { nounwind }
attributes #15 = { nounwind optsize }
attributes #16 = { optsize }
attributes #17 = { nounwind optsize allocsize(0,1) }

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
