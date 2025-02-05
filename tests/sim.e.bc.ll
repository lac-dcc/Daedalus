; ModuleID = 'sim.e.bc.ll'
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
@low = internal unnamed_addr global ptr null, align 8
@most = internal unnamed_addr global ptr null, align 8
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
@row = internal unnamed_addr global ptr null, align 8
@z = internal unnamed_addr global ptr null, align 8
@v = internal unnamed_addr global ptr null, align 8
@q = internal unnamed_addr global i32 0, align 4
@r = internal unnamed_addr global i32 0, align 4
@qr = internal unnamed_addr global i32 0, align 4
@LIST = internal unnamed_addr global ptr null, align 8
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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #14
  call void @llvm.lifetime.start.p0(i64 262144, ptr nonnull %4) #14
  %5 = tail call noalias ptr @fopen(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #15
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  %8 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.34)
  tail call void @exit(i32 noundef 1) #16
  unreachable

9:                                                ; preds = %2
  %10 = tail call i32 @getrusage(i32 noundef 0, ptr noundef nonnull @rusage) #17
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
  %23 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %20, ptr noundef nonnull @.str.6, ptr noundef nonnull %3) #17
  %24 = load i32, ptr %3, align 4, !tbaa !11
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %19
  %27 = load ptr, ptr @stderr, align 8, !tbaa !7
  %28 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %27, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.7) #18
  call void @exit(i32 noundef 1) #16
  unreachable

29:                                               ; preds = %19
  %30 = call fastcc ptr @ckopen(ptr noundef %21) #15
  br label %31

31:                                               ; preds = %35, %29
  %32 = phi i32 [ %36, %35 ], [ 0, %29 ]
  br label %33

33:                                               ; preds = %33, %31
  %34 = call i32 @getc(ptr noundef %30) #15
  switch i32 %34, label %35 [
    i32 -1, label %37
    i32 10, label %33
  ], !llvm.loop !13

35:                                               ; preds = %33
  %36 = add nuw nsw i32 %32, 1
  br label %31, !llvm.loop !13

37:                                               ; preds = %33
  %.lcssa9 = phi i32 [ %32, %33 ]
  %38 = call i32 @fclose(ptr noundef %30) #15
  store ptr %21, ptr @name1, align 8, !tbaa !7
  %39 = add nuw nsw i32 %.lcssa9, 1
  %40 = zext i32 %39 to i64
  %41 = call noalias ptr @malloc(i64 noundef %40) #19
  %42 = call fastcc ptr @ckopen(ptr noundef %21) #15
  br label %43

43:                                               ; preds = %47, %37
  %44 = phi i64 [ %49, %47 ], [ 0, %37 ]
  br label %45

45:                                               ; preds = %45, %43
  %46 = call i32 @getc(ptr noundef %42) #15
  switch i32 %46, label %47 [
    i32 -1, label %51
    i32 10, label %45
  ], !llvm.loop !15

47:                                               ; preds = %45
  %.lcssa6 = phi i32 [ %46, %45 ]
  %48 = trunc i32 %.lcssa6 to i8
  %49 = add nuw i64 %44, 1
  %50 = getelementptr inbounds i8, ptr %41, i64 %49
  store i8 %48, ptr %50, align 1, !tbaa !16
  br label %43, !llvm.loop !15

51:                                               ; preds = %45
  %.lcssa8 = phi i64 [ %44, %45 ]
  %52 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %21, ptr noundef nonnull dereferenceable(1) %22) #20
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %78, label %54

54:                                               ; preds = %51
  %55 = call fastcc ptr @ckopen(ptr noundef %22) #15
  br label %56

56:                                               ; preds = %60, %54
  %57 = phi i32 [ %61, %60 ], [ 0, %54 ]
  br label %58

58:                                               ; preds = %58, %56
  %59 = call i32 @getc(ptr noundef %55) #15
  switch i32 %59, label %60 [
    i32 -1, label %62
    i32 10, label %58
  ], !llvm.loop !17

60:                                               ; preds = %58
  %61 = add nuw nsw i32 %57, 1
  br label %56, !llvm.loop !17

62:                                               ; preds = %58
  %.lcssa5 = phi i32 [ %57, %58 ]
  %63 = call i32 @fclose(ptr noundef %55) #15
  store ptr %22, ptr @name2, align 8, !tbaa !7
  %64 = add nuw nsw i32 %.lcssa5, 1
  %65 = zext i32 %64 to i64
  %66 = call noalias ptr @malloc(i64 noundef %65) #19
  %67 = call fastcc ptr @ckopen(ptr noundef %22) #15
  br label %68

68:                                               ; preds = %72, %62
  %69 = phi i64 [ %74, %72 ], [ 0, %62 ]
  br label %70

70:                                               ; preds = %70, %68
  %71 = call i32 @getc(ptr noundef %67) #15
  switch i32 %71, label %72 [
    i32 -1, label %76
    i32 10, label %70
  ], !llvm.loop !18

72:                                               ; preds = %70
  %.lcssa2 = phi i32 [ %71, %70 ]
  %73 = trunc i32 %.lcssa2 to i8
  %74 = add nuw i64 %69, 1
  %75 = getelementptr inbounds i8, ptr %66, i64 %74
  store i8 %73, ptr %75, align 1, !tbaa !16
  br label %68, !llvm.loop !18

76:                                               ; preds = %70
  %.lcssa4 = phi i64 [ %69, %70 ]
  %77 = trunc i64 %.lcssa4 to i32
  br label %78

78:                                               ; preds = %76, %51
  %79 = phi ptr [ undef, %51 ], [ %66, %76 ]
  %80 = phi i32 [ undef, %51 ], [ %77, %76 ]
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
  %100 = call i32 (ptr, i32, ...) @fatalf(ptr noundef nonnull @.str.9, i32 noundef %99) #15
  unreachable

101:                                              ; preds = %84
  %102 = getelementptr inbounds i8, ptr %94, i64 2
  %103 = call double @atof(ptr noundef nonnull %102) #20
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
  %112 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %111, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.10) #18
  call void @exit(i32 noundef 1) #16
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
  %126 = trunc i64 %.lcssa8 to i32
  %127 = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %128 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, double noundef %121, double noundef %122, double noundef %123, double noundef %124, double noundef %125) #15
  %129 = fmul double %121, 1.000000e+01
  %130 = fcmp ogt double %129, 0.000000e+00
  %131 = call double @llvm.fmuladd.f64(double %121, double 1.000000e+01, double 5.000000e-01)
  %132 = call double @llvm.fmuladd.f64(double %121, double 1.000000e+01, double -5.000000e-01)
  %133 = select i1 %130, double %131, double %132
  %134 = fptosi double %133 to i32
  %135 = getelementptr inbounds [256 x [256 x i32]], ptr %4, i64 0, i64 84, i64 84
  store i32 %134, ptr %135, align 16, !tbaa !11
  %136 = getelementptr inbounds [256 x [256 x i32]], ptr %4, i64 0, i64 71, i64 71
  store i32 %134, ptr %136, align 4, !tbaa !11
  %137 = getelementptr inbounds [256 x [256 x i32]], ptr %4, i64 0, i64 67, i64 67
  store i32 %134, ptr %137, align 4, !tbaa !11
  %138 = getelementptr inbounds [256 x [256 x i32]], ptr %4, i64 0, i64 65, i64 65
  store i32 %134, ptr %138, align 4, !tbaa !11
  %139 = fmul double %122, 1.000000e+01
  %140 = fcmp ogt double %139, 0.000000e+00
  %141 = call double @llvm.fmuladd.f64(double %122, double 1.000000e+01, double 5.000000e-01)
  %142 = call double @llvm.fmuladd.f64(double %122, double 1.000000e+01, double -5.000000e-01)
  %143 = select i1 %140, double %141, double %142
  %144 = fptosi double %143 to i32
  %145 = getelementptr inbounds [256 x [256 x i32]], ptr %4, i64 0, i64 84, i64 67
  store i32 %144, ptr %145, align 4, !tbaa !11
  %146 = getelementptr inbounds [256 x [256 x i32]], ptr %4, i64 0, i64 67, i64 84
  store i32 %144, ptr %146, align 16, !tbaa !11
  %147 = getelementptr inbounds [256 x [256 x i32]], ptr %4, i64 0, i64 71, i64 65
  store i32 %144, ptr %147, align 4, !tbaa !11
  %148 = getelementptr inbounds [256 x [256 x i32]], ptr %4, i64 0, i64 65, i64 71
  store i32 %144, ptr %148, align 4, !tbaa !11
  %149 = fmul double %123, 1.000000e+01
  %150 = fcmp ogt double %149, 0.000000e+00
  %151 = call double @llvm.fmuladd.f64(double %123, double 1.000000e+01, double 5.000000e-01)
  %152 = call double @llvm.fmuladd.f64(double %123, double 1.000000e+01, double -5.000000e-01)
  %153 = select i1 %150, double %151, double %152
  %154 = fptosi double %153 to i32
  %155 = getelementptr inbounds [256 x [256 x i32]], ptr %4, i64 0, i64 84, i64 71
  store i32 %154, ptr %155, align 4, !tbaa !11
  %156 = getelementptr inbounds [256 x [256 x i32]], ptr %4, i64 0, i64 84, i64 65
  store i32 %154, ptr %156, align 4, !tbaa !11
  %157 = getelementptr inbounds [256 x [256 x i32]], ptr %4, i64 0, i64 71, i64 84
  store i32 %154, ptr %157, align 16, !tbaa !11
  %158 = getelementptr inbounds [256 x [256 x i32]], ptr %4, i64 0, i64 71, i64 67
  store i32 %154, ptr %158, align 4, !tbaa !11
  %159 = getelementptr inbounds [256 x [256 x i32]], ptr %4, i64 0, i64 67, i64 71
  store i32 %154, ptr %159, align 4, !tbaa !11
  %160 = getelementptr inbounds [256 x [256 x i32]], ptr %4, i64 0, i64 67, i64 65
  store i32 %154, ptr %160, align 4, !tbaa !11
  %161 = getelementptr inbounds [256 x [256 x i32]], ptr %4, i64 0, i64 65, i64 84
  store i32 %154, ptr %161, align 16, !tbaa !11
  %162 = getelementptr inbounds [256 x [256 x i32]], ptr %4, i64 0, i64 65, i64 67
  store i32 %154, ptr %162, align 4, !tbaa !11
  %163 = fmul double %124, 1.000000e+01
  %164 = fcmp ogt double %163, 0.000000e+00
  %165 = call double @llvm.fmuladd.f64(double %124, double 1.000000e+01, double 5.000000e-01)
  %166 = call double @llvm.fmuladd.f64(double %124, double 1.000000e+01, double -5.000000e-01)
  %167 = select i1 %164, double %165, double %166
  %168 = fptosi double %167 to i32
  %169 = fmul double %125, 1.000000e+01
  %170 = fcmp ogt double %169, 0.000000e+00
  %171 = call double @llvm.fmuladd.f64(double %125, double 1.000000e+01, double 5.000000e-01)
  %172 = call double @llvm.fmuladd.f64(double %125, double 1.000000e+01, double -5.000000e-01)
  %173 = select i1 %170, double %171, double %172
  %174 = fptosi double %173 to i32
  %175 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %21, ptr noundef nonnull dereferenceable(1) %22) #20
  %176 = icmp eq i32 %175, 0
  %177 = load i32, ptr %3, align 4, !tbaa !11
  %178 = select i1 %176, i64 1, i64 2
  %179 = select i1 %176, i32 %126, i32 %80
  %180 = select i1 %176, ptr %41, ptr %79
  %181 = call i32 (ptr, ptr, i32, i32, i32, ptr, i32, i32, i64, ...) @SIM(ptr noundef %41, ptr noundef %180, i32 noundef %126, i32 noundef %179, i32 noundef %177, ptr noundef nonnull %4, i32 noundef %168, i32 noundef %174, i64 noundef %178) #15
  call fastcc void @dtime() #15
  %182 = call i32 @fputc(i32 10, ptr nonnull %5)
  %183 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %5, ptr noundef nonnull @.str.14, ptr noundef %20, ptr noundef %21, ptr noundef %22) #15
  %184 = call i64 @fwrite(ptr nonnull @.str.15, i64 56, i64 1, ptr nonnull %5)
  %185 = call i32 @fclose(ptr noundef nonnull %5) #15
  call void @exit(i32 noundef 0) #16
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
define internal fastcc noalias ptr @ckopen(ptr noundef %0) unnamed_addr #6 {
  %2 = tail call noalias ptr @fopen(ptr noundef %0, ptr noundef nonnull @.str.8) #15
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = tail call i32 @fatalf(ptr noundef nonnull @.str.33, ptr noundef %0) #15
  unreachable

6:                                                ; preds = %1
  ret ptr %2
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
define internal i32 @fatalf(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = load ptr, ptr @stderr, align 8, !tbaa !7
  %4 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1) #18
  %5 = load ptr, ptr @stderr, align 8, !tbaa !7
  %6 = tail call i32 @putc(i32 noundef 10, ptr noundef %5) #15
  tail call void @exit(i32 noundef 1) #16
  unreachable
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(read)
declare double @atof(ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #10

; Function Attrs: nounwind optsize uwtable
define internal i32 @SIM(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) unnamed_addr #6 {
  %10 = shl i32 %3, 2
  %11 = add i32 %10, 4
  %12 = sext i32 %11 to i64
  %13 = tail call noalias ptr @malloc(i64 noundef %12) #19
  store ptr %13, ptr @CC, align 8, !tbaa !7
  %14 = tail call noalias ptr @malloc(i64 noundef %12) #19
  store ptr %14, ptr @DD, align 8, !tbaa !7
  %15 = tail call noalias ptr @malloc(i64 noundef %12) #19
  store ptr %15, ptr @RR, align 8, !tbaa !7
  %16 = tail call noalias ptr @malloc(i64 noundef %12) #19
  store ptr %16, ptr @SS, align 8, !tbaa !7
  %17 = tail call noalias ptr @malloc(i64 noundef %12) #19
  store ptr %17, ptr @EE, align 8, !tbaa !7
  %18 = tail call noalias ptr @malloc(i64 noundef %12) #19
  store ptr %18, ptr @FF, align 8, !tbaa !7
  %19 = add i32 %2, 1
  %20 = sext i32 %19 to i64
  %21 = shl i32 %19, 2
  %22 = sext i32 %21 to i64
  %23 = tail call noalias ptr @malloc(i64 noundef %22) #19
  store ptr %23, ptr @HH, align 8, !tbaa !7
  %24 = tail call noalias ptr @malloc(i64 noundef %22) #19
  store ptr %24, ptr @WW, align 8, !tbaa !7
  %25 = tail call noalias ptr @malloc(i64 noundef %22) #19
  store ptr %25, ptr @II, align 8, !tbaa !7
  %26 = tail call noalias ptr @malloc(i64 noundef %22) #19
  store ptr %26, ptr @JJ, align 8, !tbaa !7
  %27 = tail call noalias ptr @malloc(i64 noundef %22) #19
  store ptr %27, ptr @XX, align 8, !tbaa !7
  %28 = tail call noalias ptr @malloc(i64 noundef %22) #19
  store ptr %28, ptr @YY, align 8, !tbaa !7
  %29 = add nsw i32 %11, %21
  %30 = sext i32 %29 to i64
  %31 = tail call noalias ptr @malloc(i64 noundef %30) #19
  %32 = shl nsw i64 %20, 3
  %33 = tail call noalias ptr @malloc(i64 noundef %32) #19
  store ptr %33, ptr @row, align 8, !tbaa !7
  %34 = icmp slt i32 %2, 1
  br i1 %34, label %51, label %35

35:                                               ; preds = %9
  %36 = icmp eq i32 %8, 2
  %37 = zext i32 %19 to i64
  br label %38

38:                                               ; preds = %47, %35
  %39 = phi i64 [ 1, %35 ], [ %49, %47 ]
  br i1 %36, label %40, label %42

40:                                               ; preds = %38
  %41 = getelementptr inbounds ptr, ptr %33, i64 %39
  br label %47

42:                                               ; preds = %38
  %43 = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #19
  store ptr %43, ptr @z, align 8, !tbaa !7
  %44 = getelementptr inbounds ptr, ptr %33, i64 %39
  store ptr %43, ptr %44, align 8, !tbaa !7
  %45 = trunc i64 %39 to i32
  store i32 %45, ptr %43, align 8, !tbaa !20
  %46 = getelementptr inbounds %struct.ONE, ptr %43, i64 0, i32 1
  br label %47

47:                                               ; preds = %42, %40
  %48 = phi ptr [ %41, %40 ], [ %46, %42 ]
  store ptr null, ptr %48, align 8, !tbaa !7
  %49 = add nuw nsw i64 %39, 1
  %50 = icmp eq i64 %49, %37
  br i1 %50, label %51, label %38, !llvm.loop !22

51:                                               ; preds = %47, %9
  store ptr %5, ptr @v, align 8, !tbaa !7
  store i32 %6, ptr @q, align 4, !tbaa !11
  store i32 %7, ptr @r, align 4, !tbaa !11
  %52 = add nsw i32 %7, %6
  store i32 %52, ptr @qr, align 4, !tbaa !11
  %53 = sext i32 %4 to i64
  %54 = shl nsw i64 %53, 3
  %55 = tail call noalias ptr @malloc(i64 noundef %54) #19
  store ptr %55, ptr @LIST, align 8, !tbaa !7
  %56 = icmp sgt i32 %4, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %51
  %58 = zext i32 %4 to i64
  br label %59

59:                                               ; preds = %59, %57
  %60 = phi i64 [ 0, %57 ], [ %63, %59 ]
  %61 = tail call noalias dereferenceable_or_null(36) ptr @malloc(i64 noundef 36) #19
  %62 = getelementptr inbounds ptr, ptr %55, i64 %60
  store ptr %61, ptr %62, align 8, !tbaa !7
  %63 = add nuw nsw i64 %60, 1
  %64 = icmp eq i64 %63, %58
  br i1 %64, label %65, label %59, !llvm.loop !23

65:                                               ; preds = %59, %51
  %66 = load ptr, ptr @name1, align 8, !tbaa !7
  %67 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %66, i32 noundef 47) #20
  %68 = icmp eq ptr %67, null
  %69 = getelementptr inbounds i8, ptr %67, i64 1
  %70 = select i1 %68, ptr %66, ptr %69
  %71 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, ptr noundef %70) #15
  %72 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, i32 noundef %2) #15
  %73 = load ptr, ptr @name2, align 8, !tbaa !7
  %74 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %73, i32 noundef 47) #20
  %75 = icmp eq ptr %74, null
  %76 = getelementptr inbounds i8, ptr %74, i64 1
  %77 = select i1 %75, ptr %73, ptr %76
  %78 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.18, ptr noundef %77) #15
  %79 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, i32 noundef %3) #15
  store i32 0, ptr @min, align 4, !tbaa !11
  store i32 0, ptr @numnode, align 4, !tbaa !11
  %80 = icmp slt i32 %3, 1
  br i1 %80, label %97, label %81

81:                                               ; preds = %65
  %82 = load ptr, ptr @CC, align 8, !tbaa !7
  %83 = load ptr, ptr @RR, align 8, !tbaa !7
  %84 = load ptr, ptr @EE, align 8, !tbaa !7
  %85 = load i32, ptr @q, align 4, !tbaa !11
  %86 = sub nsw i32 0, %85
  %87 = load ptr, ptr @DD, align 8, !tbaa !7
  %88 = load ptr, ptr @SS, align 8, !tbaa !7
  %89 = load ptr, ptr @FF, align 8, !tbaa !7
  %90 = getelementptr i8, ptr %82, i64 4
  %91 = zext i32 %3 to i64
  %92 = shl nuw nsw i64 %91, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %90, i8 0, i64 %92, i1 false), !tbaa !11
  %93 = getelementptr i8, ptr %83, i64 4
  tail call void @llvm.memset.p0.i64(ptr align 4 %93, i8 0, i64 %92, i1 false), !tbaa !11
  %94 = getelementptr i8, ptr %88, i64 4
  tail call void @llvm.memset.p0.i64(ptr align 4 %94, i8 0, i64 %92, i1 false), !tbaa !11
  %95 = add nuw i32 %3, 1
  %96 = zext i32 %95 to i64
  br label %103

97:                                               ; preds = %103, %65
  br i1 %34, label %282, label %98

98:                                               ; preds = %97
  %99 = icmp eq i32 %8, 2
  %100 = add i32 %3, 1
  %101 = zext i32 %19 to i64
  %102 = zext i32 %100 to i64
  br label %114

103:                                              ; preds = %103, %81
  %104 = phi i64 [ 1, %81 ], [ %109, %103 ]
  %105 = getelementptr inbounds i32, ptr %84, i64 %104
  %106 = trunc i64 %104 to i32
  store i32 %106, ptr %105, align 4, !tbaa !11
  %107 = getelementptr inbounds i32, ptr %87, i64 %104
  store i32 %86, ptr %107, align 4, !tbaa !11
  %108 = getelementptr inbounds i32, ptr %89, i64 %104
  store i32 %106, ptr %108, align 4, !tbaa !11
  %109 = add nuw nsw i64 %104, 1
  %110 = icmp eq i64 %109, %96
  br i1 %110, label %97, label %103, !llvm.loop !24

111:                                              ; preds = %276, %138
  %112 = phi i32 [ %115, %138 ], [ %277, %276 ]
  %113 = icmp eq i64 %143, %101
  br i1 %113, label %282, label %114, !llvm.loop !25

114:                                              ; preds = %111, %98
  %115 = phi i32 [ 0, %98 ], [ %112, %111 ]
  %116 = phi i64 [ 1, %98 ], [ %143, %111 ]
  %117 = load i32, ptr @q, align 4, !tbaa !11
  %118 = sub nsw i32 0, %117
  %119 = load ptr, ptr @v, align 8, !tbaa !7
  %120 = getelementptr inbounds i8, ptr %0, i64 %116
  %121 = load i8, ptr %120, align 1, !tbaa !16
  %122 = sext i8 %121 to i64
  %123 = getelementptr inbounds [256 x i32], ptr %119, i64 %122
  br i1 %99, label %124, label %127

124:                                              ; preds = %114
  %125 = trunc i64 %116 to i32
  %126 = add i32 %125, -1
  br label %138

127:                                              ; preds = %114
  %128 = load ptr, ptr @CC, align 8, !tbaa !7
  %129 = getelementptr inbounds i32, ptr %128, i64 %116
  %130 = load i32, ptr %129, align 4, !tbaa !11
  %131 = load ptr, ptr @RR, align 8, !tbaa !7
  %132 = getelementptr inbounds i32, ptr %131, i64 %116
  %133 = load i32, ptr %132, align 4, !tbaa !11
  %134 = load ptr, ptr @EE, align 8, !tbaa !7
  %135 = getelementptr inbounds i32, ptr %134, i64 %116
  %136 = load i32, ptr %135, align 4, !tbaa !11
  %137 = trunc i64 %116 to i32
  br label %138

138:                                              ; preds = %127, %124
  %139 = phi i32 [ 0, %124 ], [ %130, %127 ]
  %140 = phi i32 [ 0, %124 ], [ %137, %127 ]
  %141 = phi i32 [ %126, %124 ], [ %133, %127 ]
  %142 = phi i32 [ 0, %124 ], [ %136, %127 ]
  %143 = add nuw nsw i64 %116, 1
  %144 = trunc i64 %143 to i32
  %145 = select i1 %99, i32 1, i32 %144
  %146 = icmp sgt i32 %145, %3
  br i1 %146, label %111, label %147

147:                                              ; preds = %138
  %148 = zext i32 %145 to i64
  %149 = trunc i64 %116 to i32
  %150 = load i32, ptr @r, align 4, !tbaa !11
  %151 = load i32, ptr @qr, align 4, !tbaa !11
  br label %152

152:                                              ; preds = %276, %147
  %153 = phi i32 [ %115, %147 ], [ %277, %276 ]
  %154 = phi i32 [ %151, %147 ], [ %278, %276 ]
  %155 = phi i32 [ %150, %147 ], [ %279, %276 ]
  %156 = phi i64 [ %148, %147 ], [ %280, %276 ]
  %157 = phi i32 [ %142, %147 ], [ %191, %276 ]
  %158 = phi i32 [ %141, %147 ], [ %188, %276 ]
  %159 = phi i32 [ %140, %147 ], [ %181, %276 ]
  %160 = phi i32 [ %149, %147 ], [ %180, %276 ]
  %161 = phi i32 [ %140, %147 ], [ %270, %276 ]
  %162 = phi i32 [ %149, %147 ], [ %269, %276 ]
  %163 = phi i32 [ %139, %147 ], [ %184, %276 ]
  %164 = phi i32 [ %118, %147 ], [ %179, %276 ]
  %165 = phi i32 [ 0, %147 ], [ %268, %276 ]
  %166 = sub nsw i32 %164, %155
  %167 = sub nsw i32 %165, %154
  %168 = icmp slt i32 %166, %167
  br i1 %168, label %178, label %169

169:                                              ; preds = %152
  %170 = icmp eq i32 %166, %167
  br i1 %170, label %171, label %178

171:                                              ; preds = %169
  %172 = icmp slt i32 %160, %162
  br i1 %172, label %178, label %173

173:                                              ; preds = %171
  %174 = icmp eq i32 %160, %162
  %175 = icmp slt i32 %159, %161
  %176 = select i1 %174, i1 %175, i1 false
  %177 = select i1 %176, i32 %161, i32 %159
  br label %178

178:                                              ; preds = %173, %171, %169, %152
  %179 = phi i32 [ %166, %169 ], [ %167, %152 ], [ %166, %171 ], [ %166, %173 ]
  %180 = phi i32 [ %160, %169 ], [ %162, %152 ], [ %162, %171 ], [ %160, %173 ]
  %181 = phi i32 [ %159, %169 ], [ %161, %152 ], [ %161, %171 ], [ %177, %173 ]
  %182 = load ptr, ptr @CC, align 8, !tbaa !7
  %183 = getelementptr inbounds i32, ptr %182, i64 %156
  %184 = load i32, ptr %183, align 4, !tbaa !11
  %185 = sub nsw i32 %184, %154
  %186 = load ptr, ptr @RR, align 8, !tbaa !7
  %187 = getelementptr inbounds i32, ptr %186, i64 %156
  %188 = load i32, ptr %187, align 4, !tbaa !11
  %189 = load ptr, ptr @EE, align 8, !tbaa !7
  %190 = getelementptr inbounds i32, ptr %189, i64 %156
  %191 = load i32, ptr %190, align 4, !tbaa !11
  %192 = load ptr, ptr @DD, align 8, !tbaa !7
  %193 = getelementptr inbounds i32, ptr %192, i64 %156
  %194 = load i32, ptr %193, align 4, !tbaa !11
  %195 = sub nsw i32 %194, %155
  %196 = load ptr, ptr @SS, align 8, !tbaa !7
  %197 = getelementptr inbounds i32, ptr %196, i64 %156
  %198 = load i32, ptr %197, align 4, !tbaa !11
  %199 = load ptr, ptr @FF, align 8, !tbaa !7
  %200 = getelementptr inbounds i32, ptr %199, i64 %156
  %201 = load i32, ptr %200, align 4, !tbaa !11
  %202 = icmp slt i32 %195, %185
  br i1 %202, label %212, label %203

203:                                              ; preds = %178
  %204 = icmp eq i32 %195, %185
  br i1 %204, label %205, label %212

205:                                              ; preds = %203
  %206 = icmp slt i32 %198, %188
  br i1 %206, label %212, label %207

207:                                              ; preds = %205
  %208 = icmp eq i32 %198, %188
  %209 = icmp slt i32 %201, %191
  %210 = select i1 %208, i1 %209, i1 false
  %211 = select i1 %210, i32 %191, i32 %201
  br label %212

212:                                              ; preds = %207, %205, %203, %178
  %213 = phi i32 [ %195, %203 ], [ %185, %178 ], [ %185, %205 ], [ %185, %207 ]
  %214 = phi i32 [ %198, %203 ], [ %188, %178 ], [ %188, %205 ], [ %198, %207 ]
  %215 = phi i32 [ %201, %203 ], [ %191, %178 ], [ %191, %205 ], [ %211, %207 ]
  %216 = load ptr, ptr @row, align 8, !tbaa !7
  %217 = getelementptr inbounds ptr, ptr %216, i64 %116
  %218 = load ptr, ptr %217, align 8, !tbaa !7
  store ptr %218, ptr @z, align 8, !tbaa !7
  %219 = icmp eq ptr %218, null
  br i1 %219, label %229, label %224

220:                                              ; preds = %224
  %221 = getelementptr inbounds %struct.ONE, ptr %225, i64 0, i32 1
  %222 = load ptr, ptr %221, align 8, !tbaa !7
  store ptr %222, ptr @z, align 8, !tbaa !7
  %223 = icmp eq ptr %222, null
  br i1 %223, label %229, label %224, !llvm.loop !26

224:                                              ; preds = %220, %212
  %225 = phi ptr [ %222, %220 ], [ %218, %212 ]
  %226 = load i32, ptr %225, align 8, !tbaa !20
  %227 = zext i32 %226 to i64
  %228 = icmp eq i64 %156, %227
  br i1 %228, label %236, label %220

229:                                              ; preds = %220, %212
  %230 = getelementptr inbounds i8, ptr %1, i64 %156
  %231 = load i8, ptr %230, align 1, !tbaa !16
  %232 = sext i8 %231 to i64
  %233 = getelementptr inbounds i32, ptr %123, i64 %232
  %234 = load i32, ptr %233, align 4, !tbaa !11
  %235 = add nsw i32 %234, %163
  br label %236

236:                                              ; preds = %229, %224
  %237 = phi i32 [ %235, %229 ], [ 0, %224 ]
  %238 = icmp slt i32 %237, 1
  %239 = select i1 %238, i32 0, i32 %237
  %240 = select i1 %238, i32 %149, i32 %158
  %241 = trunc i64 %156 to i32
  %242 = select i1 %238, i32 %241, i32 %157
  %243 = icmp slt i32 %239, %213
  br i1 %243, label %253, label %244

244:                                              ; preds = %236
  %245 = icmp eq i32 %239, %213
  br i1 %245, label %246, label %253

246:                                              ; preds = %244
  %247 = icmp slt i32 %240, %214
  br i1 %247, label %253, label %248

248:                                              ; preds = %246
  %249 = icmp eq i32 %240, %214
  %250 = icmp slt i32 %242, %215
  %251 = select i1 %249, i1 %250, i1 false
  %252 = select i1 %251, i32 %215, i32 %242
  br label %253

253:                                              ; preds = %248, %246, %244, %236
  %254 = phi i32 [ %239, %244 ], [ %213, %236 ], [ %213, %246 ], [ %213, %248 ]
  %255 = phi i32 [ %240, %244 ], [ %214, %236 ], [ %214, %246 ], [ %240, %248 ]
  %256 = phi i32 [ %242, %244 ], [ %215, %236 ], [ %215, %246 ], [ %252, %248 ]
  %257 = icmp slt i32 %254, %179
  br i1 %257, label %267, label %258

258:                                              ; preds = %253
  %259 = icmp eq i32 %254, %179
  br i1 %259, label %260, label %267

260:                                              ; preds = %258
  %261 = icmp slt i32 %255, %180
  br i1 %261, label %267, label %262

262:                                              ; preds = %260
  %263 = icmp eq i32 %255, %180
  %264 = icmp slt i32 %256, %181
  %265 = select i1 %263, i1 %264, i1 false
  %266 = select i1 %265, i32 %181, i32 %256
  br label %267

267:                                              ; preds = %262, %260, %258, %253
  %268 = phi i32 [ %254, %258 ], [ %179, %253 ], [ %179, %260 ], [ %179, %262 ]
  %269 = phi i32 [ %255, %258 ], [ %180, %253 ], [ %180, %260 ], [ %255, %262 ]
  %270 = phi i32 [ %256, %258 ], [ %181, %253 ], [ %181, %260 ], [ %266, %262 ]
  store i32 %268, ptr %183, align 4, !tbaa !11
  store i32 %269, ptr %187, align 4, !tbaa !11
  store i32 %270, ptr %190, align 4, !tbaa !11
  store i32 %213, ptr %193, align 4, !tbaa !11
  store i32 %214, ptr %197, align 4, !tbaa !11
  store i32 %215, ptr %200, align 4, !tbaa !11
  %271 = icmp sgt i32 %268, %153
  br i1 %271, label %272, label %276

272:                                              ; preds = %267
  %273 = tail call fastcc i32 @addnode(i32 noundef %268, i32 noundef %269, i32 noundef %270, i32 noundef %149, i32 noundef %241, i32 noundef %4, i32 noundef %153) #15
  store i32 %273, ptr @min, align 4, !tbaa !11
  %274 = load i32, ptr @r, align 4, !tbaa !11
  %275 = load i32, ptr @qr, align 4, !tbaa !11
  br label %276

276:                                              ; preds = %272, %267
  %277 = phi i32 [ %153, %267 ], [ %273, %272 ]
  %278 = phi i32 [ %154, %267 ], [ %275, %272 ]
  %279 = phi i32 [ %155, %267 ], [ %274, %272 ]
  %280 = add nuw nsw i64 %156, 1
  %281 = icmp eq i64 %280, %102
  br i1 %281, label %111, label %152, !llvm.loop !27

282:                                              ; preds = %111, %97
  %283 = getelementptr i8, ptr %0, i64 -1
  %284 = getelementptr i8, ptr %1, i64 -1
  br i1 %56, label %285, label %1447

285:                                              ; preds = %282
  %286 = load i32, ptr @numnode, align 4, !tbaa !11
  %287 = icmp eq i32 %286, 0
  br i1 %287, label %291, label %288

288:                                              ; preds = %285
  %289 = icmp eq i32 %8, 2
  %290 = icmp eq i32 %8, 1
  br label %294

291:                                              ; preds = %1444, %285
  %292 = load ptr, ptr @stderr, align 8, !tbaa !7
  %293 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %292, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.19) #18
  tail call void @exit(i32 noundef 1) #16
  unreachable

294:                                              ; preds = %1444, %288
  %295 = phi i32 [ %1445, %1444 ], [ %286, %288 ]
  %296 = phi i32 [ %297, %1444 ], [ %4, %288 ]
  %297 = add nsw i32 %296, -1
  %298 = icmp sgt i32 %295, 1
  %299 = load ptr, ptr @LIST, align 8, !tbaa !7
  br i1 %298, label %300, label %317

300:                                              ; preds = %294
  %301 = zext i32 %295 to i64
  br label %302

302:                                              ; preds = %302, %300
  %303 = phi i64 [ 1, %300 ], [ %315, %302 ]
  %304 = phi i32 [ 0, %300 ], [ %314, %302 ]
  %305 = getelementptr inbounds ptr, ptr %299, i64 %303
  %306 = load ptr, ptr %305, align 8, !tbaa !7
  %307 = load i32, ptr %306, align 4, !tbaa !28
  %308 = sext i32 %304 to i64
  %309 = getelementptr inbounds ptr, ptr %299, i64 %308
  %310 = load ptr, ptr %309, align 8, !tbaa !7
  %311 = load i32, ptr %310, align 4, !tbaa !28
  %312 = icmp sgt i32 %307, %311
  %313 = trunc i64 %303 to i32
  %314 = select i1 %312, i32 %313, i32 %304
  %315 = add nuw nsw i64 %303, 1
  %316 = icmp eq i64 %315, %301
  br i1 %316, label %317, label %302, !llvm.loop !30

317:                                              ; preds = %302, %294
  %318 = phi i32 [ 0, %294 ], [ %314, %302 ]
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds ptr, ptr %299, i64 %319
  %321 = load ptr, ptr %320, align 8, !tbaa !7
  %322 = add nsw i32 %295, -1
  store i32 %322, ptr @numnode, align 4, !tbaa !11
  %323 = icmp eq i32 %318, %322
  br i1 %323, label %328, label %324

324:                                              ; preds = %317
  %325 = sext i32 %322 to i64
  %326 = getelementptr inbounds ptr, ptr %299, i64 %325
  %327 = load ptr, ptr %326, align 8, !tbaa !7
  store ptr %327, ptr %320, align 8, !tbaa !7
  store ptr %321, ptr %326, align 8, !tbaa !7
  br label %328

328:                                              ; preds = %324, %317
  %329 = load ptr, ptr %299, align 8, !tbaa !7
  store ptr %329, ptr @most, align 8, !tbaa !7
  %330 = load ptr, ptr @low, align 8, !tbaa !7
  %331 = icmp eq ptr %330, %321
  br i1 %331, label %332, label %333

332:                                              ; preds = %328
  store ptr %329, ptr @low, align 8, !tbaa !7
  br label %333

333:                                              ; preds = %332, %328
  %334 = load i32, ptr %321, align 4, !tbaa !28
  %335 = getelementptr inbounds %struct.NODE, ptr %321, i64 0, i32 1
  %336 = load i32, ptr %335, align 4, !tbaa !31
  %337 = add nsw i32 %336, 1
  store i32 %337, ptr %335, align 4, !tbaa !31
  %338 = getelementptr inbounds %struct.NODE, ptr %321, i64 0, i32 2
  %339 = load i32, ptr %338, align 4, !tbaa !32
  %340 = add nsw i32 %339, 1
  store i32 %340, ptr %338, align 4, !tbaa !32
  %341 = getelementptr inbounds %struct.NODE, ptr %321, i64 0, i32 3
  %342 = load i32, ptr %341, align 4, !tbaa !33
  %343 = getelementptr inbounds %struct.NODE, ptr %321, i64 0, i32 4
  %344 = load i32, ptr %343, align 4, !tbaa !34
  %345 = getelementptr inbounds %struct.NODE, ptr %321, i64 0, i32 5
  %346 = load i32, ptr %345, align 4, !tbaa !35
  store i32 %346, ptr @m1, align 4, !tbaa !11
  %347 = getelementptr inbounds %struct.NODE, ptr %321, i64 0, i32 6
  %348 = load i32, ptr %347, align 4, !tbaa !36
  store i32 %348, ptr @mm, align 4, !tbaa !11
  %349 = getelementptr inbounds %struct.NODE, ptr %321, i64 0, i32 7
  %350 = load i32, ptr %349, align 4, !tbaa !37
  store i32 %350, ptr @n1, align 4, !tbaa !11
  %351 = getelementptr inbounds %struct.NODE, ptr %321, i64 0, i32 8
  %352 = load i32, ptr %351, align 4, !tbaa !38
  store i32 %352, ptr @nn, align 4, !tbaa !11
  %353 = sub nsw i32 %342, %337
  %354 = add nsw i32 %353, 1
  store i32 %354, ptr @rl, align 4, !tbaa !11
  %355 = sub nsw i32 %344, %340
  %356 = add nsw i32 %355, 1
  store i32 %356, ptr @cl, align 4, !tbaa !11
  store i32 %336, ptr @I, align 4, !tbaa !11
  store i32 %339, ptr @J, align 4, !tbaa !11
  store ptr %31, ptr @sapp, align 8, !tbaa !7
  store i32 0, ptr @last, align 4, !tbaa !11
  store i32 0, ptr @al_len, align 4, !tbaa !11
  store i32 0, ptr @no_mat, align 4, !tbaa !11
  store i32 0, ptr @no_mis, align 4, !tbaa !11
  %357 = sext i32 %337 to i64
  %358 = getelementptr i8, ptr %283, i64 %357
  %359 = sext i32 %340 to i64
  %360 = getelementptr i8, ptr %284, i64 %359
  %361 = load i32, ptr @q, align 4, !tbaa !11
  tail call fastcc void @diff(ptr noundef nonnull %358, ptr noundef nonnull %360, i32 noundef %354, i32 noundef %356, i32 noundef %361, i32 noundef %361) #15
  %362 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.35)
  %363 = sub nsw i32 %4, %297
  %364 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.21, i32 noundef %363) #15
  %365 = sitofp i32 %334 to double
  %366 = fdiv double %365, 1.000000e+01
  %367 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.22, double noundef %366) #15
  %368 = load i32, ptr @no_mat, align 4, !tbaa !11
  %369 = mul nsw i32 %368, 100
  %370 = load i32, ptr @al_len, align 4, !tbaa !11
  %371 = sdiv i32 %369, %370
  %372 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.23, i32 noundef %371) #15
  %373 = load i32, ptr @no_mat, align 4, !tbaa !11
  %374 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.24, i32 noundef %373) #15
  %375 = load i32, ptr @no_mis, align 4, !tbaa !11
  %376 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.25, i32 noundef %375) #15
  %377 = load i32, ptr @al_len, align 4, !tbaa !11
  %378 = load i32, ptr @no_mat, align 4, !tbaa !11
  %379 = load i32, ptr @no_mis, align 4, !tbaa !11
  %380 = add i32 %378, %379
  %381 = sub i32 %377, %380
  %382 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.26, i32 noundef %381) #15
  %383 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.27, i32 noundef %337, i32 noundef %340, i32 noundef %342, i32 noundef %344) #15
  %384 = load i32, ptr @rl, align 4, !tbaa !11
  %385 = load i32, ptr @cl, align 4, !tbaa !11
  %386 = icmp sgt i32 %384, 0
  %387 = icmp sgt i32 %385, 0
  %388 = or i1 %386, %387
  br i1 %388, label %389, label %492

389:                                              ; preds = %482, %333
  %390 = phi ptr [ %453, %482 ], [ %31, %333 ]
  %391 = phi ptr [ %488, %482 ], [ @ALINE, %333 ]
  %392 = phi i32 [ %487, %482 ], [ %340, %333 ]
  %393 = phi i32 [ %486, %482 ], [ %337, %333 ]
  %394 = phi i32 [ %485, %482 ], [ 0, %333 ]
  %395 = phi i32 [ %452, %482 ], [ 0, %333 ]
  %396 = phi i32 [ %451, %482 ], [ 0, %333 ]
  %397 = phi i32 [ %450, %482 ], [ 0, %333 ]
  %398 = phi ptr [ %484, %482 ], [ @CLINE, %333 ]
  %399 = phi ptr [ %483, %482 ], [ @BLINE, %333 ]
  %400 = icmp eq i32 %395, 0
  br i1 %400, label %401, label %432

401:                                              ; preds = %389
  %402 = load i32, ptr %390, align 4, !tbaa !11
  %403 = icmp eq i32 %402, 0
  %404 = getelementptr inbounds i32, ptr %390, i64 1
  br i1 %403, label %405, label %432

405:                                              ; preds = %401
  %406 = add nsw i32 %397, 1
  %407 = sext i32 %406 to i64
  %408 = getelementptr inbounds i8, ptr %358, i64 %407
  %409 = load i8, ptr %408, align 1, !tbaa !16
  store i8 %409, ptr %391, align 1, !tbaa !16
  %410 = add nsw i32 %396, 1
  %411 = sext i32 %410 to i64
  %412 = getelementptr inbounds i8, ptr %360, i64 %411
  %413 = load i8, ptr %412, align 1, !tbaa !16
  store i8 %413, ptr %399, align 1, !tbaa !16
  %414 = icmp eq i8 %409, %413
  %415 = select i1 %414, i8 124, i8 32
  %416 = icmp eq i8 %409, 65
  %417 = icmp eq i8 %413, 71
  %418 = select i1 %416, i1 %417, i1 false
  br i1 %418, label %431, label %419

419:                                              ; preds = %405
  %420 = icmp eq i8 %409, 67
  %421 = icmp eq i8 %413, 84
  %422 = select i1 %420, i1 %421, i1 false
  br i1 %422, label %431, label %423

423:                                              ; preds = %419
  %424 = icmp eq i8 %409, 71
  %425 = icmp eq i8 %413, 65
  %426 = select i1 %424, i1 %425, i1 false
  br i1 %426, label %431, label %427

427:                                              ; preds = %423
  %428 = icmp eq i8 %409, 84
  %429 = icmp eq i8 %413, 67
  %430 = select i1 %428, i1 %429, i1 false
  br i1 %430, label %431, label %448

431:                                              ; preds = %427, %423, %419, %405
  br label %448

432:                                              ; preds = %401, %389
  %433 = phi i32 [ %395, %389 ], [ %402, %401 ]
  %434 = phi ptr [ %390, %389 ], [ %404, %401 ]
  %435 = icmp sgt i32 %433, 0
  br i1 %435, label %436, label %442

436:                                              ; preds = %432
  store i8 32, ptr %391, align 1, !tbaa !16
  %437 = add nsw i32 %396, 1
  %438 = sext i32 %437 to i64
  %439 = getelementptr inbounds i8, ptr %360, i64 %438
  %440 = load i8, ptr %439, align 1, !tbaa !16
  store i8 %440, ptr %399, align 1, !tbaa !16
  %441 = add nsw i32 %433, -1
  br label %448

442:                                              ; preds = %432
  %443 = add nsw i32 %397, 1
  %444 = sext i32 %443 to i64
  %445 = getelementptr inbounds i8, ptr %358, i64 %444
  %446 = load i8, ptr %445, align 1, !tbaa !16
  store i8 %446, ptr %391, align 1, !tbaa !16
  store i8 32, ptr %399, align 1, !tbaa !16
  %447 = add nsw i32 %433, 1
  br label %448

448:                                              ; preds = %442, %436, %431, %427
  %449 = phi i8 [ 58, %431 ], [ %415, %427 ], [ 45, %442 ], [ 45, %436 ]
  %450 = phi i32 [ %406, %431 ], [ %406, %427 ], [ %443, %442 ], [ %397, %436 ]
  %451 = phi i32 [ %410, %431 ], [ %410, %427 ], [ %396, %442 ], [ %437, %436 ]
  %452 = phi i32 [ 0, %431 ], [ 0, %427 ], [ %447, %442 ], [ %441, %436 ]
  %453 = phi ptr [ %404, %431 ], [ %404, %427 ], [ %434, %442 ], [ %434, %436 ]
  %454 = getelementptr inbounds i8, ptr %398, i64 1
  %455 = getelementptr inbounds i8, ptr %399, i64 1
  %456 = getelementptr inbounds i8, ptr %391, i64 1
  store i8 %449, ptr %398, align 1, !tbaa !16
  %457 = icmp ult ptr %456, getelementptr inbounds ([51 x i8], ptr @ALINE, i64 0, i64 50)
  br i1 %457, label %458, label %462

458:                                              ; preds = %448
  %459 = icmp slt i32 %450, %384
  %460 = icmp slt i32 %451, %385
  %461 = select i1 %459, i1 true, i1 %460
  br i1 %461, label %482, label %462

462:                                              ; preds = %458, %448
  store i8 0, ptr %454, align 1, !tbaa !16
  store i8 0, ptr %455, align 1, !tbaa !16
  store i8 0, ptr %456, align 1, !tbaa !16
  %463 = add nsw i32 %394, 1
  %464 = mul nsw i32 %394, 50
  %465 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.28, i32 noundef %464) #15
  %466 = icmp ult ptr %456, getelementptr inbounds ([51 x i8], ptr @ALINE, i64 0, i64 10)
  br i1 %466, label %472, label %467

467:                                              ; preds = %467, %462
  %468 = phi ptr [ %470, %467 ], [ getelementptr inbounds ([51 x i8], ptr @ALINE, i64 0, i64 10), %462 ]
  %469 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.29) #15
  %470 = getelementptr inbounds i8, ptr %468, i64 10
  %471 = icmp ugt ptr %470, %456
  br i1 %471, label %472, label %467, !llvm.loop !39

472:                                              ; preds = %467, %462
  %473 = phi ptr [ getelementptr inbounds ([51 x i8], ptr @ALINE, i64 0, i64 10), %462 ], [ %470, %467 ]
  %474 = getelementptr inbounds i8, ptr %391, i64 6
  %475 = icmp ugt ptr %473, %474
  br i1 %475, label %478, label %476

476:                                              ; preds = %472
  %477 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.30) #15
  br label %478

478:                                              ; preds = %476, %472
  %479 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.31, i32 noundef %393, ptr noundef nonnull @ALINE, ptr noundef nonnull @CLINE, i32 noundef %392, ptr noundef nonnull @BLINE) #15
  %480 = add nsw i32 %450, %337
  %481 = add nsw i32 %451, %340
  br label %482

482:                                              ; preds = %478, %458
  %483 = phi ptr [ @BLINE, %478 ], [ %455, %458 ]
  %484 = phi ptr [ @CLINE, %478 ], [ %454, %458 ]
  %485 = phi i32 [ %463, %478 ], [ %394, %458 ]
  %486 = phi i32 [ %480, %478 ], [ %393, %458 ]
  %487 = phi i32 [ %481, %478 ], [ %392, %458 ]
  %488 = phi ptr [ @ALINE, %478 ], [ %456, %458 ]
  %489 = icmp slt i32 %450, %384
  %490 = icmp slt i32 %451, %385
  %491 = select i1 %489, i1 true, i1 %490
  br i1 %491, label %389, label %492, !llvm.loop !40

492:                                              ; preds = %482, %333
  %493 = load ptr, ptr @stdout, align 8, !tbaa !7
  %494 = tail call i32 @fflush(ptr noundef %493) #15
  %495 = icmp eq i32 %297, 0
  br i1 %495, label %1447, label %496

496:                                              ; preds = %492
  %497 = load i32, ptr @nn, align 4
  %498 = load i32, ptr @n1, align 4
  %499 = icmp slt i32 %497, %498
  %500 = load i32, ptr @mm, align 4
  %501 = load i32, ptr @q, align 4
  %502 = load ptr, ptr @CC, align 8
  %503 = load ptr, ptr @RR, align 8
  %504 = load ptr, ptr @EE, align 8
  %505 = load ptr, ptr @DD, align 8
  %506 = load ptr, ptr @SS, align 8
  %507 = load ptr, ptr @FF, align 8
  %508 = sub nsw i32 0, %501
  br i1 %499, label %532, label %509

509:                                              ; preds = %496
  %510 = add nsw i32 %500, 1
  %511 = sext i32 %497 to i64
  %512 = sext i32 %500 to i64
  %513 = sext i32 %498 to i64
  %514 = shl nsw i64 %513, 2
  %515 = getelementptr i8, ptr %502, i64 %514
  %516 = add nsw i64 %511, 1
  %517 = sub nsw i64 %516, %513
  %518 = shl nuw nsw i64 %517, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %515, i8 0, i64 %518, i1 false), !tbaa !11
  br label %519

519:                                              ; preds = %519, %509
  %520 = phi i64 [ %511, %509 ], [ %530, %519 ]
  %521 = getelementptr inbounds i32, ptr %504, i64 %520
  %522 = trunc i64 %520 to i32
  store i32 %522, ptr %521, align 4, !tbaa !11
  %523 = getelementptr inbounds i32, ptr %505, i64 %520
  store i32 %508, ptr %523, align 4, !tbaa !11
  %524 = getelementptr inbounds i32, ptr %507, i64 %520
  store i32 %522, ptr %524, align 4, !tbaa !11
  %525 = icmp sgt i64 %520, %512
  %526 = select i1 %289, i1 true, i1 %525
  %527 = select i1 %526, i32 %510, i32 %522
  %528 = getelementptr inbounds i32, ptr %506, i64 %520
  store i32 %527, ptr %528, align 4
  %529 = getelementptr inbounds i32, ptr %503, i64 %520
  store i32 %527, ptr %529, align 4
  %530 = add nsw i64 %520, -1
  %531 = icmp sgt i64 %520, %513
  br i1 %531, label %519, label %532, !llvm.loop !41

532:                                              ; preds = %519, %496
  %533 = load i32, ptr @m1, align 4
  %534 = icmp slt i32 %500, %533
  %535 = load ptr, ptr @v, align 8
  %536 = load i32, ptr @r, align 4
  %537 = load i32, ptr @qr, align 4
  %538 = load i32, ptr @min, align 4
  %539 = load ptr, ptr @HH, align 8
  %540 = load ptr, ptr @II, align 8
  %541 = load ptr, ptr @JJ, align 8
  %542 = load ptr, ptr @WW, align 8
  %543 = load ptr, ptr @XX, align 8
  %544 = load ptr, ptr @YY, align 8
  %545 = add nsw i32 %497, 1
  %546 = load ptr, ptr @row, align 8
  br i1 %534, label %547, label %550

547:                                              ; preds = %532
  %548 = sext i32 %497 to i64
  %549 = sext i32 %500 to i64
  br label %713

550:                                              ; preds = %532
  %551 = sext i32 %498 to i64
  %552 = getelementptr inbounds i32, ptr %502, i64 %551
  %553 = getelementptr inbounds i32, ptr %503, i64 %551
  %554 = getelementptr inbounds i32, ptr %504, i64 %551
  %555 = getelementptr inbounds i32, ptr %505, i64 %551
  %556 = getelementptr inbounds i32, ptr %506, i64 %551
  %557 = getelementptr inbounds i32, ptr %507, i64 %551
  %558 = sext i32 %497 to i64
  %559 = sext i32 %500 to i64
  %560 = sext i32 %533 to i64
  br label %561

561:                                              ; preds = %710, %550
  %562 = phi i1 [ false, %550 ], [ %694, %710 ]
  %563 = phi i64 [ %559, %550 ], [ %711, %710 ]
  %564 = phi i32 [ undef, %550 ], [ %696, %710 ]
  %565 = phi i32 [ undef, %550 ], [ %695, %710 ]
  %566 = getelementptr inbounds i8, ptr %0, i64 %563
  %567 = load i8, ptr %566, align 1, !tbaa !16
  %568 = sext i8 %567 to i64
  %569 = getelementptr inbounds [256 x i32], ptr %535, i64 %568
  %570 = icmp slt i64 %563, %551
  %571 = or i1 %289, %570
  %572 = trunc i64 %563 to i32
  %573 = add i32 %572, 1
  %574 = select i1 %571, i32 %498, i32 %573
  %575 = icmp slt i32 %497, %574
  br i1 %575, label %693, label %576

576:                                              ; preds = %561
  %577 = getelementptr inbounds ptr, ptr %546, i64 %563
  %578 = sext i32 %574 to i64
  %579 = load ptr, ptr %577, align 8, !tbaa !7
  %580 = icmp eq ptr %579, null
  br label %581

581:                                              ; preds = %684, %576
  %582 = phi i1 [ %562, %576 ], [ %689, %684 ]
  %583 = phi i64 [ %558, %576 ], [ %690, %684 ]
  %584 = phi i32 [ %545, %576 ], [ %615, %684 ]
  %585 = phi i32 [ %573, %576 ], [ %613, %684 ]
  %586 = phi i32 [ %545, %576 ], [ %608, %684 ]
  %587 = phi i32 [ %572, %576 ], [ %607, %684 ]
  %588 = phi i32 [ %545, %576 ], [ %687, %684 ]
  %589 = phi i32 [ %572, %576 ], [ %686, %684 ]
  %590 = phi i32 [ 0, %576 ], [ %610, %684 ]
  %591 = phi i32 [ %508, %576 ], [ %606, %684 ]
  %592 = phi i32 [ 0, %576 ], [ %685, %684 ]
  %593 = sub nsw i32 %591, %536
  %594 = sub nsw i32 %592, %537
  %595 = icmp slt i32 %593, %594
  br i1 %595, label %605, label %596

596:                                              ; preds = %581
  %597 = icmp eq i32 %593, %594
  br i1 %597, label %598, label %605

598:                                              ; preds = %596
  %599 = icmp slt i32 %587, %589
  br i1 %599, label %605, label %600

600:                                              ; preds = %598
  %601 = icmp eq i32 %587, %589
  %602 = icmp slt i32 %586, %588
  %603 = select i1 %601, i1 %602, i1 false
  %604 = select i1 %603, i32 %588, i32 %586
  br label %605

605:                                              ; preds = %600, %598, %596, %581
  %606 = phi i32 [ %593, %596 ], [ %594, %581 ], [ %593, %598 ], [ %593, %600 ]
  %607 = phi i32 [ %587, %596 ], [ %589, %581 ], [ %589, %598 ], [ %587, %600 ]
  %608 = phi i32 [ %586, %596 ], [ %588, %581 ], [ %588, %598 ], [ %604, %600 ]
  %609 = getelementptr inbounds i32, ptr %502, i64 %583
  %610 = load i32, ptr %609, align 4, !tbaa !11
  %611 = sub nsw i32 %610, %537
  %612 = getelementptr inbounds i32, ptr %503, i64 %583
  %613 = load i32, ptr %612, align 4, !tbaa !11
  %614 = getelementptr inbounds i32, ptr %504, i64 %583
  %615 = load i32, ptr %614, align 4, !tbaa !11
  %616 = getelementptr inbounds i32, ptr %505, i64 %583
  %617 = load i32, ptr %616, align 4, !tbaa !11
  %618 = sub nsw i32 %617, %536
  %619 = getelementptr inbounds i32, ptr %506, i64 %583
  %620 = load i32, ptr %619, align 4, !tbaa !11
  %621 = getelementptr inbounds i32, ptr %507, i64 %583
  %622 = load i32, ptr %621, align 4, !tbaa !11
  %623 = icmp slt i32 %618, %611
  br i1 %623, label %633, label %624

624:                                              ; preds = %605
  %625 = icmp eq i32 %618, %611
  br i1 %625, label %626, label %633

626:                                              ; preds = %624
  %627 = icmp slt i32 %620, %613
  br i1 %627, label %633, label %628

628:                                              ; preds = %626
  %629 = icmp eq i32 %620, %613
  %630 = icmp slt i32 %622, %615
  %631 = select i1 %629, i1 %630, i1 false
  %632 = select i1 %631, i32 %615, i32 %622
  br label %633

633:                                              ; preds = %628, %626, %624, %605
  %634 = phi i32 [ %618, %624 ], [ %611, %605 ], [ %611, %626 ], [ %611, %628 ]
  %635 = phi i32 [ %620, %624 ], [ %613, %605 ], [ %613, %626 ], [ %620, %628 ]
  %636 = phi i32 [ %622, %624 ], [ %615, %605 ], [ %615, %626 ], [ %632, %628 ]
  %637 = trunc i64 %583 to i32
  br i1 %580, label %646, label %642

638:                                              ; preds = %642
  %639 = getelementptr inbounds %struct.ONE, ptr %643, i64 0, i32 1
  %640 = load ptr, ptr %639, align 8, !tbaa !7
  %641 = icmp eq ptr %640, null
  br i1 %641, label %646, label %642, !llvm.loop !42

642:                                              ; preds = %638, %633
  %643 = phi ptr [ %640, %638 ], [ %579, %633 ]
  %644 = load i32, ptr %643, align 8, !tbaa !20
  %645 = icmp eq i32 %644, %637
  br i1 %645, label %653, label %638

646:                                              ; preds = %638, %633
  %647 = getelementptr inbounds i8, ptr %1, i64 %583
  %648 = load i8, ptr %647, align 1, !tbaa !16
  %649 = sext i8 %648 to i64
  %650 = getelementptr inbounds i32, ptr %569, i64 %649
  %651 = load i32, ptr %650, align 4, !tbaa !11
  %652 = add nsw i32 %651, %590
  br label %653

653:                                              ; preds = %646, %642
  %654 = phi ptr [ null, %646 ], [ %643, %642 ]
  %655 = phi i32 [ %652, %646 ], [ 0, %642 ]
  %656 = icmp slt i32 %655, 1
  %657 = select i1 %656, i32 0, i32 %655
  %658 = select i1 %656, i32 %572, i32 %585
  %659 = select i1 %656, i32 %637, i32 %584
  %660 = icmp slt i32 %657, %634
  br i1 %660, label %670, label %661

661:                                              ; preds = %653
  %662 = icmp eq i32 %657, %634
  br i1 %662, label %663, label %670

663:                                              ; preds = %661
  %664 = icmp slt i32 %658, %635
  br i1 %664, label %670, label %665

665:                                              ; preds = %663
  %666 = icmp eq i32 %658, %635
  %667 = icmp slt i32 %659, %636
  %668 = select i1 %666, i1 %667, i1 false
  %669 = select i1 %668, i32 %636, i32 %659
  br label %670

670:                                              ; preds = %665, %663, %661, %653
  %671 = phi i32 [ %657, %661 ], [ %634, %653 ], [ %634, %663 ], [ %634, %665 ]
  %672 = phi i32 [ %658, %661 ], [ %635, %653 ], [ %635, %663 ], [ %658, %665 ]
  %673 = phi i32 [ %659, %661 ], [ %636, %653 ], [ %636, %663 ], [ %669, %665 ]
  %674 = icmp slt i32 %671, %606
  br i1 %674, label %684, label %675

675:                                              ; preds = %670
  %676 = icmp eq i32 %671, %606
  br i1 %676, label %677, label %684

677:                                              ; preds = %675
  %678 = icmp slt i32 %672, %607
  br i1 %678, label %684, label %679

679:                                              ; preds = %677
  %680 = icmp eq i32 %672, %607
  %681 = icmp slt i32 %673, %608
  %682 = select i1 %680, i1 %681, i1 false
  %683 = select i1 %682, i32 %608, i32 %673
  br label %684

684:                                              ; preds = %679, %677, %675, %670
  %685 = phi i32 [ %671, %675 ], [ %606, %670 ], [ %606, %677 ], [ %606, %679 ]
  %686 = phi i32 [ %672, %675 ], [ %607, %670 ], [ %607, %677 ], [ %672, %679 ]
  %687 = phi i32 [ %673, %675 ], [ %608, %670 ], [ %608, %677 ], [ %683, %679 ]
  store i32 %685, ptr %609, align 4, !tbaa !11
  store i32 %686, ptr %612, align 4, !tbaa !11
  store i32 %687, ptr %614, align 4, !tbaa !11
  store i32 %634, ptr %616, align 4, !tbaa !11
  store i32 %635, ptr %619, align 4, !tbaa !11
  store i32 %636, ptr %621, align 4, !tbaa !11
  %688 = icmp sgt i32 %685, %538
  %689 = select i1 %688, i1 true, i1 %582
  %690 = add nsw i64 %583, -1
  %691 = icmp sgt i64 %583, %578
  br i1 %691, label %581, label %692, !llvm.loop !43

692:                                              ; preds = %684
  %.lcssa3 = phi i1 [ %689, %684 ]
  %.lcssa2 = phi ptr [ %654, %684 ]
  %.lcssa1 = phi i32 [ %635, %684 ]
  %.lcssa = phi i32 [ %636, %684 ]
  store ptr %.lcssa2, ptr @z, align 8, !tbaa !7
  br label %693

693:                                              ; preds = %692, %561
  %694 = phi i1 [ %562, %561 ], [ %.lcssa3, %692 ]
  %695 = phi i32 [ %565, %561 ], [ %.lcssa1, %692 ]
  %696 = phi i32 [ %564, %561 ], [ %.lcssa, %692 ]
  br i1 %571, label %697, label %710

697:                                              ; preds = %693
  %698 = load i32, ptr %552, align 4, !tbaa !11
  %699 = getelementptr inbounds i32, ptr %539, i64 %563
  store i32 %698, ptr %699, align 4, !tbaa !11
  %700 = load i32, ptr %553, align 4, !tbaa !11
  %701 = getelementptr inbounds i32, ptr %540, i64 %563
  store i32 %700, ptr %701, align 4, !tbaa !11
  %702 = load i32, ptr %554, align 4, !tbaa !11
  %703 = getelementptr inbounds i32, ptr %541, i64 %563
  store i32 %702, ptr %703, align 4, !tbaa !11
  %704 = load i32, ptr %555, align 4, !tbaa !11
  %705 = getelementptr inbounds i32, ptr %542, i64 %563
  store i32 %704, ptr %705, align 4, !tbaa !11
  %706 = load i32, ptr %556, align 4, !tbaa !11
  %707 = getelementptr inbounds i32, ptr %543, i64 %563
  store i32 %706, ptr %707, align 4, !tbaa !11
  %708 = load i32, ptr %557, align 4, !tbaa !11
  %709 = getelementptr inbounds i32, ptr %544, i64 %563
  store i32 %708, ptr %709, align 4, !tbaa !11
  br label %710

710:                                              ; preds = %697, %693
  %711 = add nsw i64 %563, -1
  %712 = icmp sgt i64 %563, %560
  br i1 %712, label %561, label %713, !llvm.loop !44

713:                                              ; preds = %710, %547
  %714 = phi i1 [ false, %547 ], [ %694, %710 ]
  %715 = phi i64 [ %549, %547 ], [ %559, %710 ]
  %716 = phi i64 [ %548, %547 ], [ %558, %710 ]
  %717 = phi i32 [ undef, %547 ], [ %695, %710 ]
  %718 = phi i32 [ undef, %547 ], [ %696, %710 ]
  store i32 %533, ptr @rl, align 4, !tbaa !11
  store i32 %498, ptr @cl, align 4, !tbaa !11
  %719 = add nsw i32 %500, 1
  %720 = load i32, ptr @numnode, align 4
  %721 = icmp sgt i32 %720, 0
  %722 = load ptr, ptr @LIST, align 8
  %723 = zext i32 %720 to i64
  br label %724

724:                                              ; preds = %1210, %713
  %725 = phi i1 [ %714, %713 ], [ %1211, %1210 ]
  %726 = phi i32 [ %498, %713 ], [ %.lcssa42, %1210 ]
  %727 = phi i32 [ %533, %713 ], [ %.lcssa21, %1210 ]
  %728 = phi i32 [ %498, %713 ], [ %1212, %1210 ]
  %729 = phi i32 [ %533, %713 ], [ %1213, %1210 ]
  %730 = phi i32 [ %498, %713 ], [ %.lcssa41, %1210 ]
  %731 = phi i32 [ %533, %713 ], [ %.lcssa19, %1210 ]
  %732 = phi i32 [ %717, %713 ], [ %.lcssa15, %1210 ]
  %733 = phi i32 [ %718, %713 ], [ %.lcssa13, %1210 ]
  %734 = sext i32 %730 to i64
  br label %735

735:                                              ; preds = %1168, %724
  %736 = phi i1 [ %725, %724 ], [ %1127, %1168 ]
  %737 = phi i64 [ %734, %724 ], [ %965, %1168 ]
  %738 = phi i32 [ %726, %724 ], [ %966, %1168 ]
  %739 = phi i32 [ %727, %724 ], [ %.lcssa30, %1168 ]
  %740 = phi i32 [ %731, %724 ], [ %.lcssa29, %1168 ]
  %741 = phi i32 [ %731, %724 ], [ %.lcssa28, %1168 ]
  %742 = phi i32 [ %732, %724 ], [ %1131, %1168 ]
  %743 = phi i32 [ %733, %724 ], [ %1132, %1168 ]
  %744 = phi i16 [ 1, %724 ], [ %1135, %1168 ]
  %745 = phi i16 [ 1, %724 ], [ %1169, %1168 ]
  %746 = icmp sgt i64 %737, 1
  %747 = icmp slt i64 %716, %737
  %748 = getelementptr inbounds i32, ptr %502, i64 %737
  %749 = getelementptr inbounds i32, ptr %503, i64 %737
  %750 = getelementptr inbounds i32, ptr %504, i64 %737
  %751 = getelementptr inbounds i32, ptr %505, i64 %737
  %752 = getelementptr inbounds i32, ptr %506, i64 %737
  %753 = getelementptr inbounds i32, ptr %507, i64 %737
  %754 = trunc i64 %737 to i32
  br label %755

755:                                              ; preds = %960, %735
  %756 = phi i1 [ %946, %960 ], [ %736, %735 ]
  %757 = phi i32 [ %947, %960 ], [ %739, %735 ]
  %758 = phi i32 [ %948, %960 ], [ %740, %735 ]
  %759 = phi i32 [ %949, %960 ], [ %741, %735 ]
  %760 = phi i32 [ %950, %960 ], [ %742, %735 ]
  %761 = phi i32 [ %951, %960 ], [ %743, %735 ]
  %762 = phi i16 [ %961, %960 ], [ %744, %735 ]
  %763 = phi i16 [ %953, %960 ], [ %745, %735 ]
  %764 = icmp ne i16 %763, 0
  %765 = icmp sgt i32 %759, 1
  %766 = select i1 %764, i1 %765, i1 false
  br i1 %766, label %770, label %767

767:                                              ; preds = %755
  %768 = icmp ne i16 %762, 0
  %769 = select i1 %768, i1 %746, i1 false
  br i1 %769, label %945, label %1170

770:                                              ; preds = %755
  %771 = add nsw i32 %759, -1
  store i32 %771, ptr @m1, align 4, !tbaa !11
  %772 = zext i32 %771 to i64
  %773 = getelementptr inbounds i8, ptr %0, i64 %772
  %774 = load i8, ptr %773, align 1, !tbaa !16
  %775 = sext i8 %774 to i64
  %776 = getelementptr inbounds [256 x i32], ptr %535, i64 %775
  br i1 %747, label %910, label %777

777:                                              ; preds = %770
  %778 = getelementptr inbounds ptr, ptr %546, i64 %772
  %779 = load ptr, ptr %778, align 8, !tbaa !7
  %780 = icmp eq ptr %779, null
  br label %781

781:                                              ; preds = %905, %777
  %782 = phi i1 [ %756, %777 ], [ %890, %905 ]
  %783 = phi i64 [ %716, %777 ], [ %907, %905 ]
  %784 = phi i16 [ 0, %777 ], [ %906, %905 ]
  %785 = phi i32 [ %545, %777 ], [ %816, %905 ]
  %786 = phi i32 [ %759, %777 ], [ %814, %905 ]
  %787 = phi i32 [ %545, %777 ], [ %809, %905 ]
  %788 = phi i32 [ %771, %777 ], [ %808, %905 ]
  %789 = phi i32 [ %545, %777 ], [ %888, %905 ]
  %790 = phi i32 [ %771, %777 ], [ %887, %905 ]
  %791 = phi i32 [ 0, %777 ], [ %811, %905 ]
  %792 = phi i32 [ %508, %777 ], [ %807, %905 ]
  %793 = phi i32 [ 0, %777 ], [ %886, %905 ]
  %794 = sub nsw i32 %792, %536
  %795 = sub nsw i32 %793, %537
  %796 = icmp slt i32 %794, %795
  br i1 %796, label %806, label %797

797:                                              ; preds = %781
  %798 = icmp eq i32 %794, %795
  br i1 %798, label %799, label %806

799:                                              ; preds = %797
  %800 = icmp slt i32 %788, %790
  br i1 %800, label %806, label %801

801:                                              ; preds = %799
  %802 = icmp eq i32 %788, %790
  %803 = icmp slt i32 %787, %789
  %804 = select i1 %802, i1 %803, i1 false
  %805 = select i1 %804, i32 %789, i32 %787
  br label %806

806:                                              ; preds = %801, %799, %797, %781
  %807 = phi i32 [ %794, %797 ], [ %795, %781 ], [ %794, %799 ], [ %794, %801 ]
  %808 = phi i32 [ %788, %797 ], [ %790, %781 ], [ %790, %799 ], [ %788, %801 ]
  %809 = phi i32 [ %787, %797 ], [ %789, %781 ], [ %789, %799 ], [ %805, %801 ]
  %810 = getelementptr inbounds i32, ptr %502, i64 %783
  %811 = load i32, ptr %810, align 4, !tbaa !11
  %812 = sub nsw i32 %811, %537
  %813 = getelementptr inbounds i32, ptr %503, i64 %783
  %814 = load i32, ptr %813, align 4, !tbaa !11
  %815 = getelementptr inbounds i32, ptr %504, i64 %783
  %816 = load i32, ptr %815, align 4, !tbaa !11
  %817 = getelementptr inbounds i32, ptr %505, i64 %783
  %818 = load i32, ptr %817, align 4, !tbaa !11
  %819 = sub nsw i32 %818, %536
  %820 = getelementptr inbounds i32, ptr %506, i64 %783
  %821 = load i32, ptr %820, align 4, !tbaa !11
  %822 = getelementptr inbounds i32, ptr %507, i64 %783
  %823 = load i32, ptr %822, align 4, !tbaa !11
  %824 = icmp slt i32 %819, %812
  br i1 %824, label %834, label %825

825:                                              ; preds = %806
  %826 = icmp eq i32 %819, %812
  br i1 %826, label %827, label %834

827:                                              ; preds = %825
  %828 = icmp slt i32 %821, %814
  br i1 %828, label %834, label %829

829:                                              ; preds = %827
  %830 = icmp eq i32 %821, %814
  %831 = icmp slt i32 %823, %816
  %832 = select i1 %830, i1 %831, i1 false
  %833 = select i1 %832, i32 %816, i32 %823
  br label %834

834:                                              ; preds = %829, %827, %825, %806
  %835 = phi i32 [ %819, %825 ], [ %812, %806 ], [ %812, %827 ], [ %812, %829 ]
  %836 = phi i32 [ %821, %825 ], [ %814, %806 ], [ %814, %827 ], [ %821, %829 ]
  %837 = phi i32 [ %823, %825 ], [ %816, %806 ], [ %816, %827 ], [ %833, %829 ]
  %838 = trunc i64 %783 to i32
  br i1 %780, label %847, label %843

839:                                              ; preds = %843
  %840 = getelementptr inbounds %struct.ONE, ptr %844, i64 0, i32 1
  %841 = load ptr, ptr %840, align 8, !tbaa !7
  %842 = icmp eq ptr %841, null
  br i1 %842, label %847, label %843, !llvm.loop !45

843:                                              ; preds = %839, %834
  %844 = phi ptr [ %841, %839 ], [ %779, %834 ]
  %845 = load i32, ptr %844, align 8, !tbaa !20
  %846 = icmp eq i32 %845, %838
  br i1 %846, label %854, label %839

847:                                              ; preds = %839, %834
  %848 = getelementptr inbounds i8, ptr %1, i64 %783
  %849 = load i8, ptr %848, align 1, !tbaa !16
  %850 = sext i8 %849 to i64
  %851 = getelementptr inbounds i32, ptr %776, i64 %850
  %852 = load i32, ptr %851, align 4, !tbaa !11
  %853 = add nsw i32 %852, %791
  br label %854

854:                                              ; preds = %847, %843
  %855 = phi ptr [ null, %847 ], [ %844, %843 ]
  %856 = phi i32 [ %853, %847 ], [ 0, %843 ]
  %857 = icmp slt i32 %856, 1
  %858 = select i1 %857, i32 0, i32 %856
  %859 = select i1 %857, i32 %771, i32 %786
  %860 = select i1 %857, i32 %838, i32 %785
  %861 = icmp slt i32 %858, %835
  br i1 %861, label %871, label %862

862:                                              ; preds = %854
  %863 = icmp eq i32 %858, %835
  br i1 %863, label %864, label %871

864:                                              ; preds = %862
  %865 = icmp slt i32 %859, %836
  br i1 %865, label %871, label %866

866:                                              ; preds = %864
  %867 = icmp eq i32 %859, %836
  %868 = icmp slt i32 %860, %837
  %869 = select i1 %867, i1 %868, i1 false
  %870 = select i1 %869, i32 %837, i32 %860
  br label %871

871:                                              ; preds = %866, %864, %862, %854
  %872 = phi i32 [ %858, %862 ], [ %835, %854 ], [ %835, %864 ], [ %835, %866 ]
  %873 = phi i32 [ %859, %862 ], [ %836, %854 ], [ %836, %864 ], [ %859, %866 ]
  %874 = phi i32 [ %860, %862 ], [ %837, %854 ], [ %837, %864 ], [ %870, %866 ]
  %875 = icmp slt i32 %872, %807
  br i1 %875, label %885, label %876

876:                                              ; preds = %871
  %877 = icmp eq i32 %872, %807
  br i1 %877, label %878, label %885

878:                                              ; preds = %876
  %879 = icmp slt i32 %873, %808
  br i1 %879, label %885, label %880

880:                                              ; preds = %878
  %881 = icmp eq i32 %873, %808
  %882 = icmp slt i32 %874, %809
  %883 = select i1 %881, i1 %882, i1 false
  %884 = select i1 %883, i32 %809, i32 %874
  br label %885

885:                                              ; preds = %880, %878, %876, %871
  %886 = phi i32 [ %872, %876 ], [ %807, %871 ], [ %807, %878 ], [ %807, %880 ]
  %887 = phi i32 [ %873, %876 ], [ %808, %871 ], [ %808, %878 ], [ %873, %880 ]
  %888 = phi i32 [ %874, %876 ], [ %809, %871 ], [ %809, %878 ], [ %884, %880 ]
  store i32 %886, ptr %810, align 4, !tbaa !11
  store i32 %887, ptr %813, align 4, !tbaa !11
  store i32 %888, ptr %815, align 4, !tbaa !11
  store i32 %835, ptr %817, align 4, !tbaa !11
  store i32 %836, ptr %820, align 4, !tbaa !11
  store i32 %837, ptr %822, align 4, !tbaa !11
  %889 = icmp sgt i32 %886, %538
  %890 = select i1 %889, i1 true, i1 %782
  %891 = icmp eq i16 %784, 0
  br i1 %891, label %892, label %905

892:                                              ; preds = %885
  %893 = icmp sgt i32 %887, %729
  %894 = icmp sgt i32 %888, %728
  %895 = select i1 %893, i1 %894, i1 false
  br i1 %895, label %904, label %896

896:                                              ; preds = %892
  %897 = icmp sgt i32 %836, %729
  %898 = icmp sgt i32 %837, %728
  %899 = select i1 %897, i1 %898, i1 false
  br i1 %899, label %904, label %900

900:                                              ; preds = %896
  %901 = icmp sgt i32 %808, %729
  %902 = icmp sgt i32 %809, %728
  %903 = select i1 %901, i1 %902, i1 false
  br i1 %903, label %904, label %905

904:                                              ; preds = %900, %896, %892
  br label %905

905:                                              ; preds = %904, %900, %885
  %906 = phi i16 [ 1, %885 ], [ 1, %904 ], [ 0, %900 ]
  %907 = add nsw i64 %783, -1
  %908 = icmp sgt i64 %783, %737
  br i1 %908, label %781, label %909, !llvm.loop !46

909:                                              ; preds = %905
  %.lcssa12 = phi i16 [ %906, %905 ]
  %.lcssa11 = phi i32 [ %887, %905 ]
  %.lcssa10 = phi i32 [ %888, %905 ]
  %.lcssa9 = phi i1 [ %890, %905 ]
  %.lcssa8 = phi ptr [ %855, %905 ]
  %.lcssa7 = phi i32 [ %836, %905 ]
  %.lcssa6 = phi i32 [ %837, %905 ]
  %.lcssa5 = phi i32 [ %808, %905 ]
  %.lcssa4 = phi i32 [ %809, %905 ]
  store ptr %.lcssa8, ptr @z, align 8, !tbaa !7
  br label %910

910:                                              ; preds = %909, %770
  %911 = phi i1 [ %756, %770 ], [ %.lcssa9, %909 ]
  %912 = phi i32 [ %771, %770 ], [ %.lcssa11, %909 ]
  %913 = phi i32 [ %545, %770 ], [ %.lcssa10, %909 ]
  %914 = phi i32 [ %760, %770 ], [ %.lcssa7, %909 ]
  %915 = phi i32 [ %761, %770 ], [ %.lcssa6, %909 ]
  %916 = phi i32 [ %771, %770 ], [ %.lcssa5, %909 ]
  %917 = phi i32 [ %545, %770 ], [ %.lcssa4, %909 ]
  %918 = phi i16 [ 0, %770 ], [ %.lcssa12, %909 ]
  %919 = load i32, ptr %748, align 4, !tbaa !11
  %920 = getelementptr inbounds i32, ptr %539, i64 %772
  store i32 %919, ptr %920, align 4, !tbaa !11
  %921 = load i32, ptr %749, align 4, !tbaa !11
  %922 = getelementptr inbounds i32, ptr %540, i64 %772
  store i32 %921, ptr %922, align 4, !tbaa !11
  %923 = load i32, ptr %750, align 4, !tbaa !11
  %924 = getelementptr inbounds i32, ptr %541, i64 %772
  store i32 %923, ptr %924, align 4, !tbaa !11
  %925 = load i32, ptr %751, align 4, !tbaa !11
  %926 = getelementptr inbounds i32, ptr %542, i64 %772
  store i32 %925, ptr %926, align 4, !tbaa !11
  %927 = load i32, ptr %752, align 4, !tbaa !11
  %928 = getelementptr inbounds i32, ptr %543, i64 %772
  store i32 %927, ptr %928, align 4, !tbaa !11
  %929 = load i32, ptr %753, align 4, !tbaa !11
  %930 = getelementptr inbounds i32, ptr %544, i64 %772
  store i32 %929, ptr %930, align 4, !tbaa !11
  %931 = icmp eq i16 %762, 0
  br i1 %931, label %932, label %945

932:                                              ; preds = %910
  %933 = icmp sgt i32 %912, %729
  %934 = icmp sgt i32 %913, %728
  %935 = select i1 %933, i1 %934, i1 false
  br i1 %935, label %944, label %936

936:                                              ; preds = %932
  %937 = icmp sgt i32 %914, %729
  %938 = icmp sgt i32 %915, %728
  %939 = select i1 %937, i1 %938, i1 false
  br i1 %939, label %944, label %940

940:                                              ; preds = %936
  %941 = icmp sgt i32 %916, %729
  %942 = icmp sgt i32 %917, %728
  %943 = select i1 %941, i1 %942, i1 false
  br i1 %943, label %944, label %945

944:                                              ; preds = %940, %936, %932
  br label %945

945:                                              ; preds = %944, %940, %910, %767
  %946 = phi i1 [ %911, %910 ], [ %911, %944 ], [ %911, %940 ], [ %756, %767 ]
  %947 = phi i32 [ %771, %910 ], [ %771, %944 ], [ %771, %940 ], [ %757, %767 ]
  %948 = phi i32 [ %771, %910 ], [ %771, %944 ], [ %771, %940 ], [ %758, %767 ]
  %949 = phi i32 [ %771, %910 ], [ %771, %944 ], [ %771, %940 ], [ %759, %767 ]
  %950 = phi i32 [ %914, %910 ], [ %914, %944 ], [ %914, %940 ], [ %760, %767 ]
  %951 = phi i32 [ %915, %910 ], [ %915, %944 ], [ %915, %940 ], [ %761, %767 ]
  %952 = phi i16 [ 1, %910 ], [ 1, %944 ], [ 0, %940 ], [ 1, %767 ]
  %953 = phi i16 [ %918, %910 ], [ %918, %944 ], [ %918, %940 ], [ %763, %767 ]
  br i1 %290, label %954, label %960

954:                                              ; preds = %945
  %955 = add nsw i32 %949, 1
  %956 = icmp ne i32 %955, %754
  %957 = icmp ne i16 %953, 0
  %958 = or i1 %956, %957
  %959 = select i1 %958, i16 %952, i16 0
  br label %960

960:                                              ; preds = %954, %945
  %961 = phi i16 [ %952, %945 ], [ %959, %954 ]
  %962 = icmp ne i16 %961, 0
  %963 = select i1 %962, i1 %746, i1 false
  br i1 %963, label %964, label %755, !llvm.loop !47

964:                                              ; preds = %960
  %.lcssa31 = phi i1 [ %946, %960 ]
  %.lcssa30 = phi i32 [ %947, %960 ]
  %.lcssa29 = phi i32 [ %948, %960 ]
  %.lcssa28 = phi i32 [ %949, %960 ]
  %.lcssa27 = phi i32 [ %950, %960 ]
  %.lcssa26 = phi i32 [ %951, %960 ]
  %.lcssa25 = phi i16 [ %953, %960 ]
  %965 = add nsw i64 %737, -1
  %966 = trunc i64 %965 to i32
  store i32 %966, ptr @n1, align 4, !tbaa !11
  %967 = and i64 %965, 4294967295
  %968 = getelementptr inbounds i8, ptr %1, i64 %967
  %969 = load i8, ptr %968, align 1, !tbaa !16
  %970 = sext i8 %969 to i64
  %971 = getelementptr inbounds [256 x i32], ptr %535, i64 %970
  %972 = icmp slt i64 %715, %965
  %973 = or i1 %289, %972
  br i1 %973, label %982, label %974

974:                                              ; preds = %964
  %975 = getelementptr inbounds i32, ptr %539, i64 %967
  %976 = load i32, ptr %975, align 4, !tbaa !11
  %977 = getelementptr inbounds i32, ptr %540, i64 %967
  %978 = load i32, ptr %977, align 4, !tbaa !11
  %979 = getelementptr inbounds i32, ptr %541, i64 %967
  %980 = load i32, ptr %979, align 4, !tbaa !11
  %981 = add i32 %754, -2
  br label %982

982:                                              ; preds = %974, %964
  %983 = phi i32 [ %976, %974 ], [ 0, %964 ]
  %984 = phi i32 [ %966, %974 ], [ %719, %964 ]
  %985 = phi i32 [ %978, %974 ], [ %719, %964 ]
  %986 = phi i32 [ %980, %974 ], [ %754, %964 ]
  %987 = phi i32 [ %981, %974 ], [ %500, %964 ]
  %988 = icmp slt i32 %987, %.lcssa28
  br i1 %988, label %989, label %991

989:                                              ; preds = %982
  %990 = sext i32 %.lcssa28 to i64
  br label %1126

991:                                              ; preds = %982
  %992 = sext i32 %987 to i64
  %993 = sext i32 %.lcssa28 to i64
  br label %994

994:                                              ; preds = %1121, %991
  %995 = phi i1 [ %.lcssa31, %991 ], [ %1106, %1121 ]
  %996 = phi i64 [ %992, %991 ], [ %1123, %1121 ]
  %997 = phi i16 [ 0, %991 ], [ %1122, %1121 ]
  %998 = phi i32 [ %986, %991 ], [ %1029, %1121 ]
  %999 = phi i32 [ %985, %991 ], [ %1027, %1121 ]
  %1000 = phi i32 [ %966, %991 ], [ %1022, %1121 ]
  %1001 = phi i32 [ %984, %991 ], [ %1021, %1121 ]
  %1002 = phi i32 [ %966, %991 ], [ %1104, %1121 ]
  %1003 = phi i32 [ %984, %991 ], [ %1103, %1121 ]
  %1004 = phi i32 [ %983, %991 ], [ %1024, %1121 ]
  %1005 = phi i32 [ %508, %991 ], [ %1020, %1121 ]
  %1006 = phi i32 [ 0, %991 ], [ %1102, %1121 ]
  %1007 = sub nsw i32 %1005, %536
  %1008 = sub nsw i32 %1006, %537
  %1009 = icmp slt i32 %1007, %1008
  br i1 %1009, label %1019, label %1010

1010:                                             ; preds = %994
  %1011 = icmp eq i32 %1007, %1008
  br i1 %1011, label %1012, label %1019

1012:                                             ; preds = %1010
  %1013 = icmp slt i32 %1001, %1003
  br i1 %1013, label %1019, label %1014

1014:                                             ; preds = %1012
  %1015 = icmp eq i32 %1001, %1003
  %1016 = icmp slt i32 %1000, %1002
  %1017 = select i1 %1015, i1 %1016, i1 false
  %1018 = select i1 %1017, i32 %1002, i32 %1000
  br label %1019

1019:                                             ; preds = %1014, %1012, %1010, %994
  %1020 = phi i32 [ %1007, %1010 ], [ %1008, %994 ], [ %1007, %1012 ], [ %1007, %1014 ]
  %1021 = phi i32 [ %1001, %1010 ], [ %1003, %994 ], [ %1003, %1012 ], [ %1001, %1014 ]
  %1022 = phi i32 [ %1000, %1010 ], [ %1002, %994 ], [ %1002, %1012 ], [ %1018, %1014 ]
  %1023 = getelementptr inbounds i32, ptr %539, i64 %996
  %1024 = load i32, ptr %1023, align 4, !tbaa !11
  %1025 = sub nsw i32 %1024, %537
  %1026 = getelementptr inbounds i32, ptr %540, i64 %996
  %1027 = load i32, ptr %1026, align 4, !tbaa !11
  %1028 = getelementptr inbounds i32, ptr %541, i64 %996
  %1029 = load i32, ptr %1028, align 4, !tbaa !11
  %1030 = getelementptr inbounds i32, ptr %542, i64 %996
  %1031 = load i32, ptr %1030, align 4, !tbaa !11
  %1032 = sub nsw i32 %1031, %536
  %1033 = getelementptr inbounds i32, ptr %543, i64 %996
  %1034 = load i32, ptr %1033, align 4, !tbaa !11
  %1035 = getelementptr inbounds i32, ptr %544, i64 %996
  %1036 = load i32, ptr %1035, align 4, !tbaa !11
  %1037 = icmp slt i32 %1032, %1025
  br i1 %1037, label %1047, label %1038

1038:                                             ; preds = %1019
  %1039 = icmp eq i32 %1032, %1025
  br i1 %1039, label %1040, label %1047

1040:                                             ; preds = %1038
  %1041 = icmp slt i32 %1034, %1027
  br i1 %1041, label %1047, label %1042

1042:                                             ; preds = %1040
  %1043 = icmp eq i32 %1034, %1027
  %1044 = icmp slt i32 %1036, %1029
  %1045 = select i1 %1043, i1 %1044, i1 false
  %1046 = select i1 %1045, i32 %1029, i32 %1036
  br label %1047

1047:                                             ; preds = %1042, %1040, %1038, %1019
  %1048 = phi i32 [ %1032, %1038 ], [ %1025, %1019 ], [ %1025, %1040 ], [ %1025, %1042 ]
  %1049 = phi i32 [ %1034, %1038 ], [ %1027, %1019 ], [ %1027, %1040 ], [ %1034, %1042 ]
  %1050 = phi i32 [ %1036, %1038 ], [ %1029, %1019 ], [ %1029, %1040 ], [ %1046, %1042 ]
  %1051 = getelementptr inbounds ptr, ptr %546, i64 %996
  %1052 = load ptr, ptr %1051, align 8, !tbaa !7
  %1053 = icmp eq ptr %1052, null
  br i1 %1053, label %1062, label %1058

1054:                                             ; preds = %1058
  %1055 = getelementptr inbounds %struct.ONE, ptr %1059, i64 0, i32 1
  %1056 = load ptr, ptr %1055, align 8, !tbaa !7
  %1057 = icmp eq ptr %1056, null
  br i1 %1057, label %1062, label %1058, !llvm.loop !48

1058:                                             ; preds = %1054, %1047
  %1059 = phi ptr [ %1056, %1054 ], [ %1052, %1047 ]
  %1060 = load i32, ptr %1059, align 8, !tbaa !20
  %1061 = icmp eq i32 %1060, %966
  br i1 %1061, label %1069, label %1054

1062:                                             ; preds = %1054, %1047
  %1063 = getelementptr inbounds i8, ptr %0, i64 %996
  %1064 = load i8, ptr %1063, align 1, !tbaa !16
  %1065 = sext i8 %1064 to i64
  %1066 = getelementptr inbounds i32, ptr %971, i64 %1065
  %1067 = load i32, ptr %1066, align 4, !tbaa !11
  %1068 = add nsw i32 %1067, %1004
  br label %1069

1069:                                             ; preds = %1062, %1058
  %1070 = phi ptr [ null, %1062 ], [ %1059, %1058 ]
  %1071 = phi i32 [ %1068, %1062 ], [ 0, %1058 ]
  %1072 = icmp slt i32 %1071, 1
  %1073 = select i1 %1072, i32 0, i32 %1071
  %1074 = trunc i64 %996 to i32
  %1075 = select i1 %1072, i32 %1074, i32 %999
  %1076 = select i1 %1072, i32 %966, i32 %998
  %1077 = icmp slt i32 %1073, %1048
  br i1 %1077, label %1087, label %1078

1078:                                             ; preds = %1069
  %1079 = icmp eq i32 %1073, %1048
  br i1 %1079, label %1080, label %1087

1080:                                             ; preds = %1078
  %1081 = icmp slt i32 %1075, %1049
  br i1 %1081, label %1087, label %1082

1082:                                             ; preds = %1080
  %1083 = icmp eq i32 %1075, %1049
  %1084 = icmp slt i32 %1076, %1050
  %1085 = select i1 %1083, i1 %1084, i1 false
  %1086 = select i1 %1085, i32 %1050, i32 %1076
  br label %1087

1087:                                             ; preds = %1082, %1080, %1078, %1069
  %1088 = phi i32 [ %1073, %1078 ], [ %1048, %1069 ], [ %1048, %1080 ], [ %1048, %1082 ]
  %1089 = phi i32 [ %1075, %1078 ], [ %1049, %1069 ], [ %1049, %1080 ], [ %1075, %1082 ]
  %1090 = phi i32 [ %1076, %1078 ], [ %1050, %1069 ], [ %1050, %1080 ], [ %1086, %1082 ]
  %1091 = icmp slt i32 %1088, %1020
  br i1 %1091, label %1101, label %1092

1092:                                             ; preds = %1087
  %1093 = icmp eq i32 %1088, %1020
  br i1 %1093, label %1094, label %1101

1094:                                             ; preds = %1092
  %1095 = icmp slt i32 %1089, %1021
  br i1 %1095, label %1101, label %1096

1096:                                             ; preds = %1094
  %1097 = icmp eq i32 %1089, %1021
  %1098 = icmp slt i32 %1090, %1022
  %1099 = select i1 %1097, i1 %1098, i1 false
  %1100 = select i1 %1099, i32 %1022, i32 %1090
  br label %1101

1101:                                             ; preds = %1096, %1094, %1092, %1087
  %1102 = phi i32 [ %1088, %1092 ], [ %1020, %1087 ], [ %1020, %1094 ], [ %1020, %1096 ]
  %1103 = phi i32 [ %1089, %1092 ], [ %1021, %1087 ], [ %1021, %1094 ], [ %1089, %1096 ]
  %1104 = phi i32 [ %1090, %1092 ], [ %1022, %1087 ], [ %1022, %1094 ], [ %1100, %1096 ]
  store i32 %1102, ptr %1023, align 4, !tbaa !11
  store i32 %1103, ptr %1026, align 4, !tbaa !11
  store i32 %1104, ptr %1028, align 4, !tbaa !11
  store i32 %1048, ptr %1030, align 4, !tbaa !11
  store i32 %1049, ptr %1033, align 4, !tbaa !11
  store i32 %1050, ptr %1035, align 4, !tbaa !11
  %1105 = icmp sgt i32 %1102, %538
  %1106 = select i1 %1105, i1 true, i1 %995
  %1107 = icmp eq i16 %997, 0
  br i1 %1107, label %1108, label %1121

1108:                                             ; preds = %1101
  %1109 = icmp sgt i32 %1103, %729
  %1110 = icmp sgt i32 %1104, %728
  %1111 = select i1 %1109, i1 %1110, i1 false
  br i1 %1111, label %1120, label %1112

1112:                                             ; preds = %1108
  %1113 = icmp sgt i32 %1049, %729
  %1114 = icmp sgt i32 %1050, %728
  %1115 = select i1 %1113, i1 %1114, i1 false
  br i1 %1115, label %1120, label %1116

1116:                                             ; preds = %1112
  %1117 = icmp sgt i32 %1021, %729
  %1118 = icmp sgt i32 %1022, %728
  %1119 = select i1 %1117, i1 %1118, i1 false
  br i1 %1119, label %1120, label %1121

1120:                                             ; preds = %1116, %1112, %1108
  br label %1121

1121:                                             ; preds = %1120, %1116, %1101
  %1122 = phi i16 [ 1, %1101 ], [ 1, %1120 ], [ 0, %1116 ]
  %1123 = add nsw i64 %996, -1
  %1124 = icmp sgt i64 %996, %993
  br i1 %1124, label %994, label %1125, !llvm.loop !49

1125:                                             ; preds = %1121
  %.lcssa40 = phi i16 [ %1122, %1121 ]
  %.lcssa39 = phi i32 [ %1103, %1121 ]
  %.lcssa38 = phi i32 [ %1104, %1121 ]
  %.lcssa37 = phi i1 [ %1106, %1121 ]
  %.lcssa36 = phi ptr [ %1070, %1121 ]
  %.lcssa35 = phi i32 [ %1049, %1121 ]
  %.lcssa34 = phi i32 [ %1050, %1121 ]
  %.lcssa33 = phi i32 [ %1021, %1121 ]
  %.lcssa32 = phi i32 [ %1022, %1121 ]
  store ptr %.lcssa36, ptr @z, align 8, !tbaa !7
  br label %1126

1126:                                             ; preds = %1125, %989
  %1127 = phi i1 [ %.lcssa31, %989 ], [ %.lcssa37, %1125 ]
  %1128 = phi i64 [ %990, %989 ], [ %993, %1125 ]
  %1129 = phi i32 [ %984, %989 ], [ %.lcssa39, %1125 ]
  %1130 = phi i32 [ %966, %989 ], [ %.lcssa38, %1125 ]
  %1131 = phi i32 [ %.lcssa27, %989 ], [ %.lcssa35, %1125 ]
  %1132 = phi i32 [ %.lcssa26, %989 ], [ %.lcssa34, %1125 ]
  %1133 = phi i32 [ %984, %989 ], [ %.lcssa33, %1125 ]
  %1134 = phi i32 [ %966, %989 ], [ %.lcssa32, %1125 ]
  %1135 = phi i16 [ 0, %989 ], [ %.lcssa40, %1125 ]
  %1136 = getelementptr inbounds i32, ptr %539, i64 %1128
  %1137 = load i32, ptr %1136, align 4, !tbaa !11
  %1138 = getelementptr inbounds i32, ptr %502, i64 %967
  store i32 %1137, ptr %1138, align 4, !tbaa !11
  %1139 = getelementptr inbounds i32, ptr %540, i64 %1128
  %1140 = load i32, ptr %1139, align 4, !tbaa !11
  %1141 = getelementptr inbounds i32, ptr %503, i64 %967
  store i32 %1140, ptr %1141, align 4, !tbaa !11
  %1142 = getelementptr inbounds i32, ptr %541, i64 %1128
  %1143 = load i32, ptr %1142, align 4, !tbaa !11
  %1144 = getelementptr inbounds i32, ptr %504, i64 %967
  store i32 %1143, ptr %1144, align 4, !tbaa !11
  %1145 = getelementptr inbounds i32, ptr %542, i64 %1128
  %1146 = load i32, ptr %1145, align 4, !tbaa !11
  %1147 = getelementptr inbounds i32, ptr %505, i64 %967
  store i32 %1146, ptr %1147, align 4, !tbaa !11
  %1148 = getelementptr inbounds i32, ptr %543, i64 %1128
  %1149 = load i32, ptr %1148, align 4, !tbaa !11
  %1150 = getelementptr inbounds i32, ptr %506, i64 %967
  store i32 %1149, ptr %1150, align 4, !tbaa !11
  %1151 = getelementptr inbounds i32, ptr %544, i64 %1128
  %1152 = load i32, ptr %1151, align 4, !tbaa !11
  %1153 = getelementptr inbounds i32, ptr %507, i64 %967
  store i32 %1152, ptr %1153, align 4, !tbaa !11
  %1154 = icmp eq i16 %.lcssa25, 0
  br i1 %1154, label %1155, label %1168

1155:                                             ; preds = %1126
  %1156 = icmp sgt i32 %1129, %729
  %1157 = icmp sgt i32 %1130, %728
  %1158 = select i1 %1156, i1 %1157, i1 false
  br i1 %1158, label %1167, label %1159

1159:                                             ; preds = %1155
  %1160 = icmp sgt i32 %1131, %729
  %1161 = icmp sgt i32 %1132, %728
  %1162 = select i1 %1160, i1 %1161, i1 false
  br i1 %1162, label %1167, label %1163

1163:                                             ; preds = %1159
  %1164 = icmp sgt i32 %1133, %729
  %1165 = icmp sgt i32 %1134, %728
  %1166 = select i1 %1164, i1 %1165, i1 false
  br i1 %1166, label %1167, label %1168

1167:                                             ; preds = %1163, %1159, %1155
  br label %1168

1168:                                             ; preds = %1167, %1163, %1126
  %1169 = phi i16 [ 1, %1167 ], [ 0, %1163 ], [ 1, %1126 ]
  br label %735, !llvm.loop !47

1170:                                             ; preds = %767
  %.lcssa42 = phi i32 [ %738, %767 ]
  %.lcssa41 = phi i32 [ %754, %767 ]
  %.lcssa23 = phi i1 [ %756, %767 ]
  %.lcssa21 = phi i32 [ %757, %767 ]
  %.lcssa19 = phi i32 [ %758, %767 ]
  %.lcssa17 = phi i32 [ %759, %767 ]
  %.lcssa15 = phi i32 [ %760, %767 ]
  %.lcssa13 = phi i32 [ %761, %767 ]
  %1171 = icmp eq i32 %.lcssa17, 1
  %1172 = icmp eq i32 %.lcssa41, 1
  %1173 = select i1 %1171, i1 %1172, i1 false
  br i1 %1173, label %1216, label %1174

1174:                                             ; preds = %1170
  br i1 %721, label %1175, label %1210

1175:                                             ; preds = %1174
  %1176 = add nsw i32 %.lcssa21, -1
  %1177 = add nsw i32 %.lcssa42, -1
  br label %1178

1178:                                             ; preds = %1207, %1175
  %1179 = phi i64 [ 0, %1175 ], [ %1208, %1207 ]
  %1180 = getelementptr inbounds ptr, ptr %722, i64 %1179
  %1181 = load ptr, ptr %1180, align 8, !tbaa !7
  %1182 = getelementptr inbounds %struct.NODE, ptr %1181, i64 0, i32 1
  %1183 = load i32, ptr %1182, align 4, !tbaa !31
  %1184 = icmp sgt i32 %1183, %500
  br i1 %1184, label %1207, label %1185

1185:                                             ; preds = %1178
  %1186 = getelementptr inbounds %struct.NODE, ptr %1181, i64 0, i32 2
  %1187 = load i32, ptr %1186, align 4, !tbaa !32
  %1188 = icmp sgt i32 %1187, %497
  br i1 %1188, label %1207, label %1189

1189:                                             ; preds = %1185
  %1190 = getelementptr inbounds %struct.NODE, ptr %1181, i64 0, i32 6
  %1191 = load i32, ptr %1190, align 4, !tbaa !36
  %1192 = icmp slt i32 %1191, %1176
  br i1 %1192, label %1207, label %1193

1193:                                             ; preds = %1189
  %1194 = getelementptr inbounds %struct.NODE, ptr %1181, i64 0, i32 8
  %1195 = load i32, ptr %1194, align 4, !tbaa !38
  %1196 = icmp slt i32 %1195, %1177
  br i1 %1196, label %1207, label %1197

1197:                                             ; preds = %1193
  %1198 = icmp slt i32 %1183, %729
  %1199 = icmp slt i32 %1187, %728
  %1200 = select i1 %1198, i1 true, i1 %1199
  br i1 %1200, label %1201, label %1207

1201:                                             ; preds = %1197
  %.lcssa47 = phi i1 [ %1198, %1197 ]
  %.lcssa46 = phi i1 [ %1199, %1197 ]
  %.lcssa45 = phi i32 [ %1187, %1197 ]
  %.lcssa44 = phi i64 [ %1179, %1197 ]
  %.lcssa43 = phi i32 [ %1183, %1197 ]
  %1202 = trunc i64 %.lcssa44 to i32
  br i1 %.lcssa47, label %1203, label %1204

1203:                                             ; preds = %1201
  store i32 %.lcssa43, ptr @rl, align 4, !tbaa !11
  br label %1204

1204:                                             ; preds = %1203, %1201
  %1205 = phi i32 [ %.lcssa43, %1203 ], [ %729, %1201 ]
  br i1 %.lcssa46, label %1206, label %1210

1206:                                             ; preds = %1204
  store i32 %.lcssa45, ptr @cl, align 4, !tbaa !11
  br label %1210

1207:                                             ; preds = %1197, %1193, %1189, %1185, %1178
  %1208 = add nuw nsw i64 %1179, 1
  %1209 = icmp eq i64 %1208, %723
  br i1 %1209, label %1216, label %1178, !llvm.loop !50

1210:                                             ; preds = %1206, %1204, %1174
  %1211 = phi i1 [ %.lcssa23, %1174 ], [ true, %1206 ], [ true, %1204 ]
  %1212 = phi i32 [ %728, %1174 ], [ %.lcssa45, %1206 ], [ %728, %1204 ]
  %1213 = phi i32 [ %729, %1174 ], [ %1205, %1206 ], [ %1205, %1204 ]
  %1214 = phi i32 [ 0, %1174 ], [ %1202, %1206 ], [ %1202, %1204 ]
  %1215 = icmp eq i32 %1214, %720
  br i1 %1215, label %1216, label %724

1216:                                             ; preds = %1210, %1207, %1170
  %1217 = phi i1 [ %.lcssa23, %1207 ], [ %1211, %1210 ], [ %.lcssa23, %1170 ]
  %1218 = phi i32 [ %.lcssa41, %1207 ], [ %.lcssa41, %1210 ], [ 1, %1170 ]
  %1219 = phi i32 [ %.lcssa17, %1207 ], [ %.lcssa17, %1210 ], [ 1, %1170 ]
  %1220 = add nsw i32 %1219, -1
  store i32 %1220, ptr @m1, align 4, !tbaa !11
  %1221 = add nsw i32 %1218, -1
  store i32 %1221, ptr @n1, align 4, !tbaa !11
  br i1 %1217, label %1222, label %1444

1222:                                             ; preds = %1216
  %1223 = icmp sgt i32 %1218, %497
  br i1 %1223, label %1244, label %1224

1224:                                             ; preds = %1222
  %1225 = sext i32 %1221 to i64
  %1226 = shl nsw i64 %1225, 2
  %1227 = add nsw i64 %1226, 4
  %1228 = getelementptr i8, ptr %502, i64 %1227
  %1229 = sub i32 %497, %1218
  %1230 = zext i32 %1229 to i64
  %1231 = shl nuw nsw i64 %1230, 2
  %1232 = add nuw nsw i64 %1231, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %1228, i8 0, i64 %1232, i1 false), !tbaa !11
  %1233 = sext i32 %497 to i64
  br label %1234

1234:                                             ; preds = %1234, %1224
  %1235 = phi i64 [ %1225, %1224 ], [ %1236, %1234 ]
  %1236 = add nsw i64 %1235, 1
  %1237 = getelementptr inbounds i32, ptr %503, i64 %1236
  store i32 %1220, ptr %1237, align 4, !tbaa !11
  %1238 = getelementptr inbounds i32, ptr %504, i64 %1236
  %1239 = trunc i64 %1236 to i32
  store i32 %1239, ptr %1238, align 4, !tbaa !11
  %1240 = getelementptr inbounds i32, ptr %505, i64 %1236
  store i32 %508, ptr %1240, align 4, !tbaa !11
  %1241 = getelementptr inbounds i32, ptr %506, i64 %1236
  store i32 %1220, ptr %1241, align 4, !tbaa !11
  %1242 = getelementptr inbounds i32, ptr %507, i64 %1236
  store i32 %1239, ptr %1242, align 4, !tbaa !11
  %1243 = icmp eq i64 %1236, %1233
  br i1 %1243, label %1244, label %1234, !llvm.loop !51

1244:                                             ; preds = %1234, %1222
  %1245 = icmp sgt i32 %1219, %500
  br i1 %1245, label %1444, label %1246

1246:                                             ; preds = %1244
  %1247 = sext i32 %1220 to i64
  br label %1259

1248:                                             ; preds = %1432
  %.lcssa51 = phi i32 [ %1433, %1432 ]
  %.lcssa50 = phi i32 [ %1434, %1432 ]
  %.lcssa49 = phi i32 [ %1435, %1432 ]
  %.lcssa48 = phi i32 [ %1436, %1432 ]
  %1249 = load i32, ptr @mm, align 4, !tbaa !11
  br label %1250

1250:                                             ; preds = %1295, %1248
  %1251 = phi i32 [ %.lcssa51, %1248 ], [ %1260, %1295 ]
  %1252 = phi i32 [ %.lcssa50, %1248 ], [ %1261, %1295 ]
  %1253 = phi i32 [ %.lcssa49, %1248 ], [ %1262, %1295 ]
  %1254 = phi i32 [ %1249, %1248 ], [ %1263, %1295 ]
  %1255 = phi i32 [ %.lcssa48, %1248 ], [ %1264, %1295 ]
  %1256 = phi i32 [ %.lcssa48, %1248 ], [ %1265, %1295 ]
  %1257 = sext i32 %1254 to i64
  %1258 = icmp slt i64 %1267, %1257
  br i1 %1258, label %1259, label %1442, !llvm.loop !52

1259:                                             ; preds = %1250, %1246
  %1260 = phi i32 [ %538, %1246 ], [ %1251, %1250 ]
  %1261 = phi i32 [ %537, %1246 ], [ %1252, %1250 ]
  %1262 = phi i32 [ %536, %1246 ], [ %1253, %1250 ]
  %1263 = phi i32 [ %500, %1246 ], [ %1254, %1250 ]
  %1264 = phi i32 [ %497, %1246 ], [ %1255, %1250 ]
  %1265 = phi i32 [ %497, %1246 ], [ %1256, %1250 ]
  %1266 = phi i64 [ %1247, %1246 ], [ %1267, %1250 ]
  %1267 = add nsw i64 %1266, 1
  %1268 = load i32, ptr @q, align 4, !tbaa !11
  %1269 = sub nsw i32 0, %1268
  %1270 = load ptr, ptr @v, align 8, !tbaa !7
  %1271 = getelementptr inbounds i8, ptr %0, i64 %1267
  %1272 = load i8, ptr %1271, align 1, !tbaa !16
  %1273 = sext i8 %1272 to i64
  %1274 = getelementptr inbounds [256 x i32], ptr %1270, i64 %1273
  %1275 = load i32, ptr @n1, align 4
  %1276 = sext i32 %1275 to i64
  %1277 = icmp slt i64 %1266, %1276
  %1278 = select i1 %289, i1 true, i1 %1277
  br i1 %1278, label %1279, label %1282

1279:                                             ; preds = %1259
  %1280 = add nsw i32 %1275, 1
  %1281 = trunc i64 %1266 to i32
  br label %1295

1282:                                             ; preds = %1259
  %1283 = load ptr, ptr @CC, align 8, !tbaa !7
  %1284 = getelementptr inbounds i32, ptr %1283, i64 %1267
  %1285 = load i32, ptr %1284, align 4, !tbaa !11
  %1286 = load ptr, ptr @RR, align 8, !tbaa !7
  %1287 = getelementptr inbounds i32, ptr %1286, i64 %1267
  %1288 = load i32, ptr %1287, align 4, !tbaa !11
  %1289 = load ptr, ptr @EE, align 8, !tbaa !7
  %1290 = getelementptr inbounds i32, ptr %1289, i64 %1267
  %1291 = load i32, ptr %1290, align 4, !tbaa !11
  %1292 = trunc i64 %1266 to i32
  %1293 = add i32 %1292, 2
  %1294 = trunc i64 %1267 to i32
  br label %1295

1295:                                             ; preds = %1282, %1279
  %1296 = phi i32 [ 0, %1279 ], [ %1285, %1282 ]
  %1297 = phi i32 [ %1275, %1279 ], [ %1294, %1282 ]
  %1298 = phi i32 [ %1281, %1279 ], [ %1288, %1282 ]
  %1299 = phi i32 [ %1275, %1279 ], [ %1291, %1282 ]
  %1300 = phi i32 [ %1280, %1279 ], [ %1293, %1282 ]
  %1301 = icmp sgt i32 %1300, %1265
  br i1 %1301, label %1250, label %1302

1302:                                             ; preds = %1295
  %1303 = sext i32 %1300 to i64
  %1304 = trunc i64 %1267 to i32
  br label %1305

1305:                                             ; preds = %1432, %1302
  %1306 = phi i32 [ %1260, %1302 ], [ %1433, %1432 ]
  %1307 = phi i32 [ %1261, %1302 ], [ %1434, %1432 ]
  %1308 = phi i32 [ %1262, %1302 ], [ %1435, %1432 ]
  %1309 = phi i32 [ %1264, %1302 ], [ %1436, %1432 ]
  %1310 = phi i32 [ %1261, %1302 ], [ %1437, %1432 ]
  %1311 = phi i32 [ %1262, %1302 ], [ %1438, %1432 ]
  %1312 = phi i64 [ %1303, %1302 ], [ %1439, %1432 ]
  %1313 = phi i32 [ %1299, %1302 ], [ %1347, %1432 ]
  %1314 = phi i32 [ %1298, %1302 ], [ %1344, %1432 ]
  %1315 = phi i32 [ %1297, %1302 ], [ %1337, %1432 ]
  %1316 = phi i32 [ %1304, %1302 ], [ %1336, %1432 ]
  %1317 = phi i32 [ %1297, %1302 ], [ %1425, %1432 ]
  %1318 = phi i32 [ %1304, %1302 ], [ %1424, %1432 ]
  %1319 = phi i32 [ %1296, %1302 ], [ %1340, %1432 ]
  %1320 = phi i32 [ %1269, %1302 ], [ %1335, %1432 ]
  %1321 = phi i32 [ 0, %1302 ], [ %1423, %1432 ]
  %1322 = sub nsw i32 %1320, %1311
  %1323 = sub nsw i32 %1321, %1310
  %1324 = icmp slt i32 %1322, %1323
  br i1 %1324, label %1334, label %1325

1325:                                             ; preds = %1305
  %1326 = icmp eq i32 %1322, %1323
  br i1 %1326, label %1327, label %1334

1327:                                             ; preds = %1325
  %1328 = icmp slt i32 %1316, %1318
  br i1 %1328, label %1334, label %1329

1329:                                             ; preds = %1327
  %1330 = icmp eq i32 %1316, %1318
  %1331 = icmp slt i32 %1315, %1317
  %1332 = select i1 %1330, i1 %1331, i1 false
  %1333 = select i1 %1332, i32 %1317, i32 %1315
  br label %1334

1334:                                             ; preds = %1329, %1327, %1325, %1305
  %1335 = phi i32 [ %1322, %1325 ], [ %1323, %1305 ], [ %1322, %1327 ], [ %1322, %1329 ]
  %1336 = phi i32 [ %1316, %1325 ], [ %1318, %1305 ], [ %1318, %1327 ], [ %1316, %1329 ]
  %1337 = phi i32 [ %1315, %1325 ], [ %1317, %1305 ], [ %1317, %1327 ], [ %1333, %1329 ]
  %1338 = load ptr, ptr @CC, align 8, !tbaa !7
  %1339 = getelementptr inbounds i32, ptr %1338, i64 %1312
  %1340 = load i32, ptr %1339, align 4, !tbaa !11
  %1341 = sub nsw i32 %1340, %1310
  %1342 = load ptr, ptr @RR, align 8, !tbaa !7
  %1343 = getelementptr inbounds i32, ptr %1342, i64 %1312
  %1344 = load i32, ptr %1343, align 4, !tbaa !11
  %1345 = load ptr, ptr @EE, align 8, !tbaa !7
  %1346 = getelementptr inbounds i32, ptr %1345, i64 %1312
  %1347 = load i32, ptr %1346, align 4, !tbaa !11
  %1348 = load ptr, ptr @DD, align 8, !tbaa !7
  %1349 = getelementptr inbounds i32, ptr %1348, i64 %1312
  %1350 = load i32, ptr %1349, align 4, !tbaa !11
  %1351 = sub nsw i32 %1350, %1311
  %1352 = load ptr, ptr @SS, align 8, !tbaa !7
  %1353 = getelementptr inbounds i32, ptr %1352, i64 %1312
  %1354 = load i32, ptr %1353, align 4, !tbaa !11
  %1355 = load ptr, ptr @FF, align 8, !tbaa !7
  %1356 = getelementptr inbounds i32, ptr %1355, i64 %1312
  %1357 = load i32, ptr %1356, align 4, !tbaa !11
  %1358 = icmp slt i32 %1351, %1341
  br i1 %1358, label %1368, label %1359

1359:                                             ; preds = %1334
  %1360 = icmp eq i32 %1351, %1341
  br i1 %1360, label %1361, label %1368

1361:                                             ; preds = %1359
  %1362 = icmp slt i32 %1354, %1344
  br i1 %1362, label %1368, label %1363

1363:                                             ; preds = %1361
  %1364 = icmp eq i32 %1354, %1344
  %1365 = icmp slt i32 %1357, %1347
  %1366 = select i1 %1364, i1 %1365, i1 false
  %1367 = select i1 %1366, i32 %1347, i32 %1357
  br label %1368

1368:                                             ; preds = %1363, %1361, %1359, %1334
  %1369 = phi i32 [ %1351, %1359 ], [ %1341, %1334 ], [ %1341, %1361 ], [ %1341, %1363 ]
  %1370 = phi i32 [ %1354, %1359 ], [ %1344, %1334 ], [ %1344, %1361 ], [ %1354, %1363 ]
  %1371 = phi i32 [ %1357, %1359 ], [ %1347, %1334 ], [ %1347, %1361 ], [ %1367, %1363 ]
  %1372 = load ptr, ptr @row, align 8, !tbaa !7
  %1373 = getelementptr inbounds ptr, ptr %1372, i64 %1267
  %1374 = load ptr, ptr %1373, align 8, !tbaa !7
  store ptr %1374, ptr @z, align 8, !tbaa !7
  %1375 = icmp eq ptr %1374, null
  %1376 = trunc i64 %1312 to i32
  br i1 %1375, label %1385, label %1381

1377:                                             ; preds = %1381
  %1378 = getelementptr inbounds %struct.ONE, ptr %1382, i64 0, i32 1
  %1379 = load ptr, ptr %1378, align 8, !tbaa !7
  store ptr %1379, ptr @z, align 8, !tbaa !7
  %1380 = icmp eq ptr %1379, null
  br i1 %1380, label %1385, label %1381, !llvm.loop !53

1381:                                             ; preds = %1377, %1368
  %1382 = phi ptr [ %1379, %1377 ], [ %1374, %1368 ]
  %1383 = load i32, ptr %1382, align 8, !tbaa !20
  %1384 = icmp eq i32 %1383, %1376
  br i1 %1384, label %1392, label %1377

1385:                                             ; preds = %1377, %1368
  %1386 = getelementptr inbounds i8, ptr %1, i64 %1312
  %1387 = load i8, ptr %1386, align 1, !tbaa !16
  %1388 = sext i8 %1387 to i64
  %1389 = getelementptr inbounds i32, ptr %1274, i64 %1388
  %1390 = load i32, ptr %1389, align 4, !tbaa !11
  %1391 = add nsw i32 %1390, %1319
  br label %1392

1392:                                             ; preds = %1385, %1381
  %1393 = phi i32 [ %1391, %1385 ], [ 0, %1381 ]
  %1394 = icmp slt i32 %1393, 1
  %1395 = select i1 %1394, i32 0, i32 %1393
  %1396 = select i1 %1394, i32 %1304, i32 %1314
  %1397 = select i1 %1394, i32 %1376, i32 %1313
  %1398 = icmp slt i32 %1395, %1369
  br i1 %1398, label %1408, label %1399

1399:                                             ; preds = %1392
  %1400 = icmp eq i32 %1395, %1369
  br i1 %1400, label %1401, label %1408

1401:                                             ; preds = %1399
  %1402 = icmp slt i32 %1396, %1370
  br i1 %1402, label %1408, label %1403

1403:                                             ; preds = %1401
  %1404 = icmp eq i32 %1396, %1370
  %1405 = icmp slt i32 %1397, %1371
  %1406 = select i1 %1404, i1 %1405, i1 false
  %1407 = select i1 %1406, i32 %1371, i32 %1397
  br label %1408

1408:                                             ; preds = %1403, %1401, %1399, %1392
  %1409 = phi i32 [ %1395, %1399 ], [ %1369, %1392 ], [ %1369, %1401 ], [ %1369, %1403 ]
  %1410 = phi i32 [ %1396, %1399 ], [ %1370, %1392 ], [ %1370, %1401 ], [ %1396, %1403 ]
  %1411 = phi i32 [ %1397, %1399 ], [ %1371, %1392 ], [ %1371, %1401 ], [ %1407, %1403 ]
  %1412 = icmp slt i32 %1409, %1335
  br i1 %1412, label %1422, label %1413

1413:                                             ; preds = %1408
  %1414 = icmp eq i32 %1409, %1335
  br i1 %1414, label %1415, label %1422

1415:                                             ; preds = %1413
  %1416 = icmp slt i32 %1410, %1336
  br i1 %1416, label %1422, label %1417

1417:                                             ; preds = %1415
  %1418 = icmp eq i32 %1410, %1336
  %1419 = icmp slt i32 %1411, %1337
  %1420 = select i1 %1418, i1 %1419, i1 false
  %1421 = select i1 %1420, i32 %1337, i32 %1411
  br label %1422

1422:                                             ; preds = %1417, %1415, %1413, %1408
  %1423 = phi i32 [ %1409, %1413 ], [ %1335, %1408 ], [ %1335, %1415 ], [ %1335, %1417 ]
  %1424 = phi i32 [ %1410, %1413 ], [ %1336, %1408 ], [ %1336, %1415 ], [ %1410, %1417 ]
  %1425 = phi i32 [ %1411, %1413 ], [ %1337, %1408 ], [ %1337, %1415 ], [ %1421, %1417 ]
  store i32 %1423, ptr %1339, align 4, !tbaa !11
  store i32 %1424, ptr %1343, align 4, !tbaa !11
  store i32 %1425, ptr %1346, align 4, !tbaa !11
  store i32 %1369, ptr %1349, align 4, !tbaa !11
  store i32 %1370, ptr %1353, align 4, !tbaa !11
  store i32 %1371, ptr %1356, align 4, !tbaa !11
  %1426 = icmp sgt i32 %1423, %1306
  br i1 %1426, label %1427, label %1432

1427:                                             ; preds = %1422
  %1428 = tail call fastcc i32 @addnode(i32 noundef %1423, i32 noundef %1424, i32 noundef %1425, i32 noundef %1304, i32 noundef %1376, i32 noundef %297, i32 noundef %1306) #15
  store i32 %1428, ptr @min, align 4, !tbaa !11
  %1429 = load i32, ptr @r, align 4, !tbaa !11
  %1430 = load i32, ptr @qr, align 4, !tbaa !11
  %1431 = load i32, ptr @nn, align 4, !tbaa !11
  br label %1432

1432:                                             ; preds = %1427, %1422
  %1433 = phi i32 [ %1306, %1422 ], [ %1428, %1427 ]
  %1434 = phi i32 [ %1307, %1422 ], [ %1430, %1427 ]
  %1435 = phi i32 [ %1308, %1422 ], [ %1429, %1427 ]
  %1436 = phi i32 [ %1309, %1422 ], [ %1431, %1427 ]
  %1437 = phi i32 [ %1310, %1422 ], [ %1430, %1427 ]
  %1438 = phi i32 [ %1311, %1422 ], [ %1429, %1427 ]
  %1439 = add nsw i64 %1312, 1
  %1440 = sext i32 %1436 to i64
  %1441 = icmp slt i64 %1312, %1440
  br i1 %1441, label %1305, label %1248, !llvm.loop !54

1442:                                             ; preds = %1250
  %1443 = load i32, ptr @numnode, align 4, !tbaa !11
  br label %1444

1444:                                             ; preds = %1442, %1244, %1216
  %1445 = phi i32 [ %1443, %1442 ], [ %720, %1244 ], [ %720, %1216 ]
  %1446 = icmp eq i32 %1445, 0
  br i1 %1446, label %291, label %294, !llvm.loop !55

1447:                                             ; preds = %492, %282
  ret i32 undef
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @dtime() unnamed_addr #6 {
  %1 = tail call i32 @getrusage(i32 noundef 0, ptr noundef nonnull @rusage) #17
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

; Function Attrs: nofree norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc i32 @addnode(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) unnamed_addr #12 {
  %8 = load ptr, ptr @most, align 8, !tbaa !7
  %9 = icmp eq ptr %8, null
  br i1 %9, label %18, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.NODE, ptr %8, i64 0, i32 1
  %12 = load i32, ptr %11, align 4, !tbaa !31
  %13 = icmp eq i32 %12, %1
  br i1 %13, label %14, label %18

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.NODE, ptr %8, i64 0, i32 2
  %16 = load i32, ptr %15, align 4, !tbaa !32
  %17 = icmp eq i32 %16, %2
  br i1 %17, label %39, label %18

18:                                               ; preds = %14, %10, %7
  %19 = load i32, ptr @numnode, align 4, !tbaa !11
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %65

21:                                               ; preds = %18
  %22 = load ptr, ptr @LIST, align 8, !tbaa !7
  %23 = zext i32 %19 to i64
  br label %24

24:                                               ; preds = %35, %21
  %25 = phi i64 [ 0, %21 ], [ %36, %35 ]
  %26 = getelementptr inbounds ptr, ptr %22, i64 %25
  %27 = load ptr, ptr %26, align 8, !tbaa !7
  %28 = getelementptr inbounds %struct.NODE, ptr %27, i64 0, i32 1
  %29 = load i32, ptr %28, align 4, !tbaa !31
  %30 = icmp eq i32 %29, %1
  br i1 %30, label %31, label %35

31:                                               ; preds = %24
  %32 = getelementptr inbounds %struct.NODE, ptr %27, i64 0, i32 2
  %33 = load i32, ptr %32, align 4, !tbaa !32
  %34 = icmp eq i32 %33, %2
  br i1 %34, label %38, label %35

35:                                               ; preds = %31, %24
  %36 = add nuw nsw i64 %25, 1
  %37 = icmp eq i64 %36, %23
  br i1 %37, label %65, label %24, !llvm.loop !56

38:                                               ; preds = %31
  %.lcssa = phi ptr [ %27, %31 ]
  store ptr %.lcssa, ptr @most, align 8, !tbaa !7
  br label %39

39:                                               ; preds = %38, %14
  %40 = phi ptr [ %8, %14 ], [ %.lcssa, %38 ]
  %41 = load i32, ptr %40, align 4, !tbaa !28
  %42 = icmp slt i32 %41, %0
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  store i32 %0, ptr %40, align 4, !tbaa !28
  %44 = getelementptr inbounds %struct.NODE, ptr %40, i64 0, i32 3
  store i32 %3, ptr %44, align 4, !tbaa !33
  %45 = getelementptr inbounds %struct.NODE, ptr %40, i64 0, i32 4
  store i32 %4, ptr %45, align 4, !tbaa !34
  br label %46

46:                                               ; preds = %43, %39
  %47 = getelementptr inbounds %struct.NODE, ptr %40, i64 0, i32 5
  %48 = load i32, ptr %47, align 4, !tbaa !35
  %49 = icmp sgt i32 %48, %3
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  store i32 %3, ptr %47, align 4, !tbaa !35
  br label %51

51:                                               ; preds = %50, %46
  %52 = getelementptr inbounds %struct.NODE, ptr %40, i64 0, i32 6
  %53 = load i32, ptr %52, align 4, !tbaa !36
  %54 = icmp slt i32 %53, %3
  br i1 %54, label %55, label %56

55:                                               ; preds = %51
  store i32 %3, ptr %52, align 4, !tbaa !36
  br label %56

56:                                               ; preds = %55, %51
  %57 = getelementptr inbounds %struct.NODE, ptr %40, i64 0, i32 7
  %58 = load i32, ptr %57, align 4, !tbaa !37
  %59 = icmp sgt i32 %58, %4
  br i1 %59, label %60, label %61

60:                                               ; preds = %56
  store i32 %4, ptr %57, align 4, !tbaa !37
  br label %61

61:                                               ; preds = %60, %56
  %62 = getelementptr inbounds %struct.NODE, ptr %40, i64 0, i32 8
  %63 = load i32, ptr %62, align 4, !tbaa !38
  %64 = icmp slt i32 %63, %4
  br i1 %64, label %83, label %86

65:                                               ; preds = %35, %18
  %66 = icmp eq i32 %19, %5
  br i1 %66, label %72, label %67

67:                                               ; preds = %65
  %68 = load ptr, ptr @LIST, align 8, !tbaa !7
  %69 = add nsw i32 %19, 1
  store i32 %69, ptr @numnode, align 4, !tbaa !11
  %70 = sext i32 %19 to i64
  %71 = getelementptr inbounds ptr, ptr %68, i64 %70
  br label %72

72:                                               ; preds = %67, %65
  %73 = phi ptr [ %71, %67 ], [ @low, %65 ]
  %74 = load ptr, ptr %73, align 8, !tbaa !7
  store ptr %74, ptr @most, align 8, !tbaa !7
  store i32 %0, ptr %74, align 4, !tbaa !28
  %75 = getelementptr inbounds %struct.NODE, ptr %74, i64 0, i32 1
  store i32 %1, ptr %75, align 4, !tbaa !31
  %76 = getelementptr inbounds %struct.NODE, ptr %74, i64 0, i32 2
  store i32 %2, ptr %76, align 4, !tbaa !32
  %77 = getelementptr inbounds %struct.NODE, ptr %74, i64 0, i32 3
  store i32 %3, ptr %77, align 4, !tbaa !33
  %78 = getelementptr inbounds %struct.NODE, ptr %74, i64 0, i32 4
  store i32 %4, ptr %78, align 4, !tbaa !34
  %79 = getelementptr inbounds %struct.NODE, ptr %74, i64 0, i32 6
  store i32 %3, ptr %79, align 4, !tbaa !36
  %80 = getelementptr inbounds %struct.NODE, ptr %74, i64 0, i32 5
  store i32 %3, ptr %80, align 4, !tbaa !35
  %81 = getelementptr inbounds %struct.NODE, ptr %74, i64 0, i32 8
  store i32 %4, ptr %81, align 4, !tbaa !38
  %82 = getelementptr inbounds %struct.NODE, ptr %74, i64 0, i32 7
  br label %83

83:                                               ; preds = %72, %61
  %84 = phi ptr [ %82, %72 ], [ %62, %61 ]
  %85 = phi ptr [ %74, %72 ], [ %40, %61 ]
  store i32 %4, ptr %84, align 4, !tbaa !11
  br label %86

86:                                               ; preds = %83, %61
  %87 = phi ptr [ %40, %61 ], [ %85, %83 ]
  %88 = load i32, ptr @numnode, align 4, !tbaa !11
  %89 = icmp eq i32 %88, %5
  br i1 %89, label %90, label %117

90:                                               ; preds = %86
  %91 = load ptr, ptr @low, align 8
  %92 = icmp ne ptr %91, %87
  %93 = icmp ne ptr %91, null
  %94 = and i1 %93, %92
  br i1 %94, label %114, label %95

95:                                               ; preds = %90
  %96 = load ptr, ptr @LIST, align 8, !tbaa !7
  %97 = load ptr, ptr %96, align 8, !tbaa !7
  store ptr %97, ptr @low, align 8, !tbaa !7
  %98 = icmp sgt i32 %5, 1
  br i1 %98, label %99, label %114

99:                                               ; preds = %95
  %100 = zext i32 %5 to i64
  br label %101

101:                                              ; preds = %110, %99
  %102 = phi i64 [ 1, %99 ], [ %112, %110 ]
  %103 = phi ptr [ %97, %99 ], [ %111, %110 ]
  %104 = getelementptr inbounds ptr, ptr %96, i64 %102
  %105 = load ptr, ptr %104, align 8, !tbaa !7
  %106 = load i32, ptr %105, align 4, !tbaa !28
  %107 = load i32, ptr %103, align 4, !tbaa !28
  %108 = icmp slt i32 %106, %107
  br i1 %108, label %109, label %110

109:                                              ; preds = %101
  store ptr %105, ptr @low, align 8, !tbaa !7
  br label %110

110:                                              ; preds = %109, %101
  %111 = phi ptr [ %103, %101 ], [ %105, %109 ]
  %112 = add nuw nsw i64 %102, 1
  %113 = icmp eq i64 %112, %100
  br i1 %113, label %114, label %101, !llvm.loop !57

114:                                              ; preds = %110, %95, %90
  %115 = phi ptr [ %97, %95 ], [ %91, %90 ], [ %111, %110 ]
  %116 = load i32, ptr %115, align 4, !tbaa !28
  br label %117

117:                                              ; preds = %114, %86
  %118 = phi i32 [ %116, %114 ], [ %6, %86 ]
  ret i32 %118
}

; Function Attrs: nofree nounwind optsize uwtable
define internal fastcc void @diff(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #13 {
  %7 = icmp sgt i32 %3, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %6
  %9 = sub nsw i32 0, %5
  br label %31

10:                                               ; preds = %405, %6
  %11 = phi i32 [ %2, %6 ], [ %407, %405 ]
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %436

13:                                               ; preds = %10
  %14 = load i32, ptr @I, align 4, !tbaa !11
  %15 = add nsw i32 %14, %11
  store i32 %15, ptr @I, align 4, !tbaa !11
  %16 = load i32, ptr @al_len, align 4, !tbaa !11
  %17 = add nsw i32 %16, %11
  store i32 %17, ptr @al_len, align 4, !tbaa !11
  %18 = load i32, ptr @last, align 4, !tbaa !11
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %13
  %21 = load ptr, ptr @sapp, align 8, !tbaa !7
  %22 = getelementptr inbounds i32, ptr %21, i64 -1
  %23 = load i32, ptr %22, align 4, !tbaa !11
  %24 = sub nsw i32 %23, %11
  store i32 %24, ptr %22, align 4, !tbaa !11
  br label %29

25:                                               ; preds = %13
  %26 = sub nsw i32 0, %11
  %27 = load ptr, ptr @sapp, align 8, !tbaa !7
  %28 = getelementptr inbounds i32, ptr %27, i64 1
  store ptr %28, ptr @sapp, align 8, !tbaa !7
  store i32 %26, ptr %27, align 4, !tbaa !11
  br label %29

29:                                               ; preds = %25, %20
  %30 = phi i32 [ %24, %20 ], [ %26, %25 ]
  store i32 %30, ptr @last, align 4, !tbaa !11
  br label %436

31:                                               ; preds = %405, %8
  %32 = phi i1 [ false, %8 ], [ true, %405 ]
  %33 = phi i32 [ poison, %8 ], [ %409, %405 ]
  %34 = phi i32 [ %4, %8 ], [ %408, %405 ]
  %35 = phi i32 [ %3, %8 ], [ %410, %405 ]
  %36 = phi i32 [ %2, %8 ], [ %407, %405 ]
  %37 = phi ptr [ %1, %8 ], [ %412, %405 ]
  %38 = phi ptr [ %0, %8 ], [ %406, %405 ]
  %39 = icmp slt i32 %36, 2
  br i1 %39, label %40, label %181

40:                                               ; preds = %31
  %.lcssa12 = phi i32 [ %34, %31 ]
  %.lcssa11 = phi i32 [ %35, %31 ]
  %.lcssa10 = phi i32 [ %36, %31 ]
  %.lcssa9 = phi ptr [ %37, %31 ]
  %.lcssa8 = phi ptr [ %38, %31 ]
  %41 = icmp eq i32 %.lcssa10, 1
  br i1 %41, label %54, label %42

42:                                               ; preds = %40
  %43 = load i32, ptr @J, align 4, !tbaa !11
  %44 = add nsw i32 %43, %.lcssa11
  store i32 %44, ptr @J, align 4, !tbaa !11
  %45 = load i32, ptr @al_len, align 4, !tbaa !11
  %46 = add nsw i32 %45, %.lcssa11
  store i32 %46, ptr @al_len, align 4, !tbaa !11
  %47 = load i32, ptr @last, align 4, !tbaa !11
  %48 = icmp slt i32 %47, 0
  %49 = load ptr, ptr @sapp, align 8, !tbaa !7
  %50 = getelementptr inbounds i32, ptr %49, i64 -1
  %51 = select i1 %48, ptr %50, ptr @last
  %52 = select i1 %48, i32 %47, i32 %.lcssa11
  store i32 %.lcssa11, ptr %51, align 4, !tbaa !11
  store i32 %52, ptr %49, align 4
  %53 = getelementptr inbounds i32, ptr %49, i64 1
  store ptr %53, ptr @sapp, align 8
  br label %436

54:                                               ; preds = %40
  %55 = tail call i32 @llvm.smin.i32(i32 %.lcssa12, i32 %5)
  %56 = load i32, ptr @r, align 4
  %57 = add nsw i32 %55, %56
  %58 = load i32, ptr @q, align 4
  %59 = mul nsw i32 %56, %.lcssa11
  %60 = add nsw i32 %58, %59
  %61 = add nsw i32 %57, %60
  %62 = sub nsw i32 0, %61
  %63 = load ptr, ptr @v, align 8, !tbaa !7
  %64 = getelementptr inbounds i8, ptr %.lcssa8, i64 1
  %65 = load i8, ptr %64, align 1, !tbaa !16
  %66 = sext i8 %65 to i64
  %67 = getelementptr inbounds [256 x i32], ptr %63, i64 %66
  %68 = load ptr, ptr @row, align 8, !tbaa !7
  %69 = load i32, ptr @I, align 4, !tbaa !11
  %70 = add nsw i32 %69, 1
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds ptr, ptr %68, i64 %71
  %73 = load i32, ptr @J, align 4
  %74 = add nuw i32 %.lcssa11, 1
  %75 = zext i32 %74 to i64
  %76 = load ptr, ptr %72, align 8, !tbaa !7
  %77 = icmp eq ptr %76, null
  br label %78

78:                                               ; preds = %114, %54
  %79 = phi i64 [ 1, %54 ], [ %118, %114 ]
  %80 = phi i32 [ %62, %54 ], [ %117, %114 ]
  %81 = phi i32 [ 0, %54 ], [ %116, %114 ]
  %82 = trunc i64 %79 to i32
  br i1 %77, label %93, label %83

83:                                               ; preds = %78
  %84 = add nsw i32 %73, %82
  br label %89

85:                                               ; preds = %89
  %86 = getelementptr inbounds %struct.ONE, ptr %90, i64 0, i32 1
  %87 = load ptr, ptr %86, align 8, !tbaa !7
  %88 = icmp eq ptr %87, null
  br i1 %88, label %93, label %89, !llvm.loop !58

89:                                               ; preds = %85, %83
  %90 = phi ptr [ %76, %83 ], [ %87, %85 ]
  %91 = load i32, ptr %90, align 8, !tbaa !20
  %92 = icmp eq i32 %91, %84
  br i1 %92, label %114, label %85

93:                                               ; preds = %85, %78
  %94 = getelementptr inbounds i8, ptr %.lcssa9, i64 %79
  %95 = load i8, ptr %94, align 1, !tbaa !16
  %96 = sext i8 %95 to i64
  %97 = getelementptr inbounds i32, ptr %67, i64 %96
  %98 = load i32, ptr %97, align 4, !tbaa !11
  %99 = icmp ult i64 %79, 2
  %100 = sub i32 1, %82
  %101 = mul i32 %100, %56
  %102 = sub i32 %101, %58
  %103 = select i1 %99, i32 0, i32 %102
  %104 = sub nsw i32 %.lcssa11, %82
  %105 = mul nsw i32 %104, %56
  %106 = add nsw i32 %105, %58
  %107 = icmp sgt i32 %104, 0
  %108 = select i1 %107, i32 %106, i32 0
  %109 = sub i32 %103, %108
  %110 = add i32 %98, %109
  %111 = icmp sgt i32 %110, %80
  %112 = select i1 %111, i32 %82, i32 %81
  %113 = tail call i32 @llvm.smax.i32(i32 %110, i32 %80)
  br label %114

114:                                              ; preds = %93, %89
  %115 = phi ptr [ null, %93 ], [ %90, %89 ]
  %116 = phi i32 [ %112, %93 ], [ %81, %89 ]
  %117 = phi i32 [ %113, %93 ], [ %80, %89 ]
  %118 = add nuw nsw i64 %79, 1
  %119 = icmp eq i64 %118, %75
  br i1 %119, label %120, label %78, !llvm.loop !59

120:                                              ; preds = %114
  %.lcssa1 = phi ptr [ %115, %114 ]
  %.lcssa = phi i32 [ %116, %114 ]
  store ptr %.lcssa1, ptr @z, align 8, !tbaa !7
  %121 = icmp eq i32 %.lcssa, 0
  br i1 %121, label %122, label %140

122:                                              ; preds = %120
  %123 = add nsw i32 %73, %.lcssa11
  store i32 %123, ptr @J, align 4, !tbaa !11
  %124 = load i32, ptr @al_len, align 4, !tbaa !11
  %125 = add nsw i32 %124, %.lcssa11
  %126 = load i32, ptr @last, align 4, !tbaa !11
  %127 = icmp slt i32 %126, 0
  %128 = load ptr, ptr @sapp, align 8, !tbaa !7
  %129 = getelementptr inbounds i32, ptr %128, i64 1
  %130 = add nsw i32 %125, 1
  br i1 %127, label %131, label %133

131:                                              ; preds = %122
  %132 = getelementptr inbounds i32, ptr %128, i64 -1
  store i32 %.lcssa11, ptr %132, align 4, !tbaa !11
  store ptr %129, ptr @sapp, align 8
  store i32 %70, ptr @I, align 4, !tbaa !11
  store i32 %130, ptr @al_len, align 4, !tbaa !11
  br label %135

133:                                              ; preds = %122
  store i32 %.lcssa11, ptr %128, align 4, !tbaa !11
  store i32 %.lcssa11, ptr @last, align 4, !tbaa !11
  store ptr %129, ptr @sapp, align 8
  store i32 %70, ptr @I, align 4, !tbaa !11
  store i32 %130, ptr @al_len, align 4, !tbaa !11
  %134 = icmp slt i32 %.lcssa11, 0
  br i1 %134, label %135, label %138

135:                                              ; preds = %133, %131
  %136 = phi i32 [ %126, %131 ], [ %.lcssa11, %133 ]
  %137 = add nsw i32 %136, -1
  store i32 %137, ptr %128, align 4, !tbaa !11
  store i32 %137, ptr @last, align 4, !tbaa !11
  br label %436

138:                                              ; preds = %133
  %139 = getelementptr inbounds i32, ptr %128, i64 2
  store ptr %139, ptr @sapp, align 8, !tbaa !7
  store i32 -1, ptr %129, align 4, !tbaa !11
  store i32 -1, ptr @last, align 4, !tbaa !11
  br label %436

140:                                              ; preds = %120
  %141 = icmp sgt i32 %.lcssa, 1
  br i1 %141, label %145, label %142

142:                                              ; preds = %140
  %143 = load ptr, ptr @sapp, align 8, !tbaa !7
  %144 = load i32, ptr @al_len, align 4, !tbaa !11
  br label %158

145:                                              ; preds = %140
  %146 = add nsw i32 %.lcssa, -1
  %147 = add nsw i32 %146, %73
  %148 = load i32, ptr @al_len, align 4, !tbaa !11
  %149 = add nsw i32 %148, %146
  %150 = load i32, ptr @last, align 4, !tbaa !11
  %151 = icmp slt i32 %150, 0
  %152 = load ptr, ptr @sapp, align 8, !tbaa !7
  br i1 %151, label %153, label %156

153:                                              ; preds = %145
  %154 = getelementptr inbounds i32, ptr %152, i64 -1
  store i32 %146, ptr %154, align 4, !tbaa !11
  %155 = getelementptr inbounds i32, ptr %152, i64 1
  store i32 %150, ptr %152, align 4, !tbaa !11
  br label %158

156:                                              ; preds = %145
  %157 = getelementptr inbounds i32, ptr %152, i64 1
  store i32 %146, ptr %152, align 4, !tbaa !11
  br label %158

158:                                              ; preds = %156, %153, %142
  %159 = phi i32 [ %73, %142 ], [ %147, %153 ], [ %147, %156 ]
  %160 = phi i32 [ %144, %142 ], [ %149, %153 ], [ %149, %156 ]
  %161 = phi ptr [ %143, %142 ], [ %155, %153 ], [ %157, %156 ]
  %162 = getelementptr inbounds i32, ptr %161, i64 1
  store ptr %162, ptr @sapp, align 8, !tbaa !7
  store i32 0, ptr %161, align 4, !tbaa !11
  store i32 0, ptr @last, align 4, !tbaa !11
  %163 = add nsw i32 %160, 1
  store i32 %163, ptr @al_len, align 4, !tbaa !11
  %164 = load i8, ptr %64, align 1, !tbaa !16
  %165 = sext i32 %.lcssa to i64
  %166 = getelementptr inbounds i8, ptr %.lcssa9, i64 %165
  %167 = load i8, ptr %166, align 1, !tbaa !16
  %168 = icmp eq i8 %164, %167
  %169 = select i1 %168, ptr @no_mat, ptr @no_mis
  %170 = load i32, ptr %169, align 4, !tbaa !11
  %171 = add nsw i32 %170, 1
  store i32 %171, ptr %169, align 4, !tbaa !11
  store i32 %70, ptr @I, align 4, !tbaa !11
  %172 = add nsw i32 %159, 1
  store i32 %172, ptr @J, align 4, !tbaa !11
  %173 = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #19
  store ptr %173, ptr @z, align 8, !tbaa !7
  store i32 %172, ptr %173, align 8, !tbaa !20
  %174 = getelementptr inbounds %struct.ONE, ptr %173, i64 0, i32 1
  store ptr %76, ptr %174, align 8, !tbaa !60
  store ptr %173, ptr %72, align 8, !tbaa !7
  %175 = icmp slt i32 %.lcssa, %.lcssa11
  br i1 %175, label %176, label %436

176:                                              ; preds = %158
  %177 = sub nsw i32 %.lcssa11, %.lcssa
  %178 = add nsw i32 %172, %177
  store i32 %178, ptr @J, align 4, !tbaa !11
  %179 = add nsw i32 %163, %177
  store i32 %179, ptr @al_len, align 4, !tbaa !11
  %180 = getelementptr inbounds i32, ptr %161, i64 2
  store ptr %180, ptr @sapp, align 8, !tbaa !7
  store i32 %177, ptr %162, align 4, !tbaa !11
  store i32 %177, ptr @last, align 4, !tbaa !11
  br label %436

181:                                              ; preds = %31
  %182 = load ptr, ptr @CC, align 8, !tbaa !7
  store i32 0, ptr %182, align 4, !tbaa !11
  %183 = load i32, ptr @q, align 4, !tbaa !11
  %184 = sub nsw i32 0, %183
  %185 = load ptr, ptr @DD, align 8
  %186 = load i32, ptr @r, align 4, !tbaa !11
  %187 = add nuw i32 %35, 1
  %188 = zext i32 %187 to i64
  br label %189

189:                                              ; preds = %189, %181
  %190 = phi i64 [ 1, %181 ], [ %196, %189 ]
  %191 = phi i32 [ %184, %181 ], [ %192, %189 ]
  %192 = sub nsw i32 %191, %186
  %193 = getelementptr inbounds i32, ptr %182, i64 %190
  store i32 %192, ptr %193, align 4, !tbaa !11
  %194 = sub nsw i32 %192, %183
  %195 = getelementptr inbounds i32, ptr %185, i64 %190
  store i32 %194, ptr %195, align 4, !tbaa !11
  %196 = add nuw nsw i64 %190, 1
  %197 = icmp eq i64 %196, %188
  br i1 %197, label %198, label %189, !llvm.loop !61

198:                                              ; preds = %189
  %199 = lshr i32 %36, 1
  %200 = sub nsw i32 0, %34
  %201 = load ptr, ptr @v, align 8, !tbaa !7
  %202 = load i32, ptr @qr, align 4
  %203 = load ptr, ptr @row, align 8
  %204 = load i32, ptr @I, align 4
  %205 = load i32, ptr @J, align 4
  %206 = sext i32 %204 to i64
  %207 = tail call i32 @llvm.umax.i32(i32 %199, i32 1)
  %208 = add nuw nsw i32 %207, 1
  %209 = zext i32 %208 to i64
  br label %210

210:                                              ; preds = %264, %198
  %211 = phi i64 [ 1, %198 ], [ %265, %264 ]
  %212 = phi i32 [ 0, %198 ], [ %214, %264 ]
  %213 = phi i32 [ %200, %198 ], [ %214, %264 ]
  %214 = sub nsw i32 %213, %186
  store i32 %214, ptr %182, align 4, !tbaa !11
  %215 = getelementptr inbounds i8, ptr %38, i64 %211
  %216 = load i8, ptr %215, align 1, !tbaa !16
  %217 = sext i8 %216 to i64
  %218 = getelementptr inbounds [256 x i32], ptr %201, i64 %217
  %219 = sub nsw i32 %214, %183
  %220 = add nsw i64 %211, %206
  %221 = getelementptr inbounds ptr, ptr %203, i64 %220
  %222 = load ptr, ptr %221, align 8, !tbaa !7
  %223 = icmp eq ptr %222, null
  br label %224

224:                                              ; preds = %257, %210
  %225 = phi i64 [ 1, %210 ], [ %262, %257 ]
  %226 = phi i32 [ %212, %210 ], [ %233, %257 ]
  %227 = phi i32 [ %219, %210 ], [ %231, %257 ]
  %228 = phi i32 [ %214, %210 ], [ %261, %257 ]
  %229 = sub nsw i32 %228, %202
  %230 = sub nsw i32 %227, %186
  %231 = tail call i32 @llvm.smax.i32(i32 %229, i32 %230)
  %232 = getelementptr inbounds i32, ptr %182, i64 %225
  %233 = load i32, ptr %232, align 4, !tbaa !11
  %234 = sub nsw i32 %233, %202
  %235 = getelementptr inbounds i32, ptr %185, i64 %225
  %236 = load i32, ptr %235, align 4, !tbaa !11
  %237 = sub nsw i32 %236, %186
  %238 = tail call i32 @llvm.smax.i32(i32 %234, i32 %237)
  br i1 %223, label %250, label %239

239:                                              ; preds = %224
  %240 = trunc i64 %225 to i32
  %241 = add nsw i32 %205, %240
  br label %246

242:                                              ; preds = %246
  %243 = getelementptr inbounds %struct.ONE, ptr %247, i64 0, i32 1
  %244 = load ptr, ptr %243, align 8, !tbaa !7
  %245 = icmp eq ptr %244, null
  br i1 %245, label %250, label %246, !llvm.loop !62

246:                                              ; preds = %242, %239
  %247 = phi ptr [ %222, %239 ], [ %244, %242 ]
  %248 = load i32, ptr %247, align 8, !tbaa !20
  %249 = icmp eq i32 %248, %241
  br i1 %249, label %257, label %242

250:                                              ; preds = %242, %224
  %251 = getelementptr inbounds i8, ptr %37, i64 %225
  %252 = load i8, ptr %251, align 1, !tbaa !16
  %253 = sext i8 %252 to i64
  %254 = getelementptr inbounds i32, ptr %218, i64 %253
  %255 = load i32, ptr %254, align 4, !tbaa !11
  %256 = add nsw i32 %255, %226
  br label %257

257:                                              ; preds = %250, %246
  %258 = phi ptr [ null, %250 ], [ %247, %246 ]
  %259 = phi i32 [ %256, %250 ], [ %234, %246 ]
  %260 = tail call i32 @llvm.smax.i32(i32 %259, i32 %238)
  %261 = tail call i32 @llvm.smax.i32(i32 %260, i32 %231)
  store i32 %261, ptr %232, align 4, !tbaa !11
  store i32 %238, ptr %235, align 4, !tbaa !11
  %262 = add nuw nsw i64 %225, 1
  %263 = icmp eq i64 %262, %188
  br i1 %263, label %264, label %224, !llvm.loop !63

264:                                              ; preds = %257
  %.lcssa2 = phi ptr [ %258, %257 ]
  %265 = add nuw nsw i64 %211, 1
  %266 = icmp eq i64 %265, %209
  br i1 %266, label %267, label %210, !llvm.loop !64

267:                                              ; preds = %264
  %.lcssa3 = phi i32 [ %214, %264 ]
  %.lcssa2.lcssa = phi ptr [ %.lcssa2, %264 ]
  store ptr %.lcssa2.lcssa, ptr @z, align 8, !tbaa !7
  store i32 %.lcssa3, ptr %185, align 4, !tbaa !11
  %268 = load ptr, ptr @RR, align 8, !tbaa !7
  %269 = zext i32 %35 to i64
  %270 = getelementptr inbounds i32, ptr %268, i64 %269
  store i32 0, ptr %270, align 4, !tbaa !11
  %271 = add nsw i32 %35, -1
  %272 = load ptr, ptr @SS, align 8
  %273 = zext i32 %271 to i64
  br label %274

274:                                              ; preds = %274, %267
  %275 = phi i64 [ %273, %267 ], [ %281, %274 ]
  %276 = phi i32 [ %184, %267 ], [ %277, %274 ]
  %277 = sub nsw i32 %276, %186
  %278 = getelementptr inbounds i32, ptr %268, i64 %275
  store i32 %277, ptr %278, align 4, !tbaa !11
  %279 = sub nsw i32 %277, %183
  %280 = getelementptr inbounds i32, ptr %272, i64 %275
  store i32 %279, ptr %280, align 4, !tbaa !11
  %281 = add nsw i64 %275, -1
  %282 = icmp eq i64 %275, 0
  br i1 %282, label %283, label %274, !llvm.loop !65

283:                                              ; preds = %274
  %284 = icmp sgt i32 %36, %199
  br i1 %284, label %285, label %348

285:                                              ; preds = %283
  %286 = zext i32 %36 to i64
  %287 = zext i32 %199 to i64
  %288 = add i32 %205, 1
  br label %292

289:                                              ; preds = %340
  %.lcssa4 = phi ptr [ %341, %340 ]
  %290 = add nsw i64 %293, -1
  %291 = icmp sgt i64 %290, %287
  br i1 %291, label %292, label %347, !llvm.loop !66

292:                                              ; preds = %289, %285
  %293 = phi i64 [ %286, %285 ], [ %290, %289 ]
  %294 = phi i32 [ %9, %285 ], [ %296, %289 ]
  %295 = load i32, ptr %270, align 4, !tbaa !11
  %296 = sub nsw i32 %294, %186
  store i32 %296, ptr %270, align 4, !tbaa !11
  %297 = getelementptr inbounds i8, ptr %38, i64 %293
  %298 = load i8, ptr %297, align 1, !tbaa !16
  %299 = sext i8 %298 to i64
  %300 = getelementptr inbounds [256 x i32], ptr %201, i64 %299
  %301 = sub nsw i32 %296, %183
  %302 = add nsw i64 %293, %206
  %303 = getelementptr inbounds ptr, ptr %203, i64 %302
  %304 = load ptr, ptr %303, align 8, !tbaa !7
  %305 = icmp eq ptr %304, null
  br label %306

306:                                              ; preds = %340, %292
  %307 = phi i64 [ %273, %292 ], [ %345, %340 ]
  %308 = phi i32 [ %295, %292 ], [ %315, %340 ]
  %309 = phi i32 [ %301, %292 ], [ %313, %340 ]
  %310 = phi i32 [ %296, %292 ], [ %344, %340 ]
  %311 = sub nsw i32 %310, %202
  %312 = sub nsw i32 %309, %186
  %313 = tail call i32 @llvm.smax.i32(i32 %311, i32 %312)
  %314 = getelementptr inbounds i32, ptr %268, i64 %307
  %315 = load i32, ptr %314, align 4, !tbaa !11
  %316 = sub nsw i32 %315, %202
  %317 = getelementptr inbounds i32, ptr %272, i64 %307
  %318 = load i32, ptr %317, align 4, !tbaa !11
  %319 = sub nsw i32 %318, %186
  %320 = tail call i32 @llvm.smax.i32(i32 %316, i32 %319)
  br i1 %305, label %332, label %321

321:                                              ; preds = %306
  %322 = trunc i64 %307 to i32
  %323 = add i32 %288, %322
  br label %328

324:                                              ; preds = %328
  %325 = getelementptr inbounds %struct.ONE, ptr %329, i64 0, i32 1
  %326 = load ptr, ptr %325, align 8, !tbaa !7
  %327 = icmp eq ptr %326, null
  br i1 %327, label %332, label %328, !llvm.loop !67

328:                                              ; preds = %324, %321
  %329 = phi ptr [ %304, %321 ], [ %326, %324 ]
  %330 = load i32, ptr %329, align 8, !tbaa !20
  %331 = icmp eq i32 %330, %323
  br i1 %331, label %340, label %324

332:                                              ; preds = %324, %306
  %333 = add nuw nsw i64 %307, 1
  %334 = getelementptr inbounds i8, ptr %37, i64 %333
  %335 = load i8, ptr %334, align 1, !tbaa !16
  %336 = sext i8 %335 to i64
  %337 = getelementptr inbounds i32, ptr %300, i64 %336
  %338 = load i32, ptr %337, align 4, !tbaa !11
  %339 = add nsw i32 %338, %308
  br label %340

340:                                              ; preds = %332, %328
  %341 = phi ptr [ null, %332 ], [ %329, %328 ]
  %342 = phi i32 [ %339, %332 ], [ %316, %328 ]
  %343 = tail call i32 @llvm.smax.i32(i32 %342, i32 %320)
  %344 = tail call i32 @llvm.smax.i32(i32 %343, i32 %313)
  store i32 %344, ptr %314, align 4, !tbaa !11
  store i32 %320, ptr %317, align 4, !tbaa !11
  %345 = add nsw i64 %307, -1
  %346 = icmp sgt i64 %307, 0
  br i1 %346, label %306, label %289, !llvm.loop !68

347:                                              ; preds = %289
  %.lcssa4.lcssa = phi ptr [ %.lcssa4, %289 ]
  store ptr %.lcssa4.lcssa, ptr @z, align 8, !tbaa !7
  br label %348

348:                                              ; preds = %347, %283
  %349 = load i32, ptr %270, align 4, !tbaa !11
  %350 = getelementptr inbounds i32, ptr %272, i64 %269
  store i32 %349, ptr %350, align 4, !tbaa !11
  %351 = load i32, ptr %268, align 4, !tbaa !11
  %352 = add nsw i32 %351, %.lcssa3
  br label %353

353:                                              ; preds = %375, %348
  %354 = phi i64 [ 0, %348 ], [ %378, %375 ]
  %355 = phi i32 [ %352, %348 ], [ %377, %375 ]
  %356 = phi i32 [ 0, %348 ], [ %376, %375 ]
  %357 = getelementptr inbounds i32, ptr %182, i64 %354
  %358 = load i32, ptr %357, align 4, !tbaa !11
  %359 = getelementptr inbounds i32, ptr %268, i64 %354
  %360 = load i32, ptr %359, align 4, !tbaa !11
  %361 = add nsw i32 %360, %358
  %362 = icmp slt i32 %361, %355
  br i1 %362, label %375, label %363

363:                                              ; preds = %353
  %364 = icmp sgt i32 %361, %355
  br i1 %364, label %373, label %365

365:                                              ; preds = %363
  %366 = getelementptr inbounds i32, ptr %185, i64 %354
  %367 = load i32, ptr %366, align 4, !tbaa !11
  %368 = icmp eq i32 %358, %367
  br i1 %368, label %375, label %369

369:                                              ; preds = %365
  %370 = getelementptr inbounds i32, ptr %272, i64 %354
  %371 = load i32, ptr %370, align 4, !tbaa !11
  %372 = icmp eq i32 %360, %371
  br i1 %372, label %373, label %375

373:                                              ; preds = %369, %363
  %374 = trunc i64 %354 to i32
  br label %375

375:                                              ; preds = %373, %369, %365, %353
  %376 = phi i32 [ %374, %373 ], [ %356, %369 ], [ %356, %365 ], [ %356, %353 ]
  %377 = phi i32 [ %361, %373 ], [ %355, %369 ], [ %355, %365 ], [ %355, %353 ]
  %378 = add nuw nsw i64 %354, 1
  %379 = icmp eq i64 %378, %188
  br i1 %379, label %380, label %353, !llvm.loop !69

380:                                              ; preds = %380, %375
  %381 = phi i64 [ %396, %380 ], [ %269, %375 ]
  %382 = phi i32 [ %395, %380 ], [ %377, %375 ]
  %383 = phi i32 [ %394, %380 ], [ 1, %375 ]
  %384 = phi i32 [ %393, %380 ], [ %376, %375 ]
  %385 = getelementptr inbounds i32, ptr %185, i64 %381
  %386 = load i32, ptr %385, align 4, !tbaa !11
  %387 = getelementptr inbounds i32, ptr %272, i64 %381
  %388 = load i32, ptr %387, align 4, !tbaa !11
  %389 = add i32 %386, %183
  %390 = add i32 %389, %388
  %391 = icmp sgt i32 %390, %382
  %392 = trunc i64 %381 to i32
  %393 = select i1 %391, i32 %392, i32 %384
  %394 = select i1 %391, i32 2, i32 %383
  %395 = tail call i32 @llvm.smax.i32(i32 %390, i32 %382)
  %396 = add nsw i64 %381, -1
  %397 = icmp sgt i64 %381, 0
  br i1 %397, label %380, label %398, !llvm.loop !70

398:                                              ; preds = %380
  %.lcssa7 = phi i32 [ %393, %380 ]
  %.lcssa6 = phi i32 [ %394, %380 ]
  %.lcssa5 = phi i32 [ %395, %380 ]
  %399 = icmp eq i32 %.lcssa6, 1
  br i1 %399, label %400, label %414

400:                                              ; preds = %398
  tail call fastcc void @diff(ptr noundef %38, ptr noundef %37, i32 noundef %199, i32 noundef %.lcssa7, i32 noundef %34, i32 noundef %183) #15
  %401 = zext i32 %199 to i64
  %402 = getelementptr inbounds i8, ptr %38, i64 %401
  %403 = sub nsw i32 %36, %199
  %404 = load i32, ptr @q, align 4, !tbaa !11
  br label %405

405:                                              ; preds = %429, %400
  %406 = phi ptr [ %402, %400 ], [ %433, %429 ]
  %407 = phi i32 [ %403, %400 ], [ %435, %429 ]
  %408 = phi i32 [ %404, %400 ], [ 0, %429 ]
  %409 = select i1 %32, i32 %33, i32 %.lcssa5
  %410 = sub nsw i32 %35, %.lcssa7
  %411 = sext i32 %.lcssa7 to i64
  %412 = getelementptr inbounds i8, ptr %37, i64 %411
  %413 = icmp slt i32 %410, 1
  br i1 %413, label %10, label %31

414:                                              ; preds = %398
  %415 = add nsw i32 %199, -1
  tail call fastcc void @diff(ptr noundef %38, ptr noundef %37, i32 noundef %415, i32 noundef %.lcssa7, i32 noundef %34, i32 noundef 0) #15
  %416 = load i32, ptr @I, align 4, !tbaa !11
  %417 = add nsw i32 %416, 2
  store i32 %417, ptr @I, align 4, !tbaa !11
  %418 = load i32, ptr @al_len, align 4, !tbaa !11
  %419 = add nsw i32 %418, 2
  store i32 %419, ptr @al_len, align 4, !tbaa !11
  %420 = load i32, ptr @last, align 4, !tbaa !11
  %421 = icmp slt i32 %420, 0
  %422 = load ptr, ptr @sapp, align 8, !tbaa !7
  br i1 %421, label %423, label %427

423:                                              ; preds = %414
  %424 = getelementptr inbounds i32, ptr %422, i64 -1
  %425 = load i32, ptr %424, align 4, !tbaa !11
  %426 = add nsw i32 %425, -2
  store i32 %426, ptr %424, align 4, !tbaa !11
  br label %429

427:                                              ; preds = %414
  %428 = getelementptr inbounds i32, ptr %422, i64 1
  store ptr %428, ptr @sapp, align 8, !tbaa !7
  store i32 -2, ptr %422, align 4, !tbaa !11
  br label %429

429:                                              ; preds = %427, %423
  %430 = phi i32 [ -2, %427 ], [ %426, %423 ]
  store i32 %430, ptr @last, align 4, !tbaa !11
  %431 = zext i32 %199 to i64
  %432 = getelementptr inbounds i8, ptr %38, i64 %431
  %433 = getelementptr inbounds i8, ptr %432, i64 1
  %434 = xor i32 %199, -1
  %435 = add nsw i32 %36, %434
  br label %405

436:                                              ; preds = %176, %158, %138, %135, %42, %29, %10
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #2

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
attributes #11 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #12 = { nofree norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nounwind }
attributes #15 = { optsize }
attributes #16 = { noreturn nounwind optsize }
attributes #17 = { nounwind optsize }
attributes #18 = { cold optsize }
attributes #19 = { nounwind optsize allocsize(0) }
attributes #20 = { nounwind optsize willreturn memory(read) }

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
!24 = distinct !{!24, !14}
!25 = distinct !{!25, !14}
!26 = distinct !{!26, !14}
!27 = distinct !{!27, !14}
!28 = !{!29, !12, i64 0}
!29 = !{!"NODE", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !12, i64 32}
!30 = distinct !{!30, !14}
!31 = !{!29, !12, i64 4}
!32 = !{!29, !12, i64 8}
!33 = !{!29, !12, i64 12}
!34 = !{!29, !12, i64 16}
!35 = !{!29, !12, i64 20}
!36 = !{!29, !12, i64 24}
!37 = !{!29, !12, i64 28}
!38 = !{!29, !12, i64 32}
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
!51 = distinct !{!51, !14}
!52 = distinct !{!52, !14}
!53 = distinct !{!53, !14}
!54 = distinct !{!54, !14}
!55 = distinct !{!55, !14}
!56 = distinct !{!56, !14}
!57 = distinct !{!57, !14}
!58 = distinct !{!58, !14}
!59 = distinct !{!59, !14}
!60 = !{!21, !8, i64 8}
!61 = distinct !{!61, !14}
!62 = distinct !{!62, !14}
!63 = distinct !{!63, !14}
!64 = distinct !{!64, !14}
!65 = distinct !{!65, !14}
!66 = distinct !{!66, !14}
!67 = distinct !{!67, !14}
!68 = distinct !{!68, !14}
!69 = distinct !{!69, !14}
!70 = distinct !{!70, !14}
