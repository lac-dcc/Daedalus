; ModuleID = 'fhourstones.e.bc.ll'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@history = internal unnamed_addr global [2 x [56 x i32]] [[56 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0, i32 1, i32 2, i32 4, i32 2, i32 1, i32 0, i32 -1, i32 1, i32 3, i32 5, i32 7, i32 5, i32 3, i32 1, i32 -1, i32 2, i32 5, i32 8, i32 10, i32 8, i32 5, i32 2, i32 -1, i32 2, i32 5, i32 8, i32 10, i32 8, i32 5, i32 2, i32 -1, i32 1, i32 3, i32 5, i32 7, i32 5, i32 3, i32 1, i32 -1, i32 0, i32 1, i32 2, i32 4, i32 2, i32 1, i32 0], [56 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0, i32 1, i32 2, i32 4, i32 2, i32 1, i32 0, i32 -1, i32 1, i32 3, i32 5, i32 7, i32 5, i32 3, i32 1, i32 -1, i32 2, i32 5, i32 8, i32 10, i32 8, i32 5, i32 2, i32 -1, i32 2, i32 5, i32 8, i32 10, i32 8, i32 5, i32 2, i32 -1, i32 1, i32 3, i32 5, i32 7, i32 5, i32 3, i32 1, i32 -1, i32 0, i32 1, i32 2, i32 4, i32 2, i32 1, i32 0]], align 16
@nodes = internal unnamed_addr global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"%c%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"##-<=>+#\00", align 1
@msecs = internal unnamed_addr global i64 0, align 8
@.str.2 = private unnamed_addr constant [16 x i8] c"Fhourstones 2.0\00", align 1
@.str.3 = private unnamed_addr constant [54 x i8] c"Using %d transposition table entries with %d probes.\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"Solving %d-ply position after \00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c" . . .\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"score = %d (%c)  work = %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"%lu pos / %lu msec = %.1f Kpos/sec\0A\00", align 1
@plycnt = internal unnamed_addr global i32 0, align 4
@dias = internal unnamed_addr global [19 x i32] zeroinitializer, align 16
@height = internal unnamed_addr global [128 x i32] zeroinitializer, align 16
@rows = internal unnamed_addr global [8 x i32] zeroinitializer, align 16
@colthr = internal unnamed_addr global [128 x i32] zeroinitializer, align 16
@.str.13 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@moves = internal unnamed_addr global [44 x i32] zeroinitializer, align 16
@millisecs.Time = internal unnamed_addr global i64 0, align 8
@ht = internal unnamed_addr global ptr null, align 8
@he = internal unnamed_addr global ptr null, align 8
@.str.24 = private unnamed_addr constant [30 x i8] c"Failed to allocate %u bytes.\0A\00", align 1
@hits = internal unnamed_addr global i64 0, align 8
@posed = internal unnamed_addr global i64 0, align 8
@columns = internal unnamed_addr global [128 x i32] zeroinitializer, align 16
@lock = internal unnamed_addr global i32 0, align 4
@htindex = internal unnamed_addr global i32 0, align 4
@stride = internal unnamed_addr global i32 0, align 4
@.str.1.37 = private unnamed_addr constant [19 x i8] c"store rate = %.3f\0A\00", align 1
@.str.2.38 = private unnamed_addr constant [45 x i8] c"- %5.3f  < %5.3f  = %5.3f  > %5.3f  + %5.3f\0A\00", align 1
@.str.3.39 = private unnamed_addr constant [6 x i8] c"%7d%c\00", align 1

; Function Attrs: nounwind optsize uwtable
define dso_local i32 @main() #0 {
  %1 = alloca [32 x i32], align 16
  %2 = alloca [8 x i32], align 16
  br label %3

3:                                                ; preds = %3, %0
  %4 = phi i64 [ 8, %0 ], [ %8, %3 ]
  %5 = getelementptr inbounds [128 x i32], ptr @colthr, i64 0, i64 %4
  store i32 1, ptr %5, align 16, !tbaa !7
  %6 = or i64 %4, 7
  %7 = getelementptr inbounds [128 x i32], ptr @colthr, i64 0, i64 %6
  store i32 2, ptr %7, align 4, !tbaa !7
  %8 = add nuw nsw i64 %4, 8
  %9 = icmp ult i64 %4, 120
  br i1 %9, label %3, label %10, !llvm.loop !11

10:                                               ; preds = %3
  store i32 0, ptr @plycnt, align 4, !tbaa !7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(76) @dias, i8 0, i64 76, i1 false), !tbaa !7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) @rows, i8 0, i64 32, i1 false), !tbaa !7
  br label %11

11:                                               ; preds = %11, %10
  %12 = phi i64 [ 0, %10 ], [ %15, %11 ]
  %13 = getelementptr inbounds [128 x i32], ptr @columns, i64 0, i64 %12
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, ptr %13, align 16, !tbaa !7
  %14 = getelementptr inbounds [128 x i32], ptr @height, i64 0, i64 %12
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, ptr %14, align 16, !tbaa !7
  %15 = add nuw nsw i64 %12, 4
  %16 = icmp eq i64 %15, 8
  br i1 %16, label %17, label %11, !llvm.loop !13

17:                                               ; preds = %11
  %18 = tail call noalias dereferenceable_or_null(4200044) ptr @calloc(i64 noundef 1050011, i64 noundef 4) #13
  store ptr %18, ptr @ht, align 8, !tbaa !16
  %19 = tail call noalias dereferenceable_or_null(1050011) ptr @calloc(i64 noundef 1050011, i64 noundef 1) #13
  store ptr %19, ptr @he, align 8, !tbaa !16
  %20 = icmp eq ptr %18, null
  %21 = icmp eq ptr %19, null
  %22 = or i1 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.24, i64 noundef 5250055) #14
  tail call void @exit(i32 noundef 0) #15
  unreachable

25:                                               ; preds = %17
  %26 = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) @.str.2) #14
  %27 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef 1050011, i32 noundef 8) #14
  %28 = getelementptr inbounds [8 x i32], ptr %2, i64 0, i64 4
  br label %29

29:                                               ; preds = %207, %25
  store i32 0, ptr @plycnt, align 4, !tbaa !7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(76) @dias, i8 0, i64 76, i1 false), !tbaa !7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) @rows, i8 0, i64 32, i1 false), !tbaa !7
  br label %30

30:                                               ; preds = %30, %29
  %31 = phi i64 [ 0, %29 ], [ %34, %30 ]
  %32 = getelementptr inbounds [128 x i32], ptr @columns, i64 0, i64 %31
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, ptr %32, align 16, !tbaa !7
  %33 = getelementptr inbounds [128 x i32], ptr @height, i64 0, i64 %31
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, ptr %33, align 16, !tbaa !7
  %34 = add nuw nsw i64 %31, 4
  %35 = icmp eq i64 %34, 8
  br i1 %35, label %36, label %30, !llvm.loop !18

36:                                               ; preds = %53, %30
  %37 = tail call i32 @getchar() #14
  %38 = icmp eq i32 %37, -1
  br i1 %38, label %208, label %39

39:                                               ; preds = %36
  %40 = add i32 %37, -49
  %41 = icmp ult i32 %40, 7
  br i1 %41, label %50, label %42

42:                                               ; preds = %39
  %43 = add i32 %37, -65
  %44 = icmp ult i32 %43, 7
  br i1 %44, label %50, label %45

45:                                               ; preds = %42
  %46 = add i32 %37, -97
  %47 = icmp ult i32 %46, 7
  br i1 %47, label %50, label %48

48:                                               ; preds = %45
  %49 = icmp eq i32 %37, 10
  br i1 %49, label %54, label %53

50:                                               ; preds = %45, %42, %39
  %51 = phi i32 [ -48, %39 ], [ -64, %42 ], [ -96, %45 ]
  %52 = add nsw i32 %51, %37
  tail call fastcc void @makemove(i32 noundef %52) #16
  br label %53

53:                                               ; preds = %50, %48
  br label %36, !llvm.loop !19

54:                                               ; preds = %48
  %55 = load i32, ptr @plycnt, align 4, !tbaa !7
  %56 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i32 noundef %55) #14
  tail call fastcc void @printMoves() #16
  %57 = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) @.str.5) #14
  %58 = load ptr, ptr @he, align 8, !tbaa !16
  br label %59

59:                                               ; preds = %69, %54
  %60 = phi i64 [ 0, %54 ], [ %70, %69 ]
  %61 = getelementptr inbounds i8, ptr %58, i64 %60
  %62 = load i8, ptr %61, align 1, !tbaa !20
  %63 = and i8 %62, 31
  %64 = icmp eq i8 %63, 31
  br i1 %64, label %69, label %65

65:                                               ; preds = %59
  %66 = icmp ult i8 %63, 16
  %67 = select i1 %66, i8 %63, i8 4
  %68 = sub i8 %62, %67
  store i8 %68, ptr %61, align 1, !tbaa !20
  br label %69

69:                                               ; preds = %65, %59
  %70 = add nuw nsw i64 %60, 1
  %71 = icmp eq i64 %70, 1050011
  br i1 %71, label %72, label %59, !llvm.loop !21

72:                                               ; preds = %69
  store i64 0, ptr @hits, align 8, !tbaa !22
  store i64 0, ptr @posed, align 8, !tbaa !22
  store i64 0, ptr @nodes, align 8, !tbaa !22
  store i64 1, ptr @msecs, align 8, !tbaa !22
  %73 = load i32, ptr @plycnt, align 4, !tbaa !7
  %74 = and i32 %73, 1
  %75 = xor i32 %74, 1
  %76 = shl nuw nsw i32 1, %75
  br label %77

77:                                               ; preds = %96, %72
  %78 = phi i64 [ 1, %72 ], [ %97, %96 ]
  %79 = getelementptr inbounds [0 x i32], ptr @height, i64 0, i64 %78
  %80 = load i32, ptr %79, align 4, !tbaa !7
  %81 = icmp slt i32 %80, 7
  br i1 %81, label %82, label %96

82:                                               ; preds = %77
  %83 = trunc i64 %78 to i32
  %84 = tail call fastcc i32 @wins(i32 noundef %83, i32 noundef %80, i32 noundef %76) #16
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %93

86:                                               ; preds = %82
  %87 = getelementptr inbounds [0 x i32], ptr @columns, i64 0, i64 %78
  %88 = load i32, ptr %87, align 4, !tbaa !7
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds [0 x i32], ptr @colthr, i64 0, i64 %89
  %91 = load i32, ptr %90, align 4, !tbaa !7
  %92 = icmp eq i32 %91, %76
  br i1 %92, label %93, label %96

93:                                               ; preds = %86, %82
  %94 = icmp eq i32 %75, 0
  %95 = select i1 %94, i32 -64, i32 64
  br label %125

96:                                               ; preds = %86, %77
  %97 = add nuw nsw i64 %78, 1
  %98 = icmp eq i64 %97, 8
  br i1 %98, label %99, label %77, !llvm.loop !24

99:                                               ; preds = %96
  %100 = tail call fastcc i32 @transpose() #16
  %101 = icmp ne i32 %100, -128
  %102 = and i32 %100, 32
  %103 = icmp eq i32 %102, 0
  %104 = and i1 %101, %103
  br i1 %104, label %125, label %105

105:                                              ; preds = %99
  %106 = load i64, ptr @millisecs.Time, align 8, !tbaa !22
  %107 = add nsw i64 %106, 1
  store i64 %107, ptr @millisecs.Time, align 8, !tbaa !22
  store i64 %106, ptr @msecs, align 8, !tbaa !22
  %108 = tail call fastcc i32 @ab(i32 noundef -2, i32 noundef 2) #14, !range !25
  %109 = load i64, ptr @posed, align 8, !tbaa !22
  %110 = icmp ult i64 %109, 2
  br i1 %110, label %117, label %111

111:                                              ; preds = %111, %105
  %112 = phi i64 [ %114, %111 ], [ %109, %105 ]
  %113 = phi i32 [ %115, %111 ], [ 1, %105 ]
  %114 = ashr i64 %112, 1
  %115 = add nuw nsw i32 %113, 1
  %116 = icmp ult i64 %112, 4
  br i1 %116, label %117, label %111, !llvm.loop !26

117:                                              ; preds = %111, %105
  %118 = phi i32 [ 1, %105 ], [ %115, %111 ]
  %119 = load i64, ptr @millisecs.Time, align 8, !tbaa !22
  %120 = add nsw i64 %119, 1
  store i64 %120, ptr @millisecs.Time, align 8, !tbaa !22
  %121 = load i64, ptr @msecs, align 8, !tbaa !22
  %122 = sub nsw i64 %120, %121
  store i64 %122, ptr @msecs, align 8, !tbaa !22
  %123 = shl i32 %108, 5
  %124 = or i32 %118, %123
  br label %125

125:                                              ; preds = %117, %99, %93
  %126 = phi i32 [ %95, %93 ], [ %124, %117 ], [ %100, %99 ]
  %127 = ashr i32 %126, 5
  %128 = add nsw i32 %127, 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds [9 x i8], ptr @.str.1, i64 0, i64 %129
  %131 = load i8, ptr %130, align 1, !tbaa !20
  %132 = sext i8 %131 to i32
  %133 = and i32 %126, 31
  %134 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, i32 noundef %127, i32 noundef %132, i32 noundef %133) #14
  %135 = load i64, ptr @nodes, align 8, !tbaa !22
  %136 = load i64, ptr @msecs, align 8, !tbaa !22
  %137 = sitofp i64 %135 to double
  %138 = sitofp i64 %136 to double
  %139 = fdiv double %137, %138
  %140 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i64 noundef %135, i64 noundef %136, double noundef %139) #14
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %1) #17
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %1, i8 0, i64 128, i1 false), !tbaa !7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %2, i8 0, i64 32, i1 false), !tbaa !7
  %141 = load ptr, ptr @he, align 8, !tbaa !16
  br label %142

142:                                              ; preds = %161, %125
  %143 = phi i64 [ 0, %125 ], [ %162, %161 ]
  %144 = getelementptr inbounds i8, ptr %141, i64 %143
  %145 = load i8, ptr %144, align 1, !tbaa !20
  %146 = and i8 %145, 31
  %147 = zext i8 %146 to i64
  %148 = getelementptr inbounds [32 x i32], ptr %1, i64 0, i64 %147
  %149 = load i32, ptr %148, align 4, !tbaa !7
  %150 = add nsw i32 %149, 1
  store i32 %150, ptr %148, align 4, !tbaa !7
  %151 = sext i8 %145 to i32
  %152 = and i32 %151, 31
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %161, label %154

154:                                              ; preds = %142
  %155 = ashr i32 %151, 5
  %156 = add nsw i32 %155, 4
  %157 = zext i32 %156 to i64
  %158 = getelementptr inbounds [8 x i32], ptr %2, i64 0, i64 %157
  %159 = load i32, ptr %158, align 4, !tbaa !7
  %160 = add nsw i32 %159, 1
  store i32 %160, ptr %158, align 4, !tbaa !7
  br label %161

161:                                              ; preds = %154, %142
  %162 = add nuw nsw i64 %143, 1
  %163 = icmp eq i64 %162, 1050011
  br i1 %163, label %164, label %142, !llvm.loop !27

164:                                              ; preds = %161
  %165 = load <4 x i32>, ptr %2, align 16
  %166 = load <4 x i32>, ptr %28, align 16
  %167 = add <4 x i32> %166, %165
  %168 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %167)
  %169 = icmp sgt i32 %168, 0
  br i1 %169, label %170, label %196

170:                                              ; preds = %164
  %171 = extractelement <4 x i32> %166, i64 2
  %172 = extractelement <4 x i32> %166, i64 1
  %173 = extractelement <4 x i32> %166, i64 0
  %174 = extractelement <4 x i32> %165, i64 3
  %175 = extractelement <4 x i32> %165, i64 2
  %176 = load i64, ptr @posed, align 8, !tbaa !22
  %177 = icmp eq i64 %176, 0
  %178 = load i64, ptr @hits, align 8
  %179 = sitofp i64 %178 to double
  %180 = sitofp i64 %176 to double
  %181 = fdiv double %179, %180
  %182 = select i1 %177, double 0.000000e+00, double %181
  %183 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1.37, double noundef %182) #14
  %184 = sitofp i32 %175 to double
  %185 = sitofp i32 %168 to double
  %186 = fdiv double %184, %185
  %187 = sitofp i32 %174 to double
  %188 = fdiv double %187, %185
  %189 = sitofp i32 %173 to double
  %190 = fdiv double %189, %185
  %191 = sitofp i32 %172 to double
  %192 = fdiv double %191, %185
  %193 = sitofp i32 %171 to double
  %194 = fdiv double %193, %185
  %195 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2.38, double noundef %186, double noundef %188, double noundef %190, double noundef %192, double noundef %194) #14
  br label %196

196:                                              ; preds = %170, %164
  br label %197

197:                                              ; preds = %197, %196
  %198 = phi i64 [ %205, %197 ], [ 0, %196 ]
  %199 = getelementptr inbounds [32 x i32], ptr %1, i64 0, i64 %198
  %200 = load i32, ptr %199, align 4, !tbaa !7
  %201 = and i64 %198, 7
  %202 = icmp eq i64 %201, 7
  %203 = select i1 %202, i32 10, i32 9
  %204 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3.39, i32 noundef %200, i32 noundef %203) #14
  %205 = add nuw nsw i64 %198, 1
  %206 = icmp eq i64 %205, 32
  br i1 %206, label %207, label %197, !llvm.loop !28

207:                                              ; preds = %197
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #17
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %1) #17
  br label %29

208:                                              ; preds = %36
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind optsize
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #3

; Function Attrs: nofree nounwind optsize
declare noundef i32 @getchar() local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define internal fastcc void @makemove(i32 noundef %0) unnamed_addr #5 {
  %2 = load i32, ptr @plycnt, align 4, !tbaa !7
  %3 = add nsw i32 %2, 1
  store i32 %3, ptr @plycnt, align 4, !tbaa !7
  %4 = sext i32 %3 to i64
  %5 = getelementptr inbounds [44 x i32], ptr @moves, i64 0, i64 %4
  store i32 %0, ptr %5, align 4, !tbaa !7
  %6 = and i32 %3, 1
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds [128 x i32], ptr @height, i64 0, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !7
  %10 = add nsw i32 %9, 1
  store i32 %10, ptr %8, align 4, !tbaa !7
  %11 = getelementptr inbounds [128 x i32], ptr @columns, i64 0, i64 %7
  %12 = load i32, ptr %11, align 4, !tbaa !7
  %13 = shl i32 %12, 1
  %14 = or i32 %13, %6
  store i32 %14, ptr %11, align 4, !tbaa !7
  %15 = shl nsw i32 %0, 1
  %16 = or i32 %6, %15
  %17 = shl nuw i32 1, %16
  %18 = sext i32 %9 to i64
  %19 = getelementptr inbounds [8 x i32], ptr @rows, i64 0, i64 %18
  %20 = load i32, ptr %19, align 4, !tbaa !7
  %21 = or i32 %20, %17
  store i32 %21, ptr %19, align 4, !tbaa !7
  %22 = add nsw i32 %0, 5
  %23 = add nsw i32 %9, %22
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [19 x i32], ptr @dias, i64 0, i64 %24
  %26 = load i32, ptr %25, align 4, !tbaa !7
  %27 = or i32 %26, %17
  store i32 %27, ptr %25, align 4, !tbaa !7
  %28 = sub nsw i32 %22, %9
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [19 x i32], ptr @dias, i64 0, i64 %29
  %31 = load i32, ptr %30, align 4, !tbaa !7
  %32 = or i32 %31, %17
  store i32 %32, ptr %30, align 4, !tbaa !7
  ret void
}

; Function Attrs: nofree nounwind optsize uwtable
define internal fastcc void @printMoves() unnamed_addr #6 {
  %1 = load i32, ptr @plycnt, align 4, !tbaa !7
  %2 = icmp slt i32 %1, 1
  br i1 %2, label %12, label %3

3:                                                ; preds = %3, %0
  %4 = phi i64 [ %8, %3 ], [ 1, %0 ]
  %5 = getelementptr inbounds [44 x i32], ptr @moves, i64 0, i64 %4
  %6 = load i32, ptr %5, align 4, !tbaa !7
  %7 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, i32 noundef %6) #14
  %8 = add nuw nsw i64 %4, 1
  %9 = load i32, ptr @plycnt, align 4, !tbaa !7
  %10 = sext i32 %9 to i64
  %11 = icmp slt i64 %4, %10
  br i1 %11, label %3, label %12, !llvm.loop !29

12:                                               ; preds = %3, %0
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal fastcc i32 @wins(i32 noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #7 {
  %4 = shl nsw i32 %0, 1
  %5 = shl i32 %2, %4
  %6 = sext i32 %1 to i64
  %7 = getelementptr inbounds [8 x i32], ptr @rows, i64 0, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !7
  %9 = or i32 %8, %5
  %10 = shl i32 %9, 2
  %11 = and i32 %10, %9
  %12 = shl i32 %11, 4
  %13 = and i32 %12, %11
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %39

15:                                               ; preds = %3
  %16 = add nsw i32 %0, 5
  %17 = add nsw i32 %16, %1
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [19 x i32], ptr @dias, i64 0, i64 %18
  %20 = load i32, ptr %19, align 4, !tbaa !7
  %21 = or i32 %20, %5
  %22 = shl i32 %21, 2
  %23 = and i32 %22, %21
  %24 = shl i32 %23, 4
  %25 = and i32 %24, %23
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %39

27:                                               ; preds = %15
  %28 = sub nsw i32 %16, %1
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [19 x i32], ptr @dias, i64 0, i64 %29
  %31 = load i32, ptr %30, align 4, !tbaa !7
  %32 = or i32 %31, %5
  %33 = shl i32 %32, 2
  %34 = and i32 %33, %32
  %35 = shl i32 %34, 4
  %36 = and i32 %35, %34
  %37 = icmp ne i32 %36, 0
  %38 = zext i1 %37 to i32
  br label %39

39:                                               ; preds = %27, %15, %3
  %40 = phi i32 [ %38, %27 ], [ 1, %3 ], [ 1, %15 ]
  ret i32 %40
}

; Function Attrs: nofree nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc i32 @transpose() unnamed_addr #8 {
  tail call fastcc void @hash() #14
  %1 = load i32, ptr @htindex, align 4, !tbaa !7
  %2 = load ptr, ptr @ht, align 8, !tbaa !16
  %3 = load i32, ptr @lock, align 4, !tbaa !7
  %4 = load i32, ptr @stride, align 4
  br label %5

5:                                                ; preds = %17, %0
  %6 = phi i32 [ %1, %0 ], [ %21, %17 ]
  %7 = phi i32 [ 0, %0 ], [ %22, %17 ]
  %8 = sext i32 %6 to i64
  %9 = getelementptr inbounds i32, ptr %2, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !7
  %11 = icmp eq i32 %10, %3
  br i1 %11, label %12, label %17

12:                                               ; preds = %5
  %.lcssa = phi i64 [ %8, %5 ]
  %13 = load ptr, ptr @he, align 8, !tbaa !16
  %14 = getelementptr inbounds i8, ptr %13, i64 %.lcssa
  %15 = load i8, ptr %14, align 1, !tbaa !20
  %16 = sext i8 %15 to i32
  br label %24

17:                                               ; preds = %5
  %18 = add nsw i32 %6, %4
  %19 = icmp sgt i32 %18, 1050010
  %20 = add nsw i32 %18, -1050011
  %21 = select i1 %19, i32 %20, i32 %18
  %22 = add nuw nsw i32 %7, 1
  %23 = icmp eq i32 %22, 8
  br i1 %23, label %24, label %5, !llvm.loop !30

24:                                               ; preds = %17, %12
  %25 = phi i32 [ %16, %12 ], [ -128, %17 ]
  ret i32 %25
}

; Function Attrs: nofree nounwind optsize uwtable
define internal fastcc i32 @ab(i32 noundef %0, i32 noundef %1) unnamed_addr #6 {
  %3 = alloca [8 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #17
  %4 = load i64, ptr @nodes, align 8, !tbaa !22
  %5 = add nsw i64 %4, 1
  store i64 %5, ptr @nodes, align 8, !tbaa !22
  %6 = load i32, ptr @plycnt, align 4, !tbaa !7
  %7 = icmp eq i32 %6, 41
  br i1 %7, label %248, label %8

8:                                                ; preds = %2
  %9 = and i32 %6, 1
  %10 = xor i32 %9, 1
  %11 = shl nuw nsw i32 1, %9
  br label %12

12:                                               ; preds = %66, %8
  %13 = phi i64 [ 1, %8 ], [ %68, %66 ]
  %14 = phi i32 [ 0, %8 ], [ %67, %66 ]
  %15 = getelementptr inbounds [0 x i32], ptr @height, i64 0, i64 %13
  %16 = load i32, ptr %15, align 4, !tbaa !7
  %17 = icmp slt i32 %16, 7
  br i1 %17, label %18, label %66

18:                                               ; preds = %12
  %19 = trunc i64 %13 to i32
  %20 = tail call fastcc i32 @wins(i32 noundef %19, i32 noundef %16, i32 noundef 3) #16
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %18
  %23 = getelementptr inbounds [0 x i32], ptr @columns, i64 0, i64 %13
  %24 = load i32, ptr %23, align 4, !tbaa !7
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [0 x i32], ptr @colthr, i64 0, i64 %25
  %27 = load i32, ptr %26, align 4, !tbaa !7
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %56, label %29

29:                                               ; preds = %22, %18
  %.lcssa11 = phi i64 [ %13, %22 ], [ %13, %18 ]
  %.lcssa9 = phi i32 [ %16, %22 ], [ %16, %18 ]
  %.lcssa8 = phi i32 [ %19, %22 ], [ %19, %18 ]
  %30 = icmp slt i32 %.lcssa9, 6
  br i1 %30, label %31, label %35

31:                                               ; preds = %29
  %32 = add nsw i32 %.lcssa9, 1
  %33 = tail call fastcc i32 @wins(i32 noundef %.lcssa8, i32 noundef %32, i32 noundef %11) #16
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %248

35:                                               ; preds = %31, %29
  %36 = icmp ult i32 %.lcssa8, 7
  br i1 %36, label %37, label %73

37:                                               ; preds = %54, %35
  %38 = phi i64 [ %39, %54 ], [ %.lcssa11, %35 ]
  %39 = add nuw nsw i64 %38, 1
  %40 = getelementptr inbounds [0 x i32], ptr @height, i64 0, i64 %39
  %41 = load i32, ptr %40, align 4, !tbaa !7
  %42 = icmp slt i32 %41, 7
  br i1 %42, label %43, label %54

43:                                               ; preds = %37
  %44 = trunc i64 %39 to i32
  %45 = tail call fastcc i32 @wins(i32 noundef %44, i32 noundef %41, i32 noundef 3) #16
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %248

47:                                               ; preds = %43
  %48 = getelementptr inbounds [0 x i32], ptr @columns, i64 0, i64 %39
  %49 = load i32, ptr %48, align 4, !tbaa !7
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [0 x i32], ptr @colthr, i64 0, i64 %50
  %52 = load i32, ptr %51, align 4, !tbaa !7
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %248

54:                                               ; preds = %47, %37
  %55 = icmp eq i64 %39, 7
  br i1 %55, label %73, label %37, !llvm.loop !31

56:                                               ; preds = %22
  %57 = icmp slt i32 %16, 6
  br i1 %57, label %58, label %62

58:                                               ; preds = %56
  %59 = add nsw i32 %16, 1
  %60 = tail call fastcc i32 @wins(i32 noundef %19, i32 noundef %59, i32 noundef %11) #16
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %58, %56
  %63 = add nsw i32 %14, 1
  %64 = sext i32 %14 to i64
  %65 = getelementptr inbounds [8 x i32], ptr %3, i64 0, i64 %64
  store i32 %19, ptr %65, align 4, !tbaa !7
  br label %66

66:                                               ; preds = %62, %58, %12
  %67 = phi i32 [ %14, %58 ], [ %63, %62 ], [ %14, %12 ]
  %68 = add nuw nsw i64 %13, 1
  %69 = icmp eq i64 %68, 8
  br i1 %69, label %70, label %12, !llvm.loop !32

70:                                               ; preds = %66
  %.lcssa13 = phi i32 [ %67, %66 ]
  switch i32 %.lcssa13, label %79 [
    i32 0, label %248
    i32 1, label %71
  ]

71:                                               ; preds = %70
  %72 = load i32, ptr %3, align 16, !tbaa !7
  br label %73

73:                                               ; preds = %71, %54, %35
  %74 = phi i32 [ %72, %71 ], [ %.lcssa8, %35 ], [ %.lcssa8, %54 ]
  tail call fastcc void @makemove(i32 noundef %74) #16
  %75 = sub nsw i32 0, %1
  %76 = sub nsw i32 0, %0
  %77 = tail call fastcc i32 @ab(i32 noundef %75, i32 noundef %76) #14, !range !25
  %78 = sub nsw i32 0, %77
  tail call fastcc void @backmove() #16
  br label %248

79:                                               ; preds = %70
  %80 = tail call fastcc i32 @transpose() #16
  %81 = icmp eq i32 %80, -128
  br i1 %81, label %88, label %82

82:                                               ; preds = %79
  %83 = ashr i32 %80, 5
  switch i32 %83, label %248 [
    i32 -1, label %84
    i32 1, label %86
  ]

84:                                               ; preds = %82
  %85 = icmp sgt i32 %0, -1
  br i1 %85, label %248, label %88

86:                                               ; preds = %82
  %87 = icmp slt i32 %1, 1
  br i1 %87, label %248, label %88

88:                                               ; preds = %86, %84, %79
  %89 = phi i32 [ 0, %84 ], [ %1, %86 ], [ %1, %79 ]
  %90 = phi i32 [ %0, %84 ], [ 0, %86 ], [ %0, %79 ]
  %91 = load i64, ptr @posed, align 8, !tbaa !22
  %92 = icmp sgt i32 %.lcssa13, 0
  br i1 %92, label %93, label %187

93:                                               ; preds = %88
  %94 = zext i32 %10 to i64
  %95 = sub nsw i32 0, %89
  %96 = zext i32 %.lcssa13 to i64
  br label %97

97:                                               ; preds = %148, %93
  %98 = phi i64 [ 0, %93 ], [ %152, %148 ]
  %99 = phi i32 [ %90, %93 ], [ %151, %148 ]
  %100 = phi i32 [ 0, %93 ], [ %150, %148 ]
  %101 = phi i32 [ -999999, %93 ], [ %149, %148 ]
  %102 = phi i32 [ 0, %93 ], [ %.lcssa2, %148 ]
  br label %103

103:                                              ; preds = %103, %97
  %104 = phi i64 [ %98, %97 ], [ %121, %103 ]
  %105 = phi i32 [ -999999, %97 ], [ %120, %103 ]
  %106 = phi i32 [ %102, %97 ], [ %119, %103 ]
  %107 = getelementptr inbounds [8 x i32], ptr %3, i64 0, i64 %104
  %108 = load i32, ptr %107, align 4, !tbaa !7
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds [0 x i32], ptr @height, i64 0, i64 %109
  %111 = load i32, ptr %110, align 4, !tbaa !7
  %112 = shl i32 %111, 3
  %113 = or i32 %112, %108
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds [2 x [56 x i32]], ptr @history, i64 0, i64 %94, i64 %114
  %116 = load i32, ptr %115, align 4, !tbaa !7
  %117 = icmp sgt i32 %116, %105
  %118 = trunc i64 %104 to i32
  %119 = select i1 %117, i32 %118, i32 %106
  %120 = tail call i32 @llvm.smax.i32(i32 %116, i32 %105)
  %121 = add nuw nsw i64 %104, 1
  %122 = icmp ult i64 %121, %96
  br i1 %122, label %103, label %123, !llvm.loop !33

123:                                              ; preds = %103
  %.lcssa2 = phi i32 [ %119, %103 ]
  %124 = sext i32 %.lcssa2 to i64
  %125 = getelementptr inbounds [8 x i32], ptr %3, i64 0, i64 %124
  %126 = load i32, ptr %125, align 4, !tbaa !7
  %127 = zext i32 %.lcssa2 to i64
  %128 = icmp eq i64 %98, %127
  br i1 %128, label %132, label %129

129:                                              ; preds = %123
  %130 = getelementptr inbounds [8 x i32], ptr %3, i64 0, i64 %98
  %131 = load i32, ptr %130, align 4, !tbaa !7
  store i32 %131, ptr %125, align 4, !tbaa !7
  store i32 %126, ptr %130, align 4, !tbaa !7
  br label %132

132:                                              ; preds = %129, %123
  tail call fastcc void @makemove(i32 noundef %126) #16
  %133 = sub nsw i32 0, %99
  %134 = tail call fastcc i32 @ab(i32 noundef %95, i32 noundef %133) #14, !range !25
  %135 = sub nsw i32 0, %134
  tail call fastcc void @backmove() #16
  %136 = icmp slt i32 %101, %135
  br i1 %136, label %137, label %148

137:                                              ; preds = %132
  %138 = icmp slt i32 %99, %135
  %139 = trunc i64 %98 to i32
  br i1 %138, label %140, label %148

140:                                              ; preds = %137
  %141 = icmp sgt i32 %89, %135
  br i1 %141, label %148, label %142

142:                                              ; preds = %140
  %.lcssa6 = phi i32 [ %134, %140 ]
  %.lcssa4 = phi i32 [ %135, %140 ]
  %.lcssa3 = phi i32 [ %139, %140 ]
  %143 = icmp eq i32 %.lcssa6, 0
  br i1 %143, label %144, label %154

144:                                              ; preds = %142
  %145 = add nsw i32 %.lcssa13, -1
  %146 = icmp sgt i32 %145, %.lcssa3
  %147 = zext i1 %146 to i32
  br label %154

148:                                              ; preds = %140, %137, %132
  %149 = phi i32 [ %135, %140 ], [ %135, %137 ], [ %101, %132 ]
  %150 = phi i32 [ %139, %140 ], [ %139, %137 ], [ %100, %132 ]
  %151 = phi i32 [ %135, %140 ], [ %99, %137 ], [ %99, %132 ]
  %152 = add nuw nsw i64 %98, 1
  %153 = icmp eq i64 %152, %96
  br i1 %153, label %154, label %97, !llvm.loop !34

154:                                              ; preds = %148, %144, %142
  %155 = phi i32 [ %.lcssa4, %142 ], [ %147, %144 ], [ %149, %148 ]
  %156 = phi i32 [ %.lcssa3, %142 ], [ %.lcssa3, %144 ], [ %150, %148 ]
  %157 = icmp sgt i32 %156, 0
  br i1 %157, label %158, label %187

158:                                              ; preds = %154
  %159 = zext i32 %156 to i64
  br label %160

160:                                              ; preds = %160, %158
  %161 = phi i64 [ 0, %158 ], [ %173, %160 ]
  %162 = getelementptr inbounds [8 x i32], ptr %3, i64 0, i64 %161
  %163 = load i32, ptr %162, align 4, !tbaa !7
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds [0 x i32], ptr @height, i64 0, i64 %164
  %166 = load i32, ptr %165, align 4, !tbaa !7
  %167 = shl i32 %166, 3
  %168 = or i32 %167, %163
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds [2 x [56 x i32]], ptr @history, i64 0, i64 %94, i64 %169
  %171 = load i32, ptr %170, align 4, !tbaa !7
  %172 = add nsw i32 %171, -1
  store i32 %172, ptr %170, align 4, !tbaa !7
  %173 = add nuw nsw i64 %161, 1
  %174 = icmp eq i64 %173, %159
  br i1 %174, label %175, label %160, !llvm.loop !35

175:                                              ; preds = %160
  %176 = getelementptr inbounds [8 x i32], ptr %3, i64 0, i64 %159
  %177 = load i32, ptr %176, align 4, !tbaa !7
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds [0 x i32], ptr @height, i64 0, i64 %178
  %180 = load i32, ptr %179, align 4, !tbaa !7
  %181 = shl i32 %180, 3
  %182 = or i32 %181, %177
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds [2 x [56 x i32]], ptr @history, i64 0, i64 %94, i64 %183
  %185 = load i32, ptr %184, align 4, !tbaa !7
  %186 = add nsw i32 %185, %156
  store i32 %186, ptr %184, align 4, !tbaa !7
  br label %187

187:                                              ; preds = %175, %154, %88
  %188 = phi i32 [ %155, %175 ], [ %155, %154 ], [ -999999, %88 ]
  %189 = load i64, ptr @posed, align 8, !tbaa !22
  %190 = sub nsw i64 %189, %91
  %191 = icmp ult i64 %190, 2
  br i1 %191, label %198, label %192

192:                                              ; preds = %192, %187
  %193 = phi i64 [ %195, %192 ], [ %190, %187 ]
  %194 = phi i32 [ %196, %192 ], [ 1, %187 ]
  %195 = ashr i64 %193, 1
  %196 = add nuw nsw i32 %194, 1
  %197 = icmp ult i64 %193, 4
  br i1 %197, label %198, label %192, !llvm.loop !36

198:                                              ; preds = %192, %187
  %199 = phi i32 [ 1, %187 ], [ %196, %192 ]
  br i1 %81, label %234, label %200

200:                                              ; preds = %198
  %201 = ashr i32 %80, 5
  %202 = sub nsw i32 0, %201
  %203 = icmp eq i32 %188, %202
  %204 = select i1 %203, i32 0, i32 %188
  %205 = tail call i32 @llvm.smin.i32(i32 %199, i32 31)
  %206 = add nsw i64 %189, 1
  store i64 %206, ptr @posed, align 8, !tbaa !22
  tail call fastcc void @hash() #14
  %207 = load i32, ptr @htindex, align 4, !tbaa !7
  %208 = load ptr, ptr @ht, align 8, !tbaa !16
  %209 = load i32, ptr @lock, align 4, !tbaa !7
  %210 = load i32, ptr @stride, align 4
  br label %211

211:                                              ; preds = %226, %200
  %212 = phi i32 [ %207, %200 ], [ %230, %226 ]
  %213 = phi i32 [ 0, %200 ], [ %231, %226 ]
  %214 = sext i32 %212 to i64
  %215 = getelementptr inbounds i32, ptr %208, i64 %214
  %216 = load i32, ptr %215, align 4, !tbaa !7
  %217 = icmp eq i32 %216, %209
  br i1 %217, label %218, label %226

218:                                              ; preds = %211
  %.lcssa = phi i64 [ %214, %211 ]
  %219 = load i64, ptr @hits, align 8, !tbaa !22
  %220 = add nsw i64 %219, 1
  store i64 %220, ptr @hits, align 8, !tbaa !22
  %221 = shl i32 %204, 5
  %222 = or i32 %205, %221
  %223 = trunc i32 %222 to i8
  %224 = load ptr, ptr @he, align 8, !tbaa !16
  %225 = getelementptr inbounds i8, ptr %224, i64 %.lcssa
  store i8 %223, ptr %225, align 1, !tbaa !20
  br label %237

226:                                              ; preds = %211
  %227 = add nsw i32 %212, %210
  %228 = icmp sgt i32 %227, 1050010
  %229 = add nsw i32 %227, -1050011
  %230 = select i1 %228, i32 %229, i32 %227
  %231 = add nuw nsw i32 %213, 1
  %232 = icmp eq i32 %231, 8
  br i1 %232, label %233, label %211, !llvm.loop !37

233:                                              ; preds = %226
  tail call fastcc void @transput(i32 noundef %204, i32 noundef %205) #14
  br label %237

234:                                              ; preds = %198
  %235 = tail call i32 @llvm.smin.i32(i32 %199, i32 31)
  %236 = add nsw i64 %189, 1
  store i64 %236, ptr @posed, align 8, !tbaa !22
  tail call fastcc void @hash() #14
  tail call fastcc void @transput(i32 noundef %188, i32 noundef %235) #14
  br label %237

237:                                              ; preds = %234, %233, %218
  %238 = phi i32 [ %188, %234 ], [ %204, %218 ], [ %204, %233 ]
  %239 = load i32, ptr @plycnt, align 4, !tbaa !7
  %240 = icmp eq i32 %239, 8
  br i1 %240, label %241, label %248

241:                                              ; preds = %237
  tail call fastcc void @printMoves() #16
  %242 = add nsw i32 %238, 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds [9 x i8], ptr @.str.1, i64 0, i64 %243
  %245 = load i8, ptr %244, align 1, !tbaa !20
  %246 = sext i8 %245 to i32
  %247 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %246, i32 noundef %199) #14
  br label %248

248:                                              ; preds = %241, %237, %86, %84, %82, %73, %70, %47, %43, %31, %2
  %249 = phi i32 [ %78, %73 ], [ 0, %2 ], [ -2, %31 ], [ -2, %70 ], [ -1, %84 ], [ 1, %86 ], [ %83, %82 ], [ %238, %241 ], [ %238, %237 ], [ -2, %43 ], [ -2, %47 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #17
  ret i32 %249
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #9

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define internal fastcc void @backmove() unnamed_addr #5 {
  %1 = load i32, ptr @plycnt, align 4, !tbaa !7
  %2 = and i32 %1, 1
  %3 = add nsw i32 %1, -1
  store i32 %3, ptr @plycnt, align 4, !tbaa !7
  %4 = sext i32 %1 to i64
  %5 = getelementptr inbounds [44 x i32], ptr @moves, i64 0, i64 %4
  %6 = load i32, ptr %5, align 4, !tbaa !7
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [128 x i32], ptr @height, i64 0, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !7
  %10 = add nsw i32 %9, -1
  store i32 %10, ptr %8, align 4, !tbaa !7
  %11 = getelementptr inbounds [128 x i32], ptr @columns, i64 0, i64 %7
  %12 = load i32, ptr %11, align 4, !tbaa !7
  %13 = ashr i32 %12, 1
  store i32 %13, ptr %11, align 4, !tbaa !7
  %14 = shl nsw i32 %6, 1
  %15 = or i32 %14, %2
  %16 = shl nuw i32 1, %15
  %17 = xor i32 %16, -1
  %18 = sext i32 %10 to i64
  %19 = getelementptr inbounds [8 x i32], ptr @rows, i64 0, i64 %18
  %20 = load i32, ptr %19, align 4, !tbaa !7
  %21 = and i32 %20, %17
  store i32 %21, ptr %19, align 4, !tbaa !7
  %22 = add nsw i32 %6, 5
  %23 = add nsw i32 %10, %22
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [19 x i32], ptr @dias, i64 0, i64 %24
  %26 = load i32, ptr %25, align 4, !tbaa !7
  %27 = and i32 %26, %17
  store i32 %27, ptr %25, align 4, !tbaa !7
  %28 = sub nsw i32 %22, %10
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [19 x i32], ptr @dias, i64 0, i64 %29
  %31 = load i32, ptr %30, align 4, !tbaa !7
  %32 = and i32 %31, %17
  store i32 %32, ptr %30, align 4, !tbaa !7
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define internal fastcc void @hash() unnamed_addr #11 {
  %1 = load i32, ptr getelementptr inbounds ([128 x i32], ptr @columns, i64 0, i64 1), align 4, !tbaa !7
  %2 = load i32, ptr getelementptr inbounds ([128 x i32], ptr @columns, i64 0, i64 2), align 8, !tbaa !7
  %3 = shl i32 %1, 14
  %4 = shl i32 %2, 7
  %5 = or i32 %4, %3
  %6 = load i32, ptr getelementptr inbounds ([128 x i32], ptr @columns, i64 0, i64 3), align 4, !tbaa !7
  %7 = or i32 %5, %6
  %8 = load i32, ptr getelementptr inbounds ([128 x i32], ptr @columns, i64 0, i64 7), align 4, !tbaa !7
  %9 = load i32, ptr getelementptr inbounds ([128 x i32], ptr @columns, i64 0, i64 6), align 8, !tbaa !7
  %10 = shl i32 %8, 14
  %11 = shl i32 %9, 7
  %12 = or i32 %11, %10
  %13 = load i32, ptr getelementptr inbounds ([128 x i32], ptr @columns, i64 0, i64 5), align 4, !tbaa !7
  %14 = or i32 %12, %13
  %15 = load i32, ptr getelementptr inbounds ([128 x i32], ptr @columns, i64 0, i64 4), align 16, !tbaa !7
  %16 = tail call i32 @llvm.umax.i32(i32 %7, i32 %14)
  %17 = tail call i32 @llvm.umin.i32(i32 %7, i32 %14)
  %18 = shl i32 %16, 7
  %19 = or i32 %18, %15
  %20 = zext i32 %19 to i64
  %21 = shl nuw nsw i64 %20, 21
  %22 = zext i32 %17 to i64
  %23 = or i64 %21, %22
  %24 = lshr i64 %23, 17
  %25 = trunc i64 %24 to i32
  store i32 %25, ptr @lock, align 4, !tbaa !7
  %26 = urem i64 %23, 1050011
  %27 = trunc i64 %26 to i32
  store i32 %27, ptr @htindex, align 4, !tbaa !7
  %28 = urem i32 %25, 179
  %29 = or i32 %28, 131072
  store i32 %29, ptr @stride, align 4, !tbaa !7
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @transput(i32 noundef %0, i32 noundef %1) unnamed_addr #12 {
  %3 = load i32, ptr @htindex, align 4, !tbaa !7
  %4 = load ptr, ptr @he, align 8, !tbaa !16
  %5 = load i32, ptr @stride, align 4
  br label %6

6:                                                ; preds = %25, %2
  %7 = phi i32 [ %3, %2 ], [ %29, %25 ]
  %8 = phi i32 [ 0, %2 ], [ %30, %25 ]
  %9 = sext i32 %7 to i64
  %10 = getelementptr inbounds i8, ptr %4, i64 %9
  %11 = load i8, ptr %10, align 1, !tbaa !20
  %12 = and i8 %11, 31
  %13 = zext i8 %12 to i32
  %14 = icmp slt i32 %13, %1
  br i1 %14, label %15, label %25

15:                                               ; preds = %6
  %.lcssa = phi i64 [ %9, %6 ]
  %16 = getelementptr inbounds i8, ptr %4, i64 %.lcssa
  %17 = load i64, ptr @hits, align 8, !tbaa !22
  %18 = add nsw i64 %17, 1
  store i64 %18, ptr @hits, align 8, !tbaa !22
  %19 = load i32, ptr @lock, align 4, !tbaa !7
  %20 = load ptr, ptr @ht, align 8, !tbaa !16
  %21 = getelementptr inbounds i32, ptr %20, i64 %.lcssa
  store i32 %19, ptr %21, align 4, !tbaa !7
  %22 = shl i32 %0, 5
  %23 = or i32 %22, %1
  %24 = trunc i32 %23 to i8
  store i8 %24, ptr %16, align 1, !tbaa !20
  br label %32

25:                                               ; preds = %6
  %26 = add nsw i32 %7, %5
  %27 = icmp sgt i32 %26, 1050010
  %28 = add nsw i32 %26, -1050011
  %29 = select i1 %27, i32 %28, i32 %26
  %30 = add nuw nsw i32 %8, 1
  %31 = icmp eq i32 %30, 8
  br i1 %31, label %32, label %6, !llvm.loop !38

32:                                               ; preds = %25, %15
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #10

attributes #0 = { nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { mustprogress nofree nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nounwind optsize allocsize(0,1) }
attributes #14 = { optsize }
attributes #15 = { noreturn nounwind optsize }
attributes #16 = { nounwind optsize }
attributes #17 = { nounwind }

!llvm.ident = !{!0, !0, !0, !0}
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
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = distinct !{!13, !12, !14, !15}
!14 = !{!"llvm.loop.isvectorized", i32 1}
!15 = !{!"llvm.loop.unroll.runtime.disable"}
!16 = !{!17, !17, i64 0}
!17 = !{!"any pointer", !9, i64 0}
!18 = distinct !{!18, !12, !14, !15}
!19 = distinct !{!19, !12}
!20 = !{!9, !9, i64 0}
!21 = distinct !{!21, !12}
!22 = !{!23, !23, i64 0}
!23 = !{!"long long", !9, i64 0}
!24 = distinct !{!24, !12}
!25 = !{i32 -67108864, i32 67108865}
!26 = distinct !{!26, !12}
!27 = distinct !{!27, !12}
!28 = distinct !{!28, !12}
!29 = distinct !{!29, !12}
!30 = distinct !{!30, !12}
!31 = distinct !{!31, !12}
!32 = distinct !{!32, !12}
!33 = distinct !{!33, !12}
!34 = distinct !{!34, !12}
!35 = distinct !{!35, !12}
!36 = distinct !{!36, !12}
!37 = distinct !{!37, !12}
!38 = distinct !{!38, !12}
