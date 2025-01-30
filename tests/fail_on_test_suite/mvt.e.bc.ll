; ModuleID = '/src/llvm-test-suite/build/SingleSource/Benchmarks/Polybench/linear-algebra/kernels/mvt/mvt.e.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [51 x i8] c"[PolyBench] posix_memalign: cannot allocate memory\00", align 1
@.str.2 = private unnamed_addr constant [68 x i8] c"A[%d] = %lf and B[%d] = %lf differ more than FP_ABSTOLERANCE = %lf\0A\00", align 1

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
  %3 = tail call ptr @polybench_alloc_data(i64 noundef 16000000, i32 noundef 8) #13
  %4 = tail call ptr @polybench_alloc_data(i64 noundef 4000, i32 noundef 8) #13
  %5 = tail call ptr @polybench_alloc_data(i64 noundef 4000, i32 noundef 8) #13
  %6 = tail call ptr @polybench_alloc_data(i64 noundef 4000, i32 noundef 8) #13
  %7 = tail call ptr @polybench_alloc_data(i64 noundef 4000, i32 noundef 8) #13
  %8 = tail call ptr @polybench_alloc_data(i64 noundef 4000, i32 noundef 8) #13
  %9 = tail call ptr @polybench_alloc_data(i64 noundef 4000, i32 noundef 8) #13
  br label %10

10:                                               ; preds = %39, %2
  %11 = phi i64 [ 0, %2 ], [ %40, %39 ]
  %12 = trunc i64 %11 to i32
  %13 = sitofp i32 %12 to double
  %14 = fdiv double %13, 4.000000e+03
  %15 = getelementptr inbounds double, ptr %4, i64 %11
  store double %14, ptr %15, align 8, !tbaa !11
  %16 = getelementptr inbounds double, ptr %6, i64 %11
  store double %14, ptr %16, align 8, !tbaa !11
  %17 = fadd double %13, 1.000000e+00
  %18 = fdiv double %17, 4.000000e+03
  %19 = getelementptr inbounds double, ptr %5, i64 %11
  store double %18, ptr %19, align 8, !tbaa !11
  %20 = getelementptr inbounds double, ptr %7, i64 %11
  store double %18, ptr %20, align 8, !tbaa !11
  %21 = fadd double %13, 3.000000e+00
  %22 = fdiv double %21, 4.000000e+03
  %23 = getelementptr inbounds double, ptr %8, i64 %11
  store double %22, ptr %23, align 8, !tbaa !11
  %24 = fadd double %13, 4.000000e+00
  %25 = fdiv double %24, 4.000000e+03
  %26 = getelementptr inbounds double, ptr %9, i64 %11
  store double %25, ptr %26, align 8, !tbaa !11
  %27 = insertelement <2 x double> poison, double %13, i64 0
  %28 = shufflevector <2 x double> %27, <2 x double> poison, <2 x i32> zeroinitializer
  br label %29

29:                                               ; preds = %29, %10
  %30 = phi i64 [ 0, %10 ], [ %36, %29 ]
  %31 = phi <2 x i32> [ <i32 0, i32 1>, %10 ], [ %37, %29 ]
  %32 = sitofp <2 x i32> %31 to <2 x double>
  %33 = fmul <2 x double> %28, %32
  %34 = fdiv <2 x double> %33, <double 4.000000e+03, double 4.000000e+03>
  %35 = getelementptr inbounds [4000 x double], ptr %3, i64 %11, i64 %30
  store <2 x double> %34, ptr %35, align 8, !tbaa !11
  %36 = add nuw i64 %30, 2
  %37 = add <2 x i32> %31, <i32 2, i32 2>
  %38 = icmp eq i64 %36, 4000
  br i1 %38, label %39, label %29, !llvm.loop !13

39:                                               ; preds = %29
  %40 = add nuw nsw i64 %11, 1
  %41 = icmp eq i64 %40, 4000
  br i1 %41, label %42, label %10, !llvm.loop !17

42:                                               ; preds = %56, %39
  %43 = phi i64 [ %57, %56 ], [ 0, %39 ]
  %44 = getelementptr inbounds double, ptr %4, i64 %43
  %45 = load double, ptr %44, align 8, !tbaa !11
  br label %46

46:                                               ; preds = %46, %42
  %47 = phi i64 [ 0, %42 ], [ %54, %46 ]
  %48 = phi double [ %45, %42 ], [ %53, %46 ]
  %49 = getelementptr inbounds [4000 x double], ptr %3, i64 %43, i64 %47
  %50 = load double, ptr %49, align 8, !tbaa !11
  %51 = getelementptr inbounds double, ptr %8, i64 %47
  %52 = load double, ptr %51, align 8, !tbaa !11
  %53 = tail call double @llvm.fmuladd.f64(double %50, double %52, double %48)
  store double %53, ptr %44, align 8, !tbaa !11
  %54 = add nuw nsw i64 %47, 1
  %55 = icmp eq i64 %54, 4000
  br i1 %55, label %56, label %46, !llvm.loop !18

56:                                               ; preds = %46
  %57 = add nuw nsw i64 %43, 1
  %58 = icmp eq i64 %57, 4000
  br i1 %58, label %59, label %42, !llvm.loop !19

59:                                               ; preds = %73, %56
  %60 = phi i64 [ %74, %73 ], [ 0, %56 ]
  %61 = getelementptr inbounds double, ptr %5, i64 %60
  %62 = load double, ptr %61, align 8, !tbaa !11
  br label %63

63:                                               ; preds = %63, %59
  %64 = phi i64 [ 0, %59 ], [ %71, %63 ]
  %65 = phi double [ %62, %59 ], [ %70, %63 ]
  %66 = getelementptr inbounds [4000 x double], ptr %3, i64 %64, i64 %60
  %67 = load double, ptr %66, align 8, !tbaa !11
  %68 = getelementptr inbounds double, ptr %9, i64 %64
  %69 = load double, ptr %68, align 8, !tbaa !11
  %70 = tail call double @llvm.fmuladd.f64(double %67, double %69, double %65)
  store double %70, ptr %61, align 8, !tbaa !11
  %71 = add nuw nsw i64 %64, 1
  %72 = icmp eq i64 %71, 4000
  br i1 %72, label %73, label %63, !llvm.loop !20

73:                                               ; preds = %63
  %74 = add nuw nsw i64 %60, 1
  %75 = icmp eq i64 %74, 4000
  br i1 %75, label %76, label %59, !llvm.loop !21

76:                                               ; preds = %91, %73
  %77 = phi i64 [ %92, %91 ], [ 0, %73 ]
  %78 = getelementptr inbounds double, ptr %6, i64 %77
  %79 = load double, ptr %78, align 8, !tbaa !11
  br label %80

80:                                               ; preds = %80, %76
  %81 = phi i64 [ 0, %76 ], [ %89, %80 ]
  %82 = phi double [ %79, %76 ], [ %88, %80 ]
  %83 = getelementptr inbounds [4000 x double], ptr %3, i64 %77, i64 %81
  %84 = load double, ptr %83, align 8, !tbaa !11
  %85 = getelementptr inbounds double, ptr %8, i64 %81
  %86 = load double, ptr %85, align 8, !tbaa !11
  %87 = fmul double %84, %86
  %88 = fadd double %82, %87
  store double %88, ptr %78, align 8, !tbaa !11
  %89 = add nuw nsw i64 %81, 1
  %90 = icmp eq i64 %89, 4000
  br i1 %90, label %91, label %80, !llvm.loop !22

91:                                               ; preds = %80
  %92 = add nuw nsw i64 %77, 1
  %93 = icmp eq i64 %92, 4000
  br i1 %93, label %94, label %76, !llvm.loop !23

94:                                               ; preds = %109, %91
  %95 = phi i64 [ %110, %109 ], [ 0, %91 ]
  %96 = getelementptr inbounds double, ptr %7, i64 %95
  %97 = load double, ptr %96, align 8, !tbaa !11
  br label %98

98:                                               ; preds = %98, %94
  %99 = phi i64 [ 0, %94 ], [ %107, %98 ]
  %100 = phi double [ %97, %94 ], [ %106, %98 ]
  %101 = getelementptr inbounds [4000 x double], ptr %3, i64 %99, i64 %95
  %102 = load double, ptr %101, align 8, !tbaa !11
  %103 = getelementptr inbounds double, ptr %9, i64 %99
  %104 = load double, ptr %103, align 8, !tbaa !11
  %105 = fmul double %102, %104
  %106 = fadd double %100, %105
  store double %106, ptr %96, align 8, !tbaa !11
  %107 = add nuw nsw i64 %99, 1
  %108 = icmp eq i64 %107, 4000
  br i1 %108, label %109, label %98, !llvm.loop !24

109:                                              ; preds = %98
  %110 = add nuw nsw i64 %95, 1
  %111 = icmp eq i64 %110, 4000
  br i1 %111, label %112, label %94, !llvm.loop !25

112:                                              ; preds = %109
  %113 = tail call fastcc i32 @check_FP(ptr noundef %4, ptr noundef %6) #13
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %235, label %115

115:                                              ; preds = %112
  %116 = tail call fastcc i32 @check_FP(ptr noundef %5, ptr noundef nonnull %7) #13
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %235, label %118

118:                                              ; preds = %115
  %119 = tail call noalias dereferenceable_or_null(64001) ptr @malloc(i64 noundef 64001) #14
  %120 = getelementptr inbounds i8, ptr %119, i64 64000
  store i8 0, ptr %120, align 1, !tbaa !26
  br label %121

121:                                              ; preds = %121, %118
  %122 = phi i64 [ 0, %118 ], [ %173, %121 ]
  %123 = getelementptr inbounds double, ptr %6, i64 %122
  %124 = load i64, ptr %123, align 8, !tbaa !11
  %125 = shl nuw nsw i64 %122, 4
  %126 = trunc i64 %124 to i8
  %127 = and i8 %126, 15
  %128 = or i8 %127, 48
  %129 = getelementptr inbounds i8, ptr %119, i64 %125
  store i8 %128, ptr %129, align 1, !tbaa !26
  %130 = getelementptr inbounds i8, ptr %129, i64 1
  store i8 %128, ptr %130, align 1, !tbaa !26
  %131 = lshr i64 %124, 8
  %132 = trunc i64 %131 to i8
  %133 = and i8 %132, 15
  %134 = or i8 %133, 48
  %135 = getelementptr inbounds i8, ptr %129, i64 2
  store i8 %134, ptr %135, align 1, !tbaa !26
  %136 = getelementptr inbounds i8, ptr %129, i64 3
  store i8 %134, ptr %136, align 1, !tbaa !26
  %137 = lshr i64 %124, 16
  %138 = trunc i64 %137 to i8
  %139 = and i8 %138, 15
  %140 = or i8 %139, 48
  %141 = getelementptr inbounds i8, ptr %129, i64 4
  store i8 %140, ptr %141, align 1, !tbaa !26
  %142 = getelementptr inbounds i8, ptr %129, i64 5
  store i8 %140, ptr %142, align 1, !tbaa !26
  %143 = lshr i64 %124, 24
  %144 = trunc i64 %143 to i8
  %145 = and i8 %144, 15
  %146 = or i8 %145, 48
  %147 = getelementptr inbounds i8, ptr %129, i64 6
  store i8 %146, ptr %147, align 1, !tbaa !26
  %148 = getelementptr inbounds i8, ptr %129, i64 7
  store i8 %146, ptr %148, align 1, !tbaa !26
  %149 = lshr i64 %124, 32
  %150 = trunc i64 %149 to i8
  %151 = and i8 %150, 15
  %152 = or i8 %151, 48
  %153 = getelementptr inbounds i8, ptr %129, i64 8
  store i8 %152, ptr %153, align 1, !tbaa !26
  %154 = getelementptr inbounds i8, ptr %129, i64 9
  store i8 %152, ptr %154, align 1, !tbaa !26
  %155 = lshr i64 %124, 40
  %156 = trunc i64 %155 to i8
  %157 = and i8 %156, 15
  %158 = or i8 %157, 48
  %159 = getelementptr inbounds i8, ptr %129, i64 10
  store i8 %158, ptr %159, align 1, !tbaa !26
  %160 = getelementptr inbounds i8, ptr %129, i64 11
  store i8 %158, ptr %160, align 1, !tbaa !26
  %161 = lshr i64 %124, 48
  %162 = trunc i64 %161 to i8
  %163 = and i8 %162, 15
  %164 = or i8 %163, 48
  %165 = getelementptr inbounds i8, ptr %129, i64 12
  store i8 %164, ptr %165, align 1, !tbaa !26
  %166 = getelementptr inbounds i8, ptr %129, i64 13
  store i8 %164, ptr %166, align 1, !tbaa !26
  %167 = lshr i64 %124, 56
  %168 = trunc i64 %167 to i8
  %169 = and i8 %168, 15
  %170 = or i8 %169, 48
  %171 = getelementptr inbounds i8, ptr %129, i64 14
  store i8 %170, ptr %171, align 1, !tbaa !26
  %172 = getelementptr inbounds i8, ptr %129, i64 15
  store i8 %170, ptr %172, align 1, !tbaa !26
  %173 = add nuw nsw i64 %122, 1
  %174 = icmp eq i64 %173, 4000
  br i1 %174, label %175, label %121, !llvm.loop !27

175:                                              ; preds = %121
  %176 = load ptr, ptr @stderr, align 8, !tbaa !7
  %177 = tail call i32 @fputs(ptr noundef nonnull %119, ptr noundef %176) #15
  br label %178

178:                                              ; preds = %178, %175
  %179 = phi i64 [ 0, %175 ], [ %230, %178 ]
  %180 = getelementptr inbounds double, ptr %7, i64 %179
  %181 = load i64, ptr %180, align 8, !tbaa !11
  %182 = shl nuw nsw i64 %179, 4
  %183 = trunc i64 %181 to i8
  %184 = and i8 %183, 15
  %185 = or i8 %184, 48
  %186 = getelementptr inbounds i8, ptr %119, i64 %182
  store i8 %185, ptr %186, align 1, !tbaa !26
  %187 = getelementptr inbounds i8, ptr %186, i64 1
  store i8 %185, ptr %187, align 1, !tbaa !26
  %188 = lshr i64 %181, 8
  %189 = trunc i64 %188 to i8
  %190 = and i8 %189, 15
  %191 = or i8 %190, 48
  %192 = getelementptr inbounds i8, ptr %186, i64 2
  store i8 %191, ptr %192, align 1, !tbaa !26
  %193 = getelementptr inbounds i8, ptr %186, i64 3
  store i8 %191, ptr %193, align 1, !tbaa !26
  %194 = lshr i64 %181, 16
  %195 = trunc i64 %194 to i8
  %196 = and i8 %195, 15
  %197 = or i8 %196, 48
  %198 = getelementptr inbounds i8, ptr %186, i64 4
  store i8 %197, ptr %198, align 1, !tbaa !26
  %199 = getelementptr inbounds i8, ptr %186, i64 5
  store i8 %197, ptr %199, align 1, !tbaa !26
  %200 = lshr i64 %181, 24
  %201 = trunc i64 %200 to i8
  %202 = and i8 %201, 15
  %203 = or i8 %202, 48
  %204 = getelementptr inbounds i8, ptr %186, i64 6
  store i8 %203, ptr %204, align 1, !tbaa !26
  %205 = getelementptr inbounds i8, ptr %186, i64 7
  store i8 %203, ptr %205, align 1, !tbaa !26
  %206 = lshr i64 %181, 32
  %207 = trunc i64 %206 to i8
  %208 = and i8 %207, 15
  %209 = or i8 %208, 48
  %210 = getelementptr inbounds i8, ptr %186, i64 8
  store i8 %209, ptr %210, align 1, !tbaa !26
  %211 = getelementptr inbounds i8, ptr %186, i64 9
  store i8 %209, ptr %211, align 1, !tbaa !26
  %212 = lshr i64 %181, 40
  %213 = trunc i64 %212 to i8
  %214 = and i8 %213, 15
  %215 = or i8 %214, 48
  %216 = getelementptr inbounds i8, ptr %186, i64 10
  store i8 %215, ptr %216, align 1, !tbaa !26
  %217 = getelementptr inbounds i8, ptr %186, i64 11
  store i8 %215, ptr %217, align 1, !tbaa !26
  %218 = lshr i64 %181, 48
  %219 = trunc i64 %218 to i8
  %220 = and i8 %219, 15
  %221 = or i8 %220, 48
  %222 = getelementptr inbounds i8, ptr %186, i64 12
  store i8 %221, ptr %222, align 1, !tbaa !26
  %223 = getelementptr inbounds i8, ptr %186, i64 13
  store i8 %221, ptr %223, align 1, !tbaa !26
  %224 = lshr i64 %181, 56
  %225 = trunc i64 %224 to i8
  %226 = and i8 %225, 15
  %227 = or i8 %226, 48
  %228 = getelementptr inbounds i8, ptr %186, i64 14
  store i8 %227, ptr %228, align 1, !tbaa !26
  %229 = getelementptr inbounds i8, ptr %186, i64 15
  store i8 %227, ptr %229, align 1, !tbaa !26
  %230 = add nuw nsw i64 %179, 1
  %231 = icmp eq i64 %230, 4000
  br i1 %231, label %232, label %178, !llvm.loop !28

232:                                              ; preds = %178
  %233 = load ptr, ptr @stderr, align 8, !tbaa !7
  %234 = tail call i32 @fputs(ptr noundef nonnull %119, ptr noundef %233) #15
  tail call void @free(ptr noundef nonnull %119) #10
  tail call void @free(ptr noundef %3) #10
  tail call void @free(ptr noundef %4) #10
  tail call void @free(ptr noundef %5) #10
  tail call void @free(ptr noundef %6) #10
  tail call void @free(ptr noundef nonnull %7) #10
  tail call void @free(ptr noundef %8) #10
  tail call void @free(ptr noundef %9) #10
  br label %235

235:                                              ; preds = %232, %115, %112
  %236 = phi i32 [ 0, %232 ], [ 1, %112 ], [ 1, %115 ]
  ret i32 %236
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #5

; Function Attrs: nofree nounwind optsize uwtable
define internal fastcc i32 @check_FP(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 {
  br label %3

3:                                                ; preds = %16, %2
  %4 = phi i64 [ 0, %2 ], [ %17, %16 ]
  %5 = getelementptr inbounds double, ptr %0, i64 %4
  %6 = load double, ptr %5, align 8, !tbaa !11
  %7 = getelementptr inbounds double, ptr %1, i64 %4
  %8 = load double, ptr %7, align 8, !tbaa !11
  %9 = fsub double %6, %8
  %10 = tail call double @llvm.fabs.f64(double %9)
  %11 = fcmp ule double %10, 1.000000e-05
  br i1 %11, label %16, label %12

12:                                               ; preds = %3
  %.lcssa4 = phi i64 [ %4, %3 ]
  %.lcssa2 = phi double [ %6, %3 ]
  %.lcssa = phi double [ %8, %3 ]
  %13 = trunc i64 %.lcssa4 to i32
  %14 = load ptr, ptr @stderr, align 8, !tbaa !7
  %15 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %14, ptr noundef nonnull @.str.2, i32 noundef %13, double noundef %.lcssa2, i32 noundef %13, double noundef %.lcssa, double noundef 1.000000e-05) #15
  br label %19

16:                                               ; preds = %3
  %17 = add nuw nsw i64 %4, 1
  %18 = icmp eq i64 %17, 4000
  br i1 %18, label %19, label %3, !llvm.loop !29

19:                                               ; preds = %16, %12
  %20 = phi i32 [ 0, %12 ], [ 1, %16 ]
  ret i32 %20
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fputs(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #5

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

attributes #0 = { nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
attributes #4 = { noreturn nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nofree nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind }
attributes #10 = { nounwind optsize }
attributes #11 = { cold }
attributes #12 = { noreturn nounwind optsize }
attributes #13 = { optsize }
attributes #14 = { nounwind optsize allocsize(0) }
attributes #15 = { cold optsize }

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
!21 = distinct !{!21, !14}
!22 = distinct !{!22, !14}
!23 = distinct !{!23, !14}
!24 = distinct !{!24, !14}
!25 = distinct !{!25, !14}
!26 = !{!9, !9, i64 0}
!27 = distinct !{!27, !14}
!28 = distinct !{!28, !14}
!29 = distinct !{!29, !14}
