; ModuleID = 'ffbench.e.bc.ll'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@main.nsize = internal unnamed_addr global [3 x i32] zeroinitializer, align 4
@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [28 x i8] c"Can't allocate data array.\0A\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"Wrong answer at (%d,%d)!  Expected %d, got %d.\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"%d passes.  No errors in results.\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"%d passes.  %d errors in results.\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define dso_local i32 @main() #0 {
  store i32 256, ptr getelementptr inbounds ([3 x i32], ptr @main.nsize, i64 0, i64 2), align 4, !tbaa !7
  store i32 256, ptr getelementptr inbounds ([3 x i32], ptr @main.nsize, i64 0, i64 1), align 4, !tbaa !7
  %1 = tail call dereferenceable_or_null(1048592) ptr @calloc(i64 1, i64 1048592)
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %6

3:                                                ; preds = %0
  %4 = load ptr, ptr @stderr, align 8, !tbaa !11
  %5 = tail call i64 @fwrite(ptr nonnull @.str, i64 27, i64 1, ptr %4) #8
  tail call void @exit(i32 noundef 1) #9
  unreachable

6:                                                ; preds = %24, %0
  %7 = phi i64 [ %25, %24 ], [ 0, %0 ]
  %8 = and i64 %7, 15
  %9 = icmp eq i64 %8, 8
  %10 = shl i64 %7, 9
  br label %11

11:                                               ; preds = %21, %6
  %12 = phi i64 [ 0, %6 ], [ %22, %21 ]
  %13 = and i64 %12, 15
  %14 = icmp eq i64 %13, 8
  %15 = or i1 %9, %14
  br i1 %15, label %16, label %21

16:                                               ; preds = %11
  %17 = shl nuw nsw i64 %12, 1
  %18 = add nuw nsw i64 %17, %10
  %19 = or i64 %18, 1
  %20 = getelementptr inbounds double, ptr %1, i64 %19
  store double 1.280000e+02, ptr %20, align 8, !tbaa !13
  br label %21

21:                                               ; preds = %16, %11
  %22 = add nuw nsw i64 %12, 1
  %23 = icmp eq i64 %22, 256
  br i1 %23, label %24, label %11, !llvm.loop !15

24:                                               ; preds = %21
  %25 = add nuw nsw i64 %7, 1
  %26 = icmp eq i64 %25, 256
  br i1 %26, label %27, label %6, !llvm.loop !17

27:                                               ; preds = %27, %24
  %28 = phi i32 [ %29, %27 ], [ 0, %24 ]
  tail call fastcc void @fourn(ptr noundef nonnull %1, i32 noundef 1) #10
  tail call fastcc void @fourn(ptr noundef nonnull %1, i32 noundef -1) #10
  %29 = add nuw nsw i32 %28, 1
  %30 = icmp eq i32 %29, 63
  br i1 %30, label %31, label %27, !llvm.loop !18

31:                                               ; preds = %31, %27
  %32 = phi i64 [ %41, %31 ], [ 1, %27 ]
  %33 = phi double [ %40, %31 ], [ -1.000000e+10, %27 ]
  %34 = phi double [ %38, %31 ], [ 1.000000e+10, %27 ]
  %35 = getelementptr inbounds double, ptr %1, i64 %32
  %36 = load double, ptr %35, align 8, !tbaa !13
  %37 = fcmp ole double %36, %34
  %38 = select i1 %37, double %36, double %34
  %39 = fcmp ogt double %36, %33
  %40 = select i1 %39, double %36, double %33
  %41 = add nuw nsw i64 %32, 2
  %42 = icmp ult i64 %32, 65535
  br i1 %42, label %31, label %43, !llvm.loop !19

43:                                               ; preds = %31
  %.lcssa2 = phi double [ %38, %31 ]
  %.lcssa1 = phi double [ %40, %31 ]
  %44 = fsub double %.lcssa1, %.lcssa2
  %45 = fdiv double 2.550000e+02, %44
  br label %46

46:                                               ; preds = %78, %43
  %47 = phi i64 [ 0, %43 ], [ %79, %78 ]
  %48 = phi i32 [ 0, %43 ], [ %.lcssa, %78 ]
  %49 = shl i64 %47, 9
  %50 = trunc i64 %47 to i32
  %51 = and i32 %50, 15
  %52 = icmp eq i32 %51, 8
  br label %53

53:                                               ; preds = %74, %46
  %54 = phi i64 [ 0, %46 ], [ %76, %74 ]
  %55 = phi i32 [ %48, %46 ], [ %75, %74 ]
  %56 = shl nuw nsw i64 %54, 1
  %57 = add nuw nsw i64 %56, %49
  %58 = or i64 %57, 1
  %59 = getelementptr inbounds double, ptr %1, i64 %58
  %60 = load double, ptr %59, align 8, !tbaa !13
  %61 = fsub double %60, %.lcssa2
  %62 = fmul double %45, %61
  %63 = fptosi double %62 to i32
  %64 = trunc i64 %54 to i32
  %65 = and i32 %64, 15
  %66 = icmp eq i32 %65, 8
  %67 = or i1 %52, %66
  %68 = select i1 %67, i32 255, i32 0
  %69 = icmp eq i32 %68, %63
  br i1 %69, label %74, label %70

70:                                               ; preds = %53
  %71 = add nsw i32 %55, 1
  %72 = load ptr, ptr @stderr, align 8, !tbaa !11
  %73 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %72, ptr noundef nonnull @.str.1, i32 noundef %50, i32 noundef %64, i32 noundef %68, i32 noundef %63) #11
  br label %74

74:                                               ; preds = %70, %53
  %75 = phi i32 [ %71, %70 ], [ %55, %53 ]
  %76 = add nuw nsw i64 %54, 1
  %77 = icmp eq i64 %76, 256
  br i1 %77, label %78, label %53, !llvm.loop !20

78:                                               ; preds = %74
  %.lcssa = phi i32 [ %75, %74 ]
  %79 = add nuw nsw i64 %47, 1
  %80 = icmp eq i64 %79, 256
  br i1 %80, label %81, label %46, !llvm.loop !21

81:                                               ; preds = %78
  %.lcssa.lcssa = phi i32 [ %.lcssa, %78 ]
  %82 = icmp eq i32 %.lcssa.lcssa, 0
  %83 = load ptr, ptr @stderr, align 8, !tbaa !11
  br i1 %82, label %84, label %86

84:                                               ; preds = %81
  %85 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %83, ptr noundef nonnull @.str.2, i32 noundef 63) #11
  br label %88

86:                                               ; preds = %81
  %87 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %83, ptr noundef nonnull @.str.3, i32 noundef 63, i32 noundef %.lcssa.lcssa) #11
  br label %88

88:                                               ; preds = %86, %84
  ret i32 0
}

; Function Attrs: nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind optsize memory(readwrite, inaccessiblemem: write) uwtable
define internal fastcc void @fourn(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #4 {
  %3 = load i32, ptr getelementptr inbounds ([3 x i32], ptr @main.nsize, i64 0, i64 1), align 4, !tbaa !7
  %4 = load i32, ptr getelementptr inbounds ([3 x i32], ptr @main.nsize, i64 0, i64 2), align 4, !tbaa !7
  %5 = mul nsw i32 %4, %3
  %6 = sitofp i32 %1 to double
  %7 = fmul double %6, 0x401921FB54442D1C
  br label %8

8:                                                ; preds = %153, %2
  %9 = phi i64 [ 2, %2 ], [ %154, %153 ]
  %10 = phi i32 [ 1, %2 ], [ %13, %153 ]
  %11 = getelementptr inbounds i32, ptr @main.nsize, i64 %9
  %12 = load i32, ptr %11, align 4, !tbaa !7
  %13 = mul nsw i32 %12, %10
  %14 = sdiv i32 %5, %13
  %15 = shl i32 %10, 1
  %16 = mul nsw i32 %12, %15
  %17 = mul nsw i32 %16, %14
  %18 = icmp slt i32 %16, 1
  br i1 %18, label %24, label %19

19:                                               ; preds = %8
  %20 = add i32 %15, -2
  %21 = sext i32 %15 to i64
  %22 = zext i32 %16 to i64
  %23 = sext i32 %17 to i64
  br label %29

24:                                               ; preds = %73, %8
  %25 = icmp slt i32 %15, %16
  br i1 %25, label %26, label %153

26:                                               ; preds = %24
  %27 = sext i32 %15 to i64
  %28 = sext i32 %17 to i64
  br label %80

29:                                               ; preds = %73, %19
  %30 = phi i64 [ 1, %19 ], [ %75, %73 ]
  %31 = phi i32 [ 1, %19 ], [ %74, %73 ]
  %32 = trunc i64 %30 to i32
  %33 = icmp sgt i32 %31, %32
  br i1 %33, label %34, label %65

34:                                               ; preds = %29
  %35 = add i32 %20, %32
  %36 = icmp slt i32 %35, %32
  br i1 %36, label %65, label %37

37:                                               ; preds = %34
  %38 = sub i32 %31, %32
  br label %39

39:                                               ; preds = %61, %37
  %40 = phi i64 [ %30, %37 ], [ %62, %61 ]
  %41 = trunc i64 %40 to i32
  %42 = icmp slt i32 %17, %41
  br i1 %42, label %61, label %43

43:                                               ; preds = %43, %39
  %44 = phi i64 [ %59, %43 ], [ %40, %39 ]
  %45 = trunc i64 %44 to i32
  %46 = add i32 %38, %45
  %47 = getelementptr inbounds double, ptr %0, i64 %44
  %48 = load double, ptr %47, align 8, !tbaa !13
  %49 = sext i32 %46 to i64
  %50 = getelementptr inbounds double, ptr %0, i64 %49
  %51 = load double, ptr %50, align 8, !tbaa !13
  store double %51, ptr %47, align 8, !tbaa !13
  store double %48, ptr %50, align 8, !tbaa !13
  %52 = add nsw i64 %44, 1
  %53 = getelementptr inbounds double, ptr %0, i64 %52
  %54 = load double, ptr %53, align 8, !tbaa !13
  %55 = add nsw i32 %46, 1
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds double, ptr %0, i64 %56
  %58 = load double, ptr %57, align 8, !tbaa !13
  store double %58, ptr %53, align 8, !tbaa !13
  store double %54, ptr %57, align 8, !tbaa !13
  %59 = add i64 %44, %22
  %60 = icmp sgt i64 %59, %23
  br i1 %60, label %61, label %43, !llvm.loop !22

61:                                               ; preds = %43, %39
  %62 = add nsw i64 %40, 2
  %63 = trunc i64 %62 to i32
  %64 = icmp slt i32 %35, %63
  br i1 %64, label %65, label %39, !llvm.loop !23

65:                                               ; preds = %29, %34, %61, %65
  %66 = phi i32 [ %68, %65 ], [ %16, %61 ], [ %16, %34 ], [ %16, %29 ]
  %67 = phi i32 [ %72, %65 ], [ %31, %61 ], [ %31, %34 ], [ %31, %29 ]
  %68 = ashr i32 %66, 1
  %69 = icmp sge i32 %68, %15
  %70 = icmp sgt i32 %67, %68
  %71 = select i1 %69, i1 %70, i1 false
  %72 = sub nsw i32 %67, %68
  br i1 %71, label %65, label %73, !llvm.loop !24

73:                                               ; preds = %65
  %.lcssa1 = phi i32 [ %67, %65 ]
  %.lcssa = phi i32 [ %68, %65 ]
  %74 = add nsw i32 %.lcssa1, %.lcssa
  %75 = add i64 %30, %21
  %76 = trunc i64 %75 to i32
  %77 = icmp slt i32 %16, %76
  br i1 %77, label %24, label %29, !llvm.loop !25

78:                                               ; preds = %146, %80
  %79 = icmp slt i32 %82, %16
  br i1 %79, label %80, label %153, !llvm.loop !26

80:                                               ; preds = %78, %26
  %81 = phi i32 [ %82, %78 ], [ %15, %26 ]
  %82 = shl i32 %81, 1
  %83 = sdiv i32 %82, %15
  %84 = sitofp i32 %83 to double
  %85 = fdiv double %7, %84
  %86 = fmul double %85, 5.000000e-01
  %87 = tail call double @sin(double noundef %86) #12
  %88 = tail call double @sin(double noundef %85) #12
  %89 = icmp slt i32 %81, 1
  br i1 %89, label %78, label %90

90:                                               ; preds = %80
  %91 = fmul double %87, -2.000000e+00
  %92 = fmul double %87, %91
  %93 = sext i32 %82 to i64
  %94 = zext i32 %81 to i64
  %95 = insertelement <2 x double> poison, double %92, i64 0
  %96 = shufflevector <2 x double> %95, <2 x double> poison, <2 x i32> zeroinitializer
  %97 = insertelement <2 x double> poison, double %88, i64 0
  %98 = shufflevector <2 x double> %97, <2 x double> poison, <2 x i32> zeroinitializer
  br label %99

99:                                               ; preds = %146, %90
  %100 = phi i64 [ 1, %90 ], [ %103, %146 ]
  %101 = phi <2 x double> [ <double 1.000000e+00, double 0.000000e+00>, %90 ], [ %151, %146 ]
  %102 = trunc i64 %100 to i32
  %103 = add i64 %100, %27
  %104 = trunc i64 %103 to i32
  %105 = add nsw i32 %104, -2
  %106 = icmp slt i32 %105, %102
  %107 = extractelement <2 x double> %101, i64 1
  %108 = fneg double %107
  br i1 %106, label %146, label %109

109:                                              ; preds = %99
  %110 = shufflevector <2 x double> %101, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %111 = insertelement <2 x double> %110, double %108, i64 1
  %112 = shufflevector <2 x double> %101, <2 x double> poison, <2 x i32> zeroinitializer
  br label %113

113:                                              ; preds = %142, %109
  %114 = phi i64 [ %143, %142 ], [ %100, %109 ]
  %115 = trunc i64 %114 to i32
  %116 = icmp slt i32 %17, %115
  br i1 %116, label %142, label %117

117:                                              ; preds = %117, %113
  %118 = phi i64 [ %140, %117 ], [ %114, %113 ]
  %119 = add nsw i64 %118, %94
  %120 = getelementptr inbounds double, ptr %0, i64 %119
  %121 = add nsw i64 %119, 1
  %122 = getelementptr inbounds double, ptr %0, i64 %121
  %123 = getelementptr inbounds double, ptr %0, i64 %118
  %124 = load double, ptr %123, align 8, !tbaa !13
  %125 = add nsw i64 %118, 1
  %126 = getelementptr inbounds double, ptr %0, i64 %125
  %127 = load <2 x double>, ptr %120, align 8, !tbaa !13
  %128 = fmul <2 x double> %127, %111
  %129 = shufflevector <2 x double> %128, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %130 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %112, <2 x double> %127, <2 x double> %129)
  %131 = extractelement <2 x double> %130, i64 0
  %132 = fsub double %124, %131
  store double %132, ptr %120, align 8, !tbaa !13
  %133 = load double, ptr %126, align 8, !tbaa !13
  %134 = extractelement <2 x double> %130, i64 1
  %135 = fsub double %133, %134
  store double %135, ptr %122, align 8, !tbaa !13
  %136 = load double, ptr %123, align 8, !tbaa !13
  %137 = insertelement <2 x double> poison, double %136, i64 0
  %138 = insertelement <2 x double> %137, double %133, i64 1
  %139 = fadd <2 x double> %130, %138
  store <2 x double> %139, ptr %123, align 8, !tbaa !13
  %140 = add i64 %118, %93
  %141 = icmp sgt i64 %140, %28
  br i1 %141, label %142, label %117, !llvm.loop !27

142:                                              ; preds = %117, %113
  %143 = add nsw i64 %114, 2
  %144 = trunc i64 %143 to i32
  %145 = icmp slt i32 %105, %144
  br i1 %145, label %146, label %113, !llvm.loop !28

146:                                              ; preds = %142, %99
  %147 = shufflevector <2 x double> %101, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %148 = insertelement <2 x double> %147, double %108, i64 0
  %149 = fmul <2 x double> %98, %148
  %150 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %101, <2 x double> %96, <2 x double> %149)
  %151 = fadd <2 x double> %101, %150
  %152 = icmp slt i32 %81, %104
  br i1 %152, label %78, label %99, !llvm.loop !29

153:                                              ; preds = %78, %24
  %154 = add nsw i64 %9, -1
  %155 = icmp ugt i64 %9, 1
  br i1 %155, label %8, label %156, !llvm.loop !30

156:                                              ; preds = %153
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @sin(double noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #7

attributes #0 = { nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" }
attributes #2 = { nofree nounwind }
attributes #3 = { noreturn nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind optsize memory(readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { cold }
attributes #9 = { noreturn nounwind optsize }
attributes #10 = { optsize }
attributes #11 = { cold optsize }
attributes #12 = { nounwind optsize }

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
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!12, !12, i64 0}
!12 = !{!"any pointer", !9, i64 0}
!13 = !{!14, !14, i64 0}
!14 = !{!"double", !9, i64 0}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.mustprogress"}
!17 = distinct !{!17, !16}
!18 = distinct !{!18, !16}
!19 = distinct !{!19, !16}
!20 = distinct !{!20, !16}
!21 = distinct !{!21, !16}
!22 = distinct !{!22, !16}
!23 = distinct !{!23, !16}
!24 = distinct !{!24, !16}
!25 = distinct !{!25, !16}
!26 = distinct !{!26, !16}
!27 = distinct !{!27, !16}
!28 = distinct !{!28, !16}
!29 = distinct !{!29, !16}
!30 = distinct !{!30, !16}
