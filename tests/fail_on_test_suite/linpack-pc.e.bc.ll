; ModuleID = '/src/llvm-test-suite/build/SingleSource/Benchmarks/Linpack/linpack-pc.e.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@main.aa = internal global [40000 x float] zeroinitializer, align 16
@main.a = internal global [40200 x float] zeroinitializer, align 16
@main.b = internal global [200 x float] zeroinitializer, align 16
@main.x = internal global [200 x float] zeroinitializer, align 16
@main.ipvt = internal global [200 x i32] zeroinitializer, align 16
@main.j = internal unnamed_addr global i32 0, align 4
@main.ntimes = internal unnamed_addr global i32 0, align 4
@main.info = internal global i32 0, align 4
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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #10
  %2 = load ptr, ptr @stderr, align 8, !tbaa !7
  %3 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 7, i64 1, ptr %2) #11
  %4 = load ptr, ptr @stderr, align 8, !tbaa !7
  %5 = tail call i64 @fwrite(ptr nonnull @.str.3, i64 7, i64 1, ptr %4) #11
  %6 = load ptr, ptr @stderr, align 8, !tbaa !7
  %7 = tail call i64 @fwrite(ptr nonnull @.str.4, i64 53, i64 1, ptr %6) #11
  %8 = load ptr, ptr @stderr, align 8, !tbaa !7
  %9 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str) #12
  %10 = load ptr, ptr @stderr, align 8, !tbaa !7
  %11 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1) #12
  call void @matgen(ptr noundef nonnull @main.a, i32 noundef 201, i32 noundef 100, ptr noundef nonnull @main.b, ptr noundef nonnull %1) #13
  %12 = tail call i64 @clock() #14
  %13 = sitofp i64 %12 to float
  %14 = fdiv float %13, 1.000000e+06
  tail call void @dgefa(ptr noundef nonnull @main.a, i32 noundef 201, i32 noundef 100, ptr noundef nonnull @main.ipvt, ptr noundef nonnull @main.info) #13
  %15 = tail call i64 @clock() #14
  %16 = sitofp i64 %15 to float
  %17 = fdiv float %16, 1.000000e+06
  %18 = fsub float %17, %14
  store float %18, ptr @atime, align 16, !tbaa !11
  %19 = tail call i64 @clock() #14
  %20 = sitofp i64 %19 to float
  %21 = fdiv float %20, 1.000000e+06
  tail call void @dgesl(ptr noundef nonnull @main.a, i32 noundef 201, i32 noundef 100, ptr noundef nonnull @main.ipvt, ptr noundef nonnull @main.b, i32 noundef 0) #13
  %22 = tail call i64 @clock() #14
  %23 = sitofp i64 %22 to float
  %24 = fdiv float %23, 1.000000e+06
  %25 = fsub float %24, %21
  store float %25, ptr getelementptr inbounds ([9 x [15 x float]], ptr @atime, i64 0, i64 1), align 4, !tbaa !11
  %26 = load float, ptr @atime, align 16, !tbaa !11
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(400) @main.x, ptr noundef nonnull align 16 dereferenceable(400) @main.b, i64 400, i1 false), !tbaa !11
  call void @matgen(ptr noundef nonnull @main.a, i32 noundef 201, i32 noundef 100, ptr noundef nonnull @main.b, ptr noundef nonnull %1) #13
  br label %27

27:                                               ; preds = %27, %0
  %28 = phi i64 [ 0, %0 ], [ %32, %27 ]
  %29 = getelementptr inbounds [200 x float], ptr @main.b, i64 0, i64 %28
  %30 = load <4 x float>, ptr %29, align 16, !tbaa !11
  %31 = fneg <4 x float> %30
  store <4 x float> %31, ptr %29, align 16, !tbaa !11
  %32 = add nuw i64 %28, 4
  %33 = icmp eq i64 %32, 100
  br i1 %33, label %34, label %27, !llvm.loop !13

34:                                               ; preds = %27
  tail call void @dmxpy(i32 noundef 100, ptr noundef nonnull @main.b, i32 noundef 100, i32 noundef 201, ptr noundef nonnull @main.x, ptr noundef nonnull @main.a) #13
  br label %35

35:                                               ; preds = %35, %34
  %36 = phi i64 [ 0, %34 ], [ %47, %35 ]
  %37 = phi <2 x float> [ zeroinitializer, %34 ], [ %46, %35 ]
  %38 = getelementptr inbounds [200 x float], ptr @main.b, i64 0, i64 %36
  %39 = load float, ptr %38, align 4, !tbaa !11
  %40 = getelementptr inbounds [200 x float], ptr @main.x, i64 0, i64 %36
  %41 = load float, ptr %40, align 4, !tbaa !11
  %42 = insertelement <2 x float> poison, float %41, i64 0
  %43 = insertelement <2 x float> %42, float %39, i64 1
  %44 = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %43)
  %45 = fcmp ogt <2 x float> %37, %44
  %46 = select <2 x i1> %45, <2 x float> %37, <2 x float> %44
  %47 = add nuw nsw i64 %36, 1
  %48 = icmp eq i64 %47, 100
  br i1 %48, label %49, label %35, !llvm.loop !17

49:                                               ; preds = %35
  %.lcssa4 = phi <2 x float> [ %46, %35 ]
  %50 = fadd float %26, %25
  %51 = load float, ptr %1, align 4, !tbaa !11
  %52 = fmul float %51, 1.000000e+02
  %53 = extractelement <2 x float> %.lcssa4, i64 0
  %54 = fmul float %53, %52
  %55 = fmul float %54, 0x3E80000000000000
  %56 = extractelement <2 x float> %.lcssa4, i64 1
  %57 = fdiv float %56, %55
  %58 = load float, ptr @main.x, align 16, !tbaa !11
  %59 = fadd float %58, -1.000000e+00
  %60 = load float, ptr getelementptr inbounds ([200 x float], ptr @main.x, i64 0, i64 99), align 4, !tbaa !11
  %61 = fadd float %60, -1.000000e+00
  %62 = load ptr, ptr @stderr, align 8, !tbaa !7
  %63 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 38, i64 1, ptr %62) #11
  %64 = load ptr, ptr @stderr, align 8, !tbaa !7
  %65 = tail call i64 @fwrite(ptr nonnull @.str.8, i64 34, i64 1, ptr %64) #11
  %66 = load ptr, ptr @stderr, align 8, !tbaa !7
  %67 = fpext float %57 to double
  %68 = fpext float %56 to double
  %69 = fpext float %59 to double
  %70 = fpext float %61 to double
  %71 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %66, ptr noundef nonnull @.str.9, double noundef %67, double noundef %68, double noundef 0x3E80000000000000, double noundef %69, double noundef %70) #12
  %72 = load ptr, ptr @stderr, align 8, !tbaa !7
  %73 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %72, ptr noundef nonnull @.str.10, i32 noundef 100) #12
  %74 = load ptr, ptr @stderr, align 8, !tbaa !7
  %75 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %74, ptr noundef nonnull @.str.11, i32 noundef 201) #12
  %76 = load ptr, ptr @stderr, align 8, !tbaa !7
  %77 = tail call i64 @fwrite(ptr nonnull @.str.12, i64 55, i64 1, ptr %76) #11
  %78 = load ptr, ptr @stderr, align 8, !tbaa !7
  %79 = tail call i64 @fwrite(ptr nonnull @.str.13, i64 12, i64 1, ptr %78) #11
  store float %50, ptr getelementptr inbounds ([9 x [15 x float]], ptr @atime, i64 0, i64 2), align 8, !tbaa !11
  %80 = fcmp ogt float %50, 0.000000e+00
  br i1 %80, label %81, label %87

81:                                               ; preds = %49
  %82 = fpext float %50 to double
  %83 = fmul double %82, 1.000000e+06
  %84 = fdiv double 0x4124F49560000000, %83
  %85 = fptrunc double %84 to float
  %86 = fdiv float 2.000000e+00, %85
  br label %87

87:                                               ; preds = %81, %49
  %88 = phi float [ %85, %81 ], [ 0.000000e+00, %49 ]
  %89 = phi float [ %86, %81 ], [ 0.000000e+00, %49 ]
  store float %88, ptr getelementptr inbounds ([9 x [15 x float]], ptr @atime, i64 0, i64 3), align 4
  store float %89, ptr getelementptr inbounds ([9 x [15 x float]], ptr @atime, i64 0, i64 4), align 16, !tbaa !11
  %90 = fdiv float %50, 0x3FACAC0840000000
  store float %90, ptr getelementptr inbounds ([9 x [15 x float]], ptr @atime, i64 0, i64 5), align 4, !tbaa !11
  %91 = load ptr, ptr @stderr, align 8, !tbaa !7
  %92 = tail call i64 @fwrite(ptr nonnull @.str.14, i64 29, i64 1, ptr %91) #11
  br label %93

93:                                               ; preds = %102, %87
  %94 = phi i32 [ -3, %87 ], [ %97, %102 ]
  %95 = phi i32 [ 100, %87 ], [ %106, %102 ]
  %96 = tail call i64 @clock() #14
  %97 = add nsw i32 %94, 1
  br label %98

98:                                               ; preds = %98, %93
  %99 = phi i32 [ %100, %98 ], [ 0, %93 ]
  call void @matgen(ptr noundef nonnull @main.a, i32 noundef 201, i32 noundef 100, ptr noundef nonnull @main.b, ptr noundef nonnull %1) #13
  %100 = add nuw nsw i32 %99, 1
  %101 = icmp eq i32 %100, %95
  br i1 %101, label %102, label %98, !llvm.loop !18

102:                                              ; preds = %98
  %103 = tail call i64 @clock() #14
  %104 = load ptr, ptr @stderr, align 8, !tbaa !7
  %105 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %104, ptr noundef nonnull @.str.15, i32 noundef %95, double noundef 0.000000e+00) #12
  %106 = shl nsw i32 %95, 1
  %107 = icmp eq i32 %97, 0
  br i1 %107, label %108, label %93, !llvm.loop !19

108:                                              ; preds = %102
  %.lcssa3 = phi i64 [ %103, %102 ]
  %.lcssa2 = phi i64 [ %96, %102 ]
  %109 = sitofp i64 %.lcssa2 to float
  %110 = fdiv float %109, 1.000000e+06
  %111 = sitofp i64 %.lcssa3 to float
  %112 = fdiv float %111, 1.000000e+06
  %113 = fsub float %112, %110
  %114 = load ptr, ptr @stderr, align 8, !tbaa !7
  %115 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %114, ptr noundef nonnull @.str.16, double noundef 0.000000e+00) #12
  %116 = load ptr, ptr @stderr, align 8, !tbaa !7
  %117 = tail call i64 @fwrite(ptr nonnull @.str.17, i64 46, i64 1, ptr %116) #11
  br label %118

118:                                              ; preds = %135, %108
  %119 = phi i32 [ 100, %108 ], [ %137, %135 ]
  %120 = phi i32 [ -3, %108 ], [ %122, %135 ]
  store i32 %119, ptr @main.ntimes, align 4, !tbaa !20
  %121 = tail call i64 @clock() #14
  %122 = add nsw i32 %120, 1
  %123 = load i32, ptr @main.ntimes, align 4, !tbaa !20
  %124 = icmp sgt i32 %123, 0
  br i1 %124, label %125, label %129

125:                                              ; preds = %125, %118
  %126 = phi i32 [ %127, %125 ], [ 0, %118 ]
  call void @matgen(ptr noundef nonnull @main.a, i32 noundef 201, i32 noundef 100, ptr noundef nonnull @main.b, ptr noundef nonnull %1) #13
  tail call void @dgefa(ptr noundef nonnull @main.a, i32 noundef 201, i32 noundef 100, ptr noundef nonnull @main.ipvt, ptr noundef nonnull @main.info) #13
  %127 = add nuw nsw i32 %126, 1
  %128 = icmp eq i32 %127, %123
  br i1 %128, label %129, label %125, !llvm.loop !22

129:                                              ; preds = %125, %118
  %130 = tail call i64 @clock() #14
  %131 = load ptr, ptr @stderr, align 8, !tbaa !7
  %132 = load i32, ptr @main.ntimes, align 4, !tbaa !20
  %133 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %131, ptr noundef nonnull @.str.15, i32 noundef %132, double noundef 0.000000e+00) #12
  %134 = icmp eq i32 %120, -1
  br i1 %134, label %138, label %135

135:                                              ; preds = %129
  %136 = load i32, ptr @main.ntimes, align 4, !tbaa !20
  %137 = shl nsw i32 %136, 1
  br label %118, !llvm.loop !23

138:                                              ; preds = %129
  %139 = fdiv float %113, 4.000000e+02
  store i32 1000, ptr @main.ntimes, align 4
  %140 = load ptr, ptr @stderr, align 8, !tbaa !7
  %141 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %140, ptr noundef nonnull @.str.18, i32 noundef 0) #12
  %142 = load ptr, ptr @stderr, align 8, !tbaa !7
  %143 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %142, ptr noundef nonnull @.str.19, i32 noundef 201) #12
  %144 = load ptr, ptr @stderr, align 8, !tbaa !7
  %145 = tail call i64 @fwrite(ptr nonnull @.str.12, i64 55, i64 1, ptr %144) #11
  %146 = load ptr, ptr @stderr, align 8, !tbaa !7
  %147 = tail call i64 @fwrite(ptr nonnull @.str.13, i64 12, i64 1, ptr %146) #11
  %148 = load i32, ptr @main.ntimes, align 4, !tbaa !20
  %149 = sitofp i32 %148 to float
  %150 = fmul float %139, %149
  store float 0.000000e+00, ptr getelementptr inbounds ([9 x [15 x float]], ptr @atime, i64 0, i64 3, i64 6), align 4, !tbaa !11
  store i32 1, ptr @main.j, align 4, !tbaa !20
  br label %151

151:                                              ; preds = %182, %138
  %152 = tail call i64 @clock() #14
  %153 = sitofp i64 %152 to float
  %154 = fdiv float %153, 1.000000e+06
  %155 = load i32, ptr @main.ntimes, align 4, !tbaa !20
  %156 = icmp sgt i32 %155, 0
  br i1 %156, label %157, label %161

157:                                              ; preds = %157, %151
  %158 = phi i32 [ %159, %157 ], [ 0, %151 ]
  call void @matgen(ptr noundef nonnull @main.a, i32 noundef 201, i32 noundef 100, ptr noundef nonnull @main.b, ptr noundef nonnull %1) #13
  tail call void @dgefa(ptr noundef nonnull @main.a, i32 noundef 201, i32 noundef 100, ptr noundef nonnull @main.ipvt, ptr noundef nonnull @main.info) #13
  %159 = add nuw nsw i32 %158, 1
  %160 = icmp eq i32 %159, %155
  br i1 %160, label %161, label %157, !llvm.loop !24

161:                                              ; preds = %157, %151
  %162 = tail call i64 @clock() #14
  %163 = sitofp i64 %162 to float
  %164 = fdiv float %163, 1.000000e+06
  %165 = fsub float %164, %154
  %166 = fsub float %165, %150
  %167 = load i32, ptr @main.ntimes, align 4, !tbaa !20
  %168 = sitofp i32 %167 to float
  %169 = fdiv float %166, %168
  %170 = load i32, ptr @main.j, align 4, !tbaa !20
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds [15 x float], ptr @atime, i64 0, i64 %171
  store float %169, ptr %172, align 4, !tbaa !11
  %173 = tail call i64 @clock() #14
  %174 = sitofp i64 %173 to float
  %175 = fdiv float %174, 1.000000e+06
  %176 = load i32, ptr @main.ntimes, align 4, !tbaa !20
  %177 = icmp sgt i32 %176, 0
  br i1 %177, label %178, label %182

178:                                              ; preds = %178, %161
  %179 = phi i32 [ %180, %178 ], [ 0, %161 ]
  tail call void @dgesl(ptr noundef nonnull @main.a, i32 noundef 201, i32 noundef 100, ptr noundef nonnull @main.ipvt, ptr noundef nonnull @main.b, i32 noundef 0) #13
  %180 = add nuw nsw i32 %179, 1
  %181 = icmp eq i32 %180, %176
  br i1 %181, label %182, label %178, !llvm.loop !25

182:                                              ; preds = %178, %161
  %183 = tail call i64 @clock() #14
  %184 = sitofp i64 %183 to float
  %185 = fdiv float %184, 1.000000e+06
  %186 = fsub float %185, %175
  %187 = load i32, ptr @main.ntimes, align 4, !tbaa !20
  %188 = sitofp i32 %187 to float
  %189 = fdiv float %186, %188
  %190 = load i32, ptr @main.j, align 4, !tbaa !20
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds [9 x [15 x float]], ptr @atime, i64 0, i64 1, i64 %191
  store float %189, ptr %192, align 4, !tbaa !11
  %193 = getelementptr inbounds [15 x float], ptr @atime, i64 0, i64 %191
  %194 = load float, ptr %193, align 4, !tbaa !11
  %195 = fadd float %194, %189
  %196 = getelementptr inbounds [9 x [15 x float]], ptr @atime, i64 0, i64 2, i64 %191
  store float %195, ptr %196, align 4, !tbaa !11
  %197 = fpext float %195 to double
  %198 = fmul double %197, 1.000000e+06
  %199 = fdiv double 0x4124F49560000000, %198
  %200 = fptrunc double %199 to float
  %201 = getelementptr inbounds [9 x [15 x float]], ptr @atime, i64 0, i64 3, i64 %191
  store float %200, ptr %201, align 4, !tbaa !11
  %202 = fdiv float 2.000000e+00, %200
  %203 = getelementptr inbounds [9 x [15 x float]], ptr @atime, i64 0, i64 4, i64 %191
  store float %202, ptr %203, align 4, !tbaa !11
  %204 = fdiv float %195, 0x3FACAC0840000000
  %205 = getelementptr inbounds [9 x [15 x float]], ptr @atime, i64 0, i64 5, i64 %191
  store float %204, ptr %205, align 4, !tbaa !11
  %206 = load float, ptr getelementptr inbounds ([9 x [15 x float]], ptr @atime, i64 0, i64 3, i64 6), align 4, !tbaa !11
  %207 = fadd float %206, %200
  store float %207, ptr getelementptr inbounds ([9 x [15 x float]], ptr @atime, i64 0, i64 3, i64 6), align 4, !tbaa !11
  %208 = add nsw i32 %190, 1
  store i32 %208, ptr @main.j, align 4, !tbaa !20
  %209 = icmp slt i32 %190, 5
  br i1 %209, label %151, label %210, !llvm.loop !26

210:                                              ; preds = %182
  %.lcssa1 = phi float [ %207, %182 ]
  %211 = fdiv float %.lcssa1, 5.000000e+00
  store float %211, ptr getelementptr inbounds ([9 x [15 x float]], ptr @atime, i64 0, i64 3, i64 6), align 4, !tbaa !11
  %212 = load ptr, ptr @stderr, align 8, !tbaa !7
  %213 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %212, ptr noundef nonnull @.str.20, double noundef 0.000000e+00) #12
  %214 = load ptr, ptr @stderr, align 8, !tbaa !7
  %215 = tail call i64 @fwrite(ptr nonnull @.str.21, i64 30, i64 1, ptr %214) #11
  %216 = tail call i64 @clock() #14
  %217 = sitofp i64 %216 to float
  %218 = fdiv float %217, 1.000000e+06
  br label %219

219:                                              ; preds = %219, %210
  %220 = phi i32 [ %221, %219 ], [ 0, %210 ]
  call void @matgen(ptr noundef nonnull @main.aa, i32 noundef 200, i32 noundef 100, ptr noundef nonnull @main.b, ptr noundef nonnull %1) #13
  %221 = add nuw nsw i32 %220, 1
  %222 = icmp eq i32 %221, 400
  br i1 %222, label %223, label %219, !llvm.loop !27

223:                                              ; preds = %219
  %224 = tail call i64 @clock() #14
  %225 = sitofp i64 %224 to float
  %226 = fdiv float %225, 1.000000e+06
  %227 = fsub float %226, %218
  %228 = fdiv float %227, 4.000000e+02
  %229 = load ptr, ptr @stderr, align 8, !tbaa !7
  %230 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %229, ptr noundef nonnull @.str.16, double noundef 0.000000e+00) #12
  %231 = load ptr, ptr @stderr, align 8, !tbaa !7
  %232 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %231, ptr noundef nonnull @.str.19, i32 noundef 200) #12
  %233 = load ptr, ptr @stderr, align 8, !tbaa !7
  %234 = tail call i64 @fwrite(ptr nonnull @.str.12, i64 55, i64 1, ptr %233) #11
  %235 = load ptr, ptr @stderr, align 8, !tbaa !7
  %236 = tail call i64 @fwrite(ptr nonnull @.str.13, i64 12, i64 1, ptr %235) #11
  %237 = load i32, ptr @main.ntimes, align 4, !tbaa !20
  %238 = sitofp i32 %237 to float
  %239 = fmul float %228, %238
  store float 0.000000e+00, ptr getelementptr inbounds ([9 x [15 x float]], ptr @atime, i64 0, i64 3, i64 12), align 4, !tbaa !11
  store i32 7, ptr @main.j, align 4, !tbaa !20
  br label %240

240:                                              ; preds = %271, %223
  %241 = tail call i64 @clock() #14
  %242 = sitofp i64 %241 to float
  %243 = fdiv float %242, 1.000000e+06
  %244 = load i32, ptr @main.ntimes, align 4, !tbaa !20
  %245 = icmp sgt i32 %244, 0
  br i1 %245, label %246, label %250

246:                                              ; preds = %246, %240
  %247 = phi i32 [ %248, %246 ], [ 0, %240 ]
  call void @matgen(ptr noundef nonnull @main.aa, i32 noundef 200, i32 noundef 100, ptr noundef nonnull @main.b, ptr noundef nonnull %1) #13
  tail call void @dgefa(ptr noundef nonnull @main.aa, i32 noundef 200, i32 noundef 100, ptr noundef nonnull @main.ipvt, ptr noundef nonnull @main.info) #13
  %248 = add nuw nsw i32 %247, 1
  %249 = icmp eq i32 %248, %244
  br i1 %249, label %250, label %246, !llvm.loop !28

250:                                              ; preds = %246, %240
  %251 = tail call i64 @clock() #14
  %252 = sitofp i64 %251 to float
  %253 = fdiv float %252, 1.000000e+06
  %254 = fsub float %253, %243
  %255 = fsub float %254, %239
  %256 = load i32, ptr @main.ntimes, align 4, !tbaa !20
  %257 = sitofp i32 %256 to float
  %258 = fdiv float %255, %257
  %259 = load i32, ptr @main.j, align 4, !tbaa !20
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds [15 x float], ptr @atime, i64 0, i64 %260
  store float %258, ptr %261, align 4, !tbaa !11
  %262 = tail call i64 @clock() #14
  %263 = sitofp i64 %262 to float
  %264 = fdiv float %263, 1.000000e+06
  %265 = load i32, ptr @main.ntimes, align 4, !tbaa !20
  %266 = icmp sgt i32 %265, 0
  br i1 %266, label %267, label %271

267:                                              ; preds = %267, %250
  %268 = phi i32 [ %269, %267 ], [ 0, %250 ]
  tail call void @dgesl(ptr noundef nonnull @main.aa, i32 noundef 200, i32 noundef 100, ptr noundef nonnull @main.ipvt, ptr noundef nonnull @main.b, i32 noundef 0) #13
  %269 = add nuw nsw i32 %268, 1
  %270 = icmp eq i32 %269, %265
  br i1 %270, label %271, label %267, !llvm.loop !29

271:                                              ; preds = %267, %250
  %272 = tail call i64 @clock() #14
  %273 = sitofp i64 %272 to float
  %274 = fdiv float %273, 1.000000e+06
  %275 = fsub float %274, %264
  %276 = load i32, ptr @main.ntimes, align 4, !tbaa !20
  %277 = sitofp i32 %276 to float
  %278 = fdiv float %275, %277
  %279 = load i32, ptr @main.j, align 4, !tbaa !20
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds [9 x [15 x float]], ptr @atime, i64 0, i64 1, i64 %280
  store float %278, ptr %281, align 4, !tbaa !11
  %282 = getelementptr inbounds [15 x float], ptr @atime, i64 0, i64 %280
  %283 = load float, ptr %282, align 4, !tbaa !11
  %284 = fadd float %283, %278
  %285 = getelementptr inbounds [9 x [15 x float]], ptr @atime, i64 0, i64 2, i64 %280
  store float %284, ptr %285, align 4, !tbaa !11
  %286 = fpext float %284 to double
  %287 = fmul double %286, 1.000000e+06
  %288 = fdiv double 0x4124F49560000000, %287
  %289 = fptrunc double %288 to float
  %290 = getelementptr inbounds [9 x [15 x float]], ptr @atime, i64 0, i64 3, i64 %280
  store float %289, ptr %290, align 4, !tbaa !11
  %291 = fdiv float 2.000000e+00, %289
  %292 = getelementptr inbounds [9 x [15 x float]], ptr @atime, i64 0, i64 4, i64 %280
  store float %291, ptr %292, align 4, !tbaa !11
  %293 = fdiv float %284, 0x3FACAC0840000000
  %294 = getelementptr inbounds [9 x [15 x float]], ptr @atime, i64 0, i64 5, i64 %280
  store float %293, ptr %294, align 4, !tbaa !11
  %295 = load float, ptr getelementptr inbounds ([9 x [15 x float]], ptr @atime, i64 0, i64 3, i64 12), align 4, !tbaa !11
  %296 = fadd float %295, %289
  store float %296, ptr getelementptr inbounds ([9 x [15 x float]], ptr @atime, i64 0, i64 3, i64 12), align 4, !tbaa !11
  %297 = add nsw i32 %279, 1
  store i32 %297, ptr @main.j, align 4, !tbaa !20
  %298 = icmp slt i32 %279, 11
  br i1 %298, label %240, label %299, !llvm.loop !30

299:                                              ; preds = %271
  %.lcssa = phi float [ %296, %271 ]
  %300 = fdiv float %.lcssa, 5.000000e+00
  store float %300, ptr getelementptr inbounds ([9 x [15 x float]], ptr @atime, i64 0, i64 3, i64 12), align 4, !tbaa !11
  %301 = load ptr, ptr @stderr, align 8, !tbaa !7
  %302 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %301, ptr noundef nonnull @.str.20, double noundef 0.000000e+00) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #10
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: nofree nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal void @matgen(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef %3, ptr nocapture noundef %4) #4 {
  store float 0.000000e+00, ptr %4, align 4, !tbaa !11
  %6 = icmp sgt i32 %2, 0
  br i1 %6, label %7, label %55

7:                                                ; preds = %5
  %8 = sext i32 %1 to i64
  %9 = zext i32 %2 to i64
  br label %10

10:                                               ; preds = %31, %7
  %11 = phi i64 [ 0, %7 ], [ %32, %31 ]
  %12 = phi i32 [ 1325, %7 ], [ %.lcssa, %31 ]
  %13 = mul nsw i64 %11, %8
  br label %15

14:                                               ; preds = %31
  br i1 %6, label %34, label %55

15:                                               ; preds = %15, %10
  %16 = phi i64 [ 0, %10 ], [ %29, %15 ]
  %17 = phi i32 [ %12, %10 ], [ %19, %15 ]
  %18 = mul nuw nsw i32 %17, 3125
  %19 = and i32 %18, 65535
  %20 = add nsw i32 %19, -32768
  %21 = sitofp i32 %20 to double
  %22 = fmul double %21, 0x3F10000000000000
  %23 = fptrunc double %22 to float
  %24 = add nsw i64 %16, %13
  %25 = getelementptr inbounds float, ptr %0, i64 %24
  store float %23, ptr %25, align 4, !tbaa !11
  %26 = load float, ptr %4, align 4, !tbaa !11
  %27 = fcmp olt float %26, %23
  %28 = select i1 %27, float %23, float %26
  store float %28, ptr %4, align 4, !tbaa !11
  %29 = add nuw nsw i64 %16, 1
  %30 = icmp eq i64 %29, %9
  br i1 %30, label %31, label %15, !llvm.loop !31

31:                                               ; preds = %15
  %.lcssa = phi i32 [ %19, %15 ]
  %32 = add nuw nsw i64 %11, 1
  %33 = icmp eq i64 %32, %9
  br i1 %33, label %14, label %10, !llvm.loop !32

34:                                               ; preds = %14
  %35 = zext i32 %2 to i64
  %36 = shl nuw nsw i64 %35, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %3, i8 0, i64 %36, i1 false), !tbaa !11
  %37 = sext i32 %1 to i64
  %38 = zext i32 %2 to i64
  br label %39

39:                                               ; preds = %52, %34
  %40 = phi i64 [ 0, %34 ], [ %53, %52 ]
  %41 = mul nsw i64 %40, %37
  br label %42

42:                                               ; preds = %42, %39
  %43 = phi i64 [ 0, %39 ], [ %50, %42 ]
  %44 = getelementptr inbounds float, ptr %3, i64 %43
  %45 = load float, ptr %44, align 4, !tbaa !11
  %46 = add nsw i64 %43, %41
  %47 = getelementptr inbounds float, ptr %0, i64 %46
  %48 = load float, ptr %47, align 4, !tbaa !11
  %49 = fadd float %45, %48
  store float %49, ptr %44, align 4, !tbaa !11
  %50 = add nuw nsw i64 %43, 1
  %51 = icmp eq i64 %50, %38
  br i1 %51, label %52, label %42, !llvm.loop !33

52:                                               ; preds = %42
  %53 = add nuw nsw i64 %40, 1
  %54 = icmp eq i64 %53, %38
  br i1 %54, label %55, label %39, !llvm.loop !34

55:                                               ; preds = %52, %14, %5
  ret void
}

; Function Attrs: nounwind optsize
declare i64 @clock() local_unnamed_addr #5

; Function Attrs: nofree nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal void @dgefa(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4) #4 {
  store i32 0, ptr %4, align 4, !tbaa !20
  %6 = add i32 %2, -1
  %7 = icmp sgt i32 %2, 1
  br i1 %7, label %8, label %112

8:                                                ; preds = %5
  %9 = sext i32 %1 to i64
  %10 = zext i32 %2 to i64
  %11 = zext i32 %6 to i64
  %12 = add i32 %1, 1
  %13 = zext i32 %2 to i64
  br label %14

14:                                               ; preds = %109, %8
  %15 = phi i64 [ 0, %8 ], [ %18, %109 ]
  %16 = phi i64 [ 1, %8 ], [ %110, %109 ]
  %17 = trunc i64 %15 to i32
  %18 = add nuw nsw i64 %15, 1
  %19 = sub nsw i64 %10, %15
  %20 = mul nsw i64 %15, %9
  %21 = mul i32 %12, %17
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds float, ptr %0, i64 %22
  %24 = icmp slt i64 %19, 1
  br i1 %24, label %44, label %25

25:                                               ; preds = %14
  %26 = icmp eq i64 %19, 1
  br i1 %26, label %44, label %27

27:                                               ; preds = %25
  %28 = load float, ptr %23, align 4, !tbaa !11
  %29 = tail call float @llvm.fabs.f32(float %28)
  %30 = and i64 %19, 4294967295
  br label %31

31:                                               ; preds = %31, %27
  %32 = phi i64 [ 1, %27 ], [ %42, %31 ]
  %33 = phi i32 [ 0, %27 ], [ %41, %31 ]
  %34 = phi float [ %29, %27 ], [ %39, %31 ]
  %35 = getelementptr inbounds float, ptr %23, i64 %32
  %36 = load float, ptr %35, align 4, !tbaa !11
  %37 = tail call float @llvm.fabs.f32(float %36)
  %38 = fcmp ogt float %37, %34
  %39 = select i1 %38, float %37, float %34
  %40 = trunc i64 %32 to i32
  %41 = select i1 %38, i32 %40, i32 %33
  %42 = add nuw nsw i64 %32, 1
  %43 = icmp eq i64 %42, %30
  br i1 %43, label %44, label %31, !llvm.loop !35

44:                                               ; preds = %31, %25, %14
  %45 = phi i32 [ -1, %14 ], [ 0, %25 ], [ %41, %31 ]
  %46 = add nsw i32 %45, %17
  %47 = getelementptr inbounds i32, ptr %3, i64 %15
  store i32 %46, ptr %47, align 4, !tbaa !20
  %48 = sext i32 %46 to i64
  %49 = add nsw i64 %20, %48
  %50 = getelementptr inbounds float, ptr %0, i64 %49
  %51 = load float, ptr %50, align 4, !tbaa !11
  %52 = fcmp une float %51, 0.000000e+00
  br i1 %52, label %53, label %108

53:                                               ; preds = %44
  %54 = icmp eq i32 %45, 0
  %55 = load float, ptr %23, align 4, !tbaa !11
  br i1 %54, label %57, label %56

56:                                               ; preds = %53
  store float %55, ptr %50, align 4, !tbaa !11
  store float %51, ptr %23, align 4, !tbaa !11
  br label %57

57:                                               ; preds = %56, %53
  %58 = phi float [ %51, %56 ], [ %55, %53 ]
  %59 = fdiv float -1.000000e+00, %58
  %60 = sub nsw i64 %10, %18
  %61 = add nsw i32 %21, 1
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds float, ptr %0, i64 %62
  %64 = icmp slt i64 %60, 1
  br i1 %64, label %74, label %65

65:                                               ; preds = %57
  %66 = and i64 %60, 4294967295
  br label %67

67:                                               ; preds = %67, %65
  %68 = phi i64 [ 0, %65 ], [ %72, %67 ]
  %69 = getelementptr inbounds float, ptr %63, i64 %68
  %70 = load float, ptr %69, align 4, !tbaa !11
  %71 = fmul float %59, %70
  store float %71, ptr %69, align 4, !tbaa !11
  %72 = add nuw nsw i64 %68, 1
  %73 = icmp eq i64 %72, %66
  br i1 %73, label %74, label %67, !llvm.loop !36

74:                                               ; preds = %67, %57
  %75 = icmp ult i64 %18, %10
  br i1 %75, label %76, label %109

76:                                               ; preds = %74
  %77 = and i64 %60, 4294967295
  br label %78

78:                                               ; preds = %105, %76
  %79 = phi i64 [ %16, %76 ], [ %106, %105 ]
  %80 = mul nsw i64 %79, %9
  %81 = add nsw i64 %80, %48
  %82 = getelementptr inbounds float, ptr %0, i64 %81
  %83 = load float, ptr %82, align 4, !tbaa !11
  br i1 %54, label %88, label %84

84:                                               ; preds = %78
  %85 = add nsw i64 %80, %15
  %86 = getelementptr inbounds float, ptr %0, i64 %85
  %87 = load float, ptr %86, align 4, !tbaa !11
  store float %87, ptr %82, align 4, !tbaa !11
  store float %83, ptr %86, align 4, !tbaa !11
  br label %88

88:                                               ; preds = %84, %78
  %89 = add i64 %18, %80
  %90 = shl i64 %89, 32
  %91 = ashr exact i64 %90, 32
  %92 = getelementptr inbounds float, ptr %0, i64 %91
  %93 = fcmp oeq float %83, 0.000000e+00
  %94 = or i1 %64, %93
  br i1 %94, label %105, label %95

95:                                               ; preds = %95, %88
  %96 = phi i64 [ %103, %95 ], [ 0, %88 ]
  %97 = getelementptr inbounds float, ptr %92, i64 %96
  %98 = load float, ptr %97, align 4, !tbaa !11
  %99 = getelementptr inbounds float, ptr %63, i64 %96
  %100 = load float, ptr %99, align 4, !tbaa !11
  %101 = fmul float %83, %100
  %102 = fadd float %98, %101
  store float %102, ptr %97, align 4, !tbaa !11
  %103 = add nuw nsw i64 %96, 1
  %104 = icmp eq i64 %103, %77
  br i1 %104, label %105, label %95, !llvm.loop !37

105:                                              ; preds = %95, %88
  %106 = add nuw nsw i64 %79, 1
  %107 = icmp eq i64 %106, %13
  br i1 %107, label %109, label %78, !llvm.loop !38

108:                                              ; preds = %44
  store i32 %17, ptr %4, align 4, !tbaa !20
  br label %109

109:                                              ; preds = %108, %105, %74
  %110 = add nuw nsw i64 %16, 1
  %111 = icmp eq i64 %18, %11
  br i1 %111, label %112, label %14, !llvm.loop !39

112:                                              ; preds = %109, %5
  %113 = sext i32 %6 to i64
  %114 = getelementptr inbounds i32, ptr %3, i64 %113
  store i32 %6, ptr %114, align 4, !tbaa !20
  %115 = add i32 %1, 1
  %116 = mul i32 %6, %115
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds float, ptr %0, i64 %117
  %119 = load float, ptr %118, align 4, !tbaa !11
  %120 = fcmp oeq float %119, 0.000000e+00
  br i1 %120, label %121, label %122

121:                                              ; preds = %112
  store i32 %6, ptr %4, align 4, !tbaa !20
  br label %122

122:                                              ; preds = %121, %112
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal void @dgesl(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3, ptr nocapture noundef %4, i32 noundef %5) #6 {
  %7 = add i32 %2, -1
  %8 = icmp eq i32 %5, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %6
  %10 = icmp sgt i32 %2, 0
  br i1 %10, label %11, label %168

11:                                               ; preds = %9
  %12 = sext i32 %1 to i64
  %13 = zext i32 %2 to i64
  br label %97

14:                                               ; preds = %6
  %15 = icmp sgt i32 %2, 1
  br i1 %15, label %16, label %58

16:                                               ; preds = %14
  %17 = add i32 %1, 1
  %18 = zext i32 %2 to i64
  %19 = zext i32 %7 to i64
  br label %20

20:                                               ; preds = %56, %16
  %21 = phi i64 [ 0, %16 ], [ %33, %56 ]
  %22 = getelementptr inbounds i32, ptr %3, i64 %21
  %23 = load i32, ptr %22, align 4, !tbaa !20
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds float, ptr %4, i64 %24
  %26 = load float, ptr %25, align 4, !tbaa !11
  %27 = zext i32 %23 to i64
  %28 = icmp eq i64 %21, %27
  br i1 %28, label %32, label %29

29:                                               ; preds = %20
  %30 = getelementptr inbounds float, ptr %4, i64 %21
  %31 = load float, ptr %30, align 4, !tbaa !11
  store float %31, ptr %25, align 4, !tbaa !11
  store float %26, ptr %30, align 4, !tbaa !11
  br label %32

32:                                               ; preds = %29, %20
  %33 = add nuw nsw i64 %21, 1
  %34 = sub nsw i64 %18, %33
  %35 = trunc i64 %21 to i32
  %36 = mul i32 %17, %35
  %37 = add nsw i32 %36, 1
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds float, ptr %0, i64 %38
  %40 = getelementptr inbounds float, ptr %4, i64 %33
  %41 = icmp slt i64 %34, 1
  %42 = fcmp oeq float %26, 0.000000e+00
  %43 = or i1 %41, %42
  br i1 %43, label %56, label %44

44:                                               ; preds = %32
  %45 = and i64 %34, 4294967295
  br label %46

46:                                               ; preds = %46, %44
  %47 = phi i64 [ 0, %44 ], [ %54, %46 ]
  %48 = getelementptr inbounds float, ptr %40, i64 %47
  %49 = load float, ptr %48, align 4, !tbaa !11
  %50 = getelementptr inbounds float, ptr %39, i64 %47
  %51 = load float, ptr %50, align 4, !tbaa !11
  %52 = fmul float %26, %51
  %53 = fadd float %49, %52
  store float %53, ptr %48, align 4, !tbaa !11
  %54 = add nuw nsw i64 %47, 1
  %55 = icmp eq i64 %54, %45
  br i1 %55, label %56, label %46, !llvm.loop !37

56:                                               ; preds = %46, %32
  %57 = icmp eq i64 %33, %19
  br i1 %57, label %58, label %20, !llvm.loop !40

58:                                               ; preds = %56, %14
  %59 = icmp sgt i32 %2, 0
  br i1 %59, label %60, label %168

60:                                               ; preds = %58
  %61 = zext i32 %2 to i64
  %62 = sext i32 %1 to i64
  %63 = zext i32 %2 to i64
  br label %64

64:                                               ; preds = %95, %60
  %65 = phi i64 [ 0, %60 ], [ %66, %95 ]
  %66 = add nuw nsw i64 %65, 1
  %67 = trunc i64 %66 to i32
  %68 = sub nsw i64 %61, %66
  %69 = sub nsw i32 %2, %67
  %70 = getelementptr inbounds float, ptr %4, i64 %68
  %71 = load float, ptr %70, align 4, !tbaa !11
  %72 = mul nsw i64 %68, %62
  %73 = mul nsw i32 %69, %1
  %74 = sext i32 %73 to i64
  %75 = add nsw i64 %68, %74
  %76 = getelementptr inbounds float, ptr %0, i64 %75
  %77 = load float, ptr %76, align 4, !tbaa !11
  %78 = fdiv float %71, %77
  store float %78, ptr %70, align 4, !tbaa !11
  %79 = getelementptr inbounds float, ptr %0, i64 %72
  %80 = icmp slt i64 %68, 1
  %81 = fcmp oeq float %78, 0.000000e+00
  %82 = or i1 %80, %81
  br i1 %82, label %95, label %83

83:                                               ; preds = %64
  %84 = and i64 %68, 4294967295
  br label %85

85:                                               ; preds = %85, %83
  %86 = phi i64 [ 0, %83 ], [ %93, %85 ]
  %87 = getelementptr inbounds float, ptr %4, i64 %86
  %88 = load float, ptr %87, align 4, !tbaa !11
  %89 = getelementptr inbounds float, ptr %79, i64 %86
  %90 = load float, ptr %89, align 4, !tbaa !11
  %91 = fmul float %78, %90
  %92 = fsub float %88, %91
  store float %92, ptr %87, align 4, !tbaa !11
  %93 = add nuw nsw i64 %86, 1
  %94 = icmp eq i64 %93, %84
  br i1 %94, label %95, label %85, !llvm.loop !37

95:                                               ; preds = %85, %64
  %96 = icmp eq i64 %66, %63
  br i1 %96, label %168, label %64, !llvm.loop !41

97:                                               ; preds = %115, %11
  %98 = phi i64 [ 0, %11 ], [ %125, %115 ]
  %99 = trunc i64 %98 to i32
  %100 = mul nsw i64 %98, %12
  %101 = mul nsw i32 %99, %1
  %102 = getelementptr inbounds float, ptr %0, i64 %100
  %103 = icmp eq i64 %98, 0
  br i1 %103, label %115, label %104

104:                                              ; preds = %104, %97
  %105 = phi i64 [ %113, %104 ], [ 0, %97 ]
  %106 = phi float [ %112, %104 ], [ 0.000000e+00, %97 ]
  %107 = getelementptr inbounds float, ptr %102, i64 %105
  %108 = load float, ptr %107, align 4, !tbaa !11
  %109 = getelementptr inbounds float, ptr %4, i64 %105
  %110 = load float, ptr %109, align 4, !tbaa !11
  %111 = fmul float %108, %110
  %112 = fadd float %106, %111
  %113 = add nuw nsw i64 %105, 1
  %114 = icmp eq i64 %113, %98
  br i1 %114, label %115, label %104, !llvm.loop !42

115:                                              ; preds = %104, %97
  %116 = phi float [ 0.000000e+00, %97 ], [ %112, %104 ]
  %117 = getelementptr inbounds float, ptr %4, i64 %98
  %118 = load float, ptr %117, align 4, !tbaa !11
  %119 = fsub float %118, %116
  %120 = sext i32 %101 to i64
  %121 = add nsw i64 %98, %120
  %122 = getelementptr inbounds float, ptr %0, i64 %121
  %123 = load float, ptr %122, align 4, !tbaa !11
  %124 = fdiv float %119, %123
  store float %124, ptr %117, align 4, !tbaa !11
  %125 = add nuw nsw i64 %98, 1
  %126 = icmp eq i64 %125, %13
  br i1 %126, label %127, label %97, !llvm.loop !43

127:                                              ; preds = %115
  %128 = icmp sgt i32 %2, 2
  br i1 %128, label %129, label %168

129:                                              ; preds = %127
  %130 = add i32 %1, 1
  %131 = zext i32 %2 to i64
  %132 = zext i32 %7 to i64
  br label %133

133:                                              ; preds = %166, %129
  %134 = phi i64 [ 1, %129 ], [ %135, %166 ]
  %135 = add nuw nsw i64 %134, 1
  %136 = sub nsw i64 %131, %135
  %137 = getelementptr inbounds float, ptr %4, i64 %136
  %138 = load float, ptr %137, align 4, !tbaa !11
  %139 = add nsw i64 %136, 1
  %140 = trunc i64 %136 to i32
  %141 = mul i32 %130, %140
  %142 = add nsw i32 %141, 1
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds float, ptr %0, i64 %143
  %145 = getelementptr inbounds float, ptr %4, i64 %139
  br label %146

146:                                              ; preds = %146, %133
  %147 = phi i64 [ 0, %133 ], [ %155, %146 ]
  %148 = phi float [ 0.000000e+00, %133 ], [ %154, %146 ]
  %149 = getelementptr inbounds float, ptr %144, i64 %147
  %150 = load float, ptr %149, align 4, !tbaa !11
  %151 = getelementptr inbounds float, ptr %145, i64 %147
  %152 = load float, ptr %151, align 4, !tbaa !11
  %153 = fmul float %150, %152
  %154 = fadd float %148, %153
  %155 = add nuw nsw i64 %147, 1
  %156 = icmp eq i64 %155, %134
  br i1 %156, label %157, label %146, !llvm.loop !42

157:                                              ; preds = %146
  %.lcssa = phi float [ %154, %146 ]
  %158 = fadd float %138, %.lcssa
  store float %158, ptr %137, align 4, !tbaa !11
  %159 = getelementptr inbounds i32, ptr %3, i64 %136
  %160 = load i32, ptr %159, align 4, !tbaa !20
  %161 = icmp eq i32 %160, %140
  br i1 %161, label %166, label %162

162:                                              ; preds = %157
  %163 = sext i32 %160 to i64
  %164 = getelementptr inbounds float, ptr %4, i64 %163
  %165 = load float, ptr %164, align 4, !tbaa !11
  store float %158, ptr %164, align 4, !tbaa !11
  store float %165, ptr %137, align 4, !tbaa !11
  br label %166

166:                                              ; preds = %162, %157
  %167 = icmp eq i64 %135, %132
  br i1 %167, label %168, label %133, !llvm.loop !44

168:                                              ; preds = %166, %127, %95, %58, %9
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: nofree norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal void @dmxpy(i32 noundef %0, ptr nocapture noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4, ptr nocapture noundef readonly %5) #6 {
  %7 = and i32 %2, -2147483647
  %8 = icmp eq i32 %7, 1
  %9 = icmp sgt i32 %0, 0
  %10 = and i1 %8, %9
  br i1 %10, label %11, label %24

11:                                               ; preds = %6
  %12 = zext i32 %0 to i64
  br label %13

13:                                               ; preds = %13, %11
  %14 = phi i64 [ 0, %11 ], [ %22, %13 ]
  %15 = getelementptr inbounds float, ptr %1, i64 %14
  %16 = load float, ptr %15, align 4, !tbaa !11
  %17 = load float, ptr %4, align 4, !tbaa !11
  %18 = getelementptr inbounds float, ptr %5, i64 %14
  %19 = load float, ptr %18, align 4, !tbaa !11
  %20 = fmul float %17, %19
  %21 = fadd float %16, %20
  store float %21, ptr %15, align 4, !tbaa !11
  %22 = add nuw nsw i64 %14, 1
  %23 = icmp eq i64 %22, %12
  br i1 %23, label %24, label %13, !llvm.loop !45

24:                                               ; preds = %13, %6
  %25 = srem i32 %2, 4
  %26 = icmp sgt i32 %25, 1
  br i1 %26, label %27, label %58

27:                                               ; preds = %24
  br i1 %9, label %28, label %114

28:                                               ; preds = %27
  %29 = add nsw i32 %25, -1
  %30 = add nsw i32 %25, -2
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds float, ptr %4, i64 %31
  %33 = mul nuw nsw i32 %30, %3
  %34 = zext i32 %29 to i64
  %35 = getelementptr inbounds float, ptr %4, i64 %34
  %36 = mul nsw i32 %29, %3
  %37 = sext i32 %33 to i64
  %38 = sext i32 %36 to i64
  %39 = zext i32 %0 to i64
  br label %40

40:                                               ; preds = %40, %28
  %41 = phi i64 [ 0, %28 ], [ %56, %40 ]
  %42 = getelementptr inbounds float, ptr %1, i64 %41
  %43 = load float, ptr %42, align 4, !tbaa !11
  %44 = load float, ptr %32, align 4, !tbaa !11
  %45 = add nsw i64 %41, %37
  %46 = getelementptr inbounds float, ptr %5, i64 %45
  %47 = load float, ptr %46, align 4, !tbaa !11
  %48 = fmul float %44, %47
  %49 = fadd float %43, %48
  %50 = load float, ptr %35, align 4, !tbaa !11
  %51 = add nsw i64 %41, %38
  %52 = getelementptr inbounds float, ptr %5, i64 %51
  %53 = load float, ptr %52, align 4, !tbaa !11
  %54 = fmul float %50, %53
  %55 = fadd float %49, %54
  store float %55, ptr %42, align 4, !tbaa !11
  %56 = add nuw nsw i64 %41, 1
  %57 = icmp eq i64 %56, %39
  br i1 %57, label %58, label %40, !llvm.loop !46

58:                                               ; preds = %40, %24
  %59 = srem i32 %2, 8
  %60 = icmp sgt i32 %59, 3
  %61 = and i1 %60, %9
  br i1 %61, label %62, label %114

62:                                               ; preds = %58
  %63 = add nsw i32 %59, -1
  %64 = add nsw i32 %59, -4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds float, ptr %4, i64 %65
  %67 = mul nsw i32 %64, %3
  %68 = add nsw i32 %59, -3
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds float, ptr %4, i64 %69
  %71 = mul nsw i32 %68, %3
  %72 = add nsw i32 %59, -2
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds float, ptr %4, i64 %73
  %75 = mul nsw i32 %72, %3
  %76 = zext i32 %63 to i64
  %77 = getelementptr inbounds float, ptr %4, i64 %76
  %78 = mul nsw i32 %63, %3
  %79 = sext i32 %67 to i64
  %80 = sext i32 %71 to i64
  %81 = sext i32 %75 to i64
  %82 = sext i32 %78 to i64
  %83 = zext i32 %0 to i64
  br label %84

84:                                               ; preds = %84, %62
  %85 = phi i64 [ 0, %62 ], [ %112, %84 ]
  %86 = getelementptr inbounds float, ptr %1, i64 %85
  %87 = load float, ptr %86, align 4, !tbaa !11
  %88 = load float, ptr %66, align 4, !tbaa !11
  %89 = add nsw i64 %85, %79
  %90 = getelementptr inbounds float, ptr %5, i64 %89
  %91 = load float, ptr %90, align 4, !tbaa !11
  %92 = fmul float %88, %91
  %93 = fadd float %87, %92
  %94 = load float, ptr %70, align 4, !tbaa !11
  %95 = add nsw i64 %85, %80
  %96 = getelementptr inbounds float, ptr %5, i64 %95
  %97 = load float, ptr %96, align 4, !tbaa !11
  %98 = fmul float %94, %97
  %99 = fadd float %93, %98
  %100 = load float, ptr %74, align 4, !tbaa !11
  %101 = add nsw i64 %85, %81
  %102 = getelementptr inbounds float, ptr %5, i64 %101
  %103 = load float, ptr %102, align 4, !tbaa !11
  %104 = fmul float %100, %103
  %105 = fadd float %99, %104
  %106 = load float, ptr %77, align 4, !tbaa !11
  %107 = add nsw i64 %85, %82
  %108 = getelementptr inbounds float, ptr %5, i64 %107
  %109 = load float, ptr %108, align 4, !tbaa !11
  %110 = fmul float %106, %109
  %111 = fadd float %105, %110
  store float %111, ptr %86, align 4, !tbaa !11
  %112 = add nuw nsw i64 %85, 1
  %113 = icmp eq i64 %112, %83
  br i1 %113, label %114, label %84, !llvm.loop !47

114:                                              ; preds = %84, %58, %27
  %115 = srem i32 %2, 16
  %116 = icmp sgt i32 %115, 7
  %117 = and i1 %116, %9
  br i1 %117, label %118, label %214

118:                                              ; preds = %114
  %119 = add nsw i32 %115, -1
  %120 = add nsw i32 %115, -8
  %121 = zext i32 %120 to i64
  %122 = getelementptr inbounds float, ptr %4, i64 %121
  %123 = mul nsw i32 %120, %3
  %124 = add nsw i32 %115, -7
  %125 = zext i32 %124 to i64
  %126 = getelementptr inbounds float, ptr %4, i64 %125
  %127 = mul nsw i32 %124, %3
  %128 = add nsw i32 %115, -6
  %129 = zext i32 %128 to i64
  %130 = getelementptr inbounds float, ptr %4, i64 %129
  %131 = mul nsw i32 %128, %3
  %132 = add nsw i32 %115, -5
  %133 = zext i32 %132 to i64
  %134 = getelementptr inbounds float, ptr %4, i64 %133
  %135 = mul nsw i32 %132, %3
  %136 = add nsw i32 %115, -4
  %137 = zext i32 %136 to i64
  %138 = getelementptr inbounds float, ptr %4, i64 %137
  %139 = mul nsw i32 %136, %3
  %140 = add nsw i32 %115, -3
  %141 = zext i32 %140 to i64
  %142 = getelementptr inbounds float, ptr %4, i64 %141
  %143 = mul nsw i32 %140, %3
  %144 = add nsw i32 %115, -2
  %145 = zext i32 %144 to i64
  %146 = getelementptr inbounds float, ptr %4, i64 %145
  %147 = mul nsw i32 %144, %3
  %148 = zext i32 %119 to i64
  %149 = getelementptr inbounds float, ptr %4, i64 %148
  %150 = mul nsw i32 %119, %3
  %151 = sext i32 %123 to i64
  %152 = sext i32 %127 to i64
  %153 = sext i32 %131 to i64
  %154 = sext i32 %135 to i64
  %155 = sext i32 %139 to i64
  %156 = sext i32 %143 to i64
  %157 = sext i32 %147 to i64
  %158 = sext i32 %150 to i64
  %159 = zext i32 %0 to i64
  br label %160

160:                                              ; preds = %160, %118
  %161 = phi i64 [ 0, %118 ], [ %212, %160 ]
  %162 = getelementptr inbounds float, ptr %1, i64 %161
  %163 = load float, ptr %162, align 4, !tbaa !11
  %164 = load float, ptr %122, align 4, !tbaa !11
  %165 = add nsw i64 %161, %151
  %166 = getelementptr inbounds float, ptr %5, i64 %165
  %167 = load float, ptr %166, align 4, !tbaa !11
  %168 = fmul float %164, %167
  %169 = fadd float %163, %168
  %170 = load float, ptr %126, align 4, !tbaa !11
  %171 = add nsw i64 %161, %152
  %172 = getelementptr inbounds float, ptr %5, i64 %171
  %173 = load float, ptr %172, align 4, !tbaa !11
  %174 = fmul float %170, %173
  %175 = fadd float %169, %174
  %176 = load float, ptr %130, align 4, !tbaa !11
  %177 = add nsw i64 %161, %153
  %178 = getelementptr inbounds float, ptr %5, i64 %177
  %179 = load float, ptr %178, align 4, !tbaa !11
  %180 = fmul float %176, %179
  %181 = fadd float %175, %180
  %182 = load float, ptr %134, align 4, !tbaa !11
  %183 = add nsw i64 %161, %154
  %184 = getelementptr inbounds float, ptr %5, i64 %183
  %185 = load float, ptr %184, align 4, !tbaa !11
  %186 = fmul float %182, %185
  %187 = fadd float %181, %186
  %188 = load float, ptr %138, align 4, !tbaa !11
  %189 = add nsw i64 %161, %155
  %190 = getelementptr inbounds float, ptr %5, i64 %189
  %191 = load float, ptr %190, align 4, !tbaa !11
  %192 = fmul float %188, %191
  %193 = fadd float %187, %192
  %194 = load float, ptr %142, align 4, !tbaa !11
  %195 = add nsw i64 %161, %156
  %196 = getelementptr inbounds float, ptr %5, i64 %195
  %197 = load float, ptr %196, align 4, !tbaa !11
  %198 = fmul float %194, %197
  %199 = fadd float %193, %198
  %200 = load float, ptr %146, align 4, !tbaa !11
  %201 = add nsw i64 %161, %157
  %202 = getelementptr inbounds float, ptr %5, i64 %201
  %203 = load float, ptr %202, align 4, !tbaa !11
  %204 = fmul float %200, %203
  %205 = fadd float %199, %204
  %206 = load float, ptr %149, align 4, !tbaa !11
  %207 = add nsw i64 %161, %158
  %208 = getelementptr inbounds float, ptr %5, i64 %207
  %209 = load float, ptr %208, align 4, !tbaa !11
  %210 = fmul float %206, %209
  %211 = fadd float %205, %210
  store float %211, ptr %162, align 4, !tbaa !11
  %212 = add nuw nsw i64 %161, 1
  %213 = icmp eq i64 %212, %159
  br i1 %213, label %214, label %160, !llvm.loop !48

214:                                              ; preds = %160, %114
  %215 = add nsw i32 %115, 15
  %216 = icmp slt i32 %215, %2
  br i1 %216, label %217, label %384

217:                                              ; preds = %214
  %218 = add nsw i32 %115, 15
  %219 = sext i32 %218 to i64
  %220 = sext i32 %3 to i64
  %221 = sext i32 %2 to i64
  %222 = zext i32 %0 to i64
  br label %223

223:                                              ; preds = %381, %217
  %224 = phi i64 [ %219, %217 ], [ %382, %381 ]
  br i1 %9, label %225, label %381

225:                                              ; preds = %223
  %226 = add nsw i64 %224, -15
  %227 = getelementptr inbounds float, ptr %4, i64 %226
  %228 = mul nsw i64 %226, %220
  %229 = add nsw i64 %224, -14
  %230 = getelementptr inbounds float, ptr %4, i64 %229
  %231 = mul nsw i64 %229, %220
  %232 = add nsw i64 %224, -13
  %233 = getelementptr inbounds float, ptr %4, i64 %232
  %234 = mul nsw i64 %232, %220
  %235 = add nsw i64 %224, -12
  %236 = getelementptr inbounds float, ptr %4, i64 %235
  %237 = mul nsw i64 %235, %220
  %238 = add nsw i64 %224, -11
  %239 = getelementptr inbounds float, ptr %4, i64 %238
  %240 = mul nsw i64 %238, %220
  %241 = add nsw i64 %224, -10
  %242 = mul nsw i64 %241, %220
  %243 = add nsw i64 %224, -9
  %244 = getelementptr inbounds float, ptr %4, i64 %243
  %245 = mul nsw i64 %243, %220
  %246 = add nsw i64 %224, -8
  %247 = mul nsw i64 %246, %220
  %248 = add nsw i64 %224, -7
  %249 = getelementptr inbounds float, ptr %4, i64 %248
  %250 = mul nsw i64 %248, %220
  %251 = add nsw i64 %224, -6
  %252 = mul nsw i64 %251, %220
  %253 = add nsw i64 %224, -5
  %254 = getelementptr inbounds float, ptr %4, i64 %253
  %255 = mul nsw i64 %253, %220
  %256 = add nsw i64 %224, -4
  %257 = mul nsw i64 %256, %220
  %258 = add nsw i64 %224, -3
  %259 = getelementptr inbounds float, ptr %4, i64 %258
  %260 = mul nsw i64 %258, %220
  %261 = add nsw i64 %224, -2
  %262 = mul nsw i64 %261, %220
  %263 = add nsw i64 %224, -1
  %264 = getelementptr inbounds float, ptr %4, i64 %263
  %265 = mul nsw i64 %263, %220
  %266 = mul nsw i64 %224, %220
  br label %267

267:                                              ; preds = %267, %225
  %268 = phi i64 [ 0, %225 ], [ %379, %267 ]
  %269 = getelementptr inbounds float, ptr %1, i64 %268
  %270 = load float, ptr %269, align 4, !tbaa !11
  %271 = load float, ptr %227, align 4, !tbaa !11
  %272 = add nsw i64 %268, %228
  %273 = getelementptr inbounds float, ptr %5, i64 %272
  %274 = load float, ptr %273, align 4, !tbaa !11
  %275 = fmul float %271, %274
  %276 = fadd float %270, %275
  %277 = load float, ptr %230, align 4, !tbaa !11
  %278 = add nsw i64 %268, %231
  %279 = getelementptr inbounds float, ptr %5, i64 %278
  %280 = load float, ptr %279, align 4, !tbaa !11
  %281 = fmul float %277, %280
  %282 = fadd float %276, %281
  %283 = load float, ptr %233, align 4, !tbaa !11
  %284 = add nsw i64 %268, %234
  %285 = getelementptr inbounds float, ptr %5, i64 %284
  %286 = load float, ptr %285, align 4, !tbaa !11
  %287 = fmul float %283, %286
  %288 = fadd float %282, %287
  %289 = load float, ptr %236, align 4, !tbaa !11
  %290 = add nsw i64 %268, %237
  %291 = getelementptr inbounds float, ptr %5, i64 %290
  %292 = load float, ptr %291, align 4, !tbaa !11
  %293 = fmul float %289, %292
  %294 = fadd float %288, %293
  %295 = add nsw i64 %268, %240
  %296 = getelementptr inbounds float, ptr %5, i64 %295
  %297 = load float, ptr %296, align 4, !tbaa !11
  %298 = add nsw i64 %268, %242
  %299 = getelementptr inbounds float, ptr %5, i64 %298
  %300 = load float, ptr %299, align 4, !tbaa !11
  %301 = load <2 x float>, ptr %239, align 4, !tbaa !11
  %302 = insertelement <2 x float> poison, float %297, i64 0
  %303 = insertelement <2 x float> %302, float %300, i64 1
  %304 = fmul <2 x float> %301, %303
  %305 = extractelement <2 x float> %304, i64 0
  %306 = fadd float %294, %305
  %307 = extractelement <2 x float> %304, i64 1
  %308 = fadd float %306, %307
  %309 = add nsw i64 %268, %245
  %310 = getelementptr inbounds float, ptr %5, i64 %309
  %311 = load float, ptr %310, align 4, !tbaa !11
  %312 = add nsw i64 %268, %247
  %313 = getelementptr inbounds float, ptr %5, i64 %312
  %314 = load float, ptr %313, align 4, !tbaa !11
  %315 = load <2 x float>, ptr %244, align 4, !tbaa !11
  %316 = insertelement <2 x float> poison, float %311, i64 0
  %317 = insertelement <2 x float> %316, float %314, i64 1
  %318 = fmul <2 x float> %315, %317
  %319 = extractelement <2 x float> %318, i64 0
  %320 = fadd float %308, %319
  %321 = extractelement <2 x float> %318, i64 1
  %322 = fadd float %320, %321
  %323 = add nsw i64 %268, %250
  %324 = getelementptr inbounds float, ptr %5, i64 %323
  %325 = load float, ptr %324, align 4, !tbaa !11
  %326 = add nsw i64 %268, %252
  %327 = getelementptr inbounds float, ptr %5, i64 %326
  %328 = load float, ptr %327, align 4, !tbaa !11
  %329 = load <2 x float>, ptr %249, align 4, !tbaa !11
  %330 = insertelement <2 x float> poison, float %325, i64 0
  %331 = insertelement <2 x float> %330, float %328, i64 1
  %332 = fmul <2 x float> %329, %331
  %333 = extractelement <2 x float> %332, i64 0
  %334 = fadd float %322, %333
  %335 = extractelement <2 x float> %332, i64 1
  %336 = fadd float %334, %335
  %337 = add nsw i64 %268, %255
  %338 = getelementptr inbounds float, ptr %5, i64 %337
  %339 = load float, ptr %338, align 4, !tbaa !11
  %340 = add nsw i64 %268, %257
  %341 = getelementptr inbounds float, ptr %5, i64 %340
  %342 = load float, ptr %341, align 4, !tbaa !11
  %343 = load <2 x float>, ptr %254, align 4, !tbaa !11
  %344 = insertelement <2 x float> poison, float %339, i64 0
  %345 = insertelement <2 x float> %344, float %342, i64 1
  %346 = fmul <2 x float> %343, %345
  %347 = extractelement <2 x float> %346, i64 0
  %348 = fadd float %336, %347
  %349 = extractelement <2 x float> %346, i64 1
  %350 = fadd float %348, %349
  %351 = add nsw i64 %268, %260
  %352 = getelementptr inbounds float, ptr %5, i64 %351
  %353 = load float, ptr %352, align 4, !tbaa !11
  %354 = add nsw i64 %268, %262
  %355 = getelementptr inbounds float, ptr %5, i64 %354
  %356 = load float, ptr %355, align 4, !tbaa !11
  %357 = load <2 x float>, ptr %259, align 4, !tbaa !11
  %358 = insertelement <2 x float> poison, float %353, i64 0
  %359 = insertelement <2 x float> %358, float %356, i64 1
  %360 = fmul <2 x float> %357, %359
  %361 = extractelement <2 x float> %360, i64 0
  %362 = fadd float %350, %361
  %363 = extractelement <2 x float> %360, i64 1
  %364 = fadd float %362, %363
  %365 = add nsw i64 %268, %265
  %366 = getelementptr inbounds float, ptr %5, i64 %365
  %367 = load float, ptr %366, align 4, !tbaa !11
  %368 = add nsw i64 %268, %266
  %369 = getelementptr inbounds float, ptr %5, i64 %368
  %370 = load float, ptr %369, align 4, !tbaa !11
  %371 = load <2 x float>, ptr %264, align 4, !tbaa !11
  %372 = insertelement <2 x float> poison, float %367, i64 0
  %373 = insertelement <2 x float> %372, float %370, i64 1
  %374 = fmul <2 x float> %371, %373
  %375 = extractelement <2 x float> %374, i64 0
  %376 = fadd float %364, %375
  %377 = extractelement <2 x float> %374, i64 1
  %378 = fadd float %376, %377
  store float %378, ptr %269, align 4, !tbaa !11
  %379 = add nuw nsw i64 %268, 1
  %380 = icmp eq i64 %379, %222
  br i1 %380, label %381, label %267, !llvm.loop !49

381:                                              ; preds = %267, %223
  %382 = add nsw i64 %224, 16
  %383 = icmp slt i64 %382, %221
  br i1 %383, label %223, label %384, !llvm.loop !50

384:                                              ; preds = %381, %214
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #8

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

attributes #0 = { nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind }
attributes #3 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nosync nounwind optsize memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { nounwind }
attributes #11 = { cold }
attributes #12 = { cold optsize }
attributes #13 = { optsize }
attributes #14 = { nounwind optsize }

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
!17 = distinct !{!17, !14}
!18 = distinct !{!18, !14}
!19 = distinct !{!19, !14}
!20 = !{!21, !21, i64 0}
!21 = !{!"int", !9, i64 0}
!22 = distinct !{!22, !14}
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
!33 = distinct !{!33, !14}
!34 = distinct !{!34, !14}
!35 = distinct !{!35, !14}
!36 = distinct !{!36, !14}
!37 = distinct !{!37, !14}
!38 = distinct !{!38, !14}
!39 = distinct !{!39, !14}
!40 = distinct !{!40, !14}
!41 = distinct !{!41, !14}
!42 = distinct !{!42, !14}
!43 = distinct !{!43, !14}
!44 = distinct !{!44, !14}
!45 = distinct !{!45, !14}
!46 = distinct !{!46, !14}
!47 = distinct !{!47, !14}
!48 = distinct !{!48, !14}
!49 = distinct !{!49, !14}
!50 = distinct !{!50, !14}
