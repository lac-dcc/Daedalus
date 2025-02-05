; ModuleID = 'floyd-warshall.e.bc.ll'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [51 x i8] c"[PolyBench] posix_memalign: cannot allocate memory\00", align 1
@.str.2 = private unnamed_addr constant [76 x i8] c"A[%d][%d] = %lf and B[%d][%d] = %lf differ more than FP_ABSTOLERANCE = %lf\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define dso_local i32 @main(i32 noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = tail call fastcc ptr @polybench_alloc_data() #8
  %4 = tail call fastcc ptr @polybench_alloc_data() #8
  br label %5

5:                                                ; preds = %23, %2
  %6 = phi i64 [ 0, %2 ], [ %7, %23 ]
  %7 = add nuw nsw i64 %6, 1
  %8 = trunc i64 %7 to i32
  %9 = sitofp i32 %8 to double
  %10 = insertelement <2 x double> poison, double %9, i64 0
  %11 = shufflevector <2 x double> %10, <2 x double> poison, <2 x i32> zeroinitializer
  br label %12

12:                                               ; preds = %12, %5
  %13 = phi i64 [ 0, %5 ], [ %20, %12 ]
  %14 = phi <2 x i32> [ <i32 0, i32 1>, %5 ], [ %21, %12 ]
  %15 = add <2 x i32> %14, <i32 1, i32 1>
  %16 = sitofp <2 x i32> %15 to <2 x double>
  %17 = fmul <2 x double> %11, %16
  %18 = fmul <2 x double> %17, <double 0x3F50000000000000, double 0x3F50000000000000>
  %19 = getelementptr inbounds [1024 x double], ptr %3, i64 %6, i64 %13
  store <2 x double> %18, ptr %19, align 8, !tbaa !7
  %20 = add nuw nsw i64 %13, 2
  %21 = add <2 x i32> %14, <i32 2, i32 2>
  %22 = icmp eq i64 %20, 1024
  br i1 %22, label %23, label %12, !llvm.loop !11

23:                                               ; preds = %12
  %24 = icmp eq i64 %7, 1024
  br i1 %24, label %25, label %5, !llvm.loop !15

25:                                               ; preds = %45, %23
  %26 = phi i64 [ %46, %45 ], [ 0, %23 ]
  br label %27

27:                                               ; preds = %42, %25
  %28 = phi i64 [ 0, %25 ], [ %43, %42 ]
  %29 = getelementptr inbounds [1024 x double], ptr %3, i64 %28, i64 %26
  br label %30

30:                                               ; preds = %30, %27
  %31 = phi i64 [ 0, %27 ], [ %40, %30 ]
  %32 = getelementptr inbounds [1024 x double], ptr %3, i64 %28, i64 %31
  %33 = load double, ptr %32, align 8, !tbaa !7
  %34 = load double, ptr %29, align 8, !tbaa !7
  %35 = getelementptr inbounds [1024 x double], ptr %3, i64 %26, i64 %31
  %36 = load double, ptr %35, align 8, !tbaa !7
  %37 = fadd double %34, %36
  %38 = fcmp olt double %33, %37
  %39 = select i1 %38, double %33, double %37
  store double %39, ptr %32, align 8, !tbaa !7
  %40 = add nuw nsw i64 %31, 1
  %41 = icmp eq i64 %40, 1024
  br i1 %41, label %42, label %30, !llvm.loop !16

42:                                               ; preds = %30
  %43 = add nuw nsw i64 %28, 1
  %44 = icmp eq i64 %43, 1024
  br i1 %44, label %45, label %27, !llvm.loop !17

45:                                               ; preds = %42
  %46 = add nuw nsw i64 %26, 1
  %47 = icmp eq i64 %46, 1024
  br i1 %47, label %48, label %25, !llvm.loop !18

48:                                               ; preds = %66, %45
  %49 = phi i64 [ %50, %66 ], [ 0, %45 ]
  %50 = add nuw nsw i64 %49, 1
  %51 = trunc i64 %50 to i32
  %52 = sitofp i32 %51 to double
  %53 = insertelement <2 x double> poison, double %52, i64 0
  %54 = shufflevector <2 x double> %53, <2 x double> poison, <2 x i32> zeroinitializer
  br label %55

55:                                               ; preds = %55, %48
  %56 = phi i64 [ 0, %48 ], [ %63, %55 ]
  %57 = phi <2 x i32> [ <i32 0, i32 1>, %48 ], [ %64, %55 ]
  %58 = add <2 x i32> %57, <i32 1, i32 1>
  %59 = sitofp <2 x i32> %58 to <2 x double>
  %60 = fmul <2 x double> %54, %59
  %61 = fmul <2 x double> %60, <double 0x3F50000000000000, double 0x3F50000000000000>
  %62 = getelementptr inbounds [1024 x double], ptr %4, i64 %49, i64 %56
  store <2 x double> %61, ptr %62, align 8, !tbaa !7
  %63 = add nuw nsw i64 %56, 2
  %64 = add <2 x i32> %57, <i32 2, i32 2>
  %65 = icmp eq i64 %63, 1024
  br i1 %65, label %66, label %55, !llvm.loop !19

66:                                               ; preds = %55
  %67 = icmp eq i64 %50, 1024
  br i1 %67, label %68, label %48, !llvm.loop !15

68:                                               ; preds = %88, %66
  %69 = phi i64 [ %89, %88 ], [ 0, %66 ]
  br label %70

70:                                               ; preds = %85, %68
  %71 = phi i64 [ 0, %68 ], [ %86, %85 ]
  %72 = getelementptr inbounds [1024 x double], ptr %4, i64 %71, i64 %69
  br label %73

73:                                               ; preds = %73, %70
  %74 = phi i64 [ 0, %70 ], [ %83, %73 ]
  %75 = getelementptr inbounds [1024 x double], ptr %4, i64 %71, i64 %74
  %76 = load double, ptr %75, align 8, !tbaa !7
  %77 = load double, ptr %72, align 8, !tbaa !7
  %78 = getelementptr inbounds [1024 x double], ptr %4, i64 %69, i64 %74
  %79 = load double, ptr %78, align 8, !tbaa !7
  %80 = fadd double %77, %79
  %81 = fcmp olt double %76, %80
  %82 = select i1 %81, double %76, double %80
  store double %82, ptr %75, align 8, !tbaa !7
  %83 = add nuw nsw i64 %74, 1
  %84 = icmp eq i64 %83, 1024
  br i1 %84, label %85, label %73, !llvm.loop !20

85:                                               ; preds = %73
  %86 = add nuw nsw i64 %71, 1
  %87 = icmp eq i64 %86, 1024
  br i1 %87, label %88, label %70, !llvm.loop !21

88:                                               ; preds = %85
  %89 = add nuw nsw i64 %69, 1
  %90 = icmp eq i64 %89, 1024
  br i1 %90, label %91, label %68, !llvm.loop !22

91:                                               ; preds = %110, %88
  %92 = phi i64 [ %111, %110 ], [ 0, %88 ]
  br label %93

93:                                               ; preds = %107, %91
  %94 = phi i64 [ 0, %91 ], [ %108, %107 ]
  %95 = getelementptr inbounds [1024 x double], ptr %3, i64 %92, i64 %94
  %96 = load double, ptr %95, align 8, !tbaa !7
  %97 = getelementptr inbounds [1024 x double], ptr %4, i64 %92, i64 %94
  %98 = load double, ptr %97, align 8, !tbaa !7
  %99 = fsub double %96, %98
  %100 = tail call double @llvm.fabs.f64(double %99)
  %101 = fcmp ule double %100, 1.000000e-05
  br i1 %101, label %107, label %102

102:                                              ; preds = %93
  %.lcssa6 = phi i64 [ %92, %93 ]
  %.lcssa4 = phi i64 [ %94, %93 ]
  %.lcssa2 = phi double [ %96, %93 ]
  %.lcssa = phi double [ %98, %93 ]
  %103 = trunc i64 %.lcssa6 to i32
  %104 = trunc i64 %.lcssa4 to i32
  %105 = load ptr, ptr @stderr, align 8, !tbaa !23
  %106 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %105, ptr noundef nonnull @.str.2, i32 noundef %103, i32 noundef %104, double noundef %.lcssa2, i32 noundef %103, i32 noundef %104, double noundef %.lcssa, double noundef 1.000000e-05) #9
  br label %178

107:                                              ; preds = %93
  %108 = add nuw nsw i64 %94, 1
  %109 = icmp eq i64 %108, 1024
  br i1 %109, label %110, label %93, !llvm.loop !25

110:                                              ; preds = %107
  %111 = add nuw nsw i64 %92, 1
  %112 = icmp eq i64 %111, 1024
  br i1 %112, label %113, label %91, !llvm.loop !26

113:                                              ; preds = %110
  %114 = tail call noalias dereferenceable_or_null(16385) ptr @malloc(i64 noundef 16385) #10
  %115 = getelementptr inbounds i8, ptr %114, i64 16384
  store i8 0, ptr %115, align 1, !tbaa !27
  br label %116

116:                                              ; preds = %172, %113
  %117 = phi i64 [ 0, %113 ], [ %175, %172 ]
  br label %118

118:                                              ; preds = %118, %116
  %119 = phi i64 [ 0, %116 ], [ %170, %118 ]
  %120 = getelementptr inbounds [1024 x double], ptr %4, i64 %117, i64 %119
  %121 = load i64, ptr %120, align 8, !tbaa !7
  %122 = shl nuw nsw i64 %119, 4
  %123 = trunc i64 %121 to i8
  %124 = and i8 %123, 15
  %125 = or i8 %124, 48
  %126 = getelementptr inbounds i8, ptr %114, i64 %122
  store i8 %125, ptr %126, align 1, !tbaa !27
  %127 = getelementptr inbounds i8, ptr %126, i64 1
  store i8 %125, ptr %127, align 1, !tbaa !27
  %128 = lshr i64 %121, 8
  %129 = trunc i64 %128 to i8
  %130 = and i8 %129, 15
  %131 = or i8 %130, 48
  %132 = getelementptr inbounds i8, ptr %126, i64 2
  store i8 %131, ptr %132, align 1, !tbaa !27
  %133 = getelementptr inbounds i8, ptr %126, i64 3
  store i8 %131, ptr %133, align 1, !tbaa !27
  %134 = lshr i64 %121, 16
  %135 = trunc i64 %134 to i8
  %136 = and i8 %135, 15
  %137 = or i8 %136, 48
  %138 = getelementptr inbounds i8, ptr %126, i64 4
  store i8 %137, ptr %138, align 1, !tbaa !27
  %139 = getelementptr inbounds i8, ptr %126, i64 5
  store i8 %137, ptr %139, align 1, !tbaa !27
  %140 = lshr i64 %121, 24
  %141 = trunc i64 %140 to i8
  %142 = and i8 %141, 15
  %143 = or i8 %142, 48
  %144 = getelementptr inbounds i8, ptr %126, i64 6
  store i8 %143, ptr %144, align 1, !tbaa !27
  %145 = getelementptr inbounds i8, ptr %126, i64 7
  store i8 %143, ptr %145, align 1, !tbaa !27
  %146 = lshr i64 %121, 32
  %147 = trunc i64 %146 to i8
  %148 = and i8 %147, 15
  %149 = or i8 %148, 48
  %150 = getelementptr inbounds i8, ptr %126, i64 8
  store i8 %149, ptr %150, align 1, !tbaa !27
  %151 = getelementptr inbounds i8, ptr %126, i64 9
  store i8 %149, ptr %151, align 1, !tbaa !27
  %152 = lshr i64 %121, 40
  %153 = trunc i64 %152 to i8
  %154 = and i8 %153, 15
  %155 = or i8 %154, 48
  %156 = getelementptr inbounds i8, ptr %126, i64 10
  store i8 %155, ptr %156, align 1, !tbaa !27
  %157 = getelementptr inbounds i8, ptr %126, i64 11
  store i8 %155, ptr %157, align 1, !tbaa !27
  %158 = lshr i64 %121, 48
  %159 = trunc i64 %158 to i8
  %160 = and i8 %159, 15
  %161 = or i8 %160, 48
  %162 = getelementptr inbounds i8, ptr %126, i64 12
  store i8 %161, ptr %162, align 1, !tbaa !27
  %163 = getelementptr inbounds i8, ptr %126, i64 13
  store i8 %161, ptr %163, align 1, !tbaa !27
  %164 = lshr i64 %121, 56
  %165 = trunc i64 %164 to i8
  %166 = and i8 %165, 15
  %167 = or i8 %166, 48
  %168 = getelementptr inbounds i8, ptr %126, i64 14
  store i8 %167, ptr %168, align 1, !tbaa !27
  %169 = getelementptr inbounds i8, ptr %126, i64 15
  store i8 %167, ptr %169, align 1, !tbaa !27
  %170 = add nuw nsw i64 %119, 1
  %171 = icmp eq i64 %170, 1024
  br i1 %171, label %172, label %118, !llvm.loop !28

172:                                              ; preds = %118
  %173 = load ptr, ptr @stderr, align 8, !tbaa !23
  %174 = tail call i32 @fputs(ptr noundef nonnull %114, ptr noundef %173) #9
  %175 = add nuw nsw i64 %117, 1
  %176 = icmp eq i64 %175, 1024
  br i1 %176, label %177, label %116, !llvm.loop !29

177:                                              ; preds = %172
  tail call void @free(ptr noundef nonnull %114) #11
  tail call void @free(ptr noundef %3) #11
  tail call void @free(ptr noundef nonnull %4) #11
  br label %178

178:                                              ; preds = %177, %102
  %179 = phi i32 [ 0, %177 ], [ 1, %102 ]
  ret i32 %179
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc ptr @polybench_alloc_data() unnamed_addr #0 {
  %1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #12
  store ptr null, ptr %1, align 8, !tbaa !23
  %2 = call i32 @posix_memalign(ptr noundef nonnull %1, i64 noundef 32, i64 noundef 8388608) #11
  %3 = load ptr, ptr %1, align 8, !tbaa !23
  %4 = icmp eq ptr %3, null
  %5 = icmp ne i32 %2, 0
  %6 = select i1 %4, i1 true, i1 %5
  br i1 %6, label %7, label %10

7:                                                ; preds = %0
  %8 = load ptr, ptr @stderr, align 8, !tbaa !23
  %9 = call i64 @fwrite(ptr nonnull @.str.1, i64 50, i64 1, ptr %8) #13
  call void @exit(i32 noundef 1) #14
  unreachable

10:                                               ; preds = %0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #12
  ret ptr %3
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #1

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fputs(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: nofree nounwind optsize
declare i32 @posix_memalign(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

attributes #0 = { nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nofree nounwind }
attributes #7 = { noreturn nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { optsize }
attributes #9 = { cold optsize }
attributes #10 = { nounwind optsize allocsize(0) }
attributes #11 = { nounwind optsize }
attributes #12 = { nounwind }
attributes #13 = { cold }
attributes #14 = { noreturn nounwind optsize }

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
!8 = !{!"double", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = distinct !{!11, !12, !13, !14}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!"llvm.loop.isvectorized", i32 1}
!14 = !{!"llvm.loop.unroll.runtime.disable"}
!15 = distinct !{!15, !12}
!16 = distinct !{!16, !12}
!17 = distinct !{!17, !12}
!18 = distinct !{!18, !12}
!19 = distinct !{!19, !12, !13, !14}
!20 = distinct !{!20, !12}
!21 = distinct !{!21, !12}
!22 = distinct !{!22, !12}
!23 = !{!24, !24, i64 0}
!24 = !{!"any pointer", !9, i64 0}
!25 = distinct !{!25, !12}
!26 = distinct !{!26, !12}
!27 = !{!9, !9, i64 0}
!28 = distinct !{!28, !12}
!29 = distinct !{!29, !12}
