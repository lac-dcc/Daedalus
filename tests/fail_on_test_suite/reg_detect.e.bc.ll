; ModuleID = '/src/llvm-test-suite/build/SingleSource/Benchmarks/Polybench/medley/reg_detect/reg_detect.e.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [51 x i8] c"[PolyBench] posix_memalign: cannot allocate memory\00", align 1
@.str.2 = private unnamed_addr constant [76 x i8] c"A[%d][%d] = %lf and B[%d][%d] = %lf differ more than FP_ABSTOLERANCE = %lf\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%d \00", align 1

; Function Attrs: nounwind optsize uwtable
define internal ptr @polybench_alloc_data(i64 noundef %0, i32 noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = sext i32 %1 to i64
  %5 = mul i64 %4, %0
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #7
  store ptr null, ptr %3, align 8, !tbaa !7
  %6 = call i32 @posix_memalign(ptr noundef nonnull %3, i64 noundef 32, i64 noundef %5) #8
  %7 = load ptr, ptr %3, align 8, !tbaa !7
  %8 = icmp eq ptr %7, null
  %9 = icmp ne i32 %6, 0
  %10 = select i1 %8, i1 true, i1 %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load ptr, ptr @stderr, align 8, !tbaa !7
  %13 = call i64 @fwrite(ptr nonnull @.str.1, i64 50, i64 1, ptr %12) #9
  call void @exit(i32 noundef 1) #10
  unreachable

14:                                               ; preds = %2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #7
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
  %3 = tail call ptr @polybench_alloc_data(i64 noundef 36, i32 noundef 4) #11
  %4 = tail call ptr @polybench_alloc_data(i64 noundef 36, i32 noundef 4) #11
  %5 = tail call ptr @polybench_alloc_data(i64 noundef 36, i32 noundef 4) #11
  %6 = tail call ptr @polybench_alloc_data(i64 noundef 36, i32 noundef 4) #11
  %7 = tail call ptr @polybench_alloc_data(i64 noundef 2304, i32 noundef 4) #11
  %8 = tail call ptr @polybench_alloc_data(i64 noundef 2304, i32 noundef 4) #11
  br label %9

9:                                                ; preds = %28, %2
  %10 = phi i64 [ 0, %2 ], [ %11, %28 ]
  %11 = add nuw nsw i64 %10, 1
  br label %12

12:                                               ; preds = %12, %9
  %13 = phi i64 [ 0, %9 ], [ %14, %12 ]
  %14 = add nuw nsw i64 %13, 1
  %15 = mul nuw nsw i64 %14, %11
  %16 = getelementptr inbounds [6 x i32], ptr %3, i64 %10, i64 %13
  %17 = trunc i64 %15 to i32
  store i32 %17, ptr %16, align 4, !tbaa !11
  %18 = sub nsw i64 %10, %13
  %19 = trunc i64 %18 to i32
  %20 = sdiv i32 %19, 6
  %21 = getelementptr inbounds [6 x i32], ptr %4, i64 %10, i64 %13
  store i32 %20, ptr %21, align 4, !tbaa !11
  %22 = add nuw nsw i64 %13, 4294967295
  %23 = mul nuw nsw i64 %22, %10
  %24 = trunc i64 %23 to i32
  %25 = sdiv i32 %24, 6
  %26 = getelementptr inbounds [6 x i32], ptr %5, i64 %10, i64 %13
  store i32 %25, ptr %26, align 4, !tbaa !11
  %27 = icmp eq i64 %14, 6
  br i1 %27, label %28, label %12, !llvm.loop !13

28:                                               ; preds = %12
  %29 = icmp eq i64 %11, 6
  br i1 %29, label %30, label %9, !llvm.loop !15

30:                                               ; preds = %98, %28
  %31 = phi i32 [ %99, %98 ], [ 0, %28 ]
  br label %32

32:                                               ; preds = %46, %30
  %33 = phi i64 [ 0, %30 ], [ %47, %46 ]
  br label %34

34:                                               ; preds = %43, %32
  %35 = phi i64 [ %33, %32 ], [ %44, %43 ]
  %36 = getelementptr inbounds [6 x i32], ptr %3, i64 %33, i64 %35
  br label %37

37:                                               ; preds = %37, %34
  %38 = phi i64 [ 0, %34 ], [ %41, %37 ]
  %39 = load i32, ptr %36, align 4, !tbaa !11
  %40 = getelementptr inbounds [6 x [64 x i32]], ptr %7, i64 %33, i64 %35, i64 %38
  store i32 %39, ptr %40, align 4, !tbaa !11
  %41 = add nuw nsw i64 %38, 1
  %42 = icmp eq i64 %41, 64
  br i1 %42, label %43, label %37, !llvm.loop !16

43:                                               ; preds = %37
  %44 = add nuw nsw i64 %35, 1
  %45 = icmp eq i64 %44, 6
  br i1 %45, label %46, label %34, !llvm.loop !17

46:                                               ; preds = %43
  %47 = add nuw nsw i64 %33, 1
  %48 = icmp eq i64 %47, 6
  br i1 %48, label %49, label %32, !llvm.loop !18

49:                                               ; preds = %71, %46
  %50 = phi i64 [ %72, %71 ], [ 0, %46 ]
  br label %51

51:                                               ; preds = %65, %49
  %52 = phi i64 [ %50, %49 ], [ %69, %65 ]
  %53 = getelementptr inbounds [6 x [64 x i32]], ptr %7, i64 %50, i64 %52
  %54 = load i32, ptr %53, align 4, !tbaa !11
  %55 = getelementptr inbounds [6 x [64 x i32]], ptr %8, i64 %50, i64 %52
  store i32 %54, ptr %55, align 4, !tbaa !11
  br label %56

56:                                               ; preds = %56, %51
  %57 = phi i32 [ %54, %51 ], [ %61, %56 ]
  %58 = phi i64 [ 1, %51 ], [ %63, %56 ]
  %59 = getelementptr inbounds [6 x [64 x i32]], ptr %7, i64 %50, i64 %52, i64 %58
  %60 = load i32, ptr %59, align 4, !tbaa !11
  %61 = add nsw i32 %60, %57
  %62 = getelementptr inbounds [6 x [64 x i32]], ptr %8, i64 %50, i64 %52, i64 %58
  store i32 %61, ptr %62, align 4, !tbaa !11
  %63 = add nuw nsw i64 %58, 1
  %64 = icmp eq i64 %63, 64
  br i1 %64, label %65, label %56, !llvm.loop !19

65:                                               ; preds = %56
  %66 = getelementptr inbounds [6 x [64 x i32]], ptr %8, i64 %50, i64 %52, i64 63
  %67 = load i32, ptr %66, align 4, !tbaa !11
  %68 = getelementptr inbounds [6 x i32], ptr %4, i64 %50, i64 %52
  store i32 %67, ptr %68, align 4, !tbaa !11
  %69 = add nuw nsw i64 %52, 1
  %70 = icmp eq i64 %69, 6
  br i1 %70, label %71, label %51, !llvm.loop !20

71:                                               ; preds = %65
  %72 = add nuw nsw i64 %50, 1
  %73 = icmp eq i64 %72, 6
  br i1 %73, label %74, label %49, !llvm.loop !21

74:                                               ; preds = %74, %71
  %75 = phi i64 [ %79, %74 ], [ 0, %71 ]
  %76 = getelementptr inbounds [6 x i32], ptr %4, i64 0, i64 %75
  %77 = load i32, ptr %76, align 4, !tbaa !11
  %78 = getelementptr inbounds [6 x i32], ptr %5, i64 0, i64 %75
  store i32 %77, ptr %78, align 4, !tbaa !11
  %79 = add nuw nsw i64 %75, 1
  %80 = icmp eq i64 %79, 6
  br i1 %80, label %81, label %74, !llvm.loop !22

81:                                               ; preds = %95, %74
  %82 = phi i64 [ %96, %95 ], [ 1, %74 ]
  %83 = add nsw i64 %82, -1
  br label %84

84:                                               ; preds = %84, %81
  %85 = phi i64 [ %82, %81 ], [ %93, %84 ]
  %86 = add nsw i64 %85, -1
  %87 = getelementptr inbounds [6 x i32], ptr %5, i64 %83, i64 %86
  %88 = load i32, ptr %87, align 4, !tbaa !11
  %89 = getelementptr inbounds [6 x i32], ptr %4, i64 %82, i64 %85
  %90 = load i32, ptr %89, align 4, !tbaa !11
  %91 = add nsw i32 %90, %88
  %92 = getelementptr inbounds [6 x i32], ptr %5, i64 %82, i64 %85
  store i32 %91, ptr %92, align 4, !tbaa !11
  %93 = add nuw nsw i64 %85, 1
  %94 = icmp eq i64 %93, 6
  br i1 %94, label %95, label %84, !llvm.loop !23

95:                                               ; preds = %84
  %96 = add nuw nsw i64 %82, 1
  %97 = icmp eq i64 %96, 6
  br i1 %97, label %98, label %81, !llvm.loop !24

98:                                               ; preds = %95
  %99 = add nuw nsw i32 %31, 1
  %100 = icmp eq i32 %99, 10000
  br i1 %100, label %101, label %30, !llvm.loop !25

101:                                              ; preds = %120, %98
  %102 = phi i64 [ %103, %120 ], [ 0, %98 ]
  %103 = add nuw nsw i64 %102, 1
  br label %104

104:                                              ; preds = %104, %101
  %105 = phi i64 [ 0, %101 ], [ %106, %104 ]
  %106 = add nuw nsw i64 %105, 1
  %107 = mul nuw nsw i64 %106, %103
  %108 = getelementptr inbounds [6 x i32], ptr %3, i64 %102, i64 %105
  %109 = trunc i64 %107 to i32
  store i32 %109, ptr %108, align 4, !tbaa !11
  %110 = sub nsw i64 %102, %105
  %111 = trunc i64 %110 to i32
  %112 = sdiv i32 %111, 6
  %113 = getelementptr inbounds [6 x i32], ptr %4, i64 %102, i64 %105
  store i32 %112, ptr %113, align 4, !tbaa !11
  %114 = add nuw nsw i64 %105, 4294967295
  %115 = mul nuw nsw i64 %114, %102
  %116 = trunc i64 %115 to i32
  %117 = sdiv i32 %116, 6
  %118 = getelementptr inbounds [6 x i32], ptr %6, i64 %102, i64 %105
  store i32 %117, ptr %118, align 4, !tbaa !11
  %119 = icmp eq i64 %106, 6
  br i1 %119, label %120, label %104, !llvm.loop !13

120:                                              ; preds = %104
  %121 = icmp eq i64 %103, 6
  br i1 %121, label %122, label %101, !llvm.loop !15

122:                                              ; preds = %190, %120
  %123 = phi i32 [ %191, %190 ], [ 0, %120 ]
  br label %124

124:                                              ; preds = %138, %122
  %125 = phi i64 [ 0, %122 ], [ %139, %138 ]
  br label %126

126:                                              ; preds = %135, %124
  %127 = phi i64 [ %125, %124 ], [ %136, %135 ]
  %128 = getelementptr inbounds [6 x i32], ptr %3, i64 %125, i64 %127
  br label %129

129:                                              ; preds = %129, %126
  %130 = phi i64 [ 0, %126 ], [ %133, %129 ]
  %131 = load i32, ptr %128, align 4, !tbaa !11
  %132 = getelementptr inbounds [6 x [64 x i32]], ptr %7, i64 %125, i64 %127, i64 %130
  store i32 %131, ptr %132, align 4, !tbaa !11
  %133 = add nuw nsw i64 %130, 1
  %134 = icmp eq i64 %133, 64
  br i1 %134, label %135, label %129, !llvm.loop !26

135:                                              ; preds = %129
  %136 = add nuw nsw i64 %127, 1
  %137 = icmp eq i64 %136, 6
  br i1 %137, label %138, label %126, !llvm.loop !27

138:                                              ; preds = %135
  %139 = add nuw nsw i64 %125, 1
  %140 = icmp eq i64 %139, 6
  br i1 %140, label %141, label %124, !llvm.loop !28

141:                                              ; preds = %163, %138
  %142 = phi i64 [ %164, %163 ], [ 0, %138 ]
  br label %143

143:                                              ; preds = %157, %141
  %144 = phi i64 [ %142, %141 ], [ %161, %157 ]
  %145 = getelementptr inbounds [6 x [64 x i32]], ptr %7, i64 %142, i64 %144
  %146 = load i32, ptr %145, align 4, !tbaa !11
  %147 = getelementptr inbounds [6 x [64 x i32]], ptr %8, i64 %142, i64 %144
  store i32 %146, ptr %147, align 4, !tbaa !11
  br label %148

148:                                              ; preds = %148, %143
  %149 = phi i32 [ %146, %143 ], [ %153, %148 ]
  %150 = phi i64 [ 1, %143 ], [ %155, %148 ]
  %151 = getelementptr inbounds [6 x [64 x i32]], ptr %7, i64 %142, i64 %144, i64 %150
  %152 = load i32, ptr %151, align 4, !tbaa !11
  %153 = add nsw i32 %152, %149
  %154 = getelementptr inbounds [6 x [64 x i32]], ptr %8, i64 %142, i64 %144, i64 %150
  store i32 %153, ptr %154, align 4, !tbaa !11
  %155 = add nuw nsw i64 %150, 1
  %156 = icmp eq i64 %155, 64
  br i1 %156, label %157, label %148, !llvm.loop !29

157:                                              ; preds = %148
  %158 = getelementptr inbounds [6 x [64 x i32]], ptr %8, i64 %142, i64 %144, i64 63
  %159 = load i32, ptr %158, align 4, !tbaa !11
  %160 = getelementptr inbounds [6 x i32], ptr %4, i64 %142, i64 %144
  store i32 %159, ptr %160, align 4, !tbaa !11
  %161 = add nuw nsw i64 %144, 1
  %162 = icmp eq i64 %161, 6
  br i1 %162, label %163, label %143, !llvm.loop !30

163:                                              ; preds = %157
  %164 = add nuw nsw i64 %142, 1
  %165 = icmp eq i64 %164, 6
  br i1 %165, label %166, label %141, !llvm.loop !31

166:                                              ; preds = %166, %163
  %167 = phi i64 [ %171, %166 ], [ 0, %163 ]
  %168 = getelementptr inbounds [6 x i32], ptr %4, i64 0, i64 %167
  %169 = load i32, ptr %168, align 4, !tbaa !11
  %170 = getelementptr inbounds [6 x i32], ptr %6, i64 0, i64 %167
  store i32 %169, ptr %170, align 4, !tbaa !11
  %171 = add nuw nsw i64 %167, 1
  %172 = icmp eq i64 %171, 6
  br i1 %172, label %173, label %166, !llvm.loop !32

173:                                              ; preds = %187, %166
  %174 = phi i64 [ %188, %187 ], [ 1, %166 ]
  %175 = add nsw i64 %174, -1
  br label %176

176:                                              ; preds = %176, %173
  %177 = phi i64 [ %174, %173 ], [ %185, %176 ]
  %178 = add nsw i64 %177, -1
  %179 = getelementptr inbounds [6 x i32], ptr %6, i64 %175, i64 %178
  %180 = load i32, ptr %179, align 4, !tbaa !11
  %181 = getelementptr inbounds [6 x i32], ptr %4, i64 %174, i64 %177
  %182 = load i32, ptr %181, align 4, !tbaa !11
  %183 = add nsw i32 %182, %180
  %184 = getelementptr inbounds [6 x i32], ptr %6, i64 %174, i64 %177
  store i32 %183, ptr %184, align 4, !tbaa !11
  %185 = add nuw nsw i64 %177, 1
  %186 = icmp eq i64 %185, 6
  br i1 %186, label %187, label %176, !llvm.loop !33

187:                                              ; preds = %176
  %188 = add nuw nsw i64 %174, 1
  %189 = icmp eq i64 %188, 6
  br i1 %189, label %190, label %173, !llvm.loop !34

190:                                              ; preds = %187
  %191 = add nuw nsw i32 %123, 1
  %192 = icmp eq i32 %191, 10000
  br i1 %192, label %193, label %122, !llvm.loop !35

193:                                              ; preds = %214, %190
  %194 = phi i64 [ %215, %214 ], [ 0, %190 ]
  br label %195

195:                                              ; preds = %211, %193
  %196 = phi i64 [ 0, %193 ], [ %212, %211 ]
  %197 = getelementptr inbounds [6 x i32], ptr %5, i64 %194, i64 %196
  %198 = load i32, ptr %197, align 4, !tbaa !11
  %199 = sitofp i32 %198 to double
  %200 = getelementptr inbounds [6 x i32], ptr %6, i64 %194, i64 %196
  %201 = load i32, ptr %200, align 4, !tbaa !11
  %202 = sitofp i32 %201 to double
  %203 = fsub double %199, %202
  %204 = tail call double @llvm.fabs.f64(double %203)
  %205 = fcmp ule double %204, 1.000000e-05
  br i1 %205, label %211, label %206

206:                                              ; preds = %195
  %.lcssa6 = phi i64 [ %194, %195 ]
  %.lcssa4 = phi i64 [ %196, %195 ]
  %.lcssa2 = phi double [ %199, %195 ]
  %.lcssa = phi double [ %202, %195 ]
  %207 = trunc i64 %.lcssa6 to i32
  %208 = trunc i64 %.lcssa4 to i32
  %209 = load ptr, ptr @stderr, align 8, !tbaa !7
  %210 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %209, ptr noundef nonnull @.str.2, i32 noundef %207, i32 noundef %208, double noundef %.lcssa2, i32 noundef %207, i32 noundef %208, double noundef %.lcssa, double noundef 1.000000e-05) #12
  br label %242

211:                                              ; preds = %195
  %212 = add nuw nsw i64 %196, 1
  %213 = icmp eq i64 %212, 6
  br i1 %213, label %214, label %195, !llvm.loop !36

214:                                              ; preds = %211
  %215 = add nuw nsw i64 %194, 1
  %216 = icmp eq i64 %215, 6
  br i1 %216, label %217, label %193, !llvm.loop !37

217:                                              ; preds = %236, %214
  %.lcssa7 = phi i64 [ %.lcssa7, %236 ], [ %194, %214 ]
  %218 = phi i64 [ %237, %236 ], [ 0, %214 ]
  %219 = mul nuw nsw i64 %218, 6
  br label %220

220:                                              ; preds = %233, %217
  %221 = phi i64 [ 0, %217 ], [ %234, %233 ]
  %222 = load ptr, ptr @stderr, align 8, !tbaa !7
  %223 = getelementptr inbounds [6 x i32], ptr %6, i64 %218, i64 %221
  %224 = load i32, ptr %223, align 4, !tbaa !11
  %225 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %222, ptr noundef nonnull @.str.3, i32 noundef %224) #12
  %226 = add nuw nsw i64 %221, %219
  %227 = trunc i64 %226 to i32
  %228 = urem i32 %227, 20
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %230, label %233

230:                                              ; preds = %220
  %231 = load ptr, ptr @stderr, align 8, !tbaa !7
  %232 = tail call i32 @fputc(i32 10, ptr %231)
  br label %233

233:                                              ; preds = %230, %220
  %234 = add nuw nsw i64 %221, 1
  %235 = icmp eq i64 %234, 6
  br i1 %235, label %236, label %220, !llvm.loop !38

236:                                              ; preds = %233
  %237 = add nuw nsw i64 %218, 1
  %238 = icmp eq i64 %237, 6
  br i1 %238, label %239, label %217, !llvm.loop !39

239:                                              ; preds = %236
  %240 = load ptr, ptr @stderr, align 8, !tbaa !7
  %241 = tail call i32 @fputc(i32 10, ptr %240)
  tail call void @free(ptr noundef %3) #8
  tail call void @free(ptr noundef %4) #8
  tail call void @free(ptr noundef %5) #8
  tail call void @free(ptr noundef nonnull %6) #8
  tail call void @free(ptr noundef %7) #8
  tail call void @free(ptr noundef %8) #8
  br label %242

242:                                              ; preds = %239, %206
  %243 = phi i32 [ 0, %239 ], [ 1, %206 ]
  ret i32 %243
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #5

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #6

attributes #0 = { nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
attributes #4 = { noreturn nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { nounwind optsize }
attributes #9 = { cold }
attributes #10 = { noreturn nounwind optsize }
attributes #11 = { optsize }
attributes #12 = { cold optsize }

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
!12 = !{!"int", !9, i64 0}
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
!34 = distinct !{!34, !14}
!35 = distinct !{!35, !14}
!36 = distinct !{!36, !14}
!37 = distinct !{!37, !14}
!38 = distinct !{!38, !14}
!39 = distinct !{!39, !14}
