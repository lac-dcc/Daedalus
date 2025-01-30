; ModuleID = '/src/llvm-test-suite/build/SingleSource/Benchmarks/Polybench/linear-algebra/kernels/cholesky/cholesky.e.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [51 x i8] c"[PolyBench] posix_memalign: cannot allocate memory\00", align 1
@.str.2 = private unnamed_addr constant [76 x i8] c"A[%d][%d] = %lf and B[%d][%d] = %lf differ more than FP_ABSTOLERANCE = %lf\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define internal ptr @polybench_alloc_data(i64 noundef %0, i32 noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = sext i32 %1 to i64
  %5 = mul i64 %4, %0
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #9
  store ptr null, ptr %3, align 8, !tbaa !7
  %6 = call i32 @posix_memalign(ptr noundef nonnull %3, i64 noundef 32, i64 noundef %5) #10
  %7 = load ptr, ptr %3, align 8, !tbaa !7
  %8 = icmp eq ptr %7, null
  %9 = icmp ne i32 %6, 0
  %10 = select i1 %8, i1 true, i1 %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load ptr, ptr @stderr, align 8, !tbaa !7
  %13 = call i64 @fwrite(ptr nonnull @.str.1, i64 50, i64 1, ptr %12) #11
  call void @exit(i32 noundef 1) #12
  unreachable

14:                                               ; preds = %2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #9
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
  %3 = tail call ptr @polybench_alloc_data(i64 noundef 1048576, i32 noundef 8) #13
  %4 = tail call ptr @polybench_alloc_data(i64 noundef 1024, i32 noundef 8) #13
  %5 = tail call ptr @polybench_alloc_data(i64 noundef 1048576, i32 noundef 8) #13
  br label %6

6:                                                ; preds = %21, %2
  %7 = phi i64 [ 0, %2 ], [ %22, %21 ]
  %8 = trunc i64 %7 to i32
  %9 = add i32 %8, 1024
  %10 = sitofp i32 %9 to double
  %11 = getelementptr inbounds double, ptr %4, i64 %7
  store double %10, ptr %11, align 8, !tbaa !11
  br label %12

12:                                               ; preds = %12, %6
  %13 = phi i64 [ 0, %6 ], [ %19, %12 ]
  %14 = trunc i64 %13 to i32
  %15 = add i32 %14, 1024
  %16 = sitofp i32 %15 to double
  %17 = getelementptr inbounds [1024 x double], ptr %3, i64 %7, i64 %13
  store double %16, ptr %17, align 8, !tbaa !11
  %18 = getelementptr inbounds [1024 x double], ptr %5, i64 %7, i64 %13
  store double %16, ptr %18, align 8, !tbaa !11
  %19 = add nuw nsw i64 %13, 1
  %20 = icmp eq i64 %19, 1024
  br i1 %20, label %21, label %12, !llvm.loop !13

21:                                               ; preds = %12
  %22 = add nuw nsw i64 %7, 1
  %23 = icmp eq i64 %22, 1024
  br i1 %23, label %27, label %6, !llvm.loop !15

24:                                               ; preds = %65, %43
  %25 = add nuw nsw i64 %29, 1
  %26 = icmp eq i64 %48, 1024
  br i1 %26, label %75, label %27, !llvm.loop !16

27:                                               ; preds = %24, %21
  %28 = phi i64 [ %48, %24 ], [ 0, %21 ]
  %29 = phi i64 [ %25, %24 ], [ 1, %21 ]
  %30 = getelementptr inbounds [1024 x double], ptr %3, i64 %28, i64 %28
  %31 = load double, ptr %30, align 8, !tbaa !11
  %32 = fmul double %31, 1.024000e+03
  %33 = icmp eq i64 %28, 0
  br i1 %33, label %43, label %34

34:                                               ; preds = %34, %27
  %35 = phi i64 [ %41, %34 ], [ 0, %27 ]
  %36 = phi double [ %40, %34 ], [ %32, %27 ]
  %37 = getelementptr inbounds [1024 x double], ptr %3, i64 %28, i64 %35
  %38 = load double, ptr %37, align 8, !tbaa !11
  %39 = fneg double %38
  %40 = tail call double @llvm.fmuladd.f64(double %39, double %38, double %36)
  %41 = add nuw nsw i64 %35, 1
  %42 = icmp eq i64 %41, %28
  br i1 %42, label %43, label %34, !llvm.loop !17

43:                                               ; preds = %34, %27
  %44 = phi double [ %32, %27 ], [ %40, %34 ]
  %45 = tail call double @sqrt(double noundef %44) #10
  %46 = fdiv double 1.000000e+00, %45
  %47 = getelementptr inbounds double, ptr %4, i64 %28
  store double %46, ptr %47, align 8, !tbaa !11
  %48 = add nuw nsw i64 %28, 1
  %49 = icmp ult i64 %28, 1023
  br i1 %49, label %50, label %24

50:                                               ; preds = %65, %43
  %51 = phi i64 [ %70, %65 ], [ %29, %43 ]
  %52 = getelementptr inbounds [1024 x double], ptr %3, i64 %28, i64 %51
  %53 = load double, ptr %52, align 8, !tbaa !11
  br i1 %33, label %65, label %54

54:                                               ; preds = %54, %50
  %55 = phi i64 [ %63, %54 ], [ 0, %50 ]
  %56 = phi double [ %62, %54 ], [ %53, %50 ]
  %57 = getelementptr inbounds [1024 x double], ptr %3, i64 %51, i64 %55
  %58 = load double, ptr %57, align 8, !tbaa !11
  %59 = getelementptr inbounds [1024 x double], ptr %3, i64 %28, i64 %55
  %60 = load double, ptr %59, align 8, !tbaa !11
  %61 = fneg double %58
  %62 = tail call double @llvm.fmuladd.f64(double %61, double %60, double %56)
  %63 = add nuw nsw i64 %55, 1
  %64 = icmp eq i64 %63, %28
  br i1 %64, label %65, label %54, !llvm.loop !18

65:                                               ; preds = %54, %50
  %66 = phi double [ %53, %50 ], [ %62, %54 ]
  %67 = load double, ptr %47, align 8, !tbaa !11
  %68 = fmul double %66, %67
  %69 = getelementptr inbounds [1024 x double], ptr %3, i64 %51, i64 %28
  store double %68, ptr %69, align 8, !tbaa !11
  %70 = add nuw nsw i64 %51, 1
  %71 = icmp eq i64 %70, 1024
  br i1 %71, label %24, label %50, !llvm.loop !19

72:                                               ; preds = %113, %91
  %73 = add nuw nsw i64 %77, 1
  %74 = icmp eq i64 %96, 1024
  br i1 %74, label %120, label %75, !llvm.loop !20

75:                                               ; preds = %72, %24
  %76 = phi i64 [ %96, %72 ], [ 0, %24 ]
  %77 = phi i64 [ %73, %72 ], [ 1, %24 ]
  %78 = getelementptr inbounds [1024 x double], ptr %5, i64 %76, i64 %76
  %79 = load double, ptr %78, align 8, !tbaa !11
  %80 = fmul double %79, 1.024000e+03
  %81 = icmp eq i64 %76, 0
  br i1 %81, label %91, label %82

82:                                               ; preds = %82, %75
  %83 = phi i64 [ %89, %82 ], [ 0, %75 ]
  %84 = phi double [ %88, %82 ], [ %80, %75 ]
  %85 = getelementptr inbounds [1024 x double], ptr %5, i64 %76, i64 %83
  %86 = load double, ptr %85, align 8, !tbaa !11
  %87 = fmul double %86, %86
  %88 = fsub double %84, %87
  %89 = add nuw nsw i64 %83, 1
  %90 = icmp eq i64 %89, %76
  br i1 %90, label %91, label %82, !llvm.loop !21

91:                                               ; preds = %82, %75
  %92 = phi double [ %80, %75 ], [ %88, %82 ]
  %93 = tail call double @sqrt(double noundef %92) #10
  %94 = fdiv double 1.000000e+00, %93
  %95 = getelementptr inbounds double, ptr %4, i64 %76
  store double %94, ptr %95, align 8, !tbaa !11
  %96 = add nuw nsw i64 %76, 1
  %97 = icmp ult i64 %76, 1023
  br i1 %97, label %98, label %72

98:                                               ; preds = %113, %91
  %99 = phi i64 [ %118, %113 ], [ %77, %91 ]
  %100 = getelementptr inbounds [1024 x double], ptr %5, i64 %76, i64 %99
  %101 = load double, ptr %100, align 8, !tbaa !11
  br i1 %81, label %113, label %102

102:                                              ; preds = %102, %98
  %103 = phi i64 [ %111, %102 ], [ 0, %98 ]
  %104 = phi double [ %110, %102 ], [ %101, %98 ]
  %105 = getelementptr inbounds [1024 x double], ptr %5, i64 %99, i64 %103
  %106 = load double, ptr %105, align 8, !tbaa !11
  %107 = getelementptr inbounds [1024 x double], ptr %5, i64 %76, i64 %103
  %108 = load double, ptr %107, align 8, !tbaa !11
  %109 = fmul double %106, %108
  %110 = fsub double %104, %109
  %111 = add nuw nsw i64 %103, 1
  %112 = icmp eq i64 %111, %76
  br i1 %112, label %113, label %102, !llvm.loop !22

113:                                              ; preds = %102, %98
  %114 = phi double [ %101, %98 ], [ %110, %102 ]
  %115 = load double, ptr %95, align 8, !tbaa !11
  %116 = fmul double %114, %115
  %117 = getelementptr inbounds [1024 x double], ptr %5, i64 %99, i64 %76
  store double %116, ptr %117, align 8, !tbaa !11
  %118 = add nuw nsw i64 %99, 1
  %119 = icmp eq i64 %118, 1024
  br i1 %119, label %72, label %98, !llvm.loop !23

120:                                              ; preds = %139, %72
  %121 = phi i64 [ %140, %139 ], [ 0, %72 ]
  br label %122

122:                                              ; preds = %136, %120
  %123 = phi i64 [ 0, %120 ], [ %137, %136 ]
  %124 = getelementptr inbounds [1024 x double], ptr %3, i64 %121, i64 %123
  %125 = load double, ptr %124, align 8, !tbaa !11
  %126 = getelementptr inbounds [1024 x double], ptr %5, i64 %121, i64 %123
  %127 = load double, ptr %126, align 8, !tbaa !11
  %128 = fsub double %125, %127
  %129 = tail call double @llvm.fabs.f64(double %128)
  %130 = fcmp ule double %129, 1.000000e-05
  br i1 %130, label %136, label %131

131:                                              ; preds = %122
  %.lcssa6 = phi i64 [ %121, %122 ]
  %.lcssa4 = phi i64 [ %123, %122 ]
  %.lcssa2 = phi double [ %125, %122 ]
  %.lcssa = phi double [ %127, %122 ]
  %132 = trunc i64 %.lcssa6 to i32
  %133 = trunc i64 %.lcssa4 to i32
  %134 = load ptr, ptr @stderr, align 8, !tbaa !7
  %135 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %134, ptr noundef nonnull @.str.2, i32 noundef %132, i32 noundef %133, double noundef %.lcssa2, i32 noundef %132, i32 noundef %133, double noundef %.lcssa, double noundef 1.000000e-05) #14
  br label %207

136:                                              ; preds = %122
  %137 = add nuw nsw i64 %123, 1
  %138 = icmp eq i64 %137, 1024
  br i1 %138, label %139, label %122, !llvm.loop !24

139:                                              ; preds = %136
  %140 = add nuw nsw i64 %121, 1
  %141 = icmp eq i64 %140, 1024
  br i1 %141, label %142, label %120, !llvm.loop !25

142:                                              ; preds = %139
  %143 = tail call noalias dereferenceable_or_null(16385) ptr @malloc(i64 noundef 16385) #15
  %144 = getelementptr inbounds i8, ptr %143, i64 16384
  store i8 0, ptr %144, align 1, !tbaa !26
  br label %145

145:                                              ; preds = %201, %142
  %146 = phi i64 [ 0, %142 ], [ %204, %201 ]
  br label %147

147:                                              ; preds = %147, %145
  %148 = phi i64 [ 0, %145 ], [ %199, %147 ]
  %149 = getelementptr inbounds [1024 x double], ptr %5, i64 %146, i64 %148
  %150 = load i64, ptr %149, align 8, !tbaa !11
  %151 = shl nuw nsw i64 %148, 4
  %152 = trunc i64 %150 to i8
  %153 = and i8 %152, 15
  %154 = or i8 %153, 48
  %155 = getelementptr inbounds i8, ptr %143, i64 %151
  store i8 %154, ptr %155, align 1, !tbaa !26
  %156 = getelementptr inbounds i8, ptr %155, i64 1
  store i8 %154, ptr %156, align 1, !tbaa !26
  %157 = lshr i64 %150, 8
  %158 = trunc i64 %157 to i8
  %159 = and i8 %158, 15
  %160 = or i8 %159, 48
  %161 = getelementptr inbounds i8, ptr %155, i64 2
  store i8 %160, ptr %161, align 1, !tbaa !26
  %162 = getelementptr inbounds i8, ptr %155, i64 3
  store i8 %160, ptr %162, align 1, !tbaa !26
  %163 = lshr i64 %150, 16
  %164 = trunc i64 %163 to i8
  %165 = and i8 %164, 15
  %166 = or i8 %165, 48
  %167 = getelementptr inbounds i8, ptr %155, i64 4
  store i8 %166, ptr %167, align 1, !tbaa !26
  %168 = getelementptr inbounds i8, ptr %155, i64 5
  store i8 %166, ptr %168, align 1, !tbaa !26
  %169 = lshr i64 %150, 24
  %170 = trunc i64 %169 to i8
  %171 = and i8 %170, 15
  %172 = or i8 %171, 48
  %173 = getelementptr inbounds i8, ptr %155, i64 6
  store i8 %172, ptr %173, align 1, !tbaa !26
  %174 = getelementptr inbounds i8, ptr %155, i64 7
  store i8 %172, ptr %174, align 1, !tbaa !26
  %175 = lshr i64 %150, 32
  %176 = trunc i64 %175 to i8
  %177 = and i8 %176, 15
  %178 = or i8 %177, 48
  %179 = getelementptr inbounds i8, ptr %155, i64 8
  store i8 %178, ptr %179, align 1, !tbaa !26
  %180 = getelementptr inbounds i8, ptr %155, i64 9
  store i8 %178, ptr %180, align 1, !tbaa !26
  %181 = lshr i64 %150, 40
  %182 = trunc i64 %181 to i8
  %183 = and i8 %182, 15
  %184 = or i8 %183, 48
  %185 = getelementptr inbounds i8, ptr %155, i64 10
  store i8 %184, ptr %185, align 1, !tbaa !26
  %186 = getelementptr inbounds i8, ptr %155, i64 11
  store i8 %184, ptr %186, align 1, !tbaa !26
  %187 = lshr i64 %150, 48
  %188 = trunc i64 %187 to i8
  %189 = and i8 %188, 15
  %190 = or i8 %189, 48
  %191 = getelementptr inbounds i8, ptr %155, i64 12
  store i8 %190, ptr %191, align 1, !tbaa !26
  %192 = getelementptr inbounds i8, ptr %155, i64 13
  store i8 %190, ptr %192, align 1, !tbaa !26
  %193 = lshr i64 %150, 56
  %194 = trunc i64 %193 to i8
  %195 = and i8 %194, 15
  %196 = or i8 %195, 48
  %197 = getelementptr inbounds i8, ptr %155, i64 14
  store i8 %196, ptr %197, align 1, !tbaa !26
  %198 = getelementptr inbounds i8, ptr %155, i64 15
  store i8 %196, ptr %198, align 1, !tbaa !26
  %199 = add nuw nsw i64 %148, 1
  %200 = icmp eq i64 %199, 1024
  br i1 %200, label %201, label %147, !llvm.loop !27

201:                                              ; preds = %147
  %202 = load ptr, ptr @stderr, align 8, !tbaa !7
  %203 = tail call i32 @fputs(ptr noundef nonnull %143, ptr noundef %202) #14
  %204 = add nuw nsw i64 %146, 1
  %205 = icmp eq i64 %204, 1024
  br i1 %205, label %206, label %145, !llvm.loop !28

206:                                              ; preds = %201
  tail call void @free(ptr noundef nonnull %143) #10
  tail call void @free(ptr noundef %3) #10
  tail call void @free(ptr noundef nonnull %5) #10
  tail call void @free(ptr noundef %4) #10
  br label %207

207:                                              ; preds = %206, %131
  %208 = phi i32 [ 0, %206 ], [ 1, %131 ]
  ret i32 %208
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #5

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @sqrt(double noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #5

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fputs(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #8

attributes #0 = { nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
attributes #4 = { noreturn nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind }
attributes #10 = { nounwind optsize }
attributes #11 = { cold }
attributes #12 = { noreturn nounwind optsize }
attributes #13 = { optsize }
attributes #14 = { cold optsize }
attributes #15 = { nounwind optsize allocsize(0) }

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
!26 = !{!9, !9, i64 0}
!27 = distinct !{!27, !14}
!28 = distinct !{!28, !14}
