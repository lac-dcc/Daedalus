; ModuleID = '/src/llvm-test-suite/build/MultiSource/Benchmarks/MiBench/automotive-basicmath/automotive-basicmath.e.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.int_sqrt = type { i32, i32 }

@.str.1 = private unnamed_addr constant [11 x i8] c"Solutions:\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c" %f\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"sqrt(%3d) = %2d\0A\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"sqrt(%X) = %X\0A\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"%3.0f degrees = %.12f radians\0A\00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"%.12f radians = %3.0f degrees\0A\00", align 1
@str = private unnamed_addr constant [38 x i8] c"********* CUBIC FUNCTIONS ***********\00", align 1
@str.11 = private unnamed_addr constant [40 x i8] c"********* INTEGER SQR ROOTS ***********\00", align 1
@str.12 = private unnamed_addr constant [39 x i8] c"********* ANGLE CONVERSION ***********\00", align 1

; Function Attrs: nounwind optsize uwtable
define dso_local i32 @main() #0 {
  %1 = alloca [3 x double], align 16
  %2 = alloca i32, align 4
  %3 = alloca %struct.int_sqrt, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %1) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #8
  %4 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  call void @SolveCubic(double noundef 1.000000e+00, double noundef -1.050000e+01, double noundef 3.200000e+01, double noundef -3.000000e+01, ptr noundef nonnull %2, ptr noundef nonnull %1) #9
  %5 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1) #10
  %6 = load i32, ptr %2, align 4, !tbaa !7
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %17

8:                                                ; preds = %8, %0
  %9 = phi i64 [ %13, %8 ], [ 0, %0 ]
  %10 = getelementptr inbounds [3 x double], ptr %1, i64 0, i64 %9
  %11 = load double, ptr %10, align 8, !tbaa !11
  %12 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, double noundef %11) #10
  %13 = add nuw nsw i64 %9, 1
  %14 = load i32, ptr %2, align 4, !tbaa !7
  %15 = sext i32 %14 to i64
  %16 = icmp slt i64 %13, %15
  br i1 %16, label %8, label %17, !llvm.loop !13

17:                                               ; preds = %8, %0
  %18 = call i32 @putchar(i32 10)
  call void @SolveCubic(double noundef 1.000000e+00, double noundef -4.500000e+00, double noundef 1.700000e+01, double noundef -3.000000e+01, ptr noundef nonnull %2, ptr noundef nonnull %1) #9
  %19 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1) #10
  %20 = load i32, ptr %2, align 4, !tbaa !7
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %22, %17
  %23 = phi i64 [ %27, %22 ], [ 0, %17 ]
  %24 = getelementptr inbounds [3 x double], ptr %1, i64 0, i64 %23
  %25 = load double, ptr %24, align 8, !tbaa !11
  %26 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, double noundef %25) #10
  %27 = add nuw nsw i64 %23, 1
  %28 = load i32, ptr %2, align 4, !tbaa !7
  %29 = sext i32 %28 to i64
  %30 = icmp slt i64 %27, %29
  br i1 %30, label %22, label %31, !llvm.loop !15

31:                                               ; preds = %22, %17
  %32 = call i32 @putchar(i32 10)
  call void @SolveCubic(double noundef 1.000000e+00, double noundef -3.500000e+00, double noundef 2.200000e+01, double noundef -3.100000e+01, ptr noundef nonnull %2, ptr noundef nonnull %1) #9
  %33 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1) #10
  %34 = load i32, ptr %2, align 4, !tbaa !7
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %36, %31
  %37 = phi i64 [ %41, %36 ], [ 0, %31 ]
  %38 = getelementptr inbounds [3 x double], ptr %1, i64 0, i64 %37
  %39 = load double, ptr %38, align 8, !tbaa !11
  %40 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, double noundef %39) #10
  %41 = add nuw nsw i64 %37, 1
  %42 = load i32, ptr %2, align 4, !tbaa !7
  %43 = sext i32 %42 to i64
  %44 = icmp slt i64 %41, %43
  br i1 %44, label %36, label %45, !llvm.loop !16

45:                                               ; preds = %36, %31
  %46 = call i32 @putchar(i32 10)
  call void @SolveCubic(double noundef 1.000000e+00, double noundef -1.370000e+01, double noundef 1.000000e+00, double noundef -3.500000e+01, ptr noundef nonnull %2, ptr noundef nonnull %1) #9
  %47 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1) #10
  %48 = load i32, ptr %2, align 4, !tbaa !7
  %49 = icmp sgt i32 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %50, %45
  %51 = phi i64 [ %55, %50 ], [ 0, %45 ]
  %52 = getelementptr inbounds [3 x double], ptr %1, i64 0, i64 %51
  %53 = load double, ptr %52, align 8, !tbaa !11
  %54 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, double noundef %53) #10
  %55 = add nuw nsw i64 %51, 1
  %56 = load i32, ptr %2, align 4, !tbaa !7
  %57 = sext i32 %56 to i64
  %58 = icmp slt i64 %55, %57
  br i1 %58, label %50, label %59, !llvm.loop !17

59:                                               ; preds = %50, %45
  %60 = call i32 @putchar(i32 10)
  call void @SolveCubic(double noundef 3.000000e+00, double noundef 1.234000e+01, double noundef 5.000000e+00, double noundef 1.200000e+01, ptr noundef nonnull %2, ptr noundef nonnull %1) #9
  %61 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1) #10
  %62 = load i32, ptr %2, align 4, !tbaa !7
  %63 = icmp sgt i32 %62, 0
  br i1 %63, label %64, label %73

64:                                               ; preds = %64, %59
  %65 = phi i64 [ %69, %64 ], [ 0, %59 ]
  %66 = getelementptr inbounds [3 x double], ptr %1, i64 0, i64 %65
  %67 = load double, ptr %66, align 8, !tbaa !11
  %68 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, double noundef %67) #10
  %69 = add nuw nsw i64 %65, 1
  %70 = load i32, ptr %2, align 4, !tbaa !7
  %71 = sext i32 %70 to i64
  %72 = icmp slt i64 %69, %71
  br i1 %72, label %64, label %73, !llvm.loop !18

73:                                               ; preds = %64, %59
  %74 = call i32 @putchar(i32 10)
  call void @SolveCubic(double noundef -8.000000e+00, double noundef -6.789000e+01, double noundef 6.000000e+00, double noundef -2.360000e+01, ptr noundef nonnull %2, ptr noundef nonnull %1) #9
  %75 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1) #10
  %76 = load i32, ptr %2, align 4, !tbaa !7
  %77 = icmp sgt i32 %76, 0
  br i1 %77, label %78, label %87

78:                                               ; preds = %78, %73
  %79 = phi i64 [ %83, %78 ], [ 0, %73 ]
  %80 = getelementptr inbounds [3 x double], ptr %1, i64 0, i64 %79
  %81 = load double, ptr %80, align 8, !tbaa !11
  %82 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, double noundef %81) #10
  %83 = add nuw nsw i64 %79, 1
  %84 = load i32, ptr %2, align 4, !tbaa !7
  %85 = sext i32 %84 to i64
  %86 = icmp slt i64 %83, %85
  br i1 %86, label %78, label %87, !llvm.loop !19

87:                                               ; preds = %78, %73
  %88 = call i32 @putchar(i32 10)
  call void @SolveCubic(double noundef 4.500000e+01, double noundef 8.670000e+00, double noundef 7.500000e+00, double noundef 3.400000e+01, ptr noundef nonnull %2, ptr noundef nonnull %1) #9
  %89 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1) #10
  %90 = load i32, ptr %2, align 4, !tbaa !7
  %91 = icmp sgt i32 %90, 0
  br i1 %91, label %92, label %101

92:                                               ; preds = %92, %87
  %93 = phi i64 [ %97, %92 ], [ 0, %87 ]
  %94 = getelementptr inbounds [3 x double], ptr %1, i64 0, i64 %93
  %95 = load double, ptr %94, align 8, !tbaa !11
  %96 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, double noundef %95) #10
  %97 = add nuw nsw i64 %93, 1
  %98 = load i32, ptr %2, align 4, !tbaa !7
  %99 = sext i32 %98 to i64
  %100 = icmp slt i64 %97, %99
  br i1 %100, label %92, label %101, !llvm.loop !20

101:                                              ; preds = %92, %87
  %102 = call i32 @putchar(i32 10)
  call void @SolveCubic(double noundef -1.200000e+01, double noundef -1.700000e+00, double noundef 5.300000e+00, double noundef 1.600000e+01, ptr noundef nonnull %2, ptr noundef nonnull %1) #9
  %103 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1) #10
  %104 = load i32, ptr %2, align 4, !tbaa !7
  %105 = icmp sgt i32 %104, 0
  br i1 %105, label %106, label %115

106:                                              ; preds = %106, %101
  %107 = phi i64 [ %111, %106 ], [ 0, %101 ]
  %108 = getelementptr inbounds [3 x double], ptr %1, i64 0, i64 %107
  %109 = load double, ptr %108, align 8, !tbaa !11
  %110 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, double noundef %109) #10
  %111 = add nuw nsw i64 %107, 1
  %112 = load i32, ptr %2, align 4, !tbaa !7
  %113 = sext i32 %112 to i64
  %114 = icmp slt i64 %111, %113
  br i1 %114, label %106, label %115, !llvm.loop !21

115:                                              ; preds = %106, %101
  %116 = call i32 @putchar(i32 10)
  br label %117

117:                                              ; preds = %148, %115
  %118 = phi i32 [ 1, %115 ], [ %149, %148 ]
  %119 = sitofp i32 %118 to double
  br label %120

120:                                              ; preds = %145, %117
  %121 = phi double [ 1.000000e+01, %117 ], [ %146, %145 ]
  br label %122

122:                                              ; preds = %142, %120
  %123 = phi double [ 5.000000e+00, %120 ], [ %143, %142 ]
  br label %124

124:                                              ; preds = %138, %122
  %125 = phi double [ -1.000000e+00, %122 ], [ %140, %138 ]
  call void @SolveCubic(double noundef %119, double noundef %121, double noundef %123, double noundef %125, ptr noundef nonnull %2, ptr noundef nonnull %1) #9
  %126 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1) #10
  %127 = load i32, ptr %2, align 4, !tbaa !7
  %128 = icmp sgt i32 %127, 0
  br i1 %128, label %129, label %138

129:                                              ; preds = %129, %124
  %130 = phi i64 [ %134, %129 ], [ 0, %124 ]
  %131 = getelementptr inbounds [3 x double], ptr %1, i64 0, i64 %130
  %132 = load double, ptr %131, align 8, !tbaa !11
  %133 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, double noundef %132) #10
  %134 = add nuw nsw i64 %130, 1
  %135 = load i32, ptr %2, align 4, !tbaa !7
  %136 = sext i32 %135 to i64
  %137 = icmp slt i64 %134, %136
  br i1 %137, label %129, label %138, !llvm.loop !22

138:                                              ; preds = %129, %124
  %139 = call i32 @putchar(i32 10)
  %140 = fadd double %125, -4.510000e-01
  %141 = fcmp ogt double %140, -5.000000e+00
  br i1 %141, label %124, label %142, !llvm.loop !23

142:                                              ; preds = %138
  %143 = fadd double %123, 6.100000e-01
  %144 = fcmp olt double %143, 1.500000e+01
  br i1 %144, label %122, label %145, !llvm.loop !24

145:                                              ; preds = %142
  %146 = fadd double %121, -2.500000e-01
  %147 = fcmp ogt double %146, 0.000000e+00
  br i1 %147, label %120, label %148, !llvm.loop !25

148:                                              ; preds = %145
  %149 = add nuw nsw i32 %118, 1
  %150 = icmp eq i32 %149, 10
  br i1 %150, label %151, label %117, !llvm.loop !26

151:                                              ; preds = %148
  %152 = call i32 @puts(ptr nonnull dereferenceable(1) @str.11)
  br label %153

153:                                              ; preds = %153, %151
  %154 = phi i32 [ 0, %151 ], [ %157, %153 ]
  call void @usqrt(i32 noundef %154, ptr noundef nonnull %3) #9
  %155 = load i32, ptr %3, align 4, !tbaa !27
  %156 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, i32 noundef %154, i32 noundef %155) #10
  %157 = add nuw nsw i32 %154, 2
  %158 = icmp ult i32 %154, 99998
  br i1 %158, label %153, label %159, !llvm.loop !29

159:                                              ; preds = %153
  %160 = call i32 @putchar(i32 10)
  br label %161

161:                                              ; preds = %161, %159
  %162 = phi i32 [ 1072497001, %159 ], [ %165, %161 ]
  call void @usqrt(i32 noundef %162, ptr noundef nonnull %3) #9
  %163 = load i32, ptr %3, align 4, !tbaa !27
  %164 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, i32 noundef %162, i32 noundef %163) #10
  %165 = add nuw nsw i32 %162, 1
  %166 = icmp eq i32 %165, 1072513385
  br i1 %166, label %167, label %161, !llvm.loop !30

167:                                              ; preds = %161
  %168 = call i32 @puts(ptr nonnull dereferenceable(1) @str.12)
  br label %169

169:                                              ; preds = %169, %167
  %170 = phi double [ 0.000000e+00, %167 ], [ %174, %169 ]
  %171 = fmul double %170, 0x400921FB54442D18
  %172 = fdiv double %171, 1.800000e+02
  %173 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, double noundef %170, double noundef %172) #10
  %174 = fadd double %170, 1.000000e-03
  %175 = fcmp ugt double %174, 3.600000e+02
  br i1 %175, label %176, label %169, !llvm.loop !31

176:                                              ; preds = %169
  %177 = call i32 @putchar(i32 10)
  br label %178

178:                                              ; preds = %178, %176
  %179 = phi double [ 0.000000e+00, %176 ], [ %183, %178 ]
  %180 = fmul double %179, 1.800000e+02
  %181 = fdiv double %180, 0x400921FB54442D18
  %182 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, double noundef %179, double noundef %181) #10
  %183 = fadd double %179, 0x3F41DF46A2529D39
  %184 = fcmp ugt double %183, 0x401921FB97600B9B
  br i1 %184, label %185, label %178, !llvm.loop !32

185:                                              ; preds = %178
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %1) #8
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind optsize
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write) uwtable
define internal void @SolveCubic(double noundef %0, double noundef %1, double noundef %2, double noundef %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5) #4 {
  %7 = fdiv double %1, %0
  %8 = fpext double %7 to x86_fp80
  %9 = fdiv double %2, %0
  %10 = fpext double %9 to x86_fp80
  %11 = fdiv double %3, %0
  %12 = fpext double %11 to x86_fp80
  %13 = fmul x86_fp80 %10, 0xKC000C000000000000000
  %14 = tail call x86_fp80 @llvm.fmuladd.f80(x86_fp80 %8, x86_fp80 %8, x86_fp80 %13)
  %15 = fdiv x86_fp80 %14, 0xK40029000000000000000
  %16 = fmul x86_fp80 %8, 0xK40008000000000000000
  %17 = fmul x86_fp80 %16, %8
  %18 = fmul x86_fp80 %8, 0xKC0029000000000000000
  %19 = fmul x86_fp80 %18, %10
  %20 = tail call x86_fp80 @llvm.fmuladd.f80(x86_fp80 %17, x86_fp80 %8, x86_fp80 %19)
  %21 = tail call x86_fp80 @llvm.fmuladd.f80(x86_fp80 %12, x86_fp80 0xK4003D800000000000000, x86_fp80 %20)
  %22 = fdiv x86_fp80 %21, 0xK4004D800000000000000
  %23 = fmul x86_fp80 %15, %15
  %24 = fmul x86_fp80 %15, %23
  %25 = fneg x86_fp80 %24
  %26 = tail call x86_fp80 @llvm.fmuladd.f80(x86_fp80 %22, x86_fp80 %22, x86_fp80 %25)
  %27 = fptrunc x86_fp80 %26 to double
  %28 = fcmp ugt double %27, 0.000000e+00
  br i1 %28, label %66, label %29

29:                                               ; preds = %6
  store i32 3, ptr %4, align 4, !tbaa !7
  %30 = fptrunc x86_fp80 %24 to double
  %31 = tail call double @sqrt(double noundef %30) #9
  %32 = fpext double %31 to x86_fp80
  %33 = fdiv x86_fp80 %22, %32
  %34 = fptrunc x86_fp80 %33 to double
  %35 = tail call double @acos(double noundef %34) #9
  %36 = fptrunc x86_fp80 %15 to double
  %37 = tail call double @sqrt(double noundef %36) #9
  %38 = fmul double %37, -2.000000e+00
  %39 = fdiv double %35, 3.000000e+00
  %40 = tail call double @cos(double noundef %39) #9
  %41 = fmul double %38, %40
  %42 = fpext double %41 to x86_fp80
  %43 = fdiv x86_fp80 %8, 0xK4000C000000000000000
  %44 = fsub x86_fp80 %42, %43
  %45 = fptrunc x86_fp80 %44 to double
  store double %45, ptr %5, align 8, !tbaa !11
  %46 = tail call double @sqrt(double noundef %36) #9
  %47 = fmul double %46, -2.000000e+00
  %48 = fadd double %35, 0x401921FB54442D18
  %49 = fdiv double %48, 3.000000e+00
  %50 = tail call double @cos(double noundef %49) #9
  %51 = fmul double %47, %50
  %52 = fpext double %51 to x86_fp80
  %53 = fsub x86_fp80 %52, %43
  %54 = fptrunc x86_fp80 %53 to double
  %55 = getelementptr inbounds double, ptr %5, i64 1
  store double %54, ptr %55, align 8, !tbaa !11
  %56 = tail call double @sqrt(double noundef %36) #9
  %57 = fmul double %56, -2.000000e+00
  %58 = fadd double %35, 0x402921FB54442D18
  %59 = fdiv double %58, 3.000000e+00
  %60 = tail call double @cos(double noundef %59) #9
  %61 = fmul double %57, %60
  %62 = fpext double %61 to x86_fp80
  %63 = fsub x86_fp80 %62, %43
  %64 = fptrunc x86_fp80 %63 to double
  %65 = getelementptr inbounds double, ptr %5, i64 2
  store double %64, ptr %65, align 8, !tbaa !11
  br label %83

66:                                               ; preds = %6
  store i32 1, ptr %4, align 4, !tbaa !7
  %67 = tail call double @sqrt(double noundef %27) #9
  %68 = fptrunc x86_fp80 %22 to double
  %69 = tail call double @llvm.fabs.f64(double %68)
  %70 = fadd double %69, %67
  %71 = tail call double @pow(double noundef %70, double noundef 0x3FD5555555555555) #9
  %72 = fpext double %71 to x86_fp80
  %73 = fdiv x86_fp80 %15, %72
  %74 = fadd x86_fp80 %73, %72
  %75 = fptrunc x86_fp80 %74 to double
  %76 = fcmp olt x86_fp80 %22, 0xK00000000000000000000
  %77 = fneg double %75
  %78 = select i1 %76, double %75, double %77
  %79 = fdiv x86_fp80 %8, 0xK4000C000000000000000
  %80 = fpext double %78 to x86_fp80
  %81 = fsub x86_fp80 %80, %79
  %82 = fptrunc x86_fp80 %81 to double
  store double %82, ptr %5, align 8, !tbaa !11
  br label %83

83:                                               ; preds = %66, %29
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare x86_fp80 @llvm.fmuladd.f80(x86_fp80, x86_fp80, x86_fp80) #5

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @sqrt(double noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @acos(double noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @cos(double noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #5

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #6

; Function Attrs: nofree nosync nounwind optsize memory(argmem: write) uwtable
define internal void @usqrt(i32 noundef %0, ptr nocapture noundef writeonly %1) #7 {
  br label %3

3:                                                ; preds = %3, %2
  %4 = phi i32 [ 0, %2 ], [ %18, %3 ]
  %5 = phi i32 [ 0, %2 ], [ %17, %3 ]
  %6 = phi i32 [ 0, %2 ], [ %15, %3 ]
  %7 = phi i32 [ %0, %2 ], [ %9, %3 ]
  %8 = tail call i32 @llvm.fshl.i32(i32 %5, i32 %7, i32 2)
  %9 = shl i32 %7, 2
  %10 = shl i32 %6, 1
  %11 = shl i32 %6, 2
  %12 = or i32 %11, 1
  %13 = icmp uge i32 %8, %12
  %14 = zext i1 %13 to i32
  %15 = or i32 %10, %14
  %16 = select i1 %13, i32 %12, i32 0
  %17 = sub i32 %8, %16
  %18 = add nuw nsw i32 %4, 1
  %19 = icmp eq i32 %18, 32
  br i1 %19, label %20, label %3, !llvm.loop !33

20:                                               ; preds = %3
  %.lcssa = phi i32 [ %15, %3 ]
  store i32 %.lcssa, ptr %1, align 4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #5

attributes #0 = { nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
attributes #4 = { mustprogress nofree nounwind optsize willreturn memory(write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nosync nounwind optsize memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }
attributes #9 = { nounwind optsize }
attributes #10 = { optsize }

!llvm.ident = !{!0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3, !4, !5, !6}

!0 = !{!"clang version 17.0.6 (https://github.com/Casperento/llvm-project.git 9b0073551ece0d22bf3378af2b03e456a26031b6)"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 1, !"ThinLTO", i32 0}
!6 = !{i32 1, !"EnableSplitLTOUnit", i32 1}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!12, !12, i64 0}
!12 = !{!"double", !9, i64 0}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.mustprogress"}
!15 = distinct !{!15, !14}
!16 = distinct !{!16, !14}
!17 = distinct !{!17, !14}
!18 = distinct !{!18, !14}
!19 = distinct !{!19, !14}
!20 = distinct !{!20, !14}
!21 = distinct !{!21, !14}
!22 = distinct !{!22, !14}
!23 = distinct !{!23, !14}
!24 = distinct !{!24, !14}
!25 = distinct !{!25, !14}
!26 = distinct !{!26, !14}
!27 = !{!28, !8, i64 0}
!28 = !{!"int_sqrt", !8, i64 0, !8, i64 4}
!29 = distinct !{!29, !14}
!30 = distinct !{!30, !14}
!31 = distinct !{!31, !14}
!32 = distinct !{!32, !14}
!33 = distinct !{!33, !14}
