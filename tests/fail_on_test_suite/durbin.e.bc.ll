; ModuleID = '/src/llvm-test-suite/build/SingleSource/Benchmarks/Polybench/linear-algebra/solvers/durbin/durbin.e.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [51 x i8] c"[PolyBench] posix_memalign: cannot allocate memory\00", align 1
@.str.2 = private unnamed_addr constant [68 x i8] c"A[%d] = %lf and B[%d] = %lf differ more than FP_ABSTOLERANCE = %lf\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"%0.2lf \00", align 1

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
  %3 = tail call ptr @polybench_alloc_data(i64 noundef 16000000, i32 noundef 8) #11
  %4 = tail call ptr @polybench_alloc_data(i64 noundef 16000000, i32 noundef 8) #11
  %5 = tail call ptr @polybench_alloc_data(i64 noundef 4000, i32 noundef 8) #11
  %6 = tail call ptr @polybench_alloc_data(i64 noundef 4000, i32 noundef 8) #11
  %7 = tail call ptr @polybench_alloc_data(i64 noundef 4000, i32 noundef 8) #11
  %8 = tail call ptr @polybench_alloc_data(i64 noundef 4000, i32 noundef 8) #11
  %9 = tail call ptr @polybench_alloc_data(i64 noundef 4000, i32 noundef 8) #11
  br label %13

10:                                               ; preds = %24
  %11 = add nuw nsw i64 %14, 1
  %12 = icmp eq i64 %11, 4000
  br i1 %12, label %34, label %13, !llvm.loop !11

13:                                               ; preds = %10, %2
  %14 = phi i64 [ 0, %2 ], [ %11, %10 ]
  %15 = trunc i64 %14 to i32
  %16 = sitofp i32 %15 to double
  %17 = getelementptr inbounds double, ptr %5, i64 %14
  store double %16, ptr %17, align 8, !tbaa !13
  %18 = icmp eq i64 %14, 3999
  %19 = uitofp i1 %18 to double
  %20 = fmul double %19, 5.000000e-01
  %21 = getelementptr inbounds double, ptr %6, i64 %14
  store double %20, ptr %21, align 8, !tbaa !13
  %22 = fmul double %19, 2.500000e-01
  %23 = getelementptr inbounds double, ptr %7, i64 %14
  store double %22, ptr %23, align 8, !tbaa !13
  br label %24

24:                                               ; preds = %24, %13
  %25 = phi i64 [ 0, %13 ], [ %32, %24 ]
  %26 = trunc i64 %25 to i32
  %27 = sitofp i32 %26 to double
  %28 = fmul double %16, %27
  %29 = fdiv double %28, 4.000000e+03
  %30 = getelementptr inbounds [4000 x double], ptr %3, i64 %14, i64 %25
  store double %29, ptr %30, align 8, !tbaa !13
  %31 = getelementptr inbounds [4000 x double], ptr %4, i64 %14, i64 %25
  store double %29, ptr %31, align 8, !tbaa !13
  %32 = add nuw nsw i64 %25, 1
  %33 = icmp eq i64 %32, 4000
  br i1 %33, label %10, label %24, !llvm.loop !15

34:                                               ; preds = %10
  %35 = load double, ptr %7, align 8, !tbaa !13
  store double %35, ptr %3, align 8, !tbaa !13
  store double 1.000000e+00, ptr %6, align 8, !tbaa !13
  %36 = load double, ptr %7, align 8, !tbaa !13
  store double %36, ptr %5, align 8, !tbaa !13
  br label %37

37:                                               ; preds = %84, %34
  %38 = phi i64 [ 1, %34 ], [ %87, %84 ]
  %39 = add nsw i64 %38, -1
  %40 = getelementptr inbounds double, ptr %6, i64 %39
  %41 = load double, ptr %40, align 8, !tbaa !13
  %42 = getelementptr inbounds double, ptr %5, i64 %39
  %43 = load double, ptr %42, align 8, !tbaa !13
  %44 = fneg double %43
  %45 = fmul double %43, %44
  %46 = tail call double @llvm.fmuladd.f64(double %45, double %41, double %41)
  %47 = getelementptr inbounds double, ptr %6, i64 %38
  store double %46, ptr %47, align 8, !tbaa !13
  %48 = getelementptr inbounds double, ptr %7, i64 %38
  %49 = load double, ptr %48, align 8, !tbaa !13
  %50 = getelementptr inbounds [4000 x double], ptr %4, i64 0, i64 %38
  store double %49, ptr %50, align 8, !tbaa !13
  br label %51

51:                                               ; preds = %51, %37
  %52 = phi double [ %49, %37 ], [ %60, %51 ]
  %53 = phi i64 [ 0, %37 ], [ %61, %51 ]
  %54 = xor i64 %53, -1
  %55 = add nsw i64 %38, %54
  %56 = getelementptr inbounds double, ptr %7, i64 %55
  %57 = load double, ptr %56, align 8, !tbaa !13
  %58 = getelementptr inbounds [4000 x double], ptr %3, i64 %53, i64 %39
  %59 = load double, ptr %58, align 8, !tbaa !13
  %60 = tail call double @llvm.fmuladd.f64(double %57, double %59, double %52)
  %61 = add nuw nsw i64 %53, 1
  %62 = getelementptr inbounds [4000 x double], ptr %4, i64 %61, i64 %38
  store double %60, ptr %62, align 8, !tbaa !13
  %63 = icmp eq i64 %61, %38
  br i1 %63, label %64, label %51, !llvm.loop !16

64:                                               ; preds = %51
  %65 = getelementptr inbounds [4000 x double], ptr %4, i64 %38, i64 %38
  %66 = load double, ptr %65, align 8, !tbaa !13
  %67 = fneg double %66
  %68 = load double, ptr %47, align 8, !tbaa !13
  %69 = fmul double %68, %67
  %70 = getelementptr inbounds double, ptr %5, i64 %38
  store double %69, ptr %70, align 8, !tbaa !13
  br label %71

71:                                               ; preds = %71, %64
  %72 = phi i64 [ 0, %64 ], [ %82, %71 ]
  %73 = getelementptr inbounds [4000 x double], ptr %3, i64 %72, i64 %39
  %74 = load double, ptr %73, align 8, !tbaa !13
  %75 = load double, ptr %70, align 8, !tbaa !13
  %76 = xor i64 %72, -1
  %77 = add nsw i64 %38, %76
  %78 = getelementptr inbounds [4000 x double], ptr %3, i64 %77, i64 %39
  %79 = load double, ptr %78, align 8, !tbaa !13
  %80 = tail call double @llvm.fmuladd.f64(double %75, double %79, double %74)
  %81 = getelementptr inbounds [4000 x double], ptr %3, i64 %72, i64 %38
  store double %80, ptr %81, align 8, !tbaa !13
  %82 = add nuw nsw i64 %72, 1
  %83 = icmp eq i64 %82, %38
  br i1 %83, label %84, label %71, !llvm.loop !17

84:                                               ; preds = %71
  %85 = load double, ptr %70, align 8, !tbaa !13
  %86 = getelementptr inbounds [4000 x double], ptr %3, i64 %38, i64 %38
  store double %85, ptr %86, align 8, !tbaa !13
  %87 = add nuw nsw i64 %38, 1
  %88 = icmp eq i64 %87, 4000
  br i1 %88, label %89, label %37, !llvm.loop !18

89:                                               ; preds = %89, %84
  %90 = phi i64 [ %94, %89 ], [ 0, %84 ]
  %91 = getelementptr inbounds [4000 x double], ptr %3, i64 %90, i64 3999
  %92 = load double, ptr %91, align 8, !tbaa !13
  %93 = getelementptr inbounds double, ptr %8, i64 %90
  store double %92, ptr %93, align 8, !tbaa !13
  %94 = add nuw nsw i64 %90, 1
  %95 = icmp eq i64 %94, 4000
  br i1 %95, label %99, label %89, !llvm.loop !19

96:                                               ; preds = %110
  %97 = add nuw nsw i64 %100, 1
  %98 = icmp eq i64 %97, 4000
  br i1 %98, label %120, label %99, !llvm.loop !11

99:                                               ; preds = %96, %89
  %100 = phi i64 [ %97, %96 ], [ 0, %89 ]
  %101 = trunc i64 %100 to i32
  %102 = sitofp i32 %101 to double
  %103 = getelementptr inbounds double, ptr %5, i64 %100
  store double %102, ptr %103, align 8, !tbaa !13
  %104 = icmp eq i64 %100, 3999
  %105 = uitofp i1 %104 to double
  %106 = fmul double %105, 5.000000e-01
  %107 = getelementptr inbounds double, ptr %6, i64 %100
  store double %106, ptr %107, align 8, !tbaa !13
  %108 = fmul double %105, 2.500000e-01
  %109 = getelementptr inbounds double, ptr %7, i64 %100
  store double %108, ptr %109, align 8, !tbaa !13
  br label %110

110:                                              ; preds = %110, %99
  %111 = phi i64 [ 0, %99 ], [ %118, %110 ]
  %112 = trunc i64 %111 to i32
  %113 = sitofp i32 %112 to double
  %114 = fmul double %102, %113
  %115 = fdiv double %114, 4.000000e+03
  %116 = getelementptr inbounds [4000 x double], ptr %3, i64 %100, i64 %111
  store double %115, ptr %116, align 8, !tbaa !13
  %117 = getelementptr inbounds [4000 x double], ptr %4, i64 %100, i64 %111
  store double %115, ptr %117, align 8, !tbaa !13
  %118 = add nuw nsw i64 %111, 1
  %119 = icmp eq i64 %118, 4000
  br i1 %119, label %96, label %110, !llvm.loop !15

120:                                              ; preds = %96
  %121 = load double, ptr %7, align 8, !tbaa !13
  store double %121, ptr %3, align 8, !tbaa !13
  store double 1.000000e+00, ptr %6, align 8, !tbaa !13
  %122 = load double, ptr %7, align 8, !tbaa !13
  store double %122, ptr %5, align 8, !tbaa !13
  br label %123

123:                                              ; preds = %172, %120
  %124 = phi i64 [ 1, %120 ], [ %175, %172 ]
  %125 = add nsw i64 %124, -1
  %126 = getelementptr inbounds double, ptr %6, i64 %125
  %127 = load double, ptr %126, align 8, !tbaa !13
  %128 = getelementptr inbounds double, ptr %5, i64 %125
  %129 = load double, ptr %128, align 8, !tbaa !13
  %130 = fmul double %129, %129
  %131 = fmul double %127, %130
  %132 = fsub double %127, %131
  %133 = getelementptr inbounds double, ptr %6, i64 %124
  store double %132, ptr %133, align 8, !tbaa !13
  %134 = getelementptr inbounds double, ptr %7, i64 %124
  %135 = load double, ptr %134, align 8, !tbaa !13
  %136 = getelementptr inbounds [4000 x double], ptr %4, i64 0, i64 %124
  store double %135, ptr %136, align 8, !tbaa !13
  br label %137

137:                                              ; preds = %137, %123
  %138 = phi double [ %135, %123 ], [ %147, %137 ]
  %139 = phi i64 [ 0, %123 ], [ %148, %137 ]
  %140 = xor i64 %139, -1
  %141 = add nsw i64 %124, %140
  %142 = getelementptr inbounds double, ptr %7, i64 %141
  %143 = load double, ptr %142, align 8, !tbaa !13
  %144 = getelementptr inbounds [4000 x double], ptr %3, i64 %139, i64 %125
  %145 = load double, ptr %144, align 8, !tbaa !13
  %146 = fmul double %143, %145
  %147 = fadd double %138, %146
  %148 = add nuw nsw i64 %139, 1
  %149 = getelementptr inbounds [4000 x double], ptr %4, i64 %148, i64 %124
  store double %147, ptr %149, align 8, !tbaa !13
  %150 = icmp eq i64 %148, %124
  br i1 %150, label %151, label %137, !llvm.loop !20

151:                                              ; preds = %137
  %152 = getelementptr inbounds [4000 x double], ptr %4, i64 %124, i64 %124
  %153 = load double, ptr %152, align 8, !tbaa !13
  %154 = fneg double %153
  %155 = load double, ptr %133, align 8, !tbaa !13
  %156 = fmul double %155, %154
  %157 = getelementptr inbounds double, ptr %5, i64 %124
  store double %156, ptr %157, align 8, !tbaa !13
  br label %158

158:                                              ; preds = %158, %151
  %159 = phi i64 [ 0, %151 ], [ %170, %158 ]
  %160 = getelementptr inbounds [4000 x double], ptr %3, i64 %159, i64 %125
  %161 = load double, ptr %160, align 8, !tbaa !13
  %162 = load double, ptr %157, align 8, !tbaa !13
  %163 = xor i64 %159, -1
  %164 = add nsw i64 %124, %163
  %165 = getelementptr inbounds [4000 x double], ptr %3, i64 %164, i64 %125
  %166 = load double, ptr %165, align 8, !tbaa !13
  %167 = fmul double %162, %166
  %168 = fadd double %161, %167
  %169 = getelementptr inbounds [4000 x double], ptr %3, i64 %159, i64 %124
  store double %168, ptr %169, align 8, !tbaa !13
  %170 = add nuw nsw i64 %159, 1
  %171 = icmp eq i64 %170, %124
  br i1 %171, label %172, label %158, !llvm.loop !21

172:                                              ; preds = %158
  %173 = load double, ptr %157, align 8, !tbaa !13
  %174 = getelementptr inbounds [4000 x double], ptr %3, i64 %124, i64 %124
  store double %173, ptr %174, align 8, !tbaa !13
  %175 = add nuw nsw i64 %124, 1
  %176 = icmp eq i64 %175, 4000
  br i1 %176, label %177, label %123, !llvm.loop !22

177:                                              ; preds = %177, %172
  %178 = phi i64 [ %182, %177 ], [ 0, %172 ]
  %179 = getelementptr inbounds [4000 x double], ptr %3, i64 %178, i64 3999
  %180 = load double, ptr %179, align 8, !tbaa !13
  %181 = getelementptr inbounds double, ptr %9, i64 %178
  store double %180, ptr %181, align 8, !tbaa !13
  %182 = add nuw nsw i64 %178, 1
  %183 = icmp eq i64 %182, 4000
  br i1 %183, label %184, label %177, !llvm.loop !23

184:                                              ; preds = %197, %177
  %185 = phi i64 [ %198, %197 ], [ 0, %177 ]
  %186 = getelementptr inbounds double, ptr %8, i64 %185
  %187 = load double, ptr %186, align 8, !tbaa !13
  %188 = getelementptr inbounds double, ptr %9, i64 %185
  %189 = load double, ptr %188, align 8, !tbaa !13
  %190 = fsub double %187, %189
  %191 = tail call double @llvm.fabs.f64(double %190)
  %192 = fcmp ule double %191, 1.000000e-05
  br i1 %192, label %197, label %193

193:                                              ; preds = %184
  %.lcssa4 = phi i64 [ %185, %184 ]
  %.lcssa2 = phi double [ %187, %184 ]
  %.lcssa = phi double [ %189, %184 ]
  %194 = trunc i64 %.lcssa4 to i32
  %195 = load ptr, ptr @stderr, align 8, !tbaa !7
  %196 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %195, ptr noundef nonnull @.str.2, i32 noundef %194, double noundef %.lcssa2, i32 noundef %194, double noundef %.lcssa, double noundef 1.000000e-05) #12
  br label %216

197:                                              ; preds = %184
  %198 = add nuw nsw i64 %185, 1
  %199 = icmp eq i64 %198, 4000
  br i1 %199, label %200, label %184, !llvm.loop !24

200:                                              ; preds = %212, %197
  %.lcssa5 = phi i64 [ %.lcssa5, %212 ], [ %185, %197 ]
  %.lcssa3 = phi double [ %.lcssa3, %212 ], [ %187, %197 ]
  %.lcssa1 = phi double [ %.lcssa1, %212 ], [ %189, %197 ]
  %201 = phi i64 [ %213, %212 ], [ 0, %197 ]
  %202 = load ptr, ptr @stderr, align 8, !tbaa !7
  %203 = getelementptr inbounds double, ptr %9, i64 %201
  %204 = load double, ptr %203, align 8, !tbaa !13
  %205 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %202, ptr noundef nonnull @.str.3, double noundef %204) #12
  %206 = trunc i64 %201 to i16
  %207 = urem i16 %206, 20
  %208 = icmp eq i16 %207, 0
  br i1 %208, label %209, label %212

209:                                              ; preds = %200
  %210 = load ptr, ptr @stderr, align 8, !tbaa !7
  %211 = tail call i32 @fputc(i32 10, ptr %210)
  br label %212

212:                                              ; preds = %209, %200
  %213 = add nuw nsw i64 %201, 1
  %214 = icmp eq i64 %213, 4000
  br i1 %214, label %215, label %200, !llvm.loop !25

215:                                              ; preds = %212
  tail call void @free(ptr noundef %3) #8
  tail call void @free(ptr noundef %4) #8
  tail call void @free(ptr noundef %5) #8
  tail call void @free(ptr noundef %6) #8
  tail call void @free(ptr noundef %7) #8
  tail call void @free(ptr noundef %8) #8
  br label %216

216:                                              ; preds = %215, %193
  %217 = phi i32 [ 0, %215 ], [ 1, %193 ]
  ret i32 %217
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #5

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
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!14, !14, i64 0}
!14 = !{!"double", !9, i64 0}
!15 = distinct !{!15, !12}
!16 = distinct !{!16, !12}
!17 = distinct !{!17, !12}
!18 = distinct !{!18, !12}
!19 = distinct !{!19, !12}
!20 = distinct !{!20, !12}
!21 = distinct !{!21, !12}
!22 = distinct !{!22, !12}
!23 = distinct !{!23, !12}
!24 = distinct !{!24, !12}
!25 = distinct !{!25, !12}
