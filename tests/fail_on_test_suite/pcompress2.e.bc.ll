; ModuleID = '/src/llvm-test-suite/build/MultiSource/Benchmarks/FreeBench/pcompress2/pcompress2.e.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }

@rle_pos = internal global i32 0, align 4
@ari_pos = internal global i32 0, align 4
@char_to_index.13 = internal unnamed_addr global [256 x i32] zeroinitializer, align 16
@cum_freq.19 = internal unnamed_addr global [258 x i32] zeroinitializer, align 16
@low = internal global i64 0, align 8
@high = internal global i64 0, align 8
@bits_to_follow = internal global i64 0, align 8
@buffer.27 = internal unnamed_addr global i32 0, align 4
@bits_to_go.21 = internal unnamed_addr global i32 0, align 4
@index_to_char.15 = internal unnamed_addr global [258 x i8] zeroinitializer, align 16
@freq.17 = internal unnamed_addr global [258 x i32] zeroinitializer, align 16
@.str = private unnamed_addr constant [22 x i8] c"USAGE: %s <FILENAME>\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@fpi = internal global ptr null, align 8
@.str.2 = private unnamed_addr constant [33 x i8] c"ERROR: Could not find infile %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c".compr\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@fpo = internal global ptr null, align 8
@.str.5 = private unnamed_addr constant [68 x i8] c"ERROR: Could not open outfile (do you have write permission here?)\0A\00", align 1
@in.25 = internal unnamed_addr global ptr null, align 8
@bw = internal global ptr null, align 8
@rot = internal global ptr null, align 8
@rle = internal global ptr null, align 8
@ari = internal global ptr null, align 8
@.str.6 = private unnamed_addr constant [22 x i8] c"ERROR: Out of memory\0A\00", align 1
@size.34 = internal unnamed_addr global i32 0, align 4
@.str.8 = private unnamed_addr constant [53 x i8] c"PANIC: RLE buf larger than %d bytes needed (repeat)\0A\00", align 1
@str = private unnamed_addr constant [43 x i8] c"Something is fishy regarding the file size\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"Compile date: %s\0A\00", align 1
@.str.1.8 = private unnamed_addr constant [6 x i8] c"today\00", align 1
@.str.2.9 = private unnamed_addr constant [23 x i8] c"Compiler switches: %s\0A\00", align 1
@.str.3.10 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4.11 = private unnamed_addr constant [7 x i8] c".compr\00", align 1
@in_size = internal global i32 0, align 4
@in_pos = internal global i32 0, align 4
@deari_pos = internal global i32 0, align 4
@cum_freq = internal global [258 x i32] zeroinitializer, align 16
@index_to_char = internal global [258 x i8] zeroinitializer, align 16
@char_to_index = internal global [256 x i32] zeroinitializer, align 16
@freq = internal global [258 x i32] zeroinitializer, align 16
@buffer = internal global i32 0, align 4
@bits_to_go = internal global i32 0, align 4
@garbage_bits = internal global i32 0, align 4
@low.23 = internal unnamed_addr global i64 0, align 8
@high.22 = internal unnamed_addr global i64 0, align 8
@.str.28 = private unnamed_addr constant [16 x i8] c"Bad input file\0A\00", align 1
@.str.31 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.1.32 = private unnamed_addr constant [31 x i8] c"ERROR: Could not find infile.\0A\00", align 1
@size = internal global i32 0, align 4
@orgpos = internal global i32 0, align 4
@in = internal global ptr null, align 8
@deari = internal global ptr null, align 8
@derle = internal global ptr null, align 8
@debw = internal global ptr null, align 8
@.str.2.39 = private unnamed_addr constant [22 x i8] c"ERROR: Out of memory\0A\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8

; Function Attrs: nofree norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal i32 @do_ari(i32 noundef %0) #0 {
  store i32 0, ptr @ari_pos, align 4, !tbaa !7
  br label %2

2:                                                ; preds = %2, %1
  %3 = phi i64 [ 0, %1 ], [ %14, %2 ]
  %4 = phi <4 x i8> [ <i8 0, i8 1, i8 2, i8 3>, %1 ], [ %15, %2 ]
  %5 = insertelement <4 x i64> poison, i64 %3, i64 0
  %6 = shufflevector <4 x i64> %5, <4 x i64> poison, <4 x i32> zeroinitializer
  %7 = or <4 x i64> %6, <i64 1, i64 2, i64 3, i64 poison>
  %8 = add <4 x i64> %6, <i64 poison, i64 poison, i64 poison, i64 4>
  %9 = shufflevector <4 x i64> %7, <4 x i64> %8, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %10 = getelementptr inbounds [256 x i32], ptr @char_to_index.13, i64 0, i64 %3
  %11 = trunc <4 x i64> %9 to <4 x i32>
  store <4 x i32> %11, ptr %10, align 16, !tbaa !7
  %12 = extractelement <4 x i64> %7, i64 0
  %13 = getelementptr inbounds [258 x i8], ptr @index_to_char.15, i64 0, i64 %12
  store <4 x i8> %4, ptr %13, align 1, !tbaa !11
  %14 = add nuw i64 %3, 4
  %15 = add <4 x i8> %4, <i8 4, i8 4, i8 4, i8 4>
  %16 = icmp eq i64 %14, 256
  br i1 %16, label %17, label %2, !llvm.loop !12

17:                                               ; preds = %17, %2
  %18 = phi i64 [ %23, %17 ], [ 0, %2 ]
  %19 = getelementptr inbounds [258 x i32], ptr @freq.17, i64 0, i64 %18
  store i32 1, ptr %19, align 4, !tbaa !7
  %20 = getelementptr inbounds [258 x i32], ptr @cum_freq.19, i64 0, i64 %18
  %21 = trunc i64 %18 to i32
  %22 = sub i32 257, %21
  store i32 %22, ptr %20, align 4, !tbaa !7
  %23 = add nuw nsw i64 %18, 1
  %24 = icmp eq i64 %23, 258
  br i1 %24, label %25, label %17, !llvm.loop !16

25:                                               ; preds = %17
  store i32 0, ptr @freq.17, align 16, !tbaa !7
  store i32 0, ptr @buffer.27, align 4, !tbaa !7
  store i32 8, ptr @bits_to_go.21, align 4, !tbaa !7
  store i64 0, ptr @low, align 8, !tbaa !17
  store i64 65535, ptr @high, align 8, !tbaa !17
  store i64 0, ptr @bits_to_follow, align 8, !tbaa !17
  %26 = load ptr, ptr @rle, align 8, !tbaa !19
  store i32 1, ptr @rle_pos, align 4, !tbaa !7
  %27 = icmp eq i32 %0, 0
  br i1 %27, label %92, label %28

28:                                               ; preds = %87, %25
  %29 = phi i32 [ %89, %87 ], [ 0, %25 ]
  %30 = phi ptr [ %88, %87 ], [ %26, %25 ]
  %31 = zext i32 %29 to i64
  %32 = getelementptr inbounds i8, ptr %30, i64 %31
  %33 = load i8, ptr %32, align 1, !tbaa !11
  %34 = zext i8 %33 to i64
  %35 = getelementptr inbounds [256 x i32], ptr @char_to_index.13, i64 0, i64 %34
  %36 = load i32, ptr %35, align 4, !tbaa !7
  tail call fastcc void @encode_symbol(i32 noundef %36) #16
  %37 = load i32, ptr @cum_freq.19, align 16, !tbaa !7
  %38 = icmp eq i32 %37, 16383
  br i1 %38, label %39, label %50

39:                                               ; preds = %39, %28
  %40 = phi i64 [ %48, %39 ], [ 257, %28 ]
  %41 = phi i32 [ %47, %39 ], [ 0, %28 ]
  %42 = getelementptr inbounds [258 x i32], ptr @freq.17, i64 0, i64 %40
  %43 = load i32, ptr %42, align 4, !tbaa !7
  %44 = add nsw i32 %43, 1
  %45 = sdiv i32 %44, 2
  store i32 %45, ptr %42, align 4, !tbaa !7
  %46 = getelementptr inbounds [258 x i32], ptr @cum_freq.19, i64 0, i64 %40
  store i32 %41, ptr %46, align 4, !tbaa !7
  %47 = add nsw i32 %45, %41
  %48 = add nsw i64 %40, -1
  %49 = icmp eq i64 %40, 0
  br i1 %49, label %50, label %39, !llvm.loop !21

50:                                               ; preds = %39, %28
  %51 = sext i32 %36 to i64
  %52 = getelementptr inbounds [258 x i32], ptr @freq.17, i64 0, i64 %51
  %53 = load i32, ptr %52, align 4, !tbaa !7
  br label %54

54:                                               ; preds = %54, %50
  %55 = phi i64 [ %56, %54 ], [ %51, %50 ]
  %56 = add i64 %55, -1
  %57 = getelementptr inbounds [258 x i32], ptr @freq.17, i64 0, i64 %56
  %58 = load i32, ptr %57, align 4, !tbaa !7
  %59 = icmp eq i32 %53, %58
  br i1 %59, label %54, label %60, !llvm.loop !22

60:                                               ; preds = %54
  %.lcssa = phi i64 [ %55, %54 ]
  %61 = trunc i64 %.lcssa to i32
  %62 = getelementptr inbounds [258 x i32], ptr @freq.17, i64 0, i64 %.lcssa
  %63 = icmp sgt i32 %36, %61
  br i1 %63, label %64, label %73

64:                                               ; preds = %60
  %65 = getelementptr inbounds [258 x i8], ptr @index_to_char.15, i64 0, i64 %.lcssa
  %66 = load i8, ptr %65, align 1, !tbaa !11
  %67 = getelementptr inbounds [258 x i8], ptr @index_to_char.15, i64 0, i64 %51
  %68 = load i8, ptr %67, align 1, !tbaa !11
  store i8 %68, ptr %65, align 1, !tbaa !11
  store i8 %66, ptr %67, align 1, !tbaa !11
  %69 = zext i8 %66 to i64
  %70 = getelementptr inbounds [256 x i32], ptr @char_to_index.13, i64 0, i64 %69
  store i32 %36, ptr %70, align 4, !tbaa !7
  %71 = zext i8 %68 to i64
  %72 = getelementptr inbounds [256 x i32], ptr @char_to_index.13, i64 0, i64 %71
  store i32 %61, ptr %72, align 4, !tbaa !7
  br label %73

73:                                               ; preds = %64, %60
  %74 = add nsw i32 %53, 1
  store i32 %74, ptr %62, align 4, !tbaa !7
  %75 = icmp sgt i32 %61, 0
  br i1 %75, label %76, label %87

76:                                               ; preds = %73
  %77 = and i64 %.lcssa, 4294967295
  br label %78

78:                                               ; preds = %78, %76
  %79 = phi i64 [ %77, %76 ], [ %80, %78 ]
  %80 = add nsw i64 %79, -1
  %81 = and i64 %80, 4294967295
  %82 = getelementptr inbounds [258 x i32], ptr @cum_freq.19, i64 0, i64 %81
  %83 = load i32, ptr %82, align 4, !tbaa !7
  %84 = add nsw i32 %83, 1
  store i32 %84, ptr %82, align 4, !tbaa !7
  %85 = trunc i64 %79 to i32
  %86 = icmp sgt i32 %85, 1
  br i1 %86, label %78, label %87, !llvm.loop !23

87:                                               ; preds = %78, %73
  %88 = load ptr, ptr @rle, align 8, !tbaa !19
  %89 = load i32, ptr @rle_pos, align 4, !tbaa !7
  %90 = add i32 %89, 1
  store i32 %90, ptr @rle_pos, align 4, !tbaa !7
  %91 = icmp ugt i32 %90, %0
  br i1 %91, label %92, label %28

92:                                               ; preds = %87, %25
  tail call fastcc void @encode_symbol(i32 noundef 257) #16
  %93 = load i64, ptr @bits_to_follow, align 8, !tbaa !17
  %94 = add nsw i64 %93, 1
  store i64 %94, ptr @bits_to_follow, align 8, !tbaa !17
  %95 = load i64, ptr @low, align 8, !tbaa !17
  %96 = icmp sgt i64 %95, 16383
  %97 = zext i1 %96 to i32
  tail call fastcc void @bit_plus_follow(i32 noundef %97) #16
  %98 = load i32, ptr @buffer.27, align 4, !tbaa !7
  %99 = load i32, ptr @bits_to_go.21, align 4, !tbaa !7
  %100 = lshr i32 %98, %99
  %101 = trunc i32 %100 to i8
  %102 = load ptr, ptr @ari, align 8, !tbaa !19
  %103 = load i32, ptr @ari_pos, align 4, !tbaa !7
  %104 = add i32 %103, 1
  store i32 %104, ptr @ari_pos, align 4, !tbaa !7
  %105 = zext i32 %103 to i64
  %106 = getelementptr inbounds i8, ptr %102, i64 %105
  store i8 %101, ptr %106, align 1, !tbaa !11
  %107 = load i32, ptr @ari_pos, align 4, !tbaa !7
  ret i32 %107
}

; Function Attrs: nofree norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @encode_symbol(i32 noundef %0) unnamed_addr #0 {
  %2 = load i64, ptr @high, align 8, !tbaa !17
  %3 = load i64, ptr @low, align 8, !tbaa !17
  %4 = sub nsw i64 %2, %3
  %5 = add nsw i64 %4, 1
  %6 = add nsw i32 %0, -1
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds i32, ptr @cum_freq.19, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !7
  %10 = sext i32 %9 to i64
  %11 = mul nsw i64 %5, %10
  %12 = load i32, ptr @cum_freq.19, align 16, !tbaa !7
  %13 = sext i32 %12 to i64
  %14 = sdiv i64 %11, %13
  %15 = add i64 %3, -1
  %16 = add i64 %15, %14
  store i64 %16, ptr @high, align 8, !tbaa !17
  %17 = sext i32 %0 to i64
  %18 = getelementptr inbounds i32, ptr @cum_freq.19, i64 %17
  %19 = load i32, ptr %18, align 4, !tbaa !7
  %20 = sext i32 %19 to i64
  %21 = mul nsw i64 %5, %20
  %22 = sdiv i64 %21, %13
  %23 = add nsw i64 %22, %3
  store i64 %23, ptr @low, align 8, !tbaa !17
  br label %24

24:                                               ; preds = %47, %1
  %25 = phi i64 [ %50, %47 ], [ %23, %1 ]
  %26 = phi i64 [ %52, %47 ], [ %16, %1 ]
  %27 = icmp slt i64 %26, 32768
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  tail call fastcc void @bit_plus_follow(i32 noundef 0) #16
  %29 = load i64, ptr @low, align 8, !tbaa !17
  %30 = load i64, ptr @high, align 8, !tbaa !17
  br label %47

31:                                               ; preds = %24
  %32 = icmp sgt i64 %25, 32767
  br i1 %32, label %33, label %38

33:                                               ; preds = %31
  tail call fastcc void @bit_plus_follow(i32 noundef 1) #16
  %34 = load i64, ptr @low, align 8, !tbaa !17
  %35 = add nsw i64 %34, -32768
  %36 = load i64, ptr @high, align 8, !tbaa !17
  %37 = add nsw i64 %36, -32768
  br label %47

38:                                               ; preds = %31
  %39 = icmp sgt i64 %25, 16383
  %40 = icmp ult i64 %26, 49152
  %41 = and i1 %40, %39
  br i1 %41, label %42, label %53

42:                                               ; preds = %38
  %43 = load i64, ptr @bits_to_follow, align 8, !tbaa !17
  %44 = add nsw i64 %43, 1
  store i64 %44, ptr @bits_to_follow, align 8, !tbaa !17
  %45 = add nsw i64 %25, -16384
  %46 = add nsw i64 %26, -16384
  br label %47

47:                                               ; preds = %42, %33, %28
  %48 = phi i64 [ %37, %33 ], [ %46, %42 ], [ %30, %28 ]
  %49 = phi i64 [ %35, %33 ], [ %45, %42 ], [ %29, %28 ]
  %50 = shl nsw i64 %49, 1
  store i64 %50, ptr @low, align 8, !tbaa !17
  %51 = shl nsw i64 %48, 1
  %52 = or i64 %51, 1
  store i64 %52, ptr @high, align 8, !tbaa !17
  br label %24

53:                                               ; preds = %38
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @bit_plus_follow(i32 noundef %0) unnamed_addr #0 {
  tail call fastcc void @output_bit(i32 noundef %0) #16
  %2 = load i64, ptr @bits_to_follow, align 8, !tbaa !17
  %3 = icmp sgt i64 %2, 0
  br i1 %3, label %4, label %11

4:                                                ; preds = %1
  %5 = icmp eq i32 %0, 0
  %6 = zext i1 %5 to i32
  br label %7

7:                                                ; preds = %7, %4
  tail call fastcc void @output_bit(i32 noundef %6) #16
  %8 = load i64, ptr @bits_to_follow, align 8, !tbaa !17
  %9 = add nsw i64 %8, -1
  store i64 %9, ptr @bits_to_follow, align 8, !tbaa !17
  %10 = icmp sgt i64 %8, 1
  br i1 %10, label %7, label %11, !llvm.loop !24

11:                                               ; preds = %7, %1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: write, inaccessiblemem: none) uwtable
define internal fastcc void @output_bit(i32 noundef %0) unnamed_addr #1 {
  %2 = load i32, ptr @buffer.27, align 4, !tbaa !7
  %3 = lshr i32 %2, 1
  %4 = icmp eq i32 %0, 0
  %5 = or i32 %3, 128
  %6 = select i1 %4, i32 %3, i32 %5
  store i32 %6, ptr @buffer.27, align 4, !tbaa !7
  %7 = load i32, ptr @bits_to_go.21, align 4, !tbaa !7
  %8 = add nsw i32 %7, -1
  store i32 %8, ptr @bits_to_go.21, align 4, !tbaa !7
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %1
  %11 = trunc i32 %6 to i8
  %12 = load ptr, ptr @ari, align 8, !tbaa !19
  %13 = load i32, ptr @ari_pos, align 4, !tbaa !7
  %14 = add i32 %13, 1
  store i32 %14, ptr @ari_pos, align 4, !tbaa !7
  %15 = zext i32 %13 to i64
  %16 = getelementptr inbounds i8, ptr %12, i64 %15
  store i8 %11, ptr %16, align 1, !tbaa !11
  store i32 8, ptr @bits_to_go.21, align 4, !tbaa !7
  br label %17

17:                                               ; preds = %10, %1
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @compress(i32 noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = alloca i32, align 4
  %4 = alloca [1000 x i8], align 16
  %5 = alloca %struct.stat, align 8
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 1000, ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #17
  %7 = icmp slt i32 %0, 2
  br i1 %7, label %8, label %12

8:                                                ; preds = %2
  %9 = load ptr, ptr @stderr, align 8, !tbaa !19
  %10 = load ptr, ptr %1, align 8, !tbaa !19
  %11 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef nonnull @.str, ptr noundef %10) #18
  tail call void @exit(i32 noundef 1) #19
  unreachable

12:                                               ; preds = %2
  %13 = getelementptr inbounds ptr, ptr %1, i64 1
  %14 = load ptr, ptr %13, align 8, !tbaa !19
  %15 = call i32 @stat(ptr noundef %14, ptr noundef nonnull %5) #20
  %16 = getelementptr inbounds %struct.stat, ptr %5, i64 0, i32 8
  %17 = load i64, ptr %16, align 8, !tbaa !25
  %18 = trunc i64 %17 to i32
  store i32 %18, ptr %6, align 4, !tbaa !7
  %19 = tail call noalias ptr @fopen(ptr noundef %14, ptr noundef nonnull @.str.1) #16
  store ptr %19, ptr @fpi, align 8, !tbaa !19
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %12
  %22 = load ptr, ptr @stderr, align 8, !tbaa !19
  %23 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef nonnull @.str.2, ptr noundef %14) #18
  tail call void @exit(i32 noundef 1) #19
  unreachable

24:                                               ; preds = %12
  %25 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) %14) #20
  %26 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4)
  %27 = getelementptr inbounds i8, ptr %4, i64 %26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %27, ptr noundef nonnull align 1 dereferenceable(7) @.str.3, i64 7, i1 false)
  %28 = call noalias ptr @fopen(ptr noundef nonnull %4, ptr noundef nonnull @.str.4) #16
  store ptr %28, ptr @fpo, align 8, !tbaa !19
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %24
  %31 = load ptr, ptr @stderr, align 8, !tbaa !19
  %32 = call i64 @fwrite(ptr nonnull @.str.5, i64 67, i64 1, ptr %31) #21
  call void @exit(i32 noundef 1) #19
  unreachable

33:                                               ; preds = %24
  %34 = call i64 @fwrite(ptr noundef nonnull %6, i64 noundef 4, i64 noundef 1, ptr noundef nonnull %28) #16
  %35 = load i32, ptr %6, align 4, !tbaa !7
  %36 = shl i32 %35, 1
  %37 = zext i32 %36 to i64
  %38 = call noalias ptr @malloc(i64 noundef %37) #22
  store ptr %38, ptr @in.25, align 8, !tbaa !19
  %39 = zext i32 %35 to i64
  %40 = call noalias ptr @malloc(i64 noundef %39) #22
  store ptr %40, ptr @bw, align 8, !tbaa !19
  %41 = shl nuw nsw i64 %39, 2
  %42 = call noalias ptr @malloc(i64 noundef %41) #22
  store ptr %42, ptr @rot, align 8, !tbaa !19
  %43 = call noalias ptr @malloc(i64 noundef %37) #22
  store ptr %43, ptr @rle, align 8, !tbaa !19
  %44 = call noalias ptr @malloc(i64 noundef %37) #22
  store ptr %44, ptr @ari, align 8, !tbaa !19
  %45 = insertelement <4 x ptr> poison, ptr %40, i64 0
  %46 = insertelement <4 x ptr> %45, ptr %38, i64 1
  %47 = insertelement <4 x ptr> %46, ptr %42, i64 2
  %48 = insertelement <4 x ptr> %47, ptr %43, i64 3
  %49 = icmp eq <4 x ptr> %48, zeroinitializer
  %50 = icmp ne ptr %44, null
  %51 = bitcast <4 x i1> %49 to i4
  %52 = icmp eq i4 %51, 0
  %53 = and i1 %52, %50
  br i1 %53, label %57, label %54

54:                                               ; preds = %33
  %55 = load ptr, ptr @stderr, align 8, !tbaa !19
  %56 = call i64 @fwrite(ptr nonnull @.str.6, i64 21, i64 1, ptr %55) #21
  call void @exit(i32 noundef 1) #19
  unreachable

57:                                               ; preds = %33
  %58 = load ptr, ptr @fpi, align 8, !tbaa !19
  %59 = call i64 @fread(ptr noundef nonnull %38, i64 noundef 1, i64 noundef %39, ptr noundef %58) #16
  %60 = icmp eq i64 %59, %39
  br i1 %60, label %63, label %61

61:                                               ; preds = %57
  %62 = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  call void @exit(i32 noundef 1) #19
  unreachable

63:                                               ; preds = %57
  store i32 %35, ptr @size.34, align 4, !tbaa !7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #17
  %64 = load ptr, ptr @in.25, align 8, !tbaa !19
  %65 = getelementptr inbounds i8, ptr %64, i64 %39
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %65, ptr align 1 %64, i64 %39, i1 false)
  %66 = icmp eq i32 %35, 0
  %67 = load ptr, ptr @rot, align 8, !tbaa !19
  br i1 %66, label %104, label %68

68:                                               ; preds = %63
  %69 = add nuw nsw i64 %39, 3
  %70 = and i64 %69, 8589934588
  %71 = add nsw i64 %39, -1
  %72 = insertelement <4 x i64> poison, i64 %71, i64 0
  %73 = shufflevector <4 x i64> %72, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %74

74:                                               ; preds = %100, %68
  %75 = phi i64 [ 0, %68 ], [ %101, %100 ]
  %76 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %68 ], [ %102, %100 ]
  %77 = trunc i64 %75 to i32
  %78 = icmp ule <4 x i64> %76, %73
  %79 = extractelement <4 x i1> %78, i64 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %74
  %81 = getelementptr inbounds i32, ptr %67, i64 %75
  store i32 %77, ptr %81, align 4, !tbaa !7
  br label %82

82:                                               ; preds = %80, %74
  %83 = extractelement <4 x i1> %78, i64 1
  br i1 %83, label %84, label %88

84:                                               ; preds = %82
  %85 = or i64 %75, 1
  %86 = getelementptr inbounds i32, ptr %67, i64 %85
  %87 = or i32 %77, 1
  store i32 %87, ptr %86, align 4, !tbaa !7
  br label %88

88:                                               ; preds = %84, %82
  %89 = extractelement <4 x i1> %78, i64 2
  br i1 %89, label %90, label %94

90:                                               ; preds = %88
  %91 = or i64 %75, 2
  %92 = getelementptr inbounds i32, ptr %67, i64 %91
  %93 = or i32 %77, 2
  store i32 %93, ptr %92, align 4, !tbaa !7
  br label %94

94:                                               ; preds = %90, %88
  %95 = extractelement <4 x i1> %78, i64 3
  br i1 %95, label %96, label %100

96:                                               ; preds = %94
  %97 = or i64 %75, 3
  %98 = getelementptr inbounds i32, ptr %67, i64 %97
  %99 = or i32 %77, 3
  store i32 %99, ptr %98, align 4, !tbaa !7
  br label %100

100:                                              ; preds = %96, %94
  %101 = add i64 %75, 4
  %102 = add <4 x i64> %76, <i64 4, i64 4, i64 4, i64 4>
  %103 = icmp eq i64 %101, %70
  br i1 %103, label %104, label %74, !llvm.loop !28

104:                                              ; preds = %100, %63
  call void @qsort(ptr noundef %67, i64 noundef %39, i64 noundef 4, ptr noundef nonnull @compare) #20
  %105 = load i32, ptr @size.34, align 4, !tbaa !7
  %106 = icmp eq i32 %105, 0
  %107 = load ptr, ptr @in.25, align 8, !tbaa !19
  br i1 %106, label %141, label %108

108:                                              ; preds = %104
  %109 = add i32 %105, -1
  %110 = zext i32 %105 to i64
  br label %113

111:                                              ; preds = %113
  %112 = load ptr, ptr @rot, align 8, !tbaa !19
  br label %127

113:                                              ; preds = %113, %108
  %114 = phi i64 [ 0, %108 ], [ %125, %113 ]
  %115 = load ptr, ptr @rot, align 8, !tbaa !19
  %116 = getelementptr inbounds i32, ptr %115, i64 %114
  %117 = load i32, ptr %116, align 4, !tbaa !7
  %118 = add i32 %109, %117
  %119 = urem i32 %118, %105
  %120 = zext i32 %119 to i64
  %121 = getelementptr inbounds i8, ptr %107, i64 %120
  %122 = load i8, ptr %121, align 1, !tbaa !11
  %123 = load ptr, ptr @bw, align 8, !tbaa !19
  %124 = getelementptr inbounds i8, ptr %123, i64 %114
  store i8 %122, ptr %124, align 1, !tbaa !11
  %125 = add nuw nsw i64 %114, 1
  %126 = icmp eq i64 %125, %110
  br i1 %126, label %111, label %113, !llvm.loop !29

127:                                              ; preds = %138, %111
  %128 = phi i64 [ 0, %111 ], [ %139, %138 ]
  %129 = getelementptr inbounds i32, ptr %112, i64 %128
  %130 = load i32, ptr %129, align 4, !tbaa !7
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %138

132:                                              ; preds = %127
  %.lcssa2 = phi i64 [ %128, %127 ]
  %133 = trunc i64 %.lcssa2 to i32
  store i32 %133, ptr %3, align 4, !tbaa !7
  %134 = load ptr, ptr @fpo, align 8, !tbaa !19
  %135 = call i64 @fwrite(ptr noundef nonnull %3, i64 noundef 4, i64 noundef 1, ptr noundef %134) #16
  %136 = load i32, ptr @size.34, align 4, !tbaa !7
  %137 = load ptr, ptr @in.25, align 8, !tbaa !19
  br label %141

138:                                              ; preds = %127
  %139 = add nuw nsw i64 %128, 1
  %140 = icmp eq i64 %139, %110
  br i1 %140, label %141, label %127, !llvm.loop !30

141:                                              ; preds = %138, %132, %104
  %142 = phi ptr [ %107, %104 ], [ %137, %132 ], [ %107, %138 ]
  %143 = phi i32 [ 0, %104 ], [ %136, %132 ], [ %105, %138 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #17
  call void @free(ptr noundef %142) #20
  %144 = load ptr, ptr @rot, align 8, !tbaa !19
  call void @free(ptr noundef %144) #20
  %145 = icmp eq i32 %143, 0
  br i1 %145, label %235, label %146

146:                                              ; preds = %141
  %147 = shl i32 %143, 1
  br label %148

148:                                              ; preds = %230, %146
  %149 = phi i32 [ 0, %146 ], [ %233, %230 ]
  %150 = phi i32 [ 0, %146 ], [ %231, %230 ]
  %151 = load ptr, ptr @bw, align 8, !tbaa !19
  %152 = zext i32 %149 to i64
  %153 = getelementptr inbounds i8, ptr %151, i64 %152
  %154 = load i8, ptr %153, align 1, !tbaa !11
  br label %155

155:                                              ; preds = %165, %148
  %156 = phi i64 [ %166, %165 ], [ 1, %148 ]
  %157 = trunc i64 %156 to i32
  %158 = add i32 %149, %157
  %159 = icmp ult i32 %158, %143
  br i1 %159, label %160, label %168

160:                                              ; preds = %155
  %161 = zext i32 %158 to i64
  %162 = getelementptr inbounds i8, ptr %151, i64 %161
  %163 = load i8, ptr %162, align 1, !tbaa !11
  %164 = icmp eq i8 %154, %163
  br i1 %164, label %165, label %168

165:                                              ; preds = %160
  %166 = add nuw nsw i64 %156, 1
  %167 = icmp eq i64 %166, 127
  br i1 %167, label %213, label %155, !llvm.loop !31

168:                                              ; preds = %160, %155
  %.lcssa = phi i32 [ %157, %160 ], [ %157, %155 ]
  %169 = icmp eq i32 %.lcssa, 1
  br i1 %169, label %170, label %213

170:                                              ; preds = %168
  %171 = add i32 %149, 1
  %172 = icmp ult i32 %171, %143
  br i1 %172, label %173, label %198

173:                                              ; preds = %170
  %174 = zext i32 %171 to i64
  %175 = getelementptr inbounds i8, ptr %151, i64 %174
  %176 = load i8, ptr %175, align 1, !tbaa !11
  %177 = icmp eq i8 %154, %176
  br i1 %177, label %198, label %178

178:                                              ; preds = %187, %173
  %179 = phi i8 [ %196, %187 ], [ %176, %173 ]
  %180 = phi i32 [ %189, %187 ], [ %171, %173 ]
  %181 = phi i32 [ %188, %187 ], [ 1, %173 ]
  %182 = add i32 %180, 1
  %183 = zext i32 %182 to i64
  %184 = getelementptr inbounds i8, ptr %151, i64 %183
  %185 = load i8, ptr %184, align 1, !tbaa !11
  %186 = icmp eq i8 %179, %185
  br i1 %186, label %198, label %187

187:                                              ; preds = %178
  %188 = add i32 %181, 1
  %189 = add i32 %188, %149
  %190 = add i32 %181, %149
  %191 = zext i32 %190 to i64
  %192 = getelementptr inbounds i8, ptr %151, i64 %191
  %193 = load i8, ptr %192, align 1, !tbaa !11
  %194 = zext i32 %189 to i64
  %195 = getelementptr inbounds i8, ptr %151, i64 %194
  %196 = load i8, ptr %195, align 1, !tbaa !11
  %197 = icmp eq i8 %193, %196
  br i1 %197, label %198, label %178, !llvm.loop !32

198:                                              ; preds = %187, %178, %173, %170
  %199 = phi i32 [ 1, %170 ], [ 1, %173 ], [ %181, %178 ], [ %188, %187 ]
  %200 = trunc i32 %199 to i8
  %201 = and i8 %200, 127
  %202 = load ptr, ptr @rle, align 8, !tbaa !19
  %203 = add i32 %150, 1
  %204 = zext i32 %150 to i64
  %205 = getelementptr inbounds i8, ptr %202, i64 %204
  store i8 %201, ptr %205, align 1, !tbaa !11
  %206 = load ptr, ptr @rle, align 8, !tbaa !19
  %207 = zext i32 %203 to i64
  %208 = getelementptr inbounds i8, ptr %206, i64 %207
  %209 = load ptr, ptr @bw, align 8, !tbaa !19
  %210 = getelementptr inbounds i8, ptr %209, i64 %152
  %211 = zext i32 %199 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %208, ptr align 1 %210, i64 %211, i1 false)
  %212 = add i32 %199, %203
  br label %230

213:                                              ; preds = %168, %165
  %214 = phi i32 [ %.lcssa, %168 ], [ 127, %165 ]
  %215 = add i32 %150, 2
  %216 = icmp ugt i32 %215, %147
  br i1 %216, label %217, label %220

217:                                              ; preds = %213
  %218 = load ptr, ptr @stderr, align 8, !tbaa !19
  %219 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %218, ptr noundef nonnull @.str.8, i32 noundef %143) #18
  call void @exit(i32 noundef 1) #19
  unreachable

220:                                              ; preds = %213
  %221 = trunc i32 %214 to i8
  %222 = or i8 %221, -128
  %223 = load ptr, ptr @rle, align 8, !tbaa !19
  %224 = zext i32 %150 to i64
  %225 = getelementptr inbounds i8, ptr %223, i64 %224
  store i8 %222, ptr %225, align 1, !tbaa !11
  %226 = load ptr, ptr @rle, align 8, !tbaa !19
  %227 = add i32 %150, 1
  %228 = zext i32 %227 to i64
  %229 = getelementptr inbounds i8, ptr %226, i64 %228
  store i8 %154, ptr %229, align 1, !tbaa !11
  br label %230

230:                                              ; preds = %220, %198
  %231 = phi i32 [ %212, %198 ], [ %215, %220 ]
  %232 = phi i32 [ %199, %198 ], [ %214, %220 ]
  %233 = add i32 %232, %149
  %234 = icmp ult i32 %233, %143
  br i1 %234, label %148, label %235, !llvm.loop !33

235:                                              ; preds = %230, %141
  %236 = phi i32 [ 0, %141 ], [ %231, %230 ]
  %237 = load ptr, ptr @bw, align 8, !tbaa !19
  call void @free(ptr noundef %237) #20
  %238 = call i32 @do_ari(i32 noundef %236) #20
  %239 = load ptr, ptr @rle, align 8, !tbaa !19
  call void @free(ptr noundef %239) #20
  %240 = load ptr, ptr @ari, align 8, !tbaa !19
  %241 = zext i32 %238 to i64
  %242 = load ptr, ptr @fpo, align 8, !tbaa !19
  %243 = call i64 @fwrite(ptr noundef %240, i64 noundef 1, i64 noundef %241, ptr noundef %242) #16
  %244 = load ptr, ptr @ari, align 8, !tbaa !19
  call void @free(ptr noundef %244) #20
  %245 = load ptr, ptr @fpi, align 8, !tbaa !19
  %246 = call i32 @fclose(ptr noundef %245) #16
  %247 = load ptr, ptr @fpo, align 8, !tbaa !19
  %248 = call i32 @fclose(ptr noundef %247) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 1000, ptr nonnull %4) #17
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind optsize
declare noundef i32 @stat(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind optsize
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #6

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture) local_unnamed_addr #7

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: nofree nounwind optsize
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind optsize
declare noundef i64 @fread(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #10

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @compare(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #11 {
  %3 = load ptr, ptr @in.25, align 8, !tbaa !19
  %4 = load i32, ptr %0, align 4, !tbaa !7
  %5 = zext i32 %4 to i64
  %6 = getelementptr inbounds i8, ptr %3, i64 %5
  %7 = load i32, ptr %1, align 4, !tbaa !7
  %8 = zext i32 %7 to i64
  %9 = getelementptr inbounds i8, ptr %3, i64 %8
  %10 = load i32, ptr @size.34, align 4, !tbaa !7
  %11 = zext i32 %10 to i64
  %12 = tail call i32 @memcmp(ptr noundef %6, ptr noundef %9, i64 noundef %11) #23
  ret i32 %12
}

; Function Attrs: nofree optsize
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @memcmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #14

; Function Attrs: nounwind optsize uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #2 {
  %3 = alloca [1000 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 1000, ptr nonnull %3) #17
  %4 = load ptr, ptr @stderr, align 8, !tbaa !19
  %5 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1.8) #18
  %6 = load ptr, ptr @stderr, align 8, !tbaa !19
  %7 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef nonnull @.str.2.9, ptr noundef nonnull @.str.3.10) #18
  tail call void @compress(i32 noundef %0, ptr noundef %1) #20
  tail call void @compress(i32 noundef %0, ptr noundef %1) #20
  tail call void @compress(i32 noundef %0, ptr noundef %1) #20
  tail call void @compress(i32 noundef %0, ptr noundef %1) #20
  %8 = getelementptr inbounds ptr, ptr %1, i64 1
  %9 = load ptr, ptr %8, align 8, !tbaa !19
  %10 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) %9) #20
  %11 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3)
  %12 = getelementptr inbounds i8, ptr %3, i64 %11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %12, ptr noundef nonnull align 1 dereferenceable(7) @.str.4.11, i64 7, i1 false)
  store ptr %3, ptr %8, align 8, !tbaa !19
  call void @uncompress(i32 noundef %0, ptr noundef %1) #20
  %13 = call i32 @remove(ptr noundef nonnull %3) #20
  call void @llvm.lifetime.end.p0(i64 1000, ptr nonnull %3) #17
  ret i32 0
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @remove(ptr nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: nounwind optsize uwtable
define internal i32 @do_deari(i32 noundef %0) #2 {
  store i32 %0, ptr @in_size, align 4, !tbaa !7
  store i32 0, ptr @in_pos, align 4, !tbaa !7
  store i32 0, ptr @deari_pos, align 4, !tbaa !7
  br label %2

2:                                                ; preds = %2, %1
  %3 = phi i64 [ 0, %1 ], [ %14, %2 ]
  %4 = phi <4 x i8> [ <i8 0, i8 1, i8 2, i8 3>, %1 ], [ %15, %2 ]
  %5 = insertelement <4 x i64> poison, i64 %3, i64 0
  %6 = shufflevector <4 x i64> %5, <4 x i64> poison, <4 x i32> zeroinitializer
  %7 = or <4 x i64> %6, <i64 1, i64 2, i64 3, i64 poison>
  %8 = add <4 x i64> %6, <i64 poison, i64 poison, i64 poison, i64 4>
  %9 = shufflevector <4 x i64> %7, <4 x i64> %8, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %10 = getelementptr inbounds [256 x i32], ptr @char_to_index, i64 0, i64 %3
  %11 = trunc <4 x i64> %9 to <4 x i32>
  store <4 x i32> %11, ptr %10, align 16, !tbaa !7
  %12 = extractelement <4 x i64> %7, i64 0
  %13 = getelementptr inbounds [258 x i8], ptr @index_to_char, i64 0, i64 %12
  store <4 x i8> %4, ptr %13, align 1, !tbaa !11
  %14 = add nuw i64 %3, 4
  %15 = add <4 x i8> %4, <i8 4, i8 4, i8 4, i8 4>
  %16 = icmp eq i64 %14, 256
  br i1 %16, label %17, label %2, !llvm.loop !34

17:                                               ; preds = %17, %2
  %18 = phi i64 [ %23, %17 ], [ 0, %2 ]
  %19 = getelementptr inbounds [258 x i32], ptr @freq, i64 0, i64 %18
  store i32 1, ptr %19, align 4, !tbaa !7
  %20 = getelementptr inbounds [258 x i32], ptr @cum_freq, i64 0, i64 %18
  %21 = trunc i64 %18 to i32
  %22 = sub i32 257, %21
  store i32 %22, ptr %20, align 4, !tbaa !7
  %23 = add nuw nsw i64 %18, 1
  %24 = icmp eq i64 %23, 258
  br i1 %24, label %25, label %17, !llvm.loop !35

25:                                               ; preds = %17
  store i32 0, ptr @freq, align 16, !tbaa !7
  store i32 0, ptr @bits_to_go, align 4, !tbaa !7
  store i32 0, ptr @garbage_bits, align 4, !tbaa !7
  br label %26

26:                                               ; preds = %26, %25
  %27 = phi i64 [ 0, %25 ], [ %32, %26 ]
  %28 = phi i32 [ 1, %25 ], [ %33, %26 ]
  %29 = shl nsw i64 %27, 1
  %30 = tail call fastcc i32 @input_bit() #16, !range !36
  %31 = zext i32 %30 to i64
  %32 = or i64 %29, %31
  %33 = add nuw nsw i32 %28, 1
  %34 = icmp eq i32 %33, 17
  br i1 %34, label %35, label %26, !llvm.loop !37

35:                                               ; preds = %148, %26
  %36 = phi i64 [ %.lcssa4, %148 ], [ %32, %26 ]
  %37 = phi i64 [ %.lcssa3, %148 ], [ 0, %26 ]
  %38 = phi i64 [ %.lcssa2, %148 ], [ 65535, %26 ]
  %39 = sub nsw i64 %38, %37
  %40 = add nsw i64 %39, 1
  %41 = sub i64 %36, %37
  %42 = add i64 %41, 1
  %43 = load i32, ptr @cum_freq, align 16, !tbaa !7
  %44 = sext i32 %43 to i64
  %45 = mul nsw i64 %42, %44
  %46 = add nsw i64 %45, -1
  %47 = sdiv i64 %46, %40
  %48 = trunc i64 %47 to i32
  br label %49

49:                                               ; preds = %49, %35
  %50 = phi i64 [ %54, %49 ], [ 1, %35 ]
  %51 = getelementptr inbounds i32, ptr @cum_freq, i64 %50
  %52 = load i32, ptr %51, align 4, !tbaa !7
  %53 = icmp sgt i32 %52, %48
  %54 = add nuw i64 %50, 1
  br i1 %53, label %49, label %55, !llvm.loop !38

55:                                               ; preds = %49
  %.lcssa1 = phi i64 [ %50, %49 ]
  %.lcssa = phi i32 [ %52, %49 ]
  %56 = shl i64 %.lcssa1, 32
  %57 = add i64 %56, -4294967296
  %58 = ashr exact i64 %57, 32
  %59 = getelementptr inbounds i32, ptr @cum_freq, i64 %58
  %60 = load i32, ptr %59, align 4, !tbaa !7
  %61 = sext i32 %60 to i64
  %62 = mul nsw i64 %40, %61
  %63 = sdiv i64 %62, %44
  %64 = add i64 %37, -1
  %65 = add i64 %64, %63
  store i64 %65, ptr @high.22, align 8, !tbaa !17
  %66 = sext i32 %.lcssa to i64
  %67 = mul nsw i64 %40, %66
  %68 = sdiv i64 %67, %44
  %69 = add nsw i64 %68, %37
  store i64 %69, ptr @low.23, align 8, !tbaa !17
  br label %70

70:                                               ; preds = %86, %55
  %71 = phi i64 [ %96, %86 ], [ %36, %55 ]
  %72 = phi i64 [ %98, %86 ], [ %69, %55 ]
  %73 = phi i64 [ %97, %86 ], [ %65, %55 ]
  %74 = icmp slt i64 %73, 32768
  br i1 %74, label %86, label %75

75:                                               ; preds = %70
  %76 = icmp sgt i64 %72, 32767
  br i1 %76, label %81, label %77

77:                                               ; preds = %75
  %78 = icmp sgt i64 %72, 16383
  %79 = icmp ult i64 %73, 49152
  %80 = and i1 %78, %79
  br i1 %80, label %81, label %99

81:                                               ; preds = %77, %75
  %82 = phi i64 [ -32768, %75 ], [ -16384, %77 ]
  %83 = add nsw i64 %71, %82
  %84 = add nsw i64 %82, %72
  %85 = add nsw i64 %82, %73
  br label %86

86:                                               ; preds = %81, %70
  %87 = phi i64 [ %71, %70 ], [ %83, %81 ]
  %88 = phi i64 [ %73, %70 ], [ %85, %81 ]
  %89 = phi i64 [ %72, %70 ], [ %84, %81 ]
  %90 = shl nsw i64 %89, 1
  store i64 %90, ptr @low.23, align 8, !tbaa !17
  %91 = shl nsw i64 %88, 1
  %92 = or i64 %91, 1
  store i64 %92, ptr @high.22, align 8, !tbaa !17
  %93 = shl nsw i64 %87, 1
  %94 = tail call fastcc i32 @input_bit() #16, !range !36
  %95 = zext i32 %94 to i64
  %96 = or i64 %93, %95
  %97 = load i64, ptr @high.22, align 8
  %98 = load i64, ptr @low.23, align 8, !tbaa !17
  br label %70

99:                                               ; preds = %77
  %.lcssa4 = phi i64 [ %71, %77 ]
  %.lcssa3 = phi i64 [ %72, %77 ]
  %.lcssa2 = phi i64 [ %73, %77 ]
  %100 = trunc i64 %.lcssa1 to i32
  %101 = icmp eq i32 %100, 257
  br i1 %101, label %160, label %102

102:                                              ; preds = %99
  %103 = ashr exact i64 %56, 32
  %104 = getelementptr inbounds [258 x i8], ptr @index_to_char, i64 0, i64 %103
  %105 = load i8, ptr %104, align 1, !tbaa !11
  %106 = load ptr, ptr @deari, align 8, !tbaa !19
  %107 = load i32, ptr @deari_pos, align 4, !tbaa !7
  %108 = add i32 %107, 1
  store i32 %108, ptr @deari_pos, align 4, !tbaa !7
  %109 = zext i32 %107 to i64
  %110 = getelementptr inbounds i8, ptr %106, i64 %109
  store i8 %105, ptr %110, align 1, !tbaa !11
  %111 = load i32, ptr @cum_freq, align 16, !tbaa !7
  %112 = icmp eq i32 %111, 16383
  br i1 %112, label %113, label %124

113:                                              ; preds = %113, %102
  %114 = phi i64 [ %122, %113 ], [ 257, %102 ]
  %115 = phi i32 [ %121, %113 ], [ 0, %102 ]
  %116 = getelementptr inbounds [258 x i32], ptr @freq, i64 0, i64 %114
  %117 = load i32, ptr %116, align 4, !tbaa !7
  %118 = add nsw i32 %117, 1
  %119 = sdiv i32 %118, 2
  store i32 %119, ptr %116, align 4, !tbaa !7
  %120 = getelementptr inbounds [258 x i32], ptr @cum_freq, i64 0, i64 %114
  store i32 %115, ptr %120, align 4, !tbaa !7
  %121 = add nsw i32 %119, %115
  %122 = add nsw i64 %114, -1
  %123 = icmp eq i64 %114, 0
  br i1 %123, label %124, label %113, !llvm.loop !39

124:                                              ; preds = %113, %102
  %125 = getelementptr inbounds [258 x i32], ptr @freq, i64 0, i64 %103
  %126 = load i32, ptr %125, align 4, !tbaa !7
  br label %127

127:                                              ; preds = %127, %124
  %128 = phi i64 [ %129, %127 ], [ %103, %124 ]
  %129 = add i64 %128, -1
  %130 = getelementptr inbounds [258 x i32], ptr @freq, i64 0, i64 %129
  %131 = load i32, ptr %130, align 4, !tbaa !7
  %132 = icmp eq i32 %126, %131
  br i1 %132, label %127, label %133, !llvm.loop !40

133:                                              ; preds = %127
  %.lcssa5 = phi i64 [ %128, %127 ]
  %134 = trunc i64 %.lcssa5 to i32
  %135 = getelementptr inbounds [258 x i32], ptr @freq, i64 0, i64 %.lcssa5
  %136 = icmp slt i32 %134, %100
  br i1 %136, label %137, label %145

137:                                              ; preds = %133
  %138 = getelementptr inbounds [258 x i8], ptr @index_to_char, i64 0, i64 %.lcssa5
  %139 = load i8, ptr %138, align 1, !tbaa !11
  %140 = load i8, ptr %104, align 1, !tbaa !11
  store i8 %140, ptr %138, align 1, !tbaa !11
  store i8 %139, ptr %104, align 1, !tbaa !11
  %141 = zext i8 %139 to i64
  %142 = getelementptr inbounds [256 x i32], ptr @char_to_index, i64 0, i64 %141
  store i32 %100, ptr %142, align 4, !tbaa !7
  %143 = zext i8 %140 to i64
  %144 = getelementptr inbounds [256 x i32], ptr @char_to_index, i64 0, i64 %143
  store i32 %134, ptr %144, align 4, !tbaa !7
  br label %145

145:                                              ; preds = %137, %133
  %146 = add nsw i32 %126, 1
  store i32 %146, ptr %135, align 4, !tbaa !7
  %147 = icmp sgt i32 %134, 0
  br i1 %147, label %149, label %148

148:                                              ; preds = %151, %145
  br label %35

149:                                              ; preds = %145
  %150 = and i64 %.lcssa5, 4294967295
  br label %151

151:                                              ; preds = %151, %149
  %152 = phi i64 [ %150, %149 ], [ %153, %151 ]
  %153 = add nsw i64 %152, -1
  %154 = and i64 %153, 4294967295
  %155 = getelementptr inbounds [258 x i32], ptr @cum_freq, i64 0, i64 %154
  %156 = load i32, ptr %155, align 4, !tbaa !7
  %157 = add nsw i32 %156, 1
  store i32 %157, ptr %155, align 4, !tbaa !7
  %158 = trunc i64 %152 to i32
  %159 = icmp sgt i32 %158, 1
  br i1 %159, label %151, label %148, !llvm.loop !41

160:                                              ; preds = %99
  %161 = load i32, ptr @deari_pos, align 4, !tbaa !7
  ret i32 %161
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @input_bit() unnamed_addr #2 {
  %1 = load i32, ptr @bits_to_go, align 4, !tbaa !7
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %21

3:                                                ; preds = %0
  %4 = load i32, ptr @in_pos, align 4, !tbaa !7
  %5 = load i32, ptr @in_size, align 4, !tbaa !7
  %6 = icmp ult i32 %4, %5
  br i1 %6, label %7, label %14

7:                                                ; preds = %3
  %8 = load ptr, ptr @in, align 8, !tbaa !19
  %9 = add nuw i32 %4, 1
  store i32 %9, ptr @in_pos, align 4, !tbaa !7
  %10 = zext i32 %4 to i64
  %11 = getelementptr inbounds i8, ptr %8, i64 %10
  %12 = load i8, ptr %11, align 1, !tbaa !11
  %13 = zext i8 %12 to i32
  store i32 %13, ptr @buffer, align 4, !tbaa !7
  br label %21

14:                                               ; preds = %3
  %15 = load i32, ptr @garbage_bits, align 4, !tbaa !7
  %16 = add nsw i32 %15, 1
  store i32 %16, ptr @garbage_bits, align 4, !tbaa !7
  %17 = icmp sgt i32 %15, 13
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = load ptr, ptr @stderr, align 8, !tbaa !19
  %20 = tail call i64 @fwrite(ptr nonnull @.str.28, i64 15, i64 1, ptr %19) #21
  tail call void @exit(i32 noundef -1) #19
  unreachable

21:                                               ; preds = %14, %7, %0
  %22 = phi i32 [ %1, %0 ], [ 8, %14 ], [ 8, %7 ]
  %23 = load i32, ptr @buffer, align 4, !tbaa !7
  %24 = and i32 %23, 1
  %25 = ashr i32 %23, 1
  store i32 %25, ptr @buffer, align 4, !tbaa !7
  %26 = add nsw i32 %22, -1
  store i32 %26, ptr @bits_to_go, align 4, !tbaa !7
  ret i32 %24
}

; Function Attrs: nounwind optsize uwtable
define internal void @uncompress(i32 noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = alloca [256 x i32], align 16
  %4 = alloca [256 x i32], align 16
  %5 = getelementptr inbounds ptr, ptr %1, i64 1
  %6 = load ptr, ptr %5, align 8, !tbaa !19
  %7 = tail call noalias ptr @fopen(ptr noundef %6, ptr noundef nonnull @.str.31) #16
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load ptr, ptr @stderr, align 8, !tbaa !19
  %11 = tail call i64 @fwrite(ptr nonnull @.str.1.32, i64 30, i64 1, ptr %10) #21
  tail call void @exit(i32 noundef 1) #19
  unreachable

12:                                               ; preds = %2
  %13 = tail call i64 @fread(ptr noundef nonnull @size, i64 noundef 4, i64 noundef 1, ptr noundef nonnull %7) #16
  %14 = tail call i64 @fread(ptr noundef nonnull @orgpos, i64 noundef 4, i64 noundef 1, ptr noundef nonnull %7) #16
  %15 = load i32, ptr @size, align 4, !tbaa !7
  %16 = shl i32 %15, 1
  %17 = zext i32 %16 to i64
  %18 = tail call noalias ptr @malloc(i64 noundef %17) #22
  store ptr %18, ptr @in, align 8, !tbaa !19
  %19 = tail call noalias ptr @malloc(i64 noundef %17) #22
  store ptr %19, ptr @deari, align 8, !tbaa !19
  %20 = tail call noalias ptr @malloc(i64 noundef %17) #22
  store ptr %20, ptr @derle, align 8, !tbaa !19
  %21 = tail call noalias ptr @malloc(i64 noundef %17) #22
  store ptr %21, ptr @debw, align 8, !tbaa !19
  %22 = insertelement <4 x ptr> poison, ptr %19, i64 0
  %23 = insertelement <4 x ptr> %22, ptr %18, i64 1
  %24 = insertelement <4 x ptr> %23, ptr %20, i64 2
  %25 = insertelement <4 x ptr> %24, ptr %21, i64 3
  %26 = icmp eq <4 x ptr> %25, zeroinitializer
  %27 = bitcast <4 x i1> %26 to i4
  %28 = icmp eq i4 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %12
  %30 = load ptr, ptr @stderr, align 8, !tbaa !19
  %31 = tail call i64 @fwrite(ptr nonnull @.str.2.39, i64 21, i64 1, ptr %30) #21
  tail call void @exit(i32 noundef 1) #19
  unreachable

32:                                               ; preds = %12
  %33 = tail call i64 @fread(ptr noundef nonnull %18, i64 noundef 1, i64 noundef %17, ptr noundef nonnull %7) #16
  %34 = trunc i64 %33 to i32
  %35 = tail call i32 @fclose(ptr noundef nonnull %7) #16
  %36 = tail call i32 @do_deari(i32 noundef %34) #20
  %37 = load ptr, ptr @in, align 8, !tbaa !19
  tail call void @free(ptr noundef %37) #20
  %38 = icmp eq i32 %36, 0
  %39 = load ptr, ptr @deari, align 8, !tbaa !19
  br i1 %38, label %93, label %40

40:                                               ; preds = %88, %32
  %41 = phi ptr [ %89, %88 ], [ %39, %32 ]
  %42 = phi i32 [ %91, %88 ], [ 0, %32 ]
  %43 = phi i32 [ %90, %88 ], [ 0, %32 ]
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds i8, ptr %41, i64 %44
  %46 = load i8, ptr %45, align 1, !tbaa !11
  %47 = icmp sgt i8 %46, -1
  br i1 %47, label %75, label %48

48:                                               ; preds = %40
  %49 = and i8 %46, 127
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %71, label %51

51:                                               ; preds = %48
  %52 = add nuw i32 %43, 1
  %53 = zext i32 %52 to i64
  br label %54

54:                                               ; preds = %54, %51
  %55 = phi ptr [ %41, %51 ], [ %65, %54 ]
  %56 = phi i32 [ %42, %51 ], [ %61, %54 ]
  %57 = phi i32 [ 0, %51 ], [ %64, %54 ]
  %58 = getelementptr inbounds i8, ptr %55, i64 %53
  %59 = load i8, ptr %58, align 1, !tbaa !11
  %60 = load ptr, ptr @derle, align 8, !tbaa !19
  %61 = add i32 %56, 1
  %62 = zext i32 %56 to i64
  %63 = getelementptr inbounds i8, ptr %60, i64 %62
  store i8 %59, ptr %63, align 1, !tbaa !11
  %64 = add nuw nsw i32 %57, 1
  %65 = load ptr, ptr @deari, align 8, !tbaa !19
  %66 = getelementptr inbounds i8, ptr %65, i64 %44
  %67 = load i8, ptr %66, align 1, !tbaa !11
  %68 = and i8 %67, 127
  %69 = zext i8 %68 to i32
  %70 = icmp ult i32 %64, %69
  br i1 %70, label %54, label %71, !llvm.loop !42

71:                                               ; preds = %54, %48
  %72 = phi ptr [ %41, %48 ], [ %65, %54 ]
  %73 = phi i32 [ %42, %48 ], [ %61, %54 ]
  %74 = add i32 %43, 2
  br label %88

75:                                               ; preds = %40
  %76 = load ptr, ptr @derle, align 8, !tbaa !19
  %77 = zext i32 %42 to i64
  %78 = getelementptr inbounds i8, ptr %76, i64 %77
  %79 = getelementptr inbounds i8, ptr %45, i64 1
  %80 = zext i8 %46 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %78, ptr nonnull align 1 %79, i64 %80, i1 false)
  %81 = load ptr, ptr @deari, align 8, !tbaa !19
  %82 = getelementptr inbounds i8, ptr %81, i64 %44
  %83 = load i8, ptr %82, align 1, !tbaa !11
  %84 = zext i8 %83 to i32
  %85 = add i32 %42, %84
  %86 = add nuw i32 %43, 1
  %87 = add i32 %86, %84
  br label %88

88:                                               ; preds = %75, %71
  %89 = phi ptr [ %72, %71 ], [ %81, %75 ]
  %90 = phi i32 [ %74, %71 ], [ %87, %75 ]
  %91 = phi i32 [ %73, %71 ], [ %85, %75 ]
  %92 = icmp ult i32 %90, %36
  br i1 %92, label %40, label %93, !llvm.loop !43

93:                                               ; preds = %88, %32
  %94 = phi ptr [ %39, %32 ], [ %89, %88 ]
  tail call void @free(ptr noundef %94) #20
  %95 = load ptr, ptr @derle, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %4) #17
  %96 = load i32, ptr @size, align 4, !tbaa !7
  %97 = zext i32 %96 to i64
  %98 = shl nuw nsw i64 %97, 2
  %99 = tail call noalias ptr @malloc(i64 noundef %98) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %3, i8 0, i64 1024, i1 false), !tbaa !7
  %100 = icmp eq i32 %96, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %102, %93
  br label %113

102:                                              ; preds = %102, %93
  %103 = phi i64 [ %110, %102 ], [ 0, %93 ]
  %104 = getelementptr inbounds i8, ptr %95, i64 %103
  %105 = load i8, ptr %104, align 1, !tbaa !11
  %106 = zext i8 %105 to i64
  %107 = getelementptr inbounds [256 x i32], ptr %3, i64 0, i64 %106
  %108 = load i32, ptr %107, align 4, !tbaa !7
  %109 = add i32 %108, 1
  store i32 %109, ptr %107, align 4, !tbaa !7
  %110 = add nuw nsw i64 %103, 1
  %111 = icmp eq i64 %110, %97
  br i1 %111, label %101, label %102, !llvm.loop !44

112:                                              ; preds = %113
  br i1 %100, label %136, label %122

113:                                              ; preds = %113, %101
  %114 = phi i64 [ %120, %113 ], [ 0, %101 ]
  %115 = phi i32 [ %119, %113 ], [ 0, %101 ]
  %116 = getelementptr inbounds [256 x i32], ptr %4, i64 0, i64 %114
  store i32 %115, ptr %116, align 4, !tbaa !7
  %117 = getelementptr inbounds [256 x i32], ptr %3, i64 0, i64 %114
  %118 = load i32, ptr %117, align 4, !tbaa !7
  %119 = add i32 %118, %115
  store i32 0, ptr %117, align 4, !tbaa !7
  %120 = add nuw nsw i64 %114, 1
  %121 = icmp eq i64 %120, 256
  br i1 %121, label %112, label %113, !llvm.loop !45

122:                                              ; preds = %122, %112
  %123 = phi i64 [ %134, %122 ], [ 0, %112 ]
  %124 = getelementptr inbounds i8, ptr %95, i64 %123
  %125 = load i8, ptr %124, align 1, !tbaa !11
  %126 = zext i8 %125 to i64
  %127 = getelementptr inbounds [256 x i32], ptr %3, i64 0, i64 %126
  %128 = load i32, ptr %127, align 4, !tbaa !7
  %129 = getelementptr inbounds [256 x i32], ptr %4, i64 0, i64 %126
  %130 = load i32, ptr %129, align 4, !tbaa !7
  %131 = add i32 %130, %128
  %132 = getelementptr inbounds i32, ptr %99, i64 %123
  store i32 %131, ptr %132, align 4, !tbaa !7
  %133 = add i32 %128, 1
  store i32 %133, ptr %127, align 4, !tbaa !7
  %134 = add nuw nsw i64 %123, 1
  %135 = icmp eq i64 %134, %97
  br i1 %135, label %136, label %122, !llvm.loop !46

136:                                              ; preds = %122, %112
  %137 = load i32, ptr @orgpos, align 4, !tbaa !7
  %138 = zext i32 %137 to i64
  %139 = getelementptr inbounds i8, ptr %95, i64 %138
  %140 = load i8, ptr %139, align 1, !tbaa !11
  %141 = load ptr, ptr @debw, align 8, !tbaa !19
  %142 = add i32 %96, -1
  %143 = zext i32 %142 to i64
  %144 = getelementptr inbounds i8, ptr %141, i64 %143
  store i8 %140, ptr %144, align 1, !tbaa !11
  %145 = load i32, ptr @size, align 4, !tbaa !7
  %146 = icmp ugt i32 %145, 1
  br i1 %146, label %147, label %171

147:                                              ; preds = %136
  %148 = load i32, ptr @orgpos, align 4, !tbaa !7
  br label %149

149:                                              ; preds = %149, %147
  %150 = phi i32 [ %167, %149 ], [ %148, %147 ]
  %151 = phi i32 [ %169, %149 ], [ %145, %147 ]
  %152 = phi i32 [ %168, %149 ], [ 1, %147 ]
  %153 = zext i32 %150 to i64
  %154 = getelementptr inbounds i32, ptr %99, i64 %153
  %155 = load i32, ptr %154, align 4, !tbaa !7
  %156 = zext i32 %155 to i64
  %157 = getelementptr inbounds i8, ptr %95, i64 %156
  %158 = load i8, ptr %157, align 1, !tbaa !11
  %159 = load ptr, ptr @debw, align 8, !tbaa !19
  %160 = xor i32 %152, -1
  %161 = add i32 %151, %160
  %162 = zext i32 %161 to i64
  %163 = getelementptr inbounds i8, ptr %159, i64 %162
  store i8 %158, ptr %163, align 1, !tbaa !11
  %164 = load i32, ptr @orgpos, align 4, !tbaa !7
  %165 = zext i32 %164 to i64
  %166 = getelementptr inbounds i32, ptr %99, i64 %165
  %167 = load i32, ptr %166, align 4, !tbaa !7
  store i32 %167, ptr @orgpos, align 4, !tbaa !7
  %168 = add nuw i32 %152, 1
  %169 = load i32, ptr @size, align 4, !tbaa !7
  %170 = icmp ult i32 %168, %169
  br i1 %170, label %149, label %171, !llvm.loop !47

171:                                              ; preds = %149, %136
  tail call void @free(ptr noundef %99) #20
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %3) #17
  %172 = load ptr, ptr @derle, align 8, !tbaa !19
  tail call void @free(ptr noundef %172) #20
  %173 = load ptr, ptr @debw, align 8, !tbaa !19
  %174 = load i32, ptr @size, align 4, !tbaa !7
  %175 = zext i32 %174 to i64
  %176 = load ptr, ptr @stdout, align 8, !tbaa !19
  %177 = tail call i64 @fwrite(ptr noundef %173, i64 noundef 1, i64 noundef %175, ptr noundef %176) #16
  %178 = load ptr, ptr @debw, align 8, !tbaa !19
  tail call void @free(ptr noundef %178) #20
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #15

attributes #0 = { nofree norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind willreturn memory(argmem: read) }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind }
attributes #11 = { mustprogress nofree nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #16 = { optsize }
attributes #17 = { nounwind }
attributes #18 = { cold optsize }
attributes #19 = { noreturn nounwind optsize }
attributes #20 = { nounwind optsize }
attributes #21 = { cold }
attributes #22 = { nounwind optsize allocsize(0) }
attributes #23 = { nounwind optsize willreturn memory(read) }

!llvm.ident = !{!0, !0, !0, !0, !0}
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
!11 = !{!9, !9, i64 0}
!12 = distinct !{!12, !13, !14, !15}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!"llvm.loop.isvectorized", i32 1}
!15 = !{!"llvm.loop.unroll.runtime.disable"}
!16 = distinct !{!16, !13}
!17 = !{!18, !18, i64 0}
!18 = !{!"long", !9, i64 0}
!19 = !{!20, !20, i64 0}
!20 = !{!"any pointer", !9, i64 0}
!21 = distinct !{!21, !13}
!22 = distinct !{!22, !13}
!23 = distinct !{!23, !13}
!24 = distinct !{!24, !13}
!25 = !{!26, !18, i64 48}
!26 = !{!"stat", !18, i64 0, !18, i64 8, !18, i64 16, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !18, i64 40, !18, i64 48, !18, i64 56, !18, i64 64, !27, i64 72, !27, i64 88, !27, i64 104, !9, i64 120}
!27 = !{!"timespec", !18, i64 0, !18, i64 8}
!28 = distinct !{!28, !13, !14, !15}
!29 = distinct !{!29, !13}
!30 = distinct !{!30, !13}
!31 = distinct !{!31, !13}
!32 = distinct !{!32, !13}
!33 = distinct !{!33, !13}
!34 = distinct !{!34, !13, !14, !15}
!35 = distinct !{!35, !13}
!36 = !{i32 0, i32 2}
!37 = distinct !{!37, !13}
!38 = distinct !{!38, !13}
!39 = distinct !{!39, !13}
!40 = distinct !{!40, !13}
!41 = distinct !{!41, !13}
!42 = distinct !{!42, !13}
!43 = distinct !{!43, !13}
!44 = distinct !{!44, !13}
!45 = distinct !{!45, !13}
!46 = distinct !{!46, !13}
!47 = distinct !{!47, !13}
