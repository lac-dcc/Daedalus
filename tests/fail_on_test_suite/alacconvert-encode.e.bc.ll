; ModuleID = '/src/llvm-test-suite/build/MultiSource/Applications/ALAC/encode/alacconvert-encode.e.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.BitBuffer = type { ptr, ptr, i32, i32 }
%class.ALACDecoder = type { %struct.ALACSpecificConfig, i16, ptr, ptr, ptr, ptr }
%struct.ALACSpecificConfig = type { i32, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32 }
%struct.AGParamRec = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%class.ALACEncoder = type <{ ptr, i16, i8, i8, [8 x i16], [4 x i8], ptr, ptr, ptr, ptr, ptr, ptr, [8 x [16 x [16 x i16]]], [8 x [16 x [16 x i16]]], i32, i32, i32, i32, i32, i32, i32, [4 x i8] }>
%struct.AudioFormatDescription = type { double, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.port_CAFPacketTableHeader = type <{ i64, i64, i32, i32, [1 x i8] }>
%struct.port_CAFAudioDescription = type { double, i32, i32, i32, i32, i32, i32 }

@_ZTV11ALACEncoder = internal unnamed_addr constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTI11ALACEncoder, ptr @_ZN11ALACEncoderD2Ev, ptr @_ZN11ALACEncoderD0Ev, ptr @_ZN11ALACEncoder6EncodeE22AudioFormatDescriptionS0_PhS1_Pi, ptr @_ZN11ALACEncoder6FinishEv, ptr @_ZN11ALACEncoder17InitializeEncoderE22AudioFormatDescription, ptr @_ZN11ALACEncoder15GetSourceFormatEPK22AudioFormatDescriptionPS0_] }, align 8, !type !0, !type !1, !type !2, !type !3, !type !4
@.str = private unnamed_addr constant [38 x i8] c"compressed frame too big: %u vs. %u \0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"compressed frame too big: %u vs. %u\0A\00", align 1
@_ZL12sChannelMaps = internal unnamed_addr constant [8 x i32] [i32 0, i32 1, i32 8, i32 8, i32 520, i32 520, i32 520, i32 33288], align 16
@.str.2 = private unnamed_addr constant [24 x i8] c"That ain't right! (%u)\0A\00", align 1
@__const._ZN11ALACEncoder14GetMagicCookieEPvPj.theChannelAtom = private unnamed_addr constant [12 x i8] c"\00\00\00\00chan\00\00\00\00", align 1
@_ZL21ALACChannelLayoutTags = internal unnamed_addr constant [8 x i32] [i32 6553601, i32 6619138, i32 7405571, i32 7602180, i32 7864325, i32 8126470, i32 9306119, i32 8323080], align 16
@_ZTVN10__cxxabiv117__class_type_infoE = external global ptr
@_ZTS11ALACEncoder = internal constant [14 x i8] c"11ALACEncoder\00", align 1
@_ZTI11ALACEncoder = internal constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTS11ALACEncoder }, align 8
@.str.45 = private unnamed_addr constant [3 x i8] c"-h\00", align 1
@.str.1.46 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@stdin = external local_unnamed_addr global ptr, align 8
@stdout = external local_unnamed_addr global ptr, align 8
@.str.2.47 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.3 = private unnamed_addr constant [24 x i8] c" Cannot open file \22%s\22\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"w+b\00", align 1
@.str.5 = private unnamed_addr constant [44 x i8] c" Cannot determine what format file \22%s\22 is\0A\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c" File \22%s\22 is of an unsupported type\0A\00", align 1
@.str.7 = private unnamed_addr constant [52 x i8] c" File \22%s's\22 data format is of an unsupported type\0A\00", align 1
@.str.8 = private unnamed_addr constant [47 x i8] c" Cannot decode more than two channels to WAVE\0A\00", align 1
@_ZL21ALACChannelLayoutTags.48 = internal unnamed_addr constant [8 x i32] [i32 6553601, i32 6619138, i32 7405571, i32 7602180, i32 7864325, i32 8126470, i32 9306119, i32 8323080], align 16
@__const._Z18WriteWAVERIFFChunkP8_IO_FILE.theReadBuffer = private unnamed_addr constant [12 x i8] c"RIFF\00\00\00\00WAVE", align 1
@__const._Z17WriteWAVEfmtChunkP8_IO_FILE22AudioFormatDescription.theBuffer = private unnamed_addr constant <{ [9 x i8], [15 x i8] }> <{ [9 x i8] c"fmt \10\00\00\00\01", [15 x i8] zeroinitializer }>, align 16
@str = private unnamed_addr constant [7 x i8] c"Usage:\00", align 1
@str.15 = private unnamed_addr constant [8 x i8] c"Encode:\00", align 1
@str.16 = private unnamed_addr constant [62 x i8] c"        alacconvert <input wav or caf file> <output caf file>\00", align 1
@str.17 = private unnamed_addr constant [8 x i8] c"Decode:\00", align 1
@str.18 = private unnamed_addr constant [62 x i8] c"        alacconvert <input caf file> <output wav or caf file>\00", align 1
@switch.table._Z15SetOutputFormat22AudioFormatDescriptionPS_ = private unnamed_addr constant [5 x i32] [i32 1, i32 2, i32 3, i32 1, i32 4], align 4
@__const._Z18WriteCAFFdescChunkP8_IO_FILE22AudioFormatDescription.theReadBuffer = private unnamed_addr constant <{ i8, i8, i8, i8, [8 x i8] }> <{ i8 100, i8 101, i8 115, i8 99, [8 x i8] zeroinitializer }>, align 1
@__const._Z18WriteCAFFdataChunkP8_IO_FILE.theReadBuffer = private unnamed_addr constant [16 x i8] c"data\00\00\00\00\00\00\00\00\00\00\00\01", align 16
@__const._Z18WriteCAFFkukiChunkP8_IO_FILEPvj.thekukiHeaderBuffer = private unnamed_addr constant <{ i8, i8, i8, i8, [8 x i8] }> <{ i8 107, i8 117, i8 107, i8 105, [8 x i8] zeroinitializer }>, align 1
@__const._Z18WriteCAFFchanChunkP8_IO_FILEj.theBuffer = private unnamed_addr constant <{ i8, i8, i8, i8, [20 x i8] }> <{ i8 99, i8 104, i8 97, i8 110, [20 x i8] zeroinitializer }>, align 16

@_ZN11ALACDecoderC1Ev = internal unnamed_addr alias void (ptr), ptr @_ZN11ALACDecoderC2Ev
@_ZN11ALACDecoderD1Ev = internal unnamed_addr alias void (ptr), ptr @_ZN11ALACDecoderD2Ev
@_ZN11ALACEncoderC1Ev = internal unnamed_addr alias void (ptr), ptr @_ZN11ALACEncoderC2Ev

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none) uwtable
define internal zeroext i16 @Swap16NtoB(i16 noundef zeroext %0) #0 {
  %2 = tail call i16 @llvm.bswap.i16(i16 %0)
  ret i16 %2
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #1

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none) uwtable
define internal zeroext i16 @Swap16BtoN(i16 noundef zeroext %0) #0 {
  %2 = tail call i16 @llvm.bswap.i16(i16 %0)
  ret i16 %2
}

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none) uwtable
define internal i32 @Swap32NtoB(i32 noundef %0) #0 {
  %2 = tail call i32 @llvm.bswap.i32(i32 %0)
  ret i32 %2
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #1

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none) uwtable
define internal i32 @Swap32BtoN(i32 noundef %0) #0 {
  %2 = tail call i32 @llvm.bswap.i32(i32 %0)
  ret i32 %2
}

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none) uwtable
define internal i64 @Swap64NtoB(i64 noundef %0) #0 {
  %2 = tail call i64 @llvm.bswap.i64(i64 %0)
  ret i64 %2
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #1

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none) uwtable
define internal double @SwapFloat64BtoN(double noundef %0) #0 {
  %2 = bitcast double %0 to i64
  %3 = tail call i64 @llvm.bswap.i64(i64 %2)
  %4 = bitcast i64 %3 to double
  ret double %4
}

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none) uwtable
define internal double @SwapFloat64NtoB(double noundef %0) #0 {
  %2 = bitcast double %0 to i64
  %3 = tail call i64 @llvm.bswap.i64(i64 %2)
  %4 = bitcast i64 %3 to double
  ret double %4
}

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal void @Swap16(ptr nocapture noundef %0) #2 {
  %2 = load i16, ptr %0, align 2, !tbaa !12
  %3 = tail call i16 @llvm.bswap.i16(i16 %2)
  store i16 %3, ptr %0, align 2, !tbaa !12
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal void @Swap24(ptr nocapture noundef %0) #3 {
  %2 = load i8, ptr %0, align 1, !tbaa !16
  %3 = getelementptr inbounds i8, ptr %0, i64 2
  %4 = load i8, ptr %3, align 1, !tbaa !16
  store i8 %4, ptr %0, align 1, !tbaa !16
  store i8 %2, ptr %3, align 1, !tbaa !16
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal void @Swap32(ptr nocapture noundef %0) #2 {
  %2 = load i32, ptr %0, align 4, !tbaa !17
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  store i32 %3, ptr %0, align 4, !tbaa !17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal void @BitBufferInit(ptr nocapture noundef writeonly %0, ptr noundef %1, i32 noundef %2) #4 {
  store ptr %1, ptr %0, align 8, !tbaa !19
  %4 = zext i32 %2 to i64
  %5 = getelementptr inbounds i8, ptr %1, i64 %4
  %6 = getelementptr inbounds %struct.BitBuffer, ptr %0, i64 0, i32 1
  store ptr %5, ptr %6, align 8, !tbaa !22
  %7 = getelementptr inbounds %struct.BitBuffer, ptr %0, i64 0, i32 2
  store i32 0, ptr %7, align 8, !tbaa !23
  %8 = getelementptr inbounds %struct.BitBuffer, ptr %0, i64 0, i32 3
  store i32 %2, ptr %8, align 4, !tbaa !24
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal i32 @BitBufferRead(ptr nocapture noundef %0, i8 noundef zeroext %1) #5 {
  %3 = load ptr, ptr %0, align 8, !tbaa !19
  %4 = load i8, ptr %3, align 1, !tbaa !16
  %5 = zext i8 %4 to i32
  %6 = shl nuw nsw i32 %5, 16
  %7 = getelementptr inbounds i8, ptr %3, i64 1
  %8 = load i8, ptr %7, align 1, !tbaa !16
  %9 = zext i8 %8 to i32
  %10 = shl nuw nsw i32 %9, 8
  %11 = or i32 %10, %6
  %12 = getelementptr inbounds i8, ptr %3, i64 2
  %13 = load i8, ptr %12, align 1, !tbaa !16
  %14 = zext i8 %13 to i32
  %15 = or i32 %11, %14
  %16 = getelementptr inbounds %struct.BitBuffer, ptr %0, i64 0, i32 2
  %17 = load i32, ptr %16, align 8, !tbaa !23
  %18 = shl i32 %15, %17
  %19 = and i32 %18, 16777215
  %20 = zext i8 %1 to i32
  %21 = add i32 %17, %20
  %22 = sub nsw i32 24, %20
  %23 = lshr i32 %19, %22
  %24 = lshr i32 %21, 3
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds i8, ptr %3, i64 %25
  store ptr %26, ptr %0, align 8, !tbaa !19
  %27 = and i32 %21, 7
  store i32 %27, ptr %16, align 8, !tbaa !23
  ret i32 %23
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal zeroext i8 @BitBufferReadSmall(ptr nocapture noundef %0, i8 noundef zeroext %1) #5 {
  %3 = load ptr, ptr %0, align 8, !tbaa !19
  %4 = load i8, ptr %3, align 1, !tbaa !16
  %5 = zext i8 %4 to i32
  %6 = shl nuw nsw i32 %5, 8
  %7 = getelementptr inbounds i8, ptr %3, i64 1
  %8 = load i8, ptr %7, align 1, !tbaa !16
  %9 = zext i8 %8 to i32
  %10 = or i32 %6, %9
  %11 = getelementptr inbounds %struct.BitBuffer, ptr %0, i64 0, i32 2
  %12 = load i32, ptr %11, align 8, !tbaa !23
  %13 = shl i32 %10, %12
  %14 = zext i8 %1 to i32
  %15 = add i32 %12, %14
  %16 = and i32 %13, 65535
  %17 = sub nsw i32 16, %14
  %18 = lshr i32 %16, %17
  %19 = lshr i32 %15, 3
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds i8, ptr %3, i64 %20
  store ptr %21, ptr %0, align 8, !tbaa !19
  %22 = and i32 %15, 7
  store i32 %22, ptr %11, align 8, !tbaa !23
  %23 = trunc i32 %18 to i8
  ret i8 %23
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal zeroext i8 @BitBufferReadOne(ptr nocapture noundef %0) #5 {
  %2 = load ptr, ptr %0, align 8, !tbaa !19
  %3 = load i8, ptr %2, align 1, !tbaa !16
  %4 = zext i8 %3 to i32
  %5 = getelementptr inbounds %struct.BitBuffer, ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !23
  %7 = sub i32 7, %6
  %8 = lshr i32 %4, %7
  %9 = trunc i32 %8 to i8
  %10 = and i8 %9, 1
  %11 = add i32 %6, 1
  %12 = lshr i32 %11, 3
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds i8, ptr %2, i64 %13
  store ptr %14, ptr %0, align 8, !tbaa !19
  %15 = and i32 %11, 7
  store i32 %15, ptr %5, align 8, !tbaa !23
  ret i8 %10
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @BitBufferGetPosition(ptr nocapture noundef readonly %0) #6 {
  %2 = getelementptr inbounds %struct.BitBuffer, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !22
  %4 = getelementptr inbounds %struct.BitBuffer, ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 4, !tbaa !24
  %6 = zext i32 %5 to i64
  %7 = sub nsw i64 0, %6
  %8 = getelementptr inbounds i8, ptr %3, i64 %7
  %9 = load ptr, ptr %0, align 8, !tbaa !19
  %10 = ptrtoint ptr %9 to i64
  %11 = ptrtoint ptr %8 to i64
  %12 = sub i64 %10, %11
  %13 = trunc i64 %12 to i32
  %14 = shl i32 %13, 3
  %15 = getelementptr inbounds %struct.BitBuffer, ptr %0, i64 0, i32 2
  %16 = load i32, ptr %15, align 8, !tbaa !23
  %17 = add i32 %14, %16
  ret i32 %17
}

; Function Attrs: nofree nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal void @BitBufferByteAlign(ptr noundef %0, i32 noundef %1) #7 {
  %3 = getelementptr inbounds %struct.BitBuffer, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 8, !tbaa !23
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %15, label %6

6:                                                ; preds = %2
  %7 = icmp eq i32 %1, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %6
  %9 = sub i32 8, %4
  tail call void @BitBufferWrite(ptr noundef nonnull %0, i32 noundef 0, i32 noundef %9) #31
  br label %15

10:                                               ; preds = %6
  %11 = icmp eq i32 %4, 8
  br i1 %11, label %15, label %12

12:                                               ; preds = %10
  %13 = load ptr, ptr %0, align 8, !tbaa !19
  %14 = getelementptr inbounds i8, ptr %13, i64 1
  store ptr %14, ptr %0, align 8, !tbaa !19
  store i32 0, ptr %3, align 8, !tbaa !23
  br label %15

15:                                               ; preds = %12, %10, %8, %2
  ret void
}

; Function Attrs: nofree nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal void @BitBufferWrite(ptr noundef %0, i32 noundef %1, i32 noundef %2) #7 {
  %4 = icmp eq ptr %0, null
  %5 = icmp eq i32 %2, 0
  %6 = or i1 %4, %5
  br i1 %6, label %40, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.BitBuffer, ptr %0, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !23
  %10 = sub i32 8, %9
  br label %11

11:                                               ; preds = %35, %7
  %12 = phi i32 [ %2, %7 ], [ %15, %35 ]
  %13 = phi i32 [ %10, %7 ], [ %36, %35 ]
  %14 = tail call i32 @llvm.umin.i32(i32 %13, i32 %12)
  %15 = sub i32 %12, %14
  %16 = lshr i32 %1, %15
  %17 = sub i32 %13, %14
  %18 = sub i32 8, %14
  %19 = lshr i32 255, %18
  %20 = and i32 %17, 255
  %21 = shl i32 %19, %20
  %22 = load ptr, ptr %0, align 8, !tbaa !19
  %23 = load i8, ptr %22, align 1, !tbaa !16
  %24 = zext i8 %23 to i32
  %25 = xor i32 %21, -1
  %26 = and i32 %24, %25
  %27 = and i32 %19, %16
  %28 = shl i32 %27, %20
  %29 = or i32 %26, %28
  %30 = trunc i32 %29 to i8
  store i8 %30, ptr %22, align 1, !tbaa !16
  %31 = icmp eq i32 %17, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %11
  %33 = load ptr, ptr %0, align 8, !tbaa !19
  %34 = getelementptr inbounds i8, ptr %33, i64 1
  store ptr %34, ptr %0, align 8, !tbaa !19
  br label %35

35:                                               ; preds = %32, %11
  %36 = phi i32 [ 8, %32 ], [ %17, %11 ]
  %37 = icmp eq i32 %15, 0
  br i1 %37, label %38, label %11, !llvm.loop !25

38:                                               ; preds = %35
  %.lcssa = phi i32 [ %36, %35 ]
  %39 = sub i32 8, %.lcssa
  store i32 %39, ptr %8, align 8, !tbaa !23
  br label %40

40:                                               ; preds = %38, %3
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal void @BitBufferAdvance(ptr nocapture noundef %0, i32 noundef %1) #3 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %13, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.BitBuffer, ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !23
  %7 = add i32 %6, %1
  %8 = lshr i32 %7, 3
  %9 = load ptr, ptr %0, align 8, !tbaa !19
  %10 = zext i32 %8 to i64
  %11 = getelementptr inbounds i8, ptr %9, i64 %10
  store ptr %11, ptr %0, align 8, !tbaa !19
  %12 = and i32 %7, 7
  store i32 %12, ptr %5, align 8, !tbaa !23
  br label %13

13:                                               ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal void @BitBufferReset(ptr nocapture noundef %0) #3 {
  %2 = getelementptr inbounds %struct.BitBuffer, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !22
  %4 = getelementptr inbounds %struct.BitBuffer, ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 4, !tbaa !24
  %6 = zext i32 %5 to i64
  %7 = sub nsw i64 0, %6
  %8 = getelementptr inbounds i8, ptr %3, i64 %7
  store ptr %8, ptr %0, align 8, !tbaa !19
  %9 = getelementptr inbounds %struct.BitBuffer, ptr %0, i64 0, i32 2
  store i32 0, ptr %9, align 8, !tbaa !23
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal void @_ZN11ALACDecoderC2Ev(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(64) %0) unnamed_addr #8 align 2 {
  %2 = getelementptr inbounds %class.ALACDecoder, ptr %0, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 32, i1 false)
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

; Function Attrs: mustprogress nounwind optsize willreturn uwtable
define internal void @_ZN11ALACDecoderD2Ev(ptr nocapture noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #10 align 2 {
  %2 = getelementptr inbounds %class.ALACDecoder, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !27
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %3) #32
  store ptr null, ptr %2, align 8, !tbaa !27
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr inbounds %class.ALACDecoder, ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !35
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %6
  tail call void @free(ptr noundef nonnull %8) #32
  store ptr null, ptr %7, align 8, !tbaa !35
  br label %11

11:                                               ; preds = %10, %6
  %12 = getelementptr inbounds %class.ALACDecoder, ptr %0, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !36
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  tail call void @free(ptr noundef nonnull %13) #32
  store ptr null, ptr %12, align 8, !tbaa !36
  br label %16

16:                                               ; preds = %15, %11
  ret void
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: mustprogress optsize uwtable
define internal noundef i32 @_ZN11ALACDecoder4InitEPvj(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(64) %0, ptr nocapture noundef readonly %1, i32 noundef %2) #12 align 2 {
  %4 = getelementptr inbounds i8, ptr %1, i64 4
  %5 = load i8, ptr %4, align 1, !tbaa !37
  %6 = icmp eq i8 %5, 102
  br i1 %6, label %7, label %24

7:                                                ; preds = %3
  %8 = getelementptr inbounds i8, ptr %1, i64 5
  %9 = load i8, ptr %8, align 1, !tbaa !37
  %10 = icmp eq i8 %9, 114
  br i1 %10, label %11, label %44

11:                                               ; preds = %7
  %12 = getelementptr inbounds i8, ptr %1, i64 6
  %13 = load i8, ptr %12, align 1, !tbaa !37
  %14 = icmp eq i8 %13, 109
  br i1 %14, label %15, label %44

15:                                               ; preds = %11
  %16 = getelementptr inbounds i8, ptr %1, i64 7
  %17 = load i8, ptr %16, align 1, !tbaa !37
  %18 = icmp eq i8 %17, 97
  br i1 %18, label %19, label %44

19:                                               ; preds = %15
  %20 = getelementptr inbounds i8, ptr %1, i64 12
  %21 = add i32 %2, -12
  %22 = getelementptr inbounds i8, ptr %1, i64 16
  %23 = load i8, ptr %22, align 1, !tbaa !37
  br label %24

24:                                               ; preds = %19, %3
  %25 = phi i8 [ %23, %19 ], [ %5, %3 ]
  %26 = phi ptr [ %20, %19 ], [ %1, %3 ]
  %27 = phi i32 [ %21, %19 ], [ %2, %3 ]
  %28 = icmp eq i8 %25, 97
  br i1 %28, label %29, label %44

29:                                               ; preds = %24
  %30 = getelementptr inbounds i8, ptr %26, i64 5
  %31 = load i8, ptr %30, align 1, !tbaa !37
  %32 = icmp eq i8 %31, 108
  br i1 %32, label %33, label %44

33:                                               ; preds = %29
  %34 = getelementptr inbounds i8, ptr %26, i64 6
  %35 = load i8, ptr %34, align 1, !tbaa !37
  %36 = icmp eq i8 %35, 97
  br i1 %36, label %37, label %44

37:                                               ; preds = %33
  %38 = getelementptr inbounds i8, ptr %26, i64 7
  %39 = load i8, ptr %38, align 1, !tbaa !37
  %40 = icmp eq i8 %39, 99
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = getelementptr inbounds i8, ptr %26, i64 12
  %43 = add i32 %27, -12
  br label %44

44:                                               ; preds = %41, %37, %33, %29, %24, %15, %11, %7
  %45 = phi ptr [ %42, %41 ], [ %26, %37 ], [ %26, %33 ], [ %26, %29 ], [ %26, %24 ], [ %1, %15 ], [ %1, %11 ], [ %1, %7 ]
  %46 = phi i32 [ %43, %41 ], [ %27, %37 ], [ %27, %33 ], [ %27, %29 ], [ %27, %24 ], [ %2, %15 ], [ %2, %11 ], [ %2, %7 ]
  %47 = icmp ugt i32 %46, 23
  br i1 %47, label %48, label %94

48:                                               ; preds = %44
  %49 = load i32, ptr %45, align 4, !tbaa !38
  %50 = tail call i32 @Swap32BtoN(i32 noundef %49) #31
  %51 = getelementptr inbounds %struct.ALACSpecificConfig, ptr %45, i64 0, i32 1
  %52 = getelementptr inbounds %struct.ALACSpecificConfig, ptr %45, i64 0, i32 5
  %53 = load i8, ptr %52, align 4, !tbaa !39
  %54 = getelementptr inbounds %struct.ALACSpecificConfig, ptr %45, i64 0, i32 6
  %55 = load i8, ptr %54, align 1, !tbaa !40
  %56 = getelementptr inbounds %struct.ALACSpecificConfig, ptr %45, i64 0, i32 7
  %57 = load i16, ptr %56, align 2, !tbaa !41
  %58 = getelementptr inbounds %struct.ALACSpecificConfig, ptr %45, i64 0, i32 8
  %59 = getelementptr inbounds %struct.ALACSpecificConfig, ptr %45, i64 0, i32 9
  %60 = getelementptr inbounds %struct.ALACSpecificConfig, ptr %45, i64 0, i32 10
  %61 = getelementptr inbounds i8, ptr %0, i64 4
  %62 = load <4 x i8>, ptr %51, align 4, !tbaa !37
  %63 = tail call zeroext i16 @Swap16BtoN(i16 noundef zeroext %57) #31
  %64 = load i32, ptr %58, align 4, !tbaa !42
  %65 = tail call i32 @Swap32BtoN(i32 noundef %64) #31
  %66 = load i32, ptr %59, align 4, !tbaa !43
  %67 = tail call i32 @Swap32BtoN(i32 noundef %66) #31
  %68 = load i32, ptr %60, align 4, !tbaa !44
  %69 = tail call i32 @Swap32BtoN(i32 noundef %68) #31
  store i32 %50, ptr %0, align 8, !tbaa.struct !45
  store <4 x i8> %62, ptr %61, align 4
  %70 = getelementptr inbounds i8, ptr %0, i64 8
  store i8 %53, ptr %70, align 8, !tbaa.struct !48
  %71 = getelementptr inbounds i8, ptr %0, i64 9
  store i8 %55, ptr %71, align 1, !tbaa.struct !49
  %72 = getelementptr inbounds i8, ptr %0, i64 10
  store i16 %63, ptr %72, align 2, !tbaa.struct !50
  %73 = getelementptr inbounds i8, ptr %0, i64 12
  store i32 %65, ptr %73, align 4, !tbaa.struct !51
  %74 = getelementptr inbounds i8, ptr %0, i64 16
  store i32 %67, ptr %74, align 8, !tbaa.struct !52
  %75 = getelementptr inbounds i8, ptr %0, i64 20
  store i32 %69, ptr %75, align 4, !tbaa.struct !53
  %76 = extractelement <4 x i8> %62, i64 0
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %78, label %94

78:                                               ; preds = %48
  %79 = zext i32 %50 to i64
  %80 = shl nuw nsw i64 %79, 2
  %81 = tail call noalias ptr @calloc(i64 noundef %80, i64 noundef 1) #33
  %82 = getelementptr inbounds %class.ALACDecoder, ptr %0, i64 0, i32 2
  store ptr %81, ptr %82, align 8, !tbaa !27
  %83 = tail call noalias ptr @calloc(i64 noundef %80, i64 noundef 1) #33
  %84 = getelementptr inbounds %class.ALACDecoder, ptr %0, i64 0, i32 3
  store ptr %83, ptr %84, align 8, !tbaa !35
  %85 = tail call noalias ptr @calloc(i64 noundef %80, i64 noundef 1) #33
  %86 = getelementptr inbounds %class.ALACDecoder, ptr %0, i64 0, i32 4
  store ptr %85, ptr %86, align 8, !tbaa !36
  %87 = getelementptr inbounds %class.ALACDecoder, ptr %0, i64 0, i32 5
  store ptr %85, ptr %87, align 8, !tbaa !54
  %88 = icmp eq ptr %81, null
  %89 = icmp eq ptr %83, null
  %90 = or i1 %88, %89
  %91 = icmp eq ptr %85, null
  %92 = or i1 %90, %91
  %93 = select i1 %92, i32 -108, i32 0
  br label %94

94:                                               ; preds = %78, %48, %44
  %95 = phi i32 [ -50, %48 ], [ -50, %44 ], [ %93, %78 ]
  ret i32 %95
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: mustprogress optsize uwtable
define internal noundef i32 @_ZN11ALACDecoder6DecodeEP9BitBufferPhjjPj(ptr nocapture noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef writeonly %5) #12 align 2 {
  %7 = alloca %struct.BitBuffer, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.AGParamRec, align 4
  %11 = alloca [32 x i16], align 16
  %12 = alloca [32 x i16], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #34
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #34
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #34
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %10) #34
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %11) #34
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %12) #34
  %13 = icmp ne ptr %1, null
  %14 = icmp ne ptr %2, null
  %15 = and i1 %13, %14
  %16 = icmp ne ptr %5, null
  %17 = and i1 %15, %16
  %18 = icmp ne i32 %4, 0
  %19 = and i1 %18, %17
  br i1 %19, label %20, label %519

20:                                               ; preds = %6
  %21 = getelementptr inbounds %class.ALACDecoder, ptr %0, i64 0, i32 1
  store i16 0, ptr %21, align 8, !tbaa !55
  store i32 %3, ptr %5, align 4, !tbaa !46
  %22 = getelementptr inbounds %struct.BitBuffer, ptr %1, i64 0, i32 1
  %23 = getelementptr inbounds %struct.ALACSpecificConfig, ptr %0, i64 0, i32 3
  %24 = getelementptr inbounds %struct.ALACSpecificConfig, ptr %0, i64 0, i32 2
  %25 = getelementptr inbounds %class.ALACDecoder, ptr %0, i64 0, i32 2
  %26 = getelementptr inbounds %class.ALACDecoder, ptr %0, i64 0, i32 3
  %27 = getelementptr inbounds %struct.ALACSpecificConfig, ptr %0, i64 0, i32 4
  %28 = getelementptr inbounds %struct.ALACSpecificConfig, ptr %0, i64 0, i32 5
  %29 = getelementptr inbounds %struct.ALACSpecificConfig, ptr %0, i64 0, i32 7
  %30 = getelementptr inbounds %class.ALACDecoder, ptr %0, i64 0, i32 4
  %31 = getelementptr inbounds %class.ALACDecoder, ptr %0, i64 0, i32 5
  br label %32

32:                                               ; preds = %449, %20
  %33 = phi i32 [ 0, %20 ], [ %450, %449 ]
  %34 = phi i32 [ %3, %20 ], [ %452, %449 ]
  %35 = load ptr, ptr %1, align 8, !tbaa !56
  %36 = load ptr, ptr %22, align 8, !tbaa !58
  %37 = icmp ult ptr %35, %36
  br i1 %37, label %38, label %519

38:                                               ; preds = %32
  %39 = load i8, ptr %23, align 2, !tbaa !59
  %40 = call zeroext i8 @BitBufferReadSmall(ptr noundef nonnull %1, i8 noundef zeroext 3) #31
  switch i8 %40, label %449 [
    i8 0, label %41
    i8 3, label %41
    i8 1, label %214
    i8 2, label %456
    i8 5, label %456
    i8 4, label %444
    i8 6, label %446
    i8 7, label %448
  ]

41:                                               ; preds = %38, %38
  %42 = call zeroext i8 @BitBufferReadSmall(ptr noundef nonnull %1, i8 noundef zeroext 4) #31
  %43 = zext i8 %42 to i32
  %44 = shl nuw i32 1, %43
  %45 = load i16, ptr %21, align 8, !tbaa !55
  %46 = trunc i32 %44 to i16
  %47 = or i16 %45, %46
  store i16 %47, ptr %21, align 8, !tbaa !55
  %48 = call i32 @BitBufferRead(ptr noundef nonnull %1, i8 noundef zeroext 12) #31
  %49 = and i32 %48, 65535
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %519

51:                                               ; preds = %41
  %52 = call i32 @BitBufferRead(ptr noundef nonnull %1, i8 noundef zeroext 4) #31
  %53 = trunc i32 %52 to i8
  %54 = lshr i8 %53, 1
  %55 = and i8 %54, 3
  %56 = icmp eq i8 %55, 3
  br i1 %56, label %519, label %57

57:                                               ; preds = %51
  %58 = and i32 %52, 1
  %59 = load i8, ptr %24, align 1, !tbaa !60
  %60 = zext i8 %59 to i32
  %61 = shl nuw nsw i8 %55, 3
  %62 = zext i8 %61 to i32
  %63 = sub nsw i32 %60, %62
  %64 = and i32 %52, 248
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %71, label %66

66:                                               ; preds = %57
  %67 = call i32 @BitBufferRead(ptr noundef nonnull %1, i8 noundef zeroext 16) #31
  %68 = shl i32 %67, 16
  %69 = call i32 @BitBufferRead(ptr noundef nonnull %1, i8 noundef zeroext 16) #31
  %70 = or i32 %68, %69
  br label %71

71:                                               ; preds = %66, %57
  %72 = phi i32 [ %70, %66 ], [ %34, %57 ]
  %73 = icmp eq i32 %58, 0
  br i1 %73, label %74, label %116

74:                                               ; preds = %71
  %75 = call i32 @BitBufferRead(ptr noundef nonnull %1, i8 noundef zeroext 8) #31
  %76 = call i32 @BitBufferRead(ptr noundef nonnull %1, i8 noundef zeroext 8) #31
  %77 = call i32 @BitBufferRead(ptr noundef nonnull %1, i8 noundef zeroext 8) #31
  %78 = and i32 %77, 15
  %79 = call i32 @BitBufferRead(ptr noundef nonnull %1, i8 noundef zeroext 8) #31
  %80 = lshr i32 %79, 5
  %81 = and i32 %80, 7
  %82 = and i32 %79, 31
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %93, label %84

84:                                               ; preds = %74
  %85 = zext i32 %82 to i64
  br label %86

86:                                               ; preds = %86, %84
  %87 = phi i64 [ 0, %84 ], [ %91, %86 ]
  %88 = call i32 @BitBufferRead(ptr noundef nonnull %1, i8 noundef zeroext 16) #31
  %89 = trunc i32 %88 to i16
  %90 = getelementptr inbounds [32 x i16], ptr %11, i64 0, i64 %87
  store i16 %89, ptr %90, align 2, !tbaa !47
  %91 = add nuw nsw i64 %87, 1
  %92 = icmp eq i64 %91, %85
  br i1 %92, label %93, label %86, !llvm.loop !61

93:                                               ; preds = %86, %74
  %94 = icmp eq i8 %55, 0
  br i1 %94, label %97, label %95

95:                                               ; preds = %93
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !62
  %96 = mul i32 %72, %62
  call void @BitBufferAdvance(ptr noundef nonnull %1, i32 noundef %96) #31
  br label %97

97:                                               ; preds = %95, %93
  %98 = load i8, ptr %27, align 1, !tbaa !64
  %99 = zext i8 %98 to i32
  %100 = zext i8 %39 to i32
  %101 = mul nuw nsw i32 %81, %100
  %102 = lshr i32 %101, 2
  %103 = load i8, ptr %28, align 8, !tbaa !65
  %104 = zext i8 %103 to i32
  %105 = load i16, ptr %29, align 2, !tbaa !66
  %106 = zext i16 %105 to i32
  call void @set_ag_params(ptr noundef nonnull %10, i32 noundef %99, i32 noundef %102, i32 noundef %104, i32 noundef %72, i32 noundef %72, i32 noundef %106) #31
  %107 = load ptr, ptr %30, align 8, !tbaa !36
  %108 = call i32 @dyn_decomp(ptr noundef nonnull %10, ptr noundef nonnull %1, ptr noundef %107, i32 noundef %72, i32 noundef %63, ptr noundef nonnull %8) #31
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %519

110:                                              ; preds = %97
  %111 = and i32 %77, 240
  %112 = icmp eq i32 %111, 0
  %113 = load ptr, ptr %30, align 8, !tbaa !36
  br i1 %112, label %151, label %114

114:                                              ; preds = %110
  call void @unpc_block(ptr noundef %113, ptr noundef %113, i32 noundef %72, ptr noundef null, i32 noundef 31, i32 noundef %63, i32 noundef 0) #31
  %115 = load ptr, ptr %30, align 8, !tbaa !36
  br label %151

116:                                              ; preds = %71
  %117 = sub nsw i32 32, %63
  %118 = icmp ult i32 %63, 17
  %119 = icmp eq i32 %72, 0
  br i1 %118, label %125, label %120

120:                                              ; preds = %116
  br i1 %119, label %149, label %121

121:                                              ; preds = %120
  %122 = trunc i32 %63 to i8
  %123 = add i8 %122, -16
  %124 = zext i32 %72 to i64
  br label %138

125:                                              ; preds = %116
  br i1 %119, label %149, label %126

126:                                              ; preds = %125
  %127 = trunc i32 %63 to i8
  %128 = zext i32 %72 to i64
  br label %129

129:                                              ; preds = %129, %126
  %130 = phi i64 [ 0, %126 ], [ %136, %129 ]
  %131 = call i32 @BitBufferRead(ptr noundef nonnull %1, i8 noundef zeroext %127) #31
  %132 = shl i32 %131, %117
  %133 = ashr i32 %132, %117
  %134 = load ptr, ptr %25, align 8, !tbaa !27
  %135 = getelementptr inbounds i32, ptr %134, i64 %130
  store i32 %133, ptr %135, align 4, !tbaa !46
  %136 = add nuw nsw i64 %130, 1
  %137 = icmp eq i64 %136, %128
  br i1 %137, label %149, label %129, !llvm.loop !67

138:                                              ; preds = %138, %121
  %139 = phi i64 [ 0, %121 ], [ %147, %138 ]
  %140 = call i32 @BitBufferRead(ptr noundef nonnull %1, i8 noundef zeroext 16) #31
  %141 = shl i32 %140, 16
  %142 = ashr i32 %141, %117
  %143 = call i32 @BitBufferRead(ptr noundef nonnull %1, i8 noundef zeroext %123) #31
  %144 = or i32 %142, %143
  %145 = load ptr, ptr %25, align 8, !tbaa !27
  %146 = getelementptr inbounds i32, ptr %145, i64 %139
  store i32 %144, ptr %146, align 4, !tbaa !46
  %147 = add nuw nsw i64 %139, 1
  %148 = icmp eq i64 %147, %124
  br i1 %148, label %149, label %138, !llvm.loop !68

149:                                              ; preds = %138, %129, %125, %120
  %150 = mul i32 %72, %63
  store i32 %150, ptr %8, align 4, !tbaa !46
  br label %166

151:                                              ; preds = %114, %110
  %152 = phi ptr [ %115, %114 ], [ %113, %110 ]
  %153 = load ptr, ptr %25, align 8, !tbaa !27
  call void @unpc_block(ptr noundef %152, ptr noundef %153, i32 noundef %72, ptr noundef nonnull %11, i32 noundef %82, i32 noundef %63, i32 noundef %78) #31
  br i1 %94, label %166, label %154

154:                                              ; preds = %151
  %155 = icmp eq i32 %72, 0
  br i1 %155, label %166, label %156

156:                                              ; preds = %154
  %157 = zext i32 %72 to i64
  br label %158

158:                                              ; preds = %158, %156
  %159 = phi i64 [ 0, %156 ], [ %164, %158 ]
  %160 = call i32 @BitBufferRead(ptr noundef nonnull %7, i8 noundef zeroext %61) #31
  %161 = trunc i32 %160 to i16
  %162 = load ptr, ptr %31, align 8, !tbaa !54
  %163 = getelementptr inbounds i16, ptr %162, i64 %159
  store i16 %161, ptr %163, align 2, !tbaa !47
  %164 = add nuw nsw i64 %159, 1
  %165 = icmp eq i64 %164, %157
  br i1 %165, label %166, label %158, !llvm.loop !69

166:                                              ; preds = %158, %154, %151, %149
  %167 = phi i1 [ true, %149 ], [ true, %151 ], [ false, %154 ], [ false, %158 ]
  %168 = phi i8 [ 0, %149 ], [ 0, %151 ], [ %55, %154 ], [ %55, %158 ]
  %169 = zext i8 %168 to i32
  %170 = load i8, ptr %24, align 1, !tbaa !60
  %171 = zext i8 %170 to i32
  %172 = add nsw i32 %171, -16
  %173 = call i32 @llvm.fshl.i32(i32 %171, i32 %172, i32 30)
  switch i32 %173, label %212 [
    i32 0, label %174
    i32 1, label %192
    i32 2, label %197
    i32 4, label %205
  ]

174:                                              ; preds = %166
  %175 = zext i32 %33 to i64
  %176 = getelementptr inbounds i16, ptr %2, i64 %175
  %177 = icmp eq i32 %72, 0
  br i1 %177, label %212, label %178

178:                                              ; preds = %174
  %179 = load ptr, ptr %25, align 8, !tbaa !27
  %180 = zext i32 %72 to i64
  br label %181

181:                                              ; preds = %181, %178
  %182 = phi i64 [ 0, %178 ], [ %189, %181 ]
  %183 = phi i32 [ 0, %178 ], [ %190, %181 ]
  %184 = getelementptr inbounds i32, ptr %179, i64 %182
  %185 = load i32, ptr %184, align 4, !tbaa !46
  %186 = trunc i32 %185 to i16
  %187 = zext i32 %183 to i64
  %188 = getelementptr inbounds i16, ptr %176, i64 %187
  store i16 %186, ptr %188, align 2, !tbaa !47
  %189 = add nuw nsw i64 %182, 1
  %190 = add i32 %183, %4
  %191 = icmp eq i64 %189, %180
  br i1 %191, label %212, label %181, !llvm.loop !70

192:                                              ; preds = %166
  %193 = mul i32 %33, 3
  %194 = zext i32 %193 to i64
  %195 = getelementptr inbounds i8, ptr %2, i64 %194
  %196 = load ptr, ptr %25, align 8, !tbaa !27
  call void @copyPredictorTo20(ptr noundef %196, ptr noundef nonnull %195, i32 noundef %4, i32 noundef %72) #31
  br label %212

197:                                              ; preds = %166
  %198 = mul i32 %33, 3
  %199 = zext i32 %198 to i64
  %200 = getelementptr inbounds i8, ptr %2, i64 %199
  %201 = load ptr, ptr %25, align 8, !tbaa !27
  br i1 %167, label %204, label %202

202:                                              ; preds = %197
  %203 = load ptr, ptr %31, align 8, !tbaa !54
  call void @copyPredictorTo24Shift(ptr noundef %201, ptr noundef %203, ptr noundef nonnull %200, i32 noundef %4, i32 noundef %72, i32 noundef %169) #31
  br label %212

204:                                              ; preds = %197
  call void @copyPredictorTo24(ptr noundef %201, ptr noundef nonnull %200, i32 noundef %4, i32 noundef %72) #31
  br label %212

205:                                              ; preds = %166
  %206 = zext i32 %33 to i64
  %207 = getelementptr inbounds i32, ptr %2, i64 %206
  %208 = load ptr, ptr %25, align 8, !tbaa !27
  br i1 %167, label %211, label %209

209:                                              ; preds = %205
  %210 = load ptr, ptr %31, align 8, !tbaa !54
  call void @copyPredictorTo32Shift(ptr noundef %208, ptr noundef %210, ptr noundef nonnull %207, i32 noundef %4, i32 noundef %72, i32 noundef %169) #31
  br label %212

211:                                              ; preds = %205
  call void @copyPredictorTo32(ptr noundef %208, ptr noundef nonnull %207, i32 noundef %4, i32 noundef %72) #31
  br label %212

212:                                              ; preds = %211, %209, %204, %202, %192, %181, %174, %166
  %213 = add i32 %33, 1
  store i32 %72, ptr %5, align 4, !tbaa !46
  br label %449

214:                                              ; preds = %38
  %215 = add i32 %33, 2
  %216 = icmp ugt i32 %215, %4
  br i1 %216, label %456, label %217

217:                                              ; preds = %214
  %218 = call zeroext i8 @BitBufferReadSmall(ptr noundef nonnull %1, i8 noundef zeroext 4) #31
  %219 = zext i8 %218 to i32
  %220 = shl nuw i32 1, %219
  %221 = load i16, ptr %21, align 8, !tbaa !55
  %222 = trunc i32 %220 to i16
  %223 = or i16 %221, %222
  store i16 %223, ptr %21, align 8, !tbaa !55
  %224 = call i32 @BitBufferRead(ptr noundef nonnull %1, i8 noundef zeroext 12) #31
  %225 = and i32 %224, 65535
  %226 = icmp eq i32 %225, 0
  br i1 %226, label %227, label %519

227:                                              ; preds = %217
  %228 = call i32 @BitBufferRead(ptr noundef nonnull %1, i8 noundef zeroext 4) #31
  %229 = trunc i32 %228 to i8
  %230 = lshr i8 %229, 1
  %231 = and i8 %230, 3
  %232 = icmp eq i8 %231, 3
  br i1 %232, label %519, label %233

233:                                              ; preds = %227
  %234 = and i32 %228, 1
  %235 = load i8, ptr %24, align 1, !tbaa !60
  %236 = zext i8 %235 to i32
  %237 = shl nuw nsw i8 %231, 3
  %238 = zext i8 %237 to i32
  %239 = sub nsw i32 %236, %238
  %240 = add nsw i32 %239, 1
  %241 = and i32 %228, 248
  %242 = icmp eq i32 %241, 0
  br i1 %242, label %248, label %243

243:                                              ; preds = %233
  %244 = call i32 @BitBufferRead(ptr noundef nonnull %1, i8 noundef zeroext 16) #31
  %245 = shl i32 %244, 16
  %246 = call i32 @BitBufferRead(ptr noundef nonnull %1, i8 noundef zeroext 16) #31
  %247 = or i32 %245, %246
  br label %248

248:                                              ; preds = %243, %233
  %249 = phi i32 [ %247, %243 ], [ %34, %233 ]
  %250 = icmp eq i32 %234, 0
  br i1 %250, label %251, label %333

251:                                              ; preds = %248
  %252 = call i32 @BitBufferRead(ptr noundef nonnull %1, i8 noundef zeroext 8) #31
  %253 = trunc i32 %252 to i8
  %254 = call i32 @BitBufferRead(ptr noundef nonnull %1, i8 noundef zeroext 8) #31
  %255 = trunc i32 %254 to i8
  %256 = call i32 @BitBufferRead(ptr noundef nonnull %1, i8 noundef zeroext 8) #31
  %257 = and i32 %256, 15
  %258 = call i32 @BitBufferRead(ptr noundef nonnull %1, i8 noundef zeroext 8) #31
  %259 = lshr i32 %258, 5
  %260 = and i32 %259, 7
  %261 = and i32 %258, 31
  %262 = icmp eq i32 %261, 0
  br i1 %262, label %272, label %263

263:                                              ; preds = %251
  %264 = zext i32 %261 to i64
  br label %265

265:                                              ; preds = %265, %263
  %266 = phi i64 [ 0, %263 ], [ %270, %265 ]
  %267 = call i32 @BitBufferRead(ptr noundef nonnull %1, i8 noundef zeroext 16) #31
  %268 = trunc i32 %267 to i16
  %269 = getelementptr inbounds [32 x i16], ptr %11, i64 0, i64 %266
  store i16 %268, ptr %269, align 2, !tbaa !47
  %270 = add nuw nsw i64 %266, 1
  %271 = icmp eq i64 %270, %264
  br i1 %271, label %272, label %265, !llvm.loop !71

272:                                              ; preds = %265, %251
  %273 = call i32 @BitBufferRead(ptr noundef nonnull %1, i8 noundef zeroext 8) #31
  %274 = and i32 %273, 15
  %275 = call i32 @BitBufferRead(ptr noundef nonnull %1, i8 noundef zeroext 8) #31
  %276 = lshr i32 %275, 5
  %277 = and i32 %276, 7
  %278 = and i32 %275, 31
  %279 = icmp eq i32 %278, 0
  br i1 %279, label %289, label %280

280:                                              ; preds = %272
  %281 = zext i32 %278 to i64
  br label %282

282:                                              ; preds = %282, %280
  %283 = phi i64 [ 0, %280 ], [ %287, %282 ]
  %284 = call i32 @BitBufferRead(ptr noundef nonnull %1, i8 noundef zeroext 16) #31
  %285 = trunc i32 %284 to i16
  %286 = getelementptr inbounds [32 x i16], ptr %12, i64 0, i64 %283
  store i16 %285, ptr %286, align 2, !tbaa !47
  %287 = add nuw nsw i64 %283, 1
  %288 = icmp eq i64 %287, %281
  br i1 %288, label %289, label %282, !llvm.loop !72

289:                                              ; preds = %282, %272
  %290 = icmp eq i8 %231, 0
  br i1 %290, label %294, label %291

291:                                              ; preds = %289
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !62
  %292 = shl nuw nsw i32 %238, 1
  %293 = mul i32 %292, %249
  call void @BitBufferAdvance(ptr noundef nonnull %1, i32 noundef %293) #31
  br label %294

294:                                              ; preds = %291, %289
  %295 = load i8, ptr %27, align 1, !tbaa !64
  %296 = zext i8 %295 to i32
  %297 = zext i8 %39 to i32
  %298 = mul nuw nsw i32 %260, %297
  %299 = lshr i32 %298, 2
  %300 = load i8, ptr %28, align 8, !tbaa !65
  %301 = zext i8 %300 to i32
  %302 = load i16, ptr %29, align 2, !tbaa !66
  %303 = zext i16 %302 to i32
  call void @set_ag_params(ptr noundef nonnull %10, i32 noundef %296, i32 noundef %299, i32 noundef %301, i32 noundef %249, i32 noundef %249, i32 noundef %303) #31
  %304 = load ptr, ptr %30, align 8, !tbaa !36
  %305 = call i32 @dyn_decomp(ptr noundef nonnull %10, ptr noundef nonnull %1, ptr noundef %304, i32 noundef %249, i32 noundef %240, ptr noundef nonnull %8) #31
  %306 = icmp eq i32 %305, 0
  br i1 %306, label %307, label %519

307:                                              ; preds = %294
  %308 = and i32 %256, 240
  %309 = icmp eq i32 %308, 0
  %310 = load ptr, ptr %30, align 8, !tbaa !36
  br i1 %309, label %313, label %311

311:                                              ; preds = %307
  call void @unpc_block(ptr noundef %310, ptr noundef %310, i32 noundef %249, ptr noundef null, i32 noundef 31, i32 noundef %240, i32 noundef 0) #31
  %312 = load ptr, ptr %30, align 8, !tbaa !36
  br label %313

313:                                              ; preds = %311, %307
  %314 = phi ptr [ %312, %311 ], [ %310, %307 ]
  %315 = load ptr, ptr %25, align 8, !tbaa !27
  call void @unpc_block(ptr noundef %314, ptr noundef %315, i32 noundef %249, ptr noundef nonnull %11, i32 noundef %261, i32 noundef %240, i32 noundef %257) #31
  %316 = load i8, ptr %27, align 1, !tbaa !64
  %317 = zext i8 %316 to i32
  %318 = mul nuw nsw i32 %277, %297
  %319 = lshr i32 %318, 2
  %320 = load i8, ptr %28, align 8, !tbaa !65
  %321 = zext i8 %320 to i32
  %322 = load i16, ptr %29, align 2, !tbaa !66
  %323 = zext i16 %322 to i32
  call void @set_ag_params(ptr noundef nonnull %10, i32 noundef %317, i32 noundef %319, i32 noundef %321, i32 noundef %249, i32 noundef %249, i32 noundef %323) #31
  %324 = load ptr, ptr %30, align 8, !tbaa !36
  %325 = call i32 @dyn_decomp(ptr noundef nonnull %10, ptr noundef nonnull %1, ptr noundef %324, i32 noundef %249, i32 noundef %240, ptr noundef nonnull %9) #31
  %326 = icmp eq i32 %325, 0
  br i1 %326, label %327, label %519

327:                                              ; preds = %313
  %328 = and i32 %273, 240
  %329 = icmp eq i32 %328, 0
  %330 = load ptr, ptr %30, align 8, !tbaa !36
  br i1 %329, label %381, label %331

331:                                              ; preds = %327
  call void @unpc_block(ptr noundef %330, ptr noundef %330, i32 noundef %249, ptr noundef null, i32 noundef 31, i32 noundef %240, i32 noundef 0) #31
  %332 = load ptr, ptr %30, align 8, !tbaa !36
  br label %381

333:                                              ; preds = %248
  %334 = load i8, ptr %24, align 1, !tbaa !60
  %335 = zext i8 %334 to i32
  %336 = sub nsw i32 32, %335
  %337 = icmp ult i8 %334, 17
  br i1 %337, label %338, label %356

338:                                              ; preds = %333
  %339 = icmp eq i32 %249, 0
  br i1 %339, label %379, label %340

340:                                              ; preds = %338
  %341 = zext i32 %249 to i64
  br label %342

342:                                              ; preds = %342, %340
  %343 = phi i64 [ 0, %340 ], [ %354, %342 ]
  %344 = call i32 @BitBufferRead(ptr noundef nonnull %1, i8 noundef zeroext %334) #31
  %345 = shl i32 %344, %336
  %346 = ashr i32 %345, %336
  %347 = load ptr, ptr %25, align 8, !tbaa !27
  %348 = getelementptr inbounds i32, ptr %347, i64 %343
  store i32 %346, ptr %348, align 4, !tbaa !46
  %349 = call i32 @BitBufferRead(ptr noundef nonnull %1, i8 noundef zeroext %334) #31
  %350 = shl i32 %349, %336
  %351 = ashr i32 %350, %336
  %352 = load ptr, ptr %26, align 8, !tbaa !35
  %353 = getelementptr inbounds i32, ptr %352, i64 %343
  store i32 %351, ptr %353, align 4, !tbaa !46
  %354 = add nuw nsw i64 %343, 1
  %355 = icmp eq i64 %354, %341
  br i1 %355, label %379, label %342, !llvm.loop !73

356:                                              ; preds = %333
  %357 = add i8 %334, -16
  %358 = icmp eq i32 %249, 0
  br i1 %358, label %379, label %359

359:                                              ; preds = %356
  %360 = zext i32 %249 to i64
  br label %361

361:                                              ; preds = %361, %359
  %362 = phi i64 [ 0, %359 ], [ %377, %361 ]
  %363 = call i32 @BitBufferRead(ptr noundef nonnull %1, i8 noundef zeroext 16) #31
  %364 = shl i32 %363, 16
  %365 = ashr i32 %364, %336
  %366 = call i32 @BitBufferRead(ptr noundef nonnull %1, i8 noundef zeroext %357) #31
  %367 = or i32 %365, %366
  %368 = load ptr, ptr %25, align 8, !tbaa !27
  %369 = getelementptr inbounds i32, ptr %368, i64 %362
  store i32 %367, ptr %369, align 4, !tbaa !46
  %370 = call i32 @BitBufferRead(ptr noundef nonnull %1, i8 noundef zeroext 16) #31
  %371 = shl i32 %370, 16
  %372 = ashr i32 %371, %336
  %373 = call i32 @BitBufferRead(ptr noundef nonnull %1, i8 noundef zeroext %357) #31
  %374 = or i32 %372, %373
  %375 = load ptr, ptr %26, align 8, !tbaa !35
  %376 = getelementptr inbounds i32, ptr %375, i64 %362
  store i32 %374, ptr %376, align 4, !tbaa !46
  %377 = add nuw nsw i64 %362, 1
  %378 = icmp eq i64 %377, %360
  br i1 %378, label %379, label %361, !llvm.loop !74

379:                                              ; preds = %361, %356, %342, %338
  %380 = mul i32 %249, %335
  store i32 %380, ptr %8, align 4, !tbaa !46
  store i32 %380, ptr %9, align 4, !tbaa !46
  br label %402

381:                                              ; preds = %331, %327
  %382 = phi ptr [ %332, %331 ], [ %330, %327 ]
  %383 = load ptr, ptr %26, align 8, !tbaa !35
  call void @unpc_block(ptr noundef %382, ptr noundef %383, i32 noundef %249, ptr noundef nonnull %12, i32 noundef %278, i32 noundef %240, i32 noundef %274) #31
  br i1 %290, label %402, label %384

384:                                              ; preds = %381
  %385 = shl i32 %249, 1
  %386 = icmp eq i32 %385, 0
  br i1 %386, label %402, label %387

387:                                              ; preds = %384
  %388 = zext i32 %385 to i64
  br label %389

389:                                              ; preds = %389, %387
  %390 = phi i64 [ 0, %387 ], [ %400, %389 ]
  %391 = call i32 @BitBufferRead(ptr noundef nonnull %7, i8 noundef zeroext %237) #31
  %392 = trunc i32 %391 to i16
  %393 = load ptr, ptr %31, align 8, !tbaa !54
  %394 = getelementptr inbounds i16, ptr %393, i64 %390
  store i16 %392, ptr %394, align 2, !tbaa !47
  %395 = call i32 @BitBufferRead(ptr noundef nonnull %7, i8 noundef zeroext %237) #31
  %396 = trunc i32 %395 to i16
  %397 = load ptr, ptr %31, align 8, !tbaa !54
  %398 = or i64 %390, 1
  %399 = getelementptr inbounds i16, ptr %397, i64 %398
  store i16 %396, ptr %399, align 2, !tbaa !47
  %400 = add nuw nsw i64 %390, 2
  %401 = icmp ult i64 %400, %388
  br i1 %401, label %389, label %402, !llvm.loop !75

402:                                              ; preds = %389, %384, %381, %379
  %403 = phi i8 [ 0, %379 ], [ 0, %381 ], [ %231, %384 ], [ %231, %389 ]
  %404 = phi i8 [ 0, %379 ], [ %253, %381 ], [ %253, %384 ], [ %253, %389 ]
  %405 = phi i8 [ 0, %379 ], [ %255, %381 ], [ %255, %384 ], [ %255, %389 ]
  %406 = zext i8 %403 to i32
  %407 = load i8, ptr %24, align 1, !tbaa !60
  %408 = zext i8 %407 to i32
  %409 = add nsw i32 %408, -16
  %410 = call i32 @llvm.fshl.i32(i32 %408, i32 %409, i32 30)
  switch i32 %410, label %443 [
    i32 0, label %411
    i32 1, label %418
    i32 2, label %426
    i32 4, label %435
  ]

411:                                              ; preds = %402
  %412 = zext i32 %33 to i64
  %413 = getelementptr inbounds i16, ptr %2, i64 %412
  %414 = load ptr, ptr %25, align 8, !tbaa !27
  %415 = load ptr, ptr %26, align 8, !tbaa !35
  %416 = zext i8 %404 to i32
  %417 = sext i8 %405 to i32
  call void @unmix16(ptr noundef %414, ptr noundef %415, ptr noundef nonnull %413, i32 noundef %4, i32 noundef %249, i32 noundef %416, i32 noundef %417) #31
  br label %443

418:                                              ; preds = %402
  %419 = mul i32 %33, 3
  %420 = zext i32 %419 to i64
  %421 = getelementptr inbounds i8, ptr %2, i64 %420
  %422 = load ptr, ptr %25, align 8, !tbaa !27
  %423 = load ptr, ptr %26, align 8, !tbaa !35
  %424 = zext i8 %404 to i32
  %425 = sext i8 %405 to i32
  call void @unmix20(ptr noundef %422, ptr noundef %423, ptr noundef nonnull %421, i32 noundef %4, i32 noundef %249, i32 noundef %424, i32 noundef %425) #31
  br label %443

426:                                              ; preds = %402
  %427 = mul i32 %33, 3
  %428 = zext i32 %427 to i64
  %429 = getelementptr inbounds i8, ptr %2, i64 %428
  %430 = load ptr, ptr %25, align 8, !tbaa !27
  %431 = load ptr, ptr %26, align 8, !tbaa !35
  %432 = zext i8 %404 to i32
  %433 = sext i8 %405 to i32
  %434 = load ptr, ptr %31, align 8, !tbaa !54
  call void @unmix24(ptr noundef %430, ptr noundef %431, ptr noundef nonnull %429, i32 noundef %4, i32 noundef %249, i32 noundef %432, i32 noundef %433, ptr noundef %434, i32 noundef %406) #31
  br label %443

435:                                              ; preds = %402
  %436 = zext i32 %33 to i64
  %437 = getelementptr inbounds i32, ptr %2, i64 %436
  %438 = load ptr, ptr %25, align 8, !tbaa !27
  %439 = load ptr, ptr %26, align 8, !tbaa !35
  %440 = zext i8 %404 to i32
  %441 = sext i8 %405 to i32
  %442 = load ptr, ptr %31, align 8, !tbaa !54
  call void @unmix32(ptr noundef %438, ptr noundef %439, ptr noundef nonnull %437, i32 noundef %4, i32 noundef %249, i32 noundef %440, i32 noundef %441, ptr noundef %442, i32 noundef %406) #31
  br label %443

443:                                              ; preds = %435, %426, %418, %411, %402
  store i32 %249, ptr %5, align 4, !tbaa !46
  br label %449

444:                                              ; preds = %38
  %445 = call noundef i32 @_ZN11ALACDecoder17DataStreamElementEP9BitBuffer(ptr nonnull align 8 poison, ptr noundef nonnull %1) #31, !range !76
  br label %449

446:                                              ; preds = %38
  %447 = call noundef i32 @_ZN11ALACDecoder11FillElementEP9BitBuffer(ptr nonnull align 8 poison, ptr noundef nonnull %1) #31, !range !76
  br label %449

448:                                              ; preds = %38
  call void @BitBufferByteAlign(ptr noundef nonnull %1, i32 noundef 0) #31
  br label %519

449:                                              ; preds = %446, %444, %443, %212, %38
  %450 = phi i32 [ %33, %38 ], [ %33, %446 ], [ %33, %444 ], [ %215, %443 ], [ %213, %212 ]
  %451 = phi i32 [ 0, %38 ], [ %447, %446 ], [ %445, %444 ], [ 0, %443 ], [ 0, %212 ]
  %452 = phi i32 [ %34, %38 ], [ %34, %446 ], [ %34, %444 ], [ %249, %443 ], [ %72, %212 ]
  %453 = icmp ult i32 %450, %4
  %454 = icmp eq i32 %451, 0
  %455 = and i1 %453, %454
  br i1 %455, label %32, label %456, !llvm.loop !77

456:                                              ; preds = %449, %214, %38, %38
  %457 = phi i32 [ %450, %449 ], [ %33, %214 ], [ %33, %38 ], [ %33, %38 ]
  %458 = phi i32 [ %451, %449 ], [ 0, %214 ], [ -50, %38 ], [ -50, %38 ]
  %459 = phi i32 [ %452, %449 ], [ %34, %214 ], [ %34, %38 ], [ %34, %38 ]
  %460 = icmp ult i32 %457, %4
  br i1 %460, label %461, label %519

461:                                              ; preds = %456
  %462 = icmp eq i32 %4, 1
  %463 = mul i32 %459, %4
  %464 = icmp eq i32 %463, 0
  %465 = zext i32 %459 to i64
  %466 = shl nuw nsw i64 %465, 2
  %467 = mul i32 %459, 3
  %468 = mul i32 %467, %4
  %469 = icmp eq i32 %468, 0
  %470 = mul i32 %4, 3
  %471 = zext i32 %467 to i64
  %472 = shl nuw nsw i64 %465, 1
  %473 = zext i32 %457 to i64
  %474 = zext i32 %4 to i64
  br label %475

475:                                              ; preds = %516, %461
  %476 = phi i64 [ %473, %461 ], [ %517, %516 ]
  %477 = load i8, ptr %24, align 1, !tbaa !60
  switch i8 %477, label %516 [
    i8 16, label %478
    i8 24, label %488
    i8 32, label %506
  ]

478:                                              ; preds = %475
  %479 = getelementptr inbounds i16, ptr %2, i64 %476
  br i1 %462, label %481, label %480

480:                                              ; preds = %478
  br i1 %464, label %516, label %482

481:                                              ; preds = %478
  call void @llvm.memset.p0.i64(ptr nonnull align 2 %479, i8 0, i64 %472, i1 false)
  br label %516

482:                                              ; preds = %482, %480
  %483 = phi i32 [ %486, %482 ], [ 0, %480 ]
  %484 = zext i32 %483 to i64
  %485 = getelementptr inbounds i16, ptr %479, i64 %484
  store i16 0, ptr %485, align 2, !tbaa !47
  %486 = add i32 %483, %4
  %487 = icmp ult i32 %486, %463
  br i1 %487, label %482, label %516, !llvm.loop !78

488:                                              ; preds = %475
  %489 = mul i64 %476, 3
  %490 = and i64 %489, 4294967295
  %491 = getelementptr inbounds i8, ptr %2, i64 %490
  br i1 %462, label %493, label %492

492:                                              ; preds = %488
  br i1 %469, label %516, label %494

493:                                              ; preds = %488
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %491, i8 0, i64 %471, i1 false)
  br label %516

494:                                              ; preds = %494, %492
  %495 = phi i32 [ %504, %494 ], [ 0, %492 ]
  %496 = zext i32 %495 to i64
  %497 = getelementptr inbounds i8, ptr %491, i64 %496
  store i8 0, ptr %497, align 1, !tbaa !37
  %498 = add nuw i32 %495, 1
  %499 = zext i32 %498 to i64
  %500 = getelementptr inbounds i8, ptr %491, i64 %499
  store i8 0, ptr %500, align 1, !tbaa !37
  %501 = add i32 %495, 2
  %502 = zext i32 %501 to i64
  %503 = getelementptr inbounds i8, ptr %491, i64 %502
  store i8 0, ptr %503, align 1, !tbaa !37
  %504 = add i32 %495, %470
  %505 = icmp ult i32 %504, %468
  br i1 %505, label %494, label %516, !llvm.loop !79

506:                                              ; preds = %475
  %507 = getelementptr inbounds i32, ptr %2, i64 %476
  br i1 %462, label %509, label %508

508:                                              ; preds = %506
  br i1 %464, label %516, label %510

509:                                              ; preds = %506
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %507, i8 0, i64 %466, i1 false)
  br label %516

510:                                              ; preds = %510, %508
  %511 = phi i32 [ %514, %510 ], [ 0, %508 ]
  %512 = zext i32 %511 to i64
  %513 = getelementptr inbounds i32, ptr %507, i64 %512
  store i32 0, ptr %513, align 4, !tbaa !46
  %514 = add i32 %511, %4
  %515 = icmp ult i32 %514, %463
  br i1 %515, label %510, label %516, !llvm.loop !80

516:                                              ; preds = %510, %509, %508, %494, %493, %492, %482, %481, %480, %475
  %517 = add nuw nsw i64 %476, 1
  %518 = icmp eq i64 %517, %474
  br i1 %518, label %519, label %475, !llvm.loop !81

519:                                              ; preds = %516, %456, %448, %313, %294, %227, %217, %97, %51, %41, %32, %6
  %520 = phi i32 [ -50, %6 ], [ 0, %448 ], [ %458, %456 ], [ %458, %516 ], [ -50, %227 ], [ -50, %217 ], [ -50, %51 ], [ -50, %41 ], [ -50, %32 ], [ %108, %97 ], [ %325, %313 ], [ %305, %294 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %12) #34
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %11) #34
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %10) #34
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #34
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #34
  ret i32 %520
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #14

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #1

; Function Attrs: mustprogress optsize uwtable
define internal noundef i32 @_ZN11ALACDecoder17DataStreamElementEP9BitBuffer(ptr nocapture nonnull readnone align 8 %0, ptr noundef %1) #12 align 2 {
  %3 = tail call zeroext i8 @BitBufferReadSmall(ptr noundef %1, i8 noundef zeroext 4) #31
  %4 = tail call zeroext i8 @BitBufferReadOne(ptr noundef %1) #31
  %5 = tail call zeroext i8 @BitBufferReadSmall(ptr noundef %1, i8 noundef zeroext 8) #31
  %6 = zext i8 %5 to i32
  %7 = icmp eq i8 %5, -1
  br i1 %7, label %8, label %12

8:                                                ; preds = %2
  %9 = tail call zeroext i8 @BitBufferReadSmall(ptr noundef %1, i8 noundef zeroext 8) #31
  %10 = zext i8 %9 to i32
  %11 = add nuw nsw i32 %10, 255
  br label %12

12:                                               ; preds = %8, %2
  %13 = phi i32 [ %11, %8 ], [ %6, %2 ]
  %14 = icmp eq i8 %4, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %12
  tail call void @BitBufferByteAlign(ptr noundef %1, i32 noundef 0) #31
  br label %16

16:                                               ; preds = %15, %12
  %17 = shl nuw nsw i32 %13, 3
  %18 = and i32 %17, 524280
  tail call void @BitBufferAdvance(ptr noundef %1, i32 noundef %18) #31
  %19 = load ptr, ptr %1, align 8, !tbaa !56
  %20 = getelementptr inbounds %struct.BitBuffer, ptr %1, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !58
  %22 = icmp ugt ptr %19, %21
  %23 = select i1 %22, i32 -50, i32 0
  ret i32 %23
}

; Function Attrs: mustprogress optsize uwtable
define internal noundef i32 @_ZN11ALACDecoder11FillElementEP9BitBuffer(ptr nocapture nonnull readnone align 8 %0, ptr noundef %1) #12 align 2 {
  %3 = tail call zeroext i8 @BitBufferReadSmall(ptr noundef %1, i8 noundef zeroext 4) #31
  %4 = zext i8 %3 to i32
  %5 = icmp eq i8 %3, 15
  br i1 %5, label %6, label %10

6:                                                ; preds = %2
  %7 = tail call zeroext i8 @BitBufferReadSmall(ptr noundef %1, i8 noundef zeroext 8) #31
  %8 = zext i8 %7 to i32
  %9 = add nuw nsw i32 %8, 14
  br label %10

10:                                               ; preds = %6, %2
  %11 = phi i32 [ %9, %6 ], [ %4, %2 ]
  %12 = shl nuw nsw i32 %11, 3
  %13 = and i32 %12, 524280
  tail call void @BitBufferAdvance(ptr noundef %1, i32 noundef %13) #31
  %14 = load ptr, ptr %1, align 8, !tbaa !56
  %15 = getelementptr inbounds %struct.BitBuffer, ptr %1, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !58
  %17 = icmp ugt ptr %14, %16
  %18 = select i1 %17, i32 -50, i32 0
  ret i32 %18
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #14

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal void @_ZN11ALACEncoderC2Ev(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(8300) %0) unnamed_addr #8 align 2 {
  store ptr getelementptr inbounds ({ [8 x ptr] }, ptr @_ZTV11ALACEncoder, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !82
  %2 = getelementptr inbounds %class.ALACEncoder, ptr %0, i64 0, i32 1
  store i16 0, ptr %2, align 8, !tbaa !84
  %3 = getelementptr inbounds %class.ALACEncoder, ptr %0, i64 0, i32 2
  store i8 0, ptr %3, align 2, !tbaa !87
  %4 = getelementptr inbounds %class.ALACEncoder, ptr %0, i64 0, i32 6
  %5 = getelementptr inbounds %class.ALACEncoder, ptr %0, i64 0, i32 14
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %4, i8 0, i64 48, i1 false)
  store <4 x i32> <i32 0, i32 0, i32 0, i32 4096>, ptr %5, align 8, !tbaa !46
  ret void
}

; Function Attrs: mustprogress nounwind optsize willreturn uwtable
define internal void @_ZN11ALACEncoderD2Ev(ptr nocapture noundef nonnull align 8 dereferenceable(8300) %0) unnamed_addr #10 align 2 {
  store ptr getelementptr inbounds ({ [8 x ptr] }, ptr @_ZTV11ALACEncoder, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !82
  %2 = getelementptr inbounds %class.ALACEncoder, ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !88
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %3) #32
  store ptr null, ptr %2, align 8, !tbaa !88
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr inbounds %class.ALACEncoder, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !89
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %6
  tail call void @free(ptr noundef nonnull %8) #32
  store ptr null, ptr %7, align 8, !tbaa !89
  br label %11

11:                                               ; preds = %10, %6
  %12 = getelementptr inbounds %class.ALACEncoder, ptr %0, i64 0, i32 8
  %13 = load ptr, ptr %12, align 8, !tbaa !90
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  tail call void @free(ptr noundef nonnull %13) #32
  store ptr null, ptr %12, align 8, !tbaa !90
  br label %16

16:                                               ; preds = %15, %11
  %17 = getelementptr inbounds %class.ALACEncoder, ptr %0, i64 0, i32 9
  %18 = load ptr, ptr %17, align 8, !tbaa !91
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  tail call void @free(ptr noundef nonnull %18) #32
  store ptr null, ptr %17, align 8, !tbaa !91
  br label %21

21:                                               ; preds = %20, %16
  %22 = getelementptr inbounds %class.ALACEncoder, ptr %0, i64 0, i32 10
  %23 = load ptr, ptr %22, align 8, !tbaa !92
  %24 = icmp eq ptr %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %21
  tail call void @free(ptr noundef nonnull %23) #32
  store ptr null, ptr %22, align 8, !tbaa !92
  br label %26

26:                                               ; preds = %25, %21
  %27 = getelementptr inbounds %class.ALACEncoder, ptr %0, i64 0, i32 11
  %28 = load ptr, ptr %27, align 8, !tbaa !93
  %29 = icmp eq ptr %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %26
  tail call void @free(ptr noundef nonnull %28) #32
  store ptr null, ptr %27, align 8, !tbaa !93
  br label %31

31:                                               ; preds = %30, %26
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @_ZN11ALACEncoderD0Ev(ptr noundef nonnull align 8 dereferenceable(8300) %0) unnamed_addr #16 align 2 {
  tail call void @_ZN11ALACEncoderD2Ev(ptr noundef nonnull align 8 dereferenceable(8300) %0) #32
  tail call void @_ZdlPv(ptr noundef nonnull %0) #35
  ret void
}

; Function Attrs: mustprogress optsize uwtable
define internal noundef i32 @_ZN11ALACEncoder6EncodeE22AudioFormatDescriptionS0_PhS1_Pi(ptr noundef nonnull align 8 dereferenceable(8300) %0, ptr nocapture noundef readonly byval(%struct.AudioFormatDescription) align 8 %1, ptr nocapture noundef readnone byval(%struct.AudioFormatDescription) align 8 %2, ptr noundef %3, ptr noundef %4, ptr nocapture noundef %5) unnamed_addr #12 align 2 {
  %7 = alloca %struct.BitBuffer, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #34
  %8 = load i32, ptr %5, align 4, !tbaa !46
  %9 = getelementptr inbounds %struct.AudioFormatDescription, ptr %1, i64 0, i32 3
  %10 = load i32, ptr %9, align 8, !tbaa !94
  %11 = udiv i32 %8, %10
  %12 = getelementptr inbounds %class.ALACEncoder, ptr %0, i64 0, i32 18
  %13 = load i32, ptr %12, align 8, !tbaa !97
  call void @BitBufferInit(ptr noundef nonnull %7, ptr noundef %4, i32 noundef %13) #31
  %14 = getelementptr inbounds %struct.AudioFormatDescription, ptr %1, i64 0, i32 6
  %15 = load i32, ptr %14, align 4, !tbaa !98
  switch i32 %15, label %30 [
    i32 2, label %16
    i32 1, label %27
  ]

16:                                               ; preds = %6
  call void @BitBufferWrite(ptr noundef nonnull %7, i32 noundef 1, i32 noundef 3) #31
  call void @BitBufferWrite(ptr noundef nonnull %7, i32 noundef 0, i32 noundef 4) #31
  %17 = getelementptr inbounds %class.ALACEncoder, ptr %0, i64 0, i32 2
  %18 = load i8, ptr %17, align 2, !tbaa !87, !range !99, !noundef !100
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = call noundef i32 @_ZN11ALACEncoder12EncodeStereoEP9BitBufferPvjjj(ptr noundef nonnull align 8 dereferenceable(8300) %0, ptr noundef nonnull %7, ptr noundef %3, i32 noundef 2, i32 noundef 0, i32 noundef %11) #31
  br label %24

22:                                               ; preds = %16
  %23 = call noundef i32 @_ZN11ALACEncoder16EncodeStereoFastEP9BitBufferPvjjj(ptr noundef nonnull align 8 dereferenceable(8300) %0, ptr noundef nonnull %7, ptr noundef %3, i32 noundef 2, i32 noundef 0, i32 noundef %11) #31
  br label %24

24:                                               ; preds = %22, %20
  %25 = phi i32 [ %21, %20 ], [ %23, %22 ]
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %83, label %92

27:                                               ; preds = %6
  call void @BitBufferWrite(ptr noundef nonnull %7, i32 noundef 0, i32 noundef 3) #31
  call void @BitBufferWrite(ptr noundef nonnull %7, i32 noundef 0, i32 noundef 4) #31
  %28 = call noundef i32 @_ZN11ALACEncoder10EncodeMonoEP9BitBufferPvjjj(ptr noundef nonnull align 8 dereferenceable(8300) %0, ptr noundef nonnull %7, ptr noundef %3, i32 noundef 1, i32 noundef 0, i32 noundef %11) #31
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %83, label %92

30:                                               ; preds = %6
  %31 = getelementptr inbounds %class.ALACEncoder, ptr %0, i64 0, i32 1
  %32 = load i16, ptr %31, align 8, !tbaa !84
  %33 = sext i16 %32 to i32
  %34 = add nsw i32 %33, 7
  %35 = sdiv i32 %34, 8
  %36 = shl nsw i32 %35, 1
  %37 = add i32 %15, -1
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds [8 x i32], ptr @_ZL12sChannelMaps, i64 0, i64 %38
  br label %40

40:                                               ; preds = %73, %30
  %41 = phi ptr [ %3, %30 ], [ %81, %73 ]
  %42 = phi i32 [ 0, %30 ], [ %76, %73 ]
  %43 = phi i8 [ 0, %30 ], [ %77, %73 ]
  %44 = phi i8 [ 0, %30 ], [ %78, %73 ]
  %45 = phi i8 [ 0, %30 ], [ %79, %73 ]
  %46 = icmp ult i32 %42, %15
  br i1 %46, label %47, label %83

47:                                               ; preds = %40
  %48 = load i32, ptr %39, align 4, !tbaa !46
  %49 = zext i32 %48 to i64
  %50 = mul i32 %42, 3
  %51 = zext i32 %50 to i64
  %52 = shl i64 7, %51
  %53 = and i64 %52, %49
  %54 = lshr i64 %53, %51
  %55 = trunc i64 %54 to i32
  call void @BitBufferWrite(ptr noundef nonnull %7, i32 noundef %55, i32 noundef 3) #31
  switch i32 %55, label %71 [
    i32 0, label %56
    i32 1, label %61
    i32 3, label %66
  ]

56:                                               ; preds = %47
  %57 = zext i8 %44 to i32
  call void @BitBufferWrite(ptr noundef nonnull %7, i32 noundef %57, i32 noundef 4) #31
  %58 = call noundef i32 @_ZN11ALACEncoder10EncodeMonoEP9BitBufferPvjjj(ptr noundef nonnull align 8 dereferenceable(8300) %0, ptr noundef nonnull %7, ptr noundef %41, i32 noundef %15, i32 noundef %42, i32 noundef %11) #31
  %59 = add nuw i32 %42, 1
  %60 = add i8 %44, 1
  br label %73

61:                                               ; preds = %47
  %62 = zext i8 %43 to i32
  call void @BitBufferWrite(ptr noundef nonnull %7, i32 noundef %62, i32 noundef 4) #31
  %63 = call noundef i32 @_ZN11ALACEncoder12EncodeStereoEP9BitBufferPvjjj(ptr noundef nonnull align 8 dereferenceable(8300) %0, ptr noundef nonnull %7, ptr noundef %41, i32 noundef %15, i32 noundef %42, i32 noundef %11) #31
  %64 = add i32 %42, 2
  %65 = add i8 %43, 1
  br label %73

66:                                               ; preds = %47
  %67 = zext i8 %45 to i32
  call void @BitBufferWrite(ptr noundef nonnull %7, i32 noundef %67, i32 noundef 4) #31
  %68 = call noundef i32 @_ZN11ALACEncoder10EncodeMonoEP9BitBufferPvjjj(ptr noundef nonnull align 8 dereferenceable(8300) %0, ptr noundef nonnull %7, ptr noundef %41, i32 noundef %15, i32 noundef %42, i32 noundef %11) #31
  %69 = add nuw i32 %42, 1
  %70 = add i8 %45, 1
  br label %73

71:                                               ; preds = %47
  %.lcssa = phi i32 [ %55, %47 ]
  %72 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %.lcssa) #31
  br label %92

73:                                               ; preds = %66, %61, %56
  %74 = phi i32 [ %35, %66 ], [ %36, %61 ], [ %35, %56 ]
  %75 = phi i32 [ %68, %66 ], [ %63, %61 ], [ %58, %56 ]
  %76 = phi i32 [ %69, %66 ], [ %64, %61 ], [ %59, %56 ]
  %77 = phi i8 [ %43, %66 ], [ %65, %61 ], [ %43, %56 ]
  %78 = phi i8 [ %44, %66 ], [ %44, %61 ], [ %60, %56 ]
  %79 = phi i8 [ %70, %66 ], [ %45, %61 ], [ %45, %56 ]
  %80 = zext i32 %74 to i64
  %81 = getelementptr inbounds i8, ptr %41, i64 %80
  %82 = icmp eq i32 %75, 0
  br i1 %82, label %40, label %92, !llvm.loop !101

83:                                               ; preds = %40, %27, %24
  call void @BitBufferWrite(ptr noundef nonnull %7, i32 noundef 7, i32 noundef 3) #31
  call void @BitBufferByteAlign(ptr noundef nonnull %7, i32 noundef 1) #31
  %84 = call i32 @BitBufferGetPosition(ptr noundef nonnull %7) #31
  %85 = lshr i32 %84, 3
  store i32 %85, ptr %5, align 4, !tbaa !46
  %86 = getelementptr inbounds %class.ALACEncoder, ptr %0, i64 0, i32 14
  %87 = load i32, ptr %86, align 8, !tbaa !102
  %88 = add i32 %87, %85
  store i32 %88, ptr %86, align 8, !tbaa !102
  %89 = getelementptr inbounds %class.ALACEncoder, ptr %0, i64 0, i32 16
  %90 = load i32, ptr %89, align 8, !tbaa !103
  %91 = call i32 @llvm.umax.i32(i32 %90, i32 %85)
  store i32 %91, ptr %89, align 8, !tbaa !103
  br label %92

92:                                               ; preds = %83, %73, %71, %27, %24
  %93 = phi i32 [ %25, %24 ], [ 0, %83 ], [ %28, %27 ], [ -50, %71 ], [ %75, %73 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #34
  ret i32 %93
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal noundef i32 @_ZN11ALACEncoder6FinishEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #17 align 2 {
  ret i32 0
}

; Function Attrs: mustprogress optsize uwtable
define internal noundef i32 @_ZN11ALACEncoder17InitializeEncoderE22AudioFormatDescription(ptr noundef nonnull align 8 dereferenceable(8300) %0, ptr nocapture noundef readonly byval(%struct.AudioFormatDescription) align 8 %1) unnamed_addr #12 align 2 {
  %3 = load double, ptr %1, align 8, !tbaa !104
  %4 = fptoui double %3 to i32
  %5 = getelementptr inbounds %class.ALACEncoder, ptr %0, i64 0, i32 20
  store i32 %4, ptr %5, align 8, !tbaa !105
  %6 = getelementptr inbounds %struct.AudioFormatDescription, ptr %1, i64 0, i32 6
  %7 = load i32, ptr %6, align 4, !tbaa !98
  %8 = getelementptr inbounds %class.ALACEncoder, ptr %0, i64 0, i32 19
  store i32 %7, ptr %8, align 4, !tbaa !106
  %9 = getelementptr inbounds %struct.AudioFormatDescription, ptr %1, i64 0, i32 2
  %10 = load i32, ptr %9, align 4, !tbaa !107
  %11 = add i32 %10, -1
  %12 = icmp ult i32 %11, 4
  br i1 %12, label %13, label %19

13:                                               ; preds = %2
  %14 = zext i32 %11 to i64
  %15 = shl nuw nsw i64 %14, 4
  %16 = lshr i64 9007302335266832, %15
  %17 = trunc i64 %16 to i16
  %18 = getelementptr inbounds %class.ALACEncoder, ptr %0, i64 0, i32 1
  store i16 %17, ptr %18, align 8, !tbaa !84
  br label %19

19:                                               ; preds = %13, %2
  %20 = getelementptr inbounds i8, ptr %0, i64 12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %20, i8 0, i64 16, i1 false), !tbaa !47
  %21 = getelementptr inbounds %class.ALACEncoder, ptr %0, i64 0, i32 17
  %22 = load i32, ptr %21, align 4, !tbaa !108
  %23 = mul i32 %7, 5
  %24 = mul i32 %23, %22
  %25 = add i32 %24, 1
  %26 = getelementptr inbounds %class.ALACEncoder, ptr %0, i64 0, i32 18
  store i32 %25, ptr %26, align 8, !tbaa !97
  %27 = zext i32 %22 to i64
  %28 = shl nuw nsw i64 %27, 2
  %29 = tail call noalias ptr @calloc(i64 noundef %28, i64 noundef 1) #33
  %30 = getelementptr inbounds %class.ALACEncoder, ptr %0, i64 0, i32 6
  store ptr %29, ptr %30, align 8, !tbaa !88
  %31 = tail call noalias ptr @calloc(i64 noundef %28, i64 noundef 1) #33
  %32 = getelementptr inbounds %class.ALACEncoder, ptr %0, i64 0, i32 7
  store ptr %31, ptr %32, align 8, !tbaa !89
  %33 = tail call noalias ptr @calloc(i64 noundef %28, i64 noundef 1) #33
  %34 = getelementptr inbounds %class.ALACEncoder, ptr %0, i64 0, i32 8
  store ptr %33, ptr %34, align 8, !tbaa !90
  %35 = tail call noalias ptr @calloc(i64 noundef %28, i64 noundef 1) #33
  %36 = getelementptr inbounds %class.ALACEncoder, ptr %0, i64 0, i32 9
  store ptr %35, ptr %36, align 8, !tbaa !91
  %37 = shl i32 %22, 1
  %38 = zext i32 %37 to i64
  %39 = shl nuw nsw i64 %38, 1
  %40 = tail call noalias ptr @calloc(i64 noundef %39, i64 noundef 1) #33
  %41 = getelementptr inbounds %class.ALACEncoder, ptr %0, i64 0, i32 10
  store ptr %40, ptr %41, align 8, !tbaa !92
  %42 = zext i32 %25 to i64
  %43 = tail call noalias ptr @calloc(i64 noundef %42, i64 noundef 1) #33
  %44 = getelementptr inbounds %class.ALACEncoder, ptr %0, i64 0, i32 11
  store ptr %43, ptr %44, align 8, !tbaa !93
  %45 = insertelement <4 x ptr> poison, ptr %29, i64 0
  %46 = insertelement <4 x ptr> %45, ptr %31, i64 1
  %47 = insertelement <4 x ptr> %46, ptr %33, i64 2
  %48 = insertelement <4 x ptr> %47, ptr %35, i64 3
  %49 = icmp eq <4 x ptr> %48, zeroinitializer
  %50 = icmp eq ptr %40, null
  %51 = icmp eq ptr %43, null
  %52 = bitcast <4 x i1> %49 to i4
  %53 = icmp ne i4 %52, 0
  %54 = or i1 %53, %50
  %55 = or i1 %54, %51
  br i1 %55, label %71, label %56

56:                                               ; preds = %19
  %57 = icmp sgt i32 %7, 0
  br i1 %57, label %58, label %71

58:                                               ; preds = %60, %56
  %59 = phi i64 [ %61, %60 ], [ 0, %56 ]
  br label %65

60:                                               ; preds = %65
  %61 = add nuw nsw i64 %59, 1
  %62 = load i32, ptr %8, align 4, !tbaa !106
  %63 = sext i32 %62 to i64
  %64 = icmp slt i64 %61, %63
  br i1 %64, label %58, label %71, !llvm.loop !109

65:                                               ; preds = %65, %58
  %66 = phi i64 [ 0, %58 ], [ %69, %65 ]
  %67 = getelementptr inbounds %class.ALACEncoder, ptr %0, i64 0, i32 12, i64 %59, i64 %66
  tail call void @init_coefs(ptr noundef nonnull %67, i32 noundef 9, i32 noundef 16) #31
  %68 = getelementptr inbounds %class.ALACEncoder, ptr %0, i64 0, i32 13, i64 %59, i64 %66
  tail call void @init_coefs(ptr noundef nonnull %68, i32 noundef 9, i32 noundef 16) #31
  %69 = add nuw nsw i64 %66, 1
  %70 = icmp eq i64 %69, 16
  br i1 %70, label %60, label %65, !llvm.loop !110

71:                                               ; preds = %60, %56, %19
  %72 = phi i32 [ -108, %19 ], [ 0, %56 ], [ 0, %60 ]
  ret i32 %72
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal void @_ZN11ALACEncoder15GetSourceFormatEPK22AudioFormatDescriptionPS0_(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(8300) %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) unnamed_addr #3 align 2 {
  %4 = getelementptr inbounds %struct.AudioFormatDescription, ptr %1, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !111
  %6 = icmp eq i32 %5, 1819304813
  br i1 %6, label %7, label %16

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.AudioFormatDescription, ptr %1, i64 0, i32 2
  %9 = load i32, ptr %8, align 4, !tbaa !107
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.AudioFormatDescription, ptr %1, i64 0, i32 7
  %14 = load i32, ptr %13, align 8, !tbaa !112
  %15 = icmp ult i32 %14, 17
  br i1 %15, label %16, label %18

16:                                               ; preds = %12, %7, %3
  %17 = getelementptr inbounds %class.ALACEncoder, ptr %0, i64 0, i32 1
  store i16 16, ptr %17, align 8, !tbaa !84
  br label %27

18:                                               ; preds = %12
  %19 = icmp ult i32 %14, 21
  br i1 %19, label %20, label %22

20:                                               ; preds = %18
  %21 = getelementptr inbounds %class.ALACEncoder, ptr %0, i64 0, i32 1
  store i16 20, ptr %21, align 8, !tbaa !84
  br label %27

22:                                               ; preds = %18
  %23 = icmp ult i32 %14, 25
  %24 = getelementptr inbounds %class.ALACEncoder, ptr %0, i64 0, i32 1
  br i1 %23, label %25, label %26

25:                                               ; preds = %22
  store i16 24, ptr %24, align 8, !tbaa !84
  br label %27

26:                                               ; preds = %22
  store i16 32, ptr %24, align 8, !tbaa !84
  br label %27

27:                                               ; preds = %26, %25, %20, %16
  ret void
}

; Function Attrs: mustprogress optsize uwtable
define internal noundef i32 @_ZN11ALACEncoder12EncodeStereoEP9BitBufferPvjjj(ptr noundef nonnull align 8 dereferenceable(8300) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #12 align 2 {
  %7 = alloca %struct.BitBuffer, align 8
  %8 = alloca %struct.BitBuffer, align 8
  %9 = alloca %struct.AGParamRec, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #34
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #34
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !62
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %9) #34
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #34
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #34
  %12 = getelementptr inbounds %class.ALACEncoder, ptr %0, i64 0, i32 1
  %13 = load i16, ptr %12, align 8, !tbaa !84
  %14 = add i16 %13, -16
  %15 = tail call i16 @llvm.fshl.i16(i16 %13, i16 %14, i16 14)
  switch i16 %15, label %249 [
    i16 0, label %16
    i16 1, label %16
    i16 2, label %16
    i16 4, label %16
  ]

16:                                               ; preds = %6, %6, %6, %6
  %17 = zext i32 %4 to i64
  %18 = getelementptr inbounds %class.ALACEncoder, ptr %0, i64 0, i32 12, i64 %17
  %19 = getelementptr inbounds %class.ALACEncoder, ptr %0, i64 0, i32 13, i64 %17
  %20 = icmp eq i16 %13, 32
  %21 = icmp sgt i16 %13, 23
  %22 = zext i1 %21 to i32
  %23 = select i1 %20, i32 2, i32 %22
  %24 = sext i16 %13 to i32
  %25 = shl nuw nsw i32 %23, 3
  %26 = sub nsw i32 %24, %25
  %27 = add nsw i32 %26, 1
  %28 = getelementptr inbounds %class.ALACEncoder, ptr %0, i64 0, i32 17
  %29 = load i32, ptr %28, align 4, !tbaa !108
  %30 = icmp eq i32 %29, %5
  %31 = getelementptr inbounds %class.ALACEncoder, ptr %0, i64 0, i32 4, i64 %17
  %32 = load i16, ptr %31, align 2, !tbaa !47
  %33 = zext i16 %32 to i32
  %34 = getelementptr inbounds %class.ALACEncoder, ptr %0, i64 0, i32 6
  %35 = getelementptr inbounds %class.ALACEncoder, ptr %0, i64 0, i32 7
  %36 = lshr i32 %5, 3
  %37 = getelementptr inbounds %class.ALACEncoder, ptr %0, i64 0, i32 10
  %38 = getelementptr inbounds %class.ALACEncoder, ptr %0, i64 0, i32 11
  %39 = getelementptr inbounds %class.ALACEncoder, ptr %0, i64 0, i32 18
  %40 = getelementptr inbounds %class.ALACEncoder, ptr %0, i64 0, i32 8
  %41 = getelementptr inbounds [16 x i16], ptr %18, i64 7
  %42 = getelementptr inbounds %class.ALACEncoder, ptr %0, i64 0, i32 9
  %43 = getelementptr inbounds [16 x i16], ptr %19, i64 7
  br label %44

44:                                               ; preds = %80, %16
  %45 = phi i32 [ %33, %16 ], [ %86, %80 ]
  %46 = phi i32 [ 0, %16 ], [ %87, %80 ]
  %47 = phi i32 [ -2147483648, %16 ], [ %85, %80 ]
  %48 = load i16, ptr %12, align 8, !tbaa !84
  %49 = sext i16 %48 to i32
  %50 = add nsw i32 %49, -16
  %51 = call i32 @llvm.fshl.i32(i32 %49, i32 %50, i32 30)
  switch i32 %51, label %66 [
    i32 0, label %52
    i32 1, label %55
    i32 2, label %58
    i32 4, label %62
  ]

52:                                               ; preds = %44
  %53 = load ptr, ptr %34, align 8, !tbaa !88
  %54 = load ptr, ptr %35, align 8, !tbaa !89
  call void @mix16(ptr noundef %2, i32 noundef %3, ptr noundef %53, ptr noundef %54, i32 noundef %36, i32 noundef 2, i32 noundef %46) #31
  br label %66

55:                                               ; preds = %44
  %56 = load ptr, ptr %34, align 8, !tbaa !88
  %57 = load ptr, ptr %35, align 8, !tbaa !89
  call void @mix20(ptr noundef %2, i32 noundef %3, ptr noundef %56, ptr noundef %57, i32 noundef %36, i32 noundef 2, i32 noundef %46) #31
  br label %66

58:                                               ; preds = %44
  %59 = load ptr, ptr %34, align 8, !tbaa !88
  %60 = load ptr, ptr %35, align 8, !tbaa !89
  %61 = load ptr, ptr %37, align 8, !tbaa !92
  call void @mix24(ptr noundef %2, i32 noundef %3, ptr noundef %59, ptr noundef %60, i32 noundef %36, i32 noundef 2, i32 noundef %46, ptr noundef %61, i32 noundef %23) #31
  br label %66

62:                                               ; preds = %44
  %63 = load ptr, ptr %34, align 8, !tbaa !88
  %64 = load ptr, ptr %35, align 8, !tbaa !89
  %65 = load ptr, ptr %37, align 8, !tbaa !92
  call void @mix32(ptr noundef %2, i32 noundef %3, ptr noundef %63, ptr noundef %64, i32 noundef %36, i32 noundef 2, i32 noundef %46, ptr noundef %65, i32 noundef %23) #31
  br label %66

66:                                               ; preds = %62, %58, %55, %52, %44
  %67 = load ptr, ptr %38, align 8, !tbaa !93
  %68 = load i32, ptr %39, align 8, !tbaa !97
  call void @BitBufferInit(ptr noundef nonnull %7, ptr noundef %67, i32 noundef %68) #31
  %69 = load ptr, ptr %34, align 8, !tbaa !88
  %70 = load ptr, ptr %40, align 8, !tbaa !90
  call void @pc_block(ptr noundef %69, ptr noundef %70, i32 noundef %36, ptr noundef nonnull %41, i32 noundef 8, i32 noundef %27, i32 noundef 9) #31
  %71 = load ptr, ptr %35, align 8, !tbaa !89
  %72 = load ptr, ptr %42, align 8, !tbaa !91
  call void @pc_block(ptr noundef %71, ptr noundef %72, i32 noundef %36, ptr noundef nonnull %43, i32 noundef 8, i32 noundef %27, i32 noundef 9) #31
  call void @set_ag_params(ptr noundef nonnull %9, i32 noundef 10, i32 noundef 40, i32 noundef 14, i32 noundef %36, i32 noundef %36, i32 noundef 255) #31
  %73 = load ptr, ptr %40, align 8, !tbaa !90
  %74 = call i32 @dyn_comp(ptr noundef nonnull %9, ptr noundef %73, ptr noundef nonnull %7, i32 noundef %36, i32 noundef %27, ptr noundef nonnull %10) #31
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %249

76:                                               ; preds = %66
  call void @set_ag_params(ptr noundef nonnull %9, i32 noundef 10, i32 noundef 40, i32 noundef 14, i32 noundef %36, i32 noundef %36, i32 noundef 255) #31
  %77 = load ptr, ptr %42, align 8, !tbaa !91
  %78 = call i32 @dyn_comp(ptr noundef nonnull %9, ptr noundef %77, ptr noundef nonnull %7, i32 noundef %36, i32 noundef %27, ptr noundef nonnull %11) #31
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %249

80:                                               ; preds = %76
  %81 = load i32, ptr %10, align 4, !tbaa !46
  %82 = load i32, ptr %11, align 4, !tbaa !46
  %83 = add i32 %82, %81
  %84 = icmp ult i32 %83, %47
  %85 = call i32 @llvm.umin.i32(i32 %83, i32 %47)
  %86 = select i1 %84, i32 %46, i32 %45
  %87 = add nuw nsw i32 %46, 1
  %88 = icmp eq i32 %87, 5
  br i1 %88, label %89, label %44, !llvm.loop !113

89:                                               ; preds = %80
  %.lcssa4 = phi i32 [ %86, %80 ]
  %90 = trunc i32 %.lcssa4 to i16
  store i16 %90, ptr %31, align 2, !tbaa !47
  %91 = shl i32 %.lcssa4, 16
  %92 = ashr exact i32 %91, 16
  %93 = load i16, ptr %12, align 8, !tbaa !84
  %94 = sext i16 %93 to i32
  %95 = add nsw i32 %94, -16
  %96 = call i32 @llvm.fshl.i32(i32 %94, i32 %95, i32 30)
  switch i32 %96, label %111 [
    i32 0, label %97
    i32 1, label %100
    i32 2, label %103
    i32 4, label %107
  ]

97:                                               ; preds = %89
  %98 = load ptr, ptr %34, align 8, !tbaa !88
  %99 = load ptr, ptr %35, align 8, !tbaa !89
  call void @mix16(ptr noundef %2, i32 noundef %3, ptr noundef %98, ptr noundef %99, i32 noundef %5, i32 noundef 2, i32 noundef %92) #31
  br label %111

100:                                              ; preds = %89
  %101 = load ptr, ptr %34, align 8, !tbaa !88
  %102 = load ptr, ptr %35, align 8, !tbaa !89
  call void @mix20(ptr noundef %2, i32 noundef %3, ptr noundef %101, ptr noundef %102, i32 noundef %5, i32 noundef 2, i32 noundef %92) #31
  br label %111

103:                                              ; preds = %89
  %104 = load ptr, ptr %34, align 8, !tbaa !88
  %105 = load ptr, ptr %35, align 8, !tbaa !89
  %106 = load ptr, ptr %37, align 8, !tbaa !92
  call void @mix24(ptr noundef %2, i32 noundef %3, ptr noundef %104, ptr noundef %105, i32 noundef %5, i32 noundef 2, i32 noundef %92, ptr noundef %106, i32 noundef %23) #31
  br label %111

107:                                              ; preds = %89
  %108 = load ptr, ptr %34, align 8, !tbaa !88
  %109 = load ptr, ptr %35, align 8, !tbaa !89
  %110 = load ptr, ptr %37, align 8, !tbaa !92
  call void @mix32(ptr noundef %2, i32 noundef %3, ptr noundef %108, ptr noundef %109, i32 noundef %5, i32 noundef 2, i32 noundef %92, ptr noundef %110, i32 noundef %23) #31
  br label %111

111:                                              ; preds = %107, %103, %100, %97, %89
  %112 = lshr i32 %5, 5
  br label %128

113:                                              ; preds = %140
  %.lcssa3 = phi i32 [ %149, %140 ]
  %.lcssa2 = phi i32 [ %150, %140 ]
  %.lcssa1 = phi i32 [ %157, %140 ]
  %.lcssa = phi i32 [ %158, %140 ]
  %114 = select i1 %30, i32 0, i32 32
  %115 = shl i32 %5, 1
  %116 = mul i32 %115, %25
  %117 = add i32 %116, 64
  %118 = select i1 %21, i32 %117, i32 64
  %119 = add i32 %118, %114
  %120 = add i32 %119, %.lcssa
  %121 = add i32 %120, %.lcssa2
  %122 = load i16, ptr %12, align 8, !tbaa !84
  %123 = sext i16 %122 to i32
  %124 = mul i32 %115, %123
  %125 = or i32 %114, 16
  %126 = add i32 %125, %124
  %127 = icmp ult i32 %121, %126
  br i1 %127, label %169, label %247

128:                                              ; preds = %140, %111
  %129 = phi i64 [ 4, %111 ], [ %159, %140 ]
  %130 = phi i32 [ -2147483648, %111 ], [ %150, %140 ]
  %131 = phi i32 [ -2147483648, %111 ], [ %158, %140 ]
  %132 = phi i32 [ 4, %111 ], [ %149, %140 ]
  %133 = phi i32 [ 4, %111 ], [ %157, %140 ]
  %134 = load ptr, ptr %38, align 8, !tbaa !93
  %135 = load i32, ptr %39, align 8, !tbaa !97
  call void @BitBufferInit(ptr noundef nonnull %7, ptr noundef %134, i32 noundef %135) #31
  %136 = add nsw i64 %129, -1
  %137 = getelementptr inbounds [16 x i16], ptr %18, i64 %136
  %138 = getelementptr inbounds [16 x i16], ptr %19, i64 %136
  %139 = trunc i64 %129 to i32
  br label %161

140:                                              ; preds = %161
  call void @set_ag_params(ptr noundef nonnull %9, i32 noundef 10, i32 noundef 40, i32 noundef 14, i32 noundef %36, i32 noundef %36, i32 noundef 255) #31
  %141 = load ptr, ptr %40, align 8, !tbaa !90
  %142 = call i32 @dyn_comp(ptr noundef nonnull %9, ptr noundef %141, ptr noundef nonnull %7, i32 noundef %36, i32 noundef %27, ptr noundef nonnull %10) #31
  %143 = load i32, ptr %10, align 4, !tbaa !46
  %144 = shl i32 %143, 3
  %145 = trunc i64 %129 to i32
  %146 = shl i32 %145, 4
  %147 = add i32 %144, %146
  %148 = icmp ult i32 %147, %130
  %149 = select i1 %148, i32 %139, i32 %132
  %150 = call i32 @llvm.umin.i32(i32 %147, i32 %130)
  call void @set_ag_params(ptr noundef nonnull %9, i32 noundef 10, i32 noundef 40, i32 noundef 14, i32 noundef %36, i32 noundef %36, i32 noundef 255) #31
  %151 = load ptr, ptr %42, align 8, !tbaa !91
  %152 = call i32 @dyn_comp(ptr noundef nonnull %9, ptr noundef %151, ptr noundef nonnull %7, i32 noundef %36, i32 noundef %27, ptr noundef nonnull %11) #31
  %153 = load i32, ptr %11, align 4, !tbaa !46
  %154 = shl i32 %153, 3
  %155 = add i32 %154, %146
  %156 = icmp ult i32 %155, %131
  %157 = select i1 %156, i32 %139, i32 %133
  %158 = call i32 @llvm.umin.i32(i32 %155, i32 %131)
  %159 = add nuw nsw i64 %129, 4
  %160 = icmp ult i64 %129, 5
  br i1 %160, label %128, label %113, !llvm.loop !114

161:                                              ; preds = %161, %128
  %162 = phi i32 [ 0, %128 ], [ %167, %161 ]
  %163 = load ptr, ptr %34, align 8, !tbaa !88
  %164 = load ptr, ptr %40, align 8, !tbaa !90
  call void @pc_block(ptr noundef %163, ptr noundef %164, i32 noundef %112, ptr noundef nonnull %137, i32 noundef %139, i32 noundef %27, i32 noundef 9) #31
  %165 = load ptr, ptr %35, align 8, !tbaa !89
  %166 = load ptr, ptr %42, align 8, !tbaa !91
  call void @pc_block(ptr noundef %165, ptr noundef %166, i32 noundef %112, ptr noundef nonnull %138, i32 noundef %139, i32 noundef %27, i32 noundef 9) #31
  %167 = add nuw nsw i32 %162, 1
  %168 = icmp eq i32 %167, 8
  br i1 %168, label %140, label %161, !llvm.loop !115

169:                                              ; preds = %113
  call void @BitBufferWrite(ptr noundef %1, i32 noundef 0, i32 noundef 12) #31
  %170 = select i1 %30, i32 0, i32 8
  %171 = shl nuw nsw i32 %23, 1
  %172 = or i32 %170, %171
  call void @BitBufferWrite(ptr noundef %1, i32 noundef %172, i32 noundef 4) #31
  br i1 %30, label %174, label %173

173:                                              ; preds = %169
  call void @BitBufferWrite(ptr noundef %1, i32 noundef %5, i32 noundef 32) #31
  br label %174

174:                                              ; preds = %173, %169
  call void @BitBufferWrite(ptr noundef %1, i32 noundef 2, i32 noundef 8) #31
  call void @BitBufferWrite(ptr noundef %1, i32 noundef %92, i32 noundef 8) #31
  call void @BitBufferWrite(ptr noundef %1, i32 noundef 9, i32 noundef 8) #31
  %175 = or i32 %.lcssa3, 128
  call void @BitBufferWrite(ptr noundef %1, i32 noundef %175, i32 noundef 8) #31
  %176 = icmp eq i32 %.lcssa3, 0
  br i1 %176, label %188, label %177

177:                                              ; preds = %174
  %178 = add nsw i32 %.lcssa3, -1
  %179 = zext i32 %178 to i64
  %180 = zext i32 %.lcssa3 to i64
  br label %181

181:                                              ; preds = %181, %177
  %182 = phi i64 [ 0, %177 ], [ %186, %181 ]
  %183 = getelementptr inbounds [16 x i16], ptr %18, i64 %179, i64 %182
  %184 = load i16, ptr %183, align 2, !tbaa !47
  %185 = sext i16 %184 to i32
  call void @BitBufferWrite(ptr noundef %1, i32 noundef %185, i32 noundef 16) #31
  %186 = add nuw nsw i64 %182, 1
  %187 = icmp eq i64 %186, %180
  br i1 %187, label %188, label %181, !llvm.loop !116

188:                                              ; preds = %181, %174
  call void @BitBufferWrite(ptr noundef %1, i32 noundef 9, i32 noundef 8) #31
  %189 = or i32 %.lcssa1, 128
  call void @BitBufferWrite(ptr noundef %1, i32 noundef %189, i32 noundef 8) #31
  %190 = icmp eq i32 %.lcssa1, 0
  br i1 %190, label %202, label %191

191:                                              ; preds = %188
  %192 = add nsw i32 %.lcssa1, -1
  %193 = zext i32 %192 to i64
  %194 = zext i32 %.lcssa1 to i64
  br label %195

195:                                              ; preds = %195, %191
  %196 = phi i64 [ 0, %191 ], [ %200, %195 ]
  %197 = getelementptr inbounds [16 x i16], ptr %19, i64 %193, i64 %196
  %198 = load i16, ptr %197, align 2, !tbaa !47
  %199 = sext i16 %198 to i32
  call void @BitBufferWrite(ptr noundef %1, i32 noundef %199, i32 noundef 16) #31
  %200 = add nuw nsw i64 %196, 1
  %201 = icmp eq i64 %200, %194
  br i1 %201, label %202, label %195, !llvm.loop !117

202:                                              ; preds = %195, %188
  %203 = icmp ne i32 %115, 0
  %204 = and i1 %203, %21
  br i1 %204, label %205, label %222

205:                                              ; preds = %202
  %206 = shl nuw nsw i32 %23, 4
  %207 = zext i32 %115 to i64
  br label %208

208:                                              ; preds = %208, %205
  %209 = phi i64 [ 0, %205 ], [ %220, %208 ]
  %210 = load ptr, ptr %37, align 8, !tbaa !92
  %211 = getelementptr inbounds i16, ptr %210, i64 %209
  %212 = load i16, ptr %211, align 2, !tbaa !47
  %213 = zext i16 %212 to i32
  %214 = shl nuw i32 %213, %25
  %215 = or i64 %209, 1
  %216 = getelementptr inbounds i16, ptr %210, i64 %215
  %217 = load i16, ptr %216, align 2, !tbaa !47
  %218 = zext i16 %217 to i32
  %219 = or i32 %214, %218
  call void @BitBufferWrite(ptr noundef %1, i32 noundef %219, i32 noundef %206) #31
  %220 = add nuw nsw i64 %209, 2
  %221 = icmp ult i64 %220, %207
  br i1 %221, label %208, label %222, !llvm.loop !118

222:                                              ; preds = %208, %202
  %223 = load ptr, ptr %34, align 8, !tbaa !88
  %224 = load ptr, ptr %40, align 8, !tbaa !90
  %225 = add nsw i32 %.lcssa3, -1
  %226 = zext i32 %225 to i64
  %227 = getelementptr inbounds [16 x i16], ptr %18, i64 %226
  call void @pc_block(ptr noundef %223, ptr noundef %224, i32 noundef %5, ptr noundef nonnull %227, i32 noundef %.lcssa3, i32 noundef %27, i32 noundef 9) #31
  call void @set_ag_params(ptr noundef nonnull %9, i32 noundef 10, i32 noundef 40, i32 noundef 14, i32 noundef %5, i32 noundef %5, i32 noundef 255) #31
  %228 = load ptr, ptr %40, align 8, !tbaa !90
  %229 = call i32 @dyn_comp(ptr noundef nonnull %9, ptr noundef %228, ptr noundef %1, i32 noundef %5, i32 noundef %27, ptr noundef nonnull %10) #31
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %231, label %249

231:                                              ; preds = %222
  %232 = load ptr, ptr %35, align 8, !tbaa !89
  %233 = load ptr, ptr %42, align 8, !tbaa !91
  %234 = add nsw i32 %.lcssa1, -1
  %235 = zext i32 %234 to i64
  %236 = getelementptr inbounds [16 x i16], ptr %19, i64 %235
  call void @pc_block(ptr noundef %232, ptr noundef %233, i32 noundef %5, ptr noundef nonnull %236, i32 noundef %.lcssa1, i32 noundef %27, i32 noundef 9) #31
  call void @set_ag_params(ptr noundef nonnull %9, i32 noundef 10, i32 noundef 40, i32 noundef 14, i32 noundef %5, i32 noundef %5, i32 noundef 255) #31
  %237 = load ptr, ptr %42, align 8, !tbaa !91
  %238 = call i32 @dyn_comp(ptr noundef nonnull %9, ptr noundef %237, ptr noundef %1, i32 noundef %5, i32 noundef %27, ptr noundef nonnull %11) #31
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %240, label %249

240:                                              ; preds = %231
  %241 = call i32 @BitBufferGetPosition(ptr noundef %1) #31
  %242 = call i32 @BitBufferGetPosition(ptr noundef nonnull %8) #31
  %243 = sub i32 %241, %242
  %244 = icmp ult i32 %243, %126
  br i1 %244, label %249, label %245

245:                                              ; preds = %240
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 24, i1 false), !tbaa.struct !62
  %246 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %243, i32 noundef %126) #31
  br label %247

247:                                              ; preds = %245, %113
  %248 = call noundef i32 @_ZN11ALACEncoder18EncodeStereoEscapeEP9BitBufferPvjj(ptr noundef nonnull align 8 dereferenceable(8300) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %5) #31
  br label %249

249:                                              ; preds = %247, %240, %231, %222, %76, %66, %6
  %250 = phi i32 [ -50, %6 ], [ %229, %222 ], [ %238, %231 ], [ 0, %247 ], [ 0, %240 ], [ %78, %76 ], [ %74, %66 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #34
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #34
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %9) #34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #34
  ret i32 %250
}

; Function Attrs: mustprogress optsize uwtable
define internal noundef i32 @_ZN11ALACEncoder16EncodeStereoFastEP9BitBufferPvjjj(ptr noundef nonnull align 8 dereferenceable(8300) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #12 align 2 {
  %7 = alloca %struct.BitBuffer, align 8
  %8 = alloca %struct.AGParamRec, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #34
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !62
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %8) #34
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #34
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #34
  %11 = getelementptr inbounds %class.ALACEncoder, ptr %0, i64 0, i32 1
  %12 = load i16, ptr %11, align 8, !tbaa !84
  %13 = add i16 %12, -16
  %14 = tail call i16 @llvm.fshl.i16(i16 %12, i16 %13, i16 14)
  switch i16 %14, label %143 [
    i16 0, label %15
    i16 1, label %15
    i16 2, label %15
    i16 4, label %15
  ]

15:                                               ; preds = %6, %6, %6, %6
  %16 = zext i32 %4 to i64
  %17 = getelementptr inbounds %class.ALACEncoder, ptr %0, i64 0, i32 12, i64 %16
  %18 = getelementptr inbounds %class.ALACEncoder, ptr %0, i64 0, i32 13, i64 %16
  %19 = icmp eq i16 %12, 32
  %20 = icmp sgt i16 %12, 23
  %21 = zext i1 %20 to i32
  %22 = select i1 %19, i32 2, i32 %21
  %23 = sext i16 %12 to i32
  %24 = shl nuw nsw i32 %22, 3
  %25 = sub nsw i32 %23, %24
  %26 = add nsw i32 %25, 1
  %27 = getelementptr inbounds %class.ALACEncoder, ptr %0, i64 0, i32 17
  %28 = load i32, ptr %27, align 4, !tbaa !108
  %29 = icmp eq i32 %28, %5
  %30 = add nsw i32 %23, -16
  %31 = tail call i32 @llvm.fshl.i32(i32 %23, i32 %30, i32 30)
  switch i32 %31, label %56 [
    i32 0, label %32
    i32 1, label %37
    i32 2, label %42
    i32 4, label %49
  ]

32:                                               ; preds = %15
  %33 = getelementptr inbounds %class.ALACEncoder, ptr %0, i64 0, i32 6
  %34 = load ptr, ptr %33, align 8, !tbaa !88
  %35 = getelementptr inbounds %class.ALACEncoder, ptr %0, i64 0, i32 7
  %36 = load ptr, ptr %35, align 8, !tbaa !89
  tail call void @mix16(ptr noundef %2, i32 noundef %3, ptr noundef %34, ptr noundef %36, i32 noundef %5, i32 noundef 2, i32 noundef 0) #31
  br label %56

37:                                               ; preds = %15
  %38 = getelementptr inbounds %class.ALACEncoder, ptr %0, i64 0, i32 6
  %39 = load ptr, ptr %38, align 8, !tbaa !88
  %40 = getelementptr inbounds %class.ALACEncoder, ptr %0, i64 0, i32 7
  %41 = load ptr, ptr %40, align 8, !tbaa !89
  tail call void @mix20(ptr noundef %2, i32 noundef %3, ptr noundef %39, ptr noundef %41, i32 noundef %5, i32 noundef 2, i32 noundef 0) #31
  br label %56

42:                                               ; preds = %15
  %43 = getelementptr inbounds %class.ALACEncoder, ptr %0, i64 0, i32 6
  %44 = load ptr, ptr %43, align 8, !tbaa !88
  %45 = getelementptr inbounds %class.ALACEncoder, ptr %0, i64 0, i32 7
  %46 = load ptr, ptr %45, align 8, !tbaa !89
  %47 = getelementptr inbounds %class.ALACEncoder, ptr %0, i64 0, i32 10
  %48 = load ptr, ptr %47, align 8, !tbaa !92
  tail call void @mix24(ptr noundef %2, i32 noundef %3, ptr noundef %44, ptr noundef %46, i32 noundef %5, i32 noundef 2, i32 noundef 0, ptr noundef %48, i32 noundef %22) #31
  br label %56

49:                                               ; preds = %15
  %50 = getelementptr inbounds %class.ALACEncoder, ptr %0, i64 0, i32 6
  %51 = load ptr, ptr %50, align 8, !tbaa !88
  %52 = getelementptr inbounds %class.ALACEncoder, ptr %0, i64 0, i32 7
  %53 = load ptr, ptr %52, align 8, !tbaa !89
  %54 = getelementptr inbounds %class.ALACEncoder, ptr %0, i64 0, i32 10
  %55 = load ptr, ptr %54, align 8, !tbaa !92
  tail call void @mix32(ptr noundef %2, i32 noundef %3, ptr noundef %51, ptr noundef %53, i32 noundef %5, i32 noundef 2, i32 noundef 0, ptr noundef %55, i32 noundef %22) #31
  br label %56

56:                                               ; preds = %49, %42, %37, %32, %15
  tail call void @BitBufferWrite(ptr noundef nonnull %1, i32 noundef 0, i32 noundef 12) #31
  %57 = select i1 %29, i32 0, i32 8
  %58 = shl nuw nsw i32 %22, 1
  %59 = or i32 %57, %58
  tail call void @BitBufferWrite(ptr noundef nonnull %1, i32 noundef %59, i32 noundef 4) #31
  br i1 %29, label %61, label %60

60:                                               ; preds = %56
  tail call void @BitBufferWrite(ptr noundef nonnull %1, i32 noundef %5, i32 noundef 32) #31
  br label %61

61:                                               ; preds = %60, %56
  tail call void @BitBufferWrite(ptr noundef nonnull %1, i32 noundef 2, i32 noundef 8) #31
  tail call void @BitBufferWrite(ptr noundef nonnull %1, i32 noundef 0, i32 noundef 8) #31
  tail call void @BitBufferWrite(ptr noundef nonnull %1, i32 noundef 9, i32 noundef 8) #31
  tail call void @BitBufferWrite(ptr noundef nonnull %1, i32 noundef 136, i32 noundef 8) #31
  br label %62

62:                                               ; preds = %62, %61
  %63 = phi i64 [ 0, %61 ], [ %67, %62 ]
  %64 = getelementptr inbounds [16 x i16], ptr %17, i64 7, i64 %63
  %65 = load i16, ptr %64, align 2, !tbaa !47
  %66 = sext i16 %65 to i32
  tail call void @BitBufferWrite(ptr noundef %1, i32 noundef %66, i32 noundef 16) #31
  %67 = add nuw nsw i64 %63, 1
  %68 = icmp eq i64 %67, 8
  br i1 %68, label %69, label %62, !llvm.loop !119

69:                                               ; preds = %62
  tail call void @BitBufferWrite(ptr noundef %1, i32 noundef 9, i32 noundef 8) #31
  tail call void @BitBufferWrite(ptr noundef %1, i32 noundef 136, i32 noundef 8) #31
  br label %70

70:                                               ; preds = %70, %69
  %71 = phi i64 [ 0, %69 ], [ %75, %70 ]
  %72 = getelementptr inbounds [16 x i16], ptr %18, i64 7, i64 %71
  %73 = load i16, ptr %72, align 2, !tbaa !47
  %74 = sext i16 %73 to i32
  tail call void @BitBufferWrite(ptr noundef %1, i32 noundef %74, i32 noundef 16) #31
  %75 = add nuw nsw i64 %71, 1
  %76 = icmp eq i64 %75, 8
  br i1 %76, label %77, label %70, !llvm.loop !120

77:                                               ; preds = %70
  br i1 %20, label %78, label %99

78:                                               ; preds = %77
  %79 = shl i32 %5, 1
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %99, label %81

81:                                               ; preds = %78
  %82 = getelementptr inbounds %class.ALACEncoder, ptr %0, i64 0, i32 10
  %83 = shl nuw nsw i32 %22, 4
  %84 = zext i32 %79 to i64
  br label %85

85:                                               ; preds = %85, %81
  %86 = phi i64 [ 0, %81 ], [ %97, %85 ]
  %87 = load ptr, ptr %82, align 8, !tbaa !92
  %88 = getelementptr inbounds i16, ptr %87, i64 %86
  %89 = load i16, ptr %88, align 2, !tbaa !47
  %90 = zext i16 %89 to i32
  %91 = shl nuw i32 %90, %24
  %92 = or i64 %86, 1
  %93 = getelementptr inbounds i16, ptr %87, i64 %92
  %94 = load i16, ptr %93, align 2, !tbaa !47
  %95 = zext i16 %94 to i32
  %96 = or i32 %91, %95
  tail call void @BitBufferWrite(ptr noundef %1, i32 noundef %96, i32 noundef %83) #31
  %97 = add nuw nsw i64 %86, 2
  %98 = icmp ult i64 %97, %84
  br i1 %98, label %85, label %99, !llvm.loop !121

99:                                               ; preds = %85, %78, %77
  %100 = getelementptr inbounds %class.ALACEncoder, ptr %0, i64 0, i32 6
  %101 = load ptr, ptr %100, align 8, !tbaa !88
  %102 = getelementptr inbounds %class.ALACEncoder, ptr %0, i64 0, i32 8
  %103 = load ptr, ptr %102, align 8, !tbaa !90
  %104 = getelementptr inbounds [16 x i16], ptr %17, i64 7
  tail call void @pc_block(ptr noundef %101, ptr noundef %103, i32 noundef %5, ptr noundef nonnull %104, i32 noundef 8, i32 noundef %26, i32 noundef 9) #31
  call void @set_ag_params(ptr noundef nonnull %8, i32 noundef 10, i32 noundef 40, i32 noundef 14, i32 noundef %5, i32 noundef %5, i32 noundef 255) #31
  %105 = load ptr, ptr %102, align 8, !tbaa !90
  %106 = call i32 @dyn_comp(ptr noundef nonnull %8, ptr noundef %105, ptr noundef %1, i32 noundef %5, i32 noundef %26, ptr noundef nonnull %9) #31
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %143

108:                                              ; preds = %99
  %109 = getelementptr inbounds %class.ALACEncoder, ptr %0, i64 0, i32 7
  %110 = load ptr, ptr %109, align 8, !tbaa !89
  %111 = getelementptr inbounds %class.ALACEncoder, ptr %0, i64 0, i32 9
  %112 = load ptr, ptr %111, align 8, !tbaa !91
  %113 = getelementptr inbounds [16 x i16], ptr %18, i64 7
  call void @pc_block(ptr noundef %110, ptr noundef %112, i32 noundef %5, ptr noundef nonnull %113, i32 noundef 8, i32 noundef %26, i32 noundef 9) #31
  call void @set_ag_params(ptr noundef nonnull %8, i32 noundef 10, i32 noundef 40, i32 noundef 14, i32 noundef %5, i32 noundef %5, i32 noundef 255) #31
  %114 = load ptr, ptr %111, align 8, !tbaa !91
  %115 = call i32 @dyn_comp(ptr noundef nonnull %8, ptr noundef %114, ptr noundef %1, i32 noundef %5, i32 noundef %26, ptr noundef nonnull %10) #31
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %143

117:                                              ; preds = %108
  %118 = load i32, ptr %9, align 4, !tbaa !46
  %119 = load i32, ptr %10, align 4, !tbaa !46
  %120 = select i1 %29, i32 0, i32 32
  %121 = shl i32 %5, 1
  %122 = mul i32 %121, %24
  %123 = add i32 %122, 320
  %124 = select i1 %20, i32 %123, i32 320
  %125 = add i32 %124, %120
  %126 = add i32 %125, %118
  %127 = add i32 %126, %119
  %128 = load i16, ptr %11, align 8, !tbaa !84
  %129 = sext i16 %128 to i32
  %130 = mul i32 %121, %129
  %131 = or i32 %120, 16
  %132 = add i32 %131, %130
  %133 = icmp ult i32 %127, %132
  br i1 %133, label %134, label %141

134:                                              ; preds = %117
  %135 = call i32 @BitBufferGetPosition(ptr noundef %1) #31
  %136 = call i32 @BitBufferGetPosition(ptr noundef nonnull %7) #31
  %137 = sub i32 %135, %136
  %138 = icmp ult i32 %137, %132
  br i1 %138, label %143, label %139

139:                                              ; preds = %134
  %140 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %137, i32 noundef %132) #31
  br label %141

141:                                              ; preds = %139, %117
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false), !tbaa.struct !62
  %142 = call noundef i32 @_ZN11ALACEncoder18EncodeStereoEscapeEP9BitBufferPvjj(ptr noundef nonnull align 8 dereferenceable(8300) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %5) #31
  br label %143

143:                                              ; preds = %141, %134, %108, %99, %6
  %144 = phi i32 [ -50, %6 ], [ %106, %99 ], [ %115, %108 ], [ 0, %141 ], [ 0, %134 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #34
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #34
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %8) #34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #34
  ret i32 %144
}

; Function Attrs: mustprogress optsize uwtable
define internal noundef i32 @_ZN11ALACEncoder10EncodeMonoEP9BitBufferPvjjj(ptr noundef nonnull align 8 dereferenceable(8300) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #12 align 2 {
  %7 = alloca %struct.BitBuffer, align 8
  %8 = alloca %struct.AGParamRec, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.BitBuffer, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #34
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !62
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %8) #34
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #34
  %11 = getelementptr inbounds %class.ALACEncoder, ptr %0, i64 0, i32 1
  %12 = load i16, ptr %11, align 8, !tbaa !84
  %13 = add i16 %12, -16
  %14 = tail call i16 @llvm.fshl.i16(i16 %12, i16 %13, i16 14)
  switch i16 %14, label %247 [
    i16 0, label %15
    i16 1, label %15
    i16 2, label %15
    i16 4, label %15
  ]

15:                                               ; preds = %6, %6, %6, %6
  %16 = zext i32 %4 to i64
  %17 = getelementptr inbounds %class.ALACEncoder, ptr %0, i64 0, i32 12, i64 %16
  %18 = icmp eq i16 %12, 32
  %19 = icmp sgt i16 %12, 23
  %20 = zext i1 %19 to i32
  %21 = select i1 %18, i32 2, i32 %20
  %22 = shl nuw nsw i32 %21, 3
  %23 = shl nsw i32 -1, %22
  %24 = xor i32 %23, -1
  %25 = sext i16 %12 to i32
  %26 = sub nsw i32 %25, %22
  %27 = getelementptr inbounds %class.ALACEncoder, ptr %0, i64 0, i32 17
  %28 = load i32, ptr %27, align 4, !tbaa !108
  %29 = icmp eq i32 %28, %5
  %30 = add nsw i32 %25, -16
  %31 = tail call i32 @llvm.fshl.i32(i32 %25, i32 %30, i32 30)
  switch i32 %31, label %93 [
    i32 0, label %40
    i32 1, label %57
    i32 2, label %60
    i32 4, label %32
  ]

32:                                               ; preds = %15
  %33 = icmp eq i32 %5, 0
  br i1 %33, label %93, label %34

34:                                               ; preds = %32
  %35 = getelementptr inbounds %class.ALACEncoder, ptr %0, i64 0, i32 10
  %36 = load ptr, ptr %35, align 8, !tbaa !92
  %37 = getelementptr inbounds %class.ALACEncoder, ptr %0, i64 0, i32 6
  %38 = load ptr, ptr %37, align 8, !tbaa !88
  %39 = zext i32 %5 to i64
  br label %79

40:                                               ; preds = %15
  %41 = icmp eq i32 %5, 0
  br i1 %41, label %93, label %42

42:                                               ; preds = %40
  %43 = getelementptr inbounds %class.ALACEncoder, ptr %0, i64 0, i32 6
  %44 = load ptr, ptr %43, align 8, !tbaa !88
  %45 = zext i32 %5 to i64
  br label %46

46:                                               ; preds = %46, %42
  %47 = phi i64 [ 0, %42 ], [ %54, %46 ]
  %48 = phi i32 [ 0, %42 ], [ %55, %46 ]
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds i16, ptr %2, i64 %49
  %51 = load i16, ptr %50, align 2, !tbaa !47
  %52 = sext i16 %51 to i32
  %53 = getelementptr inbounds i32, ptr %44, i64 %47
  store i32 %52, ptr %53, align 4, !tbaa !46
  %54 = add nuw nsw i64 %47, 1
  %55 = add i32 %48, %3
  %56 = icmp eq i64 %54, %45
  br i1 %56, label %93, label %46, !llvm.loop !122

57:                                               ; preds = %15
  %58 = getelementptr inbounds %class.ALACEncoder, ptr %0, i64 0, i32 6
  %59 = load ptr, ptr %58, align 8, !tbaa !88
  tail call void @copy20ToPredictor(ptr noundef %2, i32 noundef %3, ptr noundef %59, i32 noundef %5) #31
  br label %93

60:                                               ; preds = %15
  %61 = getelementptr inbounds %class.ALACEncoder, ptr %0, i64 0, i32 6
  %62 = load ptr, ptr %61, align 8, !tbaa !88
  tail call void @copy24ToPredictor(ptr noundef %2, i32 noundef %3, ptr noundef %62, i32 noundef %5) #31
  %63 = icmp eq i32 %5, 0
  br i1 %63, label %93, label %64

64:                                               ; preds = %60
  %65 = load ptr, ptr %61, align 8, !tbaa !88
  %66 = getelementptr inbounds %class.ALACEncoder, ptr %0, i64 0, i32 10
  %67 = load ptr, ptr %66, align 8, !tbaa !92
  %68 = zext i32 %5 to i64
  br label %69

69:                                               ; preds = %69, %64
  %70 = phi i64 [ 0, %64 ], [ %77, %69 ]
  %71 = getelementptr inbounds i32, ptr %65, i64 %70
  %72 = load i32, ptr %71, align 4, !tbaa !46
  %73 = and i32 %72, %24
  %74 = trunc i32 %73 to i16
  %75 = getelementptr inbounds i16, ptr %67, i64 %70
  store i16 %74, ptr %75, align 2, !tbaa !47
  %76 = ashr i32 %72, %22
  store i32 %76, ptr %71, align 4, !tbaa !46
  %77 = add nuw nsw i64 %70, 1
  %78 = icmp eq i64 %77, %68
  br i1 %78, label %93, label %69, !llvm.loop !123

79:                                               ; preds = %79, %34
  %80 = phi i64 [ 0, %34 ], [ %90, %79 ]
  %81 = phi i32 [ 0, %34 ], [ %91, %79 ]
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds i32, ptr %2, i64 %82
  %84 = load i32, ptr %83, align 4, !tbaa !46
  %85 = and i32 %84, %24
  %86 = trunc i32 %85 to i16
  %87 = getelementptr inbounds i16, ptr %36, i64 %80
  store i16 %86, ptr %87, align 2, !tbaa !47
  %88 = ashr i32 %84, %22
  %89 = getelementptr inbounds i32, ptr %38, i64 %80
  store i32 %88, ptr %89, align 4, !tbaa !46
  %90 = add nuw nsw i64 %80, 1
  %91 = add i32 %81, %3
  %92 = icmp eq i64 %90, %39
  br i1 %92, label %93, label %79, !llvm.loop !124

93:                                               ; preds = %79, %69, %60, %57, %46, %40, %32, %15
  %94 = getelementptr inbounds %class.ALACEncoder, ptr %0, i64 0, i32 11
  %95 = getelementptr inbounds %class.ALACEncoder, ptr %0, i64 0, i32 18
  %96 = getelementptr inbounds %class.ALACEncoder, ptr %0, i64 0, i32 6
  %97 = getelementptr inbounds %class.ALACEncoder, ptr %0, i64 0, i32 8
  %98 = lshr i32 %5, 5
  %99 = lshr i32 %5, 3
  br label %100

100:                                              ; preds = %122, %93
  %101 = phi i64 [ 4, %93 ], [ %131, %122 ]
  %102 = phi i32 [ -2147483648, %93 ], [ %130, %122 ]
  %103 = phi i32 [ 4, %93 ], [ %129, %122 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #34
  %104 = load ptr, ptr %94, align 8, !tbaa !93
  %105 = load i32, ptr %95, align 8, !tbaa !97
  call void @BitBufferInit(ptr noundef nonnull %10, ptr noundef %104, i32 noundef %105) #31
  %106 = add nsw i64 %101, -1
  %107 = getelementptr inbounds [16 x i16], ptr %17, i64 %106
  %108 = trunc i64 %101 to i32
  br label %115

109:                                              ; preds = %115
  %110 = load ptr, ptr %96, align 8, !tbaa !88
  %111 = load ptr, ptr %97, align 8, !tbaa !90
  call void @pc_block(ptr noundef %110, ptr noundef %111, i32 noundef %99, ptr noundef nonnull %107, i32 noundef %108, i32 noundef %26, i32 noundef 9) #31
  call void @set_ag_params(ptr noundef nonnull %8, i32 noundef 10, i32 noundef 40, i32 noundef 14, i32 noundef %99, i32 noundef %99, i32 noundef 255) #31
  %112 = load ptr, ptr %97, align 8, !tbaa !90
  %113 = call i32 @dyn_comp(ptr noundef nonnull %8, ptr noundef %112, ptr noundef nonnull %10, i32 noundef %99, i32 noundef %26, ptr noundef nonnull %9) #31
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %122, label %121

115:                                              ; preds = %115, %100
  %116 = phi i32 [ 0, %100 ], [ %119, %115 ]
  %117 = load ptr, ptr %96, align 8, !tbaa !88
  %118 = load ptr, ptr %97, align 8, !tbaa !90
  call void @pc_block(ptr noundef %117, ptr noundef %118, i32 noundef %98, ptr noundef nonnull %107, i32 noundef %108, i32 noundef %26, i32 noundef 9) #31
  %119 = add nuw nsw i32 %116, 1
  %120 = icmp eq i32 %119, 7
  br i1 %120, label %109, label %115, !llvm.loop !125

121:                                              ; preds = %109
  %.lcssa = phi i32 [ %113, %109 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #34
  br label %247

122:                                              ; preds = %109
  %123 = load i32, ptr %9, align 4, !tbaa !46
  %124 = shl i32 %123, 3
  %125 = trunc i64 %101 to i32
  %126 = shl i32 %125, 4
  %127 = add i32 %124, %126
  %128 = icmp ult i32 %127, %102
  %129 = select i1 %128, i32 %108, i32 %103
  %130 = call i32 @llvm.umin.i32(i32 %127, i32 %102)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #34
  %131 = add nuw nsw i64 %101, 4
  %132 = icmp ult i64 %101, 5
  br i1 %132, label %100, label %133, !llvm.loop !126

133:                                              ; preds = %122
  %.lcssa3 = phi i32 [ %129, %122 ]
  %.lcssa2 = phi i32 [ %130, %122 ]
  %134 = select i1 %29, i32 0, i32 32
  %135 = mul i32 %22, %5
  %136 = add i32 %135, 32
  %137 = select i1 %19, i32 %136, i32 32
  %138 = add i32 %137, %134
  %139 = add i32 %138, %.lcssa2
  %140 = load i16, ptr %11, align 8, !tbaa !84
  %141 = sext i16 %140 to i32
  %142 = mul i32 %141, %5
  %143 = or i32 %134, 16
  %144 = add i32 %143, %142
  %145 = icmp ult i32 %139, %144
  br i1 %145, label %146, label %193

146:                                              ; preds = %133
  call void @BitBufferWrite(ptr noundef %1, i32 noundef 0, i32 noundef 12) #31
  %147 = select i1 %29, i32 0, i32 8
  %148 = shl nuw nsw i32 %21, 1
  %149 = or i32 %147, %148
  call void @BitBufferWrite(ptr noundef %1, i32 noundef %149, i32 noundef 4) #31
  br i1 %29, label %151, label %150

150:                                              ; preds = %146
  call void @BitBufferWrite(ptr noundef %1, i32 noundef %5, i32 noundef 32) #31
  br label %151

151:                                              ; preds = %150, %146
  call void @BitBufferWrite(ptr noundef %1, i32 noundef 0, i32 noundef 16) #31
  call void @BitBufferWrite(ptr noundef %1, i32 noundef 9, i32 noundef 8) #31
  %152 = or i32 %.lcssa3, 128
  call void @BitBufferWrite(ptr noundef %1, i32 noundef %152, i32 noundef 8) #31
  %153 = icmp eq i32 %.lcssa3, 0
  br i1 %153, label %165, label %154

154:                                              ; preds = %151
  %155 = add nsw i32 %.lcssa3, -1
  %156 = zext i32 %155 to i64
  %157 = zext i32 %.lcssa3 to i64
  br label %158

158:                                              ; preds = %158, %154
  %159 = phi i64 [ 0, %154 ], [ %163, %158 ]
  %160 = getelementptr inbounds [16 x i16], ptr %17, i64 %156, i64 %159
  %161 = load i16, ptr %160, align 2, !tbaa !47
  %162 = sext i16 %161 to i32
  call void @BitBufferWrite(ptr noundef %1, i32 noundef %162, i32 noundef 16) #31
  %163 = add nuw nsw i64 %159, 1
  %164 = icmp eq i64 %163, %157
  br i1 %164, label %165, label %158, !llvm.loop !127

165:                                              ; preds = %158, %151
  %166 = icmp ne i32 %5, 0
  %167 = and i1 %19, %166
  br i1 %167, label %168, label %179

168:                                              ; preds = %165
  %169 = getelementptr inbounds %class.ALACEncoder, ptr %0, i64 0, i32 10
  %170 = zext i32 %5 to i64
  br label %171

171:                                              ; preds = %171, %168
  %172 = phi i64 [ 0, %168 ], [ %177, %171 ]
  %173 = load ptr, ptr %169, align 8, !tbaa !92
  %174 = getelementptr inbounds i16, ptr %173, i64 %172
  %175 = load i16, ptr %174, align 2, !tbaa !47
  %176 = zext i16 %175 to i32
  call void @BitBufferWrite(ptr noundef %1, i32 noundef %176, i32 noundef %22) #31
  %177 = add nuw nsw i64 %172, 1
  %178 = icmp eq i64 %177, %170
  br i1 %178, label %179, label %171, !llvm.loop !128

179:                                              ; preds = %171, %165
  %180 = load ptr, ptr %96, align 8, !tbaa !88
  %181 = load ptr, ptr %97, align 8, !tbaa !90
  %182 = add nsw i32 %.lcssa3, -1
  %183 = zext i32 %182 to i64
  %184 = getelementptr inbounds [16 x i16], ptr %17, i64 %183
  call void @pc_block(ptr noundef %180, ptr noundef %181, i32 noundef %5, ptr noundef nonnull %184, i32 noundef %.lcssa3, i32 noundef %26, i32 noundef 9) #31
  call void @set_standard_ag_params(ptr noundef nonnull %8, i32 noundef %5, i32 noundef %5) #31
  %185 = load ptr, ptr %97, align 8, !tbaa !90
  %186 = call i32 @dyn_comp(ptr noundef nonnull %8, ptr noundef %185, ptr noundef %1, i32 noundef %5, i32 noundef %26, ptr noundef nonnull %9) #31
  %187 = call i32 @BitBufferGetPosition(ptr noundef %1) #31
  %188 = call i32 @BitBufferGetPosition(ptr noundef nonnull %7) #31
  %189 = sub i32 %187, %188
  %190 = icmp ult i32 %189, %144
  br i1 %190, label %247, label %191

191:                                              ; preds = %179
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false), !tbaa.struct !62
  %192 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %189, i32 noundef %144) #31
  br label %193

193:                                              ; preds = %191, %133
  %194 = phi i32 [ 0, %133 ], [ %186, %191 ]
  call void @BitBufferWrite(ptr noundef %1, i32 noundef 0, i32 noundef 12) #31
  %195 = select i1 %29, i32 1, i32 9
  call void @BitBufferWrite(ptr noundef %1, i32 noundef %195, i32 noundef 4) #31
  br i1 %29, label %197, label %196

196:                                              ; preds = %193
  call void @BitBufferWrite(ptr noundef %1, i32 noundef %5, i32 noundef 32) #31
  br label %197

197:                                              ; preds = %196, %193
  %198 = load i16, ptr %11, align 8, !tbaa !84
  %199 = sext i16 %198 to i32
  %200 = add nsw i32 %199, -16
  %201 = call i32 @llvm.fshl.i32(i32 %199, i32 %200, i32 30)
  switch i32 %201, label %247 [
    i32 0, label %205
    i32 1, label %216
    i32 2, label %228
    i32 4, label %202
  ]

202:                                              ; preds = %197
  %203 = mul i32 %5, %3
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %247, label %240

205:                                              ; preds = %197
  %206 = mul i32 %5, %3
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %247, label %208

208:                                              ; preds = %208, %205
  %209 = phi i32 [ %214, %208 ], [ 0, %205 ]
  %210 = zext i32 %209 to i64
  %211 = getelementptr inbounds i16, ptr %2, i64 %210
  %212 = load i16, ptr %211, align 2, !tbaa !47
  %213 = sext i16 %212 to i32
  call void @BitBufferWrite(ptr noundef %1, i32 noundef %213, i32 noundef 16) #31
  %214 = add i32 %209, %3
  %215 = icmp ult i32 %214, %206
  br i1 %215, label %208, label %247, !llvm.loop !129

216:                                              ; preds = %197
  %217 = load ptr, ptr %96, align 8, !tbaa !88
  call void @copy20ToPredictor(ptr noundef %2, i32 noundef %3, ptr noundef %217, i32 noundef %5) #31
  %218 = icmp eq i32 %5, 0
  br i1 %218, label %247, label %219

219:                                              ; preds = %216
  %220 = zext i32 %5 to i64
  br label %221

221:                                              ; preds = %221, %219
  %222 = phi i64 [ 0, %219 ], [ %226, %221 ]
  %223 = load ptr, ptr %96, align 8, !tbaa !88
  %224 = getelementptr inbounds i32, ptr %223, i64 %222
  %225 = load i32, ptr %224, align 4, !tbaa !46
  call void @BitBufferWrite(ptr noundef %1, i32 noundef %225, i32 noundef 20) #31
  %226 = add nuw nsw i64 %222, 1
  %227 = icmp eq i64 %226, %220
  br i1 %227, label %247, label %221, !llvm.loop !130

228:                                              ; preds = %197
  %229 = load ptr, ptr %96, align 8, !tbaa !88
  call void @copy24ToPredictor(ptr noundef %2, i32 noundef %3, ptr noundef %229, i32 noundef %5) #31
  %230 = icmp eq i32 %5, 0
  br i1 %230, label %247, label %231

231:                                              ; preds = %228
  %232 = zext i32 %5 to i64
  br label %233

233:                                              ; preds = %233, %231
  %234 = phi i64 [ 0, %231 ], [ %238, %233 ]
  %235 = load ptr, ptr %96, align 8, !tbaa !88
  %236 = getelementptr inbounds i32, ptr %235, i64 %234
  %237 = load i32, ptr %236, align 4, !tbaa !46
  call void @BitBufferWrite(ptr noundef %1, i32 noundef %237, i32 noundef 24) #31
  %238 = add nuw nsw i64 %234, 1
  %239 = icmp eq i64 %238, %232
  br i1 %239, label %247, label %233, !llvm.loop !131

240:                                              ; preds = %240, %202
  %241 = phi i32 [ %245, %240 ], [ 0, %202 ]
  %242 = zext i32 %241 to i64
  %243 = getelementptr inbounds i32, ptr %2, i64 %242
  %244 = load i32, ptr %243, align 4, !tbaa !46
  call void @BitBufferWrite(ptr noundef %1, i32 noundef %244, i32 noundef 32) #31
  %245 = add i32 %241, %3
  %246 = icmp ult i32 %245, %203
  br i1 %246, label %240, label %247, !llvm.loop !132

247:                                              ; preds = %240, %233, %228, %221, %216, %208, %205, %202, %197, %179, %121, %6
  %248 = phi i32 [ -50, %6 ], [ %.lcssa, %121 ], [ %194, %197 ], [ %186, %179 ], [ %194, %205 ], [ %194, %216 ], [ %194, %228 ], [ %194, %202 ], [ %194, %208 ], [ %194, %221 ], [ %194, %233 ], [ %194, %240 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #34
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %8) #34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #34
  ret i32 %248
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.fshl.i16(i16, i16, i16) #1

; Function Attrs: mustprogress optsize uwtable
define internal noundef i32 @_ZN11ALACEncoder18EncodeStereoEscapeEP9BitBufferPvjj(ptr nocapture noundef nonnull readonly align 8 dereferenceable(8300) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) #12 align 2 {
  %6 = getelementptr inbounds %class.ALACEncoder, ptr %0, i64 0, i32 17
  %7 = load i32, ptr %6, align 4, !tbaa !108
  %8 = icmp eq i32 %7, %4
  tail call void @BitBufferWrite(ptr noundef %1, i32 noundef 0, i32 noundef 12) #31
  %9 = select i1 %8, i32 1, i32 9
  tail call void @BitBufferWrite(ptr noundef %1, i32 noundef %9, i32 noundef 4) #31
  br i1 %8, label %11, label %10

10:                                               ; preds = %5
  tail call void @BitBufferWrite(ptr noundef %1, i32 noundef %4, i32 noundef 32) #31
  br label %11

11:                                               ; preds = %10, %5
  %12 = getelementptr inbounds %class.ALACEncoder, ptr %0, i64 0, i32 1
  %13 = load i16, ptr %12, align 8, !tbaa !84
  %14 = sext i16 %13 to i32
  %15 = add nsw i32 %14, -16
  %16 = tail call i32 @llvm.fshl.i32(i32 %14, i32 %15, i32 30)
  switch i32 %16, label %85 [
    i32 0, label %20
    i32 1, label %36
    i32 2, label %54
    i32 4, label %17
  ]

17:                                               ; preds = %11
  %18 = mul i32 %4, %3
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %85, label %74

20:                                               ; preds = %11
  %21 = mul i32 %4, %3
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %85, label %23

23:                                               ; preds = %23, %20
  %24 = phi i32 [ %34, %23 ], [ 0, %20 ]
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds i16, ptr %2, i64 %25
  %27 = load i16, ptr %26, align 2, !tbaa !47
  %28 = sext i16 %27 to i32
  tail call void @BitBufferWrite(ptr noundef %1, i32 noundef %28, i32 noundef 16) #31
  %29 = add nuw i32 %24, 1
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds i16, ptr %2, i64 %30
  %32 = load i16, ptr %31, align 2, !tbaa !47
  %33 = sext i16 %32 to i32
  tail call void @BitBufferWrite(ptr noundef %1, i32 noundef %33, i32 noundef 16) #31
  %34 = add i32 %24, %3
  %35 = icmp ult i32 %34, %21
  br i1 %35, label %23, label %85, !llvm.loop !133

36:                                               ; preds = %11
  %37 = getelementptr inbounds %class.ALACEncoder, ptr %0, i64 0, i32 6
  %38 = load ptr, ptr %37, align 8, !tbaa !88
  %39 = getelementptr inbounds %class.ALACEncoder, ptr %0, i64 0, i32 7
  %40 = load ptr, ptr %39, align 8, !tbaa !89
  tail call void @mix20(ptr noundef %2, i32 noundef %3, ptr noundef %38, ptr noundef %40, i32 noundef %4, i32 noundef 0, i32 noundef 0) #31
  %41 = icmp eq i32 %4, 0
  br i1 %41, label %85, label %42

42:                                               ; preds = %36
  %43 = zext i32 %4 to i64
  br label %44

44:                                               ; preds = %44, %42
  %45 = phi i64 [ 0, %42 ], [ %52, %44 ]
  %46 = load ptr, ptr %37, align 8, !tbaa !88
  %47 = getelementptr inbounds i32, ptr %46, i64 %45
  %48 = load i32, ptr %47, align 4, !tbaa !46
  tail call void @BitBufferWrite(ptr noundef %1, i32 noundef %48, i32 noundef 20) #31
  %49 = load ptr, ptr %39, align 8, !tbaa !89
  %50 = getelementptr inbounds i32, ptr %49, i64 %45
  %51 = load i32, ptr %50, align 4, !tbaa !46
  tail call void @BitBufferWrite(ptr noundef %1, i32 noundef %51, i32 noundef 20) #31
  %52 = add nuw nsw i64 %45, 1
  %53 = icmp eq i64 %52, %43
  br i1 %53, label %85, label %44, !llvm.loop !134

54:                                               ; preds = %11
  %55 = getelementptr inbounds %class.ALACEncoder, ptr %0, i64 0, i32 6
  %56 = load ptr, ptr %55, align 8, !tbaa !88
  %57 = getelementptr inbounds %class.ALACEncoder, ptr %0, i64 0, i32 7
  %58 = load ptr, ptr %57, align 8, !tbaa !89
  %59 = getelementptr inbounds %class.ALACEncoder, ptr %0, i64 0, i32 10
  %60 = load ptr, ptr %59, align 8, !tbaa !92
  tail call void @mix24(ptr noundef %2, i32 noundef %3, ptr noundef %56, ptr noundef %58, i32 noundef %4, i32 noundef 0, i32 noundef 0, ptr noundef %60, i32 noundef 0) #31
  %61 = icmp eq i32 %4, 0
  br i1 %61, label %85, label %62

62:                                               ; preds = %54
  %63 = zext i32 %4 to i64
  br label %64

64:                                               ; preds = %64, %62
  %65 = phi i64 [ 0, %62 ], [ %72, %64 ]
  %66 = load ptr, ptr %55, align 8, !tbaa !88
  %67 = getelementptr inbounds i32, ptr %66, i64 %65
  %68 = load i32, ptr %67, align 4, !tbaa !46
  tail call void @BitBufferWrite(ptr noundef %1, i32 noundef %68, i32 noundef 24) #31
  %69 = load ptr, ptr %57, align 8, !tbaa !89
  %70 = getelementptr inbounds i32, ptr %69, i64 %65
  %71 = load i32, ptr %70, align 4, !tbaa !46
  tail call void @BitBufferWrite(ptr noundef %1, i32 noundef %71, i32 noundef 24) #31
  %72 = add nuw nsw i64 %65, 1
  %73 = icmp eq i64 %72, %63
  br i1 %73, label %85, label %64, !llvm.loop !135

74:                                               ; preds = %74, %17
  %75 = phi i32 [ %83, %74 ], [ 0, %17 ]
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds i32, ptr %2, i64 %76
  %78 = load i32, ptr %77, align 4, !tbaa !46
  tail call void @BitBufferWrite(ptr noundef %1, i32 noundef %78, i32 noundef 32) #31
  %79 = add nuw i32 %75, 1
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds i32, ptr %2, i64 %80
  %82 = load i32, ptr %81, align 4, !tbaa !46
  tail call void @BitBufferWrite(ptr noundef %1, i32 noundef %82, i32 noundef 32) #31
  %83 = add i32 %75, %3
  %84 = icmp ult i32 %83, %18
  br i1 %84, label %74, label %85, !llvm.loop !136

85:                                               ; preds = %74, %64, %54, %44, %36, %23, %20, %17, %11
  ret i32 0
}

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #19

; Function Attrs: mustprogress optsize uwtable
define internal void @_ZN11ALACEncoder9GetConfigER18ALACSpecificConfig(ptr nocapture noundef nonnull readonly align 8 dereferenceable(8300) %0, ptr nocapture noundef nonnull writeonly align 4 dereferenceable(24) %1) #12 align 2 {
  %3 = getelementptr inbounds %class.ALACEncoder, ptr %0, i64 0, i32 17
  %4 = load i32, ptr %3, align 4, !tbaa !108
  %5 = tail call i32 @Swap32NtoB(i32 noundef %4) #31
  store i32 %5, ptr %1, align 4, !tbaa !38
  %6 = getelementptr inbounds %struct.ALACSpecificConfig, ptr %1, i64 0, i32 1
  store i8 0, ptr %6, align 4, !tbaa !137
  %7 = getelementptr inbounds %class.ALACEncoder, ptr %0, i64 0, i32 1
  %8 = load i16, ptr %7, align 8, !tbaa !84
  %9 = trunc i16 %8 to i8
  %10 = getelementptr inbounds %struct.ALACSpecificConfig, ptr %1, i64 0, i32 2
  store i8 %9, ptr %10, align 1, !tbaa !138
  %11 = getelementptr inbounds %struct.ALACSpecificConfig, ptr %1, i64 0, i32 3
  store i8 40, ptr %11, align 2, !tbaa !139
  %12 = getelementptr inbounds %struct.ALACSpecificConfig, ptr %1, i64 0, i32 5
  store i8 14, ptr %12, align 4, !tbaa !39
  %13 = getelementptr inbounds %struct.ALACSpecificConfig, ptr %1, i64 0, i32 4
  store i8 10, ptr %13, align 1, !tbaa !140
  %14 = getelementptr inbounds %class.ALACEncoder, ptr %0, i64 0, i32 19
  %15 = load i32, ptr %14, align 4, !tbaa !106
  %16 = trunc i32 %15 to i8
  %17 = getelementptr inbounds %struct.ALACSpecificConfig, ptr %1, i64 0, i32 6
  store i8 %16, ptr %17, align 1, !tbaa !40
  %18 = tail call zeroext i16 @Swap16NtoB(i16 noundef zeroext 255) #31
  %19 = getelementptr inbounds %struct.ALACSpecificConfig, ptr %1, i64 0, i32 7
  store i16 %18, ptr %19, align 2, !tbaa !41
  %20 = getelementptr inbounds %class.ALACEncoder, ptr %0, i64 0, i32 16
  %21 = load i32, ptr %20, align 8, !tbaa !103
  %22 = tail call i32 @Swap32NtoB(i32 noundef %21) #31
  %23 = getelementptr inbounds %struct.ALACSpecificConfig, ptr %1, i64 0, i32 8
  store i32 %22, ptr %23, align 4, !tbaa !42
  %24 = getelementptr inbounds %class.ALACEncoder, ptr %0, i64 0, i32 15
  %25 = load i32, ptr %24, align 4, !tbaa !141
  %26 = tail call i32 @Swap32NtoB(i32 noundef %25) #31
  %27 = getelementptr inbounds %struct.ALACSpecificConfig, ptr %1, i64 0, i32 9
  store i32 %26, ptr %27, align 4, !tbaa !43
  %28 = getelementptr inbounds %class.ALACEncoder, ptr %0, i64 0, i32 20
  %29 = load i32, ptr %28, align 8, !tbaa !105
  %30 = tail call i32 @Swap32NtoB(i32 noundef %29) #31
  %31 = getelementptr inbounds %struct.ALACSpecificConfig, ptr %1, i64 0, i32 10
  store i32 %30, ptr %31, align 4, !tbaa !44
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal noundef i32 @_ZN11ALACEncoder18GetMagicCookieSizeEj(ptr nocapture noundef nonnull readnone align 8 dereferenceable(8300) %0, i32 noundef %1) #17 align 2 {
  %3 = icmp ugt i32 %1, 2
  %4 = select i1 %3, i32 48, i32 24
  ret i32 %4
}

; Function Attrs: mustprogress optsize uwtable
define internal void @_ZN11ALACEncoder14GetMagicCookieEPvPj(ptr nocapture noundef nonnull readonly align 8 dereferenceable(8300) %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef %2) #12 align 2 {
  %4 = alloca %struct.ALACSpecificConfig, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  call void @_ZN11ALACEncoder9GetConfigER18ALACSpecificConfig(ptr noundef nonnull align 8 dereferenceable(8300) %0, ptr noundef nonnull align 4 dereferenceable(24) %4) #31
  %5 = getelementptr inbounds %struct.ALACSpecificConfig, ptr %4, i64 0, i32 6
  %6 = load i8, ptr %5, align 1, !tbaa !40
  %7 = icmp ugt i8 %6, 2
  %8 = load i32, ptr %2, align 4, !tbaa !46
  br i1 %7, label %9, label %11

9:                                                ; preds = %3
  %10 = icmp ult i32 %8, 48
  br i1 %10, label %25, label %14

11:                                               ; preds = %3
  %12 = icmp ult i32 %8, 24
  br i1 %12, label %25, label %13

13:                                               ; preds = %11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %1, ptr noundef nonnull align 4 dereferenceable(24) %4, i64 24, i1 false)
  br label %25

14:                                               ; preds = %9
  %15 = zext i8 %6 to i64
  %16 = add nuw nsw i64 %15, 4294967295
  %17 = and i64 %16, 4294967295
  %18 = getelementptr inbounds [8 x i32], ptr @_ZL21ALACChannelLayoutTags, i64 0, i64 %17
  %19 = load i32, ptr %18, align 4, !tbaa !46
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %1, ptr noundef nonnull align 4 dereferenceable(24) %4, i64 24, i1 false)
  %20 = getelementptr inbounds i8, ptr %1, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %20, ptr noundef nonnull align 1 dereferenceable(3) @__const._ZN11ALACEncoder14GetMagicCookieEPvPj.theChannelAtom, i64 3, i1 false)
  %21 = getelementptr inbounds i8, ptr %1, i64 27
  store i8 24, ptr %21, align 1
  %22 = getelementptr inbounds i8, ptr %1, i64 28
  store i64 1851877475, ptr %22, align 1
  %23 = getelementptr inbounds i8, ptr %1, i64 36
  store i32 %19, ptr %23, align 1
  %24 = getelementptr inbounds i8, ptr %1, i64 40
  store i64 0, ptr %24, align 1
  br label %25

25:                                               ; preds = %14, %13, %11, %9
  %26 = phi i32 [ 48, %14 ], [ 0, %9 ], [ 0, %11 ], [ 24, %13 ]
  store i32 %26, ptr %2, align 4, !tbaa !46
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #34
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal void @set_standard_ag_params(ptr nocapture noundef writeonly %0, i32 noundef %1, i32 noundef %2) #4 {
  store <4 x i32> <i32 10, i32 10, i32 40, i32 14>, ptr %0, align 4, !tbaa !17
  %4 = getelementptr inbounds %struct.AGParamRec, ptr %0, i64 0, i32 4
  store i32 16383, ptr %4, align 4, !tbaa !142
  %5 = getelementptr inbounds %struct.AGParamRec, ptr %0, i64 0, i32 5
  store i32 472, ptr %5, align 4, !tbaa !144
  %6 = getelementptr inbounds %struct.AGParamRec, ptr %0, i64 0, i32 6
  store i32 %1, ptr %6, align 4, !tbaa !145
  %7 = getelementptr inbounds %struct.AGParamRec, ptr %0, i64 0, i32 7
  store i32 %2, ptr %7, align 4, !tbaa !146
  %8 = getelementptr inbounds %struct.AGParamRec, ptr %0, i64 0, i32 8
  store i32 255, ptr %8, align 4, !tbaa !147
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal void @set_ag_params(ptr nocapture noundef writeonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) #4 {
  %8 = getelementptr inbounds %struct.AGParamRec, ptr %0, i64 0, i32 1
  store i32 %1, ptr %8, align 4, !tbaa !148
  store i32 %1, ptr %0, align 4, !tbaa !149
  %9 = getelementptr inbounds %struct.AGParamRec, ptr %0, i64 0, i32 2
  store i32 %2, ptr %9, align 4, !tbaa !150
  %10 = getelementptr inbounds %struct.AGParamRec, ptr %0, i64 0, i32 3
  store i32 %3, ptr %10, align 4, !tbaa !151
  %11 = shl nsw i32 -1, %3
  %12 = xor i32 %11, -1
  %13 = getelementptr inbounds %struct.AGParamRec, ptr %0, i64 0, i32 4
  store i32 %12, ptr %13, align 4, !tbaa !142
  %14 = sub i32 512, %2
  %15 = getelementptr inbounds %struct.AGParamRec, ptr %0, i64 0, i32 5
  store i32 %14, ptr %15, align 4, !tbaa !144
  %16 = getelementptr inbounds %struct.AGParamRec, ptr %0, i64 0, i32 6
  store i32 %4, ptr %16, align 4, !tbaa !145
  %17 = getelementptr inbounds %struct.AGParamRec, ptr %0, i64 0, i32 7
  store i32 %5, ptr %17, align 4, !tbaa !146
  %18 = getelementptr inbounds %struct.AGParamRec, ptr %0, i64 0, i32 8
  store i32 %6, ptr %18, align 4, !tbaa !147
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @dyn_decomp(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef writeonly %2, i32 noundef %3, i32 noundef %4, ptr noundef writeonly %5) #16 {
  %7 = getelementptr inbounds %struct.AGParamRec, ptr %0, i64 0, i32 2
  %8 = load i32, ptr %7, align 4, !tbaa !150
  %9 = getelementptr inbounds %struct.AGParamRec, ptr %0, i64 0, i32 3
  %10 = load i32, ptr %9, align 4, !tbaa !151
  %11 = getelementptr inbounds %struct.AGParamRec, ptr %0, i64 0, i32 4
  %12 = load i32, ptr %11, align 4, !tbaa !142
  %13 = icmp ne ptr %1, null
  %14 = icmp ne ptr %2, null
  %15 = and i1 %13, %14
  %16 = icmp ne ptr %5, null
  %17 = and i1 %15, %16
  br i1 %17, label %18, label %291

18:                                               ; preds = %6
  store i32 0, ptr %5, align 4, !tbaa !17
  %19 = load ptr, ptr %1, align 8, !tbaa !19
  %20 = getelementptr inbounds %struct.BitBuffer, ptr %1, i64 0, i32 2
  %21 = load i32, ptr %20, align 8, !tbaa !23
  %22 = getelementptr inbounds %struct.BitBuffer, ptr %1, i64 0, i32 3
  %23 = load i32, ptr %22, align 4, !tbaa !24
  %24 = shl i32 %23, 3
  %25 = icmp eq i32 %3, 0
  br i1 %25, label %282, label %26

26:                                               ; preds = %18
  %27 = getelementptr inbounds %struct.AGParamRec, ptr %0, i64 0, i32 1
  %28 = load i32, ptr %27, align 4, !tbaa !148
  %29 = sub nsw i32 32, %4
  %30 = icmp eq i32 %4, 32
  %31 = zext i32 %4 to i64
  %32 = shl i64 4294967295, %31
  %33 = trunc i64 %32 to i32
  %34 = xor i32 %33, -1
  %35 = select i1 %30, i32 -1, i32 %34
  br label %36

36:                                               ; preds = %275, %26
  %37 = phi ptr [ %2, %26 ], [ %280, %275 ]
  %38 = phi i32 [ %28, %26 ], [ %279, %275 ]
  %39 = phi i32 [ 0, %26 ], [ %278, %275 ]
  %40 = phi i32 [ 0, %26 ], [ %277, %275 ]
  %41 = phi i32 [ %21, %26 ], [ %276, %275 ]
  %42 = icmp ult i32 %41, %24
  br i1 %42, label %43, label %282

43:                                               ; preds = %36
  %44 = lshr i32 %38, 9
  %45 = add nuw nsw i32 %44, 3
  %46 = zext i32 %45 to i64
  br label %47

47:                                               ; preds = %52, %43
  %48 = phi i64 [ 2147483648, %43 ], [ %53, %52 ]
  %49 = phi i64 [ 0, %43 ], [ %54, %52 ]
  %50 = and i64 %48, %46
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %47
  %53 = lshr i64 %48, 1
  %54 = add nuw nsw i64 %49, 1
  %55 = icmp eq i64 %54, 32
  br i1 %55, label %56, label %47, !llvm.loop !152

56:                                               ; preds = %52, %47
  %57 = phi i64 [ %49, %47 ], [ 32, %52 ]
  %58 = trunc i64 %57 to i32
  %59 = sub nsw i32 31, %58
  %60 = tail call i32 @llvm.umin.i32(i32 %59, i32 %10)
  %61 = lshr i32 %41, 3
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds i8, ptr %19, i64 %62
  %64 = load i8, ptr %63, align 1, !tbaa !16
  %65 = zext i8 %64 to i32
  %66 = shl nuw i32 %65, 24
  %67 = getelementptr inbounds i8, ptr %63, i64 1
  %68 = load i8, ptr %67, align 1, !tbaa !16
  %69 = zext i8 %68 to i32
  %70 = shl nuw nsw i32 %69, 16
  %71 = or i32 %70, %66
  %72 = getelementptr inbounds i8, ptr %63, i64 2
  %73 = load i8, ptr %72, align 1, !tbaa !16
  %74 = zext i8 %73 to i32
  %75 = shl nuw nsw i32 %74, 8
  %76 = or i32 %71, %75
  %77 = getelementptr inbounds i8, ptr %63, i64 3
  %78 = load i8, ptr %77, align 1, !tbaa !16
  %79 = zext i8 %78 to i32
  %80 = or i32 %76, %79
  %81 = and i32 %41, 7
  %82 = shl i32 %80, %81
  %83 = xor i32 %82, -1
  %84 = zext i32 %83 to i64
  br label %85

85:                                               ; preds = %90, %56
  %86 = phi i64 [ 2147483648, %56 ], [ %91, %90 ]
  %87 = phi i64 [ 0, %56 ], [ %92, %90 ]
  %88 = and i64 %86, %84
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %85
  %91 = lshr i64 %86, 1
  %92 = add nuw nsw i64 %87, 1
  %93 = icmp eq i64 %92, 32
  br i1 %93, label %97, label %85, !llvm.loop !152

94:                                               ; preds = %85
  %.lcssa = phi i64 [ %87, %85 ]
  %95 = trunc i64 %.lcssa to i32
  %96 = icmp ugt i32 %95, 8
  br i1 %96, label %97, label %140

97:                                               ; preds = %94, %90
  %98 = add i32 %41, 9
  %99 = sdiv i32 %98, 8
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds i8, ptr %19, i64 %100
  %102 = load i8, ptr %101, align 1, !tbaa !16
  %103 = zext i8 %102 to i32
  %104 = shl nuw i32 %103, 24
  %105 = getelementptr inbounds i8, ptr %101, i64 1
  %106 = load i8, ptr %105, align 1, !tbaa !16
  %107 = zext i8 %106 to i32
  %108 = shl nuw nsw i32 %107, 16
  %109 = or i32 %108, %104
  %110 = getelementptr inbounds i8, ptr %101, i64 2
  %111 = load i8, ptr %110, align 1, !tbaa !16
  %112 = zext i8 %111 to i32
  %113 = shl nuw nsw i32 %112, 8
  %114 = or i32 %109, %113
  %115 = getelementptr inbounds i8, ptr %101, i64 3
  %116 = load i8, ptr %115, align 1, !tbaa !16
  %117 = zext i8 %116 to i32
  %118 = or i32 %114, %117
  %119 = and i32 %98, 7
  %120 = add nsw i32 %119, %4
  %121 = icmp sgt i32 %120, 32
  br i1 %121, label %122, label %133

122:                                              ; preds = %97
  %123 = shl i32 %118, %119
  %124 = add nsw i32 %99, 4
  %125 = zext i32 %124 to i64
  %126 = getelementptr inbounds i8, ptr %19, i64 %125
  %127 = load i8, ptr %126, align 1, !tbaa !16
  %128 = zext i8 %127 to i32
  %129 = sub nsw i32 40, %120
  %130 = lshr i32 %128, %129
  %131 = lshr i32 %123, %29
  %132 = or i32 %130, %131
  br label %136

133:                                              ; preds = %97
  %134 = sub i32 32, %120
  %135 = lshr i32 %118, %134
  br label %136

136:                                              ; preds = %133, %122
  %137 = phi i32 [ %132, %122 ], [ %135, %133 ]
  %138 = and i32 %137, %35
  %139 = add i32 %98, %4
  br label %157

140:                                              ; preds = %94
  %141 = add i32 %41, %95
  %142 = add i32 %141, 1
  %143 = icmp eq i32 %60, 1
  br i1 %143, label %157, label %144

144:                                              ; preds = %140
  %145 = add nuw nsw i32 %95, 1
  %146 = shl i32 %82, %145
  %147 = sub nsw i32 32, %60
  %148 = lshr i32 %146, %147
  %149 = add i32 %141, %60
  %150 = shl i32 %95, %60
  %151 = sub i32 %150, %95
  %152 = icmp ugt i32 %148, 1
  br i1 %152, label %153, label %157

153:                                              ; preds = %144
  %154 = add i32 %142, %60
  %155 = add i32 %151, -1
  %156 = add i32 %155, %148
  br label %157

157:                                              ; preds = %153, %144, %140, %136
  %158 = phi i32 [ %138, %136 ], [ %156, %153 ], [ %151, %144 ], [ %95, %140 ]
  %159 = phi i32 [ %139, %136 ], [ %154, %153 ], [ %149, %144 ], [ %142, %140 ]
  %160 = add i32 %158, %39
  %161 = and i32 %160, 1
  %162 = sub nsw i32 0, %161
  %163 = or i32 %162, 1
  %164 = add i32 %160, 1
  %165 = lshr i32 %164, 1
  %166 = mul i32 %165, %163
  %167 = getelementptr i32, ptr %37, i64 1
  store i32 %166, ptr %37, align 4, !tbaa !17
  %168 = add i32 %40, 1
  %169 = mul i32 %160, %8
  %170 = mul i32 %38, %8
  %171 = lshr i32 %170, 9
  %172 = sub i32 %38, %171
  %173 = add i32 %172, %169
  %174 = icmp ugt i32 %158, 65535
  %175 = select i1 %174, i32 65535, i32 %173
  %176 = and i32 %175, 1073741696
  %177 = icmp eq i32 %176, 0
  %178 = icmp ult i32 %168, %3
  %179 = and i1 %178, %177
  br i1 %179, label %180, label %275

180:                                              ; preds = %157
  %181 = zext i32 %175 to i64
  br label %182

182:                                              ; preds = %187, %180
  %183 = phi i64 [ 2147483648, %180 ], [ %188, %187 ]
  %184 = phi i64 [ 0, %180 ], [ %189, %187 ]
  %185 = and i64 %183, %181
  %186 = icmp eq i64 %185, 0
  br i1 %186, label %187, label %191

187:                                              ; preds = %182
  %188 = lshr i64 %183, 1
  %189 = add nuw nsw i64 %184, 1
  %190 = icmp eq i64 %189, 32
  br i1 %190, label %191, label %182, !llvm.loop !152

191:                                              ; preds = %187, %182
  %192 = phi i64 [ %184, %182 ], [ 32, %187 ]
  %193 = trunc i64 %192 to i32
  %194 = add i32 %175, 16
  %195 = lshr i32 %194, 6
  %196 = add nsw i32 %195, -24
  %197 = add i32 %196, %193
  %198 = shl nsw i32 -1, %197
  %199 = xor i32 %198, -1
  %200 = and i32 %12, %199
  %201 = lshr i32 %159, 3
  %202 = zext i32 %201 to i64
  %203 = getelementptr inbounds i8, ptr %19, i64 %202
  %204 = load i8, ptr %203, align 1, !tbaa !16
  %205 = zext i8 %204 to i32
  %206 = shl nuw i32 %205, 24
  %207 = getelementptr inbounds i8, ptr %203, i64 1
  %208 = load i8, ptr %207, align 1, !tbaa !16
  %209 = zext i8 %208 to i32
  %210 = shl nuw nsw i32 %209, 16
  %211 = or i32 %210, %206
  %212 = getelementptr inbounds i8, ptr %203, i64 2
  %213 = load i8, ptr %212, align 1, !tbaa !16
  %214 = zext i8 %213 to i32
  %215 = shl nuw nsw i32 %214, 8
  %216 = or i32 %211, %215
  %217 = getelementptr inbounds i8, ptr %203, i64 3
  %218 = load i8, ptr %217, align 1, !tbaa !16
  %219 = zext i8 %218 to i32
  %220 = or i32 %216, %219
  %221 = and i32 %159, 7
  %222 = shl i32 %220, %221
  %223 = xor i32 %222, -1
  %224 = zext i32 %223 to i64
  br label %225

225:                                              ; preds = %230, %191
  %226 = phi i64 [ 2147483648, %191 ], [ %231, %230 ]
  %227 = phi i64 [ 0, %191 ], [ %232, %230 ]
  %228 = and i64 %226, %224
  %229 = icmp eq i64 %228, 0
  br i1 %229, label %230, label %234

230:                                              ; preds = %225
  %231 = lshr i64 %226, 1
  %232 = add nuw nsw i64 %227, 1
  %233 = icmp eq i64 %232, 32
  br i1 %233, label %237, label %225, !llvm.loop !152

234:                                              ; preds = %225
  %.lcssa2 = phi i64 [ %227, %225 ]
  %235 = trunc i64 %.lcssa2 to i32
  %236 = icmp ugt i32 %235, 8
  br i1 %236, label %237, label %241

237:                                              ; preds = %234, %230
  %238 = lshr i32 %222, 7
  %239 = and i32 %238, 65535
  %240 = add i32 %159, 25
  br label %255

241:                                              ; preds = %234
  %242 = add nuw nsw i32 %235, 1
  %243 = shl i32 %222, %242
  %244 = sub i32 32, %197
  %245 = lshr i32 %243, %244
  %246 = mul i32 %200, %235
  %247 = add i32 %246, -1
  %248 = add i32 %247, %245
  %249 = icmp ugt i32 %245, 1
  %250 = select i1 %249, i32 %248, i32 %246
  %251 = zext i1 %249 to i32
  %252 = add i32 %197, %159
  %253 = add i32 %252, %235
  %254 = add i32 %253, %251
  br label %255

255:                                              ; preds = %241, %237
  %256 = phi i32 [ %239, %237 ], [ %250, %241 ]
  %257 = phi i32 [ %240, %237 ], [ %254, %241 ]
  %258 = add i32 %256, %168
  %259 = icmp ugt i32 %258, %3
  br i1 %259, label %282, label %260

260:                                              ; preds = %255
  %261 = icmp eq i32 %256, 0
  br i1 %261, label %270, label %262

262:                                              ; preds = %260
  %263 = zext i32 %256 to i64
  %264 = shl nuw nsw i64 %263, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %167, i8 0, i64 %264, i1 false), !tbaa !17
  %265 = add i32 %256, -1
  %266 = zext i32 %265 to i64
  %267 = shl nuw nsw i64 %266, 2
  %268 = getelementptr i8, ptr %37, i64 8
  %269 = getelementptr i8, ptr %268, i64 %267
  br label %270

270:                                              ; preds = %262, %260
  %271 = phi i32 [ %168, %260 ], [ %258, %262 ]
  %272 = phi ptr [ %167, %260 ], [ %269, %262 ]
  %273 = icmp ult i32 %256, 65535
  %274 = zext i1 %273 to i32
  br label %275

275:                                              ; preds = %270, %157
  %276 = phi i32 [ %257, %270 ], [ %159, %157 ]
  %277 = phi i32 [ %271, %270 ], [ %168, %157 ]
  %278 = phi i32 [ %274, %270 ], [ 0, %157 ]
  %279 = phi i32 [ 0, %270 ], [ %175, %157 ]
  %280 = phi ptr [ %272, %270 ], [ %167, %157 ]
  %281 = icmp ult i32 %277, %3
  br i1 %281, label %36, label %282, !llvm.loop !153

282:                                              ; preds = %275, %255, %36, %18
  %283 = phi i32 [ %21, %18 ], [ %257, %255 ], [ %41, %36 ], [ %276, %275 ]
  %284 = phi i32 [ 0, %18 ], [ -50, %255 ], [ -50, %36 ], [ 0, %275 ]
  %285 = sub i32 %283, %21
  store i32 %285, ptr %5, align 4, !tbaa !17
  tail call void @BitBufferAdvance(ptr noundef nonnull %1, i32 noundef %285) #32
  %286 = load ptr, ptr %1, align 8, !tbaa !19
  %287 = getelementptr inbounds %struct.BitBuffer, ptr %1, i64 0, i32 1
  %288 = load ptr, ptr %287, align 8, !tbaa !22
  %289 = icmp ugt ptr %286, %288
  %290 = select i1 %289, i32 -50, i32 %284
  br label %291

291:                                              ; preds = %282, %6
  %292 = phi i32 [ %290, %282 ], [ -50, %6 ]
  ret i32 %292
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @dyn_comp(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr nocapture noundef writeonly %5) #16 {
  %7 = getelementptr inbounds %struct.AGParamRec, ptr %0, i64 0, i32 7
  %8 = load i32, ptr %7, align 4, !tbaa !146
  %9 = getelementptr inbounds %struct.AGParamRec, ptr %0, i64 0, i32 6
  %10 = load i32, ptr %9, align 4, !tbaa !145
  %11 = sub i32 %10, %8
  store i32 0, ptr %5, align 4, !tbaa !17
  %12 = add i32 %4, -1
  %13 = icmp ult i32 %12, 32
  br i1 %13, label %14, label %269

14:                                               ; preds = %6
  %15 = load ptr, ptr %2, align 8, !tbaa !19
  %16 = getelementptr inbounds %struct.BitBuffer, ptr %2, i64 0, i32 2
  %17 = load i32, ptr %16, align 8, !tbaa !23
  %18 = getelementptr inbounds %struct.AGParamRec, ptr %0, i64 0, i32 1
  %19 = load i32, ptr %18, align 4, !tbaa !148
  store i32 %19, ptr %0, align 4, !tbaa !149
  %20 = getelementptr inbounds %struct.AGParamRec, ptr %0, i64 0, i32 2
  %21 = load i32, ptr %20, align 4, !tbaa !150
  %22 = getelementptr inbounds %struct.AGParamRec, ptr %0, i64 0, i32 3
  %23 = load i32, ptr %22, align 4, !tbaa !151
  %24 = getelementptr inbounds %struct.AGParamRec, ptr %0, i64 0, i32 4
  %25 = load i32, ptr %24, align 4, !tbaa !142
  %26 = icmp eq i32 %3, 0
  br i1 %26, label %266, label %27

27:                                               ; preds = %14
  %28 = sub nuw nsw i32 32, %4
  %29 = lshr i32 -1, %28
  %30 = sext i32 %11 to i64
  br label %31

31:                                               ; preds = %258, %27
  %32 = phi ptr [ %1, %27 ], [ %264, %258 ]
  %33 = phi i32 [ %17, %27 ], [ %263, %258 ]
  %34 = phi i32 [ 0, %27 ], [ %262, %258 ]
  %35 = phi i32 [ 0, %27 ], [ %261, %258 ]
  %36 = phi i32 [ %19, %27 ], [ %260, %258 ]
  %37 = phi i32 [ 0, %27 ], [ %259, %258 ]
  %38 = lshr i32 %36, 9
  %39 = add nuw nsw i32 %38, 3
  %40 = zext i32 %39 to i64
  br label %41

41:                                               ; preds = %46, %31
  %42 = phi i64 [ 2147483648, %31 ], [ %47, %46 ]
  %43 = phi i64 [ 0, %31 ], [ %48, %46 ]
  %44 = and i64 %42, %40
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %41
  %47 = lshr i64 %42, 1
  %48 = add nuw nsw i64 %43, 1
  %49 = icmp eq i64 %48, 32
  br i1 %49, label %50, label %41, !llvm.loop !154

50:                                               ; preds = %46, %41
  %51 = phi i64 [ %43, %41 ], [ 32, %46 ]
  %52 = trunc i64 %51 to i32
  %53 = sub nsw i32 31, %52
  %54 = tail call i32 @llvm.umin.i32(i32 %53, i32 %23)
  %55 = shl nsw i32 -1, %54
  %56 = xor i32 %55, -1
  %57 = getelementptr inbounds i32, ptr %32, i64 1
  %58 = load i32, ptr %32, align 4, !tbaa !17
  %59 = add nsw i32 %34, 1
  %60 = tail call i32 @llvm.abs.i32(i32 %58, i1 true)
  %61 = shl nuw i32 %60, 1
  %62 = ashr i32 %58, 31
  %63 = add i32 %61, %62
  %64 = add i32 %63, %37
  %65 = udiv i32 %64, %56
  %66 = icmp ult i32 %65, 9
  br i1 %66, label %67, label %75

67:                                               ; preds = %50
  %68 = mul i32 %65, %56
  %69 = icmp eq i32 %68, %64
  %70 = sext i1 %69 to i32
  %71 = add nuw nsw i32 %65, 1
  %72 = add i32 %71, %54
  %73 = add i32 %72, %70
  %74 = icmp ugt i32 %73, 25
  br i1 %74, label %75, label %118

75:                                               ; preds = %67, %50
  %76 = lshr i32 %33, 3
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds i8, ptr %15, i64 %77
  %79 = load i32, ptr %78, align 4, !tbaa !17
  %80 = tail call i32 @Swap32NtoB(i32 noundef %79) #32
  %81 = and i32 %33, 7
  %82 = sub nuw nsw i32 23, %81
  %83 = shl nuw i32 511, %82
  %84 = or i32 %80, %83
  %85 = tail call i32 @Swap32BtoN(i32 noundef %84) #32
  store i32 %85, ptr %78, align 4, !tbaa !17
  %86 = add i32 %33, 9
  %87 = lshr i32 %86, 3
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds i8, ptr %15, i64 %88
  %90 = and i32 %86, 7
  %91 = add i32 %90, %4
  %92 = sub i32 32, %91
  %93 = load i32, ptr %89, align 4, !tbaa !17
  %94 = tail call i32 @Swap32NtoB(i32 noundef %93) #32
  %95 = icmp slt i32 %92, 0
  br i1 %95, label %96, label %107

96:                                               ; preds = %75
  %97 = add i32 %91, -32
  %98 = lshr i32 %64, %97
  %99 = lshr i32 -1, %97
  %100 = xor i32 %99, -1
  %101 = and i32 %94, %100
  %102 = or i32 %101, %98
  %103 = getelementptr inbounds i8, ptr %89, i64 4
  %104 = sub i32 40, %91
  %105 = shl i32 %64, %104
  %106 = trunc i32 %105 to i8
  store i8 %106, ptr %103, align 1, !tbaa !16
  br label %114

107:                                              ; preds = %75
  %108 = shl i32 %29, %92
  %109 = and i32 %64, %29
  %110 = shl i32 %109, %92
  %111 = xor i32 %108, -1
  %112 = and i32 %94, %111
  %113 = or i32 %112, %110
  br label %114

114:                                              ; preds = %107, %96
  %115 = phi i32 [ %102, %96 ], [ %113, %107 ]
  %116 = tail call i32 @Swap32BtoN(i32 noundef %115) #32
  store i32 %116, ptr %89, align 4, !tbaa !17
  %117 = add i32 %86, %4
  br label %145

118:                                              ; preds = %67
  %119 = add i32 %64, 1
  %120 = sub i32 %119, %68
  %121 = add i32 %120, %70
  %122 = shl nsw i32 -1, %65
  %123 = xor i32 %122, -1
  %124 = sub nsw i32 %73, %65
  %125 = shl i32 %123, %124
  %126 = add i32 %121, %125
  %127 = lshr i32 %33, 3
  %128 = zext i32 %127 to i64
  %129 = getelementptr inbounds i8, ptr %15, i64 %128
  %130 = load i32, ptr %129, align 4, !tbaa !17
  %131 = tail call i32 @Swap32NtoB(i32 noundef %130) #32
  %132 = and i32 %33, 7
  %133 = add nuw nsw i32 %132, %73
  %134 = sub nuw nsw i32 32, %133
  %135 = sub nuw nsw i32 32, %73
  %136 = lshr i32 -1, %135
  %137 = shl i32 %136, %134
  %138 = and i32 %126, %136
  %139 = shl i32 %138, %134
  %140 = xor i32 %137, -1
  %141 = and i32 %131, %140
  %142 = or i32 %141, %139
  %143 = tail call i32 @Swap32BtoN(i32 noundef %142) #32
  store i32 %143, ptr %129, align 4, !tbaa !17
  %144 = add i32 %73, %33
  br label %145

145:                                              ; preds = %118, %114
  %146 = phi i32 [ %117, %114 ], [ %144, %118 ]
  %147 = add i32 %35, 1
  %148 = mul i32 %63, %21
  %149 = mul i32 %36, %21
  %150 = lshr i32 %149, 9
  %151 = sub i32 %36, %150
  %152 = add i32 %151, %148
  %153 = icmp ugt i32 %64, 65535
  %154 = select i1 %153, i32 65535, i32 %152
  %155 = icmp ugt i32 %147, %3
  br i1 %155, label %269, label %156

156:                                              ; preds = %145
  %157 = icmp slt i32 %59, %8
  %158 = select i1 %157, i64 0, i64 %30
  %159 = getelementptr inbounds i32, ptr %57, i64 %158
  %160 = select i1 %157, i32 %59, i32 0
  %161 = and i32 %154, 1073741696
  %162 = icmp eq i32 %161, 0
  %163 = icmp ult i32 %147, %3
  %164 = and i1 %163, %162
  br i1 %164, label %165, label %258

165:                                              ; preds = %156
  %166 = xor i32 %35, -1
  %167 = add i32 %166, %3
  %168 = add i32 %35, 65536
  br label %169

169:                                              ; preds = %178, %165
  %170 = phi i32 [ %180, %178 ], [ 0, %165 ]
  %171 = phi i32 [ %181, %178 ], [ %147, %165 ]
  %172 = phi i32 [ %184, %178 ], [ %160, %165 ]
  %173 = phi ptr [ %186, %178 ], [ %159, %165 ]
  %174 = icmp eq i32 %170, %167
  br i1 %174, label %188, label %175

175:                                              ; preds = %169
  %176 = load i32, ptr %173, align 4, !tbaa !17
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %178, label %188

178:                                              ; preds = %175
  %179 = getelementptr inbounds i32, ptr %173, i64 1
  %180 = add nuw nsw i32 %170, 1
  %181 = add nuw i32 %171, 1
  %182 = add nsw i32 %172, 1
  %183 = icmp slt i32 %182, %8
  %184 = select i1 %183, i32 %182, i32 0
  %185 = select i1 %183, i64 0, i64 %30
  %186 = getelementptr inbounds i32, ptr %179, i64 %185
  %187 = icmp eq i32 %180, 65535
  br i1 %187, label %188, label %169, !llvm.loop !155

188:                                              ; preds = %178, %175, %169
  %189 = phi i32 [ %170, %175 ], [ %167, %169 ], [ 65535, %178 ]
  %190 = phi i32 [ -1, %175 ], [ -1, %169 ], [ 0, %178 ]
  %191 = phi i32 [ %171, %175 ], [ %3, %169 ], [ %168, %178 ]
  %192 = phi i32 [ %172, %175 ], [ %172, %169 ], [ %184, %178 ]
  %193 = phi ptr [ %173, %175 ], [ %173, %169 ], [ %186, %178 ]
  %194 = zext i32 %154 to i64
  br label %195

195:                                              ; preds = %200, %188
  %196 = phi i64 [ 2147483648, %188 ], [ %201, %200 ]
  %197 = phi i64 [ 0, %188 ], [ %202, %200 ]
  %198 = and i64 %196, %194
  %199 = icmp eq i64 %198, 0
  br i1 %199, label %200, label %204

200:                                              ; preds = %195
  %201 = lshr i64 %196, 1
  %202 = add nuw nsw i64 %197, 1
  %203 = icmp eq i64 %202, 32
  br i1 %203, label %204, label %195, !llvm.loop !154

204:                                              ; preds = %200, %195
  %205 = phi i64 [ %197, %195 ], [ 32, %200 ]
  %206 = trunc i64 %205 to i32
  %207 = add i32 %154, 16
  %208 = lshr i32 %207, 6
  %209 = add nsw i32 %208, -24
  %210 = add i32 %209, %206
  %211 = shl nsw i32 -1, %210
  %212 = xor i32 %211, -1
  %213 = and i32 %25, %212
  %214 = sdiv i32 %189, %213
  %215 = srem i32 %189, %213
  %216 = icmp ugt i32 %214, 8
  br i1 %216, label %217, label %219

217:                                              ; preds = %204
  %218 = add nsw i32 %189, 33488896
  br label %237

219:                                              ; preds = %204
  %220 = icmp eq i32 %215, 0
  %221 = sext i1 %220 to i32
  %222 = add nuw nsw i32 %214, 1
  %223 = add i32 %222, %210
  %224 = add i32 %223, %221
  %225 = shl nsw i32 -1, %214
  %226 = xor i32 %225, -1
  %227 = sub i32 %224, %214
  %228 = shl i32 %226, %227
  %229 = xor i1 %220, true
  %230 = zext i1 %229 to i32
  %231 = add i32 %215, %230
  %232 = add i32 %231, %228
  %233 = icmp ugt i32 %224, 25
  %234 = add nsw i32 %189, 33488896
  %235 = tail call i32 @llvm.umin.i32(i32 %224, i32 25)
  %236 = select i1 %233, i32 %234, i32 %232
  br label %237

237:                                              ; preds = %219, %217
  %238 = phi i32 [ 25, %217 ], [ %235, %219 ]
  %239 = phi i32 [ %218, %217 ], [ %236, %219 ]
  %240 = lshr i32 %146, 3
  %241 = zext i32 %240 to i64
  %242 = getelementptr inbounds i8, ptr %15, i64 %241
  %243 = load i32, ptr %242, align 4, !tbaa !17
  %244 = tail call i32 @Swap32NtoB(i32 noundef %243) #32
  %245 = and i32 %146, 7
  %246 = add nuw nsw i32 %245, %238
  %247 = sub nuw nsw i32 32, %246
  %248 = sub nuw nsw i32 32, %238
  %249 = lshr i32 -1, %248
  %250 = shl i32 %249, %247
  %251 = and i32 %249, %239
  %252 = shl i32 %251, %247
  %253 = xor i32 %250, -1
  %254 = and i32 %244, %253
  %255 = or i32 %254, %252
  %256 = tail call i32 @Swap32BtoN(i32 noundef %255) #32
  store i32 %256, ptr %242, align 4, !tbaa !17
  %257 = add i32 %238, %146
  br label %258

258:                                              ; preds = %237, %156
  %259 = phi i32 [ %190, %237 ], [ 0, %156 ]
  %260 = phi i32 [ 0, %237 ], [ %154, %156 ]
  %261 = phi i32 [ %191, %237 ], [ %147, %156 ]
  %262 = phi i32 [ %192, %237 ], [ %160, %156 ]
  %263 = phi i32 [ %257, %237 ], [ %146, %156 ]
  %264 = phi ptr [ %193, %237 ], [ %159, %156 ]
  %265 = icmp ult i32 %261, %3
  br i1 %265, label %31, label %266, !llvm.loop !156

266:                                              ; preds = %258, %14
  %267 = phi i32 [ %17, %14 ], [ %263, %258 ]
  %268 = sub i32 %267, %17
  store i32 %268, ptr %5, align 4, !tbaa !17
  tail call void @BitBufferAdvance(ptr noundef nonnull %2, i32 noundef %268) #32
  br label %269

269:                                              ; preds = %266, %145, %6
  %270 = phi i32 [ -50, %6 ], [ 0, %266 ], [ -50, %145 ]
  ret i32 %270
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #1

; Function Attrs: nofree nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal void @unpc_block(ptr noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) #20 {
  %8 = sub i32 32, %5
  %9 = add i32 %6, -1
  %10 = shl nuw i32 1, %9
  %11 = load i32, ptr %0, align 4, !tbaa !17
  store i32 %11, ptr %1, align 4, !tbaa !17
  switch i32 %4, label %16 [
    i32 0, label %21
    i32 31, label %12
  ]

12:                                               ; preds = %7
  %13 = icmp sgt i32 %2, 1
  br i1 %13, label %14, label %620

14:                                               ; preds = %12
  %15 = zext i32 %2 to i64
  br label %31

16:                                               ; preds = %7
  %17 = icmp slt i32 %4, 1
  %18 = add i32 %4, 1
  br i1 %17, label %53, label %19

19:                                               ; preds = %16
  %20 = zext i32 %18 to i64
  br label %42

21:                                               ; preds = %7
  %22 = icmp slt i32 %2, 2
  %23 = icmp eq ptr %0, %1
  %24 = or i1 %23, %22
  br i1 %24, label %620, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds i32, ptr %1, i64 1
  %27 = getelementptr inbounds i32, ptr %0, i64 1
  %28 = add nsw i32 %2, -1
  %29 = zext i32 %28 to i64
  %30 = shl nuw nsw i64 %29, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %26, ptr nonnull align 4 %27, i64 %30, i1 false)
  br label %620

31:                                               ; preds = %31, %14
  %32 = phi i64 [ 1, %14 ], [ %40, %31 ]
  %33 = phi i32 [ %11, %14 ], [ %38, %31 ]
  %34 = getelementptr inbounds i32, ptr %0, i64 %32
  %35 = load i32, ptr %34, align 4, !tbaa !17
  %36 = add nsw i32 %35, %33
  %37 = shl i32 %36, %8
  %38 = ashr i32 %37, %8
  %39 = getelementptr inbounds i32, ptr %1, i64 %32
  store i32 %38, ptr %39, align 4, !tbaa !17
  %40 = add nuw nsw i64 %32, 1
  %41 = icmp eq i64 %40, %15
  br i1 %41, label %620, label %31, !llvm.loop !157

42:                                               ; preds = %42, %19
  %43 = phi i32 [ %11, %19 ], [ %49, %42 ]
  %44 = phi i64 [ 1, %19 ], [ %51, %42 ]
  %45 = getelementptr inbounds i32, ptr %0, i64 %44
  %46 = load i32, ptr %45, align 4, !tbaa !17
  %47 = add nsw i32 %43, %46
  %48 = shl i32 %47, %8
  %49 = ashr i32 %48, %8
  %50 = getelementptr inbounds i32, ptr %1, i64 %44
  store i32 %49, ptr %50, align 4, !tbaa !17
  %51 = add nuw nsw i64 %44, 1
  %52 = icmp eq i64 %51, %20
  br i1 %52, label %53, label %42, !llvm.loop !158

53:                                               ; preds = %42, %16
  switch i32 %4, label %54 [
    i32 4, label %61
    i32 8, label %221
  ]

54:                                               ; preds = %53
  %55 = icmp slt i32 %18, %2
  br i1 %55, label %56, label %620

56:                                               ; preds = %54
  %57 = icmp sgt i32 %4, 0
  %58 = sext i32 %4 to i64
  %59 = sext i32 %18 to i64
  %60 = zext i32 %4 to i64
  br label %525

61:                                               ; preds = %53
  %62 = load i16, ptr %3, align 2, !tbaa !12
  %63 = getelementptr inbounds i16, ptr %3, i64 1
  %64 = load i16, ptr %63, align 2, !tbaa !12
  %65 = getelementptr inbounds i16, ptr %3, i64 2
  %66 = load i16, ptr %65, align 2, !tbaa !12
  %67 = getelementptr inbounds i16, ptr %3, i64 3
  %68 = load i16, ptr %67, align 2, !tbaa !12
  %69 = icmp sgt i32 %2, 5
  br i1 %69, label %70, label %216

70:                                               ; preds = %61
  %71 = sext i32 %18 to i64
  %72 = zext i32 %2 to i64
  %73 = getelementptr i8, ptr %1, i64 16
  %74 = load i32, ptr %73, align 4
  br label %75

75:                                               ; preds = %209, %70
  %76 = phi i32 [ %74, %70 ], [ %118, %209 ]
  %77 = phi i64 [ 5, %70 ], [ %214, %209 ]
  %78 = phi i16 [ %68, %70 ], [ %213, %209 ]
  %79 = phi i16 [ %66, %70 ], [ %212, %209 ]
  %80 = phi i16 [ %64, %70 ], [ %211, %209 ]
  %81 = phi i16 [ %62, %70 ], [ %210, %209 ]
  %82 = sub nsw i64 %77, %71
  %83 = getelementptr inbounds i32, ptr %1, i64 %82
  %84 = load i32, ptr %83, align 4, !tbaa !17
  %85 = getelementptr inbounds i32, ptr %1, i64 %77
  %86 = sub nsw i32 %84, %76
  %87 = getelementptr inbounds i32, ptr %85, i64 -2
  %88 = load i32, ptr %87, align 4, !tbaa !17
  %89 = sub nsw i32 %84, %88
  %90 = getelementptr inbounds i32, ptr %85, i64 -3
  %91 = load i32, ptr %90, align 4, !tbaa !17
  %92 = sub nsw i32 %84, %91
  %93 = getelementptr inbounds i32, ptr %85, i64 -4
  %94 = load i32, ptr %93, align 4, !tbaa !17
  %95 = sub nsw i32 %84, %94
  %96 = sext i16 %81 to i32
  %97 = sext i16 %80 to i32
  %98 = sext i16 %79 to i32
  %99 = sext i16 %78 to i32
  %100 = mul i32 %86, %96
  %101 = mul i32 %89, %97
  %102 = mul i32 %92, %98
  %103 = mul i32 %95, %99
  %104 = add i32 %101, %100
  %105 = add i32 %104, %102
  %106 = add i32 %105, %103
  %107 = sub i32 %10, %106
  %108 = ashr i32 %107, %6
  %109 = getelementptr inbounds i32, ptr %0, i64 %77
  %110 = load i32, ptr %109, align 4, !tbaa !17
  %111 = icmp sgt i32 %110, 0
  %112 = zext i1 %111 to i32
  %113 = ashr i32 %110, 31
  %114 = or i32 %113, %112
  %115 = add i32 %110, %84
  %116 = add i32 %115, %108
  %117 = shl i32 %116, %8
  %118 = ashr i32 %117, %8
  store i32 %118, ptr %85, align 4, !tbaa !17
  %119 = icmp sgt i32 %114, 0
  br i1 %119, label %120, label %162

120:                                              ; preds = %75
  %121 = icmp sgt i32 %95, 0
  %122 = zext i1 %121 to i32
  %123 = ashr i32 %95, 31
  %124 = or i32 %123, %122
  %125 = trunc i32 %124 to i16
  %126 = sub i16 %78, %125
  %127 = mul nsw i32 %124, %95
  %128 = ashr i32 %127, %6
  %129 = sub nsw i32 %110, %128
  %130 = icmp slt i32 %129, 1
  br i1 %130, label %209, label %131

131:                                              ; preds = %120
  %132 = icmp sgt i32 %92, 0
  %133 = zext i1 %132 to i32
  %134 = ashr i32 %92, 31
  %135 = or i32 %134, %133
  %136 = trunc i32 %135 to i16
  %137 = sub i16 %79, %136
  %138 = mul nsw i32 %135, %92
  %139 = ashr i32 %138, %6
  %140 = shl nsw i32 %139, 1
  %141 = sub nsw i32 %129, %140
  %142 = icmp slt i32 %141, 1
  br i1 %142, label %209, label %143

143:                                              ; preds = %131
  %144 = icmp sgt i32 %89, 0
  %145 = zext i1 %144 to i32
  %146 = ashr i32 %89, 31
  %147 = or i32 %146, %145
  %148 = trunc i32 %147 to i16
  %149 = sub i16 %80, %148
  %150 = mul nsw i32 %147, %89
  %151 = ashr i32 %150, %6
  %152 = mul i32 %151, -3
  %153 = add i32 %141, %152
  %154 = icmp slt i32 %153, 1
  br i1 %154, label %209, label %155

155:                                              ; preds = %143
  %156 = icmp sgt i32 %86, 0
  %157 = zext i1 %156 to i32
  %158 = ashr i32 %86, 31
  %159 = or i32 %158, %157
  %160 = trunc i32 %159 to i16
  %161 = sub i16 %81, %160
  br label %209

162:                                              ; preds = %75
  %163 = icmp slt i32 %114, 0
  br i1 %163, label %164, label %209

164:                                              ; preds = %162
  %165 = icmp sgt i32 %95, 0
  %166 = zext i1 %165 to i32
  %167 = ashr i32 %95, 31
  %168 = or i32 %167, %166
  %169 = trunc i32 %168 to i16
  %170 = add i16 %78, %169
  %171 = mul i32 %95, %168
  %172 = sub i32 0, %171
  %173 = ashr i32 %172, %6
  %174 = sub nsw i32 %110, %173
  %175 = icmp sgt i32 %174, -1
  br i1 %175, label %209, label %176

176:                                              ; preds = %164
  %177 = icmp sgt i32 %92, 0
  %178 = zext i1 %177 to i32
  %179 = ashr i32 %92, 31
  %180 = or i32 %179, %178
  %181 = trunc i32 %180 to i16
  %182 = add i16 %79, %181
  %183 = mul i32 %92, %180
  %184 = sub i32 0, %183
  %185 = ashr i32 %184, %6
  %186 = shl nsw i32 %185, 1
  %187 = sub nsw i32 %174, %186
  %188 = icmp sgt i32 %187, -1
  br i1 %188, label %209, label %189

189:                                              ; preds = %176
  %190 = icmp sgt i32 %89, 0
  %191 = zext i1 %190 to i32
  %192 = ashr i32 %89, 31
  %193 = or i32 %192, %191
  %194 = trunc i32 %193 to i16
  %195 = add i16 %80, %194
  %196 = mul i32 %89, %193
  %197 = sub i32 0, %196
  %198 = ashr i32 %197, %6
  %199 = mul i32 %198, -3
  %200 = add i32 %187, %199
  %201 = icmp sgt i32 %200, -1
  br i1 %201, label %209, label %202

202:                                              ; preds = %189
  %203 = icmp sgt i32 %86, 0
  %204 = zext i1 %203 to i32
  %205 = ashr i32 %86, 31
  %206 = or i32 %205, %204
  %207 = trunc i32 %206 to i16
  %208 = add i16 %81, %207
  br label %209

209:                                              ; preds = %202, %189, %176, %164, %162, %155, %143, %131, %120
  %210 = phi i16 [ %81, %120 ], [ %81, %131 ], [ %81, %143 ], [ %161, %155 ], [ %81, %164 ], [ %81, %176 ], [ %81, %189 ], [ %208, %202 ], [ %81, %162 ]
  %211 = phi i16 [ %80, %120 ], [ %80, %131 ], [ %149, %143 ], [ %149, %155 ], [ %80, %164 ], [ %80, %176 ], [ %195, %189 ], [ %195, %202 ], [ %80, %162 ]
  %212 = phi i16 [ %79, %120 ], [ %137, %131 ], [ %137, %143 ], [ %137, %155 ], [ %79, %164 ], [ %182, %176 ], [ %182, %189 ], [ %182, %202 ], [ %79, %162 ]
  %213 = phi i16 [ %126, %120 ], [ %126, %131 ], [ %126, %143 ], [ %126, %155 ], [ %170, %164 ], [ %170, %176 ], [ %170, %189 ], [ %170, %202 ], [ %78, %162 ]
  %214 = add nuw nsw i64 %77, 1
  %215 = icmp eq i64 %214, %72
  br i1 %215, label %216, label %75, !llvm.loop !159

216:                                              ; preds = %209, %61
  %217 = phi i16 [ %62, %61 ], [ %210, %209 ]
  %218 = phi i16 [ %64, %61 ], [ %211, %209 ]
  %219 = phi i16 [ %66, %61 ], [ %212, %209 ]
  %220 = phi i16 [ %68, %61 ], [ %213, %209 ]
  store i16 %217, ptr %3, align 2, !tbaa !12
  store i16 %218, ptr %63, align 2, !tbaa !12
  store i16 %219, ptr %65, align 2, !tbaa !12
  store i16 %220, ptr %67, align 2, !tbaa !12
  br label %620

221:                                              ; preds = %53
  %222 = load i16, ptr %3, align 2, !tbaa !12
  %223 = getelementptr inbounds i16, ptr %3, i64 1
  %224 = load i16, ptr %223, align 2, !tbaa !12
  %225 = getelementptr inbounds i16, ptr %3, i64 2
  %226 = load i16, ptr %225, align 2, !tbaa !12
  %227 = getelementptr inbounds i16, ptr %3, i64 3
  %228 = load i16, ptr %227, align 2, !tbaa !12
  %229 = getelementptr inbounds i16, ptr %3, i64 4
  %230 = load i16, ptr %229, align 2, !tbaa !12
  %231 = getelementptr inbounds i16, ptr %3, i64 5
  %232 = load i16, ptr %231, align 2, !tbaa !12
  %233 = getelementptr inbounds i16, ptr %3, i64 6
  %234 = load i16, ptr %233, align 2, !tbaa !12
  %235 = getelementptr inbounds i16, ptr %3, i64 7
  %236 = load i16, ptr %235, align 2, !tbaa !12
  %237 = icmp sgt i32 %2, 9
  br i1 %237, label %238, label %516

238:                                              ; preds = %221
  %239 = sext i32 %18 to i64
  %240 = zext i32 %2 to i64
  %241 = getelementptr i8, ptr %1, i64 32
  %242 = load i32, ptr %241, align 4
  br label %243

243:                                              ; preds = %505, %238
  %244 = phi i32 [ %242, %238 ], [ %314, %505 ]
  %245 = phi i64 [ 9, %238 ], [ %514, %505 ]
  %246 = phi i16 [ %222, %238 ], [ %513, %505 ]
  %247 = phi i16 [ %224, %238 ], [ %512, %505 ]
  %248 = phi i16 [ %226, %238 ], [ %511, %505 ]
  %249 = phi i16 [ %228, %238 ], [ %510, %505 ]
  %250 = phi i16 [ %236, %238 ], [ %509, %505 ]
  %251 = phi i16 [ %234, %238 ], [ %508, %505 ]
  %252 = phi i16 [ %232, %238 ], [ %507, %505 ]
  %253 = phi i16 [ %230, %238 ], [ %506, %505 ]
  %254 = sub nsw i64 %245, %239
  %255 = getelementptr inbounds i32, ptr %1, i64 %254
  %256 = load i32, ptr %255, align 4, !tbaa !17
  %257 = getelementptr inbounds i32, ptr %1, i64 %245
  %258 = getelementptr inbounds i32, ptr %257, i64 -2
  %259 = sub nsw i32 %256, %244
  %260 = getelementptr inbounds i32, ptr %257, i64 -3
  %261 = load i32, ptr %258, align 4, !tbaa !17
  %262 = sub nsw i32 %256, %261
  %263 = getelementptr inbounds i32, ptr %257, i64 -4
  %264 = load i32, ptr %260, align 4, !tbaa !17
  %265 = sub nsw i32 %256, %264
  %266 = getelementptr inbounds i32, ptr %257, i64 -5
  %267 = load i32, ptr %263, align 4, !tbaa !17
  %268 = sub nsw i32 %256, %267
  %269 = getelementptr inbounds i32, ptr %257, i64 -6
  %270 = load i32, ptr %266, align 4, !tbaa !17
  %271 = sub nsw i32 %256, %270
  %272 = getelementptr inbounds i32, ptr %257, i64 -7
  %273 = load i32, ptr %269, align 4, !tbaa !17
  %274 = sub nsw i32 %256, %273
  %275 = getelementptr inbounds i32, ptr %257, i64 -8
  %276 = load i32, ptr %272, align 4, !tbaa !17
  %277 = sub nsw i32 %256, %276
  %278 = load i32, ptr %275, align 4, !tbaa !17
  %279 = sub nsw i32 %256, %278
  %280 = sext i16 %246 to i32
  %281 = sext i16 %247 to i32
  %282 = sext i16 %248 to i32
  %283 = sext i16 %249 to i32
  %284 = sext i16 %253 to i32
  %285 = sext i16 %252 to i32
  %286 = sext i16 %251 to i32
  %287 = sext i16 %250 to i32
  %288 = mul i32 %259, %280
  %289 = mul i32 %262, %281
  %290 = mul i32 %265, %282
  %291 = mul i32 %268, %283
  %292 = mul i32 %271, %284
  %293 = mul i32 %274, %285
  %294 = mul i32 %277, %286
  %295 = mul i32 %279, %287
  %296 = add i32 %289, %288
  %297 = add i32 %296, %290
  %298 = add i32 %297, %291
  %299 = add i32 %298, %292
  %300 = add i32 %299, %293
  %301 = add i32 %300, %294
  %302 = add i32 %301, %295
  %303 = sub i32 %10, %302
  %304 = ashr i32 %303, %6
  %305 = getelementptr inbounds i32, ptr %0, i64 %245
  %306 = load i32, ptr %305, align 4, !tbaa !17
  %307 = icmp sgt i32 %306, 0
  %308 = zext i1 %307 to i32
  %309 = ashr i32 %306, 31
  %310 = or i32 %309, %308
  %311 = add i32 %306, %256
  %312 = add i32 %311, %304
  %313 = shl i32 %312, %8
  %314 = ashr i32 %313, %8
  store i32 %314, ptr %257, align 4, !tbaa !17
  %315 = icmp sgt i32 %310, 0
  br i1 %315, label %316, label %406

316:                                              ; preds = %243
  %317 = icmp sgt i32 %279, 0
  %318 = zext i1 %317 to i32
  %319 = ashr i32 %279, 31
  %320 = or i32 %319, %318
  %321 = trunc i32 %320 to i16
  %322 = sub i16 %250, %321
  %323 = mul nsw i32 %320, %279
  %324 = ashr i32 %323, %6
  %325 = sub nsw i32 %306, %324
  %326 = icmp slt i32 %325, 1
  br i1 %326, label %505, label %327

327:                                              ; preds = %316
  %328 = icmp sgt i32 %277, 0
  %329 = zext i1 %328 to i32
  %330 = ashr i32 %277, 31
  %331 = or i32 %330, %329
  %332 = trunc i32 %331 to i16
  %333 = sub i16 %251, %332
  %334 = mul nsw i32 %331, %277
  %335 = ashr i32 %334, %6
  %336 = shl nsw i32 %335, 1
  %337 = sub nsw i32 %325, %336
  %338 = icmp slt i32 %337, 1
  br i1 %338, label %505, label %339

339:                                              ; preds = %327
  %340 = icmp sgt i32 %274, 0
  %341 = zext i1 %340 to i32
  %342 = ashr i32 %274, 31
  %343 = or i32 %342, %341
  %344 = trunc i32 %343 to i16
  %345 = sub i16 %252, %344
  %346 = mul nsw i32 %343, %274
  %347 = ashr i32 %346, %6
  %348 = mul i32 %347, -3
  %349 = add i32 %337, %348
  %350 = icmp slt i32 %349, 1
  br i1 %350, label %505, label %351

351:                                              ; preds = %339
  %352 = icmp sgt i32 %271, 0
  %353 = zext i1 %352 to i32
  %354 = ashr i32 %271, 31
  %355 = or i32 %354, %353
  %356 = trunc i32 %355 to i16
  %357 = sub i16 %253, %356
  %358 = mul nsw i32 %355, %271
  %359 = ashr i32 %358, %6
  %360 = shl nsw i32 %359, 2
  %361 = sub nsw i32 %349, %360
  %362 = icmp slt i32 %361, 1
  br i1 %362, label %505, label %363

363:                                              ; preds = %351
  %364 = icmp sgt i32 %268, 0
  %365 = zext i1 %364 to i32
  %366 = ashr i32 %268, 31
  %367 = or i32 %366, %365
  %368 = trunc i32 %367 to i16
  %369 = sub i16 %249, %368
  %370 = mul nsw i32 %367, %268
  %371 = ashr i32 %370, %6
  %372 = mul i32 %371, -5
  %373 = add i32 %361, %372
  %374 = icmp slt i32 %373, 1
  br i1 %374, label %505, label %375

375:                                              ; preds = %363
  %376 = icmp sgt i32 %265, 0
  %377 = zext i1 %376 to i32
  %378 = ashr i32 %265, 31
  %379 = or i32 %378, %377
  %380 = trunc i32 %379 to i16
  %381 = sub i16 %248, %380
  %382 = mul nsw i32 %379, %265
  %383 = ashr i32 %382, %6
  %384 = mul i32 %383, -6
  %385 = add i32 %373, %384
  %386 = icmp slt i32 %385, 1
  br i1 %386, label %505, label %387

387:                                              ; preds = %375
  %388 = icmp sgt i32 %262, 0
  %389 = zext i1 %388 to i32
  %390 = ashr i32 %262, 31
  %391 = or i32 %390, %389
  %392 = trunc i32 %391 to i16
  %393 = sub i16 %247, %392
  %394 = mul nsw i32 %391, %262
  %395 = ashr i32 %394, %6
  %396 = mul i32 %395, -7
  %397 = add i32 %385, %396
  %398 = icmp slt i32 %397, 1
  br i1 %398, label %505, label %399

399:                                              ; preds = %387
  %400 = icmp sgt i32 %259, 0
  %401 = zext i1 %400 to i32
  %402 = ashr i32 %259, 31
  %403 = or i32 %402, %401
  %404 = trunc i32 %403 to i16
  %405 = sub i16 %246, %404
  br label %505

406:                                              ; preds = %243
  %407 = icmp slt i32 %310, 0
  br i1 %407, label %408, label %505

408:                                              ; preds = %406
  %409 = icmp sgt i32 %279, 0
  %410 = zext i1 %409 to i32
  %411 = ashr i32 %279, 31
  %412 = or i32 %411, %410
  %413 = trunc i32 %412 to i16
  %414 = add i16 %250, %413
  %415 = mul i32 %279, %412
  %416 = sub i32 0, %415
  %417 = ashr i32 %416, %6
  %418 = sub nsw i32 %306, %417
  %419 = icmp sgt i32 %418, -1
  br i1 %419, label %505, label %420

420:                                              ; preds = %408
  %421 = icmp sgt i32 %277, 0
  %422 = zext i1 %421 to i32
  %423 = ashr i32 %277, 31
  %424 = or i32 %423, %422
  %425 = trunc i32 %424 to i16
  %426 = add i16 %251, %425
  %427 = mul i32 %277, %424
  %428 = sub i32 0, %427
  %429 = ashr i32 %428, %6
  %430 = shl nsw i32 %429, 1
  %431 = sub nsw i32 %418, %430
  %432 = icmp sgt i32 %431, -1
  br i1 %432, label %505, label %433

433:                                              ; preds = %420
  %434 = icmp sgt i32 %274, 0
  %435 = zext i1 %434 to i32
  %436 = ashr i32 %274, 31
  %437 = or i32 %436, %435
  %438 = trunc i32 %437 to i16
  %439 = add i16 %252, %438
  %440 = mul i32 %274, %437
  %441 = sub i32 0, %440
  %442 = ashr i32 %441, %6
  %443 = mul i32 %442, -3
  %444 = add i32 %431, %443
  %445 = icmp sgt i32 %444, -1
  br i1 %445, label %505, label %446

446:                                              ; preds = %433
  %447 = icmp sgt i32 %271, 0
  %448 = zext i1 %447 to i32
  %449 = ashr i32 %271, 31
  %450 = or i32 %449, %448
  %451 = trunc i32 %450 to i16
  %452 = add i16 %253, %451
  %453 = mul i32 %271, %450
  %454 = sub i32 0, %453
  %455 = ashr i32 %454, %6
  %456 = shl nsw i32 %455, 2
  %457 = sub nsw i32 %444, %456
  %458 = icmp sgt i32 %457, -1
  br i1 %458, label %505, label %459

459:                                              ; preds = %446
  %460 = icmp sgt i32 %268, 0
  %461 = zext i1 %460 to i32
  %462 = ashr i32 %268, 31
  %463 = or i32 %462, %461
  %464 = trunc i32 %463 to i16
  %465 = add i16 %249, %464
  %466 = mul i32 %268, %463
  %467 = sub i32 0, %466
  %468 = ashr i32 %467, %6
  %469 = mul i32 %468, -5
  %470 = add i32 %457, %469
  %471 = icmp sgt i32 %470, -1
  br i1 %471, label %505, label %472

472:                                              ; preds = %459
  %473 = icmp sgt i32 %265, 0
  %474 = zext i1 %473 to i32
  %475 = ashr i32 %265, 31
  %476 = or i32 %475, %474
  %477 = trunc i32 %476 to i16
  %478 = add i16 %248, %477
  %479 = mul i32 %265, %476
  %480 = sub i32 0, %479
  %481 = ashr i32 %480, %6
  %482 = mul i32 %481, -6
  %483 = add i32 %470, %482
  %484 = icmp sgt i32 %483, -1
  br i1 %484, label %505, label %485

485:                                              ; preds = %472
  %486 = icmp sgt i32 %262, 0
  %487 = zext i1 %486 to i32
  %488 = ashr i32 %262, 31
  %489 = or i32 %488, %487
  %490 = trunc i32 %489 to i16
  %491 = add i16 %247, %490
  %492 = mul i32 %262, %489
  %493 = sub i32 0, %492
  %494 = ashr i32 %493, %6
  %495 = mul i32 %494, -7
  %496 = add i32 %483, %495
  %497 = icmp sgt i32 %496, -1
  br i1 %497, label %505, label %498

498:                                              ; preds = %485
  %499 = icmp sgt i32 %259, 0
  %500 = zext i1 %499 to i32
  %501 = ashr i32 %259, 31
  %502 = or i32 %501, %500
  %503 = trunc i32 %502 to i16
  %504 = add i16 %246, %503
  br label %505

505:                                              ; preds = %498, %485, %472, %459, %446, %433, %420, %408, %406, %399, %387, %375, %363, %351, %339, %327, %316
  %506 = phi i16 [ %253, %316 ], [ %253, %327 ], [ %253, %339 ], [ %357, %351 ], [ %357, %363 ], [ %357, %375 ], [ %357, %387 ], [ %357, %399 ], [ %253, %408 ], [ %253, %420 ], [ %253, %433 ], [ %452, %446 ], [ %452, %459 ], [ %452, %472 ], [ %452, %485 ], [ %452, %498 ], [ %253, %406 ]
  %507 = phi i16 [ %252, %316 ], [ %252, %327 ], [ %345, %339 ], [ %345, %351 ], [ %345, %363 ], [ %345, %375 ], [ %345, %387 ], [ %345, %399 ], [ %252, %408 ], [ %252, %420 ], [ %439, %433 ], [ %439, %446 ], [ %439, %459 ], [ %439, %472 ], [ %439, %485 ], [ %439, %498 ], [ %252, %406 ]
  %508 = phi i16 [ %251, %316 ], [ %333, %327 ], [ %333, %339 ], [ %333, %351 ], [ %333, %363 ], [ %333, %375 ], [ %333, %387 ], [ %333, %399 ], [ %251, %408 ], [ %426, %420 ], [ %426, %433 ], [ %426, %446 ], [ %426, %459 ], [ %426, %472 ], [ %426, %485 ], [ %426, %498 ], [ %251, %406 ]
  %509 = phi i16 [ %322, %316 ], [ %322, %327 ], [ %322, %339 ], [ %322, %351 ], [ %322, %363 ], [ %322, %375 ], [ %322, %387 ], [ %322, %399 ], [ %414, %408 ], [ %414, %420 ], [ %414, %433 ], [ %414, %446 ], [ %414, %459 ], [ %414, %472 ], [ %414, %485 ], [ %414, %498 ], [ %250, %406 ]
  %510 = phi i16 [ %249, %316 ], [ %249, %327 ], [ %249, %339 ], [ %249, %351 ], [ %369, %363 ], [ %369, %375 ], [ %369, %387 ], [ %369, %399 ], [ %249, %408 ], [ %249, %420 ], [ %249, %433 ], [ %249, %446 ], [ %465, %459 ], [ %465, %472 ], [ %465, %485 ], [ %465, %498 ], [ %249, %406 ]
  %511 = phi i16 [ %248, %316 ], [ %248, %327 ], [ %248, %339 ], [ %248, %351 ], [ %248, %363 ], [ %381, %375 ], [ %381, %387 ], [ %381, %399 ], [ %248, %408 ], [ %248, %420 ], [ %248, %433 ], [ %248, %446 ], [ %248, %459 ], [ %478, %472 ], [ %478, %485 ], [ %478, %498 ], [ %248, %406 ]
  %512 = phi i16 [ %247, %316 ], [ %247, %327 ], [ %247, %339 ], [ %247, %351 ], [ %247, %363 ], [ %247, %375 ], [ %393, %387 ], [ %393, %399 ], [ %247, %408 ], [ %247, %420 ], [ %247, %433 ], [ %247, %446 ], [ %247, %459 ], [ %247, %472 ], [ %491, %485 ], [ %491, %498 ], [ %247, %406 ]
  %513 = phi i16 [ %246, %316 ], [ %246, %327 ], [ %246, %339 ], [ %246, %351 ], [ %246, %363 ], [ %246, %375 ], [ %246, %387 ], [ %405, %399 ], [ %246, %408 ], [ %246, %420 ], [ %246, %433 ], [ %246, %446 ], [ %246, %459 ], [ %246, %472 ], [ %246, %485 ], [ %504, %498 ], [ %246, %406 ]
  %514 = add nuw nsw i64 %245, 1
  %515 = icmp eq i64 %514, %240
  br i1 %515, label %516, label %243, !llvm.loop !160

516:                                              ; preds = %505, %221
  %517 = phi i16 [ %230, %221 ], [ %506, %505 ]
  %518 = phi i16 [ %232, %221 ], [ %507, %505 ]
  %519 = phi i16 [ %234, %221 ], [ %508, %505 ]
  %520 = phi i16 [ %236, %221 ], [ %509, %505 ]
  %521 = phi i16 [ %228, %221 ], [ %510, %505 ]
  %522 = phi i16 [ %226, %221 ], [ %511, %505 ]
  %523 = phi i16 [ %224, %221 ], [ %512, %505 ]
  %524 = phi i16 [ %222, %221 ], [ %513, %505 ]
  store i16 %524, ptr %3, align 2, !tbaa !12
  store i16 %523, ptr %223, align 2, !tbaa !12
  store i16 %522, ptr %225, align 2, !tbaa !12
  store i16 %521, ptr %227, align 2, !tbaa !12
  store i16 %517, ptr %229, align 2, !tbaa !12
  store i16 %518, ptr %231, align 2, !tbaa !12
  store i16 %519, ptr %233, align 2, !tbaa !12
  store i16 %520, ptr %235, align 2, !tbaa !12
  br label %620

525:                                              ; preds = %616, %56
  %526 = phi i64 [ %59, %56 ], [ %617, %616 ]
  %527 = getelementptr inbounds i32, ptr %1, i64 %526
  %528 = getelementptr inbounds i32, ptr %527, i64 -1
  %529 = sub nsw i64 %526, %59
  %530 = getelementptr inbounds i32, ptr %1, i64 %529
  %531 = load i32, ptr %530, align 4, !tbaa !17
  br i1 %57, label %532, label %546

532:                                              ; preds = %532, %525
  %533 = phi i64 [ %544, %532 ], [ 0, %525 ]
  %534 = phi i32 [ %543, %532 ], [ 0, %525 ]
  %535 = getelementptr inbounds i16, ptr %3, i64 %533
  %536 = load i16, ptr %535, align 2, !tbaa !12
  %537 = sext i16 %536 to i32
  %538 = sub nsw i64 0, %533
  %539 = getelementptr inbounds i32, ptr %528, i64 %538
  %540 = load i32, ptr %539, align 4, !tbaa !17
  %541 = sub nsw i32 %540, %531
  %542 = mul nsw i32 %541, %537
  %543 = add nsw i32 %542, %534
  %544 = add nuw nsw i64 %533, 1
  %545 = icmp eq i64 %544, %60
  br i1 %545, label %546, label %532, !llvm.loop !161

546:                                              ; preds = %532, %525
  %547 = phi i32 [ 0, %525 ], [ %543, %532 ]
  %548 = getelementptr inbounds i32, ptr %0, i64 %526
  %549 = load i32, ptr %548, align 4, !tbaa !17
  %550 = icmp sgt i32 %549, 0
  %551 = zext i1 %550 to i32
  %552 = ashr i32 %549, 31
  %553 = or i32 %552, %551
  %554 = add nsw i32 %547, %10
  %555 = ashr i32 %554, %6
  %556 = add nsw i32 %555, %531
  %557 = add nsw i32 %556, %549
  %558 = shl i32 %557, %8
  %559 = ashr i32 %558, %8
  store i32 %559, ptr %527, align 4, !tbaa !17
  %560 = icmp sgt i32 %553, 0
  br i1 %560, label %561, label %587

561:                                              ; preds = %565, %546
  %562 = phi i64 [ %566, %565 ], [ %58, %546 ]
  %563 = phi i32 [ %585, %565 ], [ %549, %546 ]
  %564 = icmp sgt i64 %562, 0
  br i1 %564, label %565, label %616

565:                                              ; preds = %561
  %566 = add nsw i64 %562, -1
  %567 = sub nsw i64 1, %562
  %568 = getelementptr inbounds i32, ptr %528, i64 %567
  %569 = load i32, ptr %568, align 4, !tbaa !17
  %570 = sub nsw i32 %531, %569
  %571 = icmp sgt i32 %570, 0
  %572 = zext i1 %571 to i32
  %573 = ashr i32 %570, 31
  %574 = or i32 %573, %572
  %575 = and i64 %566, 4294967295
  %576 = getelementptr inbounds i16, ptr %3, i64 %575
  %577 = load i16, ptr %576, align 2, !tbaa !12
  %578 = trunc i32 %574 to i16
  %579 = sub i16 %577, %578
  store i16 %579, ptr %576, align 2, !tbaa !12
  %580 = mul nsw i32 %574, %570
  %581 = ashr i32 %580, %6
  %582 = trunc i64 %566 to i32
  %583 = sub i32 %582, %4
  %584 = mul i32 %581, %583
  %585 = add i32 %584, %563
  %586 = icmp slt i32 %585, 1
  br i1 %586, label %616, label %561, !llvm.loop !162

587:                                              ; preds = %546
  %588 = icmp slt i32 %553, 0
  br i1 %588, label %589, label %616

589:                                              ; preds = %593, %587
  %590 = phi i64 [ %594, %593 ], [ %58, %587 ]
  %591 = phi i32 [ %614, %593 ], [ %549, %587 ]
  %592 = icmp sgt i64 %590, 0
  br i1 %592, label %593, label %616

593:                                              ; preds = %589
  %594 = add nsw i64 %590, -1
  %595 = sub nsw i64 1, %590
  %596 = getelementptr inbounds i32, ptr %528, i64 %595
  %597 = load i32, ptr %596, align 4, !tbaa !17
  %598 = sub nsw i32 %531, %597
  %599 = icmp sgt i32 %598, 0
  %600 = zext i1 %599 to i32
  %601 = ashr i32 %598, 31
  %602 = or i32 %601, %600
  %603 = and i64 %594, 4294967295
  %604 = getelementptr inbounds i16, ptr %3, i64 %603
  %605 = load i16, ptr %604, align 2, !tbaa !12
  %606 = trunc i32 %602 to i16
  %607 = add i16 %605, %606
  store i16 %607, ptr %604, align 2, !tbaa !12
  %608 = mul i32 %598, %602
  %609 = sub i32 0, %608
  %610 = ashr i32 %609, %6
  %611 = trunc i64 %594 to i32
  %612 = sub i32 %611, %4
  %613 = mul i32 %610, %612
  %614 = add i32 %613, %591
  %615 = icmp sgt i32 %614, -1
  br i1 %615, label %616, label %589, !llvm.loop !163

616:                                              ; preds = %593, %589, %587, %565, %561
  %617 = add nsw i64 %526, 1
  %618 = trunc i64 %617 to i32
  %619 = icmp eq i32 %618, %2
  br i1 %619, label %620, label %525, !llvm.loop !164

620:                                              ; preds = %616, %516, %216, %54, %31, %25, %21, %12
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal void @init_coefs(ptr nocapture noundef writeonly %0, i32 noundef %1, i32 noundef %2) #8 {
  %4 = shl i32 38, %1
  %5 = lshr i32 %4, 4
  %6 = trunc i32 %5 to i16
  store i16 %6, ptr %0, align 2, !tbaa !12
  %7 = shl i32 -29, %1
  %8 = lshr i32 %7, 4
  %9 = trunc i32 %8 to i16
  %10 = getelementptr inbounds i16, ptr %0, i64 1
  store i16 %9, ptr %10, align 2, !tbaa !12
  %11 = shl i32 -2, %1
  %12 = lshr i32 %11, 4
  %13 = trunc i32 %12 to i16
  %14 = getelementptr inbounds i16, ptr %0, i64 2
  store i16 %13, ptr %14, align 2, !tbaa !12
  %15 = icmp sgt i32 %2, 3
  br i1 %15, label %16, label %21

16:                                               ; preds = %3
  %17 = getelementptr i8, ptr %0, i64 6
  %18 = add nsw i32 %2, -3
  %19 = zext i32 %18 to i64
  %20 = shl nuw nsw i64 %19, 1
  tail call void @llvm.memset.p0.i64(ptr align 2 %17, i8 0, i64 %20, i1 false), !tbaa !12
  br label %21

21:                                               ; preds = %16, %3
  ret void
}

; Function Attrs: nofree nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal void @pc_block(ptr noundef readonly %0, ptr noundef writeonly %1, i32 noundef %2, ptr nocapture noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) #20 {
  %8 = sub i32 32, %5
  %9 = add i32 %6, -1
  %10 = shl nuw i32 1, %9
  %11 = load i32, ptr %0, align 4, !tbaa !17
  store i32 %11, ptr %1, align 4, !tbaa !17
  switch i32 %4, label %16 [
    i32 0, label %21
    i32 31, label %12
  ]

12:                                               ; preds = %7
  %13 = icmp sgt i32 %2, 1
  br i1 %13, label %14, label %622

14:                                               ; preds = %12
  %15 = zext i32 %2 to i64
  br label %31

16:                                               ; preds = %7
  %17 = icmp slt i32 %4, 1
  %18 = add i32 %4, 1
  br i1 %17, label %57, label %19

19:                                               ; preds = %16
  %20 = zext i32 %18 to i64
  br label %44

21:                                               ; preds = %7
  %22 = icmp slt i32 %2, 2
  %23 = icmp eq ptr %0, %1
  %24 = or i1 %23, %22
  br i1 %24, label %622, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds i32, ptr %1, i64 1
  %27 = getelementptr inbounds i32, ptr %0, i64 1
  %28 = add nsw i32 %2, -1
  %29 = zext i32 %28 to i64
  %30 = shl nuw nsw i64 %29, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %26, ptr nonnull align 4 %27, i64 %30, i1 false)
  br label %622

31:                                               ; preds = %31, %14
  %32 = phi i64 [ 1, %14 ], [ %42, %31 ]
  %33 = getelementptr inbounds i32, ptr %0, i64 %32
  %34 = load i32, ptr %33, align 4, !tbaa !17
  %35 = add nsw i64 %32, -1
  %36 = getelementptr inbounds i32, ptr %0, i64 %35
  %37 = load i32, ptr %36, align 4, !tbaa !17
  %38 = sub nsw i32 %34, %37
  %39 = shl i32 %38, %8
  %40 = ashr i32 %39, %8
  %41 = getelementptr inbounds i32, ptr %1, i64 %32
  store i32 %40, ptr %41, align 4, !tbaa !17
  %42 = add nuw nsw i64 %32, 1
  %43 = icmp eq i64 %42, %15
  br i1 %43, label %622, label %31, !llvm.loop !165

44:                                               ; preds = %44, %19
  %45 = phi i64 [ 1, %19 ], [ %55, %44 ]
  %46 = getelementptr inbounds i32, ptr %0, i64 %45
  %47 = load i32, ptr %46, align 4, !tbaa !17
  %48 = add nsw i64 %45, -1
  %49 = getelementptr inbounds i32, ptr %0, i64 %48
  %50 = load i32, ptr %49, align 4, !tbaa !17
  %51 = sub nsw i32 %47, %50
  %52 = shl i32 %51, %8
  %53 = ashr i32 %52, %8
  %54 = getelementptr inbounds i32, ptr %1, i64 %45
  store i32 %53, ptr %54, align 4, !tbaa !17
  %55 = add nuw nsw i64 %45, 1
  %56 = icmp eq i64 %55, %20
  br i1 %56, label %57, label %44, !llvm.loop !166

57:                                               ; preds = %44, %16
  switch i32 %4, label %58 [
    i32 4, label %65
    i32 8, label %224
  ]

58:                                               ; preds = %57
  %59 = icmp slt i32 %18, %2
  br i1 %59, label %60, label %622

60:                                               ; preds = %58
  %61 = icmp sgt i32 %4, 0
  %62 = sext i32 %4 to i64
  %63 = sext i32 %18 to i64
  %64 = zext i32 %4 to i64
  br label %527

65:                                               ; preds = %57
  %66 = load i16, ptr %3, align 2, !tbaa !12
  %67 = getelementptr inbounds i16, ptr %3, i64 1
  %68 = load i16, ptr %67, align 2, !tbaa !12
  %69 = getelementptr inbounds i16, ptr %3, i64 2
  %70 = load i16, ptr %69, align 2, !tbaa !12
  %71 = getelementptr inbounds i16, ptr %3, i64 3
  %72 = load i16, ptr %71, align 2, !tbaa !12
  %73 = icmp sgt i32 %2, 5
  br i1 %73, label %74, label %219

74:                                               ; preds = %65
  %75 = sext i32 %18 to i64
  %76 = zext i32 %2 to i64
  br label %77

77:                                               ; preds = %212, %74
  %78 = phi i64 [ 5, %74 ], [ %217, %212 ]
  %79 = phi i16 [ %66, %74 ], [ %216, %212 ]
  %80 = phi i16 [ %68, %74 ], [ %215, %212 ]
  %81 = phi i16 [ %70, %74 ], [ %214, %212 ]
  %82 = phi i16 [ %72, %74 ], [ %213, %212 ]
  %83 = sub nsw i64 %78, %75
  %84 = getelementptr inbounds i32, ptr %0, i64 %83
  %85 = load i32, ptr %84, align 4, !tbaa !17
  %86 = getelementptr inbounds i32, ptr %0, i64 %78
  %87 = getelementptr inbounds i32, ptr %86, i64 -1
  %88 = load i32, ptr %87, align 4, !tbaa !17
  %89 = sub nsw i32 %85, %88
  %90 = getelementptr inbounds i32, ptr %86, i64 -2
  %91 = load i32, ptr %90, align 4, !tbaa !17
  %92 = sub nsw i32 %85, %91
  %93 = getelementptr inbounds i32, ptr %86, i64 -3
  %94 = load i32, ptr %93, align 4, !tbaa !17
  %95 = sub nsw i32 %85, %94
  %96 = getelementptr inbounds i32, ptr %86, i64 -4
  %97 = load i32, ptr %96, align 4, !tbaa !17
  %98 = sub nsw i32 %85, %97
  %99 = sext i16 %79 to i32
  %100 = sext i16 %80 to i32
  %101 = sext i16 %81 to i32
  %102 = sext i16 %82 to i32
  %103 = mul i32 %89, %99
  %104 = mul i32 %92, %100
  %105 = mul i32 %95, %101
  %106 = mul i32 %98, %102
  %107 = add i32 %104, %103
  %108 = add i32 %107, %105
  %109 = add i32 %108, %106
  %110 = sub i32 %10, %109
  %111 = ashr i32 %110, %6
  %112 = load i32, ptr %86, align 4, !tbaa !17
  %113 = add i32 %85, %111
  %114 = sub i32 %112, %113
  %115 = shl i32 %114, %8
  %116 = ashr i32 %115, %8
  %117 = getelementptr inbounds i32, ptr %1, i64 %78
  store i32 %116, ptr %117, align 4, !tbaa !17
  %118 = icmp sgt i32 %116, 0
  %119 = zext i1 %118 to i32
  %120 = ashr i32 %116, 31
  %121 = or i32 %120, %119
  %122 = icmp sgt i32 %121, 0
  br i1 %122, label %123, label %165

123:                                              ; preds = %77
  %124 = icmp sgt i32 %98, 0
  %125 = zext i1 %124 to i32
  %126 = ashr i32 %98, 31
  %127 = or i32 %126, %125
  %128 = trunc i32 %127 to i16
  %129 = sub i16 %82, %128
  %130 = mul nsw i32 %127, %98
  %131 = ashr i32 %130, %6
  %132 = sub nsw i32 %116, %131
  %133 = icmp slt i32 %132, 1
  br i1 %133, label %212, label %134

134:                                              ; preds = %123
  %135 = icmp sgt i32 %95, 0
  %136 = zext i1 %135 to i32
  %137 = ashr i32 %95, 31
  %138 = or i32 %137, %136
  %139 = trunc i32 %138 to i16
  %140 = sub i16 %81, %139
  %141 = mul nsw i32 %138, %95
  %142 = ashr i32 %141, %6
  %143 = shl nsw i32 %142, 1
  %144 = sub nsw i32 %132, %143
  %145 = icmp slt i32 %144, 1
  br i1 %145, label %212, label %146

146:                                              ; preds = %134
  %147 = icmp sgt i32 %92, 0
  %148 = zext i1 %147 to i32
  %149 = ashr i32 %92, 31
  %150 = or i32 %149, %148
  %151 = trunc i32 %150 to i16
  %152 = sub i16 %80, %151
  %153 = mul nsw i32 %150, %92
  %154 = ashr i32 %153, %6
  %155 = mul i32 %154, -3
  %156 = add i32 %144, %155
  %157 = icmp slt i32 %156, 1
  br i1 %157, label %212, label %158

158:                                              ; preds = %146
  %159 = icmp sgt i32 %89, 0
  %160 = zext i1 %159 to i32
  %161 = ashr i32 %89, 31
  %162 = or i32 %161, %160
  %163 = trunc i32 %162 to i16
  %164 = sub i16 %79, %163
  br label %212

165:                                              ; preds = %77
  %166 = icmp slt i32 %121, 0
  br i1 %166, label %167, label %212

167:                                              ; preds = %165
  %168 = icmp sgt i32 %98, 0
  %169 = zext i1 %168 to i32
  %170 = ashr i32 %98, 31
  %171 = or i32 %170, %169
  %172 = trunc i32 %171 to i16
  %173 = add i16 %82, %172
  %174 = mul i32 %98, %171
  %175 = sub i32 0, %174
  %176 = ashr i32 %175, %6
  %177 = sub nsw i32 %116, %176
  %178 = icmp sgt i32 %177, -1
  br i1 %178, label %212, label %179

179:                                              ; preds = %167
  %180 = icmp sgt i32 %95, 0
  %181 = zext i1 %180 to i32
  %182 = ashr i32 %95, 31
  %183 = or i32 %182, %181
  %184 = trunc i32 %183 to i16
  %185 = add i16 %81, %184
  %186 = mul i32 %95, %183
  %187 = sub i32 0, %186
  %188 = ashr i32 %187, %6
  %189 = shl nsw i32 %188, 1
  %190 = sub nsw i32 %177, %189
  %191 = icmp sgt i32 %190, -1
  br i1 %191, label %212, label %192

192:                                              ; preds = %179
  %193 = icmp sgt i32 %92, 0
  %194 = zext i1 %193 to i32
  %195 = ashr i32 %92, 31
  %196 = or i32 %195, %194
  %197 = trunc i32 %196 to i16
  %198 = add i16 %80, %197
  %199 = mul i32 %92, %196
  %200 = sub i32 0, %199
  %201 = ashr i32 %200, %6
  %202 = mul i32 %201, -3
  %203 = add i32 %190, %202
  %204 = icmp sgt i32 %203, -1
  br i1 %204, label %212, label %205

205:                                              ; preds = %192
  %206 = icmp sgt i32 %89, 0
  %207 = zext i1 %206 to i32
  %208 = ashr i32 %89, 31
  %209 = or i32 %208, %207
  %210 = trunc i32 %209 to i16
  %211 = add i16 %79, %210
  br label %212

212:                                              ; preds = %205, %192, %179, %167, %165, %158, %146, %134, %123
  %213 = phi i16 [ %129, %123 ], [ %129, %134 ], [ %129, %146 ], [ %129, %158 ], [ %173, %167 ], [ %173, %179 ], [ %173, %192 ], [ %173, %205 ], [ %82, %165 ]
  %214 = phi i16 [ %81, %123 ], [ %140, %134 ], [ %140, %146 ], [ %140, %158 ], [ %81, %167 ], [ %185, %179 ], [ %185, %192 ], [ %185, %205 ], [ %81, %165 ]
  %215 = phi i16 [ %80, %123 ], [ %80, %134 ], [ %152, %146 ], [ %152, %158 ], [ %80, %167 ], [ %80, %179 ], [ %198, %192 ], [ %198, %205 ], [ %80, %165 ]
  %216 = phi i16 [ %79, %123 ], [ %79, %134 ], [ %79, %146 ], [ %164, %158 ], [ %79, %167 ], [ %79, %179 ], [ %79, %192 ], [ %211, %205 ], [ %79, %165 ]
  %217 = add nuw nsw i64 %78, 1
  %218 = icmp eq i64 %217, %76
  br i1 %218, label %219, label %77, !llvm.loop !167

219:                                              ; preds = %212, %65
  %220 = phi i16 [ %72, %65 ], [ %213, %212 ]
  %221 = phi i16 [ %70, %65 ], [ %214, %212 ]
  %222 = phi i16 [ %68, %65 ], [ %215, %212 ]
  %223 = phi i16 [ %66, %65 ], [ %216, %212 ]
  store i16 %223, ptr %3, align 2, !tbaa !12
  store i16 %222, ptr %67, align 2, !tbaa !12
  store i16 %221, ptr %69, align 2, !tbaa !12
  store i16 %220, ptr %71, align 2, !tbaa !12
  br label %622

224:                                              ; preds = %57
  %225 = load i16, ptr %3, align 2, !tbaa !12
  %226 = getelementptr inbounds i16, ptr %3, i64 1
  %227 = load i16, ptr %226, align 2, !tbaa !12
  %228 = getelementptr inbounds i16, ptr %3, i64 2
  %229 = load i16, ptr %228, align 2, !tbaa !12
  %230 = getelementptr inbounds i16, ptr %3, i64 3
  %231 = load i16, ptr %230, align 2, !tbaa !12
  %232 = getelementptr inbounds i16, ptr %3, i64 4
  %233 = load i16, ptr %232, align 2, !tbaa !12
  %234 = getelementptr inbounds i16, ptr %3, i64 5
  %235 = load i16, ptr %234, align 2, !tbaa !12
  %236 = getelementptr inbounds i16, ptr %3, i64 6
  %237 = load i16, ptr %236, align 2, !tbaa !12
  %238 = getelementptr inbounds i16, ptr %3, i64 7
  %239 = load i16, ptr %238, align 2, !tbaa !12
  %240 = icmp sgt i32 %2, 9
  br i1 %240, label %241, label %518

241:                                              ; preds = %224
  %242 = sext i32 %18 to i64
  %243 = zext i32 %2 to i64
  br label %244

244:                                              ; preds = %507, %241
  %245 = phi i64 [ 9, %241 ], [ %516, %507 ]
  %246 = phi i16 [ %225, %241 ], [ %515, %507 ]
  %247 = phi i16 [ %227, %241 ], [ %514, %507 ]
  %248 = phi i16 [ %229, %241 ], [ %513, %507 ]
  %249 = phi i16 [ %231, %241 ], [ %512, %507 ]
  %250 = phi i16 [ %239, %241 ], [ %511, %507 ]
  %251 = phi i16 [ %237, %241 ], [ %510, %507 ]
  %252 = phi i16 [ %235, %241 ], [ %509, %507 ]
  %253 = phi i16 [ %233, %241 ], [ %508, %507 ]
  %254 = sub nsw i64 %245, %242
  %255 = getelementptr inbounds i32, ptr %0, i64 %254
  %256 = load i32, ptr %255, align 4, !tbaa !17
  %257 = getelementptr inbounds i32, ptr %0, i64 %245
  %258 = getelementptr inbounds i32, ptr %257, i64 -1
  %259 = getelementptr inbounds i32, ptr %257, i64 -2
  %260 = load i32, ptr %258, align 4, !tbaa !17
  %261 = sub nsw i32 %256, %260
  %262 = getelementptr inbounds i32, ptr %257, i64 -3
  %263 = load i32, ptr %259, align 4, !tbaa !17
  %264 = sub nsw i32 %256, %263
  %265 = getelementptr inbounds i32, ptr %257, i64 -4
  %266 = load i32, ptr %262, align 4, !tbaa !17
  %267 = sub nsw i32 %256, %266
  %268 = getelementptr inbounds i32, ptr %257, i64 -5
  %269 = load i32, ptr %265, align 4, !tbaa !17
  %270 = sub nsw i32 %256, %269
  %271 = getelementptr inbounds i32, ptr %257, i64 -6
  %272 = load i32, ptr %268, align 4, !tbaa !17
  %273 = sub nsw i32 %256, %272
  %274 = getelementptr inbounds i32, ptr %257, i64 -7
  %275 = load i32, ptr %271, align 4, !tbaa !17
  %276 = sub nsw i32 %256, %275
  %277 = getelementptr inbounds i32, ptr %257, i64 -8
  %278 = load i32, ptr %274, align 4, !tbaa !17
  %279 = sub nsw i32 %256, %278
  %280 = load i32, ptr %277, align 4, !tbaa !17
  %281 = sub nsw i32 %256, %280
  %282 = sext i16 %246 to i32
  %283 = sext i16 %247 to i32
  %284 = sext i16 %248 to i32
  %285 = sext i16 %249 to i32
  %286 = sext i16 %253 to i32
  %287 = sext i16 %252 to i32
  %288 = sext i16 %251 to i32
  %289 = sext i16 %250 to i32
  %290 = mul i32 %261, %282
  %291 = mul i32 %264, %283
  %292 = mul i32 %267, %284
  %293 = mul i32 %270, %285
  %294 = mul i32 %273, %286
  %295 = mul i32 %276, %287
  %296 = mul i32 %279, %288
  %297 = mul i32 %281, %289
  %298 = add i32 %291, %290
  %299 = add i32 %298, %292
  %300 = add i32 %299, %293
  %301 = add i32 %300, %294
  %302 = add i32 %301, %295
  %303 = add i32 %302, %296
  %304 = add i32 %303, %297
  %305 = sub i32 %10, %304
  %306 = ashr i32 %305, %6
  %307 = load i32, ptr %257, align 4, !tbaa !17
  %308 = add i32 %256, %306
  %309 = sub i32 %307, %308
  %310 = shl i32 %309, %8
  %311 = ashr i32 %310, %8
  %312 = getelementptr inbounds i32, ptr %1, i64 %245
  store i32 %311, ptr %312, align 4, !tbaa !17
  %313 = icmp sgt i32 %311, 0
  %314 = zext i1 %313 to i32
  %315 = ashr i32 %311, 31
  %316 = or i32 %315, %314
  %317 = icmp sgt i32 %316, 0
  br i1 %317, label %318, label %408

318:                                              ; preds = %244
  %319 = icmp sgt i32 %281, 0
  %320 = zext i1 %319 to i32
  %321 = ashr i32 %281, 31
  %322 = or i32 %321, %320
  %323 = trunc i32 %322 to i16
  %324 = sub i16 %250, %323
  %325 = mul nsw i32 %322, %281
  %326 = ashr i32 %325, %6
  %327 = sub nsw i32 %311, %326
  %328 = icmp slt i32 %327, 1
  br i1 %328, label %507, label %329

329:                                              ; preds = %318
  %330 = icmp sgt i32 %279, 0
  %331 = zext i1 %330 to i32
  %332 = ashr i32 %279, 31
  %333 = or i32 %332, %331
  %334 = trunc i32 %333 to i16
  %335 = sub i16 %251, %334
  %336 = mul nsw i32 %333, %279
  %337 = ashr i32 %336, %6
  %338 = shl nsw i32 %337, 1
  %339 = sub nsw i32 %327, %338
  %340 = icmp slt i32 %339, 1
  br i1 %340, label %507, label %341

341:                                              ; preds = %329
  %342 = icmp sgt i32 %276, 0
  %343 = zext i1 %342 to i32
  %344 = ashr i32 %276, 31
  %345 = or i32 %344, %343
  %346 = trunc i32 %345 to i16
  %347 = sub i16 %252, %346
  %348 = mul nsw i32 %345, %276
  %349 = ashr i32 %348, %6
  %350 = mul i32 %349, -3
  %351 = add i32 %339, %350
  %352 = icmp slt i32 %351, 1
  br i1 %352, label %507, label %353

353:                                              ; preds = %341
  %354 = icmp sgt i32 %273, 0
  %355 = zext i1 %354 to i32
  %356 = ashr i32 %273, 31
  %357 = or i32 %356, %355
  %358 = trunc i32 %357 to i16
  %359 = sub i16 %253, %358
  %360 = mul nsw i32 %357, %273
  %361 = ashr i32 %360, %6
  %362 = shl nsw i32 %361, 2
  %363 = sub nsw i32 %351, %362
  %364 = icmp slt i32 %363, 1
  br i1 %364, label %507, label %365

365:                                              ; preds = %353
  %366 = icmp sgt i32 %270, 0
  %367 = zext i1 %366 to i32
  %368 = ashr i32 %270, 31
  %369 = or i32 %368, %367
  %370 = trunc i32 %369 to i16
  %371 = sub i16 %249, %370
  %372 = mul nsw i32 %369, %270
  %373 = ashr i32 %372, %6
  %374 = mul i32 %373, -5
  %375 = add i32 %363, %374
  %376 = icmp slt i32 %375, 1
  br i1 %376, label %507, label %377

377:                                              ; preds = %365
  %378 = icmp sgt i32 %267, 0
  %379 = zext i1 %378 to i32
  %380 = ashr i32 %267, 31
  %381 = or i32 %380, %379
  %382 = trunc i32 %381 to i16
  %383 = sub i16 %248, %382
  %384 = mul nsw i32 %381, %267
  %385 = ashr i32 %384, %6
  %386 = mul i32 %385, -6
  %387 = add i32 %375, %386
  %388 = icmp slt i32 %387, 1
  br i1 %388, label %507, label %389

389:                                              ; preds = %377
  %390 = icmp sgt i32 %264, 0
  %391 = zext i1 %390 to i32
  %392 = ashr i32 %264, 31
  %393 = or i32 %392, %391
  %394 = trunc i32 %393 to i16
  %395 = sub i16 %247, %394
  %396 = mul nsw i32 %393, %264
  %397 = ashr i32 %396, %6
  %398 = mul i32 %397, -7
  %399 = add i32 %387, %398
  %400 = icmp slt i32 %399, 1
  br i1 %400, label %507, label %401

401:                                              ; preds = %389
  %402 = icmp sgt i32 %261, 0
  %403 = zext i1 %402 to i32
  %404 = ashr i32 %261, 31
  %405 = or i32 %404, %403
  %406 = trunc i32 %405 to i16
  %407 = sub i16 %246, %406
  br label %507

408:                                              ; preds = %244
  %409 = icmp slt i32 %316, 0
  br i1 %409, label %410, label %507

410:                                              ; preds = %408
  %411 = icmp sgt i32 %281, 0
  %412 = zext i1 %411 to i32
  %413 = ashr i32 %281, 31
  %414 = or i32 %413, %412
  %415 = trunc i32 %414 to i16
  %416 = add i16 %250, %415
  %417 = mul i32 %281, %414
  %418 = sub i32 0, %417
  %419 = ashr i32 %418, %6
  %420 = sub nsw i32 %311, %419
  %421 = icmp sgt i32 %420, -1
  br i1 %421, label %507, label %422

422:                                              ; preds = %410
  %423 = icmp sgt i32 %279, 0
  %424 = zext i1 %423 to i32
  %425 = ashr i32 %279, 31
  %426 = or i32 %425, %424
  %427 = trunc i32 %426 to i16
  %428 = add i16 %251, %427
  %429 = mul i32 %279, %426
  %430 = sub i32 0, %429
  %431 = ashr i32 %430, %6
  %432 = shl nsw i32 %431, 1
  %433 = sub nsw i32 %420, %432
  %434 = icmp sgt i32 %433, -1
  br i1 %434, label %507, label %435

435:                                              ; preds = %422
  %436 = icmp sgt i32 %276, 0
  %437 = zext i1 %436 to i32
  %438 = ashr i32 %276, 31
  %439 = or i32 %438, %437
  %440 = trunc i32 %439 to i16
  %441 = add i16 %252, %440
  %442 = mul i32 %276, %439
  %443 = sub i32 0, %442
  %444 = ashr i32 %443, %6
  %445 = mul i32 %444, -3
  %446 = add i32 %433, %445
  %447 = icmp sgt i32 %446, -1
  br i1 %447, label %507, label %448

448:                                              ; preds = %435
  %449 = icmp sgt i32 %273, 0
  %450 = zext i1 %449 to i32
  %451 = ashr i32 %273, 31
  %452 = or i32 %451, %450
  %453 = trunc i32 %452 to i16
  %454 = add i16 %253, %453
  %455 = mul i32 %273, %452
  %456 = sub i32 0, %455
  %457 = ashr i32 %456, %6
  %458 = shl nsw i32 %457, 2
  %459 = sub nsw i32 %446, %458
  %460 = icmp sgt i32 %459, -1
  br i1 %460, label %507, label %461

461:                                              ; preds = %448
  %462 = icmp sgt i32 %270, 0
  %463 = zext i1 %462 to i32
  %464 = ashr i32 %270, 31
  %465 = or i32 %464, %463
  %466 = trunc i32 %465 to i16
  %467 = add i16 %249, %466
  %468 = mul i32 %270, %465
  %469 = sub i32 0, %468
  %470 = ashr i32 %469, %6
  %471 = mul i32 %470, -5
  %472 = add i32 %459, %471
  %473 = icmp sgt i32 %472, -1
  br i1 %473, label %507, label %474

474:                                              ; preds = %461
  %475 = icmp sgt i32 %267, 0
  %476 = zext i1 %475 to i32
  %477 = ashr i32 %267, 31
  %478 = or i32 %477, %476
  %479 = trunc i32 %478 to i16
  %480 = add i16 %248, %479
  %481 = mul i32 %267, %478
  %482 = sub i32 0, %481
  %483 = ashr i32 %482, %6
  %484 = mul i32 %483, -6
  %485 = add i32 %472, %484
  %486 = icmp sgt i32 %485, -1
  br i1 %486, label %507, label %487

487:                                              ; preds = %474
  %488 = icmp sgt i32 %264, 0
  %489 = zext i1 %488 to i32
  %490 = ashr i32 %264, 31
  %491 = or i32 %490, %489
  %492 = trunc i32 %491 to i16
  %493 = add i16 %247, %492
  %494 = mul i32 %264, %491
  %495 = sub i32 0, %494
  %496 = ashr i32 %495, %6
  %497 = mul i32 %496, -7
  %498 = add i32 %485, %497
  %499 = icmp sgt i32 %498, -1
  br i1 %499, label %507, label %500

500:                                              ; preds = %487
  %501 = icmp sgt i32 %261, 0
  %502 = zext i1 %501 to i32
  %503 = ashr i32 %261, 31
  %504 = or i32 %503, %502
  %505 = trunc i32 %504 to i16
  %506 = add i16 %246, %505
  br label %507

507:                                              ; preds = %500, %487, %474, %461, %448, %435, %422, %410, %408, %401, %389, %377, %365, %353, %341, %329, %318
  %508 = phi i16 [ %253, %318 ], [ %253, %329 ], [ %253, %341 ], [ %359, %353 ], [ %359, %365 ], [ %359, %377 ], [ %359, %389 ], [ %359, %401 ], [ %253, %410 ], [ %253, %422 ], [ %253, %435 ], [ %454, %448 ], [ %454, %461 ], [ %454, %474 ], [ %454, %487 ], [ %454, %500 ], [ %253, %408 ]
  %509 = phi i16 [ %252, %318 ], [ %252, %329 ], [ %347, %341 ], [ %347, %353 ], [ %347, %365 ], [ %347, %377 ], [ %347, %389 ], [ %347, %401 ], [ %252, %410 ], [ %252, %422 ], [ %441, %435 ], [ %441, %448 ], [ %441, %461 ], [ %441, %474 ], [ %441, %487 ], [ %441, %500 ], [ %252, %408 ]
  %510 = phi i16 [ %251, %318 ], [ %335, %329 ], [ %335, %341 ], [ %335, %353 ], [ %335, %365 ], [ %335, %377 ], [ %335, %389 ], [ %335, %401 ], [ %251, %410 ], [ %428, %422 ], [ %428, %435 ], [ %428, %448 ], [ %428, %461 ], [ %428, %474 ], [ %428, %487 ], [ %428, %500 ], [ %251, %408 ]
  %511 = phi i16 [ %324, %318 ], [ %324, %329 ], [ %324, %341 ], [ %324, %353 ], [ %324, %365 ], [ %324, %377 ], [ %324, %389 ], [ %324, %401 ], [ %416, %410 ], [ %416, %422 ], [ %416, %435 ], [ %416, %448 ], [ %416, %461 ], [ %416, %474 ], [ %416, %487 ], [ %416, %500 ], [ %250, %408 ]
  %512 = phi i16 [ %249, %318 ], [ %249, %329 ], [ %249, %341 ], [ %249, %353 ], [ %371, %365 ], [ %371, %377 ], [ %371, %389 ], [ %371, %401 ], [ %249, %410 ], [ %249, %422 ], [ %249, %435 ], [ %249, %448 ], [ %467, %461 ], [ %467, %474 ], [ %467, %487 ], [ %467, %500 ], [ %249, %408 ]
  %513 = phi i16 [ %248, %318 ], [ %248, %329 ], [ %248, %341 ], [ %248, %353 ], [ %248, %365 ], [ %383, %377 ], [ %383, %389 ], [ %383, %401 ], [ %248, %410 ], [ %248, %422 ], [ %248, %435 ], [ %248, %448 ], [ %248, %461 ], [ %480, %474 ], [ %480, %487 ], [ %480, %500 ], [ %248, %408 ]
  %514 = phi i16 [ %247, %318 ], [ %247, %329 ], [ %247, %341 ], [ %247, %353 ], [ %247, %365 ], [ %247, %377 ], [ %395, %389 ], [ %395, %401 ], [ %247, %410 ], [ %247, %422 ], [ %247, %435 ], [ %247, %448 ], [ %247, %461 ], [ %247, %474 ], [ %493, %487 ], [ %493, %500 ], [ %247, %408 ]
  %515 = phi i16 [ %246, %318 ], [ %246, %329 ], [ %246, %341 ], [ %246, %353 ], [ %246, %365 ], [ %246, %377 ], [ %246, %389 ], [ %407, %401 ], [ %246, %410 ], [ %246, %422 ], [ %246, %435 ], [ %246, %448 ], [ %246, %461 ], [ %246, %474 ], [ %246, %487 ], [ %506, %500 ], [ %246, %408 ]
  %516 = add nuw nsw i64 %245, 1
  %517 = icmp eq i64 %516, %243
  br i1 %517, label %518, label %244, !llvm.loop !168

518:                                              ; preds = %507, %224
  %519 = phi i16 [ %233, %224 ], [ %508, %507 ]
  %520 = phi i16 [ %235, %224 ], [ %509, %507 ]
  %521 = phi i16 [ %237, %224 ], [ %510, %507 ]
  %522 = phi i16 [ %239, %224 ], [ %511, %507 ]
  %523 = phi i16 [ %231, %224 ], [ %512, %507 ]
  %524 = phi i16 [ %229, %224 ], [ %513, %507 ]
  %525 = phi i16 [ %227, %224 ], [ %514, %507 ]
  %526 = phi i16 [ %225, %224 ], [ %515, %507 ]
  store i16 %526, ptr %3, align 2, !tbaa !12
  store i16 %525, ptr %226, align 2, !tbaa !12
  store i16 %524, ptr %228, align 2, !tbaa !12
  store i16 %523, ptr %230, align 2, !tbaa !12
  store i16 %519, ptr %232, align 2, !tbaa !12
  store i16 %520, ptr %234, align 2, !tbaa !12
  store i16 %521, ptr %236, align 2, !tbaa !12
  store i16 %522, ptr %238, align 2, !tbaa !12
  br label %622

527:                                              ; preds = %618, %60
  %528 = phi i64 [ %63, %60 ], [ %619, %618 ]
  %529 = sub nsw i64 %528, %63
  %530 = getelementptr inbounds i32, ptr %0, i64 %529
  %531 = load i32, ptr %530, align 4, !tbaa !17
  %532 = getelementptr inbounds i32, ptr %0, i64 %528
  %533 = getelementptr inbounds i32, ptr %532, i64 -1
  br i1 %61, label %534, label %548

534:                                              ; preds = %534, %527
  %535 = phi i64 [ %546, %534 ], [ 0, %527 ]
  %536 = phi i32 [ %545, %534 ], [ 0, %527 ]
  %537 = getelementptr inbounds i16, ptr %3, i64 %535
  %538 = load i16, ptr %537, align 2, !tbaa !12
  %539 = sext i16 %538 to i32
  %540 = sub nsw i64 0, %535
  %541 = getelementptr inbounds i32, ptr %533, i64 %540
  %542 = load i32, ptr %541, align 4, !tbaa !17
  %543 = sub i32 %542, %531
  %544 = mul i32 %543, %539
  %545 = add i32 %544, %536
  %546 = add nuw nsw i64 %535, 1
  %547 = icmp eq i64 %546, %64
  br i1 %547, label %548, label %534, !llvm.loop !169

548:                                              ; preds = %534, %527
  %549 = phi i32 [ 0, %527 ], [ %545, %534 ]
  %550 = load i32, ptr %532, align 4, !tbaa !17
  %551 = add nsw i32 %549, %10
  %552 = ashr i32 %551, %6
  %553 = add i32 %552, %531
  %554 = sub i32 %550, %553
  %555 = shl i32 %554, %8
  %556 = ashr i32 %555, %8
  %557 = getelementptr inbounds i32, ptr %1, i64 %528
  store i32 %556, ptr %557, align 4, !tbaa !17
  %558 = icmp sgt i32 %556, 0
  %559 = zext i1 %558 to i32
  %560 = ashr i32 %556, 31
  %561 = or i32 %560, %559
  %562 = icmp sgt i32 %561, 0
  br i1 %562, label %563, label %589

563:                                              ; preds = %567, %548
  %564 = phi i64 [ %568, %567 ], [ %62, %548 ]
  %565 = phi i32 [ %587, %567 ], [ %556, %548 ]
  %566 = icmp sgt i64 %564, 0
  br i1 %566, label %567, label %618

567:                                              ; preds = %563
  %568 = add nsw i64 %564, -1
  %569 = sub nsw i64 1, %564
  %570 = getelementptr inbounds i32, ptr %533, i64 %569
  %571 = load i32, ptr %570, align 4, !tbaa !17
  %572 = sub nsw i32 %531, %571
  %573 = icmp sgt i32 %572, 0
  %574 = zext i1 %573 to i32
  %575 = ashr i32 %572, 31
  %576 = or i32 %575, %574
  %577 = and i64 %568, 4294967295
  %578 = getelementptr inbounds i16, ptr %3, i64 %577
  %579 = load i16, ptr %578, align 2, !tbaa !12
  %580 = trunc i32 %576 to i16
  %581 = sub i16 %579, %580
  store i16 %581, ptr %578, align 2, !tbaa !12
  %582 = mul nsw i32 %576, %572
  %583 = ashr i32 %582, %6
  %584 = trunc i64 %568 to i32
  %585 = sub i32 %584, %4
  %586 = mul i32 %583, %585
  %587 = add i32 %586, %565
  %588 = icmp slt i32 %587, 1
  br i1 %588, label %618, label %563, !llvm.loop !170

589:                                              ; preds = %548
  %590 = icmp slt i32 %561, 0
  br i1 %590, label %591, label %618

591:                                              ; preds = %595, %589
  %592 = phi i64 [ %596, %595 ], [ %62, %589 ]
  %593 = phi i32 [ %616, %595 ], [ %556, %589 ]
  %594 = icmp sgt i64 %592, 0
  br i1 %594, label %595, label %618

595:                                              ; preds = %591
  %596 = add nsw i64 %592, -1
  %597 = sub nsw i64 1, %592
  %598 = getelementptr inbounds i32, ptr %533, i64 %597
  %599 = load i32, ptr %598, align 4, !tbaa !17
  %600 = sub nsw i32 %531, %599
  %601 = icmp sgt i32 %600, 0
  %602 = zext i1 %601 to i32
  %603 = ashr i32 %600, 31
  %604 = or i32 %603, %602
  %605 = and i64 %596, 4294967295
  %606 = getelementptr inbounds i16, ptr %3, i64 %605
  %607 = load i16, ptr %606, align 2, !tbaa !12
  %608 = trunc i32 %604 to i16
  %609 = add i16 %607, %608
  store i16 %609, ptr %606, align 2, !tbaa !12
  %610 = mul i32 %600, %604
  %611 = sub i32 0, %610
  %612 = ashr i32 %611, %6
  %613 = trunc i64 %596 to i32
  %614 = sub i32 %613, %4
  %615 = mul i32 %612, %614
  %616 = add i32 %615, %593
  %617 = icmp sgt i32 %616, -1
  br i1 %617, label %618, label %591, !llvm.loop !171

618:                                              ; preds = %595, %591, %589, %567, %563
  %619 = add nsw i64 %528, 1
  %620 = trunc i64 %619 to i32
  %621 = icmp eq i32 %620, %2
  br i1 %621, label %622, label %527, !llvm.loop !172

622:                                              ; preds = %618, %518, %219, %58, %31, %25, %21, %12
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @unmix16(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) #21 {
  %8 = icmp eq i32 %6, 0
  %9 = icmp sgt i32 %4, 0
  br i1 %8, label %14, label %10

10:                                               ; preds = %7
  br i1 %9, label %11, label %49

11:                                               ; preds = %10
  %12 = zext i32 %3 to i64
  %13 = zext i32 %4 to i64
  br label %18

14:                                               ; preds = %7
  br i1 %9, label %15, label %49

15:                                               ; preds = %14
  %16 = zext i32 %3 to i64
  %17 = zext i32 %4 to i64
  br label %36

18:                                               ; preds = %18, %11
  %19 = phi i64 [ 0, %11 ], [ %34, %18 ]
  %20 = phi ptr [ %2, %11 ], [ %33, %18 ]
  %21 = getelementptr inbounds i32, ptr %0, i64 %19
  %22 = load i32, ptr %21, align 4, !tbaa !17
  %23 = getelementptr inbounds i32, ptr %1, i64 %19
  %24 = load i32, ptr %23, align 4, !tbaa !17
  %25 = add nsw i32 %24, %22
  %26 = mul nsw i32 %24, %6
  %27 = ashr i32 %26, %5
  %28 = sub i32 %25, %27
  %29 = sub nsw i32 %28, %24
  %30 = trunc i32 %28 to i16
  store i16 %30, ptr %20, align 2, !tbaa !12
  %31 = trunc i32 %29 to i16
  %32 = getelementptr inbounds i16, ptr %20, i64 1
  store i16 %31, ptr %32, align 2, !tbaa !12
  %33 = getelementptr inbounds i16, ptr %20, i64 %12
  %34 = add nuw nsw i64 %19, 1
  %35 = icmp eq i64 %34, %13
  br i1 %35, label %49, label %18, !llvm.loop !173

36:                                               ; preds = %36, %15
  %37 = phi i64 [ 0, %15 ], [ %47, %36 ]
  %38 = phi ptr [ %2, %15 ], [ %46, %36 ]
  %39 = getelementptr inbounds i32, ptr %0, i64 %37
  %40 = load i32, ptr %39, align 4, !tbaa !17
  %41 = trunc i32 %40 to i16
  store i16 %41, ptr %38, align 2, !tbaa !12
  %42 = getelementptr inbounds i32, ptr %1, i64 %37
  %43 = load i32, ptr %42, align 4, !tbaa !17
  %44 = trunc i32 %43 to i16
  %45 = getelementptr inbounds i16, ptr %38, i64 1
  store i16 %44, ptr %45, align 2, !tbaa !12
  %46 = getelementptr inbounds i16, ptr %38, i64 %16
  %47 = add nuw nsw i64 %37, 1
  %48 = icmp eq i64 %47, %17
  br i1 %48, label %49, label %36, !llvm.loop !174

49:                                               ; preds = %36, %18, %14, %10
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @unmix20(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) #21 {
  %8 = icmp eq i32 %6, 0
  %9 = icmp sgt i32 %4, 0
  br i1 %8, label %16, label %10

10:                                               ; preds = %7
  br i1 %9, label %11, label %81

11:                                               ; preds = %10
  %12 = mul i32 %3, 3
  %13 = add i32 %12, -3
  %14 = zext i32 %13 to i64
  %15 = zext i32 %4 to i64
  br label %22

16:                                               ; preds = %7
  br i1 %9, label %17, label %81

17:                                               ; preds = %16
  %18 = mul i32 %3, 3
  %19 = add i32 %18, -3
  %20 = zext i32 %19 to i64
  %21 = zext i32 %4 to i64
  br label %54

22:                                               ; preds = %22, %11
  %23 = phi i64 [ 0, %11 ], [ %52, %22 ]
  %24 = phi ptr [ %2, %11 ], [ %51, %22 ]
  %25 = getelementptr inbounds i32, ptr %0, i64 %23
  %26 = load i32, ptr %25, align 4, !tbaa !17
  %27 = getelementptr inbounds i32, ptr %1, i64 %23
  %28 = load i32, ptr %27, align 4, !tbaa !17
  %29 = add nsw i32 %28, %26
  %30 = mul nsw i32 %28, %6
  %31 = ashr i32 %30, %5
  %32 = sub i32 %29, %31
  %33 = sub nsw i32 %32, %28
  %34 = shl i32 %32, 4
  %35 = shl i32 %33, 4
  %36 = lshr i32 %34, 16
  %37 = trunc i32 %36 to i8
  %38 = getelementptr inbounds i8, ptr %24, i64 2
  store i8 %37, ptr %38, align 1, !tbaa !16
  %39 = lshr i32 %34, 8
  %40 = trunc i32 %39 to i8
  %41 = getelementptr inbounds i8, ptr %24, i64 1
  store i8 %40, ptr %41, align 1, !tbaa !16
  %42 = trunc i32 %34 to i8
  store i8 %42, ptr %24, align 1, !tbaa !16
  %43 = getelementptr inbounds i8, ptr %24, i64 3
  %44 = lshr i32 %35, 16
  %45 = trunc i32 %44 to i8
  %46 = getelementptr inbounds i8, ptr %24, i64 5
  store i8 %45, ptr %46, align 1, !tbaa !16
  %47 = lshr i32 %35, 8
  %48 = trunc i32 %47 to i8
  %49 = getelementptr inbounds i8, ptr %24, i64 4
  store i8 %48, ptr %49, align 1, !tbaa !16
  %50 = trunc i32 %35 to i8
  store i8 %50, ptr %43, align 1, !tbaa !16
  %51 = getelementptr inbounds i8, ptr %43, i64 %14
  %52 = add nuw nsw i64 %23, 1
  %53 = icmp eq i64 %52, %15
  br i1 %53, label %81, label %22, !llvm.loop !175

54:                                               ; preds = %54, %17
  %55 = phi i64 [ 0, %17 ], [ %79, %54 ]
  %56 = phi ptr [ %2, %17 ], [ %78, %54 ]
  %57 = getelementptr inbounds i32, ptr %0, i64 %55
  %58 = load i32, ptr %57, align 4, !tbaa !17
  %59 = shl i32 %58, 4
  %60 = lshr i32 %59, 16
  %61 = trunc i32 %60 to i8
  %62 = getelementptr inbounds i8, ptr %56, i64 2
  store i8 %61, ptr %62, align 1, !tbaa !16
  %63 = lshr i32 %59, 8
  %64 = trunc i32 %63 to i8
  %65 = getelementptr inbounds i8, ptr %56, i64 1
  store i8 %64, ptr %65, align 1, !tbaa !16
  %66 = trunc i32 %59 to i8
  store i8 %66, ptr %56, align 1, !tbaa !16
  %67 = getelementptr inbounds i8, ptr %56, i64 3
  %68 = getelementptr inbounds i32, ptr %1, i64 %55
  %69 = load i32, ptr %68, align 4, !tbaa !17
  %70 = shl i32 %69, 4
  %71 = lshr i32 %70, 16
  %72 = trunc i32 %71 to i8
  %73 = getelementptr inbounds i8, ptr %56, i64 5
  store i8 %72, ptr %73, align 1, !tbaa !16
  %74 = lshr i32 %70, 8
  %75 = trunc i32 %74 to i8
  %76 = getelementptr inbounds i8, ptr %56, i64 4
  store i8 %75, ptr %76, align 1, !tbaa !16
  %77 = trunc i32 %70 to i8
  store i8 %77, ptr %67, align 1, !tbaa !16
  %78 = getelementptr inbounds i8, ptr %67, i64 %20
  %79 = add nuw nsw i64 %55, 1
  %80 = icmp eq i64 %79, %21
  br i1 %80, label %81, label %54, !llvm.loop !176

81:                                               ; preds = %54, %22, %16, %10
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @unmix24(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr nocapture noundef readonly %7, i32 noundef %8) #21 {
  %10 = shl nsw i32 %8, 3
  %11 = icmp eq i32 %6, 0
  %12 = icmp eq i32 %8, 0
  %13 = icmp sgt i32 %4, 0
  br i1 %11, label %100, label %14

14:                                               ; preds = %9
  br i1 %12, label %21, label %15

15:                                               ; preds = %14
  br i1 %13, label %16, label %176

16:                                               ; preds = %15
  %17 = mul i32 %3, 3
  %18 = add i32 %17, -3
  %19 = zext i32 %18 to i64
  %20 = zext i32 %4 to i64
  br label %27

21:                                               ; preds = %14
  br i1 %13, label %22, label %176

22:                                               ; preds = %21
  %23 = mul i32 %3, 3
  %24 = add i32 %23, -3
  %25 = zext i32 %24 to i64
  %26 = zext i32 %4 to i64
  br label %70

27:                                               ; preds = %27, %16
  %28 = phi i64 [ 0, %16 ], [ %67, %27 ]
  %29 = phi i64 [ 0, %16 ], [ %68, %27 ]
  %30 = phi ptr [ %2, %16 ], [ %66, %27 ]
  %31 = getelementptr inbounds i32, ptr %0, i64 %28
  %32 = load i32, ptr %31, align 4, !tbaa !17
  %33 = getelementptr inbounds i32, ptr %1, i64 %28
  %34 = load i32, ptr %33, align 4, !tbaa !17
  %35 = add nsw i32 %34, %32
  %36 = mul nsw i32 %34, %6
  %37 = ashr i32 %36, %5
  %38 = sub i32 %35, %37
  %39 = sub nsw i32 %38, %34
  %40 = shl i32 %38, %10
  %41 = getelementptr inbounds i16, ptr %7, i64 %29
  %42 = load i16, ptr %41, align 2, !tbaa !12
  %43 = zext i16 %42 to i32
  %44 = or i32 %40, %43
  %45 = shl i32 %39, %10
  %46 = or i64 %29, 1
  %47 = getelementptr inbounds i16, ptr %7, i64 %46
  %48 = load i16, ptr %47, align 2, !tbaa !12
  %49 = zext i16 %48 to i32
  %50 = or i32 %45, %49
  %51 = lshr i32 %40, 16
  %52 = trunc i32 %51 to i8
  %53 = getelementptr inbounds i8, ptr %30, i64 2
  store i8 %52, ptr %53, align 1, !tbaa !16
  %54 = lshr i32 %44, 8
  %55 = trunc i32 %54 to i8
  %56 = getelementptr inbounds i8, ptr %30, i64 1
  store i8 %55, ptr %56, align 1, !tbaa !16
  %57 = trunc i32 %44 to i8
  store i8 %57, ptr %30, align 1, !tbaa !16
  %58 = getelementptr inbounds i8, ptr %30, i64 3
  %59 = lshr i32 %45, 16
  %60 = trunc i32 %59 to i8
  %61 = getelementptr inbounds i8, ptr %30, i64 5
  store i8 %60, ptr %61, align 1, !tbaa !16
  %62 = lshr i32 %50, 8
  %63 = trunc i32 %62 to i8
  %64 = getelementptr inbounds i8, ptr %30, i64 4
  store i8 %63, ptr %64, align 1, !tbaa !16
  %65 = trunc i32 %50 to i8
  store i8 %65, ptr %58, align 1, !tbaa !16
  %66 = getelementptr inbounds i8, ptr %58, i64 %19
  %67 = add nuw nsw i64 %28, 1
  %68 = add nuw nsw i64 %29, 2
  %69 = icmp eq i64 %67, %20
  br i1 %69, label %176, label %27, !llvm.loop !177

70:                                               ; preds = %70, %22
  %71 = phi i64 [ 0, %22 ], [ %98, %70 ]
  %72 = phi ptr [ %2, %22 ], [ %97, %70 ]
  %73 = getelementptr inbounds i32, ptr %0, i64 %71
  %74 = load i32, ptr %73, align 4, !tbaa !17
  %75 = getelementptr inbounds i32, ptr %1, i64 %71
  %76 = load i32, ptr %75, align 4, !tbaa !17
  %77 = add nsw i32 %76, %74
  %78 = mul nsw i32 %76, %6
  %79 = ashr i32 %78, %5
  %80 = sub i32 %77, %79
  %81 = sub nsw i32 %80, %76
  %82 = lshr i32 %80, 16
  %83 = trunc i32 %82 to i8
  %84 = getelementptr inbounds i8, ptr %72, i64 2
  store i8 %83, ptr %84, align 1, !tbaa !16
  %85 = lshr i32 %80, 8
  %86 = trunc i32 %85 to i8
  %87 = getelementptr inbounds i8, ptr %72, i64 1
  store i8 %86, ptr %87, align 1, !tbaa !16
  %88 = trunc i32 %80 to i8
  store i8 %88, ptr %72, align 1, !tbaa !16
  %89 = getelementptr inbounds i8, ptr %72, i64 3
  %90 = lshr i32 %81, 16
  %91 = trunc i32 %90 to i8
  %92 = getelementptr inbounds i8, ptr %72, i64 5
  store i8 %91, ptr %92, align 1, !tbaa !16
  %93 = lshr i32 %81, 8
  %94 = trunc i32 %93 to i8
  %95 = getelementptr inbounds i8, ptr %72, i64 4
  store i8 %94, ptr %95, align 1, !tbaa !16
  %96 = trunc i32 %81 to i8
  store i8 %96, ptr %89, align 1, !tbaa !16
  %97 = getelementptr inbounds i8, ptr %89, i64 %25
  %98 = add nuw nsw i64 %71, 1
  %99 = icmp eq i64 %98, %26
  br i1 %99, label %176, label %70, !llvm.loop !178

100:                                              ; preds = %9
  br i1 %12, label %107, label %101

101:                                              ; preds = %100
  br i1 %13, label %102, label %176

102:                                              ; preds = %101
  %103 = mul i32 %3, 3
  %104 = add i32 %103, -3
  %105 = zext i32 %104 to i64
  %106 = zext i32 %4 to i64
  br label %113

107:                                              ; preds = %100
  br i1 %13, label %108, label %176

108:                                              ; preds = %107
  %109 = mul i32 %3, 3
  %110 = add i32 %109, -3
  %111 = zext i32 %110 to i64
  %112 = zext i32 %4 to i64
  br label %151

113:                                              ; preds = %113, %102
  %114 = phi i64 [ 0, %102 ], [ %148, %113 ]
  %115 = phi i64 [ 0, %102 ], [ %149, %113 ]
  %116 = phi ptr [ %2, %102 ], [ %147, %113 ]
  %117 = getelementptr inbounds i32, ptr %0, i64 %114
  %118 = load i32, ptr %117, align 4, !tbaa !17
  %119 = getelementptr inbounds i32, ptr %1, i64 %114
  %120 = load i32, ptr %119, align 4, !tbaa !17
  %121 = shl i32 %118, %10
  %122 = getelementptr inbounds i16, ptr %7, i64 %115
  %123 = load i16, ptr %122, align 2, !tbaa !12
  %124 = zext i16 %123 to i32
  %125 = or i32 %121, %124
  %126 = shl i32 %120, %10
  %127 = or i64 %115, 1
  %128 = getelementptr inbounds i16, ptr %7, i64 %127
  %129 = load i16, ptr %128, align 2, !tbaa !12
  %130 = zext i16 %129 to i32
  %131 = or i32 %126, %130
  %132 = lshr i32 %121, 16
  %133 = trunc i32 %132 to i8
  %134 = getelementptr inbounds i8, ptr %116, i64 2
  store i8 %133, ptr %134, align 1, !tbaa !16
  %135 = lshr i32 %125, 8
  %136 = trunc i32 %135 to i8
  %137 = getelementptr inbounds i8, ptr %116, i64 1
  store i8 %136, ptr %137, align 1, !tbaa !16
  %138 = trunc i32 %125 to i8
  store i8 %138, ptr %116, align 1, !tbaa !16
  %139 = getelementptr inbounds i8, ptr %116, i64 3
  %140 = lshr i32 %126, 16
  %141 = trunc i32 %140 to i8
  %142 = getelementptr inbounds i8, ptr %116, i64 5
  store i8 %141, ptr %142, align 1, !tbaa !16
  %143 = lshr i32 %131, 8
  %144 = trunc i32 %143 to i8
  %145 = getelementptr inbounds i8, ptr %116, i64 4
  store i8 %144, ptr %145, align 1, !tbaa !16
  %146 = trunc i32 %131 to i8
  store i8 %146, ptr %139, align 1, !tbaa !16
  %147 = getelementptr inbounds i8, ptr %139, i64 %105
  %148 = add nuw nsw i64 %114, 1
  %149 = add nuw nsw i64 %115, 2
  %150 = icmp eq i64 %148, %106
  br i1 %150, label %176, label %113, !llvm.loop !179

151:                                              ; preds = %151, %108
  %152 = phi i64 [ 0, %108 ], [ %174, %151 ]
  %153 = phi ptr [ %2, %108 ], [ %173, %151 ]
  %154 = getelementptr inbounds i32, ptr %0, i64 %152
  %155 = load i32, ptr %154, align 4, !tbaa !17
  %156 = lshr i32 %155, 16
  %157 = trunc i32 %156 to i8
  %158 = getelementptr inbounds i8, ptr %153, i64 2
  store i8 %157, ptr %158, align 1, !tbaa !16
  %159 = lshr i32 %155, 8
  %160 = trunc i32 %159 to i8
  %161 = getelementptr inbounds i8, ptr %153, i64 1
  store i8 %160, ptr %161, align 1, !tbaa !16
  %162 = trunc i32 %155 to i8
  store i8 %162, ptr %153, align 1, !tbaa !16
  %163 = getelementptr inbounds i8, ptr %153, i64 3
  %164 = getelementptr inbounds i32, ptr %1, i64 %152
  %165 = load i32, ptr %164, align 4, !tbaa !17
  %166 = lshr i32 %165, 16
  %167 = trunc i32 %166 to i8
  %168 = getelementptr inbounds i8, ptr %153, i64 5
  store i8 %167, ptr %168, align 1, !tbaa !16
  %169 = lshr i32 %165, 8
  %170 = trunc i32 %169 to i8
  %171 = getelementptr inbounds i8, ptr %153, i64 4
  store i8 %170, ptr %171, align 1, !tbaa !16
  %172 = trunc i32 %165 to i8
  store i8 %172, ptr %163, align 1, !tbaa !16
  %173 = getelementptr inbounds i8, ptr %163, i64 %111
  %174 = add nuw nsw i64 %152, 1
  %175 = icmp eq i64 %174, %112
  br i1 %175, label %176, label %151, !llvm.loop !180

176:                                              ; preds = %151, %113, %107, %101, %70, %27, %21, %15
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @unmix32(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr nocapture noundef readonly %7, i32 noundef %8) #21 {
  %10 = shl nsw i32 %8, 3
  %11 = icmp eq i32 %6, 0
  br i1 %11, label %46, label %12

12:                                               ; preds = %9
  %13 = icmp sgt i32 %4, 0
  br i1 %13, label %14, label %92

14:                                               ; preds = %12
  %15 = zext i32 %3 to i64
  %16 = zext i32 %4 to i64
  br label %17

17:                                               ; preds = %17, %14
  %18 = phi i64 [ 0, %14 ], [ %44, %17 ]
  %19 = phi i64 [ 0, %14 ], [ %43, %17 ]
  %20 = phi ptr [ %2, %14 ], [ %42, %17 ]
  %21 = getelementptr inbounds i32, ptr %0, i64 %19
  %22 = load i32, ptr %21, align 4, !tbaa !17
  %23 = getelementptr inbounds i32, ptr %1, i64 %19
  %24 = load i32, ptr %23, align 4, !tbaa !17
  %25 = add nsw i32 %24, %22
  %26 = mul nsw i32 %24, %6
  %27 = ashr i32 %26, %5
  %28 = sub i32 %25, %27
  %29 = sub nsw i32 %28, %24
  %30 = shl i32 %28, %10
  %31 = getelementptr inbounds i16, ptr %7, i64 %18
  %32 = load i16, ptr %31, align 2, !tbaa !12
  %33 = zext i16 %32 to i32
  %34 = or i32 %30, %33
  store i32 %34, ptr %20, align 4, !tbaa !17
  %35 = shl i32 %29, %10
  %36 = or i64 %18, 1
  %37 = getelementptr inbounds i16, ptr %7, i64 %36
  %38 = load i16, ptr %37, align 2, !tbaa !12
  %39 = zext i16 %38 to i32
  %40 = or i32 %35, %39
  %41 = getelementptr inbounds i32, ptr %20, i64 1
  store i32 %40, ptr %41, align 4, !tbaa !17
  %42 = getelementptr inbounds i32, ptr %20, i64 %15
  %43 = add nuw nsw i64 %19, 1
  %44 = add nuw nsw i64 %18, 2
  %45 = icmp eq i64 %43, %16
  br i1 %45, label %92, label %17, !llvm.loop !181

46:                                               ; preds = %9
  %47 = icmp eq i32 %8, 0
  %48 = icmp sgt i32 %4, 0
  br i1 %47, label %53, label %49

49:                                               ; preds = %46
  br i1 %48, label %50, label %92

50:                                               ; preds = %49
  %51 = zext i32 %3 to i64
  %52 = zext i32 %4 to i64
  br label %68

53:                                               ; preds = %46
  br i1 %48, label %54, label %92

54:                                               ; preds = %53
  %55 = zext i32 %3 to i64
  %56 = zext i32 %4 to i64
  br label %57

57:                                               ; preds = %57, %54
  %58 = phi i64 [ 0, %54 ], [ %66, %57 ]
  %59 = phi ptr [ %2, %54 ], [ %65, %57 ]
  %60 = getelementptr inbounds i32, ptr %0, i64 %58
  %61 = load i32, ptr %60, align 4, !tbaa !17
  store i32 %61, ptr %59, align 4, !tbaa !17
  %62 = getelementptr inbounds i32, ptr %1, i64 %58
  %63 = load i32, ptr %62, align 4, !tbaa !17
  %64 = getelementptr inbounds i32, ptr %59, i64 1
  store i32 %63, ptr %64, align 4, !tbaa !17
  %65 = getelementptr inbounds i32, ptr %59, i64 %55
  %66 = add nuw nsw i64 %58, 1
  %67 = icmp eq i64 %66, %56
  br i1 %67, label %92, label %57, !llvm.loop !182

68:                                               ; preds = %68, %50
  %69 = phi i64 [ 0, %50 ], [ %90, %68 ]
  %70 = phi i64 [ 0, %50 ], [ %89, %68 ]
  %71 = phi ptr [ %2, %50 ], [ %88, %68 ]
  %72 = getelementptr inbounds i32, ptr %0, i64 %70
  %73 = load i32, ptr %72, align 4, !tbaa !17
  %74 = shl i32 %73, %10
  %75 = getelementptr inbounds i16, ptr %7, i64 %69
  %76 = load i16, ptr %75, align 2, !tbaa !12
  %77 = zext i16 %76 to i32
  %78 = or i32 %74, %77
  store i32 %78, ptr %71, align 4, !tbaa !17
  %79 = getelementptr inbounds i32, ptr %1, i64 %70
  %80 = load i32, ptr %79, align 4, !tbaa !17
  %81 = shl i32 %80, %10
  %82 = or i64 %69, 1
  %83 = getelementptr inbounds i16, ptr %7, i64 %82
  %84 = load i16, ptr %83, align 2, !tbaa !12
  %85 = zext i16 %84 to i32
  %86 = or i32 %81, %85
  %87 = getelementptr inbounds i32, ptr %71, i64 1
  store i32 %86, ptr %87, align 4, !tbaa !17
  %88 = getelementptr inbounds i32, ptr %71, i64 %51
  %89 = add nuw nsw i64 %70, 1
  %90 = add nuw nsw i64 %69, 2
  %91 = icmp eq i64 %89, %52
  br i1 %91, label %92, label %68, !llvm.loop !183

92:                                               ; preds = %68, %57, %53, %49, %17, %12
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @copyPredictorTo24(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i32 noundef %2, i32 noundef %3) #21 {
  %5 = icmp sgt i32 %3, 0
  br i1 %5, label %6, label %25

6:                                                ; preds = %4
  %7 = mul i32 %2, 3
  %8 = zext i32 %7 to i64
  %9 = zext i32 %3 to i64
  br label %10

10:                                               ; preds = %10, %6
  %11 = phi i64 [ 0, %6 ], [ %23, %10 ]
  %12 = phi ptr [ %1, %6 ], [ %22, %10 ]
  %13 = getelementptr inbounds i32, ptr %0, i64 %11
  %14 = load i32, ptr %13, align 4, !tbaa !17
  %15 = lshr i32 %14, 16
  %16 = trunc i32 %15 to i8
  %17 = getelementptr inbounds i8, ptr %12, i64 2
  store i8 %16, ptr %17, align 1, !tbaa !16
  %18 = lshr i32 %14, 8
  %19 = trunc i32 %18 to i8
  %20 = getelementptr inbounds i8, ptr %12, i64 1
  store i8 %19, ptr %20, align 1, !tbaa !16
  %21 = trunc i32 %14 to i8
  store i8 %21, ptr %12, align 1, !tbaa !16
  %22 = getelementptr inbounds i8, ptr %12, i64 %8
  %23 = add nuw nsw i64 %11, 1
  %24 = icmp eq i64 %23, %9
  br i1 %24, label %25, label %10, !llvm.loop !184

25:                                               ; preds = %10, %4
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @copyPredictorTo24Shift(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #21 {
  %7 = shl nsw i32 %5, 3
  %8 = icmp sgt i32 %4, 0
  br i1 %8, label %9, label %33

9:                                                ; preds = %6
  %10 = mul i32 %3, 3
  %11 = zext i32 %10 to i64
  %12 = zext i32 %4 to i64
  br label %13

13:                                               ; preds = %13, %9
  %14 = phi i64 [ 0, %9 ], [ %31, %13 ]
  %15 = phi ptr [ %2, %9 ], [ %30, %13 ]
  %16 = getelementptr inbounds i32, ptr %0, i64 %14
  %17 = load i32, ptr %16, align 4, !tbaa !17
  %18 = shl i32 %17, %7
  %19 = getelementptr inbounds i16, ptr %1, i64 %14
  %20 = load i16, ptr %19, align 2, !tbaa !12
  %21 = zext i16 %20 to i32
  %22 = or i32 %18, %21
  %23 = lshr i32 %18, 16
  %24 = trunc i32 %23 to i8
  %25 = getelementptr inbounds i8, ptr %15, i64 2
  store i8 %24, ptr %25, align 1, !tbaa !16
  %26 = lshr i32 %22, 8
  %27 = trunc i32 %26 to i8
  %28 = getelementptr inbounds i8, ptr %15, i64 1
  store i8 %27, ptr %28, align 1, !tbaa !16
  %29 = trunc i32 %22 to i8
  store i8 %29, ptr %15, align 1, !tbaa !16
  %30 = getelementptr inbounds i8, ptr %15, i64 %11
  %31 = add nuw nsw i64 %14, 1
  %32 = icmp eq i64 %31, %12
  br i1 %32, label %33, label %13, !llvm.loop !185

33:                                               ; preds = %13, %6
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @copyPredictorTo20(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i32 noundef %2, i32 noundef %3) #21 {
  %5 = icmp sgt i32 %3, 0
  br i1 %5, label %6, label %26

6:                                                ; preds = %4
  %7 = mul i32 %2, 3
  %8 = zext i32 %7 to i64
  %9 = zext i32 %3 to i64
  br label %10

10:                                               ; preds = %10, %6
  %11 = phi i64 [ 0, %6 ], [ %24, %10 ]
  %12 = phi ptr [ %1, %6 ], [ %23, %10 ]
  %13 = getelementptr inbounds i32, ptr %0, i64 %11
  %14 = load i32, ptr %13, align 4, !tbaa !17
  %15 = lshr i32 %14, 12
  %16 = trunc i32 %15 to i8
  %17 = getelementptr inbounds i8, ptr %12, i64 2
  store i8 %16, ptr %17, align 1, !tbaa !16
  %18 = lshr i32 %14, 4
  %19 = trunc i32 %18 to i8
  %20 = getelementptr inbounds i8, ptr %12, i64 1
  store i8 %19, ptr %20, align 1, !tbaa !16
  %21 = trunc i32 %14 to i8
  %22 = shl i8 %21, 4
  store i8 %22, ptr %12, align 1, !tbaa !16
  %23 = getelementptr inbounds i8, ptr %12, i64 %8
  %24 = add nuw nsw i64 %11, 1
  %25 = icmp eq i64 %24, %9
  br i1 %25, label %26, label %10, !llvm.loop !186

26:                                               ; preds = %10, %4
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal void @copyPredictorTo32(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i32 noundef %2, i32 noundef %3) #22 {
  %5 = icmp sgt i32 %3, 0
  br i1 %5, label %6, label %18

6:                                                ; preds = %4
  %7 = zext i32 %3 to i64
  br label %8

8:                                                ; preds = %8, %6
  %9 = phi i64 [ 0, %6 ], [ %15, %8 ]
  %10 = phi i32 [ 0, %6 ], [ %16, %8 ]
  %11 = getelementptr inbounds i32, ptr %0, i64 %9
  %12 = load i32, ptr %11, align 4, !tbaa !17
  %13 = sext i32 %10 to i64
  %14 = getelementptr inbounds i32, ptr %1, i64 %13
  store i32 %12, ptr %14, align 4, !tbaa !17
  %15 = add nuw nsw i64 %9, 1
  %16 = add i32 %10, %2
  %17 = icmp eq i64 %15, %7
  br i1 %17, label %18, label %8, !llvm.loop !187

18:                                               ; preds = %8, %4
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @copyPredictorTo32Shift(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #21 {
  %7 = shl nsw i32 %5, 3
  %8 = icmp sgt i32 %4, 0
  br i1 %8, label %9, label %25

9:                                                ; preds = %6
  %10 = zext i32 %3 to i64
  %11 = zext i32 %4 to i64
  br label %12

12:                                               ; preds = %12, %9
  %13 = phi i64 [ 0, %9 ], [ %23, %12 ]
  %14 = phi ptr [ %2, %9 ], [ %22, %12 ]
  %15 = getelementptr inbounds i32, ptr %0, i64 %13
  %16 = load i32, ptr %15, align 4, !tbaa !17
  %17 = shl i32 %16, %7
  %18 = getelementptr inbounds i16, ptr %1, i64 %13
  %19 = load i16, ptr %18, align 2, !tbaa !12
  %20 = zext i16 %19 to i32
  %21 = or i32 %17, %20
  store i32 %21, ptr %14, align 4, !tbaa !17
  %22 = getelementptr inbounds i32, ptr %14, i64 %10
  %23 = add nuw nsw i64 %13, 1
  %24 = icmp eq i64 %23, %11
  br i1 %24, label %25, label %12, !llvm.loop !188

25:                                               ; preds = %12, %6
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @mix16(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) #23 {
  %8 = icmp eq i32 %6, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %7
  %10 = icmp sgt i32 %4, 0
  br i1 %10, label %11, label %52

11:                                               ; preds = %9
  %12 = zext i32 %1 to i64
  %13 = zext i32 %4 to i64
  br label %39

14:                                               ; preds = %7
  %15 = shl nuw i32 1, %5
  %16 = sub nsw i32 %15, %6
  %17 = icmp sgt i32 %4, 0
  br i1 %17, label %18, label %52

18:                                               ; preds = %14
  %19 = zext i32 %1 to i64
  %20 = zext i32 %4 to i64
  br label %21

21:                                               ; preds = %21, %18
  %22 = phi i64 [ 0, %18 ], [ %37, %21 ]
  %23 = phi ptr [ %0, %18 ], [ %29, %21 ]
  %24 = load i16, ptr %23, align 2, !tbaa !12
  %25 = sext i16 %24 to i32
  %26 = getelementptr inbounds i16, ptr %23, i64 1
  %27 = load i16, ptr %26, align 2, !tbaa !12
  %28 = sext i16 %27 to i32
  %29 = getelementptr inbounds i16, ptr %23, i64 %19
  %30 = mul nsw i32 %25, %6
  %31 = mul nsw i32 %16, %28
  %32 = add nsw i32 %31, %30
  %33 = ashr i32 %32, %5
  %34 = getelementptr inbounds i32, ptr %2, i64 %22
  store i32 %33, ptr %34, align 4, !tbaa !17
  %35 = sub nsw i32 %25, %28
  %36 = getelementptr inbounds i32, ptr %3, i64 %22
  store i32 %35, ptr %36, align 4, !tbaa !17
  %37 = add nuw nsw i64 %22, 1
  %38 = icmp eq i64 %37, %20
  br i1 %38, label %52, label %21, !llvm.loop !189

39:                                               ; preds = %39, %11
  %40 = phi i64 [ 0, %11 ], [ %50, %39 ]
  %41 = phi ptr [ %0, %11 ], [ %49, %39 ]
  %42 = load i16, ptr %41, align 2, !tbaa !12
  %43 = sext i16 %42 to i32
  %44 = getelementptr inbounds i32, ptr %2, i64 %40
  store i32 %43, ptr %44, align 4, !tbaa !17
  %45 = getelementptr inbounds i16, ptr %41, i64 1
  %46 = load i16, ptr %45, align 2, !tbaa !12
  %47 = sext i16 %46 to i32
  %48 = getelementptr inbounds i32, ptr %3, i64 %40
  store i32 %47, ptr %48, align 4, !tbaa !17
  %49 = getelementptr inbounds i16, ptr %41, i64 %12
  %50 = add nuw nsw i64 %40, 1
  %51 = icmp eq i64 %50, %13
  br i1 %51, label %52, label %39, !llvm.loop !190

52:                                               ; preds = %39, %21, %14, %9
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @mix20(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) #23 {
  %8 = icmp eq i32 %6, 0
  br i1 %8, label %9, label %16

9:                                                ; preds = %7
  %10 = icmp sgt i32 %4, 0
  br i1 %10, label %11, label %84

11:                                               ; preds = %9
  %12 = mul i32 %1, 3
  %13 = add i32 %12, -3
  %14 = zext i32 %13 to i64
  %15 = zext i32 %4 to i64
  br label %57

16:                                               ; preds = %7
  %17 = shl nuw i32 1, %5
  %18 = sub nsw i32 %17, %6
  %19 = icmp sgt i32 %4, 0
  br i1 %19, label %20, label %84

20:                                               ; preds = %16
  %21 = mul i32 %1, 3
  %22 = add i32 %21, -3
  %23 = zext i32 %22 to i64
  %24 = zext i32 %4 to i64
  br label %25

25:                                               ; preds = %25, %20
  %26 = phi i64 [ 0, %20 ], [ %55, %25 ]
  %27 = phi ptr [ %0, %20 ], [ %47, %25 ]
  %28 = getelementptr i8, ptr %27, i64 1
  %29 = load i16, ptr %28, align 1
  %30 = zext i16 %29 to i32
  %31 = load i8, ptr %27, align 1, !tbaa !16
  %32 = zext i8 %31 to i32
  %33 = shl nuw i32 %30, 16
  %34 = shl nuw nsw i32 %32, 8
  %35 = or i32 %33, %34
  %36 = ashr i32 %35, 12
  %37 = getelementptr inbounds i8, ptr %27, i64 3
  %38 = getelementptr i8, ptr %27, i64 4
  %39 = load i16, ptr %38, align 1
  %40 = zext i16 %39 to i32
  %41 = load i8, ptr %37, align 1, !tbaa !16
  %42 = zext i8 %41 to i32
  %43 = shl nuw i32 %40, 16
  %44 = shl nuw nsw i32 %42, 8
  %45 = or i32 %43, %44
  %46 = ashr i32 %45, 12
  %47 = getelementptr inbounds i8, ptr %37, i64 %23
  %48 = mul nsw i32 %36, %6
  %49 = mul nsw i32 %46, %18
  %50 = add nsw i32 %49, %48
  %51 = ashr i32 %50, %5
  %52 = getelementptr inbounds i32, ptr %2, i64 %26
  store i32 %51, ptr %52, align 4, !tbaa !17
  %53 = sub nsw i32 %36, %46
  %54 = getelementptr inbounds i32, ptr %3, i64 %26
  store i32 %53, ptr %54, align 4, !tbaa !17
  %55 = add nuw nsw i64 %26, 1
  %56 = icmp eq i64 %55, %24
  br i1 %56, label %84, label %25, !llvm.loop !191

57:                                               ; preds = %57, %11
  %58 = phi i64 [ 0, %11 ], [ %82, %57 ]
  %59 = phi ptr [ %0, %11 ], [ %81, %57 ]
  %60 = getelementptr i8, ptr %59, i64 1
  %61 = load i16, ptr %60, align 1
  %62 = zext i16 %61 to i32
  %63 = load i8, ptr %59, align 1, !tbaa !16
  %64 = zext i8 %63 to i32
  %65 = shl nuw i32 %62, 16
  %66 = shl nuw nsw i32 %64, 8
  %67 = or i32 %65, %66
  %68 = ashr i32 %67, 12
  %69 = getelementptr inbounds i32, ptr %2, i64 %58
  store i32 %68, ptr %69, align 4, !tbaa !17
  %70 = getelementptr inbounds i8, ptr %59, i64 3
  %71 = getelementptr i8, ptr %59, i64 4
  %72 = load i16, ptr %71, align 1
  %73 = zext i16 %72 to i32
  %74 = load i8, ptr %70, align 1, !tbaa !16
  %75 = zext i8 %74 to i32
  %76 = shl nuw i32 %73, 16
  %77 = shl nuw nsw i32 %75, 8
  %78 = or i32 %76, %77
  %79 = ashr i32 %78, 12
  %80 = getelementptr inbounds i32, ptr %3, i64 %58
  store i32 %79, ptr %80, align 4, !tbaa !17
  %81 = getelementptr inbounds i8, ptr %70, i64 %14
  %82 = add nuw nsw i64 %58, 1
  %83 = icmp eq i64 %82, %15
  br i1 %83, label %84, label %57, !llvm.loop !192

84:                                               ; preds = %57, %25, %16, %9
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @mix24(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr nocapture noundef writeonly %7, i32 noundef %8) #23 {
  %10 = shl nsw i32 %8, 3
  %11 = zext i32 %10 to i64
  %12 = shl nsw i64 -1, %11
  %13 = trunc i64 %12 to i32
  %14 = xor i32 %13, -1
  %15 = icmp eq i32 %6, 0
  br i1 %15, label %108, label %16

16:                                               ; preds = %9
  %17 = shl nuw i32 1, %5
  %18 = sub nsw i32 %17, %6
  %19 = icmp eq i32 %8, 0
  %20 = icmp sgt i32 %4, 0
  br i1 %19, label %27, label %21

21:                                               ; preds = %16
  br i1 %20, label %22, label %188

22:                                               ; preds = %21
  %23 = mul i32 %1, 3
  %24 = add i32 %23, -3
  %25 = zext i32 %24 to i64
  %26 = zext i32 %4 to i64
  br label %33

27:                                               ; preds = %16
  br i1 %20, label %28, label %188

28:                                               ; preds = %27
  %29 = mul i32 %1, 3
  %30 = add i32 %29, -3
  %31 = zext i32 %30 to i64
  %32 = zext i32 %4 to i64
  br label %76

33:                                               ; preds = %33, %22
  %34 = phi i64 [ 0, %22 ], [ %73, %33 ]
  %35 = phi i64 [ 0, %22 ], [ %74, %33 ]
  %36 = phi ptr [ %0, %22 ], [ %56, %33 ]
  %37 = getelementptr i8, ptr %36, i64 1
  %38 = load i16, ptr %37, align 1
  %39 = zext i16 %38 to i32
  %40 = shl nuw nsw i32 %39, 8
  %41 = load i8, ptr %36, align 1, !tbaa !16
  %42 = zext i8 %41 to i32
  %43 = or i32 %40, %42
  %44 = shl nuw i32 %43, 8
  %45 = ashr exact i32 %44, 8
  %46 = getelementptr inbounds i8, ptr %36, i64 3
  %47 = getelementptr i8, ptr %36, i64 4
  %48 = load i16, ptr %47, align 1
  %49 = zext i16 %48 to i32
  %50 = shl nuw nsw i32 %49, 8
  %51 = load i8, ptr %46, align 1, !tbaa !16
  %52 = zext i8 %51 to i32
  %53 = or i32 %50, %52
  %54 = shl nuw i32 %53, 8
  %55 = ashr exact i32 %54, 8
  %56 = getelementptr inbounds i8, ptr %46, i64 %25
  %57 = and i32 %43, %14
  %58 = trunc i32 %57 to i16
  %59 = getelementptr inbounds i16, ptr %7, i64 %35
  store i16 %58, ptr %59, align 2, !tbaa !12
  %60 = and i32 %53, %14
  %61 = trunc i32 %60 to i16
  %62 = or i64 %35, 1
  %63 = getelementptr inbounds i16, ptr %7, i64 %62
  store i16 %61, ptr %63, align 2, !tbaa !12
  %64 = ashr i32 %45, %10
  %65 = ashr i32 %55, %10
  %66 = mul nsw i32 %64, %6
  %67 = mul nsw i32 %65, %18
  %68 = add nsw i32 %67, %66
  %69 = ashr i32 %68, %5
  %70 = getelementptr inbounds i32, ptr %2, i64 %34
  store i32 %69, ptr %70, align 4, !tbaa !17
  %71 = sub nsw i32 %64, %65
  %72 = getelementptr inbounds i32, ptr %3, i64 %34
  store i32 %71, ptr %72, align 4, !tbaa !17
  %73 = add nuw nsw i64 %34, 1
  %74 = add nuw nsw i64 %35, 2
  %75 = icmp eq i64 %73, %26
  br i1 %75, label %188, label %33, !llvm.loop !193

76:                                               ; preds = %76, %28
  %77 = phi i64 [ 0, %28 ], [ %106, %76 ]
  %78 = phi ptr [ %0, %28 ], [ %98, %76 ]
  %79 = getelementptr i8, ptr %78, i64 1
  %80 = load i16, ptr %79, align 1
  %81 = zext i16 %80 to i32
  %82 = load i8, ptr %78, align 1, !tbaa !16
  %83 = zext i8 %82 to i32
  %84 = shl nuw i32 %81, 16
  %85 = shl nuw nsw i32 %83, 8
  %86 = or i32 %84, %85
  %87 = ashr exact i32 %86, 8
  %88 = getelementptr inbounds i8, ptr %78, i64 3
  %89 = getelementptr i8, ptr %78, i64 4
  %90 = load i16, ptr %89, align 1
  %91 = zext i16 %90 to i32
  %92 = load i8, ptr %88, align 1, !tbaa !16
  %93 = zext i8 %92 to i32
  %94 = shl nuw i32 %91, 16
  %95 = shl nuw nsw i32 %93, 8
  %96 = or i32 %94, %95
  %97 = ashr exact i32 %96, 8
  %98 = getelementptr inbounds i8, ptr %88, i64 %31
  %99 = mul nsw i32 %87, %6
  %100 = mul nsw i32 %97, %18
  %101 = add nsw i32 %100, %99
  %102 = ashr i32 %101, %5
  %103 = getelementptr inbounds i32, ptr %2, i64 %77
  store i32 %102, ptr %103, align 4, !tbaa !17
  %104 = sub nsw i32 %87, %97
  %105 = getelementptr inbounds i32, ptr %3, i64 %77
  store i32 %104, ptr %105, align 4, !tbaa !17
  %106 = add nuw nsw i64 %77, 1
  %107 = icmp eq i64 %106, %32
  br i1 %107, label %188, label %76, !llvm.loop !194

108:                                              ; preds = %9
  %109 = icmp eq i32 %8, 0
  %110 = icmp sgt i32 %4, 0
  br i1 %109, label %117, label %111

111:                                              ; preds = %108
  br i1 %110, label %112, label %188

112:                                              ; preds = %111
  %113 = mul i32 %1, 3
  %114 = add i32 %113, -3
  %115 = zext i32 %114 to i64
  %116 = zext i32 %4 to i64
  br label %123

117:                                              ; preds = %108
  br i1 %110, label %118, label %188

118:                                              ; preds = %117
  %119 = mul i32 %1, 3
  %120 = add i32 %119, -3
  %121 = zext i32 %120 to i64
  %122 = zext i32 %4 to i64
  br label %161

123:                                              ; preds = %123, %112
  %124 = phi i64 [ 0, %112 ], [ %158, %123 ]
  %125 = phi i64 [ 0, %112 ], [ %159, %123 ]
  %126 = phi ptr [ %0, %112 ], [ %146, %123 ]
  %127 = getelementptr i8, ptr %126, i64 1
  %128 = load i16, ptr %127, align 1
  %129 = zext i16 %128 to i32
  %130 = shl nuw nsw i32 %129, 8
  %131 = load i8, ptr %126, align 1, !tbaa !16
  %132 = zext i8 %131 to i32
  %133 = or i32 %130, %132
  %134 = shl nuw i32 %133, 8
  %135 = ashr exact i32 %134, 8
  %136 = getelementptr inbounds i8, ptr %126, i64 3
  %137 = getelementptr i8, ptr %126, i64 4
  %138 = load i16, ptr %137, align 1
  %139 = zext i16 %138 to i32
  %140 = shl nuw nsw i32 %139, 8
  %141 = load i8, ptr %136, align 1, !tbaa !16
  %142 = zext i8 %141 to i32
  %143 = or i32 %140, %142
  %144 = shl nuw i32 %143, 8
  %145 = ashr exact i32 %144, 8
  %146 = getelementptr inbounds i8, ptr %136, i64 %115
  %147 = and i32 %133, %14
  %148 = trunc i32 %147 to i16
  %149 = getelementptr inbounds i16, ptr %7, i64 %125
  store i16 %148, ptr %149, align 2, !tbaa !12
  %150 = and i32 %143, %14
  %151 = trunc i32 %150 to i16
  %152 = or i64 %125, 1
  %153 = getelementptr inbounds i16, ptr %7, i64 %152
  store i16 %151, ptr %153, align 2, !tbaa !12
  %154 = ashr i32 %135, %10
  %155 = ashr i32 %145, %10
  %156 = getelementptr inbounds i32, ptr %2, i64 %124
  store i32 %154, ptr %156, align 4, !tbaa !17
  %157 = getelementptr inbounds i32, ptr %3, i64 %124
  store i32 %155, ptr %157, align 4, !tbaa !17
  %158 = add nuw nsw i64 %124, 1
  %159 = add nuw nsw i64 %125, 2
  %160 = icmp eq i64 %158, %116
  br i1 %160, label %188, label %123, !llvm.loop !195

161:                                              ; preds = %161, %118
  %162 = phi i64 [ 0, %118 ], [ %186, %161 ]
  %163 = phi ptr [ %0, %118 ], [ %185, %161 ]
  %164 = getelementptr i8, ptr %163, i64 1
  %165 = load i16, ptr %164, align 1
  %166 = zext i16 %165 to i32
  %167 = load i8, ptr %163, align 1, !tbaa !16
  %168 = zext i8 %167 to i32
  %169 = shl nuw i32 %166, 16
  %170 = shl nuw nsw i32 %168, 8
  %171 = or i32 %169, %170
  %172 = ashr exact i32 %171, 8
  %173 = getelementptr inbounds i32, ptr %2, i64 %162
  store i32 %172, ptr %173, align 4, !tbaa !17
  %174 = getelementptr inbounds i8, ptr %163, i64 3
  %175 = getelementptr i8, ptr %163, i64 4
  %176 = load i16, ptr %175, align 1
  %177 = zext i16 %176 to i32
  %178 = load i8, ptr %174, align 1, !tbaa !16
  %179 = zext i8 %178 to i32
  %180 = shl nuw i32 %177, 16
  %181 = shl nuw nsw i32 %179, 8
  %182 = or i32 %180, %181
  %183 = ashr exact i32 %182, 8
  %184 = getelementptr inbounds i32, ptr %3, i64 %162
  store i32 %183, ptr %184, align 4, !tbaa !17
  %185 = getelementptr inbounds i8, ptr %174, i64 %121
  %186 = add nuw nsw i64 %162, 1
  %187 = icmp eq i64 %186, %122
  br i1 %187, label %188, label %161, !llvm.loop !196

188:                                              ; preds = %161, %123, %117, %111, %76, %33, %27, %21
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @mix32(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr nocapture noundef writeonly %7, i32 noundef %8) #23 {
  %10 = shl nsw i32 %8, 3
  %11 = zext i32 %10 to i64
  %12 = shl nsw i64 -1, %11
  %13 = trunc i64 %12 to i32
  %14 = xor i32 %13, -1
  %15 = icmp eq i32 %6, 0
  br i1 %15, label %50, label %16

16:                                               ; preds = %9
  %17 = shl nuw i32 1, %5
  %18 = sub nsw i32 %17, %6
  %19 = icmp sgt i32 %4, 0
  br i1 %19, label %20, label %94

20:                                               ; preds = %16
  %21 = zext i32 %1 to i64
  %22 = zext i32 %4 to i64
  br label %23

23:                                               ; preds = %23, %20
  %24 = phi i64 [ 0, %20 ], [ %47, %23 ]
  %25 = phi i64 [ 0, %20 ], [ %48, %23 ]
  %26 = phi ptr [ %0, %20 ], [ %30, %23 ]
  %27 = load i32, ptr %26, align 4, !tbaa !17
  %28 = getelementptr inbounds i32, ptr %26, i64 1
  %29 = load i32, ptr %28, align 4, !tbaa !17
  %30 = getelementptr inbounds i32, ptr %26, i64 %21
  %31 = and i32 %27, %14
  %32 = trunc i32 %31 to i16
  %33 = getelementptr inbounds i16, ptr %7, i64 %25
  store i16 %32, ptr %33, align 2, !tbaa !12
  %34 = and i32 %29, %14
  %35 = trunc i32 %34 to i16
  %36 = or i64 %25, 1
  %37 = getelementptr inbounds i16, ptr %7, i64 %36
  store i16 %35, ptr %37, align 2, !tbaa !12
  %38 = ashr i32 %27, %10
  %39 = ashr i32 %29, %10
  %40 = mul nsw i32 %38, %6
  %41 = mul nsw i32 %39, %18
  %42 = add nsw i32 %41, %40
  %43 = ashr i32 %42, %5
  %44 = getelementptr inbounds i32, ptr %2, i64 %24
  store i32 %43, ptr %44, align 4, !tbaa !17
  %45 = sub nsw i32 %38, %39
  %46 = getelementptr inbounds i32, ptr %3, i64 %24
  store i32 %45, ptr %46, align 4, !tbaa !17
  %47 = add nuw nsw i64 %24, 1
  %48 = add nuw nsw i64 %25, 2
  %49 = icmp eq i64 %47, %22
  br i1 %49, label %94, label %23, !llvm.loop !197

50:                                               ; preds = %9
  %51 = icmp eq i32 %8, 0
  %52 = icmp sgt i32 %4, 0
  br i1 %51, label %57, label %53

53:                                               ; preds = %50
  br i1 %52, label %54, label %94

54:                                               ; preds = %53
  %55 = zext i32 %1 to i64
  %56 = zext i32 %4 to i64
  br label %72

57:                                               ; preds = %50
  br i1 %52, label %58, label %94

58:                                               ; preds = %57
  %59 = zext i32 %1 to i64
  %60 = zext i32 %4 to i64
  br label %61

61:                                               ; preds = %61, %58
  %62 = phi i64 [ 0, %58 ], [ %70, %61 ]
  %63 = phi ptr [ %0, %58 ], [ %69, %61 ]
  %64 = load i32, ptr %63, align 4, !tbaa !17
  %65 = getelementptr inbounds i32, ptr %2, i64 %62
  store i32 %64, ptr %65, align 4, !tbaa !17
  %66 = getelementptr inbounds i32, ptr %63, i64 1
  %67 = load i32, ptr %66, align 4, !tbaa !17
  %68 = getelementptr inbounds i32, ptr %3, i64 %62
  store i32 %67, ptr %68, align 4, !tbaa !17
  %69 = getelementptr inbounds i32, ptr %63, i64 %59
  %70 = add nuw nsw i64 %62, 1
  %71 = icmp eq i64 %70, %60
  br i1 %71, label %94, label %61, !llvm.loop !198

72:                                               ; preds = %72, %54
  %73 = phi i64 [ 0, %54 ], [ %91, %72 ]
  %74 = phi i64 [ 0, %54 ], [ %92, %72 ]
  %75 = phi ptr [ %0, %54 ], [ %79, %72 ]
  %76 = load i32, ptr %75, align 4, !tbaa !17
  %77 = getelementptr inbounds i32, ptr %75, i64 1
  %78 = load i32, ptr %77, align 4, !tbaa !17
  %79 = getelementptr inbounds i32, ptr %75, i64 %55
  %80 = and i32 %76, %14
  %81 = trunc i32 %80 to i16
  %82 = getelementptr inbounds i16, ptr %7, i64 %74
  store i16 %81, ptr %82, align 2, !tbaa !12
  %83 = and i32 %78, %14
  %84 = trunc i32 %83 to i16
  %85 = or i64 %74, 1
  %86 = getelementptr inbounds i16, ptr %7, i64 %85
  store i16 %84, ptr %86, align 2, !tbaa !12
  %87 = ashr i32 %76, %10
  %88 = ashr i32 %78, %10
  %89 = getelementptr inbounds i32, ptr %2, i64 %73
  store i32 %87, ptr %89, align 4, !tbaa !17
  %90 = getelementptr inbounds i32, ptr %3, i64 %73
  store i32 %88, ptr %90, align 4, !tbaa !17
  %91 = add nuw nsw i64 %73, 1
  %92 = add nuw nsw i64 %74, 2
  %93 = icmp eq i64 %91, %56
  br i1 %93, label %94, label %72, !llvm.loop !199

94:                                               ; preds = %72, %61, %57, %53, %23, %16
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @copy20ToPredictor(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2, i32 noundef %3) #23 {
  %5 = icmp sgt i32 %3, 0
  br i1 %5, label %6, label %26

6:                                                ; preds = %4
  %7 = mul i32 %1, 3
  %8 = zext i32 %7 to i64
  %9 = zext i32 %3 to i64
  br label %10

10:                                               ; preds = %10, %6
  %11 = phi i64 [ 0, %6 ], [ %24, %10 ]
  %12 = phi ptr [ %0, %6 ], [ %23, %10 ]
  %13 = getelementptr i8, ptr %12, i64 1
  %14 = load i16, ptr %13, align 1
  %15 = zext i16 %14 to i32
  %16 = load i8, ptr %12, align 1, !tbaa !16
  %17 = zext i8 %16 to i32
  %18 = shl nuw i32 %15, 16
  %19 = shl nuw nsw i32 %17, 8
  %20 = or i32 %18, %19
  %21 = ashr i32 %20, 12
  %22 = getelementptr inbounds i32, ptr %2, i64 %11
  store i32 %21, ptr %22, align 4, !tbaa !17
  %23 = getelementptr inbounds i8, ptr %12, i64 %8
  %24 = add nuw nsw i64 %11, 1
  %25 = icmp eq i64 %24, %9
  br i1 %25, label %26, label %10, !llvm.loop !200

26:                                               ; preds = %10, %4
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @copy24ToPredictor(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2, i32 noundef %3) #23 {
  %5 = icmp sgt i32 %3, 0
  br i1 %5, label %6, label %26

6:                                                ; preds = %4
  %7 = mul i32 %1, 3
  %8 = zext i32 %7 to i64
  %9 = zext i32 %3 to i64
  br label %10

10:                                               ; preds = %10, %6
  %11 = phi i64 [ 0, %6 ], [ %24, %10 ]
  %12 = phi ptr [ %0, %6 ], [ %23, %10 ]
  %13 = getelementptr i8, ptr %12, i64 1
  %14 = load i16, ptr %13, align 1
  %15 = zext i16 %14 to i32
  %16 = load i8, ptr %12, align 1, !tbaa !16
  %17 = zext i8 %16 to i32
  %18 = shl nuw i32 %15, 16
  %19 = shl nuw nsw i32 %17, 8
  %20 = or i32 %18, %19
  %21 = ashr exact i32 %20, 8
  %22 = getelementptr inbounds i32, ptr %2, i64 %11
  store i32 %21, ptr %22, align 4, !tbaa !17
  %23 = getelementptr inbounds i8, ptr %12, i64 %8
  %24 = add nuw nsw i64 %11, 1
  %25 = icmp eq i64 %24, %9
  br i1 %25, label %26, label %10, !llvm.loop !201

26:                                               ; preds = %10, %4
  ret void
}

; Function Attrs: mustprogress norecurse optsize uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nocapture noundef readonly %1) #24 {
  %3 = alloca %struct.AudioFormatDescription, align 8
  %4 = alloca %struct.AudioFormatDescription, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = getelementptr inbounds ptr, ptr %1, i64 1
  %9 = load ptr, ptr %8, align 8, !tbaa !63
  %10 = getelementptr inbounds ptr, ptr %1, i64 2
  %11 = load ptr, ptr %10, align 8, !tbaa !63
  %12 = icmp sgt i32 %0, 1
  br i1 %12, label %13, label %95

13:                                               ; preds = %2
  %14 = zext i32 %0 to i64
  br label %19

15:                                               ; preds = %46, %43
  %16 = phi ptr [ %47, %46 ], [ %35, %43 ]
  %17 = add nuw nsw i64 %20, 1
  %18 = icmp eq i64 %17, %14
  br i1 %18, label %52, label %19, !llvm.loop !202

19:                                               ; preds = %15, %13
  %20 = phi i64 [ 1, %13 ], [ %17, %15 ]
  %21 = phi ptr [ null, %13 ], [ %16, %15 ]
  %22 = phi ptr [ null, %13 ], [ %44, %15 ]
  %23 = getelementptr inbounds ptr, ptr %1, i64 %20
  %24 = load ptr, ptr %23, align 8, !tbaa !63
  %25 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %24, ptr noundef nonnull dereferenceable(3) @.str.45) #36
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %95, label %27

27:                                               ; preds = %19
  %28 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(2) @.str.1.46) #36
  %29 = icmp eq i32 %28, 0
  %30 = load ptr, ptr @stdin, align 8
  %31 = select i1 %29, ptr %30, ptr %22
  %32 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %11, ptr noundef nonnull dereferenceable(2) @.str.1.46) #36
  %33 = icmp eq i32 %32, 0
  %34 = load ptr, ptr @stdout, align 8
  %35 = select i1 %33, ptr %34, ptr %21
  %36 = icmp eq ptr %31, null
  br i1 %36, label %37, label %43

37:                                               ; preds = %27
  %38 = tail call noalias ptr @fopen(ptr noundef %9, ptr noundef nonnull @.str.2.47) #31
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = load ptr, ptr @stderr, align 8, !tbaa !63
  %42 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %41, ptr noundef nonnull @.str.3, ptr noundef %9) #37
  tail call void @exit(i32 noundef 1) #38
  unreachable

43:                                               ; preds = %37, %27
  %44 = phi ptr [ %38, %37 ], [ %31, %27 ]
  %45 = icmp eq ptr %35, null
  br i1 %45, label %46, label %15

46:                                               ; preds = %43
  %47 = tail call noalias ptr @fopen(ptr noundef %11, ptr noundef nonnull @.str.4) #31
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %15

49:                                               ; preds = %46
  %50 = load ptr, ptr @stderr, align 8, !tbaa !63
  %51 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %50, ptr noundef nonnull @.str.3, ptr noundef %11) #37
  tail call void @exit(i32 noundef 1) #38
  unreachable

52:                                               ; preds = %15
  %.lcssa2 = phi ptr [ %16, %15 ]
  %.lcssa1 = phi ptr [ %44, %15 ]
  br i1 %12, label %53, label %95

53:                                               ; preds = %52
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #34
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #34
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #34
  store i32 0, ptr %5, align 4, !tbaa !46
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #34
  store i32 0, ptr %6, align 4, !tbaa !46
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #34
  store i32 0, ptr %7, align 4, !tbaa !46
  %54 = call noundef i32 @_Z14GetInputFormatP8_IO_FILEP22AudioFormatDescriptionPj(ptr noundef nonnull %.lcssa1, ptr noundef nonnull %3, ptr noundef nonnull %7) #31
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %53
  %57 = load ptr, ptr @stderr, align 8, !tbaa !63
  %58 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %57, ptr noundef nonnull @.str.5, ptr noundef %9) #37
  call void @exit(i32 noundef 1) #38
  unreachable

59:                                               ; preds = %53
  %60 = load i32, ptr %7, align 4
  switch i32 %60, label %61 [
    i32 1667327590, label %64
    i32 1463899717, label %64
  ]

61:                                               ; preds = %59
  %62 = load ptr, ptr @stderr, align 8, !tbaa !63
  %63 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %62, ptr noundef nonnull @.str.6, ptr noundef %11) #37
  call void @exit(i32 noundef 1) #38
  unreachable

64:                                               ; preds = %59, %59
  %65 = getelementptr inbounds %struct.AudioFormatDescription, ptr %3, i64 0, i32 1
  %66 = load i32, ptr %65, align 8
  switch i32 %66, label %67 [
    i32 1819304813, label %70
    i32 1634492771, label %70
  ]

67:                                               ; preds = %64
  %68 = load ptr, ptr @stderr, align 8, !tbaa !63
  %69 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %68, ptr noundef nonnull @.str.7, ptr noundef %11) #37
  call void @exit(i32 noundef 1) #38
  unreachable

70:                                               ; preds = %64, %64
  %71 = call noundef i32 @_Z15SetOutputFormat22AudioFormatDescriptionPS_(ptr noundef nonnull byval(%struct.AudioFormatDescription) align 8 %3, ptr noundef nonnull %4) #31
  %72 = call noundef i32 @_Z13FindDataStartP8_IO_FILEjPiS1_(ptr noundef nonnull %.lcssa1, i32 noundef %60, ptr noundef nonnull %5, ptr noundef nonnull %6) #31, !range !203
  %73 = load i32, ptr %5, align 4, !tbaa !46
  %74 = sext i32 %73 to i64
  %75 = call i32 @fseek(ptr noundef nonnull %.lcssa1, i64 noundef %74, i32 noundef 0) #31
  %76 = getelementptr inbounds %struct.AudioFormatDescription, ptr %4, i64 0, i32 1
  %77 = load i32, ptr %76, align 8, !tbaa !111
  %78 = icmp eq i32 %77, 1634492771
  br i1 %78, label %79, label %82

79:                                               ; preds = %70
  %80 = load i32, ptr %6, align 4, !tbaa !46
  %81 = call noundef i32 @_Z10EncodeALACP8_IO_FILES0_22AudioFormatDescriptionS1_i(ptr noundef nonnull %.lcssa1, ptr noundef nonnull %.lcssa2, ptr noundef nonnull byval(%struct.AudioFormatDescription) align 8 %3, ptr noundef nonnull byval(%struct.AudioFormatDescription) align 8 %4, i32 noundef %80) #31
  br label %102

82:                                               ; preds = %70
  %83 = load i32, ptr %7, align 4, !tbaa !46
  %84 = icmp ne i32 %83, 1463899717
  %85 = getelementptr inbounds %struct.AudioFormatDescription, ptr %4, i64 0, i32 6
  %86 = load i32, ptr %85, align 4
  %87 = icmp ugt i32 %86, 2
  %88 = select i1 %84, i1 %87, i1 false
  br i1 %88, label %89, label %92

89:                                               ; preds = %82
  %90 = load ptr, ptr @stderr, align 8, !tbaa !63
  %91 = call i64 @fwrite(ptr nonnull @.str.8, i64 46, i64 1, ptr %90) #39
  call void @exit(i32 noundef 1) #38
  unreachable

92:                                               ; preds = %82
  %93 = select i1 %84, i32 1463899717, i32 1667327590
  %94 = call noundef i32 @_Z10DecodeALACP8_IO_FILES0_22AudioFormatDescriptionS1_ij(ptr noundef nonnull %.lcssa1, ptr noundef nonnull %.lcssa2, ptr noundef nonnull byval(%struct.AudioFormatDescription) align 8 %3, ptr noundef nonnull byval(%struct.AudioFormatDescription) align 8 %4, i32 poison, i32 noundef %93) #31
  br label %102

95:                                               ; preds = %52, %19, %2
  %96 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %97 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.15)
  %98 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.16)
  %99 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.17)
  %100 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.18)
  %101 = tail call i32 @putchar(i32 10)
  br label %105

102:                                              ; preds = %92, %79
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #34
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #34
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #34
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #34
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #34
  %103 = call i32 @fclose(ptr noundef nonnull %.lcssa1) #31
  %104 = call i32 @fclose(ptr noundef nonnull %.lcssa2) #31
  br label %105

105:                                              ; preds = %102, %95
  %106 = phi i32 [ 1, %95 ], [ 0, %102 ]
  ret i32 %106
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #25

; Function Attrs: nofree nounwind optsize
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #18

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #18

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32 noundef) local_unnamed_addr #26

; Function Attrs: mustprogress optsize uwtable
define internal noundef i32 @_Z14GetInputFormatP8_IO_FILEP22AudioFormatDescriptionPj(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2) #12 {
  %4 = alloca [20 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #34
  %5 = call i64 @fread(ptr noundef nonnull %4, i64 noundef 1, i64 noundef 4, ptr noundef %0) #31
  %6 = load i8, ptr %4, align 16, !tbaa !37
  %7 = icmp eq i8 %6, 99
  %8 = getelementptr inbounds [20 x i8], ptr %4, i64 0, i64 1
  %9 = load i8, ptr %8, align 1
  %10 = icmp eq i8 %9, 97
  %11 = select i1 %7, i1 %10, i1 false
  br i1 %11, label %12, label %24

12:                                               ; preds = %3
  %13 = getelementptr inbounds [20 x i8], ptr %4, i64 0, i64 2
  %14 = load i8, ptr %13, align 2, !tbaa !37
  %15 = icmp eq i8 %14, 102
  %16 = getelementptr inbounds [20 x i8], ptr %4, i64 0, i64 3
  %17 = load i8, ptr %16, align 1, !tbaa !37
  %18 = icmp eq i8 %17, 102
  %19 = and i1 %15, %18
  br i1 %19, label %20, label %104

20:                                               ; preds = %12
  store i32 1667327590, ptr %2, align 4, !tbaa !46
  %21 = tail call noundef zeroext i1 @_Z17GetCAFFdescFormatP8_IO_FILEP22AudioFormatDescription(ptr noundef %0, ptr noundef %1) #31
  %22 = xor i1 %21, true
  %23 = sext i1 %22 to i32
  br label %105

24:                                               ; preds = %3
  %25 = icmp eq i8 %6, 82
  %26 = icmp eq i8 %9, 73
  %27 = select i1 %25, i1 %26, i1 false
  br i1 %27, label %28, label %104

28:                                               ; preds = %24
  %29 = getelementptr inbounds [20 x i8], ptr %4, i64 0, i64 2
  %30 = load i8, ptr %29, align 2, !tbaa !37
  %31 = icmp eq i8 %30, 70
  %32 = getelementptr inbounds [20 x i8], ptr %4, i64 0, i64 3
  %33 = load i8, ptr %32, align 1, !tbaa !37
  %34 = icmp eq i8 %33, 70
  %35 = and i1 %31, %34
  br i1 %35, label %36, label %104

36:                                               ; preds = %28
  %37 = call i64 @fread(ptr noundef nonnull %4, i64 noundef 1, i64 noundef 8, ptr noundef %0) #31
  %38 = getelementptr inbounds [20 x i8], ptr %4, i64 0, i64 4
  %39 = load i8, ptr %38, align 4, !tbaa !37
  %40 = icmp eq i8 %39, 87
  %41 = getelementptr inbounds [20 x i8], ptr %4, i64 0, i64 5
  %42 = load i8, ptr %41, align 1
  %43 = icmp eq i8 %42, 65
  %44 = select i1 %40, i1 %43, i1 false
  br i1 %44, label %45, label %103

45:                                               ; preds = %36
  %46 = getelementptr inbounds [20 x i8], ptr %4, i64 0, i64 6
  %47 = load i8, ptr %46, align 2, !tbaa !37
  %48 = icmp eq i8 %47, 86
  %49 = getelementptr inbounds [20 x i8], ptr %4, i64 0, i64 7
  %50 = load i8, ptr %49, align 1, !tbaa !37
  %51 = icmp eq i8 %50, 69
  %52 = and i1 %48, %51
  br i1 %52, label %53, label %103

53:                                               ; preds = %45
  store i32 1463899717, ptr %2, align 4, !tbaa !46
  %54 = getelementptr inbounds %struct.AudioFormatDescription, ptr %1, i64 0, i32 1
  %55 = getelementptr inbounds %struct.AudioFormatDescription, ptr %1, i64 0, i32 6
  %56 = getelementptr inbounds i8, ptr %4, i64 8
  %57 = getelementptr inbounds [20 x i8], ptr %4, i64 0, i64 18
  %58 = getelementptr inbounds %struct.AudioFormatDescription, ptr %1, i64 0, i32 7
  %59 = getelementptr inbounds %struct.AudioFormatDescription, ptr %1, i64 0, i32 2
  %60 = getelementptr inbounds %struct.AudioFormatDescription, ptr %1, i64 0, i32 5
  %61 = getelementptr inbounds %struct.AudioFormatDescription, ptr %1, i64 0, i32 3
  %62 = getelementptr inbounds %struct.AudioFormatDescription, ptr %1, i64 0, i32 4
  %63 = getelementptr inbounds %struct.AudioFormatDescription, ptr %1, i64 0, i32 8
  br label %64

64:                                               ; preds = %98, %53
  %65 = call i64 @fread(ptr noundef nonnull %4, i64 noundef 1, i64 noundef 4, ptr noundef %0) #31
  %66 = load i8, ptr %4, align 16, !tbaa !37
  %67 = zext i8 %66 to i32
  %68 = shl nuw i32 %67, 24
  %69 = load i8, ptr %8, align 1, !tbaa !37
  %70 = zext i8 %69 to i32
  %71 = shl nuw nsw i32 %70, 16
  %72 = or i32 %71, %68
  %73 = load i8, ptr %29, align 2, !tbaa !37
  %74 = zext i8 %73 to i32
  %75 = shl nuw nsw i32 %74, 8
  %76 = or i32 %72, %75
  %77 = load i8, ptr %32, align 1, !tbaa !37
  %78 = zext i8 %77 to i32
  %79 = or i32 %76, %78
  %80 = icmp eq i32 %79, 1718449184
  br i1 %80, label %81, label %98

81:                                               ; preds = %64
  %82 = call i64 @fread(ptr noundef nonnull %4, i64 noundef 1, i64 noundef 20, ptr noundef %0) #31
  %83 = load i8, ptr %38, align 4, !tbaa !37
  %84 = icmp ne i8 %83, 1
  %85 = load i8, ptr %41, align 1
  %86 = icmp ne i8 %85, 0
  %87 = select i1 %84, i1 true, i1 %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %81
  store i32 0, ptr %2, align 4, !tbaa !46
  br label %105

89:                                               ; preds = %81
  store i32 1819304813, ptr %54, align 8, !tbaa !111
  %90 = load i8, ptr %46, align 2, !tbaa !37
  %91 = zext i8 %90 to i32
  store i32 %91, ptr %55, align 4, !tbaa !98
  %92 = load i32, ptr %56, align 8
  %93 = uitofp i32 %92 to double
  store double %93, ptr %1, align 8, !tbaa !104
  %94 = load i8, ptr %57, align 2, !tbaa !37
  %95 = zext i8 %94 to i32
  store i32 %95, ptr %58, align 8, !tbaa !112
  store i32 12, ptr %59, align 4, !tbaa !107
  %96 = lshr i32 %95, 3
  %97 = mul nuw nsw i32 %96, %91
  store i32 %97, ptr %60, align 8, !tbaa !204
  store i32 %97, ptr %61, align 8, !tbaa !94
  store i32 1, ptr %62, align 4, !tbaa !205
  store i32 0, ptr %63, align 4, !tbaa !206
  br label %105

98:                                               ; preds = %64
  %99 = call i64 @fread(ptr noundef nonnull %4, i64 noundef 1, i64 noundef 4, ptr noundef %0) #31
  %100 = load i32, ptr %4, align 16
  %101 = zext i32 %100 to i64
  %102 = tail call i32 @fseek(ptr noundef %0, i64 noundef %101, i32 noundef 1) #31
  br label %64, !llvm.loop !207

103:                                              ; preds = %45, %36
  store i32 0, ptr %2, align 4, !tbaa !46
  br label %105

104:                                              ; preds = %28, %24, %12
  store i32 0, ptr %2, align 4, !tbaa !46
  br label %105

105:                                              ; preds = %104, %103, %89, %88, %20
  %106 = phi i32 [ -1, %103 ], [ -1, %104 ], [ -1, %88 ], [ %23, %20 ], [ 0, %89 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #34
  ret i32 %106
}

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal noundef i32 @_Z15SetOutputFormat22AudioFormatDescriptionPS_(ptr nocapture noundef readonly byval(%struct.AudioFormatDescription) align 8 %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = getelementptr inbounds %struct.AudioFormatDescription, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !111
  %5 = icmp eq i32 %4, 1819304813
  %6 = getelementptr inbounds %struct.AudioFormatDescription, ptr %1, i64 0, i32 1
  br i1 %5, label %7, label %32

7:                                                ; preds = %2
  store i32 1634492771, ptr %6, align 8, !tbaa !111
  %8 = load double, ptr %0, align 8, !tbaa !104
  store double %8, ptr %1, align 8, !tbaa !104
  %9 = getelementptr inbounds %struct.AudioFormatDescription, ptr %0, i64 0, i32 7
  %10 = load i32, ptr %9, align 8, !tbaa !112
  %11 = add i32 %10, -16
  %12 = tail call i32 @llvm.fshl.i32(i32 %10, i32 %11, i32 30)
  %13 = icmp ult i32 %12, 5
  br i1 %13, label %14, label %62

14:                                               ; preds = %7
  %15 = trunc i32 %12 to i8
  %16 = lshr i8 23, %15
  %17 = and i8 %16, 1
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %62, label %19

19:                                               ; preds = %14
  %20 = sext i32 %12 to i64
  %21 = getelementptr inbounds [5 x i32], ptr @switch.table._Z15SetOutputFormat22AudioFormatDescriptionPS_, i64 0, i64 %20
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds %struct.AudioFormatDescription, ptr %1, i64 0, i32 2
  store i32 %22, ptr %23, align 4, !tbaa !107
  %24 = getelementptr inbounds %struct.AudioFormatDescription, ptr %1, i64 0, i32 4
  store i32 4096, ptr %24, align 4, !tbaa !205
  %25 = getelementptr inbounds %struct.AudioFormatDescription, ptr %0, i64 0, i32 6
  %26 = load i32, ptr %25, align 4, !tbaa !98
  %27 = getelementptr inbounds %struct.AudioFormatDescription, ptr %1, i64 0, i32 6
  store i32 %26, ptr %27, align 4, !tbaa !98
  %28 = getelementptr inbounds %struct.AudioFormatDescription, ptr %1, i64 0, i32 8
  store i32 0, ptr %28, align 4, !tbaa !206
  %29 = getelementptr inbounds %struct.AudioFormatDescription, ptr %1, i64 0, i32 7
  store i32 0, ptr %29, align 8, !tbaa !112
  %30 = getelementptr inbounds %struct.AudioFormatDescription, ptr %1, i64 0, i32 5
  store i32 0, ptr %30, align 8, !tbaa !204
  %31 = getelementptr inbounds %struct.AudioFormatDescription, ptr %1, i64 0, i32 3
  store i32 0, ptr %31, align 8, !tbaa !94
  br label %62

32:                                               ; preds = %2
  store i32 1819304813, ptr %6, align 8, !tbaa !111
  %33 = load double, ptr %0, align 8, !tbaa !104
  store double %33, ptr %1, align 8, !tbaa !104
  %34 = getelementptr inbounds %struct.AudioFormatDescription, ptr %0, i64 0, i32 2
  %35 = load i32, ptr %34, align 4, !tbaa !107
  switch i32 %35, label %62 [
    i32 1, label %38
    i32 2, label %47
    i32 3, label %36
    i32 4, label %37
  ]

36:                                               ; preds = %32
  br label %38

37:                                               ; preds = %32
  br label %38

38:                                               ; preds = %37, %36, %32
  %39 = phi i32 [ 32, %37 ], [ 24, %36 ], [ 16, %32 ]
  %40 = phi i32 [ %35, %37 ], [ %35, %36 ], [ 2, %32 ]
  %41 = getelementptr inbounds %struct.AudioFormatDescription, ptr %1, i64 0, i32 7
  store i32 %39, ptr %41, align 8, !tbaa !112
  %42 = getelementptr inbounds %struct.AudioFormatDescription, ptr %1, i64 0, i32 4
  store i32 1, ptr %42, align 4, !tbaa !205
  %43 = getelementptr inbounds %struct.AudioFormatDescription, ptr %0, i64 0, i32 6
  %44 = load i32, ptr %43, align 4, !tbaa !98
  %45 = getelementptr inbounds %struct.AudioFormatDescription, ptr %1, i64 0, i32 6
  store i32 %44, ptr %45, align 4, !tbaa !98
  %46 = mul i32 %40, %44
  br label %56

47:                                               ; preds = %32
  %48 = getelementptr inbounds %struct.AudioFormatDescription, ptr %1, i64 0, i32 7
  store i32 20, ptr %48, align 8, !tbaa !112
  %49 = getelementptr inbounds %struct.AudioFormatDescription, ptr %1, i64 0, i32 4
  store i32 1, ptr %49, align 4, !tbaa !205
  %50 = getelementptr inbounds %struct.AudioFormatDescription, ptr %0, i64 0, i32 6
  %51 = load i32, ptr %50, align 4, !tbaa !98
  %52 = getelementptr inbounds %struct.AudioFormatDescription, ptr %1, i64 0, i32 6
  store i32 %51, ptr %52, align 4, !tbaa !98
  %53 = uitofp i32 %51 to double
  %54 = tail call double @llvm.fmuladd.f64(double %53, double 2.500000e+00, double 5.000000e-01)
  %55 = fptosi double %54 to i32
  br label %56

56:                                               ; preds = %47, %38
  %57 = phi i32 [ %46, %38 ], [ %55, %47 ]
  %58 = getelementptr inbounds %struct.AudioFormatDescription, ptr %1, i64 0, i32 5
  store i32 %57, ptr %58, align 8, !tbaa !204
  %59 = getelementptr inbounds %struct.AudioFormatDescription, ptr %1, i64 0, i32 3
  store i32 %57, ptr %59, align 8, !tbaa !94
  %60 = getelementptr inbounds %struct.AudioFormatDescription, ptr %1, i64 0, i32 2
  store i32 0, ptr %60, align 4, !tbaa !107
  %61 = getelementptr inbounds %struct.AudioFormatDescription, ptr %1, i64 0, i32 8
  store i32 0, ptr %61, align 4, !tbaa !206
  br label %62

62:                                               ; preds = %56, %32, %19, %14, %7
  %63 = phi i32 [ -1, %7 ], [ -1, %32 ], [ 0, %56 ], [ 0, %19 ], [ -1, %14 ]
  ret i32 %63
}

; Function Attrs: mustprogress optsize uwtable
define internal noundef i32 @_Z13FindDataStartP8_IO_FILEjPiS1_(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) #12 {
  %5 = alloca [12 x i8], align 1
  %6 = tail call i64 @ftell(ptr noundef %0) #31
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #34
  switch i32 %1, label %49 [
    i32 1463899717, label %7
    i32 1667327590, label %45
  ]

7:                                                ; preds = %4
  %8 = tail call i32 @fseek(ptr noundef %0, i64 noundef 0, i32 noundef 0) #31
  %9 = call i64 @fread(ptr noundef nonnull %5, i64 noundef 1, i64 noundef 8, ptr noundef %0) #31
  %10 = getelementptr inbounds i8, ptr %5, i64 4
  %11 = load i32, ptr %10, align 1
  %12 = tail call i32 @fseek(ptr noundef %0, i64 noundef 12, i32 noundef 0) #31
  %13 = getelementptr inbounds [12 x i8], ptr %5, i64 0, i64 1
  %14 = getelementptr inbounds [12 x i8], ptr %5, i64 0, i64 2
  %15 = getelementptr inbounds [12 x i8], ptr %5, i64 0, i64 3
  br label %16

16:                                               ; preds = %41, %7
  %17 = tail call i64 @ftell(ptr noundef %0) #31
  %18 = trunc i64 %17 to i32
  %19 = icmp ugt i32 %11, %18
  br i1 %19, label %20, label %49

20:                                               ; preds = %16
  %21 = call i64 @fread(ptr noundef nonnull %5, i64 noundef 1, i64 noundef 8, ptr noundef %0) #31
  %22 = load i8, ptr %5, align 1, !tbaa !37
  %23 = zext i8 %22 to i32
  %24 = shl nuw i32 %23, 24
  %25 = load i8, ptr %13, align 1, !tbaa !37
  %26 = zext i8 %25 to i32
  %27 = shl nuw nsw i32 %26, 16
  %28 = or i32 %27, %24
  %29 = load i8, ptr %14, align 1, !tbaa !37
  %30 = zext i8 %29 to i32
  %31 = shl nuw nsw i32 %30, 8
  %32 = or i32 %28, %31
  %33 = load i8, ptr %15, align 1, !tbaa !37
  %34 = zext i8 %33 to i32
  %35 = or i32 %32, %34
  %36 = icmp eq i32 %35, 1684108385
  br i1 %36, label %37, label %41

37:                                               ; preds = %20
  %38 = tail call i64 @ftell(ptr noundef %0) #31
  %39 = trunc i64 %38 to i32
  store i32 %39, ptr %2, align 4, !tbaa !46
  %40 = load i32, ptr %10, align 1
  store i32 %40, ptr %3, align 4, !tbaa !46
  br label %49

41:                                               ; preds = %20
  %42 = load i32, ptr %10, align 1
  %43 = zext i32 %42 to i64
  %44 = tail call i32 @fseek(ptr noundef %0, i64 noundef %43, i32 noundef 1) #31
  br label %16, !llvm.loop !208

45:                                               ; preds = %4
  %46 = tail call noundef zeroext i1 @_Z17FindCAFFDataStartP8_IO_FILEPiS1_(ptr noundef %0, ptr noundef %2, ptr noundef %3) #31
  %47 = xor i1 %46, true
  %48 = sext i1 %47 to i32
  br label %49

49:                                               ; preds = %45, %37, %16, %4
  %50 = phi i32 [ -1, %4 ], [ %48, %45 ], [ 0, %37 ], [ -1, %16 ]
  %51 = shl i64 %6, 32
  %52 = ashr exact i64 %51, 32
  %53 = tail call i32 @fseek(ptr noundef %0, i64 noundef %52, i32 noundef 0) #31
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #34
  ret i32 %50
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fseek(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #18

; Function Attrs: mustprogress optsize uwtable
define internal noundef i32 @_Z10EncodeALACP8_IO_FILES0_22AudioFormatDescriptionS1_i(ptr nocapture noundef %0, ptr noundef %1, ptr noundef byval(%struct.AudioFormatDescription) align 8 %2, ptr noundef byval(%struct.AudioFormatDescription) align 8 %3, i32 noundef %4) #12 personality ptr @__gxx_personality_v0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.port_CAFPacketTableHeader, align 1
  %10 = alloca i32, align 4
  %11 = getelementptr inbounds %struct.AudioFormatDescription, ptr %2, i64 0, i32 6
  %12 = load i32, ptr %11, align 4, !tbaa !98
  %13 = getelementptr inbounds %struct.AudioFormatDescription, ptr %2, i64 0, i32 7
  %14 = load i32, ptr %13, align 8, !tbaa !112
  %15 = lshr i32 %14, 3
  %16 = mul i32 %15, %12
  %17 = getelementptr inbounds %struct.AudioFormatDescription, ptr %3, i64 0, i32 4
  %18 = load i32, ptr %17, align 4, !tbaa !205
  %19 = mul i32 %16, %18
  %20 = add nsw i32 %19, 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #34
  store i32 0, ptr %6, align 4, !tbaa !46
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #34
  store i32 0, ptr %7, align 4, !tbaa !46
  %21 = sext i32 %19 to i64
  %22 = tail call noalias ptr @calloc(i64 noundef %21, i64 noundef 1) #33
  %23 = sext i32 %20 to i64
  %24 = tail call noalias ptr @calloc(i64 noundef %23, i64 noundef 1) #33
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #34
  store i32 0, ptr %8, align 4, !tbaa !46
  call void @llvm.lifetime.start.p0(i64 25, ptr nonnull %9) #34
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #34
  %25 = tail call noalias noundef nonnull dereferenceable(8304) ptr @_Znwm(i64 noundef 8304) #40
  invoke void @_ZN11ALACEncoderC1Ev(ptr noundef nonnull align 8 dereferenceable(8300) %25) #31
          to label %26 unwind label %44

26:                                               ; preds = %5
  %27 = getelementptr inbounds %class.ALACEncoder, ptr %25, i64 0, i32 17
  store i32 %18, ptr %27, align 4, !tbaa !108
  %28 = load ptr, ptr %25, align 8, !tbaa !82
  %29 = getelementptr inbounds ptr, ptr %28, i64 4
  %30 = load ptr, ptr %29, align 8
  %31 = tail call noundef i32 %30(ptr noundef nonnull align 8 dereferenceable(8300) %25, ptr noundef nonnull byval(%struct.AudioFormatDescription) align 8 %3) #31
  tail call void @_Z18WriteCAFFcaffChunkP8_IO_FILE(ptr noundef %1) #31
  tail call void @_Z18WriteCAFFdescChunkP8_IO_FILE22AudioFormatDescription(ptr noundef %1, ptr noundef nonnull byval(%struct.AudioFormatDescription) align 8 %3) #31
  %32 = getelementptr inbounds %struct.AudioFormatDescription, ptr %3, i64 0, i32 6
  %33 = load i32, ptr %32, align 4, !tbaa !98
  %34 = tail call noundef i32 @_ZN11ALACEncoder18GetMagicCookieSizeEj(ptr noundef nonnull align 8 dereferenceable(8300) %25, i32 noundef %33) #31
  store i32 %34, ptr %10, align 4, !tbaa !46
  %35 = zext i32 %34 to i64
  %36 = tail call noalias ptr @calloc(i64 noundef %35, i64 noundef 1) #33
  call void @_ZN11ALACEncoder14GetMagicCookieEPvPj(ptr noundef nonnull align 8 dereferenceable(8300) %25, ptr noundef %36, ptr noundef nonnull %10) #31
  %37 = load i32, ptr %10, align 4, !tbaa !46
  call void @_Z18WriteCAFFkukiChunkP8_IO_FILEPvj(ptr noundef %1, ptr noundef %36, i32 noundef %37) #31
  call void @free(ptr noundef %36) #32
  %38 = icmp ugt i32 %33, 2
  br i1 %38, label %39, label %46

39:                                               ; preds = %26
  %40 = add i32 %33, -1
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds [8 x i32], ptr @_ZL21ALACChannelLayoutTags.48, i64 0, i64 %41
  %43 = load i32, ptr %42, align 4, !tbaa !46
  call void @_Z18WriteCAFFchanChunkP8_IO_FILEj(ptr noundef %1, i32 noundef %43) #31
  br label %46

44:                                               ; preds = %5
  %45 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %25) #35
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #34
  call void @llvm.lifetime.end.p0(i64 25, ptr nonnull %9) #34
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #34
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #34
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #34
  resume { ptr, i32 } %45

46:                                               ; preds = %39, %26
  %47 = call noundef i32 @_Z20BuildBasePacketTable22AudioFormatDescriptioniPiP25port_CAFPacketTableHeader(ptr noundef nonnull byval(%struct.AudioFormatDescription) align 8 %2, i32 noundef %4, ptr noundef nonnull %6, ptr noundef nonnull %9) #31
  %48 = load i32, ptr %6, align 4, !tbaa !46
  %49 = sext i32 %48 to i64
  %50 = call noalias ptr @calloc(i64 noundef %49, i64 noundef 1) #33
  %51 = add nsw i32 %48, 24
  store i32 %51, ptr %6, align 4, !tbaa !46
  call void @_Z24WriteCAFFpaktChunkHeaderP8_IO_FILEP25port_CAFPacketTableHeaderj(ptr noundef %1, ptr noundef nonnull %9, i32 noundef %51) #31
  %52 = call i64 @ftell(ptr noundef %1) #31
  %53 = trunc i64 %52 to i32
  %54 = load i32, ptr %6, align 4, !tbaa !46
  %55 = add nsw i32 %54, -24
  store i32 %55, ptr %6, align 4, !tbaa !46
  %56 = sext i32 %55 to i64
  %57 = call i64 @fwrite(ptr noundef %50, i64 noundef 1, i64 noundef %56, ptr noundef %1) #31
  call void @free(ptr noundef %50) #32
  %58 = call i64 @ftell(ptr noundef %1) #31
  call void @_Z18WriteCAFFdataChunkP8_IO_FILE(ptr noundef %1) #31
  %59 = call i64 @ftell(ptr noundef %1) #31
  %60 = trunc i64 %59 to i32
  %61 = icmp sgt i32 %19, %4
  br i1 %61, label %130, label %62

62:                                               ; preds = %46
  %63 = getelementptr inbounds %struct.AudioFormatDescription, ptr %2, i64 0, i32 2
  %64 = load i32, ptr %63, align 4
  %65 = and i32 %64, 2
  %66 = icmp eq i32 %65, 0
  br label %67

67:                                               ; preds = %106, %62
  %68 = phi i32 [ %53, %62 ], [ %118, %106 ]
  %69 = phi i32 [ %60, %62 ], [ %126, %106 ]
  %70 = phi i32 [ %48, %62 ], [ %119, %106 ]
  %71 = phi i64 [ 0, %62 ], [ %128, %106 ]
  %72 = phi i32 [ %4, %62 ], [ %75, %106 ]
  %73 = call i64 @fread(ptr noundef %22, i64 noundef 1, i64 noundef %21, ptr noundef %0) #31
  %74 = trunc i64 %73 to i32
  store i32 %74, ptr %8, align 4, !tbaa !46
  %75 = sub nsw i32 %72, %74
  br i1 %66, label %106, label %76

76:                                               ; preds = %67
  switch i32 %14, label %81 [
    i32 16, label %79
    i32 32, label %77
  ]

77:                                               ; preds = %76
  %78 = icmp sgt i32 %74, 3
  br i1 %78, label %91, label %106

79:                                               ; preds = %76
  %80 = icmp sgt i32 %74, 1
  br i1 %80, label %83, label %106

81:                                               ; preds = %76
  %82 = icmp sgt i32 %74, 0
  br i1 %82, label %99, label %106

83:                                               ; preds = %83, %79
  %84 = phi i64 [ %86, %83 ], [ 0, %79 ]
  %85 = getelementptr inbounds i16, ptr %22, i64 %84
  call void @Swap16(ptr noundef %85) #31
  %86 = add nuw nsw i64 %84, 1
  %87 = load i32, ptr %8, align 4, !tbaa !46
  %88 = ashr i32 %87, 1
  %89 = sext i32 %88 to i64
  %90 = icmp slt i64 %86, %89
  br i1 %90, label %83, label %106, !llvm.loop !209

91:                                               ; preds = %91, %77
  %92 = phi i64 [ %94, %91 ], [ 0, %77 ]
  %93 = getelementptr inbounds i32, ptr %22, i64 %92
  call void @Swap32(ptr noundef %93) #31
  %94 = add nuw nsw i64 %92, 1
  %95 = load i32, ptr %8, align 4, !tbaa !46
  %96 = ashr i32 %95, 2
  %97 = sext i32 %96 to i64
  %98 = icmp slt i64 %94, %97
  br i1 %98, label %91, label %106, !llvm.loop !210

99:                                               ; preds = %99, %81
  %100 = phi i64 [ %102, %99 ], [ 0, %81 ]
  %101 = getelementptr inbounds i8, ptr %22, i64 %100
  call void @Swap24(ptr noundef %101) #31
  %102 = add nuw i64 %100, 3
  %103 = load i32, ptr %8, align 4, !tbaa !46
  %104 = trunc i64 %102 to i32
  %105 = icmp sgt i32 %103, %104
  br i1 %105, label %99, label %106, !llvm.loop !211

106:                                              ; preds = %99, %91, %83, %81, %79, %77, %67
  %107 = load ptr, ptr %25, align 8, !tbaa !82
  %108 = getelementptr inbounds ptr, ptr %107, i64 2
  %109 = load ptr, ptr %108, align 8
  %110 = call noundef i32 %109(ptr noundef nonnull align 8 dereferenceable(8300) %25, ptr noundef nonnull byval(%struct.AudioFormatDescription) align 8 %2, ptr noundef nonnull byval(%struct.AudioFormatDescription) align 8 %2, ptr noundef %22, ptr noundef %24, ptr noundef nonnull %8) #31
  %111 = load i32, ptr %8, align 4, !tbaa !46
  call void @_Z13GetBERIntegeriPhPi(i32 noundef %111, ptr noundef %22, ptr noundef nonnull %7) #31
  %112 = sext i32 %68 to i64
  %113 = call i32 @fseek(ptr noundef %1, i64 noundef %112, i32 noundef 0) #31
  %114 = load i32, ptr %7, align 4, !tbaa !46
  %115 = sext i32 %114 to i64
  %116 = call i64 @fwrite(ptr noundef %22, i64 noundef 1, i64 noundef %115, ptr noundef %1) #31
  %117 = load i32, ptr %7, align 4, !tbaa !46
  %118 = add nsw i32 %117, %68
  %119 = sub i32 %70, %117
  %120 = sext i32 %69 to i64
  %121 = call i32 @fseek(ptr noundef %1, i64 noundef %120, i32 noundef 0) #31
  %122 = load i32, ptr %8, align 4, !tbaa !46
  %123 = sext i32 %122 to i64
  %124 = call i64 @fwrite(ptr noundef %24, i64 noundef 1, i64 noundef %123, ptr noundef %1) #31
  %125 = load i32, ptr %8, align 4, !tbaa !46
  %126 = add nsw i32 %125, %69
  %127 = sext i32 %125 to i64
  %128 = add nsw i64 %71, %127
  %129 = icmp sgt i32 %19, %75
  br i1 %129, label %130, label %67, !llvm.loop !212

130:                                              ; preds = %106, %46
  %131 = phi i32 [ %4, %46 ], [ %75, %106 ]
  %132 = phi i64 [ 0, %46 ], [ %128, %106 ]
  %133 = phi i32 [ %48, %46 ], [ %119, %106 ]
  %134 = phi i32 [ %60, %46 ], [ %126, %106 ]
  %135 = phi i32 [ %53, %46 ], [ %118, %106 ]
  %136 = icmp eq i32 %131, 0
  br i1 %136, label %197, label %137

137:                                              ; preds = %130
  %138 = sext i32 %131 to i64
  %139 = call i64 @fread(ptr noundef %22, i64 noundef 1, i64 noundef %138, ptr noundef %0) #31
  %140 = trunc i64 %139 to i32
  store i32 %140, ptr %8, align 4, !tbaa !46
  %141 = getelementptr inbounds %struct.AudioFormatDescription, ptr %2, i64 0, i32 2
  %142 = load i32, ptr %141, align 4, !tbaa !107
  %143 = and i32 %142, 2
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %175, label %145

145:                                              ; preds = %137
  switch i32 %14, label %150 [
    i32 16, label %148
    i32 32, label %146
  ]

146:                                              ; preds = %145
  %147 = icmp sgt i32 %140, 3
  br i1 %147, label %160, label %175

148:                                              ; preds = %145
  %149 = icmp sgt i32 %140, 1
  br i1 %149, label %152, label %175

150:                                              ; preds = %145
  %151 = icmp sgt i32 %140, 0
  br i1 %151, label %168, label %175

152:                                              ; preds = %152, %148
  %153 = phi i64 [ %155, %152 ], [ 0, %148 ]
  %154 = getelementptr inbounds i16, ptr %22, i64 %153
  call void @Swap16(ptr noundef %154) #31
  %155 = add nuw nsw i64 %153, 1
  %156 = load i32, ptr %8, align 4, !tbaa !46
  %157 = ashr i32 %156, 1
  %158 = sext i32 %157 to i64
  %159 = icmp slt i64 %155, %158
  br i1 %159, label %152, label %175, !llvm.loop !213

160:                                              ; preds = %160, %146
  %161 = phi i64 [ %163, %160 ], [ 0, %146 ]
  %162 = getelementptr inbounds i32, ptr %22, i64 %161
  call void @Swap32(ptr noundef %162) #31
  %163 = add nuw nsw i64 %161, 1
  %164 = load i32, ptr %8, align 4, !tbaa !46
  %165 = ashr i32 %164, 2
  %166 = sext i32 %165 to i64
  %167 = icmp slt i64 %163, %166
  br i1 %167, label %160, label %175, !llvm.loop !214

168:                                              ; preds = %168, %150
  %169 = phi i64 [ %171, %168 ], [ 0, %150 ]
  %170 = getelementptr inbounds i8, ptr %22, i64 %169
  call void @Swap24(ptr noundef %170) #31
  %171 = add nuw i64 %169, 3
  %172 = load i32, ptr %8, align 4, !tbaa !46
  %173 = trunc i64 %171 to i32
  %174 = icmp sgt i32 %172, %173
  br i1 %174, label %168, label %175, !llvm.loop !215

175:                                              ; preds = %168, %160, %152, %150, %148, %146, %137
  %176 = load ptr, ptr %25, align 8, !tbaa !82
  %177 = getelementptr inbounds ptr, ptr %176, i64 2
  %178 = load ptr, ptr %177, align 8
  %179 = call noundef i32 %178(ptr noundef nonnull align 8 dereferenceable(8300) %25, ptr noundef nonnull byval(%struct.AudioFormatDescription) align 8 %2, ptr noundef nonnull byval(%struct.AudioFormatDescription) align 8 %2, ptr noundef %22, ptr noundef %24, ptr noundef nonnull %8) #31
  %180 = load i32, ptr %8, align 4, !tbaa !46
  call void @_Z13GetBERIntegeriPhPi(i32 noundef %180, ptr noundef %22, ptr noundef nonnull %7) #31
  %181 = sext i32 %135 to i64
  %182 = call i32 @fseek(ptr noundef %1, i64 noundef %181, i32 noundef 0) #31
  %183 = load i32, ptr %7, align 4, !tbaa !46
  %184 = sext i32 %183 to i64
  %185 = call i64 @fwrite(ptr noundef %22, i64 noundef 1, i64 noundef %184, ptr noundef %1) #31
  %186 = load i32, ptr %7, align 4, !tbaa !46
  %187 = add nsw i32 %186, %135
  %188 = sub i32 %133, %186
  %189 = sext i32 %134 to i64
  %190 = call i32 @fseek(ptr noundef %1, i64 noundef %189, i32 noundef 0) #31
  %191 = load i32, ptr %8, align 4, !tbaa !46
  %192 = sext i32 %191 to i64
  %193 = call i64 @fwrite(ptr noundef %24, i64 noundef 1, i64 noundef %192, ptr noundef %1) #31
  %194 = load i32, ptr %8, align 4, !tbaa !46
  %195 = sext i32 %194 to i64
  %196 = add nsw i64 %132, %195
  br label %197

197:                                              ; preds = %175, %130
  %198 = phi i64 [ %196, %175 ], [ %132, %130 ]
  %199 = phi i32 [ %188, %175 ], [ %133, %130 ]
  %200 = phi i32 [ %187, %175 ], [ %135, %130 ]
  %201 = icmp ugt i32 %199, 12
  br i1 %201, label %202, label %213

202:                                              ; preds = %197
  %203 = sext i32 %200 to i64
  %204 = call i32 @fseek(ptr noundef %1, i64 noundef %203, i32 noundef 0) #31
  call void @_Z18WriteCAFFfreeChunkP8_IO_FILEj(ptr noundef %1, i32 noundef %199) #31
  %205 = shl i64 %52, 32
  %206 = add i64 %205, -137438953472
  %207 = ashr exact i64 %206, 32
  %208 = call i32 @fseek(ptr noundef %1, i64 noundef %207, i32 noundef 0) #31
  %209 = load i32, ptr %6, align 4, !tbaa !46
  %210 = sub i32 %209, %199
  %211 = add i32 %210, 24
  %212 = zext i32 %211 to i64
  call void @_Z18WriteCAFFChunkSizeP8_IO_FILEl(ptr noundef %1, i64 noundef %212) #31
  br label %213

213:                                              ; preds = %202, %197
  %214 = shl i64 %58, 32
  %215 = add i64 %214, 17179869184
  %216 = ashr exact i64 %215, 32
  %217 = call i32 @fseek(ptr noundef %1, i64 noundef %216, i32 noundef 0) #31
  %218 = add nsw i64 %198, 4
  call void @_Z18WriteCAFFChunkSizeP8_IO_FILEl(ptr noundef %1, i64 noundef %218) #31
  %219 = load ptr, ptr %25, align 8, !tbaa !82
  %220 = getelementptr inbounds ptr, ptr %219, i64 1
  %221 = load ptr, ptr %220, align 8
  call void %221(ptr noundef nonnull align 8 dereferenceable(8300) %25) #32
  call void @free(ptr noundef %22) #32
  call void @free(ptr noundef %24) #32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #34
  call void @llvm.lifetime.end.p0(i64 25, ptr nonnull %9) #34
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #34
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #34
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #34
  ret i32 0
}

; Function Attrs: nofree nounwind optsize
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #18

; Function Attrs: mustprogress optsize uwtable
define internal noundef i32 @_Z10DecodeALACP8_IO_FILES0_22AudioFormatDescriptionS1_ij(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly byval(%struct.AudioFormatDescription) align 8 %2, ptr noundef byval(%struct.AudioFormatDescription) align 8 %3, i32 %4, i32 noundef %5) #12 personality ptr @__gxx_personality_v0 {
  %7 = alloca [4 x i8], align 1
  %8 = alloca [4 x i8], align 1
  %9 = alloca [8 x i8], align 8
  %10 = alloca [24 x i8], align 16
  %11 = alloca [12 x i8], align 1
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.BitBuffer, align 8
  %17 = alloca i32, align 4
  %18 = getelementptr inbounds %struct.AudioFormatDescription, ptr %2, i64 0, i32 6
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.AudioFormatDescription, ptr %3, i64 0, i32 7
  %21 = load i32, ptr %20, align 8
  %22 = lshr i32 %21, 3
  %23 = mul i32 %22, %19
  %24 = getelementptr inbounds %struct.AudioFormatDescription, ptr %2, i64 0, i32 4
  %25 = load i32, ptr %24, align 4
  %26 = mul i32 %23, %25
  %27 = add i32 %26, 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #34
  store i32 0, ptr %12, align 4, !tbaa !46
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #34
  store i32 0, ptr %13, align 4, !tbaa !46
  %28 = sext i32 %27 to i64
  %29 = tail call noalias ptr @calloc(i64 noundef %28, i64 noundef 1) #33
  %30 = sext i32 %26 to i64
  %31 = tail call noalias ptr @calloc(i64 noundef %30, i64 noundef 1) #33
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #34
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #34
  store i32 0, ptr %15, align 4, !tbaa !46
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %16) #34
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %17) #34
  %32 = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #40
  invoke void @_ZN11ALACDecoderC1Ev(ptr noundef nonnull align 8 dereferenceable(64) %32) #31
          to label %33 unwind label %52

33:                                               ; preds = %6
  %34 = tail call noundef i32 @_Z30GetMagicCookieSizeFromCAFFkukiP8_IO_FILE(ptr noundef %0) #31
  store i32 %34, ptr %17, align 4, !tbaa !46
  %35 = zext i32 %34 to i64
  %36 = tail call noalias ptr @calloc(i64 noundef %35, i64 noundef 1) #33
  %37 = call noundef i32 @_Z26GetMagicCookieFromCAFFkukiP8_IO_FILEPhPj(ptr noundef %0, ptr noundef %36, ptr noundef nonnull %17) #31
  %38 = load i32, ptr %17, align 4, !tbaa !46
  %39 = call noundef i32 @_ZN11ALACDecoder4InitEPvj(ptr noundef nonnull align 8 dereferenceable(64) %32, ptr noundef %36, i32 noundef %38) #31
  call void @free(ptr noundef %36) #32
  call void @BitBufferInit(ptr noundef nonnull %16, ptr noundef %29, i32 noundef %27) #31
  %40 = call i64 @ftell(ptr noundef %0) #31
  %41 = trunc i64 %40 to i32
  %42 = icmp eq i32 %5, 1463899717
  br i1 %42, label %57, label %43

43:                                               ; preds = %33
  call void @_Z18WriteCAFFcaffChunkP8_IO_FILE(ptr noundef %1) #31
  call void @_Z18WriteCAFFdescChunkP8_IO_FILE22AudioFormatDescription(ptr noundef %1, ptr noundef nonnull byval(%struct.AudioFormatDescription) align 8 %3) #31
  %44 = getelementptr inbounds %struct.AudioFormatDescription, ptr %3, i64 0, i32 6
  %45 = load i32, ptr %44, align 4, !tbaa !98
  %46 = icmp ugt i32 %45, 2
  br i1 %46, label %47, label %54

47:                                               ; preds = %43
  %48 = add i32 %45, -1
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds [8 x i32], ptr @_ZL21ALACChannelLayoutTags.48, i64 0, i64 %49
  %51 = load i32, ptr %50, align 4, !tbaa !46
  call void @_Z18WriteCAFFchanChunkP8_IO_FILEj(ptr noundef %1, i32 noundef %51) #31
  br label %54

52:                                               ; preds = %6
  %53 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %32) #35
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %17) #34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %16) #34
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #34
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #34
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #34
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #34
  resume { ptr, i32 } %53

54:                                               ; preds = %47, %43
  %55 = call i64 @ftell(ptr noundef %1) #31
  %56 = add i64 %55, 4
  call void @_Z18WriteCAFFdataChunkP8_IO_FILE(ptr noundef %1) #31
  br label %98

57:                                               ; preds = %33
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #34
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %11, ptr noundef nonnull align 1 dereferenceable(12) @__const._Z18WriteWAVERIFFChunkP8_IO_FILE.theReadBuffer, i64 12, i1 false)
  %58 = call i64 @fwrite(ptr noundef nonnull %11, i64 noundef 1, i64 noundef 12, ptr noundef %1) #31
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #34
  %59 = load double, ptr %3, align 8, !tbaa.struct !216
  %60 = getelementptr inbounds i8, ptr %3, i64 24
  %61 = load i32, ptr %60, align 8, !tbaa.struct !218
  %62 = getelementptr inbounds i8, ptr %3, i64 28
  %63 = load i32, ptr %62, align 4, !tbaa.struct !51
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #34
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %10, ptr noundef nonnull align 16 dereferenceable(24) @__const._Z17WriteWAVEfmtChunkP8_IO_FILE22AudioFormatDescription.theBuffer, i64 24, i1 false)
  %64 = fptoui double %59 to i32
  %65 = mul i32 %61, %64
  %66 = trunc i32 %63 to i8
  %67 = getelementptr inbounds [24 x i8], ptr %10, i64 0, i64 10
  store i8 %66, ptr %67, align 2, !tbaa !37
  %68 = trunc i32 %64 to i8
  %69 = getelementptr inbounds [24 x i8], ptr %10, i64 0, i64 12
  store i8 %68, ptr %69, align 4, !tbaa !37
  %70 = lshr i32 %64, 8
  %71 = trunc i32 %70 to i8
  %72 = getelementptr inbounds [24 x i8], ptr %10, i64 0, i64 13
  store i8 %71, ptr %72, align 1, !tbaa !37
  %73 = lshr i32 %64, 16
  %74 = trunc i32 %73 to i8
  %75 = getelementptr inbounds [24 x i8], ptr %10, i64 0, i64 14
  store i8 %74, ptr %75, align 2, !tbaa !37
  %76 = lshr i32 %64, 24
  %77 = trunc i32 %76 to i8
  %78 = getelementptr inbounds [24 x i8], ptr %10, i64 0, i64 15
  store i8 %77, ptr %78, align 1, !tbaa !37
  %79 = trunc i32 %65 to i8
  %80 = getelementptr inbounds [24 x i8], ptr %10, i64 0, i64 16
  store i8 %79, ptr %80, align 16, !tbaa !37
  %81 = lshr i32 %65, 8
  %82 = trunc i32 %81 to i8
  %83 = getelementptr inbounds [24 x i8], ptr %10, i64 0, i64 17
  store i8 %82, ptr %83, align 1, !tbaa !37
  %84 = lshr i32 %65, 16
  %85 = trunc i32 %84 to i8
  %86 = getelementptr inbounds [24 x i8], ptr %10, i64 0, i64 18
  store i8 %85, ptr %86, align 2, !tbaa !37
  %87 = lshr i32 %65, 24
  %88 = trunc i32 %87 to i8
  %89 = getelementptr inbounds [24 x i8], ptr %10, i64 0, i64 19
  store i8 %88, ptr %89, align 1, !tbaa !37
  %90 = trunc i32 %61 to i8
  %91 = getelementptr inbounds [24 x i8], ptr %10, i64 0, i64 20
  store i8 %90, ptr %91, align 4, !tbaa !37
  %92 = trunc i32 %21 to i8
  %93 = getelementptr inbounds [24 x i8], ptr %10, i64 0, i64 22
  store i8 %92, ptr %93, align 2, !tbaa !37
  %94 = call i64 @fwrite(ptr noundef nonnull %10, i64 noundef 1, i64 noundef 24, ptr noundef %1) #31
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #34
  store i64 1635017060, ptr %9, align 8
  %95 = call i64 @fwrite(ptr noundef nonnull %9, i64 noundef 1, i64 noundef 8, ptr noundef %1) #31
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #34
  %96 = call i64 @ftell(ptr noundef %1) #31
  %97 = add i64 %96, -4
  br label %98

98:                                               ; preds = %57, %54
  %99 = phi i64 [ %56, %54 ], [ %97, %57 ]
  %100 = call noundef i32 @_Z24FindCAFFPacketTableStartP8_IO_FILEPiS1_(ptr noundef %0, ptr noundef nonnull %13, ptr noundef nonnull %12) #31
  %101 = load i32, ptr %13, align 4, !tbaa !46
  %102 = sext i32 %101 to i64
  %103 = call i32 @fseek(ptr noundef %0, i64 noundef %102, i32 noundef 0) #31
  %104 = call i64 @fread(ptr noundef %29, i64 noundef 1, i64 noundef 5, ptr noundef %0) #31
  %105 = trunc i64 %104 to i32
  store i32 %105, ptr %14, align 4, !tbaa !46
  %106 = call noundef i32 @_Z14ReadBERIntegerPhPi(ptr noundef %29, ptr noundef nonnull %14) #31
  %107 = load i32, ptr %14, align 4, !tbaa !46
  %108 = load i32, ptr %13, align 4, !tbaa !46
  %109 = add nsw i32 %108, %107
  store i32 %109, ptr %13, align 4, !tbaa !46
  %110 = shl i64 %40, 32
  %111 = ashr exact i64 %110, 32
  %112 = call i32 @fseek(ptr noundef %0, i64 noundef %111, i32 noundef 0) #31
  %113 = icmp sgt i32 %106, 0
  br i1 %113, label %114, label %147

114:                                              ; preds = %98
  %115 = add nsw i32 %106, %41
  %116 = getelementptr inbounds %struct.AudioFormatDescription, ptr %3, i64 0, i32 5
  %117 = load i32, ptr %116, align 8
  br label %118

118:                                              ; preds = %125, %114
  %119 = phi i32 [ %106, %114 ], [ %139, %125 ]
  %120 = phi i32 [ %115, %114 ], [ %145, %125 ]
  %121 = phi i64 [ 0, %114 ], [ %133, %125 ]
  %122 = zext i32 %119 to i64
  %123 = call i64 @fread(ptr noundef %29, i64 noundef 1, i64 noundef %122, ptr noundef %0) #31
  %124 = icmp eq i64 %123, %122
  br i1 %124, label %125, label %147

125:                                              ; preds = %118
  %126 = call noundef i32 @_ZN11ALACDecoder6DecodeEP9BitBufferPhjjPj(ptr noundef nonnull align 8 dereferenceable(64) %32, ptr noundef nonnull %16, ptr noundef %31, i32 noundef %25, i32 noundef %19, ptr noundef nonnull %15) #31
  %127 = load i32, ptr %15, align 4, !tbaa !46
  %128 = mul i32 %117, %127
  store i32 %128, ptr %14, align 4, !tbaa !46
  %129 = sext i32 %128 to i64
  %130 = call i64 @fwrite(ptr noundef %31, i64 noundef 1, i64 noundef %129, ptr noundef %1) #31
  %131 = load i32, ptr %14, align 4, !tbaa !46
  %132 = sext i32 %131 to i64
  %133 = add nsw i64 %121, %132
  %134 = load i32, ptr %13, align 4, !tbaa !46
  %135 = sext i32 %134 to i64
  %136 = call i32 @fseek(ptr noundef %0, i64 noundef %135, i32 noundef 0) #31
  %137 = call i64 @fread(ptr noundef %29, i64 noundef 1, i64 noundef 5, ptr noundef %0) #31
  %138 = trunc i64 %137 to i32
  store i32 %138, ptr %14, align 4, !tbaa !46
  %139 = call noundef i32 @_Z14ReadBERIntegerPhPi(ptr noundef %29, ptr noundef nonnull %14) #31
  %140 = load i32, ptr %14, align 4, !tbaa !46
  %141 = load i32, ptr %13, align 4, !tbaa !46
  %142 = add nsw i32 %141, %140
  store i32 %142, ptr %13, align 4, !tbaa !46
  %143 = sext i32 %120 to i64
  %144 = call i32 @fseek(ptr noundef %0, i64 noundef %143, i32 noundef 0) #31
  %145 = add nsw i32 %139, %120
  call void @BitBufferReset(ptr noundef nonnull %16) #31
  %146 = icmp sgt i32 %139, 0
  br i1 %146, label %118, label %147, !llvm.loop !219

147:                                              ; preds = %125, %118, %98
  %148 = phi i64 [ 0, %98 ], [ %133, %125 ], [ %121, %118 ]
  %149 = shl i64 %99, 32
  %150 = ashr exact i64 %149, 32
  %151 = call i32 @fseek(ptr noundef %1, i64 noundef %150, i32 noundef 0) #31
  br i1 %42, label %154, label %152

152:                                              ; preds = %147
  %153 = add nsw i64 %148, 4
  call void @_Z18WriteCAFFChunkSizeP8_IO_FILEl(ptr noundef %1, i64 noundef %153) #31
  br label %180

154:                                              ; preds = %147
  %155 = trunc i64 %148 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #34
  %156 = trunc i64 %148 to i8
  store i8 %156, ptr %8, align 1, !tbaa !37
  %157 = lshr i64 %148, 8
  %158 = trunc i64 %157 to i8
  %159 = getelementptr inbounds [4 x i8], ptr %8, i64 0, i64 1
  store i8 %158, ptr %159, align 1, !tbaa !37
  %160 = lshr i64 %148, 16
  %161 = trunc i64 %160 to i8
  %162 = getelementptr inbounds [4 x i8], ptr %8, i64 0, i64 2
  store i8 %161, ptr %162, align 1, !tbaa !37
  %163 = lshr i64 %148, 24
  %164 = trunc i64 %163 to i8
  %165 = getelementptr inbounds [4 x i8], ptr %8, i64 0, i64 3
  store i8 %164, ptr %165, align 1, !tbaa !37
  %166 = call i64 @fwrite(ptr noundef nonnull %8, i64 noundef 1, i64 noundef 4, ptr noundef %1) #31
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #34
  %167 = call i32 @fseek(ptr noundef %1, i64 noundef 4, i32 noundef 0) #31
  %168 = add i32 %155, 36
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #34
  %169 = trunc i32 %168 to i8
  store i8 %169, ptr %7, align 1, !tbaa !37
  %170 = lshr i32 %168, 8
  %171 = trunc i32 %170 to i8
  %172 = getelementptr inbounds [4 x i8], ptr %7, i64 0, i64 1
  store i8 %171, ptr %172, align 1, !tbaa !37
  %173 = lshr i32 %168, 16
  %174 = trunc i32 %173 to i8
  %175 = getelementptr inbounds [4 x i8], ptr %7, i64 0, i64 2
  store i8 %174, ptr %175, align 1, !tbaa !37
  %176 = lshr i32 %168, 24
  %177 = trunc i32 %176 to i8
  %178 = getelementptr inbounds [4 x i8], ptr %7, i64 0, i64 3
  store i8 %177, ptr %178, align 1, !tbaa !37
  %179 = call i64 @fwrite(ptr noundef nonnull %7, i64 noundef 1, i64 noundef 4, ptr noundef %1) #31
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #34
  br label %180

180:                                              ; preds = %154, %152
  call void @_ZN11ALACDecoderD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %32) #32
  call void @_ZdlPv(ptr noundef nonnull %32) #35
  call void @free(ptr noundef %29) #32
  call void @free(ptr noundef %31) #32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %17) #34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %16) #34
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #34
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #34
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #34
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #34
  ret i32 0
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #27

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #27

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #18

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin optsize allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #28

; Function Attrs: nofree nounwind optsize
declare noundef i64 @ftell(ptr nocapture noundef) local_unnamed_addr #18

; Function Attrs: nofree nounwind optsize
declare noundef i64 @fread(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: mustprogress nofree nounwind optsize uwtable
define internal noundef i32 @_Z24FindCAFFPacketTableStartP8_IO_FILEPiS1_(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) #29 {
  %4 = alloca [12 x i8], align 1
  %5 = tail call i64 @ftell(ptr noundef %0) #31
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #34
  %6 = tail call i32 @fseek(ptr noundef %0, i64 noundef 8, i32 noundef 0) #31
  %7 = getelementptr inbounds [12 x i8], ptr %4, i64 0, i64 1
  %8 = getelementptr inbounds [12 x i8], ptr %4, i64 0, i64 2
  %9 = getelementptr inbounds [12 x i8], ptr %4, i64 0, i64 3
  %10 = getelementptr inbounds [12 x i8], ptr %4, i64 0, i64 8
  %11 = getelementptr inbounds [12 x i8], ptr %4, i64 0, i64 9
  %12 = getelementptr inbounds [12 x i8], ptr %4, i64 0, i64 10
  %13 = getelementptr inbounds [12 x i8], ptr %4, i64 0, i64 11
  br label %14

14:                                               ; preds = %49, %3
  %15 = call i64 @fread(ptr noundef nonnull %4, i64 noundef 1, i64 noundef 12, ptr noundef %0) #31
  %16 = load i8, ptr %4, align 1, !tbaa !37
  %17 = zext i8 %16 to i32
  %18 = shl nuw i32 %17, 24
  %19 = load i8, ptr %7, align 1, !tbaa !37
  %20 = zext i8 %19 to i32
  %21 = shl nuw nsw i32 %20, 16
  %22 = or i32 %21, %18
  %23 = load i8, ptr %8, align 1, !tbaa !37
  %24 = zext i8 %23 to i32
  %25 = shl nuw nsw i32 %24, 8
  %26 = or i32 %22, %25
  %27 = load i8, ptr %9, align 1, !tbaa !37
  %28 = zext i8 %27 to i32
  %29 = or i32 %26, %28
  %30 = icmp eq i32 %29, 1885432692
  br i1 %30, label %31, label %49

31:                                               ; preds = %14
  %32 = tail call i64 @ftell(ptr noundef %0) #31
  %33 = trunc i64 %32 to i32
  %34 = add i32 %33, 24
  store i32 %34, ptr %1, align 4, !tbaa !46
  %35 = load i8, ptr %10, align 1, !tbaa !37
  %36 = zext i8 %35 to i32
  %37 = shl nuw i32 %36, 24
  %38 = load i8, ptr %11, align 1, !tbaa !37
  %39 = zext i8 %38 to i32
  %40 = shl nuw nsw i32 %39, 16
  %41 = or i32 %40, %37
  %42 = load i8, ptr %12, align 1, !tbaa !37
  %43 = zext i8 %42 to i32
  %44 = shl nuw nsw i32 %43, 8
  %45 = or i32 %41, %44
  %46 = load i8, ptr %13, align 1, !tbaa !37
  %47 = zext i8 %46 to i32
  %48 = or i32 %45, %47
  store i32 %48, ptr %2, align 4, !tbaa !46
  br label %67

49:                                               ; preds = %14
  %50 = trunc i64 %15 to i32
  %51 = load i8, ptr %10, align 1, !tbaa !37
  %52 = zext i8 %51 to i64
  %53 = shl nuw nsw i64 %52, 24
  %54 = load i8, ptr %11, align 1, !tbaa !37
  %55 = zext i8 %54 to i64
  %56 = shl nuw nsw i64 %55, 16
  %57 = or i64 %56, %53
  %58 = load i8, ptr %12, align 1, !tbaa !37
  %59 = zext i8 %58 to i64
  %60 = shl nuw nsw i64 %59, 8
  %61 = or i64 %57, %60
  %62 = load i8, ptr %13, align 1, !tbaa !37
  %63 = zext i8 %62 to i64
  %64 = or i64 %61, %63
  %65 = tail call i32 @fseek(ptr noundef %0, i64 noundef %64, i32 noundef 1) #31
  %66 = icmp sgt i32 %50, 0
  br i1 %66, label %14, label %67, !llvm.loop !220

67:                                               ; preds = %49, %31
  %68 = shl i64 %5, 32
  %69 = ashr exact i64 %68, 32
  %70 = tail call i32 @fseek(ptr noundef %0, i64 noundef %69, i32 noundef 0) #31
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #34
  ret i32 0
}

; Function Attrs: mustprogress nofree nounwind optsize uwtable
define internal void @_Z18WriteCAFFcaffChunkP8_IO_FILE(ptr nocapture noundef %0) #29 {
  %2 = alloca [8 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #34
  store i64 1101229613411, ptr %2, align 8
  %3 = call i64 @fwrite(ptr noundef nonnull %2, i64 noundef 1, i64 noundef 8, ptr noundef %0) #31
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #34
  ret void
}

; Function Attrs: mustprogress optsize uwtable
define internal void @_Z18WriteCAFFdescChunkP8_IO_FILE22AudioFormatDescription(ptr nocapture noundef %0, ptr nocapture noundef readonly byval(%struct.AudioFormatDescription) align 8 %1) #12 {
  %3 = alloca %struct.port_CAFAudioDescription, align 8
  %4 = alloca [12 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #34
  %5 = getelementptr inbounds %struct.AudioFormatDescription, ptr %1, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !107
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #34
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %4, ptr noundef nonnull align 1 dereferenceable(12) @__const._Z18WriteCAFFdescChunkP8_IO_FILE22AudioFormatDescription.theReadBuffer, i64 11, i1 false)
  %7 = getelementptr inbounds %struct.AudioFormatDescription, ptr %1, i64 0, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !111
  %9 = icmp eq i32 %8, 1819304813
  %10 = select i1 %9, i32 2, i32 %6
  %11 = load double, ptr %1, align 8, !tbaa !104
  %12 = tail call double @SwapFloat64NtoB(double noundef %11) #31
  store double %12, ptr %3, align 8, !tbaa !221
  %13 = tail call i32 @Swap32NtoB(i32 noundef %8) #31
  %14 = getelementptr inbounds %struct.port_CAFAudioDescription, ptr %3, i64 0, i32 1
  store i32 %13, ptr %14, align 8, !tbaa !223
  %15 = tail call i32 @Swap32NtoB(i32 noundef %10) #31
  %16 = getelementptr inbounds %struct.port_CAFAudioDescription, ptr %3, i64 0, i32 2
  store i32 %15, ptr %16, align 4, !tbaa !224
  %17 = getelementptr inbounds %struct.AudioFormatDescription, ptr %1, i64 0, i32 3
  %18 = load i32, ptr %17, align 8, !tbaa !94
  %19 = tail call i32 @Swap32NtoB(i32 noundef %18) #31
  %20 = getelementptr inbounds %struct.port_CAFAudioDescription, ptr %3, i64 0, i32 3
  store i32 %19, ptr %20, align 8, !tbaa !225
  %21 = getelementptr inbounds %struct.AudioFormatDescription, ptr %1, i64 0, i32 4
  %22 = load i32, ptr %21, align 4, !tbaa !205
  %23 = tail call i32 @Swap32NtoB(i32 noundef %22) #31
  %24 = getelementptr inbounds %struct.port_CAFAudioDescription, ptr %3, i64 0, i32 4
  store i32 %23, ptr %24, align 4, !tbaa !226
  %25 = getelementptr inbounds %struct.AudioFormatDescription, ptr %1, i64 0, i32 6
  %26 = load i32, ptr %25, align 4, !tbaa !98
  %27 = tail call i32 @Swap32NtoB(i32 noundef %26) #31
  %28 = getelementptr inbounds %struct.port_CAFAudioDescription, ptr %3, i64 0, i32 5
  store i32 %27, ptr %28, align 8, !tbaa !227
  %29 = getelementptr inbounds %struct.AudioFormatDescription, ptr %1, i64 0, i32 7
  %30 = load i32, ptr %29, align 8, !tbaa !112
  %31 = tail call i32 @Swap32NtoB(i32 noundef %30) #31
  %32 = getelementptr inbounds %struct.port_CAFAudioDescription, ptr %3, i64 0, i32 6
  store i32 %31, ptr %32, align 4, !tbaa !228
  %33 = getelementptr inbounds [12 x i8], ptr %4, i64 0, i64 11
  store i8 32, ptr %33, align 1, !tbaa !37
  %34 = call i64 @fwrite(ptr noundef nonnull %4, i64 noundef 1, i64 noundef 12, ptr noundef %0) #31
  %35 = call i64 @fwrite(ptr noundef nonnull %3, i64 noundef 1, i64 noundef 32, ptr noundef %0) #31
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #34
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #34
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize uwtable
define internal void @_Z18WriteCAFFdataChunkP8_IO_FILE(ptr nocapture noundef %0) #29 {
  %2 = alloca [16 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #34
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %2, ptr noundef nonnull align 16 dereferenceable(16) @__const._Z18WriteCAFFdataChunkP8_IO_FILE.theReadBuffer, i64 16, i1 false)
  %3 = call i64 @fwrite(ptr noundef nonnull %2, i64 noundef 1, i64 noundef 16, ptr noundef %0) #31
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #34
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize uwtable
define internal void @_Z18WriteCAFFkukiChunkP8_IO_FILEPvj(ptr nocapture noundef %0, ptr nocapture noundef %1, i32 noundef %2) #29 {
  %4 = alloca [12 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #34
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %4, ptr noundef nonnull align 1 dereferenceable(12) @__const._Z18WriteCAFFkukiChunkP8_IO_FILEPvj.thekukiHeaderBuffer, i64 11, i1 false)
  %5 = trunc i32 %2 to i8
  %6 = getelementptr inbounds [12 x i8], ptr %4, i64 0, i64 11
  store i8 %5, ptr %6, align 1, !tbaa !37
  %7 = call i64 @fwrite(ptr noundef nonnull %4, i64 noundef 1, i64 noundef 12, ptr noundef %0) #31
  %8 = zext i32 %2 to i64
  %9 = tail call i64 @fwrite(ptr noundef %1, i64 noundef 1, i64 noundef %8, ptr noundef %0) #31
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #34
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize uwtable
define internal void @_Z18WriteCAFFChunkSizeP8_IO_FILEl(ptr nocapture noundef %0, i64 noundef %1) #29 {
  %3 = alloca [8 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #34
  %4 = lshr i64 %1, 56
  %5 = trunc i64 %4 to i8
  store i8 %5, ptr %3, align 1, !tbaa !37
  %6 = lshr i64 %1, 48
  %7 = trunc i64 %6 to i8
  %8 = getelementptr inbounds [8 x i8], ptr %3, i64 0, i64 1
  store i8 %7, ptr %8, align 1, !tbaa !37
  %9 = lshr i64 %1, 40
  %10 = trunc i64 %9 to i8
  %11 = getelementptr inbounds [8 x i8], ptr %3, i64 0, i64 2
  store i8 %10, ptr %11, align 1, !tbaa !37
  %12 = lshr i64 %1, 32
  %13 = trunc i64 %12 to i8
  %14 = getelementptr inbounds [8 x i8], ptr %3, i64 0, i64 3
  store i8 %13, ptr %14, align 1, !tbaa !37
  %15 = lshr i64 %1, 24
  %16 = trunc i64 %15 to i8
  %17 = getelementptr inbounds [8 x i8], ptr %3, i64 0, i64 4
  store i8 %16, ptr %17, align 1, !tbaa !37
  %18 = lshr i64 %1, 16
  %19 = trunc i64 %18 to i8
  %20 = getelementptr inbounds [8 x i8], ptr %3, i64 0, i64 5
  store i8 %19, ptr %20, align 1, !tbaa !37
  %21 = lshr i64 %1, 8
  %22 = trunc i64 %21 to i8
  %23 = getelementptr inbounds [8 x i8], ptr %3, i64 0, i64 6
  store i8 %22, ptr %23, align 1, !tbaa !37
  %24 = trunc i64 %1 to i8
  %25 = getelementptr inbounds [8 x i8], ptr %3, i64 0, i64 7
  store i8 %24, ptr %25, align 1, !tbaa !37
  %26 = call i64 @fwrite(ptr noundef nonnull %3, i64 noundef 1, i64 noundef 8, ptr noundef %0) #31
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #34
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize uwtable
define internal void @_Z18WriteCAFFchanChunkP8_IO_FILEj(ptr nocapture noundef %0, i32 noundef %1) #29 {
  %3 = alloca [24 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #34
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %3, ptr noundef nonnull align 16 dereferenceable(24) @__const._Z18WriteCAFFchanChunkP8_IO_FILEj.theBuffer, i64 24, i1 false)
  %4 = getelementptr inbounds [24 x i8], ptr %3, i64 0, i64 11
  store i8 12, ptr %4, align 1, !tbaa !37
  %5 = lshr i32 %1, 24
  %6 = trunc i32 %5 to i8
  %7 = getelementptr inbounds [24 x i8], ptr %3, i64 0, i64 12
  store i8 %6, ptr %7, align 4, !tbaa !37
  %8 = lshr i32 %1, 16
  %9 = trunc i32 %8 to i8
  %10 = getelementptr inbounds [24 x i8], ptr %3, i64 0, i64 13
  store i8 %9, ptr %10, align 1, !tbaa !37
  %11 = lshr i32 %1, 8
  %12 = trunc i32 %11 to i8
  %13 = getelementptr inbounds [24 x i8], ptr %3, i64 0, i64 14
  store i8 %12, ptr %13, align 2, !tbaa !37
  %14 = trunc i32 %1 to i8
  %15 = getelementptr inbounds [24 x i8], ptr %3, i64 0, i64 15
  store i8 %14, ptr %15, align 1, !tbaa !37
  %16 = call i64 @fwrite(ptr noundef nonnull %3, i64 noundef 1, i64 noundef 24, ptr noundef %0) #31
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #34
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize uwtable
define internal void @_Z18WriteCAFFfreeChunkP8_IO_FILEj(ptr nocapture noundef %0, i32 noundef %1) #29 {
  %3 = alloca [12 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #34
  store i64 1701147238, ptr %3, align 8
  %4 = add i32 %1, -12
  %5 = icmp ugt i32 %1, 11
  br i1 %5, label %6, label %29

6:                                                ; preds = %2
  %7 = lshr i32 %4, 24
  %8 = trunc i32 %7 to i8
  %9 = getelementptr inbounds [12 x i8], ptr %3, i64 0, i64 8
  store i8 %8, ptr %9, align 8, !tbaa !37
  %10 = lshr i32 %4, 16
  %11 = trunc i32 %10 to i8
  %12 = getelementptr inbounds [12 x i8], ptr %3, i64 0, i64 9
  store i8 %11, ptr %12, align 1, !tbaa !37
  %13 = lshr i32 %4, 8
  %14 = trunc i32 %13 to i8
  %15 = getelementptr inbounds [12 x i8], ptr %3, i64 0, i64 10
  store i8 %14, ptr %15, align 2, !tbaa !37
  %16 = trunc i32 %4 to i8
  %17 = getelementptr inbounds [12 x i8], ptr %3, i64 0, i64 11
  store i8 %16, ptr %17, align 1, !tbaa !37
  %18 = call i64 @fwrite(ptr noundef nonnull %3, i64 noundef 1, i64 noundef 12, ptr noundef %0) #31
  %19 = icmp eq i32 %4, 0
  br i1 %19, label %29, label %20

20:                                               ; preds = %6
  %21 = getelementptr inbounds [12 x i8], ptr %3, i64 0, i64 4
  %22 = load i8, ptr %21, align 4
  %23 = sext i8 %22 to i32
  br label %24

24:                                               ; preds = %24, %20
  %25 = phi i32 [ 0, %20 ], [ %27, %24 ]
  %26 = tail call i32 @fputc(i32 %23, ptr %0)
  %27 = add nuw i32 %25, 1
  %28 = icmp eq i32 %27, %4
  br i1 %28, label %29, label %24, !llvm.loop !229

29:                                               ; preds = %24, %6, %2
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #34
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #27

; Function Attrs: mustprogress optsize uwtable
define internal void @_Z24WriteCAFFpaktChunkHeaderP8_IO_FILEP25port_CAFPacketTableHeaderj(ptr nocapture noundef %0, ptr nocapture noundef %1, i32 noundef %2) #12 {
  %4 = alloca [12 x i8], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #34
  %5 = load i64, ptr %1, align 1, !tbaa !230
  %6 = tail call i64 @Swap64NtoB(i64 noundef %5) #31
  store i64 %6, ptr %1, align 1, !tbaa !230
  %7 = getelementptr inbounds %struct.port_CAFPacketTableHeader, ptr %1, i64 0, i32 1
  %8 = load i64, ptr %7, align 1, !tbaa !233
  %9 = tail call i64 @Swap64NtoB(i64 noundef %8) #31
  store i64 %9, ptr %7, align 1, !tbaa !233
  %10 = getelementptr inbounds %struct.port_CAFPacketTableHeader, ptr %1, i64 0, i32 2
  %11 = load i32, ptr %10, align 1, !tbaa !234
  %12 = tail call i32 @Swap32NtoB(i32 noundef %11) #31
  store i32 %12, ptr %10, align 1, !tbaa !234
  %13 = getelementptr inbounds %struct.port_CAFPacketTableHeader, ptr %1, i64 0, i32 3
  %14 = load i32, ptr %13, align 1, !tbaa !235
  %15 = tail call i32 @Swap32NtoB(i32 noundef %14) #31
  store i32 %15, ptr %13, align 1, !tbaa !235
  store <4 x i8> <i8 112, i8 97, i8 107, i8 116>, ptr %4, align 4, !tbaa !37
  %16 = getelementptr inbounds [12 x i8], ptr %4, i64 0, i64 4
  %17 = lshr i32 %2, 24
  %18 = trunc i32 %17 to i8
  %19 = getelementptr inbounds [12 x i8], ptr %4, i64 0, i64 8
  store i32 0, ptr %16, align 4
  store i8 %18, ptr %19, align 4, !tbaa !37
  %20 = lshr i32 %2, 16
  %21 = trunc i32 %20 to i8
  %22 = getelementptr inbounds [12 x i8], ptr %4, i64 0, i64 9
  store i8 %21, ptr %22, align 1, !tbaa !37
  %23 = lshr i32 %2, 8
  %24 = trunc i32 %23 to i8
  %25 = getelementptr inbounds [12 x i8], ptr %4, i64 0, i64 10
  store i8 %24, ptr %25, align 2, !tbaa !37
  %26 = trunc i32 %2 to i8
  %27 = getelementptr inbounds [12 x i8], ptr %4, i64 0, i64 11
  store i8 %26, ptr %27, align 1, !tbaa !37
  %28 = call i64 @fwrite(ptr noundef nonnull %4, i64 noundef 1, i64 noundef 12, ptr noundef %0) #31
  %29 = tail call i64 @fwrite(ptr noundef nonnull %1, i64 noundef 1, i64 noundef 24, ptr noundef %0) #31
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #34
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal void @_Z13GetBERIntegeriPhPi(i32 noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) #4 {
  %4 = and i32 %0, 127
  %5 = icmp ult i32 %0, 128
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  store i32 1, ptr %2, align 4, !tbaa !46
  %7 = trunc i32 %0 to i8
  store i8 %7, ptr %1, align 1, !tbaa !37
  br label %59

8:                                                ; preds = %3
  %9 = icmp ult i32 %0, 16384
  br i1 %9, label %10, label %16

10:                                               ; preds = %8
  store i32 2, ptr %2, align 4, !tbaa !46
  %11 = lshr i32 %0, 7
  %12 = trunc i32 %11 to i8
  %13 = or i8 %12, -128
  store i8 %13, ptr %1, align 1, !tbaa !37
  %14 = trunc i32 %4 to i8
  %15 = getelementptr inbounds i8, ptr %1, i64 1
  store i8 %14, ptr %15, align 1, !tbaa !37
  br label %59

16:                                               ; preds = %8
  %17 = icmp ult i32 %0, 2097152
  br i1 %17, label %18, label %28

18:                                               ; preds = %16
  store i32 3, ptr %2, align 4, !tbaa !46
  %19 = lshr i32 %0, 14
  %20 = trunc i32 %19 to i8
  %21 = or i8 %20, -128
  store i8 %21, ptr %1, align 1, !tbaa !37
  %22 = lshr i32 %0, 7
  %23 = getelementptr inbounds i8, ptr %1, i64 1
  %24 = trunc i32 %22 to i8
  %25 = or i8 %24, -128
  store i8 %25, ptr %23, align 1, !tbaa !37
  %26 = trunc i32 %4 to i8
  %27 = getelementptr inbounds i8, ptr %1, i64 2
  store i8 %26, ptr %27, align 1, !tbaa !37
  br label %59

28:                                               ; preds = %16
  %29 = icmp ult i32 %0, 268435456
  %30 = getelementptr inbounds i8, ptr %1, i64 1
  %31 = getelementptr inbounds i8, ptr %1, i64 2
  %32 = getelementptr inbounds i8, ptr %1, i64 3
  br i1 %29, label %33, label %44

33:                                               ; preds = %28
  store i32 4, ptr %2, align 4, !tbaa !46
  %34 = lshr i32 %0, 21
  %35 = trunc i32 %34 to i8
  %36 = or i8 %35, -128
  store i8 %36, ptr %1, align 1, !tbaa !37
  %37 = lshr i32 %0, 14
  %38 = trunc i32 %37 to i8
  %39 = or i8 %38, -128
  store i8 %39, ptr %30, align 1, !tbaa !37
  %40 = lshr i32 %0, 7
  %41 = trunc i32 %40 to i8
  %42 = or i8 %41, -128
  store i8 %42, ptr %31, align 1, !tbaa !37
  %43 = trunc i32 %4 to i8
  store i8 %43, ptr %32, align 1, !tbaa !37
  br label %59

44:                                               ; preds = %28
  store i32 5, ptr %2, align 4, !tbaa !46
  %45 = ashr i32 %0, 28
  %46 = trunc i32 %45 to i8
  %47 = or i8 %46, -128
  store i8 %47, ptr %1, align 1, !tbaa !37
  %48 = lshr i32 %0, 21
  %49 = trunc i32 %48 to i8
  %50 = or i8 %49, -128
  store i8 %50, ptr %30, align 1, !tbaa !37
  %51 = lshr i32 %0, 14
  %52 = trunc i32 %51 to i8
  %53 = or i8 %52, -128
  store i8 %53, ptr %31, align 1, !tbaa !37
  %54 = lshr i32 %0, 7
  %55 = trunc i32 %54 to i8
  %56 = or i8 %55, -128
  store i8 %56, ptr %32, align 1, !tbaa !37
  %57 = trunc i32 %4 to i8
  %58 = getelementptr inbounds i8, ptr %1, i64 4
  store i8 %57, ptr %58, align 1, !tbaa !37
  br label %59

59:                                               ; preds = %44, %33, %18, %10, %6
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal noundef i32 @_Z14ReadBERIntegerPhPi(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #30 {
  br label %3

3:                                                ; preds = %16, %2
  %4 = phi i64 [ %12, %16 ], [ 0, %2 ]
  %5 = phi i32 [ %11, %16 ], [ 0, %2 ]
  %6 = getelementptr inbounds i8, ptr %0, i64 %4
  %7 = load i8, ptr %6, align 1, !tbaa !37
  %8 = shl i32 %5, 7
  %9 = and i8 %7, 127
  %10 = zext i8 %9 to i32
  %11 = or i32 %8, %10
  %12 = add nuw nsw i64 %4, 1
  %13 = icmp eq i64 %4, 5
  br i1 %13, label %22, label %14

14:                                               ; preds = %3
  %15 = icmp sgt i8 %7, -1
  br i1 %15, label %20, label %16

16:                                               ; preds = %14
  %17 = load i32, ptr %1, align 4, !tbaa !46
  %18 = sext i32 %17 to i64
  %19 = icmp slt i64 %4, %18
  br i1 %19, label %3, label %20, !llvm.loop !236

20:                                               ; preds = %16, %14
  %.lcssa3 = phi i32 [ %11, %16 ], [ %11, %14 ]
  %.lcssa1 = phi i64 [ %12, %16 ], [ %12, %14 ]
  %21 = trunc i64 %.lcssa1 to i32
  store i32 %21, ptr %1, align 4, !tbaa !46
  br label %22

22:                                               ; preds = %20, %3
  %23 = phi i32 [ %.lcssa3, %20 ], [ 0, %3 ]
  ret i32 %23
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal noundef i32 @_Z20BuildBasePacketTable22AudioFormatDescriptioniPiP25port_CAFPacketTableHeader(ptr nocapture noundef readonly byval(%struct.AudioFormatDescription) align 8 %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) #3 {
  %5 = getelementptr inbounds %struct.AudioFormatDescription, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !112
  %7 = lshr i32 %6, 3
  %8 = getelementptr inbounds %struct.AudioFormatDescription, ptr %0, i64 0, i32 6
  %9 = load i32, ptr %8, align 4, !tbaa !98
  %10 = mul i32 %7, %9
  %11 = udiv i32 %1, %10
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds %struct.port_CAFPacketTableHeader, ptr %3, i64 0, i32 1
  store i64 %12, ptr %13, align 1, !tbaa !233
  %14 = lshr i64 %12, 12
  %15 = getelementptr inbounds %struct.port_CAFPacketTableHeader, ptr %3, i64 0, i32 2
  store i32 0, ptr %15, align 1, !tbaa !234
  %16 = and i32 %11, 4095
  %17 = getelementptr inbounds %struct.port_CAFPacketTableHeader, ptr %3, i64 0, i32 3
  %18 = sub nuw nsw i32 4096, %16
  store i32 %18, ptr %17, align 1, !tbaa !235
  %19 = add nuw nsw i64 %14, 1
  store i64 %19, ptr %3, align 1, !tbaa !230
  %20 = shl i32 %10, 12
  %21 = or i32 %20, 8
  %22 = icmp slt i32 %21, 16384
  %23 = select i1 %22, i64 2, i64 3
  %24 = mul nuw nsw i64 %23, %19
  %25 = trunc i64 %24 to i32
  store i32 %25, ptr %2, align 4, !tbaa !46
  ret i32 0
}

; Function Attrs: mustprogress nofree nounwind optsize uwtable
define internal noundef i32 @_Z30GetMagicCookieSizeFromCAFFkukiP8_IO_FILE(ptr nocapture noundef %0) #29 {
  %2 = alloca [24 x i8], align 16
  %3 = tail call i64 @ftell(ptr noundef %0) #31
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #34
  %4 = tail call i32 @fseek(ptr noundef %0, i64 noundef 8, i32 noundef 0) #31
  %5 = getelementptr inbounds [24 x i8], ptr %2, i64 0, i64 1
  %6 = getelementptr inbounds [24 x i8], ptr %2, i64 0, i64 2
  %7 = getelementptr inbounds [24 x i8], ptr %2, i64 0, i64 3
  %8 = getelementptr inbounds [24 x i8], ptr %2, i64 0, i64 8
  %9 = getelementptr inbounds [24 x i8], ptr %2, i64 0, i64 9
  %10 = getelementptr inbounds [24 x i8], ptr %2, i64 0, i64 10
  %11 = getelementptr inbounds [24 x i8], ptr %2, i64 0, i64 11
  br label %12

12:                                               ; preds = %32, %1
  %13 = call i64 @fread(ptr noundef nonnull %2, i64 noundef 1, i64 noundef 12, ptr noundef %0) #31
  %14 = load i8, ptr %2, align 16, !tbaa !37
  %15 = zext i8 %14 to i32
  %16 = shl nuw i32 %15, 24
  %17 = load i8, ptr %5, align 1, !tbaa !37
  %18 = zext i8 %17 to i32
  %19 = shl nuw nsw i32 %18, 16
  %20 = or i32 %19, %16
  %21 = load i8, ptr %6, align 2, !tbaa !37
  %22 = zext i8 %21 to i32
  %23 = shl nuw nsw i32 %22, 8
  %24 = or i32 %20, %23
  %25 = load i8, ptr %7, align 1, !tbaa !37
  %26 = zext i8 %25 to i32
  %27 = or i32 %24, %26
  %28 = icmp eq i32 %27, 1802857321
  br i1 %28, label %29, label %32

29:                                               ; preds = %12
  %30 = load i8, ptr %11, align 1, !tbaa !37
  %31 = zext i8 %30 to i32
  br label %50

32:                                               ; preds = %12
  %33 = trunc i64 %13 to i32
  %34 = load i8, ptr %8, align 8, !tbaa !37
  %35 = zext i8 %34 to i64
  %36 = shl nuw nsw i64 %35, 24
  %37 = load i8, ptr %9, align 1, !tbaa !37
  %38 = zext i8 %37 to i64
  %39 = shl nuw nsw i64 %38, 16
  %40 = or i64 %39, %36
  %41 = load i8, ptr %10, align 2, !tbaa !37
  %42 = zext i8 %41 to i64
  %43 = shl nuw nsw i64 %42, 8
  %44 = or i64 %40, %43
  %45 = load i8, ptr %11, align 1, !tbaa !37
  %46 = zext i8 %45 to i64
  %47 = or i64 %44, %46
  %48 = tail call i32 @fseek(ptr noundef %0, i64 noundef %47, i32 noundef 1) #31
  %49 = icmp sgt i32 %33, 0
  br i1 %49, label %12, label %50, !llvm.loop !237

50:                                               ; preds = %32, %29
  %51 = phi i32 [ %31, %29 ], [ -1, %32 ]
  %52 = shl i64 %3, 32
  %53 = ashr exact i64 %52, 32
  %54 = tail call i32 @fseek(ptr noundef %0, i64 noundef %53, i32 noundef 0) #31
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #34
  ret i32 %51
}

; Function Attrs: mustprogress nofree nounwind optsize uwtable
define internal noundef i32 @_Z26GetMagicCookieFromCAFFkukiP8_IO_FILEPhPj(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2) #29 {
  %4 = alloca [12 x i8], align 1
  %5 = tail call i64 @ftell(ptr noundef %0) #31
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #34
  %6 = tail call i32 @fseek(ptr noundef %0, i64 noundef 8, i32 noundef 0) #31
  %7 = getelementptr inbounds [12 x i8], ptr %4, i64 0, i64 1
  %8 = getelementptr inbounds [12 x i8], ptr %4, i64 0, i64 2
  %9 = getelementptr inbounds [12 x i8], ptr %4, i64 0, i64 3
  %10 = getelementptr inbounds [12 x i8], ptr %4, i64 0, i64 8
  %11 = getelementptr inbounds [12 x i8], ptr %4, i64 0, i64 9
  %12 = getelementptr inbounds [12 x i8], ptr %4, i64 0, i64 10
  %13 = getelementptr inbounds [12 x i8], ptr %4, i64 0, i64 11
  br label %14

14:                                               ; preds = %42, %3
  %15 = call i64 @fread(ptr noundef nonnull %4, i64 noundef 1, i64 noundef 12, ptr noundef %0) #31
  %16 = load i8, ptr %4, align 1, !tbaa !37
  %17 = zext i8 %16 to i32
  %18 = shl nuw i32 %17, 24
  %19 = load i8, ptr %7, align 1, !tbaa !37
  %20 = zext i8 %19 to i32
  %21 = shl nuw nsw i32 %20, 16
  %22 = or i32 %21, %18
  %23 = load i8, ptr %8, align 1, !tbaa !37
  %24 = zext i8 %23 to i32
  %25 = shl nuw nsw i32 %24, 8
  %26 = or i32 %22, %25
  %27 = load i8, ptr %9, align 1, !tbaa !37
  %28 = zext i8 %27 to i32
  %29 = or i32 %26, %28
  %30 = icmp ne i32 %29, 1802857321
  br i1 %30, label %42, label %31

31:                                               ; preds = %14
  %.lcssa = phi i1 [ %30, %14 ]
  %32 = load i8, ptr %13, align 1, !tbaa !37
  %33 = zext i8 %32 to i32
  %34 = load i32, ptr %2, align 4, !tbaa !46
  %35 = icmp ult i32 %34, %33
  br i1 %35, label %39, label %36

36:                                               ; preds = %31
  %37 = zext i8 %32 to i64
  %38 = tail call i64 @fread(ptr noundef %1, i64 noundef 1, i64 noundef %37, ptr noundef %0) #31
  br label %39

39:                                               ; preds = %36, %31
  %40 = phi i32 [ %33, %36 ], [ 0, %31 ]
  %41 = phi i8 [ 1, %36 ], [ 0, %31 ]
  store i32 %40, ptr %2, align 4, !tbaa !46
  br label %60

42:                                               ; preds = %14
  %43 = trunc i64 %15 to i32
  %44 = load i8, ptr %10, align 1, !tbaa !37
  %45 = zext i8 %44 to i64
  %46 = shl nuw nsw i64 %45, 24
  %47 = load i8, ptr %11, align 1, !tbaa !37
  %48 = zext i8 %47 to i64
  %49 = shl nuw nsw i64 %48, 16
  %50 = or i64 %49, %46
  %51 = load i8, ptr %12, align 1, !tbaa !37
  %52 = zext i8 %51 to i64
  %53 = shl nuw nsw i64 %52, 8
  %54 = or i64 %50, %53
  %55 = load i8, ptr %13, align 1, !tbaa !37
  %56 = zext i8 %55 to i64
  %57 = or i64 %54, %56
  %58 = tail call i32 @fseek(ptr noundef %0, i64 noundef %57, i32 noundef 1) #31
  %59 = icmp sgt i32 %43, 0
  br i1 %59, label %14, label %60, !llvm.loop !238

60:                                               ; preds = %42, %39
  %.lcssa1 = phi i1 [ %30, %42 ], [ %.lcssa, %39 ]
  %61 = phi i8 [ %41, %39 ], [ 0, %42 ]
  %62 = shl i64 %5, 32
  %63 = ashr exact i64 %62, 32
  %64 = tail call i32 @fseek(ptr noundef %0, i64 noundef %63, i32 noundef 0) #31
  %65 = icmp eq i8 %61, 0
  %66 = or i1 %.lcssa1, %65
  %67 = sext i1 %66 to i32
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #34
  ret i32 %67
}

; Function Attrs: mustprogress nofree nounwind optsize uwtable
define internal noundef zeroext i1 @_Z17FindCAFFDataStartP8_IO_FILEPiS1_(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) #29 {
  %4 = alloca [12 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #34
  %5 = tail call i32 @fseek(ptr noundef %0, i64 noundef 8, i32 noundef 0) #31
  %6 = getelementptr inbounds [12 x i8], ptr %4, i64 0, i64 1
  %7 = getelementptr inbounds [12 x i8], ptr %4, i64 0, i64 2
  %8 = getelementptr inbounds [12 x i8], ptr %4, i64 0, i64 3
  %9 = getelementptr inbounds [12 x i8], ptr %4, i64 0, i64 8
  %10 = getelementptr inbounds [12 x i8], ptr %4, i64 0, i64 9
  %11 = getelementptr inbounds [12 x i8], ptr %4, i64 0, i64 10
  %12 = getelementptr inbounds [12 x i8], ptr %4, i64 0, i64 11
  br label %13

13:                                               ; preds = %49, %3
  %14 = call i64 @fread(ptr noundef nonnull %4, i64 noundef 1, i64 noundef 12, ptr noundef %0) #31
  %15 = load i8, ptr %4, align 1, !tbaa !37
  %16 = zext i8 %15 to i32
  %17 = shl nuw i32 %16, 24
  %18 = load i8, ptr %6, align 1, !tbaa !37
  %19 = zext i8 %18 to i32
  %20 = shl nuw nsw i32 %19, 16
  %21 = or i32 %20, %17
  %22 = load i8, ptr %7, align 1, !tbaa !37
  %23 = zext i8 %22 to i32
  %24 = shl nuw nsw i32 %23, 8
  %25 = or i32 %21, %24
  %26 = load i8, ptr %8, align 1, !tbaa !37
  %27 = zext i8 %26 to i32
  %28 = or i32 %25, %27
  %29 = icmp eq i32 %28, 1684108385
  br i1 %29, label %30, label %49

30:                                               ; preds = %13
  %.lcssa = phi i1 [ %29, %13 ]
  %31 = tail call i64 @ftell(ptr noundef %0) #31
  %32 = trunc i64 %31 to i32
  %33 = add i32 %32, 4
  store i32 %33, ptr %1, align 4, !tbaa !46
  %34 = load i8, ptr %9, align 1, !tbaa !37
  %35 = zext i8 %34 to i32
  %36 = shl nuw i32 %35, 24
  %37 = load i8, ptr %10, align 1, !tbaa !37
  %38 = zext i8 %37 to i32
  %39 = shl nuw nsw i32 %38, 16
  %40 = or i32 %39, %36
  %41 = load i8, ptr %11, align 1, !tbaa !37
  %42 = zext i8 %41 to i32
  %43 = shl nuw nsw i32 %42, 8
  %44 = or i32 %40, %43
  %45 = load i8, ptr %12, align 1, !tbaa !37
  %46 = zext i8 %45 to i32
  %47 = or i32 %44, %46
  %48 = add nsw i32 %47, -4
  store i32 %48, ptr %2, align 4, !tbaa !46
  br label %67

49:                                               ; preds = %13
  %50 = trunc i64 %14 to i32
  %51 = load i8, ptr %9, align 1, !tbaa !37
  %52 = zext i8 %51 to i64
  %53 = shl nuw nsw i64 %52, 24
  %54 = load i8, ptr %10, align 1, !tbaa !37
  %55 = zext i8 %54 to i64
  %56 = shl nuw nsw i64 %55, 16
  %57 = or i64 %56, %53
  %58 = load i8, ptr %11, align 1, !tbaa !37
  %59 = zext i8 %58 to i64
  %60 = shl nuw nsw i64 %59, 8
  %61 = or i64 %57, %60
  %62 = load i8, ptr %12, align 1, !tbaa !37
  %63 = zext i8 %62 to i64
  %64 = or i64 %61, %63
  %65 = tail call i32 @fseek(ptr noundef %0, i64 noundef %64, i32 noundef 1) #31
  %66 = icmp slt i32 %50, 1
  br i1 %66, label %67, label %13, !llvm.loop !239

67:                                               ; preds = %49, %30
  %.lcssa1 = phi i1 [ %29, %49 ], [ %.lcssa, %30 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #34
  ret i1 %.lcssa1
}

; Function Attrs: mustprogress optsize uwtable
define internal noundef zeroext i1 @_Z17GetCAFFdescFormatP8_IO_FILEP22AudioFormatDescription(ptr nocapture noundef %0, ptr nocapture noundef %1) #12 {
  %3 = alloca [32 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #34
  %4 = tail call i32 @fseek(ptr noundef %0, i64 noundef 4, i32 noundef 1) #31
  %5 = getelementptr inbounds [32 x i8], ptr %3, i64 0, i64 1
  %6 = getelementptr inbounds [32 x i8], ptr %3, i64 0, i64 2
  %7 = getelementptr inbounds [32 x i8], ptr %3, i64 0, i64 3
  %8 = getelementptr inbounds [32 x i8], ptr %3, i64 0, i64 4
  %9 = getelementptr inbounds [32 x i8], ptr %3, i64 0, i64 5
  %10 = getelementptr inbounds [32 x i8], ptr %3, i64 0, i64 6
  %11 = getelementptr inbounds [32 x i8], ptr %3, i64 0, i64 7
  %12 = getelementptr inbounds %struct.port_CAFAudioDescription, ptr %3, i64 0, i32 1
  %13 = getelementptr inbounds %struct.AudioFormatDescription, ptr %1, i64 0, i32 1
  %14 = getelementptr inbounds %struct.port_CAFAudioDescription, ptr %3, i64 0, i32 5
  %15 = getelementptr inbounds %struct.AudioFormatDescription, ptr %1, i64 0, i32 6
  %16 = getelementptr inbounds %struct.port_CAFAudioDescription, ptr %3, i64 0, i32 6
  %17 = getelementptr inbounds %struct.AudioFormatDescription, ptr %1, i64 0, i32 7
  %18 = getelementptr inbounds %struct.port_CAFAudioDescription, ptr %3, i64 0, i32 2
  %19 = getelementptr inbounds %struct.AudioFormatDescription, ptr %1, i64 0, i32 2
  %20 = getelementptr inbounds %struct.port_CAFAudioDescription, ptr %3, i64 0, i32 3
  %21 = getelementptr inbounds %struct.AudioFormatDescription, ptr %1, i64 0, i32 3
  %22 = getelementptr inbounds %struct.AudioFormatDescription, ptr %1, i64 0, i32 5
  br label %23

23:                                               ; preds = %72, %2
  %24 = call i64 @fread(ptr noundef nonnull %3, i64 noundef 1, i64 noundef 4, ptr noundef %0) #31
  %25 = load i8, ptr %3, align 16, !tbaa !37
  %26 = zext i8 %25 to i32
  %27 = shl nuw i32 %26, 24
  %28 = load i8, ptr %5, align 1, !tbaa !37
  %29 = zext i8 %28 to i32
  %30 = shl nuw nsw i32 %29, 16
  %31 = or i32 %30, %27
  %32 = load i8, ptr %6, align 2, !tbaa !37
  %33 = zext i8 %32 to i32
  %34 = shl nuw nsw i32 %33, 8
  %35 = or i32 %31, %34
  %36 = load i8, ptr %7, align 1, !tbaa !37
  %37 = zext i8 %36 to i32
  %38 = or i32 %35, %37
  %39 = icmp eq i32 %38, 1684370275
  br i1 %39, label %40, label %72

40:                                               ; preds = %23
  %41 = tail call i32 @fseek(ptr noundef %0, i64 noundef 8, i32 noundef 1) #31
  %42 = call i64 @fread(ptr noundef nonnull %3, i64 noundef 1, i64 noundef 32, ptr noundef %0) #31
  %43 = load i32, ptr %12, align 8, !tbaa !223
  %44 = tail call i32 @Swap32BtoN(i32 noundef %43) #31
  store i32 %44, ptr %13, align 8, !tbaa !111
  %45 = load i32, ptr %14, align 8, !tbaa !227
  %46 = tail call i32 @Swap32BtoN(i32 noundef %45) #31
  store i32 %46, ptr %15, align 4, !tbaa !98
  %47 = load double, ptr %3, align 16, !tbaa !221
  %48 = tail call double @SwapFloat64BtoN(double noundef %47) #31
  store double %48, ptr %1, align 8, !tbaa !104
  %49 = load i32, ptr %16, align 4, !tbaa !228
  %50 = tail call i32 @Swap32BtoN(i32 noundef %49) #31
  store i32 %50, ptr %17, align 8, !tbaa !112
  %51 = load i32, ptr %18, align 4, !tbaa !224
  %52 = tail call i32 @Swap32BtoN(i32 noundef %51) #31
  store i32 %52, ptr %19, align 4, !tbaa !107
  %53 = load i32, ptr %20, align 16, !tbaa !225
  %54 = tail call i32 @Swap32BtoN(i32 noundef %53) #31
  store i32 %54, ptr %21, align 8, !tbaa !94
  %55 = load i32, ptr %13, align 8, !tbaa !111
  %56 = icmp eq i32 %55, 1634492771
  br i1 %56, label %57, label %58

57:                                               ; preds = %40
  store i32 0, ptr %22, align 8, !tbaa !204
  br label %66

58:                                               ; preds = %40
  store i32 %54, ptr %22, align 8, !tbaa !204
  %59 = load i32, ptr %19, align 4, !tbaa !107
  %60 = and i32 %59, 2
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %58
  %63 = and i32 %59, -4
  store i32 %63, ptr %19, align 4, !tbaa !107
  br label %66

64:                                               ; preds = %58
  %65 = or i32 %59, 2
  store i32 %65, ptr %19, align 4, !tbaa !107
  br label %66

66:                                               ; preds = %64, %62, %57
  %67 = getelementptr inbounds %struct.AudioFormatDescription, ptr %1, i64 0, i32 8
  %68 = getelementptr inbounds %struct.AudioFormatDescription, ptr %1, i64 0, i32 4
  %69 = getelementptr inbounds %struct.port_CAFAudioDescription, ptr %3, i64 0, i32 4
  %70 = load i32, ptr %69, align 4, !tbaa !226
  %71 = tail call i32 @Swap32BtoN(i32 noundef %70) #31
  store i32 %71, ptr %68, align 4, !tbaa !205
  store i32 0, ptr %67, align 4, !tbaa !206
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #34
  ret i1 true

72:                                               ; preds = %23
  %73 = call i64 @fread(ptr noundef nonnull %3, i64 noundef 1, i64 noundef 8, ptr noundef %0) #31
  %74 = load i8, ptr %8, align 4, !tbaa !37
  %75 = zext i8 %74 to i64
  %76 = shl nuw nsw i64 %75, 24
  %77 = load i8, ptr %9, align 1, !tbaa !37
  %78 = zext i8 %77 to i64
  %79 = shl nuw nsw i64 %78, 16
  %80 = or i64 %79, %76
  %81 = load i8, ptr %10, align 2, !tbaa !37
  %82 = zext i8 %81 to i64
  %83 = shl nuw nsw i64 %82, 8
  %84 = or i64 %80, %83
  %85 = load i8, ptr %11, align 1, !tbaa !37
  %86 = zext i8 %85 to i64
  %87 = or i64 %84, %86
  %88 = tail call i32 @fseek(ptr noundef %0, i64 noundef %87, i32 noundef 1) #31
  br label %23, !llvm.loop !240
}

attributes #0 = { mustprogress nofree nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { mustprogress nofree nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { mustprogress nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #15 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #16 = { nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nofree nosync nounwind optsize memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nofree norecurse nosync nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nofree norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nofree norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { mustprogress norecurse optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { noreturn nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { nofree nounwind }
attributes #28 = { nobuiltin optsize allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { mustprogress nofree nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { mustprogress nofree norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { optsize }
attributes #32 = { nounwind optsize }
attributes #33 = { nounwind optsize allocsize(0,1) }
attributes #34 = { nounwind }
attributes #35 = { builtin nounwind optsize }
attributes #36 = { nounwind optsize willreturn memory(read) }
attributes #37 = { cold optsize }
attributes #38 = { noreturn nounwind optsize }
attributes #39 = { cold }
attributes #40 = { builtin optsize allocsize(0) }

!llvm.ident = !{!5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5, !5}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11}

!0 = !{i64 16, !"_ZTS11ALACEncoder"}
!1 = !{i64 32, !"_ZTSM11ALACEncoderFi22AudioFormatDescriptionS0_PhS1_PiE.virtual"}
!2 = !{i64 40, !"_ZTSM11ALACEncoderFivE.virtual"}
!3 = !{i64 48, !"_ZTSM11ALACEncoderFi22AudioFormatDescriptionE.virtual"}
!4 = !{i64 56, !"_ZTSM11ALACEncoderFvPK22AudioFormatDescriptionPS0_E.virtual"}
!5 = !{!"clang version 17.0.6 (https://github.com/Casperento/llvm-project.git 9b0073551ece0d22bf3378af2b03e456a26031b6)"}
!6 = !{i32 1, !"wchar_size", i32 4}
!7 = !{i32 8, !"PIC Level", i32 2}
!8 = !{i32 7, !"PIE Level", i32 2}
!9 = !{i32 7, !"uwtable", i32 2}
!10 = !{i32 1, !"ThinLTO", i32 0}
!11 = !{i32 1, !"EnableSplitLTOUnit", i32 1}
!12 = !{!13, !13, i64 0}
!13 = !{!"short", !14, i64 0}
!14 = !{!"omnipotent char", !15, i64 0}
!15 = !{!"Simple C/C++ TBAA"}
!16 = !{!14, !14, i64 0}
!17 = !{!18, !18, i64 0}
!18 = !{!"int", !14, i64 0}
!19 = !{!20, !21, i64 0}
!20 = !{!"BitBuffer", !21, i64 0, !21, i64 8, !18, i64 16, !18, i64 20}
!21 = !{!"any pointer", !14, i64 0}
!22 = !{!20, !21, i64 8}
!23 = !{!20, !18, i64 16}
!24 = !{!20, !18, i64 20}
!25 = distinct !{!25, !26}
!26 = !{!"llvm.loop.mustprogress"}
!27 = !{!28, !34, i64 32}
!28 = !{!"_ZTS11ALACDecoder", !29, i64 0, !33, i64 24, !34, i64 32, !34, i64 40, !34, i64 48, !34, i64 56}
!29 = !{!"_ZTS18ALACSpecificConfig", !30, i64 0, !31, i64 4, !31, i64 5, !31, i64 6, !31, i64 7, !31, i64 8, !31, i64 9, !33, i64 10, !30, i64 12, !30, i64 16, !30, i64 20}
!30 = !{!"int", !31, i64 0}
!31 = !{!"omnipotent char", !32, i64 0}
!32 = !{!"Simple C++ TBAA"}
!33 = !{!"short", !31, i64 0}
!34 = !{!"any pointer", !31, i64 0}
!35 = !{!28, !34, i64 40}
!36 = !{!28, !34, i64 48}
!37 = !{!31, !31, i64 0}
!38 = !{!29, !30, i64 0}
!39 = !{!29, !31, i64 8}
!40 = !{!29, !31, i64 9}
!41 = !{!29, !33, i64 10}
!42 = !{!29, !30, i64 12}
!43 = !{!29, !30, i64 16}
!44 = !{!29, !30, i64 20}
!45 = !{i64 0, i64 4, !46, i64 4, i64 1, !37, i64 5, i64 1, !37, i64 6, i64 1, !37, i64 7, i64 1, !37, i64 8, i64 1, !37, i64 9, i64 1, !37, i64 10, i64 2, !47, i64 12, i64 4, !46, i64 16, i64 4, !46, i64 20, i64 4, !46}
!46 = !{!30, !30, i64 0}
!47 = !{!33, !33, i64 0}
!48 = !{i64 0, i64 1, !37, i64 1, i64 1, !37, i64 2, i64 2, !47, i64 4, i64 4, !46, i64 8, i64 4, !46, i64 12, i64 4, !46}
!49 = !{i64 0, i64 1, !37, i64 1, i64 2, !47, i64 3, i64 4, !46, i64 7, i64 4, !46, i64 11, i64 4, !46}
!50 = !{i64 0, i64 2, !47, i64 2, i64 4, !46, i64 6, i64 4, !46, i64 10, i64 4, !46}
!51 = !{i64 0, i64 4, !46, i64 4, i64 4, !46, i64 8, i64 4, !46}
!52 = !{i64 0, i64 4, !46, i64 4, i64 4, !46}
!53 = !{i64 0, i64 4, !46}
!54 = !{!28, !34, i64 56}
!55 = !{!28, !33, i64 24}
!56 = !{!57, !34, i64 0}
!57 = !{!"_ZTS9BitBuffer", !34, i64 0, !34, i64 8, !30, i64 16, !30, i64 20}
!58 = !{!57, !34, i64 8}
!59 = !{!28, !31, i64 6}
!60 = !{!28, !31, i64 5}
!61 = distinct !{!61, !26}
!62 = !{i64 0, i64 8, !63, i64 8, i64 8, !63, i64 16, i64 4, !46, i64 20, i64 4, !46}
!63 = !{!34, !34, i64 0}
!64 = !{!28, !31, i64 7}
!65 = !{!28, !31, i64 8}
!66 = !{!28, !33, i64 10}
!67 = distinct !{!67, !26}
!68 = distinct !{!68, !26}
!69 = distinct !{!69, !26}
!70 = distinct !{!70, !26}
!71 = distinct !{!71, !26}
!72 = distinct !{!72, !26}
!73 = distinct !{!73, !26}
!74 = distinct !{!74, !26}
!75 = distinct !{!75, !26}
!76 = !{i32 -50, i32 1}
!77 = distinct !{!77, !26}
!78 = distinct !{!78, !26}
!79 = distinct !{!79, !26}
!80 = distinct !{!80, !26}
!81 = distinct !{!81, !26}
!82 = !{!83, !83, i64 0}
!83 = !{!"vtable pointer", !32, i64 0}
!84 = !{!85, !33, i64 8}
!85 = !{!"_ZTS11ALACEncoder", !33, i64 8, !86, i64 10, !31, i64 12, !34, i64 32, !34, i64 40, !34, i64 48, !34, i64 56, !34, i64 64, !34, i64 72, !31, i64 80, !31, i64 4176, !30, i64 8272, !30, i64 8276, !30, i64 8280, !30, i64 8284, !30, i64 8288, !30, i64 8292, !30, i64 8296}
!86 = !{!"bool", !31, i64 0}
!87 = !{!85, !86, i64 10}
!88 = !{!85, !34, i64 32}
!89 = !{!85, !34, i64 40}
!90 = !{!85, !34, i64 48}
!91 = !{!85, !34, i64 56}
!92 = !{!85, !34, i64 64}
!93 = !{!85, !34, i64 72}
!94 = !{!95, !30, i64 16}
!95 = !{!"_ZTS22AudioFormatDescription", !96, i64 0, !30, i64 8, !30, i64 12, !30, i64 16, !30, i64 20, !30, i64 24, !30, i64 28, !30, i64 32, !30, i64 36}
!96 = !{!"double", !31, i64 0}
!97 = !{!85, !30, i64 8288}
!98 = !{!95, !30, i64 28}
!99 = !{i8 0, i8 2}
!100 = !{}
!101 = distinct !{!101, !26}
!102 = !{!85, !30, i64 8272}
!103 = !{!85, !30, i64 8280}
!104 = !{!95, !96, i64 0}
!105 = !{!85, !30, i64 8296}
!106 = !{!85, !30, i64 8292}
!107 = !{!95, !30, i64 12}
!108 = !{!85, !30, i64 8284}
!109 = distinct !{!109, !26}
!110 = distinct !{!110, !26}
!111 = !{!95, !30, i64 8}
!112 = !{!95, !30, i64 32}
!113 = distinct !{!113, !26}
!114 = distinct !{!114, !26}
!115 = distinct !{!115, !26}
!116 = distinct !{!116, !26}
!117 = distinct !{!117, !26}
!118 = distinct !{!118, !26}
!119 = distinct !{!119, !26}
!120 = distinct !{!120, !26}
!121 = distinct !{!121, !26}
!122 = distinct !{!122, !26}
!123 = distinct !{!123, !26}
!124 = distinct !{!124, !26}
!125 = distinct !{!125, !26}
!126 = distinct !{!126, !26}
!127 = distinct !{!127, !26}
!128 = distinct !{!128, !26}
!129 = distinct !{!129, !26}
!130 = distinct !{!130, !26}
!131 = distinct !{!131, !26}
!132 = distinct !{!132, !26}
!133 = distinct !{!133, !26}
!134 = distinct !{!134, !26}
!135 = distinct !{!135, !26}
!136 = distinct !{!136, !26}
!137 = !{!29, !31, i64 4}
!138 = !{!29, !31, i64 5}
!139 = !{!29, !31, i64 6}
!140 = !{!29, !31, i64 7}
!141 = !{!85, !30, i64 8276}
!142 = !{!143, !18, i64 16}
!143 = !{!"AGParamRec", !18, i64 0, !18, i64 4, !18, i64 8, !18, i64 12, !18, i64 16, !18, i64 20, !18, i64 24, !18, i64 28, !18, i64 32}
!144 = !{!143, !18, i64 20}
!145 = !{!143, !18, i64 24}
!146 = !{!143, !18, i64 28}
!147 = !{!143, !18, i64 32}
!148 = !{!143, !18, i64 4}
!149 = !{!143, !18, i64 0}
!150 = !{!143, !18, i64 8}
!151 = !{!143, !18, i64 12}
!152 = distinct !{!152, !26}
!153 = distinct !{!153, !26}
!154 = distinct !{!154, !26}
!155 = distinct !{!155, !26}
!156 = distinct !{!156, !26}
!157 = distinct !{!157, !26}
!158 = distinct !{!158, !26}
!159 = distinct !{!159, !26}
!160 = distinct !{!160, !26}
!161 = distinct !{!161, !26}
!162 = distinct !{!162, !26}
!163 = distinct !{!163, !26}
!164 = distinct !{!164, !26}
!165 = distinct !{!165, !26}
!166 = distinct !{!166, !26}
!167 = distinct !{!167, !26}
!168 = distinct !{!168, !26}
!169 = distinct !{!169, !26}
!170 = distinct !{!170, !26}
!171 = distinct !{!171, !26}
!172 = distinct !{!172, !26}
!173 = distinct !{!173, !26}
!174 = distinct !{!174, !26}
!175 = distinct !{!175, !26}
!176 = distinct !{!176, !26}
!177 = distinct !{!177, !26}
!178 = distinct !{!178, !26}
!179 = distinct !{!179, !26}
!180 = distinct !{!180, !26}
!181 = distinct !{!181, !26}
!182 = distinct !{!182, !26}
!183 = distinct !{!183, !26}
!184 = distinct !{!184, !26}
!185 = distinct !{!185, !26}
!186 = distinct !{!186, !26}
!187 = distinct !{!187, !26}
!188 = distinct !{!188, !26}
!189 = distinct !{!189, !26}
!190 = distinct !{!190, !26}
!191 = distinct !{!191, !26}
!192 = distinct !{!192, !26}
!193 = distinct !{!193, !26}
!194 = distinct !{!194, !26}
!195 = distinct !{!195, !26}
!196 = distinct !{!196, !26}
!197 = distinct !{!197, !26}
!198 = distinct !{!198, !26}
!199 = distinct !{!199, !26}
!200 = distinct !{!200, !26}
!201 = distinct !{!201, !26}
!202 = distinct !{!202, !26}
!203 = !{i32 -1, i32 1}
!204 = !{!95, !30, i64 24}
!205 = !{!95, !30, i64 20}
!206 = !{!95, !30, i64 36}
!207 = distinct !{!207, !26}
!208 = distinct !{!208, !26}
!209 = distinct !{!209, !26}
!210 = distinct !{!210, !26}
!211 = distinct !{!211, !26}
!212 = distinct !{!212, !26}
!213 = distinct !{!213, !26}
!214 = distinct !{!214, !26}
!215 = distinct !{!215, !26}
!216 = !{i64 0, i64 8, !217, i64 8, i64 4, !46, i64 12, i64 4, !46, i64 16, i64 4, !46, i64 20, i64 4, !46, i64 24, i64 4, !46, i64 28, i64 4, !46, i64 32, i64 4, !46, i64 36, i64 4, !46}
!217 = !{!96, !96, i64 0}
!218 = !{i64 0, i64 4, !46, i64 4, i64 4, !46, i64 8, i64 4, !46, i64 12, i64 4, !46}
!219 = distinct !{!219, !26}
!220 = distinct !{!220, !26}
!221 = !{!222, !96, i64 0}
!222 = !{!"_ZTS24port_CAFAudioDescription", !96, i64 0, !30, i64 8, !30, i64 12, !30, i64 16, !30, i64 20, !30, i64 24, !30, i64 28}
!223 = !{!222, !30, i64 8}
!224 = !{!222, !30, i64 12}
!225 = !{!222, !30, i64 16}
!226 = !{!222, !30, i64 20}
!227 = !{!222, !30, i64 24}
!228 = !{!222, !30, i64 28}
!229 = distinct !{!229, !26}
!230 = !{!231, !232, i64 0}
!231 = !{!"_ZTS25port_CAFPacketTableHeader", !232, i64 0, !232, i64 8, !30, i64 16, !30, i64 20, !31, i64 24}
!232 = !{!"long", !31, i64 0}
!233 = !{!231, !232, i64 8}
!234 = !{!231, !30, i64 16}
!235 = !{!231, !30, i64 20}
!236 = distinct !{!236, !26}
!237 = distinct !{!237, !26}
!238 = distinct !{!238, !26}
!239 = distinct !{!239, !26}
!240 = distinct !{!240, !26}
