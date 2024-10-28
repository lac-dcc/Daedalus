; ModuleID = 'Oscar.ll'
source_filename = "Oscar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.complex = type { float, float }
%struct.element = type { i32, i32 }

@seed = dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"  %15.3f%15.3f\00", align 1
@e = dso_local global [130 x %struct.complex] zeroinitializer, align 16
@zr = dso_local global float 0.000000e+00, align 4
@zi = dso_local global float 0.000000e+00, align 4
@z = dso_local global [257 x %struct.complex] zeroinitializer, align 16
@w = dso_local global [257 x %struct.complex] zeroinitializer, align 16
@value = dso_local global float 0.000000e+00, align 4
@fixed = dso_local global float 0.000000e+00, align 4
@floated = dso_local global float 0.000000e+00, align 4
@permarray = dso_local global [11 x i32] zeroinitializer, align 16
@pctr = dso_local global i32 0, align 4
@tree = dso_local global ptr null, align 8
@stack = dso_local global [4 x i32] zeroinitializer, align 16
@cellspace = dso_local global [19 x %struct.element] zeroinitializer, align 16
@freelist = dso_local global i32 0, align 4
@movesdone = dso_local global i32 0, align 4
@ima = dso_local global [41 x [41 x i32]] zeroinitializer, align 16
@imb = dso_local global [41 x [41 x i32]] zeroinitializer, align 16
@imr = dso_local global [41 x [41 x i32]] zeroinitializer, align 16
@rma = dso_local global [41 x [41 x float]] zeroinitializer, align 16
@rmb = dso_local global [41 x [41 x float]] zeroinitializer, align 16
@rmr = dso_local global [41 x [41 x float]] zeroinitializer, align 16
@piececount = dso_local global [4 x i32] zeroinitializer, align 16
@class = dso_local global [13 x i32] zeroinitializer, align 16
@piecemax = dso_local global [13 x i32] zeroinitializer, align 16
@puzzl = dso_local global [512 x i32] zeroinitializer, align 16
@p = dso_local global [13 x [512 x i32]] zeroinitializer, align 16
@n = dso_local global i32 0, align 4
@kount = dso_local global i32 0, align 4
@sortlist = dso_local global [5001 x i32] zeroinitializer, align 16
@biggest = dso_local global i32 0, align 4
@littlest = dso_local global i32 0, align 4
@top = dso_local global i32 0, align 4

; Function Attrs: noinline nounwind uwtable
define dso_local void @Initrand() #0 {
entry:
  store i64 74755, ptr @seed, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Rand() #0 {
entry:
  %0 = load i64, ptr @seed, align 8
  %mul = mul nsw i64 %0, 1309
  %add = add nsw i64 %mul, 13849
  %and = and i64 %add, 65535
  store i64 %and, ptr @seed, align 8
  %1 = load i64, ptr @seed, align 8
  %conv = trunc i64 %1 to i32
  ret i32 %conv
}

; Function Attrs: noinline nounwind uwtable
define dso_local float @Cos(float noundef %x) #0 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %result.0 = phi float [ 1.000000e+00, %entry ], [ %result.2, %for.inc ]
  %factor.0 = phi i32 [ 1, %entry ], [ %mul, %for.inc ]
  %i.0 = phi i32 [ 2, %entry ], [ %inc, %for.inc ]
  %power.0 = phi float [ %x, %entry ], [ %mul1, %for.inc ]
  %cmp = icmp sle i32 %i.0, 10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %mul = mul nsw i32 %factor.0, %i.0
  %mul1 = fmul float %power.0, %x
  %and = and i32 %i.0, 1
  %cmp2 = icmp eq i32 %and, 0
  br i1 %cmp2, label %if.then, label %if.end8

if.then:                                          ; preds = %for.body
  %and3 = and i32 %i.0, 3
  %cmp4 = icmp eq i32 %and3, 0
  br i1 %cmp4, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.then
  %conv = sitofp i32 %mul to float
  %div = fdiv float %mul1, %conv
  %add = fadd float %result.0, %div
  br label %if.end

if.else:                                          ; preds = %if.then
  %conv6 = sitofp i32 %mul to float
  %div7 = fdiv float %mul1, %conv6
  %sub = fsub float %result.0, %div7
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then5
  %result.1 = phi float [ %add, %if.then5 ], [ %sub, %if.else ]
  br label %if.end8

if.end8:                                          ; preds = %if.end, %for.body
  %result.2 = phi float [ %result.1, %if.end ], [ %result.0, %for.body ]
  br label %for.inc

for.inc:                                          ; preds = %if.end8
  %inc = add nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %result.0.lcssa = phi float [ %result.0, %for.cond ]
  ret float %result.0.lcssa
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @Min0(i32 noundef %arg1, i32 noundef %arg2) #0 {
entry:
  %cmp = icmp slt i32 %arg1, %arg2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %return

if.else:                                          ; preds = %entry
  br label %return

return:                                           ; preds = %if.else, %if.then
  %retval.0 = phi i32 [ %arg1, %if.then ], [ %arg2, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Printcomplex(ptr noundef %zarray, i32 noundef %start, i32 noundef %finish, i32 noundef %increment) #0 {
entry:
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str)
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %i.0 = phi i32 [ %start, %entry ], [ %add15, %do.cond ]
  %idxprom = sext i32 %i.0 to i64
  %arrayidx = getelementptr inbounds %struct.complex, ptr %zarray, i64 %idxprom
  %rp = getelementptr inbounds %struct.complex, ptr %arrayidx, i32 0, i32 0
  %0 = load float, ptr %rp, align 4
  %conv = fpext float %0 to double
  %idxprom1 = sext i32 %i.0 to i64
  %arrayidx2 = getelementptr inbounds %struct.complex, ptr %zarray, i64 %idxprom1
  %ip = getelementptr inbounds %struct.complex, ptr %arrayidx2, i32 0, i32 1
  %1 = load float, ptr %ip, align 4
  %conv3 = fpext float %1 to double
  %call4 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, double noundef %conv, double noundef %conv3)
  %add = add nsw i32 %i.0, %increment
  %idxprom5 = sext i32 %add to i64
  %arrayidx6 = getelementptr inbounds %struct.complex, ptr %zarray, i64 %idxprom5
  %rp7 = getelementptr inbounds %struct.complex, ptr %arrayidx6, i32 0, i32 0
  %2 = load float, ptr %rp7, align 4
  %conv8 = fpext float %2 to double
  %idxprom9 = sext i32 %add to i64
  %arrayidx10 = getelementptr inbounds %struct.complex, ptr %zarray, i64 %idxprom9
  %ip11 = getelementptr inbounds %struct.complex, ptr %arrayidx10, i32 0, i32 1
  %3 = load float, ptr %ip11, align 4
  %conv12 = fpext float %3 to double
  %call13 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, double noundef %conv8, double noundef %conv12)
  %call14 = call i32 (ptr, ...) @printf(ptr noundef @.str)
  %add15 = add nsw i32 %add, %increment
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %cmp = icmp sle i32 %add15, %finish
  br i1 %cmp, label %do.body, label %do.end, !llvm.loop !8

do.end:                                           ; preds = %do.cond
  ret void
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind uwtable
define dso_local void @Uniform11(ptr noundef %iy, ptr noundef %yfl) #0 {
entry:
  %0 = load i32, ptr %iy, align 4
  %mul = mul nsw i32 4855, %0
  %add = add nsw i32 %mul, 1731
  %and = and i32 %add, 8191
  store i32 %and, ptr %iy, align 4
  %1 = load i32, ptr %iy, align 4
  %conv = sitofp i32 %1 to float
  %div = fdiv float %conv, 8.192000e+03
  store float %div, ptr %yfl, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Exptab(i32 noundef %n, ptr noundef %e) #0 {
entry:
  %h = alloca [26 x float], align 16
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 1, %entry ], [ %inc, %for.inc ]
  %divisor.0 = phi float [ 4.000000e+00, %entry ], [ %add, %for.inc ]
  %cmp = icmp sle i32 %i.0, 25
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %div = fdiv float 0x400921FB60000000, %divisor.0
  %call = call float @Cos(float noundef %div)
  %mul = fmul float 2.000000e+00, %call
  %div1 = fdiv float 1.000000e+00, %mul
  %idxprom = sext i32 %i.0 to i64
  %arrayidx = getelementptr inbounds [26 x float], ptr %h, i64 0, i64 %idxprom
  store float %div1, ptr %arrayidx, align 4
  %add = fadd float %divisor.0, %divisor.0
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  %div2 = sdiv i32 %n, 2
  %div3 = sdiv i32 %div2, 2
  %arrayidx4 = getelementptr inbounds %struct.complex, ptr %e, i64 1
  %rp = getelementptr inbounds %struct.complex, ptr %arrayidx4, i32 0, i32 0
  store float 1.000000e+00, ptr %rp, align 4
  %arrayidx5 = getelementptr inbounds %struct.complex, ptr %e, i64 1
  %ip = getelementptr inbounds %struct.complex, ptr %arrayidx5, i32 0, i32 1
  store float 0.000000e+00, ptr %ip, align 4
  %add6 = add nsw i32 %div3, 1
  %idxprom7 = sext i32 %add6 to i64
  %arrayidx8 = getelementptr inbounds %struct.complex, ptr %e, i64 %idxprom7
  %rp9 = getelementptr inbounds %struct.complex, ptr %arrayidx8, i32 0, i32 0
  store float 0.000000e+00, ptr %rp9, align 4
  %add10 = add nsw i32 %div3, 1
  %idxprom11 = sext i32 %add10 to i64
  %arrayidx12 = getelementptr inbounds %struct.complex, ptr %e, i64 %idxprom11
  %ip13 = getelementptr inbounds %struct.complex, ptr %arrayidx12, i32 0, i32 1
  store float 1.000000e+00, ptr %ip13, align 4
  %add14 = add nsw i32 %div2, 1
  %idxprom15 = sext i32 %add14 to i64
  %arrayidx16 = getelementptr inbounds %struct.complex, ptr %e, i64 %idxprom15
  %rp17 = getelementptr inbounds %struct.complex, ptr %arrayidx16, i32 0, i32 0
  store float -1.000000e+00, ptr %rp17, align 4
  %add18 = add nsw i32 %div2, 1
  %idxprom19 = sext i32 %add18 to i64
  %arrayidx20 = getelementptr inbounds %struct.complex, ptr %e, i64 %idxprom19
  %ip21 = getelementptr inbounds %struct.complex, ptr %arrayidx20, i32 0, i32 1
  store float 0.000000e+00, ptr %ip21, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond63, %for.end
  %j.0 = phi i32 [ 1, %for.end ], [ %call62, %do.cond63 ]
  %l.0 = phi i32 [ %div3, %for.end ], [ %div22, %do.cond63 ]
  %div22 = sdiv i32 %l.0, 2
  br label %do.body23

do.body23:                                        ; preds = %do.cond, %do.body
  %k.0 = phi i32 [ %div22, %do.body ], [ %add59, %do.cond ]
  %idxprom24 = sext i32 %j.0 to i64
  %arrayidx25 = getelementptr inbounds [26 x float], ptr %h, i64 0, i64 %idxprom24
  %0 = load float, ptr %arrayidx25, align 4
  %add26 = add nsw i32 %k.0, %div22
  %add27 = add nsw i32 %add26, 1
  %idxprom28 = sext i32 %add27 to i64
  %arrayidx29 = getelementptr inbounds %struct.complex, ptr %e, i64 %idxprom28
  %rp30 = getelementptr inbounds %struct.complex, ptr %arrayidx29, i32 0, i32 0
  %1 = load float, ptr %rp30, align 4
  %sub = sub nsw i32 %k.0, %div22
  %add31 = add nsw i32 %sub, 1
  %idxprom32 = sext i32 %add31 to i64
  %arrayidx33 = getelementptr inbounds %struct.complex, ptr %e, i64 %idxprom32
  %rp34 = getelementptr inbounds %struct.complex, ptr %arrayidx33, i32 0, i32 0
  %2 = load float, ptr %rp34, align 4
  %add35 = fadd float %1, %2
  %mul36 = fmul float %0, %add35
  %add37 = add nsw i32 %k.0, 1
  %idxprom38 = sext i32 %add37 to i64
  %arrayidx39 = getelementptr inbounds %struct.complex, ptr %e, i64 %idxprom38
  %rp40 = getelementptr inbounds %struct.complex, ptr %arrayidx39, i32 0, i32 0
  store float %mul36, ptr %rp40, align 4
  %idxprom41 = sext i32 %j.0 to i64
  %arrayidx42 = getelementptr inbounds [26 x float], ptr %h, i64 0, i64 %idxprom41
  %3 = load float, ptr %arrayidx42, align 4
  %add43 = add nsw i32 %k.0, %div22
  %add44 = add nsw i32 %add43, 1
  %idxprom45 = sext i32 %add44 to i64
  %arrayidx46 = getelementptr inbounds %struct.complex, ptr %e, i64 %idxprom45
  %ip47 = getelementptr inbounds %struct.complex, ptr %arrayidx46, i32 0, i32 1
  %4 = load float, ptr %ip47, align 4
  %sub48 = sub nsw i32 %k.0, %div22
  %add49 = add nsw i32 %sub48, 1
  %idxprom50 = sext i32 %add49 to i64
  %arrayidx51 = getelementptr inbounds %struct.complex, ptr %e, i64 %idxprom50
  %ip52 = getelementptr inbounds %struct.complex, ptr %arrayidx51, i32 0, i32 1
  %5 = load float, ptr %ip52, align 4
  %add53 = fadd float %4, %5
  %mul54 = fmul float %3, %add53
  %add55 = add nsw i32 %k.0, 1
  %idxprom56 = sext i32 %add55 to i64
  %arrayidx57 = getelementptr inbounds %struct.complex, ptr %e, i64 %idxprom56
  %ip58 = getelementptr inbounds %struct.complex, ptr %arrayidx57, i32 0, i32 1
  store float %mul54, ptr %ip58, align 4
  %add59 = add nsw i32 %k.0, %l.0
  br label %do.cond

do.cond:                                          ; preds = %do.body23
  %cmp60 = icmp sle i32 %add59, %div2
  br i1 %cmp60, label %do.body23, label %do.end, !llvm.loop !10

do.end:                                           ; preds = %do.cond
  %add61 = add nsw i32 %j.0, 1
  %call62 = call i32 @Min0(i32 noundef %add61, i32 noundef 25)
  br label %do.cond63

do.cond63:                                        ; preds = %do.end
  %cmp64 = icmp sgt i32 %div22, 1
  br i1 %cmp64, label %do.body, label %do.end65, !llvm.loop !11

do.end65:                                         ; preds = %do.cond63
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @Fft(i32 noundef %n, ptr noundef %z, ptr noundef %w, ptr noundef %e, float noundef %sqrinv) #0 {
entry:
  %div = sdiv i32 %n, 2
  br label %do.body

do.body:                                          ; preds = %do.cond94, %entry
  %l.0 = phi i32 [ 1, %entry ], [ %add93, %do.cond94 ]
  br label %do.body1

do.body1:                                         ; preds = %do.cond81, %do.body
  %i.0 = phi i32 [ 1, %do.body ], [ %add79.lcssa, %do.cond81 ]
  %j.0 = phi i32 [ %l.0, %do.body ], [ %add80, %do.cond81 ]
  %k.0 = phi i32 [ 0, %do.body ], [ %j.0, %do.cond81 ]
  br label %do.body2

do.body2:                                         ; preds = %do.cond, %do.body1
  %i.1 = phi i32 [ %i.0, %do.body1 ], [ %add79, %do.cond ]
  %idxprom = sext i32 %i.1 to i64
  %arrayidx = getelementptr inbounds %struct.complex, ptr %z, i64 %idxprom
  %rp = getelementptr inbounds %struct.complex, ptr %arrayidx, i32 0, i32 0
  %0 = load float, ptr %rp, align 4
  %add = add nsw i32 %div, %i.1
  %idxprom3 = sext i32 %add to i64
  %arrayidx4 = getelementptr inbounds %struct.complex, ptr %z, i64 %idxprom3
  %rp5 = getelementptr inbounds %struct.complex, ptr %arrayidx4, i32 0, i32 0
  %1 = load float, ptr %rp5, align 4
  %add6 = fadd float %0, %1
  %add7 = add nsw i32 %i.1, %k.0
  %idxprom8 = sext i32 %add7 to i64
  %arrayidx9 = getelementptr inbounds %struct.complex, ptr %w, i64 %idxprom8
  %rp10 = getelementptr inbounds %struct.complex, ptr %arrayidx9, i32 0, i32 0
  store float %add6, ptr %rp10, align 4
  %idxprom11 = sext i32 %i.1 to i64
  %arrayidx12 = getelementptr inbounds %struct.complex, ptr %z, i64 %idxprom11
  %ip = getelementptr inbounds %struct.complex, ptr %arrayidx12, i32 0, i32 1
  %2 = load float, ptr %ip, align 4
  %add13 = add nsw i32 %div, %i.1
  %idxprom14 = sext i32 %add13 to i64
  %arrayidx15 = getelementptr inbounds %struct.complex, ptr %z, i64 %idxprom14
  %ip16 = getelementptr inbounds %struct.complex, ptr %arrayidx15, i32 0, i32 1
  %3 = load float, ptr %ip16, align 4
  %add17 = fadd float %2, %3
  %add18 = add nsw i32 %i.1, %k.0
  %idxprom19 = sext i32 %add18 to i64
  %arrayidx20 = getelementptr inbounds %struct.complex, ptr %w, i64 %idxprom19
  %ip21 = getelementptr inbounds %struct.complex, ptr %arrayidx20, i32 0, i32 1
  store float %add17, ptr %ip21, align 4
  %add22 = add nsw i32 %k.0, 1
  %idxprom23 = sext i32 %add22 to i64
  %arrayidx24 = getelementptr inbounds %struct.complex, ptr %e, i64 %idxprom23
  %rp25 = getelementptr inbounds %struct.complex, ptr %arrayidx24, i32 0, i32 0
  %4 = load float, ptr %rp25, align 4
  %idxprom26 = sext i32 %i.1 to i64
  %arrayidx27 = getelementptr inbounds %struct.complex, ptr %z, i64 %idxprom26
  %rp28 = getelementptr inbounds %struct.complex, ptr %arrayidx27, i32 0, i32 0
  %5 = load float, ptr %rp28, align 4
  %add29 = add nsw i32 %i.1, %div
  %idxprom30 = sext i32 %add29 to i64
  %arrayidx31 = getelementptr inbounds %struct.complex, ptr %z, i64 %idxprom30
  %rp32 = getelementptr inbounds %struct.complex, ptr %arrayidx31, i32 0, i32 0
  %6 = load float, ptr %rp32, align 4
  %sub = fsub float %5, %6
  %add33 = add nsw i32 %k.0, 1
  %idxprom34 = sext i32 %add33 to i64
  %arrayidx35 = getelementptr inbounds %struct.complex, ptr %e, i64 %idxprom34
  %ip36 = getelementptr inbounds %struct.complex, ptr %arrayidx35, i32 0, i32 1
  %7 = load float, ptr %ip36, align 4
  %idxprom37 = sext i32 %i.1 to i64
  %arrayidx38 = getelementptr inbounds %struct.complex, ptr %z, i64 %idxprom37
  %ip39 = getelementptr inbounds %struct.complex, ptr %arrayidx38, i32 0, i32 1
  %8 = load float, ptr %ip39, align 4
  %add40 = add nsw i32 %i.1, %div
  %idxprom41 = sext i32 %add40 to i64
  %arrayidx42 = getelementptr inbounds %struct.complex, ptr %z, i64 %idxprom41
  %ip43 = getelementptr inbounds %struct.complex, ptr %arrayidx42, i32 0, i32 1
  %9 = load float, ptr %ip43, align 4
  %sub44 = fsub float %8, %9
  %mul45 = fmul float %7, %sub44
  %neg = fneg float %mul45
  %10 = call float @llvm.fmuladd.f32(float %4, float %sub, float %neg)
  %add46 = add nsw i32 %i.1, %j.0
  %idxprom47 = sext i32 %add46 to i64
  %arrayidx48 = getelementptr inbounds %struct.complex, ptr %w, i64 %idxprom47
  %rp49 = getelementptr inbounds %struct.complex, ptr %arrayidx48, i32 0, i32 0
  store float %10, ptr %rp49, align 4
  %add50 = add nsw i32 %k.0, 1
  %idxprom51 = sext i32 %add50 to i64
  %arrayidx52 = getelementptr inbounds %struct.complex, ptr %e, i64 %idxprom51
  %rp53 = getelementptr inbounds %struct.complex, ptr %arrayidx52, i32 0, i32 0
  %11 = load float, ptr %rp53, align 4
  %idxprom54 = sext i32 %i.1 to i64
  %arrayidx55 = getelementptr inbounds %struct.complex, ptr %z, i64 %idxprom54
  %ip56 = getelementptr inbounds %struct.complex, ptr %arrayidx55, i32 0, i32 1
  %12 = load float, ptr %ip56, align 4
  %add57 = add nsw i32 %i.1, %div
  %idxprom58 = sext i32 %add57 to i64
  %arrayidx59 = getelementptr inbounds %struct.complex, ptr %z, i64 %idxprom58
  %ip60 = getelementptr inbounds %struct.complex, ptr %arrayidx59, i32 0, i32 1
  %13 = load float, ptr %ip60, align 4
  %sub61 = fsub float %12, %13
  %add62 = add nsw i32 %k.0, 1
  %idxprom63 = sext i32 %add62 to i64
  %arrayidx64 = getelementptr inbounds %struct.complex, ptr %e, i64 %idxprom63
  %ip65 = getelementptr inbounds %struct.complex, ptr %arrayidx64, i32 0, i32 1
  %14 = load float, ptr %ip65, align 4
  %idxprom66 = sext i32 %i.1 to i64
  %arrayidx67 = getelementptr inbounds %struct.complex, ptr %z, i64 %idxprom66
  %rp68 = getelementptr inbounds %struct.complex, ptr %arrayidx67, i32 0, i32 0
  %15 = load float, ptr %rp68, align 4
  %add69 = add nsw i32 %i.1, %div
  %idxprom70 = sext i32 %add69 to i64
  %arrayidx71 = getelementptr inbounds %struct.complex, ptr %z, i64 %idxprom70
  %rp72 = getelementptr inbounds %struct.complex, ptr %arrayidx71, i32 0, i32 0
  %16 = load float, ptr %rp72, align 4
  %sub73 = fsub float %15, %16
  %mul74 = fmul float %14, %sub73
  %17 = call float @llvm.fmuladd.f32(float %11, float %sub61, float %mul74)
  %add75 = add nsw i32 %i.1, %j.0
  %idxprom76 = sext i32 %add75 to i64
  %arrayidx77 = getelementptr inbounds %struct.complex, ptr %w, i64 %idxprom76
  %ip78 = getelementptr inbounds %struct.complex, ptr %arrayidx77, i32 0, i32 1
  store float %17, ptr %ip78, align 4
  %add79 = add nsw i32 %i.1, 1
  br label %do.cond

do.cond:                                          ; preds = %do.body2
  %cmp = icmp sle i32 %add79, %j.0
  br i1 %cmp, label %do.body2, label %do.end, !llvm.loop !12

do.end:                                           ; preds = %do.cond
  %add79.lcssa = phi i32 [ %add79, %do.cond ]
  %add80 = add nsw i32 %j.0, %l.0
  br label %do.cond81

do.cond81:                                        ; preds = %do.end
  %cmp82 = icmp sle i32 %add80, %div
  br i1 %cmp82, label %do.body1, label %do.end83, !llvm.loop !13

do.end83:                                         ; preds = %do.cond81
  br label %do.body84

do.body84:                                        ; preds = %do.cond90, %do.end83
  %index.0 = phi i32 [ 1, %do.end83 ], [ %add89, %do.cond90 ]
  %idxprom85 = sext i32 %index.0 to i64
  %arrayidx86 = getelementptr inbounds %struct.complex, ptr %z, i64 %idxprom85
  %idxprom87 = sext i32 %index.0 to i64
  %arrayidx88 = getelementptr inbounds %struct.complex, ptr %w, i64 %idxprom87
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %arrayidx86, ptr align 4 %arrayidx88, i64 8, i1 false)
  %add89 = add nsw i32 %index.0, 1
  br label %do.cond90

do.cond90:                                        ; preds = %do.body84
  %cmp91 = icmp sle i32 %add89, %n
  br i1 %cmp91, label %do.body84, label %do.end92, !llvm.loop !14

do.end92:                                         ; preds = %do.cond90
  %add93 = add nsw i32 %l.0, %l.0
  br label %do.cond94

do.cond94:                                        ; preds = %do.end92
  %cmp95 = icmp sle i32 %add93, %div
  br i1 %cmp95, label %do.body, label %do.end96, !llvm.loop !15

do.end96:                                         ; preds = %do.cond94
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end96
  %i.2 = phi i32 [ 1, %do.end96 ], [ %inc, %for.inc ]
  %cmp97 = icmp sle i32 %i.2, %n
  br i1 %cmp97, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %idxprom98 = sext i32 %i.2 to i64
  %arrayidx99 = getelementptr inbounds %struct.complex, ptr %z, i64 %idxprom98
  %rp100 = getelementptr inbounds %struct.complex, ptr %arrayidx99, i32 0, i32 0
  %18 = load float, ptr %rp100, align 4
  %mul = fmul float %sqrinv, %18
  %idxprom101 = sext i32 %i.2 to i64
  %arrayidx102 = getelementptr inbounds %struct.complex, ptr %z, i64 %idxprom101
  %rp103 = getelementptr inbounds %struct.complex, ptr %arrayidx102, i32 0, i32 0
  store float %mul, ptr %rp103, align 4
  %fneg = fneg float %sqrinv
  %idxprom104 = sext i32 %i.2 to i64
  %arrayidx105 = getelementptr inbounds %struct.complex, ptr %z, i64 %idxprom104
  %ip106 = getelementptr inbounds %struct.complex, ptr %arrayidx105, i32 0, i32 1
  %19 = load float, ptr %ip106, align 4
  %mul107 = fmul float %fneg, %19
  %idxprom108 = sext i32 %i.2 to i64
  %arrayidx109 = getelementptr inbounds %struct.complex, ptr %z, i64 %idxprom108
  %ip110 = getelementptr inbounds %struct.complex, ptr %arrayidx109, i32 0, i32 1
  store float %mul107, ptr %ip110, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.2, 1
  br label %for.cond, !llvm.loop !16

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noinline nounwind uwtable
define dso_local void @Oscar() #0 {
entry:
  %s = alloca i32, align 4
  call void @Exptab(i32 noundef 256, ptr noundef @e)
  store i64 5767, ptr @seed, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 1, %entry ], [ %inc, %for.inc ]
  %cmp = icmp sle i32 %i.0, 256
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %0 = load i64, ptr @seed, align 8
  %conv = trunc i64 %0 to i32
  store i32 %conv, ptr %s, align 4
  call void @Uniform11(ptr noundef %s, ptr noundef @zr)
  %1 = load i32, ptr %s, align 4
  %conv1 = sext i32 %1 to i64
  store i64 %conv1, ptr @seed, align 8
  call void @Uniform11(ptr noundef %s, ptr noundef @zi)
  %2 = load i32, ptr %s, align 4
  %conv2 = sext i32 %2 to i64
  store i64 %conv2, ptr @seed, align 8
  %3 = load float, ptr @zr, align 4
  %4 = call float @llvm.fmuladd.f32(float 2.000000e+01, float %3, float -1.000000e+01)
  %idxprom = sext i32 %i.0 to i64
  %arrayidx = getelementptr inbounds [257 x %struct.complex], ptr @z, i64 0, i64 %idxprom
  %rp = getelementptr inbounds %struct.complex, ptr %arrayidx, i32 0, i32 0
  store float %4, ptr %rp, align 8
  %5 = load float, ptr @zi, align 4
  %6 = call float @llvm.fmuladd.f32(float 2.000000e+01, float %5, float -1.000000e+01)
  %idxprom3 = sext i32 %i.0 to i64
  %arrayidx4 = getelementptr inbounds [257 x %struct.complex], ptr @z, i64 0, i64 %idxprom3
  %ip = getelementptr inbounds %struct.complex, ptr %arrayidx4, i32 0, i32 1
  store float %6, ptr %ip, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !17

for.end:                                          ; preds = %for.cond
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc9, %for.end
  %i.1 = phi i32 [ 1, %for.end ], [ %inc10, %for.inc9 ]
  %cmp6 = icmp sle i32 %i.1, 20
  br i1 %cmp6, label %for.body8, label %for.end11

for.body8:                                        ; preds = %for.cond5
  call void @Fft(i32 noundef 256, ptr noundef @z, ptr noundef @w, ptr noundef @e, float noundef 6.250000e-02)
  br label %for.inc9

for.inc9:                                         ; preds = %for.body8
  %inc10 = add nsw i32 %i.1, 1
  br label %for.cond5, !llvm.loop !18

for.end11:                                        ; preds = %for.cond5
  call void @Printcomplex(ptr noundef @z, i32 noundef 1, i32 noundef 256, i32 noundef 17)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() #0 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  %cmp = icmp slt i32 %i.0, 10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @Oscar()
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !19

for.end:                                          ; preds = %for.cond
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 17.0.6 (https://github.com/Casperento/llvm-project.git 9b0073551ece0d22bf3378af2b03e456a26031b6)"}
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
