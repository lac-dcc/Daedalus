; ModuleID = 'bicg.e.bc.ll'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [51 x i8] c"[PolyBench] posix_memalign: cannot allocate memory\00", align 1

; Function Attrs: nounwind optsize uwtable
define dso_local i32 @main(i32 noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = tail call fastcc ptr @polybench_alloc_data(i64 noundef 16000000) #8
  %4 = tail call fastcc ptr @polybench_alloc_data(i64 noundef 4000) #8
  %5 = tail call fastcc ptr @polybench_alloc_data(i64 noundef 4000) #8
  %6 = tail call fastcc ptr @polybench_alloc_data(i64 noundef 4000) #8
  %7 = tail call fastcc ptr @polybench_alloc_data(i64 noundef 4000) #8
  br label %8

8:                                                ; preds = %8, %2
  %9 = phi i64 [ 0, %2 ], [ %14, %8 ]
  %10 = phi <2 x i32> [ <i32 0, i32 1>, %2 ], [ %15, %8 ]
  %11 = sitofp <2 x i32> %10 to <2 x double>
  %12 = fmul <2 x double> %11, <double 0x400921FB54442D18, double 0x400921FB54442D18>
  %13 = getelementptr inbounds double, ptr %6, i64 %9
  store <2 x double> %12, ptr %13, align 8, !tbaa !7
  %14 = add nuw nsw i64 %9, 2
  %15 = add <2 x i32> %10, <i32 2, i32 2>
  %16 = icmp eq i64 %14, 4000
  br i1 %16, label %17, label %8, !llvm.loop !11

17:                                               ; preds = %36, %8
  %18 = phi i64 [ %37, %36 ], [ 0, %8 ]
  %19 = trunc i64 %18 to i32
  %20 = sitofp i32 %19 to double
  %21 = fmul double %20, 0x400921FB54442D18
  %22 = getelementptr inbounds double, ptr %7, i64 %18
  store double %21, ptr %22, align 8, !tbaa !7
  %23 = insertelement <2 x double> poison, double %20, i64 0
  %24 = shufflevector <2 x double> %23, <2 x double> poison, <2 x i32> zeroinitializer
  br label %25

25:                                               ; preds = %25, %17
  %26 = phi i64 [ 0, %17 ], [ %33, %25 ]
  %27 = phi <2 x i32> [ <i32 0, i32 1>, %17 ], [ %34, %25 ]
  %28 = add <2 x i32> %27, <i32 1, i32 1>
  %29 = sitofp <2 x i32> %28 to <2 x double>
  %30 = fmul <2 x double> %24, %29
  %31 = fdiv <2 x double> %30, <double 4.000000e+03, double 4.000000e+03>
  %32 = getelementptr inbounds [4000 x double], ptr %3, i64 %18, i64 %26
  store <2 x double> %31, ptr %32, align 8, !tbaa !7
  %33 = add nuw nsw i64 %26, 2
  %34 = add <2 x i32> %27, <i32 2, i32 2>
  %35 = icmp eq i64 %33, 4000
  br i1 %35, label %36, label %25, !llvm.loop !15

36:                                               ; preds = %25
  %37 = add nuw nsw i64 %18, 1
  %38 = icmp eq i64 %37, 4000
  br i1 %38, label %39, label %17, !llvm.loop !16

39:                                               ; preds = %36
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32000) %4, i8 0, i64 32000, i1 false), !tbaa !7
  br label %40

40:                                               ; preds = %61, %39
  %41 = phi i64 [ 0, %39 ], [ %62, %61 ]
  %42 = getelementptr inbounds double, ptr %5, i64 %41
  store double 0.000000e+00, ptr %42, align 8, !tbaa !7
  %43 = getelementptr inbounds double, ptr %7, i64 %41
  br label %44

44:                                               ; preds = %44, %40
  %45 = phi i64 [ 0, %40 ], [ %59, %44 ]
  %46 = getelementptr inbounds double, ptr %4, i64 %45
  %47 = load double, ptr %46, align 8, !tbaa !7
  %48 = load double, ptr %43, align 8, !tbaa !7
  %49 = getelementptr inbounds [4000 x double], ptr %3, i64 %41, i64 %45
  %50 = load double, ptr %49, align 8, !tbaa !7
  %51 = fmul double %48, %50
  %52 = fadd double %47, %51
  store double %52, ptr %46, align 8, !tbaa !7
  %53 = load double, ptr %42, align 8, !tbaa !7
  %54 = load double, ptr %49, align 8, !tbaa !7
  %55 = getelementptr inbounds double, ptr %6, i64 %45
  %56 = load double, ptr %55, align 8, !tbaa !7
  %57 = fmul double %54, %56
  %58 = fadd double %53, %57
  store double %58, ptr %42, align 8, !tbaa !7
  %59 = add nuw nsw i64 %45, 1
  %60 = icmp eq i64 %59, 4000
  br i1 %60, label %61, label %44, !llvm.loop !17

61:                                               ; preds = %44
  %62 = add nuw nsw i64 %41, 1
  %63 = icmp eq i64 %62, 4000
  br i1 %63, label %64, label %40, !llvm.loop !18

64:                                               ; preds = %61
  %65 = tail call noalias dereferenceable_or_null(64001) ptr @malloc(i64 noundef 64001) #9
  %66 = getelementptr inbounds i8, ptr %65, i64 64000
  store i8 0, ptr %66, align 1, !tbaa !19
  br label %67

67:                                               ; preds = %67, %64
  %68 = phi i64 [ 0, %64 ], [ %119, %67 ]
  %69 = getelementptr inbounds double, ptr %4, i64 %68
  %70 = load i64, ptr %69, align 8, !tbaa !7
  %71 = shl nuw nsw i64 %68, 4
  %72 = trunc i64 %70 to i8
  %73 = and i8 %72, 15
  %74 = or i8 %73, 48
  %75 = getelementptr inbounds i8, ptr %65, i64 %71
  store i8 %74, ptr %75, align 1, !tbaa !19
  %76 = getelementptr inbounds i8, ptr %75, i64 1
  store i8 %74, ptr %76, align 1, !tbaa !19
  %77 = lshr i64 %70, 8
  %78 = trunc i64 %77 to i8
  %79 = and i8 %78, 15
  %80 = or i8 %79, 48
  %81 = getelementptr inbounds i8, ptr %75, i64 2
  store i8 %80, ptr %81, align 1, !tbaa !19
  %82 = getelementptr inbounds i8, ptr %75, i64 3
  store i8 %80, ptr %82, align 1, !tbaa !19
  %83 = lshr i64 %70, 16
  %84 = trunc i64 %83 to i8
  %85 = and i8 %84, 15
  %86 = or i8 %85, 48
  %87 = getelementptr inbounds i8, ptr %75, i64 4
  store i8 %86, ptr %87, align 1, !tbaa !19
  %88 = getelementptr inbounds i8, ptr %75, i64 5
  store i8 %86, ptr %88, align 1, !tbaa !19
  %89 = lshr i64 %70, 24
  %90 = trunc i64 %89 to i8
  %91 = and i8 %90, 15
  %92 = or i8 %91, 48
  %93 = getelementptr inbounds i8, ptr %75, i64 6
  store i8 %92, ptr %93, align 1, !tbaa !19
  %94 = getelementptr inbounds i8, ptr %75, i64 7
  store i8 %92, ptr %94, align 1, !tbaa !19
  %95 = lshr i64 %70, 32
  %96 = trunc i64 %95 to i8
  %97 = and i8 %96, 15
  %98 = or i8 %97, 48
  %99 = getelementptr inbounds i8, ptr %75, i64 8
  store i8 %98, ptr %99, align 1, !tbaa !19
  %100 = getelementptr inbounds i8, ptr %75, i64 9
  store i8 %98, ptr %100, align 1, !tbaa !19
  %101 = lshr i64 %70, 40
  %102 = trunc i64 %101 to i8
  %103 = and i8 %102, 15
  %104 = or i8 %103, 48
  %105 = getelementptr inbounds i8, ptr %75, i64 10
  store i8 %104, ptr %105, align 1, !tbaa !19
  %106 = getelementptr inbounds i8, ptr %75, i64 11
  store i8 %104, ptr %106, align 1, !tbaa !19
  %107 = lshr i64 %70, 48
  %108 = trunc i64 %107 to i8
  %109 = and i8 %108, 15
  %110 = or i8 %109, 48
  %111 = getelementptr inbounds i8, ptr %75, i64 12
  store i8 %110, ptr %111, align 1, !tbaa !19
  %112 = getelementptr inbounds i8, ptr %75, i64 13
  store i8 %110, ptr %112, align 1, !tbaa !19
  %113 = lshr i64 %70, 56
  %114 = trunc i64 %113 to i8
  %115 = and i8 %114, 15
  %116 = or i8 %115, 48
  %117 = getelementptr inbounds i8, ptr %75, i64 14
  store i8 %116, ptr %117, align 1, !tbaa !19
  %118 = getelementptr inbounds i8, ptr %75, i64 15
  store i8 %116, ptr %118, align 1, !tbaa !19
  %119 = add nuw nsw i64 %68, 1
  %120 = icmp eq i64 %119, 4000
  br i1 %120, label %121, label %67, !llvm.loop !20

121:                                              ; preds = %67
  %122 = getelementptr inbounds i8, ptr %65, i64 4000
  store i8 0, ptr %122, align 1, !tbaa !19
  %123 = load ptr, ptr @stderr, align 8, !tbaa !21
  %124 = tail call i32 @fputs(ptr noundef nonnull %65, ptr noundef %123) #10
  br label %125

125:                                              ; preds = %125, %121
  %126 = phi i64 [ 0, %121 ], [ %177, %125 ]
  %127 = getelementptr inbounds double, ptr %5, i64 %126
  %128 = load i64, ptr %127, align 8, !tbaa !7
  %129 = shl nuw nsw i64 %126, 4
  %130 = trunc i64 %128 to i8
  %131 = and i8 %130, 15
  %132 = or i8 %131, 48
  %133 = getelementptr inbounds i8, ptr %65, i64 %129
  store i8 %132, ptr %133, align 1, !tbaa !19
  %134 = getelementptr inbounds i8, ptr %133, i64 1
  store i8 %132, ptr %134, align 1, !tbaa !19
  %135 = lshr i64 %128, 8
  %136 = trunc i64 %135 to i8
  %137 = and i8 %136, 15
  %138 = or i8 %137, 48
  %139 = getelementptr inbounds i8, ptr %133, i64 2
  store i8 %138, ptr %139, align 1, !tbaa !19
  %140 = getelementptr inbounds i8, ptr %133, i64 3
  store i8 %138, ptr %140, align 1, !tbaa !19
  %141 = lshr i64 %128, 16
  %142 = trunc i64 %141 to i8
  %143 = and i8 %142, 15
  %144 = or i8 %143, 48
  %145 = getelementptr inbounds i8, ptr %133, i64 4
  store i8 %144, ptr %145, align 1, !tbaa !19
  %146 = getelementptr inbounds i8, ptr %133, i64 5
  store i8 %144, ptr %146, align 1, !tbaa !19
  %147 = lshr i64 %128, 24
  %148 = trunc i64 %147 to i8
  %149 = and i8 %148, 15
  %150 = or i8 %149, 48
  %151 = getelementptr inbounds i8, ptr %133, i64 6
  store i8 %150, ptr %151, align 1, !tbaa !19
  %152 = getelementptr inbounds i8, ptr %133, i64 7
  store i8 %150, ptr %152, align 1, !tbaa !19
  %153 = lshr i64 %128, 32
  %154 = trunc i64 %153 to i8
  %155 = and i8 %154, 15
  %156 = or i8 %155, 48
  %157 = getelementptr inbounds i8, ptr %133, i64 8
  store i8 %156, ptr %157, align 1, !tbaa !19
  %158 = getelementptr inbounds i8, ptr %133, i64 9
  store i8 %156, ptr %158, align 1, !tbaa !19
  %159 = lshr i64 %128, 40
  %160 = trunc i64 %159 to i8
  %161 = and i8 %160, 15
  %162 = or i8 %161, 48
  %163 = getelementptr inbounds i8, ptr %133, i64 10
  store i8 %162, ptr %163, align 1, !tbaa !19
  %164 = getelementptr inbounds i8, ptr %133, i64 11
  store i8 %162, ptr %164, align 1, !tbaa !19
  %165 = lshr i64 %128, 48
  %166 = trunc i64 %165 to i8
  %167 = and i8 %166, 15
  %168 = or i8 %167, 48
  %169 = getelementptr inbounds i8, ptr %133, i64 12
  store i8 %168, ptr %169, align 1, !tbaa !19
  %170 = getelementptr inbounds i8, ptr %133, i64 13
  store i8 %168, ptr %170, align 1, !tbaa !19
  %171 = lshr i64 %128, 56
  %172 = trunc i64 %171 to i8
  %173 = and i8 %172, 15
  %174 = or i8 %173, 48
  %175 = getelementptr inbounds i8, ptr %133, i64 14
  store i8 %174, ptr %175, align 1, !tbaa !19
  %176 = getelementptr inbounds i8, ptr %133, i64 15
  store i8 %174, ptr %176, align 1, !tbaa !19
  %177 = add nuw nsw i64 %126, 1
  %178 = icmp eq i64 %177, 4000
  br i1 %178, label %179, label %125, !llvm.loop !23

179:                                              ; preds = %125
  store i8 0, ptr %122, align 1, !tbaa !19
  %180 = load ptr, ptr @stderr, align 8, !tbaa !21
  %181 = tail call i32 @fputs(ptr noundef nonnull %65, ptr noundef %180) #10
  tail call void @free(ptr noundef nonnull %65) #11
  tail call void @free(ptr noundef %3) #11
  tail call void @free(ptr noundef %4) #11
  tail call void @free(ptr noundef nonnull %5) #11
  tail call void @free(ptr noundef %6) #11
  tail call void @free(ptr noundef %7) #11
  ret i32 0
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc ptr @polybench_alloc_data(i64 noundef %0) unnamed_addr #0 {
  %2 = alloca ptr, align 8
  %3 = shl nuw nsw i64 %0, 3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #12
  store ptr null, ptr %2, align 8, !tbaa !21
  %4 = call i32 @posix_memalign(ptr noundef nonnull %2, i64 noundef 32, i64 noundef %3) #11
  %5 = load ptr, ptr %2, align 8, !tbaa !21
  %6 = icmp eq ptr %5, null
  %7 = icmp ne i32 %4, 0
  %8 = select i1 %6, i1 true, i1 %7
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load ptr, ptr @stderr, align 8, !tbaa !21
  %11 = call i64 @fwrite(ptr nonnull @.str.1, i64 50, i64 1, ptr %10) #13
  call void @exit(i32 noundef 1) #14
  unreachable

12:                                               ; preds = %1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #12
  ret ptr %5
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fputs(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: nofree nounwind optsize
declare i32 @posix_memalign(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

attributes #0 = { nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nofree nounwind }
attributes #7 = { noreturn nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { optsize }
attributes #9 = { nounwind optsize allocsize(0) }
attributes #10 = { cold optsize }
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
!15 = distinct !{!15, !12, !13, !14}
!16 = distinct !{!16, !12}
!17 = distinct !{!17, !12}
!18 = distinct !{!18, !12}
!19 = !{!9, !9, i64 0}
!20 = distinct !{!20, !12}
!21 = !{!22, !22, i64 0}
!22 = !{!"any pointer", !9, i64 0}
!23 = distinct !{!23, !12}
