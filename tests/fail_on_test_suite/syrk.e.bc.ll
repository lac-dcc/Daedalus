; ModuleID = '/src/llvm-test-suite/build/SingleSource/Benchmarks/Polybench/linear-algebra/kernels/syrk/syrk.e.bc'
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
  br label %6

6:                                                ; preds = %22, %2
  %7 = phi i64 [ 0, %2 ], [ %23, %22 ]
  %8 = trunc i64 %7 to i32
  %9 = sitofp i32 %8 to double
  %10 = insertelement <2 x double> poison, double %9, i64 0
  %11 = shufflevector <2 x double> %10, <2 x double> poison, <2 x i32> zeroinitializer
  br label %12

12:                                               ; preds = %12, %6
  %13 = phi i64 [ 0, %6 ], [ %19, %12 ]
  %14 = phi <2 x i32> [ <i32 0, i32 1>, %6 ], [ %20, %12 ]
  %15 = sitofp <2 x i32> %14 to <2 x double>
  %16 = fmul <2 x double> %11, %15
  %17 = fmul <2 x double> %16, <double 0x3F50000000000000, double 0x3F50000000000000>
  %18 = getelementptr inbounds [1024 x double], ptr %5, i64 %7, i64 %13
  store <2 x double> %17, ptr %18, align 8, !tbaa !11
  %19 = add nuw i64 %13, 2
  %20 = add <2 x i32> %14, <i32 2, i32 2>
  %21 = icmp eq i64 %19, 1024
  br i1 %21, label %22, label %12, !llvm.loop !13

22:                                               ; preds = %12
  %23 = add nuw nsw i64 %7, 1
  %24 = icmp eq i64 %23, 1024
  br i1 %24, label %25, label %6, !llvm.loop !17

25:                                               ; preds = %39, %22
  %26 = phi i64 [ %40, %39 ], [ 0, %22 ]
  %27 = trunc i64 %26 to i32
  %28 = sitofp i32 %27 to double
  br label %29

29:                                               ; preds = %29, %25
  %30 = phi i64 [ 0, %25 ], [ %37, %29 ]
  %31 = trunc i64 %30 to i32
  %32 = sitofp i32 %31 to double
  %33 = fmul double %28, %32
  %34 = fmul double %33, 0x3F50000000000000
  %35 = getelementptr inbounds [1024 x double], ptr %3, i64 %26, i64 %30
  store double %34, ptr %35, align 8, !tbaa !11
  %36 = getelementptr inbounds [1024 x double], ptr %4, i64 %26, i64 %30
  store double %34, ptr %36, align 8, !tbaa !11
  %37 = add nuw nsw i64 %30, 1
  %38 = icmp eq i64 %37, 1024
  br i1 %38, label %39, label %29, !llvm.loop !18

39:                                               ; preds = %29
  %40 = add nuw nsw i64 %26, 1
  %41 = icmp eq i64 %40, 1024
  br i1 %41, label %42, label %25, !llvm.loop !19

42:                                               ; preds = %51, %39
  %43 = phi i64 [ %52, %51 ], [ 0, %39 ]
  br label %44

44:                                               ; preds = %44, %42
  %45 = phi i64 [ 0, %42 ], [ %49, %44 ]
  %46 = getelementptr inbounds [1024 x double], ptr %3, i64 %43, i64 %45
  %47 = load <2 x double>, ptr %46, align 8, !tbaa !11
  %48 = fmul <2 x double> %47, <double 2.123000e+03, double 2.123000e+03>
  store <2 x double> %48, ptr %46, align 8, !tbaa !11
  %49 = add nuw i64 %45, 2
  %50 = icmp eq i64 %49, 1024
  br i1 %50, label %51, label %44, !llvm.loop !20

51:                                               ; preds = %44
  %52 = add nuw nsw i64 %43, 1
  %53 = icmp eq i64 %52, 1024
  br i1 %53, label %54, label %42, !llvm.loop !21

54:                                               ; preds = %74, %51
  %55 = phi i64 [ %75, %74 ], [ 0, %51 ]
  br label %56

56:                                               ; preds = %71, %54
  %57 = phi i64 [ 0, %54 ], [ %72, %71 ]
  %58 = getelementptr inbounds [1024 x double], ptr %3, i64 %55, i64 %57
  %59 = load double, ptr %58, align 8, !tbaa !11
  br label %60

60:                                               ; preds = %60, %56
  %61 = phi i64 [ 0, %56 ], [ %69, %60 ]
  %62 = phi double [ %59, %56 ], [ %68, %60 ]
  %63 = getelementptr inbounds [1024 x double], ptr %5, i64 %55, i64 %61
  %64 = load double, ptr %63, align 8, !tbaa !11
  %65 = fmul double %64, 3.241200e+04
  %66 = getelementptr inbounds [1024 x double], ptr %5, i64 %57, i64 %61
  %67 = load double, ptr %66, align 8, !tbaa !11
  %68 = tail call double @llvm.fmuladd.f64(double %65, double %67, double %62)
  store double %68, ptr %58, align 8, !tbaa !11
  %69 = add nuw nsw i64 %61, 1
  %70 = icmp eq i64 %69, 1024
  br i1 %70, label %71, label %60, !llvm.loop !22

71:                                               ; preds = %60
  %72 = add nuw nsw i64 %57, 1
  %73 = icmp eq i64 %72, 1024
  br i1 %73, label %74, label %56, !llvm.loop !23

74:                                               ; preds = %71
  %75 = add nuw nsw i64 %55, 1
  %76 = icmp eq i64 %75, 1024
  br i1 %76, label %77, label %54, !llvm.loop !24

77:                                               ; preds = %86, %74
  %78 = phi i64 [ %87, %86 ], [ 0, %74 ]
  br label %79

79:                                               ; preds = %79, %77
  %80 = phi i64 [ 0, %77 ], [ %84, %79 ]
  %81 = getelementptr inbounds [1024 x double], ptr %4, i64 %78, i64 %80
  %82 = load <2 x double>, ptr %81, align 8, !tbaa !11
  %83 = fmul <2 x double> %82, <double 2.123000e+03, double 2.123000e+03>
  store <2 x double> %83, ptr %81, align 8, !tbaa !11
  %84 = add nuw i64 %80, 2
  %85 = icmp eq i64 %84, 1024
  br i1 %85, label %86, label %79, !llvm.loop !25

86:                                               ; preds = %79
  %87 = add nuw nsw i64 %78, 1
  %88 = icmp eq i64 %87, 1024
  br i1 %88, label %89, label %77, !llvm.loop !26

89:                                               ; preds = %110, %86
  %90 = phi i64 [ %111, %110 ], [ 0, %86 ]
  br label %91

91:                                               ; preds = %107, %89
  %92 = phi i64 [ 0, %89 ], [ %108, %107 ]
  %93 = getelementptr inbounds [1024 x double], ptr %4, i64 %90, i64 %92
  %94 = load double, ptr %93, align 8, !tbaa !11
  br label %95

95:                                               ; preds = %95, %91
  %96 = phi i64 [ 0, %91 ], [ %105, %95 ]
  %97 = phi double [ %94, %91 ], [ %104, %95 ]
  %98 = getelementptr inbounds [1024 x double], ptr %5, i64 %90, i64 %96
  %99 = load double, ptr %98, align 8, !tbaa !11
  %100 = fmul double %99, 3.241200e+04
  %101 = getelementptr inbounds [1024 x double], ptr %5, i64 %92, i64 %96
  %102 = load double, ptr %101, align 8, !tbaa !11
  %103 = fmul double %100, %102
  %104 = fadd double %97, %103
  store double %104, ptr %93, align 8, !tbaa !11
  %105 = add nuw nsw i64 %96, 1
  %106 = icmp eq i64 %105, 1024
  br i1 %106, label %107, label %95, !llvm.loop !27

107:                                              ; preds = %95
  %108 = add nuw nsw i64 %92, 1
  %109 = icmp eq i64 %108, 1024
  br i1 %109, label %110, label %91, !llvm.loop !28

110:                                              ; preds = %107
  %111 = add nuw nsw i64 %90, 1
  %112 = icmp eq i64 %111, 1024
  br i1 %112, label %113, label %89, !llvm.loop !29

113:                                              ; preds = %132, %110
  %114 = phi i64 [ %133, %132 ], [ 0, %110 ]
  br label %115

115:                                              ; preds = %129, %113
  %116 = phi i64 [ 0, %113 ], [ %130, %129 ]
  %117 = getelementptr inbounds [1024 x double], ptr %3, i64 %114, i64 %116
  %118 = load double, ptr %117, align 8, !tbaa !11
  %119 = getelementptr inbounds [1024 x double], ptr %4, i64 %114, i64 %116
  %120 = load double, ptr %119, align 8, !tbaa !11
  %121 = fsub double %118, %120
  %122 = tail call double @llvm.fabs.f64(double %121)
  %123 = fcmp ule double %122, 1.000000e-05
  br i1 %123, label %129, label %124

124:                                              ; preds = %115
  %.lcssa6 = phi i64 [ %114, %115 ]
  %.lcssa4 = phi i64 [ %116, %115 ]
  %.lcssa2 = phi double [ %118, %115 ]
  %.lcssa = phi double [ %120, %115 ]
  %125 = trunc i64 %.lcssa6 to i32
  %126 = trunc i64 %.lcssa4 to i32
  %127 = load ptr, ptr @stderr, align 8, !tbaa !7
  %128 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %127, ptr noundef nonnull @.str.2, i32 noundef %125, i32 noundef %126, double noundef %.lcssa2, i32 noundef %125, i32 noundef %126, double noundef %.lcssa, double noundef 1.000000e-05) #13
  br label %200

129:                                              ; preds = %115
  %130 = add nuw nsw i64 %116, 1
  %131 = icmp eq i64 %130, 1024
  br i1 %131, label %132, label %115, !llvm.loop !30

132:                                              ; preds = %129
  %133 = add nuw nsw i64 %114, 1
  %134 = icmp eq i64 %133, 1024
  br i1 %134, label %135, label %113, !llvm.loop !31

135:                                              ; preds = %132
  %136 = tail call noalias dereferenceable_or_null(16385) ptr @malloc(i64 noundef 16385) #14
  %137 = getelementptr inbounds i8, ptr %136, i64 16384
  store i8 0, ptr %137, align 1, !tbaa !32
  br label %138

138:                                              ; preds = %194, %135
  %139 = phi i64 [ 0, %135 ], [ %197, %194 ]
  br label %140

140:                                              ; preds = %140, %138
  %141 = phi i64 [ 0, %138 ], [ %192, %140 ]
  %142 = getelementptr inbounds [1024 x double], ptr %4, i64 %139, i64 %141
  %143 = load i64, ptr %142, align 8, !tbaa !11
  %144 = shl nuw nsw i64 %141, 4
  %145 = trunc i64 %143 to i8
  %146 = and i8 %145, 15
  %147 = or i8 %146, 48
  %148 = getelementptr inbounds i8, ptr %136, i64 %144
  store i8 %147, ptr %148, align 1, !tbaa !32
  %149 = getelementptr inbounds i8, ptr %148, i64 1
  store i8 %147, ptr %149, align 1, !tbaa !32
  %150 = lshr i64 %143, 8
  %151 = trunc i64 %150 to i8
  %152 = and i8 %151, 15
  %153 = or i8 %152, 48
  %154 = getelementptr inbounds i8, ptr %148, i64 2
  store i8 %153, ptr %154, align 1, !tbaa !32
  %155 = getelementptr inbounds i8, ptr %148, i64 3
  store i8 %153, ptr %155, align 1, !tbaa !32
  %156 = lshr i64 %143, 16
  %157 = trunc i64 %156 to i8
  %158 = and i8 %157, 15
  %159 = or i8 %158, 48
  %160 = getelementptr inbounds i8, ptr %148, i64 4
  store i8 %159, ptr %160, align 1, !tbaa !32
  %161 = getelementptr inbounds i8, ptr %148, i64 5
  store i8 %159, ptr %161, align 1, !tbaa !32
  %162 = lshr i64 %143, 24
  %163 = trunc i64 %162 to i8
  %164 = and i8 %163, 15
  %165 = or i8 %164, 48
  %166 = getelementptr inbounds i8, ptr %148, i64 6
  store i8 %165, ptr %166, align 1, !tbaa !32
  %167 = getelementptr inbounds i8, ptr %148, i64 7
  store i8 %165, ptr %167, align 1, !tbaa !32
  %168 = lshr i64 %143, 32
  %169 = trunc i64 %168 to i8
  %170 = and i8 %169, 15
  %171 = or i8 %170, 48
  %172 = getelementptr inbounds i8, ptr %148, i64 8
  store i8 %171, ptr %172, align 1, !tbaa !32
  %173 = getelementptr inbounds i8, ptr %148, i64 9
  store i8 %171, ptr %173, align 1, !tbaa !32
  %174 = lshr i64 %143, 40
  %175 = trunc i64 %174 to i8
  %176 = and i8 %175, 15
  %177 = or i8 %176, 48
  %178 = getelementptr inbounds i8, ptr %148, i64 10
  store i8 %177, ptr %178, align 1, !tbaa !32
  %179 = getelementptr inbounds i8, ptr %148, i64 11
  store i8 %177, ptr %179, align 1, !tbaa !32
  %180 = lshr i64 %143, 48
  %181 = trunc i64 %180 to i8
  %182 = and i8 %181, 15
  %183 = or i8 %182, 48
  %184 = getelementptr inbounds i8, ptr %148, i64 12
  store i8 %183, ptr %184, align 1, !tbaa !32
  %185 = getelementptr inbounds i8, ptr %148, i64 13
  store i8 %183, ptr %185, align 1, !tbaa !32
  %186 = lshr i64 %143, 56
  %187 = trunc i64 %186 to i8
  %188 = and i8 %187, 15
  %189 = or i8 %188, 48
  %190 = getelementptr inbounds i8, ptr %148, i64 14
  store i8 %189, ptr %190, align 1, !tbaa !32
  %191 = getelementptr inbounds i8, ptr %148, i64 15
  store i8 %189, ptr %191, align 1, !tbaa !32
  %192 = add nuw nsw i64 %141, 1
  %193 = icmp eq i64 %192, 1024
  br i1 %193, label %194, label %140, !llvm.loop !33

194:                                              ; preds = %140
  %195 = load ptr, ptr @stderr, align 8, !tbaa !7
  %196 = tail call i32 @fputs(ptr noundef nonnull %136, ptr noundef %195) #13
  %197 = add nuw nsw i64 %139, 1
  %198 = icmp eq i64 %197, 1024
  br i1 %198, label %199, label %138, !llvm.loop !34

199:                                              ; preds = %194
  tail call void @free(ptr noundef nonnull %136) #9
  tail call void @free(ptr noundef %3) #9
  tail call void @free(ptr noundef nonnull %4) #9
  tail call void @free(ptr noundef %5) #9
  br label %200

200:                                              ; preds = %199, %124
  %201 = phi i32 [ 0, %199 ], [ 1, %124 ]
  ret i32 %201
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
!13 = distinct !{!13, !14, !15, !16}
!14 = !{!"llvm.loop.mustprogress"}
!15 = !{!"llvm.loop.isvectorized", i32 1}
!16 = !{!"llvm.loop.unroll.runtime.disable"}
!17 = distinct !{!17, !14}
!18 = distinct !{!18, !14}
!19 = distinct !{!19, !14}
!20 = distinct !{!20, !14, !15, !16}
!21 = distinct !{!21, !14}
!22 = distinct !{!22, !14}
!23 = distinct !{!23, !14}
!24 = distinct !{!24, !14}
!25 = distinct !{!25, !14, !15, !16}
!26 = distinct !{!26, !14}
!27 = distinct !{!27, !14}
!28 = distinct !{!28, !14}
!29 = distinct !{!29, !14}
!30 = distinct !{!30, !14}
!31 = distinct !{!31, !14}
!32 = !{!9, !9, i64 0}
!33 = distinct !{!33, !14}
!34 = distinct !{!34, !14}
