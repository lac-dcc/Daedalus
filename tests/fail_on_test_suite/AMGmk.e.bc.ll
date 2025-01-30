; ModuleID = '/src/llvm-test-suite/build/MultiSource/Benchmarks/ASC_Sequoia/AMGmk/AMGmk.e.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hypre_CSRMatrix = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32 }
%struct.hypre_Vector = type { ptr, i32, i32, i32, i32, i32, i32 }
%struct.timeval = type { i64, i64 }

@hypre__global_error = internal global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Out of memory trying to allocate %d bytes\0A\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [77 x i8] c"/src/llvm-test-suite/MultiSource/Benchmarks/ASC_Sequoia/AMGmk/hypre_memory.c\00", align 1
@totalWallTime = internal global double 0.000000e+00, align 8
@totalCPUTime = internal global double 0.000000e+00, align 8
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
define internal ptr @hypre_CSRMatrixCreate(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = tail call ptr @hypre_CAlloc(i32 noundef 1, i32 noundef 56) #13
  %5 = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %4, i64 0, i32 6
  store ptr null, ptr %5, align 8, !tbaa !7
  %6 = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %4, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  store i32 %0, ptr %6, align 8, !tbaa !13
  %7 = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %4, i64 0, i32 4
  store i32 %1, ptr %7, align 4, !tbaa !14
  %8 = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %4, i64 0, i32 5
  store i32 %2, ptr %8, align 8, !tbaa !15
  %9 = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %4, i64 0, i32 8
  store i32 1, ptr %9, align 4, !tbaa !16
  %10 = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %4, i64 0, i32 7
  store i32 %0, ptr %10, align 8, !tbaa !17
  ret ptr %4
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: nounwind optsize uwtable
define internal i32 @hypre_CSRMatrixDestroy(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %19, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !18
  tail call void @hypre_Free(ptr noundef %5) #13
  store ptr null, ptr %4, align 8, !tbaa !18
  %6 = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %0, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !7
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %3
  tail call void @hypre_Free(ptr noundef nonnull %7) #13
  store ptr null, ptr %6, align 8, !tbaa !7
  br label %10

10:                                               ; preds = %9, %3
  %11 = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %0, i64 0, i32 8
  %12 = load i32, ptr %11, align 4, !tbaa !16
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = load ptr, ptr %0, align 8, !tbaa !19
  tail call void @hypre_Free(ptr noundef %15) #13
  store ptr null, ptr %0, align 8, !tbaa !19
  %16 = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %0, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !20
  tail call void @hypre_Free(ptr noundef %17) #13
  store ptr null, ptr %16, align 8, !tbaa !20
  br label %18

18:                                               ; preds = %14, %10
  tail call void @hypre_Free(ptr noundef nonnull %0) #13
  br label %19

19:                                               ; preds = %18, %1
  ret i32 0
}

; Function Attrs: nofree nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal i32 @hypre_CSRMatrixMatvec(double noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, double noundef %3, ptr nocapture noundef readonly %4) #2 {
  %6 = load ptr, ptr %1, align 8, !tbaa !19
  %7 = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %1, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !18
  %9 = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %1, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !20
  %11 = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %1, i64 0, i32 3
  %12 = load i32, ptr %11, align 8, !tbaa !13
  %13 = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %1, i64 0, i32 4
  %14 = load i32, ptr %13, align 4, !tbaa !14
  %15 = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %1, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !7
  %17 = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %1, i64 0, i32 7
  %18 = load i32, ptr %17, align 8, !tbaa !17
  %19 = load ptr, ptr %2, align 8, !tbaa !21
  %20 = load ptr, ptr %4, align 8, !tbaa !21
  %21 = getelementptr inbounds %struct.hypre_Vector, ptr %2, i64 0, i32 1
  %22 = load i32, ptr %21, align 8, !tbaa !23
  %23 = getelementptr inbounds %struct.hypre_Vector, ptr %4, i64 0, i32 1
  %24 = load i32, ptr %23, align 8, !tbaa !23
  %25 = getelementptr inbounds %struct.hypre_Vector, ptr %2, i64 0, i32 3
  %26 = load i32, ptr %25, align 8, !tbaa !24
  %27 = getelementptr inbounds %struct.hypre_Vector, ptr %4, i64 0, i32 6
  %28 = load i32, ptr %27, align 4, !tbaa !25
  %29 = getelementptr inbounds %struct.hypre_Vector, ptr %4, i64 0, i32 5
  %30 = load i32, ptr %29, align 8, !tbaa !26
  %31 = getelementptr inbounds %struct.hypre_Vector, ptr %2, i64 0, i32 6
  %32 = load i32, ptr %31, align 4, !tbaa !25
  %33 = getelementptr inbounds %struct.hypre_Vector, ptr %2, i64 0, i32 5
  %34 = load i32, ptr %33, align 8, !tbaa !26
  %35 = fcmp oeq double %0, 0.000000e+00
  br i1 %35, label %36, label %48

36:                                               ; preds = %5
  %37 = mul nsw i32 %26, %12
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %256

39:                                               ; preds = %36
  %40 = zext i32 %37 to i64
  br label %41

41:                                               ; preds = %41, %39
  %42 = phi i64 [ 0, %39 ], [ %46, %41 ]
  %43 = getelementptr inbounds double, ptr %20, i64 %42
  %44 = load double, ptr %43, align 8, !tbaa !27
  %45 = fmul double %44, %3
  store double %45, ptr %43, align 8, !tbaa !27
  %46 = add nuw nsw i64 %42, 1
  %47 = icmp eq i64 %46, %40
  br i1 %47, label %256, label %41, !llvm.loop !29

48:                                               ; preds = %5
  %49 = fdiv double %3, %0
  %50 = fcmp une double %49, 1.000000e+00
  br i1 %50, label %51, label %69

51:                                               ; preds = %48
  %52 = fcmp oeq double %49, 0.000000e+00
  %53 = mul nsw i32 %26, %12
  %54 = icmp sgt i32 %53, 0
  br i1 %52, label %58, label %55

55:                                               ; preds = %51
  br i1 %54, label %56, label %69

56:                                               ; preds = %55
  %57 = zext i32 %53 to i64
  br label %62

58:                                               ; preds = %51
  br i1 %54, label %59, label %69

59:                                               ; preds = %58
  %60 = zext i32 %53 to i64
  %61 = shl nuw nsw i64 %60, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %20, i8 0, i64 %61, i1 false), !tbaa !27
  br label %69

62:                                               ; preds = %62, %56
  %63 = phi i64 [ 0, %56 ], [ %67, %62 ]
  %64 = getelementptr inbounds double, ptr %20, i64 %63
  %65 = load double, ptr %64, align 8, !tbaa !27
  %66 = fmul double %49, %65
  store double %66, ptr %64, align 8, !tbaa !27
  %67 = add nuw nsw i64 %63, 1
  %68 = icmp eq i64 %67, %57
  br i1 %68, label %69, label %62, !llvm.loop !31

69:                                               ; preds = %62, %59, %58, %55, %48
  %70 = sitofp i32 %18 to double
  %71 = sitofp i32 %12 to double
  %72 = fmul double %71, 0x3FE6666666666666
  %73 = fcmp ogt double %72, %70
  br i1 %73, label %84, label %74

74:                                               ; preds = %69
  %75 = icmp sgt i32 %12, 0
  br i1 %75, label %76, label %242

76:                                               ; preds = %74
  %77 = icmp eq i32 %26, 1
  %78 = icmp sgt i32 %26, 0
  %79 = sext i32 %30 to i64
  %80 = sext i32 %34 to i64
  %81 = sext i32 %28 to i64
  %82 = zext i32 %12 to i64
  %83 = zext i32 %26 to i64
  br label %170

84:                                               ; preds = %69
  %85 = icmp sgt i32 %18, 0
  br i1 %85, label %86, label %242

86:                                               ; preds = %84
  %87 = icmp eq i32 %26, 1
  %88 = icmp sgt i32 %26, 0
  %89 = sext i32 %30 to i64
  %90 = sext i32 %34 to i64
  %91 = zext i32 %18 to i64
  %92 = zext i32 %26 to i64
  br label %93

93:                                               ; preds = %167, %86
  %94 = phi i64 [ 0, %86 ], [ %168, %167 ]
  %95 = getelementptr inbounds i32, ptr %16, i64 %94
  %96 = load i32, ptr %95, align 4, !tbaa !32
  br i1 %87, label %111, label %97

97:                                               ; preds = %93
  br i1 %88, label %98, label %167

98:                                               ; preds = %97
  %99 = mul nsw i32 %96, %28
  %100 = sext i32 %96 to i64
  %101 = getelementptr inbounds i32, ptr %8, i64 %100
  %102 = load i32, ptr %101, align 4, !tbaa !32
  %103 = add nsw i32 %96, 1
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, ptr %8, i64 %104
  %106 = load i32, ptr %105, align 4, !tbaa !32
  %107 = icmp slt i32 %102, %106
  %108 = sext i32 %102 to i64
  %109 = sext i32 %99 to i64
  %110 = sext i32 %106 to i64
  br label %140

111:                                              ; preds = %93
  %112 = sext i32 %96 to i64
  %113 = getelementptr inbounds double, ptr %20, i64 %112
  %114 = load double, ptr %113, align 8, !tbaa !27
  %115 = getelementptr inbounds i32, ptr %8, i64 %112
  %116 = load i32, ptr %115, align 4, !tbaa !32
  %117 = add nsw i32 %96, 1
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, ptr %8, i64 %118
  %120 = load i32, ptr %119, align 4, !tbaa !32
  %121 = icmp slt i32 %116, %120
  br i1 %121, label %122, label %138

122:                                              ; preds = %111
  %123 = sext i32 %116 to i64
  %124 = sext i32 %120 to i64
  br label %125

125:                                              ; preds = %125, %122
  %126 = phi i64 [ %123, %122 ], [ %136, %125 ]
  %127 = phi double [ %114, %122 ], [ %135, %125 ]
  %128 = getelementptr inbounds double, ptr %6, i64 %126
  %129 = load double, ptr %128, align 8, !tbaa !27
  %130 = getelementptr inbounds i32, ptr %10, i64 %126
  %131 = load i32, ptr %130, align 4, !tbaa !32
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds double, ptr %19, i64 %132
  %134 = load double, ptr %133, align 8, !tbaa !27
  %135 = tail call double @llvm.fmuladd.f64(double %129, double %134, double %127)
  %136 = add nsw i64 %126, 1
  %137 = icmp eq i64 %136, %124
  br i1 %137, label %138, label %125, !llvm.loop !33

138:                                              ; preds = %125, %111
  %139 = phi double [ %114, %111 ], [ %135, %125 ]
  store double %139, ptr %113, align 8, !tbaa !27
  br label %167

140:                                              ; preds = %163, %98
  %141 = phi i64 [ 0, %98 ], [ %165, %163 ]
  %142 = mul nsw i64 %141, %89
  %143 = add nsw i64 %142, %109
  %144 = getelementptr inbounds double, ptr %20, i64 %143
  %145 = load double, ptr %144, align 8, !tbaa !27
  br i1 %107, label %146, label %163

146:                                              ; preds = %140
  %147 = mul nsw i64 %141, %90
  br label %148

148:                                              ; preds = %148, %146
  %149 = phi i64 [ %108, %146 ], [ %161, %148 ]
  %150 = phi double [ %145, %146 ], [ %160, %148 ]
  %151 = getelementptr inbounds double, ptr %6, i64 %149
  %152 = load double, ptr %151, align 8, !tbaa !27
  %153 = getelementptr inbounds i32, ptr %10, i64 %149
  %154 = load i32, ptr %153, align 4, !tbaa !32
  %155 = mul nsw i32 %154, %32
  %156 = sext i32 %155 to i64
  %157 = add nsw i64 %147, %156
  %158 = getelementptr inbounds double, ptr %19, i64 %157
  %159 = load double, ptr %158, align 8, !tbaa !27
  %160 = tail call double @llvm.fmuladd.f64(double %152, double %159, double %150)
  %161 = add nsw i64 %149, 1
  %162 = icmp eq i64 %161, %110
  br i1 %162, label %163, label %148, !llvm.loop !34

163:                                              ; preds = %148, %140
  %164 = phi double [ %145, %140 ], [ %160, %148 ]
  store double %164, ptr %144, align 8, !tbaa !27
  %165 = add nuw nsw i64 %141, 1
  %166 = icmp eq i64 %165, %92
  br i1 %166, label %167, label %140, !llvm.loop !35

167:                                              ; preds = %163, %138, %97
  %168 = add nuw nsw i64 %94, 1
  %169 = icmp eq i64 %168, %91
  br i1 %169, label %242, label %93, !llvm.loop !36

170:                                              ; preds = %239, %76
  %171 = phi i64 [ 0, %76 ], [ %240, %239 ]
  br i1 %77, label %185, label %172

172:                                              ; preds = %170
  br i1 %78, label %175, label %173

173:                                              ; preds = %172
  %174 = add nuw nsw i64 %171, 1
  br label %239

175:                                              ; preds = %172
  %176 = mul nsw i64 %171, %81
  %177 = getelementptr inbounds i32, ptr %8, i64 %171
  %178 = load i32, ptr %177, align 4, !tbaa !32
  %179 = add nuw nsw i64 %171, 1
  %180 = getelementptr inbounds i32, ptr %8, i64 %179
  %181 = load i32, ptr %180, align 4, !tbaa !32
  %182 = icmp slt i32 %178, %181
  %183 = sext i32 %178 to i64
  %184 = sext i32 %181 to i64
  br label %212

185:                                              ; preds = %170
  %186 = getelementptr inbounds double, ptr %20, i64 %171
  %187 = load double, ptr %186, align 8, !tbaa !27
  %188 = getelementptr inbounds i32, ptr %8, i64 %171
  %189 = load i32, ptr %188, align 4, !tbaa !32
  %190 = add nuw nsw i64 %171, 1
  %191 = getelementptr inbounds i32, ptr %8, i64 %190
  %192 = load i32, ptr %191, align 4, !tbaa !32
  %193 = icmp slt i32 %189, %192
  br i1 %193, label %194, label %210

194:                                              ; preds = %185
  %195 = sext i32 %189 to i64
  %196 = sext i32 %192 to i64
  br label %197

197:                                              ; preds = %197, %194
  %198 = phi i64 [ %195, %194 ], [ %208, %197 ]
  %199 = phi double [ %187, %194 ], [ %207, %197 ]
  %200 = getelementptr inbounds double, ptr %6, i64 %198
  %201 = load double, ptr %200, align 8, !tbaa !27
  %202 = getelementptr inbounds i32, ptr %10, i64 %198
  %203 = load i32, ptr %202, align 4, !tbaa !32
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds double, ptr %19, i64 %204
  %206 = load double, ptr %205, align 8, !tbaa !27
  %207 = tail call double @llvm.fmuladd.f64(double %201, double %206, double %199)
  %208 = add nsw i64 %198, 1
  %209 = icmp eq i64 %208, %196
  br i1 %209, label %210, label %197, !llvm.loop !37

210:                                              ; preds = %197, %185
  %211 = phi double [ %187, %185 ], [ %207, %197 ]
  store double %211, ptr %186, align 8, !tbaa !27
  br label %239

212:                                              ; preds = %235, %175
  %213 = phi i64 [ 0, %175 ], [ %237, %235 ]
  %214 = mul nsw i64 %213, %79
  %215 = add nsw i64 %214, %176
  %216 = getelementptr inbounds double, ptr %20, i64 %215
  %217 = load double, ptr %216, align 8, !tbaa !27
  br i1 %182, label %218, label %235

218:                                              ; preds = %212
  %219 = mul nsw i64 %213, %80
  br label %220

220:                                              ; preds = %220, %218
  %221 = phi i64 [ %183, %218 ], [ %233, %220 ]
  %222 = phi double [ %217, %218 ], [ %232, %220 ]
  %223 = getelementptr inbounds double, ptr %6, i64 %221
  %224 = load double, ptr %223, align 8, !tbaa !27
  %225 = getelementptr inbounds i32, ptr %10, i64 %221
  %226 = load i32, ptr %225, align 4, !tbaa !32
  %227 = mul nsw i32 %226, %32
  %228 = sext i32 %227 to i64
  %229 = add nsw i64 %219, %228
  %230 = getelementptr inbounds double, ptr %19, i64 %229
  %231 = load double, ptr %230, align 8, !tbaa !27
  %232 = tail call double @llvm.fmuladd.f64(double %224, double %231, double %222)
  %233 = add nsw i64 %221, 1
  %234 = icmp eq i64 %233, %184
  br i1 %234, label %235, label %220, !llvm.loop !38

235:                                              ; preds = %220, %212
  %236 = phi double [ %217, %212 ], [ %232, %220 ]
  store double %236, ptr %216, align 8, !tbaa !27
  %237 = add nuw nsw i64 %213, 1
  %238 = icmp eq i64 %237, %83
  br i1 %238, label %239, label %212, !llvm.loop !39

239:                                              ; preds = %235, %210, %173
  %240 = phi i64 [ %174, %173 ], [ %190, %210 ], [ %179, %235 ]
  %241 = icmp eq i64 %240, %82
  br i1 %241, label %242, label %170, !llvm.loop !40

242:                                              ; preds = %239, %167, %84, %74
  %243 = fcmp une double %0, 1.000000e+00
  br i1 %243, label %244, label %256

244:                                              ; preds = %242
  %245 = mul nsw i32 %26, %12
  %246 = icmp sgt i32 %245, 0
  br i1 %246, label %247, label %256

247:                                              ; preds = %244
  %248 = zext i32 %245 to i64
  br label %249

249:                                              ; preds = %249, %247
  %250 = phi i64 [ 0, %247 ], [ %254, %249 ]
  %251 = getelementptr inbounds double, ptr %20, i64 %250
  %252 = load double, ptr %251, align 8, !tbaa !27
  %253 = fmul double %252, %0
  store double %253, ptr %251, align 8, !tbaa !27
  %254 = add nuw nsw i64 %250, 1
  %255 = icmp eq i64 %254, %248
  br i1 %255, label %256, label %249, !llvm.loop !41

256:                                              ; preds = %249, %244, %242, %41, %36
  %257 = icmp ne i32 %14, %22
  %258 = icmp eq i32 %12, %24
  %259 = zext i1 %257 to i32
  %260 = select i1 %258, i32 %259, i32 3
  %261 = select i1 %258, i32 %259, i32 2
  %262 = select i1 %257, i32 %260, i32 %261
  ret i32 %262
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define internal void @hypre_error_handler(ptr nocapture noundef readnone %0, i32 noundef %1, i32 noundef %2) #4 {
  %4 = load i32, ptr @hypre__global_error, align 4, !tbaa !32
  %5 = or i32 %4, %2
  store i32 %5, ptr @hypre__global_error, align 4, !tbaa !32
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @hypre_OutOfMemory(i32 noundef %0) #0 {
  %2 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %0) #14
  %3 = load ptr, ptr @stdout, align 8, !tbaa !42
  %4 = tail call i32 @fflush(ptr noundef %3) #14
  tail call void @hypre_error_handler(ptr noundef nonnull @.str.1, i32 noundef 78, i32 noundef 2) #13
  ret i32 0
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nounwind optsize uwtable
define internal noalias ptr @hypre_CAlloc(i32 noundef %0, i32 noundef %1) #0 {
  %3 = mul nsw i32 %1, %0
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %12

5:                                                ; preds = %2
  %6 = sext i32 %0 to i64
  %7 = sext i32 %1 to i64
  %8 = tail call noalias ptr @calloc(i64 noundef %6, i64 noundef %7) #15
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %5
  %11 = tail call i32 @hypre_OutOfMemory(i32 noundef %3) #14
  br label %12

12:                                               ; preds = %10, %5, %2
  %13 = phi ptr [ null, %10 ], [ %8, %5 ], [ null, %2 ]
  ret ptr %13
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind optsize willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal void @hypre_Free(ptr noundef %0) #7 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %0) #13
  br label %4

4:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: nounwind optsize uwtable
define internal ptr @GenerateSeqLaplacian(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5, ptr nocapture noundef writeonly %6) #0 {
  %8 = mul nsw i32 %1, %0
  %9 = mul nsw i32 %8, %2
  %10 = add nsw i32 %9, 1
  %11 = tail call ptr @hypre_CAlloc(i32 noundef %10, i32 noundef 4) #13
  %12 = tail call ptr @hypre_CAlloc(i32 noundef %9, i32 noundef 8) #13
  %13 = tail call ptr @hypre_CAlloc(i32 noundef %9, i32 noundef 8) #13
  %14 = tail call ptr @hypre_CAlloc(i32 noundef %9, i32 noundef 8) #13
  %15 = icmp sgt i32 %9, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %7
  %17 = zext i32 %9 to i64
  br label %18

18:                                               ; preds = %18, %16
  %19 = phi i64 [ 0, %16 ], [ %23, %18 ]
  %20 = getelementptr inbounds double, ptr %13, i64 %19
  store double 0.000000e+00, ptr %20, align 8, !tbaa !27
  %21 = getelementptr inbounds double, ptr %14, i64 %19
  store double 0.000000e+00, ptr %21, align 8, !tbaa !27
  %22 = getelementptr inbounds double, ptr %12, i64 %19
  store double 1.000000e+00, ptr %22, align 8, !tbaa !27
  %23 = add nuw nsw i64 %19, 1
  %24 = icmp eq i64 %23, %17
  br i1 %24, label %25, label %18, !llvm.loop !43

25:                                               ; preds = %18, %7
  store i32 0, ptr %11, align 4, !tbaa !32
  %26 = icmp sgt i32 %2, 0
  br i1 %26, label %27, label %85

27:                                               ; preds = %25
  %28 = icmp sgt i32 %1, 0
  %29 = icmp sgt i32 %0, 0
  %30 = getelementptr i8, ptr %11, i64 -4
  br label %31

31:                                               ; preds = %81, %27
  %32 = phi i32 [ 1, %27 ], [ %83, %81 ]
  %33 = phi i32 [ 0, %27 ], [ %82, %81 ]
  br i1 %28, label %36, label %34

34:                                               ; preds = %31
  %35 = add nuw nsw i32 %33, 1
  br label %81

36:                                               ; preds = %31
  %37 = icmp eq i32 %33, 0
  %38 = select i1 %37, i32 1, i32 2
  %39 = add nuw nsw i32 %33, 1
  %40 = icmp slt i32 %39, %2
  %41 = zext i1 %40 to i32
  br label %42

42:                                               ; preds = %77, %36
  %43 = phi i32 [ %32, %36 ], [ %79, %77 ]
  %44 = phi i32 [ 0, %36 ], [ %78, %77 ]
  br i1 %29, label %47, label %45

45:                                               ; preds = %42
  %46 = add nuw nsw i32 %44, 1
  br label %77

47:                                               ; preds = %42
  %48 = icmp ne i32 %44, 0
  %49 = add nuw nsw i32 %44, 1
  %50 = icmp slt i32 %49, %1
  %51 = sext i32 %43 to i64
  %52 = zext i1 %48 to i32
  %53 = shl nsw i64 %51, 2
  %54 = getelementptr i8, ptr %30, i64 %53
  %55 = load i32, ptr %54, align 4
  %56 = zext i1 %50 to i32
  br label %57

57:                                               ; preds = %57, %47
  %58 = phi i32 [ %55, %47 ], [ %72, %57 ]
  %59 = phi i64 [ %51, %47 ], [ %73, %57 ]
  %60 = phi i32 [ 0, %47 ], [ %67, %57 ]
  %61 = getelementptr inbounds i32, ptr %11, i64 %59
  %62 = add nsw i32 %58, %38
  %63 = add nsw i32 %62, %52
  %64 = icmp ne i32 %60, 0
  %65 = zext i1 %64 to i32
  %66 = add nsw i32 %63, %65
  %67 = add nuw nsw i32 %60, 1
  %68 = icmp slt i32 %67, %0
  %69 = zext i1 %68 to i32
  %70 = add nsw i32 %66, %69
  %71 = add nsw i32 %70, %56
  %72 = add nsw i32 %71, %41
  store i32 %72, ptr %61, align 4, !tbaa !32
  %73 = add nsw i64 %59, 1
  %74 = icmp eq i32 %67, %0
  br i1 %74, label %75, label %57, !llvm.loop !44

75:                                               ; preds = %57
  %.lcssa = phi i64 [ %73, %57 ]
  %76 = trunc i64 %.lcssa to i32
  br label %77

77:                                               ; preds = %75, %45
  %78 = phi i32 [ %46, %45 ], [ %49, %75 ]
  %79 = phi i32 [ %43, %45 ], [ %76, %75 ]
  %80 = icmp eq i32 %78, %1
  br i1 %80, label %81, label %42, !llvm.loop !45

81:                                               ; preds = %77, %34
  %82 = phi i32 [ %35, %34 ], [ %39, %77 ]
  %83 = phi i32 [ %32, %34 ], [ %79, %77 ]
  %84 = icmp eq i32 %82, %2
  br i1 %84, label %85, label %31, !llvm.loop !46

85:                                               ; preds = %81, %25
  %86 = sext i32 %9 to i64
  %87 = getelementptr inbounds i32, ptr %11, i64 %86
  %88 = load i32, ptr %87, align 4, !tbaa !32
  %89 = tail call ptr @hypre_CAlloc(i32 noundef %88, i32 noundef 4) #13
  %90 = load i32, ptr %87, align 4, !tbaa !32
  %91 = tail call ptr @hypre_CAlloc(i32 noundef %90, i32 noundef 8) #13
  br i1 %26, label %92, label %196

92:                                               ; preds = %85
  %93 = icmp sgt i32 %1, 0
  %94 = icmp sgt i32 %0, 0
  %95 = getelementptr inbounds double, ptr %3, i64 3
  %96 = getelementptr inbounds double, ptr %3, i64 2
  %97 = getelementptr inbounds double, ptr %3, i64 1
  br label %98

98:                                               ; preds = %191, %92
  %99 = phi i32 [ 0, %92 ], [ %194, %191 ]
  %100 = phi i32 [ 0, %92 ], [ %193, %191 ]
  %101 = phi i32 [ 0, %92 ], [ %192, %191 ]
  br i1 %93, label %104, label %102

102:                                              ; preds = %98
  %103 = add nuw nsw i32 %101, 1
  br label %191

104:                                              ; preds = %98
  %105 = icmp eq i32 %101, 0
  %106 = add nuw nsw i32 %101, 1
  %107 = icmp slt i32 %106, %2
  br label %108

108:                                              ; preds = %186, %104
  %109 = phi i32 [ %99, %104 ], [ %189, %186 ]
  %110 = phi i32 [ %100, %104 ], [ %188, %186 ]
  %111 = phi i32 [ 0, %104 ], [ %187, %186 ]
  br i1 %94, label %114, label %112

112:                                              ; preds = %108
  %113 = add nuw nsw i32 %111, 1
  br label %186

114:                                              ; preds = %108
  %115 = icmp eq i32 %111, 0
  %116 = add nuw nsw i32 %111, 1
  %117 = icmp slt i32 %116, %1
  br label %118

118:                                              ; preds = %182, %114
  %119 = phi i32 [ 0, %114 ], [ %155, %182 ]
  %120 = phi i32 [ %109, %114 ], [ %184, %182 ]
  %121 = phi i32 [ %110, %114 ], [ %183, %182 ]
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, ptr %89, i64 %122
  store i32 %120, ptr %123, align 4, !tbaa !32
  %124 = load double, ptr %3, align 8, !tbaa !27
  %125 = add nsw i32 %121, 1
  %126 = getelementptr inbounds double, ptr %91, i64 %122
  store double %124, ptr %126, align 8, !tbaa !27
  br i1 %105, label %134, label %127

127:                                              ; preds = %118
  %128 = sub nsw i32 %120, %8
  %129 = sext i32 %125 to i64
  %130 = getelementptr inbounds i32, ptr %89, i64 %129
  store i32 %128, ptr %130, align 4, !tbaa !32
  %131 = load double, ptr %95, align 8, !tbaa !27
  %132 = add nsw i32 %121, 2
  %133 = getelementptr inbounds double, ptr %91, i64 %129
  store double %131, ptr %133, align 8, !tbaa !27
  br label %134

134:                                              ; preds = %127, %118
  %135 = phi i32 [ %132, %127 ], [ %125, %118 ]
  br i1 %115, label %143, label %136

136:                                              ; preds = %134
  %137 = sub nsw i32 %120, %0
  %138 = sext i32 %135 to i64
  %139 = getelementptr inbounds i32, ptr %89, i64 %138
  store i32 %137, ptr %139, align 4, !tbaa !32
  %140 = load double, ptr %96, align 8, !tbaa !27
  %141 = add nsw i32 %135, 1
  %142 = getelementptr inbounds double, ptr %91, i64 %138
  store double %140, ptr %142, align 8, !tbaa !27
  br label %143

143:                                              ; preds = %136, %134
  %144 = phi i32 [ %141, %136 ], [ %135, %134 ]
  %145 = icmp eq i32 %119, 0
  br i1 %145, label %153, label %146

146:                                              ; preds = %143
  %147 = add nsw i32 %120, -1
  %148 = sext i32 %144 to i64
  %149 = getelementptr inbounds i32, ptr %89, i64 %148
  store i32 %147, ptr %149, align 4, !tbaa !32
  %150 = load double, ptr %97, align 8, !tbaa !27
  %151 = add nsw i32 %144, 1
  %152 = getelementptr inbounds double, ptr %91, i64 %148
  store double %150, ptr %152, align 8, !tbaa !27
  br label %153

153:                                              ; preds = %146, %143
  %154 = phi i32 [ %151, %146 ], [ %144, %143 ]
  %155 = add nuw nsw i32 %119, 1
  %156 = icmp slt i32 %155, %0
  br i1 %156, label %157, label %164

157:                                              ; preds = %153
  %158 = add nsw i32 %120, 1
  %159 = sext i32 %154 to i64
  %160 = getelementptr inbounds i32, ptr %89, i64 %159
  store i32 %158, ptr %160, align 4, !tbaa !32
  %161 = load double, ptr %97, align 8, !tbaa !27
  %162 = add nsw i32 %154, 1
  %163 = getelementptr inbounds double, ptr %91, i64 %159
  store double %161, ptr %163, align 8, !tbaa !27
  br label %164

164:                                              ; preds = %157, %153
  %165 = phi i32 [ %162, %157 ], [ %154, %153 ]
  br i1 %117, label %166, label %173

166:                                              ; preds = %164
  %167 = add nsw i32 %120, %0
  %168 = sext i32 %165 to i64
  %169 = getelementptr inbounds i32, ptr %89, i64 %168
  store i32 %167, ptr %169, align 4, !tbaa !32
  %170 = load double, ptr %96, align 8, !tbaa !27
  %171 = add nsw i32 %165, 1
  %172 = getelementptr inbounds double, ptr %91, i64 %168
  store double %170, ptr %172, align 8, !tbaa !27
  br label %173

173:                                              ; preds = %166, %164
  %174 = phi i32 [ %171, %166 ], [ %165, %164 ]
  br i1 %107, label %175, label %182

175:                                              ; preds = %173
  %176 = add nsw i32 %120, %8
  %177 = sext i32 %174 to i64
  %178 = getelementptr inbounds i32, ptr %89, i64 %177
  store i32 %176, ptr %178, align 4, !tbaa !32
  %179 = load double, ptr %95, align 8, !tbaa !27
  %180 = add nsw i32 %174, 1
  %181 = getelementptr inbounds double, ptr %91, i64 %177
  store double %179, ptr %181, align 8, !tbaa !27
  br label %182

182:                                              ; preds = %175, %173
  %183 = phi i32 [ %180, %175 ], [ %174, %173 ]
  %184 = add nsw i32 %120, 1
  %185 = icmp eq i32 %155, %0
  br i1 %185, label %186, label %118, !llvm.loop !47

186:                                              ; preds = %182, %112
  %187 = phi i32 [ %113, %112 ], [ %116, %182 ]
  %188 = phi i32 [ %110, %112 ], [ %183, %182 ]
  %189 = phi i32 [ %109, %112 ], [ %184, %182 ]
  %190 = icmp eq i32 %187, %1
  br i1 %190, label %191, label %108, !llvm.loop !48

191:                                              ; preds = %186, %102
  %192 = phi i32 [ %103, %102 ], [ %106, %186 ]
  %193 = phi i32 [ %100, %102 ], [ %188, %186 ]
  %194 = phi i32 [ %99, %102 ], [ %189, %186 ]
  %195 = icmp eq i32 %192, %2
  br i1 %195, label %196, label %98, !llvm.loop !49

196:                                              ; preds = %191, %85
  %197 = load i32, ptr %87, align 4, !tbaa !32
  %198 = tail call ptr @hypre_CSRMatrixCreate(i32 noundef %9, i32 noundef %9, i32 noundef %197) #13
  %199 = tail call ptr @hypre_SeqVectorCreate(i32 noundef %9) #13
  store ptr %12, ptr %199, align 8, !tbaa !21
  %200 = tail call ptr @hypre_SeqVectorCreate(i32 noundef %9) #13
  store ptr %13, ptr %200, align 8, !tbaa !21
  br i1 %15, label %201, label %226

201:                                              ; preds = %196
  %202 = zext i32 %9 to i64
  %203 = load i32, ptr %11, align 4, !tbaa !32
  br label %206

204:                                              ; preds = %218, %206
  %205 = icmp eq i64 %209, %202
  br i1 %205, label %226, label %206, !llvm.loop !50

206:                                              ; preds = %204, %201
  %207 = phi i32 [ %203, %201 ], [ %211, %204 ]
  %208 = phi i64 [ 0, %201 ], [ %209, %204 ]
  %209 = add nuw nsw i64 %208, 1
  %210 = getelementptr inbounds i32, ptr %11, i64 %209
  %211 = load i32, ptr %210, align 4, !tbaa !32
  %212 = icmp slt i32 %207, %211
  br i1 %212, label %213, label %204

213:                                              ; preds = %206
  %214 = getelementptr inbounds double, ptr %14, i64 %208
  %215 = load double, ptr %214, align 8, !tbaa !27
  %216 = sext i32 %207 to i64
  %217 = sext i32 %211 to i64
  br label %218

218:                                              ; preds = %218, %213
  %219 = phi i64 [ %216, %213 ], [ %224, %218 ]
  %220 = phi double [ %215, %213 ], [ %223, %218 ]
  %221 = getelementptr inbounds double, ptr %91, i64 %219
  %222 = load double, ptr %221, align 8, !tbaa !27
  %223 = fadd double %222, %220
  store double %223, ptr %214, align 8, !tbaa !27
  %224 = add nsw i64 %219, 1
  %225 = icmp eq i64 %224, %217
  br i1 %225, label %204, label %218, !llvm.loop !51

226:                                              ; preds = %204, %196
  %227 = tail call ptr @hypre_SeqVectorCreate(i32 noundef %9) #13
  store ptr %14, ptr %227, align 8, !tbaa !21
  %228 = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %198, i64 0, i32 1
  store ptr %11, ptr %228, align 8, !tbaa !18
  %229 = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %198, i64 0, i32 2
  store ptr %89, ptr %229, align 8, !tbaa !20
  store ptr %91, ptr %198, align 8, !tbaa !19
  store ptr %199, ptr %4, align 8, !tbaa !42
  store ptr %200, ptr %5, align 8, !tbaa !42
  store ptr %227, ptr %6, align 8, !tbaa !42
  ret ptr %198
}

; Function Attrs: nounwind optsize uwtable
define dso_local i32 @main(i32 noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = alloca %struct.timeval, align 8
  %4 = alloca %struct.timeval, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #16
  %5 = tail call i32 @putchar(i32 10)
  %6 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.28)
  %7 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.27)
  %8 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.11)
  %9 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.27)
  %10 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.28)
  %11 = call i32 @gettimeofday(ptr noundef nonnull %3, ptr noundef null) #13
  %12 = tail call i64 @clock() #13
  store double 0.000000e+00, ptr @totalWallTime, align 8, !tbaa !27
  store double 0.000000e+00, ptr @totalCPUTime, align 8, !tbaa !27
  tail call void @test_Matvec() #14
  %13 = tail call i32 @putchar(i32 10)
  %14 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.28)
  %15 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.27)
  %16 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.16)
  %17 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.27)
  %18 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.28)
  store double 0.000000e+00, ptr @totalWallTime, align 8, !tbaa !27
  store double 0.000000e+00, ptr @totalCPUTime, align 8, !tbaa !27
  tail call void @test_Relax() #14
  %19 = tail call i32 @putchar(i32 10)
  %20 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.28)
  %21 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.27)
  %22 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.21)
  %23 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.27)
  %24 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.28)
  store double 0.000000e+00, ptr @totalWallTime, align 8, !tbaa !27
  store double 0.000000e+00, ptr @totalCPUTime, align 8, !tbaa !27
  tail call void @test_Axpy() #14
  %25 = tail call i32 @putchar(i32 10)
  %26 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.28)
  %27 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.27)
  %28 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.26)
  %29 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.27)
  %30 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.28)
  %31 = call i32 @gettimeofday(ptr noundef nonnull %4, ptr noundef null) #13
  %32 = tail call i64 @clock() #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #16
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #9

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #10

; Function Attrs: nofree nounwind optsize
declare noundef i32 @gettimeofday(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nounwind optsize
declare i64 @clock() local_unnamed_addr #11

; Function Attrs: nounwind optsize uwtable
define internal void @test_Matvec() #0 {
  %1 = alloca %struct.timeval, align 8
  %2 = alloca %struct.timeval, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %1) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #16
  %6 = tail call ptr @hypre_CAlloc(i32 noundef 4, i32 noundef 8) #13
  store <2 x double> <double 6.000000e+00, double -1.000000e+00>, ptr %6, align 8, !tbaa !27
  %7 = getelementptr inbounds double, ptr %6, i64 2
  store <2 x double> <double -1.000000e+00, double -1.000000e+00>, ptr %7, align 8, !tbaa !27
  %8 = call ptr @GenerateSeqLaplacian(i32 noundef 50, i32 noundef 50, i32 noundef 50, ptr noundef nonnull %6, ptr noundef nonnull %4, ptr noundef nonnull %3, ptr noundef nonnull %5) #13
  %9 = load ptr, ptr %3, align 8, !tbaa !42
  %10 = call i32 @hypre_SeqVectorSetConstantValues(ptr noundef %9, double noundef 1.000000e+00) #13
  %11 = load ptr, ptr %4, align 8, !tbaa !42
  %12 = call i32 @hypre_SeqVectorSetConstantValues(ptr noundef %11, double noundef 0.000000e+00) #13
  %13 = call i32 @gettimeofday(ptr noundef nonnull %1, ptr noundef null) #13
  %14 = call i64 @clock() #13
  br label %15

15:                                               ; preds = %15, %0
  %16 = phi i32 [ 0, %0 ], [ %20, %15 ]
  %17 = load ptr, ptr %3, align 8, !tbaa !42
  %18 = load ptr, ptr %4, align 8, !tbaa !42
  %19 = call i32 @hypre_CSRMatrixMatvec(double noundef 1.000000e+00, ptr noundef %8, ptr noundef %17, double noundef 0.000000e+00, ptr noundef %18) #13
  %20 = add nuw nsw i32 %16, 1
  %21 = icmp eq i32 %20, 2000
  br i1 %21, label %22, label %15, !llvm.loop !52

22:                                               ; preds = %15
  %23 = call i32 @gettimeofday(ptr noundef nonnull %2, ptr noundef null) #13
  %24 = call i64 @clock() #13
  %25 = load i64, ptr %2, align 8, !tbaa !53
  %26 = load i64, ptr %1, align 8, !tbaa !53
  %27 = sub nsw i64 %25, %26
  %28 = sitofp i64 %27 to double
  %29 = getelementptr inbounds %struct.timeval, ptr %2, i64 0, i32 1
  %30 = load i64, ptr %29, align 8, !tbaa !56
  %31 = getelementptr inbounds %struct.timeval, ptr %1, i64 0, i32 1
  %32 = load i64, ptr %31, align 8, !tbaa !56
  %33 = sub nsw i64 %30, %32
  %34 = sitofp i64 %33 to double
  %35 = fdiv double %34, 1.000000e+06
  %36 = fadd double %35, %28
  %37 = load double, ptr @totalWallTime, align 8, !tbaa !27
  %38 = fadd double %37, %36
  store double %38, ptr @totalWallTime, align 8, !tbaa !27
  %39 = sub nsw i64 %24, %14
  %40 = sitofp i64 %39 to double
  %41 = fdiv double %40, 1.000000e+06
  %42 = load double, ptr @totalCPUTime, align 8, !tbaa !27
  %43 = fadd double %41, %42
  store double %43, ptr @totalCPUTime, align 8, !tbaa !27
  %44 = load ptr, ptr %4, align 8, !tbaa !42
  %45 = load ptr, ptr %44, align 8, !tbaa !21
  %46 = load ptr, ptr %5, align 8, !tbaa !42
  %47 = load ptr, ptr %46, align 8, !tbaa !21
  br label %48

48:                                               ; preds = %48, %22
  %49 = phi i64 [ 0, %22 ], [ %59, %48 ]
  %50 = phi double [ 0.000000e+00, %22 ], [ %58, %48 ]
  %51 = getelementptr inbounds double, ptr %45, i64 %49
  %52 = load double, ptr %51, align 8, !tbaa !27
  %53 = getelementptr inbounds double, ptr %47, i64 %49
  %54 = load double, ptr %53, align 8, !tbaa !27
  %55 = fsub double %52, %54
  %56 = call double @llvm.fabs.f64(double %55)
  %57 = fcmp ogt double %56, %50
  %58 = select i1 %57, double %56, double %50
  %59 = add nuw nsw i64 %49, 1
  %60 = icmp eq i64 %59, 125000
  br i1 %60, label %61, label %48, !llvm.loop !57

61:                                               ; preds = %48
  %.lcssa = phi double [ %58, %48 ]
  %62 = fcmp ogt double %.lcssa, 0.000000e+00
  br i1 %62, label %63, label %65

63:                                               ; preds = %61
  %64 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, double noundef %.lcssa) #14
  br label %65

65:                                               ; preds = %63, %61
  call void @hypre_Free(ptr noundef nonnull %6) #13
  %66 = call i32 @hypre_CSRMatrixDestroy(ptr noundef %8) #13
  %67 = load ptr, ptr %3, align 8, !tbaa !42
  %68 = call i32 @hypre_SeqVectorDestroy(ptr noundef %67) #13
  %69 = load ptr, ptr %4, align 8, !tbaa !42
  %70 = call i32 @hypre_SeqVectorDestroy(ptr noundef %69) #13
  %71 = load ptr, ptr %5, align 8, !tbaa !42
  %72 = call i32 @hypre_SeqVectorDestroy(ptr noundef %71) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %1) #16
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @test_Relax() #0 {
  %1 = alloca %struct.timeval, align 8
  %2 = alloca %struct.timeval, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %1) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #16
  %6 = tail call ptr @hypre_CAlloc(i32 noundef 4, i32 noundef 8) #13
  store <2 x double> <double 6.000000e+00, double -1.000000e+00>, ptr %6, align 8, !tbaa !27
  %7 = getelementptr inbounds double, ptr %6, i64 2
  store <2 x double> <double -1.000000e+00, double -1.000000e+00>, ptr %7, align 8, !tbaa !27
  %8 = call ptr @GenerateSeqLaplacian(i32 noundef 50, i32 noundef 50, i32 noundef 50, ptr noundef nonnull %6, ptr noundef nonnull %4, ptr noundef nonnull %3, ptr noundef nonnull %5) #13
  %9 = load ptr, ptr %3, align 8, !tbaa !42
  %10 = call i32 @hypre_SeqVectorSetConstantValues(ptr noundef %9, double noundef 1.000000e+00) #13
  %11 = call i32 @gettimeofday(ptr noundef nonnull %1, ptr noundef null) #13
  %12 = call i64 @clock() #13
  br label %13

13:                                               ; preds = %13, %0
  %14 = phi i32 [ 0, %0 ], [ %18, %13 ]
  %15 = load ptr, ptr %5, align 8, !tbaa !42
  %16 = load ptr, ptr %3, align 8, !tbaa !42
  %17 = call i32 @hypre_BoomerAMGSeqRelax(ptr noundef %8, ptr noundef %15, ptr noundef %16) #13
  %18 = add nuw nsw i32 %14, 1
  %19 = icmp eq i32 %18, 2000
  br i1 %19, label %20, label %13, !llvm.loop !58

20:                                               ; preds = %13
  %21 = call i32 @gettimeofday(ptr noundef nonnull %2, ptr noundef null) #13
  %22 = call i64 @clock() #13
  %23 = load i64, ptr %2, align 8, !tbaa !53
  %24 = load i64, ptr %1, align 8, !tbaa !53
  %25 = sub nsw i64 %23, %24
  %26 = sitofp i64 %25 to double
  %27 = getelementptr inbounds %struct.timeval, ptr %2, i64 0, i32 1
  %28 = load i64, ptr %27, align 8, !tbaa !56
  %29 = getelementptr inbounds %struct.timeval, ptr %1, i64 0, i32 1
  %30 = load i64, ptr %29, align 8, !tbaa !56
  %31 = sub nsw i64 %28, %30
  %32 = sitofp i64 %31 to double
  %33 = fdiv double %32, 1.000000e+06
  %34 = fadd double %33, %26
  %35 = load double, ptr @totalWallTime, align 8, !tbaa !27
  %36 = fadd double %35, %34
  store double %36, ptr @totalWallTime, align 8, !tbaa !27
  %37 = sub nsw i64 %22, %12
  %38 = sitofp i64 %37 to double
  %39 = fdiv double %38, 1.000000e+06
  %40 = load double, ptr @totalCPUTime, align 8, !tbaa !27
  %41 = fadd double %39, %40
  store double %41, ptr @totalCPUTime, align 8, !tbaa !27
  %42 = load ptr, ptr %3, align 8, !tbaa !42
  %43 = load ptr, ptr %42, align 8, !tbaa !21
  br label %44

44:                                               ; preds = %44, %20
  %45 = phi i64 [ 0, %20 ], [ %53, %44 ]
  %46 = phi double [ 0.000000e+00, %20 ], [ %52, %44 ]
  %47 = getelementptr inbounds double, ptr %43, i64 %45
  %48 = load double, ptr %47, align 8, !tbaa !27
  %49 = fadd double %48, -1.000000e+00
  %50 = call double @llvm.fabs.f64(double %49)
  %51 = fcmp ogt double %50, %46
  %52 = select i1 %51, double %50, double %46
  %53 = add nuw nsw i64 %45, 1
  %54 = icmp eq i64 %53, 125000
  br i1 %54, label %55, label %44, !llvm.loop !59

55:                                               ; preds = %44
  %.lcssa = phi double [ %52, %44 ]
  %56 = fcmp ogt double %.lcssa, 0.000000e+00
  br i1 %56, label %57, label %59

57:                                               ; preds = %55
  %58 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, double noundef %.lcssa) #14
  br label %59

59:                                               ; preds = %57, %55
  call void @hypre_Free(ptr noundef nonnull %6) #13
  %60 = call i32 @hypre_CSRMatrixDestroy(ptr noundef %8) #13
  %61 = load ptr, ptr %3, align 8, !tbaa !42
  %62 = call i32 @hypre_SeqVectorDestroy(ptr noundef %61) #13
  %63 = load ptr, ptr %4, align 8, !tbaa !42
  %64 = call i32 @hypre_SeqVectorDestroy(ptr noundef %63) #13
  %65 = load ptr, ptr %5, align 8, !tbaa !42
  %66 = call i32 @hypre_SeqVectorDestroy(ptr noundef %65) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %1) #16
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @test_Axpy() #0 {
  %1 = alloca %struct.timeval, align 8
  %2 = alloca %struct.timeval, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %1) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #16
  %3 = tail call ptr @hypre_SeqVectorCreate(i32 noundef 125000) #13
  %4 = tail call ptr @hypre_SeqVectorCreate(i32 noundef 125000) #13
  %5 = tail call i32 @hypre_SeqVectorInitialize(ptr noundef %3) #13
  %6 = tail call i32 @hypre_SeqVectorInitialize(ptr noundef %4) #13
  %7 = tail call i32 @hypre_SeqVectorSetConstantValues(ptr noundef %3, double noundef 1.000000e+00) #13
  %8 = tail call i32 @hypre_SeqVectorSetConstantValues(ptr noundef %4, double noundef 1.000000e+00) #13
  %9 = call i32 @gettimeofday(ptr noundef nonnull %1, ptr noundef null) #13
  %10 = tail call i64 @clock() #13
  br label %11

11:                                               ; preds = %11, %0
  %12 = phi i32 [ 0, %0 ], [ %14, %11 ]
  %13 = tail call i32 @hypre_SeqVectorAxpy(double noundef 5.000000e-01, ptr noundef %3, ptr noundef %4) #13
  %14 = add nuw nsw i32 %12, 1
  %15 = icmp eq i32 %14, 2000
  br i1 %15, label %16, label %11, !llvm.loop !60

16:                                               ; preds = %11
  %17 = call i32 @gettimeofday(ptr noundef nonnull %2, ptr noundef null) #13
  %18 = tail call i64 @clock() #13
  %19 = load ptr, ptr %4, align 8, !tbaa !21
  br label %20

20:                                               ; preds = %20, %16
  %21 = phi i64 [ 0, %16 ], [ %30, %20 ]
  %22 = phi double [ 0.000000e+00, %16 ], [ %29, %20 ]
  %23 = getelementptr inbounds double, ptr %19, i64 %21
  %24 = load double, ptr %23, align 8, !tbaa !27
  %25 = fadd double %24, -1.000000e+00
  %26 = fadd double %25, -1.000000e+03
  %27 = tail call double @llvm.fabs.f64(double %26)
  %28 = fcmp ogt double %27, %22
  %29 = select i1 %28, double %27, double %22
  %30 = add nuw nsw i64 %21, 1
  %31 = icmp eq i64 %30, 125000
  br i1 %31, label %32, label %20, !llvm.loop !61

32:                                               ; preds = %20
  %.lcssa = phi double [ %29, %20 ]
  %33 = fcmp ogt double %.lcssa, 0.000000e+00
  br i1 %33, label %34, label %36

34:                                               ; preds = %32
  %35 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, double noundef %.lcssa) #14
  br label %36

36:                                               ; preds = %34, %32
  %37 = load i64, ptr %2, align 8, !tbaa !53
  %38 = load i64, ptr %1, align 8, !tbaa !53
  %39 = sub nsw i64 %37, %38
  %40 = sitofp i64 %39 to double
  %41 = getelementptr inbounds %struct.timeval, ptr %2, i64 0, i32 1
  %42 = load i64, ptr %41, align 8, !tbaa !56
  %43 = getelementptr inbounds %struct.timeval, ptr %1, i64 0, i32 1
  %44 = load i64, ptr %43, align 8, !tbaa !56
  %45 = sub nsw i64 %42, %44
  %46 = sitofp i64 %45 to double
  %47 = fdiv double %46, 1.000000e+06
  %48 = fadd double %47, %40
  %49 = load double, ptr @totalWallTime, align 8, !tbaa !27
  %50 = fadd double %49, %48
  store double %50, ptr @totalWallTime, align 8, !tbaa !27
  %51 = sub nsw i64 %18, %10
  %52 = sitofp i64 %51 to double
  %53 = fdiv double %52, 1.000000e+06
  %54 = load double, ptr @totalCPUTime, align 8, !tbaa !27
  %55 = fadd double %53, %54
  store double %55, ptr @totalCPUTime, align 8, !tbaa !27
  %56 = tail call i32 @hypre_SeqVectorDestroy(ptr noundef %3) #13
  %57 = tail call i32 @hypre_SeqVectorDestroy(ptr noundef nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %1) #16
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #3

; Function Attrs: nounwind optsize uwtable
define internal i32 @hypre_BoomerAMGSeqRelax(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 {
  %4 = load ptr, ptr %0, align 8, !tbaa !19
  %5 = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !18
  %7 = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !20
  %9 = getelementptr inbounds %struct.hypre_CSRMatrix, ptr %0, i64 0, i32 3
  %10 = load i32, ptr %9, align 8, !tbaa !13
  %11 = load ptr, ptr %2, align 8, !tbaa !21
  %12 = load ptr, ptr %1, align 8, !tbaa !21
  %13 = tail call ptr @hypre_CAlloc(i32 noundef %10, i32 noundef 8) #13
  %14 = icmp sgt i32 %10, 0
  br i1 %14, label %15, label %75

15:                                               ; preds = %3
  %16 = zext i32 %10 to i64
  br label %20

17:                                               ; preds = %20
  br i1 %14, label %18, label %75

18:                                               ; preds = %17
  %19 = zext i32 %10 to i64
  br label %27

20:                                               ; preds = %20, %15
  %21 = phi i64 [ 0, %15 ], [ %25, %20 ]
  %22 = getelementptr inbounds double, ptr %11, i64 %21
  %23 = load double, ptr %22, align 8, !tbaa !27
  %24 = getelementptr inbounds double, ptr %13, i64 %21
  store double %23, ptr %24, align 8, !tbaa !27
  %25 = add nuw nsw i64 %21, 1
  %26 = icmp eq i64 %25, %16
  br i1 %26, label %17, label %20, !llvm.loop !62

27:                                               ; preds = %72, %18
  %28 = phi i64 [ 0, %18 ], [ %73, %72 ]
  %29 = getelementptr inbounds i32, ptr %6, i64 %28
  %30 = load i32, ptr %29, align 4, !tbaa !32
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds double, ptr %4, i64 %31
  %33 = load double, ptr %32, align 8, !tbaa !27
  %34 = fcmp une double %33, 0.000000e+00
  br i1 %34, label %37, label %35

35:                                               ; preds = %27
  %36 = add nuw nsw i64 %28, 1
  br label %72

37:                                               ; preds = %27
  %38 = getelementptr inbounds double, ptr %12, i64 %28
  %39 = load double, ptr %38, align 8, !tbaa !27
  %40 = add nuw nsw i64 %28, 1
  %41 = getelementptr inbounds i32, ptr %6, i64 %40
  %42 = load i32, ptr %41, align 4, !tbaa !32
  %43 = add nsw i32 %30, 1
  %44 = icmp slt i32 %43, %42
  br i1 %44, label %45, label %68

45:                                               ; preds = %37
  %46 = sext i32 %43 to i64
  br label %47

47:                                               ; preds = %47, %45
  %48 = phi i64 [ %46, %45 ], [ %65, %47 ]
  %49 = phi double [ %39, %45 ], [ %64, %47 ]
  %50 = getelementptr inbounds i32, ptr %8, i64 %48
  %51 = load i32, ptr %50, align 4, !tbaa !32
  %52 = icmp sgt i32 %51, -1
  %53 = icmp slt i32 %51, %10
  %54 = and i1 %52, %53
  %55 = getelementptr inbounds double, ptr %4, i64 %48
  %56 = load double, ptr %55, align 8, !tbaa !27
  %57 = fneg double %56
  %58 = zext i32 %51 to i64
  %59 = getelementptr inbounds double, ptr %11, i64 %58
  %60 = sext i32 %51 to i64
  %61 = getelementptr inbounds double, ptr %13, i64 %60
  %62 = select i1 %54, ptr %59, ptr %61
  %63 = load double, ptr %62, align 8, !tbaa !27
  %64 = tail call double @llvm.fmuladd.f64(double %57, double %63, double %49)
  %65 = add nsw i64 %48, 1
  %66 = trunc i64 %65 to i32
  %67 = icmp eq i32 %42, %66
  br i1 %67, label %68, label %47, !llvm.loop !63

68:                                               ; preds = %47, %37
  %69 = phi double [ %39, %37 ], [ %64, %47 ]
  %70 = fdiv double %69, %33
  %71 = getelementptr inbounds double, ptr %11, i64 %28
  store double %70, ptr %71, align 8, !tbaa !27
  br label %72

72:                                               ; preds = %68, %35
  %73 = phi i64 [ %36, %35 ], [ %40, %68 ]
  %74 = icmp eq i64 %73, %19
  br i1 %74, label %75, label %27, !llvm.loop !64

75:                                               ; preds = %72, %17, %3
  tail call void @hypre_Free(ptr noundef %13) #13
  ret i32 0
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @hypre_SeqVectorCreate(i32 noundef %0) #0 {
  %2 = tail call ptr @hypre_CAlloc(i32 noundef 1, i32 noundef 32) #13
  store ptr null, ptr %2, align 8, !tbaa !21
  %3 = getelementptr inbounds %struct.hypre_Vector, ptr %2, i64 0, i32 1
  store i32 %0, ptr %3, align 8, !tbaa !23
  %4 = getelementptr inbounds %struct.hypre_Vector, ptr %2, i64 0, i32 3
  store i32 1, ptr %4, align 8, !tbaa !24
  %5 = getelementptr inbounds %struct.hypre_Vector, ptr %2, i64 0, i32 4
  store i32 0, ptr %5, align 4, !tbaa !65
  %6 = getelementptr inbounds %struct.hypre_Vector, ptr %2, i64 0, i32 2
  store i32 1, ptr %6, align 4, !tbaa !66
  ret ptr %2
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @hypre_SeqVectorDestroy(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %10, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.hypre_Vector, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !66
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr %0, align 8, !tbaa !21
  tail call void @hypre_Free(ptr noundef %8) #13
  store ptr null, ptr %0, align 8, !tbaa !21
  br label %9

9:                                                ; preds = %7, %3
  tail call void @hypre_Free(ptr noundef nonnull %0) #13
  br label %10

10:                                               ; preds = %9, %1
  ret i32 0
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @hypre_SeqVectorInitialize(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.hypre_Vector, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !23
  %4 = getelementptr inbounds %struct.hypre_Vector, ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !24
  %6 = getelementptr inbounds %struct.hypre_Vector, ptr %0, i64 0, i32 4
  %7 = load i32, ptr %6, align 4, !tbaa !65
  %8 = load ptr, ptr %0, align 8, !tbaa !21
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = mul nsw i32 %5, %3
  %12 = tail call ptr @hypre_CAlloc(i32 noundef %11, i32 noundef 8) #13
  store ptr %12, ptr %0, align 8, !tbaa !21
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
  store i32 %16, ptr %18, align 8, !tbaa !26
  %19 = getelementptr inbounds %struct.hypre_Vector, ptr %0, i64 0, i32 6
  store i32 %17, ptr %19, align 4, !tbaa !25
  br label %20

20:                                               ; preds = %15, %13
  %21 = phi i32 [ 1, %13 ], [ 0, %15 ]
  ret i32 %21
}

; Function Attrs: nofree norecurse nosync nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal i32 @hypre_SeqVectorSetConstantValues(ptr nocapture noundef readonly %0, double noundef %1) #12 {
  %3 = load ptr, ptr %0, align 8, !tbaa !21
  %4 = getelementptr inbounds %struct.hypre_Vector, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !23
  %6 = getelementptr inbounds %struct.hypre_Vector, ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !24
  %8 = mul nsw i32 %7, %5
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %33

10:                                               ; preds = %2
  %11 = zext i32 %8 to i64
  %12 = add nuw nsw i64 %11, 1
  %13 = and i64 %12, 8589934590
  %14 = add nsw i64 %11, -1
  %15 = insertelement <2 x i64> poison, i64 %14, i64 0
  %16 = shufflevector <2 x i64> %15, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %17

17:                                               ; preds = %29, %10
  %18 = phi i64 [ 0, %10 ], [ %30, %29 ]
  %19 = phi <2 x i64> [ <i64 0, i64 1>, %10 ], [ %31, %29 ]
  %20 = icmp ule <2 x i64> %19, %16
  %21 = extractelement <2 x i1> %20, i64 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = getelementptr inbounds double, ptr %3, i64 %18
  store double %1, ptr %23, align 8, !tbaa !27
  br label %24

24:                                               ; preds = %22, %17
  %25 = extractelement <2 x i1> %20, i64 1
  br i1 %25, label %26, label %29

26:                                               ; preds = %24
  %27 = or i64 %18, 1
  %28 = getelementptr inbounds double, ptr %3, i64 %27
  store double %1, ptr %28, align 8, !tbaa !27
  br label %29

29:                                               ; preds = %26, %24
  %30 = add i64 %18, 2
  %31 = add <2 x i64> %19, <i64 2, i64 2>
  %32 = icmp eq i64 %30, %13
  br i1 %32, label %33, label %17, !llvm.loop !67

33:                                               ; preds = %29, %2
  ret i32 0
}

; Function Attrs: nofree nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal i32 @hypre_SeqVectorAxpy(double noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #2 {
  %4 = load ptr, ptr %1, align 8, !tbaa !21
  %5 = load ptr, ptr %2, align 8, !tbaa !21
  %6 = getelementptr inbounds %struct.hypre_Vector, ptr %1, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !23
  %8 = getelementptr inbounds %struct.hypre_Vector, ptr %1, i64 0, i32 3
  %9 = load i32, ptr %8, align 8, !tbaa !24
  %10 = mul nsw i32 %9, %7
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %23

12:                                               ; preds = %3
  %13 = zext i32 %10 to i64
  br label %14

14:                                               ; preds = %14, %12
  %15 = phi i64 [ 0, %12 ], [ %21, %14 ]
  %16 = getelementptr inbounds double, ptr %4, i64 %15
  %17 = load double, ptr %16, align 8, !tbaa !27
  %18 = getelementptr inbounds double, ptr %5, i64 %15
  %19 = load double, ptr %18, align 8, !tbaa !27
  %20 = tail call double @llvm.fmuladd.f64(double %0, double %17, double %19)
  store double %20, ptr %18, align 8, !tbaa !27
  %21 = add nuw nsw i64 %15, 1
  %22 = icmp eq i64 %21, %13
  br i1 %22, label %23, label %14, !llvm.loop !70

23:                                               ; preds = %14, %3
  ret i32 0
}

attributes #0 = { nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { nofree nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind optsize willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { nofree nounwind }
attributes #11 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree norecurse nosync nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nounwind optsize }
attributes #14 = { optsize }
attributes #15 = { nounwind optsize allocsize(0,1) }
attributes #16 = { nounwind }

!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3, !4, !5, !6}

!0 = !{!"clang version 17.0.6 (https://github.com/Casperento/llvm-project.git 9b0073551ece0d22bf3378af2b03e456a26031b6)"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 1, !"ThinLTO", i32 0}
!6 = !{i32 1, !"EnableSplitLTOUnit", i32 1}
!7 = !{!8, !9, i64 40}
!8 = !{!"", !9, i64 0, !9, i64 8, !9, i64 16, !12, i64 24, !12, i64 28, !12, i64 32, !9, i64 40, !12, i64 48, !12, i64 52}
!9 = !{!"any pointer", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
!12 = !{!"int", !10, i64 0}
!13 = !{!8, !12, i64 24}
!14 = !{!8, !12, i64 28}
!15 = !{!8, !12, i64 32}
!16 = !{!8, !12, i64 52}
!17 = !{!8, !12, i64 48}
!18 = !{!8, !9, i64 8}
!19 = !{!8, !9, i64 0}
!20 = !{!8, !9, i64 16}
!21 = !{!22, !9, i64 0}
!22 = !{!"", !9, i64 0, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28}
!23 = !{!22, !12, i64 8}
!24 = !{!22, !12, i64 16}
!25 = !{!22, !12, i64 28}
!26 = !{!22, !12, i64 24}
!27 = !{!28, !28, i64 0}
!28 = !{!"double", !10, i64 0}
!29 = distinct !{!29, !30}
!30 = !{!"llvm.loop.mustprogress"}
!31 = distinct !{!31, !30}
!32 = !{!12, !12, i64 0}
!33 = distinct !{!33, !30}
!34 = distinct !{!34, !30}
!35 = distinct !{!35, !30}
!36 = distinct !{!36, !30}
!37 = distinct !{!37, !30}
!38 = distinct !{!38, !30}
!39 = distinct !{!39, !30}
!40 = distinct !{!40, !30}
!41 = distinct !{!41, !30}
!42 = !{!9, !9, i64 0}
!43 = distinct !{!43, !30}
!44 = distinct !{!44, !30}
!45 = distinct !{!45, !30}
!46 = distinct !{!46, !30}
!47 = distinct !{!47, !30}
!48 = distinct !{!48, !30}
!49 = distinct !{!49, !30}
!50 = distinct !{!50, !30}
!51 = distinct !{!51, !30}
!52 = distinct !{!52, !30}
!53 = !{!54, !55, i64 0}
!54 = !{!"timeval", !55, i64 0, !55, i64 8}
!55 = !{!"long", !10, i64 0}
!56 = !{!54, !55, i64 8}
!57 = distinct !{!57, !30}
!58 = distinct !{!58, !30}
!59 = distinct !{!59, !30}
!60 = distinct !{!60, !30}
!61 = distinct !{!61, !30}
!62 = distinct !{!62, !30}
!63 = distinct !{!63, !30}
!64 = distinct !{!64, !30}
!65 = !{!22, !12, i64 20}
!66 = !{!22, !12, i64 12}
!67 = distinct !{!67, !30, !68, !69}
!68 = !{!"llvm.loop.isvectorized", i32 1}
!69 = !{!"llvm.loop.unroll.runtime.disable"}
!70 = distinct !{!70, !30}
