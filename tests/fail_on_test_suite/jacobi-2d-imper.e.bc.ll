; ModuleID = '/src/llvm-test-suite/build/SingleSource/Benchmarks/Polybench/stencils/jacobi-2d-imper/jacobi-2d-imper.e.bc'
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
  %3 = tail call ptr @polybench_alloc_data(i64 noundef 1000000, i32 noundef 8) #13
  %4 = tail call ptr @polybench_alloc_data(i64 noundef 1000000, i32 noundef 8) #13
  %5 = tail call ptr @polybench_alloc_data(i64 noundef 1000000, i32 noundef 8) #13
  tail call fastcc void @init_array(ptr noundef %3, ptr noundef %5) #13
  br label %6

6:                                                ; preds = %47, %2
  %7 = phi i32 [ 0, %2 ], [ %48, %47 ]
  br label %8

8:                                                ; preds = %33, %6
  %9 = phi i64 [ 1, %6 ], [ %10, %33 ]
  %10 = add nuw nsw i64 %9, 1
  %11 = add nsw i64 %9, -1
  br label %12

12:                                               ; preds = %12, %8
  %13 = phi i64 [ 1, %8 ], [ %20, %12 ]
  %14 = getelementptr inbounds [1000 x double], ptr %3, i64 %9, i64 %13
  %15 = load double, ptr %14, align 8, !tbaa !11
  %16 = add nsw i64 %13, -1
  %17 = getelementptr inbounds [1000 x double], ptr %3, i64 %9, i64 %16
  %18 = load double, ptr %17, align 8, !tbaa !11
  %19 = fadd double %15, %18
  %20 = add nuw nsw i64 %13, 1
  %21 = getelementptr inbounds [1000 x double], ptr %3, i64 %9, i64 %20
  %22 = load double, ptr %21, align 8, !tbaa !11
  %23 = fadd double %19, %22
  %24 = getelementptr inbounds [1000 x double], ptr %3, i64 %10, i64 %13
  %25 = load double, ptr %24, align 8, !tbaa !11
  %26 = fadd double %23, %25
  %27 = getelementptr inbounds [1000 x double], ptr %3, i64 %11, i64 %13
  %28 = load double, ptr %27, align 8, !tbaa !11
  %29 = fadd double %26, %28
  %30 = fmul double %29, 2.000000e-01
  %31 = getelementptr inbounds [1000 x double], ptr %5, i64 %9, i64 %13
  store double %30, ptr %31, align 8, !tbaa !11
  %32 = icmp eq i64 %20, 999
  br i1 %32, label %33, label %12, !llvm.loop !13

33:                                               ; preds = %12
  %34 = icmp eq i64 %10, 999
  br i1 %34, label %35, label %8, !llvm.loop !15

35:                                               ; preds = %44, %33
  %36 = phi i64 [ %45, %44 ], [ 1, %33 ]
  br label %37

37:                                               ; preds = %37, %35
  %38 = phi i64 [ 1, %35 ], [ %42, %37 ]
  %39 = getelementptr inbounds [1000 x double], ptr %5, i64 %36, i64 %38
  %40 = load double, ptr %39, align 8, !tbaa !11
  %41 = getelementptr inbounds [1000 x double], ptr %3, i64 %36, i64 %38
  store double %40, ptr %41, align 8, !tbaa !11
  %42 = add nuw nsw i64 %38, 1
  %43 = icmp eq i64 %42, 999
  br i1 %43, label %44, label %37, !llvm.loop !16

44:                                               ; preds = %37
  %45 = add nuw nsw i64 %36, 1
  %46 = icmp eq i64 %45, 999
  br i1 %46, label %47, label %35, !llvm.loop !17

47:                                               ; preds = %44
  %48 = add nuw nsw i32 %7, 1
  %49 = icmp eq i32 %48, 20
  br i1 %49, label %50, label %6, !llvm.loop !18

50:                                               ; preds = %47
  tail call fastcc void @init_array(ptr noundef %4, ptr noundef nonnull %5) #13
  br label %51

51:                                               ; preds = %92, %50
  %52 = phi i32 [ 0, %50 ], [ %93, %92 ]
  br label %53

53:                                               ; preds = %78, %51
  %54 = phi i64 [ 1, %51 ], [ %55, %78 ]
  %55 = add nuw nsw i64 %54, 1
  %56 = add nsw i64 %54, -1
  br label %57

57:                                               ; preds = %57, %53
  %58 = phi i64 [ 1, %53 ], [ %65, %57 ]
  %59 = getelementptr inbounds [1000 x double], ptr %4, i64 %54, i64 %58
  %60 = load double, ptr %59, align 8, !tbaa !11
  %61 = add nsw i64 %58, -1
  %62 = getelementptr inbounds [1000 x double], ptr %4, i64 %54, i64 %61
  %63 = load double, ptr %62, align 8, !tbaa !11
  %64 = fadd double %60, %63
  %65 = add nuw nsw i64 %58, 1
  %66 = getelementptr inbounds [1000 x double], ptr %4, i64 %54, i64 %65
  %67 = load double, ptr %66, align 8, !tbaa !11
  %68 = fadd double %64, %67
  %69 = getelementptr inbounds [1000 x double], ptr %4, i64 %55, i64 %58
  %70 = load double, ptr %69, align 8, !tbaa !11
  %71 = fadd double %68, %70
  %72 = getelementptr inbounds [1000 x double], ptr %4, i64 %56, i64 %58
  %73 = load double, ptr %72, align 8, !tbaa !11
  %74 = fadd double %71, %73
  %75 = fmul double %74, 2.000000e-01
  %76 = getelementptr inbounds [1000 x double], ptr %5, i64 %54, i64 %58
  store double %75, ptr %76, align 8, !tbaa !11
  %77 = icmp eq i64 %65, 999
  br i1 %77, label %78, label %57, !llvm.loop !19

78:                                               ; preds = %57
  %79 = icmp eq i64 %55, 999
  br i1 %79, label %80, label %53, !llvm.loop !20

80:                                               ; preds = %89, %78
  %81 = phi i64 [ %90, %89 ], [ 1, %78 ]
  br label %82

82:                                               ; preds = %82, %80
  %83 = phi i64 [ 1, %80 ], [ %87, %82 ]
  %84 = getelementptr inbounds [1000 x double], ptr %5, i64 %81, i64 %83
  %85 = load double, ptr %84, align 8, !tbaa !11
  %86 = getelementptr inbounds [1000 x double], ptr %4, i64 %81, i64 %83
  store double %85, ptr %86, align 8, !tbaa !11
  %87 = add nuw nsw i64 %83, 1
  %88 = icmp eq i64 %87, 999
  br i1 %88, label %89, label %82, !llvm.loop !21

89:                                               ; preds = %82
  %90 = add nuw nsw i64 %81, 1
  %91 = icmp eq i64 %90, 999
  br i1 %91, label %92, label %80, !llvm.loop !22

92:                                               ; preds = %89
  %93 = add nuw nsw i32 %52, 1
  %94 = icmp eq i32 %93, 20
  br i1 %94, label %95, label %51, !llvm.loop !23

95:                                               ; preds = %114, %92
  %96 = phi i64 [ %115, %114 ], [ 0, %92 ]
  br label %97

97:                                               ; preds = %111, %95
  %98 = phi i64 [ 0, %95 ], [ %112, %111 ]
  %99 = getelementptr inbounds [1000 x double], ptr %3, i64 %96, i64 %98
  %100 = load double, ptr %99, align 8, !tbaa !11
  %101 = getelementptr inbounds [1000 x double], ptr %4, i64 %96, i64 %98
  %102 = load double, ptr %101, align 8, !tbaa !11
  %103 = fsub double %100, %102
  %104 = tail call double @llvm.fabs.f64(double %103)
  %105 = fcmp ule double %104, 1.000000e-05
  br i1 %105, label %111, label %106

106:                                              ; preds = %97
  %.lcssa6 = phi i64 [ %96, %97 ]
  %.lcssa4 = phi i64 [ %98, %97 ]
  %.lcssa2 = phi double [ %100, %97 ]
  %.lcssa = phi double [ %102, %97 ]
  %107 = trunc i64 %.lcssa6 to i32
  %108 = trunc i64 %.lcssa4 to i32
  %109 = load ptr, ptr @stderr, align 8, !tbaa !7
  %110 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %109, ptr noundef nonnull @.str.2, i32 noundef %107, i32 noundef %108, double noundef %.lcssa2, i32 noundef %107, i32 noundef %108, double noundef %.lcssa, double noundef 1.000000e-05) #14
  br label %182

111:                                              ; preds = %97
  %112 = add nuw nsw i64 %98, 1
  %113 = icmp eq i64 %112, 1000
  br i1 %113, label %114, label %97, !llvm.loop !24

114:                                              ; preds = %111
  %115 = add nuw nsw i64 %96, 1
  %116 = icmp eq i64 %115, 1000
  br i1 %116, label %117, label %95, !llvm.loop !25

117:                                              ; preds = %114
  %118 = tail call noalias dereferenceable_or_null(16001) ptr @malloc(i64 noundef 16001) #15
  %119 = getelementptr inbounds i8, ptr %118, i64 16000
  store i8 0, ptr %119, align 1, !tbaa !26
  br label %120

120:                                              ; preds = %176, %117
  %121 = phi i64 [ 0, %117 ], [ %179, %176 ]
  br label %122

122:                                              ; preds = %122, %120
  %123 = phi i64 [ 0, %120 ], [ %174, %122 ]
  %124 = getelementptr inbounds [1000 x double], ptr %4, i64 %121, i64 %123
  %125 = load i64, ptr %124, align 8, !tbaa !11
  %126 = shl nuw nsw i64 %123, 4
  %127 = trunc i64 %125 to i8
  %128 = and i8 %127, 15
  %129 = or i8 %128, 48
  %130 = getelementptr inbounds i8, ptr %118, i64 %126
  store i8 %129, ptr %130, align 1, !tbaa !26
  %131 = getelementptr inbounds i8, ptr %130, i64 1
  store i8 %129, ptr %131, align 1, !tbaa !26
  %132 = lshr i64 %125, 8
  %133 = trunc i64 %132 to i8
  %134 = and i8 %133, 15
  %135 = or i8 %134, 48
  %136 = getelementptr inbounds i8, ptr %130, i64 2
  store i8 %135, ptr %136, align 1, !tbaa !26
  %137 = getelementptr inbounds i8, ptr %130, i64 3
  store i8 %135, ptr %137, align 1, !tbaa !26
  %138 = lshr i64 %125, 16
  %139 = trunc i64 %138 to i8
  %140 = and i8 %139, 15
  %141 = or i8 %140, 48
  %142 = getelementptr inbounds i8, ptr %130, i64 4
  store i8 %141, ptr %142, align 1, !tbaa !26
  %143 = getelementptr inbounds i8, ptr %130, i64 5
  store i8 %141, ptr %143, align 1, !tbaa !26
  %144 = lshr i64 %125, 24
  %145 = trunc i64 %144 to i8
  %146 = and i8 %145, 15
  %147 = or i8 %146, 48
  %148 = getelementptr inbounds i8, ptr %130, i64 6
  store i8 %147, ptr %148, align 1, !tbaa !26
  %149 = getelementptr inbounds i8, ptr %130, i64 7
  store i8 %147, ptr %149, align 1, !tbaa !26
  %150 = lshr i64 %125, 32
  %151 = trunc i64 %150 to i8
  %152 = and i8 %151, 15
  %153 = or i8 %152, 48
  %154 = getelementptr inbounds i8, ptr %130, i64 8
  store i8 %153, ptr %154, align 1, !tbaa !26
  %155 = getelementptr inbounds i8, ptr %130, i64 9
  store i8 %153, ptr %155, align 1, !tbaa !26
  %156 = lshr i64 %125, 40
  %157 = trunc i64 %156 to i8
  %158 = and i8 %157, 15
  %159 = or i8 %158, 48
  %160 = getelementptr inbounds i8, ptr %130, i64 10
  store i8 %159, ptr %160, align 1, !tbaa !26
  %161 = getelementptr inbounds i8, ptr %130, i64 11
  store i8 %159, ptr %161, align 1, !tbaa !26
  %162 = lshr i64 %125, 48
  %163 = trunc i64 %162 to i8
  %164 = and i8 %163, 15
  %165 = or i8 %164, 48
  %166 = getelementptr inbounds i8, ptr %130, i64 12
  store i8 %165, ptr %166, align 1, !tbaa !26
  %167 = getelementptr inbounds i8, ptr %130, i64 13
  store i8 %165, ptr %167, align 1, !tbaa !26
  %168 = lshr i64 %125, 56
  %169 = trunc i64 %168 to i8
  %170 = and i8 %169, 15
  %171 = or i8 %170, 48
  %172 = getelementptr inbounds i8, ptr %130, i64 14
  store i8 %171, ptr %172, align 1, !tbaa !26
  %173 = getelementptr inbounds i8, ptr %130, i64 15
  store i8 %171, ptr %173, align 1, !tbaa !26
  %174 = add nuw nsw i64 %123, 1
  %175 = icmp eq i64 %174, 1000
  br i1 %175, label %176, label %122, !llvm.loop !27

176:                                              ; preds = %122
  %177 = load ptr, ptr @stderr, align 8, !tbaa !7
  %178 = tail call i32 @fputs(ptr noundef nonnull %118, ptr noundef %177) #14
  %179 = add nuw nsw i64 %121, 1
  %180 = icmp eq i64 %179, 1000
  br i1 %180, label %181, label %120, !llvm.loop !28

181:                                              ; preds = %176
  tail call void @free(ptr noundef nonnull %118) #10
  tail call void @free(ptr noundef %3) #10
  tail call void @free(ptr noundef nonnull %4) #10
  tail call void @free(ptr noundef %5) #10
  br label %182

182:                                              ; preds = %181, %106
  %183 = phi i32 [ 0, %181 ], [ 1, %106 ]
  ret i32 %183
}

; Function Attrs: nofree norecurse nosync nounwind optsize memory(argmem: write) uwtable
define internal fastcc void @init_array(ptr nocapture noundef writeonly %0, ptr nocapture noundef writeonly %1) unnamed_addr #5 {
  br label %3

3:                                                ; preds = %25, %2
  %4 = phi i64 [ 0, %2 ], [ %26, %25 ]
  %5 = trunc i64 %4 to i32
  %6 = sitofp i32 %5 to double
  br label %7

7:                                                ; preds = %7, %3
  %8 = phi i64 [ 0, %3 ], [ %23, %7 ]
  %9 = trunc i64 %8 to i32
  %10 = add i32 %9, 2
  %11 = sitofp i32 %10 to double
  %12 = fmul double %6, %11
  %13 = fadd double %12, 2.000000e+00
  %14 = fdiv double %13, 1.000000e+03
  %15 = getelementptr inbounds [1000 x double], ptr %0, i64 %4, i64 %8
  store double %14, ptr %15, align 8, !tbaa !11
  %16 = trunc i64 %8 to i32
  %17 = add i32 %16, 3
  %18 = sitofp i32 %17 to double
  %19 = fmul double %6, %18
  %20 = fadd double %19, 3.000000e+00
  %21 = fdiv double %20, 1.000000e+03
  %22 = getelementptr inbounds [1000 x double], ptr %1, i64 %4, i64 %8
  store double %21, ptr %22, align 8, !tbaa !11
  %23 = add nuw nsw i64 %8, 1
  %24 = icmp eq i64 %23, 1000
  br i1 %24, label %25, label %7, !llvm.loop !29

25:                                               ; preds = %7
  %26 = add nuw nsw i64 %4, 1
  %27 = icmp eq i64 %26, 1000
  br i1 %27, label %28, label %3, !llvm.loop !30

28:                                               ; preds = %25
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #6

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
attributes #5 = { nofree norecurse nosync nounwind optsize memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
!29 = distinct !{!29, !14}
!30 = distinct !{!30, !14}
