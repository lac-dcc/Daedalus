; ModuleID = '/src/llvm-test-suite/build/MultiSource/Benchmarks/DOE-ProxyApps-C/Pathfinder/PathFinder.e.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.BitfieldStruct = type { i32, ptr }
%struct.NodeStruct = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr, i32, i32 }
%struct.SearchOptionsStruct = type { i32, i8, i8, i8, ptr, i32 }
%struct.ConfigurationStruct = type { ptr, ptr, ptr, i32 }
%struct.GraphStruct = type { ptr, i32, ptr, ptr, ptr }
%struct.SearchDiagramStruct = type { ptr, ptr }
%struct.NodeVecVecStruct = type { i32, i32, ptr }
%struct.EdgeListStruct = type { i32, ptr, ptr }
%struct.SystemCallMapElementStruct = type { ptr, i32, ptr }
%struct.StatsStruct = type { ptr, i32, i32, double, double, ptr }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr }

@.str = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"Functions: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"Basic blocks: %d\0A\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"0 \0A\00", align 1
@.str.6 = private unnamed_addr constant [62 x i8] c"-------------------------------------------- \0ASYSTEM CALLS \0A\0A\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"%d %s \0A\00", align 1
@__const.main.defaultFile = private unnamed_addr constant [23 x i8] c"MicroTestData.adj_list\00", align 16
@.str.2.1 = private unnamed_addr constant [14 x i8] c"c:i:x:o:q:huy\00", align 1
@optopt = external local_unnamed_addr global i32, align 4
@.str.3.2 = private unnamed_addr constant [38 x i8] c"\09Please specify configuration file.\0A\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"\09Please specify data file.\0A\0A\00", align 1
@.str.5.3 = private unnamed_addr constant [42 x i8] c"\09Please specify output graph data file.\0A\0A\00", align 1
@.str.6.4 = private unnamed_addr constant [58 x i8] c"\09Please specify recursion depth to keep spawning tasks.\0A\0A\00", align 1
@.str.7.5 = private unnamed_addr constant [6 x i8] c"\0A%s\0A\0A\00", align 1
@.str.8 = private unnamed_addr constant [625 x i8] c"\0AUsage: PathFinder.exe [OPTIONS] [<fileName>]\0A\0A  Operation:\0A    -c  <config file>   use configuration file\0A    -i  <data file>     interactive search of specified data file\0A    -x  <data file>     exhaustive leg search (any label to any label) of data file\0A\0A  Other:\0A    -o  <output file>   save optimized graph to file\0A    -h,u                prints this help message.\0A    -q  <depth>         use qthread parallelism (config file only). The depth value\0A                        specifies how deep in recursion to continue spawning new tasks\0A                        during searches\0A    -y                  create YAML output\0A\00", align 1
@optarg = external local_unnamed_addr global ptr, align 8
@.str.9 = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"Command\00", align 1
@.str.11 = private unnamed_addr constant [76 x i8] c"-c -i and -x are mutually exclusive, PathFinder can only do one of those.\0A\0A\00", align 1
@.str.12 = private unnamed_addr constant [74 x i8] c"-c (config file) -i (interactive) or -x (exhaustive) must be specified.\0A\0A\00", align 1
@.str.13 = private unnamed_addr constant [80 x i8] c"-o (optimized graph output) is only compatible with -x (exhaustive searches).\0A\0A\00", align 1
@.str.14 = private unnamed_addr constant [47 x i8] c"Error: No config file entered.\0A\0A\09---Exiting---\00", align 1
@.str.15 = private unnamed_addr constant [40 x i8] c"\0A\0AOverall Parse Time: %02d:%02d:%02.3f\0A\00", align 1
@stdin = external local_unnamed_addr global ptr, align 8
@.str.17 = private unnamed_addr constant [42 x i8] c"Error: No input provided.\0A\0A\09---Exiting---\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"bail\00", align 1
@.str.21 = private unnamed_addr constant [13 x i8] c"\0ASignature: \00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"'%s'\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c" -> \00", align 1
@.str.25 = private unnamed_addr constant [37 x i8] c"Found, resultant path has %d steps.\0A\00", align 1
@.str.27 = private unnamed_addr constant [24 x i8] c"\0A\0ATotal %d legs found\0A\0A\00", align 1
@str = private unnamed_addr constant [632 x i8] c"\0A\0A        PathFinder: finding a series of labeled nodes within a\0A                two-layer directed, cyclic graph.\0A               Copyright (2013) Sandia Corporation\0A\0A Sandia National Laboratories is a multi-program laboratory managed and\0A operated by Sandia Corporation, a wholly owned subsidiary of Lockheed\0A Martin Corporation, for the U.S. Department of Energy's National Nuclear\0A Security Administration under terms of Contract DE-AC04-94AL85000,\0A there is a non-exclusive license for use of this work by or on behalf\0A of the U.S. Government. Export of this program may require a license \0A from the United States Government.\0A\0A\00", align 1
@str.28 = private unnamed_addr constant [67 x i8] c"Error: Could not allocation configuration structure.\0A\0A\09---Exiting\0A\00", align 1
@str.29 = private unnamed_addr constant [21 x i8] c"\0A\0ASearches complete.\00", align 1
@str.30 = private unnamed_addr constant [81 x i8] c"\0APlease insert a node label for this signature (\22\22 to complete, \22bail\22 to exit):\00", align 1
@str.31 = private unnamed_addr constant [32 x i8] c"\0A\09Path not found for signature.\00", align 1
@str.32 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.16 = private unnamed_addr constant [70 x i8] c"Specified entrance edge length does not match data size for node: %d\0A\00", align 1
@.str.1.17 = private unnamed_addr constant [61 x i8] c"Specified edge length does not match data size for node: %d\0A\00", align 1
@.str.2.18 = private unnamed_addr constant [64 x i8] c"resolveNodeEdges: Outer node %d edge to non-contained node: %d\0A\00", align 1
@.str.3.21 = private unnamed_addr constant [22 x i8] c"\09%d is type: %s (%d)\0A\00", align 1
@.str.4.19 = private unnamed_addr constant [9 x i8] c"interior\00", align 1
@.str.5.20 = private unnamed_addr constant [9 x i8] c"entrance\00", align 1
@.str.6.22 = private unnamed_addr constant [74 x i8] c"resolveNodeEdges: Outer node %d has edge reference to undefined node: %d\0A\00", align 1
@.str.7.23 = private unnamed_addr constant [77 x i8] c"resolveNodeEdges: Interior node %d has edge reference to undefined node: %d\0A\00", align 1
@.str.8.26 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.9.27 = private unnamed_addr constant [52 x i8] c"Could not open data file: %s (parsing.c:parseFile)\0A\00", align 1
@.str.10.28 = private unnamed_addr constant [11 x i8] c"Functions:\00", align 1
@.str.11.29 = private unnamed_addr constant [25 x i8] c"\09%d functions specified\0A\00", align 1
@.str.12.30 = private unnamed_addr constant [10 x i8] c"Functions\00", align 1
@.str.13.31 = private unnamed_addr constant [60 x i8] c"Malformed file, Function count not specified in first line\0A\00", align 1
@.str.14.32 = private unnamed_addr constant [14 x i8] c"Basic blocks:\00", align 1
@.str.15.33 = private unnamed_addr constant [28 x i8] c"\09%d basic blocks specified\0A\00", align 1
@.str.16.34 = private unnamed_addr constant [13 x i8] c"Basic Blocks\00", align 1
@.str.17.35 = private unnamed_addr constant [11 x i8] c"----------\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"SYSTEM CALLS\00", align 1
@.str.19.36 = private unnamed_addr constant [56 x i8] c"Error in parseFile: Node %d undefined as an outer node\0A\00", align 1
@.str.20 = private unnamed_addr constant [36 x i8] c"\09%d total System Call Map elements\0A\00", align 1
@.str.21.37 = private unnamed_addr constant [13 x i8] c"System Calls\00", align 1
@.str.23.41 = private unnamed_addr constant [19 x i8] c"Could not open %s\0A\00", align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"Opened %s\0A\0A\00", align 1
@.str.25.42 = private unnamed_addr constant [25 x i8] c"Pathfinder Configuration\00", align 1
@.str.27.43 = private unnamed_addr constant [6 x i8] c"files\00", align 1
@.str.30 = private unnamed_addr constant [11 x i8] c"signatures\00", align 1
@.str.33 = private unnamed_addr constant [12 x i8] c"search type\00", align 1
@.str.36 = private unnamed_addr constant [6 x i8] c"file \00", align 1
@.str.38 = private unnamed_addr constant [17 x i8] c"Error parsing %s\00", align 1
@.str.40 = private unnamed_addr constant [11 x i8] c"signature \00", align 1
@str.38 = private unnamed_addr constant [22 x i8] c"\09...parsing complete.\00", align 1
@str.42 = private unnamed_addr constant [42 x i8] c"Could not allocate graph storage. Exiting\00", align 1
@str.43 = private unnamed_addr constant [46 x i8] c"Could not allocate signature storage. Exiting\00", align 1
@str.44 = private unnamed_addr constant [50 x i8] c"Error in config file: mismatch of signature count\00", align 1
@str.45 = private unnamed_addr constant [45 x i8] c"Error in config file: mismatch of file count\00", align 1
@str.47 = private unnamed_addr constant [34 x i8] c"No signatures to search, exiting.\00", align 1
@str.48 = private unnamed_addr constant [56 x i8] c"Error in config file: third line is not signature count\00", align 1
@str.49 = private unnamed_addr constant [28 x i8] c"No files to parse, exiting.\00", align 1
@str.50 = private unnamed_addr constant [52 x i8] c"Error in config file: second line is not file count\00", align 1
@str.51 = private unnamed_addr constant [68 x i8] c"Error in config file: doesn't start with \22Pathfinder Configuration\22\00", align 1
@.str.48 = private unnamed_addr constant [41 x i8] c"\0A\0AOverall Search Time: %02d:02%d:%05.2f\0A\00", align 1
@.str.1.55 = private unnamed_addr constant [29 x i8] c"Immediately before parallel\0A\00", align 1
@.str.2.56 = private unnamed_addr constant [58 x i8] c"\0A\0A%d found out of %d searches. Overall Time: %d:%d:%2.3f\0A\00", align 1
@.str.3.57 = private unnamed_addr constant [17 x i8] c"%02d:%02d:%02.3f\00", align 1
@.str.4.58 = private unnamed_addr constant [17 x i8] c"Signatures Found\00", align 1
@.str.5.59 = private unnamed_addr constant [12 x i8] c"Search Time\00", align 1
@__const.findAndLogAllPossibleLegs.fullIntSignature = private unnamed_addr constant [3 x i32] [i32 0, i32 0, i32 -1], align 4
@.str.7.62 = private unnamed_addr constant [55 x i8] c"\0A\0A%d found for %d searches. Overall Time: %d:%d:%2.3f\0A\00", align 1
@globalStats = internal unnamed_addr global ptr null, align 8
@.str.9.63 = private unnamed_addr constant [91 x i8] c"\0AThis graph has %f average nodes between labels.\0AStandard deviation: %f, total paths: %d\0A\0A\00", align 1
@.str.10.64 = private unnamed_addr constant [38 x i8] c"\09Shortest Path: %d, Longest Path: %d\0A\00", align 1
@.str.11.65 = private unnamed_addr constant [30 x i8] c"\09length %d appeared %d times\0A\00", align 1
@str.52 = private unnamed_addr constant [17 x i8] c"CrashAndBURN!!!\0A\00", align 1
@str.12 = private unnamed_addr constant [32 x i8] c"Immediately before nested for's\00", align 1
@.str.70 = private unnamed_addr constant [52 x i8] c"Bummer. outerIdx: %d, innerIdx: %d, node count: %d\0A\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.91 = private unnamed_addr constant [48 x i8] c"\0A\0AIntVector_insertEnd failed realloc size = %d\0A\00", align 1
@.str.3.107 = private unnamed_addr constant [46 x i8] c"\0A\0ANodePtrVec_push failed malloc(%d). Node: %d\00", align 1
@.str.4.108 = private unnamed_addr constant [13 x i8] c", label: %s\0A\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@str.102 = private unnamed_addr constant [38 x i8] c"Malloc failure in NodePtrVec creation\00", align 1
@str.9 = private unnamed_addr constant [46 x i8] c"Malloc failure in NodePtrVec storage creation\00", align 1
@str.10 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@str.11 = private unnamed_addr constant [46 x i8] c"Malloc failure in NodeVecVec storage creation\00", align 1
@str.12.115 = private unnamed_addr constant [38 x i8] c"Malloc failure in NodeVecVec creation\00", align 1
@str.13 = private unnamed_addr constant [32 x i8] c"\0A\0ANodeVecVec_push failed malloc\00", align 1
@output = internal unnamed_addr global ptr null, align 8
@.str.120 = private unnamed_addr constant [34 x i8] c"PathFinder_%d-%d-%d_%d-%d-%d.yaml\00", align 1
@.str.1.121 = private unnamed_addr constant [19 x i8] c"%d/%d/%d, %d:%d:%d\00", align 1
@.str.2.122 = private unnamed_addr constant [20 x i8] c"\0AWriting YAML: %s\0A\0A\00", align 1
@.str.3.123 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.4.125 = private unnamed_addr constant [22 x i8] c"Mini-Application Name\00", align 1
@.str.5.126 = private unnamed_addr constant [11 x i8] c"PathFinder\00", align 1
@.str.6.127 = private unnamed_addr constant [25 x i8] c"Mini-Application Version\00", align 1
@.str.7.128 = private unnamed_addr constant [6 x i8] c"1.0.0\00", align 1
@.str.8.129 = private unnamed_addr constant [14 x i8] c"Run Date/Time\00", align 1
@.str.9.130 = private unnamed_addr constant [17 x i8] c"Compiler Version\00", align 1
@.str.10.131 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.11.132 = private unnamed_addr constant [15 x i8] c"Compiler Flags\00", align 1
@.str.12.133 = private unnamed_addr constant [4 x i8] c"MPI\00", align 1
@.str.13.134 = private unnamed_addr constant [3 x i8] c"No\00", align 1
@.str.14.135 = private unnamed_addr constant [7 x i8] c"OpenMP\00", align 1
@.str.15.124 = private unnamed_addr constant [8 x i8] c"%s: %s\0A\00", align 1
@.str.16.142 = private unnamed_addr constant [8 x i8] c"%s: %i\0A\00", align 1

; Function Attrs: mustprogress nounwind optsize willreturn memory(readwrite, argmem: none) uwtable
define internal noalias ptr @Bitfield_new(i32 noundef %0) #0 {
  %2 = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #35
  %3 = icmp eq ptr %2, null
  br i1 %3, label %13, label %4

4:                                                ; preds = %1
  %5 = add nsw i32 %0, 7
  %6 = sdiv i32 %5, 8
  %7 = sext i32 %6 to i64
  %8 = tail call noalias ptr @calloc(i64 noundef %7, i64 noundef 1) #36
  %9 = getelementptr inbounds %struct.BitfieldStruct, ptr %2, i64 0, i32 1
  store ptr %8, ptr %9, align 8, !tbaa !7
  %10 = icmp eq ptr %8, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %4
  tail call void @free(ptr noundef nonnull %2) #37
  br label %13

12:                                               ; preds = %4
  store i32 %0, ptr %2, align 8, !tbaa !13
  br label %13

13:                                               ; preds = %12, %11, %1
  %14 = phi ptr [ %2, %12 ], [ null, %11 ], [ null, %1 ]
  ret ptr %14
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind optsize willreturn uwtable
define internal void @Bitfield_delete(ptr noundef %0) #4 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.BitfieldStruct, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !7
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %3
  tail call void @free(ptr noundef nonnull %5) #37
  br label %8

8:                                                ; preds = %7, %3
  tail call void @free(ptr noundef nonnull %0) #37
  br label %9

9:                                                ; preds = %8, %1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal zeroext i1 @Bitfield_nodeVisited(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #5 {
  %3 = getelementptr inbounds %struct.NodeStruct, ptr %1, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !14
  %5 = ashr i32 %4, 3
  %6 = getelementptr inbounds %struct.BitfieldStruct, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !7
  %8 = sext i32 %5 to i64
  %9 = getelementptr inbounds i8, ptr %7, i64 %8
  %10 = load i8, ptr %9, align 1, !tbaa !16
  %11 = and i32 %4, 7
  %12 = sext i8 %10 to i32
  %13 = shl nuw i32 16777216, %11
  %14 = ashr exact i32 %13, 24
  %15 = and i32 %14, %12
  %16 = icmp ne i32 %15, 0
  %17 = trunc i32 %14 to i8
  %18 = or i8 %10, %17
  store i8 %18, ptr %9, align 1, !tbaa !16
  ret i1 %16
}

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @Bitfield_clear(ptr nocapture noundef readonly %0) #6 {
  %2 = load i32, ptr %0, align 8, !tbaa !13
  %3 = add nsw i32 %2, 7
  %4 = sdiv i32 %3, 8
  %5 = getelementptr inbounds %struct.BitfieldStruct, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !7
  %7 = sext i32 %4 to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %6, i8 0, i64 %7, i1 false)
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: mustprogress nounwind optsize willreturn memory(readwrite, argmem: none) uwtable
define internal noalias ptr @Configuration_new() #0 {
  %1 = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #35
  %2 = tail call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #35
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %7

4:                                                ; preds = %0
  %5 = icmp eq ptr %1, null
  br i1 %5, label %15, label %6

6:                                                ; preds = %4
  tail call void @free(ptr noundef nonnull %1) #37
  br label %15

7:                                                ; preds = %0
  %8 = getelementptr inbounds %struct.SearchOptionsStruct, ptr %2, i64 0, i32 4
  store ptr null, ptr %8, align 8, !tbaa !17
  %9 = getelementptr inbounds %struct.SearchOptionsStruct, ptr %2, i64 0, i32 5
  store i32 0, ptr %9, align 8, !tbaa !20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %2, i8 0, i64 7, i1 false)
  %10 = icmp eq ptr %1, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %7
  tail call void @free(ptr noundef nonnull %2) #37
  br label %15

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.ConfigurationStruct, ptr %1, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  store ptr %2, ptr %13, align 8, !tbaa !21
  %14 = getelementptr inbounds %struct.ConfigurationStruct, ptr %1, i64 0, i32 3
  store i32 0, ptr %14, align 8, !tbaa !23
  br label %15

15:                                               ; preds = %12, %11, %6, %4
  %16 = phi ptr [ %1, %12 ], [ null, %11 ], [ null, %4 ], [ null, %6 ]
  ret ptr %16
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal double @currentTime() #8 {
  ret double 0.000000e+00
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: readwrite) uwtable
define internal noalias ptr @Graph_new() #9 {
  %1 = tail call noalias dereferenceable_or_null(40) ptr @malloc(i64 noundef 40) #35
  %2 = icmp eq ptr %1, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %0
  store ptr null, ptr %1, align 8, !tbaa !24
  %4 = getelementptr inbounds %struct.GraphStruct, ptr %1, i64 0, i32 1
  store i32 0, ptr %4, align 8, !tbaa !26
  %5 = getelementptr inbounds %struct.GraphStruct, ptr %1, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  br label %6

6:                                                ; preds = %3, %0
  ret ptr %1
}

; Function Attrs: nounwind optsize uwtable
define internal void @Graph_delete(ptr noundef %0) #10 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %25, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !24
  tail call void @free(ptr noundef %4) #37
  %5 = getelementptr inbounds %struct.GraphStruct, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !27
  tail call void @NodeList_clear(ptr noundef %6, i1 noundef zeroext true) #37
  %7 = getelementptr inbounds %struct.GraphStruct, ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !28
  %9 = icmp eq ptr %8, null
  br i1 %9, label %24, label %10

10:                                               ; preds = %3
  %11 = load ptr, ptr %8, align 8, !tbaa !29
  %12 = icmp eq ptr %11, null
  br i1 %12, label %22, label %13

13:                                               ; preds = %13, %10
  %14 = phi ptr [ %17, %13 ], [ %8, %10 ]
  %15 = getelementptr inbounds %struct.SearchDiagramStruct, ptr %14, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !31
  tail call void @free(ptr noundef %16) #37
  %17 = getelementptr inbounds %struct.SearchDiagramStruct, ptr %14, i64 1
  %18 = load ptr, ptr %17, align 8, !tbaa !29
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %13, !llvm.loop !32

20:                                               ; preds = %13
  %21 = load ptr, ptr %7, align 8, !tbaa !28
  br label %22

22:                                               ; preds = %20, %10
  %23 = phi ptr [ %21, %20 ], [ %8, %10 ]
  tail call void @free(ptr noundef %23) #37
  br label %24

24:                                               ; preds = %22, %3
  tail call void @free(ptr noundef nonnull %0) #37
  br label %25

25:                                               ; preds = %24, %1
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal zeroext i1 @Graph_addOuterNode(ptr noundef %0, ptr noundef %1) #10 {
  %3 = icmp ne ptr %0, null
  %4 = icmp ne ptr %1, null
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %16

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.GraphStruct, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !27
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %6
  %11 = tail call ptr (...) @NodeList_new() #37
  store ptr %11, ptr %7, align 8, !tbaa !27
  %12 = icmp eq ptr %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %10
  store ptr %1, ptr %11, align 8, !tbaa !34
  br label %16

14:                                               ; preds = %6
  %15 = tail call zeroext i1 @NodeList_insertBack(ptr noundef nonnull %8, ptr noundef nonnull %1) #37
  br label %16

16:                                               ; preds = %14, %13, %10, %2
  %17 = phi i1 [ true, %13 ], [ %15, %14 ], [ false, %2 ], [ false, %10 ]
  ret i1 %17
}

; Function Attrs: nofree norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal ptr @Graph_findNode(ptr nocapture noundef readonly %0, i32 noundef %1, i1 noundef zeroext %2) #11 {
  %4 = getelementptr inbounds %struct.GraphStruct, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !36
  %6 = icmp eq ptr %5, null
  br i1 %6, label %30, label %7

7:                                                ; preds = %26, %3
  %8 = phi ptr [ %28, %26 ], [ %5, %3 ]
  %9 = load ptr, ptr %8, align 8, !tbaa !34
  %10 = load i32, ptr %9, align 8, !tbaa !37
  %11 = icmp eq i32 %10, %1
  br i1 %11, label %30, label %12

12:                                               ; preds = %7
  br i1 %2, label %13, label %26

13:                                               ; preds = %12
  %14 = getelementptr inbounds %struct.NodeStruct, ptr %9, i64 0, i32 6
  %15 = load ptr, ptr %14, align 8, !tbaa !36
  %16 = icmp eq ptr %15, null
  br i1 %16, label %26, label %21

17:                                               ; preds = %21
  %18 = getelementptr inbounds %struct.SearchDiagramStruct, ptr %22, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !36
  %20 = icmp eq ptr %19, null
  br i1 %20, label %26, label %21, !llvm.loop !38

21:                                               ; preds = %17, %13
  %22 = phi ptr [ %19, %17 ], [ %15, %13 ]
  %23 = load ptr, ptr %22, align 8, !tbaa !34
  %24 = load i32, ptr %23, align 8, !tbaa !37
  %25 = icmp eq i32 %24, %1
  br i1 %25, label %30, label %17

26:                                               ; preds = %17, %13, %12
  %27 = getelementptr inbounds %struct.SearchDiagramStruct, ptr %8, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !36
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %7, !llvm.loop !39

30:                                               ; preds = %26, %21, %7, %3
  %31 = phi ptr [ null, %3 ], [ %23, %21 ], [ %9, %7 ], [ null, %26 ]
  ret ptr %31
}

; Function Attrs: nofree norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal ptr @Graph_findContainedNode(ptr nocapture noundef readonly %0, i32 noundef %1) #11 {
  %3 = getelementptr inbounds %struct.NodeStruct, ptr %0, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !36
  %5 = icmp eq ptr %4, null
  br i1 %5, label %15, label %10

6:                                                ; preds = %10
  %7 = getelementptr inbounds %struct.SearchDiagramStruct, ptr %11, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !36
  %9 = icmp eq ptr %8, null
  br i1 %9, label %15, label %10, !llvm.loop !38

10:                                               ; preds = %6, %2
  %11 = phi ptr [ %8, %6 ], [ %4, %2 ]
  %12 = load ptr, ptr %11, align 8, !tbaa !34
  %13 = load i32, ptr %12, align 8, !tbaa !37
  %14 = icmp eq i32 %13, %1
  br i1 %14, label %15, label %6

15:                                               ; preds = %10, %6, %2
  %16 = phi ptr [ null, %2 ], [ null, %6 ], [ %12, %10 ]
  ret ptr %16
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @buildGraphFromPaths(ptr noundef readonly %0, i32 noundef %1) #10 {
  %3 = tail call ptr (...) @Graph_new() #37
  %4 = icmp ne ptr %0, null
  %5 = icmp ne ptr %3, null
  %6 = select i1 %4, i1 %5, i1 false
  br i1 %6, label %7, label %87

7:                                                ; preds = %2
  %8 = load ptr, ptr %0, align 8, !tbaa !36
  %9 = icmp eq ptr %8, null
  br i1 %9, label %87, label %10

10:                                               ; preds = %82, %7
  %11 = phi ptr [ %85, %82 ], [ %8, %7 ]
  %12 = phi i64 [ %83, %82 ], [ 0, %7 ]
  %13 = phi ptr [ %84, %82 ], [ %0, %7 ]
  %14 = load i32, ptr %11, align 8, !tbaa !40
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %82

16:                                               ; preds = %76, %10
  %17 = phi i64 [ %78, %76 ], [ 0, %10 ]
  %18 = phi ptr [ %77, %76 ], [ %11, %10 ]
  %19 = getelementptr inbounds %struct.NodeVecVecStruct, ptr %18, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !42
  %21 = getelementptr inbounds ptr, ptr %20, i64 %17
  %22 = load ptr, ptr %21, align 8, !tbaa !36
  %23 = getelementptr inbounds %struct.NodeVecVecStruct, ptr %22, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !43
  %25 = load ptr, ptr %24, align 8, !tbaa !36
  %26 = tail call fastcc ptr @getDuplicateNodeForGraph(ptr noundef nonnull %3, ptr noundef %25) #38
  %27 = icmp eq ptr %26, null
  br i1 %27, label %87, label %28

28:                                               ; preds = %16
  %29 = load ptr, ptr %13, align 8, !tbaa !36
  %30 = getelementptr inbounds %struct.NodeVecVecStruct, ptr %29, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !42
  %32 = getelementptr inbounds ptr, ptr %31, i64 %17
  %33 = load ptr, ptr %32, align 8, !tbaa !36
  %34 = load i32, ptr %33, align 8, !tbaa !45
  %35 = icmp sgt i32 %34, 1
  br i1 %35, label %36, label %76

36:                                               ; preds = %66, %28
  %37 = phi i32 [ %74, %66 ], [ %34, %28 ]
  %38 = phi ptr [ %73, %66 ], [ %33, %28 ]
  %39 = phi i32 [ %68, %66 ], [ 1, %28 ]
  %40 = phi ptr [ %64, %66 ], [ %26, %28 ]
  switch i32 %1, label %57 [
    i32 0, label %45
    i32 1, label %41
  ]

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.NodeVecVecStruct, ptr %38, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !43
  %44 = sext i32 %39 to i64
  br label %47

45:                                               ; preds = %36
  %46 = add nsw i32 %37, -1
  br label %57

47:                                               ; preds = %47, %41
  %48 = phi i64 [ %54, %47 ], [ %44, %41 ]
  %49 = getelementptr inbounds ptr, ptr %43, i64 %48
  %50 = load ptr, ptr %49, align 8, !tbaa !36
  %51 = getelementptr inbounds %struct.NodeStruct, ptr %50, i64 0, i32 3
  %52 = load i32, ptr %51, align 8, !tbaa !46
  %53 = icmp slt i32 %52, 0
  %54 = add i64 %48, 1
  br i1 %53, label %47, label %55, !llvm.loop !47

55:                                               ; preds = %47
  %.lcssa = phi i64 [ %48, %47 ]
  %56 = trunc i64 %.lcssa to i32
  br label %57

57:                                               ; preds = %55, %45, %36
  %58 = phi i32 [ %46, %45 ], [ %39, %36 ], [ %56, %55 ]
  %59 = getelementptr inbounds %struct.NodeVecVecStruct, ptr %38, i64 0, i32 2
  %60 = load ptr, ptr %59, align 8, !tbaa !43
  %61 = sext i32 %58 to i64
  %62 = getelementptr inbounds ptr, ptr %60, i64 %61
  %63 = load ptr, ptr %62, align 8, !tbaa !36
  %64 = tail call fastcc ptr @getDuplicateNodeForGraph(ptr noundef nonnull %3, ptr noundef %63) #38
  %65 = icmp eq ptr %64, null
  br i1 %65, label %87, label %66

66:                                               ; preds = %57
  %67 = tail call zeroext i1 @Node_addEdgeToNode(ptr noundef nonnull %40, ptr noundef nonnull %64) #37
  %68 = add nsw i32 %58, 1
  %69 = load ptr, ptr %13, align 8, !tbaa !36
  %70 = getelementptr inbounds %struct.NodeVecVecStruct, ptr %69, i64 0, i32 2
  %71 = load ptr, ptr %70, align 8, !tbaa !42
  %72 = getelementptr inbounds ptr, ptr %71, i64 %17
  %73 = load ptr, ptr %72, align 8, !tbaa !36
  %74 = load i32, ptr %73, align 8, !tbaa !45
  %75 = icmp slt i32 %68, %74
  br i1 %75, label %36, label %76, !llvm.loop !48

76:                                               ; preds = %66, %28
  %77 = phi ptr [ %29, %28 ], [ %69, %66 ]
  %78 = add nuw nsw i64 %17, 1
  %79 = load i32, ptr %77, align 8, !tbaa !40
  %80 = sext i32 %79 to i64
  %81 = icmp slt i64 %78, %80
  br i1 %81, label %16, label %82, !llvm.loop !49

82:                                               ; preds = %76, %10
  %83 = add nuw i64 %12, 1
  %84 = getelementptr inbounds ptr, ptr %0, i64 %83
  %85 = load ptr, ptr %84, align 8, !tbaa !36
  %86 = icmp eq ptr %85, null
  br i1 %86, label %87, label %10, !llvm.loop !50

87:                                               ; preds = %82, %57, %16, %7, %2
  %88 = phi ptr [ null, %2 ], [ %3, %7 ], [ null, %57 ], [ null, %16 ], [ %3, %82 ]
  ret ptr %88
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc ptr @getDuplicateNodeForGraph(ptr noundef %0, ptr noundef %1) unnamed_addr #10 {
  %3 = load i32, ptr %1, align 8, !tbaa !37
  %4 = tail call ptr @Graph_findNode(ptr noundef %0, i32 noundef %3, i1 noundef zeroext true) #37
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %16

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.GraphStruct, ptr %0, i64 0, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !26
  %9 = add nsw i32 %8, 1
  store i32 %9, ptr %7, align 8, !tbaa !26
  %10 = tail call ptr @Node_duplicate(ptr noundef nonnull %1, i32 noundef %8) #37
  %11 = icmp eq ptr %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %6
  %13 = tail call zeroext i1 @Graph_addOuterNode(ptr noundef nonnull %0, ptr noundef nonnull %10) #37
  %14 = getelementptr inbounds %struct.NodeStruct, ptr %10, i64 0, i32 4
  store i32 0, ptr %14, align 4, !tbaa !51
  br label %16

15:                                               ; preds = %6
  tail call void @Graph_delete(ptr noundef nonnull %0) #37
  br label %16

16:                                               ; preds = %15, %12, %2
  %17 = phi ptr [ %10, %12 ], [ null, %15 ], [ %4, %2 ]
  ret ptr %17
}

; Function Attrs: nofree nounwind optsize uwtable
define internal zeroext i1 @exportGraph(ptr noundef readonly %0, ptr noundef readonly %1) #12 {
  %3 = icmp ne ptr %0, null
  %4 = icmp ne ptr %1, null
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %95

6:                                                ; preds = %2
  %7 = tail call noalias ptr @fopen(ptr noundef nonnull %1, ptr noundef nonnull @.str) #38
  %8 = icmp eq ptr %7, null
  br i1 %8, label %95, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.GraphStruct, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !36
  %12 = icmp eq ptr %11, null
  br i1 %12, label %20, label %13

13:                                               ; preds = %13, %9
  %14 = phi ptr [ %18, %13 ], [ %11, %9 ]
  %15 = phi i32 [ %16, %13 ], [ 0, %9 ]
  %16 = add nuw nsw i32 %15, 1
  %17 = getelementptr inbounds %struct.SearchDiagramStruct, ptr %14, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !36
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %13, !llvm.loop !52

20:                                               ; preds = %13, %9
  %21 = phi i32 [ 0, %9 ], [ %16, %13 ]
  %22 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %7, ptr noundef nonnull @.str.1, i32 noundef %21) #38
  %23 = getelementptr inbounds %struct.GraphStruct, ptr %0, i64 0, i32 1
  %24 = load i32, ptr %23, align 8, !tbaa !26
  %25 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %7, ptr noundef nonnull @.str.2, i32 noundef %24) #38
  %26 = load ptr, ptr %10, align 8, !tbaa !36
  %27 = icmp eq ptr %26, null
  br i1 %27, label %78, label %28

28:                                               ; preds = %74, %20
  %29 = phi ptr [ %76, %74 ], [ %26, %20 ]
  %30 = load ptr, ptr %29, align 8, !tbaa !34
  %31 = load i32, ptr %30, align 8, !tbaa !37
  %32 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %7, ptr noundef nonnull @.str.3, i32 noundef %31) #38
  %33 = load ptr, ptr %29, align 8, !tbaa !34
  %34 = getelementptr inbounds %struct.NodeStruct, ptr %33, i64 0, i32 7
  %35 = load ptr, ptr %34, align 8, !tbaa !53
  %36 = icmp eq ptr %35, null
  br i1 %36, label %72, label %37

37:                                               ; preds = %37, %28
  %38 = phi i32 [ %46, %37 ], [ 0, %28 ]
  %39 = phi ptr [ %48, %37 ], [ %35, %28 ]
  %40 = getelementptr inbounds %struct.EdgeListStruct, ptr %39, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !54
  %42 = getelementptr inbounds %struct.NodeStruct, ptr %41, i64 0, i32 4
  %43 = load i32, ptr %42, align 4, !tbaa !51
  %44 = icmp eq i32 %43, 0
  %45 = zext i1 %44 to i32
  %46 = add nuw nsw i32 %38, %45
  %47 = getelementptr inbounds %struct.EdgeListStruct, ptr %39, i64 0, i32 2
  %48 = load ptr, ptr %47, align 8, !tbaa !56
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %37, !llvm.loop !57

50:                                               ; preds = %37
  %.lcssa = phi i32 [ %46, %37 ]
  %51 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %7, ptr noundef nonnull @.str.3, i32 noundef %.lcssa) #38
  %52 = load ptr, ptr %29, align 8, !tbaa !34
  %53 = getelementptr inbounds %struct.NodeStruct, ptr %52, i64 0, i32 7
  %54 = load ptr, ptr %53, align 8, !tbaa !36
  %55 = icmp eq ptr %54, null
  br i1 %55, label %70, label %56

56:                                               ; preds = %66, %50
  %57 = phi ptr [ %68, %66 ], [ %54, %50 ]
  %58 = getelementptr inbounds %struct.EdgeListStruct, ptr %57, i64 0, i32 1
  %59 = load ptr, ptr %58, align 8, !tbaa !54
  %60 = getelementptr inbounds %struct.NodeStruct, ptr %59, i64 0, i32 4
  %61 = load i32, ptr %60, align 4, !tbaa !51
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %56
  %64 = load i32, ptr %57, align 8, !tbaa !58
  %65 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %7, ptr noundef nonnull @.str.3, i32 noundef %64) #38
  br label %66

66:                                               ; preds = %63, %56
  %67 = getelementptr inbounds %struct.EdgeListStruct, ptr %57, i64 0, i32 2
  %68 = load ptr, ptr %67, align 8, !tbaa !36
  %69 = icmp eq ptr %68, null
  br i1 %69, label %70, label %56, !llvm.loop !59

70:                                               ; preds = %66, %50
  %71 = tail call i32 @fputc(i32 10, ptr nonnull %7)
  br label %74

72:                                               ; preds = %28
  %73 = tail call i64 @fwrite(ptr nonnull @.str.5, i64 3, i64 1, ptr nonnull %7)
  br label %74

74:                                               ; preds = %72, %70
  %75 = getelementptr inbounds %struct.SearchDiagramStruct, ptr %29, i64 0, i32 1
  %76 = load ptr, ptr %75, align 8, !tbaa !36
  %77 = icmp eq ptr %76, null
  br i1 %77, label %78, label %28, !llvm.loop !60

78:                                               ; preds = %74, %20
  %79 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 61, i64 1, ptr nonnull %7)
  %80 = load ptr, ptr %10, align 8, !tbaa !36
  %81 = icmp eq ptr %80, null
  br i1 %81, label %95, label %82

82:                                               ; preds = %91, %78
  %83 = phi ptr [ %93, %91 ], [ %80, %78 ]
  %84 = load ptr, ptr %83, align 8, !tbaa !34
  %85 = getelementptr inbounds %struct.NodeStruct, ptr %84, i64 0, i32 2
  %86 = load ptr, ptr %85, align 8, !tbaa !61
  %87 = icmp eq ptr %86, null
  br i1 %87, label %91, label %88

88:                                               ; preds = %82
  %89 = load i32, ptr %84, align 8, !tbaa !37
  %90 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %7, ptr noundef nonnull @.str.7, i32 noundef %89, ptr noundef nonnull %86) #38
  br label %91

91:                                               ; preds = %88, %82
  %92 = getelementptr inbounds %struct.SearchDiagramStruct, ptr %83, i64 0, i32 1
  %93 = load ptr, ptr %92, align 8, !tbaa !36
  %94 = icmp eq ptr %93, null
  br i1 %94, label %95, label %82, !llvm.loop !62

95:                                               ; preds = %91, %78, %6, %2
  %96 = phi i1 [ false, %2 ], [ false, %6 ], [ true, %78 ], [ true, %91 ]
  ret i1 %96
}

; Function Attrs: nofree nounwind optsize
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #13

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #13

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: nounwind optsize uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #10 {
  %3 = alloca [23 x i8], align 16
  %4 = alloca [200 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 23, ptr nonnull %3) #39
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(23) %3, ptr noundef nonnull align 16 dereferenceable(23) @__const.main.defaultFile, i64 23, i1 false)
  %5 = tail call ptr (...) @Configuration_new() #37
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %4) #39
  %6 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %7 = icmp eq ptr %5, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.28)
  tail call void @exit(i32 noundef 0) #40
  unreachable

10:                                               ; preds = %2
  %11 = icmp slt i32 %0, 2
  br i1 %11, label %17, label %12

12:                                               ; preds = %10
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  %14 = getelementptr inbounds %struct.ConfigurationStruct, ptr %5, i64 0, i32 3
  %15 = getelementptr inbounds %struct.ConfigurationStruct, ptr %5, i64 0, i32 2
  %16 = zext i32 %0 to i64
  br label %18

17:                                               ; preds = %10
  call void @exhaustiveLegSearch(ptr noundef nonnull %3, ptr noundef nonnull %5) #38
  br label %104

18:                                               ; preds = %29, %12
  %19 = phi i32 [ 0, %12 ], [ %30, %29 ]
  %20 = phi i32 [ 0, %12 ], [ %31, %29 ]
  %21 = phi i32 [ 0, %12 ], [ %32, %29 ]
  %22 = phi ptr [ null, %12 ], [ %33, %29 ]
  %23 = phi i32 [ 0, %12 ], [ %34, %29 ]
  %24 = call i32 @getopt(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.2.1) #37
  %25 = shl i32 %24, 24
  %26 = icmp eq i32 %25, -16777216
  br i1 %26, label %78, label %27

27:                                               ; preds = %18
  %28 = ashr exact i32 %25, 24
  switch i32 %28, label %29 [
    i32 63, label %35
    i32 104, label %49
    i32 117, label %49
    i32 99, label %51
    i32 105, label %53
    i32 120, label %55
    i32 111, label %57
    i32 115, label %62
    i32 113, label %65
    i32 121, label %69
  ]

29:                                               ; preds = %77, %65, %62, %57, %55, %53, %51, %27
  %30 = phi i32 [ %19, %27 ], [ %19, %77 ], [ %19, %65 ], [ %19, %62 ], [ %19, %57 ], [ %19, %55 ], [ 1, %53 ], [ %19, %51 ]
  %31 = phi i32 [ %20, %27 ], [ %20, %77 ], [ %20, %65 ], [ %20, %62 ], [ %20, %57 ], [ 1, %55 ], [ %20, %53 ], [ %20, %51 ]
  %32 = phi i32 [ %21, %27 ], [ %21, %77 ], [ %21, %65 ], [ %21, %62 ], [ %21, %57 ], [ %21, %55 ], [ %21, %53 ], [ 1, %51 ]
  %33 = phi ptr [ %22, %27 ], [ %22, %77 ], [ %22, %65 ], [ %22, %62 ], [ %22, %57 ], [ %56, %55 ], [ %54, %53 ], [ %52, %51 ]
  %34 = phi i32 [ %23, %27 ], [ %23, %77 ], [ %23, %65 ], [ %23, %62 ], [ 1, %57 ], [ %23, %55 ], [ %23, %53 ], [ %23, %51 ]
  br label %18, !llvm.loop !63

35:                                               ; preds = %27
  %36 = load i32, ptr @optopt, align 4
  switch i32 %36, label %105 [
    i32 99, label %37
    i32 120, label %40
    i32 105, label %40
    i32 111, label %43
    i32 113, label %46
  ]

37:                                               ; preds = %35
  %38 = load ptr, ptr @stderr, align 8, !tbaa !36
  %39 = call i64 @fwrite(ptr nonnull @.str.3.2, i64 37, i64 1, ptr %38) #41
  br label %105

40:                                               ; preds = %35, %35
  %41 = load ptr, ptr @stderr, align 8, !tbaa !36
  %42 = call i64 @fwrite(ptr nonnull @.str.4, i64 28, i64 1, ptr %41) #41
  br label %105

43:                                               ; preds = %35
  %44 = load ptr, ptr @stderr, align 8, !tbaa !36
  %45 = call i64 @fwrite(ptr nonnull @.str.5.3, i64 41, i64 1, ptr %44) #41
  br label %105

46:                                               ; preds = %35
  %47 = load ptr, ptr @stderr, align 8, !tbaa !36
  %48 = call i64 @fwrite(ptr nonnull @.str.6.4, i64 57, i64 1, ptr %47) #41
  br label %105

49:                                               ; preds = %27, %27
  %50 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7.5, ptr noundef nonnull @.str.8) #38
  br label %105

51:                                               ; preds = %27
  %52 = load ptr, ptr @optarg, align 8, !tbaa !36
  br label %29

53:                                               ; preds = %27
  %54 = load ptr, ptr @optarg, align 8, !tbaa !36
  br label %29

55:                                               ; preds = %27
  %56 = load ptr, ptr @optarg, align 8, !tbaa !36
  br label %29

57:                                               ; preds = %27
  %58 = load ptr, ptr @optarg, align 8, !tbaa !36
  %59 = load ptr, ptr %15, align 8, !tbaa !21
  %60 = getelementptr inbounds %struct.SearchOptionsStruct, ptr %59, i64 0, i32 4
  store ptr %58, ptr %60, align 8, !tbaa !17
  %61 = getelementptr inbounds %struct.SearchOptionsStruct, ptr %59, i64 0, i32 3
  store i8 1, ptr %61, align 2, !tbaa !64
  br label %29

62:                                               ; preds = %27
  %63 = load ptr, ptr %15, align 8, !tbaa !21
  %64 = getelementptr inbounds %struct.SearchOptionsStruct, ptr %63, i64 0, i32 2
  store i8 1, ptr %64, align 1, !tbaa !65
  br label %29

65:                                               ; preds = %27
  %66 = load ptr, ptr @optarg, align 8, !tbaa !36
  %67 = call i32 @atoi(ptr nocapture noundef %66) #42
  %68 = call i32 @llvm.smax.i32(i32 %67, i32 1)
  store i32 %68, ptr %14, align 8, !tbaa !23
  br label %29

69:                                               ; preds = %27
  call void (...) @YAMLOpen() #37
  store i8 0, ptr %4, align 16, !tbaa !16
  br label %70

70:                                               ; preds = %70, %69
  %71 = phi i64 [ 0, %69 ], [ %75, %70 ]
  %72 = getelementptr inbounds ptr, ptr %1, i64 %71
  %73 = load ptr, ptr %72, align 8, !tbaa !36
  %74 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) @.str.9, ptr noundef nonnull %4, ptr noundef %73) #37
  %75 = add nuw nsw i64 %71, 1
  %76 = icmp eq i64 %75, %16
  br i1 %76, label %77, label %70, !llvm.loop !66

77:                                               ; preds = %70
  call void @YAMLWriteString(ptr noundef nonnull @.str.10, ptr noundef nonnull %13) #37
  br label %29

78:                                               ; preds = %18
  %.lcssa12 = phi i32 [ %19, %18 ]
  %.lcssa9 = phi i32 [ %20, %18 ]
  %.lcssa6 = phi i32 [ %21, %18 ]
  %.lcssa3 = phi ptr [ %22, %18 ]
  %.lcssa = phi i32 [ %23, %18 ]
  %79 = add nuw nsw i32 %.lcssa9, %.lcssa12
  %80 = add nuw nsw i32 %79, %.lcssa6
  %81 = icmp ugt i32 %80, 1
  br i1 %81, label %82, label %85

82:                                               ; preds = %78
  %83 = load ptr, ptr @stderr, align 8, !tbaa !36
  %84 = call i64 @fwrite(ptr nonnull @.str.11, i64 75, i64 1, ptr %83) #41
  br label %105

85:                                               ; preds = %78
  %86 = icmp eq i32 %80, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %85
  %88 = load ptr, ptr @stderr, align 8, !tbaa !36
  %89 = call i64 @fwrite(ptr nonnull @.str.12, i64 73, i64 1, ptr %88) #41
  br label %105

90:                                               ; preds = %85
  %91 = icmp eq i32 %.lcssa, 0
  %92 = icmp ne i32 %.lcssa9, 0
  %93 = select i1 %91, i1 true, i1 %92
  br i1 %93, label %97, label %94

94:                                               ; preds = %90
  %95 = load ptr, ptr @stderr, align 8, !tbaa !36
  %96 = call i64 @fwrite(ptr nonnull @.str.13, i64 79, i64 1, ptr %95) #41
  br label %105

97:                                               ; preds = %90
  %98 = icmp eq i32 %.lcssa6, 0
  br i1 %98, label %100, label %99

99:                                               ; preds = %97
  call void @runBatch(ptr noundef %.lcssa3, ptr noundef nonnull %5) #38
  br label %104

100:                                              ; preds = %97
  %101 = icmp eq i32 %.lcssa12, 0
  br i1 %101, label %103, label %102

102:                                              ; preds = %100
  call void @runInteractively(ptr noundef %.lcssa3, ptr noundef nonnull %5) #38
  br label %104

103:                                              ; preds = %100
  call void @exhaustiveLegSearch(ptr noundef %.lcssa3, ptr noundef nonnull %5) #38
  br label %104

104:                                              ; preds = %103, %102, %99, %17
  call void (...) @YAMLClose() #37
  br label %105

105:                                              ; preds = %104, %94, %87, %82, %49, %46, %43, %40, %37, %35
  %106 = phi i32 [ 0, %104 ], [ 0, %49 ], [ 1, %82 ], [ 1, %87 ], [ 1, %94 ], [ 1, %40 ], [ 1, %46 ], [ 1, %43 ], [ 1, %37 ], [ 1, %35 ]
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %4) #39
  call void @llvm.lifetime.end.p0(i64 23, ptr nonnull %3) #39
  ret i32 %106
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #15

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #16

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #14

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32 noundef) local_unnamed_addr #17

; Function Attrs: nounwind optsize uwtable
define internal void @exhaustiveLegSearch(ptr noundef %0, ptr noundef readonly %1) #10 {
  %3 = tail call ptr @parseFile(ptr noundef %0) #37
  %4 = icmp ne ptr %3, null
  %5 = icmp ne ptr %1, null
  %6 = and i1 %5, %4
  br i1 %6, label %7, label %21

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.ConfigurationStruct, ptr %1, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !21
  %10 = getelementptr inbounds %struct.SearchOptionsStruct, ptr %9, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !17
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %7
  %14 = load i32, ptr %9, align 8, !tbaa !67
  %15 = tail call i32 @findAllPossibleLegs(ptr noundef nonnull %3, i32 noundef %14) #37
  br label %18

16:                                               ; preds = %7
  %17 = tail call i32 @findAndLogAllPossibleLegs(ptr noundef nonnull %3, ptr noundef nonnull %9) #37
  br label %18

18:                                               ; preds = %16, %13
  %19 = phi i32 [ %15, %13 ], [ %17, %16 ]
  %20 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.27, i32 noundef %19) #38
  tail call void @Graph_delete(ptr noundef nonnull %3) #37
  br label %21

21:                                               ; preds = %18, %2
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @getopt(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #18

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #13

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(read)
declare i32 @atoi(ptr nocapture noundef) local_unnamed_addr #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #20

; Function Attrs: nofree nounwind optsize
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #13

; Function Attrs: nounwind optsize uwtable
define internal void @runBatch(ptr noundef %0, ptr noundef %1) #10 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %2
  %5 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14) #38
  tail call void @exit(i32 noundef 0) #40
  unreachable

6:                                                ; preds = %2
  %7 = tail call double (...) @currentTime() #37
  %8 = tail call zeroext i1 @parseConfigFile(ptr noundef nonnull %0, ptr noundef %1) #37
  %9 = tail call double (...) @currentTime() #37
  %10 = fsub double %9, %7
  %11 = fptosi double %10 to i32
  %12 = sdiv i32 %11, 3600
  %13 = tail call double @fmod(double noundef %10, double noundef 3.600000e+03) #37
  %14 = fptosi double %13 to i32
  %15 = sdiv i32 %14, 60
  %16 = tail call double @fmod(double noundef %13, double noundef 6.000000e+01) #37
  %17 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.15, i32 noundef %12, i32 noundef %15, double noundef %16) #38
  br i1 %8, label %18, label %19

18:                                               ; preds = %6
  tail call void @doMultiSearches(ptr noundef %1) #37
  br label %19

19:                                               ; preds = %18, %6
  %20 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.29)
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @runInteractively(ptr noundef %0, ptr nocapture noundef readonly %1) #10 {
  %3 = alloca [200 x i8], align 16
  %4 = alloca [25 x ptr], align 16
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %3) #39
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %4) #39
  %5 = tail call ptr @parseFile(ptr noundef %0) #37
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.ConfigurationStruct, ptr %1, i64 0, i32 2
  br label %10

9:                                                ; preds = %2
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %4) #39
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %3) #39
  ret void

10:                                               ; preds = %24, %7
  %11 = phi i64 [ 0, %7 ], [ %25, %24 ]
  %12 = call i32 @puts(ptr nonnull dereferenceable(1) @str.30)
  call void @mygets(ptr noundef nonnull %3, i64 noundef 200) #38
  %13 = call i32 @bcmp(ptr noundef nonnull dereferenceable(5) %3, ptr noundef nonnull dereferenceable(5) @.str.19, i64 5)
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  call void @exit(i32 noundef 1) #40
  unreachable

16:                                               ; preds = %10
  %17 = load i8, ptr %3, align 16
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %16
  %20 = call noalias ptr @strdup(ptr noundef nonnull %3) #37
  %21 = getelementptr inbounds [25 x ptr], ptr %4, i64 0, i64 %11
  store ptr %20, ptr %21, align 8, !tbaa !36
  %22 = add nuw nsw i64 %11, 1
  %23 = icmp eq i64 %22, 25
  br i1 %23, label %28, label %24

24:                                               ; preds = %61, %19
  %25 = phi i64 [ %22, %19 ], [ 0, %61 ]
  br label %10, !llvm.loop !68

26:                                               ; preds = %16
  %27 = trunc i64 %11 to i32
  br label %28

28:                                               ; preds = %26, %19
  %29 = phi i32 [ %27, %26 ], [ 25, %19 ]
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [25 x ptr], ptr %4, i64 0, i64 %30
  store ptr null, ptr %31, align 8, !tbaa !36
  %32 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.21) #38
  %33 = icmp sgt i32 %29, 0
  br i1 %33, label %34, label %51

34:                                               ; preds = %28
  %35 = add nsw i32 %29, -1
  %36 = zext i32 %35 to i64
  %37 = zext i32 %29 to i64
  br label %38

38:                                               ; preds = %48, %34
  %39 = phi i64 [ 0, %34 ], [ %49, %48 ]
  %40 = getelementptr inbounds [25 x ptr], ptr %4, i64 0, i64 %39
  %41 = load ptr, ptr %40, align 8, !tbaa !36
  %42 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.22, ptr noundef %41) #38
  %43 = icmp ult i64 %39, %36
  br i1 %43, label %44, label %46

44:                                               ; preds = %38
  %45 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.23) #38
  br label %48

46:                                               ; preds = %38
  %47 = call i32 @puts(ptr nonnull dereferenceable(1) @str.32)
  br label %48

48:                                               ; preds = %46, %44
  %49 = add nuw nsw i64 %39, 1
  %50 = icmp eq i64 %49, %37
  br i1 %50, label %51, label %38, !llvm.loop !69

51:                                               ; preds = %48, %28
  %52 = call ptr @NodePtrVec_new(i32 noundef 50) #37
  %53 = load ptr, ptr %8, align 8, !tbaa !21
  %54 = load i32, ptr %53, align 8, !tbaa !67
  %55 = call zeroext i1 @findLabelPath(ptr noundef nonnull %5, ptr noundef nonnull %4, ptr noundef %52, i32 noundef %54) #37
  br i1 %55, label %56, label %59

56:                                               ; preds = %51
  %57 = load i32, ptr %52, align 8, !tbaa !45
  %58 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.25, i32 noundef %57) #38
  br label %61

59:                                               ; preds = %51
  %60 = call i32 @puts(ptr nonnull dereferenceable(1) @str.31)
  br label %61

61:                                               ; preds = %59, %56
  call void @NodePtrVec_delete(ptr noundef %52) #37
  br label %24
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #15

; Function Attrs: nounwind optsize uwtable
define internal void @mygets(ptr noundef %0, i64 noundef %1) #10 {
  %3 = trunc i64 %1 to i32
  %4 = load ptr, ptr @stdin, align 8, !tbaa !36
  %5 = tail call ptr @fgets(ptr noundef %0, i32 noundef %3, ptr noundef %4) #38
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  %8 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17) #38
  tail call void @exit(i32 noundef 0) #40
  unreachable

9:                                                ; preds = %2
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #42
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %9
  %13 = add i64 %10, -1
  %14 = getelementptr inbounds i8, ptr %0, i64 %13
  %15 = load i8, ptr %14, align 1, !tbaa !16
  %16 = icmp eq i8 %15, 10
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  store i8 0, ptr %14, align 1, !tbaa !16
  br label %18

18:                                               ; preds = %17, %12, %9
  ret void
}

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #21

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare noalias ptr @strdup(ptr nocapture noundef readonly) local_unnamed_addr #22

; Function Attrs: nofree nounwind optsize
declare noundef ptr @fgets(ptr noundef, i32 noundef, ptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #23

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @fmod(double noundef, double noundef) local_unnamed_addr #24

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: readwrite) uwtable
define internal noalias ptr @Node_new(i32 noundef %0, i32 noundef %1) #9 {
  %3 = tail call noalias dereferenceable_or_null(56) ptr @malloc(i64 noundef 56) #35
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %2
  store i32 %0, ptr %3, align 8, !tbaa !37
  %6 = getelementptr inbounds %struct.NodeStruct, ptr %3, i64 0, i32 1
  store i32 %1, ptr %6, align 4, !tbaa !14
  %7 = getelementptr inbounds %struct.NodeStruct, ptr %3, i64 0, i32 2
  store ptr null, ptr %7, align 8, !tbaa !61
  %8 = getelementptr inbounds %struct.NodeStruct, ptr %3, i64 0, i32 3
  store i32 -1, ptr %8, align 8, !tbaa !46
  %9 = getelementptr inbounds %struct.NodeStruct, ptr %3, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %9, i8 0, i64 36, i1 false)
  br label %10

10:                                               ; preds = %5, %2
  ret ptr %3
}

; Function Attrs: nounwind optsize uwtable
define internal void @Node_delete(ptr noundef %0) #10 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %14, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.NodeStruct, ptr %0, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !70
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %3
  tail call void @NodeList_clear(ptr noundef nonnull %5, i1 noundef zeroext true) #38
  br label %8

8:                                                ; preds = %7, %3
  %9 = getelementptr inbounds %struct.NodeStruct, ptr %0, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !53
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call void @EdgeList_clear(ptr noundef nonnull %10) #38
  br label %13

13:                                               ; preds = %12, %8
  tail call void @free(ptr noundef nonnull %0) #37
  br label %14

14:                                               ; preds = %13, %1
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @NodeList_clear(ptr noundef %0, i1 noundef zeroext %1) #10 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %13, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.SearchDiagramStruct, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !71
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %4
  tail call void @NodeList_clear(ptr noundef nonnull %6, i1 noundef zeroext %1) #38
  br label %9

9:                                                ; preds = %8, %4
  br i1 %1, label %10, label %12

10:                                               ; preds = %9
  %11 = load ptr, ptr %0, align 8, !tbaa !34
  tail call void @Node_delete(ptr noundef %11) #38
  br label %12

12:                                               ; preds = %10, %9
  tail call void @free(ptr noundef nonnull %0) #37
  br label %13

13:                                               ; preds = %12, %2
  ret void
}

; Function Attrs: nounwind optsize memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal void @EdgeList_clear(ptr noundef %0) #25 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.EdgeListStruct, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !56
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %3
  tail call void @EdgeList_clear(ptr noundef nonnull %5) #38
  br label %8

8:                                                ; preds = %7, %3
  tail call void @free(ptr noundef nonnull %0) #37
  br label %9

9:                                                ; preds = %8, %1
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write, argmem: read, inaccessiblemem: readwrite) uwtable
define internal noalias ptr @Node_duplicate(ptr noundef readonly %0, i32 noundef %1) #26 {
  %3 = tail call noalias dereferenceable_or_null(56) ptr @malloc(i64 noundef 56) #35
  %4 = icmp ne ptr %3, null
  %5 = icmp ne ptr %0, null
  %6 = and i1 %5, %4
  br i1 %6, label %7, label %17

7:                                                ; preds = %2
  %8 = load i32, ptr %0, align 8, !tbaa !37
  store i32 %8, ptr %3, align 8, !tbaa !37
  %9 = getelementptr inbounds %struct.NodeStruct, ptr %3, i64 0, i32 1
  store i32 %1, ptr %9, align 4, !tbaa !14
  %10 = getelementptr inbounds %struct.NodeStruct, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !61
  %12 = getelementptr inbounds %struct.NodeStruct, ptr %3, i64 0, i32 2
  store ptr %11, ptr %12, align 8, !tbaa !61
  %13 = getelementptr inbounds %struct.NodeStruct, ptr %0, i64 0, i32 3
  %14 = getelementptr inbounds %struct.NodeStruct, ptr %3, i64 0, i32 3
  %15 = load <2 x i32>, ptr %13, align 8, !tbaa !16
  store <2 x i32> %15, ptr %14, align 8, !tbaa !16
  %16 = getelementptr inbounds %struct.NodeStruct, ptr %3, i64 0, i32 5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %16, i8 0, i64 32, i1 false)
  br label %17

17:                                               ; preds = %7, %2
  %18 = phi ptr [ %3, %7 ], [ null, %2 ]
  ret ptr %18
}

; Function Attrs: nofree nounwind optsize uwtable
define internal void @Node_addInteriorNode(ptr noundef %0, ptr noundef %1) #12 {
  %3 = icmp ne ptr %0, null
  %4 = icmp ne ptr %1, null
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %19

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.NodeStruct, ptr %0, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !70
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %6
  %11 = tail call dereferenceable_or_null(16) ptr @calloc(i64 1, i64 16)
  %12 = icmp eq ptr %11, null
  store ptr %11, ptr %7, align 8, !tbaa !70
  br i1 %12, label %19, label %13

13:                                               ; preds = %10
  store ptr %1, ptr %11, align 8, !tbaa !34
  br label %16

14:                                               ; preds = %6
  %15 = tail call zeroext i1 @NodeList_insertBack(ptr noundef nonnull %8, ptr noundef nonnull %1) #38
  br label %16

16:                                               ; preds = %14, %13
  %17 = getelementptr inbounds %struct.NodeStruct, ptr %1, i64 0, i32 5
  store ptr %0, ptr %17, align 8, !tbaa !72
  %18 = getelementptr inbounds %struct.NodeStruct, ptr %1, i64 0, i32 4
  store i32 1, ptr %18, align 4, !tbaa !51
  br label %19

19:                                               ; preds = %16, %10, %2
  ret void
}

; Function Attrs: nofree nounwind optsize uwtable
define internal zeroext i1 @NodeList_insertBack(ptr noundef %0, ptr noundef %1) #12 {
  %3 = icmp ne ptr %0, null
  %4 = icmp ne ptr %1, null
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %20

6:                                                ; preds = %2
  %7 = load ptr, ptr %0, align 8, !tbaa !34
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %6
  store ptr %1, ptr %0, align 8, !tbaa !34
  br label %20

10:                                               ; preds = %10, %6
  %11 = phi ptr [ %13, %10 ], [ %0, %6 ]
  %12 = getelementptr inbounds %struct.SearchDiagramStruct, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !71
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %10, !llvm.loop !73

15:                                               ; preds = %10
  %.lcssa = phi ptr [ %11, %10 ]
  %16 = tail call dereferenceable_or_null(16) ptr @calloc(i64 1, i64 16)
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.SearchDiagramStruct, ptr %.lcssa, i64 0, i32 1
  store ptr %1, ptr %16, align 8, !tbaa !34
  store ptr %16, ptr %19, align 8, !tbaa !71
  br label %20

20:                                               ; preds = %18, %15, %9, %2
  %21 = phi i1 [ true, %9 ], [ true, %18 ], [ false, %2 ], [ false, %15 ]
  ret i1 %21
}

; Function Attrs: nofree nounwind optsize uwtable
define internal zeroext i1 @Node_addEdgeToNode(ptr noundef %0, ptr noundef %1) #12 {
  %3 = icmp ne ptr %0, null
  %4 = icmp ne ptr %1, null
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %29

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.NodeStruct, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !36
  %9 = icmp eq ptr %8, null
  br i1 %9, label %19, label %14

10:                                               ; preds = %14
  %11 = getelementptr inbounds %struct.EdgeListStruct, ptr %15, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !36
  %13 = icmp eq ptr %12, null
  br i1 %13, label %19, label %14, !llvm.loop !74

14:                                               ; preds = %10, %6
  %15 = phi ptr [ %12, %10 ], [ %8, %6 ]
  %16 = getelementptr inbounds %struct.EdgeListStruct, ptr %15, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !54
  %18 = icmp eq ptr %17, %1
  br i1 %18, label %29, label %10

19:                                               ; preds = %10, %6
  %20 = tail call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #35
  %21 = icmp eq ptr %20, null
  br i1 %21, label %29, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.EdgeListStruct, ptr %20, i64 0, i32 1
  store ptr %1, ptr %23, align 8, !tbaa !54
  %24 = load i32, ptr %1, align 8, !tbaa !37
  store i32 %24, ptr %20, align 8, !tbaa !58
  %25 = getelementptr inbounds %struct.EdgeListStruct, ptr %20, i64 0, i32 2
  store ptr %8, ptr %25, align 8, !tbaa !56
  store ptr %20, ptr %7, align 8, !tbaa !53
  %26 = getelementptr inbounds %struct.NodeStruct, ptr %0, i64 0, i32 8
  %27 = load i32, ptr %26, align 8, !tbaa !75
  %28 = add nsw i32 %27, 1
  store i32 %28, ptr %26, align 8, !tbaa !75
  br label %29

29:                                               ; preds = %22, %19, %14, %2
  %30 = phi i1 [ true, %22 ], [ false, %2 ], [ false, %19 ], [ true, %14 ]
  ret i1 %30
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(inaccessiblemem: readwrite) uwtable
define internal noalias ptr @NodeList_new() #27 {
  %1 = tail call dereferenceable_or_null(16) ptr @calloc(i64 1, i64 16)
  ret ptr %1
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: readwrite) uwtable
define internal noalias ptr @EdgeList_new() #9 {
  %1 = tail call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #35
  %2 = icmp eq ptr %1, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %0
  store i32 -1, ptr %1, align 8, !tbaa !58
  %4 = getelementptr inbounds %struct.EdgeListStruct, ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  br label %5

5:                                                ; preds = %3, %0
  ret ptr %1
}

; Function Attrs: nofree nounwind optsize uwtable
define internal zeroext i1 @EdgeList_insertNodeId(ptr noundef %0, i32 noundef %1) #12 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %19, label %4

4:                                                ; preds = %2
  %5 = load i32, ptr %0, align 8, !tbaa !58
  %6 = icmp eq i32 %5, -1
  br i1 %6, label %7, label %8

7:                                                ; preds = %4
  store i32 %1, ptr %0, align 8, !tbaa !58
  br label %19

8:                                                ; preds = %8, %4
  %9 = phi ptr [ %11, %8 ], [ %0, %4 ]
  %10 = getelementptr inbounds %struct.EdgeListStruct, ptr %9, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !56
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %8, !llvm.loop !76

13:                                               ; preds = %8
  %.lcssa = phi ptr [ %9, %8 ]
  %14 = tail call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #35
  %15 = icmp eq ptr %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.EdgeListStruct, ptr %.lcssa, i64 0, i32 2
  %18 = getelementptr inbounds %struct.EdgeListStruct, ptr %14, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %18, i8 0, i64 16, i1 false)
  store i32 %1, ptr %14, align 8, !tbaa !58
  store ptr %14, ptr %17, align 8, !tbaa !56
  br label %19

19:                                               ; preds = %16, %13, %7, %2
  %20 = phi i1 [ true, %7 ], [ true, %16 ], [ false, %2 ], [ false, %13 ]
  ret i1 %20
}

; Function Attrs: nounwind optsize uwtable
define internal void @buildEntranceList(ptr noundef %0, ptr noundef readonly %1) #10 {
  %3 = icmp ne ptr %0, null
  %4 = icmp ne ptr %1, null
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %45

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.NodeVecVecStruct, ptr %1, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !77
  %9 = getelementptr inbounds i32, ptr %8, i64 1
  %10 = load i32, ptr %9, align 4, !tbaa !79
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %45, label %12

12:                                               ; preds = %6
  %13 = load i32, ptr %1, align 8, !tbaa !80
  %14 = add nsw i32 %13, -2
  %15 = icmp eq i32 %10, %14
  br i1 %15, label %20, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr @stderr, align 8, !tbaa !36
  %18 = load i32, ptr %0, align 8, !tbaa !37
  %19 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %17, ptr noundef nonnull @.str.16, i32 noundef %18) #43
  br label %20

20:                                               ; preds = %16, %12
  %21 = getelementptr inbounds %struct.NodeStruct, ptr %0, i64 0, i32 7
  %22 = load ptr, ptr %21, align 8, !tbaa !53
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = tail call ptr (...) @EdgeList_new() #37
  store ptr %25, ptr %21, align 8, !tbaa !53
  %26 = icmp eq ptr %25, null
  br i1 %26, label %45, label %27

27:                                               ; preds = %24, %20
  %28 = load i32, ptr %1, align 8, !tbaa !80
  %29 = icmp sgt i32 %28, 2
  br i1 %29, label %30, label %45

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.NodeStruct, ptr %0, i64 0, i32 9
  br label %32

32:                                               ; preds = %32, %30
  %33 = phi i64 [ 2, %30 ], [ %41, %32 ]
  %34 = load ptr, ptr %21, align 8, !tbaa !53
  %35 = load ptr, ptr %7, align 8, !tbaa !77
  %36 = getelementptr inbounds i32, ptr %35, i64 %33
  %37 = load i32, ptr %36, align 4, !tbaa !79
  %38 = tail call zeroext i1 @EdgeList_insertNodeId(ptr noundef %34, i32 noundef %37) #37
  %39 = load i32, ptr %31, align 4, !tbaa !81
  %40 = add nsw i32 %39, 1
  store i32 %40, ptr %31, align 4, !tbaa !81
  %41 = add nuw nsw i64 %33, 1
  %42 = load i32, ptr %1, align 8, !tbaa !80
  %43 = sext i32 %42 to i64
  %44 = icmp slt i64 %41, %43
  br i1 %44, label %32, label %45, !llvm.loop !82

45:                                               ; preds = %32, %27, %24, %6, %2
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @buildNodeFromData(ptr noundef readonly %0) #10 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %47, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !80
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %47, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.NodeVecVecStruct, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !77
  %9 = load i32, ptr %8, align 4, !tbaa !79
  %10 = tail call ptr @Node_new(i32 noundef %9, i32 noundef -1) #37
  %11 = icmp eq ptr %10, null
  br i1 %11, label %47, label %12

12:                                               ; preds = %6
  %13 = load ptr, ptr %7, align 8, !tbaa !77
  %14 = getelementptr inbounds i32, ptr %13, i64 1
  %15 = load i32, ptr %14, align 4, !tbaa !79
  %16 = load i32, ptr %0, align 8, !tbaa !80
  %17 = add nsw i32 %16, -2
  %18 = icmp eq i32 %15, %17
  br i1 %18, label %23, label %19

19:                                               ; preds = %12
  %20 = load ptr, ptr @stderr, align 8, !tbaa !36
  %21 = load i32, ptr %13, align 4, !tbaa !79
  %22 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %20, ptr noundef nonnull @.str.1.17, i32 noundef %21) #43
  br label %23

23:                                               ; preds = %19, %12
  %24 = icmp sgt i32 %15, 0
  br i1 %24, label %25, label %47

25:                                               ; preds = %23
  %26 = tail call ptr (...) @EdgeList_new() #37
  %27 = getelementptr inbounds %struct.NodeStruct, ptr %10, i64 0, i32 7
  store ptr %26, ptr %27, align 8, !tbaa !53
  %28 = icmp eq ptr %26, null
  br i1 %28, label %47, label %29

29:                                               ; preds = %25
  %30 = load i32, ptr %0, align 8, !tbaa !80
  %31 = icmp sgt i32 %30, 2
  br i1 %31, label %32, label %47

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.NodeStruct, ptr %10, i64 0, i32 8
  br label %34

34:                                               ; preds = %34, %32
  %35 = phi i64 [ 2, %32 ], [ %43, %34 ]
  %36 = load ptr, ptr %27, align 8, !tbaa !53
  %37 = load ptr, ptr %7, align 8, !tbaa !77
  %38 = getelementptr inbounds i32, ptr %37, i64 %35
  %39 = load i32, ptr %38, align 4, !tbaa !79
  %40 = tail call zeroext i1 @EdgeList_insertNodeId(ptr noundef %36, i32 noundef %39) #37
  %41 = load i32, ptr %33, align 8, !tbaa !75
  %42 = add nsw i32 %41, 1
  store i32 %42, ptr %33, align 8, !tbaa !75
  %43 = add nuw nsw i64 %35, 1
  %44 = load i32, ptr %0, align 8, !tbaa !80
  %45 = sext i32 %44 to i64
  %46 = icmp slt i64 %43, %45
  br i1 %46, label %34, label %47, !llvm.loop !83

47:                                               ; preds = %34, %29, %25, %23, %6, %3, %1
  %48 = phi ptr [ null, %3 ], [ null, %1 ], [ null, %6 ], [ %10, %25 ], [ %10, %23 ], [ %10, %29 ], [ %10, %34 ]
  ret ptr %48
}

; Function Attrs: nounwind optsize uwtable
define internal void @resolveNodeEdges(ptr noundef %0, ptr noundef readonly %1, i1 noundef zeroext %2) #10 {
  %4 = getelementptr inbounds %struct.NodeStruct, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !36
  %6 = icmp eq ptr %5, null
  br i1 %6, label %63, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.NodeStruct, ptr %1, i64 0, i32 5
  br label %9

9:                                                ; preds = %59, %7
  %10 = phi ptr [ %5, %7 ], [ %61, %59 ]
  %11 = load i32, ptr %10, align 8, !tbaa !58
  br i1 %2, label %12, label %42

12:                                               ; preds = %9
  %13 = tail call ptr @Graph_findNode(ptr noundef %0, i32 noundef %11, i1 noundef zeroext true) #37
  %14 = icmp eq ptr %13, null
  br i1 %14, label %37, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.NodeStruct, ptr %13, i64 0, i32 4
  %17 = load i32, ptr %16, align 4, !tbaa !51
  %18 = add i32 %17, -1
  %19 = icmp ult i32 %18, 2
  br i1 %19, label %20, label %35

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.NodeStruct, ptr %13, i64 0, i32 5
  %22 = load ptr, ptr %21, align 8, !tbaa !72
  %23 = icmp eq ptr %22, %1
  br i1 %23, label %35, label %24

24:                                               ; preds = %20
  %25 = load ptr, ptr @stderr, align 8, !tbaa !36
  %26 = load i32, ptr %1, align 8, !tbaa !37
  %27 = load i32, ptr %10, align 8, !tbaa !58
  %28 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %25, ptr noundef nonnull @.str.2.18, i32 noundef %26, i32 noundef %27) #43
  %29 = load ptr, ptr @stderr, align 8, !tbaa !36
  %30 = load i32, ptr %13, align 8, !tbaa !37
  %31 = load i32, ptr %16, align 4, !tbaa !51
  %32 = icmp eq i32 %31, 1
  %33 = select i1 %32, ptr @.str.4.19, ptr @.str.5.20
  %34 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %29, ptr noundef nonnull @.str.3.21, i32 noundef %30, ptr noundef nonnull %33, i32 noundef %31) #43
  br label %59

35:                                               ; preds = %20, %15
  %36 = getelementptr inbounds %struct.EdgeListStruct, ptr %10, i64 0, i32 1
  store ptr %13, ptr %36, align 8, !tbaa !54
  br label %59

37:                                               ; preds = %12
  %38 = load ptr, ptr @stderr, align 8, !tbaa !36
  %39 = load i32, ptr %1, align 8, !tbaa !37
  %40 = load i32, ptr %10, align 8, !tbaa !58
  %41 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %38, ptr noundef nonnull @.str.6.22, i32 noundef %39, i32 noundef %40) #43
  br label %59

42:                                               ; preds = %9
  %43 = tail call ptr @Graph_findNode(ptr noundef %0, i32 noundef %11, i1 noundef zeroext false) #37
  %44 = icmp eq ptr %43, null
  br i1 %44, label %47, label %45

45:                                               ; preds = %42
  %46 = getelementptr inbounds %struct.EdgeListStruct, ptr %10, i64 0, i32 1
  store ptr %43, ptr %46, align 8, !tbaa !54
  br label %59

47:                                               ; preds = %42
  %48 = load ptr, ptr %8, align 8, !tbaa !72
  %49 = load i32, ptr %10, align 8, !tbaa !58
  %50 = tail call ptr @Graph_findContainedNode(ptr noundef %48, i32 noundef %49) #37
  %51 = icmp eq ptr %50, null
  br i1 %51, label %54, label %52

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.EdgeListStruct, ptr %10, i64 0, i32 1
  store ptr %50, ptr %53, align 8, !tbaa !54
  br label %59

54:                                               ; preds = %47
  %55 = load ptr, ptr @stderr, align 8, !tbaa !36
  %56 = load i32, ptr %1, align 8, !tbaa !37
  %57 = load i32, ptr %10, align 8, !tbaa !58
  %58 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %55, ptr noundef nonnull @.str.7.23, i32 noundef %56, i32 noundef %57) #43
  br label %59

59:                                               ; preds = %54, %52, %45, %37, %35, %24
  %60 = getelementptr inbounds %struct.EdgeListStruct, ptr %10, i64 0, i32 2
  %61 = load ptr, ptr %60, align 8, !tbaa !36
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %9, !llvm.loop !84

63:                                               ; preds = %59, %3
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @parseFile(ptr noundef %0) #10 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %213, label %3

3:                                                ; preds = %1
  %4 = tail call noalias ptr @fopen(ptr noundef nonnull %0, ptr noundef nonnull @.str.8.26) #38
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9.27, ptr noundef nonnull %0) #38
  br label %213

8:                                                ; preds = %3
  %9 = tail call ptr (...) @Graph_new() #37
  %10 = icmp eq ptr %9, null
  br i1 %10, label %213, label %11

11:                                               ; preds = %8
  %12 = tail call noalias ptr @strdup(ptr noundef nonnull %0) #37
  store ptr %12, ptr %9, align 8, !tbaa !24
  %13 = tail call ptr @CharVector_new(i32 noundef 1024) #37
  %14 = tail call i32 @CharVector_getLineFromFile(ptr noundef %13, ptr noundef nonnull %4) #37
  %15 = tail call i32 @feof(ptr noundef nonnull %4) #37
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %29

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.NodeVecVecStruct, ptr %13, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !85
  %20 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(11) @.str.10.28, ptr noundef nonnull dereferenceable(1) %19, i64 noundef 10) #42
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %17
  %23 = getelementptr inbounds i8, ptr %19, i64 10
  %24 = tail call i32 @atoi(ptr nocapture noundef nonnull %23) #42
  %25 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11.29, i32 noundef %24) #38
  tail call void @YAMLWriteInt(ptr noundef nonnull @.str.12.30, i32 noundef %24) #37
  %26 = tail call i32 @CharVector_getLineFromFile(ptr noundef nonnull %13, ptr noundef nonnull %4) #37
  %27 = tail call i32 @feof(ptr noundef nonnull %4) #37
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %32, label %42

29:                                               ; preds = %17, %11
  %30 = load ptr, ptr @stderr, align 8, !tbaa !36
  %31 = tail call i64 @fwrite(ptr nonnull @.str.13.31, i64 59, i64 1, ptr %30) #41
  br label %213

32:                                               ; preds = %22
  %33 = load ptr, ptr %18, align 8, !tbaa !85
  %34 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(14) @.str.14.32, ptr noundef nonnull dereferenceable(1) %33, i64 noundef 13) #42
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %32
  %37 = getelementptr inbounds i8, ptr %33, i64 13
  %38 = tail call i32 @atoi(ptr nocapture noundef nonnull %37) #42
  %39 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.15.33, i32 noundef %38) #38
  tail call void @YAMLWriteInt(ptr noundef nonnull @.str.16.34, i32 noundef %38) #37
  %40 = tail call ptr @IntVector_new(i32 noundef 8) #37
  %41 = getelementptr inbounds %struct.GraphStruct, ptr %9, i64 0, i32 1
  br label %45

42:                                               ; preds = %32, %22
  %43 = load ptr, ptr @stderr, align 8, !tbaa !36
  %44 = tail call i64 @fwrite(ptr nonnull @.str.13.31, i64 59, i64 1, ptr %43) #41
  br label %213

45:                                               ; preds = %67, %36
  %46 = tail call i32 @feof(ptr noundef nonnull %4) #37
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %68

48:                                               ; preds = %45
  %49 = tail call i32 @CharVector_getLineFromFile(ptr noundef nonnull %13, ptr noundef nonnull %4) #37
  %50 = tail call i32 @feof(ptr noundef nonnull %4) #37
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %68

52:                                               ; preds = %48
  %53 = load ptr, ptr %18, align 8, !tbaa !85
  %54 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(11) @.str.17.35, ptr noundef nonnull dereferenceable(1) %53, i64 noundef 10) #42
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %68, label %56

56:                                               ; preds = %52
  %57 = tail call i32 @IntVector_createFromString(ptr noundef %40, ptr noundef %53) #37
  %58 = icmp sgt i32 %57, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %56
  %60 = tail call ptr @buildNodeFromData(ptr noundef %40) #38
  %61 = icmp eq ptr %60, null
  br i1 %61, label %67, label %62

62:                                               ; preds = %59
  %63 = tail call zeroext i1 @Graph_addOuterNode(ptr noundef nonnull %9, ptr noundef nonnull %60) #37
  %64 = load i32, ptr %41, align 8, !tbaa !26
  %65 = getelementptr inbounds %struct.NodeStruct, ptr %60, i64 0, i32 1
  store i32 %64, ptr %65, align 4, !tbaa !14
  %66 = add nsw i32 %64, 1
  store i32 %66, ptr %41, align 8, !tbaa !26
  br label %67

67:                                               ; preds = %62, %59, %56
  store i32 0, ptr %40, align 8, !tbaa !80
  br label %45, !llvm.loop !87

68:                                               ; preds = %52, %48, %45
  %69 = getelementptr inbounds %struct.NodeVecVecStruct, ptr %40, i64 0, i32 2
  br label %71

70:                                               ; preds = %104, %101
  br label %71

71:                                               ; preds = %70, %68
  %72 = phi i1 [ false, %68 ], [ %82, %70 ]
  %73 = tail call i32 @feof(ptr noundef nonnull %4) #37
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %126

75:                                               ; preds = %71
  %76 = tail call i32 @CharVector_getLineFromFile(ptr noundef %13, ptr noundef nonnull %4) #37
  %77 = tail call i32 @feof(ptr noundef nonnull %4) #37
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %126

79:                                               ; preds = %75
  %80 = load ptr, ptr %18, align 8, !tbaa !85
  %81 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(13) @.str.18, ptr noundef nonnull dereferenceable(1) %80, i64 noundef 12) #42
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %126, label %83

83:                                               ; preds = %79
  %84 = tail call ptr @__ctype_b_loc() #44
  %85 = load ptr, ptr %84, align 8, !tbaa !36
  %86 = load i8, ptr %80, align 1, !tbaa !16
  %87 = sext i8 %86 to i64
  %88 = getelementptr inbounds i16, ptr %85, i64 %87
  %89 = load i16, ptr %88, align 2, !tbaa !88
  %90 = and i16 %89, 2048
  %91 = icmp eq i16 %90, 0
  br i1 %91, label %94, label %92

92:                                               ; preds = %83
  %93 = tail call i32 @atoi(ptr nocapture noundef nonnull %80) #42
  br label %94

94:                                               ; preds = %92, %83
  %95 = phi i32 [ %93, %92 ], [ -1, %83 ]
  %96 = tail call ptr @Graph_findNode(ptr noundef nonnull %9, i32 noundef %95, i1 noundef zeroext false) #37
  %97 = icmp eq ptr %96, null
  br i1 %97, label %98, label %101

98:                                               ; preds = %94
  %.lcssa3 = phi i32 [ %95, %94 ]
  %99 = load ptr, ptr @stderr, align 8, !tbaa !36
  %100 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %99, ptr noundef nonnull @.str.19.36, i32 noundef %.lcssa3) #43
  br label %126

101:                                              ; preds = %125, %94
  %102 = tail call i32 @feof(ptr noundef nonnull %4) #37
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %70, !llvm.loop !90

104:                                              ; preds = %101
  %105 = tail call i32 @CharVector_getLineFromFile(ptr noundef %13, ptr noundef nonnull %4) #37
  %106 = load ptr, ptr %18, align 8, !tbaa !85
  %107 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(11) @.str.17.35, ptr noundef nonnull dereferenceable(1) %106, i64 noundef 10) #42
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %70, label %109, !llvm.loop !90

109:                                              ; preds = %104
  %110 = tail call i32 @IntVector_createFromString(ptr noundef %40, ptr noundef %106) #37
  %111 = icmp sgt i32 %110, 0
  br i1 %111, label %112, label %125

112:                                              ; preds = %109
  %113 = load ptr, ptr %69, align 8, !tbaa !77
  %114 = load i32, ptr %113, align 4, !tbaa !79
  %115 = load i32, ptr %96, align 8, !tbaa !37
  %116 = icmp eq i32 %114, %115
  br i1 %116, label %117, label %118

117:                                              ; preds = %112
  tail call void @buildEntranceList(ptr noundef nonnull %96, ptr noundef nonnull %40) #38
  br label %125

118:                                              ; preds = %112
  %119 = tail call ptr @buildNodeFromData(ptr noundef nonnull %40) #38
  %120 = icmp eq ptr %119, null
  br i1 %120, label %125, label %121

121:                                              ; preds = %118
  tail call void @Node_addInteriorNode(ptr noundef nonnull %96, ptr noundef nonnull %119) #37
  %122 = load i32, ptr %41, align 8, !tbaa !26
  %123 = getelementptr inbounds %struct.NodeStruct, ptr %119, i64 0, i32 1
  store i32 %122, ptr %123, align 4, !tbaa !14
  %124 = add nsw i32 %122, 1
  store i32 %124, ptr %41, align 8, !tbaa !26
  br label %125

125:                                              ; preds = %121, %118, %117, %109
  store i32 0, ptr %40, align 8, !tbaa !80
  br label %101, !llvm.loop !91

126:                                              ; preds = %98, %79, %75, %71
  %127 = phi i1 [ false, %98 ], [ %72, %71 ], [ true, %79 ], [ %72, %75 ]
  %128 = tail call ptr @SystemCallMap_new(i32 noundef %24) #37
  %129 = getelementptr inbounds %struct.GraphStruct, ptr %9, i64 0, i32 4
  store ptr %128, ptr %129, align 8, !tbaa !92
  %130 = icmp eq ptr %128, null
  br i1 %130, label %131, label %132

131:                                              ; preds = %126
  tail call void @IntVector_delete(ptr noundef %40) #37
  br label %213

132:                                              ; preds = %126
  br i1 %127, label %133, label %181

133:                                              ; preds = %150, %132
  %134 = tail call i32 @feof(ptr noundef nonnull %4) #37
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %181

136:                                              ; preds = %133
  %137 = tail call i32 @CharVector_getLineFromFile(ptr noundef %13, ptr noundef nonnull %4) #37
  %138 = tail call i32 @feof(ptr noundef nonnull %4) #37
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %181

140:                                              ; preds = %136
  %141 = tail call ptr @__ctype_b_loc() #44
  %142 = load ptr, ptr %141, align 8, !tbaa !36
  %143 = load ptr, ptr %18, align 8, !tbaa !85
  %144 = load i8, ptr %143, align 1, !tbaa !16
  %145 = sext i8 %144 to i64
  %146 = getelementptr inbounds i16, ptr %142, i64 %145
  %147 = load i16, ptr %146, align 2, !tbaa !88
  %148 = and i16 %147, 2048
  %149 = icmp eq i16 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %176, %154, %151, %140
  br label %133, !llvm.loop !93

151:                                              ; preds = %140
  %152 = tail call i32 @atoi(ptr nocapture noundef nonnull %143) #42
  %153 = icmp sgt i32 %152, -1
  br i1 %153, label %154, label %150

154:                                              ; preds = %157, %151
  %155 = phi i8 [ %160, %157 ], [ %144, %151 ]
  %156 = phi i64 [ %158, %157 ], [ 0, %151 ]
  switch i8 %155, label %157 [
    i8 32, label %161
    i8 0, label %150
  ], !llvm.loop !93

157:                                              ; preds = %154
  %158 = add nuw i64 %156, 1
  %159 = getelementptr inbounds i8, ptr %143, i64 %158
  %160 = load i8, ptr %159, align 1, !tbaa !16
  br label %154, !llvm.loop !94

161:                                              ; preds = %154
  %.lcssa = phi i64 [ %156, %154 ]
  %162 = add i64 %.lcssa, 1
  %163 = tail call ptr @Graph_findNode(ptr noundef nonnull %9, i32 noundef %152, i1 noundef zeroext true) #37
  %164 = load ptr, ptr %18, align 8, !tbaa !85
  %165 = and i64 %162, 4294967295
  %166 = getelementptr inbounds i8, ptr %164, i64 %165
  br label %167

167:                                              ; preds = %171, %161
  %168 = phi i64 [ %172, %171 ], [ 0, %161 ]
  %169 = getelementptr inbounds i8, ptr %166, i64 %168
  %170 = load i8, ptr %169, align 1, !tbaa !16
  switch i8 %170, label %171 [
    i8 0, label %176
    i8 13, label %173
    i8 10, label %173
  ]

171:                                              ; preds = %167
  %172 = add nuw i64 %168, 1
  br label %167, !llvm.loop !95

173:                                              ; preds = %167, %167
  %.lcssa2 = phi i64 [ %168, %167 ], [ %168, %167 ]
  %174 = getelementptr inbounds i8, ptr %166, i64 %.lcssa2
  store i8 0, ptr %174, align 1, !tbaa !16
  %175 = load ptr, ptr %18, align 8, !tbaa !85
  br label %176

176:                                              ; preds = %173, %167
  %177 = phi ptr [ %175, %173 ], [ %164, %167 ]
  %178 = load ptr, ptr %129, align 8, !tbaa !92
  %179 = getelementptr inbounds i8, ptr %177, i64 %165
  %180 = tail call zeroext i1 @SystemCallMap_insert(ptr noundef %178, ptr noundef nonnull %179, ptr noundef %163) #37
  br label %150

181:                                              ; preds = %136, %133, %132
  tail call void @CharVector_delete(ptr noundef %13) #37
  %182 = getelementptr inbounds %struct.GraphStruct, ptr %9, i64 0, i32 2
  %183 = load ptr, ptr %182, align 8, !tbaa !36
  %184 = icmp eq ptr %183, null
  br i1 %184, label %202, label %185

185:                                              ; preds = %198, %181
  %186 = phi ptr [ %200, %198 ], [ %183, %181 ]
  %187 = load ptr, ptr %186, align 8, !tbaa !34
  tail call void @resolveNodeEdges(ptr noundef nonnull %9, ptr noundef %187, i1 noundef zeroext true) #38
  %188 = load ptr, ptr %186, align 8, !tbaa !34
  %189 = getelementptr inbounds %struct.NodeStruct, ptr %188, i64 0, i32 6
  %190 = load ptr, ptr %189, align 8, !tbaa !36
  %191 = icmp eq ptr %190, null
  br i1 %191, label %198, label %192

192:                                              ; preds = %192, %185
  %193 = phi ptr [ %196, %192 ], [ %190, %185 ]
  %194 = load ptr, ptr %193, align 8, !tbaa !34
  tail call void @resolveNodeEdges(ptr noundef nonnull %9, ptr noundef %194, i1 noundef zeroext false) #38
  %195 = getelementptr inbounds %struct.SearchDiagramStruct, ptr %193, i64 0, i32 1
  %196 = load ptr, ptr %195, align 8, !tbaa !36
  %197 = icmp eq ptr %196, null
  br i1 %197, label %198, label %192, !llvm.loop !96

198:                                              ; preds = %192, %185
  %199 = getelementptr inbounds %struct.SearchDiagramStruct, ptr %186, i64 0, i32 1
  %200 = load ptr, ptr %199, align 8, !tbaa !36
  %201 = icmp eq ptr %200, null
  br i1 %201, label %202, label %185, !llvm.loop !97

202:                                              ; preds = %198, %181
  %203 = load ptr, ptr %129, align 8, !tbaa !92
  %204 = load i32, ptr %203, align 8, !tbaa !98
  %205 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.20, i32 noundef %204) #38
  %206 = load ptr, ptr %129, align 8, !tbaa !92
  %207 = load i32, ptr %206, align 8, !tbaa !98
  tail call void @YAMLWriteInt(ptr noundef nonnull @.str.21.37, i32 noundef %207) #37
  %208 = load ptr, ptr %182, align 8, !tbaa !27
  %209 = load i32, ptr %41, align 8, !tbaa !26
  %210 = tail call ptr @SearchDiagram_build(ptr noundef %208, i32 noundef %209) #37
  %211 = getelementptr inbounds %struct.GraphStruct, ptr %9, i64 0, i32 3
  store ptr %210, ptr %211, align 8, !tbaa !28
  %212 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.38)
  br label %213

213:                                              ; preds = %202, %131, %42, %29, %8, %6, %1
  %214 = phi ptr [ null, %29 ], [ null, %42 ], [ null, %131 ], [ %9, %202 ], [ null, %6 ], [ null, %1 ], [ null, %8 ]
  ret ptr %214
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @feof(ptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #23

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #28

; Function Attrs: nofree nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal noalias ptr @parseSignature(ptr noundef %0) #29 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %44, label %3

3:                                                ; preds = %10, %1
  %4 = phi i64 [ %12, %10 ], [ 0, %1 ]
  %5 = phi i32 [ %11, %10 ], [ 0, %1 ]
  %6 = getelementptr inbounds i8, ptr %0, i64 %4
  %7 = load i8, ptr %6, align 1, !tbaa !16
  switch i8 %7, label %10 [
    i8 0, label %13
    i8 32, label %8
  ]

8:                                                ; preds = %3
  %9 = add nsw i32 %5, 1
  store i8 0, ptr %6, align 1, !tbaa !16
  br label %10

10:                                               ; preds = %8, %3
  %11 = phi i32 [ %9, %8 ], [ %5, %3 ]
  %12 = add nuw i64 %4, 1
  br label %3, !llvm.loop !100

13:                                               ; preds = %3
  %.lcssa1 = phi i32 [ %5, %3 ]
  %14 = add nsw i32 %.lcssa1, 1
  %15 = sext i32 %14 to i64
  %16 = shl nsw i64 %15, 3
  %17 = tail call noalias ptr @malloc(i64 noundef %16) #35
  %18 = icmp eq ptr %17, null
  br i1 %18, label %44, label %19

19:                                               ; preds = %13
  %20 = icmp sgt i32 %.lcssa1, 0
  br i1 %20, label %21, label %41

21:                                               ; preds = %19
  %22 = zext i32 %.lcssa1 to i64
  br label %23

23:                                               ; preds = %37, %21
  %24 = phi i64 [ 0, %21 ], [ %39, %37 ]
  %25 = phi i64 [ 0, %21 ], [ %38, %37 ]
  %26 = shl i64 %25, 32
  %27 = ashr exact i64 %26, 32
  %28 = getelementptr inbounds i8, ptr %0, i64 %27
  %29 = tail call noalias ptr @strdup(ptr noundef nonnull %28) #37
  %30 = getelementptr inbounds ptr, ptr %17, i64 %24
  store ptr %29, ptr %30, align 8, !tbaa !36
  br label %31

31:                                               ; preds = %31, %23
  %32 = phi i64 [ %36, %31 ], [ %27, %23 ]
  %33 = getelementptr inbounds i8, ptr %0, i64 %32
  %34 = load i8, ptr %33, align 1, !tbaa !16
  %35 = icmp eq i8 %34, 0
  %36 = add i64 %32, 1
  br i1 %35, label %37, label %31, !llvm.loop !101

37:                                               ; preds = %31
  %.lcssa = phi i64 [ %32, %31 ]
  %38 = add i64 %.lcssa, 1
  %39 = add nuw nsw i64 %24, 1
  %40 = icmp eq i64 %39, %22
  br i1 %40, label %41, label %23, !llvm.loop !102

41:                                               ; preds = %37, %19
  %42 = sext i32 %.lcssa1 to i64
  %43 = getelementptr inbounds ptr, ptr %17, i64 %42
  store ptr null, ptr %43, align 8, !tbaa !36
  br label %44

44:                                               ; preds = %41, %13, %1
  %45 = phi ptr [ null, %1 ], [ %17, %41 ], [ null, %13 ]
  ret ptr %45
}

; Function Attrs: nounwind optsize uwtable
define internal zeroext i1 @parseConfigFile(ptr noundef %0, ptr nocapture noundef %1) #10 {
  %3 = alloca [1000 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 1000, ptr nonnull %3) #39
  %4 = tail call noalias ptr @fopen(ptr noundef %0, ptr noundef nonnull @.str.8.26) #38
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.23.41, ptr noundef %0) #38
  br label %162

8:                                                ; preds = %2
  %9 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.24, ptr noundef %0) #38
  %10 = call ptr @fgets(ptr noundef nonnull %3, i32 noundef 1000, ptr noundef nonnull %4) #38
  %11 = call i32 @feof(ptr noundef nonnull %4) #37
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %8
  %14 = call i32 @bcmp(ptr noundef nonnull dereferenceable(24) @.str.25.42, ptr noundef nonnull dereferenceable(24) %3, i64 24)
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %13, %8
  %17 = call i32 @puts(ptr nonnull dereferenceable(1) @str.51)
  br label %162

18:                                               ; preds = %13
  %19 = call ptr @fgets(ptr noundef nonnull %3, i32 noundef 1000, ptr noundef nonnull %4) #38
  %20 = call i32 @feof(ptr noundef nonnull %4) #37
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = call i32 @bcmp(ptr noundef nonnull dereferenceable(5) @.str.27.43, ptr noundef nonnull dereferenceable(5) %3, i64 5)
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %22, %18
  %26 = call i32 @puts(ptr nonnull dereferenceable(1) @str.50)
  br label %162

27:                                               ; preds = %22
  %28 = getelementptr inbounds [1000 x i8], ptr %3, i64 0, i64 6
  %29 = call i32 @atoi(ptr nocapture noundef nonnull %28) #42
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = call i32 @puts(ptr nonnull dereferenceable(1) @str.49)
  br label %162

33:                                               ; preds = %27
  %34 = call ptr @fgets(ptr noundef nonnull %3, i32 noundef 1000, ptr noundef nonnull %4) #38
  %35 = call i32 @feof(ptr noundef nonnull %4) #37
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = call i32 @bcmp(ptr noundef nonnull dereferenceable(10) @.str.30, ptr noundef nonnull dereferenceable(10) %3, i64 10)
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %37, %33
  %41 = call i32 @puts(ptr nonnull dereferenceable(1) @str.48)
  br label %162

42:                                               ; preds = %37
  %43 = getelementptr inbounds [1000 x i8], ptr %3, i64 0, i64 11
  %44 = call i32 @atoi(ptr nocapture noundef nonnull %43) #42
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = call i32 @puts(ptr nonnull dereferenceable(1) @str.47)
  br label %162

48:                                               ; preds = %42
  %49 = call ptr @fgets(ptr noundef nonnull %3, i32 noundef 1000, ptr noundef nonnull %4) #38
  %50 = call i32 @feof(ptr noundef nonnull %4) #37
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %48
  %53 = call i32 @bcmp(ptr noundef nonnull dereferenceable(11) @.str.33, ptr noundef nonnull dereferenceable(11) %3, i64 11)
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %57, label %55

55:                                               ; preds = %52, %48
  %56 = call i32 @puts(ptr nonnull dereferenceable(1) @str.48)
  br label %162

57:                                               ; preds = %52
  %58 = getelementptr inbounds [1000 x i8], ptr %3, i64 0, i64 12
  %59 = load i32, ptr %58, align 4
  %60 = icmp ne i32 %59, 1701147252
  %61 = getelementptr inbounds %struct.ConfigurationStruct, ptr %1, i64 0, i32 2
  %62 = load ptr, ptr %61, align 8, !tbaa !21
  %63 = zext i1 %60 to i32
  store i32 %63, ptr %62, align 8, !tbaa !67
  %64 = add nsw i32 %29, 1
  %65 = sext i32 %64 to i64
  %66 = shl nsw i64 %65, 3
  %67 = call noalias ptr @malloc(i64 noundef %66) #35
  store ptr %67, ptr %1, align 8, !tbaa !103
  %68 = icmp eq ptr %67, null
  br i1 %68, label %74, label %69

69:                                               ; preds = %57
  %70 = icmp sgt i32 %29, 0
  br i1 %70, label %71, label %108

71:                                               ; preds = %69
  %72 = getelementptr inbounds [1000 x i8], ptr %3, i64 0, i64 5
  %73 = zext i32 %29 to i64
  br label %79

74:                                               ; preds = %57
  %75 = call i32 @puts(ptr nonnull dereferenceable(1) @str.42)
  br label %162

76:                                               ; preds = %97
  %77 = add nuw nsw i64 %80, 1
  %78 = icmp eq i64 %77, %73
  br i1 %78, label %108, label %79, !llvm.loop !104

79:                                               ; preds = %76, %71
  %80 = phi i64 [ 0, %71 ], [ %77, %76 ]
  %81 = call ptr @fgets(ptr noundef nonnull %3, i32 noundef 1000, ptr noundef nonnull %4) #38
  %82 = call i32 @feof(ptr noundef nonnull %4) #37
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %79
  %85 = call i32 @bcmp(ptr noundef nonnull dereferenceable(5) @.str.36, ptr noundef nonnull dereferenceable(5) %3, i64 5)
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %89, label %87

87:                                               ; preds = %84, %79
  %88 = call i32 @puts(ptr nonnull dereferenceable(1) @str.45)
  br label %162

89:                                               ; preds = %93, %84
  %90 = phi i64 [ %94, %93 ], [ 0, %84 ]
  %91 = getelementptr inbounds i8, ptr %72, i64 %90
  %92 = load i8, ptr %91, align 1, !tbaa !16
  switch i8 %92, label %93 [
    i8 0, label %97
    i8 13, label %95
    i8 10, label %95
  ]

93:                                               ; preds = %89
  %94 = add nuw i64 %90, 1
  br label %89, !llvm.loop !95

95:                                               ; preds = %89, %89
  %.lcssa2 = phi i64 [ %90, %89 ], [ %90, %89 ]
  %96 = getelementptr inbounds i8, ptr %72, i64 %.lcssa2
  store i8 0, ptr %96, align 1, !tbaa !16
  br label %97

97:                                               ; preds = %95, %89
  %98 = call ptr @parseFile(ptr noundef nonnull %72) #38
  %99 = load ptr, ptr %1, align 8, !tbaa !103
  %100 = getelementptr inbounds ptr, ptr %99, i64 %80
  store ptr %98, ptr %100, align 8, !tbaa !36
  %101 = load ptr, ptr %1, align 8, !tbaa !103
  %102 = getelementptr inbounds ptr, ptr %101, i64 %80
  %103 = load ptr, ptr %102, align 8, !tbaa !36
  %104 = icmp eq ptr %103, null
  br i1 %104, label %105, label %76

105:                                              ; preds = %97
  %106 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.38, ptr noundef nonnull %72) #38
  %107 = load ptr, ptr %1, align 8, !tbaa !103
  call void @free(ptr noundef %107) #37
  br label %162

108:                                              ; preds = %76, %69
  %109 = phi ptr [ %67, %69 ], [ %101, %76 ]
  %110 = sext i32 %29 to i64
  %111 = getelementptr inbounds ptr, ptr %109, i64 %110
  store ptr null, ptr %111, align 8, !tbaa !36
  %112 = add nsw i32 %44, 1
  %113 = sext i32 %112 to i64
  %114 = shl nsw i64 %113, 3
  %115 = call noalias ptr @malloc(i64 noundef %114) #35
  %116 = getelementptr inbounds %struct.ConfigurationStruct, ptr %1, i64 0, i32 1
  store ptr %115, ptr %116, align 8, !tbaa !105
  %117 = icmp eq ptr %115, null
  br i1 %117, label %123, label %118

118:                                              ; preds = %108
  %119 = icmp sgt i32 %44, 0
  br i1 %119, label %120, label %158

120:                                              ; preds = %118
  %121 = getelementptr inbounds [1000 x i8], ptr %3, i64 0, i64 10
  %122 = zext i32 %44 to i64
  br label %128

123:                                              ; preds = %108
  %124 = call i32 @puts(ptr nonnull dereferenceable(1) @str.43)
  br label %162

125:                                              ; preds = %146
  %126 = add nuw nsw i64 %129, 1
  %127 = icmp eq i64 %126, %122
  br i1 %127, label %158, label %128, !llvm.loop !106

128:                                              ; preds = %125, %120
  %129 = phi i64 [ 0, %120 ], [ %126, %125 ]
  %130 = call ptr @fgets(ptr noundef nonnull %3, i32 noundef 1000, ptr noundef nonnull %4) #38
  %131 = call i32 @feof(ptr noundef nonnull %4) #37
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %128
  %134 = call i32 @bcmp(ptr noundef nonnull dereferenceable(10) @.str.40, ptr noundef nonnull dereferenceable(10) %3, i64 10)
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %138, label %136

136:                                              ; preds = %133, %128
  %137 = call i32 @puts(ptr nonnull dereferenceable(1) @str.44)
  br label %162

138:                                              ; preds = %142, %133
  %139 = phi i64 [ %143, %142 ], [ 0, %133 ]
  %140 = getelementptr inbounds i8, ptr %121, i64 %139
  %141 = load i8, ptr %140, align 1, !tbaa !16
  switch i8 %141, label %142 [
    i8 0, label %146
    i8 13, label %144
    i8 10, label %144
  ]

142:                                              ; preds = %138
  %143 = add nuw i64 %139, 1
  br label %138, !llvm.loop !95

144:                                              ; preds = %138, %138
  %.lcssa1 = phi i64 [ %139, %138 ], [ %139, %138 ]
  %145 = getelementptr inbounds i8, ptr %121, i64 %.lcssa1
  store i8 0, ptr %145, align 1, !tbaa !16
  br label %146

146:                                              ; preds = %144, %138
  %147 = call ptr @parseSignature(ptr noundef nonnull %121) #38
  %148 = load ptr, ptr %116, align 8, !tbaa !105
  %149 = getelementptr inbounds ptr, ptr %148, i64 %129
  store ptr %147, ptr %149, align 8, !tbaa !36
  %150 = load ptr, ptr %116, align 8, !tbaa !105
  %151 = getelementptr inbounds ptr, ptr %150, i64 %129
  %152 = load ptr, ptr %151, align 8, !tbaa !36
  %153 = icmp eq ptr %152, null
  br i1 %153, label %154, label %125

154:                                              ; preds = %146
  %155 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.38, ptr noundef nonnull %121) #38
  %156 = load ptr, ptr %1, align 8, !tbaa !103
  call void @free(ptr noundef %156) #37
  %157 = load ptr, ptr %116, align 8, !tbaa !105
  call void @free(ptr noundef %157) #37
  br label %162

158:                                              ; preds = %125, %118
  %159 = phi ptr [ %115, %118 ], [ %150, %125 ]
  %160 = sext i32 %44 to i64
  %161 = getelementptr inbounds ptr, ptr %159, i64 %160
  store ptr null, ptr %161, align 8, !tbaa !36
  br label %162

162:                                              ; preds = %158, %154, %136, %123, %105, %87, %74, %55, %46, %40, %31, %25, %16, %6
  %163 = phi i1 [ false, %16 ], [ false, %25 ], [ false, %31 ], [ false, %40 ], [ false, %46 ], [ false, %55 ], [ false, %87 ], [ false, %105 ], [ false, %136 ], [ false, %154 ], [ true, %158 ], [ false, %123 ], [ false, %74 ], [ false, %6 ]
  call void @llvm.lifetime.end.p0(i64 1000, ptr nonnull %3) #39
  ret i1 %163
}

; Function Attrs: nounwind optsize uwtable
define internal void @doMultiSearches(ptr nocapture noundef readonly %0) #10 {
  %2 = tail call double (...) @currentTime() #37
  %3 = tail call ptr @NodePtrVec_new(i32 noundef 64) #37
  %4 = getelementptr inbounds %struct.ConfigurationStruct, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !105
  %6 = load ptr, ptr %5, align 8, !tbaa !36
  %7 = icmp eq ptr %6, null
  br i1 %7, label %40, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.ConfigurationStruct, ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %0, align 8, !tbaa !103
  br label %11

11:                                               ; preds = %33, %8
  %12 = phi ptr [ %5, %8 ], [ %34, %33 ]
  %13 = phi ptr [ %10, %8 ], [ %35, %33 ]
  %14 = phi i64 [ 0, %8 ], [ %36, %33 ]
  %15 = phi ptr [ %6, %8 ], [ %38, %33 ]
  %16 = load ptr, ptr %13, align 8, !tbaa !36
  %17 = icmp eq ptr %16, null
  br i1 %17, label %33, label %18

18:                                               ; preds = %18, %11
  %19 = phi i64 [ %26, %18 ], [ 0, %11 ]
  %20 = phi ptr [ %29, %18 ], [ %16, %11 ]
  store i32 0, ptr %3, align 8, !tbaa !45
  %21 = load ptr, ptr @stdout, align 8, !tbaa !36
  %22 = tail call i32 @fflush(ptr noundef %21) #38
  %23 = load ptr, ptr %9, align 8, !tbaa !21
  %24 = load i32, ptr %23, align 8, !tbaa !67
  %25 = tail call zeroext i1 @findLabelPath(ptr noundef nonnull %20, ptr noundef nonnull %15, ptr noundef nonnull %3, i32 noundef %24) #38
  %26 = add nuw i64 %19, 1
  %27 = load ptr, ptr %0, align 8, !tbaa !103
  %28 = getelementptr inbounds ptr, ptr %27, i64 %26
  %29 = load ptr, ptr %28, align 8, !tbaa !36
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %18, !llvm.loop !107

31:                                               ; preds = %18
  %.lcssa = phi ptr [ %27, %18 ]
  %32 = load ptr, ptr %4, align 8, !tbaa !105
  br label %33

33:                                               ; preds = %31, %11
  %34 = phi ptr [ %32, %31 ], [ %12, %11 ]
  %35 = phi ptr [ %.lcssa, %31 ], [ %13, %11 ]
  %36 = add nuw i64 %14, 1
  %37 = getelementptr inbounds ptr, ptr %34, i64 %36
  %38 = load ptr, ptr %37, align 8, !tbaa !36
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %11, !llvm.loop !108

40:                                               ; preds = %33, %1
  %41 = tail call double (...) @currentTime() #37
  %42 = fsub double %41, %2
  %43 = fptosi double %42 to i32
  %44 = sdiv i32 %43, 3600
  %45 = tail call double @fmod(double noundef %42, double noundef 3.600000e+03) #37
  %46 = fptosi double %45 to i32
  %47 = sdiv i32 %46, 60
  %48 = tail call double @fmod(double noundef %45, double noundef 6.000000e+01) #37
  %49 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.48, i32 noundef %44, i32 noundef %47, double noundef %48) #38
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: nounwind optsize uwtable
define internal zeroext i1 @findLabelPath(ptr noundef readonly %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #10 {
  %5 = getelementptr inbounds %struct.GraphStruct, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !26
  %7 = tail call ptr @Bitfield_new(i32 noundef %6) #37
  %8 = icmp ne ptr %0, null
  %9 = icmp ne ptr %1, null
  %10 = and i1 %8, %9
  br i1 %10, label %11, label %71

11:                                               ; preds = %4
  %12 = load ptr, ptr %1, align 8, !tbaa !36
  %13 = icmp eq ptr %12, null
  br i1 %13, label %71, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds ptr, ptr %1, i64 1
  %16 = load ptr, ptr %15, align 8, !tbaa !36
  %17 = icmp ne ptr %16, null
  %18 = icmp ne ptr %2, null
  %19 = and i1 %18, %17
  %20 = icmp ne ptr %7, null
  %21 = select i1 %19, i1 %20, i1 false
  br i1 %21, label %22, label %71

22:                                               ; preds = %14
  %23 = getelementptr inbounds %struct.GraphStruct, ptr %0, i64 0, i32 4
  %24 = load ptr, ptr %23, align 8, !tbaa !92
  %25 = tail call ptr @SystemCallMap_findLabeledNodes(ptr noundef %24, ptr noundef nonnull %12) #37
  %26 = icmp eq ptr %25, null
  br i1 %26, label %71, label %27

27:                                               ; preds = %22
  %28 = load i32, ptr %25, align 8, !tbaa !45
  %29 = icmp slt i32 %28, 1
  br i1 %29, label %69, label %30

30:                                               ; preds = %27
  %31 = icmp eq i32 %3, 1
  %32 = getelementptr inbounds %struct.NodeVecVecStruct, ptr %25, i64 0, i32 2
  %33 = getelementptr inbounds %struct.GraphStruct, ptr %0, i64 0, i32 3
  br label %34

34:                                               ; preds = %64, %30
  %35 = phi i64 [ 0, %30 ], [ %65, %64 ]
  %36 = phi i8 [ 0, %30 ], [ %57, %64 ]
  br i1 %31, label %37, label %50

37:                                               ; preds = %34
  %38 = load ptr, ptr %33, align 8, !tbaa !28
  %39 = load ptr, ptr %32, align 8, !tbaa !43
  %40 = getelementptr inbounds ptr, ptr %39, i64 %35
  %41 = load ptr, ptr %40, align 8, !tbaa !36
  %42 = tail call ptr @SearchDiagram_findNode(ptr noundef %38, ptr noundef %41) #37
  %43 = icmp eq ptr %42, null
  br i1 %43, label %56, label %44

44:                                               ; preds = %37
  %45 = load ptr, ptr %42, align 8, !tbaa !29
  %46 = getelementptr inbounds %struct.SearchDiagramStruct, ptr %42, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !31
  %48 = tail call zeroext i1 @SearchDiagram_findSignatureAlongEdges(ptr noundef %45, ptr noundef %47, ptr noundef nonnull %15, ptr noundef nonnull %2, ptr noundef nonnull %7) #37
  %49 = zext i1 %48 to i8
  br label %56

50:                                               ; preds = %34
  %51 = load ptr, ptr %32, align 8, !tbaa !43
  %52 = getelementptr inbounds ptr, ptr %51, i64 %35
  %53 = load ptr, ptr %52, align 8, !tbaa !36
  %54 = tail call zeroext i1 @findNextLabel(ptr noundef %53, ptr noundef nonnull %15, ptr noundef nonnull %2, ptr noundef nonnull %7) #38
  %55 = zext i1 %54 to i8
  br label %56

56:                                               ; preds = %50, %44, %37
  %57 = phi i8 [ %55, %50 ], [ %49, %44 ], [ %36, %37 ]
  tail call void (ptr, ...) @Bitfield_clear(ptr noundef nonnull %7) #37
  %58 = and i8 %57, 1
  %59 = icmp ne i8 %58, 0
  br i1 %59, label %69, label %60

60:                                               ; preds = %56
  %61 = load i32, ptr %2, align 8, !tbaa !45
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %60
  store i32 0, ptr %2, align 8, !tbaa !45
  br label %64

64:                                               ; preds = %63, %60
  %65 = add nuw nsw i64 %35, 1
  %66 = load i32, ptr %25, align 8, !tbaa !45
  %67 = sext i32 %66 to i64
  %68 = icmp slt i64 %65, %67
  br i1 %68, label %34, label %69, !llvm.loop !109

69:                                               ; preds = %64, %56, %27
  %70 = phi i1 [ false, %27 ], [ %59, %64 ], [ %59, %56 ]
  tail call void @Bitfield_delete(ptr noundef nonnull %7) #37
  br label %71

71:                                               ; preds = %69, %22, %14, %11, %4
  %72 = phi i1 [ %70, %69 ], [ false, %14 ], [ false, %11 ], [ false, %4 ], [ false, %22 ]
  ret i1 %72
}

; Function Attrs: nounwind optsize uwtable
define internal zeroext i1 @findNextLabel(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #10 {
  %5 = insertelement <4 x ptr> poison, ptr %1, i64 0
  %6 = insertelement <4 x ptr> %5, ptr %0, i64 1
  %7 = insertelement <4 x ptr> %6, ptr %2, i64 2
  %8 = insertelement <4 x ptr> %7, ptr %3, i64 3
  %9 = icmp eq <4 x ptr> %8, zeroinitializer
  %10 = bitcast <4 x i1> %9 to i4
  %11 = icmp eq i4 %10, 0
  br i1 %11, label %12, label %62

12:                                               ; preds = %4
  %13 = tail call zeroext i1 @Bitfield_nodeVisited(ptr noundef nonnull %3, ptr noundef nonnull %0) #37
  br i1 %13, label %62, label %14

14:                                               ; preds = %12
  %15 = tail call zeroext i1 @NodePtrVec_push(ptr noundef nonnull %2, ptr noundef nonnull %0) #37
  %16 = getelementptr inbounds %struct.NodeStruct, ptr %0, i64 0, i32 7
  %17 = load ptr, ptr %16, align 8, !tbaa !36
  %18 = icmp eq ptr %17, null
  br i1 %18, label %60, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds ptr, ptr %1, i64 1
  br label %24

21:                                               ; preds = %47
  %22 = load ptr, ptr %16, align 8, !tbaa !36
  %23 = icmp eq ptr %22, null
  br i1 %23, label %60, label %55

24:                                               ; preds = %47, %19
  %25 = phi ptr [ %17, %19 ], [ %49, %47 ]
  %26 = getelementptr inbounds %struct.EdgeListStruct, ptr %25, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !54
  %28 = getelementptr inbounds %struct.NodeStruct, ptr %27, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !61
  %30 = icmp eq ptr %29, null
  br i1 %30, label %47, label %31

31:                                               ; preds = %24
  %32 = load ptr, ptr %1, align 8, !tbaa !36
  %33 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %29, ptr noundef nonnull dereferenceable(1) %32) #42
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %47

35:                                               ; preds = %31
  %36 = load ptr, ptr %20, align 8, !tbaa !36
  %37 = icmp eq ptr %36, null
  br i1 %37, label %45, label %38

38:                                               ; preds = %35
  %39 = tail call ptr @NodePtrVec_new(i32 noundef 50) #37
  %40 = load i32, ptr %3, align 8, !tbaa !13
  %41 = tail call ptr @Bitfield_new(i32 noundef %40) #37
  %42 = load ptr, ptr %26, align 8, !tbaa !54
  %43 = tail call zeroext i1 @findNextLabel(ptr noundef %42, ptr noundef nonnull %20, ptr noundef %39, ptr noundef %41) #38
  tail call void @Bitfield_delete(ptr noundef %41) #37
  br i1 %43, label %44, label %47

44:                                               ; preds = %38
  %.lcssa = phi ptr [ %39, %38 ]
  tail call void @NodePtrVec_appendVectors(ptr noundef nonnull %2, ptr noundef %.lcssa, i1 noundef zeroext true) #37
  tail call void @NodePtrVec_delete(ptr noundef %.lcssa) #37
  br label %62

45:                                               ; preds = %35
  %.lcssa1 = phi ptr [ %27, %35 ]
  %46 = tail call zeroext i1 @NodePtrVec_push(ptr noundef nonnull %2, ptr noundef nonnull %.lcssa1) #37
  br label %62

47:                                               ; preds = %38, %31, %24
  %48 = getelementptr inbounds %struct.EdgeListStruct, ptr %25, i64 0, i32 2
  %49 = load ptr, ptr %48, align 8, !tbaa !36
  %50 = icmp eq ptr %49, null
  br i1 %50, label %21, label %24, !llvm.loop !110

51:                                               ; preds = %55
  %52 = getelementptr inbounds %struct.EdgeListStruct, ptr %56, i64 0, i32 2
  %53 = load ptr, ptr %52, align 8, !tbaa !36
  %54 = icmp eq ptr %53, null
  br i1 %54, label %60, label %55, !llvm.loop !111

55:                                               ; preds = %51, %21
  %56 = phi ptr [ %53, %51 ], [ %22, %21 ]
  %57 = getelementptr inbounds %struct.EdgeListStruct, ptr %56, i64 0, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !54
  %59 = tail call zeroext i1 @findNextLabel(ptr noundef %58, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %3) #38
  br i1 %59, label %62, label %51

60:                                               ; preds = %51, %21, %14
  %61 = tail call ptr @NodePtrVec_pop(ptr noundef nonnull %2) #37
  br label %62

62:                                               ; preds = %60, %55, %45, %44, %12, %4
  %63 = phi i1 [ true, %44 ], [ true, %45 ], [ false, %60 ], [ false, %4 ], [ false, %12 ], [ true, %55 ]
  ret i1 %63
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #23

; Function Attrs: nounwind optsize uwtable
define internal void @findAndRecordAllPaths(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) #10 {
  %8 = insertelement <4 x ptr> poison, ptr %1, i64 0
  %9 = insertelement <4 x ptr> %8, ptr %0, i64 1
  %10 = insertelement <4 x ptr> %9, ptr %2, i64 2
  %11 = insertelement <4 x ptr> %10, ptr %3, i64 3
  %12 = icmp eq <4 x ptr> %11, zeroinitializer
  %13 = icmp ne ptr %4, null
  %14 = bitcast <4 x i1> %12 to i4
  %15 = icmp eq i4 %14, 0
  %16 = and i1 %15, %13
  br i1 %16, label %17, label %105

17:                                               ; preds = %7
  %18 = tail call zeroext i1 @Bitfield_nodeVisited(ptr noundef nonnull %4, ptr noundef nonnull %0) #37
  br i1 %18, label %105, label %19

19:                                               ; preds = %17
  %20 = tail call zeroext i1 @NodePtrVec_push(ptr noundef nonnull %3, ptr noundef nonnull %0) #37
  %21 = getelementptr inbounds %struct.NodeStruct, ptr %0, i64 0, i32 7
  %22 = load ptr, ptr %21, align 8, !tbaa !36
  %23 = icmp eq ptr %22, null
  br i1 %23, label %103, label %24

24:                                               ; preds = %19
  %25 = getelementptr inbounds ptr, ptr %1, i64 1
  %26 = getelementptr inbounds i32, ptr %2, i64 1
  %27 = icmp ne ptr %5, null
  %28 = getelementptr inbounds %struct.SearchOptionsStruct, ptr %6, i64 0, i32 1
  %29 = getelementptr inbounds %struct.SearchOptionsStruct, ptr %6, i64 0, i32 2
  %30 = getelementptr inbounds %struct.NodeVecVecStruct, ptr %3, i64 0, i32 2
  br label %34

31:                                               ; preds = %92
  %32 = load ptr, ptr %21, align 8, !tbaa !36
  %33 = icmp eq ptr %32, null
  br i1 %33, label %103, label %96

34:                                               ; preds = %92, %24
  %35 = phi ptr [ %22, %24 ], [ %94, %92 ]
  %36 = getelementptr inbounds %struct.EdgeListStruct, ptr %35, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !54
  %38 = getelementptr inbounds %struct.NodeStruct, ptr %37, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !61
  %40 = icmp eq ptr %39, null
  br i1 %40, label %92, label %41

41:                                               ; preds = %34
  %42 = load ptr, ptr %1, align 8, !tbaa !36
  %43 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %39, ptr noundef nonnull dereferenceable(1) %42) #42
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %92

45:                                               ; preds = %41
  %46 = load ptr, ptr %25, align 8, !tbaa !36
  %47 = icmp eq ptr %46, null
  br i1 %47, label %52, label %48

48:                                               ; preds = %45
  %49 = load i32, ptr %4, align 8, !tbaa !13
  %50 = tail call ptr @Bitfield_new(i32 noundef %49) #37
  %51 = load ptr, ptr %36, align 8, !tbaa !54
  tail call void @findAndRecordAllPaths(ptr noundef %51, ptr noundef nonnull %25, ptr noundef nonnull %26, ptr noundef nonnull %3, ptr noundef %50, ptr noundef %5, ptr noundef %6) #38
  tail call void @Bitfield_delete(ptr noundef %50) #37
  br label %92

52:                                               ; preds = %45
  %53 = tail call zeroext i1 @NodePtrVec_push(ptr noundef nonnull %3, ptr noundef nonnull %37) #37
  %54 = load ptr, ptr %36, align 8, !tbaa !54
  %55 = tail call zeroext i1 @Bitfield_nodeVisited(ptr noundef nonnull %4, ptr noundef %54) #37
  %56 = tail call ptr @NodePtrVec_new(i32 noundef 2) #37
  %57 = icmp ne ptr %56, null
  %58 = select i1 %27, i1 %57, i1 false
  br i1 %58, label %59, label %90

59:                                               ; preds = %52
  %60 = load i8, ptr %28, align 4, !tbaa !112, !range !113, !noundef !114
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %62, label %73

62:                                               ; preds = %59
  %63 = load i8, ptr %29, align 1, !tbaa !65, !range !113, !noundef !114
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %73, label %65

65:                                               ; preds = %62
  %66 = load ptr, ptr @globalStats, align 8, !tbaa !36
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %70

68:                                               ; preds = %65
  %69 = tail call ptr (...) @Stats_new() #37
  store ptr %69, ptr @globalStats, align 8, !tbaa !36
  br label %70

70:                                               ; preds = %68, %65
  %71 = phi ptr [ %69, %68 ], [ %66, %65 ]
  %72 = tail call zeroext i1 @Stats_logPath(ptr noundef %71, ptr noundef nonnull %3) #37
  br label %73

73:                                               ; preds = %70, %62, %59
  %74 = load ptr, ptr %30, align 8, !tbaa !43
  %75 = load ptr, ptr %74, align 8, !tbaa !36
  %76 = tail call zeroext i1 @NodePtrVec_push(ptr noundef nonnull %56, ptr noundef %75) #37
  %77 = load ptr, ptr %30, align 8, !tbaa !43
  %78 = load i32, ptr %3, align 8, !tbaa !45
  %79 = add nsw i32 %78, -1
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds ptr, ptr %77, i64 %80
  %82 = load ptr, ptr %81, align 8, !tbaa !36
  %83 = tail call zeroext i1 @NodePtrVec_push(ptr noundef nonnull %56, ptr noundef %82) #37
  %84 = tail call zeroext i1 @NodeVecVec_insert(ptr noundef nonnull %5, ptr noundef nonnull %56) #37
  br i1 %84, label %89, label %85

85:                                               ; preds = %73
  %86 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.52)
  %87 = load ptr, ptr @stdout, align 8, !tbaa !36
  %88 = tail call i32 @fflush(ptr noundef %87) #38
  br label %89

89:                                               ; preds = %85, %73
  tail call void @NodePtrVec_delete(ptr noundef nonnull %56) #37
  br label %90

90:                                               ; preds = %89, %52
  %91 = tail call ptr @NodePtrVec_pop(ptr noundef nonnull %3) #37
  br label %92

92:                                               ; preds = %90, %48, %41, %34
  %93 = getelementptr inbounds %struct.EdgeListStruct, ptr %35, i64 0, i32 2
  %94 = load ptr, ptr %93, align 8, !tbaa !36
  %95 = icmp eq ptr %94, null
  br i1 %95, label %31, label %34, !llvm.loop !115

96:                                               ; preds = %96, %31
  %97 = phi ptr [ %101, %96 ], [ %32, %31 ]
  %98 = getelementptr inbounds %struct.EdgeListStruct, ptr %97, i64 0, i32 1
  %99 = load ptr, ptr %98, align 8, !tbaa !54
  tail call void @findAndRecordAllPaths(ptr noundef %99, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef %5, ptr noundef %6) #38
  %100 = getelementptr inbounds %struct.EdgeListStruct, ptr %97, i64 0, i32 2
  %101 = load ptr, ptr %100, align 8, !tbaa !36
  %102 = icmp eq ptr %101, null
  br i1 %102, label %103, label %96, !llvm.loop !116

103:                                              ; preds = %96, %31, %19
  %104 = tail call ptr @NodePtrVec_pop(ptr noundef nonnull %3) #37
  br label %105

105:                                              ; preds = %103, %17, %7
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @findAllPossibleLegs(ptr noundef %0, i32 noundef %1) #10 {
  %3 = alloca [50 x i8], align 16
  %4 = alloca [3 x ptr], align 16
  call void @llvm.lifetime.start.p0(i64 50, ptr nonnull %3) #39
  %5 = tail call double (...) @currentTime() #37
  %6 = load ptr, ptr @stdout, align 8, !tbaa !36
  %7 = tail call i64 @fwrite(ptr nonnull @.str.1.55, i64 28, i64 1, ptr %6)
  %8 = getelementptr inbounds %struct.GraphStruct, ptr %0, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !92
  %10 = load i32, ptr %9, align 8, !tbaa !98
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %57

12:                                               ; preds = %2
  %13 = getelementptr inbounds [3 x ptr], ptr %4, i64 0, i64 1
  br label %14

14:                                               ; preds = %49, %12
  %15 = phi i32 [ %10, %12 ], [ %51, %49 ]
  %16 = phi ptr [ %9, %12 ], [ %52, %49 ]
  %17 = phi i64 [ 0, %12 ], [ %55, %49 ]
  %18 = phi i32 [ 0, %12 ], [ %54, %49 ]
  %19 = phi i32 [ 0, %12 ], [ %53, %49 ]
  %20 = icmp sgt i32 %15, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %14
  %22 = sext i32 %15 to i64
  br label %49

23:                                               ; preds = %43, %14
  %24 = phi i64 [ %44, %43 ], [ 0, %14 ]
  %25 = phi ptr [ %45, %43 ], [ %16, %14 ]
  %26 = phi i32 [ %40, %43 ], [ %18, %14 ]
  %27 = phi i32 [ %28, %43 ], [ %19, %14 ]
  %28 = add nsw i32 %27, 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #39
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %29 = getelementptr inbounds %struct.NodeVecVecStruct, ptr %25, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !117
  %31 = getelementptr inbounds ptr, ptr %30, i64 %17
  %32 = load ptr, ptr %31, align 8, !tbaa !36
  %33 = load ptr, ptr %32, align 8, !tbaa !118
  store ptr %33, ptr %4, align 16, !tbaa !36
  %34 = getelementptr inbounds ptr, ptr %30, i64 %24
  %35 = load ptr, ptr %34, align 8, !tbaa !36
  %36 = load ptr, ptr %35, align 8, !tbaa !118
  store ptr %36, ptr %13, align 8, !tbaa !36
  %37 = call ptr @NodePtrVec_new(i32 noundef 25) #37
  %38 = call zeroext i1 @findLabelPath(ptr noundef nonnull %0, ptr noundef nonnull %4, ptr noundef %37, i32 noundef %1) #38
  %39 = zext i1 %38 to i32
  %40 = add nsw i32 %26, %39
  %41 = icmp eq ptr %37, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %23
  call void @NodePtrVec_delete(ptr noundef nonnull %37) #37
  br label %43

43:                                               ; preds = %42, %23
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #39
  %44 = add nuw nsw i64 %24, 1
  %45 = load ptr, ptr %8, align 8, !tbaa !92
  %46 = load i32, ptr %45, align 8, !tbaa !98
  %47 = sext i32 %46 to i64
  %48 = icmp slt i64 %44, %47
  br i1 %48, label %23, label %49, !llvm.loop !120

49:                                               ; preds = %43, %21
  %50 = phi i64 [ %22, %21 ], [ %47, %43 ]
  %51 = phi i32 [ %15, %21 ], [ %46, %43 ]
  %52 = phi ptr [ %16, %21 ], [ %45, %43 ]
  %53 = phi i32 [ %19, %21 ], [ %28, %43 ]
  %54 = phi i32 [ %18, %21 ], [ %40, %43 ]
  %55 = add nuw nsw i64 %17, 1
  %56 = icmp slt i64 %55, %50
  br i1 %56, label %14, label %57, !llvm.loop !121

57:                                               ; preds = %49, %2
  %58 = phi i32 [ 0, %2 ], [ %53, %49 ]
  %59 = phi i32 [ 0, %2 ], [ %54, %49 ]
  %60 = call double (...) @currentTime() #37
  %61 = fsub double %60, %5
  %62 = fptosi double %61 to i32
  %63 = sdiv i32 %62, 3600
  %64 = call double @fmod(double noundef %61, double noundef 3.600000e+03) #37
  %65 = fptosi double %64 to i32
  %66 = sdiv i32 %65, 60
  %67 = call double @fmod(double noundef %64, double noundef 6.000000e+01) #37
  %68 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2.56, i32 noundef %59, i32 noundef %58, i32 noundef %63, i32 noundef %66, double noundef %67) #38
  store i8 0, ptr %3, align 16, !tbaa !16
  %69 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) @.str.3.57, i32 noundef %63, i32 noundef %66, double noundef %67) #37
  call void @YAMLWriteInt(ptr noundef nonnull @.str.4.58, i32 noundef %59) #37
  call void @YAMLWriteString(ptr noundef nonnull @.str.5.59, ptr noundef nonnull %3) #37
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %3) #39
  ret i32 %59
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @findAndLogAllPossibleLegs(ptr noundef readonly %0, ptr noundef %1) #10 {
  %3 = alloca [50 x i8], align 16
  %4 = alloca [3 x ptr], align 16
  %5 = alloca [3 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 50, ptr nonnull %3) #39
  %6 = icmp eq ptr %0, null
  br i1 %6, label %183, label %7

7:                                                ; preds = %2
  %8 = tail call double (...) @currentTime() #37
  %9 = load ptr, ptr @stdout, align 8, !tbaa !36
  %10 = tail call i64 @fwrite(ptr nonnull @.str.1.55, i64 28, i64 1, ptr %9)
  %11 = getelementptr inbounds %struct.SearchOptionsStruct, ptr %1, i64 0, i32 1
  store i8 0, ptr %11, align 4, !tbaa !112
  %12 = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #35
  %13 = getelementptr inbounds ptr, ptr %12, i64 1
  store ptr null, ptr %13, align 8, !tbaa !36
  %14 = tail call ptr @NodeVecVec_new(i32 noundef 64) #37
  store ptr %14, ptr %12, align 8, !tbaa !36
  %15 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.12)
  %16 = getelementptr inbounds %struct.GraphStruct, ptr %0, i64 0, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !92
  %18 = load i32, ptr %17, align 8, !tbaa !98
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %105

20:                                               ; preds = %7
  %21 = getelementptr inbounds [3 x ptr], ptr %4, i64 0, i64 1
  %22 = getelementptr inbounds [3 x i32], ptr %5, i64 0, i64 1
  %23 = getelementptr inbounds %struct.GraphStruct, ptr %0, i64 0, i32 1
  br label %24

24:                                               ; preds = %98, %20
  %25 = phi i32 [ %18, %20 ], [ %99, %98 ]
  %26 = phi ptr [ %17, %20 ], [ %100, %98 ]
  %27 = phi i64 [ 0, %20 ], [ %102, %98 ]
  %28 = phi i32 [ 0, %20 ], [ %101, %98 ]
  %29 = icmp sgt i32 %25, 0
  br i1 %29, label %30, label %98

30:                                               ; preds = %24
  %31 = trunc i64 %27 to i32
  br label %32

32:                                               ; preds = %90, %30
  %33 = phi i32 [ %25, %30 ], [ %91, %90 ]
  %34 = phi ptr [ %26, %30 ], [ %92, %90 ]
  %35 = phi i32 [ %25, %30 ], [ %93, %90 ]
  %36 = phi ptr [ %26, %30 ], [ %94, %90 ]
  %37 = phi i64 [ 0, %30 ], [ %95, %90 ]
  %38 = phi i32 [ %28, %30 ], [ %39, %90 ]
  %39 = add nsw i32 %38, 1
  %40 = getelementptr inbounds %struct.NodeVecVecStruct, ptr %36, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !117
  %42 = getelementptr inbounds ptr, ptr %41, i64 %27
  %43 = load ptr, ptr %42, align 8, !tbaa !36
  %44 = getelementptr inbounds %struct.SystemCallMapElementStruct, ptr %43, i64 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !122
  %46 = load i32, ptr %45, align 8, !tbaa !45
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %48, label %90

48:                                               ; preds = %32
  %49 = trunc i64 %37 to i32
  br label %50

50:                                               ; preds = %76, %48
  %51 = phi i64 [ 0, %48 ], [ %77, %76 ]
  %52 = phi ptr [ %40, %48 ], [ %79, %76 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #39
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #39
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %5, ptr noundef nonnull align 4 dereferenceable(12) @__const.findAndLogAllPossibleLegs.fullIntSignature, i64 12, i1 false)
  %53 = load ptr, ptr %52, align 8, !tbaa !117
  %54 = getelementptr inbounds ptr, ptr %53, i64 %27
  %55 = load ptr, ptr %54, align 8, !tbaa !36
  %56 = load ptr, ptr %55, align 8, !tbaa !118
  store ptr %56, ptr %4, align 16, !tbaa !36
  %57 = getelementptr inbounds ptr, ptr %53, i64 %37
  %58 = load ptr, ptr %57, align 8, !tbaa !36
  %59 = load ptr, ptr %58, align 8, !tbaa !118
  store ptr %59, ptr %21, align 8, !tbaa !36
  store i32 %31, ptr %5, align 4, !tbaa !79
  store i32 %49, ptr %22, align 4, !tbaa !79
  %60 = call ptr @NodePtrVec_new(i32 noundef 16) #37
  %61 = load i32, ptr %23, align 8, !tbaa !26
  %62 = call ptr @Bitfield_new(i32 noundef %61) #37
  %63 = load ptr, ptr %16, align 8, !tbaa !92
  %64 = getelementptr inbounds %struct.NodeVecVecStruct, ptr %63, i64 0, i32 2
  %65 = load ptr, ptr %64, align 8, !tbaa !117
  %66 = getelementptr inbounds ptr, ptr %65, i64 %27
  %67 = load ptr, ptr %66, align 8, !tbaa !36
  %68 = getelementptr inbounds %struct.SystemCallMapElementStruct, ptr %67, i64 0, i32 2
  %69 = load ptr, ptr %68, align 8, !tbaa !122
  %70 = getelementptr inbounds %struct.NodeVecVecStruct, ptr %69, i64 0, i32 2
  %71 = load ptr, ptr %70, align 8, !tbaa !43
  %72 = getelementptr inbounds ptr, ptr %71, i64 %51
  %73 = load ptr, ptr %72, align 8, !tbaa !36
  call void @findAndRecordAllPaths(ptr noundef %73, ptr noundef nonnull %21, ptr noundef nonnull %22, ptr noundef %60, ptr noundef %62, ptr noundef %14, ptr noundef %1) #38
  call void @Bitfield_delete(ptr noundef %62) #37
  %74 = icmp eq ptr %60, null
  br i1 %74, label %76, label %75

75:                                               ; preds = %50
  call void @NodePtrVec_delete(ptr noundef nonnull %60) #37
  br label %76

76:                                               ; preds = %75, %50
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #39
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #39
  %77 = add nuw nsw i64 %51, 1
  %78 = load ptr, ptr %16, align 8, !tbaa !92
  %79 = getelementptr inbounds %struct.NodeVecVecStruct, ptr %78, i64 0, i32 2
  %80 = load ptr, ptr %79, align 8, !tbaa !117
  %81 = getelementptr inbounds ptr, ptr %80, i64 %27
  %82 = load ptr, ptr %81, align 8, !tbaa !36
  %83 = getelementptr inbounds %struct.SystemCallMapElementStruct, ptr %82, i64 0, i32 2
  %84 = load ptr, ptr %83, align 8, !tbaa !122
  %85 = load i32, ptr %84, align 8, !tbaa !45
  %86 = sext i32 %85 to i64
  %87 = icmp slt i64 %77, %86
  br i1 %87, label %50, label %88, !llvm.loop !123

88:                                               ; preds = %76
  %.lcssa = phi ptr [ %78, %76 ]
  %89 = load i32, ptr %.lcssa, align 8, !tbaa !98
  br label %90

90:                                               ; preds = %88, %32
  %91 = phi i32 [ %89, %88 ], [ %33, %32 ]
  %92 = phi ptr [ %.lcssa, %88 ], [ %34, %32 ]
  %93 = phi i32 [ %89, %88 ], [ %35, %32 ]
  %94 = phi ptr [ %.lcssa, %88 ], [ %36, %32 ]
  %95 = add nuw nsw i64 %37, 1
  %96 = sext i32 %93 to i64
  %97 = icmp slt i64 %95, %96
  br i1 %97, label %32, label %98, !llvm.loop !124

98:                                               ; preds = %90, %24
  %99 = phi i32 [ %25, %24 ], [ %91, %90 ]
  %100 = phi ptr [ %26, %24 ], [ %92, %90 ]
  %101 = phi i32 [ %28, %24 ], [ %39, %90 ]
  %102 = add nuw nsw i64 %27, 1
  %103 = sext i32 %99 to i64
  %104 = icmp slt i64 %102, %103
  br i1 %104, label %24, label %105, !llvm.loop !125

105:                                              ; preds = %98, %7
  %106 = phi i32 [ 0, %7 ], [ %101, %98 ]
  %107 = load i32, ptr %14, align 8, !tbaa !40
  %108 = call double (...) @currentTime() #37
  %109 = fsub double %108, %8
  %110 = fptosi double %109 to i32
  %111 = sdiv i32 %110, 3600
  %112 = call double @fmod(double noundef %109, double noundef 3.600000e+03) #37
  %113 = fptosi double %112 to i32
  %114 = sdiv i32 %113, 60
  %115 = call double @fmod(double noundef %112, double noundef 6.000000e+01) #37
  %116 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7.62, i32 noundef %107, i32 noundef %106, i32 noundef %111, i32 noundef %114, double noundef %115) #38
  store i8 0, ptr %3, align 16, !tbaa !16
  %117 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) @.str.3.57, i32 noundef %111, i32 noundef %114, double noundef %115) #37
  call void @YAMLWriteInt(ptr noundef nonnull @.str.4.58, i32 noundef %107) #37
  call void @YAMLWriteString(ptr noundef nonnull @.str.5.59, ptr noundef nonnull %3) #37
  %118 = getelementptr inbounds %struct.SearchOptionsStruct, ptr %1, i64 0, i32 3
  %119 = load i8, ptr %118, align 2, !tbaa !64, !range !113, !noundef !114
  %120 = icmp eq i8 %119, 0
  br i1 %120, label %131, label %121

121:                                              ; preds = %105
  %122 = getelementptr inbounds %struct.SearchOptionsStruct, ptr %1, i64 0, i32 4
  %123 = load ptr, ptr %122, align 8, !tbaa !17
  %124 = icmp eq ptr %123, null
  br i1 %124, label %131, label %125

125:                                              ; preds = %121
  %126 = getelementptr inbounds %struct.SearchOptionsStruct, ptr %1, i64 0, i32 5
  %127 = load i32, ptr %126, align 8, !tbaa !20
  %128 = call ptr @buildGraphFromPaths(ptr noundef nonnull %12, i32 noundef %127) #37
  %129 = load ptr, ptr %122, align 8, !tbaa !17
  %130 = call zeroext i1 @exportGraph(ptr noundef %128, ptr noundef %129) #37
  br label %131

131:                                              ; preds = %125, %121, %105
  %132 = getelementptr inbounds %struct.SearchOptionsStruct, ptr %1, i64 0, i32 2
  %133 = load i8, ptr %132, align 1, !tbaa !65, !range !113, !noundef !114
  %134 = icmp eq i8 %133, 0
  br i1 %134, label %183, label %135

135:                                              ; preds = %131
  %136 = load i8, ptr %11, align 4, !tbaa !112, !range !113, !noundef !114
  %137 = icmp eq i8 %136, 0
  br i1 %137, label %138, label %183

138:                                              ; preds = %135
  %139 = load ptr, ptr @globalStats, align 8, !tbaa !36
  %140 = icmp eq ptr %139, null
  br i1 %140, label %183, label %141

141:                                              ; preds = %138
  call void @Stats_calculate(ptr noundef nonnull %139) #37
  %142 = load ptr, ptr @globalStats, align 8, !tbaa !36
  %143 = getelementptr inbounds %struct.StatsStruct, ptr %142, i64 0, i32 3
  %144 = load double, ptr %143, align 8, !tbaa !126
  %145 = getelementptr inbounds %struct.StatsStruct, ptr %142, i64 0, i32 4
  %146 = load double, ptr %145, align 8, !tbaa !129
  %147 = load ptr, ptr %142, align 8, !tbaa !130
  %148 = load i32, ptr %147, align 8, !tbaa !80
  %149 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9.63, double noundef %144, double noundef %146, i32 noundef %148) #38
  %150 = load ptr, ptr @globalStats, align 8, !tbaa !36
  %151 = getelementptr inbounds %struct.StatsStruct, ptr %150, i64 0, i32 1
  %152 = load i32, ptr %151, align 8, !tbaa !131
  %153 = getelementptr inbounds %struct.StatsStruct, ptr %150, i64 0, i32 2
  %154 = load i32, ptr %153, align 4, !tbaa !132
  %155 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10.64, i32 noundef %152, i32 noundef %154) #38
  %156 = load ptr, ptr @globalStats, align 8, !tbaa !36
  %157 = getelementptr inbounds %struct.StatsStruct, ptr %156, i64 0, i32 1
  %158 = load i32, ptr %157, align 8, !tbaa !131
  %159 = getelementptr inbounds %struct.StatsStruct, ptr %156, i64 0, i32 2
  %160 = load i32, ptr %159, align 4, !tbaa !132
  %161 = icmp sgt i32 %158, %160
  br i1 %161, label %183, label %162

162:                                              ; preds = %141
  %163 = sext i32 %158 to i64
  br label %164

164:                                              ; preds = %176, %162
  %165 = phi ptr [ %156, %162 ], [ %177, %176 ]
  %166 = phi i64 [ %163, %162 ], [ %178, %176 ]
  %167 = getelementptr inbounds %struct.StatsStruct, ptr %165, i64 0, i32 5
  %168 = load ptr, ptr %167, align 8, !tbaa !133
  %169 = getelementptr inbounds i32, ptr %168, i64 %166
  %170 = load i32, ptr %169, align 4, !tbaa !79
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %176, label %172

172:                                              ; preds = %164
  %173 = trunc i64 %166 to i32
  %174 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11.65, i32 noundef %173, i32 noundef %170) #38
  %175 = load ptr, ptr @globalStats, align 8, !tbaa !36
  br label %176

176:                                              ; preds = %172, %164
  %177 = phi ptr [ %165, %164 ], [ %175, %172 ]
  %178 = add nsw i64 %166, 1
  %179 = getelementptr inbounds %struct.StatsStruct, ptr %177, i64 0, i32 2
  %180 = load i32, ptr %179, align 4, !tbaa !132
  %181 = sext i32 %180 to i64
  %182 = icmp slt i64 %166, %181
  br i1 %182, label %164, label %183, !llvm.loop !134

183:                                              ; preds = %176, %141, %138, %135, %131, %2
  %184 = phi i32 [ 0, %2 ], [ %107, %135 ], [ %107, %131 ], [ %107, %138 ], [ %107, %141 ], [ %107, %176 ]
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %3) #39
  ret i32 %184
}

; Function Attrs: nofree norecurse nosync nounwind optsize memory(argmem: read) uwtable
define internal ptr @SearchDiagram_findNode(ptr noundef readonly %0, ptr noundef readnone %1) #30 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %17, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr %0, align 8, !tbaa !29
  %6 = icmp eq ptr %5, null
  br i1 %6, label %17, label %7

7:                                                ; preds = %4
  %8 = icmp eq ptr %5, %1
  br i1 %8, label %17, label %9

9:                                                ; preds = %15, %7
  %10 = phi i64 [ %11, %15 ], [ 0, %7 ]
  %11 = add nuw i64 %10, 1
  %12 = getelementptr inbounds %struct.SearchDiagramStruct, ptr %0, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !29
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15, !llvm.loop !135

15:                                               ; preds = %9
  %16 = icmp eq ptr %13, %1
  br i1 %16, label %17, label %9, !llvm.loop !135

17:                                               ; preds = %15, %9, %7, %4, %2
  %18 = phi ptr [ null, %2 ], [ null, %4 ], [ %0, %7 ], [ %12, %15 ], [ null, %9 ]
  ret ptr %18
}

; Function Attrs: nofree nounwind optsize uwtable
define internal noalias ptr @SearchDiagram_build(ptr noundef readonly %0, i32 noundef %1) #12 {
  %3 = add nsw i32 %1, -1
  %4 = icmp eq ptr %0, null
  %5 = icmp eq i32 %1, 0
  %6 = or i1 %4, %5
  br i1 %6, label %169, label %7

7:                                                ; preds = %2
  %8 = add nsw i32 %1, 1
  %9 = sext i32 %8 to i64
  %10 = shl nsw i64 %9, 4
  %11 = tail call noalias ptr @malloc(i64 noundef %10) #35
  %12 = icmp eq ptr %11, null
  br i1 %12, label %169, label %13

13:                                               ; preds = %7
  %14 = sext i32 %1 to i64
  %15 = getelementptr inbounds %struct.SearchDiagramStruct, ptr %11, i64 %14
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %15, i8 0, i64 16, i1 false)
  br label %16

16:                                               ; preds = %71, %13
  %17 = phi i64 [ 0, %13 ], [ %38, %71 ]
  %18 = phi i32 [ %3, %13 ], [ %72, %71 ]
  %19 = phi ptr [ %0, %13 ], [ %74, %71 ]
  %20 = load ptr, ptr %19, align 8, !tbaa !34
  %21 = getelementptr inbounds %struct.SearchDiagramStruct, ptr %11, i64 %17
  store ptr %20, ptr %21, align 8, !tbaa !29
  %22 = getelementptr inbounds %struct.NodeStruct, ptr %20, i64 0, i32 8
  %23 = load i32, ptr %22, align 8, !tbaa !75
  %24 = getelementptr inbounds %struct.NodeStruct, ptr %20, i64 0, i32 9
  %25 = load i32, ptr %24, align 4, !tbaa !81
  %26 = add nsw i32 %25, %23
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %16
  %29 = add nuw nsw i32 %26, 1
  %30 = zext i32 %29 to i64
  %31 = shl nuw nsw i64 %30, 4
  %32 = tail call noalias ptr @malloc(i64 noundef %31) #35
  %33 = zext i32 %26 to i64
  %34 = getelementptr inbounds %struct.SearchDiagramStruct, ptr %32, i64 %33
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %34, i8 0, i64 16, i1 false)
  br label %35

35:                                               ; preds = %28, %16
  %36 = phi ptr [ %32, %28 ], [ null, %16 ]
  %37 = getelementptr inbounds %struct.SearchDiagramStruct, ptr %11, i64 %17, i32 1
  store ptr %36, ptr %37, align 8
  %38 = add nuw i64 %17, 1
  %39 = getelementptr inbounds %struct.NodeStruct, ptr %20, i64 0, i32 6
  %40 = load ptr, ptr %39, align 8, !tbaa !36
  %41 = icmp eq ptr %40, null
  br i1 %41, label %71, label %42

42:                                               ; preds = %35
  %43 = sext i32 %18 to i64
  br label %44

44:                                               ; preds = %62, %42
  %45 = phi i64 [ %43, %42 ], [ %65, %62 ]
  %46 = phi ptr [ %40, %42 ], [ %67, %62 ]
  %47 = load ptr, ptr %46, align 8, !tbaa !34
  %48 = getelementptr inbounds %struct.SearchDiagramStruct, ptr %11, i64 %45
  store ptr %47, ptr %48, align 8, !tbaa !29
  %49 = getelementptr inbounds %struct.NodeStruct, ptr %47, i64 0, i32 8
  %50 = load i32, ptr %49, align 8, !tbaa !75
  %51 = icmp sgt i32 %50, 0
  br i1 %51, label %52, label %62

52:                                               ; preds = %44
  %53 = getelementptr inbounds %struct.NodeStruct, ptr %47, i64 0, i32 9
  %54 = load i32, ptr %53, align 4, !tbaa !81
  %55 = add nsw i32 %54, %50
  %56 = add nsw i32 %55, 1
  %57 = sext i32 %56 to i64
  %58 = shl nsw i64 %57, 4
  %59 = tail call noalias ptr @malloc(i64 noundef %58) #35
  %60 = sext i32 %55 to i64
  %61 = getelementptr inbounds %struct.SearchDiagramStruct, ptr %59, i64 %60
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %61, i8 0, i64 16, i1 false)
  br label %62

62:                                               ; preds = %52, %44
  %63 = phi ptr [ %59, %52 ], [ null, %44 ]
  %64 = getelementptr inbounds %struct.SearchDiagramStruct, ptr %11, i64 %45, i32 1
  store ptr %63, ptr %64, align 8
  %65 = add i64 %45, -1
  %66 = getelementptr inbounds %struct.SearchDiagramStruct, ptr %46, i64 0, i32 1
  %67 = load ptr, ptr %66, align 8, !tbaa !36
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %44, !llvm.loop !136

69:                                               ; preds = %62
  %.lcssa1 = phi i64 [ %65, %62 ]
  %70 = trunc i64 %.lcssa1 to i32
  br label %71

71:                                               ; preds = %69, %35
  %72 = phi i32 [ %18, %35 ], [ %70, %69 ]
  %73 = getelementptr inbounds %struct.SearchDiagramStruct, ptr %19, i64 0, i32 1
  %74 = load ptr, ptr %73, align 8, !tbaa !71
  %75 = icmp eq ptr %74, null
  br i1 %75, label %76, label %16, !llvm.loop !137

76:                                               ; preds = %71
  %.lcssa3 = phi i32 [ %72, %71 ]
  %.lcssa2 = phi i64 [ %38, %71 ]
  %77 = trunc i64 %.lcssa2 to i32
  %78 = add nsw i32 %.lcssa3, 1
  %79 = icmp eq i32 %78, %77
  br i1 %79, label %82, label %80

80:                                               ; preds = %76
  %81 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.70, i32 noundef %77, i32 noundef %.lcssa3, i32 noundef %1) #38
  br label %82

82:                                               ; preds = %80, %76
  br label %83

83:                                               ; preds = %164, %82
  %84 = phi i64 [ %118, %164 ], [ 0, %82 ]
  %85 = phi i32 [ %165, %164 ], [ %3, %82 ]
  %86 = phi ptr [ %167, %164 ], [ %0, %82 ]
  %87 = load ptr, ptr %86, align 8, !tbaa !34
  %88 = getelementptr inbounds %struct.NodeStruct, ptr %87, i64 0, i32 7
  %89 = load ptr, ptr %88, align 8, !tbaa !36
  %90 = icmp eq ptr %89, null
  br i1 %90, label %117, label %91

91:                                               ; preds = %83
  %92 = load ptr, ptr %11, align 8, !tbaa !29, !nonnull !114, !noundef !114
  %93 = getelementptr inbounds %struct.SearchDiagramStruct, ptr %11, i64 %84, i32 1
  %94 = load ptr, ptr %93, align 8, !tbaa !31
  br label %95

95:                                               ; preds = %107, %91
  %96 = phi i64 [ 0, %91 ], [ %114, %107 ]
  %97 = phi ptr [ %89, %91 ], [ %115, %107 ]
  %98 = getelementptr inbounds %struct.EdgeListStruct, ptr %97, i64 0, i32 1
  %99 = load ptr, ptr %98, align 8, !tbaa !54
  %100 = icmp eq ptr %92, %99
  br i1 %100, label %107, label %101

101:                                              ; preds = %101, %95
  %102 = phi i64 [ %103, %101 ], [ 0, %95 ]
  %103 = add nuw i64 %102, 1
  %104 = getelementptr inbounds %struct.SearchDiagramStruct, ptr %11, i64 %103
  %105 = load ptr, ptr %104, align 8, !tbaa !29, !nonnull !114, !noundef !114
  %106 = icmp eq ptr %105, %99
  br i1 %106, label %107, label %101

107:                                              ; preds = %101, %95
  %108 = phi ptr [ %11, %95 ], [ %104, %101 ]
  %109 = getelementptr inbounds %struct.SearchDiagramStruct, ptr %94, i64 %96
  store ptr %99, ptr %109, align 8, !tbaa !138
  %110 = getelementptr inbounds %struct.SearchDiagramStruct, ptr %108, i64 0, i32 1
  %111 = load ptr, ptr %110, align 8, !tbaa !31
  %112 = getelementptr inbounds %struct.SearchDiagramStruct, ptr %94, i64 %96, i32 1
  store ptr %111, ptr %112, align 8, !tbaa !140
  %113 = getelementptr inbounds %struct.EdgeListStruct, ptr %97, i64 0, i32 2
  %114 = add nuw i64 %96, 1
  %115 = load ptr, ptr %113, align 8, !tbaa !36
  %116 = icmp eq ptr %115, null
  br i1 %116, label %117, label %95, !llvm.loop !141

117:                                              ; preds = %107, %83
  %118 = add nuw i64 %84, 1
  %119 = getelementptr inbounds %struct.NodeStruct, ptr %87, i64 0, i32 6
  %120 = load ptr, ptr %119, align 8, !tbaa !36
  %121 = icmp eq ptr %120, null
  br i1 %121, label %164, label %122

122:                                              ; preds = %117
  %123 = sext i32 %85 to i64
  br label %124

124:                                              ; preds = %157, %122
  %125 = phi i64 [ %123, %122 ], [ %158, %157 ]
  %126 = phi ptr [ %120, %122 ], [ %160, %157 ]
  %127 = load ptr, ptr %126, align 8, !tbaa !34
  %128 = getelementptr inbounds %struct.NodeStruct, ptr %127, i64 0, i32 7
  %129 = load ptr, ptr %128, align 8, !tbaa !36
  %130 = icmp eq ptr %129, null
  br i1 %130, label %157, label %131

131:                                              ; preds = %124
  %132 = load ptr, ptr %11, align 8, !tbaa !29, !nonnull !114, !noundef !114
  %133 = getelementptr inbounds %struct.SearchDiagramStruct, ptr %11, i64 %125, i32 1
  %134 = load ptr, ptr %133, align 8, !tbaa !31
  br label %135

135:                                              ; preds = %147, %131
  %136 = phi i64 [ 0, %131 ], [ %154, %147 ]
  %137 = phi ptr [ %129, %131 ], [ %155, %147 ]
  %138 = getelementptr inbounds %struct.EdgeListStruct, ptr %137, i64 0, i32 1
  %139 = load ptr, ptr %138, align 8, !tbaa !54
  %140 = icmp eq ptr %132, %139
  br i1 %140, label %147, label %141

141:                                              ; preds = %141, %135
  %142 = phi i64 [ %143, %141 ], [ 0, %135 ]
  %143 = add nuw i64 %142, 1
  %144 = getelementptr inbounds %struct.SearchDiagramStruct, ptr %11, i64 %143
  %145 = load ptr, ptr %144, align 8, !tbaa !29, !nonnull !114, !noundef !114
  %146 = icmp eq ptr %145, %139
  br i1 %146, label %147, label %141

147:                                              ; preds = %141, %135
  %148 = phi ptr [ %11, %135 ], [ %144, %141 ]
  %149 = getelementptr inbounds %struct.SearchDiagramStruct, ptr %134, i64 %136
  store ptr %139, ptr %149, align 8, !tbaa !138
  %150 = getelementptr inbounds %struct.SearchDiagramStruct, ptr %148, i64 0, i32 1
  %151 = load ptr, ptr %150, align 8, !tbaa !31
  %152 = getelementptr inbounds %struct.SearchDiagramStruct, ptr %134, i64 %136, i32 1
  store ptr %151, ptr %152, align 8, !tbaa !140
  %153 = getelementptr inbounds %struct.EdgeListStruct, ptr %137, i64 0, i32 2
  %154 = add nuw i64 %136, 1
  %155 = load ptr, ptr %153, align 8, !tbaa !36
  %156 = icmp eq ptr %155, null
  br i1 %156, label %157, label %135, !llvm.loop !142

157:                                              ; preds = %147, %124
  %158 = add i64 %125, -1
  %159 = getelementptr inbounds %struct.SearchDiagramStruct, ptr %126, i64 0, i32 1
  %160 = load ptr, ptr %159, align 8, !tbaa !36
  %161 = icmp eq ptr %160, null
  br i1 %161, label %162, label %124, !llvm.loop !143

162:                                              ; preds = %157
  %.lcssa = phi i64 [ %158, %157 ]
  %163 = trunc i64 %.lcssa to i32
  br label %164

164:                                              ; preds = %162, %117
  %165 = phi i32 [ %85, %117 ], [ %163, %162 ]
  %166 = getelementptr inbounds %struct.SearchDiagramStruct, ptr %86, i64 0, i32 1
  %167 = load ptr, ptr %166, align 8, !tbaa !71
  %168 = icmp eq ptr %167, null
  br i1 %168, label %169, label %83, !llvm.loop !144

169:                                              ; preds = %164, %7, %2
  %170 = phi ptr [ null, %2 ], [ null, %7 ], [ %11, %164 ]
  ret ptr %170
}

; Function Attrs: nounwind optsize uwtable
define internal zeroext i1 @SearchDiagram_findSignatureAlongEdges(ptr noundef %0, ptr noundef readonly %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #10 {
  %6 = insertelement <4 x ptr> poison, ptr %1, i64 0
  %7 = insertelement <4 x ptr> %6, ptr %0, i64 1
  %8 = insertelement <4 x ptr> %7, ptr %2, i64 2
  %9 = insertelement <4 x ptr> %8, ptr %3, i64 3
  %10 = icmp eq <4 x ptr> %9, zeroinitializer
  %11 = icmp ne ptr %4, null
  %12 = bitcast <4 x i1> %10 to i4
  %13 = icmp eq i4 %12, 0
  %14 = and i1 %13, %11
  br i1 %14, label %15, label %69

15:                                               ; preds = %5
  %16 = tail call zeroext i1 @Bitfield_nodeVisited(ptr noundef nonnull %4, ptr noundef nonnull %0) #37
  br i1 %16, label %69, label %17

17:                                               ; preds = %15
  %18 = tail call zeroext i1 @NodePtrVec_push(ptr noundef nonnull %3, ptr noundef nonnull %0) #37
  %19 = load ptr, ptr %1, align 8, !tbaa !138
  %20 = icmp eq ptr %19, null
  br i1 %20, label %67, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds ptr, ptr %2, i64 1
  br label %26

23:                                               ; preds = %51
  %24 = load ptr, ptr %1, align 8, !tbaa !138
  %25 = icmp eq ptr %24, null
  br i1 %25, label %67, label %61

26:                                               ; preds = %51, %21
  %27 = phi i64 [ 0, %21 ], [ %52, %51 ]
  %28 = phi ptr [ %19, %21 ], [ %54, %51 ]
  %29 = phi ptr [ %1, %21 ], [ %53, %51 ]
  %30 = getelementptr inbounds %struct.NodeStruct, ptr %28, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !61
  %32 = icmp eq ptr %31, null
  br i1 %32, label %51, label %33

33:                                               ; preds = %26
  %34 = load ptr, ptr %2, align 8, !tbaa !36
  %35 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %31, ptr noundef nonnull dereferenceable(1) %34) #42
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %51

37:                                               ; preds = %33
  %38 = load ptr, ptr %22, align 8, !tbaa !36
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %.lcssa1 = phi ptr [ %28, %37 ]
  %41 = tail call zeroext i1 @NodePtrVec_push(ptr noundef nonnull %3, ptr noundef nonnull %.lcssa1) #37
  br label %69

42:                                               ; preds = %37
  %43 = tail call ptr @NodePtrVec_new(i32 noundef 50) #37
  %44 = load i32, ptr %4, align 8, !tbaa !13
  %45 = tail call ptr @Bitfield_new(i32 noundef %44) #37
  %46 = load ptr, ptr %29, align 8, !tbaa !138
  %47 = getelementptr inbounds %struct.SearchDiagramStruct, ptr %1, i64 %27, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !140
  %49 = tail call zeroext i1 @SearchDiagram_findSignatureAlongEdges(ptr noundef %46, ptr noundef %48, ptr noundef nonnull %22, ptr noundef %43, ptr noundef %45) #38
  tail call void @Bitfield_delete(ptr noundef %45) #37
  br i1 %49, label %50, label %51

50:                                               ; preds = %42
  %.lcssa = phi ptr [ %43, %42 ]
  tail call void @NodePtrVec_appendVectors(ptr noundef nonnull %3, ptr noundef %.lcssa, i1 noundef zeroext true) #37
  tail call void @NodePtrVec_delete(ptr noundef %.lcssa) #37
  br label %69

51:                                               ; preds = %42, %33, %26
  %52 = add nuw i64 %27, 1
  %53 = getelementptr inbounds %struct.SearchDiagramStruct, ptr %1, i64 %52
  %54 = load ptr, ptr %53, align 8, !tbaa !138
  %55 = icmp eq ptr %54, null
  br i1 %55, label %23, label %26, !llvm.loop !145

56:                                               ; preds = %61
  %57 = add nuw i64 %62, 1
  %58 = getelementptr inbounds %struct.SearchDiagramStruct, ptr %1, i64 %57
  %59 = load ptr, ptr %58, align 8, !tbaa !138
  %60 = icmp eq ptr %59, null
  br i1 %60, label %67, label %61, !llvm.loop !146

61:                                               ; preds = %56, %23
  %62 = phi i64 [ %57, %56 ], [ 0, %23 ]
  %63 = phi ptr [ %59, %56 ], [ %24, %23 ]
  %64 = getelementptr inbounds %struct.SearchDiagramStruct, ptr %1, i64 %62, i32 1
  %65 = load ptr, ptr %64, align 8, !tbaa !140
  %66 = tail call zeroext i1 @SearchDiagram_findSignatureAlongEdges(ptr noundef nonnull %63, ptr noundef %65, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %4) #38
  br i1 %66, label %69, label %56

67:                                               ; preds = %56, %23, %17
  %68 = tail call ptr @NodePtrVec_pop(ptr noundef nonnull %3) #37
  br label %69

69:                                               ; preds = %67, %61, %50, %40, %15, %5
  %70 = phi i1 [ true, %40 ], [ true, %50 ], [ false, %67 ], [ false, %5 ], [ false, %15 ], [ true, %61 ]
  ret i1 %70
}

; Function Attrs: nounwind optsize uwtable
define internal noalias ptr @Stats_new() #10 {
  %1 = tail call noalias dereferenceable_or_null(40) ptr @malloc(i64 noundef 40) #35
  %2 = icmp eq ptr %1, null
  br i1 %2, label %11, label %3

3:                                                ; preds = %0
  %4 = tail call ptr @IntVector_new(i32 noundef 16) #37
  store ptr %4, ptr %1, align 8, !tbaa !130
  %5 = getelementptr inbounds %struct.StatsStruct, ptr %1, i64 0, i32 3
  %6 = getelementptr inbounds %struct.StatsStruct, ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  store i32 2147483647, ptr %6, align 8, !tbaa !131
  %7 = getelementptr inbounds %struct.StatsStruct, ptr %1, i64 0, i32 2
  store i32 0, ptr %7, align 4, !tbaa !132
  %8 = getelementptr inbounds %struct.StatsStruct, ptr %1, i64 0, i32 5
  store ptr null, ptr %8, align 8, !tbaa !133
  %9 = icmp eq ptr %4, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  tail call void @free(ptr noundef nonnull %1) #37
  br label %11

11:                                               ; preds = %10, %3, %0
  %12 = phi ptr [ null, %10 ], [ %1, %3 ], [ null, %0 ]
  ret ptr %12
}

; Function Attrs: nounwind optsize uwtable
define internal zeroext i1 @Stats_logPath(ptr noundef %0, ptr noundef readonly %1) #10 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %22, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr %0, align 8, !tbaa !130
  %6 = icmp ne ptr %5, null
  %7 = icmp ne ptr %1, null
  %8 = and i1 %7, %6
  br i1 %8, label %9, label %22

9:                                                ; preds = %4
  %10 = load i32, ptr %1, align 8, !tbaa !45
  %11 = getelementptr inbounds %struct.StatsStruct, ptr %0, i64 0, i32 1
  %12 = load i32, ptr %11, align 8, !tbaa !131
  %13 = icmp slt i32 %10, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %9
  store i32 %10, ptr %11, align 8, !tbaa !131
  br label %15

15:                                               ; preds = %14, %9
  %16 = getelementptr inbounds %struct.StatsStruct, ptr %0, i64 0, i32 2
  %17 = load i32, ptr %16, align 4, !tbaa !132
  %18 = icmp sgt i32 %10, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  store i32 %10, ptr %16, align 4, !tbaa !132
  br label %20

20:                                               ; preds = %19, %15
  %21 = tail call zeroext i1 @IntVector_insertEnd(ptr noundef nonnull %5, i32 noundef %10) #37
  br label %22

22:                                               ; preds = %20, %4, %2
  %23 = phi i1 [ %21, %20 ], [ false, %4 ], [ false, %2 ]
  ret i1 %23
}

; Function Attrs: nofree nounwind optsize uwtable
define internal void @Stats_calculate(ptr noundef %0) #12 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %75, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !130
  %5 = icmp eq ptr %4, null
  br i1 %5, label %75, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.StatsStruct, ptr %0, i64 0, i32 2
  %8 = load i32, ptr %7, align 4, !tbaa !132
  %9 = add nsw i32 %8, 1
  %10 = sext i32 %9 to i64
  %11 = tail call noalias ptr @calloc(i64 noundef %10, i64 noundef 4) #36
  %12 = getelementptr inbounds %struct.StatsStruct, ptr %0, i64 0, i32 5
  store ptr %11, ptr %12, align 8, !tbaa !133
  %13 = icmp eq ptr %11, null
  br i1 %13, label %75, label %14

14:                                               ; preds = %6
  %15 = load i32, ptr %4, align 8, !tbaa !80
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %75

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.NodeVecVecStruct, ptr %4, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !77
  br label %20

20:                                               ; preds = %35, %17
  %21 = phi i32 [ %15, %17 ], [ %36, %35 ]
  %22 = phi i64 [ 0, %17 ], [ %38, %35 ]
  %23 = phi double [ undef, %17 ], [ %37, %35 ]
  %24 = getelementptr inbounds i32, ptr %19, i64 %22
  %25 = load i32, ptr %24, align 4, !tbaa !79
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %20
  %28 = sitofp i32 %25 to double
  %29 = fadd double %23, %28
  %30 = zext i32 %25 to i64
  %31 = getelementptr inbounds i32, ptr %11, i64 %30
  %32 = load i32, ptr %31, align 4, !tbaa !79
  %33 = add nsw i32 %32, 1
  store i32 %33, ptr %31, align 4, !tbaa !79
  %34 = load i32, ptr %4, align 8, !tbaa !80
  br label %35

35:                                               ; preds = %27, %20
  %36 = phi i32 [ %34, %27 ], [ %21, %20 ]
  %37 = phi double [ %29, %27 ], [ %23, %20 ]
  %38 = add nuw nsw i64 %22, 1
  %39 = sext i32 %36 to i64
  %40 = icmp slt i64 %38, %39
  br i1 %40, label %20, label %41, !llvm.loop !147

41:                                               ; preds = %35
  %.lcssa3 = phi i32 [ %36, %35 ]
  %.lcssa2 = phi double [ %37, %35 ]
  %.lcssa1 = phi i64 [ %38, %35 ]
  %42 = trunc i64 %.lcssa1 to i32
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %41
  %45 = sitofp i32 %42 to double
  %46 = fdiv double %.lcssa2, %45
  %47 = getelementptr inbounds %struct.StatsStruct, ptr %0, i64 0, i32 3
  store double %46, ptr %47, align 8, !tbaa !126
  br label %48

48:                                               ; preds = %44, %41
  %49 = icmp sgt i32 %.lcssa3, 0
  br i1 %49, label %50, label %75

50:                                               ; preds = %48
  %51 = getelementptr inbounds %struct.NodeVecVecStruct, ptr %4, i64 0, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !77
  %53 = getelementptr inbounds %struct.StatsStruct, ptr %0, i64 0, i32 3
  %54 = zext i32 %.lcssa3 to i64
  br label %55

55:                                               ; preds = %66, %50
  %56 = phi i64 [ 0, %50 ], [ %68, %66 ]
  %57 = phi double [ 0.000000e+00, %50 ], [ %67, %66 ]
  %58 = getelementptr inbounds i32, ptr %52, i64 %56
  %59 = load i32, ptr %58, align 4, !tbaa !79
  %60 = icmp sgt i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %55
  %62 = sitofp i32 %59 to double
  %63 = load double, ptr %53, align 8, !tbaa !126
  %64 = fsub double %62, %63
  %65 = tail call double @llvm.fmuladd.f64(double %64, double %64, double %57)
  br label %66

66:                                               ; preds = %61, %55
  %67 = phi double [ %65, %61 ], [ %57, %55 ]
  %68 = add nuw nsw i64 %56, 1
  %69 = icmp eq i64 %68, %54
  br i1 %69, label %70, label %55, !llvm.loop !148

70:                                               ; preds = %66
  %.lcssa = phi double [ %67, %66 ]
  %71 = sitofp i32 %.lcssa3 to double
  %72 = fdiv double %.lcssa, %71
  %73 = tail call double @sqrt(double noundef %72) #37
  %74 = getelementptr inbounds %struct.StatsStruct, ptr %0, i64 0, i32 4
  store double %73, ptr %74, align 8, !tbaa !129
  br label %75

75:                                               ; preds = %70, %48, %14, %6, %3, %1
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #20

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @sqrt(double noundef) local_unnamed_addr #24

; Function Attrs: nounwind optsize uwtable
define internal noalias ptr @SystemCallMapElement_new(ptr nocapture noundef readonly %0, i32 noundef %1) #10 {
  %3 = tail call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #35
  %4 = icmp eq ptr %3, null
  br i1 %4, label %15, label %5

5:                                                ; preds = %2
  %6 = tail call noalias ptr @strdup(ptr noundef %0) #37
  store ptr %6, ptr %3, align 8, !tbaa !118
  %7 = getelementptr inbounds %struct.SystemCallMapElementStruct, ptr %3, i64 0, i32 1
  store i32 -1, ptr %7, align 8, !tbaa !149
  %8 = icmp eq ptr %6, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %5
  %10 = tail call ptr @NodePtrVec_new(i32 noundef %1) #37
  %11 = getelementptr inbounds %struct.SystemCallMapElementStruct, ptr %3, i64 0, i32 2
  store ptr %10, ptr %11, align 8, !tbaa !122
  %12 = icmp eq ptr %10, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  tail call void @free(ptr noundef nonnull %6) #37
  br label %14

14:                                               ; preds = %13, %5
  tail call void @free(ptr noundef nonnull %3) #37
  br label %15

15:                                               ; preds = %14, %9, %2
  %16 = phi ptr [ %3, %9 ], [ null, %2 ], [ null, %14 ]
  ret ptr %16
}

; Function Attrs: nounwind optsize uwtable
define internal void @SystemCallMapElement_delete(ptr noundef readonly %0) #10 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %10, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !118
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call void @free(ptr noundef nonnull %4) #37
  br label %7

7:                                                ; preds = %6, %3
  %8 = getelementptr inbounds %struct.SystemCallMapElementStruct, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !122
  tail call void @NodePtrVec_delete(ptr noundef %9) #37
  br label %10

10:                                               ; preds = %7, %1
  ret void
}

; Function Attrs: mustprogress nounwind optsize willreturn memory(readwrite, argmem: none) uwtable
define internal noalias ptr @SystemCallMap_new(i32 noundef %0) #0 {
  %2 = icmp slt i32 %0, 1
  br i1 %2, label %15, label %3

3:                                                ; preds = %1
  %4 = zext i32 %0 to i64
  %5 = shl nuw nsw i64 %4, 3
  %6 = tail call noalias ptr @malloc(i64 noundef %5) #35
  %7 = icmp eq ptr %6, null
  br i1 %7, label %15, label %8

8:                                                ; preds = %3
  %9 = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #35
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.NodeVecVecStruct, ptr %9, i64 0, i32 1
  store i32 %0, ptr %12, align 4, !tbaa !150
  store i32 0, ptr %9, align 8, !tbaa !98
  %13 = getelementptr inbounds %struct.NodeVecVecStruct, ptr %9, i64 0, i32 2
  store ptr %6, ptr %13, align 8, !tbaa !117
  br label %15

14:                                               ; preds = %8
  tail call void @free(ptr noundef nonnull %6) #37
  br label %15

15:                                               ; preds = %14, %11, %3, %1
  %16 = phi ptr [ null, %1 ], [ %9, %11 ], [ null, %14 ], [ null, %3 ]
  ret ptr %16
}

; Function Attrs: nounwind optsize uwtable
define internal zeroext i1 @SystemCallMap_insert(ptr noundef %0, ptr noundef readonly %1, ptr noundef %2) #10 {
  %4 = icmp ne ptr %0, null
  %5 = icmp ne ptr %1, null
  %6 = and i1 %4, %5
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7
  br i1 %8, label %9, label %69

9:                                                ; preds = %3
  %10 = load i32, ptr %0, align 8, !tbaa !98
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %35

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.NodeVecVecStruct, ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !117
  %15 = zext i32 %10 to i64
  br label %16

16:                                               ; preds = %32, %12
  %17 = phi i64 [ 0, %12 ], [ %33, %32 ]
  %18 = getelementptr inbounds ptr, ptr %14, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !36
  %20 = load ptr, ptr %19, align 8, !tbaa !118
  %21 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %20) #42
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %16
  %.lcssa1 = phi i64 [ %17, %16 ]
  %.lcssa = phi ptr [ %20, %16 ]
  %24 = getelementptr inbounds ptr, ptr %14, i64 %.lcssa1
  %25 = trunc i64 %.lcssa1 to i32
  %26 = getelementptr inbounds %struct.NodeStruct, ptr %2, i64 0, i32 2
  store ptr %.lcssa, ptr %26, align 8, !tbaa !61
  %27 = getelementptr inbounds %struct.NodeStruct, ptr %2, i64 0, i32 3
  store i32 %25, ptr %27, align 8, !tbaa !46
  %28 = load ptr, ptr %24, align 8, !tbaa !36
  %29 = getelementptr inbounds %struct.SystemCallMapElementStruct, ptr %28, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !122
  %31 = tail call zeroext i1 @NodePtrVec_push(ptr noundef %30, ptr noundef nonnull %2) #37
  br label %69

32:                                               ; preds = %16
  %33 = add nuw nsw i64 %17, 1
  %34 = icmp eq i64 %33, %15
  br i1 %34, label %35, label %16, !llvm.loop !151

35:                                               ; preds = %32, %9
  %36 = getelementptr inbounds %struct.NodeVecVecStruct, ptr %0, i64 0, i32 1
  %37 = load i32, ptr %36, align 4, !tbaa !150
  %38 = icmp eq i32 %10, %37
  br i1 %38, label %39, label %50

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.NodeVecVecStruct, ptr %0, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !117
  %42 = shl nsw i32 %10, 1
  %43 = sext i32 %42 to i64
  %44 = shl nsw i64 %43, 3
  %45 = tail call ptr @realloc(ptr noundef %41, i64 noundef %44) #45
  store ptr %45, ptr %40, align 8, !tbaa !117
  %46 = icmp eq ptr %45, null
  br i1 %46, label %69, label %47

47:                                               ; preds = %39
  %48 = load i32, ptr %36, align 4, !tbaa !150
  %49 = shl nsw i32 %48, 1
  store i32 %49, ptr %36, align 4, !tbaa !150
  br label %50

50:                                               ; preds = %47, %35
  %51 = tail call ptr @SystemCallMapElement_new(ptr noundef nonnull %1, i32 noundef 8) #38
  %52 = icmp eq ptr %51, null
  br i1 %52, label %69, label %53

53:                                               ; preds = %50
  %54 = getelementptr inbounds %struct.SystemCallMapElementStruct, ptr %51, i64 0, i32 2
  %55 = load ptr, ptr %54, align 8, !tbaa !122
  %56 = tail call zeroext i1 @NodePtrVec_push(ptr noundef %55, ptr noundef nonnull %2) #37
  br i1 %56, label %58, label %57

57:                                               ; preds = %53
  tail call void @SystemCallMapElement_delete(ptr noundef nonnull %51) #38
  br label %58

58:                                               ; preds = %57, %53
  %59 = load ptr, ptr %51, align 8, !tbaa !118
  %60 = getelementptr inbounds %struct.NodeStruct, ptr %2, i64 0, i32 2
  store ptr %59, ptr %60, align 8, !tbaa !61
  %61 = load i32, ptr %0, align 8, !tbaa !98
  %62 = getelementptr inbounds %struct.SystemCallMapElementStruct, ptr %51, i64 0, i32 1
  store i32 %61, ptr %62, align 8, !tbaa !149
  %63 = getelementptr inbounds %struct.NodeStruct, ptr %2, i64 0, i32 3
  store i32 %61, ptr %63, align 8, !tbaa !46
  %64 = getelementptr inbounds %struct.NodeVecVecStruct, ptr %0, i64 0, i32 2
  %65 = load ptr, ptr %64, align 8, !tbaa !117
  %66 = sext i32 %61 to i64
  %67 = getelementptr inbounds ptr, ptr %65, i64 %66
  store ptr %51, ptr %67, align 8, !tbaa !36
  %68 = add nsw i32 %61, 1
  store i32 %68, ptr %0, align 8, !tbaa !98
  br label %69

69:                                               ; preds = %58, %50, %39, %23, %3
  %70 = phi i1 [ %31, %23 ], [ true, %58 ], [ false, %3 ], [ false, %39 ], [ false, %50 ]
  ret i1 %70
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #31

; Function Attrs: nofree nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal ptr @SystemCallMap_findLabeledNodes(ptr noundef readonly %0, ptr noundef readonly %1) #32 {
  %3 = icmp ne ptr %0, null
  %4 = icmp ne ptr %1, null
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %26

6:                                                ; preds = %2
  %7 = load i32, ptr %0, align 8, !tbaa !98
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %26

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.NodeVecVecStruct, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !117
  %12 = zext i32 %7 to i64
  br label %16

13:                                               ; preds = %16
  %14 = add nuw nsw i64 %17, 1
  %15 = icmp eq i64 %14, %12
  br i1 %15, label %26, label %16, !llvm.loop !152

16:                                               ; preds = %13, %9
  %17 = phi i64 [ 0, %9 ], [ %14, %13 ]
  %18 = getelementptr inbounds ptr, ptr %11, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !36
  %20 = load ptr, ptr %19, align 8, !tbaa !118
  %21 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %20) #42
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %13

23:                                               ; preds = %16
  %.lcssa = phi ptr [ %19, %16 ]
  %24 = getelementptr inbounds %struct.SystemCallMapElementStruct, ptr %.lcssa, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !122
  br label %26

26:                                               ; preds = %23, %13, %6, %2
  %27 = phi ptr [ %25, %23 ], [ null, %2 ], [ null, %6 ], [ null, %13 ]
  ret ptr %27
}

; Function Attrs: mustprogress nounwind optsize willreturn memory(readwrite, argmem: none) uwtable
define internal noalias ptr @IntVector_new(i32 noundef %0) #0 {
  %2 = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #35
  %3 = icmp eq ptr %2, null
  br i1 %3, label %13, label %4

4:                                                ; preds = %1
  %5 = sext i32 %0 to i64
  %6 = shl nsw i64 %5, 2
  %7 = tail call noalias ptr @malloc(i64 noundef %6) #35
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.NodeVecVecStruct, ptr %2, i64 0, i32 2
  store ptr %7, ptr %10, align 8, !tbaa !77
  store i32 0, ptr %2, align 8, !tbaa !80
  %11 = getelementptr inbounds %struct.NodeVecVecStruct, ptr %2, i64 0, i32 1
  store i32 %0, ptr %11, align 4, !tbaa !153
  br label %13

12:                                               ; preds = %4
  tail call void @free(ptr noundef nonnull %2) #37
  br label %13

13:                                               ; preds = %12, %9, %1
  %14 = phi ptr [ %2, %9 ], [ null, %12 ], [ null, %1 ]
  ret ptr %14
}

; Function Attrs: mustprogress nounwind optsize willreturn uwtable
define internal void @IntVector_delete(ptr noundef %0) #4 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.NodeVecVecStruct, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !77
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %3
  tail call void @free(ptr noundef nonnull %5) #37
  br label %8

8:                                                ; preds = %7, %3
  tail call void @free(ptr noundef nonnull %0) #37
  br label %9

9:                                                ; preds = %8, %1
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal zeroext i1 @IntVector_insertEnd(ptr noundef %0, i32 noundef %1) #10 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %27, label %4

4:                                                ; preds = %2
  %5 = load i32, ptr %0, align 8, !tbaa !80
  %6 = getelementptr inbounds %struct.NodeVecVecStruct, ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !153
  %8 = icmp eq i32 %5, %7
  %9 = getelementptr inbounds %struct.NodeVecVecStruct, ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !77
  br i1 %8, label %11, label %21

11:                                               ; preds = %4
  %12 = shl nsw i32 %5, 1
  %13 = sext i32 %12 to i64
  %14 = shl nsw i64 %13, 2
  %15 = tail call ptr @realloc(ptr noundef %10, i64 noundef %14) #45
  store ptr %15, ptr %9, align 8, !tbaa !77
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %11
  store i32 %12, ptr %6, align 4, !tbaa !153
  br label %21

18:                                               ; preds = %11
  %19 = load ptr, ptr @stderr, align 8, !tbaa !36
  %20 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef nonnull @.str.91, i32 noundef %12) #43
  br label %27

21:                                               ; preds = %17, %4
  %22 = phi ptr [ %15, %17 ], [ %10, %4 ]
  %23 = sext i32 %5 to i64
  %24 = getelementptr inbounds i32, ptr %22, i64 %23
  store i32 %1, ptr %24, align 4, !tbaa !79
  %25 = load i32, ptr %0, align 8, !tbaa !80
  %26 = add nsw i32 %25, 1
  store i32 %26, ptr %0, align 8, !tbaa !80
  br label %27

27:                                               ; preds = %21, %18, %2
  %28 = phi i1 [ true, %21 ], [ false, %18 ], [ false, %2 ]
  ret i1 %28
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @IntVector_createFromString(ptr noundef %0, ptr noundef readonly %1) #10 {
  %3 = icmp ne ptr %0, null
  %4 = icmp ne ptr %1, null
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %29

6:                                                ; preds = %2
  %7 = tail call ptr @__ctype_b_loc() #44
  %8 = load ptr, ptr %7, align 8, !tbaa !36
  %9 = load i8, ptr %1, align 1, !tbaa !16
  %10 = sext i8 %9 to i64
  %11 = getelementptr inbounds i16, ptr %8, i64 %10
  %12 = load i16, ptr %11, align 2, !tbaa !88
  %13 = and i16 %12, 2048
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %6
  %16 = tail call fastcc ptr @findNextNumber(ptr noundef nonnull %1) #38
  %17 = icmp eq ptr %16, null
  br i1 %17, label %29, label %18

18:                                               ; preds = %15, %6
  %19 = phi ptr [ %16, %15 ], [ %1, %6 ]
  br label %20

20:                                               ; preds = %26, %18
  %21 = phi i32 [ %27, %26 ], [ 0, %18 ]
  %22 = phi ptr [ %24, %26 ], [ %19, %18 ]
  %23 = tail call i32 @atoi(ptr nocapture noundef nonnull %22) #42
  %24 = tail call fastcc ptr @findNextNumber(ptr noundef nonnull %22) #38
  %25 = tail call zeroext i1 @IntVector_insertEnd(ptr noundef nonnull %0, i32 noundef %23) #38
  br i1 %25, label %26, label %29

26:                                               ; preds = %20
  %27 = add nuw nsw i32 %21, 1
  %28 = icmp eq ptr %24, null
  br i1 %28, label %29, label %20, !llvm.loop !154

29:                                               ; preds = %26, %20, %15, %2
  %30 = phi i32 [ 0, %2 ], [ 0, %15 ], [ 0, %20 ], [ %27, %26 ]
  ret i32 %30
}

; Function Attrs: nofree nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @findNextNumber(ptr noundef readonly %0) unnamed_addr #33 {
  %2 = tail call ptr @__ctype_b_loc() #44
  %3 = load ptr, ptr %2, align 8, !tbaa !36
  %4 = load i8, ptr %0, align 1, !tbaa !16
  %5 = sext i8 %4 to i64
  %6 = getelementptr inbounds i16, ptr %3, i64 %5
  %7 = load i16, ptr %6, align 2, !tbaa !88
  %8 = and i16 %7, 2048
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %35, label %10

10:                                               ; preds = %10, %1
  %11 = phi ptr [ %12, %10 ], [ %0, %1 ]
  %12 = getelementptr inbounds i8, ptr %11, i64 1
  %13 = load i8, ptr %12, align 1, !tbaa !16
  %14 = sext i8 %13 to i64
  %15 = getelementptr inbounds i16, ptr %3, i64 %14
  %16 = load i16, ptr %15, align 2, !tbaa !88
  %17 = and i16 %16, 2048
  %18 = icmp eq i16 %17, 0
  %19 = icmp eq i8 %13, 0
  %20 = or i1 %19, %18
  br i1 %20, label %21, label %10, !llvm.loop !155

21:                                               ; preds = %10
  %.lcssa3 = phi ptr [ %12, %10 ]
  %.lcssa2 = phi i1 [ %19, %10 ]
  br i1 %.lcssa2, label %47, label %22

22:                                               ; preds = %22, %21
  %23 = phi ptr [ %32, %22 ], [ %.lcssa3, %21 ]
  %24 = load i8, ptr %23, align 1, !tbaa !16
  %25 = sext i8 %24 to i64
  %26 = getelementptr inbounds i16, ptr %3, i64 %25
  %27 = load i16, ptr %26, align 2, !tbaa !88
  %28 = and i16 %27, 2048
  %29 = icmp ne i16 %28, 0
  %30 = icmp eq i8 %24, 0
  %31 = or i1 %30, %29
  %32 = getelementptr inbounds i8, ptr %23, i64 1
  br i1 %31, label %33, label %22, !llvm.loop !156

33:                                               ; preds = %22
  %.lcssa1 = phi ptr [ %23, %22 ]
  %.lcssa = phi i1 [ %30, %22 ]
  %34 = select i1 %.lcssa, ptr null, ptr %.lcssa1
  br label %47

35:                                               ; preds = %39, %1
  %36 = phi i8 [ %41, %39 ], [ %4, %1 ]
  %37 = phi ptr [ %40, %39 ], [ %0, %1 ]
  %38 = icmp eq i8 %36, 0
  br i1 %38, label %47, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds i8, ptr %37, i64 1
  %41 = load i8, ptr %40, align 1, !tbaa !16
  %42 = sext i8 %41 to i64
  %43 = getelementptr inbounds i16, ptr %3, i64 %42
  %44 = load i16, ptr %43, align 2, !tbaa !88
  %45 = and i16 %44, 2048
  %46 = icmp eq i16 %45, 0
  br i1 %46, label %35, label %47, !llvm.loop !157

47:                                               ; preds = %39, %35, %33, %21
  %48 = phi ptr [ null, %21 ], [ %34, %33 ], [ %40, %39 ], [ null, %35 ]
  ret ptr %48
}

; Function Attrs: mustprogress nounwind optsize willreturn memory(readwrite, argmem: none) uwtable
define internal noalias ptr @CharVector_new(i32 noundef %0) #0 {
  %2 = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #35
  %3 = icmp eq ptr %2, null
  br i1 %3, label %12, label %4

4:                                                ; preds = %1
  %5 = sext i32 %0 to i64
  %6 = tail call noalias ptr @malloc(i64 noundef %5) #35
  %7 = icmp eq ptr %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.NodeVecVecStruct, ptr %2, i64 0, i32 2
  store ptr %6, ptr %9, align 8, !tbaa !85
  store i32 0, ptr %2, align 8, !tbaa !158
  %10 = getelementptr inbounds %struct.NodeVecVecStruct, ptr %2, i64 0, i32 1
  store i32 %0, ptr %10, align 4, !tbaa !159
  br label %12

11:                                               ; preds = %4
  tail call void @free(ptr noundef nonnull %2) #37
  br label %12

12:                                               ; preds = %11, %8, %1
  %13 = phi ptr [ %2, %8 ], [ null, %11 ], [ null, %1 ]
  ret ptr %13
}

; Function Attrs: mustprogress nounwind optsize willreturn uwtable
define internal void @CharVector_delete(ptr noundef %0) #4 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.NodeVecVecStruct, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !85
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %3
  tail call void @free(ptr noundef nonnull %5) #37
  br label %8

8:                                                ; preds = %7, %3
  tail call void @free(ptr noundef nonnull %0) #37
  br label %9

9:                                                ; preds = %8, %1
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal zeroext i1 @CharVector_insertEnd(ptr noundef %0, i8 noundef signext %1) #10 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %26, label %4

4:                                                ; preds = %2
  %5 = load i32, ptr %0, align 8, !tbaa !158
  %6 = getelementptr inbounds %struct.NodeVecVecStruct, ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !159
  %8 = icmp eq i32 %5, %7
  %9 = getelementptr inbounds %struct.NodeVecVecStruct, ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !85
  br i1 %8, label %11, label %20

11:                                               ; preds = %4
  %12 = shl nsw i32 %5, 1
  %13 = sext i32 %12 to i64
  %14 = tail call ptr @realloc(ptr noundef %10, i64 noundef %13) #45
  store ptr %14, ptr %9, align 8, !tbaa !85
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %11
  store i32 %12, ptr %6, align 4, !tbaa !159
  br label %20

17:                                               ; preds = %11
  %18 = load ptr, ptr @stderr, align 8, !tbaa !36
  %19 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %18, ptr noundef nonnull @.str.91, i32 noundef %12) #43
  br label %26

20:                                               ; preds = %16, %4
  %21 = phi ptr [ %14, %16 ], [ %10, %4 ]
  %22 = sext i32 %5 to i64
  %23 = getelementptr inbounds i8, ptr %21, i64 %22
  store i8 %1, ptr %23, align 1, !tbaa !16
  %24 = load i32, ptr %0, align 8, !tbaa !158
  %25 = add nsw i32 %24, 1
  store i32 %25, ptr %0, align 8, !tbaa !158
  br label %26

26:                                               ; preds = %20, %17, %2
  %27 = phi i1 [ true, %20 ], [ false, %17 ], [ false, %2 ]
  ret i1 %27
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @CharVector_getLineFromFile(ptr noundef %0, ptr noundef %1) #10 {
  %3 = icmp ne ptr %0, null
  %4 = icmp ne ptr %1, null
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %21

6:                                                ; preds = %2
  store i32 0, ptr %0, align 8, !tbaa !158
  br label %7

7:                                                ; preds = %14, %6
  %8 = tail call i32 @fgetc(ptr noundef nonnull %1) #38
  %9 = tail call i32 @feof(ptr noundef nonnull %1) #37
  %10 = icmp ne i32 %9, 0
  %11 = and i32 %8, 255
  %12 = icmp eq i32 %11, 10
  %13 = or i1 %10, %12
  br i1 %13, label %17, label %14

14:                                               ; preds = %7
  %15 = trunc i32 %8 to i8
  %16 = tail call zeroext i1 @CharVector_insertEnd(ptr noundef nonnull %0, i8 noundef signext %15) #38
  br i1 %16, label %7, label %21, !llvm.loop !160

17:                                               ; preds = %7
  %18 = tail call zeroext i1 @CharVector_insertEnd(ptr noundef nonnull %0, i8 noundef signext 0) #38
  br i1 %18, label %19, label %21

19:                                               ; preds = %17
  %20 = load i32, ptr %0, align 8, !tbaa !158
  br label %21

21:                                               ; preds = %19, %17, %14, %2
  %22 = phi i32 [ %20, %19 ], [ -1, %2 ], [ -1, %17 ], [ -1, %14 ]
  ret i32 %22
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fgetc(ptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: nounwind optsize uwtable
define internal noalias ptr @NodePtrVec_new(i32 noundef %0) #10 {
  %2 = sext i32 %0 to i64
  %3 = shl nsw i64 %2, 3
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #35
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.102)
  br label %16

8:                                                ; preds = %1
  %9 = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #35
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %8
  tail call void @free(ptr noundef nonnull %4) #37
  %12 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.9)
  br label %16

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.NodeVecVecStruct, ptr %9, i64 0, i32 1
  store i32 %0, ptr %14, align 4, !tbaa !161
  store i32 0, ptr %9, align 8, !tbaa !45
  %15 = getelementptr inbounds %struct.NodeVecVecStruct, ptr %9, i64 0, i32 2
  store ptr %4, ptr %15, align 8, !tbaa !43
  br label %16

16:                                               ; preds = %13, %11, %6
  %17 = phi ptr [ %9, %13 ], [ null, %11 ], [ null, %6 ]
  ret ptr %17
}

; Function Attrs: mustprogress nounwind optsize willreturn uwtable
define internal void @NodePtrVec_delete(ptr noundef %0) #4 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.NodeVecVecStruct, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !43
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %3
  tail call void @free(ptr noundef nonnull %5) #37
  br label %8

8:                                                ; preds = %7, %3
  tail call void @free(ptr noundef nonnull %0) #37
  br label %9

9:                                                ; preds = %8, %1
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal noalias ptr @NodePtrVec_copy(ptr noundef readonly %0, i1 noundef zeroext %1) #10 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %27, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.NodeVecVecStruct, ptr %0, i64 0, i32 1
  %6 = select i1 %1, ptr %5, ptr %0
  %7 = load i32, ptr %6, align 4, !tbaa !79
  %8 = tail call ptr @NodePtrVec_new(i32 noundef %7) #38
  %9 = icmp eq ptr %8, null
  br i1 %9, label %27, label %10

10:                                               ; preds = %4
  %11 = load i32, ptr %0, align 8, !tbaa !45
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %26

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.NodeVecVecStruct, ptr %0, i64 0, i32 2
  %15 = getelementptr inbounds %struct.NodeVecVecStruct, ptr %8, i64 0, i32 2
  %16 = zext i32 %11 to i64
  %17 = load ptr, ptr %15, align 8, !tbaa !43
  br label %18

18:                                               ; preds = %18, %13
  %19 = phi i64 [ 0, %13 ], [ %24, %18 ]
  %20 = load ptr, ptr %14, align 8, !tbaa !43
  %21 = getelementptr inbounds ptr, ptr %20, i64 %19
  %22 = load ptr, ptr %21, align 8, !tbaa !36
  %23 = getelementptr inbounds ptr, ptr %17, i64 %19
  store ptr %22, ptr %23, align 8, !tbaa !36
  %24 = add nuw nsw i64 %19, 1
  %25 = icmp eq i64 %24, %16
  br i1 %25, label %26, label %18, !llvm.loop !162

26:                                               ; preds = %18, %10
  store i32 %11, ptr %8, align 8, !tbaa !45
  br label %27

27:                                               ; preds = %26, %4, %2
  %28 = phi ptr [ null, %2 ], [ %8, %26 ], [ null, %4 ]
  ret ptr %28
}

; Function Attrs: nounwind optsize uwtable
define internal zeroext i1 @NodePtrVec_push(ptr noundef %0, ptr noundef %1) #10 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %35, label %4

4:                                                ; preds = %2
  %5 = load i32, ptr %0, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.NodeVecVecStruct, ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !161
  %8 = icmp eq i32 %5, %7
  %9 = getelementptr inbounds %struct.NodeVecVecStruct, ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !43
  br i1 %8, label %11, label %29

11:                                               ; preds = %4
  %12 = shl nsw i32 %5, 1
  %13 = sext i32 %12 to i64
  %14 = shl nsw i64 %13, 3
  %15 = tail call ptr @realloc(ptr noundef %10, i64 noundef %14) #45
  store ptr %15, ptr %9, align 8, !tbaa !43
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %11
  store i32 %12, ptr %6, align 4, !tbaa !161
  %18 = load i32, ptr %0, align 8, !tbaa !45
  br label %29

19:                                               ; preds = %11
  %20 = load i32, ptr %1, align 8, !tbaa !37
  %21 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3.107, i32 noundef %12, i32 noundef %20) #38
  %22 = getelementptr inbounds %struct.NodeStruct, ptr %1, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !61
  %24 = icmp eq ptr %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %19
  %26 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4.108, ptr noundef nonnull %23) #38
  br label %35

27:                                               ; preds = %19
  %28 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.10)
  br label %35

29:                                               ; preds = %17, %4
  %30 = phi i32 [ %18, %17 ], [ %5, %4 ]
  %31 = phi ptr [ %15, %17 ], [ %10, %4 ]
  %32 = sext i32 %5 to i64
  %33 = getelementptr inbounds ptr, ptr %31, i64 %32
  store ptr %1, ptr %33, align 8, !tbaa !36
  %34 = add nsw i32 %30, 1
  store i32 %34, ptr %0, align 8, !tbaa !45
  br label %35

35:                                               ; preds = %29, %27, %25, %2
  %36 = phi i1 [ true, %29 ], [ false, %2 ], [ false, %27 ], [ false, %25 ]
  ret i1 %36
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal ptr @NodePtrVec_pop(ptr noundef %0) #34 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %13, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !45
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %13

6:                                                ; preds = %3
  %7 = add nsw i32 %4, -1
  store i32 %7, ptr %0, align 8, !tbaa !45
  %8 = getelementptr inbounds %struct.NodeVecVecStruct, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !43
  %10 = zext i32 %7 to i64
  %11 = getelementptr inbounds ptr, ptr %9, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !36
  br label %13

13:                                               ; preds = %6, %3, %1
  %14 = phi ptr [ null, %1 ], [ %12, %6 ], [ null, %3 ]
  ret ptr %14
}

; Function Attrs: nounwind optsize uwtable
define internal void @NodePtrVec_appendVectors(ptr noundef %0, ptr noundef readonly %1, i1 noundef zeroext %2) #10 {
  %4 = icmp ne ptr %0, null
  %5 = icmp ne ptr %1, null
  %6 = and i1 %4, %5
  br i1 %6, label %7, label %25

7:                                                ; preds = %3
  %8 = xor i1 %2, true
  %9 = zext i1 %8 to i32
  %10 = load i32, ptr %1, align 8, !tbaa !45
  %11 = icmp sgt i32 %10, %9
  br i1 %11, label %12, label %25

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.NodeVecVecStruct, ptr %1, i64 0, i32 2
  %14 = zext i1 %8 to i64
  br label %15

15:                                               ; preds = %15, %12
  %16 = phi i64 [ %14, %12 ], [ %21, %15 ]
  %17 = load ptr, ptr %13, align 8, !tbaa !43
  %18 = getelementptr inbounds ptr, ptr %17, i64 %16
  %19 = load ptr, ptr %18, align 8, !tbaa !36
  %20 = tail call zeroext i1 @NodePtrVec_push(ptr noundef nonnull %0, ptr noundef %19) #38
  %21 = add nuw nsw i64 %16, 1
  %22 = load i32, ptr %1, align 8, !tbaa !45
  %23 = sext i32 %22 to i64
  %24 = icmp slt i64 %21, %23
  br i1 %24, label %15, label %25, !llvm.loop !163

25:                                               ; preds = %15, %7, %3
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal noalias ptr @NodeVecVec_new(i32 noundef %0) #10 {
  %2 = sext i32 %0 to i64
  %3 = shl nsw i64 %2, 3
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #35
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.11)
  %8 = load ptr, ptr @stdout, align 8, !tbaa !36
  %9 = tail call i32 @fflush(ptr noundef %8) #38
  br label %20

10:                                               ; preds = %1
  %11 = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #35
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %10
  tail call void @free(ptr noundef nonnull %4) #37
  %14 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.12.115)
  %15 = load ptr, ptr @stdout, align 8, !tbaa !36
  %16 = tail call i32 @fflush(ptr noundef %15) #38
  br label %20

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.NodeVecVecStruct, ptr %11, i64 0, i32 1
  store i32 %0, ptr %18, align 4, !tbaa !164
  store i32 0, ptr %11, align 8, !tbaa !40
  %19 = getelementptr inbounds %struct.NodeVecVecStruct, ptr %11, i64 0, i32 2
  store ptr %4, ptr %19, align 8, !tbaa !42
  br label %20

20:                                               ; preds = %17, %13, %6
  %21 = phi ptr [ %11, %17 ], [ null, %13 ], [ null, %6 ]
  ret ptr %21
}

; Function Attrs: nounwind optsize uwtable
define internal zeroext i1 @NodeVecVec_insert(ptr noundef %0, ptr noundef %1) #10 {
  %3 = tail call ptr @NodePtrVec_copy(ptr noundef %1, i1 noundef zeroext false) #38
  %4 = icmp ne ptr %0, null
  %5 = icmp ne ptr %1, null
  %6 = and i1 %4, %5
  %7 = icmp ne ptr %3, null
  %8 = select i1 %6, i1 %7, i1 false
  br i1 %8, label %9, label %34

9:                                                ; preds = %2
  %10 = load i32, ptr %0, align 8, !tbaa !40
  %11 = getelementptr inbounds %struct.NodeVecVecStruct, ptr %0, i64 0, i32 1
  %12 = load i32, ptr %11, align 4, !tbaa !164
  %13 = icmp eq i32 %10, %12
  %14 = getelementptr inbounds %struct.NodeVecVecStruct, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !42
  br i1 %13, label %16, label %28

16:                                               ; preds = %9
  %17 = shl nsw i32 %10, 1
  %18 = sext i32 %17 to i64
  %19 = shl nsw i64 %18, 3
  %20 = tail call ptr @realloc(ptr noundef %15, i64 noundef %19) #45
  store ptr %20, ptr %14, align 8, !tbaa !42
  %21 = icmp eq ptr %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %16
  store i32 %17, ptr %11, align 4, !tbaa !164
  %23 = load i32, ptr %0, align 8, !tbaa !40
  br label %28

24:                                               ; preds = %16
  %25 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.13)
  %26 = load ptr, ptr @stdout, align 8, !tbaa !36
  %27 = tail call i32 @fflush(ptr noundef %26) #38
  br label %34

28:                                               ; preds = %22, %9
  %29 = phi i32 [ %23, %22 ], [ %10, %9 ]
  %30 = phi ptr [ %20, %22 ], [ %15, %9 ]
  %31 = sext i32 %10 to i64
  %32 = getelementptr inbounds ptr, ptr %30, i64 %31
  store ptr %3, ptr %32, align 8, !tbaa !36
  %33 = add nsw i32 %29, 1
  store i32 %33, ptr %0, align 8, !tbaa !40
  br label %34

34:                                               ; preds = %28, %24, %2
  %35 = phi i1 [ true, %28 ], [ false, %24 ], [ false, %2 ]
  ret i1 %35
}

; Function Attrs: nounwind optsize uwtable
define internal void @YAMLOpen() #10 {
  %1 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #39
  %2 = tail call noalias dereferenceable_or_null(200) ptr @calloc(i64 noundef 200, i64 noundef 1) #36
  %3 = tail call noalias dereferenceable_or_null(200) ptr @calloc(i64 noundef 200, i64 noundef 1) #36
  %4 = call i64 @time(ptr noundef nonnull %1) #37
  %5 = call ptr @localtime(ptr noundef nonnull %1) #37
  %6 = load ptr, ptr @output, align 8, !tbaa !36
  %7 = icmp ne ptr %6, null
  %8 = icmp eq ptr %2, null
  %9 = or i1 %8, %7
  %10 = icmp eq ptr %3, null
  %11 = or i1 %10, %9
  %12 = icmp eq ptr %5, null
  %13 = select i1 %11, i1 true, i1 %12
  br i1 %13, label %67, label %14

14:                                               ; preds = %0
  %15 = getelementptr inbounds %struct.tm, ptr %5, i64 0, i32 5
  %16 = load i32, ptr %15, align 4, !tbaa !165
  %17 = add nsw i32 %16, 1900
  %18 = getelementptr inbounds %struct.tm, ptr %5, i64 0, i32 4
  %19 = load i32, ptr %18, align 8, !tbaa !168
  %20 = add nsw i32 %19, 1
  %21 = getelementptr inbounds %struct.tm, ptr %5, i64 0, i32 3
  %22 = load i32, ptr %21, align 4, !tbaa !169
  %23 = getelementptr inbounds %struct.tm, ptr %5, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !170
  %25 = getelementptr inbounds %struct.tm, ptr %5, i64 0, i32 1
  %26 = load i32, ptr %25, align 4, !tbaa !171
  %27 = load i32, ptr %5, align 8, !tbaa !172
  %28 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) @.str.120, i32 noundef %17, i32 noundef %20, i32 noundef %22, i32 noundef %24, i32 noundef %26, i32 noundef %27) #37
  %29 = load i32, ptr %15, align 4, !tbaa !165
  %30 = add nsw i32 %29, 1900
  %31 = load i32, ptr %18, align 8, !tbaa !168
  %32 = add nsw i32 %31, 1
  %33 = load i32, ptr %21, align 4, !tbaa !169
  %34 = load i32, ptr %23, align 8, !tbaa !170
  %35 = load i32, ptr %25, align 4, !tbaa !171
  %36 = load i32, ptr %5, align 8, !tbaa !172
  %37 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) @.str.1.121, i32 noundef %30, i32 noundef %32, i32 noundef %33, i32 noundef %34, i32 noundef %35, i32 noundef %36) #37
  %38 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2.122, ptr noundef nonnull %2) #38
  %39 = call noalias ptr @fopen(ptr noundef nonnull %2, ptr noundef nonnull @.str.3.123) #38
  store ptr %39, ptr @output, align 8, !tbaa !36
  %40 = icmp eq ptr %39, null
  br i1 %40, label %67, label %41

41:                                               ; preds = %14
  %42 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %39, ptr noundef nonnull @.str.15.124, ptr noundef nonnull @.str.4.125, ptr noundef nonnull @.str.5.126) #38
  %43 = load ptr, ptr @output, align 8, !tbaa !36
  %44 = icmp eq ptr %43, null
  br i1 %44, label %67, label %45

45:                                               ; preds = %41
  %46 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %43, ptr noundef nonnull @.str.15.124, ptr noundef nonnull @.str.6.127, ptr noundef nonnull @.str.7.128) #38
  %47 = load ptr, ptr @output, align 8, !tbaa !36
  %48 = icmp eq ptr %47, null
  br i1 %48, label %67, label %49

49:                                               ; preds = %45
  %50 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %47, ptr noundef nonnull @.str.15.124, ptr noundef nonnull @.str.8.129, ptr noundef nonnull %3) #38
  %51 = load ptr, ptr @output, align 8, !tbaa !36
  %52 = icmp eq ptr %51, null
  br i1 %52, label %67, label %53

53:                                               ; preds = %49
  %54 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %51, ptr noundef nonnull @.str.15.124, ptr noundef nonnull @.str.9.130, ptr noundef nonnull @.str.10.131) #38
  %55 = load ptr, ptr @output, align 8, !tbaa !36
  %56 = icmp eq ptr %55, null
  br i1 %56, label %67, label %57

57:                                               ; preds = %53
  %58 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %55, ptr noundef nonnull @.str.15.124, ptr noundef nonnull @.str.11.132, ptr noundef nonnull @.str.10.131) #38
  %59 = load ptr, ptr @output, align 8, !tbaa !36
  %60 = icmp eq ptr %59, null
  br i1 %60, label %67, label %61

61:                                               ; preds = %57
  %62 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %59, ptr noundef nonnull @.str.15.124, ptr noundef nonnull @.str.12.133, ptr noundef nonnull @.str.13.134) #38
  %63 = load ptr, ptr @output, align 8, !tbaa !36
  %64 = icmp eq ptr %63, null
  br i1 %64, label %67, label %65

65:                                               ; preds = %61
  %66 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %63, ptr noundef nonnull @.str.15.124, ptr noundef nonnull @.str.14.135, ptr noundef nonnull @.str.13.134) #38
  br label %67

67:                                               ; preds = %65, %61, %57, %53, %49, %45, %41, %14, %0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #39
  ret void
}

; Function Attrs: nounwind optsize
declare i64 @time(ptr noundef) local_unnamed_addr #18

; Function Attrs: nounwind optsize
declare ptr @localtime(ptr noundef) local_unnamed_addr #18

; Function Attrs: nofree nounwind optsize uwtable
define internal void @YAMLWriteString(ptr noundef %0, ptr noundef %1) #12 {
  %3 = load ptr, ptr @output, align 8, !tbaa !36
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %3, ptr noundef nonnull @.str.15.124, ptr noundef %0, ptr noundef %1) #38
  br label %7

7:                                                ; preds = %5, %2
  ret void
}

; Function Attrs: nofree nounwind optsize uwtable
define internal void @YAMLClose() #12 {
  %1 = load ptr, ptr @output, align 8, !tbaa !36
  %2 = icmp eq ptr %1, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %0
  %4 = tail call i32 @fclose(ptr noundef nonnull %1) #38
  br label %5

5:                                                ; preds = %3, %0
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: nofree nounwind optsize uwtable
define internal void @YAMLWriteInt(ptr noundef %0, i32 noundef %1) #12 {
  %3 = load ptr, ptr @output, align 8, !tbaa !36
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %3, ptr noundef nonnull @.str.16.142, ptr noundef %0, i32 noundef %1) #38
  br label %7

7:                                                ; preds = %5, %2
  ret void
}

attributes #0 = { mustprogress nounwind optsize willreturn memory(readwrite, argmem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { mustprogress nofree norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree nounwind }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #16 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #17 = { noreturn nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree nounwind optsize willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { nofree nounwind willreturn memory(argmem: read) }
attributes #22 = { mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { nounwind optsize memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { mustprogress nofree nounwind optsize willreturn memory(write, argmem: read, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { mustprogress nofree nounwind optsize willreturn memory(inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { mustprogress nofree nosync nounwind optsize willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { nofree nounwind optsize memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { nofree norecurse nosync nounwind optsize memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { mustprogress nounwind optsize willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #32 = { nofree nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #33 = { nofree nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #34 = { mustprogress nofree norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #35 = { nounwind optsize allocsize(0) }
attributes #36 = { nounwind optsize allocsize(0,1) }
attributes #37 = { nounwind optsize }
attributes #38 = { optsize }
attributes #39 = { nounwind }
attributes #40 = { noreturn nounwind optsize }
attributes #41 = { cold }
attributes #42 = { nounwind optsize willreturn memory(read) }
attributes #43 = { cold optsize }
attributes #44 = { nounwind optsize willreturn memory(none) }
attributes #45 = { nounwind optsize allocsize(1) }

!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3, !4, !5, !6}

!0 = !{!"clang version 17.0.6 (https://github.com/Casperento/llvm-project.git 9b0073551ece0d22bf3378af2b03e456a26031b6)"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 1, !"ThinLTO", i32 0}
!6 = !{i32 1, !"EnableSplitLTOUnit", i32 1}
!7 = !{!8, !12, i64 8}
!8 = !{!"BitfieldStruct", !9, i64 0, !12, i64 8}
!9 = !{!"int", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
!12 = !{!"any pointer", !10, i64 0}
!13 = !{!8, !9, i64 0}
!14 = !{!15, !9, i64 4}
!15 = !{!"NodeStruct", !9, i64 0, !9, i64 4, !12, i64 8, !9, i64 16, !10, i64 20, !12, i64 24, !12, i64 32, !12, i64 40, !9, i64 48, !9, i64 52}
!16 = !{!10, !10, i64 0}
!17 = !{!18, !12, i64 8}
!18 = !{!"SearchOptionsStruct", !10, i64 0, !19, i64 4, !19, i64 5, !19, i64 6, !12, i64 8, !10, i64 16}
!19 = !{!"_Bool", !10, i64 0}
!20 = !{!18, !10, i64 16}
!21 = !{!22, !12, i64 16}
!22 = !{!"ConfigurationStruct", !12, i64 0, !12, i64 8, !12, i64 16, !9, i64 24}
!23 = !{!22, !9, i64 24}
!24 = !{!25, !12, i64 0}
!25 = !{!"GraphStruct", !12, i64 0, !9, i64 8, !12, i64 16, !12, i64 24, !12, i64 32}
!26 = !{!25, !9, i64 8}
!27 = !{!25, !12, i64 16}
!28 = !{!25, !12, i64 24}
!29 = !{!30, !12, i64 0}
!30 = !{!"SearchDiagramStruct", !12, i64 0, !12, i64 8}
!31 = !{!30, !12, i64 8}
!32 = distinct !{!32, !33}
!33 = !{!"llvm.loop.mustprogress"}
!34 = !{!35, !12, i64 0}
!35 = !{!"NodeListStruct", !12, i64 0, !12, i64 8}
!36 = !{!12, !12, i64 0}
!37 = !{!15, !9, i64 0}
!38 = distinct !{!38, !33}
!39 = distinct !{!39, !33}
!40 = !{!41, !9, i64 0}
!41 = !{!"NodeVecVecStruct", !9, i64 0, !9, i64 4, !12, i64 8}
!42 = !{!41, !12, i64 8}
!43 = !{!44, !12, i64 8}
!44 = !{!"NodePtrVecStruct", !9, i64 0, !9, i64 4, !12, i64 8}
!45 = !{!44, !9, i64 0}
!46 = !{!15, !9, i64 16}
!47 = distinct !{!47, !33}
!48 = distinct !{!48, !33}
!49 = distinct !{!49, !33}
!50 = distinct !{!50, !33}
!51 = !{!15, !10, i64 20}
!52 = distinct !{!52, !33}
!53 = !{!15, !12, i64 40}
!54 = !{!55, !12, i64 8}
!55 = !{!"EdgeListStruct", !9, i64 0, !12, i64 8, !12, i64 16}
!56 = !{!55, !12, i64 16}
!57 = distinct !{!57, !33}
!58 = !{!55, !9, i64 0}
!59 = distinct !{!59, !33}
!60 = distinct !{!60, !33}
!61 = !{!15, !12, i64 8}
!62 = distinct !{!62, !33}
!63 = distinct !{!63, !33}
!64 = !{!18, !19, i64 6}
!65 = !{!18, !19, i64 5}
!66 = distinct !{!66, !33}
!67 = !{!18, !10, i64 0}
!68 = distinct !{!68, !33}
!69 = distinct !{!69, !33}
!70 = !{!15, !12, i64 32}
!71 = !{!35, !12, i64 8}
!72 = !{!15, !12, i64 24}
!73 = distinct !{!73, !33}
!74 = distinct !{!74, !33}
!75 = !{!15, !9, i64 48}
!76 = distinct !{!76, !33}
!77 = !{!78, !12, i64 8}
!78 = !{!"IntVectorStruct", !9, i64 0, !9, i64 4, !12, i64 8}
!79 = !{!9, !9, i64 0}
!80 = !{!78, !9, i64 0}
!81 = !{!15, !9, i64 52}
!82 = distinct !{!82, !33}
!83 = distinct !{!83, !33}
!84 = distinct !{!84, !33}
!85 = !{!86, !12, i64 8}
!86 = !{!"CharVectorStruct", !9, i64 0, !9, i64 4, !12, i64 8}
!87 = distinct !{!87, !33}
!88 = !{!89, !89, i64 0}
!89 = !{!"short", !10, i64 0}
!90 = distinct !{!90, !33}
!91 = distinct !{!91, !33}
!92 = !{!25, !12, i64 32}
!93 = distinct !{!93, !33}
!94 = distinct !{!94, !33}
!95 = distinct !{!95, !33}
!96 = distinct !{!96, !33}
!97 = distinct !{!97, !33}
!98 = !{!99, !9, i64 0}
!99 = !{!"SystemCallMapStruct", !9, i64 0, !9, i64 4, !12, i64 8}
!100 = distinct !{!100, !33}
!101 = distinct !{!101, !33}
!102 = distinct !{!102, !33}
!103 = !{!22, !12, i64 0}
!104 = distinct !{!104, !33}
!105 = !{!22, !12, i64 8}
!106 = distinct !{!106, !33}
!107 = distinct !{!107, !33}
!108 = distinct !{!108, !33}
!109 = distinct !{!109, !33}
!110 = distinct !{!110, !33}
!111 = distinct !{!111, !33}
!112 = !{!18, !19, i64 4}
!113 = !{i8 0, i8 2}
!114 = !{}
!115 = distinct !{!115, !33}
!116 = distinct !{!116, !33}
!117 = !{!99, !12, i64 8}
!118 = !{!119, !12, i64 0}
!119 = !{!"SystemCallMapElementStruct", !12, i64 0, !9, i64 8, !12, i64 16}
!120 = distinct !{!120, !33}
!121 = distinct !{!121, !33}
!122 = !{!119, !12, i64 16}
!123 = distinct !{!123, !33}
!124 = distinct !{!124, !33}
!125 = distinct !{!125, !33}
!126 = !{!127, !128, i64 16}
!127 = !{!"StatsStruct", !12, i64 0, !9, i64 8, !9, i64 12, !128, i64 16, !128, i64 24, !12, i64 32}
!128 = !{!"double", !10, i64 0}
!129 = !{!127, !128, i64 24}
!130 = !{!127, !12, i64 0}
!131 = !{!127, !9, i64 8}
!132 = !{!127, !9, i64 12}
!133 = !{!127, !12, i64 32}
!134 = distinct !{!134, !33}
!135 = distinct !{!135, !33}
!136 = distinct !{!136, !33}
!137 = distinct !{!137, !33}
!138 = !{!139, !12, i64 0}
!139 = !{!"EdgeReferencesStruct", !12, i64 0, !12, i64 8}
!140 = !{!139, !12, i64 8}
!141 = distinct !{!141, !33}
!142 = distinct !{!142, !33}
!143 = distinct !{!143, !33}
!144 = distinct !{!144, !33}
!145 = distinct !{!145, !33}
!146 = distinct !{!146, !33}
!147 = distinct !{!147, !33}
!148 = distinct !{!148, !33}
!149 = !{!119, !9, i64 8}
!150 = !{!99, !9, i64 4}
!151 = distinct !{!151, !33}
!152 = distinct !{!152, !33}
!153 = !{!78, !9, i64 4}
!154 = distinct !{!154, !33}
!155 = distinct !{!155, !33}
!156 = distinct !{!156, !33}
!157 = distinct !{!157, !33}
!158 = !{!86, !9, i64 0}
!159 = !{!86, !9, i64 4}
!160 = distinct !{!160, !33}
!161 = !{!44, !9, i64 4}
!162 = distinct !{!162, !33}
!163 = distinct !{!163, !33}
!164 = !{!41, !9, i64 4}
!165 = !{!166, !9, i64 20}
!166 = !{!"tm", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !9, i64 24, !9, i64 28, !9, i64 32, !167, i64 40, !12, i64 48}
!167 = !{!"long", !10, i64 0}
!168 = !{!166, !9, i64 16}
!169 = !{!166, !9, i64 12}
!170 = !{!166, !9, i64 8}
!171 = !{!166, !9, i64 4}
!172 = !{!166, !9, i64 0}
