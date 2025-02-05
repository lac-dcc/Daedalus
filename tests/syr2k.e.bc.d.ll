; ModuleID = 'syr2k.e.bc.ll'
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
  %5 = tail call fastcc ptr @polybench_alloc_data() #8
  %6 = tail call fastcc ptr @polybench_alloc_data() #8
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
  %17 = getelementptr inbounds [1024 x double], ptr %5, i64 %8, i64 %12
  store double %16, ptr %17, align 8, !tbaa !7
  %18 = getelementptr inbounds [1024 x double], ptr %6, i64 %8, i64 %12
  store double %16, ptr %18, align 8, !tbaa !7
  %19 = add nuw nsw i64 %12, 1
  %20 = icmp eq i64 %19, 1024
  br i1 %20, label %21, label %11, !llvm.loop !11

21:                                               ; preds = %11
  %22 = add nuw nsw i64 %8, 1
  %23 = icmp eq i64 %22, 1024
  br i1 %23, label %24, label %7, !llvm.loop !13

24:                                               ; preds = %38, %21
  %25 = phi i64 [ %39, %38 ], [ 0, %21 ]
  %26 = trunc i64 %25 to i32
  %27 = sitofp i32 %26 to double
  br label %28

28:                                               ; preds = %28, %24
  %29 = phi i64 [ 0, %24 ], [ %36, %28 ]
  %30 = trunc i64 %29 to i32
  %31 = sitofp i32 %30 to double
  %32 = fmul double %27, %31
  %33 = fmul double %32, 0x3F50000000000000
  %34 = getelementptr inbounds [1024 x double], ptr %3, i64 %25, i64 %29
  store double %33, ptr %34, align 8, !tbaa !7
  %35 = getelementptr inbounds [1024 x double], ptr %4, i64 %25, i64 %29
  store double %33, ptr %35, align 8, !tbaa !7
  %36 = add nuw nsw i64 %29, 1
  %37 = icmp eq i64 %36, 1024
  br i1 %37, label %38, label %28, !llvm.loop !14

38:                                               ; preds = %28
  %39 = add nuw nsw i64 %25, 1
  %40 = icmp eq i64 %39, 1024
  br i1 %40, label %41, label %24, !llvm.loop !15

41:                                               ; preds = %50, %38
  %42 = phi i64 [ %51, %50 ], [ 0, %38 ]
  br label %43

43:                                               ; preds = %43, %41
  %44 = phi i64 [ 0, %41 ], [ %48, %43 ]
  %45 = getelementptr inbounds [1024 x double], ptr %3, i64 %42, i64 %44
  %46 = load <2 x double>, ptr %45, align 8, !tbaa !7
  %47 = fmul <2 x double> %46, <double 2.123000e+03, double 2.123000e+03>
  store <2 x double> %47, ptr %45, align 8, !tbaa !7
  %48 = add nuw nsw i64 %44, 2
  %49 = icmp eq i64 %48, 1024
  br i1 %49, label %50, label %43, !llvm.loop !16

50:                                               ; preds = %43
  %51 = add nuw nsw i64 %42, 1
  %52 = icmp eq i64 %51, 1024
  br i1 %52, label %53, label %41, !llvm.loop !19

53:                                               ; preds = %79, %50
  %54 = phi i64 [ %80, %79 ], [ 0, %50 ]
  br label %55

55:                                               ; preds = %76, %53
  %56 = phi i64 [ 0, %53 ], [ %77, %76 ]
  %57 = getelementptr inbounds [1024 x double], ptr %3, i64 %54, i64 %56
  %58 = load double, ptr %57, align 8, !tbaa !7
  br label %59

59:                                               ; preds = %59, %55
  %60 = phi i64 [ 0, %55 ], [ %74, %59 ]
  %61 = phi double [ %58, %55 ], [ %73, %59 ]
  %62 = getelementptr inbounds [1024 x double], ptr %5, i64 %54, i64 %60
  %63 = load double, ptr %62, align 8, !tbaa !7
  %64 = fmul double %63, 3.241200e+04
  %65 = getelementptr inbounds [1024 x double], ptr %6, i64 %56, i64 %60
  %66 = load double, ptr %65, align 8, !tbaa !7
  %67 = tail call double @llvm.fmuladd.f64(double %64, double %66, double %61)
  store double %67, ptr %57, align 8, !tbaa !7
  %68 = getelementptr inbounds [1024 x double], ptr %6, i64 %54, i64 %60
  %69 = load double, ptr %68, align 8, !tbaa !7
  %70 = fmul double %69, 3.241200e+04
  %71 = getelementptr inbounds [1024 x double], ptr %5, i64 %56, i64 %60
  %72 = load double, ptr %71, align 8, !tbaa !7
  %73 = tail call double @llvm.fmuladd.f64(double %70, double %72, double %67)
  store double %73, ptr %57, align 8, !tbaa !7
  %74 = add nuw nsw i64 %60, 1
  %75 = icmp eq i64 %74, 1024
  br i1 %75, label %76, label %59, !llvm.loop !20

76:                                               ; preds = %59
  %77 = add nuw nsw i64 %56, 1
  %78 = icmp eq i64 %77, 1024
  br i1 %78, label %79, label %55, !llvm.loop !21

79:                                               ; preds = %76
  %80 = add nuw nsw i64 %54, 1
  %81 = icmp eq i64 %80, 1024
  br i1 %81, label %82, label %53, !llvm.loop !22

82:                                               ; preds = %91, %79
  %83 = phi i64 [ %92, %91 ], [ 0, %79 ]
  br label %84

84:                                               ; preds = %84, %82
  %85 = phi i64 [ 0, %82 ], [ %89, %84 ]
  %86 = getelementptr inbounds [1024 x double], ptr %4, i64 %83, i64 %85
  %87 = load <2 x double>, ptr %86, align 8, !tbaa !7
  %88 = fmul <2 x double> %87, <double 2.123000e+03, double 2.123000e+03>
  store <2 x double> %88, ptr %86, align 8, !tbaa !7
  %89 = add nuw nsw i64 %85, 2
  %90 = icmp eq i64 %89, 1024
  br i1 %90, label %91, label %84, !llvm.loop !23

91:                                               ; preds = %84
  %92 = add nuw nsw i64 %83, 1
  %93 = icmp eq i64 %92, 1024
  br i1 %93, label %94, label %82, !llvm.loop !24

94:                                               ; preds = %122, %91
  %95 = phi i64 [ %123, %122 ], [ 0, %91 ]
  br label %96

96:                                               ; preds = %119, %94
  %97 = phi i64 [ 0, %94 ], [ %120, %119 ]
  %98 = getelementptr inbounds [1024 x double], ptr %4, i64 %95, i64 %97
  %99 = load double, ptr %98, align 8, !tbaa !7
  br label %100

100:                                              ; preds = %100, %96
  %101 = phi i64 [ 0, %96 ], [ %117, %100 ]
  %102 = phi double [ %99, %96 ], [ %116, %100 ]
  %103 = getelementptr inbounds [1024 x double], ptr %5, i64 %95, i64 %101
  %104 = load double, ptr %103, align 8, !tbaa !7
  %105 = fmul double %104, 3.241200e+04
  %106 = getelementptr inbounds [1024 x double], ptr %6, i64 %97, i64 %101
  %107 = load double, ptr %106, align 8, !tbaa !7
  %108 = fmul double %105, %107
  %109 = fadd double %102, %108
  store double %109, ptr %98, align 8, !tbaa !7
  %110 = getelementptr inbounds [1024 x double], ptr %6, i64 %95, i64 %101
  %111 = load double, ptr %110, align 8, !tbaa !7
  %112 = fmul double %111, 3.241200e+04
  %113 = getelementptr inbounds [1024 x double], ptr %5, i64 %97, i64 %101
  %114 = load double, ptr %113, align 8, !tbaa !7
  %115 = fmul double %112, %114
  %116 = fadd double %109, %115
  store double %116, ptr %98, align 8, !tbaa !7
  %117 = add nuw nsw i64 %101, 1
  %118 = icmp eq i64 %117, 1024
  br i1 %118, label %119, label %100, !llvm.loop !25

119:                                              ; preds = %100
  %120 = add nuw nsw i64 %97, 1
  %121 = icmp eq i64 %120, 1024
  br i1 %121, label %122, label %96, !llvm.loop !26

122:                                              ; preds = %119
  %123 = add nuw nsw i64 %95, 1
  %124 = icmp eq i64 %123, 1024
  br i1 %124, label %125, label %94, !llvm.loop !27

125:                                              ; preds = %144, %122
  %126 = phi i64 [ %145, %144 ], [ 0, %122 ]
  br label %127

127:                                              ; preds = %141, %125
  %128 = phi i64 [ 0, %125 ], [ %142, %141 ]
  %129 = getelementptr inbounds [1024 x double], ptr %3, i64 %126, i64 %128
  %130 = load double, ptr %129, align 8, !tbaa !7
  %131 = getelementptr inbounds [1024 x double], ptr %4, i64 %126, i64 %128
  %132 = load double, ptr %131, align 8, !tbaa !7
  %133 = fsub double %130, %132
  %134 = tail call double @llvm.fabs.f64(double %133)
  %135 = fcmp ule double %134, 1.000000e-05
  br i1 %135, label %141, label %136

136:                                              ; preds = %127
  %.lcssa6 = phi i64 [ %126, %127 ]
  %.lcssa4 = phi i64 [ %128, %127 ]
  %.lcssa2 = phi double [ %130, %127 ]
  %.lcssa = phi double [ %132, %127 ]
  %137 = trunc i64 %.lcssa6 to i32
  %138 = trunc i64 %.lcssa4 to i32
  %139 = load ptr, ptr @stderr, align 8, !tbaa !28
  %140 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %139, ptr noundef nonnull @.str.2, i32 noundef %137, i32 noundef %138, double noundef %.lcssa2, i32 noundef %137, i32 noundef %138, double noundef %.lcssa, double noundef 1.000000e-05) #9
  br label %212

141:                                              ; preds = %127
  %142 = add nuw nsw i64 %128, 1
  %143 = icmp eq i64 %142, 1024
  br i1 %143, label %144, label %127, !llvm.loop !30

144:                                              ; preds = %141
  %145 = add nuw nsw i64 %126, 1
  %146 = icmp eq i64 %145, 1024
  br i1 %146, label %147, label %125, !llvm.loop !31

147:                                              ; preds = %144
  %148 = tail call noalias dereferenceable_or_null(16385) ptr @malloc(i64 noundef 16385) #10
  %149 = getelementptr inbounds i8, ptr %148, i64 16384
  store i8 0, ptr %149, align 1, !tbaa !32
  br label %150

150:                                              ; preds = %206, %147
  %151 = phi i64 [ 0, %147 ], [ %209, %206 ]
  br label %152

152:                                              ; preds = %152, %150
  %153 = phi i64 [ 0, %150 ], [ %204, %152 ]
  %154 = getelementptr inbounds [1024 x double], ptr %4, i64 %151, i64 %153
  %155 = load i64, ptr %154, align 8, !tbaa !7
  %156 = shl nuw nsw i64 %153, 4
  %157 = trunc i64 %155 to i8
  %158 = and i8 %157, 15
  %159 = or i8 %158, 48
  %160 = getelementptr inbounds i8, ptr %148, i64 %156
  store i8 %159, ptr %160, align 1, !tbaa !32
  %161 = getelementptr inbounds i8, ptr %160, i64 1
  store i8 %159, ptr %161, align 1, !tbaa !32
  %162 = lshr i64 %155, 8
  %163 = trunc i64 %162 to i8
  %164 = and i8 %163, 15
  %165 = or i8 %164, 48
  %166 = getelementptr inbounds i8, ptr %160, i64 2
  store i8 %165, ptr %166, align 1, !tbaa !32
  %167 = getelementptr inbounds i8, ptr %160, i64 3
  store i8 %165, ptr %167, align 1, !tbaa !32
  %168 = lshr i64 %155, 16
  %169 = trunc i64 %168 to i8
  %170 = and i8 %169, 15
  %171 = or i8 %170, 48
  %172 = getelementptr inbounds i8, ptr %160, i64 4
  store i8 %171, ptr %172, align 1, !tbaa !32
  %173 = getelementptr inbounds i8, ptr %160, i64 5
  store i8 %171, ptr %173, align 1, !tbaa !32
  %174 = lshr i64 %155, 24
  %175 = trunc i64 %174 to i8
  %176 = and i8 %175, 15
  %177 = or i8 %176, 48
  %178 = getelementptr inbounds i8, ptr %160, i64 6
  store i8 %177, ptr %178, align 1, !tbaa !32
  %179 = getelementptr inbounds i8, ptr %160, i64 7
  store i8 %177, ptr %179, align 1, !tbaa !32
  %180 = lshr i64 %155, 32
  %181 = trunc i64 %180 to i8
  %182 = and i8 %181, 15
  %183 = or i8 %182, 48
  %184 = getelementptr inbounds i8, ptr %160, i64 8
  store i8 %183, ptr %184, align 1, !tbaa !32
  %185 = getelementptr inbounds i8, ptr %160, i64 9
  store i8 %183, ptr %185, align 1, !tbaa !32
  %186 = lshr i64 %155, 40
  %187 = trunc i64 %186 to i8
  %188 = and i8 %187, 15
  %189 = or i8 %188, 48
  %190 = getelementptr inbounds i8, ptr %160, i64 10
  store i8 %189, ptr %190, align 1, !tbaa !32
  %191 = getelementptr inbounds i8, ptr %160, i64 11
  store i8 %189, ptr %191, align 1, !tbaa !32
  %192 = lshr i64 %155, 48
  %193 = trunc i64 %192 to i8
  %194 = and i8 %193, 15
  %195 = or i8 %194, 48
  %196 = getelementptr inbounds i8, ptr %160, i64 12
  store i8 %195, ptr %196, align 1, !tbaa !32
  %197 = getelementptr inbounds i8, ptr %160, i64 13
  store i8 %195, ptr %197, align 1, !tbaa !32
  %198 = lshr i64 %155, 56
  %199 = trunc i64 %198 to i8
  %200 = and i8 %199, 15
  %201 = or i8 %200, 48
  %202 = getelementptr inbounds i8, ptr %160, i64 14
  store i8 %201, ptr %202, align 1, !tbaa !32
  %203 = getelementptr inbounds i8, ptr %160, i64 15
  store i8 %201, ptr %203, align 1, !tbaa !32
  %204 = add nuw nsw i64 %153, 1
  %205 = icmp eq i64 %204, 1024
  br i1 %205, label %206, label %152, !llvm.loop !33

206:                                              ; preds = %152
  %207 = load ptr, ptr @stderr, align 8, !tbaa !28
  %208 = tail call i32 @fputs(ptr noundef nonnull %148, ptr noundef %207) #9
  %209 = add nuw nsw i64 %151, 1
  %210 = icmp eq i64 %209, 1024
  br i1 %210, label %211, label %150, !llvm.loop !34

211:                                              ; preds = %206
  tail call void @free(ptr noundef nonnull %148) #11
  tail call void @free(ptr noundef %3) #11
  tail call void @free(ptr noundef nonnull %4) #11
  tail call void @free(ptr noundef %5) #11
  tail call void @free(ptr noundef %6) #11
  br label %212

212:                                              ; preds = %211, %136
  %213 = phi i32 [ 0, %211 ], [ 1, %136 ]
  ret i32 %213
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc ptr @polybench_alloc_data() unnamed_addr #0 {
  %1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #12
  store ptr null, ptr %1, align 8, !tbaa !28
  %2 = call i32 @posix_memalign(ptr noundef nonnull %1, i64 noundef 32, i64 noundef 8388608) #11
  %3 = load ptr, ptr %1, align 8, !tbaa !28
  %4 = icmp eq ptr %3, null
  %5 = icmp ne i32 %2, 0
  %6 = select i1 %4, i1 true, i1 %5
  br i1 %6, label %7, label %10

7:                                                ; preds = %0
  %8 = load ptr, ptr @stderr, align 8, !tbaa !28
  %9 = call i64 @fwrite(ptr nonnull @.str.1, i64 50, i64 1, ptr %8) #13
  call void @exit(i32 noundef 1) #14
  unreachable

10:                                               ; preds = %0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #12
  ret ptr %3
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #1

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
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = distinct !{!13, !12}
!14 = distinct !{!14, !12}
!15 = distinct !{!15, !12}
!16 = distinct !{!16, !12, !17, !18}
!17 = !{!"llvm.loop.isvectorized", i32 1}
!18 = !{!"llvm.loop.unroll.runtime.disable"}
!19 = distinct !{!19, !12}
!20 = distinct !{!20, !12}
!21 = distinct !{!21, !12}
!22 = distinct !{!22, !12}
!23 = distinct !{!23, !12, !17, !18}
!24 = distinct !{!24, !12}
!25 = distinct !{!25, !12}
!26 = distinct !{!26, !12}
!27 = distinct !{!27, !12}
!28 = !{!29, !29, i64 0}
!29 = !{!"any pointer", !9, i64 0}
!30 = distinct !{!30, !12}
!31 = distinct !{!31, !12}
!32 = !{!9, !9, i64 0}
!33 = distinct !{!33, !12}
!34 = distinct !{!34, !12}
