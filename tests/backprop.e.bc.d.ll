; ModuleID = 'backprop.e.bc.ll'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stdout = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [6 x i8] c"%.6f\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%f\0A\00", align 1
@next = internal unnamed_addr global i32 0, align 4
@table = internal unnamed_addr global [344 x i32] zeroinitializer, align 16

; Function Attrs: nounwind optsize uwtable
define dso_local i32 @main() #0 {
  tail call void @glibc_compat_srand(i32 noundef 7) #12
  %1 = tail call noalias dereferenceable_or_null(3400068) ptr @malloc(i64 noundef 3400068) #13
  %2 = tail call noalias dereferenceable_or_null(3400068) ptr @malloc(i64 noundef 3400068) #13
  %3 = tail call noalias dereferenceable_or_null(136) ptr @malloc(i64 noundef 136) #13
  %4 = tail call noalias dereferenceable_or_null(136) ptr @malloc(i64 noundef 136) #13
  %5 = tail call noalias dereferenceable_or_null(200004) ptr @malloc(i64 noundef 200004) #13
  %6 = tail call noalias dereferenceable_or_null(68) ptr @malloc(i64 noundef 68) #13
  %7 = tail call noalias dereferenceable_or_null(68) ptr @malloc(i64 noundef 68) #13
  %8 = tail call noalias dereferenceable_or_null(8) ptr @malloc(i64 noundef 8) #13
  %9 = tail call noalias dereferenceable_or_null(8) ptr @malloc(i64 noundef 8) #13
  %10 = tail call noalias dereferenceable_or_null(8) ptr @malloc(i64 noundef 8) #13
  br label %11

11:                                               ; preds = %21, %0
  %12 = phi i64 [ 0, %0 ], [ %22, %21 ]
  %13 = mul nuw nsw i64 %12, 17
  br label %14

14:                                               ; preds = %14, %11
  %15 = phi i64 [ 0, %11 ], [ %19, %14 ]
  %16 = call float @_wyvern_slice_main__332281330()
  %17 = add nuw nsw i64 %15, %13
  %18 = getelementptr inbounds float, ptr %1, i64 %17
  store float %16, ptr %18, align 4, !tbaa !7
  %19 = add nuw nsw i64 %15, 1
  %20 = icmp eq i64 %19, 17
  br i1 %20, label %21, label %14, !llvm.loop !11

21:                                               ; preds = %14
  %22 = add nuw nsw i64 %12, 1
  %23 = icmp eq i64 %22, 50001
  br i1 %23, label %24, label %11, !llvm.loop !13

24:                                               ; preds = %24, %21
  %25 = phi i64 [ %32, %24 ], [ 0, %21 ]
  %26 = shl nuw nsw i64 %25, 1
  %27 = call float @_wyvern_slice_main__332281330()
  %28 = getelementptr inbounds float, ptr %3, i64 %26
  store float %27, ptr %28, align 4, !tbaa !7
  %29 = call float @_wyvern_slice_main__332281330()
  %30 = or i64 %26, 1
  %31 = getelementptr inbounds float, ptr %3, i64 %30
  store float %29, ptr %31, align 4, !tbaa !7
  %32 = add nuw nsw i64 %25, 1
  %33 = icmp eq i64 %32, 17
  br i1 %33, label %34, label %24, !llvm.loop !14

34:                                               ; preds = %24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(3400068) %2, i8 0, i64 3400068, i1 false), !tbaa !7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(136) %4, i8 0, i64 136, i1 false), !tbaa !7
  store i64 0, ptr %8, align 4
  store i64 0, ptr %9, align 4
  store <2 x float> <float 0x3FB99999A0000000, float 0x3FB99999A0000000>, ptr %10, align 4, !tbaa !7
  store float 0.000000e+00, ptr %5, align 4, !tbaa !7
  br label %35

35:                                               ; preds = %35, %34
  %36 = phi i64 [ 0, %34 ], [ %39, %35 ]
  %37 = call float @_wyvern_slice_main__332281330()
  %38 = getelementptr inbounds float, ptr %5, i64 %36
  store float %37, ptr %38, align 4, !tbaa !7
  %39 = add nuw nsw i64 %36, 1
  %40 = icmp eq i64 %39, 50001
  br i1 %40, label %41, label %35, !llvm.loop !15

41:                                               ; preds = %35
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(68) %6, i8 0, i64 68, i1 false), !tbaa !7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(68) %7, i8 0, i64 68, i1 false), !tbaa !7
  %42 = tail call float @bpnn_train_kernel(i32 noundef 50000, i32 noundef 16, i32 noundef 1, ptr noundef nonnull %5, ptr noundef %6, ptr noundef nonnull %8, ptr noundef %7, ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef %1, ptr noundef %3, ptr noundef %2, ptr noundef %4, i32 noundef 100) #12
  tail call void @bpnn_dump(i32 noundef 50000, i32 noundef 16, i32 noundef 1, ptr noundef %1, ptr noundef %3, float noundef %42) #14
  tail call void @free(ptr noundef %1) #12
  tail call void @free(ptr noundef %3) #12
  tail call void @free(ptr noundef %2) #12
  tail call void @free(ptr noundef %4) #12
  tail call void @free(ptr noundef nonnull %5) #12
  tail call void @free(ptr noundef %6) #12
  tail call void @free(ptr noundef %8) #12
  tail call void @free(ptr noundef %7) #12
  tail call void @free(ptr noundef %9) #12
  tail call void @free(ptr noundef %10) #12
  ret i32 0
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nofree nounwind optsize uwtable
define internal void @bpnn_dump(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, float noundef %5) #3 {
  %7 = load ptr, ptr @stdout, align 8, !tbaa !16
  %8 = tail call i32 @fflush(ptr noundef %7) #14
  %9 = icmp slt i32 %0, 0
  br i1 %9, label %21, label %10

10:                                               ; preds = %6
  %11 = icmp slt i32 %1, 0
  %12 = add i32 %1, 1
  %13 = sext i32 %12 to i64
  %14 = add nuw i32 %0, 1
  %15 = zext i32 %14 to i64
  %16 = zext i32 %12 to i64
  br label %17

17:                                               ; preds = %44, %10
  %18 = phi i64 [ 0, %10 ], [ %45, %44 ]
  br i1 %11, label %44, label %19

19:                                               ; preds = %17
  %20 = mul nsw i64 %18, %13
  br label %30

21:                                               ; preds = %44, %6
  %22 = icmp slt i32 %1, 0
  br i1 %22, label %68, label %23

23:                                               ; preds = %21
  %24 = icmp slt i32 %2, 0
  %25 = add i32 %2, 1
  %26 = sext i32 %25 to i64
  %27 = add nuw i32 %1, 1
  %28 = zext i32 %27 to i64
  %29 = zext i32 %25 to i64
  br label %47

30:                                               ; preds = %41, %19
  %31 = phi i64 [ 0, %19 ], [ %42, %41 ]
  %32 = add nsw i64 %31, %20
  %33 = trunc i64 %32 to i32
  %34 = srem i32 %33, 1000
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %30
  %37 = getelementptr inbounds float, ptr %3, i64 %32
  %38 = load float, ptr %37, align 4, !tbaa !7
  %39 = fpext float %38 to double
  %40 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %39) #14
  br label %41

41:                                               ; preds = %36, %30
  %42 = add nuw nsw i64 %31, 1
  %43 = icmp eq i64 %42, %16
  br i1 %43, label %44, label %30, !llvm.loop !18

44:                                               ; preds = %41, %17
  %45 = add nuw nsw i64 %18, 1
  %46 = icmp eq i64 %45, %15
  br i1 %46, label %21, label %17, !llvm.loop !19

47:                                               ; preds = %65, %23
  %48 = phi i64 [ 0, %23 ], [ %66, %65 ]
  br i1 %24, label %65, label %49

49:                                               ; preds = %47
  %50 = mul nsw i64 %48, %26
  br label %51

51:                                               ; preds = %62, %49
  %52 = phi i64 [ 0, %49 ], [ %63, %62 ]
  %53 = add nsw i64 %52, %50
  %54 = trunc i64 %53 to i32
  %55 = srem i32 %54, 1000
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %51
  %58 = getelementptr inbounds float, ptr %4, i64 %53
  %59 = load float, ptr %58, align 4, !tbaa !7
  %60 = fpext float %59 to double
  %61 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %60) #14
  br label %62

62:                                               ; preds = %57, %51
  %63 = add nuw nsw i64 %52, 1
  %64 = icmp eq i64 %63, %29
  br i1 %64, label %65, label %51, !llvm.loop !20

65:                                               ; preds = %62, %47
  %66 = add nuw nsw i64 %48, 1
  %67 = icmp eq i64 %66, %28
  br i1 %67, label %68, label %47, !llvm.loop !21

68:                                               ; preds = %65, %21
  %69 = fpext float %5 to double
  %70 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %69) #14
  ret void
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nofree nounwind optsize memory(write, argmem: readwrite) uwtable
define internal float @bpnn_train_kernel(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noalias nocapture noundef nonnull align 4 %3, ptr noalias nocapture noundef nonnull align 4 %4, ptr noalias nocapture noundef nonnull align 4 %5, ptr noalias nocapture noundef nonnull readonly align 4 %6, ptr noalias nocapture noundef nonnull align 4 %7, ptr noalias nocapture noundef nonnull readonly align 4 %8, ptr noalias nocapture noundef nonnull align 4 %9, ptr noalias nocapture noundef nonnull align 4 %10, ptr noalias nocapture noundef nonnull align 4 %11, ptr noalias nocapture noundef nonnull align 4 %12, i32 noundef %13) #6 {
  %15 = add i32 %1, 1
  %16 = add i32 %2, 1
  %17 = zext i32 %15 to i64
  %18 = zext i32 %16 to i64
  %19 = icmp sgt i32 %13, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %14
  %21 = icmp slt i32 %1, 1
  %22 = icmp slt i32 %0, 0
  %23 = icmp slt i32 %2, 1
  %24 = icmp slt i32 %1, 0
  %25 = add i32 %0, 1
  %26 = zext i32 %25 to i64
  %27 = zext i32 %25 to i64
  br label %30

28:                                               ; preds = %163, %14
  %29 = phi float [ 0.000000e+00, %14 ], [ %136, %163 ]
  ret float %29

30:                                               ; preds = %163, %20
  %31 = phi i32 [ 0, %20 ], [ %164, %163 ]
  store float 1.000000e+00, ptr %3, align 4, !tbaa !7
  br i1 %21, label %59, label %32

32:                                               ; preds = %49, %30
  %33 = phi i64 [ %57, %49 ], [ 1, %30 ]
  br i1 %22, label %49, label %34

34:                                               ; preds = %32
  %35 = getelementptr inbounds float, ptr %9, i64 %33
  br label %36

36:                                               ; preds = %36, %34
  %37 = phi i64 [ 0, %34 ], [ %47, %36 ]
  %38 = phi double [ 0.000000e+00, %34 ], [ %46, %36 ]
  %39 = mul nuw nsw i64 %37, %17
  %40 = getelementptr inbounds float, ptr %35, i64 %39
  %41 = load float, ptr %40, align 4, !tbaa !7
  %42 = getelementptr inbounds float, ptr %3, i64 %37
  %43 = load float, ptr %42, align 4, !tbaa !7
  %44 = fmul float %41, %43
  %45 = fpext float %44 to double
  %46 = fadd double %38, %45
  %47 = add nuw nsw i64 %37, 1
  %48 = icmp eq i64 %47, %26
  br i1 %48, label %49, label %36, !llvm.loop !22

49:                                               ; preds = %36, %32
  %50 = phi double [ 0.000000e+00, %32 ], [ %46, %36 ]
  %51 = fneg double %50
  %52 = tail call double @exp(double noundef %51) #12
  %53 = fadd double %52, 1.000000e+00
  %54 = fdiv double 1.000000e+00, %53
  %55 = fptrunc double %54 to float
  %56 = getelementptr inbounds float, ptr %4, i64 %33
  store float %55, ptr %56, align 4, !tbaa !7
  %57 = add nuw nsw i64 %33, 1
  %58 = icmp eq i64 %57, %17
  br i1 %58, label %59, label %32, !llvm.loop !23

59:                                               ; preds = %49, %30
  store float 1.000000e+00, ptr %4, align 4, !tbaa !7
  br i1 %23, label %107, label %61

60:                                               ; preds = %78
  br i1 %23, label %107, label %88

61:                                               ; preds = %78, %59
  %62 = phi i64 [ %86, %78 ], [ 1, %59 ]
  br i1 %24, label %78, label %63

63:                                               ; preds = %61
  %64 = getelementptr inbounds float, ptr %10, i64 %62
  br label %65

65:                                               ; preds = %65, %63
  %66 = phi i64 [ 0, %63 ], [ %76, %65 ]
  %67 = phi double [ 0.000000e+00, %63 ], [ %75, %65 ]
  %68 = mul nuw nsw i64 %66, %18
  %69 = getelementptr inbounds float, ptr %64, i64 %68
  %70 = load float, ptr %69, align 4, !tbaa !7
  %71 = getelementptr inbounds float, ptr %4, i64 %66
  %72 = load float, ptr %71, align 4, !tbaa !7
  %73 = fmul float %70, %72
  %74 = fpext float %73 to double
  %75 = fadd double %67, %74
  %76 = add nuw nsw i64 %66, 1
  %77 = icmp eq i64 %76, %17
  br i1 %77, label %78, label %65, !llvm.loop !24

78:                                               ; preds = %65, %61
  %79 = phi double [ 0.000000e+00, %61 ], [ %75, %65 ]
  %80 = fneg double %79
  %81 = tail call double @exp(double noundef %80) #12
  %82 = fadd double %81, 1.000000e+00
  %83 = fdiv double 1.000000e+00, %82
  %84 = fptrunc double %83 to float
  %85 = getelementptr inbounds float, ptr %5, i64 %62
  store float %84, ptr %85, align 4, !tbaa !7
  %86 = add nuw nsw i64 %62, 1
  %87 = icmp eq i64 %86, %18
  br i1 %87, label %60, label %61, !llvm.loop !25

88:                                               ; preds = %88, %60
  %89 = phi i64 [ %105, %88 ], [ 1, %60 ]
  %90 = phi float [ %104, %88 ], [ 0.000000e+00, %60 ]
  %91 = getelementptr inbounds float, ptr %5, i64 %89
  %92 = load float, ptr %91, align 4, !tbaa !7
  %93 = getelementptr inbounds float, ptr %8, i64 %89
  %94 = load float, ptr %93, align 4, !tbaa !7
  %95 = fpext float %92 to double
  %96 = fsub double 1.000000e+00, %95
  %97 = fmul double %96, %95
  %98 = fsub float %94, %92
  %99 = fpext float %98 to double
  %100 = fmul double %97, %99
  %101 = fptrunc double %100 to float
  %102 = getelementptr inbounds float, ptr %7, i64 %89
  store float %101, ptr %102, align 4, !tbaa !7
  %103 = tail call float @llvm.fabs.f32(float %101)
  %104 = fadd float %90, %103
  %105 = add nuw nsw i64 %89, 1
  %106 = icmp eq i64 %105, %18
  br i1 %106, label %108, label %88, !llvm.loop !26

107:                                              ; preds = %60, %59
  store float 1.000000e+00, ptr %4, align 4, !tbaa !7
  br label %135

108:                                              ; preds = %88
  %.lcssa = phi float [ %104, %88 ]
  store float 1.000000e+00, ptr %4, align 4, !tbaa !7
  br i1 %23, label %135, label %109

109:                                              ; preds = %132, %108
  %110 = phi i64 [ %133, %132 ], [ 1, %108 ]
  br i1 %24, label %132, label %111

111:                                              ; preds = %109
  %112 = call double @_wyvern_slice_bpnn_train_kernel__905542942(ptr %7, i64 %110)
  %113 = getelementptr inbounds float, ptr %12, i64 %110
  %114 = getelementptr inbounds float, ptr %10, i64 %110
  br label %115

115:                                              ; preds = %115, %111
  %116 = phi i64 [ 0, %111 ], [ %130, %115 ]
  %117 = getelementptr inbounds float, ptr %4, i64 %116
  %118 = load float, ptr %117, align 4, !tbaa !7
  %119 = fpext float %118 to double
  %120 = mul nuw nsw i64 %116, %18
  %121 = getelementptr inbounds float, ptr %113, i64 %120
  %122 = load float, ptr %121, align 4, !tbaa !7
  %123 = fpext float %122 to double
  %124 = fmul double %123, 3.000000e-01
  %125 = tail call double @llvm.fmuladd.f64(double %112, double %119, double %124)
  %126 = fptrunc double %125 to float
  %127 = getelementptr inbounds float, ptr %114, i64 %120
  %128 = load float, ptr %127, align 4, !tbaa !7
  %129 = fadd float %128, %126
  store float %129, ptr %127, align 4, !tbaa !7
  store float %126, ptr %121, align 4, !tbaa !7
  %130 = add nuw nsw i64 %116, 1
  %131 = icmp eq i64 %130, %17
  br i1 %131, label %132, label %115, !llvm.loop !27

132:                                              ; preds = %115, %109
  %133 = add nuw nsw i64 %110, 1
  %134 = icmp eq i64 %133, %18
  br i1 %134, label %135, label %109, !llvm.loop !28

135:                                              ; preds = %132, %108, %107
  %136 = phi float [ 0.000000e+00, %107 ], [ %.lcssa, %108 ], [ %.lcssa, %132 ]
  store float 1.000000e+00, ptr %3, align 4, !tbaa !7
  br i1 %21, label %163, label %137

137:                                              ; preds = %160, %135
  %138 = phi i64 [ %161, %160 ], [ 1, %135 ]
  br i1 %22, label %160, label %139

139:                                              ; preds = %137
  %140 = call double @_wyvern_slice_bpnn_train_kernel__905542942(ptr %6, i64 %138)
  %141 = getelementptr inbounds float, ptr %11, i64 %138
  %142 = getelementptr inbounds float, ptr %9, i64 %138
  br label %143

143:                                              ; preds = %143, %139
  %144 = phi i64 [ 0, %139 ], [ %158, %143 ]
  %145 = getelementptr inbounds float, ptr %3, i64 %144
  %146 = load float, ptr %145, align 4, !tbaa !7
  %147 = fpext float %146 to double
  %148 = mul nuw nsw i64 %144, %17
  %149 = getelementptr inbounds float, ptr %141, i64 %148
  %150 = load float, ptr %149, align 4, !tbaa !7
  %151 = fpext float %150 to double
  %152 = fmul double %151, 3.000000e-01
  %153 = tail call double @llvm.fmuladd.f64(double %140, double %147, double %152)
  %154 = fptrunc double %153 to float
  %155 = getelementptr inbounds float, ptr %142, i64 %148
  %156 = load float, ptr %155, align 4, !tbaa !7
  %157 = fadd float %156, %154
  store float %157, ptr %155, align 4, !tbaa !7
  store float %154, ptr %149, align 4, !tbaa !7
  %158 = add nuw nsw i64 %144, 1
  %159 = icmp eq i64 %158, %27
  br i1 %159, label %160, label %143, !llvm.loop !29

160:                                              ; preds = %143, %137
  %161 = add nuw nsw i64 %138, 1
  %162 = icmp eq i64 %161, %17
  br i1 %162, label %163, label %137, !llvm.loop !30

163:                                              ; preds = %160, %135
  %164 = add nuw nsw i32 %31, 1
  %165 = icmp eq i32 %164, %13
  br i1 %165, label %28, label %30, !llvm.loop !31
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @exp(double noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #8

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define internal i32 @glibc_compat_rand() #9 {
  %1 = load i32, ptr @next, align 4, !tbaa !32
  %2 = icmp slt i32 %1, 3
  %3 = select i1 %2, i32 341, i32 -3
  %4 = add nsw i32 %3, %1
  %5 = icmp slt i32 %1, 31
  %6 = select i1 %5, i32 313, i32 -31
  %7 = add nsw i32 %6, %1
  %8 = sext i32 %4 to i64
  %9 = getelementptr inbounds [344 x i32], ptr @table, i64 0, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !32
  %11 = sext i32 %7 to i64
  %12 = getelementptr inbounds [344 x i32], ptr @table, i64 0, i64 %11
  %13 = load i32, ptr %12, align 4, !tbaa !32
  %14 = add i32 %13, %10
  %15 = sext i32 %1 to i64
  %16 = getelementptr inbounds [344 x i32], ptr @table, i64 0, i64 %15
  store i32 %14, ptr %16, align 4, !tbaa !32
  %17 = lshr i32 %14, 1
  %18 = add nsw i32 %1, 1
  %19 = icmp sgt i32 %1, 342
  %20 = select i1 %19, i32 0, i32 %18
  store i32 %20, ptr @next, align 4
  ret i32 %17
}

; Function Attrs: nofree nosync nounwind optsize memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define internal void @glibc_compat_srand(i32 noundef %0) #10 {
  %2 = tail call i32 @llvm.umax.i32(i32 %0, i32 1)
  store i32 %2, ptr @table, align 16, !tbaa !32
  br label %3

3:                                                ; preds = %3, %1
  %4 = phi i32 [ %2, %1 ], [ %9, %3 ]
  %5 = phi i64 [ 1, %1 ], [ %11, %3 ]
  %6 = zext i32 %4 to i64
  %7 = mul nuw nsw i64 %6, 16807
  %8 = urem i64 %7, 2147483647
  %9 = trunc i64 %8 to i32
  %10 = getelementptr inbounds [344 x i32], ptr @table, i64 0, i64 %5
  store i32 %9, ptr %10, align 4, !tbaa !32
  %11 = add nuw nsw i64 %5, 1
  %12 = icmp eq i64 %11, 31
  br i1 %12, label %13, label %3, !llvm.loop !34

13:                                               ; preds = %13, %3
  %14 = phi i64 [ %19, %13 ], [ 31, %3 ]
  %15 = add nsw i64 %14, -31
  %16 = getelementptr inbounds [344 x i32], ptr @table, i64 0, i64 %15
  %17 = load i32, ptr %16, align 4, !tbaa !32
  %18 = getelementptr inbounds [344 x i32], ptr @table, i64 0, i64 %14
  store i32 %17, ptr %18, align 4, !tbaa !32
  %19 = add nuw nsw i64 %14, 1
  %20 = icmp eq i64 %19, 34
  br i1 %20, label %22, label %13, !llvm.loop !35

21:                                               ; preds = %22
  store i32 0, ptr @next, align 4, !tbaa !32
  ret void

22:                                               ; preds = %22, %13
  %23 = phi i64 [ %32, %22 ], [ 34, %13 ]
  %24 = add nsw i64 %23, -31
  %25 = getelementptr inbounds [344 x i32], ptr @table, i64 0, i64 %24
  %26 = load i32, ptr %25, align 4, !tbaa !32
  %27 = add nsw i64 %23, -3
  %28 = getelementptr inbounds [344 x i32], ptr @table, i64 0, i64 %27
  %29 = load i32, ptr %28, align 4, !tbaa !32
  %30 = add i32 %29, %26
  %31 = getelementptr inbounds [344 x i32], ptr @table, i64 0, i64 %23
  store i32 %30, ptr %31, align 4, !tbaa !32
  %32 = add nuw nsw i64 %23, 1
  %33 = icmp eq i64 %32, 344
  br i1 %33, label %21, label %22, !llvm.loop !36
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: noinline nounwind optsize willreturn
define internal float @_wyvern_slice_main__332281330() #11 {
sliceclone_:
  %0 = tail call i32 @glibc_compat_rand() #12
  %1 = sitofp i32 %0 to float
  %2 = fmul float %1, 0x3E00000000000000
  ret float %2
}

; Function Attrs: noinline nounwind optsize willreturn
define internal double @_wyvern_slice_bpnn_train_kernel__905542942(ptr %0, i64 %1) #11 {
sliceclone_:
  %2 = getelementptr inbounds float, ptr %0, i64 %1
  %3 = load float, ptr %2, align 4, !tbaa !7
  %4 = fpext float %3 to double
  %5 = fmul double %4, 3.000000e-01
  ret double %5
}

attributes #0 = { nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { nofree nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind optsize memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { mustprogress nofree norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nosync nounwind optsize memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { noinline nounwind optsize willreturn "Daedalus"="1" }
attributes #12 = { nounwind optsize }
attributes #13 = { nounwind optsize allocsize(0) }
attributes #14 = { optsize }

!llvm.ident = !{!0, !0, !0}
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
!16 = !{!17, !17, i64 0}
!17 = !{!"any pointer", !9, i64 0}
!18 = distinct !{!18, !12}
!19 = distinct !{!19, !12}
!20 = distinct !{!20, !12}
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
!31 = distinct !{!31, !12}
!32 = !{!33, !33, i64 0}
!33 = !{!"int", !9, i64 0}
!34 = distinct !{!34, !12}
!35 = distinct !{!35, !12}
!36 = distinct !{!36, !12}
