; ModuleID = '3mm.e.bc.ll'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [51 x i8] c"[PolyBench] posix_memalign: cannot allocate memory\00", align 1

; Function Attrs: nounwind optsize uwtable
define dso_local i32 @main(i32 noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = tail call fastcc ptr @polybench_alloc_data() #7
  %4 = tail call fastcc ptr @polybench_alloc_data() #7
  %5 = tail call fastcc ptr @polybench_alloc_data() #7
  %6 = tail call fastcc ptr @polybench_alloc_data() #7
  %7 = tail call fastcc ptr @polybench_alloc_data() #7
  %8 = tail call fastcc ptr @polybench_alloc_data() #7
  %9 = tail call fastcc ptr @polybench_alloc_data() #7
  br label %10

10:                                               ; preds = %26, %2
  %11 = phi i64 [ 0, %2 ], [ %27, %26 ]
  %12 = trunc i64 %11 to i32
  %13 = sitofp i32 %12 to double
  %14 = insertelement <2 x double> poison, double %13, i64 0
  %15 = shufflevector <2 x double> %14, <2 x double> poison, <2 x i32> zeroinitializer
  br label %16

16:                                               ; preds = %16, %10
  %17 = phi i64 [ 0, %10 ], [ %23, %16 ]
  %18 = phi <2 x i32> [ <i32 0, i32 1>, %10 ], [ %24, %16 ]
  %19 = sitofp <2 x i32> %18 to <2 x double>
  %20 = fmul <2 x double> %15, %19
  %21 = fmul <2 x double> %20, <double 0x3F50000000000000, double 0x3F50000000000000>
  %22 = getelementptr inbounds [1024 x double], ptr %4, i64 %11, i64 %17
  store <2 x double> %21, ptr %22, align 8, !tbaa !7
  %23 = add nuw nsw i64 %17, 2
  %24 = add <2 x i32> %18, <i32 2, i32 2>
  %25 = icmp eq i64 %23, 1024
  br i1 %25, label %26, label %16, !llvm.loop !11

26:                                               ; preds = %16
  %27 = add nuw nsw i64 %11, 1
  %28 = icmp eq i64 %27, 1024
  br i1 %28, label %29, label %10, !llvm.loop !15

29:                                               ; preds = %46, %26
  %30 = phi i64 [ %47, %46 ], [ 0, %26 ]
  %31 = trunc i64 %30 to i32
  %32 = sitofp i32 %31 to double
  %33 = insertelement <2 x double> poison, double %32, i64 0
  %34 = shufflevector <2 x double> %33, <2 x double> poison, <2 x i32> zeroinitializer
  br label %35

35:                                               ; preds = %35, %29
  %36 = phi i64 [ 0, %29 ], [ %43, %35 ]
  %37 = phi <2 x i32> [ <i32 0, i32 1>, %29 ], [ %44, %35 ]
  %38 = add <2 x i32> %37, <i32 1, i32 1>
  %39 = sitofp <2 x i32> %38 to <2 x double>
  %40 = fmul <2 x double> %34, %39
  %41 = fmul <2 x double> %40, <double 0x3F50000000000000, double 0x3F50000000000000>
  %42 = getelementptr inbounds [1024 x double], ptr %5, i64 %30, i64 %36
  store <2 x double> %41, ptr %42, align 8, !tbaa !7
  %43 = add nuw nsw i64 %36, 2
  %44 = add <2 x i32> %37, <i32 2, i32 2>
  %45 = icmp eq i64 %43, 1024
  br i1 %45, label %46, label %35, !llvm.loop !16

46:                                               ; preds = %35
  %47 = add nuw nsw i64 %30, 1
  %48 = icmp eq i64 %47, 1024
  br i1 %48, label %49, label %29, !llvm.loop !17

49:                                               ; preds = %66, %46
  %50 = phi i64 [ %67, %66 ], [ 0, %46 ]
  %51 = trunc i64 %50 to i32
  %52 = sitofp i32 %51 to double
  %53 = insertelement <2 x double> poison, double %52, i64 0
  %54 = shufflevector <2 x double> %53, <2 x double> poison, <2 x i32> zeroinitializer
  br label %55

55:                                               ; preds = %55, %49
  %56 = phi i64 [ 0, %49 ], [ %63, %55 ]
  %57 = phi <2 x i32> [ <i32 0, i32 1>, %49 ], [ %64, %55 ]
  %58 = add <2 x i32> %57, <i32 3, i32 3>
  %59 = sitofp <2 x i32> %58 to <2 x double>
  %60 = fmul <2 x double> %54, %59
  %61 = fmul <2 x double> %60, <double 0x3F50000000000000, double 0x3F50000000000000>
  %62 = getelementptr inbounds [1024 x double], ptr %7, i64 %50, i64 %56
  store <2 x double> %61, ptr %62, align 8, !tbaa !7
  %63 = add nuw nsw i64 %56, 2
  %64 = add <2 x i32> %57, <i32 2, i32 2>
  %65 = icmp eq i64 %63, 1024
  br i1 %65, label %66, label %55, !llvm.loop !18

66:                                               ; preds = %55
  %67 = add nuw nsw i64 %50, 1
  %68 = icmp eq i64 %67, 1024
  br i1 %68, label %69, label %49, !llvm.loop !19

69:                                               ; preds = %85, %66
  %70 = phi i64 [ %86, %85 ], [ 0, %66 ]
  %71 = trunc i64 %70 to i32
  %72 = sitofp i32 %71 to double
  %73 = insertelement <2 x double> poison, double %72, i64 0
  %74 = shufflevector <2 x double> %73, <2 x double> poison, <2 x i32> zeroinitializer
  br label %75

75:                                               ; preds = %75, %69
  %76 = phi i64 [ 0, %69 ], [ %83, %75 ]
  %77 = phi <2 x i32> [ <i32 0, i32 1>, %69 ], [ %78, %75 ]
  %78 = add <2 x i32> %77, <i32 2, i32 2>
  %79 = sitofp <2 x i32> %78 to <2 x double>
  %80 = fmul <2 x double> %74, %79
  %81 = fmul <2 x double> %80, <double 0x3F50000000000000, double 0x3F50000000000000>
  %82 = getelementptr inbounds [1024 x double], ptr %8, i64 %70, i64 %76
  store <2 x double> %81, ptr %82, align 8, !tbaa !7
  %83 = add nuw nsw i64 %76, 2
  %84 = icmp eq i64 %83, 1024
  br i1 %84, label %85, label %75, !llvm.loop !20

85:                                               ; preds = %75
  %86 = add nuw nsw i64 %70, 1
  %87 = icmp eq i64 %86, 1024
  br i1 %87, label %88, label %69, !llvm.loop !21

88:                                               ; preds = %107, %85
  %89 = phi i64 [ %108, %107 ], [ 0, %85 ]
  br label %90

90:                                               ; preds = %104, %88
  %91 = phi i64 [ 0, %88 ], [ %105, %104 ]
  %92 = getelementptr inbounds [1024 x double], ptr %3, i64 %89, i64 %91
  store double 0.000000e+00, ptr %92, align 8, !tbaa !7
  br label %93

93:                                               ; preds = %93, %90
  %94 = phi i64 [ 0, %90 ], [ %102, %93 ]
  %95 = phi double [ 0.000000e+00, %90 ], [ %101, %93 ]
  %96 = getelementptr inbounds [1024 x double], ptr %4, i64 %89, i64 %94
  %97 = load double, ptr %96, align 8, !tbaa !7
  %98 = getelementptr inbounds [1024 x double], ptr %5, i64 %94, i64 %91
  %99 = load double, ptr %98, align 8, !tbaa !7
  %100 = fmul double %97, %99
  %101 = fadd double %95, %100
  store double %101, ptr %92, align 8, !tbaa !7
  %102 = add nuw nsw i64 %94, 1
  %103 = icmp eq i64 %102, 1024
  br i1 %103, label %104, label %93, !llvm.loop !22

104:                                              ; preds = %93
  %105 = add nuw nsw i64 %91, 1
  %106 = icmp eq i64 %105, 1024
  br i1 %106, label %107, label %90, !llvm.loop !23

107:                                              ; preds = %104
  %108 = add nuw nsw i64 %89, 1
  %109 = icmp eq i64 %108, 1024
  br i1 %109, label %110, label %88, !llvm.loop !24

110:                                              ; preds = %129, %107
  %111 = phi i64 [ %130, %129 ], [ 0, %107 ]
  br label %112

112:                                              ; preds = %126, %110
  %113 = phi i64 [ 0, %110 ], [ %127, %126 ]
  %114 = getelementptr inbounds [1024 x double], ptr %6, i64 %111, i64 %113
  store double 0.000000e+00, ptr %114, align 8, !tbaa !7
  br label %115

115:                                              ; preds = %115, %112
  %116 = phi i64 [ 0, %112 ], [ %124, %115 ]
  %117 = phi double [ 0.000000e+00, %112 ], [ %123, %115 ]
  %118 = getelementptr inbounds [1024 x double], ptr %7, i64 %111, i64 %116
  %119 = load double, ptr %118, align 8, !tbaa !7
  %120 = getelementptr inbounds [1024 x double], ptr %8, i64 %116, i64 %113
  %121 = load double, ptr %120, align 8, !tbaa !7
  %122 = fmul double %119, %121
  %123 = fadd double %117, %122
  store double %123, ptr %114, align 8, !tbaa !7
  %124 = add nuw nsw i64 %116, 1
  %125 = icmp eq i64 %124, 1024
  br i1 %125, label %126, label %115, !llvm.loop !25

126:                                              ; preds = %115
  %127 = add nuw nsw i64 %113, 1
  %128 = icmp eq i64 %127, 1024
  br i1 %128, label %129, label %112, !llvm.loop !26

129:                                              ; preds = %126
  %130 = add nuw nsw i64 %111, 1
  %131 = icmp eq i64 %130, 1024
  br i1 %131, label %132, label %110, !llvm.loop !27

132:                                              ; preds = %151, %129
  %133 = phi i64 [ %152, %151 ], [ 0, %129 ]
  br label %134

134:                                              ; preds = %148, %132
  %135 = phi i64 [ 0, %132 ], [ %149, %148 ]
  %136 = getelementptr inbounds [1024 x double], ptr %9, i64 %133, i64 %135
  store double 0.000000e+00, ptr %136, align 8, !tbaa !7
  br label %137

137:                                              ; preds = %137, %134
  %138 = phi i64 [ 0, %134 ], [ %146, %137 ]
  %139 = phi double [ 0.000000e+00, %134 ], [ %145, %137 ]
  %140 = getelementptr inbounds [1024 x double], ptr %3, i64 %133, i64 %138
  %141 = load double, ptr %140, align 8, !tbaa !7
  %142 = getelementptr inbounds [1024 x double], ptr %6, i64 %138, i64 %135
  %143 = load double, ptr %142, align 8, !tbaa !7
  %144 = fmul double %141, %143
  %145 = fadd double %139, %144
  store double %145, ptr %136, align 8, !tbaa !7
  %146 = add nuw nsw i64 %138, 1
  %147 = icmp eq i64 %146, 1024
  br i1 %147, label %148, label %137, !llvm.loop !28

148:                                              ; preds = %137
  %149 = add nuw nsw i64 %135, 1
  %150 = icmp eq i64 %149, 1024
  br i1 %150, label %151, label %134, !llvm.loop !29

151:                                              ; preds = %148
  %152 = add nuw nsw i64 %133, 1
  %153 = icmp eq i64 %152, 1024
  br i1 %153, label %154, label %132, !llvm.loop !30

154:                                              ; preds = %151
  %155 = tail call noalias dereferenceable_or_null(16385) ptr @malloc(i64 noundef 16385) #8
  %156 = getelementptr inbounds i8, ptr %155, i64 16384
  store i8 0, ptr %156, align 1, !tbaa !31
  br label %157

157:                                              ; preds = %213, %154
  %158 = phi i64 [ 0, %154 ], [ %216, %213 ]
  br label %159

159:                                              ; preds = %159, %157
  %160 = phi i64 [ 0, %157 ], [ %211, %159 ]
  %161 = getelementptr inbounds [1024 x double], ptr %9, i64 %158, i64 %160
  %162 = load i64, ptr %161, align 8, !tbaa !7
  %163 = shl nuw nsw i64 %160, 4
  %164 = trunc i64 %162 to i8
  %165 = and i8 %164, 15
  %166 = or i8 %165, 48
  %167 = getelementptr inbounds i8, ptr %155, i64 %163
  store i8 %166, ptr %167, align 1, !tbaa !31
  %168 = getelementptr inbounds i8, ptr %167, i64 1
  store i8 %166, ptr %168, align 1, !tbaa !31
  %169 = lshr i64 %162, 8
  %170 = trunc i64 %169 to i8
  %171 = and i8 %170, 15
  %172 = or i8 %171, 48
  %173 = getelementptr inbounds i8, ptr %167, i64 2
  store i8 %172, ptr %173, align 1, !tbaa !31
  %174 = getelementptr inbounds i8, ptr %167, i64 3
  store i8 %172, ptr %174, align 1, !tbaa !31
  %175 = lshr i64 %162, 16
  %176 = trunc i64 %175 to i8
  %177 = and i8 %176, 15
  %178 = or i8 %177, 48
  %179 = getelementptr inbounds i8, ptr %167, i64 4
  store i8 %178, ptr %179, align 1, !tbaa !31
  %180 = getelementptr inbounds i8, ptr %167, i64 5
  store i8 %178, ptr %180, align 1, !tbaa !31
  %181 = lshr i64 %162, 24
  %182 = trunc i64 %181 to i8
  %183 = and i8 %182, 15
  %184 = or i8 %183, 48
  %185 = getelementptr inbounds i8, ptr %167, i64 6
  store i8 %184, ptr %185, align 1, !tbaa !31
  %186 = getelementptr inbounds i8, ptr %167, i64 7
  store i8 %184, ptr %186, align 1, !tbaa !31
  %187 = lshr i64 %162, 32
  %188 = trunc i64 %187 to i8
  %189 = and i8 %188, 15
  %190 = or i8 %189, 48
  %191 = getelementptr inbounds i8, ptr %167, i64 8
  store i8 %190, ptr %191, align 1, !tbaa !31
  %192 = getelementptr inbounds i8, ptr %167, i64 9
  store i8 %190, ptr %192, align 1, !tbaa !31
  %193 = lshr i64 %162, 40
  %194 = trunc i64 %193 to i8
  %195 = and i8 %194, 15
  %196 = or i8 %195, 48
  %197 = getelementptr inbounds i8, ptr %167, i64 10
  store i8 %196, ptr %197, align 1, !tbaa !31
  %198 = getelementptr inbounds i8, ptr %167, i64 11
  store i8 %196, ptr %198, align 1, !tbaa !31
  %199 = lshr i64 %162, 48
  %200 = trunc i64 %199 to i8
  %201 = and i8 %200, 15
  %202 = or i8 %201, 48
  %203 = getelementptr inbounds i8, ptr %167, i64 12
  store i8 %202, ptr %203, align 1, !tbaa !31
  %204 = getelementptr inbounds i8, ptr %167, i64 13
  store i8 %202, ptr %204, align 1, !tbaa !31
  %205 = lshr i64 %162, 56
  %206 = trunc i64 %205 to i8
  %207 = and i8 %206, 15
  %208 = or i8 %207, 48
  %209 = getelementptr inbounds i8, ptr %167, i64 14
  store i8 %208, ptr %209, align 1, !tbaa !31
  %210 = getelementptr inbounds i8, ptr %167, i64 15
  store i8 %208, ptr %210, align 1, !tbaa !31
  %211 = add nuw nsw i64 %160, 1
  %212 = icmp eq i64 %211, 1024
  br i1 %212, label %213, label %159, !llvm.loop !32

213:                                              ; preds = %159
  %214 = load ptr, ptr @stderr, align 8, !tbaa !33
  %215 = tail call i32 @fputs(ptr noundef nonnull %155, ptr noundef %214) #9
  %216 = add nuw nsw i64 %158, 1
  %217 = icmp eq i64 %216, 1024
  br i1 %217, label %218, label %157, !llvm.loop !35

218:                                              ; preds = %213
  tail call void @free(ptr noundef nonnull %155) #10
  tail call void @free(ptr noundef %3) #10
  tail call void @free(ptr noundef %4) #10
  tail call void @free(ptr noundef %5) #10
  tail call void @free(ptr noundef %6) #10
  tail call void @free(ptr noundef %7) #10
  tail call void @free(ptr noundef %8) #10
  tail call void @free(ptr noundef nonnull %9) #10
  ret i32 0
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc ptr @polybench_alloc_data() unnamed_addr #0 {
  %1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #11
  store ptr null, ptr %1, align 8, !tbaa !33
  %2 = call i32 @posix_memalign(ptr noundef nonnull %1, i64 noundef 32, i64 noundef 8388608) #10
  %3 = load ptr, ptr %1, align 8, !tbaa !33
  %4 = icmp eq ptr %3, null
  %5 = icmp ne i32 %2, 0
  %6 = select i1 %4, i1 true, i1 %5
  br i1 %6, label %7, label %10

7:                                                ; preds = %0
  %8 = load ptr, ptr @stderr, align 8, !tbaa !33
  %9 = call i64 @fwrite(ptr nonnull @.str.1, i64 50, i64 1, ptr %8) #12
  call void @exit(i32 noundef 1) #13
  unreachable

10:                                               ; preds = %0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #11
  ret ptr %3
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fputs(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nofree nounwind optsize
declare i32 @posix_memalign(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

attributes #0 = { nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nofree nounwind }
attributes #6 = { noreturn nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { optsize }
attributes #8 = { nounwind optsize allocsize(0) }
attributes #9 = { cold optsize }
attributes #10 = { nounwind optsize }
attributes #11 = { nounwind }
attributes #12 = { cold }
attributes #13 = { noreturn nounwind optsize }

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
!16 = distinct !{!16, !12, !13, !14}
!17 = distinct !{!17, !12}
!18 = distinct !{!18, !12, !13, !14}
!19 = distinct !{!19, !12}
!20 = distinct !{!20, !12, !13, !14}
!21 = distinct !{!21, !12}
!22 = distinct !{!22, !12}
!23 = distinct !{!23, !12}
!24 = distinct !{!24, !12}
!25 = distinct !{!25, !12}
!26 = distinct !{!26, !12}
!27 = distinct !{!27, !12}
!28 = distinct !{!28, !12}
!29 = distinct !{!29, !12}
!30 = distinct !{!30, !12}
!31 = !{!9, !9, i64 0}
!32 = distinct !{!32, !12}
!33 = !{!34, !34, i64 0}
!34 = !{!"any pointer", !9, i64 0}
!35 = distinct !{!35, !12}
