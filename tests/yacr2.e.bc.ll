; ModuleID = 'yacr2.e.bc.ll'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._nodeVCGType = type { ptr, i64, i64, i64, ptr, i64, i64, i64 }
%struct._constraintVCGType = type { i64, i64, i64, i64 }
%struct._nodeHCGType = type { ptr, i64, i64 }

@costMatrix = internal unnamed_addr global ptr null, align 8
@tracksNoHCV = internal unnamed_addr global ptr null, align 8
@tracksAssign = internal unnamed_addr global ptr null, align 8
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"%u%u%u\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"\09Channel file description invalid at line %d.\0A\00", align 1
@DENSITY = internal unnamed_addr global ptr null, align 8
@CROSSING = internal unnamed_addr global ptr null, align 8
@channelDensityColumn = internal unnamed_addr global i64 0, align 8
@str.10 = private unnamed_addr constant [30 x i8] c"\09Channel description invalid.\00", align 1
@str.11 = private unnamed_addr constant [29 x i8] c"\09Channel has null dimension.\00", align 1
@str.19 = private unnamed_addr constant [32 x i8] c"\09Channel file cannot be closed.\00", align 1
@str.21 = private unnamed_addr constant [33 x i8] c"\09Incorrect number of specifiers.\00", align 1
@str.23 = private unnamed_addr constant [29 x i8] c"\09Column number out of range.\00", align 1
@str.24 = private unnamed_addr constant [7 x i8] c"Error:\00", align 1
@str.25 = private unnamed_addr constant [32 x i8] c"\09Channel file cannot be opened.\00", align 1
@HCG = internal unnamed_addr global ptr null, align 8
@storageRootHCG = internal unnamed_addr global ptr null, align 8
@storageHCG = internal unnamed_addr global ptr null, align 8
@channelTracksCopy = internal unnamed_addr global i64 0, align 8
@netsAssignCopy = internal unnamed_addr global ptr null, align 8
@.str.23 = private unnamed_addr constant [56 x i8] c"Assignment could not route %d columns, trying maze1...\0A\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"Maze1 could not route %d columns, trying maze2...\0A\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"Maze2 could not route %d columns, trying maze3...\0A\00", align 1
@.str.3.24 = private unnamed_addr constant [53 x i8] c"Maze3 could not route %d columns, adding a track...\0A\00", align 1
@horzPlane = internal unnamed_addr global ptr null, align 8
@vertPlane = internal unnamed_addr global ptr null, align 8
@viaPlane = internal unnamed_addr global ptr null, align 8
@mazeRoute = internal unnamed_addr global ptr null, align 8
@stderr = external local_unnamed_addr global ptr, align 8
@.str.27 = private unnamed_addr constant [42 x i8] c"unable to allocate plane allocation maps\0A\00", align 1
@.str.1.32 = private unnamed_addr constant [12 x i8] c"           \00", align 1
@.str.2.33 = private unnamed_addr constant [5 x i8] c" %d \00", align 1
@.str.4.34 = private unnamed_addr constant [7 x i8] c"%%%c%%\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c" | \00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"   \00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"Track %3d: \00", align 1
@FIRST = internal unnamed_addr global ptr null, align 8
@LAST = internal unnamed_addr global ptr null, align 8
@netsAssign = internal unnamed_addr global ptr null, align 8
@channelFile = internal unnamed_addr global ptr null, align 8
@str = private unnamed_addr constant [26 x i8] c"\0AUsage: yacr2 <filename>\0A\00", align 1
@channelNets = internal unnamed_addr global i64 0, align 8
@VCG = internal unnamed_addr global ptr null, align 8
@storageRootVCG = internal unnamed_addr global ptr null, align 8
@storageVCG = internal unnamed_addr global ptr null, align 8
@SCC = internal unnamed_addr global ptr null, align 8
@perSCC = internal unnamed_addr global ptr null, align 8
@removeVCG = internal unnamed_addr global ptr null, align 8
@channelColumns = internal unnamed_addr global i64 0, align 8
@TOP = internal unnamed_addr global ptr null, align 8
@BOT = internal unnamed_addr global ptr null, align 8
@totalSCC = internal unnamed_addr global i64 0, align 8
@removeTotalVCG = internal unnamed_addr global i64 0, align 8
@.str.10 = private unnamed_addr constant [27 x i8] c"*** VC's removed (%d) ***\0A\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@cardBotNotPref = internal unnamed_addr global i64 0, align 8
@channelTracks = internal unnamed_addr global i64 0, align 8
@tracksBotNotPref = internal unnamed_addr global ptr null, align 8
@cardTopNotPref = internal unnamed_addr global i64 0, align 8
@tracksTopNotPref = internal unnamed_addr global ptr null, align 8
@tracksNotPref = internal unnamed_addr global ptr null, align 8
@cardNotPref = internal unnamed_addr global i64 0, align 8
@str.11.51 = private unnamed_addr constant [26 x i8] c"\0A*** Input is cyclic! ***\00", align 1
@str.12 = private unnamed_addr constant [27 x i8] c"\0A*** Input is acyclic! ***\00", align 1

; Function Attrs: noreturn nounwind optsize uwtable
define dso_local i32 @main(i32 noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = icmp eq i32 %0, 2
  %17 = getelementptr inbounds ptr, ptr %1, i64 1
  br i1 %16, label %18, label %23

18:                                               ; preds = %1806, %2
  %19 = phi i32 [ %1808, %1806 ], [ 0, %2 ]
  %20 = load ptr, ptr %17, align 8, !tbaa !7
  store ptr %20, ptr @channelFile, align 8, !tbaa !7
  %21 = tail call noalias ptr @fopen(ptr noundef %20, ptr noundef nonnull @.str) #15
  %22 = icmp eq ptr %21, null
  br i1 %22, label %25, label %28

23:                                               ; preds = %2
  %24 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  tail call void @exit(i32 noundef 1) #16
  unreachable

25:                                               ; preds = %18
  %26 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.24)
  %27 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.25)
  tail call void @exit(i32 noundef 1) #16
  unreachable

28:                                               ; preds = %38, %18
  %29 = phi i64 [ %47, %38 ], [ 0, %18 ]
  %30 = phi i64 [ %45, %38 ], [ 0, %18 ]
  %31 = phi i64 [ %32, %38 ], [ 0, %18 ]
  %32 = add i64 %31, 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #17
  %33 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef nonnull %21, ptr noundef nonnull @.str.3, ptr noundef nonnull %13, ptr noundef nonnull %14, ptr noundef nonnull %15) #18
  switch i32 %33, label %34 [
    i32 -1, label %48
    i32 3, label %38
  ]

34:                                               ; preds = %28
  %.lcssa = phi i64 [ %32, %28 ]
  %35 = call i32 @puts(ptr nonnull dereferenceable(1) @str.24)
  %36 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i64 noundef %.lcssa) #15
  %37 = call i32 @puts(ptr nonnull dereferenceable(1) @str.21)
  call void @exit(i32 noundef 1) #16
  unreachable

38:                                               ; preds = %28
  %39 = load i32, ptr %15, align 4, !tbaa !11
  %40 = zext i32 %39 to i64
  %41 = load i32, ptr %14, align 4, !tbaa !11
  %42 = zext i32 %41 to i64
  %43 = load i32, ptr %13, align 4, !tbaa !11
  %44 = zext i32 %43 to i64
  %45 = call i64 @llvm.umax.i64(i64 %30, i64 %44)
  %46 = call i64 @llvm.umax.i64(i64 %29, i64 %42)
  %47 = call i64 @llvm.umax.i64(i64 %46, i64 %40)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #17
  br label %28, !llvm.loop !13

48:                                               ; preds = %28
  %.lcssa5 = phi i64 [ %29, %28 ]
  %.lcssa3 = phi i64 [ %30, %28 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #17
  %49 = call i32 @fclose(ptr noundef nonnull %21) #15
  %50 = icmp eq i32 %49, -1
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = call i32 @puts(ptr nonnull dereferenceable(1) @str.24)
  %53 = call i32 @puts(ptr nonnull dereferenceable(1) @str.19)
  call void @exit(i32 noundef 1) #16
  unreachable

54:                                               ; preds = %48
  %55 = icmp eq i64 %.lcssa3, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %54
  %57 = call i32 @puts(ptr nonnull dereferenceable(1) @str.24)
  %58 = call i32 @puts(ptr nonnull dereferenceable(1) @str.10)
  %59 = call i32 @puts(ptr nonnull dereferenceable(1) @str.11)
  call void @exit(i32 noundef 1) #16
  unreachable

60:                                               ; preds = %54
  store i64 %.lcssa3, ptr @channelColumns, align 8, !tbaa !15
  store i64 %.lcssa5, ptr @channelNets, align 8, !tbaa !15
  %61 = shl nuw nsw i64 %.lcssa3, 3
  %62 = add nuw nsw i64 %61, 8
  %63 = call ptr @calloc(i64 1, i64 %62)
  store ptr %63, ptr @TOP, align 8, !tbaa !7
  %64 = call ptr @calloc(i64 1, i64 %62)
  store ptr %64, ptr @BOT, align 8, !tbaa !7
  %65 = load ptr, ptr @channelFile, align 8, !tbaa !7
  %66 = tail call noalias ptr @fopen(ptr noundef %65, ptr noundef nonnull @.str) #15
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %71

68:                                               ; preds = %60
  %69 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.24)
  %70 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.25)
  tail call void @exit(i32 noundef 1) #16
  unreachable

71:                                               ; preds = %88, %60
  %72 = phi i64 [ %73, %88 ], [ 0, %60 ]
  %73 = add i64 %72, 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #17
  %74 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef nonnull %66, ptr noundef nonnull @.str.3, ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef nonnull %12) #18
  %75 = load i32, ptr %10, align 4, !tbaa !11
  %76 = zext i32 %75 to i64
  %77 = load i32, ptr %11, align 4, !tbaa !11
  %78 = zext i32 %77 to i64
  %79 = load i32, ptr %12, align 4, !tbaa !11
  %80 = zext i32 %79 to i64
  switch i32 %74, label %93 [
    i32 -1, label %97
    i32 3, label %81
  ]

81:                                               ; preds = %71
  %82 = load i64, ptr @channelColumns, align 8, !tbaa !15
  %83 = icmp ult i64 %82, %76
  br i1 %83, label %84, label %88

84:                                               ; preds = %81
  %.lcssa8 = phi i64 [ %73, %81 ]
  %85 = call i32 @puts(ptr nonnull dereferenceable(1) @str.24)
  %86 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i64 noundef %.lcssa8) #15
  %87 = call i32 @puts(ptr nonnull dereferenceable(1) @str.23)
  call void @exit(i32 noundef 1) #16
  unreachable

88:                                               ; preds = %81
  %89 = load ptr, ptr @BOT, align 8, !tbaa !7
  %90 = getelementptr inbounds i64, ptr %89, i64 %76
  store i64 %78, ptr %90, align 8, !tbaa !15
  %91 = load ptr, ptr @TOP, align 8, !tbaa !7
  %92 = getelementptr inbounds i64, ptr %91, i64 %76
  store i64 %80, ptr %92, align 8, !tbaa !15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #17
  br label %71, !llvm.loop !17

93:                                               ; preds = %71
  %.lcssa6 = phi i64 [ %73, %71 ]
  %94 = call i32 @puts(ptr nonnull dereferenceable(1) @str.24)
  %95 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i64 noundef %.lcssa6) #15
  %96 = call i32 @puts(ptr nonnull dereferenceable(1) @str.21)
  call void @exit(i32 noundef 1) #16
  unreachable

97:                                               ; preds = %71
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #17
  %98 = call i32 @fclose(ptr noundef nonnull %66) #15
  %99 = icmp eq i32 %98, -1
  br i1 %99, label %100, label %103

100:                                              ; preds = %97
  %101 = call i32 @puts(ptr nonnull dereferenceable(1) @str.24)
  %102 = call i32 @puts(ptr nonnull dereferenceable(1) @str.19)
  call void @exit(i32 noundef 1) #16
  unreachable

103:                                              ; preds = %97
  %104 = load i64, ptr @channelNets, align 8, !tbaa !15
  %105 = shl i64 %104, 3
  %106 = add i64 %105, 8
  %107 = call ptr @calloc(i64 1, i64 %106)
  store ptr %107, ptr @FIRST, align 8, !tbaa !7
  %108 = call ptr @calloc(i64 1, i64 %106)
  store ptr %108, ptr @LAST, align 8, !tbaa !7
  %109 = load i64, ptr @channelColumns, align 8, !tbaa !15
  %110 = shl nuw nsw i64 %109, 3
  %111 = add nuw nsw i64 %110, 8
  %112 = call ptr @calloc(i64 1, i64 %111)
  store ptr %112, ptr @DENSITY, align 8, !tbaa !7
  %113 = call ptr @calloc(i64 1, i64 %106)
  store ptr %113, ptr @CROSSING, align 8, !tbaa !7
  %114 = icmp eq i64 %104, 0
  br i1 %114, label %166, label %115

115:                                              ; preds = %103
  %116 = icmp eq i64 %109, 0
  %117 = load ptr, ptr @BOT, align 8
  %118 = load ptr, ptr @TOP, align 8
  br label %119

119:                                              ; preds = %163, %115
  %120 = phi i64 [ 1, %115 ], [ %164, %163 ]
  br i1 %116, label %150, label %121

121:                                              ; preds = %132, %119
  %122 = phi i64 [ %133, %132 ], [ 1, %119 ]
  %123 = getelementptr inbounds i64, ptr %117, i64 %122
  %124 = load i64, ptr %123, align 8, !tbaa !15
  %125 = icmp eq i64 %124, %120
  br i1 %125, label %130, label %126

126:                                              ; preds = %121
  %127 = getelementptr inbounds i64, ptr %118, i64 %122
  %128 = load i64, ptr %127, align 8, !tbaa !15
  %129 = icmp eq i64 %128, %120
  br i1 %129, label %130, label %132

130:                                              ; preds = %126, %121
  %.lcssa9 = phi i64 [ %122, %126 ], [ %122, %121 ]
  %131 = getelementptr inbounds i64, ptr %107, i64 %120
  store i64 %.lcssa9, ptr %131, align 8, !tbaa !15
  br label %135

132:                                              ; preds = %126
  %133 = add i64 %122, 1
  %134 = icmp ugt i64 %133, %109
  br i1 %134, label %135, label %121, !llvm.loop !18

135:                                              ; preds = %132, %130
  br label %136

136:                                              ; preds = %147, %135
  %137 = phi i64 [ %148, %147 ], [ %109, %135 ]
  %138 = getelementptr inbounds i64, ptr %117, i64 %137
  %139 = load i64, ptr %138, align 8, !tbaa !15
  %140 = icmp eq i64 %139, %120
  br i1 %140, label %145, label %141

141:                                              ; preds = %136
  %142 = getelementptr inbounds i64, ptr %118, i64 %137
  %143 = load i64, ptr %142, align 8, !tbaa !15
  %144 = icmp eq i64 %143, %120
  br i1 %144, label %145, label %147

145:                                              ; preds = %141, %136
  %.lcssa11 = phi i64 [ %137, %141 ], [ %137, %136 ]
  %146 = getelementptr inbounds i64, ptr %108, i64 %120
  store i64 %.lcssa11, ptr %146, align 8, !tbaa !15
  br label %150

147:                                              ; preds = %141
  %148 = add nsw i64 %137, -1
  %149 = icmp eq i64 %148, 0
  br i1 %149, label %150, label %136, !llvm.loop !19

150:                                              ; preds = %147, %145, %119
  %151 = getelementptr inbounds i64, ptr %107, i64 %120
  %152 = load i64, ptr %151, align 8, !tbaa !15
  %153 = getelementptr inbounds i64, ptr %108, i64 %120
  %154 = load i64, ptr %153, align 8, !tbaa !15
  %155 = icmp ugt i64 %152, %154
  br i1 %155, label %163, label %156

156:                                              ; preds = %156, %150
  %157 = phi i64 [ %161, %156 ], [ %152, %150 ]
  %158 = getelementptr inbounds i64, ptr %112, i64 %157
  %159 = load i64, ptr %158, align 8, !tbaa !15
  %160 = add i64 %159, 1
  store i64 %160, ptr %158, align 8, !tbaa !15
  %161 = add i64 %157, 1
  %162 = icmp ugt i64 %161, %154
  br i1 %162, label %163, label %156, !llvm.loop !20

163:                                              ; preds = %156, %150
  %164 = add nuw i64 %120, 1
  %165 = icmp eq i64 %120, %104
  br i1 %165, label %166, label %119, !llvm.loop !21

166:                                              ; preds = %163, %103
  %167 = icmp eq i64 %109, 0
  br i1 %167, label %179, label %168

168:                                              ; preds = %168, %166
  %169 = phi i64 [ %176, %168 ], [ undef, %166 ]
  %170 = phi i64 [ %175, %168 ], [ 0, %166 ]
  %171 = phi i64 [ %177, %168 ], [ %109, %166 ]
  %172 = getelementptr inbounds i64, ptr %112, i64 %171
  %173 = load i64, ptr %172, align 8, !tbaa !15
  %174 = icmp ugt i64 %173, %170
  %175 = tail call i64 @llvm.umax.i64(i64 %173, i64 %170)
  %176 = select i1 %174, i64 %171, i64 %169
  %177 = add i64 %171, -1
  %178 = icmp eq i64 %177, 0
  br i1 %178, label %179, label %168, !llvm.loop !22

179:                                              ; preds = %168, %166
  %180 = phi i64 [ 0, %166 ], [ %175, %168 ]
  %181 = phi i64 [ undef, %166 ], [ %176, %168 ]
  store i64 %180, ptr @channelTracks, align 8, !tbaa !15
  store i64 %181, ptr @channelDensityColumn, align 8, !tbaa !15
  %182 = shl nuw nsw i64 %104, 6
  %183 = add nuw nsw i64 %182, 64
  %184 = tail call noalias ptr @malloc(i64 noundef %183) #19
  store ptr %184, ptr @VCG, align 8, !tbaa !7
  %185 = add i64 %104, 1
  %186 = mul i64 %185, %185
  %187 = shl i64 %186, 5
  %188 = tail call noalias ptr @malloc(i64 noundef %187) #19
  store ptr %188, ptr @storageRootVCG, align 8, !tbaa !7
  store ptr %188, ptr @storageVCG, align 8, !tbaa !7
  %189 = tail call noalias ptr @malloc(i64 noundef %106) #19
  store ptr %189, ptr @SCC, align 8, !tbaa !7
  %190 = tail call noalias ptr @malloc(i64 noundef %106) #19
  store ptr %190, ptr @perSCC, align 8, !tbaa !7
  %191 = shl i64 %186, 3
  %192 = tail call noalias ptr @malloc(i64 noundef %191) #19
  store ptr %192, ptr @removeVCG, align 8, !tbaa !7
  br i1 %114, label %369, label %193

193:                                              ; preds = %179
  %194 = load ptr, ptr @TOP, align 8
  %195 = load ptr, ptr @BOT, align 8
  %196 = add i64 %109, 1
  %197 = call i64 @llvm.umax.i64(i64 %196, i64 2)
  %198 = call i64 @llvm.umax.i64(i64 %185, i64 2)
  br label %199

199:                                              ; preds = %296, %193
  %200 = phi i64 [ %297, %296 ], [ %186, %193 ]
  %201 = phi ptr [ %298, %296 ], [ %188, %193 ]
  %202 = phi i64 [ %301, %296 ], [ 1, %193 ]
  %203 = getelementptr inbounds %struct._nodeVCGType, ptr %184, i64 %202
  store ptr %201, ptr %203, align 8, !tbaa !23
  br i1 %167, label %204, label %207

204:                                              ; preds = %199
  %205 = getelementptr inbounds %struct._nodeVCGType, ptr %184, i64 %202, i32 1
  store i64 0, ptr %205, align 8, !tbaa !25
  %206 = getelementptr inbounds %struct._nodeVCGType, ptr %184, i64 %202, i32 4
  store ptr %201, ptr %206, align 8, !tbaa !26
  br label %296

207:                                              ; preds = %242, %199
  %208 = phi i64 [ %243, %242 ], [ %200, %199 ]
  %209 = phi ptr [ %244, %242 ], [ %201, %199 ]
  %210 = phi i64 [ %245, %242 ], [ %200, %199 ]
  %211 = phi i64 [ %247, %242 ], [ 0, %199 ]
  %212 = phi i64 [ %248, %242 ], [ 1, %199 ]
  %213 = phi ptr [ %246, %242 ], [ %201, %199 ]
  %214 = getelementptr inbounds i64, ptr %194, i64 %212
  %215 = load i64, ptr %214, align 8, !tbaa !15
  %216 = icmp eq i64 %215, %202
  br i1 %216, label %217, label %242

217:                                              ; preds = %207
  %218 = getelementptr inbounds i64, ptr %195, i64 %212
  %219 = load i64, ptr %218, align 8, !tbaa !15
  %220 = icmp eq i64 %219, %202
  %221 = icmp eq i64 %219, 0
  %222 = or i1 %220, %221
  br i1 %222, label %242, label %223

223:                                              ; preds = %217
  %224 = icmp eq i64 %211, 0
  br i1 %224, label %233, label %228

225:                                              ; preds = %228
  %226 = add nuw i64 %229, 1
  %227 = icmp eq i64 %226, %211
  br i1 %227, label %233, label %228, !llvm.loop !27

228:                                              ; preds = %225, %223
  %229 = phi i64 [ %226, %225 ], [ 0, %223 ]
  %230 = getelementptr inbounds %struct._constraintVCGType, ptr %201, i64 %229, i32 1
  %231 = load i64, ptr %230, align 8, !tbaa !28
  %232 = icmp eq i64 %231, %219
  br i1 %232, label %242, label %225

233:                                              ; preds = %225, %223
  %234 = getelementptr inbounds %struct._constraintVCGType, ptr %201, i64 %211
  store i64 %202, ptr %234, align 8, !tbaa !30
  %235 = load i64, ptr %218, align 8, !tbaa !15
  %236 = getelementptr inbounds %struct._constraintVCGType, ptr %201, i64 %211, i32 1
  store i64 %235, ptr %236, align 8, !tbaa !28
  %237 = getelementptr inbounds %struct._constraintVCGType, ptr %201, i64 %211, i32 2
  store i64 %212, ptr %237, align 8, !tbaa !31
  %238 = getelementptr inbounds %struct._constraintVCGType, ptr %201, i64 %211, i32 3
  store i64 0, ptr %238, align 8, !tbaa !32
  %239 = getelementptr inbounds %struct._constraintVCGType, ptr %213, i64 1
  store ptr %239, ptr @storageVCG, align 8, !tbaa !7
  %240 = add i64 %210, -1
  %241 = add i64 %211, 1
  br label %242

242:                                              ; preds = %233, %228, %217, %207
  %243 = phi i64 [ %240, %233 ], [ %208, %217 ], [ %208, %207 ], [ %208, %228 ]
  %244 = phi ptr [ %239, %233 ], [ %209, %217 ], [ %209, %207 ], [ %209, %228 ]
  %245 = phi i64 [ %240, %233 ], [ %210, %217 ], [ %210, %207 ], [ %210, %228 ]
  %246 = phi ptr [ %239, %233 ], [ %213, %217 ], [ %213, %207 ], [ %213, %228 ]
  %247 = phi i64 [ %241, %233 ], [ %211, %217 ], [ %211, %207 ], [ %211, %228 ]
  %248 = add nuw i64 %212, 1
  %249 = icmp eq i64 %248, %197
  br i1 %249, label %250, label %207, !llvm.loop !33

250:                                              ; preds = %242
  %.lcssa15 = phi i64 [ %243, %242 ]
  %.lcssa14 = phi ptr [ %244, %242 ]
  %.lcssa13 = phi ptr [ %246, %242 ]
  %.lcssa12 = phi i64 [ %247, %242 ]
  %251 = getelementptr inbounds %struct._nodeVCGType, ptr %184, i64 %202, i32 1
  store i64 %.lcssa12, ptr %251, align 8, !tbaa !25
  %252 = getelementptr inbounds %struct._nodeVCGType, ptr %184, i64 %202, i32 4
  store ptr %.lcssa13, ptr %252, align 8, !tbaa !26
  br label %253

253:                                              ; preds = %288, %250
  %254 = phi i64 [ %.lcssa15, %250 ], [ %289, %288 ]
  %255 = phi ptr [ %.lcssa14, %250 ], [ %290, %288 ]
  %256 = phi i64 [ %.lcssa15, %250 ], [ %291, %288 ]
  %257 = phi i64 [ 0, %250 ], [ %293, %288 ]
  %258 = phi i64 [ 1, %250 ], [ %294, %288 ]
  %259 = phi ptr [ %.lcssa14, %250 ], [ %292, %288 ]
  %260 = getelementptr inbounds i64, ptr %195, i64 %258
  %261 = load i64, ptr %260, align 8, !tbaa !15
  %262 = icmp eq i64 %261, %202
  br i1 %262, label %263, label %288

263:                                              ; preds = %253
  %264 = getelementptr inbounds i64, ptr %194, i64 %258
  %265 = load i64, ptr %264, align 8, !tbaa !15
  %266 = icmp eq i64 %265, %202
  %267 = icmp eq i64 %265, 0
  %268 = or i1 %266, %267
  br i1 %268, label %288, label %269

269:                                              ; preds = %263
  %270 = icmp eq i64 %257, 0
  br i1 %270, label %279, label %274

271:                                              ; preds = %274
  %272 = add nuw i64 %275, 1
  %273 = icmp eq i64 %272, %257
  br i1 %273, label %279, label %274, !llvm.loop !34

274:                                              ; preds = %271, %269
  %275 = phi i64 [ %272, %271 ], [ 0, %269 ]
  %276 = getelementptr inbounds %struct._constraintVCGType, ptr %.lcssa13, i64 %275
  %277 = load i64, ptr %276, align 8, !tbaa !30
  %278 = icmp eq i64 %277, %265
  br i1 %278, label %288, label %271

279:                                              ; preds = %271, %269
  %280 = getelementptr inbounds %struct._constraintVCGType, ptr %.lcssa13, i64 %257
  store i64 %265, ptr %280, align 8, !tbaa !30
  %281 = load i64, ptr %260, align 8, !tbaa !15
  %282 = getelementptr inbounds %struct._constraintVCGType, ptr %.lcssa13, i64 %257, i32 1
  store i64 %281, ptr %282, align 8, !tbaa !28
  %283 = getelementptr inbounds %struct._constraintVCGType, ptr %.lcssa13, i64 %257, i32 2
  store i64 %258, ptr %283, align 8, !tbaa !31
  %284 = getelementptr inbounds %struct._constraintVCGType, ptr %.lcssa13, i64 %257, i32 3
  store i64 0, ptr %284, align 8, !tbaa !32
  %285 = getelementptr inbounds %struct._constraintVCGType, ptr %259, i64 1
  store ptr %285, ptr @storageVCG, align 8, !tbaa !7
  %286 = add i64 %256, -1
  %287 = add i64 %257, 1
  br label %288

288:                                              ; preds = %279, %274, %263, %253
  %289 = phi i64 [ %286, %279 ], [ %254, %263 ], [ %254, %253 ], [ %254, %274 ]
  %290 = phi ptr [ %285, %279 ], [ %255, %263 ], [ %255, %253 ], [ %255, %274 ]
  %291 = phi i64 [ %286, %279 ], [ %256, %263 ], [ %256, %253 ], [ %256, %274 ]
  %292 = phi ptr [ %285, %279 ], [ %259, %263 ], [ %259, %253 ], [ %259, %274 ]
  %293 = phi i64 [ %287, %279 ], [ %257, %263 ], [ %257, %253 ], [ %257, %274 ]
  %294 = add nuw i64 %258, 1
  %295 = icmp eq i64 %294, %197
  br i1 %295, label %296, label %253, !llvm.loop !35

296:                                              ; preds = %288, %204
  %297 = phi i64 [ %200, %204 ], [ %289, %288 ]
  %298 = phi ptr [ %201, %204 ], [ %290, %288 ]
  %299 = phi i64 [ 0, %204 ], [ %293, %288 ]
  %300 = getelementptr inbounds %struct._nodeVCGType, ptr %184, i64 %202, i32 5
  store i64 %299, ptr %300, align 8, !tbaa !36
  %301 = add nuw i64 %202, 1
  %302 = icmp eq i64 %301, %198
  br i1 %302, label %303, label %199, !llvm.loop !37

303:                                              ; preds = %296
  %304 = load i64, ptr @channelNets, align 8, !tbaa !15
  %305 = icmp eq i64 %304, 0
  br i1 %305, label %369, label %306

306:                                              ; preds = %303
  %307 = add i64 %304, 1
  %308 = call i64 @llvm.umax.i64(i64 %307, i64 2)
  br label %309

309:                                              ; preds = %366, %306
  %310 = phi i64 [ 1, %306 ], [ %367, %366 ]
  %311 = getelementptr inbounds %struct._nodeVCGType, ptr %184, i64 %310, i32 1
  %312 = load i64, ptr %311, align 8, !tbaa !25
  %313 = icmp eq i64 %312, 0
  br i1 %313, label %338, label %314

314:                                              ; preds = %309
  %315 = getelementptr inbounds %struct._nodeVCGType, ptr %184, i64 %310
  %316 = load ptr, ptr %315, align 8, !tbaa !23
  %317 = add i64 %312, 1
  %318 = and i64 %317, -2
  %319 = add i64 %312, -1
  %320 = insertelement <2 x i64> poison, i64 %319, i64 0
  %321 = shufflevector <2 x i64> %320, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %322

322:                                              ; preds = %334, %314
  %323 = phi i64 [ 0, %314 ], [ %335, %334 ]
  %324 = phi <2 x i64> [ <i64 0, i64 1>, %314 ], [ %336, %334 ]
  %325 = icmp ule <2 x i64> %324, %321
  %326 = extractelement <2 x i1> %325, i64 0
  br i1 %326, label %327, label %329

327:                                              ; preds = %322
  %328 = getelementptr inbounds %struct._constraintVCGType, ptr %316, i64 %323, i32 3
  store i64 0, ptr %328, align 8, !tbaa !32
  br label %329

329:                                              ; preds = %327, %322
  %330 = extractelement <2 x i1> %325, i64 1
  br i1 %330, label %331, label %334

331:                                              ; preds = %329
  %332 = or i64 %323, 1
  %333 = getelementptr inbounds %struct._constraintVCGType, ptr %316, i64 %332, i32 3
  store i64 0, ptr %333, align 8, !tbaa !32
  br label %334

334:                                              ; preds = %331, %329
  %335 = add i64 %323, 2
  %336 = add <2 x i64> %324, <i64 2, i64 2>
  %337 = icmp eq i64 %335, %318
  br i1 %337, label %338, label %322, !llvm.loop !38

338:                                              ; preds = %334, %309
  %339 = getelementptr inbounds %struct._nodeVCGType, ptr %184, i64 %310, i32 5
  %340 = load i64, ptr %339, align 8, !tbaa !36
  %341 = icmp eq i64 %340, 0
  br i1 %341, label %366, label %342

342:                                              ; preds = %338
  %343 = getelementptr inbounds %struct._nodeVCGType, ptr %184, i64 %310, i32 4
  %344 = load ptr, ptr %343, align 8, !tbaa !26
  %345 = add i64 %340, 1
  %346 = and i64 %345, -2
  %347 = add i64 %340, -1
  %348 = insertelement <2 x i64> poison, i64 %347, i64 0
  %349 = shufflevector <2 x i64> %348, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %350

350:                                              ; preds = %362, %342
  %351 = phi i64 [ 0, %342 ], [ %363, %362 ]
  %352 = phi <2 x i64> [ <i64 0, i64 1>, %342 ], [ %364, %362 ]
  %353 = icmp ule <2 x i64> %352, %349
  %354 = extractelement <2 x i1> %353, i64 0
  br i1 %354, label %355, label %357

355:                                              ; preds = %350
  %356 = getelementptr inbounds %struct._constraintVCGType, ptr %344, i64 %351, i32 3
  store i64 0, ptr %356, align 8, !tbaa !32
  br label %357

357:                                              ; preds = %355, %350
  %358 = extractelement <2 x i1> %353, i64 1
  br i1 %358, label %359, label %362

359:                                              ; preds = %357
  %360 = or i64 %351, 1
  %361 = getelementptr inbounds %struct._constraintVCGType, ptr %344, i64 %360, i32 3
  store i64 0, ptr %361, align 8, !tbaa !32
  br label %362

362:                                              ; preds = %359, %357
  %363 = add i64 %351, 2
  %364 = add <2 x i64> %352, <i64 2, i64 2>
  %365 = icmp eq i64 %363, %346
  br i1 %365, label %366, label %350, !llvm.loop !41

366:                                              ; preds = %362, %338
  %367 = add nuw i64 %310, 1
  %368 = icmp eq i64 %367, %308
  br i1 %368, label %369, label %309, !llvm.loop !42

369:                                              ; preds = %366, %303, %179
  %370 = phi i64 [ 0, %303 ], [ 0, %179 ], [ %304, %366 ]
  store i64 0, ptr @removeTotalVCG, align 8, !tbaa !15
  br label %371

371:                                              ; preds = %539, %369
  %372 = phi ptr [ %541, %539 ], [ %184, %369 ]
  %373 = phi i64 [ %.lcssa17, %539 ], [ 0, %369 ]
  %374 = phi i64 [ %540, %539 ], [ %370, %369 ]
  %375 = phi i1 [ true, %539 ], [ false, %369 ]
  %376 = icmp eq i64 %374, 0
  br i1 %376, label %383, label %377

377:                                              ; preds = %377, %371
  %378 = phi i64 [ %381, %377 ], [ 1, %371 ]
  %379 = getelementptr inbounds %struct._nodeVCGType, ptr %372, i64 %378, i32 2
  %380 = getelementptr inbounds %struct._nodeVCGType, ptr %372, i64 %378, i32 6
  %381 = add i64 %378, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %379, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %380, i8 0, i64 16, i1 false)
  %382 = icmp ugt i64 %381, %374
  br i1 %382, label %383, label %377, !llvm.loop !43

383:                                              ; preds = %377, %371
  %384 = load ptr, ptr @SCC, align 8, !tbaa !7
  %385 = load ptr, ptr @perSCC, align 8, !tbaa !7
  tail call fastcc void @SCCofVCG(ptr noundef %372, ptr noundef %384, ptr noundef %385) #15
  %386 = load i64, ptr @totalSCC, align 8, !tbaa !15
  %387 = icmp eq i64 %386, 0
  br i1 %387, label %542, label %391

388:                                              ; preds = %391
  %389 = add i64 %392, 1
  %390 = icmp ugt i64 %389, %386
  br i1 %390, label %542, label %391, !llvm.loop !44

391:                                              ; preds = %388, %383
  %392 = phi i64 [ %389, %388 ], [ 1, %383 ]
  %393 = getelementptr inbounds i64, ptr %385, i64 %392
  %394 = load i64, ptr %393, align 8, !tbaa !15
  %395 = icmp ugt i64 %394, 1
  br i1 %395, label %396, label %388

396:                                              ; preds = %391
  %397 = load ptr, ptr @removeVCG, align 8, !tbaa !7
  br label %398

398:                                              ; preds = %534, %396
  %399 = phi i64 [ %535, %534 ], [ %373, %396 ]
  %400 = phi i64 [ %536, %534 ], [ 1, %396 ]
  %401 = getelementptr inbounds i64, ptr %385, i64 %400
  %402 = load i64, ptr %401, align 8, !tbaa !15
  %403 = icmp ugt i64 %402, 1
  br i1 %403, label %404, label %534

404:                                              ; preds = %398
  %405 = load i64, ptr @channelNets, align 8, !tbaa !15
  %406 = icmp eq i64 %405, 0
  br i1 %406, label %507, label %407

407:                                              ; preds = %404
  %408 = load i64, ptr @channelColumns, align 8
  %409 = load ptr, ptr @TOP, align 8
  %410 = load ptr, ptr @BOT, align 8
  %411 = getelementptr inbounds i64, ptr %409, i64 2
  %412 = getelementptr inbounds i64, ptr %410, i64 2
  %413 = add nsw i64 %408, -1
  %414 = getelementptr inbounds i64, ptr %409, i64 %413
  %415 = getelementptr inbounds i64, ptr %410, i64 %413
  br label %416

416:                                              ; preds = %502, %407
  %417 = phi ptr [ null, %407 ], [ %504, %502 ]
  %418 = phi i64 [ 1, %407 ], [ %505, %502 ]
  %419 = phi i64 [ 7, %407 ], [ %503, %502 ]
  %420 = getelementptr inbounds i64, ptr %384, i64 %418
  %421 = load i64, ptr %420, align 8, !tbaa !15
  %422 = icmp eq i64 %421, %400
  br i1 %422, label %423, label %502

423:                                              ; preds = %416
  %424 = getelementptr inbounds %struct._nodeVCGType, ptr %372, i64 %418, i32 1
  %425 = load i64, ptr %424, align 8, !tbaa !25
  %426 = icmp eq i64 %425, 0
  br i1 %426, label %502, label %427

427:                                              ; preds = %423
  %428 = getelementptr inbounds %struct._nodeVCGType, ptr %372, i64 %418
  %429 = load ptr, ptr %428, align 8, !tbaa !23
  br label %430

430:                                              ; preds = %497, %427
  %431 = phi ptr [ %417, %427 ], [ %499, %497 ]
  %432 = phi i64 [ %419, %427 ], [ %498, %497 ]
  %433 = phi i64 [ 0, %427 ], [ %500, %497 ]
  %434 = getelementptr inbounds %struct._constraintVCGType, ptr %429, i64 %433, i32 1
  %435 = load i64, ptr %434, align 8, !tbaa !28
  %436 = getelementptr inbounds i64, ptr %384, i64 %435
  %437 = load i64, ptr %436, align 8, !tbaa !15
  %438 = icmp eq i64 %437, %400
  br i1 %438, label %439, label %497

439:                                              ; preds = %430
  %440 = getelementptr inbounds %struct._constraintVCGType, ptr %429, i64 %433, i32 3
  %441 = load i64, ptr %440, align 8, !tbaa !32
  %442 = icmp eq i64 %441, 0
  br i1 %442, label %443, label %497

443:                                              ; preds = %439
  %444 = getelementptr inbounds %struct._constraintVCGType, ptr %429, i64 %433, i32 2
  %445 = load i64, ptr %444, align 8, !tbaa !31
  %446 = icmp eq i64 %445, 1
  br i1 %446, label %447, label %455

447:                                              ; preds = %443
  %448 = load i64, ptr %411, align 8, !tbaa !15
  %449 = icmp eq i64 %448, 0
  %450 = load i64, ptr %412, align 8, !tbaa !15
  %451 = icmp eq i64 %450, 0
  br i1 %449, label %453, label %452

452:                                              ; preds = %447
  br i1 %451, label %454, label %491

453:                                              ; preds = %447
  br i1 %451, label %491, label %454

454:                                              ; preds = %453, %452
  br label %491

455:                                              ; preds = %443
  %456 = icmp eq i64 %445, %408
  br i1 %456, label %457, label %465

457:                                              ; preds = %455
  %458 = load i64, ptr %414, align 8, !tbaa !15
  %459 = icmp eq i64 %458, 0
  %460 = load i64, ptr %415, align 8, !tbaa !15
  %461 = icmp eq i64 %460, 0
  br i1 %459, label %463, label %462

462:                                              ; preds = %457
  br i1 %461, label %464, label %491

463:                                              ; preds = %457
  br i1 %461, label %491, label %464

464:                                              ; preds = %463, %462
  br label %491

465:                                              ; preds = %455
  %466 = add i64 %445, -1
  %467 = getelementptr inbounds i64, ptr %409, i64 %466
  %468 = load i64, ptr %467, align 8, !tbaa !15
  %469 = icmp eq i64 %468, 0
  %470 = getelementptr inbounds i64, ptr %410, i64 %466
  %471 = load i64, ptr %470, align 8, !tbaa !15
  %472 = icmp eq i64 %471, 0
  br i1 %469, label %474, label %473

473:                                              ; preds = %465
  br i1 %472, label %475, label %476

474:                                              ; preds = %465
  br i1 %472, label %476, label %475

475:                                              ; preds = %474, %473
  br label %476

476:                                              ; preds = %475, %474, %473
  %477 = phi i64 [ 2, %475 ], [ 0, %474 ], [ 3, %473 ]
  %478 = add i64 %445, 1
  %479 = getelementptr inbounds i64, ptr %409, i64 %478
  %480 = load i64, ptr %479, align 8, !tbaa !15
  %481 = icmp eq i64 %480, 0
  %482 = getelementptr inbounds i64, ptr %410, i64 %478
  %483 = load i64, ptr %482, align 8, !tbaa !15
  %484 = icmp eq i64 %483, 0
  br i1 %481, label %488, label %485

485:                                              ; preds = %476
  br i1 %484, label %489, label %486

486:                                              ; preds = %485
  %487 = add nuw nsw i64 %477, 3
  br label %491

488:                                              ; preds = %476
  br i1 %484, label %491, label %489

489:                                              ; preds = %488, %485
  %490 = add nuw nsw i64 %477, 2
  br label %491

491:                                              ; preds = %489, %488, %486, %464, %463, %462, %454, %453, %452
  %492 = phi i64 [ 5, %454 ], [ 3, %453 ], [ 5, %464 ], [ 3, %463 ], [ %487, %486 ], [ %490, %489 ], [ %477, %488 ], [ 6, %452 ], [ 6, %462 ]
  %493 = icmp ult i64 %492, %432
  %494 = getelementptr inbounds %struct._constraintVCGType, ptr %429, i64 %433
  %495 = tail call i64 @llvm.umin.i64(i64 %492, i64 %432)
  %496 = select i1 %493, ptr %494, ptr %431
  br label %497

497:                                              ; preds = %491, %439, %430
  %498 = phi i64 [ %432, %439 ], [ %432, %430 ], [ %495, %491 ]
  %499 = phi ptr [ %431, %439 ], [ %431, %430 ], [ %496, %491 ]
  %500 = add nuw i64 %433, 1
  %501 = icmp eq i64 %500, %425
  br i1 %501, label %502, label %430, !llvm.loop !45

502:                                              ; preds = %497, %423, %416
  %503 = phi i64 [ %419, %416 ], [ %419, %423 ], [ %498, %497 ]
  %504 = phi ptr [ %417, %416 ], [ %417, %423 ], [ %499, %497 ]
  %505 = add nuw i64 %418, 1
  %506 = icmp eq i64 %418, %405
  br i1 %506, label %507, label %416, !llvm.loop !46

507:                                              ; preds = %502, %404
  %508 = phi ptr [ null, %404 ], [ %504, %502 ]
  %509 = load ptr, ptr @stdout, align 8, !tbaa !7
  %510 = tail call i32 @fflush(ptr noundef %509) #15
  %511 = load i64, ptr @removeTotalVCG, align 8, !tbaa !15
  %512 = getelementptr inbounds ptr, ptr %397, i64 %511
  store ptr %508, ptr %512, align 8, !tbaa !7
  %513 = add i64 %511, 1
  store i64 %513, ptr @removeTotalVCG, align 8, !tbaa !15
  %514 = load i64, ptr %508, align 8, !tbaa !30
  %515 = getelementptr inbounds %struct._constraintVCGType, ptr %508, i64 0, i32 1
  %516 = load i64, ptr %515, align 8, !tbaa !28
  %517 = getelementptr inbounds %struct._constraintVCGType, ptr %508, i64 0, i32 3
  store i64 1, ptr %517, align 8, !tbaa !32
  %518 = getelementptr inbounds %struct._nodeVCGType, ptr %372, i64 %516, i32 5
  %519 = load i64, ptr %518, align 8, !tbaa !36
  %520 = icmp eq i64 %519, 0
  br i1 %520, label %534, label %521

521:                                              ; preds = %507
  %522 = getelementptr inbounds %struct._nodeVCGType, ptr %372, i64 %516, i32 4
  %523 = load ptr, ptr %522, align 8, !tbaa !26
  br label %524

524:                                              ; preds = %531, %521
  %525 = phi i64 [ 0, %521 ], [ %532, %531 ]
  %526 = getelementptr inbounds %struct._constraintVCGType, ptr %523, i64 %525
  %527 = load i64, ptr %526, align 8, !tbaa !30
  %528 = icmp eq i64 %527, %514
  br i1 %528, label %529, label %531

529:                                              ; preds = %524
  %.lcssa16 = phi i64 [ %525, %524 ]
  %530 = getelementptr inbounds %struct._constraintVCGType, ptr %523, i64 %.lcssa16, i32 3
  store i64 1, ptr %530, align 8, !tbaa !32
  br label %534

531:                                              ; preds = %524
  %532 = add nuw i64 %525, 1
  %533 = icmp eq i64 %532, %519
  br i1 %533, label %534, label %524, !llvm.loop !47

534:                                              ; preds = %531, %529, %507, %398
  %535 = phi i64 [ %513, %529 ], [ %513, %507 ], [ %399, %398 ], [ %513, %531 ]
  %536 = add i64 %400, 1
  %537 = load i64, ptr @totalSCC, align 8, !tbaa !15
  %538 = icmp ugt i64 %536, %537
  br i1 %538, label %539, label %398, !llvm.loop !48

539:                                              ; preds = %534
  %.lcssa17 = phi i64 [ %535, %534 ]
  %540 = load i64, ptr @channelNets, align 8, !tbaa !15
  %541 = load ptr, ptr @VCG, align 8, !tbaa !7
  br label %371, !llvm.loop !49

542:                                              ; preds = %388, %383
  %.lcssa24 = phi ptr [ %384, %388 ], [ %384, %383 ]
  %.lcssa23 = phi ptr [ %385, %388 ], [ %385, %383 ]
  %.lcssa22 = phi ptr [ %372, %388 ], [ %372, %383 ]
  %.lcssa21 = phi i64 [ %373, %388 ], [ %373, %383 ]
  %.lcssa20 = phi i64 [ %374, %388 ], [ %374, %383 ]
  %.lcssa19 = phi i1 [ %375, %388 ], [ %375, %383 ]
  %.lcssa18 = phi i1 [ %376, %388 ], [ %376, %383 ]
  %543 = icmp eq i64 %.lcssa21, 0
  br i1 %543, label %643, label %544

544:                                              ; preds = %542
  %545 = load ptr, ptr @removeVCG, align 8, !tbaa !7
  br label %546

546:                                              ; preds = %639, %544
  %547 = phi i64 [ %640, %639 ], [ %.lcssa21, %544 ]
  %548 = phi i64 [ %641, %639 ], [ 0, %544 ]
  %549 = getelementptr inbounds ptr, ptr %545, i64 %548
  %550 = load ptr, ptr %549, align 8, !tbaa !7
  %551 = load i64, ptr %550, align 8, !tbaa !30
  %552 = getelementptr inbounds %struct._constraintVCGType, ptr %550, i64 0, i32 1
  %553 = load i64, ptr %552, align 8, !tbaa !28
  %554 = getelementptr inbounds %struct._nodeVCGType, ptr %.lcssa22, i64 %551, i32 1
  %555 = load i64, ptr %554, align 8, !tbaa !25
  %556 = icmp eq i64 %555, 0
  br i1 %556, label %570, label %557

557:                                              ; preds = %546
  %558 = getelementptr inbounds %struct._nodeVCGType, ptr %.lcssa22, i64 %551
  %559 = load ptr, ptr %558, align 8, !tbaa !23
  br label %560

560:                                              ; preds = %567, %557
  %561 = phi i64 [ 0, %557 ], [ %568, %567 ]
  %562 = getelementptr inbounds %struct._constraintVCGType, ptr %559, i64 %561, i32 1
  %563 = load i64, ptr %562, align 8, !tbaa !28
  %564 = icmp eq i64 %563, %553
  br i1 %564, label %565, label %567

565:                                              ; preds = %560
  %.lcssa25 = phi i64 [ %561, %560 ]
  %566 = getelementptr inbounds %struct._constraintVCGType, ptr %559, i64 %.lcssa25, i32 3
  store i64 0, ptr %566, align 8, !tbaa !32
  br label %570

567:                                              ; preds = %560
  %568 = add nuw i64 %561, 1
  %569 = icmp eq i64 %568, %555
  br i1 %569, label %570, label %560, !llvm.loop !50

570:                                              ; preds = %567, %565, %546
  %571 = getelementptr inbounds %struct._nodeVCGType, ptr %.lcssa22, i64 %553, i32 5
  %572 = load i64, ptr %571, align 8, !tbaa !36
  %573 = icmp eq i64 %572, 0
  br i1 %573, label %587, label %574

574:                                              ; preds = %570
  %575 = getelementptr inbounds %struct._nodeVCGType, ptr %.lcssa22, i64 %553, i32 4
  %576 = load ptr, ptr %575, align 8, !tbaa !26
  br label %577

577:                                              ; preds = %584, %574
  %578 = phi i64 [ 0, %574 ], [ %585, %584 ]
  %579 = getelementptr inbounds %struct._constraintVCGType, ptr %576, i64 %578
  %580 = load i64, ptr %579, align 8, !tbaa !30
  %581 = icmp eq i64 %580, %551
  br i1 %581, label %582, label %584

582:                                              ; preds = %577
  %.lcssa26 = phi i64 [ %578, %577 ]
  %583 = getelementptr inbounds %struct._constraintVCGType, ptr %576, i64 %.lcssa26, i32 3
  store i64 0, ptr %583, align 8, !tbaa !32
  br label %587

584:                                              ; preds = %577
  %585 = add nuw i64 %578, 1
  %586 = icmp eq i64 %585, %572
  br i1 %586, label %587, label %577, !llvm.loop !51

587:                                              ; preds = %584, %582, %570
  br i1 %.lcssa18, label %594, label %588

588:                                              ; preds = %588, %587
  %589 = phi i64 [ %592, %588 ], [ 1, %587 ]
  %590 = getelementptr inbounds %struct._nodeVCGType, ptr %.lcssa22, i64 %589, i32 2
  %591 = getelementptr inbounds %struct._nodeVCGType, ptr %.lcssa22, i64 %589, i32 6
  %592 = add i64 %589, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %590, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %591, i8 0, i64 16, i1 false)
  %593 = icmp ugt i64 %592, %.lcssa20
  br i1 %593, label %594, label %588, !llvm.loop !43

594:                                              ; preds = %588, %587
  tail call fastcc void @SCCofVCG(ptr noundef nonnull %.lcssa22, ptr noundef %.lcssa24, ptr noundef %.lcssa23) #15
  %595 = load i64, ptr @totalSCC, align 8, !tbaa !15
  %596 = icmp eq i64 %595, 0
  br i1 %596, label %637, label %600

597:                                              ; preds = %600
  %598 = add i64 %601, 1
  %599 = icmp ugt i64 %598, %595
  br i1 %599, label %637, label %600, !llvm.loop !52

600:                                              ; preds = %597, %594
  %601 = phi i64 [ %598, %597 ], [ 1, %594 ]
  %602 = getelementptr inbounds i64, ptr %.lcssa23, i64 %601
  %603 = load i64, ptr %602, align 8, !tbaa !15
  %604 = icmp ugt i64 %603, 1
  br i1 %604, label %605, label %597

605:                                              ; preds = %600
  %606 = load i64, ptr %554, align 8, !tbaa !25
  %607 = icmp eq i64 %606, 0
  br i1 %607, label %621, label %608

608:                                              ; preds = %605
  %609 = getelementptr inbounds %struct._nodeVCGType, ptr %.lcssa22, i64 %551
  %610 = load ptr, ptr %609, align 8, !tbaa !23
  br label %611

611:                                              ; preds = %618, %608
  %612 = phi i64 [ 0, %608 ], [ %619, %618 ]
  %613 = getelementptr inbounds %struct._constraintVCGType, ptr %610, i64 %612, i32 1
  %614 = load i64, ptr %613, align 8, !tbaa !28
  %615 = icmp eq i64 %614, %553
  br i1 %615, label %616, label %618

616:                                              ; preds = %611
  %.lcssa27 = phi i64 [ %612, %611 ]
  %617 = getelementptr inbounds %struct._constraintVCGType, ptr %610, i64 %.lcssa27, i32 3
  store i64 1, ptr %617, align 8, !tbaa !32
  br label %621

618:                                              ; preds = %611
  %619 = add nuw i64 %612, 1
  %620 = icmp eq i64 %619, %606
  br i1 %620, label %621, label %611, !llvm.loop !53

621:                                              ; preds = %618, %616, %605
  %622 = load i64, ptr %571, align 8, !tbaa !36
  %623 = icmp eq i64 %622, 0
  br i1 %623, label %639, label %624

624:                                              ; preds = %621
  %625 = getelementptr inbounds %struct._nodeVCGType, ptr %.lcssa22, i64 %553, i32 4
  %626 = load ptr, ptr %625, align 8, !tbaa !26
  br label %627

627:                                              ; preds = %634, %624
  %628 = phi i64 [ 0, %624 ], [ %635, %634 ]
  %629 = getelementptr inbounds %struct._constraintVCGType, ptr %626, i64 %628
  %630 = load i64, ptr %629, align 8, !tbaa !30
  %631 = icmp eq i64 %630, %551
  br i1 %631, label %632, label %634

632:                                              ; preds = %627
  %.lcssa28 = phi i64 [ %628, %627 ]
  %633 = getelementptr inbounds %struct._constraintVCGType, ptr %626, i64 %.lcssa28, i32 3
  store i64 1, ptr %633, align 8, !tbaa !32
  br label %639

634:                                              ; preds = %627
  %635 = add nuw i64 %628, 1
  %636 = icmp eq i64 %635, %622
  br i1 %636, label %639, label %627, !llvm.loop !54

637:                                              ; preds = %597, %594
  %638 = add i64 %547, -1
  br label %639

639:                                              ; preds = %637, %634, %632, %621
  %640 = phi i64 [ %547, %632 ], [ %638, %637 ], [ %547, %621 ], [ %547, %634 ]
  %641 = add nuw i64 %548, 1
  %642 = icmp eq i64 %641, %.lcssa21
  br i1 %642, label %643, label %546, !llvm.loop !55

643:                                              ; preds = %639, %542
  %644 = phi i64 [ 0, %542 ], [ %640, %639 ]
  br i1 %.lcssa19, label %647, label %645

645:                                              ; preds = %643
  %646 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.12)
  br label %650

647:                                              ; preds = %643
  %648 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.11.51)
  %649 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, i64 noundef %644) #15
  br label %650

650:                                              ; preds = %647, %645
  %651 = load i64, ptr @channelNets, align 8, !tbaa !15
  %652 = mul nuw nsw i64 %651, 24
  %653 = add nuw nsw i64 %652, 24
  %654 = tail call noalias ptr @malloc(i64 noundef %653) #19
  store ptr %654, ptr @HCG, align 8, !tbaa !7
  %655 = add i64 %651, 1
  %656 = mul i64 %655, %655
  %657 = shl i64 %656, 3
  %658 = tail call noalias ptr @malloc(i64 noundef %657) #19
  store ptr %658, ptr @storageRootHCG, align 8, !tbaa !7
  store ptr %658, ptr @storageHCG, align 8, !tbaa !7
  %659 = icmp eq i64 %651, 0
  br i1 %659, label %712, label %660

660:                                              ; preds = %650
  %661 = load ptr, ptr @FIRST, align 8, !tbaa !7
  %662 = load ptr, ptr @LAST, align 8
  %663 = call i64 @llvm.umax.i64(i64 %655, i64 2)
  br label %664

664:                                              ; preds = %706, %660
  %665 = phi i64 [ %.lcssa31, %706 ], [ %656, %660 ]
  %666 = phi ptr [ %.lcssa30, %706 ], [ %658, %660 ]
  %667 = phi i64 [ %708, %706 ], [ 1, %660 ]
  %668 = getelementptr inbounds i64, ptr %661, i64 %667
  %669 = load i64, ptr %668, align 8, !tbaa !15
  %670 = getelementptr inbounds i64, ptr %662, i64 %667
  %671 = load i64, ptr %670, align 8, !tbaa !15
  %672 = getelementptr inbounds %struct._nodeHCGType, ptr %654, i64 %667
  store ptr %666, ptr %672, align 8, !tbaa !56
  br label %673

673:                                              ; preds = %698, %664
  %674 = phi i64 [ %665, %664 ], [ %699, %698 ]
  %675 = phi ptr [ %666, %664 ], [ %700, %698 ]
  %676 = phi i64 [ %665, %664 ], [ %701, %698 ]
  %677 = phi i64 [ 1, %664 ], [ %704, %698 ]
  %678 = phi i64 [ 0, %664 ], [ %703, %698 ]
  %679 = phi ptr [ %666, %664 ], [ %702, %698 ]
  %680 = getelementptr inbounds i64, ptr %661, i64 %677
  %681 = load i64, ptr %680, align 8, !tbaa !15
  %682 = icmp ult i64 %681, %669
  br i1 %682, label %683, label %687

683:                                              ; preds = %673
  %684 = getelementptr inbounds i64, ptr %662, i64 %677
  %685 = load i64, ptr %684, align 8, !tbaa !15
  %686 = icmp ult i64 %685, %669
  br i1 %686, label %698, label %687

687:                                              ; preds = %683, %673
  %688 = icmp ugt i64 %681, %671
  br i1 %688, label %689, label %693

689:                                              ; preds = %687
  %690 = getelementptr inbounds i64, ptr %662, i64 %677
  %691 = load i64, ptr %690, align 8, !tbaa !15
  %692 = icmp ugt i64 %691, %671
  br i1 %692, label %698, label %693

693:                                              ; preds = %689, %687
  %694 = getelementptr inbounds i64, ptr %666, i64 %678
  store i64 %677, ptr %694, align 8, !tbaa !15
  %695 = getelementptr inbounds i64, ptr %679, i64 1
  store ptr %695, ptr @storageHCG, align 8, !tbaa !7
  %696 = add i64 %676, -1
  %697 = add i64 %678, 1
  br label %698

698:                                              ; preds = %693, %689, %683
  %699 = phi i64 [ %674, %683 ], [ %674, %689 ], [ %696, %693 ]
  %700 = phi ptr [ %675, %683 ], [ %675, %689 ], [ %695, %693 ]
  %701 = phi i64 [ %676, %683 ], [ %676, %689 ], [ %696, %693 ]
  %702 = phi ptr [ %679, %683 ], [ %679, %689 ], [ %695, %693 ]
  %703 = phi i64 [ %678, %683 ], [ %678, %689 ], [ %697, %693 ]
  %704 = add nuw i64 %677, 1
  %705 = icmp eq i64 %704, %663
  br i1 %705, label %706, label %673, !llvm.loop !58

706:                                              ; preds = %698
  %.lcssa31 = phi i64 [ %699, %698 ]
  %.lcssa30 = phi ptr [ %700, %698 ]
  %.lcssa29 = phi i64 [ %703, %698 ]
  %707 = getelementptr inbounds %struct._nodeHCGType, ptr %654, i64 %667, i32 1
  store i64 %.lcssa29, ptr %707, align 8, !tbaa !59
  %708 = add nuw i64 %667, 1
  %709 = icmp eq i64 %708, %663
  br i1 %709, label %710, label %664, !llvm.loop !60

710:                                              ; preds = %706
  %711 = load i64, ptr @channelNets, align 8, !tbaa !15
  br label %712

712:                                              ; preds = %710, %650
  %713 = phi i64 [ 0, %650 ], [ %711, %710 ]
  br label %714

714:                                              ; preds = %1548, %712
  %715 = phi i64 [ %.lcssa44, %1548 ], [ %713, %712 ]
  %716 = shl i64 %715, 3
  %717 = add nuw nsw i64 %716, 8
  %718 = tail call noalias ptr @malloc(i64 noundef %717) #19
  store ptr %718, ptr @costMatrix, align 8, !tbaa !7
  %719 = icmp eq i64 %715, 0
  %720 = load i64, ptr @channelTracks, align 8, !tbaa !15
  %721 = shl i64 %720, 3
  %722 = add i64 %721, 16
  br i1 %719, label %729, label %723

723:                                              ; preds = %723, %714
  %724 = phi i64 [ %727, %723 ], [ 1, %714 ]
  %725 = tail call noalias ptr @malloc(i64 noundef %722) #19
  %726 = getelementptr inbounds ptr, ptr %718, i64 %724
  store ptr %725, ptr %726, align 8, !tbaa !7
  %727 = add i64 %724, 1
  %728 = icmp ugt i64 %727, %715
  br i1 %728, label %729, label %723, !llvm.loop !61

729:                                              ; preds = %723, %714
  %730 = tail call noalias ptr @malloc(i64 noundef %722) #19
  store ptr %730, ptr @tracksNotPref, align 8, !tbaa !7
  %731 = tail call noalias ptr @malloc(i64 noundef %722) #19
  store ptr %731, ptr @tracksTopNotPref, align 8, !tbaa !7
  %732 = tail call noalias ptr @malloc(i64 noundef %722) #19
  store ptr %732, ptr @tracksBotNotPref, align 8, !tbaa !7
  %733 = tail call noalias ptr @malloc(i64 noundef %722) #19
  store ptr %733, ptr @tracksNoHCV, align 8, !tbaa !7
  %734 = tail call noalias ptr @malloc(i64 noundef %722) #19
  store ptr %734, ptr @tracksAssign, align 8, !tbaa !7
  %735 = tail call noalias ptr @malloc(i64 noundef %717) #19
  store ptr %735, ptr @netsAssign, align 8, !tbaa !7
  %736 = tail call noalias ptr @malloc(i64 noundef %717) #19
  store ptr %736, ptr @netsAssignCopy, align 8, !tbaa !7
  br i1 %719, label %737, label %738

737:                                              ; preds = %729
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #17
  br label %790

738:                                              ; preds = %729
  %739 = getelementptr i8, ptr %735, i64 8
  call void @llvm.memset.p0.i64(ptr align 8 %739, i8 0, i64 %716, i1 false), !tbaa !15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #17
  %740 = load ptr, ptr @FIRST, align 8, !tbaa !7
  %741 = load ptr, ptr @LAST, align 8
  %742 = load ptr, ptr @CROSSING, align 8
  %743 = load i64, ptr @channelDensityColumn, align 8, !tbaa !15
  br label %746

744:                                              ; preds = %761
  %.lcssa32 = phi i64 [ %762, %761 ]
  %745 = icmp eq i64 %.lcssa32, 0
  br i1 %745, label %780, label %765

746:                                              ; preds = %761, %738
  %747 = phi i64 [ 0, %738 ], [ %762, %761 ]
  %748 = phi i64 [ 1, %738 ], [ %763, %761 ]
  %749 = getelementptr inbounds i64, ptr %740, i64 %748
  %750 = load i64, ptr %749, align 8, !tbaa !15
  %751 = icmp ugt i64 %750, %743
  br i1 %751, label %759, label %752

752:                                              ; preds = %746
  %753 = getelementptr inbounds i64, ptr %741, i64 %748
  %754 = load i64, ptr %753, align 8, !tbaa !15
  %755 = icmp ult i64 %754, %743
  br i1 %755, label %759, label %756

756:                                              ; preds = %752
  %757 = getelementptr inbounds i64, ptr %742, i64 %748
  store i64 1, ptr %757, align 8, !tbaa !15
  %758 = add i64 %747, 1
  br label %761

759:                                              ; preds = %752, %746
  %760 = getelementptr inbounds i64, ptr %742, i64 %748
  store i64 0, ptr %760, align 8, !tbaa !15
  br label %761

761:                                              ; preds = %759, %756
  %762 = phi i64 [ %758, %756 ], [ %747, %759 ]
  %763 = add nuw i64 %748, 1
  %764 = icmp eq i64 %748, %715
  br i1 %764, label %744, label %746, !llvm.loop !62

765:                                              ; preds = %765, %744
  %766 = phi ptr [ %774, %765 ], [ %742, %744 ]
  %767 = phi i64 [ %776, %765 ], [ %.lcssa32, %744 ]
  %768 = load ptr, ptr @VCG, align 8, !tbaa !7
  %769 = load ptr, ptr @HCG, align 8, !tbaa !7
  %770 = load ptr, ptr @netsAssign, align 8, !tbaa !7
  call fastcc void @Select(ptr noundef %768, ptr noundef %769, ptr noundef %770, ptr noundef nonnull %9, ptr noundef nonnull %766) #15
  %771 = load ptr, ptr @VCG, align 8, !tbaa !7
  %772 = load ptr, ptr @netsAssign, align 8, !tbaa !7
  %773 = load i64, ptr %9, align 8, !tbaa !15
  tail call fastcc void @Assign(ptr noundef %771, ptr noundef %772, i64 noundef %773) #15
  %774 = load ptr, ptr @CROSSING, align 8, !tbaa !7
  %775 = getelementptr inbounds i64, ptr %774, i64 %773
  store i64 0, ptr %775, align 8, !tbaa !15
  %776 = add i64 %767, -1
  %777 = icmp eq i64 %776, 0
  br i1 %777, label %778, label %765, !llvm.loop !63

778:                                              ; preds = %765
  %.lcssa33 = phi ptr [ %774, %765 ]
  %779 = load i64, ptr @channelNets, align 8, !tbaa !15
  br label %780

780:                                              ; preds = %778, %744
  %781 = phi ptr [ %.lcssa33, %778 ], [ %742, %744 ]
  %782 = phi i64 [ %779, %778 ], [ %715, %744 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #17
  %783 = icmp eq i64 %782, 0
  br i1 %783, label %790, label %784

784:                                              ; preds = %780
  %785 = getelementptr i8, ptr %781, i64 8
  %786 = add i64 %782, 1
  %787 = tail call i64 @llvm.umax.i64(i64 %786, i64 2)
  %788 = shl i64 %787, 3
  %789 = add i64 %788, -8
  tail call void @llvm.memset.p0.i64(ptr align 8 %785, i8 0, i64 %789, i1 false), !tbaa !15
  br label %790

790:                                              ; preds = %784, %780, %737
  %791 = phi i64 [ 0, %737 ], [ %782, %784 ], [ 0, %780 ]
  %792 = load i64, ptr @channelDensityColumn, align 8, !tbaa !15
  %793 = add i64 %792, -1
  %794 = icmp eq i64 %793, 0
  br i1 %794, label %869, label %795

795:                                              ; preds = %863, %790
  %796 = phi i64 [ %865, %863 ], [ %793, %790 ]
  %797 = phi i64 [ %864, %863 ], [ 0, %790 ]
  %798 = load ptr, ptr @TOP, align 8, !tbaa !7
  %799 = getelementptr inbounds i64, ptr %798, i64 %796
  %800 = load i64, ptr %799, align 8, !tbaa !15
  %801 = load ptr, ptr @BOT, align 8, !tbaa !7
  %802 = getelementptr inbounds i64, ptr %801, i64 %796
  %803 = load i64, ptr %802, align 8, !tbaa !15
  %804 = icmp eq i64 %800, %803
  %805 = icmp eq i64 %800, 0
  br i1 %804, label %824, label %806

806:                                              ; preds = %795
  br i1 %805, label %816, label %807

807:                                              ; preds = %806
  %808 = load ptr, ptr @LAST, align 8, !tbaa !7
  %809 = getelementptr inbounds i64, ptr %808, i64 %800
  %810 = load i64, ptr %809, align 8, !tbaa !15
  %811 = icmp eq i64 %810, %796
  br i1 %811, label %812, label %816

812:                                              ; preds = %807
  %813 = load ptr, ptr @CROSSING, align 8, !tbaa !7
  %814 = getelementptr inbounds i64, ptr %813, i64 %800
  store i64 1, ptr %814, align 8, !tbaa !15
  %815 = add i64 %797, 1
  br label %816

816:                                              ; preds = %812, %807, %806
  %817 = phi i64 [ %815, %812 ], [ %797, %807 ], [ %797, %806 ]
  %818 = icmp eq i64 %803, 0
  br i1 %818, label %836, label %819

819:                                              ; preds = %816
  %820 = load ptr, ptr @LAST, align 8, !tbaa !7
  %821 = getelementptr inbounds i64, ptr %820, i64 %803
  %822 = load i64, ptr %821, align 8, !tbaa !15
  %823 = icmp eq i64 %822, %796
  br i1 %823, label %830, label %836

824:                                              ; preds = %795
  br i1 %805, label %836, label %825

825:                                              ; preds = %824
  %826 = load ptr, ptr @LAST, align 8, !tbaa !7
  %827 = getelementptr inbounds i64, ptr %826, i64 %800
  %828 = load i64, ptr %827, align 8, !tbaa !15
  %829 = icmp eq i64 %828, %796
  br i1 %829, label %830, label %836

830:                                              ; preds = %825, %819
  %831 = phi i64 [ %803, %819 ], [ %800, %825 ]
  %832 = phi i64 [ %817, %819 ], [ %797, %825 ]
  %833 = load ptr, ptr @CROSSING, align 8, !tbaa !7
  %834 = getelementptr inbounds i64, ptr %833, i64 %831
  store i64 1, ptr %834, align 8, !tbaa !15
  %835 = add i64 %832, 1
  br label %836

836:                                              ; preds = %830, %825, %824, %819, %816
  %837 = phi i64 [ %817, %819 ], [ %817, %816 ], [ %797, %825 ], [ %797, %824 ], [ %835, %830 ]
  %838 = load ptr, ptr @FIRST, align 8, !tbaa !7
  %839 = getelementptr inbounds i64, ptr %838, i64 %800
  %840 = load i64, ptr %839, align 8, !tbaa !15
  %841 = icmp eq i64 %840, %796
  br i1 %841, label %846, label %842

842:                                              ; preds = %836
  %843 = getelementptr inbounds i64, ptr %838, i64 %803
  %844 = load i64, ptr %843, align 8, !tbaa !15
  %845 = icmp eq i64 %844, %796
  br i1 %845, label %846, label %863

846:                                              ; preds = %842, %836
  %847 = icmp eq i64 %837, 0
  br i1 %847, label %863, label %848

848:                                              ; preds = %846
  %849 = load ptr, ptr @CROSSING, align 8, !tbaa !7
  br label %850

850:                                              ; preds = %850, %848
  %851 = phi ptr [ %859, %850 ], [ %849, %848 ]
  %852 = phi i64 [ %861, %850 ], [ %837, %848 ]
  %853 = load ptr, ptr @VCG, align 8, !tbaa !7
  %854 = load ptr, ptr @HCG, align 8, !tbaa !7
  %855 = load ptr, ptr @netsAssign, align 8, !tbaa !7
  call fastcc void @Select(ptr noundef %853, ptr noundef %854, ptr noundef %855, ptr noundef nonnull %8, ptr noundef %851) #15
  %856 = load ptr, ptr @VCG, align 8, !tbaa !7
  %857 = load ptr, ptr @netsAssign, align 8, !tbaa !7
  %858 = load i64, ptr %8, align 8, !tbaa !15
  tail call fastcc void @Assign(ptr noundef %856, ptr noundef %857, i64 noundef %858) #15
  %859 = load ptr, ptr @CROSSING, align 8, !tbaa !7
  %860 = getelementptr inbounds i64, ptr %859, i64 %858
  store i64 0, ptr %860, align 8, !tbaa !15
  %861 = add i64 %852, -1
  %862 = icmp eq i64 %861, 0
  br i1 %862, label %863, label %850, !llvm.loop !64

863:                                              ; preds = %850, %846, %842
  %864 = phi i64 [ %837, %842 ], [ 0, %846 ], [ 0, %850 ]
  %865 = add i64 %796, -1
  %866 = icmp eq i64 %865, 0
  br i1 %866, label %867, label %795, !llvm.loop !65

867:                                              ; preds = %863
  %868 = load i64, ptr @channelNets, align 8, !tbaa !15
  br label %869

869:                                              ; preds = %867, %790
  %870 = phi i64 [ %868, %867 ], [ %791, %790 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #17
  %871 = icmp eq i64 %870, 0
  br i1 %871, label %879, label %872

872:                                              ; preds = %869
  %873 = load ptr, ptr @CROSSING, align 8, !tbaa !7
  %874 = getelementptr i8, ptr %873, i64 8
  %875 = add i64 %870, 1
  %876 = tail call i64 @llvm.umax.i64(i64 %875, i64 2)
  %877 = shl i64 %876, 3
  %878 = add i64 %877, -8
  tail call void @llvm.memset.p0.i64(ptr align 8 %874, i8 0, i64 %878, i1 false), !tbaa !15
  br label %879

879:                                              ; preds = %872, %869
  %880 = load i64, ptr @channelDensityColumn, align 8, !tbaa !15
  %881 = add i64 %880, 1
  %882 = load i64, ptr @channelColumns, align 8, !tbaa !15
  %883 = icmp ugt i64 %881, %882
  br i1 %883, label %960, label %884

884:                                              ; preds = %955, %879
  %885 = phi i64 [ %956, %955 ], [ %882, %879 ]
  %886 = phi i64 [ %958, %955 ], [ %881, %879 ]
  %887 = phi i64 [ %957, %955 ], [ 0, %879 ]
  %888 = load ptr, ptr @TOP, align 8, !tbaa !7
  %889 = getelementptr inbounds i64, ptr %888, i64 %886
  %890 = load i64, ptr %889, align 8, !tbaa !15
  %891 = load ptr, ptr @BOT, align 8, !tbaa !7
  %892 = getelementptr inbounds i64, ptr %891, i64 %886
  %893 = load i64, ptr %892, align 8, !tbaa !15
  %894 = icmp eq i64 %890, %893
  %895 = icmp eq i64 %890, 0
  br i1 %894, label %914, label %896

896:                                              ; preds = %884
  br i1 %895, label %906, label %897

897:                                              ; preds = %896
  %898 = load ptr, ptr @FIRST, align 8, !tbaa !7
  %899 = getelementptr inbounds i64, ptr %898, i64 %890
  %900 = load i64, ptr %899, align 8, !tbaa !15
  %901 = icmp eq i64 %900, %886
  br i1 %901, label %902, label %906

902:                                              ; preds = %897
  %903 = load ptr, ptr @CROSSING, align 8, !tbaa !7
  %904 = getelementptr inbounds i64, ptr %903, i64 %890
  store i64 1, ptr %904, align 8, !tbaa !15
  %905 = add i64 %887, 1
  br label %906

906:                                              ; preds = %902, %897, %896
  %907 = phi i64 [ %905, %902 ], [ %887, %897 ], [ %887, %896 ]
  %908 = icmp eq i64 %893, 0
  br i1 %908, label %926, label %909

909:                                              ; preds = %906
  %910 = load ptr, ptr @FIRST, align 8, !tbaa !7
  %911 = getelementptr inbounds i64, ptr %910, i64 %893
  %912 = load i64, ptr %911, align 8, !tbaa !15
  %913 = icmp eq i64 %912, %886
  br i1 %913, label %920, label %926

914:                                              ; preds = %884
  br i1 %895, label %926, label %915

915:                                              ; preds = %914
  %916 = load ptr, ptr @FIRST, align 8, !tbaa !7
  %917 = getelementptr inbounds i64, ptr %916, i64 %890
  %918 = load i64, ptr %917, align 8, !tbaa !15
  %919 = icmp eq i64 %918, %886
  br i1 %919, label %920, label %926

920:                                              ; preds = %915, %909
  %921 = phi i64 [ %893, %909 ], [ %890, %915 ]
  %922 = phi i64 [ %907, %909 ], [ %887, %915 ]
  %923 = load ptr, ptr @CROSSING, align 8, !tbaa !7
  %924 = getelementptr inbounds i64, ptr %923, i64 %921
  store i64 1, ptr %924, align 8, !tbaa !15
  %925 = add i64 %922, 1
  br label %926

926:                                              ; preds = %920, %915, %914, %909, %906
  %927 = phi i64 [ %907, %909 ], [ %907, %906 ], [ %887, %915 ], [ %887, %914 ], [ %925, %920 ]
  %928 = load ptr, ptr @LAST, align 8, !tbaa !7
  %929 = getelementptr inbounds i64, ptr %928, i64 %890
  %930 = load i64, ptr %929, align 8, !tbaa !15
  %931 = icmp eq i64 %930, %886
  br i1 %931, label %936, label %932

932:                                              ; preds = %926
  %933 = getelementptr inbounds i64, ptr %928, i64 %893
  %934 = load i64, ptr %933, align 8, !tbaa !15
  %935 = icmp eq i64 %934, %886
  br i1 %935, label %936, label %955

936:                                              ; preds = %932, %926
  %937 = icmp eq i64 %927, 0
  br i1 %937, label %955, label %938

938:                                              ; preds = %936
  %939 = load ptr, ptr @CROSSING, align 8, !tbaa !7
  br label %940

940:                                              ; preds = %940, %938
  %941 = phi ptr [ %949, %940 ], [ %939, %938 ]
  %942 = phi i64 [ %951, %940 ], [ %927, %938 ]
  %943 = load ptr, ptr @VCG, align 8, !tbaa !7
  %944 = load ptr, ptr @HCG, align 8, !tbaa !7
  %945 = load ptr, ptr @netsAssign, align 8, !tbaa !7
  call fastcc void @Select(ptr noundef %943, ptr noundef %944, ptr noundef %945, ptr noundef nonnull %7, ptr noundef %941) #15
  %946 = load ptr, ptr @VCG, align 8, !tbaa !7
  %947 = load ptr, ptr @netsAssign, align 8, !tbaa !7
  %948 = load i64, ptr %7, align 8, !tbaa !15
  tail call fastcc void @Assign(ptr noundef %946, ptr noundef %947, i64 noundef %948) #15
  %949 = load ptr, ptr @CROSSING, align 8, !tbaa !7
  %950 = getelementptr inbounds i64, ptr %949, i64 %948
  store i64 0, ptr %950, align 8, !tbaa !15
  %951 = add i64 %942, -1
  %952 = icmp eq i64 %951, 0
  br i1 %952, label %953, label %940, !llvm.loop !66

953:                                              ; preds = %940
  %954 = load i64, ptr @channelColumns, align 8, !tbaa !15
  br label %955

955:                                              ; preds = %953, %936, %932
  %956 = phi i64 [ %885, %932 ], [ %885, %936 ], [ %954, %953 ]
  %957 = phi i64 [ %927, %932 ], [ 0, %936 ], [ 0, %953 ]
  %958 = add i64 %886, 1
  %959 = icmp ugt i64 %958, %956
  br i1 %959, label %960, label %884, !llvm.loop !67

960:                                              ; preds = %955, %879
  %961 = phi i64 [ %882, %879 ], [ %956, %955 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #17
  %962 = add nuw nsw i64 %961, 1
  %963 = load i64, ptr @channelTracks, align 8, !tbaa !15
  %964 = add i64 %963, 3
  %965 = mul i64 %964, %962
  %966 = tail call noalias ptr @malloc(i64 noundef %965) #19
  store ptr %966, ptr @horzPlane, align 8, !tbaa !7
  %967 = tail call noalias ptr @malloc(i64 noundef %965) #19
  store ptr %967, ptr @vertPlane, align 8, !tbaa !7
  %968 = tail call noalias ptr @malloc(i64 noundef %965) #19
  store ptr %968, ptr @viaPlane, align 8, !tbaa !7
  %969 = tail call noalias ptr @malloc(i64 noundef %962) #19
  store ptr %969, ptr @mazeRoute, align 8, !tbaa !7
  %970 = insertelement <4 x ptr> poison, ptr %967, i64 0
  %971 = insertelement <4 x ptr> %970, ptr %966, i64 1
  %972 = insertelement <4 x ptr> %971, ptr %968, i64 2
  %973 = insertelement <4 x ptr> %972, ptr %969, i64 3
  %974 = icmp eq <4 x ptr> %973, zeroinitializer
  %975 = bitcast <4 x i1> %974 to i4
  %976 = icmp eq i4 %975, 0
  br i1 %976, label %980, label %977

977:                                              ; preds = %960
  %978 = load ptr, ptr @stderr, align 8, !tbaa !7
  %979 = tail call i64 @fwrite(ptr nonnull @.str.27, i64 41, i64 1, ptr %978) #20
  tail call void @exit(i32 noundef 1) #16
  unreachable

980:                                              ; preds = %960
  store i64 %963, ptr @channelTracksCopy, align 8, !tbaa !15
  %981 = load i64, ptr @channelNets, align 8, !tbaa !15
  %982 = icmp eq i64 %981, 0
  br i1 %982, label %995, label %983

983:                                              ; preds = %980
  %984 = load ptr, ptr @netsAssign, align 8, !tbaa !7
  %985 = load ptr, ptr @netsAssignCopy, align 8, !tbaa !7
  %986 = add i64 %981, 1
  %987 = call i64 @llvm.umax.i64(i64 %986, i64 2)
  br label %988

988:                                              ; preds = %988, %983
  %989 = phi i64 [ 1, %983 ], [ %993, %988 ]
  %990 = getelementptr inbounds i64, ptr %984, i64 %989
  %991 = load i64, ptr %990, align 8, !tbaa !15
  %992 = getelementptr inbounds i64, ptr %985, i64 %989
  store i64 %991, ptr %992, align 8, !tbaa !15
  %993 = add nuw i64 %989, 1
  %994 = icmp eq i64 %993, %987
  br i1 %994, label %995, label %988, !llvm.loop !68

995:                                              ; preds = %988, %980
  br label %996

996:                                              ; preds = %1532, %995
  %997 = phi i64 [ %1506, %1532 ], [ %981, %995 ]
  %998 = phi i64 [ %1505, %1532 ], [ 0, %995 ]
  %999 = load ptr, ptr @horzPlane, align 8, !tbaa !7
  %1000 = load i64, ptr @channelColumns, align 8, !tbaa !15
  %1001 = load i64, ptr @channelTracks, align 8, !tbaa !15
  %1002 = add i64 %1001, 2
  %1003 = shl nuw i64 %1000, 32
  %1004 = add i64 %1003, 4294967296
  %1005 = mul i64 %1004, %1002
  %1006 = ashr exact i64 %1005, 32
  tail call void @llvm.memset.p0.i64(ptr align 1 %999, i8 0, i64 %1006, i1 false)
  %1007 = load ptr, ptr @vertPlane, align 8, !tbaa !7
  tail call void @llvm.memset.p0.i64(ptr align 1 %1007, i8 0, i64 %1006, i1 false)
  %1008 = load ptr, ptr @viaPlane, align 8, !tbaa !7
  tail call void @llvm.memset.p0.i64(ptr align 1 %1008, i8 0, i64 %1006, i1 false)
  %1009 = load ptr, ptr @mazeRoute, align 8, !tbaa !7
  %1010 = ashr exact i64 %1004, 32
  tail call void @llvm.memset.p0.i64(ptr align 1 %1009, i8 0, i64 %1010, i1 false)
  %1011 = icmp eq i64 %997, 0
  br i1 %1011, label %1016, label %1012

1012:                                             ; preds = %996
  %1013 = load ptr, ptr @FIRST, align 8, !tbaa !7
  %1014 = load ptr, ptr @LAST, align 8, !tbaa !7
  %1015 = load ptr, ptr @netsAssign, align 8
  br label %1025

1016:                                             ; preds = %1035, %996
  %1017 = icmp eq i64 %1000, 0
  br i1 %1017, label %1556, label %1018

1018:                                             ; preds = %1016
  %1019 = load ptr, ptr @BOT, align 8, !tbaa !7
  %1020 = load ptr, ptr @TOP, align 8, !tbaa !7
  %1021 = load ptr, ptr @netsAssign, align 8
  %1022 = add i64 %1001, 1
  %1023 = load ptr, ptr @FIRST, align 8
  %1024 = load ptr, ptr @LAST, align 8
  br label %1038

1025:                                             ; preds = %1035, %1012
  %1026 = phi i64 [ %1036, %1035 ], [ 1, %1012 ]
  %1027 = getelementptr inbounds i64, ptr %1013, i64 %1026
  %1028 = load i64, ptr %1027, align 8, !tbaa !15
  %1029 = getelementptr inbounds i64, ptr %1014, i64 %1026
  %1030 = load i64, ptr %1029, align 8, !tbaa !15
  %1031 = icmp eq i64 %1028, %1030
  br i1 %1031, label %1035, label %1032

1032:                                             ; preds = %1025
  %1033 = getelementptr inbounds i64, ptr %1015, i64 %1026
  %1034 = load i64, ptr %1033, align 8, !tbaa !15
  tail call fastcc void @DrawSegment(ptr noundef %999, i64 noundef %1028, i64 noundef %1034, i64 noundef %1030, i64 noundef %1034) #15
  br label %1035

1035:                                             ; preds = %1032, %1025
  %1036 = add i64 %1026, 1
  %1037 = icmp ugt i64 %1036, %997
  br i1 %1037, label %1016, label %1025, !llvm.loop !69

1038:                                             ; preds = %1107, %1018
  %1039 = phi i32 [ %1108, %1107 ], [ 0, %1018 ]
  %1040 = phi i64 [ %1109, %1107 ], [ 1, %1018 ]
  %1041 = getelementptr inbounds i64, ptr %1019, i64 %1040
  %1042 = load i64, ptr %1041, align 8, !tbaa !15
  %1043 = icmp eq i64 %1042, 0
  %1044 = getelementptr inbounds i64, ptr %1020, i64 %1040
  %1045 = load i64, ptr %1044, align 8, !tbaa !15
  %1046 = icmp eq i64 %1045, 0
  br i1 %1043, label %1047, label %1057

1047:                                             ; preds = %1038
  br i1 %1046, label %1107, label %1048

1048:                                             ; preds = %1047
  %1049 = getelementptr inbounds i64, ptr %1021, i64 %1045
  %1050 = load i64, ptr %1049, align 8, !tbaa !15
  tail call fastcc void @DrawSegment(ptr noundef %1007, i64 noundef %1040, i64 noundef 0, i64 noundef %1040, i64 noundef %1050) #15
  %1051 = load i64, ptr %1044, align 8, !tbaa !15
  %1052 = getelementptr inbounds i64, ptr %1021, i64 %1051
  %1053 = load i64, ptr %1052, align 8, !tbaa !15
  %1054 = mul i64 %1053, %1000
  %1055 = add i64 %1054, %1040
  %1056 = getelementptr inbounds i8, ptr %1008, i64 %1055
  store i8 1, ptr %1056, align 1, !tbaa !70
  br label %1107

1057:                                             ; preds = %1038
  br i1 %1046, label %1058, label %1067

1058:                                             ; preds = %1057
  %1059 = getelementptr inbounds i64, ptr %1021, i64 %1042
  %1060 = load i64, ptr %1059, align 8, !tbaa !15
  tail call fastcc void @DrawSegment(ptr noundef %1007, i64 noundef %1040, i64 noundef %1060, i64 noundef %1040, i64 noundef %1022) #15
  %1061 = load i64, ptr %1041, align 8, !tbaa !15
  %1062 = getelementptr inbounds i64, ptr %1021, i64 %1061
  %1063 = load i64, ptr %1062, align 8, !tbaa !15
  %1064 = mul i64 %1063, %1000
  %1065 = add i64 %1064, %1040
  %1066 = getelementptr inbounds i8, ptr %1008, i64 %1065
  store i8 1, ptr %1066, align 1, !tbaa !70
  br label %1107

1067:                                             ; preds = %1057
  %1068 = icmp eq i64 %1045, %1042
  br i1 %1068, label %1069, label %1082

1069:                                             ; preds = %1067
  %1070 = getelementptr inbounds i64, ptr %1023, i64 %1042
  %1071 = load i64, ptr %1070, align 8, !tbaa !15
  %1072 = getelementptr inbounds i64, ptr %1024, i64 %1042
  %1073 = load i64, ptr %1072, align 8, !tbaa !15
  %1074 = icmp eq i64 %1071, %1073
  tail call fastcc void @DrawSegment(ptr noundef %1007, i64 noundef %1040, i64 noundef 0, i64 noundef %1040, i64 noundef %1022) #15
  br i1 %1074, label %1107, label %1075

1075:                                             ; preds = %1069
  %1076 = load i64, ptr %1041, align 8, !tbaa !15
  %1077 = getelementptr inbounds i64, ptr %1021, i64 %1076
  %1078 = load i64, ptr %1077, align 8, !tbaa !15
  %1079 = mul i64 %1078, %1000
  %1080 = add i64 %1079, %1040
  %1081 = getelementptr inbounds i8, ptr %1008, i64 %1080
  store i8 1, ptr %1081, align 1, !tbaa !70
  br label %1107

1082:                                             ; preds = %1067
  %1083 = getelementptr inbounds i64, ptr %1021, i64 %1045
  %1084 = load i64, ptr %1083, align 8, !tbaa !15
  %1085 = getelementptr inbounds i64, ptr %1021, i64 %1042
  %1086 = load i64, ptr %1085, align 8, !tbaa !15
  %1087 = icmp ult i64 %1084, %1086
  br i1 %1087, label %1088, label %1104

1088:                                             ; preds = %1082
  tail call fastcc void @DrawSegment(ptr noundef %1007, i64 noundef %1040, i64 noundef 0, i64 noundef %1040, i64 noundef %1084) #15
  %1089 = load i64, ptr %1044, align 8, !tbaa !15
  %1090 = getelementptr inbounds i64, ptr %1021, i64 %1089
  %1091 = load i64, ptr %1090, align 8, !tbaa !15
  %1092 = mul i64 %1091, %1000
  %1093 = add i64 %1092, %1040
  %1094 = getelementptr inbounds i8, ptr %1008, i64 %1093
  store i8 1, ptr %1094, align 1, !tbaa !70
  %1095 = load i64, ptr %1041, align 8, !tbaa !15
  %1096 = getelementptr inbounds i64, ptr %1021, i64 %1095
  %1097 = load i64, ptr %1096, align 8, !tbaa !15
  tail call fastcc void @DrawSegment(ptr noundef %1007, i64 noundef %1040, i64 noundef %1097, i64 noundef %1040, i64 noundef %1022) #15
  %1098 = load i64, ptr %1041, align 8, !tbaa !15
  %1099 = getelementptr inbounds i64, ptr %1021, i64 %1098
  %1100 = load i64, ptr %1099, align 8, !tbaa !15
  %1101 = mul i64 %1100, %1000
  %1102 = add i64 %1101, %1040
  %1103 = getelementptr inbounds i8, ptr %1008, i64 %1102
  store i8 1, ptr %1103, align 1, !tbaa !70
  br label %1107

1104:                                             ; preds = %1082
  %1105 = getelementptr inbounds i8, ptr %1009, i64 %1040
  store i8 1, ptr %1105, align 1, !tbaa !70
  %1106 = add nsw i32 %1039, 1
  br label %1107

1107:                                             ; preds = %1104, %1088, %1075, %1069, %1058, %1048, %1047
  %1108 = phi i32 [ %1039, %1047 ], [ %1039, %1048 ], [ %1039, %1058 ], [ %1039, %1075 ], [ %1039, %1088 ], [ %1106, %1104 ], [ %1039, %1069 ]
  %1109 = add i64 %1040, 1
  %1110 = icmp ugt i64 %1109, %1000
  br i1 %1110, label %1111, label %1038, !llvm.loop !71

1111:                                             ; preds = %1107
  %.lcssa34 = phi i32 [ %1108, %1107 ]
  %1112 = icmp eq i32 %.lcssa34, 0
  br i1 %1112, label %1556, label %1113

1113:                                             ; preds = %1111
  %1114 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.23, i32 noundef %.lcssa34) #15
  %1115 = load i64, ptr @channelColumns, align 8, !tbaa !15
  %1116 = icmp eq i64 %1115, 0
  br i1 %1116, label %1556, label %1117

1117:                                             ; preds = %1212, %1113
  %1118 = phi i64 [ %1215, %1212 ], [ %1115, %1113 ]
  %1119 = phi i64 [ %1214, %1212 ], [ 1, %1113 ]
  %1120 = phi i32 [ %1213, %1212 ], [ 0, %1113 ]
  %1121 = load ptr, ptr @mazeRoute, align 8, !tbaa !7
  %1122 = getelementptr inbounds i8, ptr %1121, i64 %1119
  %1123 = load i8, ptr %1122, align 1, !tbaa !70
  %1124 = icmp eq i8 %1123, 0
  br i1 %1124, label %1212, label %1125

1125:                                             ; preds = %1117
  %1126 = load ptr, ptr @netsAssign, align 8, !tbaa !7
  %1127 = load ptr, ptr @TOP, align 8, !tbaa !7
  %1128 = getelementptr inbounds i64, ptr %1127, i64 %1119
  %1129 = load i64, ptr %1128, align 8, !tbaa !15
  %1130 = getelementptr inbounds i64, ptr %1126, i64 %1129
  %1131 = load i64, ptr %1130, align 8, !tbaa !15
  %1132 = load ptr, ptr @BOT, align 8, !tbaa !7
  %1133 = getelementptr inbounds i64, ptr %1132, i64 %1119
  %1134 = load i64, ptr %1133, align 8, !tbaa !15
  %1135 = getelementptr inbounds i64, ptr %1126, i64 %1134
  %1136 = load i64, ptr %1135, align 8, !tbaa !15
  %1137 = icmp ugt i64 %1119, 1
  %1138 = icmp ugt i64 %1136, 1
  %1139 = select i1 %1137, i1 %1138, i1 false
  br i1 %1139, label %1140, label %1156

1140:                                             ; preds = %1125
  %1141 = load i64, ptr @channelTracks, align 8, !tbaa !15
  %1142 = add i64 %1141, 1
  %1143 = tail call fastcc i32 @Maze1Mech(i64 noundef %1119, i64 noundef %1142, i64 noundef %1136, i64 noundef 0, i64 noundef %1131, i32 noundef -1, i32 noundef -1) #15, !range !72
  %1144 = icmp eq i32 %1143, 0
  br i1 %1144, label %1145, label %1147

1145:                                             ; preds = %1140
  %1146 = load i64, ptr @channelColumns, align 8, !tbaa !15
  br label %1156

1147:                                             ; preds = %1140
  %1148 = load ptr, ptr @mazeRoute, align 8, !tbaa !7
  %1149 = getelementptr inbounds i8, ptr %1148, i64 %1119
  store i8 0, ptr %1149, align 1, !tbaa !70
  %1150 = load ptr, ptr @TOP, align 8, !tbaa !7
  %1151 = getelementptr inbounds i64, ptr %1150, i64 %1119
  %1152 = load i64, ptr %1151, align 8, !tbaa !15
  tail call fastcc void @CleanNet(i64 noundef %1152) #15
  %1153 = load ptr, ptr @BOT, align 8, !tbaa !7
  %1154 = getelementptr inbounds i64, ptr %1153, i64 %1119
  %1155 = load i64, ptr %1154, align 8, !tbaa !15
  tail call fastcc void @CleanNet(i64 noundef %1155) #15
  br label %1212

1156:                                             ; preds = %1145, %1125
  %1157 = phi i64 [ %1146, %1145 ], [ %1118, %1125 ]
  %1158 = icmp ult i64 %1119, %1157
  %1159 = select i1 %1158, i1 %1138, i1 false
  br i1 %1159, label %1160, label %1174

1160:                                             ; preds = %1156
  %1161 = load i64, ptr @channelTracks, align 8, !tbaa !15
  %1162 = add i64 %1161, 1
  %1163 = tail call fastcc i32 @Maze1Mech(i64 noundef %1119, i64 noundef %1162, i64 noundef %1136, i64 noundef 0, i64 noundef %1131, i32 noundef 1, i32 noundef -1) #15, !range !72
  %1164 = icmp eq i32 %1163, 0
  br i1 %1164, label %1174, label %1165

1165:                                             ; preds = %1160
  %1166 = load ptr, ptr @mazeRoute, align 8, !tbaa !7
  %1167 = getelementptr inbounds i8, ptr %1166, i64 %1119
  store i8 0, ptr %1167, align 1, !tbaa !70
  %1168 = load ptr, ptr @TOP, align 8, !tbaa !7
  %1169 = getelementptr inbounds i64, ptr %1168, i64 %1119
  %1170 = load i64, ptr %1169, align 8, !tbaa !15
  tail call fastcc void @CleanNet(i64 noundef %1170) #15
  %1171 = load ptr, ptr @BOT, align 8, !tbaa !7
  %1172 = getelementptr inbounds i64, ptr %1171, i64 %1119
  %1173 = load i64, ptr %1172, align 8, !tbaa !15
  tail call fastcc void @CleanNet(i64 noundef %1173) #15
  br label %1212

1174:                                             ; preds = %1160, %1156
  br i1 %1137, label %1175, label %1191

1175:                                             ; preds = %1174
  %1176 = load i64, ptr @channelTracks, align 8, !tbaa !15
  %1177 = icmp ult i64 %1131, %1176
  br i1 %1177, label %1178, label %1191

1178:                                             ; preds = %1175
  %1179 = add i64 %1176, 1
  %1180 = tail call fastcc i32 @Maze1Mech(i64 noundef %1119, i64 noundef 0, i64 noundef %1131, i64 noundef %1179, i64 noundef %1136, i32 noundef -1, i32 noundef 1) #15, !range !72
  %1181 = icmp eq i32 %1180, 0
  br i1 %1181, label %1191, label %1182

1182:                                             ; preds = %1178
  %1183 = load ptr, ptr @mazeRoute, align 8, !tbaa !7
  %1184 = getelementptr inbounds i8, ptr %1183, i64 %1119
  store i8 0, ptr %1184, align 1, !tbaa !70
  %1185 = load ptr, ptr @TOP, align 8, !tbaa !7
  %1186 = getelementptr inbounds i64, ptr %1185, i64 %1119
  %1187 = load i64, ptr %1186, align 8, !tbaa !15
  tail call fastcc void @CleanNet(i64 noundef %1187) #15
  %1188 = load ptr, ptr @BOT, align 8, !tbaa !7
  %1189 = getelementptr inbounds i64, ptr %1188, i64 %1119
  %1190 = load i64, ptr %1189, align 8, !tbaa !15
  tail call fastcc void @CleanNet(i64 noundef %1190) #15
  br label %1212

1191:                                             ; preds = %1178, %1175, %1174
  %1192 = load i64, ptr @channelColumns, align 8, !tbaa !15
  %1193 = icmp ult i64 %1119, %1192
  br i1 %1193, label %1194, label %1210

1194:                                             ; preds = %1191
  %1195 = load i64, ptr @channelTracks, align 8, !tbaa !15
  %1196 = icmp ult i64 %1131, %1195
  br i1 %1196, label %1197, label %1210

1197:                                             ; preds = %1194
  %1198 = add i64 %1195, 1
  %1199 = tail call fastcc i32 @Maze1Mech(i64 noundef %1119, i64 noundef 0, i64 noundef %1131, i64 noundef %1198, i64 noundef %1136, i32 noundef 1, i32 noundef 1) #15, !range !72
  %1200 = icmp eq i32 %1199, 0
  br i1 %1200, label %1210, label %1201

1201:                                             ; preds = %1197
  %1202 = load ptr, ptr @mazeRoute, align 8, !tbaa !7
  %1203 = getelementptr inbounds i8, ptr %1202, i64 %1119
  store i8 0, ptr %1203, align 1, !tbaa !70
  %1204 = load ptr, ptr @TOP, align 8, !tbaa !7
  %1205 = getelementptr inbounds i64, ptr %1204, i64 %1119
  %1206 = load i64, ptr %1205, align 8, !tbaa !15
  tail call fastcc void @CleanNet(i64 noundef %1206) #15
  %1207 = load ptr, ptr @BOT, align 8, !tbaa !7
  %1208 = getelementptr inbounds i64, ptr %1207, i64 %1119
  %1209 = load i64, ptr %1208, align 8, !tbaa !15
  tail call fastcc void @CleanNet(i64 noundef %1209) #15
  br label %1212

1210:                                             ; preds = %1197, %1194, %1191
  %1211 = add nsw i32 %1120, 1
  br label %1212

1212:                                             ; preds = %1210, %1201, %1182, %1165, %1147, %1117
  %1213 = phi i32 [ %1120, %1147 ], [ %1120, %1165 ], [ %1120, %1182 ], [ %1120, %1201 ], [ %1211, %1210 ], [ %1120, %1117 ]
  %1214 = add i64 %1119, 1
  %1215 = load i64, ptr @channelColumns, align 8, !tbaa !15
  %1216 = icmp ugt i64 %1214, %1215
  br i1 %1216, label %1217, label %1117, !llvm.loop !73

1217:                                             ; preds = %1212
  %.lcssa35 = phi i32 [ %1213, %1212 ]
  %1218 = icmp eq i32 %.lcssa35, 0
  br i1 %1218, label %1556, label %1219

1219:                                             ; preds = %1217
  %1220 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %.lcssa35) #15
  %1221 = load i64, ptr @channelColumns, align 8, !tbaa !15
  %1222 = icmp eq i64 %1221, 0
  br i1 %1222, label %1556, label %1223

1223:                                             ; preds = %1335, %1219
  %1224 = phi i64 [ %1338, %1335 ], [ %1221, %1219 ]
  %1225 = phi i64 [ %1337, %1335 ], [ 1, %1219 ]
  %1226 = phi i32 [ %1336, %1335 ], [ 0, %1219 ]
  %1227 = load ptr, ptr @mazeRoute, align 8, !tbaa !7
  %1228 = getelementptr inbounds i8, ptr %1227, i64 %1225
  %1229 = load i8, ptr %1228, align 1, !tbaa !70
  %1230 = icmp eq i8 %1229, 0
  br i1 %1230, label %1335, label %1231

1231:                                             ; preds = %1223
  %1232 = load ptr, ptr @netsAssign, align 8, !tbaa !7
  %1233 = load ptr, ptr @TOP, align 8, !tbaa !7
  %1234 = getelementptr inbounds i64, ptr %1233, i64 %1225
  %1235 = load i64, ptr %1234, align 8, !tbaa !15
  %1236 = getelementptr inbounds i64, ptr %1232, i64 %1235
  %1237 = load i64, ptr %1236, align 8, !tbaa !15
  %1238 = load ptr, ptr @BOT, align 8, !tbaa !7
  %1239 = getelementptr inbounds i64, ptr %1238, i64 %1225
  %1240 = load i64, ptr %1239, align 8, !tbaa !15
  %1241 = getelementptr inbounds i64, ptr %1232, i64 %1240
  %1242 = load i64, ptr %1241, align 8, !tbaa !15
  %1243 = icmp ugt i64 %1225, 1
  %1244 = icmp ugt i64 %1242, 1
  %1245 = select i1 %1243, i1 %1244, i1 false
  br i1 %1245, label %1246, label %1264

1246:                                             ; preds = %1231
  %1247 = load i64, ptr @channelTracks, align 8, !tbaa !15
  %1248 = add i64 %1247, 1
  %1249 = add i64 %1225, -1
  %1250 = add i64 %1242, -1
  %1251 = tail call fastcc i32 @Maze2Mech(i64 noundef %1235, i64 noundef %1225, i64 noundef %1248, i64 noundef %1242, i64 noundef 0, i64 noundef %1237, i64 noundef %1249, i64 noundef 1, i32 noundef -1, i64 noundef 1, i64 noundef %1250) #15, !range !72
  %1252 = icmp eq i32 %1251, 0
  br i1 %1252, label %1253, label %1255

1253:                                             ; preds = %1246
  %1254 = load i64, ptr @channelColumns, align 8, !tbaa !15
  br label %1264

1255:                                             ; preds = %1246
  %1256 = load ptr, ptr @mazeRoute, align 8, !tbaa !7
  %1257 = getelementptr inbounds i8, ptr %1256, i64 %1225
  store i8 0, ptr %1257, align 1, !tbaa !70
  %1258 = load ptr, ptr @TOP, align 8, !tbaa !7
  %1259 = getelementptr inbounds i64, ptr %1258, i64 %1225
  %1260 = load i64, ptr %1259, align 8, !tbaa !15
  tail call fastcc void @CleanNet(i64 noundef %1260) #15
  %1261 = load ptr, ptr @BOT, align 8, !tbaa !7
  %1262 = getelementptr inbounds i64, ptr %1261, i64 %1225
  %1263 = load i64, ptr %1262, align 8, !tbaa !15
  tail call fastcc void @CleanNet(i64 noundef %1263) #15
  br label %1335

1264:                                             ; preds = %1253, %1231
  %1265 = phi i64 [ %1254, %1253 ], [ %1224, %1231 ]
  %1266 = icmp ult i64 %1225, %1265
  %1267 = select i1 %1266, i1 %1244, i1 false
  br i1 %1267, label %1268, label %1287

1268:                                             ; preds = %1264
  %1269 = load ptr, ptr @TOP, align 8, !tbaa !7
  %1270 = getelementptr inbounds i64, ptr %1269, i64 %1225
  %1271 = load i64, ptr %1270, align 8, !tbaa !15
  %1272 = load i64, ptr @channelTracks, align 8, !tbaa !15
  %1273 = add i64 %1272, 1
  %1274 = add nuw nsw i64 %1225, 1
  %1275 = add i64 %1242, -1
  %1276 = tail call fastcc i32 @Maze2Mech(i64 noundef %1271, i64 noundef %1225, i64 noundef %1273, i64 noundef %1242, i64 noundef 0, i64 noundef %1237, i64 noundef %1274, i64 noundef %1265, i32 noundef 1, i64 noundef 1, i64 noundef %1275) #15, !range !72
  %1277 = icmp eq i32 %1276, 0
  br i1 %1277, label %1287, label %1278

1278:                                             ; preds = %1268
  %1279 = load ptr, ptr @mazeRoute, align 8, !tbaa !7
  %1280 = getelementptr inbounds i8, ptr %1279, i64 %1225
  store i8 0, ptr %1280, align 1, !tbaa !70
  %1281 = load ptr, ptr @TOP, align 8, !tbaa !7
  %1282 = getelementptr inbounds i64, ptr %1281, i64 %1225
  %1283 = load i64, ptr %1282, align 8, !tbaa !15
  tail call fastcc void @CleanNet(i64 noundef %1283) #15
  %1284 = load ptr, ptr @BOT, align 8, !tbaa !7
  %1285 = getelementptr inbounds i64, ptr %1284, i64 %1225
  %1286 = load i64, ptr %1285, align 8, !tbaa !15
  tail call fastcc void @CleanNet(i64 noundef %1286) #15
  br label %1335

1287:                                             ; preds = %1268, %1264
  br i1 %1243, label %1288, label %1309

1288:                                             ; preds = %1287
  %1289 = load i64, ptr @channelTracks, align 8, !tbaa !15
  %1290 = icmp ult i64 %1237, %1289
  br i1 %1290, label %1291, label %1309

1291:                                             ; preds = %1288
  %1292 = load ptr, ptr @BOT, align 8, !tbaa !7
  %1293 = getelementptr inbounds i64, ptr %1292, i64 %1225
  %1294 = load i64, ptr %1293, align 8, !tbaa !15
  %1295 = add i64 %1289, 1
  %1296 = add i64 %1225, -1
  %1297 = add nuw i64 %1237, 1
  %1298 = tail call fastcc i32 @Maze2Mech(i64 noundef %1294, i64 noundef %1225, i64 noundef 0, i64 noundef %1237, i64 noundef %1295, i64 noundef %1242, i64 noundef %1296, i64 noundef 1, i32 noundef -1, i64 noundef %1297, i64 noundef %1289) #15, !range !72
  %1299 = icmp eq i32 %1298, 0
  br i1 %1299, label %1309, label %1300

1300:                                             ; preds = %1291
  %1301 = load ptr, ptr @mazeRoute, align 8, !tbaa !7
  %1302 = getelementptr inbounds i8, ptr %1301, i64 %1225
  store i8 0, ptr %1302, align 1, !tbaa !70
  %1303 = load ptr, ptr @TOP, align 8, !tbaa !7
  %1304 = getelementptr inbounds i64, ptr %1303, i64 %1225
  %1305 = load i64, ptr %1304, align 8, !tbaa !15
  tail call fastcc void @CleanNet(i64 noundef %1305) #15
  %1306 = load ptr, ptr @BOT, align 8, !tbaa !7
  %1307 = getelementptr inbounds i64, ptr %1306, i64 %1225
  %1308 = load i64, ptr %1307, align 8, !tbaa !15
  tail call fastcc void @CleanNet(i64 noundef %1308) #15
  br label %1335

1309:                                             ; preds = %1291, %1288, %1287
  %1310 = load i64, ptr @channelColumns, align 8, !tbaa !15
  %1311 = icmp ult i64 %1225, %1310
  br i1 %1311, label %1312, label %1333

1312:                                             ; preds = %1309
  %1313 = load i64, ptr @channelTracks, align 8, !tbaa !15
  %1314 = icmp ult i64 %1237, %1313
  br i1 %1314, label %1315, label %1333

1315:                                             ; preds = %1312
  %1316 = load ptr, ptr @BOT, align 8, !tbaa !7
  %1317 = getelementptr inbounds i64, ptr %1316, i64 %1225
  %1318 = load i64, ptr %1317, align 8, !tbaa !15
  %1319 = add i64 %1313, 1
  %1320 = add nuw nsw i64 %1225, 1
  %1321 = add nuw i64 %1237, 1
  %1322 = tail call fastcc i32 @Maze2Mech(i64 noundef %1318, i64 noundef %1225, i64 noundef 0, i64 noundef %1237, i64 noundef %1319, i64 noundef %1242, i64 noundef %1320, i64 noundef %1310, i32 noundef 1, i64 noundef %1321, i64 noundef %1313) #15, !range !72
  %1323 = icmp eq i32 %1322, 0
  br i1 %1323, label %1333, label %1324

1324:                                             ; preds = %1315
  %1325 = load ptr, ptr @mazeRoute, align 8, !tbaa !7
  %1326 = getelementptr inbounds i8, ptr %1325, i64 %1225
  store i8 0, ptr %1326, align 1, !tbaa !70
  %1327 = load ptr, ptr @TOP, align 8, !tbaa !7
  %1328 = getelementptr inbounds i64, ptr %1327, i64 %1225
  %1329 = load i64, ptr %1328, align 8, !tbaa !15
  tail call fastcc void @CleanNet(i64 noundef %1329) #15
  %1330 = load ptr, ptr @BOT, align 8, !tbaa !7
  %1331 = getelementptr inbounds i64, ptr %1330, i64 %1225
  %1332 = load i64, ptr %1331, align 8, !tbaa !15
  tail call fastcc void @CleanNet(i64 noundef %1332) #15
  br label %1335

1333:                                             ; preds = %1315, %1312, %1309
  %1334 = add nsw i32 %1226, 1
  br label %1335

1335:                                             ; preds = %1333, %1324, %1300, %1278, %1255, %1223
  %1336 = phi i32 [ %1226, %1255 ], [ %1226, %1278 ], [ %1226, %1300 ], [ %1226, %1324 ], [ %1334, %1333 ], [ %1226, %1223 ]
  %1337 = add i64 %1225, 1
  %1338 = load i64, ptr @channelColumns, align 8, !tbaa !15
  %1339 = icmp ugt i64 %1337, %1338
  br i1 %1339, label %1340, label %1223, !llvm.loop !74

1340:                                             ; preds = %1335
  %.lcssa36 = phi i32 [ %1336, %1335 ]
  %1341 = icmp eq i32 %.lcssa36, 0
  br i1 %1341, label %1556, label %1342

1342:                                             ; preds = %1340
  %1343 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %.lcssa36) #15
  %1344 = load i64, ptr @channelColumns, align 8, !tbaa !15
  %1345 = icmp eq i64 %1344, 0
  br i1 %1345, label %1556, label %1346

1346:                                             ; preds = %1342
  %1347 = load ptr, ptr @mazeRoute, align 8, !tbaa !7
  %1348 = load ptr, ptr @vertPlane, align 8
  %1349 = load ptr, ptr @horzPlane, align 8
  %1350 = load ptr, ptr @viaPlane, align 8
  %1351 = load ptr, ptr @netsAssign, align 8
  %1352 = load ptr, ptr @TOP, align 8
  %1353 = load ptr, ptr @BOT, align 8
  %1354 = load i64, ptr @channelTracks, align 8
  %1355 = add i64 %1354, 1
  br label %1356

1356:                                             ; preds = %1492, %1346
  %1357 = phi i64 [ 1, %1346 ], [ %1494, %1492 ]
  %1358 = phi i32 [ 0, %1346 ], [ %1493, %1492 ]
  %1359 = getelementptr inbounds i8, ptr %1347, i64 %1357
  %1360 = load i8, ptr %1359, align 1, !tbaa !70
  %1361 = icmp eq i8 %1360, 0
  br i1 %1361, label %1492, label %1362

1362:                                             ; preds = %1356
  %1363 = getelementptr inbounds i64, ptr %1352, i64 %1357
  %1364 = load i64, ptr %1363, align 8, !tbaa !15
  %1365 = getelementptr inbounds i64, ptr %1351, i64 %1364
  %1366 = load i64, ptr %1365, align 8, !tbaa !15
  %1367 = getelementptr inbounds i64, ptr %1353, i64 %1357
  %1368 = load i64, ptr %1367, align 8, !tbaa !15
  %1369 = getelementptr inbounds i64, ptr %1351, i64 %1368
  %1370 = load i64, ptr %1369, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #17
  %1371 = add i64 %1366, -1
  %1372 = add i64 %1370, 1
  %1373 = icmp ult i64 %1372, %1371
  br i1 %1373, label %1374, label %1490

1374:                                             ; preds = %1362
  %1375 = add i64 %1366, 1
  %1376 = add i64 %1370, -1
  br label %1377

1377:                                             ; preds = %1468, %1374
  %1378 = phi i64 [ %1372, %1374 ], [ %1469, %1468 ]
  %1379 = phi i64 [ %1370, %1374 ], [ %1378, %1468 ]
  call fastcc void @FindFreeHorzSeg(i64 noundef %1357, i64 noundef %1378, ptr noundef nonnull %3, ptr noundef nonnull %4) #15
  %1380 = load i64, ptr %4, align 8, !tbaa !15
  %1381 = load i64, ptr %3, align 8, !tbaa !15
  %1382 = icmp ugt i64 %1380, %1381
  %1383 = add i64 %1379, 2
  %1384 = icmp ult i64 %1383, %1366
  %1385 = and i1 %1384, %1382
  br i1 %1385, label %1386, label %1468

1386:                                             ; preds = %1465, %1377
  %1387 = phi i64 [ %1466, %1465 ], [ %1383, %1377 ]
  call fastcc void @FindFreeHorzSeg(i64 noundef %1357, i64 noundef %1387, ptr noundef nonnull %5, ptr noundef nonnull %6) #15
  %1388 = load i64, ptr %6, align 8, !tbaa !15
  %1389 = load i64, ptr %5, align 8, !tbaa !15
  %1390 = icmp ugt i64 %1388, %1389
  br i1 %1390, label %1391, label %1465

1391:                                             ; preds = %1386
  %1392 = icmp eq i64 %1378, %1387
  br label %1393

1393:                                             ; preds = %1462, %1391
  %1394 = phi i64 [ %1381, %1391 ], [ %1463, %1462 ]
  %1395 = icmp eq i64 %1394, %1357
  %1396 = getelementptr inbounds i64, ptr %1352, i64 %1394
  %1397 = getelementptr inbounds i64, ptr %1353, i64 %1394
  br label %1398

1398:                                             ; preds = %1459, %1393
  %1399 = phi i64 [ %1389, %1393 ], [ %1460, %1459 ]
  %1400 = icmp eq i64 %1399, %1357
  %1401 = or i1 %1395, %1400
  %1402 = or i1 %1392, %1401
  %1403 = icmp eq i64 %1394, %1399
  %1404 = or i1 %1403, %1402
  br i1 %1404, label %1459, label %1405

1405:                                             ; preds = %1398
  %1406 = tail call fastcc i32 @SegmentFree(ptr noundef %1348, i64 noundef %1357, i64 noundef 0, i64 noundef %1357, i64 noundef %1378) #15, !range !72
  %1407 = icmp eq i32 %1406, 0
  br i1 %1407, label %1459, label %1408

1408:                                             ; preds = %1405
  %1409 = tail call fastcc i32 @SegmentFree(ptr noundef %1349, i64 noundef %1357, i64 noundef %1378, i64 noundef %1394, i64 noundef %1378) #15, !range !72
  %1410 = icmp eq i32 %1409, 0
  br i1 %1410, label %1459, label %1411

1411:                                             ; preds = %1408
  %1412 = tail call fastcc i32 @SegmentFree(ptr noundef %1348, i64 noundef %1394, i64 noundef %1378, i64 noundef %1394, i64 noundef %1375) #15, !range !72
  %1413 = icmp eq i32 %1412, 0
  br i1 %1413, label %1459, label %1414

1414:                                             ; preds = %1411
  %1415 = load i64, ptr %1396, align 8, !tbaa !15
  %1416 = icmp eq i64 %1415, 0
  br i1 %1416, label %1428, label %1417

1417:                                             ; preds = %1414
  %1418 = load i64, ptr %1397, align 8, !tbaa !15
  %1419 = icmp eq i64 %1418, 0
  %1420 = icmp eq i64 %1415, %1418
  %1421 = or i1 %1419, %1420
  br i1 %1421, label %1428, label %1422

1422:                                             ; preds = %1417
  %1423 = getelementptr inbounds i64, ptr %1351, i64 %1415
  %1424 = load i64, ptr %1423, align 8, !tbaa !15
  %1425 = getelementptr inbounds i64, ptr %1351, i64 %1418
  %1426 = load i64, ptr %1425, align 8, !tbaa !15
  %1427 = icmp ugt i64 %1424, %1426
  br i1 %1427, label %1459, label %1428

1428:                                             ; preds = %1422, %1417, %1414
  %1429 = tail call fastcc i32 @ExtendOK(i64 noundef %1364, ptr noundef %1349, i64 noundef %1394, i64 noundef %1366, i64 noundef %1357, i64 noundef %1366) #15, !range !72
  %1430 = icmp eq i32 %1429, 0
  br i1 %1430, label %1459, label %1431

1431:                                             ; preds = %1428
  %1432 = tail call fastcc i32 @SegmentFree(ptr noundef %1348, i64 noundef %1357, i64 noundef %1355, i64 noundef %1357, i64 noundef %1387) #15, !range !72
  %1433 = icmp eq i32 %1432, 0
  br i1 %1433, label %1459, label %1434

1434:                                             ; preds = %1431
  %1435 = tail call fastcc i32 @SegmentFree(ptr noundef %1349, i64 noundef %1357, i64 noundef %1387, i64 noundef %1399, i64 noundef %1387) #15, !range !72
  %1436 = icmp eq i32 %1435, 0
  br i1 %1436, label %1459, label %1437

1437:                                             ; preds = %1434
  %1438 = tail call fastcc i32 @SegmentFree(ptr noundef %1348, i64 noundef %1399, i64 noundef %1387, i64 noundef %1399, i64 noundef %1376) #15, !range !72
  %1439 = icmp eq i32 %1438, 0
  br i1 %1439, label %1459, label %1440

1440:                                             ; preds = %1437
  %1441 = getelementptr inbounds i64, ptr %1352, i64 %1399
  %1442 = load i64, ptr %1441, align 8, !tbaa !15
  %1443 = icmp eq i64 %1442, 0
  br i1 %1443, label %1456, label %1444

1444:                                             ; preds = %1440
  %1445 = getelementptr inbounds i64, ptr %1353, i64 %1399
  %1446 = load i64, ptr %1445, align 8, !tbaa !15
  %1447 = icmp eq i64 %1446, 0
  %1448 = icmp eq i64 %1442, %1446
  %1449 = or i1 %1447, %1448
  br i1 %1449, label %1456, label %1450

1450:                                             ; preds = %1444
  %1451 = getelementptr inbounds i64, ptr %1351, i64 %1442
  %1452 = load i64, ptr %1451, align 8, !tbaa !15
  %1453 = getelementptr inbounds i64, ptr %1351, i64 %1446
  %1454 = load i64, ptr %1453, align 8, !tbaa !15
  %1455 = icmp ugt i64 %1452, %1454
  br i1 %1455, label %1459, label %1456

1456:                                             ; preds = %1450, %1444, %1440
  %1457 = tail call fastcc i32 @ExtendOK(i64 noundef %1368, ptr noundef %1349, i64 noundef %1399, i64 noundef %1370, i64 noundef %1357, i64 noundef %1370) #15, !range !72
  %1458 = icmp eq i32 %1457, 0
  br i1 %1458, label %1459, label %1471

1459:                                             ; preds = %1456, %1450, %1437, %1434, %1431, %1428, %1422, %1411, %1408, %1405, %1398
  %1460 = add i64 %1399, 1
  %1461 = icmp ugt i64 %1460, %1388
  br i1 %1461, label %1462, label %1398, !llvm.loop !75

1462:                                             ; preds = %1459
  %1463 = add i64 %1394, 1
  %1464 = icmp ugt i64 %1463, %1380
  br i1 %1464, label %1465, label %1393, !llvm.loop !76

1465:                                             ; preds = %1462, %1386
  %1466 = add nuw i64 %1387, 1
  %1467 = icmp ult i64 %1466, %1366
  br i1 %1467, label %1386, label %1468, !llvm.loop !77

1468:                                             ; preds = %1465, %1377
  %1469 = add nuw i64 %1378, 1
  %1470 = icmp eq i64 %1469, %1371
  br i1 %1470, label %1490, label %1377, !llvm.loop !78

1471:                                             ; preds = %1456
  %.lcssa41 = phi i64 [ %1378, %1456 ]
  %.lcssa40 = phi i64 [ %1387, %1456 ]
  %.lcssa39 = phi i64 [ %1394, %1456 ]
  %.lcssa37 = phi i64 [ %1399, %1456 ]
  tail call fastcc void @DrawSegment(ptr noundef %1348, i64 noundef %1357, i64 noundef 0, i64 noundef %1357, i64 noundef %.lcssa41) #15
  %1472 = mul i64 %.lcssa41, %1344
  %1473 = add i64 %1472, %1357
  %1474 = getelementptr inbounds i8, ptr %1350, i64 %1473
  store i8 1, ptr %1474, align 1, !tbaa !70
  tail call fastcc void @DrawSegment(ptr noundef %1349, i64 noundef %1357, i64 noundef %.lcssa41, i64 noundef %.lcssa39, i64 noundef %.lcssa41) #15
  %1475 = add i64 %.lcssa39, %1472
  %1476 = getelementptr inbounds i8, ptr %1350, i64 %1475
  store i8 1, ptr %1476, align 1, !tbaa !70
  tail call fastcc void @DrawSegment(ptr noundef %1348, i64 noundef %.lcssa39, i64 noundef %.lcssa41, i64 noundef %.lcssa39, i64 noundef %1366) #15
  %1477 = mul i64 %1366, %1344
  %1478 = add i64 %.lcssa39, %1477
  %1479 = getelementptr inbounds i8, ptr %1350, i64 %1478
  store i8 1, ptr %1479, align 1, !tbaa !70
  tail call fastcc void @DrawSegment(ptr noundef %1349, i64 noundef %.lcssa39, i64 noundef %1366, i64 noundef %1357, i64 noundef %1366) #15
  tail call fastcc void @DrawSegment(ptr noundef %1348, i64 noundef %1357, i64 noundef %1355, i64 noundef %1357, i64 noundef %.lcssa40) #15
  %1480 = mul i64 %.lcssa40, %1344
  %1481 = add i64 %1480, %1357
  %1482 = getelementptr inbounds i8, ptr %1350, i64 %1481
  store i8 1, ptr %1482, align 1, !tbaa !70
  tail call fastcc void @DrawSegment(ptr noundef %1349, i64 noundef %1357, i64 noundef %.lcssa40, i64 noundef %.lcssa37, i64 noundef %.lcssa40) #15
  %1483 = add i64 %.lcssa37, %1480
  %1484 = getelementptr inbounds i8, ptr %1350, i64 %1483
  store i8 1, ptr %1484, align 1, !tbaa !70
  tail call fastcc void @DrawSegment(ptr noundef %1348, i64 noundef %.lcssa37, i64 noundef %.lcssa40, i64 noundef %.lcssa37, i64 noundef %1370) #15
  %1485 = mul i64 %1370, %1344
  %1486 = add i64 %.lcssa37, %1485
  %1487 = getelementptr inbounds i8, ptr %1350, i64 %1486
  store i8 1, ptr %1487, align 1, !tbaa !70
  tail call fastcc void @DrawSegment(ptr noundef %1349, i64 noundef %.lcssa37, i64 noundef %1370, i64 noundef %1357, i64 noundef %1370) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #17
  store i8 0, ptr %1359, align 1, !tbaa !70
  %1488 = load i64, ptr %1363, align 8, !tbaa !15
  tail call fastcc void @CleanNet(i64 noundef %1488) #15
  %1489 = load i64, ptr %1367, align 8, !tbaa !15
  tail call fastcc void @CleanNet(i64 noundef %1489) #15
  br label %1492

1490:                                             ; preds = %1468, %1362
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #17
  %1491 = add nsw i32 %1358, 1
  br label %1492

1492:                                             ; preds = %1490, %1471, %1356
  %1493 = phi i32 [ %1358, %1471 ], [ %1491, %1490 ], [ %1358, %1356 ]
  %1494 = add i64 %1357, 1
  %1495 = icmp ugt i64 %1494, %1344
  br i1 %1495, label %1496, label %1356, !llvm.loop !79

1496:                                             ; preds = %1492
  %.lcssa42 = phi i32 [ %1493, %1492 ]
  %1497 = icmp eq i32 %.lcssa42, 0
  br i1 %1497, label %1556, label %1498

1498:                                             ; preds = %1496
  %1499 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3.24, i32 noundef %.lcssa42) #15
  %1500 = icmp eq i64 %998, 0
  br i1 %1500, label %1501, label %1504

1501:                                             ; preds = %1498
  %1502 = load i64, ptr @channelTracks, align 8, !tbaa !15
  %1503 = add i64 %1502, 1
  store i64 %1503, ptr @channelTracks, align 8, !tbaa !15
  br label %1504

1504:                                             ; preds = %1501, %1498
  %1505 = add i64 %998, 1
  %1506 = load i64, ptr @channelNets, align 8
  %1507 = icmp eq i64 %1506, 0
  br i1 %1507, label %1532, label %1508

1508:                                             ; preds = %1504
  %1509 = load ptr, ptr @netsAssignCopy, align 8, !tbaa !7
  %1510 = load ptr, ptr @netsAssign, align 8, !tbaa !7
  %1511 = add i64 %1506, 1
  %1512 = call i64 @llvm.umax.i64(i64 %1511, i64 2)
  br label %1513

1513:                                             ; preds = %1513, %1508
  %1514 = phi i64 [ 1, %1508 ], [ %1518, %1513 ]
  %1515 = getelementptr inbounds i64, ptr %1509, i64 %1514
  %1516 = load i64, ptr %1515, align 8, !tbaa !15
  %1517 = getelementptr inbounds i64, ptr %1510, i64 %1514
  store i64 %1516, ptr %1517, align 8, !tbaa !15
  %1518 = add nuw i64 %1514, 1
  %1519 = icmp eq i64 %1518, %1512
  br i1 %1519, label %1520, label %1513, !llvm.loop !80

1520:                                             ; preds = %1513
  %1521 = icmp eq i64 %1505, 0
  br i1 %1521, label %1532, label %1522

1522:                                             ; preds = %1529, %1520
  %1523 = phi i64 [ %1530, %1529 ], [ 1, %1520 ]
  %1524 = getelementptr inbounds i64, ptr %1510, i64 %1523
  %1525 = load i64, ptr %1524, align 8, !tbaa !15
  %1526 = icmp ult i64 %1525, %1505
  br i1 %1526, label %1529, label %1527

1527:                                             ; preds = %1522
  %1528 = add i64 %1525, 1
  store i64 %1528, ptr %1524, align 8, !tbaa !15
  br label %1529

1529:                                             ; preds = %1527, %1522
  %1530 = add nuw i64 %1523, 1
  %1531 = icmp eq i64 %1530, %1512
  br i1 %1531, label %1532, label %1522, !llvm.loop !81

1532:                                             ; preds = %1529, %1520, %1504
  %1533 = load i64, ptr @channelTracksCopy, align 8
  %1534 = add i64 %1533, 1
  %1535 = icmp ugt i64 %1505, %1534
  br i1 %1535, label %1536, label %996, !llvm.loop !82

1536:                                             ; preds = %1532
  %.lcssa44 = phi i64 [ %1506, %1532 ]
  %.lcssa43 = phi i1 [ %1507, %1532 ]
  %1537 = load ptr, ptr @horzPlane, align 8, !tbaa !7
  tail call void @free(ptr noundef %1537) #18
  %1538 = load ptr, ptr @vertPlane, align 8, !tbaa !7
  tail call void @free(ptr noundef %1538) #18
  %1539 = load ptr, ptr @viaPlane, align 8, !tbaa !7
  tail call void @free(ptr noundef %1539) #18
  %1540 = load ptr, ptr @mazeRoute, align 8, !tbaa !7
  tail call void @free(ptr noundef %1540) #18
  %1541 = load ptr, ptr @costMatrix, align 8, !tbaa !7
  br i1 %.lcssa43, label %1548, label %1542

1542:                                             ; preds = %1542, %1536
  %1543 = phi i64 [ %1546, %1542 ], [ 1, %1536 ]
  %1544 = getelementptr inbounds ptr, ptr %1541, i64 %1543
  %1545 = load ptr, ptr %1544, align 8, !tbaa !7
  tail call void @free(ptr noundef %1545) #18
  %1546 = add i64 %1543, 1
  %1547 = icmp ugt i64 %1546, %.lcssa44
  br i1 %1547, label %1548, label %1542, !llvm.loop !83

1548:                                             ; preds = %1542, %1536
  tail call void @free(ptr noundef %1541) #18
  %1549 = load ptr, ptr @tracksNotPref, align 8, !tbaa !7
  tail call void @free(ptr noundef %1549) #18
  %1550 = load ptr, ptr @tracksTopNotPref, align 8, !tbaa !7
  tail call void @free(ptr noundef %1550) #18
  %1551 = load ptr, ptr @tracksBotNotPref, align 8, !tbaa !7
  tail call void @free(ptr noundef %1551) #18
  %1552 = load ptr, ptr @tracksNoHCV, align 8, !tbaa !7
  tail call void @free(ptr noundef %1552) #18
  %1553 = load ptr, ptr @tracksAssign, align 8, !tbaa !7
  tail call void @free(ptr noundef %1553) #18
  %1554 = load ptr, ptr @netsAssign, align 8, !tbaa !7
  tail call void @free(ptr noundef %1554) #18
  %1555 = load ptr, ptr @netsAssignCopy, align 8, !tbaa !7
  tail call void @free(ptr noundef %1555) #18
  br label %714, !llvm.loop !84

1556:                                             ; preds = %1496, %1342, %1340, %1219, %1217, %1113, %1111, %1016
  %1557 = tail call i32 @putchar(i32 10)
  %1558 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1.32) #15
  %1559 = load i64, ptr @channelColumns, align 8, !tbaa !15
  %1560 = icmp eq i64 %1559, 0
  br i1 %1560, label %1571, label %1561

1561:                                             ; preds = %1561, %1556
  %1562 = phi i64 [ %1568, %1561 ], [ 1, %1556 ]
  %1563 = load ptr, ptr @TOP, align 8, !tbaa !7
  %1564 = getelementptr inbounds i64, ptr %1563, i64 %1562
  %1565 = load i64, ptr %1564, align 8, !tbaa !15
  %1566 = udiv i64 %1565, 100
  %1567 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2.33, i64 noundef %1566) #15
  %1568 = add i64 %1562, 1
  %1569 = load i64, ptr @channelColumns, align 8, !tbaa !15
  %1570 = icmp ugt i64 %1568, %1569
  br i1 %1570, label %1571, label %1561, !llvm.loop !85

1571:                                             ; preds = %1561, %1556
  %1572 = tail call i32 @putchar(i32 10)
  %1573 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1.32) #15
  %1574 = load i64, ptr @channelColumns, align 8, !tbaa !15
  %1575 = icmp eq i64 %1574, 0
  br i1 %1575, label %1590, label %1576

1576:                                             ; preds = %1576, %1571
  %1577 = phi i64 [ %1587, %1576 ], [ 1, %1571 ]
  %1578 = load ptr, ptr @TOP, align 8, !tbaa !7
  %1579 = getelementptr inbounds i64, ptr %1578, i64 %1577
  %1580 = load i64, ptr %1579, align 8, !tbaa !15
  %1581 = freeze i64 %1580
  %1582 = urem i64 %1581, 100
  %1583 = trunc i64 %1582 to i8
  %1584 = udiv i8 %1583, 10
  %1585 = zext i8 %1584 to i64
  %1586 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2.33, i64 noundef %1585) #15
  %1587 = add i64 %1577, 1
  %1588 = load i64, ptr @channelColumns, align 8, !tbaa !15
  %1589 = icmp ugt i64 %1587, %1588
  br i1 %1589, label %1590, label %1576, !llvm.loop !86

1590:                                             ; preds = %1576, %1571
  %1591 = tail call i32 @putchar(i32 10)
  %1592 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1.32) #15
  %1593 = load i64, ptr @channelColumns, align 8, !tbaa !15
  %1594 = icmp eq i64 %1593, 0
  br i1 %1594, label %1605, label %1595

1595:                                             ; preds = %1595, %1590
  %1596 = phi i64 [ %1602, %1595 ], [ 1, %1590 ]
  %1597 = load ptr, ptr @TOP, align 8, !tbaa !7
  %1598 = getelementptr inbounds i64, ptr %1597, i64 %1596
  %1599 = load i64, ptr %1598, align 8, !tbaa !15
  %1600 = urem i64 %1599, 10
  %1601 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2.33, i64 noundef %1600) #15
  %1602 = add i64 %1596, 1
  %1603 = load i64, ptr @channelColumns, align 8, !tbaa !15
  %1604 = icmp ugt i64 %1602, %1603
  br i1 %1604, label %1605, label %1595, !llvm.loop !87

1605:                                             ; preds = %1595, %1590
  %1606 = tail call i32 @putchar(i32 10)
  %1607 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1.32) #15
  %1608 = load i64, ptr @channelColumns, align 8, !tbaa !15
  %1609 = icmp eq i64 %1608, 0
  br i1 %1609, label %1621, label %1610

1610:                                             ; preds = %1610, %1605
  %1611 = phi i64 [ %1618, %1610 ], [ 1, %1605 ]
  %1612 = load ptr, ptr @vertPlane, align 8, !tbaa !7
  %1613 = getelementptr inbounds i8, ptr %1612, i64 %1611
  %1614 = load i8, ptr %1613, align 1, !tbaa !70
  %1615 = icmp eq i8 %1614, 0
  %1616 = select i1 %1615, i32 32, i32 124
  %1617 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4.34, i32 noundef %1616) #15
  %1618 = add i64 %1611, 1
  %1619 = load i64, ptr @channelColumns, align 8, !tbaa !15
  %1620 = icmp ugt i64 %1618, %1619
  br i1 %1620, label %1621, label %1610, !llvm.loop !88

1621:                                             ; preds = %1610, %1605
  %1622 = tail call i32 @putchar(i32 10)
  %1623 = load i64, ptr @channelTracks, align 8, !tbaa !15
  %1624 = icmp eq i64 %1623, 0
  br i1 %1624, label %1737, label %1625

1625:                                             ; preds = %1732, %1621
  %1626 = phi i64 [ %1734, %1732 ], [ 1, %1621 ]
  %1627 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1.32) #15
  %1628 = load i64, ptr @channelColumns, align 8, !tbaa !15
  %1629 = icmp eq i64 %1628, 0
  br i1 %1629, label %1645, label %1630

1630:                                             ; preds = %1630, %1625
  %1631 = phi i64 [ %1643, %1630 ], [ %1628, %1625 ]
  %1632 = phi i64 [ %1642, %1630 ], [ 1, %1625 ]
  %1633 = load ptr, ptr @vertPlane, align 8, !tbaa !7
  %1634 = mul i64 %1631, %1626
  %1635 = add i64 %1634, %1632
  %1636 = getelementptr inbounds i8, ptr %1633, i64 %1635
  %1637 = load i8, ptr %1636, align 1, !tbaa !70
  %1638 = and i8 %1637, 4
  %1639 = icmp eq i8 %1638, 0
  %1640 = select i1 %1639, ptr @.str.6, ptr @.str.5
  %1641 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) %1640) #15
  %1642 = add i64 %1632, 1
  %1643 = load i64, ptr @channelColumns, align 8, !tbaa !15
  %1644 = icmp ugt i64 %1642, %1643
  br i1 %1644, label %1645, label %1630, !llvm.loop !89

1645:                                             ; preds = %1630, %1625
  %1646 = tail call i32 @putchar(i32 10)
  %1647 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i64 noundef %1626) #15
  %1648 = load i64, ptr @channelColumns, align 8, !tbaa !15
  %1649 = icmp eq i64 %1648, 0
  br i1 %1649, label %1712, label %1650

1650:                                             ; preds = %1689, %1645
  %1651 = phi i64 [ %1710, %1689 ], [ %1648, %1645 ]
  %1652 = phi i64 [ %1709, %1689 ], [ 1, %1645 ]
  %1653 = load ptr, ptr @horzPlane, align 8, !tbaa !7
  %1654 = mul i64 %1651, %1626
  %1655 = add i64 %1654, %1652
  %1656 = getelementptr inbounds i8, ptr %1653, i64 %1655
  %1657 = load i8, ptr %1656, align 1, !tbaa !70
  %1658 = and i8 %1657, 1
  %1659 = icmp eq i8 %1658, 0
  %1660 = load ptr, ptr @vertPlane, align 8, !tbaa !7
  %1661 = getelementptr inbounds i8, ptr %1660, i64 %1655
  %1662 = load i8, ptr %1661, align 1, !tbaa !70
  %1663 = and i8 %1662, 1
  %1664 = icmp eq i8 %1663, 0
  %1665 = select i1 %1664, i32 45, i32 61
  %1666 = select i1 %1664, i32 32, i32 94
  %1667 = select i1 %1659, i32 %1666, i32 %1665
  %1668 = tail call i32 @putchar(i32 %1667)
  %1669 = load ptr, ptr @viaPlane, align 8, !tbaa !7
  %1670 = load i64, ptr @channelColumns, align 8, !tbaa !15
  %1671 = mul i64 %1670, %1626
  %1672 = add i64 %1671, %1652
  %1673 = getelementptr inbounds i8, ptr %1669, i64 %1672
  %1674 = load i8, ptr %1673, align 1, !tbaa !70
  %1675 = icmp eq i8 %1674, 0
  br i1 %1675, label %1676, label %1689

1676:                                             ; preds = %1650
  %1677 = load ptr, ptr @horzPlane, align 8, !tbaa !7
  %1678 = getelementptr inbounds i8, ptr %1677, i64 %1672
  %1679 = load i8, ptr %1678, align 1, !tbaa !70
  %1680 = icmp eq i8 %1679, 0
  %1681 = load ptr, ptr @vertPlane, align 8, !tbaa !7
  %1682 = getelementptr inbounds i8, ptr %1681, i64 %1672
  %1683 = load i8, ptr %1682, align 1, !tbaa !70
  %1684 = icmp eq i8 %1683, 0
  br i1 %1680, label %1687, label %1685

1685:                                             ; preds = %1676
  %1686 = select i1 %1684, i32 45, i32 43
  br label %1689

1687:                                             ; preds = %1676
  %1688 = select i1 %1684, i32 32, i32 124
  br label %1689

1689:                                             ; preds = %1687, %1685, %1650
  %1690 = phi i32 [ 88, %1650 ], [ %1686, %1685 ], [ %1688, %1687 ]
  %1691 = tail call i32 @putchar(i32 %1690)
  %1692 = load ptr, ptr @horzPlane, align 8, !tbaa !7
  %1693 = load i64, ptr @channelColumns, align 8, !tbaa !15
  %1694 = mul i64 %1693, %1626
  %1695 = add i64 %1694, %1652
  %1696 = getelementptr inbounds i8, ptr %1692, i64 %1695
  %1697 = load i8, ptr %1696, align 1, !tbaa !70
  %1698 = and i8 %1697, 2
  %1699 = icmp eq i8 %1698, 0
  %1700 = load ptr, ptr @vertPlane, align 8, !tbaa !7
  %1701 = getelementptr inbounds i8, ptr %1700, i64 %1695
  %1702 = load i8, ptr %1701, align 1, !tbaa !70
  %1703 = and i8 %1702, 2
  %1704 = icmp eq i8 %1703, 0
  %1705 = select i1 %1704, i32 45, i32 61
  %1706 = select i1 %1704, i32 32, i32 94
  %1707 = select i1 %1699, i32 %1706, i32 %1705
  %1708 = tail call i32 @putchar(i32 %1707)
  %1709 = add i64 %1652, 1
  %1710 = load i64, ptr @channelColumns, align 8, !tbaa !15
  %1711 = icmp ugt i64 %1709, %1710
  br i1 %1711, label %1712, label %1650, !llvm.loop !90

1712:                                             ; preds = %1689, %1645
  %1713 = tail call i32 @putchar(i32 10)
  %1714 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1.32) #15
  %1715 = load i64, ptr @channelColumns, align 8, !tbaa !15
  %1716 = icmp eq i64 %1715, 0
  br i1 %1716, label %1732, label %1717

1717:                                             ; preds = %1717, %1712
  %1718 = phi i64 [ %1730, %1717 ], [ %1715, %1712 ]
  %1719 = phi i64 [ %1729, %1717 ], [ 1, %1712 ]
  %1720 = load ptr, ptr @vertPlane, align 8, !tbaa !7
  %1721 = mul i64 %1718, %1626
  %1722 = add i64 %1721, %1719
  %1723 = getelementptr inbounds i8, ptr %1720, i64 %1722
  %1724 = load i8, ptr %1723, align 1, !tbaa !70
  %1725 = and i8 %1724, 8
  %1726 = icmp eq i8 %1725, 0
  %1727 = select i1 %1726, ptr @.str.6, ptr @.str.5
  %1728 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) %1727) #15
  %1729 = add i64 %1719, 1
  %1730 = load i64, ptr @channelColumns, align 8, !tbaa !15
  %1731 = icmp ugt i64 %1729, %1730
  br i1 %1731, label %1732, label %1717, !llvm.loop !91

1732:                                             ; preds = %1717, %1712
  %1733 = tail call i32 @putchar(i32 10)
  %1734 = add i64 %1626, 1
  %1735 = load i64, ptr @channelTracks, align 8, !tbaa !15
  %1736 = icmp ugt i64 %1734, %1735
  br i1 %1736, label %1737, label %1625, !llvm.loop !92

1737:                                             ; preds = %1732, %1621
  %1738 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1.32) #15
  %1739 = load i64, ptr @channelColumns, align 8, !tbaa !15
  %1740 = icmp eq i64 %1739, 0
  br i1 %1740, label %1757, label %1741

1741:                                             ; preds = %1741, %1737
  %1742 = phi i64 [ %1755, %1741 ], [ %1739, %1737 ]
  %1743 = phi i64 [ %1754, %1741 ], [ 1, %1737 ]
  %1744 = load ptr, ptr @vertPlane, align 8, !tbaa !7
  %1745 = load i64, ptr @channelTracks, align 8, !tbaa !15
  %1746 = add i64 %1745, 1
  %1747 = mul i64 %1746, %1742
  %1748 = add i64 %1747, %1743
  %1749 = getelementptr inbounds i8, ptr %1744, i64 %1748
  %1750 = load i8, ptr %1749, align 1, !tbaa !70
  %1751 = icmp eq i8 %1750, 0
  %1752 = select i1 %1751, i32 32, i32 124
  %1753 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4.34, i32 noundef %1752) #15
  %1754 = add i64 %1743, 1
  %1755 = load i64, ptr @channelColumns, align 8, !tbaa !15
  %1756 = icmp ugt i64 %1754, %1755
  br i1 %1756, label %1757, label %1741, !llvm.loop !93

1757:                                             ; preds = %1741, %1737
  %1758 = tail call i32 @putchar(i32 10)
  %1759 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1.32) #15
  %1760 = load i64, ptr @channelColumns, align 8, !tbaa !15
  %1761 = icmp eq i64 %1760, 0
  br i1 %1761, label %1772, label %1762

1762:                                             ; preds = %1762, %1757
  %1763 = phi i64 [ %1769, %1762 ], [ 1, %1757 ]
  %1764 = load ptr, ptr @BOT, align 8, !tbaa !7
  %1765 = getelementptr inbounds i64, ptr %1764, i64 %1763
  %1766 = load i64, ptr %1765, align 8, !tbaa !15
  %1767 = udiv i64 %1766, 100
  %1768 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2.33, i64 noundef %1767) #15
  %1769 = add i64 %1763, 1
  %1770 = load i64, ptr @channelColumns, align 8, !tbaa !15
  %1771 = icmp ugt i64 %1769, %1770
  br i1 %1771, label %1772, label %1762, !llvm.loop !94

1772:                                             ; preds = %1762, %1757
  %1773 = tail call i32 @putchar(i32 10)
  %1774 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1.32) #15
  %1775 = load i64, ptr @channelColumns, align 8, !tbaa !15
  %1776 = icmp eq i64 %1775, 0
  br i1 %1776, label %1791, label %1777

1777:                                             ; preds = %1777, %1772
  %1778 = phi i64 [ %1788, %1777 ], [ 1, %1772 ]
  %1779 = load ptr, ptr @BOT, align 8, !tbaa !7
  %1780 = getelementptr inbounds i64, ptr %1779, i64 %1778
  %1781 = load i64, ptr %1780, align 8, !tbaa !15
  %1782 = freeze i64 %1781
  %1783 = urem i64 %1782, 100
  %1784 = trunc i64 %1783 to i8
  %1785 = udiv i8 %1784, 10
  %1786 = zext i8 %1785 to i64
  %1787 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2.33, i64 noundef %1786) #15
  %1788 = add i64 %1778, 1
  %1789 = load i64, ptr @channelColumns, align 8, !tbaa !15
  %1790 = icmp ugt i64 %1788, %1789
  br i1 %1790, label %1791, label %1777, !llvm.loop !95

1791:                                             ; preds = %1777, %1772
  %1792 = tail call i32 @putchar(i32 10)
  %1793 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1.32) #15
  %1794 = load i64, ptr @channelColumns, align 8, !tbaa !15
  %1795 = icmp eq i64 %1794, 0
  br i1 %1795, label %1806, label %1796

1796:                                             ; preds = %1796, %1791
  %1797 = phi i64 [ %1803, %1796 ], [ 1, %1791 ]
  %1798 = load ptr, ptr @BOT, align 8, !tbaa !7
  %1799 = getelementptr inbounds i64, ptr %1798, i64 %1797
  %1800 = load i64, ptr %1799, align 8, !tbaa !15
  %1801 = urem i64 %1800, 10
  %1802 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2.33, i64 noundef %1801) #15
  %1803 = add i64 %1797, 1
  %1804 = load i64, ptr @channelColumns, align 8, !tbaa !15
  %1805 = icmp ugt i64 %1803, %1804
  br i1 %1805, label %1806, label %1796, !llvm.loop !96

1806:                                             ; preds = %1796, %1791
  %1807 = tail call i32 @putchar(i32 10)
  %1808 = add nuw nsw i32 %19, 1
  %1809 = icmp eq i32 %1808, 20
  br i1 %1809, label %1810, label %18, !llvm.loop !97

1810:                                             ; preds = %1806
  tail call void @exit(i32 noundef 0) #16
  unreachable
}

; Function Attrs: nofree nounwind optsize
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #2

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: optsize
declare i32 @__isoc99_fscanf(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

; Function Attrs: nofree nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @SCCofVCG(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #10 {
  %4 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #17
  store i64 0, ptr %4, align 8, !tbaa !15
  %5 = load i64, ptr @channelNets, align 8, !tbaa !15
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %18, label %7

7:                                                ; preds = %13, %3
  %8 = phi i64 [ %14, %13 ], [ 1, %3 ]
  %9 = getelementptr inbounds %struct._nodeVCGType, ptr %0, i64 %8, i32 3
  %10 = load i64, ptr %9, align 8, !tbaa !98
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %7
  call fastcc void @SCC_DFSAboveVCG(ptr noundef nonnull %0, i64 noundef %8, ptr noundef nonnull %4) #15
  br label %13

13:                                               ; preds = %12, %7
  %14 = add i64 %8, 1
  %15 = icmp ugt i64 %14, %5
  br i1 %15, label %16, label %7, !llvm.loop !99

16:                                               ; preds = %13
  %17 = tail call i64 @llvm.umax.i64(i64 %5, i64 1)
  br label %19

18:                                               ; preds = %3
  store i64 0, ptr @totalSCC, align 8, !tbaa !15
  br label %83

19:                                               ; preds = %42, %16
  %20 = phi i64 [ %44, %42 ], [ 0, %16 ]
  br label %21

21:                                               ; preds = %38, %19
  %22 = phi i1 [ true, %38 ], [ false, %19 ]
  %23 = phi i64 [ %.lcssa7, %38 ], [ 0, %19 ]
  %24 = phi i64 [ %.lcssa8, %38 ], [ 0, %19 ]
  %25 = phi i64 [ %39, %38 ], [ 1, %19 ]
  br label %26

26:                                               ; preds = %35, %21
  %27 = phi i64 [ %36, %35 ], [ %25, %21 ]
  %28 = getelementptr inbounds %struct._nodeVCGType, ptr %0, i64 %27, i32 7
  %29 = load i64, ptr %28, align 8, !tbaa !100
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct._nodeVCGType, ptr %0, i64 %27, i32 2
  %33 = load i64, ptr %32, align 8, !tbaa !101
  %34 = icmp ugt i64 %33, %23
  br i1 %34, label %38, label %35

35:                                               ; preds = %31, %26
  %36 = add nuw i64 %27, 1
  %37 = icmp eq i64 %27, %17
  br i1 %37, label %41, label %26, !llvm.loop !102

38:                                               ; preds = %31
  %.lcssa8 = phi i64 [ %27, %31 ]
  %.lcssa7 = phi i64 [ %33, %31 ]
  %39 = add nuw i64 %.lcssa8, 1
  %40 = icmp eq i64 %.lcssa8, %17
  br i1 %40, label %42, label %21, !llvm.loop !102

41:                                               ; preds = %35
  %.lcssa12 = phi i1 [ %22, %35 ]
  %.lcssa10 = phi i64 [ %24, %35 ]
  br i1 %.lcssa12, label %42, label %45

42:                                               ; preds = %41, %38
  %43 = phi i64 [ %.lcssa10, %41 ], [ %.lcssa8, %38 ]
  %44 = add i64 %20, 1
  tail call fastcc void @SCC_DFSBelowVCG(ptr noundef nonnull %0, i64 noundef %43, i64 noundef %44) #15
  br label %19, !llvm.loop !103

45:                                               ; preds = %41
  store i64 0, ptr @totalSCC, align 8, !tbaa !15
  br label %46

46:                                               ; preds = %64, %45
  %47 = phi i64 [ %.lcssa1, %64 ], [ 0, %45 ]
  %48 = phi i64 [ %65, %64 ], [ 1, %45 ]
  br label %55

49:                                               ; preds = %61
  %.lcssa5 = phi i64 [ %47, %61 ]
  %50 = icmp eq i64 %.lcssa5, 0
  br i1 %50, label %83, label %51

51:                                               ; preds = %64, %49
  %52 = phi i64 [ %.lcssa5, %49 ], [ %.lcssa1, %64 ]
  %53 = add i64 %52, 1
  %54 = tail call i64 @llvm.umax.i64(i64 %53, i64 2)
  br label %67

55:                                               ; preds = %61, %46
  %56 = phi i64 [ %62, %61 ], [ %48, %46 ]
  %57 = getelementptr inbounds %struct._nodeVCGType, ptr %0, i64 %56, i32 6
  %58 = load i64, ptr %57, align 8, !tbaa !104
  %59 = getelementptr inbounds i64, ptr %1, i64 %56
  store i64 %58, ptr %59, align 8, !tbaa !15
  %60 = icmp ugt i64 %58, %47
  br i1 %60, label %64, label %61

61:                                               ; preds = %55
  %62 = add nuw i64 %56, 1
  %63 = icmp eq i64 %56, %17
  br i1 %63, label %49, label %55, !llvm.loop !105

64:                                               ; preds = %55
  %.lcssa3 = phi i64 [ %56, %55 ]
  %.lcssa1 = phi i64 [ %58, %55 ]
  store i64 %.lcssa1, ptr @totalSCC, align 8, !tbaa !15
  %65 = add nuw i64 %.lcssa3, 1
  %66 = icmp eq i64 %.lcssa3, %17
  br i1 %66, label %51, label %46, !llvm.loop !105

67:                                               ; preds = %79, %51
  %68 = phi i64 [ %81, %79 ], [ 1, %51 ]
  br label %69

69:                                               ; preds = %69, %67
  %70 = phi i64 [ %76, %69 ], [ 0, %67 ]
  %71 = phi i64 [ %77, %69 ], [ 1, %67 ]
  %72 = getelementptr inbounds i64, ptr %1, i64 %71
  %73 = load i64, ptr %72, align 8, !tbaa !15
  %74 = icmp eq i64 %73, %68
  %75 = zext i1 %74 to i64
  %76 = add i64 %70, %75
  %77 = add nuw i64 %71, 1
  %78 = icmp eq i64 %71, %5
  br i1 %78, label %79, label %69, !llvm.loop !106

79:                                               ; preds = %69
  %.lcssa = phi i64 [ %76, %69 ]
  %80 = getelementptr inbounds i64, ptr %2, i64 %68
  store i64 %.lcssa, ptr %80, align 8, !tbaa !15
  %81 = add nuw i64 %68, 1
  %82 = icmp eq i64 %81, %54
  br i1 %82, label %83, label %67, !llvm.loop !107

83:                                               ; preds = %79, %49, %18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #17
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #6

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: nofree nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @Select(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef readonly %4) unnamed_addr #10 {
  %6 = load i64, ptr @channelNets, align 8, !tbaa !15
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %132, label %8

8:                                                ; preds = %5
  %9 = load ptr, ptr @costMatrix, align 8, !tbaa !7
  %10 = load i64, ptr @channelTracks, align 8
  %11 = add i64 %10, 1
  %12 = tail call i64 @llvm.umax.i64(i64 %11, i64 2)
  %13 = shl i64 %12, 3
  %14 = add i64 %13, -8
  br label %15

15:                                               ; preds = %23, %8
  %16 = phi i64 [ %10, %8 ], [ %24, %23 ]
  %17 = phi i64 [ 1, %8 ], [ %25, %23 ]
  %18 = icmp eq i64 %16, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds ptr, ptr %9, i64 %17
  %21 = load ptr, ptr %20, align 8, !tbaa !7
  %22 = getelementptr i8, ptr %21, i64 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %22, i8 0, i64 %14, i1 false), !tbaa !15
  br label %23

23:                                               ; preds = %19, %15
  %24 = phi i64 [ 0, %15 ], [ %10, %19 ]
  %25 = add i64 %17, 1
  %26 = icmp ugt i64 %25, %6
  br i1 %26, label %27, label %15, !llvm.loop !108

27:                                               ; preds = %92, %23
  %28 = phi i64 [ %93, %92 ], [ %10, %23 ]
  %29 = phi i64 [ %94, %92 ], [ 1, %23 ]
  %30 = getelementptr inbounds i64, ptr %4, i64 %29
  %31 = load i64, ptr %30, align 8, !tbaa !15
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %92, label %33

33:                                               ; preds = %27
  %34 = load ptr, ptr @costMatrix, align 8, !tbaa !7
  %35 = getelementptr inbounds ptr, ptr %34, i64 %29
  %36 = load ptr, ptr %35, align 8, !tbaa !7
  tail call fastcc void @LongestPathVCG(ptr noundef %0, i64 noundef %29) #18
  %37 = load ptr, ptr @tracksNoHCV, align 8, !tbaa !7
  tail call fastcc void @NoHCV(ptr noundef %1, i64 noundef %29, ptr noundef %2, ptr noundef %37) #18
  %38 = load i64, ptr @cardTopNotPref, align 8, !tbaa !15
  %39 = load i64, ptr @cardBotNotPref, align 8, !tbaa !15
  %40 = add i64 %39, %38
  %41 = icmp eq i64 %40, 0
  %42 = load i64, ptr @channelTracks, align 8
  br i1 %41, label %50, label %43

43:                                               ; preds = %33
  %44 = sub i64 %42, %39
  %45 = mul i64 %44, %38
  %46 = add i64 %38, 1
  %47 = mul i64 %46, %39
  %48 = add i64 %45, %47
  %49 = udiv i64 %48, %40
  br label %50

50:                                               ; preds = %43, %33
  %51 = phi i64 [ %49, %43 ], [ 1, %33 ]
  %52 = icmp eq i64 %42, 0
  br i1 %52, label %92, label %53

53:                                               ; preds = %50
  %54 = load ptr, ptr @tracksNotPref, align 8
  %55 = load i64, ptr @cardNotPref, align 8
  %56 = icmp eq i64 %55, %42
  %57 = sub i64 %42, %39
  %58 = shl i64 %42, 1
  %59 = sub i64 %58, %40
  %60 = add i64 %42, 1
  %61 = tail call i64 @llvm.umax.i64(i64 %60, i64 2)
  br label %62

62:                                               ; preds = %89, %53
  %63 = phi i64 [ 1, %53 ], [ %90, %89 ]
  %64 = getelementptr inbounds i64, ptr %37, i64 %63
  %65 = load i64, ptr %64, align 8, !tbaa !15
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %87, label %67

67:                                               ; preds = %62
  br i1 %56, label %72, label %68

68:                                               ; preds = %67
  %69 = getelementptr inbounds i64, ptr %54, i64 %63
  %70 = load i64, ptr %69, align 8, !tbaa !15
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %76, label %81

72:                                               ; preds = %67
  %73 = icmp ule i64 %63, %57
  %74 = icmp ugt i64 %63, %38
  %75 = or i1 %73, %74
  br i1 %75, label %81, label %76

76:                                               ; preds = %72, %68
  %77 = phi i64 [ %55, %68 ], [ %59, %72 ]
  %78 = mul i64 %77, 100
  %79 = getelementptr inbounds i64, ptr %36, i64 %63
  store i64 %78, ptr %79, align 8, !tbaa !15
  %80 = icmp slt i64 %78, 1000000
  br i1 %80, label %81, label %89

81:                                               ; preds = %76, %72, %68
  %82 = phi i64 [ %78, %76 ], [ 10000, %68 ], [ 10000, %72 ]
  %83 = getelementptr inbounds i64, ptr %36, i64 %63
  %84 = sub i64 %51, %63
  %85 = tail call i64 @llvm.abs.i64(i64 %84, i1 true)
  %86 = add nsw i64 %82, %85
  store i64 %86, ptr %83, align 8, !tbaa !15
  br label %89

87:                                               ; preds = %62
  %88 = getelementptr inbounds i64, ptr %36, i64 %63
  store i64 1000000, ptr %88, align 8, !tbaa !15
  br label %89

89:                                               ; preds = %87, %81, %76
  %90 = add nuw i64 %63, 1
  %91 = icmp eq i64 %90, %61
  br i1 %91, label %92, label %62, !llvm.loop !109

92:                                               ; preds = %89, %50, %27
  %93 = phi i64 [ 0, %50 ], [ %28, %27 ], [ %42, %89 ]
  %94 = add i64 %29, 1
  %95 = load i64, ptr @channelNets, align 8, !tbaa !15
  %96 = icmp ugt i64 %94, %95
  br i1 %96, label %97, label %27, !llvm.loop !110

97:                                               ; preds = %92
  %.lcssa1 = phi i64 [ %93, %92 ]
  %.lcssa = phi i64 [ %95, %92 ]
  %98 = icmp eq i64 %.lcssa, 0
  br i1 %98, label %132, label %99

99:                                               ; preds = %97
  %100 = load ptr, ptr @costMatrix, align 8
  %101 = icmp eq i64 %.lcssa1, 0
  %102 = add i64 %.lcssa1, 1
  %103 = tail call i64 @llvm.umax.i64(i64 %102, i64 2)
  br label %104

104:                                              ; preds = %127, %99
  %105 = phi i64 [ -1, %99 ], [ %129, %127 ]
  %106 = phi i64 [ 1, %99 ], [ %130, %127 ]
  %107 = phi i64 [ 0, %99 ], [ %128, %127 ]
  %108 = getelementptr inbounds i64, ptr %4, i64 %106
  %109 = load i64, ptr %108, align 8, !tbaa !15
  %110 = icmp eq i64 %109, 0
  br i1 %110, label %127, label %111

111:                                              ; preds = %104
  %112 = getelementptr inbounds ptr, ptr %100, i64 %106
  %113 = load ptr, ptr %112, align 8, !tbaa !7
  br i1 %101, label %122, label %114

114:                                              ; preds = %114, %111
  %115 = phi i64 [ %119, %114 ], [ 0, %111 ]
  %116 = phi i64 [ %120, %114 ], [ 1, %111 ]
  %117 = getelementptr inbounds i64, ptr %113, i64 %116
  %118 = load i64, ptr %117, align 8, !tbaa !15
  %119 = add nsw i64 %118, %115
  %120 = add nuw i64 %116, 1
  %121 = icmp eq i64 %120, %103
  br i1 %121, label %122, label %114, !llvm.loop !111

122:                                              ; preds = %114, %111
  %123 = phi i64 [ 0, %111 ], [ %119, %114 ]
  %124 = icmp sgt i64 %123, %105
  %125 = select i1 %124, i64 %106, i64 %107
  %126 = tail call i64 @llvm.smax.i64(i64 %123, i64 %105)
  br label %127

127:                                              ; preds = %122, %104
  %128 = phi i64 [ %107, %104 ], [ %125, %122 ]
  %129 = phi i64 [ %105, %104 ], [ %126, %122 ]
  %130 = add nuw i64 %106, 1
  %131 = icmp eq i64 %106, %.lcssa
  br i1 %131, label %132, label %104, !llvm.loop !112

132:                                              ; preds = %127, %97, %5
  %133 = phi i64 [ 0, %97 ], [ 0, %5 ], [ %128, %127 ]
  store i64 %133, ptr %3, align 8, !tbaa !15
  ret void
}

; Function Attrs: nofree nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @Assign(ptr nocapture noundef %0, ptr nocapture noundef %1, i64 noundef %2) unnamed_addr #10 {
  tail call fastcc void @LongestPathVCG(ptr noundef %0, i64 noundef %2) #18
  %4 = load ptr, ptr @HCG, align 8, !tbaa !7
  %5 = load ptr, ptr @tracksNoHCV, align 8, !tbaa !7
  tail call fastcc void @NoHCV(ptr noundef %4, i64 noundef %2, ptr noundef %1, ptr noundef %5) #18
  %6 = load i64, ptr @cardTopNotPref, align 8, !tbaa !15
  %7 = load i64, ptr @cardBotNotPref, align 8, !tbaa !15
  %8 = add i64 %7, %6
  %9 = icmp eq i64 %8, 0
  %10 = load i64, ptr @channelTracks, align 8, !tbaa !15
  br i1 %9, label %18, label %11

11:                                               ; preds = %3
  %12 = sub i64 %10, %7
  %13 = mul i64 %12, %6
  %14 = add i64 %6, 1
  %15 = mul i64 %14, %7
  %16 = add i64 %13, %15
  %17 = udiv i64 %16, %8
  br label %18

18:                                               ; preds = %11, %3
  %19 = phi i64 [ %17, %11 ], [ 1, %3 ]
  %20 = icmp eq i64 %10, 0
  br i1 %20, label %95, label %21

21:                                               ; preds = %18
  %22 = load ptr, ptr @tracksAssign, align 8
  %23 = getelementptr i8, ptr %22, i64 8
  %24 = add i64 %10, 1
  %25 = tail call i64 @llvm.umax.i64(i64 %24, i64 2)
  %26 = shl i64 %25, 3
  %27 = add i64 %26, -8
  tail call void @llvm.memset.p0.i64(ptr align 8 %23, i8 0, i64 %27, i1 false), !tbaa !15
  %28 = load ptr, ptr @tracksNotPref, align 8
  br label %29

29:                                               ; preds = %42, %21
  %30 = phi i64 [ 1, %21 ], [ %44, %42 ]
  %31 = phi i64 [ 0, %21 ], [ %43, %42 ]
  %32 = getelementptr inbounds i64, ptr %5, i64 %30
  %33 = load i64, ptr %32, align 8, !tbaa !15
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %42, label %35

35:                                               ; preds = %29
  %36 = getelementptr inbounds i64, ptr %28, i64 %30
  %37 = load i64, ptr %36, align 8, !tbaa !15
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = getelementptr inbounds i64, ptr %22, i64 %30
  store i64 1, ptr %40, align 8, !tbaa !15
  %41 = add i64 %31, 1
  br label %42

42:                                               ; preds = %39, %35, %29
  %43 = phi i64 [ %31, %35 ], [ %41, %39 ], [ %31, %29 ]
  %44 = add nuw i64 %30, 1
  %45 = icmp eq i64 %44, %25
  br i1 %45, label %46, label %29, !llvm.loop !113

46:                                               ; preds = %42
  %.lcssa2 = phi i64 [ %43, %42 ]
  %47 = icmp eq i64 %.lcssa2, 0
  br i1 %47, label %48, label %111

48:                                               ; preds = %46
  %49 = load ptr, ptr @tracksTopNotPref, align 8
  %50 = load ptr, ptr @tracksBotNotPref, align 8
  br label %51

51:                                               ; preds = %68, %48
  %52 = phi i64 [ 1, %48 ], [ %70, %68 ]
  %53 = phi i64 [ 0, %48 ], [ %69, %68 ]
  %54 = getelementptr inbounds i64, ptr %5, i64 %52
  %55 = load i64, ptr %54, align 8, !tbaa !15
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %68, label %57

57:                                               ; preds = %51
  %58 = getelementptr inbounds i64, ptr %49, i64 %52
  %59 = load i64, ptr %58, align 8, !tbaa !15
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %68, label %61

61:                                               ; preds = %57
  %62 = getelementptr inbounds i64, ptr %50, i64 %52
  %63 = load i64, ptr %62, align 8, !tbaa !15
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %61
  %66 = getelementptr inbounds i64, ptr %22, i64 %52
  store i64 1, ptr %66, align 8, !tbaa !15
  %67 = add i64 %53, 1
  br label %68

68:                                               ; preds = %65, %61, %57, %51
  %69 = phi i64 [ %67, %65 ], [ %53, %61 ], [ %53, %57 ], [ %53, %51 ]
  %70 = add nuw i64 %52, 1
  %71 = icmp eq i64 %70, %25
  br i1 %71, label %72, label %51, !llvm.loop !114

72:                                               ; preds = %68
  %.lcssa1 = phi i64 [ %69, %68 ]
  %73 = icmp eq i64 %.lcssa1, 0
  br i1 %73, label %74, label %111

74:                                               ; preds = %72
  %75 = icmp ugt i64 %10, 2
  br i1 %75, label %76, label %95

76:                                               ; preds = %89, %74
  %77 = phi i64 [ %91, %89 ], [ 2, %74 ]
  %78 = phi i64 [ %90, %89 ], [ 0, %74 ]
  %79 = getelementptr inbounds i64, ptr %5, i64 %77
  %80 = load i64, ptr %79, align 8, !tbaa !15
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %89, label %82

82:                                               ; preds = %76
  %83 = getelementptr inbounds i64, ptr %28, i64 %77
  %84 = load i64, ptr %83, align 8, !tbaa !15
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %89, label %86

86:                                               ; preds = %82
  %87 = getelementptr inbounds i64, ptr %22, i64 %77
  store i64 1, ptr %87, align 8, !tbaa !15
  %88 = add i64 %78, 1
  br label %89

89:                                               ; preds = %86, %82, %76
  %90 = phi i64 [ %88, %86 ], [ %78, %82 ], [ %78, %76 ]
  %91 = add nuw i64 %77, 1
  %92 = icmp eq i64 %91, %10
  br i1 %92, label %93, label %76, !llvm.loop !115

93:                                               ; preds = %89
  %.lcssa = phi i64 [ %90, %89 ]
  %94 = icmp eq i64 %.lcssa, 0
  br i1 %94, label %95, label %111

95:                                               ; preds = %93, %74, %18
  %96 = getelementptr inbounds i64, ptr %5, i64 1
  %97 = load i64, ptr %96, align 8, !tbaa !15
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %102, label %99

99:                                               ; preds = %95
  %100 = load ptr, ptr @tracksAssign, align 8, !tbaa !7
  %101 = getelementptr inbounds i64, ptr %100, i64 1
  store i64 1, ptr %101, align 8, !tbaa !15
  br label %102

102:                                              ; preds = %99, %95
  %103 = getelementptr inbounds i64, ptr %5, i64 %10
  %104 = load i64, ptr %103, align 8, !tbaa !15
  %105 = icmp eq i64 %104, 0
  br i1 %105, label %109, label %106

106:                                              ; preds = %102
  %107 = load ptr, ptr @tracksAssign, align 8, !tbaa !7
  %108 = getelementptr inbounds i64, ptr %107, i64 %10
  store i64 1, ptr %108, align 8, !tbaa !15
  br label %109

109:                                              ; preds = %106, %102
  %110 = icmp eq i64 %10, 0
  br i1 %110, label %177, label %111

111:                                              ; preds = %109, %93, %72, %46
  %112 = load ptr, ptr @tracksAssign, align 8, !tbaa !7
  %113 = load ptr, ptr @netsAssign, align 8
  %114 = load i64, ptr @channelNets, align 8
  %115 = icmp eq i64 %114, 0
  br label %116

116:                                              ; preds = %171, %111
  %117 = phi i64 [ %174, %171 ], [ 1000000, %111 ]
  %118 = phi i64 [ %173, %171 ], [ undef, %111 ]
  %119 = phi i64 [ %175, %171 ], [ 1, %111 ]
  %120 = phi i64 [ %172, %171 ], [ 0, %111 ]
  %121 = getelementptr inbounds i64, ptr %112, i64 %119
  %122 = load i64, ptr %121, align 8, !tbaa !15
  %123 = icmp eq i64 %122, 0
  br i1 %123, label %171, label %124

124:                                              ; preds = %116
  br i1 %115, label %157, label %125

125:                                              ; preds = %153, %124
  %126 = phi i64 [ %154, %153 ], [ 0, %124 ]
  %127 = phi i64 [ %155, %153 ], [ 1, %124 ]
  %128 = getelementptr inbounds i64, ptr %113, i64 %127
  %129 = load i64, ptr %128, align 8, !tbaa !15
  %130 = icmp eq i64 %129, 0
  br i1 %130, label %153, label %131

131:                                              ; preds = %125
  %132 = icmp ult i64 %129, %119
  br i1 %132, label %133, label %138

133:                                              ; preds = %131
  %134 = tail call fastcc i64 @ExistPathAboveVCG(ptr noundef %0, i64 noundef %127, i64 noundef %2) #15
  %135 = icmp ne i64 %134, 0
  %136 = zext i1 %135 to i64
  %137 = add i64 %126, %136
  br label %153

138:                                              ; preds = %131
  %139 = icmp ugt i64 %129, %119
  br i1 %139, label %140, label %145

140:                                              ; preds = %138
  %141 = tail call fastcc i64 @ExistPathAboveVCG(ptr noundef %0, i64 noundef %2, i64 noundef %127) #15
  %142 = icmp ne i64 %141, 0
  %143 = zext i1 %142 to i64
  %144 = add i64 %126, %143
  br label %153

145:                                              ; preds = %138
  %146 = tail call fastcc i64 @ExistPathAboveVCG(ptr noundef %0, i64 noundef %127, i64 noundef %2) #15
  %147 = icmp eq i64 %146, 0
  br i1 %147, label %148, label %151

148:                                              ; preds = %145
  %149 = tail call fastcc i64 @ExistPathAboveVCG(ptr noundef %0, i64 noundef %2, i64 noundef %127) #15
  %150 = icmp eq i64 %149, 0
  br i1 %150, label %153, label %151

151:                                              ; preds = %148, %145
  %152 = add i64 %126, 1
  br label %153

153:                                              ; preds = %151, %148, %140, %133, %125
  %154 = phi i64 [ %152, %151 ], [ %126, %148 ], [ %126, %125 ], [ %137, %133 ], [ %144, %140 ]
  %155 = add i64 %127, 1
  %156 = icmp ugt i64 %155, %114
  br i1 %156, label %157, label %125, !llvm.loop !116

157:                                              ; preds = %153, %124
  %158 = phi i64 [ 0, %124 ], [ %154, %153 ]
  %159 = icmp ult i64 %158, %117
  br i1 %159, label %160, label %163

160:                                              ; preds = %157
  %161 = sub i64 %119, %19
  %162 = tail call i64 @llvm.abs.i64(i64 %161, i1 true)
  br label %171

163:                                              ; preds = %157
  %164 = icmp eq i64 %158, %117
  br i1 %164, label %165, label %171

165:                                              ; preds = %163
  %166 = sub i64 %119, %19
  %167 = tail call i64 @llvm.abs.i64(i64 %166, i1 true)
  %168 = icmp slt i64 %167, %118
  %169 = select i1 %168, i64 %119, i64 %120
  %170 = tail call i64 @llvm.smin.i64(i64 %167, i64 %118)
  br label %171

171:                                              ; preds = %165, %163, %160, %116
  %172 = phi i64 [ %120, %163 ], [ %120, %116 ], [ %119, %160 ], [ %169, %165 ]
  %173 = phi i64 [ %118, %163 ], [ %118, %116 ], [ %162, %160 ], [ %170, %165 ]
  %174 = phi i64 [ %117, %163 ], [ %117, %116 ], [ %158, %160 ], [ %117, %165 ]
  %175 = add i64 %119, 1
  %176 = icmp ugt i64 %175, %10
  br i1 %176, label %177, label %116, !llvm.loop !117

177:                                              ; preds = %171, %109
  %178 = phi i64 [ 0, %109 ], [ %172, %171 ]
  %179 = getelementptr inbounds i64, ptr %1, i64 %2
  store i64 %178, ptr %179, align 8, !tbaa !15
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @DrawSegment(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) unnamed_addr #11 {
  %6 = icmp eq i64 %1, %3
  br i1 %6, label %7, label %27

7:                                                ; preds = %5
  %8 = tail call i64 @llvm.umin.i64(i64 %2, i64 %4)
  %9 = load i64, ptr @channelColumns, align 8, !tbaa !15
  %10 = mul i64 %9, %8
  %11 = add i64 %10, %1
  %12 = getelementptr inbounds i8, ptr %0, i64 %11
  %13 = load i8, ptr %12, align 1, !tbaa !70
  %14 = or i8 %13, 8
  store i8 %14, ptr %12, align 1, !tbaa !70
  %15 = tail call i64 @llvm.umax.i64(i64 %2, i64 %4)
  %16 = add i64 %8, 1
  %17 = icmp ult i64 %16, %15
  br i1 %17, label %18, label %43

18:                                               ; preds = %18, %7
  %19 = phi i64 [ %25, %18 ], [ %16, %7 ]
  %20 = mul i64 %19, %9
  %21 = add i64 %20, %1
  %22 = getelementptr inbounds i8, ptr %0, i64 %21
  %23 = load i8, ptr %22, align 1, !tbaa !70
  %24 = or i8 %23, 12
  store i8 %24, ptr %22, align 1, !tbaa !70
  %25 = add nuw i64 %19, 1
  %26 = icmp eq i64 %25, %15
  br i1 %26, label %43, label %18, !llvm.loop !118

27:                                               ; preds = %5
  %28 = load i64, ptr @channelColumns, align 8, !tbaa !15
  %29 = mul i64 %28, %2
  %30 = tail call i64 @llvm.umin.i64(i64 %1, i64 %3)
  %31 = add i64 %29, %30
  %32 = getelementptr inbounds i8, ptr %0, i64 %31
  %33 = load i8, ptr %32, align 1, !tbaa !70
  %34 = or i8 %33, 2
  store i8 %34, ptr %32, align 1, !tbaa !70
  %35 = tail call i64 @llvm.umax.i64(i64 %1, i64 %3)
  %36 = add i64 %30, 1
  %37 = icmp ult i64 %36, %35
  br i1 %37, label %38, label %43

38:                                               ; preds = %27
  %39 = add i64 %31, 1
  %40 = getelementptr i8, ptr %0, i64 %39
  %41 = xor i64 %30, -1
  %42 = add i64 %35, %41
  tail call void @llvm.memset.p0.i64(ptr align 1 %40, i8 3, i64 %42, i1 false), !tbaa !70
  br label %43

43:                                               ; preds = %38, %27, %18, %7
  %44 = phi i64 [ %9, %7 ], [ %28, %27 ], [ %28, %38 ], [ %9, %18 ]
  %45 = phi i64 [ %15, %7 ], [ %2, %27 ], [ %2, %38 ], [ %15, %18 ]
  %46 = phi i64 [ %1, %7 ], [ %35, %27 ], [ %35, %38 ], [ %1, %18 ]
  %47 = phi i8 [ 4, %7 ], [ 1, %27 ], [ 1, %38 ], [ 4, %18 ]
  %48 = mul i64 %44, %45
  %49 = add i64 %48, %46
  %50 = getelementptr inbounds i8, ptr %0, i64 %49
  %51 = load i8, ptr %50, align 1, !tbaa !70
  %52 = or i8 %51, %47
  store i8 %52, ptr %50, align 1, !tbaa !70
  ret void
}

; Function Attrs: nofree nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc i32 @Maze1Mech(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i32 noundef %5, i32 noundef %6) unnamed_addr #10 {
  %8 = load ptr, ptr @vertPlane, align 8, !tbaa !7
  %9 = tail call fastcc i32 @SegmentFree(ptr noundef %8, i64 noundef %0, i64 noundef %1, i64 noundef %0, i64 noundef %2) #15, !range !72
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %53, label %11

11:                                               ; preds = %7
  %12 = sext i32 %6 to i64
  %13 = add i64 %12, %2
  %14 = tail call fastcc i32 @SegmentFree(ptr noundef %8, i64 noundef %0, i64 noundef %3, i64 noundef %0, i64 noundef %13) #15, !range !72
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %53, label %16

16:                                               ; preds = %11
  %17 = sext i32 %5 to i64
  %18 = add i64 %17, %0
  %19 = tail call fastcc i32 @SegmentFree(ptr noundef %8, i64 noundef %0, i64 noundef %13, i64 noundef %18, i64 noundef %13) #15, !range !72
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %53, label %21

21:                                               ; preds = %16
  %22 = tail call fastcc i32 @SegmentFree(ptr noundef %8, i64 noundef %18, i64 noundef %13, i64 noundef %18, i64 noundef %4) #15, !range !72
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %53, label %24

24:                                               ; preds = %21
  %25 = load ptr, ptr @TOP, align 8, !tbaa !7
  %26 = getelementptr inbounds i64, ptr %25, i64 %18
  %27 = load i64, ptr %26, align 8, !tbaa !15
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %43, label %29

29:                                               ; preds = %24
  %30 = load ptr, ptr @BOT, align 8, !tbaa !7
  %31 = getelementptr inbounds i64, ptr %30, i64 %18
  %32 = load i64, ptr %31, align 8, !tbaa !15
  %33 = icmp eq i64 %32, 0
  %34 = icmp eq i64 %27, %32
  %35 = or i1 %33, %34
  br i1 %35, label %43, label %36

36:                                               ; preds = %29
  %37 = load ptr, ptr @netsAssign, align 8, !tbaa !7
  %38 = getelementptr inbounds i64, ptr %37, i64 %27
  %39 = load i64, ptr %38, align 8, !tbaa !15
  %40 = getelementptr inbounds i64, ptr %37, i64 %32
  %41 = load i64, ptr %40, align 8, !tbaa !15
  %42 = icmp ugt i64 %39, %41
  br i1 %42, label %53, label %43

43:                                               ; preds = %36, %29, %24
  tail call fastcc void @DrawSegment(ptr noundef %8, i64 noundef %0, i64 noundef %1, i64 noundef %0, i64 noundef %2) #15
  %44 = load ptr, ptr @viaPlane, align 8, !tbaa !7
  %45 = load i64, ptr @channelColumns, align 8, !tbaa !15
  %46 = mul i64 %45, %2
  %47 = add i64 %46, %0
  %48 = getelementptr inbounds i8, ptr %44, i64 %47
  store i8 1, ptr %48, align 1, !tbaa !70
  tail call fastcc void @DrawSegment(ptr noundef %8, i64 noundef %0, i64 noundef %3, i64 noundef %0, i64 noundef %13) #15
  tail call fastcc void @DrawSegment(ptr noundef %8, i64 noundef %0, i64 noundef %13, i64 noundef %18, i64 noundef %13) #15
  tail call fastcc void @DrawSegment(ptr noundef %8, i64 noundef %18, i64 noundef %13, i64 noundef %18, i64 noundef %4) #15
  %49 = mul i64 %45, %4
  %50 = add i64 %49, %18
  %51 = getelementptr inbounds i8, ptr %44, i64 %50
  store i8 1, ptr %51, align 1, !tbaa !70
  %52 = load ptr, ptr @horzPlane, align 8, !tbaa !7
  tail call fastcc void @DrawSegment(ptr noundef %52, i64 noundef %18, i64 noundef %4, i64 noundef %0, i64 noundef %4) #15
  br label %53

53:                                               ; preds = %43, %36, %21, %16, %11, %7
  %54 = phi i32 [ 1, %43 ], [ 0, %36 ], [ 0, %21 ], [ 0, %16 ], [ 0, %11 ], [ 0, %7 ]
  ret i32 %54
}

; Function Attrs: nofree nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @CleanNet(i64 noundef %0) unnamed_addr #10 {
  %2 = load ptr, ptr @FIRST, align 8, !tbaa !7
  %3 = getelementptr inbounds i64, ptr %2, i64 %0
  %4 = load i64, ptr %3, align 8, !tbaa !15
  %5 = load ptr, ptr @LAST, align 8, !tbaa !7
  %6 = getelementptr inbounds i64, ptr %5, i64 %0
  %7 = load i64, ptr %6, align 8, !tbaa !15
  %8 = icmp ugt i64 %4, %7
  br i1 %8, label %29, label %9

9:                                                ; preds = %1
  %10 = load ptr, ptr @TOP, align 8, !tbaa !7
  %11 = load ptr, ptr @BOT, align 8
  %12 = load ptr, ptr @mazeRoute, align 8
  br label %13

13:                                               ; preds = %26, %9
  %14 = phi i64 [ %4, %9 ], [ %27, %26 ]
  %15 = getelementptr inbounds i64, ptr %10, i64 %14
  %16 = load i64, ptr %15, align 8, !tbaa !15
  %17 = icmp eq i64 %16, %0
  br i1 %17, label %22, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds i64, ptr %11, i64 %14
  %20 = load i64, ptr %19, align 8, !tbaa !15
  %21 = icmp eq i64 %20, %0
  br i1 %21, label %22, label %26

22:                                               ; preds = %18, %13
  %23 = getelementptr inbounds i8, ptr %12, i64 %14
  %24 = load i8, ptr %23, align 1, !tbaa !70
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %103

26:                                               ; preds = %22, %18
  %27 = add i64 %14, 1
  %28 = icmp ugt i64 %27, %7
  br i1 %28, label %29, label %13, !llvm.loop !119

29:                                               ; preds = %26, %1
  %30 = load ptr, ptr @netsAssign, align 8, !tbaa !7
  %31 = getelementptr inbounds i64, ptr %30, i64 %0
  %32 = load i64, ptr %31, align 8, !tbaa !15
  %33 = load ptr, ptr @horzPlane, align 8, !tbaa !7
  %34 = load i64, ptr @channelColumns, align 8, !tbaa !15
  %35 = mul i64 %34, %32
  br label %36

36:                                               ; preds = %36, %29
  %37 = phi i64 [ %45, %36 ], [ 0, %29 ]
  %38 = phi i64 [ %44, %36 ], [ %4, %29 ]
  %39 = add i64 %38, %35
  %40 = getelementptr inbounds i8, ptr %33, i64 %39
  %41 = load i8, ptr %40, align 1, !tbaa !70
  %42 = and i8 %41, 1
  %43 = icmp eq i8 %42, 0
  %44 = add i64 %38, -1
  %45 = add i64 %37, 1
  br i1 %43, label %46, label %36, !llvm.loop !120

46:                                               ; preds = %46, %36
  %.lcssa3 = phi i64 [ %.lcssa3, %46 ], [ %37, %36 ]
  %.lcssa2 = phi i64 [ %.lcssa2, %46 ], [ %38, %36 ]
  %47 = phi i64 [ %55, %46 ], [ 0, %36 ]
  %48 = phi i64 [ %54, %46 ], [ %7, %36 ]
  %49 = add i64 %48, %35
  %50 = getelementptr inbounds i8, ptr %33, i64 %49
  %51 = load i8, ptr %50, align 1, !tbaa !70
  %52 = and i8 %51, 2
  %53 = icmp eq i8 %52, 0
  %54 = add i64 %48, 1
  %55 = add i64 %47, 1
  br i1 %53, label %56, label %46, !llvm.loop !121

56:                                               ; preds = %46
  %.lcssa3.lcssa = phi i64 [ %.lcssa3, %46 ]
  %.lcssa2.lcssa = phi i64 [ %.lcssa2, %46 ]
  %.lcssa1 = phi i64 [ %47, %46 ]
  %.lcssa = phi i64 [ %48, %46 ]
  %57 = icmp ugt i64 %.lcssa2.lcssa, %.lcssa
  br i1 %57, label %74, label %58

58:                                               ; preds = %56
  %59 = load ptr, ptr @viaPlane, align 8, !tbaa !7
  br label %60

60:                                               ; preds = %60, %58
  %61 = phi i64 [ %.lcssa2.lcssa, %58 ], [ %72, %60 ]
  %62 = phi i64 [ 0, %58 ], [ %71, %60 ]
  %63 = phi i64 [ 9999999, %58 ], [ %70, %60 ]
  %64 = add i64 %61, %35
  %65 = getelementptr inbounds i8, ptr %59, i64 %64
  %66 = load i8, ptr %65, align 1, !tbaa !70
  %67 = icmp eq i8 %66, 0
  %68 = tail call i64 @llvm.umin.i64(i64 %61, i64 %63)
  %69 = tail call i64 @llvm.umax.i64(i64 %61, i64 %62)
  %70 = select i1 %67, i64 %63, i64 %68
  %71 = select i1 %67, i64 %62, i64 %69
  %72 = add i64 %61, 1
  %73 = icmp ugt i64 %72, %.lcssa
  br i1 %73, label %74, label %60, !llvm.loop !122

74:                                               ; preds = %60, %56
  %75 = phi i64 [ 9999999, %56 ], [ %70, %60 ]
  %76 = phi i64 [ 0, %56 ], [ %71, %60 ]
  %77 = icmp ult i64 %.lcssa2.lcssa, %75
  br i1 %77, label %78, label %88

78:                                               ; preds = %74
  %79 = add i64 %4, %35
  %80 = sub i64 %79, %.lcssa3.lcssa
  %81 = getelementptr i8, ptr %33, i64 %80
  %82 = sub i64 %.lcssa3.lcssa, %4
  %83 = add i64 %75, %82
  tail call void @llvm.memset.p0.i64(ptr align 1 %81, i8 0, i64 %83, i1 false), !tbaa !70
  %84 = add i64 %75, %35
  %85 = getelementptr inbounds i8, ptr %33, i64 %84
  %86 = load i8, ptr %85, align 1, !tbaa !70
  %87 = and i8 %86, -2
  store i8 %87, ptr %85, align 1, !tbaa !70
  br label %88

88:                                               ; preds = %78, %74
  %89 = icmp ult i64 %76, %.lcssa
  br i1 %89, label %90, label %103

90:                                               ; preds = %88
  %91 = add i64 %76, %35
  %92 = getelementptr inbounds i8, ptr %33, i64 %91
  %93 = load i8, ptr %92, align 1, !tbaa !70
  %94 = and i8 %93, -3
  store i8 %94, ptr %92, align 1, !tbaa !70
  %95 = add i64 %91, 1
  %96 = getelementptr i8, ptr %33, i64 %95
  %97 = xor i64 %76, -1
  %98 = add i64 %7, 1
  %99 = add i64 %.lcssa1, %98
  %100 = add i64 %76, 2
  %101 = tail call i64 @llvm.umax.i64(i64 %99, i64 %100)
  %102 = add i64 %101, %97
  tail call void @llvm.memset.p0.i64(ptr align 1 %96, i8 0, i64 %102, i1 false), !tbaa !70
  br label %103

103:                                              ; preds = %90, %88, %22
  ret void
}

; Function Attrs: nofree nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc i32 @Maze2Mech(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i32 noundef %8, i64 noundef %9, i64 noundef %10) unnamed_addr #10 {
  %12 = sext i32 %8 to i64
  %13 = add i64 %10, 1
  %14 = icmp eq i64 %13, %9
  br i1 %14, label %78, label %15

15:                                               ; preds = %11
  %16 = add nsw i64 %12, %7
  %17 = icmp eq i64 %16, %6
  %18 = load ptr, ptr @horzPlane, align 8
  %19 = load ptr, ptr @vertPlane, align 8
  %20 = add i64 %5, -1
  %21 = load ptr, ptr @TOP, align 8
  %22 = load ptr, ptr @BOT, align 8
  %23 = load ptr, ptr @netsAssign, align 8
  br label %24

24:                                               ; preds = %75, %15
  %25 = phi i64 [ %9, %15 ], [ %76, %75 ]
  br i1 %17, label %75, label %26

26:                                               ; preds = %72, %24
  %27 = phi i64 [ %73, %72 ], [ %6, %24 ]
  %28 = tail call fastcc i32 @SegmentFree(ptr noundef %18, i64 noundef %1, i64 noundef %25, i64 noundef %27, i64 noundef %25) #15, !range !72
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %75, label %30

30:                                               ; preds = %26
  %31 = tail call fastcc i32 @SegmentFree(ptr noundef %19, i64 noundef %1, i64 noundef %2, i64 noundef %1, i64 noundef %3) #15, !range !72
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %72, label %33

33:                                               ; preds = %30
  %34 = tail call fastcc i32 @SegmentFree(ptr noundef %19, i64 noundef %1, i64 noundef %4, i64 noundef %1, i64 noundef %25) #15, !range !72
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %72, label %36

36:                                               ; preds = %33
  %37 = tail call fastcc i32 @SegmentFree(ptr noundef %19, i64 noundef %27, i64 noundef %25, i64 noundef %27, i64 noundef %20) #15, !range !72
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %72, label %39

39:                                               ; preds = %36
  %40 = getelementptr inbounds i64, ptr %21, i64 %27
  %41 = load i64, ptr %40, align 8, !tbaa !15
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %55, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds i64, ptr %22, i64 %27
  %45 = load i64, ptr %44, align 8, !tbaa !15
  %46 = icmp eq i64 %45, 0
  %47 = icmp eq i64 %41, %45
  %48 = or i1 %46, %47
  br i1 %48, label %55, label %49

49:                                               ; preds = %43
  %50 = getelementptr inbounds i64, ptr %23, i64 %41
  %51 = load i64, ptr %50, align 8, !tbaa !15
  %52 = getelementptr inbounds i64, ptr %23, i64 %45
  %53 = load i64, ptr %52, align 8, !tbaa !15
  %54 = icmp ugt i64 %51, %53
  br i1 %54, label %72, label %55

55:                                               ; preds = %49, %43, %39
  %56 = tail call fastcc i32 @ExtendOK(i64 noundef %0, ptr noundef %18, i64 noundef %27, i64 noundef %5, i64 noundef %1, i64 noundef %5) #15, !range !72
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %72, label %58

58:                                               ; preds = %55
  %.lcssa1 = phi i64 [ %25, %55 ]
  %.lcssa = phi i64 [ %27, %55 ]
  tail call fastcc void @DrawSegment(ptr noundef %19, i64 noundef %1, i64 noundef %2, i64 noundef %1, i64 noundef %3) #15
  %59 = load ptr, ptr @viaPlane, align 8, !tbaa !7
  %60 = load i64, ptr @channelColumns, align 8, !tbaa !15
  %61 = mul i64 %60, %3
  %62 = add i64 %61, %1
  %63 = getelementptr inbounds i8, ptr %59, i64 %62
  store i8 1, ptr %63, align 1, !tbaa !70
  tail call fastcc void @DrawSegment(ptr noundef %19, i64 noundef %1, i64 noundef %4, i64 noundef %1, i64 noundef %.lcssa1) #15
  %64 = mul i64 %60, %.lcssa1
  %65 = add i64 %64, %1
  %66 = getelementptr inbounds i8, ptr %59, i64 %65
  store i8 1, ptr %66, align 1, !tbaa !70
  tail call fastcc void @DrawSegment(ptr noundef %18, i64 noundef %1, i64 noundef %.lcssa1, i64 noundef %.lcssa, i64 noundef %.lcssa1) #15
  %67 = add i64 %64, %.lcssa
  %68 = getelementptr inbounds i8, ptr %59, i64 %67
  store i8 1, ptr %68, align 1, !tbaa !70
  tail call fastcc void @DrawSegment(ptr noundef %19, i64 noundef %.lcssa, i64 noundef %.lcssa1, i64 noundef %.lcssa, i64 noundef %5) #15
  %69 = mul i64 %60, %5
  %70 = add i64 %69, %.lcssa
  %71 = getelementptr inbounds i8, ptr %59, i64 %70
  store i8 1, ptr %71, align 1, !tbaa !70
  tail call fastcc void @DrawSegment(ptr noundef %18, i64 noundef %.lcssa, i64 noundef %5, i64 noundef %1, i64 noundef %5) #15
  br label %78

72:                                               ; preds = %55, %49, %36, %33, %30
  %73 = add i64 %27, %12
  %74 = icmp eq i64 %27, %7
  br i1 %74, label %75, label %26, !llvm.loop !123

75:                                               ; preds = %72, %26, %24
  %76 = add i64 %25, 1
  %77 = icmp eq i64 %25, %10
  br i1 %77, label %78, label %24, !llvm.loop !124

78:                                               ; preds = %75, %58, %11
  %79 = phi i32 [ 1, %58 ], [ 0, %11 ], [ 0, %75 ]
  ret i32 %79
}

; Function Attrs: nofree norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @FindFreeHorzSeg(i64 noundef %0, i64 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) unnamed_addr #12 {
  %5 = icmp eq i64 %0, 0
  %6 = load i64, ptr @channelColumns, align 8, !tbaa !15
  br i1 %5, label %19, label %7

7:                                                ; preds = %4
  %8 = load ptr, ptr @horzPlane, align 8, !tbaa !7
  %9 = mul i64 %6, %1
  br label %10

10:                                               ; preds = %16, %7
  %11 = phi i64 [ %0, %7 ], [ %17, %16 ]
  %12 = add i64 %11, %9
  %13 = getelementptr inbounds i8, ptr %8, i64 %12
  %14 = load i8, ptr %13, align 1, !tbaa !70
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %10
  %17 = add i64 %11, -1
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %10, !llvm.loop !125

19:                                               ; preds = %16, %10, %4
  %20 = phi i64 [ 0, %4 ], [ 0, %16 ], [ %11, %10 ]
  %21 = add i64 %20, 1
  store i64 %21, ptr %2, align 8, !tbaa !15
  %22 = icmp ult i64 %6, %0
  br i1 %22, label %35, label %23

23:                                               ; preds = %19
  %24 = load ptr, ptr @horzPlane, align 8, !tbaa !7
  %25 = mul i64 %6, %1
  br label %26

26:                                               ; preds = %32, %23
  %27 = phi i64 [ %0, %23 ], [ %33, %32 ]
  %28 = add i64 %27, %25
  %29 = getelementptr inbounds i8, ptr %24, i64 %28
  %30 = load i8, ptr %29, align 1, !tbaa !70
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = add i64 %27, 1
  %34 = icmp ugt i64 %33, %6
  br i1 %34, label %35, label %26, !llvm.loop !126

35:                                               ; preds = %32, %26, %19
  %36 = phi i64 [ %0, %19 ], [ %33, %32 ], [ %27, %26 ]
  %37 = add i64 %36, -1
  store i64 %37, ptr %3, align 8, !tbaa !15
  ret void
}

; Function Attrs: nofree nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @SegmentFree(ptr nocapture noundef readonly %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) unnamed_addr #13 {
  %6 = icmp eq i64 %1, %3
  br i1 %6, label %7, label %23

7:                                                ; preds = %5
  %8 = tail call i64 @llvm.umin.i64(i64 %2, i64 %4)
  %9 = load i64, ptr @channelColumns, align 8, !tbaa !15
  %10 = mul i64 %9, %8
  %11 = add i64 %10, %1
  %12 = tail call i64 @llvm.umax.i64(i64 %2, i64 %4)
  br label %13

13:                                               ; preds = %19, %7
  %14 = phi i64 [ %11, %7 ], [ %21, %19 ]
  %15 = phi i64 [ %8, %7 ], [ %20, %19 ]
  %16 = getelementptr inbounds i8, ptr %0, i64 %14
  %17 = load i8, ptr %16, align 1, !tbaa !70
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %39

19:                                               ; preds = %13
  %20 = add i64 %15, 1
  %21 = add i64 %14, %9
  %22 = icmp ugt i64 %20, %12
  br i1 %22, label %39, label %13, !llvm.loop !127

23:                                               ; preds = %5
  %24 = load i64, ptr @channelColumns, align 8, !tbaa !15
  %25 = mul i64 %24, %2
  %26 = tail call i64 @llvm.umin.i64(i64 %1, i64 %3)
  %27 = add i64 %25, %26
  %28 = tail call i64 @llvm.umax.i64(i64 %1, i64 %3)
  br label %29

29:                                               ; preds = %35, %23
  %30 = phi i64 [ %27, %23 ], [ %37, %35 ]
  %31 = phi i64 [ %26, %23 ], [ %36, %35 ]
  %32 = getelementptr inbounds i8, ptr %0, i64 %30
  %33 = load i8, ptr %32, align 1, !tbaa !70
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %29
  %36 = add i64 %31, 1
  %37 = add i64 %30, 1
  %38 = icmp ugt i64 %36, %28
  br i1 %38, label %39, label %29, !llvm.loop !128

39:                                               ; preds = %35, %29, %19, %13
  %40 = phi i32 [ 0, %13 ], [ 1, %19 ], [ 0, %29 ], [ 1, %35 ]
  ret i32 %40
}

; Function Attrs: nofree nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @ExtendOK(i64 noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) unnamed_addr #13 {
  %7 = tail call i64 @llvm.umin.i64(i64 %2, i64 %4)
  %8 = tail call i64 @llvm.umin.i64(i64 %3, i64 %5)
  %9 = tail call i64 @llvm.umax.i64(i64 %2, i64 %4)
  %10 = load ptr, ptr @FIRST, align 8, !tbaa !7
  %11 = getelementptr inbounds i64, ptr %10, i64 %0
  %12 = load i64, ptr %11, align 8, !tbaa !15
  %13 = icmp ult i64 %7, %12
  %14 = load ptr, ptr @LAST, align 8, !tbaa !7
  %15 = getelementptr inbounds i64, ptr %14, i64 %0
  %16 = load i64, ptr %15, align 8, !tbaa !15
  %17 = icmp ugt i64 %9, %16
  br i1 %13, label %19, label %18

18:                                               ; preds = %6
  br i1 %17, label %24, label %27

19:                                               ; preds = %6
  %20 = add i64 %12, -1
  %21 = tail call fastcc i32 @SegmentFree(ptr noundef %1, i64 noundef %7, i64 noundef %8, i64 noundef %20, i64 noundef %8) #15, !range !72
  br i1 %17, label %22, label %27

22:                                               ; preds = %19
  %23 = icmp eq i32 %21, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %22, %18
  %25 = add nuw i64 %16, 1
  %26 = tail call fastcc i32 @SegmentFree(ptr noundef %1, i64 noundef %25, i64 noundef %8, i64 noundef %9, i64 noundef %8) #15, !range !72
  br label %27

27:                                               ; preds = %24, %22, %19, %18
  %28 = phi i32 [ 1, %18 ], [ 0, %22 ], [ %21, %19 ], [ %26, %24 ]
  ret i32 %28
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @LongestPathVCG(ptr nocapture noundef %0, i64 noundef %1) unnamed_addr #10 {
  %3 = load i64, ptr @channelNets, align 8, !tbaa !15
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %11, label %5

5:                                                ; preds = %5, %2
  %6 = phi i64 [ %9, %5 ], [ 1, %2 ]
  %7 = getelementptr inbounds %struct._nodeVCGType, ptr %0, i64 %6, i32 2
  %8 = getelementptr inbounds %struct._nodeVCGType, ptr %0, i64 %6, i32 6
  %9 = add i64 %6, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  %10 = icmp ugt i64 %9, %3
  br i1 %10, label %11, label %5, !llvm.loop !43

11:                                               ; preds = %5, %2
  %12 = tail call fastcc i64 @DFSAboveLongestPathVCG(ptr noundef %0, i64 noundef %1) #15
  %13 = add i64 %12, -1
  store i64 %13, ptr @cardBotNotPref, align 8, !tbaa !15
  %14 = load i64, ptr @channelTracks, align 8, !tbaa !15
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %27, label %16

16:                                               ; preds = %11
  %17 = load ptr, ptr @tracksBotNotPref, align 8
  br label %18

18:                                               ; preds = %18, %16
  %19 = phi i64 [ %13, %16 ], [ %23, %18 ]
  %20 = phi i64 [ %14, %16 ], [ %25, %18 ]
  %21 = icmp ne i64 %19, 0
  %22 = zext i1 %21 to i64
  %23 = tail call i64 @llvm.usub.sat.i64(i64 %19, i64 1)
  %24 = getelementptr inbounds i64, ptr %17, i64 %20
  store i64 %22, ptr %24, align 8
  %25 = add i64 %20, -1
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %18, !llvm.loop !129

27:                                               ; preds = %18, %11
  br i1 %4, label %34, label %28

28:                                               ; preds = %28, %27
  %29 = phi i64 [ %32, %28 ], [ 1, %27 ]
  %30 = getelementptr inbounds %struct._nodeVCGType, ptr %0, i64 %29, i32 2
  %31 = getelementptr inbounds %struct._nodeVCGType, ptr %0, i64 %29, i32 6
  %32 = add i64 %29, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %30, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %31, i8 0, i64 16, i1 false)
  %33 = icmp ugt i64 %32, %3
  br i1 %33, label %34, label %28, !llvm.loop !43

34:                                               ; preds = %28, %27
  %35 = tail call fastcc i64 @DFSBelowLongestPathVCG(ptr noundef %0, i64 noundef %1) #15
  %36 = add i64 %35, -1
  store i64 %36, ptr @cardTopNotPref, align 8, !tbaa !15
  br i1 %15, label %72, label %37

37:                                               ; preds = %34
  %38 = load ptr, ptr @tracksTopNotPref, align 8
  %39 = add i64 %14, 1
  %40 = tail call i64 @llvm.umax.i64(i64 %39, i64 2)
  br label %44

41:                                               ; preds = %44
  %42 = load ptr, ptr @tracksBotNotPref, align 8
  %43 = load ptr, ptr @tracksNotPref, align 8
  br label %53

44:                                               ; preds = %44, %37
  %45 = phi i64 [ %36, %37 ], [ %49, %44 ]
  %46 = phi i64 [ 1, %37 ], [ %51, %44 ]
  %47 = icmp ne i64 %45, 0
  %48 = zext i1 %47 to i64
  %49 = tail call i64 @llvm.usub.sat.i64(i64 %45, i64 1)
  %50 = getelementptr inbounds i64, ptr %38, i64 %46
  store i64 %48, ptr %50, align 8
  %51 = add nuw i64 %46, 1
  %52 = icmp eq i64 %51, %40
  br i1 %52, label %41, label %44, !llvm.loop !130

53:                                               ; preds = %68, %41
  %54 = phi i64 [ 0, %41 ], [ %69, %68 ]
  %55 = phi i64 [ 1, %41 ], [ %70, %68 ]
  %56 = getelementptr inbounds i64, ptr %38, i64 %55
  %57 = load i64, ptr %56, align 8, !tbaa !15
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %53
  %60 = getelementptr inbounds i64, ptr %42, i64 %55
  %61 = load i64, ptr %60, align 8, !tbaa !15
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %59, %53
  %64 = getelementptr inbounds i64, ptr %43, i64 %55
  store i64 1, ptr %64, align 8, !tbaa !15
  %65 = add i64 %54, 1
  br label %68

66:                                               ; preds = %59
  %67 = getelementptr inbounds i64, ptr %43, i64 %55
  store i64 0, ptr %67, align 8, !tbaa !15
  br label %68

68:                                               ; preds = %66, %63
  %69 = phi i64 [ %65, %63 ], [ %54, %66 ]
  %70 = add nuw i64 %55, 1
  %71 = icmp eq i64 %70, %40
  br i1 %71, label %72, label %53, !llvm.loop !131

72:                                               ; preds = %68, %34
  %73 = phi i64 [ 0, %34 ], [ %69, %68 ]
  store i64 %73, ptr @cardNotPref, align 8, !tbaa !15
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @NoHCV(ptr nocapture noundef readonly %0, i64 noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef writeonly %3) unnamed_addr #12 {
  %5 = load i64, ptr @channelTracks, align 8, !tbaa !15
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %42, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct._nodeHCGType, ptr %0, i64 %1, i32 1
  %9 = getelementptr inbounds %struct._nodeHCGType, ptr %0, i64 %1
  %10 = load i64, ptr @channelNets, align 8, !tbaa !15
  %11 = icmp eq i64 %10, 0
  %12 = add i64 %5, 1
  %13 = tail call i64 @llvm.umax.i64(i64 %12, i64 2)
  br label %14

14:                                               ; preds = %37, %7
  %15 = phi i64 [ 1, %7 ], [ %40, %37 ]
  br i1 %11, label %37, label %16

16:                                               ; preds = %34, %14
  %17 = phi i64 [ %35, %34 ], [ 1, %14 ]
  %18 = getelementptr inbounds i64, ptr %2, i64 %17
  %19 = load i64, ptr %18, align 8, !tbaa !15
  %20 = icmp eq i64 %19, %15
  br i1 %20, label %21, label %34

21:                                               ; preds = %16
  %22 = load i64, ptr %8, align 8, !tbaa !59
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %34, label %24

24:                                               ; preds = %21
  %25 = load ptr, ptr %9, align 8, !tbaa !56
  br label %29

26:                                               ; preds = %29
  %27 = add nuw i64 %30, 1
  %28 = icmp eq i64 %27, %22
  br i1 %28, label %34, label %29, !llvm.loop !132

29:                                               ; preds = %26, %24
  %30 = phi i64 [ 0, %24 ], [ %27, %26 ]
  %31 = getelementptr inbounds i64, ptr %25, i64 %30
  %32 = load i64, ptr %31, align 8, !tbaa !15
  %33 = icmp eq i64 %32, %17
  br i1 %33, label %37, label %26

34:                                               ; preds = %26, %21, %16
  %35 = add i64 %17, 1
  %36 = icmp ugt i64 %35, %10
  br i1 %36, label %37, label %16, !llvm.loop !133

37:                                               ; preds = %34, %29, %14
  %38 = phi i64 [ 1, %14 ], [ 0, %29 ], [ 1, %34 ]
  %39 = getelementptr inbounds i64, ptr %3, i64 %15
  store i64 %38, ptr %39, align 8, !tbaa !15
  %40 = add nuw i64 %15, 1
  %41 = icmp eq i64 %40, %13
  br i1 %41, label %42, label %14, !llvm.loop !134

42:                                               ; preds = %37, %4
  ret void
}

; Function Attrs: nofree nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc i64 @ExistPathAboveVCG(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) unnamed_addr #11 {
  %4 = load i64, ptr @channelNets, align 8, !tbaa !15
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %12, label %6

6:                                                ; preds = %6, %3
  %7 = phi i64 [ %10, %6 ], [ 1, %3 ]
  %8 = getelementptr inbounds %struct._nodeVCGType, ptr %0, i64 %7, i32 2
  %9 = getelementptr inbounds %struct._nodeVCGType, ptr %0, i64 %7, i32 6
  %10 = add i64 %7, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, i8 0, i64 16, i1 false)
  %11 = icmp ugt i64 %10, %4
  br i1 %11, label %12, label %6, !llvm.loop !43

12:                                               ; preds = %6, %3
  tail call fastcc void @DFSAboveVCG(ptr noundef %0, i64 noundef %1) #15
  %13 = getelementptr inbounds %struct._nodeVCGType, ptr %0, i64 %2, i32 3
  %14 = load i64, ptr %13, align 8, !tbaa !98
  ret i64 %14
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #6

; Function Attrs: nofree nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @DFSAboveVCG(ptr nocapture noundef %0, i64 noundef %1) unnamed_addr #11 {
  %3 = getelementptr inbounds %struct._nodeVCGType, ptr %0, i64 %1
  %4 = getelementptr inbounds %struct._nodeVCGType, ptr %0, i64 %1, i32 3
  store i64 1, ptr %4, align 8, !tbaa !98
  %5 = getelementptr inbounds %struct._nodeVCGType, ptr %0, i64 %1, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !25
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %27, label %8

8:                                                ; preds = %23, %2
  %9 = phi i64 [ %24, %23 ], [ %6, %2 ]
  %10 = phi i64 [ %25, %23 ], [ 0, %2 ]
  %11 = load ptr, ptr %3, align 8, !tbaa !23
  %12 = getelementptr inbounds %struct._constraintVCGType, ptr %11, i64 %10, i32 3
  %13 = load i64, ptr %12, align 8, !tbaa !32
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct._constraintVCGType, ptr %11, i64 %10, i32 1
  %17 = load i64, ptr %16, align 8, !tbaa !28
  %18 = getelementptr inbounds %struct._nodeVCGType, ptr %0, i64 %17, i32 3
  %19 = load i64, ptr %18, align 8, !tbaa !98
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %15
  tail call fastcc void @DFSAboveVCG(ptr noundef nonnull %0, i64 noundef %17) #15
  %22 = load i64, ptr %5, align 8, !tbaa !25
  br label %23

23:                                               ; preds = %21, %15, %8
  %24 = phi i64 [ %9, %8 ], [ %22, %21 ], [ %9, %15 ]
  %25 = add nuw i64 %10, 1
  %26 = icmp ult i64 %25, %24
  br i1 %26, label %8, label %27, !llvm.loop !135

27:                                               ; preds = %23, %2
  ret void
}

; Function Attrs: nofree nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc i64 @DFSAboveLongestPathVCG(ptr nocapture noundef %0, i64 noundef %1) unnamed_addr #11 {
  %3 = getelementptr inbounds %struct._nodeVCGType, ptr %0, i64 %1
  %4 = getelementptr inbounds %struct._nodeVCGType, ptr %0, i64 %1, i32 3
  store i64 1, ptr %4, align 8, !tbaa !98
  %5 = getelementptr inbounds %struct._nodeVCGType, ptr %0, i64 %1, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !25
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %31, label %8

8:                                                ; preds = %26, %2
  %9 = phi i64 [ %27, %26 ], [ %6, %2 ]
  %10 = phi i64 [ %28, %26 ], [ 0, %2 ]
  %11 = phi i64 [ %29, %26 ], [ 0, %2 ]
  %12 = load ptr, ptr %3, align 8, !tbaa !23
  %13 = getelementptr inbounds %struct._constraintVCGType, ptr %12, i64 %11, i32 3
  %14 = load i64, ptr %13, align 8, !tbaa !32
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %8
  %17 = getelementptr inbounds %struct._constraintVCGType, ptr %12, i64 %11, i32 1
  %18 = load i64, ptr %17, align 8, !tbaa !28
  %19 = getelementptr inbounds %struct._nodeVCGType, ptr %0, i64 %18, i32 3
  %20 = load i64, ptr %19, align 8, !tbaa !98
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %16
  %23 = tail call fastcc i64 @DFSAboveLongestPathVCG(ptr noundef nonnull %0, i64 noundef %18) #15
  %24 = tail call i64 @llvm.umax.i64(i64 %23, i64 %10)
  %25 = load i64, ptr %5, align 8, !tbaa !25
  br label %26

26:                                               ; preds = %22, %16, %8
  %27 = phi i64 [ %9, %8 ], [ %9, %16 ], [ %25, %22 ]
  %28 = phi i64 [ %10, %8 ], [ %10, %16 ], [ %24, %22 ]
  %29 = add nuw i64 %11, 1
  %30 = icmp ult i64 %29, %27
  br i1 %30, label %8, label %31, !llvm.loop !136

31:                                               ; preds = %26, %2
  %32 = phi i64 [ 0, %2 ], [ %28, %26 ]
  %33 = add i64 %32, 1
  ret i64 %33
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #6

; Function Attrs: nofree nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc i64 @DFSBelowLongestPathVCG(ptr nocapture noundef %0, i64 noundef %1) unnamed_addr #11 {
  %3 = getelementptr inbounds %struct._nodeVCGType, ptr %0, i64 %1, i32 7
  store i64 1, ptr %3, align 8, !tbaa !100
  %4 = getelementptr inbounds %struct._nodeVCGType, ptr %0, i64 %1, i32 5
  %5 = load i64, ptr %4, align 8, !tbaa !36
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %32, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct._nodeVCGType, ptr %0, i64 %1, i32 4
  br label %9

9:                                                ; preds = %27, %7
  %10 = phi i64 [ %5, %7 ], [ %28, %27 ]
  %11 = phi i64 [ 0, %7 ], [ %29, %27 ]
  %12 = phi i64 [ 0, %7 ], [ %30, %27 ]
  %13 = load ptr, ptr %8, align 8, !tbaa !26
  %14 = getelementptr inbounds %struct._constraintVCGType, ptr %13, i64 %12, i32 3
  %15 = load i64, ptr %14, align 8, !tbaa !32
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct._constraintVCGType, ptr %13, i64 %12
  %19 = load i64, ptr %18, align 8, !tbaa !30
  %20 = getelementptr inbounds %struct._nodeVCGType, ptr %0, i64 %19, i32 7
  %21 = load i64, ptr %20, align 8, !tbaa !100
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %17
  %24 = tail call fastcc i64 @DFSBelowLongestPathVCG(ptr noundef nonnull %0, i64 noundef %19) #15
  %25 = tail call i64 @llvm.umax.i64(i64 %24, i64 %11)
  %26 = load i64, ptr %4, align 8, !tbaa !36
  br label %27

27:                                               ; preds = %23, %17, %9
  %28 = phi i64 [ %10, %9 ], [ %10, %17 ], [ %26, %23 ]
  %29 = phi i64 [ %11, %9 ], [ %11, %17 ], [ %25, %23 ]
  %30 = add nuw i64 %12, 1
  %31 = icmp ult i64 %30, %28
  br i1 %31, label %9, label %32, !llvm.loop !137

32:                                               ; preds = %27, %2
  %33 = phi i64 [ 0, %2 ], [ %29, %27 ]
  %34 = add i64 %33, 1
  ret i64 %34
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #6

; Function Attrs: nofree nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @SCC_DFSAboveVCG(ptr nocapture noundef %0, i64 noundef %1, ptr nocapture noundef %2) unnamed_addr #11 {
  %4 = getelementptr inbounds %struct._nodeVCGType, ptr %0, i64 %1
  %5 = getelementptr inbounds %struct._nodeVCGType, ptr %0, i64 %1, i32 3
  store i64 1, ptr %5, align 8, !tbaa !98
  %6 = getelementptr inbounds %struct._nodeVCGType, ptr %0, i64 %1, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !25
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %28, label %9

9:                                                ; preds = %24, %3
  %10 = phi i64 [ %25, %24 ], [ %7, %3 ]
  %11 = phi i64 [ %26, %24 ], [ 0, %3 ]
  %12 = load ptr, ptr %4, align 8, !tbaa !23
  %13 = getelementptr inbounds %struct._constraintVCGType, ptr %12, i64 %11, i32 3
  %14 = load i64, ptr %13, align 8, !tbaa !32
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct._constraintVCGType, ptr %12, i64 %11, i32 1
  %18 = load i64, ptr %17, align 8, !tbaa !28
  %19 = getelementptr inbounds %struct._nodeVCGType, ptr %0, i64 %18, i32 3
  %20 = load i64, ptr %19, align 8, !tbaa !98
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  tail call fastcc void @SCC_DFSAboveVCG(ptr noundef nonnull %0, i64 noundef %18, ptr noundef %2) #15
  %23 = load i64, ptr %6, align 8, !tbaa !25
  br label %24

24:                                               ; preds = %22, %16, %9
  %25 = phi i64 [ %10, %9 ], [ %23, %22 ], [ %10, %16 ]
  %26 = add nuw i64 %11, 1
  %27 = icmp ult i64 %26, %25
  br i1 %27, label %9, label %28, !llvm.loop !138

28:                                               ; preds = %24, %3
  %29 = load i64, ptr %2, align 8, !tbaa !15
  %30 = add i64 %29, 1
  store i64 %30, ptr %2, align 8, !tbaa !15
  %31 = getelementptr inbounds %struct._nodeVCGType, ptr %0, i64 %1, i32 2
  store i64 %30, ptr %31, align 8, !tbaa !101
  ret void
}

; Function Attrs: nofree nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @SCC_DFSBelowVCG(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) unnamed_addr #11 {
  %4 = getelementptr inbounds %struct._nodeVCGType, ptr %0, i64 %1, i32 7
  store i64 1, ptr %4, align 8, !tbaa !100
  %5 = getelementptr inbounds %struct._nodeVCGType, ptr %0, i64 %1, i32 5
  %6 = load i64, ptr %5, align 8, !tbaa !36
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %29, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct._nodeVCGType, ptr %0, i64 %1, i32 4
  br label %10

10:                                               ; preds = %25, %8
  %11 = phi i64 [ %6, %8 ], [ %26, %25 ]
  %12 = phi i64 [ 0, %8 ], [ %27, %25 ]
  %13 = load ptr, ptr %9, align 8, !tbaa !26
  %14 = getelementptr inbounds %struct._constraintVCGType, ptr %13, i64 %12, i32 3
  %15 = load i64, ptr %14, align 8, !tbaa !32
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct._constraintVCGType, ptr %13, i64 %12
  %19 = load i64, ptr %18, align 8, !tbaa !30
  %20 = getelementptr inbounds %struct._nodeVCGType, ptr %0, i64 %19, i32 7
  %21 = load i64, ptr %20, align 8, !tbaa !100
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  tail call fastcc void @SCC_DFSBelowVCG(ptr noundef nonnull %0, i64 noundef %19, i64 noundef %2) #15
  %24 = load i64, ptr %5, align 8, !tbaa !36
  br label %25

25:                                               ; preds = %23, %17, %10
  %26 = phi i64 [ %11, %10 ], [ %24, %23 ], [ %11, %17 ]
  %27 = add nuw i64 %12, 1
  %28 = icmp ult i64 %27, %26
  br i1 %28, label %10, label %29, !llvm.loop !139

29:                                               ; preds = %25, %3
  %30 = getelementptr inbounds %struct._nodeVCGType, ptr %0, i64 %1, i32 6
  store i64 %2, ptr %30, align 8, !tbaa !104
  ret void
}

attributes #0 = { noreturn nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { noreturn nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" }
attributes #8 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { nofree nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { optsize }
attributes #16 = { noreturn nounwind optsize }
attributes #17 = { nounwind }
attributes #18 = { nounwind optsize }
attributes #19 = { nounwind optsize allocsize(0) }
attributes #20 = { cold }

!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0}
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
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.mustprogress"}
!15 = !{!16, !16, i64 0}
!16 = !{!"long", !9, i64 0}
!17 = distinct !{!17, !14}
!18 = distinct !{!18, !14}
!19 = distinct !{!19, !14}
!20 = distinct !{!20, !14}
!21 = distinct !{!21, !14}
!22 = distinct !{!22, !14}
!23 = !{!24, !8, i64 0}
!24 = !{!"_nodeVCGType", !8, i64 0, !16, i64 8, !16, i64 16, !16, i64 24, !8, i64 32, !16, i64 40, !16, i64 48, !16, i64 56}
!25 = !{!24, !16, i64 8}
!26 = !{!24, !8, i64 32}
!27 = distinct !{!27, !14}
!28 = !{!29, !16, i64 8}
!29 = !{!"_constraintVCGType", !16, i64 0, !16, i64 8, !16, i64 16, !16, i64 24}
!30 = !{!29, !16, i64 0}
!31 = !{!29, !16, i64 16}
!32 = !{!29, !16, i64 24}
!33 = distinct !{!33, !14}
!34 = distinct !{!34, !14}
!35 = distinct !{!35, !14}
!36 = !{!24, !16, i64 40}
!37 = distinct !{!37, !14}
!38 = distinct !{!38, !14, !39, !40}
!39 = !{!"llvm.loop.isvectorized", i32 1}
!40 = !{!"llvm.loop.unroll.runtime.disable"}
!41 = distinct !{!41, !14, !39, !40}
!42 = distinct !{!42, !14}
!43 = distinct !{!43, !14}
!44 = distinct !{!44, !14}
!45 = distinct !{!45, !14}
!46 = distinct !{!46, !14}
!47 = distinct !{!47, !14}
!48 = distinct !{!48, !14}
!49 = distinct !{!49, !14}
!50 = distinct !{!50, !14}
!51 = distinct !{!51, !14}
!52 = distinct !{!52, !14}
!53 = distinct !{!53, !14}
!54 = distinct !{!54, !14}
!55 = distinct !{!55, !14}
!56 = !{!57, !8, i64 0}
!57 = !{!"_nodeHCGType", !8, i64 0, !16, i64 8, !16, i64 16}
!58 = distinct !{!58, !14}
!59 = !{!57, !16, i64 8}
!60 = distinct !{!60, !14}
!61 = distinct !{!61, !14}
!62 = distinct !{!62, !14}
!63 = distinct !{!63, !14}
!64 = distinct !{!64, !14}
!65 = distinct !{!65, !14}
!66 = distinct !{!66, !14}
!67 = distinct !{!67, !14}
!68 = distinct !{!68, !14}
!69 = distinct !{!69, !14}
!70 = !{!9, !9, i64 0}
!71 = distinct !{!71, !14}
!72 = !{i32 0, i32 2}
!73 = distinct !{!73, !14}
!74 = distinct !{!74, !14}
!75 = distinct !{!75, !14}
!76 = distinct !{!76, !14}
!77 = distinct !{!77, !14}
!78 = distinct !{!78, !14}
!79 = distinct !{!79, !14}
!80 = distinct !{!80, !14}
!81 = distinct !{!81, !14}
!82 = distinct !{!82, !14}
!83 = distinct !{!83, !14}
!84 = distinct !{!84, !14}
!85 = distinct !{!85, !14}
!86 = distinct !{!86, !14}
!87 = distinct !{!87, !14}
!88 = distinct !{!88, !14}
!89 = distinct !{!89, !14}
!90 = distinct !{!90, !14}
!91 = distinct !{!91, !14}
!92 = distinct !{!92, !14}
!93 = distinct !{!93, !14}
!94 = distinct !{!94, !14}
!95 = distinct !{!95, !14}
!96 = distinct !{!96, !14}
!97 = distinct !{!97, !14}
!98 = !{!24, !16, i64 24}
!99 = distinct !{!99, !14}
!100 = !{!24, !16, i64 56}
!101 = !{!24, !16, i64 16}
!102 = distinct !{!102, !14}
!103 = distinct !{!103, !14}
!104 = !{!24, !16, i64 48}
!105 = distinct !{!105, !14}
!106 = distinct !{!106, !14}
!107 = distinct !{!107, !14}
!108 = distinct !{!108, !14}
!109 = distinct !{!109, !14}
!110 = distinct !{!110, !14}
!111 = distinct !{!111, !14}
!112 = distinct !{!112, !14}
!113 = distinct !{!113, !14}
!114 = distinct !{!114, !14}
!115 = distinct !{!115, !14}
!116 = distinct !{!116, !14}
!117 = distinct !{!117, !14}
!118 = distinct !{!118, !14}
!119 = distinct !{!119, !14}
!120 = distinct !{!120, !14}
!121 = distinct !{!121, !14}
!122 = distinct !{!122, !14}
!123 = distinct !{!123, !14}
!124 = distinct !{!124, !14}
!125 = distinct !{!125, !14}
!126 = distinct !{!126, !14}
!127 = distinct !{!127, !14}
!128 = distinct !{!128, !14}
!129 = distinct !{!129, !14}
!130 = distinct !{!130, !14}
!131 = distinct !{!131, !14}
!132 = distinct !{!132, !14}
!133 = distinct !{!133, !14}
!134 = distinct !{!134, !14}
!135 = distinct !{!135, !14}
!136 = distinct !{!136, !14}
!137 = distinct !{!137, !14}
!138 = distinct !{!138, !14}
!139 = distinct !{!139, !14}
