; ModuleID = '/src/llvm-test-suite/build/SingleSource/Benchmarks/Polybench/medley/floyd-warshall/floyd-warshall.e.bc'
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
  br label %5

5:                                                ; preds = %24, %2
  %6 = phi i64 [ 0, %2 ], [ %7, %24 ]
  %7 = add nuw nsw i64 %6, 1
  %8 = trunc i64 %7 to i32
  %9 = sitofp i32 %8 to double
  %10 = insertelement <2 x double> poison, double %9, i64 0
  %11 = shufflevector <2 x double> %10, <2 x double> poison, <2 x i32> zeroinitializer
  br label %12

12:                                               ; preds = %12, %5
  %13 = phi i64 [ 0, %5 ], [ %21, %12 ]
  %14 = phi <2 x i64> [ <i64 0, i64 1>, %5 ], [ %22, %12 ]
  %15 = trunc <2 x i64> %14 to <2 x i32>
  %16 = add <2 x i32> %15, <i32 1, i32 1>
  %17 = sitofp <2 x i32> %16 to <2 x double>
  %18 = fmul <2 x double> %11, %17
  %19 = fmul <2 x double> %18, <double 0x3F50000000000000, double 0x3F50000000000000>
  %20 = getelementptr inbounds [1024 x double], ptr %3, i64 %6, i64 %13
  store <2 x double> %19, ptr %20, align 8, !tbaa !11
  %21 = add nuw i64 %13, 2
  %22 = add <2 x i64> %14, <i64 2, i64 2>
  %23 = icmp eq i64 %21, 1024
  br i1 %23, label %24, label %12, !llvm.loop !13

24:                                               ; preds = %12
  %25 = icmp eq i64 %7, 1024
  br i1 %25, label %26, label %5, !llvm.loop !17

26:                                               ; preds = %46, %24
  %27 = phi i64 [ %47, %46 ], [ 0, %24 ]
  br label %28

28:                                               ; preds = %43, %26
  %29 = phi i64 [ 0, %26 ], [ %44, %43 ]
  %30 = getelementptr inbounds [1024 x double], ptr %3, i64 %29, i64 %27
  br label %31

31:                                               ; preds = %31, %28
  %32 = phi i64 [ 0, %28 ], [ %41, %31 ]
  %33 = getelementptr inbounds [1024 x double], ptr %3, i64 %29, i64 %32
  %34 = load double, ptr %33, align 8, !tbaa !11
  %35 = load double, ptr %30, align 8, !tbaa !11
  %36 = getelementptr inbounds [1024 x double], ptr %3, i64 %27, i64 %32
  %37 = load double, ptr %36, align 8, !tbaa !11
  %38 = fadd double %35, %37
  %39 = fcmp olt double %34, %38
  %40 = select i1 %39, double %34, double %38
  store double %40, ptr %33, align 8, !tbaa !11
  %41 = add nuw nsw i64 %32, 1
  %42 = icmp eq i64 %41, 1024
  br i1 %42, label %43, label %31, !llvm.loop !18

43:                                               ; preds = %31
  %44 = add nuw nsw i64 %29, 1
  %45 = icmp eq i64 %44, 1024
  br i1 %45, label %46, label %28, !llvm.loop !19

46:                                               ; preds = %43
  %47 = add nuw nsw i64 %27, 1
  %48 = icmp eq i64 %47, 1024
  br i1 %48, label %49, label %26, !llvm.loop !20

49:                                               ; preds = %68, %46
  %50 = phi i64 [ %51, %68 ], [ 0, %46 ]
  %51 = add nuw nsw i64 %50, 1
  %52 = trunc i64 %51 to i32
  %53 = sitofp i32 %52 to double
  %54 = insertelement <2 x double> poison, double %53, i64 0
  %55 = shufflevector <2 x double> %54, <2 x double> poison, <2 x i32> zeroinitializer
  br label %56

56:                                               ; preds = %56, %49
  %57 = phi i64 [ 0, %49 ], [ %65, %56 ]
  %58 = phi <2 x i64> [ <i64 0, i64 1>, %49 ], [ %66, %56 ]
  %59 = trunc <2 x i64> %58 to <2 x i32>
  %60 = add <2 x i32> %59, <i32 1, i32 1>
  %61 = sitofp <2 x i32> %60 to <2 x double>
  %62 = fmul <2 x double> %55, %61
  %63 = fmul <2 x double> %62, <double 0x3F50000000000000, double 0x3F50000000000000>
  %64 = getelementptr inbounds [1024 x double], ptr %4, i64 %50, i64 %57
  store <2 x double> %63, ptr %64, align 8, !tbaa !11
  %65 = add nuw i64 %57, 2
  %66 = add <2 x i64> %58, <i64 2, i64 2>
  %67 = icmp eq i64 %65, 1024
  br i1 %67, label %68, label %56, !llvm.loop !21

68:                                               ; preds = %56
  %69 = icmp eq i64 %51, 1024
  br i1 %69, label %70, label %49, !llvm.loop !17

70:                                               ; preds = %90, %68
  %71 = phi i64 [ %91, %90 ], [ 0, %68 ]
  br label %72

72:                                               ; preds = %87, %70
  %73 = phi i64 [ 0, %70 ], [ %88, %87 ]
  %74 = getelementptr inbounds [1024 x double], ptr %4, i64 %73, i64 %71
  br label %75

75:                                               ; preds = %75, %72
  %76 = phi i64 [ 0, %72 ], [ %85, %75 ]
  %77 = getelementptr inbounds [1024 x double], ptr %4, i64 %73, i64 %76
  %78 = load double, ptr %77, align 8, !tbaa !11
  %79 = load double, ptr %74, align 8, !tbaa !11
  %80 = getelementptr inbounds [1024 x double], ptr %4, i64 %71, i64 %76
  %81 = load double, ptr %80, align 8, !tbaa !11
  %82 = fadd double %79, %81
  %83 = fcmp olt double %78, %82
  %84 = select i1 %83, double %78, double %82
  store double %84, ptr %77, align 8, !tbaa !11
  %85 = add nuw nsw i64 %76, 1
  %86 = icmp eq i64 %85, 1024
  br i1 %86, label %87, label %75, !llvm.loop !22

87:                                               ; preds = %75
  %88 = add nuw nsw i64 %73, 1
  %89 = icmp eq i64 %88, 1024
  br i1 %89, label %90, label %72, !llvm.loop !23

90:                                               ; preds = %87
  %91 = add nuw nsw i64 %71, 1
  %92 = icmp eq i64 %91, 1024
  br i1 %92, label %93, label %70, !llvm.loop !24

93:                                               ; preds = %112, %90
  %94 = phi i64 [ %113, %112 ], [ 0, %90 ]
  br label %95

95:                                               ; preds = %109, %93
  %96 = phi i64 [ 0, %93 ], [ %110, %109 ]
  %97 = getelementptr inbounds [1024 x double], ptr %3, i64 %94, i64 %96
  %98 = load double, ptr %97, align 8, !tbaa !11
  %99 = getelementptr inbounds [1024 x double], ptr %4, i64 %94, i64 %96
  %100 = load double, ptr %99, align 8, !tbaa !11
  %101 = fsub double %98, %100
  %102 = tail call double @llvm.fabs.f64(double %101)
  %103 = fcmp ule double %102, 1.000000e-05
  br i1 %103, label %109, label %104

104:                                              ; preds = %95
  %.lcssa6 = phi i64 [ %94, %95 ]
  %.lcssa4 = phi i64 [ %96, %95 ]
  %.lcssa2 = phi double [ %98, %95 ]
  %.lcssa = phi double [ %100, %95 ]
  %105 = trunc i64 %.lcssa6 to i32
  %106 = trunc i64 %.lcssa4 to i32
  %107 = load ptr, ptr @stderr, align 8, !tbaa !7
  %108 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %107, ptr noundef nonnull @.str.2, i32 noundef %105, i32 noundef %106, double noundef %.lcssa2, i32 noundef %105, i32 noundef %106, double noundef %.lcssa, double noundef 1.000000e-05) #13
  br label %180

109:                                              ; preds = %95
  %110 = add nuw nsw i64 %96, 1
  %111 = icmp eq i64 %110, 1024
  br i1 %111, label %112, label %95, !llvm.loop !25

112:                                              ; preds = %109
  %113 = add nuw nsw i64 %94, 1
  %114 = icmp eq i64 %113, 1024
  br i1 %114, label %115, label %93, !llvm.loop !26

115:                                              ; preds = %112
  %116 = tail call noalias dereferenceable_or_null(16385) ptr @malloc(i64 noundef 16385) #14
  %117 = getelementptr inbounds i8, ptr %116, i64 16384
  store i8 0, ptr %117, align 1, !tbaa !27
  br label %118

118:                                              ; preds = %174, %115
  %119 = phi i64 [ 0, %115 ], [ %177, %174 ]
  br label %120

120:                                              ; preds = %120, %118
  %121 = phi i64 [ 0, %118 ], [ %172, %120 ]
  %122 = getelementptr inbounds [1024 x double], ptr %4, i64 %119, i64 %121
  %123 = load i64, ptr %122, align 8, !tbaa !11
  %124 = shl nuw nsw i64 %121, 4
  %125 = trunc i64 %123 to i8
  %126 = and i8 %125, 15
  %127 = or i8 %126, 48
  %128 = getelementptr inbounds i8, ptr %116, i64 %124
  store i8 %127, ptr %128, align 1, !tbaa !27
  %129 = getelementptr inbounds i8, ptr %128, i64 1
  store i8 %127, ptr %129, align 1, !tbaa !27
  %130 = lshr i64 %123, 8
  %131 = trunc i64 %130 to i8
  %132 = and i8 %131, 15
  %133 = or i8 %132, 48
  %134 = getelementptr inbounds i8, ptr %128, i64 2
  store i8 %133, ptr %134, align 1, !tbaa !27
  %135 = getelementptr inbounds i8, ptr %128, i64 3
  store i8 %133, ptr %135, align 1, !tbaa !27
  %136 = lshr i64 %123, 16
  %137 = trunc i64 %136 to i8
  %138 = and i8 %137, 15
  %139 = or i8 %138, 48
  %140 = getelementptr inbounds i8, ptr %128, i64 4
  store i8 %139, ptr %140, align 1, !tbaa !27
  %141 = getelementptr inbounds i8, ptr %128, i64 5
  store i8 %139, ptr %141, align 1, !tbaa !27
  %142 = lshr i64 %123, 24
  %143 = trunc i64 %142 to i8
  %144 = and i8 %143, 15
  %145 = or i8 %144, 48
  %146 = getelementptr inbounds i8, ptr %128, i64 6
  store i8 %145, ptr %146, align 1, !tbaa !27
  %147 = getelementptr inbounds i8, ptr %128, i64 7
  store i8 %145, ptr %147, align 1, !tbaa !27
  %148 = lshr i64 %123, 32
  %149 = trunc i64 %148 to i8
  %150 = and i8 %149, 15
  %151 = or i8 %150, 48
  %152 = getelementptr inbounds i8, ptr %128, i64 8
  store i8 %151, ptr %152, align 1, !tbaa !27
  %153 = getelementptr inbounds i8, ptr %128, i64 9
  store i8 %151, ptr %153, align 1, !tbaa !27
  %154 = lshr i64 %123, 40
  %155 = trunc i64 %154 to i8
  %156 = and i8 %155, 15
  %157 = or i8 %156, 48
  %158 = getelementptr inbounds i8, ptr %128, i64 10
  store i8 %157, ptr %158, align 1, !tbaa !27
  %159 = getelementptr inbounds i8, ptr %128, i64 11
  store i8 %157, ptr %159, align 1, !tbaa !27
  %160 = lshr i64 %123, 48
  %161 = trunc i64 %160 to i8
  %162 = and i8 %161, 15
  %163 = or i8 %162, 48
  %164 = getelementptr inbounds i8, ptr %128, i64 12
  store i8 %163, ptr %164, align 1, !tbaa !27
  %165 = getelementptr inbounds i8, ptr %128, i64 13
  store i8 %163, ptr %165, align 1, !tbaa !27
  %166 = lshr i64 %123, 56
  %167 = trunc i64 %166 to i8
  %168 = and i8 %167, 15
  %169 = or i8 %168, 48
  %170 = getelementptr inbounds i8, ptr %128, i64 14
  store i8 %169, ptr %170, align 1, !tbaa !27
  %171 = getelementptr inbounds i8, ptr %128, i64 15
  store i8 %169, ptr %171, align 1, !tbaa !27
  %172 = add nuw nsw i64 %121, 1
  %173 = icmp eq i64 %172, 1024
  br i1 %173, label %174, label %120, !llvm.loop !28

174:                                              ; preds = %120
  %175 = load ptr, ptr @stderr, align 8, !tbaa !7
  %176 = tail call i32 @fputs(ptr noundef nonnull %116, ptr noundef %175) #13
  %177 = add nuw nsw i64 %119, 1
  %178 = icmp eq i64 %177, 1024
  br i1 %178, label %179, label %118, !llvm.loop !29

179:                                              ; preds = %174
  tail call void @free(ptr noundef nonnull %116) #9
  tail call void @free(ptr noundef %3) #9
  tail call void @free(ptr noundef nonnull %4) #9
  br label %180

180:                                              ; preds = %179, %104
  %181 = phi i32 [ 0, %179 ], [ 1, %104 ]
  ret i32 %181
}

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
!20 = distinct !{!20, !14}
!21 = distinct !{!21, !14, !15, !16}
!22 = distinct !{!22, !14}
!23 = distinct !{!23, !14}
!24 = distinct !{!24, !14}
!25 = distinct !{!25, !14}
!26 = distinct !{!26, !14}
!27 = !{!9, !9, i64 0}
!28 = distinct !{!28, !14}
!29 = distinct !{!29, !14}
