; ModuleID = 'himenobmtxpa.e.bc.ll'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Mat = type { ptr, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [34 x i8] c"mimax = %d mjmax = %d mkmax = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"imax = %d jmax = %d kmax =%d\0A\00", align 1
@p = internal unnamed_addr global %struct.Mat zeroinitializer, align 8
@bnd = internal global %struct.Mat zeroinitializer, align 8
@wrk1 = internal global %struct.Mat zeroinitializer, align 8
@wrk2 = internal global %struct.Mat zeroinitializer, align 8
@a = internal global %struct.Mat zeroinitializer, align 8
@b = internal global %struct.Mat zeroinitializer, align 8
@c = internal global %struct.Mat zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [29 x i8] c" Loop executed for %d times\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c" Gosa : %e \0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define dso_local i32 @main(i32 noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef 64, i32 noundef 64, i32 noundef 128) #7
  %4 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef 63, i32 noundef 63, i32 noundef 127) #7
  store <4 x i32> <i32 1, i32 64, i32 64, i32 128>, ptr getelementptr inbounds (%struct.Mat, ptr @p, i64 0, i32 1), align 8, !tbaa !7
  %5 = tail call noalias dereferenceable_or_null(2097152) ptr @malloc(i64 noundef 2097152) #8
  store ptr %5, ptr @p, align 8, !tbaa !11
  store <4 x i32> <i32 1, i32 64, i32 64, i32 128>, ptr getelementptr inbounds (%struct.Mat, ptr @bnd, i64 0, i32 1), align 8, !tbaa !7
  %6 = tail call noalias dereferenceable_or_null(2097152) ptr @malloc(i64 noundef 2097152) #8
  store ptr %6, ptr @bnd, align 8, !tbaa !11
  store <4 x i32> <i32 1, i32 64, i32 64, i32 128>, ptr getelementptr inbounds (%struct.Mat, ptr @wrk1, i64 0, i32 1), align 8, !tbaa !7
  %7 = tail call noalias dereferenceable_or_null(2097152) ptr @malloc(i64 noundef 2097152) #8
  store ptr %7, ptr @wrk1, align 8, !tbaa !11
  store <4 x i32> <i32 1, i32 64, i32 64, i32 128>, ptr getelementptr inbounds (%struct.Mat, ptr @wrk2, i64 0, i32 1), align 8, !tbaa !7
  %8 = tail call noalias dereferenceable_or_null(2097152) ptr @malloc(i64 noundef 2097152) #8
  store ptr %8, ptr @wrk2, align 8, !tbaa !11
  store <4 x i32> <i32 4, i32 64, i32 64, i32 128>, ptr getelementptr inbounds (%struct.Mat, ptr @a, i64 0, i32 1), align 8, !tbaa !7
  %9 = tail call noalias dereferenceable_or_null(8388608) ptr @malloc(i64 noundef 8388608) #8
  store ptr %9, ptr @a, align 8, !tbaa !11
  store <4 x i32> <i32 3, i32 64, i32 64, i32 128>, ptr getelementptr inbounds (%struct.Mat, ptr @b, i64 0, i32 1), align 8, !tbaa !7
  %10 = tail call noalias dereferenceable_or_null(6291456) ptr @malloc(i64 noundef 6291456) #8
  store ptr %10, ptr @b, align 8, !tbaa !11
  store <4 x i32> <i32 3, i32 64, i32 64, i32 128>, ptr getelementptr inbounds (%struct.Mat, ptr @c, i64 0, i32 1), align 8, !tbaa !7
  %11 = tail call noalias dereferenceable_or_null(6291456) ptr @malloc(i64 noundef 6291456) #8
  store ptr %11, ptr @c, align 8, !tbaa !11
  %12 = load ptr, ptr @p, align 8
  br label %13

13:                                               ; preds = %58, %2
  %14 = phi i32 [ 0, %2 ], [ %59, %58 ]
  %15 = mul nsw i32 %14, %14
  %16 = sitofp i32 %15 to float
  %17 = fdiv float %16, 3.969000e+03
  %18 = shl i32 %14, 13
  br label %19

19:                                               ; preds = %55, %13
  %20 = phi i64 [ 0, %13 ], [ %56, %55 ]
  %21 = trunc i64 %20 to i32
  %22 = shl i32 %21, 7
  %23 = add i32 %18, %22
  %24 = sext i32 %23 to i64
  %25 = or i64 %24, 1
  %26 = or i64 %24, 2
  %27 = or i64 %24, 3
  br label %28

28:                                               ; preds = %51, %19
  %29 = phi i64 [ 0, %19 ], [ %52, %51 ]
  %30 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %19 ], [ %53, %51 ]
  %31 = icmp ult <4 x i64> %30, <i64 128, i64 128, i64 128, i64 128>
  %32 = extractelement <4 x i1> %31, i64 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = add nsw i64 %29, %24
  %35 = getelementptr inbounds float, ptr %12, i64 %34
  store float %17, ptr %35, align 4, !tbaa !14
  br label %36

36:                                               ; preds = %33, %28
  %37 = extractelement <4 x i1> %31, i64 1
  br i1 %37, label %38, label %41

38:                                               ; preds = %36
  %39 = add nsw i64 %25, %29
  %40 = getelementptr inbounds float, ptr %12, i64 %39
  store float %17, ptr %40, align 4, !tbaa !14
  br label %41

41:                                               ; preds = %38, %36
  %42 = extractelement <4 x i1> %31, i64 2
  br i1 %42, label %43, label %46

43:                                               ; preds = %41
  %44 = add nsw i64 %26, %29
  %45 = getelementptr inbounds float, ptr %12, i64 %44
  store float %17, ptr %45, align 4, !tbaa !14
  br label %46

46:                                               ; preds = %43, %41
  %47 = extractelement <4 x i1> %31, i64 3
  br i1 %47, label %48, label %51

48:                                               ; preds = %46
  %49 = add nsw i64 %27, %29
  %50 = getelementptr inbounds float, ptr %12, i64 %49
  store float %17, ptr %50, align 4, !tbaa !14
  br label %51

51:                                               ; preds = %48, %46
  %52 = add nuw nsw i64 %29, 4
  %53 = add <4 x i64> %30, <i64 4, i64 4, i64 4, i64 4>
  %54 = icmp eq i64 %52, 128
  br i1 %54, label %55, label %28, !llvm.loop !16

55:                                               ; preds = %51
  %56 = add nuw nsw i64 %20, 1
  %57 = icmp eq i64 %56, 64
  br i1 %57, label %58, label %19, !llvm.loop !20

58:                                               ; preds = %55
  %59 = add nuw nsw i32 %14, 1
  %60 = icmp eq i32 %59, 64
  br i1 %60, label %61, label %13, !llvm.loop !21

61:                                               ; preds = %58
  tail call fastcc void @mat_set(ptr noundef nonnull @bnd, i32 noundef 0, float noundef 1.000000e+00) #7
  tail call fastcc void @mat_set(ptr noundef nonnull @wrk1, i32 noundef 0, float noundef 0.000000e+00) #7
  tail call fastcc void @mat_set(ptr noundef nonnull @wrk2, i32 noundef 0, float noundef 0.000000e+00) #7
  tail call fastcc void @mat_set(ptr noundef nonnull @a, i32 noundef 0, float noundef 1.000000e+00) #7
  tail call fastcc void @mat_set(ptr noundef nonnull @a, i32 noundef 1, float noundef 1.000000e+00) #7
  tail call fastcc void @mat_set(ptr noundef nonnull @a, i32 noundef 2, float noundef 1.000000e+00) #7
  tail call fastcc void @mat_set(ptr noundef nonnull @a, i32 noundef 3, float noundef 0x3FC5555560000000) #7
  tail call fastcc void @mat_set(ptr noundef nonnull @b, i32 noundef 0, float noundef 0.000000e+00) #7
  tail call fastcc void @mat_set(ptr noundef nonnull @b, i32 noundef 1, float noundef 0.000000e+00) #7
  tail call fastcc void @mat_set(ptr noundef nonnull @b, i32 noundef 2, float noundef 0.000000e+00) #7
  tail call fastcc void @mat_set(ptr noundef nonnull @c, i32 noundef 0, float noundef 1.000000e+00) #7
  tail call fastcc void @mat_set(ptr noundef nonnull @c, i32 noundef 1, float noundef 1.000000e+00) #7
  tail call fastcc void @mat_set(ptr noundef nonnull @c, i32 noundef 2, float noundef 1.000000e+00) #7
  %62 = load i32, ptr getelementptr inbounds (%struct.Mat, ptr @p, i64 0, i32 2), align 4, !tbaa !22
  %63 = add i32 %62, -1
  %64 = load i32, ptr getelementptr inbounds (%struct.Mat, ptr @p, i64 0, i32 3), align 8, !tbaa !23
  %65 = load i32, ptr getelementptr inbounds (%struct.Mat, ptr @p, i64 0, i32 4), align 4, !tbaa !24
  %66 = add i32 %65, -1
  %67 = add i32 %64, -1
  %68 = icmp sgt i32 %62, 2
  %69 = icmp sgt i32 %64, 2
  %70 = icmp sgt i32 %65, 2
  %71 = mul i32 %65, %64
  %72 = sext i32 %65 to i64
  %73 = zext i32 %63 to i64
  %74 = zext i32 %67 to i64
  %75 = zext i32 %66 to i64
  %76 = load ptr, ptr @p, align 8
  %77 = load ptr, ptr @p, align 8
  br label %78

78:                                               ; preds = %364, %61
  %79 = phi i32 [ 0, %61 ], [ %366, %364 ]
  br i1 %68, label %80, label %364

80:                                               ; preds = %328, %78
  %81 = phi i64 [ %83, %328 ], [ 1, %78 ]
  %82 = phi float [ %329, %328 ], [ 0.000000e+00, %78 ]
  %83 = add nuw nsw i64 %81, 1
  br i1 %69, label %84, label %328

84:                                               ; preds = %80
  %85 = trunc i64 %83 to i32
  %86 = mul i32 %71, %85
  %87 = trunc i64 %81 to i32
  %88 = mul i32 %71, %87
  %89 = add i32 %87, -1
  %90 = mul i32 %89, %71
  %91 = sext i32 %86 to i64
  %92 = sext i32 %90 to i64
  %93 = sext i32 %88 to i64
  %94 = load ptr, ptr @a, align 8
  %95 = load i32, ptr getelementptr inbounds (%struct.Mat, ptr @a, i64 0, i32 2), align 4
  %96 = load i32, ptr getelementptr inbounds (%struct.Mat, ptr @a, i64 0, i32 3), align 8
  %97 = load i32, ptr getelementptr inbounds (%struct.Mat, ptr @a, i64 0, i32 4), align 4
  %98 = mul nsw i32 %96, %87
  %99 = add i32 %95, %87
  %100 = mul i32 %99, %96
  %101 = shl nsw i32 %95, 1
  %102 = add i32 %101, %87
  %103 = mul i32 %102, %96
  %104 = load ptr, ptr @b, align 8
  %105 = load i32, ptr getelementptr inbounds (%struct.Mat, ptr @b, i64 0, i32 2), align 4
  %106 = load i32, ptr getelementptr inbounds (%struct.Mat, ptr @b, i64 0, i32 3), align 8
  %107 = load i32, ptr getelementptr inbounds (%struct.Mat, ptr @b, i64 0, i32 4), align 4
  %108 = mul nsw i32 %106, %87
  %109 = add i32 %105, %87
  %110 = mul i32 %109, %106
  %111 = shl nsw i32 %105, 1
  %112 = add i32 %111, %87
  %113 = mul i32 %112, %106
  %114 = load ptr, ptr @c, align 8
  %115 = load i32, ptr getelementptr inbounds (%struct.Mat, ptr @c, i64 0, i32 2), align 4
  %116 = load i32, ptr getelementptr inbounds (%struct.Mat, ptr @c, i64 0, i32 3), align 8
  %117 = load i32, ptr getelementptr inbounds (%struct.Mat, ptr @c, i64 0, i32 4), align 4
  %118 = mul nsw i32 %116, %87
  %119 = add i32 %115, %87
  %120 = mul i32 %119, %116
  %121 = shl nsw i32 %115, 1
  %122 = add i32 %121, %87
  %123 = mul i32 %122, %116
  %124 = load ptr, ptr @wrk1, align 8
  %125 = load i32, ptr getelementptr inbounds (%struct.Mat, ptr @wrk1, i64 0, i32 3), align 8
  %126 = load i32, ptr getelementptr inbounds (%struct.Mat, ptr @wrk1, i64 0, i32 4), align 4
  %127 = mul nsw i32 %125, %87
  %128 = mul nsw i32 %95, 3
  %129 = add i32 %128, %87
  %130 = mul i32 %129, %96
  %131 = load ptr, ptr @bnd, align 8
  %132 = load i32, ptr getelementptr inbounds (%struct.Mat, ptr @bnd, i64 0, i32 3), align 8
  %133 = load i32, ptr getelementptr inbounds (%struct.Mat, ptr @bnd, i64 0, i32 4), align 4
  %134 = mul nsw i32 %132, %87
  %135 = load ptr, ptr @wrk2, align 8
  %136 = load i32, ptr getelementptr inbounds (%struct.Mat, ptr @wrk2, i64 0, i32 3), align 8
  %137 = load i32, ptr getelementptr inbounds (%struct.Mat, ptr @wrk2, i64 0, i32 4), align 4
  %138 = mul nsw i32 %136, %87
  br label %139

139:                                              ; preds = %324, %84
  %140 = phi i64 [ 1, %84 ], [ %325, %324 ]
  %141 = phi float [ %82, %84 ], [ %326, %324 ]
  br i1 %70, label %144, label %142

142:                                              ; preds = %139
  %143 = add nuw nsw i64 %140, 1
  br label %324

144:                                              ; preds = %139
  %145 = trunc i64 %140 to i32
  %146 = add i32 %98, %145
  %147 = mul i32 %146, %97
  %148 = mul nsw i64 %140, %72
  %149 = add nsw i64 %148, %91
  %150 = add i32 %100, %145
  %151 = mul i32 %150, %97
  %152 = add nuw nsw i64 %140, 1
  %153 = mul nsw i64 %152, %72
  %154 = add nsw i64 %153, %93
  %155 = add i32 %103, %145
  %156 = mul i32 %155, %97
  %157 = add nsw i64 %148, %93
  %158 = add i32 %108, %145
  %159 = mul i32 %158, %107
  %160 = add nsw i64 %153, %91
  %161 = add nsw i64 %140, -1
  %162 = mul nsw i64 %161, %72
  %163 = add nsw i64 %162, %91
  %164 = add nsw i64 %153, %92
  %165 = add nsw i64 %162, %92
  %166 = add i32 %110, %145
  %167 = mul i32 %166, %107
  %168 = add nsw i64 %162, %93
  %169 = add i32 %113, %145
  %170 = mul i32 %169, %107
  %171 = add nsw i64 %148, %92
  %172 = add i32 %118, %145
  %173 = mul i32 %172, %117
  %174 = add i32 %120, %145
  %175 = mul i32 %174, %117
  %176 = add i32 %123, %145
  %177 = mul i32 %176, %117
  %178 = add i32 %127, %145
  %179 = mul i32 %178, %126
  %180 = add i32 %130, %145
  %181 = mul i32 %180, %97
  %182 = add i32 %134, %145
  %183 = mul i32 %182, %133
  %184 = add i32 %138, %145
  %185 = mul i32 %184, %137
  %186 = sext i32 %147 to i64
  %187 = sext i32 %151 to i64
  %188 = sext i32 %156 to i64
  %189 = sext i32 %159 to i64
  %190 = sext i32 %167 to i64
  %191 = sext i32 %170 to i64
  %192 = sext i32 %173 to i64
  %193 = sext i32 %175 to i64
  %194 = sext i32 %177 to i64
  %195 = sext i32 %179 to i64
  %196 = sext i32 %181 to i64
  %197 = sext i32 %183 to i64
  %198 = sext i32 %185 to i64
  br label %199

199:                                              ; preds = %199, %144
  %200 = phi i64 [ 1, %144 ], [ %219, %199 ]
  %201 = phi float [ %141, %144 ], [ %319, %199 ]
  %202 = add nsw i64 %200, %186
  %203 = getelementptr inbounds float, ptr %94, i64 %202
  %204 = load float, ptr %203, align 4, !tbaa !14
  %205 = add nsw i64 %200, %149
  %206 = getelementptr inbounds float, ptr %76, i64 %205
  %207 = load float, ptr %206, align 4, !tbaa !14
  %208 = add nsw i64 %200, %187
  %209 = getelementptr inbounds float, ptr %94, i64 %208
  %210 = load float, ptr %209, align 4, !tbaa !14
  %211 = add nsw i64 %200, %154
  %212 = getelementptr inbounds float, ptr %76, i64 %211
  %213 = load float, ptr %212, align 4, !tbaa !14
  %214 = fmul float %210, %213
  %215 = tail call float @llvm.fmuladd.f32(float %204, float %207, float %214)
  %216 = add nsw i64 %200, %188
  %217 = getelementptr inbounds float, ptr %94, i64 %216
  %218 = load float, ptr %217, align 4, !tbaa !14
  %219 = add nuw nsw i64 %200, 1
  %220 = add nsw i64 %219, %157
  %221 = getelementptr inbounds float, ptr %76, i64 %220
  %222 = load float, ptr %221, align 4, !tbaa !14
  %223 = tail call float @llvm.fmuladd.f32(float %218, float %222, float %215)
  %224 = add nsw i64 %200, %189
  %225 = getelementptr inbounds float, ptr %104, i64 %224
  %226 = load float, ptr %225, align 4, !tbaa !14
  %227 = add nsw i64 %160, %200
  %228 = getelementptr inbounds float, ptr %76, i64 %227
  %229 = load float, ptr %228, align 4, !tbaa !14
  %230 = add nsw i64 %163, %200
  %231 = getelementptr inbounds float, ptr %76, i64 %230
  %232 = load float, ptr %231, align 4, !tbaa !14
  %233 = fsub float %229, %232
  %234 = add nsw i64 %164, %200
  %235 = getelementptr inbounds float, ptr %76, i64 %234
  %236 = load float, ptr %235, align 4, !tbaa !14
  %237 = fsub float %233, %236
  %238 = add nsw i64 %165, %200
  %239 = getelementptr inbounds float, ptr %76, i64 %238
  %240 = load float, ptr %239, align 4, !tbaa !14
  %241 = fadd float %237, %240
  %242 = tail call float @llvm.fmuladd.f32(float %226, float %241, float %223)
  %243 = add nsw i64 %200, %190
  %244 = getelementptr inbounds float, ptr %104, i64 %243
  %245 = load float, ptr %244, align 4, !tbaa !14
  %246 = add nsw i64 %219, %154
  %247 = getelementptr inbounds float, ptr %76, i64 %246
  %248 = load float, ptr %247, align 4, !tbaa !14
  %249 = add nsw i64 %219, %168
  %250 = getelementptr inbounds float, ptr %76, i64 %249
  %251 = load float, ptr %250, align 4, !tbaa !14
  %252 = fsub float %248, %251
  %253 = add nsw i64 %200, -1
  %254 = add nsw i64 %253, %154
  %255 = getelementptr inbounds float, ptr %76, i64 %254
  %256 = load float, ptr %255, align 4, !tbaa !14
  %257 = fsub float %252, %256
  %258 = add nsw i64 %253, %168
  %259 = getelementptr inbounds float, ptr %76, i64 %258
  %260 = load float, ptr %259, align 4, !tbaa !14
  %261 = fadd float %257, %260
  %262 = tail call float @llvm.fmuladd.f32(float %245, float %261, float %242)
  %263 = add nsw i64 %200, %191
  %264 = getelementptr inbounds float, ptr %104, i64 %263
  %265 = load float, ptr %264, align 4, !tbaa !14
  %266 = add nsw i64 %219, %149
  %267 = getelementptr inbounds float, ptr %76, i64 %266
  %268 = load float, ptr %267, align 4, !tbaa !14
  %269 = add nsw i64 %219, %171
  %270 = getelementptr inbounds float, ptr %76, i64 %269
  %271 = load float, ptr %270, align 4, !tbaa !14
  %272 = fsub float %268, %271
  %273 = add nsw i64 %253, %149
  %274 = getelementptr inbounds float, ptr %76, i64 %273
  %275 = load float, ptr %274, align 4, !tbaa !14
  %276 = fsub float %272, %275
  %277 = add nsw i64 %253, %171
  %278 = getelementptr inbounds float, ptr %76, i64 %277
  %279 = load float, ptr %278, align 4, !tbaa !14
  %280 = fadd float %276, %279
  %281 = tail call float @llvm.fmuladd.f32(float %265, float %280, float %262)
  %282 = add nsw i64 %200, %192
  %283 = getelementptr inbounds float, ptr %114, i64 %282
  %284 = load float, ptr %283, align 4, !tbaa !14
  %285 = add nsw i64 %200, %171
  %286 = getelementptr inbounds float, ptr %76, i64 %285
  %287 = load float, ptr %286, align 4, !tbaa !14
  %288 = tail call float @llvm.fmuladd.f32(float %284, float %287, float %281)
  %289 = add nsw i64 %200, %193
  %290 = getelementptr inbounds float, ptr %114, i64 %289
  %291 = load float, ptr %290, align 4, !tbaa !14
  %292 = add nsw i64 %200, %168
  %293 = getelementptr inbounds float, ptr %76, i64 %292
  %294 = load float, ptr %293, align 4, !tbaa !14
  %295 = tail call float @llvm.fmuladd.f32(float %291, float %294, float %288)
  %296 = add nsw i64 %200, %194
  %297 = getelementptr inbounds float, ptr %114, i64 %296
  %298 = load float, ptr %297, align 4, !tbaa !14
  %299 = add nsw i64 %253, %157
  %300 = getelementptr inbounds float, ptr %76, i64 %299
  %301 = load float, ptr %300, align 4, !tbaa !14
  %302 = tail call float @llvm.fmuladd.f32(float %298, float %301, float %295)
  %303 = add nsw i64 %200, %195
  %304 = getelementptr inbounds float, ptr %124, i64 %303
  %305 = load float, ptr %304, align 4, !tbaa !14
  %306 = fadd float %302, %305
  %307 = add nsw i64 %200, %196
  %308 = getelementptr inbounds float, ptr %94, i64 %307
  %309 = load float, ptr %308, align 4, !tbaa !14
  %310 = add nsw i64 %200, %157
  %311 = getelementptr inbounds float, ptr %76, i64 %310
  %312 = load float, ptr %311, align 4, !tbaa !14
  %313 = fneg float %312
  %314 = tail call float @llvm.fmuladd.f32(float %306, float %309, float %313)
  %315 = add nsw i64 %200, %197
  %316 = getelementptr inbounds float, ptr %131, i64 %315
  %317 = load float, ptr %316, align 4, !tbaa !14
  %318 = fmul float %314, %317
  %319 = tail call float @llvm.fmuladd.f32(float %318, float %318, float %201)
  %320 = tail call float @llvm.fmuladd.f32(float %318, float 0x3FE99999A0000000, float %312)
  %321 = add nsw i64 %200, %198
  %322 = getelementptr inbounds float, ptr %135, i64 %321
  store float %320, ptr %322, align 4, !tbaa !14
  %323 = icmp eq i64 %219, %75
  br i1 %323, label %324, label %199, !llvm.loop !25

324:                                              ; preds = %199, %142
  %325 = phi i64 [ %143, %142 ], [ %152, %199 ]
  %326 = phi float [ %141, %142 ], [ %319, %199 ]
  %327 = icmp eq i64 %325, %74
  br i1 %327, label %328, label %139, !llvm.loop !26

328:                                              ; preds = %324, %80
  %329 = phi float [ %82, %80 ], [ %326, %324 ]
  %330 = icmp eq i64 %83, %73
  br i1 %330, label %331, label %80, !llvm.loop !27

331:                                              ; preds = %361, %328
  %.lcssa = phi float [ %.lcssa, %361 ], [ %329, %328 ]
  %332 = phi i32 [ %362, %361 ], [ 1, %328 ]
  br i1 %69, label %333, label %361

333:                                              ; preds = %331
  %334 = mul nsw i32 %332, %64
  %335 = load ptr, ptr @wrk2, align 8
  %336 = load i32, ptr getelementptr inbounds (%struct.Mat, ptr @wrk2, i64 0, i32 3), align 8
  %337 = load i32, ptr getelementptr inbounds (%struct.Mat, ptr @wrk2, i64 0, i32 4), align 4
  %338 = mul i32 %336, %332
  br label %339

339:                                              ; preds = %358, %333
  %340 = phi i64 [ 1, %333 ], [ %359, %358 ]
  br i1 %70, label %341, label %358

341:                                              ; preds = %339
  %342 = trunc i64 %340 to i32
  %343 = add i32 %338, %342
  %344 = mul i32 %343, %337
  %345 = add i32 %334, %342
  %346 = mul i32 %345, %65
  %347 = sext i32 %344 to i64
  %348 = sext i32 %346 to i64
  br label %349

349:                                              ; preds = %349, %341
  %350 = phi i64 [ 1, %341 ], [ %356, %349 ]
  %351 = add nsw i64 %350, %347
  %352 = getelementptr inbounds float, ptr %335, i64 %351
  %353 = load float, ptr %352, align 4, !tbaa !14
  %354 = add nsw i64 %350, %348
  %355 = getelementptr inbounds float, ptr %77, i64 %354
  store float %353, ptr %355, align 4, !tbaa !14
  %356 = add nuw nsw i64 %350, 1
  %357 = icmp eq i64 %356, %75
  br i1 %357, label %358, label %349, !llvm.loop !28

358:                                              ; preds = %349, %339
  %359 = add nuw nsw i64 %340, 1
  %360 = icmp eq i64 %359, %74
  br i1 %360, label %361, label %339, !llvm.loop !29

361:                                              ; preds = %358, %331
  %362 = add nuw nsw i32 %332, 1
  %363 = icmp eq i32 %362, %63
  br i1 %363, label %364, label %331, !llvm.loop !30

364:                                              ; preds = %361, %78
  %365 = phi float [ 0.000000e+00, %78 ], [ %.lcssa, %361 ]
  %366 = add nuw nsw i32 %79, 1
  %367 = icmp eq i32 %366, 64
  br i1 %367, label %368, label %78, !llvm.loop !31

368:                                              ; preds = %364
  %.lcssa1 = phi float [ %365, %364 ]
  %369 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef 64) #7
  %370 = fpext float %.lcssa1 to double
  %371 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, double noundef %370) #7
  %372 = load ptr, ptr @p, align 8, !tbaa !11
  %373 = icmp eq ptr %372, null
  br i1 %373, label %375, label %374

374:                                              ; preds = %368
  tail call void @free(ptr noundef nonnull %372) #9
  br label %375

375:                                              ; preds = %374, %368
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) @p, i8 0, i64 24, i1 false)
  %376 = load ptr, ptr @bnd, align 8, !tbaa !11
  %377 = icmp eq ptr %376, null
  br i1 %377, label %379, label %378

378:                                              ; preds = %375
  tail call void @free(ptr noundef nonnull %376) #9
  br label %379

379:                                              ; preds = %378, %375
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) @bnd, i8 0, i64 24, i1 false)
  %380 = load ptr, ptr @wrk1, align 8, !tbaa !11
  %381 = icmp eq ptr %380, null
  br i1 %381, label %383, label %382

382:                                              ; preds = %379
  tail call void @free(ptr noundef nonnull %380) #9
  br label %383

383:                                              ; preds = %382, %379
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) @wrk1, i8 0, i64 24, i1 false)
  %384 = load ptr, ptr @wrk2, align 8, !tbaa !11
  %385 = icmp eq ptr %384, null
  br i1 %385, label %387, label %386

386:                                              ; preds = %383
  tail call void @free(ptr noundef nonnull %384) #9
  br label %387

387:                                              ; preds = %386, %383
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) @wrk2, i8 0, i64 24, i1 false)
  %388 = load ptr, ptr @a, align 8, !tbaa !11
  %389 = icmp eq ptr %388, null
  br i1 %389, label %391, label %390

390:                                              ; preds = %387
  tail call void @free(ptr noundef nonnull %388) #9
  br label %391

391:                                              ; preds = %390, %387
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) @a, i8 0, i64 24, i1 false)
  %392 = load ptr, ptr @b, align 8, !tbaa !11
  %393 = icmp eq ptr %392, null
  br i1 %393, label %395, label %394

394:                                              ; preds = %391
  tail call void @free(ptr noundef nonnull %392) #9
  br label %395

395:                                              ; preds = %394, %391
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) @b, i8 0, i64 24, i1 false)
  %396 = load ptr, ptr @c, align 8, !tbaa !11
  %397 = icmp eq ptr %396, null
  br i1 %397, label %399, label %398

398:                                              ; preds = %395
  tail call void @free(ptr noundef nonnull %396) #9
  br label %399

399:                                              ; preds = %398, %395
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) @c, i8 0, i64 24, i1 false)
  ret i32 0
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @mat_set(ptr nocapture noundef readonly %0, i32 noundef %1, float noundef %2) unnamed_addr #3 {
  %4 = getelementptr inbounds %struct.Mat, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !22
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %71

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.Mat, ptr %0, i64 0, i32 3
  %9 = load i32, ptr %8, align 8, !tbaa !23
  %10 = icmp sgt i32 %9, 0
  %11 = getelementptr inbounds %struct.Mat, ptr %0, i64 0, i32 4
  %12 = mul nsw i32 %5, %1
  %13 = zext i32 %9 to i64
  br label %14

14:                                               ; preds = %68, %7
  %15 = phi i32 [ 0, %7 ], [ %69, %68 ]
  br i1 %10, label %16, label %68

16:                                               ; preds = %14
  %17 = load i32, ptr %11, align 4, !tbaa !24
  %18 = icmp sgt i32 %17, 0
  %19 = add i32 %15, %12
  %20 = mul i32 %19, %9
  %21 = zext i32 %17 to i64
  %22 = add nuw nsw i64 %21, 3
  %23 = and i64 %22, 8589934588
  %24 = add nsw i64 %21, -1
  %25 = insertelement <4 x i64> poison, i64 %24, i64 0
  %26 = shufflevector <4 x i64> %25, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %27

27:                                               ; preds = %65, %16
  %28 = phi i64 [ 0, %16 ], [ %66, %65 ]
  br i1 %18, label %29, label %65

29:                                               ; preds = %27
  %30 = load ptr, ptr %0, align 8, !tbaa !11
  %31 = trunc i64 %28 to i32
  %32 = add i32 %20, %31
  %33 = mul i32 %32, %17
  %34 = sext i32 %33 to i64
  %35 = add nsw i64 %34, 1
  %36 = add nsw i64 %34, 2
  %37 = add nsw i64 %34, 3
  br label %38

38:                                               ; preds = %61, %29
  %39 = phi i64 [ 0, %29 ], [ %62, %61 ]
  %40 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %29 ], [ %63, %61 ]
  %41 = icmp ule <4 x i64> %40, %26
  %42 = extractelement <4 x i1> %41, i64 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = add nsw i64 %39, %34
  %45 = getelementptr inbounds float, ptr %30, i64 %44
  store float %2, ptr %45, align 4, !tbaa !14
  br label %46

46:                                               ; preds = %43, %38
  %47 = extractelement <4 x i1> %41, i64 1
  br i1 %47, label %48, label %51

48:                                               ; preds = %46
  %49 = add nsw i64 %35, %39
  %50 = getelementptr inbounds float, ptr %30, i64 %49
  store float %2, ptr %50, align 4, !tbaa !14
  br label %51

51:                                               ; preds = %48, %46
  %52 = extractelement <4 x i1> %41, i64 2
  br i1 %52, label %53, label %56

53:                                               ; preds = %51
  %54 = add nsw i64 %36, %39
  %55 = getelementptr inbounds float, ptr %30, i64 %54
  store float %2, ptr %55, align 4, !tbaa !14
  br label %56

56:                                               ; preds = %53, %51
  %57 = extractelement <4 x i1> %41, i64 3
  br i1 %57, label %58, label %61

58:                                               ; preds = %56
  %59 = add nsw i64 %37, %39
  %60 = getelementptr inbounds float, ptr %30, i64 %59
  store float %2, ptr %60, align 4, !tbaa !14
  br label %61

61:                                               ; preds = %58, %56
  %62 = add nuw nsw i64 %39, 4
  %63 = add <4 x i64> %40, <i64 4, i64 4, i64 4, i64 4>
  %64 = icmp eq i64 %62, %23
  br i1 %64, label %65, label %38, !llvm.loop !32

65:                                               ; preds = %61, %27
  %66 = add nuw nsw i64 %28, 1
  %67 = icmp eq i64 %66, %13
  br i1 %67, label %68, label %27, !llvm.loop !33

68:                                               ; preds = %65, %14
  %69 = add nuw nsw i32 %15, 1
  %70 = icmp eq i32 %69, %5
  br i1 %70, label %71, label %14, !llvm.loop !34

71:                                               ; preds = %68, %3
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

attributes #0 = { nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { optsize }
attributes #8 = { nounwind optsize allocsize(0) }
attributes #9 = { nounwind optsize }

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
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!12, !13, i64 0}
!12 = !{!"Mat", !13, i64 0, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20}
!13 = !{!"any pointer", !9, i64 0}
!14 = !{!15, !15, i64 0}
!15 = !{!"float", !9, i64 0}
!16 = distinct !{!16, !17, !18, !19}
!17 = !{!"llvm.loop.mustprogress"}
!18 = !{!"llvm.loop.isvectorized", i32 1}
!19 = !{!"llvm.loop.unroll.runtime.disable"}
!20 = distinct !{!20, !17}
!21 = distinct !{!21, !17}
!22 = !{!12, !8, i64 12}
!23 = !{!12, !8, i64 16}
!24 = !{!12, !8, i64 20}
!25 = distinct !{!25, !17}
!26 = distinct !{!26, !17}
!27 = distinct !{!27, !17}
!28 = distinct !{!28, !17}
!29 = distinct !{!29, !17}
!30 = distinct !{!30, !17}
!31 = distinct !{!31, !17}
!32 = distinct !{!32, !17, !18, !19}
!33 = distinct !{!33, !17}
!34 = distinct !{!34, !17}
