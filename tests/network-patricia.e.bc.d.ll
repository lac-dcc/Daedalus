; ModuleID = 'network-patricia.e.bc.ll'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in_addr = type { i32 }
%struct.ptree = type { i64, ptr, i8, i8, ptr, ptr }
%struct.ptree_mask = type { i64, ptr }

@.str = private unnamed_addr constant [24 x i8] c"Usage: %s <TCP stream>\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"File %s doesn't seem to exist\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"Allocating p-trie node\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"Allocating p-trie mask data\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"Allocating p-trie mask's node data\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"%f %d\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"%f %08x: \00", align 1
@str = private unnamed_addr constant [7 x i8] c"Found.\00", align 1

; Function Attrs: noreturn nounwind optsize uwtable
define dso_local i32 @main(i32 noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca [128 x i8], align 16
  %4 = alloca %struct.in_addr, align 4
  %5 = alloca float, align 4
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %3) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  %6 = icmp slt i32 %0, 2
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = load ptr, ptr %1, align 8, !tbaa !7
  %9 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef %8) #11
  tail call void @exit(i32 noundef -1) #12
  unreachable

10:                                               ; preds = %2
  %11 = getelementptr inbounds ptr, ptr %1, i64 1
  %12 = load ptr, ptr %11, align 8, !tbaa !7
  %13 = tail call noalias ptr @fopen(ptr noundef %12, ptr noundef nonnull @.str.1) #11
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %10
  %16 = load ptr, ptr %11, align 8, !tbaa !7
  %17 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, ptr noundef %16) #11
  tail call void @exit(i32 noundef 1) #12
  unreachable

18:                                               ; preds = %10
  %19 = tail call dereferenceable_or_null(40) ptr @calloc(i64 1, i64 40)
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  tail call void @perror(ptr noundef nonnull @.str.3) #13
  tail call void @exit(i32 noundef 1) #12
  unreachable

22:                                               ; preds = %18
  %23 = tail call dereferenceable_or_null(16) ptr @calloc(i64 1, i64 16)
  %24 = getelementptr inbounds %struct.ptree, ptr %19, i64 0, i32 1
  store ptr %23, ptr %24, align 8, !tbaa !11
  %25 = icmp eq ptr %23, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  tail call void @perror(ptr noundef nonnull @.str.4) #13
  tail call void @exit(i32 noundef 1) #12
  unreachable

27:                                               ; preds = %22
  %28 = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #14
  %29 = getelementptr inbounds %struct.ptree_mask, ptr %23, i64 0, i32 1
  store ptr %28, ptr %29, align 8, !tbaa !14
  %30 = icmp eq ptr %28, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  tail call void @perror(ptr noundef nonnull @.str.5) #13
  tail call void @exit(i32 noundef 1) #12
  unreachable

32:                                               ; preds = %27
  store i8 0, ptr %28, align 1
  %33 = getelementptr inbounds %struct.ptree, ptr %19, i64 0, i32 2
  store i8 1, ptr %33, align 8, !tbaa !16
  %34 = getelementptr inbounds %struct.ptree, ptr %19, i64 0, i32 5
  store ptr %19, ptr %34, align 8, !tbaa !17
  %35 = getelementptr inbounds %struct.ptree, ptr %19, i64 0, i32 4
  store ptr %19, ptr %35, align 8, !tbaa !18
  %36 = getelementptr inbounds %struct.ptree, ptr %19, i64 0, i32 3
  br label %37

37:                                               ; preds = %198, %32
  %38 = call ptr @fgets(ptr noundef nonnull %3, i32 noundef 128, ptr noundef nonnull %13) #11
  %39 = icmp eq ptr %38, null
  br i1 %39, label %199, label %40

40:                                               ; preds = %37
  %41 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %3, ptr noundef nonnull @.str.6, ptr noundef nonnull %5, ptr noundef nonnull %4) #15
  %42 = call dereferenceable_or_null(40) ptr @calloc(i64 1, i64 40)
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  call void @perror(ptr noundef nonnull @.str.3) #13
  call void @exit(i32 noundef 1) #12
  unreachable

45:                                               ; preds = %40
  %46 = call dereferenceable_or_null(16) ptr @calloc(i64 1, i64 16)
  %47 = getelementptr inbounds %struct.ptree, ptr %42, i64 0, i32 1
  store ptr %46, ptr %47, align 8, !tbaa !11
  %48 = icmp eq ptr %46, null
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  call void @perror(ptr noundef nonnull @.str.4) #13
  call void @exit(i32 noundef 1) #12
  unreachable

50:                                               ; preds = %45
  %51 = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #14
  %52 = getelementptr inbounds %struct.ptree_mask, ptr %46, i64 0, i32 1
  store ptr %51, ptr %52, align 8, !tbaa !14
  %53 = icmp eq ptr %51, null
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  call void @perror(ptr noundef nonnull @.str.5) #13
  call void @exit(i32 noundef 1) #12
  unreachable

55:                                               ; preds = %50
  store i8 0, ptr %51, align 1
  %56 = load i32, ptr %4, align 4, !tbaa !19
  %57 = zext i32 %56 to i64
  store i64 %57, ptr %42, align 8, !tbaa !22
  store i64 4294967295, ptr %46, align 8, !tbaa !23
  %58 = load i8, ptr %36, align 1, !tbaa !24
  br label %59

59:                                               ; preds = %59, %55
  %60 = phi i8 [ %79, %59 ], [ %58, %55 ]
  %61 = phi ptr [ %69, %59 ], [ null, %55 ]
  %62 = phi ptr [ %77, %59 ], [ %19, %55 ]
  %63 = load i64, ptr %62, align 8, !tbaa !22
  %64 = getelementptr inbounds %struct.ptree, ptr %62, i64 0, i32 1
  %65 = load ptr, ptr %64, align 8, !tbaa !11
  %66 = load i64, ptr %65, align 8, !tbaa !23
  %67 = and i64 %66, %57
  %68 = icmp eq i64 %63, %67
  %69 = select i1 %68, ptr %62, ptr %61
  %70 = zext i8 %60 to i32
  %71 = lshr i32 -2147483648, %70
  %72 = and i32 %71, %56
  %73 = icmp eq i32 %72, 0
  %74 = getelementptr inbounds %struct.ptree, ptr %62, i64 0, i32 5
  %75 = getelementptr inbounds %struct.ptree, ptr %62, i64 0, i32 4
  %76 = select i1 %73, ptr %75, ptr %74
  %77 = load ptr, ptr %76, align 8, !tbaa !7
  %78 = getelementptr inbounds %struct.ptree, ptr %77, i64 0, i32 3
  %79 = load i8, ptr %78, align 1, !tbaa !24
  %80 = icmp slt i8 %60, %79
  br i1 %80, label %59, label %81, !llvm.loop !25

81:                                               ; preds = %59
  %.lcssa1 = phi ptr [ %69, %59 ]
  %.lcssa = phi ptr [ %77, %59 ]
  %82 = load i64, ptr %.lcssa, align 8, !tbaa !22
  %83 = getelementptr inbounds %struct.ptree, ptr %.lcssa, i64 0, i32 1
  %84 = load ptr, ptr %83, align 8, !tbaa !11
  %85 = load i64, ptr %84, align 8, !tbaa !23
  %86 = and i64 %85, %57
  %87 = icmp eq i64 %82, %86
  %88 = select i1 %87, ptr %.lcssa, ptr %.lcssa1
  %89 = load i64, ptr %88, align 8, !tbaa !22
  %90 = icmp eq i64 %89, %57
  br i1 %90, label %91, label %96

91:                                               ; preds = %81
  %92 = load float, ptr %5, align 4, !tbaa !27
  %93 = fpext float %92 to double
  %94 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, double noundef %93, i32 noundef %56) #11
  %95 = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %198

96:                                               ; preds = %96, %81
  %97 = phi i8 [ %108, %96 ], [ %58, %81 ]
  %98 = phi ptr [ %106, %96 ], [ %19, %81 ]
  %99 = zext i8 %97 to i32
  %100 = lshr i32 -2147483648, %99
  %101 = and i32 %100, %56
  %102 = icmp eq i32 %101, 0
  %103 = getelementptr inbounds %struct.ptree, ptr %98, i64 0, i32 5
  %104 = getelementptr inbounds %struct.ptree, ptr %98, i64 0, i32 4
  %105 = select i1 %102, ptr %104, ptr %103
  %106 = load ptr, ptr %105, align 8, !tbaa !7
  %107 = getelementptr inbounds %struct.ptree, ptr %106, i64 0, i32 3
  %108 = load i8, ptr %107, align 1, !tbaa !24
  %109 = icmp slt i8 %97, %108
  br i1 %109, label %96, label %110, !llvm.loop !29

110:                                              ; preds = %96
  %.lcssa2 = phi ptr [ %106, %96 ]
  %111 = load i64, ptr %.lcssa2, align 8, !tbaa !22
  %112 = icmp eq i64 %111, %57
  br i1 %112, label %115, label %113

113:                                              ; preds = %110
  %114 = xor i64 %111, %57
  br label %177

115:                                              ; preds = %110
  %116 = getelementptr inbounds %struct.ptree, ptr %.lcssa2, i64 0, i32 2
  %117 = load i8, ptr %116, align 8, !tbaa !16
  %118 = zext i8 %117 to i64
  %119 = icmp eq i8 %117, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %115
  %121 = shl nuw nsw i64 %118, 4
  %122 = add nuw nsw i64 %121, 16
  %123 = call noalias ptr @malloc(i64 noundef %122) #14
  br label %168

124:                                              ; preds = %115
  %125 = getelementptr inbounds %struct.ptree, ptr %.lcssa2, i64 0, i32 1
  %126 = load ptr, ptr %125, align 8, !tbaa !11
  br label %130

127:                                              ; preds = %130
  %128 = add nuw nsw i64 %131, 1
  %129 = icmp eq i64 %128, %118
  br i1 %129, label %137, label %130, !llvm.loop !30

130:                                              ; preds = %127, %124
  %131 = phi i64 [ 0, %124 ], [ %128, %127 ]
  %132 = getelementptr inbounds %struct.ptree_mask, ptr %126, i64 %131
  %133 = load i64, ptr %132, align 8, !tbaa !23
  %134 = icmp eq i64 %133, 4294967295
  br i1 %134, label %135, label %127

135:                                              ; preds = %130
  %.lcssa3 = phi i64 [ %131, %130 ]
  %136 = getelementptr inbounds %struct.ptree_mask, ptr %126, i64 %.lcssa3, i32 1
  store ptr %51, ptr %136, align 8, !tbaa !14
  call void @free(ptr noundef %46) #15
  call void @free(ptr noundef %42) #15
  br label %198

137:                                              ; preds = %127
  %138 = shl nuw nsw i64 %118, 4
  %139 = add nuw nsw i64 %138, 16
  %140 = call noalias ptr @malloc(i64 noundef %139) #14
  br label %141

141:                                              ; preds = %161, %137
  %142 = phi i1 [ false, %161 ], [ true, %137 ]
  %143 = phi i64 [ %.lcssa7, %161 ], [ 0, %137 ]
  %144 = phi ptr [ %163, %161 ], [ %140, %137 ]
  %145 = shl i64 %143, 32
  %146 = ashr exact i64 %145, 32
  br label %147

147:                                              ; preds = %155, %141
  %148 = phi i64 [ %146, %141 ], [ %156, %155 ]
  %149 = phi ptr [ %144, %141 ], [ %157, %155 ]
  %150 = load i64, ptr %46, align 8, !tbaa !23
  %151 = load ptr, ptr %125, align 8, !tbaa !11
  %152 = getelementptr inbounds %struct.ptree_mask, ptr %151, i64 %148
  %153 = load i64, ptr %152, align 8, !tbaa !23
  %154 = icmp ugt i64 %150, %153
  br i1 %154, label %155, label %161

155:                                              ; preds = %147
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %149, ptr noundef nonnull align 1 dereferenceable(16) %152, i64 16, i1 false)
  %156 = add nsw i64 %148, 1
  %157 = getelementptr inbounds %struct.ptree_mask, ptr %149, i64 1
  %158 = load i8, ptr %116, align 8, !tbaa !16
  %159 = zext i8 %158 to i64
  %160 = icmp slt i64 %156, %159
  br i1 %160, label %147, label %167, !llvm.loop !31

161:                                              ; preds = %147
  %.lcssa7 = phi i64 [ %148, %147 ]
  %.lcssa5 = phi ptr [ %149, %147 ]
  %162 = trunc i64 %.lcssa7 to i32
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.lcssa5, ptr noundef nonnull align 1 dereferenceable(16) %46, i64 16, i1 false)
  store i64 4294967295, ptr %46, align 8, !tbaa !23
  %163 = getelementptr inbounds %struct.ptree_mask, ptr %.lcssa5, i64 1
  %164 = load i8, ptr %116, align 8, !tbaa !16
  %165 = zext i8 %164 to i32
  %166 = icmp slt i32 %162, %165
  br i1 %166, label %141, label %171, !llvm.loop !31

167:                                              ; preds = %155
  %.lcssa10 = phi i1 [ %142, %155 ]
  %.lcssa9 = phi ptr [ %157, %155 ]
  br i1 %.lcssa10, label %168, label %171

168:                                              ; preds = %167, %120
  %169 = phi ptr [ %.lcssa9, %167 ], [ %123, %120 ]
  %170 = phi ptr [ %140, %167 ], [ %123, %120 ]
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %169, ptr noundef nonnull align 1 dereferenceable(16) %46, i64 16, i1 false)
  br label %171

171:                                              ; preds = %168, %167, %161
  %172 = phi ptr [ %170, %168 ], [ %140, %167 ], [ %140, %161 ]
  call void @free(ptr noundef nonnull %46) #15
  call void @free(ptr noundef %42) #15
  %173 = load i8, ptr %116, align 8, !tbaa !16
  %174 = add i8 %173, 1
  store i8 %174, ptr %116, align 8, !tbaa !16
  %175 = getelementptr inbounds %struct.ptree, ptr %.lcssa2, i64 0, i32 1
  %176 = load ptr, ptr %175, align 8, !tbaa !11
  call void @free(ptr noundef %176) #15
  store ptr %172, ptr %175, align 8, !tbaa !11
  br label %198

177:                                              ; preds = %183, %113
  %178 = phi i32 [ 1, %113 ], [ %184, %183 ]
  %179 = lshr i32 -2147483648, %178
  %180 = zext i32 %179 to i64
  %181 = and i64 %114, %180
  %182 = icmp eq i64 %181, 0
  br i1 %182, label %183, label %186

183:                                              ; preds = %177
  %184 = add nuw nsw i32 %178, 1
  %185 = icmp eq i32 %184, 32
  br i1 %185, label %186, label %177, !llvm.loop !32

186:                                              ; preds = %183, %177
  %187 = phi i32 [ 32, %183 ], [ %178, %177 ]
  %188 = zext i8 %58 to i32
  %189 = lshr i32 -2147483648, %188
  %190 = and i32 %189, %56
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %195, label %192

192:                                              ; preds = %186
  %193 = load ptr, ptr %34, align 8, !tbaa !17
  %194 = call fastcc ptr @insertR(ptr noundef %193, ptr noundef nonnull %42, i32 noundef %187, ptr noundef nonnull %19) #11
  store ptr %194, ptr %34, align 8, !tbaa !17
  br label %198

195:                                              ; preds = %186
  %196 = load ptr, ptr %35, align 8, !tbaa !18
  %197 = call fastcc ptr @insertR(ptr noundef %196, ptr noundef nonnull %42, i32 noundef %187, ptr noundef nonnull %19) #11
  store ptr %197, ptr %35, align 8, !tbaa !18
  br label %198

198:                                              ; preds = %195, %192, %171, %135, %91
  br label %37, !llvm.loop !33

199:                                              ; preds = %37
  call void @exit(i32 noundef 0) #12
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind optsize
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind optsize
declare void @perror(ptr nocapture noundef readonly) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind optsize
declare noundef ptr @fgets(ptr noundef, i32 noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @__isoc99_sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #8

; Function Attrs: nofree nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal fastcc ptr @insertR(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3) unnamed_addr #9 {
  %5 = getelementptr inbounds %struct.ptree, ptr %0, i64 0, i32 3
  %6 = load i8, ptr %5, align 1, !tbaa !24
  %7 = sext i8 %6 to i32
  %8 = icmp slt i32 %7, %2
  br i1 %8, label %9, label %13

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.ptree, ptr %3, i64 0, i32 3
  %11 = load i8, ptr %10, align 1, !tbaa !24
  %12 = icmp sgt i8 %6, %11
  br i1 %12, label %25, label %13

13:                                               ; preds = %9, %4
  %14 = trunc i32 %2 to i8
  %15 = getelementptr inbounds %struct.ptree, ptr %1, i64 0, i32 3
  store i8 %14, ptr %15, align 1, !tbaa !24
  %16 = load i64, ptr %1, align 8, !tbaa !22
  %17 = lshr i32 -2147483648, %2
  %18 = sext i32 %17 to i64
  %19 = and i64 %16, %18
  %20 = icmp eq i64 %19, 0
  %21 = select i1 %20, ptr %1, ptr %0
  %22 = getelementptr inbounds %struct.ptree, ptr %1, i64 0, i32 4
  store ptr %21, ptr %22, align 8, !tbaa !18
  %23 = select i1 %20, ptr %0, ptr %1
  %24 = getelementptr inbounds %struct.ptree, ptr %1, i64 0, i32 5
  store ptr %23, ptr %24, align 8, !tbaa !17
  br label %31

25:                                               ; preds = %9
  %26 = load i64, ptr %1, align 8, !tbaa !22
  %27 = lshr i32 -2147483648, %7
  %28 = sext i32 %27 to i64
  %29 = and i64 %26, %28
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %37, label %33

31:                                               ; preds = %37, %33, %13
  %32 = phi ptr [ %1, %13 ], [ %0, %33 ], [ %0, %37 ]
  ret ptr %32

33:                                               ; preds = %25
  %34 = getelementptr inbounds %struct.ptree, ptr %0, i64 0, i32 5
  %35 = load ptr, ptr %34, align 8, !tbaa !17
  %36 = tail call fastcc ptr @insertR(ptr noundef %35, ptr noundef nonnull %1, i32 noundef %2, ptr noundef nonnull %0) #11
  store ptr %36, ptr %34, align 8, !tbaa !17
  br label %31

37:                                               ; preds = %25
  %38 = getelementptr inbounds %struct.ptree, ptr %0, i64 0, i32 4
  %39 = load ptr, ptr %38, align 8, !tbaa !18
  %40 = tail call fastcc ptr @insertR(ptr noundef %39, ptr noundef nonnull %1, i32 noundef %2, ptr noundef nonnull %0) #11
  store ptr %40, ptr %38, align 8, !tbaa !18
  br label %31
}

attributes #0 = { noreturn nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" }
attributes #5 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind }
attributes #7 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { nofree nosync nounwind optsize memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind }
attributes #11 = { optsize }
attributes #12 = { noreturn nounwind optsize }
attributes #13 = { cold optsize }
attributes #14 = { nounwind optsize allocsize(0) }
attributes #15 = { nounwind optsize }

!llvm.ident = !{!0, !0}
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
!11 = !{!12, !8, i64 8}
!12 = !{!"ptree", !13, i64 0, !8, i64 8, !9, i64 16, !9, i64 17, !8, i64 24, !8, i64 32}
!13 = !{!"long", !9, i64 0}
!14 = !{!15, !8, i64 8}
!15 = !{!"ptree_mask", !13, i64 0, !8, i64 8}
!16 = !{!12, !9, i64 16}
!17 = !{!12, !8, i64 32}
!18 = !{!12, !8, i64 24}
!19 = !{!20, !21, i64 0}
!20 = !{!"in_addr", !21, i64 0}
!21 = !{!"int", !9, i64 0}
!22 = !{!12, !13, i64 0}
!23 = !{!15, !13, i64 0}
!24 = !{!12, !9, i64 17}
!25 = distinct !{!25, !26}
!26 = !{!"llvm.loop.mustprogress"}
!27 = !{!28, !28, i64 0}
!28 = !{!"float", !9, i64 0}
!29 = distinct !{!29, !26}
!30 = distinct !{!30, !26}
!31 = distinct !{!31, !26}
!32 = distinct !{!32, !26}
!33 = distinct !{!33, !26}
