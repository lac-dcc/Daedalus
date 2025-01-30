; ModuleID = '/src/llvm-test-suite/build/MultiSource/Benchmarks/FreeBench/analyzer/analyzer.e.bc'
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
@epoch_length = internal global i32 1, align 4
@.str.8 = private unnamed_addr constant [18 x i8] c"Out of memory...\0A\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"Compile date: %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"Compiler switches: %s\0A\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.13 = private unnamed_addr constant [34 x i8] c"ERROR: \09Could not find file: %s\0A\0A\00", align 1
@.str.14 = private unnamed_addr constant [67 x i8] c"ERROR: Number of loop iterations is less than epoch length: %d<%d\0A\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"File %s is empty\0A\00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"Num_epochs: %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [36 x i8] c"ALERT: \09Out of memory, aborting...\0A\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"%s %lu\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"START:\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"%lx\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"%lu\00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c"%s %lx %lu\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"END:\00", align 1
@.str.30 = private unnamed_addr constant [33 x i8] c"ERROR: \09Wrong format on file %s\0A\00", align 1
@.str.31 = private unnamed_addr constant [20 x i8] c"%d RAW:s for 0x%lx\0A\00", align 1
@.str = private unnamed_addr constant [7 x i8] c"%s %lu\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"%s %lx %lu\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"%s %lu %lu\00", align 1
@loop_time = internal global i64 0, align 8
@.str.3.3 = private unnamed_addr constant [27 x i8] c"Time for loop: %lu issues\0A\00", align 1
@prog_time = internal global i64 0, align 8
@.str.4 = private unnamed_addr constant [30 x i8] c"Time for program: %lu issues\0A\00", align 1
@.str.5.4 = private unnamed_addr constant [29 x i8] c"Loop is %0.3g %% of program\0A\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"Time for speculative loop is %lu issues\0A\00", align 1
@.str.8.11 = private unnamed_addr constant [41 x i8] c"Potential speedup for loop: %0.3g times\0A\00", align 1
@.str.9 = private unnamed_addr constant [44 x i8] c"Potential speedup for program: %0.3g times\0A\00", align 1
@.str.10.12 = private unnamed_addr constant [16 x i8] c"optloop: %0.3g\0A\00", align 1
@.str.11.13 = private unnamed_addr constant [16 x i8] c"optprog: %0.3g\0A\00", align 1
@.str.13.16 = private unnamed_addr constant [38 x i8] c"REALISTIC RESTART RESULTS -- %d CPUs\0A\00", align 1
@.str.14.17 = private unnamed_addr constant [20 x i8] c"realloop: %d %0.3g\0A\00", align 1
@.str.15.18 = private unnamed_addr constant [20 x i8] c"realprog: %d %0.3g\0A\00", align 1
@str = private unnamed_addr constant [24 x i8] c"OPTIMUM RESTART RESULTS\00", align 1
@str.16 = private unnamed_addr constant [54 x i8] c"REALISTIC RESTART RESULTS -- Unlimited amount of CPUs\00", align 1
@hard_raw_mod.last = internal unnamed_addr global ptr null, align 8
@hard_raw_mod.hr_empty = internal unnamed_addr global i1 false, align 4
@hard_raw_list = internal global ptr null, align 8
@stderr = external local_unnamed_addr global ptr, align 8
@.str.23 = private unnamed_addr constant [36 x i8] c"ALERT: \09Out of memory, aborting...\0A\00", align 1
@def_table_size = internal global i32 10007, align 4
@def_table = internal global ptr null, align 8
@conflict_list.next = internal unnamed_addr global ptr null, align 8
@first = internal global i32 1, align 4
@list = internal global ptr null, align 8

; Function Attrs: nounwind optsize uwtable
define internal void @init_def_table(i32 noundef %0) #0 {
  %2 = sext i32 %0 to i64
  %3 = shl nsw i64 %2, 3
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #16
  store ptr %4, ptr @def_table, align 8, !tbaa !7
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %1
  %7 = icmp sgt i32 %0, 0
  br i1 %7, label %8, label %19

8:                                                ; preds = %6
  %9 = zext i32 %0 to i64
  br label %13

10:                                               ; preds = %1
  %11 = load ptr, ptr @stderr, align 8, !tbaa !7
  %12 = tail call i64 @fwrite(ptr nonnull @.str.8, i64 17, i64 1, ptr %11) #17
  tail call void @exit(i32 noundef 1) #18
  unreachable

13:                                               ; preds = %13, %8
  %14 = phi i64 [ 0, %8 ], [ %17, %13 ]
  %15 = load ptr, ptr @def_table, align 8, !tbaa !7
  %16 = getelementptr inbounds ptr, ptr %15, i64 %14
  store ptr null, ptr %16, align 8, !tbaa !7
  %17 = add nuw nsw i64 %14, 1
  %18 = icmp eq i64 %17, %9
  br i1 %18, label %19, label %13, !llvm.loop !11

19:                                               ; preds = %13, %6
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32 noundef) local_unnamed_addr #3

; Function Attrs: noreturn nounwind optsize uwtable
define dso_local void @error(ptr nocapture noundef readnone %0) #4 {
  tail call void @exit(i32 noundef 1) #18
  unreachable
}

; Function Attrs: nounwind optsize uwtable
define dso_local i32 @main(i32 noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca [100 x i8], align 16
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #19
  %6 = load ptr, ptr @stderr, align 8, !tbaa !7
  %7 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.3) #20
  %8 = load ptr, ptr @stderr, align 8, !tbaa !7
  %9 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.5) #20
  %10 = icmp slt i32 %0, 2
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  tail call void @exit(i32 noundef 1) #18
  unreachable

12:                                               ; preds = %2
  %13 = load i32, ptr @def_table_size, align 4, !tbaa !13
  tail call void @init_def_table(i32 noundef %13) #21
  %14 = add nsw i32 %0, -1
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds ptr, ptr %1, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !7
  %18 = tail call noalias ptr @fopen(ptr noundef %17, ptr noundef nonnull @.str.12) #21
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %12
  %21 = load ptr, ptr @stderr, align 8, !tbaa !7
  %22 = load ptr, ptr %16, align 8, !tbaa !7
  %23 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %21, ptr noundef nonnull @.str.13, ptr noundef %22) #20
  tail call void @exit(i32 noundef 1) #18
  unreachable

24:                                               ; preds = %24, %12
  %25 = call ptr @fgets(ptr noundef nonnull %3, i32 noundef 100, ptr noundef nonnull %18) #21
  %26 = load i8, ptr %3, align 16, !tbaa !15
  %27 = icmp eq i8 %26, 69
  br i1 %27, label %28, label %24, !llvm.loop !16

28:                                               ; preds = %24
  %29 = getelementptr inbounds i8, ptr %3, i64 5
  %30 = call i32 @atoi(ptr nocapture noundef nonnull %29) #22
  %31 = load i32, ptr @epoch_length, align 4, !tbaa !13
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load ptr, ptr @stderr, align 8, !tbaa !7
  %35 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %34, ptr noundef nonnull @.str.14, i32 noundef %30, i32 noundef %31) #20
  call void @exit(i32 noundef 0) #18
  unreachable

36:                                               ; preds = %28
  %37 = srem i32 %30, %31
  %38 = icmp ne i32 %37, 0
  %39 = sdiv i32 %30, %31
  %40 = zext i1 %38 to i32
  %41 = add nsw i32 %39, %40
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %36
  %44 = load ptr, ptr @stderr, align 8, !tbaa !7
  %45 = load ptr, ptr %16, align 8, !tbaa !7
  %46 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %44, ptr noundef nonnull @.str.15, ptr noundef %45) #20
  call void @exit(i32 noundef 0) #18
  unreachable

47:                                               ; preds = %36
  %48 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, i32 noundef %41) #21
  call void @rewind(ptr noundef nonnull %18) #21
  %49 = call i64 @imix_test(ptr noundef nonnull %18) #23
  %50 = sext i32 %41 to i64
  %51 = mul nsw i64 %50, 56
  %52 = call noalias ptr @malloc(i64 noundef %51) #16
  %53 = icmp eq ptr %52, null
  br i1 %53, label %58, label %54

54:                                               ; preds = %47
  %55 = icmp sgt i32 %41, 0
  br i1 %55, label %56, label %67

56:                                               ; preds = %54
  %57 = zext i32 %41 to i64
  br label %61

58:                                               ; preds = %47
  %59 = load ptr, ptr @stderr, align 8, !tbaa !7
  %60 = call i64 @fwrite(ptr nonnull @.str.17, i64 35, i64 1, ptr %59) #17
  call void @exit(i32 noundef 1) #18
  unreachable

61:                                               ; preds = %61, %56
  %62 = phi i64 [ 0, %56 ], [ %65, %61 ]
  %63 = getelementptr inbounds %struct.epoch_t, ptr %52, i64 %62
  %64 = getelementptr inbounds %struct.epoch_t, ptr %52, i64 %62, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %63, i8 0, i64 16, i1 false)
  store i32 1, ptr %64, align 8, !tbaa !17
  %65 = add nuw nsw i64 %62, 1
  %66 = icmp eq i64 %65, %57
  br i1 %66, label %67, label %61, !llvm.loop !20

67:                                               ; preds = %61, %54
  %68 = sext i32 %30 to i64
  %69 = add i64 %49, %68
  %70 = shl i64 %69, 3
  %71 = add i64 %70, 80
  %72 = call noalias ptr @malloc(i64 noundef %71) #16
  br label %73

73:                                               ; preds = %77, %67
  %74 = phi i64 [ %80, %77 ], [ 0, %67 ]
  %75 = call i32 @feof(ptr noundef nonnull %18) #23
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %73
  %78 = call noalias dereferenceable_or_null(50) ptr @malloc(i64 noundef 50) #16
  %79 = call ptr @fgets(ptr noundef %78, i32 noundef 50, ptr noundef nonnull %18) #21
  %80 = add nuw i64 %74, 1
  %81 = getelementptr inbounds ptr, ptr %72, i64 %74
  store ptr %78, ptr %81, align 8, !tbaa !7
  br label %73, !llvm.loop !21

82:                                               ; preds = %73
  %83 = load ptr, ptr %72, align 8, !tbaa !7
  %84 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %83, ptr noundef nonnull @.str.18, ptr noundef nonnull %3, ptr noundef nonnull %5) #23
  %85 = load i64, ptr %5, align 8, !tbaa !22
  %86 = getelementptr inbounds %struct.epoch_t, ptr %52, i64 0, i32 3
  store i64 %85, ptr %86, align 8, !tbaa !23
  br label %87

87:                                               ; preds = %118, %82
  %88 = phi i32 [ 0, %82 ], [ %120, %118 ]
  %89 = phi i32 [ -1, %82 ], [ %115, %118 ]
  %90 = phi i32 [ -1, %82 ], [ %95, %118 ]
  %91 = phi i64 [ 1, %82 ], [ %121, %118 ]
  %92 = call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %3, ptr noundef nonnull dereferenceable(7) @.str.19, i64 7)
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %234

94:                                               ; preds = %87
  %95 = add nsw i32 %90, 1
  %96 = add nsw i32 %89, 1
  %97 = load i32, ptr @epoch_length, align 4, !tbaa !13
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %99, label %113

99:                                               ; preds = %94
  %100 = load i64, ptr %4, align 8, !tbaa !22
  %101 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) @.str.20, i64 noundef %100) #23
  %102 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %3, ptr noundef nonnull @.str.21, ptr noundef nonnull %5) #23
  %103 = load i64, ptr %5, align 8, !tbaa !22
  %104 = load i32, ptr @epoch_length, align 4, !tbaa !13
  %105 = sdiv i32 %95, %104
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.epoch_t, ptr %52, i64 %106, i32 3
  store i64 %103, ptr %107, align 8, !tbaa !23
  %108 = icmp eq i32 %105, 0
  br i1 %108, label %113, label %109

109:                                              ; preds = %99
  %110 = add nsw i32 %105, -1
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.epoch_t, ptr %52, i64 %111, i32 4
  store i64 %103, ptr %112, align 8, !tbaa !24
  br label %113

113:                                              ; preds = %109, %99, %94
  %114 = phi i32 [ 0, %109 ], [ 0, %99 ], [ %88, %94 ]
  %115 = phi i32 [ 0, %109 ], [ 0, %99 ], [ %96, %94 ]
  %116 = shl i64 %91, 32
  %117 = ashr exact i64 %116, 32
  br label %118

118:                                              ; preds = %232, %113
  %119 = phi i64 [ %121, %232 ], [ %117, %113 ]
  %120 = phi i32 [ %233, %232 ], [ %114, %113 ]
  %121 = add i64 %119, 1
  %122 = getelementptr inbounds ptr, ptr %72, i64 %119
  %123 = load ptr, ptr %122, align 8, !tbaa !7
  %124 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %123, ptr noundef nonnull @.str.22, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5) #23
  %125 = load i32, ptr %3, align 16
  switch i32 %125, label %87 [
    i32 3818572, label %126
    i32 3822675, label %149
  ]

126:                                              ; preds = %118
  %127 = call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #16
  store i32 1, ptr %127, align 8, !tbaa !25
  %128 = load i64, ptr %4, align 8, !tbaa !22
  %129 = getelementptr inbounds %struct.trans_t, ptr %127, i64 0, i32 1
  store i64 %128, ptr %129, align 8, !tbaa !27
  %130 = load i64, ptr %5, align 8, !tbaa !22
  %131 = load i32, ptr @epoch_length, align 4, !tbaa !13
  %132 = sdiv i32 %95, %131
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.epoch_t, ptr %52, i64 %133, i32 3
  %135 = load i64, ptr %134, align 8, !tbaa !23
  %136 = sub i64 %130, %135
  %137 = getelementptr inbounds %struct.trans_t, ptr %127, i64 0, i32 2
  store i64 %136, ptr %137, align 8, !tbaa !28
  %138 = getelementptr inbounds %struct.trans_t, ptr %127, i64 0, i32 3
  store ptr null, ptr %138, align 8, !tbaa !29
  %139 = getelementptr inbounds %struct.epoch_t, ptr %52, i64 %133, i32 2
  %140 = load i32, ptr %139, align 8, !tbaa !17
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %145, label %142

142:                                              ; preds = %126
  %143 = getelementptr inbounds %struct.epoch_t, ptr %52, i64 %133
  store ptr %127, ptr %143, align 8, !tbaa !30
  %144 = getelementptr inbounds %struct.epoch_t, ptr %52, i64 %133, i32 1
  store ptr %127, ptr %144, align 8, !tbaa !31
  store i32 0, ptr %139, align 8, !tbaa !17
  br label %175

145:                                              ; preds = %126
  %146 = getelementptr inbounds %struct.epoch_t, ptr %52, i64 %133, i32 1
  %147 = load ptr, ptr %146, align 8, !tbaa !31
  %148 = getelementptr inbounds %struct.trans_t, ptr %147, i64 0, i32 3
  store ptr %127, ptr %148, align 8, !tbaa !29
  store ptr %127, ptr %146, align 8, !tbaa !31
  br label %175

149:                                              ; preds = %118
  %150 = call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #16
  store i32 2, ptr %150, align 8, !tbaa !25
  %151 = load i64, ptr %4, align 8, !tbaa !22
  %152 = getelementptr inbounds %struct.trans_t, ptr %150, i64 0, i32 1
  store i64 %151, ptr %152, align 8, !tbaa !27
  %153 = load i64, ptr %5, align 8, !tbaa !22
  %154 = load i32, ptr @epoch_length, align 4, !tbaa !13
  %155 = sdiv i32 %95, %154
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.epoch_t, ptr %52, i64 %156, i32 3
  %158 = load i64, ptr %157, align 8, !tbaa !23
  %159 = sub i64 %153, %158
  %160 = getelementptr inbounds %struct.trans_t, ptr %150, i64 0, i32 2
  store i64 %159, ptr %160, align 8, !tbaa !28
  %161 = getelementptr inbounds %struct.trans_t, ptr %150, i64 0, i32 3
  store ptr null, ptr %161, align 8, !tbaa !29
  call void @def_list_mod(i64 noundef %151, i32 noundef %155, i32 noundef %120) #23
  %162 = load i32, ptr @epoch_length, align 4, !tbaa !13
  %163 = sdiv i32 %95, %162
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.epoch_t, ptr %52, i64 %164, i32 2
  %166 = load i32, ptr %165, align 8, !tbaa !17
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %171, label %168

168:                                              ; preds = %149
  %169 = getelementptr inbounds %struct.epoch_t, ptr %52, i64 %164
  store ptr %150, ptr %169, align 8, !tbaa !30
  %170 = getelementptr inbounds %struct.epoch_t, ptr %52, i64 %164, i32 1
  store ptr %150, ptr %170, align 8, !tbaa !31
  store i32 0, ptr %165, align 8, !tbaa !17
  br label %232

171:                                              ; preds = %149
  %172 = getelementptr inbounds %struct.epoch_t, ptr %52, i64 %164, i32 1
  %173 = load ptr, ptr %172, align 8, !tbaa !31
  %174 = getelementptr inbounds %struct.trans_t, ptr %173, i64 0, i32 3
  store ptr %150, ptr %174, align 8, !tbaa !29
  store ptr %150, ptr %172, align 8, !tbaa !31
  br label %232

175:                                              ; preds = %145, %142
  %176 = icmp sgt i32 %132, 0
  br i1 %176, label %177, label %232

177:                                              ; preds = %226, %175
  %178 = phi i32 [ %227, %226 ], [ %131, %175 ]
  %179 = phi i64 [ %228, %226 ], [ 0, %175 ]
  %180 = getelementptr inbounds %struct.epoch_t, ptr %52, i64 %179
  %181 = load ptr, ptr %180, align 8, !tbaa !7
  %182 = icmp eq ptr %181, null
  br i1 %182, label %226, label %183

183:                                              ; preds = %177
  %184 = trunc i64 %179 to i32
  br label %185

185:                                              ; preds = %220, %183
  %186 = phi ptr [ %222, %220 ], [ %181, %183 ]
  %187 = phi i32 [ %188, %220 ], [ -1, %183 ]
  %188 = add nsw i32 %187, 1
  %189 = load i32, ptr %186, align 8, !tbaa !25
  %190 = icmp eq i32 %189, 2
  br i1 %190, label %191, label %220

191:                                              ; preds = %185
  %192 = getelementptr inbounds %struct.trans_t, ptr %186, i64 0, i32 1
  %193 = load i64, ptr %192, align 8, !tbaa !27
  %194 = load i64, ptr %4, align 8, !tbaa !22
  %195 = icmp eq i64 %193, %194
  br i1 %195, label %196, label %220

196:                                              ; preds = %191
  %197 = call ptr @def_list_lookup(i64 noundef %193) #23
  %198 = icmp eq ptr %197, null
  br i1 %198, label %220, label %199

199:                                              ; preds = %196
  %200 = getelementptr inbounds %struct.def_list_t, ptr %197, i64 0, i32 2
  %201 = load i32, ptr %200, align 8, !tbaa !32
  %202 = zext i32 %201 to i64
  %203 = icmp eq i64 %179, %202
  br i1 %203, label %204, label %220

204:                                              ; preds = %199
  %205 = getelementptr inbounds %struct.def_list_t, ptr %197, i64 0, i32 3
  %206 = load i32, ptr %205, align 4, !tbaa !34
  %207 = icmp eq i32 %206, %188
  br i1 %207, label %208, label %220

208:                                              ; preds = %204
  %209 = load i64, ptr %4, align 8, !tbaa !22
  call void @conflict_list(i64 noundef %209) #23
  %210 = load i64, ptr %4, align 8, !tbaa !22
  %211 = getelementptr inbounds %struct.trans_t, ptr %186, i64 0, i32 2
  %212 = load i64, ptr %211, align 8, !tbaa !28
  %213 = load i32, ptr @epoch_length, align 4, !tbaa !13
  %214 = sdiv i32 %95, %213
  %215 = load i64, ptr %5, align 8, !tbaa !22
  %216 = sext i32 %214 to i64
  %217 = getelementptr inbounds %struct.epoch_t, ptr %52, i64 %216, i32 3
  %218 = load i64, ptr %217, align 8, !tbaa !23
  %219 = sub i64 %215, %218
  call void @hard_raw_mod(i64 noundef %210, i32 noundef %184, i32 noundef %188, i64 noundef %212, i32 noundef %214, i32 noundef %120, i64 noundef %219) #23
  br label %220

220:                                              ; preds = %208, %204, %199, %196, %191, %185
  %221 = getelementptr inbounds %struct.trans_t, ptr %186, i64 0, i32 3
  %222 = load ptr, ptr %221, align 8, !tbaa !7
  %223 = icmp eq ptr %222, null
  br i1 %223, label %224, label %185, !llvm.loop !35

224:                                              ; preds = %220
  %225 = load i32, ptr @epoch_length, align 4, !tbaa !13
  br label %226

226:                                              ; preds = %224, %177
  %227 = phi i32 [ %225, %224 ], [ %178, %177 ]
  %228 = add nuw nsw i64 %179, 1
  %229 = sdiv i32 %95, %227
  %230 = sext i32 %229 to i64
  %231 = icmp slt i64 %228, %230
  br i1 %231, label %177, label %232, !llvm.loop !36

232:                                              ; preds = %226, %175, %171, %168
  %233 = add nsw i32 %120, 1
  br label %118

234:                                              ; preds = %87
  %.lcssa = phi i32 [ %90, %87 ]
  %235 = call i32 @bcmp(ptr noundef nonnull dereferenceable(5) %3, ptr noundef nonnull dereferenceable(5) @.str.27, i64 5)
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %237, label %240

237:                                              ; preds = %234
  %238 = load ptr, ptr @list, align 8, !tbaa !7
  %239 = icmp eq ptr %238, null
  br i1 %239, label %253, label %244

240:                                              ; preds = %234
  %241 = load ptr, ptr @stderr, align 8, !tbaa !7
  %242 = load ptr, ptr %16, align 8, !tbaa !7
  %243 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %241, ptr noundef nonnull @.str.30, ptr noundef %242) #20
  call void @exit(i32 noundef 1) #18
  unreachable

244:                                              ; preds = %244, %237
  %245 = phi ptr [ %251, %244 ], [ %238, %237 ]
  %246 = getelementptr inbounds %struct.conf_list_t, ptr %245, i64 0, i32 2
  %247 = load i32, ptr %246, align 8, !tbaa !37
  %248 = getelementptr inbounds %struct.conf_list_t, ptr %245, i64 0, i32 1
  %249 = load i64, ptr %248, align 8, !tbaa !39
  %250 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.31, i32 noundef %247, i64 noundef %249) #21
  %251 = load ptr, ptr %245, align 8, !tbaa !7
  %252 = icmp eq ptr %251, null
  br i1 %252, label %253, label %244, !llvm.loop !40

253:                                              ; preds = %244, %237
  %254 = load i32, ptr @epoch_length, align 4, !tbaa !13
  %255 = sdiv i32 %.lcssa, %254
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds %struct.epoch_t, ptr %52, i64 %256, i32 3
  %258 = load i64, ptr %257, align 8, !tbaa !23
  %259 = getelementptr inbounds %struct.epoch_t, ptr %52, i64 %256, i32 1
  %260 = load ptr, ptr %259, align 8, !tbaa !31
  %261 = getelementptr inbounds %struct.trans_t, ptr %260, i64 0, i32 2
  %262 = load i64, ptr %261, align 8, !tbaa !28
  %263 = add i64 %262, %258
  %264 = getelementptr inbounds %struct.epoch_t, ptr %52, i64 %256, i32 4
  store i64 %263, ptr %264, align 8, !tbaa !24
  call void (...) @find_hard_raws() #23
  call void @speedup_test(ptr noundef nonnull %18) #23
  call void @specul_time_o(ptr noundef %52, i32 noundef %41, ptr noundef null, i32 noundef 3, i32 noundef 0, i32 noundef 0) #23
  call void @specul_time_r(ptr noundef %52, i32 noundef %41, i32 noundef 0, ptr noundef null, i32 noundef 3, i32 noundef 0, i32 noundef 0) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %3) #19
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: nofree nounwind optsize
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #6

; Function Attrs: nofree nounwind optsize
declare noundef ptr @fgets(ptr noundef, i32 noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(read)
declare i32 @atoi(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: nofree nounwind optsize
declare void @rewind(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: nofree nounwind optsize
declare noundef i32 @feof(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind optsize
declare noundef i32 @__isoc99_sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #9

; Function Attrs: nofree nounwind optsize
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: nounwind optsize uwtable
define internal void @speedup_test(ptr noundef %0) #0 {
  %2 = alloca [100 x i8], align 16
  %3 = alloca [100 x i8], align 16
  %4 = alloca [100 x i8], align 16
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #19
  tail call void @rewind(ptr noundef %0) #21
  %9 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull %2, ptr noundef nonnull %6) #23
  br label %10

10:                                               ; preds = %10, %1
  %11 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) %2) #23
  %12 = call ptr @fgets(ptr noundef nonnull %2, i32 noundef 100, ptr noundef %0) #21
  %13 = load i8, ptr %2, align 16, !tbaa !15
  %14 = icmp eq i8 %13, 69
  br i1 %14, label %15, label %10, !llvm.loop !41

15:                                               ; preds = %10
  %16 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %3, ptr noundef nonnull @.str.1, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %7) #23
  %17 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %2, ptr noundef nonnull @.str.2, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %8) #23
  %18 = load i64, ptr %7, align 8, !tbaa !22
  %19 = load i64, ptr %6, align 8, !tbaa !22
  %20 = sub i64 %18, %19
  store i64 %20, ptr @loop_time, align 8, !tbaa !22
  %21 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3.3, i64 noundef %20) #21
  %22 = load i64, ptr %8, align 8, !tbaa !22
  store i64 %22, ptr @prog_time, align 8, !tbaa !22
  %23 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i64 noundef %22) #21
  %24 = load i64, ptr %7, align 8, !tbaa !22
  %25 = load i64, ptr %6, align 8, !tbaa !22
  %26 = sub i64 %24, %25
  %27 = uitofp i64 %26 to double
  %28 = load i64, ptr %8, align 8, !tbaa !22
  %29 = uitofp i64 %28 to double
  %30 = fdiv double %27, %29
  %31 = fmul double %30, 1.000000e+02
  %32 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5.4, double noundef %31) #21
  call void @rewind(ptr noundef %0) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %2) #19
  ret void
}

; Function Attrs: optsize
declare i32 @__isoc99_fscanf(ptr noundef, ptr noundef, ...) local_unnamed_addr #10

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #11

; Function Attrs: nounwind optsize uwtable
define internal i64 @imix_test(ptr noundef %0) #0 {
  %2 = alloca [100 x i8], align 16
  %3 = alloca [100 x i8], align 16
  %4 = alloca [100 x i8], align 16
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #19
  tail call void @rewind(ptr noundef %0) #21
  %8 = call ptr @fgets(ptr noundef nonnull %2, i32 noundef 100, ptr noundef %0) #21
  %9 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull %2, ptr noundef nonnull %6) #23
  %10 = getelementptr inbounds [100 x i8], ptr %2, i64 0, i64 2
  br label %11

11:                                               ; preds = %11, %1
  %12 = phi i64 [ 0, %1 ], [ %16, %11 ]
  %13 = load i8, ptr %10, align 2, !tbaa !15
  %14 = icmp eq i8 %13, 58
  %15 = zext i1 %14 to i64
  %16 = add i64 %12, %15
  %17 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) %2) #23
  %18 = call ptr @fgets(ptr noundef nonnull %2, i32 noundef 100, ptr noundef %0) #21
  %19 = load i8, ptr %2, align 16, !tbaa !15
  %20 = icmp eq i8 %19, 69
  br i1 %20, label %21, label %11, !llvm.loop !42

21:                                               ; preds = %11
  %.lcssa = phi i64 [ %16, %11 ]
  %22 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %3, ptr noundef nonnull @.str.1, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %7) #23
  call void @rewind(ptr noundef %0) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %2) #19
  ret i64 %.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal void @find_hard_raws() #12 {
  %1 = load ptr, ptr @hard_raw_list, align 8, !tbaa !7
  %2 = icmp eq ptr %1, null
  br i1 %2, label %19, label %3

3:                                                ; preds = %16, %0
  %4 = phi ptr [ %17, %16 ], [ %1, %0 ]
  %5 = getelementptr inbounds %struct.hard_raw, ptr %4, i64 0, i32 8
  %6 = load i64, ptr %5, align 8, !tbaa !43
  %7 = getelementptr inbounds %struct.hard_raw, ptr %4, i64 0, i32 5
  %8 = load i64, ptr %7, align 8, !tbaa !45
  %9 = icmp ugt i64 %6, %8
  br i1 %9, label %10, label %16

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.hard_raw, ptr %4, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !46
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %10
  %15 = load ptr, ptr %4, align 8, !tbaa !47
  store ptr %15, ptr %12, align 8, !tbaa !47
  br label %16

16:                                               ; preds = %14, %10, %3
  %17 = load ptr, ptr %4, align 8, !tbaa !7
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %3, !llvm.loop !48

19:                                               ; preds = %16, %0
  ret void
}

; Function Attrs: nofree nounwind optsize uwtable
define internal void @specul_time_o(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #13 {
  %7 = icmp sgt i32 %1, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %6
  %9 = zext i32 %1 to i64
  br label %13

10:                                               ; preds = %13, %6
  %11 = load ptr, ptr @hard_raw_list, align 8, !tbaa !7
  %12 = icmp eq ptr %11, null
  br i1 %12, label %24, label %31

13:                                               ; preds = %13, %8
  %14 = phi i64 [ 0, %8 ], [ %22, %13 ]
  %15 = getelementptr inbounds %struct.epoch_t, ptr %0, i64 %14, i32 4
  %16 = load i64, ptr %15, align 8, !tbaa !24
  %17 = getelementptr inbounds %struct.epoch_t, ptr %0, i64 %14, i32 3
  %18 = load i64, ptr %17, align 8, !tbaa !23
  %19 = sub i64 %16, %18
  %20 = getelementptr inbounds %struct.epoch_t, ptr %0, i64 %14, i32 5
  store i64 %19, ptr %20, align 8, !tbaa !49
  %21 = getelementptr inbounds %struct.epoch_t, ptr %0, i64 %14, i32 6
  store i64 0, ptr %21, align 8, !tbaa !50
  %22 = add nuw nsw i64 %14, 1
  %23 = icmp eq i64 %22, %9
  br i1 %23, label %10, label %13, !llvm.loop !51

24:                                               ; preds = %50, %10
  %25 = phi i64 [ 0, %10 ], [ %51, %50 ]
  br i1 %7, label %29, label %26

26:                                               ; preds = %24
  %27 = getelementptr inbounds %struct.epoch_t, ptr %0, i64 0, i32 5
  %28 = load i64, ptr %27, align 8, !tbaa !49
  br label %76

29:                                               ; preds = %24
  %30 = zext i32 %1 to i64
  br label %54

31:                                               ; preds = %50, %10
  %32 = phi ptr [ %52, %50 ], [ %11, %10 ]
  %33 = phi i64 [ %51, %50 ], [ 0, %10 ]
  %34 = getelementptr inbounds %struct.hard_raw, ptr %32, i64 0, i32 5
  %35 = load i64, ptr %34, align 8, !tbaa !45
  %36 = getelementptr inbounds %struct.hard_raw, ptr %32, i64 0, i32 3
  %37 = load i32, ptr %36, align 8, !tbaa !52
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.epoch_t, ptr %0, i64 %38, i32 6
  %40 = load i64, ptr %39, align 8, !tbaa !50
  %41 = add i64 %40, %35
  %42 = getelementptr inbounds %struct.hard_raw, ptr %32, i64 0, i32 6
  %43 = load i32, ptr %42, align 8, !tbaa !53
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.epoch_t, ptr %0, i64 %44, i32 6
  %46 = load i64, ptr %45, align 8, !tbaa !50
  %47 = icmp ugt i64 %41, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %31
  store i64 %41, ptr %45, align 8, !tbaa !50
  %49 = add i64 %33, 1
  br label %50

50:                                               ; preds = %48, %31
  %51 = phi i64 [ %49, %48 ], [ %33, %31 ]
  %52 = load ptr, ptr %32, align 8, !tbaa !7
  %53 = icmp eq ptr %52, null
  br i1 %53, label %24, label %31, !llvm.loop !54

54:                                               ; preds = %54, %29
  %55 = phi i64 [ 0, %29 ], [ %61, %54 ]
  %56 = getelementptr inbounds %struct.epoch_t, ptr %0, i64 %55, i32 5
  %57 = load i64, ptr %56, align 8, !tbaa !49
  %58 = getelementptr inbounds %struct.epoch_t, ptr %0, i64 %55, i32 6
  %59 = load i64, ptr %58, align 8, !tbaa !50
  %60 = add i64 %59, %57
  store i64 %60, ptr %56, align 8, !tbaa !49
  %61 = add nuw nsw i64 %55, 1
  %62 = icmp eq i64 %61, %30
  br i1 %62, label %63, label %54, !llvm.loop !55

63:                                               ; preds = %54
  %64 = getelementptr inbounds %struct.epoch_t, ptr %0, i64 0, i32 5
  %65 = load i64, ptr %64, align 8, !tbaa !49
  br i1 %7, label %66, label %76

66:                                               ; preds = %63
  %67 = zext i32 %1 to i64
  br label %68

68:                                               ; preds = %68, %66
  %69 = phi i64 [ 0, %66 ], [ %74, %68 ]
  %70 = phi i64 [ %65, %66 ], [ %73, %68 ]
  %71 = getelementptr inbounds %struct.epoch_t, ptr %0, i64 %69, i32 5
  %72 = load i64, ptr %71, align 8, !tbaa !49
  %73 = tail call i64 @llvm.umax.i64(i64 %72, i64 %70)
  %74 = add nuw nsw i64 %69, 1
  %75 = icmp eq i64 %74, %67
  br i1 %75, label %76, label %68, !llvm.loop !56

76:                                               ; preds = %68, %63, %26
  %77 = phi i64 [ %65, %63 ], [ %28, %26 ], [ %73, %68 ]
  %78 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %79 = sext i32 %1 to i64
  %80 = add i64 %25, %79
  %81 = sext i32 %4 to i64
  %82 = mul i64 %80, %81
  %83 = mul nsw i32 %5, %1
  %84 = sext i32 %83 to i64
  %85 = add i64 %82, %84
  %86 = add i64 %85, %77
  %87 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i64 noundef %86) #21
  %88 = and i32 %3, -3
  %89 = icmp eq i32 %88, 1
  br i1 %89, label %90, label %96

90:                                               ; preds = %76
  %91 = load i64, ptr @loop_time, align 8, !tbaa !22
  %92 = uitofp i64 %91 to double
  %93 = uitofp i64 %86 to double
  %94 = fdiv double %92, %93
  %95 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8.11, double noundef %94) #21
  br label %96

96:                                               ; preds = %90, %76
  %97 = and i32 %3, -2
  %98 = icmp eq i32 %97, 2
  br i1 %98, label %99, label %108

99:                                               ; preds = %96
  %100 = load i64, ptr @prog_time, align 8, !tbaa !22
  %101 = uitofp i64 %100 to double
  %102 = add i64 %100, %86
  %103 = load i64, ptr @loop_time, align 8, !tbaa !22
  %104 = sub i64 %102, %103
  %105 = uitofp i64 %104 to double
  %106 = fdiv double %101, %105
  %107 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, double noundef %106) #21
  br label %108

108:                                              ; preds = %99, %96
  %109 = icmp eq ptr %2, null
  br i1 %109, label %127, label %110

110:                                              ; preds = %108
  br i1 %89, label %111, label %117

111:                                              ; preds = %110
  %112 = load i64, ptr @loop_time, align 8, !tbaa !22
  %113 = uitofp i64 %112 to double
  %114 = uitofp i64 %86 to double
  %115 = fdiv double %113, %114
  %116 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %2, ptr noundef nonnull @.str.10.12, double noundef %115) #21
  br label %117

117:                                              ; preds = %111, %110
  br i1 %98, label %118, label %127

118:                                              ; preds = %117
  %119 = load i64, ptr @prog_time, align 8, !tbaa !22
  %120 = uitofp i64 %119 to double
  %121 = add i64 %119, %86
  %122 = load i64, ptr @loop_time, align 8, !tbaa !22
  %123 = sub i64 %121, %122
  %124 = uitofp i64 %123 to double
  %125 = fdiv double %120, %124
  %126 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %2, ptr noundef nonnull @.str.11.13, double noundef %125) #21
  br label %127

127:                                              ; preds = %118, %117, %108
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #14

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize uwtable
define internal void @specul_time_r(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) #13 {
  %8 = icmp eq i32 %2, 0
  %9 = icmp sgt i32 %1, 0
  br i1 %8, label %10, label %80

10:                                               ; preds = %7
  %11 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.16)
  br i1 %9, label %12, label %14

12:                                               ; preds = %10
  %13 = zext i32 %1 to i64
  br label %17

14:                                               ; preds = %17, %10
  %15 = load ptr, ptr @hard_raw_list, align 8, !tbaa !7
  %16 = icmp eq ptr %15, null
  br i1 %16, label %28, label %32

17:                                               ; preds = %17, %12
  %18 = phi i64 [ 0, %12 ], [ %26, %17 ]
  %19 = getelementptr inbounds %struct.epoch_t, ptr %0, i64 %18, i32 4
  %20 = load i64, ptr %19, align 8, !tbaa !24
  %21 = getelementptr inbounds %struct.epoch_t, ptr %0, i64 %18, i32 3
  %22 = load i64, ptr %21, align 8, !tbaa !23
  %23 = sub i64 %20, %22
  %24 = getelementptr inbounds %struct.epoch_t, ptr %0, i64 %18, i32 5
  store i64 %23, ptr %24, align 8, !tbaa !49
  %25 = getelementptr inbounds %struct.epoch_t, ptr %0, i64 %18, i32 6
  store i64 0, ptr %25, align 8, !tbaa !50
  %26 = add nuw nsw i64 %18, 1
  %27 = icmp eq i64 %26, %13
  br i1 %27, label %14, label %17, !llvm.loop !57

28:                                               ; preds = %54, %14
  %29 = phi i64 [ 0, %14 ], [ %55, %54 ]
  br i1 %9, label %30, label %186

30:                                               ; preds = %28
  %31 = zext i32 %1 to i64
  br label %58

32:                                               ; preds = %54, %14
  %33 = phi ptr [ %56, %54 ], [ %15, %14 ]
  %34 = phi i64 [ %55, %54 ], [ 0, %14 ]
  %35 = getelementptr inbounds %struct.hard_raw, ptr %33, i64 0, i32 5
  %36 = load i64, ptr %35, align 8, !tbaa !45
  %37 = getelementptr inbounds %struct.hard_raw, ptr %33, i64 0, i32 3
  %38 = load i32, ptr %37, align 8, !tbaa !52
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.epoch_t, ptr %0, i64 %39, i32 6
  %41 = load i64, ptr %40, align 8, !tbaa !50
  %42 = add i64 %41, %36
  %43 = getelementptr inbounds %struct.hard_raw, ptr %33, i64 0, i32 6
  %44 = load i32, ptr %43, align 8, !tbaa !53
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.epoch_t, ptr %0, i64 %45, i32 6
  %47 = load i64, ptr %46, align 8, !tbaa !50
  %48 = icmp ugt i64 %42, %47
  br i1 %48, label %49, label %54

49:                                               ; preds = %32
  %50 = getelementptr inbounds %struct.epoch_t, ptr %0, i64 %39, i32 5
  %51 = load i64, ptr %50, align 8, !tbaa !49
  %52 = add i64 %51, %41
  store i64 %52, ptr %46, align 8, !tbaa !50
  %53 = add i64 %34, 1
  br label %54

54:                                               ; preds = %49, %32
  %55 = phi i64 [ %53, %49 ], [ %34, %32 ]
  %56 = load ptr, ptr %33, align 8, !tbaa !7
  %57 = icmp eq ptr %56, null
  br i1 %57, label %28, label %32, !llvm.loop !58

58:                                               ; preds = %58, %30
  %59 = phi i64 [ 0, %30 ], [ %65, %58 ]
  %60 = getelementptr inbounds %struct.epoch_t, ptr %0, i64 %59, i32 5
  %61 = load i64, ptr %60, align 8, !tbaa !49
  %62 = getelementptr inbounds %struct.epoch_t, ptr %0, i64 %59, i32 6
  %63 = load i64, ptr %62, align 8, !tbaa !50
  %64 = add i64 %63, %61
  store i64 %64, ptr %60, align 8, !tbaa !49
  %65 = add nuw nsw i64 %59, 1
  %66 = icmp eq i64 %65, %31
  br i1 %66, label %67, label %58, !llvm.loop !59

67:                                               ; preds = %58
  %68 = getelementptr inbounds %struct.epoch_t, ptr %0, i64 0, i32 5
  %69 = load i64, ptr %68, align 8, !tbaa !49
  br i1 %9, label %70, label %190

70:                                               ; preds = %67
  %71 = zext i32 %1 to i64
  br label %72

72:                                               ; preds = %72, %70
  %73 = phi i64 [ 0, %70 ], [ %78, %72 ]
  %74 = phi i64 [ %69, %70 ], [ %77, %72 ]
  %75 = getelementptr inbounds %struct.epoch_t, ptr %0, i64 %73, i32 5
  %76 = load i64, ptr %75, align 8, !tbaa !49
  %77 = tail call i64 @llvm.umax.i64(i64 %76, i64 %74)
  %78 = add nuw nsw i64 %73, 1
  %79 = icmp eq i64 %78, %71
  br i1 %79, label %190, label %72, !llvm.loop !60

80:                                               ; preds = %7
  %81 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13.16, i32 noundef %2) #21
  br i1 %9, label %82, label %84

82:                                               ; preds = %80
  %83 = zext i32 %1 to i64
  br label %90

84:                                               ; preds = %90, %80
  %85 = icmp slt i32 %2, %1
  br i1 %85, label %86, label %105

86:                                               ; preds = %84
  %87 = sext i32 %2 to i64
  %88 = sext i32 %1 to i64
  %89 = icmp sgt i32 %2, 0
  br label %108

90:                                               ; preds = %90, %82
  %91 = phi i64 [ 0, %82 ], [ %99, %90 ]
  %92 = getelementptr inbounds %struct.epoch_t, ptr %0, i64 %91, i32 4
  %93 = load i64, ptr %92, align 8, !tbaa !24
  %94 = getelementptr inbounds %struct.epoch_t, ptr %0, i64 %91, i32 3
  %95 = load i64, ptr %94, align 8, !tbaa !23
  %96 = sub i64 %93, %95
  %97 = getelementptr inbounds %struct.epoch_t, ptr %0, i64 %91, i32 5
  store i64 %96, ptr %97, align 8, !tbaa !49
  %98 = getelementptr inbounds %struct.epoch_t, ptr %0, i64 %91, i32 6
  store i64 0, ptr %98, align 8, !tbaa !50
  %99 = add nuw nsw i64 %91, 1
  %100 = icmp eq i64 %99, %83
  br i1 %100, label %84, label %90, !llvm.loop !61

101:                                              ; preds = %128, %115, %111
  %102 = phi i64 [ %112, %111 ], [ %116, %115 ], [ %116, %128 ]
  %103 = icmp slt i64 %102, %88
  %104 = add i32 %110, %2
  br i1 %103, label %108, label %105, !llvm.loop !62

105:                                              ; preds = %101, %84
  %106 = load ptr, ptr @hard_raw_list, align 8, !tbaa !7
  %107 = icmp eq ptr %106, null
  br i1 %107, label %133, label %137

108:                                              ; preds = %101, %86
  %109 = phi i64 [ %87, %86 ], [ %102, %101 ]
  %110 = phi i32 [ 0, %86 ], [ %104, %101 ]
  br i1 %89, label %113, label %111

111:                                              ; preds = %108
  %112 = add i64 %109, %87
  br label %101

113:                                              ; preds = %108
  %114 = sext i32 %110 to i64
  br label %117

115:                                              ; preds = %117
  %.lcssa = phi i64 [ %125, %117 ]
  %116 = add i64 %109, %87
  br i1 %89, label %128, label %101

117:                                              ; preds = %117, %113
  %118 = phi i64 [ %114, %113 ], [ %126, %117 ]
  %119 = phi i64 [ 0, %113 ], [ %125, %117 ]
  %120 = getelementptr inbounds %struct.epoch_t, ptr %0, i64 %118, i32 5
  %121 = load i64, ptr %120, align 8, !tbaa !49
  %122 = getelementptr inbounds %struct.epoch_t, ptr %0, i64 %118, i32 6
  %123 = load i64, ptr %122, align 8, !tbaa !50
  %124 = add i64 %123, %121
  %125 = tail call i64 @llvm.umax.i64(i64 %124, i64 %119)
  %126 = add nsw i64 %118, 1
  %127 = icmp slt i64 %126, %109
  br i1 %127, label %117, label %115, !llvm.loop !63

128:                                              ; preds = %128, %115
  %129 = phi i64 [ %131, %128 ], [ %109, %115 ]
  %130 = getelementptr inbounds %struct.epoch_t, ptr %0, i64 %129, i32 6
  store i64 %.lcssa, ptr %130, align 8, !tbaa !50
  %131 = add i64 %129, 1
  %132 = icmp slt i64 %131, %116
  br i1 %132, label %128, label %101, !llvm.loop !64

133:                                              ; preds = %160, %105
  %134 = phi i64 [ 0, %105 ], [ %161, %160 ]
  br i1 %9, label %135, label %186

135:                                              ; preds = %133
  %136 = zext i32 %1 to i64
  br label %164

137:                                              ; preds = %160, %105
  %138 = phi ptr [ %162, %160 ], [ %106, %105 ]
  %139 = phi i64 [ %161, %160 ], [ 0, %105 ]
  %140 = getelementptr inbounds %struct.hard_raw, ptr %138, i64 0, i32 5
  %141 = load i64, ptr %140, align 8, !tbaa !45
  %142 = getelementptr inbounds %struct.hard_raw, ptr %138, i64 0, i32 3
  %143 = load i32, ptr %142, align 8, !tbaa !52
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.epoch_t, ptr %0, i64 %144, i32 6
  %146 = load i64, ptr %145, align 8, !tbaa !50
  %147 = add i64 %146, %141
  %148 = getelementptr inbounds %struct.hard_raw, ptr %138, i64 0, i32 6
  %149 = load i32, ptr %148, align 8, !tbaa !53
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.epoch_t, ptr %0, i64 %150, i32 6
  %152 = load i64, ptr %151, align 8, !tbaa !50
  %153 = icmp ugt i64 %147, %152
  br i1 %153, label %154, label %160

154:                                              ; preds = %137
  %155 = getelementptr inbounds %struct.epoch_t, ptr %0, i64 %144, i32 5
  %156 = load i64, ptr %155, align 8, !tbaa !49
  %157 = add i64 %152, %146
  %158 = add i64 %157, %156
  store i64 %158, ptr %151, align 8, !tbaa !50
  %159 = add i64 %139, 1
  br label %160

160:                                              ; preds = %154, %137
  %161 = phi i64 [ %159, %154 ], [ %139, %137 ]
  %162 = load ptr, ptr %138, align 8, !tbaa !7
  %163 = icmp eq ptr %162, null
  br i1 %163, label %133, label %137, !llvm.loop !65

164:                                              ; preds = %164, %135
  %165 = phi i64 [ 0, %135 ], [ %171, %164 ]
  %166 = getelementptr inbounds %struct.epoch_t, ptr %0, i64 %165, i32 5
  %167 = load i64, ptr %166, align 8, !tbaa !49
  %168 = getelementptr inbounds %struct.epoch_t, ptr %0, i64 %165, i32 6
  %169 = load i64, ptr %168, align 8, !tbaa !50
  %170 = add i64 %169, %167
  store i64 %170, ptr %166, align 8, !tbaa !49
  %171 = add nuw nsw i64 %165, 1
  %172 = icmp eq i64 %171, %136
  br i1 %172, label %173, label %164, !llvm.loop !66

173:                                              ; preds = %164
  %174 = getelementptr inbounds %struct.epoch_t, ptr %0, i64 0, i32 5
  %175 = load i64, ptr %174, align 8, !tbaa !49
  br i1 %9, label %176, label %190

176:                                              ; preds = %173
  %177 = zext i32 %1 to i64
  br label %178

178:                                              ; preds = %178, %176
  %179 = phi i64 [ 0, %176 ], [ %184, %178 ]
  %180 = phi i64 [ %175, %176 ], [ %183, %178 ]
  %181 = getelementptr inbounds %struct.epoch_t, ptr %0, i64 %179, i32 5
  %182 = load i64, ptr %181, align 8, !tbaa !49
  %183 = tail call i64 @llvm.umax.i64(i64 %182, i64 %180)
  %184 = add nuw nsw i64 %179, 1
  %185 = icmp eq i64 %184, %177
  br i1 %185, label %190, label %178, !llvm.loop !67

186:                                              ; preds = %133, %28
  %187 = phi i64 [ %29, %28 ], [ %134, %133 ]
  %188 = getelementptr inbounds %struct.epoch_t, ptr %0, i64 0, i32 5
  %189 = load i64, ptr %188, align 8, !tbaa !49
  br label %190

190:                                              ; preds = %186, %178, %173, %72, %67
  %191 = phi i64 [ %69, %67 ], [ %175, %173 ], [ %189, %186 ], [ %77, %72 ], [ %183, %178 ]
  %192 = phi i64 [ %29, %67 ], [ %134, %173 ], [ %187, %186 ], [ %29, %72 ], [ %134, %178 ]
  %193 = sext i32 %1 to i64
  %194 = add i64 %192, %193
  %195 = sext i32 %5 to i64
  %196 = mul i64 %194, %195
  %197 = mul nsw i32 %6, %1
  %198 = sext i32 %197 to i64
  %199 = add i64 %191, %198
  %200 = add i64 %199, %196
  %201 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i64 noundef %200) #21
  %202 = and i32 %4, -3
  %203 = icmp eq i32 %202, 1
  br i1 %203, label %204, label %210

204:                                              ; preds = %190
  %205 = load i64, ptr @loop_time, align 8, !tbaa !22
  %206 = uitofp i64 %205 to double
  %207 = uitofp i64 %200 to double
  %208 = fdiv double %206, %207
  %209 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8.11, double noundef %208) #21
  br label %210

210:                                              ; preds = %204, %190
  %211 = and i32 %4, -2
  %212 = icmp eq i32 %211, 2
  br i1 %212, label %213, label %222

213:                                              ; preds = %210
  %214 = load i64, ptr @prog_time, align 8, !tbaa !22
  %215 = uitofp i64 %214 to double
  %216 = add i64 %214, %200
  %217 = load i64, ptr @loop_time, align 8, !tbaa !22
  %218 = sub i64 %216, %217
  %219 = uitofp i64 %218 to double
  %220 = fdiv double %215, %219
  %221 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, double noundef %220) #21
  br label %222

222:                                              ; preds = %213, %210
  %223 = icmp eq ptr %3, null
  br i1 %223, label %241, label %224

224:                                              ; preds = %222
  br i1 %203, label %225, label %231

225:                                              ; preds = %224
  %226 = load i64, ptr @loop_time, align 8, !tbaa !22
  %227 = uitofp i64 %226 to double
  %228 = uitofp i64 %200 to double
  %229 = fdiv double %227, %228
  %230 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %3, ptr noundef nonnull @.str.14.17, i32 noundef %2, double noundef %229) #21
  br label %231

231:                                              ; preds = %225, %224
  br i1 %212, label %232, label %241

232:                                              ; preds = %231
  %233 = load i64, ptr @prog_time, align 8, !tbaa !22
  %234 = uitofp i64 %233 to double
  %235 = add i64 %233, %200
  %236 = load i64, ptr @loop_time, align 8, !tbaa !22
  %237 = sub i64 %235, %236
  %238 = uitofp i64 %237 to double
  %239 = fdiv double %234, %238
  %240 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %3, ptr noundef nonnull @.str.15.18, i32 noundef %2, double noundef %239) #21
  br label %241

241:                                              ; preds = %232, %231, %222
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @hard_raw_mod(i64 noundef %0, i32 noundef %1, i32 noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, i64 noundef %6) #0 {
  %8 = load i1, ptr @hard_raw_mod.hr_empty, align 4
  %9 = tail call noalias dereferenceable_or_null(56) ptr @malloc(i64 noundef 56) #16
  br i1 %8, label %23, label %10

10:                                               ; preds = %7
  store ptr %9, ptr @hard_raw_list, align 8, !tbaa !7
  %11 = icmp eq ptr %9, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %10
  %13 = load ptr, ptr @stderr, align 8, !tbaa !7
  %14 = tail call i64 @fwrite(ptr nonnull @.str.23, i64 35, i64 1, ptr %13) #17
  tail call void @exit(i32 noundef 1) #18
  unreachable

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.hard_raw, ptr %9, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, i8 0, i64 16, i1 false)
  store i64 %0, ptr %16, align 8, !tbaa !68
  %17 = getelementptr inbounds %struct.hard_raw, ptr %9, i64 0, i32 3
  store i32 %1, ptr %17, align 8, !tbaa !52
  %18 = getelementptr inbounds %struct.hard_raw, ptr %9, i64 0, i32 4
  store i32 %2, ptr %18, align 4, !tbaa !69
  %19 = getelementptr inbounds %struct.hard_raw, ptr %9, i64 0, i32 5
  store i64 %3, ptr %19, align 8, !tbaa !45
  %20 = getelementptr inbounds %struct.hard_raw, ptr %9, i64 0, i32 6
  store i32 %4, ptr %20, align 8, !tbaa !53
  %21 = getelementptr inbounds %struct.hard_raw, ptr %9, i64 0, i32 7
  store i32 %5, ptr %21, align 4, !tbaa !70
  %22 = getelementptr inbounds %struct.hard_raw, ptr %9, i64 0, i32 8
  store i64 %6, ptr %22, align 8, !tbaa !43
  store i1 true, ptr @hard_raw_mod.hr_empty, align 4
  store ptr %9, ptr @hard_raw_mod.last, align 8, !tbaa !7
  br label %33

23:                                               ; preds = %7
  %24 = load ptr, ptr @hard_raw_mod.last, align 8, !tbaa !7
  store ptr %9, ptr %24, align 8, !tbaa !47
  %25 = getelementptr inbounds %struct.hard_raw, ptr %9, i64 0, i32 1
  store ptr %24, ptr %25, align 8, !tbaa !46
  store ptr %9, ptr @hard_raw_mod.last, align 8, !tbaa !7
  store ptr null, ptr %9, align 8, !tbaa !47
  %26 = getelementptr inbounds %struct.hard_raw, ptr %9, i64 0, i32 2
  store i64 %0, ptr %26, align 8, !tbaa !68
  %27 = getelementptr inbounds %struct.hard_raw, ptr %9, i64 0, i32 3
  store i32 %1, ptr %27, align 8, !tbaa !52
  %28 = getelementptr inbounds %struct.hard_raw, ptr %9, i64 0, i32 4
  store i32 %2, ptr %28, align 4, !tbaa !69
  %29 = getelementptr inbounds %struct.hard_raw, ptr %9, i64 0, i32 5
  store i64 %3, ptr %29, align 8, !tbaa !45
  %30 = getelementptr inbounds %struct.hard_raw, ptr %9, i64 0, i32 6
  store i32 %4, ptr %30, align 8, !tbaa !53
  %31 = getelementptr inbounds %struct.hard_raw, ptr %9, i64 0, i32 7
  store i32 %5, ptr %31, align 4, !tbaa !70
  %32 = getelementptr inbounds %struct.hard_raw, ptr %9, i64 0, i32 8
  store i64 %6, ptr %32, align 8, !tbaa !43
  br label %33

33:                                               ; preds = %23, %15
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal ptr @def_list_lookup(i64 noundef %0) #15 {
  %2 = load i32, ptr @def_table_size, align 4, !tbaa !13
  %3 = sext i32 %2 to i64
  %4 = urem i64 %0, %3
  %5 = load ptr, ptr @def_table, align 8, !tbaa !7
  %6 = getelementptr inbounds ptr, ptr %5, i64 %4
  br label %7

7:                                                ; preds = %11, %1
  %8 = phi ptr [ %6, %1 ], [ %9, %11 ]
  %9 = load ptr, ptr %8, align 8, !tbaa !7
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.def_list_t, ptr %9, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !71
  %14 = icmp eq i64 %13, %0
  br i1 %14, label %15, label %7, !llvm.loop !72

15:                                               ; preds = %11, %7
  %.lcssa = phi ptr [ %9, %11 ], [ %9, %7 ]
  ret ptr %.lcssa
}

; Function Attrs: nounwind optsize uwtable
define internal void @def_list_mod(i64 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = load i32, ptr @def_table_size, align 4, !tbaa !13
  %5 = sext i32 %4 to i64
  %6 = urem i64 %0, %5
  %7 = load ptr, ptr @def_table, align 8, !tbaa !7
  %8 = getelementptr inbounds ptr, ptr %7, i64 %6
  %9 = load ptr, ptr %8, align 8, !tbaa !7
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %21

11:                                               ; preds = %3
  %12 = tail call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #16
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %11
  %15 = load ptr, ptr @stderr, align 8, !tbaa !7
  %16 = tail call i64 @fwrite(ptr nonnull @.str.23, i64 35, i64 1, ptr %15) #17
  tail call void @exit(i32 noundef 1) #18
  unreachable

17:                                               ; preds = %11
  store ptr null, ptr %12, align 8, !tbaa !73
  %18 = getelementptr inbounds %struct.def_list_t, ptr %12, i64 0, i32 1
  store i64 %0, ptr %18, align 8, !tbaa !71
  %19 = getelementptr inbounds %struct.def_list_t, ptr %12, i64 0, i32 2
  store i32 %1, ptr %19, align 8, !tbaa !32
  %20 = getelementptr inbounds %struct.def_list_t, ptr %12, i64 0, i32 3
  store i32 %2, ptr %20, align 4, !tbaa !34
  store ptr %12, ptr %8, align 8, !tbaa !7
  br label %42

21:                                               ; preds = %29, %3
  %22 = phi ptr [ %30, %29 ], [ %9, %3 ]
  %23 = getelementptr inbounds %struct.def_list_t, ptr %22, i64 0, i32 1
  %24 = load i64, ptr %23, align 8, !tbaa !71
  %25 = icmp eq i64 %24, %0
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %.lcssa = phi ptr [ %22, %21 ]
  %27 = getelementptr inbounds %struct.def_list_t, ptr %.lcssa, i64 0, i32 2
  store i32 %1, ptr %27, align 8, !tbaa !32
  %28 = getelementptr inbounds %struct.def_list_t, ptr %.lcssa, i64 0, i32 3
  store i32 %2, ptr %28, align 4, !tbaa !34
  br label %42

29:                                               ; preds = %21
  %30 = load ptr, ptr %22, align 8, !tbaa !73
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %21, !llvm.loop !74

32:                                               ; preds = %29
  %.lcssa1 = phi ptr [ %22, %29 ]
  %33 = tail call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #16
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load ptr, ptr @stderr, align 8, !tbaa !7
  %37 = tail call i64 @fwrite(ptr nonnull @.str.23, i64 35, i64 1, ptr %36) #17
  tail call void @exit(i32 noundef 1) #18
  unreachable

38:                                               ; preds = %32
  store ptr null, ptr %33, align 8, !tbaa !73
  %39 = getelementptr inbounds %struct.def_list_t, ptr %33, i64 0, i32 1
  store i64 %0, ptr %39, align 8, !tbaa !71
  %40 = getelementptr inbounds %struct.def_list_t, ptr %33, i64 0, i32 2
  store i32 %1, ptr %40, align 8, !tbaa !32
  %41 = getelementptr inbounds %struct.def_list_t, ptr %33, i64 0, i32 3
  store i32 %2, ptr %41, align 4, !tbaa !34
  store ptr %33, ptr %.lcssa1, align 8, !tbaa !73
  br label %42

42:                                               ; preds = %38, %26, %17
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @conflict_list(i64 noundef %0) #0 {
  %2 = load i32, ptr @first, align 4, !tbaa !13
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %7

4:                                                ; preds = %1
  %5 = load ptr, ptr @list, align 8, !tbaa !7
  %6 = icmp eq ptr %5, null
  br i1 %6, label %28, label %19

7:                                                ; preds = %1
  %8 = tail call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #16
  store ptr %8, ptr @list, align 8, !tbaa !7
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %7
  %11 = load ptr, ptr @stderr, align 8, !tbaa !7
  %12 = tail call i64 @fwrite(ptr nonnull @.str.23, i64 35, i64 1, ptr %11) #17
  tail call void @exit(i32 noundef 1) #18
  unreachable

13:                                               ; preds = %7
  store ptr null, ptr %8, align 8, !tbaa !75
  %14 = getelementptr inbounds %struct.conf_list_t, ptr %8, i64 0, i32 1
  store i64 %0, ptr %14, align 8, !tbaa !39
  %15 = getelementptr inbounds %struct.conf_list_t, ptr %8, i64 0, i32 2
  store i32 1, ptr %15, align 8, !tbaa !37
  store i32 0, ptr @first, align 4, !tbaa !13
  store ptr %8, ptr @conflict_list.next, align 8, !tbaa !7
  br label %38

16:                                               ; preds = %19
  %17 = load ptr, ptr %20, align 8, !tbaa !7
  %18 = icmp eq ptr %17, null
  br i1 %18, label %28, label %19, !llvm.loop !76

19:                                               ; preds = %16, %4
  %20 = phi ptr [ %17, %16 ], [ %5, %4 ]
  %21 = getelementptr inbounds %struct.conf_list_t, ptr %20, i64 0, i32 1
  %22 = load i64, ptr %21, align 8, !tbaa !39
  %23 = icmp eq i64 %22, %0
  br i1 %23, label %24, label %16, !llvm.loop !76

24:                                               ; preds = %19
  %.lcssa = phi ptr [ %20, %19 ]
  %25 = getelementptr inbounds %struct.conf_list_t, ptr %.lcssa, i64 0, i32 2
  %26 = load i32, ptr %25, align 8, !tbaa !37
  %27 = add nsw i32 %26, 1
  store i32 %27, ptr %25, align 8, !tbaa !37
  br label %38

28:                                               ; preds = %16, %4
  %29 = phi ptr [ null, %4 ], [ %20, %16 ]
  %30 = tail call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #16
  store ptr %30, ptr @conflict_list.next, align 8, !tbaa !7
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = load ptr, ptr @stderr, align 8, !tbaa !7
  %34 = tail call i64 @fwrite(ptr nonnull @.str.23, i64 35, i64 1, ptr %33) #17
  tail call void @exit(i32 noundef 1) #18
  unreachable

35:                                               ; preds = %28
  store ptr null, ptr %30, align 8, !tbaa !75
  %36 = getelementptr inbounds %struct.conf_list_t, ptr %30, i64 0, i32 1
  store i64 %0, ptr %36, align 8, !tbaa !39
  %37 = getelementptr inbounds %struct.conf_list_t, ptr %30, i64 0, i32 2
  store i32 1, ptr %37, align 8, !tbaa !37
  store ptr %30, ptr %29, align 8, !tbaa !75
  br label %38

38:                                               ; preds = %35, %24, %13
  ret void
}

attributes #0 = { nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { noreturn nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind optsize willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { nofree nounwind willreturn memory(argmem: read) }
attributes #10 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nofree norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nounwind optsize allocsize(0) }
attributes #17 = { cold }
attributes #18 = { noreturn nounwind optsize }
attributes #19 = { nounwind }
attributes #20 = { cold optsize }
attributes #21 = { optsize }
attributes #22 = { nounwind optsize willreturn memory(read) }
attributes #23 = { nounwind optsize }

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
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!14, !14, i64 0}
!14 = !{!"int", !9, i64 0}
!15 = !{!9, !9, i64 0}
!16 = distinct !{!16, !12}
!17 = !{!18, !14, i64 16}
!18 = !{!"", !8, i64 0, !8, i64 8, !14, i64 16, !19, i64 24, !19, i64 32, !19, i64 40, !19, i64 48}
!19 = !{!"long", !9, i64 0}
!20 = distinct !{!20, !12}
!21 = distinct !{!21, !12}
!22 = !{!19, !19, i64 0}
!23 = !{!18, !19, i64 24}
!24 = !{!18, !19, i64 32}
!25 = !{!26, !9, i64 0}
!26 = !{!"", !9, i64 0, !19, i64 8, !19, i64 16, !8, i64 24}
!27 = !{!26, !19, i64 8}
!28 = !{!26, !19, i64 16}
!29 = !{!26, !8, i64 24}
!30 = !{!18, !8, i64 0}
!31 = !{!18, !8, i64 8}
!32 = !{!33, !14, i64 16}
!33 = !{!"", !8, i64 0, !19, i64 8, !14, i64 16, !14, i64 20}
!34 = !{!33, !14, i64 20}
!35 = distinct !{!35, !12}
!36 = distinct !{!36, !12}
!37 = !{!38, !14, i64 16}
!38 = !{!"", !8, i64 0, !19, i64 8, !14, i64 16}
!39 = !{!38, !19, i64 8}
!40 = distinct !{!40, !12}
!41 = distinct !{!41, !12}
!42 = distinct !{!42, !12}
!43 = !{!44, !19, i64 48}
!44 = !{!"hard_raw", !8, i64 0, !8, i64 8, !19, i64 16, !14, i64 24, !14, i64 28, !19, i64 32, !14, i64 40, !14, i64 44, !19, i64 48}
!45 = !{!44, !19, i64 32}
!46 = !{!44, !8, i64 8}
!47 = !{!44, !8, i64 0}
!48 = distinct !{!48, !12}
!49 = !{!18, !19, i64 40}
!50 = !{!18, !19, i64 48}
!51 = distinct !{!51, !12}
!52 = !{!44, !14, i64 24}
!53 = !{!44, !14, i64 40}
!54 = distinct !{!54, !12}
!55 = distinct !{!55, !12}
!56 = distinct !{!56, !12}
!57 = distinct !{!57, !12}
!58 = distinct !{!58, !12}
!59 = distinct !{!59, !12}
!60 = distinct !{!60, !12}
!61 = distinct !{!61, !12}
!62 = distinct !{!62, !12}
!63 = distinct !{!63, !12}
!64 = distinct !{!64, !12}
!65 = distinct !{!65, !12}
!66 = distinct !{!66, !12}
!67 = distinct !{!67, !12}
!68 = !{!44, !19, i64 16}
!69 = !{!44, !14, i64 28}
!70 = !{!44, !14, i64 44}
!71 = !{!33, !19, i64 8}
!72 = distinct !{!72, !12}
!73 = !{!33, !8, i64 0}
!74 = distinct !{!74, !12}
!75 = !{!38, !8, i64 0}
!76 = distinct !{!76, !12}
