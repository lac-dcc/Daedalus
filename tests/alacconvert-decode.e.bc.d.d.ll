; ModuleID = 'alacconvert-decode.e.bc.d.ll'
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
  %4 = call i64 @_wyvern_slice_BitBufferGetPosition__176478853(ptr %0)
  %5 = getelementptr inbounds i8, ptr %3, i64 %4
  %6 = load ptr, ptr %0, align 8, !tbaa !19
  %7 = ptrtoint ptr %6 to i64
  %8 = ptrtoint ptr %5 to i64
  %9 = sub i64 %7, %8
  %10 = trunc i64 %9 to i32
  %11 = shl i32 %10, 3
  %12 = getelementptr inbounds %struct.BitBuffer, ptr %0, i64 0, i32 2
  %13 = load i32, ptr %12, align 8, !tbaa !23
  %14 = add i32 %11, %13
  ret i32 %14
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
  tail call void @BitBufferWrite(ptr noundef nonnull %0, i32 noundef 0, i32 noundef %9) #33
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
  %4 = call i64 @_wyvern_slice_BitBufferGetPosition__176478853(ptr %0)
  %5 = getelementptr inbounds i8, ptr %3, i64 %4
  store ptr %5, ptr %0, align 8, !tbaa !19
  %6 = getelementptr inbounds %struct.BitBuffer, ptr %0, i64 0, i32 2
  store i32 0, ptr %6, align 8, !tbaa !23
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
  tail call void @free(ptr noundef nonnull %3) #34
  store ptr null, ptr %2, align 8, !tbaa !27
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr inbounds %class.ALACDecoder, ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !35
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %6
  tail call void @free(ptr noundef nonnull %8) #34
  store ptr null, ptr %7, align 8, !tbaa !35
  br label %11

11:                                               ; preds = %10, %6
  %12 = getelementptr inbounds %class.ALACDecoder, ptr %0, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !36
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  tail call void @free(ptr noundef nonnull %13) #34
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
  %50 = tail call i32 @Swap32BtoN(i32 noundef %49) #33
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
  %63 = tail call zeroext i16 @Swap16BtoN(i16 noundef zeroext %57) #33
  %64 = load i32, ptr %58, align 4, !tbaa !42
  %65 = tail call i32 @Swap32BtoN(i32 noundef %64) #33
  %66 = load i32, ptr %59, align 4, !tbaa !43
  %67 = tail call i32 @Swap32BtoN(i32 noundef %66) #33
  %68 = load i32, ptr %60, align 4, !tbaa !44
  %69 = tail call i32 @Swap32BtoN(i32 noundef %68) #33
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
  %81 = tail call noalias ptr @calloc(i64 noundef %80, i64 noundef 1) #35
  %82 = getelementptr inbounds %class.ALACDecoder, ptr %0, i64 0, i32 2
  store ptr %81, ptr %82, align 8, !tbaa !27
  %83 = tail call noalias ptr @calloc(i64 noundef %80, i64 noundef 1) #35
  %84 = getelementptr inbounds %class.ALACDecoder, ptr %0, i64 0, i32 3
  store ptr %83, ptr %84, align 8, !tbaa !35
  %85 = tail call noalias ptr @calloc(i64 noundef %80, i64 noundef 1) #35
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
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #36
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #36
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #36
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %10) #36
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %11) #36
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %12) #36
  %13 = call i1 @_wyvern_slice__ZN11ALACDecoder6DecodeEP9BitBufferPhjjPj__585141188(ptr %1, ptr %2)
  %14 = call i1 @_wyvern_slice__ZN11ALACDecoder6DecodeEP9BitBufferPhjjPj__743864763(ptr %1, ptr %2, ptr %5)
  %15 = icmp ne i32 %4, 0
  %16 = and i1 %15, %14
  br i1 %16, label %17, label %506

17:                                               ; preds = %6
  %18 = getelementptr inbounds %class.ALACDecoder, ptr %0, i64 0, i32 1
  store i16 0, ptr %18, align 8, !tbaa !55
  store i32 %3, ptr %5, align 4, !tbaa !46
  %19 = getelementptr inbounds %struct.BitBuffer, ptr %1, i64 0, i32 1
  %20 = getelementptr inbounds %struct.ALACSpecificConfig, ptr %0, i64 0, i32 3
  %21 = getelementptr inbounds %struct.ALACSpecificConfig, ptr %0, i64 0, i32 2
  %22 = getelementptr inbounds %class.ALACDecoder, ptr %0, i64 0, i32 2
  %23 = getelementptr inbounds %class.ALACDecoder, ptr %0, i64 0, i32 3
  %24 = getelementptr inbounds %struct.ALACSpecificConfig, ptr %0, i64 0, i32 4
  %25 = getelementptr inbounds %struct.ALACSpecificConfig, ptr %0, i64 0, i32 5
  %26 = getelementptr inbounds %struct.ALACSpecificConfig, ptr %0, i64 0, i32 7
  %27 = getelementptr inbounds %class.ALACDecoder, ptr %0, i64 0, i32 4
  %28 = getelementptr inbounds %class.ALACDecoder, ptr %0, i64 0, i32 5
  br label %29

29:                                               ; preds = %436, %17
  %30 = phi i32 [ 0, %17 ], [ %437, %436 ]
  %31 = phi i32 [ %3, %17 ], [ %439, %436 ]
  %32 = load ptr, ptr %1, align 8, !tbaa !56
  %33 = load ptr, ptr %19, align 8, !tbaa !58
  %34 = icmp ult ptr %32, %33
  br i1 %34, label %35, label %506

35:                                               ; preds = %29
  %36 = load i8, ptr %20, align 2, !tbaa !59
  %37 = call zeroext i8 @BitBufferReadSmall(ptr noundef nonnull %1, i8 noundef zeroext 3) #33
  switch i8 %37, label %436 [
    i8 0, label %38
    i8 3, label %38
    i8 1, label %206
    i8 2, label %443
    i8 5, label %443
    i8 4, label %431
    i8 6, label %433
    i8 7, label %435
  ]

38:                                               ; preds = %35, %35
  %39 = call i32 @_wyvern_slice__ZN11ALACDecoder6DecodeEP9BitBufferPhjjPj__756946435(ptr %1)
  %40 = load i16, ptr %18, align 8, !tbaa !55
  %41 = trunc i32 %39 to i16
  %42 = or i16 %40, %41
  store i16 %42, ptr %18, align 8, !tbaa !55
  %43 = call i32 @BitBufferRead(ptr noundef nonnull %1, i8 noundef zeroext 12) #33
  %44 = and i32 %43, 65535
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %506

46:                                               ; preds = %38
  %47 = call i32 @BitBufferRead(ptr noundef nonnull %1, i8 noundef zeroext 4) #33
  %48 = trunc i32 %47 to i8
  %49 = lshr i8 %48, 1
  %50 = and i8 %49, 3
  %51 = icmp eq i8 %50, 3
  br i1 %51, label %506, label %52

52:                                               ; preds = %46
  %53 = and i32 %47, 1
  %54 = load i8, ptr %21, align 1, !tbaa !60
  %55 = zext i8 %54 to i32
  %56 = shl nuw nsw i8 %50, 3
  %57 = zext i8 %56 to i32
  %58 = sub nsw i32 %55, %57
  %59 = and i32 %47, 248
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %63, label %61

61:                                               ; preds = %52
  %62 = call i32 @_wyvern_slice__ZN11ALACDecoder6DecodeEP9BitBufferPhjjPj__366761776(ptr %1)
  br label %63

63:                                               ; preds = %61, %52
  %64 = phi i32 [ %62, %61 ], [ %31, %52 ]
  %65 = icmp eq i32 %53, 0
  br i1 %65, label %66, label %108

66:                                               ; preds = %63
  %67 = call i32 @BitBufferRead(ptr noundef nonnull %1, i8 noundef zeroext 8) #33
  %68 = call i32 @BitBufferRead(ptr noundef nonnull %1, i8 noundef zeroext 8) #33
  %69 = call i32 @BitBufferRead(ptr noundef nonnull %1, i8 noundef zeroext 8) #33
  %70 = and i32 %69, 15
  %71 = call i32 @BitBufferRead(ptr noundef nonnull %1, i8 noundef zeroext 8) #33
  %72 = lshr i32 %71, 5
  %73 = and i32 %72, 7
  %74 = and i32 %71, 31
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %85, label %76

76:                                               ; preds = %66
  %77 = zext i32 %74 to i64
  br label %78

78:                                               ; preds = %78, %76
  %79 = phi i64 [ 0, %76 ], [ %83, %78 ]
  %80 = call i32 @BitBufferRead(ptr noundef nonnull %1, i8 noundef zeroext 16) #33
  %81 = trunc i32 %80 to i16
  %82 = getelementptr inbounds [32 x i16], ptr %11, i64 0, i64 %79
  store i16 %81, ptr %82, align 2, !tbaa !47
  %83 = add nuw nsw i64 %79, 1
  %84 = icmp eq i64 %83, %77
  br i1 %84, label %85, label %78, !llvm.loop !61

85:                                               ; preds = %78, %66
  %86 = icmp eq i8 %50, 0
  br i1 %86, label %89, label %87

87:                                               ; preds = %85
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !62
  %88 = mul i32 %64, %57
  call void @BitBufferAdvance(ptr noundef nonnull %1, i32 noundef %88) #33
  br label %89

89:                                               ; preds = %87, %85
  %90 = load i8, ptr %24, align 1, !tbaa !64
  %91 = zext i8 %90 to i32
  %92 = zext i8 %36 to i32
  %93 = mul nuw nsw i32 %73, %92
  %94 = lshr i32 %93, 2
  %95 = load i8, ptr %25, align 8, !tbaa !65
  %96 = zext i8 %95 to i32
  %97 = load i16, ptr %26, align 2, !tbaa !66
  %98 = zext i16 %97 to i32
  call void @set_ag_params(ptr noundef nonnull %10, i32 noundef %91, i32 noundef %94, i32 noundef %96, i32 noundef %64, i32 noundef %64, i32 noundef %98) #33
  %99 = load ptr, ptr %27, align 8, !tbaa !36
  %100 = call i32 @dyn_decomp(ptr noundef nonnull %10, ptr noundef nonnull %1, ptr noundef %99, i32 noundef %64, i32 noundef %58, ptr noundef nonnull %8) #33
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %506

102:                                              ; preds = %89
  %103 = and i32 %69, 240
  %104 = icmp eq i32 %103, 0
  %105 = load ptr, ptr %27, align 8, !tbaa !36
  br i1 %104, label %143, label %106

106:                                              ; preds = %102
  call void @unpc_block(ptr noundef %105, ptr noundef %105, i32 noundef %64, ptr noundef null, i32 noundef 31, i32 noundef %58, i32 noundef 0) #33
  %107 = load ptr, ptr %27, align 8, !tbaa !36
  br label %143

108:                                              ; preds = %63
  %109 = sub nsw i32 32, %58
  %110 = icmp ult i32 %58, 17
  %111 = icmp eq i32 %64, 0
  br i1 %110, label %117, label %112

112:                                              ; preds = %108
  br i1 %111, label %141, label %113

113:                                              ; preds = %112
  %114 = trunc i32 %58 to i8
  %115 = add i8 %114, -16
  %116 = zext i32 %64 to i64
  br label %130

117:                                              ; preds = %108
  br i1 %111, label %141, label %118

118:                                              ; preds = %117
  %119 = trunc i32 %58 to i8
  %120 = zext i32 %64 to i64
  br label %121

121:                                              ; preds = %121, %118
  %122 = phi i64 [ 0, %118 ], [ %128, %121 ]
  %123 = call i32 @BitBufferRead(ptr noundef nonnull %1, i8 noundef zeroext %119) #33
  %124 = shl i32 %123, %109
  %125 = ashr i32 %124, %109
  %126 = load ptr, ptr %22, align 8, !tbaa !27
  %127 = getelementptr inbounds i32, ptr %126, i64 %122
  store i32 %125, ptr %127, align 4, !tbaa !46
  %128 = add nuw nsw i64 %122, 1
  %129 = icmp eq i64 %128, %120
  br i1 %129, label %141, label %121, !llvm.loop !67

130:                                              ; preds = %130, %113
  %131 = phi i64 [ 0, %113 ], [ %139, %130 ]
  %132 = call i32 @BitBufferRead(ptr noundef nonnull %1, i8 noundef zeroext 16) #33
  %133 = shl i32 %132, 16
  %134 = ashr i32 %133, %109
  %135 = call i32 @BitBufferRead(ptr noundef nonnull %1, i8 noundef zeroext %115) #33
  %136 = or i32 %134, %135
  %137 = load ptr, ptr %22, align 8, !tbaa !27
  %138 = getelementptr inbounds i32, ptr %137, i64 %131
  store i32 %136, ptr %138, align 4, !tbaa !46
  %139 = add nuw nsw i64 %131, 1
  %140 = icmp eq i64 %139, %116
  br i1 %140, label %141, label %130, !llvm.loop !68

141:                                              ; preds = %130, %121, %117, %112
  %142 = mul i32 %64, %58
  store i32 %142, ptr %8, align 4, !tbaa !46
  br label %158

143:                                              ; preds = %106, %102
  %144 = phi ptr [ %107, %106 ], [ %105, %102 ]
  %145 = load ptr, ptr %22, align 8, !tbaa !27
  call void @unpc_block(ptr noundef %144, ptr noundef %145, i32 noundef %64, ptr noundef nonnull %11, i32 noundef %74, i32 noundef %58, i32 noundef %70) #33
  br i1 %86, label %158, label %146

146:                                              ; preds = %143
  %147 = icmp eq i32 %64, 0
  br i1 %147, label %158, label %148

148:                                              ; preds = %146
  %149 = zext i32 %64 to i64
  br label %150

150:                                              ; preds = %150, %148
  %151 = phi i64 [ 0, %148 ], [ %156, %150 ]
  %152 = call i32 @BitBufferRead(ptr noundef nonnull %7, i8 noundef zeroext %56) #33
  %153 = trunc i32 %152 to i16
  %154 = load ptr, ptr %28, align 8, !tbaa !54
  %155 = getelementptr inbounds i16, ptr %154, i64 %151
  store i16 %153, ptr %155, align 2, !tbaa !47
  %156 = add nuw nsw i64 %151, 1
  %157 = icmp eq i64 %156, %149
  br i1 %157, label %158, label %150, !llvm.loop !69

158:                                              ; preds = %150, %146, %143, %141
  %159 = phi i1 [ true, %141 ], [ true, %143 ], [ false, %146 ], [ false, %150 ]
  %160 = phi i8 [ 0, %141 ], [ 0, %143 ], [ %50, %146 ], [ %50, %150 ]
  %161 = zext i8 %160 to i32
  %162 = load i8, ptr %21, align 1, !tbaa !60
  %163 = zext i8 %162 to i32
  %164 = add nsw i32 %163, -16
  %165 = call i32 @llvm.fshl.i32(i32 %163, i32 %164, i32 30)
  switch i32 %165, label %204 [
    i32 0, label %166
    i32 1, label %184
    i32 2, label %189
    i32 4, label %197
  ]

166:                                              ; preds = %158
  %167 = zext i32 %30 to i64
  %168 = getelementptr inbounds i16, ptr %2, i64 %167
  %169 = icmp eq i32 %64, 0
  br i1 %169, label %204, label %170

170:                                              ; preds = %166
  %171 = load ptr, ptr %22, align 8, !tbaa !27
  %172 = zext i32 %64 to i64
  br label %173

173:                                              ; preds = %173, %170
  %174 = phi i64 [ 0, %170 ], [ %181, %173 ]
  %175 = phi i32 [ 0, %170 ], [ %182, %173 ]
  %176 = getelementptr inbounds i32, ptr %171, i64 %174
  %177 = load i32, ptr %176, align 4, !tbaa !46
  %178 = trunc i32 %177 to i16
  %179 = zext i32 %175 to i64
  %180 = getelementptr inbounds i16, ptr %168, i64 %179
  store i16 %178, ptr %180, align 2, !tbaa !47
  %181 = add nuw nsw i64 %174, 1
  %182 = add i32 %175, %4
  %183 = icmp eq i64 %181, %172
  br i1 %183, label %204, label %173, !llvm.loop !70

184:                                              ; preds = %158
  %185 = mul i32 %30, 3
  %186 = zext i32 %185 to i64
  %187 = getelementptr inbounds i8, ptr %2, i64 %186
  %188 = load ptr, ptr %22, align 8, !tbaa !27
  call void @copyPredictorTo20(ptr noundef %188, ptr noundef nonnull %187, i32 noundef %4, i32 noundef %64) #33
  br label %204

189:                                              ; preds = %158
  %190 = mul i32 %30, 3
  %191 = zext i32 %190 to i64
  %192 = getelementptr inbounds i8, ptr %2, i64 %191
  %193 = load ptr, ptr %22, align 8, !tbaa !27
  br i1 %159, label %196, label %194

194:                                              ; preds = %189
  %195 = load ptr, ptr %28, align 8, !tbaa !54
  call void @copyPredictorTo24Shift(ptr noundef %193, ptr noundef %195, ptr noundef nonnull %192, i32 noundef %4, i32 noundef %64, i32 noundef %161) #33
  br label %204

196:                                              ; preds = %189
  call void @copyPredictorTo24(ptr noundef %193, ptr noundef nonnull %192, i32 noundef %4, i32 noundef %64) #33
  br label %204

197:                                              ; preds = %158
  %198 = zext i32 %30 to i64
  %199 = getelementptr inbounds i32, ptr %2, i64 %198
  %200 = load ptr, ptr %22, align 8, !tbaa !27
  br i1 %159, label %203, label %201

201:                                              ; preds = %197
  %202 = load ptr, ptr %28, align 8, !tbaa !54
  call void @copyPredictorTo32Shift(ptr noundef %200, ptr noundef %202, ptr noundef nonnull %199, i32 noundef %4, i32 noundef %64, i32 noundef %161) #33
  br label %204

203:                                              ; preds = %197
  call void @copyPredictorTo32(ptr noundef %200, ptr noundef nonnull %199, i32 noundef %4, i32 noundef %64) #33
  br label %204

204:                                              ; preds = %203, %201, %196, %194, %184, %173, %166, %158
  %205 = add i32 %30, 1
  store i32 %64, ptr %5, align 4, !tbaa !46
  br label %436

206:                                              ; preds = %35
  %207 = add i32 %30, 2
  %208 = icmp ugt i32 %207, %4
  br i1 %208, label %443, label %209

209:                                              ; preds = %206
  %210 = call i32 @_wyvern_slice__ZN11ALACDecoder6DecodeEP9BitBufferPhjjPj__756946435(ptr %1)
  %211 = load i16, ptr %18, align 8, !tbaa !55
  %212 = trunc i32 %210 to i16
  %213 = or i16 %211, %212
  store i16 %213, ptr %18, align 8, !tbaa !55
  %214 = call i32 @BitBufferRead(ptr noundef nonnull %1, i8 noundef zeroext 12) #33
  %215 = and i32 %214, 65535
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %217, label %506

217:                                              ; preds = %209
  %218 = call i32 @BitBufferRead(ptr noundef nonnull %1, i8 noundef zeroext 4) #33
  %219 = trunc i32 %218 to i8
  %220 = lshr i8 %219, 1
  %221 = and i8 %220, 3
  %222 = icmp eq i8 %221, 3
  br i1 %222, label %506, label %223

223:                                              ; preds = %217
  %224 = and i32 %218, 1
  %225 = load i8, ptr %21, align 1, !tbaa !60
  %226 = zext i8 %225 to i32
  %227 = shl nuw nsw i8 %221, 3
  %228 = zext i8 %227 to i32
  %229 = sub nsw i32 %226, %228
  %230 = add nsw i32 %229, 1
  %231 = and i32 %218, 248
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %235, label %233

233:                                              ; preds = %223
  %234 = call i32 @_wyvern_slice__ZN11ALACDecoder6DecodeEP9BitBufferPhjjPj__366761776(ptr %1)
  br label %235

235:                                              ; preds = %233, %223
  %236 = phi i32 [ %234, %233 ], [ %31, %223 ]
  %237 = icmp eq i32 %224, 0
  br i1 %237, label %238, label %320

238:                                              ; preds = %235
  %239 = call i32 @BitBufferRead(ptr noundef nonnull %1, i8 noundef zeroext 8) #33
  %240 = trunc i32 %239 to i8
  %241 = call i32 @BitBufferRead(ptr noundef nonnull %1, i8 noundef zeroext 8) #33
  %242 = trunc i32 %241 to i8
  %243 = call i32 @BitBufferRead(ptr noundef nonnull %1, i8 noundef zeroext 8) #33
  %244 = and i32 %243, 15
  %245 = call i32 @BitBufferRead(ptr noundef nonnull %1, i8 noundef zeroext 8) #33
  %246 = lshr i32 %245, 5
  %247 = and i32 %246, 7
  %248 = and i32 %245, 31
  %249 = icmp eq i32 %248, 0
  br i1 %249, label %259, label %250

250:                                              ; preds = %238
  %251 = zext i32 %248 to i64
  br label %252

252:                                              ; preds = %252, %250
  %253 = phi i64 [ 0, %250 ], [ %257, %252 ]
  %254 = call i32 @BitBufferRead(ptr noundef nonnull %1, i8 noundef zeroext 16) #33
  %255 = trunc i32 %254 to i16
  %256 = getelementptr inbounds [32 x i16], ptr %11, i64 0, i64 %253
  store i16 %255, ptr %256, align 2, !tbaa !47
  %257 = add nuw nsw i64 %253, 1
  %258 = icmp eq i64 %257, %251
  br i1 %258, label %259, label %252, !llvm.loop !71

259:                                              ; preds = %252, %238
  %260 = call i32 @BitBufferRead(ptr noundef nonnull %1, i8 noundef zeroext 8) #33
  %261 = and i32 %260, 15
  %262 = call i32 @BitBufferRead(ptr noundef nonnull %1, i8 noundef zeroext 8) #33
  %263 = lshr i32 %262, 5
  %264 = and i32 %263, 7
  %265 = and i32 %262, 31
  %266 = icmp eq i32 %265, 0
  br i1 %266, label %276, label %267

267:                                              ; preds = %259
  %268 = zext i32 %265 to i64
  br label %269

269:                                              ; preds = %269, %267
  %270 = phi i64 [ 0, %267 ], [ %274, %269 ]
  %271 = call i32 @BitBufferRead(ptr noundef nonnull %1, i8 noundef zeroext 16) #33
  %272 = trunc i32 %271 to i16
  %273 = getelementptr inbounds [32 x i16], ptr %12, i64 0, i64 %270
  store i16 %272, ptr %273, align 2, !tbaa !47
  %274 = add nuw nsw i64 %270, 1
  %275 = icmp eq i64 %274, %268
  br i1 %275, label %276, label %269, !llvm.loop !72

276:                                              ; preds = %269, %259
  %277 = icmp eq i8 %221, 0
  br i1 %277, label %281, label %278

278:                                              ; preds = %276
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !62
  %279 = shl nuw nsw i32 %228, 1
  %280 = mul i32 %279, %236
  call void @BitBufferAdvance(ptr noundef nonnull %1, i32 noundef %280) #33
  br label %281

281:                                              ; preds = %278, %276
  %282 = load i8, ptr %24, align 1, !tbaa !64
  %283 = zext i8 %282 to i32
  %284 = zext i8 %36 to i32
  %285 = mul nuw nsw i32 %247, %284
  %286 = lshr i32 %285, 2
  %287 = load i8, ptr %25, align 8, !tbaa !65
  %288 = zext i8 %287 to i32
  %289 = load i16, ptr %26, align 2, !tbaa !66
  %290 = zext i16 %289 to i32
  call void @set_ag_params(ptr noundef nonnull %10, i32 noundef %283, i32 noundef %286, i32 noundef %288, i32 noundef %236, i32 noundef %236, i32 noundef %290) #33
  %291 = load ptr, ptr %27, align 8, !tbaa !36
  %292 = call i32 @dyn_decomp(ptr noundef nonnull %10, ptr noundef nonnull %1, ptr noundef %291, i32 noundef %236, i32 noundef %230, ptr noundef nonnull %8) #33
  %293 = icmp eq i32 %292, 0
  br i1 %293, label %294, label %506

294:                                              ; preds = %281
  %295 = and i32 %243, 240
  %296 = icmp eq i32 %295, 0
  %297 = load ptr, ptr %27, align 8, !tbaa !36
  br i1 %296, label %300, label %298

298:                                              ; preds = %294
  call void @unpc_block(ptr noundef %297, ptr noundef %297, i32 noundef %236, ptr noundef null, i32 noundef 31, i32 noundef %230, i32 noundef 0) #33
  %299 = load ptr, ptr %27, align 8, !tbaa !36
  br label %300

300:                                              ; preds = %298, %294
  %301 = phi ptr [ %299, %298 ], [ %297, %294 ]
  %302 = load ptr, ptr %22, align 8, !tbaa !27
  call void @unpc_block(ptr noundef %301, ptr noundef %302, i32 noundef %236, ptr noundef nonnull %11, i32 noundef %248, i32 noundef %230, i32 noundef %244) #33
  %303 = load i8, ptr %24, align 1, !tbaa !64
  %304 = zext i8 %303 to i32
  %305 = mul nuw nsw i32 %264, %284
  %306 = lshr i32 %305, 2
  %307 = load i8, ptr %25, align 8, !tbaa !65
  %308 = zext i8 %307 to i32
  %309 = load i16, ptr %26, align 2, !tbaa !66
  %310 = zext i16 %309 to i32
  call void @set_ag_params(ptr noundef nonnull %10, i32 noundef %304, i32 noundef %306, i32 noundef %308, i32 noundef %236, i32 noundef %236, i32 noundef %310) #33
  %311 = load ptr, ptr %27, align 8, !tbaa !36
  %312 = call i32 @dyn_decomp(ptr noundef nonnull %10, ptr noundef nonnull %1, ptr noundef %311, i32 noundef %236, i32 noundef %230, ptr noundef nonnull %9) #33
  %313 = icmp eq i32 %312, 0
  br i1 %313, label %314, label %506

314:                                              ; preds = %300
  %315 = and i32 %260, 240
  %316 = icmp eq i32 %315, 0
  %317 = load ptr, ptr %27, align 8, !tbaa !36
  br i1 %316, label %368, label %318

318:                                              ; preds = %314
  call void @unpc_block(ptr noundef %317, ptr noundef %317, i32 noundef %236, ptr noundef null, i32 noundef 31, i32 noundef %230, i32 noundef 0) #33
  %319 = load ptr, ptr %27, align 8, !tbaa !36
  br label %368

320:                                              ; preds = %235
  %321 = load i8, ptr %21, align 1, !tbaa !60
  %322 = zext i8 %321 to i32
  %323 = sub nsw i32 32, %322
  %324 = icmp ult i8 %321, 17
  br i1 %324, label %325, label %343

325:                                              ; preds = %320
  %326 = icmp eq i32 %236, 0
  br i1 %326, label %366, label %327

327:                                              ; preds = %325
  %328 = zext i32 %236 to i64
  br label %329

329:                                              ; preds = %329, %327
  %330 = phi i64 [ 0, %327 ], [ %341, %329 ]
  %331 = call i32 @BitBufferRead(ptr noundef nonnull %1, i8 noundef zeroext %321) #33
  %332 = shl i32 %331, %323
  %333 = ashr i32 %332, %323
  %334 = load ptr, ptr %22, align 8, !tbaa !27
  %335 = getelementptr inbounds i32, ptr %334, i64 %330
  store i32 %333, ptr %335, align 4, !tbaa !46
  %336 = call i32 @BitBufferRead(ptr noundef nonnull %1, i8 noundef zeroext %321) #33
  %337 = shl i32 %336, %323
  %338 = ashr i32 %337, %323
  %339 = load ptr, ptr %23, align 8, !tbaa !35
  %340 = getelementptr inbounds i32, ptr %339, i64 %330
  store i32 %338, ptr %340, align 4, !tbaa !46
  %341 = add nuw nsw i64 %330, 1
  %342 = icmp eq i64 %341, %328
  br i1 %342, label %366, label %329, !llvm.loop !73

343:                                              ; preds = %320
  %344 = add i8 %321, -16
  %345 = icmp eq i32 %236, 0
  br i1 %345, label %366, label %346

346:                                              ; preds = %343
  %347 = zext i32 %236 to i64
  br label %348

348:                                              ; preds = %348, %346
  %349 = phi i64 [ 0, %346 ], [ %364, %348 ]
  %350 = call i32 @BitBufferRead(ptr noundef nonnull %1, i8 noundef zeroext 16) #33
  %351 = shl i32 %350, 16
  %352 = ashr i32 %351, %323
  %353 = call i32 @BitBufferRead(ptr noundef nonnull %1, i8 noundef zeroext %344) #33
  %354 = or i32 %352, %353
  %355 = load ptr, ptr %22, align 8, !tbaa !27
  %356 = getelementptr inbounds i32, ptr %355, i64 %349
  store i32 %354, ptr %356, align 4, !tbaa !46
  %357 = call i32 @BitBufferRead(ptr noundef nonnull %1, i8 noundef zeroext 16) #33
  %358 = shl i32 %357, 16
  %359 = ashr i32 %358, %323
  %360 = call i32 @BitBufferRead(ptr noundef nonnull %1, i8 noundef zeroext %344) #33
  %361 = or i32 %359, %360
  %362 = load ptr, ptr %23, align 8, !tbaa !35
  %363 = getelementptr inbounds i32, ptr %362, i64 %349
  store i32 %361, ptr %363, align 4, !tbaa !46
  %364 = add nuw nsw i64 %349, 1
  %365 = icmp eq i64 %364, %347
  br i1 %365, label %366, label %348, !llvm.loop !74

366:                                              ; preds = %348, %343, %329, %325
  %367 = mul i32 %236, %322
  store i32 %367, ptr %8, align 4, !tbaa !46
  store i32 %367, ptr %9, align 4, !tbaa !46
  br label %389

368:                                              ; preds = %318, %314
  %369 = phi ptr [ %319, %318 ], [ %317, %314 ]
  %370 = load ptr, ptr %23, align 8, !tbaa !35
  call void @unpc_block(ptr noundef %369, ptr noundef %370, i32 noundef %236, ptr noundef nonnull %12, i32 noundef %265, i32 noundef %230, i32 noundef %261) #33
  br i1 %277, label %389, label %371

371:                                              ; preds = %368
  %372 = shl i32 %236, 1
  %373 = icmp eq i32 %372, 0
  br i1 %373, label %389, label %374

374:                                              ; preds = %371
  %375 = zext i32 %372 to i64
  br label %376

376:                                              ; preds = %376, %374
  %377 = phi i64 [ 0, %374 ], [ %387, %376 ]
  %378 = call i32 @BitBufferRead(ptr noundef nonnull %7, i8 noundef zeroext %227) #33
  %379 = trunc i32 %378 to i16
  %380 = load ptr, ptr %28, align 8, !tbaa !54
  %381 = getelementptr inbounds i16, ptr %380, i64 %377
  store i16 %379, ptr %381, align 2, !tbaa !47
  %382 = call i32 @BitBufferRead(ptr noundef nonnull %7, i8 noundef zeroext %227) #33
  %383 = trunc i32 %382 to i16
  %384 = load ptr, ptr %28, align 8, !tbaa !54
  %385 = or i64 %377, 1
  %386 = getelementptr inbounds i16, ptr %384, i64 %385
  store i16 %383, ptr %386, align 2, !tbaa !47
  %387 = add nuw nsw i64 %377, 2
  %388 = icmp ult i64 %387, %375
  br i1 %388, label %376, label %389, !llvm.loop !75

389:                                              ; preds = %376, %371, %368, %366
  %390 = phi i8 [ 0, %366 ], [ 0, %368 ], [ %221, %371 ], [ %221, %376 ]
  %391 = phi i8 [ 0, %366 ], [ %240, %368 ], [ %240, %371 ], [ %240, %376 ]
  %392 = phi i8 [ 0, %366 ], [ %242, %368 ], [ %242, %371 ], [ %242, %376 ]
  %393 = zext i8 %390 to i32
  %394 = load i8, ptr %21, align 1, !tbaa !60
  %395 = zext i8 %394 to i32
  %396 = add nsw i32 %395, -16
  %397 = call i32 @llvm.fshl.i32(i32 %395, i32 %396, i32 30)
  switch i32 %397, label %430 [
    i32 0, label %398
    i32 1, label %405
    i32 2, label %413
    i32 4, label %422
  ]

398:                                              ; preds = %389
  %399 = zext i32 %30 to i64
  %400 = getelementptr inbounds i16, ptr %2, i64 %399
  %401 = load ptr, ptr %22, align 8, !tbaa !27
  %402 = load ptr, ptr %23, align 8, !tbaa !35
  %403 = zext i8 %391 to i32
  %404 = sext i8 %392 to i32
  call void @unmix16(ptr noundef %401, ptr noundef %402, ptr noundef nonnull %400, i32 noundef %4, i32 noundef %236, i32 noundef %403, i32 noundef %404) #33
  br label %430

405:                                              ; preds = %389
  %406 = mul i32 %30, 3
  %407 = zext i32 %406 to i64
  %408 = getelementptr inbounds i8, ptr %2, i64 %407
  %409 = load ptr, ptr %22, align 8, !tbaa !27
  %410 = load ptr, ptr %23, align 8, !tbaa !35
  %411 = zext i8 %391 to i32
  %412 = sext i8 %392 to i32
  call void @unmix20(ptr noundef %409, ptr noundef %410, ptr noundef nonnull %408, i32 noundef %4, i32 noundef %236, i32 noundef %411, i32 noundef %412) #33
  br label %430

413:                                              ; preds = %389
  %414 = mul i32 %30, 3
  %415 = zext i32 %414 to i64
  %416 = getelementptr inbounds i8, ptr %2, i64 %415
  %417 = load ptr, ptr %22, align 8, !tbaa !27
  %418 = load ptr, ptr %23, align 8, !tbaa !35
  %419 = zext i8 %391 to i32
  %420 = sext i8 %392 to i32
  %421 = load ptr, ptr %28, align 8, !tbaa !54
  call void @unmix24(ptr noundef %417, ptr noundef %418, ptr noundef nonnull %416, i32 noundef %4, i32 noundef %236, i32 noundef %419, i32 noundef %420, ptr noundef %421, i32 noundef %393) #33
  br label %430

422:                                              ; preds = %389
  %423 = zext i32 %30 to i64
  %424 = getelementptr inbounds i32, ptr %2, i64 %423
  %425 = load ptr, ptr %22, align 8, !tbaa !27
  %426 = load ptr, ptr %23, align 8, !tbaa !35
  %427 = zext i8 %391 to i32
  %428 = sext i8 %392 to i32
  %429 = load ptr, ptr %28, align 8, !tbaa !54
  call void @unmix32(ptr noundef %425, ptr noundef %426, ptr noundef nonnull %424, i32 noundef %4, i32 noundef %236, i32 noundef %427, i32 noundef %428, ptr noundef %429, i32 noundef %393) #33
  br label %430

430:                                              ; preds = %422, %413, %405, %398, %389
  store i32 %236, ptr %5, align 4, !tbaa !46
  br label %436

431:                                              ; preds = %35
  %432 = call noundef i32 @_ZN11ALACDecoder17DataStreamElementEP9BitBuffer(ptr nonnull align 8 poison, ptr noundef nonnull %1) #33, !range !76
  br label %436

433:                                              ; preds = %35
  %434 = call noundef i32 @_ZN11ALACDecoder11FillElementEP9BitBuffer(ptr nonnull align 8 poison, ptr noundef nonnull %1) #33, !range !76
  br label %436

435:                                              ; preds = %35
  call void @BitBufferByteAlign(ptr noundef nonnull %1, i32 noundef 0) #33
  br label %506

436:                                              ; preds = %433, %431, %430, %204, %35
  %437 = phi i32 [ %30, %35 ], [ %30, %433 ], [ %30, %431 ], [ %207, %430 ], [ %205, %204 ]
  %438 = phi i32 [ 0, %35 ], [ %434, %433 ], [ %432, %431 ], [ 0, %430 ], [ 0, %204 ]
  %439 = phi i32 [ %31, %35 ], [ %31, %433 ], [ %31, %431 ], [ %236, %430 ], [ %64, %204 ]
  %440 = icmp ult i32 %437, %4
  %441 = icmp eq i32 %438, 0
  %442 = and i1 %440, %441
  br i1 %442, label %29, label %443, !llvm.loop !77

443:                                              ; preds = %436, %206, %35, %35
  %444 = phi i32 [ %437, %436 ], [ %30, %206 ], [ %30, %35 ], [ %30, %35 ]
  %445 = phi i32 [ %438, %436 ], [ 0, %206 ], [ -50, %35 ], [ -50, %35 ]
  %446 = phi i32 [ %439, %436 ], [ %31, %206 ], [ %31, %35 ], [ %31, %35 ]
  %447 = icmp ult i32 %444, %4
  br i1 %447, label %448, label %506

448:                                              ; preds = %443
  %449 = icmp eq i32 %4, 1
  %450 = mul i32 %446, %4
  %451 = icmp eq i32 %450, 0
  %452 = zext i32 %446 to i64
  %453 = shl nuw nsw i64 %452, 2
  %454 = mul i32 %446, 3
  %455 = mul i32 %454, %4
  %456 = icmp eq i32 %455, 0
  %457 = mul i32 %4, 3
  %458 = zext i32 %454 to i64
  %459 = shl nuw nsw i64 %452, 1
  %460 = zext i32 %444 to i64
  %461 = zext i32 %4 to i64
  br label %462

462:                                              ; preds = %503, %448
  %463 = phi i64 [ %460, %448 ], [ %504, %503 ]
  %464 = load i8, ptr %21, align 1, !tbaa !60
  switch i8 %464, label %503 [
    i8 16, label %465
    i8 24, label %475
    i8 32, label %493
  ]

465:                                              ; preds = %462
  %466 = getelementptr inbounds i16, ptr %2, i64 %463
  br i1 %449, label %468, label %467

467:                                              ; preds = %465
  br i1 %451, label %503, label %469

468:                                              ; preds = %465
  call void @llvm.memset.p0.i64(ptr nonnull align 2 %466, i8 0, i64 %459, i1 false)
  br label %503

469:                                              ; preds = %469, %467
  %470 = phi i32 [ %473, %469 ], [ 0, %467 ]
  %471 = zext i32 %470 to i64
  %472 = getelementptr inbounds i16, ptr %466, i64 %471
  store i16 0, ptr %472, align 2, !tbaa !47
  %473 = add i32 %470, %4
  %474 = icmp ult i32 %473, %450
  br i1 %474, label %469, label %503, !llvm.loop !78

475:                                              ; preds = %462
  %476 = mul i64 %463, 3
  %477 = and i64 %476, 4294967295
  %478 = getelementptr inbounds i8, ptr %2, i64 %477
  br i1 %449, label %480, label %479

479:                                              ; preds = %475
  br i1 %456, label %503, label %481

480:                                              ; preds = %475
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %478, i8 0, i64 %458, i1 false)
  br label %503

481:                                              ; preds = %481, %479
  %482 = phi i32 [ %491, %481 ], [ 0, %479 ]
  %483 = zext i32 %482 to i64
  %484 = getelementptr inbounds i8, ptr %478, i64 %483
  store i8 0, ptr %484, align 1, !tbaa !37
  %485 = add nuw i32 %482, 1
  %486 = zext i32 %485 to i64
  %487 = getelementptr inbounds i8, ptr %478, i64 %486
  store i8 0, ptr %487, align 1, !tbaa !37
  %488 = add i32 %482, 2
  %489 = zext i32 %488 to i64
  %490 = getelementptr inbounds i8, ptr %478, i64 %489
  store i8 0, ptr %490, align 1, !tbaa !37
  %491 = add i32 %482, %457
  %492 = icmp ult i32 %491, %455
  br i1 %492, label %481, label %503, !llvm.loop !79

493:                                              ; preds = %462
  %494 = getelementptr inbounds i32, ptr %2, i64 %463
  br i1 %449, label %496, label %495

495:                                              ; preds = %493
  br i1 %451, label %503, label %497

496:                                              ; preds = %493
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %494, i8 0, i64 %453, i1 false)
  br label %503

497:                                              ; preds = %497, %495
  %498 = phi i32 [ %501, %497 ], [ 0, %495 ]
  %499 = zext i32 %498 to i64
  %500 = getelementptr inbounds i32, ptr %494, i64 %499
  store i32 0, ptr %500, align 4, !tbaa !46
  %501 = add i32 %498, %4
  %502 = icmp ult i32 %501, %450
  br i1 %502, label %497, label %503, !llvm.loop !80

503:                                              ; preds = %497, %496, %495, %481, %480, %479, %469, %468, %467, %462
  %504 = add nuw nsw i64 %463, 1
  %505 = icmp eq i64 %504, %461
  br i1 %505, label %506, label %462, !llvm.loop !81

506:                                              ; preds = %503, %443, %435, %300, %281, %217, %209, %89, %46, %38, %29, %6
  %507 = phi i32 [ -50, %6 ], [ 0, %435 ], [ %445, %443 ], [ %445, %503 ], [ -50, %217 ], [ -50, %209 ], [ -50, %46 ], [ -50, %38 ], [ -50, %29 ], [ %100, %89 ], [ %312, %300 ], [ %292, %281 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %12) #36
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %11) #36
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %10) #36
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #36
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #36
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #36
  ret i32 %507
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #14

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #1

; Function Attrs: mustprogress optsize uwtable
define internal noundef i32 @_ZN11ALACDecoder17DataStreamElementEP9BitBuffer(ptr nocapture nonnull readnone align 8 %0, ptr noundef %1) #12 align 2 {
  %3 = tail call zeroext i8 @BitBufferReadSmall(ptr noundef %1, i8 noundef zeroext 4) #33
  %4 = tail call zeroext i8 @BitBufferReadOne(ptr noundef %1) #33
  %5 = tail call zeroext i8 @BitBufferReadSmall(ptr noundef %1, i8 noundef zeroext 8) #33
  %6 = zext i8 %5 to i32
  %7 = icmp eq i8 %5, -1
  br i1 %7, label %8, label %12

8:                                                ; preds = %2
  %9 = tail call zeroext i8 @BitBufferReadSmall(ptr noundef %1, i8 noundef zeroext 8) #33
  %10 = zext i8 %9 to i32
  %11 = add nuw nsw i32 %10, 255
  br label %12

12:                                               ; preds = %8, %2
  %13 = phi i32 [ %11, %8 ], [ %6, %2 ]
  %14 = icmp eq i8 %4, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %12
  tail call void @BitBufferByteAlign(ptr noundef %1, i32 noundef 0) #33
  br label %16

16:                                               ; preds = %15, %12
  %17 = shl nuw nsw i32 %13, 3
  %18 = and i32 %17, 524280
  tail call void @BitBufferAdvance(ptr noundef %1, i32 noundef %18) #33
  %19 = load ptr, ptr %1, align 8, !tbaa !56
  %20 = getelementptr inbounds %struct.BitBuffer, ptr %1, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !58
  %22 = icmp ugt ptr %19, %21
  %23 = select i1 %22, i32 -50, i32 0
  ret i32 %23
}

; Function Attrs: mustprogress optsize uwtable
define internal noundef i32 @_ZN11ALACDecoder11FillElementEP9BitBuffer(ptr nocapture nonnull readnone align 8 %0, ptr noundef %1) #12 align 2 {
  %3 = tail call zeroext i8 @BitBufferReadSmall(ptr noundef %1, i8 noundef zeroext 4) #33
  %4 = zext i8 %3 to i32
  %5 = icmp eq i8 %3, 15
  br i1 %5, label %6, label %10

6:                                                ; preds = %2
  %7 = tail call zeroext i8 @BitBufferReadSmall(ptr noundef %1, i8 noundef zeroext 8) #33
  %8 = zext i8 %7 to i32
  %9 = add nuw nsw i32 %8, 14
  br label %10

10:                                               ; preds = %6, %2
  %11 = phi i32 [ %9, %6 ], [ %4, %2 ]
  %12 = shl nuw nsw i32 %11, 3
  %13 = and i32 %12, 524280
  tail call void @BitBufferAdvance(ptr noundef %1, i32 noundef %13) #33
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
  tail call void @free(ptr noundef nonnull %3) #34
  store ptr null, ptr %2, align 8, !tbaa !88
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr inbounds %class.ALACEncoder, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !89
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %6
  tail call void @free(ptr noundef nonnull %8) #34
  store ptr null, ptr %7, align 8, !tbaa !89
  br label %11

11:                                               ; preds = %10, %6
  %12 = getelementptr inbounds %class.ALACEncoder, ptr %0, i64 0, i32 8
  %13 = load ptr, ptr %12, align 8, !tbaa !90
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  tail call void @free(ptr noundef nonnull %13) #34
  store ptr null, ptr %12, align 8, !tbaa !90
  br label %16

16:                                               ; preds = %15, %11
  %17 = getelementptr inbounds %class.ALACEncoder, ptr %0, i64 0, i32 9
  %18 = load ptr, ptr %17, align 8, !tbaa !91
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  tail call void @free(ptr noundef nonnull %18) #34
  store ptr null, ptr %17, align 8, !tbaa !91
  br label %21

21:                                               ; preds = %20, %16
  %22 = getelementptr inbounds %class.ALACEncoder, ptr %0, i64 0, i32 10
  %23 = load ptr, ptr %22, align 8, !tbaa !92
  %24 = icmp eq ptr %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %21
  tail call void @free(ptr noundef nonnull %23) #34
  store ptr null, ptr %22, align 8, !tbaa !92
  br label %26

26:                                               ; preds = %25, %21
  %27 = getelementptr inbounds %class.ALACEncoder, ptr %0, i64 0, i32 11
  %28 = load ptr, ptr %27, align 8, !tbaa !93
  %29 = icmp eq ptr %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %26
  tail call void @free(ptr noundef nonnull %28) #34
  store ptr null, ptr %27, align 8, !tbaa !93
  br label %31

31:                                               ; preds = %30, %26
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @_ZN11ALACEncoderD0Ev(ptr noundef nonnull align 8 dereferenceable(8300) %0) unnamed_addr #16 align 2 {
  tail call void @_ZN11ALACEncoderD2Ev(ptr noundef nonnull align 8 dereferenceable(8300) %0) #34
  tail call void @_ZdlPv(ptr noundef nonnull %0) #37
  ret void
}

; Function Attrs: mustprogress optsize uwtable
define internal noundef i32 @_ZN11ALACEncoder6EncodeE22AudioFormatDescriptionS0_PhS1_Pi(ptr noundef nonnull align 8 dereferenceable(8300) %0, ptr nocapture noundef readonly byval(%struct.AudioFormatDescription) align 8 %1, ptr nocapture noundef readnone byval(%struct.AudioFormatDescription) align 8 %2, ptr noundef %3, ptr noundef %4, ptr nocapture noundef %5) unnamed_addr #12 align 2 {
  %7 = alloca %struct.BitBuffer, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #36
  %8 = load i32, ptr %5, align 4, !tbaa !46
  %9 = getelementptr inbounds %struct.AudioFormatDescription, ptr %1, i64 0, i32 3
  %10 = load i32, ptr %9, align 8, !tbaa !94
  %11 = udiv i32 %8, %10
  %12 = getelementptr inbounds %class.ALACEncoder, ptr %0, i64 0, i32 18
  %13 = load i32, ptr %12, align 8, !tbaa !97
  call void @BitBufferInit(ptr noundef nonnull %7, ptr noundef %4, i32 noundef %13) #33
  %14 = getelementptr inbounds %struct.AudioFormatDescription, ptr %1, i64 0, i32 6
  %15 = load i32, ptr %14, align 4, !tbaa !98
  switch i32 %15, label %30 [
    i32 2, label %16
    i32 1, label %27
  ]

16:                                               ; preds = %6
  call void @BitBufferWrite(ptr noundef nonnull %7, i32 noundef 1, i32 noundef 3) #33
  call void @BitBufferWrite(ptr noundef nonnull %7, i32 noundef 0, i32 noundef 4) #33
  %17 = getelementptr inbounds %class.ALACEncoder, ptr %0, i64 0, i32 2
  %18 = load i8, ptr %17, align 2, !tbaa !87, !range !99, !noundef !100
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = call noundef i32 @_ZN11ALACEncoder12EncodeStereoEP9BitBufferPvjjj(ptr noundef nonnull align 8 dereferenceable(8300) %0, ptr noundef nonnull %7, ptr noundef %3, i32 noundef 2, i32 noundef 0, i32 noundef %11) #33
  br label %24

22:                                               ; preds = %16
  %23 = call noundef i32 @_ZN11ALACEncoder16EncodeStereoFastEP9BitBufferPvjjj(ptr noundef nonnull align 8 dereferenceable(8300) %0, ptr noundef nonnull %7, ptr noundef %3, i32 noundef 2, i32 noundef 0, i32 noundef %11) #33
  br label %24

24:                                               ; preds = %22, %20
  %25 = phi i32 [ %21, %20 ], [ %23, %22 ]
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %83, label %92

27:                                               ; preds = %6
  call void @BitBufferWrite(ptr noundef nonnull %7, i32 noundef 0, i32 noundef 3) #33
  call void @BitBufferWrite(ptr noundef nonnull %7, i32 noundef 0, i32 noundef 4) #33
  %28 = call noundef i32 @_ZN11ALACEncoder10EncodeMonoEP9BitBufferPvjjj(ptr noundef nonnull align 8 dereferenceable(8300) %0, ptr noundef nonnull %7, ptr noundef %3, i32 noundef 1, i32 noundef 0, i32 noundef %11) #33
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
  call void @BitBufferWrite(ptr noundef nonnull %7, i32 noundef %55, i32 noundef 3) #33
  switch i32 %55, label %71 [
    i32 0, label %56
    i32 1, label %61
    i32 3, label %66
  ]

56:                                               ; preds = %47
  %57 = zext i8 %44 to i32
  call void @BitBufferWrite(ptr noundef nonnull %7, i32 noundef %57, i32 noundef 4) #33
  %58 = call noundef i32 @_ZN11ALACEncoder10EncodeMonoEP9BitBufferPvjjj(ptr noundef nonnull align 8 dereferenceable(8300) %0, ptr noundef nonnull %7, ptr noundef %41, i32 noundef %15, i32 noundef %42, i32 noundef %11) #33
  %59 = add nuw i32 %42, 1
  %60 = add i8 %44, 1
  br label %73

61:                                               ; preds = %47
  %62 = zext i8 %43 to i32
  call void @BitBufferWrite(ptr noundef nonnull %7, i32 noundef %62, i32 noundef 4) #33
  %63 = call noundef i32 @_ZN11ALACEncoder12EncodeStereoEP9BitBufferPvjjj(ptr noundef nonnull align 8 dereferenceable(8300) %0, ptr noundef nonnull %7, ptr noundef %41, i32 noundef %15, i32 noundef %42, i32 noundef %11) #33
  %64 = add i32 %42, 2
  %65 = add i8 %43, 1
  br label %73

66:                                               ; preds = %47
  %67 = zext i8 %45 to i32
  call void @BitBufferWrite(ptr noundef nonnull %7, i32 noundef %67, i32 noundef 4) #33
  %68 = call noundef i32 @_ZN11ALACEncoder10EncodeMonoEP9BitBufferPvjjj(ptr noundef nonnull align 8 dereferenceable(8300) %0, ptr noundef nonnull %7, ptr noundef %41, i32 noundef %15, i32 noundef %42, i32 noundef %11) #33
  %69 = add nuw i32 %42, 1
  %70 = add i8 %45, 1
  br label %73

71:                                               ; preds = %47
  %.lcssa = phi i32 [ %55, %47 ]
  %72 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %.lcssa) #33
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
  call void @BitBufferWrite(ptr noundef nonnull %7, i32 noundef 7, i32 noundef 3) #33
  call void @BitBufferByteAlign(ptr noundef nonnull %7, i32 noundef 1) #33
  %84 = call i32 @BitBufferGetPosition(ptr noundef nonnull %7) #33
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
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #36
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
  %29 = tail call noalias ptr @calloc(i64 noundef %28, i64 noundef 1) #35
  %30 = getelementptr inbounds %class.ALACEncoder, ptr %0, i64 0, i32 6
  store ptr %29, ptr %30, align 8, !tbaa !88
  %31 = tail call noalias ptr @calloc(i64 noundef %28, i64 noundef 1) #35
  %32 = getelementptr inbounds %class.ALACEncoder, ptr %0, i64 0, i32 7
  store ptr %31, ptr %32, align 8, !tbaa !89
  %33 = tail call noalias ptr @calloc(i64 noundef %28, i64 noundef 1) #35
  %34 = getelementptr inbounds %class.ALACEncoder, ptr %0, i64 0, i32 8
  store ptr %33, ptr %34, align 8, !tbaa !90
  %35 = tail call noalias ptr @calloc(i64 noundef %28, i64 noundef 1) #35
  %36 = getelementptr inbounds %class.ALACEncoder, ptr %0, i64 0, i32 9
  store ptr %35, ptr %36, align 8, !tbaa !91
  %37 = shl i32 %22, 1
  %38 = zext i32 %37 to i64
  %39 = shl nuw nsw i64 %38, 1
  %40 = tail call noalias ptr @calloc(i64 noundef %39, i64 noundef 1) #35
  %41 = getelementptr inbounds %class.ALACEncoder, ptr %0, i64 0, i32 10
  store ptr %40, ptr %41, align 8, !tbaa !92
  %42 = zext i32 %25 to i64
  %43 = tail call noalias ptr @calloc(i64 noundef %42, i64 noundef 1) #35
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
  tail call void @init_coefs(ptr noundef nonnull %67, i32 noundef 9, i32 noundef 16) #33
  %68 = getelementptr inbounds %class.ALACEncoder, ptr %0, i64 0, i32 13, i64 %59, i64 %66
  tail call void @init_coefs(ptr noundef nonnull %68, i32 noundef 9, i32 noundef 16) #33
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
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #36
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !62
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %9) #36
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #36
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #36
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
  call void @mix16(ptr noundef %2, i32 noundef %3, ptr noundef %53, ptr noundef %54, i32 noundef %36, i32 noundef 2, i32 noundef %46) #33
  br label %66

55:                                               ; preds = %44
  %56 = load ptr, ptr %34, align 8, !tbaa !88
  %57 = load ptr, ptr %35, align 8, !tbaa !89
  call void @mix20(ptr noundef %2, i32 noundef %3, ptr noundef %56, ptr noundef %57, i32 noundef %36, i32 noundef 2, i32 noundef %46) #33
  br label %66

58:                                               ; preds = %44
  %59 = load ptr, ptr %34, align 8, !tbaa !88
  %60 = load ptr, ptr %35, align 8, !tbaa !89
  %61 = load ptr, ptr %37, align 8, !tbaa !92
  call void @mix24(ptr noundef %2, i32 noundef %3, ptr noundef %59, ptr noundef %60, i32 noundef %36, i32 noundef 2, i32 noundef %46, ptr noundef %61, i32 noundef %23) #33
  br label %66

62:                                               ; preds = %44
  %63 = load ptr, ptr %34, align 8, !tbaa !88
  %64 = load ptr, ptr %35, align 8, !tbaa !89
  %65 = load ptr, ptr %37, align 8, !tbaa !92
  call void @mix32(ptr noundef %2, i32 noundef %3, ptr noundef %63, ptr noundef %64, i32 noundef %36, i32 noundef 2, i32 noundef %46, ptr noundef %65, i32 noundef %23) #33
  br label %66

66:                                               ; preds = %62, %58, %55, %52, %44
  %67 = load ptr, ptr %38, align 8, !tbaa !93
  %68 = load i32, ptr %39, align 8, !tbaa !97
  call void @BitBufferInit(ptr noundef nonnull %7, ptr noundef %67, i32 noundef %68) #33
  %69 = load ptr, ptr %34, align 8, !tbaa !88
  %70 = load ptr, ptr %40, align 8, !tbaa !90
  call void @pc_block(ptr noundef %69, ptr noundef %70, i32 noundef %36, ptr noundef nonnull %41, i32 noundef 8, i32 noundef %27, i32 noundef 9) #33
  %71 = load ptr, ptr %35, align 8, !tbaa !89
  %72 = load ptr, ptr %42, align 8, !tbaa !91
  call void @pc_block(ptr noundef %71, ptr noundef %72, i32 noundef %36, ptr noundef nonnull %43, i32 noundef 8, i32 noundef %27, i32 noundef 9) #33
  call void @set_ag_params(ptr noundef nonnull %9, i32 noundef 10, i32 noundef 40, i32 noundef 14, i32 noundef %36, i32 noundef %36, i32 noundef 255) #33
  %73 = load ptr, ptr %40, align 8, !tbaa !90
  %74 = call i32 @dyn_comp(ptr noundef nonnull %9, ptr noundef %73, ptr noundef nonnull %7, i32 noundef %36, i32 noundef %27, ptr noundef nonnull %10) #33
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %249

76:                                               ; preds = %66
  call void @set_ag_params(ptr noundef nonnull %9, i32 noundef 10, i32 noundef 40, i32 noundef 14, i32 noundef %36, i32 noundef %36, i32 noundef 255) #33
  %77 = load ptr, ptr %42, align 8, !tbaa !91
  %78 = call i32 @dyn_comp(ptr noundef nonnull %9, ptr noundef %77, ptr noundef nonnull %7, i32 noundef %36, i32 noundef %27, ptr noundef nonnull %11) #33
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
  call void @mix16(ptr noundef %2, i32 noundef %3, ptr noundef %98, ptr noundef %99, i32 noundef %5, i32 noundef 2, i32 noundef %92) #33
  br label %111

100:                                              ; preds = %89
  %101 = load ptr, ptr %34, align 8, !tbaa !88
  %102 = load ptr, ptr %35, align 8, !tbaa !89
  call void @mix20(ptr noundef %2, i32 noundef %3, ptr noundef %101, ptr noundef %102, i32 noundef %5, i32 noundef 2, i32 noundef %92) #33
  br label %111

103:                                              ; preds = %89
  %104 = load ptr, ptr %34, align 8, !tbaa !88
  %105 = load ptr, ptr %35, align 8, !tbaa !89
  %106 = load ptr, ptr %37, align 8, !tbaa !92
  call void @mix24(ptr noundef %2, i32 noundef %3, ptr noundef %104, ptr noundef %105, i32 noundef %5, i32 noundef 2, i32 noundef %92, ptr noundef %106, i32 noundef %23) #33
  br label %111

107:                                              ; preds = %89
  %108 = load ptr, ptr %34, align 8, !tbaa !88
  %109 = load ptr, ptr %35, align 8, !tbaa !89
  %110 = load ptr, ptr %37, align 8, !tbaa !92
  call void @mix32(ptr noundef %2, i32 noundef %3, ptr noundef %108, ptr noundef %109, i32 noundef %5, i32 noundef 2, i32 noundef %92, ptr noundef %110, i32 noundef %23) #33
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
  call void @BitBufferInit(ptr noundef nonnull %7, ptr noundef %134, i32 noundef %135) #33
  %136 = add nsw i64 %129, -1
  %137 = getelementptr inbounds [16 x i16], ptr %18, i64 %136
  %138 = getelementptr inbounds [16 x i16], ptr %19, i64 %136
  %139 = trunc i64 %129 to i32
  br label %161

140:                                              ; preds = %161
  call void @set_ag_params(ptr noundef nonnull %9, i32 noundef 10, i32 noundef 40, i32 noundef 14, i32 noundef %36, i32 noundef %36, i32 noundef 255) #33
  %141 = load ptr, ptr %40, align 8, !tbaa !90
  %142 = call i32 @dyn_comp(ptr noundef nonnull %9, ptr noundef %141, ptr noundef nonnull %7, i32 noundef %36, i32 noundef %27, ptr noundef nonnull %10) #33
  %143 = load i32, ptr %10, align 4, !tbaa !46
  %144 = shl i32 %143, 3
  %145 = trunc i64 %129 to i32
  %146 = shl i32 %145, 4
  %147 = add i32 %144, %146
  %148 = icmp ult i32 %147, %130
  %149 = select i1 %148, i32 %139, i32 %132
  %150 = call i32 @llvm.umin.i32(i32 %147, i32 %130)
  call void @set_ag_params(ptr noundef nonnull %9, i32 noundef 10, i32 noundef 40, i32 noundef 14, i32 noundef %36, i32 noundef %36, i32 noundef 255) #33
  %151 = load ptr, ptr %42, align 8, !tbaa !91
  %152 = call i32 @dyn_comp(ptr noundef nonnull %9, ptr noundef %151, ptr noundef nonnull %7, i32 noundef %36, i32 noundef %27, ptr noundef nonnull %11) #33
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
  call void @pc_block(ptr noundef %163, ptr noundef %164, i32 noundef %112, ptr noundef nonnull %137, i32 noundef %139, i32 noundef %27, i32 noundef 9) #33
  %165 = load ptr, ptr %35, align 8, !tbaa !89
  %166 = load ptr, ptr %42, align 8, !tbaa !91
  call void @pc_block(ptr noundef %165, ptr noundef %166, i32 noundef %112, ptr noundef nonnull %138, i32 noundef %139, i32 noundef %27, i32 noundef 9) #33
  %167 = add nuw nsw i32 %162, 1
  %168 = icmp eq i32 %167, 8
  br i1 %168, label %140, label %161, !llvm.loop !115

169:                                              ; preds = %113
  call void @BitBufferWrite(ptr noundef %1, i32 noundef 0, i32 noundef 12) #33
  %170 = select i1 %30, i32 0, i32 8
  %171 = shl nuw nsw i32 %23, 1
  %172 = or i32 %170, %171
  call void @BitBufferWrite(ptr noundef %1, i32 noundef %172, i32 noundef 4) #33
  br i1 %30, label %174, label %173

173:                                              ; preds = %169
  call void @BitBufferWrite(ptr noundef %1, i32 noundef %5, i32 noundef 32) #33
  br label %174

174:                                              ; preds = %173, %169
  call void @BitBufferWrite(ptr noundef %1, i32 noundef 2, i32 noundef 8) #33
  call void @BitBufferWrite(ptr noundef %1, i32 noundef %92, i32 noundef 8) #33
  call void @BitBufferWrite(ptr noundef %1, i32 noundef 9, i32 noundef 8) #33
  %175 = or i32 %.lcssa3, 128
  call void @BitBufferWrite(ptr noundef %1, i32 noundef %175, i32 noundef 8) #33
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
  call void @BitBufferWrite(ptr noundef %1, i32 noundef %185, i32 noundef 16) #33
  %186 = add nuw nsw i64 %182, 1
  %187 = icmp eq i64 %186, %180
  br i1 %187, label %188, label %181, !llvm.loop !116

188:                                              ; preds = %181, %174
  call void @BitBufferWrite(ptr noundef %1, i32 noundef 9, i32 noundef 8) #33
  %189 = or i32 %.lcssa1, 128
  call void @BitBufferWrite(ptr noundef %1, i32 noundef %189, i32 noundef 8) #33
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
  call void @BitBufferWrite(ptr noundef %1, i32 noundef %199, i32 noundef 16) #33
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
  call void @BitBufferWrite(ptr noundef %1, i32 noundef %219, i32 noundef %206) #33
  %220 = add nuw nsw i64 %209, 2
  %221 = icmp ult i64 %220, %207
  br i1 %221, label %208, label %222, !llvm.loop !118

222:                                              ; preds = %208, %202
  %223 = load ptr, ptr %34, align 8, !tbaa !88
  %224 = load ptr, ptr %40, align 8, !tbaa !90
  %225 = add nsw i32 %.lcssa3, -1
  %226 = zext i32 %225 to i64
  %227 = getelementptr inbounds [16 x i16], ptr %18, i64 %226
  call void @pc_block(ptr noundef %223, ptr noundef %224, i32 noundef %5, ptr noundef nonnull %227, i32 noundef %.lcssa3, i32 noundef %27, i32 noundef 9) #33
  call void @set_ag_params(ptr noundef nonnull %9, i32 noundef 10, i32 noundef 40, i32 noundef 14, i32 noundef %5, i32 noundef %5, i32 noundef 255) #33
  %228 = load ptr, ptr %40, align 8, !tbaa !90
  %229 = call i32 @dyn_comp(ptr noundef nonnull %9, ptr noundef %228, ptr noundef %1, i32 noundef %5, i32 noundef %27, ptr noundef nonnull %10) #33
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %231, label %249

231:                                              ; preds = %222
  %232 = load ptr, ptr %35, align 8, !tbaa !89
  %233 = load ptr, ptr %42, align 8, !tbaa !91
  %234 = add nsw i32 %.lcssa1, -1
  %235 = zext i32 %234 to i64
  %236 = getelementptr inbounds [16 x i16], ptr %19, i64 %235
  call void @pc_block(ptr noundef %232, ptr noundef %233, i32 noundef %5, ptr noundef nonnull %236, i32 noundef %.lcssa1, i32 noundef %27, i32 noundef 9) #33
  call void @set_ag_params(ptr noundef nonnull %9, i32 noundef 10, i32 noundef 40, i32 noundef 14, i32 noundef %5, i32 noundef %5, i32 noundef 255) #33
  %237 = load ptr, ptr %42, align 8, !tbaa !91
  %238 = call i32 @dyn_comp(ptr noundef nonnull %9, ptr noundef %237, ptr noundef %1, i32 noundef %5, i32 noundef %27, ptr noundef nonnull %11) #33
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %240, label %249

240:                                              ; preds = %231
  %241 = call i32 @BitBufferGetPosition(ptr noundef %1) #33
  %242 = call i32 @BitBufferGetPosition(ptr noundef nonnull %8) #33
  %243 = sub i32 %241, %242
  %244 = icmp ult i32 %243, %126
  br i1 %244, label %249, label %245

245:                                              ; preds = %240
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 24, i1 false), !tbaa.struct !62
  %246 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %243, i32 noundef %126) #33
  br label %247

247:                                              ; preds = %245, %113
  %248 = call noundef i32 @_ZN11ALACEncoder18EncodeStereoEscapeEP9BitBufferPvjj(ptr noundef nonnull align 8 dereferenceable(8300) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %5) #33
  br label %249

249:                                              ; preds = %247, %240, %231, %222, %76, %66, %6
  %250 = phi i32 [ -50, %6 ], [ %229, %222 ], [ %238, %231 ], [ 0, %247 ], [ 0, %240 ], [ %78, %76 ], [ %74, %66 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #36
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #36
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %9) #36
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #36
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #36
  ret i32 %250
}

; Function Attrs: mustprogress optsize uwtable
define internal noundef i32 @_ZN11ALACEncoder16EncodeStereoFastEP9BitBufferPvjjj(ptr noundef nonnull align 8 dereferenceable(8300) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #12 align 2 {
  %7 = alloca %struct.BitBuffer, align 8
  %8 = alloca %struct.AGParamRec, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !62
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %8) #36
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #36
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #36
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
  tail call void @mix16(ptr noundef %2, i32 noundef %3, ptr noundef %34, ptr noundef %36, i32 noundef %5, i32 noundef 2, i32 noundef 0) #33
  br label %56

37:                                               ; preds = %15
  %38 = getelementptr inbounds %class.ALACEncoder, ptr %0, i64 0, i32 6
  %39 = load ptr, ptr %38, align 8, !tbaa !88
  %40 = getelementptr inbounds %class.ALACEncoder, ptr %0, i64 0, i32 7
  %41 = load ptr, ptr %40, align 8, !tbaa !89
  tail call void @mix20(ptr noundef %2, i32 noundef %3, ptr noundef %39, ptr noundef %41, i32 noundef %5, i32 noundef 2, i32 noundef 0) #33
  br label %56

42:                                               ; preds = %15
  %43 = getelementptr inbounds %class.ALACEncoder, ptr %0, i64 0, i32 6
  %44 = load ptr, ptr %43, align 8, !tbaa !88
  %45 = getelementptr inbounds %class.ALACEncoder, ptr %0, i64 0, i32 7
  %46 = load ptr, ptr %45, align 8, !tbaa !89
  %47 = getelementptr inbounds %class.ALACEncoder, ptr %0, i64 0, i32 10
  %48 = load ptr, ptr %47, align 8, !tbaa !92
  tail call void @mix24(ptr noundef %2, i32 noundef %3, ptr noundef %44, ptr noundef %46, i32 noundef %5, i32 noundef 2, i32 noundef 0, ptr noundef %48, i32 noundef %22) #33
  br label %56

49:                                               ; preds = %15
  %50 = getelementptr inbounds %class.ALACEncoder, ptr %0, i64 0, i32 6
  %51 = load ptr, ptr %50, align 8, !tbaa !88
  %52 = getelementptr inbounds %class.ALACEncoder, ptr %0, i64 0, i32 7
  %53 = load ptr, ptr %52, align 8, !tbaa !89
  %54 = getelementptr inbounds %class.ALACEncoder, ptr %0, i64 0, i32 10
  %55 = load ptr, ptr %54, align 8, !tbaa !92
  tail call void @mix32(ptr noundef %2, i32 noundef %3, ptr noundef %51, ptr noundef %53, i32 noundef %5, i32 noundef 2, i32 noundef 0, ptr noundef %55, i32 noundef %22) #33
  br label %56

56:                                               ; preds = %49, %42, %37, %32, %15
  tail call void @BitBufferWrite(ptr noundef nonnull %1, i32 noundef 0, i32 noundef 12) #33
  %57 = select i1 %29, i32 0, i32 8
  %58 = shl nuw nsw i32 %22, 1
  %59 = or i32 %57, %58
  tail call void @BitBufferWrite(ptr noundef nonnull %1, i32 noundef %59, i32 noundef 4) #33
  br i1 %29, label %61, label %60

60:                                               ; preds = %56
  tail call void @BitBufferWrite(ptr noundef nonnull %1, i32 noundef %5, i32 noundef 32) #33
  br label %61

61:                                               ; preds = %60, %56
  tail call void @BitBufferWrite(ptr noundef nonnull %1, i32 noundef 2, i32 noundef 8) #33
  tail call void @BitBufferWrite(ptr noundef nonnull %1, i32 noundef 0, i32 noundef 8) #33
  tail call void @BitBufferWrite(ptr noundef nonnull %1, i32 noundef 9, i32 noundef 8) #33
  tail call void @BitBufferWrite(ptr noundef nonnull %1, i32 noundef 136, i32 noundef 8) #33
  br label %62

62:                                               ; preds = %62, %61
  %63 = phi i64 [ 0, %61 ], [ %67, %62 ]
  %64 = getelementptr inbounds [16 x i16], ptr %17, i64 7, i64 %63
  %65 = load i16, ptr %64, align 2, !tbaa !47
  %66 = sext i16 %65 to i32
  tail call void @BitBufferWrite(ptr noundef %1, i32 noundef %66, i32 noundef 16) #33
  %67 = add nuw nsw i64 %63, 1
  %68 = icmp eq i64 %67, 8
  br i1 %68, label %69, label %62, !llvm.loop !119

69:                                               ; preds = %62
  tail call void @BitBufferWrite(ptr noundef %1, i32 noundef 9, i32 noundef 8) #33
  tail call void @BitBufferWrite(ptr noundef %1, i32 noundef 136, i32 noundef 8) #33
  br label %70

70:                                               ; preds = %70, %69
  %71 = phi i64 [ 0, %69 ], [ %75, %70 ]
  %72 = getelementptr inbounds [16 x i16], ptr %18, i64 7, i64 %71
  %73 = load i16, ptr %72, align 2, !tbaa !47
  %74 = sext i16 %73 to i32
  tail call void @BitBufferWrite(ptr noundef %1, i32 noundef %74, i32 noundef 16) #33
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
  tail call void @BitBufferWrite(ptr noundef %1, i32 noundef %96, i32 noundef %83) #33
  %97 = add nuw nsw i64 %86, 2
  %98 = icmp ult i64 %97, %84
  br i1 %98, label %85, label %99, !llvm.loop !121

99:                                               ; preds = %85, %78, %77
  %100 = getelementptr inbounds %class.ALACEncoder, ptr %0, i64 0, i32 6
  %101 = load ptr, ptr %100, align 8, !tbaa !88
  %102 = getelementptr inbounds %class.ALACEncoder, ptr %0, i64 0, i32 8
  %103 = load ptr, ptr %102, align 8, !tbaa !90
  %104 = getelementptr inbounds [16 x i16], ptr %17, i64 7
  tail call void @pc_block(ptr noundef %101, ptr noundef %103, i32 noundef %5, ptr noundef nonnull %104, i32 noundef 8, i32 noundef %26, i32 noundef 9) #33
  call void @set_ag_params(ptr noundef nonnull %8, i32 noundef 10, i32 noundef 40, i32 noundef 14, i32 noundef %5, i32 noundef %5, i32 noundef 255) #33
  %105 = load ptr, ptr %102, align 8, !tbaa !90
  %106 = call i32 @dyn_comp(ptr noundef nonnull %8, ptr noundef %105, ptr noundef %1, i32 noundef %5, i32 noundef %26, ptr noundef nonnull %9) #33
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %143

108:                                              ; preds = %99
  %109 = getelementptr inbounds %class.ALACEncoder, ptr %0, i64 0, i32 7
  %110 = load ptr, ptr %109, align 8, !tbaa !89
  %111 = getelementptr inbounds %class.ALACEncoder, ptr %0, i64 0, i32 9
  %112 = load ptr, ptr %111, align 8, !tbaa !91
  %113 = getelementptr inbounds [16 x i16], ptr %18, i64 7
  call void @pc_block(ptr noundef %110, ptr noundef %112, i32 noundef %5, ptr noundef nonnull %113, i32 noundef 8, i32 noundef %26, i32 noundef 9) #33
  call void @set_ag_params(ptr noundef nonnull %8, i32 noundef 10, i32 noundef 40, i32 noundef 14, i32 noundef %5, i32 noundef %5, i32 noundef 255) #33
  %114 = load ptr, ptr %111, align 8, !tbaa !91
  %115 = call i32 @dyn_comp(ptr noundef nonnull %8, ptr noundef %114, ptr noundef %1, i32 noundef %5, i32 noundef %26, ptr noundef nonnull %10) #33
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
  %135 = call i32 @BitBufferGetPosition(ptr noundef %1) #33
  %136 = call i32 @BitBufferGetPosition(ptr noundef nonnull %7) #33
  %137 = sub i32 %135, %136
  %138 = icmp ult i32 %137, %132
  br i1 %138, label %143, label %139

139:                                              ; preds = %134
  %140 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %137, i32 noundef %132) #33
  br label %141

141:                                              ; preds = %139, %117
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false), !tbaa.struct !62
  %142 = call noundef i32 @_ZN11ALACEncoder18EncodeStereoEscapeEP9BitBufferPvjj(ptr noundef nonnull align 8 dereferenceable(8300) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %5) #33
  br label %143

143:                                              ; preds = %141, %134, %108, %99, %6
  %144 = phi i32 [ -50, %6 ], [ %106, %99 ], [ %115, %108 ], [ 0, %141 ], [ 0, %134 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #36
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #36
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %8) #36
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #36
  ret i32 %144
}

; Function Attrs: mustprogress optsize uwtable
define internal noundef i32 @_ZN11ALACEncoder10EncodeMonoEP9BitBufferPvjjj(ptr noundef nonnull align 8 dereferenceable(8300) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #12 align 2 {
  %7 = alloca %struct.BitBuffer, align 8
  %8 = alloca %struct.AGParamRec, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.BitBuffer, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !62
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %8) #36
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #36
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
  tail call void @copy20ToPredictor(ptr noundef %2, i32 noundef %3, ptr noundef %59, i32 noundef %5) #33
  br label %93

60:                                               ; preds = %15
  %61 = getelementptr inbounds %class.ALACEncoder, ptr %0, i64 0, i32 6
  %62 = load ptr, ptr %61, align 8, !tbaa !88
  tail call void @copy24ToPredictor(ptr noundef %2, i32 noundef %3, ptr noundef %62, i32 noundef %5) #33
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
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #36
  %104 = load ptr, ptr %94, align 8, !tbaa !93
  %105 = load i32, ptr %95, align 8, !tbaa !97
  call void @BitBufferInit(ptr noundef nonnull %10, ptr noundef %104, i32 noundef %105) #33
  %106 = add nsw i64 %101, -1
  %107 = getelementptr inbounds [16 x i16], ptr %17, i64 %106
  %108 = trunc i64 %101 to i32
  br label %115

109:                                              ; preds = %115
  %110 = load ptr, ptr %96, align 8, !tbaa !88
  %111 = load ptr, ptr %97, align 8, !tbaa !90
  call void @pc_block(ptr noundef %110, ptr noundef %111, i32 noundef %99, ptr noundef nonnull %107, i32 noundef %108, i32 noundef %26, i32 noundef 9) #33
  call void @set_ag_params(ptr noundef nonnull %8, i32 noundef 10, i32 noundef 40, i32 noundef 14, i32 noundef %99, i32 noundef %99, i32 noundef 255) #33
  %112 = load ptr, ptr %97, align 8, !tbaa !90
  %113 = call i32 @dyn_comp(ptr noundef nonnull %8, ptr noundef %112, ptr noundef nonnull %10, i32 noundef %99, i32 noundef %26, ptr noundef nonnull %9) #33
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %122, label %121

115:                                              ; preds = %115, %100
  %116 = phi i32 [ 0, %100 ], [ %119, %115 ]
  %117 = load ptr, ptr %96, align 8, !tbaa !88
  %118 = load ptr, ptr %97, align 8, !tbaa !90
  call void @pc_block(ptr noundef %117, ptr noundef %118, i32 noundef %98, ptr noundef nonnull %107, i32 noundef %108, i32 noundef %26, i32 noundef 9) #33
  %119 = add nuw nsw i32 %116, 1
  %120 = icmp eq i32 %119, 7
  br i1 %120, label %109, label %115, !llvm.loop !125

121:                                              ; preds = %109
  %.lcssa = phi i32 [ %113, %109 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #36
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
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #36
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
  call void @BitBufferWrite(ptr noundef %1, i32 noundef 0, i32 noundef 12) #33
  %147 = select i1 %29, i32 0, i32 8
  %148 = shl nuw nsw i32 %21, 1
  %149 = or i32 %147, %148
  call void @BitBufferWrite(ptr noundef %1, i32 noundef %149, i32 noundef 4) #33
  br i1 %29, label %151, label %150

150:                                              ; preds = %146
  call void @BitBufferWrite(ptr noundef %1, i32 noundef %5, i32 noundef 32) #33
  br label %151

151:                                              ; preds = %150, %146
  call void @BitBufferWrite(ptr noundef %1, i32 noundef 0, i32 noundef 16) #33
  call void @BitBufferWrite(ptr noundef %1, i32 noundef 9, i32 noundef 8) #33
  %152 = or i32 %.lcssa3, 128
  call void @BitBufferWrite(ptr noundef %1, i32 noundef %152, i32 noundef 8) #33
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
  call void @BitBufferWrite(ptr noundef %1, i32 noundef %162, i32 noundef 16) #33
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
  call void @BitBufferWrite(ptr noundef %1, i32 noundef %176, i32 noundef %22) #33
  %177 = add nuw nsw i64 %172, 1
  %178 = icmp eq i64 %177, %170
  br i1 %178, label %179, label %171, !llvm.loop !128

179:                                              ; preds = %171, %165
  %180 = load ptr, ptr %96, align 8, !tbaa !88
  %181 = load ptr, ptr %97, align 8, !tbaa !90
  %182 = add nsw i32 %.lcssa3, -1
  %183 = zext i32 %182 to i64
  %184 = getelementptr inbounds [16 x i16], ptr %17, i64 %183
  call void @pc_block(ptr noundef %180, ptr noundef %181, i32 noundef %5, ptr noundef nonnull %184, i32 noundef %.lcssa3, i32 noundef %26, i32 noundef 9) #33
  call void @set_standard_ag_params(ptr noundef nonnull %8, i32 noundef %5, i32 noundef %5) #33
  %185 = load ptr, ptr %97, align 8, !tbaa !90
  %186 = call i32 @dyn_comp(ptr noundef nonnull %8, ptr noundef %185, ptr noundef %1, i32 noundef %5, i32 noundef %26, ptr noundef nonnull %9) #33
  %187 = call i32 @BitBufferGetPosition(ptr noundef %1) #33
  %188 = call i32 @BitBufferGetPosition(ptr noundef nonnull %7) #33
  %189 = sub i32 %187, %188
  %190 = icmp ult i32 %189, %144
  br i1 %190, label %247, label %191

191:                                              ; preds = %179
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false), !tbaa.struct !62
  %192 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %189, i32 noundef %144) #33
  br label %193

193:                                              ; preds = %191, %133
  %194 = phi i32 [ 0, %133 ], [ %186, %191 ]
  call void @BitBufferWrite(ptr noundef %1, i32 noundef 0, i32 noundef 12) #33
  %195 = select i1 %29, i32 1, i32 9
  call void @BitBufferWrite(ptr noundef %1, i32 noundef %195, i32 noundef 4) #33
  br i1 %29, label %197, label %196

196:                                              ; preds = %193
  call void @BitBufferWrite(ptr noundef %1, i32 noundef %5, i32 noundef 32) #33
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
  call void @BitBufferWrite(ptr noundef %1, i32 noundef %213, i32 noundef 16) #33
  %214 = add i32 %209, %3
  %215 = icmp ult i32 %214, %206
  br i1 %215, label %208, label %247, !llvm.loop !129

216:                                              ; preds = %197
  %217 = load ptr, ptr %96, align 8, !tbaa !88
  call void @copy20ToPredictor(ptr noundef %2, i32 noundef %3, ptr noundef %217, i32 noundef %5) #33
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
  call void @BitBufferWrite(ptr noundef %1, i32 noundef %225, i32 noundef 20) #33
  %226 = add nuw nsw i64 %222, 1
  %227 = icmp eq i64 %226, %220
  br i1 %227, label %247, label %221, !llvm.loop !130

228:                                              ; preds = %197
  %229 = load ptr, ptr %96, align 8, !tbaa !88
  call void @copy24ToPredictor(ptr noundef %2, i32 noundef %3, ptr noundef %229, i32 noundef %5) #33
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
  call void @BitBufferWrite(ptr noundef %1, i32 noundef %237, i32 noundef 24) #33
  %238 = add nuw nsw i64 %234, 1
  %239 = icmp eq i64 %238, %232
  br i1 %239, label %247, label %233, !llvm.loop !131

240:                                              ; preds = %240, %202
  %241 = phi i32 [ %245, %240 ], [ 0, %202 ]
  %242 = zext i32 %241 to i64
  %243 = getelementptr inbounds i32, ptr %2, i64 %242
  %244 = load i32, ptr %243, align 4, !tbaa !46
  call void @BitBufferWrite(ptr noundef %1, i32 noundef %244, i32 noundef 32) #33
  %245 = add i32 %241, %3
  %246 = icmp ult i32 %245, %203
  br i1 %246, label %240, label %247, !llvm.loop !132

247:                                              ; preds = %240, %233, %228, %221, %216, %208, %205, %202, %197, %179, %121, %6
  %248 = phi i32 [ -50, %6 ], [ %.lcssa, %121 ], [ %194, %197 ], [ %186, %179 ], [ %194, %205 ], [ %194, %216 ], [ %194, %228 ], [ %194, %202 ], [ %194, %208 ], [ %194, %221 ], [ %194, %233 ], [ %194, %240 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #36
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %8) #36
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #36
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
  tail call void @BitBufferWrite(ptr noundef %1, i32 noundef 0, i32 noundef 12) #33
  %9 = select i1 %8, i32 1, i32 9
  tail call void @BitBufferWrite(ptr noundef %1, i32 noundef %9, i32 noundef 4) #33
  br i1 %8, label %11, label %10

10:                                               ; preds = %5
  tail call void @BitBufferWrite(ptr noundef %1, i32 noundef %4, i32 noundef 32) #33
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
  tail call void @BitBufferWrite(ptr noundef %1, i32 noundef %28, i32 noundef 16) #33
  %29 = add nuw i32 %24, 1
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds i16, ptr %2, i64 %30
  %32 = load i16, ptr %31, align 2, !tbaa !47
  %33 = sext i16 %32 to i32
  tail call void @BitBufferWrite(ptr noundef %1, i32 noundef %33, i32 noundef 16) #33
  %34 = add i32 %24, %3
  %35 = icmp ult i32 %34, %21
  br i1 %35, label %23, label %85, !llvm.loop !133

36:                                               ; preds = %11
  %37 = getelementptr inbounds %class.ALACEncoder, ptr %0, i64 0, i32 6
  %38 = load ptr, ptr %37, align 8, !tbaa !88
  %39 = getelementptr inbounds %class.ALACEncoder, ptr %0, i64 0, i32 7
  %40 = load ptr, ptr %39, align 8, !tbaa !89
  tail call void @mix20(ptr noundef %2, i32 noundef %3, ptr noundef %38, ptr noundef %40, i32 noundef %4, i32 noundef 0, i32 noundef 0) #33
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
  tail call void @BitBufferWrite(ptr noundef %1, i32 noundef %48, i32 noundef 20) #33
  %49 = load ptr, ptr %39, align 8, !tbaa !89
  %50 = getelementptr inbounds i32, ptr %49, i64 %45
  %51 = load i32, ptr %50, align 4, !tbaa !46
  tail call void @BitBufferWrite(ptr noundef %1, i32 noundef %51, i32 noundef 20) #33
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
  tail call void @mix24(ptr noundef %2, i32 noundef %3, ptr noundef %56, ptr noundef %58, i32 noundef %4, i32 noundef 0, i32 noundef 0, ptr noundef %60, i32 noundef 0) #33
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
  tail call void @BitBufferWrite(ptr noundef %1, i32 noundef %68, i32 noundef 24) #33
  %69 = load ptr, ptr %57, align 8, !tbaa !89
  %70 = getelementptr inbounds i32, ptr %69, i64 %65
  %71 = load i32, ptr %70, align 4, !tbaa !46
  tail call void @BitBufferWrite(ptr noundef %1, i32 noundef %71, i32 noundef 24) #33
  %72 = add nuw nsw i64 %65, 1
  %73 = icmp eq i64 %72, %63
  br i1 %73, label %85, label %64, !llvm.loop !135

74:                                               ; preds = %74, %17
  %75 = phi i32 [ %83, %74 ], [ 0, %17 ]
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds i32, ptr %2, i64 %76
  %78 = load i32, ptr %77, align 4, !tbaa !46
  tail call void @BitBufferWrite(ptr noundef %1, i32 noundef %78, i32 noundef 32) #33
  %79 = add nuw i32 %75, 1
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds i32, ptr %2, i64 %80
  %82 = load i32, ptr %81, align 4, !tbaa !46
  tail call void @BitBufferWrite(ptr noundef %1, i32 noundef %82, i32 noundef 32) #33
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
  %5 = tail call i32 @Swap32NtoB(i32 noundef %4) #33
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
  %18 = tail call zeroext i16 @Swap16NtoB(i16 noundef zeroext 255) #33
  %19 = getelementptr inbounds %struct.ALACSpecificConfig, ptr %1, i64 0, i32 7
  store i16 %18, ptr %19, align 2, !tbaa !41
  %20 = getelementptr inbounds %class.ALACEncoder, ptr %0, i64 0, i32 16
  %21 = load i32, ptr %20, align 8, !tbaa !103
  %22 = tail call i32 @Swap32NtoB(i32 noundef %21) #33
  %23 = getelementptr inbounds %struct.ALACSpecificConfig, ptr %1, i64 0, i32 8
  store i32 %22, ptr %23, align 4, !tbaa !42
  %24 = getelementptr inbounds %class.ALACEncoder, ptr %0, i64 0, i32 15
  %25 = load i32, ptr %24, align 4, !tbaa !141
  %26 = tail call i32 @Swap32NtoB(i32 noundef %25) #33
  %27 = getelementptr inbounds %struct.ALACSpecificConfig, ptr %1, i64 0, i32 9
  store i32 %26, ptr %27, align 4, !tbaa !43
  %28 = getelementptr inbounds %class.ALACEncoder, ptr %0, i64 0, i32 20
  %29 = load i32, ptr %28, align 8, !tbaa !105
  %30 = tail call i32 @Swap32NtoB(i32 noundef %29) #33
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
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  call void @_ZN11ALACEncoder9GetConfigER18ALACSpecificConfig(ptr noundef nonnull align 8 dereferenceable(8300) %0, ptr noundef nonnull align 4 dereferenceable(24) %4) #33
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
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #36
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
  %13 = call i1 @_wyvern_slice__ZN11ALACDecoder6DecodeEP9BitBufferPhjjPj__585141188(ptr %1, ptr %2)
  %14 = call i1 @_wyvern_slice__ZN11ALACDecoder6DecodeEP9BitBufferPhjjPj__743864763(ptr %1, ptr %2, ptr %5)
  br i1 %14, label %15, label %288

15:                                               ; preds = %6
  store i32 0, ptr %5, align 4, !tbaa !17
  %16 = load ptr, ptr %1, align 8, !tbaa !19
  %17 = getelementptr inbounds %struct.BitBuffer, ptr %1, i64 0, i32 2
  %18 = load i32, ptr %17, align 8, !tbaa !23
  %19 = getelementptr inbounds %struct.BitBuffer, ptr %1, i64 0, i32 3
  %20 = load i32, ptr %19, align 4, !tbaa !24
  %21 = shl i32 %20, 3
  %22 = icmp eq i32 %3, 0
  br i1 %22, label %279, label %23

23:                                               ; preds = %15
  %24 = getelementptr inbounds %struct.AGParamRec, ptr %0, i64 0, i32 1
  %25 = load i32, ptr %24, align 4, !tbaa !148
  %26 = sub nsw i32 32, %4
  %27 = icmp eq i32 %4, 32
  %28 = zext i32 %4 to i64
  %29 = shl i64 4294967295, %28
  %30 = trunc i64 %29 to i32
  %31 = xor i32 %30, -1
  %32 = select i1 %27, i32 -1, i32 %31
  br label %33

33:                                               ; preds = %272, %23
  %34 = phi ptr [ %2, %23 ], [ %277, %272 ]
  %35 = phi i32 [ %25, %23 ], [ %276, %272 ]
  %36 = phi i32 [ 0, %23 ], [ %275, %272 ]
  %37 = phi i32 [ 0, %23 ], [ %274, %272 ]
  %38 = phi i32 [ %18, %23 ], [ %273, %272 ]
  %39 = icmp ult i32 %38, %21
  br i1 %39, label %40, label %279

40:                                               ; preds = %33
  %41 = lshr i32 %35, 9
  %42 = add nuw nsw i32 %41, 3
  %43 = zext i32 %42 to i64
  br label %44

44:                                               ; preds = %49, %40
  %45 = phi i64 [ 2147483648, %40 ], [ %50, %49 ]
  %46 = phi i64 [ 0, %40 ], [ %51, %49 ]
  %47 = and i64 %45, %43
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %44
  %50 = lshr i64 %45, 1
  %51 = add nuw nsw i64 %46, 1
  %52 = icmp eq i64 %51, 32
  br i1 %52, label %53, label %44, !llvm.loop !152

53:                                               ; preds = %49, %44
  %54 = phi i64 [ %46, %44 ], [ 32, %49 ]
  %55 = trunc i64 %54 to i32
  %56 = sub nsw i32 31, %55
  %57 = tail call i32 @llvm.umin.i32(i32 %56, i32 %10)
  %58 = lshr i32 %38, 3
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds i8, ptr %16, i64 %59
  %61 = load i8, ptr %60, align 1, !tbaa !16
  %62 = zext i8 %61 to i32
  %63 = shl nuw i32 %62, 24
  %64 = getelementptr inbounds i8, ptr %60, i64 1
  %65 = load i8, ptr %64, align 1, !tbaa !16
  %66 = zext i8 %65 to i32
  %67 = shl nuw nsw i32 %66, 16
  %68 = or i32 %67, %63
  %69 = getelementptr inbounds i8, ptr %60, i64 2
  %70 = load i8, ptr %69, align 1, !tbaa !16
  %71 = zext i8 %70 to i32
  %72 = shl nuw nsw i32 %71, 8
  %73 = or i32 %68, %72
  %74 = getelementptr inbounds i8, ptr %60, i64 3
  %75 = load i8, ptr %74, align 1, !tbaa !16
  %76 = zext i8 %75 to i32
  %77 = or i32 %73, %76
  %78 = and i32 %38, 7
  %79 = shl i32 %77, %78
  %80 = xor i32 %79, -1
  %81 = zext i32 %80 to i64
  br label %82

82:                                               ; preds = %87, %53
  %83 = phi i64 [ 2147483648, %53 ], [ %88, %87 ]
  %84 = phi i64 [ 0, %53 ], [ %89, %87 ]
  %85 = and i64 %83, %81
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %82
  %88 = lshr i64 %83, 1
  %89 = add nuw nsw i64 %84, 1
  %90 = icmp eq i64 %89, 32
  br i1 %90, label %94, label %82, !llvm.loop !152

91:                                               ; preds = %82
  %.lcssa = phi i64 [ %84, %82 ]
  %92 = trunc i64 %.lcssa to i32
  %93 = icmp ugt i32 %92, 8
  br i1 %93, label %94, label %137

94:                                               ; preds = %91, %87
  %95 = add i32 %38, 9
  %96 = sdiv i32 %95, 8
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds i8, ptr %16, i64 %97
  %99 = load i8, ptr %98, align 1, !tbaa !16
  %100 = zext i8 %99 to i32
  %101 = shl nuw i32 %100, 24
  %102 = getelementptr inbounds i8, ptr %98, i64 1
  %103 = load i8, ptr %102, align 1, !tbaa !16
  %104 = zext i8 %103 to i32
  %105 = shl nuw nsw i32 %104, 16
  %106 = or i32 %105, %101
  %107 = getelementptr inbounds i8, ptr %98, i64 2
  %108 = load i8, ptr %107, align 1, !tbaa !16
  %109 = zext i8 %108 to i32
  %110 = shl nuw nsw i32 %109, 8
  %111 = or i32 %106, %110
  %112 = getelementptr inbounds i8, ptr %98, i64 3
  %113 = load i8, ptr %112, align 1, !tbaa !16
  %114 = zext i8 %113 to i32
  %115 = or i32 %111, %114
  %116 = and i32 %95, 7
  %117 = add nsw i32 %116, %4
  %118 = icmp sgt i32 %117, 32
  br i1 %118, label %119, label %130

119:                                              ; preds = %94
  %120 = shl i32 %115, %116
  %121 = add nsw i32 %96, 4
  %122 = zext i32 %121 to i64
  %123 = getelementptr inbounds i8, ptr %16, i64 %122
  %124 = load i8, ptr %123, align 1, !tbaa !16
  %125 = zext i8 %124 to i32
  %126 = sub nsw i32 40, %117
  %127 = lshr i32 %125, %126
  %128 = lshr i32 %120, %26
  %129 = or i32 %127, %128
  br label %133

130:                                              ; preds = %94
  %131 = sub i32 32, %117
  %132 = lshr i32 %115, %131
  br label %133

133:                                              ; preds = %130, %119
  %134 = phi i32 [ %129, %119 ], [ %132, %130 ]
  %135 = and i32 %134, %32
  %136 = add i32 %95, %4
  br label %154

137:                                              ; preds = %91
  %138 = add i32 %38, %92
  %139 = add i32 %138, 1
  %140 = icmp eq i32 %57, 1
  br i1 %140, label %154, label %141

141:                                              ; preds = %137
  %142 = add nuw nsw i32 %92, 1
  %143 = shl i32 %79, %142
  %144 = sub nsw i32 32, %57
  %145 = lshr i32 %143, %144
  %146 = add i32 %138, %57
  %147 = shl i32 %92, %57
  %148 = sub i32 %147, %92
  %149 = icmp ugt i32 %145, 1
  br i1 %149, label %150, label %154

150:                                              ; preds = %141
  %151 = add i32 %139, %57
  %152 = add i32 %148, -1
  %153 = add i32 %152, %145
  br label %154

154:                                              ; preds = %150, %141, %137, %133
  %155 = phi i32 [ %135, %133 ], [ %153, %150 ], [ %148, %141 ], [ %92, %137 ]
  %156 = phi i32 [ %136, %133 ], [ %151, %150 ], [ %146, %141 ], [ %139, %137 ]
  %157 = add i32 %155, %36
  %158 = and i32 %157, 1
  %159 = sub nsw i32 0, %158
  %160 = or i32 %159, 1
  %161 = add i32 %157, 1
  %162 = lshr i32 %161, 1
  %163 = mul i32 %162, %160
  %164 = getelementptr i32, ptr %34, i64 1
  store i32 %163, ptr %34, align 4, !tbaa !17
  %165 = add i32 %37, 1
  %166 = mul i32 %157, %8
  %167 = mul i32 %35, %8
  %168 = lshr i32 %167, 9
  %169 = sub i32 %35, %168
  %170 = add i32 %169, %166
  %171 = icmp ugt i32 %155, 65535
  %172 = select i1 %171, i32 65535, i32 %170
  %173 = and i32 %172, 1073741696
  %174 = icmp eq i32 %173, 0
  %175 = icmp ult i32 %165, %3
  %176 = and i1 %175, %174
  br i1 %176, label %177, label %272

177:                                              ; preds = %154
  %178 = zext i32 %172 to i64
  br label %179

179:                                              ; preds = %184, %177
  %180 = phi i64 [ 2147483648, %177 ], [ %185, %184 ]
  %181 = phi i64 [ 0, %177 ], [ %186, %184 ]
  %182 = and i64 %180, %178
  %183 = icmp eq i64 %182, 0
  br i1 %183, label %184, label %188

184:                                              ; preds = %179
  %185 = lshr i64 %180, 1
  %186 = add nuw nsw i64 %181, 1
  %187 = icmp eq i64 %186, 32
  br i1 %187, label %188, label %179, !llvm.loop !152

188:                                              ; preds = %184, %179
  %189 = phi i64 [ %181, %179 ], [ 32, %184 ]
  %190 = trunc i64 %189 to i32
  %191 = add i32 %172, 16
  %192 = lshr i32 %191, 6
  %193 = add nsw i32 %192, -24
  %194 = add i32 %193, %190
  %195 = shl nsw i32 -1, %194
  %196 = xor i32 %195, -1
  %197 = and i32 %12, %196
  %198 = lshr i32 %156, 3
  %199 = zext i32 %198 to i64
  %200 = getelementptr inbounds i8, ptr %16, i64 %199
  %201 = load i8, ptr %200, align 1, !tbaa !16
  %202 = zext i8 %201 to i32
  %203 = shl nuw i32 %202, 24
  %204 = getelementptr inbounds i8, ptr %200, i64 1
  %205 = load i8, ptr %204, align 1, !tbaa !16
  %206 = zext i8 %205 to i32
  %207 = shl nuw nsw i32 %206, 16
  %208 = or i32 %207, %203
  %209 = getelementptr inbounds i8, ptr %200, i64 2
  %210 = load i8, ptr %209, align 1, !tbaa !16
  %211 = zext i8 %210 to i32
  %212 = shl nuw nsw i32 %211, 8
  %213 = or i32 %208, %212
  %214 = getelementptr inbounds i8, ptr %200, i64 3
  %215 = load i8, ptr %214, align 1, !tbaa !16
  %216 = zext i8 %215 to i32
  %217 = or i32 %213, %216
  %218 = and i32 %156, 7
  %219 = shl i32 %217, %218
  %220 = xor i32 %219, -1
  %221 = zext i32 %220 to i64
  br label %222

222:                                              ; preds = %227, %188
  %223 = phi i64 [ 2147483648, %188 ], [ %228, %227 ]
  %224 = phi i64 [ 0, %188 ], [ %229, %227 ]
  %225 = and i64 %223, %221
  %226 = icmp eq i64 %225, 0
  br i1 %226, label %227, label %231

227:                                              ; preds = %222
  %228 = lshr i64 %223, 1
  %229 = add nuw nsw i64 %224, 1
  %230 = icmp eq i64 %229, 32
  br i1 %230, label %234, label %222, !llvm.loop !152

231:                                              ; preds = %222
  %.lcssa2 = phi i64 [ %224, %222 ]
  %232 = trunc i64 %.lcssa2 to i32
  %233 = icmp ugt i32 %232, 8
  br i1 %233, label %234, label %238

234:                                              ; preds = %231, %227
  %235 = lshr i32 %219, 7
  %236 = and i32 %235, 65535
  %237 = add i32 %156, 25
  br label %252

238:                                              ; preds = %231
  %239 = add nuw nsw i32 %232, 1
  %240 = shl i32 %219, %239
  %241 = sub i32 32, %194
  %242 = lshr i32 %240, %241
  %243 = mul i32 %197, %232
  %244 = add i32 %243, -1
  %245 = add i32 %244, %242
  %246 = icmp ugt i32 %242, 1
  %247 = select i1 %246, i32 %245, i32 %243
  %248 = zext i1 %246 to i32
  %249 = add i32 %194, %156
  %250 = add i32 %249, %232
  %251 = add i32 %250, %248
  br label %252

252:                                              ; preds = %238, %234
  %253 = phi i32 [ %236, %234 ], [ %247, %238 ]
  %254 = phi i32 [ %237, %234 ], [ %251, %238 ]
  %255 = add i32 %253, %165
  %256 = icmp ugt i32 %255, %3
  br i1 %256, label %279, label %257

257:                                              ; preds = %252
  %258 = icmp eq i32 %253, 0
  br i1 %258, label %267, label %259

259:                                              ; preds = %257
  %260 = zext i32 %253 to i64
  %261 = shl nuw nsw i64 %260, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %164, i8 0, i64 %261, i1 false), !tbaa !17
  %262 = add i32 %253, -1
  %263 = zext i32 %262 to i64
  %264 = shl nuw nsw i64 %263, 2
  %265 = getelementptr i8, ptr %34, i64 8
  %266 = getelementptr i8, ptr %265, i64 %264
  br label %267

267:                                              ; preds = %259, %257
  %268 = phi i32 [ %165, %257 ], [ %255, %259 ]
  %269 = phi ptr [ %164, %257 ], [ %266, %259 ]
  %270 = icmp ult i32 %253, 65535
  %271 = zext i1 %270 to i32
  br label %272

272:                                              ; preds = %267, %154
  %273 = phi i32 [ %254, %267 ], [ %156, %154 ]
  %274 = phi i32 [ %268, %267 ], [ %165, %154 ]
  %275 = phi i32 [ %271, %267 ], [ 0, %154 ]
  %276 = phi i32 [ 0, %267 ], [ %172, %154 ]
  %277 = phi ptr [ %269, %267 ], [ %164, %154 ]
  %278 = icmp ult i32 %274, %3
  br i1 %278, label %33, label %279, !llvm.loop !153

279:                                              ; preds = %272, %252, %33, %15
  %280 = phi i32 [ %18, %15 ], [ %254, %252 ], [ %38, %33 ], [ %273, %272 ]
  %281 = phi i32 [ 0, %15 ], [ -50, %252 ], [ -50, %33 ], [ 0, %272 ]
  %282 = sub i32 %280, %18
  store i32 %282, ptr %5, align 4, !tbaa !17
  tail call void @BitBufferAdvance(ptr noundef nonnull %1, i32 noundef %282) #34
  %283 = load ptr, ptr %1, align 8, !tbaa !19
  %284 = getelementptr inbounds %struct.BitBuffer, ptr %1, i64 0, i32 1
  %285 = load ptr, ptr %284, align 8, !tbaa !22
  %286 = icmp ugt ptr %283, %285
  %287 = select i1 %286, i32 -50, i32 %281
  br label %288

288:                                              ; preds = %279, %6
  %289 = phi i32 [ %287, %279 ], [ -50, %6 ]
  ret i32 %289
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
  %80 = tail call i32 @Swap32NtoB(i32 noundef %79) #34
  %81 = and i32 %33, 7
  %82 = sub nuw nsw i32 23, %81
  %83 = shl nuw i32 511, %82
  %84 = or i32 %80, %83
  %85 = tail call i32 @Swap32BtoN(i32 noundef %84) #34
  store i32 %85, ptr %78, align 4, !tbaa !17
  %86 = add i32 %33, 9
  %87 = lshr i32 %86, 3
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds i8, ptr %15, i64 %88
  %90 = and i32 %86, 7
  %91 = add i32 %90, %4
  %92 = sub i32 32, %91
  %93 = load i32, ptr %89, align 4, !tbaa !17
  %94 = tail call i32 @Swap32NtoB(i32 noundef %93) #34
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
  %116 = tail call i32 @Swap32BtoN(i32 noundef %115) #34
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
  %131 = tail call i32 @Swap32NtoB(i32 noundef %130) #34
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
  %143 = tail call i32 @Swap32BtoN(i32 noundef %142) #34
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
  %244 = tail call i32 @Swap32NtoB(i32 noundef %243) #34
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
  %256 = tail call i32 @Swap32BtoN(i32 noundef %255) #34
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
  tail call void @BitBufferAdvance(ptr noundef nonnull %2, i32 noundef %268) #34
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
  br i1 %13, label %14, label %616

14:                                               ; preds = %12
  %15 = zext i32 %2 to i64
  br label %27

16:                                               ; preds = %7
  %17 = icmp slt i32 %4, 1
  %18 = add i32 %4, 1
  br i1 %17, label %49, label %19

19:                                               ; preds = %16
  %20 = zext i32 %18 to i64
  br label %38

21:                                               ; preds = %7
  %22 = call i1 @_wyvern_slice_pc_block__78160949(ptr %0, ptr %1, i32 %2)
  br i1 %22, label %616, label %23

23:                                               ; preds = %21
  %24 = getelementptr inbounds i32, ptr %1, i64 1
  %25 = getelementptr inbounds i32, ptr %0, i64 1
  %26 = call i64 @_wyvern_slice_pc_block__226469947(i32 %2)
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %24, ptr nonnull align 4 %25, i64 %26, i1 false)
  br label %616

27:                                               ; preds = %27, %14
  %28 = phi i64 [ 1, %14 ], [ %36, %27 ]
  %29 = phi i32 [ %11, %14 ], [ %34, %27 ]
  %30 = getelementptr inbounds i32, ptr %0, i64 %28
  %31 = load i32, ptr %30, align 4, !tbaa !17
  %32 = add nsw i32 %31, %29
  %33 = shl i32 %32, %8
  %34 = ashr i32 %33, %8
  %35 = getelementptr inbounds i32, ptr %1, i64 %28
  store i32 %34, ptr %35, align 4, !tbaa !17
  %36 = add nuw nsw i64 %28, 1
  %37 = icmp eq i64 %36, %15
  br i1 %37, label %616, label %27, !llvm.loop !157

38:                                               ; preds = %38, %19
  %39 = phi i32 [ %11, %19 ], [ %45, %38 ]
  %40 = phi i64 [ 1, %19 ], [ %47, %38 ]
  %41 = getelementptr inbounds i32, ptr %0, i64 %40
  %42 = load i32, ptr %41, align 4, !tbaa !17
  %43 = add nsw i32 %39, %42
  %44 = shl i32 %43, %8
  %45 = ashr i32 %44, %8
  %46 = getelementptr inbounds i32, ptr %1, i64 %40
  store i32 %45, ptr %46, align 4, !tbaa !17
  %47 = add nuw nsw i64 %40, 1
  %48 = icmp eq i64 %47, %20
  br i1 %48, label %49, label %38, !llvm.loop !158

49:                                               ; preds = %38, %16
  switch i32 %4, label %50 [
    i32 4, label %57
    i32 8, label %217
  ]

50:                                               ; preds = %49
  %51 = icmp slt i32 %18, %2
  br i1 %51, label %52, label %616

52:                                               ; preds = %50
  %53 = icmp sgt i32 %4, 0
  %54 = sext i32 %4 to i64
  %55 = sext i32 %18 to i64
  %56 = zext i32 %4 to i64
  br label %521

57:                                               ; preds = %49
  %58 = load i16, ptr %3, align 2, !tbaa !12
  %59 = getelementptr inbounds i16, ptr %3, i64 1
  %60 = load i16, ptr %59, align 2, !tbaa !12
  %61 = getelementptr inbounds i16, ptr %3, i64 2
  %62 = load i16, ptr %61, align 2, !tbaa !12
  %63 = getelementptr inbounds i16, ptr %3, i64 3
  %64 = load i16, ptr %63, align 2, !tbaa !12
  %65 = icmp sgt i32 %2, 5
  br i1 %65, label %66, label %212

66:                                               ; preds = %57
  %67 = sext i32 %18 to i64
  %68 = zext i32 %2 to i64
  %69 = getelementptr i8, ptr %1, i64 16
  %70 = load i32, ptr %69, align 4
  br label %71

71:                                               ; preds = %205, %66
  %72 = phi i32 [ %70, %66 ], [ %114, %205 ]
  %73 = phi i64 [ 5, %66 ], [ %210, %205 ]
  %74 = phi i16 [ %64, %66 ], [ %209, %205 ]
  %75 = phi i16 [ %62, %66 ], [ %208, %205 ]
  %76 = phi i16 [ %60, %66 ], [ %207, %205 ]
  %77 = phi i16 [ %58, %66 ], [ %206, %205 ]
  %78 = sub nsw i64 %73, %67
  %79 = getelementptr inbounds i32, ptr %1, i64 %78
  %80 = load i32, ptr %79, align 4, !tbaa !17
  %81 = getelementptr inbounds i32, ptr %1, i64 %73
  %82 = sub nsw i32 %80, %72
  %83 = getelementptr inbounds i32, ptr %81, i64 -2
  %84 = load i32, ptr %83, align 4, !tbaa !17
  %85 = sub nsw i32 %80, %84
  %86 = getelementptr inbounds i32, ptr %81, i64 -3
  %87 = load i32, ptr %86, align 4, !tbaa !17
  %88 = sub nsw i32 %80, %87
  %89 = getelementptr inbounds i32, ptr %81, i64 -4
  %90 = load i32, ptr %89, align 4, !tbaa !17
  %91 = sub nsw i32 %80, %90
  %92 = sext i16 %77 to i32
  %93 = sext i16 %76 to i32
  %94 = sext i16 %75 to i32
  %95 = sext i16 %74 to i32
  %96 = mul i32 %82, %92
  %97 = mul i32 %85, %93
  %98 = mul i32 %88, %94
  %99 = mul i32 %91, %95
  %100 = add i32 %97, %96
  %101 = add i32 %100, %98
  %102 = add i32 %101, %99
  %103 = sub i32 %10, %102
  %104 = ashr i32 %103, %6
  %105 = getelementptr inbounds i32, ptr %0, i64 %73
  %106 = load i32, ptr %105, align 4, !tbaa !17
  %107 = icmp sgt i32 %106, 0
  %108 = zext i1 %107 to i32
  %109 = ashr i32 %106, 31
  %110 = or i32 %109, %108
  %111 = add i32 %106, %80
  %112 = add i32 %111, %104
  %113 = shl i32 %112, %8
  %114 = ashr i32 %113, %8
  store i32 %114, ptr %81, align 4, !tbaa !17
  %115 = icmp sgt i32 %110, 0
  br i1 %115, label %116, label %158

116:                                              ; preds = %71
  %117 = icmp sgt i32 %91, 0
  %118 = zext i1 %117 to i32
  %119 = ashr i32 %91, 31
  %120 = or i32 %119, %118
  %121 = trunc i32 %120 to i16
  %122 = sub i16 %74, %121
  %123 = mul nsw i32 %120, %91
  %124 = ashr i32 %123, %6
  %125 = sub nsw i32 %106, %124
  %126 = icmp slt i32 %125, 1
  br i1 %126, label %205, label %127

127:                                              ; preds = %116
  %128 = icmp sgt i32 %88, 0
  %129 = zext i1 %128 to i32
  %130 = ashr i32 %88, 31
  %131 = or i32 %130, %129
  %132 = trunc i32 %131 to i16
  %133 = sub i16 %75, %132
  %134 = mul nsw i32 %131, %88
  %135 = ashr i32 %134, %6
  %136 = shl nsw i32 %135, 1
  %137 = sub nsw i32 %125, %136
  %138 = icmp slt i32 %137, 1
  br i1 %138, label %205, label %139

139:                                              ; preds = %127
  %140 = icmp sgt i32 %85, 0
  %141 = zext i1 %140 to i32
  %142 = ashr i32 %85, 31
  %143 = or i32 %142, %141
  %144 = trunc i32 %143 to i16
  %145 = sub i16 %76, %144
  %146 = mul nsw i32 %143, %85
  %147 = ashr i32 %146, %6
  %148 = mul i32 %147, -3
  %149 = add i32 %137, %148
  %150 = icmp slt i32 %149, 1
  br i1 %150, label %205, label %151

151:                                              ; preds = %139
  %152 = icmp sgt i32 %82, 0
  %153 = zext i1 %152 to i32
  %154 = ashr i32 %82, 31
  %155 = or i32 %154, %153
  %156 = trunc i32 %155 to i16
  %157 = sub i16 %77, %156
  br label %205

158:                                              ; preds = %71
  %159 = icmp slt i32 %110, 0
  br i1 %159, label %160, label %205

160:                                              ; preds = %158
  %161 = icmp sgt i32 %91, 0
  %162 = zext i1 %161 to i32
  %163 = ashr i32 %91, 31
  %164 = or i32 %163, %162
  %165 = trunc i32 %164 to i16
  %166 = add i16 %74, %165
  %167 = mul i32 %91, %164
  %168 = sub i32 0, %167
  %169 = ashr i32 %168, %6
  %170 = sub nsw i32 %106, %169
  %171 = icmp sgt i32 %170, -1
  br i1 %171, label %205, label %172

172:                                              ; preds = %160
  %173 = icmp sgt i32 %88, 0
  %174 = zext i1 %173 to i32
  %175 = ashr i32 %88, 31
  %176 = or i32 %175, %174
  %177 = trunc i32 %176 to i16
  %178 = add i16 %75, %177
  %179 = mul i32 %88, %176
  %180 = sub i32 0, %179
  %181 = ashr i32 %180, %6
  %182 = shl nsw i32 %181, 1
  %183 = sub nsw i32 %170, %182
  %184 = icmp sgt i32 %183, -1
  br i1 %184, label %205, label %185

185:                                              ; preds = %172
  %186 = icmp sgt i32 %85, 0
  %187 = zext i1 %186 to i32
  %188 = ashr i32 %85, 31
  %189 = or i32 %188, %187
  %190 = trunc i32 %189 to i16
  %191 = add i16 %76, %190
  %192 = mul i32 %85, %189
  %193 = sub i32 0, %192
  %194 = ashr i32 %193, %6
  %195 = mul i32 %194, -3
  %196 = add i32 %183, %195
  %197 = icmp sgt i32 %196, -1
  br i1 %197, label %205, label %198

198:                                              ; preds = %185
  %199 = icmp sgt i32 %82, 0
  %200 = zext i1 %199 to i32
  %201 = ashr i32 %82, 31
  %202 = or i32 %201, %200
  %203 = trunc i32 %202 to i16
  %204 = add i16 %77, %203
  br label %205

205:                                              ; preds = %198, %185, %172, %160, %158, %151, %139, %127, %116
  %206 = phi i16 [ %77, %116 ], [ %77, %127 ], [ %77, %139 ], [ %157, %151 ], [ %77, %160 ], [ %77, %172 ], [ %77, %185 ], [ %204, %198 ], [ %77, %158 ]
  %207 = phi i16 [ %76, %116 ], [ %76, %127 ], [ %145, %139 ], [ %145, %151 ], [ %76, %160 ], [ %76, %172 ], [ %191, %185 ], [ %191, %198 ], [ %76, %158 ]
  %208 = phi i16 [ %75, %116 ], [ %133, %127 ], [ %133, %139 ], [ %133, %151 ], [ %75, %160 ], [ %178, %172 ], [ %178, %185 ], [ %178, %198 ], [ %75, %158 ]
  %209 = phi i16 [ %122, %116 ], [ %122, %127 ], [ %122, %139 ], [ %122, %151 ], [ %166, %160 ], [ %166, %172 ], [ %166, %185 ], [ %166, %198 ], [ %74, %158 ]
  %210 = add nuw nsw i64 %73, 1
  %211 = icmp eq i64 %210, %68
  br i1 %211, label %212, label %71, !llvm.loop !159

212:                                              ; preds = %205, %57
  %213 = phi i16 [ %58, %57 ], [ %206, %205 ]
  %214 = phi i16 [ %60, %57 ], [ %207, %205 ]
  %215 = phi i16 [ %62, %57 ], [ %208, %205 ]
  %216 = phi i16 [ %64, %57 ], [ %209, %205 ]
  store i16 %213, ptr %3, align 2, !tbaa !12
  store i16 %214, ptr %59, align 2, !tbaa !12
  store i16 %215, ptr %61, align 2, !tbaa !12
  store i16 %216, ptr %63, align 2, !tbaa !12
  br label %616

217:                                              ; preds = %49
  %218 = load i16, ptr %3, align 2, !tbaa !12
  %219 = getelementptr inbounds i16, ptr %3, i64 1
  %220 = load i16, ptr %219, align 2, !tbaa !12
  %221 = getelementptr inbounds i16, ptr %3, i64 2
  %222 = load i16, ptr %221, align 2, !tbaa !12
  %223 = getelementptr inbounds i16, ptr %3, i64 3
  %224 = load i16, ptr %223, align 2, !tbaa !12
  %225 = getelementptr inbounds i16, ptr %3, i64 4
  %226 = load i16, ptr %225, align 2, !tbaa !12
  %227 = getelementptr inbounds i16, ptr %3, i64 5
  %228 = load i16, ptr %227, align 2, !tbaa !12
  %229 = getelementptr inbounds i16, ptr %3, i64 6
  %230 = load i16, ptr %229, align 2, !tbaa !12
  %231 = getelementptr inbounds i16, ptr %3, i64 7
  %232 = load i16, ptr %231, align 2, !tbaa !12
  %233 = icmp sgt i32 %2, 9
  br i1 %233, label %234, label %512

234:                                              ; preds = %217
  %235 = sext i32 %18 to i64
  %236 = zext i32 %2 to i64
  %237 = getelementptr i8, ptr %1, i64 32
  %238 = load i32, ptr %237, align 4
  br label %239

239:                                              ; preds = %501, %234
  %240 = phi i32 [ %238, %234 ], [ %310, %501 ]
  %241 = phi i64 [ 9, %234 ], [ %510, %501 ]
  %242 = phi i16 [ %218, %234 ], [ %509, %501 ]
  %243 = phi i16 [ %220, %234 ], [ %508, %501 ]
  %244 = phi i16 [ %222, %234 ], [ %507, %501 ]
  %245 = phi i16 [ %224, %234 ], [ %506, %501 ]
  %246 = phi i16 [ %232, %234 ], [ %505, %501 ]
  %247 = phi i16 [ %230, %234 ], [ %504, %501 ]
  %248 = phi i16 [ %228, %234 ], [ %503, %501 ]
  %249 = phi i16 [ %226, %234 ], [ %502, %501 ]
  %250 = sub nsw i64 %241, %235
  %251 = getelementptr inbounds i32, ptr %1, i64 %250
  %252 = load i32, ptr %251, align 4, !tbaa !17
  %253 = getelementptr inbounds i32, ptr %1, i64 %241
  %254 = getelementptr inbounds i32, ptr %253, i64 -2
  %255 = sub nsw i32 %252, %240
  %256 = getelementptr inbounds i32, ptr %253, i64 -3
  %257 = load i32, ptr %254, align 4, !tbaa !17
  %258 = sub nsw i32 %252, %257
  %259 = getelementptr inbounds i32, ptr %253, i64 -4
  %260 = load i32, ptr %256, align 4, !tbaa !17
  %261 = sub nsw i32 %252, %260
  %262 = getelementptr inbounds i32, ptr %253, i64 -5
  %263 = load i32, ptr %259, align 4, !tbaa !17
  %264 = sub nsw i32 %252, %263
  %265 = getelementptr inbounds i32, ptr %253, i64 -6
  %266 = load i32, ptr %262, align 4, !tbaa !17
  %267 = sub nsw i32 %252, %266
  %268 = getelementptr inbounds i32, ptr %253, i64 -7
  %269 = load i32, ptr %265, align 4, !tbaa !17
  %270 = sub nsw i32 %252, %269
  %271 = getelementptr inbounds i32, ptr %253, i64 -8
  %272 = load i32, ptr %268, align 4, !tbaa !17
  %273 = sub nsw i32 %252, %272
  %274 = load i32, ptr %271, align 4, !tbaa !17
  %275 = sub nsw i32 %252, %274
  %276 = sext i16 %242 to i32
  %277 = sext i16 %243 to i32
  %278 = sext i16 %244 to i32
  %279 = sext i16 %245 to i32
  %280 = sext i16 %249 to i32
  %281 = sext i16 %248 to i32
  %282 = sext i16 %247 to i32
  %283 = sext i16 %246 to i32
  %284 = mul i32 %255, %276
  %285 = mul i32 %258, %277
  %286 = mul i32 %261, %278
  %287 = mul i32 %264, %279
  %288 = mul i32 %267, %280
  %289 = mul i32 %270, %281
  %290 = mul i32 %273, %282
  %291 = mul i32 %275, %283
  %292 = add i32 %285, %284
  %293 = add i32 %292, %286
  %294 = add i32 %293, %287
  %295 = add i32 %294, %288
  %296 = add i32 %295, %289
  %297 = add i32 %296, %290
  %298 = add i32 %297, %291
  %299 = sub i32 %10, %298
  %300 = ashr i32 %299, %6
  %301 = getelementptr inbounds i32, ptr %0, i64 %241
  %302 = load i32, ptr %301, align 4, !tbaa !17
  %303 = icmp sgt i32 %302, 0
  %304 = zext i1 %303 to i32
  %305 = ashr i32 %302, 31
  %306 = or i32 %305, %304
  %307 = add i32 %302, %252
  %308 = add i32 %307, %300
  %309 = shl i32 %308, %8
  %310 = ashr i32 %309, %8
  store i32 %310, ptr %253, align 4, !tbaa !17
  %311 = icmp sgt i32 %306, 0
  br i1 %311, label %312, label %402

312:                                              ; preds = %239
  %313 = icmp sgt i32 %275, 0
  %314 = zext i1 %313 to i32
  %315 = ashr i32 %275, 31
  %316 = or i32 %315, %314
  %317 = trunc i32 %316 to i16
  %318 = sub i16 %246, %317
  %319 = mul nsw i32 %316, %275
  %320 = ashr i32 %319, %6
  %321 = sub nsw i32 %302, %320
  %322 = icmp slt i32 %321, 1
  br i1 %322, label %501, label %323

323:                                              ; preds = %312
  %324 = icmp sgt i32 %273, 0
  %325 = zext i1 %324 to i32
  %326 = ashr i32 %273, 31
  %327 = or i32 %326, %325
  %328 = trunc i32 %327 to i16
  %329 = sub i16 %247, %328
  %330 = mul nsw i32 %327, %273
  %331 = ashr i32 %330, %6
  %332 = shl nsw i32 %331, 1
  %333 = sub nsw i32 %321, %332
  %334 = icmp slt i32 %333, 1
  br i1 %334, label %501, label %335

335:                                              ; preds = %323
  %336 = icmp sgt i32 %270, 0
  %337 = zext i1 %336 to i32
  %338 = ashr i32 %270, 31
  %339 = or i32 %338, %337
  %340 = trunc i32 %339 to i16
  %341 = sub i16 %248, %340
  %342 = mul nsw i32 %339, %270
  %343 = ashr i32 %342, %6
  %344 = mul i32 %343, -3
  %345 = add i32 %333, %344
  %346 = icmp slt i32 %345, 1
  br i1 %346, label %501, label %347

347:                                              ; preds = %335
  %348 = icmp sgt i32 %267, 0
  %349 = zext i1 %348 to i32
  %350 = ashr i32 %267, 31
  %351 = or i32 %350, %349
  %352 = trunc i32 %351 to i16
  %353 = sub i16 %249, %352
  %354 = mul nsw i32 %351, %267
  %355 = ashr i32 %354, %6
  %356 = shl nsw i32 %355, 2
  %357 = sub nsw i32 %345, %356
  %358 = icmp slt i32 %357, 1
  br i1 %358, label %501, label %359

359:                                              ; preds = %347
  %360 = icmp sgt i32 %264, 0
  %361 = zext i1 %360 to i32
  %362 = ashr i32 %264, 31
  %363 = or i32 %362, %361
  %364 = trunc i32 %363 to i16
  %365 = sub i16 %245, %364
  %366 = mul nsw i32 %363, %264
  %367 = ashr i32 %366, %6
  %368 = mul i32 %367, -5
  %369 = add i32 %357, %368
  %370 = icmp slt i32 %369, 1
  br i1 %370, label %501, label %371

371:                                              ; preds = %359
  %372 = icmp sgt i32 %261, 0
  %373 = zext i1 %372 to i32
  %374 = ashr i32 %261, 31
  %375 = or i32 %374, %373
  %376 = trunc i32 %375 to i16
  %377 = sub i16 %244, %376
  %378 = mul nsw i32 %375, %261
  %379 = ashr i32 %378, %6
  %380 = mul i32 %379, -6
  %381 = add i32 %369, %380
  %382 = icmp slt i32 %381, 1
  br i1 %382, label %501, label %383

383:                                              ; preds = %371
  %384 = icmp sgt i32 %258, 0
  %385 = zext i1 %384 to i32
  %386 = ashr i32 %258, 31
  %387 = or i32 %386, %385
  %388 = trunc i32 %387 to i16
  %389 = sub i16 %243, %388
  %390 = mul nsw i32 %387, %258
  %391 = ashr i32 %390, %6
  %392 = mul i32 %391, -7
  %393 = add i32 %381, %392
  %394 = icmp slt i32 %393, 1
  br i1 %394, label %501, label %395

395:                                              ; preds = %383
  %396 = icmp sgt i32 %255, 0
  %397 = zext i1 %396 to i32
  %398 = ashr i32 %255, 31
  %399 = or i32 %398, %397
  %400 = trunc i32 %399 to i16
  %401 = sub i16 %242, %400
  br label %501

402:                                              ; preds = %239
  %403 = icmp slt i32 %306, 0
  br i1 %403, label %404, label %501

404:                                              ; preds = %402
  %405 = icmp sgt i32 %275, 0
  %406 = zext i1 %405 to i32
  %407 = ashr i32 %275, 31
  %408 = or i32 %407, %406
  %409 = trunc i32 %408 to i16
  %410 = add i16 %246, %409
  %411 = mul i32 %275, %408
  %412 = sub i32 0, %411
  %413 = ashr i32 %412, %6
  %414 = sub nsw i32 %302, %413
  %415 = icmp sgt i32 %414, -1
  br i1 %415, label %501, label %416

416:                                              ; preds = %404
  %417 = icmp sgt i32 %273, 0
  %418 = zext i1 %417 to i32
  %419 = ashr i32 %273, 31
  %420 = or i32 %419, %418
  %421 = trunc i32 %420 to i16
  %422 = add i16 %247, %421
  %423 = mul i32 %273, %420
  %424 = sub i32 0, %423
  %425 = ashr i32 %424, %6
  %426 = shl nsw i32 %425, 1
  %427 = sub nsw i32 %414, %426
  %428 = icmp sgt i32 %427, -1
  br i1 %428, label %501, label %429

429:                                              ; preds = %416
  %430 = icmp sgt i32 %270, 0
  %431 = zext i1 %430 to i32
  %432 = ashr i32 %270, 31
  %433 = or i32 %432, %431
  %434 = trunc i32 %433 to i16
  %435 = add i16 %248, %434
  %436 = mul i32 %270, %433
  %437 = sub i32 0, %436
  %438 = ashr i32 %437, %6
  %439 = mul i32 %438, -3
  %440 = add i32 %427, %439
  %441 = icmp sgt i32 %440, -1
  br i1 %441, label %501, label %442

442:                                              ; preds = %429
  %443 = icmp sgt i32 %267, 0
  %444 = zext i1 %443 to i32
  %445 = ashr i32 %267, 31
  %446 = or i32 %445, %444
  %447 = trunc i32 %446 to i16
  %448 = add i16 %249, %447
  %449 = mul i32 %267, %446
  %450 = sub i32 0, %449
  %451 = ashr i32 %450, %6
  %452 = shl nsw i32 %451, 2
  %453 = sub nsw i32 %440, %452
  %454 = icmp sgt i32 %453, -1
  br i1 %454, label %501, label %455

455:                                              ; preds = %442
  %456 = icmp sgt i32 %264, 0
  %457 = zext i1 %456 to i32
  %458 = ashr i32 %264, 31
  %459 = or i32 %458, %457
  %460 = trunc i32 %459 to i16
  %461 = add i16 %245, %460
  %462 = mul i32 %264, %459
  %463 = sub i32 0, %462
  %464 = ashr i32 %463, %6
  %465 = mul i32 %464, -5
  %466 = add i32 %453, %465
  %467 = icmp sgt i32 %466, -1
  br i1 %467, label %501, label %468

468:                                              ; preds = %455
  %469 = icmp sgt i32 %261, 0
  %470 = zext i1 %469 to i32
  %471 = ashr i32 %261, 31
  %472 = or i32 %471, %470
  %473 = trunc i32 %472 to i16
  %474 = add i16 %244, %473
  %475 = mul i32 %261, %472
  %476 = sub i32 0, %475
  %477 = ashr i32 %476, %6
  %478 = mul i32 %477, -6
  %479 = add i32 %466, %478
  %480 = icmp sgt i32 %479, -1
  br i1 %480, label %501, label %481

481:                                              ; preds = %468
  %482 = icmp sgt i32 %258, 0
  %483 = zext i1 %482 to i32
  %484 = ashr i32 %258, 31
  %485 = or i32 %484, %483
  %486 = trunc i32 %485 to i16
  %487 = add i16 %243, %486
  %488 = mul i32 %258, %485
  %489 = sub i32 0, %488
  %490 = ashr i32 %489, %6
  %491 = mul i32 %490, -7
  %492 = add i32 %479, %491
  %493 = icmp sgt i32 %492, -1
  br i1 %493, label %501, label %494

494:                                              ; preds = %481
  %495 = icmp sgt i32 %255, 0
  %496 = zext i1 %495 to i32
  %497 = ashr i32 %255, 31
  %498 = or i32 %497, %496
  %499 = trunc i32 %498 to i16
  %500 = add i16 %242, %499
  br label %501

501:                                              ; preds = %494, %481, %468, %455, %442, %429, %416, %404, %402, %395, %383, %371, %359, %347, %335, %323, %312
  %502 = phi i16 [ %249, %312 ], [ %249, %323 ], [ %249, %335 ], [ %353, %347 ], [ %353, %359 ], [ %353, %371 ], [ %353, %383 ], [ %353, %395 ], [ %249, %404 ], [ %249, %416 ], [ %249, %429 ], [ %448, %442 ], [ %448, %455 ], [ %448, %468 ], [ %448, %481 ], [ %448, %494 ], [ %249, %402 ]
  %503 = phi i16 [ %248, %312 ], [ %248, %323 ], [ %341, %335 ], [ %341, %347 ], [ %341, %359 ], [ %341, %371 ], [ %341, %383 ], [ %341, %395 ], [ %248, %404 ], [ %248, %416 ], [ %435, %429 ], [ %435, %442 ], [ %435, %455 ], [ %435, %468 ], [ %435, %481 ], [ %435, %494 ], [ %248, %402 ]
  %504 = phi i16 [ %247, %312 ], [ %329, %323 ], [ %329, %335 ], [ %329, %347 ], [ %329, %359 ], [ %329, %371 ], [ %329, %383 ], [ %329, %395 ], [ %247, %404 ], [ %422, %416 ], [ %422, %429 ], [ %422, %442 ], [ %422, %455 ], [ %422, %468 ], [ %422, %481 ], [ %422, %494 ], [ %247, %402 ]
  %505 = phi i16 [ %318, %312 ], [ %318, %323 ], [ %318, %335 ], [ %318, %347 ], [ %318, %359 ], [ %318, %371 ], [ %318, %383 ], [ %318, %395 ], [ %410, %404 ], [ %410, %416 ], [ %410, %429 ], [ %410, %442 ], [ %410, %455 ], [ %410, %468 ], [ %410, %481 ], [ %410, %494 ], [ %246, %402 ]
  %506 = phi i16 [ %245, %312 ], [ %245, %323 ], [ %245, %335 ], [ %245, %347 ], [ %365, %359 ], [ %365, %371 ], [ %365, %383 ], [ %365, %395 ], [ %245, %404 ], [ %245, %416 ], [ %245, %429 ], [ %245, %442 ], [ %461, %455 ], [ %461, %468 ], [ %461, %481 ], [ %461, %494 ], [ %245, %402 ]
  %507 = phi i16 [ %244, %312 ], [ %244, %323 ], [ %244, %335 ], [ %244, %347 ], [ %244, %359 ], [ %377, %371 ], [ %377, %383 ], [ %377, %395 ], [ %244, %404 ], [ %244, %416 ], [ %244, %429 ], [ %244, %442 ], [ %244, %455 ], [ %474, %468 ], [ %474, %481 ], [ %474, %494 ], [ %244, %402 ]
  %508 = phi i16 [ %243, %312 ], [ %243, %323 ], [ %243, %335 ], [ %243, %347 ], [ %243, %359 ], [ %243, %371 ], [ %389, %383 ], [ %389, %395 ], [ %243, %404 ], [ %243, %416 ], [ %243, %429 ], [ %243, %442 ], [ %243, %455 ], [ %243, %468 ], [ %487, %481 ], [ %487, %494 ], [ %243, %402 ]
  %509 = phi i16 [ %242, %312 ], [ %242, %323 ], [ %242, %335 ], [ %242, %347 ], [ %242, %359 ], [ %242, %371 ], [ %242, %383 ], [ %401, %395 ], [ %242, %404 ], [ %242, %416 ], [ %242, %429 ], [ %242, %442 ], [ %242, %455 ], [ %242, %468 ], [ %242, %481 ], [ %500, %494 ], [ %242, %402 ]
  %510 = add nuw nsw i64 %241, 1
  %511 = icmp eq i64 %510, %236
  br i1 %511, label %512, label %239, !llvm.loop !160

512:                                              ; preds = %501, %217
  %513 = phi i16 [ %226, %217 ], [ %502, %501 ]
  %514 = phi i16 [ %228, %217 ], [ %503, %501 ]
  %515 = phi i16 [ %230, %217 ], [ %504, %501 ]
  %516 = phi i16 [ %232, %217 ], [ %505, %501 ]
  %517 = phi i16 [ %224, %217 ], [ %506, %501 ]
  %518 = phi i16 [ %222, %217 ], [ %507, %501 ]
  %519 = phi i16 [ %220, %217 ], [ %508, %501 ]
  %520 = phi i16 [ %218, %217 ], [ %509, %501 ]
  store i16 %520, ptr %3, align 2, !tbaa !12
  store i16 %519, ptr %219, align 2, !tbaa !12
  store i16 %518, ptr %221, align 2, !tbaa !12
  store i16 %517, ptr %223, align 2, !tbaa !12
  store i16 %513, ptr %225, align 2, !tbaa !12
  store i16 %514, ptr %227, align 2, !tbaa !12
  store i16 %515, ptr %229, align 2, !tbaa !12
  store i16 %516, ptr %231, align 2, !tbaa !12
  br label %616

521:                                              ; preds = %612, %52
  %522 = phi i64 [ %55, %52 ], [ %613, %612 ]
  %523 = getelementptr inbounds i32, ptr %1, i64 %522
  %524 = getelementptr inbounds i32, ptr %523, i64 -1
  %525 = sub nsw i64 %522, %55
  %526 = getelementptr inbounds i32, ptr %1, i64 %525
  %527 = load i32, ptr %526, align 4, !tbaa !17
  br i1 %53, label %528, label %542

528:                                              ; preds = %528, %521
  %529 = phi i64 [ %540, %528 ], [ 0, %521 ]
  %530 = phi i32 [ %539, %528 ], [ 0, %521 ]
  %531 = getelementptr inbounds i16, ptr %3, i64 %529
  %532 = load i16, ptr %531, align 2, !tbaa !12
  %533 = sext i16 %532 to i32
  %534 = sub nsw i64 0, %529
  %535 = getelementptr inbounds i32, ptr %524, i64 %534
  %536 = load i32, ptr %535, align 4, !tbaa !17
  %537 = sub nsw i32 %536, %527
  %538 = mul nsw i32 %537, %533
  %539 = add nsw i32 %538, %530
  %540 = add nuw nsw i64 %529, 1
  %541 = icmp eq i64 %540, %56
  br i1 %541, label %542, label %528, !llvm.loop !161

542:                                              ; preds = %528, %521
  %543 = phi i32 [ 0, %521 ], [ %539, %528 ]
  %544 = getelementptr inbounds i32, ptr %0, i64 %522
  %545 = load i32, ptr %544, align 4, !tbaa !17
  %546 = icmp sgt i32 %545, 0
  %547 = zext i1 %546 to i32
  %548 = ashr i32 %545, 31
  %549 = or i32 %548, %547
  %550 = add nsw i32 %543, %10
  %551 = ashr i32 %550, %6
  %552 = add nsw i32 %551, %527
  %553 = add nsw i32 %552, %545
  %554 = shl i32 %553, %8
  %555 = ashr i32 %554, %8
  store i32 %555, ptr %523, align 4, !tbaa !17
  %556 = icmp sgt i32 %549, 0
  br i1 %556, label %557, label %583

557:                                              ; preds = %561, %542
  %558 = phi i64 [ %562, %561 ], [ %54, %542 ]
  %559 = phi i32 [ %581, %561 ], [ %545, %542 ]
  %560 = icmp sgt i64 %558, 0
  br i1 %560, label %561, label %612

561:                                              ; preds = %557
  %562 = add nsw i64 %558, -1
  %563 = sub nsw i64 1, %558
  %564 = getelementptr inbounds i32, ptr %524, i64 %563
  %565 = load i32, ptr %564, align 4, !tbaa !17
  %566 = sub nsw i32 %527, %565
  %567 = icmp sgt i32 %566, 0
  %568 = zext i1 %567 to i32
  %569 = ashr i32 %566, 31
  %570 = or i32 %569, %568
  %571 = and i64 %562, 4294967295
  %572 = getelementptr inbounds i16, ptr %3, i64 %571
  %573 = load i16, ptr %572, align 2, !tbaa !12
  %574 = trunc i32 %570 to i16
  %575 = sub i16 %573, %574
  store i16 %575, ptr %572, align 2, !tbaa !12
  %576 = mul nsw i32 %570, %566
  %577 = ashr i32 %576, %6
  %578 = trunc i64 %562 to i32
  %579 = sub i32 %578, %4
  %580 = mul i32 %577, %579
  %581 = add i32 %580, %559
  %582 = icmp slt i32 %581, 1
  br i1 %582, label %612, label %557, !llvm.loop !162

583:                                              ; preds = %542
  %584 = icmp slt i32 %549, 0
  br i1 %584, label %585, label %612

585:                                              ; preds = %589, %583
  %586 = phi i64 [ %590, %589 ], [ %54, %583 ]
  %587 = phi i32 [ %610, %589 ], [ %545, %583 ]
  %588 = icmp sgt i64 %586, 0
  br i1 %588, label %589, label %612

589:                                              ; preds = %585
  %590 = add nsw i64 %586, -1
  %591 = sub nsw i64 1, %586
  %592 = getelementptr inbounds i32, ptr %524, i64 %591
  %593 = load i32, ptr %592, align 4, !tbaa !17
  %594 = sub nsw i32 %527, %593
  %595 = icmp sgt i32 %594, 0
  %596 = zext i1 %595 to i32
  %597 = ashr i32 %594, 31
  %598 = or i32 %597, %596
  %599 = and i64 %590, 4294967295
  %600 = getelementptr inbounds i16, ptr %3, i64 %599
  %601 = load i16, ptr %600, align 2, !tbaa !12
  %602 = trunc i32 %598 to i16
  %603 = add i16 %601, %602
  store i16 %603, ptr %600, align 2, !tbaa !12
  %604 = mul i32 %594, %598
  %605 = sub i32 0, %604
  %606 = ashr i32 %605, %6
  %607 = trunc i64 %590 to i32
  %608 = sub i32 %607, %4
  %609 = mul i32 %606, %608
  %610 = add i32 %609, %587
  %611 = icmp sgt i32 %610, -1
  br i1 %611, label %612, label %585, !llvm.loop !163

612:                                              ; preds = %589, %585, %583, %561, %557
  %613 = add nsw i64 %522, 1
  %614 = trunc i64 %613 to i32
  %615 = icmp eq i32 %614, %2
  br i1 %615, label %616, label %521, !llvm.loop !164

616:                                              ; preds = %612, %512, %212, %50, %27, %23, %21, %12
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
  br i1 %13, label %14, label %608

14:                                               ; preds = %12
  %15 = zext i32 %2 to i64
  br label %27

16:                                               ; preds = %7
  %17 = icmp slt i32 %4, 1
  %18 = add i32 %4, 1
  br i1 %17, label %43, label %19

19:                                               ; preds = %16
  %20 = zext i32 %18 to i64
  br label %35

21:                                               ; preds = %7
  %22 = call i1 @_wyvern_slice_pc_block__78160949(ptr %0, ptr %1, i32 %2)
  br i1 %22, label %608, label %23

23:                                               ; preds = %21
  %24 = getelementptr inbounds i32, ptr %1, i64 1
  %25 = getelementptr inbounds i32, ptr %0, i64 1
  %26 = call i64 @_wyvern_slice_pc_block__226469947(i32 %2)
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %24, ptr nonnull align 4 %25, i64 %26, i1 false)
  br label %608

27:                                               ; preds = %27, %14
  %28 = phi i64 [ 1, %14 ], [ %33, %27 ]
  %29 = call i32 @_wyvern_slice_pc_block__157004559(ptr %0, i64 %28)
  %30 = shl i32 %29, %8
  %31 = ashr i32 %30, %8
  %32 = getelementptr inbounds i32, ptr %1, i64 %28
  store i32 %31, ptr %32, align 4, !tbaa !17
  %33 = add nuw nsw i64 %28, 1
  %34 = icmp eq i64 %33, %15
  br i1 %34, label %608, label %27, !llvm.loop !165

35:                                               ; preds = %35, %19
  %36 = phi i64 [ 1, %19 ], [ %41, %35 ]
  %37 = call i32 @_wyvern_slice_pc_block__157004559(ptr %0, i64 %36)
  %38 = shl i32 %37, %8
  %39 = ashr i32 %38, %8
  %40 = getelementptr inbounds i32, ptr %1, i64 %36
  store i32 %39, ptr %40, align 4, !tbaa !17
  %41 = add nuw nsw i64 %36, 1
  %42 = icmp eq i64 %41, %20
  br i1 %42, label %43, label %35, !llvm.loop !166

43:                                               ; preds = %35, %16
  switch i32 %4, label %44 [
    i32 4, label %51
    i32 8, label %210
  ]

44:                                               ; preds = %43
  %45 = icmp slt i32 %18, %2
  br i1 %45, label %46, label %608

46:                                               ; preds = %44
  %47 = icmp sgt i32 %4, 0
  %48 = sext i32 %4 to i64
  %49 = sext i32 %18 to i64
  %50 = zext i32 %4 to i64
  br label %513

51:                                               ; preds = %43
  %52 = load i16, ptr %3, align 2, !tbaa !12
  %53 = getelementptr inbounds i16, ptr %3, i64 1
  %54 = load i16, ptr %53, align 2, !tbaa !12
  %55 = getelementptr inbounds i16, ptr %3, i64 2
  %56 = load i16, ptr %55, align 2, !tbaa !12
  %57 = getelementptr inbounds i16, ptr %3, i64 3
  %58 = load i16, ptr %57, align 2, !tbaa !12
  %59 = icmp sgt i32 %2, 5
  br i1 %59, label %60, label %205

60:                                               ; preds = %51
  %61 = sext i32 %18 to i64
  %62 = zext i32 %2 to i64
  br label %63

63:                                               ; preds = %198, %60
  %64 = phi i64 [ 5, %60 ], [ %203, %198 ]
  %65 = phi i16 [ %52, %60 ], [ %202, %198 ]
  %66 = phi i16 [ %54, %60 ], [ %201, %198 ]
  %67 = phi i16 [ %56, %60 ], [ %200, %198 ]
  %68 = phi i16 [ %58, %60 ], [ %199, %198 ]
  %69 = sub nsw i64 %64, %61
  %70 = getelementptr inbounds i32, ptr %0, i64 %69
  %71 = load i32, ptr %70, align 4, !tbaa !17
  %72 = getelementptr inbounds i32, ptr %0, i64 %64
  %73 = getelementptr inbounds i32, ptr %72, i64 -1
  %74 = load i32, ptr %73, align 4, !tbaa !17
  %75 = sub nsw i32 %71, %74
  %76 = getelementptr inbounds i32, ptr %72, i64 -2
  %77 = load i32, ptr %76, align 4, !tbaa !17
  %78 = sub nsw i32 %71, %77
  %79 = getelementptr inbounds i32, ptr %72, i64 -3
  %80 = load i32, ptr %79, align 4, !tbaa !17
  %81 = sub nsw i32 %71, %80
  %82 = getelementptr inbounds i32, ptr %72, i64 -4
  %83 = load i32, ptr %82, align 4, !tbaa !17
  %84 = sub nsw i32 %71, %83
  %85 = sext i16 %65 to i32
  %86 = sext i16 %66 to i32
  %87 = sext i16 %67 to i32
  %88 = sext i16 %68 to i32
  %89 = mul i32 %75, %85
  %90 = mul i32 %78, %86
  %91 = mul i32 %81, %87
  %92 = mul i32 %84, %88
  %93 = add i32 %90, %89
  %94 = add i32 %93, %91
  %95 = add i32 %94, %92
  %96 = sub i32 %10, %95
  %97 = ashr i32 %96, %6
  %98 = load i32, ptr %72, align 4, !tbaa !17
  %99 = add i32 %71, %97
  %100 = sub i32 %98, %99
  %101 = shl i32 %100, %8
  %102 = ashr i32 %101, %8
  %103 = getelementptr inbounds i32, ptr %1, i64 %64
  store i32 %102, ptr %103, align 4, !tbaa !17
  %104 = icmp sgt i32 %102, 0
  %105 = zext i1 %104 to i32
  %106 = ashr i32 %102, 31
  %107 = or i32 %106, %105
  %108 = icmp sgt i32 %107, 0
  br i1 %108, label %109, label %151

109:                                              ; preds = %63
  %110 = icmp sgt i32 %84, 0
  %111 = zext i1 %110 to i32
  %112 = ashr i32 %84, 31
  %113 = or i32 %112, %111
  %114 = trunc i32 %113 to i16
  %115 = sub i16 %68, %114
  %116 = mul nsw i32 %113, %84
  %117 = ashr i32 %116, %6
  %118 = sub nsw i32 %102, %117
  %119 = icmp slt i32 %118, 1
  br i1 %119, label %198, label %120

120:                                              ; preds = %109
  %121 = icmp sgt i32 %81, 0
  %122 = zext i1 %121 to i32
  %123 = ashr i32 %81, 31
  %124 = or i32 %123, %122
  %125 = trunc i32 %124 to i16
  %126 = sub i16 %67, %125
  %127 = mul nsw i32 %124, %81
  %128 = ashr i32 %127, %6
  %129 = shl nsw i32 %128, 1
  %130 = sub nsw i32 %118, %129
  %131 = icmp slt i32 %130, 1
  br i1 %131, label %198, label %132

132:                                              ; preds = %120
  %133 = icmp sgt i32 %78, 0
  %134 = zext i1 %133 to i32
  %135 = ashr i32 %78, 31
  %136 = or i32 %135, %134
  %137 = trunc i32 %136 to i16
  %138 = sub i16 %66, %137
  %139 = mul nsw i32 %136, %78
  %140 = ashr i32 %139, %6
  %141 = mul i32 %140, -3
  %142 = add i32 %130, %141
  %143 = icmp slt i32 %142, 1
  br i1 %143, label %198, label %144

144:                                              ; preds = %132
  %145 = icmp sgt i32 %75, 0
  %146 = zext i1 %145 to i32
  %147 = ashr i32 %75, 31
  %148 = or i32 %147, %146
  %149 = trunc i32 %148 to i16
  %150 = sub i16 %65, %149
  br label %198

151:                                              ; preds = %63
  %152 = icmp slt i32 %107, 0
  br i1 %152, label %153, label %198

153:                                              ; preds = %151
  %154 = icmp sgt i32 %84, 0
  %155 = zext i1 %154 to i32
  %156 = ashr i32 %84, 31
  %157 = or i32 %156, %155
  %158 = trunc i32 %157 to i16
  %159 = add i16 %68, %158
  %160 = mul i32 %84, %157
  %161 = sub i32 0, %160
  %162 = ashr i32 %161, %6
  %163 = sub nsw i32 %102, %162
  %164 = icmp sgt i32 %163, -1
  br i1 %164, label %198, label %165

165:                                              ; preds = %153
  %166 = icmp sgt i32 %81, 0
  %167 = zext i1 %166 to i32
  %168 = ashr i32 %81, 31
  %169 = or i32 %168, %167
  %170 = trunc i32 %169 to i16
  %171 = add i16 %67, %170
  %172 = mul i32 %81, %169
  %173 = sub i32 0, %172
  %174 = ashr i32 %173, %6
  %175 = shl nsw i32 %174, 1
  %176 = sub nsw i32 %163, %175
  %177 = icmp sgt i32 %176, -1
  br i1 %177, label %198, label %178

178:                                              ; preds = %165
  %179 = icmp sgt i32 %78, 0
  %180 = zext i1 %179 to i32
  %181 = ashr i32 %78, 31
  %182 = or i32 %181, %180
  %183 = trunc i32 %182 to i16
  %184 = add i16 %66, %183
  %185 = mul i32 %78, %182
  %186 = sub i32 0, %185
  %187 = ashr i32 %186, %6
  %188 = mul i32 %187, -3
  %189 = add i32 %176, %188
  %190 = icmp sgt i32 %189, -1
  br i1 %190, label %198, label %191

191:                                              ; preds = %178
  %192 = icmp sgt i32 %75, 0
  %193 = zext i1 %192 to i32
  %194 = ashr i32 %75, 31
  %195 = or i32 %194, %193
  %196 = trunc i32 %195 to i16
  %197 = add i16 %65, %196
  br label %198

198:                                              ; preds = %191, %178, %165, %153, %151, %144, %132, %120, %109
  %199 = phi i16 [ %115, %109 ], [ %115, %120 ], [ %115, %132 ], [ %115, %144 ], [ %159, %153 ], [ %159, %165 ], [ %159, %178 ], [ %159, %191 ], [ %68, %151 ]
  %200 = phi i16 [ %67, %109 ], [ %126, %120 ], [ %126, %132 ], [ %126, %144 ], [ %67, %153 ], [ %171, %165 ], [ %171, %178 ], [ %171, %191 ], [ %67, %151 ]
  %201 = phi i16 [ %66, %109 ], [ %66, %120 ], [ %138, %132 ], [ %138, %144 ], [ %66, %153 ], [ %66, %165 ], [ %184, %178 ], [ %184, %191 ], [ %66, %151 ]
  %202 = phi i16 [ %65, %109 ], [ %65, %120 ], [ %65, %132 ], [ %150, %144 ], [ %65, %153 ], [ %65, %165 ], [ %65, %178 ], [ %197, %191 ], [ %65, %151 ]
  %203 = add nuw nsw i64 %64, 1
  %204 = icmp eq i64 %203, %62
  br i1 %204, label %205, label %63, !llvm.loop !167

205:                                              ; preds = %198, %51
  %206 = phi i16 [ %58, %51 ], [ %199, %198 ]
  %207 = phi i16 [ %56, %51 ], [ %200, %198 ]
  %208 = phi i16 [ %54, %51 ], [ %201, %198 ]
  %209 = phi i16 [ %52, %51 ], [ %202, %198 ]
  store i16 %209, ptr %3, align 2, !tbaa !12
  store i16 %208, ptr %53, align 2, !tbaa !12
  store i16 %207, ptr %55, align 2, !tbaa !12
  store i16 %206, ptr %57, align 2, !tbaa !12
  br label %608

210:                                              ; preds = %43
  %211 = load i16, ptr %3, align 2, !tbaa !12
  %212 = getelementptr inbounds i16, ptr %3, i64 1
  %213 = load i16, ptr %212, align 2, !tbaa !12
  %214 = getelementptr inbounds i16, ptr %3, i64 2
  %215 = load i16, ptr %214, align 2, !tbaa !12
  %216 = getelementptr inbounds i16, ptr %3, i64 3
  %217 = load i16, ptr %216, align 2, !tbaa !12
  %218 = getelementptr inbounds i16, ptr %3, i64 4
  %219 = load i16, ptr %218, align 2, !tbaa !12
  %220 = getelementptr inbounds i16, ptr %3, i64 5
  %221 = load i16, ptr %220, align 2, !tbaa !12
  %222 = getelementptr inbounds i16, ptr %3, i64 6
  %223 = load i16, ptr %222, align 2, !tbaa !12
  %224 = getelementptr inbounds i16, ptr %3, i64 7
  %225 = load i16, ptr %224, align 2, !tbaa !12
  %226 = icmp sgt i32 %2, 9
  br i1 %226, label %227, label %504

227:                                              ; preds = %210
  %228 = sext i32 %18 to i64
  %229 = zext i32 %2 to i64
  br label %230

230:                                              ; preds = %493, %227
  %231 = phi i64 [ 9, %227 ], [ %502, %493 ]
  %232 = phi i16 [ %211, %227 ], [ %501, %493 ]
  %233 = phi i16 [ %213, %227 ], [ %500, %493 ]
  %234 = phi i16 [ %215, %227 ], [ %499, %493 ]
  %235 = phi i16 [ %217, %227 ], [ %498, %493 ]
  %236 = phi i16 [ %225, %227 ], [ %497, %493 ]
  %237 = phi i16 [ %223, %227 ], [ %496, %493 ]
  %238 = phi i16 [ %221, %227 ], [ %495, %493 ]
  %239 = phi i16 [ %219, %227 ], [ %494, %493 ]
  %240 = sub nsw i64 %231, %228
  %241 = getelementptr inbounds i32, ptr %0, i64 %240
  %242 = load i32, ptr %241, align 4, !tbaa !17
  %243 = getelementptr inbounds i32, ptr %0, i64 %231
  %244 = getelementptr inbounds i32, ptr %243, i64 -1
  %245 = getelementptr inbounds i32, ptr %243, i64 -2
  %246 = load i32, ptr %244, align 4, !tbaa !17
  %247 = sub nsw i32 %242, %246
  %248 = getelementptr inbounds i32, ptr %243, i64 -3
  %249 = load i32, ptr %245, align 4, !tbaa !17
  %250 = sub nsw i32 %242, %249
  %251 = getelementptr inbounds i32, ptr %243, i64 -4
  %252 = load i32, ptr %248, align 4, !tbaa !17
  %253 = sub nsw i32 %242, %252
  %254 = getelementptr inbounds i32, ptr %243, i64 -5
  %255 = load i32, ptr %251, align 4, !tbaa !17
  %256 = sub nsw i32 %242, %255
  %257 = getelementptr inbounds i32, ptr %243, i64 -6
  %258 = load i32, ptr %254, align 4, !tbaa !17
  %259 = sub nsw i32 %242, %258
  %260 = getelementptr inbounds i32, ptr %243, i64 -7
  %261 = load i32, ptr %257, align 4, !tbaa !17
  %262 = sub nsw i32 %242, %261
  %263 = getelementptr inbounds i32, ptr %243, i64 -8
  %264 = load i32, ptr %260, align 4, !tbaa !17
  %265 = sub nsw i32 %242, %264
  %266 = load i32, ptr %263, align 4, !tbaa !17
  %267 = sub nsw i32 %242, %266
  %268 = sext i16 %232 to i32
  %269 = sext i16 %233 to i32
  %270 = sext i16 %234 to i32
  %271 = sext i16 %235 to i32
  %272 = sext i16 %239 to i32
  %273 = sext i16 %238 to i32
  %274 = sext i16 %237 to i32
  %275 = sext i16 %236 to i32
  %276 = mul i32 %247, %268
  %277 = mul i32 %250, %269
  %278 = mul i32 %253, %270
  %279 = mul i32 %256, %271
  %280 = mul i32 %259, %272
  %281 = mul i32 %262, %273
  %282 = mul i32 %265, %274
  %283 = mul i32 %267, %275
  %284 = add i32 %277, %276
  %285 = add i32 %284, %278
  %286 = add i32 %285, %279
  %287 = add i32 %286, %280
  %288 = add i32 %287, %281
  %289 = add i32 %288, %282
  %290 = add i32 %289, %283
  %291 = sub i32 %10, %290
  %292 = ashr i32 %291, %6
  %293 = load i32, ptr %243, align 4, !tbaa !17
  %294 = add i32 %242, %292
  %295 = sub i32 %293, %294
  %296 = shl i32 %295, %8
  %297 = ashr i32 %296, %8
  %298 = getelementptr inbounds i32, ptr %1, i64 %231
  store i32 %297, ptr %298, align 4, !tbaa !17
  %299 = icmp sgt i32 %297, 0
  %300 = zext i1 %299 to i32
  %301 = ashr i32 %297, 31
  %302 = or i32 %301, %300
  %303 = icmp sgt i32 %302, 0
  br i1 %303, label %304, label %394

304:                                              ; preds = %230
  %305 = icmp sgt i32 %267, 0
  %306 = zext i1 %305 to i32
  %307 = ashr i32 %267, 31
  %308 = or i32 %307, %306
  %309 = trunc i32 %308 to i16
  %310 = sub i16 %236, %309
  %311 = mul nsw i32 %308, %267
  %312 = ashr i32 %311, %6
  %313 = sub nsw i32 %297, %312
  %314 = icmp slt i32 %313, 1
  br i1 %314, label %493, label %315

315:                                              ; preds = %304
  %316 = icmp sgt i32 %265, 0
  %317 = zext i1 %316 to i32
  %318 = ashr i32 %265, 31
  %319 = or i32 %318, %317
  %320 = trunc i32 %319 to i16
  %321 = sub i16 %237, %320
  %322 = mul nsw i32 %319, %265
  %323 = ashr i32 %322, %6
  %324 = shl nsw i32 %323, 1
  %325 = sub nsw i32 %313, %324
  %326 = icmp slt i32 %325, 1
  br i1 %326, label %493, label %327

327:                                              ; preds = %315
  %328 = icmp sgt i32 %262, 0
  %329 = zext i1 %328 to i32
  %330 = ashr i32 %262, 31
  %331 = or i32 %330, %329
  %332 = trunc i32 %331 to i16
  %333 = sub i16 %238, %332
  %334 = mul nsw i32 %331, %262
  %335 = ashr i32 %334, %6
  %336 = mul i32 %335, -3
  %337 = add i32 %325, %336
  %338 = icmp slt i32 %337, 1
  br i1 %338, label %493, label %339

339:                                              ; preds = %327
  %340 = icmp sgt i32 %259, 0
  %341 = zext i1 %340 to i32
  %342 = ashr i32 %259, 31
  %343 = or i32 %342, %341
  %344 = trunc i32 %343 to i16
  %345 = sub i16 %239, %344
  %346 = mul nsw i32 %343, %259
  %347 = ashr i32 %346, %6
  %348 = shl nsw i32 %347, 2
  %349 = sub nsw i32 %337, %348
  %350 = icmp slt i32 %349, 1
  br i1 %350, label %493, label %351

351:                                              ; preds = %339
  %352 = icmp sgt i32 %256, 0
  %353 = zext i1 %352 to i32
  %354 = ashr i32 %256, 31
  %355 = or i32 %354, %353
  %356 = trunc i32 %355 to i16
  %357 = sub i16 %235, %356
  %358 = mul nsw i32 %355, %256
  %359 = ashr i32 %358, %6
  %360 = mul i32 %359, -5
  %361 = add i32 %349, %360
  %362 = icmp slt i32 %361, 1
  br i1 %362, label %493, label %363

363:                                              ; preds = %351
  %364 = icmp sgt i32 %253, 0
  %365 = zext i1 %364 to i32
  %366 = ashr i32 %253, 31
  %367 = or i32 %366, %365
  %368 = trunc i32 %367 to i16
  %369 = sub i16 %234, %368
  %370 = mul nsw i32 %367, %253
  %371 = ashr i32 %370, %6
  %372 = mul i32 %371, -6
  %373 = add i32 %361, %372
  %374 = icmp slt i32 %373, 1
  br i1 %374, label %493, label %375

375:                                              ; preds = %363
  %376 = icmp sgt i32 %250, 0
  %377 = zext i1 %376 to i32
  %378 = ashr i32 %250, 31
  %379 = or i32 %378, %377
  %380 = trunc i32 %379 to i16
  %381 = sub i16 %233, %380
  %382 = mul nsw i32 %379, %250
  %383 = ashr i32 %382, %6
  %384 = mul i32 %383, -7
  %385 = add i32 %373, %384
  %386 = icmp slt i32 %385, 1
  br i1 %386, label %493, label %387

387:                                              ; preds = %375
  %388 = icmp sgt i32 %247, 0
  %389 = zext i1 %388 to i32
  %390 = ashr i32 %247, 31
  %391 = or i32 %390, %389
  %392 = trunc i32 %391 to i16
  %393 = sub i16 %232, %392
  br label %493

394:                                              ; preds = %230
  %395 = icmp slt i32 %302, 0
  br i1 %395, label %396, label %493

396:                                              ; preds = %394
  %397 = icmp sgt i32 %267, 0
  %398 = zext i1 %397 to i32
  %399 = ashr i32 %267, 31
  %400 = or i32 %399, %398
  %401 = trunc i32 %400 to i16
  %402 = add i16 %236, %401
  %403 = mul i32 %267, %400
  %404 = sub i32 0, %403
  %405 = ashr i32 %404, %6
  %406 = sub nsw i32 %297, %405
  %407 = icmp sgt i32 %406, -1
  br i1 %407, label %493, label %408

408:                                              ; preds = %396
  %409 = icmp sgt i32 %265, 0
  %410 = zext i1 %409 to i32
  %411 = ashr i32 %265, 31
  %412 = or i32 %411, %410
  %413 = trunc i32 %412 to i16
  %414 = add i16 %237, %413
  %415 = mul i32 %265, %412
  %416 = sub i32 0, %415
  %417 = ashr i32 %416, %6
  %418 = shl nsw i32 %417, 1
  %419 = sub nsw i32 %406, %418
  %420 = icmp sgt i32 %419, -1
  br i1 %420, label %493, label %421

421:                                              ; preds = %408
  %422 = icmp sgt i32 %262, 0
  %423 = zext i1 %422 to i32
  %424 = ashr i32 %262, 31
  %425 = or i32 %424, %423
  %426 = trunc i32 %425 to i16
  %427 = add i16 %238, %426
  %428 = mul i32 %262, %425
  %429 = sub i32 0, %428
  %430 = ashr i32 %429, %6
  %431 = mul i32 %430, -3
  %432 = add i32 %419, %431
  %433 = icmp sgt i32 %432, -1
  br i1 %433, label %493, label %434

434:                                              ; preds = %421
  %435 = icmp sgt i32 %259, 0
  %436 = zext i1 %435 to i32
  %437 = ashr i32 %259, 31
  %438 = or i32 %437, %436
  %439 = trunc i32 %438 to i16
  %440 = add i16 %239, %439
  %441 = mul i32 %259, %438
  %442 = sub i32 0, %441
  %443 = ashr i32 %442, %6
  %444 = shl nsw i32 %443, 2
  %445 = sub nsw i32 %432, %444
  %446 = icmp sgt i32 %445, -1
  br i1 %446, label %493, label %447

447:                                              ; preds = %434
  %448 = icmp sgt i32 %256, 0
  %449 = zext i1 %448 to i32
  %450 = ashr i32 %256, 31
  %451 = or i32 %450, %449
  %452 = trunc i32 %451 to i16
  %453 = add i16 %235, %452
  %454 = mul i32 %256, %451
  %455 = sub i32 0, %454
  %456 = ashr i32 %455, %6
  %457 = mul i32 %456, -5
  %458 = add i32 %445, %457
  %459 = icmp sgt i32 %458, -1
  br i1 %459, label %493, label %460

460:                                              ; preds = %447
  %461 = icmp sgt i32 %253, 0
  %462 = zext i1 %461 to i32
  %463 = ashr i32 %253, 31
  %464 = or i32 %463, %462
  %465 = trunc i32 %464 to i16
  %466 = add i16 %234, %465
  %467 = mul i32 %253, %464
  %468 = sub i32 0, %467
  %469 = ashr i32 %468, %6
  %470 = mul i32 %469, -6
  %471 = add i32 %458, %470
  %472 = icmp sgt i32 %471, -1
  br i1 %472, label %493, label %473

473:                                              ; preds = %460
  %474 = icmp sgt i32 %250, 0
  %475 = zext i1 %474 to i32
  %476 = ashr i32 %250, 31
  %477 = or i32 %476, %475
  %478 = trunc i32 %477 to i16
  %479 = add i16 %233, %478
  %480 = mul i32 %250, %477
  %481 = sub i32 0, %480
  %482 = ashr i32 %481, %6
  %483 = mul i32 %482, -7
  %484 = add i32 %471, %483
  %485 = icmp sgt i32 %484, -1
  br i1 %485, label %493, label %486

486:                                              ; preds = %473
  %487 = icmp sgt i32 %247, 0
  %488 = zext i1 %487 to i32
  %489 = ashr i32 %247, 31
  %490 = or i32 %489, %488
  %491 = trunc i32 %490 to i16
  %492 = add i16 %232, %491
  br label %493

493:                                              ; preds = %486, %473, %460, %447, %434, %421, %408, %396, %394, %387, %375, %363, %351, %339, %327, %315, %304
  %494 = phi i16 [ %239, %304 ], [ %239, %315 ], [ %239, %327 ], [ %345, %339 ], [ %345, %351 ], [ %345, %363 ], [ %345, %375 ], [ %345, %387 ], [ %239, %396 ], [ %239, %408 ], [ %239, %421 ], [ %440, %434 ], [ %440, %447 ], [ %440, %460 ], [ %440, %473 ], [ %440, %486 ], [ %239, %394 ]
  %495 = phi i16 [ %238, %304 ], [ %238, %315 ], [ %333, %327 ], [ %333, %339 ], [ %333, %351 ], [ %333, %363 ], [ %333, %375 ], [ %333, %387 ], [ %238, %396 ], [ %238, %408 ], [ %427, %421 ], [ %427, %434 ], [ %427, %447 ], [ %427, %460 ], [ %427, %473 ], [ %427, %486 ], [ %238, %394 ]
  %496 = phi i16 [ %237, %304 ], [ %321, %315 ], [ %321, %327 ], [ %321, %339 ], [ %321, %351 ], [ %321, %363 ], [ %321, %375 ], [ %321, %387 ], [ %237, %396 ], [ %414, %408 ], [ %414, %421 ], [ %414, %434 ], [ %414, %447 ], [ %414, %460 ], [ %414, %473 ], [ %414, %486 ], [ %237, %394 ]
  %497 = phi i16 [ %310, %304 ], [ %310, %315 ], [ %310, %327 ], [ %310, %339 ], [ %310, %351 ], [ %310, %363 ], [ %310, %375 ], [ %310, %387 ], [ %402, %396 ], [ %402, %408 ], [ %402, %421 ], [ %402, %434 ], [ %402, %447 ], [ %402, %460 ], [ %402, %473 ], [ %402, %486 ], [ %236, %394 ]
  %498 = phi i16 [ %235, %304 ], [ %235, %315 ], [ %235, %327 ], [ %235, %339 ], [ %357, %351 ], [ %357, %363 ], [ %357, %375 ], [ %357, %387 ], [ %235, %396 ], [ %235, %408 ], [ %235, %421 ], [ %235, %434 ], [ %453, %447 ], [ %453, %460 ], [ %453, %473 ], [ %453, %486 ], [ %235, %394 ]
  %499 = phi i16 [ %234, %304 ], [ %234, %315 ], [ %234, %327 ], [ %234, %339 ], [ %234, %351 ], [ %369, %363 ], [ %369, %375 ], [ %369, %387 ], [ %234, %396 ], [ %234, %408 ], [ %234, %421 ], [ %234, %434 ], [ %234, %447 ], [ %466, %460 ], [ %466, %473 ], [ %466, %486 ], [ %234, %394 ]
  %500 = phi i16 [ %233, %304 ], [ %233, %315 ], [ %233, %327 ], [ %233, %339 ], [ %233, %351 ], [ %233, %363 ], [ %381, %375 ], [ %381, %387 ], [ %233, %396 ], [ %233, %408 ], [ %233, %421 ], [ %233, %434 ], [ %233, %447 ], [ %233, %460 ], [ %479, %473 ], [ %479, %486 ], [ %233, %394 ]
  %501 = phi i16 [ %232, %304 ], [ %232, %315 ], [ %232, %327 ], [ %232, %339 ], [ %232, %351 ], [ %232, %363 ], [ %232, %375 ], [ %393, %387 ], [ %232, %396 ], [ %232, %408 ], [ %232, %421 ], [ %232, %434 ], [ %232, %447 ], [ %232, %460 ], [ %232, %473 ], [ %492, %486 ], [ %232, %394 ]
  %502 = add nuw nsw i64 %231, 1
  %503 = icmp eq i64 %502, %229
  br i1 %503, label %504, label %230, !llvm.loop !168

504:                                              ; preds = %493, %210
  %505 = phi i16 [ %219, %210 ], [ %494, %493 ]
  %506 = phi i16 [ %221, %210 ], [ %495, %493 ]
  %507 = phi i16 [ %223, %210 ], [ %496, %493 ]
  %508 = phi i16 [ %225, %210 ], [ %497, %493 ]
  %509 = phi i16 [ %217, %210 ], [ %498, %493 ]
  %510 = phi i16 [ %215, %210 ], [ %499, %493 ]
  %511 = phi i16 [ %213, %210 ], [ %500, %493 ]
  %512 = phi i16 [ %211, %210 ], [ %501, %493 ]
  store i16 %512, ptr %3, align 2, !tbaa !12
  store i16 %511, ptr %212, align 2, !tbaa !12
  store i16 %510, ptr %214, align 2, !tbaa !12
  store i16 %509, ptr %216, align 2, !tbaa !12
  store i16 %505, ptr %218, align 2, !tbaa !12
  store i16 %506, ptr %220, align 2, !tbaa !12
  store i16 %507, ptr %222, align 2, !tbaa !12
  store i16 %508, ptr %224, align 2, !tbaa !12
  br label %608

513:                                              ; preds = %604, %46
  %514 = phi i64 [ %49, %46 ], [ %605, %604 ]
  %515 = sub nsw i64 %514, %49
  %516 = getelementptr inbounds i32, ptr %0, i64 %515
  %517 = load i32, ptr %516, align 4, !tbaa !17
  %518 = getelementptr inbounds i32, ptr %0, i64 %514
  %519 = getelementptr inbounds i32, ptr %518, i64 -1
  br i1 %47, label %520, label %534

520:                                              ; preds = %520, %513
  %521 = phi i64 [ %532, %520 ], [ 0, %513 ]
  %522 = phi i32 [ %531, %520 ], [ 0, %513 ]
  %523 = getelementptr inbounds i16, ptr %3, i64 %521
  %524 = load i16, ptr %523, align 2, !tbaa !12
  %525 = sext i16 %524 to i32
  %526 = sub nsw i64 0, %521
  %527 = getelementptr inbounds i32, ptr %519, i64 %526
  %528 = load i32, ptr %527, align 4, !tbaa !17
  %529 = sub i32 %528, %517
  %530 = mul i32 %529, %525
  %531 = add i32 %530, %522
  %532 = add nuw nsw i64 %521, 1
  %533 = icmp eq i64 %532, %50
  br i1 %533, label %534, label %520, !llvm.loop !169

534:                                              ; preds = %520, %513
  %535 = phi i32 [ 0, %513 ], [ %531, %520 ]
  %536 = load i32, ptr %518, align 4, !tbaa !17
  %537 = add nsw i32 %535, %10
  %538 = ashr i32 %537, %6
  %539 = add i32 %538, %517
  %540 = sub i32 %536, %539
  %541 = shl i32 %540, %8
  %542 = ashr i32 %541, %8
  %543 = getelementptr inbounds i32, ptr %1, i64 %514
  store i32 %542, ptr %543, align 4, !tbaa !17
  %544 = icmp sgt i32 %542, 0
  %545 = zext i1 %544 to i32
  %546 = ashr i32 %542, 31
  %547 = or i32 %546, %545
  %548 = icmp sgt i32 %547, 0
  br i1 %548, label %549, label %575

549:                                              ; preds = %553, %534
  %550 = phi i64 [ %554, %553 ], [ %48, %534 ]
  %551 = phi i32 [ %573, %553 ], [ %542, %534 ]
  %552 = icmp sgt i64 %550, 0
  br i1 %552, label %553, label %604

553:                                              ; preds = %549
  %554 = add nsw i64 %550, -1
  %555 = sub nsw i64 1, %550
  %556 = getelementptr inbounds i32, ptr %519, i64 %555
  %557 = load i32, ptr %556, align 4, !tbaa !17
  %558 = sub nsw i32 %517, %557
  %559 = icmp sgt i32 %558, 0
  %560 = zext i1 %559 to i32
  %561 = ashr i32 %558, 31
  %562 = or i32 %561, %560
  %563 = and i64 %554, 4294967295
  %564 = getelementptr inbounds i16, ptr %3, i64 %563
  %565 = load i16, ptr %564, align 2, !tbaa !12
  %566 = trunc i32 %562 to i16
  %567 = sub i16 %565, %566
  store i16 %567, ptr %564, align 2, !tbaa !12
  %568 = mul nsw i32 %562, %558
  %569 = ashr i32 %568, %6
  %570 = trunc i64 %554 to i32
  %571 = sub i32 %570, %4
  %572 = mul i32 %569, %571
  %573 = add i32 %572, %551
  %574 = icmp slt i32 %573, 1
  br i1 %574, label %604, label %549, !llvm.loop !170

575:                                              ; preds = %534
  %576 = icmp slt i32 %547, 0
  br i1 %576, label %577, label %604

577:                                              ; preds = %581, %575
  %578 = phi i64 [ %582, %581 ], [ %48, %575 ]
  %579 = phi i32 [ %602, %581 ], [ %542, %575 ]
  %580 = icmp sgt i64 %578, 0
  br i1 %580, label %581, label %604

581:                                              ; preds = %577
  %582 = add nsw i64 %578, -1
  %583 = sub nsw i64 1, %578
  %584 = getelementptr inbounds i32, ptr %519, i64 %583
  %585 = load i32, ptr %584, align 4, !tbaa !17
  %586 = sub nsw i32 %517, %585
  %587 = icmp sgt i32 %586, 0
  %588 = zext i1 %587 to i32
  %589 = ashr i32 %586, 31
  %590 = or i32 %589, %588
  %591 = and i64 %582, 4294967295
  %592 = getelementptr inbounds i16, ptr %3, i64 %591
  %593 = load i16, ptr %592, align 2, !tbaa !12
  %594 = trunc i32 %590 to i16
  %595 = add i16 %593, %594
  store i16 %595, ptr %592, align 2, !tbaa !12
  %596 = mul i32 %586, %590
  %597 = sub i32 0, %596
  %598 = ashr i32 %597, %6
  %599 = trunc i64 %582 to i32
  %600 = sub i32 %599, %4
  %601 = mul i32 %598, %600
  %602 = add i32 %601, %579
  %603 = icmp sgt i32 %602, -1
  br i1 %603, label %604, label %577, !llvm.loop !171

604:                                              ; preds = %581, %577, %575, %553, %549
  %605 = add nsw i64 %514, 1
  %606 = trunc i64 %605 to i32
  %607 = icmp eq i32 %606, %2
  br i1 %607, label %608, label %513, !llvm.loop !172

608:                                              ; preds = %604, %504, %205, %44, %27, %23, %21, %12
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
  br i1 %9, label %11, label %77

11:                                               ; preds = %10
  %12 = mul i32 %3, 3
  %13 = add i32 %12, -3
  %14 = zext i32 %13 to i64
  %15 = zext i32 %4 to i64
  br label %22

16:                                               ; preds = %7
  br i1 %9, label %17, label %77

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
  br i1 %53, label %77, label %22, !llvm.loop !175

54:                                               ; preds = %54, %17
  %55 = phi i64 [ 0, %17 ], [ %75, %54 ]
  %56 = phi ptr [ %2, %17 ], [ %74, %54 ]
  %57 = call i32 @_wyvern_slice_unmix20__711190675(ptr %0, i64 %55)
  %58 = lshr i32 %57, 16
  %59 = trunc i32 %58 to i8
  %60 = getelementptr inbounds i8, ptr %56, i64 2
  store i8 %59, ptr %60, align 1, !tbaa !16
  %61 = lshr i32 %57, 8
  %62 = trunc i32 %61 to i8
  %63 = getelementptr inbounds i8, ptr %56, i64 1
  store i8 %62, ptr %63, align 1, !tbaa !16
  %64 = trunc i32 %57 to i8
  store i8 %64, ptr %56, align 1, !tbaa !16
  %65 = getelementptr inbounds i8, ptr %56, i64 3
  %66 = call i32 @_wyvern_slice_unmix20__711190675(ptr %1, i64 %55)
  %67 = lshr i32 %66, 16
  %68 = trunc i32 %67 to i8
  %69 = getelementptr inbounds i8, ptr %56, i64 5
  store i8 %68, ptr %69, align 1, !tbaa !16
  %70 = lshr i32 %66, 8
  %71 = trunc i32 %70 to i8
  %72 = getelementptr inbounds i8, ptr %56, i64 4
  store i8 %71, ptr %72, align 1, !tbaa !16
  %73 = trunc i32 %66 to i8
  store i8 %73, ptr %65, align 1, !tbaa !16
  %74 = getelementptr inbounds i8, ptr %65, i64 %20
  %75 = add nuw nsw i64 %55, 1
  %76 = icmp eq i64 %75, %21
  br i1 %76, label %77, label %54, !llvm.loop !176

77:                                               ; preds = %54, %22, %16, %10
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
  %7 = icmp sgt i32 %4, 0
  br i1 %7, label %8, label %30

8:                                                ; preds = %6
  %9 = mul i32 %3, 3
  %10 = zext i32 %9 to i64
  %11 = zext i32 %4 to i64
  br label %12

12:                                               ; preds = %12, %8
  %13 = phi i64 [ 0, %8 ], [ %28, %12 ]
  %14 = phi ptr [ %2, %8 ], [ %27, %12 ]
  %15 = call i32 @_wyvern_slice_copyPredictorTo24Shift__343123531(ptr %0, i32 %5, i64 %13)
  %16 = getelementptr inbounds i16, ptr %1, i64 %13
  %17 = load i16, ptr %16, align 2, !tbaa !12
  %18 = zext i16 %17 to i32
  %19 = or i32 %15, %18
  %20 = lshr i32 %15, 16
  %21 = trunc i32 %20 to i8
  %22 = getelementptr inbounds i8, ptr %14, i64 2
  store i8 %21, ptr %22, align 1, !tbaa !16
  %23 = lshr i32 %19, 8
  %24 = trunc i32 %23 to i8
  %25 = getelementptr inbounds i8, ptr %14, i64 1
  store i8 %24, ptr %25, align 1, !tbaa !16
  %26 = trunc i32 %19 to i8
  store i8 %26, ptr %14, align 1, !tbaa !16
  %27 = getelementptr inbounds i8, ptr %14, i64 %10
  %28 = add nuw nsw i64 %13, 1
  %29 = icmp eq i64 %28, %11
  br i1 %29, label %30, label %12, !llvm.loop !185

30:                                               ; preds = %12, %6
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
  %7 = icmp sgt i32 %4, 0
  br i1 %7, label %8, label %22

8:                                                ; preds = %6
  %9 = zext i32 %3 to i64
  %10 = zext i32 %4 to i64
  br label %11

11:                                               ; preds = %11, %8
  %12 = phi i64 [ 0, %8 ], [ %20, %11 ]
  %13 = phi ptr [ %2, %8 ], [ %19, %11 ]
  %14 = call i32 @_wyvern_slice_copyPredictorTo24Shift__343123531(ptr %0, i32 %5, i64 %12)
  %15 = getelementptr inbounds i16, ptr %1, i64 %12
  %16 = load i16, ptr %15, align 2, !tbaa !12
  %17 = zext i16 %16 to i32
  %18 = or i32 %14, %17
  store i32 %18, ptr %13, align 4, !tbaa !17
  %19 = getelementptr inbounds i32, ptr %13, i64 %9
  %20 = add nuw nsw i64 %12, 1
  %21 = icmp eq i64 %20, %10
  br i1 %21, label %22, label %11, !llvm.loop !188

22:                                               ; preds = %11, %6
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
  br i1 %10, label %11, label %64

11:                                               ; preds = %9
  %12 = mul i32 %1, 3
  %13 = add i32 %12, -3
  %14 = zext i32 %13 to i64
  %15 = zext i32 %4 to i64
  br label %47

16:                                               ; preds = %7
  %17 = shl nuw i32 1, %5
  %18 = sub nsw i32 %17, %6
  %19 = icmp sgt i32 %4, 0
  br i1 %19, label %20, label %64

20:                                               ; preds = %16
  %21 = mul i32 %1, 3
  %22 = add i32 %21, -3
  %23 = zext i32 %22 to i64
  %24 = zext i32 %4 to i64
  br label %25

25:                                               ; preds = %25, %20
  %26 = phi i64 [ 0, %20 ], [ %45, %25 ]
  %27 = phi ptr [ %0, %20 ], [ %37, %25 ]
  %28 = call i32 @_wyvern_slice_copy20ToPredictor__815256890(ptr %27)
  %29 = ashr i32 %28, 12
  %30 = getelementptr inbounds i8, ptr %27, i64 3
  %31 = load i8, ptr %30, align 1, !tbaa !16
  %32 = zext i8 %31 to i32
  %33 = call i32 @_wyvern_slice_mix20__319437883(ptr %27)
  %34 = shl nuw nsw i32 %32, 8
  %35 = or i32 %33, %34
  %36 = ashr i32 %35, 12
  %37 = getelementptr inbounds i8, ptr %30, i64 %23
  %38 = mul nsw i32 %29, %6
  %39 = mul nsw i32 %36, %18
  %40 = add nsw i32 %39, %38
  %41 = ashr i32 %40, %5
  %42 = getelementptr inbounds i32, ptr %2, i64 %26
  store i32 %41, ptr %42, align 4, !tbaa !17
  %43 = sub nsw i32 %29, %36
  %44 = getelementptr inbounds i32, ptr %3, i64 %26
  store i32 %43, ptr %44, align 4, !tbaa !17
  %45 = add nuw nsw i64 %26, 1
  %46 = icmp eq i64 %45, %24
  br i1 %46, label %64, label %25, !llvm.loop !191

47:                                               ; preds = %47, %11
  %48 = phi i64 [ 0, %11 ], [ %62, %47 ]
  %49 = phi ptr [ %0, %11 ], [ %61, %47 ]
  %50 = call i32 @_wyvern_slice_copy20ToPredictor__815256890(ptr %49)
  %51 = ashr i32 %50, 12
  %52 = getelementptr inbounds i32, ptr %2, i64 %48
  store i32 %51, ptr %52, align 4, !tbaa !17
  %53 = getelementptr inbounds i8, ptr %49, i64 3
  %54 = load i8, ptr %53, align 1, !tbaa !16
  %55 = zext i8 %54 to i32
  %56 = call i32 @_wyvern_slice_mix20__319437883(ptr %49)
  %57 = shl nuw nsw i32 %55, 8
  %58 = or i32 %56, %57
  %59 = ashr i32 %58, 12
  %60 = getelementptr inbounds i32, ptr %3, i64 %48
  store i32 %59, ptr %60, align 4, !tbaa !17
  %61 = getelementptr inbounds i8, ptr %53, i64 %14
  %62 = add nuw nsw i64 %48, 1
  %63 = icmp eq i64 %62, %15
  br i1 %63, label %64, label %47, !llvm.loop !192

64:                                               ; preds = %47, %25, %16, %9
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
  br i1 %15, label %89, label %16

16:                                               ; preds = %9
  %17 = shl nuw i32 1, %5
  %18 = sub nsw i32 %17, %6
  %19 = icmp eq i32 %8, 0
  %20 = icmp sgt i32 %4, 0
  br i1 %19, label %27, label %21

21:                                               ; preds = %16
  br i1 %20, label %22, label %150

22:                                               ; preds = %21
  %23 = mul i32 %1, 3
  %24 = add i32 %23, -3
  %25 = zext i32 %24 to i64
  %26 = zext i32 %4 to i64
  br label %33

27:                                               ; preds = %16
  br i1 %20, label %28, label %150

28:                                               ; preds = %27
  %29 = mul i32 %1, 3
  %30 = add i32 %29, -3
  %31 = zext i32 %30 to i64
  %32 = zext i32 %4 to i64
  br label %67

33:                                               ; preds = %33, %22
  %34 = phi i64 [ 0, %22 ], [ %64, %33 ]
  %35 = phi i64 [ 0, %22 ], [ %65, %33 ]
  %36 = phi ptr [ %0, %22 ], [ %47, %33 ]
  %37 = call i32 @_wyvern_slice_mix24__513165491(ptr %36)
  %38 = shl nuw i32 %37, 8
  %39 = ashr exact i32 %38, 8
  %40 = getelementptr inbounds i8, ptr %36, i64 3
  %41 = call i32 @_wyvern_slice_mix24__286254249(ptr %36)
  %42 = load i8, ptr %40, align 1, !tbaa !16
  %43 = zext i8 %42 to i32
  %44 = or i32 %41, %43
  %45 = shl nuw i32 %44, 8
  %46 = ashr exact i32 %45, 8
  %47 = getelementptr inbounds i8, ptr %40, i64 %25
  %48 = and i32 %37, %14
  %49 = trunc i32 %48 to i16
  %50 = getelementptr inbounds i16, ptr %7, i64 %35
  store i16 %49, ptr %50, align 2, !tbaa !12
  %51 = and i32 %44, %14
  %52 = trunc i32 %51 to i16
  %53 = or i64 %35, 1
  %54 = getelementptr inbounds i16, ptr %7, i64 %53
  store i16 %52, ptr %54, align 2, !tbaa !12
  %55 = ashr i32 %39, %10
  %56 = ashr i32 %46, %10
  %57 = mul nsw i32 %55, %6
  %58 = mul nsw i32 %56, %18
  %59 = add nsw i32 %58, %57
  %60 = ashr i32 %59, %5
  %61 = getelementptr inbounds i32, ptr %2, i64 %34
  store i32 %60, ptr %61, align 4, !tbaa !17
  %62 = sub nsw i32 %55, %56
  %63 = getelementptr inbounds i32, ptr %3, i64 %34
  store i32 %62, ptr %63, align 4, !tbaa !17
  %64 = add nuw nsw i64 %34, 1
  %65 = add nuw nsw i64 %35, 2
  %66 = icmp eq i64 %64, %26
  br i1 %66, label %150, label %33, !llvm.loop !193

67:                                               ; preds = %67, %28
  %68 = phi i64 [ 0, %28 ], [ %87, %67 ]
  %69 = phi ptr [ %0, %28 ], [ %79, %67 ]
  %70 = call i32 @_wyvern_slice_copy20ToPredictor__815256890(ptr %69)
  %71 = ashr exact i32 %70, 8
  %72 = getelementptr inbounds i8, ptr %69, i64 3
  %73 = load i8, ptr %72, align 1, !tbaa !16
  %74 = zext i8 %73 to i32
  %75 = call i32 @_wyvern_slice_mix20__319437883(ptr %69)
  %76 = shl nuw nsw i32 %74, 8
  %77 = or i32 %75, %76
  %78 = ashr exact i32 %77, 8
  %79 = getelementptr inbounds i8, ptr %72, i64 %31
  %80 = mul nsw i32 %71, %6
  %81 = mul nsw i32 %78, %18
  %82 = add nsw i32 %81, %80
  %83 = ashr i32 %82, %5
  %84 = getelementptr inbounds i32, ptr %2, i64 %68
  store i32 %83, ptr %84, align 4, !tbaa !17
  %85 = sub nsw i32 %71, %78
  %86 = getelementptr inbounds i32, ptr %3, i64 %68
  store i32 %85, ptr %86, align 4, !tbaa !17
  %87 = add nuw nsw i64 %68, 1
  %88 = icmp eq i64 %87, %32
  br i1 %88, label %150, label %67, !llvm.loop !194

89:                                               ; preds = %9
  %90 = icmp eq i32 %8, 0
  %91 = icmp sgt i32 %4, 0
  br i1 %90, label %98, label %92

92:                                               ; preds = %89
  br i1 %91, label %93, label %150

93:                                               ; preds = %92
  %94 = mul i32 %1, 3
  %95 = add i32 %94, -3
  %96 = zext i32 %95 to i64
  %97 = zext i32 %4 to i64
  br label %104

98:                                               ; preds = %89
  br i1 %91, label %99, label %150

99:                                               ; preds = %98
  %100 = mul i32 %1, 3
  %101 = add i32 %100, -3
  %102 = zext i32 %101 to i64
  %103 = zext i32 %4 to i64
  br label %133

104:                                              ; preds = %104, %93
  %105 = phi i64 [ 0, %93 ], [ %130, %104 ]
  %106 = phi i64 [ 0, %93 ], [ %131, %104 ]
  %107 = phi ptr [ %0, %93 ], [ %118, %104 ]
  %108 = call i32 @_wyvern_slice_mix24__513165491(ptr %107)
  %109 = shl nuw i32 %108, 8
  %110 = ashr exact i32 %109, 8
  %111 = getelementptr inbounds i8, ptr %107, i64 3
  %112 = call i32 @_wyvern_slice_mix24__286254249(ptr %107)
  %113 = load i8, ptr %111, align 1, !tbaa !16
  %114 = zext i8 %113 to i32
  %115 = or i32 %112, %114
  %116 = shl nuw i32 %115, 8
  %117 = ashr exact i32 %116, 8
  %118 = getelementptr inbounds i8, ptr %111, i64 %96
  %119 = and i32 %108, %14
  %120 = trunc i32 %119 to i16
  %121 = getelementptr inbounds i16, ptr %7, i64 %106
  store i16 %120, ptr %121, align 2, !tbaa !12
  %122 = and i32 %115, %14
  %123 = trunc i32 %122 to i16
  %124 = or i64 %106, 1
  %125 = getelementptr inbounds i16, ptr %7, i64 %124
  store i16 %123, ptr %125, align 2, !tbaa !12
  %126 = ashr i32 %110, %10
  %127 = ashr i32 %117, %10
  %128 = getelementptr inbounds i32, ptr %2, i64 %105
  store i32 %126, ptr %128, align 4, !tbaa !17
  %129 = getelementptr inbounds i32, ptr %3, i64 %105
  store i32 %127, ptr %129, align 4, !tbaa !17
  %130 = add nuw nsw i64 %105, 1
  %131 = add nuw nsw i64 %106, 2
  %132 = icmp eq i64 %130, %97
  br i1 %132, label %150, label %104, !llvm.loop !195

133:                                              ; preds = %133, %99
  %134 = phi i64 [ 0, %99 ], [ %148, %133 ]
  %135 = phi ptr [ %0, %99 ], [ %147, %133 ]
  %136 = call i32 @_wyvern_slice_copy20ToPredictor__815256890(ptr %135)
  %137 = ashr exact i32 %136, 8
  %138 = getelementptr inbounds i32, ptr %2, i64 %134
  store i32 %137, ptr %138, align 4, !tbaa !17
  %139 = getelementptr inbounds i8, ptr %135, i64 3
  %140 = load i8, ptr %139, align 1, !tbaa !16
  %141 = zext i8 %140 to i32
  %142 = call i32 @_wyvern_slice_mix20__319437883(ptr %135)
  %143 = shl nuw nsw i32 %141, 8
  %144 = or i32 %142, %143
  %145 = ashr exact i32 %144, 8
  %146 = getelementptr inbounds i32, ptr %3, i64 %134
  store i32 %145, ptr %146, align 4, !tbaa !17
  %147 = getelementptr inbounds i8, ptr %139, i64 %102
  %148 = add nuw nsw i64 %134, 1
  %149 = icmp eq i64 %148, %103
  br i1 %149, label %150, label %133, !llvm.loop !196

150:                                              ; preds = %133, %104, %98, %92, %67, %33, %27, %21
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
  br i1 %5, label %6, label %19

6:                                                ; preds = %4
  %7 = mul i32 %1, 3
  %8 = zext i32 %7 to i64
  %9 = zext i32 %3 to i64
  br label %10

10:                                               ; preds = %10, %6
  %11 = phi i64 [ 0, %6 ], [ %17, %10 ]
  %12 = phi ptr [ %0, %6 ], [ %16, %10 ]
  %13 = call i32 @_wyvern_slice_copy20ToPredictor__815256890(ptr %12)
  %14 = ashr i32 %13, 12
  %15 = getelementptr inbounds i32, ptr %2, i64 %11
  store i32 %14, ptr %15, align 4, !tbaa !17
  %16 = getelementptr inbounds i8, ptr %12, i64 %8
  %17 = add nuw nsw i64 %11, 1
  %18 = icmp eq i64 %17, %9
  br i1 %18, label %19, label %10, !llvm.loop !200

19:                                               ; preds = %10, %4
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @copy24ToPredictor(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2, i32 noundef %3) #23 {
  %5 = icmp sgt i32 %3, 0
  br i1 %5, label %6, label %19

6:                                                ; preds = %4
  %7 = mul i32 %1, 3
  %8 = zext i32 %7 to i64
  %9 = zext i32 %3 to i64
  br label %10

10:                                               ; preds = %10, %6
  %11 = phi i64 [ 0, %6 ], [ %17, %10 ]
  %12 = phi ptr [ %0, %6 ], [ %16, %10 ]
  %13 = call i32 @_wyvern_slice_copy20ToPredictor__815256890(ptr %12)
  %14 = ashr exact i32 %13, 8
  %15 = getelementptr inbounds i32, ptr %2, i64 %11
  store i32 %14, ptr %15, align 4, !tbaa !17
  %16 = getelementptr inbounds i8, ptr %12, i64 %8
  %17 = add nuw nsw i64 %11, 1
  %18 = icmp eq i64 %17, %9
  br i1 %18, label %19, label %10, !llvm.loop !201

19:                                               ; preds = %10, %4
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
  %25 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %24, ptr noundef nonnull dereferenceable(3) @.str.45) #38
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %95, label %27

27:                                               ; preds = %19
  %28 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(2) @.str.1.46) #38
  %29 = icmp eq i32 %28, 0
  %30 = load ptr, ptr @stdin, align 8
  %31 = select i1 %29, ptr %30, ptr %22
  %32 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %11, ptr noundef nonnull dereferenceable(2) @.str.1.46) #38
  %33 = icmp eq i32 %32, 0
  %34 = load ptr, ptr @stdout, align 8
  %35 = select i1 %33, ptr %34, ptr %21
  %36 = icmp eq ptr %31, null
  br i1 %36, label %37, label %43

37:                                               ; preds = %27
  %38 = tail call noalias ptr @fopen(ptr noundef %9, ptr noundef nonnull @.str.2.47) #33
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = load ptr, ptr @stderr, align 8, !tbaa !63
  %42 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %41, ptr noundef nonnull @.str.3, ptr noundef %9) #39
  tail call void @exit(i32 noundef 1) #40
  unreachable

43:                                               ; preds = %37, %27
  %44 = phi ptr [ %38, %37 ], [ %31, %27 ]
  %45 = icmp eq ptr %35, null
  br i1 %45, label %46, label %15

46:                                               ; preds = %43
  %47 = tail call noalias ptr @fopen(ptr noundef %11, ptr noundef nonnull @.str.4) #33
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %15

49:                                               ; preds = %46
  %50 = load ptr, ptr @stderr, align 8, !tbaa !63
  %51 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %50, ptr noundef nonnull @.str.3, ptr noundef %11) #39
  tail call void @exit(i32 noundef 1) #40
  unreachable

52:                                               ; preds = %15
  %.lcssa2 = phi ptr [ %16, %15 ]
  %.lcssa1 = phi ptr [ %44, %15 ]
  br i1 %12, label %53, label %95

53:                                               ; preds = %52
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #36
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #36
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #36
  store i32 0, ptr %5, align 4, !tbaa !46
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #36
  store i32 0, ptr %6, align 4, !tbaa !46
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #36
  store i32 0, ptr %7, align 4, !tbaa !46
  %54 = call noundef i32 @_Z14GetInputFormatP8_IO_FILEP22AudioFormatDescriptionPj(ptr noundef nonnull %.lcssa1, ptr noundef nonnull %3, ptr noundef nonnull %7) #33
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %53
  %57 = load ptr, ptr @stderr, align 8, !tbaa !63
  %58 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %57, ptr noundef nonnull @.str.5, ptr noundef %9) #39
  call void @exit(i32 noundef 1) #40
  unreachable

59:                                               ; preds = %53
  %60 = load i32, ptr %7, align 4
  switch i32 %60, label %61 [
    i32 1667327590, label %64
    i32 1463899717, label %64
  ]

61:                                               ; preds = %59
  %62 = load ptr, ptr @stderr, align 8, !tbaa !63
  %63 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %62, ptr noundef nonnull @.str.6, ptr noundef %11) #39
  call void @exit(i32 noundef 1) #40
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
  %69 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %68, ptr noundef nonnull @.str.7, ptr noundef %11) #39
  call void @exit(i32 noundef 1) #40
  unreachable

70:                                               ; preds = %64, %64
  %71 = call noundef i32 @_Z15SetOutputFormat22AudioFormatDescriptionPS_(ptr noundef nonnull byval(%struct.AudioFormatDescription) align 8 %3, ptr noundef nonnull %4) #33
  %72 = call noundef i32 @_Z13FindDataStartP8_IO_FILEjPiS1_(ptr noundef nonnull %.lcssa1, i32 noundef %60, ptr noundef nonnull %5, ptr noundef nonnull %6) #33, !range !203
  %73 = load i32, ptr %5, align 4, !tbaa !46
  %74 = sext i32 %73 to i64
  %75 = call i32 @fseek(ptr noundef nonnull %.lcssa1, i64 noundef %74, i32 noundef 0) #33
  %76 = getelementptr inbounds %struct.AudioFormatDescription, ptr %4, i64 0, i32 1
  %77 = load i32, ptr %76, align 8, !tbaa !111
  %78 = icmp eq i32 %77, 1634492771
  br i1 %78, label %79, label %82

79:                                               ; preds = %70
  %80 = load i32, ptr %6, align 4, !tbaa !46
  %81 = call noundef i32 @_Z10EncodeALACP8_IO_FILES0_22AudioFormatDescriptionS1_i(ptr noundef nonnull %.lcssa1, ptr noundef nonnull %.lcssa2, ptr noundef nonnull byval(%struct.AudioFormatDescription) align 8 %3, ptr noundef nonnull byval(%struct.AudioFormatDescription) align 8 %4, i32 noundef %80) #33
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
  %91 = call i64 @fwrite(ptr nonnull @.str.8, i64 46, i64 1, ptr %90) #41
  call void @exit(i32 noundef 1) #40
  unreachable

92:                                               ; preds = %82
  %93 = select i1 %84, i32 1463899717, i32 1667327590
  %94 = call noundef i32 @_Z10DecodeALACP8_IO_FILES0_22AudioFormatDescriptionS1_ij(ptr noundef nonnull %.lcssa1, ptr noundef nonnull %.lcssa2, ptr noundef nonnull byval(%struct.AudioFormatDescription) align 8 %3, ptr noundef nonnull byval(%struct.AudioFormatDescription) align 8 %4, i32 poison, i32 noundef %93) #33
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
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #36
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #36
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #36
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #36
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #36
  %103 = call i32 @fclose(ptr noundef nonnull %.lcssa1) #33
  %104 = call i32 @fclose(ptr noundef nonnull %.lcssa2) #33
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
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #36
  %5 = call i64 @fread(ptr noundef nonnull %4, i64 noundef 1, i64 noundef 4, ptr noundef %0) #33
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
  %21 = tail call noundef zeroext i1 @_Z17GetCAFFdescFormatP8_IO_FILEP22AudioFormatDescription(ptr noundef %0, ptr noundef %1) #33
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
  %37 = call i64 @fread(ptr noundef nonnull %4, i64 noundef 1, i64 noundef 8, ptr noundef %0) #33
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
  %65 = call i64 @fread(ptr noundef nonnull %4, i64 noundef 1, i64 noundef 4, ptr noundef %0) #33
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
  %82 = call i64 @fread(ptr noundef nonnull %4, i64 noundef 1, i64 noundef 20, ptr noundef %0) #33
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
  %99 = call i64 @fread(ptr noundef nonnull %4, i64 noundef 1, i64 noundef 4, ptr noundef %0) #33
  %100 = load i32, ptr %4, align 16
  %101 = zext i32 %100 to i64
  %102 = tail call i32 @fseek(ptr noundef %0, i64 noundef %101, i32 noundef 1) #33
  br label %64, !llvm.loop !207

103:                                              ; preds = %45, %36
  store i32 0, ptr %2, align 4, !tbaa !46
  br label %105

104:                                              ; preds = %28, %24, %12
  store i32 0, ptr %2, align 4, !tbaa !46
  br label %105

105:                                              ; preds = %104, %103, %89, %88, %20
  %106 = phi i32 [ -1, %103 ], [ -1, %104 ], [ -1, %88 ], [ %23, %20 ], [ 0, %89 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #36
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
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #36
  switch i32 %1, label %48 [
    i32 1463899717, label %6
    i32 1667327590, label %44
  ]

6:                                                ; preds = %4
  %7 = tail call i32 @fseek(ptr noundef %0, i64 noundef 0, i32 noundef 0) #33
  %8 = call i64 @fread(ptr noundef nonnull %5, i64 noundef 1, i64 noundef 8, ptr noundef %0) #33
  %9 = getelementptr inbounds i8, ptr %5, i64 4
  %10 = load i32, ptr %9, align 1
  %11 = tail call i32 @fseek(ptr noundef %0, i64 noundef 12, i32 noundef 0) #33
  %12 = getelementptr inbounds [12 x i8], ptr %5, i64 0, i64 1
  %13 = getelementptr inbounds [12 x i8], ptr %5, i64 0, i64 2
  %14 = getelementptr inbounds [12 x i8], ptr %5, i64 0, i64 3
  br label %15

15:                                               ; preds = %40, %6
  %16 = tail call i64 @ftell(ptr noundef %0) #33
  %17 = trunc i64 %16 to i32
  %18 = icmp ugt i32 %10, %17
  br i1 %18, label %19, label %48

19:                                               ; preds = %15
  %20 = call i64 @fread(ptr noundef nonnull %5, i64 noundef 1, i64 noundef 8, ptr noundef %0) #33
  %21 = load i8, ptr %5, align 1, !tbaa !37
  %22 = zext i8 %21 to i32
  %23 = shl nuw i32 %22, 24
  %24 = load i8, ptr %12, align 1, !tbaa !37
  %25 = zext i8 %24 to i32
  %26 = shl nuw nsw i32 %25, 16
  %27 = or i32 %26, %23
  %28 = load i8, ptr %13, align 1, !tbaa !37
  %29 = zext i8 %28 to i32
  %30 = shl nuw nsw i32 %29, 8
  %31 = or i32 %27, %30
  %32 = load i8, ptr %14, align 1, !tbaa !37
  %33 = zext i8 %32 to i32
  %34 = or i32 %31, %33
  %35 = icmp eq i32 %34, 1684108385
  br i1 %35, label %36, label %40

36:                                               ; preds = %19
  %37 = tail call i64 @ftell(ptr noundef %0) #33
  %38 = trunc i64 %37 to i32
  store i32 %38, ptr %2, align 4, !tbaa !46
  %39 = load i32, ptr %9, align 1
  store i32 %39, ptr %3, align 4, !tbaa !46
  br label %48

40:                                               ; preds = %19
  %41 = load i32, ptr %9, align 1
  %42 = zext i32 %41 to i64
  %43 = tail call i32 @fseek(ptr noundef %0, i64 noundef %42, i32 noundef 1) #33
  br label %15, !llvm.loop !208

44:                                               ; preds = %4
  %45 = tail call noundef zeroext i1 @_Z17FindCAFFDataStartP8_IO_FILEPiS1_(ptr noundef %0, ptr noundef %2, ptr noundef %3) #33
  %46 = xor i1 %45, true
  %47 = sext i1 %46 to i32
  br label %48

48:                                               ; preds = %44, %36, %15, %4
  %49 = phi i32 [ -1, %4 ], [ %47, %44 ], [ 0, %36 ], [ -1, %15 ]
  %50 = call i64 @_wyvern_slice__Z13FindDataStartP8_IO_FILEjPiS1___943854617(ptr %0)
  %51 = tail call i32 @fseek(ptr noundef %0, i64 noundef %50, i32 noundef 0) #33
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #36
  ret i32 %49
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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #36
  store i32 0, ptr %6, align 4, !tbaa !46
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #36
  store i32 0, ptr %7, align 4, !tbaa !46
  %21 = sext i32 %19 to i64
  %22 = tail call noalias ptr @calloc(i64 noundef %21, i64 noundef 1) #35
  %23 = sext i32 %20 to i64
  %24 = tail call noalias ptr @calloc(i64 noundef %23, i64 noundef 1) #35
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #36
  store i32 0, ptr %8, align 4, !tbaa !46
  call void @llvm.lifetime.start.p0(i64 25, ptr nonnull %9) #36
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #36
  %25 = tail call noalias noundef nonnull dereferenceable(8304) ptr @_Znwm(i64 noundef 8304) #42
  invoke void @_ZN11ALACEncoderC1Ev(ptr noundef nonnull align 8 dereferenceable(8300) %25) #33
          to label %26 unwind label %44

26:                                               ; preds = %5
  %27 = getelementptr inbounds %class.ALACEncoder, ptr %25, i64 0, i32 17
  store i32 %18, ptr %27, align 4, !tbaa !108
  %28 = load ptr, ptr %25, align 8, !tbaa !82
  %29 = getelementptr inbounds ptr, ptr %28, i64 4
  %30 = load ptr, ptr %29, align 8
  %31 = tail call noundef i32 %30(ptr noundef nonnull align 8 dereferenceable(8300) %25, ptr noundef nonnull byval(%struct.AudioFormatDescription) align 8 %3) #33
  tail call void @_Z18WriteCAFFcaffChunkP8_IO_FILE(ptr noundef %1) #33
  tail call void @_Z18WriteCAFFdescChunkP8_IO_FILE22AudioFormatDescription(ptr noundef %1, ptr noundef nonnull byval(%struct.AudioFormatDescription) align 8 %3) #33
  %32 = getelementptr inbounds %struct.AudioFormatDescription, ptr %3, i64 0, i32 6
  %33 = load i32, ptr %32, align 4, !tbaa !98
  %34 = tail call noundef i32 @_ZN11ALACEncoder18GetMagicCookieSizeEj(ptr noundef nonnull align 8 dereferenceable(8300) %25, i32 noundef %33) #33
  store i32 %34, ptr %10, align 4, !tbaa !46
  %35 = zext i32 %34 to i64
  %36 = tail call noalias ptr @calloc(i64 noundef %35, i64 noundef 1) #35
  call void @_ZN11ALACEncoder14GetMagicCookieEPvPj(ptr noundef nonnull align 8 dereferenceable(8300) %25, ptr noundef %36, ptr noundef nonnull %10) #33
  %37 = load i32, ptr %10, align 4, !tbaa !46
  call void @_Z18WriteCAFFkukiChunkP8_IO_FILEPvj(ptr noundef %1, ptr noundef %36, i32 noundef %37) #33
  call void @free(ptr noundef %36) #34
  %38 = icmp ugt i32 %33, 2
  br i1 %38, label %39, label %46

39:                                               ; preds = %26
  %40 = add i32 %33, -1
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds [8 x i32], ptr @_ZL21ALACChannelLayoutTags.48, i64 0, i64 %41
  %43 = load i32, ptr %42, align 4, !tbaa !46
  call void @_Z18WriteCAFFchanChunkP8_IO_FILEj(ptr noundef %1, i32 noundef %43) #33
  br label %46

44:                                               ; preds = %5
  %45 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %25) #37
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #36
  call void @llvm.lifetime.end.p0(i64 25, ptr nonnull %9) #36
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #36
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #36
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #36
  resume { ptr, i32 } %45

46:                                               ; preds = %39, %26
  %47 = call noundef i32 @_Z20BuildBasePacketTable22AudioFormatDescriptioniPiP25port_CAFPacketTableHeader(ptr noundef nonnull byval(%struct.AudioFormatDescription) align 8 %2, i32 noundef %4, ptr noundef nonnull %6, ptr noundef nonnull %9) #33
  %48 = load i32, ptr %6, align 4, !tbaa !46
  %49 = sext i32 %48 to i64
  %50 = call noalias ptr @calloc(i64 noundef %49, i64 noundef 1) #35
  %51 = add nsw i32 %48, 24
  store i32 %51, ptr %6, align 4, !tbaa !46
  call void @_Z24WriteCAFFpaktChunkHeaderP8_IO_FILEP25port_CAFPacketTableHeaderj(ptr noundef %1, ptr noundef nonnull %9, i32 noundef %51) #33
  %52 = call i64 @ftell(ptr noundef %1) #33
  %53 = trunc i64 %52 to i32
  %54 = load i32, ptr %6, align 4, !tbaa !46
  %55 = add nsw i32 %54, -24
  store i32 %55, ptr %6, align 4, !tbaa !46
  %56 = sext i32 %55 to i64
  %57 = call i64 @fwrite(ptr noundef %50, i64 noundef 1, i64 noundef %56, ptr noundef %1) #33
  call void @free(ptr noundef %50) #34
  %58 = call i64 @ftell(ptr noundef %1) #33
  call void @_Z18WriteCAFFdataChunkP8_IO_FILE(ptr noundef %1) #33
  %59 = call i64 @ftell(ptr noundef %1) #33
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
  %73 = call i64 @fread(ptr noundef %22, i64 noundef 1, i64 noundef %21, ptr noundef %0) #33
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
  call void @Swap16(ptr noundef %85) #33
  %86 = add nuw nsw i64 %84, 1
  %87 = load i32, ptr %8, align 4, !tbaa !46
  %88 = ashr i32 %87, 1
  %89 = sext i32 %88 to i64
  %90 = icmp slt i64 %86, %89
  br i1 %90, label %83, label %106, !llvm.loop !209

91:                                               ; preds = %91, %77
  %92 = phi i64 [ %94, %91 ], [ 0, %77 ]
  %93 = getelementptr inbounds i32, ptr %22, i64 %92
  call void @Swap32(ptr noundef %93) #33
  %94 = add nuw nsw i64 %92, 1
  %95 = load i32, ptr %8, align 4, !tbaa !46
  %96 = ashr i32 %95, 2
  %97 = sext i32 %96 to i64
  %98 = icmp slt i64 %94, %97
  br i1 %98, label %91, label %106, !llvm.loop !210

99:                                               ; preds = %99, %81
  %100 = phi i64 [ %102, %99 ], [ 0, %81 ]
  %101 = getelementptr inbounds i8, ptr %22, i64 %100
  call void @Swap24(ptr noundef %101) #33
  %102 = add nuw i64 %100, 3
  %103 = load i32, ptr %8, align 4, !tbaa !46
  %104 = trunc i64 %102 to i32
  %105 = icmp sgt i32 %103, %104
  br i1 %105, label %99, label %106, !llvm.loop !211

106:                                              ; preds = %99, %91, %83, %81, %79, %77, %67
  %107 = load ptr, ptr %25, align 8, !tbaa !82
  %108 = getelementptr inbounds ptr, ptr %107, i64 2
  %109 = load ptr, ptr %108, align 8
  %110 = call noundef i32 %109(ptr noundef nonnull align 8 dereferenceable(8300) %25, ptr noundef nonnull byval(%struct.AudioFormatDescription) align 8 %2, ptr noundef nonnull byval(%struct.AudioFormatDescription) align 8 %2, ptr noundef %22, ptr noundef %24, ptr noundef nonnull %8) #33
  %111 = load i32, ptr %8, align 4, !tbaa !46
  call void @_Z13GetBERIntegeriPhPi(i32 noundef %111, ptr noundef %22, ptr noundef nonnull %7) #33
  %112 = sext i32 %68 to i64
  %113 = call i32 @fseek(ptr noundef %1, i64 noundef %112, i32 noundef 0) #33
  %114 = load i32, ptr %7, align 4, !tbaa !46
  %115 = sext i32 %114 to i64
  %116 = call i64 @fwrite(ptr noundef %22, i64 noundef 1, i64 noundef %115, ptr noundef %1) #33
  %117 = load i32, ptr %7, align 4, !tbaa !46
  %118 = add nsw i32 %117, %68
  %119 = sub i32 %70, %117
  %120 = sext i32 %69 to i64
  %121 = call i32 @fseek(ptr noundef %1, i64 noundef %120, i32 noundef 0) #33
  %122 = load i32, ptr %8, align 4, !tbaa !46
  %123 = sext i32 %122 to i64
  %124 = call i64 @fwrite(ptr noundef %24, i64 noundef 1, i64 noundef %123, ptr noundef %1) #33
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
  %139 = call i64 @fread(ptr noundef %22, i64 noundef 1, i64 noundef %138, ptr noundef %0) #33
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
  call void @Swap16(ptr noundef %154) #33
  %155 = add nuw nsw i64 %153, 1
  %156 = load i32, ptr %8, align 4, !tbaa !46
  %157 = ashr i32 %156, 1
  %158 = sext i32 %157 to i64
  %159 = icmp slt i64 %155, %158
  br i1 %159, label %152, label %175, !llvm.loop !213

160:                                              ; preds = %160, %146
  %161 = phi i64 [ %163, %160 ], [ 0, %146 ]
  %162 = getelementptr inbounds i32, ptr %22, i64 %161
  call void @Swap32(ptr noundef %162) #33
  %163 = add nuw nsw i64 %161, 1
  %164 = load i32, ptr %8, align 4, !tbaa !46
  %165 = ashr i32 %164, 2
  %166 = sext i32 %165 to i64
  %167 = icmp slt i64 %163, %166
  br i1 %167, label %160, label %175, !llvm.loop !214

168:                                              ; preds = %168, %150
  %169 = phi i64 [ %171, %168 ], [ 0, %150 ]
  %170 = getelementptr inbounds i8, ptr %22, i64 %169
  call void @Swap24(ptr noundef %170) #33
  %171 = add nuw i64 %169, 3
  %172 = load i32, ptr %8, align 4, !tbaa !46
  %173 = trunc i64 %171 to i32
  %174 = icmp sgt i32 %172, %173
  br i1 %174, label %168, label %175, !llvm.loop !215

175:                                              ; preds = %168, %160, %152, %150, %148, %146, %137
  %176 = load ptr, ptr %25, align 8, !tbaa !82
  %177 = getelementptr inbounds ptr, ptr %176, i64 2
  %178 = load ptr, ptr %177, align 8
  %179 = call noundef i32 %178(ptr noundef nonnull align 8 dereferenceable(8300) %25, ptr noundef nonnull byval(%struct.AudioFormatDescription) align 8 %2, ptr noundef nonnull byval(%struct.AudioFormatDescription) align 8 %2, ptr noundef %22, ptr noundef %24, ptr noundef nonnull %8) #33
  %180 = load i32, ptr %8, align 4, !tbaa !46
  call void @_Z13GetBERIntegeriPhPi(i32 noundef %180, ptr noundef %22, ptr noundef nonnull %7) #33
  %181 = sext i32 %135 to i64
  %182 = call i32 @fseek(ptr noundef %1, i64 noundef %181, i32 noundef 0) #33
  %183 = load i32, ptr %7, align 4, !tbaa !46
  %184 = sext i32 %183 to i64
  %185 = call i64 @fwrite(ptr noundef %22, i64 noundef 1, i64 noundef %184, ptr noundef %1) #33
  %186 = load i32, ptr %7, align 4, !tbaa !46
  %187 = add nsw i32 %186, %135
  %188 = sub i32 %133, %186
  %189 = sext i32 %134 to i64
  %190 = call i32 @fseek(ptr noundef %1, i64 noundef %189, i32 noundef 0) #33
  %191 = load i32, ptr %8, align 4, !tbaa !46
  %192 = sext i32 %191 to i64
  %193 = call i64 @fwrite(ptr noundef %24, i64 noundef 1, i64 noundef %192, ptr noundef %1) #33
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
  %204 = call i32 @fseek(ptr noundef %1, i64 noundef %203, i32 noundef 0) #33
  call void @_Z18WriteCAFFfreeChunkP8_IO_FILEj(ptr noundef %1, i32 noundef %199) #33
  %205 = shl i64 %52, 32
  %206 = add i64 %205, -137438953472
  %207 = ashr exact i64 %206, 32
  %208 = call i32 @fseek(ptr noundef %1, i64 noundef %207, i32 noundef 0) #33
  %209 = load i32, ptr %6, align 4, !tbaa !46
  %210 = sub i32 %209, %199
  %211 = add i32 %210, 24
  %212 = zext i32 %211 to i64
  call void @_Z18WriteCAFFChunkSizeP8_IO_FILEl(ptr noundef %1, i64 noundef %212) #33
  br label %213

213:                                              ; preds = %202, %197
  %214 = shl i64 %58, 32
  %215 = add i64 %214, 17179869184
  %216 = ashr exact i64 %215, 32
  %217 = call i32 @fseek(ptr noundef %1, i64 noundef %216, i32 noundef 0) #33
  %218 = add nsw i64 %198, 4
  call void @_Z18WriteCAFFChunkSizeP8_IO_FILEl(ptr noundef %1, i64 noundef %218) #33
  %219 = load ptr, ptr %25, align 8, !tbaa !82
  %220 = getelementptr inbounds ptr, ptr %219, i64 1
  %221 = load ptr, ptr %220, align 8
  call void %221(ptr noundef nonnull align 8 dereferenceable(8300) %25) #34
  call void @free(ptr noundef %22) #34
  call void @free(ptr noundef %24) #34
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #36
  call void @llvm.lifetime.end.p0(i64 25, ptr nonnull %9) #36
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #36
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #36
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #36
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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #36
  store i32 0, ptr %12, align 4, !tbaa !46
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #36
  store i32 0, ptr %13, align 4, !tbaa !46
  %28 = sext i32 %27 to i64
  %29 = tail call noalias ptr @calloc(i64 noundef %28, i64 noundef 1) #35
  %30 = sext i32 %26 to i64
  %31 = tail call noalias ptr @calloc(i64 noundef %30, i64 noundef 1) #35
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #36
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #36
  store i32 0, ptr %15, align 4, !tbaa !46
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %16) #36
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %17) #36
  %32 = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #42
  invoke void @_ZN11ALACDecoderC1Ev(ptr noundef nonnull align 8 dereferenceable(64) %32) #33
          to label %33 unwind label %52

33:                                               ; preds = %6
  %34 = tail call noundef i32 @_Z30GetMagicCookieSizeFromCAFFkukiP8_IO_FILE(ptr noundef %0) #33
  store i32 %34, ptr %17, align 4, !tbaa !46
  %35 = zext i32 %34 to i64
  %36 = tail call noalias ptr @calloc(i64 noundef %35, i64 noundef 1) #35
  %37 = call noundef i32 @_Z26GetMagicCookieFromCAFFkukiP8_IO_FILEPhPj(ptr noundef %0, ptr noundef %36, ptr noundef nonnull %17) #33
  %38 = load i32, ptr %17, align 4, !tbaa !46
  %39 = call noundef i32 @_ZN11ALACDecoder4InitEPvj(ptr noundef nonnull align 8 dereferenceable(64) %32, ptr noundef %36, i32 noundef %38) #33
  call void @free(ptr noundef %36) #34
  call void @BitBufferInit(ptr noundef nonnull %16, ptr noundef %29, i32 noundef %27) #33
  %40 = call i64 @ftell(ptr noundef %0) #33
  %41 = trunc i64 %40 to i32
  %42 = icmp eq i32 %5, 1463899717
  br i1 %42, label %57, label %43

43:                                               ; preds = %33
  call void @_Z18WriteCAFFcaffChunkP8_IO_FILE(ptr noundef %1) #33
  call void @_Z18WriteCAFFdescChunkP8_IO_FILE22AudioFormatDescription(ptr noundef %1, ptr noundef nonnull byval(%struct.AudioFormatDescription) align 8 %3) #33
  %44 = getelementptr inbounds %struct.AudioFormatDescription, ptr %3, i64 0, i32 6
  %45 = load i32, ptr %44, align 4, !tbaa !98
  %46 = icmp ugt i32 %45, 2
  br i1 %46, label %47, label %54

47:                                               ; preds = %43
  %48 = add i32 %45, -1
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds [8 x i32], ptr @_ZL21ALACChannelLayoutTags.48, i64 0, i64 %49
  %51 = load i32, ptr %50, align 4, !tbaa !46
  call void @_Z18WriteCAFFchanChunkP8_IO_FILEj(ptr noundef %1, i32 noundef %51) #33
  br label %54

52:                                               ; preds = %6
  %53 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %32) #37
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %17) #36
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %16) #36
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #36
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #36
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #36
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #36
  resume { ptr, i32 } %53

54:                                               ; preds = %47, %43
  %55 = call i64 @ftell(ptr noundef %1) #33
  %56 = add i64 %55, 4
  call void @_Z18WriteCAFFdataChunkP8_IO_FILE(ptr noundef %1) #33
  br label %98

57:                                               ; preds = %33
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %11, ptr noundef nonnull align 1 dereferenceable(12) @__const._Z18WriteWAVERIFFChunkP8_IO_FILE.theReadBuffer, i64 12, i1 false)
  %58 = call i64 @fwrite(ptr noundef nonnull %11, i64 noundef 1, i64 noundef 12, ptr noundef %1) #33
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #36
  %59 = load double, ptr %3, align 8, !tbaa.struct !216
  %60 = getelementptr inbounds i8, ptr %3, i64 24
  %61 = load i32, ptr %60, align 8, !tbaa.struct !218
  %62 = getelementptr inbounds i8, ptr %3, i64 28
  %63 = load i32, ptr %62, align 4, !tbaa.struct !51
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #36
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
  %94 = call i64 @fwrite(ptr noundef nonnull %10, i64 noundef 1, i64 noundef 24, ptr noundef %1) #33
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #36
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #36
  store i64 1635017060, ptr %9, align 8
  %95 = call i64 @fwrite(ptr noundef nonnull %9, i64 noundef 1, i64 noundef 8, ptr noundef %1) #33
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #36
  %96 = call i64 @ftell(ptr noundef %1) #33
  %97 = add i64 %96, -4
  br label %98

98:                                               ; preds = %57, %54
  %99 = phi i64 [ %56, %54 ], [ %97, %57 ]
  %100 = call noundef i32 @_Z24FindCAFFPacketTableStartP8_IO_FILEPiS1_(ptr noundef %0, ptr noundef nonnull %13, ptr noundef nonnull %12) #33
  %101 = load i32, ptr %13, align 4, !tbaa !46
  %102 = sext i32 %101 to i64
  %103 = call i32 @fseek(ptr noundef %0, i64 noundef %102, i32 noundef 0) #33
  %104 = call i64 @fread(ptr noundef %29, i64 noundef 1, i64 noundef 5, ptr noundef %0) #33
  %105 = trunc i64 %104 to i32
  store i32 %105, ptr %14, align 4, !tbaa !46
  %106 = call noundef i32 @_Z14ReadBERIntegerPhPi(ptr noundef %29, ptr noundef nonnull %14) #33
  %107 = load i32, ptr %14, align 4, !tbaa !46
  %108 = load i32, ptr %13, align 4, !tbaa !46
  %109 = add nsw i32 %108, %107
  store i32 %109, ptr %13, align 4, !tbaa !46
  %110 = shl i64 %40, 32
  %111 = ashr exact i64 %110, 32
  %112 = call i32 @fseek(ptr noundef %0, i64 noundef %111, i32 noundef 0) #33
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
  %123 = call i64 @fread(ptr noundef %29, i64 noundef 1, i64 noundef %122, ptr noundef %0) #33
  %124 = icmp eq i64 %123, %122
  br i1 %124, label %125, label %147

125:                                              ; preds = %118
  %126 = call noundef i32 @_ZN11ALACDecoder6DecodeEP9BitBufferPhjjPj(ptr noundef nonnull align 8 dereferenceable(64) %32, ptr noundef nonnull %16, ptr noundef %31, i32 noundef %25, i32 noundef %19, ptr noundef nonnull %15) #33
  %127 = load i32, ptr %15, align 4, !tbaa !46
  %128 = mul i32 %117, %127
  store i32 %128, ptr %14, align 4, !tbaa !46
  %129 = sext i32 %128 to i64
  %130 = call i64 @fwrite(ptr noundef %31, i64 noundef 1, i64 noundef %129, ptr noundef %1) #33
  %131 = load i32, ptr %14, align 4, !tbaa !46
  %132 = sext i32 %131 to i64
  %133 = add nsw i64 %121, %132
  %134 = load i32, ptr %13, align 4, !tbaa !46
  %135 = sext i32 %134 to i64
  %136 = call i32 @fseek(ptr noundef %0, i64 noundef %135, i32 noundef 0) #33
  %137 = call i64 @fread(ptr noundef %29, i64 noundef 1, i64 noundef 5, ptr noundef %0) #33
  %138 = trunc i64 %137 to i32
  store i32 %138, ptr %14, align 4, !tbaa !46
  %139 = call noundef i32 @_Z14ReadBERIntegerPhPi(ptr noundef %29, ptr noundef nonnull %14) #33
  %140 = load i32, ptr %14, align 4, !tbaa !46
  %141 = load i32, ptr %13, align 4, !tbaa !46
  %142 = add nsw i32 %141, %140
  store i32 %142, ptr %13, align 4, !tbaa !46
  %143 = sext i32 %120 to i64
  %144 = call i32 @fseek(ptr noundef %0, i64 noundef %143, i32 noundef 0) #33
  %145 = add nsw i32 %139, %120
  call void @BitBufferReset(ptr noundef nonnull %16) #33
  %146 = icmp sgt i32 %139, 0
  br i1 %146, label %118, label %147, !llvm.loop !219

147:                                              ; preds = %125, %118, %98
  %148 = phi i64 [ 0, %98 ], [ %133, %125 ], [ %121, %118 ]
  %149 = shl i64 %99, 32
  %150 = ashr exact i64 %149, 32
  %151 = call i32 @fseek(ptr noundef %1, i64 noundef %150, i32 noundef 0) #33
  br i1 %42, label %154, label %152

152:                                              ; preds = %147
  %153 = add nsw i64 %148, 4
  call void @_Z18WriteCAFFChunkSizeP8_IO_FILEl(ptr noundef %1, i64 noundef %153) #33
  br label %180

154:                                              ; preds = %147
  %155 = trunc i64 %148 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #36
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
  %166 = call i64 @fwrite(ptr noundef nonnull %8, i64 noundef 1, i64 noundef 4, ptr noundef %1) #33
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #36
  %167 = call i32 @fseek(ptr noundef %1, i64 noundef 4, i32 noundef 0) #33
  %168 = add i32 %155, 36
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #36
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
  %179 = call i64 @fwrite(ptr noundef nonnull %7, i64 noundef 1, i64 noundef 4, ptr noundef %1) #33
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #36
  br label %180

180:                                              ; preds = %154, %152
  call void @_ZN11ALACDecoderD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %32) #34
  call void @_ZdlPv(ptr noundef nonnull %32) #37
  call void @free(ptr noundef %29) #34
  call void @free(ptr noundef %31) #34
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %17) #36
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %16) #36
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #36
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #36
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #36
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #36
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
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #36
  %5 = tail call i32 @fseek(ptr noundef %0, i64 noundef 8, i32 noundef 0) #33
  %6 = getelementptr inbounds [12 x i8], ptr %4, i64 0, i64 1
  %7 = getelementptr inbounds [12 x i8], ptr %4, i64 0, i64 2
  %8 = getelementptr inbounds [12 x i8], ptr %4, i64 0, i64 3
  %9 = getelementptr inbounds [12 x i8], ptr %4, i64 0, i64 8
  %10 = getelementptr inbounds [12 x i8], ptr %4, i64 0, i64 9
  %11 = getelementptr inbounds [12 x i8], ptr %4, i64 0, i64 10
  %12 = getelementptr inbounds [12 x i8], ptr %4, i64 0, i64 11
  br label %13

13:                                               ; preds = %48, %3
  %14 = call i64 @fread(ptr noundef nonnull %4, i64 noundef 1, i64 noundef 12, ptr noundef %0) #33
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
  %29 = icmp eq i32 %28, 1885432692
  br i1 %29, label %30, label %48

30:                                               ; preds = %13
  %31 = tail call i64 @ftell(ptr noundef %0) #33
  %32 = trunc i64 %31 to i32
  %33 = add i32 %32, 24
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
  store i32 %47, ptr %2, align 4, !tbaa !46
  br label %66

48:                                               ; preds = %13
  %49 = trunc i64 %14 to i32
  %50 = load i8, ptr %9, align 1, !tbaa !37
  %51 = zext i8 %50 to i64
  %52 = shl nuw nsw i64 %51, 24
  %53 = load i8, ptr %10, align 1, !tbaa !37
  %54 = zext i8 %53 to i64
  %55 = shl nuw nsw i64 %54, 16
  %56 = or i64 %55, %52
  %57 = load i8, ptr %11, align 1, !tbaa !37
  %58 = zext i8 %57 to i64
  %59 = shl nuw nsw i64 %58, 8
  %60 = or i64 %56, %59
  %61 = load i8, ptr %12, align 1, !tbaa !37
  %62 = zext i8 %61 to i64
  %63 = or i64 %60, %62
  %64 = tail call i32 @fseek(ptr noundef %0, i64 noundef %63, i32 noundef 1) #33
  %65 = icmp sgt i32 %49, 0
  br i1 %65, label %13, label %66, !llvm.loop !220

66:                                               ; preds = %48, %30
  %67 = call i64 @_wyvern_slice__Z13FindDataStartP8_IO_FILEjPiS1___943854617(ptr %0)
  %68 = tail call i32 @fseek(ptr noundef %0, i64 noundef %67, i32 noundef 0) #33
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #36
  ret i32 0
}

; Function Attrs: mustprogress nofree nounwind optsize uwtable
define internal void @_Z18WriteCAFFcaffChunkP8_IO_FILE(ptr nocapture noundef %0) #29 {
  %2 = alloca [8 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #36
  store i64 1101229613411, ptr %2, align 8
  %3 = call i64 @fwrite(ptr noundef nonnull %2, i64 noundef 1, i64 noundef 8, ptr noundef %0) #33
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #36
  ret void
}

; Function Attrs: mustprogress optsize uwtable
define internal void @_Z18WriteCAFFdescChunkP8_IO_FILE22AudioFormatDescription(ptr nocapture noundef %0, ptr nocapture noundef readonly byval(%struct.AudioFormatDescription) align 8 %1) #12 {
  %3 = alloca %struct.port_CAFAudioDescription, align 8
  %4 = alloca [12 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #36
  %5 = getelementptr inbounds %struct.AudioFormatDescription, ptr %1, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !107
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %4, ptr noundef nonnull align 1 dereferenceable(12) @__const._Z18WriteCAFFdescChunkP8_IO_FILE22AudioFormatDescription.theReadBuffer, i64 11, i1 false)
  %7 = getelementptr inbounds %struct.AudioFormatDescription, ptr %1, i64 0, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !111
  %9 = icmp eq i32 %8, 1819304813
  %10 = select i1 %9, i32 2, i32 %6
  %11 = load double, ptr %1, align 8, !tbaa !104
  %12 = tail call double @SwapFloat64NtoB(double noundef %11) #33
  store double %12, ptr %3, align 8, !tbaa !221
  %13 = tail call i32 @Swap32NtoB(i32 noundef %8) #33
  %14 = getelementptr inbounds %struct.port_CAFAudioDescription, ptr %3, i64 0, i32 1
  store i32 %13, ptr %14, align 8, !tbaa !223
  %15 = tail call i32 @Swap32NtoB(i32 noundef %10) #33
  %16 = getelementptr inbounds %struct.port_CAFAudioDescription, ptr %3, i64 0, i32 2
  store i32 %15, ptr %16, align 4, !tbaa !224
  %17 = getelementptr inbounds %struct.AudioFormatDescription, ptr %1, i64 0, i32 3
  %18 = load i32, ptr %17, align 8, !tbaa !94
  %19 = tail call i32 @Swap32NtoB(i32 noundef %18) #33
  %20 = getelementptr inbounds %struct.port_CAFAudioDescription, ptr %3, i64 0, i32 3
  store i32 %19, ptr %20, align 8, !tbaa !225
  %21 = getelementptr inbounds %struct.AudioFormatDescription, ptr %1, i64 0, i32 4
  %22 = load i32, ptr %21, align 4, !tbaa !205
  %23 = tail call i32 @Swap32NtoB(i32 noundef %22) #33
  %24 = getelementptr inbounds %struct.port_CAFAudioDescription, ptr %3, i64 0, i32 4
  store i32 %23, ptr %24, align 4, !tbaa !226
  %25 = getelementptr inbounds %struct.AudioFormatDescription, ptr %1, i64 0, i32 6
  %26 = load i32, ptr %25, align 4, !tbaa !98
  %27 = tail call i32 @Swap32NtoB(i32 noundef %26) #33
  %28 = getelementptr inbounds %struct.port_CAFAudioDescription, ptr %3, i64 0, i32 5
  store i32 %27, ptr %28, align 8, !tbaa !227
  %29 = getelementptr inbounds %struct.AudioFormatDescription, ptr %1, i64 0, i32 7
  %30 = load i32, ptr %29, align 8, !tbaa !112
  %31 = tail call i32 @Swap32NtoB(i32 noundef %30) #33
  %32 = getelementptr inbounds %struct.port_CAFAudioDescription, ptr %3, i64 0, i32 6
  store i32 %31, ptr %32, align 4, !tbaa !228
  %33 = getelementptr inbounds [12 x i8], ptr %4, i64 0, i64 11
  store i8 32, ptr %33, align 1, !tbaa !37
  %34 = call i64 @fwrite(ptr noundef nonnull %4, i64 noundef 1, i64 noundef 12, ptr noundef %0) #33
  %35 = call i64 @fwrite(ptr noundef nonnull %3, i64 noundef 1, i64 noundef 32, ptr noundef %0) #33
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #36
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #36
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize uwtable
define internal void @_Z18WriteCAFFdataChunkP8_IO_FILE(ptr nocapture noundef %0) #29 {
  %2 = alloca [16 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %2, ptr noundef nonnull align 16 dereferenceable(16) @__const._Z18WriteCAFFdataChunkP8_IO_FILE.theReadBuffer, i64 16, i1 false)
  %3 = call i64 @fwrite(ptr noundef nonnull %2, i64 noundef 1, i64 noundef 16, ptr noundef %0) #33
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #36
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize uwtable
define internal void @_Z18WriteCAFFkukiChunkP8_IO_FILEPvj(ptr nocapture noundef %0, ptr nocapture noundef %1, i32 noundef %2) #29 {
  %4 = alloca [12 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %4, ptr noundef nonnull align 1 dereferenceable(12) @__const._Z18WriteCAFFkukiChunkP8_IO_FILEPvj.thekukiHeaderBuffer, i64 11, i1 false)
  %5 = trunc i32 %2 to i8
  %6 = getelementptr inbounds [12 x i8], ptr %4, i64 0, i64 11
  store i8 %5, ptr %6, align 1, !tbaa !37
  %7 = call i64 @fwrite(ptr noundef nonnull %4, i64 noundef 1, i64 noundef 12, ptr noundef %0) #33
  %8 = zext i32 %2 to i64
  %9 = tail call i64 @fwrite(ptr noundef %1, i64 noundef 1, i64 noundef %8, ptr noundef %0) #33
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #36
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize uwtable
define internal void @_Z18WriteCAFFChunkSizeP8_IO_FILEl(ptr nocapture noundef %0, i64 noundef %1) #29 {
  %3 = alloca [8 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #36
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
  %26 = call i64 @fwrite(ptr noundef nonnull %3, i64 noundef 1, i64 noundef 8, ptr noundef %0) #33
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #36
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize uwtable
define internal void @_Z18WriteCAFFchanChunkP8_IO_FILEj(ptr nocapture noundef %0, i32 noundef %1) #29 {
  %3 = alloca [24 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #36
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
  %16 = call i64 @fwrite(ptr noundef nonnull %3, i64 noundef 1, i64 noundef 24, ptr noundef %0) #33
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #36
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize uwtable
define internal void @_Z18WriteCAFFfreeChunkP8_IO_FILEj(ptr nocapture noundef %0, i32 noundef %1) #29 {
  %3 = alloca [12 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #36
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
  %18 = call i64 @fwrite(ptr noundef nonnull %3, i64 noundef 1, i64 noundef 12, ptr noundef %0) #33
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
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #36
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #27

; Function Attrs: mustprogress optsize uwtable
define internal void @_Z24WriteCAFFpaktChunkHeaderP8_IO_FILEP25port_CAFPacketTableHeaderj(ptr nocapture noundef %0, ptr nocapture noundef %1, i32 noundef %2) #12 {
  %4 = alloca [12 x i8], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #36
  %5 = load i64, ptr %1, align 1, !tbaa !230
  %6 = tail call i64 @Swap64NtoB(i64 noundef %5) #33
  store i64 %6, ptr %1, align 1, !tbaa !230
  %7 = getelementptr inbounds %struct.port_CAFPacketTableHeader, ptr %1, i64 0, i32 1
  %8 = load i64, ptr %7, align 1, !tbaa !233
  %9 = tail call i64 @Swap64NtoB(i64 noundef %8) #33
  store i64 %9, ptr %7, align 1, !tbaa !233
  %10 = getelementptr inbounds %struct.port_CAFPacketTableHeader, ptr %1, i64 0, i32 2
  %11 = load i32, ptr %10, align 1, !tbaa !234
  %12 = tail call i32 @Swap32NtoB(i32 noundef %11) #33
  store i32 %12, ptr %10, align 1, !tbaa !234
  %13 = getelementptr inbounds %struct.port_CAFPacketTableHeader, ptr %1, i64 0, i32 3
  %14 = load i32, ptr %13, align 1, !tbaa !235
  %15 = tail call i32 @Swap32NtoB(i32 noundef %14) #33
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
  %28 = call i64 @fwrite(ptr noundef nonnull %4, i64 noundef 1, i64 noundef 12, ptr noundef %0) #33
  %29 = tail call i64 @fwrite(ptr noundef nonnull %1, i64 noundef 1, i64 noundef 24, ptr noundef %0) #33
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #36
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
  br label %41

8:                                                ; preds = %3
  %9 = icmp ult i32 %0, 16384
  br i1 %9, label %10, label %14

10:                                               ; preds = %8
  store i32 2, ptr %2, align 4, !tbaa !46
  %11 = call i8 @_wyvern_slice__Z13GetBERIntegeriPhPi__114183322(i32 %0)
  store i8 %11, ptr %1, align 1, !tbaa !37
  %12 = trunc i32 %4 to i8
  %13 = getelementptr inbounds i8, ptr %1, i64 1
  store i8 %12, ptr %13, align 1, !tbaa !37
  br label %41

14:                                               ; preds = %8
  %15 = icmp ult i32 %0, 2097152
  br i1 %15, label %16, label %22

16:                                               ; preds = %14
  store i32 3, ptr %2, align 4, !tbaa !46
  %17 = call i8 @_wyvern_slice__Z13GetBERIntegeriPhPi__567907600(i32 %0)
  store i8 %17, ptr %1, align 1, !tbaa !37
  %18 = getelementptr inbounds i8, ptr %1, i64 1
  %19 = call i8 @_wyvern_slice__Z13GetBERIntegeriPhPi__114183322(i32 %0)
  store i8 %19, ptr %18, align 1, !tbaa !37
  %20 = trunc i32 %4 to i8
  %21 = getelementptr inbounds i8, ptr %1, i64 2
  store i8 %20, ptr %21, align 1, !tbaa !37
  br label %41

22:                                               ; preds = %14
  %23 = icmp ult i32 %0, 268435456
  %24 = getelementptr inbounds i8, ptr %1, i64 1
  %25 = getelementptr inbounds i8, ptr %1, i64 2
  %26 = getelementptr inbounds i8, ptr %1, i64 3
  br i1 %23, label %27, label %32

27:                                               ; preds = %22
  store i32 4, ptr %2, align 4, !tbaa !46
  %28 = call i8 @_wyvern_slice__Z13GetBERIntegeriPhPi__287983903(i32 %0)
  store i8 %28, ptr %1, align 1, !tbaa !37
  %29 = call i8 @_wyvern_slice__Z13GetBERIntegeriPhPi__567907600(i32 %0)
  store i8 %29, ptr %24, align 1, !tbaa !37
  %30 = call i8 @_wyvern_slice__Z13GetBERIntegeriPhPi__114183322(i32 %0)
  store i8 %30, ptr %25, align 1, !tbaa !37
  %31 = trunc i32 %4 to i8
  store i8 %31, ptr %26, align 1, !tbaa !37
  br label %41

32:                                               ; preds = %22
  store i32 5, ptr %2, align 4, !tbaa !46
  %33 = ashr i32 %0, 28
  %34 = trunc i32 %33 to i8
  %35 = or i8 %34, -128
  store i8 %35, ptr %1, align 1, !tbaa !37
  %36 = call i8 @_wyvern_slice__Z13GetBERIntegeriPhPi__287983903(i32 %0)
  store i8 %36, ptr %24, align 1, !tbaa !37
  %37 = call i8 @_wyvern_slice__Z13GetBERIntegeriPhPi__567907600(i32 %0)
  store i8 %37, ptr %25, align 1, !tbaa !37
  %38 = call i8 @_wyvern_slice__Z13GetBERIntegeriPhPi__114183322(i32 %0)
  store i8 %38, ptr %26, align 1, !tbaa !37
  %39 = trunc i32 %4 to i8
  %40 = getelementptr inbounds i8, ptr %1, i64 4
  store i8 %39, ptr %40, align 1, !tbaa !37
  br label %41

41:                                               ; preds = %32, %27, %16, %10, %6
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
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #36
  %3 = tail call i32 @fseek(ptr noundef %0, i64 noundef 8, i32 noundef 0) #33
  %4 = getelementptr inbounds [24 x i8], ptr %2, i64 0, i64 1
  %5 = getelementptr inbounds [24 x i8], ptr %2, i64 0, i64 2
  %6 = getelementptr inbounds [24 x i8], ptr %2, i64 0, i64 3
  %7 = getelementptr inbounds [24 x i8], ptr %2, i64 0, i64 8
  %8 = getelementptr inbounds [24 x i8], ptr %2, i64 0, i64 9
  %9 = getelementptr inbounds [24 x i8], ptr %2, i64 0, i64 10
  %10 = getelementptr inbounds [24 x i8], ptr %2, i64 0, i64 11
  br label %11

11:                                               ; preds = %31, %1
  %12 = call i64 @fread(ptr noundef nonnull %2, i64 noundef 1, i64 noundef 12, ptr noundef %0) #33
  %13 = load i8, ptr %2, align 16, !tbaa !37
  %14 = zext i8 %13 to i32
  %15 = shl nuw i32 %14, 24
  %16 = load i8, ptr %4, align 1, !tbaa !37
  %17 = zext i8 %16 to i32
  %18 = shl nuw nsw i32 %17, 16
  %19 = or i32 %18, %15
  %20 = load i8, ptr %5, align 2, !tbaa !37
  %21 = zext i8 %20 to i32
  %22 = shl nuw nsw i32 %21, 8
  %23 = or i32 %19, %22
  %24 = load i8, ptr %6, align 1, !tbaa !37
  %25 = zext i8 %24 to i32
  %26 = or i32 %23, %25
  %27 = icmp eq i32 %26, 1802857321
  br i1 %27, label %28, label %31

28:                                               ; preds = %11
  %29 = load i8, ptr %10, align 1, !tbaa !37
  %30 = zext i8 %29 to i32
  br label %49

31:                                               ; preds = %11
  %32 = trunc i64 %12 to i32
  %33 = load i8, ptr %7, align 8, !tbaa !37
  %34 = zext i8 %33 to i64
  %35 = shl nuw nsw i64 %34, 24
  %36 = load i8, ptr %8, align 1, !tbaa !37
  %37 = zext i8 %36 to i64
  %38 = shl nuw nsw i64 %37, 16
  %39 = or i64 %38, %35
  %40 = load i8, ptr %9, align 2, !tbaa !37
  %41 = zext i8 %40 to i64
  %42 = shl nuw nsw i64 %41, 8
  %43 = or i64 %39, %42
  %44 = load i8, ptr %10, align 1, !tbaa !37
  %45 = zext i8 %44 to i64
  %46 = or i64 %43, %45
  %47 = tail call i32 @fseek(ptr noundef %0, i64 noundef %46, i32 noundef 1) #33
  %48 = icmp sgt i32 %32, 0
  br i1 %48, label %11, label %49, !llvm.loop !237

49:                                               ; preds = %31, %28
  %50 = phi i32 [ %30, %28 ], [ -1, %31 ]
  %51 = call i64 @_wyvern_slice__Z13FindDataStartP8_IO_FILEjPiS1___943854617(ptr %0)
  %52 = tail call i32 @fseek(ptr noundef %0, i64 noundef %51, i32 noundef 0) #33
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #36
  ret i32 %50
}

; Function Attrs: mustprogress nofree nounwind optsize uwtable
define internal noundef i32 @_Z26GetMagicCookieFromCAFFkukiP8_IO_FILEPhPj(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2) #29 {
  %4 = alloca [12 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #36
  %5 = tail call i32 @fseek(ptr noundef %0, i64 noundef 8, i32 noundef 0) #33
  %6 = getelementptr inbounds [12 x i8], ptr %4, i64 0, i64 1
  %7 = getelementptr inbounds [12 x i8], ptr %4, i64 0, i64 2
  %8 = getelementptr inbounds [12 x i8], ptr %4, i64 0, i64 3
  %9 = getelementptr inbounds [12 x i8], ptr %4, i64 0, i64 8
  %10 = getelementptr inbounds [12 x i8], ptr %4, i64 0, i64 9
  %11 = getelementptr inbounds [12 x i8], ptr %4, i64 0, i64 10
  %12 = getelementptr inbounds [12 x i8], ptr %4, i64 0, i64 11
  br label %13

13:                                               ; preds = %41, %3
  %14 = call i64 @fread(ptr noundef nonnull %4, i64 noundef 1, i64 noundef 12, ptr noundef %0) #33
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
  %29 = icmp ne i32 %28, 1802857321
  br i1 %29, label %41, label %30

30:                                               ; preds = %13
  %.lcssa = phi i1 [ %29, %13 ]
  %31 = load i8, ptr %12, align 1, !tbaa !37
  %32 = zext i8 %31 to i32
  %33 = load i32, ptr %2, align 4, !tbaa !46
  %34 = icmp ult i32 %33, %32
  br i1 %34, label %38, label %35

35:                                               ; preds = %30
  %36 = zext i8 %31 to i64
  %37 = tail call i64 @fread(ptr noundef %1, i64 noundef 1, i64 noundef %36, ptr noundef %0) #33
  br label %38

38:                                               ; preds = %35, %30
  %39 = phi i32 [ %32, %35 ], [ 0, %30 ]
  %40 = phi i8 [ 1, %35 ], [ 0, %30 ]
  store i32 %39, ptr %2, align 4, !tbaa !46
  br label %59

41:                                               ; preds = %13
  %42 = trunc i64 %14 to i32
  %43 = load i8, ptr %9, align 1, !tbaa !37
  %44 = zext i8 %43 to i64
  %45 = shl nuw nsw i64 %44, 24
  %46 = load i8, ptr %10, align 1, !tbaa !37
  %47 = zext i8 %46 to i64
  %48 = shl nuw nsw i64 %47, 16
  %49 = or i64 %48, %45
  %50 = load i8, ptr %11, align 1, !tbaa !37
  %51 = zext i8 %50 to i64
  %52 = shl nuw nsw i64 %51, 8
  %53 = or i64 %49, %52
  %54 = load i8, ptr %12, align 1, !tbaa !37
  %55 = zext i8 %54 to i64
  %56 = or i64 %53, %55
  %57 = tail call i32 @fseek(ptr noundef %0, i64 noundef %56, i32 noundef 1) #33
  %58 = icmp sgt i32 %42, 0
  br i1 %58, label %13, label %59, !llvm.loop !238

59:                                               ; preds = %41, %38
  %.lcssa1 = phi i1 [ %29, %41 ], [ %.lcssa, %38 ]
  %60 = phi i8 [ %40, %38 ], [ 0, %41 ]
  %61 = call i64 @_wyvern_slice__Z13FindDataStartP8_IO_FILEjPiS1___943854617(ptr %0)
  %62 = tail call i32 @fseek(ptr noundef %0, i64 noundef %61, i32 noundef 0) #33
  %63 = icmp eq i8 %60, 0
  %64 = or i1 %.lcssa1, %63
  %65 = sext i1 %64 to i32
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #36
  ret i32 %65
}

; Function Attrs: mustprogress nofree nounwind optsize uwtable
define internal noundef zeroext i1 @_Z17FindCAFFDataStartP8_IO_FILEPiS1_(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) #29 {
  %4 = alloca [12 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #36
  %5 = tail call i32 @fseek(ptr noundef %0, i64 noundef 8, i32 noundef 0) #33
  %6 = getelementptr inbounds [12 x i8], ptr %4, i64 0, i64 1
  %7 = getelementptr inbounds [12 x i8], ptr %4, i64 0, i64 2
  %8 = getelementptr inbounds [12 x i8], ptr %4, i64 0, i64 3
  %9 = getelementptr inbounds [12 x i8], ptr %4, i64 0, i64 8
  %10 = getelementptr inbounds [12 x i8], ptr %4, i64 0, i64 9
  %11 = getelementptr inbounds [12 x i8], ptr %4, i64 0, i64 10
  %12 = getelementptr inbounds [12 x i8], ptr %4, i64 0, i64 11
  br label %13

13:                                               ; preds = %49, %3
  %14 = call i64 @fread(ptr noundef nonnull %4, i64 noundef 1, i64 noundef 12, ptr noundef %0) #33
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
  %31 = tail call i64 @ftell(ptr noundef %0) #33
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
  %65 = tail call i32 @fseek(ptr noundef %0, i64 noundef %64, i32 noundef 1) #33
  %66 = icmp slt i32 %50, 1
  br i1 %66, label %67, label %13, !llvm.loop !239

67:                                               ; preds = %49, %30
  %.lcssa1 = phi i1 [ %29, %49 ], [ %.lcssa, %30 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #36
  ret i1 %.lcssa1
}

; Function Attrs: mustprogress optsize uwtable
define internal noundef zeroext i1 @_Z17GetCAFFdescFormatP8_IO_FILEP22AudioFormatDescription(ptr nocapture noundef %0, ptr nocapture noundef %1) #12 {
  %3 = alloca [32 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #36
  %4 = tail call i32 @fseek(ptr noundef %0, i64 noundef 4, i32 noundef 1) #33
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
  %24 = call i64 @fread(ptr noundef nonnull %3, i64 noundef 1, i64 noundef 4, ptr noundef %0) #33
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
  %41 = tail call i32 @fseek(ptr noundef %0, i64 noundef 8, i32 noundef 1) #33
  %42 = call i64 @fread(ptr noundef nonnull %3, i64 noundef 1, i64 noundef 32, ptr noundef %0) #33
  %43 = load i32, ptr %12, align 8, !tbaa !223
  %44 = tail call i32 @Swap32BtoN(i32 noundef %43) #33
  store i32 %44, ptr %13, align 8, !tbaa !111
  %45 = load i32, ptr %14, align 8, !tbaa !227
  %46 = tail call i32 @Swap32BtoN(i32 noundef %45) #33
  store i32 %46, ptr %15, align 4, !tbaa !98
  %47 = load double, ptr %3, align 16, !tbaa !221
  %48 = tail call double @SwapFloat64BtoN(double noundef %47) #33
  store double %48, ptr %1, align 8, !tbaa !104
  %49 = load i32, ptr %16, align 4, !tbaa !228
  %50 = tail call i32 @Swap32BtoN(i32 noundef %49) #33
  store i32 %50, ptr %17, align 8, !tbaa !112
  %51 = load i32, ptr %18, align 4, !tbaa !224
  %52 = tail call i32 @Swap32BtoN(i32 noundef %51) #33
  store i32 %52, ptr %19, align 4, !tbaa !107
  %53 = load i32, ptr %20, align 16, !tbaa !225
  %54 = tail call i32 @Swap32BtoN(i32 noundef %53) #33
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
  %71 = tail call i32 @Swap32BtoN(i32 noundef %70) #33
  store i32 %71, ptr %68, align 4, !tbaa !205
  store i32 0, ptr %67, align 4, !tbaa !206
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #36
  ret i1 true

72:                                               ; preds = %23
  %73 = call i64 @fread(ptr noundef nonnull %3, i64 noundef 1, i64 noundef 8, ptr noundef %0) #33
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
  %88 = tail call i32 @fseek(ptr noundef %0, i64 noundef %87, i32 noundef 1) #33
  br label %23, !llvm.loop !240
}

; Function Attrs: noinline nounwind optsize willreturn
define internal i64 @_wyvern_slice_BitBufferGetPosition__176478853(ptr %0) #31 {
sliceclone_:
  %1 = getelementptr inbounds %struct.BitBuffer, ptr %0, i64 0, i32 3
  %2 = load i32, ptr %1, align 4, !tbaa !24
  %3 = zext i32 %2 to i64
  %4 = sub nsw i64 0, %3
  ret i64 %4
}

; Function Attrs: noinline nounwind optsize willreturn
define internal i1 @_wyvern_slice__ZN11ALACDecoder6DecodeEP9BitBufferPhjjPj__743864763(ptr %0, ptr %1, ptr %2) #31 {
sliceclone_:
  %3 = call i1 @_wyvern_slice__wyvern_slice__ZN11ALACDecoder6DecodeEP9BitBufferPhjjPj__585141188__457114483(ptr %0, ptr %1)
  %4 = icmp ne ptr %2, null
  %5 = and i1 %3, %4
  ret i1 %5
}

; Function Attrs: noinline nounwind optsize willreturn
define internal i1 @_wyvern_slice__ZN11ALACDecoder6DecodeEP9BitBufferPhjjPj__585141188(ptr %0, ptr %1) #31 {
sliceclone_:
  %2 = call i1 @_wyvern_slice__wyvern_slice__ZN11ALACDecoder6DecodeEP9BitBufferPhjjPj__585141188__457114483(ptr %0, ptr %1)
  ret i1 %2
}

; Function Attrs: noinline nounwind optsize willreturn
define internal i32 @_wyvern_slice__ZN11ALACDecoder6DecodeEP9BitBufferPhjjPj__756946435(ptr %0) #31 {
sliceclone_:
  %1 = call zeroext i8 @BitBufferReadSmall(ptr noundef nonnull %0, i8 noundef zeroext 4) #33
  %2 = zext i8 %1 to i32
  %3 = shl nuw i32 1, %2
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize willreturn
define internal i32 @_wyvern_slice__ZN11ALACDecoder6DecodeEP9BitBufferPhjjPj__366761776(ptr %0) #31 {
sliceclone_:
  %1 = call i32 @BitBufferRead(ptr noundef nonnull %0, i8 noundef zeroext 16) #33
  %2 = shl i32 %1, 16
  %3 = call i32 @BitBufferRead(ptr noundef nonnull %0, i8 noundef zeroext 16) #33
  %4 = or i32 %2, %3
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize willreturn
define internal i32 @_wyvern_slice_mix20__319437883(ptr %0) #31 {
sliceclone_:
  %1 = getelementptr i8, ptr %0, i64 4
  %2 = load i16, ptr %1, align 1
  %3 = zext i16 %2 to i32
  %4 = shl nuw i32 %3, 16
  ret i32 %4
}

; Function Attrs: nounwind optsize willreturn
define internal i32 @_wyvern_slice_mix24__281637637(ptr %0) #32 {
sliceclone_:
  %1 = getelementptr i8, ptr %0, i64 1
  %2 = load i16, ptr %1, align 1
  %3 = zext i16 %2 to i32
  %4 = shl nuw nsw i32 %3, 8
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize willreturn
define internal i32 @_wyvern_slice_mix24__513165491(ptr %0) #31 {
sliceclone_:
  %1 = call i32 @_wyvern_slice_mix24__281637637(ptr %0)
  %2 = load i8, ptr %0, align 1, !tbaa !16
  %3 = zext i8 %2 to i32
  %4 = or i32 %1, %3
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize willreturn
define internal i32 @_wyvern_slice_mix24__286254249(ptr %0) #31 {
sliceclone_:
  %1 = getelementptr i8, ptr %0, i64 4
  %2 = load i16, ptr %1, align 1
  %3 = zext i16 %2 to i32
  %4 = shl nuw nsw i32 %3, 8
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize willreturn
define internal i1 @_wyvern_slice_pc_block__78160949(ptr %0, ptr %1, i32 %2) #31 {
sliceclone_:
  %3 = icmp slt i32 %2, 2
  %4 = icmp eq ptr %0, %1
  %5 = or i1 %4, %3
  ret i1 %5
}

; Function Attrs: noinline nounwind optsize willreturn
define internal i64 @_wyvern_slice_pc_block__226469947(i32 %0) #31 {
sliceclone_:
  %1 = add nsw i32 %0, -1
  %2 = zext i32 %1 to i64
  %3 = shl nuw nsw i64 %2, 2
  ret i64 %3
}

; Function Attrs: noinline nounwind optsize willreturn
define internal i32 @_wyvern_slice_pc_block__157004559(ptr %0, i64 %1) #31 {
sliceclone_:
  %2 = getelementptr inbounds i32, ptr %0, i64 %1
  %3 = load i32, ptr %2, align 4, !tbaa !17
  %4 = add nsw i64 %1, -1
  %5 = getelementptr inbounds i32, ptr %0, i64 %4
  %6 = load i32, ptr %5, align 4, !tbaa !17
  %7 = sub nsw i32 %3, %6
  ret i32 %7
}

; Function Attrs: noinline nounwind optsize willreturn
define internal i32 @_wyvern_slice_unmix20__711190675(ptr %0, i64 %1) #31 {
sliceclone_:
  %2 = getelementptr inbounds i32, ptr %0, i64 %1
  %3 = load i32, ptr %2, align 4, !tbaa !17
  %4 = shl i32 %3, 4
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize willreturn
define internal i32 @_wyvern_slice_copyPredictorTo24Shift__343123531(ptr %0, i32 %1, i64 %2) #31 {
sliceclone_:
  %3 = shl nsw i32 %1, 3
  %4 = getelementptr inbounds i32, ptr %0, i64 %2
  %5 = load i32, ptr %4, align 4, !tbaa !17
  %6 = shl i32 %5, %3
  ret i32 %6
}

; Function Attrs: nounwind optsize willreturn
define internal i32 @_wyvern_slice_copy20ToPredictor__393814559(ptr %0) #32 {
sliceclone_:
  %1 = getelementptr i8, ptr %0, i64 1
  %2 = load i16, ptr %1, align 1
  %3 = zext i16 %2 to i32
  %4 = shl nuw i32 %3, 16
  ret i32 %4
}

; Function Attrs: nounwind optsize willreturn
define internal i32 @_wyvern_slice_copy20ToPredictor__77709997(ptr %0) #32 {
sliceclone_:
  %1 = load i8, ptr %0, align 1, !tbaa !16
  %2 = zext i8 %1 to i32
  %3 = shl nuw nsw i32 %2, 8
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize willreturn
define internal i32 @_wyvern_slice_copy20ToPredictor__815256890(ptr %0) #31 {
sliceclone_:
  %1 = call i32 @_wyvern_slice_copy20ToPredictor__393814559(ptr %0)
  %2 = call i32 @_wyvern_slice_copy20ToPredictor__77709997(ptr %0)
  %3 = or i32 %1, %2
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize willreturn
define internal i64 @_wyvern_slice__Z13FindDataStartP8_IO_FILEjPiS1___943854617(ptr %0) #31 {
sliceclone_:
  %1 = tail call i64 @ftell(ptr noundef %0) #33
  %2 = shl i64 %1, 32
  %3 = ashr exact i64 %2, 32
  ret i64 %3
}

; Function Attrs: noinline nounwind optsize willreturn
define internal i8 @_wyvern_slice__Z13GetBERIntegeriPhPi__567907600(i32 %0) #31 {
sliceclone_:
  %1 = lshr i32 %0, 14
  %2 = trunc i32 %1 to i8
  %3 = or i8 %2, -128
  ret i8 %3
}

; Function Attrs: noinline nounwind optsize willreturn
define internal i8 @_wyvern_slice__Z13GetBERIntegeriPhPi__287983903(i32 %0) #31 {
sliceclone_:
  %1 = lshr i32 %0, 21
  %2 = trunc i32 %1 to i8
  %3 = or i8 %2, -128
  ret i8 %3
}

; Function Attrs: noinline nounwind optsize willreturn
define internal i8 @_wyvern_slice__Z13GetBERIntegeriPhPi__114183322(i32 %0) #31 {
sliceclone_:
  %1 = lshr i32 %0, 7
  %2 = trunc i32 %1 to i8
  %3 = or i8 %2, -128
  ret i8 %3
}

; Function Attrs: noinline nounwind optsize willreturn
define internal i1 @_wyvern_slice__wyvern_slice__ZN11ALACDecoder6DecodeEP9BitBufferPhjjPj__585141188__457114483(ptr %0, ptr %1) #31 {
sliceclone_sliceclone_:
  %2 = icmp ne ptr %0, null
  %3 = icmp ne ptr %1, null
  %4 = and i1 %2, %3
  ret i1 %4
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
attributes #31 = { noinline nounwind optsize willreturn "Daedalus"="1" }
attributes #32 = { nounwind optsize willreturn "Daedalus"="1" }
attributes #33 = { optsize }
attributes #34 = { nounwind optsize }
attributes #35 = { nounwind optsize allocsize(0,1) }
attributes #36 = { nounwind }
attributes #37 = { builtin nounwind optsize }
attributes #38 = { nounwind optsize willreturn memory(read) }
attributes #39 = { cold optsize }
attributes #40 = { noreturn nounwind optsize }
attributes #41 = { cold }
attributes #42 = { builtin optsize allocsize(0) }

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
