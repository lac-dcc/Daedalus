; ModuleID = 'linpack-pc.ll'
source_filename = "linpack-pc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@main.aa = internal global [40000 x float] zeroinitializer, align 16
@main.a = internal global [40200 x float] zeroinitializer, align 16
@main.b = internal global [200 x float] zeroinitializer, align 16
@main.x = internal global [200 x float] zeroinitializer, align 16
@main.ipvt = internal global [200 x i32] zeroinitializer, align 16
@main.n = internal global i32 0, align 4
@main.i = internal global i32 0, align 4
@main.j = internal global i32 0, align 4
@main.ntimes = internal global i32 0, align 4
@main.info = internal global i32 0, align 4
@main.lda = internal global i32 0, align 4
@main.ldaa = internal global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"INSERT COMPILER NAME HERE\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"INSERT OPTIMISATION OPTIONS HERE\00", align 1
@stderr = external global ptr, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"Rolled \00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"Single \00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"Precision Linpack Benchmark - PC Version in 'C/C++'\0A\0A\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"Compiler     %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"Optimisation %s\0A\0A\00", align 1
@atime = internal global [9 x [15 x float]] zeroinitializer, align 16
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

; Function Attrs: noinline nounwind uwtable
define dso_local float @second() #0 {
entry:
  %call = call i64 @clock() #5
  %conv = sitofp i64 %call to float
  %div = fdiv float %conv, 1.000000e+06
  ret float %div
}

; Function Attrs: nounwind
declare i64 @clock() #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @what_date() #0 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  %norma = alloca float, align 4
  %general = alloca [9 x [80 x i8]], align 16
  call void @llvm.memset.p0.i64(ptr align 16 %general, i8 0, i64 720, i1 false)
  %0 = getelementptr inbounds <{ [80 x i8], [8 x [80 x i8]] }>, ptr %general, i32 0, i32 0
  %1 = getelementptr inbounds [80 x i8], ptr %0, i32 0, i32 0
  store i8 32, ptr %1, align 16
  store i32 201, ptr @main.lda, align 4
  store i32 200, ptr @main.ldaa, align 4
  store i32 100, ptr @main.n, align 4
  %2 = load ptr, ptr @stderr, align 8
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef @.str.2)
  %3 = load ptr, ptr @stderr, align 8
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef @.str.3)
  %4 = load ptr, ptr @stderr, align 8
  %call2 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef @.str.4)
  %5 = load ptr, ptr @stderr, align 8
  %call3 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef @.str.5, ptr noundef @.str)
  %6 = load ptr, ptr @stderr, align 8
  %call4 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef @.str.6, ptr noundef @.str.1)
  %7 = load i32, ptr @main.n, align 4
  %8 = load i32, ptr @main.n, align 4
  %mul = mul nsw i32 %7, %8
  %9 = load i32, ptr @main.n, align 4
  %mul5 = mul nsw i32 %mul, %9
  %conv = sitofp i32 %mul5 to double
  %mul6 = fmul double 2.000000e+00, %conv
  %div = fdiv double %mul6, 3.000000e+00
  %10 = load i32, ptr @main.n, align 4
  %11 = load i32, ptr @main.n, align 4
  %mul7 = mul nsw i32 %10, %11
  %conv8 = sitofp i32 %mul7 to double
  %12 = call double @llvm.fmuladd.f64(double 2.000000e+00, double %conv8, double %div)
  %conv10 = fptrunc double %12 to float
  %13 = load i32, ptr @main.lda, align 4
  %14 = load i32, ptr @main.n, align 4
  call void @matgen(ptr noundef @main.a, i32 noundef %13, i32 noundef %14, ptr noundef @main.b, ptr noundef %norma)
  %call11 = call float @second()
  %15 = load i32, ptr @main.lda, align 4
  %16 = load i32, ptr @main.n, align 4
  call void @dgefa(ptr noundef @main.a, i32 noundef %15, i32 noundef %16, ptr noundef @main.ipvt, ptr noundef @main.info)
  %call12 = call float @second()
  %sub = fsub float %call12, %call11
  store float %sub, ptr @atime, align 16
  %call13 = call float @second()
  %17 = load i32, ptr @main.lda, align 4
  %18 = load i32, ptr @main.n, align 4
  call void @dgesl(ptr noundef @main.a, i32 noundef %17, i32 noundef %18, ptr noundef @main.ipvt, ptr noundef @main.b, i32 noundef 0)
  %call14 = call float @second()
  %sub15 = fsub float %call14, %call13
  store float %sub15, ptr getelementptr inbounds ([9 x [15 x float]], ptr @atime, i64 0, i64 1), align 4
  %19 = load float, ptr @atime, align 16
  %20 = load float, ptr getelementptr inbounds ([9 x [15 x float]], ptr @atime, i64 0, i64 1), align 4
  %add = fadd float %19, %20
  store i32 0, ptr @main.i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %21 = load i32, ptr @main.i, align 4
  %22 = load i32, ptr @main.n, align 4
  %cmp = icmp slt i32 %21, %22
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %23 = load i32, ptr @main.i, align 4
  %idxprom = sext i32 %23 to i64
  %arrayidx = getelementptr inbounds [200 x float], ptr @main.b, i64 0, i64 %idxprom
  %24 = load float, ptr %arrayidx, align 4
  %25 = load i32, ptr @main.i, align 4
  %idxprom17 = sext i32 %25 to i64
  %arrayidx18 = getelementptr inbounds [200 x float], ptr @main.x, i64 0, i64 %idxprom17
  store float %24, ptr %arrayidx18, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %26 = load i32, ptr @main.i, align 4
  %inc = add nsw i32 %26, 1
  store i32 %inc, ptr @main.i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %27 = load i32, ptr @main.lda, align 4
  %28 = load i32, ptr @main.n, align 4
  call void @matgen(ptr noundef @main.a, i32 noundef %27, i32 noundef %28, ptr noundef @main.b, ptr noundef %norma)
  store i32 0, ptr @main.i, align 4
  br label %for.cond19

for.cond19:                                       ; preds = %for.inc27, %for.end
  %29 = load i32, ptr @main.i, align 4
  %30 = load i32, ptr @main.n, align 4
  %cmp20 = icmp slt i32 %29, %30
  br i1 %cmp20, label %for.body22, label %for.end29

for.body22:                                       ; preds = %for.cond19
  %31 = load i32, ptr @main.i, align 4
  %idxprom23 = sext i32 %31 to i64
  %arrayidx24 = getelementptr inbounds [200 x float], ptr @main.b, i64 0, i64 %idxprom23
  %32 = load float, ptr %arrayidx24, align 4
  %fneg = fneg float %32
  %33 = load i32, ptr @main.i, align 4
  %idxprom25 = sext i32 %33 to i64
  %arrayidx26 = getelementptr inbounds [200 x float], ptr @main.b, i64 0, i64 %idxprom25
  store float %fneg, ptr %arrayidx26, align 4
  br label %for.inc27

for.inc27:                                        ; preds = %for.body22
  %34 = load i32, ptr @main.i, align 4
  %inc28 = add nsw i32 %34, 1
  store i32 %inc28, ptr @main.i, align 4
  br label %for.cond19, !llvm.loop !8

for.end29:                                        ; preds = %for.cond19
  %35 = load i32, ptr @main.n, align 4
  %36 = load i32, ptr @main.n, align 4
  %37 = load i32, ptr @main.lda, align 4
  call void @dmxpy(i32 noundef %35, ptr noundef @main.b, i32 noundef %36, i32 noundef %37, ptr noundef @main.x, ptr noundef @main.a)
  store i32 0, ptr @main.i, align 4
  br label %for.cond30

for.cond30:                                       ; preds = %for.inc60, %for.end29
  %resid.0 = phi float [ 0.000000e+00, %for.end29 ], [ %conv44, %for.inc60 ]
  %normx.0 = phi float [ 0.000000e+00, %for.end29 ], [ %conv59, %for.inc60 ]
  %38 = load i32, ptr @main.i, align 4
  %39 = load i32, ptr @main.n, align 4
  %cmp31 = icmp slt i32 %38, %39
  br i1 %cmp31, label %for.body33, label %for.end62

for.body33:                                       ; preds = %for.cond30
  %conv34 = fpext float %resid.0 to double
  %40 = load i32, ptr @main.i, align 4
  %idxprom35 = sext i32 %40 to i64
  %arrayidx36 = getelementptr inbounds [200 x float], ptr @main.b, i64 0, i64 %idxprom35
  %41 = load float, ptr %arrayidx36, align 4
  %conv37 = fpext float %41 to double
  %42 = call double @llvm.fabs.f64(double %conv37)
  %cmp38 = fcmp ogt double %conv34, %42
  br i1 %cmp38, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body33
  %conv40 = fpext float %resid.0 to double
  br label %cond.end

cond.false:                                       ; preds = %for.body33
  %43 = load i32, ptr @main.i, align 4
  %idxprom41 = sext i32 %43 to i64
  %arrayidx42 = getelementptr inbounds [200 x float], ptr @main.b, i64 0, i64 %idxprom41
  %44 = load float, ptr %arrayidx42, align 4
  %conv43 = fpext float %44 to double
  %45 = call double @llvm.fabs.f64(double %conv43)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %conv40, %cond.true ], [ %45, %cond.false ]
  %conv44 = fptrunc double %cond to float
  %conv45 = fpext float %normx.0 to double
  %46 = load i32, ptr @main.i, align 4
  %idxprom46 = sext i32 %46 to i64
  %arrayidx47 = getelementptr inbounds [200 x float], ptr @main.x, i64 0, i64 %idxprom46
  %47 = load float, ptr %arrayidx47, align 4
  %conv48 = fpext float %47 to double
  %48 = call double @llvm.fabs.f64(double %conv48)
  %cmp49 = fcmp ogt double %conv45, %48
  br i1 %cmp49, label %cond.true51, label %cond.false53

cond.true51:                                      ; preds = %cond.end
  %conv52 = fpext float %normx.0 to double
  br label %cond.end57

cond.false53:                                     ; preds = %cond.end
  %49 = load i32, ptr @main.i, align 4
  %idxprom54 = sext i32 %49 to i64
  %arrayidx55 = getelementptr inbounds [200 x float], ptr @main.x, i64 0, i64 %idxprom54
  %50 = load float, ptr %arrayidx55, align 4
  %conv56 = fpext float %50 to double
  %51 = call double @llvm.fabs.f64(double %conv56)
  br label %cond.end57

cond.end57:                                       ; preds = %cond.false53, %cond.true51
  %cond58 = phi double [ %conv52, %cond.true51 ], [ %51, %cond.false53 ]
  %conv59 = fptrunc double %cond58 to float
  br label %for.inc60

for.inc60:                                        ; preds = %cond.end57
  %52 = load i32, ptr @main.i, align 4
  %inc61 = add nsw i32 %52, 1
  store i32 %inc61, ptr @main.i, align 4
  br label %for.cond30, !llvm.loop !9

for.end62:                                        ; preds = %for.cond30
  %resid.0.lcssa = phi float [ %resid.0, %for.cond30 ]
  %normx.0.lcssa = phi float [ %normx.0, %for.cond30 ]
  %call63 = call float @epslon(float noundef 1.000000e+00)
  %53 = load i32, ptr @main.n, align 4
  %conv64 = sitofp i32 %53 to float
  %54 = load float, ptr %norma, align 4
  %mul65 = fmul float %conv64, %54
  %mul66 = fmul float %mul65, %normx.0.lcssa
  %mul67 = fmul float %mul66, %call63
  %div68 = fdiv float %resid.0.lcssa, %mul67
  %55 = load float, ptr @main.x, align 16
  %sub69 = fsub float %55, 1.000000e+00
  %56 = load i32, ptr @main.n, align 4
  %sub70 = sub nsw i32 %56, 1
  %idxprom71 = sext i32 %sub70 to i64
  %arrayidx72 = getelementptr inbounds [200 x float], ptr @main.x, i64 0, i64 %idxprom71
  %57 = load float, ptr %arrayidx72, align 4
  %sub73 = fsub float %57, 1.000000e+00
  %58 = load ptr, ptr @stderr, align 8
  %call74 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %58, ptr noundef @.str.7)
  %59 = load ptr, ptr @stderr, align 8
  %call75 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %59, ptr noundef @.str.8)
  %60 = load ptr, ptr @stderr, align 8
  %conv76 = fpext float %div68 to double
  %conv77 = fpext float %resid.0.lcssa to double
  %conv78 = fpext float %call63 to double
  %conv79 = fpext float %sub69 to double
  %conv80 = fpext float %sub73 to double
  %call81 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %60, ptr noundef @.str.9, double noundef %conv76, double noundef %conv77, double noundef %conv78, double noundef %conv79, double noundef %conv80)
  %61 = load ptr, ptr @stderr, align 8
  %62 = load i32, ptr @main.n, align 4
  %call82 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %61, ptr noundef @.str.10, i32 noundef %62)
  %63 = load ptr, ptr @stderr, align 8
  %64 = load i32, ptr @main.lda, align 4
  %call83 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %63, ptr noundef @.str.11, i32 noundef %64)
  %65 = load ptr, ptr @stderr, align 8
  %call84 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %65, ptr noundef @.str.12)
  %66 = load ptr, ptr @stderr, align 8
  %call85 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %66, ptr noundef @.str.13)
  store float %add, ptr getelementptr inbounds ([9 x [15 x float]], ptr @atime, i64 0, i64 2), align 8
  %conv86 = fpext float %add to double
  %cmp87 = fcmp ogt double %conv86, 0.000000e+00
  br i1 %cmp87, label %if.then, label %if.else

if.then:                                          ; preds = %for.end62
  %conv89 = fpext float %conv10 to double
  %conv90 = fpext float %add to double
  %mul91 = fmul double 1.000000e+06, %conv90
  %div92 = fdiv double %conv89, %mul91
  %conv93 = fptrunc double %div92 to float
  store float %conv93, ptr getelementptr inbounds ([9 x [15 x float]], ptr @atime, i64 0, i64 3), align 4
  %67 = load float, ptr getelementptr inbounds ([9 x [15 x float]], ptr @atime, i64 0, i64 3), align 4
  %conv94 = fpext float %67 to double
  %div95 = fdiv double 2.000000e+00, %conv94
  %conv96 = fptrunc double %div95 to float
  store float %conv96, ptr getelementptr inbounds ([9 x [15 x float]], ptr @atime, i64 0, i64 4), align 16
  br label %if.end

if.else:                                          ; preds = %for.end62
  store float 0.000000e+00, ptr getelementptr inbounds ([9 x [15 x float]], ptr @atime, i64 0, i64 3), align 4
  store float 0.000000e+00, ptr getelementptr inbounds ([9 x [15 x float]], ptr @atime, i64 0, i64 4), align 16
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %div97 = fdiv float %add, 0x3FACAC0840000000
  store float %div97, ptr getelementptr inbounds ([9 x [15 x float]], ptr @atime, i64 0, i64 5), align 4
  call void @print_time(i32 noundef 0)
  %68 = load ptr, ptr @stderr, align 8
  %call98 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %68, ptr noundef @.str.14)
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end
  %pass.0 = phi i32 [ -3, %if.end ], [ %add100, %do.cond ]
  %loop.0 = phi i32 [ 100, %if.end ], [ %loop.1, %do.cond ]
  %call99 = call float @second()
  %add100 = add nsw i32 %pass.0, 1
  store i32 0, ptr @main.i, align 4
  br label %for.cond101

for.cond101:                                      ; preds = %for.inc105, %do.body
  %69 = load i32, ptr @main.i, align 4
  %cmp102 = icmp slt i32 %69, %loop.0
  br i1 %cmp102, label %for.body104, label %for.end107

for.body104:                                      ; preds = %for.cond101
  %70 = load i32, ptr @main.lda, align 4
  %71 = load i32, ptr @main.n, align 4
  call void @matgen(ptr noundef @main.a, i32 noundef %70, i32 noundef %71, ptr noundef @main.b, ptr noundef %norma)
  br label %for.inc105

for.inc105:                                       ; preds = %for.body104
  %72 = load i32, ptr @main.i, align 4
  %inc106 = add nsw i32 %72, 1
  store i32 %inc106, ptr @main.i, align 4
  br label %for.cond101, !llvm.loop !10

for.end107:                                       ; preds = %for.cond101
  %call108 = call float @second()
  %sub109 = fsub float %call108, %call99
  %73 = load ptr, ptr @stderr, align 8
  %call110 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %73, ptr noundef @.str.15, i32 noundef %loop.0, double noundef 0.000000e+00)
  %cmp111 = icmp slt i32 %add100, 0
  br i1 %cmp111, label %if.then113, label %if.end115

if.then113:                                       ; preds = %for.end107
  %mul114 = mul nsw i32 %loop.0, 2
  br label %if.end115

if.end115:                                        ; preds = %if.then113, %for.end107
  %loop.1 = phi i32 [ %mul114, %if.then113 ], [ %loop.0, %for.end107 ]
  br label %do.cond

do.cond:                                          ; preds = %if.end115
  %cmp116 = icmp slt i32 %add100, 0
  br i1 %cmp116, label %do.body, label %do.end, !llvm.loop !11

do.end:                                           ; preds = %do.cond
  %loop.1.lcssa = phi i32 [ %loop.1, %do.cond ]
  %sub109.lcssa = phi float [ %sub109, %do.cond ]
  %conv118 = fpext float %sub109.lcssa to double
  %conv119 = sitofp i32 %loop.1.lcssa to double
  %div120 = fdiv double %conv118, %conv119
  %conv121 = fptrunc double %div120 to float
  %74 = load ptr, ptr @stderr, align 8
  %call122 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %74, ptr noundef @.str.16, double noundef 0.000000e+00)
  %75 = load ptr, ptr @stderr, align 8
  %call123 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %75, ptr noundef @.str.17)
  store i32 100, ptr @main.ntimes, align 4
  br label %do.body124

do.body124:                                       ; preds = %do.cond142, %do.end
  %pass.1 = phi i32 [ -3, %do.end ], [ %add126, %do.cond142 ]
  %call125 = call float @second()
  %add126 = add nsw i32 %pass.1, 1
  store i32 0, ptr @main.i, align 4
  br label %for.cond127

for.cond127:                                      ; preds = %for.inc131, %do.body124
  %76 = load i32, ptr @main.i, align 4
  %77 = load i32, ptr @main.ntimes, align 4
  %cmp128 = icmp slt i32 %76, %77
  br i1 %cmp128, label %for.body130, label %for.end133

for.body130:                                      ; preds = %for.cond127
  %78 = load i32, ptr @main.lda, align 4
  %79 = load i32, ptr @main.n, align 4
  call void @matgen(ptr noundef @main.a, i32 noundef %78, i32 noundef %79, ptr noundef @main.b, ptr noundef %norma)
  %80 = load i32, ptr @main.lda, align 4
  %81 = load i32, ptr @main.n, align 4
  call void @dgefa(ptr noundef @main.a, i32 noundef %80, i32 noundef %81, ptr noundef @main.ipvt, ptr noundef @main.info)
  br label %for.inc131

for.inc131:                                       ; preds = %for.body130
  %82 = load i32, ptr @main.i, align 4
  %inc132 = add nsw i32 %82, 1
  store i32 %inc132, ptr @main.i, align 4
  br label %for.cond127, !llvm.loop !12

for.end133:                                       ; preds = %for.cond127
  %call134 = call float @second()
  %sub135 = fsub float %call134, %call125
  %83 = load ptr, ptr @stderr, align 8
  %84 = load i32, ptr @main.ntimes, align 4
  %call136 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %83, ptr noundef @.str.15, i32 noundef %84, double noundef 0.000000e+00)
  %cmp137 = icmp slt i32 %add126, 0
  br i1 %cmp137, label %if.then139, label %if.end141

if.then139:                                       ; preds = %for.end133
  %85 = load i32, ptr @main.ntimes, align 4
  %mul140 = mul nsw i32 %85, 2
  store i32 %mul140, ptr @main.ntimes, align 4
  br label %if.end141

if.end141:                                        ; preds = %if.then139, %for.end133
  br label %do.cond142

do.cond142:                                       ; preds = %if.end141
  %cmp143 = icmp slt i32 %add126, 0
  br i1 %cmp143, label %do.body124, label %do.end145, !llvm.loop !13

do.end145:                                        ; preds = %do.cond142
  store i32 1000, ptr @main.ntimes, align 4
  %86 = load i32, ptr @main.ntimes, align 4
  %cmp146 = icmp eq i32 %86, 0
  br i1 %cmp146, label %if.then148, label %if.end149

if.then148:                                       ; preds = %do.end145
  store i32 1, ptr @main.ntimes, align 4
  br label %if.end149

if.end149:                                        ; preds = %if.then148, %do.end145
  %87 = load ptr, ptr @stderr, align 8
  %call150 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %87, ptr noundef @.str.18, i32 noundef 0)
  %88 = load ptr, ptr @stderr, align 8
  %89 = load i32, ptr @main.lda, align 4
  %call151 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %88, ptr noundef @.str.19, i32 noundef %89)
  %90 = load ptr, ptr @stderr, align 8
  %call152 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %90, ptr noundef @.str.12)
  %91 = load ptr, ptr @stderr, align 8
  %call153 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %91, ptr noundef @.str.13)
  %92 = load i32, ptr @main.ntimes, align 4
  %conv154 = sitofp i32 %92 to float
  %mul155 = fmul float %conv154, %conv121
  store float 0.000000e+00, ptr getelementptr inbounds ([9 x [15 x float]], ptr @atime, i64 0, i64 3, i64 6), align 4
  store i32 1, ptr @main.j, align 4
  br label %for.cond156

for.cond156:                                      ; preds = %for.inc216, %if.end149
  %93 = load i32, ptr @main.j, align 4
  %cmp157 = icmp slt i32 %93, 6
  br i1 %cmp157, label %for.body159, label %for.end218

for.body159:                                      ; preds = %for.cond156
  %call160 = call float @second()
  store i32 0, ptr @main.i, align 4
  br label %for.cond161

for.cond161:                                      ; preds = %for.inc165, %for.body159
  %94 = load i32, ptr @main.i, align 4
  %95 = load i32, ptr @main.ntimes, align 4
  %cmp162 = icmp slt i32 %94, %95
  br i1 %cmp162, label %for.body164, label %for.end167

for.body164:                                      ; preds = %for.cond161
  %96 = load i32, ptr @main.lda, align 4
  %97 = load i32, ptr @main.n, align 4
  call void @matgen(ptr noundef @main.a, i32 noundef %96, i32 noundef %97, ptr noundef @main.b, ptr noundef %norma)
  %98 = load i32, ptr @main.lda, align 4
  %99 = load i32, ptr @main.n, align 4
  call void @dgefa(ptr noundef @main.a, i32 noundef %98, i32 noundef %99, ptr noundef @main.ipvt, ptr noundef @main.info)
  br label %for.inc165

for.inc165:                                       ; preds = %for.body164
  %100 = load i32, ptr @main.i, align 4
  %inc166 = add nsw i32 %100, 1
  store i32 %inc166, ptr @main.i, align 4
  br label %for.cond161, !llvm.loop !14

for.end167:                                       ; preds = %for.cond161
  %call168 = call float @second()
  %sub169 = fsub float %call168, %call160
  %sub170 = fsub float %sub169, %mul155
  %101 = load i32, ptr @main.ntimes, align 4
  %conv171 = sitofp i32 %101 to float
  %div172 = fdiv float %sub170, %conv171
  %102 = load i32, ptr @main.j, align 4
  %idxprom173 = sext i32 %102 to i64
  %arrayidx174 = getelementptr inbounds [15 x float], ptr @atime, i64 0, i64 %idxprom173
  store float %div172, ptr %arrayidx174, align 4
  %call175 = call float @second()
  store i32 0, ptr @main.i, align 4
  br label %for.cond176

for.cond176:                                      ; preds = %for.inc180, %for.end167
  %103 = load i32, ptr @main.i, align 4
  %104 = load i32, ptr @main.ntimes, align 4
  %cmp177 = icmp slt i32 %103, %104
  br i1 %cmp177, label %for.body179, label %for.end182

for.body179:                                      ; preds = %for.cond176
  %105 = load i32, ptr @main.lda, align 4
  %106 = load i32, ptr @main.n, align 4
  call void @dgesl(ptr noundef @main.a, i32 noundef %105, i32 noundef %106, ptr noundef @main.ipvt, ptr noundef @main.b, i32 noundef 0)
  br label %for.inc180

for.inc180:                                       ; preds = %for.body179
  %107 = load i32, ptr @main.i, align 4
  %inc181 = add nsw i32 %107, 1
  store i32 %inc181, ptr @main.i, align 4
  br label %for.cond176, !llvm.loop !15

for.end182:                                       ; preds = %for.cond176
  %call183 = call float @second()
  %sub184 = fsub float %call183, %call175
  %108 = load i32, ptr @main.ntimes, align 4
  %conv185 = sitofp i32 %108 to float
  %div186 = fdiv float %sub184, %conv185
  %109 = load i32, ptr @main.j, align 4
  %idxprom187 = sext i32 %109 to i64
  %arrayidx188 = getelementptr inbounds [15 x float], ptr getelementptr inbounds ([9 x [15 x float]], ptr @atime, i64 0, i64 1), i64 0, i64 %idxprom187
  store float %div186, ptr %arrayidx188, align 4
  %110 = load i32, ptr @main.j, align 4
  %idxprom189 = sext i32 %110 to i64
  %arrayidx190 = getelementptr inbounds [15 x float], ptr @atime, i64 0, i64 %idxprom189
  %111 = load float, ptr %arrayidx190, align 4
  %112 = load i32, ptr @main.j, align 4
  %idxprom191 = sext i32 %112 to i64
  %arrayidx192 = getelementptr inbounds [15 x float], ptr getelementptr inbounds ([9 x [15 x float]], ptr @atime, i64 0, i64 1), i64 0, i64 %idxprom191
  %113 = load float, ptr %arrayidx192, align 4
  %add193 = fadd float %111, %113
  %114 = load i32, ptr @main.j, align 4
  %idxprom194 = sext i32 %114 to i64
  %arrayidx195 = getelementptr inbounds [15 x float], ptr getelementptr inbounds ([9 x [15 x float]], ptr @atime, i64 0, i64 2), i64 0, i64 %idxprom194
  store float %add193, ptr %arrayidx195, align 4
  %conv196 = fpext float %conv10 to double
  %conv197 = fpext float %add193 to double
  %mul198 = fmul double 1.000000e+06, %conv197
  %div199 = fdiv double %conv196, %mul198
  %conv200 = fptrunc double %div199 to float
  %115 = load i32, ptr @main.j, align 4
  %idxprom201 = sext i32 %115 to i64
  %arrayidx202 = getelementptr inbounds [15 x float], ptr getelementptr inbounds ([9 x [15 x float]], ptr @atime, i64 0, i64 3), i64 0, i64 %idxprom201
  store float %conv200, ptr %arrayidx202, align 4
  %116 = load i32, ptr @main.j, align 4
  %idxprom203 = sext i32 %116 to i64
  %arrayidx204 = getelementptr inbounds [15 x float], ptr getelementptr inbounds ([9 x [15 x float]], ptr @atime, i64 0, i64 3), i64 0, i64 %idxprom203
  %117 = load float, ptr %arrayidx204, align 4
  %conv205 = fpext float %117 to double
  %div206 = fdiv double 2.000000e+00, %conv205
  %conv207 = fptrunc double %div206 to float
  %118 = load i32, ptr @main.j, align 4
  %idxprom208 = sext i32 %118 to i64
  %arrayidx209 = getelementptr inbounds [15 x float], ptr getelementptr inbounds ([9 x [15 x float]], ptr @atime, i64 0, i64 4), i64 0, i64 %idxprom208
  store float %conv207, ptr %arrayidx209, align 4
  %div210 = fdiv float %add193, 0x3FACAC0840000000
  %119 = load i32, ptr @main.j, align 4
  %idxprom211 = sext i32 %119 to i64
  %arrayidx212 = getelementptr inbounds [15 x float], ptr getelementptr inbounds ([9 x [15 x float]], ptr @atime, i64 0, i64 5), i64 0, i64 %idxprom211
  store float %div210, ptr %arrayidx212, align 4
  %120 = load float, ptr getelementptr inbounds ([9 x [15 x float]], ptr @atime, i64 0, i64 3, i64 6), align 4
  %121 = load i32, ptr @main.j, align 4
  %idxprom213 = sext i32 %121 to i64
  %arrayidx214 = getelementptr inbounds [15 x float], ptr getelementptr inbounds ([9 x [15 x float]], ptr @atime, i64 0, i64 3), i64 0, i64 %idxprom213
  %122 = load float, ptr %arrayidx214, align 4
  %add215 = fadd float %120, %122
  store float %add215, ptr getelementptr inbounds ([9 x [15 x float]], ptr @atime, i64 0, i64 3, i64 6), align 4
  %123 = load i32, ptr @main.j, align 4
  call void @print_time(i32 noundef %123)
  br label %for.inc216

for.inc216:                                       ; preds = %for.end182
  %124 = load i32, ptr @main.j, align 4
  %inc217 = add nsw i32 %124, 1
  store i32 %inc217, ptr @main.j, align 4
  br label %for.cond156, !llvm.loop !16

for.end218:                                       ; preds = %for.cond156
  %125 = load float, ptr getelementptr inbounds ([9 x [15 x float]], ptr @atime, i64 0, i64 3, i64 6), align 4
  %conv219 = fpext float %125 to double
  %div220 = fdiv double %conv219, 5.000000e+00
  %conv221 = fptrunc double %div220 to float
  store float %conv221, ptr getelementptr inbounds ([9 x [15 x float]], ptr @atime, i64 0, i64 3, i64 6), align 4
  %126 = load ptr, ptr @stderr, align 8
  %call222 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %126, ptr noundef @.str.20, double noundef 0.000000e+00)
  %127 = load ptr, ptr @stderr, align 8
  %call223 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %127, ptr noundef @.str.21)
  %call224 = call float @second()
  store i32 0, ptr @main.i, align 4
  br label %for.cond225

for.cond225:                                      ; preds = %for.inc229, %for.end218
  %128 = load i32, ptr @main.i, align 4
  %cmp226 = icmp slt i32 %128, %loop.1.lcssa
  br i1 %cmp226, label %for.body228, label %for.end231

for.body228:                                      ; preds = %for.cond225
  %129 = load i32, ptr @main.ldaa, align 4
  %130 = load i32, ptr @main.n, align 4
  call void @matgen(ptr noundef @main.aa, i32 noundef %129, i32 noundef %130, ptr noundef @main.b, ptr noundef %norma)
  br label %for.inc229

for.inc229:                                       ; preds = %for.body228
  %131 = load i32, ptr @main.i, align 4
  %inc230 = add nsw i32 %131, 1
  store i32 %inc230, ptr @main.i, align 4
  br label %for.cond225, !llvm.loop !17

for.end231:                                       ; preds = %for.cond225
  %call232 = call float @second()
  %sub233 = fsub float %call232, %call224
  %conv234 = fpext float %sub233 to double
  %conv235 = sitofp i32 %loop.1.lcssa to double
  %div236 = fdiv double %conv234, %conv235
  %conv237 = fptrunc double %div236 to float
  %132 = load ptr, ptr @stderr, align 8
  %call238 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %132, ptr noundef @.str.16, double noundef 0.000000e+00)
  %133 = load ptr, ptr @stderr, align 8
  %134 = load i32, ptr @main.ldaa, align 4
  %call239 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %133, ptr noundef @.str.19, i32 noundef %134)
  %135 = load ptr, ptr @stderr, align 8
  %call240 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %135, ptr noundef @.str.12)
  %136 = load ptr, ptr @stderr, align 8
  %call241 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %136, ptr noundef @.str.13)
  %137 = load i32, ptr @main.ntimes, align 4
  %conv242 = sitofp i32 %137 to float
  %mul243 = fmul float %conv242, %conv237
  store float 0.000000e+00, ptr getelementptr inbounds ([9 x [15 x float]], ptr @atime, i64 0, i64 3, i64 12), align 4
  store i32 7, ptr @main.j, align 4
  br label %for.cond244

for.cond244:                                      ; preds = %for.inc304, %for.end231
  %138 = load i32, ptr @main.j, align 4
  %cmp245 = icmp slt i32 %138, 12
  br i1 %cmp245, label %for.body247, label %for.end306

for.body247:                                      ; preds = %for.cond244
  %call248 = call float @second()
  store i32 0, ptr @main.i, align 4
  br label %for.cond249

for.cond249:                                      ; preds = %for.inc253, %for.body247
  %139 = load i32, ptr @main.i, align 4
  %140 = load i32, ptr @main.ntimes, align 4
  %cmp250 = icmp slt i32 %139, %140
  br i1 %cmp250, label %for.body252, label %for.end255

for.body252:                                      ; preds = %for.cond249
  %141 = load i32, ptr @main.ldaa, align 4
  %142 = load i32, ptr @main.n, align 4
  call void @matgen(ptr noundef @main.aa, i32 noundef %141, i32 noundef %142, ptr noundef @main.b, ptr noundef %norma)
  %143 = load i32, ptr @main.ldaa, align 4
  %144 = load i32, ptr @main.n, align 4
  call void @dgefa(ptr noundef @main.aa, i32 noundef %143, i32 noundef %144, ptr noundef @main.ipvt, ptr noundef @main.info)
  br label %for.inc253

for.inc253:                                       ; preds = %for.body252
  %145 = load i32, ptr @main.i, align 4
  %inc254 = add nsw i32 %145, 1
  store i32 %inc254, ptr @main.i, align 4
  br label %for.cond249, !llvm.loop !18

for.end255:                                       ; preds = %for.cond249
  %call256 = call float @second()
  %sub257 = fsub float %call256, %call248
  %sub258 = fsub float %sub257, %mul243
  %146 = load i32, ptr @main.ntimes, align 4
  %conv259 = sitofp i32 %146 to float
  %div260 = fdiv float %sub258, %conv259
  %147 = load i32, ptr @main.j, align 4
  %idxprom261 = sext i32 %147 to i64
  %arrayidx262 = getelementptr inbounds [15 x float], ptr @atime, i64 0, i64 %idxprom261
  store float %div260, ptr %arrayidx262, align 4
  %call263 = call float @second()
  store i32 0, ptr @main.i, align 4
  br label %for.cond264

for.cond264:                                      ; preds = %for.inc268, %for.end255
  %148 = load i32, ptr @main.i, align 4
  %149 = load i32, ptr @main.ntimes, align 4
  %cmp265 = icmp slt i32 %148, %149
  br i1 %cmp265, label %for.body267, label %for.end270

for.body267:                                      ; preds = %for.cond264
  %150 = load i32, ptr @main.ldaa, align 4
  %151 = load i32, ptr @main.n, align 4
  call void @dgesl(ptr noundef @main.aa, i32 noundef %150, i32 noundef %151, ptr noundef @main.ipvt, ptr noundef @main.b, i32 noundef 0)
  br label %for.inc268

for.inc268:                                       ; preds = %for.body267
  %152 = load i32, ptr @main.i, align 4
  %inc269 = add nsw i32 %152, 1
  store i32 %inc269, ptr @main.i, align 4
  br label %for.cond264, !llvm.loop !19

for.end270:                                       ; preds = %for.cond264
  %call271 = call float @second()
  %sub272 = fsub float %call271, %call263
  %153 = load i32, ptr @main.ntimes, align 4
  %conv273 = sitofp i32 %153 to float
  %div274 = fdiv float %sub272, %conv273
  %154 = load i32, ptr @main.j, align 4
  %idxprom275 = sext i32 %154 to i64
  %arrayidx276 = getelementptr inbounds [15 x float], ptr getelementptr inbounds ([9 x [15 x float]], ptr @atime, i64 0, i64 1), i64 0, i64 %idxprom275
  store float %div274, ptr %arrayidx276, align 4
  %155 = load i32, ptr @main.j, align 4
  %idxprom277 = sext i32 %155 to i64
  %arrayidx278 = getelementptr inbounds [15 x float], ptr @atime, i64 0, i64 %idxprom277
  %156 = load float, ptr %arrayidx278, align 4
  %157 = load i32, ptr @main.j, align 4
  %idxprom279 = sext i32 %157 to i64
  %arrayidx280 = getelementptr inbounds [15 x float], ptr getelementptr inbounds ([9 x [15 x float]], ptr @atime, i64 0, i64 1), i64 0, i64 %idxprom279
  %158 = load float, ptr %arrayidx280, align 4
  %add281 = fadd float %156, %158
  %159 = load i32, ptr @main.j, align 4
  %idxprom282 = sext i32 %159 to i64
  %arrayidx283 = getelementptr inbounds [15 x float], ptr getelementptr inbounds ([9 x [15 x float]], ptr @atime, i64 0, i64 2), i64 0, i64 %idxprom282
  store float %add281, ptr %arrayidx283, align 4
  %conv284 = fpext float %conv10 to double
  %conv285 = fpext float %add281 to double
  %mul286 = fmul double 1.000000e+06, %conv285
  %div287 = fdiv double %conv284, %mul286
  %conv288 = fptrunc double %div287 to float
  %160 = load i32, ptr @main.j, align 4
  %idxprom289 = sext i32 %160 to i64
  %arrayidx290 = getelementptr inbounds [15 x float], ptr getelementptr inbounds ([9 x [15 x float]], ptr @atime, i64 0, i64 3), i64 0, i64 %idxprom289
  store float %conv288, ptr %arrayidx290, align 4
  %161 = load i32, ptr @main.j, align 4
  %idxprom291 = sext i32 %161 to i64
  %arrayidx292 = getelementptr inbounds [15 x float], ptr getelementptr inbounds ([9 x [15 x float]], ptr @atime, i64 0, i64 3), i64 0, i64 %idxprom291
  %162 = load float, ptr %arrayidx292, align 4
  %conv293 = fpext float %162 to double
  %div294 = fdiv double 2.000000e+00, %conv293
  %conv295 = fptrunc double %div294 to float
  %163 = load i32, ptr @main.j, align 4
  %idxprom296 = sext i32 %163 to i64
  %arrayidx297 = getelementptr inbounds [15 x float], ptr getelementptr inbounds ([9 x [15 x float]], ptr @atime, i64 0, i64 4), i64 0, i64 %idxprom296
  store float %conv295, ptr %arrayidx297, align 4
  %div298 = fdiv float %add281, 0x3FACAC0840000000
  %164 = load i32, ptr @main.j, align 4
  %idxprom299 = sext i32 %164 to i64
  %arrayidx300 = getelementptr inbounds [15 x float], ptr getelementptr inbounds ([9 x [15 x float]], ptr @atime, i64 0, i64 5), i64 0, i64 %idxprom299
  store float %div298, ptr %arrayidx300, align 4
  %165 = load float, ptr getelementptr inbounds ([9 x [15 x float]], ptr @atime, i64 0, i64 3, i64 12), align 4
  %166 = load i32, ptr @main.j, align 4
  %idxprom301 = sext i32 %166 to i64
  %arrayidx302 = getelementptr inbounds [15 x float], ptr getelementptr inbounds ([9 x [15 x float]], ptr @atime, i64 0, i64 3), i64 0, i64 %idxprom301
  %167 = load float, ptr %arrayidx302, align 4
  %add303 = fadd float %165, %167
  store float %add303, ptr getelementptr inbounds ([9 x [15 x float]], ptr @atime, i64 0, i64 3, i64 12), align 4
  %168 = load i32, ptr @main.j, align 4
  call void @print_time(i32 noundef %168)
  br label %for.inc304

for.inc304:                                       ; preds = %for.end270
  %169 = load i32, ptr @main.j, align 4
  %inc305 = add nsw i32 %169, 1
  store i32 %inc305, ptr @main.j, align 4
  br label %for.cond244, !llvm.loop !20

for.end306:                                       ; preds = %for.cond244
  %170 = load float, ptr getelementptr inbounds ([9 x [15 x float]], ptr @atime, i64 0, i64 3, i64 12), align 4
  %conv307 = fpext float %170 to double
  %div308 = fdiv double %conv307, 5.000000e+00
  %conv309 = fptrunc double %div308 to float
  store float %conv309, ptr getelementptr inbounds ([9 x [15 x float]], ptr @atime, i64 0, i64 3, i64 12), align 4
  %171 = load ptr, ptr @stderr, align 8
  %call310 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %171, ptr noundef @.str.20, double noundef 0.000000e+00)
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

; Function Attrs: noinline nounwind uwtable
define dso_local void @matgen(ptr noundef %a, i32 noundef %lda, i32 noundef %n, ptr noundef %b, ptr noundef %norma) #0 {
entry:
  store float 0.000000e+00, ptr %norma, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc16, %entry
  %init.0 = phi i32 [ 1325, %entry ], [ %init.1.lcssa, %for.inc16 ]
  %j.0 = phi i32 [ 0, %entry ], [ %inc17, %for.inc16 ]
  %cmp = icmp slt i32 %j.0, %n
  br i1 %cmp, label %for.body, label %for.end18

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %init.1 = phi i32 [ %init.0, %for.body ], [ %rem, %for.inc ]
  %i.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ]
  %cmp2 = icmp slt i32 %i.0, %n
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %mul = mul nsw i32 3125, %init.1
  %rem = srem i32 %mul, 65536
  %conv = sitofp i32 %rem to double
  %sub = fsub double %conv, 3.276800e+04
  %div = fdiv double %sub, 1.638400e+04
  %conv4 = fptrunc double %div to float
  %mul5 = mul nsw i32 %lda, %j.0
  %add = add nsw i32 %mul5, %i.0
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds float, ptr %a, i64 %idxprom
  store float %conv4, ptr %arrayidx, align 4
  %mul6 = mul nsw i32 %lda, %j.0
  %add7 = add nsw i32 %mul6, %i.0
  %idxprom8 = sext i32 %add7 to i64
  %arrayidx9 = getelementptr inbounds float, ptr %a, i64 %idxprom8
  %0 = load float, ptr %arrayidx9, align 4
  %1 = load float, ptr %norma, align 4
  %cmp10 = fcmp ogt float %0, %1
  br i1 %cmp10, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body3
  %mul12 = mul nsw i32 %lda, %j.0
  %add13 = add nsw i32 %mul12, %i.0
  %idxprom14 = sext i32 %add13 to i64
  %arrayidx15 = getelementptr inbounds float, ptr %a, i64 %idxprom14
  %2 = load float, ptr %arrayidx15, align 4
  br label %cond.end

cond.false:                                       ; preds = %for.body3
  %3 = load float, ptr %norma, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi float [ %2, %cond.true ], [ %3, %cond.false ]
  store float %cond, ptr %norma, align 4
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %inc = add nsw i32 %i.0, 1
  br label %for.cond1, !llvm.loop !21

for.end:                                          ; preds = %for.cond1
  %init.1.lcssa = phi i32 [ %init.1, %for.cond1 ]
  br label %for.inc16

for.inc16:                                        ; preds = %for.end
  %inc17 = add nsw i32 %j.0, 1
  br label %for.cond, !llvm.loop !22

for.end18:                                        ; preds = %for.cond
  br label %for.cond19

for.cond19:                                       ; preds = %for.inc25, %for.end18
  %i.1 = phi i32 [ 0, %for.end18 ], [ %inc26, %for.inc25 ]
  %cmp20 = icmp slt i32 %i.1, %n
  br i1 %cmp20, label %for.body22, label %for.end27

for.body22:                                       ; preds = %for.cond19
  %idxprom23 = sext i32 %i.1 to i64
  %arrayidx24 = getelementptr inbounds float, ptr %b, i64 %idxprom23
  store float 0.000000e+00, ptr %arrayidx24, align 4
  br label %for.inc25

for.inc25:                                        ; preds = %for.body22
  %inc26 = add nsw i32 %i.1, 1
  br label %for.cond19, !llvm.loop !23

for.end27:                                        ; preds = %for.cond19
  br label %for.cond28

for.cond28:                                       ; preds = %for.inc48, %for.end27
  %j.1 = phi i32 [ 0, %for.end27 ], [ %inc49, %for.inc48 ]
  %cmp29 = icmp slt i32 %j.1, %n
  br i1 %cmp29, label %for.body31, label %for.end50

for.body31:                                       ; preds = %for.cond28
  br label %for.cond32

for.cond32:                                       ; preds = %for.inc45, %for.body31
  %i.2 = phi i32 [ 0, %for.body31 ], [ %inc46, %for.inc45 ]
  %cmp33 = icmp slt i32 %i.2, %n
  br i1 %cmp33, label %for.body35, label %for.end47

for.body35:                                       ; preds = %for.cond32
  %idxprom36 = sext i32 %i.2 to i64
  %arrayidx37 = getelementptr inbounds float, ptr %b, i64 %idxprom36
  %4 = load float, ptr %arrayidx37, align 4
  %mul38 = mul nsw i32 %lda, %j.1
  %add39 = add nsw i32 %mul38, %i.2
  %idxprom40 = sext i32 %add39 to i64
  %arrayidx41 = getelementptr inbounds float, ptr %a, i64 %idxprom40
  %5 = load float, ptr %arrayidx41, align 4
  %add42 = fadd float %4, %5
  %idxprom43 = sext i32 %i.2 to i64
  %arrayidx44 = getelementptr inbounds float, ptr %b, i64 %idxprom43
  store float %add42, ptr %arrayidx44, align 4
  br label %for.inc45

for.inc45:                                        ; preds = %for.body35
  %inc46 = add nsw i32 %i.2, 1
  br label %for.cond32, !llvm.loop !24

for.end47:                                        ; preds = %for.cond32
  br label %for.inc48

for.inc48:                                        ; preds = %for.end47
  %inc49 = add nsw i32 %j.1, 1
  br label %for.cond28, !llvm.loop !25

for.end50:                                        ; preds = %for.cond28
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @dgefa(ptr noundef %a, i32 noundef %lda, i32 noundef %n, ptr noundef %ipvt, ptr noundef %info) #0 {
entry:
  store i32 0, ptr %info, align 4
  %sub = sub nsw i32 %n, 1
  %cmp = icmp sge i32 %sub, 0
  br i1 %cmp, label %if.then, label %if.end86

if.then:                                          ; preds = %entry
  br label %for.cond

for.cond:                                         ; preds = %for.inc83, %if.then
  %k.0 = phi i32 [ 0, %if.then ], [ %inc84, %for.inc83 ]
  %cmp1 = icmp slt i32 %k.0, %sub
  br i1 %cmp1, label %for.body, label %for.end85

for.body:                                         ; preds = %for.cond
  %add = add nsw i32 %k.0, 1
  %sub2 = sub nsw i32 %n, %k.0
  %mul = mul nsw i32 %lda, %k.0
  %add3 = add nsw i32 %mul, %k.0
  %idxprom = sext i32 %add3 to i64
  %arrayidx = getelementptr inbounds float, ptr %a, i64 %idxprom
  %call = call i32 @idamax(i32 noundef %sub2, ptr noundef %arrayidx, i32 noundef 1)
  %add4 = add nsw i32 %call, %k.0
  %idxprom5 = sext i32 %k.0 to i64
  %arrayidx6 = getelementptr inbounds i32, ptr %ipvt, i64 %idxprom5
  store i32 %add4, ptr %arrayidx6, align 4
  %mul7 = mul nsw i32 %lda, %k.0
  %add8 = add nsw i32 %mul7, %add4
  %idxprom9 = sext i32 %add8 to i64
  %arrayidx10 = getelementptr inbounds float, ptr %a, i64 %idxprom9
  %0 = load float, ptr %arrayidx10, align 4
  %conv = fpext float %0 to double
  %cmp11 = fcmp une double %conv, 0.000000e+00
  br i1 %cmp11, label %if.then13, label %if.else

if.then13:                                        ; preds = %for.body
  %cmp14 = icmp ne i32 %add4, %k.0
  br i1 %cmp14, label %if.then16, label %if.end

if.then16:                                        ; preds = %if.then13
  %mul17 = mul nsw i32 %lda, %k.0
  %add18 = add nsw i32 %mul17, %add4
  %idxprom19 = sext i32 %add18 to i64
  %arrayidx20 = getelementptr inbounds float, ptr %a, i64 %idxprom19
  %1 = load float, ptr %arrayidx20, align 4
  %mul21 = mul nsw i32 %lda, %k.0
  %add22 = add nsw i32 %mul21, %k.0
  %idxprom23 = sext i32 %add22 to i64
  %arrayidx24 = getelementptr inbounds float, ptr %a, i64 %idxprom23
  %2 = load float, ptr %arrayidx24, align 4
  %mul25 = mul nsw i32 %lda, %k.0
  %add26 = add nsw i32 %mul25, %add4
  %idxprom27 = sext i32 %add26 to i64
  %arrayidx28 = getelementptr inbounds float, ptr %a, i64 %idxprom27
  store float %2, ptr %arrayidx28, align 4
  %mul29 = mul nsw i32 %lda, %k.0
  %add30 = add nsw i32 %mul29, %k.0
  %idxprom31 = sext i32 %add30 to i64
  %arrayidx32 = getelementptr inbounds float, ptr %a, i64 %idxprom31
  store float %1, ptr %arrayidx32, align 4
  br label %if.end

if.end:                                           ; preds = %if.then16, %if.then13
  %mul33 = mul nsw i32 %lda, %k.0
  %add34 = add nsw i32 %mul33, %k.0
  %idxprom35 = sext i32 %add34 to i64
  %arrayidx36 = getelementptr inbounds float, ptr %a, i64 %idxprom35
  %3 = load float, ptr %arrayidx36, align 4
  %conv37 = fpext float %3 to double
  %div = fdiv double -1.000000e+00, %conv37
  %conv38 = fptrunc double %div to float
  %add39 = add nsw i32 %k.0, 1
  %sub40 = sub nsw i32 %n, %add39
  %mul41 = mul nsw i32 %lda, %k.0
  %add42 = add nsw i32 %mul41, %k.0
  %add43 = add nsw i32 %add42, 1
  %idxprom44 = sext i32 %add43 to i64
  %arrayidx45 = getelementptr inbounds float, ptr %a, i64 %idxprom44
  call void @dscal(i32 noundef %sub40, float noundef %conv38, ptr noundef %arrayidx45, i32 noundef 1)
  br label %for.cond46

for.cond46:                                       ; preds = %for.inc, %if.end
  %j.0 = phi i32 [ %add, %if.end ], [ %inc, %for.inc ]
  %cmp47 = icmp slt i32 %j.0, %n
  br i1 %cmp47, label %for.body49, label %for.end

for.body49:                                       ; preds = %for.cond46
  %mul50 = mul nsw i32 %lda, %j.0
  %add51 = add nsw i32 %mul50, %add4
  %idxprom52 = sext i32 %add51 to i64
  %arrayidx53 = getelementptr inbounds float, ptr %a, i64 %idxprom52
  %4 = load float, ptr %arrayidx53, align 4
  %cmp54 = icmp ne i32 %add4, %k.0
  br i1 %cmp54, label %if.then56, label %if.end69

if.then56:                                        ; preds = %for.body49
  %mul57 = mul nsw i32 %lda, %j.0
  %add58 = add nsw i32 %mul57, %k.0
  %idxprom59 = sext i32 %add58 to i64
  %arrayidx60 = getelementptr inbounds float, ptr %a, i64 %idxprom59
  %5 = load float, ptr %arrayidx60, align 4
  %mul61 = mul nsw i32 %lda, %j.0
  %add62 = add nsw i32 %mul61, %add4
  %idxprom63 = sext i32 %add62 to i64
  %arrayidx64 = getelementptr inbounds float, ptr %a, i64 %idxprom63
  store float %5, ptr %arrayidx64, align 4
  %mul65 = mul nsw i32 %lda, %j.0
  %add66 = add nsw i32 %mul65, %k.0
  %idxprom67 = sext i32 %add66 to i64
  %arrayidx68 = getelementptr inbounds float, ptr %a, i64 %idxprom67
  store float %4, ptr %arrayidx68, align 4
  br label %if.end69

if.end69:                                         ; preds = %if.then56, %for.body49
  %add70 = add nsw i32 %k.0, 1
  %sub71 = sub nsw i32 %n, %add70
  %mul72 = mul nsw i32 %lda, %k.0
  %add73 = add nsw i32 %mul72, %k.0
  %add74 = add nsw i32 %add73, 1
  %idxprom75 = sext i32 %add74 to i64
  %arrayidx76 = getelementptr inbounds float, ptr %a, i64 %idxprom75
  %mul77 = mul nsw i32 %lda, %j.0
  %add78 = add nsw i32 %mul77, %k.0
  %add79 = add nsw i32 %add78, 1
  %idxprom80 = sext i32 %add79 to i64
  %arrayidx81 = getelementptr inbounds float, ptr %a, i64 %idxprom80
  call void @daxpy(i32 noundef %sub71, float noundef %4, ptr noundef %arrayidx76, i32 noundef 1, ptr noundef %arrayidx81, i32 noundef 1)
  br label %for.inc

for.inc:                                          ; preds = %if.end69
  %inc = add nsw i32 %j.0, 1
  br label %for.cond46, !llvm.loop !26

for.end:                                          ; preds = %for.cond46
  br label %if.end82

if.else:                                          ; preds = %for.body
  store i32 %k.0, ptr %info, align 4
  br label %if.end82

if.end82:                                         ; preds = %if.else, %for.end
  br label %for.inc83

for.inc83:                                        ; preds = %if.end82
  %inc84 = add nsw i32 %k.0, 1
  br label %for.cond, !llvm.loop !27

for.end85:                                        ; preds = %for.cond
  br label %if.end86

if.end86:                                         ; preds = %for.end85, %entry
  %sub87 = sub nsw i32 %n, 1
  %sub88 = sub nsw i32 %n, 1
  %idxprom89 = sext i32 %sub88 to i64
  %arrayidx90 = getelementptr inbounds i32, ptr %ipvt, i64 %idxprom89
  store i32 %sub87, ptr %arrayidx90, align 4
  %sub91 = sub nsw i32 %n, 1
  %mul92 = mul nsw i32 %lda, %sub91
  %sub93 = sub nsw i32 %n, 1
  %add94 = add nsw i32 %mul92, %sub93
  %idxprom95 = sext i32 %add94 to i64
  %arrayidx96 = getelementptr inbounds float, ptr %a, i64 %idxprom95
  %6 = load float, ptr %arrayidx96, align 4
  %conv97 = fpext float %6 to double
  %cmp98 = fcmp oeq double %conv97, 0.000000e+00
  br i1 %cmp98, label %if.then100, label %if.end102

if.then100:                                       ; preds = %if.end86
  %sub101 = sub nsw i32 %n, 1
  store i32 %sub101, ptr %info, align 4
  br label %if.end102

if.end102:                                        ; preds = %if.then100, %if.end86
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @dgesl(ptr noundef %a, i32 noundef %lda, i32 noundef %n, ptr noundef %ipvt, ptr noundef %b, i32 noundef %job) #0 {
entry:
  %sub = sub nsw i32 %n, 1
  %cmp = icmp eq i32 %job, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %cmp1 = icmp sge i32 %sub, 1
  br i1 %cmp1, label %if.then2, label %if.end22

if.then2:                                         ; preds = %if.then
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then2
  %k.0 = phi i32 [ 0, %if.then2 ], [ %inc, %for.inc ]
  %cmp3 = icmp slt i32 %k.0, %sub
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %idxprom = sext i32 %k.0 to i64
  %arrayidx = getelementptr inbounds i32, ptr %ipvt, i64 %idxprom
  %0 = load i32, ptr %arrayidx, align 4
  %idxprom4 = sext i32 %0 to i64
  %arrayidx5 = getelementptr inbounds float, ptr %b, i64 %idxprom4
  %1 = load float, ptr %arrayidx5, align 4
  %cmp6 = icmp ne i32 %0, %k.0
  br i1 %cmp6, label %if.then7, label %if.end

if.then7:                                         ; preds = %for.body
  %idxprom8 = sext i32 %k.0 to i64
  %arrayidx9 = getelementptr inbounds float, ptr %b, i64 %idxprom8
  %2 = load float, ptr %arrayidx9, align 4
  %idxprom10 = sext i32 %0 to i64
  %arrayidx11 = getelementptr inbounds float, ptr %b, i64 %idxprom10
  store float %2, ptr %arrayidx11, align 4
  %idxprom12 = sext i32 %k.0 to i64
  %arrayidx13 = getelementptr inbounds float, ptr %b, i64 %idxprom12
  store float %1, ptr %arrayidx13, align 4
  br label %if.end

if.end:                                           ; preds = %if.then7, %for.body
  %add = add nsw i32 %k.0, 1
  %sub14 = sub nsw i32 %n, %add
  %mul = mul nsw i32 %lda, %k.0
  %add15 = add nsw i32 %mul, %k.0
  %add16 = add nsw i32 %add15, 1
  %idxprom17 = sext i32 %add16 to i64
  %arrayidx18 = getelementptr inbounds float, ptr %a, i64 %idxprom17
  %add19 = add nsw i32 %k.0, 1
  %idxprom20 = sext i32 %add19 to i64
  %arrayidx21 = getelementptr inbounds float, ptr %b, i64 %idxprom20
  call void @daxpy(i32 noundef %sub14, float noundef %1, ptr noundef %arrayidx18, i32 noundef 1, ptr noundef %arrayidx21, i32 noundef 1)
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %inc = add nsw i32 %k.0, 1
  br label %for.cond, !llvm.loop !28

for.end:                                          ; preds = %for.cond
  br label %if.end22

if.end22:                                         ; preds = %for.end, %if.then
  br label %for.cond23

for.cond23:                                       ; preds = %for.inc43, %if.end22
  %kb.0 = phi i32 [ 0, %if.end22 ], [ %inc44, %for.inc43 ]
  %cmp24 = icmp slt i32 %kb.0, %n
  br i1 %cmp24, label %for.body25, label %for.end45

for.body25:                                       ; preds = %for.cond23
  %add26 = add nsw i32 %kb.0, 1
  %sub27 = sub nsw i32 %n, %add26
  %idxprom28 = sext i32 %sub27 to i64
  %arrayidx29 = getelementptr inbounds float, ptr %b, i64 %idxprom28
  %3 = load float, ptr %arrayidx29, align 4
  %mul30 = mul nsw i32 %lda, %sub27
  %add31 = add nsw i32 %mul30, %sub27
  %idxprom32 = sext i32 %add31 to i64
  %arrayidx33 = getelementptr inbounds float, ptr %a, i64 %idxprom32
  %4 = load float, ptr %arrayidx33, align 4
  %div = fdiv float %3, %4
  %idxprom34 = sext i32 %sub27 to i64
  %arrayidx35 = getelementptr inbounds float, ptr %b, i64 %idxprom34
  store float %div, ptr %arrayidx35, align 4
  %idxprom36 = sext i32 %sub27 to i64
  %arrayidx37 = getelementptr inbounds float, ptr %b, i64 %idxprom36
  %5 = load float, ptr %arrayidx37, align 4
  %fneg = fneg float %5
  %mul38 = mul nsw i32 %lda, %sub27
  %add39 = add nsw i32 %mul38, 0
  %idxprom40 = sext i32 %add39 to i64
  %arrayidx41 = getelementptr inbounds float, ptr %a, i64 %idxprom40
  %arrayidx42 = getelementptr inbounds float, ptr %b, i64 0
  call void @daxpy(i32 noundef %sub27, float noundef %fneg, ptr noundef %arrayidx41, i32 noundef 1, ptr noundef %arrayidx42, i32 noundef 1)
  br label %for.inc43

for.inc43:                                        ; preds = %for.body25
  %inc44 = add nsw i32 %kb.0, 1
  br label %for.cond23, !llvm.loop !29

for.end45:                                        ; preds = %for.cond23
  br label %if.end107

if.else:                                          ; preds = %entry
  br label %for.cond46

for.cond46:                                       ; preds = %for.inc64, %if.else
  %k.1 = phi i32 [ 0, %if.else ], [ %inc65, %for.inc64 ]
  %cmp47 = icmp slt i32 %k.1, %n
  br i1 %cmp47, label %for.body48, label %for.end66

for.body48:                                       ; preds = %for.cond46
  %mul49 = mul nsw i32 %lda, %k.1
  %add50 = add nsw i32 %mul49, 0
  %idxprom51 = sext i32 %add50 to i64
  %arrayidx52 = getelementptr inbounds float, ptr %a, i64 %idxprom51
  %arrayidx53 = getelementptr inbounds float, ptr %b, i64 0
  %call = call float @ddot(i32 noundef %k.1, ptr noundef %arrayidx52, i32 noundef 1, ptr noundef %arrayidx53, i32 noundef 1)
  %idxprom54 = sext i32 %k.1 to i64
  %arrayidx55 = getelementptr inbounds float, ptr %b, i64 %idxprom54
  %6 = load float, ptr %arrayidx55, align 4
  %sub56 = fsub float %6, %call
  %mul57 = mul nsw i32 %lda, %k.1
  %add58 = add nsw i32 %mul57, %k.1
  %idxprom59 = sext i32 %add58 to i64
  %arrayidx60 = getelementptr inbounds float, ptr %a, i64 %idxprom59
  %7 = load float, ptr %arrayidx60, align 4
  %div61 = fdiv float %sub56, %7
  %idxprom62 = sext i32 %k.1 to i64
  %arrayidx63 = getelementptr inbounds float, ptr %b, i64 %idxprom62
  store float %div61, ptr %arrayidx63, align 4
  br label %for.inc64

for.inc64:                                        ; preds = %for.body48
  %inc65 = add nsw i32 %k.1, 1
  br label %for.cond46, !llvm.loop !30

for.end66:                                        ; preds = %for.cond46
  %cmp67 = icmp sge i32 %sub, 1
  br i1 %cmp67, label %if.then68, label %if.end106

if.then68:                                        ; preds = %for.end66
  br label %for.cond69

for.cond69:                                       ; preds = %for.inc103, %if.then68
  %kb.1 = phi i32 [ 1, %if.then68 ], [ %inc104, %for.inc103 ]
  %cmp70 = icmp slt i32 %kb.1, %sub
  br i1 %cmp70, label %for.body71, label %for.end105

for.body71:                                       ; preds = %for.cond69
  %add72 = add nsw i32 %kb.1, 1
  %sub73 = sub nsw i32 %n, %add72
  %idxprom74 = sext i32 %sub73 to i64
  %arrayidx75 = getelementptr inbounds float, ptr %b, i64 %idxprom74
  %8 = load float, ptr %arrayidx75, align 4
  %add76 = add nsw i32 %sub73, 1
  %sub77 = sub nsw i32 %n, %add76
  %mul78 = mul nsw i32 %lda, %sub73
  %add79 = add nsw i32 %mul78, %sub73
  %add80 = add nsw i32 %add79, 1
  %idxprom81 = sext i32 %add80 to i64
  %arrayidx82 = getelementptr inbounds float, ptr %a, i64 %idxprom81
  %add83 = add nsw i32 %sub73, 1
  %idxprom84 = sext i32 %add83 to i64
  %arrayidx85 = getelementptr inbounds float, ptr %b, i64 %idxprom84
  %call86 = call float @ddot(i32 noundef %sub77, ptr noundef %arrayidx82, i32 noundef 1, ptr noundef %arrayidx85, i32 noundef 1)
  %add87 = fadd float %8, %call86
  %idxprom88 = sext i32 %sub73 to i64
  %arrayidx89 = getelementptr inbounds float, ptr %b, i64 %idxprom88
  store float %add87, ptr %arrayidx89, align 4
  %idxprom90 = sext i32 %sub73 to i64
  %arrayidx91 = getelementptr inbounds i32, ptr %ipvt, i64 %idxprom90
  %9 = load i32, ptr %arrayidx91, align 4
  %cmp92 = icmp ne i32 %9, %sub73
  br i1 %cmp92, label %if.then93, label %if.end102

if.then93:                                        ; preds = %for.body71
  %idxprom94 = sext i32 %9 to i64
  %arrayidx95 = getelementptr inbounds float, ptr %b, i64 %idxprom94
  %10 = load float, ptr %arrayidx95, align 4
  %idxprom96 = sext i32 %sub73 to i64
  %arrayidx97 = getelementptr inbounds float, ptr %b, i64 %idxprom96
  %11 = load float, ptr %arrayidx97, align 4
  %idxprom98 = sext i32 %9 to i64
  %arrayidx99 = getelementptr inbounds float, ptr %b, i64 %idxprom98
  store float %11, ptr %arrayidx99, align 4
  %idxprom100 = sext i32 %sub73 to i64
  %arrayidx101 = getelementptr inbounds float, ptr %b, i64 %idxprom100
  store float %10, ptr %arrayidx101, align 4
  br label %if.end102

if.end102:                                        ; preds = %if.then93, %for.body71
  br label %for.inc103

for.inc103:                                       ; preds = %if.end102
  %inc104 = add nsw i32 %kb.1, 1
  br label %for.cond69, !llvm.loop !31

for.end105:                                       ; preds = %for.cond69
  br label %if.end106

if.end106:                                        ; preds = %for.end105, %for.end66
  br label %if.end107

if.end107:                                        ; preds = %if.end106, %for.end45
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @dmxpy(i32 noundef %n1, ptr noundef %y, i32 noundef %n2, i32 noundef %ldm, ptr noundef %x, ptr noundef %m) #0 {
entry:
  %rem = srem i32 %n2, 2
  %cmp = icmp sge i32 %rem, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %sub = sub nsw i32 %rem, 1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %i.0 = phi i32 [ 0, %if.then ], [ %inc, %for.inc ]
  %cmp1 = icmp slt i32 %i.0, %n1
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %idxprom = sext i32 %i.0 to i64
  %arrayidx = getelementptr inbounds float, ptr %y, i64 %idxprom
  %0 = load float, ptr %arrayidx, align 4
  %idxprom2 = sext i32 %sub to i64
  %arrayidx3 = getelementptr inbounds float, ptr %x, i64 %idxprom2
  %1 = load float, ptr %arrayidx3, align 4
  %mul = mul nsw i32 %ldm, %sub
  %add = add nsw i32 %mul, %i.0
  %idxprom4 = sext i32 %add to i64
  %arrayidx5 = getelementptr inbounds float, ptr %m, i64 %idxprom4
  %2 = load float, ptr %arrayidx5, align 4
  %3 = call float @llvm.fmuladd.f32(float %1, float %2, float %0)
  %idxprom7 = sext i32 %i.0 to i64
  %arrayidx8 = getelementptr inbounds float, ptr %y, i64 %idxprom7
  store float %3, ptr %arrayidx8, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !32

for.end:                                          ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end, %entry
  %rem9 = srem i32 %n2, 4
  %cmp10 = icmp sge i32 %rem9, 2
  br i1 %cmp10, label %if.then11, label %if.end39

if.then11:                                        ; preds = %if.end
  %sub12 = sub nsw i32 %rem9, 1
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc36, %if.then11
  %i.1 = phi i32 [ 0, %if.then11 ], [ %inc37, %for.inc36 ]
  %cmp14 = icmp slt i32 %i.1, %n1
  br i1 %cmp14, label %for.body15, label %for.end38

for.body15:                                       ; preds = %for.cond13
  %idxprom16 = sext i32 %i.1 to i64
  %arrayidx17 = getelementptr inbounds float, ptr %y, i64 %idxprom16
  %4 = load float, ptr %arrayidx17, align 4
  %sub18 = sub nsw i32 %sub12, 1
  %idxprom19 = sext i32 %sub18 to i64
  %arrayidx20 = getelementptr inbounds float, ptr %x, i64 %idxprom19
  %5 = load float, ptr %arrayidx20, align 4
  %sub21 = sub nsw i32 %sub12, 1
  %mul22 = mul nsw i32 %ldm, %sub21
  %add23 = add nsw i32 %mul22, %i.1
  %idxprom24 = sext i32 %add23 to i64
  %arrayidx25 = getelementptr inbounds float, ptr %m, i64 %idxprom24
  %6 = load float, ptr %arrayidx25, align 4
  %7 = call float @llvm.fmuladd.f32(float %5, float %6, float %4)
  %idxprom27 = sext i32 %sub12 to i64
  %arrayidx28 = getelementptr inbounds float, ptr %x, i64 %idxprom27
  %8 = load float, ptr %arrayidx28, align 4
  %mul29 = mul nsw i32 %ldm, %sub12
  %add30 = add nsw i32 %mul29, %i.1
  %idxprom31 = sext i32 %add30 to i64
  %arrayidx32 = getelementptr inbounds float, ptr %m, i64 %idxprom31
  %9 = load float, ptr %arrayidx32, align 4
  %10 = call float @llvm.fmuladd.f32(float %8, float %9, float %7)
  %idxprom34 = sext i32 %i.1 to i64
  %arrayidx35 = getelementptr inbounds float, ptr %y, i64 %idxprom34
  store float %10, ptr %arrayidx35, align 4
  br label %for.inc36

for.inc36:                                        ; preds = %for.body15
  %inc37 = add nsw i32 %i.1, 1
  br label %for.cond13, !llvm.loop !33

for.end38:                                        ; preds = %for.cond13
  br label %if.end39

if.end39:                                         ; preds = %for.end38, %if.end
  %rem40 = srem i32 %n2, 8
  %cmp41 = icmp sge i32 %rem40, 4
  br i1 %cmp41, label %if.then42, label %if.end88

if.then42:                                        ; preds = %if.end39
  %sub43 = sub nsw i32 %rem40, 1
  br label %for.cond44

for.cond44:                                       ; preds = %for.inc85, %if.then42
  %i.2 = phi i32 [ 0, %if.then42 ], [ %inc86, %for.inc85 ]
  %cmp45 = icmp slt i32 %i.2, %n1
  br i1 %cmp45, label %for.body46, label %for.end87

for.body46:                                       ; preds = %for.cond44
  %idxprom47 = sext i32 %i.2 to i64
  %arrayidx48 = getelementptr inbounds float, ptr %y, i64 %idxprom47
  %11 = load float, ptr %arrayidx48, align 4
  %sub49 = sub nsw i32 %sub43, 3
  %idxprom50 = sext i32 %sub49 to i64
  %arrayidx51 = getelementptr inbounds float, ptr %x, i64 %idxprom50
  %12 = load float, ptr %arrayidx51, align 4
  %sub52 = sub nsw i32 %sub43, 3
  %mul53 = mul nsw i32 %ldm, %sub52
  %add54 = add nsw i32 %mul53, %i.2
  %idxprom55 = sext i32 %add54 to i64
  %arrayidx56 = getelementptr inbounds float, ptr %m, i64 %idxprom55
  %13 = load float, ptr %arrayidx56, align 4
  %14 = call float @llvm.fmuladd.f32(float %12, float %13, float %11)
  %sub58 = sub nsw i32 %sub43, 2
  %idxprom59 = sext i32 %sub58 to i64
  %arrayidx60 = getelementptr inbounds float, ptr %x, i64 %idxprom59
  %15 = load float, ptr %arrayidx60, align 4
  %sub61 = sub nsw i32 %sub43, 2
  %mul62 = mul nsw i32 %ldm, %sub61
  %add63 = add nsw i32 %mul62, %i.2
  %idxprom64 = sext i32 %add63 to i64
  %arrayidx65 = getelementptr inbounds float, ptr %m, i64 %idxprom64
  %16 = load float, ptr %arrayidx65, align 4
  %17 = call float @llvm.fmuladd.f32(float %15, float %16, float %14)
  %sub67 = sub nsw i32 %sub43, 1
  %idxprom68 = sext i32 %sub67 to i64
  %arrayidx69 = getelementptr inbounds float, ptr %x, i64 %idxprom68
  %18 = load float, ptr %arrayidx69, align 4
  %sub70 = sub nsw i32 %sub43, 1
  %mul71 = mul nsw i32 %ldm, %sub70
  %add72 = add nsw i32 %mul71, %i.2
  %idxprom73 = sext i32 %add72 to i64
  %arrayidx74 = getelementptr inbounds float, ptr %m, i64 %idxprom73
  %19 = load float, ptr %arrayidx74, align 4
  %20 = call float @llvm.fmuladd.f32(float %18, float %19, float %17)
  %idxprom76 = sext i32 %sub43 to i64
  %arrayidx77 = getelementptr inbounds float, ptr %x, i64 %idxprom76
  %21 = load float, ptr %arrayidx77, align 4
  %mul78 = mul nsw i32 %ldm, %sub43
  %add79 = add nsw i32 %mul78, %i.2
  %idxprom80 = sext i32 %add79 to i64
  %arrayidx81 = getelementptr inbounds float, ptr %m, i64 %idxprom80
  %22 = load float, ptr %arrayidx81, align 4
  %23 = call float @llvm.fmuladd.f32(float %21, float %22, float %20)
  %idxprom83 = sext i32 %i.2 to i64
  %arrayidx84 = getelementptr inbounds float, ptr %y, i64 %idxprom83
  store float %23, ptr %arrayidx84, align 4
  br label %for.inc85

for.inc85:                                        ; preds = %for.body46
  %inc86 = add nsw i32 %i.2, 1
  br label %for.cond44, !llvm.loop !34

for.end87:                                        ; preds = %for.cond44
  br label %if.end88

if.end88:                                         ; preds = %for.end87, %if.end39
  %rem89 = srem i32 %n2, 16
  %cmp90 = icmp sge i32 %rem89, 8
  br i1 %cmp90, label %if.then91, label %if.end173

if.then91:                                        ; preds = %if.end88
  %sub92 = sub nsw i32 %rem89, 1
  br label %for.cond93

for.cond93:                                       ; preds = %for.inc170, %if.then91
  %i.3 = phi i32 [ 0, %if.then91 ], [ %inc171, %for.inc170 ]
  %cmp94 = icmp slt i32 %i.3, %n1
  br i1 %cmp94, label %for.body95, label %for.end172

for.body95:                                       ; preds = %for.cond93
  %idxprom96 = sext i32 %i.3 to i64
  %arrayidx97 = getelementptr inbounds float, ptr %y, i64 %idxprom96
  %24 = load float, ptr %arrayidx97, align 4
  %sub98 = sub nsw i32 %sub92, 7
  %idxprom99 = sext i32 %sub98 to i64
  %arrayidx100 = getelementptr inbounds float, ptr %x, i64 %idxprom99
  %25 = load float, ptr %arrayidx100, align 4
  %sub101 = sub nsw i32 %sub92, 7
  %mul102 = mul nsw i32 %ldm, %sub101
  %add103 = add nsw i32 %mul102, %i.3
  %idxprom104 = sext i32 %add103 to i64
  %arrayidx105 = getelementptr inbounds float, ptr %m, i64 %idxprom104
  %26 = load float, ptr %arrayidx105, align 4
  %27 = call float @llvm.fmuladd.f32(float %25, float %26, float %24)
  %sub107 = sub nsw i32 %sub92, 6
  %idxprom108 = sext i32 %sub107 to i64
  %arrayidx109 = getelementptr inbounds float, ptr %x, i64 %idxprom108
  %28 = load float, ptr %arrayidx109, align 4
  %sub110 = sub nsw i32 %sub92, 6
  %mul111 = mul nsw i32 %ldm, %sub110
  %add112 = add nsw i32 %mul111, %i.3
  %idxprom113 = sext i32 %add112 to i64
  %arrayidx114 = getelementptr inbounds float, ptr %m, i64 %idxprom113
  %29 = load float, ptr %arrayidx114, align 4
  %30 = call float @llvm.fmuladd.f32(float %28, float %29, float %27)
  %sub116 = sub nsw i32 %sub92, 5
  %idxprom117 = sext i32 %sub116 to i64
  %arrayidx118 = getelementptr inbounds float, ptr %x, i64 %idxprom117
  %31 = load float, ptr %arrayidx118, align 4
  %sub119 = sub nsw i32 %sub92, 5
  %mul120 = mul nsw i32 %ldm, %sub119
  %add121 = add nsw i32 %mul120, %i.3
  %idxprom122 = sext i32 %add121 to i64
  %arrayidx123 = getelementptr inbounds float, ptr %m, i64 %idxprom122
  %32 = load float, ptr %arrayidx123, align 4
  %33 = call float @llvm.fmuladd.f32(float %31, float %32, float %30)
  %sub125 = sub nsw i32 %sub92, 4
  %idxprom126 = sext i32 %sub125 to i64
  %arrayidx127 = getelementptr inbounds float, ptr %x, i64 %idxprom126
  %34 = load float, ptr %arrayidx127, align 4
  %sub128 = sub nsw i32 %sub92, 4
  %mul129 = mul nsw i32 %ldm, %sub128
  %add130 = add nsw i32 %mul129, %i.3
  %idxprom131 = sext i32 %add130 to i64
  %arrayidx132 = getelementptr inbounds float, ptr %m, i64 %idxprom131
  %35 = load float, ptr %arrayidx132, align 4
  %36 = call float @llvm.fmuladd.f32(float %34, float %35, float %33)
  %sub134 = sub nsw i32 %sub92, 3
  %idxprom135 = sext i32 %sub134 to i64
  %arrayidx136 = getelementptr inbounds float, ptr %x, i64 %idxprom135
  %37 = load float, ptr %arrayidx136, align 4
  %sub137 = sub nsw i32 %sub92, 3
  %mul138 = mul nsw i32 %ldm, %sub137
  %add139 = add nsw i32 %mul138, %i.3
  %idxprom140 = sext i32 %add139 to i64
  %arrayidx141 = getelementptr inbounds float, ptr %m, i64 %idxprom140
  %38 = load float, ptr %arrayidx141, align 4
  %39 = call float @llvm.fmuladd.f32(float %37, float %38, float %36)
  %sub143 = sub nsw i32 %sub92, 2
  %idxprom144 = sext i32 %sub143 to i64
  %arrayidx145 = getelementptr inbounds float, ptr %x, i64 %idxprom144
  %40 = load float, ptr %arrayidx145, align 4
  %sub146 = sub nsw i32 %sub92, 2
  %mul147 = mul nsw i32 %ldm, %sub146
  %add148 = add nsw i32 %mul147, %i.3
  %idxprom149 = sext i32 %add148 to i64
  %arrayidx150 = getelementptr inbounds float, ptr %m, i64 %idxprom149
  %41 = load float, ptr %arrayidx150, align 4
  %42 = call float @llvm.fmuladd.f32(float %40, float %41, float %39)
  %sub152 = sub nsw i32 %sub92, 1
  %idxprom153 = sext i32 %sub152 to i64
  %arrayidx154 = getelementptr inbounds float, ptr %x, i64 %idxprom153
  %43 = load float, ptr %arrayidx154, align 4
  %sub155 = sub nsw i32 %sub92, 1
  %mul156 = mul nsw i32 %ldm, %sub155
  %add157 = add nsw i32 %mul156, %i.3
  %idxprom158 = sext i32 %add157 to i64
  %arrayidx159 = getelementptr inbounds float, ptr %m, i64 %idxprom158
  %44 = load float, ptr %arrayidx159, align 4
  %45 = call float @llvm.fmuladd.f32(float %43, float %44, float %42)
  %idxprom161 = sext i32 %sub92 to i64
  %arrayidx162 = getelementptr inbounds float, ptr %x, i64 %idxprom161
  %46 = load float, ptr %arrayidx162, align 4
  %mul163 = mul nsw i32 %ldm, %sub92
  %add164 = add nsw i32 %mul163, %i.3
  %idxprom165 = sext i32 %add164 to i64
  %arrayidx166 = getelementptr inbounds float, ptr %m, i64 %idxprom165
  %47 = load float, ptr %arrayidx166, align 4
  %48 = call float @llvm.fmuladd.f32(float %46, float %47, float %45)
  %idxprom168 = sext i32 %i.3 to i64
  %arrayidx169 = getelementptr inbounds float, ptr %y, i64 %idxprom168
  store float %48, ptr %arrayidx169, align 4
  br label %for.inc170

for.inc170:                                       ; preds = %for.body95
  %inc171 = add nsw i32 %i.3, 1
  br label %for.cond93, !llvm.loop !35

for.end172:                                       ; preds = %for.cond93
  br label %if.end173

if.end173:                                        ; preds = %for.end172, %if.end88
  %rem174 = srem i32 %n2, 16
  %add175 = add nsw i32 %rem174, 16
  %sub176 = sub nsw i32 %add175, 1
  br label %for.cond177

for.cond177:                                      ; preds = %for.inc332, %if.end173
  %j.0 = phi i32 [ %sub176, %if.end173 ], [ %add333, %for.inc332 ]
  %cmp178 = icmp slt i32 %j.0, %n2
  br i1 %cmp178, label %for.body179, label %for.end334

for.body179:                                      ; preds = %for.cond177
  br label %for.cond180

for.cond180:                                      ; preds = %for.inc329, %for.body179
  %i.4 = phi i32 [ 0, %for.body179 ], [ %inc330, %for.inc329 ]
  %cmp181 = icmp slt i32 %i.4, %n1
  br i1 %cmp181, label %for.body182, label %for.end331

for.body182:                                      ; preds = %for.cond180
  %idxprom183 = sext i32 %i.4 to i64
  %arrayidx184 = getelementptr inbounds float, ptr %y, i64 %idxprom183
  %49 = load float, ptr %arrayidx184, align 4
  %sub185 = sub nsw i32 %j.0, 15
  %idxprom186 = sext i32 %sub185 to i64
  %arrayidx187 = getelementptr inbounds float, ptr %x, i64 %idxprom186
  %50 = load float, ptr %arrayidx187, align 4
  %sub188 = sub nsw i32 %j.0, 15
  %mul189 = mul nsw i32 %ldm, %sub188
  %add190 = add nsw i32 %mul189, %i.4
  %idxprom191 = sext i32 %add190 to i64
  %arrayidx192 = getelementptr inbounds float, ptr %m, i64 %idxprom191
  %51 = load float, ptr %arrayidx192, align 4
  %52 = call float @llvm.fmuladd.f32(float %50, float %51, float %49)
  %sub194 = sub nsw i32 %j.0, 14
  %idxprom195 = sext i32 %sub194 to i64
  %arrayidx196 = getelementptr inbounds float, ptr %x, i64 %idxprom195
  %53 = load float, ptr %arrayidx196, align 4
  %sub197 = sub nsw i32 %j.0, 14
  %mul198 = mul nsw i32 %ldm, %sub197
  %add199 = add nsw i32 %mul198, %i.4
  %idxprom200 = sext i32 %add199 to i64
  %arrayidx201 = getelementptr inbounds float, ptr %m, i64 %idxprom200
  %54 = load float, ptr %arrayidx201, align 4
  %55 = call float @llvm.fmuladd.f32(float %53, float %54, float %52)
  %sub203 = sub nsw i32 %j.0, 13
  %idxprom204 = sext i32 %sub203 to i64
  %arrayidx205 = getelementptr inbounds float, ptr %x, i64 %idxprom204
  %56 = load float, ptr %arrayidx205, align 4
  %sub206 = sub nsw i32 %j.0, 13
  %mul207 = mul nsw i32 %ldm, %sub206
  %add208 = add nsw i32 %mul207, %i.4
  %idxprom209 = sext i32 %add208 to i64
  %arrayidx210 = getelementptr inbounds float, ptr %m, i64 %idxprom209
  %57 = load float, ptr %arrayidx210, align 4
  %58 = call float @llvm.fmuladd.f32(float %56, float %57, float %55)
  %sub212 = sub nsw i32 %j.0, 12
  %idxprom213 = sext i32 %sub212 to i64
  %arrayidx214 = getelementptr inbounds float, ptr %x, i64 %idxprom213
  %59 = load float, ptr %arrayidx214, align 4
  %sub215 = sub nsw i32 %j.0, 12
  %mul216 = mul nsw i32 %ldm, %sub215
  %add217 = add nsw i32 %mul216, %i.4
  %idxprom218 = sext i32 %add217 to i64
  %arrayidx219 = getelementptr inbounds float, ptr %m, i64 %idxprom218
  %60 = load float, ptr %arrayidx219, align 4
  %61 = call float @llvm.fmuladd.f32(float %59, float %60, float %58)
  %sub221 = sub nsw i32 %j.0, 11
  %idxprom222 = sext i32 %sub221 to i64
  %arrayidx223 = getelementptr inbounds float, ptr %x, i64 %idxprom222
  %62 = load float, ptr %arrayidx223, align 4
  %sub224 = sub nsw i32 %j.0, 11
  %mul225 = mul nsw i32 %ldm, %sub224
  %add226 = add nsw i32 %mul225, %i.4
  %idxprom227 = sext i32 %add226 to i64
  %arrayidx228 = getelementptr inbounds float, ptr %m, i64 %idxprom227
  %63 = load float, ptr %arrayidx228, align 4
  %64 = call float @llvm.fmuladd.f32(float %62, float %63, float %61)
  %sub230 = sub nsw i32 %j.0, 10
  %idxprom231 = sext i32 %sub230 to i64
  %arrayidx232 = getelementptr inbounds float, ptr %x, i64 %idxprom231
  %65 = load float, ptr %arrayidx232, align 4
  %sub233 = sub nsw i32 %j.0, 10
  %mul234 = mul nsw i32 %ldm, %sub233
  %add235 = add nsw i32 %mul234, %i.4
  %idxprom236 = sext i32 %add235 to i64
  %arrayidx237 = getelementptr inbounds float, ptr %m, i64 %idxprom236
  %66 = load float, ptr %arrayidx237, align 4
  %67 = call float @llvm.fmuladd.f32(float %65, float %66, float %64)
  %sub239 = sub nsw i32 %j.0, 9
  %idxprom240 = sext i32 %sub239 to i64
  %arrayidx241 = getelementptr inbounds float, ptr %x, i64 %idxprom240
  %68 = load float, ptr %arrayidx241, align 4
  %sub242 = sub nsw i32 %j.0, 9
  %mul243 = mul nsw i32 %ldm, %sub242
  %add244 = add nsw i32 %mul243, %i.4
  %idxprom245 = sext i32 %add244 to i64
  %arrayidx246 = getelementptr inbounds float, ptr %m, i64 %idxprom245
  %69 = load float, ptr %arrayidx246, align 4
  %70 = call float @llvm.fmuladd.f32(float %68, float %69, float %67)
  %sub248 = sub nsw i32 %j.0, 8
  %idxprom249 = sext i32 %sub248 to i64
  %arrayidx250 = getelementptr inbounds float, ptr %x, i64 %idxprom249
  %71 = load float, ptr %arrayidx250, align 4
  %sub251 = sub nsw i32 %j.0, 8
  %mul252 = mul nsw i32 %ldm, %sub251
  %add253 = add nsw i32 %mul252, %i.4
  %idxprom254 = sext i32 %add253 to i64
  %arrayidx255 = getelementptr inbounds float, ptr %m, i64 %idxprom254
  %72 = load float, ptr %arrayidx255, align 4
  %73 = call float @llvm.fmuladd.f32(float %71, float %72, float %70)
  %sub257 = sub nsw i32 %j.0, 7
  %idxprom258 = sext i32 %sub257 to i64
  %arrayidx259 = getelementptr inbounds float, ptr %x, i64 %idxprom258
  %74 = load float, ptr %arrayidx259, align 4
  %sub260 = sub nsw i32 %j.0, 7
  %mul261 = mul nsw i32 %ldm, %sub260
  %add262 = add nsw i32 %mul261, %i.4
  %idxprom263 = sext i32 %add262 to i64
  %arrayidx264 = getelementptr inbounds float, ptr %m, i64 %idxprom263
  %75 = load float, ptr %arrayidx264, align 4
  %76 = call float @llvm.fmuladd.f32(float %74, float %75, float %73)
  %sub266 = sub nsw i32 %j.0, 6
  %idxprom267 = sext i32 %sub266 to i64
  %arrayidx268 = getelementptr inbounds float, ptr %x, i64 %idxprom267
  %77 = load float, ptr %arrayidx268, align 4
  %sub269 = sub nsw i32 %j.0, 6
  %mul270 = mul nsw i32 %ldm, %sub269
  %add271 = add nsw i32 %mul270, %i.4
  %idxprom272 = sext i32 %add271 to i64
  %arrayidx273 = getelementptr inbounds float, ptr %m, i64 %idxprom272
  %78 = load float, ptr %arrayidx273, align 4
  %79 = call float @llvm.fmuladd.f32(float %77, float %78, float %76)
  %sub275 = sub nsw i32 %j.0, 5
  %idxprom276 = sext i32 %sub275 to i64
  %arrayidx277 = getelementptr inbounds float, ptr %x, i64 %idxprom276
  %80 = load float, ptr %arrayidx277, align 4
  %sub278 = sub nsw i32 %j.0, 5
  %mul279 = mul nsw i32 %ldm, %sub278
  %add280 = add nsw i32 %mul279, %i.4
  %idxprom281 = sext i32 %add280 to i64
  %arrayidx282 = getelementptr inbounds float, ptr %m, i64 %idxprom281
  %81 = load float, ptr %arrayidx282, align 4
  %82 = call float @llvm.fmuladd.f32(float %80, float %81, float %79)
  %sub284 = sub nsw i32 %j.0, 4
  %idxprom285 = sext i32 %sub284 to i64
  %arrayidx286 = getelementptr inbounds float, ptr %x, i64 %idxprom285
  %83 = load float, ptr %arrayidx286, align 4
  %sub287 = sub nsw i32 %j.0, 4
  %mul288 = mul nsw i32 %ldm, %sub287
  %add289 = add nsw i32 %mul288, %i.4
  %idxprom290 = sext i32 %add289 to i64
  %arrayidx291 = getelementptr inbounds float, ptr %m, i64 %idxprom290
  %84 = load float, ptr %arrayidx291, align 4
  %85 = call float @llvm.fmuladd.f32(float %83, float %84, float %82)
  %sub293 = sub nsw i32 %j.0, 3
  %idxprom294 = sext i32 %sub293 to i64
  %arrayidx295 = getelementptr inbounds float, ptr %x, i64 %idxprom294
  %86 = load float, ptr %arrayidx295, align 4
  %sub296 = sub nsw i32 %j.0, 3
  %mul297 = mul nsw i32 %ldm, %sub296
  %add298 = add nsw i32 %mul297, %i.4
  %idxprom299 = sext i32 %add298 to i64
  %arrayidx300 = getelementptr inbounds float, ptr %m, i64 %idxprom299
  %87 = load float, ptr %arrayidx300, align 4
  %88 = call float @llvm.fmuladd.f32(float %86, float %87, float %85)
  %sub302 = sub nsw i32 %j.0, 2
  %idxprom303 = sext i32 %sub302 to i64
  %arrayidx304 = getelementptr inbounds float, ptr %x, i64 %idxprom303
  %89 = load float, ptr %arrayidx304, align 4
  %sub305 = sub nsw i32 %j.0, 2
  %mul306 = mul nsw i32 %ldm, %sub305
  %add307 = add nsw i32 %mul306, %i.4
  %idxprom308 = sext i32 %add307 to i64
  %arrayidx309 = getelementptr inbounds float, ptr %m, i64 %idxprom308
  %90 = load float, ptr %arrayidx309, align 4
  %91 = call float @llvm.fmuladd.f32(float %89, float %90, float %88)
  %sub311 = sub nsw i32 %j.0, 1
  %idxprom312 = sext i32 %sub311 to i64
  %arrayidx313 = getelementptr inbounds float, ptr %x, i64 %idxprom312
  %92 = load float, ptr %arrayidx313, align 4
  %sub314 = sub nsw i32 %j.0, 1
  %mul315 = mul nsw i32 %ldm, %sub314
  %add316 = add nsw i32 %mul315, %i.4
  %idxprom317 = sext i32 %add316 to i64
  %arrayidx318 = getelementptr inbounds float, ptr %m, i64 %idxprom317
  %93 = load float, ptr %arrayidx318, align 4
  %94 = call float @llvm.fmuladd.f32(float %92, float %93, float %91)
  %idxprom320 = sext i32 %j.0 to i64
  %arrayidx321 = getelementptr inbounds float, ptr %x, i64 %idxprom320
  %95 = load float, ptr %arrayidx321, align 4
  %mul322 = mul nsw i32 %ldm, %j.0
  %add323 = add nsw i32 %mul322, %i.4
  %idxprom324 = sext i32 %add323 to i64
  %arrayidx325 = getelementptr inbounds float, ptr %m, i64 %idxprom324
  %96 = load float, ptr %arrayidx325, align 4
  %97 = call float @llvm.fmuladd.f32(float %95, float %96, float %94)
  %idxprom327 = sext i32 %i.4 to i64
  %arrayidx328 = getelementptr inbounds float, ptr %y, i64 %idxprom327
  store float %97, ptr %arrayidx328, align 4
  br label %for.inc329

for.inc329:                                       ; preds = %for.body182
  %inc330 = add nsw i32 %i.4, 1
  br label %for.cond180, !llvm.loop !36

for.end331:                                       ; preds = %for.cond180
  br label %for.inc332

for.inc332:                                       ; preds = %for.end331
  %add333 = add nsw i32 %j.0, 16
  br label %for.cond177, !llvm.loop !37

for.end334:                                       ; preds = %for.cond177
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #4

; Function Attrs: noinline nounwind uwtable
define dso_local float @epslon(float noundef %x) #0 {
entry:
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %eps.0 = phi float [ 0.000000e+00, %entry ], [ %conv7, %while.body ]
  %conv = fpext float %eps.0 to double
  %cmp = fcmp oeq double %conv, 0.000000e+00
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %conv2 = fpext float 0x3FF5555560000000 to double
  %sub = fsub double %conv2, 1.000000e+00
  %conv3 = fptrunc double %sub to float
  %add = fadd float %conv3, %conv3
  %add4 = fadd float %add, %conv3
  %conv5 = fpext float %add4 to double
  %sub6 = fsub double %conv5, 1.000000e+00
  %0 = call double @llvm.fabs.f64(double %sub6)
  %conv7 = fptrunc double %0 to float
  br label %while.cond, !llvm.loop !38

while.end:                                        ; preds = %while.cond
  %eps.0.lcssa = phi float [ %eps.0, %while.cond ]
  %conv8 = fpext float %eps.0.lcssa to double
  %conv9 = fpext float %x to double
  %1 = call double @llvm.fabs.f64(double %conv9)
  %mul = fmul double %conv8, %1
  %conv10 = fptrunc double %mul to float
  ret float %conv10
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @print_time(i32 noundef %row) #0 {
entry:
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @idamax(i32 noundef %n, ptr noundef %dx, i32 noundef %incx) #0 {
entry:
  %cmp = icmp slt i32 %n, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %cmp1 = icmp eq i32 %n, 1
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  br label %return

if.end3:                                          ; preds = %if.end
  %cmp4 = icmp ne i32 %incx, 1
  br i1 %cmp4, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end3
  %arrayidx = getelementptr inbounds float, ptr %dx, i64 0
  %0 = load float, ptr %arrayidx, align 4
  %conv = fpext float %0 to double
  %1 = call double @llvm.fabs.f64(double %conv)
  %conv6 = fptrunc double %1 to float
  %add = add nsw i32 1, %incx
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then5
  %dmax.0 = phi float [ %conv6, %if.then5 ], [ %dmax.1, %for.inc ]
  %i.0 = phi i32 [ 1, %if.then5 ], [ %inc, %for.inc ]
  %ix.0 = phi i32 [ %add, %if.then5 ], [ %add20, %for.inc ]
  %itemp.0 = phi i32 [ undef, %if.then5 ], [ %itemp.1, %for.inc ]
  %cmp7 = icmp slt i32 %i.0, %n
  br i1 %cmp7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %idxprom = sext i32 %ix.0 to i64
  %arrayidx9 = getelementptr inbounds float, ptr %dx, i64 %idxprom
  %2 = load float, ptr %arrayidx9, align 4
  %conv10 = fpext float %2 to double
  %3 = call double @llvm.fabs.f64(double %conv10)
  %conv11 = fpext float %dmax.0 to double
  %cmp12 = fcmp ogt double %3, %conv11
  br i1 %cmp12, label %if.then14, label %if.end19

if.then14:                                        ; preds = %for.body
  %idxprom15 = sext i32 %ix.0 to i64
  %arrayidx16 = getelementptr inbounds float, ptr %dx, i64 %idxprom15
  %4 = load float, ptr %arrayidx16, align 4
  %conv17 = fpext float %4 to double
  %5 = call double @llvm.fabs.f64(double %conv17)
  %conv18 = fptrunc double %5 to float
  br label %if.end19

if.end19:                                         ; preds = %if.then14, %for.body
  %dmax.1 = phi float [ %conv18, %if.then14 ], [ %dmax.0, %for.body ]
  %itemp.1 = phi i32 [ %i.0, %if.then14 ], [ %itemp.0, %for.body ]
  %add20 = add nsw i32 %ix.0, %incx
  br label %for.inc

for.inc:                                          ; preds = %if.end19
  %inc = add nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !39

for.end:                                          ; preds = %for.cond
  %itemp.0.lcssa = phi i32 [ %itemp.0, %for.cond ]
  br label %if.end43

if.else:                                          ; preds = %if.end3
  %arrayidx21 = getelementptr inbounds float, ptr %dx, i64 0
  %6 = load float, ptr %arrayidx21, align 4
  %conv22 = fpext float %6 to double
  %7 = call double @llvm.fabs.f64(double %conv22)
  %conv23 = fptrunc double %7 to float
  br label %for.cond24

for.cond24:                                       ; preds = %for.inc40, %if.else
  %dmax.2 = phi float [ %conv23, %if.else ], [ %dmax.3, %for.inc40 ]
  %i.1 = phi i32 [ 1, %if.else ], [ %inc41, %for.inc40 ]
  %itemp.2 = phi i32 [ 0, %if.else ], [ %itemp.3, %for.inc40 ]
  %cmp25 = icmp slt i32 %i.1, %n
  br i1 %cmp25, label %for.body27, label %for.end42

for.body27:                                       ; preds = %for.cond24
  %idxprom28 = sext i32 %i.1 to i64
  %arrayidx29 = getelementptr inbounds float, ptr %dx, i64 %idxprom28
  %8 = load float, ptr %arrayidx29, align 4
  %conv30 = fpext float %8 to double
  %9 = call double @llvm.fabs.f64(double %conv30)
  %conv31 = fpext float %dmax.2 to double
  %cmp32 = fcmp ogt double %9, %conv31
  br i1 %cmp32, label %if.then34, label %if.end39

if.then34:                                        ; preds = %for.body27
  %idxprom35 = sext i32 %i.1 to i64
  %arrayidx36 = getelementptr inbounds float, ptr %dx, i64 %idxprom35
  %10 = load float, ptr %arrayidx36, align 4
  %conv37 = fpext float %10 to double
  %11 = call double @llvm.fabs.f64(double %conv37)
  %conv38 = fptrunc double %11 to float
  br label %if.end39

if.end39:                                         ; preds = %if.then34, %for.body27
  %dmax.3 = phi float [ %conv38, %if.then34 ], [ %dmax.2, %for.body27 ]
  %itemp.3 = phi i32 [ %i.1, %if.then34 ], [ %itemp.2, %for.body27 ]
  br label %for.inc40

for.inc40:                                        ; preds = %if.end39
  %inc41 = add nsw i32 %i.1, 1
  br label %for.cond24, !llvm.loop !40

for.end42:                                        ; preds = %for.cond24
  %itemp.2.lcssa = phi i32 [ %itemp.2, %for.cond24 ]
  br label %if.end43

if.end43:                                         ; preds = %for.end42, %for.end
  %itemp.4 = phi i32 [ %itemp.0.lcssa, %for.end ], [ %itemp.2.lcssa, %for.end42 ]
  br label %return

return:                                           ; preds = %if.end43, %if.then2, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ 0, %if.then2 ], [ %itemp.4, %if.end43 ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @dscal(i32 noundef %n, float noundef %da, ptr noundef %dx, i32 noundef %incx) #0 {
entry:
  %cmp = icmp sle i32 %n, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %for.end17

if.end:                                           ; preds = %entry
  %cmp1 = icmp ne i32 %incx, 1
  br i1 %cmp1, label %if.then2, label %if.end7

if.then2:                                         ; preds = %if.end
  %mul = mul nsw i32 %n, %incx
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then2
  %i.0 = phi i32 [ 0, %if.then2 ], [ %add, %for.inc ]
  %cmp3 = icmp slt i32 %i.0, %mul
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %idxprom = sext i32 %i.0 to i64
  %arrayidx = getelementptr inbounds float, ptr %dx, i64 %idxprom
  %0 = load float, ptr %arrayidx, align 4
  %mul4 = fmul float %da, %0
  %idxprom5 = sext i32 %i.0 to i64
  %arrayidx6 = getelementptr inbounds float, ptr %dx, i64 %idxprom5
  store float %mul4, ptr %arrayidx6, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %add = add nsw i32 %i.0, %incx
  br label %for.cond, !llvm.loop !41

for.end:                                          ; preds = %for.cond
  br label %for.end17

if.end7:                                          ; preds = %if.end
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc16, %if.end7
  %i.1 = phi i32 [ 0, %if.end7 ], [ %inc, %for.inc16 ]
  %cmp9 = icmp slt i32 %i.1, %n
  br i1 %cmp9, label %for.body10, label %for.end17

for.body10:                                       ; preds = %for.cond8
  %idxprom11 = sext i32 %i.1 to i64
  %arrayidx12 = getelementptr inbounds float, ptr %dx, i64 %idxprom11
  %1 = load float, ptr %arrayidx12, align 4
  %mul13 = fmul float %da, %1
  %idxprom14 = sext i32 %i.1 to i64
  %arrayidx15 = getelementptr inbounds float, ptr %dx, i64 %idxprom14
  store float %mul13, ptr %arrayidx15, align 4
  br label %for.inc16

for.inc16:                                        ; preds = %for.body10
  %inc = add nsw i32 %i.1, 1
  br label %for.cond8, !llvm.loop !42

for.end17:                                        ; preds = %for.cond8, %for.end, %if.then
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @daxpy(i32 noundef %n, float noundef %da, ptr noundef %dx, i32 noundef %incx, ptr noundef %dy, i32 noundef %incy) #0 {
entry:
  %cmp = icmp sle i32 %n, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %conv = fpext float %da to double
  %cmp1 = fcmp oeq double %conv, 0.000000e+00
  br i1 %cmp1, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  br label %return

if.end4:                                          ; preds = %if.end
  %cmp5 = icmp ne i32 %incx, 1
  br i1 %cmp5, label %if.then9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end4
  %cmp7 = icmp ne i32 %incy, 1
  br i1 %cmp7, label %if.then9, label %if.end30

if.then9:                                         ; preds = %lor.lhs.false, %if.end4
  %cmp10 = icmp slt i32 %incx, 0
  br i1 %cmp10, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.then9
  %sub = sub nsw i32 0, %n
  %add = add nsw i32 %sub, 1
  %mul = mul nsw i32 %add, %incx
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %if.then9
  %ix.0 = phi i32 [ %mul, %if.then12 ], [ 0, %if.then9 ]
  %cmp14 = icmp slt i32 %incy, 0
  br i1 %cmp14, label %if.then16, label %if.end20

if.then16:                                        ; preds = %if.end13
  %sub17 = sub nsw i32 0, %n
  %add18 = add nsw i32 %sub17, 1
  %mul19 = mul nsw i32 %add18, %incy
  br label %if.end20

if.end20:                                         ; preds = %if.then16, %if.end13
  %iy.0 = phi i32 [ %mul19, %if.then16 ], [ 0, %if.end13 ]
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end20
  %i.0 = phi i32 [ 0, %if.end20 ], [ %inc, %for.inc ]
  %ix.1 = phi i32 [ %ix.0, %if.end20 ], [ %add28, %for.inc ]
  %iy.1 = phi i32 [ %iy.0, %if.end20 ], [ %add29, %for.inc ]
  %cmp21 = icmp slt i32 %i.0, %n
  br i1 %cmp21, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %idxprom = sext i32 %iy.1 to i64
  %arrayidx = getelementptr inbounds float, ptr %dy, i64 %idxprom
  %0 = load float, ptr %arrayidx, align 4
  %idxprom23 = sext i32 %ix.1 to i64
  %arrayidx24 = getelementptr inbounds float, ptr %dx, i64 %idxprom23
  %1 = load float, ptr %arrayidx24, align 4
  %2 = call float @llvm.fmuladd.f32(float %da, float %1, float %0)
  %idxprom26 = sext i32 %iy.1 to i64
  %arrayidx27 = getelementptr inbounds float, ptr %dy, i64 %idxprom26
  store float %2, ptr %arrayidx27, align 4
  %add28 = add nsw i32 %ix.1, %incx
  %add29 = add nsw i32 %iy.1, %incy
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !43

for.end:                                          ; preds = %for.cond
  br label %return

if.end30:                                         ; preds = %lor.lhs.false
  br label %for.cond31

for.cond31:                                       ; preds = %for.inc42, %if.end30
  %i.1 = phi i32 [ 0, %if.end30 ], [ %inc43, %for.inc42 ]
  %cmp32 = icmp slt i32 %i.1, %n
  br i1 %cmp32, label %for.body34, label %for.end44

for.body34:                                       ; preds = %for.cond31
  %idxprom35 = sext i32 %i.1 to i64
  %arrayidx36 = getelementptr inbounds float, ptr %dy, i64 %idxprom35
  %3 = load float, ptr %arrayidx36, align 4
  %idxprom37 = sext i32 %i.1 to i64
  %arrayidx38 = getelementptr inbounds float, ptr %dx, i64 %idxprom37
  %4 = load float, ptr %arrayidx38, align 4
  %5 = call float @llvm.fmuladd.f32(float %da, float %4, float %3)
  %idxprom40 = sext i32 %i.1 to i64
  %arrayidx41 = getelementptr inbounds float, ptr %dy, i64 %idxprom40
  store float %5, ptr %arrayidx41, align 4
  br label %for.inc42

for.inc42:                                        ; preds = %for.body34
  %inc43 = add nsw i32 %i.1, 1
  br label %for.cond31, !llvm.loop !44

for.end44:                                        ; preds = %for.cond31
  br label %return

return:                                           ; preds = %for.end44, %for.end, %if.then3, %if.then
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local float @ddot(i32 noundef %n, ptr noundef %dx, i32 noundef %incx, ptr noundef %dy, i32 noundef %incy) #0 {
entry:
  %cmp = icmp sle i32 %n, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %cmp1 = icmp ne i32 %incx, 1
  br i1 %cmp1, label %if.then3, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %cmp2 = icmp ne i32 %incy, 1
  br i1 %cmp2, label %if.then3, label %if.end19

if.then3:                                         ; preds = %lor.lhs.false, %if.end
  %cmp4 = icmp slt i32 %incx, 0
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.then3
  %sub = sub nsw i32 0, %n
  %add = add nsw i32 %sub, 1
  %mul = mul nsw i32 %add, %incx
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.then3
  %ix.0 = phi i32 [ %mul, %if.then5 ], [ 0, %if.then3 ]
  %cmp7 = icmp slt i32 %incy, 0
  br i1 %cmp7, label %if.then8, label %if.end12

if.then8:                                         ; preds = %if.end6
  %sub9 = sub nsw i32 0, %n
  %add10 = add nsw i32 %sub9, 1
  %mul11 = mul nsw i32 %add10, %incy
  br label %if.end12

if.end12:                                         ; preds = %if.then8, %if.end6
  %iy.0 = phi i32 [ %mul11, %if.then8 ], [ 0, %if.end6 ]
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end12
  %dtemp.0 = phi float [ 0.000000e+00, %if.end12 ], [ %2, %for.inc ]
  %i.0 = phi i32 [ 0, %if.end12 ], [ %inc, %for.inc ]
  %ix.1 = phi i32 [ %ix.0, %if.end12 ], [ %add17, %for.inc ]
  %iy.1 = phi i32 [ %iy.0, %if.end12 ], [ %add18, %for.inc ]
  %cmp13 = icmp slt i32 %i.0, %n
  br i1 %cmp13, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %idxprom = sext i32 %ix.1 to i64
  %arrayidx = getelementptr inbounds float, ptr %dx, i64 %idxprom
  %0 = load float, ptr %arrayidx, align 4
  %idxprom14 = sext i32 %iy.1 to i64
  %arrayidx15 = getelementptr inbounds float, ptr %dy, i64 %idxprom14
  %1 = load float, ptr %arrayidx15, align 4
  %2 = call float @llvm.fmuladd.f32(float %0, float %1, float %dtemp.0)
  %add17 = add nsw i32 %ix.1, %incx
  %add18 = add nsw i32 %iy.1, %incy
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !45

for.end:                                          ; preds = %for.cond
  %dtemp.0.lcssa = phi float [ %dtemp.0, %for.cond ]
  br label %return

if.end19:                                         ; preds = %lor.lhs.false
  br label %for.cond20

for.cond20:                                       ; preds = %for.inc28, %if.end19
  %dtemp.1 = phi float [ 0.000000e+00, %if.end19 ], [ %5, %for.inc28 ]
  %i.1 = phi i32 [ 0, %if.end19 ], [ %inc29, %for.inc28 ]
  %cmp21 = icmp slt i32 %i.1, %n
  br i1 %cmp21, label %for.body22, label %for.end30

for.body22:                                       ; preds = %for.cond20
  %idxprom23 = sext i32 %i.1 to i64
  %arrayidx24 = getelementptr inbounds float, ptr %dx, i64 %idxprom23
  %3 = load float, ptr %arrayidx24, align 4
  %idxprom25 = sext i32 %i.1 to i64
  %arrayidx26 = getelementptr inbounds float, ptr %dy, i64 %idxprom25
  %4 = load float, ptr %arrayidx26, align 4
  %5 = call float @llvm.fmuladd.f32(float %3, float %4, float %dtemp.1)
  br label %for.inc28

for.inc28:                                        ; preds = %for.body22
  %inc29 = add nsw i32 %i.1, 1
  br label %for.cond20, !llvm.loop !46

for.end30:                                        ; preds = %for.cond20
  %dtemp.1.lcssa = phi float [ %dtemp.1, %for.cond20 ]
  br label %return

return:                                           ; preds = %for.end30, %for.end, %if.then
  %retval.0 = phi float [ 0.000000e+00, %if.then ], [ %dtemp.0.lcssa, %for.end ], [ %dtemp.1.lcssa, %for.end30 ]
  ret float %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 17.0.6 (https://github.com/llvm/llvm-project.git 6009708b4367171ccdbf4b5905cb6a803753fe18)"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
!11 = distinct !{!11, !7}
!12 = distinct !{!12, !7}
!13 = distinct !{!13, !7}
!14 = distinct !{!14, !7}
!15 = distinct !{!15, !7}
!16 = distinct !{!16, !7}
!17 = distinct !{!17, !7}
!18 = distinct !{!18, !7}
!19 = distinct !{!19, !7}
!20 = distinct !{!20, !7}
!21 = distinct !{!21, !7}
!22 = distinct !{!22, !7}
!23 = distinct !{!23, !7}
!24 = distinct !{!24, !7}
!25 = distinct !{!25, !7}
!26 = distinct !{!26, !7}
!27 = distinct !{!27, !7}
!28 = distinct !{!28, !7}
!29 = distinct !{!29, !7}
!30 = distinct !{!30, !7}
!31 = distinct !{!31, !7}
!32 = distinct !{!32, !7}
!33 = distinct !{!33, !7}
!34 = distinct !{!34, !7}
!35 = distinct !{!35, !7}
!36 = distinct !{!36, !7}
!37 = distinct !{!37, !7}
!38 = distinct !{!38, !7}
!39 = distinct !{!39, !7}
!40 = distinct !{!40, !7}
!41 = distinct !{!41, !7}
!42 = distinct !{!42, !7}
!43 = distinct !{!43, !7}
!44 = distinct !{!44, !7}
!45 = distinct !{!45, !7}
!46 = distinct !{!46, !7}
