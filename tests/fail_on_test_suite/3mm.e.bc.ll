; ModuleID = '/src/llvm-test-suite/build/SingleSource/Benchmarks/Polybench/linear-algebra/kernels/3mm/3mm.e.bc'
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
  %8 = tail call ptr @polybench_alloc_data(i64 noundef 1048576, i32 noundef 8) #11
  %9 = tail call ptr @polybench_alloc_data(i64 noundef 1048576, i32 noundef 8) #11
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
  store <2 x double> %21, ptr %22, align 8, !tbaa !11
  %23 = add nuw i64 %17, 2
  %24 = add <2 x i32> %18, <i32 2, i32 2>
  %25 = icmp eq i64 %23, 1024
  br i1 %25, label %26, label %16, !llvm.loop !13

26:                                               ; preds = %16
  %27 = add nuw nsw i64 %11, 1
  %28 = icmp eq i64 %27, 1024
  br i1 %28, label %29, label %10, !llvm.loop !17

29:                                               ; preds = %47, %26
  %30 = phi i64 [ %48, %47 ], [ 0, %26 ]
  %31 = trunc i64 %30 to i32
  %32 = sitofp i32 %31 to double
  %33 = insertelement <2 x double> poison, double %32, i64 0
  %34 = shufflevector <2 x double> %33, <2 x double> poison, <2 x i32> zeroinitializer
  br label %35

35:                                               ; preds = %35, %29
  %36 = phi i64 [ 0, %29 ], [ %44, %35 ]
  %37 = phi <2 x i64> [ <i64 0, i64 1>, %29 ], [ %45, %35 ]
  %38 = trunc <2 x i64> %37 to <2 x i32>
  %39 = add <2 x i32> %38, <i32 1, i32 1>
  %40 = sitofp <2 x i32> %39 to <2 x double>
  %41 = fmul <2 x double> %34, %40
  %42 = fmul <2 x double> %41, <double 0x3F50000000000000, double 0x3F50000000000000>
  %43 = getelementptr inbounds [1024 x double], ptr %5, i64 %30, i64 %36
  store <2 x double> %42, ptr %43, align 8, !tbaa !11
  %44 = add nuw i64 %36, 2
  %45 = add <2 x i64> %37, <i64 2, i64 2>
  %46 = icmp eq i64 %44, 1024
  br i1 %46, label %47, label %35, !llvm.loop !18

47:                                               ; preds = %35
  %48 = add nuw nsw i64 %30, 1
  %49 = icmp eq i64 %48, 1024
  br i1 %49, label %50, label %29, !llvm.loop !19

50:                                               ; preds = %67, %47
  %51 = phi i64 [ %68, %67 ], [ 0, %47 ]
  %52 = trunc i64 %51 to i32
  %53 = sitofp i32 %52 to double
  %54 = insertelement <2 x double> poison, double %53, i64 0
  %55 = shufflevector <2 x double> %54, <2 x double> poison, <2 x i32> zeroinitializer
  br label %56

56:                                               ; preds = %56, %50
  %57 = phi i64 [ 0, %50 ], [ %64, %56 ]
  %58 = phi <2 x i32> [ <i32 0, i32 1>, %50 ], [ %65, %56 ]
  %59 = add <2 x i32> %58, <i32 3, i32 3>
  %60 = sitofp <2 x i32> %59 to <2 x double>
  %61 = fmul <2 x double> %55, %60
  %62 = fmul <2 x double> %61, <double 0x3F50000000000000, double 0x3F50000000000000>
  %63 = getelementptr inbounds [1024 x double], ptr %7, i64 %51, i64 %57
  store <2 x double> %62, ptr %63, align 8, !tbaa !11
  %64 = add nuw i64 %57, 2
  %65 = add <2 x i32> %58, <i32 2, i32 2>
  %66 = icmp eq i64 %64, 1024
  br i1 %66, label %67, label %56, !llvm.loop !20

67:                                               ; preds = %56
  %68 = add nuw nsw i64 %51, 1
  %69 = icmp eq i64 %68, 1024
  br i1 %69, label %70, label %50, !llvm.loop !21

70:                                               ; preds = %87, %67
  %71 = phi i64 [ %88, %87 ], [ 0, %67 ]
  %72 = trunc i64 %71 to i32
  %73 = sitofp i32 %72 to double
  %74 = insertelement <2 x double> poison, double %73, i64 0
  %75 = shufflevector <2 x double> %74, <2 x double> poison, <2 x i32> zeroinitializer
  br label %76

76:                                               ; preds = %76, %70
  %77 = phi i64 [ 0, %70 ], [ %84, %76 ]
  %78 = phi <2 x i32> [ <i32 0, i32 1>, %70 ], [ %85, %76 ]
  %79 = add <2 x i32> %78, <i32 2, i32 2>
  %80 = sitofp <2 x i32> %79 to <2 x double>
  %81 = fmul <2 x double> %75, %80
  %82 = fmul <2 x double> %81, <double 0x3F50000000000000, double 0x3F50000000000000>
  %83 = getelementptr inbounds [1024 x double], ptr %8, i64 %71, i64 %77
  store <2 x double> %82, ptr %83, align 8, !tbaa !11
  %84 = add nuw i64 %77, 2
  %85 = add <2 x i32> %78, <i32 2, i32 2>
  %86 = icmp eq i64 %84, 1024
  br i1 %86, label %87, label %76, !llvm.loop !22

87:                                               ; preds = %76
  %88 = add nuw nsw i64 %71, 1
  %89 = icmp eq i64 %88, 1024
  br i1 %89, label %90, label %70, !llvm.loop !23

90:                                               ; preds = %109, %87
  %91 = phi i64 [ %110, %109 ], [ 0, %87 ]
  br label %92

92:                                               ; preds = %106, %90
  %93 = phi i64 [ 0, %90 ], [ %107, %106 ]
  %94 = getelementptr inbounds [1024 x double], ptr %3, i64 %91, i64 %93
  store double 0.000000e+00, ptr %94, align 8, !tbaa !11
  br label %95

95:                                               ; preds = %95, %92
  %96 = phi i64 [ 0, %92 ], [ %104, %95 ]
  %97 = phi double [ 0.000000e+00, %92 ], [ %103, %95 ]
  %98 = getelementptr inbounds [1024 x double], ptr %4, i64 %91, i64 %96
  %99 = load double, ptr %98, align 8, !tbaa !11
  %100 = getelementptr inbounds [1024 x double], ptr %5, i64 %96, i64 %93
  %101 = load double, ptr %100, align 8, !tbaa !11
  %102 = fmul double %99, %101
  %103 = fadd double %97, %102
  store double %103, ptr %94, align 8, !tbaa !11
  %104 = add nuw nsw i64 %96, 1
  %105 = icmp eq i64 %104, 1024
  br i1 %105, label %106, label %95, !llvm.loop !24

106:                                              ; preds = %95
  %107 = add nuw nsw i64 %93, 1
  %108 = icmp eq i64 %107, 1024
  br i1 %108, label %109, label %92, !llvm.loop !25

109:                                              ; preds = %106
  %110 = add nuw nsw i64 %91, 1
  %111 = icmp eq i64 %110, 1024
  br i1 %111, label %112, label %90, !llvm.loop !26

112:                                              ; preds = %131, %109
  %113 = phi i64 [ %132, %131 ], [ 0, %109 ]
  br label %114

114:                                              ; preds = %128, %112
  %115 = phi i64 [ 0, %112 ], [ %129, %128 ]
  %116 = getelementptr inbounds [1024 x double], ptr %6, i64 %113, i64 %115
  store double 0.000000e+00, ptr %116, align 8, !tbaa !11
  br label %117

117:                                              ; preds = %117, %114
  %118 = phi i64 [ 0, %114 ], [ %126, %117 ]
  %119 = phi double [ 0.000000e+00, %114 ], [ %125, %117 ]
  %120 = getelementptr inbounds [1024 x double], ptr %7, i64 %113, i64 %118
  %121 = load double, ptr %120, align 8, !tbaa !11
  %122 = getelementptr inbounds [1024 x double], ptr %8, i64 %118, i64 %115
  %123 = load double, ptr %122, align 8, !tbaa !11
  %124 = fmul double %121, %123
  %125 = fadd double %119, %124
  store double %125, ptr %116, align 8, !tbaa !11
  %126 = add nuw nsw i64 %118, 1
  %127 = icmp eq i64 %126, 1024
  br i1 %127, label %128, label %117, !llvm.loop !27

128:                                              ; preds = %117
  %129 = add nuw nsw i64 %115, 1
  %130 = icmp eq i64 %129, 1024
  br i1 %130, label %131, label %114, !llvm.loop !28

131:                                              ; preds = %128
  %132 = add nuw nsw i64 %113, 1
  %133 = icmp eq i64 %132, 1024
  br i1 %133, label %134, label %112, !llvm.loop !29

134:                                              ; preds = %153, %131
  %135 = phi i64 [ %154, %153 ], [ 0, %131 ]
  br label %136

136:                                              ; preds = %150, %134
  %137 = phi i64 [ 0, %134 ], [ %151, %150 ]
  %138 = getelementptr inbounds [1024 x double], ptr %9, i64 %135, i64 %137
  store double 0.000000e+00, ptr %138, align 8, !tbaa !11
  br label %139

139:                                              ; preds = %139, %136
  %140 = phi i64 [ 0, %136 ], [ %148, %139 ]
  %141 = phi double [ 0.000000e+00, %136 ], [ %147, %139 ]
  %142 = getelementptr inbounds [1024 x double], ptr %3, i64 %135, i64 %140
  %143 = load double, ptr %142, align 8, !tbaa !11
  %144 = getelementptr inbounds [1024 x double], ptr %6, i64 %140, i64 %137
  %145 = load double, ptr %144, align 8, !tbaa !11
  %146 = fmul double %143, %145
  %147 = fadd double %141, %146
  store double %147, ptr %138, align 8, !tbaa !11
  %148 = add nuw nsw i64 %140, 1
  %149 = icmp eq i64 %148, 1024
  br i1 %149, label %150, label %139, !llvm.loop !30

150:                                              ; preds = %139
  %151 = add nuw nsw i64 %137, 1
  %152 = icmp eq i64 %151, 1024
  br i1 %152, label %153, label %136, !llvm.loop !31

153:                                              ; preds = %150
  %154 = add nuw nsw i64 %135, 1
  %155 = icmp eq i64 %154, 1024
  br i1 %155, label %156, label %134, !llvm.loop !32

156:                                              ; preds = %153
  %157 = tail call noalias dereferenceable_or_null(16385) ptr @malloc(i64 noundef 16385) #12
  %158 = getelementptr inbounds i8, ptr %157, i64 16384
  store i8 0, ptr %158, align 1, !tbaa !33
  br label %159

159:                                              ; preds = %215, %156
  %160 = phi i64 [ 0, %156 ], [ %218, %215 ]
  br label %161

161:                                              ; preds = %161, %159
  %162 = phi i64 [ 0, %159 ], [ %213, %161 ]
  %163 = getelementptr inbounds [1024 x double], ptr %9, i64 %160, i64 %162
  %164 = load i64, ptr %163, align 8, !tbaa !11
  %165 = shl nuw nsw i64 %162, 4
  %166 = trunc i64 %164 to i8
  %167 = and i8 %166, 15
  %168 = or i8 %167, 48
  %169 = getelementptr inbounds i8, ptr %157, i64 %165
  store i8 %168, ptr %169, align 1, !tbaa !33
  %170 = getelementptr inbounds i8, ptr %169, i64 1
  store i8 %168, ptr %170, align 1, !tbaa !33
  %171 = lshr i64 %164, 8
  %172 = trunc i64 %171 to i8
  %173 = and i8 %172, 15
  %174 = or i8 %173, 48
  %175 = getelementptr inbounds i8, ptr %169, i64 2
  store i8 %174, ptr %175, align 1, !tbaa !33
  %176 = getelementptr inbounds i8, ptr %169, i64 3
  store i8 %174, ptr %176, align 1, !tbaa !33
  %177 = lshr i64 %164, 16
  %178 = trunc i64 %177 to i8
  %179 = and i8 %178, 15
  %180 = or i8 %179, 48
  %181 = getelementptr inbounds i8, ptr %169, i64 4
  store i8 %180, ptr %181, align 1, !tbaa !33
  %182 = getelementptr inbounds i8, ptr %169, i64 5
  store i8 %180, ptr %182, align 1, !tbaa !33
  %183 = lshr i64 %164, 24
  %184 = trunc i64 %183 to i8
  %185 = and i8 %184, 15
  %186 = or i8 %185, 48
  %187 = getelementptr inbounds i8, ptr %169, i64 6
  store i8 %186, ptr %187, align 1, !tbaa !33
  %188 = getelementptr inbounds i8, ptr %169, i64 7
  store i8 %186, ptr %188, align 1, !tbaa !33
  %189 = lshr i64 %164, 32
  %190 = trunc i64 %189 to i8
  %191 = and i8 %190, 15
  %192 = or i8 %191, 48
  %193 = getelementptr inbounds i8, ptr %169, i64 8
  store i8 %192, ptr %193, align 1, !tbaa !33
  %194 = getelementptr inbounds i8, ptr %169, i64 9
  store i8 %192, ptr %194, align 1, !tbaa !33
  %195 = lshr i64 %164, 40
  %196 = trunc i64 %195 to i8
  %197 = and i8 %196, 15
  %198 = or i8 %197, 48
  %199 = getelementptr inbounds i8, ptr %169, i64 10
  store i8 %198, ptr %199, align 1, !tbaa !33
  %200 = getelementptr inbounds i8, ptr %169, i64 11
  store i8 %198, ptr %200, align 1, !tbaa !33
  %201 = lshr i64 %164, 48
  %202 = trunc i64 %201 to i8
  %203 = and i8 %202, 15
  %204 = or i8 %203, 48
  %205 = getelementptr inbounds i8, ptr %169, i64 12
  store i8 %204, ptr %205, align 1, !tbaa !33
  %206 = getelementptr inbounds i8, ptr %169, i64 13
  store i8 %204, ptr %206, align 1, !tbaa !33
  %207 = lshr i64 %164, 56
  %208 = trunc i64 %207 to i8
  %209 = and i8 %208, 15
  %210 = or i8 %209, 48
  %211 = getelementptr inbounds i8, ptr %169, i64 14
  store i8 %210, ptr %211, align 1, !tbaa !33
  %212 = getelementptr inbounds i8, ptr %169, i64 15
  store i8 %210, ptr %212, align 1, !tbaa !33
  %213 = add nuw nsw i64 %162, 1
  %214 = icmp eq i64 %213, 1024
  br i1 %214, label %215, label %161, !llvm.loop !34

215:                                              ; preds = %161
  %216 = load ptr, ptr @stderr, align 8, !tbaa !7
  %217 = tail call i32 @fputs(ptr noundef nonnull %157, ptr noundef %216) #13
  %218 = add nuw nsw i64 %160, 1
  %219 = icmp eq i64 %218, 1024
  br i1 %219, label %220, label %159, !llvm.loop !35

220:                                              ; preds = %215
  tail call void @free(ptr noundef nonnull %157) #8
  tail call void @free(ptr noundef %3) #8
  tail call void @free(ptr noundef %4) #8
  tail call void @free(ptr noundef %5) #8
  tail call void @free(ptr noundef %6) #8
  tail call void @free(ptr noundef %7) #8
  tail call void @free(ptr noundef %8) #8
  tail call void @free(ptr noundef nonnull %9) #8
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
!30 = distinct !{!30, !14}
!31 = distinct !{!31, !14}
!32 = distinct !{!32, !14}
!33 = !{!9, !9, i64 0}
!34 = distinct !{!34, !14}
!35 = distinct !{!35, !14}
