; ModuleID = '/src/llvm-test-suite/build/MultiSource/Benchmarks/MiBench/automotive-susan/automotive-susan.e.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i32, i32, i32, i32, i32, i32 }

@stderr = external local_unnamed_addr global ptr, align 8
@.str.13 = private unnamed_addr constant [26 x i8] c"Image %s not binary PGM.\0A\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"is\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.16 = private unnamed_addr constant [23 x i8] c"Can't input image %s.\0A\00", align 1
@.str.17 = private unnamed_addr constant [43 x i8] c"Image %s does not have binary PGM header.\0A\00", align 1
@.str.18 = private unnamed_addr constant [25 x i8] c"Image %s is wrong size.\0A\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.20 = private unnamed_addr constant [23 x i8] c"Can't output image%s.\0A\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"P5\0A\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"%d %d\0A\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"255\0A\00", align 1
@.str.24 = private unnamed_addr constant [23 x i8] c"Can't write image %s.\0A\00", align 1
@.str.25 = private unnamed_addr constant [54 x i8] c"Distance_thresh (%f) too big for integer arithmetic.\0A\00", align 1
@.str.28 = private unnamed_addr constant [65 x i8] c"Mask size (1.5*distance_thresh+1=%d) too big for image (%dx%d).\0A\00", align 1
@.str.29 = private unnamed_addr constant [19 x i8] c"Too many corners.\0A\00", align 1
@str = private unnamed_addr constant [43 x i8] c"Usage: susan <in.pgm> <out.pgm> [options]\0A\00", align 1
@str.32 = private unnamed_addr constant [30 x i8] c"-s : Smoothing mode (default)\00", align 1
@str.33 = private unnamed_addr constant [16 x i8] c"-e : Edges mode\00", align 1
@str.34 = private unnamed_addr constant [19 x i8] c"-c : Corners mode\0A\00", align 1
@str.35 = private unnamed_addr constant [66 x i8] c"See source code for more information about setting the thresholds\00", align 1
@str.36 = private unnamed_addr constant [59 x i8] c"-t <thresh> : Brightness threshold, all modes (default=20)\00", align 1
@str.37 = private unnamed_addr constant [106 x i8] c"-d <thresh> : Distance threshold, smoothing mode, (default=4) (use next option instead for flat 3x3 mask)\00", align 1
@str.38 = private unnamed_addr constant [48 x i8] c"-3 : Use flat 3x3 mask, edges or smoothing mode\00", align 1
@str.39 = private unnamed_addr constant [78 x i8] c"-n : No post-processing on the binary edge map (runs much faster); edges mode\00", align 1
@str.40 = private unnamed_addr constant [110 x i8] c"-q : Use faster (and usually stabler) corner mode; edge-like corner suppression not carried out; corners mode\00", align 1
@str.41 = private unnamed_addr constant [107 x i8] c"-b : Mark corners/edges with single black points instead of black with white border; corners or edges mode\00", align 1
@str.42 = private unnamed_addr constant [90 x i8] c"-p : Output initial enhancement image only; corners or edges mode (default is edges mode)\00", align 1
@str.43 = private unnamed_addr constant [76 x i8] c"\0ASUSAN Version 2l (C) 1995-1997 Stephen Smith, DRA UK. steve@fmrib.ox.ac.uk\00", align 1
@str.44 = private unnamed_addr constant [60 x i8] c"Either reduce it to <=15 or recompile with variable \22total\22\00", align 1
@str.45 = private unnamed_addr constant [39 x i8] c"as a float: see top \22defines\22 section.\00", align 1
@str.46 = private unnamed_addr constant [25 x i8] c"No argument following -t\00", align 1
@str.47 = private unnamed_addr constant [25 x i8] c"No argument following -d\00", align 1

; Function Attrs: noreturn nounwind optsize uwtable
define internal i32 @usage() #0 {
  %1 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %2 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.32)
  %3 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.33)
  %4 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.34)
  %5 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.35)
  %6 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.36)
  %7 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.37)
  %8 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.38)
  %9 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.39)
  %10 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.40)
  %11 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.41)
  %12 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.42)
  %13 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.43)
  tail call void @exit(i32 noundef 0) #20
  unreachable
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind optsize uwtable
define internal i32 @getint(ptr nocapture noundef %0) #3 {
  %2 = alloca [10000 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 10000, ptr nonnull %2) #21
  %3 = tail call i32 @getc(ptr noundef %0) #22
  br label %4

4:                                                ; preds = %14, %1
  %5 = phi i32 [ %3, %1 ], [ %15, %14 ]
  switch i32 %5, label %11 [
    i32 35, label %6
    i32 -1, label %8
  ]

6:                                                ; preds = %4
  %7 = call ptr @fgets(ptr noundef nonnull %2, i32 noundef 9000, ptr noundef %0) #22
  br label %14

8:                                                ; preds = %4
  %9 = load ptr, ptr @stderr, align 8, !tbaa !7
  %10 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14) #23
  call void @exit(i32 noundef 0) #20
  unreachable

11:                                               ; preds = %4
  %12 = add i32 %5, -48
  %13 = icmp ult i32 %12, 10
  br i1 %13, label %16, label %14

14:                                               ; preds = %11, %6
  %15 = call i32 @getc(ptr noundef %0) #22
  br label %4

16:                                               ; preds = %16, %11
  %17 = phi i32 [ %22, %16 ], [ %5, %11 ]
  %18 = phi i32 [ %21, %16 ], [ 0, %11 ]
  %19 = mul nsw i32 %18, 10
  %20 = add nsw i32 %17, -48
  %21 = add nsw i32 %20, %19
  %22 = call i32 @getc(ptr noundef %0) #22
  %23 = add i32 %22, -58
  %24 = icmp ult i32 %23, -10
  br i1 %24, label %25, label %16

25:                                               ; preds = %16
  %.lcssa = phi i32 [ %21, %16 ]
  call void @llvm.lifetime.end.p0(i64 10000, ptr nonnull %2) #21
  ret i32 %.lcssa
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nofree nounwind optsize
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind optsize
declare noundef ptr @fgets(ptr noundef, i32 noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nounwind optsize uwtable
define internal void @get_image(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef %2, ptr nocapture noundef %3) #3 {
  %5 = tail call noalias ptr @fopen(ptr noundef %0, ptr noundef nonnull @.str.15) #22
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %4
  %8 = load ptr, ptr @stderr, align 8, !tbaa !7
  %9 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull @.str.16, ptr noundef %0) #23
  tail call void @exit(i32 noundef 0) #20
  unreachable

10:                                               ; preds = %4
  %11 = tail call i32 @fgetc(ptr noundef nonnull %5) #22
  %12 = tail call i32 @fgetc(ptr noundef nonnull %5) #22
  %13 = and i32 %11, 255
  %14 = icmp eq i32 %13, 80
  %15 = and i32 %12, 255
  %16 = icmp eq i32 %15, 53
  %17 = and i1 %14, %16
  br i1 %17, label %21, label %18

18:                                               ; preds = %10
  %19 = load ptr, ptr @stderr, align 8, !tbaa !7
  %20 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef nonnull @.str.17, ptr noundef %0) #23
  tail call void @exit(i32 noundef 0) #20
  unreachable

21:                                               ; preds = %10
  %22 = tail call i32 @getint(ptr noundef nonnull %5) #22
  store i32 %22, ptr %2, align 4, !tbaa !11
  %23 = tail call i32 @getint(ptr noundef nonnull %5) #22
  store i32 %23, ptr %3, align 4, !tbaa !11
  %24 = tail call i32 @getint(ptr noundef nonnull %5) #22
  %25 = load i32, ptr %2, align 4, !tbaa !11
  %26 = load i32, ptr %3, align 4, !tbaa !11
  %27 = mul nsw i32 %26, %25
  %28 = sext i32 %27 to i64
  %29 = tail call noalias ptr @malloc(i64 noundef %28) #24
  store ptr %29, ptr %1, align 8, !tbaa !7
  %30 = tail call i64 @fread(ptr noundef %29, i64 noundef 1, i64 noundef %28, ptr noundef nonnull %5) #22
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %21
  %33 = load ptr, ptr @stderr, align 8, !tbaa !7
  %34 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %33, ptr noundef nonnull @.str.18, ptr noundef %0) #23
  tail call void @exit(i32 noundef 0) #20
  unreachable

35:                                               ; preds = %21
  %36 = tail call i32 @fclose(ptr noundef nonnull %5) #22
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #5

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fgetc(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind optsize
declare noundef i64 @fread(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nounwind optsize uwtable
define internal i32 @put_image(ptr noundef %0, ptr nocapture noundef %1, i32 noundef %2, i32 noundef %3) #3 {
  %5 = tail call noalias ptr @fopen(ptr noundef %0, ptr noundef nonnull @.str.19) #22
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %4
  %8 = load ptr, ptr @stderr, align 8, !tbaa !7
  %9 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull @.str.20, ptr noundef %0) #23
  tail call void @exit(i32 noundef 0) #20
  unreachable

10:                                               ; preds = %4
  %11 = tail call i64 @fwrite(ptr nonnull @.str.21, i64 3, i64 1, ptr nonnull %5)
  %12 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %5, ptr noundef nonnull @.str.22, i32 noundef %2, i32 noundef %3) #22
  %13 = tail call i64 @fwrite(ptr nonnull @.str.23, i64 4, i64 1, ptr nonnull %5)
  %14 = mul nsw i32 %3, %2
  %15 = sext i32 %14 to i64
  %16 = tail call i64 @fwrite(ptr noundef %1, i64 noundef %15, i64 noundef 1, ptr noundef nonnull %5) #22
  %17 = icmp eq i64 %16, 1
  br i1 %17, label %21, label %18

18:                                               ; preds = %10
  %19 = load ptr, ptr @stderr, align 8, !tbaa !7
  %20 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef nonnull @.str.24, ptr noundef %0) #23
  tail call void @exit(i32 noundef 0) #20
  unreachable

21:                                               ; preds = %10
  %22 = tail call i32 @fclose(ptr noundef nonnull %5) #22
  ret i32 undef
}

; Function Attrs: nofree nounwind optsize
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nofree nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal i32 @int_to_uchar(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i32 noundef %2) #7 {
  %4 = icmp sgt i32 %2, 0
  br i1 %4, label %5, label %33

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 4, !tbaa !11
  %7 = zext i32 %2 to i64
  br label %8

8:                                                ; preds = %8, %5
  %9 = phi i64 [ 0, %5 ], [ %16, %8 ]
  %10 = phi i32 [ %6, %5 ], [ %15, %8 ]
  %11 = phi i32 [ %6, %5 ], [ %14, %8 ]
  %12 = getelementptr inbounds i32, ptr %0, i64 %9
  %13 = load i32, ptr %12, align 4, !tbaa !11
  %14 = tail call i32 @llvm.smax.i32(i32 %13, i32 %11)
  %15 = tail call i32 @llvm.smin.i32(i32 %13, i32 %10)
  %16 = add nuw nsw i64 %9, 1
  %17 = icmp eq i64 %16, %7
  br i1 %17, label %18, label %8, !llvm.loop !13

18:                                               ; preds = %8
  %.lcssa1 = phi i32 [ %14, %8 ]
  %.lcssa = phi i32 [ %15, %8 ]
  %19 = sub nsw i32 %.lcssa1, %.lcssa
  br i1 %4, label %20, label %33

20:                                               ; preds = %18
  %21 = zext i32 %2 to i64
  br label %22

22:                                               ; preds = %22, %20
  %23 = phi i64 [ 0, %20 ], [ %31, %22 ]
  %24 = getelementptr inbounds i32, ptr %0, i64 %23
  %25 = load i32, ptr %24, align 4, !tbaa !11
  %26 = sub nsw i32 %25, %.lcssa
  %27 = mul nsw i32 %26, 255
  %28 = sdiv i32 %27, %19
  %29 = trunc i32 %28 to i8
  %30 = getelementptr inbounds i8, ptr %1, i64 %23
  store i8 %29, ptr %30, align 1, !tbaa !15
  %31 = add nuw nsw i64 %23, 1
  %32 = icmp eq i64 %31, %21
  br i1 %32, label %33, label %22, !llvm.loop !16

33:                                               ; preds = %22, %18, %3
  ret i32 undef
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nofree nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal void @setup_brightness_lut(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) #9 {
  %4 = tail call noalias dereferenceable_or_null(516) ptr @malloc(i64 noundef 516) #24
  %5 = getelementptr inbounds i8, ptr %4, i64 258
  store ptr %5, ptr %0, align 8, !tbaa !7
  %6 = sitofp i32 %1 to float
  %7 = icmp eq i32 %2, 6
  br label %8

8:                                                ; preds = %8, %3
  %9 = phi i64 [ -256, %3 ], [ %25, %8 ]
  %10 = trunc i64 %9 to i32
  %11 = sitofp i32 %10 to float
  %12 = fdiv float %11, %6
  %13 = fmul float %12, %12
  %14 = fmul float %13, %13
  %15 = select i1 %7, float %14, float 1.000000e+00
  %16 = fneg float %13
  %17 = fmul float %15, %16
  %18 = fpext float %17 to double
  %19 = tail call double @exp(double noundef %18) #25
  %20 = fmul double %19, 1.000000e+02
  %21 = fptrunc double %20 to float
  %22 = fptoui float %21 to i8
  %23 = load ptr, ptr %0, align 8, !tbaa !7
  %24 = getelementptr inbounds i8, ptr %23, i64 %9
  store i8 %22, ptr %24, align 1, !tbaa !15
  %25 = add nsw i64 %9, 1
  %26 = icmp eq i64 %25, 257
  br i1 %26, label %27, label %8, !llvm.loop !17

27:                                               ; preds = %8
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @exp(double noundef) local_unnamed_addr #10

; Function Attrs: nofree nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal i32 @susan_principle(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #11 {
  %7 = mul nsw i32 %5, %4
  %8 = sext i32 %7 to i64
  %9 = shl nsw i64 %8, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %1, i8 0, i64 %9, i1 false)
  %10 = icmp sgt i32 %5, 6
  br i1 %10, label %11, label %335

11:                                               ; preds = %6
  %12 = add nsw i32 %5, -3
  %13 = add i32 %4, -3
  %14 = icmp sgt i32 %4, 6
  %15 = sext i32 %13 to i64
  %16 = add nsw i32 %4, -5
  %17 = sext i32 %16 to i64
  %18 = add nsw i32 %4, -6
  %19 = sext i32 %18 to i64
  %20 = sext i32 %4 to i64
  %21 = zext i32 %12 to i64
  %22 = zext i32 %13 to i64
  br label %23

23:                                               ; preds = %332, %11
  %24 = phi i64 [ 3, %11 ], [ %333, %332 ]
  br i1 %14, label %25, label %332

25:                                               ; preds = %23
  %26 = add nsw i64 %24, -3
  %27 = mul nsw i64 %26, %20
  %28 = getelementptr inbounds i8, ptr %0, i64 %27
  %29 = mul nsw i64 %24, %20
  br label %30

30:                                               ; preds = %329, %25
  %31 = phi i64 [ 3, %25 ], [ %330, %329 ]
  %32 = getelementptr inbounds i8, ptr %28, i64 %31
  %33 = getelementptr inbounds i8, ptr %32, i64 -1
  %34 = add nsw i64 %31, %29
  %35 = getelementptr inbounds i8, ptr %0, i64 %34
  %36 = load i8, ptr %35, align 1, !tbaa !15
  %37 = zext i8 %36 to i64
  %38 = getelementptr inbounds i8, ptr %2, i64 %37
  %39 = load i8, ptr %33, align 1, !tbaa !15
  %40 = zext i8 %39 to i64
  %41 = sub nsw i64 0, %40
  %42 = getelementptr inbounds i8, ptr %38, i64 %41
  %43 = load i8, ptr %42, align 1, !tbaa !15
  %44 = zext i8 %43 to i32
  %45 = add nuw nsw i32 %44, 100
  %46 = getelementptr inbounds i8, ptr %32, i64 1
  %47 = load i8, ptr %32, align 1, !tbaa !15
  %48 = zext i8 %47 to i64
  %49 = sub nsw i64 0, %48
  %50 = getelementptr inbounds i8, ptr %38, i64 %49
  %51 = load i8, ptr %50, align 1, !tbaa !15
  %52 = zext i8 %51 to i32
  %53 = add nuw nsw i32 %45, %52
  %54 = load i8, ptr %46, align 1, !tbaa !15
  %55 = zext i8 %54 to i64
  %56 = sub nsw i64 0, %55
  %57 = getelementptr inbounds i8, ptr %38, i64 %56
  %58 = load i8, ptr %57, align 1, !tbaa !15
  %59 = zext i8 %58 to i32
  %60 = add nuw nsw i32 %53, %59
  %61 = getelementptr inbounds i8, ptr %46, i64 %15
  %62 = getelementptr inbounds i8, ptr %61, i64 1
  %63 = load i8, ptr %61, align 1, !tbaa !15
  %64 = zext i8 %63 to i64
  %65 = sub nsw i64 0, %64
  %66 = getelementptr inbounds i8, ptr %38, i64 %65
  %67 = load i8, ptr %66, align 1, !tbaa !15
  %68 = zext i8 %67 to i32
  %69 = add nuw nsw i32 %60, %68
  %70 = getelementptr inbounds i8, ptr %61, i64 2
  %71 = load i8, ptr %62, align 1, !tbaa !15
  %72 = zext i8 %71 to i64
  %73 = sub nsw i64 0, %72
  %74 = getelementptr inbounds i8, ptr %38, i64 %73
  %75 = load i8, ptr %74, align 1, !tbaa !15
  %76 = zext i8 %75 to i32
  %77 = add nuw nsw i32 %69, %76
  %78 = getelementptr inbounds i8, ptr %61, i64 3
  %79 = load i8, ptr %70, align 1, !tbaa !15
  %80 = zext i8 %79 to i64
  %81 = sub nsw i64 0, %80
  %82 = getelementptr inbounds i8, ptr %38, i64 %81
  %83 = load i8, ptr %82, align 1, !tbaa !15
  %84 = zext i8 %83 to i32
  %85 = add nuw nsw i32 %77, %84
  %86 = getelementptr inbounds i8, ptr %61, i64 4
  %87 = load i8, ptr %78, align 1, !tbaa !15
  %88 = zext i8 %87 to i64
  %89 = sub nsw i64 0, %88
  %90 = getelementptr inbounds i8, ptr %38, i64 %89
  %91 = load i8, ptr %90, align 1, !tbaa !15
  %92 = zext i8 %91 to i32
  %93 = add nuw nsw i32 %85, %92
  %94 = load i8, ptr %86, align 1, !tbaa !15
  %95 = zext i8 %94 to i64
  %96 = sub nsw i64 0, %95
  %97 = getelementptr inbounds i8, ptr %38, i64 %96
  %98 = load i8, ptr %97, align 1, !tbaa !15
  %99 = zext i8 %98 to i32
  %100 = add nuw nsw i32 %93, %99
  %101 = getelementptr inbounds i8, ptr %86, i64 %17
  %102 = getelementptr inbounds i8, ptr %101, i64 1
  %103 = load i8, ptr %101, align 1, !tbaa !15
  %104 = zext i8 %103 to i64
  %105 = sub nsw i64 0, %104
  %106 = getelementptr inbounds i8, ptr %38, i64 %105
  %107 = load i8, ptr %106, align 1, !tbaa !15
  %108 = zext i8 %107 to i32
  %109 = add nuw nsw i32 %100, %108
  %110 = getelementptr inbounds i8, ptr %101, i64 2
  %111 = load i8, ptr %102, align 1, !tbaa !15
  %112 = zext i8 %111 to i64
  %113 = sub nsw i64 0, %112
  %114 = getelementptr inbounds i8, ptr %38, i64 %113
  %115 = load i8, ptr %114, align 1, !tbaa !15
  %116 = zext i8 %115 to i32
  %117 = add nuw nsw i32 %109, %116
  %118 = getelementptr inbounds i8, ptr %101, i64 3
  %119 = load i8, ptr %110, align 1, !tbaa !15
  %120 = zext i8 %119 to i64
  %121 = sub nsw i64 0, %120
  %122 = getelementptr inbounds i8, ptr %38, i64 %121
  %123 = load i8, ptr %122, align 1, !tbaa !15
  %124 = zext i8 %123 to i32
  %125 = add nuw nsw i32 %117, %124
  %126 = getelementptr inbounds i8, ptr %101, i64 4
  %127 = load i8, ptr %118, align 1, !tbaa !15
  %128 = zext i8 %127 to i64
  %129 = sub nsw i64 0, %128
  %130 = getelementptr inbounds i8, ptr %38, i64 %129
  %131 = load i8, ptr %130, align 1, !tbaa !15
  %132 = zext i8 %131 to i32
  %133 = add nuw nsw i32 %125, %132
  %134 = getelementptr inbounds i8, ptr %101, i64 5
  %135 = load i8, ptr %126, align 1, !tbaa !15
  %136 = zext i8 %135 to i64
  %137 = sub nsw i64 0, %136
  %138 = getelementptr inbounds i8, ptr %38, i64 %137
  %139 = load i8, ptr %138, align 1, !tbaa !15
  %140 = zext i8 %139 to i32
  %141 = add nuw nsw i32 %133, %140
  %142 = getelementptr inbounds i8, ptr %101, i64 6
  %143 = load i8, ptr %134, align 1, !tbaa !15
  %144 = zext i8 %143 to i64
  %145 = sub nsw i64 0, %144
  %146 = getelementptr inbounds i8, ptr %38, i64 %145
  %147 = load i8, ptr %146, align 1, !tbaa !15
  %148 = zext i8 %147 to i32
  %149 = add nuw nsw i32 %141, %148
  %150 = load i8, ptr %142, align 1, !tbaa !15
  %151 = zext i8 %150 to i64
  %152 = sub nsw i64 0, %151
  %153 = getelementptr inbounds i8, ptr %38, i64 %152
  %154 = load i8, ptr %153, align 1, !tbaa !15
  %155 = zext i8 %154 to i32
  %156 = add nuw nsw i32 %149, %155
  %157 = getelementptr inbounds i8, ptr %142, i64 %19
  %158 = getelementptr inbounds i8, ptr %157, i64 1
  %159 = load i8, ptr %157, align 1, !tbaa !15
  %160 = zext i8 %159 to i64
  %161 = sub nsw i64 0, %160
  %162 = getelementptr inbounds i8, ptr %38, i64 %161
  %163 = load i8, ptr %162, align 1, !tbaa !15
  %164 = zext i8 %163 to i32
  %165 = add nuw nsw i32 %156, %164
  %166 = getelementptr inbounds i8, ptr %157, i64 2
  %167 = load i8, ptr %158, align 1, !tbaa !15
  %168 = zext i8 %167 to i64
  %169 = sub nsw i64 0, %168
  %170 = getelementptr inbounds i8, ptr %38, i64 %169
  %171 = load i8, ptr %170, align 1, !tbaa !15
  %172 = zext i8 %171 to i32
  %173 = add nuw nsw i32 %165, %172
  %174 = load i8, ptr %166, align 1, !tbaa !15
  %175 = zext i8 %174 to i64
  %176 = sub nsw i64 0, %175
  %177 = getelementptr inbounds i8, ptr %38, i64 %176
  %178 = load i8, ptr %177, align 1, !tbaa !15
  %179 = zext i8 %178 to i32
  %180 = add nuw nsw i32 %173, %179
  %181 = getelementptr inbounds i8, ptr %157, i64 4
  %182 = getelementptr inbounds i8, ptr %157, i64 5
  %183 = load i8, ptr %181, align 1, !tbaa !15
  %184 = zext i8 %183 to i64
  %185 = sub nsw i64 0, %184
  %186 = getelementptr inbounds i8, ptr %38, i64 %185
  %187 = load i8, ptr %186, align 1, !tbaa !15
  %188 = zext i8 %187 to i32
  %189 = add nuw nsw i32 %180, %188
  %190 = getelementptr inbounds i8, ptr %157, i64 6
  %191 = load i8, ptr %182, align 1, !tbaa !15
  %192 = zext i8 %191 to i64
  %193 = sub nsw i64 0, %192
  %194 = getelementptr inbounds i8, ptr %38, i64 %193
  %195 = load i8, ptr %194, align 1, !tbaa !15
  %196 = zext i8 %195 to i32
  %197 = add nuw nsw i32 %189, %196
  %198 = load i8, ptr %190, align 1, !tbaa !15
  %199 = zext i8 %198 to i64
  %200 = sub nsw i64 0, %199
  %201 = getelementptr inbounds i8, ptr %38, i64 %200
  %202 = load i8, ptr %201, align 1, !tbaa !15
  %203 = zext i8 %202 to i32
  %204 = add nuw nsw i32 %197, %203
  %205 = getelementptr inbounds i8, ptr %190, i64 %19
  %206 = getelementptr inbounds i8, ptr %205, i64 1
  %207 = load i8, ptr %205, align 1, !tbaa !15
  %208 = zext i8 %207 to i64
  %209 = sub nsw i64 0, %208
  %210 = getelementptr inbounds i8, ptr %38, i64 %209
  %211 = load i8, ptr %210, align 1, !tbaa !15
  %212 = zext i8 %211 to i32
  %213 = add nuw nsw i32 %204, %212
  %214 = getelementptr inbounds i8, ptr %205, i64 2
  %215 = load i8, ptr %206, align 1, !tbaa !15
  %216 = zext i8 %215 to i64
  %217 = sub nsw i64 0, %216
  %218 = getelementptr inbounds i8, ptr %38, i64 %217
  %219 = load i8, ptr %218, align 1, !tbaa !15
  %220 = zext i8 %219 to i32
  %221 = add nuw nsw i32 %213, %220
  %222 = getelementptr inbounds i8, ptr %205, i64 3
  %223 = load i8, ptr %214, align 1, !tbaa !15
  %224 = zext i8 %223 to i64
  %225 = sub nsw i64 0, %224
  %226 = getelementptr inbounds i8, ptr %38, i64 %225
  %227 = load i8, ptr %226, align 1, !tbaa !15
  %228 = zext i8 %227 to i32
  %229 = add nuw nsw i32 %221, %228
  %230 = getelementptr inbounds i8, ptr %205, i64 4
  %231 = load i8, ptr %222, align 1, !tbaa !15
  %232 = zext i8 %231 to i64
  %233 = sub nsw i64 0, %232
  %234 = getelementptr inbounds i8, ptr %38, i64 %233
  %235 = load i8, ptr %234, align 1, !tbaa !15
  %236 = zext i8 %235 to i32
  %237 = add nuw nsw i32 %229, %236
  %238 = getelementptr inbounds i8, ptr %205, i64 5
  %239 = load i8, ptr %230, align 1, !tbaa !15
  %240 = zext i8 %239 to i64
  %241 = sub nsw i64 0, %240
  %242 = getelementptr inbounds i8, ptr %38, i64 %241
  %243 = load i8, ptr %242, align 1, !tbaa !15
  %244 = zext i8 %243 to i32
  %245 = add nuw nsw i32 %237, %244
  %246 = getelementptr inbounds i8, ptr %205, i64 6
  %247 = load i8, ptr %238, align 1, !tbaa !15
  %248 = zext i8 %247 to i64
  %249 = sub nsw i64 0, %248
  %250 = getelementptr inbounds i8, ptr %38, i64 %249
  %251 = load i8, ptr %250, align 1, !tbaa !15
  %252 = zext i8 %251 to i32
  %253 = add nuw nsw i32 %245, %252
  %254 = load i8, ptr %246, align 1, !tbaa !15
  %255 = zext i8 %254 to i64
  %256 = sub nsw i64 0, %255
  %257 = getelementptr inbounds i8, ptr %38, i64 %256
  %258 = load i8, ptr %257, align 1, !tbaa !15
  %259 = zext i8 %258 to i32
  %260 = add nuw nsw i32 %253, %259
  %261 = getelementptr inbounds i8, ptr %246, i64 %17
  %262 = getelementptr inbounds i8, ptr %261, i64 1
  %263 = load i8, ptr %261, align 1, !tbaa !15
  %264 = zext i8 %263 to i64
  %265 = sub nsw i64 0, %264
  %266 = getelementptr inbounds i8, ptr %38, i64 %265
  %267 = load i8, ptr %266, align 1, !tbaa !15
  %268 = zext i8 %267 to i32
  %269 = add nuw nsw i32 %260, %268
  %270 = getelementptr inbounds i8, ptr %261, i64 2
  %271 = load i8, ptr %262, align 1, !tbaa !15
  %272 = zext i8 %271 to i64
  %273 = sub nsw i64 0, %272
  %274 = getelementptr inbounds i8, ptr %38, i64 %273
  %275 = load i8, ptr %274, align 1, !tbaa !15
  %276 = zext i8 %275 to i32
  %277 = add nuw nsw i32 %269, %276
  %278 = getelementptr inbounds i8, ptr %261, i64 3
  %279 = load i8, ptr %270, align 1, !tbaa !15
  %280 = zext i8 %279 to i64
  %281 = sub nsw i64 0, %280
  %282 = getelementptr inbounds i8, ptr %38, i64 %281
  %283 = load i8, ptr %282, align 1, !tbaa !15
  %284 = zext i8 %283 to i32
  %285 = add nuw nsw i32 %277, %284
  %286 = getelementptr inbounds i8, ptr %261, i64 4
  %287 = load i8, ptr %278, align 1, !tbaa !15
  %288 = zext i8 %287 to i64
  %289 = sub nsw i64 0, %288
  %290 = getelementptr inbounds i8, ptr %38, i64 %289
  %291 = load i8, ptr %290, align 1, !tbaa !15
  %292 = zext i8 %291 to i32
  %293 = add nuw nsw i32 %285, %292
  %294 = load i8, ptr %286, align 1, !tbaa !15
  %295 = zext i8 %294 to i64
  %296 = sub nsw i64 0, %295
  %297 = getelementptr inbounds i8, ptr %38, i64 %296
  %298 = load i8, ptr %297, align 1, !tbaa !15
  %299 = zext i8 %298 to i32
  %300 = add nuw nsw i32 %293, %299
  %301 = getelementptr inbounds i8, ptr %286, i64 %15
  %302 = getelementptr inbounds i8, ptr %301, i64 1
  %303 = load i8, ptr %301, align 1, !tbaa !15
  %304 = zext i8 %303 to i64
  %305 = sub nsw i64 0, %304
  %306 = getelementptr inbounds i8, ptr %38, i64 %305
  %307 = load i8, ptr %306, align 1, !tbaa !15
  %308 = zext i8 %307 to i32
  %309 = add nuw nsw i32 %300, %308
  %310 = getelementptr inbounds i8, ptr %301, i64 2
  %311 = load i8, ptr %302, align 1, !tbaa !15
  %312 = zext i8 %311 to i64
  %313 = sub nsw i64 0, %312
  %314 = getelementptr inbounds i8, ptr %38, i64 %313
  %315 = load i8, ptr %314, align 1, !tbaa !15
  %316 = zext i8 %315 to i32
  %317 = add nuw nsw i32 %309, %316
  %318 = load i8, ptr %310, align 1, !tbaa !15
  %319 = zext i8 %318 to i64
  %320 = sub nsw i64 0, %319
  %321 = getelementptr inbounds i8, ptr %38, i64 %320
  %322 = load i8, ptr %321, align 1, !tbaa !15
  %323 = zext i8 %322 to i32
  %324 = add nuw nsw i32 %317, %323
  %325 = icmp sgt i32 %324, %3
  br i1 %325, label %329, label %326

326:                                              ; preds = %30
  %327 = sub nsw i32 %3, %324
  %328 = getelementptr inbounds i32, ptr %1, i64 %34
  store i32 %327, ptr %328, align 4, !tbaa !11
  br label %329

329:                                              ; preds = %326, %30
  %330 = add nuw nsw i64 %31, 1
  %331 = icmp eq i64 %330, %22
  br i1 %331, label %332, label %30, !llvm.loop !18

332:                                              ; preds = %329, %23
  %333 = add nuw nsw i64 %24, 1
  %334 = icmp eq i64 %333, %21
  br i1 %334, label %335, label %23, !llvm.loop !19

335:                                              ; preds = %332, %6
  ret i32 undef
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #12

; Function Attrs: nofree nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal i32 @susan_principle_small(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2, i32 %3, i32 noundef %4, i32 noundef %5) #11 {
  %7 = mul nsw i32 %5, %4
  %8 = sext i32 %7 to i64
  %9 = shl nsw i64 %8, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %1, i8 0, i64 %9, i1 false)
  %10 = icmp sgt i32 %5, 2
  br i1 %10, label %11, label %108

11:                                               ; preds = %6
  %12 = add nsw i32 %5, -1
  %13 = add i32 %4, -1
  %14 = icmp sgt i32 %4, 2
  %15 = add nsw i32 %4, -2
  %16 = sext i32 %15 to i64
  %17 = sext i32 %4 to i64
  %18 = zext i32 %12 to i64
  %19 = zext i32 %13 to i64
  br label %20

20:                                               ; preds = %105, %11
  %21 = phi i64 [ 1, %11 ], [ %106, %105 ]
  br i1 %14, label %22, label %105

22:                                               ; preds = %20
  %23 = add nsw i64 %21, -1
  %24 = mul nsw i64 %23, %17
  %25 = getelementptr inbounds i8, ptr %0, i64 %24
  %26 = mul nsw i64 %21, %17
  br label %27

27:                                               ; preds = %102, %22
  %28 = phi i64 [ 1, %22 ], [ %103, %102 ]
  %29 = getelementptr inbounds i8, ptr %25, i64 %28
  %30 = getelementptr inbounds i8, ptr %29, i64 -1
  %31 = add nsw i64 %28, %26
  %32 = getelementptr inbounds i8, ptr %0, i64 %31
  %33 = load i8, ptr %32, align 1, !tbaa !15
  %34 = zext i8 %33 to i64
  %35 = getelementptr inbounds i8, ptr %2, i64 %34
  %36 = load i8, ptr %30, align 1, !tbaa !15
  %37 = zext i8 %36 to i64
  %38 = sub nsw i64 0, %37
  %39 = getelementptr inbounds i8, ptr %35, i64 %38
  %40 = load i8, ptr %39, align 1, !tbaa !15
  %41 = zext i8 %40 to i32
  %42 = add nuw nsw i32 %41, 100
  %43 = getelementptr inbounds i8, ptr %29, i64 1
  %44 = load i8, ptr %29, align 1, !tbaa !15
  %45 = zext i8 %44 to i64
  %46 = sub nsw i64 0, %45
  %47 = getelementptr inbounds i8, ptr %35, i64 %46
  %48 = load i8, ptr %47, align 1, !tbaa !15
  %49 = zext i8 %48 to i32
  %50 = add nuw nsw i32 %42, %49
  %51 = load i8, ptr %43, align 1, !tbaa !15
  %52 = zext i8 %51 to i64
  %53 = sub nsw i64 0, %52
  %54 = getelementptr inbounds i8, ptr %35, i64 %53
  %55 = load i8, ptr %54, align 1, !tbaa !15
  %56 = zext i8 %55 to i32
  %57 = add nuw nsw i32 %50, %56
  %58 = getelementptr inbounds i8, ptr %43, i64 %16
  %59 = load i8, ptr %58, align 1, !tbaa !15
  %60 = zext i8 %59 to i64
  %61 = sub nsw i64 0, %60
  %62 = getelementptr inbounds i8, ptr %35, i64 %61
  %63 = load i8, ptr %62, align 1, !tbaa !15
  %64 = zext i8 %63 to i32
  %65 = add nuw nsw i32 %57, %64
  %66 = getelementptr inbounds i8, ptr %58, i64 2
  %67 = load i8, ptr %66, align 1, !tbaa !15
  %68 = zext i8 %67 to i64
  %69 = sub nsw i64 0, %68
  %70 = getelementptr inbounds i8, ptr %35, i64 %69
  %71 = load i8, ptr %70, align 1, !tbaa !15
  %72 = zext i8 %71 to i32
  %73 = add nuw nsw i32 %65, %72
  %74 = getelementptr inbounds i8, ptr %66, i64 %16
  %75 = getelementptr inbounds i8, ptr %74, i64 1
  %76 = load i8, ptr %74, align 1, !tbaa !15
  %77 = zext i8 %76 to i64
  %78 = sub nsw i64 0, %77
  %79 = getelementptr inbounds i8, ptr %35, i64 %78
  %80 = load i8, ptr %79, align 1, !tbaa !15
  %81 = zext i8 %80 to i32
  %82 = add nuw nsw i32 %73, %81
  %83 = getelementptr inbounds i8, ptr %74, i64 2
  %84 = load i8, ptr %75, align 1, !tbaa !15
  %85 = zext i8 %84 to i64
  %86 = sub nsw i64 0, %85
  %87 = getelementptr inbounds i8, ptr %35, i64 %86
  %88 = load i8, ptr %87, align 1, !tbaa !15
  %89 = zext i8 %88 to i32
  %90 = add nuw nsw i32 %82, %89
  %91 = load i8, ptr %83, align 1, !tbaa !15
  %92 = zext i8 %91 to i64
  %93 = sub nsw i64 0, %92
  %94 = getelementptr inbounds i8, ptr %35, i64 %93
  %95 = load i8, ptr %94, align 1, !tbaa !15
  %96 = zext i8 %95 to i32
  %97 = add nuw nsw i32 %90, %96
  %98 = icmp ult i32 %97, 731
  br i1 %98, label %99, label %102

99:                                               ; preds = %27
  %100 = sub nuw nsw i32 730, %97
  %101 = getelementptr inbounds i32, ptr %1, i64 %31
  store i32 %100, ptr %101, align 4, !tbaa !11
  br label %102

102:                                              ; preds = %99, %27
  %103 = add nuw nsw i64 %28, 1
  %104 = icmp eq i64 %103, %19
  br i1 %104, label %105, label %27, !llvm.loop !20

105:                                              ; preds = %102, %20
  %106 = add nuw nsw i64 %21, 1
  %107 = icmp eq i64 %106, %18
  br i1 %107, label %108, label %20, !llvm.loop !21

108:                                              ; preds = %105, %6
  ret i32 undef
}

; Function Attrs: nofree nosync nounwind optsize memory(argmem: read) uwtable
define internal zeroext i8 @median(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #13 {
  %5 = alloca [8 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #21
  %6 = add nsw i32 %1, -1
  %7 = mul nsw i32 %6, %3
  %8 = add nsw i32 %7, %2
  %9 = add nsw i32 %8, -1
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i8, ptr %0, i64 %10
  %12 = load i8, ptr %11, align 1, !tbaa !15
  %13 = zext i8 %12 to i32
  store i32 %13, ptr %5, align 16, !tbaa !11
  %14 = sext i32 %8 to i64
  %15 = getelementptr inbounds i8, ptr %0, i64 %14
  %16 = load i8, ptr %15, align 1, !tbaa !15
  %17 = zext i8 %16 to i32
  %18 = getelementptr inbounds [8 x i32], ptr %5, i64 0, i64 1
  store i32 %17, ptr %18, align 4, !tbaa !11
  %19 = add nsw i32 %8, 1
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8, ptr %0, i64 %20
  %22 = load i8, ptr %21, align 1, !tbaa !15
  %23 = zext i8 %22 to i32
  %24 = getelementptr inbounds [8 x i32], ptr %5, i64 0, i64 2
  store i32 %23, ptr %24, align 8, !tbaa !11
  %25 = mul nsw i32 %3, %1
  %26 = add nsw i32 %25, %2
  %27 = add nsw i32 %26, -1
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8, ptr %0, i64 %28
  %30 = load i8, ptr %29, align 1, !tbaa !15
  %31 = zext i8 %30 to i32
  %32 = getelementptr inbounds [8 x i32], ptr %5, i64 0, i64 3
  store i32 %31, ptr %32, align 4, !tbaa !11
  %33 = add nsw i32 %26, 1
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8, ptr %0, i64 %34
  %36 = load i8, ptr %35, align 1, !tbaa !15
  %37 = zext i8 %36 to i32
  %38 = getelementptr inbounds [8 x i32], ptr %5, i64 0, i64 4
  store i32 %37, ptr %38, align 16, !tbaa !11
  %39 = add nsw i32 %1, 1
  %40 = mul nsw i32 %39, %3
  %41 = add nsw i32 %40, %2
  %42 = add nsw i32 %41, -1
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, ptr %0, i64 %43
  %45 = load i8, ptr %44, align 1, !tbaa !15
  %46 = zext i8 %45 to i32
  %47 = getelementptr inbounds [8 x i32], ptr %5, i64 0, i64 5
  store i32 %46, ptr %47, align 4, !tbaa !11
  %48 = sext i32 %41 to i64
  %49 = getelementptr inbounds i8, ptr %0, i64 %48
  %50 = load i8, ptr %49, align 1, !tbaa !15
  %51 = zext i8 %50 to i32
  %52 = getelementptr inbounds [8 x i32], ptr %5, i64 0, i64 6
  store i32 %51, ptr %52, align 8, !tbaa !11
  %53 = add nsw i32 %41, 1
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8, ptr %0, i64 %54
  %56 = load i8, ptr %55, align 1, !tbaa !15
  %57 = zext i8 %56 to i32
  %58 = getelementptr inbounds [8 x i32], ptr %5, i64 0, i64 7
  store i32 %57, ptr %58, align 4, !tbaa !11
  br label %59

59:                                               ; preds = %75, %4
  %60 = phi i64 [ 7, %4 ], [ %77, %75 ]
  %61 = phi i32 [ 0, %4 ], [ %76, %75 ]
  %62 = load i32, ptr %5, align 16, !tbaa !11
  br label %63

63:                                               ; preds = %72, %59
  %64 = phi i32 [ %62, %59 ], [ %73, %72 ]
  %65 = phi i64 [ 0, %59 ], [ %66, %72 ]
  %66 = add nuw nsw i64 %65, 1
  %67 = getelementptr inbounds [8 x i32], ptr %5, i64 0, i64 %66
  %68 = load i32, ptr %67, align 4, !tbaa !11
  %69 = icmp sgt i32 %64, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %63
  %71 = getelementptr inbounds [8 x i32], ptr %5, i64 0, i64 %65
  store i32 %68, ptr %71, align 4, !tbaa !11
  store i32 %64, ptr %67, align 4, !tbaa !11
  br label %72

72:                                               ; preds = %70, %63
  %73 = phi i32 [ %68, %63 ], [ %64, %70 ]
  %74 = icmp eq i64 %66, %60
  br i1 %74, label %75, label %63, !llvm.loop !22

75:                                               ; preds = %72
  %76 = add nuw nsw i32 %61, 1
  %77 = add nsw i64 %60, -1
  %78 = icmp eq i32 %76, 7
  br i1 %78, label %79, label %59, !llvm.loop !23

79:                                               ; preds = %75
  %80 = load i32, ptr %32, align 4, !tbaa !11
  %81 = load i32, ptr %38, align 16, !tbaa !11
  %82 = add nsw i32 %81, %80
  %83 = sdiv i32 %82, 2
  %84 = trunc i32 %83 to i8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #21
  ret i8 %84
}

; Function Attrs: nofree nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal i32 @enlarge(ptr nocapture noundef %0, ptr noundef %1, ptr nocapture noundef %2, ptr nocapture noundef %3, i32 noundef %4) #14 {
  %6 = load i32, ptr %3, align 4, !tbaa !11
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = shl nsw i32 %4, 1
  %10 = sext i32 %4 to i64
  %11 = getelementptr i8, ptr %1, i64 %10
  br label %18

12:                                               ; preds = %18, %5
  %13 = icmp sgt i32 %4, 0
  br i1 %13, label %14, label %35

14:                                               ; preds = %12
  %15 = shl nuw nsw i32 %4, 1
  %16 = zext i32 %4 to i64
  %17 = getelementptr i8, ptr %1, i64 %16
  br label %41

18:                                               ; preds = %18, %8
  %19 = phi i32 [ 0, %8 ], [ %31, %18 ]
  %20 = add nsw i32 %19, %4
  %21 = load i32, ptr %2, align 4, !tbaa !11
  %22 = add nsw i32 %21, %9
  %23 = mul nsw i32 %22, %20
  %24 = sext i32 %23 to i64
  %25 = getelementptr i8, ptr %11, i64 %24
  %26 = load ptr, ptr %0, align 8, !tbaa !7
  %27 = mul nsw i32 %21, %19
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8, ptr %26, i64 %28
  %30 = sext i32 %21 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %25, ptr align 1 %29, i64 %30, i1 false)
  %31 = add nuw nsw i32 %19, 1
  %32 = load i32, ptr %3, align 4, !tbaa !11
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %18, label %12, !llvm.loop !24

34:                                               ; preds = %41
  br i1 %13, label %37, label %35

35:                                               ; preds = %34, %12
  %36 = shl nsw i32 %4, 1
  br label %110

37:                                               ; preds = %34
  %38 = shl nuw nsw i32 %4, 1
  %39 = load i32, ptr %3, align 4, !tbaa !11
  %40 = sub nsw i32 0, %38
  br label %71

41:                                               ; preds = %41, %14
  %42 = phi i32 [ 0, %14 ], [ %69, %41 ]
  %43 = xor i32 %42, -1
  %44 = add i32 %43, %4
  %45 = load i32, ptr %2, align 4, !tbaa !11
  %46 = add nsw i32 %45, %15
  %47 = mul nsw i32 %46, %44
  %48 = sext i32 %47 to i64
  %49 = getelementptr i8, ptr %17, i64 %48
  %50 = load ptr, ptr %0, align 8, !tbaa !7
  %51 = mul nsw i32 %45, %42
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8, ptr %50, i64 %52
  %54 = sext i32 %45 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %49, ptr align 1 %53, i64 %54, i1 false)
  %55 = load i32, ptr %3, align 4, !tbaa !11
  %56 = add i32 %42, %4
  %57 = add i32 %56, %55
  %58 = load i32, ptr %2, align 4, !tbaa !11
  %59 = add nsw i32 %58, %15
  %60 = mul nsw i32 %57, %59
  %61 = sext i32 %60 to i64
  %62 = getelementptr i8, ptr %17, i64 %61
  %63 = load ptr, ptr %0, align 8, !tbaa !7
  %64 = add i32 %55, %43
  %65 = mul nsw i32 %64, %58
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8, ptr %63, i64 %66
  %68 = sext i32 %58 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %62, ptr align 1 %67, i64 %68, i1 false)
  %69 = add nuw nsw i32 %42, 1
  %70 = icmp eq i32 %69, %4
  br i1 %70, label %34, label %41, !llvm.loop !25

71:                                               ; preds = %106, %37
  %72 = phi i32 [ %39, %37 ], [ %107, %106 ]
  %73 = phi i32 [ 0, %37 ], [ %108, %106 ]
  %74 = icmp sgt i32 %72, %40
  br i1 %74, label %75, label %106

75:                                               ; preds = %71
  %76 = xor i32 %73, -1
  br label %77

77:                                               ; preds = %77, %75
  %78 = phi i32 [ 0, %75 ], [ %102, %77 ]
  %79 = load i32, ptr %2, align 4, !tbaa !11
  %80 = add nsw i32 %79, %38
  %81 = mul nsw i32 %80, %78
  %82 = add nsw i32 %81, %4
  %83 = add nsw i32 %82, %73
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8, ptr %1, i64 %84
  %86 = load i8, ptr %85, align 1, !tbaa !15
  %87 = add i32 %82, %76
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i8, ptr %1, i64 %88
  store i8 %86, ptr %89, align 1, !tbaa !15
  %90 = load i32, ptr %2, align 4, !tbaa !11
  %91 = add nsw i32 %90, %38
  %92 = mul nsw i32 %91, %78
  %93 = add i32 %90, %4
  %94 = add i32 %93, %92
  %95 = add i32 %94, %76
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i8, ptr %1, i64 %96
  %98 = load i8, ptr %97, align 1, !tbaa !15
  %99 = add nsw i32 %94, %73
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i8, ptr %1, i64 %100
  store i8 %98, ptr %101, align 1, !tbaa !15
  %102 = add nuw nsw i32 %78, 1
  %103 = load i32, ptr %3, align 4, !tbaa !11
  %104 = add nsw i32 %103, %38
  %105 = icmp slt i32 %102, %104
  br i1 %105, label %77, label %106, !llvm.loop !26

106:                                              ; preds = %77, %71
  %107 = phi i32 [ %72, %71 ], [ %103, %77 ]
  %108 = add nuw nsw i32 %73, 1
  %109 = icmp eq i32 %108, %4
  br i1 %109, label %110, label %71, !llvm.loop !27

110:                                              ; preds = %106, %35
  %111 = phi i32 [ %36, %35 ], [ %38, %106 ]
  %112 = load i32, ptr %2, align 4, !tbaa !11
  %113 = add nsw i32 %112, %111
  store i32 %113, ptr %2, align 4, !tbaa !11
  %114 = load i32, ptr %3, align 4, !tbaa !11
  %115 = add nsw i32 %114, %111
  store i32 %115, ptr %3, align 4, !tbaa !11
  store ptr %1, ptr %0, align 8, !tbaa !7
  ret i32 undef
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #15

; Function Attrs: nounwind optsize uwtable
define internal void @susan_smoothing(i32 noundef %0, ptr noundef %1, double noundef %2, i32 noundef %3, i32 noundef %4, ptr nocapture noundef readonly %5) #3 {
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = fptrunc double %2 to float
  store ptr %1, ptr %7, align 8, !tbaa !7
  store i32 %3, ptr %8, align 4, !tbaa !11
  store i32 %4, ptr %9, align 4, !tbaa !11
  %11 = icmp eq i32 %0, 0
  %12 = fpext float %10 to double
  %13 = fmul double %12, 1.500000e+00
  %14 = fptosi double %13 to i32
  %15 = add nsw i32 %14, 1
  %16 = select i1 %11, i32 %15, i32 1
  %17 = fcmp ogt float %10, 1.500000e+01
  br i1 %17, label %18, label %22

18:                                               ; preds = %6
  %19 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.25, double noundef %12) #22
  %20 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.44)
  %21 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.45)
  tail call void @exit(i32 noundef 0) #20
  unreachable

22:                                               ; preds = %6
  %23 = shl nsw i32 %16, 1
  %24 = or i32 %23, 1
  %25 = icmp sgt i32 %24, %3
  %26 = icmp sgt i32 %24, %4
  %27 = or i1 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.28, i32 noundef %16, i32 noundef %3, i32 noundef %4) #22
  tail call void @exit(i32 noundef 0) #20
  unreachable

30:                                               ; preds = %22
  %31 = add nsw i32 %23, %3
  %32 = add nsw i32 %23, %4
  %33 = mul nsw i32 %31, %32
  %34 = sext i32 %33 to i64
  %35 = tail call noalias ptr @malloc(i64 noundef %34) #24
  %36 = call i32 @enlarge(ptr noundef nonnull %7, ptr noundef %35, ptr noundef nonnull %8, ptr noundef nonnull %9, i32 noundef %16) #22
  br i1 %11, label %42, label %37

37:                                               ; preds = %30
  %38 = load i32, ptr %9, align 4, !tbaa !11
  %39 = icmp sgt i32 %38, 2
  br i1 %39, label %40, label %330

40:                                               ; preds = %37
  %41 = load i32, ptr %8, align 4, !tbaa !11
  br label %180

42:                                               ; preds = %30
  %43 = load i32, ptr %8, align 4, !tbaa !11
  %44 = sub nsw i32 %43, %24
  %45 = mul nsw i32 %24, %24
  %46 = zext i32 %45 to i64
  %47 = tail call noalias ptr @malloc(i64 noundef %46) #24
  %48 = fneg float %10
  %49 = fmul float %48, %10
  %50 = xor i32 %14, -1
  %51 = icmp slt i32 %15, %50
  br i1 %51, label %56, label %52

52:                                               ; preds = %84, %42
  %53 = phi ptr [ %.lcssa4, %84 ], [ %47, %42 ]
  %54 = phi i32 [ %85, %84 ], [ %50, %42 ]
  %55 = mul nsw i32 %54, %54
  br label %69

56:                                               ; preds = %84, %42
  %57 = load i32, ptr %9, align 4, !tbaa !11
  %58 = sub nsw i32 %57, %16
  %59 = icmp slt i32 %16, %58
  br i1 %59, label %60, label %330

60:                                               ; preds = %56
  %61 = sext i32 %16 to i64
  %62 = sub nsw i64 0, %61
  %63 = sext i32 %44 to i64
  %64 = add i32 %16, %14
  %65 = add i32 %64, 1
  %66 = zext i32 %65 to i64
  %67 = add nuw nsw i64 %66, 1
  %68 = load i32, ptr %8, align 4, !tbaa !11
  br label %87

69:                                               ; preds = %69, %52
  %70 = phi ptr [ %53, %52 ], [ %81, %69 ]
  %71 = phi i32 [ %50, %52 ], [ %82, %69 ]
  %72 = mul nsw i32 %71, %71
  %73 = add nuw nsw i32 %72, %55
  %74 = sitofp i32 %73 to float
  %75 = fdiv float %74, %49
  %76 = fpext float %75 to double
  %77 = tail call double @exp(double noundef %76) #25
  %78 = fmul double %77, 1.000000e+02
  %79 = fptosi double %78 to i32
  %80 = trunc i32 %79 to i8
  %81 = getelementptr inbounds i8, ptr %70, i64 1
  store i8 %80, ptr %70, align 1, !tbaa !15
  %82 = add i32 %71, 1
  %83 = icmp eq i32 %71, %16
  br i1 %83, label %84, label %69, !llvm.loop !28

84:                                               ; preds = %69
  %.lcssa4 = phi ptr [ %81, %69 ]
  %85 = add i32 %54, 1
  %86 = icmp eq i32 %54, %16
  br i1 %86, label %56, label %52, !llvm.loop !29

87:                                               ; preds = %173, %60
  %88 = phi i32 [ %57, %60 ], [ %174, %173 ]
  %89 = phi i32 [ %68, %60 ], [ %175, %173 ]
  %90 = phi ptr [ %1, %60 ], [ %176, %173 ]
  %91 = phi i32 [ %16, %60 ], [ %177, %173 ]
  %92 = sub nsw i32 %89, %16
  %93 = icmp slt i32 %16, %92
  br i1 %93, label %94, label %173

94:                                               ; preds = %87
  %95 = sub nsw i32 %91, %16
  br label %96

96:                                               ; preds = %163, %94
  %97 = phi i64 [ %61, %94 ], [ %166, %163 ]
  %98 = phi i32 [ %89, %94 ], [ %167, %163 ]
  %99 = phi ptr [ %90, %94 ], [ %165, %163 ]
  %100 = load ptr, ptr %7, align 8, !tbaa !7
  %101 = mul nsw i32 %98, %91
  %102 = sext i32 %101 to i64
  %103 = add nsw i64 %97, %102
  %104 = getelementptr inbounds i8, ptr %100, i64 %103
  %105 = load i8, ptr %104, align 1, !tbaa !15
  %106 = zext i8 %105 to i32
  %107 = zext i8 %105 to i64
  %108 = getelementptr inbounds i8, ptr %5, i64 %107
  br i1 %51, label %156, label %109

109:                                              ; preds = %96
  %110 = mul nsw i32 %98, %95
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i8, ptr %100, i64 %111
  %113 = getelementptr inbounds i8, ptr %112, i64 %97
  %114 = getelementptr inbounds i8, ptr %113, i64 %62
  br label %115

115:                                              ; preds = %145, %109
  %116 = phi i32 [ %.lcssa, %145 ], [ 0, %109 ]
  %117 = phi ptr [ %146, %145 ], [ %47, %109 ]
  %118 = phi ptr [ %147, %145 ], [ %114, %109 ]
  %119 = phi i32 [ %.lcssa1, %145 ], [ 0, %109 ]
  %120 = phi i32 [ %148, %145 ], [ %50, %109 ]
  %121 = getelementptr i8, ptr %118, i64 %67
  br label %122

122:                                              ; preds = %122, %115
  %123 = phi i32 [ %116, %115 ], [ %142, %122 ]
  %124 = phi ptr [ %117, %115 ], [ %131, %122 ]
  %125 = phi ptr [ %118, %115 ], [ %128, %122 ]
  %126 = phi i32 [ %119, %115 ], [ %140, %122 ]
  %127 = phi i32 [ %50, %115 ], [ %143, %122 ]
  %128 = getelementptr inbounds i8, ptr %125, i64 1
  %129 = load i8, ptr %125, align 1, !tbaa !15
  %130 = zext i8 %129 to i32
  %131 = getelementptr inbounds i8, ptr %124, i64 1
  %132 = load i8, ptr %124, align 1, !tbaa !15
  %133 = zext i8 %132 to i32
  %134 = zext i8 %129 to i64
  %135 = sub nsw i64 0, %134
  %136 = getelementptr inbounds i8, ptr %108, i64 %135
  %137 = load i8, ptr %136, align 1, !tbaa !15
  %138 = zext i8 %137 to i32
  %139 = mul nuw nsw i32 %138, %133
  %140 = add nsw i32 %139, %126
  %141 = mul nuw nsw i32 %139, %130
  %142 = add nsw i32 %141, %123
  %143 = add i32 %127, 1
  %144 = icmp eq i32 %127, %16
  br i1 %144, label %145, label %122, !llvm.loop !30

145:                                              ; preds = %122
  %.lcssa1 = phi i32 [ %140, %122 ]
  %.lcssa = phi i32 [ %142, %122 ]
  %146 = getelementptr i8, ptr %117, i64 %67
  %147 = getelementptr inbounds i8, ptr %121, i64 %63
  %148 = add i32 %120, 1
  %149 = icmp eq i32 %120, %16
  br i1 %149, label %150, label %115, !llvm.loop !31

150:                                              ; preds = %145
  %.lcssa1.lcssa = phi i32 [ %.lcssa1, %145 ]
  %.lcssa.lcssa = phi i32 [ %.lcssa, %145 ]
  %151 = add nsw i32 %.lcssa1.lcssa, -10000
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %156

153:                                              ; preds = %150
  %154 = trunc i64 %97 to i32
  %155 = tail call zeroext i8 @median(ptr noundef %100, i32 noundef %91, i32 noundef %154, i32 noundef %98) #22
  br label %163

156:                                              ; preds = %150, %96
  %157 = phi i32 [ %151, %150 ], [ -10000, %96 ]
  %158 = phi i32 [ %.lcssa.lcssa, %150 ], [ 0, %96 ]
  %159 = mul nsw i32 %106, -10000
  %160 = add i32 %158, %159
  %161 = sdiv i32 %160, %157
  %162 = trunc i32 %161 to i8
  br label %163

163:                                              ; preds = %156, %153
  %164 = phi i8 [ %162, %156 ], [ %155, %153 ]
  %165 = getelementptr inbounds i8, ptr %99, i64 1
  store i8 %164, ptr %99, align 1, !tbaa !15
  %166 = add nsw i64 %97, 1
  %167 = load i32, ptr %8, align 4, !tbaa !11
  %168 = sub nsw i32 %167, %16
  %169 = sext i32 %168 to i64
  %170 = icmp slt i64 %166, %169
  br i1 %170, label %96, label %171, !llvm.loop !32

171:                                              ; preds = %163
  %.lcssa3 = phi ptr [ %165, %163 ]
  %.lcssa2 = phi i32 [ %167, %163 ]
  %172 = load i32, ptr %9, align 4, !tbaa !11
  br label %173

173:                                              ; preds = %171, %87
  %174 = phi i32 [ %88, %87 ], [ %172, %171 ]
  %175 = phi i32 [ %89, %87 ], [ %.lcssa2, %171 ]
  %176 = phi ptr [ %90, %87 ], [ %.lcssa3, %171 ]
  %177 = add nsw i32 %91, 1
  %178 = sub nsw i32 %174, %16
  %179 = icmp slt i32 %177, %178
  br i1 %179, label %87, label %330, !llvm.loop !33

180:                                              ; preds = %323, %40
  %181 = phi i32 [ %324, %323 ], [ %38, %40 ]
  %182 = phi i32 [ %325, %323 ], [ %41, %40 ]
  %183 = phi ptr [ %326, %323 ], [ %1, %40 ]
  %184 = phi i32 [ %327, %323 ], [ 1, %40 ]
  %185 = icmp sgt i32 %182, 2
  br i1 %185, label %186, label %323

186:                                              ; preds = %180
  %187 = add nsw i32 %184, -1
  br label %188

188:                                              ; preds = %313, %186
  %189 = phi i64 [ 1, %186 ], [ %316, %313 ]
  %190 = phi i32 [ %182, %186 ], [ %317, %313 ]
  %191 = phi ptr [ %183, %186 ], [ %315, %313 ]
  %192 = load ptr, ptr %7, align 8, !tbaa !7
  %193 = mul nsw i32 %190, %187
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i8, ptr %192, i64 %194
  %196 = getelementptr inbounds i8, ptr %195, i64 %189
  %197 = getelementptr inbounds i8, ptr %196, i64 -1
  %198 = mul nsw i32 %190, %184
  %199 = trunc i64 %189 to i32
  %200 = add nsw i32 %198, %199
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i8, ptr %192, i64 %201
  %203 = load i8, ptr %202, align 1, !tbaa !15
  %204 = zext i8 %203 to i64
  %205 = getelementptr inbounds i8, ptr %5, i64 %204
  %206 = load i8, ptr %197, align 1, !tbaa !15
  %207 = zext i8 %206 to i64
  %208 = sub nsw i64 0, %207
  %209 = getelementptr inbounds i8, ptr %205, i64 %208
  %210 = load i8, ptr %209, align 1, !tbaa !15
  %211 = zext i8 %210 to i32
  %212 = getelementptr inbounds i8, ptr %196, i64 1
  %213 = load i8, ptr %196, align 1, !tbaa !15
  %214 = zext i8 %213 to i64
  %215 = sub nsw i64 0, %214
  %216 = getelementptr inbounds i8, ptr %205, i64 %215
  %217 = load i8, ptr %216, align 1, !tbaa !15
  %218 = zext i8 %217 to i32
  %219 = load i8, ptr %212, align 1, !tbaa !15
  %220 = zext i8 %219 to i64
  %221 = sub nsw i64 0, %220
  %222 = getelementptr inbounds i8, ptr %205, i64 %221
  %223 = load i8, ptr %222, align 1, !tbaa !15
  %224 = zext i8 %223 to i32
  %225 = add nsw i32 %190, -2
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds i8, ptr %212, i64 %226
  %228 = getelementptr inbounds i8, ptr %227, i64 1
  %229 = load i8, ptr %227, align 1, !tbaa !15
  %230 = zext i8 %229 to i64
  %231 = sub nsw i64 0, %230
  %232 = getelementptr inbounds i8, ptr %205, i64 %231
  %233 = load i8, ptr %232, align 1, !tbaa !15
  %234 = zext i8 %233 to i32
  %235 = getelementptr inbounds i8, ptr %227, i64 2
  %236 = load i8, ptr %228, align 1, !tbaa !15
  %237 = zext i8 %236 to i64
  %238 = sub nsw i64 0, %237
  %239 = getelementptr inbounds i8, ptr %205, i64 %238
  %240 = load i8, ptr %239, align 1, !tbaa !15
  %241 = zext i8 %240 to i32
  %242 = load i8, ptr %235, align 1, !tbaa !15
  %243 = zext i8 %242 to i64
  %244 = sub nsw i64 0, %243
  %245 = getelementptr inbounds i8, ptr %205, i64 %244
  %246 = load i8, ptr %245, align 1, !tbaa !15
  %247 = zext i8 %246 to i32
  %248 = getelementptr inbounds i8, ptr %235, i64 %226
  %249 = getelementptr inbounds i8, ptr %248, i64 1
  %250 = load i8, ptr %248, align 1, !tbaa !15
  %251 = zext i8 %250 to i64
  %252 = sub nsw i64 0, %251
  %253 = getelementptr inbounds i8, ptr %205, i64 %252
  %254 = load i8, ptr %253, align 1, !tbaa !15
  %255 = zext i8 %254 to i32
  %256 = getelementptr inbounds i8, ptr %248, i64 2
  %257 = load i8, ptr %249, align 1, !tbaa !15
  %258 = zext i8 %257 to i64
  %259 = sub nsw i64 0, %258
  %260 = getelementptr inbounds i8, ptr %205, i64 %259
  %261 = load i8, ptr %260, align 1, !tbaa !15
  %262 = zext i8 %261 to i32
  %263 = load i8, ptr %256, align 1, !tbaa !15
  %264 = zext i8 %263 to i64
  %265 = sub nsw i64 0, %264
  %266 = getelementptr inbounds i8, ptr %205, i64 %265
  %267 = load i8, ptr %266, align 1, !tbaa !15
  %268 = zext i8 %267 to i32
  %269 = add nsw i32 %211, -100
  %270 = add nsw i32 %269, %218
  %271 = add nsw i32 %270, %224
  %272 = add nsw i32 %271, %234
  %273 = add nsw i32 %272, %241
  %274 = add nsw i32 %273, %247
  %275 = add nsw i32 %274, %255
  %276 = add nsw i32 %275, %262
  %277 = add nsw i32 %276, %268
  %278 = icmp eq i32 %277, 0
  br i1 %278, label %279, label %281

279:                                              ; preds = %188
  %280 = tail call zeroext i8 @median(ptr noundef nonnull %192, i32 noundef %184, i32 noundef %199, i32 noundef %190) #22
  br label %313

281:                                              ; preds = %188
  %282 = zext i8 %206 to i32
  %283 = mul nuw nsw i32 %211, %282
  %284 = zext i8 %213 to i32
  %285 = mul nuw nsw i32 %218, %284
  %286 = zext i8 %219 to i32
  %287 = mul nuw nsw i32 %224, %286
  %288 = zext i8 %229 to i32
  %289 = mul nuw nsw i32 %234, %288
  %290 = zext i8 %236 to i32
  %291 = mul nuw nsw i32 %241, %290
  %292 = zext i8 %242 to i32
  %293 = mul nuw nsw i32 %247, %292
  %294 = zext i8 %250 to i32
  %295 = mul nuw nsw i32 %255, %294
  %296 = zext i8 %257 to i32
  %297 = mul nuw nsw i32 %262, %296
  %298 = zext i8 %263 to i32
  %299 = mul nuw nsw i32 %268, %298
  %300 = zext i8 %203 to i32
  %301 = mul nsw i32 %300, -100
  %302 = add nsw i32 %283, %301
  %303 = add nsw i32 %302, %285
  %304 = add nsw i32 %303, %287
  %305 = add nsw i32 %304, %289
  %306 = add nsw i32 %305, %291
  %307 = add nsw i32 %306, %293
  %308 = add nsw i32 %307, %295
  %309 = add nsw i32 %308, %297
  %310 = add nsw i32 %309, %299
  %311 = sdiv i32 %310, %277
  %312 = trunc i32 %311 to i8
  br label %313

313:                                              ; preds = %281, %279
  %314 = phi i8 [ %312, %281 ], [ %280, %279 ]
  %315 = getelementptr inbounds i8, ptr %191, i64 1
  store i8 %314, ptr %191, align 1, !tbaa !15
  %316 = add nuw nsw i64 %189, 1
  %317 = load i32, ptr %8, align 4, !tbaa !11
  %318 = add nsw i32 %317, -1
  %319 = sext i32 %318 to i64
  %320 = icmp slt i64 %316, %319
  br i1 %320, label %188, label %321, !llvm.loop !34

321:                                              ; preds = %313
  %.lcssa6 = phi ptr [ %315, %313 ]
  %.lcssa5 = phi i32 [ %317, %313 ]
  %322 = load i32, ptr %9, align 4, !tbaa !11
  br label %323

323:                                              ; preds = %321, %180
  %324 = phi i32 [ %181, %180 ], [ %322, %321 ]
  %325 = phi i32 [ %182, %180 ], [ %.lcssa5, %321 ]
  %326 = phi ptr [ %183, %180 ], [ %.lcssa6, %321 ]
  %327 = add nuw nsw i32 %184, 1
  %328 = add nsw i32 %324, -1
  %329 = icmp slt i32 %327, %328
  br i1 %329, label %180, label %330, !llvm.loop !35

330:                                              ; preds = %323, %173, %56, %37
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nofree norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal i32 @edge_draw(ptr nocapture noundef writeonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #16 {
  %6 = icmp eq i32 %4, 0
  %7 = mul nsw i32 %3, %2
  br i1 %6, label %8, label %37

8:                                                ; preds = %5
  %9 = icmp sgt i32 %7, 0
  br i1 %9, label %10, label %54

10:                                               ; preds = %8
  %11 = ptrtoint ptr %1 to i64
  %12 = sext i32 %2 to i64
  %13 = sub nsw i64 0, %12
  %14 = getelementptr i8, ptr %0, i64 %13
  %15 = add nsw i32 %2, -2
  %16 = sext i32 %15 to i64
  br label %17

17:                                               ; preds = %33, %10
  %18 = phi ptr [ %1, %10 ], [ %34, %33 ]
  %19 = phi i32 [ 0, %10 ], [ %35, %33 ]
  %20 = load i8, ptr %18, align 1, !tbaa !15
  %21 = icmp ult i8 %20, 8
  br i1 %21, label %22, label %33

22:                                               ; preds = %17
  %23 = ptrtoint ptr %18 to i64
  %24 = sub i64 %23, %11
  %25 = getelementptr i8, ptr %14, i64 %24
  %26 = getelementptr inbounds i8, ptr %25, i64 -1
  store i8 -1, ptr %26, align 1, !tbaa !15
  %27 = getelementptr inbounds i8, ptr %25, i64 1
  store i8 -1, ptr %25, align 1, !tbaa !15
  store i8 -1, ptr %27, align 1, !tbaa !15
  %28 = getelementptr inbounds i8, ptr %27, i64 %16
  store i8 -1, ptr %28, align 1, !tbaa !15
  %29 = getelementptr inbounds i8, ptr %28, i64 2
  store i8 -1, ptr %29, align 1, !tbaa !15
  %30 = getelementptr inbounds i8, ptr %29, i64 %16
  %31 = getelementptr inbounds i8, ptr %30, i64 1
  store i8 -1, ptr %30, align 1, !tbaa !15
  %32 = getelementptr inbounds i8, ptr %30, i64 2
  store i8 -1, ptr %31, align 1, !tbaa !15
  store i8 -1, ptr %32, align 1, !tbaa !15
  br label %33

33:                                               ; preds = %22, %17
  %34 = getelementptr inbounds i8, ptr %18, i64 1
  %35 = add nuw nsw i32 %19, 1
  %36 = icmp eq i32 %35, %7
  br i1 %36, label %37, label %17, !llvm.loop !36

37:                                               ; preds = %33, %5
  %38 = icmp sgt i32 %7, 0
  br i1 %38, label %39, label %54

39:                                               ; preds = %37
  %40 = ptrtoint ptr %1 to i64
  br label %41

41:                                               ; preds = %50, %39
  %42 = phi ptr [ %1, %39 ], [ %51, %50 ]
  %43 = phi i32 [ 0, %39 ], [ %52, %50 ]
  %44 = load i8, ptr %42, align 1, !tbaa !15
  %45 = icmp ult i8 %44, 8
  br i1 %45, label %46, label %50

46:                                               ; preds = %41
  %47 = ptrtoint ptr %42 to i64
  %48 = sub i64 %47, %40
  %49 = getelementptr inbounds i8, ptr %0, i64 %48
  store i8 0, ptr %49, align 1, !tbaa !15
  br label %50

50:                                               ; preds = %46, %41
  %51 = getelementptr inbounds i8, ptr %42, i64 1
  %52 = add nuw nsw i32 %43, 1
  %53 = icmp eq i32 %52, %7
  br i1 %53, label %54, label %41, !llvm.loop !37

54:                                               ; preds = %50, %37, %8
  ret i32 undef
}

; Function Attrs: nofree nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal i32 @susan_thin(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #7 {
  %5 = alloca [9 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %5) #21
  %6 = add nsw i32 %3, -4
  %7 = icmp sgt i32 %3, 8
  br i1 %7, label %8, label %566

8:                                                ; preds = %4
  %9 = add nsw i32 %2, -4
  %10 = icmp sgt i32 %2, 8
  %11 = sext i32 %2 to i64
  %12 = getelementptr inbounds [9 x i32], ptr %5, i64 0, i64 1
  %13 = getelementptr inbounds [9 x i32], ptr %5, i64 0, i64 2
  %14 = getelementptr inbounds [9 x i32], ptr %5, i64 0, i64 3
  %15 = getelementptr inbounds [9 x i32], ptr %5, i64 0, i64 4
  %16 = getelementptr inbounds [9 x i32], ptr %5, i64 0, i64 5
  %17 = getelementptr inbounds [9 x i32], ptr %5, i64 0, i64 6
  %18 = getelementptr inbounds [9 x i32], ptr %5, i64 0, i64 7
  %19 = getelementptr inbounds [9 x i32], ptr %5, i64 0, i64 8
  br label %20

20:                                               ; preds = %560, %8
  %21 = phi i32 [ 4, %8 ], [ %564, %560 ]
  %22 = phi i32 [ undef, %8 ], [ %562, %560 ]
  %23 = phi i32 [ undef, %8 ], [ %561, %560 ]
  br i1 %10, label %24, label %560

24:                                               ; preds = %553, %20
  %25 = phi i32 [ %558, %553 ], [ 4, %20 ]
  %26 = phi i32 [ %556, %553 ], [ %21, %20 ]
  %27 = phi i32 [ %555, %553 ], [ %22, %20 ]
  %28 = phi i32 [ %554, %553 ], [ %23, %20 ]
  %29 = mul nsw i32 %26, %2
  %30 = add nsw i32 %29, %25
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, ptr %1, i64 %31
  %33 = load i8, ptr %32, align 1, !tbaa !15
  %34 = icmp ult i8 %33, 8
  br i1 %34, label %35, label %553

35:                                               ; preds = %24
  %36 = getelementptr inbounds i32, ptr %0, i64 %31
  %37 = load i32, ptr %36, align 4, !tbaa !11
  %38 = add i32 %26, -1
  %39 = mul nsw i32 %38, %2
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, ptr %1, i64 %40
  %42 = sext i32 %25 to i64
  %43 = getelementptr inbounds i8, ptr %41, i64 %42
  %44 = getelementptr inbounds i8, ptr %43, i64 -1
  %45 = load i8, ptr %44, align 1, !tbaa !15
  %46 = icmp ult i8 %45, 8
  %47 = zext i1 %46 to i32
  %48 = load i8, ptr %43, align 1, !tbaa !15
  %49 = icmp ult i8 %48, 8
  %50 = zext i1 %49 to i32
  %51 = add nuw nsw i32 %50, %47
  %52 = getelementptr inbounds i8, ptr %43, i64 1
  %53 = load i8, ptr %52, align 1, !tbaa !15
  %54 = icmp ult i8 %53, 8
  %55 = zext i1 %54 to i32
  %56 = add nuw nsw i32 %51, %55
  %57 = getelementptr inbounds i8, ptr %44, i64 %11
  %58 = load i8, ptr %57, align 1, !tbaa !15
  %59 = icmp ult i8 %58, 8
  %60 = zext i1 %59 to i32
  %61 = add nuw nsw i32 %56, %60
  %62 = getelementptr inbounds i8, ptr %57, i64 2
  %63 = load i8, ptr %62, align 1, !tbaa !15
  %64 = icmp ult i8 %63, 8
  %65 = zext i1 %64 to i32
  %66 = add nuw nsw i32 %61, %65
  %67 = getelementptr inbounds i8, ptr %57, i64 %11
  %68 = load i8, ptr %67, align 1, !tbaa !15
  %69 = icmp ult i8 %68, 8
  %70 = zext i1 %69 to i32
  %71 = add nuw nsw i32 %66, %70
  %72 = getelementptr inbounds i8, ptr %67, i64 1
  %73 = load i8, ptr %72, align 1, !tbaa !15
  %74 = icmp ult i8 %73, 8
  %75 = zext i1 %74 to i32
  %76 = add nuw nsw i32 %71, %75
  %77 = getelementptr inbounds i8, ptr %67, i64 2
  %78 = load i8, ptr %77, align 1, !tbaa !15
  %79 = icmp ult i8 %78, 8
  %80 = zext i1 %79 to i32
  %81 = add nuw nsw i32 %76, %80
  switch i32 %81, label %247 [
    i32 0, label %82
    i32 1, label %83
  ]

82:                                               ; preds = %35
  store i8 100, ptr %32, align 1, !tbaa !15
  br label %553

83:                                               ; preds = %35
  %84 = icmp ult i8 %33, 6
  br i1 %84, label %85, label %553

85:                                               ; preds = %83
  %86 = add nsw i32 %39, %25
  %87 = add nsw i32 %86, -1
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, ptr %0, i64 %88
  %90 = load i32, ptr %89, align 4, !tbaa !11
  store i32 %90, ptr %5, align 16, !tbaa !11
  %91 = sext i32 %86 to i64
  %92 = getelementptr inbounds i32, ptr %0, i64 %91
  %93 = load i32, ptr %92, align 4, !tbaa !11
  store i32 %93, ptr %12, align 4, !tbaa !11
  %94 = add nsw i32 %86, 1
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, ptr %0, i64 %95
  %97 = load i32, ptr %96, align 4, !tbaa !11
  store i32 %97, ptr %13, align 8, !tbaa !11
  %98 = add nsw i32 %30, -1
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, ptr %0, i64 %99
  %101 = load i32, ptr %100, align 4, !tbaa !11
  store i32 %101, ptr %14, align 4, !tbaa !11
  store i32 0, ptr %15, align 16, !tbaa !11
  %102 = add nsw i32 %30, 1
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, ptr %0, i64 %103
  %105 = load i32, ptr %104, align 4, !tbaa !11
  store i32 %105, ptr %16, align 4, !tbaa !11
  %106 = add nsw i32 %26, 1
  %107 = mul nsw i32 %106, %2
  %108 = add nsw i32 %107, %25
  %109 = add nsw i32 %108, -1
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, ptr %0, i64 %110
  %112 = load i32, ptr %111, align 4, !tbaa !11
  store i32 %112, ptr %17, align 8, !tbaa !11
  %113 = sext i32 %108 to i64
  %114 = getelementptr inbounds i32, ptr %0, i64 %113
  %115 = load i32, ptr %114, align 4, !tbaa !11
  store i32 %115, ptr %18, align 4, !tbaa !11
  %116 = add nsw i32 %108, 1
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, ptr %0, i64 %117
  %119 = load i32, ptr %118, align 4, !tbaa !11
  store i32 %119, ptr %19, align 16, !tbaa !11
  %120 = getelementptr inbounds i8, ptr %1, i64 %88
  %121 = load i8, ptr %120, align 1, !tbaa !15
  %122 = icmp ult i8 %121, 8
  br i1 %122, label %123, label %129

123:                                              ; preds = %85
  store i32 0, ptr %5, align 16, !tbaa !11
  store i32 0, ptr %12, align 4, !tbaa !11
  store i32 0, ptr %14, align 4, !tbaa !11
  %124 = shl nsw i32 %97, 1
  store i32 %124, ptr %13, align 8, !tbaa !11
  %125 = shl nsw i32 %112, 1
  store i32 %125, ptr %17, align 8, !tbaa !11
  %126 = mul nsw i32 %105, 3
  store i32 %126, ptr %16, align 4, !tbaa !11
  %127 = mul nsw i32 %115, 3
  store i32 %127, ptr %18, align 4, !tbaa !11
  %128 = shl nsw i32 %119, 2
  store i32 %128, ptr %19, align 16, !tbaa !11
  br label %199

129:                                              ; preds = %85
  %130 = getelementptr inbounds i8, ptr %1, i64 %91
  %131 = load i8, ptr %130, align 1, !tbaa !15
  %132 = icmp ult i8 %131, 8
  br i1 %132, label %133, label %139

133:                                              ; preds = %129
  store i32 0, ptr %12, align 4, !tbaa !11
  store i32 0, ptr %5, align 16, !tbaa !11
  store i32 0, ptr %13, align 8, !tbaa !11
  %134 = shl nsw i32 %101, 1
  store i32 %134, ptr %14, align 4, !tbaa !11
  %135 = shl nsw i32 %105, 1
  store i32 %135, ptr %16, align 4, !tbaa !11
  %136 = mul nsw i32 %112, 3
  store i32 %136, ptr %17, align 8, !tbaa !11
  %137 = mul nsw i32 %119, 3
  store i32 %137, ptr %19, align 16, !tbaa !11
  %138 = shl nsw i32 %115, 2
  store i32 %138, ptr %18, align 4, !tbaa !11
  br label %199

139:                                              ; preds = %129
  %140 = getelementptr inbounds i8, ptr %1, i64 %95
  %141 = load i8, ptr %140, align 1, !tbaa !15
  %142 = icmp ult i8 %141, 8
  br i1 %142, label %143, label %149

143:                                              ; preds = %139
  store i32 0, ptr %13, align 8, !tbaa !11
  store i32 0, ptr %12, align 4, !tbaa !11
  store i32 0, ptr %16, align 4, !tbaa !11
  %144 = shl nsw i32 %90, 1
  store i32 %144, ptr %5, align 16, !tbaa !11
  %145 = shl nsw i32 %119, 1
  store i32 %145, ptr %19, align 16, !tbaa !11
  %146 = mul nsw i32 %101, 3
  store i32 %146, ptr %14, align 4, !tbaa !11
  %147 = mul nsw i32 %115, 3
  store i32 %147, ptr %18, align 4, !tbaa !11
  %148 = shl nsw i32 %112, 2
  store i32 %148, ptr %17, align 8, !tbaa !11
  br label %199

149:                                              ; preds = %139
  %150 = getelementptr inbounds i8, ptr %1, i64 %99
  %151 = load i8, ptr %150, align 1, !tbaa !15
  %152 = icmp ult i8 %151, 8
  br i1 %152, label %153, label %159

153:                                              ; preds = %149
  store i32 0, ptr %14, align 4, !tbaa !11
  store i32 0, ptr %5, align 16, !tbaa !11
  store i32 0, ptr %17, align 8, !tbaa !11
  %154 = shl nsw i32 %93, 1
  store i32 %154, ptr %12, align 4, !tbaa !11
  %155 = shl nsw i32 %115, 1
  store i32 %155, ptr %18, align 4, !tbaa !11
  %156 = mul nsw i32 %97, 3
  store i32 %156, ptr %13, align 8, !tbaa !11
  %157 = mul nsw i32 %119, 3
  store i32 %157, ptr %19, align 16, !tbaa !11
  %158 = shl nsw i32 %105, 2
  store i32 %158, ptr %16, align 4, !tbaa !11
  br label %199

159:                                              ; preds = %149
  %160 = getelementptr inbounds i8, ptr %1, i64 %103
  %161 = load i8, ptr %160, align 1, !tbaa !15
  %162 = icmp ult i8 %161, 8
  br i1 %162, label %163, label %169

163:                                              ; preds = %159
  store i32 0, ptr %16, align 4, !tbaa !11
  store i32 0, ptr %13, align 8, !tbaa !11
  store i32 0, ptr %19, align 16, !tbaa !11
  %164 = shl nsw i32 %93, 1
  store i32 %164, ptr %12, align 4, !tbaa !11
  %165 = shl nsw i32 %115, 1
  store i32 %165, ptr %18, align 4, !tbaa !11
  %166 = mul nsw i32 %90, 3
  store i32 %166, ptr %5, align 16, !tbaa !11
  %167 = mul nsw i32 %112, 3
  store i32 %167, ptr %17, align 8, !tbaa !11
  %168 = shl nsw i32 %101, 2
  store i32 %168, ptr %14, align 4, !tbaa !11
  br label %199

169:                                              ; preds = %159
  %170 = getelementptr inbounds i8, ptr %1, i64 %110
  %171 = load i8, ptr %170, align 1, !tbaa !15
  %172 = icmp ult i8 %171, 8
  br i1 %172, label %173, label %179

173:                                              ; preds = %169
  store i32 0, ptr %17, align 8, !tbaa !11
  store i32 0, ptr %14, align 4, !tbaa !11
  store i32 0, ptr %18, align 4, !tbaa !11
  %174 = shl nsw i32 %90, 1
  store i32 %174, ptr %5, align 16, !tbaa !11
  %175 = shl nsw i32 %119, 1
  store i32 %175, ptr %19, align 16, !tbaa !11
  %176 = mul nsw i32 %93, 3
  store i32 %176, ptr %12, align 4, !tbaa !11
  %177 = mul nsw i32 %105, 3
  store i32 %177, ptr %16, align 4, !tbaa !11
  %178 = shl nsw i32 %97, 2
  store i32 %178, ptr %13, align 8, !tbaa !11
  br label %199

179:                                              ; preds = %169
  %180 = getelementptr inbounds i8, ptr %1, i64 %113
  %181 = load i8, ptr %180, align 1, !tbaa !15
  %182 = icmp ult i8 %181, 8
  br i1 %182, label %183, label %189

183:                                              ; preds = %179
  store i32 0, ptr %18, align 4, !tbaa !11
  store i32 0, ptr %17, align 8, !tbaa !11
  store i32 0, ptr %19, align 16, !tbaa !11
  %184 = shl nsw i32 %101, 1
  store i32 %184, ptr %14, align 4, !tbaa !11
  %185 = shl nsw i32 %105, 1
  store i32 %185, ptr %16, align 4, !tbaa !11
  %186 = mul nsw i32 %90, 3
  store i32 %186, ptr %5, align 16, !tbaa !11
  %187 = mul nsw i32 %97, 3
  store i32 %187, ptr %13, align 8, !tbaa !11
  %188 = shl nsw i32 %93, 2
  store i32 %188, ptr %12, align 4, !tbaa !11
  br label %199

189:                                              ; preds = %179
  %190 = getelementptr inbounds i8, ptr %1, i64 %117
  %191 = load i8, ptr %190, align 1, !tbaa !15
  %192 = icmp ult i8 %191, 8
  br i1 %192, label %193, label %199

193:                                              ; preds = %189
  store i32 0, ptr %19, align 16, !tbaa !11
  store i32 0, ptr %16, align 4, !tbaa !11
  store i32 0, ptr %18, align 4, !tbaa !11
  %194 = shl nsw i32 %112, 1
  store i32 %194, ptr %17, align 8, !tbaa !11
  %195 = shl nsw i32 %97, 1
  store i32 %195, ptr %13, align 8, !tbaa !11
  %196 = mul nsw i32 %93, 3
  store i32 %196, ptr %12, align 4, !tbaa !11
  %197 = mul nsw i32 %101, 3
  store i32 %197, ptr %14, align 4, !tbaa !11
  %198 = shl nsw i32 %90, 2
  store i32 %198, ptr %5, align 16, !tbaa !11
  br label %199

199:                                              ; preds = %193, %189, %183, %173, %163, %153, %143, %133, %123
  br label %200

200:                                              ; preds = %222, %199
  %201 = phi i64 [ %223, %222 ], [ 0, %199 ]
  %202 = phi i32 [ %.lcssa, %222 ], [ %27, %199 ]
  %203 = phi i32 [ %.lcssa1, %222 ], [ %28, %199 ]
  %204 = phi i32 [ %.lcssa2, %222 ], [ 0, %199 ]
  %205 = mul nuw nsw i64 %201, 3
  %206 = trunc i64 %201 to i32
  br label %207

207:                                              ; preds = %207, %200
  %208 = phi i64 [ 0, %200 ], [ %220, %207 ]
  %209 = phi i32 [ %202, %200 ], [ %219, %207 ]
  %210 = phi i32 [ %203, %200 ], [ %217, %207 ]
  %211 = phi i32 [ %204, %200 ], [ %216, %207 ]
  %212 = add nuw nsw i64 %208, %205
  %213 = getelementptr inbounds [9 x i32], ptr %5, i64 0, i64 %212
  %214 = load i32, ptr %213, align 4, !tbaa !11
  %215 = icmp sgt i32 %214, %211
  %216 = tail call i32 @llvm.smax.i32(i32 %214, i32 %211)
  %217 = select i1 %215, i32 %206, i32 %210
  %218 = trunc i64 %208 to i32
  %219 = select i1 %215, i32 %218, i32 %209
  %220 = add nuw nsw i64 %208, 1
  %221 = icmp eq i64 %220, 3
  br i1 %221, label %222, label %207, !llvm.loop !38

222:                                              ; preds = %207
  %.lcssa2 = phi i32 [ %216, %207 ]
  %.lcssa1 = phi i32 [ %217, %207 ]
  %.lcssa = phi i32 [ %219, %207 ]
  %223 = add nuw nsw i64 %201, 1
  %224 = icmp eq i64 %223, 3
  br i1 %224, label %225, label %200, !llvm.loop !39

225:                                              ; preds = %222
  %.lcssa2.lcssa = phi i32 [ %.lcssa2, %222 ]
  %.lcssa1.lcssa = phi i32 [ %.lcssa1, %222 ]
  %.lcssa.lcssa = phi i32 [ %.lcssa, %222 ]
  %226 = icmp sgt i32 %.lcssa2.lcssa, 0
  br i1 %226, label %227, label %247

227:                                              ; preds = %225
  %228 = icmp ult i8 %33, 4
  %229 = add i8 %33, 1
  %230 = select i1 %228, i8 4, i8 %229
  %231 = add i32 %38, %.lcssa1.lcssa
  %232 = mul nsw i32 %231, %2
  %233 = add nsw i32 %25, -1
  %234 = add i32 %233, %.lcssa.lcssa
  %235 = add i32 %234, %232
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds i8, ptr %1, i64 %236
  store i8 %230, ptr %237, align 1, !tbaa !15
  %238 = shl nsw i32 %.lcssa1.lcssa, 1
  %239 = add nsw i32 %238, %.lcssa.lcssa
  %240 = icmp slt i32 %239, 3
  br i1 %240, label %241, label %247

241:                                              ; preds = %227
  %242 = add i32 %38, %.lcssa1.lcssa
  %243 = add i32 %25, -2
  %244 = add i32 %243, %.lcssa.lcssa
  %245 = tail call i32 @llvm.smax.i32(i32 %242, i32 4)
  %246 = tail call i32 @llvm.smax.i32(i32 %244, i32 4)
  br label %247

247:                                              ; preds = %241, %227, %225, %35
  %248 = phi i32 [ %.lcssa1.lcssa, %241 ], [ %.lcssa1.lcssa, %227 ], [ %.lcssa1.lcssa, %225 ], [ %28, %35 ]
  %249 = phi i32 [ %.lcssa.lcssa, %241 ], [ %.lcssa.lcssa, %227 ], [ %.lcssa.lcssa, %225 ], [ %27, %35 ]
  %250 = phi i32 [ %245, %241 ], [ %26, %227 ], [ %26, %225 ], [ %26, %35 ]
  %251 = phi i32 [ %246, %241 ], [ %25, %227 ], [ %25, %225 ], [ %25, %35 ]
  %252 = icmp eq i32 %81, 2
  br i1 %252, label %253, label %468

253:                                              ; preds = %247
  %254 = add nsw i32 %250, -1
  %255 = mul nsw i32 %254, %2
  %256 = add nsw i32 %255, %251
  %257 = add nsw i32 %256, -1
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds i8, ptr %1, i64 %258
  %260 = load i8, ptr %259, align 1, !tbaa !15
  %261 = icmp ult i8 %260, 8
  %262 = zext i1 %261 to i32
  %263 = add nsw i32 %256, 1
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds i8, ptr %1, i64 %264
  %266 = load i8, ptr %265, align 1, !tbaa !15
  %267 = icmp ult i8 %266, 8
  %268 = zext i1 %267 to i32
  %269 = add nsw i32 %250, 1
  %270 = mul nsw i32 %269, %2
  %271 = add nsw i32 %270, %251
  %272 = add nsw i32 %271, -1
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds i8, ptr %1, i64 %273
  %275 = load i8, ptr %274, align 1, !tbaa !15
  %276 = icmp ult i8 %275, 8
  %277 = zext i1 %276 to i32
  %278 = add nsw i32 %271, 1
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds i8, ptr %1, i64 %279
  %281 = load i8, ptr %280, align 1, !tbaa !15
  %282 = icmp ult i8 %281, 8
  %283 = zext i1 %282 to i32
  %284 = add nuw nsw i32 %268, %262
  %285 = add nuw nsw i32 %284, %277
  %286 = add nuw nsw i32 %285, %283
  %287 = icmp eq i32 %286, 2
  br i1 %287, label %288, label %369

288:                                              ; preds = %253
  %289 = or i32 %283, %262
  %290 = or i32 %277, %268
  %291 = and i32 %289, %290
  %292 = icmp eq i32 %291, 0
  br i1 %292, label %369, label %293

293:                                              ; preds = %288
  %294 = xor i1 %267, true
  br i1 %261, label %295, label %298

295:                                              ; preds = %293
  %296 = sext i1 %294 to i32
  %297 = sext i1 %267 to i32
  br label %300

298:                                              ; preds = %293
  %299 = zext i1 %294 to i32
  br label %300

300:                                              ; preds = %298, %295
  %301 = phi i1 [ %267, %295 ], [ %294, %298 ]
  %302 = phi i32 [ %296, %295 ], [ %268, %298 ]
  %303 = phi i1 [ %294, %295 ], [ %267, %298 ]
  %304 = phi i32 [ %297, %295 ], [ %299, %298 ]
  %305 = add nsw i32 %304, %250
  %306 = mul nsw i32 %305, %2
  %307 = add i32 %302, %251
  %308 = add i32 %307, %306
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds i32, ptr %0, i64 %309
  %311 = load i32, ptr %310, align 4, !tbaa !11
  %312 = sitofp i32 %311 to float
  %313 = sitofp i32 %37 to float
  %314 = fdiv float %312, %313
  %315 = fpext float %314 to double
  %316 = fcmp ogt double %315, 0x3FE6666666666666
  br i1 %316, label %317, label %553

317:                                              ; preds = %300
  br i1 %301, label %318, label %342

318:                                              ; preds = %317
  %319 = shl nsw i32 %304, 1
  %320 = add nsw i32 %319, %250
  %321 = mul nsw i32 %320, %2
  %322 = add nsw i32 %321, %251
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds i8, ptr %1, i64 %323
  %325 = load i8, ptr %324, align 1, !tbaa !15
  %326 = icmp ugt i8 %325, 7
  br i1 %326, label %327, label %342

327:                                              ; preds = %318
  %328 = add nsw i32 %322, -1
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds i8, ptr %1, i64 %329
  %331 = load i8, ptr %330, align 1, !tbaa !15
  %332 = icmp ugt i8 %331, 7
  br i1 %332, label %333, label %342

333:                                              ; preds = %327
  %334 = add nsw i32 %322, 1
  %335 = sext i32 %334 to i64
  %336 = getelementptr inbounds i8, ptr %1, i64 %335
  %337 = load i8, ptr %336, align 1, !tbaa !15
  %338 = icmp ugt i8 %337, 7
  br i1 %338, label %339, label %342

339:                                              ; preds = %333
  %340 = mul nsw i32 %250, %2
  %341 = add nsw i32 %340, %251
  br label %364

342:                                              ; preds = %333, %327, %318, %317
  br i1 %303, label %343, label %553

343:                                              ; preds = %342
  %344 = mul nsw i32 %250, %2
  %345 = add nsw i32 %344, %251
  %346 = shl nsw i32 %302, 1
  %347 = add nsw i32 %345, %346
  %348 = sext i32 %347 to i64
  %349 = getelementptr inbounds i8, ptr %1, i64 %348
  %350 = load i8, ptr %349, align 1, !tbaa !15
  %351 = icmp ugt i8 %350, 7
  br i1 %351, label %352, label %553

352:                                              ; preds = %343
  %353 = add nsw i32 %346, %271
  %354 = sext i32 %353 to i64
  %355 = getelementptr inbounds i8, ptr %1, i64 %354
  %356 = load i8, ptr %355, align 1, !tbaa !15
  %357 = icmp ugt i8 %356, 7
  br i1 %357, label %358, label %553

358:                                              ; preds = %352
  %359 = add nsw i32 %346, %256
  %360 = sext i32 %359 to i64
  %361 = getelementptr inbounds i8, ptr %1, i64 %360
  %362 = load i8, ptr %361, align 1, !tbaa !15
  %363 = icmp ugt i8 %362, 7
  br i1 %363, label %364, label %553

364:                                              ; preds = %358, %339
  %365 = phi i32 [ %341, %339 ], [ %345, %358 ]
  %366 = sext i32 %365 to i64
  %367 = getelementptr inbounds i8, ptr %1, i64 %366
  store i8 100, ptr %367, align 1, !tbaa !15
  %368 = getelementptr inbounds i8, ptr %1, i64 %309
  store i8 3, ptr %368, align 1, !tbaa !15
  br label %553

369:                                              ; preds = %288, %253
  %370 = sext i32 %256 to i64
  %371 = getelementptr inbounds i8, ptr %1, i64 %370
  %372 = load i8, ptr %371, align 1, !tbaa !15
  %373 = icmp ult i8 %372, 8
  %374 = zext i1 %373 to i32
  %375 = mul nsw i32 %250, %2
  %376 = add nsw i32 %375, %251
  %377 = add nsw i32 %376, 1
  %378 = sext i32 %377 to i64
  %379 = getelementptr inbounds i8, ptr %1, i64 %378
  %380 = load i8, ptr %379, align 1, !tbaa !15
  %381 = icmp ult i8 %380, 8
  %382 = zext i1 %381 to i32
  %383 = sext i32 %271 to i64
  %384 = getelementptr inbounds i8, ptr %1, i64 %383
  %385 = load i8, ptr %384, align 1, !tbaa !15
  %386 = icmp ult i8 %385, 8
  %387 = zext i1 %386 to i32
  %388 = add nsw i32 %376, -1
  %389 = sext i32 %388 to i64
  %390 = getelementptr inbounds i8, ptr %1, i64 %389
  %391 = load i8, ptr %390, align 1, !tbaa !15
  %392 = icmp ult i8 %391, 8
  %393 = zext i1 %392 to i32
  %394 = add nuw nsw i32 %382, %374
  %395 = add nuw nsw i32 %394, %387
  %396 = add nuw nsw i32 %395, %393
  %397 = icmp eq i32 %396, 2
  br i1 %397, label %398, label %553

398:                                              ; preds = %369
  %399 = or i32 %393, %382
  %400 = or i32 %387, %374
  %401 = and i32 %399, %400
  %402 = icmp eq i32 %401, 0
  br i1 %402, label %553, label %403

403:                                              ; preds = %398
  %404 = add nsw i32 %250, -2
  %405 = mul nsw i32 %404, %2
  %406 = add nsw i32 %405, %251
  %407 = add nsw i32 %406, -1
  %408 = sext i32 %407 to i64
  %409 = getelementptr inbounds i8, ptr %1, i64 %408
  %410 = load i8, ptr %409, align 1, !tbaa !15
  %411 = icmp ult i8 %410, 8
  %412 = add nsw i32 %406, 1
  %413 = sext i32 %412 to i64
  %414 = getelementptr inbounds i8, ptr %1, i64 %413
  %415 = load i8, ptr %414, align 1, !tbaa !15
  %416 = icmp ult i8 %415, 8
  %417 = or i1 %411, %416
  %418 = and i1 %373, %417
  %419 = add nsw i32 %256, -2
  %420 = sext i32 %419 to i64
  %421 = getelementptr inbounds i8, ptr %1, i64 %420
  %422 = load i8, ptr %421, align 1, !tbaa !15
  %423 = icmp ult i8 %422, 8
  %424 = add nsw i32 %271, -2
  %425 = sext i32 %424 to i64
  %426 = getelementptr inbounds i8, ptr %1, i64 %425
  %427 = load i8, ptr %426, align 1, !tbaa !15
  %428 = icmp ult i8 %427, 8
  %429 = or i1 %423, %428
  %430 = and i1 %392, %429
  %431 = or i1 %418, %430
  %432 = add nsw i32 %256, 2
  %433 = sext i32 %432 to i64
  %434 = getelementptr inbounds i8, ptr %1, i64 %433
  %435 = load i8, ptr %434, align 1, !tbaa !15
  %436 = icmp ult i8 %435, 8
  %437 = add nsw i32 %271, 2
  %438 = sext i32 %437 to i64
  %439 = getelementptr inbounds i8, ptr %1, i64 %438
  %440 = load i8, ptr %439, align 1, !tbaa !15
  %441 = icmp ult i8 %440, 8
  %442 = or i1 %436, %441
  %443 = and i1 %381, %442
  %444 = or i1 %431, %443
  %445 = add nsw i32 %250, 2
  %446 = mul nsw i32 %445, %2
  %447 = add nsw i32 %446, %251
  %448 = add nsw i32 %447, -1
  %449 = sext i32 %448 to i64
  %450 = getelementptr inbounds i8, ptr %1, i64 %449
  %451 = load i8, ptr %450, align 1, !tbaa !15
  %452 = icmp ult i8 %451, 8
  %453 = add nsw i32 %447, 1
  %454 = sext i32 %453 to i64
  %455 = getelementptr inbounds i8, ptr %1, i64 %454
  %456 = load i8, ptr %455, align 1, !tbaa !15
  %457 = icmp ult i8 %456, 8
  %458 = or i1 %452, %457
  %459 = and i1 %386, %458
  %460 = or i1 %444, %459
  br i1 %460, label %461, label %553

461:                                              ; preds = %403
  %462 = sext i32 %376 to i64
  %463 = getelementptr inbounds i8, ptr %1, i64 %462
  store i8 100, ptr %463, align 1, !tbaa !15
  %464 = tail call i32 @llvm.smax.i32(i32 %250, i32 5)
  %465 = add nsw i32 %464, -1
  %466 = tail call i32 @llvm.smax.i32(i32 %251, i32 6)
  %467 = add nsw i32 %466, -2
  br label %553

468:                                              ; preds = %247
  %469 = icmp sgt i32 %81, 2
  br i1 %469, label %470, label %553

470:                                              ; preds = %468
  %471 = add nsw i32 %250, -1
  %472 = mul nsw i32 %471, %2
  %473 = add nsw i32 %472, %251
  %474 = sext i32 %473 to i64
  %475 = getelementptr inbounds i8, ptr %1, i64 %474
  %476 = load i8, ptr %475, align 1, !tbaa !15
  %477 = icmp ult i8 %476, 8
  %478 = zext i1 %477 to i32
  %479 = mul nsw i32 %250, %2
  %480 = add nsw i32 %479, %251
  %481 = add nsw i32 %480, 1
  %482 = sext i32 %481 to i64
  %483 = getelementptr inbounds i8, ptr %1, i64 %482
  %484 = load i8, ptr %483, align 1, !tbaa !15
  %485 = icmp ult i8 %484, 8
  %486 = zext i1 %485 to i32
  %487 = add nsw i32 %250, 1
  %488 = mul nsw i32 %487, %2
  %489 = add nsw i32 %488, %251
  %490 = sext i32 %489 to i64
  %491 = getelementptr inbounds i8, ptr %1, i64 %490
  %492 = load i8, ptr %491, align 1, !tbaa !15
  %493 = icmp ult i8 %492, 8
  %494 = zext i1 %493 to i32
  %495 = add nsw i32 %480, -1
  %496 = sext i32 %495 to i64
  %497 = getelementptr inbounds i8, ptr %1, i64 %496
  %498 = load i8, ptr %497, align 1, !tbaa !15
  %499 = icmp ult i8 %498, 8
  %500 = zext i1 %499 to i32
  %501 = add nuw nsw i32 %486, %478
  %502 = add nuw nsw i32 %501, %494
  %503 = add nuw nsw i32 %502, %500
  %504 = icmp ugt i32 %503, 1
  br i1 %504, label %505, label %553

505:                                              ; preds = %470
  %506 = add nsw i32 %473, -1
  %507 = sext i32 %506 to i64
  %508 = getelementptr inbounds i8, ptr %1, i64 %507
  %509 = load i8, ptr %508, align 1, !tbaa !15
  %510 = icmp ult i8 %509, 8
  %511 = add nsw i32 %473, 1
  %512 = sext i32 %511 to i64
  %513 = getelementptr inbounds i8, ptr %1, i64 %512
  %514 = load i8, ptr %513, align 1, !tbaa !15
  %515 = icmp ult i8 %514, 8
  %516 = add nsw i32 %489, -1
  %517 = sext i32 %516 to i64
  %518 = getelementptr inbounds i8, ptr %1, i64 %517
  %519 = load i8, ptr %518, align 1, !tbaa !15
  %520 = icmp ult i8 %519, 8
  %521 = add nsw i32 %489, 1
  %522 = sext i32 %521 to i64
  %523 = getelementptr inbounds i8, ptr %1, i64 %522
  %524 = load i8, ptr %523, align 1, !tbaa !15
  %525 = icmp ult i8 %524, 8
  %526 = or i1 %477, %510
  %527 = zext i1 %526 to i32
  %528 = or i1 %485, %515
  %529 = zext i1 %528 to i32
  %530 = or i1 %493, %525
  %531 = zext i1 %530 to i32
  %532 = or i1 %499, %520
  %533 = zext i1 %532 to i32
  %534 = and i32 %529, %478
  %535 = and i32 %531, %486
  %536 = and i32 %533, %494
  %537 = and i32 %527, %500
  %538 = add nuw nsw i32 %529, %527
  %539 = add nuw nsw i32 %538, %533
  %540 = add nuw nsw i32 %537, %534
  %541 = add nuw nsw i32 %539, %531
  %542 = add nuw nsw i32 %540, %536
  %543 = add nuw nsw i32 %542, %535
  %544 = sub nsw i32 %541, %543
  %545 = icmp slt i32 %544, 2
  br i1 %545, label %546, label %553

546:                                              ; preds = %505
  %547 = sext i32 %480 to i64
  %548 = getelementptr inbounds i8, ptr %1, i64 %547
  store i8 100, ptr %548, align 1, !tbaa !15
  %549 = tail call i32 @llvm.smax.i32(i32 %250, i32 5)
  %550 = add nsw i32 %549, -1
  %551 = tail call i32 @llvm.smax.i32(i32 %251, i32 6)
  %552 = add nsw i32 %551, -2
  br label %553

553:                                              ; preds = %546, %505, %470, %468, %461, %403, %398, %369, %364, %358, %352, %343, %342, %300, %83, %82, %24
  %554 = phi i32 [ %248, %546 ], [ %248, %505 ], [ %248, %470 ], [ %248, %468 ], [ %28, %24 ], [ %248, %369 ], [ %248, %398 ], [ %248, %403 ], [ %248, %461 ], [ %248, %300 ], [ %248, %342 ], [ %248, %343 ], [ %248, %352 ], [ %248, %358 ], [ %248, %364 ], [ %28, %82 ], [ %28, %83 ]
  %555 = phi i32 [ %249, %546 ], [ %249, %505 ], [ %249, %470 ], [ %249, %468 ], [ %27, %24 ], [ %249, %369 ], [ %249, %398 ], [ %249, %403 ], [ %249, %461 ], [ %249, %300 ], [ %249, %342 ], [ %249, %343 ], [ %249, %352 ], [ %249, %358 ], [ %249, %364 ], [ %27, %82 ], [ %27, %83 ]
  %556 = phi i32 [ %550, %546 ], [ %250, %505 ], [ %250, %470 ], [ %250, %468 ], [ %26, %24 ], [ %250, %369 ], [ %250, %398 ], [ %250, %403 ], [ %465, %461 ], [ %250, %300 ], [ %250, %342 ], [ %250, %343 ], [ %250, %352 ], [ %250, %358 ], [ %250, %364 ], [ %26, %82 ], [ %26, %83 ]
  %557 = phi i32 [ %552, %546 ], [ %251, %505 ], [ %251, %470 ], [ %251, %468 ], [ %25, %24 ], [ %251, %369 ], [ %251, %398 ], [ %251, %403 ], [ %467, %461 ], [ %251, %300 ], [ %251, %342 ], [ %251, %343 ], [ %251, %352 ], [ %251, %358 ], [ %251, %364 ], [ %25, %82 ], [ %25, %83 ]
  %558 = add nsw i32 %557, 1
  %559 = icmp slt i32 %558, %9
  br i1 %559, label %24, label %560, !llvm.loop !40

560:                                              ; preds = %553, %20
  %561 = phi i32 [ %23, %20 ], [ %554, %553 ]
  %562 = phi i32 [ %22, %20 ], [ %555, %553 ]
  %563 = phi i32 [ %21, %20 ], [ %556, %553 ]
  %564 = add nsw i32 %563, 1
  %565 = icmp slt i32 %564, %6
  br i1 %565, label %20, label %566, !llvm.loop !41

566:                                              ; preds = %560, %4
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %5) #21
  ret i32 undef
}

; Function Attrs: nofree nounwind optsize memory(readwrite, inaccessiblemem: write) uwtable
define internal i32 @susan_edges(ptr noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef writeonly %2, ptr noundef readonly %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) #17 {
  %8 = mul nsw i32 %6, %5
  %9 = sext i32 %8 to i64
  %10 = shl nsw i64 %9, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %1, i8 0, i64 %10, i1 false)
  %11 = icmp sgt i32 %6, 6
  br i1 %11, label %12, label %1160

12:                                               ; preds = %7
  %13 = add nsw i32 %6, -3
  %14 = add i32 %5, -3
  %15 = icmp sgt i32 %5, 6
  %16 = sext i32 %14 to i64
  %17 = add nsw i32 %5, -5
  %18 = sext i32 %17 to i64
  %19 = add nsw i32 %5, -6
  %20 = sext i32 %19 to i64
  %21 = sext i32 %5 to i64
  %22 = zext i32 %13 to i64
  %23 = zext i32 %14 to i64
  br label %24

24:                                               ; preds = %348, %12
  %25 = phi i64 [ 3, %12 ], [ %349, %348 ]
  br i1 %15, label %26, label %348

26:                                               ; preds = %24
  %27 = add nsw i64 %25, -3
  %28 = mul nsw i64 %27, %21
  %29 = getelementptr inbounds i8, ptr %0, i64 %28
  %30 = mul nsw i64 %25, %21
  br label %46

31:                                               ; preds = %348
  %32 = icmp sgt i32 %6, 8
  br i1 %32, label %33, label %1160

33:                                               ; preds = %31
  %34 = add nsw i32 %6, -4
  %35 = add i32 %5, -4
  %36 = icmp sgt i32 %5, 8
  %37 = add nsw i32 %5, -3
  %38 = sext i32 %37 to i64
  %39 = add nsw i32 %5, -5
  %40 = sext i32 %39 to i64
  %41 = add nsw i32 %5, -6
  %42 = sext i32 %41 to i64
  %43 = sext i32 %5 to i64
  %44 = zext i32 %34 to i64
  %45 = zext i32 %35 to i64
  br label %351

46:                                               ; preds = %345, %26
  %47 = phi i64 [ 3, %26 ], [ %346, %345 ]
  %48 = getelementptr inbounds i8, ptr %29, i64 %47
  %49 = getelementptr inbounds i8, ptr %48, i64 -1
  %50 = add nsw i64 %47, %30
  %51 = getelementptr inbounds i8, ptr %0, i64 %50
  %52 = load i8, ptr %51, align 1, !tbaa !15
  %53 = zext i8 %52 to i64
  %54 = getelementptr inbounds i8, ptr %3, i64 %53
  %55 = load i8, ptr %49, align 1, !tbaa !15
  %56 = zext i8 %55 to i64
  %57 = sub nsw i64 0, %56
  %58 = getelementptr inbounds i8, ptr %54, i64 %57
  %59 = load i8, ptr %58, align 1, !tbaa !15
  %60 = zext i8 %59 to i32
  %61 = add nuw nsw i32 %60, 100
  %62 = getelementptr inbounds i8, ptr %48, i64 1
  %63 = load i8, ptr %48, align 1, !tbaa !15
  %64 = zext i8 %63 to i64
  %65 = sub nsw i64 0, %64
  %66 = getelementptr inbounds i8, ptr %54, i64 %65
  %67 = load i8, ptr %66, align 1, !tbaa !15
  %68 = zext i8 %67 to i32
  %69 = add nuw nsw i32 %61, %68
  %70 = load i8, ptr %62, align 1, !tbaa !15
  %71 = zext i8 %70 to i64
  %72 = sub nsw i64 0, %71
  %73 = getelementptr inbounds i8, ptr %54, i64 %72
  %74 = load i8, ptr %73, align 1, !tbaa !15
  %75 = zext i8 %74 to i32
  %76 = add nuw nsw i32 %69, %75
  %77 = getelementptr inbounds i8, ptr %62, i64 %16
  %78 = getelementptr inbounds i8, ptr %77, i64 1
  %79 = load i8, ptr %77, align 1, !tbaa !15
  %80 = zext i8 %79 to i64
  %81 = sub nsw i64 0, %80
  %82 = getelementptr inbounds i8, ptr %54, i64 %81
  %83 = load i8, ptr %82, align 1, !tbaa !15
  %84 = zext i8 %83 to i32
  %85 = add nuw nsw i32 %76, %84
  %86 = getelementptr inbounds i8, ptr %77, i64 2
  %87 = load i8, ptr %78, align 1, !tbaa !15
  %88 = zext i8 %87 to i64
  %89 = sub nsw i64 0, %88
  %90 = getelementptr inbounds i8, ptr %54, i64 %89
  %91 = load i8, ptr %90, align 1, !tbaa !15
  %92 = zext i8 %91 to i32
  %93 = add nuw nsw i32 %85, %92
  %94 = getelementptr inbounds i8, ptr %77, i64 3
  %95 = load i8, ptr %86, align 1, !tbaa !15
  %96 = zext i8 %95 to i64
  %97 = sub nsw i64 0, %96
  %98 = getelementptr inbounds i8, ptr %54, i64 %97
  %99 = load i8, ptr %98, align 1, !tbaa !15
  %100 = zext i8 %99 to i32
  %101 = add nuw nsw i32 %93, %100
  %102 = getelementptr inbounds i8, ptr %77, i64 4
  %103 = load i8, ptr %94, align 1, !tbaa !15
  %104 = zext i8 %103 to i64
  %105 = sub nsw i64 0, %104
  %106 = getelementptr inbounds i8, ptr %54, i64 %105
  %107 = load i8, ptr %106, align 1, !tbaa !15
  %108 = zext i8 %107 to i32
  %109 = add nuw nsw i32 %101, %108
  %110 = load i8, ptr %102, align 1, !tbaa !15
  %111 = zext i8 %110 to i64
  %112 = sub nsw i64 0, %111
  %113 = getelementptr inbounds i8, ptr %54, i64 %112
  %114 = load i8, ptr %113, align 1, !tbaa !15
  %115 = zext i8 %114 to i32
  %116 = add nuw nsw i32 %109, %115
  %117 = getelementptr inbounds i8, ptr %102, i64 %18
  %118 = getelementptr inbounds i8, ptr %117, i64 1
  %119 = load i8, ptr %117, align 1, !tbaa !15
  %120 = zext i8 %119 to i64
  %121 = sub nsw i64 0, %120
  %122 = getelementptr inbounds i8, ptr %54, i64 %121
  %123 = load i8, ptr %122, align 1, !tbaa !15
  %124 = zext i8 %123 to i32
  %125 = add nuw nsw i32 %116, %124
  %126 = getelementptr inbounds i8, ptr %117, i64 2
  %127 = load i8, ptr %118, align 1, !tbaa !15
  %128 = zext i8 %127 to i64
  %129 = sub nsw i64 0, %128
  %130 = getelementptr inbounds i8, ptr %54, i64 %129
  %131 = load i8, ptr %130, align 1, !tbaa !15
  %132 = zext i8 %131 to i32
  %133 = add nuw nsw i32 %125, %132
  %134 = getelementptr inbounds i8, ptr %117, i64 3
  %135 = load i8, ptr %126, align 1, !tbaa !15
  %136 = zext i8 %135 to i64
  %137 = sub nsw i64 0, %136
  %138 = getelementptr inbounds i8, ptr %54, i64 %137
  %139 = load i8, ptr %138, align 1, !tbaa !15
  %140 = zext i8 %139 to i32
  %141 = add nuw nsw i32 %133, %140
  %142 = getelementptr inbounds i8, ptr %117, i64 4
  %143 = load i8, ptr %134, align 1, !tbaa !15
  %144 = zext i8 %143 to i64
  %145 = sub nsw i64 0, %144
  %146 = getelementptr inbounds i8, ptr %54, i64 %145
  %147 = load i8, ptr %146, align 1, !tbaa !15
  %148 = zext i8 %147 to i32
  %149 = add nuw nsw i32 %141, %148
  %150 = getelementptr inbounds i8, ptr %117, i64 5
  %151 = load i8, ptr %142, align 1, !tbaa !15
  %152 = zext i8 %151 to i64
  %153 = sub nsw i64 0, %152
  %154 = getelementptr inbounds i8, ptr %54, i64 %153
  %155 = load i8, ptr %154, align 1, !tbaa !15
  %156 = zext i8 %155 to i32
  %157 = add nuw nsw i32 %149, %156
  %158 = getelementptr inbounds i8, ptr %117, i64 6
  %159 = load i8, ptr %150, align 1, !tbaa !15
  %160 = zext i8 %159 to i64
  %161 = sub nsw i64 0, %160
  %162 = getelementptr inbounds i8, ptr %54, i64 %161
  %163 = load i8, ptr %162, align 1, !tbaa !15
  %164 = zext i8 %163 to i32
  %165 = add nuw nsw i32 %157, %164
  %166 = load i8, ptr %158, align 1, !tbaa !15
  %167 = zext i8 %166 to i64
  %168 = sub nsw i64 0, %167
  %169 = getelementptr inbounds i8, ptr %54, i64 %168
  %170 = load i8, ptr %169, align 1, !tbaa !15
  %171 = zext i8 %170 to i32
  %172 = add nuw nsw i32 %165, %171
  %173 = getelementptr inbounds i8, ptr %158, i64 %20
  %174 = getelementptr inbounds i8, ptr %173, i64 1
  %175 = load i8, ptr %173, align 1, !tbaa !15
  %176 = zext i8 %175 to i64
  %177 = sub nsw i64 0, %176
  %178 = getelementptr inbounds i8, ptr %54, i64 %177
  %179 = load i8, ptr %178, align 1, !tbaa !15
  %180 = zext i8 %179 to i32
  %181 = add nuw nsw i32 %172, %180
  %182 = getelementptr inbounds i8, ptr %173, i64 2
  %183 = load i8, ptr %174, align 1, !tbaa !15
  %184 = zext i8 %183 to i64
  %185 = sub nsw i64 0, %184
  %186 = getelementptr inbounds i8, ptr %54, i64 %185
  %187 = load i8, ptr %186, align 1, !tbaa !15
  %188 = zext i8 %187 to i32
  %189 = add nuw nsw i32 %181, %188
  %190 = load i8, ptr %182, align 1, !tbaa !15
  %191 = zext i8 %190 to i64
  %192 = sub nsw i64 0, %191
  %193 = getelementptr inbounds i8, ptr %54, i64 %192
  %194 = load i8, ptr %193, align 1, !tbaa !15
  %195 = zext i8 %194 to i32
  %196 = add nuw nsw i32 %189, %195
  %197 = getelementptr inbounds i8, ptr %173, i64 4
  %198 = getelementptr inbounds i8, ptr %173, i64 5
  %199 = load i8, ptr %197, align 1, !tbaa !15
  %200 = zext i8 %199 to i64
  %201 = sub nsw i64 0, %200
  %202 = getelementptr inbounds i8, ptr %54, i64 %201
  %203 = load i8, ptr %202, align 1, !tbaa !15
  %204 = zext i8 %203 to i32
  %205 = add nuw nsw i32 %196, %204
  %206 = getelementptr inbounds i8, ptr %173, i64 6
  %207 = load i8, ptr %198, align 1, !tbaa !15
  %208 = zext i8 %207 to i64
  %209 = sub nsw i64 0, %208
  %210 = getelementptr inbounds i8, ptr %54, i64 %209
  %211 = load i8, ptr %210, align 1, !tbaa !15
  %212 = zext i8 %211 to i32
  %213 = add nuw nsw i32 %205, %212
  %214 = load i8, ptr %206, align 1, !tbaa !15
  %215 = zext i8 %214 to i64
  %216 = sub nsw i64 0, %215
  %217 = getelementptr inbounds i8, ptr %54, i64 %216
  %218 = load i8, ptr %217, align 1, !tbaa !15
  %219 = zext i8 %218 to i32
  %220 = add nuw nsw i32 %213, %219
  %221 = getelementptr inbounds i8, ptr %206, i64 %20
  %222 = getelementptr inbounds i8, ptr %221, i64 1
  %223 = load i8, ptr %221, align 1, !tbaa !15
  %224 = zext i8 %223 to i64
  %225 = sub nsw i64 0, %224
  %226 = getelementptr inbounds i8, ptr %54, i64 %225
  %227 = load i8, ptr %226, align 1, !tbaa !15
  %228 = zext i8 %227 to i32
  %229 = add nuw nsw i32 %220, %228
  %230 = getelementptr inbounds i8, ptr %221, i64 2
  %231 = load i8, ptr %222, align 1, !tbaa !15
  %232 = zext i8 %231 to i64
  %233 = sub nsw i64 0, %232
  %234 = getelementptr inbounds i8, ptr %54, i64 %233
  %235 = load i8, ptr %234, align 1, !tbaa !15
  %236 = zext i8 %235 to i32
  %237 = add nuw nsw i32 %229, %236
  %238 = getelementptr inbounds i8, ptr %221, i64 3
  %239 = load i8, ptr %230, align 1, !tbaa !15
  %240 = zext i8 %239 to i64
  %241 = sub nsw i64 0, %240
  %242 = getelementptr inbounds i8, ptr %54, i64 %241
  %243 = load i8, ptr %242, align 1, !tbaa !15
  %244 = zext i8 %243 to i32
  %245 = add nuw nsw i32 %237, %244
  %246 = getelementptr inbounds i8, ptr %221, i64 4
  %247 = load i8, ptr %238, align 1, !tbaa !15
  %248 = zext i8 %247 to i64
  %249 = sub nsw i64 0, %248
  %250 = getelementptr inbounds i8, ptr %54, i64 %249
  %251 = load i8, ptr %250, align 1, !tbaa !15
  %252 = zext i8 %251 to i32
  %253 = add nuw nsw i32 %245, %252
  %254 = getelementptr inbounds i8, ptr %221, i64 5
  %255 = load i8, ptr %246, align 1, !tbaa !15
  %256 = zext i8 %255 to i64
  %257 = sub nsw i64 0, %256
  %258 = getelementptr inbounds i8, ptr %54, i64 %257
  %259 = load i8, ptr %258, align 1, !tbaa !15
  %260 = zext i8 %259 to i32
  %261 = add nuw nsw i32 %253, %260
  %262 = getelementptr inbounds i8, ptr %221, i64 6
  %263 = load i8, ptr %254, align 1, !tbaa !15
  %264 = zext i8 %263 to i64
  %265 = sub nsw i64 0, %264
  %266 = getelementptr inbounds i8, ptr %54, i64 %265
  %267 = load i8, ptr %266, align 1, !tbaa !15
  %268 = zext i8 %267 to i32
  %269 = add nuw nsw i32 %261, %268
  %270 = load i8, ptr %262, align 1, !tbaa !15
  %271 = zext i8 %270 to i64
  %272 = sub nsw i64 0, %271
  %273 = getelementptr inbounds i8, ptr %54, i64 %272
  %274 = load i8, ptr %273, align 1, !tbaa !15
  %275 = zext i8 %274 to i32
  %276 = add nuw nsw i32 %269, %275
  %277 = getelementptr inbounds i8, ptr %262, i64 %18
  %278 = getelementptr inbounds i8, ptr %277, i64 1
  %279 = load i8, ptr %277, align 1, !tbaa !15
  %280 = zext i8 %279 to i64
  %281 = sub nsw i64 0, %280
  %282 = getelementptr inbounds i8, ptr %54, i64 %281
  %283 = load i8, ptr %282, align 1, !tbaa !15
  %284 = zext i8 %283 to i32
  %285 = add nuw nsw i32 %276, %284
  %286 = getelementptr inbounds i8, ptr %277, i64 2
  %287 = load i8, ptr %278, align 1, !tbaa !15
  %288 = zext i8 %287 to i64
  %289 = sub nsw i64 0, %288
  %290 = getelementptr inbounds i8, ptr %54, i64 %289
  %291 = load i8, ptr %290, align 1, !tbaa !15
  %292 = zext i8 %291 to i32
  %293 = add nuw nsw i32 %285, %292
  %294 = getelementptr inbounds i8, ptr %277, i64 3
  %295 = load i8, ptr %286, align 1, !tbaa !15
  %296 = zext i8 %295 to i64
  %297 = sub nsw i64 0, %296
  %298 = getelementptr inbounds i8, ptr %54, i64 %297
  %299 = load i8, ptr %298, align 1, !tbaa !15
  %300 = zext i8 %299 to i32
  %301 = add nuw nsw i32 %293, %300
  %302 = getelementptr inbounds i8, ptr %277, i64 4
  %303 = load i8, ptr %294, align 1, !tbaa !15
  %304 = zext i8 %303 to i64
  %305 = sub nsw i64 0, %304
  %306 = getelementptr inbounds i8, ptr %54, i64 %305
  %307 = load i8, ptr %306, align 1, !tbaa !15
  %308 = zext i8 %307 to i32
  %309 = add nuw nsw i32 %301, %308
  %310 = load i8, ptr %302, align 1, !tbaa !15
  %311 = zext i8 %310 to i64
  %312 = sub nsw i64 0, %311
  %313 = getelementptr inbounds i8, ptr %54, i64 %312
  %314 = load i8, ptr %313, align 1, !tbaa !15
  %315 = zext i8 %314 to i32
  %316 = add nuw nsw i32 %309, %315
  %317 = getelementptr inbounds i8, ptr %302, i64 %16
  %318 = getelementptr inbounds i8, ptr %317, i64 1
  %319 = load i8, ptr %317, align 1, !tbaa !15
  %320 = zext i8 %319 to i64
  %321 = sub nsw i64 0, %320
  %322 = getelementptr inbounds i8, ptr %54, i64 %321
  %323 = load i8, ptr %322, align 1, !tbaa !15
  %324 = zext i8 %323 to i32
  %325 = add nuw nsw i32 %316, %324
  %326 = getelementptr inbounds i8, ptr %317, i64 2
  %327 = load i8, ptr %318, align 1, !tbaa !15
  %328 = zext i8 %327 to i64
  %329 = sub nsw i64 0, %328
  %330 = getelementptr inbounds i8, ptr %54, i64 %329
  %331 = load i8, ptr %330, align 1, !tbaa !15
  %332 = zext i8 %331 to i32
  %333 = add nuw nsw i32 %325, %332
  %334 = load i8, ptr %326, align 1, !tbaa !15
  %335 = zext i8 %334 to i64
  %336 = sub nsw i64 0, %335
  %337 = getelementptr inbounds i8, ptr %54, i64 %336
  %338 = load i8, ptr %337, align 1, !tbaa !15
  %339 = zext i8 %338 to i32
  %340 = add nuw nsw i32 %333, %339
  %341 = icmp sgt i32 %340, %4
  br i1 %341, label %345, label %342

342:                                              ; preds = %46
  %343 = sub nsw i32 %4, %340
  %344 = getelementptr inbounds i32, ptr %1, i64 %50
  store i32 %343, ptr %344, align 4, !tbaa !11
  br label %345

345:                                              ; preds = %342, %46
  %346 = add nuw nsw i64 %47, 1
  %347 = icmp eq i64 %346, %23
  br i1 %347, label %348, label %46, !llvm.loop !42

348:                                              ; preds = %345, %24
  %349 = add nuw nsw i64 %25, 1
  %350 = icmp eq i64 %349, %22
  br i1 %350, label %31, label %24, !llvm.loop !43

351:                                              ; preds = %1157, %33
  %352 = phi i64 [ 4, %33 ], [ %1158, %1157 ]
  br i1 %36, label %353, label %1157

353:                                              ; preds = %351
  %354 = mul nsw i64 %352, %43
  %355 = add nsw i64 %352, -3
  %356 = mul nsw i64 %355, %43
  %357 = getelementptr inbounds i8, ptr %0, i64 %356
  %358 = trunc i64 %352 to i32
  %359 = trunc i64 %352 to i32
  br label %360

360:                                              ; preds = %1154, %353
  %361 = phi i64 [ 4, %353 ], [ %1155, %1154 ]
  %362 = add nsw i64 %361, %354
  %363 = getelementptr inbounds i32, ptr %1, i64 %362
  %364 = load i32, ptr %363, align 4, !tbaa !11
  %365 = icmp sgt i32 %364, 0
  br i1 %365, label %366, label %1154

366:                                              ; preds = %360
  %367 = sub nsw i32 %4, %364
  %368 = getelementptr inbounds i8, ptr %0, i64 %362
  %369 = load i8, ptr %368, align 1, !tbaa !15
  %370 = zext i8 %369 to i64
  %371 = getelementptr inbounds i8, ptr %3, i64 %370
  %372 = icmp sgt i32 %367, 600
  br i1 %372, label %373, label %755

373:                                              ; preds = %366
  %374 = getelementptr inbounds i8, ptr %357, i64 %361
  %375 = getelementptr inbounds i8, ptr %374, i64 -1
  %376 = load i8, ptr %375, align 1, !tbaa !15
  %377 = zext i8 %376 to i64
  %378 = sub nsw i64 0, %377
  %379 = getelementptr inbounds i8, ptr %371, i64 %378
  %380 = load i8, ptr %379, align 1, !tbaa !15
  %381 = zext i8 %380 to i32
  %382 = getelementptr inbounds i8, ptr %374, i64 1
  %383 = load i8, ptr %374, align 1, !tbaa !15
  %384 = zext i8 %383 to i64
  %385 = sub nsw i64 0, %384
  %386 = getelementptr inbounds i8, ptr %371, i64 %385
  %387 = load i8, ptr %386, align 1, !tbaa !15
  %388 = zext i8 %387 to i32
  %389 = add nuw nsw i32 %388, %381
  %390 = load i8, ptr %382, align 1, !tbaa !15
  %391 = zext i8 %390 to i64
  %392 = sub nsw i64 0, %391
  %393 = getelementptr inbounds i8, ptr %371, i64 %392
  %394 = load i8, ptr %393, align 1, !tbaa !15
  %395 = zext i8 %394 to i32
  %396 = add nuw nsw i32 %389, %395
  %397 = getelementptr inbounds i8, ptr %382, i64 %38
  %398 = getelementptr inbounds i8, ptr %397, i64 1
  %399 = load i8, ptr %397, align 1, !tbaa !15
  %400 = zext i8 %399 to i64
  %401 = sub nsw i64 0, %400
  %402 = getelementptr inbounds i8, ptr %371, i64 %401
  %403 = load i8, ptr %402, align 1, !tbaa !15
  %404 = zext i8 %403 to i32
  %405 = getelementptr inbounds i8, ptr %397, i64 2
  %406 = load i8, ptr %398, align 1, !tbaa !15
  %407 = zext i8 %406 to i64
  %408 = sub nsw i64 0, %407
  %409 = getelementptr inbounds i8, ptr %371, i64 %408
  %410 = load i8, ptr %409, align 1, !tbaa !15
  %411 = zext i8 %410 to i32
  %412 = add nuw nsw i32 %411, %404
  %413 = getelementptr inbounds i8, ptr %397, i64 3
  %414 = load i8, ptr %405, align 1, !tbaa !15
  %415 = zext i8 %414 to i64
  %416 = sub nsw i64 0, %415
  %417 = getelementptr inbounds i8, ptr %371, i64 %416
  %418 = load i8, ptr %417, align 1, !tbaa !15
  %419 = zext i8 %418 to i32
  %420 = add nuw nsw i32 %412, %419
  %421 = getelementptr inbounds i8, ptr %397, i64 4
  %422 = load i8, ptr %413, align 1, !tbaa !15
  %423 = zext i8 %422 to i64
  %424 = sub nsw i64 0, %423
  %425 = getelementptr inbounds i8, ptr %371, i64 %424
  %426 = load i8, ptr %425, align 1, !tbaa !15
  %427 = zext i8 %426 to i32
  %428 = add nuw nsw i32 %420, %427
  %429 = load i8, ptr %421, align 1, !tbaa !15
  %430 = zext i8 %429 to i64
  %431 = sub nsw i64 0, %430
  %432 = getelementptr inbounds i8, ptr %371, i64 %431
  %433 = load i8, ptr %432, align 1, !tbaa !15
  %434 = zext i8 %433 to i32
  %435 = add nuw nsw i32 %428, %434
  %436 = getelementptr inbounds i8, ptr %421, i64 %40
  %437 = getelementptr inbounds i8, ptr %436, i64 1
  %438 = load i8, ptr %436, align 1, !tbaa !15
  %439 = zext i8 %438 to i64
  %440 = sub nsw i64 0, %439
  %441 = getelementptr inbounds i8, ptr %371, i64 %440
  %442 = load i8, ptr %441, align 1, !tbaa !15
  %443 = zext i8 %442 to i32
  %444 = getelementptr inbounds i8, ptr %436, i64 2
  %445 = load i8, ptr %437, align 1, !tbaa !15
  %446 = zext i8 %445 to i64
  %447 = sub nsw i64 0, %446
  %448 = getelementptr inbounds i8, ptr %371, i64 %447
  %449 = load i8, ptr %448, align 1, !tbaa !15
  %450 = zext i8 %449 to i32
  %451 = getelementptr inbounds i8, ptr %436, i64 3
  %452 = load i8, ptr %444, align 1, !tbaa !15
  %453 = zext i8 %452 to i64
  %454 = sub nsw i64 0, %453
  %455 = getelementptr inbounds i8, ptr %371, i64 %454
  %456 = load i8, ptr %455, align 1, !tbaa !15
  %457 = zext i8 %456 to i32
  %458 = getelementptr inbounds i8, ptr %436, i64 4
  %459 = load i8, ptr %451, align 1, !tbaa !15
  %460 = zext i8 %459 to i64
  %461 = sub nsw i64 0, %460
  %462 = getelementptr inbounds i8, ptr %371, i64 %461
  %463 = load i8, ptr %462, align 1, !tbaa !15
  %464 = zext i8 %463 to i32
  %465 = getelementptr inbounds i8, ptr %436, i64 5
  %466 = load i8, ptr %458, align 1, !tbaa !15
  %467 = zext i8 %466 to i64
  %468 = sub nsw i64 0, %467
  %469 = getelementptr inbounds i8, ptr %371, i64 %468
  %470 = load i8, ptr %469, align 1, !tbaa !15
  %471 = zext i8 %470 to i32
  %472 = getelementptr inbounds i8, ptr %436, i64 6
  %473 = load i8, ptr %465, align 1, !tbaa !15
  %474 = zext i8 %473 to i64
  %475 = sub nsw i64 0, %474
  %476 = getelementptr inbounds i8, ptr %371, i64 %475
  %477 = load i8, ptr %476, align 1, !tbaa !15
  %478 = zext i8 %477 to i32
  %479 = load i8, ptr %472, align 1, !tbaa !15
  %480 = zext i8 %479 to i64
  %481 = sub nsw i64 0, %480
  %482 = getelementptr inbounds i8, ptr %371, i64 %481
  %483 = load i8, ptr %482, align 1, !tbaa !15
  %484 = zext i8 %483 to i32
  %485 = getelementptr inbounds i8, ptr %472, i64 %42
  %486 = getelementptr inbounds i8, ptr %485, i64 1
  %487 = load i8, ptr %485, align 1, !tbaa !15
  %488 = zext i8 %487 to i64
  %489 = sub nsw i64 0, %488
  %490 = getelementptr inbounds i8, ptr %371, i64 %489
  %491 = load i8, ptr %490, align 1, !tbaa !15
  %492 = zext i8 %491 to i32
  %493 = getelementptr inbounds i8, ptr %485, i64 2
  %494 = load i8, ptr %486, align 1, !tbaa !15
  %495 = zext i8 %494 to i64
  %496 = sub nsw i64 0, %495
  %497 = getelementptr inbounds i8, ptr %371, i64 %496
  %498 = load i8, ptr %497, align 1, !tbaa !15
  %499 = zext i8 %498 to i32
  %500 = load i8, ptr %493, align 1, !tbaa !15
  %501 = zext i8 %500 to i64
  %502 = sub nsw i64 0, %501
  %503 = getelementptr inbounds i8, ptr %371, i64 %502
  %504 = load i8, ptr %503, align 1, !tbaa !15
  %505 = zext i8 %504 to i32
  %506 = getelementptr inbounds i8, ptr %485, i64 4
  %507 = getelementptr inbounds i8, ptr %485, i64 5
  %508 = load i8, ptr %506, align 1, !tbaa !15
  %509 = zext i8 %508 to i64
  %510 = sub nsw i64 0, %509
  %511 = getelementptr inbounds i8, ptr %371, i64 %510
  %512 = load i8, ptr %511, align 1, !tbaa !15
  %513 = zext i8 %512 to i32
  %514 = getelementptr inbounds i8, ptr %485, i64 6
  %515 = load i8, ptr %507, align 1, !tbaa !15
  %516 = zext i8 %515 to i64
  %517 = sub nsw i64 0, %516
  %518 = getelementptr inbounds i8, ptr %371, i64 %517
  %519 = load i8, ptr %518, align 1, !tbaa !15
  %520 = zext i8 %519 to i32
  %521 = load i8, ptr %514, align 1, !tbaa !15
  %522 = zext i8 %521 to i64
  %523 = sub nsw i64 0, %522
  %524 = getelementptr inbounds i8, ptr %371, i64 %523
  %525 = load i8, ptr %524, align 1, !tbaa !15
  %526 = zext i8 %525 to i32
  %527 = getelementptr inbounds i8, ptr %514, i64 %42
  %528 = getelementptr inbounds i8, ptr %527, i64 1
  %529 = load i8, ptr %527, align 1, !tbaa !15
  %530 = zext i8 %529 to i64
  %531 = sub nsw i64 0, %530
  %532 = getelementptr inbounds i8, ptr %371, i64 %531
  %533 = load i8, ptr %532, align 1, !tbaa !15
  %534 = zext i8 %533 to i32
  %535 = getelementptr inbounds i8, ptr %527, i64 2
  %536 = load i8, ptr %528, align 1, !tbaa !15
  %537 = zext i8 %536 to i64
  %538 = sub nsw i64 0, %537
  %539 = getelementptr inbounds i8, ptr %371, i64 %538
  %540 = load i8, ptr %539, align 1, !tbaa !15
  %541 = zext i8 %540 to i32
  %542 = getelementptr inbounds i8, ptr %527, i64 3
  %543 = load i8, ptr %535, align 1, !tbaa !15
  %544 = zext i8 %543 to i64
  %545 = sub nsw i64 0, %544
  %546 = getelementptr inbounds i8, ptr %371, i64 %545
  %547 = load i8, ptr %546, align 1, !tbaa !15
  %548 = zext i8 %547 to i32
  %549 = getelementptr inbounds i8, ptr %527, i64 4
  %550 = load i8, ptr %542, align 1, !tbaa !15
  %551 = zext i8 %550 to i64
  %552 = sub nsw i64 0, %551
  %553 = getelementptr inbounds i8, ptr %371, i64 %552
  %554 = load i8, ptr %553, align 1, !tbaa !15
  %555 = zext i8 %554 to i32
  %556 = getelementptr inbounds i8, ptr %527, i64 5
  %557 = load i8, ptr %549, align 1, !tbaa !15
  %558 = zext i8 %557 to i64
  %559 = sub nsw i64 0, %558
  %560 = getelementptr inbounds i8, ptr %371, i64 %559
  %561 = load i8, ptr %560, align 1, !tbaa !15
  %562 = zext i8 %561 to i32
  %563 = getelementptr inbounds i8, ptr %527, i64 6
  %564 = load i8, ptr %556, align 1, !tbaa !15
  %565 = zext i8 %564 to i64
  %566 = sub nsw i64 0, %565
  %567 = getelementptr inbounds i8, ptr %371, i64 %566
  %568 = load i8, ptr %567, align 1, !tbaa !15
  %569 = zext i8 %568 to i32
  %570 = load i8, ptr %563, align 1, !tbaa !15
  %571 = zext i8 %570 to i64
  %572 = sub nsw i64 0, %571
  %573 = getelementptr inbounds i8, ptr %371, i64 %572
  %574 = load i8, ptr %573, align 1, !tbaa !15
  %575 = zext i8 %574 to i32
  %576 = getelementptr inbounds i8, ptr %563, i64 %40
  %577 = getelementptr inbounds i8, ptr %576, i64 1
  %578 = load i8, ptr %576, align 1, !tbaa !15
  %579 = zext i8 %578 to i64
  %580 = sub nsw i64 0, %579
  %581 = getelementptr inbounds i8, ptr %371, i64 %580
  %582 = load i8, ptr %581, align 1, !tbaa !15
  %583 = zext i8 %582 to i32
  %584 = shl nuw nsw i32 %583, 1
  %585 = getelementptr inbounds i8, ptr %576, i64 2
  %586 = load i8, ptr %577, align 1, !tbaa !15
  %587 = zext i8 %586 to i64
  %588 = sub nsw i64 0, %587
  %589 = getelementptr inbounds i8, ptr %371, i64 %588
  %590 = load i8, ptr %589, align 1, !tbaa !15
  %591 = zext i8 %590 to i32
  %592 = getelementptr inbounds i8, ptr %576, i64 3
  %593 = load i8, ptr %585, align 1, !tbaa !15
  %594 = zext i8 %593 to i64
  %595 = sub nsw i64 0, %594
  %596 = getelementptr inbounds i8, ptr %371, i64 %595
  %597 = load i8, ptr %596, align 1, !tbaa !15
  %598 = zext i8 %597 to i32
  %599 = getelementptr inbounds i8, ptr %576, i64 4
  %600 = load i8, ptr %592, align 1, !tbaa !15
  %601 = zext i8 %600 to i64
  %602 = sub nsw i64 0, %601
  %603 = getelementptr inbounds i8, ptr %371, i64 %602
  %604 = load i8, ptr %603, align 1, !tbaa !15
  %605 = zext i8 %604 to i32
  %606 = load i8, ptr %599, align 1, !tbaa !15
  %607 = zext i8 %606 to i64
  %608 = sub nsw i64 0, %607
  %609 = getelementptr inbounds i8, ptr %371, i64 %608
  %610 = load i8, ptr %609, align 1, !tbaa !15
  %611 = zext i8 %610 to i32
  %612 = shl nuw nsw i32 %611, 1
  %613 = getelementptr inbounds i8, ptr %599, i64 %38
  %614 = getelementptr inbounds i8, ptr %613, i64 1
  %615 = load i8, ptr %613, align 1, !tbaa !15
  %616 = zext i8 %615 to i64
  %617 = sub nsw i64 0, %616
  %618 = getelementptr inbounds i8, ptr %371, i64 %617
  %619 = load i8, ptr %618, align 1, !tbaa !15
  %620 = zext i8 %619 to i32
  %621 = getelementptr inbounds i8, ptr %613, i64 2
  %622 = load i8, ptr %614, align 1, !tbaa !15
  %623 = zext i8 %622 to i64
  %624 = sub nsw i64 0, %623
  %625 = getelementptr inbounds i8, ptr %371, i64 %624
  %626 = load i8, ptr %625, align 1, !tbaa !15
  %627 = zext i8 %626 to i32
  %628 = load i8, ptr %621, align 1, !tbaa !15
  %629 = zext i8 %628 to i64
  %630 = sub nsw i64 0, %629
  %631 = getelementptr inbounds i8, ptr %371, i64 %630
  %632 = load i8, ptr %631, align 1, !tbaa !15
  %633 = zext i8 %632 to i32
  %634 = add nuw nsw i32 %443, %492
  %635 = add nuw nsw i32 %484, %526
  %636 = add nuw nsw i32 %634, %534
  %637 = sub nsw i32 %635, %636
  %638 = add nsw i32 %637, %575
  %639 = mul nsw i32 %638, 3
  %640 = add nuw nsw i32 %404, %450
  %641 = add nuw nsw i32 %434, %478
  %642 = add nuw nsw i32 %640, %499
  %643 = add nuw nsw i32 %641, %520
  %644 = add nuw nsw i32 %642, %541
  %645 = sub nsw i32 %643, %644
  %646 = add nsw i32 %645, %569
  %647 = shl nsw i32 %646, 1
  %648 = add nuw nsw i32 %381, %411
  %649 = add nuw nsw i32 %395, %427
  %650 = add nuw nsw i32 %648, %457
  %651 = add nuw nsw i32 %649, %471
  %652 = add nuw nsw i32 %650, %505
  %653 = add nuw nsw i32 %651, %513
  %654 = add nuw nsw i32 %652, %548
  %655 = add nuw nsw i32 %653, %562
  %656 = add nuw nsw i32 %654, %584
  %657 = add nuw nsw i32 %656, %591
  %658 = sub nsw i32 %655, %657
  %659 = add nsw i32 %658, %639
  %660 = add i32 %659, %647
  %661 = add i32 %660, %605
  %662 = add i32 %661, %612
  %663 = sub i32 %662, %620
  %664 = add i32 %663, %633
  %665 = sub nsw i32 %620, %396
  %666 = add nsw i32 %665, %627
  %667 = add nsw i32 %666, %633
  %668 = mul nsw i32 %667, 3
  %669 = sub nsw i32 %591, %435
  %670 = add nsw i32 %669, %598
  %671 = add nsw i32 %670, %605
  %672 = shl nsw i32 %671, 1
  %673 = add nuw nsw i32 %450, %443
  %674 = add nuw nsw i32 %673, %457
  %675 = add nuw nsw i32 %674, %464
  %676 = add nuw nsw i32 %675, %471
  %677 = add nuw nsw i32 %676, %478
  %678 = add nuw nsw i32 %677, %484
  %679 = sub nsw i32 %534, %678
  %680 = add nsw i32 %679, %541
  %681 = add nsw i32 %680, %548
  %682 = add nsw i32 %681, %555
  %683 = add nsw i32 %682, %562
  %684 = add nsw i32 %683, %569
  %685 = add nsw i32 %684, %575
  %686 = add nsw i32 %685, %584
  %687 = add nsw i32 %686, %612
  %688 = add i32 %687, %672
  %689 = add i32 %688, %668
  %690 = mul nsw i32 %664, %664
  %691 = mul nsw i32 %689, %689
  %692 = add nuw nsw i32 %691, %690
  %693 = sitofp i32 %692 to float
  %694 = tail call float @sqrtf(float noundef %693) #10
  %695 = fpext float %694 to double
  %696 = sitofp i32 %367 to float
  %697 = fpext float %696 to double
  %698 = fmul double %697, 9.000000e-01
  %699 = fcmp olt double %698, %695
  br i1 %699, label %700, label %755

700:                                              ; preds = %373
  %701 = icmp eq i32 %664, 0
  %702 = sitofp i32 %689 to float
  %703 = sitofp i32 %664 to float
  %704 = fdiv float %702, %703
  %705 = select i1 %701, float 1.000000e+06, float %704
  %706 = fcmp uge float %705, 0.000000e+00
  %707 = fneg float %705
  %708 = select i1 %706, float %705, float %707
  %709 = fcmp olt float %708, 5.000000e-01
  br i1 %709, label %714, label %710

710:                                              ; preds = %700
  %711 = fcmp ogt float %708, 2.000000e+00
  br i1 %711, label %714, label %712

712:                                              ; preds = %710
  %713 = select i1 %706, i32 1, i32 -1
  br label %714

714:                                              ; preds = %712, %710, %700
  %715 = phi i32 [ 0, %700 ], [ 1, %710 ], [ %713, %712 ]
  %716 = phi i32 [ 1, %700 ], [ 0, %710 ], [ 1, %712 ]
  %717 = add nsw i32 %715, %359
  %718 = mul nsw i32 %717, %5
  %719 = trunc i64 %361 to i32
  %720 = add nuw nsw i32 %716, %719
  %721 = add i32 %720, %718
  %722 = sext i32 %721 to i64
  %723 = getelementptr inbounds i32, ptr %1, i64 %722
  %724 = load i32, ptr %723, align 4, !tbaa !11
  %725 = icmp sgt i32 %364, %724
  br i1 %725, label %726, label %1154

726:                                              ; preds = %714
  %727 = sub nsw i32 %359, %715
  %728 = mul nsw i32 %727, %5
  %729 = sub nsw i32 %719, %716
  %730 = add i32 %729, %728
  %731 = sext i32 %730 to i64
  %732 = getelementptr inbounds i32, ptr %1, i64 %731
  %733 = load i32, ptr %732, align 4, !tbaa !11
  %734 = icmp slt i32 %364, %733
  br i1 %734, label %1154, label %735

735:                                              ; preds = %726
  %736 = shl nsw i32 %715, 1
  %737 = add nsw i32 %736, %359
  %738 = mul nsw i32 %737, %5
  %739 = shl nuw nsw i32 %716, 1
  %740 = add nuw i32 %739, %719
  %741 = add i32 %740, %738
  %742 = sext i32 %741 to i64
  %743 = getelementptr inbounds i32, ptr %1, i64 %742
  %744 = load i32, ptr %743, align 4, !tbaa !11
  %745 = icmp sgt i32 %364, %744
  br i1 %745, label %746, label %1154

746:                                              ; preds = %735
  %747 = sub nsw i32 %359, %736
  %748 = mul nsw i32 %747, %5
  %749 = sub nsw i32 %719, %739
  %750 = add i32 %749, %748
  %751 = sext i32 %750 to i64
  %752 = getelementptr inbounds i32, ptr %1, i64 %751
  %753 = load i32, ptr %752, align 4, !tbaa !11
  %754 = icmp slt i32 %364, %753
  br i1 %754, label %1154, label %1151

755:                                              ; preds = %373, %366
  %756 = getelementptr inbounds i8, ptr %357, i64 %361
  %757 = getelementptr inbounds i8, ptr %756, i64 -1
  %758 = load i8, ptr %757, align 1, !tbaa !15
  %759 = zext i8 %758 to i64
  %760 = sub nsw i64 0, %759
  %761 = getelementptr inbounds i8, ptr %371, i64 %760
  %762 = load i8, ptr %761, align 1, !tbaa !15
  %763 = zext i8 %762 to i32
  %764 = getelementptr inbounds i8, ptr %756, i64 1
  %765 = load i8, ptr %756, align 1, !tbaa !15
  %766 = zext i8 %765 to i64
  %767 = sub nsw i64 0, %766
  %768 = getelementptr inbounds i8, ptr %371, i64 %767
  %769 = load i8, ptr %768, align 1, !tbaa !15
  %770 = zext i8 %769 to i32
  %771 = load i8, ptr %764, align 1, !tbaa !15
  %772 = zext i8 %771 to i64
  %773 = sub nsw i64 0, %772
  %774 = getelementptr inbounds i8, ptr %371, i64 %773
  %775 = load i8, ptr %774, align 1, !tbaa !15
  %776 = zext i8 %775 to i32
  %777 = getelementptr inbounds i8, ptr %764, i64 %38
  %778 = getelementptr inbounds i8, ptr %777, i64 1
  %779 = load i8, ptr %777, align 1, !tbaa !15
  %780 = zext i8 %779 to i64
  %781 = sub nsw i64 0, %780
  %782 = getelementptr inbounds i8, ptr %371, i64 %781
  %783 = load i8, ptr %782, align 1, !tbaa !15
  %784 = zext i8 %783 to i32
  %785 = shl nuw nsw i32 %784, 2
  %786 = getelementptr inbounds i8, ptr %777, i64 2
  %787 = load i8, ptr %778, align 1, !tbaa !15
  %788 = zext i8 %787 to i64
  %789 = sub nsw i64 0, %788
  %790 = getelementptr inbounds i8, ptr %371, i64 %789
  %791 = load i8, ptr %790, align 1, !tbaa !15
  %792 = zext i8 %791 to i32
  %793 = getelementptr inbounds i8, ptr %777, i64 3
  %794 = load i8, ptr %786, align 1, !tbaa !15
  %795 = zext i8 %794 to i64
  %796 = sub nsw i64 0, %795
  %797 = getelementptr inbounds i8, ptr %371, i64 %796
  %798 = load i8, ptr %797, align 1, !tbaa !15
  %799 = zext i8 %798 to i32
  %800 = getelementptr inbounds i8, ptr %777, i64 4
  %801 = load i8, ptr %793, align 1, !tbaa !15
  %802 = zext i8 %801 to i64
  %803 = sub nsw i64 0, %802
  %804 = getelementptr inbounds i8, ptr %371, i64 %803
  %805 = load i8, ptr %804, align 1, !tbaa !15
  %806 = zext i8 %805 to i32
  %807 = load i8, ptr %800, align 1, !tbaa !15
  %808 = zext i8 %807 to i64
  %809 = sub nsw i64 0, %808
  %810 = getelementptr inbounds i8, ptr %371, i64 %809
  %811 = load i8, ptr %810, align 1, !tbaa !15
  %812 = zext i8 %811 to i32
  %813 = shl nuw nsw i32 %812, 2
  %814 = getelementptr inbounds i8, ptr %800, i64 %40
  %815 = getelementptr inbounds i8, ptr %814, i64 1
  %816 = load i8, ptr %814, align 1, !tbaa !15
  %817 = zext i8 %816 to i64
  %818 = sub nsw i64 0, %817
  %819 = getelementptr inbounds i8, ptr %371, i64 %818
  %820 = load i8, ptr %819, align 1, !tbaa !15
  %821 = zext i8 %820 to i32
  %822 = getelementptr inbounds i8, ptr %814, i64 2
  %823 = load i8, ptr %815, align 1, !tbaa !15
  %824 = zext i8 %823 to i64
  %825 = sub nsw i64 0, %824
  %826 = getelementptr inbounds i8, ptr %371, i64 %825
  %827 = load i8, ptr %826, align 1, !tbaa !15
  %828 = zext i8 %827 to i32
  %829 = getelementptr inbounds i8, ptr %814, i64 3
  %830 = load i8, ptr %822, align 1, !tbaa !15
  %831 = zext i8 %830 to i64
  %832 = sub nsw i64 0, %831
  %833 = getelementptr inbounds i8, ptr %371, i64 %832
  %834 = load i8, ptr %833, align 1, !tbaa !15
  %835 = zext i8 %834 to i32
  %836 = getelementptr inbounds i8, ptr %814, i64 4
  %837 = load i8, ptr %829, align 1, !tbaa !15
  %838 = zext i8 %837 to i64
  %839 = sub nsw i64 0, %838
  %840 = getelementptr inbounds i8, ptr %371, i64 %839
  %841 = load i8, ptr %840, align 1, !tbaa !15
  %842 = zext i8 %841 to i32
  %843 = getelementptr inbounds i8, ptr %814, i64 5
  %844 = load i8, ptr %836, align 1, !tbaa !15
  %845 = zext i8 %844 to i64
  %846 = sub nsw i64 0, %845
  %847 = getelementptr inbounds i8, ptr %371, i64 %846
  %848 = load i8, ptr %847, align 1, !tbaa !15
  %849 = zext i8 %848 to i32
  %850 = getelementptr inbounds i8, ptr %814, i64 6
  %851 = load i8, ptr %843, align 1, !tbaa !15
  %852 = zext i8 %851 to i64
  %853 = sub nsw i64 0, %852
  %854 = getelementptr inbounds i8, ptr %371, i64 %853
  %855 = load i8, ptr %854, align 1, !tbaa !15
  %856 = zext i8 %855 to i32
  %857 = load i8, ptr %850, align 1, !tbaa !15
  %858 = zext i8 %857 to i64
  %859 = sub nsw i64 0, %858
  %860 = getelementptr inbounds i8, ptr %371, i64 %859
  %861 = load i8, ptr %860, align 1, !tbaa !15
  %862 = zext i8 %861 to i32
  %863 = getelementptr inbounds i8, ptr %850, i64 %42
  %864 = getelementptr inbounds i8, ptr %863, i64 6
  %865 = getelementptr inbounds i8, ptr %864, i64 %42
  %866 = getelementptr inbounds i8, ptr %865, i64 1
  %867 = load i8, ptr %865, align 1, !tbaa !15
  %868 = zext i8 %867 to i64
  %869 = sub nsw i64 0, %868
  %870 = getelementptr inbounds i8, ptr %371, i64 %869
  %871 = load i8, ptr %870, align 1, !tbaa !15
  %872 = zext i8 %871 to i32
  %873 = getelementptr inbounds i8, ptr %865, i64 2
  %874 = load i8, ptr %866, align 1, !tbaa !15
  %875 = zext i8 %874 to i64
  %876 = sub nsw i64 0, %875
  %877 = getelementptr inbounds i8, ptr %371, i64 %876
  %878 = load i8, ptr %877, align 1, !tbaa !15
  %879 = zext i8 %878 to i32
  %880 = getelementptr inbounds i8, ptr %865, i64 3
  %881 = load i8, ptr %873, align 1, !tbaa !15
  %882 = zext i8 %881 to i64
  %883 = sub nsw i64 0, %882
  %884 = getelementptr inbounds i8, ptr %371, i64 %883
  %885 = load i8, ptr %884, align 1, !tbaa !15
  %886 = zext i8 %885 to i32
  %887 = getelementptr inbounds i8, ptr %865, i64 4
  %888 = load i8, ptr %880, align 1, !tbaa !15
  %889 = zext i8 %888 to i64
  %890 = sub nsw i64 0, %889
  %891 = getelementptr inbounds i8, ptr %371, i64 %890
  %892 = load i8, ptr %891, align 1, !tbaa !15
  %893 = zext i8 %892 to i32
  %894 = getelementptr inbounds i8, ptr %865, i64 5
  %895 = load i8, ptr %887, align 1, !tbaa !15
  %896 = zext i8 %895 to i64
  %897 = sub nsw i64 0, %896
  %898 = getelementptr inbounds i8, ptr %371, i64 %897
  %899 = load i8, ptr %898, align 1, !tbaa !15
  %900 = zext i8 %899 to i32
  %901 = getelementptr inbounds i8, ptr %865, i64 6
  %902 = load i8, ptr %894, align 1, !tbaa !15
  %903 = zext i8 %902 to i64
  %904 = sub nsw i64 0, %903
  %905 = getelementptr inbounds i8, ptr %371, i64 %904
  %906 = load i8, ptr %905, align 1, !tbaa !15
  %907 = zext i8 %906 to i32
  %908 = load i8, ptr %901, align 1, !tbaa !15
  %909 = zext i8 %908 to i64
  %910 = sub nsw i64 0, %909
  %911 = getelementptr inbounds i8, ptr %371, i64 %910
  %912 = load i8, ptr %911, align 1, !tbaa !15
  %913 = zext i8 %912 to i32
  %914 = getelementptr inbounds i8, ptr %901, i64 %40
  %915 = getelementptr inbounds i8, ptr %914, i64 1
  %916 = load i8, ptr %914, align 1, !tbaa !15
  %917 = zext i8 %916 to i64
  %918 = sub nsw i64 0, %917
  %919 = getelementptr inbounds i8, ptr %371, i64 %918
  %920 = load i8, ptr %919, align 1, !tbaa !15
  %921 = zext i8 %920 to i32
  %922 = shl nuw nsw i32 %921, 2
  %923 = getelementptr inbounds i8, ptr %914, i64 2
  %924 = load i8, ptr %915, align 1, !tbaa !15
  %925 = zext i8 %924 to i64
  %926 = sub nsw i64 0, %925
  %927 = getelementptr inbounds i8, ptr %371, i64 %926
  %928 = load i8, ptr %927, align 1, !tbaa !15
  %929 = zext i8 %928 to i32
  %930 = getelementptr inbounds i8, ptr %914, i64 3
  %931 = load i8, ptr %923, align 1, !tbaa !15
  %932 = zext i8 %931 to i64
  %933 = sub nsw i64 0, %932
  %934 = getelementptr inbounds i8, ptr %371, i64 %933
  %935 = load i8, ptr %934, align 1, !tbaa !15
  %936 = zext i8 %935 to i32
  %937 = getelementptr inbounds i8, ptr %914, i64 4
  %938 = load i8, ptr %930, align 1, !tbaa !15
  %939 = zext i8 %938 to i64
  %940 = sub nsw i64 0, %939
  %941 = getelementptr inbounds i8, ptr %371, i64 %940
  %942 = load i8, ptr %941, align 1, !tbaa !15
  %943 = zext i8 %942 to i32
  %944 = load i8, ptr %937, align 1, !tbaa !15
  %945 = zext i8 %944 to i64
  %946 = sub nsw i64 0, %945
  %947 = getelementptr inbounds i8, ptr %371, i64 %946
  %948 = load i8, ptr %947, align 1, !tbaa !15
  %949 = zext i8 %948 to i32
  %950 = shl nuw nsw i32 %949, 2
  %951 = getelementptr inbounds i8, ptr %937, i64 %38
  %952 = getelementptr inbounds i8, ptr %951, i64 1
  %953 = load i8, ptr %951, align 1, !tbaa !15
  %954 = zext i8 %953 to i64
  %955 = sub nsw i64 0, %954
  %956 = getelementptr inbounds i8, ptr %371, i64 %955
  %957 = load i8, ptr %956, align 1, !tbaa !15
  %958 = zext i8 %957 to i32
  %959 = getelementptr inbounds i8, ptr %951, i64 2
  %960 = load i8, ptr %952, align 1, !tbaa !15
  %961 = zext i8 %960 to i64
  %962 = sub nsw i64 0, %961
  %963 = getelementptr inbounds i8, ptr %371, i64 %962
  %964 = load i8, ptr %963, align 1, !tbaa !15
  %965 = zext i8 %964 to i32
  %966 = load i8, ptr %959, align 1, !tbaa !15
  %967 = zext i8 %966 to i64
  %968 = sub nsw i64 0, %967
  %969 = getelementptr inbounds i8, ptr %371, i64 %968
  %970 = load i8, ptr %969, align 1, !tbaa !15
  %971 = zext i8 %970 to i32
  %972 = add nuw nsw i32 %799, %792
  %973 = add nuw nsw i32 %972, %806
  %974 = add nuw nsw i32 %973, %929
  %975 = add nuw nsw i32 %974, %936
  %976 = add nuw nsw i32 %975, %943
  %977 = shl nuw nsw i32 %976, 2
  %978 = add nuw nsw i32 %770, %763
  %979 = add nuw nsw i32 %978, %776
  %980 = add nuw nsw i32 %979, %958
  %981 = add nuw nsw i32 %980, %965
  %982 = add nuw nsw i32 %981, %971
  %983 = mul nuw nsw i32 %982, 9
  %984 = add nuw nsw i32 %813, %785
  %985 = add nuw nsw i32 %984, %821
  %986 = add nuw nsw i32 %985, %828
  %987 = add nuw nsw i32 %986, %835
  %988 = add nuw nsw i32 %987, %842
  %989 = add nuw nsw i32 %988, %849
  %990 = add nuw nsw i32 %989, %856
  %991 = add nuw nsw i32 %990, %862
  %992 = add nuw nsw i32 %991, %872
  %993 = add nuw nsw i32 %992, %879
  %994 = add nuw nsw i32 %993, %886
  %995 = add nuw nsw i32 %994, %893
  %996 = add nuw nsw i32 %995, %900
  %997 = add nuw nsw i32 %996, %907
  %998 = add nuw nsw i32 %997, %913
  %999 = add nuw nsw i32 %998, %922
  %1000 = add nuw nsw i32 %999, %950
  %1001 = add nuw nsw i32 %1000, %977
  %1002 = add nuw nsw i32 %1001, %983
  %1003 = add nuw nsw i32 %763, %821
  %1004 = add nuw nsw i32 %776, %862
  %1005 = add nuw nsw i32 %1004, %872
  %1006 = add nuw nsw i32 %1003, %913
  %1007 = add nuw nsw i32 %1005, %958
  %1008 = sub nsw i32 %1006, %1007
  %1009 = add nsw i32 %1008, %971
  %1010 = mul nsw i32 %1009, 3
  %1011 = add nuw nsw i32 %792, %828
  %1012 = add nuw nsw i32 %806, %856
  %1013 = add nuw nsw i32 %1012, %879
  %1014 = add nuw nsw i32 %1011, %907
  %1015 = add nuw nsw i32 %1013, %929
  %1016 = sub nsw i32 %1014, %1015
  %1017 = add nsw i32 %1016, %943
  %1018 = shl nsw i32 %1017, 1
  %1019 = add nuw nsw i32 %785, %835
  %1020 = add nuw nsw i32 %813, %849
  %1021 = add nuw nsw i32 %1020, %886
  %1022 = add nuw nsw i32 %1019, %900
  %1023 = add nuw nsw i32 %1021, %922
  %1024 = sub nsw i32 %1022, %1023
  %1025 = add nsw i32 %1024, %950
  %1026 = add i32 %1025, %1018
  %1027 = add i32 %1026, %1010
  %1028 = icmp eq i32 %1002, 0
  br i1 %1028, label %1110, label %1029

1029:                                             ; preds = %755
  %1030 = load i8, ptr %863, align 1, !tbaa !15
  %1031 = zext i8 %1030 to i64
  %1032 = sub nsw i64 0, %1031
  %1033 = getelementptr inbounds i8, ptr %371, i64 %1032
  %1034 = load i8, ptr %1033, align 1, !tbaa !15
  %1035 = zext i8 %1034 to i32
  %1036 = getelementptr inbounds i8, ptr %863, i64 1
  %1037 = load i8, ptr %1036, align 1, !tbaa !15
  %1038 = zext i8 %1037 to i64
  %1039 = sub nsw i64 0, %1038
  %1040 = getelementptr inbounds i8, ptr %371, i64 %1039
  %1041 = load i8, ptr %1040, align 1, !tbaa !15
  %1042 = zext i8 %1041 to i32
  %1043 = getelementptr inbounds i8, ptr %863, i64 2
  %1044 = load i8, ptr %1043, align 1, !tbaa !15
  %1045 = zext i8 %1044 to i64
  %1046 = sub nsw i64 0, %1045
  %1047 = getelementptr inbounds i8, ptr %371, i64 %1046
  %1048 = load i8, ptr %1047, align 1, !tbaa !15
  %1049 = zext i8 %1048 to i32
  %1050 = getelementptr inbounds i8, ptr %863, i64 4
  %1051 = load i8, ptr %1050, align 1, !tbaa !15
  %1052 = zext i8 %1051 to i64
  %1053 = sub nsw i64 0, %1052
  %1054 = getelementptr inbounds i8, ptr %371, i64 %1053
  %1055 = load i8, ptr %1054, align 1, !tbaa !15
  %1056 = zext i8 %1055 to i32
  %1057 = getelementptr inbounds i8, ptr %863, i64 5
  %1058 = load i8, ptr %1057, align 1, !tbaa !15
  %1059 = zext i8 %1058 to i64
  %1060 = sub nsw i64 0, %1059
  %1061 = getelementptr inbounds i8, ptr %371, i64 %1060
  %1062 = load i8, ptr %1061, align 1, !tbaa !15
  %1063 = zext i8 %1062 to i32
  %1064 = load i8, ptr %864, align 1, !tbaa !15
  %1065 = zext i8 %1064 to i64
  %1066 = sub nsw i64 0, %1065
  %1067 = getelementptr inbounds i8, ptr %371, i64 %1066
  %1068 = load i8, ptr %1067, align 1, !tbaa !15
  %1069 = zext i8 %1068 to i32
  %1070 = add nuw nsw i32 %856, %828
  %1071 = add nuw nsw i32 %1070, %879
  %1072 = add nuw nsw i32 %1071, %907
  %1073 = add nuw nsw i32 %1072, %1042
  %1074 = add nuw nsw i32 %1073, %1063
  %1075 = shl nuw nsw i32 %1074, 2
  %1076 = add nuw nsw i32 %862, %821
  %1077 = add nuw nsw i32 %1076, %872
  %1078 = add nuw nsw i32 %1077, %913
  %1079 = add nuw nsw i32 %1078, %1035
  %1080 = add nuw nsw i32 %1079, %1069
  %1081 = mul nuw nsw i32 %1080, 9
  %1082 = add nuw nsw i32 %776, %763
  %1083 = add nuw nsw i32 %1082, %785
  %1084 = add nuw nsw i32 %1083, %792
  %1085 = add nuw nsw i32 %1084, %806
  %1086 = add nuw nsw i32 %1085, %813
  %1087 = add nuw nsw i32 %1086, %835
  %1088 = add nuw nsw i32 %1087, %849
  %1089 = add nuw nsw i32 %1088, %886
  %1090 = add nuw nsw i32 %1089, %900
  %1091 = add nuw nsw i32 %1090, %922
  %1092 = add nuw nsw i32 %1091, %929
  %1093 = add nuw nsw i32 %1092, %943
  %1094 = add nuw nsw i32 %1093, %950
  %1095 = add nuw nsw i32 %1094, %958
  %1096 = add nuw nsw i32 %1095, %971
  %1097 = add nuw nsw i32 %1096, %1049
  %1098 = add nuw nsw i32 %1097, %1056
  %1099 = add nuw nsw i32 %1098, %1075
  %1100 = add nuw nsw i32 %1099, %1081
  %1101 = sitofp i32 %1100 to float
  %1102 = sitofp i32 %1002 to float
  %1103 = fdiv float %1101, %1102
  %1104 = fcmp olt float %1103, 5.000000e-01
  br i1 %1104, label %1110, label %1105

1105:                                             ; preds = %1029
  %1106 = fcmp ogt float %1103, 2.000000e+00
  br i1 %1106, label %1110, label %1107

1107:                                             ; preds = %1105
  %1108 = icmp slt i32 %1027, 1
  %1109 = select i1 %1108, i32 1, i32 -1
  br label %1110

1110:                                             ; preds = %1107, %1105, %1029, %755
  %1111 = phi i32 [ 0, %1029 ], [ 1, %1105 ], [ %1109, %1107 ], [ 1, %755 ]
  %1112 = phi i32 [ 1, %1029 ], [ 0, %1105 ], [ 1, %1107 ], [ 0, %755 ]
  %1113 = add nsw i32 %1111, %358
  %1114 = mul nsw i32 %1113, %5
  %1115 = trunc i64 %361 to i32
  %1116 = add nuw nsw i32 %1112, %1115
  %1117 = add i32 %1116, %1114
  %1118 = sext i32 %1117 to i64
  %1119 = getelementptr inbounds i32, ptr %1, i64 %1118
  %1120 = load i32, ptr %1119, align 4, !tbaa !11
  %1121 = icmp sgt i32 %364, %1120
  br i1 %1121, label %1122, label %1154

1122:                                             ; preds = %1110
  %1123 = sub nsw i32 %358, %1111
  %1124 = mul nsw i32 %1123, %5
  %1125 = sub nsw i32 %1115, %1112
  %1126 = add i32 %1125, %1124
  %1127 = sext i32 %1126 to i64
  %1128 = getelementptr inbounds i32, ptr %1, i64 %1127
  %1129 = load i32, ptr %1128, align 4, !tbaa !11
  %1130 = icmp slt i32 %364, %1129
  br i1 %1130, label %1154, label %1131

1131:                                             ; preds = %1122
  %1132 = shl nsw i32 %1111, 1
  %1133 = add nsw i32 %1132, %358
  %1134 = mul nsw i32 %1133, %5
  %1135 = shl nuw nsw i32 %1112, 1
  %1136 = add nuw i32 %1135, %1115
  %1137 = add i32 %1136, %1134
  %1138 = sext i32 %1137 to i64
  %1139 = getelementptr inbounds i32, ptr %1, i64 %1138
  %1140 = load i32, ptr %1139, align 4, !tbaa !11
  %1141 = icmp sgt i32 %364, %1140
  br i1 %1141, label %1142, label %1154

1142:                                             ; preds = %1131
  %1143 = sub nsw i32 %358, %1132
  %1144 = mul nsw i32 %1143, %5
  %1145 = sub nsw i32 %1115, %1135
  %1146 = add i32 %1145, %1144
  %1147 = sext i32 %1146 to i64
  %1148 = getelementptr inbounds i32, ptr %1, i64 %1147
  %1149 = load i32, ptr %1148, align 4, !tbaa !11
  %1150 = icmp slt i32 %364, %1149
  br i1 %1150, label %1154, label %1151

1151:                                             ; preds = %1142, %746
  %1152 = phi i8 [ 1, %746 ], [ 2, %1142 ]
  %1153 = getelementptr inbounds i8, ptr %2, i64 %362
  store i8 %1152, ptr %1153, align 1, !tbaa !15
  br label %1154

1154:                                             ; preds = %1151, %1142, %1131, %1122, %1110, %746, %735, %726, %714, %360
  %1155 = add nuw nsw i64 %361, 1
  %1156 = icmp eq i64 %1155, %45
  br i1 %1156, label %1157, label %360, !llvm.loop !44

1157:                                             ; preds = %1154, %351
  %1158 = add nuw nsw i64 %352, 1
  %1159 = icmp eq i64 %1158, %44
  br i1 %1159, label %1160, label %351, !llvm.loop !45

1160:                                             ; preds = %1157, %31, %7
  ret i32 undef
}

declare float @sqrtf(float) local_unnamed_addr

; Function Attrs: nofree nounwind optsize memory(readwrite, inaccessiblemem: write) uwtable
define internal i32 @susan_edges_small(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef readonly %3, i32 %4, i32 noundef %5, i32 noundef %6) #17 {
  %8 = mul nsw i32 %6, %5
  %9 = sext i32 %8 to i64
  %10 = shl nsw i64 %9, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %1, i8 0, i64 %10, i1 false)
  %11 = icmp sgt i32 %6, 2
  br i1 %11, label %12, label %360

12:                                               ; preds = %7
  %13 = add nsw i32 %6, -1
  %14 = add i32 %5, -1
  %15 = icmp sgt i32 %5, 2
  %16 = add nsw i32 %5, -2
  %17 = sext i32 %16 to i64
  %18 = sext i32 %5 to i64
  %19 = zext i32 %13 to i64
  %20 = zext i32 %14 to i64
  br label %21

21:                                               ; preds = %116, %12
  %22 = phi i64 [ 1, %12 ], [ %117, %116 ]
  br i1 %15, label %23, label %116

23:                                               ; preds = %21
  %24 = add nsw i64 %22, -1
  %25 = mul nsw i64 %24, %18
  %26 = getelementptr inbounds i8, ptr %0, i64 %25
  %27 = mul nsw i64 %22, %18
  br label %38

28:                                               ; preds = %116
  %29 = icmp sgt i32 %6, 4
  br i1 %29, label %30, label %360

30:                                               ; preds = %28
  %31 = add nsw i32 %6, -2
  %32 = add i32 %5, -2
  %33 = icmp sgt i32 %5, 4
  %34 = sext i32 %32 to i64
  %35 = sext i32 %5 to i64
  %36 = zext i32 %31 to i64
  %37 = zext i32 %32 to i64
  br label %119

38:                                               ; preds = %113, %23
  %39 = phi i64 [ 1, %23 ], [ %114, %113 ]
  %40 = getelementptr inbounds i8, ptr %26, i64 %39
  %41 = getelementptr inbounds i8, ptr %40, i64 -1
  %42 = add nsw i64 %39, %27
  %43 = getelementptr inbounds i8, ptr %0, i64 %42
  %44 = load i8, ptr %43, align 1, !tbaa !15
  %45 = zext i8 %44 to i64
  %46 = getelementptr inbounds i8, ptr %3, i64 %45
  %47 = load i8, ptr %41, align 1, !tbaa !15
  %48 = zext i8 %47 to i64
  %49 = sub nsw i64 0, %48
  %50 = getelementptr inbounds i8, ptr %46, i64 %49
  %51 = load i8, ptr %50, align 1, !tbaa !15
  %52 = zext i8 %51 to i32
  %53 = add nuw nsw i32 %52, 100
  %54 = getelementptr inbounds i8, ptr %40, i64 1
  %55 = load i8, ptr %40, align 1, !tbaa !15
  %56 = zext i8 %55 to i64
  %57 = sub nsw i64 0, %56
  %58 = getelementptr inbounds i8, ptr %46, i64 %57
  %59 = load i8, ptr %58, align 1, !tbaa !15
  %60 = zext i8 %59 to i32
  %61 = add nuw nsw i32 %53, %60
  %62 = load i8, ptr %54, align 1, !tbaa !15
  %63 = zext i8 %62 to i64
  %64 = sub nsw i64 0, %63
  %65 = getelementptr inbounds i8, ptr %46, i64 %64
  %66 = load i8, ptr %65, align 1, !tbaa !15
  %67 = zext i8 %66 to i32
  %68 = add nuw nsw i32 %61, %67
  %69 = getelementptr inbounds i8, ptr %54, i64 %17
  %70 = load i8, ptr %69, align 1, !tbaa !15
  %71 = zext i8 %70 to i64
  %72 = sub nsw i64 0, %71
  %73 = getelementptr inbounds i8, ptr %46, i64 %72
  %74 = load i8, ptr %73, align 1, !tbaa !15
  %75 = zext i8 %74 to i32
  %76 = add nuw nsw i32 %68, %75
  %77 = getelementptr inbounds i8, ptr %69, i64 2
  %78 = load i8, ptr %77, align 1, !tbaa !15
  %79 = zext i8 %78 to i64
  %80 = sub nsw i64 0, %79
  %81 = getelementptr inbounds i8, ptr %46, i64 %80
  %82 = load i8, ptr %81, align 1, !tbaa !15
  %83 = zext i8 %82 to i32
  %84 = add nuw nsw i32 %76, %83
  %85 = getelementptr inbounds i8, ptr %77, i64 %17
  %86 = getelementptr inbounds i8, ptr %85, i64 1
  %87 = load i8, ptr %85, align 1, !tbaa !15
  %88 = zext i8 %87 to i64
  %89 = sub nsw i64 0, %88
  %90 = getelementptr inbounds i8, ptr %46, i64 %89
  %91 = load i8, ptr %90, align 1, !tbaa !15
  %92 = zext i8 %91 to i32
  %93 = add nuw nsw i32 %84, %92
  %94 = getelementptr inbounds i8, ptr %85, i64 2
  %95 = load i8, ptr %86, align 1, !tbaa !15
  %96 = zext i8 %95 to i64
  %97 = sub nsw i64 0, %96
  %98 = getelementptr inbounds i8, ptr %46, i64 %97
  %99 = load i8, ptr %98, align 1, !tbaa !15
  %100 = zext i8 %99 to i32
  %101 = add nuw nsw i32 %93, %100
  %102 = load i8, ptr %94, align 1, !tbaa !15
  %103 = zext i8 %102 to i64
  %104 = sub nsw i64 0, %103
  %105 = getelementptr inbounds i8, ptr %46, i64 %104
  %106 = load i8, ptr %105, align 1, !tbaa !15
  %107 = zext i8 %106 to i32
  %108 = add nuw nsw i32 %101, %107
  %109 = icmp ult i32 %108, 731
  br i1 %109, label %110, label %113

110:                                              ; preds = %38
  %111 = sub nuw nsw i32 730, %108
  %112 = getelementptr inbounds i32, ptr %1, i64 %42
  store i32 %111, ptr %112, align 4, !tbaa !11
  br label %113

113:                                              ; preds = %110, %38
  %114 = add nuw nsw i64 %39, 1
  %115 = icmp eq i64 %114, %20
  br i1 %115, label %116, label %38, !llvm.loop !46

116:                                              ; preds = %113, %21
  %117 = add nuw nsw i64 %22, 1
  %118 = icmp eq i64 %117, %19
  br i1 %118, label %28, label %21, !llvm.loop !47

119:                                              ; preds = %357, %30
  %120 = phi i64 [ 2, %30 ], [ %358, %357 ]
  br i1 %33, label %121, label %357

121:                                              ; preds = %119
  %122 = mul nsw i64 %120, %35
  %123 = add nsw i64 %120, -1
  %124 = mul nsw i64 %123, %35
  %125 = getelementptr inbounds i8, ptr %0, i64 %124
  %126 = trunc i64 %120 to i32
  %127 = trunc i64 %120 to i32
  br label %128

128:                                              ; preds = %354, %121
  %129 = phi i64 [ 2, %121 ], [ %355, %354 ]
  %130 = add nsw i64 %129, %122
  %131 = getelementptr inbounds i32, ptr %1, i64 %130
  %132 = load i32, ptr %131, align 4, !tbaa !11
  %133 = icmp sgt i32 %132, 0
  br i1 %133, label %134, label %354

134:                                              ; preds = %128
  %135 = getelementptr inbounds i8, ptr %0, i64 %130
  %136 = load i8, ptr %135, align 1, !tbaa !15
  %137 = zext i8 %136 to i64
  %138 = getelementptr inbounds i8, ptr %3, i64 %137
  %139 = icmp ult i32 %132, 480
  br i1 %139, label %140, label %253

140:                                              ; preds = %134
  %141 = sub nuw nsw i32 730, %132
  %142 = getelementptr inbounds i8, ptr %125, i64 %129
  %143 = getelementptr inbounds i8, ptr %142, i64 -1
  %144 = load i8, ptr %143, align 1, !tbaa !15
  %145 = zext i8 %144 to i64
  %146 = sub nsw i64 0, %145
  %147 = getelementptr inbounds i8, ptr %138, i64 %146
  %148 = load i8, ptr %147, align 1, !tbaa !15
  %149 = zext i8 %148 to i32
  %150 = getelementptr inbounds i8, ptr %142, i64 1
  %151 = load i8, ptr %142, align 1, !tbaa !15
  %152 = zext i8 %151 to i64
  %153 = sub nsw i64 0, %152
  %154 = getelementptr inbounds i8, ptr %138, i64 %153
  %155 = load i8, ptr %154, align 1, !tbaa !15
  %156 = zext i8 %155 to i32
  %157 = load i8, ptr %150, align 1, !tbaa !15
  %158 = zext i8 %157 to i64
  %159 = sub nsw i64 0, %158
  %160 = getelementptr inbounds i8, ptr %138, i64 %159
  %161 = load i8, ptr %160, align 1, !tbaa !15
  %162 = zext i8 %161 to i32
  %163 = getelementptr inbounds i8, ptr %150, i64 %34
  %164 = load i8, ptr %163, align 1, !tbaa !15
  %165 = zext i8 %164 to i64
  %166 = sub nsw i64 0, %165
  %167 = getelementptr inbounds i8, ptr %138, i64 %166
  %168 = load i8, ptr %167, align 1, !tbaa !15
  %169 = zext i8 %168 to i32
  %170 = getelementptr inbounds i8, ptr %163, i64 2
  %171 = load i8, ptr %170, align 1, !tbaa !15
  %172 = zext i8 %171 to i64
  %173 = sub nsw i64 0, %172
  %174 = getelementptr inbounds i8, ptr %138, i64 %173
  %175 = load i8, ptr %174, align 1, !tbaa !15
  %176 = zext i8 %175 to i32
  %177 = getelementptr inbounds i8, ptr %170, i64 %34
  %178 = getelementptr inbounds i8, ptr %177, i64 1
  %179 = load i8, ptr %177, align 1, !tbaa !15
  %180 = zext i8 %179 to i64
  %181 = sub nsw i64 0, %180
  %182 = getelementptr inbounds i8, ptr %138, i64 %181
  %183 = load i8, ptr %182, align 1, !tbaa !15
  %184 = zext i8 %183 to i32
  %185 = add nuw nsw i32 %156, %149
  %186 = add nuw nsw i32 %185, %162
  %187 = sub nsw i32 %184, %186
  %188 = getelementptr inbounds i8, ptr %177, i64 2
  %189 = load i8, ptr %178, align 1, !tbaa !15
  %190 = zext i8 %189 to i64
  %191 = sub nsw i64 0, %190
  %192 = getelementptr inbounds i8, ptr %138, i64 %191
  %193 = load i8, ptr %192, align 1, !tbaa !15
  %194 = zext i8 %193 to i32
  %195 = add nsw i32 %187, %194
  %196 = load i8, ptr %188, align 1, !tbaa !15
  %197 = zext i8 %196 to i64
  %198 = sub nsw i64 0, %197
  %199 = getelementptr inbounds i8, ptr %138, i64 %198
  %200 = load i8, ptr %199, align 1, !tbaa !15
  %201 = zext i8 %200 to i32
  %202 = add nuw nsw i32 %149, %169
  %203 = add nuw nsw i32 %162, %176
  %204 = add nuw nsw i32 %202, %184
  %205 = sub nsw i32 %203, %204
  %206 = add nsw i32 %205, %201
  %207 = add nsw i32 %195, %201
  %208 = mul nsw i32 %206, %206
  %209 = mul nsw i32 %207, %207
  %210 = add nuw nsw i32 %208, %209
  %211 = sitofp i32 %210 to float
  %212 = tail call float @sqrtf(float noundef %211) #10
  %213 = fpext float %212 to double
  %214 = sitofp i32 %141 to float
  %215 = fpext float %214 to double
  %216 = fmul double %215, 4.000000e-01
  %217 = fcmp olt double %216, %213
  br i1 %217, label %218, label %253

218:                                              ; preds = %140
  %219 = icmp eq i32 %206, 0
  %220 = sitofp i32 %207 to float
  %221 = sitofp i32 %206 to float
  %222 = fdiv float %220, %221
  %223 = select i1 %219, float 1.000000e+06, float %222
  %224 = fcmp uge float %223, 0.000000e+00
  %225 = fneg float %223
  %226 = select i1 %224, float %223, float %225
  %227 = fcmp olt float %226, 5.000000e-01
  br i1 %227, label %232, label %228

228:                                              ; preds = %218
  %229 = fcmp ogt float %226, 2.000000e+00
  br i1 %229, label %232, label %230

230:                                              ; preds = %228
  %231 = select i1 %224, i32 1, i32 -1
  br label %232

232:                                              ; preds = %230, %228, %218
  %233 = phi i32 [ 0, %218 ], [ 1, %228 ], [ %231, %230 ]
  %234 = phi i32 [ 1, %218 ], [ 0, %228 ], [ 1, %230 ]
  %235 = add nsw i32 %233, %127
  %236 = mul nsw i32 %235, %5
  %237 = trunc i64 %129 to i32
  %238 = add nuw nsw i32 %234, %237
  %239 = add i32 %238, %236
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds i32, ptr %1, i64 %240
  %242 = load i32, ptr %241, align 4, !tbaa !11
  %243 = icmp sgt i32 %132, %242
  br i1 %243, label %244, label %354

244:                                              ; preds = %232
  %245 = sub nsw i32 %127, %233
  %246 = mul nsw i32 %245, %5
  %247 = sub nsw i32 %237, %234
  %248 = add i32 %247, %246
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds i32, ptr %1, i64 %249
  %251 = load i32, ptr %250, align 4, !tbaa !11
  %252 = icmp slt i32 %132, %251
  br i1 %252, label %354, label %351

253:                                              ; preds = %140, %134
  %254 = getelementptr inbounds i8, ptr %125, i64 %129
  %255 = getelementptr inbounds i8, ptr %254, i64 -1
  %256 = load i8, ptr %255, align 1, !tbaa !15
  %257 = zext i8 %256 to i64
  %258 = sub nsw i64 0, %257
  %259 = getelementptr inbounds i8, ptr %138, i64 %258
  %260 = load i8, ptr %259, align 1, !tbaa !15
  %261 = zext i8 %260 to i32
  %262 = getelementptr inbounds i8, ptr %254, i64 1
  %263 = load i8, ptr %254, align 1, !tbaa !15
  %264 = zext i8 %263 to i64
  %265 = sub nsw i64 0, %264
  %266 = getelementptr inbounds i8, ptr %138, i64 %265
  %267 = load i8, ptr %266, align 1, !tbaa !15
  %268 = zext i8 %267 to i32
  %269 = load i8, ptr %262, align 1, !tbaa !15
  %270 = zext i8 %269 to i64
  %271 = sub nsw i64 0, %270
  %272 = getelementptr inbounds i8, ptr %138, i64 %271
  %273 = load i8, ptr %272, align 1, !tbaa !15
  %274 = zext i8 %273 to i32
  %275 = getelementptr inbounds i8, ptr %262, i64 %34
  %276 = getelementptr inbounds i8, ptr %275, i64 2
  %277 = getelementptr inbounds i8, ptr %276, i64 %34
  %278 = getelementptr inbounds i8, ptr %277, i64 1
  %279 = load i8, ptr %277, align 1, !tbaa !15
  %280 = zext i8 %279 to i64
  %281 = sub nsw i64 0, %280
  %282 = getelementptr inbounds i8, ptr %138, i64 %281
  %283 = load i8, ptr %282, align 1, !tbaa !15
  %284 = zext i8 %283 to i32
  %285 = getelementptr inbounds i8, ptr %277, i64 2
  %286 = load i8, ptr %278, align 1, !tbaa !15
  %287 = zext i8 %286 to i64
  %288 = sub nsw i64 0, %287
  %289 = getelementptr inbounds i8, ptr %138, i64 %288
  %290 = load i8, ptr %289, align 1, !tbaa !15
  %291 = zext i8 %290 to i32
  %292 = load i8, ptr %285, align 1, !tbaa !15
  %293 = zext i8 %292 to i64
  %294 = sub nsw i64 0, %293
  %295 = getelementptr inbounds i8, ptr %138, i64 %294
  %296 = load i8, ptr %295, align 1, !tbaa !15
  %297 = zext i8 %296 to i32
  %298 = add nuw nsw i32 %284, %274
  %299 = add nuw nsw i32 %298, %261
  %300 = add nuw nsw i32 %299, %268
  %301 = add nuw nsw i32 %300, %291
  %302 = add nuw nsw i32 %301, %297
  %303 = add nuw nsw i32 %297, %261
  %304 = icmp eq i32 %302, 0
  br i1 %304, label %330, label %305

305:                                              ; preds = %253
  %306 = load i8, ptr %275, align 1, !tbaa !15
  %307 = zext i8 %306 to i64
  %308 = sub nsw i64 0, %307
  %309 = getelementptr inbounds i8, ptr %138, i64 %308
  %310 = load i8, ptr %309, align 1, !tbaa !15
  %311 = zext i8 %310 to i32
  %312 = load i8, ptr %276, align 1, !tbaa !15
  %313 = zext i8 %312 to i64
  %314 = sub nsw i64 0, %313
  %315 = getelementptr inbounds i8, ptr %138, i64 %314
  %316 = load i8, ptr %315, align 1, !tbaa !15
  %317 = zext i8 %316 to i32
  %318 = add nuw nsw i32 %299, %297
  %319 = add nuw nsw i32 %318, %311
  %320 = add nuw nsw i32 %319, %317
  %321 = sitofp i32 %320 to float
  %322 = sitofp i32 %302 to float
  %323 = fdiv float %321, %322
  %324 = fcmp olt float %323, 5.000000e-01
  br i1 %324, label %330, label %325

325:                                              ; preds = %305
  %326 = fcmp ogt float %323, 2.000000e+00
  br i1 %326, label %330, label %327

327:                                              ; preds = %325
  %328 = icmp ugt i32 %303, %298
  %329 = select i1 %328, i32 -1, i32 1
  br label %330

330:                                              ; preds = %327, %325, %305, %253
  %331 = phi i32 [ 0, %305 ], [ 1, %325 ], [ %329, %327 ], [ 1, %253 ]
  %332 = phi i32 [ 1, %305 ], [ 0, %325 ], [ 1, %327 ], [ 0, %253 ]
  %333 = add nsw i32 %331, %126
  %334 = mul nsw i32 %333, %5
  %335 = trunc i64 %129 to i32
  %336 = add nuw nsw i32 %332, %335
  %337 = add i32 %336, %334
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds i32, ptr %1, i64 %338
  %340 = load i32, ptr %339, align 4, !tbaa !11
  %341 = icmp sgt i32 %132, %340
  br i1 %341, label %342, label %354

342:                                              ; preds = %330
  %343 = sub nsw i32 %126, %331
  %344 = mul nsw i32 %343, %5
  %345 = sub nsw i32 %335, %332
  %346 = add i32 %345, %344
  %347 = sext i32 %346 to i64
  %348 = getelementptr inbounds i32, ptr %1, i64 %347
  %349 = load i32, ptr %348, align 4, !tbaa !11
  %350 = icmp slt i32 %132, %349
  br i1 %350, label %354, label %351

351:                                              ; preds = %342, %244
  %352 = phi i8 [ 1, %244 ], [ 2, %342 ]
  %353 = getelementptr inbounds i8, ptr %2, i64 %130
  store i8 %352, ptr %353, align 1, !tbaa !15
  br label %354

354:                                              ; preds = %351, %342, %330, %244, %232, %128
  %355 = add nuw nsw i64 %129, 1
  %356 = icmp eq i64 %355, %37
  br i1 %356, label %357, label %128, !llvm.loop !48

357:                                              ; preds = %354, %119
  %358 = add nuw nsw i64 %120, 1
  %359 = icmp eq i64 %358, %36
  br i1 %359, label %360, label %119, !llvm.loop !49

360:                                              ; preds = %357, %28, %7
  ret i32 undef
}

; Function Attrs: nofree norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal i32 @corner_draw(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) #16 {
  %5 = getelementptr inbounds %struct.anon, ptr %1, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !50
  %7 = icmp eq i32 %6, 7
  br i1 %7, label %46, label %8

8:                                                ; preds = %4
  %9 = icmp eq i32 %3, 0
  %10 = add nsw i32 %2, -2
  %11 = sext i32 %10 to i64
  br label %12

12:                                               ; preds = %40, %8
  %13 = phi i64 [ 0, %8 ], [ %41, %40 ]
  %14 = phi ptr [ %1, %8 ], [ %42, %40 ]
  %15 = getelementptr inbounds %struct.anon, ptr %1, i64 %13, i32 1
  %16 = load i32, ptr %15, align 4, !tbaa !52
  br i1 %9, label %17, label %33

17:                                               ; preds = %12
  %18 = add nsw i32 %16, -1
  %19 = mul nsw i32 %18, %2
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8, ptr %0, i64 %20
  %22 = load i32, ptr %14, align 4, !tbaa !53
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, ptr %21, i64 %23
  %25 = getelementptr inbounds i8, ptr %24, i64 -1
  store i8 -1, ptr %25, align 1, !tbaa !15
  %26 = getelementptr inbounds i8, ptr %24, i64 1
  store i8 -1, ptr %24, align 1, !tbaa !15
  store i8 -1, ptr %26, align 1, !tbaa !15
  %27 = getelementptr inbounds i8, ptr %26, i64 %11
  %28 = getelementptr inbounds i8, ptr %27, i64 1
  store i8 -1, ptr %27, align 1, !tbaa !15
  %29 = getelementptr inbounds i8, ptr %27, i64 2
  store i8 0, ptr %28, align 1, !tbaa !15
  store i8 -1, ptr %29, align 1, !tbaa !15
  %30 = getelementptr inbounds i8, ptr %29, i64 %11
  %31 = getelementptr inbounds i8, ptr %30, i64 1
  store i8 -1, ptr %30, align 1, !tbaa !15
  %32 = getelementptr inbounds i8, ptr %30, i64 2
  store i8 -1, ptr %31, align 1, !tbaa !15
  store i8 -1, ptr %32, align 1, !tbaa !15
  br label %40

33:                                               ; preds = %12
  %34 = mul nsw i32 %16, %2
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8, ptr %0, i64 %35
  %37 = load i32, ptr %14, align 4, !tbaa !53
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8, ptr %36, i64 %38
  store i8 0, ptr %39, align 1, !tbaa !15
  br label %40

40:                                               ; preds = %33, %17
  %41 = add nuw nsw i64 %13, 1
  %42 = getelementptr inbounds %struct.anon, ptr %1, i64 %41
  %43 = getelementptr inbounds %struct.anon, ptr %1, i64 %41, i32 2
  %44 = load i32, ptr %43, align 4, !tbaa !50
  %45 = icmp eq i32 %44, 7
  br i1 %45, label %46, label %12, !llvm.loop !54

46:                                               ; preds = %40, %4
  ret i32 undef
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @susan_corners(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, ptr nocapture noundef writeonly %4, i32 noundef %5, i32 noundef %6) #3 {
  %8 = mul nsw i32 %6, %5
  %9 = sext i32 %8 to i64
  %10 = shl nsw i64 %9, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %1, i8 0, i64 %10, i1 false)
  %11 = tail call noalias ptr @malloc(i64 noundef %10) #24
  %12 = tail call noalias ptr @malloc(i64 noundef %10) #24
  %13 = add i32 %6, -5
  %14 = icmp sgt i32 %6, 10
  br i1 %14, label %15, label %886

15:                                               ; preds = %7
  %16 = add i32 %5, -5
  %17 = icmp sgt i32 %5, 10
  %18 = add nsw i32 %5, -3
  %19 = sext i32 %18 to i64
  %20 = sext i32 %16 to i64
  %21 = add nsw i32 %5, -6
  %22 = sext i32 %21 to i64
  %23 = sext i32 %5 to i64
  %24 = zext i32 %13 to i64
  %25 = zext i32 %16 to i64
  br label %26

26:                                               ; preds = %587, %15
  %27 = phi i64 [ 5, %15 ], [ %588, %587 ]
  br i1 %17, label %28, label %587

28:                                               ; preds = %26
  %29 = add nsw i64 %27, -3
  %30 = mul nsw i64 %29, %23
  %31 = getelementptr inbounds i8, ptr %0, i64 %30
  %32 = mul nsw i64 %27, %23
  %33 = trunc i64 %27 to i32
  %34 = trunc i64 %27 to i32
  br label %42

35:                                               ; preds = %587
  br i1 %14, label %36, label %886

36:                                               ; preds = %35
  %37 = add i32 %5, -5
  %38 = icmp sgt i32 %5, 10
  %39 = sext i32 %5 to i64
  %40 = zext i32 %13 to i64
  %41 = zext i32 %37 to i64
  br label %590

42:                                               ; preds = %584, %28
  %43 = phi i64 [ 5, %28 ], [ %585, %584 ]
  %44 = getelementptr inbounds i8, ptr %31, i64 %43
  %45 = getelementptr inbounds i8, ptr %44, i64 -1
  %46 = add nsw i64 %43, %32
  %47 = getelementptr inbounds i8, ptr %0, i64 %46
  %48 = load i8, ptr %47, align 1, !tbaa !15
  %49 = zext i8 %48 to i64
  %50 = getelementptr inbounds i8, ptr %2, i64 %49
  %51 = load i8, ptr %45, align 1, !tbaa !15
  %52 = zext i8 %51 to i64
  %53 = sub nsw i64 0, %52
  %54 = getelementptr inbounds i8, ptr %50, i64 %53
  %55 = load i8, ptr %54, align 1, !tbaa !15
  %56 = zext i8 %55 to i32
  %57 = add nuw nsw i32 %56, 100
  %58 = getelementptr inbounds i8, ptr %44, i64 1
  %59 = load i8, ptr %44, align 1, !tbaa !15
  %60 = zext i8 %59 to i64
  %61 = sub nsw i64 0, %60
  %62 = getelementptr inbounds i8, ptr %50, i64 %61
  %63 = load i8, ptr %62, align 1, !tbaa !15
  %64 = zext i8 %63 to i32
  %65 = add nuw nsw i32 %57, %64
  %66 = load i8, ptr %58, align 1, !tbaa !15
  %67 = zext i8 %66 to i64
  %68 = sub nsw i64 0, %67
  %69 = getelementptr inbounds i8, ptr %50, i64 %68
  %70 = load i8, ptr %69, align 1, !tbaa !15
  %71 = zext i8 %70 to i32
  %72 = add nuw nsw i32 %65, %71
  %73 = getelementptr inbounds i8, ptr %58, i64 %19
  %74 = getelementptr inbounds i8, ptr %73, i64 1
  %75 = load i8, ptr %73, align 1, !tbaa !15
  %76 = zext i8 %75 to i64
  %77 = sub nsw i64 0, %76
  %78 = getelementptr inbounds i8, ptr %50, i64 %77
  %79 = load i8, ptr %78, align 1, !tbaa !15
  %80 = zext i8 %79 to i32
  %81 = add nuw nsw i32 %72, %80
  %82 = getelementptr inbounds i8, ptr %73, i64 2
  %83 = load i8, ptr %74, align 1, !tbaa !15
  %84 = zext i8 %83 to i64
  %85 = sub nsw i64 0, %84
  %86 = getelementptr inbounds i8, ptr %50, i64 %85
  %87 = load i8, ptr %86, align 1, !tbaa !15
  %88 = zext i8 %87 to i32
  %89 = add nuw nsw i32 %81, %88
  %90 = getelementptr inbounds i8, ptr %73, i64 3
  %91 = load i8, ptr %82, align 1, !tbaa !15
  %92 = zext i8 %91 to i64
  %93 = sub nsw i64 0, %92
  %94 = getelementptr inbounds i8, ptr %50, i64 %93
  %95 = load i8, ptr %94, align 1, !tbaa !15
  %96 = zext i8 %95 to i32
  %97 = add nuw nsw i32 %89, %96
  %98 = getelementptr inbounds i8, ptr %73, i64 4
  %99 = load i8, ptr %90, align 1, !tbaa !15
  %100 = zext i8 %99 to i64
  %101 = sub nsw i64 0, %100
  %102 = getelementptr inbounds i8, ptr %50, i64 %101
  %103 = load i8, ptr %102, align 1, !tbaa !15
  %104 = zext i8 %103 to i32
  %105 = add nuw nsw i32 %97, %104
  %106 = load i8, ptr %98, align 1, !tbaa !15
  %107 = zext i8 %106 to i64
  %108 = sub nsw i64 0, %107
  %109 = getelementptr inbounds i8, ptr %50, i64 %108
  %110 = load i8, ptr %109, align 1, !tbaa !15
  %111 = zext i8 %110 to i32
  %112 = add nuw nsw i32 %105, %111
  %113 = getelementptr inbounds i8, ptr %98, i64 %20
  %114 = getelementptr inbounds i8, ptr %113, i64 1
  %115 = load i8, ptr %113, align 1, !tbaa !15
  %116 = zext i8 %115 to i64
  %117 = sub nsw i64 0, %116
  %118 = getelementptr inbounds i8, ptr %50, i64 %117
  %119 = load i8, ptr %118, align 1, !tbaa !15
  %120 = zext i8 %119 to i32
  %121 = add nuw nsw i32 %112, %120
  %122 = getelementptr inbounds i8, ptr %113, i64 2
  %123 = load i8, ptr %114, align 1, !tbaa !15
  %124 = zext i8 %123 to i64
  %125 = sub nsw i64 0, %124
  %126 = getelementptr inbounds i8, ptr %50, i64 %125
  %127 = load i8, ptr %126, align 1, !tbaa !15
  %128 = zext i8 %127 to i32
  %129 = add nuw nsw i32 %121, %128
  %130 = getelementptr inbounds i8, ptr %113, i64 3
  %131 = load i8, ptr %122, align 1, !tbaa !15
  %132 = zext i8 %131 to i64
  %133 = sub nsw i64 0, %132
  %134 = getelementptr inbounds i8, ptr %50, i64 %133
  %135 = load i8, ptr %134, align 1, !tbaa !15
  %136 = zext i8 %135 to i32
  %137 = add nuw nsw i32 %129, %136
  %138 = getelementptr inbounds i8, ptr %113, i64 4
  %139 = load i8, ptr %130, align 1, !tbaa !15
  %140 = zext i8 %139 to i64
  %141 = sub nsw i64 0, %140
  %142 = getelementptr inbounds i8, ptr %50, i64 %141
  %143 = load i8, ptr %142, align 1, !tbaa !15
  %144 = zext i8 %143 to i32
  %145 = add nuw nsw i32 %137, %144
  %146 = getelementptr inbounds i8, ptr %113, i64 5
  %147 = load i8, ptr %138, align 1, !tbaa !15
  %148 = zext i8 %147 to i64
  %149 = sub nsw i64 0, %148
  %150 = getelementptr inbounds i8, ptr %50, i64 %149
  %151 = load i8, ptr %150, align 1, !tbaa !15
  %152 = zext i8 %151 to i32
  %153 = add nuw nsw i32 %145, %152
  %154 = getelementptr inbounds i8, ptr %113, i64 6
  %155 = load i8, ptr %146, align 1, !tbaa !15
  %156 = zext i8 %155 to i64
  %157 = sub nsw i64 0, %156
  %158 = getelementptr inbounds i8, ptr %50, i64 %157
  %159 = load i8, ptr %158, align 1, !tbaa !15
  %160 = zext i8 %159 to i32
  %161 = add nuw nsw i32 %153, %160
  %162 = load i8, ptr %154, align 1, !tbaa !15
  %163 = zext i8 %162 to i64
  %164 = sub nsw i64 0, %163
  %165 = getelementptr inbounds i8, ptr %50, i64 %164
  %166 = load i8, ptr %165, align 1, !tbaa !15
  %167 = zext i8 %166 to i32
  %168 = add nuw nsw i32 %161, %167
  %169 = getelementptr inbounds i8, ptr %154, i64 %22
  %170 = getelementptr inbounds i8, ptr %169, i64 1
  %171 = load i8, ptr %169, align 1, !tbaa !15
  %172 = zext i8 %171 to i64
  %173 = sub nsw i64 0, %172
  %174 = getelementptr inbounds i8, ptr %50, i64 %173
  %175 = load i8, ptr %174, align 1, !tbaa !15
  %176 = zext i8 %175 to i32
  %177 = add nuw nsw i32 %168, %176
  %178 = getelementptr inbounds i8, ptr %169, i64 2
  %179 = load i8, ptr %170, align 1, !tbaa !15
  %180 = zext i8 %179 to i64
  %181 = sub nsw i64 0, %180
  %182 = getelementptr inbounds i8, ptr %50, i64 %181
  %183 = load i8, ptr %182, align 1, !tbaa !15
  %184 = zext i8 %183 to i32
  %185 = add nuw nsw i32 %177, %184
  %186 = load i8, ptr %178, align 1, !tbaa !15
  %187 = zext i8 %186 to i64
  %188 = sub nsw i64 0, %187
  %189 = getelementptr inbounds i8, ptr %50, i64 %188
  %190 = load i8, ptr %189, align 1, !tbaa !15
  %191 = zext i8 %190 to i32
  %192 = add nuw nsw i32 %185, %191
  %193 = icmp slt i32 %192, %3
  br i1 %193, label %194, label %584

194:                                              ; preds = %42
  %195 = getelementptr inbounds i8, ptr %169, i64 4
  %196 = load i8, ptr %195, align 1, !tbaa !15
  %197 = zext i8 %196 to i64
  %198 = sub nsw i64 0, %197
  %199 = getelementptr inbounds i8, ptr %50, i64 %198
  %200 = load i8, ptr %199, align 1, !tbaa !15
  %201 = zext i8 %200 to i32
  %202 = add nuw nsw i32 %192, %201
  %203 = icmp slt i32 %202, %3
  br i1 %203, label %204, label %584

204:                                              ; preds = %194
  %205 = getelementptr inbounds i8, ptr %169, i64 5
  %206 = getelementptr inbounds i8, ptr %169, i64 6
  %207 = load i8, ptr %205, align 1, !tbaa !15
  %208 = zext i8 %207 to i64
  %209 = sub nsw i64 0, %208
  %210 = getelementptr inbounds i8, ptr %50, i64 %209
  %211 = load i8, ptr %210, align 1, !tbaa !15
  %212 = zext i8 %211 to i32
  %213 = add nuw nsw i32 %202, %212
  %214 = icmp slt i32 %213, %3
  br i1 %214, label %215, label %584

215:                                              ; preds = %204
  %216 = load i8, ptr %206, align 1, !tbaa !15
  %217 = zext i8 %216 to i64
  %218 = sub nsw i64 0, %217
  %219 = getelementptr inbounds i8, ptr %50, i64 %218
  %220 = load i8, ptr %219, align 1, !tbaa !15
  %221 = zext i8 %220 to i32
  %222 = add nuw nsw i32 %213, %221
  %223 = icmp slt i32 %222, %3
  br i1 %223, label %224, label %584

224:                                              ; preds = %215
  %225 = getelementptr inbounds i8, ptr %206, i64 %22
  %226 = load i8, ptr %225, align 1, !tbaa !15
  %227 = zext i8 %226 to i64
  %228 = sub nsw i64 0, %227
  %229 = getelementptr inbounds i8, ptr %50, i64 %228
  %230 = load i8, ptr %229, align 1, !tbaa !15
  %231 = zext i8 %230 to i32
  %232 = add nuw nsw i32 %222, %231
  %233 = icmp slt i32 %232, %3
  br i1 %233, label %234, label %584

234:                                              ; preds = %224
  %235 = getelementptr inbounds i8, ptr %225, i64 1
  %236 = load i8, ptr %235, align 1, !tbaa !15
  %237 = zext i8 %236 to i64
  %238 = sub nsw i64 0, %237
  %239 = getelementptr inbounds i8, ptr %50, i64 %238
  %240 = load i8, ptr %239, align 1, !tbaa !15
  %241 = zext i8 %240 to i32
  %242 = add nuw nsw i32 %232, %241
  %243 = icmp slt i32 %242, %3
  br i1 %243, label %244, label %584

244:                                              ; preds = %234
  %245 = getelementptr inbounds i8, ptr %225, i64 2
  %246 = load i8, ptr %245, align 1, !tbaa !15
  %247 = zext i8 %246 to i64
  %248 = sub nsw i64 0, %247
  %249 = getelementptr inbounds i8, ptr %50, i64 %248
  %250 = load i8, ptr %249, align 1, !tbaa !15
  %251 = zext i8 %250 to i32
  %252 = add nuw nsw i32 %242, %251
  %253 = icmp slt i32 %252, %3
  br i1 %253, label %254, label %584

254:                                              ; preds = %244
  %255 = getelementptr inbounds i8, ptr %225, i64 3
  %256 = load i8, ptr %255, align 1, !tbaa !15
  %257 = zext i8 %256 to i64
  %258 = sub nsw i64 0, %257
  %259 = getelementptr inbounds i8, ptr %50, i64 %258
  %260 = load i8, ptr %259, align 1, !tbaa !15
  %261 = zext i8 %260 to i32
  %262 = add nuw nsw i32 %252, %261
  %263 = icmp slt i32 %262, %3
  br i1 %263, label %264, label %584

264:                                              ; preds = %254
  %265 = getelementptr inbounds i8, ptr %225, i64 4
  %266 = load i8, ptr %265, align 1, !tbaa !15
  %267 = zext i8 %266 to i64
  %268 = sub nsw i64 0, %267
  %269 = getelementptr inbounds i8, ptr %50, i64 %268
  %270 = load i8, ptr %269, align 1, !tbaa !15
  %271 = zext i8 %270 to i32
  %272 = add nuw nsw i32 %262, %271
  %273 = icmp slt i32 %272, %3
  br i1 %273, label %274, label %584

274:                                              ; preds = %264
  %275 = getelementptr inbounds i8, ptr %225, i64 5
  %276 = getelementptr inbounds i8, ptr %225, i64 6
  %277 = load i8, ptr %275, align 1, !tbaa !15
  %278 = zext i8 %277 to i64
  %279 = sub nsw i64 0, %278
  %280 = getelementptr inbounds i8, ptr %50, i64 %279
  %281 = load i8, ptr %280, align 1, !tbaa !15
  %282 = zext i8 %281 to i32
  %283 = add nuw nsw i32 %272, %282
  %284 = icmp slt i32 %283, %3
  br i1 %284, label %285, label %584

285:                                              ; preds = %274
  %286 = load i8, ptr %276, align 1, !tbaa !15
  %287 = zext i8 %286 to i64
  %288 = sub nsw i64 0, %287
  %289 = getelementptr inbounds i8, ptr %50, i64 %288
  %290 = load i8, ptr %289, align 1, !tbaa !15
  %291 = zext i8 %290 to i32
  %292 = add nuw nsw i32 %283, %291
  %293 = icmp slt i32 %292, %3
  br i1 %293, label %294, label %584

294:                                              ; preds = %285
  %295 = getelementptr inbounds i8, ptr %276, i64 %20
  %296 = load i8, ptr %295, align 1, !tbaa !15
  %297 = zext i8 %296 to i64
  %298 = sub nsw i64 0, %297
  %299 = getelementptr inbounds i8, ptr %50, i64 %298
  %300 = load i8, ptr %299, align 1, !tbaa !15
  %301 = zext i8 %300 to i32
  %302 = add nuw nsw i32 %292, %301
  %303 = icmp slt i32 %302, %3
  br i1 %303, label %304, label %584

304:                                              ; preds = %294
  %305 = getelementptr inbounds i8, ptr %295, i64 1
  %306 = load i8, ptr %305, align 1, !tbaa !15
  %307 = zext i8 %306 to i64
  %308 = sub nsw i64 0, %307
  %309 = getelementptr inbounds i8, ptr %50, i64 %308
  %310 = load i8, ptr %309, align 1, !tbaa !15
  %311 = zext i8 %310 to i32
  %312 = add nuw nsw i32 %302, %311
  %313 = icmp slt i32 %312, %3
  br i1 %313, label %314, label %584

314:                                              ; preds = %304
  %315 = getelementptr inbounds i8, ptr %295, i64 2
  %316 = load i8, ptr %315, align 1, !tbaa !15
  %317 = zext i8 %316 to i64
  %318 = sub nsw i64 0, %317
  %319 = getelementptr inbounds i8, ptr %50, i64 %318
  %320 = load i8, ptr %319, align 1, !tbaa !15
  %321 = zext i8 %320 to i32
  %322 = add nuw nsw i32 %312, %321
  %323 = icmp slt i32 %322, %3
  br i1 %323, label %324, label %584

324:                                              ; preds = %314
  %325 = getelementptr inbounds i8, ptr %295, i64 3
  %326 = getelementptr inbounds i8, ptr %295, i64 4
  %327 = load i8, ptr %325, align 1, !tbaa !15
  %328 = zext i8 %327 to i64
  %329 = sub nsw i64 0, %328
  %330 = getelementptr inbounds i8, ptr %50, i64 %329
  %331 = load i8, ptr %330, align 1, !tbaa !15
  %332 = zext i8 %331 to i32
  %333 = add nuw nsw i32 %322, %332
  %334 = icmp slt i32 %333, %3
  br i1 %334, label %335, label %584

335:                                              ; preds = %324
  %336 = load i8, ptr %326, align 1, !tbaa !15
  %337 = zext i8 %336 to i64
  %338 = sub nsw i64 0, %337
  %339 = getelementptr inbounds i8, ptr %50, i64 %338
  %340 = load i8, ptr %339, align 1, !tbaa !15
  %341 = zext i8 %340 to i32
  %342 = add nuw nsw i32 %333, %341
  %343 = icmp slt i32 %342, %3
  br i1 %343, label %344, label %584

344:                                              ; preds = %335
  %345 = getelementptr inbounds i8, ptr %326, i64 %19
  %346 = load i8, ptr %345, align 1, !tbaa !15
  %347 = zext i8 %346 to i64
  %348 = sub nsw i64 0, %347
  %349 = getelementptr inbounds i8, ptr %50, i64 %348
  %350 = load i8, ptr %349, align 1, !tbaa !15
  %351 = zext i8 %350 to i32
  %352 = add nuw nsw i32 %342, %351
  %353 = icmp slt i32 %352, %3
  br i1 %353, label %354, label %584

354:                                              ; preds = %344
  %355 = getelementptr inbounds i8, ptr %345, i64 1
  %356 = load i8, ptr %355, align 1, !tbaa !15
  %357 = zext i8 %356 to i64
  %358 = sub nsw i64 0, %357
  %359 = getelementptr inbounds i8, ptr %50, i64 %358
  %360 = load i8, ptr %359, align 1, !tbaa !15
  %361 = zext i8 %360 to i32
  %362 = add nuw nsw i32 %352, %361
  %363 = icmp slt i32 %362, %3
  br i1 %363, label %364, label %584

364:                                              ; preds = %354
  %365 = getelementptr inbounds i8, ptr %345, i64 2
  %366 = load i8, ptr %365, align 1, !tbaa !15
  %367 = zext i8 %366 to i64
  %368 = sub nsw i64 0, %367
  %369 = getelementptr inbounds i8, ptr %50, i64 %368
  %370 = load i8, ptr %369, align 1, !tbaa !15
  %371 = zext i8 %370 to i32
  %372 = add nuw nsw i32 %362, %371
  %373 = icmp slt i32 %372, %3
  br i1 %373, label %374, label %584

374:                                              ; preds = %364
  %375 = add nuw nsw i32 %64, %56
  %376 = add nuw nsw i32 %375, %71
  %377 = add nuw nsw i32 %88, %80
  %378 = add nuw nsw i32 %377, %96
  %379 = add nuw nsw i32 %378, %104
  %380 = add nuw nsw i32 %379, %111
  %381 = shl nuw nsw i32 %301, 1
  %382 = shl nuw nsw i32 %341, 1
  %383 = add nuw nsw i32 %120, %176
  %384 = add nuw nsw i32 %167, %221
  %385 = add nuw nsw i32 %383, %231
  %386 = sub nsw i32 %384, %385
  %387 = add nsw i32 %386, %291
  %388 = mul nsw i32 %387, 3
  %389 = add nuw nsw i32 %80, %128
  %390 = add nuw nsw i32 %111, %160
  %391 = add nuw nsw i32 %389, %184
  %392 = add nuw nsw i32 %390, %212
  %393 = add nuw nsw i32 %391, %241
  %394 = sub nsw i32 %392, %393
  %395 = add nsw i32 %394, %282
  %396 = shl nsw i32 %395, 1
  %397 = add nuw nsw i32 %56, %88
  %398 = add nuw nsw i32 %71, %104
  %399 = add nuw nsw i32 %397, %136
  %400 = add nuw nsw i32 %398, %152
  %401 = add nuw nsw i32 %399, %191
  %402 = add nuw nsw i32 %400, %201
  %403 = add nuw nsw i32 %401, %251
  %404 = sub nsw i32 %402, %403
  %405 = add nsw i32 %404, %271
  %406 = add i32 %405, %396
  %407 = add i32 %406, %388
  %408 = add nuw nsw i32 %381, %311
  %409 = sub i32 %407, %408
  %410 = add i32 %409, %332
  %411 = add i32 %410, %382
  %412 = sub i32 %411, %351
  %413 = add i32 %412, %371
  %414 = sub nsw i32 %351, %376
  %415 = add nsw i32 %414, %361
  %416 = add nsw i32 %415, %371
  %417 = mul nsw i32 %416, 3
  %418 = sub nsw i32 %311, %380
  %419 = add nsw i32 %418, %321
  %420 = add nsw i32 %419, %332
  %421 = shl nsw i32 %420, 1
  %422 = add nuw nsw i32 %128, %120
  %423 = add nuw nsw i32 %422, %136
  %424 = add nuw nsw i32 %423, %144
  %425 = add nuw nsw i32 %424, %152
  %426 = add nuw nsw i32 %425, %160
  %427 = add nuw nsw i32 %426, %167
  %428 = sub nsw i32 %231, %427
  %429 = add nsw i32 %428, %241
  %430 = add nsw i32 %429, %251
  %431 = add nsw i32 %430, %261
  %432 = add nsw i32 %431, %271
  %433 = add nsw i32 %432, %282
  %434 = add nsw i32 %433, %291
  %435 = add nsw i32 %434, %381
  %436 = add i32 %435, %421
  %437 = add i32 %436, %382
  %438 = add i32 %437, %417
  %439 = mul nsw i32 %413, %413
  %440 = mul nsw i32 %438, %438
  %441 = add nuw nsw i32 %440, %439
  %442 = mul nuw nsw i32 %372, %372
  %443 = lshr i32 %442, 1
  %444 = icmp ugt i32 %441, %443
  br i1 %444, label %445, label %584

445:                                              ; preds = %374
  %446 = icmp ult i32 %440, %439
  %447 = trunc i64 %43 to i32
  br i1 %446, label %448, label %505

448:                                              ; preds = %445
  %449 = sitofp i32 %438 to float
  %450 = tail call i32 @llvm.abs.i32(i32 %413, i1 true)
  %451 = sitofp i32 %450 to float
  %452 = fdiv float %449, %451
  %453 = trunc i32 %450 to i16
  %454 = trunc i32 %413 to i16
  %455 = sdiv i16 %453, %454
  %456 = sext i16 %455 to i32
  %457 = fcmp olt float %452, 0.000000e+00
  %458 = fpext float %452 to double
  %459 = select i1 %457, double -5.000000e-01, double 5.000000e-01
  %460 = fadd double %459, %458
  %461 = fptosi double %460 to i32
  %462 = add nsw i32 %34, %461
  %463 = mul nsw i32 %462, %5
  %464 = add nsw i32 %463, %447
  %465 = add nsw i32 %464, %456
  %466 = sext i32 %465 to i64
  %467 = getelementptr inbounds i8, ptr %0, i64 %466
  %468 = load i8, ptr %467, align 1, !tbaa !15
  %469 = zext i8 %468 to i64
  %470 = sub nsw i64 0, %469
  %471 = getelementptr inbounds i8, ptr %50, i64 %470
  %472 = load i8, ptr %471, align 1, !tbaa !15
  %473 = zext i8 %472 to i32
  %474 = fmul float %452, 2.000000e+00
  %475 = fcmp olt float %474, 0.000000e+00
  %476 = fpext float %474 to double
  %477 = select i1 %475, double -5.000000e-01, double 5.000000e-01
  %478 = fadd double %477, %476
  %479 = fptosi double %478 to i32
  %480 = add nsw i32 %34, %479
  %481 = mul nsw i32 %480, %5
  %482 = add nsw i32 %481, %447
  %483 = shl nsw i32 %456, 1
  %484 = add nsw i32 %482, %483
  %485 = sext i32 %484 to i64
  %486 = getelementptr inbounds i8, ptr %0, i64 %485
  %487 = load i8, ptr %486, align 1, !tbaa !15
  %488 = zext i8 %487 to i64
  %489 = sub nsw i64 0, %488
  %490 = getelementptr inbounds i8, ptr %50, i64 %489
  %491 = load i8, ptr %490, align 1, !tbaa !15
  %492 = zext i8 %491 to i32
  %493 = add nuw nsw i32 %492, %473
  %494 = fmul float %452, 3.000000e+00
  %495 = fcmp olt float %494, 0.000000e+00
  %496 = fpext float %494 to double
  %497 = select i1 %495, double -5.000000e-01, double 5.000000e-01
  %498 = fadd double %497, %496
  %499 = fptosi double %498 to i32
  %500 = add nsw i32 %34, %499
  %501 = mul nsw i32 %500, %5
  %502 = add nsw i32 %501, %447
  %503 = mul nsw i32 %456, 3
  %504 = add nsw i32 %502, %503
  br label %562

505:                                              ; preds = %445
  %506 = sitofp i32 %413 to float
  %507 = tail call i32 @llvm.abs.i32(i32 %438, i1 true)
  %508 = sitofp i32 %507 to float
  %509 = fdiv float %506, %508
  %510 = trunc i32 %507 to i16
  %511 = trunc i32 %438 to i16
  %512 = sdiv i16 %510, %511
  %513 = sext i16 %512 to i32
  %514 = add nsw i32 %33, %513
  %515 = mul nsw i32 %514, %5
  %516 = fcmp olt float %509, 0.000000e+00
  %517 = fpext float %509 to double
  %518 = select i1 %516, double -5.000000e-01, double 5.000000e-01
  %519 = fadd double %518, %517
  %520 = fptosi double %519 to i32
  %521 = add i32 %447, %520
  %522 = add i32 %521, %515
  %523 = sext i32 %522 to i64
  %524 = getelementptr inbounds i8, ptr %0, i64 %523
  %525 = load i8, ptr %524, align 1, !tbaa !15
  %526 = zext i8 %525 to i64
  %527 = sub nsw i64 0, %526
  %528 = getelementptr inbounds i8, ptr %50, i64 %527
  %529 = load i8, ptr %528, align 1, !tbaa !15
  %530 = zext i8 %529 to i32
  %531 = shl nsw i32 %513, 1
  %532 = add nsw i32 %531, %33
  %533 = mul nsw i32 %532, %5
  %534 = fmul float %509, 2.000000e+00
  %535 = fcmp olt float %534, 0.000000e+00
  %536 = fpext float %534 to double
  %537 = select i1 %535, double -5.000000e-01, double 5.000000e-01
  %538 = fadd double %537, %536
  %539 = fptosi double %538 to i32
  %540 = add i32 %447, %539
  %541 = add i32 %540, %533
  %542 = sext i32 %541 to i64
  %543 = getelementptr inbounds i8, ptr %0, i64 %542
  %544 = load i8, ptr %543, align 1, !tbaa !15
  %545 = zext i8 %544 to i64
  %546 = sub nsw i64 0, %545
  %547 = getelementptr inbounds i8, ptr %50, i64 %546
  %548 = load i8, ptr %547, align 1, !tbaa !15
  %549 = zext i8 %548 to i32
  %550 = add nuw nsw i32 %549, %530
  %551 = mul nsw i32 %513, 3
  %552 = add nsw i32 %551, %33
  %553 = mul nsw i32 %552, %5
  %554 = fmul float %509, 3.000000e+00
  %555 = fcmp olt float %554, 0.000000e+00
  %556 = fpext float %554 to double
  %557 = select i1 %555, double -5.000000e-01, double 5.000000e-01
  %558 = fadd double %557, %556
  %559 = fptosi double %558 to i32
  %560 = add i32 %447, %559
  %561 = add i32 %560, %553
  br label %562

562:                                              ; preds = %505, %448
  %563 = phi i32 [ %561, %505 ], [ %504, %448 ]
  %564 = phi i32 [ %550, %505 ], [ %493, %448 ]
  %565 = sext i32 %563 to i64
  %566 = getelementptr inbounds i8, ptr %0, i64 %565
  %567 = load i8, ptr %566, align 1, !tbaa !15
  %568 = zext i8 %567 to i64
  %569 = sub nsw i64 0, %568
  %570 = getelementptr inbounds i8, ptr %50, i64 %569
  %571 = load i8, ptr %570, align 1, !tbaa !15
  %572 = zext i8 %571 to i32
  %573 = add nuw nsw i32 %564, %572
  %574 = icmp ugt i32 %573, 290
  br i1 %574, label %575, label %584

575:                                              ; preds = %562
  %576 = sub nsw i32 %3, %372
  %577 = getelementptr inbounds i32, ptr %1, i64 %46
  store i32 %576, ptr %577, align 4, !tbaa !11
  %578 = mul nsw i32 %413, 51
  %579 = sdiv i32 %578, %372
  %580 = getelementptr inbounds i32, ptr %11, i64 %46
  store i32 %579, ptr %580, align 4, !tbaa !11
  %581 = mul nsw i32 %438, 51
  %582 = sdiv i32 %581, %372
  %583 = getelementptr inbounds i32, ptr %12, i64 %46
  store i32 %582, ptr %583, align 4, !tbaa !11
  br label %584

584:                                              ; preds = %575, %562, %374, %364, %354, %344, %335, %324, %314, %304, %294, %285, %274, %264, %254, %244, %234, %224, %215, %204, %194, %42
  %585 = add nuw nsw i64 %43, 1
  %586 = icmp eq i64 %585, %25
  br i1 %586, label %587, label %42, !llvm.loop !55

587:                                              ; preds = %584, %26
  %588 = add nuw nsw i64 %27, 1
  %589 = icmp eq i64 %588, %24
  br i1 %589, label %35, label %26, !llvm.loop !56

590:                                              ; preds = %882, %36
  %591 = phi i64 [ 5, %36 ], [ %883, %882 ]
  %592 = phi i32 [ 0, %36 ], [ %884, %882 ]
  br i1 %38, label %595, label %593

593:                                              ; preds = %590
  %594 = add nuw nsw i64 %591, 1
  br label %882

595:                                              ; preds = %590
  %596 = mul nsw i64 %591, %39
  %597 = add nsw i64 %591, -3
  %598 = mul nsw i64 %597, %39
  %599 = add nsw i64 %591, -2
  %600 = mul nsw i64 %599, %39
  %601 = add nsw i64 %591, -1
  %602 = mul nsw i64 %601, %39
  %603 = add nuw nsw i64 %591, 1
  %604 = mul nsw i64 %603, %39
  %605 = add nuw nsw i64 %591, 2
  %606 = mul nsw i64 %605, %39
  %607 = add nuw nsw i64 %591, 3
  %608 = mul nsw i64 %607, %39
  %609 = trunc i64 %591 to i32
  br label %610

610:                                              ; preds = %878, %595
  %611 = phi i64 [ 5, %595 ], [ %880, %878 ]
  %612 = phi i32 [ %592, %595 ], [ %879, %878 ]
  %613 = add nsw i64 %611, %596
  %614 = getelementptr inbounds i32, ptr %1, i64 %613
  %615 = load i32, ptr %614, align 4, !tbaa !11
  %616 = icmp sgt i32 %615, 0
  br i1 %616, label %617, label %878

617:                                              ; preds = %610
  %618 = add nsw i64 %611, %598
  %619 = add nsw i64 %618, -3
  %620 = getelementptr inbounds i32, ptr %1, i64 %619
  %621 = load i32, ptr %620, align 4, !tbaa !11
  %622 = icmp sgt i32 %615, %621
  br i1 %622, label %623, label %878

623:                                              ; preds = %617
  %624 = add nsw i64 %618, -2
  %625 = getelementptr inbounds i32, ptr %1, i64 %624
  %626 = load i32, ptr %625, align 4, !tbaa !11
  %627 = icmp sgt i32 %615, %626
  br i1 %627, label %628, label %878

628:                                              ; preds = %623
  %629 = add nsw i64 %618, -1
  %630 = getelementptr inbounds i32, ptr %1, i64 %629
  %631 = load i32, ptr %630, align 4, !tbaa !11
  %632 = icmp sgt i32 %615, %631
  br i1 %632, label %633, label %878

633:                                              ; preds = %628
  %634 = getelementptr inbounds i32, ptr %1, i64 %618
  %635 = load i32, ptr %634, align 4, !tbaa !11
  %636 = icmp sgt i32 %615, %635
  br i1 %636, label %637, label %878

637:                                              ; preds = %633
  %638 = add nsw i64 %618, 1
  %639 = getelementptr inbounds i32, ptr %1, i64 %638
  %640 = load i32, ptr %639, align 4, !tbaa !11
  %641 = icmp sgt i32 %615, %640
  br i1 %641, label %642, label %878

642:                                              ; preds = %637
  %643 = add nsw i64 %618, 2
  %644 = getelementptr inbounds i32, ptr %1, i64 %643
  %645 = load i32, ptr %644, align 4, !tbaa !11
  %646 = icmp sgt i32 %615, %645
  br i1 %646, label %647, label %878

647:                                              ; preds = %642
  %648 = add nsw i64 %618, 3
  %649 = getelementptr inbounds i32, ptr %1, i64 %648
  %650 = load i32, ptr %649, align 4, !tbaa !11
  %651 = icmp sgt i32 %615, %650
  br i1 %651, label %652, label %878

652:                                              ; preds = %647
  %653 = add nsw i64 %611, %600
  %654 = add nsw i64 %653, -3
  %655 = getelementptr inbounds i32, ptr %1, i64 %654
  %656 = load i32, ptr %655, align 4, !tbaa !11
  %657 = icmp sgt i32 %615, %656
  br i1 %657, label %658, label %878

658:                                              ; preds = %652
  %659 = add nsw i64 %653, -2
  %660 = getelementptr inbounds i32, ptr %1, i64 %659
  %661 = load i32, ptr %660, align 4, !tbaa !11
  %662 = icmp sgt i32 %615, %661
  br i1 %662, label %663, label %878

663:                                              ; preds = %658
  %664 = add nsw i64 %653, -1
  %665 = getelementptr inbounds i32, ptr %1, i64 %664
  %666 = load i32, ptr %665, align 4, !tbaa !11
  %667 = icmp sgt i32 %615, %666
  br i1 %667, label %668, label %878

668:                                              ; preds = %663
  %669 = getelementptr inbounds i32, ptr %1, i64 %653
  %670 = load i32, ptr %669, align 4, !tbaa !11
  %671 = icmp sgt i32 %615, %670
  br i1 %671, label %672, label %878

672:                                              ; preds = %668
  %673 = add nsw i64 %653, 1
  %674 = getelementptr inbounds i32, ptr %1, i64 %673
  %675 = load i32, ptr %674, align 4, !tbaa !11
  %676 = icmp sgt i32 %615, %675
  br i1 %676, label %677, label %878

677:                                              ; preds = %672
  %678 = add nsw i64 %653, 2
  %679 = getelementptr inbounds i32, ptr %1, i64 %678
  %680 = load i32, ptr %679, align 4, !tbaa !11
  %681 = icmp sgt i32 %615, %680
  br i1 %681, label %682, label %878

682:                                              ; preds = %677
  %683 = add nsw i64 %653, 3
  %684 = getelementptr inbounds i32, ptr %1, i64 %683
  %685 = load i32, ptr %684, align 4, !tbaa !11
  %686 = icmp sgt i32 %615, %685
  br i1 %686, label %687, label %878

687:                                              ; preds = %682
  %688 = add nsw i64 %611, %602
  %689 = add nsw i64 %688, -3
  %690 = getelementptr inbounds i32, ptr %1, i64 %689
  %691 = load i32, ptr %690, align 4, !tbaa !11
  %692 = icmp sgt i32 %615, %691
  br i1 %692, label %693, label %878

693:                                              ; preds = %687
  %694 = add nsw i64 %688, -2
  %695 = getelementptr inbounds i32, ptr %1, i64 %694
  %696 = load i32, ptr %695, align 4, !tbaa !11
  %697 = icmp sgt i32 %615, %696
  br i1 %697, label %698, label %878

698:                                              ; preds = %693
  %699 = add nsw i64 %688, -1
  %700 = getelementptr inbounds i32, ptr %1, i64 %699
  %701 = load i32, ptr %700, align 4, !tbaa !11
  %702 = icmp sgt i32 %615, %701
  br i1 %702, label %703, label %878

703:                                              ; preds = %698
  %704 = getelementptr inbounds i32, ptr %1, i64 %688
  %705 = load i32, ptr %704, align 4, !tbaa !11
  %706 = icmp sgt i32 %615, %705
  br i1 %706, label %707, label %878

707:                                              ; preds = %703
  %708 = add nsw i64 %688, 1
  %709 = getelementptr inbounds i32, ptr %1, i64 %708
  %710 = load i32, ptr %709, align 4, !tbaa !11
  %711 = icmp sgt i32 %615, %710
  br i1 %711, label %712, label %878

712:                                              ; preds = %707
  %713 = add nsw i64 %688, 2
  %714 = getelementptr inbounds i32, ptr %1, i64 %713
  %715 = load i32, ptr %714, align 4, !tbaa !11
  %716 = icmp sgt i32 %615, %715
  br i1 %716, label %717, label %878

717:                                              ; preds = %712
  %718 = add nsw i64 %688, 3
  %719 = getelementptr inbounds i32, ptr %1, i64 %718
  %720 = load i32, ptr %719, align 4, !tbaa !11
  %721 = icmp sgt i32 %615, %720
  br i1 %721, label %722, label %878

722:                                              ; preds = %717
  %723 = add nsw i64 %613, -3
  %724 = getelementptr inbounds i32, ptr %1, i64 %723
  %725 = load i32, ptr %724, align 4, !tbaa !11
  %726 = icmp sgt i32 %615, %725
  br i1 %726, label %727, label %878

727:                                              ; preds = %722
  %728 = add nsw i64 %613, -2
  %729 = getelementptr inbounds i32, ptr %1, i64 %728
  %730 = load i32, ptr %729, align 4, !tbaa !11
  %731 = icmp sgt i32 %615, %730
  br i1 %731, label %732, label %878

732:                                              ; preds = %727
  %733 = add nsw i64 %613, -1
  %734 = getelementptr inbounds i32, ptr %1, i64 %733
  %735 = load i32, ptr %734, align 4, !tbaa !11
  %736 = icmp sgt i32 %615, %735
  br i1 %736, label %737, label %878

737:                                              ; preds = %732
  %738 = add nsw i64 %613, 1
  %739 = getelementptr inbounds i32, ptr %1, i64 %738
  %740 = load i32, ptr %739, align 4, !tbaa !11
  %741 = icmp slt i32 %615, %740
  br i1 %741, label %878, label %742

742:                                              ; preds = %737
  %743 = add nsw i64 %613, 2
  %744 = getelementptr inbounds i32, ptr %1, i64 %743
  %745 = load i32, ptr %744, align 4, !tbaa !11
  %746 = icmp slt i32 %615, %745
  br i1 %746, label %878, label %747

747:                                              ; preds = %742
  %748 = add nsw i64 %613, 3
  %749 = getelementptr inbounds i32, ptr %1, i64 %748
  %750 = load i32, ptr %749, align 4, !tbaa !11
  %751 = icmp slt i32 %615, %750
  br i1 %751, label %878, label %752

752:                                              ; preds = %747
  %753 = add nsw i64 %611, %604
  %754 = add nsw i64 %753, -3
  %755 = getelementptr inbounds i32, ptr %1, i64 %754
  %756 = load i32, ptr %755, align 4, !tbaa !11
  %757 = icmp slt i32 %615, %756
  br i1 %757, label %878, label %758

758:                                              ; preds = %752
  %759 = add nsw i64 %753, -2
  %760 = getelementptr inbounds i32, ptr %1, i64 %759
  %761 = load i32, ptr %760, align 4, !tbaa !11
  %762 = icmp slt i32 %615, %761
  br i1 %762, label %878, label %763

763:                                              ; preds = %758
  %764 = add nsw i64 %753, -1
  %765 = getelementptr inbounds i32, ptr %1, i64 %764
  %766 = load i32, ptr %765, align 4, !tbaa !11
  %767 = icmp slt i32 %615, %766
  br i1 %767, label %878, label %768

768:                                              ; preds = %763
  %769 = getelementptr inbounds i32, ptr %1, i64 %753
  %770 = load i32, ptr %769, align 4, !tbaa !11
  %771 = icmp slt i32 %615, %770
  br i1 %771, label %878, label %772

772:                                              ; preds = %768
  %773 = add nsw i64 %753, 1
  %774 = getelementptr inbounds i32, ptr %1, i64 %773
  %775 = load i32, ptr %774, align 4, !tbaa !11
  %776 = icmp slt i32 %615, %775
  br i1 %776, label %878, label %777

777:                                              ; preds = %772
  %778 = add nsw i64 %753, 2
  %779 = getelementptr inbounds i32, ptr %1, i64 %778
  %780 = load i32, ptr %779, align 4, !tbaa !11
  %781 = icmp slt i32 %615, %780
  br i1 %781, label %878, label %782

782:                                              ; preds = %777
  %783 = add nsw i64 %753, 3
  %784 = getelementptr inbounds i32, ptr %1, i64 %783
  %785 = load i32, ptr %784, align 4, !tbaa !11
  %786 = icmp slt i32 %615, %785
  br i1 %786, label %878, label %787

787:                                              ; preds = %782
  %788 = add nsw i64 %611, %606
  %789 = add nsw i64 %788, -3
  %790 = getelementptr inbounds i32, ptr %1, i64 %789
  %791 = load i32, ptr %790, align 4, !tbaa !11
  %792 = icmp slt i32 %615, %791
  br i1 %792, label %878, label %793

793:                                              ; preds = %787
  %794 = add nsw i64 %788, -2
  %795 = getelementptr inbounds i32, ptr %1, i64 %794
  %796 = load i32, ptr %795, align 4, !tbaa !11
  %797 = icmp slt i32 %615, %796
  br i1 %797, label %878, label %798

798:                                              ; preds = %793
  %799 = add nsw i64 %788, -1
  %800 = getelementptr inbounds i32, ptr %1, i64 %799
  %801 = load i32, ptr %800, align 4, !tbaa !11
  %802 = icmp slt i32 %615, %801
  br i1 %802, label %878, label %803

803:                                              ; preds = %798
  %804 = getelementptr inbounds i32, ptr %1, i64 %788
  %805 = load i32, ptr %804, align 4, !tbaa !11
  %806 = icmp slt i32 %615, %805
  br i1 %806, label %878, label %807

807:                                              ; preds = %803
  %808 = add nsw i64 %788, 1
  %809 = getelementptr inbounds i32, ptr %1, i64 %808
  %810 = load i32, ptr %809, align 4, !tbaa !11
  %811 = icmp slt i32 %615, %810
  br i1 %811, label %878, label %812

812:                                              ; preds = %807
  %813 = add nsw i64 %788, 2
  %814 = getelementptr inbounds i32, ptr %1, i64 %813
  %815 = load i32, ptr %814, align 4, !tbaa !11
  %816 = icmp slt i32 %615, %815
  br i1 %816, label %878, label %817

817:                                              ; preds = %812
  %818 = add nsw i64 %788, 3
  %819 = getelementptr inbounds i32, ptr %1, i64 %818
  %820 = load i32, ptr %819, align 4, !tbaa !11
  %821 = icmp slt i32 %615, %820
  br i1 %821, label %878, label %822

822:                                              ; preds = %817
  %823 = add nsw i64 %611, %608
  %824 = add nsw i64 %823, -3
  %825 = getelementptr inbounds i32, ptr %1, i64 %824
  %826 = load i32, ptr %825, align 4, !tbaa !11
  %827 = icmp slt i32 %615, %826
  br i1 %827, label %878, label %828

828:                                              ; preds = %822
  %829 = add nsw i64 %823, -2
  %830 = getelementptr inbounds i32, ptr %1, i64 %829
  %831 = load i32, ptr %830, align 4, !tbaa !11
  %832 = icmp slt i32 %615, %831
  br i1 %832, label %878, label %833

833:                                              ; preds = %828
  %834 = add nsw i64 %823, -1
  %835 = getelementptr inbounds i32, ptr %1, i64 %834
  %836 = load i32, ptr %835, align 4, !tbaa !11
  %837 = icmp slt i32 %615, %836
  br i1 %837, label %878, label %838

838:                                              ; preds = %833
  %839 = getelementptr inbounds i32, ptr %1, i64 %823
  %840 = load i32, ptr %839, align 4, !tbaa !11
  %841 = icmp slt i32 %615, %840
  br i1 %841, label %878, label %842

842:                                              ; preds = %838
  %843 = add nsw i64 %823, 1
  %844 = getelementptr inbounds i32, ptr %1, i64 %843
  %845 = load i32, ptr %844, align 4, !tbaa !11
  %846 = icmp slt i32 %615, %845
  br i1 %846, label %878, label %847

847:                                              ; preds = %842
  %848 = add nsw i64 %823, 2
  %849 = getelementptr inbounds i32, ptr %1, i64 %848
  %850 = load i32, ptr %849, align 4, !tbaa !11
  %851 = icmp slt i32 %615, %850
  br i1 %851, label %878, label %852

852:                                              ; preds = %847
  %853 = add nsw i64 %823, 3
  %854 = getelementptr inbounds i32, ptr %1, i64 %853
  %855 = load i32, ptr %854, align 4, !tbaa !11
  %856 = icmp slt i32 %615, %855
  br i1 %856, label %878, label %857

857:                                              ; preds = %852
  %858 = sext i32 %612 to i64
  %859 = getelementptr inbounds %struct.anon, ptr %4, i64 %858
  %860 = getelementptr inbounds %struct.anon, ptr %4, i64 %858, i32 2
  store i32 0, ptr %860, align 4, !tbaa !50
  %861 = trunc i64 %611 to i32
  store i32 %861, ptr %859, align 4, !tbaa !53
  %862 = getelementptr inbounds %struct.anon, ptr %4, i64 %858, i32 1
  store i32 %609, ptr %862, align 4, !tbaa !52
  %863 = getelementptr inbounds i32, ptr %11, i64 %613
  %864 = load i32, ptr %863, align 4, !tbaa !11
  %865 = getelementptr inbounds %struct.anon, ptr %4, i64 %858, i32 3
  store i32 %864, ptr %865, align 4, !tbaa !57
  %866 = getelementptr inbounds i32, ptr %12, i64 %613
  %867 = load i32, ptr %866, align 4, !tbaa !11
  %868 = getelementptr inbounds %struct.anon, ptr %4, i64 %858, i32 4
  store i32 %867, ptr %868, align 4, !tbaa !58
  %869 = getelementptr inbounds i8, ptr %0, i64 %613
  %870 = load i8, ptr %869, align 1, !tbaa !15
  %871 = zext i8 %870 to i32
  %872 = getelementptr inbounds %struct.anon, ptr %4, i64 %858, i32 5
  store i32 %871, ptr %872, align 4, !tbaa !59
  %873 = add nsw i32 %612, 1
  %874 = icmp eq i32 %873, 15000
  br i1 %874, label %875, label %878

875:                                              ; preds = %857
  %876 = load ptr, ptr @stderr, align 8, !tbaa !7
  %877 = tail call i64 @fwrite(ptr nonnull @.str.29, i64 18, i64 1, ptr %876) #26
  tail call void @exit(i32 noundef 1) #20
  unreachable

878:                                              ; preds = %857, %852, %847, %842, %838, %833, %828, %822, %817, %812, %807, %803, %798, %793, %787, %782, %777, %772, %768, %763, %758, %752, %747, %742, %737, %732, %727, %722, %717, %712, %707, %703, %698, %693, %687, %682, %677, %672, %668, %663, %658, %652, %647, %642, %637, %633, %628, %623, %617, %610
  %879 = phi i32 [ %873, %857 ], [ %612, %852 ], [ %612, %847 ], [ %612, %842 ], [ %612, %838 ], [ %612, %833 ], [ %612, %828 ], [ %612, %822 ], [ %612, %817 ], [ %612, %812 ], [ %612, %807 ], [ %612, %803 ], [ %612, %798 ], [ %612, %793 ], [ %612, %787 ], [ %612, %782 ], [ %612, %777 ], [ %612, %772 ], [ %612, %768 ], [ %612, %763 ], [ %612, %758 ], [ %612, %752 ], [ %612, %747 ], [ %612, %742 ], [ %612, %737 ], [ %612, %732 ], [ %612, %727 ], [ %612, %722 ], [ %612, %717 ], [ %612, %712 ], [ %612, %707 ], [ %612, %703 ], [ %612, %698 ], [ %612, %693 ], [ %612, %687 ], [ %612, %682 ], [ %612, %677 ], [ %612, %672 ], [ %612, %668 ], [ %612, %663 ], [ %612, %658 ], [ %612, %652 ], [ %612, %647 ], [ %612, %642 ], [ %612, %637 ], [ %612, %633 ], [ %612, %628 ], [ %612, %623 ], [ %612, %617 ], [ %612, %610 ]
  %880 = add nuw nsw i64 %611, 1
  %881 = icmp eq i64 %880, %41
  br i1 %881, label %882, label %610, !llvm.loop !60

882:                                              ; preds = %878, %593
  %883 = phi i64 [ %594, %593 ], [ %603, %878 ]
  %884 = phi i32 [ %592, %593 ], [ %879, %878 ]
  %885 = icmp eq i64 %883, %40
  br i1 %885, label %886, label %590, !llvm.loop !61

886:                                              ; preds = %882, %35, %7
  %887 = phi i32 [ 0, %35 ], [ 0, %7 ], [ %884, %882 ]
  %888 = sext i32 %887 to i64
  %889 = getelementptr inbounds %struct.anon, ptr %4, i64 %888, i32 2
  store i32 7, ptr %889, align 4, !tbaa !50
  tail call void @free(ptr noundef %11) #25
  tail call void @free(ptr noundef %12) #25
  ret i32 undef
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #8

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #18

; Function Attrs: nounwind optsize uwtable
define internal i32 @susan_corners_quick(ptr noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, ptr nocapture noundef writeonly %4, i32 noundef %5, i32 noundef %6) #3 {
  %8 = mul nsw i32 %6, %5
  %9 = sext i32 %8 to i64
  %10 = shl nsw i64 %9, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %1, i8 0, i64 %10, i1 false)
  %11 = add i32 %6, -7
  %12 = icmp sgt i32 %6, 14
  br i1 %12, label %13, label %864

13:                                               ; preds = %7
  %14 = add i32 %5, -7
  %15 = icmp sgt i32 %5, 14
  %16 = add nsw i32 %5, -3
  %17 = sext i32 %16 to i64
  %18 = add nsw i32 %5, -5
  %19 = sext i32 %18 to i64
  %20 = add nsw i32 %5, -6
  %21 = sext i32 %20 to i64
  %22 = sext i32 %5 to i64
  %23 = zext i32 %11 to i64
  %24 = zext i32 %14 to i64
  br label %25

25:                                               ; preds = %377, %13
  %26 = phi i64 [ 7, %13 ], [ %378, %377 ]
  br i1 %15, label %27, label %377

27:                                               ; preds = %25
  %28 = add nsw i64 %26, -3
  %29 = mul nsw i64 %28, %22
  %30 = getelementptr inbounds i8, ptr %0, i64 %29
  %31 = mul nsw i64 %26, %22
  br label %39

32:                                               ; preds = %377
  br i1 %12, label %33, label %864

33:                                               ; preds = %32
  %34 = add i32 %5, -7
  %35 = icmp sgt i32 %5, 14
  %36 = sext i32 %5 to i64
  %37 = zext i32 %11 to i64
  %38 = zext i32 %34 to i64
  br label %380

39:                                               ; preds = %374, %27
  %40 = phi i64 [ 7, %27 ], [ %375, %374 ]
  %41 = getelementptr inbounds i8, ptr %30, i64 %40
  %42 = getelementptr inbounds i8, ptr %41, i64 -1
  %43 = add nsw i64 %40, %31
  %44 = getelementptr inbounds i8, ptr %0, i64 %43
  %45 = load i8, ptr %44, align 1, !tbaa !15
  %46 = zext i8 %45 to i64
  %47 = getelementptr inbounds i8, ptr %2, i64 %46
  %48 = load i8, ptr %42, align 1, !tbaa !15
  %49 = zext i8 %48 to i64
  %50 = sub nsw i64 0, %49
  %51 = getelementptr inbounds i8, ptr %47, i64 %50
  %52 = load i8, ptr %51, align 1, !tbaa !15
  %53 = zext i8 %52 to i32
  %54 = add nuw nsw i32 %53, 100
  %55 = getelementptr inbounds i8, ptr %41, i64 1
  %56 = load i8, ptr %41, align 1, !tbaa !15
  %57 = zext i8 %56 to i64
  %58 = sub nsw i64 0, %57
  %59 = getelementptr inbounds i8, ptr %47, i64 %58
  %60 = load i8, ptr %59, align 1, !tbaa !15
  %61 = zext i8 %60 to i32
  %62 = add nuw nsw i32 %54, %61
  %63 = load i8, ptr %55, align 1, !tbaa !15
  %64 = zext i8 %63 to i64
  %65 = sub nsw i64 0, %64
  %66 = getelementptr inbounds i8, ptr %47, i64 %65
  %67 = load i8, ptr %66, align 1, !tbaa !15
  %68 = zext i8 %67 to i32
  %69 = add nuw nsw i32 %62, %68
  %70 = getelementptr inbounds i8, ptr %55, i64 %17
  %71 = getelementptr inbounds i8, ptr %70, i64 1
  %72 = load i8, ptr %70, align 1, !tbaa !15
  %73 = zext i8 %72 to i64
  %74 = sub nsw i64 0, %73
  %75 = getelementptr inbounds i8, ptr %47, i64 %74
  %76 = load i8, ptr %75, align 1, !tbaa !15
  %77 = zext i8 %76 to i32
  %78 = add nuw nsw i32 %69, %77
  %79 = getelementptr inbounds i8, ptr %70, i64 2
  %80 = load i8, ptr %71, align 1, !tbaa !15
  %81 = zext i8 %80 to i64
  %82 = sub nsw i64 0, %81
  %83 = getelementptr inbounds i8, ptr %47, i64 %82
  %84 = load i8, ptr %83, align 1, !tbaa !15
  %85 = zext i8 %84 to i32
  %86 = add nuw nsw i32 %78, %85
  %87 = getelementptr inbounds i8, ptr %70, i64 3
  %88 = load i8, ptr %79, align 1, !tbaa !15
  %89 = zext i8 %88 to i64
  %90 = sub nsw i64 0, %89
  %91 = getelementptr inbounds i8, ptr %47, i64 %90
  %92 = load i8, ptr %91, align 1, !tbaa !15
  %93 = zext i8 %92 to i32
  %94 = add nuw nsw i32 %86, %93
  %95 = getelementptr inbounds i8, ptr %70, i64 4
  %96 = load i8, ptr %87, align 1, !tbaa !15
  %97 = zext i8 %96 to i64
  %98 = sub nsw i64 0, %97
  %99 = getelementptr inbounds i8, ptr %47, i64 %98
  %100 = load i8, ptr %99, align 1, !tbaa !15
  %101 = zext i8 %100 to i32
  %102 = add nuw nsw i32 %94, %101
  %103 = load i8, ptr %95, align 1, !tbaa !15
  %104 = zext i8 %103 to i64
  %105 = sub nsw i64 0, %104
  %106 = getelementptr inbounds i8, ptr %47, i64 %105
  %107 = load i8, ptr %106, align 1, !tbaa !15
  %108 = zext i8 %107 to i32
  %109 = add nuw nsw i32 %102, %108
  %110 = getelementptr inbounds i8, ptr %95, i64 %19
  %111 = getelementptr inbounds i8, ptr %110, i64 1
  %112 = load i8, ptr %110, align 1, !tbaa !15
  %113 = zext i8 %112 to i64
  %114 = sub nsw i64 0, %113
  %115 = getelementptr inbounds i8, ptr %47, i64 %114
  %116 = load i8, ptr %115, align 1, !tbaa !15
  %117 = zext i8 %116 to i32
  %118 = add nuw nsw i32 %109, %117
  %119 = getelementptr inbounds i8, ptr %110, i64 2
  %120 = load i8, ptr %111, align 1, !tbaa !15
  %121 = zext i8 %120 to i64
  %122 = sub nsw i64 0, %121
  %123 = getelementptr inbounds i8, ptr %47, i64 %122
  %124 = load i8, ptr %123, align 1, !tbaa !15
  %125 = zext i8 %124 to i32
  %126 = add nuw nsw i32 %118, %125
  %127 = getelementptr inbounds i8, ptr %110, i64 3
  %128 = load i8, ptr %119, align 1, !tbaa !15
  %129 = zext i8 %128 to i64
  %130 = sub nsw i64 0, %129
  %131 = getelementptr inbounds i8, ptr %47, i64 %130
  %132 = load i8, ptr %131, align 1, !tbaa !15
  %133 = zext i8 %132 to i32
  %134 = add nuw nsw i32 %126, %133
  %135 = getelementptr inbounds i8, ptr %110, i64 4
  %136 = load i8, ptr %127, align 1, !tbaa !15
  %137 = zext i8 %136 to i64
  %138 = sub nsw i64 0, %137
  %139 = getelementptr inbounds i8, ptr %47, i64 %138
  %140 = load i8, ptr %139, align 1, !tbaa !15
  %141 = zext i8 %140 to i32
  %142 = add nuw nsw i32 %134, %141
  %143 = getelementptr inbounds i8, ptr %110, i64 5
  %144 = load i8, ptr %135, align 1, !tbaa !15
  %145 = zext i8 %144 to i64
  %146 = sub nsw i64 0, %145
  %147 = getelementptr inbounds i8, ptr %47, i64 %146
  %148 = load i8, ptr %147, align 1, !tbaa !15
  %149 = zext i8 %148 to i32
  %150 = add nuw nsw i32 %142, %149
  %151 = getelementptr inbounds i8, ptr %110, i64 6
  %152 = load i8, ptr %143, align 1, !tbaa !15
  %153 = zext i8 %152 to i64
  %154 = sub nsw i64 0, %153
  %155 = getelementptr inbounds i8, ptr %47, i64 %154
  %156 = load i8, ptr %155, align 1, !tbaa !15
  %157 = zext i8 %156 to i32
  %158 = add nuw nsw i32 %150, %157
  %159 = load i8, ptr %151, align 1, !tbaa !15
  %160 = zext i8 %159 to i64
  %161 = sub nsw i64 0, %160
  %162 = getelementptr inbounds i8, ptr %47, i64 %161
  %163 = load i8, ptr %162, align 1, !tbaa !15
  %164 = zext i8 %163 to i32
  %165 = add nuw nsw i32 %158, %164
  %166 = getelementptr inbounds i8, ptr %151, i64 %21
  %167 = getelementptr inbounds i8, ptr %166, i64 1
  %168 = load i8, ptr %166, align 1, !tbaa !15
  %169 = zext i8 %168 to i64
  %170 = sub nsw i64 0, %169
  %171 = getelementptr inbounds i8, ptr %47, i64 %170
  %172 = load i8, ptr %171, align 1, !tbaa !15
  %173 = zext i8 %172 to i32
  %174 = add nuw nsw i32 %165, %173
  %175 = getelementptr inbounds i8, ptr %166, i64 2
  %176 = load i8, ptr %167, align 1, !tbaa !15
  %177 = zext i8 %176 to i64
  %178 = sub nsw i64 0, %177
  %179 = getelementptr inbounds i8, ptr %47, i64 %178
  %180 = load i8, ptr %179, align 1, !tbaa !15
  %181 = zext i8 %180 to i32
  %182 = add nuw nsw i32 %174, %181
  %183 = load i8, ptr %175, align 1, !tbaa !15
  %184 = zext i8 %183 to i64
  %185 = sub nsw i64 0, %184
  %186 = getelementptr inbounds i8, ptr %47, i64 %185
  %187 = load i8, ptr %186, align 1, !tbaa !15
  %188 = zext i8 %187 to i32
  %189 = add nuw nsw i32 %182, %188
  %190 = icmp slt i32 %189, %3
  br i1 %190, label %191, label %374

191:                                              ; preds = %39
  %192 = getelementptr inbounds i8, ptr %166, i64 4
  %193 = load i8, ptr %192, align 1, !tbaa !15
  %194 = zext i8 %193 to i64
  %195 = sub nsw i64 0, %194
  %196 = getelementptr inbounds i8, ptr %47, i64 %195
  %197 = load i8, ptr %196, align 1, !tbaa !15
  %198 = zext i8 %197 to i32
  %199 = add nuw nsw i32 %189, %198
  %200 = icmp slt i32 %199, %3
  br i1 %200, label %201, label %374

201:                                              ; preds = %191
  %202 = getelementptr inbounds i8, ptr %166, i64 5
  %203 = getelementptr inbounds i8, ptr %166, i64 6
  %204 = load i8, ptr %202, align 1, !tbaa !15
  %205 = zext i8 %204 to i64
  %206 = sub nsw i64 0, %205
  %207 = getelementptr inbounds i8, ptr %47, i64 %206
  %208 = load i8, ptr %207, align 1, !tbaa !15
  %209 = zext i8 %208 to i32
  %210 = add nuw nsw i32 %199, %209
  %211 = icmp slt i32 %210, %3
  br i1 %211, label %212, label %374

212:                                              ; preds = %201
  %213 = load i8, ptr %203, align 1, !tbaa !15
  %214 = zext i8 %213 to i64
  %215 = sub nsw i64 0, %214
  %216 = getelementptr inbounds i8, ptr %47, i64 %215
  %217 = load i8, ptr %216, align 1, !tbaa !15
  %218 = zext i8 %217 to i32
  %219 = add nuw nsw i32 %210, %218
  %220 = icmp slt i32 %219, %3
  br i1 %220, label %221, label %374

221:                                              ; preds = %212
  %222 = getelementptr inbounds i8, ptr %203, i64 %21
  %223 = load i8, ptr %222, align 1, !tbaa !15
  %224 = zext i8 %223 to i64
  %225 = sub nsw i64 0, %224
  %226 = getelementptr inbounds i8, ptr %47, i64 %225
  %227 = load i8, ptr %226, align 1, !tbaa !15
  %228 = zext i8 %227 to i32
  %229 = add nuw nsw i32 %219, %228
  %230 = icmp slt i32 %229, %3
  br i1 %230, label %231, label %374

231:                                              ; preds = %221
  %232 = getelementptr inbounds i8, ptr %222, i64 1
  %233 = load i8, ptr %232, align 1, !tbaa !15
  %234 = zext i8 %233 to i64
  %235 = sub nsw i64 0, %234
  %236 = getelementptr inbounds i8, ptr %47, i64 %235
  %237 = load i8, ptr %236, align 1, !tbaa !15
  %238 = zext i8 %237 to i32
  %239 = add nuw nsw i32 %229, %238
  %240 = icmp slt i32 %239, %3
  br i1 %240, label %241, label %374

241:                                              ; preds = %231
  %242 = getelementptr inbounds i8, ptr %222, i64 2
  %243 = load i8, ptr %242, align 1, !tbaa !15
  %244 = zext i8 %243 to i64
  %245 = sub nsw i64 0, %244
  %246 = getelementptr inbounds i8, ptr %47, i64 %245
  %247 = load i8, ptr %246, align 1, !tbaa !15
  %248 = zext i8 %247 to i32
  %249 = add nuw nsw i32 %239, %248
  %250 = icmp slt i32 %249, %3
  br i1 %250, label %251, label %374

251:                                              ; preds = %241
  %252 = getelementptr inbounds i8, ptr %222, i64 3
  %253 = load i8, ptr %252, align 1, !tbaa !15
  %254 = zext i8 %253 to i64
  %255 = sub nsw i64 0, %254
  %256 = getelementptr inbounds i8, ptr %47, i64 %255
  %257 = load i8, ptr %256, align 1, !tbaa !15
  %258 = zext i8 %257 to i32
  %259 = add nuw nsw i32 %249, %258
  %260 = icmp slt i32 %259, %3
  br i1 %260, label %261, label %374

261:                                              ; preds = %251
  %262 = getelementptr inbounds i8, ptr %222, i64 4
  %263 = load i8, ptr %262, align 1, !tbaa !15
  %264 = zext i8 %263 to i64
  %265 = sub nsw i64 0, %264
  %266 = getelementptr inbounds i8, ptr %47, i64 %265
  %267 = load i8, ptr %266, align 1, !tbaa !15
  %268 = zext i8 %267 to i32
  %269 = add nuw nsw i32 %259, %268
  %270 = icmp slt i32 %269, %3
  br i1 %270, label %271, label %374

271:                                              ; preds = %261
  %272 = getelementptr inbounds i8, ptr %222, i64 5
  %273 = getelementptr inbounds i8, ptr %222, i64 6
  %274 = load i8, ptr %272, align 1, !tbaa !15
  %275 = zext i8 %274 to i64
  %276 = sub nsw i64 0, %275
  %277 = getelementptr inbounds i8, ptr %47, i64 %276
  %278 = load i8, ptr %277, align 1, !tbaa !15
  %279 = zext i8 %278 to i32
  %280 = add nuw nsw i32 %269, %279
  %281 = icmp slt i32 %280, %3
  br i1 %281, label %282, label %374

282:                                              ; preds = %271
  %283 = load i8, ptr %273, align 1, !tbaa !15
  %284 = zext i8 %283 to i64
  %285 = sub nsw i64 0, %284
  %286 = getelementptr inbounds i8, ptr %47, i64 %285
  %287 = load i8, ptr %286, align 1, !tbaa !15
  %288 = zext i8 %287 to i32
  %289 = add nuw nsw i32 %280, %288
  %290 = icmp slt i32 %289, %3
  br i1 %290, label %291, label %374

291:                                              ; preds = %282
  %292 = getelementptr inbounds i8, ptr %273, i64 %19
  %293 = load i8, ptr %292, align 1, !tbaa !15
  %294 = zext i8 %293 to i64
  %295 = sub nsw i64 0, %294
  %296 = getelementptr inbounds i8, ptr %47, i64 %295
  %297 = load i8, ptr %296, align 1, !tbaa !15
  %298 = zext i8 %297 to i32
  %299 = add nuw nsw i32 %289, %298
  %300 = icmp slt i32 %299, %3
  br i1 %300, label %301, label %374

301:                                              ; preds = %291
  %302 = getelementptr inbounds i8, ptr %292, i64 1
  %303 = load i8, ptr %302, align 1, !tbaa !15
  %304 = zext i8 %303 to i64
  %305 = sub nsw i64 0, %304
  %306 = getelementptr inbounds i8, ptr %47, i64 %305
  %307 = load i8, ptr %306, align 1, !tbaa !15
  %308 = zext i8 %307 to i32
  %309 = add nuw nsw i32 %299, %308
  %310 = icmp slt i32 %309, %3
  br i1 %310, label %311, label %374

311:                                              ; preds = %301
  %312 = getelementptr inbounds i8, ptr %292, i64 2
  %313 = load i8, ptr %312, align 1, !tbaa !15
  %314 = zext i8 %313 to i64
  %315 = sub nsw i64 0, %314
  %316 = getelementptr inbounds i8, ptr %47, i64 %315
  %317 = load i8, ptr %316, align 1, !tbaa !15
  %318 = zext i8 %317 to i32
  %319 = add nuw nsw i32 %309, %318
  %320 = icmp slt i32 %319, %3
  br i1 %320, label %321, label %374

321:                                              ; preds = %311
  %322 = getelementptr inbounds i8, ptr %292, i64 3
  %323 = getelementptr inbounds i8, ptr %292, i64 4
  %324 = load i8, ptr %322, align 1, !tbaa !15
  %325 = zext i8 %324 to i64
  %326 = sub nsw i64 0, %325
  %327 = getelementptr inbounds i8, ptr %47, i64 %326
  %328 = load i8, ptr %327, align 1, !tbaa !15
  %329 = zext i8 %328 to i32
  %330 = add nuw nsw i32 %319, %329
  %331 = icmp slt i32 %330, %3
  br i1 %331, label %332, label %374

332:                                              ; preds = %321
  %333 = load i8, ptr %323, align 1, !tbaa !15
  %334 = zext i8 %333 to i64
  %335 = sub nsw i64 0, %334
  %336 = getelementptr inbounds i8, ptr %47, i64 %335
  %337 = load i8, ptr %336, align 1, !tbaa !15
  %338 = zext i8 %337 to i32
  %339 = add nuw nsw i32 %330, %338
  %340 = icmp slt i32 %339, %3
  br i1 %340, label %341, label %374

341:                                              ; preds = %332
  %342 = getelementptr inbounds i8, ptr %323, i64 %17
  %343 = load i8, ptr %342, align 1, !tbaa !15
  %344 = zext i8 %343 to i64
  %345 = sub nsw i64 0, %344
  %346 = getelementptr inbounds i8, ptr %47, i64 %345
  %347 = load i8, ptr %346, align 1, !tbaa !15
  %348 = zext i8 %347 to i32
  %349 = add nuw nsw i32 %339, %348
  %350 = icmp slt i32 %349, %3
  br i1 %350, label %351, label %374

351:                                              ; preds = %341
  %352 = getelementptr inbounds i8, ptr %342, i64 1
  %353 = load i8, ptr %352, align 1, !tbaa !15
  %354 = zext i8 %353 to i64
  %355 = sub nsw i64 0, %354
  %356 = getelementptr inbounds i8, ptr %47, i64 %355
  %357 = load i8, ptr %356, align 1, !tbaa !15
  %358 = zext i8 %357 to i32
  %359 = add nuw nsw i32 %349, %358
  %360 = icmp slt i32 %359, %3
  br i1 %360, label %361, label %374

361:                                              ; preds = %351
  %362 = getelementptr inbounds i8, ptr %342, i64 2
  %363 = load i8, ptr %362, align 1, !tbaa !15
  %364 = zext i8 %363 to i64
  %365 = sub nsw i64 0, %364
  %366 = getelementptr inbounds i8, ptr %47, i64 %365
  %367 = load i8, ptr %366, align 1, !tbaa !15
  %368 = zext i8 %367 to i32
  %369 = add nuw nsw i32 %359, %368
  %370 = icmp slt i32 %369, %3
  br i1 %370, label %371, label %374

371:                                              ; preds = %361
  %372 = sub nsw i32 %3, %369
  %373 = getelementptr inbounds i32, ptr %1, i64 %43
  store i32 %372, ptr %373, align 4, !tbaa !11
  br label %374

374:                                              ; preds = %371, %361, %351, %341, %332, %321, %311, %301, %291, %282, %271, %261, %251, %241, %231, %221, %212, %201, %191, %39
  %375 = add nuw nsw i64 %40, 1
  %376 = icmp eq i64 %375, %24
  br i1 %376, label %377, label %39, !llvm.loop !62

377:                                              ; preds = %374, %25
  %378 = add nuw nsw i64 %26, 1
  %379 = icmp eq i64 %378, %23
  br i1 %379, label %32, label %25, !llvm.loop !63

380:                                              ; preds = %860, %33
  %381 = phi i64 [ 7, %33 ], [ %861, %860 ]
  %382 = phi i32 [ 0, %33 ], [ %862, %860 ]
  br i1 %35, label %385, label %383

383:                                              ; preds = %380
  %384 = add nuw nsw i64 %381, 1
  br label %860

385:                                              ; preds = %380
  %386 = mul nsw i64 %381, %36
  %387 = add nsw i64 %381, -3
  %388 = mul nsw i64 %387, %36
  %389 = add nsw i64 %381, -2
  %390 = mul nsw i64 %389, %36
  %391 = add nsw i64 %381, -1
  %392 = mul nsw i64 %391, %36
  %393 = add nuw nsw i64 %381, 1
  %394 = mul nsw i64 %393, %36
  %395 = add nuw nsw i64 %381, 2
  %396 = mul nsw i64 %395, %36
  %397 = add nuw nsw i64 %381, 3
  %398 = mul nsw i64 %397, %36
  %399 = trunc i64 %381 to i32
  br label %400

400:                                              ; preds = %856, %385
  %401 = phi i64 [ 7, %385 ], [ %858, %856 ]
  %402 = phi i32 [ %382, %385 ], [ %857, %856 ]
  %403 = add nsw i64 %401, %386
  %404 = getelementptr inbounds i32, ptr %1, i64 %403
  %405 = load i32, ptr %404, align 4, !tbaa !11
  %406 = icmp sgt i32 %405, 0
  br i1 %406, label %407, label %856

407:                                              ; preds = %400
  %408 = add nsw i64 %401, %388
  %409 = add nsw i64 %408, -3
  %410 = getelementptr inbounds i32, ptr %1, i64 %409
  %411 = load i32, ptr %410, align 4, !tbaa !11
  %412 = icmp sgt i32 %405, %411
  br i1 %412, label %413, label %856

413:                                              ; preds = %407
  %414 = add nsw i64 %408, -2
  %415 = getelementptr inbounds i32, ptr %1, i64 %414
  %416 = load i32, ptr %415, align 4, !tbaa !11
  %417 = icmp sgt i32 %405, %416
  br i1 %417, label %418, label %856

418:                                              ; preds = %413
  %419 = add nsw i64 %408, -1
  %420 = getelementptr inbounds i32, ptr %1, i64 %419
  %421 = load i32, ptr %420, align 4, !tbaa !11
  %422 = icmp sgt i32 %405, %421
  br i1 %422, label %423, label %856

423:                                              ; preds = %418
  %424 = getelementptr inbounds i32, ptr %1, i64 %408
  %425 = load i32, ptr %424, align 4, !tbaa !11
  %426 = icmp sgt i32 %405, %425
  br i1 %426, label %427, label %856

427:                                              ; preds = %423
  %428 = add nsw i64 %408, 1
  %429 = getelementptr inbounds i32, ptr %1, i64 %428
  %430 = load i32, ptr %429, align 4, !tbaa !11
  %431 = icmp sgt i32 %405, %430
  br i1 %431, label %432, label %856

432:                                              ; preds = %427
  %433 = add nsw i64 %408, 2
  %434 = getelementptr inbounds i32, ptr %1, i64 %433
  %435 = load i32, ptr %434, align 4, !tbaa !11
  %436 = icmp sgt i32 %405, %435
  br i1 %436, label %437, label %856

437:                                              ; preds = %432
  %438 = add nsw i64 %408, 3
  %439 = getelementptr inbounds i32, ptr %1, i64 %438
  %440 = load i32, ptr %439, align 4, !tbaa !11
  %441 = icmp sgt i32 %405, %440
  br i1 %441, label %442, label %856

442:                                              ; preds = %437
  %443 = add nsw i64 %401, %390
  %444 = add nsw i64 %443, -3
  %445 = getelementptr inbounds i32, ptr %1, i64 %444
  %446 = load i32, ptr %445, align 4, !tbaa !11
  %447 = icmp sgt i32 %405, %446
  br i1 %447, label %448, label %856

448:                                              ; preds = %442
  %449 = add nsw i64 %443, -2
  %450 = getelementptr inbounds i32, ptr %1, i64 %449
  %451 = load i32, ptr %450, align 4, !tbaa !11
  %452 = icmp sgt i32 %405, %451
  br i1 %452, label %453, label %856

453:                                              ; preds = %448
  %454 = add nsw i64 %443, -1
  %455 = getelementptr inbounds i32, ptr %1, i64 %454
  %456 = load i32, ptr %455, align 4, !tbaa !11
  %457 = icmp sgt i32 %405, %456
  br i1 %457, label %458, label %856

458:                                              ; preds = %453
  %459 = getelementptr inbounds i32, ptr %1, i64 %443
  %460 = load i32, ptr %459, align 4, !tbaa !11
  %461 = icmp sgt i32 %405, %460
  br i1 %461, label %462, label %856

462:                                              ; preds = %458
  %463 = add nsw i64 %443, 1
  %464 = getelementptr inbounds i32, ptr %1, i64 %463
  %465 = load i32, ptr %464, align 4, !tbaa !11
  %466 = icmp sgt i32 %405, %465
  br i1 %466, label %467, label %856

467:                                              ; preds = %462
  %468 = add nsw i64 %443, 2
  %469 = getelementptr inbounds i32, ptr %1, i64 %468
  %470 = load i32, ptr %469, align 4, !tbaa !11
  %471 = icmp sgt i32 %405, %470
  br i1 %471, label %472, label %856

472:                                              ; preds = %467
  %473 = add nsw i64 %443, 3
  %474 = getelementptr inbounds i32, ptr %1, i64 %473
  %475 = load i32, ptr %474, align 4, !tbaa !11
  %476 = icmp sgt i32 %405, %475
  br i1 %476, label %477, label %856

477:                                              ; preds = %472
  %478 = add nsw i64 %401, %392
  %479 = add nsw i64 %478, -3
  %480 = getelementptr inbounds i32, ptr %1, i64 %479
  %481 = load i32, ptr %480, align 4, !tbaa !11
  %482 = icmp sgt i32 %405, %481
  br i1 %482, label %483, label %856

483:                                              ; preds = %477
  %484 = add nsw i64 %478, -2
  %485 = getelementptr inbounds i32, ptr %1, i64 %484
  %486 = load i32, ptr %485, align 4, !tbaa !11
  %487 = icmp sgt i32 %405, %486
  br i1 %487, label %488, label %856

488:                                              ; preds = %483
  %489 = add nsw i64 %478, -1
  %490 = getelementptr inbounds i32, ptr %1, i64 %489
  %491 = load i32, ptr %490, align 4, !tbaa !11
  %492 = icmp sgt i32 %405, %491
  br i1 %492, label %493, label %856

493:                                              ; preds = %488
  %494 = getelementptr inbounds i32, ptr %1, i64 %478
  %495 = load i32, ptr %494, align 4, !tbaa !11
  %496 = icmp sgt i32 %405, %495
  br i1 %496, label %497, label %856

497:                                              ; preds = %493
  %498 = add nsw i64 %478, 1
  %499 = getelementptr inbounds i32, ptr %1, i64 %498
  %500 = load i32, ptr %499, align 4, !tbaa !11
  %501 = icmp sgt i32 %405, %500
  br i1 %501, label %502, label %856

502:                                              ; preds = %497
  %503 = add nsw i64 %478, 2
  %504 = getelementptr inbounds i32, ptr %1, i64 %503
  %505 = load i32, ptr %504, align 4, !tbaa !11
  %506 = icmp sgt i32 %405, %505
  br i1 %506, label %507, label %856

507:                                              ; preds = %502
  %508 = add nsw i64 %478, 3
  %509 = getelementptr inbounds i32, ptr %1, i64 %508
  %510 = load i32, ptr %509, align 4, !tbaa !11
  %511 = icmp sgt i32 %405, %510
  br i1 %511, label %512, label %856

512:                                              ; preds = %507
  %513 = add nsw i64 %403, -3
  %514 = getelementptr inbounds i32, ptr %1, i64 %513
  %515 = load i32, ptr %514, align 4, !tbaa !11
  %516 = icmp sgt i32 %405, %515
  br i1 %516, label %517, label %856

517:                                              ; preds = %512
  %518 = add nsw i64 %403, -2
  %519 = getelementptr inbounds i32, ptr %1, i64 %518
  %520 = load i32, ptr %519, align 4, !tbaa !11
  %521 = icmp sgt i32 %405, %520
  br i1 %521, label %522, label %856

522:                                              ; preds = %517
  %523 = add nsw i64 %403, -1
  %524 = getelementptr inbounds i32, ptr %1, i64 %523
  %525 = load i32, ptr %524, align 4, !tbaa !11
  %526 = icmp sgt i32 %405, %525
  br i1 %526, label %527, label %856

527:                                              ; preds = %522
  %528 = add nsw i64 %403, 1
  %529 = getelementptr inbounds i32, ptr %1, i64 %528
  %530 = load i32, ptr %529, align 4, !tbaa !11
  %531 = icmp slt i32 %405, %530
  br i1 %531, label %856, label %532

532:                                              ; preds = %527
  %533 = add nsw i64 %403, 2
  %534 = getelementptr inbounds i32, ptr %1, i64 %533
  %535 = load i32, ptr %534, align 4, !tbaa !11
  %536 = icmp slt i32 %405, %535
  br i1 %536, label %856, label %537

537:                                              ; preds = %532
  %538 = add nsw i64 %403, 3
  %539 = getelementptr inbounds i32, ptr %1, i64 %538
  %540 = load i32, ptr %539, align 4, !tbaa !11
  %541 = icmp slt i32 %405, %540
  br i1 %541, label %856, label %542

542:                                              ; preds = %537
  %543 = add nsw i64 %401, %394
  %544 = add nsw i64 %543, -3
  %545 = getelementptr inbounds i32, ptr %1, i64 %544
  %546 = load i32, ptr %545, align 4, !tbaa !11
  %547 = icmp slt i32 %405, %546
  br i1 %547, label %856, label %548

548:                                              ; preds = %542
  %549 = add nsw i64 %543, -2
  %550 = getelementptr inbounds i32, ptr %1, i64 %549
  %551 = load i32, ptr %550, align 4, !tbaa !11
  %552 = icmp slt i32 %405, %551
  br i1 %552, label %856, label %553

553:                                              ; preds = %548
  %554 = add nsw i64 %543, -1
  %555 = getelementptr inbounds i32, ptr %1, i64 %554
  %556 = load i32, ptr %555, align 4, !tbaa !11
  %557 = icmp slt i32 %405, %556
  br i1 %557, label %856, label %558

558:                                              ; preds = %553
  %559 = getelementptr inbounds i32, ptr %1, i64 %543
  %560 = load i32, ptr %559, align 4, !tbaa !11
  %561 = icmp slt i32 %405, %560
  br i1 %561, label %856, label %562

562:                                              ; preds = %558
  %563 = add nsw i64 %543, 1
  %564 = getelementptr inbounds i32, ptr %1, i64 %563
  %565 = load i32, ptr %564, align 4, !tbaa !11
  %566 = icmp slt i32 %405, %565
  br i1 %566, label %856, label %567

567:                                              ; preds = %562
  %568 = add nsw i64 %543, 2
  %569 = getelementptr inbounds i32, ptr %1, i64 %568
  %570 = load i32, ptr %569, align 4, !tbaa !11
  %571 = icmp slt i32 %405, %570
  br i1 %571, label %856, label %572

572:                                              ; preds = %567
  %573 = add nsw i64 %543, 3
  %574 = getelementptr inbounds i32, ptr %1, i64 %573
  %575 = load i32, ptr %574, align 4, !tbaa !11
  %576 = icmp slt i32 %405, %575
  br i1 %576, label %856, label %577

577:                                              ; preds = %572
  %578 = add nsw i64 %401, %396
  %579 = add nsw i64 %578, -3
  %580 = getelementptr inbounds i32, ptr %1, i64 %579
  %581 = load i32, ptr %580, align 4, !tbaa !11
  %582 = icmp slt i32 %405, %581
  br i1 %582, label %856, label %583

583:                                              ; preds = %577
  %584 = add nsw i64 %578, -2
  %585 = getelementptr inbounds i32, ptr %1, i64 %584
  %586 = load i32, ptr %585, align 4, !tbaa !11
  %587 = icmp slt i32 %405, %586
  br i1 %587, label %856, label %588

588:                                              ; preds = %583
  %589 = add nsw i64 %578, -1
  %590 = getelementptr inbounds i32, ptr %1, i64 %589
  %591 = load i32, ptr %590, align 4, !tbaa !11
  %592 = icmp slt i32 %405, %591
  br i1 %592, label %856, label %593

593:                                              ; preds = %588
  %594 = getelementptr inbounds i32, ptr %1, i64 %578
  %595 = load i32, ptr %594, align 4, !tbaa !11
  %596 = icmp slt i32 %405, %595
  br i1 %596, label %856, label %597

597:                                              ; preds = %593
  %598 = add nsw i64 %578, 1
  %599 = getelementptr inbounds i32, ptr %1, i64 %598
  %600 = load i32, ptr %599, align 4, !tbaa !11
  %601 = icmp slt i32 %405, %600
  br i1 %601, label %856, label %602

602:                                              ; preds = %597
  %603 = add nsw i64 %578, 2
  %604 = getelementptr inbounds i32, ptr %1, i64 %603
  %605 = load i32, ptr %604, align 4, !tbaa !11
  %606 = icmp slt i32 %405, %605
  br i1 %606, label %856, label %607

607:                                              ; preds = %602
  %608 = add nsw i64 %578, 3
  %609 = getelementptr inbounds i32, ptr %1, i64 %608
  %610 = load i32, ptr %609, align 4, !tbaa !11
  %611 = icmp slt i32 %405, %610
  br i1 %611, label %856, label %612

612:                                              ; preds = %607
  %613 = add nsw i64 %401, %398
  %614 = add nsw i64 %613, -3
  %615 = getelementptr inbounds i32, ptr %1, i64 %614
  %616 = load i32, ptr %615, align 4, !tbaa !11
  %617 = icmp slt i32 %405, %616
  br i1 %617, label %856, label %618

618:                                              ; preds = %612
  %619 = add nsw i64 %613, -2
  %620 = getelementptr inbounds i32, ptr %1, i64 %619
  %621 = load i32, ptr %620, align 4, !tbaa !11
  %622 = icmp slt i32 %405, %621
  br i1 %622, label %856, label %623

623:                                              ; preds = %618
  %624 = add nsw i64 %613, -1
  %625 = getelementptr inbounds i32, ptr %1, i64 %624
  %626 = load i32, ptr %625, align 4, !tbaa !11
  %627 = icmp slt i32 %405, %626
  br i1 %627, label %856, label %628

628:                                              ; preds = %623
  %629 = getelementptr inbounds i32, ptr %1, i64 %613
  %630 = load i32, ptr %629, align 4, !tbaa !11
  %631 = icmp slt i32 %405, %630
  br i1 %631, label %856, label %632

632:                                              ; preds = %628
  %633 = add nsw i64 %613, 1
  %634 = getelementptr inbounds i32, ptr %1, i64 %633
  %635 = load i32, ptr %634, align 4, !tbaa !11
  %636 = icmp slt i32 %405, %635
  br i1 %636, label %856, label %637

637:                                              ; preds = %632
  %638 = add nsw i64 %613, 2
  %639 = getelementptr inbounds i32, ptr %1, i64 %638
  %640 = load i32, ptr %639, align 4, !tbaa !11
  %641 = icmp slt i32 %405, %640
  br i1 %641, label %856, label %642

642:                                              ; preds = %637
  %643 = add nsw i64 %613, 3
  %644 = getelementptr inbounds i32, ptr %1, i64 %643
  %645 = load i32, ptr %644, align 4, !tbaa !11
  %646 = icmp slt i32 %405, %645
  br i1 %646, label %856, label %647

647:                                              ; preds = %642
  %648 = sext i32 %402 to i64
  %649 = getelementptr inbounds %struct.anon, ptr %4, i64 %648
  %650 = getelementptr inbounds %struct.anon, ptr %4, i64 %648, i32 2
  store i32 0, ptr %650, align 4, !tbaa !50
  %651 = trunc i64 %401 to i32
  store i32 %651, ptr %649, align 4, !tbaa !53
  %652 = getelementptr inbounds %struct.anon, ptr %4, i64 %648, i32 1
  store i32 %399, ptr %652, align 4, !tbaa !52
  %653 = getelementptr inbounds i8, ptr %0, i64 %449
  %654 = load i8, ptr %653, align 1, !tbaa !15
  %655 = zext i8 %654 to i16
  %656 = getelementptr inbounds i8, ptr %0, i64 %454
  %657 = load i8, ptr %656, align 1, !tbaa !15
  %658 = zext i8 %657 to i16
  %659 = add nuw nsw i16 %658, %655
  %660 = getelementptr inbounds i8, ptr %0, i64 %443
  %661 = load i8, ptr %660, align 1, !tbaa !15
  %662 = zext i8 %661 to i16
  %663 = add nuw nsw i16 %659, %662
  %664 = getelementptr inbounds i8, ptr %0, i64 %463
  %665 = load i8, ptr %664, align 1, !tbaa !15
  %666 = zext i8 %665 to i16
  %667 = add nuw nsw i16 %663, %666
  %668 = getelementptr inbounds i8, ptr %0, i64 %468
  %669 = load i8, ptr %668, align 1, !tbaa !15
  %670 = zext i8 %669 to i16
  %671 = add nuw nsw i16 %667, %670
  %672 = getelementptr inbounds i8, ptr %0, i64 %484
  %673 = load i8, ptr %672, align 1, !tbaa !15
  %674 = zext i8 %673 to i16
  %675 = add nuw nsw i16 %671, %674
  %676 = getelementptr inbounds i8, ptr %0, i64 %489
  %677 = load i8, ptr %676, align 1, !tbaa !15
  %678 = zext i8 %677 to i16
  %679 = add nuw nsw i16 %675, %678
  %680 = getelementptr inbounds i8, ptr %0, i64 %478
  %681 = load i8, ptr %680, align 1, !tbaa !15
  %682 = zext i8 %681 to i16
  %683 = add nuw nsw i16 %679, %682
  %684 = getelementptr inbounds i8, ptr %0, i64 %498
  %685 = load i8, ptr %684, align 1, !tbaa !15
  %686 = zext i8 %685 to i16
  %687 = add nuw nsw i16 %683, %686
  %688 = getelementptr inbounds i8, ptr %0, i64 %503
  %689 = load i8, ptr %688, align 1, !tbaa !15
  %690 = zext i8 %689 to i16
  %691 = add nuw nsw i16 %687, %690
  %692 = getelementptr inbounds i8, ptr %0, i64 %518
  %693 = load i8, ptr %692, align 1, !tbaa !15
  %694 = zext i8 %693 to i16
  %695 = add nuw nsw i16 %691, %694
  %696 = getelementptr inbounds i8, ptr %0, i64 %523
  %697 = load i8, ptr %696, align 1, !tbaa !15
  %698 = zext i8 %697 to i16
  %699 = add nuw nsw i16 %695, %698
  %700 = getelementptr inbounds i8, ptr %0, i64 %403
  %701 = load i8, ptr %700, align 1, !tbaa !15
  %702 = zext i8 %701 to i16
  %703 = add nuw nsw i16 %699, %702
  %704 = getelementptr inbounds i8, ptr %0, i64 %528
  %705 = load i8, ptr %704, align 1, !tbaa !15
  %706 = zext i8 %705 to i16
  %707 = add nuw nsw i16 %703, %706
  %708 = getelementptr inbounds i8, ptr %0, i64 %533
  %709 = load i8, ptr %708, align 1, !tbaa !15
  %710 = zext i8 %709 to i16
  %711 = add nuw nsw i16 %707, %710
  %712 = getelementptr inbounds i8, ptr %0, i64 %549
  %713 = load i8, ptr %712, align 1, !tbaa !15
  %714 = zext i8 %713 to i16
  %715 = add nuw nsw i16 %711, %714
  %716 = getelementptr inbounds i8, ptr %0, i64 %554
  %717 = load i8, ptr %716, align 1, !tbaa !15
  %718 = zext i8 %717 to i16
  %719 = add nuw nsw i16 %715, %718
  %720 = getelementptr inbounds i8, ptr %0, i64 %543
  %721 = load i8, ptr %720, align 1, !tbaa !15
  %722 = zext i8 %721 to i16
  %723 = add nuw nsw i16 %719, %722
  %724 = getelementptr inbounds i8, ptr %0, i64 %563
  %725 = load i8, ptr %724, align 1, !tbaa !15
  %726 = zext i8 %725 to i16
  %727 = add nuw nsw i16 %723, %726
  %728 = getelementptr inbounds i8, ptr %0, i64 %568
  %729 = load i8, ptr %728, align 1, !tbaa !15
  %730 = zext i8 %729 to i16
  %731 = add nuw nsw i16 %727, %730
  %732 = getelementptr inbounds i8, ptr %0, i64 %584
  %733 = load i8, ptr %732, align 1, !tbaa !15
  %734 = zext i8 %733 to i16
  %735 = add nuw nsw i16 %731, %734
  %736 = getelementptr inbounds i8, ptr %0, i64 %589
  %737 = load i8, ptr %736, align 1, !tbaa !15
  %738 = zext i8 %737 to i16
  %739 = add nuw nsw i16 %735, %738
  %740 = getelementptr inbounds i8, ptr %0, i64 %578
  %741 = load i8, ptr %740, align 1, !tbaa !15
  %742 = zext i8 %741 to i16
  %743 = add nuw nsw i16 %739, %742
  %744 = getelementptr inbounds i8, ptr %0, i64 %598
  %745 = load i8, ptr %744, align 1, !tbaa !15
  %746 = zext i8 %745 to i16
  %747 = add nuw nsw i16 %743, %746
  %748 = getelementptr inbounds i8, ptr %0, i64 %603
  %749 = load i8, ptr %748, align 1, !tbaa !15
  %750 = zext i8 %749 to i16
  %751 = add nuw nsw i16 %747, %750
  %752 = udiv i16 %751, 25
  %753 = zext i16 %752 to i32
  %754 = getelementptr inbounds %struct.anon, ptr %4, i64 %648, i32 5
  store i32 %753, ptr %754, align 4, !tbaa !59
  %755 = load i8, ptr %668, align 1, !tbaa !15
  %756 = zext i8 %755 to i32
  %757 = load i8, ptr %688, align 1, !tbaa !15
  %758 = zext i8 %757 to i32
  %759 = load i8, ptr %708, align 1, !tbaa !15
  %760 = zext i8 %759 to i32
  %761 = load i8, ptr %728, align 1, !tbaa !15
  %762 = zext i8 %761 to i32
  %763 = load i8, ptr %748, align 1, !tbaa !15
  %764 = zext i8 %763 to i32
  %765 = load i8, ptr %653, align 1, !tbaa !15
  %766 = zext i8 %765 to i32
  %767 = load i8, ptr %672, align 1, !tbaa !15
  %768 = zext i8 %767 to i32
  %769 = load i8, ptr %692, align 1, !tbaa !15
  %770 = zext i8 %769 to i32
  %771 = load i8, ptr %712, align 1, !tbaa !15
  %772 = zext i8 %771 to i32
  %773 = load i8, ptr %732, align 1, !tbaa !15
  %774 = zext i8 %773 to i32
  %775 = add nuw nsw i32 %758, %756
  %776 = add nuw nsw i32 %775, %760
  %777 = add nuw nsw i32 %776, %762
  %778 = add nuw nsw i32 %777, %764
  %779 = add nuw nsw i32 %766, %768
  %780 = add nuw nsw i32 %779, %770
  %781 = add nuw nsw i32 %780, %772
  %782 = add nuw nsw i32 %781, %774
  %783 = sub nsw i32 %778, %782
  %784 = load i8, ptr %664, align 1, !tbaa !15
  %785 = zext i8 %784 to i32
  %786 = load i8, ptr %684, align 1, !tbaa !15
  %787 = zext i8 %786 to i32
  %788 = load i8, ptr %704, align 1, !tbaa !15
  %789 = zext i8 %788 to i32
  %790 = load i8, ptr %724, align 1, !tbaa !15
  %791 = zext i8 %790 to i32
  %792 = load i8, ptr %744, align 1, !tbaa !15
  %793 = zext i8 %792 to i32
  %794 = load i8, ptr %656, align 1, !tbaa !15
  %795 = zext i8 %794 to i32
  %796 = load i8, ptr %676, align 1, !tbaa !15
  %797 = zext i8 %796 to i32
  %798 = load i8, ptr %696, align 1, !tbaa !15
  %799 = zext i8 %798 to i32
  %800 = load i8, ptr %716, align 1, !tbaa !15
  %801 = zext i8 %800 to i32
  %802 = load i8, ptr %736, align 1, !tbaa !15
  %803 = zext i8 %802 to i32
  %804 = shl nsw i32 %783, 1
  %805 = add nuw nsw i32 %787, %785
  %806 = add i32 %805, %804
  %807 = add i32 %806, %789
  %808 = add i32 %807, %791
  %809 = add i32 %808, %793
  %810 = add nuw nsw i32 %795, %797
  %811 = add nuw nsw i32 %810, %799
  %812 = add nuw nsw i32 %811, %801
  %813 = add nuw nsw i32 %812, %803
  %814 = sub i32 %809, %813
  %815 = load i8, ptr %740, align 1, !tbaa !15
  %816 = zext i8 %815 to i32
  %817 = load i8, ptr %660, align 1, !tbaa !15
  %818 = zext i8 %817 to i32
  %819 = add nuw nsw i32 %756, %766
  %820 = add nuw nsw i32 %764, %774
  %821 = add nuw nsw i32 %819, %785
  %822 = add nuw nsw i32 %820, %793
  %823 = add nuw nsw i32 %821, %795
  %824 = sub nsw i32 %822, %823
  %825 = add nsw i32 %824, %803
  %826 = add nsw i32 %825, %816
  %827 = sub nsw i32 %826, %818
  %828 = load i8, ptr %720, align 1, !tbaa !15
  %829 = zext i8 %828 to i32
  %830 = load i8, ptr %680, align 1, !tbaa !15
  %831 = zext i8 %830 to i32
  %832 = shl nsw i32 %827, 1
  %833 = add nuw nsw i32 %758, %768
  %834 = add nuw nsw i32 %762, %772
  %835 = add nuw nsw i32 %833, %787
  %836 = add nuw nsw i32 %834, %791
  %837 = add nuw nsw i32 %835, %797
  %838 = sub nsw i32 %836, %837
  %839 = add nsw i32 %838, %801
  %840 = add nsw i32 %839, %829
  %841 = sub nsw i32 %840, %831
  %842 = add i32 %841, %832
  %843 = trunc i32 %814 to i16
  %844 = sdiv i16 %843, 15
  %845 = sext i16 %844 to i32
  %846 = getelementptr inbounds %struct.anon, ptr %4, i64 %648, i32 3
  store i32 %845, ptr %846, align 4, !tbaa !57
  %847 = trunc i32 %842 to i16
  %848 = sdiv i16 %847, 15
  %849 = sext i16 %848 to i32
  %850 = getelementptr inbounds %struct.anon, ptr %4, i64 %648, i32 4
  store i32 %849, ptr %850, align 4, !tbaa !58
  %851 = add nsw i32 %402, 1
  %852 = icmp eq i32 %851, 15000
  br i1 %852, label %853, label %856

853:                                              ; preds = %647
  %854 = load ptr, ptr @stderr, align 8, !tbaa !7
  %855 = tail call i64 @fwrite(ptr nonnull @.str.29, i64 18, i64 1, ptr %854) #26
  tail call void @exit(i32 noundef 1) #20
  unreachable

856:                                              ; preds = %647, %642, %637, %632, %628, %623, %618, %612, %607, %602, %597, %593, %588, %583, %577, %572, %567, %562, %558, %553, %548, %542, %537, %532, %527, %522, %517, %512, %507, %502, %497, %493, %488, %483, %477, %472, %467, %462, %458, %453, %448, %442, %437, %432, %427, %423, %418, %413, %407, %400
  %857 = phi i32 [ %851, %647 ], [ %402, %642 ], [ %402, %637 ], [ %402, %632 ], [ %402, %628 ], [ %402, %623 ], [ %402, %618 ], [ %402, %612 ], [ %402, %607 ], [ %402, %602 ], [ %402, %597 ], [ %402, %593 ], [ %402, %588 ], [ %402, %583 ], [ %402, %577 ], [ %402, %572 ], [ %402, %567 ], [ %402, %562 ], [ %402, %558 ], [ %402, %553 ], [ %402, %548 ], [ %402, %542 ], [ %402, %537 ], [ %402, %532 ], [ %402, %527 ], [ %402, %522 ], [ %402, %517 ], [ %402, %512 ], [ %402, %507 ], [ %402, %502 ], [ %402, %497 ], [ %402, %493 ], [ %402, %488 ], [ %402, %483 ], [ %402, %477 ], [ %402, %472 ], [ %402, %467 ], [ %402, %462 ], [ %402, %458 ], [ %402, %453 ], [ %402, %448 ], [ %402, %442 ], [ %402, %437 ], [ %402, %432 ], [ %402, %427 ], [ %402, %423 ], [ %402, %418 ], [ %402, %413 ], [ %402, %407 ], [ %402, %400 ]
  %858 = add nuw nsw i64 %401, 1
  %859 = icmp eq i64 %858, %38
  br i1 %859, label %860, label %400, !llvm.loop !64

860:                                              ; preds = %856, %383
  %861 = phi i64 [ %384, %383 ], [ %393, %856 ]
  %862 = phi i32 [ %382, %383 ], [ %857, %856 ]
  %863 = icmp eq i64 %861, %37
  br i1 %863, label %864, label %380, !llvm.loop !65

864:                                              ; preds = %860, %32, %7
  %865 = phi i32 [ 0, %32 ], [ 0, %7 ], [ %862, %860 ]
  %866 = sext i32 %865 to i64
  %867 = getelementptr inbounds %struct.anon, ptr %4, i64 %866, i32 2
  store i32 7, ptr %867, align 4, !tbaa !50
  ret i32 undef
}

; Function Attrs: nounwind optsize uwtable
define dso_local i32 @main(i32 noundef %0, ptr nocapture noundef readonly %1) #3 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [15000 x %struct.anon], align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #21
  call void @llvm.lifetime.start.p0(i64 360000, ptr nonnull %7) #21
  %8 = icmp slt i32 %0, 3
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = tail call i32 @usage() #22
  unreachable

11:                                               ; preds = %2
  %12 = getelementptr inbounds ptr, ptr %1, i64 1
  %13 = load ptr, ptr %12, align 8, !tbaa !7
  call void @get_image(ptr noundef %13, ptr noundef nonnull %3, ptr noundef nonnull %5, ptr noundef nonnull %6) #22
  %14 = icmp eq i32 %0, 3
  br i1 %14, label %79, label %15

15:                                               ; preds = %67, %11
  %16 = phi i32 [ %76, %67 ], [ 0, %11 ]
  %17 = phi float [ %75, %67 ], [ 4.000000e+00, %11 ]
  %18 = phi i32 [ %74, %67 ], [ 0, %11 ]
  %19 = phi i32 [ %73, %67 ], [ 0, %11 ]
  %20 = phi i32 [ %72, %67 ], [ 0, %11 ]
  %21 = phi i32 [ %71, %67 ], [ 1, %11 ]
  %22 = phi i32 [ %70, %67 ], [ 0, %11 ]
  %23 = phi i32 [ %69, %67 ], [ 20, %11 ]
  %24 = phi i32 [ %77, %67 ], [ 3, %11 ]
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds ptr, ptr %1, i64 %25
  %27 = load ptr, ptr %26, align 8, !tbaa !7
  %28 = load i8, ptr %27, align 1, !tbaa !15
  %29 = icmp eq i8 %28, 45
  br i1 %29, label %30, label %65

30:                                               ; preds = %15
  %31 = getelementptr inbounds i8, ptr %27, i64 1
  %32 = load i8, ptr %31, align 1, !tbaa !15
  %33 = sext i8 %32 to i32
  switch i32 %33, label %67 [
    i32 115, label %34
    i32 101, label %35
    i32 99, label %36
    i32 112, label %37
    i32 110, label %38
    i32 98, label %39
    i32 51, label %40
    i32 113, label %41
    i32 100, label %42
    i32 116, label %55
  ]

34:                                               ; preds = %30
  br label %67

35:                                               ; preds = %30
  br label %67

36:                                               ; preds = %30
  br label %67

37:                                               ; preds = %30
  br label %67

38:                                               ; preds = %30
  br label %67

39:                                               ; preds = %30
  br label %67

40:                                               ; preds = %30
  br label %67

41:                                               ; preds = %30
  br label %67

42:                                               ; preds = %30
  %43 = add nsw i32 %24, 1
  %44 = icmp slt i32 %43, %0
  br i1 %44, label %47, label %45

45:                                               ; preds = %42
  %46 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.47)
  tail call void @exit(i32 noundef 0) #20
  unreachable

47:                                               ; preds = %42
  %48 = sext i32 %43 to i64
  %49 = getelementptr inbounds ptr, ptr %1, i64 %48
  %50 = load ptr, ptr %49, align 8, !tbaa !7
  %51 = tail call double @atof(ptr noundef %50) #27
  %52 = fptrunc double %51 to float
  %53 = fcmp olt float %52, 0.000000e+00
  br i1 %53, label %54, label %67

54:                                               ; preds = %47
  br label %67

55:                                               ; preds = %30
  %56 = add nsw i32 %24, 1
  %57 = icmp slt i32 %56, %0
  br i1 %57, label %60, label %58

58:                                               ; preds = %55
  %59 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.46)
  tail call void @exit(i32 noundef 0) #20
  unreachable

60:                                               ; preds = %55
  %61 = sext i32 %56 to i64
  %62 = getelementptr inbounds ptr, ptr %1, i64 %61
  %63 = load ptr, ptr %62, align 8, !tbaa !7
  %64 = tail call i32 @atoi(ptr nocapture noundef %63) #27
  br label %67

65:                                               ; preds = %15
  %66 = tail call i32 @usage() #22
  unreachable

67:                                               ; preds = %60, %54, %47, %41, %40, %39, %38, %37, %36, %35, %34, %30
  %68 = phi i32 [ %24, %30 ], [ %56, %60 ], [ %43, %54 ], [ %43, %47 ], [ %24, %41 ], [ %24, %40 ], [ %24, %39 ], [ %24, %38 ], [ %24, %37 ], [ %24, %36 ], [ %24, %35 ], [ %24, %34 ]
  %69 = phi i32 [ %23, %30 ], [ %64, %60 ], [ %23, %54 ], [ %23, %47 ], [ %23, %41 ], [ %23, %40 ], [ %23, %39 ], [ %23, %38 ], [ %23, %37 ], [ %23, %36 ], [ %23, %35 ], [ %23, %34 ]
  %70 = phi i32 [ %22, %30 ], [ %22, %60 ], [ %22, %54 ], [ %22, %47 ], [ %22, %41 ], [ %22, %40 ], [ %22, %39 ], [ %22, %38 ], [ 1, %37 ], [ %22, %36 ], [ %22, %35 ], [ %22, %34 ]
  %71 = phi i32 [ %21, %30 ], [ %21, %60 ], [ %21, %54 ], [ %21, %47 ], [ %21, %41 ], [ %21, %40 ], [ %21, %39 ], [ 0, %38 ], [ %21, %37 ], [ %21, %36 ], [ %21, %35 ], [ %21, %34 ]
  %72 = phi i32 [ %20, %30 ], [ %20, %60 ], [ 1, %54 ], [ %20, %47 ], [ %20, %41 ], [ 1, %40 ], [ %20, %39 ], [ %20, %38 ], [ %20, %37 ], [ %20, %36 ], [ %20, %35 ], [ %20, %34 ]
  %73 = phi i32 [ %19, %30 ], [ %19, %60 ], [ %19, %54 ], [ %19, %47 ], [ %19, %41 ], [ %19, %40 ], [ 1, %39 ], [ %19, %38 ], [ %19, %37 ], [ %19, %36 ], [ %19, %35 ], [ %19, %34 ]
  %74 = phi i32 [ %18, %30 ], [ %18, %60 ], [ %18, %54 ], [ %18, %47 ], [ 1, %41 ], [ %18, %40 ], [ %18, %39 ], [ %18, %38 ], [ %18, %37 ], [ %18, %36 ], [ %18, %35 ], [ %18, %34 ]
  %75 = phi float [ %17, %30 ], [ %17, %60 ], [ %52, %54 ], [ %52, %47 ], [ %17, %41 ], [ %17, %40 ], [ %17, %39 ], [ %17, %38 ], [ %17, %37 ], [ %17, %36 ], [ %17, %35 ], [ %17, %34 ]
  %76 = phi i32 [ %16, %30 ], [ %16, %60 ], [ %16, %54 ], [ %16, %47 ], [ %16, %41 ], [ %16, %40 ], [ %16, %39 ], [ %16, %38 ], [ %16, %37 ], [ 2, %36 ], [ 1, %35 ], [ 0, %34 ]
  %77 = add nsw i32 %68, 1
  %78 = icmp slt i32 %77, %0
  br i1 %78, label %15, label %79, !llvm.loop !66

79:                                               ; preds = %67, %11
  %80 = phi i32 [ 20, %11 ], [ %69, %67 ]
  %81 = phi i32 [ 0, %11 ], [ %70, %67 ]
  %82 = phi i32 [ 1, %11 ], [ %71, %67 ]
  %83 = phi i32 [ 0, %11 ], [ %72, %67 ]
  %84 = phi i32 [ 0, %11 ], [ %73, %67 ]
  %85 = phi i32 [ 0, %11 ], [ %74, %67 ]
  %86 = phi float [ 4.000000e+00, %11 ], [ %75, %67 ]
  %87 = phi i32 [ 0, %11 ], [ %76, %67 ]
  %88 = icmp eq i32 %81, 1
  %89 = icmp eq i32 %87, 0
  %90 = select i1 %88, i1 %89, i1 false
  %91 = select i1 %90, i32 1, i32 %87
  switch i32 %91, label %92 [
    i32 0, label %96
    i32 1, label %102
    i32 2, label %135
  ]

92:                                               ; preds = %79
  %93 = load ptr, ptr %3, align 8, !tbaa !7
  %94 = load i32, ptr %5, align 4, !tbaa !11
  %95 = load i32, ptr %6, align 4, !tbaa !11
  br label %158

96:                                               ; preds = %79
  call void @setup_brightness_lut(ptr noundef nonnull %4, i32 noundef %80, i32 noundef 2) #22
  %97 = load ptr, ptr %3, align 8, !tbaa !7
  %98 = fpext float %86 to double
  %99 = load i32, ptr %5, align 4, !tbaa !11
  %100 = load i32, ptr %6, align 4, !tbaa !11
  %101 = load ptr, ptr %4, align 8, !tbaa !7
  tail call void @susan_smoothing(i32 noundef %83, ptr noundef %97, double noundef %98, i32 noundef %99, i32 noundef %100, ptr noundef %101) #22
  br label %158

102:                                              ; preds = %79
  %103 = load i32, ptr %5, align 4, !tbaa !11
  %104 = load i32, ptr %6, align 4, !tbaa !11
  %105 = mul nsw i32 %104, %103
  %106 = sext i32 %105 to i64
  %107 = shl nsw i64 %106, 2
  %108 = tail call noalias ptr @malloc(i64 noundef %107) #24
  call void @setup_brightness_lut(ptr noundef nonnull %4, i32 noundef %80, i32 noundef 6) #22
  %109 = icmp eq i32 %81, 0
  br i1 %109, label %120, label %110

110:                                              ; preds = %102
  %111 = icmp eq i32 %83, 0
  %112 = load ptr, ptr %3, align 8, !tbaa !7
  %113 = load ptr, ptr %4, align 8, !tbaa !7
  br i1 %111, label %116, label %114

114:                                              ; preds = %110
  %115 = tail call i32 @susan_principle_small(ptr noundef %112, ptr noundef %108, ptr noundef %113, i32 poison, i32 noundef %103, i32 noundef %104) #22
  br label %118

116:                                              ; preds = %110
  %117 = tail call i32 @susan_principle(ptr noundef %112, ptr noundef %108, ptr noundef %113, i32 noundef 2650, i32 noundef %103, i32 noundef %104) #22
  br label %118

118:                                              ; preds = %116, %114
  %119 = tail call i32 @int_to_uchar(ptr noundef %108, ptr noundef %112, i32 noundef %105) #22
  br label %158

120:                                              ; preds = %102
  %121 = tail call noalias ptr @malloc(i64 noundef %106) #24
  tail call void @llvm.memset.p0.i64(ptr align 1 %121, i8 100, i64 %106, i1 false)
  %122 = icmp eq i32 %83, 0
  %123 = load ptr, ptr %3, align 8, !tbaa !7
  %124 = load ptr, ptr %4, align 8, !tbaa !7
  br i1 %122, label %127, label %125

125:                                              ; preds = %120
  %126 = tail call i32 @susan_edges_small(ptr noundef %123, ptr noundef %108, ptr noundef %121, ptr noundef %124, i32 poison, i32 noundef %103, i32 noundef %104) #22
  br label %129

127:                                              ; preds = %120
  %128 = tail call i32 @susan_edges(ptr noundef %123, ptr noundef %108, ptr noundef %121, ptr noundef %124, i32 noundef 2650, i32 noundef %103, i32 noundef %104) #22
  br label %129

129:                                              ; preds = %127, %125
  %130 = icmp eq i32 %82, 0
  br i1 %130, label %133, label %131

131:                                              ; preds = %129
  %132 = tail call i32 @susan_thin(ptr noundef %108, ptr noundef %121, i32 noundef %103, i32 noundef %104) #22
  br label %133

133:                                              ; preds = %131, %129
  %134 = tail call i32 @edge_draw(ptr noundef %123, ptr noundef %121, i32 noundef %103, i32 noundef %104, i32 noundef %84) #22
  br label %158

135:                                              ; preds = %79
  %136 = load i32, ptr %5, align 4, !tbaa !11
  %137 = load i32, ptr %6, align 4, !tbaa !11
  %138 = mul nsw i32 %137, %136
  %139 = sext i32 %138 to i64
  %140 = shl nsw i64 %139, 2
  %141 = tail call noalias ptr @malloc(i64 noundef %140) #24
  call void @setup_brightness_lut(ptr noundef nonnull %4, i32 noundef %80, i32 noundef 6) #22
  %142 = icmp eq i32 %81, 0
  br i1 %142, label %148, label %143

143:                                              ; preds = %135
  %144 = load ptr, ptr %3, align 8, !tbaa !7
  %145 = load ptr, ptr %4, align 8, !tbaa !7
  %146 = tail call i32 @susan_principle(ptr noundef %144, ptr noundef %141, ptr noundef %145, i32 noundef 1850, i32 noundef %136, i32 noundef %137) #22
  %147 = tail call i32 @int_to_uchar(ptr noundef %141, ptr noundef %144, i32 noundef %138) #22
  br label %158

148:                                              ; preds = %135
  %149 = icmp eq i32 %85, 0
  %150 = load ptr, ptr %3, align 8, !tbaa !7
  %151 = load ptr, ptr %4, align 8, !tbaa !7
  br i1 %149, label %154, label %152

152:                                              ; preds = %148
  %153 = call i32 @susan_corners_quick(ptr noundef %150, ptr noundef %141, ptr noundef %151, i32 noundef 1850, ptr noundef nonnull %7, i32 noundef %136, i32 noundef %137) #22
  br label %156

154:                                              ; preds = %148
  %155 = call i32 @susan_corners(ptr noundef %150, ptr noundef %141, ptr noundef %151, i32 noundef 1850, ptr noundef nonnull %7, i32 noundef %136, i32 noundef %137) #22
  br label %156

156:                                              ; preds = %154, %152
  %157 = call i32 @corner_draw(ptr noundef %150, ptr noundef nonnull %7, i32 noundef %136, i32 noundef %84) #22
  br label %158

158:                                              ; preds = %156, %143, %133, %118, %96, %92
  %159 = phi i32 [ %95, %92 ], [ %137, %143 ], [ %137, %156 ], [ %104, %118 ], [ %104, %133 ], [ %100, %96 ]
  %160 = phi i32 [ %94, %92 ], [ %136, %143 ], [ %136, %156 ], [ %103, %118 ], [ %103, %133 ], [ %99, %96 ]
  %161 = phi ptr [ %93, %92 ], [ %144, %143 ], [ %150, %156 ], [ %112, %118 ], [ %123, %133 ], [ %97, %96 ]
  %162 = getelementptr inbounds ptr, ptr %1, i64 2
  %163 = load ptr, ptr %162, align 8, !tbaa !7
  %164 = tail call i32 @put_image(ptr noundef %163, ptr noundef %161, i32 noundef %160, i32 noundef %159) #22
  call void @llvm.lifetime.end.p0(i64 360000, ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #21
  ret i32 0
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(read)
declare double @atof(ptr nocapture noundef) local_unnamed_addr #19

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(read)
declare i32 @atoi(ptr nocapture noundef) local_unnamed_addr #19

attributes #0 = { noreturn nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind }
attributes #2 = { noreturn nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nosync nounwind optsize memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nofree nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #13 = { nofree nosync nounwind optsize memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #16 = { nofree norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree nounwind optsize memory(readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree nounwind optsize willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { noreturn nounwind optsize }
attributes #21 = { nounwind }
attributes #22 = { optsize }
attributes #23 = { cold optsize }
attributes #24 = { nounwind optsize allocsize(0) }
attributes #25 = { nounwind optsize }
attributes #26 = { cold }
attributes #27 = { nounwind optsize willreturn memory(read) }

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
!15 = !{!9, !9, i64 0}
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
!50 = !{!51, !12, i64 8}
!51 = !{!"", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20}
!52 = !{!51, !12, i64 4}
!53 = !{!51, !12, i64 0}
!54 = distinct !{!54, !14}
!55 = distinct !{!55, !14}
!56 = distinct !{!56, !14}
!57 = !{!51, !12, i64 12}
!58 = !{!51, !12, i64 16}
!59 = !{!51, !12, i64 20}
!60 = distinct !{!60, !14}
!61 = distinct !{!61, !14}
!62 = distinct !{!62, !14}
!63 = distinct !{!63, !14}
!64 = distinct !{!64, !14}
!65 = distinct !{!65, !14}
!66 = distinct !{!66, !14}
