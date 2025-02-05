; ModuleID = 'fourinarow.e.bc.ll'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DEPTH = internal global i32 3, align 4
@C4VERT = internal unnamed_addr global i64 0, align 8
@C3VERT = internal unnamed_addr global i64 0, align 8
@C2VERT = internal unnamed_addr global i64 0, align 8
@C4HORIZ = internal unnamed_addr global i1 false, align 8
@C3HORIZ = internal unnamed_addr global i1 false, align 8
@C2HORIZ = internal unnamed_addr global i1 false, align 8
@C4UP_R = internal unnamed_addr global i64 0, align 8
@C3UP_R = internal unnamed_addr global i64 0, align 8
@C2UP_R = internal unnamed_addr global i64 0, align 8
@C4UP_L = internal unnamed_addr global i64 0, align 8
@C3UP_L = internal unnamed_addr global i64 0, align 8
@C2UP_L = internal unnamed_addr global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%c \00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"ERROR: Faulty column: %d.\0A\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.6 = private unnamed_addr constant [18 x i8] c"Compile date: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"today\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"Compiler switches: %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"test.in\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"Recursion depth: %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [24 x i8] c"Alpha-Beta pruning: %s\0A\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@str = private unnamed_addr constant [17 x i8] c"----------------\00", align 1
@str.23 = private unnamed_addr constant [23 x i8] c"ERROR: Unknown player.\00", align 1
@str.24 = private unnamed_addr constant [34 x i8] c"ERROR: Could not open indata file\00", align 1
@str.25 = private unnamed_addr constant [12 x i8] c"It's a tie.\00", align 1
@str.26 = private unnamed_addr constant [28 x i8] c"The computer is the winner.\00", align 1
@str.27 = private unnamed_addr constant [26 x i8] c"The player is the winner.\00", align 1
@str.28 = private unnamed_addr constant [23 x i8] c"Using pruning method 2\00", align 1
@str.29 = private unnamed_addr constant [23 x i8] c"Using pruning method 1\00", align 1

; Function Attrs: nounwind optsize uwtable
define dso_local i32 @main(i32 noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca [7 x [7 x i8]], align 16
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 49, ptr nonnull %3) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  store i32 0, ptr %4, align 4, !tbaa !7
  %5 = load ptr, ptr @stderr, align 8, !tbaa !11
  %6 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7) #14
  %7 = load ptr, ptr @stderr, align 8, !tbaa !11
  %8 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9) #14
  %9 = getelementptr inbounds ptr, ptr %1, i64 1
  %10 = load ptr, ptr %9, align 8, !tbaa !11
  %11 = tail call noalias ptr @fopen(ptr noundef %10, ptr noundef nonnull @.str.10) #15
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = tail call noalias ptr @fopen(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.10) #15
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.24)
  tail call void @exit(i32 noundef 1) #16
  unreachable

18:                                               ; preds = %13, %2
  %19 = phi ptr [ %11, %2 ], [ %14, %13 ]
  %20 = tail call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef nonnull %19, ptr noundef nonnull @.str.13, ptr noundef nonnull @DEPTH) #17
  %21 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef nonnull %19, ptr noundef nonnull @.str.13, ptr noundef nonnull %4) #17
  %22 = call i32 @fclose(ptr noundef nonnull %19) #15
  %23 = load i32, ptr @DEPTH, align 4, !tbaa !7
  %24 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14, i32 noundef %23) #15
  %25 = load i32, ptr %4, align 4, !tbaa !7
  %26 = icmp eq i32 %25, 0
  %27 = select i1 %26, ptr @.str.17, ptr @.str.16
  %28 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.15, ptr noundef nonnull %27) #15
  %29 = load i32, ptr %4, align 4, !tbaa !7
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %31, label %34

31:                                               ; preds = %18
  %32 = call i32 @puts(ptr nonnull dereferenceable(1) @str.29)
  %33 = load i32, ptr %4, align 4, !tbaa !7
  br label %34

34:                                               ; preds = %31, %18
  %35 = phi i32 [ %33, %31 ], [ %29, %18 ]
  %36 = icmp eq i32 %35, 2
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = call i32 @puts(ptr nonnull dereferenceable(1) @str.28)
  br label %39

39:                                               ; preds = %37, %34
  %40 = load i64, ptr @C4VERT, align 8, !tbaa !13
  br label %41

41:                                               ; preds = %41, %39
  %42 = phi i32 [ 0, %39 ], [ %46, %41 ]
  %43 = phi i64 [ %40, %39 ], [ %45, %41 ]
  %44 = shl i64 %43, 7
  %45 = or i64 %44, 128
  %46 = add nuw nsw i32 %42, 1
  %47 = icmp eq i32 %46, 3
  br i1 %47, label %48, label %41, !llvm.loop !15

48:                                               ; preds = %41
  %.lcssa5 = phi i64 [ %44, %41 ]
  %.lcssa4 = phi i64 [ %45, %41 ]
  %49 = or i64 %.lcssa5, 129
  store i64 %49, ptr @C4VERT, align 8, !tbaa !13
  %50 = lshr exact i64 %.lcssa4, 7
  store i64 %50, ptr @C3VERT, align 8, !tbaa !13
  %51 = lshr i64 %.lcssa5, 14
  store i64 %51, ptr @C2VERT, align 8, !tbaa !13
  store i1 true, ptr @C4HORIZ, align 8
  store i1 true, ptr @C3HORIZ, align 8
  store i1 true, ptr @C2HORIZ, align 8
  %52 = load i64, ptr @C4UP_R, align 8, !tbaa !13
  br label %53

53:                                               ; preds = %53, %48
  %54 = phi i32 [ 0, %48 ], [ %58, %53 ]
  %55 = phi i64 [ %52, %48 ], [ %57, %53 ]
  %56 = shl i64 %55, 8
  %57 = or i64 %56, 256
  %58 = add nuw nsw i32 %54, 1
  %59 = icmp eq i32 %58, 3
  br i1 %59, label %60, label %53, !llvm.loop !17

60:                                               ; preds = %53
  %.lcssa3 = phi i64 [ %56, %53 ]
  %.lcssa2 = phi i64 [ %57, %53 ]
  %61 = or i64 %.lcssa3, 257
  store i64 %61, ptr @C4UP_R, align 8, !tbaa !13
  %62 = lshr exact i64 %.lcssa2, 8
  store i64 %62, ptr @C3UP_R, align 8, !tbaa !13
  %63 = lshr i64 %.lcssa3, 16
  store i64 %63, ptr @C2UP_R, align 8, !tbaa !13
  %64 = load i64, ptr @C4UP_L, align 8, !tbaa !13
  br label %65

65:                                               ; preds = %65, %60
  %66 = phi i32 [ 0, %60 ], [ %70, %65 ]
  %67 = phi i64 [ %64, %60 ], [ %69, %65 ]
  %68 = shl i64 %67, 6
  %69 = or i64 %68, 512
  %70 = add nuw nsw i32 %66, 1
  %71 = icmp eq i32 %70, 3
  br i1 %71, label %72, label %65, !llvm.loop !18

72:                                               ; preds = %65
  %.lcssa1 = phi i64 [ %68, %65 ]
  %.lcssa = phi i64 [ %69, %65 ]
  %73 = or i64 %.lcssa1, 520
  store i64 %73, ptr @C4UP_L, align 8, !tbaa !13
  %74 = lshr exact i64 %.lcssa, 6
  store i64 %74, ptr @C3UP_L, align 8, !tbaa !13
  %75 = lshr i64 %.lcssa1, 12
  store i64 %75, ptr @C2UP_L, align 8, !tbaa !13
  br label %76

76:                                               ; preds = %76, %72
  %77 = phi i64 [ 0, %72 ], [ %80, %76 ]
  %78 = mul nuw nsw i64 %77, 7
  %79 = getelementptr i8, ptr %3, i64 %78
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %79, i8 46, i64 6, i1 false), !tbaa !19
  %80 = add nuw nsw i64 %77, 1
  %81 = icmp eq i64 %80, 7
  br i1 %81, label %82, label %76, !llvm.loop !20

82:                                               ; preds = %76
  %83 = getelementptr inbounds [7 x i8], ptr %3, i64 0, i64 6
  store i8 0, ptr %83, align 2, !tbaa !19
  %84 = getelementptr inbounds [7 x i8], ptr %3, i64 1, i64 6
  store i8 0, ptr %84, align 1, !tbaa !19
  %85 = getelementptr inbounds [7 x i8], ptr %3, i64 2, i64 6
  store i8 0, ptr %85, align 4, !tbaa !19
  %86 = getelementptr inbounds [7 x i8], ptr %3, i64 3, i64 6
  store i8 0, ptr %86, align 1, !tbaa !19
  %87 = getelementptr inbounds [7 x i8], ptr %3, i64 4, i64 6
  store i8 0, ptr %87, align 2, !tbaa !19
  %88 = getelementptr inbounds [7 x i8], ptr %3, i64 5, i64 6
  store i8 0, ptr %88, align 1, !tbaa !19
  %89 = getelementptr inbounds [7 x i8], ptr %3, i64 6, i64 6
  store i8 0, ptr %89, align 16, !tbaa !19
  br label %90

90:                                               ; preds = %132, %82
  %91 = call i32 @putchar(i32 noundef 32) #15
  br label %92

92:                                               ; preds = %92, %90
  %93 = phi i64 [ 0, %90 ], [ %98, %92 ]
  %94 = getelementptr inbounds [7 x i8], ptr %3, i64 %93, i64 6
  %95 = load i8, ptr %94, align 1, !tbaa !19
  %96 = sext i8 %95 to i32
  %97 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %96) #15
  %98 = add nuw nsw i64 %93, 1
  %99 = icmp eq i64 %98, 7
  br i1 %99, label %100, label %92, !llvm.loop !21

100:                                              ; preds = %92
  %101 = call i32 @putchar(i32 noundef 10) #15
  br label %102

102:                                              ; preds = %114, %100
  %103 = phi i64 [ 5, %100 ], [ %116, %114 ]
  %104 = trunc i64 %103 to i32
  %105 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %104) #15
  br label %106

106:                                              ; preds = %106, %102
  %107 = phi i64 [ 0, %102 ], [ %112, %106 ]
  %108 = getelementptr inbounds [7 x i8], ptr %3, i64 %107, i64 %103
  %109 = load i8, ptr %108, align 1, !tbaa !19
  %110 = sext i8 %109 to i32
  %111 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %110) #15
  %112 = add nuw nsw i64 %107, 1
  %113 = icmp eq i64 %112, 7
  br i1 %113, label %114, label %106, !llvm.loop !22

114:                                              ; preds = %106
  %115 = call i32 @putchar(i32 noundef 10) #15
  %116 = add nsw i64 %103, -1
  %117 = icmp eq i64 %103, 0
  br i1 %117, label %118, label %102, !llvm.loop !23

118:                                              ; preds = %114
  %119 = call i32 @putchar(i32 noundef 32) #15
  br label %120

120:                                              ; preds = %120, %118
  %121 = phi i32 [ 0, %118 ], [ %123, %120 ]
  %122 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %121) #15
  %123 = add nuw nsw i32 %121, 1
  %124 = icmp eq i32 %123, 7
  br i1 %124, label %125, label %120, !llvm.loop !24

125:                                              ; preds = %120
  %126 = call i32 @putchar(i32 noundef 10) #15
  %127 = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %128 = call fastcc i32 @find_winner_p(ptr noundef nonnull %3) #15, !range !25
  switch i32 %128, label %142 [
    i32 0, label %129
    i32 1, label %137
  ]

129:                                              ; preds = %125
  %130 = call fastcc i32 @find_winner_c(ptr noundef nonnull %3) #15, !range !25
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %142

132:                                              ; preds = %129
  %133 = load i32, ptr %4, align 4, !tbaa !7
  %134 = call fastcc i32 @think(ptr noundef nonnull %3, i32 noundef 1, i32 noundef %133) #15
  call fastcc void @place_piece(i32 noundef %134, i32 noundef 1, ptr noundef nonnull %3) #15
  %135 = load i32, ptr %4, align 4, !tbaa !7
  %136 = call fastcc i32 @think(ptr noundef nonnull %3, i32 noundef 2, i32 noundef %135) #15
  call fastcc void @place_piece(i32 noundef %136, i32 noundef 2, ptr noundef nonnull %3) #15
  br label %90, !llvm.loop !26

137:                                              ; preds = %125
  %138 = call fastcc i32 @find_winner_c(ptr noundef nonnull %3) #15, !range !25
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %142

140:                                              ; preds = %137
  %141 = call i32 @puts(ptr nonnull dereferenceable(1) @str.27)
  br label %142

142:                                              ; preds = %140, %137, %129, %125
  %143 = call fastcc i32 @find_winner_c(ptr noundef nonnull %3) #15, !range !25
  %144 = icmp eq i32 %143, 1
  br i1 %144, label %145, label %150

145:                                              ; preds = %142
  %146 = call fastcc i32 @find_winner_p(ptr noundef nonnull %3) #15, !range !25
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %150

148:                                              ; preds = %145
  %149 = call i32 @puts(ptr nonnull dereferenceable(1) @str.26)
  br label %150

150:                                              ; preds = %148, %145, %142
  %151 = call fastcc i32 @find_winner_p(ptr noundef nonnull %3) #15, !range !25
  %152 = icmp eq i32 %151, 2
  br i1 %152, label %158, label %153

153:                                              ; preds = %150
  %154 = call fastcc i32 @find_winner_c(ptr noundef nonnull %3) #15, !range !25
  %155 = icmp ne i32 %154, 1
  %156 = icmp eq i32 %151, 0
  %157 = or i1 %156, %155
  br i1 %157, label %160, label %158

158:                                              ; preds = %153, %150
  %159 = call i32 @puts(ptr nonnull dereferenceable(1) @str.25)
  br label %160

160:                                              ; preds = %158, %153
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 49, ptr nonnull %3) #13
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #3

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @__isoc99_fscanf(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: nofree nounwind optsize
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @find_winner_p(ptr nocapture noundef readonly %0) unnamed_addr #7 {
  br label %2

2:                                                ; preds = %2, %1
  %3 = phi i64 [ 0, %1 ], [ %9, %2 ]
  %4 = phi i32 [ 0, %1 ], [ %8, %2 ]
  %5 = getelementptr inbounds [7 x i8], ptr %0, i64 %3, i64 6
  %6 = load i8, ptr %5, align 1, !tbaa !19
  %7 = sext i8 %6 to i32
  %8 = add nsw i32 %4, %7
  %9 = add nuw nsw i64 %3, 1
  %10 = icmp eq i64 %9, 7
  br i1 %10, label %11, label %2, !llvm.loop !27

11:                                               ; preds = %2
  %.lcssa1 = phi i32 [ %8, %2 ]
  %12 = icmp eq i32 %.lcssa1, 42
  br i1 %12, label %94, label %13

13:                                               ; preds = %31, %11
  %14 = phi i64 [ %32, %31 ], [ 0, %11 ]
  %15 = phi i64 [ %.lcssa, %31 ], [ 0, %11 ]
  %16 = mul nuw nsw i64 %14, 7
  br label %19

17:                                               ; preds = %31
  %.lcssa.lcssa = phi i64 [ %.lcssa, %31 ]
  %18 = load i64, ptr @C4VERT, align 8, !tbaa !13
  br label %40

19:                                               ; preds = %19, %13
  %20 = phi i64 [ 0, %13 ], [ %29, %19 ]
  %21 = phi i64 [ %15, %13 ], [ %28, %19 ]
  %22 = getelementptr inbounds [7 x i8], ptr %0, i64 %20, i64 %14
  %23 = load i8, ptr %22, align 1, !tbaa !19
  %24 = icmp eq i8 %23, 111
  %25 = add nuw nsw i64 %20, %16
  %26 = shl nuw nsw i64 1, %25
  %27 = select i1 %24, i64 %26, i64 0
  %28 = or i64 %27, %21
  %29 = add nuw nsw i64 %20, 1
  %30 = icmp eq i64 %29, 7
  br i1 %30, label %31, label %19, !llvm.loop !28

31:                                               ; preds = %19
  %.lcssa = phi i64 [ %28, %19 ]
  %32 = add nuw nsw i64 %14, 1
  %33 = icmp eq i64 %32, 6
  br i1 %33, label %17, label %13, !llvm.loop !29

34:                                               ; preds = %40
  %35 = add nuw nsw i64 %41, 1
  %36 = icmp eq i64 %35, 21
  br i1 %36, label %37, label %40, !llvm.loop !30

37:                                               ; preds = %34
  %38 = load i1, ptr @C4HORIZ, align 8
  %39 = select i1 %38, i64 15, i64 0
  br label %45

40:                                               ; preds = %34, %17
  %41 = phi i64 [ 0, %17 ], [ %35, %34 ]
  %42 = shl i64 %18, %41
  %43 = and i64 %42, %.lcssa.lcssa
  %44 = icmp eq i64 %43, %42
  br i1 %44, label %94, label %34

45:                                               ; preds = %59, %37
  %46 = phi i64 [ 0, %37 ], [ %60, %59 ]
  %47 = mul nuw nsw i64 %46, 7
  br label %53

48:                                               ; preds = %59
  %49 = load i64, ptr @C4UP_R, align 8, !tbaa !13
  br label %62

50:                                               ; preds = %53
  %51 = add nuw nsw i64 %54, 1
  %52 = icmp eq i64 %51, 4
  br i1 %52, label %59, label %53, !llvm.loop !31

53:                                               ; preds = %50, %45
  %54 = phi i64 [ 0, %45 ], [ %51, %50 ]
  %55 = add nuw nsw i64 %54, %47
  %56 = shl i64 %39, %55
  %57 = and i64 %56, %.lcssa.lcssa
  %58 = icmp eq i64 %57, %56
  br i1 %58, label %94, label %50

59:                                               ; preds = %50
  %60 = add nuw nsw i64 %46, 1
  %61 = icmp eq i64 %60, 6
  br i1 %61, label %48, label %45, !llvm.loop !32

62:                                               ; preds = %76, %48
  %63 = phi i64 [ 0, %48 ], [ %77, %76 ]
  %64 = mul nuw nsw i64 %63, 7
  br label %70

65:                                               ; preds = %76
  %66 = load i64, ptr @C4UP_L, align 8, !tbaa !13
  br label %79

67:                                               ; preds = %70
  %68 = add nuw nsw i64 %71, 1
  %69 = icmp eq i64 %68, 4
  br i1 %69, label %76, label %70, !llvm.loop !33

70:                                               ; preds = %67, %62
  %71 = phi i64 [ 0, %62 ], [ %68, %67 ]
  %72 = add nuw nsw i64 %71, %64
  %73 = shl i64 %49, %72
  %74 = and i64 %73, %.lcssa.lcssa
  %75 = icmp eq i64 %74, %73
  br i1 %75, label %94, label %67

76:                                               ; preds = %67
  %77 = add nuw nsw i64 %63, 1
  %78 = icmp eq i64 %77, 3
  br i1 %78, label %65, label %62, !llvm.loop !34

79:                                               ; preds = %91, %65
  %80 = phi i64 [ 0, %65 ], [ %92, %91 ]
  %81 = mul nuw nsw i64 %80, 7
  br label %85

82:                                               ; preds = %85
  %83 = add nuw nsw i64 %86, 1
  %84 = icmp eq i64 %83, 4
  br i1 %84, label %91, label %85, !llvm.loop !35

85:                                               ; preds = %82, %79
  %86 = phi i64 [ 0, %79 ], [ %83, %82 ]
  %87 = add nuw nsw i64 %86, %81
  %88 = shl i64 %66, %87
  %89 = and i64 %88, %.lcssa.lcssa
  %90 = icmp eq i64 %89, %88
  br i1 %90, label %94, label %82

91:                                               ; preds = %82
  %92 = add nuw nsw i64 %80, 1
  %93 = icmp eq i64 %92, 3
  br i1 %93, label %94, label %79, !llvm.loop !36

94:                                               ; preds = %91, %85, %70, %53, %40, %11
  %95 = phi i32 [ 2, %11 ], [ 1, %85 ], [ 0, %91 ], [ 1, %70 ], [ 1, %53 ], [ 1, %40 ]
  ret i32 %95
}

; Function Attrs: nofree norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @find_winner_c(ptr nocapture noundef readonly %0) unnamed_addr #7 {
  br label %2

2:                                                ; preds = %2, %1
  %3 = phi i64 [ 0, %1 ], [ %9, %2 ]
  %4 = phi i32 [ 0, %1 ], [ %8, %2 ]
  %5 = getelementptr inbounds [7 x i8], ptr %0, i64 %3, i64 6
  %6 = load i8, ptr %5, align 1, !tbaa !19
  %7 = sext i8 %6 to i32
  %8 = add nsw i32 %4, %7
  %9 = add nuw nsw i64 %3, 1
  %10 = icmp eq i64 %9, 7
  br i1 %10, label %11, label %2, !llvm.loop !27

11:                                               ; preds = %2
  %.lcssa1 = phi i32 [ %8, %2 ]
  %12 = icmp eq i32 %.lcssa1, 42
  br i1 %12, label %94, label %13

13:                                               ; preds = %31, %11
  %14 = phi i64 [ %32, %31 ], [ 0, %11 ]
  %15 = phi i64 [ %.lcssa, %31 ], [ 0, %11 ]
  %16 = mul nuw nsw i64 %14, 7
  br label %19

17:                                               ; preds = %31
  %.lcssa.lcssa = phi i64 [ %.lcssa, %31 ]
  %18 = load i64, ptr @C4VERT, align 8, !tbaa !13
  br label %40

19:                                               ; preds = %19, %13
  %20 = phi i64 [ 0, %13 ], [ %29, %19 ]
  %21 = phi i64 [ %15, %13 ], [ %28, %19 ]
  %22 = getelementptr inbounds [7 x i8], ptr %0, i64 %20, i64 %14
  %23 = load i8, ptr %22, align 1, !tbaa !19
  %24 = icmp eq i8 %23, 120
  %25 = add nuw nsw i64 %20, %16
  %26 = shl nuw nsw i64 1, %25
  %27 = select i1 %24, i64 %26, i64 0
  %28 = or i64 %27, %21
  %29 = add nuw nsw i64 %20, 1
  %30 = icmp eq i64 %29, 7
  br i1 %30, label %31, label %19, !llvm.loop !37

31:                                               ; preds = %19
  %.lcssa = phi i64 [ %28, %19 ]
  %32 = add nuw nsw i64 %14, 1
  %33 = icmp eq i64 %32, 6
  br i1 %33, label %17, label %13, !llvm.loop !38

34:                                               ; preds = %40
  %35 = add nuw nsw i64 %41, 1
  %36 = icmp eq i64 %35, 21
  br i1 %36, label %37, label %40, !llvm.loop !39

37:                                               ; preds = %34
  %38 = load i1, ptr @C4HORIZ, align 8
  %39 = select i1 %38, i64 15, i64 0
  br label %45

40:                                               ; preds = %34, %17
  %41 = phi i64 [ 0, %17 ], [ %35, %34 ]
  %42 = shl i64 %18, %41
  %43 = and i64 %42, %.lcssa.lcssa
  %44 = icmp eq i64 %43, %42
  br i1 %44, label %94, label %34

45:                                               ; preds = %59, %37
  %46 = phi i64 [ 0, %37 ], [ %60, %59 ]
  %47 = mul nuw nsw i64 %46, 7
  br label %53

48:                                               ; preds = %59
  %49 = load i64, ptr @C4UP_R, align 8, !tbaa !13
  br label %62

50:                                               ; preds = %53
  %51 = add nuw nsw i64 %54, 1
  %52 = icmp eq i64 %51, 4
  br i1 %52, label %59, label %53, !llvm.loop !40

53:                                               ; preds = %50, %45
  %54 = phi i64 [ 0, %45 ], [ %51, %50 ]
  %55 = add nuw nsw i64 %54, %47
  %56 = shl i64 %39, %55
  %57 = and i64 %56, %.lcssa.lcssa
  %58 = icmp eq i64 %57, %56
  br i1 %58, label %94, label %50

59:                                               ; preds = %50
  %60 = add nuw nsw i64 %46, 1
  %61 = icmp eq i64 %60, 6
  br i1 %61, label %48, label %45, !llvm.loop !41

62:                                               ; preds = %76, %48
  %63 = phi i64 [ 0, %48 ], [ %77, %76 ]
  %64 = mul nuw nsw i64 %63, 7
  br label %70

65:                                               ; preds = %76
  %66 = load i64, ptr @C4UP_L, align 8, !tbaa !13
  br label %79

67:                                               ; preds = %70
  %68 = add nuw nsw i64 %71, 1
  %69 = icmp eq i64 %68, 4
  br i1 %69, label %76, label %70, !llvm.loop !42

70:                                               ; preds = %67, %62
  %71 = phi i64 [ 0, %62 ], [ %68, %67 ]
  %72 = add nuw nsw i64 %71, %64
  %73 = shl i64 %49, %72
  %74 = and i64 %73, %.lcssa.lcssa
  %75 = icmp eq i64 %74, %73
  br i1 %75, label %94, label %67

76:                                               ; preds = %67
  %77 = add nuw nsw i64 %63, 1
  %78 = icmp eq i64 %77, 3
  br i1 %78, label %65, label %62, !llvm.loop !43

79:                                               ; preds = %91, %65
  %80 = phi i64 [ 0, %65 ], [ %92, %91 ]
  %81 = mul nuw nsw i64 %80, 7
  br label %85

82:                                               ; preds = %85
  %83 = add nuw nsw i64 %86, 1
  %84 = icmp eq i64 %83, 4
  br i1 %84, label %91, label %85, !llvm.loop !44

85:                                               ; preds = %82, %79
  %86 = phi i64 [ 0, %79 ], [ %83, %82 ]
  %87 = add nuw nsw i64 %86, %81
  %88 = shl i64 %66, %87
  %89 = and i64 %88, %.lcssa.lcssa
  %90 = icmp eq i64 %89, %88
  br i1 %90, label %94, label %82

91:                                               ; preds = %82
  %92 = add nuw nsw i64 %80, 1
  %93 = icmp eq i64 %92, 3
  br i1 %93, label %94, label %79, !llvm.loop !45

94:                                               ; preds = %91, %85, %70, %53, %40, %11
  %95 = phi i32 [ 2, %11 ], [ 1, %85 ], [ 0, %91 ], [ 1, %70 ], [ 1, %53 ], [ 1, %40 ]
  ret i32 %95
}

; Function Attrs: nofree nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @think(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #8 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  br label %5

5:                                                ; preds = %21, %3
  %6 = phi i64 [ 0, %3 ], [ %22, %21 ]
  %7 = phi i64 [ 0, %3 ], [ %.lcssa1, %21 ]
  %8 = mul nuw nsw i64 %6, 7
  br label %9

9:                                                ; preds = %9, %5
  %10 = phi i64 [ 0, %5 ], [ %19, %9 ]
  %11 = phi i64 [ %7, %5 ], [ %18, %9 ]
  %12 = getelementptr inbounds [7 x i8], ptr %0, i64 %10, i64 %6
  %13 = load i8, ptr %12, align 1, !tbaa !19
  %14 = icmp eq i8 %13, 111
  %15 = add nuw nsw i64 %10, %8
  %16 = shl nuw i64 1, %15
  %17 = select i1 %14, i64 %16, i64 0
  %18 = or i64 %17, %11
  %19 = add nuw nsw i64 %10, 1
  %20 = icmp eq i64 %19, 7
  br i1 %20, label %21, label %9, !llvm.loop !46

21:                                               ; preds = %9
  %.lcssa1 = phi i64 [ %18, %9 ]
  %22 = add nuw nsw i64 %6, 1
  %23 = icmp eq i64 %22, 6
  br i1 %23, label %24, label %5, !llvm.loop !47

24:                                               ; preds = %40, %21
  %.lcssa1.lcssa = phi i64 [ %.lcssa1.lcssa, %40 ], [ %.lcssa1, %21 ]
  %25 = phi i64 [ %41, %40 ], [ 0, %21 ]
  %26 = phi i64 [ %.lcssa, %40 ], [ 0, %21 ]
  %27 = mul nuw nsw i64 %25, 7
  br label %28

28:                                               ; preds = %28, %24
  %29 = phi i64 [ 0, %24 ], [ %38, %28 ]
  %30 = phi i64 [ %26, %24 ], [ %37, %28 ]
  %31 = getelementptr inbounds [7 x i8], ptr %0, i64 %29, i64 %25
  %32 = load i8, ptr %31, align 1, !tbaa !19
  %33 = icmp eq i8 %32, 120
  %34 = add nuw nsw i64 %29, %27
  %35 = shl nuw i64 1, %34
  %36 = select i1 %33, i64 %35, i64 0
  %37 = or i64 %36, %30
  %38 = add nuw nsw i64 %29, 1
  %39 = icmp eq i64 %38, 7
  br i1 %39, label %40, label %28, !llvm.loop !48

40:                                               ; preds = %28
  %.lcssa = phi i64 [ %37, %28 ]
  %41 = add nuw nsw i64 %25, 1
  %42 = icmp eq i64 %41, 6
  br i1 %42, label %43, label %24, !llvm.loop !49

43:                                               ; preds = %40
  %.lcssa1.lcssa.lcssa = phi i64 [ %.lcssa1.lcssa, %40 ]
  %.lcssa.lcssa = phi i64 [ %.lcssa, %40 ]
  switch i32 %2, label %54 [
    i32 1, label %44
    i32 2, label %49
  ]

44:                                               ; preds = %43
  switch i32 %1, label %59 [
    i32 2, label %45
    i32 1, label %47
  ]

45:                                               ; preds = %44
  %46 = call fastcc i32 @minimax_comp_ab(i32 noundef 1, i64 noundef %.lcssa1.lcssa.lcssa, i64 noundef %.lcssa.lcssa, ptr noundef nonnull %4, i32 noundef -100000, i32 noundef 100000) #15
  br label %59

47:                                               ; preds = %44
  %48 = call fastcc i32 @minimax_player_ab(i32 noundef 1, i64 noundef %.lcssa1.lcssa.lcssa, i64 noundef %.lcssa.lcssa, ptr noundef nonnull %4, i32 noundef -100000, i32 noundef 100000) #15
  br label %59

49:                                               ; preds = %43
  switch i32 %1, label %59 [
    i32 2, label %50
    i32 1, label %52
  ]

50:                                               ; preds = %49
  %51 = call fastcc i32 @minimax_comp_ab2(i32 noundef 1, i64 noundef %.lcssa1.lcssa.lcssa, i64 noundef %.lcssa.lcssa, ptr noundef nonnull %4, i32 noundef 100000) #15
  br label %59

52:                                               ; preds = %49
  %53 = call fastcc i32 @minimax_player_ab2(i32 noundef 1, i64 noundef %.lcssa1.lcssa.lcssa, i64 noundef %.lcssa.lcssa, ptr noundef nonnull %4, i32 noundef -100000) #15
  br label %59

54:                                               ; preds = %43
  switch i32 %1, label %59 [
    i32 2, label %55
    i32 1, label %57
  ]

55:                                               ; preds = %54
  %56 = call fastcc i32 @minimax_comp(i32 noundef 1, i64 noundef %.lcssa1.lcssa.lcssa, i64 noundef %.lcssa.lcssa, ptr noundef nonnull %4) #15
  br label %59

57:                                               ; preds = %54
  %58 = call fastcc i32 @minimax_player(i32 noundef 1, i64 noundef %.lcssa1.lcssa.lcssa, i64 noundef %.lcssa.lcssa, ptr noundef nonnull %4) #15
  br label %59

59:                                               ; preds = %57, %55, %54, %52, %50, %49, %47, %45, %44
  %60 = load i32, ptr %4, align 4, !tbaa !7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  ret i32 %60
}

; Function Attrs: nofree nounwind optsize uwtable
define internal fastcc void @place_piece(i32 noundef %0, i32 noundef %1, ptr nocapture noundef %2) unnamed_addr #9 {
  %4 = icmp ugt i32 %0, 6
  br i1 %4, label %5, label %7

5:                                                ; preds = %3
  %6 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i32 noundef %0) #15
  br label %22

7:                                                ; preds = %3
  %8 = zext i32 %0 to i64
  %9 = getelementptr inbounds [7 x i8], ptr %2, i64 %8, i64 6
  %10 = load i8, ptr %9, align 1, !tbaa !19
  %11 = icmp sgt i8 %10, 5
  br i1 %11, label %22, label %12

12:                                               ; preds = %7
  switch i32 %1, label %14 [
    i32 1, label %16
    i32 2, label %13
  ]

13:                                               ; preds = %12
  br label %16

14:                                               ; preds = %12
  %15 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.23)
  br label %22

16:                                               ; preds = %13, %12
  %17 = phi i8 [ 120, %13 ], [ 111, %12 ]
  %18 = sext i8 %10 to i64
  %19 = getelementptr inbounds [7 x i8], ptr %2, i64 %8, i64 %18
  store i8 %17, ptr %19, align 1, !tbaa !19
  %20 = load i8, ptr %9, align 1, !tbaa !19
  %21 = add i8 %20, 1
  store i8 %21, ptr %9, align 1, !tbaa !19
  br label %22

22:                                               ; preds = %16, %14, %7, %5
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc i32 @minimax_comp_ab(i32 noundef %0, i64 noundef %1, i64 noundef %2, ptr nocapture noundef writeonly %3, i32 noundef %4, i32 noundef %5) unnamed_addr #10 {
  %7 = load i32, ptr @DEPTH, align 4, !tbaa !7
  %8 = icmp sgt i32 %7, %0
  br i1 %8, label %9, label %14

9:                                                ; preds = %6
  %10 = icmp slt i32 %4, %5
  br i1 %10, label %11, label %45

11:                                               ; preds = %9
  %12 = or i64 %2, %1
  %13 = add nsw i32 %0, 1
  br label %16

14:                                               ; preds = %6
  %15 = tail call fastcc i32 @value(i64 noundef %1, i64 noundef %2) #15
  br label %48

16:                                               ; preds = %38, %11
  %17 = phi i32 [ 0, %11 ], [ %40, %38 ]
  %18 = phi i32 [ %4, %11 ], [ %39, %38 ]
  %19 = phi i32 [ 0, %11 ], [ %41, %38 ]
  br label %23

20:                                               ; preds = %23
  %21 = add nuw nsw i64 %24, 1
  %22 = icmp eq i64 %21, 6
  br i1 %22, label %38, label %23, !llvm.loop !50

23:                                               ; preds = %20, %16
  %24 = phi i64 [ 0, %16 ], [ %21, %20 ]
  %25 = trunc i64 %24 to i32
  %26 = mul i32 %25, 7
  %27 = add nsw i32 %26, %19
  %28 = zext i32 %27 to i64
  %29 = shl nuw i64 1, %28
  %30 = and i64 %29, %12
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %20

32:                                               ; preds = %23
  %.lcssa = phi i64 [ %29, %23 ]
  %33 = or i64 %.lcssa, %2
  %34 = tail call fastcc i32 @minimax_player_ab(i32 noundef %13, i64 noundef %1, i64 noundef %33, ptr noundef %3, i32 noundef %18, i32 noundef %5) #15
  %35 = icmp sgt i32 %34, %18
  %36 = tail call i32 @llvm.smax.i32(i32 %34, i32 %18)
  %37 = select i1 %35, i32 %19, i32 %17
  br label %38

38:                                               ; preds = %32, %20
  %39 = phi i32 [ %36, %32 ], [ %18, %20 ]
  %40 = phi i32 [ %37, %32 ], [ %17, %20 ]
  %41 = add nuw nsw i32 %19, 1
  %42 = icmp ult i32 %19, 6
  %43 = icmp slt i32 %39, %5
  %44 = select i1 %42, i1 %43, i1 false
  br i1 %44, label %16, label %45, !llvm.loop !51

45:                                               ; preds = %38, %9
  %46 = phi i32 [ %4, %9 ], [ %39, %38 ]
  %47 = phi i32 [ 0, %9 ], [ %40, %38 ]
  store i32 %47, ptr %3, align 4, !tbaa !7
  br label %48

48:                                               ; preds = %45, %14
  %49 = phi i32 [ %15, %14 ], [ %46, %45 ]
  ret i32 %49
}

; Function Attrs: nofree nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc i32 @minimax_player_ab(i32 noundef %0, i64 noundef %1, i64 noundef %2, ptr nocapture noundef writeonly %3, i32 noundef %4, i32 noundef %5) unnamed_addr #10 {
  %7 = load i32, ptr @DEPTH, align 4, !tbaa !7
  %8 = icmp sgt i32 %7, %0
  br i1 %8, label %9, label %14

9:                                                ; preds = %6
  %10 = icmp sgt i32 %5, %4
  br i1 %10, label %11, label %45

11:                                               ; preds = %9
  %12 = or i64 %2, %1
  %13 = add nsw i32 %0, 1
  br label %16

14:                                               ; preds = %6
  %15 = tail call fastcc i32 @value(i64 noundef %1, i64 noundef %2) #15
  br label %48

16:                                               ; preds = %38, %11
  %17 = phi i32 [ 0, %11 ], [ %40, %38 ]
  %18 = phi i32 [ %5, %11 ], [ %39, %38 ]
  %19 = phi i32 [ 0, %11 ], [ %41, %38 ]
  br label %23

20:                                               ; preds = %23
  %21 = add nuw nsw i64 %24, 1
  %22 = icmp eq i64 %21, 6
  br i1 %22, label %38, label %23, !llvm.loop !50

23:                                               ; preds = %20, %16
  %24 = phi i64 [ 0, %16 ], [ %21, %20 ]
  %25 = trunc i64 %24 to i32
  %26 = mul i32 %25, 7
  %27 = add nsw i32 %26, %19
  %28 = zext i32 %27 to i64
  %29 = shl nuw i64 1, %28
  %30 = and i64 %29, %12
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %20

32:                                               ; preds = %23
  %.lcssa = phi i64 [ %29, %23 ]
  %33 = or i64 %.lcssa, %1
  %34 = tail call fastcc i32 @minimax_comp_ab(i32 noundef %13, i64 noundef %33, i64 noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %18) #15
  %35 = icmp sgt i32 %34, %18
  %36 = tail call i32 @llvm.smin.i32(i32 %34, i32 %18)
  %37 = select i1 %35, i32 %17, i32 %19
  br label %38

38:                                               ; preds = %32, %20
  %39 = phi i32 [ %36, %32 ], [ %18, %20 ]
  %40 = phi i32 [ %37, %32 ], [ %17, %20 ]
  %41 = add nuw nsw i32 %19, 1
  %42 = icmp ult i32 %19, 6
  %43 = icmp sgt i32 %39, %4
  %44 = select i1 %42, i1 %43, i1 false
  br i1 %44, label %16, label %45, !llvm.loop !52

45:                                               ; preds = %38, %9
  %46 = phi i32 [ %5, %9 ], [ %39, %38 ]
  %47 = phi i32 [ 0, %9 ], [ %40, %38 ]
  store i32 %47, ptr %3, align 4, !tbaa !7
  br label %48

48:                                               ; preds = %45, %14
  %49 = phi i32 [ %15, %14 ], [ %46, %45 ]
  ret i32 %49
}

; Function Attrs: nofree nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc i32 @minimax_comp_ab2(i32 noundef %0, i64 noundef %1, i64 noundef %2, ptr nocapture noundef writeonly %3, i32 noundef %4) unnamed_addr #10 {
  %6 = load i32, ptr @DEPTH, align 4, !tbaa !7
  %7 = icmp sgt i32 %6, %0
  br i1 %7, label %8, label %11

8:                                                ; preds = %5
  %9 = or i64 %2, %1
  %10 = add nsw i32 %0, 1
  br label %13

11:                                               ; preds = %5
  %12 = tail call fastcc i32 @value(i64 noundef %1, i64 noundef %2) #15
  br label %42

13:                                               ; preds = %36, %8
  %14 = phi i32 [ 0, %8 ], [ %38, %36 ]
  %15 = phi i32 [ -100000, %8 ], [ %37, %36 ]
  %16 = phi i32 [ 0, %8 ], [ %39, %36 ]
  br label %20

17:                                               ; preds = %20
  %18 = add nuw nsw i64 %21, 1
  %19 = icmp eq i64 %18, 6
  br i1 %19, label %36, label %20, !llvm.loop !50

20:                                               ; preds = %17, %13
  %21 = phi i64 [ 0, %13 ], [ %18, %17 ]
  %22 = trunc i64 %21 to i32
  %23 = mul i32 %22, 7
  %24 = add nsw i32 %23, %16
  %25 = zext i32 %24 to i64
  %26 = shl nuw i64 1, %25
  %27 = and i64 %26, %9
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %17

29:                                               ; preds = %20
  %.lcssa = phi i64 [ %26, %20 ]
  %30 = or i64 %.lcssa, %2
  %31 = tail call fastcc i32 @minimax_player_ab2(i32 noundef %10, i64 noundef %1, i64 noundef %30, ptr noundef %3, i32 noundef %15) #15
  %32 = icmp sgt i32 %31, %15
  %33 = tail call i32 @llvm.smax.i32(i32 %31, i32 %15)
  %34 = select i1 %32, i32 %16, i32 %14
  %35 = icmp sgt i32 %33, %4
  br i1 %35, label %42, label %36

36:                                               ; preds = %29, %17
  %37 = phi i32 [ %33, %29 ], [ %15, %17 ]
  %38 = phi i32 [ %34, %29 ], [ %14, %17 ]
  %39 = add nuw nsw i32 %16, 1
  %40 = icmp eq i32 %39, 7
  br i1 %40, label %41, label %13, !llvm.loop !53

41:                                               ; preds = %36
  %.lcssa3 = phi i32 [ %37, %36 ]
  %.lcssa2 = phi i32 [ %38, %36 ]
  store i32 %.lcssa2, ptr %3, align 4, !tbaa !7
  br label %42

42:                                               ; preds = %41, %29, %11
  %43 = phi i32 [ %12, %11 ], [ %.lcssa3, %41 ], [ %33, %29 ]
  ret i32 %43
}

; Function Attrs: nofree nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc i32 @minimax_player_ab2(i32 noundef %0, i64 noundef %1, i64 noundef %2, ptr nocapture noundef writeonly %3, i32 noundef %4) unnamed_addr #10 {
  %6 = load i32, ptr @DEPTH, align 4, !tbaa !7
  %7 = icmp sgt i32 %6, %0
  br i1 %7, label %8, label %11

8:                                                ; preds = %5
  %9 = or i64 %2, %1
  %10 = add nsw i32 %0, 1
  br label %13

11:                                               ; preds = %5
  %12 = tail call fastcc i32 @value(i64 noundef %1, i64 noundef %2) #15
  br label %42

13:                                               ; preds = %36, %8
  %14 = phi i32 [ 0, %8 ], [ %38, %36 ]
  %15 = phi i32 [ 100000, %8 ], [ %37, %36 ]
  %16 = phi i32 [ 0, %8 ], [ %39, %36 ]
  br label %20

17:                                               ; preds = %20
  %18 = add nuw nsw i64 %21, 1
  %19 = icmp eq i64 %18, 6
  br i1 %19, label %36, label %20, !llvm.loop !50

20:                                               ; preds = %17, %13
  %21 = phi i64 [ 0, %13 ], [ %18, %17 ]
  %22 = trunc i64 %21 to i32
  %23 = mul i32 %22, 7
  %24 = add nsw i32 %23, %16
  %25 = zext i32 %24 to i64
  %26 = shl nuw i64 1, %25
  %27 = and i64 %26, %9
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %17

29:                                               ; preds = %20
  %.lcssa = phi i64 [ %26, %20 ]
  %30 = or i64 %.lcssa, %1
  %31 = tail call fastcc i32 @minimax_comp_ab2(i32 noundef %10, i64 noundef %30, i64 noundef %2, ptr noundef %3, i32 noundef %15) #15
  %32 = icmp sgt i32 %31, %15
  %33 = tail call i32 @llvm.smin.i32(i32 %31, i32 %15)
  %34 = select i1 %32, i32 %14, i32 %16
  %35 = icmp slt i32 %33, %4
  br i1 %35, label %42, label %36

36:                                               ; preds = %29, %17
  %37 = phi i32 [ %33, %29 ], [ %15, %17 ]
  %38 = phi i32 [ %34, %29 ], [ %14, %17 ]
  %39 = add nuw nsw i32 %16, 1
  %40 = icmp eq i32 %39, 7
  br i1 %40, label %41, label %13, !llvm.loop !54

41:                                               ; preds = %36
  %.lcssa3 = phi i32 [ %37, %36 ]
  %.lcssa2 = phi i32 [ %38, %36 ]
  store i32 %.lcssa2, ptr %3, align 4, !tbaa !7
  br label %42

42:                                               ; preds = %41, %29, %11
  %43 = phi i32 [ %12, %11 ], [ %.lcssa3, %41 ], [ %33, %29 ]
  ret i32 %43
}

; Function Attrs: nofree nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc i32 @minimax_comp(i32 noundef %0, i64 noundef %1, i64 noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #10 {
  %5 = load i32, ptr @DEPTH, align 4, !tbaa !7
  %6 = icmp sgt i32 %5, %0
  br i1 %6, label %7, label %10

7:                                                ; preds = %4
  %8 = or i64 %2, %1
  %9 = add nsw i32 %0, 1
  br label %12

10:                                               ; preds = %4
  %11 = tail call fastcc i32 @value(i64 noundef %1, i64 noundef %2) #15
  br label %40

12:                                               ; preds = %34, %7
  %13 = phi i32 [ 0, %7 ], [ %36, %34 ]
  %14 = phi i32 [ -100000, %7 ], [ %35, %34 ]
  %15 = phi i32 [ 0, %7 ], [ %37, %34 ]
  br label %19

16:                                               ; preds = %19
  %17 = add nuw nsw i64 %20, 1
  %18 = icmp eq i64 %17, 6
  br i1 %18, label %34, label %19, !llvm.loop !50

19:                                               ; preds = %16, %12
  %20 = phi i64 [ 0, %12 ], [ %17, %16 ]
  %21 = trunc i64 %20 to i32
  %22 = mul i32 %21, 7
  %23 = add nsw i32 %22, %15
  %24 = zext i32 %23 to i64
  %25 = shl nuw i64 1, %24
  %26 = and i64 %25, %8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %16

28:                                               ; preds = %19
  %.lcssa = phi i64 [ %25, %19 ]
  %29 = or i64 %.lcssa, %2
  %30 = tail call fastcc i32 @minimax_player(i32 noundef %9, i64 noundef %1, i64 noundef %29, ptr noundef %3) #15
  %31 = icmp sgt i32 %30, %14
  %32 = tail call i32 @llvm.smax.i32(i32 %30, i32 %14)
  %33 = select i1 %31, i32 %15, i32 %13
  br label %34

34:                                               ; preds = %28, %16
  %35 = phi i32 [ %32, %28 ], [ %14, %16 ]
  %36 = phi i32 [ %33, %28 ], [ %13, %16 ]
  %37 = add nuw nsw i32 %15, 1
  %38 = icmp eq i32 %37, 7
  br i1 %38, label %39, label %12, !llvm.loop !55

39:                                               ; preds = %34
  %.lcssa3 = phi i32 [ %35, %34 ]
  %.lcssa2 = phi i32 [ %36, %34 ]
  store i32 %.lcssa2, ptr %3, align 4, !tbaa !7
  br label %40

40:                                               ; preds = %39, %10
  %41 = phi i32 [ %11, %10 ], [ %.lcssa3, %39 ]
  ret i32 %41
}

; Function Attrs: nofree nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc i32 @minimax_player(i32 noundef %0, i64 noundef %1, i64 noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #10 {
  %5 = load i32, ptr @DEPTH, align 4, !tbaa !7
  %6 = icmp sgt i32 %5, %0
  br i1 %6, label %7, label %10

7:                                                ; preds = %4
  %8 = or i64 %2, %1
  %9 = add nsw i32 %0, 1
  br label %12

10:                                               ; preds = %4
  %11 = tail call fastcc i32 @value(i64 noundef %1, i64 noundef %2) #15
  br label %40

12:                                               ; preds = %34, %7
  %13 = phi i32 [ 0, %7 ], [ %36, %34 ]
  %14 = phi i32 [ 100000, %7 ], [ %35, %34 ]
  %15 = phi i32 [ 0, %7 ], [ %37, %34 ]
  br label %19

16:                                               ; preds = %19
  %17 = add nuw nsw i64 %20, 1
  %18 = icmp eq i64 %17, 6
  br i1 %18, label %34, label %19, !llvm.loop !50

19:                                               ; preds = %16, %12
  %20 = phi i64 [ 0, %12 ], [ %17, %16 ]
  %21 = trunc i64 %20 to i32
  %22 = mul i32 %21, 7
  %23 = add nsw i32 %22, %15
  %24 = zext i32 %23 to i64
  %25 = shl nuw i64 1, %24
  %26 = and i64 %25, %8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %16

28:                                               ; preds = %19
  %.lcssa = phi i64 [ %25, %19 ]
  %29 = or i64 %.lcssa, %1
  %30 = tail call fastcc i32 @minimax_comp(i32 noundef %9, i64 noundef %29, i64 noundef %2, ptr noundef %3) #15
  %31 = icmp sgt i32 %30, %14
  %32 = tail call i32 @llvm.smin.i32(i32 %30, i32 %14)
  %33 = select i1 %31, i32 %13, i32 %15
  br label %34

34:                                               ; preds = %28, %16
  %35 = phi i32 [ %32, %28 ], [ %14, %16 ]
  %36 = phi i32 [ %33, %28 ], [ %13, %16 ]
  %37 = add nuw nsw i32 %15, 1
  %38 = icmp eq i32 %37, 7
  br i1 %38, label %39, label %12, !llvm.loop !56

39:                                               ; preds = %34
  %.lcssa3 = phi i32 [ %35, %34 ]
  %.lcssa2 = phi i32 [ %36, %34 ]
  store i32 %.lcssa2, ptr %3, align 4, !tbaa !7
  br label %40

40:                                               ; preds = %39, %10
  %41 = phi i32 [ %11, %10 ], [ %.lcssa3, %39 ]
  ret i32 %41
}

; Function Attrs: nofree nosync nounwind optsize memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal fastcc i32 @value(i64 noundef %0, i64 noundef %1) unnamed_addr #11 {
  %3 = load i64, ptr @C4VERT, align 8
  %4 = load i1, ptr @C4HORIZ, align 8
  %5 = select i1 %4, i64 15, i64 0
  %6 = load i64, ptr @C4UP_R, align 8, !tbaa !13
  %7 = load i64, ptr @C4UP_L, align 8, !tbaa !13
  %8 = load i64, ptr @C3VERT, align 8, !tbaa !13
  %9 = load i1, ptr @C3HORIZ, align 8
  %10 = select i1 %9, i64 7, i64 0
  %11 = load i64, ptr @C3UP_R, align 8, !tbaa !13
  %12 = load i64, ptr @C3UP_L, align 8, !tbaa !13
  %13 = load i64, ptr @C2VERT, align 8, !tbaa !13
  %14 = load i1, ptr @C2HORIZ, align 8
  %15 = select i1 %14, i64 3, i64 0
  %16 = load i64, ptr @C2UP_R, align 8, !tbaa !13
  %17 = load i64, ptr @C2UP_L, align 8, !tbaa !13
  br label %18

18:                                               ; preds = %253, %2
  %19 = phi i32 [ 0, %2 ], [ %.lcssa8.lcssa, %253 ]
  %20 = phi i1 [ true, %2 ], [ false, %253 ]
  %21 = select i1 %20, i64 %0, i64 %1
  %22 = select i1 %20, float -1.000000e+00, float 1.000000e+00
  br label %23

23:                                               ; preds = %23, %18
  %24 = phi i64 [ 0, %18 ], [ %33, %23 ]
  %25 = phi i32 [ %19, %18 ], [ %32, %23 ]
  %26 = shl i64 %3, %24
  %27 = and i64 %26, %21
  %28 = icmp eq i64 %27, %26
  %29 = sitofp i32 %25 to float
  %30 = tail call float @llvm.fmuladd.f32(float %22, float 1.000000e+03, float %29)
  %31 = fptosi float %30 to i32
  %32 = select i1 %28, i32 %31, i32 %25
  %33 = add nuw nsw i64 %24, 1
  %34 = icmp eq i64 %33, 21
  br i1 %34, label %35, label %23, !llvm.loop !57

35:                                               ; preds = %52, %23
  %36 = phi i64 [ %53, %52 ], [ 0, %23 ]
  %37 = phi i32 [ %.lcssa, %52 ], [ %32, %23 ]
  %38 = mul nuw nsw i64 %36, 6
  br label %39

39:                                               ; preds = %39, %35
  %40 = phi i64 [ 0, %35 ], [ %50, %39 ]
  %41 = phi i32 [ %37, %35 ], [ %49, %39 ]
  %42 = add nuw nsw i64 %40, %38
  %43 = shl i64 %5, %42
  %44 = and i64 %43, %21
  %45 = icmp eq i64 %44, %43
  %46 = sitofp i32 %41 to float
  %47 = tail call float @llvm.fmuladd.f32(float %22, float 1.000000e+03, float %46)
  %48 = fptosi float %47 to i32
  %49 = select i1 %45, i32 %48, i32 %41
  %50 = add nuw nsw i64 %40, 1
  %51 = icmp eq i64 %50, 4
  br i1 %51, label %52, label %39, !llvm.loop !58

52:                                               ; preds = %39
  %.lcssa = phi i32 [ %49, %39 ]
  %53 = add nuw nsw i64 %36, 1
  %54 = icmp eq i64 %53, 6
  br i1 %54, label %55, label %35, !llvm.loop !59

55:                                               ; preds = %72, %52
  %56 = phi i64 [ %73, %72 ], [ 0, %52 ]
  %57 = phi i32 [ %.lcssa1, %72 ], [ %.lcssa, %52 ]
  %58 = mul nuw nsw i64 %56, 6
  br label %59

59:                                               ; preds = %59, %55
  %60 = phi i64 [ 0, %55 ], [ %70, %59 ]
  %61 = phi i32 [ %57, %55 ], [ %69, %59 ]
  %62 = add nuw nsw i64 %60, %58
  %63 = shl i64 %6, %62
  %64 = and i64 %63, %21
  %65 = icmp eq i64 %64, %63
  %66 = sitofp i32 %61 to float
  %67 = tail call float @llvm.fmuladd.f32(float %22, float 1.000000e+03, float %66)
  %68 = fptosi float %67 to i32
  %69 = select i1 %65, i32 %68, i32 %61
  %70 = add nuw nsw i64 %60, 1
  %71 = icmp eq i64 %70, 4
  br i1 %71, label %72, label %59, !llvm.loop !60

72:                                               ; preds = %59
  %.lcssa1 = phi i32 [ %69, %59 ]
  %73 = add nuw nsw i64 %56, 1
  %74 = icmp eq i64 %73, 3
  br i1 %74, label %75, label %55, !llvm.loop !61

75:                                               ; preds = %92, %72
  %76 = phi i64 [ %93, %92 ], [ 0, %72 ]
  %77 = phi i32 [ %.lcssa2, %92 ], [ %.lcssa1, %72 ]
  %78 = mul nuw nsw i64 %76, 6
  br label %79

79:                                               ; preds = %79, %75
  %80 = phi i64 [ 0, %75 ], [ %90, %79 ]
  %81 = phi i32 [ %77, %75 ], [ %89, %79 ]
  %82 = add nuw nsw i64 %80, %78
  %83 = shl i64 %7, %82
  %84 = and i64 %83, %21
  %85 = icmp eq i64 %84, %83
  %86 = sitofp i32 %81 to float
  %87 = tail call float @llvm.fmuladd.f32(float %22, float 1.000000e+03, float %86)
  %88 = fptosi float %87 to i32
  %89 = select i1 %85, i32 %88, i32 %81
  %90 = add nuw nsw i64 %80, 1
  %91 = icmp eq i64 %90, 4
  br i1 %91, label %92, label %79, !llvm.loop !62

92:                                               ; preds = %79
  %.lcssa2 = phi i32 [ %89, %79 ]
  %93 = add nuw nsw i64 %76, 1
  %94 = icmp eq i64 %93, 3
  br i1 %94, label %95, label %75, !llvm.loop !63

95:                                               ; preds = %92
  %.lcssa2.lcssa = phi i32 [ %.lcssa2, %92 ]
  %96 = select i1 %20, i64 %1, i64 %0
  br label %97

97:                                               ; preds = %111, %95
  %98 = phi i64 [ 0, %95 ], [ %113, %111 ]
  %99 = phi i32 [ %.lcssa2.lcssa, %95 ], [ %112, %111 ]
  %100 = shl i64 %8, %98
  %101 = and i64 %100, %21
  %102 = icmp eq i64 %101, %100
  br i1 %102, label %103, label %111

103:                                              ; preds = %97
  %104 = shl i64 %3, %98
  %105 = and i64 %104, %96
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %103
  %108 = sitofp i32 %99 to float
  %109 = tail call float @llvm.fmuladd.f32(float %22, float 2.000000e+01, float %108)
  %110 = fptosi float %109 to i32
  br label %111

111:                                              ; preds = %107, %103, %97
  %112 = phi i32 [ %99, %103 ], [ %110, %107 ], [ %99, %97 ]
  %113 = add nuw nsw i64 %98, 1
  %114 = icmp eq i64 %113, 21
  br i1 %114, label %115, label %97, !llvm.loop !64

115:                                              ; preds = %132, %111
  %116 = phi i64 [ %133, %132 ], [ 0, %111 ]
  %117 = phi i32 [ %.lcssa3, %132 ], [ %112, %111 ]
  %118 = mul nuw nsw i64 %116, 6
  br label %119

119:                                              ; preds = %119, %115
  %120 = phi i64 [ 0, %115 ], [ %130, %119 ]
  %121 = phi i32 [ %117, %115 ], [ %129, %119 ]
  %122 = add nuw nsw i64 %120, %118
  %123 = shl i64 %10, %122
  %124 = and i64 %123, %21
  %125 = icmp eq i64 %124, %123
  %126 = sitofp i32 %121 to float
  %127 = tail call float @llvm.fmuladd.f32(float %22, float 2.000000e+01, float %126)
  %128 = fptosi float %127 to i32
  %129 = select i1 %125, i32 %128, i32 %121
  %130 = add nuw nsw i64 %120, 1
  %131 = icmp eq i64 %130, 5
  br i1 %131, label %132, label %119, !llvm.loop !65

132:                                              ; preds = %119
  %.lcssa3 = phi i32 [ %129, %119 ]
  %133 = add nuw nsw i64 %116, 1
  %134 = icmp eq i64 %133, 6
  br i1 %134, label %135, label %115, !llvm.loop !66

135:                                              ; preds = %152, %132
  %136 = phi i64 [ %153, %152 ], [ 0, %132 ]
  %137 = phi i32 [ %.lcssa4, %152 ], [ %.lcssa3, %132 ]
  %138 = mul nuw nsw i64 %136, 6
  br label %139

139:                                              ; preds = %139, %135
  %140 = phi i64 [ 0, %135 ], [ %150, %139 ]
  %141 = phi i32 [ %137, %135 ], [ %149, %139 ]
  %142 = add nuw nsw i64 %140, %138
  %143 = shl i64 %11, %142
  %144 = and i64 %143, %21
  %145 = icmp eq i64 %144, %143
  %146 = sitofp i32 %141 to float
  %147 = tail call float @llvm.fmuladd.f32(float %22, float 2.000000e+01, float %146)
  %148 = fptosi float %147 to i32
  %149 = select i1 %145, i32 %148, i32 %141
  %150 = add nuw nsw i64 %140, 1
  %151 = icmp eq i64 %150, 4
  br i1 %151, label %152, label %139, !llvm.loop !67

152:                                              ; preds = %139
  %.lcssa4 = phi i32 [ %149, %139 ]
  %153 = add nuw nsw i64 %136, 1
  %154 = icmp eq i64 %153, 3
  br i1 %154, label %155, label %135, !llvm.loop !68

155:                                              ; preds = %172, %152
  %156 = phi i64 [ %173, %172 ], [ 0, %152 ]
  %157 = phi i32 [ %.lcssa5, %172 ], [ %.lcssa4, %152 ]
  %158 = mul nuw nsw i64 %156, 6
  br label %159

159:                                              ; preds = %159, %155
  %160 = phi i64 [ 0, %155 ], [ %170, %159 ]
  %161 = phi i32 [ %157, %155 ], [ %169, %159 ]
  %162 = add nuw nsw i64 %160, %158
  %163 = shl i64 %12, %162
  %164 = and i64 %163, %21
  %165 = icmp eq i64 %164, %163
  %166 = sitofp i32 %161 to float
  %167 = tail call float @llvm.fmuladd.f32(float %22, float 2.000000e+01, float %166)
  %168 = fptosi float %167 to i32
  %169 = select i1 %165, i32 %168, i32 %161
  %170 = add nuw nsw i64 %160, 1
  %171 = icmp eq i64 %170, 4
  br i1 %171, label %172, label %159, !llvm.loop !69

172:                                              ; preds = %159
  %.lcssa5 = phi i32 [ %169, %159 ]
  %173 = add nuw nsw i64 %156, 1
  %174 = icmp eq i64 %173, 3
  br i1 %174, label %175, label %155, !llvm.loop !70

175:                                              ; preds = %189, %172
  %176 = phi i64 [ %191, %189 ], [ 0, %172 ]
  %177 = phi i32 [ %190, %189 ], [ %.lcssa5, %172 ]
  %178 = shl i64 %13, %176
  %179 = and i64 %178, %21
  %180 = icmp eq i64 %179, %178
  br i1 %180, label %181, label %189

181:                                              ; preds = %175
  %182 = shl i64 %3, %176
  %183 = and i64 %182, %96
  %184 = icmp eq i64 %183, 0
  br i1 %184, label %185, label %189

185:                                              ; preds = %181
  %186 = sitofp i32 %177 to float
  %187 = tail call float @llvm.fmuladd.f32(float %22, float 5.000000e+00, float %186)
  %188 = fptosi float %187 to i32
  br label %189

189:                                              ; preds = %185, %181, %175
  %190 = phi i32 [ %177, %181 ], [ %188, %185 ], [ %177, %175 ]
  %191 = add nuw nsw i64 %176, 1
  %192 = icmp eq i64 %191, 21
  br i1 %192, label %193, label %175, !llvm.loop !71

193:                                              ; preds = %210, %189
  %194 = phi i64 [ %211, %210 ], [ 0, %189 ]
  %195 = phi i32 [ %.lcssa6, %210 ], [ %190, %189 ]
  %196 = mul nuw nsw i64 %194, 6
  br label %197

197:                                              ; preds = %197, %193
  %198 = phi i64 [ 0, %193 ], [ %208, %197 ]
  %199 = phi i32 [ %195, %193 ], [ %207, %197 ]
  %200 = add nuw nsw i64 %198, %196
  %201 = shl i64 %15, %200
  %202 = and i64 %201, %21
  %203 = icmp eq i64 %202, %201
  %204 = sitofp i32 %199 to float
  %205 = tail call float @llvm.fmuladd.f32(float %22, float 5.000000e+00, float %204)
  %206 = fptosi float %205 to i32
  %207 = select i1 %203, i32 %206, i32 %199
  %208 = add nuw nsw i64 %198, 1
  %209 = icmp eq i64 %208, 6
  br i1 %209, label %210, label %197, !llvm.loop !72

210:                                              ; preds = %197
  %.lcssa6 = phi i32 [ %207, %197 ]
  %211 = add nuw nsw i64 %194, 1
  %212 = icmp eq i64 %211, 6
  br i1 %212, label %213, label %193, !llvm.loop !73

213:                                              ; preds = %230, %210
  %214 = phi i64 [ %231, %230 ], [ 0, %210 ]
  %215 = phi i32 [ %.lcssa7, %230 ], [ %.lcssa6, %210 ]
  %216 = mul nuw nsw i64 %214, 6
  br label %217

217:                                              ; preds = %217, %213
  %218 = phi i64 [ 0, %213 ], [ %228, %217 ]
  %219 = phi i32 [ %215, %213 ], [ %227, %217 ]
  %220 = add nuw nsw i64 %218, %216
  %221 = shl i64 %16, %220
  %222 = and i64 %221, %21
  %223 = icmp eq i64 %222, %221
  %224 = sitofp i32 %219 to float
  %225 = tail call float @llvm.fmuladd.f32(float %22, float 5.000000e+00, float %224)
  %226 = fptosi float %225 to i32
  %227 = select i1 %223, i32 %226, i32 %219
  %228 = add nuw nsw i64 %218, 1
  %229 = icmp eq i64 %228, 4
  br i1 %229, label %230, label %217, !llvm.loop !74

230:                                              ; preds = %217
  %.lcssa7 = phi i32 [ %227, %217 ]
  %231 = add nuw nsw i64 %214, 1
  %232 = icmp eq i64 %231, 3
  br i1 %232, label %233, label %213, !llvm.loop !75

233:                                              ; preds = %250, %230
  %234 = phi i64 [ %251, %250 ], [ 0, %230 ]
  %235 = phi i32 [ %.lcssa8, %250 ], [ %.lcssa7, %230 ]
  %236 = mul nuw nsw i64 %234, 6
  br label %237

237:                                              ; preds = %237, %233
  %238 = phi i64 [ 0, %233 ], [ %248, %237 ]
  %239 = phi i32 [ %235, %233 ], [ %247, %237 ]
  %240 = add nuw nsw i64 %238, %236
  %241 = shl i64 %17, %240
  %242 = and i64 %241, %21
  %243 = icmp eq i64 %242, %241
  %244 = sitofp i32 %239 to float
  %245 = tail call float @llvm.fmuladd.f32(float %22, float 5.000000e+00, float %244)
  %246 = fptosi float %245 to i32
  %247 = select i1 %243, i32 %246, i32 %239
  %248 = add nuw nsw i64 %238, 1
  %249 = icmp eq i64 %248, 4
  br i1 %249, label %250, label %237, !llvm.loop !76

250:                                              ; preds = %237
  %.lcssa8 = phi i32 [ %247, %237 ]
  %251 = add nuw nsw i64 %234, 1
  %252 = icmp eq i64 %251, 3
  br i1 %252, label %253, label %233, !llvm.loop !77

253:                                              ; preds = %250
  %.lcssa8.lcssa = phi i32 [ %.lcssa8, %250 ]
  br i1 %20, label %18, label %254, !llvm.loop !78

254:                                              ; preds = %253
  %.lcssa8.lcssa.lcssa = phi i32 [ %.lcssa8.lcssa, %253 ]
  ret i32 %.lcssa8.lcssa.lcssa
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #12

attributes #0 = { nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
attributes #4 = { noreturn nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { nofree norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nosync nounwind optsize memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nounwind }
attributes #14 = { cold optsize }
attributes #15 = { optsize }
attributes #16 = { noreturn nounwind optsize }
attributes #17 = { nounwind optsize }

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
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!12, !12, i64 0}
!12 = !{!"any pointer", !9, i64 0}
!13 = !{!14, !14, i64 0}
!14 = !{!"long long", !9, i64 0}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.mustprogress"}
!17 = distinct !{!17, !16}
!18 = distinct !{!18, !16}
!19 = !{!9, !9, i64 0}
!20 = distinct !{!20, !16}
!21 = distinct !{!21, !16}
!22 = distinct !{!22, !16}
!23 = distinct !{!23, !16}
!24 = distinct !{!24, !16}
!25 = !{i32 0, i32 3}
!26 = distinct !{!26, !16}
!27 = distinct !{!27, !16}
!28 = distinct !{!28, !16}
!29 = distinct !{!29, !16}
!30 = distinct !{!30, !16}
!31 = distinct !{!31, !16}
!32 = distinct !{!32, !16}
!33 = distinct !{!33, !16}
!34 = distinct !{!34, !16}
!35 = distinct !{!35, !16}
!36 = distinct !{!36, !16}
!37 = distinct !{!37, !16}
!38 = distinct !{!38, !16}
!39 = distinct !{!39, !16}
!40 = distinct !{!40, !16}
!41 = distinct !{!41, !16}
!42 = distinct !{!42, !16}
!43 = distinct !{!43, !16}
!44 = distinct !{!44, !16}
!45 = distinct !{!45, !16}
!46 = distinct !{!46, !16}
!47 = distinct !{!47, !16}
!48 = distinct !{!48, !16}
!49 = distinct !{!49, !16}
!50 = distinct !{!50, !16}
!51 = distinct !{!51, !16}
!52 = distinct !{!52, !16}
!53 = distinct !{!53, !16}
!54 = distinct !{!54, !16}
!55 = distinct !{!55, !16}
!56 = distinct !{!56, !16}
!57 = distinct !{!57, !16}
!58 = distinct !{!58, !16}
!59 = distinct !{!59, !16}
!60 = distinct !{!60, !16}
!61 = distinct !{!61, !16}
!62 = distinct !{!62, !16}
!63 = distinct !{!63, !16}
!64 = distinct !{!64, !16}
!65 = distinct !{!65, !16}
!66 = distinct !{!66, !16}
!67 = distinct !{!67, !16}
!68 = distinct !{!68, !16}
!69 = distinct !{!69, !16}
!70 = distinct !{!70, !16}
!71 = distinct !{!71, !16}
!72 = distinct !{!72, !16}
!73 = distinct !{!73, !16}
!74 = distinct !{!74, !16}
!75 = distinct !{!75, !16}
!76 = distinct !{!76, !16}
!77 = distinct !{!77, !16}
!78 = distinct !{!78, !16}
