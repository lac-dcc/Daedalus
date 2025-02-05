; ModuleID = 'fhourstones3.1.e.bc.ll'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hashentry = type { i64 }

@nplies = internal unnamed_addr global i32 0, align 4
@color = internal unnamed_addr global [2 x i64] zeroinitializer, align 16
@height = internal unnamed_addr global [7 x i8] zeroinitializer, align 4
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@moves = internal unnamed_addr global [42 x i32] zeroinitializer, align 16
@ht = internal unnamed_addr global ptr null, align 8
@posed = internal unnamed_addr global i64 0, align 8
@.str.1 = private unnamed_addr constant [45 x i8] c"- %5.3f  < %5.3f  = %5.3f  > %5.3f  + %5.3f\0A\00", align 1
@millisecs.Time = internal unnamed_addr global i64 0, align 8
@history = internal unnamed_addr global [2 x [49 x i32]] zeroinitializer, align 16
@nodes = internal unnamed_addr global i64 0, align 8
@.str.2 = private unnamed_addr constant [6 x i8] c"%c%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"#-<=>+\00", align 1
@msecs = internal unnamed_addr global i64 0, align 8
@.str.4 = private unnamed_addr constant [20 x i8] c"Fhourstones 3.1 (C)\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"Boardsize = %dx%d\0A\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"Using %d transposition table entries.\0A\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"\0ASolving %d-ply position after \00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c" . . .\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"score = %d (%c)  work = %d\0A\00", align 1

; Function Attrs: nofree nounwind optsize uwtable
define dso_local i32 @main() #0 {
  %1 = alloca [8 x i32], align 16
  %2 = tail call noalias dereferenceable_or_null(66448552) ptr @calloc(i64 noundef 8306069, i64 noundef 8) #7
  store ptr %2, ptr @ht, align 8, !tbaa !7
  %3 = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) @.str.4) #8
  %4 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, i32 noundef 7, i32 noundef 6) #8
  %5 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, i32 noundef 8306069) #8
  %6 = getelementptr inbounds [8 x i32], ptr %1, i64 0, i64 1
  %7 = getelementptr inbounds [8 x i32], ptr %1, i64 0, i64 2
  %8 = getelementptr inbounds [8 x i32], ptr %1, i64 0, i64 3
  %9 = getelementptr inbounds [8 x i32], ptr %1, i64 0, i64 4
  %10 = getelementptr inbounds [8 x i32], ptr %1, i64 0, i64 5
  br label %11

11:                                               ; preds = %187, %0
  store i32 0, ptr @nplies, align 4, !tbaa !11
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) @color, i8 0, i64 16, i1 false)
  store <4 x i8> <i8 0, i8 7, i8 14, i8 21>, ptr @height, align 4, !tbaa !13
  store i8 28, ptr getelementptr inbounds ([7 x i8], ptr @height, i64 0, i64 4), align 4, !tbaa !13
  store i8 35, ptr getelementptr inbounds ([7 x i8], ptr @height, i64 0, i64 5), align 1, !tbaa !13
  store i8 42, ptr getelementptr inbounds ([7 x i8], ptr @height, i64 0, i64 6), align 2, !tbaa !13
  br label %12

12:                                               ; preds = %37, %11
  %13 = tail call i32 @getchar() #8
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %188, label %15

15:                                               ; preds = %12
  %16 = add i32 %13, -49
  %17 = icmp ult i32 %16, 7
  br i1 %17, label %18, label %35

18:                                               ; preds = %15
  %19 = zext i32 %16 to i64
  %20 = getelementptr inbounds [7 x i8], ptr @height, i64 0, i64 %19
  %21 = load i8, ptr %20, align 1, !tbaa !13
  %22 = add i8 %21, 1
  store i8 %22, ptr %20, align 1, !tbaa !13
  %23 = sext i8 %21 to i64
  %24 = and i64 %23, 4294967295
  %25 = shl nuw i64 1, %24
  %26 = load i32, ptr @nplies, align 4, !tbaa !11
  %27 = and i32 %26, 1
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds [2 x i64], ptr @color, i64 0, i64 %28
  %30 = load i64, ptr %29, align 8, !tbaa !14
  %31 = xor i64 %30, %25
  store i64 %31, ptr %29, align 8, !tbaa !14
  %32 = add nsw i32 %26, 1
  store i32 %32, ptr @nplies, align 4, !tbaa !11
  %33 = sext i32 %26 to i64
  %34 = getelementptr inbounds [42 x i32], ptr @moves, i64 0, i64 %33
  store i32 %16, ptr %34, align 4, !tbaa !11
  br label %37

35:                                               ; preds = %15
  %36 = icmp eq i32 %13, 10
  br i1 %36, label %38, label %37

37:                                               ; preds = %35, %18
  br label %12, !llvm.loop !16

38:                                               ; preds = %35
  %39 = load i32, ptr @nplies, align 4, !tbaa !11
  %40 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %39) #8
  tail call fastcc void @printMoves() #8
  %41 = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) @.str.8) #8
  %42 = load ptr, ptr @ht, align 8, !tbaa !7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(66448552) %42, i8 0, i64 66448552, i1 false)
  store i64 0, ptr @posed, align 8, !tbaa !14
  %43 = load i32, ptr @nplies, align 4, !tbaa !11
  %44 = and i32 %43, 1
  %45 = xor i32 %44, 1
  store i64 0, ptr @nodes, align 8, !tbaa !14
  store i64 1, ptr @msecs, align 8, !tbaa !14
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds [2 x i64], ptr @color, i64 0, i64 %46
  %48 = load i64, ptr %47, align 8, !tbaa !14
  %49 = tail call fastcc i32 @haswon(i64 noundef %48) #8, !range !18
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %127

51:                                               ; preds = %38
  %52 = zext i32 %44 to i64
  %53 = getelementptr inbounds [2 x i64], ptr @color, i64 0, i64 %52
  %54 = load i64, ptr %53, align 8, !tbaa !14
  br label %55

55:                                               ; preds = %68, %51
  %56 = phi i64 [ 0, %51 ], [ %69, %68 ]
  %57 = getelementptr inbounds [7 x i8], ptr @height, i64 0, i64 %56
  %58 = load i8, ptr %57, align 1, !tbaa !13
  %59 = sext i8 %58 to i64
  %60 = and i64 %59, 4294967295
  %61 = shl nuw i64 1, %60
  %62 = or i64 %61, %54
  %63 = and i64 %62, 283691315109952
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %55
  %66 = tail call fastcc i32 @haswon(i64 noundef %62) #8, !range !18
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %127

68:                                               ; preds = %65, %55
  %69 = add nuw nsw i64 %56, 1
  %70 = icmp eq i64 %69, 7
  br i1 %70, label %71, label %55, !llvm.loop !19

71:                                               ; preds = %110, %68
  %72 = phi i1 [ false, %110 ], [ true, %68 ]
  %73 = phi i64 [ 1, %110 ], [ 0, %68 ]
  br label %74

74:                                               ; preds = %107, %71
  %75 = phi i64 [ 0, %71 ], [ %108, %107 ]
  %76 = add nuw nsw i64 %75, 4
  %77 = add nuw nsw i64 %75, 4294967293
  %78 = sub nuw nsw i64 6, %75
  %79 = mul nuw nsw i64 %78, 7
  %80 = mul nuw nsw i64 %75, 7
  %81 = add nuw nsw i64 %80, 5
  %82 = add nuw nsw i64 %79, 5
  %83 = trunc i64 %75 to i32
  br label %84

84:                                               ; preds = %84, %74
  %85 = phi i64 [ 0, %74 ], [ %104, %84 ]
  %86 = phi i64 [ 0, %74 ], [ %105, %84 ]
  %87 = add nuw nsw i64 %77, %85
  %88 = trunc i64 %87 to i32
  %89 = tail call i32 @llvm.smax.i32(i32 %88, i32 -1)
  %90 = trunc i64 %85 to i32
  %91 = tail call i32 @llvm.smin.i32(i32 %83, i32 %90)
  %92 = add nuw nsw i64 %76, %85
  %93 = trunc i64 %92 to i32
  %94 = add i32 %91, %93
  %95 = add i32 %94, %89
  %96 = add nuw nsw i64 %85, %79
  %97 = getelementptr inbounds [2 x [49 x i32]], ptr @history, i64 0, i64 %73, i64 %96
  store i32 %95, ptr %97, align 4, !tbaa !11
  %98 = add nsw i64 %81, %86
  %99 = getelementptr inbounds [2 x [49 x i32]], ptr @history, i64 0, i64 %73, i64 %98
  store i32 %95, ptr %99, align 4, !tbaa !11
  %100 = add nsw i64 %82, %86
  %101 = getelementptr inbounds [2 x [49 x i32]], ptr @history, i64 0, i64 %73, i64 %100
  store i32 %95, ptr %101, align 4, !tbaa !11
  %102 = add nuw nsw i64 %85, %80
  %103 = getelementptr inbounds [2 x [49 x i32]], ptr @history, i64 0, i64 %73, i64 %102
  store i32 %95, ptr %103, align 4, !tbaa !11
  %104 = add nuw nsw i64 %85, 1
  %105 = add nsw i64 %86, -1
  %106 = icmp eq i64 %104, 3
  br i1 %106, label %107, label %84, !llvm.loop !20

107:                                              ; preds = %84
  %108 = add nuw nsw i64 %75, 1
  %109 = icmp eq i64 %108, 4
  br i1 %109, label %110, label %74, !llvm.loop !21

110:                                              ; preds = %107
  br i1 %72, label %71, label %111, !llvm.loop !22

111:                                              ; preds = %110
  %112 = load i64, ptr @millisecs.Time, align 8, !tbaa !14
  %113 = add nsw i64 %112, 1
  store i64 %113, ptr @millisecs.Time, align 8, !tbaa !14
  store i64 %112, ptr @msecs, align 8, !tbaa !14
  %114 = tail call fastcc i32 @ab(i32 noundef 1, i32 noundef 5) #8, !range !23
  %115 = load i64, ptr @millisecs.Time, align 8, !tbaa !14
  %116 = add i64 %115, 1
  store i64 %116, ptr @millisecs.Time, align 8, !tbaa !14
  %117 = load i64, ptr @msecs, align 8, !tbaa !14
  %118 = sub i64 %116, %117
  store i64 %118, ptr @msecs, align 8, !tbaa !14
  %119 = load i64, ptr @posed, align 8, !tbaa !14
  %120 = icmp ult i64 %119, 2
  br i1 %120, label %127, label %121

121:                                              ; preds = %121, %111
  %122 = phi i64 [ %124, %121 ], [ %119, %111 ]
  %123 = phi i32 [ %125, %121 ], [ 0, %111 ]
  %124 = lshr i64 %122, 1
  %125 = add nuw nsw i32 %123, 1
  %126 = icmp ult i64 %122, 4
  br i1 %126, label %127, label %121, !llvm.loop !24

127:                                              ; preds = %121, %111, %65, %38
  %128 = phi i32 [ %114, %111 ], [ 1, %38 ], [ %114, %121 ], [ 5, %65 ]
  %129 = phi i32 [ 0, %111 ], [ 0, %38 ], [ %125, %121 ], [ 0, %65 ]
  %130 = sext i32 %128 to i64
  %131 = getelementptr inbounds [7 x i8], ptr @.str.3, i64 0, i64 %130
  %132 = load i8, ptr %131, align 1, !tbaa !13
  %133 = sext i8 %132 to i32
  %134 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, i32 noundef %128, i32 noundef %133, i32 noundef %129) #8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %1) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %1, i8 0, i64 32, i1 false), !tbaa !11
  %135 = load ptr, ptr @ht, align 8, !tbaa !7
  br label %136

136:                                              ; preds = %156, %127
  %137 = phi i64 [ 0, %127 ], [ %157, %156 ]
  %138 = getelementptr inbounds %struct.hashentry, ptr %135, i64 %137
  %139 = load i64, ptr %138, align 4, !tbaa.struct !25
  %140 = and i64 %139, 67108863
  %141 = icmp eq i64 %140, 0
  br i1 %141, label %147, label %142

142:                                              ; preds = %136
  %143 = lshr i64 %139, 61
  %144 = getelementptr inbounds [8 x i32], ptr %1, i64 0, i64 %143
  %145 = load i32, ptr %144, align 4, !tbaa !11
  %146 = add nsw i32 %145, 1
  store i32 %146, ptr %144, align 4, !tbaa !11
  br label %147

147:                                              ; preds = %142, %136
  %148 = and i64 %139, 288230371856744448
  %149 = icmp eq i64 %148, 0
  br i1 %149, label %156, label %150

150:                                              ; preds = %147
  %151 = lshr i64 %139, 58
  %152 = and i64 %151, 7
  %153 = getelementptr inbounds [8 x i32], ptr %1, i64 0, i64 %152
  %154 = load i32, ptr %153, align 4, !tbaa !11
  %155 = add nsw i32 %154, 1
  store i32 %155, ptr %153, align 4, !tbaa !11
  br label %156

156:                                              ; preds = %150, %147
  %157 = add nuw nsw i64 %137, 1
  %158 = icmp eq i64 %157, 8306069
  br i1 %158, label %159, label %136, !llvm.loop !26

159:                                              ; preds = %159, %156
  %160 = phi i64 [ %165, %159 ], [ 1, %156 ]
  %161 = phi i32 [ %164, %159 ], [ 0, %156 ]
  %162 = getelementptr inbounds [8 x i32], ptr %1, i64 0, i64 %160
  %163 = load i32, ptr %162, align 4, !tbaa !11
  %164 = add nsw i32 %163, %161
  %165 = add nuw nsw i64 %160, 1
  %166 = icmp eq i64 %165, 6
  br i1 %166, label %167, label %159, !llvm.loop !27

167:                                              ; preds = %159
  %.lcssa = phi i32 [ %164, %159 ]
  %168 = icmp sgt i32 %.lcssa, 0
  br i1 %168, label %169, label %187

169:                                              ; preds = %167
  %170 = load i32, ptr %6, align 4, !tbaa !11
  %171 = sitofp i32 %170 to double
  %172 = sitofp i32 %.lcssa to double
  %173 = fdiv double %171, %172
  %174 = load i32, ptr %7, align 8, !tbaa !11
  %175 = sitofp i32 %174 to double
  %176 = fdiv double %175, %172
  %177 = load i32, ptr %8, align 4, !tbaa !11
  %178 = sitofp i32 %177 to double
  %179 = fdiv double %178, %172
  %180 = load i32, ptr %9, align 16, !tbaa !11
  %181 = sitofp i32 %180 to double
  %182 = fdiv double %181, %172
  %183 = load i32, ptr %10, align 4, !tbaa !11
  %184 = sitofp i32 %183 to double
  %185 = fdiv double %184, %172
  %186 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %173, double noundef %176, double noundef %179, double noundef %182, double noundef %185) #8
  br label %187

187:                                              ; preds = %169, %167
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %1) #9
  br label %11

188:                                              ; preds = %12
  ret i32 0
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind optsize
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: nofree nounwind optsize
declare noundef i32 @getchar() local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize uwtable
define internal fastcc void @printMoves() unnamed_addr #0 {
  %1 = load i32, ptr @nplies, align 4, !tbaa !11
  %2 = icmp sgt i32 %1, 0
  br i1 %2, label %3, label %13

3:                                                ; preds = %3, %0
  %4 = phi i64 [ %9, %3 ], [ 0, %0 ]
  %5 = getelementptr inbounds [42 x i32], ptr @moves, i64 0, i64 %4
  %6 = load i32, ptr %5, align 4, !tbaa !11
  %7 = add nsw i32 %6, 1
  %8 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %7) #8
  %9 = add nuw nsw i64 %4, 1
  %10 = load i32, ptr @nplies, align 4, !tbaa !11
  %11 = sext i32 %10 to i64
  %12 = icmp slt i64 %9, %11
  br i1 %12, label %3, label %13, !llvm.loop !28

13:                                               ; preds = %3, %0
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @haswon(i64 noundef %0) unnamed_addr #4 {
  %2 = lshr i64 %0, 6
  %3 = and i64 %2, %0
  %4 = lshr i64 %3, 12
  %5 = and i64 %4, %3
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %26

7:                                                ; preds = %1
  %8 = lshr i64 %0, 7
  %9 = and i64 %8, %0
  %10 = lshr i64 %9, 14
  %11 = and i64 %10, %9
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %26

13:                                               ; preds = %7
  %14 = lshr i64 %0, 8
  %15 = and i64 %14, %0
  %16 = lshr i64 %15, 16
  %17 = and i64 %16, %15
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %13
  %20 = lshr i64 %0, 1
  %21 = and i64 %20, %0
  %22 = lshr i64 %21, 2
  %23 = and i64 %22, %21
  %24 = icmp ne i64 %23, 0
  %25 = zext i1 %24 to i32
  br label %26

26:                                               ; preds = %19, %13, %7, %1
  %27 = phi i32 [ %25, %19 ], [ 1, %1 ], [ 1, %7 ], [ 1, %13 ]
  ret i32 %27
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nofree nounwind optsize uwtable
define internal fastcc i32 @ab(i32 noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca [7 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %3) #9
  %4 = load i64, ptr @nodes, align 8, !tbaa !14
  %5 = add i64 %4, 1
  store i64 %5, ptr @nodes, align 8, !tbaa !14
  %6 = load i32, ptr @nplies, align 4, !tbaa !11
  %7 = icmp eq i32 %6, 41
  br i1 %7, label %359, label %8

8:                                                ; preds = %2
  %9 = and i32 %6, 1
  %10 = xor i32 %9, 1
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds [2 x i64], ptr @color, i64 0, i64 %11
  %13 = load i64, ptr %12, align 8, !tbaa !14
  br label %14

14:                                               ; preds = %66, %8
  %15 = phi i64 [ 0, %8 ], [ %68, %66 ]
  %16 = phi i32 [ 0, %8 ], [ %67, %66 ]
  %17 = getelementptr inbounds [7 x i8], ptr @height, i64 0, i64 %15
  %18 = load i8, ptr %17, align 1, !tbaa !13
  %19 = sext i8 %18 to i64
  %20 = and i64 %19, 4294967295
  %21 = shl nuw i64 1, %20
  %22 = or i64 %21, %13
  %23 = and i64 %22, 283691315109952
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %66

25:                                               ; preds = %14
  %26 = shl i64 2, %20
  %27 = or i64 %26, %13
  %28 = and i64 %27, 283691315109952
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = tail call fastcc i32 @haswon(i64 noundef %27) #8, !range !18
  %32 = tail call fastcc i32 @haswon(i64 noundef %22) #8, !range !18
  %33 = icmp eq i32 %32, 0
  %34 = icmp eq i32 %31, 0
  br i1 %33, label %60, label %38

35:                                               ; preds = %25
  %36 = tail call fastcc i32 @haswon(i64 noundef %22) #8, !range !18
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %61, label %39

38:                                               ; preds = %30
  %.lcssa8 = phi i64 [ %15, %30 ]
  %.lcssa6 = phi i1 [ %34, %30 ]
  br i1 %.lcssa6, label %39, label %359

39:                                               ; preds = %38, %35
  %.lcssa7 = phi i64 [ %.lcssa8, %38 ], [ %15, %35 ]
  %40 = trunc i64 %.lcssa7 to i32
  %41 = and i64 %.lcssa7, 4294967295
  br label %42

42:                                               ; preds = %57, %39
  %43 = phi i64 [ %46, %57 ], [ %41, %39 ]
  %44 = icmp eq i64 %43, 6
  br i1 %44, label %74, label %45

45:                                               ; preds = %42
  %46 = add nuw nsw i64 %43, 1
  %47 = getelementptr inbounds [7 x i8], ptr @height, i64 0, i64 %46
  %48 = load i8, ptr %47, align 1, !tbaa !13
  %49 = sext i8 %48 to i64
  %50 = and i64 %49, 4294967295
  %51 = shl nuw i64 1, %50
  %52 = or i64 %51, %13
  %53 = and i64 %52, 283691315109952
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %45
  %56 = tail call fastcc i32 @haswon(i64 noundef %52) #8, !range !18
  br label %57

57:                                               ; preds = %55, %45
  %58 = phi i32 [ 0, %45 ], [ %56, %55 ]
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %42, label %359, !llvm.loop !29

60:                                               ; preds = %30
  br i1 %34, label %61, label %66

61:                                               ; preds = %60, %35
  %62 = add nsw i32 %16, 1
  %63 = sext i32 %16 to i64
  %64 = getelementptr inbounds [7 x i32], ptr %3, i64 0, i64 %63
  %65 = trunc i64 %15 to i32
  store i32 %65, ptr %64, align 4, !tbaa !11
  br label %66

66:                                               ; preds = %61, %60, %14
  %67 = phi i32 [ %16, %60 ], [ %62, %61 ], [ %16, %14 ]
  %68 = add nuw nsw i64 %15, 1
  %69 = icmp eq i64 %68, 7
  br i1 %69, label %70, label %14, !llvm.loop !30

70:                                               ; preds = %66
  %.lcssa10 = phi i32 [ %67, %66 ]
  %71 = icmp eq i32 %.lcssa10, 0
  br i1 %71, label %359, label %72

72:                                               ; preds = %70
  %73 = icmp eq i32 %6, 40
  br i1 %73, label %359, label %76

74:                                               ; preds = %42
  %75 = icmp eq i32 %6, 40
  br i1 %75, label %359, label %80

76:                                               ; preds = %72
  %77 = icmp eq i32 %.lcssa10, 1
  br i1 %77, label %78, label %117

78:                                               ; preds = %76
  %79 = load i32, ptr %3, align 16, !tbaa !11
  br label %80

80:                                               ; preds = %78, %74
  %81 = phi i32 [ %79, %78 ], [ %40, %74 ]
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [7 x i8], ptr @height, i64 0, i64 %82
  %84 = load i8, ptr %83, align 1, !tbaa !13
  %85 = add i8 %84, 1
  store i8 %85, ptr %83, align 1, !tbaa !13
  %86 = sext i8 %84 to i64
  %87 = and i64 %86, 4294967295
  %88 = shl nuw i64 1, %87
  %89 = zext i32 %9 to i64
  %90 = getelementptr inbounds [2 x i64], ptr @color, i64 0, i64 %89
  %91 = load i64, ptr %90, align 8, !tbaa !14
  %92 = xor i64 %88, %91
  store i64 %92, ptr %90, align 8, !tbaa !14
  %93 = add nsw i32 %6, 1
  store i32 %93, ptr @nplies, align 4, !tbaa !11
  %94 = sext i32 %6 to i64
  %95 = getelementptr inbounds [42 x i32], ptr @moves, i64 0, i64 %94
  store i32 %81, ptr %95, align 4, !tbaa !11
  %96 = sub nsw i32 6, %1
  %97 = sub nsw i32 6, %0
  %98 = tail call fastcc i32 @ab(i32 noundef %96, i32 noundef %97) #8, !range !23
  %99 = sub nsw i32 6, %98
  %100 = load i32, ptr @nplies, align 4, !tbaa !11
  %101 = add nsw i32 %100, -1
  store i32 %101, ptr @nplies, align 4, !tbaa !11
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds [42 x i32], ptr @moves, i64 0, i64 %102
  %104 = load i32, ptr %103, align 4, !tbaa !11
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds [7 x i8], ptr @height, i64 0, i64 %105
  %107 = load i8, ptr %106, align 1, !tbaa !13
  %108 = add i8 %107, -1
  store i8 %108, ptr %106, align 1, !tbaa !13
  %109 = sext i8 %108 to i64
  %110 = and i64 %109, 4294967295
  %111 = shl nuw i64 1, %110
  %112 = and i32 %101, 1
  %113 = zext i32 %112 to i64
  %114 = getelementptr inbounds [2 x i64], ptr @color, i64 0, i64 %113
  %115 = load i64, ptr %114, align 8, !tbaa !14
  %116 = xor i64 %111, %115
  store i64 %116, ptr %114, align 8, !tbaa !14
  br label %359

117:                                              ; preds = %76
  %118 = zext i32 %9 to i64
  %119 = getelementptr inbounds [2 x i64], ptr @color, i64 0, i64 %118
  %120 = load i64, ptr %119, align 8, !tbaa !14
  %121 = load i64, ptr @color, align 16, !tbaa !14
  %122 = load i64, ptr getelementptr inbounds ([2 x i64], ptr @color, i64 0, i64 1), align 8, !tbaa !14
  %123 = add i64 %120, 4432676798593
  %124 = add i64 %123, %121
  %125 = add i64 %124, %122
  %126 = icmp slt i32 %6, 10
  br i1 %126, label %127, label %140

127:                                              ; preds = %117
  %128 = icmp eq i64 %125, 0
  br i1 %128, label %137, label %129

129:                                              ; preds = %129, %127
  %130 = phi i64 [ %134, %129 ], [ 0, %127 ]
  %131 = phi i64 [ %135, %129 ], [ %125, %127 ]
  %132 = shl i64 %130, 7
  %133 = and i64 %131, 127
  %134 = or i64 %133, %132
  %135 = lshr i64 %131, 7
  %136 = icmp ult i64 %131, 128
  br i1 %136, label %137, label %129, !llvm.loop !31

137:                                              ; preds = %129, %127
  %138 = phi i64 [ 0, %127 ], [ %134, %129 ]
  %139 = tail call i64 @llvm.umin.i64(i64 %138, i64 %125)
  br label %140

140:                                              ; preds = %137, %117
  %141 = phi i64 [ %139, %137 ], [ %125, %117 ]
  %142 = lshr i64 %141, 23
  %143 = trunc i64 %142 to i32
  %144 = urem i64 %141, 8306069
  %145 = load ptr, ptr @ht, align 8, !tbaa !7
  %146 = getelementptr inbounds %struct.hashentry, ptr %145, i64 %144
  %147 = load i64, ptr %146, align 4, !tbaa.struct !25
  %148 = trunc i64 %147 to i32
  %149 = and i32 %148, 67108863
  %150 = icmp eq i32 %149, %143
  br i1 %150, label %151, label %154

151:                                              ; preds = %140
  %152 = lshr i64 %147, 61
  %153 = trunc i64 %152 to i32
  br label %163

154:                                              ; preds = %140
  %155 = lshr i64 %147, 32
  %156 = trunc i64 %155 to i32
  %157 = and i32 %156, 67108863
  %158 = icmp eq i32 %157, %143
  br i1 %158, label %159, label %169

159:                                              ; preds = %154
  %160 = lshr i64 %147, 58
  %161 = trunc i64 %160 to i32
  %162 = and i32 %161, 7
  br label %163

163:                                              ; preds = %159, %151
  %164 = phi i32 [ %153, %151 ], [ %162, %159 ]
  switch i32 %164, label %359 [
    i32 0, label %169
    i32 2, label %165
    i32 4, label %167
  ]

165:                                              ; preds = %163
  %166 = icmp sgt i32 %0, 2
  br i1 %166, label %359, label %169

167:                                              ; preds = %163
  %168 = icmp slt i32 %1, 4
  br i1 %168, label %359, label %169

169:                                              ; preds = %167, %165, %163, %154
  %170 = phi i32 [ 4, %165 ], [ 2, %167 ], [ 6, %163 ], [ 6, %154 ]
  %171 = phi i32 [ 3, %165 ], [ %1, %167 ], [ %1, %163 ], [ %1, %154 ]
  %172 = phi i32 [ %0, %165 ], [ 3, %167 ], [ %0, %163 ], [ %0, %154 ]
  %173 = load i64, ptr @posed, align 8, !tbaa !14
  %174 = icmp sgt i32 %.lcssa10, 0
  br i1 %174, label %175, label %304

175:                                              ; preds = %169
  %176 = sub nsw i32 6, %171
  %177 = zext i32 %.lcssa10 to i64
  br label %178

178:                                              ; preds = %299, %175
  %179 = phi i32 [ %6, %175 ], [ %247, %299 ]
  %180 = phi i64 [ 0, %175 ], [ %186, %299 ]
  %181 = phi i64 [ 1, %175 ], [ %302, %299 ]
  %182 = phi i32 [ %172, %175 ], [ %301, %299 ]
  %183 = phi i32 [ 1, %175 ], [ %300, %299 ]
  %184 = trunc i64 %180 to i32
  %185 = getelementptr inbounds [7 x i32], ptr %3, i64 0, i64 %180
  %186 = add nuw nsw i64 %180, 1
  %187 = icmp ult i64 %186, %177
  br i1 %187, label %188, label %214

188:                                              ; preds = %178
  %189 = load i32, ptr %185, align 4, !tbaa !11
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds [7 x i8], ptr @height, i64 0, i64 %190
  %192 = load i8, ptr %191, align 1, !tbaa !13
  %193 = sext i8 %192 to i64
  %194 = getelementptr inbounds [2 x [49 x i32]], ptr @history, i64 0, i64 %118, i64 %193
  %195 = load i32, ptr %194, align 4, !tbaa !11
  br label %196

196:                                              ; preds = %196, %188
  %197 = phi i64 [ %181, %188 ], [ %212, %196 ]
  %198 = phi i32 [ %184, %188 ], [ %211, %196 ]
  %199 = phi i32 [ %195, %188 ], [ %209, %196 ]
  %200 = getelementptr inbounds [7 x i32], ptr %3, i64 0, i64 %197
  %201 = load i32, ptr %200, align 4, !tbaa !11
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds [7 x i8], ptr @height, i64 0, i64 %202
  %204 = load i8, ptr %203, align 1, !tbaa !13
  %205 = sext i8 %204 to i64
  %206 = getelementptr inbounds [2 x [49 x i32]], ptr @history, i64 0, i64 %118, i64 %205
  %207 = load i32, ptr %206, align 4, !tbaa !11
  %208 = icmp sgt i32 %207, %199
  %209 = tail call i32 @llvm.smax.i32(i32 %207, i32 %199)
  %210 = trunc i64 %197 to i32
  %211 = select i1 %208, i32 %210, i32 %198
  %212 = add nuw nsw i64 %197, 1
  %213 = icmp eq i64 %212, %177
  br i1 %213, label %214, label %196, !llvm.loop !32

214:                                              ; preds = %196, %178
  %215 = phi i32 [ %184, %178 ], [ %211, %196 ]
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds [7 x i32], ptr %3, i64 0, i64 %216
  %218 = load i32, ptr %217, align 4, !tbaa !11
  %219 = icmp slt i64 %180, %216
  br i1 %219, label %220, label %227

220:                                              ; preds = %220, %214
  %221 = phi i64 [ %222, %220 ], [ %216, %214 ]
  %222 = add nsw i64 %221, -1
  %223 = getelementptr inbounds [7 x i32], ptr %3, i64 0, i64 %222
  %224 = load i32, ptr %223, align 4, !tbaa !11
  %225 = getelementptr inbounds [7 x i32], ptr %3, i64 0, i64 %221
  store i32 %224, ptr %225, align 4, !tbaa !11
  %226 = icmp sgt i64 %222, %180
  br i1 %226, label %220, label %227, !llvm.loop !33

227:                                              ; preds = %220, %214
  store i32 %218, ptr %185, align 4, !tbaa !11
  %228 = sext i32 %218 to i64
  %229 = getelementptr inbounds [7 x i8], ptr @height, i64 0, i64 %228
  %230 = load i8, ptr %229, align 1, !tbaa !13
  %231 = add i8 %230, 1
  store i8 %231, ptr %229, align 1, !tbaa !13
  %232 = sext i8 %230 to i64
  %233 = and i64 %232, 4294967295
  %234 = shl nuw i64 1, %233
  %235 = and i32 %179, 1
  %236 = zext i32 %235 to i64
  %237 = getelementptr inbounds [2 x i64], ptr @color, i64 0, i64 %236
  %238 = load i64, ptr %237, align 8, !tbaa !14
  %239 = xor i64 %238, %234
  store i64 %239, ptr %237, align 8, !tbaa !14
  %240 = add nsw i32 %179, 1
  store i32 %240, ptr @nplies, align 4, !tbaa !11
  %241 = sext i32 %179 to i64
  %242 = getelementptr inbounds [42 x i32], ptr @moves, i64 0, i64 %241
  store i32 %218, ptr %242, align 4, !tbaa !11
  %243 = sub nsw i32 6, %182
  %244 = tail call fastcc i32 @ab(i32 noundef %176, i32 noundef %243) #8, !range !23
  %245 = sub nsw i32 6, %244
  %246 = load i32, ptr @nplies, align 4, !tbaa !11
  %247 = add nsw i32 %246, -1
  store i32 %247, ptr @nplies, align 4, !tbaa !11
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds [42 x i32], ptr @moves, i64 0, i64 %248
  %250 = load i32, ptr %249, align 4, !tbaa !11
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds [7 x i8], ptr @height, i64 0, i64 %251
  %253 = load i8, ptr %252, align 1, !tbaa !13
  %254 = add i8 %253, -1
  store i8 %254, ptr %252, align 1, !tbaa !13
  %255 = sext i8 %254 to i64
  %256 = and i64 %255, 4294967295
  %257 = shl nuw i64 1, %256
  %258 = and i32 %247, 1
  %259 = zext i32 %258 to i64
  %260 = getelementptr inbounds [2 x i64], ptr @color, i64 0, i64 %259
  %261 = load i64, ptr %260, align 8, !tbaa !14
  %262 = xor i64 %257, %261
  store i64 %262, ptr %260, align 8, !tbaa !14
  %263 = icmp sgt i32 %245, %183
  br i1 %263, label %264, label %299

264:                                              ; preds = %227
  %265 = icmp sgt i32 %245, %182
  %266 = icmp sgt i32 %246, 0
  %267 = and i1 %265, %266
  br i1 %267, label %268, label %299

268:                                              ; preds = %264
  %269 = icmp slt i32 %245, %171
  br i1 %269, label %299, label %270

270:                                              ; preds = %268
  %.lcssa5 = phi i64 [ %228, %268 ]
  %.lcssa4 = phi i32 [ %244, %268 ]
  %.lcssa3 = phi i32 [ %245, %268 ]
  %.lcssa2 = phi i32 [ %247, %268 ]
  %.lcssa1 = phi i64 [ %180, %268 ]
  %.lcssa = phi i32 [ %184, %268 ]
  %271 = getelementptr inbounds [7 x i8], ptr @height, i64 0, i64 %.lcssa5
  %272 = icmp eq i32 %.lcssa4, 3
  %273 = add nsw i32 %.lcssa10, -1
  %274 = icmp sgt i32 %273, %.lcssa
  %275 = select i1 %274, i32 4, i32 3
  %276 = select i1 %272, i32 %275, i32 %.lcssa3
  %277 = icmp eq i32 %.lcssa, 0
  br i1 %277, label %304, label %278

278:                                              ; preds = %270
  %279 = and i64 %.lcssa1, 4294967295
  br label %280

280:                                              ; preds = %280, %278
  %281 = phi i64 [ 0, %278 ], [ %291, %280 ]
  %282 = getelementptr inbounds [7 x i32], ptr %3, i64 0, i64 %281
  %283 = load i32, ptr %282, align 4, !tbaa !11
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds [7 x i8], ptr @height, i64 0, i64 %284
  %286 = load i8, ptr %285, align 1, !tbaa !13
  %287 = sext i8 %286 to i64
  %288 = getelementptr inbounds [2 x [49 x i32]], ptr @history, i64 0, i64 %118, i64 %287
  %289 = load i32, ptr %288, align 4, !tbaa !11
  %290 = add nsw i32 %289, -1
  store i32 %290, ptr %288, align 4, !tbaa !11
  %291 = add nuw nsw i64 %281, 1
  %292 = icmp eq i64 %291, %279
  br i1 %292, label %293, label %280, !llvm.loop !34

293:                                              ; preds = %280
  %294 = load i8, ptr %271, align 1, !tbaa !13
  %295 = sext i8 %294 to i64
  %296 = getelementptr inbounds [2 x [49 x i32]], ptr @history, i64 0, i64 %118, i64 %295
  %297 = load i32, ptr %296, align 4, !tbaa !11
  %298 = add nsw i32 %297, %.lcssa
  store i32 %298, ptr %296, align 4, !tbaa !11
  br label %304

299:                                              ; preds = %268, %264, %227
  %300 = phi i32 [ %245, %268 ], [ %245, %264 ], [ %183, %227 ]
  %301 = phi i32 [ %245, %268 ], [ %182, %264 ], [ %182, %227 ]
  %302 = add nuw nsw i64 %181, 1
  %303 = icmp eq i64 %186, %177
  br i1 %303, label %304, label %178, !llvm.loop !35

304:                                              ; preds = %299, %293, %270, %169
  %305 = phi i32 [ %.lcssa2, %293 ], [ %.lcssa2, %270 ], [ %6, %169 ], [ %247, %299 ]
  %306 = phi i32 [ %276, %293 ], [ %276, %270 ], [ 1, %169 ], [ %300, %299 ]
  %307 = icmp eq i32 %306, %170
  %308 = select i1 %307, i32 3, i32 %306
  %309 = load i64, ptr @posed, align 8, !tbaa !14
  %310 = sub i64 %309, %173
  %311 = icmp ult i64 %310, 2
  br i1 %311, label %318, label %312

312:                                              ; preds = %312, %304
  %313 = phi i64 [ %315, %312 ], [ %310, %304 ]
  %314 = phi i32 [ %316, %312 ], [ 0, %304 ]
  %315 = lshr i64 %313, 1
  %316 = add nuw nsw i32 %314, 1
  %317 = icmp ult i64 %313, 4
  br i1 %317, label %318, label %312, !llvm.loop !36

318:                                              ; preds = %312, %304
  %319 = phi i32 [ 0, %304 ], [ %316, %312 ]
  %320 = add i64 %309, 1
  store i64 %320, ptr @posed, align 8, !tbaa !14
  %321 = load ptr, ptr @ht, align 8, !tbaa !7
  %322 = getelementptr inbounds %struct.hashentry, ptr %321, i64 %144
  %323 = load i64, ptr %322, align 4, !tbaa.struct !25
  %324 = trunc i64 %323 to i32
  %325 = and i32 %324, 67108863
  %326 = icmp ne i32 %325, %143
  %327 = lshr i32 %324, 26
  %328 = icmp sgt i32 %327, %319
  %329 = and i1 %326, %328
  br i1 %329, label %341, label %330

330:                                              ; preds = %318
  %331 = and i64 %323, 2305843004918726656
  %332 = and i32 %308, 7
  %333 = zext i32 %332 to i64
  %334 = shl nuw i64 %333, 61
  %335 = shl i32 %319, 26
  %336 = zext i32 %335 to i64
  %337 = and i64 %142, 67108863
  %338 = or i64 %337, %331
  %339 = or i64 %338, %334
  %340 = or i64 %339, %336
  br label %350

341:                                              ; preds = %318
  %342 = shl i64 %142, 32
  %343 = and i64 %342, 288230371856744448
  %344 = and i64 %323, -2305843004918726657
  %345 = or i64 %343, %344
  %346 = and i32 %308, 7
  %347 = zext i32 %346 to i64
  %348 = shl nuw nsw i64 %347, 58
  %349 = or i64 %345, %348
  br label %350

350:                                              ; preds = %341, %330
  %351 = phi i64 [ %340, %330 ], [ %349, %341 ]
  store i64 %351, ptr %322, align 4, !tbaa.struct !25
  %352 = icmp slt i32 %305, 0
  br i1 %352, label %353, label %359

353:                                              ; preds = %350
  tail call fastcc void @printMoves() #8
  %354 = zext i32 %308 to i64
  %355 = getelementptr inbounds [7 x i8], ptr @.str.3, i64 0, i64 %354
  %356 = load i8, ptr %355, align 1, !tbaa !13
  %357 = sext i8 %356 to i32
  %358 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %357, i32 noundef %319) #8
  br label %359

359:                                              ; preds = %353, %350, %167, %165, %163, %80, %74, %72, %70, %57, %38, %2
  %360 = phi i32 [ %99, %80 ], [ 3, %2 ], [ 1, %38 ], [ 1, %70 ], [ 3, %72 ], [ 2, %165 ], [ 4, %167 ], [ %164, %163 ], [ %308, %353 ], [ %308, %350 ], [ 3, %74 ], [ 1, %57 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %3) #9
  ret i32 %360
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #5

attributes #0 = { nofree nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nounwind optsize allocsize(0,1) }
attributes #8 = { optsize }
attributes #9 = { nounwind }

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
!13 = !{!9, !9, i64 0}
!14 = !{!15, !15, i64 0}
!15 = !{!"long", !9, i64 0}
!16 = distinct !{!16, !17}
!17 = !{!"llvm.loop.mustprogress"}
!18 = !{i32 0, i32 2}
!19 = distinct !{!19, !17}
!20 = distinct !{!20, !17}
!21 = distinct !{!21, !17}
!22 = distinct !{!22, !17}
!23 = !{i32 -1, i32 8}
!24 = distinct !{!24, !17}
!25 = !{i64 0, i64 4, !11, i64 3, i64 4, !11, i64 4, i64 4, !11, i64 7, i64 4, !11, i64 7, i64 4, !11}
!26 = distinct !{!26, !17}
!27 = distinct !{!27, !17}
!28 = distinct !{!28, !17}
!29 = distinct !{!29, !17}
!30 = distinct !{!30, !17}
!31 = distinct !{!31, !17}
!32 = distinct !{!32, !17}
!33 = distinct !{!33, !17}
!34 = distinct !{!34, !17}
!35 = distinct !{!35, !17}
!36 = distinct !{!36, !17}
