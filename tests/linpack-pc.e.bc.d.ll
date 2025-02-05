; ModuleID = 'linpack-pc.e.bc.ll'
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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #13
  %2 = load ptr, ptr @stderr, align 8, !tbaa !7
  %3 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 7, i64 1, ptr %2) #14
  %4 = load ptr, ptr @stderr, align 8, !tbaa !7
  %5 = tail call i64 @fwrite(ptr nonnull @.str.3, i64 7, i64 1, ptr %4) #14
  %6 = load ptr, ptr @stderr, align 8, !tbaa !7
  %7 = tail call i64 @fwrite(ptr nonnull @.str.4, i64 53, i64 1, ptr %6) #14
  %8 = load ptr, ptr @stderr, align 8, !tbaa !7
  %9 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str) #15
  %10 = load ptr, ptr @stderr, align 8, !tbaa !7
  %11 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1) #15
  call fastcc void @matgen(ptr noundef nonnull @main.a, i32 noundef 201, ptr noundef nonnull %1) #16
  tail call fastcc void @dgefa(ptr noundef nonnull @main.a, i32 noundef 201) #16
  %12 = call float @_wyvern_slice_main__122845018()
  store float %12, ptr @atime, align 16, !tbaa !11
  tail call fastcc void @dgesl(ptr noundef nonnull @main.a, i32 noundef 201) #16
  %13 = call float @_wyvern_slice_main__122845018()
  store float %13, ptr getelementptr inbounds ([9 x [15 x float]], ptr @atime, i64 0, i64 1), align 4, !tbaa !11
  %14 = load float, ptr @atime, align 16, !tbaa !11
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(400) @main.x, ptr noundef nonnull align 16 dereferenceable(400) @main.b, i64 400, i1 false), !tbaa !11
  call fastcc void @matgen(ptr noundef nonnull @main.a, i32 noundef 201, ptr noundef nonnull %1) #16
  br label %15

15:                                               ; preds = %15, %0
  %16 = phi i64 [ 0, %0 ], [ %20, %15 ]
  %17 = getelementptr inbounds [200 x float], ptr @main.b, i64 0, i64 %16
  %18 = load <4 x float>, ptr %17, align 16, !tbaa !11
  %19 = fneg <4 x float> %18
  store <4 x float> %19, ptr %17, align 16, !tbaa !11
  %20 = add nuw nsw i64 %16, 4
  %21 = icmp eq i64 %20, 100
  br i1 %21, label %22, label %15, !llvm.loop !13

22:                                               ; preds = %15
  %23 = load float, ptr @main.x, align 16, !tbaa !11
  %24 = load <4 x float>, ptr getelementptr inbounds ([200 x float], ptr @main.x, i64 0, i64 3), align 4
  %25 = load <4 x float>, ptr getelementptr inbounds ([200 x float], ptr @main.x, i64 0, i64 2), align 8
  %26 = load <4 x float>, ptr getelementptr inbounds ([200 x float], ptr @main.x, i64 0, i64 1), align 4
  %27 = insertelement <4 x float> poison, float %23, i64 0
  %28 = shufflevector <4 x float> %27, <4 x float> poison, <4 x i32> zeroinitializer
  %29 = shufflevector <4 x float> %26, <4 x float> poison, <4 x i32> zeroinitializer
  %30 = shufflevector <4 x float> %25, <4 x float> poison, <4 x i32> zeroinitializer
  %31 = shufflevector <4 x float> %24, <4 x float> poison, <4 x i32> zeroinitializer
  br label %32

32:                                               ; preds = %32, %22
  %33 = phi i64 [ 0, %22 ], [ %55, %32 ]
  %34 = getelementptr inbounds float, ptr @main.b, i64 %33
  %35 = load <4 x float>, ptr %34, align 16, !tbaa !11
  %36 = getelementptr inbounds float, ptr @main.a, i64 %33
  %37 = load <4 x float>, ptr %36, align 16, !tbaa !11
  %38 = fmul <4 x float> %28, %37
  %39 = fadd <4 x float> %35, %38
  %40 = add nuw nsw i64 %33, 201
  %41 = getelementptr inbounds float, ptr @main.a, i64 %40
  %42 = load <4 x float>, ptr %41, align 4, !tbaa !11
  %43 = fmul <4 x float> %29, %42
  %44 = fadd <4 x float> %39, %43
  %45 = add nuw nsw i64 %33, 402
  %46 = getelementptr inbounds float, ptr @main.a, i64 %45
  %47 = load <4 x float>, ptr %46, align 8, !tbaa !11
  %48 = fmul <4 x float> %30, %47
  %49 = fadd <4 x float> %44, %48
  %50 = add nuw nsw i64 %33, 603
  %51 = getelementptr inbounds float, ptr @main.a, i64 %50
  %52 = load <4 x float>, ptr %51, align 4, !tbaa !11
  %53 = fmul <4 x float> %31, %52
  %54 = fadd <4 x float> %49, %53
  store <4 x float> %54, ptr %34, align 16, !tbaa !11
  %55 = add nuw i64 %33, 4
  %56 = icmp eq i64 %55, 100
  br i1 %56, label %57, label %32, !llvm.loop !17

57:                                               ; preds = %209, %32
  %58 = phi i64 [ %210, %209 ], [ 19, %32 ]
  %59 = add nsw i64 %58, -15
  %60 = getelementptr inbounds float, ptr @main.x, i64 %59
  %61 = mul nuw nsw i64 %59, 201
  %62 = add nsw i64 %58, -14
  %63 = getelementptr inbounds float, ptr @main.x, i64 %62
  %64 = mul nuw nsw i64 %62, 201
  %65 = add nsw i64 %58, -13
  %66 = getelementptr inbounds float, ptr @main.x, i64 %65
  %67 = mul nuw nsw i64 %65, 201
  %68 = add nsw i64 %58, -12
  %69 = getelementptr inbounds float, ptr @main.x, i64 %68
  %70 = mul nuw nsw i64 %68, 201
  %71 = add nsw i64 %58, -11
  %72 = getelementptr inbounds float, ptr @main.x, i64 %71
  %73 = mul nuw nsw i64 %71, 201
  %74 = mul nuw nsw i64 %58, 201
  %75 = add nsw i64 %74, -2010
  %76 = add nsw i64 %58, -9
  %77 = getelementptr inbounds float, ptr @main.x, i64 %76
  %78 = mul nuw nsw i64 %76, 201
  %79 = add nsw i64 %74, -1608
  %80 = add nsw i64 %58, -7
  %81 = getelementptr inbounds float, ptr @main.x, i64 %80
  %82 = mul nuw nsw i64 %80, 201
  %83 = add nsw i64 %74, -1206
  %84 = add nsw i64 %58, -5
  %85 = getelementptr inbounds float, ptr @main.x, i64 %84
  %86 = mul nuw nsw i64 %84, 201
  %87 = add nsw i64 %74, -804
  %88 = add nsw i64 %58, -3
  %89 = getelementptr inbounds float, ptr @main.x, i64 %88
  %90 = mul nuw nsw i64 %88, 201
  %91 = add nsw i64 %74, -402
  %92 = add nsw i64 %58, -1
  %93 = getelementptr inbounds float, ptr @main.x, i64 %92
  %94 = mul nuw nsw i64 %92, 201
  %95 = load float, ptr %60, align 4, !tbaa !11
  %96 = load float, ptr %63, align 4, !tbaa !11
  %97 = load float, ptr %66, align 4, !tbaa !11
  %98 = load float, ptr %69, align 4, !tbaa !11
  %99 = load <2 x float>, ptr %72, align 4, !tbaa !11
  %100 = load <2 x float>, ptr %77, align 4, !tbaa !11
  %101 = load <2 x float>, ptr %81, align 4, !tbaa !11
  %102 = load <2 x float>, ptr %85, align 4, !tbaa !11
  %103 = load <2 x float>, ptr %89, align 4, !tbaa !11
  %104 = load <2 x float>, ptr %93, align 4, !tbaa !11
  br label %105

105:                                              ; preds = %105, %57
  %106 = phi i64 [ 0, %57 ], [ %207, %105 ]
  %107 = getelementptr inbounds float, ptr @main.b, i64 %106
  %108 = load float, ptr %107, align 4, !tbaa !11
  %109 = add nuw nsw i64 %106, %61
  %110 = getelementptr inbounds float, ptr @main.a, i64 %109
  %111 = load float, ptr %110, align 4, !tbaa !11
  %112 = fmul float %95, %111
  %113 = fadd float %108, %112
  %114 = add nuw nsw i64 %106, %64
  %115 = getelementptr inbounds float, ptr @main.a, i64 %114
  %116 = load float, ptr %115, align 4, !tbaa !11
  %117 = fmul float %96, %116
  %118 = fadd float %113, %117
  %119 = add nuw nsw i64 %106, %67
  %120 = getelementptr inbounds float, ptr @main.a, i64 %119
  %121 = load float, ptr %120, align 4, !tbaa !11
  %122 = fmul float %97, %121
  %123 = fadd float %118, %122
  %124 = add nuw nsw i64 %106, %70
  %125 = getelementptr inbounds float, ptr @main.a, i64 %124
  %126 = load float, ptr %125, align 4, !tbaa !11
  %127 = fmul float %98, %126
  %128 = fadd float %123, %127
  %129 = add nuw nsw i64 %106, %73
  %130 = getelementptr inbounds float, ptr @main.a, i64 %129
  %131 = load float, ptr %130, align 4, !tbaa !11
  %132 = add nuw nsw i64 %75, %106
  %133 = getelementptr inbounds float, ptr @main.a, i64 %132
  %134 = load float, ptr %133, align 4, !tbaa !11
  %135 = insertelement <2 x float> poison, float %131, i64 0
  %136 = insertelement <2 x float> %135, float %134, i64 1
  %137 = fmul <2 x float> %99, %136
  %138 = extractelement <2 x float> %137, i64 0
  %139 = fadd float %128, %138
  %140 = extractelement <2 x float> %137, i64 1
  %141 = fadd float %140, %139
  %142 = add nuw nsw i64 %106, %78
  %143 = getelementptr inbounds float, ptr @main.a, i64 %142
  %144 = load float, ptr %143, align 4, !tbaa !11
  %145 = add nuw nsw i64 %79, %106
  %146 = getelementptr inbounds float, ptr @main.a, i64 %145
  %147 = load float, ptr %146, align 4, !tbaa !11
  %148 = insertelement <2 x float> poison, float %144, i64 0
  %149 = insertelement <2 x float> %148, float %147, i64 1
  %150 = fmul <2 x float> %100, %149
  %151 = extractelement <2 x float> %150, i64 0
  %152 = fadd float %141, %151
  %153 = extractelement <2 x float> %150, i64 1
  %154 = fadd float %153, %152
  %155 = add nuw nsw i64 %106, %82
  %156 = getelementptr inbounds float, ptr @main.a, i64 %155
  %157 = load float, ptr %156, align 4, !tbaa !11
  %158 = add nuw nsw i64 %83, %106
  %159 = getelementptr inbounds float, ptr @main.a, i64 %158
  %160 = load float, ptr %159, align 4, !tbaa !11
  %161 = insertelement <2 x float> poison, float %157, i64 0
  %162 = insertelement <2 x float> %161, float %160, i64 1
  %163 = fmul <2 x float> %101, %162
  %164 = extractelement <2 x float> %163, i64 0
  %165 = fadd float %154, %164
  %166 = extractelement <2 x float> %163, i64 1
  %167 = fadd float %166, %165
  %168 = add nuw nsw i64 %106, %86
  %169 = getelementptr inbounds float, ptr @main.a, i64 %168
  %170 = load float, ptr %169, align 4, !tbaa !11
  %171 = add nuw nsw i64 %87, %106
  %172 = getelementptr inbounds float, ptr @main.a, i64 %171
  %173 = load float, ptr %172, align 4, !tbaa !11
  %174 = insertelement <2 x float> poison, float %170, i64 0
  %175 = insertelement <2 x float> %174, float %173, i64 1
  %176 = fmul <2 x float> %102, %175
  %177 = extractelement <2 x float> %176, i64 0
  %178 = fadd float %167, %177
  %179 = extractelement <2 x float> %176, i64 1
  %180 = fadd float %179, %178
  %181 = add nuw nsw i64 %106, %90
  %182 = getelementptr inbounds float, ptr @main.a, i64 %181
  %183 = load float, ptr %182, align 4, !tbaa !11
  %184 = add nuw nsw i64 %91, %106
  %185 = getelementptr inbounds float, ptr @main.a, i64 %184
  %186 = load float, ptr %185, align 4, !tbaa !11
  %187 = insertelement <2 x float> poison, float %183, i64 0
  %188 = insertelement <2 x float> %187, float %186, i64 1
  %189 = fmul <2 x float> %103, %188
  %190 = extractelement <2 x float> %189, i64 0
  %191 = fadd float %180, %190
  %192 = extractelement <2 x float> %189, i64 1
  %193 = fadd float %192, %191
  %194 = add nuw nsw i64 %106, %94
  %195 = getelementptr inbounds float, ptr @main.a, i64 %194
  %196 = load float, ptr %195, align 4, !tbaa !11
  %197 = add nuw nsw i64 %106, %74
  %198 = getelementptr inbounds float, ptr @main.a, i64 %197
  %199 = load float, ptr %198, align 4, !tbaa !11
  %200 = insertelement <2 x float> poison, float %196, i64 0
  %201 = insertelement <2 x float> %200, float %199, i64 1
  %202 = fmul <2 x float> %104, %201
  %203 = extractelement <2 x float> %202, i64 0
  %204 = fadd float %193, %203
  %205 = extractelement <2 x float> %202, i64 1
  %206 = fadd float %205, %204
  store float %206, ptr %107, align 4, !tbaa !11
  %207 = add nuw nsw i64 %106, 1
  %208 = icmp eq i64 %207, 100
  br i1 %208, label %209, label %105, !llvm.loop !18

209:                                              ; preds = %105
  %210 = add nuw nsw i64 %58, 16
  %211 = icmp ult i64 %58, 84
  br i1 %211, label %57, label %212, !llvm.loop !19

212:                                              ; preds = %212, %209
  %213 = phi i64 [ %224, %212 ], [ 0, %209 ]
  %214 = phi <2 x float> [ %223, %212 ], [ zeroinitializer, %209 ]
  %215 = getelementptr inbounds [200 x float], ptr @main.b, i64 0, i64 %213
  %216 = load float, ptr %215, align 4, !tbaa !11
  %217 = getelementptr inbounds [200 x float], ptr @main.x, i64 0, i64 %213
  %218 = load float, ptr %217, align 4, !tbaa !11
  %219 = insertelement <2 x float> poison, float %218, i64 0
  %220 = insertelement <2 x float> %219, float %216, i64 1
  %221 = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %220)
  %222 = fcmp ogt <2 x float> %214, %221
  %223 = select <2 x i1> %222, <2 x float> %214, <2 x float> %221
  %224 = add nuw nsw i64 %213, 1
  %225 = icmp eq i64 %224, 100
  br i1 %225, label %226, label %212, !llvm.loop !20

226:                                              ; preds = %212
  %.lcssa4 = phi <2 x float> [ %223, %212 ]
  %227 = fadd float %14, %13
  %228 = load float, ptr %1, align 4, !tbaa !11
  %229 = fmul float %228, 1.000000e+02
  %230 = extractelement <2 x float> %.lcssa4, i64 0
  %231 = fmul float %230, %229
  %232 = fmul float %231, 0x3E80000000000000
  %233 = extractelement <2 x float> %.lcssa4, i64 1
  %234 = fdiv float %233, %232
  %235 = fadd float %23, -1.000000e+00
  %236 = load float, ptr getelementptr inbounds ([200 x float], ptr @main.x, i64 0, i64 99), align 4, !tbaa !11
  %237 = fadd float %236, -1.000000e+00
  %238 = load ptr, ptr @stderr, align 8, !tbaa !7
  %239 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 38, i64 1, ptr %238) #14
  %240 = load ptr, ptr @stderr, align 8, !tbaa !7
  %241 = tail call i64 @fwrite(ptr nonnull @.str.8, i64 34, i64 1, ptr %240) #14
  %242 = load ptr, ptr @stderr, align 8, !tbaa !7
  %243 = fpext float %234 to double
  %244 = fpext float %233 to double
  %245 = fpext float %235 to double
  %246 = fpext float %237 to double
  %247 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %242, ptr noundef nonnull @.str.9, double noundef %243, double noundef %244, double noundef 0x3E80000000000000, double noundef %245, double noundef %246) #15
  %248 = load ptr, ptr @stderr, align 8, !tbaa !7
  %249 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %248, ptr noundef nonnull @.str.10, i32 noundef 100) #15
  %250 = load ptr, ptr @stderr, align 8, !tbaa !7
  %251 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %250, ptr noundef nonnull @.str.11, i32 noundef 201) #15
  %252 = load ptr, ptr @stderr, align 8, !tbaa !7
  %253 = tail call i64 @fwrite(ptr nonnull @.str.12, i64 55, i64 1, ptr %252) #14
  %254 = load ptr, ptr @stderr, align 8, !tbaa !7
  %255 = tail call i64 @fwrite(ptr nonnull @.str.13, i64 12, i64 1, ptr %254) #14
  store float %227, ptr getelementptr inbounds ([9 x [15 x float]], ptr @atime, i64 0, i64 2), align 8, !tbaa !11
  %256 = fcmp ogt float %227, 0.000000e+00
  br i1 %256, label %257, label %263

257:                                              ; preds = %226
  %258 = fpext float %227 to double
  %259 = fmul double %258, 1.000000e+06
  %260 = fdiv double 0x4124F49560000000, %259
  %261 = fptrunc double %260 to float
  %262 = fdiv float 2.000000e+00, %261
  br label %263

263:                                              ; preds = %257, %226
  %264 = phi float [ %261, %257 ], [ 0.000000e+00, %226 ]
  %265 = phi float [ %262, %257 ], [ 0.000000e+00, %226 ]
  store float %264, ptr getelementptr inbounds ([9 x [15 x float]], ptr @atime, i64 0, i64 3), align 4
  store float %265, ptr getelementptr inbounds ([9 x [15 x float]], ptr @atime, i64 0, i64 4), align 16, !tbaa !11
  %266 = fdiv float %227, 0x3FACAC0840000000
  store float %266, ptr getelementptr inbounds ([9 x [15 x float]], ptr @atime, i64 0, i64 5), align 4, !tbaa !11
  %267 = load ptr, ptr @stderr, align 8, !tbaa !7
  %268 = tail call i64 @fwrite(ptr nonnull @.str.14, i64 29, i64 1, ptr %267) #14
  br label %269

269:                                              ; preds = %277, %263
  %270 = phi i32 [ -3, %263 ], [ %278, %277 ]
  %271 = phi i32 [ 100, %263 ], [ %282, %277 ]
  %272 = tail call i64 @clock() #17
  br label %273

273:                                              ; preds = %273, %269
  %274 = phi i32 [ %275, %273 ], [ 0, %269 ]
  call fastcc void @matgen(ptr noundef nonnull @main.a, i32 noundef 201, ptr noundef nonnull %1) #16
  %275 = add nuw nsw i32 %274, 1
  %276 = icmp eq i32 %275, %271
  br i1 %276, label %277, label %273, !llvm.loop !21

277:                                              ; preds = %273
  %278 = add nsw i32 %270, 1
  %279 = tail call i64 @clock() #17
  %280 = load ptr, ptr @stderr, align 8, !tbaa !7
  %281 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %280, ptr noundef nonnull @.str.15, i32 noundef %271, double noundef 0.000000e+00) #15
  %282 = shl nsw i32 %271, 1
  %283 = icmp eq i32 %278, 0
  br i1 %283, label %284, label %269, !llvm.loop !22

284:                                              ; preds = %277
  %.lcssa3 = phi i64 [ %279, %277 ]
  %.lcssa2 = phi i64 [ %272, %277 ]
  %285 = sitofp i64 %.lcssa2 to float
  %286 = sitofp i64 %.lcssa3 to float
  %287 = fdiv float %286, 1.000000e+06
  %288 = load ptr, ptr @stderr, align 8, !tbaa !7
  %289 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %288, ptr noundef nonnull @.str.16, double noundef 0.000000e+00) #15
  %290 = load ptr, ptr @stderr, align 8, !tbaa !7
  %291 = tail call i64 @fwrite(ptr nonnull @.str.17, i64 46, i64 1, ptr %290) #14
  br label %292

292:                                              ; preds = %309, %284
  %293 = phi i32 [ 100, %284 ], [ %311, %309 ]
  %294 = phi i32 [ -3, %284 ], [ %296, %309 ]
  store i32 %293, ptr @main.ntimes, align 4, !tbaa !23
  %295 = tail call i64 @clock() #17
  %296 = add nsw i32 %294, 1
  %297 = load i32, ptr @main.ntimes, align 4, !tbaa !23
  %298 = icmp sgt i32 %297, 0
  br i1 %298, label %299, label %303

299:                                              ; preds = %299, %292
  %300 = phi i32 [ %301, %299 ], [ 0, %292 ]
  call fastcc void @matgen(ptr noundef nonnull @main.a, i32 noundef 201, ptr noundef nonnull %1) #16
  tail call fastcc void @dgefa(ptr noundef nonnull @main.a, i32 noundef 201) #16
  %301 = add nuw nsw i32 %300, 1
  %302 = icmp eq i32 %301, %297
  br i1 %302, label %303, label %299, !llvm.loop !25

303:                                              ; preds = %299, %292
  %304 = tail call i64 @clock() #17
  %305 = load ptr, ptr @stderr, align 8, !tbaa !7
  %306 = load i32, ptr @main.ntimes, align 4, !tbaa !23
  %307 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %305, ptr noundef nonnull @.str.15, i32 noundef %306, double noundef 0.000000e+00) #15
  %308 = icmp eq i32 %294, -1
  br i1 %308, label %312, label %309

309:                                              ; preds = %303
  %310 = load i32, ptr @main.ntimes, align 4, !tbaa !23
  %311 = shl nsw i32 %310, 1
  br label %292, !llvm.loop !26

312:                                              ; preds = %303
  %313 = fdiv float %285, 1.000000e+06
  %314 = fsub float %287, %313
  %315 = fdiv float %314, 4.000000e+02
  store i32 1000, ptr @main.ntimes, align 4
  %316 = load ptr, ptr @stderr, align 8, !tbaa !7
  %317 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %316, ptr noundef nonnull @.str.18, i32 noundef 0) #15
  %318 = load ptr, ptr @stderr, align 8, !tbaa !7
  %319 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %318, ptr noundef nonnull @.str.19, i32 noundef 201) #15
  %320 = load ptr, ptr @stderr, align 8, !tbaa !7
  %321 = tail call i64 @fwrite(ptr nonnull @.str.12, i64 55, i64 1, ptr %320) #14
  %322 = load ptr, ptr @stderr, align 8, !tbaa !7
  %323 = tail call i64 @fwrite(ptr nonnull @.str.13, i64 12, i64 1, ptr %322) #14
  %324 = load i32, ptr @main.ntimes, align 4, !tbaa !23
  %325 = sitofp i32 %324 to float
  %326 = fmul float %315, %325
  store float 0.000000e+00, ptr getelementptr inbounds ([9 x [15 x float]], ptr @atime, i64 0, i64 3, i64 6), align 4, !tbaa !11
  store i32 1, ptr @main.j, align 4, !tbaa !23
  br label %327

327:                                              ; preds = %349, %312
  %328 = load i32, ptr @main.ntimes, align 4, !tbaa !23
  %329 = icmp sgt i32 %328, 0
  br i1 %329, label %330, label %334

330:                                              ; preds = %330, %327
  %331 = phi i32 [ %332, %330 ], [ 0, %327 ]
  call fastcc void @matgen(ptr noundef nonnull @main.a, i32 noundef 201, ptr noundef nonnull %1) #16
  tail call fastcc void @dgefa(ptr noundef nonnull @main.a, i32 noundef 201) #16
  %332 = add nuw nsw i32 %331, 1
  %333 = icmp eq i32 %332, %328
  br i1 %333, label %334, label %330, !llvm.loop !27

334:                                              ; preds = %330, %327
  %335 = call float @_wyvern_slice_main__123625219()
  %336 = fsub float %335, %326
  %337 = load i32, ptr @main.ntimes, align 4, !tbaa !23
  %338 = sitofp i32 %337 to float
  %339 = fdiv float %336, %338
  %340 = load i32, ptr @main.j, align 4, !tbaa !23
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds [15 x float], ptr @atime, i64 0, i64 %341
  store float %339, ptr %342, align 4, !tbaa !11
  %343 = load i32, ptr @main.ntimes, align 4, !tbaa !23
  %344 = icmp sgt i32 %343, 0
  br i1 %344, label %345, label %349

345:                                              ; preds = %345, %334
  %346 = phi i32 [ %347, %345 ], [ 0, %334 ]
  tail call fastcc void @dgesl(ptr noundef nonnull @main.a, i32 noundef 201) #16
  %347 = add nuw nsw i32 %346, 1
  %348 = icmp eq i32 %347, %343
  br i1 %348, label %349, label %345, !llvm.loop !28

349:                                              ; preds = %345, %334
  %350 = call float @_wyvern_slice_main__138890372()
  %351 = load i32, ptr @main.j, align 4, !tbaa !23
  %352 = sext i32 %351 to i64
  %353 = getelementptr inbounds [9 x [15 x float]], ptr @atime, i64 0, i64 1, i64 %352
  store float %350, ptr %353, align 4, !tbaa !11
  %354 = getelementptr inbounds [15 x float], ptr @atime, i64 0, i64 %352
  %355 = load float, ptr %354, align 4, !tbaa !11
  %356 = fadd float %355, %350
  %357 = getelementptr inbounds [9 x [15 x float]], ptr @atime, i64 0, i64 2, i64 %352
  store float %356, ptr %357, align 4, !tbaa !11
  %358 = fpext float %356 to double
  %359 = fmul double %358, 1.000000e+06
  %360 = fdiv double 0x4124F49560000000, %359
  %361 = fptrunc double %360 to float
  %362 = getelementptr inbounds [9 x [15 x float]], ptr @atime, i64 0, i64 3, i64 %352
  store float %361, ptr %362, align 4, !tbaa !11
  %363 = fdiv float 2.000000e+00, %361
  %364 = getelementptr inbounds [9 x [15 x float]], ptr @atime, i64 0, i64 4, i64 %352
  store float %363, ptr %364, align 4, !tbaa !11
  %365 = fdiv float %356, 0x3FACAC0840000000
  %366 = getelementptr inbounds [9 x [15 x float]], ptr @atime, i64 0, i64 5, i64 %352
  store float %365, ptr %366, align 4, !tbaa !11
  %367 = load float, ptr getelementptr inbounds ([9 x [15 x float]], ptr @atime, i64 0, i64 3, i64 6), align 4, !tbaa !11
  %368 = fadd float %367, %361
  store float %368, ptr getelementptr inbounds ([9 x [15 x float]], ptr @atime, i64 0, i64 3, i64 6), align 4, !tbaa !11
  %369 = add nsw i32 %351, 1
  store i32 %369, ptr @main.j, align 4, !tbaa !23
  %370 = icmp slt i32 %351, 5
  br i1 %370, label %327, label %371, !llvm.loop !29

371:                                              ; preds = %349
  %.lcssa1 = phi float [ %368, %349 ]
  %372 = fdiv float %.lcssa1, 5.000000e+00
  store float %372, ptr getelementptr inbounds ([9 x [15 x float]], ptr @atime, i64 0, i64 3, i64 6), align 4, !tbaa !11
  %373 = load ptr, ptr @stderr, align 8, !tbaa !7
  %374 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %373, ptr noundef nonnull @.str.20, double noundef 0.000000e+00) #15
  %375 = load ptr, ptr @stderr, align 8, !tbaa !7
  %376 = tail call i64 @fwrite(ptr nonnull @.str.21, i64 30, i64 1, ptr %375) #14
  %377 = tail call i64 @clock() #17
  %378 = sitofp i64 %377 to float
  br label %379

379:                                              ; preds = %379, %371
  %380 = phi i32 [ %381, %379 ], [ 0, %371 ]
  call fastcc void @matgen(ptr noundef nonnull @main.aa, i32 noundef 200, ptr noundef nonnull %1) #16
  %381 = add nuw nsw i32 %380, 1
  %382 = icmp eq i32 %381, 400
  br i1 %382, label %383, label %379, !llvm.loop !30

383:                                              ; preds = %379
  %384 = fdiv float %378, 1.000000e+06
  %385 = call float @_wyvern_slice_main__115536561()
  %386 = fsub float %385, %384
  %387 = fdiv float %386, 4.000000e+02
  %388 = load ptr, ptr @stderr, align 8, !tbaa !7
  %389 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %388, ptr noundef nonnull @.str.16, double noundef 0.000000e+00) #15
  %390 = load ptr, ptr @stderr, align 8, !tbaa !7
  %391 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %390, ptr noundef nonnull @.str.19, i32 noundef 200) #15
  %392 = load ptr, ptr @stderr, align 8, !tbaa !7
  %393 = tail call i64 @fwrite(ptr nonnull @.str.12, i64 55, i64 1, ptr %392) #14
  %394 = load ptr, ptr @stderr, align 8, !tbaa !7
  %395 = tail call i64 @fwrite(ptr nonnull @.str.13, i64 12, i64 1, ptr %394) #14
  %396 = load i32, ptr @main.ntimes, align 4, !tbaa !23
  %397 = sitofp i32 %396 to float
  %398 = fmul float %387, %397
  store float 0.000000e+00, ptr getelementptr inbounds ([9 x [15 x float]], ptr @atime, i64 0, i64 3, i64 12), align 4, !tbaa !11
  store i32 7, ptr @main.j, align 4, !tbaa !23
  br label %399

399:                                              ; preds = %421, %383
  %400 = load i32, ptr @main.ntimes, align 4, !tbaa !23
  %401 = icmp sgt i32 %400, 0
  br i1 %401, label %402, label %406

402:                                              ; preds = %402, %399
  %403 = phi i32 [ %404, %402 ], [ 0, %399 ]
  call fastcc void @matgen(ptr noundef nonnull @main.aa, i32 noundef 200, ptr noundef nonnull %1) #16
  tail call fastcc void @dgefa(ptr noundef nonnull @main.aa, i32 noundef 200) #16
  %404 = add nuw nsw i32 %403, 1
  %405 = icmp eq i32 %404, %400
  br i1 %405, label %406, label %402, !llvm.loop !31

406:                                              ; preds = %402, %399
  %407 = call float @_wyvern_slice_main__123625219()
  %408 = fsub float %407, %398
  %409 = load i32, ptr @main.ntimes, align 4, !tbaa !23
  %410 = sitofp i32 %409 to float
  %411 = fdiv float %408, %410
  %412 = load i32, ptr @main.j, align 4, !tbaa !23
  %413 = sext i32 %412 to i64
  %414 = getelementptr inbounds [15 x float], ptr @atime, i64 0, i64 %413
  store float %411, ptr %414, align 4, !tbaa !11
  %415 = load i32, ptr @main.ntimes, align 4, !tbaa !23
  %416 = icmp sgt i32 %415, 0
  br i1 %416, label %417, label %421

417:                                              ; preds = %417, %406
  %418 = phi i32 [ %419, %417 ], [ 0, %406 ]
  tail call fastcc void @dgesl(ptr noundef nonnull @main.aa, i32 noundef 200) #16
  %419 = add nuw nsw i32 %418, 1
  %420 = icmp eq i32 %419, %415
  br i1 %420, label %421, label %417, !llvm.loop !32

421:                                              ; preds = %417, %406
  %422 = call float @_wyvern_slice_main__138890372()
  %423 = load i32, ptr @main.j, align 4, !tbaa !23
  %424 = sext i32 %423 to i64
  %425 = getelementptr inbounds [9 x [15 x float]], ptr @atime, i64 0, i64 1, i64 %424
  store float %422, ptr %425, align 4, !tbaa !11
  %426 = getelementptr inbounds [15 x float], ptr @atime, i64 0, i64 %424
  %427 = load float, ptr %426, align 4, !tbaa !11
  %428 = fadd float %427, %422
  %429 = getelementptr inbounds [9 x [15 x float]], ptr @atime, i64 0, i64 2, i64 %424
  store float %428, ptr %429, align 4, !tbaa !11
  %430 = fpext float %428 to double
  %431 = fmul double %430, 1.000000e+06
  %432 = fdiv double 0x4124F49560000000, %431
  %433 = fptrunc double %432 to float
  %434 = getelementptr inbounds [9 x [15 x float]], ptr @atime, i64 0, i64 3, i64 %424
  store float %433, ptr %434, align 4, !tbaa !11
  %435 = fdiv float 2.000000e+00, %433
  %436 = getelementptr inbounds [9 x [15 x float]], ptr @atime, i64 0, i64 4, i64 %424
  store float %435, ptr %436, align 4, !tbaa !11
  %437 = fdiv float %428, 0x3FACAC0840000000
  %438 = getelementptr inbounds [9 x [15 x float]], ptr @atime, i64 0, i64 5, i64 %424
  store float %437, ptr %438, align 4, !tbaa !11
  %439 = load float, ptr getelementptr inbounds ([9 x [15 x float]], ptr @atime, i64 0, i64 3, i64 12), align 4, !tbaa !11
  %440 = fadd float %439, %433
  store float %440, ptr getelementptr inbounds ([9 x [15 x float]], ptr @atime, i64 0, i64 3, i64 12), align 4, !tbaa !11
  %441 = add nsw i32 %423, 1
  store i32 %441, ptr @main.j, align 4, !tbaa !23
  %442 = icmp slt i32 %423, 11
  br i1 %442, label %399, label %443, !llvm.loop !33

443:                                              ; preds = %421
  %.lcssa = phi float [ %440, %421 ]
  %444 = fdiv float %.lcssa, 5.000000e+00
  store float %444, ptr getelementptr inbounds ([9 x [15 x float]], ptr @atime, i64 0, i64 3, i64 12), align 4, !tbaa !11
  %445 = load ptr, ptr @stderr, align 8, !tbaa !7
  %446 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %445, ptr noundef nonnull @.str.20, double noundef 0.000000e+00) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #13
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

5:                                                ; preds = %85, %2
  %6 = phi i64 [ 0, %2 ], [ %9, %85 ]
  %7 = phi i64 [ 1, %2 ], [ %86, %85 ]
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
  br i1 %37, label %38, label %85

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

56:                                               ; preds = %82, %49
  %57 = phi i64 [ %83, %82 ], [ %7, %49 ]
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
  br i1 %71, label %82, label %72

72:                                               ; preds = %72, %66
  %73 = phi i64 [ %80, %72 ], [ 0, %66 ]
  %74 = getelementptr inbounds float, ptr %70, i64 %73
  %75 = load float, ptr %74, align 4, !tbaa !11
  %76 = getelementptr inbounds float, ptr %48, i64 %73
  %77 = load float, ptr %76, align 4, !tbaa !11
  %78 = fmul float %61, %77
  %79 = fadd float %75, %78
  store float %79, ptr %74, align 4, !tbaa !11
  %80 = add nuw nsw i64 %73, 1
  %81 = icmp eq i64 %80, %45
  br i1 %81, label %82, label %72, !llvm.loop !40

82:                                               ; preds = %72, %66
  %83 = add nuw nsw i64 %57, 1
  %84 = icmp eq i64 %83, 100
  br i1 %84, label %85, label %56, !llvm.loop !41

85:                                               ; preds = %82, %30
  %86 = add nuw nsw i64 %7, 1
  %87 = icmp eq i64 %9, 99
  br i1 %87, label %88, label %5, !llvm.loop !42

88:                                               ; preds = %85
  store i32 99, ptr getelementptr inbounds ([200 x i32], ptr @main.ipvt, i64 0, i64 99), align 4, !tbaa !23
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind optsize memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define internal fastcc void @dgesl(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #7 {
  %3 = add nuw nsw i32 %1, 1
  br label %4

4:                                                ; preds = %37, %2
  %5 = phi i64 [ 0, %2 ], [ %17, %37 ]
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
  br i1 %24, label %37, label %25

25:                                               ; preds = %16
  %26 = sub nuw nsw i64 99, %5
  br label %27

27:                                               ; preds = %27, %25
  %28 = phi i64 [ 0, %25 ], [ %35, %27 ]
  %29 = getelementptr inbounds float, ptr %23, i64 %28
  %30 = load float, ptr %29, align 4, !tbaa !11
  %31 = getelementptr inbounds float, ptr %22, i64 %28
  %32 = load float, ptr %31, align 4, !tbaa !11
  %33 = fmul float %10, %32
  %34 = fadd float %30, %33
  store float %34, ptr %29, align 4, !tbaa !11
  %35 = add nuw nsw i64 %28, 1
  %36 = icmp eq i64 %35, %26
  br i1 %36, label %37, label %27, !llvm.loop !40

37:                                               ; preds = %27, %16
  %38 = icmp eq i64 %17, 99
  br i1 %38, label %39, label %4, !llvm.loop !43

39:                                               ; preds = %37
  %40 = zext i32 %1 to i64
  br label %41

41:                                               ; preds = %70, %39
  %42 = phi i64 [ 0, %39 ], [ %43, %70 ]
  %43 = add nuw nsw i64 %42, 1
  %44 = trunc i64 %43 to i32
  %45 = sub nuw nsw i64 99, %42
  %46 = sub nsw i32 100, %44
  %47 = getelementptr inbounds float, ptr @main.b, i64 %45
  %48 = load float, ptr %47, align 4, !tbaa !11
  %49 = mul nsw i64 %45, %40
  %50 = mul nsw i32 %46, %1
  %51 = sext i32 %50 to i64
  %52 = add nsw i64 %45, %51
  %53 = getelementptr inbounds float, ptr %0, i64 %52
  %54 = load float, ptr %53, align 4, !tbaa !11
  %55 = fdiv float %48, %54
  store float %55, ptr %47, align 4, !tbaa !11
  %56 = getelementptr inbounds float, ptr %0, i64 %49
  %57 = icmp ugt i64 %42, 98
  %58 = fcmp oeq float %55, 0.000000e+00
  %59 = or i1 %57, %58
  br i1 %59, label %70, label %60

60:                                               ; preds = %60, %41
  %61 = phi i64 [ %68, %60 ], [ 0, %41 ]
  %62 = getelementptr inbounds float, ptr @main.b, i64 %61
  %63 = load float, ptr %62, align 4, !tbaa !11
  %64 = getelementptr inbounds float, ptr %56, i64 %61
  %65 = load float, ptr %64, align 4, !tbaa !11
  %66 = fmul float %55, %65
  %67 = fsub float %63, %66
  store float %67, ptr %62, align 4, !tbaa !11
  %68 = add nuw nsw i64 %61, 1
  %69 = icmp eq i64 %68, %45
  br i1 %69, label %70, label %60, !llvm.loop !40

70:                                               ; preds = %60, %41
  %71 = icmp eq i64 %43, 100
  br i1 %71, label %72, label %41, !llvm.loop !44

72:                                               ; preds = %70
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #9

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

; Function Attrs: nounwind optsize willreturn
define internal float @_wyvern_slice_main__115536561() #11 {
sliceclone_:
  %0 = tail call i64 @clock() #17
  %1 = sitofp i64 %0 to float
  %2 = fdiv float %1, 1.000000e+06
  ret float %2
}

; Function Attrs: noinline nounwind optsize willreturn
define internal float @_wyvern_slice_main__122845018() #12 {
sliceclone_:
  %0 = call float @_wyvern_slice_main__115536561()
  %1 = call float @_wyvern_slice_main__115536561()
  %2 = fsub float %1, %0
  ret float %2
}

; Function Attrs: nounwind optsize willreturn
define internal float @_wyvern_slice_main__123625219() #11 {
sliceclone_:
  %0 = call float @_wyvern_slice_main__115536561()
  %1 = call float @_wyvern_slice_main__115536561()
  %2 = fsub float %1, %0
  ret float %2
}

; Function Attrs: noinline nounwind optsize willreturn
define internal float @_wyvern_slice_main__138890372() #12 {
sliceclone_:
  %0 = call float @_wyvern_slice_main__123625219()
  %1 = load i32, ptr @main.ntimes, align 4, !tbaa !23
  %2 = sitofp i32 %1 to float
  %3 = fdiv float %0, %2
  ret float %3
}

attributes #0 = { nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind }
attributes #3 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nosync nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind optsize memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #11 = { nounwind optsize willreturn "Daedalus"="1" }
attributes #12 = { noinline nounwind optsize willreturn "Daedalus"="1" }
attributes #13 = { nounwind }
attributes #14 = { cold }
attributes #15 = { cold optsize }
attributes #16 = { optsize }
attributes #17 = { nounwind optsize }

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
!18 = distinct !{!18, !14}
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
