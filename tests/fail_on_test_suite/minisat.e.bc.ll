; ModuleID = '/src/llvm-test-suite/build/MultiSource/Applications/minisat/minisat.e.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rusage = type { %struct.timeval, %struct.timeval, %union.anon, %union.anon, %union.anon, %union.anon, %union.anon, %union.anon, %union.anon, %union.anon, %union.anon, %union.anon, %union.anon, %union.anon, %union.anon, %union.anon }
%struct.timeval = type { i64, i64 }
%union.anon = type { i64 }
%class.Solver = type { %class.vec, %class.vec, double, double, double, i32, double, double, double, i8, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i8, %class.vec, %class.vec, double, %class.vec, double, %class.vec, %class.vec, %class.vec, %class.vec, %class.vec, %class.vec, %class.vec, %class.vec, i32, i32, i64, %class.vec, %class.Heap, double, double, i8, %class.vec, %class.vec, %class.vec, %class.vec }
%class.Heap = type { %"struct.Solver::VarOrderLt", %class.vec, %class.vec }
%"struct.Solver::VarOrderLt" = type { ptr }
%class.vec = type { ptr, i32, i32 }
%class.Lit = type { i32 }
%class.StreamBuffer = type { ptr, [1048576 x i8], i32, i32 }
%class.lbool = type { i8 }
%class.Clause = type { i32, %union.anon.19, [0 x %class.Lit] }
%union.anon.19 = type { float }

$_ZN12StreamBuffer15assureLookaheadEv = comdat any

$_ZN3vecI3LitE4pushERKS0_ = comdat any

$_ZN6Solver5solveEv = comdat any

$_ZN3vecIS_IP6ClauseEE5clearEb = comdat any

$_ZN3vecIS_IP6ClauseEE4pushEv = comdat any

$_ZN3vecIP6ClauseE4pushERKS1_ = comdat any

$_ZN3vecIcE4pushERKc = comdat any

$_ZN3vecIiE4pushERKi = comdat any

$_ZN3vecIdE4pushERKd = comdat any

$_ZN4HeapIN6Solver10VarOrderLtEE6insertEi = comdat any

$_ZN3vecIiE6growToEiRKi = comdat any

$_ZN3vecIiE4growEi = comdat any

$_Z4sortI3Lit16LessThan_defaultIS0_EEvPT_iT0_ = comdat any

$_ZN6ClauseC2I3vecI3LitEEERKT_b = comdat any

$_Z13selectionSortI3Lit16LessThan_defaultIS0_EEvPT_iT0_ = comdat any

$_ZN4HeapIN6Solver10VarOrderLtEE9removeMinEv = comdat any

$_ZN3vecI3LitE4pushEv = comdat any

$_ZN4HeapIN6Solver10VarOrderLtEE8decreaseEi = comdat any

$_ZNK3vecI3LitE6copyToERS1_ = comdat any

$_ZN3vecI3LitE6growToEi = comdat any

$_ZN3vecI3LitE4growEi = comdat any

$_Z4sortIP6Clause11reduceDB_ltEvPT_iT0_ = comdat any

$_Z13selectionSortIP6Clause11reduceDB_ltEvPT_iT0_ = comdat any

$_ZN4HeapIN6Solver10VarOrderLtEE6filterINS0_9VarFilterEEEvRKT_ = comdat any

$_ZN3vecI5lboolE6growToEi = comdat any

$_ZN3vecI5lboolE4growEi = comdat any

@llvm.global_ctors = appending global [0 x { i32, ptr, ptr }] zeroinitializer
@.str = private unnamed_addr constant [30 x i8] c"restarts              : %lld\0A\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"conflicts             : %-12lld\0A\00", align 1
@.str.6 = private unnamed_addr constant [53 x i8] c"decisions             : %-12lld   (%4.2f %% random)\0A\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"propagations          : %-12lld\0A\00", align 1
@.str.8 = private unnamed_addr constant [54 x i8] c"conflict literals     : %-12lld   (%4.2f %% deleted)\0A\00", align 1
@solver = internal global ptr null, align 8
@.str.9 = private unnamed_addr constant [113 x i8] c"USAGE: %s [options] <input-file> <result-output-file>\0A\0A  where input may be either in plain or gzipped DIMACS.\0A\0A\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"OPTIONS:\0A\0A\00", align 1
@.str.11 = private unnamed_addr constant [37 x i8] c"  -polarity-mode = {true,false,rnd}\0A\00", align 1
@.str.12 = private unnamed_addr constant [36 x i8] c"  -decay         = <num> [ 0 - 1 ]\0A\00", align 1
@.str.13 = private unnamed_addr constant [36 x i8] c"  -rnd-freq      = <num> [ 0 - 1 ]\0A\00", align 1
@.str.14 = private unnamed_addr constant [28 x i8] c"  -verbosity     = {0,1,2}\0A\00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"-polarity-mode=\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"rnd\00", align 1
@.str.20 = private unnamed_addr constant [33 x i8] c"ERROR! unknown polarity-mode %s\0A\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"-rnd-freq=\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"%lf\00", align 1
@.str.23 = private unnamed_addr constant [37 x i8] c"ERROR! illegal rnd-freq constant %s\0A\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"-decay=\00", align 1
@.str.25 = private unnamed_addr constant [34 x i8] c"ERROR! illegal decay constant %s\0A\00", align 1
@.str.26 = private unnamed_addr constant [12 x i8] c"-verbosity=\00", align 1
@.str.27 = private unnamed_addr constant [35 x i8] c"ERROR! illegal verbosity level %s\0A\00", align 1
@.str.28 = private unnamed_addr constant [3 x i8] c"-h\00", align 1
@.str.29 = private unnamed_addr constant [6 x i8] c"-help\00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"--help\00", align 1
@.str.31 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.32 = private unnamed_addr constant [24 x i8] c"ERROR! unknown flag %s\0A\00", align 1
@.str.33 = private unnamed_addr constant [26 x i8] c"This is MiniSat 2.0 beta\0A\00", align 1
@.str.34 = private unnamed_addr constant [63 x i8] c"Reading from standard input... Use '-h' or '--help' for help.\0A\00", align 1
@stdin = external local_unnamed_addr global ptr, align 8
@.str.35 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.36 = private unnamed_addr constant [32 x i8] c"ERROR! Could not open file: %s\0A\00", align 1
@.str.37 = private unnamed_addr constant [8 x i8] c"<stdin>\00", align 1
@.str.38 = private unnamed_addr constant [81 x i8] c"============================[ Problem Statistics ]=============================\0A\00", align 1
@.str.39 = private unnamed_addr constant [81 x i8] c"|                                                                             |\0A\00", align 1
@.str.40 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.41 = private unnamed_addr constant [28 x i8] c"Solved by unit propagation\0A\00", align 1
@.str.42 = private unnamed_addr constant [7 x i8] c"UNSAT\0A\00", align 1
@.str.43 = private unnamed_addr constant [15 x i8] c"UNSATISFIABLE\0A\00", align 1
@.str.44 = private unnamed_addr constant [13 x i8] c"SATISFIABLE\0A\00", align 1
@.str.45 = private unnamed_addr constant [5 x i8] c"SAT\0A\00", align 1
@.str.46 = private unnamed_addr constant [7 x i8] c"%s%s%d\00", align 1
@.str.47 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.48 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.49 = private unnamed_addr constant [4 x i8] c" 0\0A\00", align 1
@.str.50 = private unnamed_addr constant [15 x i8] c"/proc/%d/statm\00", align 1
@.str.51 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.52 = private unnamed_addr constant [6 x i8] c"p cnf\00", align 1
@.str.53 = private unnamed_addr constant [74 x i8] c"|  Number of variables:  %-12d                                         |\0A\00", align 1
@.str.54 = private unnamed_addr constant [74 x i8] c"|  Number of clauses:    %-12d                                         |\0A\00", align 1
@.str.55 = private unnamed_addr constant [34 x i8] c"PARSE ERROR! Unexpected char: %c\0A\00", align 1
@str = private unnamed_addr constant [14 x i8] c"UNSATISFIABLE\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@stderr = external local_unnamed_addr global ptr, align 8

@_ZN6SolverC1Ev = internal unnamed_addr alias void (ptr), ptr @_ZN6SolverC2Ev
@_ZN6SolverD1Ev = internal unnamed_addr alias void (ptr), ptr @_ZN6SolverD2Ev

; Function Attrs: mustprogress optsize uwtable
define internal void @_Z10printStatsR6Solver(ptr nocapture noundef nonnull readonly align 8 dereferenceable(536) %0) #0 {
  %2 = alloca [256 x i8], align 16
  %3 = alloca i32, align 4
  %4 = alloca %struct.rusage, align 8
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %4) #31
  %5 = call i32 @getrusage(i32 noundef 0, ptr noundef nonnull %4) #32
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %4) #31
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %2) #31
  %6 = call i32 @getpid() #32
  %7 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) @.str.50, i32 noundef %6) #32
  %8 = call noalias ptr @fopen(ptr noundef nonnull %2, ptr noundef nonnull @.str.35) #33
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #31
  %11 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef nonnull %8, ptr noundef nonnull @.str.51, ptr noundef nonnull %3) #33
  %12 = call i32 @fclose(ptr noundef nonnull %8) #33
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #31
  br label %13

13:                                               ; preds = %10, %1
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %2) #31
  %14 = load ptr, ptr @stdout, align 8, !tbaa !7
  %15 = call i32 @fflush(ptr noundef %14) #33
  %16 = load ptr, ptr @stderr, align 8, !tbaa !7
  %17 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 12
  %18 = load i64, ptr %17, align 8, !tbaa !11
  %19 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %16, ptr noundef nonnull @.str, i64 noundef %18) #34
  %20 = load ptr, ptr @stderr, align 8, !tbaa !7
  %21 = call i32 @fflush(ptr noundef %20) #33
  %22 = load ptr, ptr @stdout, align 8, !tbaa !7
  %23 = call i32 @fflush(ptr noundef %22) #33
  %24 = load ptr, ptr @stderr, align 8, !tbaa !7
  %25 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 16
  %26 = load i64, ptr %25, align 8, !tbaa !26
  %27 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %24, ptr noundef nonnull @.str.5, i64 noundef %26) #34
  %28 = load ptr, ptr @stderr, align 8, !tbaa !7
  %29 = call i32 @fflush(ptr noundef %28) #33
  %30 = load ptr, ptr @stdout, align 8, !tbaa !7
  %31 = call i32 @fflush(ptr noundef %30) #33
  %32 = load ptr, ptr @stderr, align 8, !tbaa !7
  %33 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 13
  %34 = load i64, ptr %33, align 8, !tbaa !27
  %35 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 14
  %36 = load i64, ptr %35, align 8, !tbaa !28
  %37 = uitofp i64 %36 to float
  %38 = fmul float %37, 1.000000e+02
  %39 = uitofp i64 %34 to float
  %40 = fdiv float %38, %39
  %41 = fpext float %40 to double
  %42 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %32, ptr noundef nonnull @.str.6, i64 noundef %34, double noundef %41) #34
  %43 = load ptr, ptr @stderr, align 8, !tbaa !7
  %44 = call i32 @fflush(ptr noundef %43) #33
  %45 = load ptr, ptr @stdout, align 8, !tbaa !7
  %46 = call i32 @fflush(ptr noundef %45) #33
  %47 = load ptr, ptr @stderr, align 8, !tbaa !7
  %48 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 15
  %49 = load i64, ptr %48, align 8, !tbaa !29
  %50 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %47, ptr noundef nonnull @.str.7, i64 noundef %49) #34
  %51 = load ptr, ptr @stderr, align 8, !tbaa !7
  %52 = call i32 @fflush(ptr noundef %51) #33
  %53 = load ptr, ptr @stdout, align 8, !tbaa !7
  %54 = call i32 @fflush(ptr noundef %53) #33
  %55 = load ptr, ptr @stderr, align 8, !tbaa !7
  %56 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 20
  %57 = load i64, ptr %56, align 8, !tbaa !30
  %58 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 19
  %59 = load i64, ptr %58, align 8, !tbaa !31
  %60 = sub i64 %59, %57
  %61 = mul i64 %60, 100
  %62 = uitofp i64 %61 to double
  %63 = uitofp i64 %59 to double
  %64 = fdiv double %62, %63
  %65 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %55, ptr noundef nonnull @.str.8, i64 noundef %57, double noundef %64) #34
  %66 = load ptr, ptr @stderr, align 8, !tbaa !7
  %67 = call i32 @fflush(ptr noundef %66) #33
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind optsize
declare i32 @getrusage(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind optsize
declare i32 @getpid() local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind optsize
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @__isoc99_fscanf(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind optsize uwtable
define internal void @_Z10printUsagePPc(ptr nocapture noundef readonly %0) #5 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !7
  %3 = tail call i32 @fflush(ptr noundef %2) #33
  %4 = load ptr, ptr @stderr, align 8, !tbaa !7
  %5 = load ptr, ptr %0, align 8, !tbaa !7
  %6 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str.9, ptr noundef %5) #34
  %7 = load ptr, ptr @stderr, align 8, !tbaa !7
  %8 = tail call i32 @fflush(ptr noundef %7) #33
  %9 = load ptr, ptr @stdout, align 8, !tbaa !7
  %10 = tail call i32 @fflush(ptr noundef %9) #33
  %11 = load ptr, ptr @stderr, align 8, !tbaa !7
  %12 = tail call i64 @fwrite(ptr nonnull @.str.10, i64 10, i64 1, ptr %11) #35
  %13 = load ptr, ptr @stderr, align 8, !tbaa !7
  %14 = tail call i32 @fflush(ptr noundef %13) #33
  %15 = load ptr, ptr @stdout, align 8, !tbaa !7
  %16 = tail call i32 @fflush(ptr noundef %15) #33
  %17 = load ptr, ptr @stderr, align 8, !tbaa !7
  %18 = tail call i64 @fwrite(ptr nonnull @.str.11, i64 36, i64 1, ptr %17) #35
  %19 = load ptr, ptr @stderr, align 8, !tbaa !7
  %20 = tail call i32 @fflush(ptr noundef %19) #33
  %21 = load ptr, ptr @stdout, align 8, !tbaa !7
  %22 = tail call i32 @fflush(ptr noundef %21) #33
  %23 = load ptr, ptr @stderr, align 8, !tbaa !7
  %24 = tail call i64 @fwrite(ptr nonnull @.str.12, i64 35, i64 1, ptr %23) #35
  %25 = load ptr, ptr @stderr, align 8, !tbaa !7
  %26 = tail call i32 @fflush(ptr noundef %25) #33
  %27 = load ptr, ptr @stdout, align 8, !tbaa !7
  %28 = tail call i32 @fflush(ptr noundef %27) #33
  %29 = load ptr, ptr @stderr, align 8, !tbaa !7
  %30 = tail call i64 @fwrite(ptr nonnull @.str.13, i64 35, i64 1, ptr %29) #35
  %31 = load ptr, ptr @stderr, align 8, !tbaa !7
  %32 = tail call i32 @fflush(ptr noundef %31) #33
  %33 = load ptr, ptr @stdout, align 8, !tbaa !7
  %34 = tail call i32 @fflush(ptr noundef %33) #33
  %35 = load ptr, ptr @stderr, align 8, !tbaa !7
  %36 = tail call i64 @fwrite(ptr nonnull @.str.14, i64 27, i64 1, ptr %35) #35
  %37 = load ptr, ptr @stderr, align 8, !tbaa !7
  %38 = tail call i32 @fflush(ptr noundef %37) #33
  %39 = load ptr, ptr @stdout, align 8, !tbaa !7
  %40 = tail call i32 @fflush(ptr noundef %39) #33
  %41 = load ptr, ptr @stderr, align 8, !tbaa !7
  %42 = tail call i32 @fputc(i32 10, ptr %41)
  %43 = load ptr, ptr @stderr, align 8, !tbaa !7
  %44 = tail call i32 @fflush(ptr noundef %43) #33
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal noalias noundef ptr @_Z9hasPrefixPKcS0_(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #7 {
  %3 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #36
  %4 = shl i64 %3, 32
  %5 = ashr exact i64 %4, 32
  %6 = tail call i32 @strncmp(ptr noundef %0, ptr noundef %1, i64 noundef %5) #36
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = getelementptr inbounds i8, ptr %0, i64 %5
  %10 = tail call noalias ptr @strdup(ptr noundef %9) #32
  br label %11

11:                                               ; preds = %8, %2
  %12 = phi ptr [ %10, %8 ], [ null, %2 ]
  ret ptr %12
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare noalias ptr @strdup(ptr nocapture noundef readonly) local_unnamed_addr #9

; Function Attrs: norecurse noreturn optsize uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nocapture noundef %1) #10 personality ptr @__gxx_personality_v0 {
  %3 = alloca %class.Lit, align 4
  %4 = alloca %class.vec, align 8
  %5 = alloca %struct.rusage, align 8
  %6 = alloca %class.Solver, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i16, align 2
  %11 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 536, ptr nonnull %6) #31
  call void @_ZN6SolverC1Ev(ptr noundef nonnull align 8 dereferenceable(536) %6) #33
  %12 = getelementptr inbounds %class.Solver, ptr %6, i64 0, i32 11
  store i32 1, ptr %12, align 8, !tbaa !32
  %13 = icmp sgt i32 %0, 0
  br i1 %13, label %14, label %133

14:                                               ; preds = %2
  %15 = getelementptr inbounds %class.Solver, ptr %6, i64 0, i32 10
  %16 = getelementptr inbounds %class.Solver, ptr %6, i64 0, i32 4
  %17 = getelementptr inbounds %class.Solver, ptr %6, i64 0, i32 2
  %18 = zext i32 %0 to i64
  br label %19

19:                                               ; preds = %129, %14
  %20 = phi i64 [ 0, %14 ], [ %131, %129 ]
  %21 = phi i32 [ 0, %14 ], [ %130, %129 ]
  %22 = getelementptr inbounds ptr, ptr %1, i64 %20
  %23 = load ptr, ptr %22, align 8, !tbaa !7
  %24 = call noundef ptr @_Z9hasPrefixPKcS0_(ptr noundef %23, ptr noundef nonnull @.str.16) #33
  %25 = icmp eq ptr %24, null
  br i1 %25, label %45, label %26

26:                                               ; preds = %19
  %27 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %24, ptr noundef nonnull dereferenceable(5) @.str.17) #36
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  store i32 0, ptr %15, align 4, !tbaa !33
  br label %129

30:                                               ; preds = %26
  %31 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %24, ptr noundef nonnull dereferenceable(6) @.str.18) #36
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  store i32 1, ptr %15, align 4, !tbaa !33
  br label %129

34:                                               ; preds = %30
  %35 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %24, ptr noundef nonnull dereferenceable(4) @.str.19) #36
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  store i32 3, ptr %15, align 4, !tbaa !33
  br label %129

38:                                               ; preds = %34
  %.lcssa2 = phi ptr [ %24, %34 ]
  %39 = load ptr, ptr @stdout, align 8, !tbaa !7
  %40 = call i32 @fflush(ptr noundef %39) #33
  %41 = load ptr, ptr @stderr, align 8, !tbaa !7
  %42 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %41, ptr noundef nonnull @.str.20, ptr noundef nonnull %.lcssa2) #34
  %43 = load ptr, ptr @stderr, align 8, !tbaa !7
  %44 = call i32 @fflush(ptr noundef %43) #33
  call void @exit(i32 noundef 0) #37
  unreachable

45:                                               ; preds = %19
  %46 = call noundef ptr @_Z9hasPrefixPKcS0_(ptr noundef %23, ptr noundef nonnull @.str.21) #33
  %47 = icmp eq ptr %46, null
  br i1 %47, label %64, label %48

48:                                               ; preds = %45
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #31
  %49 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %46, ptr noundef nonnull @.str.22, ptr noundef nonnull %7) #32
  %50 = icmp slt i32 %49, 1
  %51 = load double, ptr %7, align 8
  %52 = fcmp olt double %51, 0.000000e+00
  %53 = select i1 %50, i1 true, i1 %52
  %54 = fcmp ogt double %51, 1.000000e+00
  %55 = select i1 %53, i1 true, i1 %54
  br i1 %55, label %56, label %63

56:                                               ; preds = %48
  %.lcssa14 = phi ptr [ %46, %48 ]
  %57 = load ptr, ptr @stdout, align 8, !tbaa !7
  %58 = call i32 @fflush(ptr noundef %57) #33
  %59 = load ptr, ptr @stderr, align 8, !tbaa !7
  %60 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %59, ptr noundef nonnull @.str.23, ptr noundef nonnull %.lcssa14) #34
  %61 = load ptr, ptr @stderr, align 8, !tbaa !7
  %62 = call i32 @fflush(ptr noundef %61) #33
  call void @exit(i32 noundef 0) #37
  unreachable

63:                                               ; preds = %48
  store double %51, ptr %16, align 8, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #31
  br label %129

64:                                               ; preds = %45
  %65 = call noundef ptr @_Z9hasPrefixPKcS0_(ptr noundef %23, ptr noundef nonnull @.str.24) #33
  %66 = icmp eq ptr %65, null
  br i1 %66, label %84, label %67

67:                                               ; preds = %64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #31
  %68 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %65, ptr noundef nonnull @.str.22, ptr noundef nonnull %8) #32
  %69 = icmp slt i32 %68, 1
  %70 = load double, ptr %8, align 8
  %71 = fcmp ole double %70, 0.000000e+00
  %72 = select i1 %69, i1 true, i1 %71
  %73 = fcmp ogt double %70, 1.000000e+00
  %74 = select i1 %72, i1 true, i1 %73
  br i1 %74, label %75, label %82

75:                                               ; preds = %67
  %.lcssa19 = phi ptr [ %65, %67 ]
  %76 = load ptr, ptr @stdout, align 8, !tbaa !7
  %77 = call i32 @fflush(ptr noundef %76) #33
  %78 = load ptr, ptr @stderr, align 8, !tbaa !7
  %79 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %78, ptr noundef nonnull @.str.25, ptr noundef nonnull %.lcssa19) #34
  %80 = load ptr, ptr @stderr, align 8, !tbaa !7
  %81 = call i32 @fflush(ptr noundef %80) #33
  call void @exit(i32 noundef 0) #37
  unreachable

82:                                               ; preds = %67
  %83 = fdiv double 1.000000e+00, %70
  store double %83, ptr %17, align 8, !tbaa !35
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #31
  br label %129

84:                                               ; preds = %64
  %85 = call noundef ptr @_Z9hasPrefixPKcS0_(ptr noundef %23, ptr noundef nonnull @.str.26) #33
  %86 = icmp eq ptr %85, null
  br i1 %86, label %103, label %87

87:                                               ; preds = %84
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #31
  %88 = call i64 @strtol(ptr noundef nonnull %85, ptr noundef nonnull %9, i32 noundef 10) #32
  %89 = trunc i64 %88 to i32
  %90 = load ptr, ptr %9, align 8, !tbaa !7
  %91 = icmp eq ptr %90, %85
  br i1 %91, label %95, label %92

92:                                               ; preds = %87
  %93 = load i8, ptr %90, align 1, !tbaa !36
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %102, label %95

95:                                               ; preds = %92, %87
  %.lcssa23 = phi ptr [ %85, %92 ], [ %85, %87 ]
  %96 = load ptr, ptr @stdout, align 8, !tbaa !7
  %97 = call i32 @fflush(ptr noundef %96) #33
  %98 = load ptr, ptr @stderr, align 8, !tbaa !7
  %99 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %98, ptr noundef nonnull @.str.27, ptr noundef nonnull %.lcssa23) #34
  %100 = load ptr, ptr @stderr, align 8, !tbaa !7
  %101 = call i32 @fflush(ptr noundef %100) #33
  call void @exit(i32 noundef 0) #37
  unreachable

102:                                              ; preds = %92
  store i32 %89, ptr %12, align 8, !tbaa !32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #31
  br label %129

103:                                              ; preds = %84
  %104 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %23, ptr noundef nonnull dereferenceable(3) @.str.28) #36
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %112, label %106

106:                                              ; preds = %103
  %107 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %23, ptr noundef nonnull dereferenceable(6) @.str.29) #36
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %112, label %109

109:                                              ; preds = %106
  %110 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %23, ptr noundef nonnull dereferenceable(7) @.str.30) #36
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %109, %106, %103
  call void @_Z10printUsagePPc(ptr noundef nonnull %1) #33
  call void @exit(i32 noundef 0) #37
  unreachable

113:                                              ; preds = %109
  %114 = load i8, ptr %23, align 1
  %115 = icmp eq i8 %114, 45
  br i1 %115, label %116, label %125

116:                                              ; preds = %113
  %.lcssa13 = phi i64 [ %20, %113 ]
  %117 = getelementptr inbounds ptr, ptr %1, i64 %.lcssa13
  %118 = load ptr, ptr @stdout, align 8, !tbaa !7
  %119 = call i32 @fflush(ptr noundef %118) #33
  %120 = load ptr, ptr @stderr, align 8, !tbaa !7
  %121 = load ptr, ptr %117, align 8, !tbaa !7
  %122 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %120, ptr noundef nonnull @.str.32, ptr noundef %121) #34
  %123 = load ptr, ptr @stderr, align 8, !tbaa !7
  %124 = call i32 @fflush(ptr noundef %123) #33
  call void @exit(i32 noundef 0) #37
  unreachable

125:                                              ; preds = %113
  %126 = add nsw i32 %21, 1
  %127 = sext i32 %21 to i64
  %128 = getelementptr inbounds ptr, ptr %1, i64 %127
  store ptr %23, ptr %128, align 8, !tbaa !7
  br label %129

129:                                              ; preds = %125, %102, %82, %63, %37, %33, %29
  %130 = phi i32 [ %21, %29 ], [ %21, %33 ], [ %21, %37 ], [ %21, %63 ], [ %21, %82 ], [ %21, %102 ], [ %126, %125 ]
  %131 = add nuw nsw i64 %20, 1
  %132 = icmp eq i64 %131, %18
  br i1 %132, label %133, label %19, !llvm.loop !37

133:                                              ; preds = %129, %2
  %134 = phi i32 [ 0, %2 ], [ %130, %129 ]
  %135 = load ptr, ptr @stdout, align 8, !tbaa !7
  %136 = call i32 @fflush(ptr noundef %135) #33
  %137 = load ptr, ptr @stderr, align 8, !tbaa !7
  %138 = call i64 @fwrite(ptr nonnull @.str.33, i64 25, i64 1, ptr %137) #35
  %139 = load ptr, ptr @stderr, align 8, !tbaa !7
  %140 = call i32 @fflush(ptr noundef %139) #33
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %10) #31
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %11) #31
  call void asm sideeffect "fnstcw $0", "=*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i16) %10) #31, !srcloc !39
  %141 = load i16, ptr %10, align 2, !tbaa !40
  %142 = and i16 %141, -769
  %143 = or i16 %142, 512
  store i16 %143, ptr %11, align 2, !tbaa !40
  call void asm sideeffect "fldcw $0", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i16) %11) #31, !srcloc !42
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %5) #31
  %144 = call i32 @getrusage(i32 noundef 0, ptr noundef nonnull %5) #32
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %5) #31
  store ptr %6, ptr @solver, align 8, !tbaa !7
  %145 = icmp eq i32 %134, 1
  br i1 %145, label %146, label %154

146:                                              ; preds = %133
  %147 = load ptr, ptr @stdout, align 8, !tbaa !7
  %148 = call i32 @fflush(ptr noundef %147) #33
  %149 = load ptr, ptr @stderr, align 8, !tbaa !7
  %150 = call i64 @fwrite(ptr nonnull @.str.34, i64 62, i64 1, ptr %149) #35
  %151 = load ptr, ptr @stderr, align 8, !tbaa !7
  %152 = call i32 @fflush(ptr noundef %151) #33
  %153 = load ptr, ptr @stdin, align 8, !tbaa !7
  br label %158

154:                                              ; preds = %133
  %155 = getelementptr inbounds ptr, ptr %1, i64 1
  %156 = load ptr, ptr %155, align 8, !tbaa !7
  %157 = call noalias ptr @fopen(ptr noundef %156, ptr noundef nonnull @.str.35) #33
  br label %158

158:                                              ; preds = %154, %146
  %159 = phi ptr [ %153, %146 ], [ %157, %154 ]
  %160 = icmp eq ptr %159, null
  %161 = load ptr, ptr @stdout, align 8, !tbaa !7
  %162 = call i32 @fflush(ptr noundef %161) #33
  %163 = load ptr, ptr @stderr, align 8, !tbaa !7
  br i1 %160, label %164, label %175

164:                                              ; preds = %158
  br i1 %145, label %168, label %165

165:                                              ; preds = %164
  %166 = getelementptr inbounds ptr, ptr %1, i64 1
  %167 = load ptr, ptr %166, align 8, !tbaa !7
  br label %168

168:                                              ; preds = %165, %164
  %169 = phi ptr [ %167, %165 ], [ @.str.37, %164 ]
  %170 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %163, ptr noundef nonnull @.str.36, ptr noundef %169) #34
  %171 = load ptr, ptr @stderr, align 8, !tbaa !7
  %172 = call i32 @fflush(ptr noundef %171) #33
  call void @exit(i32 noundef 1) #37
  unreachable

173:                                              ; preds = %175
  %174 = landingpad { ptr, i32 }
          cleanup
  br label %403

175:                                              ; preds = %158
  %176 = call i64 @fwrite(ptr nonnull @.str.38, i64 80, i64 1, ptr %163) #35
  %177 = load ptr, ptr @stderr, align 8, !tbaa !7
  %178 = call i32 @fflush(ptr noundef %177) #33
  %179 = load ptr, ptr @stdout, align 8, !tbaa !7
  %180 = call i32 @fflush(ptr noundef %179) #33
  %181 = load ptr, ptr @stderr, align 8, !tbaa !7
  %182 = call i64 @fwrite(ptr nonnull @.str.39, i64 80, i64 1, ptr %181) #35
  %183 = load ptr, ptr @stderr, align 8, !tbaa !7
  %184 = call i32 @fflush(ptr noundef %183) #33
  %185 = invoke noalias noundef nonnull dereferenceable(1048592) ptr @_Znwm(i64 noundef 1048592) #38
          to label %186 unwind label %173

186:                                              ; preds = %175
  store ptr %159, ptr %185, align 8, !tbaa !43
  %187 = getelementptr inbounds %class.StreamBuffer, ptr %185, i64 0, i32 2
  store i32 0, ptr %187, align 8, !tbaa !45
  %188 = getelementptr inbounds %class.StreamBuffer, ptr %185, i64 0, i32 3
  store i32 0, ptr %188, align 4, !tbaa !46
  invoke void @_ZN12StreamBuffer15assureLookaheadEv(ptr noundef nonnull align 8 dereferenceable(1048592) %185) #33
          to label %189 unwind label %325

189:                                              ; preds = %186
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %190 = getelementptr inbounds %class.vec, ptr %4, i64 0, i32 1
  %191 = getelementptr inbounds %class.Solver, ptr %6, i64 0, i32 28, i32 1
  br label %192

192:                                              ; preds = %314, %189
  invoke fastcc void @_ZL14skipWhitespaceI12StreamBufferEvRT_(ptr noundef nonnull align 8 dereferenceable(1048592) %185) #33
          to label %193 unwind label %209

193:                                              ; preds = %192
  %194 = load i32, ptr %187, align 8, !tbaa !45
  %195 = load i32, ptr %188, align 4, !tbaa !46
  %196 = icmp slt i32 %194, %195
  br i1 %196, label %197, label %315

197:                                              ; preds = %193
  %198 = sext i32 %194 to i64
  %199 = getelementptr inbounds %class.StreamBuffer, ptr %185, i64 0, i32 1, i64 %198
  %200 = load i8, ptr %199, align 1, !tbaa !36
  switch i8 %200, label %287 [
    i8 -1, label %315
    i8 112, label %211
    i8 99, label %274
  ]

201:                                              ; preds = %300
  %202 = landingpad { ptr, i32 }
          cleanup
  br label %319

203:                                              ; preds = %227
  %204 = landingpad { ptr, i32 }
          cleanup
  br label %319

205:                                              ; preds = %281
  %206 = landingpad { ptr, i32 }
          cleanup
  br label %319

207:                                              ; preds = %305, %292
  %208 = landingpad { ptr, i32 }
          cleanup
  br label %319

209:                                              ; preds = %312, %279, %192
  %210 = landingpad { ptr, i32 }
          cleanup
  br label %319

211:                                              ; preds = %229, %197
  %212 = phi i1 [ %232, %229 ], [ false, %197 ]
  %213 = phi i8 [ %231, %229 ], [ %200, %197 ]
  %214 = phi ptr [ %230, %229 ], [ @.str.52, %197 ]
  %215 = sext i8 %213 to i32
  %216 = load i32, ptr %187, align 8, !tbaa !45
  %217 = load i32, ptr %188, align 4, !tbaa !46
  %218 = icmp slt i32 %216, %217
  br i1 %218, label %219, label %224

219:                                              ; preds = %211
  %220 = sext i32 %216 to i64
  %221 = getelementptr inbounds %class.StreamBuffer, ptr %185, i64 0, i32 1, i64 %220
  %222 = load i8, ptr %221, align 1, !tbaa !36
  %223 = sext i8 %222 to i32
  br label %224

224:                                              ; preds = %219, %211
  %225 = phi i32 [ %223, %219 ], [ -1, %211 ]
  %226 = icmp eq i32 %225, %215
  br i1 %226, label %227, label %234

227:                                              ; preds = %224
  %228 = add nsw i32 %216, 1
  store i32 %228, ptr %187, align 8, !tbaa !45
  invoke void @_ZN12StreamBuffer15assureLookaheadEv(ptr noundef nonnull align 8 dereferenceable(1048592) %185) #33
          to label %229 unwind label %203

229:                                              ; preds = %227
  %230 = getelementptr inbounds i8, ptr %214, i64 1
  %231 = load i8, ptr %230, align 1, !tbaa !36
  %232 = icmp eq i8 %231, 0
  %233 = icmp eq ptr %230, getelementptr inbounds ([6 x i8], ptr @.str.52, i64 0, i64 5)
  br i1 %233, label %234, label %211, !llvm.loop !47

234:                                              ; preds = %229, %224
  %235 = phi i1 [ %232, %229 ], [ %212, %224 ]
  br i1 %235, label %236, label %257

236:                                              ; preds = %234
  %237 = invoke fastcc noundef i32 @_ZL8parseIntI12StreamBufferEiRT_(ptr noundef nonnull align 8 dereferenceable(1048592) %185) #33
          to label %238 unwind label %253

238:                                              ; preds = %236
  %239 = invoke fastcc noundef i32 @_ZL8parseIntI12StreamBufferEiRT_(ptr noundef nonnull align 8 dereferenceable(1048592) %185) #33
          to label %240 unwind label %255

240:                                              ; preds = %238
  %241 = load ptr, ptr @stdout, align 8, !tbaa !7
  %242 = call i32 @fflush(ptr noundef %241) #33
  %243 = load ptr, ptr @stderr, align 8, !tbaa !7
  %244 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %243, ptr noundef nonnull @.str.53, i32 noundef %237) #34
  %245 = load ptr, ptr @stderr, align 8, !tbaa !7
  %246 = call i32 @fflush(ptr noundef %245) #33
  %247 = load ptr, ptr @stdout, align 8, !tbaa !7
  %248 = call i32 @fflush(ptr noundef %247) #33
  %249 = load ptr, ptr @stderr, align 8, !tbaa !7
  %250 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %249, ptr noundef nonnull @.str.54, i32 noundef %239) #34
  %251 = load ptr, ptr @stderr, align 8, !tbaa !7
  %252 = call i32 @fflush(ptr noundef %251) #33
  br label %314

253:                                              ; preds = %236
  %254 = landingpad { ptr, i32 }
          cleanup
  br label %319

255:                                              ; preds = %238
  %256 = landingpad { ptr, i32 }
          cleanup
  br label %319

257:                                              ; preds = %234
  %258 = load ptr, ptr @stdout, align 8, !tbaa !7
  %259 = call i32 @fflush(ptr noundef %258) #33
  %260 = load ptr, ptr @stderr, align 8, !tbaa !7
  %261 = load i32, ptr %187, align 8, !tbaa !45
  %262 = load i32, ptr %188, align 4, !tbaa !46
  %263 = icmp slt i32 %261, %262
  br i1 %263, label %264, label %269

264:                                              ; preds = %257
  %265 = sext i32 %261 to i64
  %266 = getelementptr inbounds %class.StreamBuffer, ptr %185, i64 0, i32 1, i64 %265
  %267 = load i8, ptr %266, align 1, !tbaa !36
  %268 = sext i8 %267 to i32
  br label %269

269:                                              ; preds = %264, %257
  %270 = phi i32 [ %268, %264 ], [ -1, %257 ]
  %271 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %260, ptr noundef nonnull @.str.55, i32 noundef %270) #34
  %272 = load ptr, ptr @stderr, align 8, !tbaa !7
  %273 = call i32 @fflush(ptr noundef %272) #33
  call void @exit(i32 noundef 3) #37
  unreachable

274:                                              ; preds = %283, %197
  %275 = phi i32 [ %284, %283 ], [ %194, %197 ]
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds %class.StreamBuffer, ptr %185, i64 0, i32 1, i64 %276
  %278 = load i8, ptr %277, align 1, !tbaa !36
  switch i8 %278, label %281 [
    i8 -1, label %314
    i8 0, label %314
    i8 10, label %279
  ]

279:                                              ; preds = %274
  %.lcssa = phi i32 [ %275, %274 ]
  %280 = add nsw i32 %.lcssa, 1
  store i32 %280, ptr %187, align 8, !tbaa !45
  invoke void @_ZN12StreamBuffer15assureLookaheadEv(ptr noundef nonnull align 8 dereferenceable(1048592) %185) #33
          to label %314 unwind label %209

281:                                              ; preds = %274
  %282 = add nsw i32 %275, 1
  store i32 %282, ptr %187, align 8, !tbaa !45
  invoke void @_ZN12StreamBuffer15assureLookaheadEv(ptr noundef nonnull align 8 dereferenceable(1048592) %185) #33
          to label %283 unwind label %205

283:                                              ; preds = %281
  %284 = load i32, ptr %187, align 8, !tbaa !45
  %285 = load i32, ptr %188, align 4, !tbaa !46
  %286 = icmp slt i32 %284, %285
  br i1 %286, label %274, label %314, !llvm.loop !48

287:                                              ; preds = %197
  %288 = load ptr, ptr %4, align 8, !tbaa !49
  %289 = icmp eq ptr %288, null
  br i1 %289, label %291, label %290

290:                                              ; preds = %287
  store i32 0, ptr %190, align 8, !tbaa !50
  br label %291

291:                                              ; preds = %290, %287
  br label %292

292:                                              ; preds = %311, %291
  %293 = invoke fastcc noundef i32 @_ZL8parseIntI12StreamBufferEiRT_(ptr noundef nonnull align 8 dereferenceable(1048592) %185) #33
          to label %294 unwind label %207

294:                                              ; preds = %292
  %295 = icmp eq i32 %293, 0
  br i1 %295, label %312, label %296

296:                                              ; preds = %294
  %297 = call i32 @llvm.abs.i32(i32 %293, i1 true)
  %298 = load i32, ptr %191, align 8, !tbaa !51
  %299 = icmp sgt i32 %297, %298
  br i1 %299, label %300, label %305

300:                                              ; preds = %302, %296
  %301 = invoke noundef i32 @_ZN6Solver6newVarEbb(ptr noundef nonnull align 8 dereferenceable(536) %6, i1 noundef zeroext true, i1 noundef zeroext true) #33
          to label %302 unwind label %201

302:                                              ; preds = %300
  %303 = load i32, ptr %191, align 8, !tbaa !51
  %304 = icmp sgt i32 %297, %303
  br i1 %304, label %300, label %305, !llvm.loop !52

305:                                              ; preds = %302, %296
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #31
  %306 = icmp slt i32 %293, 1
  %307 = shl nuw i32 %297, 1
  %308 = add i32 %307, -2
  %309 = zext i1 %306 to i32
  %310 = or i32 %308, %309
  store i32 %310, ptr %3, align 4
  invoke void @_ZN3vecI3LitE4pushERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(4) %3) #33
          to label %311 unwind label %207

311:                                              ; preds = %305
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #31
  br label %292, !llvm.loop !53

312:                                              ; preds = %294
  %313 = invoke noundef zeroext i1 @_ZN6Solver9addClauseER3vecI3LitE(ptr noundef nonnull align 8 dereferenceable(536) %6, ptr noundef nonnull align 8 dereferenceable(16) %4) #33
          to label %314 unwind label %209

314:                                              ; preds = %312, %283, %279, %274, %274, %240
  br label %192, !llvm.loop !54

315:                                              ; preds = %197, %193
  %316 = load ptr, ptr %4, align 8, !tbaa !49
  %317 = icmp eq ptr %316, null
  br i1 %317, label %327, label %318

318:                                              ; preds = %315
  store i32 0, ptr %190, align 8, !tbaa !50
  call void @free(ptr noundef nonnull %316) #32
  br label %327

319:                                              ; preds = %255, %253, %209, %207, %205, %203, %201
  %320 = phi { ptr, i32 } [ %256, %255 ], [ %254, %253 ], [ %202, %201 ], [ %204, %203 ], [ %206, %205 ], [ %208, %207 ], [ %210, %209 ]
  %321 = load ptr, ptr %4, align 8, !tbaa !49
  %322 = icmp eq ptr %321, null
  br i1 %322, label %324, label %323

323:                                              ; preds = %319
  store i32 0, ptr %190, align 8, !tbaa !50
  call void @free(ptr noundef nonnull %321) #32
  br label %324

324:                                              ; preds = %323, %319
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #31
  br label %403

325:                                              ; preds = %186
  %326 = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %185) #39
  br label %403

327:                                              ; preds = %318, %315
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #31
  call void @_ZdlPv(ptr noundef nonnull %185) #39
  %328 = call i32 @fclose(ptr noundef nonnull %159) #33
  %329 = icmp sgt i32 %134, 2
  br i1 %329, label %330, label %334

330:                                              ; preds = %327
  %331 = getelementptr inbounds ptr, ptr %1, i64 2
  %332 = load ptr, ptr %331, align 8, !tbaa !7
  %333 = call noalias ptr @fopen(ptr noundef %332, ptr noundef nonnull @.str.40) #33
  br label %334

334:                                              ; preds = %330, %327
  %335 = phi ptr [ %333, %330 ], [ null, %327 ]
  %336 = invoke noundef zeroext i1 @_ZN6Solver8simplifyEv(ptr noundef nonnull align 8 dereferenceable(536) %6) #33
          to label %337 unwind label %349

337:                                              ; preds = %334
  br i1 %336, label %353, label %338

338:                                              ; preds = %337
  %339 = load ptr, ptr @stdout, align 8, !tbaa !7
  %340 = call i32 @fflush(ptr noundef %339) #33
  %341 = load ptr, ptr @stderr, align 8, !tbaa !7
  %342 = call i64 @fwrite(ptr nonnull @.str.41, i64 27, i64 1, ptr %341) #35
  %343 = load ptr, ptr @stderr, align 8, !tbaa !7
  %344 = call i32 @fflush(ptr noundef %343) #33
  %345 = icmp eq ptr %335, null
  br i1 %345, label %351, label %346

346:                                              ; preds = %338
  %347 = call i64 @fwrite(ptr nonnull @.str.42, i64 6, i64 1, ptr nonnull %335)
  %348 = call i32 @fclose(ptr noundef nonnull %335) #33
  br label %351

349:                                              ; preds = %334
  %350 = landingpad { ptr, i32 }
          cleanup
  br label %403

351:                                              ; preds = %346, %338
  %352 = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  call void @exit(i32 noundef 20) #37
  unreachable

353:                                              ; preds = %337
  %354 = invoke noundef zeroext i1 @_ZN6Solver5solveEv(ptr noundef nonnull align 8 dereferenceable(536) %6) #33
          to label %355 unwind label %371

355:                                              ; preds = %353
  invoke void @_Z10printStatsR6Solver(ptr noundef nonnull align 8 dereferenceable(536) %6) #33
          to label %356 unwind label %371

356:                                              ; preds = %355
  %357 = load ptr, ptr @stdout, align 8, !tbaa !7
  %358 = call i32 @fflush(ptr noundef %357) #33
  %359 = load ptr, ptr @stderr, align 8, !tbaa !7
  %360 = call i32 @fputc(i32 10, ptr %359)
  %361 = load ptr, ptr @stderr, align 8, !tbaa !7
  %362 = call i32 @fflush(ptr noundef %361) #33
  %363 = select i1 %354, ptr @.str.44, ptr @.str.43
  %364 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) %363) #33
  %365 = icmp eq ptr %335, null
  br i1 %365, label %401, label %366

366:                                              ; preds = %356
  br i1 %354, label %367, label %396

367:                                              ; preds = %366
  %368 = call i64 @fwrite(ptr nonnull @.str.45, i64 4, i64 1, ptr nonnull %335)
  %369 = load i32, ptr %191, align 8, !tbaa !51
  %370 = icmp sgt i32 %369, 0
  br i1 %370, label %373, label %396

371:                                              ; preds = %355, %353
  %372 = landingpad { ptr, i32 }
          cleanup
  br label %403

373:                                              ; preds = %391, %367
  %374 = phi i32 [ %393, %391 ], [ %369, %367 ]
  %375 = phi i64 [ %392, %391 ], [ 0, %367 ]
  %376 = load ptr, ptr %6, align 8, !tbaa !55
  %377 = getelementptr inbounds %class.lbool, ptr %376, i64 %375
  %378 = load i8, ptr %377, align 1, !tbaa !56
  %379 = icmp eq i8 %378, 0
  br i1 %379, label %380, label %382

380:                                              ; preds = %373
  %381 = add nuw nsw i64 %375, 1
  br label %391

382:                                              ; preds = %373
  %383 = icmp eq i64 %375, 0
  %384 = select i1 %383, ptr @.str.47, ptr @.str.48
  %385 = icmp eq i8 %378, 1
  %386 = select i1 %385, ptr @.str.47, ptr @.str.31
  %387 = add nuw nsw i64 %375, 1
  %388 = trunc i64 %387 to i32
  %389 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %335, ptr noundef nonnull @.str.46, ptr noundef nonnull %384, ptr noundef nonnull %386, i32 noundef %388) #33
  %390 = load i32, ptr %191, align 8, !tbaa !51
  br label %391

391:                                              ; preds = %382, %380
  %392 = phi i64 [ %381, %380 ], [ %387, %382 ]
  %393 = phi i32 [ %374, %380 ], [ %390, %382 ]
  %394 = sext i32 %393 to i64
  %395 = icmp slt i64 %392, %394
  br i1 %395, label %373, label %396, !llvm.loop !58

396:                                              ; preds = %391, %367, %366
  %397 = phi i64 [ 3, %367 ], [ 6, %366 ], [ 3, %391 ]
  %398 = phi ptr [ @.str.49, %367 ], [ @.str.42, %366 ], [ @.str.49, %391 ]
  %399 = call i64 @fwrite(ptr nonnull %398, i64 %397, i64 1, ptr nonnull %335)
  %400 = call i32 @fclose(ptr noundef nonnull %335) #33
  br label %401

401:                                              ; preds = %396, %356
  %402 = select i1 %354, i32 10, i32 20
  call void @exit(i32 noundef %402) #37
  unreachable

403:                                              ; preds = %371, %349, %325, %324, %173
  %404 = phi { ptr, i32 } [ %350, %349 ], [ %372, %371 ], [ %174, %173 ], [ %320, %324 ], [ %326, %325 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %11) #31
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %10) #31
  call void @_ZN6SolverD1Ev(ptr noundef nonnull align 8 dereferenceable(536) %6) #32
  call void @llvm.lifetime.end.p0(i64 536, ptr nonnull %6) #31
  resume { ptr, i32 } %404
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32 noundef) local_unnamed_addr #11

; Function Attrs: nofree nounwind optsize
declare noundef i32 @__isoc99_sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind optsize willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: nobuiltin optsize allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #13

; Function Attrs: mustprogress optsize uwtable
define internal void @_ZN12StreamBuffer15assureLookaheadEv(ptr noundef nonnull align 8 dereferenceable(1048592) %0) #0 comdat align 2 {
  %2 = getelementptr inbounds %class.StreamBuffer, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %class.StreamBuffer, ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 4, !tbaa !46
  %6 = icmp slt i32 %3, %5
  br i1 %6, label %13, label %7

7:                                                ; preds = %1
  store i32 0, ptr %2, align 8, !tbaa !45
  %8 = load ptr, ptr %0, align 8, !tbaa !43
  %9 = tail call i32 @fileno(ptr noundef %8) #32
  %10 = getelementptr inbounds %class.StreamBuffer, ptr %0, i64 0, i32 1
  %11 = tail call i64 @read(i32 noundef %9, ptr noundef nonnull %10, i64 noundef 1048576) #33
  %12 = trunc i64 %11 to i32
  store i32 %12, ptr %4, align 4, !tbaa !46
  br label %13

13:                                               ; preds = %7, %1
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #14

; Function Attrs: mustprogress norecurse optsize uwtable
define internal fastcc void @_ZL14skipWhitespaceI12StreamBufferEvRT_(ptr noundef nonnull align 8 dereferenceable(1048592) %0) unnamed_addr #15 {
  %2 = getelementptr inbounds %class.StreamBuffer, ptr %0, i64 0, i32 2
  %3 = getelementptr inbounds %class.StreamBuffer, ptr %0, i64 0, i32 3
  %4 = load i32, ptr %2, align 8, !tbaa !45
  %5 = load i32, ptr %3, align 4, !tbaa !46
  %6 = icmp slt i32 %4, %5
  br i1 %6, label %7, label %22

7:                                                ; preds = %17, %1
  %8 = phi i32 [ %19, %17 ], [ %4, %1 ]
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds %class.StreamBuffer, ptr %0, i64 0, i32 1, i64 %9
  %11 = load i8, ptr %10, align 1, !tbaa !36
  %12 = icmp sgt i8 %11, 8
  br i1 %12, label %13, label %22

13:                                               ; preds = %7
  %14 = icmp ult i8 %11, 14
  %15 = icmp eq i8 %11, 32
  %16 = or i1 %14, %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %13
  %18 = add nsw i32 %8, 1
  store i32 %18, ptr %2, align 8, !tbaa !45
  tail call void @_ZN12StreamBuffer15assureLookaheadEv(ptr noundef nonnull align 8 dereferenceable(1048592) %0) #33
  %19 = load i32, ptr %2, align 8, !tbaa !45
  %20 = load i32, ptr %3, align 4, !tbaa !46
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %7, label %22, !llvm.loop !59

22:                                               ; preds = %17, %13, %7, %1
  ret void
}

; Function Attrs: mustprogress norecurse optsize uwtable
define internal fastcc noundef i32 @_ZL8parseIntI12StreamBufferEiRT_(ptr noundef nonnull align 8 dereferenceable(1048592) %0) unnamed_addr #15 {
  tail call fastcc void @_ZL14skipWhitespaceI12StreamBufferEvRT_(ptr noundef nonnull align 8 dereferenceable(1048592) %0) #33
  %2 = getelementptr inbounds %class.StreamBuffer, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %class.StreamBuffer, ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 4, !tbaa !46
  %6 = icmp slt i32 %3, %5
  br i1 %6, label %7, label %15

7:                                                ; preds = %1
  %8 = sext i32 %3 to i64
  %9 = getelementptr inbounds %class.StreamBuffer, ptr %0, i64 0, i32 1, i64 %8
  %10 = load i8, ptr %9, align 1, !tbaa !36
  switch i8 %10, label %15 [
    i8 45, label %12
    i8 43, label %11
  ]

11:                                               ; preds = %7
  br label %12

12:                                               ; preds = %11, %7
  %13 = phi i1 [ false, %11 ], [ true, %7 ]
  %14 = add nsw i32 %3, 1
  store i32 %14, ptr %2, align 8, !tbaa !45
  tail call void @_ZN12StreamBuffer15assureLookaheadEv(ptr noundef nonnull align 8 dereferenceable(1048592) %0) #33
  br label %15

15:                                               ; preds = %12, %7, %1
  %16 = phi i1 [ false, %1 ], [ false, %7 ], [ %13, %12 ]
  %17 = load i32, ptr %2, align 8, !tbaa !45
  %18 = load i32, ptr %4, align 4, !tbaa !46
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %26

20:                                               ; preds = %15
  %21 = sext i32 %17 to i64
  %22 = getelementptr inbounds %class.StreamBuffer, ptr %0, i64 0, i32 1, i64 %21
  %23 = load i8, ptr %22, align 1, !tbaa !36
  %24 = add i8 %23, -58
  %25 = icmp ult i8 %24, -10
  br i1 %25, label %26, label %43

26:                                               ; preds = %20, %15
  %27 = load ptr, ptr @stdout, align 8, !tbaa !7
  %28 = tail call i32 @fflush(ptr noundef %27) #33
  %29 = load ptr, ptr @stderr, align 8, !tbaa !7
  %30 = load i32, ptr %2, align 8, !tbaa !45
  %31 = load i32, ptr %4, align 4, !tbaa !46
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %26
  %34 = sext i32 %30 to i64
  %35 = getelementptr inbounds %class.StreamBuffer, ptr %0, i64 0, i32 1, i64 %34
  %36 = load i8, ptr %35, align 1, !tbaa !36
  %37 = sext i8 %36 to i32
  br label %38

38:                                               ; preds = %33, %26
  %39 = phi i32 [ %37, %33 ], [ -1, %26 ]
  %40 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %29, ptr noundef nonnull @.str.55, i32 noundef %39) #34
  %41 = load ptr, ptr @stderr, align 8, !tbaa !7
  %42 = tail call i32 @fflush(ptr noundef %41) #33
  tail call void @exit(i32 noundef 3) #37
  unreachable

43:                                               ; preds = %51, %20
  %44 = phi i32 [ %57, %51 ], [ %17, %20 ]
  %45 = phi i32 [ %55, %51 ], [ 0, %20 ]
  %46 = sext i32 %44 to i64
  %47 = getelementptr inbounds %class.StreamBuffer, ptr %0, i64 0, i32 1, i64 %46
  %48 = load i8, ptr %47, align 1, !tbaa !36
  %49 = add i8 %48, -48
  %50 = icmp ult i8 %49, 10
  br i1 %50, label %51, label %60

51:                                               ; preds = %43
  %52 = mul nsw i32 %45, 10
  %53 = zext i8 %48 to i32
  %54 = add i32 %52, -48
  %55 = add i32 %54, %53
  %56 = add nsw i32 %44, 1
  store i32 %56, ptr %2, align 8, !tbaa !45
  tail call void @_ZN12StreamBuffer15assureLookaheadEv(ptr noundef nonnull align 8 dereferenceable(1048592) %0) #33
  %57 = load i32, ptr %2, align 8, !tbaa !45
  %58 = load i32, ptr %4, align 4, !tbaa !46
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %43, label %60, !llvm.loop !60

60:                                               ; preds = %51, %43
  %61 = phi i32 [ %45, %43 ], [ %55, %51 ]
  %62 = sub nsw i32 0, %61
  %63 = select i1 %16, i32 %62, i32 %61
  ret i32 %63
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #16

; Function Attrs: mustprogress optsize uwtable
define internal void @_ZN3vecI3LitE4pushERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) #0 comdat align 2 {
  %3 = getelementptr inbounds %class.vec, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !50
  %5 = getelementptr inbounds %class.vec, ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !61
  %7 = icmp eq i32 %4, %6
  %8 = load ptr, ptr %0, align 8, !tbaa !49
  br i1 %7, label %9, label %18

9:                                                ; preds = %2
  %10 = mul nsw i32 %4, 3
  %11 = add nsw i32 %10, 1
  %12 = ashr i32 %11, 1
  %13 = tail call i32 @llvm.smax.i32(i32 %12, i32 2)
  store i32 %13, ptr %5, align 4, !tbaa !61
  %14 = zext i32 %13 to i64
  %15 = shl nuw nsw i64 %14, 2
  %16 = tail call ptr @realloc(ptr noundef %8, i64 noundef %15) #40
  store ptr %16, ptr %0, align 8, !tbaa !49
  %17 = load i32, ptr %3, align 8, !tbaa !50
  br label %18

18:                                               ; preds = %9, %2
  %19 = phi i32 [ %17, %9 ], [ %4, %2 ]
  %20 = phi ptr [ %16, %9 ], [ %8, %2 ]
  %21 = add nsw i32 %19, 1
  store i32 %21, ptr %3, align 8, !tbaa !50
  %22 = sext i32 %19 to i64
  %23 = getelementptr inbounds %class.Lit, ptr %20, i64 %22
  %24 = load i32, ptr %1, align 4, !tbaa !62
  store i32 %24, ptr %23, align 4, !tbaa !62
  ret void
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #17

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #18

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #6

; Function Attrs: inlinehint optsize uwtable
define internal noundef zeroext i1 @_ZN6Solver5solveEv(ptr noundef nonnull align 8 dereferenceable(536) %0) #19 comdat align 2 personality ptr @__gxx_personality_v0 {
  %2 = alloca %class.vec, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %3 = invoke noundef zeroext i1 @_ZN6Solver5solveERK3vecI3LitE(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef nonnull align 8 dereferenceable(16) %2) #33
          to label %4 unwind label %10

4:                                                ; preds = %1
  %5 = load ptr, ptr %2, align 8, !tbaa !49
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %class.vec, ptr %2, i64 0, i32 1
  store i32 0, ptr %8, align 8, !tbaa !50
  call void @free(ptr noundef nonnull %5) #32
  br label %9

9:                                                ; preds = %7, %4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #31
  ret i1 %3

10:                                               ; preds = %1
  %11 = landingpad { ptr, i32 }
          cleanup
  %12 = load ptr, ptr %2, align 8, !tbaa !49
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %class.vec, ptr %2, i64 0, i32 1
  store i32 0, ptr %15, align 8, !tbaa !50
  call void @free(ptr noundef nonnull %12) #32
  br label %16

16:                                               ; preds = %14, %10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #31
  resume { ptr, i32 } %11
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #16

; Function Attrs: mustprogress nounwind optsize willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #20

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nofree optsize
declare noundef i64 @read(i32 noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #21

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal void @_ZN6SolverC2Ev(ptr noundef nonnull align 8 dereferenceable(536) %0) unnamed_addr #22 align 2 personality ptr @__gxx_personality_v0 {
  %2 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  store <2 x double> <double 0x3FF0D79435E50D79, double 0x3FF00419A0290042>, ptr %2, align 8, !tbaa !63
  %3 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 4
  store double 2.000000e-02, ptr %3, align 8, !tbaa !34
  %4 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 5
  store i32 100, ptr %4, align 8, !tbaa !64
  %5 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 6
  store <2 x double> <double 1.500000e+00, double 0x3FD5555555555555>, ptr %5, align 8, !tbaa !63
  %6 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 8
  store double 1.100000e+00, ptr %6, align 8, !tbaa !65
  %7 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 9
  store i8 1, ptr %7, align 8, !tbaa !66
  %8 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 10
  store i32 1, ptr %8, align 4, !tbaa !33
  %9 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 11
  store i32 0, ptr %9, align 8, !tbaa !32
  %10 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 12
  %11 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 21
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %10, i8 0, i64 72, i1 false)
  store i8 1, ptr %11, align 8, !tbaa !67
  %12 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 22
  %13 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %12, i8 0, i64 32, i1 false)
  store double 1.000000e+00, ptr %13, align 8, !tbaa !68
  %14 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 25
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %14, i8 0, i64 16, i1 false)
  %15 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 26
  store double 1.000000e+00, ptr %15, align 8, !tbaa !69
  %16 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 27
  %17 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 36
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(132) %16, i8 0, i64 132, i1 false)
  store i32 -1, ptr %17, align 4, !tbaa !70
  %18 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 37
  %19 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 39
  %20 = ptrtoint ptr %14 to i64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %18, i8 0, i64 24, i1 false)
  store i64 %20, ptr %19, align 8, !tbaa !7
  %21 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 39, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %21, i8 0, i64 32, i1 false)
  %22 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 40
  store <2 x double> <double 0x4195D9C3F4000000, double 0.000000e+00>, ptr %22, align 8, !tbaa !63
  %23 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 42
  store i8 1, ptr %23, align 8, !tbaa !71
  %24 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 43
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %24, i8 0, i64 64, i1 false)
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @_ZN6SolverD2Ev(ptr noundef nonnull align 8 dereferenceable(536) %0) unnamed_addr #23 align 2 personality ptr @__gxx_personality_v0 {
  %2 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 23
  %3 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 23, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !72
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %11, label %6

6:                                                ; preds = %11, %1
  %7 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 22
  %8 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 22, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !72
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %150, label %20

11:                                               ; preds = %11, %1
  %12 = phi i64 [ %16, %11 ], [ 0, %1 ]
  %13 = load ptr, ptr %2, align 8, !tbaa !73
  %14 = getelementptr inbounds ptr, ptr %13, i64 %12
  %15 = load ptr, ptr %14, align 8, !tbaa !7
  tail call void @free(ptr noundef %15) #32
  %16 = add nuw nsw i64 %12, 1
  %17 = load i32, ptr %3, align 8, !tbaa !72
  %18 = sext i32 %17 to i64
  %19 = icmp slt i64 %16, %18
  br i1 %19, label %11, label %6, !llvm.loop !74

20:                                               ; preds = %150, %6
  %21 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 46
  %22 = load ptr, ptr %21, align 8, !tbaa !49
  %23 = icmp eq ptr %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 46, i32 1
  store i32 0, ptr %25, align 8, !tbaa !50
  tail call void @free(ptr noundef nonnull %22) #32
  store ptr null, ptr %21, align 8, !tbaa !49
  %26 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 46, i32 2
  store i32 0, ptr %26, align 4, !tbaa !61
  br label %27

27:                                               ; preds = %24, %20
  %28 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 45
  %29 = load ptr, ptr %28, align 8, !tbaa !49
  %30 = icmp eq ptr %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 45, i32 1
  store i32 0, ptr %32, align 8, !tbaa !50
  tail call void @free(ptr noundef nonnull %29) #32
  store ptr null, ptr %28, align 8, !tbaa !49
  %33 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 45, i32 2
  store i32 0, ptr %33, align 4, !tbaa !61
  br label %34

34:                                               ; preds = %31, %27
  %35 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 44
  %36 = load ptr, ptr %35, align 8, !tbaa !49
  %37 = icmp eq ptr %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 44, i32 1
  store i32 0, ptr %39, align 8, !tbaa !50
  tail call void @free(ptr noundef nonnull %36) #32
  store ptr null, ptr %35, align 8, !tbaa !49
  %40 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 44, i32 2
  store i32 0, ptr %40, align 4, !tbaa !61
  br label %41

41:                                               ; preds = %38, %34
  %42 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 43
  %43 = load ptr, ptr %42, align 8, !tbaa !75
  %44 = icmp eq ptr %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %41
  %46 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 43, i32 1
  store i32 0, ptr %46, align 8, !tbaa !51
  tail call void @free(ptr noundef nonnull %43) #32
  store ptr null, ptr %42, align 8, !tbaa !75
  %47 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 43, i32 2
  store i32 0, ptr %47, align 4, !tbaa !76
  br label %48

48:                                               ; preds = %45, %41
  %49 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 39, i32 2
  %50 = load ptr, ptr %49, align 8, !tbaa !77
  %51 = icmp eq ptr %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %48
  %53 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 39, i32 2, i32 1
  store i32 0, ptr %53, align 8, !tbaa !78
  tail call void @free(ptr noundef nonnull %50) #32
  store ptr null, ptr %49, align 8, !tbaa !77
  %54 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 39, i32 2, i32 2
  store i32 0, ptr %54, align 4, !tbaa !79
  br label %55

55:                                               ; preds = %52, %48
  %56 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 39, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !77
  %58 = icmp eq ptr %57, null
  br i1 %58, label %62, label %59

59:                                               ; preds = %55
  %60 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 39, i32 1, i32 1
  store i32 0, ptr %60, align 8, !tbaa !78
  tail call void @free(ptr noundef nonnull %57) #32
  store ptr null, ptr %56, align 8, !tbaa !77
  %61 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 39, i32 1, i32 2
  store i32 0, ptr %61, align 4, !tbaa !79
  br label %62

62:                                               ; preds = %59, %55
  %63 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 38
  %64 = load ptr, ptr %63, align 8, !tbaa !49
  %65 = icmp eq ptr %64, null
  br i1 %65, label %69, label %66

66:                                               ; preds = %62
  %67 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 38, i32 1
  store i32 0, ptr %67, align 8, !tbaa !50
  tail call void @free(ptr noundef nonnull %64) #32
  store ptr null, ptr %63, align 8, !tbaa !49
  %68 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 38, i32 2
  store i32 0, ptr %68, align 4, !tbaa !61
  br label %69

69:                                               ; preds = %66, %62
  %70 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 34
  %71 = load ptr, ptr %70, align 8, !tbaa !77
  %72 = icmp eq ptr %71, null
  br i1 %72, label %76, label %73

73:                                               ; preds = %69
  %74 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 34, i32 1
  store i32 0, ptr %74, align 8, !tbaa !78
  tail call void @free(ptr noundef nonnull %71) #32
  store ptr null, ptr %70, align 8, !tbaa !77
  %75 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 34, i32 2
  store i32 0, ptr %75, align 4, !tbaa !79
  br label %76

76:                                               ; preds = %73, %69
  %77 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 33
  %78 = load ptr, ptr %77, align 8, !tbaa !73
  %79 = icmp eq ptr %78, null
  br i1 %79, label %83, label %80

80:                                               ; preds = %76
  %81 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 33, i32 1
  store i32 0, ptr %81, align 8, !tbaa !72
  tail call void @free(ptr noundef nonnull %78) #32
  store ptr null, ptr %77, align 8, !tbaa !73
  %82 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 33, i32 2
  store i32 0, ptr %82, align 4, !tbaa !80
  br label %83

83:                                               ; preds = %80, %76
  %84 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 32
  %85 = load ptr, ptr %84, align 8, !tbaa !77
  %86 = icmp eq ptr %85, null
  br i1 %86, label %90, label %87

87:                                               ; preds = %83
  %88 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 32, i32 1
  store i32 0, ptr %88, align 8, !tbaa !78
  tail call void @free(ptr noundef nonnull %85) #32
  store ptr null, ptr %84, align 8, !tbaa !77
  %89 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 32, i32 2
  store i32 0, ptr %89, align 4, !tbaa !79
  br label %90

90:                                               ; preds = %87, %83
  %91 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 31
  %92 = load ptr, ptr %91, align 8, !tbaa !49
  %93 = icmp eq ptr %92, null
  br i1 %93, label %97, label %94

94:                                               ; preds = %90
  %95 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 31, i32 1
  store i32 0, ptr %95, align 8, !tbaa !50
  tail call void @free(ptr noundef nonnull %92) #32
  store ptr null, ptr %91, align 8, !tbaa !49
  %96 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 31, i32 2
  store i32 0, ptr %96, align 4, !tbaa !61
  br label %97

97:                                               ; preds = %94, %90
  %98 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 30
  %99 = load ptr, ptr %98, align 8, !tbaa !75
  %100 = icmp eq ptr %99, null
  br i1 %100, label %104, label %101

101:                                              ; preds = %97
  %102 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 30, i32 1
  store i32 0, ptr %102, align 8, !tbaa !51
  tail call void @free(ptr noundef nonnull %99) #32
  store ptr null, ptr %98, align 8, !tbaa !75
  %103 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 30, i32 2
  store i32 0, ptr %103, align 4, !tbaa !76
  br label %104

104:                                              ; preds = %101, %97
  %105 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 29
  %106 = load ptr, ptr %105, align 8, !tbaa !75
  %107 = icmp eq ptr %106, null
  br i1 %107, label %111, label %108

108:                                              ; preds = %104
  %109 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 29, i32 1
  store i32 0, ptr %109, align 8, !tbaa !51
  tail call void @free(ptr noundef nonnull %106) #32
  store ptr null, ptr %105, align 8, !tbaa !75
  %110 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 29, i32 2
  store i32 0, ptr %110, align 4, !tbaa !76
  br label %111

111:                                              ; preds = %108, %104
  %112 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 28
  %113 = load ptr, ptr %112, align 8, !tbaa !75
  %114 = icmp eq ptr %113, null
  br i1 %114, label %118, label %115

115:                                              ; preds = %111
  %116 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 28, i32 1
  store i32 0, ptr %116, align 8, !tbaa !51
  tail call void @free(ptr noundef nonnull %113) #32
  store ptr null, ptr %112, align 8, !tbaa !75
  %117 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 28, i32 2
  store i32 0, ptr %117, align 4, !tbaa !76
  br label %118

118:                                              ; preds = %115, %111
  %119 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 27
  tail call void @_ZN3vecIS_IP6ClauseEE5clearEb(ptr noundef nonnull align 8 dereferenceable(16) %119, i1 noundef zeroext true) #33
  %120 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 25
  %121 = load ptr, ptr %120, align 8, !tbaa !81
  %122 = icmp eq ptr %121, null
  br i1 %122, label %126, label %123

123:                                              ; preds = %118
  %124 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 25, i32 1
  store i32 0, ptr %124, align 8, !tbaa !82
  tail call void @free(ptr noundef nonnull %121) #32
  store ptr null, ptr %120, align 8, !tbaa !81
  %125 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 25, i32 2
  store i32 0, ptr %125, align 4, !tbaa !83
  br label %126

126:                                              ; preds = %123, %118
  %127 = load ptr, ptr %2, align 8, !tbaa !73
  %128 = icmp eq ptr %127, null
  br i1 %128, label %131, label %129

129:                                              ; preds = %126
  store i32 0, ptr %3, align 8, !tbaa !72
  tail call void @free(ptr noundef nonnull %127) #32
  store ptr null, ptr %2, align 8, !tbaa !73
  %130 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 23, i32 2
  store i32 0, ptr %130, align 4, !tbaa !80
  br label %131

131:                                              ; preds = %129, %126
  %132 = load ptr, ptr %7, align 8, !tbaa !73
  %133 = icmp eq ptr %132, null
  br i1 %133, label %136, label %134

134:                                              ; preds = %131
  store i32 0, ptr %8, align 8, !tbaa !72
  tail call void @free(ptr noundef nonnull %132) #32
  store ptr null, ptr %7, align 8, !tbaa !73
  %135 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 22, i32 2
  store i32 0, ptr %135, align 4, !tbaa !80
  br label %136

136:                                              ; preds = %134, %131
  %137 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 1
  %138 = load ptr, ptr %137, align 8, !tbaa !49
  %139 = icmp eq ptr %138, null
  br i1 %139, label %143, label %140

140:                                              ; preds = %136
  %141 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 1, i32 1
  store i32 0, ptr %141, align 8, !tbaa !50
  tail call void @free(ptr noundef nonnull %138) #32
  store ptr null, ptr %137, align 8, !tbaa !49
  %142 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 1, i32 2
  store i32 0, ptr %142, align 4, !tbaa !61
  br label %143

143:                                              ; preds = %140, %136
  %144 = load ptr, ptr %0, align 8, !tbaa !55
  %145 = icmp eq ptr %144, null
  br i1 %145, label %149, label %146

146:                                              ; preds = %143
  %147 = getelementptr inbounds %class.vec, ptr %0, i64 0, i32 1
  store i32 0, ptr %147, align 8, !tbaa !84
  tail call void @free(ptr noundef nonnull %144) #32
  store ptr null, ptr %0, align 8, !tbaa !55
  %148 = getelementptr inbounds %class.vec, ptr %0, i64 0, i32 2
  store i32 0, ptr %148, align 4, !tbaa !85
  br label %149

149:                                              ; preds = %146, %143
  ret void

150:                                              ; preds = %150, %6
  %151 = phi i64 [ %155, %150 ], [ 0, %6 ]
  %152 = load ptr, ptr %7, align 8, !tbaa !73
  %153 = getelementptr inbounds ptr, ptr %152, i64 %151
  %154 = load ptr, ptr %153, align 8, !tbaa !7
  tail call void @free(ptr noundef %154) #32
  %155 = add nuw nsw i64 %151, 1
  %156 = load i32, ptr %8, align 8, !tbaa !72
  %157 = sext i32 %156 to i64
  %158 = icmp slt i64 %155, %157
  br i1 %158, label %150, label %20, !llvm.loop !86
}

; Function Attrs: nounwind optsize uwtable
define internal void @_ZN3vecIS_IP6ClauseEE5clearEb(ptr noundef nonnull align 8 dereferenceable(16) %0, i1 noundef zeroext %1) #23 comdat align 2 personality ptr @__gxx_personality_v0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !87
  %4 = icmp eq ptr %3, null
  br i1 %4, label %29, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %class.vec, ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !88
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %21, %5
  store i32 0, ptr %6, align 8, !tbaa !88
  br i1 %1, label %26, label %29

10:                                               ; preds = %21, %5
  %11 = phi i32 [ %22, %21 ], [ %7, %5 ]
  %12 = phi i64 [ %23, %21 ], [ 0, %5 ]
  %13 = load ptr, ptr %0, align 8, !tbaa !87
  %14 = getelementptr inbounds %class.vec, ptr %13, i64 %12
  %15 = load ptr, ptr %14, align 8, !tbaa !73
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %10
  %18 = getelementptr inbounds %class.vec, ptr %13, i64 %12, i32 1
  store i32 0, ptr %18, align 8, !tbaa !72
  tail call void @free(ptr noundef nonnull %15) #32
  store ptr null, ptr %14, align 8, !tbaa !73
  %19 = getelementptr inbounds %class.vec, ptr %13, i64 %12, i32 2
  store i32 0, ptr %19, align 4, !tbaa !80
  %20 = load i32, ptr %6, align 8, !tbaa !88
  br label %21

21:                                               ; preds = %17, %10
  %22 = phi i32 [ %11, %10 ], [ %20, %17 ]
  %23 = add nuw nsw i64 %12, 1
  %24 = sext i32 %22 to i64
  %25 = icmp slt i64 %23, %24
  br i1 %25, label %10, label %9, !llvm.loop !89

26:                                               ; preds = %9
  %27 = load ptr, ptr %0, align 8, !tbaa !87
  tail call void @free(ptr noundef %27) #32
  store ptr null, ptr %0, align 8, !tbaa !87
  %28 = getelementptr inbounds %class.vec, ptr %0, i64 0, i32 2
  store i32 0, ptr %28, align 4, !tbaa !90
  br label %29

29:                                               ; preds = %26, %9, %2
  ret void
}

; Function Attrs: mustprogress optsize uwtable
define internal noundef i32 @_ZN6Solver6newVarEbb(ptr noundef nonnull align 8 dereferenceable(536) %0, i1 noundef zeroext %1, i1 noundef zeroext %2) #0 align 2 {
  %4 = alloca ptr, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = zext i1 %1 to i8
  %12 = zext i1 %2 to i8
  %13 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 28, i32 1
  %14 = load i32, ptr %13, align 8, !tbaa !51
  %15 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 27
  tail call void @_ZN3vecIS_IP6ClauseEE4pushEv(ptr noundef nonnull align 8 dereferenceable(16) %15) #33
  tail call void @_ZN3vecIS_IP6ClauseEE4pushEv(ptr noundef nonnull align 8 dereferenceable(16) %15) #33
  %16 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 33
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #31
  store ptr null, ptr %4, align 8, !tbaa !7
  call void @_ZN3vecIP6ClauseE4pushERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %16, ptr noundef nonnull align 8 dereferenceable(8) %4) #33
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #31
  %17 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 28
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #31
  store i8 0, ptr %5, align 1, !tbaa !36
  call void @_ZN3vecIcE4pushERKc(ptr noundef nonnull align 8 dereferenceable(16) %17, ptr noundef nonnull align 1 dereferenceable(1) %5) #33
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #31
  %18 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 34
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #31
  store i32 -1, ptr %6, align 4, !tbaa !62
  call void @_ZN3vecIiE4pushERKi(ptr noundef nonnull align 8 dereferenceable(16) %18, ptr noundef nonnull align 4 dereferenceable(4) %6) #33
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #31
  %19 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #31
  store double 0.000000e+00, ptr %7, align 8, !tbaa !63
  call void @_ZN3vecIdE4pushERKd(ptr noundef nonnull align 8 dereferenceable(16) %19, ptr noundef nonnull align 8 dereferenceable(8) %7) #33
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #31
  %20 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 43
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #31
  store i8 0, ptr %8, align 1, !tbaa !36
  call void @_ZN3vecIcE4pushERKc(ptr noundef nonnull align 8 dereferenceable(16) %20, ptr noundef nonnull align 1 dereferenceable(1) %8) #33
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #31
  %21 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 29
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #31
  store i8 %11, ptr %9, align 1, !tbaa !36
  call void @_ZN3vecIcE4pushERKc(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 1 dereferenceable(1) %9) #33
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #31
  %22 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 30
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #31
  store i8 %12, ptr %10, align 1, !tbaa !36
  call void @_ZN3vecIcE4pushERKc(ptr noundef nonnull align 8 dereferenceable(16) %22, ptr noundef nonnull align 1 dereferenceable(1) %10) #33
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #31
  %23 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 39
  %24 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 39, i32 2, i32 1
  %25 = load i32, ptr %24, align 8, !tbaa !78
  %26 = icmp sgt i32 %25, %14
  br i1 %26, label %29, label %27

27:                                               ; preds = %3
  %28 = sext i32 %14 to i64
  br label %36

29:                                               ; preds = %3
  %30 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 39, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !77
  %32 = sext i32 %14 to i64
  %33 = getelementptr inbounds i32, ptr %31, i64 %32
  %34 = load i32, ptr %33, align 4, !tbaa !62
  %35 = icmp sgt i32 %34, -1
  br i1 %35, label %43, label %36

36:                                               ; preds = %29, %27
  %37 = phi i64 [ %28, %27 ], [ %32, %29 ]
  %38 = load ptr, ptr %22, align 8, !tbaa !75
  %39 = getelementptr inbounds i8, ptr %38, i64 %37
  %40 = load i8, ptr %39, align 1, !tbaa !36
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %36
  call void @_ZN4HeapIN6Solver10VarOrderLtEE6insertEi(ptr noundef nonnull align 8 dereferenceable(40) %23, i32 noundef %14) #33
  br label %43

43:                                               ; preds = %42, %36, %29
  ret i32 %14
}

; Function Attrs: optsize uwtable
define internal void @_ZN3vecIS_IP6ClauseEE4pushEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #24 comdat align 2 {
  %2 = getelementptr inbounds %class.vec, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !88
  %4 = getelementptr inbounds %class.vec, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !90
  %6 = icmp eq i32 %3, %5
  %7 = load ptr, ptr %0, align 8, !tbaa !87
  br i1 %6, label %8, label %17

8:                                                ; preds = %1
  %9 = mul nsw i32 %3, 3
  %10 = add nsw i32 %9, 1
  %11 = ashr i32 %10, 1
  %12 = tail call i32 @llvm.smax.i32(i32 %11, i32 2)
  store i32 %12, ptr %4, align 4, !tbaa !90
  %13 = zext i32 %12 to i64
  %14 = shl nuw nsw i64 %13, 4
  %15 = tail call ptr @realloc(ptr noundef %7, i64 noundef %14) #40
  store ptr %15, ptr %0, align 8, !tbaa !87
  %16 = load i32, ptr %2, align 8, !tbaa !88
  br label %17

17:                                               ; preds = %8, %1
  %18 = phi i32 [ %16, %8 ], [ %3, %1 ]
  %19 = phi ptr [ %15, %8 ], [ %7, %1 ]
  %20 = sext i32 %18 to i64
  %21 = getelementptr inbounds %class.vec, ptr %19, i64 %20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, i8 0, i64 16, i1 false)
  %22 = load i32, ptr %2, align 8, !tbaa !88
  %23 = add nsw i32 %22, 1
  store i32 %23, ptr %2, align 8, !tbaa !88
  ret void
}

; Function Attrs: mustprogress optsize uwtable
define internal void @_ZN3vecIP6ClauseE4pushERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #0 comdat align 2 {
  %3 = getelementptr inbounds %class.vec, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !72
  %5 = getelementptr inbounds %class.vec, ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !80
  %7 = icmp eq i32 %4, %6
  %8 = load ptr, ptr %0, align 8, !tbaa !73
  br i1 %7, label %9, label %18

9:                                                ; preds = %2
  %10 = mul nsw i32 %4, 3
  %11 = add nsw i32 %10, 1
  %12 = ashr i32 %11, 1
  %13 = tail call i32 @llvm.smax.i32(i32 %12, i32 2)
  store i32 %13, ptr %5, align 4, !tbaa !80
  %14 = zext i32 %13 to i64
  %15 = shl nuw nsw i64 %14, 3
  %16 = tail call ptr @realloc(ptr noundef %8, i64 noundef %15) #40
  store ptr %16, ptr %0, align 8, !tbaa !73
  %17 = load i32, ptr %3, align 8, !tbaa !72
  br label %18

18:                                               ; preds = %9, %2
  %19 = phi i32 [ %17, %9 ], [ %4, %2 ]
  %20 = phi ptr [ %16, %9 ], [ %8, %2 ]
  %21 = load ptr, ptr %1, align 8, !tbaa !7
  %22 = add nsw i32 %19, 1
  store i32 %22, ptr %3, align 8, !tbaa !72
  %23 = sext i32 %19 to i64
  %24 = getelementptr inbounds ptr, ptr %20, i64 %23
  store ptr %21, ptr %24, align 8, !tbaa !7
  ret void
}

; Function Attrs: mustprogress optsize uwtable
define internal void @_ZN3vecIcE4pushERKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #0 comdat align 2 {
  %3 = getelementptr inbounds %class.vec, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !51
  %5 = getelementptr inbounds %class.vec, ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !76
  %7 = icmp eq i32 %4, %6
  %8 = load ptr, ptr %0, align 8, !tbaa !75
  br i1 %7, label %9, label %17

9:                                                ; preds = %2
  %10 = mul nsw i32 %4, 3
  %11 = add nsw i32 %10, 1
  %12 = ashr i32 %11, 1
  %13 = tail call i32 @llvm.smax.i32(i32 %12, i32 2)
  store i32 %13, ptr %5, align 4, !tbaa !76
  %14 = zext i32 %13 to i64
  %15 = tail call ptr @realloc(ptr noundef %8, i64 noundef %14) #40
  store ptr %15, ptr %0, align 8, !tbaa !75
  %16 = load i32, ptr %3, align 8, !tbaa !51
  br label %17

17:                                               ; preds = %9, %2
  %18 = phi i32 [ %16, %9 ], [ %4, %2 ]
  %19 = phi ptr [ %15, %9 ], [ %8, %2 ]
  %20 = load i8, ptr %1, align 1, !tbaa !36
  %21 = add nsw i32 %18, 1
  store i32 %21, ptr %3, align 8, !tbaa !51
  %22 = sext i32 %18 to i64
  %23 = getelementptr inbounds i8, ptr %19, i64 %22
  store i8 %20, ptr %23, align 1, !tbaa !36
  ret void
}

; Function Attrs: mustprogress optsize uwtable
define internal void @_ZN3vecIiE4pushERKi(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) #0 comdat align 2 {
  %3 = getelementptr inbounds %class.vec, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !78
  %5 = getelementptr inbounds %class.vec, ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !79
  %7 = icmp eq i32 %4, %6
  %8 = load ptr, ptr %0, align 8, !tbaa !77
  br i1 %7, label %9, label %18

9:                                                ; preds = %2
  %10 = mul nsw i32 %4, 3
  %11 = add nsw i32 %10, 1
  %12 = ashr i32 %11, 1
  %13 = tail call i32 @llvm.smax.i32(i32 %12, i32 2)
  store i32 %13, ptr %5, align 4, !tbaa !79
  %14 = zext i32 %13 to i64
  %15 = shl nuw nsw i64 %14, 2
  %16 = tail call ptr @realloc(ptr noundef %8, i64 noundef %15) #40
  store ptr %16, ptr %0, align 8, !tbaa !77
  %17 = load i32, ptr %3, align 8, !tbaa !78
  br label %18

18:                                               ; preds = %9, %2
  %19 = phi i32 [ %17, %9 ], [ %4, %2 ]
  %20 = phi ptr [ %16, %9 ], [ %8, %2 ]
  %21 = load i32, ptr %1, align 4, !tbaa !62
  %22 = add nsw i32 %19, 1
  store i32 %22, ptr %3, align 8, !tbaa !78
  %23 = sext i32 %19 to i64
  %24 = getelementptr inbounds i32, ptr %20, i64 %23
  store i32 %21, ptr %24, align 4, !tbaa !62
  ret void
}

; Function Attrs: mustprogress optsize uwtable
define internal void @_ZN3vecIdE4pushERKd(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #0 comdat align 2 {
  %3 = getelementptr inbounds %class.vec, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !82
  %5 = getelementptr inbounds %class.vec, ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !83
  %7 = icmp eq i32 %4, %6
  %8 = load ptr, ptr %0, align 8, !tbaa !81
  br i1 %7, label %9, label %18

9:                                                ; preds = %2
  %10 = mul nsw i32 %4, 3
  %11 = add nsw i32 %10, 1
  %12 = ashr i32 %11, 1
  %13 = tail call i32 @llvm.smax.i32(i32 %12, i32 2)
  store i32 %13, ptr %5, align 4, !tbaa !83
  %14 = zext i32 %13 to i64
  %15 = shl nuw nsw i64 %14, 3
  %16 = tail call ptr @realloc(ptr noundef %8, i64 noundef %15) #40
  store ptr %16, ptr %0, align 8, !tbaa !81
  %17 = load i32, ptr %3, align 8, !tbaa !82
  br label %18

18:                                               ; preds = %9, %2
  %19 = phi i32 [ %17, %9 ], [ %4, %2 ]
  %20 = phi ptr [ %16, %9 ], [ %8, %2 ]
  %21 = load double, ptr %1, align 8, !tbaa !63
  %22 = add nsw i32 %19, 1
  store i32 %22, ptr %3, align 8, !tbaa !82
  %23 = sext i32 %19 to i64
  %24 = getelementptr inbounds double, ptr %20, i64 %23
  store double %21, ptr %24, align 8, !tbaa !63
  ret void
}

; Function Attrs: mustprogress optsize uwtable
define internal void @_ZN4HeapIN6Solver10VarOrderLtEE6insertEi(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) #0 comdat align 2 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %1, ptr %3, align 4, !tbaa !62
  %5 = getelementptr inbounds %class.Heap, ptr %0, i64 0, i32 2
  %6 = add nsw i32 %1, 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #31
  store i32 -1, ptr %4, align 4, !tbaa !62
  call void @_ZN3vecIiE6growToEiRKi(ptr noundef nonnull align 8 dereferenceable(16) %5, i32 noundef %6, ptr noundef nonnull align 4 dereferenceable(4) %4) #33
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #31
  %7 = getelementptr inbounds %class.Heap, ptr %0, i64 0, i32 1
  %8 = getelementptr inbounds %class.Heap, ptr %0, i64 0, i32 1, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !78
  %10 = load ptr, ptr %5, align 8, !tbaa !77
  %11 = sext i32 %1 to i64
  %12 = getelementptr inbounds i32, ptr %10, i64 %11
  store i32 %9, ptr %12, align 4, !tbaa !62
  call void @_ZN3vecIiE4pushERKi(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 4 dereferenceable(4) %3) #33
  %13 = load i32, ptr %3, align 4, !tbaa !62
  %14 = load ptr, ptr %5, align 8
  %15 = sext i32 %13 to i64
  %16 = getelementptr inbounds i32, ptr %14, i64 %15
  %17 = load i32, ptr %16, align 4, !tbaa !62
  %18 = load ptr, ptr %7, align 8, !tbaa !77
  %19 = sext i32 %17 to i64
  %20 = getelementptr inbounds i32, ptr %18, i64 %19
  %21 = load i32, ptr %20, align 4, !tbaa !62
  %22 = icmp eq i32 %17, 0
  %23 = sext i32 %21 to i64
  br i1 %22, label %45, label %24

24:                                               ; preds = %2
  %25 = load ptr, ptr %0, align 8, !tbaa !91
  %26 = load ptr, ptr %25, align 8, !tbaa !81
  %27 = getelementptr inbounds double, ptr %26, i64 %23
  %28 = load double, ptr %27, align 8, !tbaa !63
  br label %29

29:                                               ; preds = %40, %24
  %30 = phi i32 [ %17, %24 ], [ %32, %40 ]
  %31 = add nsw i32 %30, -1
  %32 = ashr i32 %31, 1
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, ptr %18, i64 %33
  %35 = load i32, ptr %34, align 4, !tbaa !62
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds double, ptr %26, i64 %36
  %38 = load double, ptr %37, align 8, !tbaa !63
  %39 = fcmp ogt double %28, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %29
  %41 = sext i32 %30 to i64
  %42 = getelementptr inbounds i32, ptr %18, i64 %41
  store i32 %35, ptr %42, align 4, !tbaa !62
  %43 = getelementptr inbounds i32, ptr %14, i64 %36
  store i32 %30, ptr %43, align 4, !tbaa !62
  %44 = icmp ult i32 %31, 2
  br i1 %44, label %45, label %29, !llvm.loop !92

45:                                               ; preds = %40, %29, %2
  %46 = phi i32 [ 0, %2 ], [ %30, %29 ], [ %32, %40 ]
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, ptr %18, i64 %47
  store i32 %21, ptr %48, align 4, !tbaa !62
  %49 = getelementptr inbounds i32, ptr %14, i64 %23
  store i32 %46, ptr %49, align 4, !tbaa !62
  ret void
}

; Function Attrs: mustprogress optsize uwtable
define internal void @_ZN3vecIiE6growToEiRKi(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) #0 comdat align 2 {
  %4 = getelementptr inbounds %class.vec, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !78
  %6 = icmp slt i32 %5, %1
  br i1 %6, label %7, label %21

7:                                                ; preds = %3
  tail call void @_ZN3vecIiE4growEi(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1) #33
  %8 = load i32, ptr %4, align 8, !tbaa !78
  %9 = icmp slt i32 %8, %1
  br i1 %9, label %10, label %14

10:                                               ; preds = %7
  %11 = load ptr, ptr %0, align 8, !tbaa !77
  %12 = sext i32 %8 to i64
  %13 = sext i32 %1 to i64
  br label %15

14:                                               ; preds = %15, %7
  store i32 %1, ptr %4, align 8, !tbaa !78
  br label %21

15:                                               ; preds = %15, %10
  %16 = phi i64 [ %12, %10 ], [ %19, %15 ]
  %17 = getelementptr inbounds i32, ptr %11, i64 %16
  %18 = load i32, ptr %2, align 4, !tbaa !62
  store i32 %18, ptr %17, align 4, !tbaa !62
  %19 = add nsw i64 %16, 1
  %20 = icmp eq i64 %19, %13
  br i1 %20, label %14, label %15, !llvm.loop !93

21:                                               ; preds = %14, %3
  ret void
}

; Function Attrs: mustprogress nounwind optsize uwtable
define internal void @_ZN3vecIiE4growEi(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1) #25 comdat align 2 {
  %3 = getelementptr inbounds %class.vec, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !79
  %5 = icmp slt i32 %4, %1
  br i1 %5, label %6, label %22

6:                                                ; preds = %2
  %7 = icmp eq i32 %4, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %6
  %9 = tail call i32 @llvm.smax.i32(i32 %1, i32 2)
  br label %16

10:                                               ; preds = %10, %6
  %11 = phi i32 [ %14, %10 ], [ %4, %6 ]
  %12 = mul nsw i32 %11, 3
  %13 = add nsw i32 %12, 1
  %14 = ashr i32 %13, 1
  %15 = icmp slt i32 %14, %1
  br i1 %15, label %10, label %16, !llvm.loop !94

16:                                               ; preds = %10, %8
  %17 = phi i32 [ %9, %8 ], [ %14, %10 ]
  store i32 %17, ptr %3, align 4, !tbaa !79
  %18 = load ptr, ptr %0, align 8, !tbaa !77
  %19 = sext i32 %17 to i64
  %20 = shl nsw i64 %19, 2
  %21 = tail call ptr @realloc(ptr noundef %18, i64 noundef %20) #40
  store ptr %21, ptr %0, align 8, !tbaa !77
  br label %22

22:                                               ; preds = %16, %2
  ret void
}

; Function Attrs: optsize uwtable
define internal noundef zeroext i1 @_ZN6Solver9addClauseER3vecI3LitE(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) #24 align 2 {
  %3 = alloca ptr, align 8
  %4 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 21
  %5 = load i8, ptr %4, align 8, !tbaa !67, !range !95, !noundef !96
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %74, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %1, align 8, !tbaa !49
  %9 = getelementptr inbounds %class.vec, ptr %1, i64 0, i32 1
  %10 = load i32, ptr %9, align 8, !tbaa !50
  tail call void @_Z4sortI3Lit16LessThan_defaultIS0_EEvPT_iT0_(ptr noundef %8, i32 noundef %10) #33
  %11 = load i32, ptr %9, align 8, !tbaa !50
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %58

13:                                               ; preds = %7
  %14 = load ptr, ptr %1, align 8, !tbaa !49
  %15 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 28
  %16 = load ptr, ptr %15, align 8, !tbaa !75
  br label %17

17:                                               ; preds = %45, %13
  %18 = phi i32 [ %11, %13 ], [ %46, %45 ]
  %19 = phi i64 [ 0, %13 ], [ %49, %45 ]
  %20 = phi i32 [ 0, %13 ], [ %48, %45 ]
  %21 = phi i32 [ -2, %13 ], [ %47, %45 ]
  %22 = getelementptr inbounds %class.Lit, ptr %14, i64 %19
  %23 = load i32, ptr %22, align 4
  %24 = ashr i32 %23, 1
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8, ptr %16, i64 %25
  %27 = load i8, ptr %26, align 1, !tbaa !36
  %28 = and i32 %23, 1
  %29 = icmp eq i32 %28, 0
  %30 = sub i8 0, %27
  %31 = select i1 %29, i8 %27, i8 %30
  %32 = icmp eq i8 %31, 1
  %33 = xor i32 %21, 1
  %34 = icmp eq i32 %23, %33
  %35 = select i1 %32, i1 true, i1 %34
  br i1 %35, label %74, label %36

36:                                               ; preds = %17
  %37 = icmp ne i8 %31, -1
  %38 = icmp ne i32 %23, %21
  %39 = select i1 %37, i1 %38, i1 false
  br i1 %39, label %40, label %45

40:                                               ; preds = %36
  %41 = add nsw i32 %20, 1
  %42 = sext i32 %20 to i64
  %43 = getelementptr inbounds %class.Lit, ptr %14, i64 %42
  store i32 %23, ptr %43, align 4, !tbaa !62
  %44 = load i32, ptr %9, align 8, !tbaa !50
  br label %45

45:                                               ; preds = %40, %36
  %46 = phi i32 [ %44, %40 ], [ %18, %36 ]
  %47 = phi i32 [ %23, %40 ], [ %21, %36 ]
  %48 = phi i32 [ %41, %40 ], [ %20, %36 ]
  %49 = add nuw nsw i64 %19, 1
  %50 = sext i32 %46 to i64
  %51 = icmp slt i64 %49, %50
  br i1 %51, label %17, label %52, !llvm.loop !97

52:                                               ; preds = %45
  %.lcssa2 = phi i32 [ %46, %45 ]
  %.lcssa1 = phi i32 [ %48, %45 ]
  %.lcssa = phi i64 [ %49, %45 ]
  %53 = trunc i64 %.lcssa to i32
  %54 = sub nsw i32 %53, %.lcssa1
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %52
  %57 = sub i32 %.lcssa2, %54
  store i32 %57, ptr %9, align 8, !tbaa !50
  br label %58

58:                                               ; preds = %56, %52, %7
  %59 = phi i32 [ %57, %56 ], [ %.lcssa2, %52 ], [ %11, %7 ]
  switch i32 %59, label %67 [
    i32 0, label %60
    i32 1, label %61
  ]

60:                                               ; preds = %58
  store i8 0, ptr %4, align 8, !tbaa !67
  br label %74

61:                                               ; preds = %58
  %62 = load ptr, ptr %1, align 8, !tbaa !49
  %63 = load i32, ptr %62, align 4, !tbaa.struct !98
  tail call void @_ZN6Solver16uncheckedEnqueueE3LitP6Clause(ptr noundef nonnull align 8 dereferenceable(536) %0, i32 %63, ptr noundef null) #33
  %64 = tail call noundef ptr @_ZN6Solver9propagateEv(ptr noundef nonnull align 8 dereferenceable(536) %0) #33
  %65 = icmp eq ptr %64, null
  %66 = zext i1 %65 to i8
  store i8 %66, ptr %4, align 8, !tbaa !67
  br label %74

67:                                               ; preds = %58
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #31
  %68 = sext i32 %59 to i64
  %69 = shl nsw i64 %68, 2
  %70 = add nsw i64 %69, 8
  %71 = tail call noalias ptr @malloc(i64 noundef %70) #41
  tail call void @_ZN6ClauseC2I3vecI3LitEEERKT_b(ptr noundef nonnull align 4 dereferenceable(8) %71, ptr noundef nonnull align 8 dereferenceable(16) %1, i1 noundef zeroext false) #33
  store ptr %71, ptr %3, align 8, !tbaa !7
  %72 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 22
  call void @_ZN3vecIP6ClauseE4pushERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %72, ptr noundef nonnull align 8 dereferenceable(8) %3) #33
  %73 = load ptr, ptr %3, align 8, !tbaa !7
  call void @_ZN6Solver12attachClauseER6Clause(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef nonnull align 4 dereferenceable(8) %73) #33
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #31
  br label %74

74:                                               ; preds = %67, %61, %60, %17, %2
  %75 = phi i1 [ false, %60 ], [ %65, %61 ], [ true, %67 ], [ false, %2 ], [ true, %17 ]
  ret i1 %75
}

; Function Attrs: optsize uwtable
define internal void @_Z4sortI3Lit16LessThan_defaultIS0_EEvPT_iT0_(ptr noundef %0, i32 noundef %1) #24 comdat {
  %3 = icmp slt i32 %1, 16
  br i1 %3, label %4, label %7

4:                                                ; preds = %40, %2
  %5 = phi ptr [ %0, %2 ], [ %.lcssa5, %40 ]
  %6 = phi i32 [ %1, %2 ], [ %41, %40 ]
  tail call void @_Z13selectionSortI3Lit16LessThan_defaultIS0_EEvPT_iT0_(ptr noundef %5, i32 noundef %6) #33
  ret void

7:                                                ; preds = %40, %2
  %8 = phi i32 [ %41, %40 ], [ %1, %2 ]
  %9 = phi ptr [ %.lcssa5, %40 ], [ %0, %2 ]
  %10 = lshr i32 %8, 1
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds %class.Lit, ptr %9, i64 %11
  %13 = load i32, ptr %12, align 4, !tbaa.struct !98
  br label %14

14:                                               ; preds = %38, %7
  %15 = phi i32 [ %8, %7 ], [ %36, %38 ]
  %16 = phi i64 [ -1, %7 ], [ %.lcssa1, %38 ]
  %17 = shl i64 %16, 32
  %18 = ashr exact i64 %17, 32
  br label %19

19:                                               ; preds = %19, %14
  %20 = phi i64 [ %21, %19 ], [ %18, %14 ]
  %21 = add nsw i64 %20, 1
  %22 = getelementptr inbounds %class.Lit, ptr %9, i64 %21
  %23 = load i32, ptr %22, align 4
  %24 = icmp slt i32 %23, %13
  br i1 %24, label %19, label %25, !llvm.loop !99

25:                                               ; preds = %19
  %.lcssa1 = phi i64 [ %21, %19 ]
  %.lcssa = phi i32 [ %23, %19 ]
  %26 = getelementptr inbounds %class.Lit, ptr %9, i64 %.lcssa1
  %27 = trunc i64 %.lcssa1 to i32
  %28 = sext i32 %15 to i64
  br label %29

29:                                               ; preds = %29, %25
  %30 = phi i64 [ %28, %25 ], [ %31, %29 ]
  %31 = add i64 %30, -1
  %32 = getelementptr inbounds %class.Lit, ptr %9, i64 %31
  %33 = load i32, ptr %32, align 4
  %34 = icmp slt i32 %13, %33
  br i1 %34, label %29, label %35, !llvm.loop !100

35:                                               ; preds = %29
  %.lcssa3 = phi i64 [ %31, %29 ]
  %.lcssa2 = phi i32 [ %33, %29 ]
  %36 = trunc i64 %.lcssa3 to i32
  %37 = icmp slt i32 %27, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  %39 = getelementptr inbounds %class.Lit, ptr %9, i64 %.lcssa3
  store i32 %.lcssa2, ptr %26, align 4, !tbaa !62
  store i32 %.lcssa, ptr %39, align 4, !tbaa !62
  br label %14, !llvm.loop !101

40:                                               ; preds = %35
  %.lcssa5 = phi ptr [ %26, %35 ]
  %.lcssa4 = phi i32 [ %27, %35 ]
  tail call void @_Z4sortI3Lit16LessThan_defaultIS0_EEvPT_iT0_(ptr noundef nonnull %9, i32 noundef %.lcssa4) #33
  %41 = sub nsw i32 %8, %.lcssa4
  %42 = icmp slt i32 %41, 16
  br i1 %42, label %4, label %7
}

; Function Attrs: nounwind optsize uwtable
define internal void @_ZN6Solver16uncheckedEnqueueE3LitP6Clause(ptr noundef nonnull align 8 dereferenceable(536) %0, i32 %1, ptr noundef %2) #23 align 2 {
  %4 = alloca %class.Lit, align 4
  store i32 %1, ptr %4, align 4
  %5 = and i32 %1, 1
  %6 = icmp eq i32 %5, 0
  %7 = select i1 %6, i8 1, i8 -1
  %8 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 28
  %9 = ashr i32 %1, 1
  %10 = load ptr, ptr %8, align 8, !tbaa !75
  %11 = sext i32 %9 to i64
  %12 = getelementptr inbounds i8, ptr %10, i64 %11
  store i8 %7, ptr %12, align 1, !tbaa !36
  %13 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 32, i32 1
  %14 = load i32, ptr %13, align 8, !tbaa !78
  %15 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 34
  %16 = load i32, ptr %4, align 4, !tbaa.struct !98
  %17 = ashr i32 %16, 1
  %18 = load ptr, ptr %15, align 8, !tbaa !77
  %19 = sext i32 %17 to i64
  %20 = getelementptr inbounds i32, ptr %18, i64 %19
  store i32 %14, ptr %20, align 4, !tbaa !62
  %21 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 33
  %22 = load i32, ptr %4, align 4, !tbaa.struct !98
  %23 = ashr i32 %22, 1
  %24 = load ptr, ptr %21, align 8, !tbaa !73
  %25 = sext i32 %23 to i64
  %26 = getelementptr inbounds ptr, ptr %24, i64 %25
  store ptr %2, ptr %26, align 8, !tbaa !7
  %27 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 31
  call void @_ZN3vecI3LitE4pushERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %27, ptr noundef nonnull align 4 dereferenceable(4) %4) #33
  ret void
}

; Function Attrs: optsize uwtable
define internal noundef ptr @_ZN6Solver9propagateEv(ptr noundef nonnull align 8 dereferenceable(536) %0) #24 align 2 {
  %2 = alloca ptr, align 8
  %3 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 35
  %4 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 31, i32 1
  %5 = load i32, ptr %3, align 8, !tbaa !102
  %6 = load i32, ptr %4, align 8, !tbaa !50
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %132

8:                                                ; preds = %1
  %9 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 31
  %10 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 27
  %11 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 28
  br label %12

12:                                               ; preds = %126, %8
  %13 = phi i32 [ %5, %8 ], [ %127, %126 ]
  %14 = phi ptr [ null, %8 ], [ %116, %126 ]
  %15 = phi i32 [ 0, %8 ], [ %24, %126 ]
  %16 = add nsw i32 %13, 1
  store i32 %16, ptr %3, align 8, !tbaa !102
  %17 = load ptr, ptr %9, align 8, !tbaa !49
  %18 = sext i32 %13 to i64
  %19 = getelementptr inbounds %class.Lit, ptr %17, i64 %18
  %20 = load i32, ptr %19, align 4, !tbaa.struct !98
  %21 = load ptr, ptr %10, align 8, !tbaa !87
  %22 = sext i32 %20 to i64
  %23 = getelementptr inbounds %class.vec, ptr %21, i64 %22
  %24 = add nuw nsw i32 %15, 1
  %25 = load ptr, ptr %23, align 8, !tbaa !73
  %26 = getelementptr inbounds %class.vec, ptr %21, i64 %22, i32 1
  %27 = load i32, ptr %26, align 8, !tbaa !72
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds ptr, ptr %25, i64 %28
  %30 = icmp eq i32 %27, 0
  br i1 %30, label %113, label %31

31:                                               ; preds = %12
  %32 = xor i32 %20, 1
  br label %33

33:                                               ; preds = %108, %31
  %34 = phi ptr [ %14, %31 ], [ %111, %108 ]
  %35 = phi ptr [ %25, %31 ], [ %110, %108 ]
  %36 = phi ptr [ %25, %31 ], [ %109, %108 ]
  %37 = getelementptr ptr, ptr %35, i64 1
  %38 = load ptr, ptr %35, align 8, !tbaa !7
  %39 = getelementptr inbounds %class.Clause, ptr %38, i64 0, i32 2, i64 0
  %40 = load i32, ptr %39, align 4
  %41 = icmp eq i32 %40, %32
  br i1 %41, label %42, label %45

42:                                               ; preds = %33
  %43 = getelementptr inbounds %class.Clause, ptr %38, i64 0, i32 2, i64 1
  %44 = load i32, ptr %43, align 4, !tbaa !62
  store i32 %44, ptr %39, align 4, !tbaa !62
  store i32 %32, ptr %43, align 4, !tbaa.struct !98
  br label %45

45:                                               ; preds = %42, %33
  %46 = phi i32 [ %44, %42 ], [ %40, %33 ]
  %47 = ashr i32 %46, 1
  %48 = load ptr, ptr %11, align 8, !tbaa !75
  %49 = sext i32 %47 to i64
  %50 = getelementptr inbounds i8, ptr %48, i64 %49
  %51 = load i8, ptr %50, align 1, !tbaa !36
  %52 = and i32 %46, 1
  %53 = icmp eq i32 %52, 0
  %54 = sub i8 0, %51
  %55 = select i1 %53, i8 %51, i8 %54
  %56 = icmp eq i8 %55, 1
  br i1 %56, label %63, label %57

57:                                               ; preds = %45
  %58 = load i32, ptr %38, align 4, !tbaa !103
  %59 = icmp ugt i32 %58, 23
  br i1 %59, label %60, label %89

60:                                               ; preds = %57
  %61 = lshr i32 %58, 3
  %62 = zext i32 %61 to i64
  br label %68

63:                                               ; preds = %45
  %64 = getelementptr inbounds ptr, ptr %36, i64 1
  store ptr %38, ptr %36, align 8, !tbaa !7
  br label %108

65:                                               ; preds = %68
  %66 = add nuw nsw i64 %69, 1
  %67 = icmp eq i64 %66, %62
  br i1 %67, label %89, label %68, !llvm.loop !105

68:                                               ; preds = %65, %60
  %69 = phi i64 [ 2, %60 ], [ %66, %65 ]
  %70 = getelementptr inbounds %class.Clause, ptr %38, i64 0, i32 2, i64 %69
  %71 = load i32, ptr %70, align 4
  %72 = ashr i32 %71, 1
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8, ptr %48, i64 %73
  %75 = load i8, ptr %74, align 1, !tbaa !36
  %76 = and i32 %71, 1
  %77 = icmp eq i32 %76, 0
  %78 = sub i8 0, %75
  %79 = select i1 %77, i8 %75, i8 %78
  %80 = icmp eq i8 %79, -1
  br i1 %80, label %65, label %81

81:                                               ; preds = %68
  %.lcssa1 = phi i64 [ %69, %68 ]
  %.lcssa = phi i32 [ %71, %68 ]
  %82 = getelementptr inbounds %class.Clause, ptr %38, i64 0, i32 2, i64 %.lcssa1
  %83 = getelementptr inbounds %class.Clause, ptr %38, i64 0, i32 2, i64 1
  store i32 %.lcssa, ptr %83, align 4, !tbaa !62
  store i32 %32, ptr %82, align 4, !tbaa.struct !98
  %84 = load i32, ptr %83, align 4, !tbaa.struct !98
  %85 = xor i32 %84, 1
  %86 = load ptr, ptr %10, align 8, !tbaa !87
  %87 = sext i32 %85 to i64
  %88 = getelementptr inbounds %class.vec, ptr %86, i64 %87
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #31
  store ptr %38, ptr %2, align 8, !tbaa !7
  call void @_ZN3vecIP6ClauseE4pushERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %88, ptr noundef nonnull align 8 dereferenceable(8) %2) #33
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #31
  br label %108

89:                                               ; preds = %65, %57
  %90 = getelementptr ptr, ptr %36, i64 1
  store ptr %38, ptr %36, align 8, !tbaa !7
  %91 = load ptr, ptr %11, align 8, !tbaa !75
  %92 = getelementptr inbounds i8, ptr %91, i64 %49
  %93 = load i8, ptr %92, align 1, !tbaa !36
  %94 = sub i8 0, %93
  %95 = select i1 %53, i8 %93, i8 %94
  %96 = icmp eq i8 %95, -1
  br i1 %96, label %97, label %107

97:                                               ; preds = %89
  %98 = load i32, ptr %4, align 8, !tbaa !50
  store i32 %98, ptr %3, align 8, !tbaa !102
  %99 = icmp ult ptr %37, %29
  br i1 %99, label %100, label %108

100:                                              ; preds = %100, %97
  %101 = phi ptr [ %103, %100 ], [ %37, %97 ]
  %102 = phi ptr [ %105, %100 ], [ %90, %97 ]
  %103 = getelementptr inbounds ptr, ptr %101, i64 1
  %104 = load ptr, ptr %101, align 8, !tbaa !7
  %105 = getelementptr inbounds ptr, ptr %102, i64 1
  store ptr %104, ptr %102, align 8, !tbaa !7
  %106 = icmp ult ptr %103, %29
  br i1 %106, label %100, label %108, !llvm.loop !106

107:                                              ; preds = %89
  call void @_ZN6Solver16uncheckedEnqueueE3LitP6Clause(ptr noundef nonnull align 8 dereferenceable(536) %0, i32 %46, ptr noundef nonnull %38) #33
  br label %108

108:                                              ; preds = %107, %100, %97, %81, %63
  %109 = phi ptr [ %64, %63 ], [ %36, %81 ], [ %90, %107 ], [ %90, %97 ], [ %105, %100 ]
  %110 = phi ptr [ %37, %63 ], [ %37, %81 ], [ %37, %107 ], [ %37, %97 ], [ %103, %100 ]
  %111 = phi ptr [ %34, %63 ], [ %34, %81 ], [ %34, %107 ], [ %38, %97 ], [ %38, %100 ]
  %112 = icmp eq ptr %110, %29
  br i1 %112, label %113, label %33, !llvm.loop !107

113:                                              ; preds = %108, %12
  %114 = phi ptr [ %25, %12 ], [ %109, %108 ]
  %115 = phi ptr [ %25, %12 ], [ %29, %108 ]
  %116 = phi ptr [ %14, %12 ], [ %111, %108 ]
  %117 = ptrtoint ptr %115 to i64
  %118 = ptrtoint ptr %114 to i64
  %119 = sub i64 %117, %118
  %120 = lshr exact i64 %119, 3
  %121 = trunc i64 %120 to i32
  %122 = icmp sgt i32 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %113
  %124 = load i32, ptr %26, align 8, !tbaa !72
  %125 = sub i32 %124, %121
  store i32 %125, ptr %26, align 8, !tbaa !72
  br label %126

126:                                              ; preds = %123, %113
  %127 = load i32, ptr %3, align 8, !tbaa !102
  %128 = load i32, ptr %4, align 8, !tbaa !50
  %129 = icmp slt i32 %127, %128
  br i1 %129, label %12, label %130, !llvm.loop !108

130:                                              ; preds = %126
  %.lcssa3 = phi ptr [ %116, %126 ]
  %.lcssa2 = phi i32 [ %24, %126 ]
  %131 = zext i32 %.lcssa2 to i64
  br label %132

132:                                              ; preds = %130, %1
  %133 = phi i64 [ 0, %1 ], [ %131, %130 ]
  %134 = phi ptr [ null, %1 ], [ %.lcssa3, %130 ]
  %135 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 15
  %136 = load i64, ptr %135, align 8, !tbaa !29
  %137 = add i64 %136, %133
  store i64 %137, ptr %135, align 8, !tbaa !29
  %138 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 37
  %139 = load i64, ptr %138, align 8, !tbaa !109
  %140 = sub nsw i64 %139, %133
  store i64 %140, ptr %138, align 8, !tbaa !109
  ret ptr %134
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #26

; Function Attrs: optsize uwtable
define internal void @_ZN6ClauseC2I3vecI3LitEEERKT_b(ptr noundef nonnull align 4 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i1 noundef zeroext %2) unnamed_addr #24 comdat align 2 {
  %4 = getelementptr inbounds %class.vec, ptr %1, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !50
  %6 = shl i32 %5, 3
  %7 = zext i1 %2 to i32
  %8 = or i32 %6, %7
  store i32 %8, ptr %0, align 4, !tbaa !103
  %9 = icmp sgt i32 %5, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %3
  %11 = load ptr, ptr %1, align 8, !tbaa !49
  br label %13

12:                                               ; preds = %13, %3
  br i1 %2, label %22, label %24

13:                                               ; preds = %13, %10
  %14 = phi i64 [ 0, %10 ], [ %18, %13 ]
  %15 = getelementptr inbounds %class.Lit, ptr %11, i64 %14
  %16 = getelementptr inbounds %class.Clause, ptr %0, i64 0, i32 2, i64 %14
  %17 = load i32, ptr %15, align 4, !tbaa !62
  store i32 %17, ptr %16, align 4, !tbaa !62
  %18 = add nuw nsw i64 %14, 1
  %19 = load i32, ptr %4, align 8, !tbaa !50
  %20 = sext i32 %19 to i64
  %21 = icmp slt i64 %18, %20
  br i1 %21, label %13, label %12, !llvm.loop !110

22:                                               ; preds = %12
  %23 = getelementptr inbounds %class.Clause, ptr %0, i64 0, i32 1
  store float 0.000000e+00, ptr %23, align 4, !tbaa !36
  br label %43

24:                                               ; preds = %12
  %25 = icmp ult i32 %8, 8
  br i1 %25, label %40, label %26

26:                                               ; preds = %24
  %27 = and i32 %5, 536870911
  %28 = zext i32 %27 to i64
  br label %29

29:                                               ; preds = %29, %26
  %30 = phi i64 [ 0, %26 ], [ %38, %29 ]
  %31 = phi i32 [ 0, %26 ], [ %37, %29 ]
  %32 = getelementptr inbounds %class.Clause, ptr %0, i64 0, i32 2, i64 %30
  %33 = load i32, ptr %32, align 4, !tbaa.struct !98
  %34 = lshr i32 %33, 1
  %35 = and i32 %34, 31
  %36 = shl nuw i32 1, %35
  %37 = or i32 %36, %31
  %38 = add nuw nsw i64 %30, 1
  %39 = icmp eq i64 %38, %28
  br i1 %39, label %40, label %29, !llvm.loop !111

40:                                               ; preds = %29, %24
  %41 = phi i32 [ 0, %24 ], [ %37, %29 ]
  %42 = getelementptr inbounds %class.Clause, ptr %0, i64 0, i32 1
  store i32 %41, ptr %42, align 4, !tbaa !36
  br label %43

43:                                               ; preds = %40, %22
  ret void
}

; Function Attrs: optsize uwtable
define internal void @_ZN6Solver12attachClauseER6Clause(ptr nocapture noundef nonnull align 8 dereferenceable(536) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) #24 align 2 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 27
  %6 = getelementptr inbounds %class.Clause, ptr %1, i64 0, i32 2, i64 0
  %7 = load i32, ptr %6, align 4, !tbaa.struct !98
  %8 = xor i32 %7, 1
  %9 = load ptr, ptr %5, align 8, !tbaa !87
  %10 = sext i32 %8 to i64
  %11 = getelementptr inbounds %class.vec, ptr %9, i64 %10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #31
  store ptr %1, ptr %3, align 8, !tbaa !7
  call void @_ZN3vecIP6ClauseE4pushERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull align 8 dereferenceable(8) %3) #33
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #31
  %12 = getelementptr inbounds %class.Clause, ptr %1, i64 0, i32 2, i64 1
  %13 = load i32, ptr %12, align 4, !tbaa.struct !98
  %14 = xor i32 %13, 1
  %15 = load ptr, ptr %5, align 8, !tbaa !87
  %16 = sext i32 %14 to i64
  %17 = getelementptr inbounds %class.vec, ptr %15, i64 %16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #31
  store ptr %1, ptr %4, align 8, !tbaa !7
  call void @_ZN3vecIP6ClauseE4pushERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %17, ptr noundef nonnull align 8 dereferenceable(8) %4) #33
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #31
  %18 = load i32, ptr %1, align 4, !tbaa !103
  %19 = and i32 %18, 1
  %20 = icmp eq i32 %19, 0
  %21 = lshr i32 %18, 3
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 17
  %24 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 18
  %25 = select i1 %20, ptr %23, ptr %24
  %26 = load i64, ptr %25, align 8, !tbaa !112
  %27 = add i64 %26, %22
  store i64 %27, ptr %25, align 8, !tbaa !112
  ret void
}

; Function Attrs: optsize uwtable
define internal void @_Z13selectionSortI3Lit16LessThan_defaultIS0_EEvPT_iT0_(ptr noundef %0, i32 noundef %1) #24 comdat {
  %3 = icmp sgt i32 %1, 1
  br i1 %3, label %4, label %37

4:                                                ; preds = %2
  %5 = add nsw i32 %1, -1
  %6 = zext i32 %1 to i64
  %7 = zext i32 %5 to i64
  %8 = zext i32 %1 to i64
  br label %9

9:                                                ; preds = %28, %4
  %10 = phi i64 [ 0, %4 ], [ %12, %28 ]
  %11 = phi i64 [ 1, %4 ], [ %35, %28 ]
  %12 = add nuw nsw i64 %10, 1
  %13 = icmp ult i64 %12, %6
  %14 = trunc i64 %10 to i32
  br i1 %13, label %15, label %28

15:                                               ; preds = %15, %9
  %16 = phi i64 [ %26, %15 ], [ %11, %9 ]
  %17 = phi i32 [ %25, %15 ], [ %14, %9 ]
  %18 = getelementptr inbounds %class.Lit, ptr %0, i64 %16
  %19 = load i32, ptr %18, align 4, !tbaa.struct !98
  %20 = sext i32 %17 to i64
  %21 = getelementptr inbounds %class.Lit, ptr %0, i64 %20
  %22 = load i32, ptr %21, align 4, !tbaa.struct !98
  %23 = icmp slt i32 %19, %22
  %24 = trunc i64 %16 to i32
  %25 = select i1 %23, i32 %24, i32 %17
  %26 = add nuw nsw i64 %16, 1
  %27 = icmp eq i64 %26, %8
  br i1 %27, label %28, label %15, !llvm.loop !113

28:                                               ; preds = %15, %9
  %29 = phi i32 [ %14, %9 ], [ %25, %15 ]
  %30 = getelementptr inbounds %class.Lit, ptr %0, i64 %10
  %31 = load i32, ptr %30, align 4, !tbaa !62
  %32 = sext i32 %29 to i64
  %33 = getelementptr inbounds %class.Lit, ptr %0, i64 %32
  %34 = load i32, ptr %33, align 4, !tbaa !62
  store i32 %34, ptr %30, align 4, !tbaa !62
  store i32 %31, ptr %33, align 4, !tbaa !62
  %35 = add nuw nsw i64 %11, 1
  %36 = icmp eq i64 %12, %7
  br i1 %36, label %37, label %9, !llvm.loop !114

37:                                               ; preds = %28, %2
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal void @_ZN6Solver12detachClauseER6Clause(ptr nocapture noundef nonnull align 8 dereferenceable(536) %0, ptr noundef nonnull readonly align 4 dereferenceable(8) %1) #27 align 2 {
  %3 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 27
  %4 = getelementptr inbounds %class.Clause, ptr %1, i64 0, i32 2, i64 0
  %5 = load i32, ptr %4, align 4, !tbaa.struct !98
  %6 = xor i32 %5, 1
  %7 = load ptr, ptr %3, align 8, !tbaa !87
  %8 = sext i32 %6 to i64
  %9 = getelementptr inbounds %class.vec, ptr %7, i64 %8
  %10 = getelementptr inbounds %class.vec, ptr %7, i64 %8, i32 1
  %11 = load i32, ptr %10, align 8, !tbaa !72
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %28

13:                                               ; preds = %2
  %14 = load ptr, ptr %9, align 8, !tbaa !73
  %15 = zext i32 %11 to i64
  br label %16

16:                                               ; preds = %21, %13
  %17 = phi i64 [ 0, %13 ], [ %22, %21 ]
  %18 = getelementptr inbounds ptr, ptr %14, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !7
  %20 = icmp eq ptr %19, %1
  br i1 %20, label %26, label %21

21:                                               ; preds = %16
  %22 = add nuw nsw i64 %17, 1
  %23 = icmp eq i64 %22, %15
  br i1 %23, label %24, label %16, !llvm.loop !115

24:                                               ; preds = %21
  %25 = add nsw i32 %11, -1
  br label %45

26:                                               ; preds = %16
  %.lcssa2 = phi i64 [ %17, %16 ]
  %27 = trunc i64 %.lcssa2 to i32
  br label %28

28:                                               ; preds = %26, %2
  %29 = phi i32 [ 0, %2 ], [ %27, %26 ]
  %30 = add nsw i32 %11, -1
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %45

32:                                               ; preds = %28
  %33 = zext i32 %29 to i64
  %34 = zext i32 %30 to i64
  br label %35

35:                                               ; preds = %35, %32
  %36 = phi i64 [ %33, %32 ], [ %37, %35 ]
  %37 = add nuw nsw i64 %36, 1
  %38 = load ptr, ptr %9, align 8, !tbaa !73
  %39 = getelementptr inbounds ptr, ptr %38, i64 %37
  %40 = load ptr, ptr %39, align 8, !tbaa !7
  %41 = getelementptr inbounds ptr, ptr %38, i64 %36
  store ptr %40, ptr %41, align 8, !tbaa !7
  %42 = icmp eq i64 %37, %34
  br i1 %42, label %43, label %35, !llvm.loop !116

43:                                               ; preds = %35
  %44 = load ptr, ptr %3, align 8, !tbaa !87
  br label %45

45:                                               ; preds = %43, %28, %24
  %46 = phi ptr [ %7, %24 ], [ %7, %28 ], [ %44, %43 ]
  %47 = phi i32 [ %25, %24 ], [ %30, %28 ], [ %30, %43 ]
  store i32 %47, ptr %10, align 8, !tbaa !72
  %48 = getelementptr inbounds %class.Clause, ptr %1, i64 0, i32 2, i64 1
  %49 = load i32, ptr %48, align 4, !tbaa.struct !98
  %50 = xor i32 %49, 1
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %class.vec, ptr %46, i64 %51
  %53 = getelementptr inbounds %class.vec, ptr %46, i64 %51, i32 1
  %54 = load i32, ptr %53, align 8, !tbaa !72
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %56, label %71

56:                                               ; preds = %45
  %57 = load ptr, ptr %52, align 8, !tbaa !73
  %58 = zext i32 %54 to i64
  br label %59

59:                                               ; preds = %64, %56
  %60 = phi i64 [ 0, %56 ], [ %65, %64 ]
  %61 = getelementptr inbounds ptr, ptr %57, i64 %60
  %62 = load ptr, ptr %61, align 8, !tbaa !7
  %63 = icmp eq ptr %62, %1
  br i1 %63, label %69, label %64

64:                                               ; preds = %59
  %65 = add nuw nsw i64 %60, 1
  %66 = icmp eq i64 %65, %58
  br i1 %66, label %67, label %59, !llvm.loop !115

67:                                               ; preds = %64
  %68 = add nsw i32 %54, -1
  br label %86

69:                                               ; preds = %59
  %.lcssa = phi i64 [ %60, %59 ]
  %70 = trunc i64 %.lcssa to i32
  br label %71

71:                                               ; preds = %69, %45
  %72 = phi i32 [ 0, %45 ], [ %70, %69 ]
  %73 = add nsw i32 %54, -1
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %86

75:                                               ; preds = %71
  %76 = zext i32 %72 to i64
  %77 = zext i32 %73 to i64
  br label %78

78:                                               ; preds = %78, %75
  %79 = phi i64 [ %76, %75 ], [ %80, %78 ]
  %80 = add nuw nsw i64 %79, 1
  %81 = load ptr, ptr %52, align 8, !tbaa !73
  %82 = getelementptr inbounds ptr, ptr %81, i64 %80
  %83 = load ptr, ptr %82, align 8, !tbaa !7
  %84 = getelementptr inbounds ptr, ptr %81, i64 %79
  store ptr %83, ptr %84, align 8, !tbaa !7
  %85 = icmp eq i64 %80, %77
  br i1 %85, label %86, label %78, !llvm.loop !116

86:                                               ; preds = %78, %71, %67
  %87 = phi i32 [ %68, %67 ], [ %73, %71 ], [ %73, %78 ]
  store i32 %87, ptr %53, align 8, !tbaa !72
  %88 = load i32, ptr %1, align 4, !tbaa !103
  %89 = and i32 %88, 1
  %90 = icmp eq i32 %89, 0
  %91 = lshr i32 %88, 3
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 17
  %94 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 18
  %95 = select i1 %90, ptr %93, ptr %94
  %96 = load i64, ptr %95, align 8, !tbaa !112
  %97 = sub i64 %96, %92
  store i64 %97, ptr %95, align 8, !tbaa !112
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal noundef zeroext i1 @_ZNK6Solver9satisfiedERK6Clause(ptr nocapture noundef nonnull readonly align 8 dereferenceable(536) %0, ptr nocapture noundef nonnull readonly align 4 dereferenceable(8) %1) #28 align 2 {
  %3 = load i32, ptr %1, align 4, !tbaa !103
  %4 = icmp ugt i32 %3, 7
  br i1 %4, label %5, label %40

5:                                                ; preds = %2
  %6 = lshr i32 %3, 3
  %7 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 28
  %8 = load ptr, ptr %7, align 8, !tbaa !75
  %9 = zext i32 %6 to i64
  %10 = zext i32 %6 to i64
  %11 = getelementptr inbounds %class.Clause, ptr %1, i64 0, i32 2, i64 0
  %12 = load i32, ptr %11, align 4, !tbaa.struct !98
  %13 = ashr i32 %12, 1
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i8, ptr %8, i64 %14
  %16 = load i8, ptr %15, align 1, !tbaa !36
  %17 = and i32 %12, 1
  %18 = icmp eq i32 %17, 0
  %19 = sub i8 0, %16
  %20 = select i1 %18, i8 %16, i8 %19
  %21 = icmp eq i8 %20, 1
  br i1 %21, label %40, label %22

22:                                               ; preds = %26, %5
  %23 = phi i64 [ %24, %26 ], [ 0, %5 ]
  %24 = add nuw nsw i64 %23, 1
  %25 = icmp eq i64 %24, %10
  br i1 %25, label %38, label %26, !llvm.loop !117

26:                                               ; preds = %22
  %27 = getelementptr inbounds %class.Clause, ptr %1, i64 0, i32 2, i64 %24
  %28 = load i32, ptr %27, align 4, !tbaa.struct !98
  %29 = ashr i32 %28, 1
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, ptr %8, i64 %30
  %32 = load i8, ptr %31, align 1, !tbaa !36
  %33 = and i32 %28, 1
  %34 = icmp eq i32 %33, 0
  %35 = sub i8 0, %32
  %36 = select i1 %34, i8 %32, i8 %35
  %37 = icmp eq i8 %36, 1
  br i1 %37, label %38, label %22, !llvm.loop !117

38:                                               ; preds = %26, %22
  %.lcssa = phi i64 [ %24, %26 ], [ %24, %22 ]
  %39 = icmp ult i64 %.lcssa, %9
  br label %40

40:                                               ; preds = %38, %5, %2
  %41 = phi i1 [ false, %2 ], [ true, %5 ], [ %39, %38 ]
  ret i1 %41
}

; Function Attrs: mustprogress optsize uwtable
define internal void @_ZN6Solver11cancelUntilEi(ptr noundef nonnull align 8 dereferenceable(536) %0, i32 noundef %1) #0 align 2 {
  %3 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 32, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !78
  %5 = icmp sgt i32 %4, %1
  br i1 %5, label %6, label %67

6:                                                ; preds = %2
  %7 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 31
  %8 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 31, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !50
  %10 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 32
  %11 = sext i32 %1 to i64
  %12 = load ptr, ptr %10, align 8, !tbaa !77
  %13 = getelementptr inbounds i32, ptr %12, i64 %11
  %14 = load i32, ptr %13, align 4, !tbaa !62
  %15 = icmp sgt i32 %9, %14
  br i1 %15, label %16, label %25

16:                                               ; preds = %6
  %17 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 28
  %18 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 39
  %19 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 39, i32 2, i32 1
  %20 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 39, i32 2
  %21 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 30
  %22 = sext i32 %9 to i64
  br label %38

23:                                               ; preds = %61
  %.lcssa1 = phi ptr [ %62, %61 ]
  %.lcssa = phi i32 [ %64, %61 ]
  %24 = load i32, ptr %8, align 8, !tbaa !50
  br label %25

25:                                               ; preds = %23, %6
  %26 = phi i32 [ %9, %6 ], [ %24, %23 ]
  %27 = phi ptr [ %12, %6 ], [ %.lcssa1, %23 ]
  %28 = phi i32 [ %14, %6 ], [ %.lcssa, %23 ]
  %29 = getelementptr inbounds i32, ptr %27, i64 %11
  %30 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 35
  store i32 %28, ptr %30, align 8, !tbaa !102
  %31 = load i32, ptr %29, align 4, !tbaa !62
  %32 = icmp sgt i32 %26, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %25
  store i32 %31, ptr %8, align 8, !tbaa !50
  br label %34

34:                                               ; preds = %33, %25
  %35 = load i32, ptr %3, align 8, !tbaa !78
  %36 = icmp sgt i32 %35, %1
  br i1 %36, label %37, label %67

37:                                               ; preds = %34
  store i32 %1, ptr %3, align 8, !tbaa !78
  br label %67

38:                                               ; preds = %61, %16
  %39 = phi i64 [ %22, %16 ], [ %40, %61 ]
  %40 = add nsw i64 %39, -1
  %41 = load ptr, ptr %7, align 8, !tbaa !49
  %42 = getelementptr inbounds %class.Lit, ptr %41, i64 %40
  %43 = load i32, ptr %42, align 4, !tbaa.struct !98
  %44 = ashr i32 %43, 1
  %45 = load ptr, ptr %17, align 8, !tbaa !75
  %46 = sext i32 %44 to i64
  %47 = getelementptr inbounds i8, ptr %45, i64 %46
  store i8 0, ptr %47, align 1, !tbaa !36
  %48 = load i32, ptr %19, align 8, !tbaa !78
  %49 = icmp sgt i32 %48, %44
  br i1 %49, label %50, label %55

50:                                               ; preds = %38
  %51 = load ptr, ptr %20, align 8, !tbaa !77
  %52 = getelementptr inbounds i32, ptr %51, i64 %46
  %53 = load i32, ptr %52, align 4, !tbaa !62
  %54 = icmp sgt i32 %53, -1
  br i1 %54, label %61, label %55

55:                                               ; preds = %50, %38
  %56 = load ptr, ptr %21, align 8, !tbaa !75
  %57 = getelementptr inbounds i8, ptr %56, i64 %46
  %58 = load i8, ptr %57, align 1, !tbaa !36
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %55
  tail call void @_ZN4HeapIN6Solver10VarOrderLtEE6insertEi(ptr noundef nonnull align 8 dereferenceable(40) %18, i32 noundef %44) #33
  br label %61

61:                                               ; preds = %60, %55, %50
  %62 = load ptr, ptr %10, align 8, !tbaa !77
  %63 = getelementptr inbounds i32, ptr %62, i64 %11
  %64 = load i32, ptr %63, align 4, !tbaa !62
  %65 = sext i32 %64 to i64
  %66 = icmp sgt i64 %40, %65
  br i1 %66, label %38, label %23, !llvm.loop !118

67:                                               ; preds = %37, %34, %2
  ret void
}

; Function Attrs: optsize uwtable
define internal i32 @_ZN6Solver13pickBranchLitEid(ptr noundef nonnull align 8 dereferenceable(536) %0, i32 noundef %1, double noundef %2) #24 align 2 {
  %4 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 40
  %5 = load double, ptr %4, align 8, !tbaa !63
  %6 = fmul double %5, 0x413534E400000000
  %7 = fdiv double %6, 0x41DFFFFFFFC00000
  %8 = fptosi double %7 to i32
  %9 = sitofp i32 %8 to double
  %10 = fneg double %9
  %11 = tail call double @llvm.fmuladd.f64(double %10, double 0x41DFFFFFFFC00000, double %6)
  store double %11, ptr %4, align 8, !tbaa !63
  %12 = fdiv double %11, 0x41DFFFFFFFC00000
  %13 = fcmp olt double %12, %2
  br i1 %13, label %14, label %50

14:                                               ; preds = %3
  %15 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 39, i32 1, i32 1
  %16 = load i32, ptr %15, align 8, !tbaa !78
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %50, label %18

18:                                               ; preds = %14
  %19 = fmul double %11, 0x413534E400000000
  %20 = fdiv double %19, 0x41DFFFFFFFC00000
  %21 = fptosi double %20 to i32
  %22 = sitofp i32 %21 to double
  %23 = fneg double %22
  %24 = tail call double @llvm.fmuladd.f64(double %23, double 0x41DFFFFFFFC00000, double %19)
  store double %24, ptr %4, align 8, !tbaa !63
  %25 = fdiv double %24, 0x41DFFFFFFFC00000
  %26 = sitofp i32 %16 to double
  %27 = fmul double %25, %26
  %28 = fptosi double %27 to i32
  %29 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 39, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !77
  %31 = sext i32 %28 to i64
  %32 = getelementptr inbounds i32, ptr %30, i64 %31
  %33 = load i32, ptr %32, align 4, !tbaa !62
  %34 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 28
  %35 = load ptr, ptr %34, align 8, !tbaa !75
  %36 = sext i32 %33 to i64
  %37 = getelementptr inbounds i8, ptr %35, i64 %36
  %38 = load i8, ptr %37, align 1, !tbaa !36
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %18
  %41 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 30
  %42 = load ptr, ptr %41, align 8, !tbaa !75
  %43 = getelementptr inbounds i8, ptr %42, i64 %36
  %44 = load i8, ptr %43, align 1, !tbaa !36
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %40
  %47 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 14
  %48 = load i64, ptr %47, align 8, !tbaa !28
  %49 = add i64 %48, 1
  store i64 %49, ptr %47, align 8, !tbaa !28
  br label %50

50:                                               ; preds = %46, %40, %18, %14, %3
  %51 = phi i32 [ -1, %14 ], [ %33, %46 ], [ %33, %40 ], [ -1, %3 ], [ %33, %18 ]
  %52 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 30
  %53 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 28
  %54 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 39, i32 1, i32 1
  %55 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 39
  br label %56

56:                                               ; preds = %73, %50
  %57 = phi i32 [ %51, %50 ], [ %74, %73 ]
  %58 = icmp eq i32 %57, -1
  br i1 %58, label %70, label %59

59:                                               ; preds = %56
  %60 = load ptr, ptr %53, align 8, !tbaa !75
  %61 = sext i32 %57 to i64
  %62 = getelementptr inbounds i8, ptr %60, i64 %61
  %63 = load i8, ptr %62, align 1, !tbaa !36
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %59
  %66 = load ptr, ptr %52, align 8, !tbaa !75
  %67 = getelementptr inbounds i8, ptr %66, i64 %61
  %68 = load i8, ptr %67, align 1, !tbaa !36
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %65, %59, %56
  %71 = load i32, ptr %54, align 8, !tbaa !78
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %75, label %73

73:                                               ; preds = %70
  %74 = tail call noundef i32 @_ZN4HeapIN6Solver10VarOrderLtEE9removeMinEv(ptr noundef nonnull align 8 dereferenceable(40) %55) #33
  br label %56, !llvm.loop !119

75:                                               ; preds = %70, %65
  %76 = phi i32 [ %57, %65 ], [ -1, %70 ]
  switch i32 %1, label %97 [
    i32 3, label %85
    i32 1, label %77
    i32 2, label %78
  ]

77:                                               ; preds = %75
  br label %97

78:                                               ; preds = %75
  %79 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 29
  %80 = load ptr, ptr %79, align 8, !tbaa !75
  %81 = sext i32 %76 to i64
  %82 = getelementptr inbounds i8, ptr %80, i64 %81
  %83 = load i8, ptr %82, align 1, !tbaa !36
  %84 = icmp ne i8 %83, 0
  br label %97

85:                                               ; preds = %75
  %86 = load double, ptr %4, align 8, !tbaa !63
  %87 = fmul double %86, 0x413534E400000000
  %88 = fdiv double %87, 0x41DFFFFFFFC00000
  %89 = fptosi double %88 to i32
  %90 = sitofp i32 %89 to double
  %91 = fneg double %90
  %92 = tail call double @llvm.fmuladd.f64(double %91, double 0x41DFFFFFFFC00000, double %87)
  store double %92, ptr %4, align 8, !tbaa !63
  %93 = fdiv double %92, 0x41DFFFFFFFC00000
  %94 = fmul double %93, 2.000000e+00
  %95 = fptosi double %94 to i32
  %96 = icmp ne i32 %95, 0
  br label %97

97:                                               ; preds = %85, %78, %77, %75
  %98 = phi i1 [ %96, %85 ], [ %84, %78 ], [ true, %77 ], [ false, %75 ]
  %99 = icmp eq i32 %76, -1
  %100 = shl nsw i32 %76, 1
  %101 = zext i1 %98 to i32
  %102 = or i32 %100, %101
  %103 = select i1 %99, i32 -2, i32 %102
  ret i32 %103
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #16

; Function Attrs: mustprogress optsize uwtable
define internal noundef i32 @_ZN4HeapIN6Solver10VarOrderLtEE9removeMinEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #0 comdat align 2 {
  %2 = getelementptr inbounds %class.Heap, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !77
  %4 = load i32, ptr %3, align 4, !tbaa !62
  %5 = getelementptr inbounds %class.Heap, ptr %0, i64 0, i32 1, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !78
  %7 = add nsw i32 %6, -1
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds i32, ptr %3, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !62
  store i32 %10, ptr %3, align 4, !tbaa !62
  %11 = getelementptr inbounds %class.Heap, ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !77
  %13 = sext i32 %10 to i64
  %14 = getelementptr inbounds i32, ptr %12, i64 %13
  store i32 0, ptr %14, align 4, !tbaa !62
  %15 = sext i32 %4 to i64
  %16 = getelementptr inbounds i32, ptr %12, i64 %15
  store i32 -1, ptr %16, align 4, !tbaa !62
  %17 = load i32, ptr %5, align 8, !tbaa !78
  %18 = add nsw i32 %17, -1
  store i32 %18, ptr %5, align 8, !tbaa !78
  %19 = icmp sgt i32 %17, 2
  br i1 %19, label %20, label %79

20:                                               ; preds = %1
  %21 = load i32, ptr %3, align 4, !tbaa !62
  %22 = sext i32 %21 to i64
  %23 = load ptr, ptr %0, align 8
  %24 = load ptr, ptr %23, align 8, !tbaa !81
  %25 = getelementptr inbounds double, ptr %24, i64 %22
  %26 = load double, ptr %25, align 8, !tbaa !63
  %27 = load ptr, ptr %11, align 8
  br label %28

28:                                               ; preds = %66, %20
  %29 = phi i32 [ %18, %20 ], [ %72, %66 ]
  %30 = phi i32 [ 1, %20 ], [ %71, %66 ]
  %31 = phi i32 [ 0, %20 ], [ %70, %66 ]
  %32 = phi i32 [ 0, %20 ], [ %64, %66 ]
  %33 = add i32 %31, 2
  %34 = icmp slt i32 %33, %29
  br i1 %34, label %42, label %35

35:                                               ; preds = %28
  %36 = sext i32 %30 to i64
  %37 = getelementptr inbounds i32, ptr %3, i64 %36
  %38 = load i32, ptr %37, align 4, !tbaa !62
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds double, ptr %24, i64 %39
  %41 = load double, ptr %40, align 8, !tbaa !63
  br label %56

42:                                               ; preds = %28
  %43 = sext i32 %33 to i64
  %44 = getelementptr inbounds i32, ptr %3, i64 %43
  %45 = load i32, ptr %44, align 4, !tbaa !62
  %46 = sext i32 %30 to i64
  %47 = getelementptr inbounds i32, ptr %3, i64 %46
  %48 = load i32, ptr %47, align 4, !tbaa !62
  %49 = sext i32 %45 to i64
  %50 = getelementptr inbounds double, ptr %24, i64 %49
  %51 = load double, ptr %50, align 8, !tbaa !63
  %52 = sext i32 %48 to i64
  %53 = getelementptr inbounds double, ptr %24, i64 %52
  %54 = load double, ptr %53, align 8, !tbaa !63
  %55 = fcmp ogt double %51, %54
  br i1 %55, label %60, label %56

56:                                               ; preds = %42, %35
  %57 = phi i64 [ %39, %35 ], [ %52, %42 ]
  %58 = phi double [ %41, %35 ], [ %54, %42 ]
  %59 = phi i32 [ %38, %35 ], [ %48, %42 ]
  br label %60

60:                                               ; preds = %56, %42
  %61 = phi i64 [ %49, %42 ], [ %57, %56 ]
  %62 = phi double [ %51, %42 ], [ %58, %56 ]
  %63 = phi i32 [ %45, %42 ], [ %59, %56 ]
  %64 = phi i32 [ %33, %42 ], [ %30, %56 ]
  %65 = fcmp ogt double %62, %26
  br i1 %65, label %66, label %74

66:                                               ; preds = %60
  %67 = sext i32 %32 to i64
  %68 = getelementptr inbounds i32, ptr %3, i64 %67
  store i32 %63, ptr %68, align 4, !tbaa !62
  %69 = getelementptr inbounds i32, ptr %27, i64 %61
  store i32 %32, ptr %69, align 4, !tbaa !62
  %70 = shl nsw i32 %64, 1
  %71 = or i32 %70, 1
  %72 = load i32, ptr %5, align 8, !tbaa !78
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %28, label %74

74:                                               ; preds = %66, %60
  %75 = phi i32 [ %64, %66 ], [ %32, %60 ]
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, ptr %3, i64 %76
  store i32 %21, ptr %77, align 4, !tbaa !62
  %78 = getelementptr inbounds i32, ptr %27, i64 %22
  store i32 %75, ptr %78, align 4, !tbaa !62
  br label %79

79:                                               ; preds = %74, %1
  ret i32 %4
}

; Function Attrs: optsize uwtable
define internal void @_ZN6Solver7analyzeEP6ClauseR3vecI3LitERi(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr nocapture noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr nocapture noundef nonnull align 4 dereferenceable(4) %3) #24 align 2 {
  %5 = alloca %class.Lit, align 4
  tail call void @_ZN3vecI3LitE4pushEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #33
  %6 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 31
  %7 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 31, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !50
  %9 = add nsw i32 %8, -1
  store i32 0, ptr %3, align 4, !tbaa !62
  %10 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 33
  %11 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 24
  %12 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 23, i32 1
  %13 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 23
  %14 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 43
  %15 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 34
  %16 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 26
  %17 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 25
  %18 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 28, i32 1
  %19 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 39
  %20 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 39, i32 2, i32 1
  %21 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 39, i32 2
  %22 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 32, i32 1
  br label %23

23:                                               ; preds = %163, %4
  %24 = phi i32 [ -2, %4 ], [ %.lcssa8, %163 ]
  %25 = phi i32 [ %9, %4 ], [ %165, %163 ]
  %26 = phi i32 [ 0, %4 ], [ %169, %163 ]
  %27 = phi ptr [ %1, %4 ], [ %168, %163 ]
  %28 = load i32, ptr %27, align 4, !tbaa !103
  %29 = and i32 %28, 1
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %59, label %31

31:                                               ; preds = %23
  %32 = load double, ptr %11, align 8, !tbaa !68
  %33 = getelementptr inbounds %class.Clause, ptr %27, i64 0, i32 1
  %34 = load float, ptr %33, align 4, !tbaa !120
  %35 = fpext float %34 to double
  %36 = fadd double %32, %35
  %37 = fptrunc double %36 to float
  store float %37, ptr %33, align 4, !tbaa !120
  %38 = fpext float %37 to double
  %39 = fcmp ogt double %38, 1.000000e+20
  br i1 %39, label %40, label %59

40:                                               ; preds = %31
  %41 = load i32, ptr %12, align 8, !tbaa !72
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = load ptr, ptr %13, align 8, !tbaa !73
  %45 = zext i32 %41 to i64
  br label %48

46:                                               ; preds = %48, %40
  %47 = fmul double %32, 0x3BC79CA10C924223
  store double %47, ptr %11, align 8, !tbaa !68
  br label %59

48:                                               ; preds = %48, %43
  %49 = phi i64 [ 0, %43 ], [ %57, %48 ]
  %50 = getelementptr inbounds ptr, ptr %44, i64 %49
  %51 = load ptr, ptr %50, align 8, !tbaa !7
  %52 = getelementptr inbounds %class.Clause, ptr %51, i64 0, i32 1
  %53 = load float, ptr %52, align 4, !tbaa !120
  %54 = fpext float %53 to double
  %55 = fmul double %54, 0x3BC79CA10C924223
  %56 = fptrunc double %55 to float
  store float %56, ptr %52, align 4, !tbaa !120
  %57 = add nuw nsw i64 %49, 1
  %58 = icmp eq i64 %57, %45
  br i1 %58, label %46, label %48, !llvm.loop !122

59:                                               ; preds = %46, %31, %23
  %60 = icmp ne i32 %24, -2
  %61 = zext i1 %60 to i32
  %62 = lshr i32 %28, 3
  %63 = icmp ugt i32 %62, %61
  br i1 %63, label %64, label %66

64:                                               ; preds = %59
  %65 = zext i1 %60 to i64
  br label %71

66:                                               ; preds = %146, %59
  %67 = phi i32 [ %26, %59 ], [ %147, %146 ]
  %68 = load ptr, ptr %6, align 8, !tbaa !49
  %69 = load ptr, ptr %14, align 8, !tbaa !75
  %70 = sext i32 %25 to i64
  br label %153

71:                                               ; preds = %146, %64
  %72 = phi i64 [ %65, %64 ], [ %148, %146 ]
  %73 = phi i32 [ %26, %64 ], [ %147, %146 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #31
  %74 = getelementptr inbounds %class.Clause, ptr %27, i64 0, i32 2, i64 %72
  %75 = load i32, ptr %74, align 4, !tbaa !62
  store i32 %75, ptr %5, align 4, !tbaa !62
  %76 = ashr i32 %75, 1
  %77 = load ptr, ptr %14, align 8, !tbaa !75
  %78 = sext i32 %76 to i64
  %79 = getelementptr inbounds i8, ptr %77, i64 %78
  %80 = load i8, ptr %79, align 1, !tbaa !36
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %82, label %146

82:                                               ; preds = %71
  %83 = load ptr, ptr %15, align 8, !tbaa !77
  %84 = getelementptr inbounds i32, ptr %83, i64 %78
  %85 = load i32, ptr %84, align 4, !tbaa !62
  %86 = icmp sgt i32 %85, 0
  br i1 %86, label %87, label %146

87:                                               ; preds = %82
  %88 = load double, ptr %16, align 8, !tbaa !69
  %89 = load ptr, ptr %17, align 8, !tbaa !81
  %90 = getelementptr inbounds double, ptr %89, i64 %78
  %91 = load double, ptr %90, align 8, !tbaa !63
  %92 = fadd double %88, %91
  store double %92, ptr %90, align 8, !tbaa !63
  %93 = fcmp ogt double %92, 1.000000e+100
  br i1 %93, label %94, label %109

94:                                               ; preds = %87
  %95 = load i32, ptr %18, align 8, !tbaa !51
  %96 = icmp sgt i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %94
  %98 = zext i32 %95 to i64
  br label %102

99:                                               ; preds = %102, %94
  %100 = load double, ptr %16, align 8, !tbaa !69
  %101 = fmul double %100, 1.000000e-100
  store double %101, ptr %16, align 8, !tbaa !69
  br label %109

102:                                              ; preds = %102, %97
  %103 = phi i64 [ 0, %97 ], [ %107, %102 ]
  %104 = getelementptr inbounds double, ptr %89, i64 %103
  %105 = load double, ptr %104, align 8, !tbaa !63
  %106 = fmul double %105, 1.000000e-100
  store double %106, ptr %104, align 8, !tbaa !63
  %107 = add nuw nsw i64 %103, 1
  %108 = icmp eq i64 %107, %98
  br i1 %108, label %99, label %102, !llvm.loop !123

109:                                              ; preds = %99, %87
  %110 = load i32, ptr %20, align 8, !tbaa !78
  %111 = icmp sgt i32 %110, %76
  br i1 %111, label %112, label %122

112:                                              ; preds = %109
  %113 = load ptr, ptr %21, align 8, !tbaa !77
  %114 = getelementptr inbounds i32, ptr %113, i64 %78
  %115 = load i32, ptr %114, align 4, !tbaa !62
  %116 = icmp sgt i32 %115, -1
  br i1 %116, label %117, label %122

117:                                              ; preds = %112
  call void @_ZN4HeapIN6Solver10VarOrderLtEE8decreaseEi(ptr noundef nonnull align 8 dereferenceable(40) %19, i32 noundef %76) #33
  %118 = load i32, ptr %5, align 4, !tbaa.struct !98
  %119 = load ptr, ptr %14, align 8, !tbaa !75
  %120 = ashr i32 %118, 1
  %121 = sext i32 %120 to i64
  br label %122

122:                                              ; preds = %117, %112, %109
  %123 = phi i64 [ %78, %109 ], [ %78, %112 ], [ %121, %117 ]
  %124 = phi ptr [ %77, %109 ], [ %77, %112 ], [ %119, %117 ]
  %125 = getelementptr inbounds i8, ptr %124, i64 %123
  store i8 1, ptr %125, align 1, !tbaa !36
  %126 = load i32, ptr %5, align 4, !tbaa.struct !98
  %127 = ashr i32 %126, 1
  %128 = load ptr, ptr %15, align 8, !tbaa !77
  %129 = sext i32 %127 to i64
  %130 = getelementptr inbounds i32, ptr %128, i64 %129
  %131 = load i32, ptr %130, align 4, !tbaa !62
  %132 = load i32, ptr %22, align 8, !tbaa !78
  %133 = icmp slt i32 %131, %132
  br i1 %133, label %136, label %134

134:                                              ; preds = %122
  %135 = add nsw i32 %73, 1
  br label %146

136:                                              ; preds = %122
  call void @_ZN3vecI3LitE4pushERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(4) %5) #33
  %137 = load i32, ptr %5, align 4
  %138 = ashr i32 %137, 1
  %139 = load ptr, ptr %15, align 8, !tbaa !77
  %140 = sext i32 %138 to i64
  %141 = getelementptr inbounds i32, ptr %139, i64 %140
  %142 = load i32, ptr %141, align 4, !tbaa !62
  %143 = load i32, ptr %3, align 4, !tbaa !62
  %144 = icmp sgt i32 %142, %143
  br i1 %144, label %145, label %146

145:                                              ; preds = %136
  store i32 %142, ptr %3, align 4, !tbaa !62
  br label %146

146:                                              ; preds = %145, %136, %134, %82, %71
  %147 = phi i32 [ %73, %71 ], [ %135, %134 ], [ %73, %145 ], [ %73, %136 ], [ %73, %82 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #31
  %148 = add nuw nsw i64 %72, 1
  %149 = load i32, ptr %27, align 4, !tbaa !103
  %150 = lshr i32 %149, 3
  %151 = zext i32 %150 to i64
  %152 = icmp ult i64 %148, %151
  br i1 %152, label %71, label %66, !llvm.loop !124

153:                                              ; preds = %153, %66
  %154 = phi i64 [ %70, %66 ], [ %155, %153 ]
  %155 = add i64 %154, -1
  %156 = getelementptr inbounds %class.Lit, ptr %68, i64 %154
  %157 = load i32, ptr %156, align 4
  %158 = ashr i32 %157, 1
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i8, ptr %69, i64 %159
  %161 = load i8, ptr %160, align 1, !tbaa !36
  %162 = icmp eq i8 %161, 0
  br i1 %162, label %153, label %163, !llvm.loop !125

163:                                              ; preds = %153
  %.lcssa9 = phi i64 [ %155, %153 ]
  %.lcssa8 = phi i32 [ %157, %153 ]
  %.lcssa7 = phi i64 [ %159, %153 ]
  %164 = getelementptr inbounds i8, ptr %69, i64 %.lcssa7
  %165 = trunc i64 %.lcssa9 to i32
  %166 = load ptr, ptr %10, align 8, !tbaa !73
  %167 = getelementptr inbounds ptr, ptr %166, i64 %.lcssa7
  %168 = load ptr, ptr %167, align 8, !tbaa !7
  store i8 0, ptr %164, align 1, !tbaa !36
  %169 = add nsw i32 %67, -1
  %170 = icmp sgt i32 %67, 1
  br i1 %170, label %23, label %171, !llvm.loop !126

171:                                              ; preds = %163
  %.lcssa8.lcssa = phi i32 [ %.lcssa8, %163 ]
  %172 = xor i32 %.lcssa8.lcssa, 1
  %173 = load ptr, ptr %2, align 8, !tbaa !49
  store i32 %172, ptr %173, align 4, !tbaa.struct !98
  %174 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 9
  %175 = load i8, ptr %174, align 8, !tbaa !66, !range !95, !noundef !96
  %176 = icmp eq i8 %175, 0
  br i1 %176, label %234, label %177

177:                                              ; preds = %171
  %178 = getelementptr inbounds %class.vec, ptr %2, i64 0, i32 1
  %179 = load i32, ptr %178, align 8, !tbaa !50
  %180 = icmp sgt i32 %179, 1
  br i1 %180, label %181, label %199

181:                                              ; preds = %177
  %182 = load ptr, ptr %2, align 8, !tbaa !49
  %183 = load ptr, ptr %15, align 8, !tbaa !77
  %184 = zext i32 %179 to i64
  br label %185

185:                                              ; preds = %185, %181
  %186 = phi i64 [ 1, %181 ], [ %197, %185 ]
  %187 = phi i32 [ 0, %181 ], [ %196, %185 ]
  %188 = getelementptr inbounds %class.Lit, ptr %182, i64 %186
  %189 = load i32, ptr %188, align 4, !tbaa.struct !98
  %190 = ashr i32 %189, 1
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i32, ptr %183, i64 %191
  %193 = load i32, ptr %192, align 4, !tbaa !62
  %194 = and i32 %193, 31
  %195 = shl nuw i32 1, %194
  %196 = or i32 %195, %187
  %197 = add nuw nsw i64 %186, 1
  %198 = icmp eq i64 %197, %184
  br i1 %198, label %199, label %185, !llvm.loop !127

199:                                              ; preds = %185, %177
  %200 = phi i32 [ 0, %177 ], [ %196, %185 ]
  %201 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 45
  call void @_ZNK3vecI3LitE6copyToERS1_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %201) #33
  %202 = load i32, ptr %178, align 8, !tbaa !50
  %203 = icmp sgt i32 %202, 1
  br i1 %203, label %204, label %290

204:                                              ; preds = %228, %199
  %205 = phi i64 [ %230, %228 ], [ 1, %199 ]
  %206 = phi i32 [ %229, %228 ], [ 1, %199 ]
  %207 = load ptr, ptr %2, align 8, !tbaa !49
  %208 = getelementptr inbounds %class.Lit, ptr %207, i64 %205
  %209 = load i32, ptr %208, align 4
  %210 = ashr i32 %209, 1
  %211 = load ptr, ptr %10, align 8, !tbaa !73
  %212 = sext i32 %210 to i64
  %213 = getelementptr inbounds ptr, ptr %211, i64 %212
  %214 = load ptr, ptr %213, align 8, !tbaa !7
  %215 = icmp eq ptr %214, null
  br i1 %215, label %222, label %216

216:                                              ; preds = %204
  %217 = call noundef zeroext i1 @_ZN6Solver12litRedundantE3Litj(ptr noundef nonnull align 8 dereferenceable(536) %0, i32 %209, i32 noundef %200) #33
  br i1 %217, label %228, label %218

218:                                              ; preds = %216
  %219 = load ptr, ptr %2, align 8, !tbaa !49
  %220 = getelementptr inbounds %class.Lit, ptr %219, i64 %205
  %221 = load i32, ptr %220, align 4, !tbaa !62
  br label %222

222:                                              ; preds = %218, %204
  %223 = phi i32 [ %221, %218 ], [ %209, %204 ]
  %224 = phi ptr [ %219, %218 ], [ %207, %204 ]
  %225 = add nsw i32 %206, 1
  %226 = sext i32 %206 to i64
  %227 = getelementptr inbounds %class.Lit, ptr %224, i64 %226
  store i32 %223, ptr %227, align 4, !tbaa !62
  br label %228

228:                                              ; preds = %222, %216
  %229 = phi i32 [ %225, %222 ], [ %206, %216 ]
  %230 = add nuw nsw i64 %205, 1
  %231 = load i32, ptr %178, align 8, !tbaa !50
  %232 = sext i32 %231 to i64
  %233 = icmp slt i64 %230, %232
  br i1 %233, label %204, label %288, !llvm.loop !128

234:                                              ; preds = %171
  %235 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 45
  call void @_ZNK3vecI3LitE6copyToERS1_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %235) #33
  %236 = getelementptr inbounds %class.vec, ptr %2, i64 0, i32 1
  %237 = load i32, ptr %236, align 8, !tbaa !50
  %238 = icmp sgt i32 %237, 1
  br i1 %238, label %239, label %290

239:                                              ; preds = %234
  %240 = load ptr, ptr %2, align 8, !tbaa !49
  %241 = load ptr, ptr %10, align 8, !tbaa !73
  %242 = load ptr, ptr %14, align 8
  br label %243

243:                                              ; preds = %280, %239
  %244 = phi i32 [ %237, %239 ], [ %281, %280 ]
  %245 = phi i64 [ 1, %239 ], [ %283, %280 ]
  %246 = phi i32 [ 1, %239 ], [ %282, %280 ]
  %247 = getelementptr inbounds %class.Lit, ptr %240, i64 %245
  %248 = load i32, ptr %247, align 4
  %249 = ashr i32 %248, 1
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds ptr, ptr %241, i64 %250
  %252 = load ptr, ptr %251, align 8, !tbaa !7
  %253 = load i32, ptr %252, align 4, !tbaa !103
  %254 = icmp ugt i32 %253, 15
  br i1 %254, label %255, label %280

255:                                              ; preds = %243
  %256 = lshr i32 %253, 3
  %257 = load ptr, ptr %15, align 8
  %258 = zext i32 %256 to i64
  br label %259

259:                                              ; preds = %277, %255
  %260 = phi i64 [ 1, %255 ], [ %278, %277 ]
  %261 = getelementptr inbounds %class.Clause, ptr %252, i64 0, i32 2, i64 %260
  %262 = load i32, ptr %261, align 4
  %263 = ashr i32 %262, 1
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds i8, ptr %242, i64 %264
  %266 = load i8, ptr %265, align 1, !tbaa !36
  %267 = icmp eq i8 %266, 0
  br i1 %267, label %268, label %277

268:                                              ; preds = %259
  %269 = getelementptr inbounds i32, ptr %257, i64 %264
  %270 = load i32, ptr %269, align 4, !tbaa !62
  %271 = icmp sgt i32 %270, 0
  br i1 %271, label %272, label %277

272:                                              ; preds = %268
  %273 = add nsw i32 %246, 1
  %274 = sext i32 %246 to i64
  %275 = getelementptr inbounds %class.Lit, ptr %240, i64 %274
  store i32 %248, ptr %275, align 4, !tbaa !62
  %276 = load i32, ptr %236, align 8, !tbaa !50
  br label %280

277:                                              ; preds = %268, %259
  %278 = add nuw nsw i64 %260, 1
  %279 = icmp eq i64 %278, %258
  br i1 %279, label %280, label %259, !llvm.loop !129

280:                                              ; preds = %277, %272, %243
  %281 = phi i32 [ %276, %272 ], [ %244, %243 ], [ %244, %277 ]
  %282 = phi i32 [ %273, %272 ], [ %246, %243 ], [ %246, %277 ]
  %283 = add nuw nsw i64 %245, 1
  %284 = sext i32 %281 to i64
  %285 = icmp slt i64 %283, %284
  br i1 %285, label %243, label %286, !llvm.loop !130

286:                                              ; preds = %280
  %.lcssa3 = phi i32 [ %281, %280 ]
  %.lcssa2 = phi i32 [ %282, %280 ]
  %.lcssa1 = phi i64 [ %283, %280 ]
  %287 = trunc i64 %.lcssa1 to i32
  br label %290

288:                                              ; preds = %228
  %.lcssa6 = phi i32 [ %229, %228 ]
  %.lcssa5 = phi i64 [ %230, %228 ]
  %.lcssa4 = phi i32 [ %231, %228 ]
  %289 = trunc i64 %.lcssa5 to i32
  br label %290

290:                                              ; preds = %288, %286, %234, %199
  %291 = phi i32 [ %237, %234 ], [ %202, %199 ], [ %.lcssa3, %286 ], [ %.lcssa4, %288 ]
  %292 = phi i32 [ 1, %234 ], [ 1, %199 ], [ %.lcssa2, %286 ], [ %.lcssa6, %288 ]
  %293 = phi i32 [ 1, %234 ], [ 1, %199 ], [ %287, %286 ], [ %289, %288 ]
  %294 = sext i32 %291 to i64
  %295 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 19
  %296 = load i64, ptr %295, align 8, !tbaa !31
  %297 = add i64 %296, %294
  store i64 %297, ptr %295, align 8, !tbaa !31
  %298 = sub nsw i32 %293, %292
  %299 = icmp sgt i32 %298, 0
  br i1 %299, label %300, label %304

300:                                              ; preds = %290
  %301 = getelementptr inbounds %class.vec, ptr %2, i64 0, i32 1
  %302 = sub i32 %291, %298
  store i32 %302, ptr %301, align 8, !tbaa !50
  %303 = sext i32 %302 to i64
  br label %304

304:                                              ; preds = %300, %290
  %305 = phi i64 [ %303, %300 ], [ %294, %290 ]
  %306 = phi i32 [ %302, %300 ], [ %291, %290 ]
  %307 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 20
  %308 = load i64, ptr %307, align 8, !tbaa !30
  %309 = add i64 %308, %305
  store i64 %309, ptr %307, align 8, !tbaa !30
  %310 = icmp eq i32 %306, 1
  br i1 %310, label %351, label %311

311:                                              ; preds = %304
  %312 = icmp sgt i32 %306, 2
  %313 = load ptr, ptr %2, align 8, !tbaa !49
  br i1 %312, label %314, label %319

314:                                              ; preds = %311
  %315 = load ptr, ptr %15, align 8, !tbaa !77
  %316 = zext i32 %306 to i64
  br label %330

317:                                              ; preds = %330
  %.lcssa = phi i32 [ %348, %330 ]
  %318 = sext i32 %.lcssa to i64
  br label %319

319:                                              ; preds = %317, %311
  %320 = phi i64 [ 1, %311 ], [ %318, %317 ]
  %321 = getelementptr inbounds %class.Lit, ptr %313, i64 %320
  %322 = load i32, ptr %321, align 4, !tbaa.struct !98
  %323 = getelementptr inbounds %class.Lit, ptr %313, i64 1
  %324 = load i32, ptr %323, align 4, !tbaa !62
  store i32 %324, ptr %321, align 4, !tbaa !62
  store i32 %322, ptr %323, align 4, !tbaa.struct !98
  %325 = ashr i32 %322, 1
  %326 = load ptr, ptr %15, align 8, !tbaa !77
  %327 = sext i32 %325 to i64
  %328 = getelementptr inbounds i32, ptr %326, i64 %327
  %329 = load i32, ptr %328, align 4, !tbaa !62
  br label %351

330:                                              ; preds = %330, %314
  %331 = phi i64 [ 2, %314 ], [ %349, %330 ]
  %332 = phi i32 [ 1, %314 ], [ %348, %330 ]
  %333 = getelementptr inbounds %class.Lit, ptr %313, i64 %331
  %334 = load i32, ptr %333, align 4, !tbaa.struct !98
  %335 = ashr i32 %334, 1
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds i32, ptr %315, i64 %336
  %338 = load i32, ptr %337, align 4, !tbaa !62
  %339 = sext i32 %332 to i64
  %340 = getelementptr inbounds %class.Lit, ptr %313, i64 %339
  %341 = load i32, ptr %340, align 4, !tbaa.struct !98
  %342 = ashr i32 %341, 1
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds i32, ptr %315, i64 %343
  %345 = load i32, ptr %344, align 4, !tbaa !62
  %346 = icmp sgt i32 %338, %345
  %347 = trunc i64 %331 to i32
  %348 = select i1 %346, i32 %347, i32 %332
  %349 = add nuw nsw i64 %331, 1
  %350 = icmp eq i64 %349, %316
  br i1 %350, label %317, label %330, !llvm.loop !131

351:                                              ; preds = %319, %304
  %352 = phi i32 [ %329, %319 ], [ 0, %304 ]
  store i32 %352, ptr %3, align 4, !tbaa !62
  %353 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 45, i32 1
  %354 = load i32, ptr %353, align 8, !tbaa !50
  %355 = icmp sgt i32 %354, 0
  br i1 %355, label %356, label %358

356:                                              ; preds = %351
  %357 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 45
  br label %359

358:                                              ; preds = %359, %351
  ret void

359:                                              ; preds = %359, %356
  %360 = phi i64 [ 0, %356 ], [ %368, %359 ]
  %361 = load ptr, ptr %357, align 8, !tbaa !49
  %362 = getelementptr inbounds %class.Lit, ptr %361, i64 %360
  %363 = load i32, ptr %362, align 4, !tbaa.struct !98
  %364 = ashr i32 %363, 1
  %365 = load ptr, ptr %14, align 8, !tbaa !75
  %366 = sext i32 %364 to i64
  %367 = getelementptr inbounds i8, ptr %365, i64 %366
  store i8 0, ptr %367, align 1, !tbaa !36
  %368 = add nuw nsw i64 %360, 1
  %369 = load i32, ptr %353, align 8, !tbaa !50
  %370 = sext i32 %369 to i64
  %371 = icmp slt i64 %368, %370
  br i1 %371, label %359, label %358, !llvm.loop !132
}

; Function Attrs: optsize uwtable
define internal void @_ZN3vecI3LitE4pushEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #24 comdat align 2 {
  %2 = getelementptr inbounds %class.vec, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !50
  %4 = getelementptr inbounds %class.vec, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !61
  %6 = icmp eq i32 %3, %5
  %7 = load ptr, ptr %0, align 8, !tbaa !49
  br i1 %6, label %8, label %17

8:                                                ; preds = %1
  %9 = mul nsw i32 %3, 3
  %10 = add nsw i32 %9, 1
  %11 = ashr i32 %10, 1
  %12 = tail call i32 @llvm.smax.i32(i32 %11, i32 2)
  store i32 %12, ptr %4, align 4, !tbaa !61
  %13 = zext i32 %12 to i64
  %14 = shl nuw nsw i64 %13, 2
  %15 = tail call ptr @realloc(ptr noundef %7, i64 noundef %14) #40
  store ptr %15, ptr %0, align 8, !tbaa !49
  %16 = load i32, ptr %2, align 8, !tbaa !50
  br label %17

17:                                               ; preds = %8, %1
  %18 = phi i32 [ %16, %8 ], [ %3, %1 ]
  %19 = phi ptr [ %15, %8 ], [ %7, %1 ]
  %20 = sext i32 %18 to i64
  %21 = getelementptr inbounds %class.Lit, ptr %19, i64 %20
  store i32 -2, ptr %21, align 4, !tbaa !133
  %22 = add nsw i32 %18, 1
  store i32 %22, ptr %2, align 8, !tbaa !50
  ret void
}

; Function Attrs: mustprogress optsize uwtable
define internal void @_ZN4HeapIN6Solver10VarOrderLtEE8decreaseEi(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) #0 comdat align 2 {
  %3 = getelementptr inbounds %class.Heap, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8
  %5 = sext i32 %1 to i64
  %6 = getelementptr inbounds i32, ptr %4, i64 %5
  %7 = load i32, ptr %6, align 4, !tbaa !62
  %8 = getelementptr inbounds %class.Heap, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !77
  %10 = sext i32 %7 to i64
  %11 = getelementptr inbounds i32, ptr %9, i64 %10
  %12 = load i32, ptr %11, align 4, !tbaa !62
  %13 = icmp eq i32 %7, 0
  %14 = sext i32 %12 to i64
  br i1 %13, label %36, label %15

15:                                               ; preds = %2
  %16 = load ptr, ptr %0, align 8, !tbaa !91
  %17 = load ptr, ptr %16, align 8, !tbaa !81
  %18 = getelementptr inbounds double, ptr %17, i64 %14
  %19 = load double, ptr %18, align 8, !tbaa !63
  br label %20

20:                                               ; preds = %31, %15
  %21 = phi i32 [ %7, %15 ], [ %23, %31 ]
  %22 = add nsw i32 %21, -1
  %23 = ashr i32 %22, 1
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, ptr %9, i64 %24
  %26 = load i32, ptr %25, align 4, !tbaa !62
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds double, ptr %17, i64 %27
  %29 = load double, ptr %28, align 8, !tbaa !63
  %30 = fcmp ogt double %19, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %20
  %32 = sext i32 %21 to i64
  %33 = getelementptr inbounds i32, ptr %9, i64 %32
  store i32 %26, ptr %33, align 4, !tbaa !62
  %34 = getelementptr inbounds i32, ptr %4, i64 %27
  store i32 %21, ptr %34, align 4, !tbaa !62
  %35 = icmp ult i32 %22, 2
  br i1 %35, label %36, label %20, !llvm.loop !92

36:                                               ; preds = %31, %20, %2
  %37 = phi i32 [ 0, %2 ], [ %21, %20 ], [ %23, %31 ]
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, ptr %9, i64 %38
  store i32 %12, ptr %39, align 4, !tbaa !62
  %40 = getelementptr inbounds i32, ptr %4, i64 %14
  store i32 %37, ptr %40, align 4, !tbaa !62
  ret void
}

; Function Attrs: mustprogress optsize uwtable
define internal void @_ZNK3vecI3LitE6copyToERS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) #0 comdat align 2 {
  %3 = load ptr, ptr %1, align 8, !tbaa !49
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %class.vec, ptr %1, i64 0, i32 1
  store i32 0, ptr %6, align 8, !tbaa !50
  br label %7

7:                                                ; preds = %5, %2
  %8 = getelementptr inbounds %class.vec, ptr %0, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !50
  tail call void @_ZN3vecI3LitE6growToEi(ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %9) #33
  %10 = load i32, ptr %8, align 8, !tbaa !50
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %7
  %13 = load ptr, ptr %1, align 8, !tbaa !49
  %14 = load ptr, ptr %0, align 8, !tbaa !49
  br label %16

15:                                               ; preds = %16, %7
  ret void

16:                                               ; preds = %16, %12
  %17 = phi i64 [ 0, %12 ], [ %21, %16 ]
  %18 = getelementptr inbounds %class.Lit, ptr %13, i64 %17
  %19 = getelementptr inbounds %class.Lit, ptr %14, i64 %17
  %20 = load i32, ptr %19, align 4, !tbaa !62
  store i32 %20, ptr %18, align 4, !tbaa !62
  %21 = add nuw nsw i64 %17, 1
  %22 = load i32, ptr %8, align 8, !tbaa !50
  %23 = sext i32 %22 to i64
  %24 = icmp slt i64 %21, %23
  br i1 %24, label %16, label %15, !llvm.loop !135
}

; Function Attrs: mustprogress nounwind optsize uwtable
define internal noundef zeroext i1 @_ZN6Solver12litRedundantE3Litj(ptr noundef nonnull align 8 dereferenceable(536) %0, i32 %1, i32 noundef %2) #25 align 2 {
  %4 = alloca %class.Lit, align 4
  %5 = alloca %class.Lit, align 4
  store i32 %1, ptr %4, align 4
  %6 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 44
  %7 = load ptr, ptr %6, align 8, !tbaa !49
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 44, i32 1
  store i32 0, ptr %10, align 8, !tbaa !50
  br label %11

11:                                               ; preds = %9, %3
  call void @_ZN3vecI3LitE4pushERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 4 dereferenceable(4) %4) #33
  %12 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 45
  %13 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 45, i32 1
  %14 = load i32, ptr %13, align 8, !tbaa !50
  %15 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 44, i32 1
  %16 = load i32, ptr %15, align 8, !tbaa !50
  %17 = icmp slt i32 %16, 1
  br i1 %17, label %96, label %18

18:                                               ; preds = %11
  %19 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 33
  %20 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 43
  %21 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 34
  br label %27

22:                                               ; preds = %90
  %23 = load i32, ptr %15, align 8, !tbaa !50
  br label %24

24:                                               ; preds = %27, %22
  %25 = phi i32 [ %23, %22 ], [ %30, %27 ]
  %26 = icmp slt i32 %25, 1
  br i1 %26, label %96, label %27

27:                                               ; preds = %24, %18
  %28 = phi i32 [ %16, %18 ], [ %25, %24 ]
  %29 = load ptr, ptr %6, align 8, !tbaa !49
  %30 = add nsw i32 %28, -1
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %class.Lit, ptr %29, i64 %31
  %33 = load i32, ptr %32, align 4, !tbaa.struct !98
  %34 = ashr i32 %33, 1
  %35 = load ptr, ptr %19, align 8, !tbaa !73
  %36 = sext i32 %34 to i64
  %37 = getelementptr inbounds ptr, ptr %35, i64 %36
  %38 = load ptr, ptr %37, align 8, !tbaa !7
  store i32 %30, ptr %15, align 8, !tbaa !50
  %39 = load i32, ptr %38, align 4, !tbaa !103
  %40 = icmp ugt i32 %39, 15
  br i1 %40, label %41, label %24

41:                                               ; preds = %90, %27
  %42 = phi i64 [ %91, %90 ], [ 1, %27 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #31
  %43 = getelementptr inbounds %class.Clause, ptr %38, i64 0, i32 2, i64 %42
  %44 = load i32, ptr %43, align 4, !tbaa !62
  store i32 %44, ptr %5, align 4, !tbaa !62
  %45 = ashr i32 %44, 1
  %46 = load ptr, ptr %20, align 8, !tbaa !75
  %47 = sext i32 %45 to i64
  %48 = getelementptr inbounds i8, ptr %46, i64 %47
  %49 = load i8, ptr %48, align 1, !tbaa !36
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %51, label %90

51:                                               ; preds = %41
  %52 = load ptr, ptr %21, align 8, !tbaa !77
  %53 = getelementptr inbounds i32, ptr %52, i64 %47
  %54 = load i32, ptr %53, align 4, !tbaa !62
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %56, label %90

56:                                               ; preds = %51
  %57 = load ptr, ptr %19, align 8, !tbaa !73
  %58 = getelementptr inbounds ptr, ptr %57, i64 %47
  %59 = load ptr, ptr %58, align 8, !tbaa !7
  %60 = icmp eq ptr %59, null
  br i1 %60, label %67, label %61

61:                                               ; preds = %56
  %62 = and i32 %54, 31
  %63 = shl nuw i32 1, %62
  %64 = and i32 %63, %2
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %61
  store i8 1, ptr %48, align 1, !tbaa !36
  call void @_ZN3vecI3LitE4pushERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 4 dereferenceable(4) %5) #33
  call void @_ZN3vecI3LitE4pushERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull align 4 dereferenceable(4) %5) #33
  br label %90

67:                                               ; preds = %61, %56
  %68 = load i32, ptr %13, align 8, !tbaa !50
  %69 = icmp slt i32 %14, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %67
  %71 = sext i32 %14 to i64
  br label %77

72:                                               ; preds = %77, %67
  %73 = phi i32 [ %68, %67 ], [ %87, %77 ]
  %74 = icmp sgt i32 %73, %14
  br i1 %74, label %75, label %76

75:                                               ; preds = %72
  store i32 %14, ptr %13, align 8, !tbaa !50
  br label %76

76:                                               ; preds = %75, %72
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #31
  br label %96, !llvm.loop !136

77:                                               ; preds = %77, %70
  %78 = phi i64 [ %71, %70 ], [ %86, %77 ]
  %79 = load ptr, ptr %12, align 8, !tbaa !49
  %80 = getelementptr inbounds %class.Lit, ptr %79, i64 %78
  %81 = load i32, ptr %80, align 4, !tbaa.struct !98
  %82 = ashr i32 %81, 1
  %83 = load ptr, ptr %20, align 8, !tbaa !75
  %84 = sext i32 %82 to i64
  %85 = getelementptr inbounds i8, ptr %83, i64 %84
  store i8 0, ptr %85, align 1, !tbaa !36
  %86 = add nsw i64 %78, 1
  %87 = load i32, ptr %13, align 8, !tbaa !50
  %88 = sext i32 %87 to i64
  %89 = icmp slt i64 %86, %88
  br i1 %89, label %77, label %72, !llvm.loop !137

90:                                               ; preds = %66, %51, %41
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #31
  %91 = add nuw nsw i64 %42, 1
  %92 = load i32, ptr %38, align 4, !tbaa !103
  %93 = lshr i32 %92, 3
  %94 = zext i32 %93 to i64
  %95 = icmp ult i64 %91, %94
  br i1 %95, label %41, label %22, !llvm.loop !138

96:                                               ; preds = %76, %24, %11
  %97 = phi i1 [ false, %76 ], [ true, %11 ], [ true, %24 ]
  ret i1 %97
}

; Function Attrs: optsize uwtable
define internal void @_ZN3vecI3LitE6growToEi(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1) #24 comdat align 2 {
  %3 = getelementptr inbounds %class.vec, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !50
  %5 = icmp slt i32 %4, %1
  br i1 %5, label %6, label %19

6:                                                ; preds = %2
  tail call void @_ZN3vecI3LitE4growEi(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1) #33
  %7 = load i32, ptr %3, align 8, !tbaa !50
  %8 = icmp slt i32 %7, %1
  br i1 %8, label %9, label %13

9:                                                ; preds = %6
  %10 = load ptr, ptr %0, align 8, !tbaa !49
  %11 = sext i32 %7 to i64
  %12 = sext i32 %1 to i64
  br label %14

13:                                               ; preds = %14, %6
  store i32 %1, ptr %3, align 8, !tbaa !50
  br label %19

14:                                               ; preds = %14, %9
  %15 = phi i64 [ %11, %9 ], [ %17, %14 ]
  %16 = getelementptr inbounds %class.Lit, ptr %10, i64 %15
  store i32 -2, ptr %16, align 4, !tbaa !133
  %17 = add nsw i64 %15, 1
  %18 = icmp eq i64 %17, %12
  br i1 %18, label %13, label %14, !llvm.loop !139

19:                                               ; preds = %13, %2
  ret void
}

; Function Attrs: mustprogress nounwind optsize uwtable
define internal void @_ZN3vecI3LitE4growEi(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1) #25 comdat align 2 {
  %3 = getelementptr inbounds %class.vec, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !61
  %5 = icmp slt i32 %4, %1
  br i1 %5, label %6, label %22

6:                                                ; preds = %2
  %7 = icmp eq i32 %4, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %6
  %9 = tail call i32 @llvm.smax.i32(i32 %1, i32 2)
  br label %16

10:                                               ; preds = %10, %6
  %11 = phi i32 [ %14, %10 ], [ %4, %6 ]
  %12 = mul nsw i32 %11, 3
  %13 = add nsw i32 %12, 1
  %14 = ashr i32 %13, 1
  %15 = icmp slt i32 %14, %1
  br i1 %15, label %10, label %16, !llvm.loop !140

16:                                               ; preds = %10, %8
  %17 = phi i32 [ %9, %8 ], [ %14, %10 ]
  store i32 %17, ptr %3, align 4, !tbaa !61
  %18 = load ptr, ptr %0, align 8, !tbaa !49
  %19 = sext i32 %17 to i64
  %20 = shl nsw i64 %19, 2
  %21 = tail call ptr @realloc(ptr noundef %18, i64 noundef %20) #40
  store ptr %21, ptr %0, align 8, !tbaa !49
  br label %22

22:                                               ; preds = %16, %2
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @_ZN6Solver12analyzeFinalE3LitR3vecIS0_E(ptr nocapture noundef nonnull readonly align 8 dereferenceable(536) %0, i32 %1, ptr noundef nonnull align 8 dereferenceable(16) %2) #23 align 2 {
  %4 = alloca %class.Lit, align 4
  %5 = alloca %class.Lit, align 4
  store i32 %1, ptr %4, align 4
  %6 = load ptr, ptr %2, align 8, !tbaa !49
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %class.vec, ptr %2, i64 0, i32 1
  store i32 0, ptr %9, align 8, !tbaa !50
  br label %10

10:                                               ; preds = %8, %3
  call void @_ZN3vecI3LitE4pushERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(4) %4) #33
  %11 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 32, i32 1
  %12 = load i32, ptr %11, align 8, !tbaa !78
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %91, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 43
  %16 = load i32, ptr %4, align 4, !tbaa.struct !98
  %17 = ashr i32 %16, 1
  %18 = load ptr, ptr %15, align 8, !tbaa !75
  %19 = sext i32 %17 to i64
  %20 = getelementptr inbounds i8, ptr %18, i64 %19
  store i8 1, ptr %20, align 1, !tbaa !36
  %21 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 31
  %22 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 31, i32 1
  %23 = load i32, ptr %22, align 8, !tbaa !50
  %24 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 32
  %25 = load ptr, ptr %24, align 8, !tbaa !77
  %26 = load i32, ptr %25, align 4, !tbaa !62
  %27 = icmp sgt i32 %23, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %14
  %29 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 33
  %30 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 34
  %31 = sext i32 %23 to i64
  br label %38

32:                                               ; preds = %87, %14
  %33 = load i32, ptr %4, align 4, !tbaa.struct !98
  %34 = ashr i32 %33, 1
  %35 = load ptr, ptr %15, align 8, !tbaa !75
  %36 = sext i32 %34 to i64
  %37 = getelementptr inbounds i8, ptr %35, i64 %36
  store i8 0, ptr %37, align 1, !tbaa !36
  br label %91

38:                                               ; preds = %87, %28
  %39 = phi i32 [ %26, %28 ], [ %88, %87 ]
  %40 = phi i64 [ %31, %28 ], [ %41, %87 ]
  %41 = add nsw i64 %40, -1
  %42 = load ptr, ptr %21, align 8, !tbaa !49
  %43 = getelementptr inbounds %class.Lit, ptr %42, i64 %41
  %44 = load i32, ptr %43, align 4
  %45 = ashr i32 %44, 1
  %46 = load ptr, ptr %15, align 8, !tbaa !75
  %47 = sext i32 %45 to i64
  %48 = getelementptr inbounds i8, ptr %46, i64 %47
  %49 = load i8, ptr %48, align 1, !tbaa !36
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %87, label %51

51:                                               ; preds = %38
  %52 = load ptr, ptr %29, align 8, !tbaa !73
  %53 = getelementptr inbounds ptr, ptr %52, i64 %47
  %54 = load ptr, ptr %53, align 8, !tbaa !7
  %55 = icmp eq ptr %54, null
  br i1 %55, label %59, label %56

56:                                               ; preds = %51
  %57 = load i32, ptr %54, align 4, !tbaa !103
  %58 = icmp ugt i32 %57, 15
  br i1 %58, label %61, label %82

59:                                               ; preds = %51
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #31
  %60 = xor i32 %44, 1
  store i32 %60, ptr %5, align 4
  call void @_ZN3vecI3LitE4pushERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(4) %5) #33
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #31
  br label %82

61:                                               ; preds = %76, %56
  %62 = phi i32 [ %77, %76 ], [ %57, %56 ]
  %63 = phi i64 [ %78, %76 ], [ 1, %56 ]
  %64 = getelementptr inbounds %class.Clause, ptr %54, i64 0, i32 2, i64 %63
  %65 = load i32, ptr %64, align 4
  %66 = ashr i32 %65, 1
  %67 = load ptr, ptr %30, align 8, !tbaa !77
  %68 = sext i32 %66 to i64
  %69 = getelementptr inbounds i32, ptr %67, i64 %68
  %70 = load i32, ptr %69, align 4, !tbaa !62
  %71 = icmp sgt i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %61
  %73 = load ptr, ptr %15, align 8, !tbaa !75
  %74 = getelementptr inbounds i8, ptr %73, i64 %68
  store i8 1, ptr %74, align 1, !tbaa !36
  %75 = load i32, ptr %54, align 4, !tbaa !103
  br label %76

76:                                               ; preds = %72, %61
  %77 = phi i32 [ %62, %61 ], [ %75, %72 ]
  %78 = add nuw nsw i64 %63, 1
  %79 = lshr i32 %77, 3
  %80 = zext i32 %79 to i64
  %81 = icmp ult i64 %78, %80
  br i1 %81, label %61, label %82, !llvm.loop !141

82:                                               ; preds = %76, %59, %56
  %83 = load ptr, ptr %15, align 8, !tbaa !75
  %84 = getelementptr inbounds i8, ptr %83, i64 %47
  store i8 0, ptr %84, align 1, !tbaa !36
  %85 = load ptr, ptr %24, align 8, !tbaa !77
  %86 = load i32, ptr %85, align 4, !tbaa !62
  br label %87

87:                                               ; preds = %82, %38
  %88 = phi i32 [ %86, %82 ], [ %39, %38 ]
  %89 = sext i32 %88 to i64
  %90 = icmp sgt i64 %41, %89
  br i1 %90, label %38, label %32, !llvm.loop !142

91:                                               ; preds = %32, %10
  ret void
}

; Function Attrs: optsize uwtable
define internal void @_ZN6Solver8reduceDBEv(ptr nocapture noundef nonnull align 8 dereferenceable(536) %0) #24 align 2 {
  %2 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 24
  %3 = load double, ptr %2, align 8, !tbaa !68
  %4 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 23
  %5 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 23, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !72
  %7 = sitofp i32 %6 to double
  %8 = fdiv double %3, %7
  %9 = load ptr, ptr %4, align 8, !tbaa !73
  tail call void @_Z4sortIP6Clause11reduceDB_ltEvPT_iT0_(ptr noundef %9, i32 noundef %6) #33
  %10 = load i32, ptr %5, align 8, !tbaa !72
  %11 = icmp sgt i32 %10, 1
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 33
  %14 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 28
  br label %26

15:                                               ; preds = %59
  %.lcssa2 = phi i32 [ %60, %59 ]
  %.lcssa1 = phi i32 [ %61, %59 ]
  %.lcssa = phi i64 [ %62, %59 ]
  %16 = trunc i64 %.lcssa to i32
  br label %17

17:                                               ; preds = %15, %1
  %18 = phi i32 [ %10, %1 ], [ %.lcssa2, %15 ]
  %19 = phi i32 [ 0, %1 ], [ %.lcssa1, %15 ]
  %20 = phi i32 [ 0, %1 ], [ %16, %15 ]
  %21 = icmp slt i32 %20, %18
  br i1 %21, label %22, label %110

22:                                               ; preds = %17
  %23 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 33
  %24 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 28
  %25 = zext i32 %20 to i64
  br label %66

26:                                               ; preds = %59, %12
  %27 = phi i32 [ %10, %12 ], [ %60, %59 ]
  %28 = phi i64 [ 0, %12 ], [ %62, %59 ]
  %29 = phi i32 [ 0, %12 ], [ %61, %59 ]
  %30 = load ptr, ptr %4, align 8, !tbaa !73
  %31 = getelementptr inbounds ptr, ptr %30, i64 %28
  %32 = load ptr, ptr %31, align 8, !tbaa !7
  %33 = load i32, ptr %32, align 4, !tbaa !103
  %34 = icmp ugt i32 %33, 23
  br i1 %34, label %35, label %55

35:                                               ; preds = %26
  %36 = getelementptr inbounds %class.Clause, ptr %32, i64 0, i32 2, i64 0
  %37 = load i32, ptr %36, align 4
  %38 = ashr i32 %37, 1
  %39 = load ptr, ptr %13, align 8, !tbaa !73
  %40 = sext i32 %38 to i64
  %41 = getelementptr inbounds ptr, ptr %39, i64 %40
  %42 = load ptr, ptr %41, align 8, !tbaa !7
  %43 = icmp eq ptr %42, %32
  br i1 %43, label %44, label %53

44:                                               ; preds = %35
  %45 = load ptr, ptr %14, align 8, !tbaa !75
  %46 = getelementptr inbounds i8, ptr %45, i64 %40
  %47 = load i8, ptr %46, align 1, !tbaa !36
  %48 = and i32 %37, 1
  %49 = icmp eq i32 %48, 0
  %50 = sub i8 0, %47
  %51 = select i1 %49, i8 %47, i8 %50
  %52 = icmp eq i8 %51, 1
  br i1 %52, label %55, label %53

53:                                               ; preds = %44, %35
  tail call void @_ZN6Solver12detachClauseER6Clause(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef nonnull align 4 dereferenceable(8) %32) #33
  tail call void @free(ptr noundef nonnull %32) #32
  %54 = load i32, ptr %5, align 8, !tbaa !72
  br label %59

55:                                               ; preds = %44, %26
  %56 = add nsw i32 %29, 1
  %57 = sext i32 %29 to i64
  %58 = getelementptr inbounds ptr, ptr %30, i64 %57
  store ptr %32, ptr %58, align 8, !tbaa !7
  br label %59

59:                                               ; preds = %55, %53
  %60 = phi i32 [ %27, %55 ], [ %54, %53 ]
  %61 = phi i32 [ %56, %55 ], [ %29, %53 ]
  %62 = add nuw nsw i64 %28, 1
  %63 = sdiv i32 %60, 2
  %64 = sext i32 %63 to i64
  %65 = icmp slt i64 %62, %64
  br i1 %65, label %26, label %15, !llvm.loop !143

66:                                               ; preds = %104, %22
  %67 = phi i32 [ %18, %22 ], [ %105, %104 ]
  %68 = phi i64 [ %25, %22 ], [ %107, %104 ]
  %69 = phi i32 [ %19, %22 ], [ %106, %104 ]
  %70 = load ptr, ptr %4, align 8, !tbaa !73
  %71 = getelementptr inbounds ptr, ptr %70, i64 %68
  %72 = load ptr, ptr %71, align 8, !tbaa !7
  %73 = load i32, ptr %72, align 4, !tbaa !103
  %74 = icmp ugt i32 %73, 23
  br i1 %74, label %75, label %100

75:                                               ; preds = %66
  %76 = getelementptr inbounds %class.Clause, ptr %72, i64 0, i32 2, i64 0
  %77 = load i32, ptr %76, align 4
  %78 = ashr i32 %77, 1
  %79 = load ptr, ptr %23, align 8, !tbaa !73
  %80 = sext i32 %78 to i64
  %81 = getelementptr inbounds ptr, ptr %79, i64 %80
  %82 = load ptr, ptr %81, align 8, !tbaa !7
  %83 = icmp eq ptr %82, %72
  br i1 %83, label %84, label %93

84:                                               ; preds = %75
  %85 = load ptr, ptr %24, align 8, !tbaa !75
  %86 = getelementptr inbounds i8, ptr %85, i64 %80
  %87 = load i8, ptr %86, align 1, !tbaa !36
  %88 = and i32 %77, 1
  %89 = icmp eq i32 %88, 0
  %90 = sub i8 0, %87
  %91 = select i1 %89, i8 %87, i8 %90
  %92 = icmp eq i8 %91, 1
  br i1 %92, label %100, label %93

93:                                               ; preds = %84, %75
  %94 = getelementptr inbounds %class.Clause, ptr %72, i64 0, i32 1
  %95 = load float, ptr %94, align 4, !tbaa !120
  %96 = fpext float %95 to double
  %97 = fcmp ogt double %8, %96
  br i1 %97, label %98, label %100

98:                                               ; preds = %93
  tail call void @_ZN6Solver12detachClauseER6Clause(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef nonnull align 4 dereferenceable(8) %72) #33
  tail call void @free(ptr noundef nonnull %72) #32
  %99 = load i32, ptr %5, align 8, !tbaa !72
  br label %104

100:                                              ; preds = %93, %84, %66
  %101 = add nsw i32 %69, 1
  %102 = sext i32 %69 to i64
  %103 = getelementptr inbounds ptr, ptr %70, i64 %102
  store ptr %72, ptr %103, align 8, !tbaa !7
  br label %104

104:                                              ; preds = %100, %98
  %105 = phi i32 [ %67, %100 ], [ %99, %98 ]
  %106 = phi i32 [ %101, %100 ], [ %69, %98 ]
  %107 = add nuw nsw i64 %68, 1
  %108 = trunc i64 %107 to i32
  %109 = icmp sgt i32 %105, %108
  br i1 %109, label %66, label %110, !llvm.loop !144

110:                                              ; preds = %104, %17
  %111 = phi i32 [ %19, %17 ], [ %106, %104 ]
  %112 = phi i32 [ %20, %17 ], [ %108, %104 ]
  %113 = phi i32 [ %18, %17 ], [ %105, %104 ]
  %114 = sub nsw i32 %112, %111
  %115 = icmp sgt i32 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %110
  %117 = sub i32 %113, %114
  store i32 %117, ptr %5, align 8, !tbaa !72
  br label %118

118:                                              ; preds = %116, %110
  ret void
}

; Function Attrs: mustprogress optsize uwtable
define internal void @_Z4sortIP6Clause11reduceDB_ltEvPT_iT0_(ptr noundef %0, i32 noundef %1) #0 comdat {
  %3 = icmp slt i32 %1, 16
  br i1 %3, label %4, label %7

4:                                                ; preds = %79, %2
  %5 = phi ptr [ %0, %2 ], [ %.lcssa2, %79 ]
  %6 = phi i32 [ %1, %2 ], [ %80, %79 ]
  tail call void @_Z13selectionSortIP6Clause11reduceDB_ltEvPT_iT0_(ptr noundef %5, i32 noundef %6) #33
  ret void

7:                                                ; preds = %79, %2
  %8 = phi i32 [ %80, %79 ], [ %1, %2 ]
  %9 = phi ptr [ %.lcssa2, %79 ], [ %0, %2 ]
  %10 = lshr i32 %8, 1
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds ptr, ptr %9, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !7
  %14 = getelementptr inbounds %class.Clause, ptr %13, i64 0, i32 1
  %15 = load i32, ptr %13, align 4, !tbaa !103
  %16 = icmp ugt i32 %15, 23
  %17 = and i32 %15, -8
  %18 = icmp eq i32 %17, 16
  br label %19

19:                                               ; preds = %77, %7
  %20 = phi i32 [ -1, %7 ], [ %48, %77 ]
  %21 = phi i32 [ %8, %7 ], [ %74, %77 ]
  %22 = add nsw i32 %20, 1
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds ptr, ptr %9, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !7
  %26 = load i32, ptr %25, align 4, !tbaa !103
  %27 = icmp ugt i32 %26, 23
  br i1 %27, label %28, label %46

28:                                               ; preds = %36, %19
  %29 = phi i64 [ %37, %36 ], [ %23, %19 ]
  %30 = phi ptr [ %39, %36 ], [ %25, %19 ]
  br i1 %18, label %36, label %31

31:                                               ; preds = %28
  %32 = getelementptr inbounds %class.Clause, ptr %30, i64 0, i32 1
  %33 = load float, ptr %32, align 4, !tbaa !120
  %34 = load float, ptr %14, align 4, !tbaa !120
  %35 = fcmp olt float %33, %34
  br i1 %35, label %36, label %42

36:                                               ; preds = %31, %28
  %37 = add i64 %29, 1
  %38 = getelementptr inbounds ptr, ptr %9, i64 %37
  %39 = load ptr, ptr %38, align 8, !tbaa !7
  %40 = load i32, ptr %39, align 4, !tbaa !103
  %41 = icmp ugt i32 %40, 23
  br i1 %41, label %28, label %42, !llvm.loop !145

42:                                               ; preds = %36, %31
  %43 = phi i64 [ %37, %36 ], [ %29, %31 ]
  %44 = phi ptr [ %39, %36 ], [ %30, %31 ]
  %45 = trunc i64 %43 to i32
  br label %46

46:                                               ; preds = %42, %19
  %47 = phi i64 [ %23, %19 ], [ %43, %42 ]
  %48 = phi i32 [ %22, %19 ], [ %45, %42 ]
  %49 = phi ptr [ %25, %19 ], [ %44, %42 ]
  %50 = getelementptr inbounds ptr, ptr %9, i64 %47
  %51 = add nsw i32 %21, -1
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds ptr, ptr %9, i64 %52
  %54 = load ptr, ptr %53, align 8, !tbaa !7
  br i1 %16, label %55, label %72

55:                                               ; preds = %66, %46
  %56 = phi i64 [ %67, %66 ], [ %52, %46 ]
  %57 = phi ptr [ %69, %66 ], [ %54, %46 ]
  %58 = load i32, ptr %57, align 4, !tbaa !103
  %59 = and i32 %58, -8
  %60 = icmp eq i32 %59, 16
  br i1 %60, label %66, label %61

61:                                               ; preds = %55
  %62 = load float, ptr %14, align 4, !tbaa !120
  %63 = getelementptr inbounds %class.Clause, ptr %57, i64 0, i32 1
  %64 = load float, ptr %63, align 4, !tbaa !120
  %65 = fcmp olt float %62, %64
  br i1 %65, label %66, label %70

66:                                               ; preds = %61, %55
  %67 = add i64 %56, -1
  %68 = getelementptr inbounds ptr, ptr %9, i64 %67
  %69 = load ptr, ptr %68, align 8, !tbaa !7
  br label %55

70:                                               ; preds = %61
  %.lcssa1 = phi i64 [ %56, %61 ]
  %.lcssa = phi ptr [ %57, %61 ]
  %71 = trunc i64 %.lcssa1 to i32
  br label %72

72:                                               ; preds = %70, %46
  %73 = phi i64 [ %52, %46 ], [ %.lcssa1, %70 ]
  %74 = phi i32 [ %51, %46 ], [ %71, %70 ]
  %75 = phi ptr [ %54, %46 ], [ %.lcssa, %70 ]
  %76 = icmp slt i32 %48, %74
  br i1 %76, label %77, label %79

77:                                               ; preds = %72
  %78 = getelementptr inbounds ptr, ptr %9, i64 %73
  store ptr %75, ptr %50, align 8, !tbaa !7
  store ptr %49, ptr %78, align 8, !tbaa !7
  br label %19, !llvm.loop !146

79:                                               ; preds = %72
  %.lcssa3 = phi i32 [ %48, %72 ]
  %.lcssa2 = phi ptr [ %50, %72 ]
  tail call void @_Z4sortIP6Clause11reduceDB_ltEvPT_iT0_(ptr noundef nonnull %9, i32 noundef %.lcssa3) #33
  %80 = sub nsw i32 %8, %.lcssa3
  %81 = icmp slt i32 %80, 16
  br i1 %81, label %4, label %7
}

; Function Attrs: mustprogress optsize uwtable
define internal void @_Z13selectionSortIP6Clause11reduceDB_ltEvPT_iT0_(ptr noundef %0, i32 noundef %1) #0 comdat {
  %3 = icmp sgt i32 %1, 1
  br i1 %3, label %4, label %51

4:                                                ; preds = %2
  %5 = add nsw i32 %1, -1
  %6 = zext i32 %1 to i64
  %7 = zext i32 %5 to i64
  %8 = zext i32 %1 to i64
  br label %9

9:                                                ; preds = %42, %4
  %10 = phi i64 [ 0, %4 ], [ %12, %42 ]
  %11 = phi i64 [ 1, %4 ], [ %49, %42 ]
  %12 = add nuw nsw i64 %10, 1
  %13 = icmp ult i64 %12, %6
  %14 = trunc i64 %10 to i32
  br i1 %13, label %15, label %42

15:                                               ; preds = %38, %9
  %16 = phi i64 [ %40, %38 ], [ %11, %9 ]
  %17 = phi i32 [ %39, %38 ], [ %14, %9 ]
  %18 = getelementptr inbounds ptr, ptr %0, i64 %16
  %19 = load ptr, ptr %18, align 8, !tbaa !7
  %20 = sext i32 %17 to i64
  %21 = getelementptr inbounds ptr, ptr %0, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !7
  %23 = load i32, ptr %19, align 4, !tbaa !103
  %24 = icmp ugt i32 %23, 23
  br i1 %24, label %25, label %38

25:                                               ; preds = %15
  %26 = load i32, ptr %22, align 4, !tbaa !103
  %27 = and i32 %26, -8
  %28 = icmp eq i32 %27, 16
  br i1 %28, label %36, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %class.Clause, ptr %19, i64 0, i32 1
  %31 = load float, ptr %30, align 4, !tbaa !120
  %32 = getelementptr inbounds %class.Clause, ptr %22, i64 0, i32 1
  %33 = load float, ptr %32, align 4, !tbaa !120
  %34 = fcmp olt float %31, %33
  %35 = freeze i1 %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %29, %25
  %37 = trunc i64 %16 to i32
  br label %38

38:                                               ; preds = %36, %29, %15
  %39 = phi i32 [ %37, %36 ], [ %17, %29 ], [ %17, %15 ]
  %40 = add nuw nsw i64 %16, 1
  %41 = icmp eq i64 %40, %8
  br i1 %41, label %42, label %15, !llvm.loop !147

42:                                               ; preds = %38, %9
  %43 = phi i32 [ %14, %9 ], [ %39, %38 ]
  %44 = getelementptr inbounds ptr, ptr %0, i64 %10
  %45 = load ptr, ptr %44, align 8, !tbaa !7
  %46 = sext i32 %43 to i64
  %47 = getelementptr inbounds ptr, ptr %0, i64 %46
  %48 = load ptr, ptr %47, align 8, !tbaa !7
  store ptr %48, ptr %44, align 8, !tbaa !7
  store ptr %45, ptr %47, align 8, !tbaa !7
  %49 = add nuw nsw i64 %11, 1
  %50 = icmp eq i64 %12, %7
  br i1 %50, label %51, label %9, !llvm.loop !148

51:                                               ; preds = %42, %2
  ret void
}

; Function Attrs: mustprogress nounwind optsize uwtable
define internal void @_ZN6Solver15removeSatisfiedER3vecIP6ClauseE(ptr nocapture noundef nonnull align 8 dereferenceable(536) %0, ptr nocapture noundef nonnull align 8 dereferenceable(16) %1) #25 align 2 {
  %3 = getelementptr inbounds %class.vec, ptr %1, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !72
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %32

6:                                                ; preds = %20, %2
  %7 = phi i32 [ %21, %20 ], [ %4, %2 ]
  %8 = phi i64 [ %23, %20 ], [ 0, %2 ]
  %9 = phi i32 [ %22, %20 ], [ 0, %2 ]
  %10 = load ptr, ptr %1, align 8, !tbaa !73
  %11 = getelementptr inbounds ptr, ptr %10, i64 %8
  %12 = load ptr, ptr %11, align 8, !tbaa !7
  %13 = tail call noundef zeroext i1 @_ZNK6Solver9satisfiedERK6Clause(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef nonnull align 4 dereferenceable(8) %12) #33
  br i1 %13, label %14, label %16

14:                                               ; preds = %6
  tail call void @_ZN6Solver12detachClauseER6Clause(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef nonnull align 4 dereferenceable(8) %12) #33
  tail call void @free(ptr noundef nonnull %12) #32
  %15 = load i32, ptr %3, align 8, !tbaa !72
  br label %20

16:                                               ; preds = %6
  %17 = add nsw i32 %9, 1
  %18 = sext i32 %9 to i64
  %19 = getelementptr inbounds ptr, ptr %10, i64 %18
  store ptr %12, ptr %19, align 8, !tbaa !7
  br label %20

20:                                               ; preds = %16, %14
  %21 = phi i32 [ %15, %14 ], [ %7, %16 ]
  %22 = phi i32 [ %9, %14 ], [ %17, %16 ]
  %23 = add nuw nsw i64 %8, 1
  %24 = sext i32 %21 to i64
  %25 = icmp slt i64 %23, %24
  br i1 %25, label %6, label %26, !llvm.loop !149

26:                                               ; preds = %20
  %.lcssa2 = phi i32 [ %21, %20 ]
  %.lcssa1 = phi i32 [ %22, %20 ]
  %.lcssa = phi i64 [ %23, %20 ]
  %27 = trunc i64 %.lcssa to i32
  %28 = sub nsw i32 %27, %.lcssa1
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = sub i32 %.lcssa2, %28
  store i32 %31, ptr %3, align 8, !tbaa !72
  br label %32

32:                                               ; preds = %30, %26, %2
  ret void
}

; Function Attrs: optsize uwtable
define internal noundef zeroext i1 @_ZN6Solver8simplifyEv(ptr noundef nonnull align 8 dereferenceable(536) %0) #24 align 2 {
  %2 = alloca %"struct.Solver::VarOrderLt", align 8
  %3 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 21
  %4 = load i8, ptr %3, align 8, !tbaa !67, !range !95, !noundef !96
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = tail call noundef ptr @_ZN6Solver9propagateEv(ptr noundef nonnull align 8 dereferenceable(536) %0) #33
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %6, %1
  store i8 0, ptr %3, align 8, !tbaa !67
  br label %35

10:                                               ; preds = %6
  %11 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 31, i32 1
  %12 = load i32, ptr %11, align 8, !tbaa !50
  %13 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 36
  %14 = load i32, ptr %13, align 4, !tbaa !70
  %15 = icmp eq i32 %12, %14
  br i1 %15, label %35, label %16

16:                                               ; preds = %10
  %17 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 37
  %18 = load i64, ptr %17, align 8, !tbaa !109
  %19 = icmp sgt i64 %18, 0
  br i1 %19, label %35, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 23
  tail call void @_ZN6Solver15removeSatisfiedER3vecIP6ClauseE(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef nonnull align 8 dereferenceable(16) %21) #33
  %22 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 42
  %23 = load i8, ptr %22, align 8, !tbaa !71, !range !95, !noundef !96
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %20
  %26 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 22
  tail call void @_ZN6Solver15removeSatisfiedER3vecIP6ClauseE(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef nonnull align 8 dereferenceable(16) %26) #33
  br label %27

27:                                               ; preds = %25, %20
  %28 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 39
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #31
  store ptr %0, ptr %2, align 8, !tbaa !7
  call void @_ZN4HeapIN6Solver10VarOrderLtEE6filterINS0_9VarFilterEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(40) %28, ptr noundef nonnull align 8 dereferenceable(8) %2) #33
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #31
  %29 = load i32, ptr %11, align 8, !tbaa !50
  store i32 %29, ptr %13, align 4, !tbaa !70
  %30 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 17
  %31 = load i64, ptr %30, align 8, !tbaa !150
  %32 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 18
  %33 = load i64, ptr %32, align 8, !tbaa !151
  %34 = add i64 %33, %31
  store i64 %34, ptr %17, align 8, !tbaa !109
  br label %35

35:                                               ; preds = %27, %16, %10, %9
  %36 = phi i1 [ false, %9 ], [ true, %27 ], [ true, %16 ], [ true, %10 ]
  ret i1 %36
}

; Function Attrs: optsize uwtable
define internal void @_ZN4HeapIN6Solver10VarOrderLtEE6filterINS0_9VarFilterEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #24 comdat align 2 {
  %3 = getelementptr inbounds %class.Heap, ptr %0, i64 0, i32 1
  %4 = getelementptr inbounds %class.Heap, ptr %0, i64 0, i32 1, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !78
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %59

7:                                                ; preds = %2
  %8 = load ptr, ptr %3, align 8, !tbaa !77
  %9 = load ptr, ptr %1, align 8, !tbaa !152
  %10 = getelementptr inbounds %class.Solver, ptr %9, i64 0, i32 28
  %11 = load ptr, ptr %10, align 8, !tbaa !75
  %12 = getelementptr inbounds %class.Solver, ptr %9, i64 0, i32 30
  %13 = getelementptr inbounds %class.Heap, ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8
  br label %15

15:                                               ; preds = %35, %7
  %16 = phi i64 [ 0, %7 ], [ %40, %35 ]
  %17 = phi i32 [ 0, %7 ], [ %38, %35 ]
  %18 = getelementptr inbounds i32, ptr %8, i64 %16
  %19 = load i32, ptr %18, align 4, !tbaa !62
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8, ptr %11, i64 %20
  %22 = load i8, ptr %21, align 1, !tbaa !36
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %35

24:                                               ; preds = %15
  %25 = load ptr, ptr %12, align 8, !tbaa !75
  %26 = getelementptr inbounds i8, ptr %25, i64 %20
  %27 = load i8, ptr %26, align 1, !tbaa !36
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %24
  %30 = sext i32 %17 to i64
  %31 = getelementptr inbounds i32, ptr %8, i64 %30
  store i32 %19, ptr %31, align 4, !tbaa !62
  %32 = add nsw i32 %17, 1
  %33 = load i32, ptr %18, align 4, !tbaa !62
  %34 = sext i32 %33 to i64
  br label %35

35:                                               ; preds = %29, %24, %15
  %36 = phi i64 [ %34, %29 ], [ %20, %15 ], [ %20, %24 ]
  %37 = phi i32 [ %17, %29 ], [ -1, %15 ], [ -1, %24 ]
  %38 = phi i32 [ %32, %29 ], [ %17, %15 ], [ %17, %24 ]
  %39 = getelementptr inbounds i32, ptr %14, i64 %36
  store i32 %37, ptr %39, align 4, !tbaa !62
  %40 = add nuw nsw i64 %16, 1
  %41 = load i32, ptr %4, align 8, !tbaa !78
  %42 = sext i32 %41 to i64
  %43 = icmp slt i64 %40, %42
  br i1 %43, label %15, label %44, !llvm.loop !154

44:                                               ; preds = %35
  %.lcssa2 = phi i32 [ %38, %35 ]
  %.lcssa1 = phi i64 [ %40, %35 ]
  %.lcssa = phi i32 [ %41, %35 ]
  %45 = trunc i64 %.lcssa1 to i32
  %46 = sub nsw i32 %45, %.lcssa2
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %44
  %49 = sub i32 %.lcssa, %46
  store i32 %49, ptr %4, align 8, !tbaa !78
  br label %50

50:                                               ; preds = %48, %44
  %51 = phi i32 [ %.lcssa, %44 ], [ %49, %48 ]
  %52 = icmp sgt i32 %51, 1
  br i1 %52, label %53, label %59

53:                                               ; preds = %50
  %54 = lshr i32 %51, 1
  %55 = load ptr, ptr %3, align 8, !tbaa !77
  %56 = getelementptr inbounds %class.Heap, ptr %0, i64 0, i32 2
  %57 = load ptr, ptr %56, align 8
  %58 = zext i32 %54 to i64
  br label %60

59:                                               ; preds = %127, %50, %2
  ret void

60:                                               ; preds = %127, %53
  %61 = phi i64 [ %58, %53 ], [ %62, %127 ]
  %62 = add nsw i64 %61, -1
  %63 = trunc i64 %62 to i32
  %64 = and i64 %62, 4294967295
  %65 = getelementptr inbounds i32, ptr %55, i64 %64
  %66 = load i32, ptr %65, align 4, !tbaa !62
  %67 = shl nuw nsw i32 %63, 1
  %68 = or i32 %67, 1
  %69 = load i32, ptr %4, align 8, !tbaa !78
  %70 = icmp slt i32 %68, %69
  %71 = sext i32 %66 to i64
  br i1 %70, label %72, label %127

72:                                               ; preds = %60
  %73 = load ptr, ptr %0, align 8
  %74 = load ptr, ptr %73, align 8, !tbaa !81
  %75 = getelementptr inbounds double, ptr %74, i64 %71
  %76 = load double, ptr %75, align 8, !tbaa !63
  %77 = load ptr, ptr %56, align 8
  br label %78

78:                                               ; preds = %116, %72
  %79 = phi i32 [ %69, %72 ], [ %122, %116 ]
  %80 = phi i32 [ %68, %72 ], [ %121, %116 ]
  %81 = phi i32 [ %67, %72 ], [ %120, %116 ]
  %82 = phi i32 [ %63, %72 ], [ %114, %116 ]
  %83 = add i32 %81, 2
  %84 = icmp slt i32 %83, %79
  br i1 %84, label %92, label %85

85:                                               ; preds = %78
  %86 = sext i32 %80 to i64
  %87 = getelementptr inbounds i32, ptr %55, i64 %86
  %88 = load i32, ptr %87, align 4, !tbaa !62
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds double, ptr %74, i64 %89
  %91 = load double, ptr %90, align 8, !tbaa !63
  br label %106

92:                                               ; preds = %78
  %93 = sext i32 %83 to i64
  %94 = getelementptr inbounds i32, ptr %55, i64 %93
  %95 = load i32, ptr %94, align 4, !tbaa !62
  %96 = sext i32 %80 to i64
  %97 = getelementptr inbounds i32, ptr %55, i64 %96
  %98 = load i32, ptr %97, align 4, !tbaa !62
  %99 = sext i32 %95 to i64
  %100 = getelementptr inbounds double, ptr %74, i64 %99
  %101 = load double, ptr %100, align 8, !tbaa !63
  %102 = sext i32 %98 to i64
  %103 = getelementptr inbounds double, ptr %74, i64 %102
  %104 = load double, ptr %103, align 8, !tbaa !63
  %105 = fcmp ogt double %101, %104
  br i1 %105, label %110, label %106

106:                                              ; preds = %92, %85
  %107 = phi i64 [ %89, %85 ], [ %102, %92 ]
  %108 = phi double [ %91, %85 ], [ %104, %92 ]
  %109 = phi i32 [ %88, %85 ], [ %98, %92 ]
  br label %110

110:                                              ; preds = %106, %92
  %111 = phi i64 [ %99, %92 ], [ %107, %106 ]
  %112 = phi double [ %101, %92 ], [ %108, %106 ]
  %113 = phi i32 [ %95, %92 ], [ %109, %106 ]
  %114 = phi i32 [ %83, %92 ], [ %80, %106 ]
  %115 = fcmp ogt double %112, %76
  br i1 %115, label %116, label %124

116:                                              ; preds = %110
  %117 = sext i32 %82 to i64
  %118 = getelementptr inbounds i32, ptr %55, i64 %117
  store i32 %113, ptr %118, align 4, !tbaa !62
  %119 = getelementptr inbounds i32, ptr %77, i64 %111
  store i32 %82, ptr %119, align 4, !tbaa !62
  %120 = shl nsw i32 %114, 1
  %121 = or i32 %120, 1
  %122 = load i32, ptr %4, align 8, !tbaa !78
  %123 = icmp slt i32 %121, %122
  br i1 %123, label %78, label %124

124:                                              ; preds = %116, %110
  %125 = phi i32 [ %114, %116 ], [ %82, %110 ]
  %126 = sext i32 %125 to i64
  br label %127

127:                                              ; preds = %124, %60
  %128 = phi i64 [ %126, %124 ], [ %64, %60 ]
  %129 = phi ptr [ %77, %124 ], [ %57, %60 ]
  %130 = phi i32 [ %125, %124 ], [ %63, %60 ]
  %131 = getelementptr inbounds i32, ptr %55, i64 %128
  store i32 %66, ptr %131, align 4, !tbaa !62
  %132 = getelementptr inbounds i32, ptr %129, i64 %71
  store i32 %130, ptr %132, align 4, !tbaa !62
  %133 = icmp sgt i64 %61, 1
  br i1 %133, label %60, label %59, !llvm.loop !155
}

; Function Attrs: optsize uwtable
define internal i8 @_ZN6Solver6searchEii(ptr noundef nonnull align 8 dereferenceable(536) %0, i32 noundef %1, i32 noundef %2) #24 align 2 personality ptr @__gxx_personality_v0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %class.vec, align 8
  %8 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #31
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  %9 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 12
  %10 = load i64, ptr %9, align 8, !tbaa !11
  %11 = add i64 %10, 1
  store i64 %11, ptr %9, align 8, !tbaa !11
  %12 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 16
  %13 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 32, i32 1
  %14 = getelementptr inbounds %class.vec, ptr %7, i64 0, i32 1
  %15 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 23
  %16 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 24
  %17 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 23, i32 1
  %18 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 2
  %19 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 26
  %20 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 3
  %21 = icmp slt i32 %1, 0
  %22 = icmp sgt i32 %2, -1
  %23 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 31, i32 1
  %24 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 38, i32 1
  %25 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 38
  %26 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 28
  %27 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 32
  %28 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 13
  %29 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 10
  %30 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 4
  br label %31

31:                                               ; preds = %119, %3
  %32 = phi i32 [ %42, %119 ], [ 0, %3 ]
  %33 = icmp slt i32 %32, %1
  %34 = select i1 %21, i1 true, i1 %33
  br label %35

35:                                               ; preds = %190, %31
  %36 = invoke noundef ptr @_ZN6Solver9propagateEv(ptr noundef nonnull align 8 dereferenceable(536) %0) #33
          to label %37 unwind label %45

37:                                               ; preds = %35
  %38 = icmp eq ptr %36, null
  br i1 %38, label %126, label %39

39:                                               ; preds = %37
  %.lcssa3 = phi ptr [ %36, %37 ]
  %40 = load i64, ptr %12, align 8, !tbaa !26
  %41 = add i64 %40, 1
  store i64 %41, ptr %12, align 8, !tbaa !26
  %42 = add nuw nsw i32 %32, 1
  %43 = load i32, ptr %13, align 8, !tbaa !78
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %197, label %51

45:                                               ; preds = %142, %133, %35
  %46 = landingpad { ptr, i32 }
          cleanup
  br label %191

47:                                               ; preds = %56, %55
  %48 = landingpad { ptr, i32 }
          cleanup
  br label %191

49:                                               ; preds = %127
  %50 = landingpad { ptr, i32 }
          cleanup
  br label %191

51:                                               ; preds = %39
  %52 = load ptr, ptr %7, align 8, !tbaa !49
  %53 = icmp eq ptr %52, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %51
  store i32 0, ptr %14, align 8, !tbaa !50
  br label %55

55:                                               ; preds = %54, %51
  invoke void @_ZN6Solver7analyzeEP6ClauseR3vecI3LitERi(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef nonnull %.lcssa3, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 4 dereferenceable(4) %6) #33
          to label %56 unwind label %47

56:                                               ; preds = %55
  %57 = load i32, ptr %6, align 4, !tbaa !62
  invoke void @_ZN6Solver11cancelUntilEi(ptr noundef nonnull align 8 dereferenceable(536) %0, i32 noundef %57) #33
          to label %58 unwind label %47

58:                                               ; preds = %56
  %59 = load i32, ptr %14, align 8, !tbaa !50
  %60 = icmp eq i32 %59, 1
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = load ptr, ptr %7, align 8, !tbaa !49
  %63 = load i32, ptr %62, align 4, !tbaa.struct !98
  call void @_ZN6Solver16uncheckedEnqueueE3LitP6Clause(ptr noundef nonnull align 8 dereferenceable(536) %0, i32 %63, ptr noundef null) #33
  br label %119

64:                                               ; preds = %58
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #31
  %65 = sext i32 %59 to i64
  %66 = shl nsw i64 %65, 2
  %67 = add nsw i64 %66, 8
  %68 = call noalias ptr @malloc(i64 noundef %67) #41
  %69 = shl i32 %59, 3
  %70 = or i32 %69, 1
  store i32 %70, ptr %68, align 4, !tbaa !103
  %71 = icmp sgt i32 %59, 0
  br i1 %71, label %72, label %81

72:                                               ; preds = %64
  %73 = load ptr, ptr %7, align 8, !tbaa !49
  br label %74

74:                                               ; preds = %74, %72
  %75 = phi i64 [ 0, %72 ], [ %79, %74 ]
  %76 = getelementptr inbounds %class.Lit, ptr %73, i64 %75
  %77 = getelementptr inbounds %class.Clause, ptr %68, i64 0, i32 2, i64 %75
  %78 = load i32, ptr %76, align 4, !tbaa !62
  store i32 %78, ptr %77, align 4, !tbaa !62
  %79 = add nuw nsw i64 %75, 1
  %80 = icmp eq i64 %79, %65
  br i1 %80, label %81, label %74, !llvm.loop !110

81:                                               ; preds = %74, %64
  %82 = getelementptr inbounds %class.Clause, ptr %68, i64 0, i32 1
  store float 0.000000e+00, ptr %82, align 4, !tbaa !36
  store ptr %68, ptr %8, align 8, !tbaa !7
  invoke void @_ZN3vecIP6ClauseE4pushERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull align 8 dereferenceable(8) %8) #33
          to label %83 unwind label %117

83:                                               ; preds = %81
  %84 = load ptr, ptr %8, align 8, !tbaa !7
  invoke void @_ZN6Solver12attachClauseER6Clause(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef nonnull align 4 dereferenceable(8) %84) #33
          to label %85 unwind label %117

85:                                               ; preds = %83
  %86 = load ptr, ptr %8, align 8, !tbaa !7
  %87 = load double, ptr %16, align 8, !tbaa !68
  %88 = getelementptr inbounds %class.Clause, ptr %86, i64 0, i32 1
  %89 = load float, ptr %88, align 4, !tbaa !120
  %90 = fpext float %89 to double
  %91 = fadd double %87, %90
  %92 = fptrunc double %91 to float
  store float %92, ptr %88, align 4, !tbaa !120
  %93 = fpext float %92 to double
  %94 = fcmp ogt double %93, 1.000000e+20
  br i1 %94, label %95, label %114

95:                                               ; preds = %85
  %96 = load i32, ptr %17, align 8, !tbaa !72
  %97 = icmp sgt i32 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %95
  %99 = load ptr, ptr %15, align 8, !tbaa !73
  %100 = zext i32 %96 to i64
  br label %103

101:                                              ; preds = %103, %95
  %102 = fmul double %87, 0x3BC79CA10C924223
  store double %102, ptr %16, align 8, !tbaa !68
  br label %114

103:                                              ; preds = %103, %98
  %104 = phi i64 [ 0, %98 ], [ %112, %103 ]
  %105 = getelementptr inbounds ptr, ptr %99, i64 %104
  %106 = load ptr, ptr %105, align 8, !tbaa !7
  %107 = getelementptr inbounds %class.Clause, ptr %106, i64 0, i32 1
  %108 = load float, ptr %107, align 4, !tbaa !120
  %109 = fpext float %108 to double
  %110 = fmul double %109, 0x3BC79CA10C924223
  %111 = fptrunc double %110 to float
  store float %111, ptr %107, align 4, !tbaa !120
  %112 = add nuw nsw i64 %104, 1
  %113 = icmp eq i64 %112, %100
  br i1 %113, label %101, label %103, !llvm.loop !122

114:                                              ; preds = %101, %85
  %115 = load ptr, ptr %7, align 8, !tbaa !49
  %116 = load i32, ptr %115, align 4, !tbaa.struct !98
  call void @_ZN6Solver16uncheckedEnqueueE3LitP6Clause(ptr noundef nonnull align 8 dereferenceable(536) %0, i32 %116, ptr noundef %86) #33
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #31
  br label %119

117:                                              ; preds = %83, %81
  %118 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #31
  br label %191

119:                                              ; preds = %114, %61
  %120 = load double, ptr %18, align 8, !tbaa !35
  %121 = load double, ptr %19, align 8, !tbaa !69
  %122 = fmul double %120, %121
  store double %122, ptr %19, align 8, !tbaa !69
  %123 = load double, ptr %20, align 8, !tbaa !156
  %124 = load double, ptr %16, align 8, !tbaa !68
  %125 = fmul double %123, %124
  store double %125, ptr %16, align 8, !tbaa !68
  br label %31, !llvm.loop !157

126:                                              ; preds = %37
  br i1 %34, label %130, label %127

127:                                              ; preds = %126
  %.lcssa4 = phi ptr [ %36, %126 ]
  %128 = call noundef double @_ZNK6Solver16progressEstimateEv(ptr noundef nonnull align 8 dereferenceable(536) %0) #33
  %129 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 41
  store double %128, ptr %129, align 8, !tbaa !158
  invoke void @_ZN6Solver11cancelUntilEi(ptr noundef nonnull align 8 dereferenceable(536) %0, i32 noundef 0) #33
          to label %197 unwind label %49

130:                                              ; preds = %126
  %131 = load i32, ptr %13, align 8, !tbaa !78
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %130
  %134 = invoke noundef zeroext i1 @_ZN6Solver8simplifyEv(ptr noundef nonnull align 8 dereferenceable(536) %0) #33
          to label %135 unwind label %45

135:                                              ; preds = %133
  br i1 %134, label %136, label %197

136:                                              ; preds = %135, %130
  br i1 %22, label %137, label %143

137:                                              ; preds = %136
  %138 = load i32, ptr %17, align 8, !tbaa !72
  %139 = load i32, ptr %23, align 8, !tbaa !50
  %140 = sub nsw i32 %138, %139
  %141 = icmp slt i32 %140, %2
  br i1 %141, label %143, label %142

142:                                              ; preds = %137
  invoke void @_ZN6Solver8reduceDBEv(ptr noundef nonnull align 8 dereferenceable(536) %0) #33
          to label %143 unwind label %45

143:                                              ; preds = %142, %137, %136
  %144 = load i32, ptr %13, align 8, !tbaa !78
  %145 = load i32, ptr %24, align 8, !tbaa !50
  %146 = icmp slt i32 %144, %145
  br i1 %146, label %147, label %177

147:                                              ; preds = %171, %143
  %148 = phi i32 [ %172, %171 ], [ %144, %143 ]
  %149 = load ptr, ptr %25, align 8, !tbaa !49
  %150 = sext i32 %148 to i64
  %151 = getelementptr inbounds %class.Lit, ptr %149, i64 %150
  %152 = load i32, ptr %151, align 4, !tbaa.struct !98
  %153 = ashr i32 %152, 1
  %154 = load ptr, ptr %26, align 8, !tbaa !75
  %155 = sext i32 %153 to i64
  %156 = getelementptr inbounds i8, ptr %154, i64 %155
  %157 = load i8, ptr %156, align 1, !tbaa !36
  %158 = and i32 %152, 1
  %159 = icmp eq i32 %158, 0
  %160 = sub i8 0, %157
  %161 = select i1 %159, i8 %157, i8 %160
  switch i8 %161, label %175 [
    i8 1, label %162
    i8 -1, label %168
  ]

162:                                              ; preds = %147
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #31
  %163 = load i32, ptr %23, align 8, !tbaa !50
  store i32 %163, ptr %5, align 4, !tbaa !62
  invoke void @_ZN3vecIiE4pushERKi(ptr noundef nonnull align 8 dereferenceable(16) %27, ptr noundef nonnull align 4 dereferenceable(4) %5) #33
          to label %171 unwind label %166

164:                                              ; preds = %187
  %165 = landingpad { ptr, i32 }
          cleanup
  br label %191

166:                                              ; preds = %162
  %167 = landingpad { ptr, i32 }
          cleanup
  br label %191

168:                                              ; preds = %147
  %.lcssa6 = phi ptr [ %36, %147 ]
  %.lcssa1 = phi i32 [ %152, %147 ]
  %169 = xor i32 %.lcssa1, 1
  %170 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 1
  call void @_ZN6Solver12analyzeFinalE3LitR3vecIS0_E(ptr noundef nonnull align 8 dereferenceable(536) %0, i32 %169, ptr noundef nonnull align 8 dereferenceable(16) %170) #33
  br label %197

171:                                              ; preds = %162
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #31
  %172 = load i32, ptr %13, align 8, !tbaa !78
  %173 = load i32, ptr %24, align 8, !tbaa !50
  %174 = icmp slt i32 %172, %173
  br i1 %174, label %147, label %177

175:                                              ; preds = %147
  %.lcssa = phi i32 [ %152, %147 ]
  %176 = icmp eq i32 %.lcssa, -2
  br i1 %176, label %177, label %187

177:                                              ; preds = %175, %171, %143
  %178 = load i64, ptr %28, align 8, !tbaa !27
  %179 = add i64 %178, 1
  store i64 %179, ptr %28, align 8, !tbaa !27
  %180 = load i32, ptr %29, align 4, !tbaa !33
  %181 = load double, ptr %30, align 8, !tbaa !34
  %182 = invoke i32 @_ZN6Solver13pickBranchLitEid(ptr noundef nonnull align 8 dereferenceable(536) %0, i32 noundef %180, double noundef %181) #33
          to label %183 unwind label %185

183:                                              ; preds = %177
  %184 = icmp eq i32 %182, -2
  br i1 %184, label %197, label %187

185:                                              ; preds = %177
  %186 = landingpad { ptr, i32 }
          cleanup
  br label %191

187:                                              ; preds = %183, %175
  %188 = phi i32 [ %182, %183 ], [ %.lcssa, %175 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #31
  %189 = load i32, ptr %23, align 8, !tbaa !50
  store i32 %189, ptr %4, align 4, !tbaa !62
  invoke void @_ZN3vecIiE4pushERKi(ptr noundef nonnull align 8 dereferenceable(16) %27, ptr noundef nonnull align 4 dereferenceable(4) %4) #33
          to label %190 unwind label %164

190:                                              ; preds = %187
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #31
  call void @_ZN6Solver16uncheckedEnqueueE3LitP6Clause(ptr noundef nonnull align 8 dereferenceable(536) %0, i32 %188, ptr noundef null) #33
  br label %35, !llvm.loop !157

191:                                              ; preds = %185, %166, %164, %117, %49, %47, %45
  %192 = phi { ptr, i32 } [ %118, %117 ], [ %165, %164 ], [ %186, %185 ], [ %167, %166 ], [ %50, %49 ], [ %46, %45 ], [ %48, %47 ]
  %193 = load ptr, ptr %7, align 8, !tbaa !49
  %194 = icmp eq ptr %193, null
  br i1 %194, label %196, label %195

195:                                              ; preds = %191
  store i32 0, ptr %14, align 8, !tbaa !50
  call void @free(ptr noundef nonnull %193) #32
  br label %196

196:                                              ; preds = %195, %191
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #31
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #31
  resume { ptr, i32 } %192

197:                                              ; preds = %183, %168, %135, %127, %39
  %198 = phi i8 [ 0, %127 ], [ -1, %168 ], [ -1, %135 ], [ 1, %183 ], [ -1, %39 ]
  %199 = load ptr, ptr %7, align 8, !tbaa !49
  %200 = icmp eq ptr %199, null
  br i1 %200, label %202, label %201

201:                                              ; preds = %197
  store i32 0, ptr %14, align 8, !tbaa !50
  call void @free(ptr noundef nonnull %199) #32
  br label %202

202:                                              ; preds = %201, %197
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #31
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #31
  ret i8 %198
}

; Function Attrs: mustprogress nofree nounwind optsize memory(readwrite, inaccessiblemem: write) uwtable
define internal noundef double @_ZNK6Solver16progressEstimateEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(536) %0) #29 align 2 {
  %2 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 28, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !51
  %4 = sitofp i32 %3 to double
  %5 = fdiv double 1.000000e+00, %4
  %6 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 32, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !78
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %15, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 32
  %11 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 31, i32 1
  br label %19

12:                                               ; preds = %29
  %.lcssa = phi double [ %41, %29 ]
  %13 = load i32, ptr %2, align 8, !tbaa !51
  %14 = sitofp i32 %13 to double
  br label %15

15:                                               ; preds = %12, %1
  %16 = phi double [ %14, %12 ], [ %4, %1 ]
  %17 = phi double [ %.lcssa, %12 ], [ 0.000000e+00, %1 ]
  %18 = fdiv double %17, %16
  ret double %18

19:                                               ; preds = %29, %9
  %20 = phi i64 [ 0, %9 ], [ %42, %29 ]
  %21 = phi i32 [ %7, %9 ], [ %43, %29 ]
  %22 = phi double [ 0.000000e+00, %9 ], [ %41, %29 ]
  %23 = icmp eq i64 %20, 0
  %24 = load ptr, ptr %10, align 8
  br i1 %23, label %29, label %25

25:                                               ; preds = %19
  %26 = add nsw i64 %20, -1
  %27 = getelementptr inbounds i32, ptr %24, i64 %26
  %28 = load i32, ptr %27, align 4, !tbaa !62
  br label %29

29:                                               ; preds = %25, %19
  %30 = phi i32 [ %28, %25 ], [ 0, %19 ]
  %31 = zext i32 %21 to i64
  %32 = icmp eq i64 %20, %31
  %33 = getelementptr inbounds i32, ptr %24, i64 %20
  %34 = select i1 %32, ptr %11, ptr %33
  %35 = load i32, ptr %34, align 4, !tbaa !62
  %36 = trunc i64 %20 to i32
  %37 = sitofp i32 %36 to double
  %38 = tail call double @pow(double noundef %5, double noundef %37) #32
  %39 = sub nsw i32 %35, %30
  %40 = sitofp i32 %39 to double
  %41 = tail call double @llvm.fmuladd.f64(double %38, double %40, double %22)
  %42 = add nuw nsw i64 %20, 1
  %43 = load i32, ptr %6, align 8, !tbaa !78
  %44 = sext i32 %43 to i64
  %45 = icmp slt i64 %20, %44
  br i1 %45, label %19, label %12, !llvm.loop !159
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #30

; Function Attrs: optsize uwtable
define internal noundef zeroext i1 @_ZN6Solver5solveERK3vecI3LitE(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) #24 align 2 {
  %3 = load ptr, ptr %0, align 8, !tbaa !55
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %class.vec, ptr %0, i64 0, i32 1
  store i32 0, ptr %6, align 8, !tbaa !84
  br label %7

7:                                                ; preds = %5, %2
  %8 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !49
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 1, i32 1
  store i32 0, ptr %12, align 8, !tbaa !50
  br label %13

13:                                               ; preds = %11, %7
  %14 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 21
  %15 = load i8, ptr %14, align 8, !tbaa !67, !range !95, !noundef !96
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %67, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 38
  tail call void @_ZNK3vecI3LitE6copyToERS1_(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %18) #33
  %19 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 5
  %20 = load i32, ptr %19, align 8, !tbaa !64
  %21 = sitofp i32 %20 to double
  %22 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 22, i32 1
  %23 = load i32, ptr %22, align 8, !tbaa !72
  %24 = sitofp i32 %23 to double
  %25 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 7
  %26 = load double, ptr %25, align 8, !tbaa !160
  %27 = fmul double %26, %24
  %28 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 6
  %29 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 8
  br label %30

30:                                               ; preds = %30, %17
  %31 = phi double [ %21, %17 ], [ %37, %30 ]
  %32 = phi double [ %27, %17 ], [ %39, %30 ]
  %33 = fptosi double %31 to i32
  %34 = fptosi double %32 to i32
  %35 = tail call i8 @_ZN6Solver6searchEii(ptr noundef nonnull align 8 dereferenceable(536) %0, i32 noundef %33, i32 noundef %34) #33
  %36 = load double, ptr %28, align 8, !tbaa !161
  %37 = fmul double %31, %36
  %38 = load double, ptr %29, align 8, !tbaa !65
  %39 = fmul double %32, %38
  %40 = icmp eq i8 %35, 0
  br i1 %40, label %30, label %41, !llvm.loop !162

41:                                               ; preds = %30
  %.lcssa = phi i8 [ %35, %30 ]
  %42 = icmp eq i8 %.lcssa, 1
  br i1 %42, label %43, label %61

43:                                               ; preds = %41
  %44 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 28, i32 1
  %45 = load i32, ptr %44, align 8, !tbaa !51
  tail call void @_ZN3vecI5lboolE6growToEi(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %45) #33
  %46 = load i32, ptr %44, align 8, !tbaa !51
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %48, label %66

48:                                               ; preds = %43
  %49 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 28
  br label %50

50:                                               ; preds = %50, %48
  %51 = phi i64 [ 0, %48 ], [ %57, %50 ]
  %52 = load ptr, ptr %49, align 8, !tbaa !75
  %53 = getelementptr inbounds i8, ptr %52, i64 %51
  %54 = load i8, ptr %53, align 1, !tbaa !36
  %55 = load ptr, ptr %0, align 8, !tbaa !55
  %56 = getelementptr inbounds %class.lbool, ptr %55, i64 %51
  store i8 %54, ptr %56, align 1, !tbaa.struct !163
  %57 = add nuw nsw i64 %51, 1
  %58 = load i32, ptr %44, align 8, !tbaa !51
  %59 = sext i32 %58 to i64
  %60 = icmp slt i64 %57, %59
  br i1 %60, label %50, label %66, !llvm.loop !164

61:                                               ; preds = %41
  %62 = getelementptr inbounds %class.Solver, ptr %0, i64 0, i32 1, i32 1
  %63 = load i32, ptr %62, align 8, !tbaa !50
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %61
  store i8 0, ptr %14, align 8, !tbaa !67
  br label %66

66:                                               ; preds = %65, %61, %50, %43
  tail call void @_ZN6Solver11cancelUntilEi(ptr noundef nonnull align 8 dereferenceable(536) %0, i32 noundef 0) #33
  br label %67

67:                                               ; preds = %66, %13
  %68 = phi i1 [ %42, %66 ], [ false, %13 ]
  ret i1 %68
}

; Function Attrs: optsize uwtable
define internal void @_ZN3vecI5lboolE6growToEi(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1) #24 comdat align 2 {
  %3 = getelementptr inbounds %class.vec, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !84
  %5 = icmp slt i32 %4, %1
  br i1 %5, label %6, label %18

6:                                                ; preds = %2
  tail call void @_ZN3vecI5lboolE4growEi(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1) #33
  %7 = load i32, ptr %3, align 8, !tbaa !84
  %8 = icmp slt i32 %7, %1
  br i1 %8, label %9, label %17

9:                                                ; preds = %6
  %10 = load ptr, ptr %0, align 8, !tbaa !55
  %11 = sext i32 %7 to i64
  %12 = getelementptr i8, ptr %10, i64 %11
  %13 = xor i32 %7, -1
  %14 = add i32 %13, %1
  %15 = zext i32 %14 to i64
  %16 = add nuw nsw i64 %15, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %12, i8 0, i64 %16, i1 false), !tbaa !56
  br label %17

17:                                               ; preds = %9, %6
  store i32 %1, ptr %3, align 8, !tbaa !84
  br label %18

18:                                               ; preds = %17, %2
  ret void
}

; Function Attrs: mustprogress nounwind optsize uwtable
define internal void @_ZN3vecI5lboolE4growEi(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1) #25 comdat align 2 {
  %3 = getelementptr inbounds %class.vec, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !85
  %5 = icmp slt i32 %4, %1
  br i1 %5, label %6, label %21

6:                                                ; preds = %2
  %7 = icmp eq i32 %4, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %6
  %9 = tail call i32 @llvm.smax.i32(i32 %1, i32 2)
  br label %16

10:                                               ; preds = %10, %6
  %11 = phi i32 [ %14, %10 ], [ %4, %6 ]
  %12 = mul nsw i32 %11, 3
  %13 = add nsw i32 %12, 1
  %14 = ashr i32 %13, 1
  %15 = icmp slt i32 %14, %1
  br i1 %15, label %10, label %16, !llvm.loop !165

16:                                               ; preds = %10, %8
  %17 = phi i32 [ %9, %8 ], [ %14, %10 ]
  store i32 %17, ptr %3, align 4, !tbaa !85
  %18 = load ptr, ptr %0, align 8, !tbaa !55
  %19 = sext i32 %17 to i64
  %20 = tail call ptr @realloc(ptr noundef %18, i64 noundef %19) #40
  store ptr %20, ptr %0, align 8, !tbaa !55
  br label %21

21:                                               ; preds = %16, %2
  ret void
}

attributes #0 = { mustprogress optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind }
attributes #7 = { mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { norecurse noreturn optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { noreturn nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nounwind optsize willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nobuiltin optsize allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #15 = { mustprogress norecurse optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { inlinehint optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nounwind optsize willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nofree optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { mustprogress nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { nofree norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { nofree norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { mustprogress nofree nounwind optsize memory(readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { nounwind }
attributes #32 = { nounwind optsize }
attributes #33 = { optsize }
attributes #34 = { cold optsize }
attributes #35 = { cold }
attributes #36 = { nounwind optsize willreturn memory(read) }
attributes #37 = { noreturn nounwind optsize }
attributes #38 = { builtin optsize allocsize(0) }
attributes #39 = { builtin nounwind optsize }
attributes #40 = { nounwind optsize allocsize(1) }
attributes #41 = { nounwind optsize allocsize(0) }

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
!10 = !{!"Simple C++ TBAA"}
!11 = !{!12, !18, i64 104}
!12 = !{!"_ZTS6Solver", !13, i64 0, !15, i64 16, !16, i64 32, !16, i64 40, !16, i64 48, !14, i64 56, !16, i64 64, !16, i64 72, !16, i64 80, !17, i64 88, !14, i64 92, !14, i64 96, !18, i64 104, !18, i64 112, !18, i64 120, !18, i64 128, !18, i64 136, !18, i64 144, !18, i64 152, !18, i64 160, !18, i64 168, !17, i64 176, !19, i64 184, !19, i64 200, !16, i64 216, !20, i64 224, !16, i64 240, !21, i64 248, !22, i64 264, !22, i64 280, !22, i64 296, !15, i64 312, !23, i64 328, !19, i64 344, !23, i64 360, !14, i64 376, !14, i64 380, !18, i64 384, !15, i64 392, !24, i64 408, !16, i64 448, !16, i64 456, !17, i64 464, !22, i64 472, !15, i64 488, !15, i64 504, !15, i64 520}
!13 = !{!"_ZTS3vecI5lboolE", !8, i64 0, !14, i64 8, !14, i64 12}
!14 = !{!"int", !9, i64 0}
!15 = !{!"_ZTS3vecI3LitE", !8, i64 0, !14, i64 8, !14, i64 12}
!16 = !{!"double", !9, i64 0}
!17 = !{!"bool", !9, i64 0}
!18 = !{!"long", !9, i64 0}
!19 = !{!"_ZTS3vecIP6ClauseE", !8, i64 0, !14, i64 8, !14, i64 12}
!20 = !{!"_ZTS3vecIdE", !8, i64 0, !14, i64 8, !14, i64 12}
!21 = !{!"_ZTS3vecIS_IP6ClauseEE", !8, i64 0, !14, i64 8, !14, i64 12}
!22 = !{!"_ZTS3vecIcE", !8, i64 0, !14, i64 8, !14, i64 12}
!23 = !{!"_ZTS3vecIiE", !8, i64 0, !14, i64 8, !14, i64 12}
!24 = !{!"_ZTS4HeapIN6Solver10VarOrderLtEE", !25, i64 0, !23, i64 8, !23, i64 24}
!25 = !{!"_ZTSN6Solver10VarOrderLtE", !8, i64 0}
!26 = !{!12, !18, i64 136}
!27 = !{!12, !18, i64 112}
!28 = !{!12, !18, i64 120}
!29 = !{!12, !18, i64 128}
!30 = !{!12, !18, i64 168}
!31 = !{!12, !18, i64 160}
!32 = !{!12, !14, i64 96}
!33 = !{!12, !14, i64 92}
!34 = !{!12, !16, i64 48}
!35 = !{!12, !16, i64 32}
!36 = !{!9, !9, i64 0}
!37 = distinct !{!37, !38}
!38 = !{!"llvm.loop.mustprogress"}
!39 = !{i64 2148203194}
!40 = !{!41, !41, i64 0}
!41 = !{!"short", !9, i64 0}
!42 = !{i64 2148203261}
!43 = !{!44, !8, i64 0}
!44 = !{!"_ZTS12StreamBuffer", !8, i64 0, !9, i64 8, !14, i64 1048584, !14, i64 1048588}
!45 = !{!44, !14, i64 1048584}
!46 = !{!44, !14, i64 1048588}
!47 = distinct !{!47, !38}
!48 = distinct !{!48, !38}
!49 = !{!15, !8, i64 0}
!50 = !{!15, !14, i64 8}
!51 = !{!22, !14, i64 8}
!52 = distinct !{!52, !38}
!53 = distinct !{!53, !38}
!54 = distinct !{!54, !38}
!55 = !{!13, !8, i64 0}
!56 = !{!57, !9, i64 0}
!57 = !{!"_ZTS5lbool", !9, i64 0}
!58 = distinct !{!58, !38}
!59 = distinct !{!59, !38}
!60 = distinct !{!60, !38}
!61 = !{!15, !14, i64 12}
!62 = !{!14, !14, i64 0}
!63 = !{!16, !16, i64 0}
!64 = !{!12, !14, i64 56}
!65 = !{!12, !16, i64 80}
!66 = !{!12, !17, i64 88}
!67 = !{!12, !17, i64 176}
!68 = !{!12, !16, i64 216}
!69 = !{!12, !16, i64 240}
!70 = !{!12, !14, i64 380}
!71 = !{!12, !17, i64 464}
!72 = !{!19, !14, i64 8}
!73 = !{!19, !8, i64 0}
!74 = distinct !{!74, !38}
!75 = !{!22, !8, i64 0}
!76 = !{!22, !14, i64 12}
!77 = !{!23, !8, i64 0}
!78 = !{!23, !14, i64 8}
!79 = !{!23, !14, i64 12}
!80 = !{!19, !14, i64 12}
!81 = !{!20, !8, i64 0}
!82 = !{!20, !14, i64 8}
!83 = !{!20, !14, i64 12}
!84 = !{!13, !14, i64 8}
!85 = !{!13, !14, i64 12}
!86 = distinct !{!86, !38}
!87 = !{!21, !8, i64 0}
!88 = !{!21, !14, i64 8}
!89 = distinct !{!89, !38}
!90 = !{!21, !14, i64 12}
!91 = !{!25, !8, i64 0}
!92 = distinct !{!92, !38}
!93 = distinct !{!93, !38}
!94 = distinct !{!94, !38}
!95 = !{i8 0, i8 2}
!96 = !{}
!97 = distinct !{!97, !38}
!98 = !{i64 0, i64 4, !62}
!99 = distinct !{!99, !38}
!100 = distinct !{!100, !38}
!101 = distinct !{!101, !38}
!102 = !{!12, !14, i64 376}
!103 = !{!104, !14, i64 0}
!104 = !{!"_ZTS6Clause", !14, i64 0, !9, i64 4, !9, i64 8}
!105 = distinct !{!105, !38}
!106 = distinct !{!106, !38}
!107 = distinct !{!107, !38}
!108 = distinct !{!108, !38}
!109 = !{!12, !18, i64 384}
!110 = distinct !{!110, !38}
!111 = distinct !{!111, !38}
!112 = !{!18, !18, i64 0}
!113 = distinct !{!113, !38}
!114 = distinct !{!114, !38}
!115 = distinct !{!115, !38}
!116 = distinct !{!116, !38}
!117 = distinct !{!117, !38}
!118 = distinct !{!118, !38}
!119 = distinct !{!119, !38}
!120 = !{!121, !121, i64 0}
!121 = !{!"float", !9, i64 0}
!122 = distinct !{!122, !38}
!123 = distinct !{!123, !38}
!124 = distinct !{!124, !38}
!125 = distinct !{!125, !38}
!126 = distinct !{!126, !38}
!127 = distinct !{!127, !38}
!128 = distinct !{!128, !38}
!129 = distinct !{!129, !38}
!130 = distinct !{!130, !38}
!131 = distinct !{!131, !38}
!132 = distinct !{!132, !38}
!133 = !{!134, !14, i64 0}
!134 = !{!"_ZTS3Lit", !14, i64 0}
!135 = distinct !{!135, !38}
!136 = distinct !{!136, !38}
!137 = distinct !{!137, !38}
!138 = distinct !{!138, !38}
!139 = distinct !{!139, !38}
!140 = distinct !{!140, !38}
!141 = distinct !{!141, !38}
!142 = distinct !{!142, !38}
!143 = distinct !{!143, !38}
!144 = distinct !{!144, !38}
!145 = distinct !{!145, !38}
!146 = distinct !{!146, !38}
!147 = distinct !{!147, !38}
!148 = distinct !{!148, !38}
!149 = distinct !{!149, !38}
!150 = !{!12, !18, i64 144}
!151 = !{!12, !18, i64 152}
!152 = !{!153, !8, i64 0}
!153 = !{!"_ZTSN6Solver9VarFilterE", !8, i64 0}
!154 = distinct !{!154, !38}
!155 = distinct !{!155, !38}
!156 = !{!12, !16, i64 40}
!157 = distinct !{!157, !38}
!158 = !{!12, !16, i64 456}
!159 = distinct !{!159, !38}
!160 = !{!12, !16, i64 72}
!161 = !{!12, !16, i64 64}
!162 = distinct !{!162, !38}
!163 = !{i64 0, i64 1, !36}
!164 = distinct !{!164, !38}
!165 = distinct !{!165, !38}
