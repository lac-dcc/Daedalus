; ModuleID = '/src/llvm-test-suite/build/SingleSource/Benchmarks/Polybench/linear-algebra/kernels/2mm/2mm.e.bc'
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
  %3 = tail call ptr @polybench_alloc_data(i64 noundef 1048576, i32 noundef 8) #11
  %4 = tail call ptr @polybench_alloc_data(i64 noundef 1048576, i32 noundef 8) #11
  %5 = tail call ptr @polybench_alloc_data(i64 noundef 1048576, i32 noundef 8) #11
  %6 = tail call ptr @polybench_alloc_data(i64 noundef 1048576, i32 noundef 8) #11
  %7 = tail call ptr @polybench_alloc_data(i64 noundef 1048576, i32 noundef 8) #11
  br label %8

8:                                                ; preds = %24, %2
  %9 = phi i64 [ 0, %2 ], [ %25, %24 ]
  %10 = trunc i64 %9 to i32
  %11 = sitofp i32 %10 to double
  %12 = insertelement <2 x double> poison, double %11, i64 0
  %13 = shufflevector <2 x double> %12, <2 x double> poison, <2 x i32> zeroinitializer
  br label %14

14:                                               ; preds = %14, %8
  %15 = phi i64 [ 0, %8 ], [ %21, %14 ]
  %16 = phi <2 x i32> [ <i32 0, i32 1>, %8 ], [ %22, %14 ]
  %17 = sitofp <2 x i32> %16 to <2 x double>
  %18 = fmul <2 x double> %13, %17
  %19 = fmul <2 x double> %18, <double 0x3F50000000000000, double 0x3F50000000000000>
  %20 = getelementptr inbounds [1024 x double], ptr %4, i64 %9, i64 %15
  store <2 x double> %19, ptr %20, align 8, !tbaa !11
  %21 = add nuw i64 %15, 2
  %22 = add <2 x i32> %16, <i32 2, i32 2>
  %23 = icmp eq i64 %21, 1024
  br i1 %23, label %24, label %14, !llvm.loop !13

24:                                               ; preds = %14
  %25 = add nuw nsw i64 %9, 1
  %26 = icmp eq i64 %25, 1024
  br i1 %26, label %27, label %8, !llvm.loop !17

27:                                               ; preds = %45, %24
  %28 = phi i64 [ %46, %45 ], [ 0, %24 ]
  %29 = trunc i64 %28 to i32
  %30 = sitofp i32 %29 to double
  %31 = insertelement <2 x double> poison, double %30, i64 0
  %32 = shufflevector <2 x double> %31, <2 x double> poison, <2 x i32> zeroinitializer
  br label %33

33:                                               ; preds = %33, %27
  %34 = phi i64 [ 0, %27 ], [ %42, %33 ]
  %35 = phi <2 x i64> [ <i64 0, i64 1>, %27 ], [ %43, %33 ]
  %36 = trunc <2 x i64> %35 to <2 x i32>
  %37 = add <2 x i32> %36, <i32 1, i32 1>
  %38 = sitofp <2 x i32> %37 to <2 x double>
  %39 = fmul <2 x double> %32, %38
  %40 = fmul <2 x double> %39, <double 0x3F50000000000000, double 0x3F50000000000000>
  %41 = getelementptr inbounds [1024 x double], ptr %5, i64 %28, i64 %34
  store <2 x double> %40, ptr %41, align 8, !tbaa !11
  %42 = add nuw i64 %34, 2
  %43 = add <2 x i64> %35, <i64 2, i64 2>
  %44 = icmp eq i64 %42, 1024
  br i1 %44, label %45, label %33, !llvm.loop !18

45:                                               ; preds = %33
  %46 = add nuw nsw i64 %28, 1
  %47 = icmp eq i64 %46, 1024
  br i1 %47, label %48, label %27, !llvm.loop !19

48:                                               ; preds = %65, %45
  %49 = phi i64 [ %66, %65 ], [ 0, %45 ]
  %50 = trunc i64 %49 to i32
  %51 = sitofp i32 %50 to double
  %52 = insertelement <2 x double> poison, double %51, i64 0
  %53 = shufflevector <2 x double> %52, <2 x double> poison, <2 x i32> zeroinitializer
  br label %54

54:                                               ; preds = %54, %48
  %55 = phi i64 [ 0, %48 ], [ %62, %54 ]
  %56 = phi <2 x i32> [ <i32 0, i32 1>, %48 ], [ %63, %54 ]
  %57 = add <2 x i32> %56, <i32 3, i32 3>
  %58 = sitofp <2 x i32> %57 to <2 x double>
  %59 = fmul <2 x double> %53, %58
  %60 = fmul <2 x double> %59, <double 0x3F50000000000000, double 0x3F50000000000000>
  %61 = getelementptr inbounds [1024 x double], ptr %6, i64 %49, i64 %55
  store <2 x double> %60, ptr %61, align 8, !tbaa !11
  %62 = add nuw i64 %55, 2
  %63 = add <2 x i32> %56, <i32 2, i32 2>
  %64 = icmp eq i64 %62, 1024
  br i1 %64, label %65, label %54, !llvm.loop !20

65:                                               ; preds = %54
  %66 = add nuw nsw i64 %49, 1
  %67 = icmp eq i64 %66, 1024
  br i1 %67, label %68, label %48, !llvm.loop !21

68:                                               ; preds = %85, %65
  %69 = phi i64 [ %86, %85 ], [ 0, %65 ]
  %70 = trunc i64 %69 to i32
  %71 = sitofp i32 %70 to double
  %72 = insertelement <2 x double> poison, double %71, i64 0
  %73 = shufflevector <2 x double> %72, <2 x double> poison, <2 x i32> zeroinitializer
  br label %74

74:                                               ; preds = %74, %68
  %75 = phi i64 [ 0, %68 ], [ %82, %74 ]
  %76 = phi <2 x i32> [ <i32 0, i32 1>, %68 ], [ %83, %74 ]
  %77 = add <2 x i32> %76, <i32 2, i32 2>
  %78 = sitofp <2 x i32> %77 to <2 x double>
  %79 = fmul <2 x double> %73, %78
  %80 = fmul <2 x double> %79, <double 0x3F50000000000000, double 0x3F50000000000000>
  %81 = getelementptr inbounds [1024 x double], ptr %7, i64 %69, i64 %75
  store <2 x double> %80, ptr %81, align 8, !tbaa !11
  %82 = add nuw i64 %75, 2
  %83 = add <2 x i32> %76, <i32 2, i32 2>
  %84 = icmp eq i64 %82, 1024
  br i1 %84, label %85, label %74, !llvm.loop !22

85:                                               ; preds = %74
  %86 = add nuw nsw i64 %69, 1
  %87 = icmp eq i64 %86, 1024
  br i1 %87, label %88, label %68, !llvm.loop !23

88:                                               ; preds = %108, %85
  %89 = phi i64 [ %109, %108 ], [ 0, %85 ]
  br label %90

90:                                               ; preds = %105, %88
  %91 = phi i64 [ 0, %88 ], [ %106, %105 ]
  %92 = getelementptr inbounds [1024 x double], ptr %3, i64 %89, i64 %91
  store double 0.000000e+00, ptr %92, align 8, !tbaa !11
  br label %93

93:                                               ; preds = %93, %90
  %94 = phi i64 [ 0, %90 ], [ %103, %93 ]
  %95 = phi double [ 0.000000e+00, %90 ], [ %102, %93 ]
  %96 = getelementptr inbounds [1024 x double], ptr %4, i64 %89, i64 %94
  %97 = load double, ptr %96, align 8, !tbaa !11
  %98 = fmul double %97, 3.241200e+04
  %99 = getelementptr inbounds [1024 x double], ptr %5, i64 %94, i64 %91
  %100 = load double, ptr %99, align 8, !tbaa !11
  %101 = fmul double %98, %100
  %102 = fadd double %95, %101
  store double %102, ptr %92, align 8, !tbaa !11
  %103 = add nuw nsw i64 %94, 1
  %104 = icmp eq i64 %103, 1024
  br i1 %104, label %105, label %93, !llvm.loop !24

105:                                              ; preds = %93
  %106 = add nuw nsw i64 %91, 1
  %107 = icmp eq i64 %106, 1024
  br i1 %107, label %108, label %90, !llvm.loop !25

108:                                              ; preds = %105
  %109 = add nuw nsw i64 %89, 1
  %110 = icmp eq i64 %109, 1024
  br i1 %110, label %111, label %88, !llvm.loop !26

111:                                              ; preds = %132, %108
  %112 = phi i64 [ %133, %132 ], [ 0, %108 ]
  br label %113

113:                                              ; preds = %129, %111
  %114 = phi i64 [ 0, %111 ], [ %130, %129 ]
  %115 = getelementptr inbounds [1024 x double], ptr %7, i64 %112, i64 %114
  %116 = load double, ptr %115, align 8, !tbaa !11
  %117 = fmul double %116, 2.123000e+03
  store double %117, ptr %115, align 8, !tbaa !11
  br label %118

118:                                              ; preds = %118, %113
  %119 = phi i64 [ 0, %113 ], [ %127, %118 ]
  %120 = phi double [ %117, %113 ], [ %126, %118 ]
  %121 = getelementptr inbounds [1024 x double], ptr %3, i64 %112, i64 %119
  %122 = load double, ptr %121, align 8, !tbaa !11
  %123 = getelementptr inbounds [1024 x double], ptr %6, i64 %119, i64 %114
  %124 = load double, ptr %123, align 8, !tbaa !11
  %125 = fmul double %122, %124
  %126 = fadd double %120, %125
  store double %126, ptr %115, align 8, !tbaa !11
  %127 = add nuw nsw i64 %119, 1
  %128 = icmp eq i64 %127, 1024
  br i1 %128, label %129, label %118, !llvm.loop !27

129:                                              ; preds = %118
  %130 = add nuw nsw i64 %114, 1
  %131 = icmp eq i64 %130, 1024
  br i1 %131, label %132, label %113, !llvm.loop !28

132:                                              ; preds = %129
  %133 = add nuw nsw i64 %112, 1
  %134 = icmp eq i64 %133, 1024
  br i1 %134, label %135, label %111, !llvm.loop !29

135:                                              ; preds = %132
  %136 = tail call noalias dereferenceable_or_null(16385) ptr @malloc(i64 noundef 16385) #12
  %137 = getelementptr inbounds i8, ptr %136, i64 16384
  store i8 0, ptr %137, align 1, !tbaa !30
  br label %138

138:                                              ; preds = %194, %135
  %139 = phi i64 [ 0, %135 ], [ %197, %194 ]
  br label %140

140:                                              ; preds = %140, %138
  %141 = phi i64 [ 0, %138 ], [ %192, %140 ]
  %142 = getelementptr inbounds [1024 x double], ptr %7, i64 %139, i64 %141
  %143 = load i64, ptr %142, align 8, !tbaa !11
  %144 = shl nuw nsw i64 %141, 4
  %145 = trunc i64 %143 to i8
  %146 = and i8 %145, 15
  %147 = or i8 %146, 48
  %148 = getelementptr inbounds i8, ptr %136, i64 %144
  store i8 %147, ptr %148, align 1, !tbaa !30
  %149 = getelementptr inbounds i8, ptr %148, i64 1
  store i8 %147, ptr %149, align 1, !tbaa !30
  %150 = lshr i64 %143, 8
  %151 = trunc i64 %150 to i8
  %152 = and i8 %151, 15
  %153 = or i8 %152, 48
  %154 = getelementptr inbounds i8, ptr %148, i64 2
  store i8 %153, ptr %154, align 1, !tbaa !30
  %155 = getelementptr inbounds i8, ptr %148, i64 3
  store i8 %153, ptr %155, align 1, !tbaa !30
  %156 = lshr i64 %143, 16
  %157 = trunc i64 %156 to i8
  %158 = and i8 %157, 15
  %159 = or i8 %158, 48
  %160 = getelementptr inbounds i8, ptr %148, i64 4
  store i8 %159, ptr %160, align 1, !tbaa !30
  %161 = getelementptr inbounds i8, ptr %148, i64 5
  store i8 %159, ptr %161, align 1, !tbaa !30
  %162 = lshr i64 %143, 24
  %163 = trunc i64 %162 to i8
  %164 = and i8 %163, 15
  %165 = or i8 %164, 48
  %166 = getelementptr inbounds i8, ptr %148, i64 6
  store i8 %165, ptr %166, align 1, !tbaa !30
  %167 = getelementptr inbounds i8, ptr %148, i64 7
  store i8 %165, ptr %167, align 1, !tbaa !30
  %168 = lshr i64 %143, 32
  %169 = trunc i64 %168 to i8
  %170 = and i8 %169, 15
  %171 = or i8 %170, 48
  %172 = getelementptr inbounds i8, ptr %148, i64 8
  store i8 %171, ptr %172, align 1, !tbaa !30
  %173 = getelementptr inbounds i8, ptr %148, i64 9
  store i8 %171, ptr %173, align 1, !tbaa !30
  %174 = lshr i64 %143, 40
  %175 = trunc i64 %174 to i8
  %176 = and i8 %175, 15
  %177 = or i8 %176, 48
  %178 = getelementptr inbounds i8, ptr %148, i64 10
  store i8 %177, ptr %178, align 1, !tbaa !30
  %179 = getelementptr inbounds i8, ptr %148, i64 11
  store i8 %177, ptr %179, align 1, !tbaa !30
  %180 = lshr i64 %143, 48
  %181 = trunc i64 %180 to i8
  %182 = and i8 %181, 15
  %183 = or i8 %182, 48
  %184 = getelementptr inbounds i8, ptr %148, i64 12
  store i8 %183, ptr %184, align 1, !tbaa !30
  %185 = getelementptr inbounds i8, ptr %148, i64 13
  store i8 %183, ptr %185, align 1, !tbaa !30
  %186 = lshr i64 %143, 56
  %187 = trunc i64 %186 to i8
  %188 = and i8 %187, 15
  %189 = or i8 %188, 48
  %190 = getelementptr inbounds i8, ptr %148, i64 14
  store i8 %189, ptr %190, align 1, !tbaa !30
  %191 = getelementptr inbounds i8, ptr %148, i64 15
  store i8 %189, ptr %191, align 1, !tbaa !30
  %192 = add nuw nsw i64 %141, 1
  %193 = icmp eq i64 %192, 1024
  br i1 %193, label %194, label %140, !llvm.loop !31

194:                                              ; preds = %140
  %195 = load ptr, ptr @stderr, align 8, !tbaa !7
  %196 = tail call i32 @fputs(ptr noundef nonnull %136, ptr noundef %195) #13
  %197 = add nuw nsw i64 %139, 1
  %198 = icmp eq i64 %197, 1024
  br i1 %198, label %199, label %138, !llvm.loop !32

199:                                              ; preds = %194
  tail call void @free(ptr noundef nonnull %136) #8
  tail call void @free(ptr noundef %3) #8
  tail call void @free(ptr noundef %4) #8
  tail call void @free(ptr noundef %5) #8
  tail call void @free(ptr noundef %6) #8
  tail call void @free(ptr noundef nonnull %7) #8
  ret i32 0
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fputs(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #6

attributes #0 = { nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
attributes #4 = { noreturn nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { nounwind optsize }
attributes #9 = { cold }
attributes #10 = { noreturn nounwind optsize }
attributes #11 = { optsize }
attributes #12 = { nounwind optsize allocsize(0) }
attributes #13 = { cold optsize }

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
!18 = distinct !{!18, !14, !15, !16}
!19 = distinct !{!19, !14}
!20 = distinct !{!20, !14, !15, !16}
!21 = distinct !{!21, !14}
!22 = distinct !{!22, !14, !15, !16}
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
