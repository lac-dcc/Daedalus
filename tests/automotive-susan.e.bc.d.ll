; ModuleID = 'automotive-susan.e.bc.ll'
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
  tail call void @exit(i32 noundef 0) #21
  unreachable
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind optsize uwtable
define internal i32 @getint(ptr nocapture noundef %0) #3 {
  %2 = alloca [10000 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 10000, ptr nonnull %2) #22
  %3 = tail call i32 @getc(ptr noundef %0) #23
  br label %4

4:                                                ; preds = %14, %1
  %5 = phi i32 [ %3, %1 ], [ %15, %14 ]
  switch i32 %5, label %11 [
    i32 35, label %6
    i32 -1, label %8
  ]

6:                                                ; preds = %4
  %7 = call ptr @fgets(ptr noundef nonnull %2, i32 noundef 9000, ptr noundef %0) #23
  br label %14

8:                                                ; preds = %4
  %9 = load ptr, ptr @stderr, align 8, !tbaa !7
  %10 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14) #24
  call void @exit(i32 noundef 0) #21
  unreachable

11:                                               ; preds = %4
  %12 = add i32 %5, -48
  %13 = icmp ult i32 %12, 10
  br i1 %13, label %16, label %14

14:                                               ; preds = %11, %6
  %15 = call i32 @getc(ptr noundef %0) #23
  br label %4

16:                                               ; preds = %16, %11
  %17 = phi i32 [ %22, %16 ], [ %5, %11 ]
  %18 = phi i32 [ %21, %16 ], [ 0, %11 ]
  %19 = mul nsw i32 %18, 10
  %20 = add nsw i32 %17, -48
  %21 = add nsw i32 %20, %19
  %22 = call i32 @getc(ptr noundef %0) #23
  %23 = add i32 %22, -58
  %24 = icmp ult i32 %23, -10
  br i1 %24, label %25, label %16

25:                                               ; preds = %16
  %.lcssa = phi i32 [ %21, %16 ]
  call void @llvm.lifetime.end.p0(i64 10000, ptr nonnull %2) #22
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
  %5 = tail call noalias ptr @fopen(ptr noundef %0, ptr noundef nonnull @.str.15) #23
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %4
  %8 = load ptr, ptr @stderr, align 8, !tbaa !7
  %9 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull @.str.16, ptr noundef %0) #24
  tail call void @exit(i32 noundef 0) #21
  unreachable

10:                                               ; preds = %4
  %11 = tail call i32 @fgetc(ptr noundef nonnull %5) #23
  %12 = tail call i32 @fgetc(ptr noundef nonnull %5) #23
  %13 = and i32 %11, 255
  %14 = icmp eq i32 %13, 80
  %15 = and i32 %12, 255
  %16 = icmp eq i32 %15, 53
  %17 = and i1 %14, %16
  br i1 %17, label %21, label %18

18:                                               ; preds = %10
  %19 = load ptr, ptr @stderr, align 8, !tbaa !7
  %20 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef nonnull @.str.17, ptr noundef %0) #24
  tail call void @exit(i32 noundef 0) #21
  unreachable

21:                                               ; preds = %10
  %22 = tail call i32 @getint(ptr noundef nonnull %5) #23
  store i32 %22, ptr %2, align 4, !tbaa !11
  %23 = tail call i32 @getint(ptr noundef nonnull %5) #23
  store i32 %23, ptr %3, align 4, !tbaa !11
  %24 = tail call i32 @getint(ptr noundef nonnull %5) #23
  %25 = load i32, ptr %2, align 4, !tbaa !11
  %26 = load i32, ptr %3, align 4, !tbaa !11
  %27 = mul nsw i32 %26, %25
  %28 = sext i32 %27 to i64
  %29 = tail call noalias ptr @malloc(i64 noundef %28) #25
  store ptr %29, ptr %1, align 8, !tbaa !7
  %30 = tail call i64 @fread(ptr noundef %29, i64 noundef 1, i64 noundef %28, ptr noundef nonnull %5) #23
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %21
  %33 = load ptr, ptr @stderr, align 8, !tbaa !7
  %34 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %33, ptr noundef nonnull @.str.18, ptr noundef %0) #24
  tail call void @exit(i32 noundef 0) #21
  unreachable

35:                                               ; preds = %21
  %36 = tail call i32 @fclose(ptr noundef nonnull %5) #23
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
  %5 = tail call noalias ptr @fopen(ptr noundef %0, ptr noundef nonnull @.str.19) #23
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %4
  %8 = load ptr, ptr @stderr, align 8, !tbaa !7
  %9 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull @.str.20, ptr noundef %0) #24
  tail call void @exit(i32 noundef 0) #21
  unreachable

10:                                               ; preds = %4
  %11 = tail call i64 @fwrite(ptr nonnull @.str.21, i64 3, i64 1, ptr nonnull %5)
  %12 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %5, ptr noundef nonnull @.str.22, i32 noundef %2, i32 noundef %3) #23
  %13 = tail call i64 @fwrite(ptr nonnull @.str.23, i64 4, i64 1, ptr nonnull %5)
  %14 = mul nsw i32 %3, %2
  %15 = sext i32 %14 to i64
  %16 = tail call i64 @fwrite(ptr noundef %1, i64 noundef %15, i64 noundef 1, ptr noundef nonnull %5) #23
  %17 = icmp eq i64 %16, 1
  br i1 %17, label %21, label %18

18:                                               ; preds = %10
  %19 = load ptr, ptr @stderr, align 8, !tbaa !7
  %20 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef nonnull @.str.24, ptr noundef %0) #24
  tail call void @exit(i32 noundef 0) #21
  unreachable

21:                                               ; preds = %10
  %22 = tail call i32 @fclose(ptr noundef nonnull %5) #23
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
  %4 = tail call noalias dereferenceable_or_null(516) ptr @malloc(i64 noundef 516) #25
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
  %19 = tail call double @exp(double noundef %18) #26
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
  %7 = call i64 @_wyvern_slice_susan_corners__839368081(i32 %4, i32 %5)
  tail call void @llvm.memset.p0.i64(ptr align 4 %1, i8 0, i64 %7, i1 false)
  %8 = icmp sgt i32 %5, 6
  br i1 %8, label %9, label %333

9:                                                ; preds = %6
  %10 = add nsw i32 %5, -3
  %11 = add i32 %4, -3
  %12 = icmp sgt i32 %4, 6
  %13 = sext i32 %11 to i64
  %14 = add nsw i32 %4, -5
  %15 = sext i32 %14 to i64
  %16 = add nsw i32 %4, -6
  %17 = sext i32 %16 to i64
  %18 = sext i32 %4 to i64
  %19 = zext i32 %10 to i64
  %20 = zext i32 %11 to i64
  br label %21

21:                                               ; preds = %330, %9
  %22 = phi i64 [ 3, %9 ], [ %331, %330 ]
  br i1 %12, label %23, label %330

23:                                               ; preds = %21
  %24 = add nsw i64 %22, -3
  %25 = mul nsw i64 %24, %18
  %26 = getelementptr inbounds i8, ptr %0, i64 %25
  %27 = mul nsw i64 %22, %18
  br label %28

28:                                               ; preds = %327, %23
  %29 = phi i64 [ 3, %23 ], [ %328, %327 ]
  %30 = getelementptr inbounds i8, ptr %26, i64 %29
  %31 = getelementptr inbounds i8, ptr %30, i64 -1
  %32 = add nsw i64 %29, %27
  %33 = getelementptr inbounds i8, ptr %0, i64 %32
  %34 = load i8, ptr %33, align 1, !tbaa !15
  %35 = zext i8 %34 to i64
  %36 = getelementptr inbounds i8, ptr %2, i64 %35
  %37 = load i8, ptr %31, align 1, !tbaa !15
  %38 = zext i8 %37 to i64
  %39 = sub nsw i64 0, %38
  %40 = getelementptr inbounds i8, ptr %36, i64 %39
  %41 = load i8, ptr %40, align 1, !tbaa !15
  %42 = zext i8 %41 to i32
  %43 = add nuw nsw i32 %42, 100
  %44 = getelementptr inbounds i8, ptr %30, i64 1
  %45 = load i8, ptr %30, align 1, !tbaa !15
  %46 = zext i8 %45 to i64
  %47 = sub nsw i64 0, %46
  %48 = getelementptr inbounds i8, ptr %36, i64 %47
  %49 = load i8, ptr %48, align 1, !tbaa !15
  %50 = zext i8 %49 to i32
  %51 = add nuw nsw i32 %43, %50
  %52 = load i8, ptr %44, align 1, !tbaa !15
  %53 = zext i8 %52 to i64
  %54 = sub nsw i64 0, %53
  %55 = getelementptr inbounds i8, ptr %36, i64 %54
  %56 = load i8, ptr %55, align 1, !tbaa !15
  %57 = zext i8 %56 to i32
  %58 = add nuw nsw i32 %51, %57
  %59 = getelementptr inbounds i8, ptr %44, i64 %13
  %60 = getelementptr inbounds i8, ptr %59, i64 1
  %61 = load i8, ptr %59, align 1, !tbaa !15
  %62 = zext i8 %61 to i64
  %63 = sub nsw i64 0, %62
  %64 = getelementptr inbounds i8, ptr %36, i64 %63
  %65 = load i8, ptr %64, align 1, !tbaa !15
  %66 = zext i8 %65 to i32
  %67 = add nuw nsw i32 %58, %66
  %68 = getelementptr inbounds i8, ptr %59, i64 2
  %69 = load i8, ptr %60, align 1, !tbaa !15
  %70 = zext i8 %69 to i64
  %71 = sub nsw i64 0, %70
  %72 = getelementptr inbounds i8, ptr %36, i64 %71
  %73 = load i8, ptr %72, align 1, !tbaa !15
  %74 = zext i8 %73 to i32
  %75 = add nuw nsw i32 %67, %74
  %76 = getelementptr inbounds i8, ptr %59, i64 3
  %77 = load i8, ptr %68, align 1, !tbaa !15
  %78 = zext i8 %77 to i64
  %79 = sub nsw i64 0, %78
  %80 = getelementptr inbounds i8, ptr %36, i64 %79
  %81 = load i8, ptr %80, align 1, !tbaa !15
  %82 = zext i8 %81 to i32
  %83 = add nuw nsw i32 %75, %82
  %84 = getelementptr inbounds i8, ptr %59, i64 4
  %85 = load i8, ptr %76, align 1, !tbaa !15
  %86 = zext i8 %85 to i64
  %87 = sub nsw i64 0, %86
  %88 = getelementptr inbounds i8, ptr %36, i64 %87
  %89 = load i8, ptr %88, align 1, !tbaa !15
  %90 = zext i8 %89 to i32
  %91 = add nuw nsw i32 %83, %90
  %92 = load i8, ptr %84, align 1, !tbaa !15
  %93 = zext i8 %92 to i64
  %94 = sub nsw i64 0, %93
  %95 = getelementptr inbounds i8, ptr %36, i64 %94
  %96 = load i8, ptr %95, align 1, !tbaa !15
  %97 = zext i8 %96 to i32
  %98 = add nuw nsw i32 %91, %97
  %99 = getelementptr inbounds i8, ptr %84, i64 %15
  %100 = getelementptr inbounds i8, ptr %99, i64 1
  %101 = load i8, ptr %99, align 1, !tbaa !15
  %102 = zext i8 %101 to i64
  %103 = sub nsw i64 0, %102
  %104 = getelementptr inbounds i8, ptr %36, i64 %103
  %105 = load i8, ptr %104, align 1, !tbaa !15
  %106 = zext i8 %105 to i32
  %107 = add nuw nsw i32 %98, %106
  %108 = getelementptr inbounds i8, ptr %99, i64 2
  %109 = load i8, ptr %100, align 1, !tbaa !15
  %110 = zext i8 %109 to i64
  %111 = sub nsw i64 0, %110
  %112 = getelementptr inbounds i8, ptr %36, i64 %111
  %113 = load i8, ptr %112, align 1, !tbaa !15
  %114 = zext i8 %113 to i32
  %115 = add nuw nsw i32 %107, %114
  %116 = getelementptr inbounds i8, ptr %99, i64 3
  %117 = load i8, ptr %108, align 1, !tbaa !15
  %118 = zext i8 %117 to i64
  %119 = sub nsw i64 0, %118
  %120 = getelementptr inbounds i8, ptr %36, i64 %119
  %121 = load i8, ptr %120, align 1, !tbaa !15
  %122 = zext i8 %121 to i32
  %123 = add nuw nsw i32 %115, %122
  %124 = getelementptr inbounds i8, ptr %99, i64 4
  %125 = load i8, ptr %116, align 1, !tbaa !15
  %126 = zext i8 %125 to i64
  %127 = sub nsw i64 0, %126
  %128 = getelementptr inbounds i8, ptr %36, i64 %127
  %129 = load i8, ptr %128, align 1, !tbaa !15
  %130 = zext i8 %129 to i32
  %131 = add nuw nsw i32 %123, %130
  %132 = getelementptr inbounds i8, ptr %99, i64 5
  %133 = load i8, ptr %124, align 1, !tbaa !15
  %134 = zext i8 %133 to i64
  %135 = sub nsw i64 0, %134
  %136 = getelementptr inbounds i8, ptr %36, i64 %135
  %137 = load i8, ptr %136, align 1, !tbaa !15
  %138 = zext i8 %137 to i32
  %139 = add nuw nsw i32 %131, %138
  %140 = getelementptr inbounds i8, ptr %99, i64 6
  %141 = load i8, ptr %132, align 1, !tbaa !15
  %142 = zext i8 %141 to i64
  %143 = sub nsw i64 0, %142
  %144 = getelementptr inbounds i8, ptr %36, i64 %143
  %145 = load i8, ptr %144, align 1, !tbaa !15
  %146 = zext i8 %145 to i32
  %147 = add nuw nsw i32 %139, %146
  %148 = load i8, ptr %140, align 1, !tbaa !15
  %149 = zext i8 %148 to i64
  %150 = sub nsw i64 0, %149
  %151 = getelementptr inbounds i8, ptr %36, i64 %150
  %152 = load i8, ptr %151, align 1, !tbaa !15
  %153 = zext i8 %152 to i32
  %154 = add nuw nsw i32 %147, %153
  %155 = getelementptr inbounds i8, ptr %140, i64 %17
  %156 = getelementptr inbounds i8, ptr %155, i64 1
  %157 = load i8, ptr %155, align 1, !tbaa !15
  %158 = zext i8 %157 to i64
  %159 = sub nsw i64 0, %158
  %160 = getelementptr inbounds i8, ptr %36, i64 %159
  %161 = load i8, ptr %160, align 1, !tbaa !15
  %162 = zext i8 %161 to i32
  %163 = add nuw nsw i32 %154, %162
  %164 = getelementptr inbounds i8, ptr %155, i64 2
  %165 = load i8, ptr %156, align 1, !tbaa !15
  %166 = zext i8 %165 to i64
  %167 = sub nsw i64 0, %166
  %168 = getelementptr inbounds i8, ptr %36, i64 %167
  %169 = load i8, ptr %168, align 1, !tbaa !15
  %170 = zext i8 %169 to i32
  %171 = add nuw nsw i32 %163, %170
  %172 = load i8, ptr %164, align 1, !tbaa !15
  %173 = zext i8 %172 to i64
  %174 = sub nsw i64 0, %173
  %175 = getelementptr inbounds i8, ptr %36, i64 %174
  %176 = load i8, ptr %175, align 1, !tbaa !15
  %177 = zext i8 %176 to i32
  %178 = add nuw nsw i32 %171, %177
  %179 = getelementptr inbounds i8, ptr %155, i64 4
  %180 = getelementptr inbounds i8, ptr %155, i64 5
  %181 = load i8, ptr %179, align 1, !tbaa !15
  %182 = zext i8 %181 to i64
  %183 = sub nsw i64 0, %182
  %184 = getelementptr inbounds i8, ptr %36, i64 %183
  %185 = load i8, ptr %184, align 1, !tbaa !15
  %186 = zext i8 %185 to i32
  %187 = add nuw nsw i32 %178, %186
  %188 = getelementptr inbounds i8, ptr %155, i64 6
  %189 = load i8, ptr %180, align 1, !tbaa !15
  %190 = zext i8 %189 to i64
  %191 = sub nsw i64 0, %190
  %192 = getelementptr inbounds i8, ptr %36, i64 %191
  %193 = load i8, ptr %192, align 1, !tbaa !15
  %194 = zext i8 %193 to i32
  %195 = add nuw nsw i32 %187, %194
  %196 = load i8, ptr %188, align 1, !tbaa !15
  %197 = zext i8 %196 to i64
  %198 = sub nsw i64 0, %197
  %199 = getelementptr inbounds i8, ptr %36, i64 %198
  %200 = load i8, ptr %199, align 1, !tbaa !15
  %201 = zext i8 %200 to i32
  %202 = add nuw nsw i32 %195, %201
  %203 = getelementptr inbounds i8, ptr %188, i64 %17
  %204 = getelementptr inbounds i8, ptr %203, i64 1
  %205 = load i8, ptr %203, align 1, !tbaa !15
  %206 = zext i8 %205 to i64
  %207 = sub nsw i64 0, %206
  %208 = getelementptr inbounds i8, ptr %36, i64 %207
  %209 = load i8, ptr %208, align 1, !tbaa !15
  %210 = zext i8 %209 to i32
  %211 = add nuw nsw i32 %202, %210
  %212 = getelementptr inbounds i8, ptr %203, i64 2
  %213 = load i8, ptr %204, align 1, !tbaa !15
  %214 = zext i8 %213 to i64
  %215 = sub nsw i64 0, %214
  %216 = getelementptr inbounds i8, ptr %36, i64 %215
  %217 = load i8, ptr %216, align 1, !tbaa !15
  %218 = zext i8 %217 to i32
  %219 = add nuw nsw i32 %211, %218
  %220 = getelementptr inbounds i8, ptr %203, i64 3
  %221 = load i8, ptr %212, align 1, !tbaa !15
  %222 = zext i8 %221 to i64
  %223 = sub nsw i64 0, %222
  %224 = getelementptr inbounds i8, ptr %36, i64 %223
  %225 = load i8, ptr %224, align 1, !tbaa !15
  %226 = zext i8 %225 to i32
  %227 = add nuw nsw i32 %219, %226
  %228 = getelementptr inbounds i8, ptr %203, i64 4
  %229 = load i8, ptr %220, align 1, !tbaa !15
  %230 = zext i8 %229 to i64
  %231 = sub nsw i64 0, %230
  %232 = getelementptr inbounds i8, ptr %36, i64 %231
  %233 = load i8, ptr %232, align 1, !tbaa !15
  %234 = zext i8 %233 to i32
  %235 = add nuw nsw i32 %227, %234
  %236 = getelementptr inbounds i8, ptr %203, i64 5
  %237 = load i8, ptr %228, align 1, !tbaa !15
  %238 = zext i8 %237 to i64
  %239 = sub nsw i64 0, %238
  %240 = getelementptr inbounds i8, ptr %36, i64 %239
  %241 = load i8, ptr %240, align 1, !tbaa !15
  %242 = zext i8 %241 to i32
  %243 = add nuw nsw i32 %235, %242
  %244 = getelementptr inbounds i8, ptr %203, i64 6
  %245 = load i8, ptr %236, align 1, !tbaa !15
  %246 = zext i8 %245 to i64
  %247 = sub nsw i64 0, %246
  %248 = getelementptr inbounds i8, ptr %36, i64 %247
  %249 = load i8, ptr %248, align 1, !tbaa !15
  %250 = zext i8 %249 to i32
  %251 = add nuw nsw i32 %243, %250
  %252 = load i8, ptr %244, align 1, !tbaa !15
  %253 = zext i8 %252 to i64
  %254 = sub nsw i64 0, %253
  %255 = getelementptr inbounds i8, ptr %36, i64 %254
  %256 = load i8, ptr %255, align 1, !tbaa !15
  %257 = zext i8 %256 to i32
  %258 = add nuw nsw i32 %251, %257
  %259 = getelementptr inbounds i8, ptr %244, i64 %15
  %260 = getelementptr inbounds i8, ptr %259, i64 1
  %261 = load i8, ptr %259, align 1, !tbaa !15
  %262 = zext i8 %261 to i64
  %263 = sub nsw i64 0, %262
  %264 = getelementptr inbounds i8, ptr %36, i64 %263
  %265 = load i8, ptr %264, align 1, !tbaa !15
  %266 = zext i8 %265 to i32
  %267 = add nuw nsw i32 %258, %266
  %268 = getelementptr inbounds i8, ptr %259, i64 2
  %269 = load i8, ptr %260, align 1, !tbaa !15
  %270 = zext i8 %269 to i64
  %271 = sub nsw i64 0, %270
  %272 = getelementptr inbounds i8, ptr %36, i64 %271
  %273 = load i8, ptr %272, align 1, !tbaa !15
  %274 = zext i8 %273 to i32
  %275 = add nuw nsw i32 %267, %274
  %276 = getelementptr inbounds i8, ptr %259, i64 3
  %277 = load i8, ptr %268, align 1, !tbaa !15
  %278 = zext i8 %277 to i64
  %279 = sub nsw i64 0, %278
  %280 = getelementptr inbounds i8, ptr %36, i64 %279
  %281 = load i8, ptr %280, align 1, !tbaa !15
  %282 = zext i8 %281 to i32
  %283 = add nuw nsw i32 %275, %282
  %284 = getelementptr inbounds i8, ptr %259, i64 4
  %285 = load i8, ptr %276, align 1, !tbaa !15
  %286 = zext i8 %285 to i64
  %287 = sub nsw i64 0, %286
  %288 = getelementptr inbounds i8, ptr %36, i64 %287
  %289 = load i8, ptr %288, align 1, !tbaa !15
  %290 = zext i8 %289 to i32
  %291 = add nuw nsw i32 %283, %290
  %292 = load i8, ptr %284, align 1, !tbaa !15
  %293 = zext i8 %292 to i64
  %294 = sub nsw i64 0, %293
  %295 = getelementptr inbounds i8, ptr %36, i64 %294
  %296 = load i8, ptr %295, align 1, !tbaa !15
  %297 = zext i8 %296 to i32
  %298 = add nuw nsw i32 %291, %297
  %299 = getelementptr inbounds i8, ptr %284, i64 %13
  %300 = getelementptr inbounds i8, ptr %299, i64 1
  %301 = load i8, ptr %299, align 1, !tbaa !15
  %302 = zext i8 %301 to i64
  %303 = sub nsw i64 0, %302
  %304 = getelementptr inbounds i8, ptr %36, i64 %303
  %305 = load i8, ptr %304, align 1, !tbaa !15
  %306 = zext i8 %305 to i32
  %307 = add nuw nsw i32 %298, %306
  %308 = getelementptr inbounds i8, ptr %299, i64 2
  %309 = load i8, ptr %300, align 1, !tbaa !15
  %310 = zext i8 %309 to i64
  %311 = sub nsw i64 0, %310
  %312 = getelementptr inbounds i8, ptr %36, i64 %311
  %313 = load i8, ptr %312, align 1, !tbaa !15
  %314 = zext i8 %313 to i32
  %315 = add nuw nsw i32 %307, %314
  %316 = load i8, ptr %308, align 1, !tbaa !15
  %317 = zext i8 %316 to i64
  %318 = sub nsw i64 0, %317
  %319 = getelementptr inbounds i8, ptr %36, i64 %318
  %320 = load i8, ptr %319, align 1, !tbaa !15
  %321 = zext i8 %320 to i32
  %322 = add nuw nsw i32 %315, %321
  %323 = icmp sgt i32 %322, %3
  br i1 %323, label %327, label %324

324:                                              ; preds = %28
  %325 = sub nsw i32 %3, %322
  %326 = getelementptr inbounds i32, ptr %1, i64 %32
  store i32 %325, ptr %326, align 4, !tbaa !11
  br label %327

327:                                              ; preds = %324, %28
  %328 = add nuw nsw i64 %29, 1
  %329 = icmp eq i64 %328, %20
  br i1 %329, label %330, label %28, !llvm.loop !18

330:                                              ; preds = %327, %21
  %331 = add nuw nsw i64 %22, 1
  %332 = icmp eq i64 %331, %19
  br i1 %332, label %333, label %21, !llvm.loop !19

333:                                              ; preds = %330, %6
  ret i32 undef
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #12

; Function Attrs: nofree nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal i32 @susan_principle_small(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2, i32 %3, i32 noundef %4, i32 noundef %5) #11 {
  %7 = call i64 @_wyvern_slice_susan_corners__839368081(i32 %4, i32 %5)
  tail call void @llvm.memset.p0.i64(ptr align 4 %1, i8 0, i64 %7, i1 false)
  %8 = icmp sgt i32 %5, 2
  br i1 %8, label %9, label %106

9:                                                ; preds = %6
  %10 = add nsw i32 %5, -1
  %11 = add i32 %4, -1
  %12 = icmp sgt i32 %4, 2
  %13 = add nsw i32 %4, -2
  %14 = sext i32 %13 to i64
  %15 = sext i32 %4 to i64
  %16 = zext i32 %10 to i64
  %17 = zext i32 %11 to i64
  br label %18

18:                                               ; preds = %103, %9
  %19 = phi i64 [ 1, %9 ], [ %104, %103 ]
  br i1 %12, label %20, label %103

20:                                               ; preds = %18
  %21 = add nsw i64 %19, -1
  %22 = mul nsw i64 %21, %15
  %23 = getelementptr inbounds i8, ptr %0, i64 %22
  %24 = mul nsw i64 %19, %15
  br label %25

25:                                               ; preds = %100, %20
  %26 = phi i64 [ 1, %20 ], [ %101, %100 ]
  %27 = getelementptr inbounds i8, ptr %23, i64 %26
  %28 = getelementptr inbounds i8, ptr %27, i64 -1
  %29 = add nsw i64 %26, %24
  %30 = getelementptr inbounds i8, ptr %0, i64 %29
  %31 = load i8, ptr %30, align 1, !tbaa !15
  %32 = zext i8 %31 to i64
  %33 = getelementptr inbounds i8, ptr %2, i64 %32
  %34 = load i8, ptr %28, align 1, !tbaa !15
  %35 = zext i8 %34 to i64
  %36 = sub nsw i64 0, %35
  %37 = getelementptr inbounds i8, ptr %33, i64 %36
  %38 = load i8, ptr %37, align 1, !tbaa !15
  %39 = zext i8 %38 to i32
  %40 = add nuw nsw i32 %39, 100
  %41 = getelementptr inbounds i8, ptr %27, i64 1
  %42 = load i8, ptr %27, align 1, !tbaa !15
  %43 = zext i8 %42 to i64
  %44 = sub nsw i64 0, %43
  %45 = getelementptr inbounds i8, ptr %33, i64 %44
  %46 = load i8, ptr %45, align 1, !tbaa !15
  %47 = zext i8 %46 to i32
  %48 = add nuw nsw i32 %40, %47
  %49 = load i8, ptr %41, align 1, !tbaa !15
  %50 = zext i8 %49 to i64
  %51 = sub nsw i64 0, %50
  %52 = getelementptr inbounds i8, ptr %33, i64 %51
  %53 = load i8, ptr %52, align 1, !tbaa !15
  %54 = zext i8 %53 to i32
  %55 = add nuw nsw i32 %48, %54
  %56 = getelementptr inbounds i8, ptr %41, i64 %14
  %57 = load i8, ptr %56, align 1, !tbaa !15
  %58 = zext i8 %57 to i64
  %59 = sub nsw i64 0, %58
  %60 = getelementptr inbounds i8, ptr %33, i64 %59
  %61 = load i8, ptr %60, align 1, !tbaa !15
  %62 = zext i8 %61 to i32
  %63 = add nuw nsw i32 %55, %62
  %64 = getelementptr inbounds i8, ptr %56, i64 2
  %65 = load i8, ptr %64, align 1, !tbaa !15
  %66 = zext i8 %65 to i64
  %67 = sub nsw i64 0, %66
  %68 = getelementptr inbounds i8, ptr %33, i64 %67
  %69 = load i8, ptr %68, align 1, !tbaa !15
  %70 = zext i8 %69 to i32
  %71 = add nuw nsw i32 %63, %70
  %72 = getelementptr inbounds i8, ptr %64, i64 %14
  %73 = getelementptr inbounds i8, ptr %72, i64 1
  %74 = load i8, ptr %72, align 1, !tbaa !15
  %75 = zext i8 %74 to i64
  %76 = sub nsw i64 0, %75
  %77 = getelementptr inbounds i8, ptr %33, i64 %76
  %78 = load i8, ptr %77, align 1, !tbaa !15
  %79 = zext i8 %78 to i32
  %80 = add nuw nsw i32 %71, %79
  %81 = getelementptr inbounds i8, ptr %72, i64 2
  %82 = load i8, ptr %73, align 1, !tbaa !15
  %83 = zext i8 %82 to i64
  %84 = sub nsw i64 0, %83
  %85 = getelementptr inbounds i8, ptr %33, i64 %84
  %86 = load i8, ptr %85, align 1, !tbaa !15
  %87 = zext i8 %86 to i32
  %88 = add nuw nsw i32 %80, %87
  %89 = load i8, ptr %81, align 1, !tbaa !15
  %90 = zext i8 %89 to i64
  %91 = sub nsw i64 0, %90
  %92 = getelementptr inbounds i8, ptr %33, i64 %91
  %93 = load i8, ptr %92, align 1, !tbaa !15
  %94 = zext i8 %93 to i32
  %95 = add nuw nsw i32 %88, %94
  %96 = icmp ult i32 %95, 731
  br i1 %96, label %97, label %100

97:                                               ; preds = %25
  %98 = sub nuw nsw i32 730, %95
  %99 = getelementptr inbounds i32, ptr %1, i64 %29
  store i32 %98, ptr %99, align 4, !tbaa !11
  br label %100

100:                                              ; preds = %97, %25
  %101 = add nuw nsw i64 %26, 1
  %102 = icmp eq i64 %101, %17
  br i1 %102, label %103, label %25, !llvm.loop !20

103:                                              ; preds = %100, %18
  %104 = add nuw nsw i64 %19, 1
  %105 = icmp eq i64 %104, %16
  br i1 %105, label %106, label %18, !llvm.loop !21

106:                                              ; preds = %103, %6
  ret i32 undef
}

; Function Attrs: nofree nosync nounwind optsize memory(argmem: read) uwtable
define internal zeroext i8 @median(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #13 {
  %5 = alloca [8 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #22
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
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #22
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
  %19 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.25, double noundef %12) #23
  %20 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.44)
  %21 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.45)
  tail call void @exit(i32 noundef 0) #21
  unreachable

22:                                               ; preds = %6
  %23 = shl nsw i32 %16, 1
  %24 = or i32 %23, 1
  %25 = icmp sgt i32 %24, %3
  %26 = icmp sgt i32 %24, %4
  %27 = or i1 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.28, i32 noundef %16, i32 noundef %3, i32 noundef %4) #23
  tail call void @exit(i32 noundef 0) #21
  unreachable

30:                                               ; preds = %22
  %31 = add nsw i32 %23, %3
  %32 = add nsw i32 %23, %4
  %33 = mul nsw i32 %31, %32
  %34 = sext i32 %33 to i64
  %35 = tail call noalias ptr @malloc(i64 noundef %34) #25
  %36 = call i32 @enlarge(ptr noundef nonnull %7, ptr noundef %35, ptr noundef nonnull %8, ptr noundef nonnull %9, i32 noundef %16) #23
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
  %47 = tail call noalias ptr @malloc(i64 noundef %46) #25
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
  %77 = tail call double @exp(double noundef %76) #26
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
  %155 = tail call zeroext i8 @median(ptr noundef %100, i32 noundef %91, i32 noundef %154, i32 noundef %98) #23
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
  %280 = tail call zeroext i8 @median(ptr noundef nonnull %192, i32 noundef %184, i32 noundef %199, i32 noundef %190) #23
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
  br i1 %6, label %8, label %35

8:                                                ; preds = %5
  %9 = icmp sgt i32 %7, 0
  br i1 %9, label %10, label %49

10:                                               ; preds = %8
  %11 = sext i32 %2 to i64
  %12 = sub nsw i64 0, %11
  %13 = getelementptr i8, ptr %0, i64 %12
  %14 = add nsw i32 %2, -2
  %15 = sext i32 %14 to i64
  br label %16

16:                                               ; preds = %31, %10
  %17 = phi ptr [ %1, %10 ], [ %32, %31 ]
  %18 = phi i32 [ 0, %10 ], [ %33, %31 ]
  %19 = load i8, ptr %17, align 1, !tbaa !15
  %20 = icmp ult i8 %19, 8
  br i1 %20, label %21, label %31

21:                                               ; preds = %16
  %22 = call i64 @_wyvern_slice_edge_draw__176944941(ptr %1, ptr %17)
  %23 = getelementptr i8, ptr %13, i64 %22
  %24 = getelementptr inbounds i8, ptr %23, i64 -1
  store i8 -1, ptr %24, align 1, !tbaa !15
  %25 = getelementptr inbounds i8, ptr %23, i64 1
  store i8 -1, ptr %23, align 1, !tbaa !15
  store i8 -1, ptr %25, align 1, !tbaa !15
  %26 = getelementptr inbounds i8, ptr %25, i64 %15
  store i8 -1, ptr %26, align 1, !tbaa !15
  %27 = getelementptr inbounds i8, ptr %26, i64 2
  store i8 -1, ptr %27, align 1, !tbaa !15
  %28 = getelementptr inbounds i8, ptr %27, i64 %15
  %29 = getelementptr inbounds i8, ptr %28, i64 1
  store i8 -1, ptr %28, align 1, !tbaa !15
  %30 = getelementptr inbounds i8, ptr %28, i64 2
  store i8 -1, ptr %29, align 1, !tbaa !15
  store i8 -1, ptr %30, align 1, !tbaa !15
  br label %31

31:                                               ; preds = %21, %16
  %32 = getelementptr inbounds i8, ptr %17, i64 1
  %33 = add nuw nsw i32 %18, 1
  %34 = icmp eq i32 %33, %7
  br i1 %34, label %35, label %16, !llvm.loop !36

35:                                               ; preds = %31, %5
  %36 = icmp sgt i32 %7, 0
  br i1 %36, label %37, label %49

37:                                               ; preds = %35, %45
  %38 = phi ptr [ %46, %45 ], [ %1, %35 ]
  %39 = phi i32 [ %47, %45 ], [ 0, %35 ]
  %40 = load i8, ptr %38, align 1, !tbaa !15
  %41 = icmp ult i8 %40, 8
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = call i64 @_wyvern_slice_edge_draw__176944941(ptr %1, ptr %38)
  %44 = getelementptr inbounds i8, ptr %0, i64 %43
  store i8 0, ptr %44, align 1, !tbaa !15
  br label %45

45:                                               ; preds = %42, %37
  %46 = getelementptr inbounds i8, ptr %38, i64 1
  %47 = add nuw nsw i32 %39, 1
  %48 = icmp eq i32 %47, %7
  br i1 %48, label %49, label %37, !llvm.loop !37

49:                                               ; preds = %45, %35, %8
  ret i32 undef
}

; Function Attrs: nofree nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal i32 @susan_thin(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #7 {
  %5 = alloca [9 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %5) #22
  %6 = add nsw i32 %3, -4
  %7 = icmp sgt i32 %3, 8
  br i1 %7, label %8, label %565

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

20:                                               ; preds = %559, %8
  %21 = phi i32 [ 4, %8 ], [ %563, %559 ]
  %22 = phi i32 [ undef, %8 ], [ %561, %559 ]
  %23 = phi i32 [ undef, %8 ], [ %560, %559 ]
  br i1 %10, label %24, label %559

24:                                               ; preds = %552, %20
  %25 = phi i32 [ %557, %552 ], [ 4, %20 ]
  %26 = phi i32 [ %555, %552 ], [ %21, %20 ]
  %27 = phi i32 [ %554, %552 ], [ %22, %20 ]
  %28 = phi i32 [ %553, %552 ], [ %23, %20 ]
  %29 = mul nsw i32 %26, %2
  %30 = add nsw i32 %29, %25
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, ptr %1, i64 %31
  %33 = load i8, ptr %32, align 1, !tbaa !15
  %34 = icmp ult i8 %33, 8
  br i1 %34, label %35, label %552

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
  switch i32 %81, label %246 [
    i32 0, label %82
    i32 1, label %83
  ]

82:                                               ; preds = %35
  store i8 100, ptr %32, align 1, !tbaa !15
  br label %552

83:                                               ; preds = %35
  %84 = icmp ult i8 %33, 6
  br i1 %84, label %85, label %552

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

199:                                              ; preds = %123, %133, %143, %153, %163, %173, %183, %189, %193, %221
  %200 = phi i64 [ %222, %221 ], [ 0, %193 ], [ 0, %189 ], [ 0, %183 ], [ 0, %173 ], [ 0, %163 ], [ 0, %153 ], [ 0, %143 ], [ 0, %133 ], [ 0, %123 ]
  %201 = phi i32 [ %.lcssa, %221 ], [ %27, %193 ], [ %27, %189 ], [ %27, %183 ], [ %27, %173 ], [ %27, %163 ], [ %27, %153 ], [ %27, %143 ], [ %27, %133 ], [ %27, %123 ]
  %202 = phi i32 [ %.lcssa1, %221 ], [ %28, %193 ], [ %28, %189 ], [ %28, %183 ], [ %28, %173 ], [ %28, %163 ], [ %28, %153 ], [ %28, %143 ], [ %28, %133 ], [ %28, %123 ]
  %203 = phi i32 [ %.lcssa2, %221 ], [ 0, %193 ], [ 0, %189 ], [ 0, %183 ], [ 0, %173 ], [ 0, %163 ], [ 0, %153 ], [ 0, %143 ], [ 0, %133 ], [ 0, %123 ]
  %204 = mul nuw nsw i64 %200, 3
  %205 = trunc i64 %200 to i32
  br label %206

206:                                              ; preds = %206, %199
  %207 = phi i64 [ 0, %199 ], [ %219, %206 ]
  %208 = phi i32 [ %201, %199 ], [ %218, %206 ]
  %209 = phi i32 [ %202, %199 ], [ %216, %206 ]
  %210 = phi i32 [ %203, %199 ], [ %215, %206 ]
  %211 = add nuw nsw i64 %207, %204
  %212 = getelementptr inbounds [9 x i32], ptr %5, i64 0, i64 %211
  %213 = load i32, ptr %212, align 4, !tbaa !11
  %214 = icmp sgt i32 %213, %210
  %215 = tail call i32 @llvm.smax.i32(i32 %213, i32 %210)
  %216 = select i1 %214, i32 %205, i32 %209
  %217 = trunc i64 %207 to i32
  %218 = select i1 %214, i32 %217, i32 %208
  %219 = add nuw nsw i64 %207, 1
  %220 = icmp eq i64 %219, 3
  br i1 %220, label %221, label %206, !llvm.loop !38

221:                                              ; preds = %206
  %.lcssa2 = phi i32 [ %215, %206 ]
  %.lcssa1 = phi i32 [ %216, %206 ]
  %.lcssa = phi i32 [ %218, %206 ]
  %222 = add nuw nsw i64 %200, 1
  %223 = icmp eq i64 %222, 3
  br i1 %223, label %224, label %199, !llvm.loop !39

224:                                              ; preds = %221
  %.lcssa2.lcssa = phi i32 [ %.lcssa2, %221 ]
  %.lcssa1.lcssa = phi i32 [ %.lcssa1, %221 ]
  %.lcssa.lcssa = phi i32 [ %.lcssa, %221 ]
  %225 = icmp sgt i32 %.lcssa2.lcssa, 0
  br i1 %225, label %226, label %246

226:                                              ; preds = %224
  %227 = icmp ult i8 %33, 4
  %228 = add i8 %33, 1
  %229 = select i1 %227, i8 4, i8 %228
  %230 = add i32 %38, %.lcssa1.lcssa
  %231 = mul nsw i32 %230, %2
  %232 = add nsw i32 %25, -1
  %233 = add i32 %232, %.lcssa.lcssa
  %234 = add i32 %233, %231
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds i8, ptr %1, i64 %235
  store i8 %229, ptr %236, align 1, !tbaa !15
  %237 = shl nsw i32 %.lcssa1.lcssa, 1
  %238 = add nsw i32 %237, %.lcssa.lcssa
  %239 = icmp slt i32 %238, 3
  br i1 %239, label %240, label %246

240:                                              ; preds = %226
  %241 = add i32 %38, %.lcssa1.lcssa
  %242 = add i32 %25, -2
  %243 = add i32 %242, %.lcssa.lcssa
  %244 = tail call i32 @llvm.smax.i32(i32 %241, i32 4)
  %245 = tail call i32 @llvm.smax.i32(i32 %243, i32 4)
  br label %246

246:                                              ; preds = %240, %226, %224, %35
  %247 = phi i32 [ %.lcssa1.lcssa, %240 ], [ %.lcssa1.lcssa, %226 ], [ %.lcssa1.lcssa, %224 ], [ %28, %35 ]
  %248 = phi i32 [ %.lcssa.lcssa, %240 ], [ %.lcssa.lcssa, %226 ], [ %.lcssa.lcssa, %224 ], [ %27, %35 ]
  %249 = phi i32 [ %244, %240 ], [ %26, %226 ], [ %26, %224 ], [ %26, %35 ]
  %250 = phi i32 [ %245, %240 ], [ %25, %226 ], [ %25, %224 ], [ %25, %35 ]
  %251 = icmp eq i32 %81, 2
  br i1 %251, label %252, label %467

252:                                              ; preds = %246
  %253 = add nsw i32 %249, -1
  %254 = mul nsw i32 %253, %2
  %255 = add nsw i32 %254, %250
  %256 = add nsw i32 %255, -1
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds i8, ptr %1, i64 %257
  %259 = load i8, ptr %258, align 1, !tbaa !15
  %260 = icmp ult i8 %259, 8
  %261 = zext i1 %260 to i32
  %262 = add nsw i32 %255, 1
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds i8, ptr %1, i64 %263
  %265 = load i8, ptr %264, align 1, !tbaa !15
  %266 = icmp ult i8 %265, 8
  %267 = zext i1 %266 to i32
  %268 = add nsw i32 %249, 1
  %269 = mul nsw i32 %268, %2
  %270 = add nsw i32 %269, %250
  %271 = add nsw i32 %270, -1
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds i8, ptr %1, i64 %272
  %274 = load i8, ptr %273, align 1, !tbaa !15
  %275 = icmp ult i8 %274, 8
  %276 = zext i1 %275 to i32
  %277 = add nsw i32 %270, 1
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds i8, ptr %1, i64 %278
  %280 = load i8, ptr %279, align 1, !tbaa !15
  %281 = icmp ult i8 %280, 8
  %282 = zext i1 %281 to i32
  %283 = add nuw nsw i32 %267, %261
  %284 = add nuw nsw i32 %283, %276
  %285 = add nuw nsw i32 %284, %282
  %286 = icmp eq i32 %285, 2
  br i1 %286, label %287, label %368

287:                                              ; preds = %252
  %288 = or i32 %282, %261
  %289 = or i32 %276, %267
  %290 = and i32 %288, %289
  %291 = icmp eq i32 %290, 0
  br i1 %291, label %368, label %292

292:                                              ; preds = %287
  %293 = xor i1 %266, true
  br i1 %260, label %294, label %297

294:                                              ; preds = %292
  %295 = sext i1 %293 to i32
  %296 = sext i1 %266 to i32
  br label %299

297:                                              ; preds = %292
  %298 = zext i1 %293 to i32
  br label %299

299:                                              ; preds = %297, %294
  %300 = phi i1 [ %266, %294 ], [ %293, %297 ]
  %301 = phi i32 [ %295, %294 ], [ %267, %297 ]
  %302 = phi i1 [ %293, %294 ], [ %266, %297 ]
  %303 = phi i32 [ %296, %294 ], [ %298, %297 ]
  %304 = add nsw i32 %303, %249
  %305 = mul nsw i32 %304, %2
  %306 = add i32 %301, %250
  %307 = add i32 %306, %305
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds i32, ptr %0, i64 %308
  %310 = load i32, ptr %309, align 4, !tbaa !11
  %311 = sitofp i32 %310 to float
  %312 = sitofp i32 %37 to float
  %313 = fdiv float %311, %312
  %314 = fpext float %313 to double
  %315 = fcmp ogt double %314, 0x3FE6666666666666
  br i1 %315, label %316, label %552

316:                                              ; preds = %299
  br i1 %300, label %317, label %341

317:                                              ; preds = %316
  %318 = shl nsw i32 %303, 1
  %319 = add nsw i32 %318, %249
  %320 = mul nsw i32 %319, %2
  %321 = add nsw i32 %320, %250
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds i8, ptr %1, i64 %322
  %324 = load i8, ptr %323, align 1, !tbaa !15
  %325 = icmp ugt i8 %324, 7
  br i1 %325, label %326, label %341

326:                                              ; preds = %317
  %327 = add nsw i32 %321, -1
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds i8, ptr %1, i64 %328
  %330 = load i8, ptr %329, align 1, !tbaa !15
  %331 = icmp ugt i8 %330, 7
  br i1 %331, label %332, label %341

332:                                              ; preds = %326
  %333 = add nsw i32 %321, 1
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds i8, ptr %1, i64 %334
  %336 = load i8, ptr %335, align 1, !tbaa !15
  %337 = icmp ugt i8 %336, 7
  br i1 %337, label %338, label %341

338:                                              ; preds = %332
  %339 = mul nsw i32 %249, %2
  %340 = add nsw i32 %339, %250
  br label %363

341:                                              ; preds = %332, %326, %317, %316
  br i1 %302, label %342, label %552

342:                                              ; preds = %341
  %343 = mul nsw i32 %249, %2
  %344 = add nsw i32 %343, %250
  %345 = shl nsw i32 %301, 1
  %346 = add nsw i32 %344, %345
  %347 = sext i32 %346 to i64
  %348 = getelementptr inbounds i8, ptr %1, i64 %347
  %349 = load i8, ptr %348, align 1, !tbaa !15
  %350 = icmp ugt i8 %349, 7
  br i1 %350, label %351, label %552

351:                                              ; preds = %342
  %352 = add nsw i32 %345, %270
  %353 = sext i32 %352 to i64
  %354 = getelementptr inbounds i8, ptr %1, i64 %353
  %355 = load i8, ptr %354, align 1, !tbaa !15
  %356 = icmp ugt i8 %355, 7
  br i1 %356, label %357, label %552

357:                                              ; preds = %351
  %358 = add nsw i32 %345, %255
  %359 = sext i32 %358 to i64
  %360 = getelementptr inbounds i8, ptr %1, i64 %359
  %361 = load i8, ptr %360, align 1, !tbaa !15
  %362 = icmp ugt i8 %361, 7
  br i1 %362, label %363, label %552

363:                                              ; preds = %357, %338
  %364 = phi i32 [ %340, %338 ], [ %344, %357 ]
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds i8, ptr %1, i64 %365
  store i8 100, ptr %366, align 1, !tbaa !15
  %367 = getelementptr inbounds i8, ptr %1, i64 %308
  store i8 3, ptr %367, align 1, !tbaa !15
  br label %552

368:                                              ; preds = %287, %252
  %369 = sext i32 %255 to i64
  %370 = getelementptr inbounds i8, ptr %1, i64 %369
  %371 = load i8, ptr %370, align 1, !tbaa !15
  %372 = icmp ult i8 %371, 8
  %373 = zext i1 %372 to i32
  %374 = mul nsw i32 %249, %2
  %375 = add nsw i32 %374, %250
  %376 = add nsw i32 %375, 1
  %377 = sext i32 %376 to i64
  %378 = getelementptr inbounds i8, ptr %1, i64 %377
  %379 = load i8, ptr %378, align 1, !tbaa !15
  %380 = icmp ult i8 %379, 8
  %381 = zext i1 %380 to i32
  %382 = sext i32 %270 to i64
  %383 = getelementptr inbounds i8, ptr %1, i64 %382
  %384 = load i8, ptr %383, align 1, !tbaa !15
  %385 = icmp ult i8 %384, 8
  %386 = zext i1 %385 to i32
  %387 = add nsw i32 %375, -1
  %388 = sext i32 %387 to i64
  %389 = getelementptr inbounds i8, ptr %1, i64 %388
  %390 = load i8, ptr %389, align 1, !tbaa !15
  %391 = icmp ult i8 %390, 8
  %392 = zext i1 %391 to i32
  %393 = add nuw nsw i32 %381, %373
  %394 = add nuw nsw i32 %393, %386
  %395 = add nuw nsw i32 %394, %392
  %396 = icmp eq i32 %395, 2
  br i1 %396, label %397, label %552

397:                                              ; preds = %368
  %398 = or i32 %392, %381
  %399 = or i32 %386, %373
  %400 = and i32 %398, %399
  %401 = icmp eq i32 %400, 0
  br i1 %401, label %552, label %402

402:                                              ; preds = %397
  %403 = add nsw i32 %249, -2
  %404 = mul nsw i32 %403, %2
  %405 = add nsw i32 %404, %250
  %406 = add nsw i32 %405, -1
  %407 = sext i32 %406 to i64
  %408 = getelementptr inbounds i8, ptr %1, i64 %407
  %409 = load i8, ptr %408, align 1, !tbaa !15
  %410 = icmp ult i8 %409, 8
  %411 = add nsw i32 %405, 1
  %412 = sext i32 %411 to i64
  %413 = getelementptr inbounds i8, ptr %1, i64 %412
  %414 = load i8, ptr %413, align 1, !tbaa !15
  %415 = icmp ult i8 %414, 8
  %416 = or i1 %410, %415
  %417 = and i1 %372, %416
  %418 = add nsw i32 %255, -2
  %419 = sext i32 %418 to i64
  %420 = getelementptr inbounds i8, ptr %1, i64 %419
  %421 = load i8, ptr %420, align 1, !tbaa !15
  %422 = icmp ult i8 %421, 8
  %423 = add nsw i32 %270, -2
  %424 = sext i32 %423 to i64
  %425 = getelementptr inbounds i8, ptr %1, i64 %424
  %426 = load i8, ptr %425, align 1, !tbaa !15
  %427 = icmp ult i8 %426, 8
  %428 = or i1 %422, %427
  %429 = and i1 %391, %428
  %430 = or i1 %417, %429
  %431 = add nsw i32 %255, 2
  %432 = sext i32 %431 to i64
  %433 = getelementptr inbounds i8, ptr %1, i64 %432
  %434 = load i8, ptr %433, align 1, !tbaa !15
  %435 = icmp ult i8 %434, 8
  %436 = add nsw i32 %270, 2
  %437 = sext i32 %436 to i64
  %438 = getelementptr inbounds i8, ptr %1, i64 %437
  %439 = load i8, ptr %438, align 1, !tbaa !15
  %440 = icmp ult i8 %439, 8
  %441 = or i1 %435, %440
  %442 = and i1 %380, %441
  %443 = or i1 %430, %442
  %444 = add nsw i32 %249, 2
  %445 = mul nsw i32 %444, %2
  %446 = add nsw i32 %445, %250
  %447 = add nsw i32 %446, -1
  %448 = sext i32 %447 to i64
  %449 = getelementptr inbounds i8, ptr %1, i64 %448
  %450 = load i8, ptr %449, align 1, !tbaa !15
  %451 = icmp ult i8 %450, 8
  %452 = add nsw i32 %446, 1
  %453 = sext i32 %452 to i64
  %454 = getelementptr inbounds i8, ptr %1, i64 %453
  %455 = load i8, ptr %454, align 1, !tbaa !15
  %456 = icmp ult i8 %455, 8
  %457 = or i1 %451, %456
  %458 = and i1 %385, %457
  %459 = or i1 %443, %458
  br i1 %459, label %460, label %552

460:                                              ; preds = %402
  %461 = sext i32 %375 to i64
  %462 = getelementptr inbounds i8, ptr %1, i64 %461
  store i8 100, ptr %462, align 1, !tbaa !15
  %463 = tail call i32 @llvm.smax.i32(i32 %249, i32 5)
  %464 = add nsw i32 %463, -1
  %465 = tail call i32 @llvm.smax.i32(i32 %250, i32 6)
  %466 = add nsw i32 %465, -2
  br label %552

467:                                              ; preds = %246
  %468 = icmp sgt i32 %81, 2
  br i1 %468, label %469, label %552

469:                                              ; preds = %467
  %470 = add nsw i32 %249, -1
  %471 = mul nsw i32 %470, %2
  %472 = add nsw i32 %471, %250
  %473 = sext i32 %472 to i64
  %474 = getelementptr inbounds i8, ptr %1, i64 %473
  %475 = load i8, ptr %474, align 1, !tbaa !15
  %476 = icmp ult i8 %475, 8
  %477 = zext i1 %476 to i32
  %478 = mul nsw i32 %249, %2
  %479 = add nsw i32 %478, %250
  %480 = add nsw i32 %479, 1
  %481 = sext i32 %480 to i64
  %482 = getelementptr inbounds i8, ptr %1, i64 %481
  %483 = load i8, ptr %482, align 1, !tbaa !15
  %484 = icmp ult i8 %483, 8
  %485 = zext i1 %484 to i32
  %486 = add nsw i32 %249, 1
  %487 = mul nsw i32 %486, %2
  %488 = add nsw i32 %487, %250
  %489 = sext i32 %488 to i64
  %490 = getelementptr inbounds i8, ptr %1, i64 %489
  %491 = load i8, ptr %490, align 1, !tbaa !15
  %492 = icmp ult i8 %491, 8
  %493 = zext i1 %492 to i32
  %494 = add nsw i32 %479, -1
  %495 = sext i32 %494 to i64
  %496 = getelementptr inbounds i8, ptr %1, i64 %495
  %497 = load i8, ptr %496, align 1, !tbaa !15
  %498 = icmp ult i8 %497, 8
  %499 = zext i1 %498 to i32
  %500 = add nuw nsw i32 %485, %477
  %501 = add nuw nsw i32 %500, %493
  %502 = add nuw nsw i32 %501, %499
  %503 = icmp ugt i32 %502, 1
  br i1 %503, label %504, label %552

504:                                              ; preds = %469
  %505 = add nsw i32 %472, -1
  %506 = sext i32 %505 to i64
  %507 = getelementptr inbounds i8, ptr %1, i64 %506
  %508 = load i8, ptr %507, align 1, !tbaa !15
  %509 = icmp ult i8 %508, 8
  %510 = add nsw i32 %472, 1
  %511 = sext i32 %510 to i64
  %512 = getelementptr inbounds i8, ptr %1, i64 %511
  %513 = load i8, ptr %512, align 1, !tbaa !15
  %514 = icmp ult i8 %513, 8
  %515 = add nsw i32 %488, -1
  %516 = sext i32 %515 to i64
  %517 = getelementptr inbounds i8, ptr %1, i64 %516
  %518 = load i8, ptr %517, align 1, !tbaa !15
  %519 = icmp ult i8 %518, 8
  %520 = add nsw i32 %488, 1
  %521 = sext i32 %520 to i64
  %522 = getelementptr inbounds i8, ptr %1, i64 %521
  %523 = load i8, ptr %522, align 1, !tbaa !15
  %524 = icmp ult i8 %523, 8
  %525 = or i1 %476, %509
  %526 = zext i1 %525 to i32
  %527 = or i1 %484, %514
  %528 = zext i1 %527 to i32
  %529 = or i1 %492, %524
  %530 = zext i1 %529 to i32
  %531 = or i1 %498, %519
  %532 = zext i1 %531 to i32
  %533 = and i32 %528, %477
  %534 = and i32 %530, %485
  %535 = and i32 %532, %493
  %536 = and i32 %526, %499
  %537 = add nuw nsw i32 %528, %526
  %538 = add nuw nsw i32 %537, %532
  %539 = add nuw nsw i32 %536, %533
  %540 = add nuw nsw i32 %538, %530
  %541 = add nuw nsw i32 %539, %535
  %542 = add nuw nsw i32 %541, %534
  %543 = sub nsw i32 %540, %542
  %544 = icmp slt i32 %543, 2
  br i1 %544, label %545, label %552

545:                                              ; preds = %504
  %546 = sext i32 %479 to i64
  %547 = getelementptr inbounds i8, ptr %1, i64 %546
  store i8 100, ptr %547, align 1, !tbaa !15
  %548 = tail call i32 @llvm.smax.i32(i32 %249, i32 5)
  %549 = add nsw i32 %548, -1
  %550 = tail call i32 @llvm.smax.i32(i32 %250, i32 6)
  %551 = add nsw i32 %550, -2
  br label %552

552:                                              ; preds = %545, %504, %469, %467, %460, %402, %397, %368, %363, %357, %351, %342, %341, %299, %83, %82, %24
  %553 = phi i32 [ %247, %545 ], [ %247, %504 ], [ %247, %469 ], [ %247, %467 ], [ %28, %24 ], [ %247, %368 ], [ %247, %397 ], [ %247, %402 ], [ %247, %460 ], [ %247, %299 ], [ %247, %341 ], [ %247, %342 ], [ %247, %351 ], [ %247, %357 ], [ %247, %363 ], [ %28, %82 ], [ %28, %83 ]
  %554 = phi i32 [ %248, %545 ], [ %248, %504 ], [ %248, %469 ], [ %248, %467 ], [ %27, %24 ], [ %248, %368 ], [ %248, %397 ], [ %248, %402 ], [ %248, %460 ], [ %248, %299 ], [ %248, %341 ], [ %248, %342 ], [ %248, %351 ], [ %248, %357 ], [ %248, %363 ], [ %27, %82 ], [ %27, %83 ]
  %555 = phi i32 [ %549, %545 ], [ %249, %504 ], [ %249, %469 ], [ %249, %467 ], [ %26, %24 ], [ %249, %368 ], [ %249, %397 ], [ %249, %402 ], [ %464, %460 ], [ %249, %299 ], [ %249, %341 ], [ %249, %342 ], [ %249, %351 ], [ %249, %357 ], [ %249, %363 ], [ %26, %82 ], [ %26, %83 ]
  %556 = phi i32 [ %551, %545 ], [ %250, %504 ], [ %250, %469 ], [ %250, %467 ], [ %25, %24 ], [ %250, %368 ], [ %250, %397 ], [ %250, %402 ], [ %466, %460 ], [ %250, %299 ], [ %250, %341 ], [ %250, %342 ], [ %250, %351 ], [ %250, %357 ], [ %250, %363 ], [ %25, %82 ], [ %25, %83 ]
  %557 = add nsw i32 %556, 1
  %558 = icmp slt i32 %557, %9
  br i1 %558, label %24, label %559, !llvm.loop !40

559:                                              ; preds = %552, %20
  %560 = phi i32 [ %23, %20 ], [ %553, %552 ]
  %561 = phi i32 [ %22, %20 ], [ %554, %552 ]
  %562 = phi i32 [ %21, %20 ], [ %555, %552 ]
  %563 = add nsw i32 %562, 1
  %564 = icmp slt i32 %563, %6
  br i1 %564, label %20, label %565, !llvm.loop !41

565:                                              ; preds = %559, %4
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %5) #22
  ret i32 undef
}

; Function Attrs: nofree nounwind optsize memory(readwrite, inaccessiblemem: write) uwtable
define internal i32 @susan_edges(ptr noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef writeonly %2, ptr noundef readonly %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) #17 {
  %8 = call i64 @_wyvern_slice_susan_corners__839368081(i32 %5, i32 %6)
  tail call void @llvm.memset.p0.i64(ptr align 4 %1, i8 0, i64 %8, i1 false)
  %9 = icmp sgt i32 %6, 6
  br i1 %9, label %10, label %1158

10:                                               ; preds = %7
  %11 = add nsw i32 %6, -3
  %12 = add i32 %5, -3
  %13 = icmp sgt i32 %5, 6
  %14 = sext i32 %12 to i64
  %15 = add nsw i32 %5, -5
  %16 = sext i32 %15 to i64
  %17 = add nsw i32 %5, -6
  %18 = sext i32 %17 to i64
  %19 = sext i32 %5 to i64
  %20 = zext i32 %11 to i64
  %21 = zext i32 %12 to i64
  br label %22

22:                                               ; preds = %346, %10
  %23 = phi i64 [ 3, %10 ], [ %347, %346 ]
  br i1 %13, label %24, label %346

24:                                               ; preds = %22
  %25 = add nsw i64 %23, -3
  %26 = mul nsw i64 %25, %19
  %27 = getelementptr inbounds i8, ptr %0, i64 %26
  %28 = mul nsw i64 %23, %19
  br label %44

29:                                               ; preds = %346
  %30 = icmp sgt i32 %6, 8
  br i1 %30, label %31, label %1158

31:                                               ; preds = %29
  %32 = add nsw i32 %6, -4
  %33 = add i32 %5, -4
  %34 = icmp sgt i32 %5, 8
  %35 = add nsw i32 %5, -3
  %36 = sext i32 %35 to i64
  %37 = add nsw i32 %5, -5
  %38 = sext i32 %37 to i64
  %39 = add nsw i32 %5, -6
  %40 = sext i32 %39 to i64
  %41 = sext i32 %5 to i64
  %42 = zext i32 %32 to i64
  %43 = zext i32 %33 to i64
  br label %349

44:                                               ; preds = %343, %24
  %45 = phi i64 [ 3, %24 ], [ %344, %343 ]
  %46 = getelementptr inbounds i8, ptr %27, i64 %45
  %47 = getelementptr inbounds i8, ptr %46, i64 -1
  %48 = add nsw i64 %45, %28
  %49 = getelementptr inbounds i8, ptr %0, i64 %48
  %50 = load i8, ptr %49, align 1, !tbaa !15
  %51 = zext i8 %50 to i64
  %52 = getelementptr inbounds i8, ptr %3, i64 %51
  %53 = load i8, ptr %47, align 1, !tbaa !15
  %54 = zext i8 %53 to i64
  %55 = sub nsw i64 0, %54
  %56 = getelementptr inbounds i8, ptr %52, i64 %55
  %57 = load i8, ptr %56, align 1, !tbaa !15
  %58 = zext i8 %57 to i32
  %59 = add nuw nsw i32 %58, 100
  %60 = getelementptr inbounds i8, ptr %46, i64 1
  %61 = load i8, ptr %46, align 1, !tbaa !15
  %62 = zext i8 %61 to i64
  %63 = sub nsw i64 0, %62
  %64 = getelementptr inbounds i8, ptr %52, i64 %63
  %65 = load i8, ptr %64, align 1, !tbaa !15
  %66 = zext i8 %65 to i32
  %67 = add nuw nsw i32 %59, %66
  %68 = load i8, ptr %60, align 1, !tbaa !15
  %69 = zext i8 %68 to i64
  %70 = sub nsw i64 0, %69
  %71 = getelementptr inbounds i8, ptr %52, i64 %70
  %72 = load i8, ptr %71, align 1, !tbaa !15
  %73 = zext i8 %72 to i32
  %74 = add nuw nsw i32 %67, %73
  %75 = getelementptr inbounds i8, ptr %60, i64 %14
  %76 = getelementptr inbounds i8, ptr %75, i64 1
  %77 = load i8, ptr %75, align 1, !tbaa !15
  %78 = zext i8 %77 to i64
  %79 = sub nsw i64 0, %78
  %80 = getelementptr inbounds i8, ptr %52, i64 %79
  %81 = load i8, ptr %80, align 1, !tbaa !15
  %82 = zext i8 %81 to i32
  %83 = add nuw nsw i32 %74, %82
  %84 = getelementptr inbounds i8, ptr %75, i64 2
  %85 = load i8, ptr %76, align 1, !tbaa !15
  %86 = zext i8 %85 to i64
  %87 = sub nsw i64 0, %86
  %88 = getelementptr inbounds i8, ptr %52, i64 %87
  %89 = load i8, ptr %88, align 1, !tbaa !15
  %90 = zext i8 %89 to i32
  %91 = add nuw nsw i32 %83, %90
  %92 = getelementptr inbounds i8, ptr %75, i64 3
  %93 = load i8, ptr %84, align 1, !tbaa !15
  %94 = zext i8 %93 to i64
  %95 = sub nsw i64 0, %94
  %96 = getelementptr inbounds i8, ptr %52, i64 %95
  %97 = load i8, ptr %96, align 1, !tbaa !15
  %98 = zext i8 %97 to i32
  %99 = add nuw nsw i32 %91, %98
  %100 = getelementptr inbounds i8, ptr %75, i64 4
  %101 = load i8, ptr %92, align 1, !tbaa !15
  %102 = zext i8 %101 to i64
  %103 = sub nsw i64 0, %102
  %104 = getelementptr inbounds i8, ptr %52, i64 %103
  %105 = load i8, ptr %104, align 1, !tbaa !15
  %106 = zext i8 %105 to i32
  %107 = add nuw nsw i32 %99, %106
  %108 = load i8, ptr %100, align 1, !tbaa !15
  %109 = zext i8 %108 to i64
  %110 = sub nsw i64 0, %109
  %111 = getelementptr inbounds i8, ptr %52, i64 %110
  %112 = load i8, ptr %111, align 1, !tbaa !15
  %113 = zext i8 %112 to i32
  %114 = add nuw nsw i32 %107, %113
  %115 = getelementptr inbounds i8, ptr %100, i64 %16
  %116 = getelementptr inbounds i8, ptr %115, i64 1
  %117 = load i8, ptr %115, align 1, !tbaa !15
  %118 = zext i8 %117 to i64
  %119 = sub nsw i64 0, %118
  %120 = getelementptr inbounds i8, ptr %52, i64 %119
  %121 = load i8, ptr %120, align 1, !tbaa !15
  %122 = zext i8 %121 to i32
  %123 = add nuw nsw i32 %114, %122
  %124 = getelementptr inbounds i8, ptr %115, i64 2
  %125 = load i8, ptr %116, align 1, !tbaa !15
  %126 = zext i8 %125 to i64
  %127 = sub nsw i64 0, %126
  %128 = getelementptr inbounds i8, ptr %52, i64 %127
  %129 = load i8, ptr %128, align 1, !tbaa !15
  %130 = zext i8 %129 to i32
  %131 = add nuw nsw i32 %123, %130
  %132 = getelementptr inbounds i8, ptr %115, i64 3
  %133 = load i8, ptr %124, align 1, !tbaa !15
  %134 = zext i8 %133 to i64
  %135 = sub nsw i64 0, %134
  %136 = getelementptr inbounds i8, ptr %52, i64 %135
  %137 = load i8, ptr %136, align 1, !tbaa !15
  %138 = zext i8 %137 to i32
  %139 = add nuw nsw i32 %131, %138
  %140 = getelementptr inbounds i8, ptr %115, i64 4
  %141 = load i8, ptr %132, align 1, !tbaa !15
  %142 = zext i8 %141 to i64
  %143 = sub nsw i64 0, %142
  %144 = getelementptr inbounds i8, ptr %52, i64 %143
  %145 = load i8, ptr %144, align 1, !tbaa !15
  %146 = zext i8 %145 to i32
  %147 = add nuw nsw i32 %139, %146
  %148 = getelementptr inbounds i8, ptr %115, i64 5
  %149 = load i8, ptr %140, align 1, !tbaa !15
  %150 = zext i8 %149 to i64
  %151 = sub nsw i64 0, %150
  %152 = getelementptr inbounds i8, ptr %52, i64 %151
  %153 = load i8, ptr %152, align 1, !tbaa !15
  %154 = zext i8 %153 to i32
  %155 = add nuw nsw i32 %147, %154
  %156 = getelementptr inbounds i8, ptr %115, i64 6
  %157 = load i8, ptr %148, align 1, !tbaa !15
  %158 = zext i8 %157 to i64
  %159 = sub nsw i64 0, %158
  %160 = getelementptr inbounds i8, ptr %52, i64 %159
  %161 = load i8, ptr %160, align 1, !tbaa !15
  %162 = zext i8 %161 to i32
  %163 = add nuw nsw i32 %155, %162
  %164 = load i8, ptr %156, align 1, !tbaa !15
  %165 = zext i8 %164 to i64
  %166 = sub nsw i64 0, %165
  %167 = getelementptr inbounds i8, ptr %52, i64 %166
  %168 = load i8, ptr %167, align 1, !tbaa !15
  %169 = zext i8 %168 to i32
  %170 = add nuw nsw i32 %163, %169
  %171 = getelementptr inbounds i8, ptr %156, i64 %18
  %172 = getelementptr inbounds i8, ptr %171, i64 1
  %173 = load i8, ptr %171, align 1, !tbaa !15
  %174 = zext i8 %173 to i64
  %175 = sub nsw i64 0, %174
  %176 = getelementptr inbounds i8, ptr %52, i64 %175
  %177 = load i8, ptr %176, align 1, !tbaa !15
  %178 = zext i8 %177 to i32
  %179 = add nuw nsw i32 %170, %178
  %180 = getelementptr inbounds i8, ptr %171, i64 2
  %181 = load i8, ptr %172, align 1, !tbaa !15
  %182 = zext i8 %181 to i64
  %183 = sub nsw i64 0, %182
  %184 = getelementptr inbounds i8, ptr %52, i64 %183
  %185 = load i8, ptr %184, align 1, !tbaa !15
  %186 = zext i8 %185 to i32
  %187 = add nuw nsw i32 %179, %186
  %188 = load i8, ptr %180, align 1, !tbaa !15
  %189 = zext i8 %188 to i64
  %190 = sub nsw i64 0, %189
  %191 = getelementptr inbounds i8, ptr %52, i64 %190
  %192 = load i8, ptr %191, align 1, !tbaa !15
  %193 = zext i8 %192 to i32
  %194 = add nuw nsw i32 %187, %193
  %195 = getelementptr inbounds i8, ptr %171, i64 4
  %196 = getelementptr inbounds i8, ptr %171, i64 5
  %197 = load i8, ptr %195, align 1, !tbaa !15
  %198 = zext i8 %197 to i64
  %199 = sub nsw i64 0, %198
  %200 = getelementptr inbounds i8, ptr %52, i64 %199
  %201 = load i8, ptr %200, align 1, !tbaa !15
  %202 = zext i8 %201 to i32
  %203 = add nuw nsw i32 %194, %202
  %204 = getelementptr inbounds i8, ptr %171, i64 6
  %205 = load i8, ptr %196, align 1, !tbaa !15
  %206 = zext i8 %205 to i64
  %207 = sub nsw i64 0, %206
  %208 = getelementptr inbounds i8, ptr %52, i64 %207
  %209 = load i8, ptr %208, align 1, !tbaa !15
  %210 = zext i8 %209 to i32
  %211 = add nuw nsw i32 %203, %210
  %212 = load i8, ptr %204, align 1, !tbaa !15
  %213 = zext i8 %212 to i64
  %214 = sub nsw i64 0, %213
  %215 = getelementptr inbounds i8, ptr %52, i64 %214
  %216 = load i8, ptr %215, align 1, !tbaa !15
  %217 = zext i8 %216 to i32
  %218 = add nuw nsw i32 %211, %217
  %219 = getelementptr inbounds i8, ptr %204, i64 %18
  %220 = getelementptr inbounds i8, ptr %219, i64 1
  %221 = load i8, ptr %219, align 1, !tbaa !15
  %222 = zext i8 %221 to i64
  %223 = sub nsw i64 0, %222
  %224 = getelementptr inbounds i8, ptr %52, i64 %223
  %225 = load i8, ptr %224, align 1, !tbaa !15
  %226 = zext i8 %225 to i32
  %227 = add nuw nsw i32 %218, %226
  %228 = getelementptr inbounds i8, ptr %219, i64 2
  %229 = load i8, ptr %220, align 1, !tbaa !15
  %230 = zext i8 %229 to i64
  %231 = sub nsw i64 0, %230
  %232 = getelementptr inbounds i8, ptr %52, i64 %231
  %233 = load i8, ptr %232, align 1, !tbaa !15
  %234 = zext i8 %233 to i32
  %235 = add nuw nsw i32 %227, %234
  %236 = getelementptr inbounds i8, ptr %219, i64 3
  %237 = load i8, ptr %228, align 1, !tbaa !15
  %238 = zext i8 %237 to i64
  %239 = sub nsw i64 0, %238
  %240 = getelementptr inbounds i8, ptr %52, i64 %239
  %241 = load i8, ptr %240, align 1, !tbaa !15
  %242 = zext i8 %241 to i32
  %243 = add nuw nsw i32 %235, %242
  %244 = getelementptr inbounds i8, ptr %219, i64 4
  %245 = load i8, ptr %236, align 1, !tbaa !15
  %246 = zext i8 %245 to i64
  %247 = sub nsw i64 0, %246
  %248 = getelementptr inbounds i8, ptr %52, i64 %247
  %249 = load i8, ptr %248, align 1, !tbaa !15
  %250 = zext i8 %249 to i32
  %251 = add nuw nsw i32 %243, %250
  %252 = getelementptr inbounds i8, ptr %219, i64 5
  %253 = load i8, ptr %244, align 1, !tbaa !15
  %254 = zext i8 %253 to i64
  %255 = sub nsw i64 0, %254
  %256 = getelementptr inbounds i8, ptr %52, i64 %255
  %257 = load i8, ptr %256, align 1, !tbaa !15
  %258 = zext i8 %257 to i32
  %259 = add nuw nsw i32 %251, %258
  %260 = getelementptr inbounds i8, ptr %219, i64 6
  %261 = load i8, ptr %252, align 1, !tbaa !15
  %262 = zext i8 %261 to i64
  %263 = sub nsw i64 0, %262
  %264 = getelementptr inbounds i8, ptr %52, i64 %263
  %265 = load i8, ptr %264, align 1, !tbaa !15
  %266 = zext i8 %265 to i32
  %267 = add nuw nsw i32 %259, %266
  %268 = load i8, ptr %260, align 1, !tbaa !15
  %269 = zext i8 %268 to i64
  %270 = sub nsw i64 0, %269
  %271 = getelementptr inbounds i8, ptr %52, i64 %270
  %272 = load i8, ptr %271, align 1, !tbaa !15
  %273 = zext i8 %272 to i32
  %274 = add nuw nsw i32 %267, %273
  %275 = getelementptr inbounds i8, ptr %260, i64 %16
  %276 = getelementptr inbounds i8, ptr %275, i64 1
  %277 = load i8, ptr %275, align 1, !tbaa !15
  %278 = zext i8 %277 to i64
  %279 = sub nsw i64 0, %278
  %280 = getelementptr inbounds i8, ptr %52, i64 %279
  %281 = load i8, ptr %280, align 1, !tbaa !15
  %282 = zext i8 %281 to i32
  %283 = add nuw nsw i32 %274, %282
  %284 = getelementptr inbounds i8, ptr %275, i64 2
  %285 = load i8, ptr %276, align 1, !tbaa !15
  %286 = zext i8 %285 to i64
  %287 = sub nsw i64 0, %286
  %288 = getelementptr inbounds i8, ptr %52, i64 %287
  %289 = load i8, ptr %288, align 1, !tbaa !15
  %290 = zext i8 %289 to i32
  %291 = add nuw nsw i32 %283, %290
  %292 = getelementptr inbounds i8, ptr %275, i64 3
  %293 = load i8, ptr %284, align 1, !tbaa !15
  %294 = zext i8 %293 to i64
  %295 = sub nsw i64 0, %294
  %296 = getelementptr inbounds i8, ptr %52, i64 %295
  %297 = load i8, ptr %296, align 1, !tbaa !15
  %298 = zext i8 %297 to i32
  %299 = add nuw nsw i32 %291, %298
  %300 = getelementptr inbounds i8, ptr %275, i64 4
  %301 = load i8, ptr %292, align 1, !tbaa !15
  %302 = zext i8 %301 to i64
  %303 = sub nsw i64 0, %302
  %304 = getelementptr inbounds i8, ptr %52, i64 %303
  %305 = load i8, ptr %304, align 1, !tbaa !15
  %306 = zext i8 %305 to i32
  %307 = add nuw nsw i32 %299, %306
  %308 = load i8, ptr %300, align 1, !tbaa !15
  %309 = zext i8 %308 to i64
  %310 = sub nsw i64 0, %309
  %311 = getelementptr inbounds i8, ptr %52, i64 %310
  %312 = load i8, ptr %311, align 1, !tbaa !15
  %313 = zext i8 %312 to i32
  %314 = add nuw nsw i32 %307, %313
  %315 = getelementptr inbounds i8, ptr %300, i64 %14
  %316 = getelementptr inbounds i8, ptr %315, i64 1
  %317 = load i8, ptr %315, align 1, !tbaa !15
  %318 = zext i8 %317 to i64
  %319 = sub nsw i64 0, %318
  %320 = getelementptr inbounds i8, ptr %52, i64 %319
  %321 = load i8, ptr %320, align 1, !tbaa !15
  %322 = zext i8 %321 to i32
  %323 = add nuw nsw i32 %314, %322
  %324 = getelementptr inbounds i8, ptr %315, i64 2
  %325 = load i8, ptr %316, align 1, !tbaa !15
  %326 = zext i8 %325 to i64
  %327 = sub nsw i64 0, %326
  %328 = getelementptr inbounds i8, ptr %52, i64 %327
  %329 = load i8, ptr %328, align 1, !tbaa !15
  %330 = zext i8 %329 to i32
  %331 = add nuw nsw i32 %323, %330
  %332 = load i8, ptr %324, align 1, !tbaa !15
  %333 = zext i8 %332 to i64
  %334 = sub nsw i64 0, %333
  %335 = getelementptr inbounds i8, ptr %52, i64 %334
  %336 = load i8, ptr %335, align 1, !tbaa !15
  %337 = zext i8 %336 to i32
  %338 = add nuw nsw i32 %331, %337
  %339 = icmp sgt i32 %338, %4
  br i1 %339, label %343, label %340

340:                                              ; preds = %44
  %341 = sub nsw i32 %4, %338
  %342 = getelementptr inbounds i32, ptr %1, i64 %48
  store i32 %341, ptr %342, align 4, !tbaa !11
  br label %343

343:                                              ; preds = %340, %44
  %344 = add nuw nsw i64 %45, 1
  %345 = icmp eq i64 %344, %21
  br i1 %345, label %346, label %44, !llvm.loop !42

346:                                              ; preds = %343, %22
  %347 = add nuw nsw i64 %23, 1
  %348 = icmp eq i64 %347, %20
  br i1 %348, label %29, label %22, !llvm.loop !43

349:                                              ; preds = %1155, %31
  %350 = phi i64 [ 4, %31 ], [ %1156, %1155 ]
  br i1 %34, label %351, label %1155

351:                                              ; preds = %349
  %352 = mul nsw i64 %350, %41
  %353 = add nsw i64 %350, -3
  %354 = mul nsw i64 %353, %41
  %355 = getelementptr inbounds i8, ptr %0, i64 %354
  %356 = trunc i64 %350 to i32
  %357 = trunc i64 %350 to i32
  br label %358

358:                                              ; preds = %1152, %351
  %359 = phi i64 [ 4, %351 ], [ %1153, %1152 ]
  %360 = add nsw i64 %359, %352
  %361 = getelementptr inbounds i32, ptr %1, i64 %360
  %362 = load i32, ptr %361, align 4, !tbaa !11
  %363 = icmp sgt i32 %362, 0
  br i1 %363, label %364, label %1152

364:                                              ; preds = %358
  %365 = sub nsw i32 %4, %362
  %366 = getelementptr inbounds i8, ptr %0, i64 %360
  %367 = load i8, ptr %366, align 1, !tbaa !15
  %368 = zext i8 %367 to i64
  %369 = getelementptr inbounds i8, ptr %3, i64 %368
  %370 = icmp sgt i32 %365, 600
  br i1 %370, label %371, label %753

371:                                              ; preds = %364
  %372 = getelementptr inbounds i8, ptr %355, i64 %359
  %373 = getelementptr inbounds i8, ptr %372, i64 -1
  %374 = load i8, ptr %373, align 1, !tbaa !15
  %375 = zext i8 %374 to i64
  %376 = sub nsw i64 0, %375
  %377 = getelementptr inbounds i8, ptr %369, i64 %376
  %378 = load i8, ptr %377, align 1, !tbaa !15
  %379 = zext i8 %378 to i32
  %380 = getelementptr inbounds i8, ptr %372, i64 1
  %381 = load i8, ptr %372, align 1, !tbaa !15
  %382 = zext i8 %381 to i64
  %383 = sub nsw i64 0, %382
  %384 = getelementptr inbounds i8, ptr %369, i64 %383
  %385 = load i8, ptr %384, align 1, !tbaa !15
  %386 = zext i8 %385 to i32
  %387 = add nuw nsw i32 %386, %379
  %388 = load i8, ptr %380, align 1, !tbaa !15
  %389 = zext i8 %388 to i64
  %390 = sub nsw i64 0, %389
  %391 = getelementptr inbounds i8, ptr %369, i64 %390
  %392 = load i8, ptr %391, align 1, !tbaa !15
  %393 = zext i8 %392 to i32
  %394 = add nuw nsw i32 %387, %393
  %395 = getelementptr inbounds i8, ptr %380, i64 %36
  %396 = getelementptr inbounds i8, ptr %395, i64 1
  %397 = load i8, ptr %395, align 1, !tbaa !15
  %398 = zext i8 %397 to i64
  %399 = sub nsw i64 0, %398
  %400 = getelementptr inbounds i8, ptr %369, i64 %399
  %401 = load i8, ptr %400, align 1, !tbaa !15
  %402 = zext i8 %401 to i32
  %403 = getelementptr inbounds i8, ptr %395, i64 2
  %404 = load i8, ptr %396, align 1, !tbaa !15
  %405 = zext i8 %404 to i64
  %406 = sub nsw i64 0, %405
  %407 = getelementptr inbounds i8, ptr %369, i64 %406
  %408 = load i8, ptr %407, align 1, !tbaa !15
  %409 = zext i8 %408 to i32
  %410 = add nuw nsw i32 %409, %402
  %411 = getelementptr inbounds i8, ptr %395, i64 3
  %412 = load i8, ptr %403, align 1, !tbaa !15
  %413 = zext i8 %412 to i64
  %414 = sub nsw i64 0, %413
  %415 = getelementptr inbounds i8, ptr %369, i64 %414
  %416 = load i8, ptr %415, align 1, !tbaa !15
  %417 = zext i8 %416 to i32
  %418 = add nuw nsw i32 %410, %417
  %419 = getelementptr inbounds i8, ptr %395, i64 4
  %420 = load i8, ptr %411, align 1, !tbaa !15
  %421 = zext i8 %420 to i64
  %422 = sub nsw i64 0, %421
  %423 = getelementptr inbounds i8, ptr %369, i64 %422
  %424 = load i8, ptr %423, align 1, !tbaa !15
  %425 = zext i8 %424 to i32
  %426 = add nuw nsw i32 %418, %425
  %427 = load i8, ptr %419, align 1, !tbaa !15
  %428 = zext i8 %427 to i64
  %429 = sub nsw i64 0, %428
  %430 = getelementptr inbounds i8, ptr %369, i64 %429
  %431 = load i8, ptr %430, align 1, !tbaa !15
  %432 = zext i8 %431 to i32
  %433 = add nuw nsw i32 %426, %432
  %434 = getelementptr inbounds i8, ptr %419, i64 %38
  %435 = getelementptr inbounds i8, ptr %434, i64 1
  %436 = load i8, ptr %434, align 1, !tbaa !15
  %437 = zext i8 %436 to i64
  %438 = sub nsw i64 0, %437
  %439 = getelementptr inbounds i8, ptr %369, i64 %438
  %440 = load i8, ptr %439, align 1, !tbaa !15
  %441 = zext i8 %440 to i32
  %442 = getelementptr inbounds i8, ptr %434, i64 2
  %443 = load i8, ptr %435, align 1, !tbaa !15
  %444 = zext i8 %443 to i64
  %445 = sub nsw i64 0, %444
  %446 = getelementptr inbounds i8, ptr %369, i64 %445
  %447 = load i8, ptr %446, align 1, !tbaa !15
  %448 = zext i8 %447 to i32
  %449 = getelementptr inbounds i8, ptr %434, i64 3
  %450 = load i8, ptr %442, align 1, !tbaa !15
  %451 = zext i8 %450 to i64
  %452 = sub nsw i64 0, %451
  %453 = getelementptr inbounds i8, ptr %369, i64 %452
  %454 = load i8, ptr %453, align 1, !tbaa !15
  %455 = zext i8 %454 to i32
  %456 = getelementptr inbounds i8, ptr %434, i64 4
  %457 = load i8, ptr %449, align 1, !tbaa !15
  %458 = zext i8 %457 to i64
  %459 = sub nsw i64 0, %458
  %460 = getelementptr inbounds i8, ptr %369, i64 %459
  %461 = load i8, ptr %460, align 1, !tbaa !15
  %462 = zext i8 %461 to i32
  %463 = getelementptr inbounds i8, ptr %434, i64 5
  %464 = load i8, ptr %456, align 1, !tbaa !15
  %465 = zext i8 %464 to i64
  %466 = sub nsw i64 0, %465
  %467 = getelementptr inbounds i8, ptr %369, i64 %466
  %468 = load i8, ptr %467, align 1, !tbaa !15
  %469 = zext i8 %468 to i32
  %470 = getelementptr inbounds i8, ptr %434, i64 6
  %471 = load i8, ptr %463, align 1, !tbaa !15
  %472 = zext i8 %471 to i64
  %473 = sub nsw i64 0, %472
  %474 = getelementptr inbounds i8, ptr %369, i64 %473
  %475 = load i8, ptr %474, align 1, !tbaa !15
  %476 = zext i8 %475 to i32
  %477 = load i8, ptr %470, align 1, !tbaa !15
  %478 = zext i8 %477 to i64
  %479 = sub nsw i64 0, %478
  %480 = getelementptr inbounds i8, ptr %369, i64 %479
  %481 = load i8, ptr %480, align 1, !tbaa !15
  %482 = zext i8 %481 to i32
  %483 = getelementptr inbounds i8, ptr %470, i64 %40
  %484 = getelementptr inbounds i8, ptr %483, i64 1
  %485 = load i8, ptr %483, align 1, !tbaa !15
  %486 = zext i8 %485 to i64
  %487 = sub nsw i64 0, %486
  %488 = getelementptr inbounds i8, ptr %369, i64 %487
  %489 = load i8, ptr %488, align 1, !tbaa !15
  %490 = zext i8 %489 to i32
  %491 = getelementptr inbounds i8, ptr %483, i64 2
  %492 = load i8, ptr %484, align 1, !tbaa !15
  %493 = zext i8 %492 to i64
  %494 = sub nsw i64 0, %493
  %495 = getelementptr inbounds i8, ptr %369, i64 %494
  %496 = load i8, ptr %495, align 1, !tbaa !15
  %497 = zext i8 %496 to i32
  %498 = load i8, ptr %491, align 1, !tbaa !15
  %499 = zext i8 %498 to i64
  %500 = sub nsw i64 0, %499
  %501 = getelementptr inbounds i8, ptr %369, i64 %500
  %502 = load i8, ptr %501, align 1, !tbaa !15
  %503 = zext i8 %502 to i32
  %504 = getelementptr inbounds i8, ptr %483, i64 4
  %505 = getelementptr inbounds i8, ptr %483, i64 5
  %506 = load i8, ptr %504, align 1, !tbaa !15
  %507 = zext i8 %506 to i64
  %508 = sub nsw i64 0, %507
  %509 = getelementptr inbounds i8, ptr %369, i64 %508
  %510 = load i8, ptr %509, align 1, !tbaa !15
  %511 = zext i8 %510 to i32
  %512 = getelementptr inbounds i8, ptr %483, i64 6
  %513 = load i8, ptr %505, align 1, !tbaa !15
  %514 = zext i8 %513 to i64
  %515 = sub nsw i64 0, %514
  %516 = getelementptr inbounds i8, ptr %369, i64 %515
  %517 = load i8, ptr %516, align 1, !tbaa !15
  %518 = zext i8 %517 to i32
  %519 = load i8, ptr %512, align 1, !tbaa !15
  %520 = zext i8 %519 to i64
  %521 = sub nsw i64 0, %520
  %522 = getelementptr inbounds i8, ptr %369, i64 %521
  %523 = load i8, ptr %522, align 1, !tbaa !15
  %524 = zext i8 %523 to i32
  %525 = getelementptr inbounds i8, ptr %512, i64 %40
  %526 = getelementptr inbounds i8, ptr %525, i64 1
  %527 = load i8, ptr %525, align 1, !tbaa !15
  %528 = zext i8 %527 to i64
  %529 = sub nsw i64 0, %528
  %530 = getelementptr inbounds i8, ptr %369, i64 %529
  %531 = load i8, ptr %530, align 1, !tbaa !15
  %532 = zext i8 %531 to i32
  %533 = getelementptr inbounds i8, ptr %525, i64 2
  %534 = load i8, ptr %526, align 1, !tbaa !15
  %535 = zext i8 %534 to i64
  %536 = sub nsw i64 0, %535
  %537 = getelementptr inbounds i8, ptr %369, i64 %536
  %538 = load i8, ptr %537, align 1, !tbaa !15
  %539 = zext i8 %538 to i32
  %540 = getelementptr inbounds i8, ptr %525, i64 3
  %541 = load i8, ptr %533, align 1, !tbaa !15
  %542 = zext i8 %541 to i64
  %543 = sub nsw i64 0, %542
  %544 = getelementptr inbounds i8, ptr %369, i64 %543
  %545 = load i8, ptr %544, align 1, !tbaa !15
  %546 = zext i8 %545 to i32
  %547 = getelementptr inbounds i8, ptr %525, i64 4
  %548 = load i8, ptr %540, align 1, !tbaa !15
  %549 = zext i8 %548 to i64
  %550 = sub nsw i64 0, %549
  %551 = getelementptr inbounds i8, ptr %369, i64 %550
  %552 = load i8, ptr %551, align 1, !tbaa !15
  %553 = zext i8 %552 to i32
  %554 = getelementptr inbounds i8, ptr %525, i64 5
  %555 = load i8, ptr %547, align 1, !tbaa !15
  %556 = zext i8 %555 to i64
  %557 = sub nsw i64 0, %556
  %558 = getelementptr inbounds i8, ptr %369, i64 %557
  %559 = load i8, ptr %558, align 1, !tbaa !15
  %560 = zext i8 %559 to i32
  %561 = getelementptr inbounds i8, ptr %525, i64 6
  %562 = load i8, ptr %554, align 1, !tbaa !15
  %563 = zext i8 %562 to i64
  %564 = sub nsw i64 0, %563
  %565 = getelementptr inbounds i8, ptr %369, i64 %564
  %566 = load i8, ptr %565, align 1, !tbaa !15
  %567 = zext i8 %566 to i32
  %568 = load i8, ptr %561, align 1, !tbaa !15
  %569 = zext i8 %568 to i64
  %570 = sub nsw i64 0, %569
  %571 = getelementptr inbounds i8, ptr %369, i64 %570
  %572 = load i8, ptr %571, align 1, !tbaa !15
  %573 = zext i8 %572 to i32
  %574 = getelementptr inbounds i8, ptr %561, i64 %38
  %575 = getelementptr inbounds i8, ptr %574, i64 1
  %576 = load i8, ptr %574, align 1, !tbaa !15
  %577 = zext i8 %576 to i64
  %578 = sub nsw i64 0, %577
  %579 = getelementptr inbounds i8, ptr %369, i64 %578
  %580 = load i8, ptr %579, align 1, !tbaa !15
  %581 = zext i8 %580 to i32
  %582 = shl nuw nsw i32 %581, 1
  %583 = getelementptr inbounds i8, ptr %574, i64 2
  %584 = load i8, ptr %575, align 1, !tbaa !15
  %585 = zext i8 %584 to i64
  %586 = sub nsw i64 0, %585
  %587 = getelementptr inbounds i8, ptr %369, i64 %586
  %588 = load i8, ptr %587, align 1, !tbaa !15
  %589 = zext i8 %588 to i32
  %590 = getelementptr inbounds i8, ptr %574, i64 3
  %591 = load i8, ptr %583, align 1, !tbaa !15
  %592 = zext i8 %591 to i64
  %593 = sub nsw i64 0, %592
  %594 = getelementptr inbounds i8, ptr %369, i64 %593
  %595 = load i8, ptr %594, align 1, !tbaa !15
  %596 = zext i8 %595 to i32
  %597 = getelementptr inbounds i8, ptr %574, i64 4
  %598 = load i8, ptr %590, align 1, !tbaa !15
  %599 = zext i8 %598 to i64
  %600 = sub nsw i64 0, %599
  %601 = getelementptr inbounds i8, ptr %369, i64 %600
  %602 = load i8, ptr %601, align 1, !tbaa !15
  %603 = zext i8 %602 to i32
  %604 = load i8, ptr %597, align 1, !tbaa !15
  %605 = zext i8 %604 to i64
  %606 = sub nsw i64 0, %605
  %607 = getelementptr inbounds i8, ptr %369, i64 %606
  %608 = load i8, ptr %607, align 1, !tbaa !15
  %609 = zext i8 %608 to i32
  %610 = shl nuw nsw i32 %609, 1
  %611 = getelementptr inbounds i8, ptr %597, i64 %36
  %612 = getelementptr inbounds i8, ptr %611, i64 1
  %613 = load i8, ptr %611, align 1, !tbaa !15
  %614 = zext i8 %613 to i64
  %615 = sub nsw i64 0, %614
  %616 = getelementptr inbounds i8, ptr %369, i64 %615
  %617 = load i8, ptr %616, align 1, !tbaa !15
  %618 = zext i8 %617 to i32
  %619 = getelementptr inbounds i8, ptr %611, i64 2
  %620 = load i8, ptr %612, align 1, !tbaa !15
  %621 = zext i8 %620 to i64
  %622 = sub nsw i64 0, %621
  %623 = getelementptr inbounds i8, ptr %369, i64 %622
  %624 = load i8, ptr %623, align 1, !tbaa !15
  %625 = zext i8 %624 to i32
  %626 = load i8, ptr %619, align 1, !tbaa !15
  %627 = zext i8 %626 to i64
  %628 = sub nsw i64 0, %627
  %629 = getelementptr inbounds i8, ptr %369, i64 %628
  %630 = load i8, ptr %629, align 1, !tbaa !15
  %631 = zext i8 %630 to i32
  %632 = add nuw nsw i32 %441, %490
  %633 = add nuw nsw i32 %482, %524
  %634 = add nuw nsw i32 %632, %532
  %635 = sub nsw i32 %633, %634
  %636 = add nsw i32 %635, %573
  %637 = mul nsw i32 %636, 3
  %638 = add nuw nsw i32 %402, %448
  %639 = add nuw nsw i32 %432, %476
  %640 = add nuw nsw i32 %638, %497
  %641 = add nuw nsw i32 %639, %518
  %642 = add nuw nsw i32 %640, %539
  %643 = sub nsw i32 %641, %642
  %644 = add nsw i32 %643, %567
  %645 = shl nsw i32 %644, 1
  %646 = add nuw nsw i32 %379, %409
  %647 = add nuw nsw i32 %393, %425
  %648 = add nuw nsw i32 %646, %455
  %649 = add nuw nsw i32 %647, %469
  %650 = add nuw nsw i32 %648, %503
  %651 = add nuw nsw i32 %649, %511
  %652 = add nuw nsw i32 %650, %546
  %653 = add nuw nsw i32 %651, %560
  %654 = add nuw nsw i32 %652, %582
  %655 = add nuw nsw i32 %654, %589
  %656 = sub nsw i32 %653, %655
  %657 = add nsw i32 %656, %637
  %658 = add i32 %657, %645
  %659 = add i32 %658, %603
  %660 = add i32 %659, %610
  %661 = sub i32 %660, %618
  %662 = add i32 %661, %631
  %663 = sub nsw i32 %618, %394
  %664 = add nsw i32 %663, %625
  %665 = add nsw i32 %664, %631
  %666 = mul nsw i32 %665, 3
  %667 = sub nsw i32 %589, %433
  %668 = add nsw i32 %667, %596
  %669 = add nsw i32 %668, %603
  %670 = shl nsw i32 %669, 1
  %671 = add nuw nsw i32 %448, %441
  %672 = add nuw nsw i32 %671, %455
  %673 = add nuw nsw i32 %672, %462
  %674 = add nuw nsw i32 %673, %469
  %675 = add nuw nsw i32 %674, %476
  %676 = add nuw nsw i32 %675, %482
  %677 = sub nsw i32 %532, %676
  %678 = add nsw i32 %677, %539
  %679 = add nsw i32 %678, %546
  %680 = add nsw i32 %679, %553
  %681 = add nsw i32 %680, %560
  %682 = add nsw i32 %681, %567
  %683 = add nsw i32 %682, %573
  %684 = add nsw i32 %683, %582
  %685 = add nsw i32 %684, %610
  %686 = add i32 %685, %670
  %687 = add i32 %686, %666
  %688 = mul nsw i32 %662, %662
  %689 = mul nsw i32 %687, %687
  %690 = add nuw nsw i32 %689, %688
  %691 = sitofp i32 %690 to float
  %692 = tail call float @sqrtf(float noundef %691) #10
  %693 = fpext float %692 to double
  %694 = sitofp i32 %365 to float
  %695 = fpext float %694 to double
  %696 = fmul double %695, 9.000000e-01
  %697 = fcmp olt double %696, %693
  br i1 %697, label %698, label %753

698:                                              ; preds = %371
  %699 = icmp eq i32 %662, 0
  %700 = sitofp i32 %687 to float
  %701 = sitofp i32 %662 to float
  %702 = fdiv float %700, %701
  %703 = select i1 %699, float 1.000000e+06, float %702
  %704 = fcmp uge float %703, 0.000000e+00
  %705 = fneg float %703
  %706 = select i1 %704, float %703, float %705
  %707 = fcmp olt float %706, 5.000000e-01
  br i1 %707, label %712, label %708

708:                                              ; preds = %698
  %709 = fcmp ogt float %706, 2.000000e+00
  br i1 %709, label %712, label %710

710:                                              ; preds = %708
  %711 = select i1 %704, i32 1, i32 -1
  br label %712

712:                                              ; preds = %710, %708, %698
  %713 = phi i32 [ 0, %698 ], [ 1, %708 ], [ %711, %710 ]
  %714 = phi i32 [ 1, %698 ], [ 0, %708 ], [ 1, %710 ]
  %715 = add nsw i32 %713, %357
  %716 = mul nsw i32 %715, %5
  %717 = trunc i64 %359 to i32
  %718 = add nuw nsw i32 %714, %717
  %719 = add i32 %718, %716
  %720 = sext i32 %719 to i64
  %721 = getelementptr inbounds i32, ptr %1, i64 %720
  %722 = load i32, ptr %721, align 4, !tbaa !11
  %723 = icmp sgt i32 %362, %722
  br i1 %723, label %724, label %1152

724:                                              ; preds = %712
  %725 = sub nsw i32 %357, %713
  %726 = mul nsw i32 %725, %5
  %727 = sub nsw i32 %717, %714
  %728 = add i32 %727, %726
  %729 = sext i32 %728 to i64
  %730 = getelementptr inbounds i32, ptr %1, i64 %729
  %731 = load i32, ptr %730, align 4, !tbaa !11
  %732 = icmp slt i32 %362, %731
  br i1 %732, label %1152, label %733

733:                                              ; preds = %724
  %734 = shl nsw i32 %713, 1
  %735 = add nsw i32 %734, %357
  %736 = mul nsw i32 %735, %5
  %737 = shl nuw nsw i32 %714, 1
  %738 = add nuw i32 %737, %717
  %739 = add i32 %738, %736
  %740 = sext i32 %739 to i64
  %741 = getelementptr inbounds i32, ptr %1, i64 %740
  %742 = load i32, ptr %741, align 4, !tbaa !11
  %743 = icmp sgt i32 %362, %742
  br i1 %743, label %744, label %1152

744:                                              ; preds = %733
  %745 = sub nsw i32 %357, %734
  %746 = mul nsw i32 %745, %5
  %747 = sub nsw i32 %717, %737
  %748 = add i32 %747, %746
  %749 = sext i32 %748 to i64
  %750 = getelementptr inbounds i32, ptr %1, i64 %749
  %751 = load i32, ptr %750, align 4, !tbaa !11
  %752 = icmp slt i32 %362, %751
  br i1 %752, label %1152, label %1149

753:                                              ; preds = %371, %364
  %754 = getelementptr inbounds i8, ptr %355, i64 %359
  %755 = getelementptr inbounds i8, ptr %754, i64 -1
  %756 = load i8, ptr %755, align 1, !tbaa !15
  %757 = zext i8 %756 to i64
  %758 = sub nsw i64 0, %757
  %759 = getelementptr inbounds i8, ptr %369, i64 %758
  %760 = load i8, ptr %759, align 1, !tbaa !15
  %761 = zext i8 %760 to i32
  %762 = getelementptr inbounds i8, ptr %754, i64 1
  %763 = load i8, ptr %754, align 1, !tbaa !15
  %764 = zext i8 %763 to i64
  %765 = sub nsw i64 0, %764
  %766 = getelementptr inbounds i8, ptr %369, i64 %765
  %767 = load i8, ptr %766, align 1, !tbaa !15
  %768 = zext i8 %767 to i32
  %769 = load i8, ptr %762, align 1, !tbaa !15
  %770 = zext i8 %769 to i64
  %771 = sub nsw i64 0, %770
  %772 = getelementptr inbounds i8, ptr %369, i64 %771
  %773 = load i8, ptr %772, align 1, !tbaa !15
  %774 = zext i8 %773 to i32
  %775 = getelementptr inbounds i8, ptr %762, i64 %36
  %776 = getelementptr inbounds i8, ptr %775, i64 1
  %777 = load i8, ptr %775, align 1, !tbaa !15
  %778 = zext i8 %777 to i64
  %779 = sub nsw i64 0, %778
  %780 = getelementptr inbounds i8, ptr %369, i64 %779
  %781 = load i8, ptr %780, align 1, !tbaa !15
  %782 = zext i8 %781 to i32
  %783 = shl nuw nsw i32 %782, 2
  %784 = getelementptr inbounds i8, ptr %775, i64 2
  %785 = load i8, ptr %776, align 1, !tbaa !15
  %786 = zext i8 %785 to i64
  %787 = sub nsw i64 0, %786
  %788 = getelementptr inbounds i8, ptr %369, i64 %787
  %789 = load i8, ptr %788, align 1, !tbaa !15
  %790 = zext i8 %789 to i32
  %791 = getelementptr inbounds i8, ptr %775, i64 3
  %792 = load i8, ptr %784, align 1, !tbaa !15
  %793 = zext i8 %792 to i64
  %794 = sub nsw i64 0, %793
  %795 = getelementptr inbounds i8, ptr %369, i64 %794
  %796 = load i8, ptr %795, align 1, !tbaa !15
  %797 = zext i8 %796 to i32
  %798 = getelementptr inbounds i8, ptr %775, i64 4
  %799 = load i8, ptr %791, align 1, !tbaa !15
  %800 = zext i8 %799 to i64
  %801 = sub nsw i64 0, %800
  %802 = getelementptr inbounds i8, ptr %369, i64 %801
  %803 = load i8, ptr %802, align 1, !tbaa !15
  %804 = zext i8 %803 to i32
  %805 = load i8, ptr %798, align 1, !tbaa !15
  %806 = zext i8 %805 to i64
  %807 = sub nsw i64 0, %806
  %808 = getelementptr inbounds i8, ptr %369, i64 %807
  %809 = load i8, ptr %808, align 1, !tbaa !15
  %810 = zext i8 %809 to i32
  %811 = shl nuw nsw i32 %810, 2
  %812 = getelementptr inbounds i8, ptr %798, i64 %38
  %813 = getelementptr inbounds i8, ptr %812, i64 1
  %814 = load i8, ptr %812, align 1, !tbaa !15
  %815 = zext i8 %814 to i64
  %816 = sub nsw i64 0, %815
  %817 = getelementptr inbounds i8, ptr %369, i64 %816
  %818 = load i8, ptr %817, align 1, !tbaa !15
  %819 = zext i8 %818 to i32
  %820 = getelementptr inbounds i8, ptr %812, i64 2
  %821 = load i8, ptr %813, align 1, !tbaa !15
  %822 = zext i8 %821 to i64
  %823 = sub nsw i64 0, %822
  %824 = getelementptr inbounds i8, ptr %369, i64 %823
  %825 = load i8, ptr %824, align 1, !tbaa !15
  %826 = zext i8 %825 to i32
  %827 = getelementptr inbounds i8, ptr %812, i64 3
  %828 = load i8, ptr %820, align 1, !tbaa !15
  %829 = zext i8 %828 to i64
  %830 = sub nsw i64 0, %829
  %831 = getelementptr inbounds i8, ptr %369, i64 %830
  %832 = load i8, ptr %831, align 1, !tbaa !15
  %833 = zext i8 %832 to i32
  %834 = getelementptr inbounds i8, ptr %812, i64 4
  %835 = load i8, ptr %827, align 1, !tbaa !15
  %836 = zext i8 %835 to i64
  %837 = sub nsw i64 0, %836
  %838 = getelementptr inbounds i8, ptr %369, i64 %837
  %839 = load i8, ptr %838, align 1, !tbaa !15
  %840 = zext i8 %839 to i32
  %841 = getelementptr inbounds i8, ptr %812, i64 5
  %842 = load i8, ptr %834, align 1, !tbaa !15
  %843 = zext i8 %842 to i64
  %844 = sub nsw i64 0, %843
  %845 = getelementptr inbounds i8, ptr %369, i64 %844
  %846 = load i8, ptr %845, align 1, !tbaa !15
  %847 = zext i8 %846 to i32
  %848 = getelementptr inbounds i8, ptr %812, i64 6
  %849 = load i8, ptr %841, align 1, !tbaa !15
  %850 = zext i8 %849 to i64
  %851 = sub nsw i64 0, %850
  %852 = getelementptr inbounds i8, ptr %369, i64 %851
  %853 = load i8, ptr %852, align 1, !tbaa !15
  %854 = zext i8 %853 to i32
  %855 = load i8, ptr %848, align 1, !tbaa !15
  %856 = zext i8 %855 to i64
  %857 = sub nsw i64 0, %856
  %858 = getelementptr inbounds i8, ptr %369, i64 %857
  %859 = load i8, ptr %858, align 1, !tbaa !15
  %860 = zext i8 %859 to i32
  %861 = getelementptr inbounds i8, ptr %848, i64 %40
  %862 = getelementptr inbounds i8, ptr %861, i64 6
  %863 = getelementptr inbounds i8, ptr %862, i64 %40
  %864 = getelementptr inbounds i8, ptr %863, i64 1
  %865 = load i8, ptr %863, align 1, !tbaa !15
  %866 = zext i8 %865 to i64
  %867 = sub nsw i64 0, %866
  %868 = getelementptr inbounds i8, ptr %369, i64 %867
  %869 = load i8, ptr %868, align 1, !tbaa !15
  %870 = zext i8 %869 to i32
  %871 = getelementptr inbounds i8, ptr %863, i64 2
  %872 = load i8, ptr %864, align 1, !tbaa !15
  %873 = zext i8 %872 to i64
  %874 = sub nsw i64 0, %873
  %875 = getelementptr inbounds i8, ptr %369, i64 %874
  %876 = load i8, ptr %875, align 1, !tbaa !15
  %877 = zext i8 %876 to i32
  %878 = getelementptr inbounds i8, ptr %863, i64 3
  %879 = load i8, ptr %871, align 1, !tbaa !15
  %880 = zext i8 %879 to i64
  %881 = sub nsw i64 0, %880
  %882 = getelementptr inbounds i8, ptr %369, i64 %881
  %883 = load i8, ptr %882, align 1, !tbaa !15
  %884 = zext i8 %883 to i32
  %885 = getelementptr inbounds i8, ptr %863, i64 4
  %886 = load i8, ptr %878, align 1, !tbaa !15
  %887 = zext i8 %886 to i64
  %888 = sub nsw i64 0, %887
  %889 = getelementptr inbounds i8, ptr %369, i64 %888
  %890 = load i8, ptr %889, align 1, !tbaa !15
  %891 = zext i8 %890 to i32
  %892 = getelementptr inbounds i8, ptr %863, i64 5
  %893 = load i8, ptr %885, align 1, !tbaa !15
  %894 = zext i8 %893 to i64
  %895 = sub nsw i64 0, %894
  %896 = getelementptr inbounds i8, ptr %369, i64 %895
  %897 = load i8, ptr %896, align 1, !tbaa !15
  %898 = zext i8 %897 to i32
  %899 = getelementptr inbounds i8, ptr %863, i64 6
  %900 = load i8, ptr %892, align 1, !tbaa !15
  %901 = zext i8 %900 to i64
  %902 = sub nsw i64 0, %901
  %903 = getelementptr inbounds i8, ptr %369, i64 %902
  %904 = load i8, ptr %903, align 1, !tbaa !15
  %905 = zext i8 %904 to i32
  %906 = load i8, ptr %899, align 1, !tbaa !15
  %907 = zext i8 %906 to i64
  %908 = sub nsw i64 0, %907
  %909 = getelementptr inbounds i8, ptr %369, i64 %908
  %910 = load i8, ptr %909, align 1, !tbaa !15
  %911 = zext i8 %910 to i32
  %912 = getelementptr inbounds i8, ptr %899, i64 %38
  %913 = getelementptr inbounds i8, ptr %912, i64 1
  %914 = load i8, ptr %912, align 1, !tbaa !15
  %915 = zext i8 %914 to i64
  %916 = sub nsw i64 0, %915
  %917 = getelementptr inbounds i8, ptr %369, i64 %916
  %918 = load i8, ptr %917, align 1, !tbaa !15
  %919 = zext i8 %918 to i32
  %920 = shl nuw nsw i32 %919, 2
  %921 = getelementptr inbounds i8, ptr %912, i64 2
  %922 = load i8, ptr %913, align 1, !tbaa !15
  %923 = zext i8 %922 to i64
  %924 = sub nsw i64 0, %923
  %925 = getelementptr inbounds i8, ptr %369, i64 %924
  %926 = load i8, ptr %925, align 1, !tbaa !15
  %927 = zext i8 %926 to i32
  %928 = getelementptr inbounds i8, ptr %912, i64 3
  %929 = load i8, ptr %921, align 1, !tbaa !15
  %930 = zext i8 %929 to i64
  %931 = sub nsw i64 0, %930
  %932 = getelementptr inbounds i8, ptr %369, i64 %931
  %933 = load i8, ptr %932, align 1, !tbaa !15
  %934 = zext i8 %933 to i32
  %935 = getelementptr inbounds i8, ptr %912, i64 4
  %936 = load i8, ptr %928, align 1, !tbaa !15
  %937 = zext i8 %936 to i64
  %938 = sub nsw i64 0, %937
  %939 = getelementptr inbounds i8, ptr %369, i64 %938
  %940 = load i8, ptr %939, align 1, !tbaa !15
  %941 = zext i8 %940 to i32
  %942 = load i8, ptr %935, align 1, !tbaa !15
  %943 = zext i8 %942 to i64
  %944 = sub nsw i64 0, %943
  %945 = getelementptr inbounds i8, ptr %369, i64 %944
  %946 = load i8, ptr %945, align 1, !tbaa !15
  %947 = zext i8 %946 to i32
  %948 = shl nuw nsw i32 %947, 2
  %949 = getelementptr inbounds i8, ptr %935, i64 %36
  %950 = getelementptr inbounds i8, ptr %949, i64 1
  %951 = load i8, ptr %949, align 1, !tbaa !15
  %952 = zext i8 %951 to i64
  %953 = sub nsw i64 0, %952
  %954 = getelementptr inbounds i8, ptr %369, i64 %953
  %955 = load i8, ptr %954, align 1, !tbaa !15
  %956 = zext i8 %955 to i32
  %957 = getelementptr inbounds i8, ptr %949, i64 2
  %958 = load i8, ptr %950, align 1, !tbaa !15
  %959 = zext i8 %958 to i64
  %960 = sub nsw i64 0, %959
  %961 = getelementptr inbounds i8, ptr %369, i64 %960
  %962 = load i8, ptr %961, align 1, !tbaa !15
  %963 = zext i8 %962 to i32
  %964 = load i8, ptr %957, align 1, !tbaa !15
  %965 = zext i8 %964 to i64
  %966 = sub nsw i64 0, %965
  %967 = getelementptr inbounds i8, ptr %369, i64 %966
  %968 = load i8, ptr %967, align 1, !tbaa !15
  %969 = zext i8 %968 to i32
  %970 = add nuw nsw i32 %797, %790
  %971 = add nuw nsw i32 %970, %804
  %972 = add nuw nsw i32 %971, %927
  %973 = add nuw nsw i32 %972, %934
  %974 = add nuw nsw i32 %973, %941
  %975 = shl nuw nsw i32 %974, 2
  %976 = add nuw nsw i32 %768, %761
  %977 = add nuw nsw i32 %976, %774
  %978 = add nuw nsw i32 %977, %956
  %979 = add nuw nsw i32 %978, %963
  %980 = add nuw nsw i32 %979, %969
  %981 = mul nuw nsw i32 %980, 9
  %982 = add nuw nsw i32 %811, %783
  %983 = add nuw nsw i32 %982, %819
  %984 = add nuw nsw i32 %983, %826
  %985 = add nuw nsw i32 %984, %833
  %986 = add nuw nsw i32 %985, %840
  %987 = add nuw nsw i32 %986, %847
  %988 = add nuw nsw i32 %987, %854
  %989 = add nuw nsw i32 %988, %860
  %990 = add nuw nsw i32 %989, %870
  %991 = add nuw nsw i32 %990, %877
  %992 = add nuw nsw i32 %991, %884
  %993 = add nuw nsw i32 %992, %891
  %994 = add nuw nsw i32 %993, %898
  %995 = add nuw nsw i32 %994, %905
  %996 = add nuw nsw i32 %995, %911
  %997 = add nuw nsw i32 %996, %920
  %998 = add nuw nsw i32 %997, %948
  %999 = add nuw nsw i32 %998, %975
  %1000 = add nuw nsw i32 %999, %981
  %1001 = add nuw nsw i32 %761, %819
  %1002 = add nuw nsw i32 %774, %860
  %1003 = add nuw nsw i32 %1002, %870
  %1004 = add nuw nsw i32 %1001, %911
  %1005 = add nuw nsw i32 %1003, %956
  %1006 = sub nsw i32 %1004, %1005
  %1007 = add nsw i32 %1006, %969
  %1008 = mul nsw i32 %1007, 3
  %1009 = add nuw nsw i32 %790, %826
  %1010 = add nuw nsw i32 %804, %854
  %1011 = add nuw nsw i32 %1010, %877
  %1012 = add nuw nsw i32 %1009, %905
  %1013 = add nuw nsw i32 %1011, %927
  %1014 = sub nsw i32 %1012, %1013
  %1015 = add nsw i32 %1014, %941
  %1016 = shl nsw i32 %1015, 1
  %1017 = add nuw nsw i32 %783, %833
  %1018 = add nuw nsw i32 %811, %847
  %1019 = add nuw nsw i32 %1018, %884
  %1020 = add nuw nsw i32 %1017, %898
  %1021 = add nuw nsw i32 %1019, %920
  %1022 = sub nsw i32 %1020, %1021
  %1023 = add nsw i32 %1022, %948
  %1024 = add i32 %1023, %1016
  %1025 = add i32 %1024, %1008
  %1026 = icmp eq i32 %1000, 0
  br i1 %1026, label %1108, label %1027

1027:                                             ; preds = %753
  %1028 = load i8, ptr %861, align 1, !tbaa !15
  %1029 = zext i8 %1028 to i64
  %1030 = sub nsw i64 0, %1029
  %1031 = getelementptr inbounds i8, ptr %369, i64 %1030
  %1032 = load i8, ptr %1031, align 1, !tbaa !15
  %1033 = zext i8 %1032 to i32
  %1034 = getelementptr inbounds i8, ptr %861, i64 1
  %1035 = load i8, ptr %1034, align 1, !tbaa !15
  %1036 = zext i8 %1035 to i64
  %1037 = sub nsw i64 0, %1036
  %1038 = getelementptr inbounds i8, ptr %369, i64 %1037
  %1039 = load i8, ptr %1038, align 1, !tbaa !15
  %1040 = zext i8 %1039 to i32
  %1041 = getelementptr inbounds i8, ptr %861, i64 2
  %1042 = load i8, ptr %1041, align 1, !tbaa !15
  %1043 = zext i8 %1042 to i64
  %1044 = sub nsw i64 0, %1043
  %1045 = getelementptr inbounds i8, ptr %369, i64 %1044
  %1046 = load i8, ptr %1045, align 1, !tbaa !15
  %1047 = zext i8 %1046 to i32
  %1048 = getelementptr inbounds i8, ptr %861, i64 4
  %1049 = load i8, ptr %1048, align 1, !tbaa !15
  %1050 = zext i8 %1049 to i64
  %1051 = sub nsw i64 0, %1050
  %1052 = getelementptr inbounds i8, ptr %369, i64 %1051
  %1053 = load i8, ptr %1052, align 1, !tbaa !15
  %1054 = zext i8 %1053 to i32
  %1055 = getelementptr inbounds i8, ptr %861, i64 5
  %1056 = load i8, ptr %1055, align 1, !tbaa !15
  %1057 = zext i8 %1056 to i64
  %1058 = sub nsw i64 0, %1057
  %1059 = getelementptr inbounds i8, ptr %369, i64 %1058
  %1060 = load i8, ptr %1059, align 1, !tbaa !15
  %1061 = zext i8 %1060 to i32
  %1062 = load i8, ptr %862, align 1, !tbaa !15
  %1063 = zext i8 %1062 to i64
  %1064 = sub nsw i64 0, %1063
  %1065 = getelementptr inbounds i8, ptr %369, i64 %1064
  %1066 = load i8, ptr %1065, align 1, !tbaa !15
  %1067 = zext i8 %1066 to i32
  %1068 = add nuw nsw i32 %854, %826
  %1069 = add nuw nsw i32 %1068, %877
  %1070 = add nuw nsw i32 %1069, %905
  %1071 = add nuw nsw i32 %1070, %1040
  %1072 = add nuw nsw i32 %1071, %1061
  %1073 = shl nuw nsw i32 %1072, 2
  %1074 = add nuw nsw i32 %860, %819
  %1075 = add nuw nsw i32 %1074, %870
  %1076 = add nuw nsw i32 %1075, %911
  %1077 = add nuw nsw i32 %1076, %1033
  %1078 = add nuw nsw i32 %1077, %1067
  %1079 = mul nuw nsw i32 %1078, 9
  %1080 = add nuw nsw i32 %774, %761
  %1081 = add nuw nsw i32 %1080, %783
  %1082 = add nuw nsw i32 %1081, %790
  %1083 = add nuw nsw i32 %1082, %804
  %1084 = add nuw nsw i32 %1083, %811
  %1085 = add nuw nsw i32 %1084, %833
  %1086 = add nuw nsw i32 %1085, %847
  %1087 = add nuw nsw i32 %1086, %884
  %1088 = add nuw nsw i32 %1087, %898
  %1089 = add nuw nsw i32 %1088, %920
  %1090 = add nuw nsw i32 %1089, %927
  %1091 = add nuw nsw i32 %1090, %941
  %1092 = add nuw nsw i32 %1091, %948
  %1093 = add nuw nsw i32 %1092, %956
  %1094 = add nuw nsw i32 %1093, %969
  %1095 = add nuw nsw i32 %1094, %1047
  %1096 = add nuw nsw i32 %1095, %1054
  %1097 = add nuw nsw i32 %1096, %1073
  %1098 = add nuw nsw i32 %1097, %1079
  %1099 = sitofp i32 %1098 to float
  %1100 = sitofp i32 %1000 to float
  %1101 = fdiv float %1099, %1100
  %1102 = fcmp olt float %1101, 5.000000e-01
  br i1 %1102, label %1108, label %1103

1103:                                             ; preds = %1027
  %1104 = fcmp ogt float %1101, 2.000000e+00
  br i1 %1104, label %1108, label %1105

1105:                                             ; preds = %1103
  %1106 = icmp slt i32 %1025, 1
  %1107 = select i1 %1106, i32 1, i32 -1
  br label %1108

1108:                                             ; preds = %1105, %1103, %1027, %753
  %1109 = phi i32 [ 0, %1027 ], [ 1, %1103 ], [ %1107, %1105 ], [ 1, %753 ]
  %1110 = phi i32 [ 1, %1027 ], [ 0, %1103 ], [ 1, %1105 ], [ 0, %753 ]
  %1111 = add nsw i32 %1109, %356
  %1112 = mul nsw i32 %1111, %5
  %1113 = trunc i64 %359 to i32
  %1114 = add nuw nsw i32 %1110, %1113
  %1115 = add i32 %1114, %1112
  %1116 = sext i32 %1115 to i64
  %1117 = getelementptr inbounds i32, ptr %1, i64 %1116
  %1118 = load i32, ptr %1117, align 4, !tbaa !11
  %1119 = icmp sgt i32 %362, %1118
  br i1 %1119, label %1120, label %1152

1120:                                             ; preds = %1108
  %1121 = sub nsw i32 %356, %1109
  %1122 = mul nsw i32 %1121, %5
  %1123 = sub nsw i32 %1113, %1110
  %1124 = add i32 %1123, %1122
  %1125 = sext i32 %1124 to i64
  %1126 = getelementptr inbounds i32, ptr %1, i64 %1125
  %1127 = load i32, ptr %1126, align 4, !tbaa !11
  %1128 = icmp slt i32 %362, %1127
  br i1 %1128, label %1152, label %1129

1129:                                             ; preds = %1120
  %1130 = shl nsw i32 %1109, 1
  %1131 = add nsw i32 %1130, %356
  %1132 = mul nsw i32 %1131, %5
  %1133 = shl nuw nsw i32 %1110, 1
  %1134 = add nuw i32 %1133, %1113
  %1135 = add i32 %1134, %1132
  %1136 = sext i32 %1135 to i64
  %1137 = getelementptr inbounds i32, ptr %1, i64 %1136
  %1138 = load i32, ptr %1137, align 4, !tbaa !11
  %1139 = icmp sgt i32 %362, %1138
  br i1 %1139, label %1140, label %1152

1140:                                             ; preds = %1129
  %1141 = sub nsw i32 %356, %1130
  %1142 = mul nsw i32 %1141, %5
  %1143 = sub nsw i32 %1113, %1133
  %1144 = add i32 %1143, %1142
  %1145 = sext i32 %1144 to i64
  %1146 = getelementptr inbounds i32, ptr %1, i64 %1145
  %1147 = load i32, ptr %1146, align 4, !tbaa !11
  %1148 = icmp slt i32 %362, %1147
  br i1 %1148, label %1152, label %1149

1149:                                             ; preds = %1140, %744
  %1150 = phi i8 [ 1, %744 ], [ 2, %1140 ]
  %1151 = getelementptr inbounds i8, ptr %2, i64 %360
  store i8 %1150, ptr %1151, align 1, !tbaa !15
  br label %1152

1152:                                             ; preds = %1149, %1140, %1129, %1120, %1108, %744, %733, %724, %712, %358
  %1153 = add nuw nsw i64 %359, 1
  %1154 = icmp eq i64 %1153, %43
  br i1 %1154, label %1155, label %358, !llvm.loop !44

1155:                                             ; preds = %1152, %349
  %1156 = add nuw nsw i64 %350, 1
  %1157 = icmp eq i64 %1156, %42
  br i1 %1157, label %1158, label %349, !llvm.loop !45

1158:                                             ; preds = %1155, %29, %7
  ret i32 undef
}

declare float @sqrtf(float) local_unnamed_addr

; Function Attrs: nofree nounwind optsize memory(readwrite, inaccessiblemem: write) uwtable
define internal i32 @susan_edges_small(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef readonly %3, i32 %4, i32 noundef %5, i32 noundef %6) #17 {
  %8 = call i64 @_wyvern_slice_susan_corners__839368081(i32 %5, i32 %6)
  tail call void @llvm.memset.p0.i64(ptr align 4 %1, i8 0, i64 %8, i1 false)
  %9 = icmp sgt i32 %6, 2
  br i1 %9, label %10, label %358

10:                                               ; preds = %7
  %11 = add nsw i32 %6, -1
  %12 = add i32 %5, -1
  %13 = icmp sgt i32 %5, 2
  %14 = add nsw i32 %5, -2
  %15 = sext i32 %14 to i64
  %16 = sext i32 %5 to i64
  %17 = zext i32 %11 to i64
  %18 = zext i32 %12 to i64
  br label %19

19:                                               ; preds = %114, %10
  %20 = phi i64 [ 1, %10 ], [ %115, %114 ]
  br i1 %13, label %21, label %114

21:                                               ; preds = %19
  %22 = add nsw i64 %20, -1
  %23 = mul nsw i64 %22, %16
  %24 = getelementptr inbounds i8, ptr %0, i64 %23
  %25 = mul nsw i64 %20, %16
  br label %36

26:                                               ; preds = %114
  %27 = icmp sgt i32 %6, 4
  br i1 %27, label %28, label %358

28:                                               ; preds = %26
  %29 = add nsw i32 %6, -2
  %30 = add i32 %5, -2
  %31 = icmp sgt i32 %5, 4
  %32 = sext i32 %30 to i64
  %33 = sext i32 %5 to i64
  %34 = zext i32 %29 to i64
  %35 = zext i32 %30 to i64
  br label %117

36:                                               ; preds = %111, %21
  %37 = phi i64 [ 1, %21 ], [ %112, %111 ]
  %38 = getelementptr inbounds i8, ptr %24, i64 %37
  %39 = getelementptr inbounds i8, ptr %38, i64 -1
  %40 = add nsw i64 %37, %25
  %41 = getelementptr inbounds i8, ptr %0, i64 %40
  %42 = load i8, ptr %41, align 1, !tbaa !15
  %43 = zext i8 %42 to i64
  %44 = getelementptr inbounds i8, ptr %3, i64 %43
  %45 = load i8, ptr %39, align 1, !tbaa !15
  %46 = zext i8 %45 to i64
  %47 = sub nsw i64 0, %46
  %48 = getelementptr inbounds i8, ptr %44, i64 %47
  %49 = load i8, ptr %48, align 1, !tbaa !15
  %50 = zext i8 %49 to i32
  %51 = add nuw nsw i32 %50, 100
  %52 = getelementptr inbounds i8, ptr %38, i64 1
  %53 = load i8, ptr %38, align 1, !tbaa !15
  %54 = zext i8 %53 to i64
  %55 = sub nsw i64 0, %54
  %56 = getelementptr inbounds i8, ptr %44, i64 %55
  %57 = load i8, ptr %56, align 1, !tbaa !15
  %58 = zext i8 %57 to i32
  %59 = add nuw nsw i32 %51, %58
  %60 = load i8, ptr %52, align 1, !tbaa !15
  %61 = zext i8 %60 to i64
  %62 = sub nsw i64 0, %61
  %63 = getelementptr inbounds i8, ptr %44, i64 %62
  %64 = load i8, ptr %63, align 1, !tbaa !15
  %65 = zext i8 %64 to i32
  %66 = add nuw nsw i32 %59, %65
  %67 = getelementptr inbounds i8, ptr %52, i64 %15
  %68 = load i8, ptr %67, align 1, !tbaa !15
  %69 = zext i8 %68 to i64
  %70 = sub nsw i64 0, %69
  %71 = getelementptr inbounds i8, ptr %44, i64 %70
  %72 = load i8, ptr %71, align 1, !tbaa !15
  %73 = zext i8 %72 to i32
  %74 = add nuw nsw i32 %66, %73
  %75 = getelementptr inbounds i8, ptr %67, i64 2
  %76 = load i8, ptr %75, align 1, !tbaa !15
  %77 = zext i8 %76 to i64
  %78 = sub nsw i64 0, %77
  %79 = getelementptr inbounds i8, ptr %44, i64 %78
  %80 = load i8, ptr %79, align 1, !tbaa !15
  %81 = zext i8 %80 to i32
  %82 = add nuw nsw i32 %74, %81
  %83 = getelementptr inbounds i8, ptr %75, i64 %15
  %84 = getelementptr inbounds i8, ptr %83, i64 1
  %85 = load i8, ptr %83, align 1, !tbaa !15
  %86 = zext i8 %85 to i64
  %87 = sub nsw i64 0, %86
  %88 = getelementptr inbounds i8, ptr %44, i64 %87
  %89 = load i8, ptr %88, align 1, !tbaa !15
  %90 = zext i8 %89 to i32
  %91 = add nuw nsw i32 %82, %90
  %92 = getelementptr inbounds i8, ptr %83, i64 2
  %93 = load i8, ptr %84, align 1, !tbaa !15
  %94 = zext i8 %93 to i64
  %95 = sub nsw i64 0, %94
  %96 = getelementptr inbounds i8, ptr %44, i64 %95
  %97 = load i8, ptr %96, align 1, !tbaa !15
  %98 = zext i8 %97 to i32
  %99 = add nuw nsw i32 %91, %98
  %100 = load i8, ptr %92, align 1, !tbaa !15
  %101 = zext i8 %100 to i64
  %102 = sub nsw i64 0, %101
  %103 = getelementptr inbounds i8, ptr %44, i64 %102
  %104 = load i8, ptr %103, align 1, !tbaa !15
  %105 = zext i8 %104 to i32
  %106 = add nuw nsw i32 %99, %105
  %107 = icmp ult i32 %106, 731
  br i1 %107, label %108, label %111

108:                                              ; preds = %36
  %109 = sub nuw nsw i32 730, %106
  %110 = getelementptr inbounds i32, ptr %1, i64 %40
  store i32 %109, ptr %110, align 4, !tbaa !11
  br label %111

111:                                              ; preds = %108, %36
  %112 = add nuw nsw i64 %37, 1
  %113 = icmp eq i64 %112, %18
  br i1 %113, label %114, label %36, !llvm.loop !46

114:                                              ; preds = %111, %19
  %115 = add nuw nsw i64 %20, 1
  %116 = icmp eq i64 %115, %17
  br i1 %116, label %26, label %19, !llvm.loop !47

117:                                              ; preds = %355, %28
  %118 = phi i64 [ 2, %28 ], [ %356, %355 ]
  br i1 %31, label %119, label %355

119:                                              ; preds = %117
  %120 = mul nsw i64 %118, %33
  %121 = add nsw i64 %118, -1
  %122 = mul nsw i64 %121, %33
  %123 = getelementptr inbounds i8, ptr %0, i64 %122
  %124 = trunc i64 %118 to i32
  %125 = trunc i64 %118 to i32
  br label %126

126:                                              ; preds = %352, %119
  %127 = phi i64 [ 2, %119 ], [ %353, %352 ]
  %128 = add nsw i64 %127, %120
  %129 = getelementptr inbounds i32, ptr %1, i64 %128
  %130 = load i32, ptr %129, align 4, !tbaa !11
  %131 = icmp sgt i32 %130, 0
  br i1 %131, label %132, label %352

132:                                              ; preds = %126
  %133 = getelementptr inbounds i8, ptr %0, i64 %128
  %134 = load i8, ptr %133, align 1, !tbaa !15
  %135 = zext i8 %134 to i64
  %136 = getelementptr inbounds i8, ptr %3, i64 %135
  %137 = icmp ult i32 %130, 480
  br i1 %137, label %138, label %251

138:                                              ; preds = %132
  %139 = sub nuw nsw i32 730, %130
  %140 = getelementptr inbounds i8, ptr %123, i64 %127
  %141 = getelementptr inbounds i8, ptr %140, i64 -1
  %142 = load i8, ptr %141, align 1, !tbaa !15
  %143 = zext i8 %142 to i64
  %144 = sub nsw i64 0, %143
  %145 = getelementptr inbounds i8, ptr %136, i64 %144
  %146 = load i8, ptr %145, align 1, !tbaa !15
  %147 = zext i8 %146 to i32
  %148 = getelementptr inbounds i8, ptr %140, i64 1
  %149 = load i8, ptr %140, align 1, !tbaa !15
  %150 = zext i8 %149 to i64
  %151 = sub nsw i64 0, %150
  %152 = getelementptr inbounds i8, ptr %136, i64 %151
  %153 = load i8, ptr %152, align 1, !tbaa !15
  %154 = zext i8 %153 to i32
  %155 = load i8, ptr %148, align 1, !tbaa !15
  %156 = zext i8 %155 to i64
  %157 = sub nsw i64 0, %156
  %158 = getelementptr inbounds i8, ptr %136, i64 %157
  %159 = load i8, ptr %158, align 1, !tbaa !15
  %160 = zext i8 %159 to i32
  %161 = getelementptr inbounds i8, ptr %148, i64 %32
  %162 = load i8, ptr %161, align 1, !tbaa !15
  %163 = zext i8 %162 to i64
  %164 = sub nsw i64 0, %163
  %165 = getelementptr inbounds i8, ptr %136, i64 %164
  %166 = load i8, ptr %165, align 1, !tbaa !15
  %167 = zext i8 %166 to i32
  %168 = getelementptr inbounds i8, ptr %161, i64 2
  %169 = load i8, ptr %168, align 1, !tbaa !15
  %170 = zext i8 %169 to i64
  %171 = sub nsw i64 0, %170
  %172 = getelementptr inbounds i8, ptr %136, i64 %171
  %173 = load i8, ptr %172, align 1, !tbaa !15
  %174 = zext i8 %173 to i32
  %175 = getelementptr inbounds i8, ptr %168, i64 %32
  %176 = getelementptr inbounds i8, ptr %175, i64 1
  %177 = load i8, ptr %175, align 1, !tbaa !15
  %178 = zext i8 %177 to i64
  %179 = sub nsw i64 0, %178
  %180 = getelementptr inbounds i8, ptr %136, i64 %179
  %181 = load i8, ptr %180, align 1, !tbaa !15
  %182 = zext i8 %181 to i32
  %183 = add nuw nsw i32 %154, %147
  %184 = add nuw nsw i32 %183, %160
  %185 = sub nsw i32 %182, %184
  %186 = getelementptr inbounds i8, ptr %175, i64 2
  %187 = load i8, ptr %176, align 1, !tbaa !15
  %188 = zext i8 %187 to i64
  %189 = sub nsw i64 0, %188
  %190 = getelementptr inbounds i8, ptr %136, i64 %189
  %191 = load i8, ptr %190, align 1, !tbaa !15
  %192 = zext i8 %191 to i32
  %193 = add nsw i32 %185, %192
  %194 = load i8, ptr %186, align 1, !tbaa !15
  %195 = zext i8 %194 to i64
  %196 = sub nsw i64 0, %195
  %197 = getelementptr inbounds i8, ptr %136, i64 %196
  %198 = load i8, ptr %197, align 1, !tbaa !15
  %199 = zext i8 %198 to i32
  %200 = add nuw nsw i32 %147, %167
  %201 = add nuw nsw i32 %160, %174
  %202 = add nuw nsw i32 %200, %182
  %203 = sub nsw i32 %201, %202
  %204 = add nsw i32 %203, %199
  %205 = add nsw i32 %193, %199
  %206 = mul nsw i32 %204, %204
  %207 = mul nsw i32 %205, %205
  %208 = add nuw nsw i32 %206, %207
  %209 = sitofp i32 %208 to float
  %210 = tail call float @sqrtf(float noundef %209) #10
  %211 = fpext float %210 to double
  %212 = sitofp i32 %139 to float
  %213 = fpext float %212 to double
  %214 = fmul double %213, 4.000000e-01
  %215 = fcmp olt double %214, %211
  br i1 %215, label %216, label %251

216:                                              ; preds = %138
  %217 = icmp eq i32 %204, 0
  %218 = sitofp i32 %205 to float
  %219 = sitofp i32 %204 to float
  %220 = fdiv float %218, %219
  %221 = select i1 %217, float 1.000000e+06, float %220
  %222 = fcmp uge float %221, 0.000000e+00
  %223 = fneg float %221
  %224 = select i1 %222, float %221, float %223
  %225 = fcmp olt float %224, 5.000000e-01
  br i1 %225, label %230, label %226

226:                                              ; preds = %216
  %227 = fcmp ogt float %224, 2.000000e+00
  br i1 %227, label %230, label %228

228:                                              ; preds = %226
  %229 = select i1 %222, i32 1, i32 -1
  br label %230

230:                                              ; preds = %228, %226, %216
  %231 = phi i32 [ 0, %216 ], [ 1, %226 ], [ %229, %228 ]
  %232 = phi i32 [ 1, %216 ], [ 0, %226 ], [ 1, %228 ]
  %233 = add nsw i32 %231, %125
  %234 = mul nsw i32 %233, %5
  %235 = trunc i64 %127 to i32
  %236 = add nuw nsw i32 %232, %235
  %237 = add i32 %236, %234
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds i32, ptr %1, i64 %238
  %240 = load i32, ptr %239, align 4, !tbaa !11
  %241 = icmp sgt i32 %130, %240
  br i1 %241, label %242, label %352

242:                                              ; preds = %230
  %243 = sub nsw i32 %125, %231
  %244 = mul nsw i32 %243, %5
  %245 = sub nsw i32 %235, %232
  %246 = add i32 %245, %244
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds i32, ptr %1, i64 %247
  %249 = load i32, ptr %248, align 4, !tbaa !11
  %250 = icmp slt i32 %130, %249
  br i1 %250, label %352, label %349

251:                                              ; preds = %138, %132
  %252 = getelementptr inbounds i8, ptr %123, i64 %127
  %253 = getelementptr inbounds i8, ptr %252, i64 -1
  %254 = load i8, ptr %253, align 1, !tbaa !15
  %255 = zext i8 %254 to i64
  %256 = sub nsw i64 0, %255
  %257 = getelementptr inbounds i8, ptr %136, i64 %256
  %258 = load i8, ptr %257, align 1, !tbaa !15
  %259 = zext i8 %258 to i32
  %260 = getelementptr inbounds i8, ptr %252, i64 1
  %261 = load i8, ptr %252, align 1, !tbaa !15
  %262 = zext i8 %261 to i64
  %263 = sub nsw i64 0, %262
  %264 = getelementptr inbounds i8, ptr %136, i64 %263
  %265 = load i8, ptr %264, align 1, !tbaa !15
  %266 = zext i8 %265 to i32
  %267 = load i8, ptr %260, align 1, !tbaa !15
  %268 = zext i8 %267 to i64
  %269 = sub nsw i64 0, %268
  %270 = getelementptr inbounds i8, ptr %136, i64 %269
  %271 = load i8, ptr %270, align 1, !tbaa !15
  %272 = zext i8 %271 to i32
  %273 = getelementptr inbounds i8, ptr %260, i64 %32
  %274 = getelementptr inbounds i8, ptr %273, i64 2
  %275 = getelementptr inbounds i8, ptr %274, i64 %32
  %276 = getelementptr inbounds i8, ptr %275, i64 1
  %277 = load i8, ptr %275, align 1, !tbaa !15
  %278 = zext i8 %277 to i64
  %279 = sub nsw i64 0, %278
  %280 = getelementptr inbounds i8, ptr %136, i64 %279
  %281 = load i8, ptr %280, align 1, !tbaa !15
  %282 = zext i8 %281 to i32
  %283 = getelementptr inbounds i8, ptr %275, i64 2
  %284 = load i8, ptr %276, align 1, !tbaa !15
  %285 = zext i8 %284 to i64
  %286 = sub nsw i64 0, %285
  %287 = getelementptr inbounds i8, ptr %136, i64 %286
  %288 = load i8, ptr %287, align 1, !tbaa !15
  %289 = zext i8 %288 to i32
  %290 = load i8, ptr %283, align 1, !tbaa !15
  %291 = zext i8 %290 to i64
  %292 = sub nsw i64 0, %291
  %293 = getelementptr inbounds i8, ptr %136, i64 %292
  %294 = load i8, ptr %293, align 1, !tbaa !15
  %295 = zext i8 %294 to i32
  %296 = add nuw nsw i32 %282, %272
  %297 = add nuw nsw i32 %296, %259
  %298 = add nuw nsw i32 %297, %266
  %299 = add nuw nsw i32 %298, %289
  %300 = add nuw nsw i32 %299, %295
  %301 = add nuw nsw i32 %295, %259
  %302 = icmp eq i32 %300, 0
  br i1 %302, label %328, label %303

303:                                              ; preds = %251
  %304 = load i8, ptr %273, align 1, !tbaa !15
  %305 = zext i8 %304 to i64
  %306 = sub nsw i64 0, %305
  %307 = getelementptr inbounds i8, ptr %136, i64 %306
  %308 = load i8, ptr %307, align 1, !tbaa !15
  %309 = zext i8 %308 to i32
  %310 = load i8, ptr %274, align 1, !tbaa !15
  %311 = zext i8 %310 to i64
  %312 = sub nsw i64 0, %311
  %313 = getelementptr inbounds i8, ptr %136, i64 %312
  %314 = load i8, ptr %313, align 1, !tbaa !15
  %315 = zext i8 %314 to i32
  %316 = add nuw nsw i32 %297, %295
  %317 = add nuw nsw i32 %316, %309
  %318 = add nuw nsw i32 %317, %315
  %319 = sitofp i32 %318 to float
  %320 = sitofp i32 %300 to float
  %321 = fdiv float %319, %320
  %322 = fcmp olt float %321, 5.000000e-01
  br i1 %322, label %328, label %323

323:                                              ; preds = %303
  %324 = fcmp ogt float %321, 2.000000e+00
  br i1 %324, label %328, label %325

325:                                              ; preds = %323
  %326 = icmp ugt i32 %301, %296
  %327 = select i1 %326, i32 -1, i32 1
  br label %328

328:                                              ; preds = %325, %323, %303, %251
  %329 = phi i32 [ 0, %303 ], [ 1, %323 ], [ %327, %325 ], [ 1, %251 ]
  %330 = phi i32 [ 1, %303 ], [ 0, %323 ], [ 1, %325 ], [ 0, %251 ]
  %331 = add nsw i32 %329, %124
  %332 = mul nsw i32 %331, %5
  %333 = trunc i64 %127 to i32
  %334 = add nuw nsw i32 %330, %333
  %335 = add i32 %334, %332
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds i32, ptr %1, i64 %336
  %338 = load i32, ptr %337, align 4, !tbaa !11
  %339 = icmp sgt i32 %130, %338
  br i1 %339, label %340, label %352

340:                                              ; preds = %328
  %341 = sub nsw i32 %124, %329
  %342 = mul nsw i32 %341, %5
  %343 = sub nsw i32 %333, %330
  %344 = add i32 %343, %342
  %345 = sext i32 %344 to i64
  %346 = getelementptr inbounds i32, ptr %1, i64 %345
  %347 = load i32, ptr %346, align 4, !tbaa !11
  %348 = icmp slt i32 %130, %347
  br i1 %348, label %352, label %349

349:                                              ; preds = %340, %242
  %350 = phi i8 [ 1, %242 ], [ 2, %340 ]
  %351 = getelementptr inbounds i8, ptr %2, i64 %128
  store i8 %350, ptr %351, align 1, !tbaa !15
  br label %352

352:                                              ; preds = %349, %340, %328, %242, %230, %126
  %353 = add nuw nsw i64 %127, 1
  %354 = icmp eq i64 %353, %35
  br i1 %354, label %355, label %126, !llvm.loop !48

355:                                              ; preds = %352, %117
  %356 = add nuw nsw i64 %118, 1
  %357 = icmp eq i64 %356, %34
  br i1 %357, label %358, label %117, !llvm.loop !49

358:                                              ; preds = %355, %26, %7
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
  %8 = call i64 @_wyvern_slice_susan_corners__839368081(i32 %5, i32 %6)
  tail call void @llvm.memset.p0.i64(ptr align 4 %1, i8 0, i64 %8, i1 false)
  %9 = tail call noalias ptr @malloc(i64 noundef %8) #25
  %10 = tail call noalias ptr @malloc(i64 noundef %8) #25
  %11 = add i32 %6, -5
  %12 = icmp sgt i32 %6, 10
  br i1 %12, label %13, label %884

13:                                               ; preds = %7
  %14 = add i32 %5, -5
  %15 = icmp sgt i32 %5, 10
  %16 = add nsw i32 %5, -3
  %17 = sext i32 %16 to i64
  %18 = sext i32 %14 to i64
  %19 = add nsw i32 %5, -6
  %20 = sext i32 %19 to i64
  %21 = sext i32 %5 to i64
  %22 = zext i32 %11 to i64
  %23 = zext i32 %14 to i64
  br label %24

24:                                               ; preds = %585, %13
  %25 = phi i64 [ 5, %13 ], [ %586, %585 ]
  br i1 %15, label %26, label %585

26:                                               ; preds = %24
  %27 = add nsw i64 %25, -3
  %28 = mul nsw i64 %27, %21
  %29 = getelementptr inbounds i8, ptr %0, i64 %28
  %30 = mul nsw i64 %25, %21
  %31 = trunc i64 %25 to i32
  %32 = trunc i64 %25 to i32
  br label %40

33:                                               ; preds = %585
  br i1 %12, label %34, label %884

34:                                               ; preds = %33
  %35 = add i32 %5, -5
  %36 = icmp sgt i32 %5, 10
  %37 = sext i32 %5 to i64
  %38 = zext i32 %11 to i64
  %39 = zext i32 %35 to i64
  br label %588

40:                                               ; preds = %582, %26
  %41 = phi i64 [ 5, %26 ], [ %583, %582 ]
  %42 = getelementptr inbounds i8, ptr %29, i64 %41
  %43 = getelementptr inbounds i8, ptr %42, i64 -1
  %44 = add nsw i64 %41, %30
  %45 = getelementptr inbounds i8, ptr %0, i64 %44
  %46 = load i8, ptr %45, align 1, !tbaa !15
  %47 = zext i8 %46 to i64
  %48 = getelementptr inbounds i8, ptr %2, i64 %47
  %49 = load i8, ptr %43, align 1, !tbaa !15
  %50 = zext i8 %49 to i64
  %51 = sub nsw i64 0, %50
  %52 = getelementptr inbounds i8, ptr %48, i64 %51
  %53 = load i8, ptr %52, align 1, !tbaa !15
  %54 = zext i8 %53 to i32
  %55 = add nuw nsw i32 %54, 100
  %56 = getelementptr inbounds i8, ptr %42, i64 1
  %57 = load i8, ptr %42, align 1, !tbaa !15
  %58 = zext i8 %57 to i64
  %59 = sub nsw i64 0, %58
  %60 = getelementptr inbounds i8, ptr %48, i64 %59
  %61 = load i8, ptr %60, align 1, !tbaa !15
  %62 = zext i8 %61 to i32
  %63 = add nuw nsw i32 %55, %62
  %64 = load i8, ptr %56, align 1, !tbaa !15
  %65 = zext i8 %64 to i64
  %66 = sub nsw i64 0, %65
  %67 = getelementptr inbounds i8, ptr %48, i64 %66
  %68 = load i8, ptr %67, align 1, !tbaa !15
  %69 = zext i8 %68 to i32
  %70 = add nuw nsw i32 %63, %69
  %71 = getelementptr inbounds i8, ptr %56, i64 %17
  %72 = getelementptr inbounds i8, ptr %71, i64 1
  %73 = load i8, ptr %71, align 1, !tbaa !15
  %74 = zext i8 %73 to i64
  %75 = sub nsw i64 0, %74
  %76 = getelementptr inbounds i8, ptr %48, i64 %75
  %77 = load i8, ptr %76, align 1, !tbaa !15
  %78 = zext i8 %77 to i32
  %79 = add nuw nsw i32 %70, %78
  %80 = getelementptr inbounds i8, ptr %71, i64 2
  %81 = load i8, ptr %72, align 1, !tbaa !15
  %82 = zext i8 %81 to i64
  %83 = sub nsw i64 0, %82
  %84 = getelementptr inbounds i8, ptr %48, i64 %83
  %85 = load i8, ptr %84, align 1, !tbaa !15
  %86 = zext i8 %85 to i32
  %87 = add nuw nsw i32 %79, %86
  %88 = getelementptr inbounds i8, ptr %71, i64 3
  %89 = load i8, ptr %80, align 1, !tbaa !15
  %90 = zext i8 %89 to i64
  %91 = sub nsw i64 0, %90
  %92 = getelementptr inbounds i8, ptr %48, i64 %91
  %93 = load i8, ptr %92, align 1, !tbaa !15
  %94 = zext i8 %93 to i32
  %95 = add nuw nsw i32 %87, %94
  %96 = getelementptr inbounds i8, ptr %71, i64 4
  %97 = load i8, ptr %88, align 1, !tbaa !15
  %98 = zext i8 %97 to i64
  %99 = sub nsw i64 0, %98
  %100 = getelementptr inbounds i8, ptr %48, i64 %99
  %101 = load i8, ptr %100, align 1, !tbaa !15
  %102 = zext i8 %101 to i32
  %103 = add nuw nsw i32 %95, %102
  %104 = load i8, ptr %96, align 1, !tbaa !15
  %105 = zext i8 %104 to i64
  %106 = sub nsw i64 0, %105
  %107 = getelementptr inbounds i8, ptr %48, i64 %106
  %108 = load i8, ptr %107, align 1, !tbaa !15
  %109 = zext i8 %108 to i32
  %110 = add nuw nsw i32 %103, %109
  %111 = getelementptr inbounds i8, ptr %96, i64 %18
  %112 = getelementptr inbounds i8, ptr %111, i64 1
  %113 = load i8, ptr %111, align 1, !tbaa !15
  %114 = zext i8 %113 to i64
  %115 = sub nsw i64 0, %114
  %116 = getelementptr inbounds i8, ptr %48, i64 %115
  %117 = load i8, ptr %116, align 1, !tbaa !15
  %118 = zext i8 %117 to i32
  %119 = add nuw nsw i32 %110, %118
  %120 = getelementptr inbounds i8, ptr %111, i64 2
  %121 = load i8, ptr %112, align 1, !tbaa !15
  %122 = zext i8 %121 to i64
  %123 = sub nsw i64 0, %122
  %124 = getelementptr inbounds i8, ptr %48, i64 %123
  %125 = load i8, ptr %124, align 1, !tbaa !15
  %126 = zext i8 %125 to i32
  %127 = add nuw nsw i32 %119, %126
  %128 = getelementptr inbounds i8, ptr %111, i64 3
  %129 = load i8, ptr %120, align 1, !tbaa !15
  %130 = zext i8 %129 to i64
  %131 = sub nsw i64 0, %130
  %132 = getelementptr inbounds i8, ptr %48, i64 %131
  %133 = load i8, ptr %132, align 1, !tbaa !15
  %134 = zext i8 %133 to i32
  %135 = add nuw nsw i32 %127, %134
  %136 = getelementptr inbounds i8, ptr %111, i64 4
  %137 = load i8, ptr %128, align 1, !tbaa !15
  %138 = zext i8 %137 to i64
  %139 = sub nsw i64 0, %138
  %140 = getelementptr inbounds i8, ptr %48, i64 %139
  %141 = load i8, ptr %140, align 1, !tbaa !15
  %142 = zext i8 %141 to i32
  %143 = add nuw nsw i32 %135, %142
  %144 = getelementptr inbounds i8, ptr %111, i64 5
  %145 = load i8, ptr %136, align 1, !tbaa !15
  %146 = zext i8 %145 to i64
  %147 = sub nsw i64 0, %146
  %148 = getelementptr inbounds i8, ptr %48, i64 %147
  %149 = load i8, ptr %148, align 1, !tbaa !15
  %150 = zext i8 %149 to i32
  %151 = add nuw nsw i32 %143, %150
  %152 = getelementptr inbounds i8, ptr %111, i64 6
  %153 = load i8, ptr %144, align 1, !tbaa !15
  %154 = zext i8 %153 to i64
  %155 = sub nsw i64 0, %154
  %156 = getelementptr inbounds i8, ptr %48, i64 %155
  %157 = load i8, ptr %156, align 1, !tbaa !15
  %158 = zext i8 %157 to i32
  %159 = add nuw nsw i32 %151, %158
  %160 = load i8, ptr %152, align 1, !tbaa !15
  %161 = zext i8 %160 to i64
  %162 = sub nsw i64 0, %161
  %163 = getelementptr inbounds i8, ptr %48, i64 %162
  %164 = load i8, ptr %163, align 1, !tbaa !15
  %165 = zext i8 %164 to i32
  %166 = add nuw nsw i32 %159, %165
  %167 = getelementptr inbounds i8, ptr %152, i64 %20
  %168 = getelementptr inbounds i8, ptr %167, i64 1
  %169 = load i8, ptr %167, align 1, !tbaa !15
  %170 = zext i8 %169 to i64
  %171 = sub nsw i64 0, %170
  %172 = getelementptr inbounds i8, ptr %48, i64 %171
  %173 = load i8, ptr %172, align 1, !tbaa !15
  %174 = zext i8 %173 to i32
  %175 = add nuw nsw i32 %166, %174
  %176 = getelementptr inbounds i8, ptr %167, i64 2
  %177 = load i8, ptr %168, align 1, !tbaa !15
  %178 = zext i8 %177 to i64
  %179 = sub nsw i64 0, %178
  %180 = getelementptr inbounds i8, ptr %48, i64 %179
  %181 = load i8, ptr %180, align 1, !tbaa !15
  %182 = zext i8 %181 to i32
  %183 = add nuw nsw i32 %175, %182
  %184 = load i8, ptr %176, align 1, !tbaa !15
  %185 = zext i8 %184 to i64
  %186 = sub nsw i64 0, %185
  %187 = getelementptr inbounds i8, ptr %48, i64 %186
  %188 = load i8, ptr %187, align 1, !tbaa !15
  %189 = zext i8 %188 to i32
  %190 = add nuw nsw i32 %183, %189
  %191 = icmp slt i32 %190, %3
  br i1 %191, label %192, label %582

192:                                              ; preds = %40
  %193 = getelementptr inbounds i8, ptr %167, i64 4
  %194 = load i8, ptr %193, align 1, !tbaa !15
  %195 = zext i8 %194 to i64
  %196 = sub nsw i64 0, %195
  %197 = getelementptr inbounds i8, ptr %48, i64 %196
  %198 = load i8, ptr %197, align 1, !tbaa !15
  %199 = zext i8 %198 to i32
  %200 = add nuw nsw i32 %190, %199
  %201 = icmp slt i32 %200, %3
  br i1 %201, label %202, label %582

202:                                              ; preds = %192
  %203 = getelementptr inbounds i8, ptr %167, i64 5
  %204 = getelementptr inbounds i8, ptr %167, i64 6
  %205 = load i8, ptr %203, align 1, !tbaa !15
  %206 = zext i8 %205 to i64
  %207 = sub nsw i64 0, %206
  %208 = getelementptr inbounds i8, ptr %48, i64 %207
  %209 = load i8, ptr %208, align 1, !tbaa !15
  %210 = zext i8 %209 to i32
  %211 = add nuw nsw i32 %200, %210
  %212 = icmp slt i32 %211, %3
  br i1 %212, label %213, label %582

213:                                              ; preds = %202
  %214 = load i8, ptr %204, align 1, !tbaa !15
  %215 = zext i8 %214 to i64
  %216 = sub nsw i64 0, %215
  %217 = getelementptr inbounds i8, ptr %48, i64 %216
  %218 = load i8, ptr %217, align 1, !tbaa !15
  %219 = zext i8 %218 to i32
  %220 = add nuw nsw i32 %211, %219
  %221 = icmp slt i32 %220, %3
  br i1 %221, label %222, label %582

222:                                              ; preds = %213
  %223 = getelementptr inbounds i8, ptr %204, i64 %20
  %224 = load i8, ptr %223, align 1, !tbaa !15
  %225 = zext i8 %224 to i64
  %226 = sub nsw i64 0, %225
  %227 = getelementptr inbounds i8, ptr %48, i64 %226
  %228 = load i8, ptr %227, align 1, !tbaa !15
  %229 = zext i8 %228 to i32
  %230 = add nuw nsw i32 %220, %229
  %231 = icmp slt i32 %230, %3
  br i1 %231, label %232, label %582

232:                                              ; preds = %222
  %233 = getelementptr inbounds i8, ptr %223, i64 1
  %234 = load i8, ptr %233, align 1, !tbaa !15
  %235 = zext i8 %234 to i64
  %236 = sub nsw i64 0, %235
  %237 = getelementptr inbounds i8, ptr %48, i64 %236
  %238 = load i8, ptr %237, align 1, !tbaa !15
  %239 = zext i8 %238 to i32
  %240 = add nuw nsw i32 %230, %239
  %241 = icmp slt i32 %240, %3
  br i1 %241, label %242, label %582

242:                                              ; preds = %232
  %243 = getelementptr inbounds i8, ptr %223, i64 2
  %244 = load i8, ptr %243, align 1, !tbaa !15
  %245 = zext i8 %244 to i64
  %246 = sub nsw i64 0, %245
  %247 = getelementptr inbounds i8, ptr %48, i64 %246
  %248 = load i8, ptr %247, align 1, !tbaa !15
  %249 = zext i8 %248 to i32
  %250 = add nuw nsw i32 %240, %249
  %251 = icmp slt i32 %250, %3
  br i1 %251, label %252, label %582

252:                                              ; preds = %242
  %253 = getelementptr inbounds i8, ptr %223, i64 3
  %254 = load i8, ptr %253, align 1, !tbaa !15
  %255 = zext i8 %254 to i64
  %256 = sub nsw i64 0, %255
  %257 = getelementptr inbounds i8, ptr %48, i64 %256
  %258 = load i8, ptr %257, align 1, !tbaa !15
  %259 = zext i8 %258 to i32
  %260 = add nuw nsw i32 %250, %259
  %261 = icmp slt i32 %260, %3
  br i1 %261, label %262, label %582

262:                                              ; preds = %252
  %263 = getelementptr inbounds i8, ptr %223, i64 4
  %264 = load i8, ptr %263, align 1, !tbaa !15
  %265 = zext i8 %264 to i64
  %266 = sub nsw i64 0, %265
  %267 = getelementptr inbounds i8, ptr %48, i64 %266
  %268 = load i8, ptr %267, align 1, !tbaa !15
  %269 = zext i8 %268 to i32
  %270 = add nuw nsw i32 %260, %269
  %271 = icmp slt i32 %270, %3
  br i1 %271, label %272, label %582

272:                                              ; preds = %262
  %273 = getelementptr inbounds i8, ptr %223, i64 5
  %274 = getelementptr inbounds i8, ptr %223, i64 6
  %275 = load i8, ptr %273, align 1, !tbaa !15
  %276 = zext i8 %275 to i64
  %277 = sub nsw i64 0, %276
  %278 = getelementptr inbounds i8, ptr %48, i64 %277
  %279 = load i8, ptr %278, align 1, !tbaa !15
  %280 = zext i8 %279 to i32
  %281 = add nuw nsw i32 %270, %280
  %282 = icmp slt i32 %281, %3
  br i1 %282, label %283, label %582

283:                                              ; preds = %272
  %284 = load i8, ptr %274, align 1, !tbaa !15
  %285 = zext i8 %284 to i64
  %286 = sub nsw i64 0, %285
  %287 = getelementptr inbounds i8, ptr %48, i64 %286
  %288 = load i8, ptr %287, align 1, !tbaa !15
  %289 = zext i8 %288 to i32
  %290 = add nuw nsw i32 %281, %289
  %291 = icmp slt i32 %290, %3
  br i1 %291, label %292, label %582

292:                                              ; preds = %283
  %293 = getelementptr inbounds i8, ptr %274, i64 %18
  %294 = load i8, ptr %293, align 1, !tbaa !15
  %295 = zext i8 %294 to i64
  %296 = sub nsw i64 0, %295
  %297 = getelementptr inbounds i8, ptr %48, i64 %296
  %298 = load i8, ptr %297, align 1, !tbaa !15
  %299 = zext i8 %298 to i32
  %300 = add nuw nsw i32 %290, %299
  %301 = icmp slt i32 %300, %3
  br i1 %301, label %302, label %582

302:                                              ; preds = %292
  %303 = getelementptr inbounds i8, ptr %293, i64 1
  %304 = load i8, ptr %303, align 1, !tbaa !15
  %305 = zext i8 %304 to i64
  %306 = sub nsw i64 0, %305
  %307 = getelementptr inbounds i8, ptr %48, i64 %306
  %308 = load i8, ptr %307, align 1, !tbaa !15
  %309 = zext i8 %308 to i32
  %310 = add nuw nsw i32 %300, %309
  %311 = icmp slt i32 %310, %3
  br i1 %311, label %312, label %582

312:                                              ; preds = %302
  %313 = getelementptr inbounds i8, ptr %293, i64 2
  %314 = load i8, ptr %313, align 1, !tbaa !15
  %315 = zext i8 %314 to i64
  %316 = sub nsw i64 0, %315
  %317 = getelementptr inbounds i8, ptr %48, i64 %316
  %318 = load i8, ptr %317, align 1, !tbaa !15
  %319 = zext i8 %318 to i32
  %320 = add nuw nsw i32 %310, %319
  %321 = icmp slt i32 %320, %3
  br i1 %321, label %322, label %582

322:                                              ; preds = %312
  %323 = getelementptr inbounds i8, ptr %293, i64 3
  %324 = getelementptr inbounds i8, ptr %293, i64 4
  %325 = load i8, ptr %323, align 1, !tbaa !15
  %326 = zext i8 %325 to i64
  %327 = sub nsw i64 0, %326
  %328 = getelementptr inbounds i8, ptr %48, i64 %327
  %329 = load i8, ptr %328, align 1, !tbaa !15
  %330 = zext i8 %329 to i32
  %331 = add nuw nsw i32 %320, %330
  %332 = icmp slt i32 %331, %3
  br i1 %332, label %333, label %582

333:                                              ; preds = %322
  %334 = load i8, ptr %324, align 1, !tbaa !15
  %335 = zext i8 %334 to i64
  %336 = sub nsw i64 0, %335
  %337 = getelementptr inbounds i8, ptr %48, i64 %336
  %338 = load i8, ptr %337, align 1, !tbaa !15
  %339 = zext i8 %338 to i32
  %340 = add nuw nsw i32 %331, %339
  %341 = icmp slt i32 %340, %3
  br i1 %341, label %342, label %582

342:                                              ; preds = %333
  %343 = getelementptr inbounds i8, ptr %324, i64 %17
  %344 = load i8, ptr %343, align 1, !tbaa !15
  %345 = zext i8 %344 to i64
  %346 = sub nsw i64 0, %345
  %347 = getelementptr inbounds i8, ptr %48, i64 %346
  %348 = load i8, ptr %347, align 1, !tbaa !15
  %349 = zext i8 %348 to i32
  %350 = add nuw nsw i32 %340, %349
  %351 = icmp slt i32 %350, %3
  br i1 %351, label %352, label %582

352:                                              ; preds = %342
  %353 = getelementptr inbounds i8, ptr %343, i64 1
  %354 = load i8, ptr %353, align 1, !tbaa !15
  %355 = zext i8 %354 to i64
  %356 = sub nsw i64 0, %355
  %357 = getelementptr inbounds i8, ptr %48, i64 %356
  %358 = load i8, ptr %357, align 1, !tbaa !15
  %359 = zext i8 %358 to i32
  %360 = add nuw nsw i32 %350, %359
  %361 = icmp slt i32 %360, %3
  br i1 %361, label %362, label %582

362:                                              ; preds = %352
  %363 = getelementptr inbounds i8, ptr %343, i64 2
  %364 = load i8, ptr %363, align 1, !tbaa !15
  %365 = zext i8 %364 to i64
  %366 = sub nsw i64 0, %365
  %367 = getelementptr inbounds i8, ptr %48, i64 %366
  %368 = load i8, ptr %367, align 1, !tbaa !15
  %369 = zext i8 %368 to i32
  %370 = add nuw nsw i32 %360, %369
  %371 = icmp slt i32 %370, %3
  br i1 %371, label %372, label %582

372:                                              ; preds = %362
  %373 = add nuw nsw i32 %62, %54
  %374 = add nuw nsw i32 %373, %69
  %375 = add nuw nsw i32 %86, %78
  %376 = add nuw nsw i32 %375, %94
  %377 = add nuw nsw i32 %376, %102
  %378 = add nuw nsw i32 %377, %109
  %379 = shl nuw nsw i32 %299, 1
  %380 = shl nuw nsw i32 %339, 1
  %381 = add nuw nsw i32 %118, %174
  %382 = add nuw nsw i32 %165, %219
  %383 = add nuw nsw i32 %381, %229
  %384 = sub nsw i32 %382, %383
  %385 = add nsw i32 %384, %289
  %386 = mul nsw i32 %385, 3
  %387 = add nuw nsw i32 %78, %126
  %388 = add nuw nsw i32 %109, %158
  %389 = add nuw nsw i32 %387, %182
  %390 = add nuw nsw i32 %388, %210
  %391 = add nuw nsw i32 %389, %239
  %392 = sub nsw i32 %390, %391
  %393 = add nsw i32 %392, %280
  %394 = shl nsw i32 %393, 1
  %395 = add nuw nsw i32 %54, %86
  %396 = add nuw nsw i32 %69, %102
  %397 = add nuw nsw i32 %395, %134
  %398 = add nuw nsw i32 %396, %150
  %399 = add nuw nsw i32 %397, %189
  %400 = add nuw nsw i32 %398, %199
  %401 = add nuw nsw i32 %399, %249
  %402 = sub nsw i32 %400, %401
  %403 = add nsw i32 %402, %269
  %404 = add i32 %403, %394
  %405 = add i32 %404, %386
  %406 = add nuw nsw i32 %379, %309
  %407 = sub i32 %405, %406
  %408 = add i32 %407, %330
  %409 = add i32 %408, %380
  %410 = sub i32 %409, %349
  %411 = add i32 %410, %369
  %412 = sub nsw i32 %349, %374
  %413 = add nsw i32 %412, %359
  %414 = add nsw i32 %413, %369
  %415 = mul nsw i32 %414, 3
  %416 = sub nsw i32 %309, %378
  %417 = add nsw i32 %416, %319
  %418 = add nsw i32 %417, %330
  %419 = shl nsw i32 %418, 1
  %420 = add nuw nsw i32 %126, %118
  %421 = add nuw nsw i32 %420, %134
  %422 = add nuw nsw i32 %421, %142
  %423 = add nuw nsw i32 %422, %150
  %424 = add nuw nsw i32 %423, %158
  %425 = add nuw nsw i32 %424, %165
  %426 = sub nsw i32 %229, %425
  %427 = add nsw i32 %426, %239
  %428 = add nsw i32 %427, %249
  %429 = add nsw i32 %428, %259
  %430 = add nsw i32 %429, %269
  %431 = add nsw i32 %430, %280
  %432 = add nsw i32 %431, %289
  %433 = add nsw i32 %432, %379
  %434 = add i32 %433, %419
  %435 = add i32 %434, %380
  %436 = add i32 %435, %415
  %437 = mul nsw i32 %411, %411
  %438 = mul nsw i32 %436, %436
  %439 = add nuw nsw i32 %438, %437
  %440 = mul nuw nsw i32 %370, %370
  %441 = lshr i32 %440, 1
  %442 = icmp ugt i32 %439, %441
  br i1 %442, label %443, label %582

443:                                              ; preds = %372
  %444 = icmp ult i32 %438, %437
  %445 = trunc i64 %41 to i32
  br i1 %444, label %446, label %503

446:                                              ; preds = %443
  %447 = sitofp i32 %436 to float
  %448 = tail call i32 @llvm.abs.i32(i32 %411, i1 true)
  %449 = sitofp i32 %448 to float
  %450 = fdiv float %447, %449
  %451 = trunc i32 %448 to i16
  %452 = trunc i32 %411 to i16
  %453 = sdiv i16 %451, %452
  %454 = sext i16 %453 to i32
  %455 = fcmp olt float %450, 0.000000e+00
  %456 = fpext float %450 to double
  %457 = select i1 %455, double -5.000000e-01, double 5.000000e-01
  %458 = fadd double %457, %456
  %459 = fptosi double %458 to i32
  %460 = add nsw i32 %32, %459
  %461 = mul nsw i32 %460, %5
  %462 = add nsw i32 %461, %445
  %463 = add nsw i32 %462, %454
  %464 = sext i32 %463 to i64
  %465 = getelementptr inbounds i8, ptr %0, i64 %464
  %466 = load i8, ptr %465, align 1, !tbaa !15
  %467 = zext i8 %466 to i64
  %468 = sub nsw i64 0, %467
  %469 = getelementptr inbounds i8, ptr %48, i64 %468
  %470 = load i8, ptr %469, align 1, !tbaa !15
  %471 = zext i8 %470 to i32
  %472 = fmul float %450, 2.000000e+00
  %473 = fcmp olt float %472, 0.000000e+00
  %474 = fpext float %472 to double
  %475 = select i1 %473, double -5.000000e-01, double 5.000000e-01
  %476 = fadd double %475, %474
  %477 = fptosi double %476 to i32
  %478 = add nsw i32 %32, %477
  %479 = mul nsw i32 %478, %5
  %480 = add nsw i32 %479, %445
  %481 = shl nsw i32 %454, 1
  %482 = add nsw i32 %480, %481
  %483 = sext i32 %482 to i64
  %484 = getelementptr inbounds i8, ptr %0, i64 %483
  %485 = load i8, ptr %484, align 1, !tbaa !15
  %486 = zext i8 %485 to i64
  %487 = sub nsw i64 0, %486
  %488 = getelementptr inbounds i8, ptr %48, i64 %487
  %489 = load i8, ptr %488, align 1, !tbaa !15
  %490 = zext i8 %489 to i32
  %491 = add nuw nsw i32 %490, %471
  %492 = fmul float %450, 3.000000e+00
  %493 = fcmp olt float %492, 0.000000e+00
  %494 = fpext float %492 to double
  %495 = select i1 %493, double -5.000000e-01, double 5.000000e-01
  %496 = fadd double %495, %494
  %497 = fptosi double %496 to i32
  %498 = add nsw i32 %32, %497
  %499 = mul nsw i32 %498, %5
  %500 = add nsw i32 %499, %445
  %501 = mul nsw i32 %454, 3
  %502 = add nsw i32 %500, %501
  br label %560

503:                                              ; preds = %443
  %504 = sitofp i32 %411 to float
  %505 = tail call i32 @llvm.abs.i32(i32 %436, i1 true)
  %506 = sitofp i32 %505 to float
  %507 = fdiv float %504, %506
  %508 = trunc i32 %505 to i16
  %509 = trunc i32 %436 to i16
  %510 = sdiv i16 %508, %509
  %511 = sext i16 %510 to i32
  %512 = add nsw i32 %31, %511
  %513 = mul nsw i32 %512, %5
  %514 = fcmp olt float %507, 0.000000e+00
  %515 = fpext float %507 to double
  %516 = select i1 %514, double -5.000000e-01, double 5.000000e-01
  %517 = fadd double %516, %515
  %518 = fptosi double %517 to i32
  %519 = add i32 %445, %518
  %520 = add i32 %519, %513
  %521 = sext i32 %520 to i64
  %522 = getelementptr inbounds i8, ptr %0, i64 %521
  %523 = load i8, ptr %522, align 1, !tbaa !15
  %524 = zext i8 %523 to i64
  %525 = sub nsw i64 0, %524
  %526 = getelementptr inbounds i8, ptr %48, i64 %525
  %527 = load i8, ptr %526, align 1, !tbaa !15
  %528 = zext i8 %527 to i32
  %529 = shl nsw i32 %511, 1
  %530 = add nsw i32 %529, %31
  %531 = mul nsw i32 %530, %5
  %532 = fmul float %507, 2.000000e+00
  %533 = fcmp olt float %532, 0.000000e+00
  %534 = fpext float %532 to double
  %535 = select i1 %533, double -5.000000e-01, double 5.000000e-01
  %536 = fadd double %535, %534
  %537 = fptosi double %536 to i32
  %538 = add i32 %445, %537
  %539 = add i32 %538, %531
  %540 = sext i32 %539 to i64
  %541 = getelementptr inbounds i8, ptr %0, i64 %540
  %542 = load i8, ptr %541, align 1, !tbaa !15
  %543 = zext i8 %542 to i64
  %544 = sub nsw i64 0, %543
  %545 = getelementptr inbounds i8, ptr %48, i64 %544
  %546 = load i8, ptr %545, align 1, !tbaa !15
  %547 = zext i8 %546 to i32
  %548 = add nuw nsw i32 %547, %528
  %549 = mul nsw i32 %511, 3
  %550 = add nsw i32 %549, %31
  %551 = mul nsw i32 %550, %5
  %552 = fmul float %507, 3.000000e+00
  %553 = fcmp olt float %552, 0.000000e+00
  %554 = fpext float %552 to double
  %555 = select i1 %553, double -5.000000e-01, double 5.000000e-01
  %556 = fadd double %555, %554
  %557 = fptosi double %556 to i32
  %558 = add i32 %445, %557
  %559 = add i32 %558, %551
  br label %560

560:                                              ; preds = %503, %446
  %561 = phi i32 [ %559, %503 ], [ %502, %446 ]
  %562 = phi i32 [ %548, %503 ], [ %491, %446 ]
  %563 = sext i32 %561 to i64
  %564 = getelementptr inbounds i8, ptr %0, i64 %563
  %565 = load i8, ptr %564, align 1, !tbaa !15
  %566 = zext i8 %565 to i64
  %567 = sub nsw i64 0, %566
  %568 = getelementptr inbounds i8, ptr %48, i64 %567
  %569 = load i8, ptr %568, align 1, !tbaa !15
  %570 = zext i8 %569 to i32
  %571 = add nuw nsw i32 %562, %570
  %572 = icmp ugt i32 %571, 290
  br i1 %572, label %573, label %582

573:                                              ; preds = %560
  %574 = sub nsw i32 %3, %370
  %575 = getelementptr inbounds i32, ptr %1, i64 %44
  store i32 %574, ptr %575, align 4, !tbaa !11
  %576 = mul nsw i32 %411, 51
  %577 = sdiv i32 %576, %370
  %578 = getelementptr inbounds i32, ptr %9, i64 %44
  store i32 %577, ptr %578, align 4, !tbaa !11
  %579 = mul nsw i32 %436, 51
  %580 = sdiv i32 %579, %370
  %581 = getelementptr inbounds i32, ptr %10, i64 %44
  store i32 %580, ptr %581, align 4, !tbaa !11
  br label %582

582:                                              ; preds = %573, %560, %372, %362, %352, %342, %333, %322, %312, %302, %292, %283, %272, %262, %252, %242, %232, %222, %213, %202, %192, %40
  %583 = add nuw nsw i64 %41, 1
  %584 = icmp eq i64 %583, %23
  br i1 %584, label %585, label %40, !llvm.loop !55

585:                                              ; preds = %582, %24
  %586 = add nuw nsw i64 %25, 1
  %587 = icmp eq i64 %586, %22
  br i1 %587, label %33, label %24, !llvm.loop !56

588:                                              ; preds = %880, %34
  %589 = phi i64 [ 5, %34 ], [ %881, %880 ]
  %590 = phi i32 [ 0, %34 ], [ %882, %880 ]
  br i1 %36, label %593, label %591

591:                                              ; preds = %588
  %592 = add nuw nsw i64 %589, 1
  br label %880

593:                                              ; preds = %588
  %594 = mul nsw i64 %589, %37
  %595 = add nsw i64 %589, -3
  %596 = mul nsw i64 %595, %37
  %597 = add nsw i64 %589, -2
  %598 = mul nsw i64 %597, %37
  %599 = add nsw i64 %589, -1
  %600 = mul nsw i64 %599, %37
  %601 = add nuw nsw i64 %589, 1
  %602 = mul nsw i64 %601, %37
  %603 = add nuw nsw i64 %589, 2
  %604 = mul nsw i64 %603, %37
  %605 = add nuw nsw i64 %589, 3
  %606 = mul nsw i64 %605, %37
  %607 = trunc i64 %589 to i32
  br label %608

608:                                              ; preds = %876, %593
  %609 = phi i64 [ 5, %593 ], [ %878, %876 ]
  %610 = phi i32 [ %590, %593 ], [ %877, %876 ]
  %611 = add nsw i64 %609, %594
  %612 = getelementptr inbounds i32, ptr %1, i64 %611
  %613 = load i32, ptr %612, align 4, !tbaa !11
  %614 = icmp sgt i32 %613, 0
  br i1 %614, label %615, label %876

615:                                              ; preds = %608
  %616 = add nsw i64 %609, %596
  %617 = add nsw i64 %616, -3
  %618 = getelementptr inbounds i32, ptr %1, i64 %617
  %619 = load i32, ptr %618, align 4, !tbaa !11
  %620 = icmp sgt i32 %613, %619
  br i1 %620, label %621, label %876

621:                                              ; preds = %615
  %622 = add nsw i64 %616, -2
  %623 = getelementptr inbounds i32, ptr %1, i64 %622
  %624 = load i32, ptr %623, align 4, !tbaa !11
  %625 = icmp sgt i32 %613, %624
  br i1 %625, label %626, label %876

626:                                              ; preds = %621
  %627 = add nsw i64 %616, -1
  %628 = getelementptr inbounds i32, ptr %1, i64 %627
  %629 = load i32, ptr %628, align 4, !tbaa !11
  %630 = icmp sgt i32 %613, %629
  br i1 %630, label %631, label %876

631:                                              ; preds = %626
  %632 = getelementptr inbounds i32, ptr %1, i64 %616
  %633 = load i32, ptr %632, align 4, !tbaa !11
  %634 = icmp sgt i32 %613, %633
  br i1 %634, label %635, label %876

635:                                              ; preds = %631
  %636 = add nsw i64 %616, 1
  %637 = getelementptr inbounds i32, ptr %1, i64 %636
  %638 = load i32, ptr %637, align 4, !tbaa !11
  %639 = icmp sgt i32 %613, %638
  br i1 %639, label %640, label %876

640:                                              ; preds = %635
  %641 = add nsw i64 %616, 2
  %642 = getelementptr inbounds i32, ptr %1, i64 %641
  %643 = load i32, ptr %642, align 4, !tbaa !11
  %644 = icmp sgt i32 %613, %643
  br i1 %644, label %645, label %876

645:                                              ; preds = %640
  %646 = add nsw i64 %616, 3
  %647 = getelementptr inbounds i32, ptr %1, i64 %646
  %648 = load i32, ptr %647, align 4, !tbaa !11
  %649 = icmp sgt i32 %613, %648
  br i1 %649, label %650, label %876

650:                                              ; preds = %645
  %651 = add nsw i64 %609, %598
  %652 = add nsw i64 %651, -3
  %653 = getelementptr inbounds i32, ptr %1, i64 %652
  %654 = load i32, ptr %653, align 4, !tbaa !11
  %655 = icmp sgt i32 %613, %654
  br i1 %655, label %656, label %876

656:                                              ; preds = %650
  %657 = add nsw i64 %651, -2
  %658 = getelementptr inbounds i32, ptr %1, i64 %657
  %659 = load i32, ptr %658, align 4, !tbaa !11
  %660 = icmp sgt i32 %613, %659
  br i1 %660, label %661, label %876

661:                                              ; preds = %656
  %662 = add nsw i64 %651, -1
  %663 = getelementptr inbounds i32, ptr %1, i64 %662
  %664 = load i32, ptr %663, align 4, !tbaa !11
  %665 = icmp sgt i32 %613, %664
  br i1 %665, label %666, label %876

666:                                              ; preds = %661
  %667 = getelementptr inbounds i32, ptr %1, i64 %651
  %668 = load i32, ptr %667, align 4, !tbaa !11
  %669 = icmp sgt i32 %613, %668
  br i1 %669, label %670, label %876

670:                                              ; preds = %666
  %671 = add nsw i64 %651, 1
  %672 = getelementptr inbounds i32, ptr %1, i64 %671
  %673 = load i32, ptr %672, align 4, !tbaa !11
  %674 = icmp sgt i32 %613, %673
  br i1 %674, label %675, label %876

675:                                              ; preds = %670
  %676 = add nsw i64 %651, 2
  %677 = getelementptr inbounds i32, ptr %1, i64 %676
  %678 = load i32, ptr %677, align 4, !tbaa !11
  %679 = icmp sgt i32 %613, %678
  br i1 %679, label %680, label %876

680:                                              ; preds = %675
  %681 = add nsw i64 %651, 3
  %682 = getelementptr inbounds i32, ptr %1, i64 %681
  %683 = load i32, ptr %682, align 4, !tbaa !11
  %684 = icmp sgt i32 %613, %683
  br i1 %684, label %685, label %876

685:                                              ; preds = %680
  %686 = add nsw i64 %609, %600
  %687 = add nsw i64 %686, -3
  %688 = getelementptr inbounds i32, ptr %1, i64 %687
  %689 = load i32, ptr %688, align 4, !tbaa !11
  %690 = icmp sgt i32 %613, %689
  br i1 %690, label %691, label %876

691:                                              ; preds = %685
  %692 = add nsw i64 %686, -2
  %693 = getelementptr inbounds i32, ptr %1, i64 %692
  %694 = load i32, ptr %693, align 4, !tbaa !11
  %695 = icmp sgt i32 %613, %694
  br i1 %695, label %696, label %876

696:                                              ; preds = %691
  %697 = add nsw i64 %686, -1
  %698 = getelementptr inbounds i32, ptr %1, i64 %697
  %699 = load i32, ptr %698, align 4, !tbaa !11
  %700 = icmp sgt i32 %613, %699
  br i1 %700, label %701, label %876

701:                                              ; preds = %696
  %702 = getelementptr inbounds i32, ptr %1, i64 %686
  %703 = load i32, ptr %702, align 4, !tbaa !11
  %704 = icmp sgt i32 %613, %703
  br i1 %704, label %705, label %876

705:                                              ; preds = %701
  %706 = add nsw i64 %686, 1
  %707 = getelementptr inbounds i32, ptr %1, i64 %706
  %708 = load i32, ptr %707, align 4, !tbaa !11
  %709 = icmp sgt i32 %613, %708
  br i1 %709, label %710, label %876

710:                                              ; preds = %705
  %711 = add nsw i64 %686, 2
  %712 = getelementptr inbounds i32, ptr %1, i64 %711
  %713 = load i32, ptr %712, align 4, !tbaa !11
  %714 = icmp sgt i32 %613, %713
  br i1 %714, label %715, label %876

715:                                              ; preds = %710
  %716 = add nsw i64 %686, 3
  %717 = getelementptr inbounds i32, ptr %1, i64 %716
  %718 = load i32, ptr %717, align 4, !tbaa !11
  %719 = icmp sgt i32 %613, %718
  br i1 %719, label %720, label %876

720:                                              ; preds = %715
  %721 = add nsw i64 %611, -3
  %722 = getelementptr inbounds i32, ptr %1, i64 %721
  %723 = load i32, ptr %722, align 4, !tbaa !11
  %724 = icmp sgt i32 %613, %723
  br i1 %724, label %725, label %876

725:                                              ; preds = %720
  %726 = add nsw i64 %611, -2
  %727 = getelementptr inbounds i32, ptr %1, i64 %726
  %728 = load i32, ptr %727, align 4, !tbaa !11
  %729 = icmp sgt i32 %613, %728
  br i1 %729, label %730, label %876

730:                                              ; preds = %725
  %731 = add nsw i64 %611, -1
  %732 = getelementptr inbounds i32, ptr %1, i64 %731
  %733 = load i32, ptr %732, align 4, !tbaa !11
  %734 = icmp sgt i32 %613, %733
  br i1 %734, label %735, label %876

735:                                              ; preds = %730
  %736 = add nsw i64 %611, 1
  %737 = getelementptr inbounds i32, ptr %1, i64 %736
  %738 = load i32, ptr %737, align 4, !tbaa !11
  %739 = icmp slt i32 %613, %738
  br i1 %739, label %876, label %740

740:                                              ; preds = %735
  %741 = add nsw i64 %611, 2
  %742 = getelementptr inbounds i32, ptr %1, i64 %741
  %743 = load i32, ptr %742, align 4, !tbaa !11
  %744 = icmp slt i32 %613, %743
  br i1 %744, label %876, label %745

745:                                              ; preds = %740
  %746 = add nsw i64 %611, 3
  %747 = getelementptr inbounds i32, ptr %1, i64 %746
  %748 = load i32, ptr %747, align 4, !tbaa !11
  %749 = icmp slt i32 %613, %748
  br i1 %749, label %876, label %750

750:                                              ; preds = %745
  %751 = add nsw i64 %609, %602
  %752 = add nsw i64 %751, -3
  %753 = getelementptr inbounds i32, ptr %1, i64 %752
  %754 = load i32, ptr %753, align 4, !tbaa !11
  %755 = icmp slt i32 %613, %754
  br i1 %755, label %876, label %756

756:                                              ; preds = %750
  %757 = add nsw i64 %751, -2
  %758 = getelementptr inbounds i32, ptr %1, i64 %757
  %759 = load i32, ptr %758, align 4, !tbaa !11
  %760 = icmp slt i32 %613, %759
  br i1 %760, label %876, label %761

761:                                              ; preds = %756
  %762 = add nsw i64 %751, -1
  %763 = getelementptr inbounds i32, ptr %1, i64 %762
  %764 = load i32, ptr %763, align 4, !tbaa !11
  %765 = icmp slt i32 %613, %764
  br i1 %765, label %876, label %766

766:                                              ; preds = %761
  %767 = getelementptr inbounds i32, ptr %1, i64 %751
  %768 = load i32, ptr %767, align 4, !tbaa !11
  %769 = icmp slt i32 %613, %768
  br i1 %769, label %876, label %770

770:                                              ; preds = %766
  %771 = add nsw i64 %751, 1
  %772 = getelementptr inbounds i32, ptr %1, i64 %771
  %773 = load i32, ptr %772, align 4, !tbaa !11
  %774 = icmp slt i32 %613, %773
  br i1 %774, label %876, label %775

775:                                              ; preds = %770
  %776 = add nsw i64 %751, 2
  %777 = getelementptr inbounds i32, ptr %1, i64 %776
  %778 = load i32, ptr %777, align 4, !tbaa !11
  %779 = icmp slt i32 %613, %778
  br i1 %779, label %876, label %780

780:                                              ; preds = %775
  %781 = add nsw i64 %751, 3
  %782 = getelementptr inbounds i32, ptr %1, i64 %781
  %783 = load i32, ptr %782, align 4, !tbaa !11
  %784 = icmp slt i32 %613, %783
  br i1 %784, label %876, label %785

785:                                              ; preds = %780
  %786 = add nsw i64 %609, %604
  %787 = add nsw i64 %786, -3
  %788 = getelementptr inbounds i32, ptr %1, i64 %787
  %789 = load i32, ptr %788, align 4, !tbaa !11
  %790 = icmp slt i32 %613, %789
  br i1 %790, label %876, label %791

791:                                              ; preds = %785
  %792 = add nsw i64 %786, -2
  %793 = getelementptr inbounds i32, ptr %1, i64 %792
  %794 = load i32, ptr %793, align 4, !tbaa !11
  %795 = icmp slt i32 %613, %794
  br i1 %795, label %876, label %796

796:                                              ; preds = %791
  %797 = add nsw i64 %786, -1
  %798 = getelementptr inbounds i32, ptr %1, i64 %797
  %799 = load i32, ptr %798, align 4, !tbaa !11
  %800 = icmp slt i32 %613, %799
  br i1 %800, label %876, label %801

801:                                              ; preds = %796
  %802 = getelementptr inbounds i32, ptr %1, i64 %786
  %803 = load i32, ptr %802, align 4, !tbaa !11
  %804 = icmp slt i32 %613, %803
  br i1 %804, label %876, label %805

805:                                              ; preds = %801
  %806 = add nsw i64 %786, 1
  %807 = getelementptr inbounds i32, ptr %1, i64 %806
  %808 = load i32, ptr %807, align 4, !tbaa !11
  %809 = icmp slt i32 %613, %808
  br i1 %809, label %876, label %810

810:                                              ; preds = %805
  %811 = add nsw i64 %786, 2
  %812 = getelementptr inbounds i32, ptr %1, i64 %811
  %813 = load i32, ptr %812, align 4, !tbaa !11
  %814 = icmp slt i32 %613, %813
  br i1 %814, label %876, label %815

815:                                              ; preds = %810
  %816 = add nsw i64 %786, 3
  %817 = getelementptr inbounds i32, ptr %1, i64 %816
  %818 = load i32, ptr %817, align 4, !tbaa !11
  %819 = icmp slt i32 %613, %818
  br i1 %819, label %876, label %820

820:                                              ; preds = %815
  %821 = add nsw i64 %609, %606
  %822 = add nsw i64 %821, -3
  %823 = getelementptr inbounds i32, ptr %1, i64 %822
  %824 = load i32, ptr %823, align 4, !tbaa !11
  %825 = icmp slt i32 %613, %824
  br i1 %825, label %876, label %826

826:                                              ; preds = %820
  %827 = add nsw i64 %821, -2
  %828 = getelementptr inbounds i32, ptr %1, i64 %827
  %829 = load i32, ptr %828, align 4, !tbaa !11
  %830 = icmp slt i32 %613, %829
  br i1 %830, label %876, label %831

831:                                              ; preds = %826
  %832 = add nsw i64 %821, -1
  %833 = getelementptr inbounds i32, ptr %1, i64 %832
  %834 = load i32, ptr %833, align 4, !tbaa !11
  %835 = icmp slt i32 %613, %834
  br i1 %835, label %876, label %836

836:                                              ; preds = %831
  %837 = getelementptr inbounds i32, ptr %1, i64 %821
  %838 = load i32, ptr %837, align 4, !tbaa !11
  %839 = icmp slt i32 %613, %838
  br i1 %839, label %876, label %840

840:                                              ; preds = %836
  %841 = add nsw i64 %821, 1
  %842 = getelementptr inbounds i32, ptr %1, i64 %841
  %843 = load i32, ptr %842, align 4, !tbaa !11
  %844 = icmp slt i32 %613, %843
  br i1 %844, label %876, label %845

845:                                              ; preds = %840
  %846 = add nsw i64 %821, 2
  %847 = getelementptr inbounds i32, ptr %1, i64 %846
  %848 = load i32, ptr %847, align 4, !tbaa !11
  %849 = icmp slt i32 %613, %848
  br i1 %849, label %876, label %850

850:                                              ; preds = %845
  %851 = add nsw i64 %821, 3
  %852 = getelementptr inbounds i32, ptr %1, i64 %851
  %853 = load i32, ptr %852, align 4, !tbaa !11
  %854 = icmp slt i32 %613, %853
  br i1 %854, label %876, label %855

855:                                              ; preds = %850
  %856 = sext i32 %610 to i64
  %857 = getelementptr inbounds %struct.anon, ptr %4, i64 %856
  %858 = getelementptr inbounds %struct.anon, ptr %4, i64 %856, i32 2
  store i32 0, ptr %858, align 4, !tbaa !50
  %859 = trunc i64 %609 to i32
  store i32 %859, ptr %857, align 4, !tbaa !53
  %860 = getelementptr inbounds %struct.anon, ptr %4, i64 %856, i32 1
  store i32 %607, ptr %860, align 4, !tbaa !52
  %861 = getelementptr inbounds i32, ptr %9, i64 %611
  %862 = load i32, ptr %861, align 4, !tbaa !11
  %863 = getelementptr inbounds %struct.anon, ptr %4, i64 %856, i32 3
  store i32 %862, ptr %863, align 4, !tbaa !57
  %864 = getelementptr inbounds i32, ptr %10, i64 %611
  %865 = load i32, ptr %864, align 4, !tbaa !11
  %866 = getelementptr inbounds %struct.anon, ptr %4, i64 %856, i32 4
  store i32 %865, ptr %866, align 4, !tbaa !58
  %867 = getelementptr inbounds i8, ptr %0, i64 %611
  %868 = load i8, ptr %867, align 1, !tbaa !15
  %869 = zext i8 %868 to i32
  %870 = getelementptr inbounds %struct.anon, ptr %4, i64 %856, i32 5
  store i32 %869, ptr %870, align 4, !tbaa !59
  %871 = add nsw i32 %610, 1
  %872 = icmp eq i32 %871, 15000
  br i1 %872, label %873, label %876

873:                                              ; preds = %855
  %874 = load ptr, ptr @stderr, align 8, !tbaa !7
  %875 = tail call i64 @fwrite(ptr nonnull @.str.29, i64 18, i64 1, ptr %874) #27
  tail call void @exit(i32 noundef 1) #21
  unreachable

876:                                              ; preds = %855, %850, %845, %840, %836, %831, %826, %820, %815, %810, %805, %801, %796, %791, %785, %780, %775, %770, %766, %761, %756, %750, %745, %740, %735, %730, %725, %720, %715, %710, %705, %701, %696, %691, %685, %680, %675, %670, %666, %661, %656, %650, %645, %640, %635, %631, %626, %621, %615, %608
  %877 = phi i32 [ %871, %855 ], [ %610, %850 ], [ %610, %845 ], [ %610, %840 ], [ %610, %836 ], [ %610, %831 ], [ %610, %826 ], [ %610, %820 ], [ %610, %815 ], [ %610, %810 ], [ %610, %805 ], [ %610, %801 ], [ %610, %796 ], [ %610, %791 ], [ %610, %785 ], [ %610, %780 ], [ %610, %775 ], [ %610, %770 ], [ %610, %766 ], [ %610, %761 ], [ %610, %756 ], [ %610, %750 ], [ %610, %745 ], [ %610, %740 ], [ %610, %735 ], [ %610, %730 ], [ %610, %725 ], [ %610, %720 ], [ %610, %715 ], [ %610, %710 ], [ %610, %705 ], [ %610, %701 ], [ %610, %696 ], [ %610, %691 ], [ %610, %685 ], [ %610, %680 ], [ %610, %675 ], [ %610, %670 ], [ %610, %666 ], [ %610, %661 ], [ %610, %656 ], [ %610, %650 ], [ %610, %645 ], [ %610, %640 ], [ %610, %635 ], [ %610, %631 ], [ %610, %626 ], [ %610, %621 ], [ %610, %615 ], [ %610, %608 ]
  %878 = add nuw nsw i64 %609, 1
  %879 = icmp eq i64 %878, %39
  br i1 %879, label %880, label %608, !llvm.loop !60

880:                                              ; preds = %876, %591
  %881 = phi i64 [ %592, %591 ], [ %601, %876 ]
  %882 = phi i32 [ %590, %591 ], [ %877, %876 ]
  %883 = icmp eq i64 %881, %38
  br i1 %883, label %884, label %588, !llvm.loop !61

884:                                              ; preds = %880, %33, %7
  %885 = phi i32 [ 0, %33 ], [ 0, %7 ], [ %882, %880 ]
  %886 = sext i32 %885 to i64
  %887 = getelementptr inbounds %struct.anon, ptr %4, i64 %886, i32 2
  store i32 7, ptr %887, align 4, !tbaa !50
  tail call void @free(ptr noundef %9) #26
  tail call void @free(ptr noundef %10) #26
  ret i32 undef
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #8

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #18

; Function Attrs: nounwind optsize uwtable
define internal i32 @susan_corners_quick(ptr noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, ptr nocapture noundef writeonly %4, i32 noundef %5, i32 noundef %6) #3 {
  %8 = call i64 @_wyvern_slice_susan_corners__839368081(i32 %5, i32 %6)
  tail call void @llvm.memset.p0.i64(ptr align 4 %1, i8 0, i64 %8, i1 false)
  %9 = add i32 %6, -7
  %10 = icmp sgt i32 %6, 14
  br i1 %10, label %11, label %862

11:                                               ; preds = %7
  %12 = add i32 %5, -7
  %13 = icmp sgt i32 %5, 14
  %14 = add nsw i32 %5, -3
  %15 = sext i32 %14 to i64
  %16 = add nsw i32 %5, -5
  %17 = sext i32 %16 to i64
  %18 = add nsw i32 %5, -6
  %19 = sext i32 %18 to i64
  %20 = sext i32 %5 to i64
  %21 = zext i32 %9 to i64
  %22 = zext i32 %12 to i64
  br label %23

23:                                               ; preds = %375, %11
  %24 = phi i64 [ 7, %11 ], [ %376, %375 ]
  br i1 %13, label %25, label %375

25:                                               ; preds = %23
  %26 = add nsw i64 %24, -3
  %27 = mul nsw i64 %26, %20
  %28 = getelementptr inbounds i8, ptr %0, i64 %27
  %29 = mul nsw i64 %24, %20
  br label %37

30:                                               ; preds = %375
  br i1 %10, label %31, label %862

31:                                               ; preds = %30
  %32 = add i32 %5, -7
  %33 = icmp sgt i32 %5, 14
  %34 = sext i32 %5 to i64
  %35 = zext i32 %9 to i64
  %36 = zext i32 %32 to i64
  br label %378

37:                                               ; preds = %372, %25
  %38 = phi i64 [ 7, %25 ], [ %373, %372 ]
  %39 = getelementptr inbounds i8, ptr %28, i64 %38
  %40 = getelementptr inbounds i8, ptr %39, i64 -1
  %41 = add nsw i64 %38, %29
  %42 = getelementptr inbounds i8, ptr %0, i64 %41
  %43 = load i8, ptr %42, align 1, !tbaa !15
  %44 = zext i8 %43 to i64
  %45 = getelementptr inbounds i8, ptr %2, i64 %44
  %46 = load i8, ptr %40, align 1, !tbaa !15
  %47 = zext i8 %46 to i64
  %48 = sub nsw i64 0, %47
  %49 = getelementptr inbounds i8, ptr %45, i64 %48
  %50 = load i8, ptr %49, align 1, !tbaa !15
  %51 = zext i8 %50 to i32
  %52 = add nuw nsw i32 %51, 100
  %53 = getelementptr inbounds i8, ptr %39, i64 1
  %54 = load i8, ptr %39, align 1, !tbaa !15
  %55 = zext i8 %54 to i64
  %56 = sub nsw i64 0, %55
  %57 = getelementptr inbounds i8, ptr %45, i64 %56
  %58 = load i8, ptr %57, align 1, !tbaa !15
  %59 = zext i8 %58 to i32
  %60 = add nuw nsw i32 %52, %59
  %61 = load i8, ptr %53, align 1, !tbaa !15
  %62 = zext i8 %61 to i64
  %63 = sub nsw i64 0, %62
  %64 = getelementptr inbounds i8, ptr %45, i64 %63
  %65 = load i8, ptr %64, align 1, !tbaa !15
  %66 = zext i8 %65 to i32
  %67 = add nuw nsw i32 %60, %66
  %68 = getelementptr inbounds i8, ptr %53, i64 %15
  %69 = getelementptr inbounds i8, ptr %68, i64 1
  %70 = load i8, ptr %68, align 1, !tbaa !15
  %71 = zext i8 %70 to i64
  %72 = sub nsw i64 0, %71
  %73 = getelementptr inbounds i8, ptr %45, i64 %72
  %74 = load i8, ptr %73, align 1, !tbaa !15
  %75 = zext i8 %74 to i32
  %76 = add nuw nsw i32 %67, %75
  %77 = getelementptr inbounds i8, ptr %68, i64 2
  %78 = load i8, ptr %69, align 1, !tbaa !15
  %79 = zext i8 %78 to i64
  %80 = sub nsw i64 0, %79
  %81 = getelementptr inbounds i8, ptr %45, i64 %80
  %82 = load i8, ptr %81, align 1, !tbaa !15
  %83 = zext i8 %82 to i32
  %84 = add nuw nsw i32 %76, %83
  %85 = getelementptr inbounds i8, ptr %68, i64 3
  %86 = load i8, ptr %77, align 1, !tbaa !15
  %87 = zext i8 %86 to i64
  %88 = sub nsw i64 0, %87
  %89 = getelementptr inbounds i8, ptr %45, i64 %88
  %90 = load i8, ptr %89, align 1, !tbaa !15
  %91 = zext i8 %90 to i32
  %92 = add nuw nsw i32 %84, %91
  %93 = getelementptr inbounds i8, ptr %68, i64 4
  %94 = load i8, ptr %85, align 1, !tbaa !15
  %95 = zext i8 %94 to i64
  %96 = sub nsw i64 0, %95
  %97 = getelementptr inbounds i8, ptr %45, i64 %96
  %98 = load i8, ptr %97, align 1, !tbaa !15
  %99 = zext i8 %98 to i32
  %100 = add nuw nsw i32 %92, %99
  %101 = load i8, ptr %93, align 1, !tbaa !15
  %102 = zext i8 %101 to i64
  %103 = sub nsw i64 0, %102
  %104 = getelementptr inbounds i8, ptr %45, i64 %103
  %105 = load i8, ptr %104, align 1, !tbaa !15
  %106 = zext i8 %105 to i32
  %107 = add nuw nsw i32 %100, %106
  %108 = getelementptr inbounds i8, ptr %93, i64 %17
  %109 = getelementptr inbounds i8, ptr %108, i64 1
  %110 = load i8, ptr %108, align 1, !tbaa !15
  %111 = zext i8 %110 to i64
  %112 = sub nsw i64 0, %111
  %113 = getelementptr inbounds i8, ptr %45, i64 %112
  %114 = load i8, ptr %113, align 1, !tbaa !15
  %115 = zext i8 %114 to i32
  %116 = add nuw nsw i32 %107, %115
  %117 = getelementptr inbounds i8, ptr %108, i64 2
  %118 = load i8, ptr %109, align 1, !tbaa !15
  %119 = zext i8 %118 to i64
  %120 = sub nsw i64 0, %119
  %121 = getelementptr inbounds i8, ptr %45, i64 %120
  %122 = load i8, ptr %121, align 1, !tbaa !15
  %123 = zext i8 %122 to i32
  %124 = add nuw nsw i32 %116, %123
  %125 = getelementptr inbounds i8, ptr %108, i64 3
  %126 = load i8, ptr %117, align 1, !tbaa !15
  %127 = zext i8 %126 to i64
  %128 = sub nsw i64 0, %127
  %129 = getelementptr inbounds i8, ptr %45, i64 %128
  %130 = load i8, ptr %129, align 1, !tbaa !15
  %131 = zext i8 %130 to i32
  %132 = add nuw nsw i32 %124, %131
  %133 = getelementptr inbounds i8, ptr %108, i64 4
  %134 = load i8, ptr %125, align 1, !tbaa !15
  %135 = zext i8 %134 to i64
  %136 = sub nsw i64 0, %135
  %137 = getelementptr inbounds i8, ptr %45, i64 %136
  %138 = load i8, ptr %137, align 1, !tbaa !15
  %139 = zext i8 %138 to i32
  %140 = add nuw nsw i32 %132, %139
  %141 = getelementptr inbounds i8, ptr %108, i64 5
  %142 = load i8, ptr %133, align 1, !tbaa !15
  %143 = zext i8 %142 to i64
  %144 = sub nsw i64 0, %143
  %145 = getelementptr inbounds i8, ptr %45, i64 %144
  %146 = load i8, ptr %145, align 1, !tbaa !15
  %147 = zext i8 %146 to i32
  %148 = add nuw nsw i32 %140, %147
  %149 = getelementptr inbounds i8, ptr %108, i64 6
  %150 = load i8, ptr %141, align 1, !tbaa !15
  %151 = zext i8 %150 to i64
  %152 = sub nsw i64 0, %151
  %153 = getelementptr inbounds i8, ptr %45, i64 %152
  %154 = load i8, ptr %153, align 1, !tbaa !15
  %155 = zext i8 %154 to i32
  %156 = add nuw nsw i32 %148, %155
  %157 = load i8, ptr %149, align 1, !tbaa !15
  %158 = zext i8 %157 to i64
  %159 = sub nsw i64 0, %158
  %160 = getelementptr inbounds i8, ptr %45, i64 %159
  %161 = load i8, ptr %160, align 1, !tbaa !15
  %162 = zext i8 %161 to i32
  %163 = add nuw nsw i32 %156, %162
  %164 = getelementptr inbounds i8, ptr %149, i64 %19
  %165 = getelementptr inbounds i8, ptr %164, i64 1
  %166 = load i8, ptr %164, align 1, !tbaa !15
  %167 = zext i8 %166 to i64
  %168 = sub nsw i64 0, %167
  %169 = getelementptr inbounds i8, ptr %45, i64 %168
  %170 = load i8, ptr %169, align 1, !tbaa !15
  %171 = zext i8 %170 to i32
  %172 = add nuw nsw i32 %163, %171
  %173 = getelementptr inbounds i8, ptr %164, i64 2
  %174 = load i8, ptr %165, align 1, !tbaa !15
  %175 = zext i8 %174 to i64
  %176 = sub nsw i64 0, %175
  %177 = getelementptr inbounds i8, ptr %45, i64 %176
  %178 = load i8, ptr %177, align 1, !tbaa !15
  %179 = zext i8 %178 to i32
  %180 = add nuw nsw i32 %172, %179
  %181 = load i8, ptr %173, align 1, !tbaa !15
  %182 = zext i8 %181 to i64
  %183 = sub nsw i64 0, %182
  %184 = getelementptr inbounds i8, ptr %45, i64 %183
  %185 = load i8, ptr %184, align 1, !tbaa !15
  %186 = zext i8 %185 to i32
  %187 = add nuw nsw i32 %180, %186
  %188 = icmp slt i32 %187, %3
  br i1 %188, label %189, label %372

189:                                              ; preds = %37
  %190 = getelementptr inbounds i8, ptr %164, i64 4
  %191 = load i8, ptr %190, align 1, !tbaa !15
  %192 = zext i8 %191 to i64
  %193 = sub nsw i64 0, %192
  %194 = getelementptr inbounds i8, ptr %45, i64 %193
  %195 = load i8, ptr %194, align 1, !tbaa !15
  %196 = zext i8 %195 to i32
  %197 = add nuw nsw i32 %187, %196
  %198 = icmp slt i32 %197, %3
  br i1 %198, label %199, label %372

199:                                              ; preds = %189
  %200 = getelementptr inbounds i8, ptr %164, i64 5
  %201 = getelementptr inbounds i8, ptr %164, i64 6
  %202 = load i8, ptr %200, align 1, !tbaa !15
  %203 = zext i8 %202 to i64
  %204 = sub nsw i64 0, %203
  %205 = getelementptr inbounds i8, ptr %45, i64 %204
  %206 = load i8, ptr %205, align 1, !tbaa !15
  %207 = zext i8 %206 to i32
  %208 = add nuw nsw i32 %197, %207
  %209 = icmp slt i32 %208, %3
  br i1 %209, label %210, label %372

210:                                              ; preds = %199
  %211 = load i8, ptr %201, align 1, !tbaa !15
  %212 = zext i8 %211 to i64
  %213 = sub nsw i64 0, %212
  %214 = getelementptr inbounds i8, ptr %45, i64 %213
  %215 = load i8, ptr %214, align 1, !tbaa !15
  %216 = zext i8 %215 to i32
  %217 = add nuw nsw i32 %208, %216
  %218 = icmp slt i32 %217, %3
  br i1 %218, label %219, label %372

219:                                              ; preds = %210
  %220 = getelementptr inbounds i8, ptr %201, i64 %19
  %221 = load i8, ptr %220, align 1, !tbaa !15
  %222 = zext i8 %221 to i64
  %223 = sub nsw i64 0, %222
  %224 = getelementptr inbounds i8, ptr %45, i64 %223
  %225 = load i8, ptr %224, align 1, !tbaa !15
  %226 = zext i8 %225 to i32
  %227 = add nuw nsw i32 %217, %226
  %228 = icmp slt i32 %227, %3
  br i1 %228, label %229, label %372

229:                                              ; preds = %219
  %230 = getelementptr inbounds i8, ptr %220, i64 1
  %231 = load i8, ptr %230, align 1, !tbaa !15
  %232 = zext i8 %231 to i64
  %233 = sub nsw i64 0, %232
  %234 = getelementptr inbounds i8, ptr %45, i64 %233
  %235 = load i8, ptr %234, align 1, !tbaa !15
  %236 = zext i8 %235 to i32
  %237 = add nuw nsw i32 %227, %236
  %238 = icmp slt i32 %237, %3
  br i1 %238, label %239, label %372

239:                                              ; preds = %229
  %240 = getelementptr inbounds i8, ptr %220, i64 2
  %241 = load i8, ptr %240, align 1, !tbaa !15
  %242 = zext i8 %241 to i64
  %243 = sub nsw i64 0, %242
  %244 = getelementptr inbounds i8, ptr %45, i64 %243
  %245 = load i8, ptr %244, align 1, !tbaa !15
  %246 = zext i8 %245 to i32
  %247 = add nuw nsw i32 %237, %246
  %248 = icmp slt i32 %247, %3
  br i1 %248, label %249, label %372

249:                                              ; preds = %239
  %250 = getelementptr inbounds i8, ptr %220, i64 3
  %251 = load i8, ptr %250, align 1, !tbaa !15
  %252 = zext i8 %251 to i64
  %253 = sub nsw i64 0, %252
  %254 = getelementptr inbounds i8, ptr %45, i64 %253
  %255 = load i8, ptr %254, align 1, !tbaa !15
  %256 = zext i8 %255 to i32
  %257 = add nuw nsw i32 %247, %256
  %258 = icmp slt i32 %257, %3
  br i1 %258, label %259, label %372

259:                                              ; preds = %249
  %260 = getelementptr inbounds i8, ptr %220, i64 4
  %261 = load i8, ptr %260, align 1, !tbaa !15
  %262 = zext i8 %261 to i64
  %263 = sub nsw i64 0, %262
  %264 = getelementptr inbounds i8, ptr %45, i64 %263
  %265 = load i8, ptr %264, align 1, !tbaa !15
  %266 = zext i8 %265 to i32
  %267 = add nuw nsw i32 %257, %266
  %268 = icmp slt i32 %267, %3
  br i1 %268, label %269, label %372

269:                                              ; preds = %259
  %270 = getelementptr inbounds i8, ptr %220, i64 5
  %271 = getelementptr inbounds i8, ptr %220, i64 6
  %272 = load i8, ptr %270, align 1, !tbaa !15
  %273 = zext i8 %272 to i64
  %274 = sub nsw i64 0, %273
  %275 = getelementptr inbounds i8, ptr %45, i64 %274
  %276 = load i8, ptr %275, align 1, !tbaa !15
  %277 = zext i8 %276 to i32
  %278 = add nuw nsw i32 %267, %277
  %279 = icmp slt i32 %278, %3
  br i1 %279, label %280, label %372

280:                                              ; preds = %269
  %281 = load i8, ptr %271, align 1, !tbaa !15
  %282 = zext i8 %281 to i64
  %283 = sub nsw i64 0, %282
  %284 = getelementptr inbounds i8, ptr %45, i64 %283
  %285 = load i8, ptr %284, align 1, !tbaa !15
  %286 = zext i8 %285 to i32
  %287 = add nuw nsw i32 %278, %286
  %288 = icmp slt i32 %287, %3
  br i1 %288, label %289, label %372

289:                                              ; preds = %280
  %290 = getelementptr inbounds i8, ptr %271, i64 %17
  %291 = load i8, ptr %290, align 1, !tbaa !15
  %292 = zext i8 %291 to i64
  %293 = sub nsw i64 0, %292
  %294 = getelementptr inbounds i8, ptr %45, i64 %293
  %295 = load i8, ptr %294, align 1, !tbaa !15
  %296 = zext i8 %295 to i32
  %297 = add nuw nsw i32 %287, %296
  %298 = icmp slt i32 %297, %3
  br i1 %298, label %299, label %372

299:                                              ; preds = %289
  %300 = getelementptr inbounds i8, ptr %290, i64 1
  %301 = load i8, ptr %300, align 1, !tbaa !15
  %302 = zext i8 %301 to i64
  %303 = sub nsw i64 0, %302
  %304 = getelementptr inbounds i8, ptr %45, i64 %303
  %305 = load i8, ptr %304, align 1, !tbaa !15
  %306 = zext i8 %305 to i32
  %307 = add nuw nsw i32 %297, %306
  %308 = icmp slt i32 %307, %3
  br i1 %308, label %309, label %372

309:                                              ; preds = %299
  %310 = getelementptr inbounds i8, ptr %290, i64 2
  %311 = load i8, ptr %310, align 1, !tbaa !15
  %312 = zext i8 %311 to i64
  %313 = sub nsw i64 0, %312
  %314 = getelementptr inbounds i8, ptr %45, i64 %313
  %315 = load i8, ptr %314, align 1, !tbaa !15
  %316 = zext i8 %315 to i32
  %317 = add nuw nsw i32 %307, %316
  %318 = icmp slt i32 %317, %3
  br i1 %318, label %319, label %372

319:                                              ; preds = %309
  %320 = getelementptr inbounds i8, ptr %290, i64 3
  %321 = getelementptr inbounds i8, ptr %290, i64 4
  %322 = load i8, ptr %320, align 1, !tbaa !15
  %323 = zext i8 %322 to i64
  %324 = sub nsw i64 0, %323
  %325 = getelementptr inbounds i8, ptr %45, i64 %324
  %326 = load i8, ptr %325, align 1, !tbaa !15
  %327 = zext i8 %326 to i32
  %328 = add nuw nsw i32 %317, %327
  %329 = icmp slt i32 %328, %3
  br i1 %329, label %330, label %372

330:                                              ; preds = %319
  %331 = load i8, ptr %321, align 1, !tbaa !15
  %332 = zext i8 %331 to i64
  %333 = sub nsw i64 0, %332
  %334 = getelementptr inbounds i8, ptr %45, i64 %333
  %335 = load i8, ptr %334, align 1, !tbaa !15
  %336 = zext i8 %335 to i32
  %337 = add nuw nsw i32 %328, %336
  %338 = icmp slt i32 %337, %3
  br i1 %338, label %339, label %372

339:                                              ; preds = %330
  %340 = getelementptr inbounds i8, ptr %321, i64 %15
  %341 = load i8, ptr %340, align 1, !tbaa !15
  %342 = zext i8 %341 to i64
  %343 = sub nsw i64 0, %342
  %344 = getelementptr inbounds i8, ptr %45, i64 %343
  %345 = load i8, ptr %344, align 1, !tbaa !15
  %346 = zext i8 %345 to i32
  %347 = add nuw nsw i32 %337, %346
  %348 = icmp slt i32 %347, %3
  br i1 %348, label %349, label %372

349:                                              ; preds = %339
  %350 = getelementptr inbounds i8, ptr %340, i64 1
  %351 = load i8, ptr %350, align 1, !tbaa !15
  %352 = zext i8 %351 to i64
  %353 = sub nsw i64 0, %352
  %354 = getelementptr inbounds i8, ptr %45, i64 %353
  %355 = load i8, ptr %354, align 1, !tbaa !15
  %356 = zext i8 %355 to i32
  %357 = add nuw nsw i32 %347, %356
  %358 = icmp slt i32 %357, %3
  br i1 %358, label %359, label %372

359:                                              ; preds = %349
  %360 = getelementptr inbounds i8, ptr %340, i64 2
  %361 = load i8, ptr %360, align 1, !tbaa !15
  %362 = zext i8 %361 to i64
  %363 = sub nsw i64 0, %362
  %364 = getelementptr inbounds i8, ptr %45, i64 %363
  %365 = load i8, ptr %364, align 1, !tbaa !15
  %366 = zext i8 %365 to i32
  %367 = add nuw nsw i32 %357, %366
  %368 = icmp slt i32 %367, %3
  br i1 %368, label %369, label %372

369:                                              ; preds = %359
  %370 = sub nsw i32 %3, %367
  %371 = getelementptr inbounds i32, ptr %1, i64 %41
  store i32 %370, ptr %371, align 4, !tbaa !11
  br label %372

372:                                              ; preds = %369, %359, %349, %339, %330, %319, %309, %299, %289, %280, %269, %259, %249, %239, %229, %219, %210, %199, %189, %37
  %373 = add nuw nsw i64 %38, 1
  %374 = icmp eq i64 %373, %22
  br i1 %374, label %375, label %37, !llvm.loop !62

375:                                              ; preds = %372, %23
  %376 = add nuw nsw i64 %24, 1
  %377 = icmp eq i64 %376, %21
  br i1 %377, label %30, label %23, !llvm.loop !63

378:                                              ; preds = %858, %31
  %379 = phi i64 [ 7, %31 ], [ %859, %858 ]
  %380 = phi i32 [ 0, %31 ], [ %860, %858 ]
  br i1 %33, label %383, label %381

381:                                              ; preds = %378
  %382 = add nuw nsw i64 %379, 1
  br label %858

383:                                              ; preds = %378
  %384 = mul nsw i64 %379, %34
  %385 = add nsw i64 %379, -3
  %386 = mul nsw i64 %385, %34
  %387 = add nsw i64 %379, -2
  %388 = mul nsw i64 %387, %34
  %389 = add nsw i64 %379, -1
  %390 = mul nsw i64 %389, %34
  %391 = add nuw nsw i64 %379, 1
  %392 = mul nsw i64 %391, %34
  %393 = add nuw nsw i64 %379, 2
  %394 = mul nsw i64 %393, %34
  %395 = add nuw nsw i64 %379, 3
  %396 = mul nsw i64 %395, %34
  %397 = trunc i64 %379 to i32
  br label %398

398:                                              ; preds = %854, %383
  %399 = phi i64 [ 7, %383 ], [ %856, %854 ]
  %400 = phi i32 [ %380, %383 ], [ %855, %854 ]
  %401 = add nsw i64 %399, %384
  %402 = getelementptr inbounds i32, ptr %1, i64 %401
  %403 = load i32, ptr %402, align 4, !tbaa !11
  %404 = icmp sgt i32 %403, 0
  br i1 %404, label %405, label %854

405:                                              ; preds = %398
  %406 = add nsw i64 %399, %386
  %407 = add nsw i64 %406, -3
  %408 = getelementptr inbounds i32, ptr %1, i64 %407
  %409 = load i32, ptr %408, align 4, !tbaa !11
  %410 = icmp sgt i32 %403, %409
  br i1 %410, label %411, label %854

411:                                              ; preds = %405
  %412 = add nsw i64 %406, -2
  %413 = getelementptr inbounds i32, ptr %1, i64 %412
  %414 = load i32, ptr %413, align 4, !tbaa !11
  %415 = icmp sgt i32 %403, %414
  br i1 %415, label %416, label %854

416:                                              ; preds = %411
  %417 = add nsw i64 %406, -1
  %418 = getelementptr inbounds i32, ptr %1, i64 %417
  %419 = load i32, ptr %418, align 4, !tbaa !11
  %420 = icmp sgt i32 %403, %419
  br i1 %420, label %421, label %854

421:                                              ; preds = %416
  %422 = getelementptr inbounds i32, ptr %1, i64 %406
  %423 = load i32, ptr %422, align 4, !tbaa !11
  %424 = icmp sgt i32 %403, %423
  br i1 %424, label %425, label %854

425:                                              ; preds = %421
  %426 = add nsw i64 %406, 1
  %427 = getelementptr inbounds i32, ptr %1, i64 %426
  %428 = load i32, ptr %427, align 4, !tbaa !11
  %429 = icmp sgt i32 %403, %428
  br i1 %429, label %430, label %854

430:                                              ; preds = %425
  %431 = add nsw i64 %406, 2
  %432 = getelementptr inbounds i32, ptr %1, i64 %431
  %433 = load i32, ptr %432, align 4, !tbaa !11
  %434 = icmp sgt i32 %403, %433
  br i1 %434, label %435, label %854

435:                                              ; preds = %430
  %436 = add nsw i64 %406, 3
  %437 = getelementptr inbounds i32, ptr %1, i64 %436
  %438 = load i32, ptr %437, align 4, !tbaa !11
  %439 = icmp sgt i32 %403, %438
  br i1 %439, label %440, label %854

440:                                              ; preds = %435
  %441 = add nsw i64 %399, %388
  %442 = add nsw i64 %441, -3
  %443 = getelementptr inbounds i32, ptr %1, i64 %442
  %444 = load i32, ptr %443, align 4, !tbaa !11
  %445 = icmp sgt i32 %403, %444
  br i1 %445, label %446, label %854

446:                                              ; preds = %440
  %447 = add nsw i64 %441, -2
  %448 = getelementptr inbounds i32, ptr %1, i64 %447
  %449 = load i32, ptr %448, align 4, !tbaa !11
  %450 = icmp sgt i32 %403, %449
  br i1 %450, label %451, label %854

451:                                              ; preds = %446
  %452 = add nsw i64 %441, -1
  %453 = getelementptr inbounds i32, ptr %1, i64 %452
  %454 = load i32, ptr %453, align 4, !tbaa !11
  %455 = icmp sgt i32 %403, %454
  br i1 %455, label %456, label %854

456:                                              ; preds = %451
  %457 = getelementptr inbounds i32, ptr %1, i64 %441
  %458 = load i32, ptr %457, align 4, !tbaa !11
  %459 = icmp sgt i32 %403, %458
  br i1 %459, label %460, label %854

460:                                              ; preds = %456
  %461 = add nsw i64 %441, 1
  %462 = getelementptr inbounds i32, ptr %1, i64 %461
  %463 = load i32, ptr %462, align 4, !tbaa !11
  %464 = icmp sgt i32 %403, %463
  br i1 %464, label %465, label %854

465:                                              ; preds = %460
  %466 = add nsw i64 %441, 2
  %467 = getelementptr inbounds i32, ptr %1, i64 %466
  %468 = load i32, ptr %467, align 4, !tbaa !11
  %469 = icmp sgt i32 %403, %468
  br i1 %469, label %470, label %854

470:                                              ; preds = %465
  %471 = add nsw i64 %441, 3
  %472 = getelementptr inbounds i32, ptr %1, i64 %471
  %473 = load i32, ptr %472, align 4, !tbaa !11
  %474 = icmp sgt i32 %403, %473
  br i1 %474, label %475, label %854

475:                                              ; preds = %470
  %476 = add nsw i64 %399, %390
  %477 = add nsw i64 %476, -3
  %478 = getelementptr inbounds i32, ptr %1, i64 %477
  %479 = load i32, ptr %478, align 4, !tbaa !11
  %480 = icmp sgt i32 %403, %479
  br i1 %480, label %481, label %854

481:                                              ; preds = %475
  %482 = add nsw i64 %476, -2
  %483 = getelementptr inbounds i32, ptr %1, i64 %482
  %484 = load i32, ptr %483, align 4, !tbaa !11
  %485 = icmp sgt i32 %403, %484
  br i1 %485, label %486, label %854

486:                                              ; preds = %481
  %487 = add nsw i64 %476, -1
  %488 = getelementptr inbounds i32, ptr %1, i64 %487
  %489 = load i32, ptr %488, align 4, !tbaa !11
  %490 = icmp sgt i32 %403, %489
  br i1 %490, label %491, label %854

491:                                              ; preds = %486
  %492 = getelementptr inbounds i32, ptr %1, i64 %476
  %493 = load i32, ptr %492, align 4, !tbaa !11
  %494 = icmp sgt i32 %403, %493
  br i1 %494, label %495, label %854

495:                                              ; preds = %491
  %496 = add nsw i64 %476, 1
  %497 = getelementptr inbounds i32, ptr %1, i64 %496
  %498 = load i32, ptr %497, align 4, !tbaa !11
  %499 = icmp sgt i32 %403, %498
  br i1 %499, label %500, label %854

500:                                              ; preds = %495
  %501 = add nsw i64 %476, 2
  %502 = getelementptr inbounds i32, ptr %1, i64 %501
  %503 = load i32, ptr %502, align 4, !tbaa !11
  %504 = icmp sgt i32 %403, %503
  br i1 %504, label %505, label %854

505:                                              ; preds = %500
  %506 = add nsw i64 %476, 3
  %507 = getelementptr inbounds i32, ptr %1, i64 %506
  %508 = load i32, ptr %507, align 4, !tbaa !11
  %509 = icmp sgt i32 %403, %508
  br i1 %509, label %510, label %854

510:                                              ; preds = %505
  %511 = add nsw i64 %401, -3
  %512 = getelementptr inbounds i32, ptr %1, i64 %511
  %513 = load i32, ptr %512, align 4, !tbaa !11
  %514 = icmp sgt i32 %403, %513
  br i1 %514, label %515, label %854

515:                                              ; preds = %510
  %516 = add nsw i64 %401, -2
  %517 = getelementptr inbounds i32, ptr %1, i64 %516
  %518 = load i32, ptr %517, align 4, !tbaa !11
  %519 = icmp sgt i32 %403, %518
  br i1 %519, label %520, label %854

520:                                              ; preds = %515
  %521 = add nsw i64 %401, -1
  %522 = getelementptr inbounds i32, ptr %1, i64 %521
  %523 = load i32, ptr %522, align 4, !tbaa !11
  %524 = icmp sgt i32 %403, %523
  br i1 %524, label %525, label %854

525:                                              ; preds = %520
  %526 = add nsw i64 %401, 1
  %527 = getelementptr inbounds i32, ptr %1, i64 %526
  %528 = load i32, ptr %527, align 4, !tbaa !11
  %529 = icmp slt i32 %403, %528
  br i1 %529, label %854, label %530

530:                                              ; preds = %525
  %531 = add nsw i64 %401, 2
  %532 = getelementptr inbounds i32, ptr %1, i64 %531
  %533 = load i32, ptr %532, align 4, !tbaa !11
  %534 = icmp slt i32 %403, %533
  br i1 %534, label %854, label %535

535:                                              ; preds = %530
  %536 = add nsw i64 %401, 3
  %537 = getelementptr inbounds i32, ptr %1, i64 %536
  %538 = load i32, ptr %537, align 4, !tbaa !11
  %539 = icmp slt i32 %403, %538
  br i1 %539, label %854, label %540

540:                                              ; preds = %535
  %541 = add nsw i64 %399, %392
  %542 = add nsw i64 %541, -3
  %543 = getelementptr inbounds i32, ptr %1, i64 %542
  %544 = load i32, ptr %543, align 4, !tbaa !11
  %545 = icmp slt i32 %403, %544
  br i1 %545, label %854, label %546

546:                                              ; preds = %540
  %547 = add nsw i64 %541, -2
  %548 = getelementptr inbounds i32, ptr %1, i64 %547
  %549 = load i32, ptr %548, align 4, !tbaa !11
  %550 = icmp slt i32 %403, %549
  br i1 %550, label %854, label %551

551:                                              ; preds = %546
  %552 = add nsw i64 %541, -1
  %553 = getelementptr inbounds i32, ptr %1, i64 %552
  %554 = load i32, ptr %553, align 4, !tbaa !11
  %555 = icmp slt i32 %403, %554
  br i1 %555, label %854, label %556

556:                                              ; preds = %551
  %557 = getelementptr inbounds i32, ptr %1, i64 %541
  %558 = load i32, ptr %557, align 4, !tbaa !11
  %559 = icmp slt i32 %403, %558
  br i1 %559, label %854, label %560

560:                                              ; preds = %556
  %561 = add nsw i64 %541, 1
  %562 = getelementptr inbounds i32, ptr %1, i64 %561
  %563 = load i32, ptr %562, align 4, !tbaa !11
  %564 = icmp slt i32 %403, %563
  br i1 %564, label %854, label %565

565:                                              ; preds = %560
  %566 = add nsw i64 %541, 2
  %567 = getelementptr inbounds i32, ptr %1, i64 %566
  %568 = load i32, ptr %567, align 4, !tbaa !11
  %569 = icmp slt i32 %403, %568
  br i1 %569, label %854, label %570

570:                                              ; preds = %565
  %571 = add nsw i64 %541, 3
  %572 = getelementptr inbounds i32, ptr %1, i64 %571
  %573 = load i32, ptr %572, align 4, !tbaa !11
  %574 = icmp slt i32 %403, %573
  br i1 %574, label %854, label %575

575:                                              ; preds = %570
  %576 = add nsw i64 %399, %394
  %577 = add nsw i64 %576, -3
  %578 = getelementptr inbounds i32, ptr %1, i64 %577
  %579 = load i32, ptr %578, align 4, !tbaa !11
  %580 = icmp slt i32 %403, %579
  br i1 %580, label %854, label %581

581:                                              ; preds = %575
  %582 = add nsw i64 %576, -2
  %583 = getelementptr inbounds i32, ptr %1, i64 %582
  %584 = load i32, ptr %583, align 4, !tbaa !11
  %585 = icmp slt i32 %403, %584
  br i1 %585, label %854, label %586

586:                                              ; preds = %581
  %587 = add nsw i64 %576, -1
  %588 = getelementptr inbounds i32, ptr %1, i64 %587
  %589 = load i32, ptr %588, align 4, !tbaa !11
  %590 = icmp slt i32 %403, %589
  br i1 %590, label %854, label %591

591:                                              ; preds = %586
  %592 = getelementptr inbounds i32, ptr %1, i64 %576
  %593 = load i32, ptr %592, align 4, !tbaa !11
  %594 = icmp slt i32 %403, %593
  br i1 %594, label %854, label %595

595:                                              ; preds = %591
  %596 = add nsw i64 %576, 1
  %597 = getelementptr inbounds i32, ptr %1, i64 %596
  %598 = load i32, ptr %597, align 4, !tbaa !11
  %599 = icmp slt i32 %403, %598
  br i1 %599, label %854, label %600

600:                                              ; preds = %595
  %601 = add nsw i64 %576, 2
  %602 = getelementptr inbounds i32, ptr %1, i64 %601
  %603 = load i32, ptr %602, align 4, !tbaa !11
  %604 = icmp slt i32 %403, %603
  br i1 %604, label %854, label %605

605:                                              ; preds = %600
  %606 = add nsw i64 %576, 3
  %607 = getelementptr inbounds i32, ptr %1, i64 %606
  %608 = load i32, ptr %607, align 4, !tbaa !11
  %609 = icmp slt i32 %403, %608
  br i1 %609, label %854, label %610

610:                                              ; preds = %605
  %611 = add nsw i64 %399, %396
  %612 = add nsw i64 %611, -3
  %613 = getelementptr inbounds i32, ptr %1, i64 %612
  %614 = load i32, ptr %613, align 4, !tbaa !11
  %615 = icmp slt i32 %403, %614
  br i1 %615, label %854, label %616

616:                                              ; preds = %610
  %617 = add nsw i64 %611, -2
  %618 = getelementptr inbounds i32, ptr %1, i64 %617
  %619 = load i32, ptr %618, align 4, !tbaa !11
  %620 = icmp slt i32 %403, %619
  br i1 %620, label %854, label %621

621:                                              ; preds = %616
  %622 = add nsw i64 %611, -1
  %623 = getelementptr inbounds i32, ptr %1, i64 %622
  %624 = load i32, ptr %623, align 4, !tbaa !11
  %625 = icmp slt i32 %403, %624
  br i1 %625, label %854, label %626

626:                                              ; preds = %621
  %627 = getelementptr inbounds i32, ptr %1, i64 %611
  %628 = load i32, ptr %627, align 4, !tbaa !11
  %629 = icmp slt i32 %403, %628
  br i1 %629, label %854, label %630

630:                                              ; preds = %626
  %631 = add nsw i64 %611, 1
  %632 = getelementptr inbounds i32, ptr %1, i64 %631
  %633 = load i32, ptr %632, align 4, !tbaa !11
  %634 = icmp slt i32 %403, %633
  br i1 %634, label %854, label %635

635:                                              ; preds = %630
  %636 = add nsw i64 %611, 2
  %637 = getelementptr inbounds i32, ptr %1, i64 %636
  %638 = load i32, ptr %637, align 4, !tbaa !11
  %639 = icmp slt i32 %403, %638
  br i1 %639, label %854, label %640

640:                                              ; preds = %635
  %641 = add nsw i64 %611, 3
  %642 = getelementptr inbounds i32, ptr %1, i64 %641
  %643 = load i32, ptr %642, align 4, !tbaa !11
  %644 = icmp slt i32 %403, %643
  br i1 %644, label %854, label %645

645:                                              ; preds = %640
  %646 = sext i32 %400 to i64
  %647 = getelementptr inbounds %struct.anon, ptr %4, i64 %646
  %648 = getelementptr inbounds %struct.anon, ptr %4, i64 %646, i32 2
  store i32 0, ptr %648, align 4, !tbaa !50
  %649 = trunc i64 %399 to i32
  store i32 %649, ptr %647, align 4, !tbaa !53
  %650 = getelementptr inbounds %struct.anon, ptr %4, i64 %646, i32 1
  store i32 %397, ptr %650, align 4, !tbaa !52
  %651 = getelementptr inbounds i8, ptr %0, i64 %447
  %652 = load i8, ptr %651, align 1, !tbaa !15
  %653 = zext i8 %652 to i16
  %654 = getelementptr inbounds i8, ptr %0, i64 %452
  %655 = load i8, ptr %654, align 1, !tbaa !15
  %656 = zext i8 %655 to i16
  %657 = add nuw nsw i16 %656, %653
  %658 = getelementptr inbounds i8, ptr %0, i64 %441
  %659 = load i8, ptr %658, align 1, !tbaa !15
  %660 = zext i8 %659 to i16
  %661 = add nuw nsw i16 %657, %660
  %662 = getelementptr inbounds i8, ptr %0, i64 %461
  %663 = load i8, ptr %662, align 1, !tbaa !15
  %664 = zext i8 %663 to i16
  %665 = add nuw nsw i16 %661, %664
  %666 = getelementptr inbounds i8, ptr %0, i64 %466
  %667 = load i8, ptr %666, align 1, !tbaa !15
  %668 = zext i8 %667 to i16
  %669 = add nuw nsw i16 %665, %668
  %670 = getelementptr inbounds i8, ptr %0, i64 %482
  %671 = load i8, ptr %670, align 1, !tbaa !15
  %672 = zext i8 %671 to i16
  %673 = add nuw nsw i16 %669, %672
  %674 = getelementptr inbounds i8, ptr %0, i64 %487
  %675 = load i8, ptr %674, align 1, !tbaa !15
  %676 = zext i8 %675 to i16
  %677 = add nuw nsw i16 %673, %676
  %678 = getelementptr inbounds i8, ptr %0, i64 %476
  %679 = load i8, ptr %678, align 1, !tbaa !15
  %680 = zext i8 %679 to i16
  %681 = add nuw nsw i16 %677, %680
  %682 = getelementptr inbounds i8, ptr %0, i64 %496
  %683 = load i8, ptr %682, align 1, !tbaa !15
  %684 = zext i8 %683 to i16
  %685 = add nuw nsw i16 %681, %684
  %686 = getelementptr inbounds i8, ptr %0, i64 %501
  %687 = load i8, ptr %686, align 1, !tbaa !15
  %688 = zext i8 %687 to i16
  %689 = add nuw nsw i16 %685, %688
  %690 = getelementptr inbounds i8, ptr %0, i64 %516
  %691 = load i8, ptr %690, align 1, !tbaa !15
  %692 = zext i8 %691 to i16
  %693 = add nuw nsw i16 %689, %692
  %694 = getelementptr inbounds i8, ptr %0, i64 %521
  %695 = load i8, ptr %694, align 1, !tbaa !15
  %696 = zext i8 %695 to i16
  %697 = add nuw nsw i16 %693, %696
  %698 = getelementptr inbounds i8, ptr %0, i64 %401
  %699 = load i8, ptr %698, align 1, !tbaa !15
  %700 = zext i8 %699 to i16
  %701 = add nuw nsw i16 %697, %700
  %702 = getelementptr inbounds i8, ptr %0, i64 %526
  %703 = load i8, ptr %702, align 1, !tbaa !15
  %704 = zext i8 %703 to i16
  %705 = add nuw nsw i16 %701, %704
  %706 = getelementptr inbounds i8, ptr %0, i64 %531
  %707 = load i8, ptr %706, align 1, !tbaa !15
  %708 = zext i8 %707 to i16
  %709 = add nuw nsw i16 %705, %708
  %710 = getelementptr inbounds i8, ptr %0, i64 %547
  %711 = load i8, ptr %710, align 1, !tbaa !15
  %712 = zext i8 %711 to i16
  %713 = add nuw nsw i16 %709, %712
  %714 = getelementptr inbounds i8, ptr %0, i64 %552
  %715 = load i8, ptr %714, align 1, !tbaa !15
  %716 = zext i8 %715 to i16
  %717 = add nuw nsw i16 %713, %716
  %718 = getelementptr inbounds i8, ptr %0, i64 %541
  %719 = load i8, ptr %718, align 1, !tbaa !15
  %720 = zext i8 %719 to i16
  %721 = add nuw nsw i16 %717, %720
  %722 = getelementptr inbounds i8, ptr %0, i64 %561
  %723 = load i8, ptr %722, align 1, !tbaa !15
  %724 = zext i8 %723 to i16
  %725 = add nuw nsw i16 %721, %724
  %726 = getelementptr inbounds i8, ptr %0, i64 %566
  %727 = load i8, ptr %726, align 1, !tbaa !15
  %728 = zext i8 %727 to i16
  %729 = add nuw nsw i16 %725, %728
  %730 = getelementptr inbounds i8, ptr %0, i64 %582
  %731 = load i8, ptr %730, align 1, !tbaa !15
  %732 = zext i8 %731 to i16
  %733 = add nuw nsw i16 %729, %732
  %734 = getelementptr inbounds i8, ptr %0, i64 %587
  %735 = load i8, ptr %734, align 1, !tbaa !15
  %736 = zext i8 %735 to i16
  %737 = add nuw nsw i16 %733, %736
  %738 = getelementptr inbounds i8, ptr %0, i64 %576
  %739 = load i8, ptr %738, align 1, !tbaa !15
  %740 = zext i8 %739 to i16
  %741 = add nuw nsw i16 %737, %740
  %742 = getelementptr inbounds i8, ptr %0, i64 %596
  %743 = load i8, ptr %742, align 1, !tbaa !15
  %744 = zext i8 %743 to i16
  %745 = add nuw nsw i16 %741, %744
  %746 = getelementptr inbounds i8, ptr %0, i64 %601
  %747 = load i8, ptr %746, align 1, !tbaa !15
  %748 = zext i8 %747 to i16
  %749 = add nuw nsw i16 %745, %748
  %750 = udiv i16 %749, 25
  %751 = zext i16 %750 to i32
  %752 = getelementptr inbounds %struct.anon, ptr %4, i64 %646, i32 5
  store i32 %751, ptr %752, align 4, !tbaa !59
  %753 = load i8, ptr %666, align 1, !tbaa !15
  %754 = zext i8 %753 to i32
  %755 = load i8, ptr %686, align 1, !tbaa !15
  %756 = zext i8 %755 to i32
  %757 = load i8, ptr %706, align 1, !tbaa !15
  %758 = zext i8 %757 to i32
  %759 = load i8, ptr %726, align 1, !tbaa !15
  %760 = zext i8 %759 to i32
  %761 = load i8, ptr %746, align 1, !tbaa !15
  %762 = zext i8 %761 to i32
  %763 = load i8, ptr %651, align 1, !tbaa !15
  %764 = zext i8 %763 to i32
  %765 = load i8, ptr %670, align 1, !tbaa !15
  %766 = zext i8 %765 to i32
  %767 = load i8, ptr %690, align 1, !tbaa !15
  %768 = zext i8 %767 to i32
  %769 = load i8, ptr %710, align 1, !tbaa !15
  %770 = zext i8 %769 to i32
  %771 = load i8, ptr %730, align 1, !tbaa !15
  %772 = zext i8 %771 to i32
  %773 = add nuw nsw i32 %756, %754
  %774 = add nuw nsw i32 %773, %758
  %775 = add nuw nsw i32 %774, %760
  %776 = add nuw nsw i32 %775, %762
  %777 = add nuw nsw i32 %764, %766
  %778 = add nuw nsw i32 %777, %768
  %779 = add nuw nsw i32 %778, %770
  %780 = add nuw nsw i32 %779, %772
  %781 = sub nsw i32 %776, %780
  %782 = load i8, ptr %662, align 1, !tbaa !15
  %783 = zext i8 %782 to i32
  %784 = load i8, ptr %682, align 1, !tbaa !15
  %785 = zext i8 %784 to i32
  %786 = load i8, ptr %702, align 1, !tbaa !15
  %787 = zext i8 %786 to i32
  %788 = load i8, ptr %722, align 1, !tbaa !15
  %789 = zext i8 %788 to i32
  %790 = load i8, ptr %742, align 1, !tbaa !15
  %791 = zext i8 %790 to i32
  %792 = load i8, ptr %654, align 1, !tbaa !15
  %793 = zext i8 %792 to i32
  %794 = load i8, ptr %674, align 1, !tbaa !15
  %795 = zext i8 %794 to i32
  %796 = load i8, ptr %694, align 1, !tbaa !15
  %797 = zext i8 %796 to i32
  %798 = load i8, ptr %714, align 1, !tbaa !15
  %799 = zext i8 %798 to i32
  %800 = load i8, ptr %734, align 1, !tbaa !15
  %801 = zext i8 %800 to i32
  %802 = shl nsw i32 %781, 1
  %803 = add nuw nsw i32 %785, %783
  %804 = add i32 %803, %802
  %805 = add i32 %804, %787
  %806 = add i32 %805, %789
  %807 = add i32 %806, %791
  %808 = add nuw nsw i32 %793, %795
  %809 = add nuw nsw i32 %808, %797
  %810 = add nuw nsw i32 %809, %799
  %811 = add nuw nsw i32 %810, %801
  %812 = sub i32 %807, %811
  %813 = load i8, ptr %738, align 1, !tbaa !15
  %814 = zext i8 %813 to i32
  %815 = load i8, ptr %658, align 1, !tbaa !15
  %816 = zext i8 %815 to i32
  %817 = add nuw nsw i32 %754, %764
  %818 = add nuw nsw i32 %762, %772
  %819 = add nuw nsw i32 %817, %783
  %820 = add nuw nsw i32 %818, %791
  %821 = add nuw nsw i32 %819, %793
  %822 = sub nsw i32 %820, %821
  %823 = add nsw i32 %822, %801
  %824 = add nsw i32 %823, %814
  %825 = sub nsw i32 %824, %816
  %826 = load i8, ptr %718, align 1, !tbaa !15
  %827 = zext i8 %826 to i32
  %828 = load i8, ptr %678, align 1, !tbaa !15
  %829 = zext i8 %828 to i32
  %830 = shl nsw i32 %825, 1
  %831 = add nuw nsw i32 %756, %766
  %832 = add nuw nsw i32 %760, %770
  %833 = add nuw nsw i32 %831, %785
  %834 = add nuw nsw i32 %832, %789
  %835 = add nuw nsw i32 %833, %795
  %836 = sub nsw i32 %834, %835
  %837 = add nsw i32 %836, %799
  %838 = add nsw i32 %837, %827
  %839 = sub nsw i32 %838, %829
  %840 = add i32 %839, %830
  %841 = trunc i32 %812 to i16
  %842 = sdiv i16 %841, 15
  %843 = sext i16 %842 to i32
  %844 = getelementptr inbounds %struct.anon, ptr %4, i64 %646, i32 3
  store i32 %843, ptr %844, align 4, !tbaa !57
  %845 = trunc i32 %840 to i16
  %846 = sdiv i16 %845, 15
  %847 = sext i16 %846 to i32
  %848 = getelementptr inbounds %struct.anon, ptr %4, i64 %646, i32 4
  store i32 %847, ptr %848, align 4, !tbaa !58
  %849 = add nsw i32 %400, 1
  %850 = icmp eq i32 %849, 15000
  br i1 %850, label %851, label %854

851:                                              ; preds = %645
  %852 = load ptr, ptr @stderr, align 8, !tbaa !7
  %853 = tail call i64 @fwrite(ptr nonnull @.str.29, i64 18, i64 1, ptr %852) #27
  tail call void @exit(i32 noundef 1) #21
  unreachable

854:                                              ; preds = %645, %640, %635, %630, %626, %621, %616, %610, %605, %600, %595, %591, %586, %581, %575, %570, %565, %560, %556, %551, %546, %540, %535, %530, %525, %520, %515, %510, %505, %500, %495, %491, %486, %481, %475, %470, %465, %460, %456, %451, %446, %440, %435, %430, %425, %421, %416, %411, %405, %398
  %855 = phi i32 [ %849, %645 ], [ %400, %640 ], [ %400, %635 ], [ %400, %630 ], [ %400, %626 ], [ %400, %621 ], [ %400, %616 ], [ %400, %610 ], [ %400, %605 ], [ %400, %600 ], [ %400, %595 ], [ %400, %591 ], [ %400, %586 ], [ %400, %581 ], [ %400, %575 ], [ %400, %570 ], [ %400, %565 ], [ %400, %560 ], [ %400, %556 ], [ %400, %551 ], [ %400, %546 ], [ %400, %540 ], [ %400, %535 ], [ %400, %530 ], [ %400, %525 ], [ %400, %520 ], [ %400, %515 ], [ %400, %510 ], [ %400, %505 ], [ %400, %500 ], [ %400, %495 ], [ %400, %491 ], [ %400, %486 ], [ %400, %481 ], [ %400, %475 ], [ %400, %470 ], [ %400, %465 ], [ %400, %460 ], [ %400, %456 ], [ %400, %451 ], [ %400, %446 ], [ %400, %440 ], [ %400, %435 ], [ %400, %430 ], [ %400, %425 ], [ %400, %421 ], [ %400, %416 ], [ %400, %411 ], [ %400, %405 ], [ %400, %398 ]
  %856 = add nuw nsw i64 %399, 1
  %857 = icmp eq i64 %856, %36
  br i1 %857, label %858, label %398, !llvm.loop !64

858:                                              ; preds = %854, %381
  %859 = phi i64 [ %382, %381 ], [ %391, %854 ]
  %860 = phi i32 [ %380, %381 ], [ %855, %854 ]
  %861 = icmp eq i64 %859, %35
  br i1 %861, label %862, label %378, !llvm.loop !65

862:                                              ; preds = %858, %30, %7
  %863 = phi i32 [ 0, %30 ], [ 0, %7 ], [ %860, %858 ]
  %864 = sext i32 %863 to i64
  %865 = getelementptr inbounds %struct.anon, ptr %4, i64 %864, i32 2
  store i32 7, ptr %865, align 4, !tbaa !50
  ret i32 undef
}

; Function Attrs: nounwind optsize uwtable
define dso_local i32 @main(i32 noundef %0, ptr nocapture noundef readonly %1) #3 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [15000 x %struct.anon], align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #22
  call void @llvm.lifetime.start.p0(i64 360000, ptr nonnull %7) #22
  %8 = icmp slt i32 %0, 3
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = tail call i32 @usage() #23
  unreachable

11:                                               ; preds = %2
  %12 = getelementptr inbounds ptr, ptr %1, i64 1
  %13 = load ptr, ptr %12, align 8, !tbaa !7
  call void @get_image(ptr noundef %13, ptr noundef nonnull %3, ptr noundef nonnull %5, ptr noundef nonnull %6) #23
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
  tail call void @exit(i32 noundef 0) #21
  unreachable

47:                                               ; preds = %42
  %48 = sext i32 %43 to i64
  %49 = getelementptr inbounds ptr, ptr %1, i64 %48
  %50 = load ptr, ptr %49, align 8, !tbaa !7
  %51 = tail call double @atof(ptr noundef %50) #28
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
  tail call void @exit(i32 noundef 0) #21
  unreachable

60:                                               ; preds = %55
  %61 = sext i32 %56 to i64
  %62 = getelementptr inbounds ptr, ptr %1, i64 %61
  %63 = load ptr, ptr %62, align 8, !tbaa !7
  %64 = tail call i32 @atoi(ptr nocapture noundef %63) #28
  br label %67

65:                                               ; preds = %15
  %66 = tail call i32 @usage() #23
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
  call void @setup_brightness_lut(ptr noundef nonnull %4, i32 noundef %80, i32 noundef 2) #23
  %97 = load ptr, ptr %3, align 8, !tbaa !7
  %98 = fpext float %86 to double
  %99 = load i32, ptr %5, align 4, !tbaa !11
  %100 = load i32, ptr %6, align 4, !tbaa !11
  %101 = load ptr, ptr %4, align 8, !tbaa !7
  tail call void @susan_smoothing(i32 noundef %83, ptr noundef %97, double noundef %98, i32 noundef %99, i32 noundef %100, ptr noundef %101) #23
  br label %158

102:                                              ; preds = %79
  %103 = load i32, ptr %5, align 4, !tbaa !11
  %104 = load i32, ptr %6, align 4, !tbaa !11
  %105 = mul nsw i32 %104, %103
  %106 = sext i32 %105 to i64
  %107 = shl nsw i64 %106, 2
  %108 = tail call noalias ptr @malloc(i64 noundef %107) #25
  call void @setup_brightness_lut(ptr noundef nonnull %4, i32 noundef %80, i32 noundef 6) #23
  %109 = icmp eq i32 %81, 0
  br i1 %109, label %120, label %110

110:                                              ; preds = %102
  %111 = icmp eq i32 %83, 0
  %112 = load ptr, ptr %3, align 8, !tbaa !7
  %113 = load ptr, ptr %4, align 8, !tbaa !7
  br i1 %111, label %116, label %114

114:                                              ; preds = %110
  %115 = tail call i32 @susan_principle_small(ptr noundef %112, ptr noundef %108, ptr noundef %113, i32 poison, i32 noundef %103, i32 noundef %104) #23
  br label %118

116:                                              ; preds = %110
  %117 = tail call i32 @susan_principle(ptr noundef %112, ptr noundef %108, ptr noundef %113, i32 noundef 2650, i32 noundef %103, i32 noundef %104) #23
  br label %118

118:                                              ; preds = %116, %114
  %119 = tail call i32 @int_to_uchar(ptr noundef %108, ptr noundef %112, i32 noundef %105) #23
  br label %158

120:                                              ; preds = %102
  %121 = tail call noalias ptr @malloc(i64 noundef %106) #25
  tail call void @llvm.memset.p0.i64(ptr align 1 %121, i8 100, i64 %106, i1 false)
  %122 = icmp eq i32 %83, 0
  %123 = load ptr, ptr %3, align 8, !tbaa !7
  %124 = load ptr, ptr %4, align 8, !tbaa !7
  br i1 %122, label %127, label %125

125:                                              ; preds = %120
  %126 = tail call i32 @susan_edges_small(ptr noundef %123, ptr noundef %108, ptr noundef %121, ptr noundef %124, i32 poison, i32 noundef %103, i32 noundef %104) #23
  br label %129

127:                                              ; preds = %120
  %128 = tail call i32 @susan_edges(ptr noundef %123, ptr noundef %108, ptr noundef %121, ptr noundef %124, i32 noundef 2650, i32 noundef %103, i32 noundef %104) #23
  br label %129

129:                                              ; preds = %127, %125
  %130 = icmp eq i32 %82, 0
  br i1 %130, label %133, label %131

131:                                              ; preds = %129
  %132 = tail call i32 @susan_thin(ptr noundef %108, ptr noundef %121, i32 noundef %103, i32 noundef %104) #23
  br label %133

133:                                              ; preds = %131, %129
  %134 = tail call i32 @edge_draw(ptr noundef %123, ptr noundef %121, i32 noundef %103, i32 noundef %104, i32 noundef %84) #23
  br label %158

135:                                              ; preds = %79
  %136 = load i32, ptr %5, align 4, !tbaa !11
  %137 = load i32, ptr %6, align 4, !tbaa !11
  %138 = mul nsw i32 %137, %136
  %139 = sext i32 %138 to i64
  %140 = shl nsw i64 %139, 2
  %141 = tail call noalias ptr @malloc(i64 noundef %140) #25
  call void @setup_brightness_lut(ptr noundef nonnull %4, i32 noundef %80, i32 noundef 6) #23
  %142 = icmp eq i32 %81, 0
  br i1 %142, label %148, label %143

143:                                              ; preds = %135
  %144 = load ptr, ptr %3, align 8, !tbaa !7
  %145 = load ptr, ptr %4, align 8, !tbaa !7
  %146 = tail call i32 @susan_principle(ptr noundef %144, ptr noundef %141, ptr noundef %145, i32 noundef 1850, i32 noundef %136, i32 noundef %137) #23
  %147 = tail call i32 @int_to_uchar(ptr noundef %141, ptr noundef %144, i32 noundef %138) #23
  br label %158

148:                                              ; preds = %135
  %149 = icmp eq i32 %85, 0
  %150 = load ptr, ptr %3, align 8, !tbaa !7
  %151 = load ptr, ptr %4, align 8, !tbaa !7
  br i1 %149, label %154, label %152

152:                                              ; preds = %148
  %153 = call i32 @susan_corners_quick(ptr noundef %150, ptr noundef %141, ptr noundef %151, i32 noundef 1850, ptr noundef nonnull %7, i32 noundef %136, i32 noundef %137) #23
  br label %156

154:                                              ; preds = %148
  %155 = call i32 @susan_corners(ptr noundef %150, ptr noundef %141, ptr noundef %151, i32 noundef 1850, ptr noundef nonnull %7, i32 noundef %136, i32 noundef %137) #23
  br label %156

156:                                              ; preds = %154, %152
  %157 = call i32 @corner_draw(ptr noundef %150, ptr noundef nonnull %7, i32 noundef %136, i32 noundef %84) #23
  br label %158

158:                                              ; preds = %156, %143, %133, %118, %96, %92
  %159 = phi i32 [ %95, %92 ], [ %137, %143 ], [ %137, %156 ], [ %104, %118 ], [ %104, %133 ], [ %100, %96 ]
  %160 = phi i32 [ %94, %92 ], [ %136, %143 ], [ %136, %156 ], [ %103, %118 ], [ %103, %133 ], [ %99, %96 ]
  %161 = phi ptr [ %93, %92 ], [ %144, %143 ], [ %150, %156 ], [ %112, %118 ], [ %123, %133 ], [ %97, %96 ]
  %162 = getelementptr inbounds ptr, ptr %1, i64 2
  %163 = load ptr, ptr %162, align 8, !tbaa !7
  %164 = tail call i32 @put_image(ptr noundef %163, ptr noundef %161, i32 noundef %160, i32 noundef %159) #23
  call void @llvm.lifetime.end.p0(i64 360000, ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #22
  ret i32 0
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(read)
declare double @atof(ptr nocapture noundef) local_unnamed_addr #19

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(read)
declare i32 @atoi(ptr nocapture noundef) local_unnamed_addr #19

; Function Attrs: noinline nounwind optsize willreturn
define internal i64 @_wyvern_slice_edge_draw__176944941(ptr %0, ptr %1) #20 {
sliceclone_:
  %2 = ptrtoint ptr %0 to i64
  %3 = ptrtoint ptr %1 to i64
  %4 = sub i64 %3, %2
  ret i64 %4
}

; Function Attrs: noinline nounwind optsize willreturn
define internal i64 @_wyvern_slice_susan_corners__839368081(i32 %0, i32 %1) #20 {
sliceclone_:
  %2 = mul nsw i32 %1, %0
  %3 = sext i32 %2 to i64
  %4 = shl nsw i64 %3, 2
  ret i64 %4
}

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
attributes #20 = { noinline nounwind optsize willreturn "Daedalus"="1" }
attributes #21 = { noreturn nounwind optsize }
attributes #22 = { nounwind }
attributes #23 = { optsize }
attributes #24 = { cold optsize }
attributes #25 = { nounwind optsize allocsize(0) }
attributes #26 = { nounwind optsize }
attributes #27 = { cold }
attributes #28 = { nounwind optsize willreturn memory(read) }

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
