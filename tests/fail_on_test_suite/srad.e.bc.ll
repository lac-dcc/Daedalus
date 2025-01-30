; ModuleID = '/src/llvm-test-suite/build/MultiSource/Benchmarks/Rodinia/srad/srad.e.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"%.5f\0A\00", align 1
@next = internal unnamed_addr global i32 0, align 4
@table = internal unnamed_addr global [344 x i32] zeroinitializer, align 16

; Function Attrs: nounwind optsize uwtable
define dso_local i32 @main(i32 noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = tail call dereferenceable_or_null(8388608) ptr @calloc(i64 1, i64 8388608)
  %4 = tail call dereferenceable_or_null(8388608) ptr @calloc(i64 1, i64 8388608)
  %5 = tail call dereferenceable_or_null(8388608) ptr @calloc(i64 1, i64 8388608)
  %6 = tail call dereferenceable_or_null(8388608) ptr @calloc(i64 1, i64 8388608)
  %7 = tail call dereferenceable_or_null(8388608) ptr @calloc(i64 1, i64 8388608)
  %8 = tail call dereferenceable_or_null(8388608) ptr @calloc(i64 1, i64 8388608)
  %9 = tail call dereferenceable_or_null(8388608) ptr @calloc(i64 1, i64 8388608)
  tail call void @random_matrix(ptr noundef %3) #9
  br label %10

10:                                               ; preds = %13, %2
  %11 = phi i64 [ 0, %2 ], [ %14, %13 ]
  br label %16

12:                                               ; preds = %13
  tail call void @srad_kernel(ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef %5) #10
  br label %26

13:                                               ; preds = %16
  %14 = add nuw nsw i64 %11, 1
  %15 = icmp eq i64 %14, 2048
  br i1 %15, label %12, label %10, !llvm.loop !7

16:                                               ; preds = %16, %10
  %17 = phi i64 [ 0, %10 ], [ %24, %16 ]
  %18 = getelementptr inbounds [2048 x [1024 x float]], ptr %3, i64 0, i64 %11, i64 %17
  %19 = load float, ptr %18, align 4, !tbaa !9
  %20 = fpext float %19 to double
  %21 = tail call double @exp(double noundef %20) #10
  %22 = fptrunc double %21 to float
  %23 = getelementptr inbounds [2048 x [1024 x float]], ptr %4, i64 0, i64 %11, i64 %17
  store float %22, ptr %23, align 4, !tbaa !9
  %24 = add nuw nsw i64 %17, 1
  %25 = icmp eq i64 %24, 1024
  br i1 %25, label %13, label %16, !llvm.loop !13

26:                                               ; preds = %30, %12
  %27 = phi i64 [ 0, %12 ], [ %31, %30 ]
  %28 = shl nsw i64 %27, 10
  br label %33

29:                                               ; preds = %30
  tail call void @free(ptr noundef %3) #10
  tail call void @free(ptr noundef %4) #10
  tail call void @free(ptr noundef %6) #10
  tail call void @free(ptr noundef %7) #10
  tail call void @free(ptr noundef %8) #10
  tail call void @free(ptr noundef %9) #10
  tail call void @free(ptr noundef %5) #10
  ret i32 0

30:                                               ; preds = %44
  %31 = add nuw nsw i64 %27, 1
  %32 = icmp eq i64 %31, 2048
  br i1 %32, label %29, label %26, !llvm.loop !14

33:                                               ; preds = %44, %26
  %34 = phi i64 [ 0, %26 ], [ %45, %44 ]
  %35 = add nuw nsw i64 %34, %28
  %36 = trunc i64 %35 to i32
  %37 = urem i32 %36, 200
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %33
  %40 = getelementptr inbounds [2048 x [1024 x float]], ptr %4, i64 0, i64 %27, i64 %34
  %41 = load float, ptr %40, align 4, !tbaa !9
  %42 = fpext float %41 to double
  %43 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %42) #9
  br label %44

44:                                               ; preds = %39, %33
  %45 = add nuw nsw i64 %34, 1
  %46 = icmp eq i64 %45, 1024
  br i1 %46, label %30, label %33, !llvm.loop !15
}

; Function Attrs: nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind optsize uwtable
define internal void @random_matrix(ptr nocapture noundef writeonly %0) #0 {
  tail call void @glibc_compat_srand(i32 noundef 7) #10
  br label %2

2:                                                ; preds = %5, %1
  %3 = phi i64 [ 0, %1 ], [ %6, %5 ]
  br label %8

4:                                                ; preds = %5
  ret void

5:                                                ; preds = %8
  %6 = add nuw nsw i64 %3, 1
  %7 = icmp eq i64 %6, 2048
  br i1 %7, label %4, label %2, !llvm.loop !16

8:                                                ; preds = %8, %2
  %9 = phi i64 [ 0, %2 ], [ %14, %8 ]
  %10 = tail call i32 @glibc_compat_rand() #10
  %11 = sitofp i32 %10 to float
  %12 = fmul float %11, 0x3E00000000000000
  %13 = getelementptr inbounds [1024 x float], ptr %0, i64 %3, i64 %9
  store float %12, ptr %13, align 4, !tbaa !9
  %14 = add nuw nsw i64 %9, 1
  %15 = icmp eq i64 %14, 1024
  br i1 %15, label %5, label %8, !llvm.loop !17
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @exp(double noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nofree norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal void @srad_kernel(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2, ptr nocapture noundef %3, ptr nocapture noundef readnone %4, ptr nocapture noundef %5, ptr nocapture noundef %6) #5 {
  %8 = getelementptr inbounds [1024 x float], ptr %5, i64 1
  %9 = getelementptr inbounds [1024 x float], ptr %5, i64 0, i64 1
  %10 = getelementptr inbounds [1024 x float], ptr %5, i64 0, i64 1023
  %11 = getelementptr inbounds [1024 x float], ptr %0, i64 0, i64 1023
  %12 = getelementptr inbounds [1024 x float], ptr %5, i64 1, i64 1023
  %13 = getelementptr inbounds [1024 x float], ptr %1, i64 0, i64 1023
  %14 = getelementptr inbounds [1024 x float], ptr %5, i64 0, i64 1022
  %15 = getelementptr inbounds [1024 x float], ptr %2, i64 0, i64 1023
  %16 = getelementptr inbounds [1024 x float], ptr %3, i64 0, i64 1023
  %17 = getelementptr inbounds [1024 x float], ptr %6, i64 0, i64 1023
  %18 = getelementptr inbounds [1024 x float], ptr %5, i64 2047
  %19 = getelementptr inbounds [1024 x float], ptr %5, i64 2046
  %20 = getelementptr inbounds [1024 x float], ptr %0, i64 2047
  %21 = getelementptr inbounds [1024 x float], ptr %1, i64 2047
  %22 = getelementptr inbounds [1024 x float], ptr %2, i64 2047
  %23 = getelementptr inbounds [1024 x float], ptr %5, i64 2047, i64 1
  %24 = getelementptr inbounds [1024 x float], ptr %3, i64 2047
  %25 = getelementptr inbounds [1024 x float], ptr %6, i64 2047
  %26 = getelementptr inbounds [1024 x float], ptr %5, i64 2047, i64 1023
  %27 = getelementptr inbounds [1024 x float], ptr %5, i64 2046, i64 1023
  %28 = getelementptr inbounds [1024 x float], ptr %0, i64 2047, i64 1023
  %29 = getelementptr inbounds [1024 x float], ptr %1, i64 2047, i64 1023
  %30 = getelementptr inbounds [1024 x float], ptr %5, i64 2047, i64 1022
  %31 = getelementptr inbounds [1024 x float], ptr %2, i64 2047, i64 1023
  %32 = getelementptr inbounds [1024 x float], ptr %3, i64 2047, i64 1023
  %33 = getelementptr inbounds [1024 x float], ptr %6, i64 2047, i64 1023
  br label %34

34:                                               ; preds = %390, %7
  %35 = phi i32 [ 0, %7 ], [ %391, %390 ]
  br label %36

36:                                               ; preds = %51, %34
  %37 = phi i64 [ 0, %34 ], [ %52, %51 ]
  %38 = phi float [ 0.000000e+00, %34 ], [ %.lcssa1, %51 ]
  %39 = phi float [ 0.000000e+00, %34 ], [ %.lcssa, %51 ]
  br label %40

40:                                               ; preds = %40, %36
  %41 = phi i64 [ 0, %36 ], [ %49, %40 ]
  %42 = phi float [ %38, %36 ], [ %46, %40 ]
  %43 = phi float [ %39, %36 ], [ %48, %40 ]
  %44 = getelementptr inbounds [1024 x float], ptr %5, i64 %37, i64 %41
  %45 = load float, ptr %44, align 4, !tbaa !9
  %46 = fadd float %42, %45
  %47 = fmul float %45, %45
  %48 = fadd float %43, %47
  %49 = add nuw nsw i64 %41, 1
  %50 = icmp eq i64 %49, 128
  br i1 %50, label %51, label %40, !llvm.loop !18

51:                                               ; preds = %40
  %.lcssa1 = phi float [ %46, %40 ]
  %.lcssa = phi float [ %48, %40 ]
  %52 = add nuw nsw i64 %37, 1
  %53 = icmp eq i64 %52, 128
  br i1 %53, label %54, label %36, !llvm.loop !19

54:                                               ; preds = %51
  %.lcssa1.lcssa = phi float [ %.lcssa1, %51 ]
  %.lcssa.lcssa = phi float [ %.lcssa, %51 ]
  %55 = fmul float %.lcssa1.lcssa, 0x3F10000000000000
  %56 = fmul float %.lcssa.lcssa, 0x3F10000000000000
  %57 = load float, ptr %5, align 4, !tbaa !9
  %58 = fsub float %57, %57
  store float %58, ptr %0, align 4, !tbaa !9
  %59 = load float, ptr %8, align 4, !tbaa !9
  %60 = fsub float %59, %57
  store float %60, ptr %1, align 4, !tbaa !9
  %61 = load float, ptr %5, align 4, !tbaa !9
  %62 = fsub float %61, %57
  store float %62, ptr %2, align 4, !tbaa !9
  %63 = load float, ptr %9, align 4, !tbaa !9
  %64 = fsub float %63, %57
  store float %64, ptr %3, align 4, !tbaa !9
  %65 = load float, ptr %0, align 4, !tbaa !9
  %66 = fmul float %65, %65
  %67 = load float, ptr %1, align 4, !tbaa !9
  %68 = fmul float %67, %67
  %69 = fadd float %66, %68
  %70 = load float, ptr %2, align 4, !tbaa !9
  %71 = fmul float %70, %70
  %72 = fadd float %69, %71
  %73 = fmul float %64, %64
  %74 = fadd float %73, %72
  %75 = fmul float %57, %57
  %76 = fdiv float %74, %75
  %77 = fadd float %65, %67
  %78 = fadd float %77, %70
  %79 = fadd float %64, %78
  %80 = fdiv float %79, %57
  %81 = fpext float %76 to double
  %82 = fmul double %81, 5.000000e-01
  %83 = fmul float %80, %80
  %84 = fpext float %83 to double
  %85 = fmul double %84, 6.250000e-02
  %86 = fsub double %82, %85
  %87 = fptrunc double %86 to float
  %88 = fpext float %80 to double
  %89 = fmul double %88, 2.500000e-01
  %90 = fadd double %89, 1.000000e+00
  %91 = fptrunc double %90 to float
  %92 = insertelement <2 x float> poison, float %91, i64 0
  %93 = insertelement <2 x float> %92, float %55, i64 1
  %94 = fmul <2 x float> %93, %93
  %95 = extractelement <2 x float> %94, i64 1
  %96 = fsub float %56, %95
  %97 = insertelement <2 x float> poison, float %87, i64 0
  %98 = insertelement <2 x float> %97, float %96, i64 1
  %99 = fdiv <2 x float> %98, %94
  %100 = extractelement <2 x float> %99, i64 0
  %101 = extractelement <2 x float> %99, i64 1
  %102 = fsub float %100, %101
  %103 = fadd float %101, 1.000000e+00
  %104 = fmul float %101, %103
  %105 = fdiv float %102, %104
  %106 = fpext float %105 to double
  %107 = fadd double %106, 1.000000e+00
  %108 = fdiv double 1.000000e+00, %107
  %109 = fptrunc double %108 to float
  store float %109, ptr %6, align 4, !tbaa !9
  %110 = fcmp olt float %109, 0.000000e+00
  br i1 %110, label %113, label %111

111:                                              ; preds = %54
  %112 = fcmp ogt float %109, 1.000000e+00
  br i1 %112, label %113, label %115

113:                                              ; preds = %111, %54
  %114 = phi float [ 0.000000e+00, %54 ], [ 1.000000e+00, %111 ]
  store float %114, ptr %6, align 4, !tbaa !9
  br label %115

115:                                              ; preds = %113, %111
  %116 = load float, ptr %10, align 4, !tbaa !9
  %117 = fsub float %116, %116
  store float %117, ptr %11, align 4, !tbaa !9
  %118 = load float, ptr %12, align 4, !tbaa !9
  %119 = fsub float %118, %116
  store float %119, ptr %13, align 4, !tbaa !9
  %120 = load float, ptr %14, align 4, !tbaa !9
  %121 = fsub float %120, %116
  store float %121, ptr %15, align 4, !tbaa !9
  %122 = load float, ptr %10, align 4, !tbaa !9
  %123 = fsub float %122, %116
  store float %123, ptr %16, align 4, !tbaa !9
  %124 = load float, ptr %11, align 4, !tbaa !9
  %125 = fmul float %124, %124
  %126 = load float, ptr %13, align 4, !tbaa !9
  %127 = fmul float %126, %126
  %128 = fadd float %125, %127
  %129 = load float, ptr %15, align 4, !tbaa !9
  %130 = fmul float %129, %129
  %131 = fadd float %128, %130
  %132 = fmul float %123, %123
  %133 = fadd float %132, %131
  %134 = fmul float %116, %116
  %135 = fdiv float %133, %134
  %136 = fadd float %124, %126
  %137 = fadd float %136, %129
  %138 = fadd float %123, %137
  %139 = fdiv float %138, %116
  %140 = fpext float %135 to double
  %141 = fmul double %140, 5.000000e-01
  %142 = fmul float %139, %139
  %143 = fpext float %142 to double
  %144 = fmul double %143, 6.250000e-02
  %145 = fsub double %141, %144
  %146 = fptrunc double %145 to float
  %147 = fpext float %139 to double
  %148 = fmul double %147, 2.500000e-01
  %149 = fadd double %148, 1.000000e+00
  %150 = fptrunc double %149 to float
  %151 = fmul float %150, %150
  %152 = fdiv float %146, %151
  %153 = fsub float %152, %101
  %154 = fdiv float %153, %104
  %155 = fpext float %154 to double
  %156 = fadd double %155, 1.000000e+00
  %157 = fdiv double 1.000000e+00, %156
  %158 = fptrunc double %157 to float
  store float %158, ptr %17, align 4, !tbaa !9
  %159 = fcmp olt float %158, 0.000000e+00
  br i1 %159, label %162, label %160

160:                                              ; preds = %115
  %161 = fcmp ogt float %158, 1.000000e+00
  br i1 %161, label %162, label %164

162:                                              ; preds = %160, %115
  %163 = phi float [ 0.000000e+00, %115 ], [ 1.000000e+00, %160 ]
  store float %163, ptr %17, align 4, !tbaa !9
  br label %164

164:                                              ; preds = %162, %160
  %165 = load float, ptr %18, align 4, !tbaa !9
  %166 = load float, ptr %19, align 4, !tbaa !9
  %167 = fsub float %166, %165
  store float %167, ptr %20, align 4, !tbaa !9
  %168 = load float, ptr %18, align 4, !tbaa !9
  %169 = fsub float %168, %165
  store float %169, ptr %21, align 4, !tbaa !9
  %170 = load float, ptr %18, align 4, !tbaa !9
  %171 = fsub float %170, %165
  store float %171, ptr %22, align 4, !tbaa !9
  %172 = load float, ptr %23, align 4, !tbaa !9
  %173 = fsub float %172, %165
  store float %173, ptr %24, align 4, !tbaa !9
  %174 = load float, ptr %20, align 4, !tbaa !9
  %175 = fmul float %174, %174
  %176 = load float, ptr %21, align 4, !tbaa !9
  %177 = fmul float %176, %176
  %178 = fadd float %175, %177
  %179 = load float, ptr %22, align 4, !tbaa !9
  %180 = fmul float %179, %179
  %181 = fadd float %178, %180
  %182 = fmul float %173, %173
  %183 = fadd float %182, %181
  %184 = fmul float %165, %165
  %185 = fdiv float %183, %184
  %186 = fadd float %174, %176
  %187 = fadd float %186, %179
  %188 = fadd float %173, %187
  %189 = fdiv float %188, %165
  %190 = fpext float %185 to double
  %191 = fmul double %190, 5.000000e-01
  %192 = fmul float %189, %189
  %193 = fpext float %192 to double
  %194 = fmul double %193, 6.250000e-02
  %195 = fsub double %191, %194
  %196 = fptrunc double %195 to float
  %197 = fpext float %189 to double
  %198 = fmul double %197, 2.500000e-01
  %199 = fadd double %198, 1.000000e+00
  %200 = fptrunc double %199 to float
  %201 = fmul float %200, %200
  %202 = fdiv float %196, %201
  %203 = fsub float %202, %101
  %204 = fdiv float %203, %104
  %205 = fpext float %204 to double
  %206 = fadd double %205, 1.000000e+00
  %207 = fdiv double 1.000000e+00, %206
  %208 = fptrunc double %207 to float
  store float %208, ptr %25, align 4, !tbaa !9
  %209 = fcmp olt float %208, 0.000000e+00
  br i1 %209, label %212, label %210

210:                                              ; preds = %164
  %211 = fcmp ogt float %208, 1.000000e+00
  br i1 %211, label %212, label %214

212:                                              ; preds = %210, %164
  %213 = phi float [ 0.000000e+00, %164 ], [ 1.000000e+00, %210 ]
  store float %213, ptr %25, align 4, !tbaa !9
  br label %214

214:                                              ; preds = %212, %210
  %215 = load float, ptr %26, align 4, !tbaa !9
  %216 = load float, ptr %27, align 4, !tbaa !9
  %217 = fsub float %216, %215
  store float %217, ptr %28, align 4, !tbaa !9
  %218 = load float, ptr %26, align 4, !tbaa !9
  %219 = fsub float %218, %215
  store float %219, ptr %29, align 4, !tbaa !9
  %220 = load float, ptr %30, align 4, !tbaa !9
  %221 = fsub float %220, %215
  store float %221, ptr %31, align 4, !tbaa !9
  %222 = load float, ptr %26, align 4, !tbaa !9
  %223 = fsub float %222, %215
  store float %223, ptr %32, align 4, !tbaa !9
  %224 = load float, ptr %28, align 4, !tbaa !9
  %225 = fmul float %224, %224
  %226 = load float, ptr %29, align 4, !tbaa !9
  %227 = fmul float %226, %226
  %228 = fadd float %225, %227
  %229 = load float, ptr %31, align 4, !tbaa !9
  %230 = fmul float %229, %229
  %231 = fadd float %228, %230
  %232 = fmul float %223, %223
  %233 = fadd float %232, %231
  %234 = fmul float %215, %215
  %235 = fdiv float %233, %234
  %236 = fadd float %224, %226
  %237 = fadd float %236, %229
  %238 = fadd float %223, %237
  %239 = fdiv float %238, %215
  %240 = fpext float %235 to double
  %241 = fmul double %240, 5.000000e-01
  %242 = fmul float %239, %239
  %243 = fpext float %242 to double
  %244 = fmul double %243, 6.250000e-02
  %245 = fsub double %241, %244
  %246 = fptrunc double %245 to float
  %247 = fpext float %239 to double
  %248 = fmul double %247, 2.500000e-01
  %249 = fadd double %248, 1.000000e+00
  %250 = fptrunc double %249 to float
  %251 = fmul float %250, %250
  %252 = fdiv float %246, %251
  %253 = fsub float %252, %101
  %254 = fdiv float %253, %104
  %255 = fpext float %254 to double
  %256 = fadd double %255, 1.000000e+00
  %257 = fdiv double 1.000000e+00, %256
  %258 = fptrunc double %257 to float
  store float %258, ptr %33, align 4, !tbaa !9
  %259 = fcmp olt float %258, 0.000000e+00
  br i1 %259, label %262, label %260

260:                                              ; preds = %214
  %261 = fcmp ogt float %258, 1.000000e+00
  br i1 %261, label %262, label %264

262:                                              ; preds = %260, %214
  %263 = phi float [ 0.000000e+00, %214 ], [ 1.000000e+00, %260 ]
  store float %263, ptr %33, align 4, !tbaa !9
  br label %264

264:                                              ; preds = %262, %260
  br label %265

265:                                              ; preds = %269, %264
  %266 = phi i64 [ %268, %269 ], [ 1, %264 ]
  %267 = add nsw i64 %266, -1
  %268 = add nuw nsw i64 %266, 1
  br label %271

269:                                              ; preds = %334
  %270 = icmp eq i64 %268, 2047
  br i1 %270, label %355, label %265, !llvm.loop !20

271:                                              ; preds = %334, %265
  %272 = phi i64 [ 1, %265 ], [ %288, %334 ]
  %273 = getelementptr inbounds [1024 x float], ptr %5, i64 %266, i64 %272
  %274 = load float, ptr %273, align 4, !tbaa !9
  %275 = getelementptr inbounds [1024 x float], ptr %5, i64 %267, i64 %272
  %276 = load float, ptr %275, align 4, !tbaa !9
  %277 = fsub float %276, %274
  %278 = getelementptr inbounds [1024 x float], ptr %0, i64 %266, i64 %272
  store float %277, ptr %278, align 4, !tbaa !9
  %279 = getelementptr inbounds [1024 x float], ptr %5, i64 %268, i64 %272
  %280 = load float, ptr %279, align 4, !tbaa !9
  %281 = fsub float %280, %274
  %282 = getelementptr inbounds [1024 x float], ptr %1, i64 %266, i64 %272
  store float %281, ptr %282, align 4, !tbaa !9
  %283 = add nsw i64 %272, -1
  %284 = getelementptr inbounds [1024 x float], ptr %5, i64 %266, i64 %283
  %285 = load float, ptr %284, align 4, !tbaa !9
  %286 = fsub float %285, %274
  %287 = getelementptr inbounds [1024 x float], ptr %2, i64 %266, i64 %272
  store float %286, ptr %287, align 4, !tbaa !9
  %288 = add nuw nsw i64 %272, 1
  %289 = getelementptr inbounds [1024 x float], ptr %5, i64 %266, i64 %288
  %290 = load float, ptr %289, align 4, !tbaa !9
  %291 = fsub float %290, %274
  %292 = getelementptr inbounds [1024 x float], ptr %3, i64 %266, i64 %272
  store float %291, ptr %292, align 4, !tbaa !9
  %293 = load float, ptr %278, align 4, !tbaa !9
  %294 = fmul float %293, %293
  %295 = load float, ptr %282, align 4, !tbaa !9
  %296 = fmul float %295, %295
  %297 = fadd float %294, %296
  %298 = load float, ptr %287, align 4, !tbaa !9
  %299 = fmul float %298, %298
  %300 = fadd float %297, %299
  %301 = fmul float %291, %291
  %302 = fadd float %301, %300
  %303 = fmul float %274, %274
  %304 = fdiv float %302, %303
  %305 = fadd float %293, %295
  %306 = fadd float %305, %298
  %307 = fadd float %291, %306
  %308 = fdiv float %307, %274
  %309 = fpext float %304 to double
  %310 = fmul double %309, 5.000000e-01
  %311 = fmul float %308, %308
  %312 = fpext float %311 to double
  %313 = fmul double %312, 6.250000e-02
  %314 = fsub double %310, %313
  %315 = fptrunc double %314 to float
  %316 = fpext float %308 to double
  %317 = fmul double %316, 2.500000e-01
  %318 = fadd double %317, 1.000000e+00
  %319 = fptrunc double %318 to float
  %320 = fmul float %319, %319
  %321 = fdiv float %315, %320
  %322 = fsub float %321, %101
  %323 = fdiv float %322, %104
  %324 = fpext float %323 to double
  %325 = fadd double %324, 1.000000e+00
  %326 = fdiv double 1.000000e+00, %325
  %327 = fptrunc double %326 to float
  %328 = getelementptr inbounds [1024 x float], ptr %6, i64 %266, i64 %272
  store float %327, ptr %328, align 4, !tbaa !9
  %329 = fcmp olt float %327, 0.000000e+00
  br i1 %329, label %332, label %330

330:                                              ; preds = %271
  %331 = fcmp ogt float %327, 1.000000e+00
  br i1 %331, label %332, label %334

332:                                              ; preds = %330, %271
  %333 = phi float [ 0.000000e+00, %271 ], [ 1.000000e+00, %330 ]
  store float %333, ptr %328, align 4, !tbaa !9
  br label %334

334:                                              ; preds = %332, %330
  %335 = icmp eq i64 %288, 1023
  br i1 %335, label %269, label %271, !llvm.loop !21

336:                                              ; preds = %355
  %337 = load float, ptr %33, align 4, !tbaa !9
  %338 = load float, ptr %28, align 4, !tbaa !9
  %339 = fmul float %337, %338
  %340 = load float, ptr %29, align 4, !tbaa !9
  %341 = fmul float %337, %340
  %342 = fadd float %339, %341
  %343 = load float, ptr %31, align 4, !tbaa !9
  %344 = fmul float %337, %343
  %345 = fadd float %342, %344
  %346 = load float, ptr %32, align 4, !tbaa !9
  %347 = fmul float %337, %346
  %348 = fadd float %345, %347
  %349 = load float, ptr %26, align 4, !tbaa !9
  %350 = fpext float %349 to double
  %351 = fpext float %348 to double
  %352 = fmul double %351, 1.250000e-01
  %353 = fadd double %352, %350
  %354 = fptrunc double %353 to float
  store float %354, ptr %26, align 4, !tbaa !9
  br label %387

355:                                              ; preds = %355, %269
  %356 = phi i64 [ %358, %355 ], [ 0, %269 ]
  %357 = getelementptr inbounds [1024 x float], ptr %6, i64 2047, i64 %356
  %358 = add nuw nsw i64 %356, 1
  %359 = getelementptr inbounds [1024 x float], ptr %0, i64 2047, i64 %356
  %360 = load float, ptr %359, align 4, !tbaa !9
  %361 = getelementptr inbounds [1024 x float], ptr %1, i64 2047, i64 %356
  %362 = load float, ptr %361, align 4, !tbaa !9
  %363 = getelementptr inbounds [1024 x float], ptr %2, i64 2047, i64 %356
  %364 = load float, ptr %363, align 4, !tbaa !9
  %365 = getelementptr inbounds [1024 x float], ptr %3, i64 2047, i64 %356
  %366 = load float, ptr %365, align 4, !tbaa !9
  %367 = load <2 x float>, ptr %357, align 4, !tbaa !9
  %368 = extractelement <2 x float> %367, i64 0
  %369 = fmul float %368, %360
  %370 = fmul float %368, %362
  %371 = fadd float %369, %370
  %372 = insertelement <2 x float> poison, float %364, i64 0
  %373 = insertelement <2 x float> %372, float %366, i64 1
  %374 = fmul <2 x float> %367, %373
  %375 = extractelement <2 x float> %374, i64 0
  %376 = fadd float %371, %375
  %377 = extractelement <2 x float> %374, i64 1
  %378 = fadd float %376, %377
  %379 = getelementptr inbounds [1024 x float], ptr %5, i64 2047, i64 %356
  %380 = load float, ptr %379, align 4, !tbaa !9
  %381 = fpext float %380 to double
  %382 = fpext float %378 to double
  %383 = fmul double %382, 1.250000e-01
  %384 = fadd double %383, %381
  %385 = fptrunc double %384 to float
  store float %385, ptr %379, align 4, !tbaa !9
  %386 = icmp eq i64 %358, 1023
  br i1 %386, label %336, label %355, !llvm.loop !22

387:                                              ; preds = %393, %336
  %388 = phi i64 [ 0, %336 ], [ %389, %393 ]
  %389 = add nuw nsw i64 %388, 1
  br label %395

390:                                              ; preds = %393
  %391 = add nuw nsw i32 %35, 1
  %392 = icmp eq i32 %391, 10
  br i1 %392, label %429, label %34, !llvm.loop !23

393:                                              ; preds = %395
  %394 = icmp eq i64 %389, 2047
  br i1 %394, label %390, label %387, !llvm.loop !24

395:                                              ; preds = %395, %387
  %396 = phi i64 [ 0, %387 ], [ %400, %395 ]
  %397 = getelementptr inbounds [1024 x float], ptr %6, i64 %388, i64 %396
  %398 = getelementptr inbounds [1024 x float], ptr %6, i64 %389, i64 %396
  %399 = load float, ptr %398, align 4, !tbaa !9
  %400 = add nuw nsw i64 %396, 1
  %401 = getelementptr inbounds [1024 x float], ptr %0, i64 %388, i64 %396
  %402 = load float, ptr %401, align 4, !tbaa !9
  %403 = getelementptr inbounds [1024 x float], ptr %1, i64 %388, i64 %396
  %404 = load float, ptr %403, align 4, !tbaa !9
  %405 = fmul float %399, %404
  %406 = getelementptr inbounds [1024 x float], ptr %2, i64 %388, i64 %396
  %407 = load float, ptr %406, align 4, !tbaa !9
  %408 = getelementptr inbounds [1024 x float], ptr %3, i64 %388, i64 %396
  %409 = load float, ptr %408, align 4, !tbaa !9
  %410 = load <2 x float>, ptr %397, align 4, !tbaa !9
  %411 = extractelement <2 x float> %410, i64 0
  %412 = fmul float %411, %402
  %413 = fadd float %412, %405
  %414 = insertelement <2 x float> poison, float %407, i64 0
  %415 = insertelement <2 x float> %414, float %409, i64 1
  %416 = fmul <2 x float> %410, %415
  %417 = extractelement <2 x float> %416, i64 0
  %418 = fadd float %413, %417
  %419 = extractelement <2 x float> %416, i64 1
  %420 = fadd float %418, %419
  %421 = getelementptr inbounds [1024 x float], ptr %5, i64 %388, i64 %396
  %422 = load float, ptr %421, align 4, !tbaa !9
  %423 = fpext float %422 to double
  %424 = fpext float %420 to double
  %425 = fmul double %424, 1.250000e-01
  %426 = fadd double %425, %423
  %427 = fptrunc double %426 to float
  store float %427, ptr %421, align 4, !tbaa !9
  %428 = icmp eq i64 %400, 1023
  br i1 %428, label %393, label %395, !llvm.loop !25

429:                                              ; preds = %390
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define internal i32 @glibc_compat_rand() #6 {
  %1 = load i32, ptr @next, align 4, !tbaa !26
  %2 = icmp slt i32 %1, 3
  %3 = select i1 %2, i32 341, i32 -3
  %4 = add nsw i32 %3, %1
  %5 = icmp slt i32 %1, 31
  %6 = select i1 %5, i32 313, i32 -31
  %7 = add nsw i32 %6, %1
  %8 = sext i32 %4 to i64
  %9 = getelementptr inbounds [344 x i32], ptr @table, i64 0, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !26
  %11 = sext i32 %7 to i64
  %12 = getelementptr inbounds [344 x i32], ptr @table, i64 0, i64 %11
  %13 = load i32, ptr %12, align 4, !tbaa !26
  %14 = add i32 %13, %10
  %15 = sext i32 %1 to i64
  %16 = getelementptr inbounds [344 x i32], ptr @table, i64 0, i64 %15
  store i32 %14, ptr %16, align 4, !tbaa !26
  %17 = lshr i32 %14, 1
  %18 = add nsw i32 %1, 1
  %19 = icmp sgt i32 %1, 342
  %20 = select i1 %19, i32 0, i32 %18
  store i32 %20, ptr @next, align 4
  ret i32 %17
}

; Function Attrs: nofree nosync nounwind optsize memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define internal void @glibc_compat_srand(i32 noundef %0) #7 {
  %2 = tail call i32 @llvm.umax.i32(i32 %0, i32 1)
  store i32 %2, ptr @table, align 16, !tbaa !26
  br label %3

3:                                                ; preds = %3, %1
  %4 = phi i32 [ %2, %1 ], [ %9, %3 ]
  %5 = phi i64 [ 1, %1 ], [ %11, %3 ]
  %6 = zext i32 %4 to i64
  %7 = mul nuw nsw i64 %6, 16807
  %8 = urem i64 %7, 2147483647
  %9 = trunc i64 %8 to i32
  %10 = getelementptr inbounds [344 x i32], ptr @table, i64 0, i64 %5
  store i32 %9, ptr %10, align 4, !tbaa !26
  %11 = add nuw nsw i64 %5, 1
  %12 = icmp eq i64 %11, 31
  br i1 %12, label %13, label %3, !llvm.loop !28

13:                                               ; preds = %13, %3
  %14 = phi i64 [ %19, %13 ], [ 31, %3 ]
  %15 = add nsw i64 %14, -31
  %16 = getelementptr inbounds [344 x i32], ptr @table, i64 0, i64 %15
  %17 = load i32, ptr %16, align 4, !tbaa !26
  %18 = getelementptr inbounds [344 x i32], ptr @table, i64 0, i64 %14
  store i32 %17, ptr %18, align 4, !tbaa !26
  %19 = add nuw nsw i64 %14, 1
  %20 = icmp eq i64 %19, 34
  br i1 %20, label %22, label %13, !llvm.loop !29

21:                                               ; preds = %22
  store i32 0, ptr @next, align 4, !tbaa !26
  ret void

22:                                               ; preds = %22, %13
  %23 = phi i64 [ %32, %22 ], [ 34, %13 ]
  %24 = add nsw i64 %23, -31
  %25 = getelementptr inbounds [344 x i32], ptr @table, i64 0, i64 %24
  %26 = load i32, ptr %25, align 4, !tbaa !26
  %27 = add nsw i64 %23, -3
  %28 = getelementptr inbounds [344 x i32], ptr @table, i64 0, i64 %27
  %29 = load i32, ptr %28, align 4, !tbaa !26
  %30 = add i32 %29, %26
  %31 = getelementptr inbounds [344 x i32], ptr @table, i64 0, i64 %23
  store i32 %30, ptr %31, align 4, !tbaa !26
  %32 = add nuw nsw i64 %23, 1
  %33 = icmp eq i64 %32, 344
  br i1 %33, label %21, label %22, !llvm.loop !30
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #8

attributes #0 = { nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" }
attributes #2 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nosync nounwind optsize memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { optsize }
attributes #10 = { nounwind optsize }

!llvm.ident = !{!0, !0, !0}
!llvm.module.flags = !{!1, !2, !3, !4, !5, !6}

!0 = !{!"clang version 17.0.6 (https://github.com/Casperento/llvm-project.git 9b0073551ece0d22bf3378af2b03e456a26031b6)"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 1, !"ThinLTO", i32 0}
!6 = !{i32 1, !"EnableSplitLTOUnit", i32 1}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.mustprogress"}
!9 = !{!10, !10, i64 0}
!10 = !{!"float", !11, i64 0}
!11 = !{!"omnipotent char", !12, i64 0}
!12 = !{!"Simple C/C++ TBAA"}
!13 = distinct !{!13, !8}
!14 = distinct !{!14, !8}
!15 = distinct !{!15, !8}
!16 = distinct !{!16, !8}
!17 = distinct !{!17, !8}
!18 = distinct !{!18, !8}
!19 = distinct !{!19, !8}
!20 = distinct !{!20, !8}
!21 = distinct !{!21, !8}
!22 = distinct !{!22, !8}
!23 = distinct !{!23, !8}
!24 = distinct !{!24, !8}
!25 = distinct !{!25, !8}
!26 = !{!27, !27, i64 0}
!27 = !{!"int", !11, i64 0}
!28 = distinct !{!28, !8}
!29 = distinct !{!29, !8}
!30 = distinct !{!30, !8}
