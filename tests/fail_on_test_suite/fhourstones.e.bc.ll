; ModuleID = '/src/llvm-test-suite/build/MultiSource/Benchmarks/Fhourstones/fhourstones.e.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@history = internal global [2 x [56 x i32]] [[56 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0, i32 1, i32 2, i32 4, i32 2, i32 1, i32 0, i32 -1, i32 1, i32 3, i32 5, i32 7, i32 5, i32 3, i32 1, i32 -1, i32 2, i32 5, i32 8, i32 10, i32 8, i32 5, i32 2, i32 -1, i32 2, i32 5, i32 8, i32 10, i32 8, i32 5, i32 2, i32 -1, i32 1, i32 3, i32 5, i32 7, i32 5, i32 3, i32 1, i32 -1, i32 0, i32 1, i32 2, i32 4, i32 2, i32 1, i32 0], [56 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0, i32 1, i32 2, i32 4, i32 2, i32 1, i32 0, i32 -1, i32 1, i32 3, i32 5, i32 7, i32 5, i32 3, i32 1, i32 -1, i32 2, i32 5, i32 8, i32 10, i32 8, i32 5, i32 2, i32 -1, i32 2, i32 5, i32 8, i32 10, i32 8, i32 5, i32 2, i32 -1, i32 1, i32 3, i32 5, i32 7, i32 5, i32 3, i32 1, i32 -1, i32 0, i32 1, i32 2, i32 4, i32 2, i32 1, i32 0]], align 16
@nodes = internal global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"%c%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"##-<=>+#\00", align 1
@msecs = internal global i64 0, align 8
@.str.2 = private unnamed_addr constant [16 x i8] c"Fhourstones 2.0\00", align 1
@.str.3 = private unnamed_addr constant [54 x i8] c"Using %d transposition table entries with %d probes.\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"Solving %d-ply position after \00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c" . . .\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"score = %d (%c)  work = %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"%lu pos / %lu msec = %.1f Kpos/sec\0A\00", align 1
@plycnt = internal global i32 0, align 4
@dias = internal global [19 x i32] zeroinitializer, align 16
@height = internal global [128 x i32] zeroinitializer, align 16
@rows = internal global [8 x i32] zeroinitializer, align 16
@colthr = internal global [128 x i32] zeroinitializer, align 16
@colwon = internal global [128 x i32] zeroinitializer, align 16
@.str.13 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@moves = internal global [44 x i32] zeroinitializer, align 16
@millisecs.Time = internal unnamed_addr global i64 0, align 8
@ht = internal global ptr null, align 8
@he = internal global ptr null, align 8
@.str.24 = private unnamed_addr constant [30 x i8] c"Failed to allocate %u bytes.\0A\00", align 1
@hits = internal global i64 0, align 8
@posed = internal global i64 0, align 8
@columns = internal global [128 x i32] zeroinitializer, align 16
@lock = internal global i32 0, align 4
@htindex = internal global i32 0, align 4
@stride = internal global i32 0, align 4
@.str.1.37 = private unnamed_addr constant [19 x i8] c"store rate = %.3f\0A\00", align 1
@.str.2.38 = private unnamed_addr constant [45 x i8] c"- %5.3f  < %5.3f  = %5.3f  > %5.3f  + %5.3f\0A\00", align 1
@.str.3.39 = private unnamed_addr constant [6 x i8] c"%7d%c\00", align 1

; Function Attrs: nounwind optsize uwtable
define internal i32 @ab(i32 noundef %0, i32 noundef %1) #0 {
  %3 = alloca [8 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #14
  %4 = load i64, ptr @nodes, align 8, !tbaa !7
  %5 = add nsw i64 %4, 1
  store i64 %5, ptr @nodes, align 8, !tbaa !7
  %6 = load i32, ptr @plycnt, align 4, !tbaa !11
  %7 = icmp eq i32 %6, 41
  br i1 %7, label %226, label %8

8:                                                ; preds = %2
  %9 = and i32 %6, 1
  %10 = xor i32 %9, 1
  %11 = shl nuw nsw i32 1, %9
  br label %12

12:                                               ; preds = %66, %8
  %13 = phi i64 [ 1, %8 ], [ %68, %66 ]
  %14 = phi i32 [ 0, %8 ], [ %67, %66 ]
  %15 = getelementptr inbounds [0 x i32], ptr @height, i64 0, i64 %13
  %16 = load i32, ptr %15, align 4, !tbaa !11
  %17 = icmp slt i32 %16, 7
  br i1 %17, label %18, label %66

18:                                               ; preds = %12
  %19 = trunc i64 %13 to i32
  %20 = tail call i32 (i32, i32, i32, ...) @wins(i32 noundef %19, i32 noundef %16, i32 noundef 3) #15
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %18
  %23 = getelementptr inbounds [0 x i32], ptr @columns, i64 0, i64 %13
  %24 = load i32, ptr %23, align 4, !tbaa !11
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [0 x i32], ptr @colthr, i64 0, i64 %25
  %27 = load i32, ptr %26, align 4, !tbaa !11
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %56, label %29

29:                                               ; preds = %22, %18
  %.lcssa9 = phi i64 [ %13, %22 ], [ %13, %18 ]
  %.lcssa7 = phi i32 [ %16, %22 ], [ %16, %18 ]
  %.lcssa6 = phi i32 [ %19, %22 ], [ %19, %18 ]
  %30 = icmp slt i32 %.lcssa7, 6
  br i1 %30, label %31, label %35

31:                                               ; preds = %29
  %32 = add nsw i32 %.lcssa7, 1
  %33 = tail call i32 (i32, i32, i32, ...) @wins(i32 noundef %.lcssa6, i32 noundef %32, i32 noundef %11) #15
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %226

35:                                               ; preds = %31, %29
  %36 = icmp ult i32 %.lcssa6, 7
  br i1 %36, label %37, label %73

37:                                               ; preds = %54, %35
  %38 = phi i64 [ %39, %54 ], [ %.lcssa9, %35 ]
  %39 = add nuw nsw i64 %38, 1
  %40 = getelementptr inbounds [0 x i32], ptr @height, i64 0, i64 %39
  %41 = load i32, ptr %40, align 4, !tbaa !11
  %42 = icmp slt i32 %41, 7
  br i1 %42, label %43, label %54

43:                                               ; preds = %37
  %44 = trunc i64 %39 to i32
  %45 = tail call i32 (i32, i32, i32, ...) @wins(i32 noundef %44, i32 noundef %41, i32 noundef 3) #15
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %226

47:                                               ; preds = %43
  %48 = getelementptr inbounds [0 x i32], ptr @columns, i64 0, i64 %39
  %49 = load i32, ptr %48, align 4, !tbaa !11
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [0 x i32], ptr @colthr, i64 0, i64 %50
  %52 = load i32, ptr %51, align 4, !tbaa !11
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %226

54:                                               ; preds = %47, %37
  %55 = icmp eq i64 %39, 7
  br i1 %55, label %73, label %37, !llvm.loop !13

56:                                               ; preds = %22
  %57 = icmp slt i32 %16, 6
  br i1 %57, label %58, label %62

58:                                               ; preds = %56
  %59 = add nsw i32 %16, 1
  %60 = tail call i32 (i32, i32, i32, ...) @wins(i32 noundef %19, i32 noundef %59, i32 noundef %11) #15
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %58, %56
  %63 = add nsw i32 %14, 1
  %64 = sext i32 %14 to i64
  %65 = getelementptr inbounds [8 x i32], ptr %3, i64 0, i64 %64
  store i32 %19, ptr %65, align 4, !tbaa !11
  br label %66

66:                                               ; preds = %62, %58, %12
  %67 = phi i32 [ %14, %58 ], [ %63, %62 ], [ %14, %12 ]
  %68 = add nuw nsw i64 %13, 1
  %69 = icmp eq i64 %68, 8
  br i1 %69, label %70, label %12, !llvm.loop !15

70:                                               ; preds = %66
  %.lcssa11 = phi i32 [ %67, %66 ]
  switch i32 %.lcssa11, label %81 [
    i32 0, label %226
    i32 1, label %71
  ]

71:                                               ; preds = %70
  %72 = load i32, ptr %3, align 16, !tbaa !11
  br label %73

73:                                               ; preds = %71, %54, %35
  %74 = phi i32 [ %72, %71 ], [ %.lcssa6, %35 ], [ %.lcssa6, %54 ]
  %75 = tail call i32 (i32, ...) @makemove(i32 noundef %74) #15
  %76 = sub nsw i32 0, %1
  %77 = sub nsw i32 0, %0
  %78 = tail call i32 @ab(i32 noundef %76, i32 noundef %77) #16, !range !16
  %79 = sub nsw i32 0, %78
  %80 = tail call i32 (...) @backmove() #15
  br label %226

81:                                               ; preds = %70
  %82 = tail call i32 (...) @transpose() #15
  %83 = icmp eq i32 %82, -128
  br i1 %83, label %90, label %84

84:                                               ; preds = %81
  %85 = ashr i32 %82, 5
  switch i32 %85, label %226 [
    i32 -1, label %86
    i32 1, label %88
  ]

86:                                               ; preds = %84
  %87 = icmp sgt i32 %0, -1
  br i1 %87, label %226, label %90

88:                                               ; preds = %84
  %89 = icmp slt i32 %1, 1
  br i1 %89, label %226, label %90

90:                                               ; preds = %88, %86, %81
  %91 = phi i32 [ 0, %86 ], [ %1, %88 ], [ %1, %81 ]
  %92 = phi i32 [ %0, %86 ], [ 0, %88 ], [ %0, %81 ]
  %93 = load i64, ptr @posed, align 8, !tbaa !7
  %94 = icmp sgt i32 %.lcssa11, 0
  br i1 %94, label %95, label %193

95:                                               ; preds = %90
  %96 = zext i32 %10 to i64
  %97 = sub nsw i32 0, %91
  %98 = zext i32 %.lcssa11 to i64
  %99 = zext i32 %.lcssa11 to i64
  br label %100

100:                                              ; preds = %153, %95
  %101 = phi i64 [ 0, %95 ], [ %157, %153 ]
  %102 = phi i32 [ %92, %95 ], [ %156, %153 ]
  %103 = phi i32 [ 0, %95 ], [ %155, %153 ]
  %104 = phi i32 [ -999999, %95 ], [ %154, %153 ]
  %105 = phi i32 [ 0, %95 ], [ %.lcssa, %153 ]
  br label %106

106:                                              ; preds = %106, %100
  %107 = phi i64 [ %101, %100 ], [ %124, %106 ]
  %108 = phi i32 [ -999999, %100 ], [ %123, %106 ]
  %109 = phi i32 [ %105, %100 ], [ %122, %106 ]
  %110 = getelementptr inbounds [8 x i32], ptr %3, i64 0, i64 %107
  %111 = load i32, ptr %110, align 4, !tbaa !11
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds [0 x i32], ptr @height, i64 0, i64 %112
  %114 = load i32, ptr %113, align 4, !tbaa !11
  %115 = shl i32 %114, 3
  %116 = or i32 %115, %111
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds [2 x [56 x i32]], ptr @history, i64 0, i64 %96, i64 %117
  %119 = load i32, ptr %118, align 4, !tbaa !11
  %120 = icmp sgt i32 %119, %108
  %121 = trunc i64 %107 to i32
  %122 = select i1 %120, i32 %121, i32 %109
  %123 = tail call i32 @llvm.smax.i32(i32 %119, i32 %108)
  %124 = add nuw nsw i64 %107, 1
  %125 = icmp ult i64 %124, %98
  br i1 %125, label %106, label %126, !llvm.loop !17

126:                                              ; preds = %106
  %.lcssa = phi i32 [ %122, %106 ]
  %127 = sext i32 %.lcssa to i64
  %128 = getelementptr inbounds [8 x i32], ptr %3, i64 0, i64 %127
  %129 = load i32, ptr %128, align 4, !tbaa !11
  %130 = zext i32 %.lcssa to i64
  %131 = icmp eq i64 %101, %130
  br i1 %131, label %135, label %132

132:                                              ; preds = %126
  %133 = getelementptr inbounds [8 x i32], ptr %3, i64 0, i64 %101
  %134 = load i32, ptr %133, align 4, !tbaa !11
  store i32 %134, ptr %128, align 4, !tbaa !11
  store i32 %129, ptr %133, align 4, !tbaa !11
  br label %135

135:                                              ; preds = %132, %126
  %136 = tail call i32 (i32, ...) @makemove(i32 noundef %129) #15
  %137 = sub nsw i32 0, %102
  %138 = tail call i32 @ab(i32 noundef %97, i32 noundef %137) #16, !range !16
  %139 = sub nsw i32 0, %138
  %140 = tail call i32 (...) @backmove() #15
  %141 = icmp slt i32 %104, %139
  br i1 %141, label %142, label %153

142:                                              ; preds = %135
  %143 = icmp slt i32 %102, %139
  %144 = trunc i64 %101 to i32
  br i1 %143, label %145, label %153

145:                                              ; preds = %142
  %146 = icmp sgt i32 %91, %139
  br i1 %146, label %153, label %147

147:                                              ; preds = %145
  %.lcssa4 = phi i32 [ %138, %145 ]
  %.lcssa2 = phi i32 [ %139, %145 ]
  %.lcssa1 = phi i32 [ %144, %145 ]
  %148 = icmp eq i32 %.lcssa4, 0
  br i1 %148, label %149, label %159

149:                                              ; preds = %147
  %150 = add nsw i32 %.lcssa11, -1
  %151 = icmp sgt i32 %150, %.lcssa1
  %152 = zext i1 %151 to i32
  br label %159

153:                                              ; preds = %145, %142, %135
  %154 = phi i32 [ %139, %145 ], [ %139, %142 ], [ %104, %135 ]
  %155 = phi i32 [ %144, %145 ], [ %144, %142 ], [ %103, %135 ]
  %156 = phi i32 [ %139, %145 ], [ %102, %142 ], [ %102, %135 ]
  %157 = add nuw nsw i64 %101, 1
  %158 = icmp eq i64 %157, %99
  br i1 %158, label %159, label %100, !llvm.loop !18

159:                                              ; preds = %153, %149, %147
  %160 = phi i32 [ %.lcssa2, %147 ], [ %152, %149 ], [ %154, %153 ]
  %161 = phi i32 [ %.lcssa1, %147 ], [ %.lcssa1, %149 ], [ %155, %153 ]
  %162 = icmp sgt i32 %161, 0
  br i1 %162, label %163, label %193

163:                                              ; preds = %159
  %164 = zext i32 %10 to i64
  %165 = zext i32 %161 to i64
  br label %166

166:                                              ; preds = %166, %163
  %167 = phi i64 [ 0, %163 ], [ %179, %166 ]
  %168 = getelementptr inbounds [8 x i32], ptr %3, i64 0, i64 %167
  %169 = load i32, ptr %168, align 4, !tbaa !11
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds [0 x i32], ptr @height, i64 0, i64 %170
  %172 = load i32, ptr %171, align 4, !tbaa !11
  %173 = shl i32 %172, 3
  %174 = or i32 %173, %169
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds [2 x [56 x i32]], ptr @history, i64 0, i64 %164, i64 %175
  %177 = load i32, ptr %176, align 4, !tbaa !11
  %178 = add nsw i32 %177, -1
  store i32 %178, ptr %176, align 4, !tbaa !11
  %179 = add nuw nsw i64 %167, 1
  %180 = icmp eq i64 %179, %165
  br i1 %180, label %181, label %166, !llvm.loop !19

181:                                              ; preds = %166
  %182 = getelementptr inbounds [8 x i32], ptr %3, i64 0, i64 %165
  %183 = load i32, ptr %182, align 4, !tbaa !11
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds [0 x i32], ptr @height, i64 0, i64 %184
  %186 = load i32, ptr %185, align 4, !tbaa !11
  %187 = shl i32 %186, 3
  %188 = or i32 %187, %183
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds [2 x [56 x i32]], ptr @history, i64 0, i64 %164, i64 %189
  %191 = load i32, ptr %190, align 4, !tbaa !11
  %192 = add nsw i32 %191, %161
  store i32 %192, ptr %190, align 4, !tbaa !11
  br label %193

193:                                              ; preds = %181, %159, %90
  %194 = phi i32 [ %160, %181 ], [ %160, %159 ], [ -999999, %90 ]
  %195 = load i64, ptr @posed, align 8, !tbaa !7
  %196 = sub nsw i64 %195, %93
  %197 = icmp ult i64 %196, 2
  br i1 %197, label %204, label %198

198:                                              ; preds = %198, %193
  %199 = phi i64 [ %201, %198 ], [ %196, %193 ]
  %200 = phi i32 [ %202, %198 ], [ 1, %193 ]
  %201 = ashr i64 %199, 1
  %202 = add nuw nsw i32 %200, 1
  %203 = icmp ult i64 %199, 4
  br i1 %203, label %204, label %198, !llvm.loop !20

204:                                              ; preds = %198, %193
  %205 = phi i32 [ 1, %193 ], [ %202, %198 ]
  br i1 %83, label %212, label %206

206:                                              ; preds = %204
  %207 = ashr i32 %82, 5
  %208 = sub nsw i32 0, %207
  %209 = icmp eq i32 %194, %208
  %210 = select i1 %209, i32 0, i32 %194
  %211 = tail call i32 (i32, i32, ...) @transrestore(i32 noundef %210, i32 noundef %205) #15
  br label %214

212:                                              ; preds = %204
  %213 = tail call i32 (i32, i32, ...) @transtore(i32 noundef %194, i32 noundef %205) #15
  br label %214

214:                                              ; preds = %212, %206
  %215 = phi i32 [ %210, %206 ], [ %194, %212 ]
  %216 = load i32, ptr @plycnt, align 4, !tbaa !11
  %217 = icmp eq i32 %216, 8
  br i1 %217, label %218, label %226

218:                                              ; preds = %214
  %219 = tail call i32 (...) @printMoves() #15
  %220 = add nsw i32 %215, 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds [9 x i8], ptr @.str.1, i64 0, i64 %221
  %223 = load i8, ptr %222, align 1, !tbaa !21
  %224 = sext i8 %223 to i32
  %225 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %224, i32 noundef %205) #16
  br label %226

226:                                              ; preds = %218, %214, %88, %86, %84, %73, %70, %47, %43, %31, %2
  %227 = phi i32 [ %79, %73 ], [ 0, %2 ], [ -2, %31 ], [ -2, %70 ], [ -1, %86 ], [ 1, %88 ], [ %85, %84 ], [ %215, %218 ], [ %215, %214 ], [ -2, %47 ], [ -2, %43 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #14
  ret i32 %227
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind optsize uwtable
define internal i32 @solve() #0 {
  store i64 0, ptr @nodes, align 8, !tbaa !7
  store i64 1, ptr @msecs, align 8, !tbaa !7
  %1 = load i32, ptr @plycnt, align 4, !tbaa !11
  %2 = and i32 %1, 1
  %3 = xor i32 %2, 1
  %4 = shl nuw nsw i32 1, %3
  br label %5

5:                                                ; preds = %24, %0
  %6 = phi i64 [ 1, %0 ], [ %25, %24 ]
  %7 = getelementptr inbounds [0 x i32], ptr @height, i64 0, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !11
  %9 = icmp slt i32 %8, 7
  br i1 %9, label %10, label %24

10:                                               ; preds = %5
  %11 = trunc i64 %6 to i32
  %12 = tail call i32 (i32, i32, i32, ...) @wins(i32 noundef %11, i32 noundef %8, i32 noundef %4) #15
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %10
  %15 = getelementptr inbounds [0 x i32], ptr @columns, i64 0, i64 %6
  %16 = load i32, ptr %15, align 4, !tbaa !11
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [0 x i32], ptr @colthr, i64 0, i64 %17
  %19 = load i32, ptr %18, align 4, !tbaa !11
  %20 = icmp eq i32 %19, %4
  br i1 %20, label %21, label %24

21:                                               ; preds = %14, %10
  %22 = icmp eq i32 %3, 0
  %23 = select i1 %22, i32 -64, i32 64
  br label %52

24:                                               ; preds = %14, %5
  %25 = add nuw nsw i64 %6, 1
  %26 = icmp eq i64 %25, 8
  br i1 %26, label %27, label %5, !llvm.loop !22

27:                                               ; preds = %24
  %28 = tail call i32 (...) @transpose() #15
  %29 = icmp ne i32 %28, -128
  %30 = and i32 %28, 32
  %31 = icmp eq i32 %30, 0
  %32 = and i1 %29, %31
  br i1 %32, label %52, label %33

33:                                               ; preds = %27
  %34 = tail call i64 (...) @millisecs() #15
  %35 = add nsw i64 %34, -1
  store i64 %35, ptr @msecs, align 8, !tbaa !7
  %36 = tail call i32 @ab(i32 noundef -2, i32 noundef 2) #16, !range !16
  %37 = load i64, ptr @posed, align 8, !tbaa !7
  %38 = icmp ult i64 %37, 2
  br i1 %38, label %45, label %39

39:                                               ; preds = %39, %33
  %40 = phi i64 [ %42, %39 ], [ %37, %33 ]
  %41 = phi i32 [ %43, %39 ], [ 1, %33 ]
  %42 = ashr i64 %40, 1
  %43 = add nuw nsw i32 %41, 1
  %44 = icmp ult i64 %40, 4
  br i1 %44, label %45, label %39, !llvm.loop !23

45:                                               ; preds = %39, %33
  %46 = phi i32 [ 1, %33 ], [ %43, %39 ]
  %47 = tail call i64 (...) @millisecs() #15
  %48 = load i64, ptr @msecs, align 8, !tbaa !7
  %49 = sub nsw i64 %47, %48
  store i64 %49, ptr @msecs, align 8, !tbaa !7
  %50 = shl i32 %36, 5
  %51 = or i32 %46, %50
  br label %52

52:                                               ; preds = %45, %27, %21
  %53 = phi i32 [ %23, %21 ], [ %51, %45 ], [ %28, %27 ]
  ret i32 %53
}

; Function Attrs: nounwind optsize uwtable
define dso_local i32 @main() #0 {
  %1 = tail call i32 (...) @trans_init() #15
  %2 = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) @.str.2) #16
  %3 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef 1050011, i32 noundef 8) #16
  br label %4

4:                                                ; preds = %25, %0
  %5 = tail call i32 (...) @reset() #15
  br label %6

6:                                                ; preds = %24, %4
  %7 = tail call i32 @getchar() #16
  %8 = icmp eq i32 %7, -1
  br i1 %8, label %47, label %9

9:                                                ; preds = %6
  %10 = add i32 %7, -49
  %11 = icmp ult i32 %10, 7
  br i1 %11, label %20, label %12

12:                                               ; preds = %9
  %13 = add i32 %7, -65
  %14 = icmp ult i32 %13, 7
  br i1 %14, label %20, label %15

15:                                               ; preds = %12
  %16 = add i32 %7, -97
  %17 = icmp ult i32 %16, 7
  br i1 %17, label %20, label %18

18:                                               ; preds = %15
  %19 = icmp eq i32 %7, 10
  br i1 %19, label %25, label %24

20:                                               ; preds = %15, %12, %9
  %21 = phi i32 [ -48, %9 ], [ -64, %12 ], [ -96, %15 ]
  %22 = add nsw i32 %7, %21
  %23 = tail call i32 (i32, ...) @makemove(i32 noundef %22) #15
  br label %24

24:                                               ; preds = %20, %18
  br label %6, !llvm.loop !24

25:                                               ; preds = %18
  %26 = load i32, ptr @plycnt, align 4, !tbaa !11
  %27 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i32 noundef %26) #16
  %28 = tail call i32 (...) @printMoves() #15
  %29 = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) @.str.5) #16
  %30 = tail call i32 (...) @emptyTT() #15
  %31 = tail call i32 @solve() #16
  %32 = ashr i32 %31, 5
  %33 = add nsw i32 %32, 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [9 x i8], ptr @.str.1, i64 0, i64 %34
  %36 = load i8, ptr %35, align 1, !tbaa !21
  %37 = sext i8 %36 to i32
  %38 = and i32 %31, 31
  %39 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, i32 noundef %32, i32 noundef %37, i32 noundef %38) #16
  %40 = load i64, ptr @nodes, align 8, !tbaa !7
  %41 = load i64, ptr @msecs, align 8, !tbaa !7
  %42 = sitofp i64 %40 to double
  %43 = sitofp i64 %41 to double
  %44 = fdiv double %42, %43
  %45 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i64 noundef %40, i64 noundef %41, double noundef %44) #16
  %46 = tail call i32 (...) @htstat() #15
  br label %4

47:                                               ; preds = %6
  ret i32 0
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #3

; Function Attrs: nofree nounwind optsize
declare noundef i32 @getchar() local_unnamed_addr #3

; Function Attrs: nofree nosync nounwind optsize memory(write, argmem: none, inaccessiblemem: none) uwtable
define internal void @reset() #4 {
  store i32 0, ptr @plycnt, align 4, !tbaa !11
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(76) @dias, i8 0, i64 76, i1 false), !tbaa !11
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) @rows, i8 0, i64 32, i1 false), !tbaa !11
  br label %1

1:                                                ; preds = %1, %0
  %2 = phi i64 [ 0, %0 ], [ %5, %1 ]
  %3 = getelementptr inbounds [128 x i32], ptr @columns, i64 0, i64 %2
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, ptr %3, align 16, !tbaa !11
  %4 = getelementptr inbounds [128 x i32], ptr @height, i64 0, i64 %2
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, ptr %4, align 16, !tbaa !11
  %5 = add nuw i64 %2, 4
  %6 = icmp eq i64 %5, 8
  br i1 %6, label %7, label %1, !llvm.loop !25

7:                                                ; preds = %1
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: nofree nosync nounwind optsize memory(write, argmem: none, inaccessiblemem: none) uwtable
define internal void @play_init() #4 {
  br label %1

1:                                                ; preds = %1, %0
  %2 = phi i64 [ 8, %0 ], [ %6, %1 ]
  %3 = getelementptr inbounds [128 x i32], ptr @colthr, i64 0, i64 %2
  store i32 1, ptr %3, align 16, !tbaa !11
  %4 = or i64 %2, 7
  %5 = getelementptr inbounds [128 x i32], ptr @colthr, i64 0, i64 %4
  store i32 2, ptr %5, align 4, !tbaa !11
  %6 = add nuw nsw i64 %2, 8
  %7 = icmp ult i64 %2, 120
  br i1 %7, label %1, label %8, !llvm.loop !28

8:                                                ; preds = %8, %1
  %9 = phi i64 [ %13, %8 ], [ 16, %1 ]
  %10 = or i64 %9, 15
  %11 = getelementptr inbounds [128 x i32], ptr @colwon, i64 0, i64 %10
  store i32 1, ptr %11, align 4, !tbaa !11
  %12 = getelementptr inbounds [128 x i32], ptr @colwon, i64 0, i64 %9
  store i32 1, ptr %12, align 16, !tbaa !11
  %13 = add nuw nsw i64 %9, 16
  %14 = icmp ult i64 %9, 112
  br i1 %14, label %8, label %15, !llvm.loop !29

15:                                               ; preds = %8
  store i32 0, ptr @plycnt, align 4, !tbaa !11
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(76) @dias, i8 0, i64 76, i1 false), !tbaa !11
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) @rows, i8 0, i64 32, i1 false), !tbaa !11
  br label %16

16:                                               ; preds = %16, %15
  %17 = phi i64 [ 0, %15 ], [ %20, %16 ]
  %18 = getelementptr inbounds [128 x i32], ptr @columns, i64 0, i64 %17
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, ptr %18, align 16, !tbaa !11
  %19 = getelementptr inbounds [128 x i32], ptr @height, i64 0, i64 %17
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, ptr %19, align 16, !tbaa !11
  %20 = add nuw i64 %17, 4
  %21 = icmp eq i64 %20, 8
  br i1 %21, label %22, label %16, !llvm.loop !30

22:                                               ; preds = %16
  ret void
}

; Function Attrs: nofree nounwind optsize uwtable
define internal void @printMoves() #6 {
  %1 = load i32, ptr @plycnt, align 4, !tbaa !11
  %2 = icmp slt i32 %1, 1
  br i1 %2, label %12, label %3

3:                                                ; preds = %3, %0
  %4 = phi i64 [ %8, %3 ], [ 1, %0 ]
  %5 = getelementptr inbounds [44 x i32], ptr @moves, i64 0, i64 %4
  %6 = load i32, ptr %5, align 4, !tbaa !11
  %7 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, i32 noundef %6) #16
  %8 = add nuw nsw i64 %4, 1
  %9 = load i32, ptr @plycnt, align 4, !tbaa !11
  %10 = sext i32 %9 to i64
  %11 = icmp slt i64 %4, %10
  br i1 %11, label %3, label %12, !llvm.loop !31

12:                                               ; preds = %3, %0
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal i32 @wins(i32 noundef %0, i32 noundef %1, i32 noundef %2) #7 {
  %4 = shl nsw i32 %0, 1
  %5 = shl i32 %2, %4
  %6 = sext i32 %1 to i64
  %7 = getelementptr inbounds [8 x i32], ptr @rows, i64 0, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !11
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
  %20 = load i32, ptr %19, align 4, !tbaa !11
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
  %31 = load i32, ptr %30, align 4, !tbaa !11
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define internal void @backmove() #8 {
  %1 = load i32, ptr @plycnt, align 4, !tbaa !11
  %2 = and i32 %1, 1
  %3 = add nsw i32 %1, -1
  store i32 %3, ptr @plycnt, align 4, !tbaa !11
  %4 = sext i32 %1 to i64
  %5 = getelementptr inbounds [44 x i32], ptr @moves, i64 0, i64 %4
  %6 = load i32, ptr %5, align 4, !tbaa !11
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [128 x i32], ptr @height, i64 0, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !11
  %10 = add nsw i32 %9, -1
  store i32 %10, ptr %8, align 4, !tbaa !11
  %11 = getelementptr inbounds [128 x i32], ptr @columns, i64 0, i64 %7
  %12 = load i32, ptr %11, align 4, !tbaa !11
  %13 = ashr i32 %12, 1
  store i32 %13, ptr %11, align 4, !tbaa !11
  %14 = shl nsw i32 %6, 1
  %15 = or i32 %14, %2
  %16 = shl nuw i32 1, %15
  %17 = xor i32 %16, -1
  %18 = sext i32 %10 to i64
  %19 = getelementptr inbounds [8 x i32], ptr @rows, i64 0, i64 %18
  %20 = load i32, ptr %19, align 4, !tbaa !11
  %21 = and i32 %20, %17
  store i32 %21, ptr %19, align 4, !tbaa !11
  %22 = add nsw i32 %6, 5
  %23 = add nsw i32 %10, %22
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [19 x i32], ptr @dias, i64 0, i64 %24
  %26 = load i32, ptr %25, align 4, !tbaa !11
  %27 = and i32 %26, %17
  store i32 %27, ptr %25, align 4, !tbaa !11
  %28 = sub nsw i32 %22, %10
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [19 x i32], ptr @dias, i64 0, i64 %29
  %31 = load i32, ptr %30, align 4, !tbaa !11
  %32 = and i32 %31, %17
  store i32 %32, ptr %30, align 4, !tbaa !11
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define internal void @makemove(i32 noundef %0) #8 {
  %2 = load i32, ptr @plycnt, align 4, !tbaa !11
  %3 = add nsw i32 %2, 1
  store i32 %3, ptr @plycnt, align 4, !tbaa !11
  %4 = sext i32 %3 to i64
  %5 = getelementptr inbounds [44 x i32], ptr @moves, i64 0, i64 %4
  store i32 %0, ptr %5, align 4, !tbaa !11
  %6 = and i32 %3, 1
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds [128 x i32], ptr @height, i64 0, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !11
  %10 = add nsw i32 %9, 1
  store i32 %10, ptr %8, align 4, !tbaa !11
  %11 = getelementptr inbounds [128 x i32], ptr @columns, i64 0, i64 %7
  %12 = load i32, ptr %11, align 4, !tbaa !11
  %13 = shl i32 %12, 1
  %14 = or i32 %13, %6
  store i32 %14, ptr %11, align 4, !tbaa !11
  %15 = shl nsw i32 %0, 1
  %16 = or i32 %6, %15
  %17 = shl nuw i32 1, %16
  %18 = sext i32 %9 to i64
  %19 = getelementptr inbounds [8 x i32], ptr @rows, i64 0, i64 %18
  %20 = load i32, ptr %19, align 4, !tbaa !11
  %21 = or i32 %20, %17
  store i32 %21, ptr %19, align 4, !tbaa !11
  %22 = add nsw i32 %0, 5
  %23 = add nsw i32 %9, %22
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [19 x i32], ptr @dias, i64 0, i64 %24
  %26 = load i32, ptr %25, align 4, !tbaa !11
  %27 = or i32 %26, %17
  store i32 %27, ptr %25, align 4, !tbaa !11
  %28 = sub nsw i32 %22, %9
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [19 x i32], ptr @dias, i64 0, i64 %29
  %31 = load i32, ptr %30, align 4, !tbaa !11
  %32 = or i32 %31, %17
  store i32 %32, ptr %30, align 4, !tbaa !11
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define internal i64 @millisecs() #8 {
  %1 = load i64, ptr @millisecs.Time, align 8, !tbaa !7
  %2 = add nsw i64 %1, 1
  store i64 %2, ptr @millisecs.Time, align 8, !tbaa !7
  ret i64 %2
}

; Function Attrs: nounwind optsize uwtable
define internal void @trans_init() #0 {
  %1 = tail call i32 (...) @play_init() #15
  %2 = tail call noalias dereferenceable_or_null(4200044) ptr @calloc(i64 noundef 1050011, i64 noundef 4) #17
  store ptr %2, ptr @ht, align 8, !tbaa !32
  %3 = tail call noalias dereferenceable_or_null(1050011) ptr @calloc(i64 noundef 1050011, i64 noundef 1) #17
  store ptr %3, ptr @he, align 8, !tbaa !32
  %4 = icmp eq ptr %2, null
  %5 = icmp eq ptr %3, null
  %6 = or i1 %4, %5
  br i1 %6, label %7, label %9

7:                                                ; preds = %0
  %8 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.24, i64 noundef 5250055) #16
  tail call void @exit(i32 noundef 0) #18
  unreachable

9:                                                ; preds = %0
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32 noundef) local_unnamed_addr #10

; Function Attrs: nofree norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal void @emptyTT() #11 {
  %1 = load ptr, ptr @he, align 8, !tbaa !32
  br label %2

2:                                                ; preds = %14, %0
  %3 = phi ptr [ %1, %0 ], [ %15, %14 ]
  %4 = phi i64 [ 0, %0 ], [ %16, %14 ]
  %5 = getelementptr inbounds i8, ptr %3, i64 %4
  %6 = load i8, ptr %5, align 1, !tbaa !21
  %7 = and i8 %6, 31
  %8 = icmp eq i8 %7, 31
  br i1 %8, label %14, label %9

9:                                                ; preds = %2
  %10 = icmp ult i8 %7, 16
  %11 = select i1 %10, i8 %7, i8 4
  %12 = sub i8 %6, %11
  store i8 %12, ptr %5, align 1, !tbaa !21
  %13 = load ptr, ptr @he, align 8, !tbaa !32
  br label %14

14:                                               ; preds = %9, %2
  %15 = phi ptr [ %3, %2 ], [ %13, %9 ]
  %16 = add nuw nsw i64 %4, 1
  %17 = icmp eq i64 %16, 1050011
  br i1 %17, label %18, label %2, !llvm.loop !34

18:                                               ; preds = %14
  store i64 0, ptr @hits, align 8, !tbaa !7
  store i64 0, ptr @posed, align 8, !tbaa !7
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define internal void @hash() #12 {
  %1 = load i32, ptr getelementptr inbounds ([0 x i32], ptr @columns, i64 0, i64 1), align 4, !tbaa !11
  %2 = load i32, ptr getelementptr inbounds ([0 x i32], ptr @columns, i64 0, i64 2), align 4, !tbaa !11
  %3 = shl i32 %1, 14
  %4 = shl i32 %2, 7
  %5 = or i32 %4, %3
  %6 = load i32, ptr getelementptr inbounds ([0 x i32], ptr @columns, i64 0, i64 3), align 4, !tbaa !11
  %7 = or i32 %5, %6
  %8 = load i32, ptr getelementptr inbounds ([0 x i32], ptr @columns, i64 0, i64 7), align 4, !tbaa !11
  %9 = load i32, ptr getelementptr inbounds ([0 x i32], ptr @columns, i64 0, i64 6), align 4, !tbaa !11
  %10 = shl i32 %8, 14
  %11 = shl i32 %9, 7
  %12 = or i32 %11, %10
  %13 = load i32, ptr getelementptr inbounds ([0 x i32], ptr @columns, i64 0, i64 5), align 4, !tbaa !11
  %14 = or i32 %12, %13
  %15 = load i32, ptr getelementptr inbounds ([0 x i32], ptr @columns, i64 0, i64 4), align 4, !tbaa !11
  %16 = tail call i32 @llvm.umax.i32(i32 %7, i32 %14)
  %17 = tail call i32 @llvm.umin.i32(i32 %7, i32 %14)
  %18 = shl i32 %16, 7
  %19 = or i32 %15, %18
  %20 = zext i32 %19 to i64
  %21 = shl nuw nsw i64 %20, 21
  %22 = zext i32 %17 to i64
  %23 = or i64 %21, %22
  %24 = lshr i64 %23, 17
  %25 = trunc i64 %24 to i32
  store i32 %25, ptr @lock, align 4, !tbaa !11
  %26 = urem i64 %23, 1050011
  %27 = trunc i64 %26 to i32
  store i32 %27, ptr @htindex, align 4, !tbaa !11
  %28 = urem i32 %25, 179
  %29 = or i32 %28, 131072
  store i32 %29, ptr @stride, align 4, !tbaa !11
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #2

; Function Attrs: nofree nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal i32 @transpose() #13 {
  tail call void @hash() #16
  %1 = load i32, ptr @htindex, align 4, !tbaa !11
  %2 = load ptr, ptr @ht, align 8, !tbaa !32
  %3 = load i32, ptr @lock, align 4, !tbaa !11
  %4 = load i32, ptr @stride, align 4
  br label %5

5:                                                ; preds = %17, %0
  %6 = phi i32 [ %1, %0 ], [ %21, %17 ]
  %7 = phi i32 [ 0, %0 ], [ %22, %17 ]
  %8 = sext i32 %6 to i64
  %9 = getelementptr inbounds i32, ptr %2, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !11
  %11 = icmp eq i32 %10, %3
  br i1 %11, label %12, label %17

12:                                               ; preds = %5
  %.lcssa = phi i64 [ %8, %5 ]
  %13 = load ptr, ptr @he, align 8, !tbaa !32
  %14 = getelementptr inbounds i8, ptr %13, i64 %.lcssa
  %15 = load i8, ptr %14, align 1, !tbaa !21
  %16 = sext i8 %15 to i32
  br label %24

17:                                               ; preds = %5
  %18 = add nsw i32 %4, %6
  %19 = icmp sgt i32 %18, 1050010
  %20 = add nsw i32 %18, -1050011
  %21 = select i1 %19, i32 %20, i32 %18
  %22 = add nuw nsw i32 %7, 1
  %23 = icmp eq i32 %22, 8
  br i1 %23, label %24, label %5, !llvm.loop !35

24:                                               ; preds = %17, %12
  %25 = phi i32 [ %16, %12 ], [ -128, %17 ]
  ret i32 %25
}

; Function Attrs: nofree norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal void @transput(i32 noundef %0, i32 noundef %1) #11 {
  %3 = load i32, ptr @htindex, align 4, !tbaa !11
  %4 = load ptr, ptr @he, align 8, !tbaa !32
  %5 = load i32, ptr @stride, align 4
  br label %6

6:                                                ; preds = %25, %2
  %7 = phi i32 [ %3, %2 ], [ %29, %25 ]
  %8 = phi i32 [ 0, %2 ], [ %30, %25 ]
  %9 = sext i32 %7 to i64
  %10 = getelementptr inbounds i8, ptr %4, i64 %9
  %11 = load i8, ptr %10, align 1, !tbaa !21
  %12 = and i8 %11, 31
  %13 = zext i8 %12 to i32
  %14 = icmp slt i32 %13, %1
  br i1 %14, label %15, label %25

15:                                               ; preds = %6
  %.lcssa = phi i64 [ %9, %6 ]
  %16 = getelementptr inbounds i8, ptr %4, i64 %.lcssa
  %17 = load i64, ptr @hits, align 8, !tbaa !7
  %18 = add nsw i64 %17, 1
  store i64 %18, ptr @hits, align 8, !tbaa !7
  %19 = load i32, ptr @lock, align 4, !tbaa !11
  %20 = load ptr, ptr @ht, align 8, !tbaa !32
  %21 = getelementptr inbounds i32, ptr %20, i64 %.lcssa
  store i32 %19, ptr %21, align 4, !tbaa !11
  %22 = shl i32 %0, 5
  %23 = or i32 %22, %1
  %24 = trunc i32 %23 to i8
  store i8 %24, ptr %16, align 1, !tbaa !21
  br label %32

25:                                               ; preds = %6
  %26 = add nsw i32 %5, %7
  %27 = icmp sgt i32 %26, 1050010
  %28 = add nsw i32 %26, -1050011
  %29 = select i1 %27, i32 %28, i32 %26
  %30 = add nuw nsw i32 %8, 1
  %31 = icmp eq i32 %30, 8
  br i1 %31, label %32, label %6, !llvm.loop !36

32:                                               ; preds = %25, %15
  ret void
}

; Function Attrs: nofree nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal void @transrestore(i32 noundef %0, i32 noundef %1) #13 {
  %3 = tail call i32 @llvm.smin.i32(i32 %1, i32 31)
  %4 = load i64, ptr @posed, align 8, !tbaa !7
  %5 = add nsw i64 %4, 1
  store i64 %5, ptr @posed, align 8, !tbaa !7
  tail call void @hash() #16
  %6 = load i32, ptr @htindex, align 4, !tbaa !11
  %7 = load ptr, ptr @ht, align 8, !tbaa !32
  %8 = load i32, ptr @lock, align 4, !tbaa !11
  %9 = load i32, ptr @stride, align 4
  br label %10

10:                                               ; preds = %25, %2
  %11 = phi i32 [ %6, %2 ], [ %29, %25 ]
  %12 = phi i32 [ 0, %2 ], [ %30, %25 ]
  %13 = sext i32 %11 to i64
  %14 = getelementptr inbounds i32, ptr %7, i64 %13
  %15 = load i32, ptr %14, align 4, !tbaa !11
  %16 = icmp eq i32 %15, %8
  br i1 %16, label %17, label %25

17:                                               ; preds = %10
  %.lcssa = phi i64 [ %13, %10 ]
  %18 = load i64, ptr @hits, align 8, !tbaa !7
  %19 = add nsw i64 %18, 1
  store i64 %19, ptr @hits, align 8, !tbaa !7
  %20 = shl i32 %0, 5
  %21 = or i32 %3, %20
  %22 = trunc i32 %21 to i8
  %23 = load ptr, ptr @he, align 8, !tbaa !32
  %24 = getelementptr inbounds i8, ptr %23, i64 %.lcssa
  store i8 %22, ptr %24, align 1, !tbaa !21
  br label %33

25:                                               ; preds = %10
  %26 = add nsw i32 %9, %11
  %27 = icmp sgt i32 %26, 1050010
  %28 = add nsw i32 %26, -1050011
  %29 = select i1 %27, i32 %28, i32 %26
  %30 = add nuw nsw i32 %12, 1
  %31 = icmp eq i32 %30, 8
  br i1 %31, label %32, label %10, !llvm.loop !37

32:                                               ; preds = %25
  tail call void @transput(i32 noundef %0, i32 noundef %3) #16
  br label %33

33:                                               ; preds = %32, %17
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #2

; Function Attrs: nofree nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal void @transtore(i32 noundef %0, i32 noundef %1) #13 {
  %3 = tail call i32 @llvm.smin.i32(i32 %1, i32 31)
  %4 = load i64, ptr @posed, align 8, !tbaa !7
  %5 = add nsw i64 %4, 1
  store i64 %5, ptr @posed, align 8, !tbaa !7
  tail call void @hash() #16
  tail call void @transput(i32 noundef %0, i32 noundef %3) #16
  ret void
}

; Function Attrs: nofree nounwind optsize uwtable
define internal void @htstat() #6 {
  %1 = alloca [32 x i32], align 16
  %2 = alloca [8 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %1) #14
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %1, i8 0, i64 128, i1 false), !tbaa !11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %2, i8 0, i64 32, i1 false), !tbaa !11
  %3 = load ptr, ptr @he, align 8, !tbaa !32
  br label %4

4:                                                ; preds = %23, %0
  %5 = phi i64 [ 0, %0 ], [ %24, %23 ]
  %6 = getelementptr inbounds i8, ptr %3, i64 %5
  %7 = load i8, ptr %6, align 1, !tbaa !21
  %8 = and i8 %7, 31
  %9 = zext i8 %8 to i64
  %10 = getelementptr inbounds [32 x i32], ptr %1, i64 0, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !11
  %12 = add nsw i32 %11, 1
  store i32 %12, ptr %10, align 4, !tbaa !11
  %13 = sext i8 %7 to i32
  %14 = and i32 %13, 31
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %23, label %16

16:                                               ; preds = %4
  %17 = ashr i32 %13, 5
  %18 = add nsw i32 %17, 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds [8 x i32], ptr %2, i64 0, i64 %19
  %21 = load i32, ptr %20, align 4, !tbaa !11
  %22 = add nsw i32 %21, 1
  store i32 %22, ptr %20, align 4, !tbaa !11
  br label %23

23:                                               ; preds = %16, %4
  %24 = add nuw nsw i64 %5, 1
  %25 = icmp eq i64 %24, 1050011
  br i1 %25, label %26, label %4, !llvm.loop !38

26:                                               ; preds = %23
  %27 = load <4 x i32>, ptr %2, align 16, !tbaa !11
  %28 = getelementptr inbounds [8 x i32], ptr %2, i64 0, i64 4
  %29 = load <4 x i32>, ptr %28, align 16, !tbaa !11
  %30 = add <4 x i32> %29, %27
  %31 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %30)
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %64

33:                                               ; preds = %26
  %34 = load i64, ptr @posed, align 8, !tbaa !7
  %35 = icmp eq i64 %34, 0
  %36 = load i64, ptr @hits, align 8
  %37 = sitofp i64 %36 to double
  %38 = sitofp i64 %34 to double
  %39 = fdiv double %37, %38
  %40 = select i1 %35, double 0.000000e+00, double %39
  %41 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1.37, double noundef %40) #16
  %42 = getelementptr inbounds [8 x i32], ptr %2, i64 0, i64 2
  %43 = load i32, ptr %42, align 8, !tbaa !11
  %44 = sitofp i32 %43 to double
  %45 = sitofp i32 %31 to double
  %46 = fdiv double %44, %45
  %47 = getelementptr inbounds [8 x i32], ptr %2, i64 0, i64 3
  %48 = load i32, ptr %47, align 4, !tbaa !11
  %49 = sitofp i32 %48 to double
  %50 = fdiv double %49, %45
  %51 = getelementptr inbounds [8 x i32], ptr %2, i64 0, i64 4
  %52 = load i32, ptr %51, align 16, !tbaa !11
  %53 = sitofp i32 %52 to double
  %54 = fdiv double %53, %45
  %55 = getelementptr inbounds [8 x i32], ptr %2, i64 0, i64 5
  %56 = load i32, ptr %55, align 4, !tbaa !11
  %57 = sitofp i32 %56 to double
  %58 = fdiv double %57, %45
  %59 = getelementptr inbounds [8 x i32], ptr %2, i64 0, i64 6
  %60 = load i32, ptr %59, align 8, !tbaa !11
  %61 = sitofp i32 %60 to double
  %62 = fdiv double %61, %45
  %63 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2.38, double noundef %46, double noundef %50, double noundef %54, double noundef %58, double noundef %62) #16
  br label %64

64:                                               ; preds = %33, %26
  br label %65

65:                                               ; preds = %65, %64
  %66 = phi i64 [ %73, %65 ], [ 0, %64 ]
  %67 = getelementptr inbounds [32 x i32], ptr %1, i64 0, i64 %66
  %68 = load i32, ptr %67, align 4, !tbaa !11
  %69 = and i64 %66, 7
  %70 = icmp eq i64 %69, 7
  %71 = select i1 %70, i32 10, i32 9
  %72 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3.39, i32 noundef %68, i32 noundef %71) #16
  %73 = add nuw nsw i64 %66, 1
  %74 = icmp eq i64 %73, 32
  br i1 %74, label %75, label %65, !llvm.loop !39

75:                                               ; preds = %65
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #14
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %1) #14
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #2

attributes #0 = { nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nosync nounwind optsize memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { nofree nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noreturn nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nounwind }
attributes #15 = { nounwind optsize }
attributes #16 = { optsize }
attributes #17 = { nounwind optsize allocsize(0,1) }
attributes #18 = { noreturn nounwind optsize }

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
!8 = !{!"long long", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!12, !12, i64 0}
!12 = !{!"int", !9, i64 0}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.mustprogress"}
!15 = distinct !{!15, !14}
!16 = !{i32 -67108864, i32 67108865}
!17 = distinct !{!17, !14}
!18 = distinct !{!18, !14}
!19 = distinct !{!19, !14}
!20 = distinct !{!20, !14}
!21 = !{!9, !9, i64 0}
!22 = distinct !{!22, !14}
!23 = distinct !{!23, !14}
!24 = distinct !{!24, !14}
!25 = distinct !{!25, !14, !26, !27}
!26 = !{!"llvm.loop.isvectorized", i32 1}
!27 = !{!"llvm.loop.unroll.runtime.disable"}
!28 = distinct !{!28, !14}
!29 = distinct !{!29, !14}
!30 = distinct !{!30, !14, !26, !27}
!31 = distinct !{!31, !14}
!32 = !{!33, !33, i64 0}
!33 = !{!"any pointer", !9, i64 0}
!34 = distinct !{!34, !14}
!35 = distinct !{!35, !14}
!36 = distinct !{!36, !14}
!37 = distinct !{!37, !14}
!38 = distinct !{!38, !14}
!39 = distinct !{!39, !14}
