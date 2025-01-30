; ModuleID = '/src/llvm-test-suite/build/MultiSource/Benchmarks/mediabench/g721/g721encode/encode.e.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g72x_state = type { i64, i16, i16, i16, i16, [2 x i16], [6 x i16], [2 x i16], [6 x i16], [2 x i16], i8 }

@pack_output.out_buffer = internal unnamed_addr global i32 0, align 4
@pack_output.out_bits = internal unnamed_addr global i32 0, align 4
@stdout = external local_unnamed_addr global ptr, align 8
@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [31 x i8] c"CCITT ADPCM Encoder -- usage:\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"\09encode [-3|4|5] [-a|u|l] < infile > outfile\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"where:\0A\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"\09-3\09Generate G.723 24kbps (3-bit) data\0A\00", align 1
@.str.4 = private unnamed_addr constant [50 x i8] c"\09-4\09Generate G.721 32kbps (4-bit) data [default]\0A\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"\09-5\09Generate G.723 40kbps (5-bit) data\0A\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"\09-a\09Process 8-bit A-law input data\0A\00", align 1
@.str.7 = private unnamed_addr constant [46 x i8] c"\09-u\09Process 8-bit u-law input data [default]\0A\00", align 1
@.str.8 = private unnamed_addr constant [42 x i8] c"\09-l\09Process 16-bit linear PCM input data\0A\00", align 1
@stdin = external local_unnamed_addr global ptr, align 8
@qtab_721 = internal global [7 x i16] [i16 -124, i16 80, i16 178, i16 246, i16 300, i16 349, i16 400], align 2
@_dqlntab = internal unnamed_addr constant [16 x i16] [i16 -2048, i16 4, i16 135, i16 213, i16 273, i16 323, i16 373, i16 425, i16 425, i16 373, i16 323, i16 273, i16 213, i16 135, i16 4, i16 -2048], align 16
@_witab = internal unnamed_addr constant [16 x i16] [i16 -12, i16 18, i16 41, i16 64, i16 112, i16 198, i16 355, i16 1122, i16 1122, i16 355, i16 198, i16 112, i16 64, i16 41, i16 18, i16 -12], align 16
@_fitab = internal unnamed_addr constant [16 x i16] [i16 0, i16 0, i16 0, i16 512, i16 512, i16 512, i16 1536, i16 3584, i16 3584, i16 1536, i16 512, i16 512, i16 512, i16 0, i16 0, i16 0], align 16
@qtab_723_24 = internal global [3 x i16] [i16 8, i16 218, i16 331], align 2
@_dqlntab.5 = internal unnamed_addr constant [8 x i16] [i16 -2048, i16 135, i16 273, i16 373, i16 373, i16 273, i16 135, i16 -2048], align 16
@_witab.6 = internal unnamed_addr constant [8 x i16] [i16 -128, i16 960, i16 4384, i16 18624, i16 18624, i16 4384, i16 960, i16 -128], align 16
@_fitab.7 = internal unnamed_addr constant [8 x i16] [i16 0, i16 512, i16 1024, i16 3584, i16 3584, i16 1024, i16 512, i16 0], align 16
@qtab_723_40 = internal global [15 x i16] [i16 -122, i16 -16, i16 68, i16 139, i16 198, i16 250, i16 298, i16 339, i16 378, i16 413, i16 445, i16 475, i16 502, i16 528, i16 553], align 16
@_dqlntab.10 = internal unnamed_addr constant [32 x i16] [i16 -2048, i16 -66, i16 28, i16 104, i16 169, i16 224, i16 274, i16 318, i16 358, i16 395, i16 429, i16 459, i16 488, i16 514, i16 539, i16 566, i16 566, i16 539, i16 514, i16 488, i16 459, i16 429, i16 395, i16 358, i16 318, i16 274, i16 224, i16 169, i16 104, i16 28, i16 -66, i16 -2048], align 16
@_witab.11 = internal unnamed_addr constant [32 x i16] [i16 448, i16 448, i16 768, i16 1248, i16 1280, i16 1312, i16 1856, i16 3200, i16 4512, i16 5728, i16 7008, i16 8960, i16 11456, i16 14080, i16 16928, i16 22272, i16 22272, i16 16928, i16 14080, i16 11456, i16 8960, i16 7008, i16 5728, i16 4512, i16 3200, i16 1856, i16 1312, i16 1280, i16 1248, i16 768, i16 448, i16 448], align 16
@_fitab.12 = internal unnamed_addr constant [32 x i16] [i16 0, i16 0, i16 0, i16 0, i16 0, i16 512, i16 512, i16 512, i16 512, i16 512, i16 1024, i16 1536, i16 2048, i16 2560, i16 3072, i16 3072, i16 3072, i16 3072, i16 2560, i16 2048, i16 1536, i16 1024, i16 512, i16 512, i16 512, i16 512, i16 512, i16 0, i16 0, i16 0, i16 0, i16 0], align 16
@power2 = internal unnamed_addr constant [15 x i16] [i16 1, i16 2, i16 4, i16 8, i16 16, i16 32, i16 64, i16 128, i16 256, i16 512, i16 1024, i16 2048, i16 4096, i16 8192, i16 16384], align 16

; Function Attrs: nofree nounwind optsize uwtable
define internal i32 @pack_output(i32 noundef %0, i32 noundef %1) #0 {
  %3 = load i32, ptr @pack_output.out_bits, align 4, !tbaa !7
  %4 = shl i32 %0, %3
  %5 = load i32, ptr @pack_output.out_buffer, align 4, !tbaa !7
  %6 = or i32 %5, %4
  store i32 %6, ptr @pack_output.out_buffer, align 4, !tbaa !7
  %7 = add nsw i32 %3, %1
  store i32 %7, ptr @pack_output.out_bits, align 4, !tbaa !7
  %8 = icmp sgt i32 %7, 7
  br i1 %8, label %9, label %17

9:                                                ; preds = %2
  %10 = add nsw i32 %7, -8
  store i32 %10, ptr @pack_output.out_bits, align 4, !tbaa !7
  %11 = lshr i32 %6, 8
  store i32 %11, ptr @pack_output.out_buffer, align 4, !tbaa !7
  %12 = load ptr, ptr @stdout, align 8, !tbaa !11
  %13 = shl i32 %6, 24
  %14 = ashr exact i32 %13, 24
  %15 = tail call i32 @fputc(i32 %14, ptr %12)
  %16 = load i32, ptr @pack_output.out_bits, align 4, !tbaa !7
  br label %17

17:                                               ; preds = %9, %2
  %18 = phi i32 [ %16, %9 ], [ %7, %2 ]
  %19 = icmp sgt i32 %18, 0
  %20 = zext i1 %19 to i32
  ret i32 %20
}

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: nounwind optsize uwtable
define dso_local i32 @main(i32 noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = alloca %struct.g72x_state, align 8
  %4 = alloca i8, align 1
  %5 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #15
  call void @g72x_init_state(ptr noundef nonnull %3) #16
  %6 = icmp sgt i32 %0, 1
  br i1 %6, label %7, label %55

7:                                                ; preds = %47, %2
  %8 = phi i32 [ %52, %47 ], [ 4, %2 ]
  %9 = phi ptr [ %51, %47 ], [ @g721_encoder, %2 ]
  %10 = phi ptr [ %50, %47 ], [ %4, %2 ]
  %11 = phi i32 [ %49, %47 ], [ 1, %2 ]
  %12 = phi i32 [ %48, %47 ], [ 1, %2 ]
  %13 = phi i32 [ %53, %47 ], [ %0, %2 ]
  %14 = phi ptr [ %15, %47 ], [ %1, %2 ]
  %15 = getelementptr inbounds ptr, ptr %14, i64 1
  %16 = load ptr, ptr %15, align 8, !tbaa !11
  %17 = load i8, ptr %16, align 1, !tbaa !13
  %18 = icmp eq i8 %17, 45
  br i1 %18, label %19, label %55

19:                                               ; preds = %7
  %20 = getelementptr inbounds i8, ptr %16, i64 1
  %21 = load i8, ptr %20, align 1, !tbaa !13
  %22 = sext i8 %21 to i32
  switch i32 %22, label %28 [
    i32 51, label %47
    i32 52, label %23
    i32 53, label %24
    i32 117, label %25
    i32 97, label %26
    i32 108, label %27
  ]

23:                                               ; preds = %19
  br label %47

24:                                               ; preds = %19
  br label %47

25:                                               ; preds = %19
  br label %47

26:                                               ; preds = %19
  br label %47

27:                                               ; preds = %19
  br label %47

28:                                               ; preds = %19
  %29 = load ptr, ptr @stderr, align 8, !tbaa !11
  %30 = call i64 @fwrite(ptr nonnull @.str, i64 30, i64 1, ptr %29) #17
  %31 = load ptr, ptr @stderr, align 8, !tbaa !11
  %32 = call i64 @fwrite(ptr nonnull @.str.1, i64 45, i64 1, ptr %31) #17
  %33 = load ptr, ptr @stderr, align 8, !tbaa !11
  %34 = call i64 @fwrite(ptr nonnull @.str.2, i64 7, i64 1, ptr %33) #17
  %35 = load ptr, ptr @stderr, align 8, !tbaa !11
  %36 = call i64 @fwrite(ptr nonnull @.str.3, i64 39, i64 1, ptr %35) #17
  %37 = load ptr, ptr @stderr, align 8, !tbaa !11
  %38 = call i64 @fwrite(ptr nonnull @.str.4, i64 49, i64 1, ptr %37) #17
  %39 = load ptr, ptr @stderr, align 8, !tbaa !11
  %40 = call i64 @fwrite(ptr nonnull @.str.5, i64 39, i64 1, ptr %39) #17
  %41 = load ptr, ptr @stderr, align 8, !tbaa !11
  %42 = call i64 @fwrite(ptr nonnull @.str.6, i64 35, i64 1, ptr %41) #17
  %43 = load ptr, ptr @stderr, align 8, !tbaa !11
  %44 = call i64 @fwrite(ptr nonnull @.str.7, i64 45, i64 1, ptr %43) #17
  %45 = load ptr, ptr @stderr, align 8, !tbaa !11
  %46 = call i64 @fwrite(ptr nonnull @.str.8, i64 41, i64 1, ptr %45) #17
  call void @exit(i32 noundef 1) #18
  unreachable

47:                                               ; preds = %27, %26, %25, %24, %23, %19
  %48 = phi i32 [ 3, %27 ], [ 2, %26 ], [ 1, %25 ], [ %12, %24 ], [ %12, %23 ], [ %12, %19 ]
  %49 = phi i32 [ 2, %27 ], [ 1, %26 ], [ 1, %25 ], [ %11, %24 ], [ %11, %23 ], [ %11, %19 ]
  %50 = phi ptr [ %5, %27 ], [ %4, %26 ], [ %4, %25 ], [ %10, %24 ], [ %10, %23 ], [ %10, %19 ]
  %51 = phi ptr [ %9, %27 ], [ %9, %26 ], [ %9, %25 ], [ @g723_40_encoder, %24 ], [ @g721_encoder, %23 ], [ @g723_24_encoder, %19 ]
  %52 = phi i32 [ %8, %27 ], [ %8, %26 ], [ %8, %25 ], [ 5, %24 ], [ 4, %23 ], [ 3, %19 ]
  %53 = add nsw i32 %13, -1
  %54 = icmp sgt i32 %13, 2
  br i1 %54, label %7, label %55, !llvm.loop !14

55:                                               ; preds = %47, %7, %2
  %56 = phi i32 [ 1, %2 ], [ %48, %47 ], [ %12, %7 ]
  %57 = phi i32 [ 1, %2 ], [ %49, %47 ], [ %11, %7 ]
  %58 = phi ptr [ %4, %2 ], [ %50, %47 ], [ %10, %7 ]
  %59 = phi ptr [ @g721_encoder, %2 ], [ %51, %47 ], [ %9, %7 ]
  %60 = phi i32 [ 4, %2 ], [ %52, %47 ], [ %8, %7 ]
  %61 = zext i32 %57 to i64
  %62 = icmp eq i32 %57, 2
  br label %63

63:                                               ; preds = %70, %55
  %64 = phi i32 [ undef, %55 ], [ %78, %70 ]
  %65 = load ptr, ptr @stdin, align 8, !tbaa !11
  %66 = call i64 @fread(ptr noundef %58, i64 noundef %61, i64 noundef 1, ptr noundef %65) #19
  %67 = icmp eq i64 %66, 1
  br i1 %67, label %70, label %68

68:                                               ; preds = %63
  %.lcssa = phi i32 [ %64, %63 ]
  %69 = icmp eq i32 %.lcssa, 0
  br i1 %69, label %82, label %79

70:                                               ; preds = %63
  %71 = load i16, ptr %5, align 2
  %72 = sext i16 %71 to i32
  %73 = load i8, ptr %4, align 1
  %74 = zext i8 %73 to i32
  %75 = select i1 %62, i32 %72, i32 %74
  %76 = call i32 (i32, i32, ptr, ...) %59(i32 noundef %75, i32 noundef %56, ptr noundef nonnull %3) #16, !callees !16
  %77 = and i32 %76, 255
  %78 = call i32 @pack_output(i32 noundef %77, i32 noundef %60) #19, !range !17
  br label %63, !llvm.loop !18

79:                                               ; preds = %79, %68
  %80 = call i32 @pack_output(i32 noundef 0, i32 noundef %60) #19, !range !17
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %79, !llvm.loop !19

82:                                               ; preds = %79, %68
  %83 = load ptr, ptr @stdout, align 8, !tbaa !11
  %84 = call i32 @fclose(ptr noundef %83) #19
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #15
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nofree nounwind optsize
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind optsize
declare noundef i64 @fread(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal i32 @alaw2linear(i8 noundef zeroext %0) #6 {
  %2 = xor i8 %0, 85
  %3 = zext i8 %2 to i32
  %4 = shl nuw nsw i32 %3, 4
  %5 = and i32 %4, 240
  %6 = lshr i32 %3, 4
  %7 = and i32 %6, 7
  switch i32 %7, label %12 [
    i32 0, label %8
    i32 1, label %10
  ]

8:                                                ; preds = %1
  %9 = or i32 %5, 8
  br label %16

10:                                               ; preds = %1
  %11 = or i32 %5, 264
  br label %16

12:                                               ; preds = %1
  %13 = or i32 %5, 264
  %14 = add nsw i32 %7, -1
  %15 = shl nuw nsw i32 %13, %14
  br label %16

16:                                               ; preds = %12, %10, %8
  %17 = phi i32 [ %15, %12 ], [ %11, %10 ], [ %9, %8 ]
  %18 = sub nsw i32 0, %17
  %19 = icmp slt i8 %0, 0
  %20 = select i1 %19, i32 %17, i32 %18
  ret i32 %20
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal i32 @ulaw2linear(i8 noundef zeroext %0) #6 {
  %2 = xor i8 %0, -1
  %3 = zext i8 %2 to i32
  %4 = shl nuw nsw i32 %3, 3
  %5 = and i32 %4, 120
  %6 = or i32 %5, 132
  %7 = lshr i32 %3, 4
  %8 = and i32 %7, 7
  %9 = shl nuw nsw i32 %6, %8
  %10 = icmp slt i8 %0, 0
  %11 = sub nsw i32 132, %9
  %12 = add nsw i32 %9, -132
  %13 = select i1 %10, i32 %12, i32 %11
  ret i32 %13
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @g721_encoder(i32 noundef %0, i32 noundef %1, ptr noundef %2) #2 {
  switch i32 %1, label %55 [
    i32 2, label %4
    i32 1, label %6
    i32 3, label %8
  ]

4:                                                ; preds = %3
  %5 = tail call i32 (i32, ...) @alaw2linear(i32 noundef %0) #16
  br label %8

6:                                                ; preds = %3
  %7 = tail call i32 (i32, ...) @ulaw2linear(i32 noundef %0) #16
  br label %8

8:                                                ; preds = %6, %4, %3
  %9 = phi i32 [ %7, %6 ], [ %5, %4 ], [ %0, %3 ]
  %10 = lshr i32 %9, 2
  %11 = tail call i32 (ptr, ...) @predictor_zero(ptr noundef %2) #16
  %12 = shl i32 %11, 16
  %13 = ashr exact i32 %12, 16
  %14 = ashr i32 %12, 17
  %15 = tail call i32 (ptr, ...) @predictor_pole(ptr noundef %2) #16
  %16 = add nsw i32 %13, %15
  %17 = shl i32 %16, 15
  %18 = ashr i32 %17, 16
  %19 = sub nsw i32 %10, %18
  %20 = tail call i32 (ptr, ...) @step_size(ptr noundef %2) #16
  %21 = shl i32 %19, 16
  %22 = ashr exact i32 %21, 16
  %23 = shl i32 %20, 16
  %24 = ashr exact i32 %23, 16
  %25 = tail call i32 (i32, i32, ptr, i32, ...) @quantize(i32 noundef %22, i32 noundef %24, ptr noundef nonnull @qtab_721, i32 noundef 7) #16
  %26 = zext i32 %25 to i64
  %27 = shl i32 %25, 16
  %28 = ashr exact i32 %27, 16
  %29 = and i32 %25, 8
  %30 = shl i64 %26, 48
  %31 = ashr exact i64 %30, 48
  %32 = getelementptr inbounds [16 x i16], ptr @_dqlntab, i64 0, i64 %31
  %33 = load i16, ptr %32, align 2, !tbaa !20
  %34 = sext i16 %33 to i32
  %35 = tail call i32 (i32, i32, i32, ...) @reconstruct(i32 noundef %29, i32 noundef %34, i32 noundef %24) #16
  %36 = shl i32 %35, 16
  %37 = ashr exact i32 %36, 16
  %38 = icmp slt i32 %36, 0
  %39 = and i32 %35, 16383
  %40 = sub nsw i32 0, %39
  %41 = select i1 %38, i32 %40, i32 %37
  %42 = add nsw i32 %41, %18
  %43 = shl i32 %42, 16
  %44 = ashr exact i32 %43, 16
  %45 = add nsw i32 %41, %14
  %46 = getelementptr inbounds [16 x i16], ptr @_witab, i64 0, i64 %31
  %47 = load i16, ptr %46, align 2, !tbaa !20
  %48 = sext i16 %47 to i32
  %49 = shl nsw i32 %48, 5
  %50 = getelementptr inbounds [16 x i16], ptr @_fitab, i64 0, i64 %31
  %51 = load i16, ptr %50, align 2, !tbaa !20
  %52 = sext i16 %51 to i32
  %53 = shl i32 %45, 16
  %54 = ashr exact i32 %53, 16
  tail call void (i32, i32, i32, i32, i32, i32, i32, ptr, ...) @update(i32 noundef 4, i32 noundef %24, i32 noundef %49, i32 noundef %52, i32 noundef %37, i32 noundef %44, i32 noundef %54, ptr noundef %2) #16
  br label %55

55:                                               ; preds = %8, %3
  %56 = phi i32 [ %28, %8 ], [ -1, %3 ]
  ret i32 %56
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @g723_24_encoder(i32 noundef %0, i32 noundef %1, ptr noundef %2) #2 {
  switch i32 %1, label %53 [
    i32 2, label %4
    i32 1, label %6
    i32 3, label %8
  ]

4:                                                ; preds = %3
  %5 = tail call i32 (i32, ...) @alaw2linear(i32 noundef %0) #16
  br label %8

6:                                                ; preds = %3
  %7 = tail call i32 (i32, ...) @ulaw2linear(i32 noundef %0) #16
  br label %8

8:                                                ; preds = %6, %4, %3
  %9 = phi i32 [ %7, %6 ], [ %5, %4 ], [ %0, %3 ]
  %10 = lshr i32 %9, 2
  %11 = tail call i32 (ptr, ...) @predictor_zero(ptr noundef %2) #16
  %12 = shl i32 %11, 16
  %13 = ashr i32 %12, 17
  %14 = tail call i32 (ptr, ...) @predictor_pole(ptr noundef %2) #16
  %15 = add i32 %14, %11
  %16 = shl i32 %15, 16
  %17 = ashr i32 %16, 17
  %18 = sub nsw i32 %10, %17
  %19 = tail call i32 (ptr, ...) @step_size(ptr noundef %2) #16
  %20 = shl i32 %18, 16
  %21 = ashr exact i32 %20, 16
  %22 = shl i32 %19, 16
  %23 = ashr exact i32 %22, 16
  %24 = tail call i32 (i32, i32, ptr, i32, ...) @quantize(i32 noundef %21, i32 noundef %23, ptr noundef nonnull @qtab_723_24, i32 noundef 3) #16
  %25 = zext i32 %24 to i64
  %26 = shl i32 %24, 16
  %27 = ashr exact i32 %26, 16
  %28 = and i32 %24, 4
  %29 = shl i64 %25, 48
  %30 = ashr exact i64 %29, 48
  %31 = getelementptr inbounds [8 x i16], ptr @_dqlntab.5, i64 0, i64 %30
  %32 = load i16, ptr %31, align 2, !tbaa !20
  %33 = sext i16 %32 to i32
  %34 = tail call i32 (i32, i32, i32, ...) @reconstruct(i32 noundef %28, i32 noundef %33, i32 noundef %23) #16
  %35 = shl i32 %34, 16
  %36 = ashr exact i32 %35, 16
  %37 = icmp slt i32 %35, 0
  %38 = and i32 %34, 16383
  %39 = sub nsw i32 0, %38
  %40 = select i1 %37, i32 %39, i32 %36
  %41 = add nsw i32 %40, %17
  %42 = shl i32 %41, 16
  %43 = ashr exact i32 %42, 16
  %44 = add nsw i32 %40, %13
  %45 = getelementptr inbounds [8 x i16], ptr @_witab.6, i64 0, i64 %30
  %46 = load i16, ptr %45, align 2, !tbaa !20
  %47 = sext i16 %46 to i32
  %48 = getelementptr inbounds [8 x i16], ptr @_fitab.7, i64 0, i64 %30
  %49 = load i16, ptr %48, align 2, !tbaa !20
  %50 = sext i16 %49 to i32
  %51 = shl i32 %44, 16
  %52 = ashr exact i32 %51, 16
  tail call void (i32, i32, i32, i32, i32, i32, i32, ptr, ...) @update(i32 noundef 3, i32 noundef %23, i32 noundef %47, i32 noundef %50, i32 noundef %36, i32 noundef %43, i32 noundef %52, ptr noundef %2) #16
  br label %53

53:                                               ; preds = %8, %3
  %54 = phi i32 [ %27, %8 ], [ -1, %3 ]
  ret i32 %54
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @g723_40_encoder(i32 noundef %0, i32 noundef %1, ptr noundef %2) #2 {
  switch i32 %1, label %53 [
    i32 2, label %4
    i32 1, label %6
    i32 3, label %8
  ]

4:                                                ; preds = %3
  %5 = tail call i32 (i32, ...) @alaw2linear(i32 noundef %0) #16
  br label %8

6:                                                ; preds = %3
  %7 = tail call i32 (i32, ...) @ulaw2linear(i32 noundef %0) #16
  br label %8

8:                                                ; preds = %6, %4, %3
  %9 = phi i32 [ %7, %6 ], [ %5, %4 ], [ %0, %3 ]
  %10 = lshr i32 %9, 2
  %11 = tail call i32 (ptr, ...) @predictor_zero(ptr noundef %2) #16
  %12 = shl i32 %11, 16
  %13 = ashr i32 %12, 17
  %14 = tail call i32 (ptr, ...) @predictor_pole(ptr noundef %2) #16
  %15 = add i32 %14, %11
  %16 = shl i32 %15, 16
  %17 = ashr i32 %16, 17
  %18 = sub nsw i32 %10, %17
  %19 = tail call i32 (ptr, ...) @step_size(ptr noundef %2) #16
  %20 = shl i32 %18, 16
  %21 = ashr exact i32 %20, 16
  %22 = shl i32 %19, 16
  %23 = ashr exact i32 %22, 16
  %24 = tail call i32 (i32, i32, ptr, i32, ...) @quantize(i32 noundef %21, i32 noundef %23, ptr noundef nonnull @qtab_723_40, i32 noundef 15) #16
  %25 = zext i32 %24 to i64
  %26 = shl i32 %24, 16
  %27 = ashr exact i32 %26, 16
  %28 = and i32 %24, 16
  %29 = shl i64 %25, 48
  %30 = ashr exact i64 %29, 48
  %31 = getelementptr inbounds [32 x i16], ptr @_dqlntab.10, i64 0, i64 %30
  %32 = load i16, ptr %31, align 2, !tbaa !20
  %33 = sext i16 %32 to i32
  %34 = tail call i32 (i32, i32, i32, ...) @reconstruct(i32 noundef %28, i32 noundef %33, i32 noundef %23) #16
  %35 = shl i32 %34, 16
  %36 = ashr exact i32 %35, 16
  %37 = icmp slt i32 %35, 0
  %38 = and i32 %34, 32767
  %39 = sub nsw i32 0, %38
  %40 = select i1 %37, i32 %39, i32 %36
  %41 = add nsw i32 %40, %17
  %42 = shl i32 %41, 16
  %43 = ashr exact i32 %42, 16
  %44 = add nsw i32 %40, %13
  %45 = getelementptr inbounds [32 x i16], ptr @_witab.11, i64 0, i64 %30
  %46 = load i16, ptr %45, align 2, !tbaa !20
  %47 = sext i16 %46 to i32
  %48 = getelementptr inbounds [32 x i16], ptr @_fitab.12, i64 0, i64 %30
  %49 = load i16, ptr %48, align 2, !tbaa !20
  %50 = sext i16 %49 to i32
  %51 = shl i32 %44, 16
  %52 = ashr exact i32 %51, 16
  tail call void (i32, i32, i32, i32, i32, i32, i32, ptr, ...) @update(i32 noundef 5, i32 noundef %23, i32 noundef %47, i32 noundef %50, i32 noundef %36, i32 noundef %43, i32 noundef %52, ptr noundef %2) #16
  br label %53

53:                                               ; preds = %8, %3
  %54 = phi i32 [ %27, %8 ], [ -1, %3 ]
  ret i32 %54
}

; Function Attrs: nofree nosync nounwind optsize memory(argmem: write) uwtable
define internal void @g72x_init_state(ptr nocapture noundef writeonly %0) #7 {
  store i64 34816, ptr %0, align 8, !tbaa !22
  %2 = getelementptr inbounds %struct.g72x_state, ptr %0, i64 0, i32 1
  store i16 544, ptr %2, align 8, !tbaa !25
  %3 = getelementptr inbounds %struct.g72x_state, ptr %0, i64 0, i32 2
  %4 = getelementptr i8, ptr %0, i64 32
  store i32 0, ptr %4, align 2
  %5 = getelementptr inbounds %struct.g72x_state, ptr %0, i64 0, i32 9, i64 0
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %3, i8 0, i64 10, i1 false)
  store i16 32, ptr %5, align 2, !tbaa !20
  %6 = getelementptr inbounds %struct.g72x_state, ptr %0, i64 0, i32 9, i64 1
  store i16 32, ptr %6, align 2, !tbaa !20
  %7 = getelementptr i8, ptr %0, i64 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(12) %7, i8 0, i64 12, i1 false), !tbaa !20
  %8 = getelementptr inbounds %struct.g72x_state, ptr %0, i64 0, i32 8, i64 0
  store i16 32, ptr %8, align 2, !tbaa !20
  %9 = getelementptr inbounds %struct.g72x_state, ptr %0, i64 0, i32 8, i64 1
  store i16 32, ptr %9, align 2, !tbaa !20
  %10 = getelementptr inbounds %struct.g72x_state, ptr %0, i64 0, i32 8, i64 2
  store i16 32, ptr %10, align 2, !tbaa !20
  %11 = getelementptr inbounds %struct.g72x_state, ptr %0, i64 0, i32 8, i64 3
  store i16 32, ptr %11, align 2, !tbaa !20
  %12 = getelementptr inbounds %struct.g72x_state, ptr %0, i64 0, i32 8, i64 4
  store i16 32, ptr %12, align 2, !tbaa !20
  %13 = getelementptr inbounds %struct.g72x_state, ptr %0, i64 0, i32 8, i64 5
  store i16 32, ptr %13, align 2, !tbaa !20
  %14 = getelementptr inbounds %struct.g72x_state, ptr %0, i64 0, i32 10
  store i8 0, ptr %14, align 4, !tbaa !26
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: nofree norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal i32 @predictor_zero(ptr nocapture noundef readonly %0) #9 {
  %2 = getelementptr inbounds %struct.g72x_state, ptr %0, i64 0, i32 6
  %3 = load i16, ptr %2, align 4, !tbaa !20
  %4 = ashr i16 %3, 2
  %5 = sext i16 %4 to i32
  %6 = getelementptr inbounds %struct.g72x_state, ptr %0, i64 0, i32 8
  %7 = load i16, ptr %6, align 4, !tbaa !20
  %8 = sext i16 %7 to i32
  %9 = tail call fastcc i32 @fmult(i32 noundef %5, i32 noundef %8) #19, !range !27
  br label %10

10:                                               ; preds = %10, %1
  %11 = phi i64 [ 1, %1 ], [ %22, %10 ]
  %12 = phi i32 [ %9, %1 ], [ %21, %10 ]
  %13 = getelementptr inbounds %struct.g72x_state, ptr %0, i64 0, i32 6, i64 %11
  %14 = load i16, ptr %13, align 2, !tbaa !20
  %15 = ashr i16 %14, 2
  %16 = sext i16 %15 to i32
  %17 = getelementptr inbounds %struct.g72x_state, ptr %0, i64 0, i32 8, i64 %11
  %18 = load i16, ptr %17, align 2, !tbaa !20
  %19 = sext i16 %18 to i32
  %20 = tail call fastcc i32 @fmult(i32 noundef %16, i32 noundef %19) #19, !range !27
  %21 = add nsw i32 %20, %12
  %22 = add nuw nsw i64 %11, 1
  %23 = icmp eq i64 %22, 6
  br i1 %23, label %24, label %10, !llvm.loop !28

24:                                               ; preds = %10
  %.lcssa = phi i32 [ %21, %10 ]
  ret i32 %.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @fmult(i32 noundef %0, i32 noundef %1) unnamed_addr #9 {
  %3 = icmp sgt i32 %0, 0
  %4 = sub nsw i32 0, %0
  %5 = and i32 %4, 8191
  %6 = select i1 %3, i32 %0, i32 %5
  %7 = shl i32 %6, 16
  %8 = ashr exact i32 %7, 16
  br label %9

9:                                                ; preds = %15, %2
  %10 = phi i32 [ %17, %15 ], [ 0, %2 ]
  %11 = phi ptr [ %16, %15 ], [ @power2, %2 ]
  %12 = load i16, ptr %11, align 2, !tbaa !20
  %13 = sext i16 %12 to i32
  %14 = icmp slt i32 %8, %13
  br i1 %14, label %19, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds i16, ptr %11, i64 1
  %17 = add nuw nsw i32 %10, 1
  %18 = icmp eq i32 %17, 15
  br i1 %18, label %19, label %9, !llvm.loop !29

19:                                               ; preds = %15, %9
  %20 = phi i32 [ %10, %9 ], [ 15, %15 ]
  %21 = trunc i32 %20 to i16
  %22 = add i16 %21, -6
  %23 = icmp eq i32 %7, 0
  br i1 %23, label %32, label %24

24:                                               ; preds = %19
  %25 = sext i16 %22 to i32
  %26 = icmp sgt i16 %22, -1
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = ashr i32 %8, %25
  br label %32

29:                                               ; preds = %24
  %30 = sub nsw i32 0, %25
  %31 = shl i32 %8, %30
  br label %32

32:                                               ; preds = %29, %27, %19
  %33 = phi i32 [ 32, %19 ], [ %28, %27 ], [ %31, %29 ]
  %34 = trunc i32 %1 to i16
  %35 = lshr i16 %34, 6
  %36 = and i16 %35, 15
  %37 = add nsw i16 %36, -13
  %38 = add i16 %37, %22
  %39 = shl i32 %33, 16
  %40 = ashr exact i32 %39, 16
  %41 = and i32 %1, 63
  %42 = mul nsw i32 %40, %41
  %43 = add nsw i32 %42, 48
  %44 = lshr i32 %43, 4
  %45 = sext i16 %38 to i32
  %46 = icmp sgt i16 %38, -1
  br i1 %46, label %47, label %50

47:                                               ; preds = %32
  %48 = shl i32 %44, %45
  %49 = and i32 %48, 32767
  br label %55

50:                                               ; preds = %32
  %51 = shl i32 %44, 16
  %52 = ashr exact i32 %51, 16
  %53 = sub nsw i32 0, %45
  %54 = ashr i32 %52, %53
  br label %55

55:                                               ; preds = %50, %47
  %56 = phi i32 [ %49, %47 ], [ %54, %50 ]
  %57 = xor i32 %1, %0
  %58 = icmp slt i32 %57, 0
  %59 = sub nsw i32 0, %56
  %60 = select i1 %58, i32 %59, i32 %56
  ret i32 %60
}

; Function Attrs: nofree norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal i32 @predictor_pole(ptr nocapture noundef readonly %0) #9 {
  %2 = getelementptr inbounds %struct.g72x_state, ptr %0, i64 0, i32 5
  %3 = getelementptr inbounds %struct.g72x_state, ptr %0, i64 0, i32 5, i64 1
  %4 = load i16, ptr %3, align 2, !tbaa !20
  %5 = ashr i16 %4, 2
  %6 = sext i16 %5 to i32
  %7 = getelementptr inbounds %struct.g72x_state, ptr %0, i64 0, i32 9
  %8 = getelementptr inbounds %struct.g72x_state, ptr %0, i64 0, i32 9, i64 1
  %9 = load i16, ptr %8, align 2, !tbaa !20
  %10 = sext i16 %9 to i32
  %11 = tail call fastcc i32 @fmult(i32 noundef %6, i32 noundef %10) #19, !range !27
  %12 = load i16, ptr %2, align 8, !tbaa !20
  %13 = ashr i16 %12, 2
  %14 = sext i16 %13 to i32
  %15 = load i16, ptr %7, align 8, !tbaa !20
  %16 = sext i16 %15 to i32
  %17 = tail call fastcc i32 @fmult(i32 noundef %14, i32 noundef %16) #19, !range !27
  %18 = add nsw i32 %17, %11
  ret i32 %18
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @step_size(ptr nocapture noundef readonly %0) #10 {
  %2 = getelementptr inbounds %struct.g72x_state, ptr %0, i64 0, i32 4
  %3 = load i16, ptr %2, align 2, !tbaa !30
  %4 = icmp sgt i16 %3, 255
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.g72x_state, ptr %0, i64 0, i32 1
  %7 = load i16, ptr %6, align 8, !tbaa !25
  %8 = sext i16 %7 to i32
  br label %31

9:                                                ; preds = %1
  %10 = load i64, ptr %0, align 8, !tbaa !22
  %11 = lshr i64 %10, 6
  %12 = trunc i64 %11 to i32
  %13 = getelementptr inbounds %struct.g72x_state, ptr %0, i64 0, i32 1
  %14 = load i16, ptr %13, align 8, !tbaa !25
  %15 = sext i16 %14 to i32
  %16 = sub nsw i32 %15, %12
  %17 = ashr i16 %3, 2
  %18 = sext i16 %17 to i32
  %19 = icmp sgt i32 %16, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %9
  %21 = mul nsw i32 %16, %18
  %22 = ashr i32 %21, 6
  %23 = add nsw i32 %22, %12
  br label %31

24:                                               ; preds = %9
  %25 = icmp slt i32 %16, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %24
  %27 = mul nsw i32 %16, %18
  %28 = add nsw i32 %27, 63
  %29 = ashr i32 %28, 6
  %30 = add nsw i32 %29, %12
  br label %31

31:                                               ; preds = %26, %24, %20, %5
  %32 = phi i32 [ %8, %5 ], [ %23, %20 ], [ %30, %26 ], [ %12, %24 ]
  ret i32 %32
}

; Function Attrs: nofree nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal i32 @quantize(i32 noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) #11 {
  %5 = tail call i32 @llvm.abs.i32(i32 %0, i1 true)
  %6 = shl i32 %5, 16
  %7 = ashr i32 %6, 17
  br label %8

8:                                                ; preds = %14, %4
  %9 = phi i32 [ %16, %14 ], [ 0, %4 ]
  %10 = phi ptr [ %15, %14 ], [ @power2, %4 ]
  %11 = load i16, ptr %10, align 2, !tbaa !20
  %12 = sext i16 %11 to i32
  %13 = icmp slt i32 %7, %12
  br i1 %13, label %18, label %14

14:                                               ; preds = %8
  %15 = getelementptr inbounds i16, ptr %10, i64 1
  %16 = add nuw nsw i32 %9, 1
  %17 = icmp eq i32 %16, 15
  br i1 %17, label %18, label %8, !llvm.loop !29

18:                                               ; preds = %14, %8
  %19 = phi i32 [ %9, %8 ], [ 15, %14 ]
  %20 = ashr exact i32 %6, 9
  %21 = shl i32 %19, 16
  %22 = ashr exact i32 %21, 16
  %23 = ashr i32 %20, %22
  %24 = and i32 %23, 127
  %25 = lshr exact i32 %21, 9
  %26 = lshr i32 %1, 2
  %27 = sub nsw i32 %25, %26
  %28 = add nsw i32 %27, %24
  %29 = shl i32 %28, 16
  %30 = ashr exact i32 %29, 16
  %31 = icmp sgt i32 %3, 0
  br i1 %31, label %32, label %45

32:                                               ; preds = %38, %18
  %33 = phi i32 [ %40, %38 ], [ 0, %18 ]
  %34 = phi ptr [ %39, %38 ], [ %2, %18 ]
  %35 = load i16, ptr %34, align 2, !tbaa !20
  %36 = sext i16 %35 to i32
  %37 = icmp slt i32 %30, %36
  br i1 %37, label %42, label %38

38:                                               ; preds = %32
  %39 = getelementptr inbounds i16, ptr %34, i64 1
  %40 = add nuw nsw i32 %33, 1
  %41 = icmp eq i32 %40, %3
  br i1 %41, label %42, label %32, !llvm.loop !29

42:                                               ; preds = %38, %32
  %43 = phi i32 [ %33, %32 ], [ %3, %38 ]
  %44 = icmp slt i32 %0, 0
  br i1 %44, label %47, label %52

45:                                               ; preds = %18
  %46 = icmp slt i32 %0, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %45, %42
  %48 = phi i32 [ 0, %45 ], [ %43, %42 ]
  %49 = shl i32 %3, 1
  %50 = or i32 %49, 1
  %51 = sub i32 %50, %48
  br label %57

52:                                               ; preds = %42
  %53 = icmp eq i32 %43, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %52, %45
  %55 = shl i32 %3, 1
  %56 = or i32 %55, 1
  br label %57

57:                                               ; preds = %54, %52, %47
  %58 = phi i32 [ %51, %47 ], [ %56, %54 ], [ %43, %52 ]
  ret i32 %58
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #12

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal i32 @reconstruct(i32 noundef %0, i32 noundef %1, i32 noundef %2) #6 {
  %4 = lshr i32 %2, 2
  %5 = add i32 %4, %1
  %6 = and i32 %5, 32768
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %3
  %9 = icmp eq i32 %0, 0
  %10 = select i1 %9, i32 0, i32 -32768
  br label %22

11:                                               ; preds = %3
  %12 = lshr i32 %5, 7
  %13 = and i32 %12, 15
  %14 = shl i32 %5, 7
  %15 = and i32 %14, 16256
  %16 = or i32 %15, 16384
  %17 = sub nsw i32 14, %13
  %18 = lshr i32 %16, %17
  %19 = icmp eq i32 %0, 0
  %20 = or i32 %18, -32768
  %21 = select i1 %19, i32 %18, i32 %20
  br label %22

22:                                               ; preds = %11, %8
  %23 = phi i32 [ %10, %8 ], [ %21, %11 ]
  ret i32 %23
}

; Function Attrs: nofree nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @update(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr nocapture noundef %7) #13 {
  %9 = lshr i32 %6, 31
  %10 = trunc i32 %9 to i16
  %11 = and i32 %4, 32767
  %12 = getelementptr inbounds %struct.g72x_state, ptr %7, i64 0, i32 10
  %13 = load i8, ptr %12, align 4, !tbaa !26
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %32, label %15

15:                                               ; preds = %8
  %16 = load i64, ptr %7, align 8, !tbaa !22
  %17 = trunc i64 %16 to i32
  %18 = shl i32 %17, 1
  %19 = icmp sgt i32 %18, 655359
  %20 = lshr i32 %17, 10
  %21 = and i32 %20, 31
  %22 = or i32 %21, 32
  %23 = ashr i32 %18, 16
  %24 = shl i32 %22, %23
  %25 = shl i32 %24, 16
  %26 = ashr exact i32 %25, 16
  %27 = select i1 %19, i32 31744, i32 %26
  %28 = ashr i32 %27, 1
  %29 = add nsw i32 %28, %27
  %30 = ashr i32 %29, 1
  %31 = icmp sgt i32 %11, %30
  br label %32

32:                                               ; preds = %15, %8
  %33 = phi i1 [ false, %8 ], [ %31, %15 ]
  %34 = sub nsw i32 %2, %1
  %35 = lshr i32 %34, 5
  %36 = add i32 %35, %1
  %37 = trunc i32 %36 to i16
  %38 = getelementptr inbounds %struct.g72x_state, ptr %7, i64 0, i32 1
  store i16 %37, ptr %38, align 8, !tbaa !25
  %39 = shl i32 %36, 16
  %40 = icmp slt i32 %39, 35651584
  br i1 %40, label %43, label %41

41:                                               ; preds = %32
  %42 = icmp ugt i32 %39, 335544320
  br i1 %42, label %43, label %45

43:                                               ; preds = %41, %32
  %44 = phi i16 [ 544, %32 ], [ 5120, %41 ]
  store i16 %44, ptr %38, align 8, !tbaa !25
  br label %45

45:                                               ; preds = %43, %41
  %46 = phi i16 [ %37, %41 ], [ %44, %43 ]
  %47 = sext i16 %46 to i64
  %48 = load i64, ptr %7, align 8, !tbaa !22
  %49 = sub nsw i64 0, %48
  %50 = ashr i64 %49, 6
  %51 = add i64 %48, %47
  %52 = add i64 %51, %50
  store i64 %52, ptr %7, align 8, !tbaa !22
  %53 = getelementptr inbounds %struct.g72x_state, ptr %7, i64 0, i32 5
  %54 = getelementptr inbounds %struct.g72x_state, ptr %7, i64 0, i32 5, i64 1
  br i1 %33, label %55, label %56

55:                                               ; preds = %45
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %53, i8 0, i64 16, i1 false)
  br label %144

56:                                               ; preds = %45
  %57 = load i16, ptr %54, align 2, !tbaa !20
  %58 = ashr i16 %57, 7
  %59 = sub i16 %57, %58
  %60 = icmp eq i32 %6, 0
  br i1 %60, label %96, label %61

61:                                               ; preds = %56
  %62 = getelementptr inbounds %struct.g72x_state, ptr %7, i64 0, i32 7
  %63 = load i16, ptr %62, align 8, !tbaa !20
  %64 = icmp eq i16 %63, %10
  %65 = load i16, ptr %53, align 8, !tbaa !20
  %66 = sub i16 0, %65
  %67 = select i1 %64, i16 %66, i16 %65
  %68 = icmp slt i16 %67, -8191
  br i1 %68, label %69, label %71

69:                                               ; preds = %61
  %70 = add i16 %59, -256
  br label %78

71:                                               ; preds = %61
  %72 = icmp sgt i16 %67, 8191
  br i1 %72, label %73, label %75

73:                                               ; preds = %71
  %74 = add i16 %59, 255
  br label %78

75:                                               ; preds = %71
  %76 = ashr i16 %67, 5
  %77 = add i16 %76, %59
  br label %78

78:                                               ; preds = %75, %73, %69
  %79 = phi i16 [ %70, %69 ], [ %74, %73 ], [ %77, %75 ]
  %80 = getelementptr inbounds %struct.g72x_state, ptr %7, i64 0, i32 7, i64 1
  %81 = load i16, ptr %80, align 2, !tbaa !20
  %82 = sext i16 %81 to i32
  %83 = icmp eq i32 %9, %82
  br i1 %83, label %90, label %84

84:                                               ; preds = %78
  %85 = icmp slt i16 %79, -12159
  br i1 %85, label %100, label %86

86:                                               ; preds = %84
  %87 = icmp sgt i16 %79, 12415
  %88 = add nsw i16 %79, -128
  %89 = select i1 %87, i16 12288, i16 %88
  br label %100

90:                                               ; preds = %78
  %91 = icmp slt i16 %79, -12415
  br i1 %91, label %100, label %92

92:                                               ; preds = %90
  %93 = icmp sgt i16 %79, 12159
  %94 = add i16 %79, 128
  %95 = select i1 %93, i16 12288, i16 %94
  br label %100

96:                                               ; preds = %56
  store i16 %59, ptr %54, align 2, !tbaa !20
  %97 = load i16, ptr %53, align 8, !tbaa !20
  %98 = ashr i16 %97, 8
  %99 = sub i16 %97, %98
  br label %108

100:                                              ; preds = %92, %90, %86, %84
  %101 = phi i16 [ %95, %92 ], [ %89, %86 ], [ -12288, %90 ], [ -12288, %84 ]
  store i16 %101, ptr %54, align 2, !tbaa !20
  %102 = ashr i16 %65, 8
  %103 = sub i16 %65, %102
  br i1 %64, label %104, label %106

104:                                              ; preds = %100
  %105 = add i16 %103, 192
  br label %108

106:                                              ; preds = %100
  %107 = add i16 %103, -192
  br label %108

108:                                              ; preds = %106, %104, %96
  %109 = phi i16 [ %99, %96 ], [ %105, %104 ], [ %107, %106 ]
  %110 = phi i16 [ %59, %96 ], [ %101, %104 ], [ %101, %106 ]
  store i16 %109, ptr %53, align 8, !tbaa !20
  %111 = sub i16 15360, %110
  %112 = sext i16 %109 to i32
  %113 = sext i16 %111 to i32
  %114 = sub nsw i32 0, %113
  %115 = icmp slt i32 %112, %114
  br i1 %115, label %116, label %118

116:                                              ; preds = %108
  %117 = trunc i32 %114 to i16
  br label %120

118:                                              ; preds = %108
  %119 = icmp sgt i16 %109, %111
  br i1 %119, label %120, label %122

120:                                              ; preds = %118, %116
  %121 = phi i16 [ %117, %116 ], [ %111, %118 ]
  store i16 %121, ptr %53, align 8, !tbaa !20
  br label %122

122:                                              ; preds = %120, %118
  %123 = icmp eq i32 %0, 5
  %124 = icmp eq i32 %11, 0
  %125 = select i1 %123, i16 9, i16 8
  br label %126

126:                                              ; preds = %141, %122
  %127 = phi i64 [ 0, %122 ], [ %142, %141 ]
  %128 = getelementptr inbounds %struct.g72x_state, ptr %7, i64 0, i32 6, i64 %127
  %129 = load i16, ptr %128, align 2, !tbaa !20
  %130 = ashr i16 %129, %125
  %131 = sub i16 %129, %130
  store i16 %131, ptr %128, align 2, !tbaa !20
  br i1 %124, label %141, label %132

132:                                              ; preds = %126
  %133 = getelementptr inbounds %struct.g72x_state, ptr %7, i64 0, i32 8, i64 %127
  %134 = load i16, ptr %133, align 2, !tbaa !20
  %135 = sext i16 %134 to i32
  %136 = xor i32 %135, %4
  %137 = icmp sgt i32 %136, -1
  %138 = getelementptr inbounds %struct.g72x_state, ptr %7, i64 0, i32 6, i64 %127
  %139 = select i1 %137, i16 128, i16 -128
  %140 = add i16 %131, %139
  store i16 %140, ptr %138, align 2, !tbaa !20
  br label %141

141:                                              ; preds = %132, %126
  %142 = add nuw nsw i64 %127, 1
  %143 = icmp eq i64 %142, 6
  br i1 %143, label %144, label %126, !llvm.loop !31

144:                                              ; preds = %141, %55
  %145 = phi i16 [ undef, %55 ], [ %110, %141 ]
  %146 = getelementptr i8, ptr %7, i64 38
  %147 = getelementptr i8, ptr %7, i64 36
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %146, ptr noundef nonnull align 2 dereferenceable(10) %147, i64 10, i1 false), !tbaa !20
  %148 = icmp eq i32 %11, 0
  br i1 %148, label %149, label %152

149:                                              ; preds = %144
  %150 = icmp sgt i32 %4, -1
  %151 = select i1 %150, i16 32, i16 -992
  br label %174

152:                                              ; preds = %158, %144
  %153 = phi i32 [ %160, %158 ], [ 0, %144 ]
  %154 = phi ptr [ %159, %158 ], [ @power2, %144 ]
  %155 = load i16, ptr %154, align 2, !tbaa !20
  %156 = sext i16 %155 to i32
  %157 = icmp slt i32 %11, %156
  br i1 %157, label %162, label %158

158:                                              ; preds = %152
  %159 = getelementptr inbounds i16, ptr %154, i64 1
  %160 = add nuw nsw i32 %153, 1
  %161 = icmp eq i32 %160, 15
  br i1 %161, label %162, label %152, !llvm.loop !29

162:                                              ; preds = %158, %152
  %163 = phi i32 [ %153, %152 ], [ 15, %158 ]
  %164 = shl i32 %163, 16
  %165 = ashr exact i32 %164, 16
  %166 = ashr exact i32 %164, 10
  %167 = shl nuw nsw i32 %11, 6
  %168 = lshr i32 %167, %165
  %169 = add nsw i32 %166, 64512
  %170 = icmp slt i32 %4, 0
  %171 = select i1 %170, i32 %169, i32 %166
  %172 = add nsw i32 %171, %168
  %173 = trunc i32 %172 to i16
  br label %174

174:                                              ; preds = %162, %149
  %175 = phi i16 [ %173, %162 ], [ %151, %149 ]
  store i16 %175, ptr %147, align 4, !tbaa !20
  %176 = getelementptr inbounds %struct.g72x_state, ptr %7, i64 0, i32 9
  %177 = load i16, ptr %176, align 8, !tbaa !20
  %178 = getelementptr inbounds %struct.g72x_state, ptr %7, i64 0, i32 9, i64 1
  store i16 %177, ptr %178, align 2, !tbaa !20
  %179 = icmp eq i32 %5, 0
  br i1 %179, label %225, label %180

180:                                              ; preds = %174
  %181 = icmp sgt i32 %5, 0
  br i1 %181, label %182, label %201

182:                                              ; preds = %188, %180
  %183 = phi i32 [ %190, %188 ], [ 0, %180 ]
  %184 = phi ptr [ %189, %188 ], [ @power2, %180 ]
  %185 = load i16, ptr %184, align 2, !tbaa !20
  %186 = sext i16 %185 to i32
  %187 = icmp sgt i32 %186, %5
  br i1 %187, label %192, label %188

188:                                              ; preds = %182
  %189 = getelementptr inbounds i16, ptr %184, i64 1
  %190 = add nuw nsw i32 %183, 1
  %191 = icmp eq i32 %190, 15
  br i1 %191, label %192, label %182, !llvm.loop !29

192:                                              ; preds = %188, %182
  %193 = phi i32 [ %183, %182 ], [ 15, %188 ]
  %194 = shl i32 %193, 16
  %195 = ashr exact i32 %194, 16
  %196 = lshr exact i32 %194, 10
  %197 = shl i32 %5, 6
  %198 = ashr i32 %197, %195
  %199 = add i32 %198, %196
  %200 = trunc i32 %199 to i16
  br label %225

201:                                              ; preds = %180
  %202 = icmp ugt i32 %5, -32768
  br i1 %202, label %203, label %225

203:                                              ; preds = %201
  %204 = sub nsw i32 0, %5
  br label %205

205:                                              ; preds = %211, %203
  %206 = phi i32 [ %213, %211 ], [ 0, %203 ]
  %207 = phi ptr [ %212, %211 ], [ @power2, %203 ]
  %208 = load i16, ptr %207, align 2, !tbaa !20
  %209 = sext i16 %208 to i32
  %210 = icmp sgt i32 %209, %204
  br i1 %210, label %215, label %211

211:                                              ; preds = %205
  %212 = getelementptr inbounds i16, ptr %207, i64 1
  %213 = add nuw nsw i32 %206, 1
  %214 = icmp eq i32 %213, 15
  br i1 %214, label %215, label %205, !llvm.loop !29

215:                                              ; preds = %211, %205
  %216 = phi i32 [ %206, %205 ], [ 15, %211 ]
  %217 = shl i32 %216, 16
  %218 = ashr exact i32 %217, 16
  %219 = lshr exact i32 %217, 10
  %220 = shl nuw nsw i32 %204, 6
  %221 = lshr i32 %220, %218
  %222 = add nuw nsw i32 %221, %219
  %223 = trunc i32 %222 to i16
  %224 = add i16 %223, -1024
  br label %225

225:                                              ; preds = %215, %201, %192, %174
  %226 = phi i16 [ %200, %192 ], [ %224, %215 ], [ 32, %174 ], [ -992, %201 ]
  store i16 %226, ptr %176, align 8, !tbaa !20
  %227 = getelementptr inbounds %struct.g72x_state, ptr %7, i64 0, i32 7
  %228 = load i16, ptr %227, align 8, !tbaa !20
  %229 = getelementptr inbounds %struct.g72x_state, ptr %7, i64 0, i32 7, i64 1
  store i16 %228, ptr %229, align 2, !tbaa !20
  store i16 %10, ptr %227, align 8, !tbaa !20
  %230 = icmp slt i16 %145, -11776
  %231 = xor i1 %33, true
  %232 = and i1 %230, %231
  %233 = zext i1 %232 to i8
  %234 = xor i1 %33, true
  %235 = and i1 %230, %234
  store i8 %233, ptr %12, align 4, !tbaa !26
  %236 = getelementptr inbounds %struct.g72x_state, ptr %7, i64 0, i32 2
  %237 = load i16, ptr %236, align 2, !tbaa !32
  %238 = sext i16 %237 to i32
  %239 = sub nsw i32 %3, %238
  %240 = lshr i32 %239, 5
  %241 = trunc i32 %240 to i16
  %242 = add i16 %237, %241
  store i16 %242, ptr %236, align 2, !tbaa !32
  %243 = shl i32 %3, 2
  %244 = getelementptr inbounds %struct.g72x_state, ptr %7, i64 0, i32 3
  %245 = load i16, ptr %244, align 4, !tbaa !33
  %246 = sext i16 %245 to i32
  %247 = sub nsw i32 %243, %246
  %248 = lshr i32 %247, 7
  %249 = trunc i32 %248 to i16
  %250 = add i16 %245, %249
  store i16 %250, ptr %244, align 4, !tbaa !33
  br i1 %33, label %251, label %253

251:                                              ; preds = %225
  %252 = getelementptr inbounds %struct.g72x_state, ptr %7, i64 0, i32 4
  store i16 256, ptr %252, align 2, !tbaa !30
  br label %293

253:                                              ; preds = %225
  %254 = icmp slt i32 %1, 1536
  br i1 %254, label %255, label %263

255:                                              ; preds = %253
  %256 = getelementptr inbounds %struct.g72x_state, ptr %7, i64 0, i32 4
  %257 = load i16, ptr %256, align 2, !tbaa !30
  %258 = sext i16 %257 to i32
  %259 = sub nsw i32 512, %258
  %260 = ashr i32 %259, 4
  %261 = trunc i32 %260 to i16
  %262 = add i16 %257, %261
  store i16 %262, ptr %256, align 2, !tbaa !30
  br label %293

263:                                              ; preds = %253
  br i1 %235, label %264, label %272

264:                                              ; preds = %263
  %265 = getelementptr inbounds %struct.g72x_state, ptr %7, i64 0, i32 4
  %266 = load i16, ptr %265, align 2, !tbaa !30
  %267 = sext i16 %266 to i32
  %268 = sub nsw i32 512, %267
  %269 = ashr i32 %268, 4
  %270 = trunc i32 %269 to i16
  %271 = add i16 %266, %270
  store i16 %271, ptr %265, align 2, !tbaa !30
  br label %293

272:                                              ; preds = %263
  %273 = sext i16 %242 to i32
  %274 = shl nsw i32 %273, 2
  %275 = sext i16 %250 to i32
  %276 = sub nsw i32 %274, %275
  %277 = tail call i32 @llvm.abs.i32(i32 %276, i1 true)
  %278 = ashr i32 %275, 3
  %279 = icmp slt i32 %277, %278
  %280 = getelementptr inbounds %struct.g72x_state, ptr %7, i64 0, i32 4
  %281 = load i16, ptr %280, align 2, !tbaa !30
  %282 = sext i16 %281 to i32
  br i1 %279, label %288, label %283

283:                                              ; preds = %272
  %284 = sub nsw i32 512, %282
  %285 = ashr i32 %284, 4
  %286 = trunc i32 %285 to i16
  %287 = add i16 %281, %286
  store i16 %287, ptr %280, align 2, !tbaa !30
  br label %293

288:                                              ; preds = %272
  %289 = sub nsw i32 0, %282
  %290 = ashr i32 %289, 4
  %291 = trunc i32 %290 to i16
  %292 = add i16 %281, %291
  store i16 %292, ptr %280, align 2, !tbaa !30
  br label %293

293:                                              ; preds = %288, %283, %264, %255, %251
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #14

attributes #0 = { nofree nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind }
attributes #2 = { nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nosync nounwind optsize memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { nofree norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nofree nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #15 = { nounwind }
attributes #16 = { nounwind optsize }
attributes #17 = { cold }
attributes #18 = { noreturn nounwind optsize }
attributes #19 = { optsize }

!llvm.ident = !{!0, !0, !0, !0, !0, !0}
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
!13 = !{!9, !9, i64 0}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{ptr @g721_encoder, ptr @g723_24_encoder, ptr @g723_40_encoder}
!17 = !{i32 0, i32 2}
!18 = distinct !{!18, !15}
!19 = distinct !{!19, !15}
!20 = !{!21, !21, i64 0}
!21 = !{!"short", !9, i64 0}
!22 = !{!23, !24, i64 0}
!23 = !{!"g72x_state", !24, i64 0, !21, i64 8, !21, i64 10, !21, i64 12, !21, i64 14, !9, i64 16, !9, i64 20, !9, i64 32, !9, i64 36, !9, i64 48, !9, i64 52}
!24 = !{!"long", !9, i64 0}
!25 = !{!23, !21, i64 8}
!26 = !{!23, !9, i64 52}
!27 = !{i32 -32767, i32 32768}
!28 = distinct !{!28, !15}
!29 = distinct !{!29, !15}
!30 = !{!23, !21, i64 14}
!31 = distinct !{!31, !15}
!32 = !{!23, !21, i64 10}
!33 = !{!23, !21, i64 12}
