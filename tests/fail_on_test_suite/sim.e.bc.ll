; ModuleID = '/src/llvm-test-suite/build/MultiSource/Benchmarks/sim/sim.e.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rusage = type { %struct.timeval, %struct.timeval, %union.anon, %union.anon, %union.anon, %union.anon, %union.anon, %union.anon, %union.anon, %union.anon, %union.anon, %union.anon, %union.anon, %union.anon, %union.anon, %union.anon }
%struct.timeval = type { i64, i64 }
%union.anon = type { i64 }
%struct.ONE = type { i32, ptr }
%struct.NODE = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"Output/sim.res\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"a+\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"8\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"tob.38-44\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"liv.42-48\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"specified 0 alignments\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@name1 = internal unnamed_addr global ptr null, align 8
@name2 = internal unnamed_addr global ptr null, align 8
@.str.9 = private unnamed_addr constant [30 x i8] c"argument %d has improper form\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c"options are M, I, V, O and E.\00", align 1
@.str.12 = private unnamed_addr constant [44 x i8] c"\09\09M = %g, I = %g, V = %g\0A\09\09O = %g, E = %g\0A\0A\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"  Run Line: %s %s %s\0A\00", align 1
@.str.15 = private unnamed_addr constant [57 x i8] c"#######################################################\0A\00", align 1
@low = internal global ptr null, align 8
@most = internal global ptr null, align 8
@CC = internal unnamed_addr global ptr null, align 8
@DD = internal unnamed_addr global ptr null, align 8
@RR = internal unnamed_addr global ptr null, align 8
@SS = internal unnamed_addr global ptr null, align 8
@EE = internal unnamed_addr global ptr null, align 8
@FF = internal unnamed_addr global ptr null, align 8
@HH = internal unnamed_addr global ptr null, align 8
@WW = internal unnamed_addr global ptr null, align 8
@II = internal unnamed_addr global ptr null, align 8
@JJ = internal unnamed_addr global ptr null, align 8
@XX = internal unnamed_addr global ptr null, align 8
@YY = internal unnamed_addr global ptr null, align 8
@row = internal global ptr null, align 8
@z = internal global ptr null, align 8
@v = internal unnamed_addr global ptr null, align 8
@q = internal unnamed_addr global i32 0, align 4
@r = internal unnamed_addr global i32 0, align 4
@qr = internal unnamed_addr global i32 0, align 4
@LIST = internal global ptr null, align 8
@.str.16 = private unnamed_addr constant [38 x i8] c"                 Upper Sequence : %s\0A\00", align 1
@.str.17 = private unnamed_addr constant [38 x i8] c"                         Length : %d\0A\00", align 1
@.str.18 = private unnamed_addr constant [38 x i8] c"                 Lower Sequence : %s\0A\00", align 1
@min = internal unnamed_addr global i32 0, align 4
@numnode = internal unnamed_addr global i32 0, align 4
@.str.19 = private unnamed_addr constant [47 x i8] c"The number of alignments computed is too large\00", align 1
@m1 = internal unnamed_addr global i32 0, align 4
@mm = internal unnamed_addr global i32 0, align 4
@n1 = internal unnamed_addr global i32 0, align 4
@nn = internal unnamed_addr global i32 0, align 4
@rl = internal unnamed_addr global i32 0, align 4
@cl = internal unnamed_addr global i32 0, align 4
@I = internal unnamed_addr global i32 0, align 4
@J = internal unnamed_addr global i32 0, align 4
@sapp = internal unnamed_addr global ptr null, align 8
@last = internal unnamed_addr global i32 0, align 4
@al_len = internal unnamed_addr global i32 0, align 4
@no_mat = internal unnamed_addr global i32 0, align 4
@no_mis = internal unnamed_addr global i32 0, align 4
@.str.21 = private unnamed_addr constant [33 x i8] c"      Number %d Local Alignment\0A\00", align 1
@.str.22 = private unnamed_addr constant [29 x i8] c"      Similarity Score : %g\0A\00", align 1
@.str.23 = private unnamed_addr constant [31 x i8] c"      Match Percentage : %d%%\0A\00", align 1
@.str.24 = private unnamed_addr constant [30 x i8] c"      Number of Matches : %d\0A\00", align 1
@.str.25 = private unnamed_addr constant [33 x i8] c"      Number of Mismatches : %d\0A\00", align 1
@.str.26 = private unnamed_addr constant [33 x i8] c"      Total Length of Gaps : %d\0A\00", align 1
@.str.27 = private unnamed_addr constant [47 x i8] c"      Begins at (%d, %d) and Ends at (%d, %d)\0A\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@flag = internal unnamed_addr global i1 false, align 2
@ALINE = internal global [51 x i8] zeroinitializer, align 16
@BLINE = internal global [51 x i8] zeroinitializer, align 16
@CLINE = internal global [51 x i8] zeroinitializer, align 16
@.str.28 = private unnamed_addr constant [6 x i8] c"\0A%5d \00", align 1
@.str.29 = private unnamed_addr constant [11 x i8] c"    .    :\00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"    .\00", align 1
@.str.31 = private unnamed_addr constant [25 x i8] c"\0A%5d %s\0A      %s\0A%5d %s\0A\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.32 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.33 = private unnamed_addr constant [16 x i8] c"Cannot open %s.\00", align 1
@rusage = internal global %struct.rusage zeroinitializer, align 8
@str = private unnamed_addr constant [30 x i8] c"\09\09SIM output with parameters:\00", align 1
@str.34 = private unnamed_addr constant [29 x i8] c"Can not open Output/sim.res\0A\00", align 1
@str.35 = private unnamed_addr constant [59 x i8] c"\0A*********************************************************\00", align 1

; Function Attrs: noreturn nounwind optsize uwtable
define dso_local i32 @main(i32 noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca [256 x [256 x i32]], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(i64 262144, ptr nonnull %4) #16
  %5 = tail call noalias ptr @fopen(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #17
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  %8 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.34)
  tail call void @exit(i32 noundef 1) #18
  unreachable

9:                                                ; preds = %2
  %10 = tail call i32 @getrusage(i32 noundef 0, ptr noundef nonnull @rusage) #19
  %11 = icmp slt i32 %0, 4
  br i1 %11, label %19, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds ptr, ptr %1, i64 1
  %14 = load ptr, ptr %13, align 8, !tbaa !7
  %15 = getelementptr inbounds ptr, ptr %1, i64 2
  %16 = load ptr, ptr %15, align 8, !tbaa !7
  %17 = getelementptr inbounds ptr, ptr %1, i64 3
  %18 = load ptr, ptr %17, align 8, !tbaa !7
  br label %19

19:                                               ; preds = %12, %9
  %20 = phi ptr [ %14, %12 ], [ @.str.3, %9 ]
  %21 = phi ptr [ %16, %12 ], [ @.str.4, %9 ]
  %22 = phi ptr [ %18, %12 ], [ @.str.5, %9 ]
  %23 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %20, ptr noundef nonnull @.str.6, ptr noundef nonnull %3) #19
  %24 = load i32, ptr %3, align 4, !tbaa !11
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %19
  %27 = load ptr, ptr @stderr, align 8, !tbaa !7
  %28 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %27, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.7) #20
  call void @exit(i32 noundef 1) #18
  unreachable

29:                                               ; preds = %19
  %30 = call ptr @ckopen(ptr noundef %21, ptr noundef nonnull @.str.8) #17
  br label %31

31:                                               ; preds = %35, %29
  %32 = phi i32 [ %36, %35 ], [ 0, %29 ]
  br label %33

33:                                               ; preds = %33, %31
  %34 = call i32 @getc(ptr noundef %30) #17
  switch i32 %34, label %35 [
    i32 -1, label %37
    i32 10, label %33
  ], !llvm.loop !13

35:                                               ; preds = %33
  %36 = add nuw nsw i32 %32, 1
  br label %31, !llvm.loop !13

37:                                               ; preds = %33
  %.lcssa7 = phi i32 [ %32, %33 ]
  %38 = call i32 @fclose(ptr noundef %30) #17
  store ptr %21, ptr @name1, align 8, !tbaa !7
  %39 = add nuw nsw i32 %.lcssa7, 1
  %40 = zext i32 %39 to i64
  %41 = call noalias ptr @malloc(i64 noundef %40) #21
  %42 = call ptr @ckopen(ptr noundef %21, ptr noundef nonnull @.str.8) #17
  br label %43

43:                                               ; preds = %47, %37
  %44 = phi i32 [ %49, %47 ], [ 0, %37 ]
  br label %45

45:                                               ; preds = %45, %43
  %46 = call i32 @getc(ptr noundef %42) #17
  switch i32 %46, label %47 [
    i32 -1, label %52
    i32 10, label %45
  ], !llvm.loop !15

47:                                               ; preds = %45
  %.lcssa4 = phi i32 [ %46, %45 ]
  %48 = trunc i32 %.lcssa4 to i8
  %49 = add nuw nsw i32 %44, 1
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds i8, ptr %41, i64 %50
  store i8 %48, ptr %51, align 1, !tbaa !16
  br label %43, !llvm.loop !15

52:                                               ; preds = %45
  %.lcssa6 = phi i32 [ %44, %45 ]
  %53 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %21, ptr noundef nonnull dereferenceable(1) %22) #22
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %78, label %55

55:                                               ; preds = %52
  %56 = call ptr @ckopen(ptr noundef %22, ptr noundef nonnull @.str.8) #17
  br label %57

57:                                               ; preds = %61, %55
  %58 = phi i32 [ %62, %61 ], [ 0, %55 ]
  br label %59

59:                                               ; preds = %59, %57
  %60 = call i32 @getc(ptr noundef %56) #17
  switch i32 %60, label %61 [
    i32 -1, label %63
    i32 10, label %59
  ], !llvm.loop !17

61:                                               ; preds = %59
  %62 = add nuw nsw i32 %58, 1
  br label %57, !llvm.loop !17

63:                                               ; preds = %59
  %.lcssa3 = phi i32 [ %58, %59 ]
  %64 = call i32 @fclose(ptr noundef %56) #17
  store ptr %22, ptr @name2, align 8, !tbaa !7
  %65 = add nuw nsw i32 %.lcssa3, 1
  %66 = zext i32 %65 to i64
  %67 = call noalias ptr @malloc(i64 noundef %66) #21
  %68 = call ptr @ckopen(ptr noundef %22, ptr noundef nonnull @.str.8) #17
  br label %69

69:                                               ; preds = %73, %63
  %70 = phi i32 [ %75, %73 ], [ 0, %63 ]
  br label %71

71:                                               ; preds = %71, %69
  %72 = call i32 @getc(ptr noundef %68) #17
  switch i32 %72, label %73 [
    i32 -1, label %78
    i32 10, label %71
  ], !llvm.loop !18

73:                                               ; preds = %71
  %.lcssa2 = phi i32 [ %72, %71 ]
  %74 = trunc i32 %.lcssa2 to i8
  %75 = add nuw nsw i32 %70, 1
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds i8, ptr %67, i64 %76
  store i8 %74, ptr %77, align 1, !tbaa !16
  br label %69, !llvm.loop !18

78:                                               ; preds = %71, %52
  %79 = phi ptr [ undef, %52 ], [ %67, %71 ]
  %80 = phi i32 [ undef, %52 ], [ %70, %71 ]
  %81 = icmp sgt i32 %0, 4
  br i1 %81, label %82, label %120

82:                                               ; preds = %78
  %83 = zext i32 %0 to i64
  br label %84

84:                                               ; preds = %113, %82
  %85 = phi i64 [ %83, %82 ], [ %91, %113 ]
  %86 = phi double [ 2.000000e-01, %82 ], [ %118, %113 ]
  %87 = phi double [ 6.000000e+00, %82 ], [ %117, %113 ]
  %88 = phi double [ -1.000000e+00, %82 ], [ %116, %113 ]
  %89 = phi double [ -1.000000e+00, %82 ], [ %115, %113 ]
  %90 = phi double [ 1.000000e+00, %82 ], [ %114, %113 ]
  %91 = add nsw i64 %85, -1
  %92 = and i64 %91, 4294967295
  %93 = getelementptr inbounds ptr, ptr %1, i64 %92
  %94 = load ptr, ptr %93, align 8, !tbaa !7
  %95 = getelementptr inbounds i8, ptr %94, i64 1
  %96 = load i8, ptr %95, align 1, !tbaa !16
  %97 = icmp eq i8 %96, 61
  br i1 %97, label %101, label %98

98:                                               ; preds = %84
  %.lcssa = phi i64 [ %91, %84 ]
  %99 = trunc i64 %.lcssa to i32
  %100 = call i32 (ptr, i32, ...) @fatalf(ptr noundef nonnull @.str.9, i32 noundef %99) #17
  unreachable

101:                                              ; preds = %84
  %102 = getelementptr inbounds i8, ptr %94, i64 2
  %103 = call double @atof(ptr noundef nonnull %102) #22
  %104 = load i8, ptr %94, align 1, !tbaa !16
  %105 = sext i8 %104 to i32
  switch i32 %105, label %110 [
    i32 77, label %113
    i32 73, label %106
    i32 86, label %107
    i32 79, label %108
    i32 69, label %109
  ]

106:                                              ; preds = %101
  br label %113

107:                                              ; preds = %101
  br label %113

108:                                              ; preds = %101
  br label %113

109:                                              ; preds = %101
  br label %113

110:                                              ; preds = %101
  %111 = load ptr, ptr @stderr, align 8, !tbaa !7
  %112 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %111, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.10) #20
  call void @exit(i32 noundef 1) #18
  unreachable

113:                                              ; preds = %109, %108, %107, %106, %101
  %114 = phi double [ %90, %109 ], [ %90, %108 ], [ %90, %107 ], [ %90, %106 ], [ %103, %101 ]
  %115 = phi double [ %89, %109 ], [ %89, %108 ], [ %89, %107 ], [ %103, %106 ], [ %89, %101 ]
  %116 = phi double [ %88, %109 ], [ %88, %108 ], [ %103, %107 ], [ %88, %106 ], [ %88, %101 ]
  %117 = phi double [ %87, %109 ], [ %103, %108 ], [ %87, %107 ], [ %87, %106 ], [ %87, %101 ]
  %118 = phi double [ %103, %109 ], [ %86, %108 ], [ %86, %107 ], [ %86, %106 ], [ %86, %101 ]
  %119 = icmp ugt i64 %85, 5
  br i1 %119, label %84, label %120, !llvm.loop !19

120:                                              ; preds = %113, %78
  %121 = phi double [ 1.000000e+00, %78 ], [ %114, %113 ]
  %122 = phi double [ -1.000000e+00, %78 ], [ %115, %113 ]
  %123 = phi double [ -1.000000e+00, %78 ], [ %116, %113 ]
  %124 = phi double [ 6.000000e+00, %78 ], [ %117, %113 ]
  %125 = phi double [ 2.000000e-01, %78 ], [ %118, %113 ]
  %126 = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %127 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, double noundef %121, double noundef %122, double noundef %123, double noundef %124, double noundef %125) #17
  %128 = fmul double %121, 1.000000e+01
  %129 = fcmp ogt double %128, 0.000000e+00
  %130 = call double @llvm.fmuladd.f64(double %121, double 1.000000e+01, double 5.000000e-01)
  %131 = call double @llvm.fmuladd.f64(double %121, double 1.000000e+01, double -5.000000e-01)
  %132 = select i1 %129, double %130, double %131
  %133 = fptosi double %132 to i32
  %134 = getelementptr inbounds [256 x [256 x i32]], ptr %4, i64 0, i64 84, i64 84
  store i32 %133, ptr %134, align 16, !tbaa !11
  %135 = getelementptr inbounds [256 x [256 x i32]], ptr %4, i64 0, i64 71, i64 71
  store i32 %133, ptr %135, align 4, !tbaa !11
  %136 = getelementptr inbounds [256 x [256 x i32]], ptr %4, i64 0, i64 67, i64 67
  store i32 %133, ptr %136, align 4, !tbaa !11
  %137 = getelementptr inbounds [256 x [256 x i32]], ptr %4, i64 0, i64 65, i64 65
  store i32 %133, ptr %137, align 4, !tbaa !11
  %138 = fmul double %122, 1.000000e+01
  %139 = fcmp ogt double %138, 0.000000e+00
  %140 = call double @llvm.fmuladd.f64(double %122, double 1.000000e+01, double 5.000000e-01)
  %141 = call double @llvm.fmuladd.f64(double %122, double 1.000000e+01, double -5.000000e-01)
  %142 = select i1 %139, double %140, double %141
  %143 = fptosi double %142 to i32
  %144 = getelementptr inbounds [256 x [256 x i32]], ptr %4, i64 0, i64 84, i64 67
  store i32 %143, ptr %144, align 4, !tbaa !11
  %145 = getelementptr inbounds [256 x [256 x i32]], ptr %4, i64 0, i64 67, i64 84
  store i32 %143, ptr %145, align 16, !tbaa !11
  %146 = getelementptr inbounds [256 x [256 x i32]], ptr %4, i64 0, i64 71, i64 65
  store i32 %143, ptr %146, align 4, !tbaa !11
  %147 = getelementptr inbounds [256 x [256 x i32]], ptr %4, i64 0, i64 65, i64 71
  store i32 %143, ptr %147, align 4, !tbaa !11
  %148 = fmul double %123, 1.000000e+01
  %149 = fcmp ogt double %148, 0.000000e+00
  %150 = call double @llvm.fmuladd.f64(double %123, double 1.000000e+01, double 5.000000e-01)
  %151 = call double @llvm.fmuladd.f64(double %123, double 1.000000e+01, double -5.000000e-01)
  %152 = select i1 %149, double %150, double %151
  %153 = fptosi double %152 to i32
  %154 = getelementptr inbounds [256 x [256 x i32]], ptr %4, i64 0, i64 84, i64 71
  store i32 %153, ptr %154, align 4, !tbaa !11
  %155 = getelementptr inbounds [256 x [256 x i32]], ptr %4, i64 0, i64 84, i64 65
  store i32 %153, ptr %155, align 4, !tbaa !11
  %156 = getelementptr inbounds [256 x [256 x i32]], ptr %4, i64 0, i64 71, i64 84
  store i32 %153, ptr %156, align 16, !tbaa !11
  %157 = getelementptr inbounds [256 x [256 x i32]], ptr %4, i64 0, i64 71, i64 67
  store i32 %153, ptr %157, align 4, !tbaa !11
  %158 = getelementptr inbounds [256 x [256 x i32]], ptr %4, i64 0, i64 67, i64 71
  store i32 %153, ptr %158, align 4, !tbaa !11
  %159 = getelementptr inbounds [256 x [256 x i32]], ptr %4, i64 0, i64 67, i64 65
  store i32 %153, ptr %159, align 4, !tbaa !11
  %160 = getelementptr inbounds [256 x [256 x i32]], ptr %4, i64 0, i64 65, i64 84
  store i32 %153, ptr %160, align 16, !tbaa !11
  %161 = getelementptr inbounds [256 x [256 x i32]], ptr %4, i64 0, i64 65, i64 67
  store i32 %153, ptr %161, align 4, !tbaa !11
  %162 = fmul double %124, 1.000000e+01
  %163 = fcmp ogt double %162, 0.000000e+00
  %164 = call double @llvm.fmuladd.f64(double %124, double 1.000000e+01, double 5.000000e-01)
  %165 = call double @llvm.fmuladd.f64(double %124, double 1.000000e+01, double -5.000000e-01)
  %166 = select i1 %163, double %164, double %165
  %167 = fptosi double %166 to i32
  %168 = fmul double %125, 1.000000e+01
  %169 = fcmp ogt double %168, 0.000000e+00
  %170 = call double @llvm.fmuladd.f64(double %125, double 1.000000e+01, double 5.000000e-01)
  %171 = call double @llvm.fmuladd.f64(double %125, double 1.000000e+01, double -5.000000e-01)
  %172 = select i1 %169, double %170, double %171
  %173 = fptosi double %172 to i32
  %174 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %21, ptr noundef nonnull dereferenceable(1) %22) #22
  %175 = icmp eq i32 %174, 0
  %176 = load i32, ptr %3, align 4, !tbaa !11
  %177 = select i1 %175, i64 1, i64 2
  %178 = select i1 %175, i32 %.lcssa6, i32 %80
  %179 = select i1 %175, ptr %41, ptr %79
  %180 = call i32 (ptr, ptr, i32, i32, i32, ptr, i32, i32, i64, ...) @SIM(ptr noundef %41, ptr noundef %179, i32 noundef %.lcssa6, i32 noundef %178, i32 noundef %176, ptr noundef nonnull %4, i32 noundef %167, i32 noundef %173, i64 noundef %177) #17
  %181 = call double @dtime() #17
  %182 = call i32 @fputc(i32 10, ptr nonnull %5)
  %183 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %5, ptr noundef nonnull @.str.14, ptr noundef %20, ptr noundef %21, ptr noundef %22) #17
  %184 = call i64 @fwrite(ptr nonnull @.str.15, i64 56, i64 1, ptr nonnull %5)
  %185 = call i32 @fclose(ptr noundef nonnull %5) #17
  call void @exit(i32 noundef 0) #18
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind optsize
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #3

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind optsize
declare i32 @getrusage(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind optsize
declare noundef i32 @__isoc99_sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: nounwind optsize uwtable
define internal noalias ptr @ckopen(ptr noundef %0, ptr nocapture noundef readonly %1) #6 {
  %3 = tail call noalias ptr @fopen(ptr noundef %0, ptr noundef %1) #17
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  %6 = tail call i32 @fatalf(ptr noundef nonnull @.str.33, ptr noundef %0) #17
  unreachable

7:                                                ; preds = %2
  ret ptr %3
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: noreturn nounwind optsize uwtable
define internal i32 @fatalf(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = load ptr, ptr @stderr, align 8, !tbaa !7
  %4 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1) #20
  %5 = load ptr, ptr @stderr, align 8, !tbaa !7
  %6 = tail call i32 @putc(i32 noundef 10, ptr noundef %5) #17
  tail call void @exit(i32 noundef 1) #18
  unreachable
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(read)
declare double @atof(ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #10

; Function Attrs: nounwind optsize uwtable
define internal i32 @SIM(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) #6 {
  %10 = shl i32 %3, 2
  %11 = add i32 %10, 4
  %12 = sext i32 %11 to i64
  %13 = tail call noalias ptr @malloc(i64 noundef %12) #21
  store ptr %13, ptr @CC, align 8, !tbaa !7
  %14 = tail call noalias ptr @malloc(i64 noundef %12) #21
  store ptr %14, ptr @DD, align 8, !tbaa !7
  %15 = tail call noalias ptr @malloc(i64 noundef %12) #21
  store ptr %15, ptr @RR, align 8, !tbaa !7
  %16 = tail call noalias ptr @malloc(i64 noundef %12) #21
  store ptr %16, ptr @SS, align 8, !tbaa !7
  %17 = tail call noalias ptr @malloc(i64 noundef %12) #21
  store ptr %17, ptr @EE, align 8, !tbaa !7
  %18 = tail call noalias ptr @malloc(i64 noundef %12) #21
  store ptr %18, ptr @FF, align 8, !tbaa !7
  %19 = add i32 %2, 1
  %20 = sext i32 %19 to i64
  %21 = shl i32 %19, 2
  %22 = sext i32 %21 to i64
  %23 = tail call noalias ptr @malloc(i64 noundef %22) #21
  store ptr %23, ptr @HH, align 8, !tbaa !7
  %24 = tail call noalias ptr @malloc(i64 noundef %22) #21
  store ptr %24, ptr @WW, align 8, !tbaa !7
  %25 = tail call noalias ptr @malloc(i64 noundef %22) #21
  store ptr %25, ptr @II, align 8, !tbaa !7
  %26 = tail call noalias ptr @malloc(i64 noundef %22) #21
  store ptr %26, ptr @JJ, align 8, !tbaa !7
  %27 = tail call noalias ptr @malloc(i64 noundef %22) #21
  store ptr %27, ptr @XX, align 8, !tbaa !7
  %28 = tail call noalias ptr @malloc(i64 noundef %22) #21
  store ptr %28, ptr @YY, align 8, !tbaa !7
  %29 = add nsw i32 %11, %21
  %30 = sext i32 %29 to i64
  %31 = tail call noalias ptr @malloc(i64 noundef %30) #21
  %32 = shl nsw i64 %20, 3
  %33 = tail call noalias ptr @malloc(i64 noundef %32) #21
  store ptr %33, ptr @row, align 8, !tbaa !7
  %34 = icmp slt i32 %2, 1
  br i1 %34, label %54, label %35

35:                                               ; preds = %9
  %36 = icmp eq i32 %8, 2
  %37 = zext i32 %19 to i64
  br label %38

38:                                               ; preds = %50, %35
  %39 = phi i64 [ 1, %35 ], [ %52, %50 ]
  br i1 %36, label %40, label %43

40:                                               ; preds = %38
  %41 = load ptr, ptr @row, align 8, !tbaa !7
  %42 = getelementptr inbounds ptr, ptr %41, i64 %39
  br label %50

43:                                               ; preds = %38
  %44 = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #21
  store ptr %44, ptr @z, align 8, !tbaa !7
  %45 = load ptr, ptr @row, align 8, !tbaa !7
  %46 = getelementptr inbounds ptr, ptr %45, i64 %39
  store ptr %44, ptr %46, align 8, !tbaa !7
  %47 = load ptr, ptr @z, align 8, !tbaa !7
  %48 = trunc i64 %39 to i32
  store i32 %48, ptr %47, align 8, !tbaa !20
  %49 = getelementptr inbounds %struct.ONE, ptr %47, i64 0, i32 1
  br label %50

50:                                               ; preds = %43, %40
  %51 = phi ptr [ %42, %40 ], [ %49, %43 ]
  store ptr null, ptr %51, align 8, !tbaa !7
  %52 = add nuw nsw i64 %39, 1
  %53 = icmp eq i64 %52, %37
  br i1 %53, label %54, label %38, !llvm.loop !22

54:                                               ; preds = %50, %9
  store ptr %5, ptr @v, align 8, !tbaa !7
  store i32 %6, ptr @q, align 4, !tbaa !11
  store i32 %7, ptr @r, align 4, !tbaa !11
  %55 = add nsw i32 %7, %6
  store i32 %55, ptr @qr, align 4, !tbaa !11
  %56 = sext i32 %4 to i64
  %57 = shl nsw i64 %56, 3
  %58 = tail call noalias ptr @malloc(i64 noundef %57) #21
  store ptr %58, ptr @LIST, align 8, !tbaa !7
  %59 = icmp sgt i32 %4, 0
  br i1 %59, label %60, label %69

60:                                               ; preds = %54
  %61 = zext i32 %4 to i64
  br label %62

62:                                               ; preds = %62, %60
  %63 = phi i64 [ 0, %60 ], [ %67, %62 ]
  %64 = tail call noalias dereferenceable_or_null(36) ptr @malloc(i64 noundef 36) #21
  %65 = load ptr, ptr @LIST, align 8, !tbaa !7
  %66 = getelementptr inbounds ptr, ptr %65, i64 %63
  store ptr %64, ptr %66, align 8, !tbaa !7
  %67 = add nuw nsw i64 %63, 1
  %68 = icmp eq i64 %67, %61
  br i1 %68, label %69, label %62, !llvm.loop !23

69:                                               ; preds = %62, %54
  %70 = load ptr, ptr @name1, align 8, !tbaa !7
  %71 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %70, i32 noundef 47) #22
  %72 = icmp eq ptr %71, null
  %73 = getelementptr inbounds i8, ptr %71, i64 1
  %74 = select i1 %72, ptr %70, ptr %73
  %75 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, ptr noundef %74) #17
  %76 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, i32 noundef %2) #17
  %77 = load ptr, ptr @name2, align 8, !tbaa !7
  %78 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %77, i32 noundef 47) #22
  %79 = icmp eq ptr %78, null
  %80 = getelementptr inbounds i8, ptr %78, i64 1
  %81 = select i1 %79, ptr %77, ptr %80
  %82 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.18, ptr noundef %81) #17
  %83 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, i32 noundef %3) #17
  store i32 0, ptr @min, align 4, !tbaa !11
  store i32 0, ptr @numnode, align 4, !tbaa !11
  %84 = tail call i32 @big_pass(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %8) #17
  %85 = getelementptr i8, ptr %0, i64 -1
  %86 = getelementptr i8, ptr %1, i64 -1
  br i1 %59, label %87, label %162

87:                                               ; preds = %69
  %88 = load i32, ptr @numnode, align 4, !tbaa !11
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %159, %87
  %91 = load ptr, ptr @stderr, align 8, !tbaa !7
  %92 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %91, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.19) #20
  tail call void @exit(i32 noundef 1) #18
  unreachable

93:                                               ; preds = %159, %87
  %94 = phi i32 [ %95, %159 ], [ %4, %87 ]
  %95 = add nsw i32 %94, -1
  %96 = tail call ptr @findmax() #17
  %97 = load i32, ptr %96, align 4, !tbaa !24
  %98 = getelementptr inbounds %struct.NODE, ptr %96, i64 0, i32 1
  %99 = load i32, ptr %98, align 4, !tbaa !26
  %100 = add nsw i32 %99, 1
  store i32 %100, ptr %98, align 4, !tbaa !26
  %101 = getelementptr inbounds %struct.NODE, ptr %96, i64 0, i32 2
  %102 = load i32, ptr %101, align 4, !tbaa !27
  %103 = add nsw i32 %102, 1
  store i32 %103, ptr %101, align 4, !tbaa !27
  %104 = getelementptr inbounds %struct.NODE, ptr %96, i64 0, i32 3
  %105 = load i32, ptr %104, align 4, !tbaa !28
  %106 = getelementptr inbounds %struct.NODE, ptr %96, i64 0, i32 4
  %107 = load i32, ptr %106, align 4, !tbaa !29
  %108 = getelementptr inbounds %struct.NODE, ptr %96, i64 0, i32 5
  %109 = load i32, ptr %108, align 4, !tbaa !30
  store i32 %109, ptr @m1, align 4, !tbaa !11
  %110 = getelementptr inbounds %struct.NODE, ptr %96, i64 0, i32 6
  %111 = load i32, ptr %110, align 4, !tbaa !31
  store i32 %111, ptr @mm, align 4, !tbaa !11
  %112 = getelementptr inbounds %struct.NODE, ptr %96, i64 0, i32 7
  %113 = load i32, ptr %112, align 4, !tbaa !32
  store i32 %113, ptr @n1, align 4, !tbaa !11
  %114 = getelementptr inbounds %struct.NODE, ptr %96, i64 0, i32 8
  %115 = load i32, ptr %114, align 4, !tbaa !33
  store i32 %115, ptr @nn, align 4, !tbaa !11
  %116 = sub nsw i32 %105, %100
  %117 = add nsw i32 %116, 1
  store i32 %117, ptr @rl, align 4, !tbaa !11
  %118 = sub nsw i32 %107, %103
  %119 = add nsw i32 %118, 1
  store i32 %119, ptr @cl, align 4, !tbaa !11
  store i32 %99, ptr @I, align 4, !tbaa !11
  store i32 %102, ptr @J, align 4, !tbaa !11
  store ptr %31, ptr @sapp, align 8, !tbaa !7
  store i32 0, ptr @last, align 4, !tbaa !11
  store i32 0, ptr @al_len, align 4, !tbaa !11
  store i32 0, ptr @no_mat, align 4, !tbaa !11
  store i32 0, ptr @no_mis, align 4, !tbaa !11
  %120 = sext i32 %100 to i64
  %121 = getelementptr i8, ptr %85, i64 %120
  %122 = sext i32 %103 to i64
  %123 = getelementptr i8, ptr %86, i64 %122
  %124 = load i32, ptr @q, align 4, !tbaa !11
  %125 = tail call i32 @diff(ptr noundef nonnull %121, ptr noundef nonnull %123, i32 noundef %117, i32 noundef %119, i32 noundef %124, i32 noundef %124) #17
  %126 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.35)
  %127 = sub nsw i32 %4, %95
  %128 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.21, i32 noundef %127) #17
  %129 = sitofp i32 %97 to double
  %130 = fdiv double %129, 1.000000e+01
  %131 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.22, double noundef %130) #17
  %132 = load i32, ptr @no_mat, align 4, !tbaa !11
  %133 = mul nsw i32 %132, 100
  %134 = load i32, ptr @al_len, align 4, !tbaa !11
  %135 = sdiv i32 %133, %134
  %136 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.23, i32 noundef %135) #17
  %137 = load i32, ptr @no_mat, align 4, !tbaa !11
  %138 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.24, i32 noundef %137) #17
  %139 = load i32, ptr @no_mis, align 4, !tbaa !11
  %140 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.25, i32 noundef %139) #17
  %141 = load i32, ptr @al_len, align 4, !tbaa !11
  %142 = load i32, ptr @no_mat, align 4, !tbaa !11
  %143 = load i32, ptr @no_mis, align 4, !tbaa !11
  %144 = add i32 %142, %143
  %145 = sub i32 %141, %144
  %146 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.26, i32 noundef %145) #17
  %147 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.27, i32 noundef %100, i32 noundef %103, i32 noundef %105, i32 noundef %107) #17
  %148 = load i32, ptr @rl, align 4, !tbaa !11
  %149 = load i32, ptr @cl, align 4, !tbaa !11
  %150 = tail call i32 @display(ptr noundef nonnull %121, ptr noundef nonnull %123, i32 noundef %148, i32 noundef %149, ptr noundef %31, i32 noundef %100, i32 noundef %103) #17
  %151 = load ptr, ptr @stdout, align 8, !tbaa !7
  %152 = tail call i32 @fflush(ptr noundef %151) #17
  %153 = icmp eq i32 %95, 0
  br i1 %153, label %162, label %154

154:                                              ; preds = %93
  store i1 false, ptr @flag, align 2
  %155 = tail call i32 @locate(ptr noundef %0, ptr noundef %1, i32 noundef %8) #17
  %156 = load i1, ptr @flag, align 2
  br i1 %156, label %157, label %159

157:                                              ; preds = %154
  %158 = tail call i32 @small_pass(ptr noundef %0, ptr noundef %1, i32 noundef %95, i32 noundef %8) #17
  br label %159

159:                                              ; preds = %157, %154
  %160 = load i32, ptr @numnode, align 4, !tbaa !11
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %90, label %93, !llvm.loop !34

162:                                              ; preds = %93, %69
  ret i32 undef
}

; Function Attrs: nounwind optsize uwtable
define internal double @dtime() #6 {
  %1 = tail call i32 @getrusage(i32 noundef 0, ptr noundef nonnull @rusage) #19
  %2 = load i64, ptr @rusage, align 8, !tbaa !35
  %3 = sitofp i64 %2 to double
  %4 = load i64, ptr getelementptr inbounds (%struct.rusage, ptr @rusage, i64 0, i32 0, i32 1), align 8, !tbaa !39
  %5 = sitofp i64 %4 to double
  %6 = tail call double @llvm.fmuladd.f64(double %5, double 0x3EB0C6F7A0B5ED8D, double %3)
  ret double %6
}

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nofree nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal i32 @big_pass(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #11 {
  %7 = icmp slt i32 %3, 1
  br i1 %7, label %24, label %8

8:                                                ; preds = %6
  %9 = load ptr, ptr @CC, align 8, !tbaa !7
  %10 = load ptr, ptr @RR, align 8, !tbaa !7
  %11 = load ptr, ptr @EE, align 8, !tbaa !7
  %12 = load i32, ptr @q, align 4, !tbaa !11
  %13 = sub nsw i32 0, %12
  %14 = load ptr, ptr @DD, align 8, !tbaa !7
  %15 = load ptr, ptr @SS, align 8, !tbaa !7
  %16 = load ptr, ptr @FF, align 8, !tbaa !7
  %17 = getelementptr i8, ptr %9, i64 4
  %18 = zext i32 %3 to i64
  %19 = shl nuw nsw i64 %18, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %17, i8 0, i64 %19, i1 false), !tbaa !11
  %20 = getelementptr i8, ptr %10, i64 4
  tail call void @llvm.memset.p0.i64(ptr align 4 %20, i8 0, i64 %19, i1 false), !tbaa !11
  %21 = getelementptr i8, ptr %15, i64 4
  tail call void @llvm.memset.p0.i64(ptr align 4 %21, i8 0, i64 %19, i1 false), !tbaa !11
  %22 = add nuw i32 %3, 1
  %23 = zext i32 %22 to i64
  br label %32

24:                                               ; preds = %32, %6
  %25 = icmp slt i32 %2, 1
  br i1 %25, label %208, label %26

26:                                               ; preds = %24
  %27 = icmp eq i32 %5, 2
  %28 = add i32 %3, 1
  %29 = add nuw i32 %2, 1
  %30 = zext i32 %29 to i64
  %31 = zext i32 %28 to i64
  br label %42

32:                                               ; preds = %32, %8
  %33 = phi i64 [ 1, %8 ], [ %38, %32 ]
  %34 = getelementptr inbounds i32, ptr %11, i64 %33
  %35 = trunc i64 %33 to i32
  store i32 %35, ptr %34, align 4, !tbaa !11
  %36 = getelementptr inbounds i32, ptr %14, i64 %33
  store i32 %13, ptr %36, align 4, !tbaa !11
  %37 = getelementptr inbounds i32, ptr %16, i64 %33
  store i32 %35, ptr %37, align 4, !tbaa !11
  %38 = add nuw nsw i64 %33, 1
  %39 = icmp eq i64 %38, %23
  br i1 %39, label %24, label %32, !llvm.loop !40

40:                                               ; preds = %203, %65
  %41 = icmp eq i64 %70, %30
  br i1 %41, label %208, label %42, !llvm.loop !41

42:                                               ; preds = %40, %26
  %43 = phi i64 [ 1, %26 ], [ %70, %40 ]
  %44 = load i32, ptr @q, align 4, !tbaa !11
  %45 = sub nsw i32 0, %44
  %46 = load ptr, ptr @v, align 8, !tbaa !7
  %47 = getelementptr inbounds i8, ptr %0, i64 %43
  %48 = load i8, ptr %47, align 1, !tbaa !16
  %49 = sext i8 %48 to i64
  %50 = getelementptr inbounds [256 x i32], ptr %46, i64 %49
  br i1 %27, label %51, label %54

51:                                               ; preds = %42
  %52 = trunc i64 %43 to i32
  %53 = add i32 %52, -1
  br label %65

54:                                               ; preds = %42
  %55 = load ptr, ptr @CC, align 8, !tbaa !7
  %56 = getelementptr inbounds i32, ptr %55, i64 %43
  %57 = load i32, ptr %56, align 4, !tbaa !11
  %58 = load ptr, ptr @RR, align 8, !tbaa !7
  %59 = getelementptr inbounds i32, ptr %58, i64 %43
  %60 = load i32, ptr %59, align 4, !tbaa !11
  %61 = load ptr, ptr @EE, align 8, !tbaa !7
  %62 = getelementptr inbounds i32, ptr %61, i64 %43
  %63 = load i32, ptr %62, align 4, !tbaa !11
  %64 = trunc i64 %43 to i32
  br label %65

65:                                               ; preds = %54, %51
  %66 = phi i32 [ 0, %51 ], [ %57, %54 ]
  %67 = phi i32 [ 0, %51 ], [ %64, %54 ]
  %68 = phi i32 [ %53, %51 ], [ %60, %54 ]
  %69 = phi i32 [ 0, %51 ], [ %63, %54 ]
  %70 = add nuw nsw i64 %43, 1
  %71 = trunc i64 %70 to i32
  %72 = select i1 %27, i32 1, i32 %71
  %73 = icmp sgt i32 %72, %3
  br i1 %73, label %40, label %74

74:                                               ; preds = %65
  %75 = zext i32 %72 to i64
  %76 = trunc i64 %43 to i32
  %77 = load i32, ptr @r, align 4, !tbaa !11
  %78 = load i32, ptr @qr, align 4, !tbaa !11
  br label %79

79:                                               ; preds = %203, %74
  %80 = phi i32 [ %78, %74 ], [ %204, %203 ]
  %81 = phi i32 [ %77, %74 ], [ %205, %203 ]
  %82 = phi i64 [ %75, %74 ], [ %206, %203 ]
  %83 = phi i32 [ %69, %74 ], [ %117, %203 ]
  %84 = phi i32 [ %68, %74 ], [ %114, %203 ]
  %85 = phi i32 [ %67, %74 ], [ %107, %203 ]
  %86 = phi i32 [ %76, %74 ], [ %106, %203 ]
  %87 = phi i32 [ %67, %74 ], [ %196, %203 ]
  %88 = phi i32 [ %76, %74 ], [ %195, %203 ]
  %89 = phi i32 [ %66, %74 ], [ %110, %203 ]
  %90 = phi i32 [ %45, %74 ], [ %105, %203 ]
  %91 = phi i32 [ 0, %74 ], [ %194, %203 ]
  %92 = sub nsw i32 %90, %81
  %93 = sub nsw i32 %91, %80
  %94 = icmp slt i32 %92, %93
  br i1 %94, label %104, label %95

95:                                               ; preds = %79
  %96 = icmp eq i32 %92, %93
  br i1 %96, label %97, label %104

97:                                               ; preds = %95
  %98 = icmp slt i32 %86, %88
  br i1 %98, label %104, label %99

99:                                               ; preds = %97
  %100 = icmp eq i32 %86, %88
  %101 = icmp slt i32 %85, %87
  %102 = select i1 %100, i1 %101, i1 false
  %103 = select i1 %102, i32 %87, i32 %85
  br label %104

104:                                              ; preds = %99, %97, %95, %79
  %105 = phi i32 [ %92, %95 ], [ %93, %79 ], [ %92, %97 ], [ %92, %99 ]
  %106 = phi i32 [ %86, %95 ], [ %88, %79 ], [ %88, %97 ], [ %86, %99 ]
  %107 = phi i32 [ %85, %95 ], [ %87, %79 ], [ %87, %97 ], [ %103, %99 ]
  %108 = load ptr, ptr @CC, align 8, !tbaa !7
  %109 = getelementptr inbounds i32, ptr %108, i64 %82
  %110 = load i32, ptr %109, align 4, !tbaa !11
  %111 = sub nsw i32 %110, %80
  %112 = load ptr, ptr @RR, align 8, !tbaa !7
  %113 = getelementptr inbounds i32, ptr %112, i64 %82
  %114 = load i32, ptr %113, align 4, !tbaa !11
  %115 = load ptr, ptr @EE, align 8, !tbaa !7
  %116 = getelementptr inbounds i32, ptr %115, i64 %82
  %117 = load i32, ptr %116, align 4, !tbaa !11
  %118 = load ptr, ptr @DD, align 8, !tbaa !7
  %119 = getelementptr inbounds i32, ptr %118, i64 %82
  %120 = load i32, ptr %119, align 4, !tbaa !11
  %121 = sub nsw i32 %120, %81
  %122 = load ptr, ptr @SS, align 8, !tbaa !7
  %123 = getelementptr inbounds i32, ptr %122, i64 %82
  %124 = load i32, ptr %123, align 4, !tbaa !11
  %125 = load ptr, ptr @FF, align 8, !tbaa !7
  %126 = getelementptr inbounds i32, ptr %125, i64 %82
  %127 = load i32, ptr %126, align 4, !tbaa !11
  %128 = icmp slt i32 %121, %111
  br i1 %128, label %138, label %129

129:                                              ; preds = %104
  %130 = icmp eq i32 %121, %111
  br i1 %130, label %131, label %138

131:                                              ; preds = %129
  %132 = icmp slt i32 %124, %114
  br i1 %132, label %138, label %133

133:                                              ; preds = %131
  %134 = icmp eq i32 %124, %114
  %135 = icmp slt i32 %127, %117
  %136 = select i1 %134, i1 %135, i1 false
  %137 = select i1 %136, i32 %117, i32 %127
  br label %138

138:                                              ; preds = %133, %131, %129, %104
  %139 = phi i32 [ %121, %129 ], [ %111, %104 ], [ %111, %131 ], [ %111, %133 ]
  %140 = phi i32 [ %124, %129 ], [ %114, %104 ], [ %114, %131 ], [ %124, %133 ]
  %141 = phi i32 [ %127, %129 ], [ %117, %104 ], [ %117, %131 ], [ %137, %133 ]
  %142 = load ptr, ptr @row, align 8, !tbaa !7
  %143 = getelementptr inbounds ptr, ptr %142, i64 %43
  %144 = load ptr, ptr %143, align 8, !tbaa !7
  store ptr %144, ptr @z, align 8, !tbaa !7
  %145 = icmp eq ptr %144, null
  br i1 %145, label %155, label %150

146:                                              ; preds = %150
  %147 = getelementptr inbounds %struct.ONE, ptr %151, i64 0, i32 1
  %148 = load ptr, ptr %147, align 8, !tbaa !7
  store ptr %148, ptr @z, align 8, !tbaa !7
  %149 = icmp eq ptr %148, null
  br i1 %149, label %155, label %150, !llvm.loop !42

150:                                              ; preds = %146, %138
  %151 = phi ptr [ %148, %146 ], [ %144, %138 ]
  %152 = load i32, ptr %151, align 8, !tbaa !20
  %153 = zext i32 %152 to i64
  %154 = icmp eq i64 %82, %153
  br i1 %154, label %162, label %146

155:                                              ; preds = %146, %138
  %156 = getelementptr inbounds i8, ptr %1, i64 %82
  %157 = load i8, ptr %156, align 1, !tbaa !16
  %158 = sext i8 %157 to i64
  %159 = getelementptr inbounds i32, ptr %50, i64 %158
  %160 = load i32, ptr %159, align 4, !tbaa !11
  %161 = add nsw i32 %160, %89
  br label %162

162:                                              ; preds = %155, %150
  %163 = phi i32 [ %161, %155 ], [ 0, %150 ]
  %164 = icmp slt i32 %163, 1
  %165 = select i1 %164, i32 0, i32 %163
  %166 = select i1 %164, i32 %76, i32 %84
  %167 = trunc i64 %82 to i32
  %168 = select i1 %164, i32 %167, i32 %83
  %169 = icmp slt i32 %165, %139
  br i1 %169, label %179, label %170

170:                                              ; preds = %162
  %171 = icmp eq i32 %165, %139
  br i1 %171, label %172, label %179

172:                                              ; preds = %170
  %173 = icmp slt i32 %166, %140
  br i1 %173, label %179, label %174

174:                                              ; preds = %172
  %175 = icmp eq i32 %166, %140
  %176 = icmp slt i32 %168, %141
  %177 = select i1 %175, i1 %176, i1 false
  %178 = select i1 %177, i32 %141, i32 %168
  br label %179

179:                                              ; preds = %174, %172, %170, %162
  %180 = phi i32 [ %165, %170 ], [ %139, %162 ], [ %139, %172 ], [ %139, %174 ]
  %181 = phi i32 [ %166, %170 ], [ %140, %162 ], [ %140, %172 ], [ %166, %174 ]
  %182 = phi i32 [ %168, %170 ], [ %141, %162 ], [ %141, %172 ], [ %178, %174 ]
  %183 = icmp slt i32 %180, %105
  br i1 %183, label %193, label %184

184:                                              ; preds = %179
  %185 = icmp eq i32 %180, %105
  br i1 %185, label %186, label %193

186:                                              ; preds = %184
  %187 = icmp slt i32 %181, %106
  br i1 %187, label %193, label %188

188:                                              ; preds = %186
  %189 = icmp eq i32 %181, %106
  %190 = icmp slt i32 %182, %107
  %191 = select i1 %189, i1 %190, i1 false
  %192 = select i1 %191, i32 %107, i32 %182
  br label %193

193:                                              ; preds = %188, %186, %184, %179
  %194 = phi i32 [ %180, %184 ], [ %105, %179 ], [ %105, %186 ], [ %105, %188 ]
  %195 = phi i32 [ %181, %184 ], [ %106, %179 ], [ %106, %186 ], [ %181, %188 ]
  %196 = phi i32 [ %182, %184 ], [ %107, %179 ], [ %107, %186 ], [ %192, %188 ]
  store i32 %194, ptr %109, align 4, !tbaa !11
  store i32 %195, ptr %113, align 4, !tbaa !11
  store i32 %196, ptr %116, align 4, !tbaa !11
  store i32 %139, ptr %119, align 4, !tbaa !11
  store i32 %140, ptr %123, align 4, !tbaa !11
  store i32 %141, ptr %126, align 4, !tbaa !11
  %197 = load i32, ptr @min, align 4, !tbaa !11
  %198 = icmp sgt i32 %194, %197
  br i1 %198, label %199, label %203

199:                                              ; preds = %193
  %200 = tail call i32 @addnode(i32 noundef %194, i32 noundef %195, i32 noundef %196, i32 noundef %76, i32 noundef %167, i32 noundef %4, i32 noundef %197) #17
  store i32 %200, ptr @min, align 4, !tbaa !11
  %201 = load i32, ptr @r, align 4, !tbaa !11
  %202 = load i32, ptr @qr, align 4, !tbaa !11
  br label %203

203:                                              ; preds = %199, %193
  %204 = phi i32 [ %80, %193 ], [ %202, %199 ]
  %205 = phi i32 [ %81, %193 ], [ %201, %199 ]
  %206 = add nuw nsw i64 %82, 1
  %207 = icmp eq i64 %206, %31
  br i1 %207, label %40, label %79, !llvm.loop !43

208:                                              ; preds = %40, %24
  ret i32 undef
}

; Function Attrs: nofree norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal ptr @findmax() #12 {
  %1 = load i32, ptr @numnode, align 4, !tbaa !11
  %2 = icmp sgt i32 %1, 1
  %3 = load ptr, ptr @LIST, align 8, !tbaa !7
  br i1 %2, label %4, label %21

4:                                                ; preds = %0
  %5 = zext i32 %1 to i64
  br label %6

6:                                                ; preds = %6, %4
  %7 = phi i64 [ 1, %4 ], [ %19, %6 ]
  %8 = phi i32 [ 0, %4 ], [ %18, %6 ]
  %9 = getelementptr inbounds ptr, ptr %3, i64 %7
  %10 = load ptr, ptr %9, align 8, !tbaa !7
  %11 = load i32, ptr %10, align 4, !tbaa !24
  %12 = sext i32 %8 to i64
  %13 = getelementptr inbounds ptr, ptr %3, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !7
  %15 = load i32, ptr %14, align 4, !tbaa !24
  %16 = icmp sgt i32 %11, %15
  %17 = trunc i64 %7 to i32
  %18 = select i1 %16, i32 %17, i32 %8
  %19 = add nuw nsw i64 %7, 1
  %20 = icmp eq i64 %19, %5
  br i1 %20, label %21, label %6, !llvm.loop !44

21:                                               ; preds = %6, %0
  %22 = phi i32 [ 0, %0 ], [ %18, %6 ]
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds ptr, ptr %3, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !7
  %26 = add nsw i32 %1, -1
  store i32 %26, ptr @numnode, align 4, !tbaa !11
  %27 = icmp eq i32 %22, %26
  br i1 %27, label %35, label %28

28:                                               ; preds = %21
  %29 = sext i32 %26 to i64
  %30 = getelementptr inbounds ptr, ptr %3, i64 %29
  %31 = load ptr, ptr %30, align 8, !tbaa !7
  store ptr %31, ptr %24, align 8, !tbaa !7
  %32 = load ptr, ptr @LIST, align 8, !tbaa !7
  %33 = getelementptr inbounds ptr, ptr %32, i64 %29
  store ptr %25, ptr %33, align 8, !tbaa !7
  %34 = load ptr, ptr @LIST, align 8, !tbaa !7
  br label %35

35:                                               ; preds = %28, %21
  %36 = phi ptr [ %34, %28 ], [ %3, %21 ]
  %37 = load ptr, ptr %36, align 8, !tbaa !7
  store ptr %37, ptr @most, align 8, !tbaa !7
  %38 = load ptr, ptr @low, align 8, !tbaa !7
  %39 = icmp eq ptr %38, %25
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = load ptr, ptr %36, align 8, !tbaa !7
  store ptr %41, ptr @low, align 8, !tbaa !7
  br label %42

42:                                               ; preds = %40, %35
  ret ptr %25
}

; Function Attrs: nofree nounwind optsize uwtable
define internal i32 @diff(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #13 {
  %7 = icmp sgt i32 %3, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %6
  %9 = sub nsw i32 0, %5
  br label %39

10:                                               ; preds = %455, %6
  %11 = phi i32 [ %2, %6 ], [ %459, %455 ]
  %12 = phi i32 [ poison, %6 ], [ %461, %455 ]
  %13 = icmp sgt i32 %11, 0
  br i1 %13, label %14, label %32

14:                                               ; preds = %10
  %15 = load i32, ptr @I, align 4, !tbaa !11
  %16 = add nsw i32 %15, %11
  store i32 %16, ptr @I, align 4, !tbaa !11
  %17 = load i32, ptr @al_len, align 4, !tbaa !11
  %18 = add nsw i32 %17, %11
  store i32 %18, ptr @al_len, align 4, !tbaa !11
  %19 = load i32, ptr @last, align 4, !tbaa !11
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %14
  %22 = load ptr, ptr @sapp, align 8, !tbaa !7
  %23 = getelementptr inbounds i32, ptr %22, i64 -1
  %24 = load i32, ptr %23, align 4, !tbaa !11
  %25 = sub nsw i32 %24, %11
  store i32 %25, ptr %23, align 4, !tbaa !11
  br label %30

26:                                               ; preds = %14
  %27 = sub nsw i32 0, %11
  %28 = load ptr, ptr @sapp, align 8, !tbaa !7
  %29 = getelementptr inbounds i32, ptr %28, i64 1
  store ptr %29, ptr @sapp, align 8, !tbaa !7
  store i32 %27, ptr %28, align 4, !tbaa !11
  br label %30

30:                                               ; preds = %26, %21
  %31 = phi i32 [ %25, %21 ], [ %27, %26 ]
  store i32 %31, ptr @last, align 4, !tbaa !11
  br label %32

32:                                               ; preds = %30, %10
  %33 = load i32, ptr @q, align 4
  %34 = load i32, ptr @r, align 4
  %35 = mul nsw i32 %34, %11
  %36 = add nsw i32 %35, %33
  %37 = select i1 %13, i32 %36, i32 0
  %38 = sub nsw i32 0, %37
  br label %489

39:                                               ; preds = %455, %8
  %40 = phi i1 [ false, %8 ], [ true, %455 ]
  %41 = phi i32 [ poison, %8 ], [ %461, %455 ]
  %42 = phi i32 [ %4, %8 ], [ %460, %455 ]
  %43 = phi i32 [ %3, %8 ], [ %462, %455 ]
  %44 = phi i32 [ %2, %8 ], [ %459, %455 ]
  %45 = phi ptr [ %1, %8 ], [ %464, %455 ]
  %46 = phi ptr [ %0, %8 ], [ %458, %455 ]
  %47 = icmp slt i32 %44, 2
  br i1 %47, label %48, label %207

48:                                               ; preds = %39
  %.lcssa13 = phi i1 [ %40, %39 ]
  %.lcssa12 = phi i32 [ %41, %39 ]
  %.lcssa11 = phi i32 [ %42, %39 ]
  %.lcssa10 = phi i32 [ %43, %39 ]
  %.lcssa9 = phi i32 [ %44, %39 ]
  %.lcssa8 = phi ptr [ %45, %39 ]
  %.lcssa7 = phi ptr [ %46, %39 ]
  %49 = icmp eq i32 %.lcssa9, 1
  br i1 %49, label %68, label %50

50:                                               ; preds = %48
  %51 = load i32, ptr @J, align 4, !tbaa !11
  %52 = add nsw i32 %51, %.lcssa10
  store i32 %52, ptr @J, align 4, !tbaa !11
  %53 = load i32, ptr @al_len, align 4, !tbaa !11
  %54 = add nsw i32 %53, %.lcssa10
  store i32 %54, ptr @al_len, align 4, !tbaa !11
  %55 = load i32, ptr @last, align 4, !tbaa !11
  %56 = icmp slt i32 %55, 0
  %57 = load ptr, ptr @sapp, align 8, !tbaa !7
  br i1 %56, label %58, label %60

58:                                               ; preds = %50
  %59 = getelementptr inbounds i32, ptr %57, i64 -1
  store i32 %.lcssa10, ptr %59, align 4, !tbaa !11
  store i32 %55, ptr %57, align 4, !tbaa !11
  br label %61

60:                                               ; preds = %50
  store i32 %.lcssa10, ptr %57, align 4, !tbaa !11
  store i32 %.lcssa10, ptr @last, align 4, !tbaa !11
  br label %61

61:                                               ; preds = %60, %58
  %62 = getelementptr inbounds i32, ptr %57, i64 1
  store ptr %62, ptr @sapp, align 8
  %63 = load i32, ptr @q, align 4, !tbaa !11
  %64 = load i32, ptr @r, align 4, !tbaa !11
  %65 = mul nsw i32 %64, %.lcssa10
  %66 = add nsw i32 %63, %65
  %67 = sub nsw i32 0, %66
  br label %489

68:                                               ; preds = %48
  %69 = tail call i32 @llvm.smin.i32(i32 %.lcssa11, i32 %5)
  %70 = load i32, ptr @r, align 4
  %71 = add nsw i32 %69, %70
  %72 = load i32, ptr @q, align 4
  %73 = mul nsw i32 %70, %.lcssa10
  %74 = add nsw i32 %72, %73
  %75 = add nsw i32 %71, %74
  %76 = sub nsw i32 0, %75
  %77 = load ptr, ptr @v, align 8, !tbaa !7
  %78 = getelementptr inbounds i8, ptr %.lcssa7, i64 1
  %79 = load i8, ptr %78, align 1, !tbaa !16
  %80 = sext i8 %79 to i64
  %81 = getelementptr inbounds [256 x i32], ptr %77, i64 %80
  %82 = load ptr, ptr @row, align 8, !tbaa !7
  %83 = load i32, ptr @I, align 4, !tbaa !11
  %84 = add nsw i32 %83, 1
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds ptr, ptr %82, i64 %85
  %87 = load i32, ptr @J, align 4
  %88 = add nuw i32 %.lcssa10, 1
  %89 = zext i32 %88 to i64
  br label %90

90:                                               ; preds = %129, %68
  %91 = phi i64 [ 1, %68 ], [ %132, %129 ]
  %92 = phi i32 [ %76, %68 ], [ %131, %129 ]
  %93 = phi i32 [ 0, %68 ], [ %130, %129 ]
  %94 = trunc i64 %91 to i32
  %95 = load ptr, ptr %86, align 8, !tbaa !7
  store ptr %95, ptr @z, align 8, !tbaa !7
  %96 = icmp eq ptr %95, null
  br i1 %96, label %107, label %97

97:                                               ; preds = %90
  %98 = add nsw i32 %87, %94
  br label %103

99:                                               ; preds = %103
  %100 = getelementptr inbounds %struct.ONE, ptr %104, i64 0, i32 1
  %101 = load ptr, ptr %100, align 8, !tbaa !7
  store ptr %101, ptr @z, align 8, !tbaa !7
  %102 = icmp eq ptr %101, null
  br i1 %102, label %107, label %103, !llvm.loop !45

103:                                              ; preds = %99, %97
  %104 = phi ptr [ %95, %97 ], [ %101, %99 ]
  %105 = load i32, ptr %104, align 8, !tbaa !20
  %106 = icmp eq i32 %105, %98
  br i1 %106, label %129, label %99

107:                                              ; preds = %99, %90
  %108 = getelementptr inbounds i8, ptr %.lcssa8, i64 %91
  %109 = load i8, ptr %108, align 1, !tbaa !16
  %110 = sext i8 %109 to i64
  %111 = getelementptr inbounds i32, ptr %81, i64 %110
  %112 = load i32, ptr %111, align 4, !tbaa !11
  %113 = icmp ult i64 %91, 2
  %114 = trunc i64 %91 to i32
  %115 = sub i32 1, %114
  %116 = mul i32 %115, %70
  %117 = sub i32 %116, %72
  %118 = select i1 %113, i32 0, i32 %117
  %119 = sub nsw i32 %.lcssa10, %94
  %120 = mul nsw i32 %119, %70
  %121 = add nsw i32 %120, %72
  %122 = icmp sgt i32 %119, 0
  %123 = select i1 %122, i32 %121, i32 0
  %124 = sub i32 %118, %123
  %125 = add i32 %124, %112
  %126 = icmp sgt i32 %125, %92
  %127 = select i1 %126, i32 %94, i32 %93
  %128 = tail call i32 @llvm.smax.i32(i32 %125, i32 %92)
  br label %129

129:                                              ; preds = %107, %103
  %130 = phi i32 [ %127, %107 ], [ %93, %103 ]
  %131 = phi i32 [ %128, %107 ], [ %92, %103 ]
  %132 = add nuw nsw i64 %91, 1
  %133 = icmp eq i64 %132, %89
  br i1 %133, label %134, label %90, !llvm.loop !46

134:                                              ; preds = %129
  %.lcssa1 = phi i32 [ %130, %129 ]
  %.lcssa = phi i32 [ %131, %129 ]
  %135 = icmp eq i32 %.lcssa1, 0
  br i1 %135, label %136, label %159

136:                                              ; preds = %134
  %137 = load i32, ptr @J, align 4, !tbaa !11
  %138 = add nsw i32 %137, %.lcssa10
  store i32 %138, ptr @J, align 4, !tbaa !11
  %139 = load i32, ptr @al_len, align 4, !tbaa !11
  %140 = add nsw i32 %139, %.lcssa10
  %141 = load i32, ptr @last, align 4, !tbaa !11
  %142 = icmp slt i32 %141, 0
  %143 = load ptr, ptr @sapp, align 8, !tbaa !7
  br i1 %142, label %144, label %146

144:                                              ; preds = %136
  %145 = getelementptr inbounds i32, ptr %143, i64 -1
  store i32 %.lcssa10, ptr %145, align 4, !tbaa !11
  store i32 %141, ptr %143, align 4, !tbaa !11
  br label %147

146:                                              ; preds = %136
  store i32 %.lcssa10, ptr %143, align 4, !tbaa !11
  store i32 %.lcssa10, ptr @last, align 4, !tbaa !11
  br label %147

147:                                              ; preds = %146, %144
  %148 = phi i32 [ %141, %144 ], [ %.lcssa10, %146 ]
  %149 = getelementptr inbounds i32, ptr %143, i64 1
  store ptr %149, ptr @sapp, align 8
  %150 = load i32, ptr @I, align 4, !tbaa !11
  %151 = add nsw i32 %150, 1
  store i32 %151, ptr @I, align 4, !tbaa !11
  %152 = add nsw i32 %140, 1
  store i32 %152, ptr @al_len, align 4, !tbaa !11
  %153 = icmp slt i32 %148, 0
  br i1 %153, label %154, label %157

154:                                              ; preds = %147
  %155 = load i32, ptr %143, align 4, !tbaa !11
  %156 = add nsw i32 %155, -1
  store i32 %156, ptr %143, align 4, !tbaa !11
  store i32 %156, ptr @last, align 4, !tbaa !11
  br label %489

157:                                              ; preds = %147
  %158 = getelementptr inbounds i32, ptr %143, i64 2
  store ptr %158, ptr @sapp, align 8, !tbaa !7
  store i32 -1, ptr %149, align 4, !tbaa !11
  store i32 -1, ptr @last, align 4, !tbaa !11
  br label %489

159:                                              ; preds = %134
  %160 = icmp sgt i32 %.lcssa1, 1
  br i1 %160, label %164, label %161

161:                                              ; preds = %159
  %162 = load ptr, ptr @sapp, align 8, !tbaa !7
  %163 = load i32, ptr @al_len, align 4, !tbaa !11
  br label %178

164:                                              ; preds = %159
  %165 = add nsw i32 %.lcssa1, -1
  %166 = load i32, ptr @J, align 4, !tbaa !11
  %167 = add nsw i32 %166, %165
  store i32 %167, ptr @J, align 4, !tbaa !11
  %168 = load i32, ptr @al_len, align 4, !tbaa !11
  %169 = add nsw i32 %168, %165
  %170 = load i32, ptr @last, align 4, !tbaa !11
  %171 = icmp slt i32 %170, 0
  %172 = load ptr, ptr @sapp, align 8, !tbaa !7
  br i1 %171, label %173, label %176

173:                                              ; preds = %164
  %174 = getelementptr inbounds i32, ptr %172, i64 -1
  store i32 %165, ptr %174, align 4, !tbaa !11
  %175 = getelementptr inbounds i32, ptr %172, i64 1
  store i32 %170, ptr %172, align 4, !tbaa !11
  br label %178

176:                                              ; preds = %164
  %177 = getelementptr inbounds i32, ptr %172, i64 1
  store i32 %165, ptr %172, align 4, !tbaa !11
  br label %178

178:                                              ; preds = %176, %173, %161
  %179 = phi i32 [ %163, %161 ], [ %169, %173 ], [ %169, %176 ]
  %180 = phi ptr [ %162, %161 ], [ %175, %173 ], [ %177, %176 ]
  %181 = getelementptr inbounds i32, ptr %180, i64 1
  store ptr %181, ptr @sapp, align 8, !tbaa !7
  store i32 0, ptr %180, align 4, !tbaa !11
  store i32 0, ptr @last, align 4, !tbaa !11
  %182 = add nsw i32 %179, 1
  store i32 %182, ptr @al_len, align 4, !tbaa !11
  %183 = load i8, ptr %78, align 1, !tbaa !16
  %184 = sext i32 %.lcssa1 to i64
  %185 = getelementptr inbounds i8, ptr %.lcssa8, i64 %184
  %186 = load i8, ptr %185, align 1, !tbaa !16
  %187 = icmp eq i8 %183, %186
  %188 = select i1 %187, ptr @no_mat, ptr @no_mis
  %189 = load i32, ptr %188, align 4, !tbaa !11
  %190 = add nsw i32 %189, 1
  store i32 %190, ptr %188, align 4, !tbaa !11
  %191 = load i32, ptr @I, align 4, !tbaa !11
  %192 = add nsw i32 %191, 1
  store i32 %192, ptr @I, align 4, !tbaa !11
  %193 = load i32, ptr @J, align 4, !tbaa !11
  %194 = add nsw i32 %193, 1
  store i32 %194, ptr @J, align 4, !tbaa !11
  %195 = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #21
  store ptr %195, ptr @z, align 8, !tbaa !7
  store i32 %194, ptr %195, align 8, !tbaa !20
  %196 = load ptr, ptr @row, align 8, !tbaa !7
  %197 = sext i32 %192 to i64
  %198 = getelementptr inbounds ptr, ptr %196, i64 %197
  %199 = load ptr, ptr %198, align 8, !tbaa !7
  %200 = getelementptr inbounds %struct.ONE, ptr %195, i64 0, i32 1
  store ptr %199, ptr %200, align 8, !tbaa !47
  store ptr %195, ptr %198, align 8, !tbaa !7
  %201 = icmp slt i32 %.lcssa1, %.lcssa10
  br i1 %201, label %202, label %489

202:                                              ; preds = %178
  %203 = sub nsw i32 %.lcssa10, %.lcssa1
  %204 = add nsw i32 %194, %203
  store i32 %204, ptr @J, align 4, !tbaa !11
  %205 = add nsw i32 %182, %203
  store i32 %205, ptr @al_len, align 4, !tbaa !11
  %206 = getelementptr inbounds i32, ptr %180, i64 2
  store ptr %206, ptr @sapp, align 8, !tbaa !7
  store i32 %203, ptr %181, align 4, !tbaa !11
  store i32 %203, ptr @last, align 4, !tbaa !11
  br label %489

207:                                              ; preds = %39
  %208 = lshr i32 %44, 1
  %209 = load ptr, ptr @CC, align 8, !tbaa !7
  store i32 0, ptr %209, align 4, !tbaa !11
  %210 = load i32, ptr @q, align 4, !tbaa !11
  %211 = sub nsw i32 0, %210
  %212 = load ptr, ptr @DD, align 8
  %213 = load i32, ptr @r, align 4, !tbaa !11
  %214 = add nuw i32 %43, 1
  %215 = zext i32 %214 to i64
  br label %216

216:                                              ; preds = %216, %207
  %217 = phi i64 [ 1, %207 ], [ %223, %216 ]
  %218 = phi i32 [ %211, %207 ], [ %219, %216 ]
  %219 = sub nsw i32 %218, %213
  %220 = getelementptr inbounds i32, ptr %209, i64 %217
  store i32 %219, ptr %220, align 4, !tbaa !11
  %221 = sub nsw i32 %219, %210
  %222 = getelementptr inbounds i32, ptr %212, i64 %217
  store i32 %221, ptr %222, align 4, !tbaa !11
  %223 = add nuw nsw i64 %217, 1
  %224 = icmp eq i64 %223, %215
  br i1 %224, label %225, label %216, !llvm.loop !48

225:                                              ; preds = %216
  %226 = icmp ult i32 %44, 2
  br i1 %226, label %297, label %227

227:                                              ; preds = %225
  %228 = sub nsw i32 0, %42
  %229 = load i32, ptr @r, align 4, !tbaa !11
  %230 = load ptr, ptr @v, align 8, !tbaa !7
  %231 = load i32, ptr @qr, align 4
  %232 = load ptr, ptr @row, align 8
  %233 = load i32, ptr @I, align 4
  %234 = load i32, ptr @J, align 4
  %235 = add i32 %43, 1
  %236 = sext i32 %233 to i64
  %237 = tail call i32 @llvm.umax.i32(i32 %208, i32 1)
  %238 = add nuw i32 %237, 1
  %239 = zext i32 %238 to i64
  %240 = zext i32 %235 to i64
  br label %241

241:                                              ; preds = %294, %227
  %242 = phi i64 [ 1, %227 ], [ %295, %294 ]
  %243 = phi i32 [ 0, %227 ], [ %245, %294 ]
  %244 = phi i32 [ %228, %227 ], [ %245, %294 ]
  %245 = sub nsw i32 %244, %229
  store i32 %245, ptr %209, align 4, !tbaa !11
  %246 = getelementptr inbounds i8, ptr %46, i64 %242
  %247 = load i8, ptr %246, align 1, !tbaa !16
  %248 = sext i8 %247 to i64
  %249 = getelementptr inbounds [256 x i32], ptr %230, i64 %248
  %250 = sub nsw i32 %245, %210
  %251 = add nsw i64 %242, %236
  %252 = getelementptr inbounds ptr, ptr %232, i64 %251
  br label %253

253:                                              ; preds = %288, %241
  %254 = phi i64 [ 1, %241 ], [ %292, %288 ]
  %255 = phi i32 [ %243, %241 ], [ %262, %288 ]
  %256 = phi i32 [ %250, %241 ], [ %260, %288 ]
  %257 = phi i32 [ %245, %241 ], [ %291, %288 ]
  %258 = sub nsw i32 %257, %231
  %259 = sub nsw i32 %256, %229
  %260 = tail call i32 @llvm.smax.i32(i32 %258, i32 %259)
  %261 = getelementptr inbounds i32, ptr %209, i64 %254
  %262 = load i32, ptr %261, align 4, !tbaa !11
  %263 = sub nsw i32 %262, %231
  %264 = getelementptr inbounds i32, ptr %212, i64 %254
  %265 = load i32, ptr %264, align 4, !tbaa !11
  %266 = sub nsw i32 %265, %229
  %267 = tail call i32 @llvm.smax.i32(i32 %263, i32 %266)
  %268 = load ptr, ptr %252, align 8, !tbaa !7
  store ptr %268, ptr @z, align 8, !tbaa !7
  %269 = icmp eq ptr %268, null
  br i1 %269, label %281, label %270

270:                                              ; preds = %253
  %271 = trunc i64 %254 to i32
  %272 = add nsw i32 %234, %271
  br label %277

273:                                              ; preds = %277
  %274 = getelementptr inbounds %struct.ONE, ptr %278, i64 0, i32 1
  %275 = load ptr, ptr %274, align 8, !tbaa !7
  store ptr %275, ptr @z, align 8, !tbaa !7
  %276 = icmp eq ptr %275, null
  br i1 %276, label %281, label %277, !llvm.loop !49

277:                                              ; preds = %273, %270
  %278 = phi ptr [ %268, %270 ], [ %275, %273 ]
  %279 = load i32, ptr %278, align 8, !tbaa !20
  %280 = icmp eq i32 %279, %272
  br i1 %280, label %288, label %273

281:                                              ; preds = %273, %253
  %282 = getelementptr inbounds i8, ptr %45, i64 %254
  %283 = load i8, ptr %282, align 1, !tbaa !16
  %284 = sext i8 %283 to i64
  %285 = getelementptr inbounds i32, ptr %249, i64 %284
  %286 = load i32, ptr %285, align 4, !tbaa !11
  %287 = add nsw i32 %286, %255
  br label %288

288:                                              ; preds = %281, %277
  %289 = phi i32 [ %287, %281 ], [ %263, %277 ]
  %290 = tail call i32 @llvm.smax.i32(i32 %289, i32 %267)
  %291 = tail call i32 @llvm.smax.i32(i32 %290, i32 %260)
  store i32 %291, ptr %261, align 4, !tbaa !11
  store i32 %267, ptr %264, align 4, !tbaa !11
  %292 = add nuw nsw i64 %254, 1
  %293 = icmp eq i64 %292, %240
  br i1 %293, label %294, label %253, !llvm.loop !50

294:                                              ; preds = %288
  %295 = add nuw nsw i64 %242, 1
  %296 = icmp eq i64 %295, %239
  br i1 %296, label %297, label %241, !llvm.loop !51

297:                                              ; preds = %294, %225
  %298 = phi i32 [ 0, %225 ], [ %245, %294 ]
  store i32 %298, ptr %212, align 4, !tbaa !11
  %299 = load ptr, ptr @RR, align 8, !tbaa !7
  %300 = zext i32 %43 to i64
  %301 = getelementptr inbounds i32, ptr %299, i64 %300
  store i32 0, ptr %301, align 4, !tbaa !11
  %302 = add i32 %43, -1
  %303 = icmp sgt i32 %43, 0
  %304 = load ptr, ptr @SS, align 8
  br i1 %303, label %305, label %317

305:                                              ; preds = %297
  %306 = load i32, ptr @r, align 4, !tbaa !11
  %307 = zext i32 %302 to i64
  br label %308

308:                                              ; preds = %308, %305
  %309 = phi i64 [ %307, %305 ], [ %315, %308 ]
  %310 = phi i32 [ %211, %305 ], [ %311, %308 ]
  %311 = sub nsw i32 %310, %306
  %312 = getelementptr inbounds i32, ptr %299, i64 %309
  store i32 %311, ptr %312, align 4, !tbaa !11
  %313 = sub nsw i32 %311, %210
  %314 = getelementptr inbounds i32, ptr %304, i64 %309
  store i32 %313, ptr %314, align 4, !tbaa !11
  %315 = add nsw i64 %309, -1
  %316 = icmp eq i64 %309, 0
  br i1 %316, label %317, label %308, !llvm.loop !52

317:                                              ; preds = %308, %297
  %318 = icmp sgt i32 %44, %208
  br i1 %318, label %319, label %389

319:                                              ; preds = %317
  %320 = load i32, ptr @r, align 4, !tbaa !11
  %321 = load ptr, ptr @v, align 8, !tbaa !7
  %322 = load i32, ptr @qr, align 4
  %323 = load ptr, ptr @row, align 8
  %324 = load i32, ptr @I, align 4
  %325 = load i32, ptr @J, align 4
  %326 = zext i32 %302 to i64
  %327 = sext i32 %44 to i64
  %328 = sext i32 %324 to i64
  %329 = zext i32 %208 to i64
  br label %332

330:                                              ; preds = %383, %332
  %331 = icmp sgt i64 %335, %329
  br i1 %331, label %332, label %389, !llvm.loop !53

332:                                              ; preds = %330, %319
  %333 = phi i64 [ %327, %319 ], [ %335, %330 ]
  %334 = phi i32 [ %9, %319 ], [ %337, %330 ]
  %335 = add nsw i64 %333, -1
  %336 = load i32, ptr %301, align 4, !tbaa !11
  %337 = sub nsw i32 %334, %320
  store i32 %337, ptr %301, align 4, !tbaa !11
  %338 = getelementptr inbounds i8, ptr %46, i64 %333
  %339 = load i8, ptr %338, align 1, !tbaa !16
  %340 = sext i8 %339 to i64
  %341 = getelementptr inbounds [256 x i32], ptr %321, i64 %340
  br i1 %303, label %342, label %330

342:                                              ; preds = %332
  %343 = sub nsw i32 %337, %210
  %344 = add nsw i64 %333, %328
  %345 = getelementptr inbounds ptr, ptr %323, i64 %344
  br label %346

346:                                              ; preds = %383, %342
  %347 = phi i64 [ %326, %342 ], [ %387, %383 ]
  %348 = phi i32 [ %336, %342 ], [ %355, %383 ]
  %349 = phi i32 [ %343, %342 ], [ %353, %383 ]
  %350 = phi i32 [ %337, %342 ], [ %386, %383 ]
  %351 = sub nsw i32 %350, %322
  %352 = sub nsw i32 %349, %320
  %353 = tail call i32 @llvm.smax.i32(i32 %351, i32 %352)
  %354 = getelementptr inbounds i32, ptr %299, i64 %347
  %355 = load i32, ptr %354, align 4, !tbaa !11
  %356 = sub nsw i32 %355, %322
  %357 = getelementptr inbounds i32, ptr %304, i64 %347
  %358 = load i32, ptr %357, align 4, !tbaa !11
  %359 = sub nsw i32 %358, %320
  %360 = tail call i32 @llvm.smax.i32(i32 %356, i32 %359)
  %361 = load ptr, ptr %345, align 8, !tbaa !7
  store ptr %361, ptr @z, align 8, !tbaa !7
  %362 = icmp eq ptr %361, null
  br i1 %362, label %375, label %363

363:                                              ; preds = %346
  %364 = trunc i64 %347 to i32
  %365 = add nuw nsw i32 %364, 1
  %366 = add nsw i32 %365, %325
  br label %371

367:                                              ; preds = %371
  %368 = getelementptr inbounds %struct.ONE, ptr %372, i64 0, i32 1
  %369 = load ptr, ptr %368, align 8, !tbaa !7
  store ptr %369, ptr @z, align 8, !tbaa !7
  %370 = icmp eq ptr %369, null
  br i1 %370, label %375, label %371, !llvm.loop !54

371:                                              ; preds = %367, %363
  %372 = phi ptr [ %361, %363 ], [ %369, %367 ]
  %373 = load i32, ptr %372, align 8, !tbaa !20
  %374 = icmp eq i32 %373, %366
  br i1 %374, label %383, label %367

375:                                              ; preds = %367, %346
  %376 = add nuw nsw i64 %347, 1
  %377 = getelementptr inbounds i8, ptr %45, i64 %376
  %378 = load i8, ptr %377, align 1, !tbaa !16
  %379 = sext i8 %378 to i64
  %380 = getelementptr inbounds i32, ptr %341, i64 %379
  %381 = load i32, ptr %380, align 4, !tbaa !11
  %382 = add nsw i32 %381, %348
  br label %383

383:                                              ; preds = %375, %371
  %384 = phi i32 [ %382, %375 ], [ %356, %371 ]
  %385 = tail call i32 @llvm.smax.i32(i32 %384, i32 %360)
  %386 = tail call i32 @llvm.smax.i32(i32 %385, i32 %353)
  store i32 %386, ptr %354, align 4, !tbaa !11
  store i32 %360, ptr %357, align 4, !tbaa !11
  %387 = add nsw i64 %347, -1
  %388 = icmp sgt i64 %347, 0
  br i1 %388, label %346, label %330, !llvm.loop !55

389:                                              ; preds = %330, %317
  %390 = load i32, ptr %301, align 4, !tbaa !11
  %391 = getelementptr inbounds i32, ptr %304, i64 %300
  store i32 %390, ptr %391, align 4, !tbaa !11
  %392 = load i32, ptr %299, align 4, !tbaa !11
  %393 = add nsw i32 %392, %298
  %394 = icmp slt i32 %43, 0
  br i1 %394, label %447, label %395

395:                                              ; preds = %389
  %396 = add nuw i32 %43, 1
  %397 = zext i32 %396 to i64
  br label %400

398:                                              ; preds = %422
  %.lcssa3 = phi i32 [ %423, %422 ]
  %.lcssa2 = phi i32 [ %424, %422 ]
  %399 = icmp sgt i32 %43, -1
  br i1 %399, label %427, label %447

400:                                              ; preds = %422, %395
  %401 = phi i64 [ 0, %395 ], [ %425, %422 ]
  %402 = phi i32 [ %393, %395 ], [ %424, %422 ]
  %403 = phi i32 [ 0, %395 ], [ %423, %422 ]
  %404 = getelementptr inbounds i32, ptr %209, i64 %401
  %405 = load i32, ptr %404, align 4, !tbaa !11
  %406 = getelementptr inbounds i32, ptr %299, i64 %401
  %407 = load i32, ptr %406, align 4, !tbaa !11
  %408 = add nsw i32 %407, %405
  %409 = icmp slt i32 %408, %402
  br i1 %409, label %422, label %410

410:                                              ; preds = %400
  %411 = icmp sgt i32 %408, %402
  br i1 %411, label %420, label %412

412:                                              ; preds = %410
  %413 = getelementptr inbounds i32, ptr %212, i64 %401
  %414 = load i32, ptr %413, align 4, !tbaa !11
  %415 = icmp eq i32 %405, %414
  br i1 %415, label %422, label %416

416:                                              ; preds = %412
  %417 = getelementptr inbounds i32, ptr %304, i64 %401
  %418 = load i32, ptr %417, align 4, !tbaa !11
  %419 = icmp eq i32 %407, %418
  br i1 %419, label %420, label %422

420:                                              ; preds = %416, %410
  %421 = trunc i64 %401 to i32
  br label %422

422:                                              ; preds = %420, %416, %412, %400
  %423 = phi i32 [ %421, %420 ], [ %403, %416 ], [ %403, %412 ], [ %403, %400 ]
  %424 = phi i32 [ %408, %420 ], [ %402, %416 ], [ %402, %412 ], [ %402, %400 ]
  %425 = add nuw nsw i64 %401, 1
  %426 = icmp eq i64 %425, %397
  br i1 %426, label %398, label %400, !llvm.loop !56

427:                                              ; preds = %427, %398
  %428 = phi i64 [ %443, %427 ], [ %300, %398 ]
  %429 = phi i32 [ %442, %427 ], [ %.lcssa2, %398 ]
  %430 = phi i32 [ %441, %427 ], [ 1, %398 ]
  %431 = phi i32 [ %440, %427 ], [ %.lcssa3, %398 ]
  %432 = getelementptr inbounds i32, ptr %212, i64 %428
  %433 = load i32, ptr %432, align 4, !tbaa !11
  %434 = getelementptr inbounds i32, ptr %304, i64 %428
  %435 = load i32, ptr %434, align 4, !tbaa !11
  %436 = add i32 %433, %210
  %437 = add i32 %436, %435
  %438 = icmp sgt i32 %437, %429
  %439 = trunc i64 %428 to i32
  %440 = select i1 %438, i32 %439, i32 %431
  %441 = select i1 %438, i32 2, i32 %430
  %442 = tail call i32 @llvm.smax.i32(i32 %437, i32 %429)
  %443 = add nsw i64 %428, -1
  %444 = icmp sgt i64 %428, 0
  br i1 %444, label %427, label %445, !llvm.loop !57

445:                                              ; preds = %427
  %.lcssa6 = phi i32 [ %440, %427 ]
  %.lcssa5 = phi i32 [ %441, %427 ]
  %.lcssa4 = phi i32 [ %442, %427 ]
  %446 = icmp eq i32 %.lcssa5, 1
  br i1 %446, label %447, label %466

447:                                              ; preds = %445, %398, %389
  %448 = phi i32 [ %.lcssa4, %445 ], [ %.lcssa2, %398 ], [ %393, %389 ]
  %449 = phi i32 [ %.lcssa6, %445 ], [ %.lcssa3, %398 ], [ 0, %389 ]
  %450 = tail call i32 @diff(ptr noundef %46, ptr noundef %45, i32 noundef %208, i32 noundef %449, i32 noundef %42, i32 noundef %210) #17
  %451 = zext i32 %208 to i64
  %452 = getelementptr inbounds i8, ptr %46, i64 %451
  %453 = sub nsw i32 %44, %208
  %454 = load i32, ptr @q, align 4, !tbaa !11
  br label %455

455:                                              ; preds = %482, %447
  %456 = phi i32 [ %448, %447 ], [ %.lcssa4, %482 ]
  %457 = phi i32 [ %449, %447 ], [ %.lcssa6, %482 ]
  %458 = phi ptr [ %452, %447 ], [ %486, %482 ]
  %459 = phi i32 [ %453, %447 ], [ %488, %482 ]
  %460 = phi i32 [ %454, %447 ], [ 0, %482 ]
  %461 = select i1 %40, i32 %41, i32 %456
  %462 = sub nsw i32 %43, %457
  %463 = sext i32 %457 to i64
  %464 = getelementptr inbounds i8, ptr %45, i64 %463
  %465 = icmp slt i32 %462, 1
  br i1 %465, label %10, label %39

466:                                              ; preds = %445
  %467 = add nsw i32 %208, -1
  %468 = tail call i32 @diff(ptr noundef %46, ptr noundef %45, i32 noundef %467, i32 noundef %.lcssa6, i32 noundef %42, i32 noundef 0) #17
  %469 = load i32, ptr @I, align 4, !tbaa !11
  %470 = add nsw i32 %469, 2
  store i32 %470, ptr @I, align 4, !tbaa !11
  %471 = load i32, ptr @al_len, align 4, !tbaa !11
  %472 = add nsw i32 %471, 2
  store i32 %472, ptr @al_len, align 4, !tbaa !11
  %473 = load i32, ptr @last, align 4, !tbaa !11
  %474 = icmp slt i32 %473, 0
  %475 = load ptr, ptr @sapp, align 8, !tbaa !7
  br i1 %474, label %476, label %480

476:                                              ; preds = %466
  %477 = getelementptr inbounds i32, ptr %475, i64 -1
  %478 = load i32, ptr %477, align 4, !tbaa !11
  %479 = add nsw i32 %478, -2
  store i32 %479, ptr %477, align 4, !tbaa !11
  br label %482

480:                                              ; preds = %466
  %481 = getelementptr inbounds i32, ptr %475, i64 1
  store ptr %481, ptr @sapp, align 8, !tbaa !7
  store i32 -2, ptr %475, align 4, !tbaa !11
  br label %482

482:                                              ; preds = %480, %476
  %483 = phi i32 [ -2, %480 ], [ %479, %476 ]
  store i32 %483, ptr @last, align 4, !tbaa !11
  %484 = zext i32 %208 to i64
  %485 = getelementptr inbounds i8, ptr %46, i64 %484
  %486 = getelementptr inbounds i8, ptr %485, i64 1
  %487 = xor i32 %208, -1
  %488 = add i32 %44, %487
  br label %455

489:                                              ; preds = %202, %178, %157, %154, %61, %32
  %490 = phi i32 [ %.lcssa12, %157 ], [ %.lcssa12, %154 ], [ %.lcssa12, %202 ], [ %.lcssa12, %178 ], [ %.lcssa12, %61 ], [ %12, %32 ]
  %491 = phi i1 [ %.lcssa13, %157 ], [ %.lcssa13, %154 ], [ %.lcssa13, %202 ], [ %.lcssa13, %178 ], [ %.lcssa13, %61 ], [ %7, %32 ]
  %492 = phi i32 [ %.lcssa, %157 ], [ %.lcssa, %154 ], [ %.lcssa, %202 ], [ %.lcssa, %178 ], [ %67, %61 ], [ %38, %32 ]
  %493 = select i1 %491, i32 %490, i32 %492
  ret i32 %493
}

; Function Attrs: nofree nounwind optsize uwtable
define internal i32 @display(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4, i32 noundef %5, i32 noundef %6) #13 {
  %8 = icmp sgt i32 %2, 0
  %9 = icmp sgt i32 %3, 0
  %10 = or i1 %8, %9
  br i1 %10, label %11, label %114

11:                                               ; preds = %104, %7
  %12 = phi ptr [ %75, %104 ], [ %4, %7 ]
  %13 = phi ptr [ %110, %104 ], [ @ALINE, %7 ]
  %14 = phi i32 [ %109, %104 ], [ %6, %7 ]
  %15 = phi i32 [ %108, %104 ], [ %5, %7 ]
  %16 = phi i32 [ %107, %104 ], [ 0, %7 ]
  %17 = phi i32 [ %74, %104 ], [ 0, %7 ]
  %18 = phi i32 [ %73, %104 ], [ 0, %7 ]
  %19 = phi i32 [ %72, %104 ], [ 0, %7 ]
  %20 = phi ptr [ %106, %104 ], [ @CLINE, %7 ]
  %21 = phi ptr [ %105, %104 ], [ @BLINE, %7 ]
  %22 = icmp eq i32 %17, 0
  br i1 %22, label %23, label %54

23:                                               ; preds = %11
  %24 = load i32, ptr %12, align 4, !tbaa !11
  %25 = icmp eq i32 %24, 0
  %26 = getelementptr inbounds i32, ptr %12, i64 1
  br i1 %25, label %27, label %54

27:                                               ; preds = %23
  %28 = add nsw i32 %19, 1
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8, ptr %0, i64 %29
  %31 = load i8, ptr %30, align 1, !tbaa !16
  store i8 %31, ptr %13, align 1, !tbaa !16
  %32 = add nsw i32 %18, 1
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, ptr %1, i64 %33
  %35 = load i8, ptr %34, align 1, !tbaa !16
  store i8 %35, ptr %21, align 1, !tbaa !16
  %36 = icmp eq i8 %31, %35
  %37 = select i1 %36, i8 124, i8 32
  %38 = icmp eq i8 %31, 65
  %39 = icmp eq i8 %35, 71
  %40 = select i1 %38, i1 %39, i1 false
  br i1 %40, label %53, label %41

41:                                               ; preds = %27
  %42 = icmp eq i8 %31, 67
  %43 = icmp eq i8 %35, 84
  %44 = select i1 %42, i1 %43, i1 false
  br i1 %44, label %53, label %45

45:                                               ; preds = %41
  %46 = icmp eq i8 %31, 71
  %47 = icmp eq i8 %35, 65
  %48 = select i1 %46, i1 %47, i1 false
  br i1 %48, label %53, label %49

49:                                               ; preds = %45
  %50 = icmp eq i8 %31, 84
  %51 = icmp eq i8 %35, 67
  %52 = select i1 %50, i1 %51, i1 false
  br i1 %52, label %53, label %70

53:                                               ; preds = %49, %45, %41, %27
  br label %70

54:                                               ; preds = %23, %11
  %55 = phi i32 [ %17, %11 ], [ %24, %23 ]
  %56 = phi ptr [ %12, %11 ], [ %26, %23 ]
  %57 = icmp sgt i32 %55, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %54
  store i8 32, ptr %13, align 1, !tbaa !16
  %59 = add nsw i32 %18, 1
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8, ptr %1, i64 %60
  %62 = load i8, ptr %61, align 1, !tbaa !16
  store i8 %62, ptr %21, align 1, !tbaa !16
  %63 = add nsw i32 %55, -1
  br label %70

64:                                               ; preds = %54
  %65 = add nsw i32 %19, 1
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8, ptr %0, i64 %66
  %68 = load i8, ptr %67, align 1, !tbaa !16
  store i8 %68, ptr %13, align 1, !tbaa !16
  store i8 32, ptr %21, align 1, !tbaa !16
  %69 = add nsw i32 %55, 1
  br label %70

70:                                               ; preds = %64, %58, %53, %49
  %71 = phi i8 [ 58, %53 ], [ %37, %49 ], [ 45, %64 ], [ 45, %58 ]
  %72 = phi i32 [ %28, %53 ], [ %28, %49 ], [ %65, %64 ], [ %19, %58 ]
  %73 = phi i32 [ %32, %53 ], [ %32, %49 ], [ %18, %64 ], [ %59, %58 ]
  %74 = phi i32 [ 0, %53 ], [ 0, %49 ], [ %69, %64 ], [ %63, %58 ]
  %75 = phi ptr [ %26, %53 ], [ %26, %49 ], [ %56, %64 ], [ %56, %58 ]
  %76 = getelementptr inbounds i8, ptr %20, i64 1
  %77 = getelementptr inbounds i8, ptr %21, i64 1
  %78 = getelementptr inbounds i8, ptr %13, i64 1
  store i8 %71, ptr %20, align 1, !tbaa !16
  %79 = icmp ult ptr %78, getelementptr inbounds ([51 x i8], ptr @ALINE, i64 0, i64 50)
  br i1 %79, label %80, label %84

80:                                               ; preds = %70
  %81 = icmp slt i32 %72, %2
  %82 = icmp slt i32 %73, %3
  %83 = select i1 %81, i1 true, i1 %82
  br i1 %83, label %104, label %84

84:                                               ; preds = %80, %70
  store i8 0, ptr %76, align 1, !tbaa !16
  store i8 0, ptr %77, align 1, !tbaa !16
  store i8 0, ptr %78, align 1, !tbaa !16
  %85 = add nsw i32 %16, 1
  %86 = mul nsw i32 %16, 50
  %87 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.28, i32 noundef %86) #17
  %88 = icmp ult ptr %78, getelementptr inbounds ([51 x i8], ptr @ALINE, i64 0, i64 10)
  br i1 %88, label %94, label %89

89:                                               ; preds = %89, %84
  %90 = phi ptr [ %92, %89 ], [ getelementptr inbounds ([51 x i8], ptr @ALINE, i64 0, i64 10), %84 ]
  %91 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.29) #17
  %92 = getelementptr inbounds i8, ptr %90, i64 10
  %93 = icmp ugt ptr %92, %78
  br i1 %93, label %94, label %89, !llvm.loop !58

94:                                               ; preds = %89, %84
  %95 = phi ptr [ getelementptr inbounds ([51 x i8], ptr @ALINE, i64 0, i64 10), %84 ], [ %92, %89 ]
  %96 = getelementptr inbounds i8, ptr %13, i64 6
  %97 = icmp ugt ptr %95, %96
  br i1 %97, label %100, label %98

98:                                               ; preds = %94
  %99 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.30) #17
  br label %100

100:                                              ; preds = %98, %94
  %101 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.31, i32 noundef %15, ptr noundef nonnull @ALINE, ptr noundef nonnull @CLINE, i32 noundef %14, ptr noundef nonnull @BLINE) #17
  %102 = add nsw i32 %72, %5
  %103 = add nsw i32 %73, %6
  br label %104

104:                                              ; preds = %100, %80
  %105 = phi ptr [ @BLINE, %100 ], [ %77, %80 ]
  %106 = phi ptr [ @CLINE, %100 ], [ %76, %80 ]
  %107 = phi i32 [ %85, %100 ], [ %16, %80 ]
  %108 = phi i32 [ %102, %100 ], [ %15, %80 ]
  %109 = phi i32 [ %103, %100 ], [ %14, %80 ]
  %110 = phi ptr [ @ALINE, %100 ], [ %78, %80 ]
  %111 = icmp slt i32 %72, %2
  %112 = icmp slt i32 %73, %3
  %113 = select i1 %111, i1 true, i1 %112
  br i1 %113, label %11, label %114, !llvm.loop !59

114:                                              ; preds = %104, %7
  ret i32 undef
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal i32 @locate(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) #12 {
  %4 = load i32, ptr @nn, align 4, !tbaa !11
  %5 = load i32, ptr @n1, align 4
  %6 = icmp slt i32 %4, %5
  %7 = load i32, ptr @mm, align 4
  %8 = load i32, ptr @q, align 4
  %9 = load ptr, ptr @CC, align 8
  %10 = load ptr, ptr @RR, align 8
  %11 = load ptr, ptr @EE, align 8
  %12 = load ptr, ptr @DD, align 8
  %13 = load ptr, ptr @SS, align 8
  %14 = load ptr, ptr @FF, align 8
  br i1 %6, label %36, label %15

15:                                               ; preds = %3
  %16 = sub nsw i32 0, %8
  %17 = icmp eq i32 %2, 2
  %18 = add nsw i32 %7, 1
  %19 = sext i32 %4 to i64
  %20 = sext i32 %7 to i64
  %21 = sext i32 %5 to i64
  br label %22

22:                                               ; preds = %22, %15
  %23 = phi i64 [ %19, %15 ], [ %34, %22 ]
  %24 = getelementptr inbounds i32, ptr %9, i64 %23
  store i32 0, ptr %24, align 4, !tbaa !11
  %25 = getelementptr inbounds i32, ptr %11, i64 %23
  %26 = trunc i64 %23 to i32
  store i32 %26, ptr %25, align 4, !tbaa !11
  %27 = getelementptr inbounds i32, ptr %12, i64 %23
  store i32 %16, ptr %27, align 4, !tbaa !11
  %28 = getelementptr inbounds i32, ptr %14, i64 %23
  store i32 %26, ptr %28, align 4, !tbaa !11
  %29 = icmp sgt i64 %23, %20
  %30 = select i1 %17, i1 true, i1 %29
  %31 = select i1 %30, i32 %18, i32 %26
  %32 = getelementptr inbounds i32, ptr %13, i64 %23
  store i32 %31, ptr %32, align 4
  %33 = getelementptr inbounds i32, ptr %10, i64 %23
  store i32 %31, ptr %33, align 4
  %34 = add nsw i64 %23, -1
  %35 = icmp sgt i64 %23, %21
  br i1 %35, label %22, label %36, !llvm.loop !60

36:                                               ; preds = %22, %3
  %37 = load i32, ptr @m1, align 4
  %38 = icmp slt i32 %7, %37
  %39 = load ptr, ptr @v, align 8
  %40 = load i32, ptr @r, align 4
  %41 = load i32, ptr @qr, align 4
  %42 = load i32, ptr @min, align 4
  %43 = load ptr, ptr @HH, align 8
  %44 = load ptr, ptr @II, align 8
  %45 = load ptr, ptr @JJ, align 8
  %46 = load ptr, ptr @WW, align 8
  %47 = load ptr, ptr @XX, align 8
  %48 = load ptr, ptr @YY, align 8
  %49 = sub nsw i32 0, %8
  %50 = add nsw i32 %4, 1
  br i1 %38, label %51, label %53

51:                                               ; preds = %36
  %52 = sext i32 %4 to i64
  br label %215

53:                                               ; preds = %36
  %54 = icmp eq i32 %2, 2
  %55 = load ptr, ptr @row, align 8
  %56 = sext i32 %5 to i64
  %57 = getelementptr inbounds i32, ptr %9, i64 %56
  %58 = getelementptr inbounds i32, ptr %10, i64 %56
  %59 = getelementptr inbounds i32, ptr %11, i64 %56
  %60 = getelementptr inbounds i32, ptr %12, i64 %56
  %61 = getelementptr inbounds i32, ptr %13, i64 %56
  %62 = getelementptr inbounds i32, ptr %14, i64 %56
  %63 = sext i32 %4 to i64
  %64 = sext i32 %7 to i64
  %65 = sext i32 %37 to i64
  br label %66

66:                                               ; preds = %212, %53
  %67 = phi i64 [ %64, %53 ], [ %213, %212 ]
  %68 = phi i32 [ undef, %53 ], [ %198, %212 ]
  %69 = phi i32 [ undef, %53 ], [ %197, %212 ]
  %70 = getelementptr inbounds i8, ptr %0, i64 %67
  %71 = load i8, ptr %70, align 1, !tbaa !16
  %72 = sext i8 %71 to i64
  %73 = getelementptr inbounds [256 x i32], ptr %39, i64 %72
  %74 = icmp slt i64 %67, %56
  %75 = or i1 %54, %74
  %76 = trunc i64 %67 to i32
  %77 = add i32 %76, 1
  %78 = select i1 %75, i32 %5, i32 %77
  %79 = icmp slt i32 %4, %78
  br i1 %79, label %196, label %80

80:                                               ; preds = %66
  %81 = getelementptr inbounds ptr, ptr %55, i64 %67
  %82 = sext i32 %78 to i64
  %83 = trunc i64 %67 to i32
  br label %84

84:                                               ; preds = %193, %80
  %85 = phi i64 [ %63, %80 ], [ %194, %193 ]
  %86 = phi i32 [ %50, %80 ], [ %117, %193 ]
  %87 = phi i32 [ %77, %80 ], [ %115, %193 ]
  %88 = phi i32 [ %50, %80 ], [ %110, %193 ]
  %89 = phi i32 [ %83, %80 ], [ %109, %193 ]
  %90 = phi i32 [ %50, %80 ], [ %190, %193 ]
  %91 = phi i32 [ %83, %80 ], [ %189, %193 ]
  %92 = phi i32 [ 0, %80 ], [ %112, %193 ]
  %93 = phi i32 [ %49, %80 ], [ %108, %193 ]
  %94 = phi i32 [ 0, %80 ], [ %188, %193 ]
  %95 = sub nsw i32 %93, %40
  %96 = sub nsw i32 %94, %41
  %97 = icmp slt i32 %95, %96
  br i1 %97, label %107, label %98

98:                                               ; preds = %84
  %99 = icmp eq i32 %95, %96
  br i1 %99, label %100, label %107

100:                                              ; preds = %98
  %101 = icmp slt i32 %89, %91
  br i1 %101, label %107, label %102

102:                                              ; preds = %100
  %103 = icmp eq i32 %89, %91
  %104 = icmp slt i32 %88, %90
  %105 = select i1 %103, i1 %104, i1 false
  %106 = select i1 %105, i32 %90, i32 %88
  br label %107

107:                                              ; preds = %102, %100, %98, %84
  %108 = phi i32 [ %95, %98 ], [ %96, %84 ], [ %95, %100 ], [ %95, %102 ]
  %109 = phi i32 [ %89, %98 ], [ %91, %84 ], [ %91, %100 ], [ %89, %102 ]
  %110 = phi i32 [ %88, %98 ], [ %90, %84 ], [ %90, %100 ], [ %106, %102 ]
  %111 = getelementptr inbounds i32, ptr %9, i64 %85
  %112 = load i32, ptr %111, align 4, !tbaa !11
  %113 = sub nsw i32 %112, %41
  %114 = getelementptr inbounds i32, ptr %10, i64 %85
  %115 = load i32, ptr %114, align 4, !tbaa !11
  %116 = getelementptr inbounds i32, ptr %11, i64 %85
  %117 = load i32, ptr %116, align 4, !tbaa !11
  %118 = getelementptr inbounds i32, ptr %12, i64 %85
  %119 = load i32, ptr %118, align 4, !tbaa !11
  %120 = sub nsw i32 %119, %40
  %121 = getelementptr inbounds i32, ptr %13, i64 %85
  %122 = load i32, ptr %121, align 4, !tbaa !11
  %123 = getelementptr inbounds i32, ptr %14, i64 %85
  %124 = load i32, ptr %123, align 4, !tbaa !11
  %125 = icmp slt i32 %120, %113
  br i1 %125, label %135, label %126

126:                                              ; preds = %107
  %127 = icmp eq i32 %120, %113
  br i1 %127, label %128, label %135

128:                                              ; preds = %126
  %129 = icmp slt i32 %122, %115
  br i1 %129, label %135, label %130

130:                                              ; preds = %128
  %131 = icmp eq i32 %122, %115
  %132 = icmp slt i32 %124, %117
  %133 = select i1 %131, i1 %132, i1 false
  %134 = select i1 %133, i32 %117, i32 %124
  br label %135

135:                                              ; preds = %130, %128, %126, %107
  %136 = phi i32 [ %120, %126 ], [ %113, %107 ], [ %113, %128 ], [ %113, %130 ]
  %137 = phi i32 [ %122, %126 ], [ %115, %107 ], [ %115, %128 ], [ %122, %130 ]
  %138 = phi i32 [ %124, %126 ], [ %117, %107 ], [ %117, %128 ], [ %134, %130 ]
  %139 = load ptr, ptr %81, align 8, !tbaa !7
  store ptr %139, ptr @z, align 8, !tbaa !7
  %140 = icmp eq ptr %139, null
  %141 = trunc i64 %85 to i32
  br i1 %140, label %150, label %146

142:                                              ; preds = %146
  %143 = getelementptr inbounds %struct.ONE, ptr %147, i64 0, i32 1
  %144 = load ptr, ptr %143, align 8, !tbaa !7
  store ptr %144, ptr @z, align 8, !tbaa !7
  %145 = icmp eq ptr %144, null
  br i1 %145, label %150, label %146, !llvm.loop !61

146:                                              ; preds = %142, %135
  %147 = phi ptr [ %144, %142 ], [ %139, %135 ]
  %148 = load i32, ptr %147, align 8, !tbaa !20
  %149 = icmp eq i32 %148, %141
  br i1 %149, label %157, label %142

150:                                              ; preds = %142, %135
  %151 = getelementptr inbounds i8, ptr %1, i64 %85
  %152 = load i8, ptr %151, align 1, !tbaa !16
  %153 = sext i8 %152 to i64
  %154 = getelementptr inbounds i32, ptr %73, i64 %153
  %155 = load i32, ptr %154, align 4, !tbaa !11
  %156 = add nsw i32 %155, %92
  br label %157

157:                                              ; preds = %150, %146
  %158 = phi i32 [ %156, %150 ], [ 0, %146 ]
  %159 = icmp slt i32 %158, 1
  %160 = select i1 %159, i32 0, i32 %158
  %161 = select i1 %159, i32 %83, i32 %87
  %162 = select i1 %159, i32 %141, i32 %86
  %163 = icmp slt i32 %160, %136
  br i1 %163, label %173, label %164

164:                                              ; preds = %157
  %165 = icmp eq i32 %160, %136
  br i1 %165, label %166, label %173

166:                                              ; preds = %164
  %167 = icmp slt i32 %161, %137
  br i1 %167, label %173, label %168

168:                                              ; preds = %166
  %169 = icmp eq i32 %161, %137
  %170 = icmp slt i32 %162, %138
  %171 = select i1 %169, i1 %170, i1 false
  %172 = select i1 %171, i32 %138, i32 %162
  br label %173

173:                                              ; preds = %168, %166, %164, %157
  %174 = phi i32 [ %160, %164 ], [ %136, %157 ], [ %136, %166 ], [ %136, %168 ]
  %175 = phi i32 [ %161, %164 ], [ %137, %157 ], [ %137, %166 ], [ %161, %168 ]
  %176 = phi i32 [ %162, %164 ], [ %138, %157 ], [ %138, %166 ], [ %172, %168 ]
  %177 = icmp slt i32 %174, %108
  br i1 %177, label %187, label %178

178:                                              ; preds = %173
  %179 = icmp eq i32 %174, %108
  br i1 %179, label %180, label %187

180:                                              ; preds = %178
  %181 = icmp slt i32 %175, %109
  br i1 %181, label %187, label %182

182:                                              ; preds = %180
  %183 = icmp eq i32 %175, %109
  %184 = icmp slt i32 %176, %110
  %185 = select i1 %183, i1 %184, i1 false
  %186 = select i1 %185, i32 %110, i32 %176
  br label %187

187:                                              ; preds = %182, %180, %178, %173
  %188 = phi i32 [ %174, %178 ], [ %108, %173 ], [ %108, %180 ], [ %108, %182 ]
  %189 = phi i32 [ %175, %178 ], [ %109, %173 ], [ %109, %180 ], [ %175, %182 ]
  %190 = phi i32 [ %176, %178 ], [ %110, %173 ], [ %110, %180 ], [ %186, %182 ]
  store i32 %188, ptr %111, align 4, !tbaa !11
  store i32 %189, ptr %114, align 4, !tbaa !11
  store i32 %190, ptr %116, align 4, !tbaa !11
  store i32 %136, ptr %118, align 4, !tbaa !11
  store i32 %137, ptr %121, align 4, !tbaa !11
  store i32 %138, ptr %123, align 4, !tbaa !11
  %191 = icmp sgt i32 %188, %42
  br i1 %191, label %192, label %193

192:                                              ; preds = %187
  store i1 true, ptr @flag, align 2
  br label %193

193:                                              ; preds = %192, %187
  %194 = add nsw i64 %85, -1
  %195 = icmp sgt i64 %85, %82
  br i1 %195, label %84, label %196, !llvm.loop !62

196:                                              ; preds = %193, %66
  %197 = phi i32 [ %69, %66 ], [ %137, %193 ]
  %198 = phi i32 [ %68, %66 ], [ %138, %193 ]
  br i1 %75, label %199, label %212

199:                                              ; preds = %196
  %200 = load i32, ptr %57, align 4, !tbaa !11
  %201 = getelementptr inbounds i32, ptr %43, i64 %67
  store i32 %200, ptr %201, align 4, !tbaa !11
  %202 = load i32, ptr %58, align 4, !tbaa !11
  %203 = getelementptr inbounds i32, ptr %44, i64 %67
  store i32 %202, ptr %203, align 4, !tbaa !11
  %204 = load i32, ptr %59, align 4, !tbaa !11
  %205 = getelementptr inbounds i32, ptr %45, i64 %67
  store i32 %204, ptr %205, align 4, !tbaa !11
  %206 = load i32, ptr %60, align 4, !tbaa !11
  %207 = getelementptr inbounds i32, ptr %46, i64 %67
  store i32 %206, ptr %207, align 4, !tbaa !11
  %208 = load i32, ptr %61, align 4, !tbaa !11
  %209 = getelementptr inbounds i32, ptr %47, i64 %67
  store i32 %208, ptr %209, align 4, !tbaa !11
  %210 = load i32, ptr %62, align 4, !tbaa !11
  %211 = getelementptr inbounds i32, ptr %48, i64 %67
  store i32 %210, ptr %211, align 4, !tbaa !11
  br label %212

212:                                              ; preds = %199, %196
  %213 = add nsw i64 %67, -1
  %214 = icmp sgt i64 %67, %65
  br i1 %214, label %66, label %215, !llvm.loop !63

215:                                              ; preds = %212, %51
  %216 = phi i64 [ %52, %51 ], [ %63, %212 ]
  %217 = phi i32 [ undef, %51 ], [ %197, %212 ]
  %218 = phi i32 [ undef, %51 ], [ %198, %212 ]
  store i32 %37, ptr @rl, align 4, !tbaa !11
  store i32 %5, ptr @cl, align 4, !tbaa !11
  %219 = icmp eq i32 %2, 1
  %220 = icmp eq i32 %2, 2
  %221 = add nsw i32 %7, 1
  br label %222

222:                                              ; preds = %663, %215
  %223 = phi i32 [ %5, %215 ], [ %.lcssa13, %663 ]
  %224 = phi i32 [ %37, %215 ], [ %.lcssa6, %663 ]
  %225 = phi i32 [ %217, %215 ], [ %.lcssa2, %663 ]
  %226 = phi i32 [ %218, %215 ], [ %.lcssa, %663 ]
  %227 = load ptr, ptr @row, align 8
  %228 = load i32, ptr @rl, align 4
  %229 = load i32, ptr @cl, align 4
  br label %230

230:                                              ; preds = %644, %222
  %231 = phi i32 [ %224, %222 ], [ %.lcssa12, %644 ]
  %232 = phi i32 [ %223, %222 ], [ %457, %644 ]
  %233 = phi i32 [ %224, %222 ], [ %.lcssa11, %644 ]
  %234 = phi i32 [ %225, %222 ], [ %619, %644 ]
  %235 = phi i32 [ %226, %222 ], [ %620, %644 ]
  %236 = phi i16 [ 1, %222 ], [ %623, %644 ]
  %237 = phi i16 [ 1, %222 ], [ %645, %644 ]
  %238 = icmp sgt i32 %232, 1
  %239 = icmp slt i32 %4, %232
  %240 = sext i32 %232 to i64
  %241 = sext i32 %232 to i64
  %242 = icmp sgt i32 %232, 1
  br label %243

243:                                              ; preds = %452, %230
  %244 = phi i32 [ %440, %452 ], [ %231, %230 ]
  %245 = phi i32 [ %441, %452 ], [ %233, %230 ]
  %246 = phi i32 [ %442, %452 ], [ %234, %230 ]
  %247 = phi i32 [ %443, %452 ], [ %235, %230 ]
  %248 = phi i16 [ %453, %452 ], [ %236, %230 ]
  %249 = phi i16 [ %445, %452 ], [ %237, %230 ]
  %250 = icmp ne i16 %249, 0
  %251 = icmp sgt i32 %245, 1
  %252 = select i1 %250, i1 %251, i1 false
  br i1 %252, label %256, label %253

253:                                              ; preds = %243
  %254 = icmp ne i16 %248, 0
  %255 = select i1 %254, i1 %238, i1 false
  br i1 %255, label %439, label %659

256:                                              ; preds = %243
  %257 = add nsw i32 %245, -1
  store i32 %257, ptr @m1, align 4, !tbaa !11
  %258 = zext i32 %257 to i64
  %259 = getelementptr inbounds i8, ptr %0, i64 %258
  %260 = load i8, ptr %259, align 1, !tbaa !16
  %261 = sext i8 %260 to i64
  %262 = getelementptr inbounds [256 x i32], ptr %39, i64 %261
  br i1 %239, label %263, label %265

263:                                              ; preds = %256
  %264 = zext i32 %257 to i64
  br label %397

265:                                              ; preds = %256
  %266 = zext i32 %257 to i64
  %267 = getelementptr inbounds ptr, ptr %227, i64 %266
  br label %268

268:                                              ; preds = %393, %265
  %269 = phi i64 [ %216, %265 ], [ %395, %393 ]
  %270 = phi i16 [ 0, %265 ], [ %394, %393 ]
  %271 = phi i32 [ %50, %265 ], [ %302, %393 ]
  %272 = phi i32 [ %245, %265 ], [ %300, %393 ]
  %273 = phi i32 [ %50, %265 ], [ %295, %393 ]
  %274 = phi i32 [ %257, %265 ], [ %294, %393 ]
  %275 = phi i32 [ %50, %265 ], [ %375, %393 ]
  %276 = phi i32 [ %257, %265 ], [ %374, %393 ]
  %277 = phi i32 [ 0, %265 ], [ %297, %393 ]
  %278 = phi i32 [ %49, %265 ], [ %293, %393 ]
  %279 = phi i32 [ 0, %265 ], [ %373, %393 ]
  %280 = sub nsw i32 %278, %40
  %281 = sub nsw i32 %279, %41
  %282 = icmp slt i32 %280, %281
  br i1 %282, label %292, label %283

283:                                              ; preds = %268
  %284 = icmp eq i32 %280, %281
  br i1 %284, label %285, label %292

285:                                              ; preds = %283
  %286 = icmp slt i32 %274, %276
  br i1 %286, label %292, label %287

287:                                              ; preds = %285
  %288 = icmp eq i32 %274, %276
  %289 = icmp slt i32 %273, %275
  %290 = select i1 %288, i1 %289, i1 false
  %291 = select i1 %290, i32 %275, i32 %273
  br label %292

292:                                              ; preds = %287, %285, %283, %268
  %293 = phi i32 [ %280, %283 ], [ %281, %268 ], [ %280, %285 ], [ %280, %287 ]
  %294 = phi i32 [ %274, %283 ], [ %276, %268 ], [ %276, %285 ], [ %274, %287 ]
  %295 = phi i32 [ %273, %283 ], [ %275, %268 ], [ %275, %285 ], [ %291, %287 ]
  %296 = getelementptr inbounds i32, ptr %9, i64 %269
  %297 = load i32, ptr %296, align 4, !tbaa !11
  %298 = sub nsw i32 %297, %41
  %299 = getelementptr inbounds i32, ptr %10, i64 %269
  %300 = load i32, ptr %299, align 4, !tbaa !11
  %301 = getelementptr inbounds i32, ptr %11, i64 %269
  %302 = load i32, ptr %301, align 4, !tbaa !11
  %303 = getelementptr inbounds i32, ptr %12, i64 %269
  %304 = load i32, ptr %303, align 4, !tbaa !11
  %305 = sub nsw i32 %304, %40
  %306 = getelementptr inbounds i32, ptr %13, i64 %269
  %307 = load i32, ptr %306, align 4, !tbaa !11
  %308 = getelementptr inbounds i32, ptr %14, i64 %269
  %309 = load i32, ptr %308, align 4, !tbaa !11
  %310 = icmp slt i32 %305, %298
  br i1 %310, label %320, label %311

311:                                              ; preds = %292
  %312 = icmp eq i32 %305, %298
  br i1 %312, label %313, label %320

313:                                              ; preds = %311
  %314 = icmp slt i32 %307, %300
  br i1 %314, label %320, label %315

315:                                              ; preds = %313
  %316 = icmp eq i32 %307, %300
  %317 = icmp slt i32 %309, %302
  %318 = select i1 %316, i1 %317, i1 false
  %319 = select i1 %318, i32 %302, i32 %309
  br label %320

320:                                              ; preds = %315, %313, %311, %292
  %321 = phi i32 [ %305, %311 ], [ %298, %292 ], [ %298, %313 ], [ %298, %315 ]
  %322 = phi i32 [ %307, %311 ], [ %300, %292 ], [ %300, %313 ], [ %307, %315 ]
  %323 = phi i32 [ %309, %311 ], [ %302, %292 ], [ %302, %313 ], [ %319, %315 ]
  %324 = load ptr, ptr %267, align 8, !tbaa !7
  store ptr %324, ptr @z, align 8, !tbaa !7
  %325 = icmp eq ptr %324, null
  %326 = trunc i64 %269 to i32
  br i1 %325, label %335, label %331

327:                                              ; preds = %331
  %328 = getelementptr inbounds %struct.ONE, ptr %332, i64 0, i32 1
  %329 = load ptr, ptr %328, align 8, !tbaa !7
  store ptr %329, ptr @z, align 8, !tbaa !7
  %330 = icmp eq ptr %329, null
  br i1 %330, label %335, label %331, !llvm.loop !64

331:                                              ; preds = %327, %320
  %332 = phi ptr [ %329, %327 ], [ %324, %320 ]
  %333 = load i32, ptr %332, align 8, !tbaa !20
  %334 = icmp eq i32 %333, %326
  br i1 %334, label %342, label %327

335:                                              ; preds = %327, %320
  %336 = getelementptr inbounds i8, ptr %1, i64 %269
  %337 = load i8, ptr %336, align 1, !tbaa !16
  %338 = sext i8 %337 to i64
  %339 = getelementptr inbounds i32, ptr %262, i64 %338
  %340 = load i32, ptr %339, align 4, !tbaa !11
  %341 = add nsw i32 %340, %277
  br label %342

342:                                              ; preds = %335, %331
  %343 = phi i32 [ %341, %335 ], [ 0, %331 ]
  %344 = icmp slt i32 %343, 1
  %345 = select i1 %344, i32 0, i32 %343
  %346 = select i1 %344, i32 %257, i32 %272
  %347 = select i1 %344, i32 %326, i32 %271
  %348 = icmp slt i32 %345, %321
  br i1 %348, label %358, label %349

349:                                              ; preds = %342
  %350 = icmp eq i32 %345, %321
  br i1 %350, label %351, label %358

351:                                              ; preds = %349
  %352 = icmp slt i32 %346, %322
  br i1 %352, label %358, label %353

353:                                              ; preds = %351
  %354 = icmp eq i32 %346, %322
  %355 = icmp slt i32 %347, %323
  %356 = select i1 %354, i1 %355, i1 false
  %357 = select i1 %356, i32 %323, i32 %347
  br label %358

358:                                              ; preds = %353, %351, %349, %342
  %359 = phi i32 [ %345, %349 ], [ %321, %342 ], [ %321, %351 ], [ %321, %353 ]
  %360 = phi i32 [ %346, %349 ], [ %322, %342 ], [ %322, %351 ], [ %346, %353 ]
  %361 = phi i32 [ %347, %349 ], [ %323, %342 ], [ %323, %351 ], [ %357, %353 ]
  %362 = icmp slt i32 %359, %293
  br i1 %362, label %372, label %363

363:                                              ; preds = %358
  %364 = icmp eq i32 %359, %293
  br i1 %364, label %365, label %372

365:                                              ; preds = %363
  %366 = icmp slt i32 %360, %294
  br i1 %366, label %372, label %367

367:                                              ; preds = %365
  %368 = icmp eq i32 %360, %294
  %369 = icmp slt i32 %361, %295
  %370 = select i1 %368, i1 %369, i1 false
  %371 = select i1 %370, i32 %295, i32 %361
  br label %372

372:                                              ; preds = %367, %365, %363, %358
  %373 = phi i32 [ %359, %363 ], [ %293, %358 ], [ %293, %365 ], [ %293, %367 ]
  %374 = phi i32 [ %360, %363 ], [ %294, %358 ], [ %294, %365 ], [ %360, %367 ]
  %375 = phi i32 [ %361, %363 ], [ %295, %358 ], [ %295, %365 ], [ %371, %367 ]
  store i32 %373, ptr %296, align 4, !tbaa !11
  store i32 %374, ptr %299, align 4, !tbaa !11
  store i32 %375, ptr %301, align 4, !tbaa !11
  store i32 %321, ptr %303, align 4, !tbaa !11
  store i32 %322, ptr %306, align 4, !tbaa !11
  store i32 %323, ptr %308, align 4, !tbaa !11
  %376 = icmp sgt i32 %373, %42
  br i1 %376, label %377, label %378

377:                                              ; preds = %372
  store i1 true, ptr @flag, align 2
  br label %378

378:                                              ; preds = %377, %372
  %379 = icmp eq i16 %270, 0
  br i1 %379, label %380, label %393

380:                                              ; preds = %378
  %381 = icmp sgt i32 %374, %228
  %382 = icmp sgt i32 %375, %229
  %383 = select i1 %381, i1 %382, i1 false
  br i1 %383, label %392, label %384

384:                                              ; preds = %380
  %385 = icmp sgt i32 %322, %228
  %386 = icmp sgt i32 %323, %229
  %387 = select i1 %385, i1 %386, i1 false
  br i1 %387, label %392, label %388

388:                                              ; preds = %384
  %389 = icmp sgt i32 %294, %228
  %390 = icmp sgt i32 %295, %229
  %391 = select i1 %389, i1 %390, i1 false
  br i1 %391, label %392, label %393

392:                                              ; preds = %388, %384, %380
  br label %393

393:                                              ; preds = %392, %388, %378
  %394 = phi i16 [ 1, %378 ], [ 1, %392 ], [ 0, %388 ]
  %395 = add nsw i64 %269, -1
  %396 = icmp sgt i64 %269, %240
  br i1 %396, label %268, label %397, !llvm.loop !65

397:                                              ; preds = %393, %263
  %398 = phi i64 [ %264, %263 ], [ %266, %393 ]
  %399 = phi i64 [ %241, %263 ], [ %240, %393 ]
  %400 = phi i32 [ %257, %263 ], [ %374, %393 ]
  %401 = phi i32 [ %50, %263 ], [ %375, %393 ]
  %402 = phi i32 [ %246, %263 ], [ %322, %393 ]
  %403 = phi i32 [ %247, %263 ], [ %323, %393 ]
  %404 = phi i32 [ %257, %263 ], [ %294, %393 ]
  %405 = phi i32 [ %50, %263 ], [ %295, %393 ]
  %406 = phi i16 [ 0, %263 ], [ %394, %393 ]
  %407 = getelementptr inbounds i32, ptr %9, i64 %399
  %408 = load i32, ptr %407, align 4, !tbaa !11
  %409 = getelementptr inbounds i32, ptr %43, i64 %398
  store i32 %408, ptr %409, align 4, !tbaa !11
  %410 = getelementptr inbounds i32, ptr %10, i64 %399
  %411 = load i32, ptr %410, align 4, !tbaa !11
  %412 = getelementptr inbounds i32, ptr %44, i64 %398
  store i32 %411, ptr %412, align 4, !tbaa !11
  %413 = getelementptr inbounds i32, ptr %11, i64 %399
  %414 = load i32, ptr %413, align 4, !tbaa !11
  %415 = getelementptr inbounds i32, ptr %45, i64 %398
  store i32 %414, ptr %415, align 4, !tbaa !11
  %416 = getelementptr inbounds i32, ptr %12, i64 %399
  %417 = load i32, ptr %416, align 4, !tbaa !11
  %418 = getelementptr inbounds i32, ptr %46, i64 %398
  store i32 %417, ptr %418, align 4, !tbaa !11
  %419 = getelementptr inbounds i32, ptr %13, i64 %399
  %420 = load i32, ptr %419, align 4, !tbaa !11
  %421 = getelementptr inbounds i32, ptr %47, i64 %398
  store i32 %420, ptr %421, align 4, !tbaa !11
  %422 = getelementptr inbounds i32, ptr %14, i64 %399
  %423 = load i32, ptr %422, align 4, !tbaa !11
  %424 = getelementptr inbounds i32, ptr %48, i64 %398
  store i32 %423, ptr %424, align 4, !tbaa !11
  %425 = icmp eq i16 %248, 0
  br i1 %425, label %426, label %439

426:                                              ; preds = %397
  %427 = icmp sgt i32 %400, %228
  %428 = icmp sgt i32 %401, %229
  %429 = select i1 %427, i1 %428, i1 false
  br i1 %429, label %438, label %430

430:                                              ; preds = %426
  %431 = icmp sgt i32 %402, %228
  %432 = icmp sgt i32 %403, %229
  %433 = select i1 %431, i1 %432, i1 false
  br i1 %433, label %438, label %434

434:                                              ; preds = %430
  %435 = icmp sgt i32 %404, %228
  %436 = icmp sgt i32 %405, %229
  %437 = select i1 %435, i1 %436, i1 false
  br i1 %437, label %438, label %439

438:                                              ; preds = %434, %430, %426
  br label %439

439:                                              ; preds = %438, %434, %397, %253
  %440 = phi i32 [ %257, %397 ], [ %257, %438 ], [ %257, %434 ], [ %244, %253 ]
  %441 = phi i32 [ %257, %397 ], [ %257, %438 ], [ %257, %434 ], [ %245, %253 ]
  %442 = phi i32 [ %402, %397 ], [ %402, %438 ], [ %402, %434 ], [ %246, %253 ]
  %443 = phi i32 [ %403, %397 ], [ %403, %438 ], [ %403, %434 ], [ %247, %253 ]
  %444 = phi i16 [ 1, %397 ], [ 1, %438 ], [ 0, %434 ], [ %248, %253 ]
  %445 = phi i16 [ %406, %397 ], [ %406, %438 ], [ %406, %434 ], [ %249, %253 ]
  br i1 %219, label %446, label %452

446:                                              ; preds = %439
  %447 = add nsw i32 %441, 1
  %448 = icmp ne i32 %232, %447
  %449 = icmp ne i16 %445, 0
  %450 = or i1 %449, %448
  %451 = select i1 %450, i16 %444, i16 0
  br label %452

452:                                              ; preds = %446, %439
  %453 = phi i16 [ %444, %439 ], [ %451, %446 ]
  %454 = icmp ne i16 %453, 0
  %455 = select i1 %454, i1 %242, i1 false
  br i1 %455, label %456, label %243, !llvm.loop !66

456:                                              ; preds = %452
  %.lcssa12 = phi i32 [ %440, %452 ]
  %.lcssa11 = phi i32 [ %441, %452 ]
  %.lcssa10 = phi i32 [ %442, %452 ]
  %.lcssa9 = phi i32 [ %443, %452 ]
  %.lcssa8 = phi i16 [ %445, %452 ]
  %457 = add nsw i32 %232, -1
  store i32 %457, ptr @n1, align 4, !tbaa !11
  %458 = zext i32 %457 to i64
  %459 = getelementptr inbounds i8, ptr %1, i64 %458
  %460 = load i8, ptr %459, align 1, !tbaa !16
  %461 = sext i8 %460 to i64
  %462 = getelementptr inbounds [256 x i32], ptr %39, i64 %461
  %463 = icmp slt i32 %7, %457
  %464 = or i1 %220, %463
  br i1 %464, label %473, label %465

465:                                              ; preds = %456
  %466 = getelementptr inbounds i32, ptr %43, i64 %458
  %467 = load i32, ptr %466, align 4, !tbaa !11
  %468 = getelementptr inbounds i32, ptr %44, i64 %458
  %469 = load i32, ptr %468, align 4, !tbaa !11
  %470 = getelementptr inbounds i32, ptr %45, i64 %458
  %471 = load i32, ptr %470, align 4, !tbaa !11
  %472 = add nsw i32 %232, -2
  br label %473

473:                                              ; preds = %465, %456
  %474 = phi i32 [ %467, %465 ], [ 0, %456 ]
  %475 = phi i32 [ %457, %465 ], [ %221, %456 ]
  %476 = phi i32 [ %469, %465 ], [ %221, %456 ]
  %477 = phi i32 [ %471, %465 ], [ %232, %456 ]
  %478 = phi i32 [ %472, %465 ], [ %7, %456 ]
  %479 = icmp slt i32 %478, %.lcssa11
  br i1 %479, label %480, label %482

480:                                              ; preds = %473
  %481 = sext i32 %.lcssa11 to i64
  br label %615

482:                                              ; preds = %473
  %483 = sext i32 %478 to i64
  %484 = sext i32 %.lcssa11 to i64
  br label %485

485:                                              ; preds = %611, %482
  %486 = phi i64 [ %483, %482 ], [ %613, %611 ]
  %487 = phi i16 [ 0, %482 ], [ %612, %611 ]
  %488 = phi i32 [ %477, %482 ], [ %519, %611 ]
  %489 = phi i32 [ %476, %482 ], [ %517, %611 ]
  %490 = phi i32 [ %457, %482 ], [ %512, %611 ]
  %491 = phi i32 [ %475, %482 ], [ %511, %611 ]
  %492 = phi i32 [ %457, %482 ], [ %593, %611 ]
  %493 = phi i32 [ %475, %482 ], [ %592, %611 ]
  %494 = phi i32 [ %474, %482 ], [ %514, %611 ]
  %495 = phi i32 [ %49, %482 ], [ %510, %611 ]
  %496 = phi i32 [ 0, %482 ], [ %591, %611 ]
  %497 = sub nsw i32 %495, %40
  %498 = sub nsw i32 %496, %41
  %499 = icmp slt i32 %497, %498
  br i1 %499, label %509, label %500

500:                                              ; preds = %485
  %501 = icmp eq i32 %497, %498
  br i1 %501, label %502, label %509

502:                                              ; preds = %500
  %503 = icmp slt i32 %491, %493
  br i1 %503, label %509, label %504

504:                                              ; preds = %502
  %505 = icmp eq i32 %491, %493
  %506 = icmp slt i32 %490, %492
  %507 = select i1 %505, i1 %506, i1 false
  %508 = select i1 %507, i32 %492, i32 %490
  br label %509

509:                                              ; preds = %504, %502, %500, %485
  %510 = phi i32 [ %497, %500 ], [ %498, %485 ], [ %497, %502 ], [ %497, %504 ]
  %511 = phi i32 [ %491, %500 ], [ %493, %485 ], [ %493, %502 ], [ %491, %504 ]
  %512 = phi i32 [ %490, %500 ], [ %492, %485 ], [ %492, %502 ], [ %508, %504 ]
  %513 = getelementptr inbounds i32, ptr %43, i64 %486
  %514 = load i32, ptr %513, align 4, !tbaa !11
  %515 = sub nsw i32 %514, %41
  %516 = getelementptr inbounds i32, ptr %44, i64 %486
  %517 = load i32, ptr %516, align 4, !tbaa !11
  %518 = getelementptr inbounds i32, ptr %45, i64 %486
  %519 = load i32, ptr %518, align 4, !tbaa !11
  %520 = getelementptr inbounds i32, ptr %46, i64 %486
  %521 = load i32, ptr %520, align 4, !tbaa !11
  %522 = sub nsw i32 %521, %40
  %523 = getelementptr inbounds i32, ptr %47, i64 %486
  %524 = load i32, ptr %523, align 4, !tbaa !11
  %525 = getelementptr inbounds i32, ptr %48, i64 %486
  %526 = load i32, ptr %525, align 4, !tbaa !11
  %527 = icmp slt i32 %522, %515
  br i1 %527, label %537, label %528

528:                                              ; preds = %509
  %529 = icmp eq i32 %522, %515
  br i1 %529, label %530, label %537

530:                                              ; preds = %528
  %531 = icmp slt i32 %524, %517
  br i1 %531, label %537, label %532

532:                                              ; preds = %530
  %533 = icmp eq i32 %524, %517
  %534 = icmp slt i32 %526, %519
  %535 = select i1 %533, i1 %534, i1 false
  %536 = select i1 %535, i32 %519, i32 %526
  br label %537

537:                                              ; preds = %532, %530, %528, %509
  %538 = phi i32 [ %522, %528 ], [ %515, %509 ], [ %515, %530 ], [ %515, %532 ]
  %539 = phi i32 [ %524, %528 ], [ %517, %509 ], [ %517, %530 ], [ %524, %532 ]
  %540 = phi i32 [ %526, %528 ], [ %519, %509 ], [ %519, %530 ], [ %536, %532 ]
  %541 = getelementptr inbounds ptr, ptr %227, i64 %486
  %542 = load ptr, ptr %541, align 8, !tbaa !7
  store ptr %542, ptr @z, align 8, !tbaa !7
  %543 = icmp eq ptr %542, null
  br i1 %543, label %552, label %548

544:                                              ; preds = %548
  %545 = getelementptr inbounds %struct.ONE, ptr %549, i64 0, i32 1
  %546 = load ptr, ptr %545, align 8, !tbaa !7
  store ptr %546, ptr @z, align 8, !tbaa !7
  %547 = icmp eq ptr %546, null
  br i1 %547, label %552, label %548, !llvm.loop !67

548:                                              ; preds = %544, %537
  %549 = phi ptr [ %546, %544 ], [ %542, %537 ]
  %550 = load i32, ptr %549, align 8, !tbaa !20
  %551 = icmp eq i32 %550, %457
  br i1 %551, label %559, label %544

552:                                              ; preds = %544, %537
  %553 = getelementptr inbounds i8, ptr %0, i64 %486
  %554 = load i8, ptr %553, align 1, !tbaa !16
  %555 = sext i8 %554 to i64
  %556 = getelementptr inbounds i32, ptr %462, i64 %555
  %557 = load i32, ptr %556, align 4, !tbaa !11
  %558 = add nsw i32 %557, %494
  br label %559

559:                                              ; preds = %552, %548
  %560 = phi i32 [ %558, %552 ], [ 0, %548 ]
  %561 = icmp slt i32 %560, 1
  %562 = select i1 %561, i32 0, i32 %560
  %563 = trunc i64 %486 to i32
  %564 = select i1 %561, i32 %563, i32 %489
  %565 = select i1 %561, i32 %457, i32 %488
  %566 = icmp slt i32 %562, %538
  br i1 %566, label %576, label %567

567:                                              ; preds = %559
  %568 = icmp eq i32 %562, %538
  br i1 %568, label %569, label %576

569:                                              ; preds = %567
  %570 = icmp slt i32 %564, %539
  br i1 %570, label %576, label %571

571:                                              ; preds = %569
  %572 = icmp eq i32 %564, %539
  %573 = icmp slt i32 %565, %540
  %574 = select i1 %572, i1 %573, i1 false
  %575 = select i1 %574, i32 %540, i32 %565
  br label %576

576:                                              ; preds = %571, %569, %567, %559
  %577 = phi i32 [ %562, %567 ], [ %538, %559 ], [ %538, %569 ], [ %538, %571 ]
  %578 = phi i32 [ %564, %567 ], [ %539, %559 ], [ %539, %569 ], [ %564, %571 ]
  %579 = phi i32 [ %565, %567 ], [ %540, %559 ], [ %540, %569 ], [ %575, %571 ]
  %580 = icmp slt i32 %577, %510
  br i1 %580, label %590, label %581

581:                                              ; preds = %576
  %582 = icmp eq i32 %577, %510
  br i1 %582, label %583, label %590

583:                                              ; preds = %581
  %584 = icmp slt i32 %578, %511
  br i1 %584, label %590, label %585

585:                                              ; preds = %583
  %586 = icmp eq i32 %578, %511
  %587 = icmp slt i32 %579, %512
  %588 = select i1 %586, i1 %587, i1 false
  %589 = select i1 %588, i32 %512, i32 %579
  br label %590

590:                                              ; preds = %585, %583, %581, %576
  %591 = phi i32 [ %577, %581 ], [ %510, %576 ], [ %510, %583 ], [ %510, %585 ]
  %592 = phi i32 [ %578, %581 ], [ %511, %576 ], [ %511, %583 ], [ %578, %585 ]
  %593 = phi i32 [ %579, %581 ], [ %512, %576 ], [ %512, %583 ], [ %589, %585 ]
  store i32 %591, ptr %513, align 4, !tbaa !11
  store i32 %592, ptr %516, align 4, !tbaa !11
  store i32 %593, ptr %518, align 4, !tbaa !11
  store i32 %538, ptr %520, align 4, !tbaa !11
  store i32 %539, ptr %523, align 4, !tbaa !11
  store i32 %540, ptr %525, align 4, !tbaa !11
  %594 = icmp sgt i32 %591, %42
  br i1 %594, label %595, label %596

595:                                              ; preds = %590
  store i1 true, ptr @flag, align 2
  br label %596

596:                                              ; preds = %595, %590
  %597 = icmp eq i16 %487, 0
  br i1 %597, label %598, label %611

598:                                              ; preds = %596
  %599 = icmp sgt i32 %592, %228
  %600 = icmp sgt i32 %593, %229
  %601 = select i1 %599, i1 %600, i1 false
  br i1 %601, label %610, label %602

602:                                              ; preds = %598
  %603 = icmp sgt i32 %539, %228
  %604 = icmp sgt i32 %540, %229
  %605 = select i1 %603, i1 %604, i1 false
  br i1 %605, label %610, label %606

606:                                              ; preds = %602
  %607 = icmp sgt i32 %511, %228
  %608 = icmp sgt i32 %512, %229
  %609 = select i1 %607, i1 %608, i1 false
  br i1 %609, label %610, label %611

610:                                              ; preds = %606, %602, %598
  br label %611

611:                                              ; preds = %610, %606, %596
  %612 = phi i16 [ 1, %596 ], [ 1, %610 ], [ 0, %606 ]
  %613 = add nsw i64 %486, -1
  %614 = icmp sgt i64 %486, %484
  br i1 %614, label %485, label %615, !llvm.loop !68

615:                                              ; preds = %611, %480
  %616 = phi i64 [ %481, %480 ], [ %484, %611 ]
  %617 = phi i32 [ %475, %480 ], [ %592, %611 ]
  %618 = phi i32 [ %457, %480 ], [ %593, %611 ]
  %619 = phi i32 [ %.lcssa10, %480 ], [ %539, %611 ]
  %620 = phi i32 [ %.lcssa9, %480 ], [ %540, %611 ]
  %621 = phi i32 [ %475, %480 ], [ %511, %611 ]
  %622 = phi i32 [ %457, %480 ], [ %512, %611 ]
  %623 = phi i16 [ 0, %480 ], [ %612, %611 ]
  %624 = getelementptr inbounds i32, ptr %43, i64 %616
  %625 = load i32, ptr %624, align 4, !tbaa !11
  %626 = sext i32 %457 to i64
  %627 = getelementptr inbounds i32, ptr %9, i64 %626
  store i32 %625, ptr %627, align 4, !tbaa !11
  %628 = getelementptr inbounds i32, ptr %44, i64 %616
  %629 = load i32, ptr %628, align 4, !tbaa !11
  %630 = getelementptr inbounds i32, ptr %10, i64 %626
  store i32 %629, ptr %630, align 4, !tbaa !11
  %631 = getelementptr inbounds i32, ptr %45, i64 %616
  %632 = load i32, ptr %631, align 4, !tbaa !11
  %633 = getelementptr inbounds i32, ptr %11, i64 %626
  store i32 %632, ptr %633, align 4, !tbaa !11
  %634 = getelementptr inbounds i32, ptr %46, i64 %616
  %635 = load i32, ptr %634, align 4, !tbaa !11
  %636 = getelementptr inbounds i32, ptr %12, i64 %626
  store i32 %635, ptr %636, align 4, !tbaa !11
  %637 = getelementptr inbounds i32, ptr %47, i64 %616
  %638 = load i32, ptr %637, align 4, !tbaa !11
  %639 = getelementptr inbounds i32, ptr %13, i64 %626
  store i32 %638, ptr %639, align 4, !tbaa !11
  %640 = getelementptr inbounds i32, ptr %48, i64 %616
  %641 = load i32, ptr %640, align 4, !tbaa !11
  %642 = getelementptr inbounds i32, ptr %14, i64 %626
  store i32 %641, ptr %642, align 4, !tbaa !11
  %643 = icmp eq i16 %.lcssa8, 0
  br i1 %643, label %646, label %644

644:                                              ; preds = %658, %654, %615
  %645 = phi i16 [ 0, %654 ], [ 1, %658 ], [ 1, %615 ]
  br label %230, !llvm.loop !66

646:                                              ; preds = %615
  %647 = icmp sgt i32 %617, %228
  %648 = icmp sgt i32 %618, %229
  %649 = select i1 %647, i1 %648, i1 false
  br i1 %649, label %658, label %650

650:                                              ; preds = %646
  %651 = icmp sgt i32 %619, %228
  %652 = icmp sgt i32 %620, %229
  %653 = select i1 %651, i1 %652, i1 false
  br i1 %653, label %658, label %654

654:                                              ; preds = %650
  %655 = icmp sgt i32 %621, %228
  %656 = icmp sgt i32 %622, %229
  %657 = select i1 %655, i1 %656, i1 false
  br i1 %657, label %658, label %644

658:                                              ; preds = %654, %650, %646
  br label %644

659:                                              ; preds = %253
  %.lcssa13 = phi i32 [ %232, %253 ]
  %.lcssa6 = phi i32 [ %244, %253 ]
  %.lcssa4 = phi i32 [ %245, %253 ]
  %.lcssa2 = phi i32 [ %246, %253 ]
  %.lcssa = phi i32 [ %247, %253 ]
  %660 = icmp eq i32 %.lcssa4, 1
  %661 = icmp eq i32 %.lcssa13, 1
  %662 = select i1 %660, i1 %661, i1 false
  br i1 %662, label %666, label %663

663:                                              ; preds = %659
  %664 = tail call i32 @no_cross() #17, !range !69
  %665 = icmp eq i32 %664, 0
  br i1 %665, label %222, label %666

666:                                              ; preds = %663, %659
  %667 = phi i32 [ %.lcssa13, %663 ], [ 1, %659 ]
  %668 = phi i32 [ %.lcssa4, %663 ], [ 1, %659 ]
  %669 = add nsw i32 %668, -1
  store i32 %669, ptr @m1, align 4, !tbaa !11
  %670 = add nsw i32 %667, -1
  store i32 %670, ptr @n1, align 4, !tbaa !11
  ret i32 undef
}

; Function Attrs: nofree nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal i32 @small_pass(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) #11 {
  %5 = load i32, ptr @n1, align 4, !tbaa !11
  %6 = load i32, ptr @nn, align 4, !tbaa !11
  %7 = icmp slt i32 %5, %6
  %8 = load i32, ptr @m1, align 4, !tbaa !11
  br i1 %7, label %9, label %38

9:                                                ; preds = %4
  %10 = load ptr, ptr @CC, align 8, !tbaa !7
  %11 = load ptr, ptr @RR, align 8, !tbaa !7
  %12 = load ptr, ptr @EE, align 8, !tbaa !7
  %13 = load i32, ptr @q, align 4, !tbaa !11
  %14 = sub nsw i32 0, %13
  %15 = load ptr, ptr @DD, align 8, !tbaa !7
  %16 = load ptr, ptr @SS, align 8, !tbaa !7
  %17 = load ptr, ptr @FF, align 8, !tbaa !7
  %18 = sext i32 %5 to i64
  %19 = shl nsw i64 %18, 2
  %20 = add nsw i64 %19, 4
  %21 = getelementptr i8, ptr %10, i64 %20
  %22 = xor i32 %5, -1
  %23 = add i32 %6, %22
  %24 = zext i32 %23 to i64
  %25 = shl nuw nsw i64 %24, 2
  %26 = add nuw nsw i64 %25, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %21, i8 0, i64 %26, i1 false), !tbaa !11
  %27 = sext i32 %6 to i64
  br label %28

28:                                               ; preds = %28, %9
  %29 = phi i64 [ %18, %9 ], [ %30, %28 ]
  %30 = add nsw i64 %29, 1
  %31 = getelementptr inbounds i32, ptr %11, i64 %30
  store i32 %8, ptr %31, align 4, !tbaa !11
  %32 = getelementptr inbounds i32, ptr %12, i64 %30
  %33 = trunc i64 %30 to i32
  store i32 %33, ptr %32, align 4, !tbaa !11
  %34 = getelementptr inbounds i32, ptr %15, i64 %30
  store i32 %14, ptr %34, align 4, !tbaa !11
  %35 = getelementptr inbounds i32, ptr %16, i64 %30
  store i32 %8, ptr %35, align 4, !tbaa !11
  %36 = getelementptr inbounds i32, ptr %17, i64 %30
  store i32 %33, ptr %36, align 4, !tbaa !11
  %37 = icmp eq i64 %30, %27
  br i1 %37, label %38, label %28, !llvm.loop !70

38:                                               ; preds = %28, %4
  %39 = load i32, ptr @mm, align 4, !tbaa !11
  %40 = icmp slt i32 %8, %39
  br i1 %40, label %41, label %231

41:                                               ; preds = %38
  %42 = icmp eq i32 %3, 2
  %43 = sext i32 %8 to i64
  br label %52

44:                                               ; preds = %224
  %.lcssa = phi i32 [ %225, %224 ]
  %45 = load i32, ptr @mm, align 4, !tbaa !11
  br label %46

46:                                               ; preds = %85, %44
  %47 = phi i32 [ %45, %44 ], [ %53, %85 ]
  %48 = phi i32 [ %.lcssa, %44 ], [ %54, %85 ]
  %49 = phi i32 [ %.lcssa, %44 ], [ %55, %85 ]
  %50 = sext i32 %47 to i64
  %51 = icmp slt i64 %57, %50
  br i1 %51, label %52, label %231, !llvm.loop !71

52:                                               ; preds = %46, %41
  %53 = phi i32 [ %39, %41 ], [ %47, %46 ]
  %54 = phi i32 [ %6, %41 ], [ %48, %46 ]
  %55 = phi i32 [ %6, %41 ], [ %49, %46 ]
  %56 = phi i64 [ %43, %41 ], [ %57, %46 ]
  %57 = add nsw i64 %56, 1
  %58 = load i32, ptr @q, align 4, !tbaa !11
  %59 = sub nsw i32 0, %58
  %60 = load ptr, ptr @v, align 8, !tbaa !7
  %61 = getelementptr inbounds i8, ptr %0, i64 %57
  %62 = load i8, ptr %61, align 1, !tbaa !16
  %63 = sext i8 %62 to i64
  %64 = getelementptr inbounds [256 x i32], ptr %60, i64 %63
  %65 = load i32, ptr @n1, align 4
  %66 = sext i32 %65 to i64
  %67 = icmp slt i64 %56, %66
  %68 = select i1 %42, i1 true, i1 %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %52
  %70 = add nsw i32 %65, 1
  %71 = trunc i64 %56 to i32
  br label %85

72:                                               ; preds = %52
  %73 = load ptr, ptr @CC, align 8, !tbaa !7
  %74 = getelementptr inbounds i32, ptr %73, i64 %57
  %75 = load i32, ptr %74, align 4, !tbaa !11
  %76 = load ptr, ptr @RR, align 8, !tbaa !7
  %77 = getelementptr inbounds i32, ptr %76, i64 %57
  %78 = load i32, ptr %77, align 4, !tbaa !11
  %79 = load ptr, ptr @EE, align 8, !tbaa !7
  %80 = getelementptr inbounds i32, ptr %79, i64 %57
  %81 = load i32, ptr %80, align 4, !tbaa !11
  %82 = trunc i64 %56 to i32
  %83 = add i32 %82, 2
  %84 = trunc i64 %57 to i32
  br label %85

85:                                               ; preds = %72, %69
  %86 = phi i32 [ 0, %69 ], [ %75, %72 ]
  %87 = phi i32 [ %65, %69 ], [ %84, %72 ]
  %88 = phi i32 [ %71, %69 ], [ %78, %72 ]
  %89 = phi i32 [ %65, %69 ], [ %81, %72 ]
  %90 = phi i32 [ %70, %69 ], [ %83, %72 ]
  %91 = icmp sgt i32 %90, %55
  br i1 %91, label %46, label %92

92:                                               ; preds = %85
  %93 = sext i32 %90 to i64
  %94 = trunc i64 %57 to i32
  %95 = load i32, ptr @r, align 4, !tbaa !11
  %96 = load i32, ptr @qr, align 4, !tbaa !11
  br label %97

97:                                               ; preds = %224, %92
  %98 = phi i32 [ %54, %92 ], [ %225, %224 ]
  %99 = phi i32 [ %96, %92 ], [ %226, %224 ]
  %100 = phi i32 [ %95, %92 ], [ %227, %224 ]
  %101 = phi i64 [ %93, %92 ], [ %228, %224 ]
  %102 = phi i32 [ %89, %92 ], [ %136, %224 ]
  %103 = phi i32 [ %88, %92 ], [ %133, %224 ]
  %104 = phi i32 [ %87, %92 ], [ %126, %224 ]
  %105 = phi i32 [ %94, %92 ], [ %125, %224 ]
  %106 = phi i32 [ %87, %92 ], [ %216, %224 ]
  %107 = phi i32 [ %94, %92 ], [ %215, %224 ]
  %108 = phi i32 [ %86, %92 ], [ %129, %224 ]
  %109 = phi i32 [ %59, %92 ], [ %124, %224 ]
  %110 = phi i32 [ 0, %92 ], [ %214, %224 ]
  %111 = sub nsw i32 %109, %100
  %112 = sub nsw i32 %110, %99
  %113 = icmp slt i32 %111, %112
  br i1 %113, label %123, label %114

114:                                              ; preds = %97
  %115 = icmp eq i32 %111, %112
  br i1 %115, label %116, label %123

116:                                              ; preds = %114
  %117 = icmp slt i32 %105, %107
  br i1 %117, label %123, label %118

118:                                              ; preds = %116
  %119 = icmp eq i32 %105, %107
  %120 = icmp slt i32 %104, %106
  %121 = select i1 %119, i1 %120, i1 false
  %122 = select i1 %121, i32 %106, i32 %104
  br label %123

123:                                              ; preds = %118, %116, %114, %97
  %124 = phi i32 [ %111, %114 ], [ %112, %97 ], [ %111, %116 ], [ %111, %118 ]
  %125 = phi i32 [ %105, %114 ], [ %107, %97 ], [ %107, %116 ], [ %105, %118 ]
  %126 = phi i32 [ %104, %114 ], [ %106, %97 ], [ %106, %116 ], [ %122, %118 ]
  %127 = load ptr, ptr @CC, align 8, !tbaa !7
  %128 = getelementptr inbounds i32, ptr %127, i64 %101
  %129 = load i32, ptr %128, align 4, !tbaa !11
  %130 = sub nsw i32 %129, %99
  %131 = load ptr, ptr @RR, align 8, !tbaa !7
  %132 = getelementptr inbounds i32, ptr %131, i64 %101
  %133 = load i32, ptr %132, align 4, !tbaa !11
  %134 = load ptr, ptr @EE, align 8, !tbaa !7
  %135 = getelementptr inbounds i32, ptr %134, i64 %101
  %136 = load i32, ptr %135, align 4, !tbaa !11
  %137 = load ptr, ptr @DD, align 8, !tbaa !7
  %138 = getelementptr inbounds i32, ptr %137, i64 %101
  %139 = load i32, ptr %138, align 4, !tbaa !11
  %140 = sub nsw i32 %139, %100
  %141 = load ptr, ptr @SS, align 8, !tbaa !7
  %142 = getelementptr inbounds i32, ptr %141, i64 %101
  %143 = load i32, ptr %142, align 4, !tbaa !11
  %144 = load ptr, ptr @FF, align 8, !tbaa !7
  %145 = getelementptr inbounds i32, ptr %144, i64 %101
  %146 = load i32, ptr %145, align 4, !tbaa !11
  %147 = icmp slt i32 %140, %130
  br i1 %147, label %157, label %148

148:                                              ; preds = %123
  %149 = icmp eq i32 %140, %130
  br i1 %149, label %150, label %157

150:                                              ; preds = %148
  %151 = icmp slt i32 %143, %133
  br i1 %151, label %157, label %152

152:                                              ; preds = %150
  %153 = icmp eq i32 %143, %133
  %154 = icmp slt i32 %146, %136
  %155 = select i1 %153, i1 %154, i1 false
  %156 = select i1 %155, i32 %136, i32 %146
  br label %157

157:                                              ; preds = %152, %150, %148, %123
  %158 = phi i32 [ %140, %148 ], [ %130, %123 ], [ %130, %150 ], [ %130, %152 ]
  %159 = phi i32 [ %143, %148 ], [ %133, %123 ], [ %133, %150 ], [ %143, %152 ]
  %160 = phi i32 [ %146, %148 ], [ %136, %123 ], [ %136, %150 ], [ %156, %152 ]
  %161 = load ptr, ptr @row, align 8, !tbaa !7
  %162 = getelementptr inbounds ptr, ptr %161, i64 %57
  %163 = load ptr, ptr %162, align 8, !tbaa !7
  store ptr %163, ptr @z, align 8, !tbaa !7
  %164 = icmp eq ptr %163, null
  br i1 %164, label %175, label %165

165:                                              ; preds = %157
  %166 = trunc i64 %101 to i32
  br label %171

167:                                              ; preds = %171
  %168 = getelementptr inbounds %struct.ONE, ptr %172, i64 0, i32 1
  %169 = load ptr, ptr %168, align 8, !tbaa !7
  store ptr %169, ptr @z, align 8, !tbaa !7
  %170 = icmp eq ptr %169, null
  br i1 %170, label %175, label %171, !llvm.loop !72

171:                                              ; preds = %167, %165
  %172 = phi ptr [ %169, %167 ], [ %163, %165 ]
  %173 = load i32, ptr %172, align 8, !tbaa !20
  %174 = icmp eq i32 %173, %166
  br i1 %174, label %182, label %167

175:                                              ; preds = %167, %157
  %176 = getelementptr inbounds i8, ptr %1, i64 %101
  %177 = load i8, ptr %176, align 1, !tbaa !16
  %178 = sext i8 %177 to i64
  %179 = getelementptr inbounds i32, ptr %64, i64 %178
  %180 = load i32, ptr %179, align 4, !tbaa !11
  %181 = add nsw i32 %180, %108
  br label %182

182:                                              ; preds = %175, %171
  %183 = phi i32 [ %181, %175 ], [ 0, %171 ]
  %184 = icmp slt i32 %183, 1
  %185 = select i1 %184, i32 0, i32 %183
  %186 = select i1 %184, i32 %94, i32 %103
  %187 = trunc i64 %101 to i32
  %188 = select i1 %184, i32 %187, i32 %102
  %189 = icmp slt i32 %185, %158
  br i1 %189, label %199, label %190

190:                                              ; preds = %182
  %191 = icmp eq i32 %185, %158
  br i1 %191, label %192, label %199

192:                                              ; preds = %190
  %193 = icmp slt i32 %186, %159
  br i1 %193, label %199, label %194

194:                                              ; preds = %192
  %195 = icmp eq i32 %186, %159
  %196 = icmp slt i32 %188, %160
  %197 = select i1 %195, i1 %196, i1 false
  %198 = select i1 %197, i32 %160, i32 %188
  br label %199

199:                                              ; preds = %194, %192, %190, %182
  %200 = phi i32 [ %185, %190 ], [ %158, %182 ], [ %158, %192 ], [ %158, %194 ]
  %201 = phi i32 [ %186, %190 ], [ %159, %182 ], [ %159, %192 ], [ %186, %194 ]
  %202 = phi i32 [ %188, %190 ], [ %160, %182 ], [ %160, %192 ], [ %198, %194 ]
  %203 = icmp slt i32 %200, %124
  br i1 %203, label %213, label %204

204:                                              ; preds = %199
  %205 = icmp eq i32 %200, %124
  br i1 %205, label %206, label %213

206:                                              ; preds = %204
  %207 = icmp slt i32 %201, %125
  br i1 %207, label %213, label %208

208:                                              ; preds = %206
  %209 = icmp eq i32 %201, %125
  %210 = icmp slt i32 %202, %126
  %211 = select i1 %209, i1 %210, i1 false
  %212 = select i1 %211, i32 %126, i32 %202
  br label %213

213:                                              ; preds = %208, %206, %204, %199
  %214 = phi i32 [ %200, %204 ], [ %124, %199 ], [ %124, %206 ], [ %124, %208 ]
  %215 = phi i32 [ %201, %204 ], [ %125, %199 ], [ %125, %206 ], [ %201, %208 ]
  %216 = phi i32 [ %202, %204 ], [ %126, %199 ], [ %126, %206 ], [ %212, %208 ]
  store i32 %214, ptr %128, align 4, !tbaa !11
  store i32 %215, ptr %132, align 4, !tbaa !11
  store i32 %216, ptr %135, align 4, !tbaa !11
  store i32 %158, ptr %138, align 4, !tbaa !11
  store i32 %159, ptr %142, align 4, !tbaa !11
  store i32 %160, ptr %145, align 4, !tbaa !11
  %217 = load i32, ptr @min, align 4, !tbaa !11
  %218 = icmp sgt i32 %214, %217
  br i1 %218, label %219, label %224

219:                                              ; preds = %213
  %220 = tail call i32 @addnode(i32 noundef %214, i32 noundef %215, i32 noundef %216, i32 noundef %94, i32 noundef %187, i32 noundef %2, i32 noundef %217) #17
  store i32 %220, ptr @min, align 4, !tbaa !11
  %221 = load i32, ptr @r, align 4, !tbaa !11
  %222 = load i32, ptr @qr, align 4, !tbaa !11
  %223 = load i32, ptr @nn, align 4, !tbaa !11
  br label %224

224:                                              ; preds = %219, %213
  %225 = phi i32 [ %98, %213 ], [ %223, %219 ]
  %226 = phi i32 [ %99, %213 ], [ %222, %219 ]
  %227 = phi i32 [ %100, %213 ], [ %221, %219 ]
  %228 = add nsw i64 %101, 1
  %229 = sext i32 %225 to i64
  %230 = icmp slt i64 %101, %229
  br i1 %230, label %97, label %44, !llvm.loop !73

231:                                              ; preds = %46, %38
  ret i32 undef
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #14

; Function Attrs: nofree norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal i32 @addnode(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) #12 {
  %8 = load ptr, ptr @most, align 8, !tbaa !7
  %9 = icmp eq ptr %8, null
  br i1 %9, label %18, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.NODE, ptr %8, i64 0, i32 1
  %12 = load i32, ptr %11, align 4, !tbaa !26
  %13 = icmp eq i32 %12, %1
  br i1 %13, label %14, label %18

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.NODE, ptr %8, i64 0, i32 2
  %16 = load i32, ptr %15, align 4, !tbaa !27
  %17 = icmp eq i32 %16, %2
  br i1 %17, label %38, label %18

18:                                               ; preds = %14, %10, %7
  %19 = load i32, ptr @numnode, align 4, !tbaa !11
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %64

21:                                               ; preds = %18
  %22 = load ptr, ptr @LIST, align 8, !tbaa !7
  %23 = zext i32 %19 to i64
  br label %24

24:                                               ; preds = %35, %21
  %25 = phi i64 [ 0, %21 ], [ %36, %35 ]
  %26 = getelementptr inbounds ptr, ptr %22, i64 %25
  %27 = load ptr, ptr %26, align 8, !tbaa !7
  store ptr %27, ptr @most, align 8, !tbaa !7
  %28 = getelementptr inbounds %struct.NODE, ptr %27, i64 0, i32 1
  %29 = load i32, ptr %28, align 4, !tbaa !26
  %30 = icmp eq i32 %29, %1
  br i1 %30, label %31, label %35

31:                                               ; preds = %24
  %32 = getelementptr inbounds %struct.NODE, ptr %27, i64 0, i32 2
  %33 = load i32, ptr %32, align 4, !tbaa !27
  %34 = icmp eq i32 %33, %2
  br i1 %34, label %38, label %35

35:                                               ; preds = %31, %24
  %36 = add nuw nsw i64 %25, 1
  %37 = icmp eq i64 %36, %23
  br i1 %37, label %64, label %24, !llvm.loop !74

38:                                               ; preds = %31, %14
  %39 = phi ptr [ %8, %14 ], [ %27, %31 ]
  %40 = load i32, ptr %39, align 4, !tbaa !24
  %41 = icmp slt i32 %40, %0
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  store i32 %0, ptr %39, align 4, !tbaa !24
  %43 = getelementptr inbounds %struct.NODE, ptr %39, i64 0, i32 3
  store i32 %3, ptr %43, align 4, !tbaa !28
  %44 = getelementptr inbounds %struct.NODE, ptr %39, i64 0, i32 4
  store i32 %4, ptr %44, align 4, !tbaa !29
  br label %45

45:                                               ; preds = %42, %38
  %46 = getelementptr inbounds %struct.NODE, ptr %39, i64 0, i32 5
  %47 = load i32, ptr %46, align 4, !tbaa !30
  %48 = icmp sgt i32 %47, %3
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  store i32 %3, ptr %46, align 4, !tbaa !30
  br label %50

50:                                               ; preds = %49, %45
  %51 = getelementptr inbounds %struct.NODE, ptr %39, i64 0, i32 6
  %52 = load i32, ptr %51, align 4, !tbaa !31
  %53 = icmp slt i32 %52, %3
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  store i32 %3, ptr %51, align 4, !tbaa !31
  br label %55

55:                                               ; preds = %54, %50
  %56 = getelementptr inbounds %struct.NODE, ptr %39, i64 0, i32 7
  %57 = load i32, ptr %56, align 4, !tbaa !32
  %58 = icmp sgt i32 %57, %4
  br i1 %58, label %59, label %60

59:                                               ; preds = %55
  store i32 %4, ptr %56, align 4, !tbaa !32
  br label %60

60:                                               ; preds = %59, %55
  %61 = getelementptr inbounds %struct.NODE, ptr %39, i64 0, i32 8
  %62 = load i32, ptr %61, align 4, !tbaa !33
  %63 = icmp slt i32 %62, %4
  br i1 %63, label %82, label %85

64:                                               ; preds = %35, %18
  %65 = icmp eq i32 %19, %5
  br i1 %65, label %71, label %66

66:                                               ; preds = %64
  %67 = load ptr, ptr @LIST, align 8, !tbaa !7
  %68 = add nsw i32 %19, 1
  store i32 %68, ptr @numnode, align 4, !tbaa !11
  %69 = sext i32 %19 to i64
  %70 = getelementptr inbounds ptr, ptr %67, i64 %69
  br label %71

71:                                               ; preds = %66, %64
  %72 = phi ptr [ %70, %66 ], [ @low, %64 ]
  %73 = load ptr, ptr %72, align 8, !tbaa !7
  store ptr %73, ptr @most, align 8, !tbaa !7
  store i32 %0, ptr %73, align 4, !tbaa !24
  %74 = getelementptr inbounds %struct.NODE, ptr %73, i64 0, i32 1
  store i32 %1, ptr %74, align 4, !tbaa !26
  %75 = getelementptr inbounds %struct.NODE, ptr %73, i64 0, i32 2
  store i32 %2, ptr %75, align 4, !tbaa !27
  %76 = getelementptr inbounds %struct.NODE, ptr %73, i64 0, i32 3
  store i32 %3, ptr %76, align 4, !tbaa !28
  %77 = getelementptr inbounds %struct.NODE, ptr %73, i64 0, i32 4
  store i32 %4, ptr %77, align 4, !tbaa !29
  %78 = getelementptr inbounds %struct.NODE, ptr %73, i64 0, i32 6
  store i32 %3, ptr %78, align 4, !tbaa !31
  %79 = getelementptr inbounds %struct.NODE, ptr %73, i64 0, i32 5
  store i32 %3, ptr %79, align 4, !tbaa !30
  %80 = getelementptr inbounds %struct.NODE, ptr %73, i64 0, i32 8
  store i32 %4, ptr %80, align 4, !tbaa !33
  %81 = getelementptr inbounds %struct.NODE, ptr %73, i64 0, i32 7
  br label %82

82:                                               ; preds = %71, %60
  %83 = phi ptr [ %81, %71 ], [ %61, %60 ]
  %84 = phi ptr [ %73, %71 ], [ %39, %60 ]
  store i32 %4, ptr %83, align 4, !tbaa !11
  br label %85

85:                                               ; preds = %82, %60
  %86 = phi ptr [ %39, %60 ], [ %84, %82 ]
  %87 = load i32, ptr @numnode, align 4, !tbaa !11
  %88 = icmp eq i32 %87, %5
  br i1 %88, label %89, label %116

89:                                               ; preds = %85
  %90 = load ptr, ptr @low, align 8
  %91 = icmp ne ptr %90, %86
  %92 = icmp ne ptr %90, null
  %93 = and i1 %92, %91
  br i1 %93, label %113, label %94

94:                                               ; preds = %89
  %95 = load ptr, ptr @LIST, align 8, !tbaa !7
  %96 = load ptr, ptr %95, align 8, !tbaa !7
  store ptr %96, ptr @low, align 8, !tbaa !7
  %97 = icmp sgt i32 %5, 1
  br i1 %97, label %98, label %113

98:                                               ; preds = %94
  %99 = zext i32 %5 to i64
  br label %100

100:                                              ; preds = %109, %98
  %101 = phi i64 [ 1, %98 ], [ %111, %109 ]
  %102 = phi ptr [ %96, %98 ], [ %110, %109 ]
  %103 = getelementptr inbounds ptr, ptr %95, i64 %101
  %104 = load ptr, ptr %103, align 8, !tbaa !7
  %105 = load i32, ptr %104, align 4, !tbaa !24
  %106 = load i32, ptr %102, align 4, !tbaa !24
  %107 = icmp slt i32 %105, %106
  br i1 %107, label %108, label %109

108:                                              ; preds = %100
  store ptr %104, ptr @low, align 8, !tbaa !7
  br label %109

109:                                              ; preds = %108, %100
  %110 = phi ptr [ %102, %100 ], [ %104, %108 ]
  %111 = add nuw nsw i64 %101, 1
  %112 = icmp eq i64 %111, %99
  br i1 %112, label %113, label %100, !llvm.loop !75

113:                                              ; preds = %109, %94, %89
  %114 = phi ptr [ %96, %94 ], [ %90, %89 ], [ %110, %109 ]
  %115 = load i32, ptr %114, align 4, !tbaa !24
  br label %116

116:                                              ; preds = %113, %85
  %117 = phi i32 [ %115, %113 ], [ %6, %85 ]
  ret i32 %117
}

; Function Attrs: nofree norecurse nosync nounwind optsize memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define internal i32 @no_cross() #15 {
  %1 = load i32, ptr @numnode, align 4, !tbaa !11
  %2 = icmp sgt i32 %1, 0
  br i1 %2, label %3, label %46

3:                                                ; preds = %0
  %4 = load ptr, ptr @LIST, align 8, !tbaa !7
  %5 = load i32, ptr @mm, align 4, !tbaa !11
  %6 = load i32, ptr @nn, align 4
  %7 = load i32, ptr @m1, align 4
  %8 = add nsw i32 %7, -1
  %9 = load i32, ptr @n1, align 4
  %10 = add nsw i32 %9, -1
  %11 = load i32, ptr @rl, align 4
  %12 = load i32, ptr @cl, align 4
  %13 = zext i32 %1 to i64
  br label %14

14:                                               ; preds = %43, %3
  %15 = phi i64 [ 0, %3 ], [ %44, %43 ]
  %16 = getelementptr inbounds ptr, ptr %4, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !7
  %18 = getelementptr inbounds %struct.NODE, ptr %17, i64 0, i32 1
  %19 = load i32, ptr %18, align 4, !tbaa !26
  %20 = icmp sgt i32 %19, %5
  br i1 %20, label %43, label %21

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.NODE, ptr %17, i64 0, i32 2
  %23 = load i32, ptr %22, align 4, !tbaa !27
  %24 = icmp sgt i32 %23, %6
  br i1 %24, label %43, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.NODE, ptr %17, i64 0, i32 6
  %27 = load i32, ptr %26, align 4, !tbaa !31
  %28 = icmp slt i32 %27, %8
  br i1 %28, label %43, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.NODE, ptr %17, i64 0, i32 8
  %31 = load i32, ptr %30, align 4, !tbaa !33
  %32 = icmp slt i32 %31, %10
  br i1 %32, label %43, label %33

33:                                               ; preds = %29
  %34 = icmp slt i32 %19, %11
  %35 = icmp slt i32 %23, %12
  %36 = select i1 %34, i1 true, i1 %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %33
  %.lcssa4 = phi i1 [ %34, %33 ]
  %.lcssa3 = phi i1 [ %35, %33 ]
  %.lcssa2 = phi i32 [ %23, %33 ]
  %.lcssa1 = phi i64 [ %15, %33 ]
  %.lcssa = phi i32 [ %19, %33 ]
  %38 = trunc i64 %.lcssa1 to i32
  br i1 %.lcssa4, label %39, label %40

39:                                               ; preds = %37
  store i32 %.lcssa, ptr @rl, align 4, !tbaa !11
  br label %40

40:                                               ; preds = %39, %37
  br i1 %.lcssa3, label %41, label %42

41:                                               ; preds = %40
  store i32 %.lcssa2, ptr @cl, align 4, !tbaa !11
  br label %42

42:                                               ; preds = %41, %40
  store i1 true, ptr @flag, align 2
  br label %46

43:                                               ; preds = %33, %29, %25, %21, %14
  %44 = add nuw nsw i64 %15, 1
  %45 = icmp eq i64 %44, %13
  br i1 %45, label %46, label %14, !llvm.loop !76

46:                                               ; preds = %43, %42, %0
  %47 = phi i32 [ %38, %42 ], [ 0, %0 ], [ %1, %43 ]
  %48 = icmp eq i32 %47, %1
  %49 = zext i1 %48 to i32
  ret i32 %49
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #10

; Function Attrs: nofree nounwind optsize
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #2

attributes #0 = { noreturn nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
attributes #4 = { noreturn nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind optsize willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nofree nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #15 = { nofree norecurse nosync nounwind optsize memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nounwind }
attributes #17 = { optsize }
attributes #18 = { noreturn nounwind optsize }
attributes #19 = { nounwind optsize }
attributes #20 = { cold optsize }
attributes #21 = { nounwind optsize allocsize(0) }
attributes #22 = { nounwind optsize willreturn memory(read) }

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
!12 = !{!"int", !9, i64 0}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.mustprogress"}
!15 = distinct !{!15, !14}
!16 = !{!9, !9, i64 0}
!17 = distinct !{!17, !14}
!18 = distinct !{!18, !14}
!19 = distinct !{!19, !14}
!20 = !{!21, !12, i64 0}
!21 = !{!"ONE", !12, i64 0, !8, i64 8}
!22 = distinct !{!22, !14}
!23 = distinct !{!23, !14}
!24 = !{!25, !12, i64 0}
!25 = !{!"NODE", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !12, i64 32}
!26 = !{!25, !12, i64 4}
!27 = !{!25, !12, i64 8}
!28 = !{!25, !12, i64 12}
!29 = !{!25, !12, i64 16}
!30 = !{!25, !12, i64 20}
!31 = !{!25, !12, i64 24}
!32 = !{!25, !12, i64 28}
!33 = !{!25, !12, i64 32}
!34 = distinct !{!34, !14}
!35 = !{!36, !38, i64 0}
!36 = !{!"rusage", !37, i64 0, !37, i64 16, !9, i64 32, !9, i64 40, !9, i64 48, !9, i64 56, !9, i64 64, !9, i64 72, !9, i64 80, !9, i64 88, !9, i64 96, !9, i64 104, !9, i64 112, !9, i64 120, !9, i64 128, !9, i64 136}
!37 = !{!"timeval", !38, i64 0, !38, i64 8}
!38 = !{!"long", !9, i64 0}
!39 = !{!36, !38, i64 8}
!40 = distinct !{!40, !14}
!41 = distinct !{!41, !14}
!42 = distinct !{!42, !14}
!43 = distinct !{!43, !14}
!44 = distinct !{!44, !14}
!45 = distinct !{!45, !14}
!46 = distinct !{!46, !14}
!47 = !{!21, !8, i64 8}
!48 = distinct !{!48, !14}
!49 = distinct !{!49, !14}
!50 = distinct !{!50, !14}
!51 = distinct !{!51, !14}
!52 = distinct !{!52, !14}
!53 = distinct !{!53, !14}
!54 = distinct !{!54, !14}
!55 = distinct !{!55, !14}
!56 = distinct !{!56, !14}
!57 = distinct !{!57, !14}
!58 = distinct !{!58, !14}
!59 = distinct !{!59, !14}
!60 = distinct !{!60, !14}
!61 = distinct !{!61, !14}
!62 = distinct !{!62, !14}
!63 = distinct !{!63, !14}
!64 = distinct !{!64, !14}
!65 = distinct !{!65, !14}
!66 = distinct !{!66, !14}
!67 = distinct !{!67, !14}
!68 = distinct !{!68, !14}
!69 = !{i32 0, i32 2}
!70 = distinct !{!70, !14}
!71 = distinct !{!71, !14}
!72 = distinct !{!72, !14}
!73 = distinct !{!73, !14}
!74 = distinct !{!74, !14}
!75 = distinct !{!75, !14}
!76 = distinct !{!76, !14}
