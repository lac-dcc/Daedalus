; ModuleID = 'pcompress2.e.bc.ll'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }

@ari_pos = internal unnamed_addr global i32 0, align 4
@char_to_index.13 = internal unnamed_addr global [256 x i32] zeroinitializer, align 16
@cum_freq.19 = internal unnamed_addr global [258 x i32] zeroinitializer, align 16
@low = internal unnamed_addr global i64 0, align 8
@high = internal unnamed_addr global i64 0, align 8
@bits_to_follow = internal unnamed_addr global i64 0, align 8
@buffer.27 = internal unnamed_addr global i32 0, align 4
@bits_to_go.21 = internal unnamed_addr global i32 0, align 4
@index_to_char.15 = internal unnamed_addr global [258 x i8] zeroinitializer, align 16
@freq.17 = internal unnamed_addr global [258 x i32] zeroinitializer, align 16
@.str = private unnamed_addr constant [22 x i8] c"USAGE: %s <FILENAME>\0A\00", align 1
@fpi = internal unnamed_addr global ptr null, align 8
@.str.2 = private unnamed_addr constant [33 x i8] c"ERROR: Could not find infile %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@fpo = internal unnamed_addr global ptr null, align 8
@.str.5 = private unnamed_addr constant [68 x i8] c"ERROR: Could not open outfile (do you have write permission here?)\0A\00", align 1
@in.25 = internal unnamed_addr global ptr null, align 8
@bw = internal unnamed_addr global ptr null, align 8
@rot = internal unnamed_addr global ptr null, align 8
@rle = internal unnamed_addr global ptr null, align 8
@ari = internal unnamed_addr global ptr null, align 8
@size.34 = internal unnamed_addr global i32 0, align 4
@.str.8 = private unnamed_addr constant [53 x i8] c"PANIC: RLE buf larger than %d bytes needed (repeat)\0A\00", align 1
@str = private unnamed_addr constant [43 x i8] c"Something is fishy regarding the file size\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"Compile date: %s\0A\00", align 1
@.str.1.8 = private unnamed_addr constant [6 x i8] c"today\00", align 1
@.str.2.9 = private unnamed_addr constant [23 x i8] c"Compiler switches: %s\0A\00", align 1
@.str.3.10 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4.11 = private unnamed_addr constant [7 x i8] c".compr\00", align 1
@in_size = internal unnamed_addr global i32 0, align 4
@in_pos = internal unnamed_addr global i32 0, align 4
@deari_pos = internal unnamed_addr global i32 0, align 4
@cum_freq = internal unnamed_addr global [258 x i32] zeroinitializer, align 16
@index_to_char = internal unnamed_addr global [258 x i8] zeroinitializer, align 16
@freq = internal unnamed_addr global [258 x i32] zeroinitializer, align 16
@buffer = internal unnamed_addr global i32 0, align 4
@bits_to_go = internal unnamed_addr global i32 0, align 4
@garbage_bits = internal unnamed_addr global i32 0, align 4
@low.23 = internal unnamed_addr global i64 0, align 8
@high.22 = internal unnamed_addr global i64 0, align 8
@.str.28 = private unnamed_addr constant [16 x i8] c"Bad input file\0A\00", align 1
@.str.31 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.1.32 = private unnamed_addr constant [31 x i8] c"ERROR: Could not find infile.\0A\00", align 1
@size = internal global i32 0, align 4
@orgpos = internal global i32 0, align 4
@in = internal unnamed_addr global ptr null, align 8
@deari = internal unnamed_addr global ptr null, align 8
@derle = internal unnamed_addr global ptr null, align 8
@debw = internal unnamed_addr global ptr null, align 8
@.str.2.39 = private unnamed_addr constant [22 x i8] c"ERROR: Out of memory\0A\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8

; Function Attrs: nounwind optsize uwtable
define dso_local i32 @main(i32 noundef %0, ptr nocapture noundef %1) #0 {
  %3 = alloca [256 x i32], align 16
  %4 = alloca [256 x i32], align 16
  %5 = alloca [1000 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 1000, ptr nonnull %5) #17
  %6 = load ptr, ptr @stderr, align 8, !tbaa !7
  %7 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1.8) #18
  %8 = load ptr, ptr @stderr, align 8, !tbaa !7
  %9 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull @.str.2.9, ptr noundef nonnull @.str.3.10) #18
  tail call fastcc void @compress(i32 noundef %0, ptr noundef %1) #19
  tail call fastcc void @compress(i32 noundef %0, ptr noundef %1) #19
  tail call fastcc void @compress(i32 noundef %0, ptr noundef %1) #19
  tail call fastcc void @compress(i32 noundef %0, ptr noundef %1) #19
  %10 = getelementptr inbounds ptr, ptr %1, i64 1
  %11 = load ptr, ptr %10, align 8, !tbaa !7
  %12 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) %11) #19
  %13 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %5)
  %14 = getelementptr inbounds i8, ptr %5, i64 %13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %14, ptr noundef nonnull align 1 dereferenceable(7) @.str.4.11, i64 7, i1 false)
  store ptr %5, ptr %10, align 8, !tbaa !7
  %15 = call noalias ptr @fopen(ptr noundef nonnull %5, ptr noundef nonnull @.str.31) #20
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load ptr, ptr @stderr, align 8, !tbaa !7
  %19 = call i64 @fwrite(ptr nonnull @.str.1.32, i64 30, i64 1, ptr %18) #21
  call void @exit(i32 noundef 1) #22
  unreachable

20:                                               ; preds = %2
  %21 = call i64 @fread(ptr noundef nonnull @size, i64 noundef 4, i64 noundef 1, ptr noundef nonnull %15) #20
  %22 = call i64 @fread(ptr noundef nonnull @orgpos, i64 noundef 4, i64 noundef 1, ptr noundef nonnull %15) #20
  %23 = load i32, ptr @size, align 4, !tbaa !11
  %24 = shl i32 %23, 1
  %25 = zext i32 %24 to i64
  %26 = call noalias ptr @malloc(i64 noundef %25) #23
  store ptr %26, ptr @in, align 8, !tbaa !7
  %27 = call noalias ptr @malloc(i64 noundef %25) #23
  store ptr %27, ptr @deari, align 8, !tbaa !7
  %28 = call noalias ptr @malloc(i64 noundef %25) #23
  store ptr %28, ptr @derle, align 8, !tbaa !7
  %29 = call noalias ptr @malloc(i64 noundef %25) #23
  store ptr %29, ptr @debw, align 8, !tbaa !7
  %30 = insertelement <4 x ptr> poison, ptr %27, i64 0
  %31 = insertelement <4 x ptr> %30, ptr %26, i64 1
  %32 = insertelement <4 x ptr> %31, ptr %28, i64 2
  %33 = insertelement <4 x ptr> %32, ptr %29, i64 3
  %34 = icmp eq <4 x ptr> %33, zeroinitializer
  %35 = bitcast <4 x i1> %34 to i4
  %36 = icmp eq i4 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %20
  %38 = load ptr, ptr @stderr, align 8, !tbaa !7
  %39 = call i64 @fwrite(ptr nonnull @.str.2.39, i64 21, i64 1, ptr %38) #21
  call void @exit(i32 noundef 1) #22
  unreachable

40:                                               ; preds = %20
  %41 = call i64 @fread(ptr noundef nonnull %26, i64 noundef 1, i64 noundef %25, ptr noundef nonnull %15) #20
  %42 = trunc i64 %41 to i32
  %43 = call i32 @fclose(ptr noundef nonnull %15) #20
  store i32 %42, ptr @in_size, align 4, !tbaa !11
  store i32 0, ptr @in_pos, align 4, !tbaa !11
  store i32 0, ptr @deari_pos, align 4, !tbaa !11
  br label %44

44:                                               ; preds = %44, %40
  %45 = phi i64 [ 0, %40 ], [ %49, %44 ]
  %46 = phi <4 x i8> [ <i8 0, i8 1, i8 2, i8 3>, %40 ], [ %50, %44 ]
  %47 = or i64 %45, 1
  %48 = getelementptr inbounds [258 x i8], ptr @index_to_char, i64 0, i64 %47
  store <4 x i8> %46, ptr %48, align 1, !tbaa !13
  %49 = add nuw nsw i64 %45, 4
  %50 = add <4 x i8> %46, <i8 4, i8 4, i8 4, i8 4>
  %51 = icmp eq i64 %49, 256
  br i1 %51, label %52, label %44, !llvm.loop !14

52:                                               ; preds = %52, %44
  %53 = phi i64 [ %58, %52 ], [ 0, %44 ]
  %54 = getelementptr inbounds [258 x i32], ptr @freq, i64 0, i64 %53
  store i32 1, ptr %54, align 4, !tbaa !11
  %55 = getelementptr inbounds [258 x i32], ptr @cum_freq, i64 0, i64 %53
  %56 = trunc i64 %53 to i32
  %57 = sub i32 257, %56
  store i32 %57, ptr %55, align 4, !tbaa !11
  %58 = add nuw nsw i64 %53, 1
  %59 = icmp eq i64 %58, 258
  br i1 %59, label %60, label %52, !llvm.loop !18

60:                                               ; preds = %52
  store i32 0, ptr @freq, align 16, !tbaa !11
  store i32 0, ptr @bits_to_go, align 4, !tbaa !11
  store i32 0, ptr @garbage_bits, align 4, !tbaa !11
  br label %61

61:                                               ; preds = %61, %60
  %62 = phi i64 [ 0, %60 ], [ %67, %61 ]
  %63 = phi i32 [ 1, %60 ], [ %68, %61 ]
  %64 = shl nsw i64 %62, 1
  %65 = call fastcc i32 @input_bit() #20, !range !19
  %66 = zext i32 %65 to i64
  %67 = or i64 %64, %66
  %68 = add nuw nsw i32 %63, 1
  %69 = icmp eq i32 %68, 17
  br i1 %69, label %70, label %61, !llvm.loop !20

70:                                               ; preds = %173, %178, %61
  %71 = phi i64 [ %67, %61 ], [ %.lcssa4, %178 ], [ %.lcssa4, %173 ]
  %72 = phi i64 [ 0, %61 ], [ %.lcssa3, %178 ], [ %.lcssa3, %173 ]
  %73 = phi i64 [ 65535, %61 ], [ %.lcssa2, %178 ], [ %.lcssa2, %173 ]
  %74 = sub nsw i64 %73, %72
  %75 = add nsw i64 %74, 1
  %76 = add i64 %71, 1
  %77 = sub i64 %76, %72
  %78 = load i32, ptr @cum_freq, align 16, !tbaa !11
  %79 = sext i32 %78 to i64
  %80 = mul nsw i64 %77, %79
  %81 = add nsw i64 %80, -1
  %82 = sdiv i64 %81, %75
  %83 = trunc i64 %82 to i32
  br label %84

84:                                               ; preds = %84, %70
  %85 = phi i64 [ %89, %84 ], [ 1, %70 ]
  %86 = getelementptr inbounds i32, ptr @cum_freq, i64 %85
  %87 = load i32, ptr %86, align 4, !tbaa !11
  %88 = icmp sgt i32 %87, %83
  %89 = add nuw i64 %85, 1
  br i1 %88, label %84, label %90, !llvm.loop !21

90:                                               ; preds = %84
  %.lcssa1 = phi i64 [ %85, %84 ]
  %.lcssa = phi i32 [ %87, %84 ]
  %91 = shl i64 %.lcssa1, 32
  %92 = add i64 %91, -4294967296
  %93 = ashr exact i64 %92, 32
  %94 = getelementptr inbounds i32, ptr @cum_freq, i64 %93
  %95 = load i32, ptr %94, align 4, !tbaa !11
  %96 = sext i32 %95 to i64
  %97 = mul nsw i64 %75, %96
  %98 = sdiv i64 %97, %79
  %99 = add i64 %72, -1
  %100 = add i64 %99, %98
  store i64 %100, ptr @high.22, align 8, !tbaa !22
  %101 = sext i32 %.lcssa to i64
  %102 = mul nsw i64 %75, %101
  %103 = sdiv i64 %102, %79
  %104 = add nsw i64 %103, %72
  store i64 %104, ptr @low.23, align 8, !tbaa !22
  br label %105

105:                                              ; preds = %119, %90
  %106 = phi i64 [ %129, %119 ], [ %71, %90 ]
  %107 = phi i64 [ %131, %119 ], [ %104, %90 ]
  %108 = phi i64 [ %130, %119 ], [ %100, %90 ]
  %109 = icmp slt i64 %108, 32768
  br i1 %109, label %119, label %110

110:                                              ; preds = %105
  %111 = icmp sgt i64 %107, 32767
  br i1 %111, label %114, label %112

112:                                              ; preds = %110
  %113 = call i1 @_wyvern_slice_encode_symbol__369939537(i64 %107, i64 %108)
  br i1 %113, label %114, label %132

114:                                              ; preds = %112, %110
  %115 = phi i64 [ -32768, %110 ], [ -16384, %112 ]
  %116 = add nsw i64 %115, %106
  %117 = add nsw i64 %115, %107
  %118 = add nsw i64 %115, %108
  br label %119

119:                                              ; preds = %114, %105
  %120 = phi i64 [ %106, %105 ], [ %116, %114 ]
  %121 = phi i64 [ %108, %105 ], [ %118, %114 ]
  %122 = phi i64 [ %107, %105 ], [ %117, %114 ]
  %123 = shl nsw i64 %122, 1
  store i64 %123, ptr @low.23, align 8, !tbaa !22
  %124 = shl nsw i64 %121, 1
  %125 = or i64 %124, 1
  store i64 %125, ptr @high.22, align 8, !tbaa !22
  %126 = shl nsw i64 %120, 1
  %127 = call fastcc i32 @input_bit() #20, !range !19
  %128 = zext i32 %127 to i64
  %129 = or i64 %126, %128
  %130 = load i64, ptr @high.22, align 8
  %131 = load i64, ptr @low.23, align 8, !tbaa !22
  br label %105

132:                                              ; preds = %112
  %.lcssa4 = phi i64 [ %106, %112 ]
  %.lcssa3 = phi i64 [ %107, %112 ]
  %.lcssa2 = phi i64 [ %108, %112 ]
  %133 = trunc i64 %.lcssa1 to i32
  %134 = icmp eq i32 %133, 257
  br i1 %134, label %187, label %135

135:                                              ; preds = %132
  %136 = ashr exact i64 %91, 32
  %137 = getelementptr inbounds [258 x i8], ptr @index_to_char, i64 0, i64 %136
  %138 = load i8, ptr %137, align 1, !tbaa !13
  %139 = load ptr, ptr @deari, align 8, !tbaa !7
  %140 = load i32, ptr @deari_pos, align 4, !tbaa !11
  %141 = add i32 %140, 1
  store i32 %141, ptr @deari_pos, align 4, !tbaa !11
  %142 = zext i32 %140 to i64
  %143 = getelementptr inbounds i8, ptr %139, i64 %142
  store i8 %138, ptr %143, align 1, !tbaa !13
  %144 = load i32, ptr @cum_freq, align 16, !tbaa !11
  %145 = icmp eq i32 %144, 16383
  br i1 %145, label %146, label %157

146:                                              ; preds = %146, %135
  %147 = phi i64 [ %155, %146 ], [ 257, %135 ]
  %148 = phi i32 [ %154, %146 ], [ 0, %135 ]
  %149 = getelementptr inbounds [258 x i32], ptr @freq, i64 0, i64 %147
  %150 = load i32, ptr %149, align 4, !tbaa !11
  %151 = add nsw i32 %150, 1
  %152 = sdiv i32 %151, 2
  store i32 %152, ptr %149, align 4, !tbaa !11
  %153 = getelementptr inbounds [258 x i32], ptr @cum_freq, i64 0, i64 %147
  store i32 %148, ptr %153, align 4, !tbaa !11
  %154 = add nsw i32 %152, %148
  %155 = add nsw i64 %147, -1
  %156 = icmp eq i64 %147, 0
  br i1 %156, label %157, label %146, !llvm.loop !24

157:                                              ; preds = %146, %135
  %158 = getelementptr inbounds [258 x i32], ptr @freq, i64 0, i64 %136
  %159 = load i32, ptr %158, align 4, !tbaa !11
  br label %160

160:                                              ; preds = %160, %157
  %161 = phi i64 [ %162, %160 ], [ %136, %157 ]
  %162 = add i64 %161, -1
  %163 = getelementptr inbounds [258 x i32], ptr @freq, i64 0, i64 %162
  %164 = load i32, ptr %163, align 4, !tbaa !11
  %165 = icmp eq i32 %159, %164
  br i1 %165, label %160, label %166, !llvm.loop !25

166:                                              ; preds = %160
  %.lcssa5 = phi i64 [ %161, %160 ]
  %167 = trunc i64 %.lcssa5 to i32
  %168 = getelementptr inbounds [258 x i32], ptr @freq, i64 0, i64 %.lcssa5
  %169 = icmp slt i32 %167, %133
  br i1 %169, label %170, label %173

170:                                              ; preds = %166
  %171 = getelementptr inbounds [258 x i8], ptr @index_to_char, i64 0, i64 %.lcssa5
  %172 = load i8, ptr %171, align 1, !tbaa !13
  store i8 %138, ptr %171, align 1, !tbaa !13
  store i8 %172, ptr %137, align 1, !tbaa !13
  br label %173

173:                                              ; preds = %170, %166
  %174 = add nsw i32 %159, 1
  store i32 %174, ptr %168, align 4, !tbaa !11
  %175 = icmp sgt i32 %167, 0
  br i1 %175, label %176, label %70

176:                                              ; preds = %173
  %177 = and i64 %.lcssa5, 4294967295
  br label %178

178:                                              ; preds = %178, %176
  %179 = phi i64 [ %177, %176 ], [ %180, %178 ]
  %180 = add nsw i64 %179, -1
  %181 = and i64 %180, 4294967295
  %182 = getelementptr inbounds [258 x i32], ptr @cum_freq, i64 0, i64 %181
  %183 = load i32, ptr %182, align 4, !tbaa !11
  %184 = add nsw i32 %183, 1
  store i32 %184, ptr %182, align 4, !tbaa !11
  %185 = trunc i64 %179 to i32
  %186 = icmp sgt i32 %185, 1
  br i1 %186, label %178, label %70, !llvm.loop !26

187:                                              ; preds = %132
  %188 = load i32, ptr @deari_pos, align 4, !tbaa !11
  %189 = load ptr, ptr @in, align 8, !tbaa !7
  call void @free(ptr noundef %189) #19
  %190 = icmp eq i32 %188, 0
  %191 = load ptr, ptr @deari, align 8, !tbaa !7
  %192 = load ptr, ptr @derle, align 8
  br i1 %190, label %236, label %193

193:                                              ; preds = %232, %187
  %194 = phi i32 [ %234, %232 ], [ 0, %187 ]
  %195 = phi i32 [ %233, %232 ], [ 0, %187 ]
  %196 = zext i32 %195 to i64
  %197 = getelementptr inbounds i8, ptr %191, i64 %196
  %198 = load i8, ptr %197, align 1, !tbaa !13
  %199 = icmp sgt i8 %198, -1
  br i1 %199, label %222, label %200

200:                                              ; preds = %193
  %201 = and i8 %198, 127
  %202 = icmp eq i8 %201, 0
  br i1 %202, label %219, label %203

203:                                              ; preds = %200
  %204 = add nuw i32 %195, 1
  %205 = zext i32 %204 to i64
  %206 = getelementptr inbounds i8, ptr %191, i64 %205
  br label %207

207:                                              ; preds = %207, %203
  %208 = phi i32 [ %194, %203 ], [ %211, %207 ]
  %209 = phi i32 [ 0, %203 ], [ %214, %207 ]
  %210 = load i8, ptr %206, align 1, !tbaa !13
  %211 = add i32 %208, 1
  %212 = zext i32 %208 to i64
  %213 = getelementptr inbounds i8, ptr %192, i64 %212
  store i8 %210, ptr %213, align 1, !tbaa !13
  %214 = add nuw nsw i32 %209, 1
  %215 = load i8, ptr %197, align 1, !tbaa !13
  %216 = and i8 %215, 127
  %217 = zext i8 %216 to i32
  %218 = icmp ult i32 %214, %217
  br i1 %218, label %207, label %219, !llvm.loop !27

219:                                              ; preds = %207, %200
  %220 = phi i32 [ %194, %200 ], [ %211, %207 ]
  %221 = add i32 %195, 2
  br label %232

222:                                              ; preds = %193
  %223 = zext i32 %194 to i64
  %224 = getelementptr inbounds i8, ptr %192, i64 %223
  %225 = getelementptr inbounds i8, ptr %197, i64 1
  %226 = zext i8 %198 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %224, ptr nonnull align 1 %225, i64 %226, i1 false)
  %227 = load i8, ptr %197, align 1, !tbaa !13
  %228 = zext i8 %227 to i32
  %229 = add i32 %194, %228
  %230 = add nuw i32 %195, 1
  %231 = add i32 %230, %228
  br label %232

232:                                              ; preds = %222, %219
  %233 = phi i32 [ %221, %219 ], [ %231, %222 ]
  %234 = phi i32 [ %220, %219 ], [ %229, %222 ]
  %235 = icmp ult i32 %233, %188
  br i1 %235, label %193, label %236, !llvm.loop !28

236:                                              ; preds = %232, %187
  call void @free(ptr noundef %191) #19
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %4) #17
  %237 = load i32, ptr @size, align 4, !tbaa !11
  %238 = zext i32 %237 to i64
  %239 = shl nuw nsw i64 %238, 2
  %240 = call noalias ptr @malloc(i64 noundef %239) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %3, i8 0, i64 1024, i1 false), !tbaa !11
  %241 = icmp eq i32 %237, 0
  br i1 %241, label %253, label %242

242:                                              ; preds = %242, %236
  %243 = phi i64 [ %250, %242 ], [ 0, %236 ]
  %244 = getelementptr inbounds i8, ptr %192, i64 %243
  %245 = load i8, ptr %244, align 1, !tbaa !13
  %246 = zext i8 %245 to i64
  %247 = getelementptr inbounds [256 x i32], ptr %3, i64 0, i64 %246
  %248 = load i32, ptr %247, align 4, !tbaa !11
  %249 = add i32 %248, 1
  store i32 %249, ptr %247, align 4, !tbaa !11
  %250 = add nuw nsw i64 %243, 1
  %251 = icmp eq i64 %250, %238
  br i1 %251, label %253, label %242, !llvm.loop !29

252:                                              ; preds = %253
  br i1 %241, label %276, label %262

253:                                              ; preds = %236, %242, %253
  %254 = phi i64 [ %260, %253 ], [ 0, %242 ], [ 0, %236 ]
  %255 = phi i32 [ %259, %253 ], [ 0, %242 ], [ 0, %236 ]
  %256 = getelementptr inbounds [256 x i32], ptr %4, i64 0, i64 %254
  store i32 %255, ptr %256, align 4, !tbaa !11
  %257 = getelementptr inbounds [256 x i32], ptr %3, i64 0, i64 %254
  %258 = load i32, ptr %257, align 4, !tbaa !11
  %259 = add i32 %258, %255
  store i32 0, ptr %257, align 4, !tbaa !11
  %260 = add nuw nsw i64 %254, 1
  %261 = icmp eq i64 %260, 256
  br i1 %261, label %252, label %253, !llvm.loop !30

262:                                              ; preds = %262, %252
  %263 = phi i64 [ %274, %262 ], [ 0, %252 ]
  %264 = getelementptr inbounds i8, ptr %192, i64 %263
  %265 = load i8, ptr %264, align 1, !tbaa !13
  %266 = zext i8 %265 to i64
  %267 = getelementptr inbounds [256 x i32], ptr %3, i64 0, i64 %266
  %268 = load i32, ptr %267, align 4, !tbaa !11
  %269 = getelementptr inbounds [256 x i32], ptr %4, i64 0, i64 %266
  %270 = load i32, ptr %269, align 4, !tbaa !11
  %271 = add i32 %270, %268
  %272 = getelementptr inbounds i32, ptr %240, i64 %263
  store i32 %271, ptr %272, align 4, !tbaa !11
  %273 = add i32 %268, 1
  store i32 %273, ptr %267, align 4, !tbaa !11
  %274 = add nuw nsw i64 %263, 1
  %275 = icmp eq i64 %274, %238
  br i1 %275, label %276, label %262, !llvm.loop !31

276:                                              ; preds = %262, %252
  %277 = load i32, ptr @orgpos, align 4, !tbaa !11
  %278 = zext i32 %277 to i64
  %279 = getelementptr inbounds i8, ptr %192, i64 %278
  %280 = load i8, ptr %279, align 1, !tbaa !13
  %281 = load ptr, ptr @debw, align 8, !tbaa !7
  %282 = add i32 %237, -1
  %283 = zext i32 %282 to i64
  %284 = getelementptr inbounds i8, ptr %281, i64 %283
  store i8 %280, ptr %284, align 1, !tbaa !13
  %285 = load i32, ptr @size, align 4, !tbaa !11
  %286 = icmp ugt i32 %285, 1
  br i1 %286, label %287, label %310

287:                                              ; preds = %276
  %288 = load i32, ptr @orgpos, align 4, !tbaa !11
  br label %289

289:                                              ; preds = %289, %287
  %290 = phi i32 [ %306, %289 ], [ %288, %287 ]
  %291 = phi i32 [ %308, %289 ], [ %285, %287 ]
  %292 = phi i32 [ %307, %289 ], [ 1, %287 ]
  %293 = zext i32 %290 to i64
  %294 = getelementptr inbounds i32, ptr %240, i64 %293
  %295 = load i32, ptr %294, align 4, !tbaa !11
  %296 = zext i32 %295 to i64
  %297 = getelementptr inbounds i8, ptr %192, i64 %296
  %298 = load i8, ptr %297, align 1, !tbaa !13
  %299 = xor i32 %292, -1
  %300 = add i32 %291, %299
  %301 = zext i32 %300 to i64
  %302 = getelementptr inbounds i8, ptr %281, i64 %301
  store i8 %298, ptr %302, align 1, !tbaa !13
  %303 = load i32, ptr @orgpos, align 4, !tbaa !11
  %304 = zext i32 %303 to i64
  %305 = getelementptr inbounds i32, ptr %240, i64 %304
  %306 = load i32, ptr %305, align 4, !tbaa !11
  store i32 %306, ptr @orgpos, align 4, !tbaa !11
  %307 = add nuw i32 %292, 1
  %308 = load i32, ptr @size, align 4, !tbaa !11
  %309 = icmp ult i32 %307, %308
  br i1 %309, label %289, label %310, !llvm.loop !32

310:                                              ; preds = %289, %276
  call void @free(ptr noundef %240) #19
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %3) #17
  call void @free(ptr noundef nonnull %192) #19
  %311 = load i32, ptr @size, align 4, !tbaa !11
  %312 = zext i32 %311 to i64
  %313 = load ptr, ptr @stdout, align 8, !tbaa !7
  %314 = call i64 @fwrite(ptr noundef nonnull %281, i64 noundef 1, i64 noundef %312, ptr noundef %313) #20
  %315 = load ptr, ptr @debw, align 8, !tbaa !7
  call void @free(ptr noundef %315) #19
  %316 = call i32 @remove(ptr noundef nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 1000, ptr nonnull %5) #17
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @compress(i32 noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
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
  %9 = load ptr, ptr @stderr, align 8, !tbaa !7
  %10 = load ptr, ptr %1, align 8, !tbaa !7
  %11 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef nonnull @.str, ptr noundef %10) #18
  tail call void @exit(i32 noundef 1) #22
  unreachable

12:                                               ; preds = %2
  %13 = getelementptr inbounds ptr, ptr %1, i64 1
  %14 = load ptr, ptr %13, align 8, !tbaa !7
  %15 = call i32 @stat(ptr noundef %14, ptr noundef nonnull %5) #19
  %16 = getelementptr inbounds %struct.stat, ptr %5, i64 0, i32 8
  %17 = load i64, ptr %16, align 8, !tbaa !33
  %18 = trunc i64 %17 to i32
  store i32 %18, ptr %6, align 4, !tbaa !11
  %19 = tail call noalias ptr @fopen(ptr noundef %14, ptr noundef nonnull @.str.31) #20
  store ptr %19, ptr @fpi, align 8, !tbaa !7
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %12
  %22 = load ptr, ptr @stderr, align 8, !tbaa !7
  %23 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef nonnull @.str.2, ptr noundef %14) #18
  tail call void @exit(i32 noundef 1) #22
  unreachable

24:                                               ; preds = %12
  %25 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) %14) #19
  %26 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4)
  %27 = getelementptr inbounds i8, ptr %4, i64 %26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %27, ptr noundef nonnull align 1 dereferenceable(7) @.str.4.11, i64 7, i1 false)
  %28 = call noalias ptr @fopen(ptr noundef nonnull %4, ptr noundef nonnull @.str.4) #20
  store ptr %28, ptr @fpo, align 8, !tbaa !7
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %24
  %31 = load ptr, ptr @stderr, align 8, !tbaa !7
  %32 = call i64 @fwrite(ptr nonnull @.str.5, i64 67, i64 1, ptr %31) #21
  call void @exit(i32 noundef 1) #22
  unreachable

33:                                               ; preds = %24
  %34 = call i64 @fwrite(ptr noundef nonnull %6, i64 noundef 4, i64 noundef 1, ptr noundef nonnull %28) #20
  %35 = load i32, ptr %6, align 4, !tbaa !11
  %36 = shl i32 %35, 1
  %37 = zext i32 %36 to i64
  %38 = call noalias ptr @malloc(i64 noundef %37) #23
  store ptr %38, ptr @in.25, align 8, !tbaa !7
  %39 = zext i32 %35 to i64
  %40 = call noalias ptr @malloc(i64 noundef %39) #23
  store ptr %40, ptr @bw, align 8, !tbaa !7
  %41 = shl nuw nsw i64 %39, 2
  %42 = call noalias ptr @malloc(i64 noundef %41) #23
  store ptr %42, ptr @rot, align 8, !tbaa !7
  %43 = call noalias ptr @malloc(i64 noundef %37) #23
  store ptr %43, ptr @rle, align 8, !tbaa !7
  %44 = call noalias ptr @malloc(i64 noundef %37) #23
  store ptr %44, ptr @ari, align 8, !tbaa !7
  %45 = insertelement <4 x ptr> poison, ptr %40, i64 0
  %46 = insertelement <4 x ptr> %45, ptr %38, i64 1
  %47 = insertelement <4 x ptr> %46, ptr %42, i64 2
  %48 = insertelement <4 x ptr> %47, ptr %43, i64 3
  %49 = icmp eq <4 x ptr> %48, zeroinitializer
  %50 = icmp ne ptr %44, null
  %51 = bitcast <4 x i1> %49 to i4
  %52 = icmp eq i4 %51, 0
  %53 = and i1 %50, %52
  br i1 %53, label %57, label %54

54:                                               ; preds = %33
  %55 = load ptr, ptr @stderr, align 8, !tbaa !7
  %56 = call i64 @fwrite(ptr nonnull @.str.2.39, i64 21, i64 1, ptr %55) #21
  call void @exit(i32 noundef 1) #22
  unreachable

57:                                               ; preds = %33
  %58 = load ptr, ptr @fpi, align 8, !tbaa !7
  %59 = call i64 @fread(ptr noundef nonnull %38, i64 noundef 1, i64 noundef %39, ptr noundef %58) #20
  %60 = icmp eq i64 %59, %39
  br i1 %60, label %63, label %61

61:                                               ; preds = %57
  %62 = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  call void @exit(i32 noundef 1) #22
  unreachable

63:                                               ; preds = %57
  store i32 %35, ptr @size.34, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #17
  %64 = load ptr, ptr @in.25, align 8, !tbaa !7
  %65 = getelementptr inbounds i8, ptr %64, i64 %39
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %65, ptr align 1 %64, i64 %39, i1 false)
  %66 = icmp eq i32 %35, 0
  %67 = load ptr, ptr @rot, align 8, !tbaa !7
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
  store i32 %77, ptr %81, align 4, !tbaa !11
  br label %82

82:                                               ; preds = %80, %74
  %83 = extractelement <4 x i1> %78, i64 1
  br i1 %83, label %84, label %88

84:                                               ; preds = %82
  %85 = or i64 %75, 1
  %86 = getelementptr inbounds i32, ptr %67, i64 %85
  %87 = or i32 %77, 1
  store i32 %87, ptr %86, align 4, !tbaa !11
  br label %88

88:                                               ; preds = %84, %82
  %89 = extractelement <4 x i1> %78, i64 2
  br i1 %89, label %90, label %94

90:                                               ; preds = %88
  %91 = or i64 %75, 2
  %92 = getelementptr inbounds i32, ptr %67, i64 %91
  %93 = or i32 %77, 2
  store i32 %93, ptr %92, align 4, !tbaa !11
  br label %94

94:                                               ; preds = %90, %88
  %95 = extractelement <4 x i1> %78, i64 3
  br i1 %95, label %96, label %100

96:                                               ; preds = %94
  %97 = or i64 %75, 3
  %98 = getelementptr inbounds i32, ptr %67, i64 %97
  %99 = or i32 %77, 3
  store i32 %99, ptr %98, align 4, !tbaa !11
  br label %100

100:                                              ; preds = %96, %94
  %101 = add nuw nsw i64 %75, 4
  %102 = add <4 x i64> %76, <i64 4, i64 4, i64 4, i64 4>
  %103 = icmp eq i64 %101, %70
  br i1 %103, label %104, label %74, !llvm.loop !36

104:                                              ; preds = %100, %63
  call void @qsort(ptr noundef %67, i64 noundef %39, i64 noundef 4, ptr noundef nonnull @compare) #19
  %105 = load i32, ptr @size.34, align 4, !tbaa !11
  %106 = icmp eq i32 %105, 0
  %107 = load ptr, ptr @in.25, align 8, !tbaa !7
  %108 = load ptr, ptr @rot, align 8, !tbaa !7
  %109 = load ptr, ptr @bw, align 8, !tbaa !7
  br i1 %106, label %141, label %110

110:                                              ; preds = %104
  %111 = add i32 %105, -1
  %112 = zext i32 %105 to i64
  br label %113

113:                                              ; preds = %113, %110
  %114 = phi i64 [ 0, %110 ], [ %123, %113 ]
  %115 = getelementptr inbounds i32, ptr %108, i64 %114
  %116 = load i32, ptr %115, align 4, !tbaa !11
  %117 = add i32 %111, %116
  %118 = urem i32 %117, %105
  %119 = zext i32 %118 to i64
  %120 = getelementptr inbounds i8, ptr %107, i64 %119
  %121 = load i8, ptr %120, align 1, !tbaa !13
  %122 = getelementptr inbounds i8, ptr %109, i64 %114
  store i8 %121, ptr %122, align 1, !tbaa !13
  %123 = add nuw nsw i64 %114, 1
  %124 = icmp eq i64 %123, %112
  br i1 %124, label %125, label %113, !llvm.loop !37

125:                                              ; preds = %138, %113
  %126 = phi i64 [ %139, %138 ], [ 0, %113 ]
  %127 = getelementptr inbounds i32, ptr %108, i64 %126
  %128 = load i32, ptr %127, align 4, !tbaa !11
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %138

130:                                              ; preds = %125
  %.lcssa3 = phi i64 [ %126, %125 ]
  %131 = trunc i64 %.lcssa3 to i32
  store i32 %131, ptr %3, align 4, !tbaa !11
  %132 = load ptr, ptr @fpo, align 8, !tbaa !7
  %133 = call i64 @fwrite(ptr noundef nonnull %3, i64 noundef 4, i64 noundef 1, ptr noundef %132) #20
  %134 = load i32, ptr @size.34, align 4, !tbaa !11
  %135 = load ptr, ptr @in.25, align 8, !tbaa !7
  %136 = load ptr, ptr @rot, align 8, !tbaa !7
  %137 = load ptr, ptr @bw, align 8, !tbaa !7
  br label %141

138:                                              ; preds = %125
  %139 = add nuw nsw i64 %126, 1
  %140 = icmp eq i64 %139, %112
  br i1 %140, label %141, label %125, !llvm.loop !38

141:                                              ; preds = %138, %130, %104
  %142 = phi ptr [ %109, %104 ], [ %137, %130 ], [ %109, %138 ]
  %143 = phi ptr [ %108, %104 ], [ %136, %130 ], [ %108, %138 ]
  %144 = phi ptr [ %107, %104 ], [ %135, %130 ], [ %107, %138 ]
  %145 = phi i32 [ 0, %104 ], [ %134, %130 ], [ %105, %138 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #17
  call void @free(ptr noundef %144) #19
  call void @free(ptr noundef %143) #19
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %230, label %147

147:                                              ; preds = %141
  %148 = shl i32 %145, 1
  %149 = load ptr, ptr @rle, align 8
  br label %150

150:                                              ; preds = %225, %147
  %151 = phi i32 [ 0, %147 ], [ %228, %225 ]
  %152 = phi i32 [ 0, %147 ], [ %226, %225 ]
  %153 = zext i32 %151 to i64
  %154 = getelementptr inbounds i8, ptr %142, i64 %153
  %155 = load i8, ptr %154, align 1, !tbaa !13
  br label %156

156:                                              ; preds = %166, %150
  %157 = phi i64 [ %167, %166 ], [ 1, %150 ]
  %158 = trunc i64 %157 to i32
  %159 = add i32 %151, %158
  %160 = icmp ult i32 %159, %145
  br i1 %160, label %161, label %169

161:                                              ; preds = %156
  %162 = zext i32 %159 to i64
  %163 = getelementptr inbounds i8, ptr %142, i64 %162
  %164 = load i8, ptr %163, align 1, !tbaa !13
  %165 = icmp eq i8 %155, %164
  br i1 %165, label %166, label %169

166:                                              ; preds = %161
  %167 = add nuw nsw i64 %157, 1
  %168 = icmp eq i64 %167, 127
  br i1 %168, label %210, label %156, !llvm.loop !39

169:                                              ; preds = %161, %156
  %.lcssa1 = phi i32 [ %158, %161 ], [ %158, %156 ]
  %170 = icmp eq i32 %.lcssa1, 1
  br i1 %170, label %171, label %210

171:                                              ; preds = %169
  %172 = add i32 %151, 1
  %173 = icmp ult i32 %172, %145
  br i1 %173, label %174, label %199

174:                                              ; preds = %171
  %175 = zext i32 %172 to i64
  %176 = getelementptr inbounds i8, ptr %142, i64 %175
  %177 = load i8, ptr %176, align 1, !tbaa !13
  %178 = icmp eq i8 %155, %177
  br i1 %178, label %199, label %179

179:                                              ; preds = %188, %174
  %180 = phi i8 [ %197, %188 ], [ %177, %174 ]
  %181 = phi i32 [ %190, %188 ], [ %172, %174 ]
  %182 = phi i32 [ %189, %188 ], [ 1, %174 ]
  %183 = add i32 %181, 1
  %184 = zext i32 %183 to i64
  %185 = getelementptr inbounds i8, ptr %142, i64 %184
  %186 = load i8, ptr %185, align 1, !tbaa !13
  %187 = icmp eq i8 %180, %186
  br i1 %187, label %199, label %188

188:                                              ; preds = %179
  %189 = add i32 %182, 1
  %190 = add i32 %189, %151
  %191 = add i32 %182, %151
  %192 = zext i32 %191 to i64
  %193 = getelementptr inbounds i8, ptr %142, i64 %192
  %194 = load i8, ptr %193, align 1, !tbaa !13
  %195 = zext i32 %190 to i64
  %196 = getelementptr inbounds i8, ptr %142, i64 %195
  %197 = load i8, ptr %196, align 1, !tbaa !13
  %198 = icmp eq i8 %194, %197
  br i1 %198, label %199, label %179, !llvm.loop !40

199:                                              ; preds = %188, %179, %174, %171
  %200 = phi i32 [ 1, %171 ], [ 1, %174 ], [ %189, %188 ], [ %182, %179 ]
  %201 = trunc i32 %200 to i8
  %202 = and i8 %201, 127
  %203 = add i32 %152, 1
  %204 = zext i32 %152 to i64
  %205 = getelementptr inbounds i8, ptr %149, i64 %204
  store i8 %202, ptr %205, align 1, !tbaa !13
  %206 = zext i32 %203 to i64
  %207 = getelementptr inbounds i8, ptr %149, i64 %206
  %208 = zext i32 %200 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %207, ptr nonnull align 1 %154, i64 %208, i1 false)
  %209 = add i32 %200, %203
  br label %225

210:                                              ; preds = %169, %166
  %211 = phi i32 [ %.lcssa1, %169 ], [ 127, %166 ]
  %212 = add i32 %152, 2
  %213 = icmp ugt i32 %212, %148
  br i1 %213, label %214, label %217

214:                                              ; preds = %210
  %215 = load ptr, ptr @stderr, align 8, !tbaa !7
  %216 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %215, ptr noundef nonnull @.str.8, i32 noundef %145) #18
  call void @exit(i32 noundef 1) #22
  unreachable

217:                                              ; preds = %210
  %218 = trunc i32 %211 to i8
  %219 = or i8 %218, -128
  %220 = zext i32 %152 to i64
  %221 = getelementptr inbounds i8, ptr %149, i64 %220
  store i8 %219, ptr %221, align 1, !tbaa !13
  %222 = add i32 %152, 1
  %223 = zext i32 %222 to i64
  %224 = getelementptr inbounds i8, ptr %149, i64 %223
  store i8 %155, ptr %224, align 1, !tbaa !13
  br label %225

225:                                              ; preds = %217, %199
  %226 = phi i32 [ %209, %199 ], [ %212, %217 ]
  %227 = phi i32 [ %200, %199 ], [ %211, %217 ]
  %228 = add i32 %227, %151
  %229 = icmp ult i32 %228, %145
  br i1 %229, label %150, label %230, !llvm.loop !41

230:                                              ; preds = %225, %141
  %231 = phi i32 [ 0, %141 ], [ %226, %225 ]
  call void @free(ptr noundef %142) #19
  store i32 0, ptr @ari_pos, align 4, !tbaa !11
  br label %232

232:                                              ; preds = %232, %230
  %233 = phi i64 [ 0, %230 ], [ %244, %232 ]
  %234 = phi <4 x i8> [ <i8 0, i8 1, i8 2, i8 3>, %230 ], [ %245, %232 ]
  %235 = insertelement <4 x i64> poison, i64 %233, i64 0
  %236 = shufflevector <4 x i64> %235, <4 x i64> poison, <4 x i32> zeroinitializer
  %237 = or <4 x i64> %236, <i64 1, i64 2, i64 3, i64 poison>
  %238 = add <4 x i64> %236, <i64 poison, i64 poison, i64 poison, i64 4>
  %239 = shufflevector <4 x i64> %237, <4 x i64> %238, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %240 = getelementptr inbounds [256 x i32], ptr @char_to_index.13, i64 0, i64 %233
  %241 = trunc <4 x i64> %239 to <4 x i32>
  store <4 x i32> %241, ptr %240, align 16, !tbaa !11
  %242 = extractelement <4 x i64> %237, i64 0
  %243 = getelementptr inbounds [258 x i8], ptr @index_to_char.15, i64 0, i64 %242
  store <4 x i8> %234, ptr %243, align 1, !tbaa !13
  %244 = add nuw nsw i64 %233, 4
  %245 = add <4 x i8> %234, <i8 4, i8 4, i8 4, i8 4>
  %246 = icmp eq i64 %244, 256
  br i1 %246, label %247, label %232, !llvm.loop !42

247:                                              ; preds = %247, %232
  %248 = phi i64 [ %253, %247 ], [ 0, %232 ]
  %249 = getelementptr inbounds [258 x i32], ptr @freq.17, i64 0, i64 %248
  store i32 1, ptr %249, align 4, !tbaa !11
  %250 = getelementptr inbounds [258 x i32], ptr @cum_freq.19, i64 0, i64 %248
  %251 = trunc i64 %248 to i32
  %252 = sub i32 257, %251
  store i32 %252, ptr %250, align 4, !tbaa !11
  %253 = add nuw nsw i64 %248, 1
  %254 = icmp eq i64 %253, 258
  br i1 %254, label %255, label %247, !llvm.loop !43

255:                                              ; preds = %247
  store i32 0, ptr @freq.17, align 16, !tbaa !11
  store i32 0, ptr @buffer.27, align 4, !tbaa !11
  store i32 8, ptr @bits_to_go.21, align 4, !tbaa !11
  store i64 0, ptr @low, align 8, !tbaa !22
  store i64 65535, ptr @high, align 8, !tbaa !22
  store i64 0, ptr @bits_to_follow, align 8, !tbaa !22
  %256 = icmp eq i32 %231, 0
  br i1 %256, label %321, label %257

257:                                              ; preds = %255
  %258 = load ptr, ptr @rle, align 8, !tbaa !7
  br label %259

259:                                              ; preds = %318, %257
  %260 = phi i32 [ %319, %318 ], [ 1, %257 ]
  %261 = phi i32 [ %260, %318 ], [ 0, %257 ]
  %262 = zext i32 %261 to i64
  %263 = getelementptr inbounds i8, ptr %258, i64 %262
  %264 = load i8, ptr %263, align 1, !tbaa !13
  %265 = zext i8 %264 to i64
  %266 = getelementptr inbounds [256 x i32], ptr @char_to_index.13, i64 0, i64 %265
  %267 = load i32, ptr %266, align 4, !tbaa !11
  call fastcc void @encode_symbol(i32 noundef %267) #20
  %268 = load i32, ptr @cum_freq.19, align 16, !tbaa !11
  %269 = icmp eq i32 %268, 16383
  br i1 %269, label %270, label %281

270:                                              ; preds = %270, %259
  %271 = phi i64 [ %279, %270 ], [ 257, %259 ]
  %272 = phi i32 [ %278, %270 ], [ 0, %259 ]
  %273 = getelementptr inbounds [258 x i32], ptr @freq.17, i64 0, i64 %271
  %274 = load i32, ptr %273, align 4, !tbaa !11
  %275 = add nsw i32 %274, 1
  %276 = sdiv i32 %275, 2
  store i32 %276, ptr %273, align 4, !tbaa !11
  %277 = getelementptr inbounds [258 x i32], ptr @cum_freq.19, i64 0, i64 %271
  store i32 %272, ptr %277, align 4, !tbaa !11
  %278 = add nsw i32 %276, %272
  %279 = add nsw i64 %271, -1
  %280 = icmp eq i64 %271, 0
  br i1 %280, label %281, label %270, !llvm.loop !44

281:                                              ; preds = %270, %259
  %282 = sext i32 %267 to i64
  %283 = getelementptr inbounds [258 x i32], ptr @freq.17, i64 0, i64 %282
  %284 = load i32, ptr %283, align 4, !tbaa !11
  br label %285

285:                                              ; preds = %285, %281
  %286 = phi i64 [ %287, %285 ], [ %282, %281 ]
  %287 = add i64 %286, -1
  %288 = getelementptr inbounds [258 x i32], ptr @freq.17, i64 0, i64 %287
  %289 = load i32, ptr %288, align 4, !tbaa !11
  %290 = icmp eq i32 %284, %289
  br i1 %290, label %285, label %291, !llvm.loop !45

291:                                              ; preds = %285
  %.lcssa = phi i64 [ %286, %285 ]
  %292 = trunc i64 %.lcssa to i32
  %293 = getelementptr inbounds [258 x i32], ptr @freq.17, i64 0, i64 %.lcssa
  %294 = icmp sgt i32 %267, %292
  br i1 %294, label %295, label %304

295:                                              ; preds = %291
  %296 = getelementptr inbounds [258 x i8], ptr @index_to_char.15, i64 0, i64 %.lcssa
  %297 = load i8, ptr %296, align 1, !tbaa !13
  %298 = getelementptr inbounds [258 x i8], ptr @index_to_char.15, i64 0, i64 %282
  %299 = load i8, ptr %298, align 1, !tbaa !13
  store i8 %299, ptr %296, align 1, !tbaa !13
  store i8 %297, ptr %298, align 1, !tbaa !13
  %300 = zext i8 %297 to i64
  %301 = getelementptr inbounds [256 x i32], ptr @char_to_index.13, i64 0, i64 %300
  store i32 %267, ptr %301, align 4, !tbaa !11
  %302 = zext i8 %299 to i64
  %303 = getelementptr inbounds [256 x i32], ptr @char_to_index.13, i64 0, i64 %302
  store i32 %292, ptr %303, align 4, !tbaa !11
  br label %304

304:                                              ; preds = %295, %291
  %305 = add nsw i32 %284, 1
  store i32 %305, ptr %293, align 4, !tbaa !11
  %306 = icmp sgt i32 %292, 0
  br i1 %306, label %307, label %318

307:                                              ; preds = %304
  %308 = and i64 %.lcssa, 4294967295
  br label %309

309:                                              ; preds = %309, %307
  %310 = phi i64 [ %308, %307 ], [ %311, %309 ]
  %311 = add nsw i64 %310, -1
  %312 = and i64 %311, 4294967295
  %313 = getelementptr inbounds [258 x i32], ptr @cum_freq.19, i64 0, i64 %312
  %314 = load i32, ptr %313, align 4, !tbaa !11
  %315 = add nsw i32 %314, 1
  store i32 %315, ptr %313, align 4, !tbaa !11
  %316 = trunc i64 %310 to i32
  %317 = icmp sgt i32 %316, 1
  br i1 %317, label %309, label %318, !llvm.loop !46

318:                                              ; preds = %309, %304
  %319 = add i32 %260, 1
  %320 = icmp ugt i32 %319, %231
  br i1 %320, label %321, label %259

321:                                              ; preds = %318, %255
  call fastcc void @encode_symbol(i32 noundef 257) #20
  %322 = load i64, ptr @bits_to_follow, align 8, !tbaa !22
  %323 = add nsw i64 %322, 1
  store i64 %323, ptr @bits_to_follow, align 8, !tbaa !22
  %324 = load i64, ptr @low, align 8, !tbaa !22
  %325 = icmp sgt i64 %324, 16383
  %326 = zext i1 %325 to i32
  call fastcc void @bit_plus_follow(i32 noundef %326) #20
  %327 = load i32, ptr @buffer.27, align 4, !tbaa !11
  %328 = load i32, ptr @bits_to_go.21, align 4, !tbaa !11
  %329 = lshr i32 %327, %328
  %330 = trunc i32 %329 to i8
  %331 = load ptr, ptr @ari, align 8, !tbaa !7
  %332 = load i32, ptr @ari_pos, align 4, !tbaa !11
  %333 = add i32 %332, 1
  store i32 %333, ptr @ari_pos, align 4, !tbaa !11
  %334 = zext i32 %332 to i64
  %335 = getelementptr inbounds i8, ptr %331, i64 %334
  store i8 %330, ptr %335, align 1, !tbaa !13
  %336 = load ptr, ptr @rle, align 8, !tbaa !7
  call void @free(ptr noundef %336) #19
  %337 = zext i32 %333 to i64
  %338 = load ptr, ptr @fpo, align 8, !tbaa !7
  %339 = call i64 @fwrite(ptr noundef %331, i64 noundef 1, i64 noundef %337, ptr noundef %338) #20
  %340 = load ptr, ptr @ari, align 8, !tbaa !7
  call void @free(ptr noundef %340) #19
  %341 = load ptr, ptr @fpi, align 8, !tbaa !7
  %342 = call i32 @fclose(ptr noundef %341) #20
  %343 = load ptr, ptr @fpo, align 8, !tbaa !7
  %344 = call i32 @fclose(ptr noundef %343) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 1000, ptr nonnull %4) #17
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture) local_unnamed_addr #4

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nofree nounwind optsize
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind optsize
declare noundef i64 @fread(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @input_bit() unnamed_addr #0 {
  %1 = load i32, ptr @bits_to_go, align 4, !tbaa !11
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %21

3:                                                ; preds = %0
  %4 = load i32, ptr @in_pos, align 4, !tbaa !11
  %5 = load i32, ptr @in_size, align 4, !tbaa !11
  %6 = icmp ult i32 %4, %5
  br i1 %6, label %7, label %14

7:                                                ; preds = %3
  %8 = load ptr, ptr @in, align 8, !tbaa !7
  %9 = add nuw i32 %4, 1
  store i32 %9, ptr @in_pos, align 4, !tbaa !11
  %10 = zext i32 %4 to i64
  %11 = getelementptr inbounds i8, ptr %8, i64 %10
  %12 = load i8, ptr %11, align 1, !tbaa !13
  %13 = zext i8 %12 to i32
  store i32 %13, ptr @buffer, align 4, !tbaa !11
  br label %21

14:                                               ; preds = %3
  %15 = load i32, ptr @garbage_bits, align 4, !tbaa !11
  %16 = add nsw i32 %15, 1
  store i32 %16, ptr @garbage_bits, align 4, !tbaa !11
  %17 = icmp sgt i32 %15, 13
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = load ptr, ptr @stderr, align 8, !tbaa !7
  %20 = tail call i64 @fwrite(ptr nonnull @.str.28, i64 15, i64 1, ptr %19) #21
  tail call void @exit(i32 noundef -1) #22
  unreachable

21:                                               ; preds = %14, %7, %0
  %22 = phi i32 [ %1, %0 ], [ 8, %14 ], [ 8, %7 ]
  %23 = load i32, ptr @buffer, align 4, !tbaa !11
  %24 = and i32 %23, 1
  %25 = lshr i32 %23, 1
  store i32 %25, ptr @buffer, align 4, !tbaa !11
  %26 = add nsw i32 %22, -1
  store i32 %26, ptr @bits_to_go, align 4, !tbaa !11
  ret i32 %24
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind optsize
declare noundef i32 @remove(ptr nocapture noundef readonly) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @stat(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #10

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @compare(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #11 {
  %3 = load ptr, ptr @in.25, align 8, !tbaa !7
  %4 = load i32, ptr %0, align 4, !tbaa !11
  %5 = zext i32 %4 to i64
  %6 = getelementptr inbounds i8, ptr %3, i64 %5
  %7 = load i32, ptr %1, align 4, !tbaa !11
  %8 = zext i32 %7 to i64
  %9 = getelementptr inbounds i8, ptr %3, i64 %8
  %10 = load i32, ptr @size.34, align 4, !tbaa !11
  %11 = zext i32 %10 to i64
  %12 = tail call i32 @memcmp(ptr noundef %6, ptr noundef %9, i64 noundef %11) #24
  ret i32 %12
}

; Function Attrs: nofree optsize
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: nofree norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @encode_symbol(i32 noundef %0) unnamed_addr #13 {
  %2 = load i64, ptr @high, align 8, !tbaa !22
  %3 = load i64, ptr @low, align 8, !tbaa !22
  %4 = sub nsw i64 %2, %3
  %5 = add nsw i64 %4, 1
  %6 = add nsw i32 %0, -1
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds i32, ptr @cum_freq.19, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !11
  %10 = sext i32 %9 to i64
  %11 = mul nsw i64 %5, %10
  %12 = load i32, ptr @cum_freq.19, align 16, !tbaa !11
  %13 = sext i32 %12 to i64
  %14 = sdiv i64 %11, %13
  %15 = add i64 %3, -1
  %16 = add i64 %15, %14
  store i64 %16, ptr @high, align 8, !tbaa !22
  %17 = sext i32 %0 to i64
  %18 = getelementptr inbounds i32, ptr @cum_freq.19, i64 %17
  %19 = load i32, ptr %18, align 4, !tbaa !11
  %20 = sext i32 %19 to i64
  %21 = mul nsw i64 %5, %20
  %22 = sdiv i64 %21, %13
  %23 = add nsw i64 %22, %3
  store i64 %23, ptr @low, align 8, !tbaa !22
  br label %24

24:                                               ; preds = %45, %1
  %25 = phi i64 [ %48, %45 ], [ %23, %1 ]
  %26 = phi i64 [ %50, %45 ], [ %16, %1 ]
  %27 = icmp slt i64 %26, 32768
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  tail call fastcc void @bit_plus_follow(i32 noundef 0) #20
  %29 = load i64, ptr @low, align 8, !tbaa !22
  %30 = load i64, ptr @high, align 8, !tbaa !22
  br label %45

31:                                               ; preds = %24
  %32 = icmp sgt i64 %25, 32767
  br i1 %32, label %33, label %38

33:                                               ; preds = %31
  tail call fastcc void @bit_plus_follow(i32 noundef 1) #20
  %34 = load i64, ptr @low, align 8, !tbaa !22
  %35 = add nsw i64 %34, -32768
  %36 = load i64, ptr @high, align 8, !tbaa !22
  %37 = add nsw i64 %36, -32768
  br label %45

38:                                               ; preds = %31
  %39 = call i1 @_wyvern_slice_encode_symbol__369939537(i64 %25, i64 %26)
  br i1 %39, label %40, label %51

40:                                               ; preds = %38
  %41 = load i64, ptr @bits_to_follow, align 8, !tbaa !22
  %42 = add nsw i64 %41, 1
  store i64 %42, ptr @bits_to_follow, align 8, !tbaa !22
  %43 = add nsw i64 %25, -16384
  %44 = add nsw i64 %26, -16384
  br label %45

45:                                               ; preds = %40, %33, %28
  %46 = phi i64 [ %37, %33 ], [ %44, %40 ], [ %30, %28 ]
  %47 = phi i64 [ %35, %33 ], [ %43, %40 ], [ %29, %28 ]
  %48 = shl nsw i64 %47, 1
  store i64 %48, ptr @low, align 8, !tbaa !22
  %49 = shl nsw i64 %46, 1
  %50 = or i64 %49, 1
  store i64 %50, ptr @high, align 8, !tbaa !22
  br label %24

51:                                               ; preds = %38
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @bit_plus_follow(i32 noundef %0) unnamed_addr #13 {
  tail call fastcc void @output_bit(i32 noundef %0) #20
  %2 = load i64, ptr @bits_to_follow, align 8, !tbaa !22
  %3 = icmp sgt i64 %2, 0
  br i1 %3, label %4, label %11

4:                                                ; preds = %1
  %5 = icmp eq i32 %0, 0
  %6 = zext i1 %5 to i32
  br label %7

7:                                                ; preds = %7, %4
  tail call fastcc void @output_bit(i32 noundef %6) #20
  %8 = load i64, ptr @bits_to_follow, align 8, !tbaa !22
  %9 = add nsw i64 %8, -1
  store i64 %9, ptr @bits_to_follow, align 8, !tbaa !22
  %10 = icmp sgt i64 %8, 1
  br i1 %10, label %7, label %11, !llvm.loop !47

11:                                               ; preds = %7, %1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: write, inaccessiblemem: none) uwtable
define internal fastcc void @output_bit(i32 noundef %0) unnamed_addr #14 {
  %2 = load i32, ptr @buffer.27, align 4, !tbaa !11
  %3 = lshr i32 %2, 1
  %4 = icmp eq i32 %0, 0
  %5 = or i32 %3, 128
  %6 = select i1 %4, i32 %3, i32 %5
  store i32 %6, ptr @buffer.27, align 4, !tbaa !11
  %7 = load i32, ptr @bits_to_go.21, align 4, !tbaa !11
  %8 = add nsw i32 %7, -1
  store i32 %8, ptr @bits_to_go.21, align 4, !tbaa !11
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %1
  %11 = trunc i32 %6 to i8
  %12 = load ptr, ptr @ari, align 8, !tbaa !7
  %13 = load i32, ptr @ari_pos, align 4, !tbaa !11
  %14 = add i32 %13, 1
  store i32 %14, ptr @ari_pos, align 4, !tbaa !11
  %15 = zext i32 %13 to i64
  %16 = getelementptr inbounds i8, ptr %12, i64 %15
  store i8 %11, ptr %16, align 1, !tbaa !13
  store i32 8, ptr @bits_to_go.21, align 4, !tbaa !11
  br label %17

17:                                               ; preds = %10, %1
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @memcmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #15

; Function Attrs: noinline nounwind optsize willreturn
define internal i1 @_wyvern_slice_encode_symbol__369939537(i64 %0, i64 %1) #16 {
sliceclone_:
  %2 = icmp sgt i64 %0, 16383
  %3 = icmp ult i64 %1, 49152
  %4 = and i1 %2, %3
  ret i1 %4
}

attributes #0 = { nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(argmem: read) }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { noreturn nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { nofree nounwind }
attributes #11 = { mustprogress nofree nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { noinline nounwind optsize willreturn "Daedalus"="1" }
attributes #17 = { nounwind }
attributes #18 = { cold optsize }
attributes #19 = { nounwind optsize }
attributes #20 = { optsize }
attributes #21 = { cold }
attributes #22 = { noreturn nounwind optsize }
attributes #23 = { nounwind optsize allocsize(0) }
attributes #24 = { nounwind optsize willreturn memory(read) }

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
!8 = !{!"any pointer", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!12, !12, i64 0}
!12 = !{!"int", !9, i64 0}
!13 = !{!9, !9, i64 0}
!14 = distinct !{!14, !15, !16, !17}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{!"llvm.loop.isvectorized", i32 1}
!17 = !{!"llvm.loop.unroll.runtime.disable"}
!18 = distinct !{!18, !15}
!19 = !{i32 0, i32 2}
!20 = distinct !{!20, !15}
!21 = distinct !{!21, !15}
!22 = !{!23, !23, i64 0}
!23 = !{!"long", !9, i64 0}
!24 = distinct !{!24, !15}
!25 = distinct !{!25, !15}
!26 = distinct !{!26, !15}
!27 = distinct !{!27, !15}
!28 = distinct !{!28, !15}
!29 = distinct !{!29, !15}
!30 = distinct !{!30, !15}
!31 = distinct !{!31, !15}
!32 = distinct !{!32, !15}
!33 = !{!34, !23, i64 48}
!34 = !{!"stat", !23, i64 0, !23, i64 8, !23, i64 16, !12, i64 24, !12, i64 28, !12, i64 32, !12, i64 36, !23, i64 40, !23, i64 48, !23, i64 56, !23, i64 64, !35, i64 72, !35, i64 88, !35, i64 104, !9, i64 120}
!35 = !{!"timespec", !23, i64 0, !23, i64 8}
!36 = distinct !{!36, !15, !16, !17}
!37 = distinct !{!37, !15}
!38 = distinct !{!38, !15}
!39 = distinct !{!39, !15}
!40 = distinct !{!40, !15}
!41 = distinct !{!41, !15}
!42 = distinct !{!42, !15, !16, !17}
!43 = distinct !{!43, !15}
!44 = distinct !{!44, !15}
!45 = distinct !{!45, !15}
!46 = distinct !{!46, !15}
!47 = distinct !{!47, !15}
