; ModuleID = 'linpack-pc.ll'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@main.aa = internal global [40000 x float] zeroinitializer, align 16
@main.a = internal global [40200 x float] zeroinitializer, align 16
@main.b = internal unnamed_addr global [200 x float] zeroinitializer, align 16
@main.x = internal unnamed_addr global [200 x float] zeroinitializer, align 16
@main.ipvt = internal unnamed_addr global [200 x i32] zeroinitializer, align 16
@main.j = internal unnamed_addr global i32 0, align 4
@main.ntimes = internal unnamed_addr global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"INSERT COMPILER NAME HERE\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"INSERT OPTIMISATION OPTIONS HERE\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"Rolled \00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"Single \00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"Precision Linpack Benchmark - PC Version in 'C/C++'\0A\0A\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"Compiler     %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"Optimisation %s\0A\0A\00", align 1
@atime = internal unnamed_addr global [9 x [15 x float]] zeroinitializer, align 16
@.str.7 = private unnamed_addr constant [39 x i8] c"norm resid      resid           machep\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"         x[0]-1          x[n-1]-1\0A\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"%6.1f %17.8e%17.8e%17.8e%17.8e\0A\0A\00", align 1
@.str.10 = private unnamed_addr constant [53 x i8] c"Times are reported for matrices of order        %5d\0A\00", align 1
@.str.11 = private unnamed_addr constant [54 x i8] c"1 pass times for array with leading dimension of%5d\0A\0A\00", align 1
@.str.12 = private unnamed_addr constant [56 x i8] c"      dgefa      dgesl      total     Mflops       unit\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"      ratio\0A\00", align 1
@.str.14 = private unnamed_addr constant [30 x i8] c"\0ACalculating matgen overhead\0A\00", align 1
@.str.15 = private unnamed_addr constant [26 x i8] c"%10d times %6.2f seconds\0A\00", align 1
@.str.16 = private unnamed_addr constant [39 x i8] c"Overhead for 1 matgen %12.5f seconds\0A\0A\00", align 1
@.str.17 = private unnamed_addr constant [47 x i8] c"Calculating matgen/dgefa passes for 5 seconds\0A\00", align 1
@.str.18 = private unnamed_addr constant [20 x i8] c"Passes used %10d \0A\0A\00", align 1
@.str.19 = private unnamed_addr constant [47 x i8] c"Times for array with leading dimension of%4d\0A\0A\00", align 1
@.str.20 = private unnamed_addr constant [41 x i8] c"Average                          %11.2f\0A\00", align 1
@.str.21 = private unnamed_addr constant [31 x i8] c"\0ACalculating matgen2 overhead\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define dso_local i32 @main() #0 {
  %1 = alloca float, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #11
  %2 = load ptr, ptr @stderr, align 8, !tbaa !7
  %3 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 7, i64 1, ptr %2) #12
  %4 = load ptr, ptr @stderr, align 8, !tbaa !7
  %5 = tail call i64 @fwrite(ptr nonnull @.str.3, i64 7, i64 1, ptr %4) #12
  %6 = load ptr, ptr @stderr, align 8, !tbaa !7
  %7 = tail call i64 @fwrite(ptr nonnull @.str.4, i64 53, i64 1, ptr %6) #12
  %8 = load ptr, ptr @stderr, align 8, !tbaa !7
  %9 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str) #13
  %10 = load ptr, ptr @stderr, align 8, !tbaa !7
  %11 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1) #13
  call fastcc void @matgen(ptr noundef nonnull @main.a, i32 noundef 201, ptr noundef nonnull %1) #14
  %12 = tail call i64 @clock() #15
  %13 = sitofp i64 %12 to float
  %14 = fdiv float %13, 1.000000e+06
  tail call fastcc void @dgefa(ptr noundef nonnull @main.a, i32 noundef 201) #14
  %15 = tail call i64 @clock() #15
  %16 = sitofp i64 %15 to float
  %17 = fdiv float %16, 1.000000e+06
  %18 = fsub float %17, %14
  store float %18, ptr @atime, align 16, !tbaa !11
  %19 = tail call i64 @clock() #15
  %20 = sitofp i64 %19 to float
  %21 = fdiv float %20, 1.000000e+06
  tail call fastcc void @dgesl(ptr noundef nonnull @main.a, i32 noundef 201) #14
  %22 = tail call i64 @clock() #15
  %23 = sitofp i64 %22 to float
  %24 = fdiv float %23, 1.000000e+06
  %25 = fsub float %24, %21
  store float %25, ptr getelementptr inbounds ([9 x [15 x float]], ptr @atime, i64 0, i64 1), align 4, !tbaa !11
  %26 = load float, ptr @atime, align 16, !tbaa !11
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(400) @main.x, ptr noundef nonnull align 16 dereferenceable(400) @main.b, i64 400, i1 false), !tbaa !11
  call fastcc void @matgen(ptr noundef nonnull @main.a, i32 noundef 201, ptr noundef nonnull %1) #14
  br label %27

27:                                               ; preds = %27, %0
  %28 = phi i64 [ 0, %0 ], [ %32, %27 ]
  %29 = getelementptr inbounds [200 x float], ptr @main.b, i64 0, i64 %28
  %30 = load <4 x float>, ptr %29, align 16, !tbaa !11
  %31 = fneg <4 x float> %30
  store <4 x float> %31, ptr %29, align 16, !tbaa !11
  %32 = add nuw nsw i64 %28, 4
  %33 = icmp eq i64 %32, 100
  br i1 %33, label %34, label %27, !llvm.loop !13

34:                                               ; preds = %27
  %35 = load float, ptr @main.x, align 16, !tbaa !11
  %36 = load <4 x float>, ptr getelementptr inbounds ([200 x float], ptr @main.x, i64 0, i64 3), align 4
  %37 = load <4 x float>, ptr getelementptr inbounds ([200 x float], ptr @main.x, i64 0, i64 2), align 8
  %38 = load <4 x float>, ptr getelementptr inbounds ([200 x float], ptr @main.x, i64 0, i64 1), align 4
  %39 = insertelement <4 x float> poison, float %35, i64 0
  %40 = shufflevector <4 x float> %39, <4 x float> poison, <4 x i32> zeroinitializer
  %41 = shufflevector <4 x float> %38, <4 x float> poison, <4 x i32> zeroinitializer
  %42 = shufflevector <4 x float> %37, <4 x float> poison, <4 x i32> zeroinitializer
  %43 = shufflevector <4 x float> %36, <4 x float> poison, <4 x i32> zeroinitializer
  br label %44

44:                                               ; preds = %44, %34
  %45 = phi i64 [ 0, %34 ], [ %63, %44 ]
  %46 = getelementptr inbounds float, ptr @main.b, i64 %45
  %47 = load <4 x float>, ptr %46, align 16, !tbaa !11
  %48 = getelementptr inbounds float, ptr @main.a, i64 %45
  %49 = load <4 x float>, ptr %48, align 16, !tbaa !11
  %50 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %40, <4 x float> %49, <4 x float> %47)
  %51 = add nuw nsw i64 %45, 201
  %52 = getelementptr inbounds float, ptr @main.a, i64 %51
  %53 = load <4 x float>, ptr %52, align 4, !tbaa !11
  %54 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %41, <4 x float> %53, <4 x float> %50)
  %55 = add nuw nsw i64 %45, 402
  %56 = getelementptr inbounds float, ptr @main.a, i64 %55
  %57 = load <4 x float>, ptr %56, align 8, !tbaa !11
  %58 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %42, <4 x float> %57, <4 x float> %54)
  %59 = add nuw nsw i64 %45, 603
  %60 = getelementptr inbounds float, ptr @main.a, i64 %59
  %61 = load <4 x float>, ptr %60, align 4, !tbaa !11
  %62 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %43, <4 x float> %61, <4 x float> %58)
  store <4 x float> %62, ptr %46, align 16, !tbaa !11
  %63 = add nuw i64 %45, 4
  %64 = icmp eq i64 %63, 100
  br i1 %64, label %65, label %44, !llvm.loop !17

65:                                               ; preds = %232, %44
  %66 = phi i64 [ %233, %232 ], [ 19, %44 ]
  %67 = add nsw i64 %66, -15
  %68 = mul nuw nsw i64 %67, 201
  %69 = add nsw i64 %66, -14
  %70 = mul nuw nsw i64 %69, 201
  %71 = add nsw i64 %66, -13
  %72 = mul nuw nsw i64 %71, 201
  %73 = add nsw i64 %66, -12
  %74 = mul nuw nsw i64 %73, 201
  %75 = add nsw i64 %66, -11
  %76 = mul nuw nsw i64 %75, 201
  %77 = add nsw i64 %66, -10
  %78 = mul nuw nsw i64 %77, 201
  %79 = add nsw i64 %66, -9
  %80 = mul nuw nsw i64 %79, 201
  %81 = add nsw i64 %66, -8
  %82 = mul nuw nsw i64 %81, 201
  %83 = add nsw i64 %66, -7
  %84 = mul nuw nsw i64 %83, 201
  %85 = add nsw i64 %66, -6
  %86 = mul nuw nsw i64 %85, 201
  %87 = add nsw i64 %66, -5
  %88 = mul nuw nsw i64 %87, 201
  %89 = add nsw i64 %66, -4
  %90 = mul nuw nsw i64 %89, 201
  %91 = add nsw i64 %66, -3
  %92 = mul nuw nsw i64 %91, 201
  %93 = add nsw i64 %66, -2
  %94 = mul nuw nsw i64 %93, 201
  %95 = add nsw i64 %66, -1
  %96 = mul nuw nsw i64 %95, 201
  %97 = mul nuw nsw i64 %66, 201
  %98 = getelementptr inbounds float, ptr @main.x, i64 %66
  %99 = load float, ptr %98, align 4, !tbaa !11
  %100 = getelementptr inbounds float, ptr @main.x, i64 %95
  %101 = load float, ptr %100, align 4, !tbaa !11
  %102 = getelementptr inbounds float, ptr @main.x, i64 %93
  %103 = load float, ptr %102, align 4, !tbaa !11
  %104 = getelementptr inbounds float, ptr @main.x, i64 %91
  %105 = load float, ptr %104, align 4, !tbaa !11
  %106 = getelementptr inbounds float, ptr @main.x, i64 %89
  %107 = load float, ptr %106, align 4, !tbaa !11
  %108 = getelementptr inbounds float, ptr @main.x, i64 %87
  %109 = load float, ptr %108, align 4, !tbaa !11
  %110 = getelementptr inbounds float, ptr @main.x, i64 %85
  %111 = load float, ptr %110, align 4, !tbaa !11
  %112 = getelementptr inbounds float, ptr @main.x, i64 %83
  %113 = load float, ptr %112, align 4, !tbaa !11
  %114 = getelementptr inbounds float, ptr @main.x, i64 %81
  %115 = load float, ptr %114, align 4, !tbaa !11
  %116 = getelementptr inbounds float, ptr @main.x, i64 %79
  %117 = load float, ptr %116, align 4, !tbaa !11
  %118 = getelementptr inbounds float, ptr @main.x, i64 %77
  %119 = load float, ptr %118, align 4, !tbaa !11
  %120 = getelementptr inbounds float, ptr @main.x, i64 %75
  %121 = load float, ptr %120, align 4, !tbaa !11
  %122 = getelementptr inbounds float, ptr @main.x, i64 %73
  %123 = load float, ptr %122, align 4, !tbaa !11
  %124 = getelementptr inbounds float, ptr @main.x, i64 %71
  %125 = load float, ptr %124, align 4, !tbaa !11
  %126 = getelementptr inbounds float, ptr @main.x, i64 %69
  %127 = load float, ptr %126, align 4, !tbaa !11
  %128 = getelementptr inbounds float, ptr @main.x, i64 %67
  %129 = load float, ptr %128, align 4, !tbaa !11
  %130 = insertelement <4 x float> poison, float %129, i64 0
  %131 = shufflevector <4 x float> %130, <4 x float> poison, <4 x i32> zeroinitializer
  %132 = insertelement <4 x float> poison, float %127, i64 0
  %133 = shufflevector <4 x float> %132, <4 x float> poison, <4 x i32> zeroinitializer
  %134 = insertelement <4 x float> poison, float %125, i64 0
  %135 = shufflevector <4 x float> %134, <4 x float> poison, <4 x i32> zeroinitializer
  %136 = insertelement <4 x float> poison, float %123, i64 0
  %137 = shufflevector <4 x float> %136, <4 x float> poison, <4 x i32> zeroinitializer
  %138 = insertelement <4 x float> poison, float %121, i64 0
  %139 = shufflevector <4 x float> %138, <4 x float> poison, <4 x i32> zeroinitializer
  %140 = insertelement <4 x float> poison, float %119, i64 0
  %141 = shufflevector <4 x float> %140, <4 x float> poison, <4 x i32> zeroinitializer
  %142 = insertelement <4 x float> poison, float %117, i64 0
  %143 = shufflevector <4 x float> %142, <4 x float> poison, <4 x i32> zeroinitializer
  %144 = insertelement <4 x float> poison, float %115, i64 0
  %145 = shufflevector <4 x float> %144, <4 x float> poison, <4 x i32> zeroinitializer
  %146 = insertelement <4 x float> poison, float %113, i64 0
  %147 = shufflevector <4 x float> %146, <4 x float> poison, <4 x i32> zeroinitializer
  %148 = insertelement <4 x float> poison, float %111, i64 0
  %149 = shufflevector <4 x float> %148, <4 x float> poison, <4 x i32> zeroinitializer
  %150 = insertelement <4 x float> poison, float %109, i64 0
  %151 = shufflevector <4 x float> %150, <4 x float> poison, <4 x i32> zeroinitializer
  %152 = insertelement <4 x float> poison, float %107, i64 0
  %153 = shufflevector <4 x float> %152, <4 x float> poison, <4 x i32> zeroinitializer
  %154 = insertelement <4 x float> poison, float %105, i64 0
  %155 = shufflevector <4 x float> %154, <4 x float> poison, <4 x i32> zeroinitializer
  %156 = insertelement <4 x float> poison, float %103, i64 0
  %157 = shufflevector <4 x float> %156, <4 x float> poison, <4 x i32> zeroinitializer
  %158 = insertelement <4 x float> poison, float %101, i64 0
  %159 = shufflevector <4 x float> %158, <4 x float> poison, <4 x i32> zeroinitializer
  %160 = insertelement <4 x float> poison, float %99, i64 0
  %161 = shufflevector <4 x float> %160, <4 x float> poison, <4 x i32> zeroinitializer
  br label %162

162:                                              ; preds = %162, %65
  %163 = phi i64 [ 0, %65 ], [ %230, %162 ]
  %164 = getelementptr inbounds float, ptr @main.b, i64 %163
  %165 = load <4 x float>, ptr %164, align 16, !tbaa !11
  %166 = add nuw nsw i64 %163, %68
  %167 = getelementptr inbounds float, ptr @main.a, i64 %166
  %168 = load <4 x float>, ptr %167, align 4, !tbaa !11
  %169 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %131, <4 x float> %168, <4 x float> %165)
  %170 = add nuw nsw i64 %163, %70
  %171 = getelementptr inbounds float, ptr @main.a, i64 %170
  %172 = load <4 x float>, ptr %171, align 4, !tbaa !11
  %173 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %133, <4 x float> %172, <4 x float> %169)
  %174 = add nuw nsw i64 %163, %72
  %175 = getelementptr inbounds float, ptr @main.a, i64 %174
  %176 = load <4 x float>, ptr %175, align 4, !tbaa !11
  %177 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %135, <4 x float> %176, <4 x float> %173)
  %178 = add nuw nsw i64 %163, %74
  %179 = getelementptr inbounds float, ptr @main.a, i64 %178
  %180 = load <4 x float>, ptr %179, align 4, !tbaa !11
  %181 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %137, <4 x float> %180, <4 x float> %177)
  %182 = add nuw nsw i64 %163, %76
  %183 = getelementptr inbounds float, ptr @main.a, i64 %182
  %184 = load <4 x float>, ptr %183, align 4, !tbaa !11
  %185 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %139, <4 x float> %184, <4 x float> %181)
  %186 = add nuw nsw i64 %163, %78
  %187 = getelementptr inbounds float, ptr @main.a, i64 %186
  %188 = load <4 x float>, ptr %187, align 4, !tbaa !11
  %189 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %141, <4 x float> %188, <4 x float> %185)
  %190 = add nuw nsw i64 %163, %80
  %191 = getelementptr inbounds float, ptr @main.a, i64 %190
  %192 = load <4 x float>, ptr %191, align 4, !tbaa !11
  %193 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %143, <4 x float> %192, <4 x float> %189)
  %194 = add nuw nsw i64 %163, %82
  %195 = getelementptr inbounds float, ptr @main.a, i64 %194
  %196 = load <4 x float>, ptr %195, align 4, !tbaa !11
  %197 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %145, <4 x float> %196, <4 x float> %193)
  %198 = add nuw nsw i64 %163, %84
  %199 = getelementptr inbounds float, ptr @main.a, i64 %198
  %200 = load <4 x float>, ptr %199, align 4, !tbaa !11
  %201 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %147, <4 x float> %200, <4 x float> %197)
  %202 = add nuw nsw i64 %163, %86
  %203 = getelementptr inbounds float, ptr @main.a, i64 %202
  %204 = load <4 x float>, ptr %203, align 4, !tbaa !11
  %205 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %149, <4 x float> %204, <4 x float> %201)
  %206 = add nuw nsw i64 %163, %88
  %207 = getelementptr inbounds float, ptr @main.a, i64 %206
  %208 = load <4 x float>, ptr %207, align 4, !tbaa !11
  %209 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %151, <4 x float> %208, <4 x float> %205)
  %210 = add nuw nsw i64 %163, %90
  %211 = getelementptr inbounds float, ptr @main.a, i64 %210
  %212 = load <4 x float>, ptr %211, align 4, !tbaa !11
  %213 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %153, <4 x float> %212, <4 x float> %209)
  %214 = add nuw nsw i64 %163, %92
  %215 = getelementptr inbounds float, ptr @main.a, i64 %214
  %216 = load <4 x float>, ptr %215, align 4, !tbaa !11
  %217 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %155, <4 x float> %216, <4 x float> %213)
  %218 = add nuw nsw i64 %163, %94
  %219 = getelementptr inbounds float, ptr @main.a, i64 %218
  %220 = load <4 x float>, ptr %219, align 4, !tbaa !11
  %221 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %157, <4 x float> %220, <4 x float> %217)
  %222 = add nuw nsw i64 %163, %96
  %223 = getelementptr inbounds float, ptr @main.a, i64 %222
  %224 = load <4 x float>, ptr %223, align 4, !tbaa !11
  %225 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %159, <4 x float> %224, <4 x float> %221)
  %226 = add nuw nsw i64 %163, %97
  %227 = getelementptr inbounds float, ptr @main.a, i64 %226
  %228 = load <4 x float>, ptr %227, align 4, !tbaa !11
  %229 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %161, <4 x float> %228, <4 x float> %225)
  store <4 x float> %229, ptr %164, align 16, !tbaa !11
  %230 = add nuw i64 %163, 4
  %231 = icmp eq i64 %230, 100
  br i1 %231, label %232, label %162, !llvm.loop !18

232:                                              ; preds = %162
  %233 = add nuw nsw i64 %66, 16
  %234 = icmp ult i64 %66, 84
  br i1 %234, label %65, label %235, !llvm.loop !19

235:                                              ; preds = %235, %232
  %236 = phi i64 [ %247, %235 ], [ 0, %232 ]
  %237 = phi <2 x float> [ %246, %235 ], [ zeroinitializer, %232 ]
  %238 = getelementptr inbounds [200 x float], ptr @main.b, i64 0, i64 %236
  %239 = load float, ptr %238, align 4, !tbaa !11
  %240 = getelementptr inbounds [200 x float], ptr @main.x, i64 0, i64 %236
  %241 = load float, ptr %240, align 4, !tbaa !11
  %242 = insertelement <2 x float> poison, float %241, i64 0
  %243 = insertelement <2 x float> %242, float %239, i64 1
  %244 = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %243)
  %245 = fcmp ogt <2 x float> %237, %244
  %246 = select <2 x i1> %245, <2 x float> %237, <2 x float> %244
  %247 = add nuw nsw i64 %236, 1
  %248 = icmp eq i64 %247, 100
  br i1 %248, label %249, label %235, !llvm.loop !20

249:                                              ; preds = %235
  %.lcssa4 = phi <2 x float> [ %246, %235 ]
  %250 = fadd float %26, %25
  %251 = load float, ptr %1, align 4, !tbaa !11
  %252 = fmul float %251, 1.000000e+02
  %253 = extractelement <2 x float> %.lcssa4, i64 0
  %254 = fmul float %253, %252
  %255 = fmul float %254, 0x3E80000000000000
  %256 = extractelement <2 x float> %.lcssa4, i64 1
  %257 = fdiv float %256, %255
  %258 = fadd float %35, -1.000000e+00
  %259 = load float, ptr getelementptr inbounds ([200 x float], ptr @main.x, i64 0, i64 99), align 4, !tbaa !11
  %260 = fadd float %259, -1.000000e+00
  %261 = load ptr, ptr @stderr, align 8, !tbaa !7
  %262 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 38, i64 1, ptr %261) #12
  %263 = load ptr, ptr @stderr, align 8, !tbaa !7
  %264 = tail call i64 @fwrite(ptr nonnull @.str.8, i64 34, i64 1, ptr %263) #12
  %265 = load ptr, ptr @stderr, align 8, !tbaa !7
  %266 = fpext float %257 to double
  %267 = fpext float %256 to double
  %268 = fpext float %258 to double
  %269 = fpext float %260 to double
  %270 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %265, ptr noundef nonnull @.str.9, double noundef %266, double noundef %267, double noundef 0x3E80000000000000, double noundef %268, double noundef %269) #13
  %271 = load ptr, ptr @stderr, align 8, !tbaa !7
  %272 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %271, ptr noundef nonnull @.str.10, i32 noundef 100) #13
  %273 = load ptr, ptr @stderr, align 8, !tbaa !7
  %274 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %273, ptr noundef nonnull @.str.11, i32 noundef 201) #13
  %275 = load ptr, ptr @stderr, align 8, !tbaa !7
  %276 = tail call i64 @fwrite(ptr nonnull @.str.12, i64 55, i64 1, ptr %275) #12
  %277 = load ptr, ptr @stderr, align 8, !tbaa !7
  %278 = tail call i64 @fwrite(ptr nonnull @.str.13, i64 12, i64 1, ptr %277) #12
  store float %250, ptr getelementptr inbounds ([9 x [15 x float]], ptr @atime, i64 0, i64 2), align 8, !tbaa !11
  %279 = fcmp ogt float %250, 0.000000e+00
  br i1 %279, label %280, label %286

280:                                              ; preds = %249
  %281 = fpext float %250 to double
  %282 = fmul double %281, 1.000000e+06
  %283 = fdiv double 0x4124F49560000000, %282
  %284 = fptrunc double %283 to float
  %285 = fdiv float 2.000000e+00, %284
  br label %286

286:                                              ; preds = %280, %249
  %287 = phi float [ %284, %280 ], [ 0.000000e+00, %249 ]
  %288 = phi float [ %285, %280 ], [ 0.000000e+00, %249 ]
  store float %287, ptr getelementptr inbounds ([9 x [15 x float]], ptr @atime, i64 0, i64 3), align 4
  store float %288, ptr getelementptr inbounds ([9 x [15 x float]], ptr @atime, i64 0, i64 4), align 16, !tbaa !11
  %289 = fdiv float %250, 0x3FACAC0840000000
  store float %289, ptr getelementptr inbounds ([9 x [15 x float]], ptr @atime, i64 0, i64 5), align 4, !tbaa !11
  %290 = load ptr, ptr @stderr, align 8, !tbaa !7
  %291 = tail call i64 @fwrite(ptr nonnull @.str.14, i64 29, i64 1, ptr %290) #12
  br label %292

292:                                              ; preds = %300, %286
  %293 = phi i32 [ -3, %286 ], [ %301, %300 ]
  %294 = phi i32 [ 100, %286 ], [ %305, %300 ]
  %295 = tail call i64 @clock() #15
  br label %296

296:                                              ; preds = %296, %292
  %297 = phi i32 [ %298, %296 ], [ 0, %292 ]
  call fastcc void @matgen(ptr noundef nonnull @main.a, i32 noundef 201, ptr noundef nonnull %1) #14
  %298 = add nuw nsw i32 %297, 1
  %299 = icmp eq i32 %298, %294
  br i1 %299, label %300, label %296, !llvm.loop !21

300:                                              ; preds = %296
  %301 = add nsw i32 %293, 1
  %302 = tail call i64 @clock() #15
  %303 = load ptr, ptr @stderr, align 8, !tbaa !7
  %304 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %303, ptr noundef nonnull @.str.15, i32 noundef %294, double noundef 0.000000e+00) #13
  %305 = shl nsw i32 %294, 1
  %306 = icmp eq i32 %301, 0
  br i1 %306, label %307, label %292, !llvm.loop !22

307:                                              ; preds = %300
  %.lcssa3 = phi i64 [ %302, %300 ]
  %.lcssa2 = phi i64 [ %295, %300 ]
  %308 = sitofp i64 %.lcssa2 to float
  %309 = sitofp i64 %.lcssa3 to float
  %310 = fdiv float %309, 1.000000e+06
  %311 = load ptr, ptr @stderr, align 8, !tbaa !7
  %312 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %311, ptr noundef nonnull @.str.16, double noundef 0.000000e+00) #13
  %313 = load ptr, ptr @stderr, align 8, !tbaa !7
  %314 = tail call i64 @fwrite(ptr nonnull @.str.17, i64 46, i64 1, ptr %313) #12
  br label %315

315:                                              ; preds = %332, %307
  %316 = phi i32 [ 100, %307 ], [ %334, %332 ]
  %317 = phi i32 [ -3, %307 ], [ %319, %332 ]
  store i32 %316, ptr @main.ntimes, align 4, !tbaa !23
  %318 = tail call i64 @clock() #15
  %319 = add nsw i32 %317, 1
  %320 = load i32, ptr @main.ntimes, align 4, !tbaa !23
  %321 = icmp sgt i32 %320, 0
  br i1 %321, label %322, label %326

322:                                              ; preds = %322, %315
  %323 = phi i32 [ %324, %322 ], [ 0, %315 ]
  call fastcc void @matgen(ptr noundef nonnull @main.a, i32 noundef 201, ptr noundef nonnull %1) #14
  tail call fastcc void @dgefa(ptr noundef nonnull @main.a, i32 noundef 201) #14
  %324 = add nuw nsw i32 %323, 1
  %325 = icmp eq i32 %324, %320
  br i1 %325, label %326, label %322, !llvm.loop !25

326:                                              ; preds = %322, %315
  %327 = tail call i64 @clock() #15
  %328 = load ptr, ptr @stderr, align 8, !tbaa !7
  %329 = load i32, ptr @main.ntimes, align 4, !tbaa !23
  %330 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %328, ptr noundef nonnull @.str.15, i32 noundef %329, double noundef 0.000000e+00) #13
  %331 = icmp eq i32 %317, -1
  br i1 %331, label %335, label %332

332:                                              ; preds = %326
  %333 = load i32, ptr @main.ntimes, align 4, !tbaa !23
  %334 = shl nsw i32 %333, 1
  br label %315, !llvm.loop !26

335:                                              ; preds = %326
  %336 = fdiv float %308, 1.000000e+06
  %337 = fsub float %310, %336
  %338 = fdiv float %337, 4.000000e+02
  store i32 1000, ptr @main.ntimes, align 4
  %339 = load ptr, ptr @stderr, align 8, !tbaa !7
  %340 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %339, ptr noundef nonnull @.str.18, i32 noundef 0) #13
  %341 = load ptr, ptr @stderr, align 8, !tbaa !7
  %342 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %341, ptr noundef nonnull @.str.19, i32 noundef 201) #13
  %343 = load ptr, ptr @stderr, align 8, !tbaa !7
  %344 = tail call i64 @fwrite(ptr nonnull @.str.12, i64 55, i64 1, ptr %343) #12
  %345 = load ptr, ptr @stderr, align 8, !tbaa !7
  %346 = tail call i64 @fwrite(ptr nonnull @.str.13, i64 12, i64 1, ptr %345) #12
  %347 = load i32, ptr @main.ntimes, align 4, !tbaa !23
  %348 = sitofp i32 %347 to float
  %349 = fmul float %338, %348
  store float 0.000000e+00, ptr getelementptr inbounds ([9 x [15 x float]], ptr @atime, i64 0, i64 3, i64 6), align 4, !tbaa !11
  store i32 1, ptr @main.j, align 4, !tbaa !23
  br label %350

350:                                              ; preds = %381, %335
  %351 = tail call i64 @clock() #15
  %352 = sitofp i64 %351 to float
  %353 = fdiv float %352, 1.000000e+06
  %354 = load i32, ptr @main.ntimes, align 4, !tbaa !23
  %355 = icmp sgt i32 %354, 0
  br i1 %355, label %356, label %360

356:                                              ; preds = %356, %350
  %357 = phi i32 [ %358, %356 ], [ 0, %350 ]
  call fastcc void @matgen(ptr noundef nonnull @main.a, i32 noundef 201, ptr noundef nonnull %1) #14
  tail call fastcc void @dgefa(ptr noundef nonnull @main.a, i32 noundef 201) #14
  %358 = add nuw nsw i32 %357, 1
  %359 = icmp eq i32 %358, %354
  br i1 %359, label %360, label %356, !llvm.loop !27

360:                                              ; preds = %356, %350
  %361 = tail call i64 @clock() #15
  %362 = sitofp i64 %361 to float
  %363 = fdiv float %362, 1.000000e+06
  %364 = fsub float %363, %353
  %365 = fsub float %364, %349
  %366 = load i32, ptr @main.ntimes, align 4, !tbaa !23
  %367 = sitofp i32 %366 to float
  %368 = fdiv float %365, %367
  %369 = load i32, ptr @main.j, align 4, !tbaa !23
  %370 = sext i32 %369 to i64
  %371 = getelementptr inbounds [15 x float], ptr @atime, i64 0, i64 %370
  store float %368, ptr %371, align 4, !tbaa !11
  %372 = tail call i64 @clock() #15
  %373 = sitofp i64 %372 to float
  %374 = fdiv float %373, 1.000000e+06
  %375 = load i32, ptr @main.ntimes, align 4, !tbaa !23
  %376 = icmp sgt i32 %375, 0
  br i1 %376, label %377, label %381

377:                                              ; preds = %377, %360
  %378 = phi i32 [ %379, %377 ], [ 0, %360 ]
  tail call fastcc void @dgesl(ptr noundef nonnull @main.a, i32 noundef 201) #14
  %379 = add nuw nsw i32 %378, 1
  %380 = icmp eq i32 %379, %375
  br i1 %380, label %381, label %377, !llvm.loop !28

381:                                              ; preds = %377, %360
  %382 = tail call i64 @clock() #15
  %383 = sitofp i64 %382 to float
  %384 = fdiv float %383, 1.000000e+06
  %385 = fsub float %384, %374
  %386 = load i32, ptr @main.ntimes, align 4, !tbaa !23
  %387 = sitofp i32 %386 to float
  %388 = fdiv float %385, %387
  %389 = load i32, ptr @main.j, align 4, !tbaa !23
  %390 = sext i32 %389 to i64
  %391 = getelementptr inbounds [9 x [15 x float]], ptr @atime, i64 0, i64 1, i64 %390
  store float %388, ptr %391, align 4, !tbaa !11
  %392 = getelementptr inbounds [15 x float], ptr @atime, i64 0, i64 %390
  %393 = load float, ptr %392, align 4, !tbaa !11
  %394 = fadd float %393, %388
  %395 = getelementptr inbounds [9 x [15 x float]], ptr @atime, i64 0, i64 2, i64 %390
  store float %394, ptr %395, align 4, !tbaa !11
  %396 = fpext float %394 to double
  %397 = fmul double %396, 1.000000e+06
  %398 = fdiv double 0x4124F49560000000, %397
  %399 = fptrunc double %398 to float
  %400 = getelementptr inbounds [9 x [15 x float]], ptr @atime, i64 0, i64 3, i64 %390
  store float %399, ptr %400, align 4, !tbaa !11
  %401 = fdiv float 2.000000e+00, %399
  %402 = getelementptr inbounds [9 x [15 x float]], ptr @atime, i64 0, i64 4, i64 %390
  store float %401, ptr %402, align 4, !tbaa !11
  %403 = fdiv float %394, 0x3FACAC0840000000
  %404 = getelementptr inbounds [9 x [15 x float]], ptr @atime, i64 0, i64 5, i64 %390
  store float %403, ptr %404, align 4, !tbaa !11
  %405 = load float, ptr getelementptr inbounds ([9 x [15 x float]], ptr @atime, i64 0, i64 3, i64 6), align 4, !tbaa !11
  %406 = fadd float %405, %399
  store float %406, ptr getelementptr inbounds ([9 x [15 x float]], ptr @atime, i64 0, i64 3, i64 6), align 4, !tbaa !11
  %407 = add nsw i32 %389, 1
  store i32 %407, ptr @main.j, align 4, !tbaa !23
  %408 = icmp slt i32 %389, 5
  br i1 %408, label %350, label %409, !llvm.loop !29

409:                                              ; preds = %381
  %.lcssa1 = phi float [ %406, %381 ]
  %410 = fdiv float %.lcssa1, 5.000000e+00
  store float %410, ptr getelementptr inbounds ([9 x [15 x float]], ptr @atime, i64 0, i64 3, i64 6), align 4, !tbaa !11
  %411 = load ptr, ptr @stderr, align 8, !tbaa !7
  %412 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %411, ptr noundef nonnull @.str.20, double noundef 0.000000e+00) #13
  %413 = load ptr, ptr @stderr, align 8, !tbaa !7
  %414 = tail call i64 @fwrite(ptr nonnull @.str.21, i64 30, i64 1, ptr %413) #12
  %415 = tail call i64 @clock() #15
  %416 = sitofp i64 %415 to float
  br label %417

417:                                              ; preds = %417, %409
  %418 = phi i32 [ %419, %417 ], [ 0, %409 ]
  call fastcc void @matgen(ptr noundef nonnull @main.aa, i32 noundef 200, ptr noundef nonnull %1) #14
  %419 = add nuw nsw i32 %418, 1
  %420 = icmp eq i32 %419, 400
  br i1 %420, label %421, label %417, !llvm.loop !30

421:                                              ; preds = %417
  %422 = fdiv float %416, 1.000000e+06
  %423 = tail call i64 @clock() #15
  %424 = sitofp i64 %423 to float
  %425 = fdiv float %424, 1.000000e+06
  %426 = fsub float %425, %422
  %427 = fdiv float %426, 4.000000e+02
  %428 = load ptr, ptr @stderr, align 8, !tbaa !7
  %429 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %428, ptr noundef nonnull @.str.16, double noundef 0.000000e+00) #13
  %430 = load ptr, ptr @stderr, align 8, !tbaa !7
  %431 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %430, ptr noundef nonnull @.str.19, i32 noundef 200) #13
  %432 = load ptr, ptr @stderr, align 8, !tbaa !7
  %433 = tail call i64 @fwrite(ptr nonnull @.str.12, i64 55, i64 1, ptr %432) #12
  %434 = load ptr, ptr @stderr, align 8, !tbaa !7
  %435 = tail call i64 @fwrite(ptr nonnull @.str.13, i64 12, i64 1, ptr %434) #12
  %436 = load i32, ptr @main.ntimes, align 4, !tbaa !23
  %437 = sitofp i32 %436 to float
  %438 = fmul float %427, %437
  store float 0.000000e+00, ptr getelementptr inbounds ([9 x [15 x float]], ptr @atime, i64 0, i64 3, i64 12), align 4, !tbaa !11
  store i32 7, ptr @main.j, align 4, !tbaa !23
  br label %439

439:                                              ; preds = %470, %421
  %440 = tail call i64 @clock() #15
  %441 = sitofp i64 %440 to float
  %442 = fdiv float %441, 1.000000e+06
  %443 = load i32, ptr @main.ntimes, align 4, !tbaa !23
  %444 = icmp sgt i32 %443, 0
  br i1 %444, label %445, label %449

445:                                              ; preds = %445, %439
  %446 = phi i32 [ %447, %445 ], [ 0, %439 ]
  call fastcc void @matgen(ptr noundef nonnull @main.aa, i32 noundef 200, ptr noundef nonnull %1) #14
  tail call fastcc void @dgefa(ptr noundef nonnull @main.aa, i32 noundef 200) #14
  %447 = add nuw nsw i32 %446, 1
  %448 = icmp eq i32 %447, %443
  br i1 %448, label %449, label %445, !llvm.loop !31

449:                                              ; preds = %445, %439
  %450 = tail call i64 @clock() #15
  %451 = sitofp i64 %450 to float
  %452 = fdiv float %451, 1.000000e+06
  %453 = fsub float %452, %442
  %454 = fsub float %453, %438
  %455 = load i32, ptr @main.ntimes, align 4, !tbaa !23
  %456 = sitofp i32 %455 to float
  %457 = fdiv float %454, %456
  %458 = load i32, ptr @main.j, align 4, !tbaa !23
  %459 = sext i32 %458 to i64
  %460 = getelementptr inbounds [15 x float], ptr @atime, i64 0, i64 %459
  store float %457, ptr %460, align 4, !tbaa !11
  %461 = tail call i64 @clock() #15
  %462 = sitofp i64 %461 to float
  %463 = fdiv float %462, 1.000000e+06
  %464 = load i32, ptr @main.ntimes, align 4, !tbaa !23
  %465 = icmp sgt i32 %464, 0
  br i1 %465, label %466, label %470

466:                                              ; preds = %466, %449
  %467 = phi i32 [ %468, %466 ], [ 0, %449 ]
  tail call fastcc void @dgesl(ptr noundef nonnull @main.aa, i32 noundef 200) #14
  %468 = add nuw nsw i32 %467, 1
  %469 = icmp eq i32 %468, %464
  br i1 %469, label %470, label %466, !llvm.loop !32

470:                                              ; preds = %466, %449
  %471 = tail call i64 @clock() #15
  %472 = sitofp i64 %471 to float
  %473 = fdiv float %472, 1.000000e+06
  %474 = fsub float %473, %463
  %475 = load i32, ptr @main.ntimes, align 4, !tbaa !23
  %476 = sitofp i32 %475 to float
  %477 = fdiv float %474, %476
  %478 = load i32, ptr @main.j, align 4, !tbaa !23
  %479 = sext i32 %478 to i64
  %480 = getelementptr inbounds [9 x [15 x float]], ptr @atime, i64 0, i64 1, i64 %479
  store float %477, ptr %480, align 4, !tbaa !11
  %481 = getelementptr inbounds [15 x float], ptr @atime, i64 0, i64 %479
  %482 = load float, ptr %481, align 4, !tbaa !11
  %483 = fadd float %482, %477
  %484 = getelementptr inbounds [9 x [15 x float]], ptr @atime, i64 0, i64 2, i64 %479
  store float %483, ptr %484, align 4, !tbaa !11
  %485 = fpext float %483 to double
  %486 = fmul double %485, 1.000000e+06
  %487 = fdiv double 0x4124F49560000000, %486
  %488 = fptrunc double %487 to float
  %489 = getelementptr inbounds [9 x [15 x float]], ptr @atime, i64 0, i64 3, i64 %479
  store float %488, ptr %489, align 4, !tbaa !11
  %490 = fdiv float 2.000000e+00, %488
  %491 = getelementptr inbounds [9 x [15 x float]], ptr @atime, i64 0, i64 4, i64 %479
  store float %490, ptr %491, align 4, !tbaa !11
  %492 = fdiv float %483, 0x3FACAC0840000000
  %493 = getelementptr inbounds [9 x [15 x float]], ptr @atime, i64 0, i64 5, i64 %479
  store float %492, ptr %493, align 4, !tbaa !11
  %494 = load float, ptr getelementptr inbounds ([9 x [15 x float]], ptr @atime, i64 0, i64 3, i64 12), align 4, !tbaa !11
  %495 = fadd float %494, %488
  store float %495, ptr getelementptr inbounds ([9 x [15 x float]], ptr @atime, i64 0, i64 3, i64 12), align 4, !tbaa !11
  %496 = add nsw i32 %478, 1
  store i32 %496, ptr @main.j, align 4, !tbaa !23
  %497 = icmp slt i32 %478, 11
  br i1 %497, label %439, label %498, !llvm.loop !33

498:                                              ; preds = %470
  %.lcssa = phi float [ %495, %470 ]
  %499 = fdiv float %.lcssa, 5.000000e+00
  store float %499, ptr getelementptr inbounds ([9 x [15 x float]], ptr @atime, i64 0, i64 3, i64 12), align 4, !tbaa !11
  %500 = load ptr, ptr @stderr, align 8, !tbaa !7
  %501 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %500, ptr noundef nonnull @.str.20, double noundef 0.000000e+00) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #11
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: nofree nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @matgen(ptr nocapture noundef %0, i32 noundef %1, ptr nocapture noundef %2) unnamed_addr #4 {
  store float 0.000000e+00, ptr %2, align 4, !tbaa !11
  %4 = zext i32 %1 to i64
  br label %5

5:                                                ; preds = %25, %3
  %6 = phi i64 [ 0, %3 ], [ %26, %25 ]
  %7 = phi i32 [ 1325, %3 ], [ %.lcssa, %25 ]
  %8 = mul nuw nsw i64 %6, %4
  br label %9

9:                                                ; preds = %9, %5
  %10 = phi i64 [ 0, %5 ], [ %23, %9 ]
  %11 = phi i32 [ %7, %5 ], [ %13, %9 ]
  %12 = mul nuw nsw i32 %11, 3125
  %13 = and i32 %12, 65535
  %14 = add nsw i32 %13, -32768
  %15 = sitofp i32 %14 to double
  %16 = fmul double %15, 0x3F10000000000000
  %17 = fptrunc double %16 to float
  %18 = add nuw nsw i64 %10, %8
  %19 = getelementptr inbounds float, ptr %0, i64 %18
  store float %17, ptr %19, align 4, !tbaa !11
  %20 = load float, ptr %2, align 4, !tbaa !11
  %21 = fcmp olt float %20, %17
  %22 = select i1 %21, float %17, float %20
  store float %22, ptr %2, align 4, !tbaa !11
  %23 = add nuw nsw i64 %10, 1
  %24 = icmp eq i64 %23, 100
  br i1 %24, label %25, label %9, !llvm.loop !34

25:                                               ; preds = %9
  %.lcssa = phi i32 [ %13, %9 ]
  %26 = add nuw nsw i64 %6, 1
  %27 = icmp eq i64 %26, 100
  br i1 %27, label %28, label %5, !llvm.loop !35

28:                                               ; preds = %25
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(400) @main.b, i8 0, i64 400, i1 false), !tbaa !11
  br label %29

29:                                               ; preds = %42, %28
  %30 = phi i64 [ 0, %28 ], [ %43, %42 ]
  %31 = mul nuw nsw i64 %30, %4
  br label %32

32:                                               ; preds = %32, %29
  %33 = phi i64 [ 0, %29 ], [ %40, %32 ]
  %34 = getelementptr inbounds float, ptr @main.b, i64 %33
  %35 = load <4 x float>, ptr %34, align 16, !tbaa !11
  %36 = add nuw nsw i64 %33, %31
  %37 = getelementptr inbounds float, ptr %0, i64 %36
  %38 = load <4 x float>, ptr %37, align 4, !tbaa !11
  %39 = fadd <4 x float> %35, %38
  store <4 x float> %39, ptr %34, align 16, !tbaa !11
  %40 = add nuw i64 %33, 4
  %41 = icmp eq i64 %40, 100
  br i1 %41, label %42, label %32, !llvm.loop !36

42:                                               ; preds = %32
  %43 = add nuw nsw i64 %30, 1
  %44 = icmp eq i64 %43, 100
  br i1 %44, label %45, label %29, !llvm.loop !37

45:                                               ; preds = %42
  ret void
}

; Function Attrs: nounwind optsize
declare i64 @clock() local_unnamed_addr #5

; Function Attrs: nofree nosync nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @dgefa(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #6 {
  %3 = zext i32 %1 to i64
  %4 = add nuw nsw i32 %1, 1
  br label %5

5:                                                ; preds = %84, %2
  %6 = phi i64 [ 0, %2 ], [ %9, %84 ]
  %7 = phi i64 [ 1, %2 ], [ %85, %84 ]
  %8 = trunc i64 %6 to i32
  %9 = add nuw nsw i64 %6, 1
  %10 = mul nuw nsw i64 %6, %3
  %11 = mul i32 %4, %8
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds float, ptr %0, i64 %12
  %14 = sub nuw nsw i64 100, %6
  %15 = load float, ptr %13, align 4, !tbaa !11
  %16 = tail call float @llvm.fabs.f32(float %15)
  br label %17

17:                                               ; preds = %17, %5
  %18 = phi i64 [ 1, %5 ], [ %28, %17 ]
  %19 = phi i32 [ 0, %5 ], [ %27, %17 ]
  %20 = phi float [ %16, %5 ], [ %25, %17 ]
  %21 = getelementptr inbounds float, ptr %13, i64 %18
  %22 = load float, ptr %21, align 4, !tbaa !11
  %23 = tail call float @llvm.fabs.f32(float %22)
  %24 = fcmp ogt float %23, %20
  %25 = select i1 %24, float %23, float %20
  %26 = trunc i64 %18 to i32
  %27 = select i1 %24, i32 %26, i32 %19
  %28 = add nuw nsw i64 %18, 1
  %29 = icmp eq i64 %28, %14
  br i1 %29, label %30, label %17, !llvm.loop !38

30:                                               ; preds = %17
  %.lcssa = phi i32 [ %27, %17 ]
  %31 = add nsw i32 %.lcssa, %8
  %32 = getelementptr inbounds i32, ptr @main.ipvt, i64 %6
  store i32 %31, ptr %32, align 4, !tbaa !23
  %33 = sext i32 %31 to i64
  %34 = add nsw i64 %10, %33
  %35 = getelementptr inbounds float, ptr %0, i64 %34
  %36 = load float, ptr %35, align 4, !tbaa !11
  %37 = fcmp une float %36, 0.000000e+00
  br i1 %37, label %38, label %84

38:                                               ; preds = %30
  %39 = icmp eq i32 %.lcssa, 0
  %40 = load float, ptr %13, align 4, !tbaa !11
  br i1 %39, label %42, label %41

41:                                               ; preds = %38
  store float %40, ptr %35, align 4, !tbaa !11
  store float %36, ptr %13, align 4, !tbaa !11
  br label %42

42:                                               ; preds = %41, %38
  %43 = phi float [ %36, %41 ], [ %40, %38 ]
  %44 = fdiv float -1.000000e+00, %43
  %45 = sub nuw nsw i64 99, %6
  %46 = add nsw i32 %11, 1
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds float, ptr %0, i64 %47
  br label %49

49:                                               ; preds = %49, %42
  %50 = phi i64 [ 0, %42 ], [ %54, %49 ]
  %51 = getelementptr inbounds float, ptr %48, i64 %50
  %52 = load float, ptr %51, align 4, !tbaa !11
  %53 = fmul float %44, %52
  store float %53, ptr %51, align 4, !tbaa !11
  %54 = add nuw nsw i64 %50, 1
  %55 = icmp eq i64 %54, %45
  br i1 %55, label %56, label %49, !llvm.loop !39

56:                                               ; preds = %81, %49
  %57 = phi i64 [ %82, %81 ], [ %7, %49 ]
  %58 = mul nuw nsw i64 %57, %3
  %59 = add nsw i64 %58, %33
  %60 = getelementptr inbounds float, ptr %0, i64 %59
  %61 = load float, ptr %60, align 4, !tbaa !11
  br i1 %39, label %66, label %62

62:                                               ; preds = %56
  %63 = add nuw nsw i64 %58, %6
  %64 = getelementptr inbounds float, ptr %0, i64 %63
  %65 = load float, ptr %64, align 4, !tbaa !11
  store float %65, ptr %60, align 4, !tbaa !11
  store float %61, ptr %64, align 4, !tbaa !11
  br label %66

66:                                               ; preds = %62, %56
  %67 = add nuw nsw i64 %58, %9
  %68 = shl i64 %67, 32
  %69 = ashr exact i64 %68, 32
  %70 = getelementptr inbounds float, ptr %0, i64 %69
  %71 = fcmp oeq float %61, 0.000000e+00
  br i1 %71, label %81, label %72

72:                                               ; preds = %72, %66
  %73 = phi i64 [ %79, %72 ], [ 0, %66 ]
  %74 = getelementptr inbounds float, ptr %70, i64 %73
  %75 = load float, ptr %74, align 4, !tbaa !11
  %76 = getelementptr inbounds float, ptr %48, i64 %73
  %77 = load float, ptr %76, align 4, !tbaa !11
  %78 = tail call float @llvm.fmuladd.f32(float %61, float %77, float %75)
  store float %78, ptr %74, align 4, !tbaa !11
  %79 = add nuw nsw i64 %73, 1
  %80 = icmp eq i64 %79, %45
  br i1 %80, label %81, label %72, !llvm.loop !40

81:                                               ; preds = %72, %66
  %82 = add nuw nsw i64 %57, 1
  %83 = icmp eq i64 %82, 100
  br i1 %83, label %84, label %56, !llvm.loop !41

84:                                               ; preds = %81, %30
  %85 = add nuw nsw i64 %7, 1
  %86 = icmp eq i64 %9, 99
  br i1 %86, label %87, label %5, !llvm.loop !42

87:                                               ; preds = %84
  store i32 99, ptr getelementptr inbounds ([200 x i32], ptr @main.ipvt, i64 0, i64 99), align 4, !tbaa !23
  ret void
}

; Function Attrs: nofree nosync nounwind optsize memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define internal fastcc void @dgesl(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #7 {
  %3 = add nuw nsw i32 %1, 1
  br label %4

4:                                                ; preds = %36, %2
  %5 = phi i64 [ 0, %2 ], [ %17, %36 ]
  %6 = getelementptr inbounds i32, ptr @main.ipvt, i64 %5
  %7 = load i32, ptr %6, align 4, !tbaa !23
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds float, ptr @main.b, i64 %8
  %10 = load float, ptr %9, align 4, !tbaa !11
  %11 = zext i32 %7 to i64
  %12 = icmp eq i64 %5, %11
  br i1 %12, label %16, label %13

13:                                               ; preds = %4
  %14 = getelementptr inbounds float, ptr @main.b, i64 %5
  %15 = load float, ptr %14, align 4, !tbaa !11
  store float %15, ptr %9, align 4, !tbaa !11
  store float %10, ptr %14, align 4, !tbaa !11
  br label %16

16:                                               ; preds = %13, %4
  %17 = add nuw nsw i64 %5, 1
  %18 = trunc i64 %5 to i32
  %19 = mul i32 %3, %18
  %20 = add nsw i32 %19, 1
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds float, ptr %0, i64 %21
  %23 = getelementptr inbounds float, ptr @main.b, i64 %17
  %24 = fcmp oeq float %10, 0.000000e+00
  br i1 %24, label %36, label %25

25:                                               ; preds = %16
  %26 = sub nuw nsw i64 99, %5
  br label %27

27:                                               ; preds = %27, %25
  %28 = phi i64 [ 0, %25 ], [ %34, %27 ]
  %29 = getelementptr inbounds float, ptr %23, i64 %28
  %30 = load float, ptr %29, align 4, !tbaa !11
  %31 = getelementptr inbounds float, ptr %22, i64 %28
  %32 = load float, ptr %31, align 4, !tbaa !11
  %33 = tail call float @llvm.fmuladd.f32(float %10, float %32, float %30)
  store float %33, ptr %29, align 4, !tbaa !11
  %34 = add nuw nsw i64 %28, 1
  %35 = icmp eq i64 %34, %26
  br i1 %35, label %36, label %27, !llvm.loop !40

36:                                               ; preds = %27, %16
  %37 = icmp eq i64 %17, 99
  br i1 %37, label %38, label %4, !llvm.loop !43

38:                                               ; preds = %36
  %39 = zext i32 %1 to i64
  br label %40

40:                                               ; preds = %69, %38
  %41 = phi i64 [ 0, %38 ], [ %42, %69 ]
  %42 = add nuw nsw i64 %41, 1
  %43 = trunc i64 %42 to i32
  %44 = sub nuw nsw i64 99, %41
  %45 = sub nsw i32 100, %43
  %46 = getelementptr inbounds float, ptr @main.b, i64 %44
  %47 = load float, ptr %46, align 4, !tbaa !11
  %48 = mul nsw i64 %44, %39
  %49 = mul nsw i32 %45, %1
  %50 = sext i32 %49 to i64
  %51 = add nsw i64 %44, %50
  %52 = getelementptr inbounds float, ptr %0, i64 %51
  %53 = load float, ptr %52, align 4, !tbaa !11
  %54 = fdiv float %47, %53
  store float %54, ptr %46, align 4, !tbaa !11
  %55 = fneg float %54
  %56 = getelementptr inbounds float, ptr %0, i64 %48
  %57 = icmp ugt i64 %41, 98
  %58 = fcmp oeq float %54, 0.000000e+00
  %59 = or i1 %57, %58
  br i1 %59, label %69, label %60

60:                                               ; preds = %60, %40
  %61 = phi i64 [ %67, %60 ], [ 0, %40 ]
  %62 = getelementptr inbounds float, ptr @main.b, i64 %61
  %63 = load float, ptr %62, align 4, !tbaa !11
  %64 = getelementptr inbounds float, ptr %56, i64 %61
  %65 = load float, ptr %64, align 4, !tbaa !11
  %66 = tail call float @llvm.fmuladd.f32(float %55, float %65, float %63)
  store float %66, ptr %62, align 4, !tbaa !11
  %67 = add nuw nsw i64 %61, 1
  %68 = icmp eq i64 %67, %44
  br i1 %68, label %69, label %60, !llvm.loop !40

69:                                               ; preds = %60, %40
  %70 = icmp eq i64 %42, 100
  br i1 %70, label %71, label %40, !llvm.loop !44

71:                                               ; preds = %69
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #9

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

attributes #0 = { nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind }
attributes #3 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nosync nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nosync nounwind optsize memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #11 = { nounwind }
attributes #12 = { cold }
attributes #13 = { cold optsize }
attributes #14 = { optsize }
attributes #15 = { nounwind optsize }

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
!12 = !{!"float", !9, i64 0}
!13 = distinct !{!13, !14, !15, !16}
!14 = !{!"llvm.loop.mustprogress"}
!15 = !{!"llvm.loop.isvectorized", i32 1}
!16 = !{!"llvm.loop.unroll.runtime.disable"}
!17 = distinct !{!17, !14, !15, !16}
!18 = distinct !{!18, !14, !15, !16}
!19 = distinct !{!19, !14}
!20 = distinct !{!20, !14}
!21 = distinct !{!21, !14}
!22 = distinct !{!22, !14}
!23 = !{!24, !24, i64 0}
!24 = !{!"int", !9, i64 0}
!25 = distinct !{!25, !14}
!26 = distinct !{!26, !14}
!27 = distinct !{!27, !14}
!28 = distinct !{!28, !14}
!29 = distinct !{!29, !14}
!30 = distinct !{!30, !14}
!31 = distinct !{!31, !14}
!32 = distinct !{!32, !14}
!33 = distinct !{!33, !14}
!34 = distinct !{!34, !14}
!35 = distinct !{!35, !14}
!36 = distinct !{!36, !14, !15, !16}
!37 = distinct !{!37, !14}
!38 = distinct !{!38, !14}
!39 = distinct !{!39, !14}
!40 = distinct !{!40, !14}
!41 = distinct !{!41, !14}
!42 = distinct !{!42, !14}
!43 = distinct !{!43, !14}
!44 = distinct !{!44, !14}
