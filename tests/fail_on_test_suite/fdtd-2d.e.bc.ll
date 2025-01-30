; ModuleID = '/src/llvm-test-suite/build/SingleSource/Benchmarks/Polybench/stencils/fdtd-2d/fdtd-2d.e.bc'
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
  %3 = tail call ptr @polybench_alloc_data(i64 noundef 1000000, i32 noundef 8) #13
  %4 = tail call ptr @polybench_alloc_data(i64 noundef 1000000, i32 noundef 8) #13
  %5 = tail call ptr @polybench_alloc_data(i64 noundef 1000000, i32 noundef 8) #13
  %6 = tail call ptr @polybench_alloc_data(i64 noundef 1000000, i32 noundef 8) #13
  %7 = tail call ptr @polybench_alloc_data(i64 noundef 1000000, i32 noundef 8) #13
  %8 = tail call ptr @polybench_alloc_data(i64 noundef 1000000, i32 noundef 8) #13
  %9 = tail call ptr @polybench_alloc_data(i64 noundef 50, i32 noundef 8) #13
  tail call fastcc void @init_array(ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %9) #13
  br label %10

10:                                               ; preds = %78, %2
  %11 = phi i64 [ 0, %2 ], [ %79, %78 ]
  %12 = getelementptr inbounds double, ptr %9, i64 %11
  br label %13

13:                                               ; preds = %13, %10
  %14 = phi i64 [ 0, %10 ], [ %17, %13 ]
  %15 = load double, ptr %12, align 8, !tbaa !11
  %16 = getelementptr inbounds [1000 x double], ptr %4, i64 0, i64 %14
  store double %15, ptr %16, align 8, !tbaa !11
  %17 = add nuw nsw i64 %14, 1
  %18 = icmp eq i64 %17, 1000
  br i1 %18, label %19, label %13, !llvm.loop !13

19:                                               ; preds = %34, %13
  %20 = phi i64 [ %35, %34 ], [ 1, %13 ]
  %21 = add nsw i64 %20, -1
  br label %22

22:                                               ; preds = %22, %19
  %23 = phi i64 [ 0, %19 ], [ %32, %22 ]
  %24 = getelementptr inbounds [1000 x double], ptr %4, i64 %20, i64 %23
  %25 = load double, ptr %24, align 8, !tbaa !11
  %26 = getelementptr inbounds [1000 x double], ptr %5, i64 %20, i64 %23
  %27 = load double, ptr %26, align 8, !tbaa !11
  %28 = getelementptr inbounds [1000 x double], ptr %5, i64 %21, i64 %23
  %29 = load double, ptr %28, align 8, !tbaa !11
  %30 = fsub double %27, %29
  %31 = tail call double @llvm.fmuladd.f64(double %30, double -5.000000e-01, double %25)
  store double %31, ptr %24, align 8, !tbaa !11
  %32 = add nuw nsw i64 %23, 1
  %33 = icmp eq i64 %32, 1000
  br i1 %33, label %34, label %22, !llvm.loop !15

34:                                               ; preds = %22
  %35 = add nuw nsw i64 %20, 1
  %36 = icmp eq i64 %35, 1000
  br i1 %36, label %37, label %19, !llvm.loop !16

37:                                               ; preds = %52, %34
  %38 = phi i64 [ %53, %52 ], [ 0, %34 ]
  br label %39

39:                                               ; preds = %39, %37
  %40 = phi i64 [ 1, %37 ], [ %50, %39 ]
  %41 = getelementptr inbounds [1000 x double], ptr %3, i64 %38, i64 %40
  %42 = load double, ptr %41, align 8, !tbaa !11
  %43 = getelementptr inbounds [1000 x double], ptr %5, i64 %38, i64 %40
  %44 = load double, ptr %43, align 8, !tbaa !11
  %45 = add nsw i64 %40, -1
  %46 = getelementptr inbounds [1000 x double], ptr %5, i64 %38, i64 %45
  %47 = load double, ptr %46, align 8, !tbaa !11
  %48 = fsub double %44, %47
  %49 = tail call double @llvm.fmuladd.f64(double %48, double -5.000000e-01, double %42)
  store double %49, ptr %41, align 8, !tbaa !11
  %50 = add nuw nsw i64 %40, 1
  %51 = icmp eq i64 %50, 1000
  br i1 %51, label %52, label %39, !llvm.loop !17

52:                                               ; preds = %39
  %53 = add nuw nsw i64 %38, 1
  %54 = icmp eq i64 %53, 1000
  br i1 %54, label %55, label %37, !llvm.loop !18

55:                                               ; preds = %76, %52
  %56 = phi i64 [ %57, %76 ], [ 0, %52 ]
  %57 = add nuw nsw i64 %56, 1
  br label %58

58:                                               ; preds = %58, %55
  %59 = phi i64 [ 0, %55 ], [ %62, %58 ]
  %60 = getelementptr inbounds [1000 x double], ptr %5, i64 %56, i64 %59
  %61 = load double, ptr %60, align 8, !tbaa !11
  %62 = add nuw nsw i64 %59, 1
  %63 = getelementptr inbounds [1000 x double], ptr %3, i64 %56, i64 %62
  %64 = load double, ptr %63, align 8, !tbaa !11
  %65 = getelementptr inbounds [1000 x double], ptr %3, i64 %56, i64 %59
  %66 = load double, ptr %65, align 8, !tbaa !11
  %67 = fsub double %64, %66
  %68 = getelementptr inbounds [1000 x double], ptr %4, i64 %57, i64 %59
  %69 = load double, ptr %68, align 8, !tbaa !11
  %70 = fadd double %67, %69
  %71 = getelementptr inbounds [1000 x double], ptr %4, i64 %56, i64 %59
  %72 = load double, ptr %71, align 8, !tbaa !11
  %73 = fsub double %70, %72
  %74 = tail call double @llvm.fmuladd.f64(double %73, double 0xBFE6666666666666, double %61)
  store double %74, ptr %60, align 8, !tbaa !11
  %75 = icmp eq i64 %62, 999
  br i1 %75, label %76, label %58, !llvm.loop !19

76:                                               ; preds = %58
  %77 = icmp eq i64 %57, 999
  br i1 %77, label %78, label %55, !llvm.loop !20

78:                                               ; preds = %76
  %79 = add nuw nsw i64 %11, 1
  %80 = icmp eq i64 %79, 50
  br i1 %80, label %81, label %10, !llvm.loop !21

81:                                               ; preds = %78
  tail call fastcc void @init_array(ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9) #13
  br label %82

82:                                               ; preds = %153, %81
  %83 = phi i64 [ 0, %81 ], [ %154, %153 ]
  %84 = getelementptr inbounds double, ptr %9, i64 %83
  br label %85

85:                                               ; preds = %85, %82
  %86 = phi i64 [ 0, %82 ], [ %89, %85 ]
  %87 = load double, ptr %84, align 8, !tbaa !11
  %88 = getelementptr inbounds [1000 x double], ptr %7, i64 0, i64 %86
  store double %87, ptr %88, align 8, !tbaa !11
  %89 = add nuw nsw i64 %86, 1
  %90 = icmp eq i64 %89, 1000
  br i1 %90, label %91, label %85, !llvm.loop !22

91:                                               ; preds = %107, %85
  %92 = phi i64 [ %108, %107 ], [ 1, %85 ]
  %93 = add nsw i64 %92, -1
  br label %94

94:                                               ; preds = %94, %91
  %95 = phi i64 [ 0, %91 ], [ %105, %94 ]
  %96 = getelementptr inbounds [1000 x double], ptr %7, i64 %92, i64 %95
  %97 = load double, ptr %96, align 8, !tbaa !11
  %98 = getelementptr inbounds [1000 x double], ptr %8, i64 %92, i64 %95
  %99 = load double, ptr %98, align 8, !tbaa !11
  %100 = getelementptr inbounds [1000 x double], ptr %8, i64 %93, i64 %95
  %101 = load double, ptr %100, align 8, !tbaa !11
  %102 = fsub double %99, %101
  %103 = fmul double %102, 5.000000e-01
  %104 = fsub double %97, %103
  store double %104, ptr %96, align 8, !tbaa !11
  %105 = add nuw nsw i64 %95, 1
  %106 = icmp eq i64 %105, 1000
  br i1 %106, label %107, label %94, !llvm.loop !23

107:                                              ; preds = %94
  %108 = add nuw nsw i64 %92, 1
  %109 = icmp eq i64 %108, 1000
  br i1 %109, label %110, label %91, !llvm.loop !24

110:                                              ; preds = %126, %107
  %111 = phi i64 [ %127, %126 ], [ 0, %107 ]
  br label %112

112:                                              ; preds = %112, %110
  %113 = phi i64 [ 1, %110 ], [ %124, %112 ]
  %114 = getelementptr inbounds [1000 x double], ptr %6, i64 %111, i64 %113
  %115 = load double, ptr %114, align 8, !tbaa !11
  %116 = getelementptr inbounds [1000 x double], ptr %8, i64 %111, i64 %113
  %117 = load double, ptr %116, align 8, !tbaa !11
  %118 = add nsw i64 %113, -1
  %119 = getelementptr inbounds [1000 x double], ptr %8, i64 %111, i64 %118
  %120 = load double, ptr %119, align 8, !tbaa !11
  %121 = fsub double %117, %120
  %122 = fmul double %121, 5.000000e-01
  %123 = fsub double %115, %122
  store double %123, ptr %114, align 8, !tbaa !11
  %124 = add nuw nsw i64 %113, 1
  %125 = icmp eq i64 %124, 1000
  br i1 %125, label %126, label %112, !llvm.loop !25

126:                                              ; preds = %112
  %127 = add nuw nsw i64 %111, 1
  %128 = icmp eq i64 %127, 1000
  br i1 %128, label %129, label %110, !llvm.loop !26

129:                                              ; preds = %151, %126
  %130 = phi i64 [ %131, %151 ], [ 0, %126 ]
  %131 = add nuw nsw i64 %130, 1
  br label %132

132:                                              ; preds = %132, %129
  %133 = phi i64 [ 0, %129 ], [ %136, %132 ]
  %134 = getelementptr inbounds [1000 x double], ptr %8, i64 %130, i64 %133
  %135 = load double, ptr %134, align 8, !tbaa !11
  %136 = add nuw nsw i64 %133, 1
  %137 = getelementptr inbounds [1000 x double], ptr %6, i64 %130, i64 %136
  %138 = load double, ptr %137, align 8, !tbaa !11
  %139 = getelementptr inbounds [1000 x double], ptr %6, i64 %130, i64 %133
  %140 = load double, ptr %139, align 8, !tbaa !11
  %141 = fsub double %138, %140
  %142 = getelementptr inbounds [1000 x double], ptr %7, i64 %131, i64 %133
  %143 = load double, ptr %142, align 8, !tbaa !11
  %144 = fadd double %141, %143
  %145 = getelementptr inbounds [1000 x double], ptr %7, i64 %130, i64 %133
  %146 = load double, ptr %145, align 8, !tbaa !11
  %147 = fsub double %144, %146
  %148 = fmul double %147, 0x3FE6666666666666
  %149 = fsub double %135, %148
  store double %149, ptr %134, align 8, !tbaa !11
  %150 = icmp eq i64 %136, 999
  br i1 %150, label %151, label %132, !llvm.loop !27

151:                                              ; preds = %132
  %152 = icmp eq i64 %131, 999
  br i1 %152, label %153, label %129, !llvm.loop !28

153:                                              ; preds = %151
  %154 = add nuw nsw i64 %83, 1
  %155 = icmp eq i64 %154, 50
  br i1 %155, label %156, label %82, !llvm.loop !29

156:                                              ; preds = %153
  %157 = tail call noalias dereferenceable_or_null(16001) ptr @malloc(i64 noundef 16001) #14
  %158 = getelementptr inbounds i8, ptr %157, i64 16000
  store i8 0, ptr %158, align 1, !tbaa !30
  br label %159

159:                                              ; preds = %329, %156
  %160 = phi i64 [ 0, %156 ], [ %332, %329 ]
  br label %161

161:                                              ; preds = %161, %159
  %162 = phi i64 [ 0, %159 ], [ %213, %161 ]
  %163 = getelementptr inbounds [1000 x double], ptr %6, i64 %160, i64 %162
  %164 = load i64, ptr %163, align 8, !tbaa !11
  %165 = shl nuw nsw i64 %162, 4
  %166 = trunc i64 %164 to i8
  %167 = and i8 %166, 15
  %168 = or i8 %167, 48
  %169 = getelementptr inbounds i8, ptr %157, i64 %165
  store i8 %168, ptr %169, align 1, !tbaa !30
  %170 = getelementptr inbounds i8, ptr %169, i64 1
  store i8 %168, ptr %170, align 1, !tbaa !30
  %171 = lshr i64 %164, 8
  %172 = trunc i64 %171 to i8
  %173 = and i8 %172, 15
  %174 = or i8 %173, 48
  %175 = getelementptr inbounds i8, ptr %169, i64 2
  store i8 %174, ptr %175, align 1, !tbaa !30
  %176 = getelementptr inbounds i8, ptr %169, i64 3
  store i8 %174, ptr %176, align 1, !tbaa !30
  %177 = lshr i64 %164, 16
  %178 = trunc i64 %177 to i8
  %179 = and i8 %178, 15
  %180 = or i8 %179, 48
  %181 = getelementptr inbounds i8, ptr %169, i64 4
  store i8 %180, ptr %181, align 1, !tbaa !30
  %182 = getelementptr inbounds i8, ptr %169, i64 5
  store i8 %180, ptr %182, align 1, !tbaa !30
  %183 = lshr i64 %164, 24
  %184 = trunc i64 %183 to i8
  %185 = and i8 %184, 15
  %186 = or i8 %185, 48
  %187 = getelementptr inbounds i8, ptr %169, i64 6
  store i8 %186, ptr %187, align 1, !tbaa !30
  %188 = getelementptr inbounds i8, ptr %169, i64 7
  store i8 %186, ptr %188, align 1, !tbaa !30
  %189 = lshr i64 %164, 32
  %190 = trunc i64 %189 to i8
  %191 = and i8 %190, 15
  %192 = or i8 %191, 48
  %193 = getelementptr inbounds i8, ptr %169, i64 8
  store i8 %192, ptr %193, align 1, !tbaa !30
  %194 = getelementptr inbounds i8, ptr %169, i64 9
  store i8 %192, ptr %194, align 1, !tbaa !30
  %195 = lshr i64 %164, 40
  %196 = trunc i64 %195 to i8
  %197 = and i8 %196, 15
  %198 = or i8 %197, 48
  %199 = getelementptr inbounds i8, ptr %169, i64 10
  store i8 %198, ptr %199, align 1, !tbaa !30
  %200 = getelementptr inbounds i8, ptr %169, i64 11
  store i8 %198, ptr %200, align 1, !tbaa !30
  %201 = lshr i64 %164, 48
  %202 = trunc i64 %201 to i8
  %203 = and i8 %202, 15
  %204 = or i8 %203, 48
  %205 = getelementptr inbounds i8, ptr %169, i64 12
  store i8 %204, ptr %205, align 1, !tbaa !30
  %206 = getelementptr inbounds i8, ptr %169, i64 13
  store i8 %204, ptr %206, align 1, !tbaa !30
  %207 = lshr i64 %164, 56
  %208 = trunc i64 %207 to i8
  %209 = and i8 %208, 15
  %210 = or i8 %209, 48
  %211 = getelementptr inbounds i8, ptr %169, i64 14
  store i8 %210, ptr %211, align 1, !tbaa !30
  %212 = getelementptr inbounds i8, ptr %169, i64 15
  store i8 %210, ptr %212, align 1, !tbaa !30
  %213 = add nuw nsw i64 %162, 1
  %214 = icmp eq i64 %213, 1000
  br i1 %214, label %215, label %161, !llvm.loop !31

215:                                              ; preds = %161
  %216 = load ptr, ptr @stderr, align 8, !tbaa !7
  %217 = tail call i32 @fputs(ptr noundef nonnull %157, ptr noundef %216) #15
  br label %218

218:                                              ; preds = %218, %215
  %219 = phi i64 [ 0, %215 ], [ %270, %218 ]
  %220 = getelementptr inbounds [1000 x double], ptr %7, i64 %160, i64 %219
  %221 = load i64, ptr %220, align 8, !tbaa !11
  %222 = shl nuw nsw i64 %219, 4
  %223 = trunc i64 %221 to i8
  %224 = and i8 %223, 15
  %225 = or i8 %224, 48
  %226 = getelementptr inbounds i8, ptr %157, i64 %222
  store i8 %225, ptr %226, align 1, !tbaa !30
  %227 = getelementptr inbounds i8, ptr %226, i64 1
  store i8 %225, ptr %227, align 1, !tbaa !30
  %228 = lshr i64 %221, 8
  %229 = trunc i64 %228 to i8
  %230 = and i8 %229, 15
  %231 = or i8 %230, 48
  %232 = getelementptr inbounds i8, ptr %226, i64 2
  store i8 %231, ptr %232, align 1, !tbaa !30
  %233 = getelementptr inbounds i8, ptr %226, i64 3
  store i8 %231, ptr %233, align 1, !tbaa !30
  %234 = lshr i64 %221, 16
  %235 = trunc i64 %234 to i8
  %236 = and i8 %235, 15
  %237 = or i8 %236, 48
  %238 = getelementptr inbounds i8, ptr %226, i64 4
  store i8 %237, ptr %238, align 1, !tbaa !30
  %239 = getelementptr inbounds i8, ptr %226, i64 5
  store i8 %237, ptr %239, align 1, !tbaa !30
  %240 = lshr i64 %221, 24
  %241 = trunc i64 %240 to i8
  %242 = and i8 %241, 15
  %243 = or i8 %242, 48
  %244 = getelementptr inbounds i8, ptr %226, i64 6
  store i8 %243, ptr %244, align 1, !tbaa !30
  %245 = getelementptr inbounds i8, ptr %226, i64 7
  store i8 %243, ptr %245, align 1, !tbaa !30
  %246 = lshr i64 %221, 32
  %247 = trunc i64 %246 to i8
  %248 = and i8 %247, 15
  %249 = or i8 %248, 48
  %250 = getelementptr inbounds i8, ptr %226, i64 8
  store i8 %249, ptr %250, align 1, !tbaa !30
  %251 = getelementptr inbounds i8, ptr %226, i64 9
  store i8 %249, ptr %251, align 1, !tbaa !30
  %252 = lshr i64 %221, 40
  %253 = trunc i64 %252 to i8
  %254 = and i8 %253, 15
  %255 = or i8 %254, 48
  %256 = getelementptr inbounds i8, ptr %226, i64 10
  store i8 %255, ptr %256, align 1, !tbaa !30
  %257 = getelementptr inbounds i8, ptr %226, i64 11
  store i8 %255, ptr %257, align 1, !tbaa !30
  %258 = lshr i64 %221, 48
  %259 = trunc i64 %258 to i8
  %260 = and i8 %259, 15
  %261 = or i8 %260, 48
  %262 = getelementptr inbounds i8, ptr %226, i64 12
  store i8 %261, ptr %262, align 1, !tbaa !30
  %263 = getelementptr inbounds i8, ptr %226, i64 13
  store i8 %261, ptr %263, align 1, !tbaa !30
  %264 = lshr i64 %221, 56
  %265 = trunc i64 %264 to i8
  %266 = and i8 %265, 15
  %267 = or i8 %266, 48
  %268 = getelementptr inbounds i8, ptr %226, i64 14
  store i8 %267, ptr %268, align 1, !tbaa !30
  %269 = getelementptr inbounds i8, ptr %226, i64 15
  store i8 %267, ptr %269, align 1, !tbaa !30
  %270 = add nuw nsw i64 %219, 1
  %271 = icmp eq i64 %270, 1000
  br i1 %271, label %272, label %218, !llvm.loop !32

272:                                              ; preds = %218
  %273 = load ptr, ptr @stderr, align 8, !tbaa !7
  %274 = tail call i32 @fputs(ptr noundef nonnull %157, ptr noundef %273) #15
  br label %275

275:                                              ; preds = %275, %272
  %276 = phi i64 [ 0, %272 ], [ %327, %275 ]
  %277 = getelementptr inbounds [1000 x double], ptr %8, i64 %160, i64 %276
  %278 = load i64, ptr %277, align 8, !tbaa !11
  %279 = shl nuw nsw i64 %276, 4
  %280 = trunc i64 %278 to i8
  %281 = and i8 %280, 15
  %282 = or i8 %281, 48
  %283 = getelementptr inbounds i8, ptr %157, i64 %279
  store i8 %282, ptr %283, align 1, !tbaa !30
  %284 = getelementptr inbounds i8, ptr %283, i64 1
  store i8 %282, ptr %284, align 1, !tbaa !30
  %285 = lshr i64 %278, 8
  %286 = trunc i64 %285 to i8
  %287 = and i8 %286, 15
  %288 = or i8 %287, 48
  %289 = getelementptr inbounds i8, ptr %283, i64 2
  store i8 %288, ptr %289, align 1, !tbaa !30
  %290 = getelementptr inbounds i8, ptr %283, i64 3
  store i8 %288, ptr %290, align 1, !tbaa !30
  %291 = lshr i64 %278, 16
  %292 = trunc i64 %291 to i8
  %293 = and i8 %292, 15
  %294 = or i8 %293, 48
  %295 = getelementptr inbounds i8, ptr %283, i64 4
  store i8 %294, ptr %295, align 1, !tbaa !30
  %296 = getelementptr inbounds i8, ptr %283, i64 5
  store i8 %294, ptr %296, align 1, !tbaa !30
  %297 = lshr i64 %278, 24
  %298 = trunc i64 %297 to i8
  %299 = and i8 %298, 15
  %300 = or i8 %299, 48
  %301 = getelementptr inbounds i8, ptr %283, i64 6
  store i8 %300, ptr %301, align 1, !tbaa !30
  %302 = getelementptr inbounds i8, ptr %283, i64 7
  store i8 %300, ptr %302, align 1, !tbaa !30
  %303 = lshr i64 %278, 32
  %304 = trunc i64 %303 to i8
  %305 = and i8 %304, 15
  %306 = or i8 %305, 48
  %307 = getelementptr inbounds i8, ptr %283, i64 8
  store i8 %306, ptr %307, align 1, !tbaa !30
  %308 = getelementptr inbounds i8, ptr %283, i64 9
  store i8 %306, ptr %308, align 1, !tbaa !30
  %309 = lshr i64 %278, 40
  %310 = trunc i64 %309 to i8
  %311 = and i8 %310, 15
  %312 = or i8 %311, 48
  %313 = getelementptr inbounds i8, ptr %283, i64 10
  store i8 %312, ptr %313, align 1, !tbaa !30
  %314 = getelementptr inbounds i8, ptr %283, i64 11
  store i8 %312, ptr %314, align 1, !tbaa !30
  %315 = lshr i64 %278, 48
  %316 = trunc i64 %315 to i8
  %317 = and i8 %316, 15
  %318 = or i8 %317, 48
  %319 = getelementptr inbounds i8, ptr %283, i64 12
  store i8 %318, ptr %319, align 1, !tbaa !30
  %320 = getelementptr inbounds i8, ptr %283, i64 13
  store i8 %318, ptr %320, align 1, !tbaa !30
  %321 = lshr i64 %278, 56
  %322 = trunc i64 %321 to i8
  %323 = and i8 %322, 15
  %324 = or i8 %323, 48
  %325 = getelementptr inbounds i8, ptr %283, i64 14
  store i8 %324, ptr %325, align 1, !tbaa !30
  %326 = getelementptr inbounds i8, ptr %283, i64 15
  store i8 %324, ptr %326, align 1, !tbaa !30
  %327 = add nuw nsw i64 %276, 1
  %328 = icmp eq i64 %327, 1000
  br i1 %328, label %329, label %275, !llvm.loop !33

329:                                              ; preds = %275
  %330 = load ptr, ptr @stderr, align 8, !tbaa !7
  %331 = tail call i32 @fputs(ptr noundef nonnull %157, ptr noundef %330) #15
  %332 = add nuw nsw i64 %160, 1
  %333 = icmp eq i64 %332, 1000
  br i1 %333, label %334, label %159, !llvm.loop !34

334:                                              ; preds = %329
  tail call void @free(ptr noundef nonnull %157) #10
  tail call void @free(ptr noundef %3) #10
  tail call void @free(ptr noundef %4) #10
  tail call void @free(ptr noundef %5) #10
  tail call void @free(ptr noundef %6) #10
  tail call void @free(ptr noundef %7) #10
  tail call void @free(ptr noundef nonnull %8) #10
  tail call void @free(ptr noundef %9) #10
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind optsize memory(argmem: write) uwtable
define internal fastcc void @init_array(ptr nocapture noundef writeonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) unnamed_addr #5 {
  br label %5

5:                                                ; preds = %5, %4
  %6 = phi i64 [ 0, %4 ], [ %10, %5 ]
  %7 = phi <2 x i32> [ <i32 0, i32 1>, %4 ], [ %11, %5 ]
  %8 = sitofp <2 x i32> %7 to <2 x double>
  %9 = getelementptr inbounds double, ptr %3, i64 %6
  store <2 x double> %8, ptr %9, align 8, !tbaa !11
  %10 = add nuw i64 %6, 2
  %11 = add <2 x i32> %7, <i32 2, i32 2>
  %12 = icmp eq i64 %10, 50
  br i1 %12, label %13, label %5, !llvm.loop !35

13:                                               ; preds = %38, %5
  %14 = phi i64 [ %39, %38 ], [ 0, %5 ]
  %15 = trunc i64 %14 to i32
  %16 = sitofp i32 %15 to double
  br label %17

17:                                               ; preds = %17, %13
  %18 = phi i64 [ 0, %13 ], [ %19, %17 ]
  %19 = add nuw nsw i64 %18, 1
  %20 = trunc i64 %19 to i32
  %21 = sitofp i32 %20 to double
  %22 = fmul double %16, %21
  %23 = fdiv double %22, 1.000000e+03
  %24 = getelementptr inbounds [1000 x double], ptr %0, i64 %14, i64 %18
  store double %23, ptr %24, align 8, !tbaa !11
  %25 = trunc i64 %18 to i32
  %26 = add i32 %25, 2
  %27 = sitofp i32 %26 to double
  %28 = fmul double %16, %27
  %29 = fdiv double %28, 1.000000e+03
  %30 = getelementptr inbounds [1000 x double], ptr %1, i64 %14, i64 %18
  store double %29, ptr %30, align 8, !tbaa !11
  %31 = trunc i64 %18 to i32
  %32 = add i32 %31, 3
  %33 = sitofp i32 %32 to double
  %34 = fmul double %16, %33
  %35 = fdiv double %34, 1.000000e+03
  %36 = getelementptr inbounds [1000 x double], ptr %2, i64 %14, i64 %18
  store double %35, ptr %36, align 8, !tbaa !11
  %37 = icmp eq i64 %19, 1000
  br i1 %37, label %38, label %17, !llvm.loop !38

38:                                               ; preds = %17
  %39 = add nuw nsw i64 %14, 1
  %40 = icmp eq i64 %39, 1000
  br i1 %40, label %41, label %13, !llvm.loop !39

41:                                               ; preds = %38
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #6

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fputs(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #8

attributes #0 = { nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
attributes #4 = { noreturn nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind optsize memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
!27 = distinct !{!27, !14}
!28 = distinct !{!28, !14}
!29 = distinct !{!29, !14}
!30 = !{!9, !9, i64 0}
!31 = distinct !{!31, !14}
!32 = distinct !{!32, !14}
!33 = distinct !{!33, !14}
!34 = distinct !{!34, !14}
!35 = distinct !{!35, !14, !36, !37}
!36 = !{!"llvm.loop.isvectorized", i32 1}
!37 = !{!"llvm.loop.unroll.runtime.disable"}
!38 = distinct !{!38, !14}
!39 = distinct !{!39, !14}
