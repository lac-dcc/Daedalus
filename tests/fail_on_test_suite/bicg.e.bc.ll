; ModuleID = '/src/llvm-test-suite/build/SingleSource/Benchmarks/Polybench/linear-algebra/kernels/bicg/bicg.e.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [51 x i8] c"[PolyBench] posix_memalign: cannot allocate memory\00", align 1

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
  %3 = tail call ptr @polybench_alloc_data(i64 noundef 16000000, i32 noundef 8) #12
  %4 = tail call ptr @polybench_alloc_data(i64 noundef 4000, i32 noundef 8) #12
  %5 = tail call ptr @polybench_alloc_data(i64 noundef 4000, i32 noundef 8) #12
  %6 = tail call ptr @polybench_alloc_data(i64 noundef 4000, i32 noundef 8) #12
  %7 = tail call ptr @polybench_alloc_data(i64 noundef 4000, i32 noundef 8) #12
  br label %8

8:                                                ; preds = %8, %2
  %9 = phi i64 [ 0, %2 ], [ %14, %8 ]
  %10 = phi <2 x i32> [ <i32 0, i32 1>, %2 ], [ %15, %8 ]
  %11 = sitofp <2 x i32> %10 to <2 x double>
  %12 = fmul <2 x double> %11, <double 0x400921FB54442D18, double 0x400921FB54442D18>
  %13 = getelementptr inbounds double, ptr %6, i64 %9
  store <2 x double> %12, ptr %13, align 8, !tbaa !11
  %14 = add nuw i64 %9, 2
  %15 = add <2 x i32> %10, <i32 2, i32 2>
  %16 = icmp eq i64 %14, 4000
  br i1 %16, label %17, label %8, !llvm.loop !13

17:                                               ; preds = %37, %8
  %18 = phi i64 [ %38, %37 ], [ 0, %8 ]
  %19 = trunc i64 %18 to i32
  %20 = sitofp i32 %19 to double
  %21 = fmul double %20, 0x400921FB54442D18
  %22 = getelementptr inbounds double, ptr %7, i64 %18
  store double %21, ptr %22, align 8, !tbaa !11
  %23 = insertelement <2 x double> poison, double %20, i64 0
  %24 = shufflevector <2 x double> %23, <2 x double> poison, <2 x i32> zeroinitializer
  br label %25

25:                                               ; preds = %25, %17
  %26 = phi i64 [ 0, %17 ], [ %34, %25 ]
  %27 = phi <2 x i64> [ <i64 0, i64 1>, %17 ], [ %35, %25 ]
  %28 = trunc <2 x i64> %27 to <2 x i32>
  %29 = add <2 x i32> %28, <i32 1, i32 1>
  %30 = sitofp <2 x i32> %29 to <2 x double>
  %31 = fmul <2 x double> %24, %30
  %32 = fdiv <2 x double> %31, <double 4.000000e+03, double 4.000000e+03>
  %33 = getelementptr inbounds [4000 x double], ptr %3, i64 %18, i64 %26
  store <2 x double> %32, ptr %33, align 8, !tbaa !11
  %34 = add nuw i64 %26, 2
  %35 = add <2 x i64> %27, <i64 2, i64 2>
  %36 = icmp eq i64 %34, 4000
  br i1 %36, label %37, label %25, !llvm.loop !17

37:                                               ; preds = %25
  %38 = add nuw nsw i64 %18, 1
  %39 = icmp eq i64 %38, 4000
  br i1 %39, label %40, label %17, !llvm.loop !18

40:                                               ; preds = %37
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32000) %4, i8 0, i64 32000, i1 false), !tbaa !11
  br label %41

41:                                               ; preds = %62, %40
  %42 = phi i64 [ 0, %40 ], [ %63, %62 ]
  %43 = getelementptr inbounds double, ptr %5, i64 %42
  store double 0.000000e+00, ptr %43, align 8, !tbaa !11
  %44 = getelementptr inbounds double, ptr %7, i64 %42
  br label %45

45:                                               ; preds = %45, %41
  %46 = phi i64 [ 0, %41 ], [ %60, %45 ]
  %47 = getelementptr inbounds double, ptr %4, i64 %46
  %48 = load double, ptr %47, align 8, !tbaa !11
  %49 = load double, ptr %44, align 8, !tbaa !11
  %50 = getelementptr inbounds [4000 x double], ptr %3, i64 %42, i64 %46
  %51 = load double, ptr %50, align 8, !tbaa !11
  %52 = fmul double %49, %51
  %53 = fadd double %48, %52
  store double %53, ptr %47, align 8, !tbaa !11
  %54 = load double, ptr %43, align 8, !tbaa !11
  %55 = load double, ptr %50, align 8, !tbaa !11
  %56 = getelementptr inbounds double, ptr %6, i64 %46
  %57 = load double, ptr %56, align 8, !tbaa !11
  %58 = fmul double %55, %57
  %59 = fadd double %54, %58
  store double %59, ptr %43, align 8, !tbaa !11
  %60 = add nuw nsw i64 %46, 1
  %61 = icmp eq i64 %60, 4000
  br i1 %61, label %62, label %45, !llvm.loop !19

62:                                               ; preds = %45
  %63 = add nuw nsw i64 %42, 1
  %64 = icmp eq i64 %63, 4000
  br i1 %64, label %65, label %41, !llvm.loop !20

65:                                               ; preds = %62
  %66 = tail call noalias dereferenceable_or_null(64001) ptr @malloc(i64 noundef 64001) #13
  %67 = getelementptr inbounds i8, ptr %66, i64 64000
  store i8 0, ptr %67, align 1, !tbaa !21
  br label %68

68:                                               ; preds = %68, %65
  %69 = phi i64 [ 0, %65 ], [ %120, %68 ]
  %70 = getelementptr inbounds double, ptr %4, i64 %69
  %71 = load i64, ptr %70, align 8, !tbaa !11
  %72 = shl nuw nsw i64 %69, 4
  %73 = trunc i64 %71 to i8
  %74 = and i8 %73, 15
  %75 = or i8 %74, 48
  %76 = getelementptr inbounds i8, ptr %66, i64 %72
  store i8 %75, ptr %76, align 1, !tbaa !21
  %77 = getelementptr inbounds i8, ptr %76, i64 1
  store i8 %75, ptr %77, align 1, !tbaa !21
  %78 = lshr i64 %71, 8
  %79 = trunc i64 %78 to i8
  %80 = and i8 %79, 15
  %81 = or i8 %80, 48
  %82 = getelementptr inbounds i8, ptr %76, i64 2
  store i8 %81, ptr %82, align 1, !tbaa !21
  %83 = getelementptr inbounds i8, ptr %76, i64 3
  store i8 %81, ptr %83, align 1, !tbaa !21
  %84 = lshr i64 %71, 16
  %85 = trunc i64 %84 to i8
  %86 = and i8 %85, 15
  %87 = or i8 %86, 48
  %88 = getelementptr inbounds i8, ptr %76, i64 4
  store i8 %87, ptr %88, align 1, !tbaa !21
  %89 = getelementptr inbounds i8, ptr %76, i64 5
  store i8 %87, ptr %89, align 1, !tbaa !21
  %90 = lshr i64 %71, 24
  %91 = trunc i64 %90 to i8
  %92 = and i8 %91, 15
  %93 = or i8 %92, 48
  %94 = getelementptr inbounds i8, ptr %76, i64 6
  store i8 %93, ptr %94, align 1, !tbaa !21
  %95 = getelementptr inbounds i8, ptr %76, i64 7
  store i8 %93, ptr %95, align 1, !tbaa !21
  %96 = lshr i64 %71, 32
  %97 = trunc i64 %96 to i8
  %98 = and i8 %97, 15
  %99 = or i8 %98, 48
  %100 = getelementptr inbounds i8, ptr %76, i64 8
  store i8 %99, ptr %100, align 1, !tbaa !21
  %101 = getelementptr inbounds i8, ptr %76, i64 9
  store i8 %99, ptr %101, align 1, !tbaa !21
  %102 = lshr i64 %71, 40
  %103 = trunc i64 %102 to i8
  %104 = and i8 %103, 15
  %105 = or i8 %104, 48
  %106 = getelementptr inbounds i8, ptr %76, i64 10
  store i8 %105, ptr %106, align 1, !tbaa !21
  %107 = getelementptr inbounds i8, ptr %76, i64 11
  store i8 %105, ptr %107, align 1, !tbaa !21
  %108 = lshr i64 %71, 48
  %109 = trunc i64 %108 to i8
  %110 = and i8 %109, 15
  %111 = or i8 %110, 48
  %112 = getelementptr inbounds i8, ptr %76, i64 12
  store i8 %111, ptr %112, align 1, !tbaa !21
  %113 = getelementptr inbounds i8, ptr %76, i64 13
  store i8 %111, ptr %113, align 1, !tbaa !21
  %114 = lshr i64 %71, 56
  %115 = trunc i64 %114 to i8
  %116 = and i8 %115, 15
  %117 = or i8 %116, 48
  %118 = getelementptr inbounds i8, ptr %76, i64 14
  store i8 %117, ptr %118, align 1, !tbaa !21
  %119 = getelementptr inbounds i8, ptr %76, i64 15
  store i8 %117, ptr %119, align 1, !tbaa !21
  %120 = add nuw nsw i64 %69, 1
  %121 = icmp eq i64 %120, 4000
  br i1 %121, label %122, label %68, !llvm.loop !22

122:                                              ; preds = %68
  %123 = getelementptr inbounds i8, ptr %66, i64 4000
  store i8 0, ptr %123, align 1, !tbaa !21
  %124 = load ptr, ptr @stderr, align 8, !tbaa !7
  %125 = tail call i32 @fputs(ptr noundef nonnull %66, ptr noundef %124) #14
  br label %126

126:                                              ; preds = %126, %122
  %127 = phi i64 [ 0, %122 ], [ %178, %126 ]
  %128 = getelementptr inbounds double, ptr %5, i64 %127
  %129 = load i64, ptr %128, align 8, !tbaa !11
  %130 = shl nuw nsw i64 %127, 4
  %131 = trunc i64 %129 to i8
  %132 = and i8 %131, 15
  %133 = or i8 %132, 48
  %134 = getelementptr inbounds i8, ptr %66, i64 %130
  store i8 %133, ptr %134, align 1, !tbaa !21
  %135 = getelementptr inbounds i8, ptr %134, i64 1
  store i8 %133, ptr %135, align 1, !tbaa !21
  %136 = lshr i64 %129, 8
  %137 = trunc i64 %136 to i8
  %138 = and i8 %137, 15
  %139 = or i8 %138, 48
  %140 = getelementptr inbounds i8, ptr %134, i64 2
  store i8 %139, ptr %140, align 1, !tbaa !21
  %141 = getelementptr inbounds i8, ptr %134, i64 3
  store i8 %139, ptr %141, align 1, !tbaa !21
  %142 = lshr i64 %129, 16
  %143 = trunc i64 %142 to i8
  %144 = and i8 %143, 15
  %145 = or i8 %144, 48
  %146 = getelementptr inbounds i8, ptr %134, i64 4
  store i8 %145, ptr %146, align 1, !tbaa !21
  %147 = getelementptr inbounds i8, ptr %134, i64 5
  store i8 %145, ptr %147, align 1, !tbaa !21
  %148 = lshr i64 %129, 24
  %149 = trunc i64 %148 to i8
  %150 = and i8 %149, 15
  %151 = or i8 %150, 48
  %152 = getelementptr inbounds i8, ptr %134, i64 6
  store i8 %151, ptr %152, align 1, !tbaa !21
  %153 = getelementptr inbounds i8, ptr %134, i64 7
  store i8 %151, ptr %153, align 1, !tbaa !21
  %154 = lshr i64 %129, 32
  %155 = trunc i64 %154 to i8
  %156 = and i8 %155, 15
  %157 = or i8 %156, 48
  %158 = getelementptr inbounds i8, ptr %134, i64 8
  store i8 %157, ptr %158, align 1, !tbaa !21
  %159 = getelementptr inbounds i8, ptr %134, i64 9
  store i8 %157, ptr %159, align 1, !tbaa !21
  %160 = lshr i64 %129, 40
  %161 = trunc i64 %160 to i8
  %162 = and i8 %161, 15
  %163 = or i8 %162, 48
  %164 = getelementptr inbounds i8, ptr %134, i64 10
  store i8 %163, ptr %164, align 1, !tbaa !21
  %165 = getelementptr inbounds i8, ptr %134, i64 11
  store i8 %163, ptr %165, align 1, !tbaa !21
  %166 = lshr i64 %129, 48
  %167 = trunc i64 %166 to i8
  %168 = and i8 %167, 15
  %169 = or i8 %168, 48
  %170 = getelementptr inbounds i8, ptr %134, i64 12
  store i8 %169, ptr %170, align 1, !tbaa !21
  %171 = getelementptr inbounds i8, ptr %134, i64 13
  store i8 %169, ptr %171, align 1, !tbaa !21
  %172 = lshr i64 %129, 56
  %173 = trunc i64 %172 to i8
  %174 = and i8 %173, 15
  %175 = or i8 %174, 48
  %176 = getelementptr inbounds i8, ptr %134, i64 14
  store i8 %175, ptr %176, align 1, !tbaa !21
  %177 = getelementptr inbounds i8, ptr %134, i64 15
  store i8 %175, ptr %177, align 1, !tbaa !21
  %178 = add nuw nsw i64 %127, 1
  %179 = icmp eq i64 %178, 4000
  br i1 %179, label %180, label %126, !llvm.loop !23

180:                                              ; preds = %126
  store i8 0, ptr %123, align 1, !tbaa !21
  %181 = load ptr, ptr @stderr, align 8, !tbaa !7
  %182 = tail call i32 @fputs(ptr noundef nonnull %66, ptr noundef %181) #14
  tail call void @free(ptr noundef nonnull %66) #9
  tail call void @free(ptr noundef %3) #9
  tail call void @free(ptr noundef %4) #9
  tail call void @free(ptr noundef nonnull %5) #9
  tail call void @free(ptr noundef %6) #9
  tail call void @free(ptr noundef %7) #9
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

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
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }
attributes #9 = { nounwind optsize }
attributes #10 = { cold }
attributes #11 = { noreturn nounwind optsize }
attributes #12 = { optsize }
attributes #13 = { nounwind optsize allocsize(0) }
attributes #14 = { cold optsize }

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
!17 = distinct !{!17, !14, !15, !16}
!18 = distinct !{!18, !14}
!19 = distinct !{!19, !14}
!20 = distinct !{!20, !14}
!21 = !{!9, !9, i64 0}
!22 = distinct !{!22, !14}
!23 = distinct !{!23, !14}
