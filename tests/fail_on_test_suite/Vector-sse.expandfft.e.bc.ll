; ModuleID = '/src/llvm-test-suite/build/SingleSource/UnitTests/Vector/SSE/Vector-sse.expandfft.e.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@x = internal global [2048 x float] zeroinitializer, align 16
@z = internal global [2048 x float] zeroinitializer, align 16
@w = internal global [1024 x float] zeroinitializer, align 16
@y = internal global [2048 x float] zeroinitializer, align 16
@.str = private unnamed_addr constant [29 x i8] c" for n=%d, fwd/bck error=%e\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c" for n=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"%g  \00", align 1

; Function Attrs: nofree nounwind optsize uwtable
define dso_local i32 @main() #0 {
  br label %1

1:                                                ; preds = %86, %0
  %2 = phi i1 [ false, %0 ], [ true, %86 ]
  %3 = phi i1 [ true, %0 ], [ false, %86 ]
  %4 = phi float [ 3.310000e+02, %0 ], [ %27, %86 ]
  br i1 %2, label %5, label %6

5:                                                ; preds = %1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(8192) @x, i8 0, i64 8192, i1 false), !tbaa !7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(8192) @z, i8 0, i64 8192, i1 false), !tbaa !7
  br label %26

6:                                                ; preds = %6, %1
  %7 = phi i64 [ %24, %6 ], [ 0, %1 ]
  %8 = phi float [ %16, %6 ], [ %4, %1 ]
  %9 = fpext float %8 to double
  %10 = fmul double %9, 1.680700e+04
  %11 = tail call double @fmod(double noundef %10, double noundef 0x41DFFFFFFFC00000) #6
  %12 = fptrunc double %11 to float
  %13 = fpext float %12 to double
  %14 = fmul double %13, 1.680700e+04
  %15 = tail call double @fmod(double noundef %14, double noundef 0x41DFFFFFFFC00000) #6
  %16 = fptrunc double %15 to float
  %17 = getelementptr inbounds [2048 x float], ptr @x, i64 0, i64 %7
  %18 = getelementptr inbounds [2048 x float], ptr @z, i64 0, i64 %7
  %19 = insertelement <2 x double> poison, double %11, i64 0
  %20 = insertelement <2 x double> %19, double %15, i64 1
  %21 = fadd <2 x double> %20, <double -1.000000e+00, double -1.000000e+00>
  %22 = fdiv <2 x double> %21, <double 0x41DFFFFFFF800000, double 0x41DFFFFFFF800000>
  %23 = fptrunc <2 x double> %22 to <2 x float>
  store <2 x float> %23, ptr %17, align 8, !tbaa !7
  store <2 x float> %23, ptr %18, align 8, !tbaa !7
  %24 = add nuw nsw i64 %7, 2
  %25 = icmp ult i64 %7, 2046
  br i1 %25, label %6, label %26, !llvm.loop !11

26:                                               ; preds = %6, %5
  %27 = phi float [ %4, %5 ], [ %16, %6 ]
  br label %28

28:                                               ; preds = %28, %26
  %29 = phi i64 [ 0, %26 ], [ %40, %28 ]
  %30 = trunc i64 %29 to i32
  %31 = sitofp i32 %30 to float
  %32 = fmul float %31, 0x3F7921FB60000000
  %33 = fpext float %32 to double
  %34 = tail call double @cos(double noundef %33) #6
  %35 = fptrunc double %34 to float
  %36 = getelementptr inbounds [2 x float], ptr @w, i64 %29
  store float %35, ptr %36, align 8, !tbaa !7
  %37 = tail call double @sin(double noundef %33) #6
  %38 = fptrunc double %37 to float
  %39 = getelementptr inbounds [2 x float], ptr @w, i64 %29, i64 1
  store float %38, ptr %39, align 4, !tbaa !7
  %40 = add nuw nsw i64 %29, 1
  %41 = icmp eq i64 %40, 512
  br i1 %41, label %42, label %28, !llvm.loop !13

42:                                               ; preds = %28
  br i1 %2, label %65, label %43

43:                                               ; preds = %42
  tail call void @cfft2(i32 noundef 1024, ptr noundef nonnull @x, ptr noundef nonnull @y, ptr noundef nonnull @w, double noundef 1.000000e+00) #7
  tail call void @cfft2(i32 noundef 1024, ptr noundef nonnull @y, ptr noundef nonnull @x, ptr noundef nonnull @w, double noundef -1.000000e+00) #7
  br label %44

44:                                               ; preds = %44, %43
  %45 = phi i64 [ 0, %43 ], [ %59, %44 ]
  %46 = phi double [ 0.000000e+00, %43 ], [ %58, %44 ]
  %47 = getelementptr inbounds [2048 x float], ptr @z, i64 0, i64 %45
  %48 = getelementptr inbounds [2048 x float], ptr @x, i64 0, i64 %45
  %49 = load <2 x float>, ptr %47, align 8, !tbaa !7
  %50 = load <2 x float>, ptr %48, align 8, !tbaa !7
  %51 = fmul <2 x float> %50, <float 0x3F50000000000000, float 0x3F50000000000000>
  %52 = fsub <2 x float> %49, %51
  %53 = fmul <2 x float> %52, %52
  %54 = shufflevector <2 x float> %53, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %55 = fadd <2 x float> %53, %54
  %56 = extractelement <2 x float> %55, i64 0
  %57 = fpext float %56 to double
  %58 = fadd double %46, %57
  %59 = add nuw nsw i64 %45, 2
  %60 = icmp ult i64 %45, 2046
  br i1 %60, label %44, label %61, !llvm.loop !14

61:                                               ; preds = %44
  %.lcssa = phi double [ %58, %44 ]
  %62 = fmul double %.lcssa, 0x3F50000000000000
  %63 = tail call double @sqrt(double noundef %62) #6
  %64 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef 1024, double noundef %63) #7
  br label %86

65:                                               ; preds = %65, %42
  %66 = phi i32 [ %67, %65 ], [ 0, %42 ]
  tail call void @cfft2(i32 noundef 1024, ptr noundef nonnull @x, ptr noundef nonnull @y, ptr noundef nonnull @w, double noundef 1.000000e+00) #7
  tail call void @cfft2(i32 noundef 1024, ptr noundef nonnull @y, ptr noundef nonnull @x, ptr noundef nonnull @w, double noundef -1.000000e+00) #7
  %67 = add nuw nsw i32 %66, 1
  %68 = icmp eq i32 %67, 20000
  br i1 %68, label %69, label %65, !llvm.loop !15

69:                                               ; preds = %65
  %70 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef 1024) #7
  br label %71

71:                                               ; preds = %82, %69
  %72 = phi i64 [ 0, %69 ], [ %84, %82 ]
  %73 = phi i32 [ 0, %69 ], [ %83, %82 ]
  %74 = getelementptr inbounds [1024 x float], ptr @w, i64 0, i64 %72
  %75 = load float, ptr %74, align 4, !tbaa !7
  %76 = fpext float %75 to double
  %77 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, double noundef %76) #7
  %78 = add i32 %73, 1
  %79 = icmp eq i32 %78, 4
  br i1 %79, label %80, label %82

80:                                               ; preds = %71
  %81 = tail call i32 @putchar(i32 10)
  br label %82

82:                                               ; preds = %80, %71
  %83 = phi i32 [ 0, %80 ], [ %78, %71 ]
  %84 = add nuw nsw i64 %72, 1
  %85 = icmp eq i64 %84, 1024
  br i1 %85, label %86, label %71, !llvm.loop !16

86:                                               ; preds = %82, %61
  br i1 %3, label %1, label %87, !llvm.loop !17

87:                                               ; preds = %86
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @fmod(double noundef, double noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @cos(double noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @sin(double noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize memory(readwrite, inaccessiblemem: write) uwtable
define internal void @cfft2(i32 noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2, ptr nocapture noundef readonly %3, double noundef %4) #3 {
  %6 = fptrunc double %4 to float
  %7 = icmp slt i32 %0, 2
  br i1 %7, label %8, label %13

8:                                                ; preds = %5
  %9 = load float, ptr %1, align 4, !tbaa !7
  store float %9, ptr %2, align 4, !tbaa !7
  %10 = getelementptr inbounds [2 x float], ptr %1, i64 0, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !7
  %12 = getelementptr inbounds [2 x float], ptr %2, i64 0, i64 1
  store float %11, ptr %12, align 4, !tbaa !7
  br label %229

13:                                               ; preds = %5
  %14 = sitofp i32 %0 to float
  %15 = fpext float %14 to double
  %16 = tail call double @log(double noundef %15) #6
  %17 = fdiv double %16, 0x3FE60532EF13C385
  %18 = fptosi double %17 to i32
  %19 = lshr i32 %0, 1
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds [2 x float], ptr %1, i64 %20
  %22 = getelementptr inbounds [2 x float], ptr %2, i64 1
  %23 = fcmp olt float %6, 0.000000e+00
  %24 = zext i32 %19 to i64
  br label %25

25:                                               ; preds = %25, %13
  %26 = phi i64 [ 0, %13 ], [ %66, %25 ]
  %27 = shl nuw nsw i64 %26, 1
  %28 = getelementptr inbounds [2 x float], ptr %3, i64 %26
  %29 = load float, ptr %28, align 4, !tbaa !7
  %30 = getelementptr inbounds [2 x float], ptr %3, i64 %26, i64 1
  %31 = load float, ptr %30, align 4, !tbaa !7
  %32 = fneg float %31
  %33 = select i1 %23, float %32, float %31
  %34 = getelementptr inbounds [2 x float], ptr %1, i64 %26
  %35 = load float, ptr %34, align 4, !tbaa !7
  %36 = getelementptr inbounds [2 x float], ptr %21, i64 %26
  %37 = load float, ptr %36, align 4, !tbaa !7
  %38 = fsub float %35, %37
  %39 = fmul float %29, %38
  %40 = getelementptr inbounds [2 x float], ptr %1, i64 %26, i64 1
  %41 = load float, ptr %40, align 4, !tbaa !7
  %42 = getelementptr inbounds [2 x float], ptr %21, i64 %26, i64 1
  %43 = load float, ptr %42, align 4, !tbaa !7
  %44 = fsub float %41, %43
  %45 = fmul float %33, %44
  %46 = fsub float %39, %45
  %47 = getelementptr inbounds [2 x float], ptr %22, i64 %27
  store float %46, ptr %47, align 4, !tbaa !7
  %48 = load float, ptr %34, align 4, !tbaa !7
  %49 = load float, ptr %36, align 4, !tbaa !7
  %50 = fsub float %48, %49
  %51 = fmul float %33, %50
  %52 = load float, ptr %40, align 4, !tbaa !7
  %53 = load float, ptr %42, align 4, !tbaa !7
  %54 = fsub float %52, %53
  %55 = fmul float %29, %54
  %56 = fadd float %51, %55
  %57 = getelementptr inbounds [2 x float], ptr %22, i64 %27, i64 1
  store float %56, ptr %57, align 4, !tbaa !7
  %58 = load float, ptr %34, align 4, !tbaa !7
  %59 = load float, ptr %36, align 4, !tbaa !7
  %60 = fadd float %58, %59
  %61 = getelementptr inbounds [2 x float], ptr %2, i64 %27
  store float %60, ptr %61, align 4, !tbaa !7
  %62 = load float, ptr %40, align 4, !tbaa !7
  %63 = load float, ptr %42, align 4, !tbaa !7
  %64 = fadd float %62, %63
  %65 = getelementptr inbounds [2 x float], ptr %2, i64 %27, i64 1
  store float %64, ptr %65, align 4, !tbaa !7
  %66 = add nuw nsw i64 %26, 1
  %67 = icmp eq i64 %66, %24
  br i1 %67, label %68, label %25, !llvm.loop !18

68:                                               ; preds = %25
  %69 = icmp eq i32 %0, 2
  br i1 %69, label %229, label %70

70:                                               ; preds = %68
  %71 = getelementptr inbounds [2 x float], ptr %2, i64 %20
  %72 = icmp eq i32 %0, 4
  %73 = select i1 %72, ptr %2, ptr %1
  %74 = getelementptr inbounds [2 x float], ptr %73, i64 2
  %75 = icmp ult i32 %0, 4
  br i1 %75, label %112, label %76

76:                                               ; preds = %70
  %77 = lshr i32 %0, 2
  %78 = fcmp olt float %6, 0.000000e+00
  %79 = zext i32 %77 to i64
  br label %80

80:                                               ; preds = %80, %76
  %81 = phi i64 [ 0, %76 ], [ %109, %80 ]
  %82 = shl nuw nsw i64 %81, 1
  %83 = shl nsw i64 %81, 2
  %84 = getelementptr inbounds [2 x float], ptr %3, i64 %82
  %85 = load float, ptr %84, align 4, !tbaa !7
  %86 = getelementptr inbounds [2 x float], ptr %3, i64 %82, i64 1
  %87 = load float, ptr %86, align 4, !tbaa !7
  %88 = fneg float %87
  %89 = select i1 %78, float %88, float %87
  %90 = insertelement <4 x float> poison, float %85, i64 0
  %91 = shufflevector <4 x float> %90, <4 x float> poison, <4 x i32> zeroinitializer
  %92 = fneg float %89
  %93 = insertelement <4 x float> poison, float %92, i64 0
  %94 = insertelement <4 x float> %93, float %89, i64 1
  %95 = insertelement <4 x float> %94, float %92, i64 2
  %96 = insertelement <4 x float> %95, float %89, i64 3
  %97 = getelementptr inbounds [2 x float], ptr %2, i64 %82
  %98 = load <4 x float>, ptr %97, align 16, !tbaa !19
  %99 = getelementptr inbounds [2 x float], ptr %71, i64 %82
  %100 = load <4 x float>, ptr %99, align 16, !tbaa !19
  %101 = fadd <4 x float> %98, %100
  %102 = getelementptr inbounds [2 x float], ptr %73, i64 %83
  store <4 x float> %101, ptr %102, align 16, !tbaa !19
  %103 = fsub <4 x float> %98, %100
  %104 = shufflevector <4 x float> %103, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %105 = fmul <4 x float> %91, %103
  %106 = fmul <4 x float> %104, %96
  %107 = fadd <4 x float> %105, %106
  %108 = getelementptr inbounds [2 x float], ptr %74, i64 %83
  store <4 x float> %107, ptr %108, align 16, !tbaa !19
  %109 = add nuw nsw i64 %81, 1
  %110 = icmp eq i64 %109, %79
  br i1 %110, label %111, label %80, !llvm.loop !20

111:                                              ; preds = %80
  br i1 %72, label %229, label %112

112:                                              ; preds = %111, %70
  %113 = icmp sgt i32 %18, 3
  br i1 %113, label %114, label %202

114:                                              ; preds = %112
  %115 = lshr i32 %0, 3
  %116 = fcmp olt float %6, 0.000000e+00
  %117 = add i32 %18, -2
  br label %118

118:                                              ; preds = %196, %114
  %119 = phi i32 [ %115, %114 ], [ %199, %196 ]
  %120 = phi i32 [ 4, %114 ], [ %197, %196 ]
  %121 = phi i32 [ 8, %114 ], [ %198, %196 ]
  %122 = phi i32 [ 2, %114 ], [ %200, %196 ]
  %123 = phi i32 [ 0, %114 ], [ %136, %196 ]
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %128, label %125

125:                                              ; preds = %118
  %126 = sext i32 %120 to i64
  %127 = getelementptr inbounds [2 x float], ptr %1, i64 %126
  br label %131

128:                                              ; preds = %118
  %129 = zext i32 %120 to i64
  %130 = getelementptr inbounds [2 x float], ptr %2, i64 %129
  br label %131

131:                                              ; preds = %128, %125
  %132 = phi ptr [ %127, %125 ], [ %130, %128 ]
  %133 = phi ptr [ %1, %125 ], [ %2, %128 ]
  %134 = phi ptr [ %71, %125 ], [ %21, %128 ]
  %135 = phi ptr [ %2, %125 ], [ %1, %128 ]
  %136 = phi i32 [ 0, %125 ], [ 1, %128 ]
  %137 = icmp sgt i32 %119, 0
  br i1 %137, label %138, label %196

138:                                              ; preds = %131
  %139 = icmp sgt i32 %120, 0
  %140 = sext i32 %120 to i64
  %141 = sext i32 %121 to i64
  %142 = zext i32 %119 to i64
  br label %143

143:                                              ; preds = %193, %138
  %144 = phi i64 [ 0, %138 ], [ %194, %193 ]
  %145 = mul nsw i64 %144, %140
  %146 = mul nsw i64 %144, %141
  %147 = getelementptr inbounds [2 x float], ptr %3, i64 %145
  %148 = load float, ptr %147, align 4, !tbaa !7
  %149 = getelementptr inbounds [2 x float], ptr %3, i64 %145, i64 1
  %150 = load float, ptr %149, align 4, !tbaa !7
  %151 = fneg float %150
  %152 = select i1 %116, float %151, float %150
  %153 = insertelement <4 x float> poison, float %148, i64 0
  %154 = shufflevector <4 x float> %153, <4 x float> poison, <4 x i32> zeroinitializer
  %155 = fneg float %152
  %156 = insertelement <4 x float> poison, float %155, i64 0
  %157 = insertelement <4 x float> %156, float %152, i64 1
  %158 = insertelement <4 x float> %157, float %155, i64 2
  %159 = insertelement <4 x float> %158, float %152, i64 3
  br i1 %139, label %160, label %193

160:                                              ; preds = %160, %143
  %161 = phi i64 [ %191, %160 ], [ 0, %143 ]
  %162 = or i64 %161, 2
  %163 = add nsw i64 %161, %145
  %164 = getelementptr inbounds [2 x float], ptr %135, i64 %163
  %165 = load <4 x float>, ptr %164, align 16, !tbaa !19
  %166 = getelementptr inbounds [2 x float], ptr %134, i64 %163
  %167 = load <4 x float>, ptr %166, align 16, !tbaa !19
  %168 = fadd <4 x float> %165, %167
  %169 = add nsw i64 %161, %146
  %170 = getelementptr inbounds [2 x float], ptr %133, i64 %169
  store <4 x float> %168, ptr %170, align 16, !tbaa !19
  %171 = fsub <4 x float> %165, %167
  %172 = shufflevector <4 x float> %171, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %173 = fmul <4 x float> %154, %171
  %174 = fmul <4 x float> %159, %172
  %175 = fadd <4 x float> %173, %174
  %176 = getelementptr inbounds [2 x float], ptr %132, i64 %169
  store <4 x float> %175, ptr %176, align 16, !tbaa !19
  %177 = add nsw i64 %162, %145
  %178 = getelementptr inbounds [2 x float], ptr %135, i64 %177
  %179 = load <4 x float>, ptr %178, align 16, !tbaa !19
  %180 = getelementptr inbounds [2 x float], ptr %134, i64 %177
  %181 = load <4 x float>, ptr %180, align 16, !tbaa !19
  %182 = fadd <4 x float> %179, %181
  %183 = add nsw i64 %162, %146
  %184 = getelementptr inbounds [2 x float], ptr %133, i64 %183
  store <4 x float> %182, ptr %184, align 16, !tbaa !19
  %185 = fsub <4 x float> %179, %181
  %186 = shufflevector <4 x float> %185, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %187 = fmul <4 x float> %154, %185
  %188 = fmul <4 x float> %159, %186
  %189 = fadd <4 x float> %187, %188
  %190 = getelementptr inbounds [2 x float], ptr %132, i64 %183
  store <4 x float> %189, ptr %190, align 16, !tbaa !19
  %191 = add nuw nsw i64 %161, 4
  %192 = icmp slt i64 %191, %140
  br i1 %192, label %160, label %193, !llvm.loop !21

193:                                              ; preds = %160, %143
  %194 = add nuw nsw i64 %144, 1
  %195 = icmp eq i64 %194, %142
  br i1 %195, label %196, label %143, !llvm.loop !22

196:                                              ; preds = %193, %131
  %197 = shl nsw i32 %120, 1
  %198 = shl nsw i32 %120, 2
  %199 = sdiv i32 %0, %198
  %200 = add nuw nsw i32 %122, 1
  %201 = icmp eq i32 %122, %117
  br i1 %201, label %202, label %118, !llvm.loop !23

202:                                              ; preds = %196, %112
  %203 = phi i32 [ 0, %112 ], [ %136, %196 ]
  %204 = icmp eq i32 %203, 0
  %205 = select i1 %204, ptr %21, ptr %71
  %206 = select i1 %204, ptr %1, ptr %2
  %207 = icmp ult i32 %0, 2
  br i1 %207, label %229, label %208

208:                                              ; preds = %208, %202
  %209 = phi i64 [ %227, %208 ], [ 0, %202 ]
  %210 = or i64 %209, 2
  %211 = getelementptr inbounds [2 x float], ptr %206, i64 %209
  %212 = load <4 x float>, ptr %211, align 16, !tbaa !19
  %213 = getelementptr inbounds [2 x float], ptr %205, i64 %209
  %214 = load <4 x float>, ptr %213, align 16, !tbaa !19
  %215 = fadd <4 x float> %212, %214
  %216 = getelementptr inbounds [2 x float], ptr %2, i64 %209
  store <4 x float> %215, ptr %216, align 16, !tbaa !19
  %217 = fsub <4 x float> %212, %214
  %218 = getelementptr inbounds [2 x float], ptr %71, i64 %209
  store <4 x float> %217, ptr %218, align 16, !tbaa !19
  %219 = getelementptr inbounds [2 x float], ptr %206, i64 %210
  %220 = load <4 x float>, ptr %219, align 16, !tbaa !19
  %221 = getelementptr inbounds [2 x float], ptr %205, i64 %210
  %222 = load <4 x float>, ptr %221, align 16, !tbaa !19
  %223 = fadd <4 x float> %220, %222
  %224 = getelementptr inbounds [2 x float], ptr %2, i64 %210
  store <4 x float> %223, ptr %224, align 16, !tbaa !19
  %225 = fsub <4 x float> %220, %222
  %226 = getelementptr inbounds [2 x float], ptr %71, i64 %210
  store <4 x float> %225, ptr %226, align 16, !tbaa !19
  %227 = add nuw nsw i64 %209, 4
  %228 = icmp ult i64 %227, %20
  br i1 %228, label %208, label %229, !llvm.loop !24

229:                                              ; preds = %208, %202, %111, %68, %8
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @sqrt(double noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @log(double noundef) local_unnamed_addr #2

attributes #0 = { nofree nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind optsize memory(readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { nounwind optsize }
attributes #7 = { optsize }

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
!8 = !{!"float", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = distinct !{!13, !12}
!14 = distinct !{!14, !12}
!15 = distinct !{!15, !12}
!16 = distinct !{!16, !12}
!17 = distinct !{!17, !12}
!18 = distinct !{!18, !12}
!19 = !{!9, !9, i64 0}
!20 = distinct !{!20, !12}
!21 = distinct !{!21, !12}
!22 = distinct !{!22, !12}
!23 = distinct !{!23, !12}
!24 = distinct !{!24, !12}
