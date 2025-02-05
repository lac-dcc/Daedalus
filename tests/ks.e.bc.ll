; ModuleID = 'ks.e.bc.ll'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._ModuleList = type { ptr, ptr }
%struct.anon = type { i64, i64, i64 }
%struct._Module = type { ptr, i64 }

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"(%s:%s():%d): \00", align 1
@.str.2 = private unnamed_addr constant [62 x i8] c"/src/llvm-test-suite/MultiSource/Benchmarks/Ptrdist/ks/KS-1.c\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"ReadData\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"unable to open input file [%s]\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"%lu %lu\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"unable to parse header in file [%s]\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1
@.str.9 = private unnamed_addr constant [38 x i8] c"unable to allocate a module list node\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"NetsToModules\00", align 1
@.str.11 = private unnamed_addr constant [33 x i8] c"unable to allocate net list node\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"main\00", align 1
@.str.13 = private unnamed_addr constant [29 x i8] c"unable to allocate ModuleRec\00", align 1
@modules = internal unnamed_addr global [1024 x ptr] zeroinitializer, align 16
@cost = internal unnamed_addr global [1024 x float] zeroinitializer, align 16
@nets = internal unnamed_addr global [1024 x ptr] zeroinitializer, align 16
@moduleToGroup = internal unnamed_addr global [1024 x i32] zeroinitializer, align 16
@D = internal unnamed_addr global [1024 x float] zeroinitializer, align 16
@groupA = internal global %struct._ModuleList zeroinitializer, align 8
@groupB = internal global %struct._ModuleList zeroinitializer, align 8
@swapToB = internal global %struct._ModuleList zeroinitializer, align 8
@swapToA = internal global %struct._ModuleList zeroinitializer, align 8
@numModules = internal global i64 0, align 8
@GP = internal unnamed_addr global [1024 x float] zeroinitializer, align 16
@stdout = external local_unnamed_addr global ptr, align 8
@.str.5 = private unnamed_addr constant [48 x i8] c"----------------------------------------------\0A\00", align 1
@maxStat = internal unnamed_addr global i64 0, align 8
@netStats = internal unnamed_addr global [256 x %struct.anon] zeroinitializer, align 16
@.str.1.6 = private unnamed_addr constant [12 x i8] c"Group A:  \0A\00", align 1
@.str.2.7 = private unnamed_addr constant [6 x i8] c"%3lu \00", align 1
@.str.4.8 = private unnamed_addr constant [12 x i8] c"Group B:  \0A\00", align 1
@.str.5.9 = private unnamed_addr constant [23 x i8] c"Conn %3lu - %3lu cut.\0A\00", align 1
@.str.6.10 = private unnamed_addr constant [23 x i8] c"Total edge cuts = %lu\0A\00", align 1
@numNets = internal global i64 0, align 8
@.str.7.11 = private unnamed_addr constant [15 x i8] c"Net %3lu cut.\0A\00", align 1
@.str.8.12 = private unnamed_addr constant [23 x i8] c"Total net cuts  = %lu\0A\00", align 1
@.str.9.13 = private unnamed_addr constant [60 x i8] c"sz:%5lu     total:%5lu     edgesCut:%5lu     netsCuts:%5lu\0A\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.10.14 = private unnamed_addr constant [24 x i8] c"Usage: KL <input_file>\0A\00", align 1
@.str.11.15 = private unnamed_addr constant [24 x i8] c"No progress: gMax = %f\0A\00", align 1
@.str.12.16 = private unnamed_addr constant [23 x i8] c"gMax = %f, iMax = %lu\0A\00", align 1

; Function Attrs: noreturn nounwind optsize uwtable
define dso_local i32 @main(i32 noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca [1024 x i8], align 16
  %4 = icmp eq i32 %0, 2
  br i1 %4, label %8, label %5

5:                                                ; preds = %2
  %6 = load ptr, ptr @stderr, align 8, !tbaa !7
  %7 = tail call i64 @fwrite(ptr nonnull @.str.10.14, i64 23, i64 1, ptr %6) #14
  tail call void @exit(i32 noundef 1) #15
  unreachable

8:                                                ; preds = %2
  %9 = getelementptr inbounds ptr, ptr %1, i64 1
  %10 = load ptr, ptr %9, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %3) #16
  %11 = tail call noalias ptr @fopen(ptr noundef %10, ptr noundef nonnull @.str) #17
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %20

13:                                               ; preds = %8
  %14 = load ptr, ptr @stderr, align 8, !tbaa !7
  %15 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %14, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef 46) #18
  %16 = load ptr, ptr @stderr, align 8, !tbaa !7
  %17 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %16, ptr noundef nonnull @.str.4, ptr noundef null, i32 noundef 0, i32 noundef 0) #18
  %18 = load ptr, ptr @stderr, align 8, !tbaa !7
  %19 = tail call i32 @fputc(i32 10, ptr %18)
  tail call void @exit(i32 noundef 1) #15
  unreachable

20:                                               ; preds = %8
  %21 = call ptr @fgets(ptr noundef nonnull %3, i32 noundef 1024, ptr noundef nonnull %11) #17
  %22 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %3, ptr noundef nonnull @.str.6, ptr noundef nonnull @numNets, ptr noundef nonnull @numModules) #19
  %23 = icmp eq i32 %22, 2
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load i64, ptr @numNets, align 8, !tbaa !11
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %77, label %34

27:                                               ; preds = %20
  %28 = load ptr, ptr @stderr, align 8, !tbaa !7
  %29 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %28, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef 51) #18
  %30 = load ptr, ptr @stderr, align 8, !tbaa !7
  %31 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %30, ptr noundef nonnull @.str.7, ptr noundef nonnull %11, i32 noundef 0, i32 noundef 0) #18
  %32 = load ptr, ptr @stderr, align 8, !tbaa !7
  %33 = call i32 @fputc(i32 10, ptr %32)
  call void @exit(i32 noundef 1) #15
  unreachable

34:                                               ; preds = %72, %24
  %35 = phi i64 [ %74, %72 ], [ 0, %24 ]
  %36 = call ptr @fgets(ptr noundef nonnull %3, i32 noundef 1024, ptr noundef nonnull %11) #17
  %37 = call ptr @strtok(ptr noundef nonnull %3, ptr noundef nonnull @.str.8) #19
  %38 = call i64 @atol(ptr nocapture noundef %37) #20
  %39 = add nsw i64 %38, -1
  %40 = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #21
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %49

42:                                               ; preds = %34
  %43 = load ptr, ptr @stderr, align 8, !tbaa !7
  %44 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %43, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef 63) #18
  %45 = load ptr, ptr @stderr, align 8, !tbaa !7
  %46 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %45, ptr noundef nonnull @.str.9, i32 noundef 0, i32 noundef 0, i32 noundef 0) #18
  %47 = load ptr, ptr @stderr, align 8, !tbaa !7
  %48 = call i32 @fputc(i32 10, ptr %47)
  call void @exit(i32 noundef 1) #15
  unreachable

49:                                               ; preds = %34
  %50 = call ptr @strtok(ptr noundef null, ptr noundef nonnull @.str.8) #19
  %51 = call i64 @atol(ptr nocapture noundef %50) #20
  %52 = add nsw i64 %51, -1
  %53 = getelementptr inbounds %struct._Module, ptr %40, i64 0, i32 1
  store i64 %52, ptr %53, align 8, !tbaa !13
  store ptr null, ptr %40, align 8, !tbaa !15
  br label %54

54:                                               ; preds = %68, %49
  %55 = phi ptr [ %40, %49 ], [ %59, %68 ]
  %56 = call ptr @strtok(ptr noundef null, ptr noundef nonnull @.str.8) #19
  %57 = icmp eq ptr %56, null
  br i1 %57, label %72, label %58

58:                                               ; preds = %54
  %59 = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #21
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %68

61:                                               ; preds = %58
  %62 = load ptr, ptr @stderr, align 8, !tbaa !7
  %63 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %62, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef 70) #18
  %64 = load ptr, ptr @stderr, align 8, !tbaa !7
  %65 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %64, ptr noundef nonnull @.str.9, i32 noundef 0, i32 noundef 0, i32 noundef 0) #18
  %66 = load ptr, ptr @stderr, align 8, !tbaa !7
  %67 = call i32 @fputc(i32 10, ptr %66)
  call void @exit(i32 noundef 1) #15
  unreachable

68:                                               ; preds = %58
  %69 = call i64 @atol(ptr nocapture noundef nonnull %56) #20
  %70 = add nsw i64 %69, -1
  %71 = getelementptr inbounds %struct._Module, ptr %59, i64 0, i32 1
  store i64 %70, ptr %71, align 8, !tbaa !13
  store ptr null, ptr %59, align 8, !tbaa !15
  store ptr %59, ptr %55, align 8, !tbaa !15
  br label %54, !llvm.loop !16

72:                                               ; preds = %54
  %73 = getelementptr inbounds [1024 x ptr], ptr @nets, i64 0, i64 %39
  store ptr %40, ptr %73, align 8, !tbaa !7
  %74 = add nuw i64 %35, 1
  %75 = load i64, ptr @numNets, align 8, !tbaa !11
  %76 = icmp ult i64 %74, %75
  br i1 %76, label %34, label %77, !llvm.loop !18

77:                                               ; preds = %72, %24
  %78 = phi i64 [ 0, %24 ], [ %75, %72 ]
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %3) #16
  %79 = load i64, ptr @numModules, align 8, !tbaa !11
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %83, label %81

81:                                               ; preds = %77
  %82 = shl nuw i64 %79, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 16 @modules, i8 0, i64 %82, i1 false), !tbaa !7
  br label %83

83:                                               ; preds = %81, %77
  %84 = icmp eq i64 %78, 0
  br i1 %84, label %144, label %85

85:                                               ; preds = %109, %83
  %86 = phi i64 [ %110, %109 ], [ 0, %83 ]
  %87 = getelementptr inbounds [1024 x ptr], ptr @nets, i64 0, i64 %86
  %88 = load ptr, ptr %87, align 8, !tbaa !7
  %89 = icmp eq ptr %88, null
  br i1 %89, label %109, label %90

90:                                               ; preds = %101, %85
  %91 = phi ptr [ %107, %101 ], [ %88, %85 ]
  %92 = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #21
  %93 = icmp eq ptr %92, null
  br i1 %93, label %94, label %101

94:                                               ; preds = %90
  %95 = load ptr, ptr @stderr, align 8, !tbaa !7
  %96 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %95, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.10, i32 noundef 96) #18
  %97 = load ptr, ptr @stderr, align 8, !tbaa !7
  %98 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %97, ptr noundef nonnull @.str.11, i32 noundef 0, i32 noundef 0, i32 noundef 0) #18
  %99 = load ptr, ptr @stderr, align 8, !tbaa !7
  %100 = tail call i32 @fputc(i32 10, ptr %99)
  tail call void @exit(i32 noundef 1) #15
  unreachable

101:                                              ; preds = %90
  %102 = getelementptr inbounds %struct._Module, ptr %92, i64 0, i32 1
  store i64 %86, ptr %102, align 8, !tbaa !19
  %103 = getelementptr inbounds %struct._Module, ptr %91, i64 0, i32 1
  %104 = load i64, ptr %103, align 8, !tbaa !13
  %105 = getelementptr inbounds [1024 x ptr], ptr @modules, i64 0, i64 %104
  %106 = load ptr, ptr %105, align 8, !tbaa !7
  store ptr %106, ptr %92, align 8, !tbaa !21
  store ptr %92, ptr %105, align 8, !tbaa !7
  %107 = load ptr, ptr %91, align 8, !tbaa !7
  %108 = icmp eq ptr %107, null
  br i1 %108, label %109, label %90, !llvm.loop !22

109:                                              ; preds = %101, %85
  %110 = add nuw i64 %86, 1
  %111 = icmp eq i64 %110, %78
  br i1 %111, label %112, label %85, !llvm.loop !23

112:                                              ; preds = %109
  %113 = add i64 %78, 3
  %114 = and i64 %113, -4
  %115 = add i64 %78, -1
  %116 = insertelement <4 x i64> poison, i64 %115, i64 0
  %117 = shufflevector <4 x i64> %116, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %118

118:                                              ; preds = %140, %112
  %119 = phi i64 [ 0, %112 ], [ %141, %140 ]
  %120 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %112 ], [ %142, %140 ]
  %121 = icmp ule <4 x i64> %120, %117
  %122 = extractelement <4 x i1> %121, i64 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %118
  %124 = getelementptr inbounds [1024 x float], ptr @cost, i64 0, i64 %119
  store float 1.000000e+00, ptr %124, align 16, !tbaa !24
  br label %125

125:                                              ; preds = %123, %118
  %126 = extractelement <4 x i1> %121, i64 1
  br i1 %126, label %127, label %130

127:                                              ; preds = %125
  %128 = or i64 %119, 1
  %129 = getelementptr inbounds [1024 x float], ptr @cost, i64 0, i64 %128
  store float 1.000000e+00, ptr %129, align 4, !tbaa !24
  br label %130

130:                                              ; preds = %127, %125
  %131 = extractelement <4 x i1> %121, i64 2
  br i1 %131, label %132, label %135

132:                                              ; preds = %130
  %133 = or i64 %119, 2
  %134 = getelementptr inbounds [1024 x float], ptr @cost, i64 0, i64 %133
  store float 1.000000e+00, ptr %134, align 8, !tbaa !24
  br label %135

135:                                              ; preds = %132, %130
  %136 = extractelement <4 x i1> %121, i64 3
  br i1 %136, label %137, label %140

137:                                              ; preds = %135
  %138 = or i64 %119, 3
  %139 = getelementptr inbounds [1024 x float], ptr @cost, i64 0, i64 %138
  store float 1.000000e+00, ptr %139, align 4, !tbaa !24
  br label %140

140:                                              ; preds = %137, %135
  %141 = add i64 %119, 4
  %142 = add <4 x i64> %120, <i64 4, i64 4, i64 4, i64 4>
  %143 = icmp eq i64 %141, %114
  br i1 %143, label %144, label %118, !llvm.loop !26

144:                                              ; preds = %140, %83
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @groupA, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @groupB, i8 0, i64 16, i1 false)
  %145 = lshr i64 %79, 1
  %146 = icmp ult i64 %79, 2
  br i1 %146, label %192, label %147

147:                                              ; preds = %144
  %148 = tail call i64 @llvm.umax.i64(i64 %145, i64 1)
  br label %149

149:                                              ; preds = %187, %147
  %150 = phi i64 [ %190, %187 ], [ 0, %147 ]
  %151 = phi ptr [ %170, %187 ], [ null, %147 ]
  %152 = phi ptr [ %155, %187 ], [ null, %147 ]
  %153 = phi ptr [ %188, %187 ], [ null, %147 ]
  %154 = phi ptr [ %172, %187 ], [ null, %147 ]
  %155 = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #21
  %156 = icmp eq ptr %155, null
  br i1 %156, label %157, label %164

157:                                              ; preds = %149
  %158 = load ptr, ptr @stderr, align 8, !tbaa !7
  %159 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %158, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.12, i32 noundef 145) #18
  %160 = load ptr, ptr @stderr, align 8, !tbaa !7
  %161 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %160, ptr noundef nonnull @.str.13, i32 noundef 0, i32 noundef 0, i32 noundef 0) #18
  %162 = load ptr, ptr @stderr, align 8, !tbaa !7
  %163 = tail call i32 @fputc(i32 10, ptr %162)
  tail call void @exit(i32 noundef 1) #15
  unreachable

164:                                              ; preds = %149
  %165 = getelementptr inbounds %struct._Module, ptr %155, i64 0, i32 1
  store i64 %150, ptr %165, align 8, !tbaa !29
  %166 = icmp eq ptr %151, null
  br i1 %166, label %167, label %168

167:                                              ; preds = %164
  store ptr %155, ptr @groupA, align 8, !tbaa !31
  store ptr null, ptr %155, align 8, !tbaa !33
  br label %169

168:                                              ; preds = %164
  store ptr null, ptr %155, align 8, !tbaa !33
  store ptr %155, ptr %152, align 8, !tbaa !33
  br label %169

169:                                              ; preds = %168, %167
  %170 = phi ptr [ %151, %168 ], [ %155, %167 ]
  store ptr %155, ptr getelementptr inbounds (%struct._ModuleList, ptr @groupA, i64 0, i32 1), align 8
  %171 = getelementptr inbounds [1024 x i32], ptr @moduleToGroup, i64 0, i64 %150
  store i32 0, ptr %171, align 4, !tbaa !34
  %172 = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #21
  %173 = icmp eq ptr %172, null
  br i1 %173, label %174, label %181

174:                                              ; preds = %169
  %175 = load ptr, ptr @stderr, align 8, !tbaa !7
  %176 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %175, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.12, i32 noundef 164) #18
  %177 = load ptr, ptr @stderr, align 8, !tbaa !7
  %178 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %177, ptr noundef nonnull @.str.13, i32 noundef 0, i32 noundef 0, i32 noundef 0) #18
  %179 = load ptr, ptr @stderr, align 8, !tbaa !7
  %180 = tail call i32 @fputc(i32 10, ptr %179)
  tail call void @exit(i32 noundef 1) #15
  unreachable

181:                                              ; preds = %169
  %182 = add nuw i64 %150, %145
  %183 = getelementptr inbounds %struct._Module, ptr %172, i64 0, i32 1
  store i64 %182, ptr %183, align 8, !tbaa !29
  %184 = icmp eq ptr %153, null
  br i1 %184, label %185, label %186

185:                                              ; preds = %181
  store ptr %172, ptr @groupB, align 8, !tbaa !31
  store ptr null, ptr %172, align 8, !tbaa !33
  br label %187

186:                                              ; preds = %181
  store ptr null, ptr %172, align 8, !tbaa !33
  store ptr %172, ptr %154, align 8, !tbaa !33
  br label %187

187:                                              ; preds = %186, %185
  %188 = phi ptr [ %153, %186 ], [ %172, %185 ]
  store ptr %172, ptr getelementptr inbounds (%struct._ModuleList, ptr @groupB, i64 0, i32 1), align 8
  %189 = getelementptr inbounds [1024 x i32], ptr @moduleToGroup, i64 0, i64 %182
  store i32 1, ptr %189, align 4, !tbaa !34
  %190 = add nuw nsw i64 %150, 1
  %191 = icmp eq i64 %190, %148
  br i1 %191, label %192, label %149, !llvm.loop !35

192:                                              ; preds = %187, %144
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @swapToA, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @swapToB, i8 0, i64 16, i1 false)
  br label %193

193:                                              ; preds = %366, %192
  %194 = phi float [ 0.000000e+00, %192 ], [ %313, %366 ]
  tail call fastcc void @ComputeDs(ptr noundef nonnull @groupA, i32 noundef 0) #19
  tail call fastcc void @ComputeDs(ptr noundef nonnull @groupB, i32 noundef 1) #19
  %195 = load i64, ptr @numModules, align 8, !tbaa !11
  %196 = icmp ult i64 %195, 2
  br i1 %196, label %311, label %197

197:                                              ; preds = %278, %193
  %198 = phi i64 [ %291, %278 ], [ 0, %193 ]
  %199 = load ptr, ptr @groupA, align 8, !tbaa !7
  %200 = icmp eq ptr %199, null
  br i1 %200, label %278, label %201

201:                                              ; preds = %197
  %202 = load ptr, ptr @groupB, align 8, !tbaa !7
  %203 = icmp eq ptr %202, null
  br label %212

204:                                              ; preds = %270, %212
  %205 = phi ptr [ %218, %212 ], [ %271, %270 ]
  %206 = phi ptr [ %217, %212 ], [ %272, %270 ]
  %207 = phi ptr [ %216, %212 ], [ %273, %270 ]
  %208 = phi ptr [ %215, %212 ], [ %274, %270 ]
  %209 = phi float [ %214, %212 ], [ %275, %270 ]
  %210 = load ptr, ptr %213, align 8, !tbaa !7
  %211 = icmp eq ptr %210, null
  br i1 %211, label %278, label %212, !llvm.loop !36

212:                                              ; preds = %204, %201
  %213 = phi ptr [ %199, %201 ], [ %210, %204 ]
  %214 = phi float [ 0xC16312CFE0000000, %201 ], [ %209, %204 ]
  %215 = phi ptr [ null, %201 ], [ %208, %204 ]
  %216 = phi ptr [ null, %201 ], [ %207, %204 ]
  %217 = phi ptr [ null, %201 ], [ %206, %204 ]
  %218 = phi ptr [ null, %201 ], [ %205, %204 ]
  %219 = phi ptr [ null, %201 ], [ %213, %204 ]
  br i1 %203, label %204, label %220

220:                                              ; preds = %212
  %221 = getelementptr inbounds %struct._Module, ptr %213, i64 0, i32 1
  %222 = load i64, ptr %221, align 8, !tbaa !29
  %223 = getelementptr inbounds [1024 x float], ptr @D, i64 0, i64 %222
  %224 = load float, ptr %223, align 4, !tbaa !24
  %225 = getelementptr inbounds [1024 x ptr], ptr @modules, i64 0, i64 %222
  %226 = load ptr, ptr %225, align 8, !tbaa !7
  %227 = icmp eq ptr %226, null
  br label %228

228:                                              ; preds = %270, %220
  %229 = phi ptr [ %202, %220 ], [ %276, %270 ]
  %230 = phi float [ %214, %220 ], [ %275, %270 ]
  %231 = phi ptr [ %215, %220 ], [ %274, %270 ]
  %232 = phi ptr [ %216, %220 ], [ %273, %270 ]
  %233 = phi ptr [ %217, %220 ], [ %272, %270 ]
  %234 = phi ptr [ %218, %220 ], [ %271, %270 ]
  %235 = phi ptr [ null, %220 ], [ %229, %270 ]
  %236 = getelementptr inbounds %struct._Module, ptr %229, i64 0, i32 1
  %237 = load i64, ptr %236, align 8, !tbaa !29
  %238 = getelementptr inbounds [1024 x float], ptr @D, i64 0, i64 %237
  %239 = load float, ptr %238, align 4, !tbaa !24
  %240 = fadd float %224, %239
  br i1 %227, label %265, label %245

241:                                              ; preds = %255, %245
  %242 = phi float [ %247, %245 ], [ %262, %255 ]
  %243 = load ptr, ptr %246, align 8, !tbaa !7
  %244 = icmp eq ptr %243, null
  br i1 %244, label %265, label %245, !llvm.loop !37

245:                                              ; preds = %241, %228
  %246 = phi ptr [ %243, %241 ], [ %226, %228 ]
  %247 = phi float [ %242, %241 ], [ 0.000000e+00, %228 ]
  %248 = getelementptr inbounds %struct._Module, ptr %246, i64 0, i32 1
  %249 = load i64, ptr %248, align 8, !tbaa !19
  %250 = getelementptr inbounds [1024 x float], ptr @cost, i64 0, i64 %249
  %251 = load float, ptr %250, align 4, !tbaa !24
  %252 = getelementptr inbounds [1024 x ptr], ptr @nets, i64 0, i64 %249
  %253 = load ptr, ptr %252, align 8, !tbaa !7
  %254 = icmp eq ptr %253, null
  br i1 %254, label %241, label %255

255:                                              ; preds = %255, %245
  %256 = phi ptr [ %263, %255 ], [ %253, %245 ]
  %257 = phi float [ %262, %255 ], [ %247, %245 ]
  %258 = getelementptr inbounds %struct._Module, ptr %256, i64 0, i32 1
  %259 = load i64, ptr %258, align 8, !tbaa !13
  %260 = icmp eq i64 %259, %237
  %261 = select i1 %260, float %251, float -0.000000e+00
  %262 = fadd float %257, %261
  %263 = load ptr, ptr %256, align 8, !tbaa !7
  %264 = icmp eq ptr %263, null
  br i1 %264, label %241, label %255, !llvm.loop !38

265:                                              ; preds = %241, %228
  %266 = phi float [ 0.000000e+00, %228 ], [ %242, %241 ]
  %267 = tail call float @llvm.fmuladd.f32(float %266, float -2.000000e+00, float %240)
  %268 = fcmp ogt float %267, %230
  br i1 %268, label %269, label %270

269:                                              ; preds = %265
  br label %270

270:                                              ; preds = %269, %265
  %271 = phi ptr [ %213, %269 ], [ %234, %265 ]
  %272 = phi ptr [ %219, %269 ], [ %233, %265 ]
  %273 = phi ptr [ %229, %269 ], [ %232, %265 ]
  %274 = phi ptr [ %235, %269 ], [ %231, %265 ]
  %275 = phi float [ %267, %269 ], [ %230, %265 ]
  %276 = load ptr, ptr %229, align 8, !tbaa !7
  %277 = icmp eq ptr %276, null
  br i1 %277, label %204, label %228, !llvm.loop !39

278:                                              ; preds = %204, %197
  %279 = phi ptr [ null, %197 ], [ %205, %204 ]
  %280 = phi ptr [ null, %197 ], [ %206, %204 ]
  %281 = phi ptr [ null, %197 ], [ %207, %204 ]
  %282 = phi ptr [ null, %197 ], [ %208, %204 ]
  %283 = phi float [ 0xC16312CFE0000000, %197 ], [ %209, %204 ]
  tail call fastcc void @SwapNode(ptr noundef %280, ptr noundef %279, ptr noundef nonnull @groupA, ptr noundef nonnull @swapToB) #17
  tail call fastcc void @SwapNode(ptr noundef %282, ptr noundef %281, ptr noundef nonnull @groupB, ptr noundef nonnull @swapToA) #17
  %284 = getelementptr inbounds %struct._Module, ptr %279, i64 0, i32 1
  %285 = load i64, ptr %284, align 8, !tbaa !29
  %286 = getelementptr inbounds [1024 x i32], ptr @moduleToGroup, i64 0, i64 %285
  store i32 3, ptr %286, align 4, !tbaa !34
  %287 = getelementptr inbounds %struct._Module, ptr %281, i64 0, i32 1
  %288 = load i64, ptr %287, align 8, !tbaa !29
  %289 = getelementptr inbounds [1024 x i32], ptr @moduleToGroup, i64 0, i64 %288
  store i32 2, ptr %289, align 4, !tbaa !34
  tail call fastcc void @UpdateDs(ptr noundef %279, i32 noundef 0) #17
  tail call fastcc void @UpdateDs(ptr noundef %281, i32 noundef 1) #17
  %290 = getelementptr inbounds [1024 x float], ptr @GP, i64 0, i64 %198
  store float %283, ptr %290, align 4, !tbaa !24
  %291 = add nuw nsw i64 %198, 1
  %292 = load i64, ptr @numModules, align 8, !tbaa !11
  %293 = lshr i64 %292, 1
  %294 = icmp ult i64 %291, %293
  br i1 %294, label %197, label %295, !llvm.loop !40

295:                                              ; preds = %278
  %.lcssa = phi i64 [ %292, %278 ]
  %296 = icmp ult i64 %.lcssa, 2
  br i1 %296, label %311, label %297

297:                                              ; preds = %297, %295
  %298 = phi i64 [ %305, %297 ], [ 4294967295, %295 ]
  %299 = phi i64 [ %306, %297 ], [ %.lcssa, %295 ]
  %300 = phi i64 [ %308, %297 ], [ 0, %295 ]
  %301 = phi float [ %307, %297 ], [ 0xC16312CFE0000000, %295 ]
  %302 = getelementptr inbounds [1024 x float], ptr @GP, i64 0, i64 %300
  %303 = load float, ptr %302, align 4, !tbaa !24
  %304 = fcmp ogt float %303, %301
  %305 = select i1 %304, i64 %300, i64 %298
  %306 = select i1 %304, i64 %.lcssa, i64 %299
  %307 = select i1 %304, float %303, float %301
  %308 = add nuw nsw i64 %300, 1
  %309 = lshr i64 %306, 1
  %310 = icmp ugt i64 %309, %308
  br i1 %310, label %297, label %311, !llvm.loop !41

311:                                              ; preds = %297, %295, %193
  %312 = phi i64 [ 4294967295, %295 ], [ 4294967295, %193 ], [ %305, %297 ]
  %313 = phi float [ 0xC16312CFE0000000, %295 ], [ 0xC16312CFE0000000, %193 ], [ %307, %297 ]
  %314 = fcmp oeq float %194, %313
  br i1 %314, label %317, label %315

315:                                              ; preds = %311
  %316 = fpext float %313 to double
  br label %321

317:                                              ; preds = %311
  %318 = load ptr, ptr @stdout, align 8, !tbaa !7
  %319 = fpext float %313 to double
  %320 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %318, ptr noundef nonnull @.str.11.15, double noundef %319) #17
  br label %321

321:                                              ; preds = %317, %315
  %322 = phi double [ %316, %315 ], [ %319, %317 ]
  %323 = load ptr, ptr @stdout, align 8, !tbaa !7
  %324 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %323, ptr noundef nonnull @.str.12.16, double noundef %322, i64 noundef %312) #17
  %325 = fcmp ogt float %313, 0.000000e+00
  br i1 %325, label %326, label %367

326:                                              ; preds = %321
  %327 = add i64 %312, 1
  br label %328

328:                                              ; preds = %328, %326
  %329 = phi i64 [ 0, %326 ], [ %336, %328 ]
  %330 = phi ptr [ null, %326 ], [ %335, %328 ]
  %331 = phi ptr [ @swapToA, %326 ], [ %335, %328 ]
  %332 = phi ptr [ null, %326 ], [ %334, %328 ]
  %333 = phi ptr [ @swapToB, %326 ], [ %334, %328 ]
  %334 = load ptr, ptr %333, align 8, !tbaa !7
  %335 = load ptr, ptr %331, align 8, !tbaa !7
  %336 = add i64 %329, 1
  %337 = icmp eq i64 %329, %327
  br i1 %337, label %338, label %328, !llvm.loop !42

338:                                              ; preds = %328
  %.lcssa4 = phi ptr [ %330, %328 ]
  %.lcssa3 = phi ptr [ %332, %328 ]
  %.lcssa2 = phi ptr [ %334, %328 ]
  %.lcssa1 = phi ptr [ %335, %328 ]
  %339 = icmp eq ptr %.lcssa1, null
  br i1 %339, label %340, label %341

340:                                              ; preds = %338
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @groupA, ptr noundef nonnull align 8 dereferenceable(16) @swapToA, i64 16, i1 false), !tbaa.struct !43
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @groupB, ptr noundef nonnull align 8 dereferenceable(16) @swapToB, i64 16, i1 false), !tbaa.struct !43
  br label %346

341:                                              ; preds = %338
  store ptr %.lcssa2, ptr %.lcssa4, align 8, !tbaa !33
  %342 = load ptr, ptr @swapToA, align 8, !tbaa !31
  store ptr %342, ptr @groupA, align 8, !tbaa !31
  %343 = load ptr, ptr getelementptr inbounds (%struct._ModuleList, ptr @swapToB, i64 0, i32 1), align 8, !tbaa !44
  store ptr %343, ptr getelementptr inbounds (%struct._ModuleList, ptr @groupA, i64 0, i32 1), align 8, !tbaa !44
  store ptr %.lcssa1, ptr %.lcssa3, align 8, !tbaa !33
  %344 = load ptr, ptr @swapToB, align 8, !tbaa !31
  store ptr %344, ptr @groupB, align 8, !tbaa !31
  %345 = load ptr, ptr getelementptr inbounds (%struct._ModuleList, ptr @swapToA, i64 0, i32 1), align 8, !tbaa !44
  store ptr %345, ptr getelementptr inbounds (%struct._ModuleList, ptr @groupB, i64 0, i32 1), align 8, !tbaa !44
  br label %346

346:                                              ; preds = %341, %340
  %347 = load ptr, ptr @groupA, align 8, !tbaa !7
  %348 = icmp eq ptr %347, null
  br i1 %348, label %349, label %352

349:                                              ; preds = %352, %346
  %350 = load ptr, ptr @groupB, align 8, !tbaa !7
  %351 = icmp eq ptr %350, null
  br i1 %351, label %366, label %359

352:                                              ; preds = %352, %346
  %353 = phi ptr [ %357, %352 ], [ %347, %346 ]
  %354 = getelementptr inbounds %struct._Module, ptr %353, i64 0, i32 1
  %355 = load i64, ptr %354, align 8, !tbaa !29
  %356 = getelementptr inbounds [1024 x i32], ptr @moduleToGroup, i64 0, i64 %355
  store i32 0, ptr %356, align 4, !tbaa !34
  %357 = load ptr, ptr %353, align 8, !tbaa !7
  %358 = icmp eq ptr %357, null
  br i1 %358, label %349, label %352, !llvm.loop !45

359:                                              ; preds = %359, %349
  %360 = phi ptr [ %364, %359 ], [ %350, %349 ]
  %361 = getelementptr inbounds %struct._Module, ptr %360, i64 0, i32 1
  %362 = load i64, ptr %361, align 8, !tbaa !29
  %363 = getelementptr inbounds [1024 x i32], ptr @moduleToGroup, i64 0, i64 %362
  store i32 1, ptr %363, align 4, !tbaa !34
  %364 = load ptr, ptr %360, align 8, !tbaa !7
  %365 = icmp eq ptr %364, null
  br i1 %365, label %366, label %359, !llvm.loop !46

366:                                              ; preds = %359, %349
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @swapToA, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @swapToB, i8 0, i64 16, i1 false)
  tail call fastcc void @PrintResults(i32 noundef 0) #17
  br label %193, !llvm.loop !47

367:                                              ; preds = %321
  tail call fastcc void @PrintResults(i32 noundef 0) #17
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @groupA, ptr noundef nonnull align 8 dereferenceable(16) @swapToB, i64 16, i1 false), !tbaa.struct !43
  %368 = load ptr, ptr @groupA, align 8, !tbaa !7
  %369 = icmp eq ptr %368, null
  br i1 %369, label %377, label %370

370:                                              ; preds = %370, %367
  %371 = phi ptr [ %375, %370 ], [ %368, %367 ]
  %372 = getelementptr inbounds %struct._Module, ptr %371, i64 0, i32 1
  %373 = load i64, ptr %372, align 8, !tbaa !29
  %374 = getelementptr inbounds [1024 x i32], ptr @moduleToGroup, i64 0, i64 %373
  store i32 0, ptr %374, align 4, !tbaa !34
  %375 = load ptr, ptr %371, align 8, !tbaa !7
  %376 = icmp eq ptr %375, null
  br i1 %376, label %377, label %370, !llvm.loop !48

377:                                              ; preds = %370, %367
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @groupB, ptr noundef nonnull align 8 dereferenceable(16) @swapToA, i64 16, i1 false), !tbaa.struct !43
  %378 = load ptr, ptr @groupB, align 8, !tbaa !7
  %379 = icmp eq ptr %378, null
  br i1 %379, label %387, label %380

380:                                              ; preds = %380, %377
  %381 = phi ptr [ %385, %380 ], [ %378, %377 ]
  %382 = getelementptr inbounds %struct._Module, ptr %381, i64 0, i32 1
  %383 = load i64, ptr %382, align 8, !tbaa !29
  %384 = getelementptr inbounds [1024 x i32], ptr @moduleToGroup, i64 0, i64 %383
  store i32 1, ptr %384, align 4, !tbaa !34
  %385 = load ptr, ptr %381, align 8, !tbaa !7
  %386 = icmp eq ptr %385, null
  br i1 %386, label %387, label %380, !llvm.loop !49

387:                                              ; preds = %380, %377
  tail call fastcc void @PrintResults(i32 noundef 1) #17
  tail call void @exit(i32 noundef 0) #15
  unreachable
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nofree nounwind optsize
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind optsize
declare noundef ptr @fgets(ptr noundef, i32 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind optsize
declare noundef i32 @__isoc99_sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind optsize willreturn
declare ptr @strtok(ptr noundef, ptr nocapture noundef readonly) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(read)
declare i64 @atol(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #9

; Function Attrs: nofree norecurse nosync nounwind optsize memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define internal fastcc void @ComputeDs(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #10 {
  %3 = load ptr, ptr %0, align 8, !tbaa !7
  %4 = icmp eq ptr %3, null
  br i1 %4, label %58, label %5

5:                                                ; preds = %53, %2
  %6 = phi ptr [ %56, %53 ], [ %3, %2 ]
  %7 = getelementptr inbounds %struct._Module, ptr %6, i64 0, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !29
  %9 = getelementptr inbounds [1024 x ptr], ptr @modules, i64 0, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !7
  %11 = icmp eq ptr %10, null
  br i1 %11, label %53, label %17

12:                                               ; preds = %46, %17
  %13 = phi float [ %20, %17 ], [ %47, %46 ]
  %14 = phi float [ %19, %17 ], [ %48, %46 ]
  %15 = load ptr, ptr %18, align 8, !tbaa !7
  %16 = icmp eq ptr %15, null
  br i1 %16, label %51, label %17, !llvm.loop !50

17:                                               ; preds = %12, %5
  %18 = phi ptr [ %15, %12 ], [ %10, %5 ]
  %19 = phi float [ %14, %12 ], [ 0.000000e+00, %5 ]
  %20 = phi float [ %13, %12 ], [ 0.000000e+00, %5 ]
  %21 = getelementptr inbounds %struct._Module, ptr %18, i64 0, i32 1
  %22 = load i64, ptr %21, align 8, !tbaa !19
  %23 = getelementptr inbounds [1024 x ptr], ptr @nets, i64 0, i64 %22
  %24 = load ptr, ptr %23, align 8, !tbaa !7
  %25 = icmp eq ptr %24, null
  br i1 %25, label %12, label %26

26:                                               ; preds = %17
  %27 = getelementptr inbounds [1024 x float], ptr @cost, i64 0, i64 %22
  br label %28

28:                                               ; preds = %46, %26
  %29 = phi ptr [ %24, %26 ], [ %49, %46 ]
  %30 = phi float [ %19, %26 ], [ %48, %46 ]
  %31 = phi float [ %20, %26 ], [ %47, %46 ]
  %32 = getelementptr inbounds %struct._Module, ptr %29, i64 0, i32 1
  %33 = load i64, ptr %32, align 8, !tbaa !13
  %34 = icmp eq i64 %33, %8
  br i1 %34, label %46, label %35

35:                                               ; preds = %28
  %36 = getelementptr inbounds [1024 x i32], ptr @moduleToGroup, i64 0, i64 %33
  %37 = load i32, ptr %36, align 4, !tbaa !34
  %38 = icmp ult i32 %37, 2
  br i1 %38, label %39, label %46

39:                                               ; preds = %35
  %40 = icmp eq i32 %37, %1
  %41 = load float, ptr %27, align 4, !tbaa !24
  br i1 %40, label %42, label %44

42:                                               ; preds = %39
  %43 = fadd float %31, %41
  br label %46

44:                                               ; preds = %39
  %45 = fadd float %30, %41
  br label %46

46:                                               ; preds = %44, %42, %35, %28
  %47 = phi float [ %43, %42 ], [ %31, %44 ], [ %31, %35 ], [ %31, %28 ]
  %48 = phi float [ %30, %42 ], [ %45, %44 ], [ %30, %35 ], [ %30, %28 ]
  %49 = load ptr, ptr %29, align 8, !tbaa !7
  %50 = icmp eq ptr %49, null
  br i1 %50, label %12, label %28, !llvm.loop !51

51:                                               ; preds = %12
  %.lcssa1 = phi float [ %13, %12 ]
  %.lcssa = phi float [ %14, %12 ]
  %52 = fsub float %.lcssa, %.lcssa1
  br label %53

53:                                               ; preds = %51, %5
  %54 = phi float [ %52, %51 ], [ 0.000000e+00, %5 ]
  %55 = getelementptr inbounds [1024 x float], ptr @D, i64 0, i64 %8
  store float %54, ptr %55, align 4, !tbaa !24
  %56 = load ptr, ptr %6, align 8, !tbaa !7
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %5, !llvm.loop !52

58:                                               ; preds = %53, %2
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #9

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @SwapNode(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2, ptr nocapture noundef %3) unnamed_addr #11 {
  %5 = icmp eq ptr %0, null
  br i1 %5, label %6, label %14

6:                                                ; preds = %4
  %7 = load ptr, ptr %2, align 8, !tbaa !31
  %8 = getelementptr inbounds %struct._ModuleList, ptr %2, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !44
  %10 = icmp eq ptr %7, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  br label %21

12:                                               ; preds = %6
  %13 = load ptr, ptr %1, align 8, !tbaa !33
  store ptr %13, ptr %2, align 8, !tbaa !31
  br label %21

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct._ModuleList, ptr %2, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !44
  %17 = icmp eq ptr %16, %1
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  store ptr %0, ptr %15, align 8, !tbaa !44
  br label %19

19:                                               ; preds = %18, %14
  %20 = load ptr, ptr %1, align 8, !tbaa !33
  store ptr %20, ptr %0, align 8, !tbaa !33
  br label %21

21:                                               ; preds = %19, %12, %11
  %22 = getelementptr inbounds %struct._ModuleList, ptr %3, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !44
  %24 = icmp eq ptr %23, null
  %25 = select i1 %24, ptr %3, ptr %23
  store ptr %1, ptr %25, align 8, !tbaa !7
  store ptr %1, ptr %22, align 8
  store ptr null, ptr %1, align 8, !tbaa !33
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind optsize memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define internal fastcc void @UpdateDs(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #10 {
  %3 = getelementptr inbounds %struct._Module, ptr %0, i64 0, i32 1
  %4 = load i64, ptr %3, align 8, !tbaa !29
  %5 = getelementptr inbounds [1024 x ptr], ptr @modules, i64 0, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !7
  %7 = icmp eq ptr %6, null
  br i1 %7, label %38, label %11

8:                                                ; preds = %35, %11
  %9 = load ptr, ptr %12, align 8, !tbaa !7
  %10 = icmp eq ptr %9, null
  br i1 %10, label %38, label %11, !llvm.loop !53

11:                                               ; preds = %8, %2
  %12 = phi ptr [ %9, %8 ], [ %6, %2 ]
  %13 = getelementptr inbounds %struct._Module, ptr %12, i64 0, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !19
  %15 = getelementptr inbounds [1024 x ptr], ptr @nets, i64 0, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !7
  %17 = icmp eq ptr %16, null
  br i1 %17, label %8, label %18

18:                                               ; preds = %11
  %19 = getelementptr inbounds [1024 x float], ptr @cost, i64 0, i64 %14
  br label %20

20:                                               ; preds = %35, %18
  %21 = phi ptr [ %16, %18 ], [ %36, %35 ]
  %22 = getelementptr inbounds %struct._Module, ptr %21, i64 0, i32 1
  %23 = load i64, ptr %22, align 8, !tbaa !13
  %24 = getelementptr inbounds [1024 x i32], ptr @moduleToGroup, i64 0, i64 %23
  %25 = load i32, ptr %24, align 4, !tbaa !34
  %26 = icmp ult i32 %25, 2
  br i1 %26, label %27, label %35

27:                                               ; preds = %20
  %28 = icmp eq i32 %25, %1
  %29 = getelementptr inbounds [1024 x float], ptr @D, i64 0, i64 %23
  %30 = load float, ptr %29, align 4, !tbaa !24
  %31 = load float, ptr %19, align 4, !tbaa !24
  %32 = fneg float %31
  %33 = select i1 %28, float %31, float %32
  %34 = fadd float %30, %33
  store float %34, ptr %29, align 4, !tbaa !24
  br label %35

35:                                               ; preds = %27, %20
  %36 = load ptr, ptr %21, align 8, !tbaa !7
  %37 = icmp eq ptr %36, null
  br i1 %37, label %8, label %20, !llvm.loop !54

38:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #12

; Function Attrs: nofree nounwind optsize uwtable
define internal fastcc void @PrintResults(i32 noundef %0) unnamed_addr #13 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !7
  %3 = tail call i64 @fwrite(ptr nonnull @.str.5, i64 47, i64 1, ptr %2)
  store i64 -1, ptr @maxStat, align 8, !tbaa !11
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(6144) @netStats, i8 0, i64 6144, i1 false), !tbaa !11
  %4 = icmp eq i32 %0, 0
  br i1 %4, label %38, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @stdout, align 8, !tbaa !7
  %7 = tail call i64 @fwrite(ptr nonnull @.str.1.6, i64 11, i64 1, ptr %6)
  %8 = load ptr, ptr @groupA, align 8, !tbaa !7
  %9 = icmp eq ptr %8, null
  br i1 %9, label %19, label %10

10:                                               ; preds = %10, %5
  %11 = phi ptr [ %17, %10 ], [ %8, %5 ]
  %12 = load ptr, ptr @stdout, align 8, !tbaa !7
  %13 = getelementptr inbounds %struct._Module, ptr %11, i64 0, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !29
  %15 = add i64 %14, 1
  %16 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %12, ptr noundef nonnull @.str.2.7, i64 noundef %15) #17
  %17 = load ptr, ptr %11, align 8, !tbaa !7
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %10, !llvm.loop !55

19:                                               ; preds = %10, %5
  %20 = load ptr, ptr @stdout, align 8, !tbaa !7
  %21 = tail call i32 @fputc(i32 10, ptr %20)
  %22 = load ptr, ptr @stdout, align 8, !tbaa !7
  %23 = tail call i64 @fwrite(ptr nonnull @.str.4.8, i64 11, i64 1, ptr %22)
  %24 = load ptr, ptr @groupB, align 8, !tbaa !7
  %25 = icmp eq ptr %24, null
  br i1 %25, label %35, label %26

26:                                               ; preds = %26, %19
  %27 = phi ptr [ %33, %26 ], [ %24, %19 ]
  %28 = load ptr, ptr @stdout, align 8, !tbaa !7
  %29 = getelementptr inbounds %struct._Module, ptr %27, i64 0, i32 1
  %30 = load i64, ptr %29, align 8, !tbaa !29
  %31 = add i64 %30, 1
  %32 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %28, ptr noundef nonnull @.str.2.7, i64 noundef %31) #17
  %33 = load ptr, ptr %27, align 8, !tbaa !7
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %26, !llvm.loop !56

35:                                               ; preds = %26, %19
  %36 = load ptr, ptr @stdout, align 8, !tbaa !7
  %37 = tail call i32 @fputc(i32 10, ptr %36)
  br label %38

38:                                               ; preds = %35, %1
  %39 = load ptr, ptr @groupA, align 8, !tbaa !7
  %40 = icmp eq ptr %39, null
  br i1 %40, label %100, label %45

41:                                               ; preds = %53, %45
  %42 = phi i64 [ %47, %45 ], [ %54, %53 ]
  %43 = load ptr, ptr %46, align 8, !tbaa !7
  %44 = icmp eq ptr %43, null
  br i1 %44, label %100, label %45, !llvm.loop !57

45:                                               ; preds = %41, %38
  %46 = phi ptr [ %43, %41 ], [ %39, %38 ]
  %47 = phi i64 [ %42, %41 ], [ 0, %38 ]
  %48 = getelementptr inbounds %struct._Module, ptr %46, i64 0, i32 1
  %49 = load i64, ptr %48, align 8, !tbaa !29
  %50 = getelementptr inbounds [1024 x ptr], ptr @modules, i64 0, i64 %49
  %51 = load ptr, ptr %50, align 8, !tbaa !7
  %52 = icmp eq ptr %51, null
  br i1 %52, label %41, label %57

53:                                               ; preds = %96, %69
  %54 = phi i64 [ %59, %69 ], [ %97, %96 ]
  %55 = load ptr, ptr %58, align 8, !tbaa !7
  %56 = icmp eq ptr %55, null
  br i1 %56, label %41, label %57, !llvm.loop !58

57:                                               ; preds = %53, %45
  %58 = phi ptr [ %55, %53 ], [ %51, %45 ]
  %59 = phi i64 [ %54, %53 ], [ %47, %45 ]
  %60 = getelementptr inbounds %struct._Module, ptr %58, i64 0, i32 1
  %61 = load i64, ptr %60, align 8, !tbaa !19
  %62 = getelementptr inbounds [1024 x ptr], ptr @nets, i64 0, i64 %61
  br label %63

63:                                               ; preds = %63, %57
  %64 = phi ptr [ %62, %57 ], [ %66, %63 ]
  %65 = phi i32 [ 0, %57 ], [ %68, %63 ]
  %66 = load ptr, ptr %64, align 8, !tbaa !7
  %67 = icmp eq ptr %66, null
  %68 = add nuw nsw i32 %65, 1
  br i1 %67, label %69, label %63, !llvm.loop !59

69:                                               ; preds = %63
  %.lcssa1 = phi i32 [ %65, %63 ]
  %70 = load ptr, ptr %62, align 8, !tbaa !7
  %71 = icmp eq ptr %70, null
  br i1 %71, label %53, label %72

72:                                               ; preds = %69
  %73 = zext i32 %.lcssa1 to i64
  %74 = getelementptr inbounds [256 x %struct.anon], ptr @netStats, i64 0, i64 %73, i32 1
  br label %75

75:                                               ; preds = %96, %72
  %76 = phi ptr [ %70, %72 ], [ %98, %96 ]
  %77 = phi i64 [ %59, %72 ], [ %97, %96 ]
  %78 = load i64, ptr %48, align 8, !tbaa !29
  %79 = getelementptr inbounds [1024 x i32], ptr @moduleToGroup, i64 0, i64 %78
  %80 = load i32, ptr %79, align 4, !tbaa !34
  %81 = getelementptr inbounds %struct._Module, ptr %76, i64 0, i32 1
  %82 = load i64, ptr %81, align 8, !tbaa !13
  %83 = getelementptr inbounds [1024 x i32], ptr @moduleToGroup, i64 0, i64 %82
  %84 = load i32, ptr %83, align 4, !tbaa !34
  %85 = icmp eq i32 %80, %84
  br i1 %85, label %96, label %86

86:                                               ; preds = %75
  br i1 %4, label %92, label %87

87:                                               ; preds = %86
  %88 = load ptr, ptr @stdout, align 8, !tbaa !7
  %89 = add i64 %78, 1
  %90 = add i64 %82, 1
  %91 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %88, ptr noundef nonnull @.str.5.9, i64 noundef %89, i64 noundef %90) #17
  br label %92

92:                                               ; preds = %87, %86
  %93 = load i64, ptr %74, align 8, !tbaa !60
  %94 = add i64 %93, 1
  store i64 %94, ptr %74, align 8, !tbaa !60
  %95 = add i64 %77, 1
  br label %96

96:                                               ; preds = %92, %75
  %97 = phi i64 [ %95, %92 ], [ %77, %75 ]
  %98 = load ptr, ptr %76, align 8, !tbaa !7
  %99 = icmp eq ptr %98, null
  br i1 %99, label %53, label %75, !llvm.loop !62

100:                                              ; preds = %41, %38
  %101 = phi i64 [ 0, %38 ], [ %42, %41 ]
  %102 = load ptr, ptr @stdout, align 8, !tbaa !7
  %103 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %102, ptr noundef nonnull @.str.6.10, i64 noundef %101) #17
  %104 = load i64, ptr @numNets, align 8, !tbaa !11
  %105 = icmp eq i64 %104, 0
  br i1 %105, label %161, label %106

106:                                              ; preds = %155, %100
  %107 = phi i64 [ %156, %155 ], [ %104, %100 ]
  %108 = phi i64 [ %157, %155 ], [ %104, %100 ]
  %109 = phi i64 [ %159, %155 ], [ 0, %100 ]
  %110 = phi i64 [ %158, %155 ], [ 0, %100 ]
  %111 = getelementptr inbounds [1024 x ptr], ptr @nets, i64 0, i64 %109
  br label %112

112:                                              ; preds = %112, %106
  %113 = phi ptr [ %111, %106 ], [ %115, %112 ]
  %114 = phi i32 [ 0, %106 ], [ %117, %112 ]
  %115 = load ptr, ptr %113, align 8, !tbaa !7
  %116 = icmp eq ptr %115, null
  %117 = add nuw nsw i32 %114, 1
  br i1 %116, label %118, label %112, !llvm.loop !63

118:                                              ; preds = %112
  %.lcssa = phi i32 [ %114, %112 ]
  %119 = zext i32 %.lcssa to i64
  %120 = getelementptr inbounds [256 x %struct.anon], ptr @netStats, i64 0, i64 %119
  %121 = load i64, ptr %120, align 8, !tbaa !64
  %122 = add i64 %121, 1
  store i64 %122, ptr %120, align 8, !tbaa !64
  %123 = load i64, ptr @maxStat, align 8, !tbaa !11
  %124 = icmp slt i64 %123, %119
  br i1 %124, label %125, label %126

125:                                              ; preds = %118
  store i64 %119, ptr @maxStat, align 8, !tbaa !11
  br label %126

126:                                              ; preds = %125, %118
  %127 = load ptr, ptr %111, align 8, !tbaa !7
  %128 = getelementptr inbounds %struct._Module, ptr %127, i64 0, i32 1
  %129 = load i64, ptr %128, align 8, !tbaa !13
  %130 = getelementptr inbounds [1024 x i32], ptr @moduleToGroup, i64 0, i64 %129
  %131 = load i32, ptr %130, align 4, !tbaa !34
  br label %132

132:                                              ; preds = %136, %126
  %133 = phi ptr [ %127, %126 ], [ %134, %136 ]
  %134 = load ptr, ptr %133, align 8, !tbaa !15
  %135 = icmp eq ptr %134, null
  br i1 %135, label %155, label %136

136:                                              ; preds = %132
  %137 = getelementptr inbounds %struct._Module, ptr %134, i64 0, i32 1
  %138 = load i64, ptr %137, align 8, !tbaa !13
  %139 = getelementptr inbounds [1024 x i32], ptr @moduleToGroup, i64 0, i64 %138
  %140 = load i32, ptr %139, align 4, !tbaa !34
  %141 = icmp eq i32 %131, %140
  br i1 %141, label %132, label %142, !llvm.loop !65

142:                                              ; preds = %136
  br i1 %4, label %149, label %143

143:                                              ; preds = %142
  %144 = load ptr, ptr @stdout, align 8, !tbaa !7
  %145 = trunc i64 %109 to i32
  %146 = add i32 %145, 1
  %147 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %144, ptr noundef nonnull @.str.7.11, i32 noundef %146) #17
  %148 = load i64, ptr @numNets, align 8, !tbaa !11
  br label %149

149:                                              ; preds = %143, %142
  %150 = phi i64 [ %148, %143 ], [ %107, %142 ]
  %151 = add i64 %110, 1
  %152 = getelementptr inbounds [256 x %struct.anon], ptr @netStats, i64 0, i64 %119, i32 2
  %153 = load i64, ptr %152, align 8, !tbaa !66
  %154 = add i64 %153, 1
  store i64 %154, ptr %152, align 8, !tbaa !66
  br label %155

155:                                              ; preds = %149, %132
  %156 = phi i64 [ %150, %149 ], [ %107, %132 ]
  %157 = phi i64 [ %150, %149 ], [ %108, %132 ]
  %158 = phi i64 [ %151, %149 ], [ %110, %132 ]
  %159 = add nuw i64 %109, 1
  %160 = icmp ugt i64 %157, %159
  br i1 %160, label %106, label %161, !llvm.loop !67

161:                                              ; preds = %155, %100
  %162 = phi i64 [ 0, %100 ], [ %158, %155 ]
  %163 = load ptr, ptr @stdout, align 8, !tbaa !7
  %164 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %163, ptr noundef nonnull @.str.8.12, i64 noundef %162) #17
  %165 = load i64, ptr @maxStat, align 8, !tbaa !11
  %166 = icmp slt i64 %165, 2
  br i1 %166, label %181, label %167

167:                                              ; preds = %167, %161
  %168 = phi i64 [ %178, %167 ], [ 2, %161 ]
  %169 = load ptr, ptr @stdout, align 8, !tbaa !7
  %170 = getelementptr inbounds [256 x %struct.anon], ptr @netStats, i64 0, i64 %168
  %171 = load i64, ptr %170, align 8, !tbaa !64
  %172 = getelementptr inbounds [256 x %struct.anon], ptr @netStats, i64 0, i64 %168, i32 1
  %173 = load i64, ptr %172, align 8, !tbaa !60
  %174 = getelementptr inbounds [256 x %struct.anon], ptr @netStats, i64 0, i64 %168, i32 2
  %175 = load i64, ptr %174, align 8, !tbaa !66
  %176 = trunc i64 %168 to i32
  %177 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %169, ptr noundef nonnull @.str.9.13, i32 noundef %176, i64 noundef %171, i64 noundef %173, i64 noundef %175) #17
  %178 = add nuw i64 %168, 1
  %179 = load i64, ptr @maxStat, align 8, !tbaa !11
  %180 = icmp slt i64 %179, %178
  br i1 %180, label %181, label %167, !llvm.loop !68

181:                                              ; preds = %167, %161
  ret void
}

attributes #0 = { noreturn nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind }
attributes #2 = { noreturn nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind optsize willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind optsize willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nofree norecurse nosync nounwind optsize memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { nofree nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold }
attributes #15 = { noreturn nounwind optsize }
attributes #16 = { nounwind }
attributes #17 = { optsize }
attributes #18 = { cold optsize }
attributes #19 = { nounwind optsize }
attributes #20 = { nounwind optsize willreturn memory(read) }
attributes #21 = { nounwind optsize allocsize(0) }

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
!11 = !{!12, !12, i64 0}
!12 = !{!"long", !9, i64 0}
!13 = !{!14, !12, i64 8}
!14 = !{!"_Module", !8, i64 0, !12, i64 8}
!15 = !{!14, !8, i64 0}
!16 = distinct !{!16, !17}
!17 = !{!"llvm.loop.mustprogress"}
!18 = distinct !{!18, !17}
!19 = !{!20, !12, i64 8}
!20 = !{!"_Net", !8, i64 0, !12, i64 8}
!21 = !{!20, !8, i64 0}
!22 = distinct !{!22, !17}
!23 = distinct !{!23, !17}
!24 = !{!25, !25, i64 0}
!25 = !{!"float", !9, i64 0}
!26 = distinct !{!26, !17, !27, !28}
!27 = !{!"llvm.loop.isvectorized", i32 1}
!28 = !{!"llvm.loop.unroll.runtime.disable"}
!29 = !{!30, !12, i64 8}
!30 = !{!"_ModuleRec", !8, i64 0, !12, i64 8}
!31 = !{!32, !8, i64 0}
!32 = !{!"_ModuleList", !8, i64 0, !8, i64 8}
!33 = !{!30, !8, i64 0}
!34 = !{!9, !9, i64 0}
!35 = distinct !{!35, !17}
!36 = distinct !{!36, !17}
!37 = distinct !{!37, !17}
!38 = distinct !{!38, !17}
!39 = distinct !{!39, !17}
!40 = distinct !{!40, !17}
!41 = distinct !{!41, !17}
!42 = distinct !{!42, !17}
!43 = !{i64 0, i64 8, !7, i64 8, i64 8, !7}
!44 = !{!32, !8, i64 8}
!45 = distinct !{!45, !17}
!46 = distinct !{!46, !17}
!47 = distinct !{!47, !17}
!48 = distinct !{!48, !17}
!49 = distinct !{!49, !17}
!50 = distinct !{!50, !17}
!51 = distinct !{!51, !17}
!52 = distinct !{!52, !17}
!53 = distinct !{!53, !17}
!54 = distinct !{!54, !17}
!55 = distinct !{!55, !17}
!56 = distinct !{!56, !17}
!57 = distinct !{!57, !17}
!58 = distinct !{!58, !17}
!59 = distinct !{!59, !17}
!60 = !{!61, !12, i64 8}
!61 = !{!"", !12, i64 0, !12, i64 8, !12, i64 16}
!62 = distinct !{!62, !17}
!63 = distinct !{!63, !17}
!64 = !{!61, !12, i64 0}
!65 = distinct !{!65, !17}
!66 = !{!61, !12, i64 16}
!67 = distinct !{!67, !17}
!68 = distinct !{!68, !17}
