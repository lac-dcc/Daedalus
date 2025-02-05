; ModuleID = 'analyzer.e.bc.ll'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.epoch_t = type { ptr, ptr, i32, i64, i64, i64, i64 }
%struct.trans_t = type { i32, i64, i64, ptr }
%struct.def_list_t = type { ptr, i64, i32, i32 }
%struct.conf_list_t = type { ptr, i64, i32 }
%struct.hard_raw = type { ptr, ptr, i64, i32, i32, i64, i32, i32, i64 }

@.str.3 = private unnamed_addr constant [6 x i8] c"today\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"Out of memory...\0A\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"Compile date: %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"Compiler switches: %s\0A\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.13 = private unnamed_addr constant [34 x i8] c"ERROR: \09Could not find file: %s\0A\0A\00", align 1
@.str.14 = private unnamed_addr constant [67 x i8] c"ERROR: Number of loop iterations is less than epoch length: %d<%d\0A\00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"Num_epochs: %d\0A\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"START:\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"%lx\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"%lu\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"END:\00", align 1
@.str.30 = private unnamed_addr constant [33 x i8] c"ERROR: \09Wrong format on file %s\0A\00", align 1
@.str.31 = private unnamed_addr constant [20 x i8] c"%d RAW:s for 0x%lx\0A\00", align 1
@.str = private unnamed_addr constant [7 x i8] c"%s %lu\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"%s %lx %lu\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"%s %lu %lu\00", align 1
@loop_time = internal unnamed_addr global i64 0, align 8
@.str.3.3 = private unnamed_addr constant [27 x i8] c"Time for loop: %lu issues\0A\00", align 1
@prog_time = internal unnamed_addr global i64 0, align 8
@.str.4 = private unnamed_addr constant [30 x i8] c"Time for program: %lu issues\0A\00", align 1
@.str.5.4 = private unnamed_addr constant [29 x i8] c"Loop is %0.3g %% of program\0A\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"Time for speculative loop is %lu issues\0A\00", align 1
@.str.8.11 = private unnamed_addr constant [41 x i8] c"Potential speedup for loop: %0.3g times\0A\00", align 1
@.str.9 = private unnamed_addr constant [44 x i8] c"Potential speedup for program: %0.3g times\0A\00", align 1
@str = private unnamed_addr constant [24 x i8] c"OPTIMUM RESTART RESULTS\00", align 1
@str.16 = private unnamed_addr constant [54 x i8] c"REALISTIC RESTART RESULTS -- Unlimited amount of CPUs\00", align 1
@hard_raw_mod.last = internal unnamed_addr global ptr null, align 8
@hard_raw_mod.hr_empty = internal unnamed_addr global i1 false, align 4
@hard_raw_list = internal unnamed_addr global ptr null, align 8
@stderr = external local_unnamed_addr global ptr, align 8
@.str.23 = private unnamed_addr constant [36 x i8] c"ALERT: \09Out of memory, aborting...\0A\00", align 1
@def_table = internal unnamed_addr global ptr null, align 8
@conflict_list.next = internal unnamed_addr global ptr null, align 8
@first = internal unnamed_addr global i1 false, align 4
@list = internal unnamed_addr global ptr null, align 8

; Function Attrs: noreturn nounwind optsize uwtable
define dso_local void @error(ptr nocapture noundef readnone %0) #0 {
  tail call void @exit(i32 noundef 1) #14
  unreachable
}

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind optsize uwtable
define dso_local i32 @main(i32 noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = alloca [100 x i8], align 16
  %4 = alloca [100 x i8], align 16
  %5 = alloca [100 x i8], align 16
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca [100 x i8], align 16
  %11 = alloca [100 x i8], align 16
  %12 = alloca [100 x i8], align 16
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca [100 x i8], align 16
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %16) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %17) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %18) #15
  %19 = load ptr, ptr @stderr, align 8, !tbaa !7
  %20 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.3) #16
  %21 = load ptr, ptr @stderr, align 8, !tbaa !7
  %22 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %21, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.5) #16
  %23 = icmp slt i32 %0, 2
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  tail call void @exit(i32 noundef 1) #14
  unreachable

25:                                               ; preds = %2
  %26 = tail call dereferenceable_or_null(80056) ptr @calloc(i64 1, i64 80056)
  store ptr %26, ptr @def_table, align 8, !tbaa !7
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load ptr, ptr @stderr, align 8, !tbaa !7
  %30 = tail call i64 @fwrite(ptr nonnull @.str.8, i64 17, i64 1, ptr %29) #17
  tail call void @exit(i32 noundef 1) #14
  unreachable

31:                                               ; preds = %25
  %32 = add nsw i32 %0, -1
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds ptr, ptr %1, i64 %33
  %35 = load ptr, ptr %34, align 8, !tbaa !7
  %36 = tail call noalias ptr @fopen(ptr noundef %35, ptr noundef nonnull @.str.12) #18
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %42

38:                                               ; preds = %31
  %39 = load ptr, ptr @stderr, align 8, !tbaa !7
  %40 = load ptr, ptr %34, align 8, !tbaa !7
  %41 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %39, ptr noundef nonnull @.str.13, ptr noundef %40) #16
  tail call void @exit(i32 noundef 1) #14
  unreachable

42:                                               ; preds = %42, %31
  %43 = call ptr @fgets(ptr noundef nonnull %16, i32 noundef 100, ptr noundef nonnull %36) #18
  %44 = load i8, ptr %16, align 16, !tbaa !11
  %45 = icmp eq i8 %44, 69
  br i1 %45, label %46, label %42, !llvm.loop !12

46:                                               ; preds = %42
  %47 = getelementptr inbounds i8, ptr %16, i64 5
  %48 = call i32 @atoi(ptr nocapture noundef nonnull %47) #19
  %49 = icmp slt i32 %48, 1
  br i1 %49, label %50, label %53

50:                                               ; preds = %46
  %51 = load ptr, ptr @stderr, align 8, !tbaa !7
  %52 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %51, ptr noundef nonnull @.str.14, i32 noundef %48, i32 noundef 1) #16
  call void @exit(i32 noundef 0) #14
  unreachable

53:                                               ; preds = %46
  %54 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, i32 noundef %48) #18
  call void @rewind(ptr noundef nonnull %36) #18
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %10) #15
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %11) #15
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %12) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #15
  call void @rewind(ptr noundef nonnull %36) #18
  %55 = call ptr @fgets(ptr noundef nonnull %10, i32 noundef 100, ptr noundef nonnull %36) #18
  %56 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef nonnull %36, ptr noundef nonnull @.str, ptr noundef nonnull %10, ptr noundef nonnull %14) #20
  %57 = getelementptr inbounds [100 x i8], ptr %10, i64 0, i64 2
  br label %58

58:                                               ; preds = %58, %53
  %59 = phi i64 [ 0, %53 ], [ %63, %58 ]
  %60 = load i8, ptr %57, align 2, !tbaa !11
  %61 = icmp eq i8 %60, 58
  %62 = zext i1 %61 to i64
  %63 = add i64 %59, %62
  %64 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %11, ptr noundef nonnull dereferenceable(1) %10) #20
  %65 = call ptr @fgets(ptr noundef nonnull %10, i32 noundef 100, ptr noundef nonnull %36) #18
  %66 = load i8, ptr %10, align 16, !tbaa !11
  %67 = icmp eq i8 %66, 69
  br i1 %67, label %68, label %58, !llvm.loop !14

68:                                               ; preds = %58
  %.lcssa24 = phi i64 [ %63, %58 ]
  %69 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %11, ptr noundef nonnull @.str.1, ptr noundef nonnull %12, ptr noundef nonnull %13, ptr noundef nonnull %15) #20
  call void @rewind(ptr noundef nonnull %36) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #15
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %12) #15
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %11) #15
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %10) #15
  %70 = zext i32 %48 to i64
  %71 = mul nuw nsw i64 %70, 56
  %72 = call noalias ptr @malloc(i64 noundef %71) #21
  %73 = icmp eq ptr %72, null
  br i1 %73, label %74, label %77

74:                                               ; preds = %68
  %75 = load ptr, ptr @stderr, align 8, !tbaa !7
  %76 = call i64 @fwrite(ptr nonnull @.str.23, i64 35, i64 1, ptr %75) #17
  call void @exit(i32 noundef 1) #14
  unreachable

77:                                               ; preds = %77, %68
  %78 = phi i64 [ %81, %77 ], [ 0, %68 ]
  %79 = getelementptr inbounds %struct.epoch_t, ptr %72, i64 %78
  %80 = getelementptr inbounds %struct.epoch_t, ptr %72, i64 %78, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %79, i8 0, i64 16, i1 false)
  store i32 1, ptr %80, align 8, !tbaa !15
  %81 = add nuw nsw i64 %78, 1
  %82 = icmp eq i64 %81, %70
  br i1 %82, label %83, label %77, !llvm.loop !19

83:                                               ; preds = %77
  %84 = add i64 %.lcssa24, %70
  %85 = shl i64 %84, 3
  %86 = add i64 %85, 80
  %87 = call noalias ptr @malloc(i64 noundef %86) #21
  br label %88

88:                                               ; preds = %92, %83
  %89 = phi i64 [ %95, %92 ], [ 0, %83 ]
  %90 = call i32 @feof(ptr noundef nonnull %36) #20
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %88
  %93 = call noalias dereferenceable_or_null(50) ptr @malloc(i64 noundef 50) #21
  %94 = call ptr @fgets(ptr noundef %93, i32 noundef 50, ptr noundef nonnull %36) #18
  %95 = add nuw i64 %89, 1
  %96 = getelementptr inbounds ptr, ptr %87, i64 %89
  store ptr %93, ptr %96, align 8, !tbaa !7
  br label %88, !llvm.loop !20

97:                                               ; preds = %88
  %98 = load ptr, ptr %87, align 8, !tbaa !7
  %99 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %98, ptr noundef nonnull @.str, ptr noundef nonnull %16, ptr noundef nonnull %18) #20
  %100 = load i64, ptr %18, align 8, !tbaa !21
  %101 = getelementptr inbounds %struct.epoch_t, ptr %72, i64 0, i32 3
  store i64 %100, ptr %101, align 8, !tbaa !22
  br label %104

102:                                              ; preds = %139
  %.lcssa12 = phi i32 [ %141, %139 ]
  %.lcssa6 = phi i64 [ %142, %139 ]
  %103 = add i32 %106, 1
  br label %104

104:                                              ; preds = %102, %97
  %105 = phi i64 [ %115, %102 ], [ -1, %97 ]
  %106 = phi i32 [ %103, %102 ], [ 0, %97 ]
  %107 = phi i32 [ %.lcssa12, %102 ], [ 0, %97 ]
  %108 = phi i1 [ true, %102 ], [ false, %97 ]
  %109 = phi i64 [ %.lcssa6, %102 ], [ 1, %97 ]
  %110 = call i32 @llvm.smax.i32(i32 %106, i32 1)
  %111 = zext i32 %110 to i64
  %112 = call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %16, ptr noundef nonnull dereferenceable(7) @.str.19, i64 7)
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %340

114:                                              ; preds = %104
  %115 = add i64 %105, 1
  br i1 %108, label %116, label %125

116:                                              ; preds = %114
  %117 = load i64, ptr %17, align 8, !tbaa !21
  %118 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %16, ptr noundef nonnull dereferenceable(1) @.str.20, i64 noundef %117) #20
  %119 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %16, ptr noundef nonnull @.str.21, ptr noundef nonnull %18) #20
  %120 = load i64, ptr %18, align 8, !tbaa !21
  %121 = getelementptr inbounds %struct.epoch_t, ptr %72, i64 %115, i32 3
  store i64 %120, ptr %121, align 8, !tbaa !22
  %122 = icmp eq i64 %115, 0
  br i1 %122, label %125, label %123

123:                                              ; preds = %116
  %124 = getelementptr inbounds %struct.epoch_t, ptr %72, i64 %105, i32 4
  store i64 %120, ptr %124, align 8, !tbaa !23
  br label %125

125:                                              ; preds = %123, %116, %114
  %126 = phi i32 [ 0, %123 ], [ 0, %116 ], [ %107, %114 ]
  %127 = shl i64 %109, 32
  %128 = ashr exact i64 %127, 32
  %129 = getelementptr inbounds %struct.epoch_t, ptr %72, i64 %115, i32 3
  %130 = getelementptr inbounds %struct.epoch_t, ptr %72, i64 %115, i32 2
  %131 = getelementptr inbounds %struct.epoch_t, ptr %72, i64 %115
  %132 = getelementptr inbounds %struct.epoch_t, ptr %72, i64 %115, i32 1
  %133 = icmp sgt i64 %105, -1
  %134 = trunc i64 %115 to i32
  %135 = trunc i64 %115 to i32
  %136 = trunc i64 %115 to i32
  %137 = trunc i64 %115 to i32
  %138 = trunc i64 %115 to i32
  br label %139

139:                                              ; preds = %338, %125
  %140 = phi i64 [ %142, %338 ], [ %128, %125 ]
  %141 = phi i32 [ %339, %338 ], [ %126, %125 ]
  %142 = add i64 %140, 1
  %143 = getelementptr inbounds ptr, ptr %87, i64 %140
  %144 = load ptr, ptr %143, align 8, !tbaa !7
  %145 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %144, ptr noundef nonnull @.str.1, ptr noundef nonnull %16, ptr noundef nonnull %17, ptr noundef nonnull %18) #20
  %146 = load i32, ptr %16, align 16
  switch i32 %146, label %102 [
    i32 3818572, label %147
    i32 3822675, label %162
  ]

147:                                              ; preds = %139
  %148 = call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #21
  store i32 1, ptr %148, align 8, !tbaa !24
  %149 = load i64, ptr %17, align 8, !tbaa !21
  %150 = getelementptr inbounds %struct.trans_t, ptr %148, i64 0, i32 1
  store i64 %149, ptr %150, align 8, !tbaa !26
  %151 = load i64, ptr %18, align 8, !tbaa !21
  %152 = load i64, ptr %129, align 8, !tbaa !22
  %153 = sub i64 %151, %152
  %154 = getelementptr inbounds %struct.trans_t, ptr %148, i64 0, i32 2
  store i64 %153, ptr %154, align 8, !tbaa !27
  %155 = getelementptr inbounds %struct.trans_t, ptr %148, i64 0, i32 3
  store ptr null, ptr %155, align 8, !tbaa !28
  %156 = load i32, ptr %130, align 8, !tbaa !15
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %159, label %158

158:                                              ; preds = %147
  store ptr %148, ptr %131, align 8, !tbaa !29
  store ptr %148, ptr %132, align 8, !tbaa !30
  store i32 0, ptr %130, align 8, !tbaa !15
  br label %214

159:                                              ; preds = %147
  %160 = load ptr, ptr %132, align 8, !tbaa !30
  %161 = getelementptr inbounds %struct.trans_t, ptr %160, i64 0, i32 3
  store ptr %148, ptr %161, align 8, !tbaa !28
  store ptr %148, ptr %132, align 8, !tbaa !30
  br label %214

162:                                              ; preds = %139
  %163 = call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #21
  store i32 2, ptr %163, align 8, !tbaa !24
  %164 = load i64, ptr %17, align 8, !tbaa !21
  %165 = getelementptr inbounds %struct.trans_t, ptr %163, i64 0, i32 1
  store i64 %164, ptr %165, align 8, !tbaa !26
  %166 = load i64, ptr %18, align 8, !tbaa !21
  %167 = load i64, ptr %129, align 8, !tbaa !22
  %168 = sub i64 %166, %167
  %169 = getelementptr inbounds %struct.trans_t, ptr %163, i64 0, i32 2
  store i64 %168, ptr %169, align 8, !tbaa !27
  %170 = getelementptr inbounds %struct.trans_t, ptr %163, i64 0, i32 3
  store ptr null, ptr %170, align 8, !tbaa !28
  %171 = urem i64 %164, 10007
  %172 = load ptr, ptr @def_table, align 8, !tbaa !7
  %173 = getelementptr inbounds ptr, ptr %172, i64 %171
  %174 = load ptr, ptr %173, align 8, !tbaa !7
  %175 = icmp eq ptr %174, null
  br i1 %175, label %176, label %186

176:                                              ; preds = %162
  %177 = call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #21
  %178 = icmp eq ptr %177, null
  br i1 %178, label %179, label %182

179:                                              ; preds = %176
  %180 = load ptr, ptr @stderr, align 8, !tbaa !7
  %181 = call i64 @fwrite(ptr nonnull @.str.23, i64 35, i64 1, ptr %180) #17
  call void @exit(i32 noundef 1) #14
  unreachable

182:                                              ; preds = %176
  store ptr null, ptr %177, align 8, !tbaa !31
  %183 = getelementptr inbounds %struct.def_list_t, ptr %177, i64 0, i32 1
  store i64 %164, ptr %183, align 8, !tbaa !33
  %184 = getelementptr inbounds %struct.def_list_t, ptr %177, i64 0, i32 2
  store i32 %136, ptr %184, align 8, !tbaa !34
  %185 = getelementptr inbounds %struct.def_list_t, ptr %177, i64 0, i32 3
  store i32 %141, ptr %185, align 4, !tbaa !35
  store ptr %177, ptr %173, align 8, !tbaa !7
  br label %207

186:                                              ; preds = %194, %162
  %187 = phi ptr [ %195, %194 ], [ %174, %162 ]
  %188 = getelementptr inbounds %struct.def_list_t, ptr %187, i64 0, i32 1
  %189 = load i64, ptr %188, align 8, !tbaa !33
  %190 = icmp eq i64 %189, %164
  br i1 %190, label %191, label %194

191:                                              ; preds = %186
  %.lcssa2 = phi ptr [ %187, %186 ]
  %192 = getelementptr inbounds %struct.def_list_t, ptr %.lcssa2, i64 0, i32 2
  store i32 %135, ptr %192, align 8, !tbaa !34
  %193 = getelementptr inbounds %struct.def_list_t, ptr %.lcssa2, i64 0, i32 3
  store i32 %141, ptr %193, align 4, !tbaa !35
  br label %207

194:                                              ; preds = %186
  %195 = load ptr, ptr %187, align 8, !tbaa !31
  %196 = icmp eq ptr %195, null
  br i1 %196, label %197, label %186, !llvm.loop !36

197:                                              ; preds = %194
  %.lcssa3 = phi ptr [ %187, %194 ]
  %198 = call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #21
  %199 = icmp eq ptr %198, null
  br i1 %199, label %200, label %203

200:                                              ; preds = %197
  %201 = load ptr, ptr @stderr, align 8, !tbaa !7
  %202 = call i64 @fwrite(ptr nonnull @.str.23, i64 35, i64 1, ptr %201) #17
  call void @exit(i32 noundef 1) #14
  unreachable

203:                                              ; preds = %197
  store ptr null, ptr %198, align 8, !tbaa !31
  %204 = getelementptr inbounds %struct.def_list_t, ptr %198, i64 0, i32 1
  store i64 %164, ptr %204, align 8, !tbaa !33
  %205 = getelementptr inbounds %struct.def_list_t, ptr %198, i64 0, i32 2
  store i32 %134, ptr %205, align 8, !tbaa !34
  %206 = getelementptr inbounds %struct.def_list_t, ptr %198, i64 0, i32 3
  store i32 %141, ptr %206, align 4, !tbaa !35
  store ptr %198, ptr %.lcssa3, align 8, !tbaa !31
  br label %207

207:                                              ; preds = %203, %191, %182
  %208 = load i32, ptr %130, align 8, !tbaa !15
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %211, label %210

210:                                              ; preds = %207
  store ptr %163, ptr %131, align 8, !tbaa !29
  store ptr %163, ptr %132, align 8, !tbaa !30
  store i32 0, ptr %130, align 8, !tbaa !15
  br label %338

211:                                              ; preds = %207
  %212 = load ptr, ptr %132, align 8, !tbaa !30
  %213 = getelementptr inbounds %struct.trans_t, ptr %212, i64 0, i32 3
  store ptr %163, ptr %213, align 8, !tbaa !28
  store ptr %163, ptr %132, align 8, !tbaa !30
  br label %338

214:                                              ; preds = %159, %158
  br i1 %133, label %215, label %338

215:                                              ; preds = %214
  %216 = load i1, ptr @first, align 4
  %217 = load i1, ptr @hard_raw_mod.hr_empty, align 4
  %218 = urem i64 %149, 10007
  br label %219

219:                                              ; preds = %333, %215
  %220 = phi i1 [ %334, %333 ], [ %217, %215 ]
  %221 = phi i1 [ %335, %333 ], [ %216, %215 ]
  %222 = phi i64 [ %336, %333 ], [ 0, %215 ]
  %223 = getelementptr inbounds %struct.epoch_t, ptr %72, i64 %222
  %224 = load ptr, ptr %223, align 8, !tbaa !7
  %225 = icmp eq ptr %224, null
  br i1 %225, label %333, label %226

226:                                              ; preds = %219
  %227 = trunc i64 %222 to i32
  br label %228

228:                                              ; preds = %325, %226
  %229 = phi i1 [ %326, %325 ], [ %220, %226 ]
  %230 = phi i1 [ %327, %325 ], [ %221, %226 ]
  %231 = phi i1 [ %328, %325 ], [ %220, %226 ]
  %232 = phi i1 [ %329, %325 ], [ %221, %226 ]
  %233 = phi ptr [ %331, %325 ], [ %224, %226 ]
  %234 = phi i32 [ %235, %325 ], [ -1, %226 ]
  %235 = add nsw i32 %234, 1
  %236 = load i32, ptr %233, align 8, !tbaa !24
  %237 = icmp eq i32 %236, 2
  br i1 %237, label %238, label %325

238:                                              ; preds = %228
  %239 = getelementptr inbounds %struct.trans_t, ptr %233, i64 0, i32 1
  %240 = load i64, ptr %239, align 8, !tbaa !26
  %241 = icmp eq i64 %240, %149
  br i1 %241, label %242, label %325

242:                                              ; preds = %238
  %243 = load ptr, ptr @def_table, align 8, !tbaa !7
  %244 = getelementptr inbounds ptr, ptr %243, i64 %218
  br label %245

245:                                              ; preds = %249, %242
  %246 = phi ptr [ %244, %242 ], [ %247, %249 ]
  %247 = load ptr, ptr %246, align 8, !tbaa !7
  %248 = icmp eq ptr %247, null
  br i1 %248, label %325, label %249

249:                                              ; preds = %245
  %250 = getelementptr inbounds %struct.def_list_t, ptr %247, i64 0, i32 1
  %251 = load i64, ptr %250, align 8, !tbaa !33
  %252 = icmp eq i64 %251, %149
  br i1 %252, label %253, label %245, !llvm.loop !37

253:                                              ; preds = %249
  %.lcssa4 = phi ptr [ %247, %249 ]
  %254 = getelementptr inbounds %struct.def_list_t, ptr %.lcssa4, i64 0, i32 2
  %255 = load i32, ptr %254, align 8, !tbaa !34
  %256 = zext i32 %255 to i64
  %257 = icmp eq i64 %222, %256
  br i1 %257, label %258, label %325

258:                                              ; preds = %253
  %259 = getelementptr inbounds %struct.def_list_t, ptr %.lcssa4, i64 0, i32 3
  %260 = load i32, ptr %259, align 4, !tbaa !35
  %261 = icmp eq i32 %260, %235
  br i1 %261, label %262, label %325

262:                                              ; preds = %258
  br i1 %232, label %263, label %266

263:                                              ; preds = %262
  %264 = load ptr, ptr @list, align 8, !tbaa !7
  %265 = icmp eq ptr %264, null
  br i1 %265, label %287, label %278

266:                                              ; preds = %262
  %267 = call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #21
  store ptr %267, ptr @list, align 8, !tbaa !7
  %268 = icmp eq ptr %267, null
  br i1 %268, label %269, label %272

269:                                              ; preds = %266
  %270 = load ptr, ptr @stderr, align 8, !tbaa !7
  %271 = call i64 @fwrite(ptr nonnull @.str.23, i64 35, i64 1, ptr %270) #17
  call void @exit(i32 noundef 1) #14
  unreachable

272:                                              ; preds = %266
  store ptr null, ptr %267, align 8, !tbaa !38
  %273 = getelementptr inbounds %struct.conf_list_t, ptr %267, i64 0, i32 1
  store i64 %149, ptr %273, align 8, !tbaa !40
  %274 = getelementptr inbounds %struct.conf_list_t, ptr %267, i64 0, i32 2
  store i32 1, ptr %274, align 8, !tbaa !41
  store i1 true, ptr @first, align 4
  store ptr %267, ptr @conflict_list.next, align 8, !tbaa !7
  br label %297

275:                                              ; preds = %278
  %276 = load ptr, ptr %279, align 8, !tbaa !7
  %277 = icmp eq ptr %276, null
  br i1 %277, label %287, label %278, !llvm.loop !42

278:                                              ; preds = %275, %263
  %279 = phi ptr [ %276, %275 ], [ %264, %263 ]
  %280 = getelementptr inbounds %struct.conf_list_t, ptr %279, i64 0, i32 1
  %281 = load i64, ptr %280, align 8, !tbaa !40
  %282 = icmp eq i64 %281, %149
  br i1 %282, label %283, label %275, !llvm.loop !42

283:                                              ; preds = %278
  %.lcssa5 = phi ptr [ %279, %278 ]
  %284 = getelementptr inbounds %struct.conf_list_t, ptr %.lcssa5, i64 0, i32 2
  %285 = load i32, ptr %284, align 8, !tbaa !41
  %286 = add nsw i32 %285, 1
  store i32 %286, ptr %284, align 8, !tbaa !41
  br label %297

287:                                              ; preds = %275, %263
  %288 = phi ptr [ null, %263 ], [ %279, %275 ]
  %289 = call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #21
  store ptr %289, ptr @conflict_list.next, align 8, !tbaa !7
  %290 = icmp eq ptr %289, null
  br i1 %290, label %291, label %294

291:                                              ; preds = %287
  %292 = load ptr, ptr @stderr, align 8, !tbaa !7
  %293 = call i64 @fwrite(ptr nonnull @.str.23, i64 35, i64 1, ptr %292) #17
  call void @exit(i32 noundef 1) #14
  unreachable

294:                                              ; preds = %287
  store ptr null, ptr %289, align 8, !tbaa !38
  %295 = getelementptr inbounds %struct.conf_list_t, ptr %289, i64 0, i32 1
  store i64 %149, ptr %295, align 8, !tbaa !40
  %296 = getelementptr inbounds %struct.conf_list_t, ptr %289, i64 0, i32 2
  store i32 1, ptr %296, align 8, !tbaa !41
  store ptr %289, ptr %288, align 8, !tbaa !38
  br label %297

297:                                              ; preds = %294, %283, %272
  %298 = phi i1 [ true, %272 ], [ %230, %283 ], [ %230, %294 ]
  %299 = getelementptr inbounds %struct.trans_t, ptr %233, i64 0, i32 2
  %300 = load i64, ptr %299, align 8, !tbaa !27
  %301 = call noalias dereferenceable_or_null(56) ptr @malloc(i64 noundef 56) #21
  br i1 %231, label %315, label %302

302:                                              ; preds = %297
  store ptr %301, ptr @hard_raw_list, align 8, !tbaa !7
  %303 = icmp eq ptr %301, null
  br i1 %303, label %304, label %307

304:                                              ; preds = %302
  %305 = load ptr, ptr @stderr, align 8, !tbaa !7
  %306 = call i64 @fwrite(ptr nonnull @.str.23, i64 35, i64 1, ptr %305) #17
  call void @exit(i32 noundef 1) #14
  unreachable

307:                                              ; preds = %302
  %308 = getelementptr inbounds %struct.hard_raw, ptr %301, i64 0, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %301, i8 0, i64 16, i1 false)
  store i64 %149, ptr %308, align 8, !tbaa !43
  %309 = getelementptr inbounds %struct.hard_raw, ptr %301, i64 0, i32 3
  store i32 %227, ptr %309, align 8, !tbaa !45
  %310 = getelementptr inbounds %struct.hard_raw, ptr %301, i64 0, i32 4
  store i32 %235, ptr %310, align 4, !tbaa !46
  %311 = getelementptr inbounds %struct.hard_raw, ptr %301, i64 0, i32 5
  store i64 %300, ptr %311, align 8, !tbaa !47
  %312 = getelementptr inbounds %struct.hard_raw, ptr %301, i64 0, i32 6
  store i32 %137, ptr %312, align 8, !tbaa !48
  %313 = getelementptr inbounds %struct.hard_raw, ptr %301, i64 0, i32 7
  store i32 %141, ptr %313, align 4, !tbaa !49
  %314 = getelementptr inbounds %struct.hard_raw, ptr %301, i64 0, i32 8
  store i64 %153, ptr %314, align 8, !tbaa !50
  store i1 true, ptr @hard_raw_mod.hr_empty, align 4
  store ptr %301, ptr @hard_raw_mod.last, align 8, !tbaa !7
  br label %325

315:                                              ; preds = %297
  %316 = load ptr, ptr @hard_raw_mod.last, align 8, !tbaa !7
  store ptr %301, ptr %316, align 8, !tbaa !51
  %317 = getelementptr inbounds %struct.hard_raw, ptr %301, i64 0, i32 1
  store ptr %316, ptr %317, align 8, !tbaa !52
  store ptr %301, ptr @hard_raw_mod.last, align 8, !tbaa !7
  store ptr null, ptr %301, align 8, !tbaa !51
  %318 = getelementptr inbounds %struct.hard_raw, ptr %301, i64 0, i32 2
  store i64 %149, ptr %318, align 8, !tbaa !43
  %319 = getelementptr inbounds %struct.hard_raw, ptr %301, i64 0, i32 3
  store i32 %227, ptr %319, align 8, !tbaa !45
  %320 = getelementptr inbounds %struct.hard_raw, ptr %301, i64 0, i32 4
  store i32 %235, ptr %320, align 4, !tbaa !46
  %321 = getelementptr inbounds %struct.hard_raw, ptr %301, i64 0, i32 5
  store i64 %300, ptr %321, align 8, !tbaa !47
  %322 = getelementptr inbounds %struct.hard_raw, ptr %301, i64 0, i32 6
  store i32 %138, ptr %322, align 8, !tbaa !48
  %323 = getelementptr inbounds %struct.hard_raw, ptr %301, i64 0, i32 7
  store i32 %141, ptr %323, align 4, !tbaa !49
  %324 = getelementptr inbounds %struct.hard_raw, ptr %301, i64 0, i32 8
  store i64 %153, ptr %324, align 8, !tbaa !50
  br label %325

325:                                              ; preds = %315, %307, %258, %253, %245, %238, %228
  %326 = phi i1 [ %229, %315 ], [ true, %307 ], [ %229, %258 ], [ %229, %253 ], [ %229, %238 ], [ %229, %228 ], [ %229, %245 ]
  %327 = phi i1 [ %298, %315 ], [ %298, %307 ], [ %230, %258 ], [ %230, %253 ], [ %230, %238 ], [ %230, %228 ], [ %230, %245 ]
  %328 = phi i1 [ true, %315 ], [ true, %307 ], [ %231, %258 ], [ %231, %253 ], [ %231, %238 ], [ %231, %228 ], [ %231, %245 ]
  %329 = phi i1 [ true, %315 ], [ true, %307 ], [ %232, %258 ], [ %232, %253 ], [ %232, %238 ], [ %232, %228 ], [ %232, %245 ]
  %330 = getelementptr inbounds %struct.trans_t, ptr %233, i64 0, i32 3
  %331 = load ptr, ptr %330, align 8, !tbaa !7
  %332 = icmp eq ptr %331, null
  br i1 %332, label %333, label %228, !llvm.loop !53

333:                                              ; preds = %325, %219
  %334 = phi i1 [ %220, %219 ], [ %326, %325 ]
  %335 = phi i1 [ %221, %219 ], [ %327, %325 ]
  %336 = add nuw nsw i64 %222, 1
  %337 = icmp eq i64 %336, %111
  br i1 %337, label %338, label %219, !llvm.loop !54

338:                                              ; preds = %333, %214, %211, %210
  %339 = add nsw i32 %141, 1
  br label %139

340:                                              ; preds = %104
  %.lcssa18 = phi i64 [ %105, %104 ]
  %341 = call i32 @bcmp(ptr noundef nonnull dereferenceable(5) %16, ptr noundef nonnull dereferenceable(5) @.str.27, i64 5)
  %342 = icmp eq i32 %341, 0
  br i1 %342, label %343, label %346

343:                                              ; preds = %340
  %344 = load ptr, ptr @list, align 8, !tbaa !7
  %345 = icmp eq ptr %344, null
  br i1 %345, label %359, label %350

346:                                              ; preds = %340
  %347 = load ptr, ptr @stderr, align 8, !tbaa !7
  %348 = load ptr, ptr %34, align 8, !tbaa !7
  %349 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %347, ptr noundef nonnull @.str.30, ptr noundef %348) #16
  call void @exit(i32 noundef 1) #14
  unreachable

350:                                              ; preds = %350, %343
  %351 = phi ptr [ %357, %350 ], [ %344, %343 ]
  %352 = getelementptr inbounds %struct.conf_list_t, ptr %351, i64 0, i32 2
  %353 = load i32, ptr %352, align 8, !tbaa !41
  %354 = getelementptr inbounds %struct.conf_list_t, ptr %351, i64 0, i32 1
  %355 = load i64, ptr %354, align 8, !tbaa !40
  %356 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.31, i32 noundef %353, i64 noundef %355) #18
  %357 = load ptr, ptr %351, align 8, !tbaa !7
  %358 = icmp eq ptr %357, null
  br i1 %358, label %359, label %350, !llvm.loop !55

359:                                              ; preds = %350, %343
  %360 = shl i64 %.lcssa18, 32
  %361 = ashr exact i64 %360, 32
  %362 = getelementptr inbounds %struct.epoch_t, ptr %72, i64 %361, i32 3
  %363 = load i64, ptr %362, align 8, !tbaa !22
  %364 = getelementptr inbounds %struct.epoch_t, ptr %72, i64 %361, i32 1
  %365 = load ptr, ptr %364, align 8, !tbaa !30
  %366 = getelementptr inbounds %struct.trans_t, ptr %365, i64 0, i32 2
  %367 = load i64, ptr %366, align 8, !tbaa !27
  %368 = add i64 %367, %363
  %369 = getelementptr inbounds %struct.epoch_t, ptr %72, i64 %361, i32 4
  store i64 %368, ptr %369, align 8, !tbaa !23
  %370 = load ptr, ptr @hard_raw_list, align 8, !tbaa !7
  %371 = icmp eq ptr %370, null
  br i1 %371, label %388, label %372

372:                                              ; preds = %385, %359
  %373 = phi ptr [ %386, %385 ], [ %370, %359 ]
  %374 = getelementptr inbounds %struct.hard_raw, ptr %373, i64 0, i32 8
  %375 = load i64, ptr %374, align 8, !tbaa !50
  %376 = getelementptr inbounds %struct.hard_raw, ptr %373, i64 0, i32 5
  %377 = load i64, ptr %376, align 8, !tbaa !47
  %378 = icmp ugt i64 %375, %377
  br i1 %378, label %379, label %385

379:                                              ; preds = %372
  %380 = getelementptr inbounds %struct.hard_raw, ptr %373, i64 0, i32 1
  %381 = load ptr, ptr %380, align 8, !tbaa !52
  %382 = icmp eq ptr %381, null
  br i1 %382, label %385, label %383

383:                                              ; preds = %379
  %384 = load ptr, ptr %373, align 8, !tbaa !51
  store ptr %384, ptr %381, align 8, !tbaa !51
  br label %385

385:                                              ; preds = %383, %379, %372
  %386 = load ptr, ptr %373, align 8, !tbaa !7
  %387 = icmp eq ptr %386, null
  br i1 %387, label %388, label %372, !llvm.loop !56

388:                                              ; preds = %385, %359
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #15
  call void @rewind(ptr noundef nonnull %36) #18
  %389 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef nonnull %36, ptr noundef nonnull @.str, ptr noundef nonnull %3, ptr noundef nonnull %7) #20
  br label %390

390:                                              ; preds = %390, %388
  %391 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) %3) #20
  %392 = call ptr @fgets(ptr noundef nonnull %3, i32 noundef 100, ptr noundef nonnull %36) #18
  %393 = load i8, ptr %3, align 16, !tbaa !11
  %394 = icmp eq i8 %393, 69
  br i1 %394, label %395, label %390, !llvm.loop !57

395:                                              ; preds = %390
  %396 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %4, ptr noundef nonnull @.str.1, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %8) #20
  %397 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %3, ptr noundef nonnull @.str.2, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %9) #20
  %398 = load i64, ptr %8, align 8, !tbaa !21
  %399 = load i64, ptr %7, align 8, !tbaa !21
  %400 = sub i64 %398, %399
  store i64 %400, ptr @loop_time, align 8, !tbaa !21
  %401 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3.3, i64 noundef %400) #18
  %402 = load i64, ptr %9, align 8, !tbaa !21
  store i64 %402, ptr @prog_time, align 8, !tbaa !21
  %403 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i64 noundef %402) #18
  %404 = load i64, ptr %8, align 8, !tbaa !21
  %405 = load i64, ptr %7, align 8, !tbaa !21
  %406 = sub i64 %404, %405
  %407 = uitofp i64 %406 to double
  %408 = load i64, ptr %9, align 8, !tbaa !21
  %409 = uitofp i64 %408 to double
  %410 = fdiv double %407, %409
  %411 = fmul double %410, 1.000000e+02
  %412 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5.4, double noundef %411) #18
  call void @rewind(ptr noundef nonnull %36) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %3) #15
  br label %416

413:                                              ; preds = %416
  %414 = load ptr, ptr @hard_raw_list, align 8, !tbaa !7
  %415 = icmp eq ptr %414, null
  br i1 %415, label %447, label %427

416:                                              ; preds = %416, %395
  %417 = phi i64 [ 0, %395 ], [ %425, %416 ]
  %418 = getelementptr inbounds %struct.epoch_t, ptr %72, i64 %417, i32 4
  %419 = load i64, ptr %418, align 8, !tbaa !23
  %420 = getelementptr inbounds %struct.epoch_t, ptr %72, i64 %417, i32 3
  %421 = load i64, ptr %420, align 8, !tbaa !22
  %422 = sub i64 %419, %421
  %423 = getelementptr inbounds %struct.epoch_t, ptr %72, i64 %417, i32 5
  store i64 %422, ptr %423, align 8, !tbaa !58
  %424 = getelementptr inbounds %struct.epoch_t, ptr %72, i64 %417, i32 6
  store i64 0, ptr %424, align 8, !tbaa !59
  %425 = add nuw nsw i64 %417, 1
  %426 = icmp eq i64 %425, %70
  br i1 %426, label %413, label %416, !llvm.loop !60

427:                                              ; preds = %444, %413
  %428 = phi ptr [ %445, %444 ], [ %414, %413 ]
  %429 = getelementptr inbounds %struct.hard_raw, ptr %428, i64 0, i32 5
  %430 = load i64, ptr %429, align 8, !tbaa !47
  %431 = getelementptr inbounds %struct.hard_raw, ptr %428, i64 0, i32 3
  %432 = load i32, ptr %431, align 8, !tbaa !45
  %433 = sext i32 %432 to i64
  %434 = getelementptr inbounds %struct.epoch_t, ptr %72, i64 %433, i32 6
  %435 = load i64, ptr %434, align 8, !tbaa !59
  %436 = add i64 %435, %430
  %437 = getelementptr inbounds %struct.hard_raw, ptr %428, i64 0, i32 6
  %438 = load i32, ptr %437, align 8, !tbaa !48
  %439 = sext i32 %438 to i64
  %440 = getelementptr inbounds %struct.epoch_t, ptr %72, i64 %439, i32 6
  %441 = load i64, ptr %440, align 8, !tbaa !59
  %442 = icmp ugt i64 %436, %441
  br i1 %442, label %443, label %444

443:                                              ; preds = %427
  store i64 %436, ptr %440, align 8, !tbaa !59
  br label %444

444:                                              ; preds = %443, %427
  %445 = load ptr, ptr %428, align 8, !tbaa !7
  %446 = icmp eq ptr %445, null
  br i1 %446, label %447, label %427, !llvm.loop !61

447:                                              ; preds = %444, %413
  br label %448

448:                                              ; preds = %448, %447
  %449 = phi i64 [ %455, %448 ], [ 0, %447 ]
  %450 = getelementptr inbounds %struct.epoch_t, ptr %72, i64 %449, i32 5
  %451 = load i64, ptr %450, align 8, !tbaa !58
  %452 = getelementptr inbounds %struct.epoch_t, ptr %72, i64 %449, i32 6
  %453 = load i64, ptr %452, align 8, !tbaa !59
  %454 = add i64 %453, %451
  store i64 %454, ptr %450, align 8, !tbaa !58
  %455 = add nuw nsw i64 %449, 1
  %456 = icmp eq i64 %455, %70
  br i1 %456, label %457, label %448, !llvm.loop !62

457:                                              ; preds = %448
  %458 = getelementptr inbounds %struct.epoch_t, ptr %72, i64 0, i32 5
  %459 = load i64, ptr %458, align 8, !tbaa !58
  br label %460

460:                                              ; preds = %460, %457
  %461 = phi i64 [ 0, %457 ], [ %466, %460 ]
  %462 = phi i64 [ %459, %457 ], [ %465, %460 ]
  %463 = getelementptr inbounds %struct.epoch_t, ptr %72, i64 %461, i32 5
  %464 = load i64, ptr %463, align 8, !tbaa !58
  %465 = call i64 @llvm.umax.i64(i64 %464, i64 %462)
  %466 = add nuw nsw i64 %461, 1
  %467 = icmp eq i64 %466, %70
  br i1 %467, label %468, label %460, !llvm.loop !63

468:                                              ; preds = %460
  %.lcssa1 = phi i64 [ %465, %460 ]
  %469 = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %470 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i64 noundef %.lcssa1) #18
  %471 = load i64, ptr @loop_time, align 8, !tbaa !21
  %472 = uitofp i64 %471 to double
  %473 = uitofp i64 %.lcssa1 to double
  %474 = fdiv double %472, %473
  %475 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8.11, double noundef %474) #18
  %476 = load i64, ptr @prog_time, align 8, !tbaa !21
  %477 = uitofp i64 %476 to double
  %478 = add i64 %476, %.lcssa1
  %479 = load i64, ptr @loop_time, align 8, !tbaa !21
  %480 = sub i64 %478, %479
  %481 = uitofp i64 %480 to double
  %482 = fdiv double %477, %481
  %483 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, double noundef %482) #18
  %484 = call i32 @puts(ptr nonnull dereferenceable(1) @str.16)
  br label %488

485:                                              ; preds = %488
  %486 = load ptr, ptr @hard_raw_list, align 8, !tbaa !7
  %487 = icmp eq ptr %486, null
  br i1 %487, label %522, label %499

488:                                              ; preds = %488, %468
  %489 = phi i64 [ 0, %468 ], [ %497, %488 ]
  %490 = getelementptr inbounds %struct.epoch_t, ptr %72, i64 %489, i32 4
  %491 = load i64, ptr %490, align 8, !tbaa !23
  %492 = getelementptr inbounds %struct.epoch_t, ptr %72, i64 %489, i32 3
  %493 = load i64, ptr %492, align 8, !tbaa !22
  %494 = sub i64 %491, %493
  %495 = getelementptr inbounds %struct.epoch_t, ptr %72, i64 %489, i32 5
  store i64 %494, ptr %495, align 8, !tbaa !58
  %496 = getelementptr inbounds %struct.epoch_t, ptr %72, i64 %489, i32 6
  store i64 0, ptr %496, align 8, !tbaa !59
  %497 = add nuw nsw i64 %489, 1
  %498 = icmp eq i64 %497, %70
  br i1 %498, label %485, label %488, !llvm.loop !64

499:                                              ; preds = %519, %485
  %500 = phi ptr [ %520, %519 ], [ %486, %485 ]
  %501 = getelementptr inbounds %struct.hard_raw, ptr %500, i64 0, i32 5
  %502 = load i64, ptr %501, align 8, !tbaa !47
  %503 = getelementptr inbounds %struct.hard_raw, ptr %500, i64 0, i32 3
  %504 = load i32, ptr %503, align 8, !tbaa !45
  %505 = sext i32 %504 to i64
  %506 = getelementptr inbounds %struct.epoch_t, ptr %72, i64 %505, i32 6
  %507 = load i64, ptr %506, align 8, !tbaa !59
  %508 = add i64 %507, %502
  %509 = getelementptr inbounds %struct.hard_raw, ptr %500, i64 0, i32 6
  %510 = load i32, ptr %509, align 8, !tbaa !48
  %511 = sext i32 %510 to i64
  %512 = getelementptr inbounds %struct.epoch_t, ptr %72, i64 %511, i32 6
  %513 = load i64, ptr %512, align 8, !tbaa !59
  %514 = icmp ugt i64 %508, %513
  br i1 %514, label %515, label %519

515:                                              ; preds = %499
  %516 = getelementptr inbounds %struct.epoch_t, ptr %72, i64 %505, i32 5
  %517 = load i64, ptr %516, align 8, !tbaa !58
  %518 = add i64 %517, %507
  store i64 %518, ptr %512, align 8, !tbaa !59
  br label %519

519:                                              ; preds = %515, %499
  %520 = load ptr, ptr %500, align 8, !tbaa !7
  %521 = icmp eq ptr %520, null
  br i1 %521, label %522, label %499, !llvm.loop !65

522:                                              ; preds = %519, %485
  br label %523

523:                                              ; preds = %523, %522
  %524 = phi i64 [ %530, %523 ], [ 0, %522 ]
  %525 = getelementptr inbounds %struct.epoch_t, ptr %72, i64 %524, i32 5
  %526 = load i64, ptr %525, align 8, !tbaa !58
  %527 = getelementptr inbounds %struct.epoch_t, ptr %72, i64 %524, i32 6
  %528 = load i64, ptr %527, align 8, !tbaa !59
  %529 = add i64 %528, %526
  store i64 %529, ptr %525, align 8, !tbaa !58
  %530 = add nuw nsw i64 %524, 1
  %531 = icmp eq i64 %530, %70
  br i1 %531, label %532, label %523, !llvm.loop !66

532:                                              ; preds = %523
  %533 = load i64, ptr %458, align 8, !tbaa !58
  br label %534

534:                                              ; preds = %534, %532
  %535 = phi i64 [ 0, %532 ], [ %540, %534 ]
  %536 = phi i64 [ %533, %532 ], [ %539, %534 ]
  %537 = getelementptr inbounds %struct.epoch_t, ptr %72, i64 %535, i32 5
  %538 = load i64, ptr %537, align 8, !tbaa !58
  %539 = call i64 @llvm.umax.i64(i64 %538, i64 %536)
  %540 = add nuw nsw i64 %535, 1
  %541 = icmp eq i64 %540, %70
  br i1 %541, label %542, label %534, !llvm.loop !67

542:                                              ; preds = %534
  %.lcssa = phi i64 [ %539, %534 ]
  %543 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i64 noundef %.lcssa) #18
  %544 = load i64, ptr @loop_time, align 8, !tbaa !21
  %545 = uitofp i64 %544 to double
  %546 = uitofp i64 %.lcssa to double
  %547 = fdiv double %545, %546
  %548 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8.11, double noundef %547) #18
  %549 = load i64, ptr @prog_time, align 8, !tbaa !21
  %550 = uitofp i64 %549 to double
  %551 = add i64 %549, %.lcssa
  %552 = load i64, ptr @loop_time, align 8, !tbaa !21
  %553 = sub i64 %551, %552
  %554 = uitofp i64 %553 to double
  %555 = fdiv double %550, %554
  %556 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, double noundef %555) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %18) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %17) #15
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %16) #15
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind optsize
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: nofree nounwind optsize
declare noundef ptr @fgets(ptr noundef, i32 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(read)
declare i32 @atoi(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind optsize
declare void @rewind(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @__isoc99_fscanf(ptr noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #9

; Function Attrs: nofree nounwind optsize
declare noundef i32 @__isoc99_sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

; Function Attrs: nofree nounwind optsize
declare noundef i32 @feof(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #12

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #13

; Function Attrs: nofree nounwind optsize
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #12

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #6

attributes #0 = { noreturn nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" }
attributes #6 = { nofree nounwind }
attributes #7 = { mustprogress nofree nounwind optsize willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { mustprogress nofree nounwind willreturn memory(argmem: read) }
attributes #14 = { noreturn nounwind optsize }
attributes #15 = { nounwind }
attributes #16 = { cold optsize }
attributes #17 = { cold }
attributes #18 = { optsize }
attributes #19 = { nounwind optsize willreturn memory(read) }
attributes #20 = { nounwind optsize }
attributes #21 = { nounwind optsize allocsize(0) }

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
!11 = !{!9, !9, i64 0}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
!14 = distinct !{!14, !13}
!15 = !{!16, !17, i64 16}
!16 = !{!"", !8, i64 0, !8, i64 8, !17, i64 16, !18, i64 24, !18, i64 32, !18, i64 40, !18, i64 48}
!17 = !{!"int", !9, i64 0}
!18 = !{!"long", !9, i64 0}
!19 = distinct !{!19, !13}
!20 = distinct !{!20, !13}
!21 = !{!18, !18, i64 0}
!22 = !{!16, !18, i64 24}
!23 = !{!16, !18, i64 32}
!24 = !{!25, !9, i64 0}
!25 = !{!"", !9, i64 0, !18, i64 8, !18, i64 16, !8, i64 24}
!26 = !{!25, !18, i64 8}
!27 = !{!25, !18, i64 16}
!28 = !{!25, !8, i64 24}
!29 = !{!16, !8, i64 0}
!30 = !{!16, !8, i64 8}
!31 = !{!32, !8, i64 0}
!32 = !{!"", !8, i64 0, !18, i64 8, !17, i64 16, !17, i64 20}
!33 = !{!32, !18, i64 8}
!34 = !{!32, !17, i64 16}
!35 = !{!32, !17, i64 20}
!36 = distinct !{!36, !13}
!37 = distinct !{!37, !13}
!38 = !{!39, !8, i64 0}
!39 = !{!"", !8, i64 0, !18, i64 8, !17, i64 16}
!40 = !{!39, !18, i64 8}
!41 = !{!39, !17, i64 16}
!42 = distinct !{!42, !13}
!43 = !{!44, !18, i64 16}
!44 = !{!"hard_raw", !8, i64 0, !8, i64 8, !18, i64 16, !17, i64 24, !17, i64 28, !18, i64 32, !17, i64 40, !17, i64 44, !18, i64 48}
!45 = !{!44, !17, i64 24}
!46 = !{!44, !17, i64 28}
!47 = !{!44, !18, i64 32}
!48 = !{!44, !17, i64 40}
!49 = !{!44, !17, i64 44}
!50 = !{!44, !18, i64 48}
!51 = !{!44, !8, i64 0}
!52 = !{!44, !8, i64 8}
!53 = distinct !{!53, !13}
!54 = distinct !{!54, !13}
!55 = distinct !{!55, !13}
!56 = distinct !{!56, !13}
!57 = distinct !{!57, !13}
!58 = !{!16, !18, i64 40}
!59 = !{!16, !18, i64 48}
!60 = distinct !{!60, !13}
!61 = distinct !{!61, !13}
!62 = distinct !{!62, !13}
!63 = distinct !{!63, !13}
!64 = distinct !{!64, !13}
!65 = distinct !{!65, !13}
!66 = distinct !{!66, !13}
!67 = distinct !{!67, !13}
