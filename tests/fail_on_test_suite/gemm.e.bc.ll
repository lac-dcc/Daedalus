; ModuleID = '/src/llvm-test-suite/build/SingleSource/Benchmarks/Polybench/linear-algebra/kernels/gemm/gemm.e.bc'
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
  %3 = tail call ptr @polybench_alloc_data(i64 noundef 1048576, i32 noundef 8) #12
  %4 = tail call ptr @polybench_alloc_data(i64 noundef 1048576, i32 noundef 8) #12
  %5 = tail call ptr @polybench_alloc_data(i64 noundef 1048576, i32 noundef 8) #12
  %6 = tail call ptr @polybench_alloc_data(i64 noundef 1048576, i32 noundef 8) #12
  br label %7

7:                                                ; preds = %21, %2
  %8 = phi i64 [ 0, %2 ], [ %22, %21 ]
  %9 = trunc i64 %8 to i32
  %10 = sitofp i32 %9 to double
  br label %11

11:                                               ; preds = %11, %7
  %12 = phi i64 [ 0, %7 ], [ %19, %11 ]
  %13 = trunc i64 %12 to i32
  %14 = sitofp i32 %13 to double
  %15 = fmul double %10, %14
  %16 = fmul double %15, 0x3F50000000000000
  %17 = getelementptr inbounds [1024 x double], ptr %3, i64 %8, i64 %12
  store double %16, ptr %17, align 8, !tbaa !11
  %18 = getelementptr inbounds [1024 x double], ptr %4, i64 %8, i64 %12
  store double %16, ptr %18, align 8, !tbaa !11
  %19 = add nuw nsw i64 %12, 1
  %20 = icmp eq i64 %19, 1024
  br i1 %20, label %21, label %11, !llvm.loop !13

21:                                               ; preds = %11
  %22 = add nuw nsw i64 %8, 1
  %23 = icmp eq i64 %22, 1024
  br i1 %23, label %24, label %7, !llvm.loop !15

24:                                               ; preds = %40, %21
  %25 = phi i64 [ %41, %40 ], [ 0, %21 ]
  %26 = trunc i64 %25 to i32
  %27 = sitofp i32 %26 to double
  %28 = insertelement <2 x double> poison, double %27, i64 0
  %29 = shufflevector <2 x double> %28, <2 x double> poison, <2 x i32> zeroinitializer
  br label %30

30:                                               ; preds = %30, %24
  %31 = phi i64 [ 0, %24 ], [ %37, %30 ]
  %32 = phi <2 x i32> [ <i32 0, i32 1>, %24 ], [ %38, %30 ]
  %33 = sitofp <2 x i32> %32 to <2 x double>
  %34 = fmul <2 x double> %29, %33
  %35 = fmul <2 x double> %34, <double 0x3F50000000000000, double 0x3F50000000000000>
  %36 = getelementptr inbounds [1024 x double], ptr %5, i64 %25, i64 %31
  store <2 x double> %35, ptr %36, align 8, !tbaa !11
  %37 = add nuw i64 %31, 2
  %38 = add <2 x i32> %32, <i32 2, i32 2>
  %39 = icmp eq i64 %37, 1024
  br i1 %39, label %40, label %30, !llvm.loop !16

40:                                               ; preds = %30
  %41 = add nuw nsw i64 %25, 1
  %42 = icmp eq i64 %41, 1024
  br i1 %42, label %43, label %24, !llvm.loop !19

43:                                               ; preds = %59, %40
  %44 = phi i64 [ %60, %59 ], [ 0, %40 ]
  %45 = trunc i64 %44 to i32
  %46 = sitofp i32 %45 to double
  %47 = insertelement <2 x double> poison, double %46, i64 0
  %48 = shufflevector <2 x double> %47, <2 x double> poison, <2 x i32> zeroinitializer
  br label %49

49:                                               ; preds = %49, %43
  %50 = phi i64 [ 0, %43 ], [ %56, %49 ]
  %51 = phi <2 x i32> [ <i32 0, i32 1>, %43 ], [ %57, %49 ]
  %52 = sitofp <2 x i32> %51 to <2 x double>
  %53 = fmul <2 x double> %48, %52
  %54 = fmul <2 x double> %53, <double 0x3F50000000000000, double 0x3F50000000000000>
  %55 = getelementptr inbounds [1024 x double], ptr %6, i64 %44, i64 %50
  store <2 x double> %54, ptr %55, align 8, !tbaa !11
  %56 = add nuw i64 %50, 2
  %57 = add <2 x i32> %51, <i32 2, i32 2>
  %58 = icmp eq i64 %56, 1024
  br i1 %58, label %59, label %49, !llvm.loop !20

59:                                               ; preds = %49
  %60 = add nuw nsw i64 %44, 1
  %61 = icmp eq i64 %60, 1024
  br i1 %61, label %62, label %43, !llvm.loop !21

62:                                               ; preds = %83, %59
  %63 = phi i64 [ %84, %83 ], [ 0, %59 ]
  br label %64

64:                                               ; preds = %80, %62
  %65 = phi i64 [ 0, %62 ], [ %81, %80 ]
  %66 = getelementptr inbounds [1024 x double], ptr %3, i64 %63, i64 %65
  %67 = load double, ptr %66, align 8, !tbaa !11
  %68 = fmul double %67, 2.123000e+03
  store double %68, ptr %66, align 8, !tbaa !11
  br label %69

69:                                               ; preds = %69, %64
  %70 = phi i64 [ 0, %64 ], [ %78, %69 ]
  %71 = phi double [ %68, %64 ], [ %77, %69 ]
  %72 = getelementptr inbounds [1024 x double], ptr %5, i64 %63, i64 %70
  %73 = load double, ptr %72, align 8, !tbaa !11
  %74 = fmul double %73, 3.241200e+04
  %75 = getelementptr inbounds [1024 x double], ptr %6, i64 %70, i64 %65
  %76 = load double, ptr %75, align 8, !tbaa !11
  %77 = tail call double @llvm.fmuladd.f64(double %74, double %76, double %71)
  store double %77, ptr %66, align 8, !tbaa !11
  %78 = add nuw nsw i64 %70, 1
  %79 = icmp eq i64 %78, 1024
  br i1 %79, label %80, label %69, !llvm.loop !22

80:                                               ; preds = %69
  %81 = add nuw nsw i64 %65, 1
  %82 = icmp eq i64 %81, 1024
  br i1 %82, label %83, label %64, !llvm.loop !23

83:                                               ; preds = %80
  %84 = add nuw nsw i64 %63, 1
  %85 = icmp eq i64 %84, 1024
  br i1 %85, label %86, label %62, !llvm.loop !24

86:                                               ; preds = %108, %83
  %87 = phi i64 [ %109, %108 ], [ 0, %83 ]
  br label %88

88:                                               ; preds = %105, %86
  %89 = phi i64 [ 0, %86 ], [ %106, %105 ]
  %90 = getelementptr inbounds [1024 x double], ptr %4, i64 %87, i64 %89
  %91 = load double, ptr %90, align 8, !tbaa !11
  %92 = fmul double %91, 2.123000e+03
  store double %92, ptr %90, align 8, !tbaa !11
  br label %93

93:                                               ; preds = %93, %88
  %94 = phi i64 [ 0, %88 ], [ %103, %93 ]
  %95 = phi double [ %92, %88 ], [ %102, %93 ]
  %96 = getelementptr inbounds [1024 x double], ptr %5, i64 %87, i64 %94
  %97 = load double, ptr %96, align 8, !tbaa !11
  %98 = fmul double %97, 3.241200e+04
  %99 = getelementptr inbounds [1024 x double], ptr %6, i64 %94, i64 %89
  %100 = load double, ptr %99, align 8, !tbaa !11
  %101 = fmul double %98, %100
  %102 = fadd double %95, %101
  store double %102, ptr %90, align 8, !tbaa !11
  %103 = add nuw nsw i64 %94, 1
  %104 = icmp eq i64 %103, 1024
  br i1 %104, label %105, label %93, !llvm.loop !25

105:                                              ; preds = %93
  %106 = add nuw nsw i64 %89, 1
  %107 = icmp eq i64 %106, 1024
  br i1 %107, label %108, label %88, !llvm.loop !26

108:                                              ; preds = %105
  %109 = add nuw nsw i64 %87, 1
  %110 = icmp eq i64 %109, 1024
  br i1 %110, label %111, label %86, !llvm.loop !27

111:                                              ; preds = %130, %108
  %112 = phi i64 [ %131, %130 ], [ 0, %108 ]
  br label %113

113:                                              ; preds = %127, %111
  %114 = phi i64 [ 0, %111 ], [ %128, %127 ]
  %115 = getelementptr inbounds [1024 x double], ptr %3, i64 %112, i64 %114
  %116 = load double, ptr %115, align 8, !tbaa !11
  %117 = getelementptr inbounds [1024 x double], ptr %4, i64 %112, i64 %114
  %118 = load double, ptr %117, align 8, !tbaa !11
  %119 = fsub double %116, %118
  %120 = tail call double @llvm.fabs.f64(double %119)
  %121 = fcmp ule double %120, 1.000000e-05
  br i1 %121, label %127, label %122

122:                                              ; preds = %113
  %.lcssa6 = phi i64 [ %112, %113 ]
  %.lcssa4 = phi i64 [ %114, %113 ]
  %.lcssa2 = phi double [ %116, %113 ]
  %.lcssa = phi double [ %118, %113 ]
  %123 = trunc i64 %.lcssa6 to i32
  %124 = trunc i64 %.lcssa4 to i32
  %125 = load ptr, ptr @stderr, align 8, !tbaa !7
  %126 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %125, ptr noundef nonnull @.str.2, i32 noundef %123, i32 noundef %124, double noundef %.lcssa2, i32 noundef %123, i32 noundef %124, double noundef %.lcssa, double noundef 1.000000e-05) #13
  br label %198

127:                                              ; preds = %113
  %128 = add nuw nsw i64 %114, 1
  %129 = icmp eq i64 %128, 1024
  br i1 %129, label %130, label %113, !llvm.loop !28

130:                                              ; preds = %127
  %131 = add nuw nsw i64 %112, 1
  %132 = icmp eq i64 %131, 1024
  br i1 %132, label %133, label %111, !llvm.loop !29

133:                                              ; preds = %130
  %134 = tail call noalias dereferenceable_or_null(16385) ptr @malloc(i64 noundef 16385) #14
  %135 = getelementptr inbounds i8, ptr %134, i64 16384
  store i8 0, ptr %135, align 1, !tbaa !30
  br label %136

136:                                              ; preds = %192, %133
  %137 = phi i64 [ 0, %133 ], [ %195, %192 ]
  br label %138

138:                                              ; preds = %138, %136
  %139 = phi i64 [ 0, %136 ], [ %190, %138 ]
  %140 = getelementptr inbounds [1024 x double], ptr %4, i64 %137, i64 %139
  %141 = load i64, ptr %140, align 8, !tbaa !11
  %142 = shl nuw nsw i64 %139, 4
  %143 = trunc i64 %141 to i8
  %144 = and i8 %143, 15
  %145 = or i8 %144, 48
  %146 = getelementptr inbounds i8, ptr %134, i64 %142
  store i8 %145, ptr %146, align 1, !tbaa !30
  %147 = getelementptr inbounds i8, ptr %146, i64 1
  store i8 %145, ptr %147, align 1, !tbaa !30
  %148 = lshr i64 %141, 8
  %149 = trunc i64 %148 to i8
  %150 = and i8 %149, 15
  %151 = or i8 %150, 48
  %152 = getelementptr inbounds i8, ptr %146, i64 2
  store i8 %151, ptr %152, align 1, !tbaa !30
  %153 = getelementptr inbounds i8, ptr %146, i64 3
  store i8 %151, ptr %153, align 1, !tbaa !30
  %154 = lshr i64 %141, 16
  %155 = trunc i64 %154 to i8
  %156 = and i8 %155, 15
  %157 = or i8 %156, 48
  %158 = getelementptr inbounds i8, ptr %146, i64 4
  store i8 %157, ptr %158, align 1, !tbaa !30
  %159 = getelementptr inbounds i8, ptr %146, i64 5
  store i8 %157, ptr %159, align 1, !tbaa !30
  %160 = lshr i64 %141, 24
  %161 = trunc i64 %160 to i8
  %162 = and i8 %161, 15
  %163 = or i8 %162, 48
  %164 = getelementptr inbounds i8, ptr %146, i64 6
  store i8 %163, ptr %164, align 1, !tbaa !30
  %165 = getelementptr inbounds i8, ptr %146, i64 7
  store i8 %163, ptr %165, align 1, !tbaa !30
  %166 = lshr i64 %141, 32
  %167 = trunc i64 %166 to i8
  %168 = and i8 %167, 15
  %169 = or i8 %168, 48
  %170 = getelementptr inbounds i8, ptr %146, i64 8
  store i8 %169, ptr %170, align 1, !tbaa !30
  %171 = getelementptr inbounds i8, ptr %146, i64 9
  store i8 %169, ptr %171, align 1, !tbaa !30
  %172 = lshr i64 %141, 40
  %173 = trunc i64 %172 to i8
  %174 = and i8 %173, 15
  %175 = or i8 %174, 48
  %176 = getelementptr inbounds i8, ptr %146, i64 10
  store i8 %175, ptr %176, align 1, !tbaa !30
  %177 = getelementptr inbounds i8, ptr %146, i64 11
  store i8 %175, ptr %177, align 1, !tbaa !30
  %178 = lshr i64 %141, 48
  %179 = trunc i64 %178 to i8
  %180 = and i8 %179, 15
  %181 = or i8 %180, 48
  %182 = getelementptr inbounds i8, ptr %146, i64 12
  store i8 %181, ptr %182, align 1, !tbaa !30
  %183 = getelementptr inbounds i8, ptr %146, i64 13
  store i8 %181, ptr %183, align 1, !tbaa !30
  %184 = lshr i64 %141, 56
  %185 = trunc i64 %184 to i8
  %186 = and i8 %185, 15
  %187 = or i8 %186, 48
  %188 = getelementptr inbounds i8, ptr %146, i64 14
  store i8 %187, ptr %188, align 1, !tbaa !30
  %189 = getelementptr inbounds i8, ptr %146, i64 15
  store i8 %187, ptr %189, align 1, !tbaa !30
  %190 = add nuw nsw i64 %139, 1
  %191 = icmp eq i64 %190, 1024
  br i1 %191, label %192, label %138, !llvm.loop !31

192:                                              ; preds = %138
  %193 = load ptr, ptr @stderr, align 8, !tbaa !7
  %194 = tail call i32 @fputs(ptr noundef nonnull %134, ptr noundef %193) #13
  %195 = add nuw nsw i64 %137, 1
  %196 = icmp eq i64 %195, 1024
  br i1 %196, label %197, label %136, !llvm.loop !32

197:                                              ; preds = %192
  tail call void @free(ptr noundef nonnull %134) #9
  tail call void @free(ptr noundef %3) #9
  tail call void @free(ptr noundef nonnull %4) #9
  tail call void @free(ptr noundef %5) #9
  tail call void @free(ptr noundef %6) #9
  br label %198

198:                                              ; preds = %197, %122
  %199 = phi i32 [ 0, %197 ], [ 1, %122 ]
  ret i32 %199
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #5

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fputs(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #7

attributes #0 = { nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
attributes #4 = { noreturn nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }
attributes #9 = { nounwind optsize }
attributes #10 = { cold }
attributes #11 = { noreturn nounwind optsize }
attributes #12 = { optsize }
attributes #13 = { cold optsize }
attributes #14 = { nounwind optsize allocsize(0) }

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
!16 = distinct !{!16, !14, !17, !18}
!17 = !{!"llvm.loop.isvectorized", i32 1}
!18 = !{!"llvm.loop.unroll.runtime.disable"}
!19 = distinct !{!19, !14}
!20 = distinct !{!20, !14, !17, !18}
!21 = distinct !{!21, !14}
!22 = distinct !{!22, !14}
!23 = distinct !{!23, !14}
!24 = distinct !{!24, !14}
!25 = distinct !{!25, !14}
!26 = distinct !{!26, !14}
!27 = distinct !{!27, !14}
!28 = distinct !{!28, !14}
!29 = distinct !{!29, !14}
!30 = !{!9, !9, i64 0}
!31 = distinct !{!31, !14}
!32 = distinct !{!32, !14}
