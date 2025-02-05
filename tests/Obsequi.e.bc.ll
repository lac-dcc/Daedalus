; ModuleID = 'Obsequi.e.bc.ll'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Hash_Key = type { [4 x i32], i32 }
%struct.KeyInfo.9 = type { %struct.Basic_Info, %struct.Basic_Info, %struct.Basic_Info, %struct.Basic_Info }
%struct.Basic_Info = type { i32, i32, i32 }
%struct.__sigset_t = type { [16 x i64] }
%struct.sigaction = type { %union.anon, %struct.__sigset_t, i32, ptr }
%union.anon = type { ptr }
%struct.itimerval = type { %struct.timeval, %struct.timeval }
%struct.timeval = type { i64, i64 }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%struct.Hash_Entry.2 = type { [4 x i32], i32, i8, [3 x i8] }

@.str.1 = private unnamed_addr constant [64 x i8] c"/src/llvm-test-suite/MultiSource/Applications/obsequi/display.c\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c" #\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c" 0\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"Number of rows    = %d\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"Number of columns = %d\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"%7s %15s %15s\0A\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"Vertical\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"Horizontal\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"%7s %7s %7s %7s %7s\0A\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"Real\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"Safe\00", align 1
@.str.16 = private unnamed_addr constant [26 x i8] c"%6d) %7d %7d %7d %7d  %s\0A\00", align 1
@.str.17 = private unnamed_addr constant [25 x i8] c"Totals: %7d %7d %7d %7d\0A\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"%X\0A\00", align 1
@.str.19 = private unnamed_addr constant [34 x i8] c"Key: %8X:%8X:%8X:%8X, Code: %8X.\0A\00", align 1
@current_search_state.str = internal global ptr null, align 8
@.str.27 = private unnamed_addr constant [39 x i8] c"Nodes: %s.\0A%d %d %d %d %d %d %d %d %d.\00", align 1
@.str.28 = private unnamed_addr constant [20 x i8] c"HashKey Incorrect.\0A\00", align 1
@.str.29 = private unnamed_addr constant [20 x i8] c"Invalid hash code.\0A\00", align 1
@g_trans_table = internal unnamed_addr global ptr null, align 8
@.str.20 = private unnamed_addr constant [61 x i8] c"/src/llvm-test-suite/MultiSource/Applications/obsequi/init.c\00", align 1
@.str.1.21 = private unnamed_addr constant [27 x i8] c"Invalid board size %dX%d.\0A\00", align 1
@.str.24 = private unnamed_addr constant [66 x i8] c"/src/llvm-test-suite/MultiSource/Applications/obsequi/move_sort.c\00", align 1
@.str.1.25 = private unnamed_addr constant [21 x i8] c"Not enough buckets.\0A\00", align 1
@g_empty_squares = internal unnamed_addr global i32 0, align 4
@.str.26 = private unnamed_addr constant [64 x i8] c"/src/llvm-test-suite/MultiSource/Applications/obsequi/negamax.c\00", align 1
@.str.2.30 = private unnamed_addr constant [9 x i8] c"No moves\00", align 1
@g_num_nodes = internal unnamed_addr global i64 0, align 8
@starting_depth = internal unnamed_addr global i32 0, align 4
@g_move_number = internal unnamed_addr global [128 x i32] zeroinitializer, align 16
@g_norm_hashkey = internal global %struct.Hash_Key zeroinitializer, align 8
@g_flipV_hashkey = internal global %struct.Hash_Key zeroinitializer, align 8
@g_flipH_hashkey = internal global %struct.Hash_Key zeroinitializer, align 8
@g_flipVH_hashkey = internal global %struct.Hash_Key zeroinitializer, align 8
@.str.3.43 = private unnamed_addr constant [29 x i8] c"Move (%d,%d), value %d: %s.\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"alpha %d, beta %d.\0A\00", align 1
@.str.5.44 = private unnamed_addr constant [19 x i8] c"Winner found: %d.\0A\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"The value is %d at a depth of %d.\0A\00", align 1
@.str.8.45 = private unnamed_addr constant [12 x i8] c"Nodes: %u.\0A\00", align 1
@stat_nth_try = internal unnamed_addr global [40 x [10 x i32]] zeroinitializer, align 16
@stat_cutoffs = internal unnamed_addr global [40 x i32] zeroinitializer, align 16
@stat_nodes = internal unnamed_addr global [40 x i32] zeroinitializer, align 16
@.str.9.46 = private unnamed_addr constant [15 x i8] c"%d %d %d %d.\0A\0A\00", align 1
@cut1 = internal unnamed_addr global i32 0, align 4
@cut2 = internal unnamed_addr global i32 0, align 4
@cut3 = internal unnamed_addr global i32 0, align 4
@cut4 = internal unnamed_addr global i32 0, align 4
@.str.10.47 = private unnamed_addr constant [28 x i8] c"cutoffs depth %d: (%d) %d -\00", align 1
@.str.11.48 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@.str.12.49 = private unnamed_addr constant [7 x i8] c" >%d.\0A\00", align 1
@.str.13.50 = private unnamed_addr constant [28 x i8] c"Should always have a move.\0A\00", align 1
@option_string = internal global [97 x i8] c"-Wall -O2\0A-DCOUNTBITS16\0A-DLASTBIT16\0A-DCOUNTMOVES_TABLE\0A-DHASHCODEBITS=23\0A-DTWO_STAGE_GENERATION\0A\00", align 16
@lock_file = internal unnamed_addr global ptr null, align 8
@stop_minutes = internal unnamed_addr global i64 0, align 8
@main_whos_turn = internal unnamed_addr global i8 0, align 1
@.str.73 = private unnamed_addr constant [36 x i8] c"winner %c, move (%d,%d), nodes %s.\0A\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@.str.2.54 = private unnamed_addr constant [64 x i8] c"/src/llvm-test-suite/MultiSource/Applications/obsequi/obsequi.c\00", align 1
@.str.3.74 = private unnamed_addr constant [12 x i8] c"Undecided.\0A\00", align 1
@main_batch = internal unnamed_addr global i1 false, align 4
@stdin = external local_unnamed_addr global ptr, align 8
@.str.4.67 = private unnamed_addr constant [30 x i8] c"solve rows %u cols %u %c%s %c\00", align 1
@.str.5.68 = private unnamed_addr constant [24 x i8] c"Invalid command: '%s'.\0A\00", align 1
@.str.6.61 = private unnamed_addr constant [25 x i8] c"Too many rows: %u > 30.\0A\00", align 1
@.str.7.62 = private unnamed_addr constant [25 x i8] c"Too many cols: %u > 30.\0A\00", align 1
@.str.8.63 = private unnamed_addr constant [35 x i8] c"Search space too large: %u > 256.\0A\00", align 1
@.str.9.69 = private unnamed_addr constant [2 x i8] c";\00", align 1
@.str.10.70 = private unnamed_addr constant [6 x i8] c"%u,%u\00", align 1
@.str.11.71 = private unnamed_addr constant [29 x i8] c"Invalid block string: '%s'.\0A\00", align 1
@.str.12.72 = private unnamed_addr constant [27 x i8] c"Invalid players turn: %c.\0A\00", align 1
@.str.14.65 = private unnamed_addr constant [25 x i8] c"No valid command given.\0A\00", align 1
@.str.15.53 = private unnamed_addr constant [9 x i8] c"wehl:t:v\00", align 1
@optarg = external local_unnamed_addr global ptr, align 8
@.str.18.55 = private unnamed_addr constant [24 x i8] c"Invalid option: '-%c'.\0A\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.19.56 = private unnamed_addr constant [40 x i8] c"Extra unknown options on command line.\0A\00", align 1
@.str.20.66 = private unnamed_addr constant [20 x i8] c"`sigaction' failed.\00", align 1
@.str.21.75 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.22 = private unnamed_addr constant [21 x i8] c"`setitimer' failed.\0A\00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c"r+\00", align 1
@.str.24.57 = private unnamed_addr constant [18 x i8] c"Can't open file.\0A\00", align 1
@lock_file_offset = internal unnamed_addr global i32 0, align 4
@.str.25 = private unnamed_addr constant [8 x i8] c"%c %15s\00", align 1
@.str.26.58 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.27.59 = private unnamed_addr constant [8 x i8] c"(%d,%d)\00", align 1
@.str.28.60 = private unnamed_addr constant [29 x i8] c"Invalid row and columns.\0A%s\0A\00", align 1
@.str.29.64 = private unnamed_addr constant [14 x i8] c":%c:%d(%d,%d)\00", align 1
@.str.30 = private unnamed_addr constant [10 x i8] c"%c %d %d\0A\00", align 1
@.str.31 = private unnamed_addr constant [17 x i8] c"Invalid player.\0A\00", align 1
@str = private unnamed_addr constant [27 x i8] c"No version info available.\00", align 1
@str.33 = private unnamed_addr constant [35 x i8] c"No help available in this version.\00", align 1
@str.35 = private unnamed_addr constant [9 x i8] c"Starting\00", align 1
@g_keyinfo = internal unnamed_addr global [2 x [32 x [32 x %struct.KeyInfo.9]]] zeroinitializer, align 16
@lastbit16 = internal unnamed_addr global [65536 x i32] zeroinitializer, align 16
@g_zobrist = internal unnamed_addr global [32 x [32 x i32]] zeroinitializer, align 16
@.str.96 = private unnamed_addr constant [68 x i8] c"/src/llvm-test-suite/MultiSource/Applications/obsequi/toggle_move.c\00", align 1
@.str.1.97 = private unnamed_addr constant [12 x i8] c"No maximum\0A\00", align 1
@g_info = internal unnamed_addr global [2 x [32 x %struct.Basic_Info]] zeroinitializer, align 16
@g_info_totals = internal unnamed_addr global [2 x %struct.Basic_Info] zeroinitializer, align 16
@move_table16 = internal unnamed_addr global [65536 x i32] zeroinitializer, align 16
@g_first_move = internal unnamed_addr global [2 x [32 x [32 x i32]]] zeroinitializer, align 16
@g_board_size = internal unnamed_addr global [2 x i32] [i32 -1, i32 -1], align 4
@g_board = internal unnamed_addr global [2 x [32 x i32]] zeroinitializer, align 16
@countbits16 = internal unnamed_addr global [65536 x i32] zeroinitializer, align 16
@_fatal_error_aux.err_file = internal unnamed_addr global ptr null, align 8
@.str.1.101 = private unnamed_addr constant [8 x i8] c"ERROR: \00", align 1
@.str.2.102 = private unnamed_addr constant [13 x i8] c".fatal_error\00", align 1
@.str.3.103 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.4.104 = private unnamed_addr constant [31 x i8] c"Couldn't open \22.fatal_error\22.\0A\00", align 1
@.str.8.108 = private unnamed_addr constant [23 x i8] c"> File: %s, Line: %d.\0A\00", align 1
@u64bit_to_string.big_num = internal global [80 x i8] zeroinitializer, align 16
@.str.9.111 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.10.112 = private unnamed_addr constant [6 x i8] c",%03d\00", align 1

; Function Attrs: nounwind optsize uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #0 {
  %3 = alloca [256 x %struct.Basic_Info], align 16
  %4 = alloca %struct.Basic_Info, align 4
  %5 = alloca %struct.__sigset_t, align 8
  %6 = alloca %struct.sigaction, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [30 x [30 x i32]], align 16
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.sigaction, align 8
  %16 = alloca %struct.itimerval, align 8
  %17 = alloca ptr, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca [30 x [30 x i32]], align 16
  %21 = alloca i8, align 1
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  br label %25

25:                                               ; preds = %41, %2
  %26 = tail call i32 @getopt(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.15.53) #30
  switch i32 %26, label %42 [
    i32 -1, label %43
    i32 101, label %27
    i32 104, label %29
    i32 108, label %31
    i32 116, label %34
    i32 118, label %38
    i32 119, label %40
  ]

27:                                               ; preds = %25
  %28 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @option_string) #31
  tail call void @exit(i32 noundef 0) #32
  unreachable

29:                                               ; preds = %25
  %30 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.33)
  tail call void @exit(i32 noundef 0) #32
  unreachable

31:                                               ; preds = %25
  %32 = load ptr, ptr @optarg, align 8, !tbaa !7
  %33 = tail call noalias ptr @strdup(ptr noundef %32) #30
  store ptr %33, ptr @lock_file, align 8, !tbaa !7
  br label %41

34:                                               ; preds = %25
  %35 = load ptr, ptr @optarg, align 8, !tbaa !7
  %36 = tail call i32 @atoi(ptr nocapture noundef %35) #33
  %37 = sext i32 %36 to i64
  store i64 %37, ptr @stop_minutes, align 8, !tbaa !11
  br label %41

38:                                               ; preds = %25
  %39 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  tail call void @exit(i32 noundef 0) #32
  unreachable

40:                                               ; preds = %25
  store i1 true, ptr @main_batch, align 4
  br label %41

41:                                               ; preds = %40, %34, %31
  br label %25, !llvm.loop !13

42:                                               ; preds = %25
  %.lcssa14 = phi i32 [ %26, %25 ]
  tail call void (ptr, i32, i32, ptr, ...) @_fatal_error_aux(ptr noundef nonnull @.str.2.54, i32 noundef 378, i32 poison, ptr noundef nonnull @.str.18.55, i32 noundef %.lcssa14) #30
  unreachable

43:                                               ; preds = %25
  %44 = load i32, ptr @optind, align 4, !tbaa !15
  %45 = icmp slt i32 %44, %0
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  tail call void (ptr, i32, i32, ptr, ...) @_fatal_error_aux(ptr noundef nonnull @.str.2.54, i32 noundef 383, i32 poison, ptr noundef nonnull @.str.19.56) #30
  unreachable

47:                                               ; preds = %43
  %48 = load ptr, ptr @lock_file, align 8, !tbaa !7
  %49 = icmp eq ptr %48, null
  br i1 %49, label %190, label %50

50:                                               ; preds = %47
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %17) #34
  store ptr null, ptr %17, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %18) #34
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %19) #34
  call void @llvm.lifetime.start.p0(i64 3600, ptr nonnull %20) #34
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %21) #34
  store i8 0, ptr %21, align 1, !tbaa !17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %22) #34
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %23) #34
  %51 = tail call noalias ptr @fopen(ptr noundef nonnull %48, ptr noundef nonnull @.str.23) #31
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  tail call void (ptr, i32, i32, ptr, ...) @_fatal_error_aux(ptr noundef nonnull @.str.2.54, i32 noundef 563, i32 poison, ptr noundef nonnull @.str.24.57) #30
  unreachable

54:                                               ; preds = %50
  %55 = load ptr, ptr @lock_file, align 8, !tbaa !7
  %56 = tail call i32 @puts(ptr nonnull dereferenceable(1) %55)
  br label %57

57:                                               ; preds = %62, %54
  %58 = tail call i64 @ftell(ptr noundef nonnull %51) #31
  %59 = trunc i64 %58 to i32
  store i32 %59, ptr @lock_file_offset, align 4, !tbaa !15
  %60 = call fastcc i64 @getline_llvm(ptr noundef nonnull %17, ptr noundef nonnull %51) #31
  %61 = icmp eq i64 %60, -1
  br i1 %61, label %164, label %62

62:                                               ; preds = %57
  %63 = load ptr, ptr %17, align 8, !tbaa !7
  %64 = load i8, ptr %63, align 1, !tbaa !17
  %65 = icmp eq i8 %64, 65
  br i1 %65, label %66, label %57, !llvm.loop !18

66:                                               ; preds = %62
  %.lcssa13 = phi ptr [ %63, %62 ]
  %.lcssa12 = phi i64 [ %60, %62 ]
  %67 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.26.58, ptr noundef nonnull %.lcssa13) #31
  %68 = icmp ult i64 %.lcssa12, 19
  br i1 %68, label %69, label %70

69:                                               ; preds = %66
  tail call void (ptr, i32, i32, ptr, ...) @_fatal_error_aux(ptr noundef nonnull @.str.2.54, i32 noundef 577, i32 poison, ptr noundef nonnull %.lcssa13) #30
  unreachable

70:                                               ; preds = %66
  %71 = getelementptr inbounds i8, ptr %.lcssa13, i64 18
  %72 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %71, ptr noundef nonnull @.str.27.59, ptr noundef nonnull %18, ptr noundef nonnull %19) #30
  %73 = icmp eq i32 %72, 2
  br i1 %73, label %75, label %74

74:                                               ; preds = %70
  call void (ptr, i32, i32, ptr, ...) @_fatal_error_aux(ptr noundef nonnull @.str.2.54, i32 noundef 580, i32 poison, ptr noundef nonnull @.str.28.60, ptr noundef nonnull %.lcssa13) #30
  unreachable

75:                                               ; preds = %70
  %76 = load i32, ptr %18, align 4, !tbaa !15
  %77 = icmp ugt i32 %76, 30
  br i1 %77, label %78, label %79

78:                                               ; preds = %75
  call void (ptr, i32, i32, ptr, ...) @_fatal_error_aux(ptr noundef nonnull @.str.2.54, i32 noundef 583, i32 poison, ptr noundef nonnull @.str.6.61, i32 noundef %76) #30
  unreachable

79:                                               ; preds = %75
  %80 = load i32, ptr %19, align 4, !tbaa !15
  %81 = icmp ugt i32 %80, 30
  br i1 %81, label %82, label %83

82:                                               ; preds = %79
  call void (ptr, i32, i32, ptr, ...) @_fatal_error_aux(ptr noundef nonnull @.str.2.54, i32 noundef 585, i32 poison, ptr noundef nonnull @.str.7.62, i32 noundef %80) #30
  unreachable

83:                                               ; preds = %79
  %84 = mul nuw nsw i32 %76, %80
  %85 = icmp ugt i32 %84, 128
  br i1 %85, label %86, label %87

86:                                               ; preds = %83
  call void (ptr, i32, i32, ptr, ...) @_fatal_error_aux(ptr noundef nonnull @.str.2.54, i32 noundef 587, i32 poison, ptr noundef nonnull @.str.8.63, i32 noundef %84) #30
  unreachable

87:                                               ; preds = %83
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(3600) %20, i8 0, i64 3600, i1 false), !tbaa !15
  store i32 30, ptr %22, align 4, !tbaa !15
  store i32 30, ptr %23, align 4, !tbaa !15
  br label %88

88:                                               ; preds = %151, %87
  %89 = phi i64 [ %.lcssa10, %151 ], [ 18, %87 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %24) #34
  %90 = shl i64 %89, 32
  %91 = ashr exact i64 %90, 32
  br label %92

92:                                               ; preds = %102, %88
  %93 = phi i64 [ %104, %102 ], [ %91, %88 ]
  %94 = phi i32 [ %103, %102 ], [ 0, %88 ]
  %95 = getelementptr inbounds i8, ptr %.lcssa13, i64 %93
  %96 = load i8, ptr %95, align 1, !tbaa !17
  switch i8 %96, label %100 [
    i8 0, label %105
    i8 32, label %97
  ]

97:                                               ; preds = %92
  %98 = icmp eq i32 %94, 0
  %99 = select i1 %98, i32 0, i32 2
  br label %102

100:                                              ; preds = %92
  %101 = icmp eq i32 %94, 2
  br i1 %101, label %105, label %102

102:                                              ; preds = %100, %97
  %103 = phi i32 [ %99, %97 ], [ 1, %100 ]
  %104 = add i64 %93, 1
  br label %92, !llvm.loop !19

105:                                              ; preds = %100, %92
  %.lcssa10 = phi i64 [ %93, %100 ], [ %93, %92 ]
  %106 = shl i64 %.lcssa10, 32
  %107 = ashr exact i64 %106, 32
  %108 = icmp ugt i64 %.lcssa12, %107
  br i1 %108, label %109, label %154

109:                                              ; preds = %105
  %110 = getelementptr inbounds i8, ptr %.lcssa13, i64 %107
  %111 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %110, ptr noundef nonnull @.str.29.64, ptr noundef nonnull %21, ptr noundef nonnull %24, ptr noundef nonnull %22, ptr noundef nonnull %23) #30
  %112 = icmp eq i32 %111, 4
  br i1 %112, label %113, label %154

113:                                              ; preds = %109
  %114 = load i8, ptr %21, align 1, !tbaa !17
  %115 = sext i8 %114 to i32
  %116 = load i32, ptr %22, align 4, !tbaa !15
  %117 = load i32, ptr %23, align 4, !tbaa !15
  %118 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.30, i32 noundef %115, i32 noundef %116, i32 noundef %117) #31
  %119 = load i8, ptr %21, align 1, !tbaa !17
  switch i8 %119, label %150 [
    i8 86, label %120
    i8 72, label %135
  ]

120:                                              ; preds = %113
  %121 = load i32, ptr %23, align 4, !tbaa !15
  %122 = sext i32 %121 to i64
  %123 = load i32, ptr %22, align 4, !tbaa !15
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds [30 x [30 x i32]], ptr %20, i64 0, i64 %122, i64 %124
  %126 = load i32, ptr %125, align 4, !tbaa !15
  %127 = icmp eq i32 %126, 1
  br i1 %127, label %134, label %128

128:                                              ; preds = %120
  %129 = add nsw i32 %121, 1
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds [30 x [30 x i32]], ptr %20, i64 0, i64 %130, i64 %124
  %132 = load i32, ptr %131, align 4, !tbaa !15
  %133 = icmp eq i32 %132, 1
  br i1 %133, label %134, label %151

134:                                              ; preds = %128, %120
  call void (ptr, i32, i32, ptr, ...) @_fatal_error_aux(ptr noundef nonnull @.str.2.54, i32 noundef 609, i32 poison, ptr noundef nonnull %.lcssa13) #30
  unreachable

135:                                              ; preds = %113
  %136 = load i32, ptr %22, align 4, !tbaa !15
  %137 = sext i32 %136 to i64
  %138 = load i32, ptr %23, align 4, !tbaa !15
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds [30 x [30 x i32]], ptr %20, i64 0, i64 %137, i64 %139
  %141 = load i32, ptr %140, align 4, !tbaa !15
  %142 = icmp eq i32 %141, 1
  br i1 %142, label %149, label %143

143:                                              ; preds = %135
  %144 = add nsw i32 %138, 1
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds [30 x [30 x i32]], ptr %20, i64 0, i64 %137, i64 %145
  %147 = load i32, ptr %146, align 4, !tbaa !15
  %148 = icmp eq i32 %147, 1
  br i1 %148, label %149, label %151

149:                                              ; preds = %143, %135
  call void (ptr, i32, i32, ptr, ...) @_fatal_error_aux(ptr noundef nonnull @.str.2.54, i32 noundef 613, i32 poison, ptr noundef nonnull %.lcssa13) #30
  unreachable

150:                                              ; preds = %113
  call void (ptr, i32, i32, ptr, ...) @_fatal_error_aux(ptr noundef nonnull @.str.2.54, i32 noundef 615, i32 poison, ptr noundef nonnull @.str.31) #30
  unreachable

151:                                              ; preds = %143, %128
  %152 = phi ptr [ %131, %128 ], [ %146, %143 ]
  %153 = phi ptr [ %125, %128 ], [ %140, %143 ]
  store i32 1, ptr %152, align 4, !tbaa !15
  store i32 1, ptr %153, align 4, !tbaa !15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %24) #34
  br label %88

154:                                              ; preds = %109, %105
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %24) #34
  %155 = call i32 @puts(ptr nonnull dereferenceable(1) @str.35)
  %156 = load ptr, ptr @stdout, align 8, !tbaa !7
  %157 = call i32 @fflush(ptr noundef %156) #31
  %158 = load i32, ptr @lock_file_offset, align 4, !tbaa !15
  %159 = sext i32 %158 to i64
  %160 = call i32 @fseek(ptr noundef nonnull %51, i64 noundef %159, i32 noundef 0) #31
  %161 = call i32 @fputc(i32 87, ptr nonnull %51)
  %162 = call i32 @fflush(ptr noundef nonnull %51) #31
  %163 = load i8, ptr %21, align 1, !tbaa !17
  switch i8 %163, label %166 [
    i8 86, label %167
    i8 72, label %165
  ]

164:                                              ; preds = %57
  tail call void (ptr, i32, i32, ptr, ...) @_fatal_error_aux(ptr noundef nonnull @.str.2.54, i32 noundef 624, i32 poison, ptr noundef nonnull @.str.14.65) #30
  unreachable

165:                                              ; preds = %154
  br label %167

166:                                              ; preds = %154
  call void (ptr, i32, i32, ptr, ...) @_fatal_error_aux(ptr noundef nonnull @.str.2.54, i32 noundef 632, i32 poison, ptr noundef nonnull @.str.31) #30
  unreachable

167:                                              ; preds = %165, %154
  %168 = phi i8 [ 86, %165 ], [ 72, %154 ]
  store i8 %168, ptr @main_whos_turn, align 1, !tbaa !17
  %169 = load i32, ptr %18, align 4, !tbaa !15
  %170 = load i32, ptr %19, align 4, !tbaa !15
  call fastcc void @initialize_board(i32 noundef %169, i32 noundef %170, ptr noundef nonnull %20) #30
  call void @free(ptr noundef nonnull %.lcssa13) #30
  %171 = call i32 @fclose(ptr noundef nonnull %51) #31
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %23) #34
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %22) #34
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %21) #34
  call void @llvm.lifetime.end.p0(i64 3600, ptr nonnull %20) #34
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %19) #34
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %18) #34
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %17) #34
  %172 = load i64, ptr @stop_minutes, align 8, !tbaa !11
  %173 = icmp eq i64 %172, 0
  br i1 %173, label %298, label %174

174:                                              ; preds = %167
  call void @llvm.lifetime.start.p0(i64 152, ptr nonnull %15) #34
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %16) #34
  %175 = getelementptr inbounds %struct.sigaction, ptr %15, i64 0, i32 1
  %176 = call i32 @sigfillset(ptr noundef nonnull %175) #30
  %177 = getelementptr inbounds %struct.sigaction, ptr %15, i64 0, i32 2
  store i32 0, ptr %177, align 8, !tbaa !20
  store ptr @stop_alrm_handler, ptr %15, align 8, !tbaa !17
  %178 = call i32 @sigaction(i32 noundef 26, ptr noundef nonnull %15, ptr noundef null) #30
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %181, label %180

180:                                              ; preds = %174
  call void (ptr, i32, i32, ptr, ...) @_fatal_error_aux(ptr noundef nonnull @.str.2.54, i32 noundef 449, i32 poison, ptr noundef nonnull @.str.20.66) #30
  unreachable

181:                                              ; preds = %174
  %182 = mul nsw i64 %172, 60
  store i64 %182, ptr %16, align 8, !tbaa !23
  %183 = getelementptr inbounds %struct.timeval, ptr %16, i64 0, i32 1
  store i64 0, ptr %183, align 8, !tbaa !26
  %184 = getelementptr inbounds %struct.itimerval, ptr %16, i64 0, i32 1
  store i64 %182, ptr %184, align 8, !tbaa !27
  %185 = getelementptr inbounds %struct.itimerval, ptr %16, i64 0, i32 1, i32 1
  store i64 0, ptr %185, align 8, !tbaa !28
  %186 = call i32 @setitimer(i32 noundef 1, ptr noundef nonnull %16, ptr noundef null) #30
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %189, label %188

188:                                              ; preds = %181
  call void (ptr, i32, i32, ptr, ...) @_fatal_error_aux(ptr noundef nonnull @.str.2.54, i32 noundef 457, i32 poison, ptr noundef nonnull @.str.22) #30
  unreachable

189:                                              ; preds = %181
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %16) #34
  call void @llvm.lifetime.end.p0(i64 152, ptr nonnull %15) #34
  br label %298

190:                                              ; preds = %47
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #34
  store ptr null, ptr %7, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #34
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #34
  call void @llvm.lifetime.start.p0(i64 3600, ptr nonnull %10) #34
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %11) #34
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %12) #34
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #34
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #34
  br label %191

191:                                              ; preds = %286, %190
  %192 = phi ptr [ null, %190 ], [ %287, %286 ]
  %193 = load ptr, ptr @stdin, align 8, !tbaa !7
  %194 = call fastcc i64 @getline_llvm(ptr noundef nonnull %7, ptr noundef %193) #31
  switch i64 %194, label %195 [
    i64 -1, label %293
    i64 0, label %286
  ]

195:                                              ; preds = %191
  %196 = icmp eq ptr %192, null
  br i1 %196, label %199, label %197

197:                                              ; preds = %195
  %198 = call ptr @realloc(ptr noundef nonnull %192, i64 noundef 0) #35
  br label %201

199:                                              ; preds = %195
  %200 = call noalias ptr @malloc(i64 noundef 0) #36
  br label %201

201:                                              ; preds = %199, %197
  %202 = phi ptr [ %198, %197 ], [ %200, %199 ]
  %203 = load ptr, ptr %7, align 8, !tbaa !7
  %204 = add i64 %194, -1
  %205 = getelementptr inbounds i8, ptr %203, i64 %204
  store i8 0, ptr %205, align 1, !tbaa !17
  %206 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %203, ptr noundef nonnull @.str.4.67, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %11, ptr noundef %202, ptr noundef nonnull %12) #30
  switch i32 %206, label %207 [
    i32 5, label %210
    i32 3, label %210
  ]

207:                                              ; preds = %201
  %208 = load ptr, ptr @stderr, align 8, !tbaa !7
  %209 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %208, ptr noundef nonnull @.str.5.68, ptr noundef nonnull %203) #37
  br label %286

210:                                              ; preds = %201, %201
  %211 = load i32, ptr %8, align 4, !tbaa !15
  %212 = icmp ugt i32 %211, 30
  br i1 %212, label %213, label %216

213:                                              ; preds = %210
  %214 = load ptr, ptr @stderr, align 8, !tbaa !7
  %215 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %214, ptr noundef nonnull @.str.6.61, i32 noundef %211) #37
  br label %286

216:                                              ; preds = %210
  %217 = load i32, ptr %9, align 4, !tbaa !15
  %218 = icmp ugt i32 %217, 30
  br i1 %218, label %219, label %222

219:                                              ; preds = %216
  %220 = load ptr, ptr @stderr, align 8, !tbaa !7
  %221 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %220, ptr noundef nonnull @.str.7.62, i32 noundef %217) #37
  br label %286

222:                                              ; preds = %216
  %223 = mul nuw nsw i32 %217, %211
  %224 = icmp ugt i32 %223, 256
  br i1 %224, label %228, label %225

225:                                              ; preds = %222
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(3600) %10, i8 0, i64 3600, i1 false), !tbaa !15
  store i32 30, ptr %13, align 4, !tbaa !15
  store i32 30, ptr %14, align 4, !tbaa !15
  %226 = icmp eq i32 %206, 5
  %227 = tail call ptr @__ctype_toupper_loc() #38
  br i1 %226, label %231, label %273

228:                                              ; preds = %222
  %229 = load ptr, ptr @stderr, align 8, !tbaa !7
  %230 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %229, ptr noundef nonnull @.str.8.63, i32 noundef %223) #37
  br label %286

231:                                              ; preds = %225
  %232 = load ptr, ptr %227, align 8, !tbaa !7
  %233 = load i8, ptr %11, align 1, !tbaa !17
  %234 = sext i8 %233 to i64
  %235 = getelementptr inbounds i32, ptr %232, i64 %234
  %236 = load i32, ptr %235, align 4, !tbaa !15
  %237 = trunc i32 %236 to i8
  store i8 %237, ptr %11, align 1, !tbaa !17
  %238 = and i32 %236, 255
  %239 = icmp eq i32 %238, 66
  br i1 %239, label %243, label %240

240:                                              ; preds = %231
  %241 = load ptr, ptr @stderr, align 8, !tbaa !7
  %242 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %241, ptr noundef nonnull @.str.5.68, ptr noundef nonnull %203) #37
  br label %286

243:                                              ; preds = %231
  %244 = call ptr @strtok(ptr noundef %202, ptr noundef nonnull @.str.9.69) #30
  %245 = icmp eq ptr %244, null
  br i1 %245, label %270, label %246

246:                                              ; preds = %264, %243
  %247 = phi ptr [ %268, %264 ], [ %244, %243 ]
  %248 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %247, ptr noundef nonnull @.str.10.70, ptr noundef nonnull %13, ptr noundef nonnull %14) #30
  %249 = icmp eq i32 %248, 2
  br i1 %249, label %253, label %250

250:                                              ; preds = %246
  %.lcssa4 = phi ptr [ %247, %246 ]
  %251 = load ptr, ptr @stderr, align 8, !tbaa !7
  %252 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %251, ptr noundef nonnull @.str.11.71, ptr noundef nonnull %.lcssa4) #37
  store i8 0, ptr %11, align 1, !tbaa !17
  br label %286

253:                                              ; preds = %246
  %254 = load i32, ptr %13, align 4, !tbaa !15
  %255 = load i32, ptr %8, align 4, !tbaa !15
  %256 = icmp ult i32 %254, %255
  br i1 %256, label %257, label %261

257:                                              ; preds = %253
  %258 = load i32, ptr %14, align 4, !tbaa !15
  %259 = load i32, ptr %9, align 4, !tbaa !15
  %260 = icmp ult i32 %258, %259
  br i1 %260, label %264, label %261

261:                                              ; preds = %257, %253
  %.lcssa5 = phi ptr [ %247, %257 ], [ %247, %253 ]
  %262 = load ptr, ptr @stderr, align 8, !tbaa !7
  %263 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %262, ptr noundef nonnull @.str.11.71, ptr noundef nonnull %.lcssa5) #37
  store i8 0, ptr %11, align 1, !tbaa !17
  br label %286

264:                                              ; preds = %257
  %265 = sext i32 %254 to i64
  %266 = sext i32 %258 to i64
  %267 = getelementptr inbounds [30 x [30 x i32]], ptr %10, i64 0, i64 %265, i64 %266
  store i32 1, ptr %267, align 4, !tbaa !15
  %268 = call ptr @strtok(ptr noundef null, ptr noundef nonnull @.str.9.69) #30
  %269 = icmp eq ptr %268, null
  br i1 %269, label %270, label %246, !llvm.loop !29

270:                                              ; preds = %264, %243
  %271 = load i8, ptr %11, align 1, !tbaa !17
  %272 = icmp eq i8 %271, 0
  br i1 %272, label %286, label %273

273:                                              ; preds = %270, %225
  %274 = phi ptr [ %12, %270 ], [ %11, %225 ]
  %275 = load i8, ptr %274, align 1, !tbaa !17
  %276 = load ptr, ptr %227, align 8, !tbaa !7
  %277 = sext i8 %275 to i64
  %278 = getelementptr inbounds i32, ptr %276, i64 %277
  %279 = load i32, ptr %278, align 4, !tbaa !15
  %280 = trunc i32 %279 to i8
  store i8 %280, ptr %12, align 1, !tbaa !17
  %281 = shl i32 %279, 24
  switch i32 %281, label %282 [
    i32 1442840576, label %288
    i32 1207959552, label %288
  ]

282:                                              ; preds = %273
  %283 = ashr exact i32 %281, 24
  %284 = load ptr, ptr @stderr, align 8, !tbaa !7
  %285 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %284, ptr noundef nonnull @.str.12.72, i32 noundef %283) #37
  br label %286

286:                                              ; preds = %282, %270, %261, %250, %240, %228, %219, %213, %207, %191
  %287 = phi ptr [ %202, %207 ], [ %202, %213 ], [ %202, %219 ], [ %202, %228 ], [ %202, %282 ], [ %202, %270 ], [ %192, %191 ], [ %202, %240 ], [ %202, %250 ], [ %202, %261 ]
  br label %191, !llvm.loop !30

288:                                              ; preds = %273, %273
  %.lcssa9 = phi ptr [ %202, %273 ], [ %202, %273 ]
  %.lcssa8 = phi ptr [ %203, %273 ], [ %203, %273 ]
  %.lcssa7 = phi i64 [ %194, %273 ], [ %194, %273 ]
  %289 = call i32 @puts(ptr nonnull dereferenceable(1) @str.35)
  %290 = load ptr, ptr @stdout, align 8, !tbaa !7
  %291 = call i32 @fflush(ptr noundef %290) #31
  %292 = icmp eq i64 %.lcssa7, -1
  br i1 %292, label %293, label %294

293:                                              ; preds = %288, %191
  call void (ptr, i32, i32, ptr, ...) @_fatal_error_aux(ptr noundef nonnull @.str.2.54, i32 noundef 275, i32 poison, ptr noundef nonnull @.str.14.65) #30
  unreachable

294:                                              ; preds = %288
  %295 = load i8, ptr %12, align 1, !tbaa !17
  store i8 %295, ptr @main_whos_turn, align 1, !tbaa !17
  %296 = load i32, ptr %8, align 4, !tbaa !15
  %297 = load i32, ptr %9, align 4, !tbaa !15
  call fastcc void @initialize_board(i32 noundef %296, i32 noundef %297, ptr noundef nonnull %10) #30
  call void @free(ptr noundef %.lcssa8) #30
  call void @free(ptr noundef %.lcssa9) #30
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #34
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #34
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %12) #34
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %11) #34
  call void @llvm.lifetime.end.p0(i64 3600, ptr nonnull %10) #34
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #34
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #34
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #34
  br label %298

298:                                              ; preds = %294, %189, %167
  call void @llvm.lifetime.start.p0(i64 152, ptr nonnull %6) #34
  %299 = getelementptr inbounds %struct.sigaction, ptr %6, i64 0, i32 1
  %300 = call i32 @sigfillset(ptr noundef nonnull %299) #30
  %301 = getelementptr inbounds %struct.sigaction, ptr %6, i64 0, i32 2
  store i32 0, ptr %301, align 8, !tbaa !20
  store ptr @sig_int_handler, ptr %6, align 8, !tbaa !17
  %302 = call i32 @sigaction(i32 noundef 2, ptr noundef nonnull %6, ptr noundef null) #30
  %303 = icmp eq i32 %302, 0
  br i1 %303, label %305, label %304

304:                                              ; preds = %298
  call void (ptr, i32, i32, ptr, ...) @_fatal_error_aux(ptr noundef nonnull @.str.2.54, i32 noundef 418, i32 poison, ptr noundef nonnull @.str.20.66) #30
  unreachable

305:                                              ; preds = %298
  call void @llvm.lifetime.end.p0(i64 152, ptr nonnull %6) #34
  %306 = load i8, ptr @main_whos_turn, align 1, !tbaa !17
  call void @llvm.lifetime.start.p0(i64 3072, ptr nonnull %3) #34
  %307 = tail call ptr @__ctype_toupper_loc() #38
  %308 = load ptr, ptr %307, align 8, !tbaa !7
  %309 = sext i8 %306 to i64
  %310 = getelementptr inbounds i32, ptr %308, i64 %309
  %311 = load i32, ptr %310, align 4, !tbaa !15
  %312 = icmp eq i32 %311, 86
  br i1 %312, label %316, label %313

313:                                              ; preds = %305
  %314 = icmp eq i32 %311, 72
  br i1 %314, label %316, label %315

315:                                              ; preds = %313
  call void (ptr, i32, i32, ptr, ...) @_fatal_error_aux(ptr noundef nonnull @.str.26, i32 noundef 126, i32 poison, ptr noundef nonnull @.str.31) #30
  unreachable

316:                                              ; preds = %313, %305
  %317 = phi i32 [ 1, %305 ], [ 0, %313 ]
  %318 = load i32, ptr @g_board_size, align 4, !tbaa !15
  %319 = icmp sgt i32 %318, 0
  br i1 %319, label %320, label %322

320:                                              ; preds = %316
  %321 = zext i32 %318 to i64
  br label %324

322:                                              ; preds = %324, %316
  %323 = phi i32 [ 0, %316 ], [ %340, %324 ]
  store i32 %323, ptr @g_empty_squares, align 4, !tbaa !15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) @stat_cutoffs, i8 0, i64 160, i1 false), !tbaa !15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) @stat_nodes, i8 0, i64 160, i1 false), !tbaa !15
  br label %342

324:                                              ; preds = %324, %320
  %325 = phi i64 [ 0, %320 ], [ %327, %324 ]
  %326 = phi i32 [ 0, %320 ], [ %340, %324 ]
  %327 = add nuw nsw i64 %325, 1
  %328 = getelementptr inbounds [32 x i32], ptr @g_board, i64 0, i64 %327
  %329 = load i32, ptr %328, align 4, !tbaa !15
  %330 = xor i32 %329, -1
  %331 = and i32 %330, 65535
  %332 = zext i32 %331 to i64
  %333 = getelementptr inbounds [65536 x i32], ptr @countbits16, i64 0, i64 %332
  %334 = load i32, ptr %333, align 4, !tbaa !15
  %335 = lshr i32 %330, 16
  %336 = zext i32 %335 to i64
  %337 = getelementptr inbounds [65536 x i32], ptr @countbits16, i64 0, i64 %336
  %338 = load i32, ptr %337, align 4, !tbaa !15
  %339 = add i32 %334, %326
  %340 = add i32 %339, %338
  %341 = icmp eq i64 %327, %321
  br i1 %341, label %322, label %324, !llvm.loop !31

342:                                              ; preds = %342, %322
  %343 = phi i64 [ %346, %342 ], [ 0, %322 ]
  %344 = mul nuw nsw i64 %343, 40
  %345 = getelementptr i8, ptr @stat_nth_try, i64 %344
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %345, i8 0, i64 24, i1 false), !tbaa !15
  %346 = add nuw nsw i64 %343, 1
  %347 = icmp eq i64 %346, 40
  br i1 %347, label %348, label %342, !llvm.loop !32

348:                                              ; preds = %342
  %349 = xor i32 %317, 1
  %350 = zext i32 %317 to i64
  %351 = getelementptr inbounds [2 x %struct.Basic_Info], ptr @g_info_totals, i64 0, i64 %350
  %352 = load i32, ptr %351, align 4, !tbaa !33
  %353 = zext i32 %349 to i64
  %354 = getelementptr inbounds [2 x %struct.Basic_Info], ptr @g_info_totals, i64 0, i64 %353, i32 1
  %355 = load i32, ptr %354, align 4, !tbaa !35
  %356 = icmp sgt i32 %352, %355
  br i1 %356, label %958, label %357

357:                                              ; preds = %348
  %358 = getelementptr inbounds [2 x %struct.Basic_Info], ptr @g_info_totals, i64 0, i64 %353
  %359 = load i32, ptr %358, align 4, !tbaa !33
  %360 = getelementptr inbounds [2 x %struct.Basic_Info], ptr @g_info_totals, i64 0, i64 %350, i32 1
  %361 = load i32, ptr %360, align 4, !tbaa !35
  %362 = icmp slt i32 %359, %361
  br i1 %362, label %363, label %958

363:                                              ; preds = %357
  %364 = getelementptr inbounds [2 x i32], ptr @g_board_size, i64 0, i64 %350
  %365 = load i32, ptr %364, align 4, !tbaa !15
  %366 = icmp sgt i32 %365, 0
  br i1 %366, label %367, label %427

367:                                              ; preds = %363
  %368 = zext i32 %365 to i64
  %369 = getelementptr inbounds [2 x [32 x i32]], ptr @g_board, i64 0, i64 %350, i64 0
  %370 = load i32, ptr %369, align 16, !tbaa !15
  %371 = getelementptr inbounds [2 x [32 x i32]], ptr @g_board, i64 0, i64 %350, i64 1
  %372 = load i32, ptr %371, align 4, !tbaa !15
  br label %378

373:                                              ; preds = %418
  %.lcssa2 = phi i64 [ %423, %418 ]
  %374 = trunc i64 %.lcssa2 to i32
  br label %375

375:                                              ; preds = %378, %373
  %376 = phi i32 [ %382, %378 ], [ %374, %373 ]
  %377 = icmp eq i64 %387, %368
  br i1 %377, label %425, label %378, !llvm.loop !36

378:                                              ; preds = %375, %367
  %379 = phi i32 [ %385, %375 ], [ %372, %367 ]
  %380 = phi i32 [ %379, %375 ], [ %370, %367 ]
  %381 = phi i64 [ %387, %375 ], [ 0, %367 ]
  %382 = phi i32 [ %376, %375 ], [ 0, %367 ]
  %383 = add nuw nsw i64 %381, 2
  %384 = getelementptr inbounds [2 x [32 x i32]], ptr @g_board, i64 0, i64 %350, i64 %383
  %385 = load i32, ptr %384, align 4, !tbaa !15
  %386 = and i32 %385, %380
  %387 = add nuw nsw i64 %381, 1
  %388 = lshr i32 %379, 1
  %389 = lshr i32 %386, 1
  %390 = and i32 %389, %386
  %391 = or i32 %388, %390
  %392 = or i32 %391, %379
  %393 = icmp eq i32 %392, -1
  br i1 %393, label %375, label %394

394:                                              ; preds = %378
  %395 = xor i32 %392, -1
  %396 = sext i32 %382 to i64
  %397 = trunc i64 %387 to i32
  br label %398

398:                                              ; preds = %418, %394
  %399 = phi i64 [ %396, %394 ], [ %423, %418 ]
  %400 = phi i32 [ %395, %394 ], [ %403, %418 ]
  %401 = sub i32 0, %400
  %402 = and i32 %400, %401
  %403 = xor i32 %402, %400
  %404 = and i32 %402, 65535
  %405 = icmp eq i32 %404, 0
  br i1 %405, label %410, label %406

406:                                              ; preds = %398
  %407 = zext i32 %404 to i64
  %408 = getelementptr inbounds [65536 x i32], ptr @lastbit16, i64 0, i64 %407
  %409 = load i32, ptr %408, align 4, !tbaa !15
  br label %418

410:                                              ; preds = %398
  %411 = icmp ult i32 %402, 65536
  br i1 %411, label %418, label %412

412:                                              ; preds = %410
  %413 = lshr i32 %402, 16
  %414 = zext i32 %413 to i64
  %415 = getelementptr inbounds [65536 x i32], ptr @lastbit16, i64 0, i64 %414
  %416 = load i32, ptr %415, align 4, !tbaa !15
  %417 = add nsw i32 %416, 16
  br label %418

418:                                              ; preds = %412, %410, %406
  %419 = phi i32 [ %409, %406 ], [ %417, %412 ], [ 100, %410 ]
  %420 = getelementptr inbounds %struct.Basic_Info, ptr %3, i64 %399
  %421 = getelementptr inbounds %struct.Basic_Info, ptr %3, i64 %399, i32 1
  store i32 %419, ptr %421, align 4, !tbaa !35
  store i32 %397, ptr %420, align 4, !tbaa !33
  %422 = getelementptr inbounds %struct.Basic_Info, ptr %3, i64 %399, i32 2
  store i32 0, ptr %422, align 4, !tbaa !37
  %423 = add i64 %399, 1
  %424 = icmp eq i32 %403, 0
  br i1 %424, label %373, label %398, !llvm.loop !38

425:                                              ; preds = %375
  %.lcssa3 = phi i32 [ %376, %375 ]
  %426 = icmp eq i32 %.lcssa3, 0
  br i1 %426, label %427, label %428

427:                                              ; preds = %425, %363
  call void (ptr, i32, i32, ptr, ...) @_fatal_error_aux(ptr noundef nonnull @.str.26, i32 noundef 160, i32 poison, ptr noundef nonnull @.str.2.30) #30
  unreachable

428:                                              ; preds = %425
  call fastcc void @score_and_get_first(ptr noundef nonnull %3, i32 noundef %.lcssa3, i32 noundef %317, i64 4294967295) #30
  call fastcc void @sort_moves(ptr noundef nonnull %3, i32 noundef %.lcssa3) #30
  br label %429

429:                                              ; preds = %949, %428
  %430 = phi i32 [ 1, %428 ], [ %954, %949 ]
  %431 = phi i32 [ 0, %428 ], [ %900, %949 ]
  %432 = phi i32 [ %.lcssa3, %428 ], [ %902, %949 ]
  store i64 0, ptr @g_num_nodes, align 8, !tbaa !11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) @stat_cutoffs, i8 0, i64 160, i1 false), !tbaa !15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) @stat_nodes, i8 0, i64 160, i1 false), !tbaa !15
  br label %433

433:                                              ; preds = %433, %429
  %434 = phi i64 [ 0, %429 ], [ %437, %433 ]
  %435 = mul nuw nsw i64 %434, 40
  %436 = getelementptr i8, ptr @stat_nth_try, i64 %435
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %436, i8 0, i64 24, i1 false), !tbaa !15
  %437 = add nuw nsw i64 %434, 1
  %438 = icmp eq i64 %437, 40
  br i1 %438, label %439, label %433, !llvm.loop !32

439:                                              ; preds = %433
  store i32 %430, ptr @starting_depth, align 4, !tbaa !15
  %440 = icmp sgt i32 %432, 0
  br i1 %440, label %441, label %865

441:                                              ; preds = %439
  %442 = add nsw i32 %430, -1
  %443 = zext i32 %432 to i64
  br label %444

444:                                              ; preds = %861, %441
  %445 = phi i64 [ 0, %441 ], [ %863, %861 ]
  %446 = phi i32 [ -5000, %441 ], [ %862, %861 ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(8192) @g_first_move, i8 0, i64 8192, i1 false), !tbaa !15
  br label %447

447:                                              ; preds = %487, %444
  %448 = phi i1 [ true, %444 ], [ false, %487 ]
  %449 = phi i64 [ 0, %444 ], [ 1, %487 ]
  %450 = getelementptr inbounds [2 x i32], ptr @g_board_size, i64 0, i64 %449
  %451 = load i32, ptr %450, align 4, !tbaa !15
  %452 = icmp sgt i32 %451, 2
  br i1 %452, label %453, label %487

453:                                              ; preds = %447
  %454 = add nuw nsw i32 %451, 3
  %455 = lshr i32 %454, 1
  %456 = xor i64 %449, 1
  %457 = getelementptr inbounds [2 x i32], ptr @g_board_size, i64 0, i64 %456
  %458 = load i32, ptr %457, align 4, !tbaa !15
  %459 = sdiv i32 %458, 2
  %460 = icmp slt i32 %458, 2
  %461 = sext i32 %458 to i64
  %462 = sext i32 %459 to i64
  %463 = zext i32 %455 to i64
  %464 = add nuw i32 %451, 1
  br label %465

465:                                              ; preds = %483, %453
  %466 = phi i64 [ 2, %453 ], [ %485, %483 ]
  %467 = phi i32 [ 127, %453 ], [ %484, %483 ]
  br i1 %460, label %483, label %468

468:                                              ; preds = %465
  %469 = trunc i64 %466 to i32
  %470 = sub i32 %464, %469
  %471 = sext i32 %470 to i64
  br label %472

472:                                              ; preds = %472, %468
  %473 = phi i64 [ 1, %468 ], [ %481, %472 ]
  %474 = phi i32 [ %467, %468 ], [ %475, %472 ]
  %475 = add nsw i32 %474, -1
  %476 = getelementptr inbounds [2 x [32 x [32 x i32]]], ptr @g_first_move, i64 0, i64 %449, i64 %466, i64 %473
  store i32 %475, ptr %476, align 4, !tbaa !15
  %477 = getelementptr inbounds [2 x [32 x [32 x i32]]], ptr @g_first_move, i64 0, i64 %449, i64 %471, i64 %473
  store i32 %475, ptr %477, align 4, !tbaa !15
  %478 = sub nsw i64 %461, %473
  %479 = getelementptr inbounds [2 x [32 x [32 x i32]]], ptr @g_first_move, i64 0, i64 %449, i64 %471, i64 %478
  store i32 %475, ptr %479, align 4, !tbaa !15
  %480 = getelementptr inbounds [2 x [32 x [32 x i32]]], ptr @g_first_move, i64 0, i64 %449, i64 %466, i64 %478
  store i32 %475, ptr %480, align 4, !tbaa !15
  %481 = add nuw nsw i64 %473, 2
  %482 = icmp sgt i64 %481, %462
  br i1 %482, label %483, label %472, !llvm.loop !39

483:                                              ; preds = %472, %465
  %484 = phi i32 [ %467, %465 ], [ %475, %472 ]
  %485 = add nuw nsw i64 %466, 2
  %486 = icmp ult i64 %485, %463
  br i1 %486, label %465, label %487, !llvm.loop !40

487:                                              ; preds = %483, %447
  br i1 %448, label %447, label %488, !llvm.loop !41

488:                                              ; preds = %534, %487
  %489 = phi i1 [ false, %534 ], [ true, %487 ]
  %490 = phi i64 [ 1, %534 ], [ 0, %487 ]
  %491 = getelementptr inbounds [2 x i32], ptr @g_board_size, i64 0, i64 %490
  %492 = load i32, ptr %491, align 4, !tbaa !15
  %493 = icmp sgt i32 %492, 2
  br i1 %493, label %494, label %534

494:                                              ; preds = %488
  %495 = add nuw nsw i32 %492, 3
  %496 = lshr i32 %495, 1
  %497 = xor i64 %490, 1
  %498 = getelementptr inbounds [2 x i32], ptr @g_board_size, i64 0, i64 %497
  %499 = load i32, ptr %498, align 4, !tbaa !15
  %500 = sdiv i32 %499, 2
  %501 = icmp slt i32 %499, 2
  %502 = sext i32 %499 to i64
  %503 = add nsw i32 %500, 1
  %504 = zext i32 %496 to i64
  %505 = zext i32 %503 to i64
  %506 = add nuw i32 %492, 1
  br label %507

507:                                              ; preds = %530, %494
  %508 = phi i64 [ 2, %494 ], [ %532, %530 ]
  %509 = phi i32 [ 90, %494 ], [ %531, %530 ]
  br i1 %501, label %530, label %510

510:                                              ; preds = %507
  %511 = trunc i64 %508 to i32
  %512 = sub i32 %506, %511
  %513 = sext i32 %512 to i64
  br label %514

514:                                              ; preds = %526, %510
  %515 = phi i64 [ 1, %510 ], [ %528, %526 ]
  %516 = phi i32 [ %509, %510 ], [ %527, %526 ]
  %517 = getelementptr inbounds [2 x [32 x [32 x i32]]], ptr @g_first_move, i64 0, i64 %490, i64 %508, i64 %515
  %518 = load i32, ptr %517, align 4, !tbaa !15
  %519 = icmp eq i32 %518, 0
  br i1 %519, label %520, label %526

520:                                              ; preds = %514
  %521 = add nsw i32 %516, -1
  store i32 %521, ptr %517, align 4, !tbaa !15
  %522 = getelementptr inbounds [2 x [32 x [32 x i32]]], ptr @g_first_move, i64 0, i64 %490, i64 %513, i64 %515
  store i32 %521, ptr %522, align 4, !tbaa !15
  %523 = sub nsw i64 %502, %515
  %524 = getelementptr inbounds [2 x [32 x [32 x i32]]], ptr @g_first_move, i64 0, i64 %490, i64 %513, i64 %523
  store i32 %521, ptr %524, align 4, !tbaa !15
  %525 = getelementptr inbounds [2 x [32 x [32 x i32]]], ptr @g_first_move, i64 0, i64 %490, i64 %508, i64 %523
  store i32 %521, ptr %525, align 4, !tbaa !15
  br label %526

526:                                              ; preds = %520, %514
  %527 = phi i32 [ %521, %520 ], [ %516, %514 ]
  %528 = add nuw nsw i64 %515, 1
  %529 = icmp eq i64 %528, %505
  br i1 %529, label %530, label %514, !llvm.loop !42

530:                                              ; preds = %526, %507
  %531 = phi i32 [ %509, %507 ], [ %527, %526 ]
  %532 = add nuw nsw i64 %508, 2
  %533 = icmp ult i64 %532, %504
  br i1 %533, label %507, label %534, !llvm.loop !43

534:                                              ; preds = %530, %488
  br i1 %489, label %488, label %535, !llvm.loop !44

535:                                              ; preds = %580, %534
  %536 = phi i1 [ false, %580 ], [ true, %534 ]
  %537 = phi i64 [ 1, %580 ], [ 0, %534 ]
  %538 = getelementptr inbounds [2 x i32], ptr @g_board_size, i64 0, i64 %537
  %539 = load i32, ptr %538, align 4, !tbaa !15
  %540 = icmp sgt i32 %539, 4
  br i1 %540, label %541, label %580

541:                                              ; preds = %535
  %542 = add nuw nsw i32 %539, 3
  %543 = lshr i32 %542, 1
  %544 = xor i64 %537, 1
  %545 = getelementptr inbounds [2 x i32], ptr @g_board_size, i64 0, i64 %544
  %546 = load i32, ptr %545, align 4, !tbaa !15
  %547 = sdiv i32 %546, 2
  %548 = icmp slt i32 %546, 2
  %549 = sext i32 %546 to i64
  %550 = sext i32 %547 to i64
  %551 = zext i32 %543 to i64
  %552 = add nuw i32 %539, 1
  br label %553

553:                                              ; preds = %576, %541
  %554 = phi i64 [ 3, %541 ], [ %578, %576 ]
  %555 = phi i32 [ 70, %541 ], [ %577, %576 ]
  br i1 %548, label %576, label %556

556:                                              ; preds = %553
  %557 = trunc i64 %554 to i32
  %558 = sub i32 %552, %557
  %559 = sext i32 %558 to i64
  br label %560

560:                                              ; preds = %572, %556
  %561 = phi i64 [ 1, %556 ], [ %574, %572 ]
  %562 = phi i32 [ %555, %556 ], [ %573, %572 ]
  %563 = getelementptr inbounds [2 x [32 x [32 x i32]]], ptr @g_first_move, i64 0, i64 %537, i64 %554, i64 %561
  %564 = load i32, ptr %563, align 4, !tbaa !15
  %565 = icmp eq i32 %564, 0
  br i1 %565, label %566, label %572

566:                                              ; preds = %560
  %567 = add nsw i32 %562, -1
  store i32 %567, ptr %563, align 4, !tbaa !15
  %568 = getelementptr inbounds [2 x [32 x [32 x i32]]], ptr @g_first_move, i64 0, i64 %537, i64 %559, i64 %561
  store i32 %567, ptr %568, align 4, !tbaa !15
  %569 = sub nsw i64 %549, %561
  %570 = getelementptr inbounds [2 x [32 x [32 x i32]]], ptr @g_first_move, i64 0, i64 %537, i64 %559, i64 %569
  store i32 %567, ptr %570, align 4, !tbaa !15
  %571 = getelementptr inbounds [2 x [32 x [32 x i32]]], ptr @g_first_move, i64 0, i64 %537, i64 %554, i64 %569
  store i32 %567, ptr %571, align 4, !tbaa !15
  br label %572

572:                                              ; preds = %566, %560
  %573 = phi i32 [ %567, %566 ], [ %562, %560 ]
  %574 = add nuw nsw i64 %561, 2
  %575 = icmp sgt i64 %574, %550
  br i1 %575, label %576, label %560, !llvm.loop !45

576:                                              ; preds = %572, %553
  %577 = phi i32 [ %555, %553 ], [ %573, %572 ]
  %578 = add nuw nsw i64 %554, 1
  %579 = icmp eq i64 %578, %551
  br i1 %579, label %580, label %553, !llvm.loop !46

580:                                              ; preds = %576, %535
  br i1 %536, label %535, label %581, !llvm.loop !47

581:                                              ; preds = %627, %580
  %582 = phi i1 [ false, %627 ], [ true, %580 ]
  %583 = phi i64 [ 1, %627 ], [ 0, %580 ]
  %584 = getelementptr inbounds [2 x i32], ptr @g_board_size, i64 0, i64 %583
  %585 = load i32, ptr %584, align 4, !tbaa !15
  %586 = icmp sgt i32 %585, 4
  br i1 %586, label %587, label %627

587:                                              ; preds = %581
  %588 = add nuw nsw i32 %585, 3
  %589 = lshr i32 %588, 1
  %590 = xor i64 %583, 1
  %591 = getelementptr inbounds [2 x i32], ptr @g_board_size, i64 0, i64 %590
  %592 = load i32, ptr %591, align 4, !tbaa !15
  %593 = sdiv i32 %592, 2
  %594 = icmp slt i32 %592, 2
  %595 = sext i32 %592 to i64
  %596 = add nsw i32 %593, 1
  %597 = zext i32 %589 to i64
  %598 = zext i32 %596 to i64
  %599 = add nuw i32 %585, 1
  br label %600

600:                                              ; preds = %623, %587
  %601 = phi i64 [ 3, %587 ], [ %625, %623 ]
  %602 = phi i32 [ 50, %587 ], [ %624, %623 ]
  br i1 %594, label %623, label %603

603:                                              ; preds = %600
  %604 = trunc i64 %601 to i32
  %605 = sub i32 %599, %604
  %606 = sext i32 %605 to i64
  br label %607

607:                                              ; preds = %619, %603
  %608 = phi i64 [ 1, %603 ], [ %621, %619 ]
  %609 = phi i32 [ %602, %603 ], [ %620, %619 ]
  %610 = getelementptr inbounds [2 x [32 x [32 x i32]]], ptr @g_first_move, i64 0, i64 %583, i64 %601, i64 %608
  %611 = load i32, ptr %610, align 4, !tbaa !15
  %612 = icmp eq i32 %611, 0
  br i1 %612, label %613, label %619

613:                                              ; preds = %607
  %614 = add nsw i32 %609, -1
  store i32 %614, ptr %610, align 4, !tbaa !15
  %615 = getelementptr inbounds [2 x [32 x [32 x i32]]], ptr @g_first_move, i64 0, i64 %583, i64 %606, i64 %608
  store i32 %614, ptr %615, align 4, !tbaa !15
  %616 = sub nsw i64 %595, %608
  %617 = getelementptr inbounds [2 x [32 x [32 x i32]]], ptr @g_first_move, i64 0, i64 %583, i64 %606, i64 %616
  store i32 %614, ptr %617, align 4, !tbaa !15
  %618 = getelementptr inbounds [2 x [32 x [32 x i32]]], ptr @g_first_move, i64 0, i64 %583, i64 %601, i64 %616
  store i32 %614, ptr %618, align 4, !tbaa !15
  br label %619

619:                                              ; preds = %613, %607
  %620 = phi i32 [ %614, %613 ], [ %609, %607 ]
  %621 = add nuw nsw i64 %608, 1
  %622 = icmp eq i64 %621, %598
  br i1 %622, label %623, label %607, !llvm.loop !48

623:                                              ; preds = %619, %600
  %624 = phi i32 [ %602, %600 ], [ %620, %619 ]
  %625 = add nuw nsw i64 %601, 1
  %626 = icmp eq i64 %625, %597
  br i1 %626, label %627, label %600, !llvm.loop !49

627:                                              ; preds = %623, %581
  br i1 %582, label %581, label %628, !llvm.loop !50

628:                                              ; preds = %674, %627
  %629 = phi i1 [ false, %674 ], [ true, %627 ]
  %630 = phi i64 [ 1, %674 ], [ 0, %627 ]
  %631 = getelementptr inbounds [2 x i32], ptr @g_board_size, i64 0, i64 %630
  %632 = load i32, ptr %631, align 4, !tbaa !15
  %633 = icmp sgt i32 %632, 0
  br i1 %633, label %634, label %674

634:                                              ; preds = %628
  %635 = add nuw nsw i32 %632, 3
  %636 = lshr i32 %635, 1
  %637 = xor i64 %630, 1
  %638 = getelementptr inbounds [2 x i32], ptr @g_board_size, i64 0, i64 %637
  %639 = load i32, ptr %638, align 4, !tbaa !15
  %640 = sdiv i32 %639, 2
  %641 = icmp slt i32 %639, 2
  %642 = sext i32 %639 to i64
  %643 = add nsw i32 %640, 1
  %644 = zext i32 %636 to i64
  %645 = zext i32 %643 to i64
  %646 = add nuw i32 %632, 1
  br label %647

647:                                              ; preds = %670, %634
  %648 = phi i64 [ 1, %634 ], [ %672, %670 ]
  %649 = phi i32 [ 30, %634 ], [ %671, %670 ]
  br i1 %641, label %670, label %650

650:                                              ; preds = %647
  %651 = trunc i64 %648 to i32
  %652 = sub i32 %646, %651
  %653 = sext i32 %652 to i64
  br label %654

654:                                              ; preds = %666, %650
  %655 = phi i64 [ 1, %650 ], [ %668, %666 ]
  %656 = phi i32 [ %649, %650 ], [ %667, %666 ]
  %657 = getelementptr inbounds [2 x [32 x [32 x i32]]], ptr @g_first_move, i64 0, i64 %630, i64 %648, i64 %655
  %658 = load i32, ptr %657, align 4, !tbaa !15
  %659 = icmp eq i32 %658, 0
  br i1 %659, label %660, label %666

660:                                              ; preds = %654
  %661 = add nsw i32 %656, -1
  store i32 %661, ptr %657, align 4, !tbaa !15
  %662 = getelementptr inbounds [2 x [32 x [32 x i32]]], ptr @g_first_move, i64 0, i64 %630, i64 %653, i64 %655
  store i32 %661, ptr %662, align 4, !tbaa !15
  %663 = sub nsw i64 %642, %655
  %664 = getelementptr inbounds [2 x [32 x [32 x i32]]], ptr @g_first_move, i64 0, i64 %630, i64 %653, i64 %663
  store i32 %661, ptr %664, align 4, !tbaa !15
  %665 = getelementptr inbounds [2 x [32 x [32 x i32]]], ptr @g_first_move, i64 0, i64 %630, i64 %648, i64 %663
  store i32 %661, ptr %665, align 4, !tbaa !15
  br label %666

666:                                              ; preds = %660, %654
  %667 = phi i32 [ %661, %660 ], [ %656, %654 ]
  %668 = add nuw nsw i64 %655, 1
  %669 = icmp eq i64 %668, %645
  br i1 %669, label %670, label %654, !llvm.loop !51

670:                                              ; preds = %666, %647
  %671 = phi i32 [ %649, %647 ], [ %667, %666 ]
  %672 = add nuw nsw i64 %648, 1
  %673 = icmp eq i64 %672, %644
  br i1 %673, label %674, label %647, !llvm.loop !52

674:                                              ; preds = %670, %628
  br i1 %629, label %628, label %675, !llvm.loop !53

675:                                              ; preds = %674
  %676 = trunc i64 %445 to i32
  store i32 %676, ptr @g_move_number, align 16, !tbaa !15
  %677 = load i32, ptr @g_empty_squares, align 4, !tbaa !15
  %678 = add nsw i32 %677, -2
  store i32 %678, ptr @g_empty_squares, align 4, !tbaa !15
  %679 = getelementptr inbounds [256 x %struct.Basic_Info], ptr %3, i64 0, i64 %445
  %680 = load i64, ptr %679, align 4
  call fastcc void @toggle_move(i64 %680, i32 noundef %317) #30
  %681 = shl i64 %680, 32
  %682 = ashr exact i64 %681, 32
  %683 = lshr i64 %680, 32
  %684 = trunc i64 %683 to i32
  %685 = ashr i64 %680, 32
  %686 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo.9]]], ptr @g_keyinfo, i64 0, i64 %350, i64 %682, i64 %685
  %687 = load i32, ptr %686, align 16, !tbaa !54
  %688 = and i32 %687, 31
  %689 = shl nuw i32 1, %688
  %690 = sdiv i32 %687, 32
  %691 = sext i32 %690 to i64
  %692 = getelementptr inbounds [4 x i32], ptr @g_norm_hashkey, i64 0, i64 %691
  %693 = load i32, ptr %692, align 4, !tbaa !15
  %694 = xor i32 %689, %693
  store i32 %694, ptr %692, align 4, !tbaa !15
  %695 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo.9]]], ptr @g_keyinfo, i64 0, i64 %350, i64 %682, i64 %685, i32 0, i32 1
  %696 = load i32, ptr %695, align 4, !tbaa !56
  %697 = and i32 %696, 31
  %698 = shl nuw i32 1, %697
  %699 = sdiv i32 %696, 32
  %700 = sext i32 %699 to i64
  %701 = getelementptr inbounds [4 x i32], ptr @g_norm_hashkey, i64 0, i64 %700
  %702 = load i32, ptr %701, align 4, !tbaa !15
  %703 = xor i32 %698, %702
  store i32 %703, ptr %701, align 4, !tbaa !15
  %704 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo.9]]], ptr @g_keyinfo, i64 0, i64 %350, i64 %682, i64 %685, i32 0, i32 2
  %705 = load i32, ptr %704, align 8, !tbaa !57
  %706 = load i32, ptr getelementptr inbounds (%struct.Hash_Key, ptr @g_norm_hashkey, i64 0, i32 1), align 8, !tbaa !58
  %707 = xor i32 %706, %705
  store i32 %707, ptr getelementptr inbounds (%struct.Hash_Key, ptr @g_norm_hashkey, i64 0, i32 1), align 8, !tbaa !58
  %708 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo.9]]], ptr @g_keyinfo, i64 0, i64 %350, i64 %682, i64 %685, i32 1
  %709 = load i32, ptr %708, align 4, !tbaa !60
  %710 = and i32 %709, 31
  %711 = shl nuw i32 1, %710
  %712 = sdiv i32 %709, 32
  %713 = sext i32 %712 to i64
  %714 = getelementptr inbounds [4 x i32], ptr @g_flipV_hashkey, i64 0, i64 %713
  %715 = load i32, ptr %714, align 4, !tbaa !15
  %716 = xor i32 %711, %715
  store i32 %716, ptr %714, align 4, !tbaa !15
  %717 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo.9]]], ptr @g_keyinfo, i64 0, i64 %350, i64 %682, i64 %685, i32 1, i32 1
  %718 = load i32, ptr %717, align 16, !tbaa !61
  %719 = and i32 %718, 31
  %720 = shl nuw i32 1, %719
  %721 = sdiv i32 %718, 32
  %722 = sext i32 %721 to i64
  %723 = getelementptr inbounds [4 x i32], ptr @g_flipV_hashkey, i64 0, i64 %722
  %724 = load i32, ptr %723, align 4, !tbaa !15
  %725 = xor i32 %720, %724
  store i32 %725, ptr %723, align 4, !tbaa !15
  %726 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo.9]]], ptr @g_keyinfo, i64 0, i64 %350, i64 %682, i64 %685, i32 1, i32 2
  %727 = load i32, ptr %726, align 4, !tbaa !62
  %728 = load i32, ptr getelementptr inbounds (%struct.Hash_Key, ptr @g_flipV_hashkey, i64 0, i32 1), align 8, !tbaa !58
  %729 = xor i32 %728, %727
  store i32 %729, ptr getelementptr inbounds (%struct.Hash_Key, ptr @g_flipV_hashkey, i64 0, i32 1), align 8, !tbaa !58
  %730 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo.9]]], ptr @g_keyinfo, i64 0, i64 %350, i64 %682, i64 %685, i32 2
  %731 = load i32, ptr %730, align 8, !tbaa !63
  %732 = and i32 %731, 31
  %733 = shl nuw i32 1, %732
  %734 = sdiv i32 %731, 32
  %735 = sext i32 %734 to i64
  %736 = getelementptr inbounds [4 x i32], ptr @g_flipH_hashkey, i64 0, i64 %735
  %737 = load i32, ptr %736, align 4, !tbaa !15
  %738 = xor i32 %733, %737
  store i32 %738, ptr %736, align 4, !tbaa !15
  %739 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo.9]]], ptr @g_keyinfo, i64 0, i64 %350, i64 %682, i64 %685, i32 2, i32 1
  %740 = load i32, ptr %739, align 4, !tbaa !64
  %741 = and i32 %740, 31
  %742 = shl nuw i32 1, %741
  %743 = sdiv i32 %740, 32
  %744 = sext i32 %743 to i64
  %745 = getelementptr inbounds [4 x i32], ptr @g_flipH_hashkey, i64 0, i64 %744
  %746 = load i32, ptr %745, align 4, !tbaa !15
  %747 = xor i32 %742, %746
  store i32 %747, ptr %745, align 4, !tbaa !15
  %748 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo.9]]], ptr @g_keyinfo, i64 0, i64 %350, i64 %682, i64 %685, i32 2, i32 2
  %749 = load i32, ptr %748, align 16, !tbaa !65
  %750 = load i32, ptr getelementptr inbounds (%struct.Hash_Key, ptr @g_flipH_hashkey, i64 0, i32 1), align 8, !tbaa !58
  %751 = xor i32 %750, %749
  store i32 %751, ptr getelementptr inbounds (%struct.Hash_Key, ptr @g_flipH_hashkey, i64 0, i32 1), align 8, !tbaa !58
  %752 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo.9]]], ptr @g_keyinfo, i64 0, i64 %350, i64 %682, i64 %685, i32 3
  %753 = load i32, ptr %752, align 4, !tbaa !66
  %754 = and i32 %753, 31
  %755 = shl nuw i32 1, %754
  %756 = sdiv i32 %753, 32
  %757 = sext i32 %756 to i64
  %758 = getelementptr inbounds [4 x i32], ptr @g_flipVH_hashkey, i64 0, i64 %757
  %759 = load i32, ptr %758, align 4, !tbaa !15
  %760 = xor i32 %755, %759
  store i32 %760, ptr %758, align 4, !tbaa !15
  %761 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo.9]]], ptr @g_keyinfo, i64 0, i64 %350, i64 %682, i64 %685, i32 3, i32 1
  %762 = load i32, ptr %761, align 8, !tbaa !67
  %763 = and i32 %762, 31
  %764 = shl nuw i32 1, %763
  %765 = sdiv i32 %762, 32
  %766 = sext i32 %765 to i64
  %767 = getelementptr inbounds [4 x i32], ptr @g_flipVH_hashkey, i64 0, i64 %766
  %768 = load i32, ptr %767, align 4, !tbaa !15
  %769 = xor i32 %764, %768
  store i32 %769, ptr %767, align 4, !tbaa !15
  %770 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo.9]]], ptr @g_keyinfo, i64 0, i64 %350, i64 %682, i64 %685, i32 3, i32 2
  %771 = load i32, ptr %770, align 4, !tbaa !68
  %772 = load i32, ptr getelementptr inbounds (%struct.Hash_Key, ptr @g_flipVH_hashkey, i64 0, i32 1), align 8, !tbaa !58
  %773 = xor i32 %772, %771
  store i32 %773, ptr getelementptr inbounds (%struct.Hash_Key, ptr @g_flipVH_hashkey, i64 0, i32 1), align 8, !tbaa !58
  call fastcc void @check_hash_code_sanity() #30
  %774 = sub nsw i32 0, %446
  %775 = call fastcc i32 @negamax(i32 noundef %442, i32 noundef %349, i32 noundef -5000, i32 noundef %774) #31
  %776 = sub nsw i32 0, %775
  %777 = load i32, ptr @g_empty_squares, align 4, !tbaa !15
  %778 = add nsw i32 %777, 2
  store i32 %778, ptr @g_empty_squares, align 4, !tbaa !15
  call fastcc void @toggle_move(i64 %680, i32 noundef %317) #30
  %779 = trunc i64 %680 to i32
  %780 = load i32, ptr %686, align 16, !tbaa !54
  %781 = and i32 %780, 31
  %782 = shl nuw i32 1, %781
  %783 = sdiv i32 %780, 32
  %784 = sext i32 %783 to i64
  %785 = getelementptr inbounds [4 x i32], ptr @g_norm_hashkey, i64 0, i64 %784
  %786 = load i32, ptr %785, align 4, !tbaa !15
  %787 = xor i32 %782, %786
  store i32 %787, ptr %785, align 4, !tbaa !15
  %788 = load i32, ptr %695, align 4, !tbaa !56
  %789 = and i32 %788, 31
  %790 = shl nuw i32 1, %789
  %791 = sdiv i32 %788, 32
  %792 = sext i32 %791 to i64
  %793 = getelementptr inbounds [4 x i32], ptr @g_norm_hashkey, i64 0, i64 %792
  %794 = load i32, ptr %793, align 4, !tbaa !15
  %795 = xor i32 %790, %794
  store i32 %795, ptr %793, align 4, !tbaa !15
  %796 = load i32, ptr %704, align 8, !tbaa !57
  %797 = load i32, ptr getelementptr inbounds (%struct.Hash_Key, ptr @g_norm_hashkey, i64 0, i32 1), align 8, !tbaa !58
  %798 = xor i32 %797, %796
  store i32 %798, ptr getelementptr inbounds (%struct.Hash_Key, ptr @g_norm_hashkey, i64 0, i32 1), align 8, !tbaa !58
  %799 = load i32, ptr %708, align 4, !tbaa !60
  %800 = and i32 %799, 31
  %801 = shl nuw i32 1, %800
  %802 = sdiv i32 %799, 32
  %803 = sext i32 %802 to i64
  %804 = getelementptr inbounds [4 x i32], ptr @g_flipV_hashkey, i64 0, i64 %803
  %805 = load i32, ptr %804, align 4, !tbaa !15
  %806 = xor i32 %801, %805
  store i32 %806, ptr %804, align 4, !tbaa !15
  %807 = load i32, ptr %717, align 16, !tbaa !61
  %808 = and i32 %807, 31
  %809 = shl nuw i32 1, %808
  %810 = sdiv i32 %807, 32
  %811 = sext i32 %810 to i64
  %812 = getelementptr inbounds [4 x i32], ptr @g_flipV_hashkey, i64 0, i64 %811
  %813 = load i32, ptr %812, align 4, !tbaa !15
  %814 = xor i32 %809, %813
  store i32 %814, ptr %812, align 4, !tbaa !15
  %815 = load i32, ptr %726, align 4, !tbaa !62
  %816 = load i32, ptr getelementptr inbounds (%struct.Hash_Key, ptr @g_flipV_hashkey, i64 0, i32 1), align 8, !tbaa !58
  %817 = xor i32 %816, %815
  store i32 %817, ptr getelementptr inbounds (%struct.Hash_Key, ptr @g_flipV_hashkey, i64 0, i32 1), align 8, !tbaa !58
  %818 = load i32, ptr %730, align 8, !tbaa !63
  %819 = and i32 %818, 31
  %820 = shl nuw i32 1, %819
  %821 = sdiv i32 %818, 32
  %822 = sext i32 %821 to i64
  %823 = getelementptr inbounds [4 x i32], ptr @g_flipH_hashkey, i64 0, i64 %822
  %824 = load i32, ptr %823, align 4, !tbaa !15
  %825 = xor i32 %820, %824
  store i32 %825, ptr %823, align 4, !tbaa !15
  %826 = load i32, ptr %739, align 4, !tbaa !64
  %827 = and i32 %826, 31
  %828 = shl nuw i32 1, %827
  %829 = sdiv i32 %826, 32
  %830 = sext i32 %829 to i64
  %831 = getelementptr inbounds [4 x i32], ptr @g_flipH_hashkey, i64 0, i64 %830
  %832 = load i32, ptr %831, align 4, !tbaa !15
  %833 = xor i32 %828, %832
  store i32 %833, ptr %831, align 4, !tbaa !15
  %834 = load i32, ptr %748, align 16, !tbaa !65
  %835 = load i32, ptr getelementptr inbounds (%struct.Hash_Key, ptr @g_flipH_hashkey, i64 0, i32 1), align 8, !tbaa !58
  %836 = xor i32 %835, %834
  store i32 %836, ptr getelementptr inbounds (%struct.Hash_Key, ptr @g_flipH_hashkey, i64 0, i32 1), align 8, !tbaa !58
  %837 = load i32, ptr %752, align 4, !tbaa !66
  %838 = and i32 %837, 31
  %839 = shl nuw i32 1, %838
  %840 = sdiv i32 %837, 32
  %841 = sext i32 %840 to i64
  %842 = getelementptr inbounds [4 x i32], ptr @g_flipVH_hashkey, i64 0, i64 %841
  %843 = load i32, ptr %842, align 4, !tbaa !15
  %844 = xor i32 %839, %843
  store i32 %844, ptr %842, align 4, !tbaa !15
  %845 = load i32, ptr %761, align 8, !tbaa !67
  %846 = and i32 %845, 31
  %847 = shl nuw i32 1, %846
  %848 = sdiv i32 %845, 32
  %849 = sext i32 %848 to i64
  %850 = getelementptr inbounds [4 x i32], ptr @g_flipVH_hashkey, i64 0, i64 %849
  %851 = load i32, ptr %850, align 4, !tbaa !15
  %852 = xor i32 %847, %851
  store i32 %852, ptr %850, align 4, !tbaa !15
  %853 = load i32, ptr %770, align 4, !tbaa !68
  %854 = load i32, ptr getelementptr inbounds (%struct.Hash_Key, ptr @g_flipVH_hashkey, i64 0, i32 1), align 8, !tbaa !58
  %855 = xor i32 %854, %853
  store i32 %855, ptr getelementptr inbounds (%struct.Hash_Key, ptr @g_flipVH_hashkey, i64 0, i32 1), align 8, !tbaa !58
  call fastcc void @check_hash_code_sanity() #30
  %856 = load i64, ptr @g_num_nodes, align 8, !tbaa !11
  call fastcc void @u64bit_to_string(i64 noundef %856) #30
  %857 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3.43, i32 noundef %779, i32 noundef %684, i32 noundef %776, ptr noundef nonnull @u64bit_to_string.big_num) #31
  %858 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i32 noundef %446, i32 noundef 5000) #31
  %859 = getelementptr inbounds [256 x %struct.Basic_Info], ptr %3, i64 0, i64 %445, i32 2
  store i32 %776, ptr %859, align 4, !tbaa !37
  %860 = icmp slt i32 %775, -4999
  br i1 %860, label %867, label %861

861:                                              ; preds = %675
  %862 = call i32 @llvm.smax.i32(i32 %446, i32 %776)
  %863 = add nuw nsw i64 %445, 1
  %864 = icmp eq i64 %863, %443
  br i1 %864, label %879, label %444, !llvm.loop !69

865:                                              ; preds = %439
  %866 = icmp sgt i32 %431, 4999
  br i1 %866, label %867, label %899

867:                                              ; preds = %865, %675
  %868 = phi i32 [ %776, %675 ], [ %431, %865 ]
  %869 = phi i64 [ %445, %675 ], [ 0, %865 ]
  %870 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5.44, i32 noundef %868) #31
  %871 = and i64 %869, 4294967295
  %872 = getelementptr inbounds [256 x %struct.Basic_Info], ptr %3, i64 0, i64 %871
  %873 = load i32, ptr %872, align 4, !tbaa !33
  %874 = getelementptr inbounds [256 x %struct.Basic_Info], ptr %3, i64 0, i64 %871, i32 1
  %875 = load i32, ptr %874, align 4, !tbaa !35
  %876 = select i1 %312, i32 %875, i32 %873
  %877 = select i1 %312, i32 %873, i32 %875
  %878 = load i64, ptr @g_num_nodes, align 8, !tbaa !11
  call fastcc void @print_stats() #31
  br label %958

879:                                              ; preds = %895, %861
  %.lcssa = phi i32 [ %.lcssa, %895 ], [ %776, %861 ]
  %880 = phi i64 [ %897, %895 ], [ 0, %861 ]
  %881 = phi i32 [ %896, %895 ], [ 0, %861 ]
  %882 = getelementptr inbounds [256 x %struct.Basic_Info], ptr %3, i64 0, i64 %880
  %883 = getelementptr inbounds [256 x %struct.Basic_Info], ptr %3, i64 0, i64 %880, i32 2
  %884 = load i32, ptr %883, align 4, !tbaa !37
  %885 = icmp slt i32 %884, -4999
  br i1 %885, label %886, label %888

886:                                              ; preds = %879
  %887 = add nsw i32 %881, 1
  br label %895

888:                                              ; preds = %879
  %889 = icmp sgt i32 %881, 0
  br i1 %889, label %890, label %895

890:                                              ; preds = %888
  %891 = trunc i64 %880 to i32
  %892 = sub nsw i32 %891, %881
  %893 = sext i32 %892 to i64
  %894 = getelementptr inbounds [256 x %struct.Basic_Info], ptr %3, i64 0, i64 %893
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %894, ptr noundef nonnull align 4 dereferenceable(12) %882, i64 12, i1 false), !tbaa.struct !70
  br label %895

895:                                              ; preds = %890, %888, %886
  %896 = phi i32 [ %887, %886 ], [ %881, %890 ], [ %881, %888 ]
  %897 = add nuw nsw i64 %880, 1
  %898 = icmp eq i64 %897, %443
  br i1 %898, label %899, label %879, !llvm.loop !71

899:                                              ; preds = %895, %865
  %900 = phi i32 [ %431, %865 ], [ %.lcssa, %895 ]
  %901 = phi i32 [ 0, %865 ], [ %896, %895 ]
  %902 = sub i32 %432, %901
  call fastcc void @print_stats() #31
  %903 = icmp eq i32 %902, 0
  br i1 %903, label %956, label %904

904:                                              ; preds = %899
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4)
  %905 = icmp sgt i32 %902, 0
  br i1 %905, label %906, label %949

906:                                              ; preds = %904
  %907 = zext i32 %902 to i64
  br label %908

908:                                              ; preds = %946, %906
  %909 = phi i64 [ 0, %906 ], [ %912, %946 ]
  %910 = phi i64 [ 1, %906 ], [ %947, %946 ]
  %911 = getelementptr inbounds [256 x %struct.Basic_Info], ptr %3, i64 0, i64 %909
  %912 = add nuw nsw i64 %909, 1
  %913 = icmp ult i64 %912, %907
  %914 = trunc i64 %909 to i32
  br i1 %913, label %915, label %931

915:                                              ; preds = %908
  %916 = getelementptr inbounds [256 x %struct.Basic_Info], ptr %3, i64 0, i64 %909, i32 2
  %917 = load i32, ptr %916, align 4, !tbaa !37
  br label %918

918:                                              ; preds = %918, %915
  %919 = phi i64 [ %910, %915 ], [ %928, %918 ]
  %920 = phi i32 [ %914, %915 ], [ %927, %918 ]
  %921 = phi i32 [ %917, %915 ], [ %925, %918 ]
  %922 = getelementptr inbounds [256 x %struct.Basic_Info], ptr %3, i64 0, i64 %919, i32 2
  %923 = load i32, ptr %922, align 4, !tbaa !37
  %924 = icmp sgt i32 %923, %921
  %925 = call i32 @llvm.smax.i32(i32 %923, i32 %921)
  %926 = trunc i64 %919 to i32
  %927 = select i1 %924, i32 %926, i32 %920
  %928 = add nuw nsw i64 %919, 1
  %929 = trunc i64 %928 to i32
  %930 = icmp sgt i32 %902, %929
  br i1 %930, label %918, label %931, !llvm.loop !72

931:                                              ; preds = %918, %908
  %932 = phi i32 [ %914, %908 ], [ %927, %918 ]
  %933 = zext i32 %932 to i64
  %934 = icmp eq i64 %909, %933
  br i1 %934, label %946, label %935

935:                                              ; preds = %931
  %936 = sext i32 %932 to i64
  %937 = getelementptr inbounds [256 x %struct.Basic_Info], ptr %3, i64 0, i64 %936
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %4, ptr noundef nonnull align 4 dereferenceable(12) %937, i64 12, i1 false), !tbaa.struct !70
  br label %938

938:                                              ; preds = %938, %935
  %939 = phi i64 [ %936, %935 ], [ %941, %938 ]
  %940 = getelementptr inbounds [256 x %struct.Basic_Info], ptr %3, i64 0, i64 %939
  %941 = add nsw i64 %939, -1
  %942 = getelementptr inbounds [256 x %struct.Basic_Info], ptr %3, i64 0, i64 %941
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %940, ptr noundef nonnull align 4 dereferenceable(12) %942, i64 12, i1 false), !tbaa.struct !70
  %943 = and i64 %941, 4294967295
  %944 = icmp eq i64 %943, %909
  br i1 %944, label %945, label %938, !llvm.loop !73

945:                                              ; preds = %938
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %911, ptr noundef nonnull align 4 dereferenceable(12) %4, i64 12, i1 false), !tbaa.struct !70
  br label %946

946:                                              ; preds = %945, %931
  %947 = add nuw nsw i64 %910, 1
  %948 = icmp eq i64 %912, %907
  br i1 %948, label %949, label %908, !llvm.loop !74

949:                                              ; preds = %946, %904
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4)
  %950 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %900, i32 noundef %430) #31
  %951 = load i64, ptr @g_num_nodes, align 8, !tbaa !11
  %952 = trunc i64 %951 to i32
  %953 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8.45, i32 noundef %952) #31
  %954 = add nuw nsw i32 %430, 44
  %955 = icmp ult i32 %430, 6
  br i1 %955, label %429, label %956, !llvm.loop !75

956:                                              ; preds = %949, %899
  %.lcssa1 = phi i32 [ %900, %949 ], [ %900, %899 ]
  %957 = load i64, ptr @g_num_nodes, align 8, !tbaa !11
  br label %958

958:                                              ; preds = %956, %867, %357, %348
  %959 = phi i32 [ %876, %867 ], [ -1, %956 ], [ -1, %348 ], [ -1, %357 ]
  %960 = phi i32 [ %877, %867 ], [ -1, %956 ], [ -1, %348 ], [ -1, %357 ]
  %961 = phi i64 [ %878, %867 ], [ %957, %956 ], [ 0, %348 ], [ 0, %357 ]
  %962 = phi i32 [ %868, %867 ], [ %.lcssa1, %956 ], [ 5000, %348 ], [ -5000, %357 ]
  call void @llvm.lifetime.end.p0(i64 3072, ptr nonnull %3) #34
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %5) #34
  %963 = call i32 @sigemptyset(ptr noundef nonnull %5) #30
  %964 = call i32 @sigaddset(ptr noundef nonnull %5, i32 noundef 14) #30
  %965 = call i32 @sigaddset(ptr noundef nonnull %5, i32 noundef 2) #30
  %966 = call i32 @sigprocmask(i32 noundef 0, ptr noundef nonnull %5, ptr noundef null) #30
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %5) #34
  call fastcc void @u64bit_to_string(i64 noundef %961) #30
  %967 = icmp sgt i32 %962, 4999
  %968 = load i8, ptr @main_whos_turn, align 1, !tbaa !17
  %969 = icmp eq i8 %968, 86
  %970 = select i1 %969, i32 72, i32 86
  %971 = sext i8 %968 to i32
  %972 = select i1 %967, i32 %971, i32 %970
  %973 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.73, i32 noundef %972, i32 noundef %959, i32 noundef %960, ptr noundef nonnull @u64bit_to_string.big_num) #31
  %974 = load ptr, ptr @stdout, align 8, !tbaa !7
  %975 = call i32 @fflush(ptr noundef %974) #31
  %976 = load ptr, ptr @lock_file, align 8, !tbaa !7
  %977 = icmp eq ptr %976, null
  br i1 %977, label %1003, label %978

978:                                              ; preds = %958
  br i1 %967, label %979, label %981

979:                                              ; preds = %978
  %980 = load i8, ptr @main_whos_turn, align 1, !tbaa !17
  br label %988

981:                                              ; preds = %978
  %982 = icmp slt i32 %962, -4999
  br i1 %982, label %983, label %987

983:                                              ; preds = %981
  %984 = load i8, ptr @main_whos_turn, align 1, !tbaa !17
  %985 = icmp eq i8 %984, 86
  %986 = select i1 %985, i8 72, i8 86
  br label %988

987:                                              ; preds = %981
  call void (ptr, i32, i32, ptr, ...) @_fatal_error_aux(ptr noundef nonnull @.str.2.54, i32 noundef 149, i32 poison, ptr noundef nonnull @.str.3.74) #30
  unreachable

988:                                              ; preds = %983, %979
  %989 = phi i8 [ %980, %979 ], [ %986, %983 ]
  %990 = call noalias ptr @fopen(ptr noundef nonnull %976, ptr noundef nonnull @.str.23) #31
  %991 = icmp eq ptr %990, null
  br i1 %991, label %992, label %993

992:                                              ; preds = %988
  call void (ptr, i32, i32, ptr, ...) @_fatal_error_aux(ptr noundef nonnull @.str.2.54, i32 noundef 530, i32 poison, ptr noundef nonnull @.str.24.57) #30
  unreachable

993:                                              ; preds = %988
  %994 = load ptr, ptr @lock_file, align 8, !tbaa !7
  %995 = call i32 @puts(ptr nonnull dereferenceable(1) %994)
  %996 = load i32, ptr @lock_file_offset, align 4, !tbaa !15
  %997 = sext i32 %996 to i64
  %998 = call i32 @fseek(ptr noundef nonnull %990, i64 noundef %997, i32 noundef 0) #31
  %999 = sext i8 %989 to i32
  %1000 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %990, ptr noundef nonnull @.str.25, i32 noundef %999, ptr noundef nonnull @u64bit_to_string.big_num) #31
  %1001 = call i32 @fflush(ptr noundef nonnull %990) #31
  %1002 = call i32 @fclose(ptr noundef nonnull %990) #31
  br label %1003

1003:                                             ; preds = %993, %958
  %1004 = call i32 (i32, i32, ...) @fcntl(i32 noundef 0, i32 noundef 4, i32 noundef 0) #30
  %1005 = load i1, ptr @main_batch, align 4
  br i1 %1005, label %1006, label %1009

1006:                                             ; preds = %1006, %1003
  %1007 = call i32 @getchar() #31
  %1008 = icmp eq i32 %1007, -1
  br i1 %1008, label %1009, label %1006, !llvm.loop !76

1009:                                             ; preds = %1006, %1003
  ret i32 0
}

; Function Attrs: nounwind optsize
declare i32 @getopt(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare noalias ptr @strdup(ptr nocapture noundef readonly) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(read)
declare i32 @atoi(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: noreturn nounwind optsize uwtable
define internal void @_fatal_error_aux(ptr noundef %0, i32 noundef %1, i32 %2, ptr nocapture noundef readonly %3, ...) unnamed_addr #7 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #34
  %6 = load ptr, ptr @_fatal_error_aux.err_file, align 8, !tbaa !7
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %14

8:                                                ; preds = %4
  %9 = tail call noalias ptr @fopen(ptr noundef nonnull @.str.2.102, ptr noundef nonnull @.str.3.103) #31
  store ptr %9, ptr @_fatal_error_aux.err_file, align 8, !tbaa !7
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %8
  %12 = load ptr, ptr @stderr, align 8, !tbaa !7
  %13 = tail call i64 @fwrite(ptr nonnull @.str.4.104, i64 30, i64 1, ptr %12) #39
  br label %14

14:                                               ; preds = %11, %8, %4
  %15 = load ptr, ptr @stderr, align 8, !tbaa !7
  %16 = tail call i64 @fwrite(ptr nonnull @.str.1.101, i64 7, i64 1, ptr %15) #39
  %17 = load ptr, ptr @_fatal_error_aux.err_file, align 8, !tbaa !7
  %18 = tail call i64 @fwrite(ptr nonnull @.str.1.101, i64 7, i64 1, ptr %17)
  call void @llvm.va_start(ptr nonnull %5)
  %19 = load ptr, ptr @stderr, align 8, !tbaa !7
  %20 = call i32 @vfprintf(ptr noundef %19, ptr noundef %3, ptr noundef nonnull %5) #37
  %21 = load ptr, ptr @_fatal_error_aux.err_file, align 8, !tbaa !7
  %22 = call i32 @vfprintf(ptr noundef %21, ptr noundef %3, ptr noundef nonnull %5) #31
  call void @llvm.va_end(ptr nonnull %5)
  %23 = load ptr, ptr @stderr, align 8, !tbaa !7
  %24 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %23, ptr noundef nonnull @.str.8.108, ptr noundef %0, i32 noundef %1) #37
  %25 = load ptr, ptr @_fatal_error_aux.err_file, align 8, !tbaa !7
  %26 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %25, ptr noundef nonnull @.str.8.108, ptr noundef %0, i32 noundef %1) #31
  %27 = load ptr, ptr @stderr, align 8, !tbaa !7
  %28 = call i32 @fflush(ptr noundef %27) #31
  %29 = load ptr, ptr @_fatal_error_aux.err_file, align 8, !tbaa !7
  %30 = call i32 @fflush(ptr noundef %29) #31
  call void @exit(i32 noundef 1) #32
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: nofree nounwind optsize
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i64 @ftell(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nounwind optsize uwtable
define internal fastcc i64 @getline_llvm(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #0 {
  %3 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %3) #34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) %3, i8 0, i64 4096, i1 false)
  %4 = call ptr @fgets(ptr noundef nonnull %3, i32 noundef 4095, ptr noundef %1) #31
  %5 = icmp eq ptr %4, null
  br i1 %5, label %19, label %6

6:                                                ; preds = %2
  %7 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #33
  %8 = icmp sgt i64 %7, -1
  br i1 %8, label %9, label %19

9:                                                ; preds = %6
  %10 = load ptr, ptr %0, align 8, !tbaa !7
  %11 = icmp eq ptr %10, null
  %12 = add nuw nsw i64 %7, 1
  br i1 %11, label %13, label %15

13:                                               ; preds = %9
  %14 = call noalias ptr @malloc(i64 noundef %12) #36
  br label %17

15:                                               ; preds = %9
  %16 = call ptr @realloc(ptr noundef nonnull %10, i64 noundef %12) #35
  br label %17

17:                                               ; preds = %15, %13
  %18 = phi ptr [ %16, %15 ], [ %14, %13 ]
  store ptr %18, ptr %0, align 8, !tbaa !7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %18, ptr noundef nonnull align 16 dereferenceable(1) %3, i64 %12, i1 false)
  br label %19

19:                                               ; preds = %17, %6, %2
  %20 = phi i64 [ %7, %17 ], [ %7, %6 ], [ -1, %2 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %3) #34
  ret i64 %20
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @__isoc99_sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fseek(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @initialize_board(i32 noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = alloca [32 x [80 x i8]], align 16
  %5 = alloca [1 x i8], align 1
  %6 = add i32 %0, -31
  %7 = icmp ult i32 %6, -30
  %8 = add i32 %1, -31
  %9 = icmp ult i32 %8, -30
  %10 = or i1 %7, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @_fatal_error_aux(ptr noundef nonnull @.str.20, i32 noundef 102, i32 poison, ptr noundef nonnull @.str.1.21, i32 noundef %0, i32 noundef %1) #30
  unreachable

12:                                               ; preds = %3
  %13 = mul nuw nsw i32 %1, %0
  %14 = icmp ugt i32 %13, 127
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  tail call void (ptr, i32, i32, ptr, ...) @_fatal_error_aux(ptr noundef nonnull @.str.20, i32 noundef 105, i32 poison, ptr noundef nonnull @.str.1.21, i32 noundef %0, i32 noundef %1) #30
  unreachable

16:                                               ; preds = %12
  %17 = load ptr, ptr @g_trans_table, align 8, !tbaa !7
  %18 = icmp ne ptr %17, null
  %19 = load i32, ptr @g_board_size, align 4
  %20 = icmp eq i32 %19, %0
  %21 = select i1 %18, i1 %20, i1 false
  %22 = load i32, ptr getelementptr inbounds ([2 x i32], ptr @g_board_size, i64 0, i64 1), align 4
  %23 = icmp eq i32 %22, %1
  %24 = select i1 %21, i1 %23, i1 false
  store i32 %0, ptr @g_board_size, align 4, !tbaa !15
  store i32 %1, ptr getelementptr inbounds ([2 x i32], ptr @g_board_size, i64 0, i64 1), align 4, !tbaa !15
  br i1 %24, label %25, label %26

25:                                               ; preds = %16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) @g_board, i8 -1, i64 256, i1 false)
  br label %412

26:                                               ; preds = %16
  %27 = icmp eq ptr %17, null
  br i1 %27, label %28, label %228

28:                                               ; preds = %26
  %29 = tail call noalias dereferenceable_or_null(201326592) ptr @calloc(i64 noundef 8388608, i64 noundef 24) #40
  store ptr %29, ptr @g_trans_table, align 8, !tbaa !7
  tail call void @srandom(i32 noundef 1) #30
  br label %30

30:                                               ; preds = %40, %28
  %31 = phi i64 [ 1, %28 ], [ %41, %40 ]
  br label %32

32:                                               ; preds = %32, %30
  %33 = phi i64 [ 1, %30 ], [ %38, %32 ]
  %34 = tail call i64 @random() #30
  %35 = trunc i64 %34 to i32
  %36 = and i32 %35, 8388607
  %37 = getelementptr inbounds [32 x [32 x i32]], ptr @g_zobrist, i64 0, i64 %31, i64 %33
  store i32 %36, ptr %37, align 4, !tbaa !15
  %38 = add nuw nsw i64 %33, 1
  %39 = icmp eq i64 %38, 31
  br i1 %39, label %40, label %32, !llvm.loop !77

40:                                               ; preds = %32
  %41 = add nuw nsw i64 %31, 1
  %42 = icmp eq i64 %41, 31
  br i1 %42, label %43, label %30, !llvm.loop !78

43:                                               ; preds = %40
  store i32 0, ptr @countbits16, align 16, !tbaa !15
  br label %44

44:                                               ; preds = %44, %43
  %45 = phi i64 [ 1, %43 ], [ %54, %44 ]
  %46 = trunc i64 %45 to i32
  %47 = and i32 %46, 1
  %48 = lshr i64 %45, 1
  %49 = and i64 %48, 2147483647
  %50 = getelementptr inbounds [65536 x i32], ptr @countbits16, i64 0, i64 %49
  %51 = load i32, ptr %50, align 4, !tbaa !15
  %52 = add nsw i32 %47, %51
  %53 = getelementptr inbounds [65536 x i32], ptr @countbits16, i64 0, i64 %45
  store i32 %52, ptr %53, align 4, !tbaa !15
  %54 = add nuw nsw i64 %45, 1
  %55 = icmp eq i64 %54, 65536
  br i1 %55, label %56, label %44, !llvm.loop !79

56:                                               ; preds = %194, %44
  %57 = phi i64 [ %190, %194 ], [ 0, %44 ]
  %58 = phi <4 x i32> [ %195, %194 ], [ <i32 1, i32 2, i32 3, i32 4>, %44 ]
  %59 = insertelement <4 x i64> poison, i64 %57, i64 0
  %60 = shufflevector <4 x i64> %59, <4 x i64> poison, <4 x i32> zeroinitializer
  %61 = or <4 x i64> %60, <i64 0, i64 1, i64 2, i64 3>
  %62 = icmp ult <4 x i64> %61, <i64 65535, i64 65535, i64 65535, i64 65535>
  %63 = and <4 x i32> %58, <i32 1, i32 1, i32 1, i32 1>
  %64 = icmp eq <4 x i32> %63, zeroinitializer
  %65 = and <4 x i32> %58, <i32 2, i32 2, i32 2, i32 2>
  %66 = icmp eq <4 x i32> %65, zeroinitializer
  %67 = and <4 x i32> %58, <i32 4, i32 4, i32 4, i32 4>
  %68 = icmp eq <4 x i32> %67, zeroinitializer
  %69 = and <4 x i32> %58, <i32 8, i32 8, i32 8, i32 8>
  %70 = icmp eq <4 x i32> %69, zeroinitializer
  %71 = and <4 x i32> %58, <i32 16, i32 16, i32 16, i32 16>
  %72 = icmp eq <4 x i32> %71, zeroinitializer
  %73 = and <4 x i32> %58, <i32 32, i32 32, i32 32, i32 32>
  %74 = icmp eq <4 x i32> %73, zeroinitializer
  %75 = and <4 x i32> %58, <i32 64, i32 64, i32 64, i32 64>
  %76 = icmp eq <4 x i32> %75, zeroinitializer
  %77 = and <4 x i32> %58, <i32 128, i32 128, i32 128, i32 128>
  %78 = icmp eq <4 x i32> %77, zeroinitializer
  %79 = and <4 x i32> %58, <i32 256, i32 256, i32 256, i32 256>
  %80 = icmp eq <4 x i32> %79, zeroinitializer
  %81 = and <4 x i32> %58, <i32 512, i32 512, i32 512, i32 512>
  %82 = icmp eq <4 x i32> %81, zeroinitializer
  %83 = and <4 x i32> %58, <i32 1024, i32 1024, i32 1024, i32 1024>
  %84 = icmp eq <4 x i32> %83, zeroinitializer
  %85 = and <4 x i32> %58, <i32 2048, i32 2048, i32 2048, i32 2048>
  %86 = icmp eq <4 x i32> %85, zeroinitializer
  %87 = and <4 x i32> %58, <i32 4096, i32 4096, i32 4096, i32 4096>
  %88 = icmp eq <4 x i32> %87, zeroinitializer
  %89 = and <4 x i32> %58, <i32 8192, i32 8192, i32 8192, i32 8192>
  %90 = icmp eq <4 x i32> %89, zeroinitializer
  %91 = and <4 x i32> %58, <i32 16384, i32 16384, i32 16384, i32 16384>
  %92 = icmp eq <4 x i32> %91, zeroinitializer
  %93 = and <4 x i32> %58, <i32 32768, i32 32768, i32 32768, i32 32768>
  %94 = icmp ne <4 x i32> %93, zeroinitializer
  %95 = xor <4 x i1> %64, <i1 true, i1 true, i1 true, i1 true>
  %96 = select <4 x i1> %62, <4 x i1> %95, <4 x i1> zeroinitializer
  %97 = select <4 x i1> %62, <4 x i1> %64, <4 x i1> zeroinitializer
  %98 = xor <4 x i1> %66, <i1 true, i1 true, i1 true, i1 true>
  %99 = select <4 x i1> %97, <4 x i1> %98, <4 x i1> zeroinitializer
  %100 = select <4 x i1> %97, <4 x i1> %66, <4 x i1> zeroinitializer
  %101 = xor <4 x i1> %68, <i1 true, i1 true, i1 true, i1 true>
  %102 = select <4 x i1> %100, <4 x i1> %101, <4 x i1> zeroinitializer
  %103 = select <4 x i1> %100, <4 x i1> %68, <4 x i1> zeroinitializer
  %104 = xor <4 x i1> %70, <i1 true, i1 true, i1 true, i1 true>
  %105 = select <4 x i1> %103, <4 x i1> %104, <4 x i1> zeroinitializer
  %106 = select <4 x i1> %103, <4 x i1> %70, <4 x i1> zeroinitializer
  %107 = xor <4 x i1> %72, <i1 true, i1 true, i1 true, i1 true>
  %108 = select <4 x i1> %106, <4 x i1> %107, <4 x i1> zeroinitializer
  %109 = select <4 x i1> %106, <4 x i1> %72, <4 x i1> zeroinitializer
  %110 = xor <4 x i1> %74, <i1 true, i1 true, i1 true, i1 true>
  %111 = select <4 x i1> %109, <4 x i1> %110, <4 x i1> zeroinitializer
  %112 = select <4 x i1> %109, <4 x i1> %74, <4 x i1> zeroinitializer
  %113 = xor <4 x i1> %76, <i1 true, i1 true, i1 true, i1 true>
  %114 = select <4 x i1> %112, <4 x i1> %113, <4 x i1> zeroinitializer
  %115 = select <4 x i1> %112, <4 x i1> %76, <4 x i1> zeroinitializer
  %116 = xor <4 x i1> %78, <i1 true, i1 true, i1 true, i1 true>
  %117 = select <4 x i1> %115, <4 x i1> %116, <4 x i1> zeroinitializer
  %118 = select <4 x i1> %115, <4 x i1> %78, <4 x i1> zeroinitializer
  %119 = xor <4 x i1> %80, <i1 true, i1 true, i1 true, i1 true>
  %120 = select <4 x i1> %118, <4 x i1> %119, <4 x i1> zeroinitializer
  %121 = select <4 x i1> %118, <4 x i1> %80, <4 x i1> zeroinitializer
  %122 = xor <4 x i1> %82, <i1 true, i1 true, i1 true, i1 true>
  %123 = select <4 x i1> %121, <4 x i1> %122, <4 x i1> zeroinitializer
  %124 = select <4 x i1> %121, <4 x i1> %82, <4 x i1> zeroinitializer
  %125 = xor <4 x i1> %84, <i1 true, i1 true, i1 true, i1 true>
  %126 = select <4 x i1> %124, <4 x i1> %125, <4 x i1> zeroinitializer
  %127 = select <4 x i1> %124, <4 x i1> %84, <4 x i1> zeroinitializer
  %128 = xor <4 x i1> %86, <i1 true, i1 true, i1 true, i1 true>
  %129 = select <4 x i1> %127, <4 x i1> %128, <4 x i1> zeroinitializer
  %130 = select <4 x i1> %127, <4 x i1> %86, <4 x i1> zeroinitializer
  %131 = xor <4 x i1> %88, <i1 true, i1 true, i1 true, i1 true>
  %132 = select <4 x i1> %130, <4 x i1> %131, <4 x i1> zeroinitializer
  %133 = select <4 x i1> %130, <4 x i1> %88, <4 x i1> zeroinitializer
  %134 = xor <4 x i1> %90, <i1 true, i1 true, i1 true, i1 true>
  %135 = select <4 x i1> %133, <4 x i1> %134, <4 x i1> zeroinitializer
  %136 = select <4 x i1> %133, <4 x i1> %90, <4 x i1> zeroinitializer
  %137 = xor <4 x i1> %92, <i1 true, i1 true, i1 true, i1 true>
  %138 = select <4 x i1> %136, <4 x i1> %137, <4 x i1> zeroinitializer
  %139 = select <4 x i1> %136, <4 x i1> %92, <4 x i1> zeroinitializer
  %140 = select <4 x i1> %139, <4 x i1> %94, <4 x i1> zeroinitializer
  %141 = zext <4 x i1> %99 to <4 x i32>
  %142 = select <4 x i1> %102, <4 x i32> <i32 2, i32 2, i32 2, i32 2>, <4 x i32> %141
  %143 = select <4 x i1> %105, <4 x i32> <i32 3, i32 3, i32 3, i32 3>, <4 x i32> %142
  %144 = select <4 x i1> %108, <4 x i32> <i32 4, i32 4, i32 4, i32 4>, <4 x i32> %143
  %145 = select <4 x i1> %111, <4 x i32> <i32 5, i32 5, i32 5, i32 5>, <4 x i32> %144
  %146 = select <4 x i1> %114, <4 x i32> <i32 6, i32 6, i32 6, i32 6>, <4 x i32> %145
  %147 = select <4 x i1> %117, <4 x i32> <i32 7, i32 7, i32 7, i32 7>, <4 x i32> %146
  %148 = select <4 x i1> %120, <4 x i32> <i32 8, i32 8, i32 8, i32 8>, <4 x i32> %147
  %149 = select <4 x i1> %123, <4 x i32> <i32 9, i32 9, i32 9, i32 9>, <4 x i32> %148
  %150 = select <4 x i1> %126, <4 x i32> <i32 10, i32 10, i32 10, i32 10>, <4 x i32> %149
  %151 = select <4 x i1> %129, <4 x i32> <i32 11, i32 11, i32 11, i32 11>, <4 x i32> %150
  %152 = select <4 x i1> %132, <4 x i32> <i32 12, i32 12, i32 12, i32 12>, <4 x i32> %151
  %153 = select <4 x i1> %135, <4 x i32> <i32 13, i32 13, i32 13, i32 13>, <4 x i32> %152
  %154 = select <4 x i1> %138, <4 x i32> <i32 14, i32 14, i32 14, i32 14>, <4 x i32> %153
  %155 = select <4 x i1> %140, <4 x i32> <i32 15, i32 15, i32 15, i32 15>, <4 x i32> %154
  %156 = or <4 x i1> %99, %96
  %157 = or <4 x i1> %156, %102
  %158 = or <4 x i1> %157, %105
  %159 = or <4 x i1> %158, %108
  %160 = or <4 x i1> %159, %111
  %161 = or <4 x i1> %160, %114
  %162 = or <4 x i1> %161, %117
  %163 = or <4 x i1> %162, %120
  %164 = or <4 x i1> %163, %123
  %165 = or <4 x i1> %164, %126
  %166 = or <4 x i1> %165, %129
  %167 = or <4 x i1> %166, %132
  %168 = or <4 x i1> %167, %135
  %169 = or <4 x i1> %168, %138
  %170 = or <4 x i1> %169, %140
  %171 = extractelement <4 x i1> %170, i64 0
  br i1 %171, label %172, label %176

172:                                              ; preds = %56
  %173 = or i64 %57, 1
  %174 = getelementptr inbounds [65536 x i32], ptr @lastbit16, i64 0, i64 %173
  %175 = extractelement <4 x i32> %155, i64 0
  store i32 %175, ptr %174, align 4, !tbaa !15
  br label %176

176:                                              ; preds = %172, %56
  %177 = extractelement <4 x i1> %170, i64 1
  br i1 %177, label %178, label %182

178:                                              ; preds = %176
  %179 = or i64 %57, 2
  %180 = getelementptr inbounds [65536 x i32], ptr @lastbit16, i64 0, i64 %179
  %181 = extractelement <4 x i32> %155, i64 1
  store i32 %181, ptr %180, align 8, !tbaa !15
  br label %182

182:                                              ; preds = %178, %176
  %183 = extractelement <4 x i1> %170, i64 2
  br i1 %183, label %184, label %188

184:                                              ; preds = %182
  %185 = or i64 %57, 3
  %186 = getelementptr inbounds [65536 x i32], ptr @lastbit16, i64 0, i64 %185
  %187 = extractelement <4 x i32> %155, i64 2
  store i32 %187, ptr %186, align 4, !tbaa !15
  br label %188

188:                                              ; preds = %184, %182
  %189 = extractelement <4 x i1> %170, i64 3
  %190 = add nuw nsw i64 %57, 4
  br i1 %189, label %191, label %194

191:                                              ; preds = %188
  %192 = getelementptr inbounds [65536 x i32], ptr @lastbit16, i64 0, i64 %190
  %193 = extractelement <4 x i32> %155, i64 3
  store i32 %193, ptr %192, align 16, !tbaa !15
  br label %194

194:                                              ; preds = %191, %188
  %195 = add <4 x i32> %58, <i32 4, i32 4, i32 4, i32 4>
  %196 = icmp eq i64 %190, 65536
  br i1 %196, label %197, label %56, !llvm.loop !80

197:                                              ; preds = %194
  store i32 100, ptr @lastbit16, align 16, !tbaa !15
  br label %198

198:                                              ; preds = %215, %197
  %199 = phi i64 [ 0, %197 ], [ %223, %215 ]
  %200 = phi i32 [ 0, %197 ], [ %216, %215 ]
  %201 = icmp eq i64 %199, 0
  br i1 %201, label %215, label %202

202:                                              ; preds = %198
  %203 = trunc i64 %199 to i32
  br label %204

204:                                              ; preds = %204, %202
  %205 = phi i32 [ %213, %204 ], [ 0, %202 ]
  %206 = phi i32 [ %212, %204 ], [ %203, %202 ]
  %207 = sub i32 0, %206
  %208 = and i32 %206, %207
  %209 = shl i32 %208, 1
  %210 = or i32 %209, %208
  %211 = xor i32 %210, -1
  %212 = and i32 %206, %211
  %213 = add i32 %205, 1
  %214 = icmp eq i32 %212, 0
  br i1 %214, label %215, label %204, !llvm.loop !83

215:                                              ; preds = %204, %198
  %216 = phi i32 [ %200, %198 ], [ %208, %204 ]
  %217 = phi i32 [ 0, %198 ], [ %213, %204 ]
  %218 = and i32 %216, 32768
  %219 = icmp eq i32 %218, 0
  %220 = or i32 %217, -268435456
  %221 = select i1 %219, i32 %217, i32 %220
  %222 = getelementptr inbounds [65536 x i32], ptr @move_table16, i64 0, i64 %199
  store i32 %221, ptr %222, align 4, !tbaa !15
  %223 = add nuw nsw i64 %199, 1
  %224 = icmp eq i64 %223, 65536
  br i1 %224, label %225, label %198, !llvm.loop !84

225:                                              ; preds = %215
  %226 = load i32, ptr @g_board_size, align 4, !tbaa !15
  %227 = load i32, ptr getelementptr inbounds ([2 x i32], ptr @g_board_size, i64 0, i64 1), align 4, !tbaa !15
  br label %228

228:                                              ; preds = %225, %26
  %229 = phi i32 [ %227, %225 ], [ %1, %26 ]
  %230 = phi i32 [ %226, %225 ], [ %0, %26 ]
  br label %231

231:                                              ; preds = %250, %228
  %232 = phi i64 [ 0, %228 ], [ %251, %250 ]
  br label %240

233:                                              ; preds = %250
  %234 = icmp sgt i32 %230, 0
  br i1 %234, label %235, label %287

235:                                              ; preds = %233
  %236 = icmp sgt i32 %229, 0
  %237 = sext i32 %229 to i64
  %238 = zext i32 %230 to i64
  %239 = zext i32 %229 to i64
  br label %253

240:                                              ; preds = %240, %231
  %241 = phi i64 [ 0, %231 ], [ %248, %240 ]
  %242 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo.9]]], ptr @g_keyinfo, i64 0, i64 0, i64 %232, i64 %241
  %243 = getelementptr inbounds %struct.Basic_Info, ptr %242, i64 0, i32 1
  store i32 -1, ptr %243, align 4, !tbaa !35
  store i32 -1, ptr %242, align 16, !tbaa !33
  %244 = getelementptr inbounds %struct.Basic_Info, ptr %242, i64 0, i32 2
  store i32 0, ptr %244, align 8, !tbaa !37
  %245 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo.9]]], ptr @g_keyinfo, i64 0, i64 1, i64 %232, i64 %241
  %246 = getelementptr inbounds %struct.Basic_Info, ptr %245, i64 0, i32 1
  store i32 -1, ptr %246, align 4, !tbaa !35
  store i32 -1, ptr %245, align 16, !tbaa !33
  %247 = getelementptr inbounds %struct.Basic_Info, ptr %245, i64 0, i32 2
  store i32 0, ptr %247, align 8, !tbaa !37
  %248 = add nuw nsw i64 %241, 1
  %249 = icmp eq i64 %248, 32
  br i1 %249, label %250, label %240, !llvm.loop !85

250:                                              ; preds = %240
  %251 = add nuw nsw i64 %232, 1
  %252 = icmp eq i64 %251, 32
  br i1 %252, label %233, label %231, !llvm.loop !86

253:                                              ; preds = %284, %235
  %254 = phi i64 [ 0, %235 ], [ %285, %284 ]
  br i1 %236, label %257, label %255

255:                                              ; preds = %253
  %256 = add nuw nsw i64 %254, 1
  br label %284

257:                                              ; preds = %253
  %258 = trunc i64 %254 to i32
  %259 = mul nsw i32 %229, %258
  %260 = add nuw nsw i64 %254, 1
  %261 = icmp slt i64 %260, %238
  %262 = trunc i64 %260 to i32
  %263 = mul nsw i32 %229, %262
  br label %264

264:                                              ; preds = %282, %257
  %265 = phi i64 [ 0, %257 ], [ %266, %282 ]
  %266 = add nuw nsw i64 %265, 1
  %267 = icmp slt i64 %266, %237
  br i1 %267, label %268, label %275

268:                                              ; preds = %264
  %269 = trunc i64 %265 to i32
  %270 = add nsw i32 %259, %269
  %271 = getelementptr inbounds [32 x [32 x %struct.KeyInfo.9]], ptr @g_keyinfo, i64 0, i64 %260, i64 %266
  store i32 %270, ptr %271, align 16, !tbaa !54
  %272 = trunc i64 %266 to i32
  %273 = add nsw i32 %259, %272
  %274 = getelementptr inbounds %struct.Basic_Info, ptr %271, i64 0, i32 1
  store i32 %273, ptr %274, align 4, !tbaa !56
  br label %275

275:                                              ; preds = %268, %264
  br i1 %261, label %276, label %282

276:                                              ; preds = %275
  %277 = trunc i64 %265 to i32
  %278 = add nsw i32 %259, %277
  %279 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo.9]]], ptr @g_keyinfo, i64 0, i64 1, i64 %266, i64 %260
  store i32 %278, ptr %279, align 16, !tbaa !54
  %280 = add nsw i32 %263, %277
  %281 = getelementptr inbounds %struct.Basic_Info, ptr %279, i64 0, i32 1
  store i32 %280, ptr %281, align 4, !tbaa !56
  br label %282

282:                                              ; preds = %276, %275
  %283 = icmp eq i64 %266, %239
  br i1 %283, label %284, label %264, !llvm.loop !87

284:                                              ; preds = %282, %255
  %285 = phi i64 [ %256, %255 ], [ %260, %282 ]
  %286 = icmp eq i64 %285, %238
  br i1 %286, label %287, label %253, !llvm.loop !88

287:                                              ; preds = %284, %233
  br label %288

288:                                              ; preds = %407, %287
  %289 = phi i64 [ %408, %407 ], [ 0, %287 ]
  br label %290

290:                                              ; preds = %404, %288
  %291 = phi i64 [ 0, %288 ], [ %405, %404 ]
  br label %292

292:                                              ; preds = %395, %290
  %293 = phi i1 [ true, %290 ], [ false, %395 ]
  %294 = phi i64 [ 0, %290 ], [ 1, %395 ]
  %295 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo.9]]], ptr @g_keyinfo, i64 0, i64 %294, i64 %289, i64 %291
  %296 = load i32, ptr %295, align 16, !tbaa !33
  %297 = icmp eq i32 %296, -1
  br i1 %297, label %298, label %300

298:                                              ; preds = %292
  %299 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo.9]]], ptr @g_keyinfo, i64 0, i64 %294, i64 %289, i64 %291, i32 1, i32 1
  store <4 x i32> <i32 -1, i32 -1, i32 0, i32 -1>, ptr %295, align 16, !tbaa !15
  store <4 x i32> <i32 -1, i32 0, i32 -1, i32 -1>, ptr %299, align 16, !tbaa !15
  br label %395

300:                                              ; preds = %292
  %301 = sdiv i32 %296, %229
  %302 = srem i32 %296, %229
  %303 = getelementptr inbounds %struct.Basic_Info, ptr %295, i64 0, i32 1
  %304 = load i32, ptr %303, align 4, !tbaa !35
  %305 = sdiv i32 %304, %229
  %306 = srem i32 %304, %229
  %307 = mul nsw i32 %301, %229
  %308 = xor i32 %302, -1
  %309 = add i32 %229, %308
  %310 = add nsw i32 %309, %307
  %311 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo.9]]], ptr @g_keyinfo, i64 0, i64 %294, i64 %289, i64 %291, i32 1
  store i32 %310, ptr %311, align 4, !tbaa !60
  %312 = mul nsw i32 %305, %229
  %313 = xor i32 %306, -1
  %314 = add i32 %229, %313
  %315 = add nsw i32 %314, %312
  %316 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo.9]]], ptr @g_keyinfo, i64 0, i64 %294, i64 %289, i64 %291, i32 1, i32 1
  store i32 %315, ptr %316, align 16, !tbaa !61
  %317 = xor i32 %301, -1
  %318 = add i32 %230, %317
  %319 = mul nsw i32 %318, %229
  %320 = add nsw i32 %319, %302
  %321 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo.9]]], ptr @g_keyinfo, i64 0, i64 %294, i64 %289, i64 %291, i32 2
  store i32 %320, ptr %321, align 8, !tbaa !63
  %322 = xor i32 %305, -1
  %323 = add i32 %230, %322
  %324 = mul nsw i32 %323, %229
  %325 = add nsw i32 %324, %306
  %326 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo.9]]], ptr @g_keyinfo, i64 0, i64 %294, i64 %289, i64 %291, i32 2, i32 1
  store i32 %325, ptr %326, align 4, !tbaa !64
  %327 = add nsw i32 %319, %309
  %328 = add nsw i32 %324, %314
  %329 = add nsw i32 %301, 1
  %330 = sext i32 %329 to i64
  %331 = add nsw i32 %302, 1
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds [32 x [32 x i32]], ptr @g_zobrist, i64 0, i64 %330, i64 %332
  %334 = load i32, ptr %333, align 4, !tbaa !15
  %335 = add nsw i32 %305, 1
  %336 = sext i32 %335 to i64
  %337 = add nsw i32 %306, 1
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds [32 x [32 x i32]], ptr @g_zobrist, i64 0, i64 %336, i64 %338
  %340 = load i32, ptr %339, align 4, !tbaa !15
  %341 = xor i32 %340, %334
  %342 = getelementptr inbounds %struct.Basic_Info, ptr %295, i64 0, i32 2
  store i32 %341, ptr %342, align 8, !tbaa !37
  %343 = sdiv i32 %310, %229
  %344 = srem i32 %310, %229
  %345 = add nsw i32 %343, 1
  %346 = sext i32 %345 to i64
  %347 = add nsw i32 %344, 1
  %348 = sext i32 %347 to i64
  %349 = getelementptr inbounds [32 x [32 x i32]], ptr @g_zobrist, i64 0, i64 %346, i64 %348
  %350 = load i32, ptr %349, align 4, !tbaa !15
  %351 = sdiv i32 %315, %229
  %352 = srem i32 %315, %229
  %353 = add nsw i32 %351, 1
  %354 = sext i32 %353 to i64
  %355 = add nsw i32 %352, 1
  %356 = sext i32 %355 to i64
  %357 = getelementptr inbounds [32 x [32 x i32]], ptr @g_zobrist, i64 0, i64 %354, i64 %356
  %358 = load i32, ptr %357, align 4, !tbaa !15
  %359 = xor i32 %358, %350
  %360 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo.9]]], ptr @g_keyinfo, i64 0, i64 %294, i64 %289, i64 %291, i32 1, i32 2
  store i32 %359, ptr %360, align 4, !tbaa !37
  %361 = sdiv i32 %320, %229
  %362 = srem i32 %320, %229
  %363 = add nsw i32 %361, 1
  %364 = sext i32 %363 to i64
  %365 = add nsw i32 %362, 1
  %366 = sext i32 %365 to i64
  %367 = getelementptr inbounds [32 x [32 x i32]], ptr @g_zobrist, i64 0, i64 %364, i64 %366
  %368 = load i32, ptr %367, align 4, !tbaa !15
  %369 = sdiv i32 %325, %229
  %370 = srem i32 %325, %229
  %371 = add nsw i32 %369, 1
  %372 = sext i32 %371 to i64
  %373 = add nsw i32 %370, 1
  %374 = sext i32 %373 to i64
  %375 = getelementptr inbounds [32 x [32 x i32]], ptr @g_zobrist, i64 0, i64 %372, i64 %374
  %376 = load i32, ptr %375, align 4, !tbaa !15
  %377 = xor i32 %376, %368
  %378 = sdiv i32 %327, %229
  %379 = srem i32 %327, %229
  %380 = add nsw i32 %378, 1
  %381 = sext i32 %380 to i64
  %382 = add nsw i32 %379, 1
  %383 = sext i32 %382 to i64
  %384 = getelementptr inbounds [32 x [32 x i32]], ptr @g_zobrist, i64 0, i64 %381, i64 %383
  %385 = load i32, ptr %384, align 4, !tbaa !15
  %386 = sdiv i32 %328, %229
  %387 = srem i32 %328, %229
  %388 = add nsw i32 %386, 1
  %389 = sext i32 %388 to i64
  %390 = add nsw i32 %387, 1
  %391 = sext i32 %390 to i64
  %392 = getelementptr inbounds [32 x [32 x i32]], ptr @g_zobrist, i64 0, i64 %389, i64 %391
  %393 = load i32, ptr %392, align 4, !tbaa !15
  %394 = xor i32 %393, %385
  br label %395

395:                                              ; preds = %300, %298
  %396 = phi i32 [ 0, %298 ], [ %377, %300 ]
  %397 = phi i32 [ -1, %298 ], [ %328, %300 ]
  %398 = phi i32 [ -1, %298 ], [ %327, %300 ]
  %399 = phi i32 [ 0, %298 ], [ %394, %300 ]
  %400 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo.9]]], ptr @g_keyinfo, i64 0, i64 %294, i64 %289, i64 %291, i32 2, i32 2
  store i32 %396, ptr %400, align 16
  %401 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo.9]]], ptr @g_keyinfo, i64 0, i64 %294, i64 %289, i64 %291, i32 3, i32 1
  store i32 %397, ptr %401, align 8
  %402 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo.9]]], ptr @g_keyinfo, i64 0, i64 %294, i64 %289, i64 %291, i32 3
  store i32 %398, ptr %402, align 4
  %403 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo.9]]], ptr @g_keyinfo, i64 0, i64 %294, i64 %289, i64 %291, i32 3, i32 2
  store i32 %399, ptr %403, align 4
  br i1 %293, label %292, label %404, !llvm.loop !89

404:                                              ; preds = %395
  %405 = add nuw nsw i64 %291, 1
  %406 = icmp eq i64 %405, 32
  br i1 %406, label %407, label %290, !llvm.loop !90

407:                                              ; preds = %404
  %408 = add nuw nsw i64 %289, 1
  %409 = icmp eq i64 %408, 32
  br i1 %409, label %410, label %288, !llvm.loop !91

410:                                              ; preds = %407
  %411 = icmp sgt i32 %0, 0
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) @g_board, i8 -1, i64 256, i1 false)
  br i1 %411, label %412, label %499

412:                                              ; preds = %410, %25
  %413 = icmp sgt i32 %1, 0
  %414 = zext i32 %0 to i64
  %415 = zext i32 %1 to i64
  br label %416

416:                                              ; preds = %441, %412
  %417 = phi i64 [ 0, %412 ], [ %418, %441 ]
  %418 = add nuw nsw i64 %417, 1
  br i1 %413, label %419, label %441

419:                                              ; preds = %416
  %420 = getelementptr inbounds [32 x i32], ptr @g_board, i64 0, i64 %418
  %421 = trunc i64 %417 to i32
  %422 = shl i32 2, %421
  %423 = xor i32 %422, -1
  br label %424

424:                                              ; preds = %439, %419
  %425 = phi i64 [ 0, %419 ], [ %429, %439 ]
  %426 = getelementptr inbounds [30 x i32], ptr %2, i64 %417, i64 %425
  %427 = load i32, ptr %426, align 4, !tbaa !15
  %428 = icmp eq i32 %427, 0
  %429 = add nuw nsw i64 %425, 1
  br i1 %428, label %430, label %439

430:                                              ; preds = %424
  %431 = trunc i64 %425 to i32
  %432 = shl i32 2, %431
  %433 = xor i32 %432, -1
  %434 = load i32, ptr %420, align 4, !tbaa !15
  %435 = and i32 %434, %433
  store i32 %435, ptr %420, align 4, !tbaa !15
  %436 = getelementptr inbounds [2 x [32 x i32]], ptr @g_board, i64 0, i64 1, i64 %429
  %437 = load i32, ptr %436, align 4, !tbaa !15
  %438 = and i32 %437, %423
  store i32 %438, ptr %436, align 4, !tbaa !15
  br label %439

439:                                              ; preds = %430, %424
  %440 = icmp eq i64 %429, %415
  br i1 %440, label %441, label %424, !llvm.loop !92

441:                                              ; preds = %439, %416
  %442 = icmp eq i64 %418, %414
  br i1 %442, label %443, label %416, !llvm.loop !93

443:                                              ; preds = %441
  tail call fastcc void @init__real_count(i32 noundef 1) #31
  tail call fastcc void @init__real_count(i32 noundef 0) #31
  tail call fastcc void @init__safe_count(i32 noundef 1) #31
  tail call fastcc void @init__safe_count(i32 noundef 0) #31
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @g_norm_hashkey, i8 0, i64 16, i1 false), !tbaa !15
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @g_flipV_hashkey, i8 0, i64 16, i1 false), !tbaa !15
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @g_flipH_hashkey, i8 0, i64 16, i1 false), !tbaa !15
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @g_flipVH_hashkey, i8 0, i64 16, i1 false), !tbaa !15
  br label %444

444:                                              ; preds = %496, %443
  %445 = phi i64 [ 0, %443 ], [ %497, %496 ]
  br i1 %413, label %446, label %496

446:                                              ; preds = %444
  %447 = trunc i64 %445 to i32
  %448 = mul nsw i32 %447, %1
  %449 = xor i32 %447, -1
  %450 = add i32 %449, %0
  %451 = mul nsw i32 %450, %1
  br label %452

452:                                              ; preds = %493, %446
  %453 = phi i64 [ 0, %446 ], [ %494, %493 ]
  %454 = getelementptr inbounds [30 x i32], ptr %2, i64 %445, i64 %453
  %455 = load i32, ptr %454, align 4, !tbaa !15
  %456 = icmp eq i32 %455, 0
  br i1 %456, label %493, label %457

457:                                              ; preds = %452
  %458 = trunc i64 %453 to i32
  %459 = add nsw i32 %448, %458
  %460 = and i32 %459, 31
  %461 = shl nuw i32 1, %460
  %462 = sdiv i32 %459, 32
  %463 = sext i32 %462 to i64
  %464 = getelementptr inbounds [4 x i32], ptr @g_norm_hashkey, i64 0, i64 %463
  %465 = load i32, ptr %464, align 4, !tbaa !15
  %466 = or i32 %465, %461
  store i32 %466, ptr %464, align 4, !tbaa !15
  %467 = xor i32 %458, -1
  %468 = add i32 %467, %1
  %469 = add nsw i32 %468, %448
  %470 = and i32 %469, 31
  %471 = shl nuw i32 1, %470
  %472 = sdiv i32 %469, 32
  %473 = sext i32 %472 to i64
  %474 = getelementptr inbounds [4 x i32], ptr @g_flipV_hashkey, i64 0, i64 %473
  %475 = load i32, ptr %474, align 4, !tbaa !15
  %476 = or i32 %475, %471
  store i32 %476, ptr %474, align 4, !tbaa !15
  %477 = add nsw i32 %451, %458
  %478 = and i32 %477, 31
  %479 = shl nuw i32 1, %478
  %480 = sdiv i32 %477, 32
  %481 = sext i32 %480 to i64
  %482 = getelementptr inbounds [4 x i32], ptr @g_flipH_hashkey, i64 0, i64 %481
  %483 = load i32, ptr %482, align 4, !tbaa !15
  %484 = or i32 %483, %479
  store i32 %484, ptr %482, align 4, !tbaa !15
  %485 = add nsw i32 %468, %451
  %486 = and i32 %485, 31
  %487 = shl nuw i32 1, %486
  %488 = sdiv i32 %485, 32
  %489 = sext i32 %488 to i64
  %490 = getelementptr inbounds [4 x i32], ptr @g_flipVH_hashkey, i64 0, i64 %489
  %491 = load i32, ptr %490, align 4, !tbaa !15
  %492 = or i32 %491, %487
  store i32 %492, ptr %490, align 4, !tbaa !15
  br label %493

493:                                              ; preds = %457, %452
  %494 = add nuw nsw i64 %453, 1
  %495 = icmp eq i64 %494, %415
  br i1 %495, label %496, label %452, !llvm.loop !94

496:                                              ; preds = %493, %444
  %497 = add nuw nsw i64 %445, 1
  %498 = icmp eq i64 %497, %414
  br i1 %498, label %500, label %444, !llvm.loop !95

499:                                              ; preds = %410
  tail call fastcc void @init__real_count(i32 noundef 1) #31
  tail call fastcc void @init__real_count(i32 noundef 0) #31
  tail call fastcc void @init__safe_count(i32 noundef 1) #31
  tail call fastcc void @init__safe_count(i32 noundef 0) #31
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @g_norm_hashkey, i8 0, i64 16, i1 false), !tbaa !15
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @g_flipV_hashkey, i8 0, i64 16, i1 false), !tbaa !15
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @g_flipH_hashkey, i8 0, i64 16, i1 false), !tbaa !15
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @g_flipVH_hashkey, i8 0, i64 16, i1 false), !tbaa !15
  br label %500

500:                                              ; preds = %499, %496
  tail call fastcc void @init_hashkey_code(ptr noundef nonnull @g_norm_hashkey) #31
  tail call fastcc void @init_hashkey_code(ptr noundef nonnull @g_flipV_hashkey) #31
  tail call fastcc void @init_hashkey_code(ptr noundef nonnull @g_flipH_hashkey) #31
  tail call fastcc void @init_hashkey_code(ptr noundef nonnull @g_flipVH_hashkey) #31
  %501 = load i32, ptr @g_board_size, align 4, !tbaa !15
  %502 = load i32, ptr getelementptr inbounds ([2 x i32], ptr @g_board_size, i64 0, i64 1), align 4, !tbaa !15
  %503 = icmp sgt i32 %501, 0
  br i1 %503, label %504, label %525

504:                                              ; preds = %500
  %505 = icmp sgt i32 %502, 0
  %506 = zext i32 %501 to i64
  br label %507

507:                                              ; preds = %522, %504
  %508 = phi i64 [ 0, %504 ], [ %509, %522 ]
  %509 = add nuw nsw i64 %508, 1
  br i1 %505, label %510, label %522

510:                                              ; preds = %507
  %511 = getelementptr inbounds [2 x [32 x i32]], ptr @g_board, i64 0, i64 0, i64 %509
  br label %512

512:                                              ; preds = %512, %510
  %513 = phi i32 [ 0, %510 ], [ %515, %512 ]
  %514 = load i32, ptr %511, align 4, !tbaa !15
  %515 = add nuw nsw i32 %513, 1
  %516 = shl i32 2, %513
  %517 = and i32 %514, %516
  %518 = icmp eq i32 %517, 0
  %519 = select i1 %518, ptr @.str.6, ptr @.str.5
  %520 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) %519) #31
  %521 = icmp eq i32 %515, %502
  br i1 %521, label %522, label %512, !llvm.loop !96

522:                                              ; preds = %512, %507
  %523 = tail call i32 @putchar(i32 10)
  %524 = icmp eq i64 %509, %506
  br i1 %524, label %525, label %507, !llvm.loop !97

525:                                              ; preds = %522, %500
  %526 = tail call i32 @putchar(i32 10)
  call void @llvm.lifetime.start.p0(i64 2560, ptr nonnull %4) #34
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #34
  store i8 0, ptr %5, align 1
  %527 = load i32, ptr @g_board_size, align 4, !tbaa !15
  %528 = load i32, ptr getelementptr inbounds ([2 x i32], ptr @g_board_size, i64 0, i64 1), align 4, !tbaa !15
  %529 = tail call i32 @llvm.smax.i32(i32 %527, i32 %528)
  %530 = getelementptr inbounds [32 x [80 x i8]], ptr %4, i64 0, i64 1
  %531 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %530, ptr noundef nonnull dereferenceable(1) @.str.8, i32 noundef %527) #30
  %532 = getelementptr inbounds [32 x [80 x i8]], ptr %4, i64 0, i64 2
  %533 = load i32, ptr getelementptr inbounds ([2 x i32], ptr @g_board_size, i64 0, i64 1), align 4, !tbaa !15
  %534 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %532, ptr noundef nonnull dereferenceable(1) @.str.9, i32 noundef %533) #30
  %535 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, ptr noundef nonnull %5, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12) #31
  %536 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, ptr noundef nonnull %5, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15) #31
  %537 = icmp sgt i32 %529, 0
  br i1 %537, label %538, label %557

538:                                              ; preds = %525
  %539 = zext i32 %529 to i64
  br label %540

540:                                              ; preds = %540, %538
  %541 = phi i64 [ 0, %538 ], [ %542, %540 ]
  %542 = add nuw nsw i64 %541, 1
  %543 = getelementptr inbounds [2 x [32 x %struct.Basic_Info]], ptr @g_info, i64 0, i64 1, i64 %542
  %544 = getelementptr inbounds [2 x [32 x %struct.Basic_Info]], ptr @g_info, i64 0, i64 1, i64 %542, i32 1
  %545 = load i32, ptr %544, align 4, !tbaa !35
  %546 = load i32, ptr %543, align 4, !tbaa !33
  %547 = getelementptr inbounds [32 x %struct.Basic_Info], ptr @g_info, i64 0, i64 %542
  %548 = getelementptr inbounds [32 x %struct.Basic_Info], ptr @g_info, i64 0, i64 %542, i32 1
  %549 = load i32, ptr %548, align 4, !tbaa !35
  %550 = load i32, ptr %547, align 4, !tbaa !33
  %551 = icmp ult i64 %541, 2
  %552 = getelementptr inbounds [32 x [80 x i8]], ptr %4, i64 0, i64 %542
  %553 = select i1 %551, ptr %552, ptr %5
  %554 = trunc i64 %542 to i32
  %555 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, i32 noundef %554, i32 noundef %545, i32 noundef %546, i32 noundef %549, i32 noundef %550, ptr noundef nonnull %553) #31
  %556 = icmp eq i64 %542, %539
  br i1 %556, label %557, label %540, !llvm.loop !98

557:                                              ; preds = %540, %525
  %558 = load i32, ptr getelementptr inbounds ([2 x %struct.Basic_Info], ptr @g_info_totals, i64 0, i64 1, i32 1), align 16, !tbaa !35
  %559 = load i32, ptr getelementptr inbounds ([2 x %struct.Basic_Info], ptr @g_info_totals, i64 0, i64 1), align 4, !tbaa !33
  %560 = load i32, ptr getelementptr inbounds ([2 x %struct.Basic_Info], ptr @g_info_totals, i64 0, i64 0, i32 1), align 4, !tbaa !35
  %561 = load i32, ptr @g_info_totals, align 16, !tbaa !33
  %562 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, i32 noundef %558, i32 noundef %559, i32 noundef %560, i32 noundef %561) #31
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #34
  call void @llvm.lifetime.end.p0(i64 2560, ptr nonnull %4) #34
  tail call fastcc void @check_hash_code_sanity() #30
  ret void
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nounwind optsize
declare i32 @sigfillset(ptr noundef) local_unnamed_addr #1

; Function Attrs: noreturn nounwind optsize uwtable
define internal void @stop_alrm_handler(i32 %0) #7 {
  tail call void @exit(i32 noundef 0) #32
  unreachable
}

; Function Attrs: nounwind optsize
declare i32 @sigaction(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind optsize willreturn
declare noundef i32 @setitimer(i32 noundef, ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nounwind optsize willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #13

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare ptr @__ctype_toupper_loc() local_unnamed_addr #14

; Function Attrs: mustprogress nofree nounwind optsize willreturn
declare ptr @strtok(ptr noundef, ptr nocapture noundef readonly) local_unnamed_addr #11

; Function Attrs: nounwind optsize uwtable
define internal void @sig_int_handler(i32 %0) #0 {
  %2 = load ptr, ptr @current_search_state.str, align 8, !tbaa !7
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #30
  br label %5

5:                                                ; preds = %4, %1
  %6 = load i64, ptr @g_num_nodes, align 8, !tbaa !11
  tail call fastcc void @u64bit_to_string(i64 noundef %6) #30
  %7 = load i32, ptr getelementptr inbounds ([128 x i32], ptr @g_move_number, i64 0, i64 1), align 4, !tbaa !15
  %8 = load i32, ptr getelementptr inbounds ([128 x i32], ptr @g_move_number, i64 0, i64 2), align 8, !tbaa !15
  %9 = load i32, ptr getelementptr inbounds ([128 x i32], ptr @g_move_number, i64 0, i64 3), align 4, !tbaa !15
  %10 = load i32, ptr getelementptr inbounds ([128 x i32], ptr @g_move_number, i64 0, i64 4), align 16, !tbaa !15
  %11 = load i32, ptr getelementptr inbounds ([128 x i32], ptr @g_move_number, i64 0, i64 5), align 4, !tbaa !15
  %12 = load i32, ptr getelementptr inbounds ([128 x i32], ptr @g_move_number, i64 0, i64 6), align 8, !tbaa !15
  %13 = load i32, ptr getelementptr inbounds ([128 x i32], ptr @g_move_number, i64 0, i64 7), align 4, !tbaa !15
  %14 = load i32, ptr getelementptr inbounds ([128 x i32], ptr @g_move_number, i64 0, i64 8), align 16, !tbaa !15
  %15 = load i32, ptr getelementptr inbounds ([128 x i32], ptr @g_move_number, i64 0, i64 9), align 4, !tbaa !15
  %16 = tail call i32 (ptr, ptr, ...) @asprintf(ptr noundef nonnull @current_search_state.str, ptr noundef nonnull @.str.27, ptr noundef nonnull @u64bit_to_string.big_num, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, i32 noundef %11, i32 noundef %12, i32 noundef %13, i32 noundef %14, i32 noundef %15) #30
  %17 = load ptr, ptr @current_search_state.str, align 8, !tbaa !7
  %18 = load ptr, ptr @stderr, align 8, !tbaa !7
  %19 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %18, ptr noundef nonnull @.str.21.75, ptr noundef %17) #37
  %20 = load ptr, ptr @stderr, align 8, !tbaa !7
  %21 = tail call i32 @fflush(ptr noundef %20) #31
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @score_and_get_first(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i64 %3) unnamed_addr #0 {
  %5 = alloca %struct.Basic_Info, align 4
  %6 = trunc i64 %3 to i32
  %7 = lshr i64 %3, 32
  %8 = trunc i64 %7 to i32
  %9 = icmp eq i32 %6, -1
  %10 = icmp sgt i32 %1, 0
  br i1 %9, label %14, label %11

11:                                               ; preds = %4
  br i1 %10, label %12, label %57

12:                                               ; preds = %11
  %13 = zext i32 %1 to i64
  br label %17

14:                                               ; preds = %4
  br i1 %10, label %15, label %57

15:                                               ; preds = %14
  %16 = zext i32 %1 to i64
  br label %38

17:                                               ; preds = %34, %12
  %18 = phi i64 [ 0, %12 ], [ %36, %34 ]
  %19 = phi i32 [ -1, %12 ], [ %35, %34 ]
  %20 = getelementptr inbounds %struct.Basic_Info, ptr %0, i64 %18
  %21 = load i32, ptr %20, align 4, !tbaa !33
  %22 = icmp eq i32 %21, %6
  br i1 %22, label %23, label %30

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.Basic_Info, ptr %0, i64 %18, i32 1
  %25 = load i32, ptr %24, align 4, !tbaa !35
  %26 = icmp eq i32 %25, %8
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.Basic_Info, ptr %0, i64 %18, i32 2
  store i32 450000, ptr %28, align 4, !tbaa !37
  %29 = trunc i64 %18 to i32
  br label %34

30:                                               ; preds = %23, %17
  %31 = load i64, ptr %20, align 4
  %32 = tail call fastcc i32 @score_move(i64 %31, i32 noundef %2) #31
  %33 = getelementptr inbounds %struct.Basic_Info, ptr %0, i64 %18, i32 2
  store i32 %32, ptr %33, align 4, !tbaa !37
  br label %34

34:                                               ; preds = %30, %27
  %35 = phi i32 [ %29, %27 ], [ %19, %30 ]
  %36 = add nuw nsw i64 %18, 1
  %37 = icmp eq i64 %36, %13
  br i1 %37, label %52, label %17, !llvm.loop !99

38:                                               ; preds = %38, %15
  %39 = phi i64 [ 0, %15 ], [ %50, %38 ]
  %40 = phi i32 [ -50000, %15 ], [ %49, %38 ]
  %41 = phi i32 [ -1, %15 ], [ %48, %38 ]
  %42 = getelementptr inbounds %struct.Basic_Info, ptr %0, i64 %39
  %43 = load i64, ptr %42, align 4
  %44 = tail call fastcc i32 @score_move(i64 %43, i32 noundef %2) #31
  %45 = getelementptr inbounds %struct.Basic_Info, ptr %0, i64 %39, i32 2
  store i32 %44, ptr %45, align 4, !tbaa !37
  %46 = icmp sgt i32 %44, %40
  %47 = trunc i64 %39 to i32
  %48 = select i1 %46, i32 %47, i32 %41
  %49 = tail call i32 @llvm.smax.i32(i32 %44, i32 %40)
  %50 = add nuw nsw i64 %39, 1
  %51 = icmp eq i64 %50, %16
  br i1 %51, label %52, label %38, !llvm.loop !100

52:                                               ; preds = %38, %34
  %53 = phi i32 [ %48, %38 ], [ %35, %34 ]
  %54 = icmp eq i32 %53, -1
  br i1 %54, label %58, label %55

55:                                               ; preds = %52
  %56 = icmp sgt i32 %1, 1
  br i1 %56, label %59, label %73

57:                                               ; preds = %14, %11
  tail call void (ptr, i32, i32, ptr, ...) @_fatal_error_aux(ptr noundef nonnull @.str.96, i32 noundef 180, i32 poison, ptr noundef nonnull @.str.1.97) #30
  unreachable

58:                                               ; preds = %52
  tail call void (ptr, i32, i32, ptr, ...) @_fatal_error_aux(ptr noundef nonnull @.str.96, i32 noundef 180, i32 poison, ptr noundef nonnull @.str.1.97) #30
  unreachable

59:                                               ; preds = %55
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5)
  %60 = sext i32 %53 to i64
  %61 = getelementptr inbounds %struct.Basic_Info, ptr %0, i64 %60
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %5, ptr noundef nonnull align 4 dereferenceable(12) %61, i64 12, i1 false), !tbaa.struct !70
  %62 = icmp sgt i32 %53, 0
  br i1 %62, label %63, label %72

63:                                               ; preds = %59
  %64 = zext i32 %53 to i64
  br label %65

65:                                               ; preds = %65, %63
  %66 = phi i64 [ %64, %63 ], [ %68, %65 ]
  %67 = getelementptr inbounds %struct.Basic_Info, ptr %0, i64 %66
  %68 = add nsw i64 %66, -1
  %69 = and i64 %68, 4294967295
  %70 = getelementptr inbounds %struct.Basic_Info, ptr %0, i64 %69
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %67, ptr noundef nonnull align 4 dereferenceable(12) %70, i64 12, i1 false), !tbaa.struct !70
  %71 = icmp ugt i64 %66, 1
  br i1 %71, label %65, label %72, !llvm.loop !101

72:                                               ; preds = %65, %59
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %0, ptr noundef nonnull align 4 dereferenceable(12) %5, i64 12, i1 false), !tbaa.struct !70
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5)
  br label %73

73:                                               ; preds = %72, %55
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @sort_moves(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca [128 x [256 x %struct.Basic_Info]], align 16
  %4 = alloca [128 x i32], align 16
  %5 = alloca [128 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 393216, ptr nonnull %3) #34
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %4) #34
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %5) #34
  %6 = icmp sgt i32 %1, 1
  br i1 %6, label %7, label %17

7:                                                ; preds = %2
  %8 = zext i32 %1 to i64
  br label %9

9:                                                ; preds = %54, %7
  %10 = phi i64 [ %56, %54 ], [ 1, %7 ]
  %11 = phi i32 [ %55, %54 ], [ 0, %7 ]
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %39

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.Basic_Info, ptr %0, i64 %10, i32 2
  %15 = load i32, ptr %14, align 4, !tbaa !37
  %16 = zext i32 %11 to i64
  br label %23

17:                                               ; preds = %54, %2
  %18 = phi i32 [ 0, %2 ], [ %55, %54 ]
  %19 = icmp eq i32 %1, 1
  br i1 %19, label %112, label %20

20:                                               ; preds = %17
  %21 = icmp sgt i32 %18, 1
  %22 = zext i32 %18 to i64
  br label %58

23:                                               ; preds = %36, %13
  %24 = phi i64 [ 0, %13 ], [ %37, %36 ]
  %25 = getelementptr inbounds [128 x i32], ptr %4, i64 0, i64 %24
  %26 = load i32, ptr %25, align 4, !tbaa !15
  %27 = icmp eq i32 %15, %26
  br i1 %27, label %28, label %36

28:                                               ; preds = %23
  %.lcssa2 = phi i64 [ %24, %23 ]
  %29 = trunc i64 %.lcssa2 to i32
  %30 = getelementptr inbounds %struct.Basic_Info, ptr %0, i64 %10
  %31 = getelementptr inbounds [128 x i32], ptr %5, i64 0, i64 %.lcssa2
  %32 = load i32, ptr %31, align 4, !tbaa !15
  %33 = add nsw i32 %32, 1
  store i32 %33, ptr %31, align 4, !tbaa !15
  %34 = sext i32 %32 to i64
  %35 = getelementptr inbounds [128 x [256 x %struct.Basic_Info]], ptr %3, i64 0, i64 %.lcssa2, i64 %34
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %35, ptr noundef nonnull align 4 dereferenceable(12) %30, i64 12, i1 false), !tbaa.struct !70
  br label %39

36:                                               ; preds = %23
  %37 = add nuw nsw i64 %24, 1
  %38 = icmp eq i64 %37, %16
  br i1 %38, label %42, label %23, !llvm.loop !102

39:                                               ; preds = %28, %9
  %40 = phi i32 [ %29, %28 ], [ 0, %9 ]
  %41 = icmp eq i32 %40, %11
  br i1 %41, label %42, label %54

42:                                               ; preds = %39, %36
  %43 = icmp eq i32 %11, 128
  br i1 %43, label %44, label %45

44:                                               ; preds = %42
  tail call void (ptr, i32, i32, ptr, ...) @_fatal_error_aux(ptr noundef nonnull @.str.24, i32 noundef 34, i32 poison, ptr noundef nonnull @.str.1.25) #30
  unreachable

45:                                               ; preds = %42
  %46 = zext i32 %11 to i64
  %47 = getelementptr inbounds [128 x [256 x %struct.Basic_Info]], ptr %3, i64 0, i64 %46
  %48 = getelementptr inbounds %struct.Basic_Info, ptr %0, i64 %10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %47, ptr noundef nonnull align 4 dereferenceable(12) %48, i64 12, i1 false), !tbaa.struct !70
  %49 = getelementptr inbounds %struct.Basic_Info, ptr %0, i64 %10, i32 2
  %50 = load i32, ptr %49, align 4, !tbaa !37
  %51 = getelementptr inbounds [128 x i32], ptr %4, i64 0, i64 %46
  store i32 %50, ptr %51, align 4, !tbaa !15
  %52 = getelementptr inbounds [128 x i32], ptr %5, i64 0, i64 %46
  store i32 1, ptr %52, align 4, !tbaa !15
  %53 = add nsw i32 %11, 1
  br label %54

54:                                               ; preds = %45, %39
  %55 = phi i32 [ %53, %45 ], [ %11, %39 ]
  %56 = add nuw nsw i64 %10, 1
  %57 = icmp eq i64 %56, %8
  br i1 %57, label %17, label %9, !llvm.loop !103

58:                                               ; preds = %89, %20
  %59 = phi i64 [ 1, %20 ], [ %96, %89 ]
  br i1 %21, label %60, label %62

60:                                               ; preds = %58
  %61 = load i32, ptr %4, align 16, !tbaa !15
  br label %100

62:                                               ; preds = %100, %58
  %63 = phi i32 [ 0, %58 ], [ %109, %100 ]
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [128 x i32], ptr %5, i64 0, i64 %64
  %66 = load i32, ptr %65, align 4, !tbaa !15
  %67 = shl i64 %59, 32
  %68 = ashr exact i64 %67, 32
  %69 = mul nsw i64 %68, 12
  %70 = getelementptr i8, ptr %0, i64 %69
  %71 = mul nsw i64 %64, 3072
  %72 = getelementptr i8, ptr %3, i64 %71
  %73 = tail call i32 @llvm.smax.i32(i32 %66, i32 1)
  %74 = zext i32 %73 to i64
  %75 = mul nuw nsw i64 %74, 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %70, ptr noundef nonnull align 16 dereferenceable(1) %72, i64 %75, i1 false)
  %76 = add nuw nsw i64 %74, 1
  %77 = and i64 %76, 4294967294
  %78 = add nsw i64 %74, -1
  %79 = insertelement <2 x i64> poison, i64 %78, i64 0
  %80 = insertelement <2 x i64> <i64 poison, i64 0>, i64 %68, i64 0
  %81 = add nsw i64 %74, -1
  %82 = and i64 %81, -2
  br label %83

83:                                               ; preds = %83, %62
  %84 = phi i64 [ 0, %62 ], [ %87, %83 ]
  %85 = phi <2 x i64> [ %80, %62 ], [ %86, %83 ]
  %86 = add <2 x i64> %85, <i64 1, i64 1>
  %87 = add nuw nsw i64 %84, 2
  %88 = icmp eq i64 %87, %77
  br i1 %88, label %89, label %83, !llvm.loop !104

89:                                               ; preds = %83
  %.lcssa1 = phi <2 x i64> [ %85, %83 ]
  %.lcssa = phi <2 x i64> [ %86, %83 ]
  %90 = shufflevector <2 x i64> %79, <2 x i64> poison, <2 x i32> zeroinitializer
  %91 = insertelement <2 x i64> poison, i64 %82, i64 0
  %92 = shufflevector <2 x i64> %91, <2 x i64> poison, <2 x i32> zeroinitializer
  %93 = or <2 x i64> %92, <i64 0, i64 1>
  %94 = icmp ugt <2 x i64> %93, %90
  %95 = select <2 x i1> %94, <2 x i64> %.lcssa1, <2 x i64> %.lcssa
  %96 = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %95)
  %97 = trunc i64 %96 to i32
  %98 = getelementptr inbounds [128 x i32], ptr %4, i64 0, i64 %64
  store i32 -5000, ptr %98, align 4, !tbaa !15
  %99 = icmp eq i32 %97, %1
  br i1 %99, label %112, label %58, !llvm.loop !105

100:                                              ; preds = %100, %60
  %101 = phi i64 [ 1, %60 ], [ %110, %100 ]
  %102 = phi i32 [ 0, %60 ], [ %109, %100 ]
  %103 = phi i32 [ %61, %60 ], [ %107, %100 ]
  %104 = getelementptr inbounds [128 x i32], ptr %4, i64 0, i64 %101
  %105 = load i32, ptr %104, align 4, !tbaa !15
  %106 = icmp sgt i32 %105, %103
  %107 = tail call i32 @llvm.smax.i32(i32 %105, i32 %103)
  %108 = trunc i64 %101 to i32
  %109 = select i1 %106, i32 %108, i32 %102
  %110 = add nuw nsw i64 %101, 1
  %111 = icmp eq i64 %110, %22
  br i1 %111, label %62, label %100, !llvm.loop !106

112:                                              ; preds = %89, %17
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %5) #34
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %4) #34
  call void @llvm.lifetime.end.p0(i64 393216, ptr nonnull %3) #34
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define internal fastcc void @toggle_move(i64 %0, i32 noundef %1) unnamed_addr #15 {
  %3 = trunc i64 %0 to i32
  %4 = lshr i64 %0, 32
  %5 = trunc i64 %4 to i32
  %6 = and i32 %1, 1
  %7 = xor i32 %1, 1
  %8 = shl i32 3, %5
  %9 = zext i32 %6 to i64
  %10 = shl i64 %0, 32
  %11 = ashr exact i64 %10, 32
  %12 = getelementptr inbounds [2 x [32 x i32]], ptr @g_board, i64 0, i64 %9, i64 %11
  %13 = load i32, ptr %12, align 4, !tbaa !15
  %14 = xor i32 %13, %8
  store i32 %14, ptr %12, align 4, !tbaa !15
  %15 = shl nuw i32 1, %3
  %16 = zext i32 %7 to i64
  %17 = ashr i64 %0, 32
  %18 = getelementptr inbounds [2 x [32 x i32]], ptr @g_board, i64 0, i64 %16, i64 %17
  %19 = load i32, ptr %18, align 4, !tbaa !15
  %20 = xor i32 %19, %15
  store i32 %20, ptr %18, align 4, !tbaa !15
  %21 = add nsw i32 %5, 1
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [2 x [32 x i32]], ptr @g_board, i64 0, i64 %16, i64 %22
  %24 = load i32, ptr %23, align 4, !tbaa !15
  %25 = xor i32 %24, %15
  store i32 %25, ptr %23, align 4, !tbaa !15
  %26 = add nsw i32 %3, -1
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %2
  %29 = getelementptr inbounds [2 x [32 x i32]], ptr @g_board, i64 0, i64 %9, i64 0
  %30 = load i32, ptr %29, align 16, !tbaa !15
  %31 = load i32, ptr %12, align 4, !tbaa !15
  %32 = getelementptr inbounds [2 x %struct.Basic_Info], ptr @g_info_totals, i64 0, i64 %9
  %33 = load i32, ptr %32, align 4, !tbaa !33
  br label %68

34:                                               ; preds = %2
  %35 = add i64 %10, -8589934592
  %36 = ashr exact i64 %35, 32
  %37 = getelementptr inbounds [2 x [32 x i32]], ptr @g_board, i64 0, i64 %9, i64 %36
  %38 = load i32, ptr %37, align 4, !tbaa !15
  %39 = load i32, ptr %12, align 4, !tbaa !15
  %40 = and i32 %39, %38
  %41 = sext i32 %26 to i64
  %42 = getelementptr inbounds [2 x [32 x i32]], ptr @g_board, i64 0, i64 %9, i64 %41
  %43 = load i32, ptr %42, align 4, !tbaa !15
  %44 = shl i32 %43, 1
  %45 = or i32 %44, %43
  %46 = xor i32 %45, -1
  %47 = shl i32 %40, 1
  %48 = and i32 %47, %46
  %49 = and i32 %48, %40
  %50 = and i32 %49, 65534
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds [65536 x i32], ptr @move_table16, i64 0, i64 %51
  %53 = load i32, ptr %52, align 8, !tbaa !15
  %54 = icmp ult i32 %53, 268435456
  %55 = lshr i32 %49, 16
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds [65536 x i32], ptr @move_table16, i64 0, i64 %56
  %58 = load i32, ptr %57, align 4, !tbaa !15
  %59 = add i32 %58, %53
  %60 = select i1 %54, i32 65535, i32 65534
  %61 = and i32 %59, %60
  %62 = getelementptr inbounds [2 x [32 x %struct.Basic_Info]], ptr @g_info, i64 0, i64 %9, i64 %41
  %63 = load i32, ptr %62, align 4, !tbaa !33
  %64 = sub i32 %61, %63
  %65 = getelementptr inbounds [2 x %struct.Basic_Info], ptr @g_info_totals, i64 0, i64 %9
  %66 = load i32, ptr %65, align 4, !tbaa !33
  %67 = add nsw i32 %64, %66
  store i32 %61, ptr %62, align 4, !tbaa !33
  br label %68

68:                                               ; preds = %34, %28
  %69 = phi i32 [ %33, %28 ], [ %67, %34 ]
  %70 = phi i32 [ %31, %28 ], [ %39, %34 ]
  %71 = phi i32 [ %30, %28 ], [ %43, %34 ]
  %72 = add i64 %10, 4294967296
  %73 = ashr exact i64 %72, 32
  %74 = getelementptr inbounds [2 x [32 x i32]], ptr @g_board, i64 0, i64 %9, i64 %73
  %75 = load i32, ptr %74, align 4, !tbaa !15
  %76 = and i32 %75, %71
  %77 = shl i32 %70, 1
  %78 = or i32 %77, %70
  %79 = xor i32 %78, -1
  %80 = shl i32 %76, 1
  %81 = and i32 %80, %79
  %82 = and i32 %81, %76
  %83 = and i32 %82, 65534
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds [65536 x i32], ptr @move_table16, i64 0, i64 %84
  %86 = load i32, ptr %85, align 8, !tbaa !15
  %87 = icmp ult i32 %86, 268435456
  %88 = lshr i32 %82, 16
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds [65536 x i32], ptr @move_table16, i64 0, i64 %89
  %91 = load i32, ptr %90, align 4, !tbaa !15
  %92 = add i32 %91, %86
  %93 = select i1 %87, i32 65535, i32 65534
  %94 = and i32 %92, %93
  %95 = getelementptr inbounds [2 x [32 x %struct.Basic_Info]], ptr @g_info, i64 0, i64 %9, i64 %11
  %96 = load i32, ptr %95, align 4, !tbaa !33
  %97 = sub i32 %94, %96
  %98 = getelementptr inbounds [2 x %struct.Basic_Info], ptr @g_info_totals, i64 0, i64 %9
  %99 = add nsw i32 %97, %69
  store i32 %99, ptr %98, align 4, !tbaa !33
  store i32 %94, ptr %95, align 4, !tbaa !33
  %100 = getelementptr inbounds [2 x i32], ptr @g_board_size, i64 0, i64 %9
  %101 = load i32, ptr %100, align 4, !tbaa !15
  %102 = icmp eq i32 %101, %3
  br i1 %102, label %131, label %103

103:                                              ; preds = %68
  %104 = add i64 %10, 8589934592
  %105 = ashr exact i64 %104, 32
  %106 = getelementptr inbounds [2 x [32 x i32]], ptr @g_board, i64 0, i64 %9, i64 %105
  %107 = load i32, ptr %106, align 4, !tbaa !15
  %108 = and i32 %107, %70
  %109 = shl i32 %75, 1
  %110 = or i32 %109, %75
  %111 = xor i32 %110, -1
  %112 = shl i32 %108, 1
  %113 = and i32 %112, %111
  %114 = and i32 %113, %108
  %115 = and i32 %114, 65534
  %116 = zext i32 %115 to i64
  %117 = getelementptr inbounds [65536 x i32], ptr @move_table16, i64 0, i64 %116
  %118 = load i32, ptr %117, align 8, !tbaa !15
  %119 = icmp ult i32 %118, 268435456
  %120 = lshr i32 %114, 16
  %121 = zext i32 %120 to i64
  %122 = getelementptr inbounds [65536 x i32], ptr @move_table16, i64 0, i64 %121
  %123 = load i32, ptr %122, align 4, !tbaa !15
  %124 = add i32 %123, %118
  %125 = select i1 %119, i32 65535, i32 65534
  %126 = and i32 %124, %125
  %127 = getelementptr inbounds [2 x [32 x %struct.Basic_Info]], ptr @g_info, i64 0, i64 %9, i64 %73
  %128 = load i32, ptr %127, align 4, !tbaa !33
  %129 = sub i32 %99, %128
  %130 = add i32 %129, %126
  store i32 %130, ptr %98, align 4, !tbaa !33
  store i32 %126, ptr %127, align 4, !tbaa !33
  br label %131

131:                                              ; preds = %103, %68
  %132 = add nsw i32 %5, -1
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %168, label %134

134:                                              ; preds = %131
  %135 = add i64 %0, -8589934592
  %136 = ashr i64 %135, 32
  %137 = getelementptr inbounds [2 x [32 x i32]], ptr @g_board, i64 0, i64 %16, i64 %136
  %138 = load i32, ptr %137, align 4, !tbaa !15
  %139 = load i32, ptr %18, align 4, !tbaa !15
  %140 = and i32 %139, %138
  %141 = sext i32 %132 to i64
  %142 = getelementptr inbounds [2 x [32 x i32]], ptr @g_board, i64 0, i64 %16, i64 %141
  %143 = load i32, ptr %142, align 4, !tbaa !15
  %144 = shl i32 %143, 1
  %145 = or i32 %144, %143
  %146 = xor i32 %145, -1
  %147 = shl i32 %140, 1
  %148 = and i32 %147, %146
  %149 = and i32 %148, %140
  %150 = and i32 %149, 65534
  %151 = zext i32 %150 to i64
  %152 = getelementptr inbounds [65536 x i32], ptr @move_table16, i64 0, i64 %151
  %153 = load i32, ptr %152, align 8, !tbaa !15
  %154 = icmp ult i32 %153, 268435456
  %155 = lshr i32 %149, 16
  %156 = zext i32 %155 to i64
  %157 = getelementptr inbounds [65536 x i32], ptr @move_table16, i64 0, i64 %156
  %158 = load i32, ptr %157, align 4, !tbaa !15
  %159 = add i32 %158, %153
  %160 = select i1 %154, i32 65535, i32 65534
  %161 = and i32 %159, %160
  %162 = getelementptr inbounds [2 x [32 x %struct.Basic_Info]], ptr @g_info, i64 0, i64 %16, i64 %141
  %163 = load i32, ptr %162, align 4, !tbaa !33
  %164 = sub i32 %161, %163
  %165 = getelementptr inbounds [2 x %struct.Basic_Info], ptr @g_info_totals, i64 0, i64 %16
  %166 = load i32, ptr %165, align 4, !tbaa !33
  %167 = add nsw i32 %164, %166
  store i32 %167, ptr %165, align 4, !tbaa !33
  store i32 %161, ptr %162, align 4, !tbaa !33
  br label %168

168:                                              ; preds = %134, %131
  %169 = getelementptr inbounds [2 x i32], ptr @g_board_size, i64 0, i64 %16
  %170 = load i32, ptr %169, align 4, !tbaa !15
  %171 = icmp eq i32 %21, %170
  br i1 %171, label %210, label %172

172:                                              ; preds = %168
  %173 = add i64 %0, 4294967296
  %174 = ashr i64 %173, 32
  %175 = getelementptr inbounds [2 x [32 x i32]], ptr @g_board, i64 0, i64 %16, i64 %174
  %176 = load i32, ptr %175, align 4, !tbaa !15
  %177 = add i64 %0, 12884901888
  %178 = ashr i64 %177, 32
  %179 = getelementptr inbounds [2 x [32 x i32]], ptr @g_board, i64 0, i64 %16, i64 %178
  %180 = load i32, ptr %179, align 4, !tbaa !15
  %181 = and i32 %180, %176
  %182 = add i64 %0, 8589934592
  %183 = ashr i64 %182, 32
  %184 = getelementptr inbounds [2 x [32 x i32]], ptr @g_board, i64 0, i64 %16, i64 %183
  %185 = load i32, ptr %184, align 4, !tbaa !15
  %186 = shl i32 %185, 1
  %187 = or i32 %186, %185
  %188 = xor i32 %187, -1
  %189 = shl i32 %181, 1
  %190 = and i32 %189, %188
  %191 = and i32 %190, %181
  %192 = and i32 %191, 65534
  %193 = zext i32 %192 to i64
  %194 = getelementptr inbounds [65536 x i32], ptr @move_table16, i64 0, i64 %193
  %195 = load i32, ptr %194, align 8, !tbaa !15
  %196 = icmp ult i32 %195, 268435456
  %197 = lshr i32 %191, 16
  %198 = zext i32 %197 to i64
  %199 = getelementptr inbounds [65536 x i32], ptr @move_table16, i64 0, i64 %198
  %200 = load i32, ptr %199, align 4, !tbaa !15
  %201 = add i32 %200, %195
  %202 = select i1 %196, i32 65535, i32 65534
  %203 = and i32 %201, %202
  %204 = getelementptr inbounds [2 x [32 x %struct.Basic_Info]], ptr @g_info, i64 0, i64 %16, i64 %183
  %205 = load i32, ptr %204, align 4, !tbaa !33
  %206 = sub i32 %203, %205
  %207 = getelementptr inbounds [2 x %struct.Basic_Info], ptr @g_info_totals, i64 0, i64 %16
  %208 = load i32, ptr %207, align 4, !tbaa !33
  %209 = add nsw i32 %206, %208
  store i32 %209, ptr %207, align 4, !tbaa !33
  store i32 %203, ptr %204, align 4, !tbaa !33
  br label %210

210:                                              ; preds = %172, %168
  %211 = and i32 %79, 65535
  %212 = zext i32 %211 to i64
  %213 = getelementptr inbounds [65536 x i32], ptr @move_table16, i64 0, i64 %212
  %214 = load i32, ptr %213, align 4, !tbaa !15
  %215 = icmp ult i32 %214, 268435456
  %216 = lshr i32 %79, 16
  %217 = zext i32 %216 to i64
  %218 = getelementptr inbounds [65536 x i32], ptr @move_table16, i64 0, i64 %217
  %219 = load i32, ptr %218, align 4, !tbaa !15
  %220 = add i32 %219, %214
  %221 = select i1 %215, i32 65535, i32 65534
  %222 = and i32 %220, %221
  %223 = getelementptr inbounds [2 x [32 x %struct.Basic_Info]], ptr @g_info, i64 0, i64 %9, i64 %11, i32 1
  %224 = load i32, ptr %223, align 4, !tbaa !35
  %225 = sub i32 %222, %224
  %226 = getelementptr inbounds [2 x %struct.Basic_Info], ptr @g_info_totals, i64 0, i64 %9, i32 1
  %227 = load i32, ptr %226, align 4, !tbaa !35
  %228 = add nsw i32 %225, %227
  store i32 %228, ptr %226, align 4, !tbaa !35
  store i32 %222, ptr %223, align 4, !tbaa !35
  %229 = load i32, ptr %18, align 4, !tbaa !15
  %230 = shl i32 %229, 1
  %231 = or i32 %230, %229
  %232 = xor i32 %231, -1
  %233 = and i32 %232, 65535
  %234 = zext i32 %233 to i64
  %235 = getelementptr inbounds [65536 x i32], ptr @move_table16, i64 0, i64 %234
  %236 = load i32, ptr %235, align 4, !tbaa !15
  %237 = icmp ult i32 %236, 268435456
  %238 = lshr i32 %232, 16
  %239 = zext i32 %238 to i64
  %240 = getelementptr inbounds [65536 x i32], ptr @move_table16, i64 0, i64 %239
  %241 = load i32, ptr %240, align 4, !tbaa !15
  %242 = add i32 %241, %236
  %243 = select i1 %237, i32 65535, i32 65534
  %244 = and i32 %242, %243
  %245 = getelementptr inbounds [2 x [32 x %struct.Basic_Info]], ptr @g_info, i64 0, i64 %16, i64 %17, i32 1
  %246 = load i32, ptr %245, align 4, !tbaa !35
  %247 = getelementptr inbounds [2 x %struct.Basic_Info], ptr @g_info_totals, i64 0, i64 %16, i32 1
  %248 = load i32, ptr %247, align 4, !tbaa !35
  store i32 %244, ptr %245, align 4, !tbaa !35
  %249 = shl i32 %25, 1
  %250 = or i32 %249, %25
  %251 = xor i32 %250, -1
  %252 = and i32 %251, 65535
  %253 = zext i32 %252 to i64
  %254 = getelementptr inbounds [65536 x i32], ptr @move_table16, i64 0, i64 %253
  %255 = load i32, ptr %254, align 4, !tbaa !15
  %256 = icmp ult i32 %255, 268435456
  %257 = lshr i32 %251, 16
  %258 = zext i32 %257 to i64
  %259 = getelementptr inbounds [65536 x i32], ptr @move_table16, i64 0, i64 %258
  %260 = load i32, ptr %259, align 4, !tbaa !15
  %261 = add i32 %260, %255
  %262 = select i1 %256, i32 65535, i32 65534
  %263 = and i32 %261, %262
  %264 = getelementptr inbounds [2 x [32 x %struct.Basic_Info]], ptr @g_info, i64 0, i64 %16, i64 %22, i32 1
  %265 = load i32, ptr %264, align 4, !tbaa !35
  %266 = add i32 %248, %244
  %267 = add i32 %246, %265
  %268 = sub i32 %266, %267
  %269 = add i32 %268, %263
  store i32 %269, ptr %247, align 4, !tbaa !35
  store i32 %263, ptr %264, align 4, !tbaa !35
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @check_hash_code_sanity() unnamed_addr #0 {
  %1 = load i32, ptr @g_board_size, align 4, !tbaa !15
  %2 = load i32, ptr getelementptr inbounds ([2 x i32], ptr @g_board_size, i64 0, i64 1), align 4, !tbaa !15
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %39

4:                                                ; preds = %0
  %5 = icmp sgt i32 %2, 0
  %6 = zext i32 %1 to i64
  br label %7

7:                                                ; preds = %36, %4
  %8 = phi i64 [ 0, %4 ], [ %37, %36 ]
  br i1 %5, label %11, label %9

9:                                                ; preds = %7
  %10 = add nuw nsw i64 %8, 1
  br label %36

11:                                               ; preds = %7
  %12 = trunc i64 %8 to i32
  %13 = add nuw nsw i64 %8, 1
  %14 = getelementptr inbounds [32 x i32], ptr @g_board, i64 0, i64 %13
  %15 = mul nsw i32 %2, %12
  %16 = xor i32 %12, -1
  %17 = add i32 %1, %16
  %18 = mul nsw i32 %17, %2
  br label %19

19:                                               ; preds = %34, %11
  %20 = phi i32 [ 0, %11 ], [ %22, %34 ]
  %21 = load i32, ptr %14, align 4, !tbaa !15
  %22 = add nuw nsw i32 %20, 1
  %23 = shl i32 2, %20
  %24 = and i32 %21, %23
  %25 = icmp eq i32 %24, 0
  %26 = add nsw i32 %20, %15
  %27 = xor i32 %20, -1
  %28 = add i32 %2, %27
  %29 = add nsw i32 %28, %15
  %30 = add nsw i32 %20, %18
  %31 = add nsw i32 %28, %18
  br i1 %25, label %33, label %32

32:                                               ; preds = %19
  tail call fastcc void @check_hashkey_bit_set(ptr noundef nonnull byval(%struct.Hash_Key) align 8 @g_norm_hashkey, i32 noundef %26) #31
  tail call fastcc void @check_hashkey_bit_set(ptr noundef nonnull byval(%struct.Hash_Key) align 8 @g_flipV_hashkey, i32 noundef %29) #31
  tail call fastcc void @check_hashkey_bit_set(ptr noundef nonnull byval(%struct.Hash_Key) align 8 @g_flipH_hashkey, i32 noundef %30) #31
  tail call fastcc void @check_hashkey_bit_set(ptr noundef nonnull byval(%struct.Hash_Key) align 8 @g_flipVH_hashkey, i32 noundef %31) #31
  br label %34

33:                                               ; preds = %19
  tail call fastcc void @check_hashkey_bit_not_set(ptr noundef nonnull byval(%struct.Hash_Key) align 8 @g_norm_hashkey, i32 noundef %26) #31
  tail call fastcc void @check_hashkey_bit_not_set(ptr noundef nonnull byval(%struct.Hash_Key) align 8 @g_flipV_hashkey, i32 noundef %29) #31
  tail call fastcc void @check_hashkey_bit_not_set(ptr noundef nonnull byval(%struct.Hash_Key) align 8 @g_flipH_hashkey, i32 noundef %30) #31
  tail call fastcc void @check_hashkey_bit_not_set(ptr noundef nonnull byval(%struct.Hash_Key) align 8 @g_flipVH_hashkey, i32 noundef %31) #31
  br label %34

34:                                               ; preds = %33, %32
  %35 = icmp eq i32 %22, %2
  br i1 %35, label %36, label %19, !llvm.loop !107

36:                                               ; preds = %34, %9
  %37 = phi i64 [ %10, %9 ], [ %13, %34 ]
  %38 = icmp eq i64 %37, %6
  br i1 %38, label %39, label %7, !llvm.loop !108

39:                                               ; preds = %36, %0
  tail call fastcc void @check_hashkey_code(ptr noundef nonnull byval(%struct.Hash_Key) align 8 @g_norm_hashkey) #31
  tail call fastcc void @check_hashkey_code(ptr noundef nonnull byval(%struct.Hash_Key) align 8 @g_flipV_hashkey) #31
  tail call fastcc void @check_hashkey_code(ptr noundef nonnull byval(%struct.Hash_Key) align 8 @g_flipH_hashkey) #31
  tail call fastcc void @check_hashkey_code(ptr noundef nonnull byval(%struct.Hash_Key) align 8 @g_flipVH_hashkey) #31
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @negamax(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca [256 x %struct.Basic_Info], align 16
  %6 = alloca %struct.Basic_Info, align 8
  call void @llvm.lifetime.start.p0(i64 3072, ptr nonnull %5) #34
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #34
  %7 = and i32 %1, 1
  %8 = xor i32 %1, 1
  %9 = load i64, ptr @g_num_nodes, align 8, !tbaa !11
  %10 = add i64 %9, 1
  store i64 %10, ptr @g_num_nodes, align 8, !tbaa !11
  %11 = load i32, ptr @starting_depth, align 4, !tbaa !15
  %12 = sub nsw i32 %11, %0
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [40 x i32], ptr @stat_nodes, i64 0, i64 %13
  %15 = load i32, ptr %14, align 4, !tbaa !15
  %16 = add nsw i32 %15, 1
  store i32 %16, ptr %14, align 4, !tbaa !15
  %17 = icmp slt i32 %0, 1
  br i1 %17, label %18, label %26

18:                                               ; preds = %4
  %19 = tail call fastcc i32 @does_next_player_win(i32 noundef %7) #30
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %619, label %21

21:                                               ; preds = %18
  %22 = tail call fastcc i32 @does_who_just_moved_win(i32 noundef %8) #30
  %23 = icmp sgt i32 %22, -1
  %24 = sub nsw i32 %19, %22
  %25 = select i1 %23, i32 -5000, i32 %24
  br label %619

26:                                               ; preds = %4
  %27 = zext i32 %7 to i64
  %28 = getelementptr inbounds [2 x %struct.Basic_Info], ptr @g_info_totals, i64 0, i64 %27
  %29 = load i32, ptr %28, align 4, !tbaa !33
  %30 = zext i32 %8 to i64
  %31 = getelementptr inbounds [2 x %struct.Basic_Info], ptr @g_info_totals, i64 0, i64 %30, i32 1
  %32 = load i32, ptr %31, align 4, !tbaa !35
  %33 = icmp sgt i32 %29, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %26
  %35 = load i32, ptr @cut1, align 4, !tbaa !15
  %36 = add nsw i32 %35, 1
  store i32 %36, ptr @cut1, align 4, !tbaa !15
  br label %619

37:                                               ; preds = %26
  %38 = getelementptr inbounds [2 x %struct.Basic_Info], ptr @g_info_totals, i64 0, i64 %30
  %39 = load i32, ptr %38, align 4, !tbaa !33
  %40 = getelementptr inbounds [2 x %struct.Basic_Info], ptr @g_info_totals, i64 0, i64 %27, i32 1
  %41 = load i32, ptr %40, align 4, !tbaa !35
  %42 = icmp slt i32 %39, %41
  br i1 %42, label %46, label %43

43:                                               ; preds = %37
  %44 = load i32, ptr @cut2, align 4, !tbaa !15
  %45 = add nsw i32 %44, 1
  store i32 %45, ptr @cut2, align 4, !tbaa !15
  br label %619

46:                                               ; preds = %37
  %47 = load i32, ptr getelementptr inbounds (%struct.Hash_Key, ptr @g_norm_hashkey, i64 0, i32 1), align 8, !tbaa !58
  %48 = load ptr, ptr @g_trans_table, align 8, !tbaa !7
  %49 = sext i32 %47 to i64
  %50 = getelementptr inbounds %struct.Hash_Entry.2, ptr %48, i64 %49
  %51 = load i32, ptr %50, align 4, !tbaa !15
  %52 = load i32, ptr @g_norm_hashkey, align 8, !tbaa !15
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %120

54:                                               ; preds = %46
  %55 = getelementptr inbounds [4 x i32], ptr %50, i64 0, i64 1
  %56 = load i32, ptr %55, align 4, !tbaa !15
  %57 = load i32, ptr getelementptr inbounds (%struct.Hash_Key, ptr @g_norm_hashkey, i64 0, i32 0, i64 1), align 4, !tbaa !15
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %120

59:                                               ; preds = %54
  %60 = getelementptr inbounds [4 x i32], ptr %50, i64 0, i64 2
  %61 = load i32, ptr %60, align 4, !tbaa !15
  %62 = load i32, ptr getelementptr inbounds (%struct.Hash_Key, ptr @g_norm_hashkey, i64 0, i32 0, i64 2), align 8, !tbaa !15
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %120

64:                                               ; preds = %59
  %65 = getelementptr inbounds [4 x i32], ptr %50, i64 0, i64 3
  %66 = load i32, ptr %65, align 4, !tbaa !15
  %67 = load i32, ptr getelementptr inbounds (%struct.Hash_Key, ptr @g_norm_hashkey, i64 0, i32 0, i64 3), align 4, !tbaa !15
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %120

69:                                               ; preds = %64
  %70 = getelementptr inbounds %struct.Hash_Entry.2, ptr %48, i64 %49, i32 3
  %71 = load i24, ptr %70, align 1
  %72 = zext i24 %71 to i32
  %73 = lshr i32 %72, 7
  %74 = and i32 %73, 1
  %75 = icmp eq i32 %74, %7
  br i1 %75, label %76, label %120

76:                                               ; preds = %69
  %77 = getelementptr inbounds %struct.Hash_Entry.2, ptr %48, i64 %49, i32 2
  %78 = load i8, ptr %77, align 4, !tbaa !109
  %79 = zext i8 %78 to i32
  %80 = getelementptr inbounds [2 x i32], ptr @g_board_size, i64 0, i64 %27
  %81 = load i32, ptr %80, align 4, !tbaa !15
  %82 = sdiv i32 %79, %81
  %83 = add nsw i32 %82, 1
  %84 = zext i32 %83 to i64
  %85 = shl nuw i64 %84, 32
  %86 = and i24 %71, 127
  %87 = zext i24 %86 to i32
  %88 = icmp ult i32 %87, %0
  br i1 %88, label %120, label %89

89:                                               ; preds = %76
  %90 = lshr i24 %71, 22
  %91 = icmp eq i24 %90, 1
  br i1 %91, label %92, label %98

92:                                               ; preds = %89
  %93 = shl i24 %71, 2
  %94 = ashr i24 %93, 10
  %95 = zext i24 %94 to i32
  %96 = shl i32 %95, 16
  %97 = ashr exact i32 %96, 16
  br label %619

98:                                               ; preds = %89
  %99 = icmp ult i24 %71, 4194304
  br i1 %99, label %100, label %109

100:                                              ; preds = %98
  %101 = shl nuw i24 %71, 2
  %102 = ashr i24 %101, 10
  %103 = zext i24 %102 to i32
  %104 = shl i32 %103, 16
  %105 = ashr exact i32 %104, 16
  %106 = icmp slt i32 %105, %3
  br i1 %106, label %107, label %619

107:                                              ; preds = %100
  %108 = tail call i32 @llvm.smax.i32(i32 %105, i32 %2)
  br label %342

109:                                              ; preds = %98
  %110 = icmp eq i24 %90, 2
  br i1 %110, label %111, label %120

111:                                              ; preds = %109
  %112 = shl i24 %71, 2
  %113 = ashr i24 %112, 10
  %114 = zext i24 %113 to i32
  %115 = shl i32 %114, 16
  %116 = ashr exact i32 %115, 16
  %117 = icmp sgt i32 %116, %2
  br i1 %117, label %118, label %619

118:                                              ; preds = %111
  %119 = tail call i32 @llvm.smin.i32(i32 %116, i32 %3)
  br label %342

120:                                              ; preds = %109, %76, %69, %64, %59, %54, %46
  %121 = phi i64 [ %85, %76 ], [ %85, %109 ], [ 4294967295, %69 ], [ 4294967295, %64 ], [ 4294967295, %59 ], [ 4294967295, %54 ], [ 4294967295, %46 ]
  %122 = load i32, ptr getelementptr inbounds (%struct.Hash_Key, ptr @g_flipV_hashkey, i64 0, i32 1), align 8, !tbaa !58
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.Hash_Entry.2, ptr %48, i64 %123
  %125 = load i32, ptr %124, align 4, !tbaa !15
  %126 = load i32, ptr @g_flipV_hashkey, align 8, !tbaa !15
  %127 = icmp eq i32 %125, %126
  br i1 %127, label %128, label %194

128:                                              ; preds = %120
  %129 = getelementptr inbounds [4 x i32], ptr %124, i64 0, i64 1
  %130 = load i32, ptr %129, align 4, !tbaa !15
  %131 = load i32, ptr getelementptr inbounds (%struct.Hash_Key, ptr @g_flipV_hashkey, i64 0, i32 0, i64 1), align 4, !tbaa !15
  %132 = icmp eq i32 %130, %131
  br i1 %132, label %133, label %194

133:                                              ; preds = %128
  %134 = getelementptr inbounds [4 x i32], ptr %124, i64 0, i64 2
  %135 = load i32, ptr %134, align 4, !tbaa !15
  %136 = load i32, ptr getelementptr inbounds (%struct.Hash_Key, ptr @g_flipV_hashkey, i64 0, i32 0, i64 2), align 8, !tbaa !15
  %137 = icmp eq i32 %135, %136
  br i1 %137, label %138, label %194

138:                                              ; preds = %133
  %139 = getelementptr inbounds [4 x i32], ptr %124, i64 0, i64 3
  %140 = load i32, ptr %139, align 4, !tbaa !15
  %141 = load i32, ptr getelementptr inbounds (%struct.Hash_Key, ptr @g_flipV_hashkey, i64 0, i32 0, i64 3), align 4, !tbaa !15
  %142 = icmp eq i32 %140, %141
  br i1 %142, label %143, label %194

143:                                              ; preds = %138
  %144 = getelementptr inbounds %struct.Hash_Entry.2, ptr %48, i64 %123, i32 3
  %145 = load i24, ptr %144, align 1
  %146 = zext i24 %145 to i32
  %147 = lshr i32 %146, 7
  %148 = and i32 %147, 1
  %149 = icmp eq i32 %148, %7
  br i1 %149, label %150, label %194

150:                                              ; preds = %143
  %151 = getelementptr inbounds %struct.Hash_Entry.2, ptr %48, i64 %123, i32 2
  %152 = load i8, ptr %151, align 4, !tbaa !109
  %153 = zext i8 %152 to i32
  %154 = getelementptr inbounds [2 x i32], ptr @g_board_size, i64 0, i64 %27
  %155 = load i32, ptr %154, align 4, !tbaa !15
  %156 = sdiv i32 %153, %155
  %157 = add nsw i32 %156, 1
  %158 = zext i32 %157 to i64
  %159 = shl nuw i64 %158, 32
  %160 = and i24 %145, 127
  %161 = zext i24 %160 to i32
  %162 = icmp ult i32 %161, %0
  br i1 %162, label %194, label %163

163:                                              ; preds = %150
  %164 = lshr i24 %145, 22
  %165 = icmp eq i24 %164, 1
  br i1 %165, label %166, label %172

166:                                              ; preds = %163
  %167 = shl i24 %145, 2
  %168 = ashr i24 %167, 10
  %169 = zext i24 %168 to i32
  %170 = shl i32 %169, 16
  %171 = ashr exact i32 %170, 16
  br label %619

172:                                              ; preds = %163
  %173 = icmp ult i24 %145, 4194304
  br i1 %173, label %174, label %183

174:                                              ; preds = %172
  %175 = shl nuw i24 %145, 2
  %176 = ashr i24 %175, 10
  %177 = zext i24 %176 to i32
  %178 = shl i32 %177, 16
  %179 = ashr exact i32 %178, 16
  %180 = icmp slt i32 %179, %3
  br i1 %180, label %181, label %619

181:                                              ; preds = %174
  %182 = tail call i32 @llvm.smax.i32(i32 %179, i32 %2)
  br label %342

183:                                              ; preds = %172
  %184 = icmp eq i24 %164, 2
  br i1 %184, label %185, label %194

185:                                              ; preds = %183
  %186 = shl i24 %145, 2
  %187 = ashr i24 %186, 10
  %188 = zext i24 %187 to i32
  %189 = shl i32 %188, 16
  %190 = ashr exact i32 %189, 16
  %191 = icmp sgt i32 %190, %2
  br i1 %191, label %192, label %619

192:                                              ; preds = %185
  %193 = tail call i32 @llvm.smin.i32(i32 %190, i32 %3)
  br label %342

194:                                              ; preds = %183, %150, %143, %138, %133, %128, %120
  %195 = phi i64 [ %159, %150 ], [ %159, %183 ], [ %121, %143 ], [ %121, %138 ], [ %121, %133 ], [ %121, %128 ], [ %121, %120 ]
  %196 = load i32, ptr getelementptr inbounds (%struct.Hash_Key, ptr @g_flipH_hashkey, i64 0, i32 1), align 8, !tbaa !58
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds %struct.Hash_Entry.2, ptr %48, i64 %197
  %199 = load i32, ptr %198, align 4, !tbaa !15
  %200 = load i32, ptr @g_flipH_hashkey, align 8, !tbaa !15
  %201 = icmp eq i32 %199, %200
  br i1 %201, label %202, label %268

202:                                              ; preds = %194
  %203 = getelementptr inbounds [4 x i32], ptr %198, i64 0, i64 1
  %204 = load i32, ptr %203, align 4, !tbaa !15
  %205 = load i32, ptr getelementptr inbounds (%struct.Hash_Key, ptr @g_flipH_hashkey, i64 0, i32 0, i64 1), align 4, !tbaa !15
  %206 = icmp eq i32 %204, %205
  br i1 %206, label %207, label %268

207:                                              ; preds = %202
  %208 = getelementptr inbounds [4 x i32], ptr %198, i64 0, i64 2
  %209 = load i32, ptr %208, align 4, !tbaa !15
  %210 = load i32, ptr getelementptr inbounds (%struct.Hash_Key, ptr @g_flipH_hashkey, i64 0, i32 0, i64 2), align 8, !tbaa !15
  %211 = icmp eq i32 %209, %210
  br i1 %211, label %212, label %268

212:                                              ; preds = %207
  %213 = getelementptr inbounds [4 x i32], ptr %198, i64 0, i64 3
  %214 = load i32, ptr %213, align 4, !tbaa !15
  %215 = load i32, ptr getelementptr inbounds (%struct.Hash_Key, ptr @g_flipH_hashkey, i64 0, i32 0, i64 3), align 4, !tbaa !15
  %216 = icmp eq i32 %214, %215
  br i1 %216, label %217, label %268

217:                                              ; preds = %212
  %218 = getelementptr inbounds %struct.Hash_Entry.2, ptr %48, i64 %197, i32 3
  %219 = load i24, ptr %218, align 1
  %220 = zext i24 %219 to i32
  %221 = lshr i32 %220, 7
  %222 = and i32 %221, 1
  %223 = icmp eq i32 %222, %7
  br i1 %223, label %224, label %268

224:                                              ; preds = %217
  %225 = getelementptr inbounds %struct.Hash_Entry.2, ptr %48, i64 %197, i32 2
  %226 = load i8, ptr %225, align 4, !tbaa !109
  %227 = zext i8 %226 to i32
  %228 = getelementptr inbounds [2 x i32], ptr @g_board_size, i64 0, i64 %27
  %229 = load i32, ptr %228, align 4, !tbaa !15
  %230 = sdiv i32 %227, %229
  %231 = add nsw i32 %230, 1
  %232 = zext i32 %231 to i64
  %233 = shl nuw i64 %232, 32
  %234 = and i24 %219, 127
  %235 = zext i24 %234 to i32
  %236 = icmp ult i32 %235, %0
  br i1 %236, label %268, label %237

237:                                              ; preds = %224
  %238 = lshr i24 %219, 22
  %239 = icmp eq i24 %238, 1
  br i1 %239, label %240, label %246

240:                                              ; preds = %237
  %241 = shl i24 %219, 2
  %242 = ashr i24 %241, 10
  %243 = zext i24 %242 to i32
  %244 = shl i32 %243, 16
  %245 = ashr exact i32 %244, 16
  br label %619

246:                                              ; preds = %237
  %247 = icmp ult i24 %219, 4194304
  br i1 %247, label %248, label %257

248:                                              ; preds = %246
  %249 = shl nuw i24 %219, 2
  %250 = ashr i24 %249, 10
  %251 = zext i24 %250 to i32
  %252 = shl i32 %251, 16
  %253 = ashr exact i32 %252, 16
  %254 = icmp slt i32 %253, %3
  br i1 %254, label %255, label %619

255:                                              ; preds = %248
  %256 = tail call i32 @llvm.smax.i32(i32 %253, i32 %2)
  br label %342

257:                                              ; preds = %246
  %258 = icmp eq i24 %238, 2
  br i1 %258, label %259, label %268

259:                                              ; preds = %257
  %260 = shl i24 %219, 2
  %261 = ashr i24 %260, 10
  %262 = zext i24 %261 to i32
  %263 = shl i32 %262, 16
  %264 = ashr exact i32 %263, 16
  %265 = icmp sgt i32 %264, %2
  br i1 %265, label %266, label %619

266:                                              ; preds = %259
  %267 = tail call i32 @llvm.smin.i32(i32 %264, i32 %3)
  br label %342

268:                                              ; preds = %257, %224, %217, %212, %207, %202, %194
  %269 = phi i64 [ %233, %224 ], [ %233, %257 ], [ %195, %217 ], [ %195, %212 ], [ %195, %207 ], [ %195, %202 ], [ %195, %194 ]
  %270 = load i32, ptr getelementptr inbounds (%struct.Hash_Key, ptr @g_flipVH_hashkey, i64 0, i32 1), align 8, !tbaa !58
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds %struct.Hash_Entry.2, ptr %48, i64 %271
  %273 = load i32, ptr %272, align 4, !tbaa !15
  %274 = load i32, ptr @g_flipVH_hashkey, align 8, !tbaa !15
  %275 = icmp eq i32 %273, %274
  br i1 %275, label %276, label %342

276:                                              ; preds = %268
  %277 = getelementptr inbounds [4 x i32], ptr %272, i64 0, i64 1
  %278 = load i32, ptr %277, align 4, !tbaa !15
  %279 = load i32, ptr getelementptr inbounds (%struct.Hash_Key, ptr @g_flipVH_hashkey, i64 0, i32 0, i64 1), align 4, !tbaa !15
  %280 = icmp eq i32 %278, %279
  br i1 %280, label %281, label %342

281:                                              ; preds = %276
  %282 = getelementptr inbounds [4 x i32], ptr %272, i64 0, i64 2
  %283 = load i32, ptr %282, align 4, !tbaa !15
  %284 = load i32, ptr getelementptr inbounds (%struct.Hash_Key, ptr @g_flipVH_hashkey, i64 0, i32 0, i64 2), align 8, !tbaa !15
  %285 = icmp eq i32 %283, %284
  br i1 %285, label %286, label %342

286:                                              ; preds = %281
  %287 = getelementptr inbounds [4 x i32], ptr %272, i64 0, i64 3
  %288 = load i32, ptr %287, align 4, !tbaa !15
  %289 = load i32, ptr getelementptr inbounds (%struct.Hash_Key, ptr @g_flipVH_hashkey, i64 0, i32 0, i64 3), align 4, !tbaa !15
  %290 = icmp eq i32 %288, %289
  br i1 %290, label %291, label %342

291:                                              ; preds = %286
  %292 = getelementptr inbounds %struct.Hash_Entry.2, ptr %48, i64 %271, i32 3
  %293 = load i24, ptr %292, align 1
  %294 = zext i24 %293 to i32
  %295 = lshr i32 %294, 7
  %296 = and i32 %295, 1
  %297 = icmp eq i32 %296, %7
  br i1 %297, label %298, label %342

298:                                              ; preds = %291
  %299 = getelementptr inbounds %struct.Hash_Entry.2, ptr %48, i64 %271, i32 2
  %300 = load i8, ptr %299, align 4, !tbaa !109
  %301 = zext i8 %300 to i32
  %302 = getelementptr inbounds [2 x i32], ptr @g_board_size, i64 0, i64 %27
  %303 = load i32, ptr %302, align 4, !tbaa !15
  %304 = sdiv i32 %301, %303
  %305 = add nsw i32 %304, 1
  %306 = zext i32 %305 to i64
  %307 = shl nuw i64 %306, 32
  %308 = and i24 %293, 127
  %309 = zext i24 %308 to i32
  %310 = icmp ult i32 %309, %0
  br i1 %310, label %342, label %311

311:                                              ; preds = %298
  %312 = lshr i24 %293, 22
  %313 = icmp eq i24 %312, 1
  br i1 %313, label %314, label %320

314:                                              ; preds = %311
  %315 = shl i24 %293, 2
  %316 = ashr i24 %315, 10
  %317 = zext i24 %316 to i32
  %318 = shl i32 %317, 16
  %319 = ashr exact i32 %318, 16
  br label %619

320:                                              ; preds = %311
  %321 = icmp ult i24 %293, 4194304
  br i1 %321, label %322, label %331

322:                                              ; preds = %320
  %323 = shl nuw i24 %293, 2
  %324 = ashr i24 %323, 10
  %325 = zext i24 %324 to i32
  %326 = shl i32 %325, 16
  %327 = ashr exact i32 %326, 16
  %328 = icmp slt i32 %327, %3
  br i1 %328, label %329, label %619

329:                                              ; preds = %322
  %330 = tail call i32 @llvm.smax.i32(i32 %327, i32 %2)
  br label %342

331:                                              ; preds = %320
  %332 = icmp eq i24 %312, 2
  br i1 %332, label %333, label %342

333:                                              ; preds = %331
  %334 = shl i24 %293, 2
  %335 = ashr i24 %334, 10
  %336 = zext i24 %335 to i32
  %337 = shl i32 %336, 16
  %338 = ashr exact i32 %337, 16
  %339 = icmp sgt i32 %338, %2
  br i1 %339, label %340, label %619

340:                                              ; preds = %333
  %341 = tail call i32 @llvm.smin.i32(i32 %338, i32 %3)
  br label %342

342:                                              ; preds = %340, %331, %329, %298, %291, %286, %281, %276, %268, %266, %255, %192, %181, %118, %107
  %343 = phi i32 [ %3, %268 ], [ %3, %276 ], [ %3, %281 ], [ %3, %286 ], [ %3, %291 ], [ %3, %331 ], [ %3, %298 ], [ %3, %107 ], [ %119, %118 ], [ %3, %181 ], [ %193, %192 ], [ %3, %255 ], [ %267, %266 ], [ %3, %329 ], [ %341, %340 ]
  %344 = phi i32 [ %2, %268 ], [ %2, %276 ], [ %2, %281 ], [ %2, %286 ], [ %2, %291 ], [ %2, %331 ], [ %2, %298 ], [ %108, %107 ], [ %2, %118 ], [ %182, %181 ], [ %2, %192 ], [ %256, %255 ], [ %2, %266 ], [ %330, %329 ], [ %2, %340 ]
  %345 = phi i64 [ %269, %268 ], [ %269, %276 ], [ %269, %281 ], [ %269, %286 ], [ %269, %291 ], [ %307, %331 ], [ %307, %298 ], [ %85, %107 ], [ %85, %118 ], [ %159, %181 ], [ %159, %192 ], [ %233, %255 ], [ %233, %266 ], [ %307, %329 ], [ %307, %340 ]
  %346 = or i64 %345, 4294967295
  %347 = tail call fastcc i32 @does_next_player_win(i32 noundef %7) #30
  %348 = icmp sgt i32 %347, 0
  br i1 %348, label %349, label %352

349:                                              ; preds = %342
  %350 = load i32, ptr @cut3, align 4, !tbaa !15
  %351 = add nsw i32 %350, 1
  store i32 %351, ptr @cut3, align 4, !tbaa !15
  br label %619

352:                                              ; preds = %342
  %353 = tail call fastcc i32 @does_who_just_moved_win(i32 noundef %8) #30
  %354 = icmp sgt i32 %353, -1
  br i1 %354, label %355, label %358

355:                                              ; preds = %352
  %356 = load i32, ptr @cut4, align 4, !tbaa !15
  %357 = add nsw i32 %356, 1
  store i32 %357, ptr @cut4, align 4, !tbaa !15
  br label %619

358:                                              ; preds = %352
  %359 = call fastcc i32 @move_generator_stage1(ptr noundef nonnull %5, i32 noundef %7) #30
  %360 = icmp ne i32 %359, 0
  br i1 %360, label %365, label %361

361:                                              ; preds = %358
  %362 = call fastcc i32 @move_generator_stage2(ptr noundef nonnull %5, i32 noundef 0, i32 noundef %7) #30
  %363 = icmp eq i32 %362, 0
  br i1 %363, label %364, label %365

364:                                              ; preds = %361
  tail call void (ptr, i32, i32, ptr, ...) @_fatal_error_aux(ptr noundef nonnull @.str.26, i32 noundef 458, i32 poison, ptr noundef nonnull @.str.13.50) #30
  unreachable

365:                                              ; preds = %361, %358
  %366 = phi i32 [ 3, %361 ], [ 2, %358 ]
  %367 = phi i32 [ %362, %361 ], [ %359, %358 ]
  call fastcc void @score_and_get_first(ptr noundef nonnull %5, i32 noundef %367, i32 noundef %7, i64 %346) #30
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %6, ptr noundef nonnull align 16 dereferenceable(12) %5, i64 12, i1 false), !tbaa.struct !70
  %368 = add nsw i32 %0, -1
  %369 = xor i32 %7, 1
  %370 = sub nsw i32 0, %343
  br label %371

371:                                              ; preds = %607, %365
  %372 = phi i32 [ undef, %365 ], [ %608, %607 ]
  %373 = phi i32 [ %344, %365 ], [ %609, %607 ]
  %374 = phi i32 [ 1, %365 ], [ %381, %607 ]
  %375 = phi i32 [ 0, %365 ], [ %610, %607 ]
  %376 = phi i32 [ 0, %365 ], [ %383, %607 ]
  switch i32 %376, label %378 [
    i32 0, label %380
    i32 1, label %377
  ]

377:                                              ; preds = %371
  call fastcc void @sort_moves(ptr noundef nonnull %5, i32 noundef %367) #30
  br label %380

378:                                              ; preds = %371
  %379 = call fastcc i32 @move_generator_stage2(ptr noundef nonnull %5, i32 noundef %374, i32 noundef %7) #30
  br label %380

380:                                              ; preds = %378, %377, %371
  %381 = phi i32 [ %379, %378 ], [ %374, %371 ], [ %367, %377 ]
  %382 = phi i1 [ false, %378 ], [ true, %371 ], [ %360, %377 ]
  %383 = phi i32 [ 3, %378 ], [ 1, %371 ], [ %366, %377 ]
  %384 = icmp slt i32 %375, %381
  br i1 %384, label %385, label %607

385:                                              ; preds = %380
  %386 = sext i32 %375 to i64
  br label %387

387:                                              ; preds = %602, %385
  %388 = phi i32 [ %373, %385 ], [ %603, %602 ]
  %389 = phi i64 [ %386, %385 ], [ %604, %602 ]
  %390 = load i32, ptr @starting_depth, align 4, !tbaa !15
  %391 = sub nsw i32 %390, %0
  %392 = sext i32 %391 to i64
  %393 = getelementptr inbounds [128 x i32], ptr @g_move_number, i64 0, i64 %392
  %394 = trunc i64 %389 to i32
  store i32 %394, ptr %393, align 4, !tbaa !15
  %395 = load i32, ptr @g_empty_squares, align 4, !tbaa !15
  %396 = add nsw i32 %395, -2
  store i32 %396, ptr @g_empty_squares, align 4, !tbaa !15
  %397 = getelementptr inbounds [256 x %struct.Basic_Info], ptr %5, i64 0, i64 %389
  %398 = load i64, ptr %397, align 4
  tail call fastcc void @toggle_move(i64 %398, i32 noundef %7) #30
  %399 = shl i64 %398, 32
  %400 = ashr exact i64 %399, 32
  %401 = ashr i64 %398, 32
  %402 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo.9]]], ptr @g_keyinfo, i64 0, i64 %27, i64 %400, i64 %401
  %403 = load i32, ptr %402, align 16, !tbaa !54
  %404 = and i32 %403, 31
  %405 = shl nuw i32 1, %404
  %406 = sdiv i32 %403, 32
  %407 = sext i32 %406 to i64
  %408 = getelementptr inbounds [4 x i32], ptr @g_norm_hashkey, i64 0, i64 %407
  %409 = load i32, ptr %408, align 4, !tbaa !15
  %410 = xor i32 %405, %409
  store i32 %410, ptr %408, align 4, !tbaa !15
  %411 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo.9]]], ptr @g_keyinfo, i64 0, i64 %27, i64 %400, i64 %401, i32 0, i32 1
  %412 = load i32, ptr %411, align 4, !tbaa !56
  %413 = and i32 %412, 31
  %414 = shl nuw i32 1, %413
  %415 = sdiv i32 %412, 32
  %416 = sext i32 %415 to i64
  %417 = getelementptr inbounds [4 x i32], ptr @g_norm_hashkey, i64 0, i64 %416
  %418 = load i32, ptr %417, align 4, !tbaa !15
  %419 = xor i32 %414, %418
  store i32 %419, ptr %417, align 4, !tbaa !15
  %420 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo.9]]], ptr @g_keyinfo, i64 0, i64 %27, i64 %400, i64 %401, i32 0, i32 2
  %421 = load i32, ptr %420, align 8, !tbaa !57
  %422 = load i32, ptr getelementptr inbounds (%struct.Hash_Key, ptr @g_norm_hashkey, i64 0, i32 1), align 8, !tbaa !58
  %423 = xor i32 %422, %421
  store i32 %423, ptr getelementptr inbounds (%struct.Hash_Key, ptr @g_norm_hashkey, i64 0, i32 1), align 8, !tbaa !58
  %424 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo.9]]], ptr @g_keyinfo, i64 0, i64 %27, i64 %400, i64 %401, i32 1
  %425 = load i32, ptr %424, align 4, !tbaa !60
  %426 = and i32 %425, 31
  %427 = shl nuw i32 1, %426
  %428 = sdiv i32 %425, 32
  %429 = sext i32 %428 to i64
  %430 = getelementptr inbounds [4 x i32], ptr @g_flipV_hashkey, i64 0, i64 %429
  %431 = load i32, ptr %430, align 4, !tbaa !15
  %432 = xor i32 %427, %431
  store i32 %432, ptr %430, align 4, !tbaa !15
  %433 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo.9]]], ptr @g_keyinfo, i64 0, i64 %27, i64 %400, i64 %401, i32 1, i32 1
  %434 = load i32, ptr %433, align 16, !tbaa !61
  %435 = and i32 %434, 31
  %436 = shl nuw i32 1, %435
  %437 = sdiv i32 %434, 32
  %438 = sext i32 %437 to i64
  %439 = getelementptr inbounds [4 x i32], ptr @g_flipV_hashkey, i64 0, i64 %438
  %440 = load i32, ptr %439, align 4, !tbaa !15
  %441 = xor i32 %436, %440
  store i32 %441, ptr %439, align 4, !tbaa !15
  %442 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo.9]]], ptr @g_keyinfo, i64 0, i64 %27, i64 %400, i64 %401, i32 1, i32 2
  %443 = load i32, ptr %442, align 4, !tbaa !62
  %444 = load i32, ptr getelementptr inbounds (%struct.Hash_Key, ptr @g_flipV_hashkey, i64 0, i32 1), align 8, !tbaa !58
  %445 = xor i32 %444, %443
  store i32 %445, ptr getelementptr inbounds (%struct.Hash_Key, ptr @g_flipV_hashkey, i64 0, i32 1), align 8, !tbaa !58
  %446 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo.9]]], ptr @g_keyinfo, i64 0, i64 %27, i64 %400, i64 %401, i32 2
  %447 = load i32, ptr %446, align 8, !tbaa !63
  %448 = and i32 %447, 31
  %449 = shl nuw i32 1, %448
  %450 = sdiv i32 %447, 32
  %451 = sext i32 %450 to i64
  %452 = getelementptr inbounds [4 x i32], ptr @g_flipH_hashkey, i64 0, i64 %451
  %453 = load i32, ptr %452, align 4, !tbaa !15
  %454 = xor i32 %449, %453
  store i32 %454, ptr %452, align 4, !tbaa !15
  %455 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo.9]]], ptr @g_keyinfo, i64 0, i64 %27, i64 %400, i64 %401, i32 2, i32 1
  %456 = load i32, ptr %455, align 4, !tbaa !64
  %457 = and i32 %456, 31
  %458 = shl nuw i32 1, %457
  %459 = sdiv i32 %456, 32
  %460 = sext i32 %459 to i64
  %461 = getelementptr inbounds [4 x i32], ptr @g_flipH_hashkey, i64 0, i64 %460
  %462 = load i32, ptr %461, align 4, !tbaa !15
  %463 = xor i32 %458, %462
  store i32 %463, ptr %461, align 4, !tbaa !15
  %464 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo.9]]], ptr @g_keyinfo, i64 0, i64 %27, i64 %400, i64 %401, i32 2, i32 2
  %465 = load i32, ptr %464, align 16, !tbaa !65
  %466 = load i32, ptr getelementptr inbounds (%struct.Hash_Key, ptr @g_flipH_hashkey, i64 0, i32 1), align 8, !tbaa !58
  %467 = xor i32 %466, %465
  store i32 %467, ptr getelementptr inbounds (%struct.Hash_Key, ptr @g_flipH_hashkey, i64 0, i32 1), align 8, !tbaa !58
  %468 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo.9]]], ptr @g_keyinfo, i64 0, i64 %27, i64 %400, i64 %401, i32 3
  %469 = load i32, ptr %468, align 4, !tbaa !66
  %470 = and i32 %469, 31
  %471 = shl nuw i32 1, %470
  %472 = sdiv i32 %469, 32
  %473 = sext i32 %472 to i64
  %474 = getelementptr inbounds [4 x i32], ptr @g_flipVH_hashkey, i64 0, i64 %473
  %475 = load i32, ptr %474, align 4, !tbaa !15
  %476 = xor i32 %471, %475
  store i32 %476, ptr %474, align 4, !tbaa !15
  %477 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo.9]]], ptr @g_keyinfo, i64 0, i64 %27, i64 %400, i64 %401, i32 3, i32 1
  %478 = load i32, ptr %477, align 8, !tbaa !67
  %479 = and i32 %478, 31
  %480 = shl nuw i32 1, %479
  %481 = sdiv i32 %478, 32
  %482 = sext i32 %481 to i64
  %483 = getelementptr inbounds [4 x i32], ptr @g_flipVH_hashkey, i64 0, i64 %482
  %484 = load i32, ptr %483, align 4, !tbaa !15
  %485 = xor i32 %480, %484
  store i32 %485, ptr %483, align 4, !tbaa !15
  %486 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo.9]]], ptr @g_keyinfo, i64 0, i64 %27, i64 %400, i64 %401, i32 3, i32 2
  %487 = load i32, ptr %486, align 4, !tbaa !68
  %488 = load i32, ptr getelementptr inbounds (%struct.Hash_Key, ptr @g_flipVH_hashkey, i64 0, i32 1), align 8, !tbaa !58
  %489 = xor i32 %488, %487
  store i32 %489, ptr getelementptr inbounds (%struct.Hash_Key, ptr @g_flipVH_hashkey, i64 0, i32 1), align 8, !tbaa !58
  %490 = sub nsw i32 0, %388
  %491 = tail call fastcc i32 @negamax(i32 noundef %368, i32 noundef %369, i32 noundef %370, i32 noundef %490) #31
  %492 = sub nsw i32 0, %491
  %493 = load i32, ptr @g_empty_squares, align 4, !tbaa !15
  %494 = add nsw i32 %493, 2
  store i32 %494, ptr @g_empty_squares, align 4, !tbaa !15
  %495 = load i64, ptr %397, align 4
  tail call fastcc void @toggle_move(i64 %495, i32 noundef %7) #30
  %496 = shl i64 %495, 32
  %497 = ashr exact i64 %496, 32
  %498 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo.9]]], ptr @g_keyinfo, i64 0, i64 %27, i64 %497, i64 %401
  %499 = load i32, ptr %498, align 16, !tbaa !54
  %500 = and i32 %499, 31
  %501 = shl nuw i32 1, %500
  %502 = sdiv i32 %499, 32
  %503 = sext i32 %502 to i64
  %504 = getelementptr inbounds [4 x i32], ptr @g_norm_hashkey, i64 0, i64 %503
  %505 = load i32, ptr %504, align 4, !tbaa !15
  %506 = xor i32 %501, %505
  store i32 %506, ptr %504, align 4, !tbaa !15
  %507 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo.9]]], ptr @g_keyinfo, i64 0, i64 %27, i64 %497, i64 %401, i32 0, i32 1
  %508 = load i32, ptr %507, align 4, !tbaa !56
  %509 = and i32 %508, 31
  %510 = shl nuw i32 1, %509
  %511 = sdiv i32 %508, 32
  %512 = sext i32 %511 to i64
  %513 = getelementptr inbounds [4 x i32], ptr @g_norm_hashkey, i64 0, i64 %512
  %514 = load i32, ptr %513, align 4, !tbaa !15
  %515 = xor i32 %510, %514
  store i32 %515, ptr %513, align 4, !tbaa !15
  %516 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo.9]]], ptr @g_keyinfo, i64 0, i64 %27, i64 %497, i64 %401, i32 0, i32 2
  %517 = load i32, ptr %516, align 8, !tbaa !57
  %518 = load i32, ptr getelementptr inbounds (%struct.Hash_Key, ptr @g_norm_hashkey, i64 0, i32 1), align 8, !tbaa !58
  %519 = xor i32 %518, %517
  store i32 %519, ptr getelementptr inbounds (%struct.Hash_Key, ptr @g_norm_hashkey, i64 0, i32 1), align 8, !tbaa !58
  %520 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo.9]]], ptr @g_keyinfo, i64 0, i64 %27, i64 %497, i64 %401, i32 1
  %521 = load i32, ptr %520, align 4, !tbaa !60
  %522 = and i32 %521, 31
  %523 = shl nuw i32 1, %522
  %524 = sdiv i32 %521, 32
  %525 = sext i32 %524 to i64
  %526 = getelementptr inbounds [4 x i32], ptr @g_flipV_hashkey, i64 0, i64 %525
  %527 = load i32, ptr %526, align 4, !tbaa !15
  %528 = xor i32 %523, %527
  store i32 %528, ptr %526, align 4, !tbaa !15
  %529 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo.9]]], ptr @g_keyinfo, i64 0, i64 %27, i64 %497, i64 %401, i32 1, i32 1
  %530 = load i32, ptr %529, align 16, !tbaa !61
  %531 = and i32 %530, 31
  %532 = shl nuw i32 1, %531
  %533 = sdiv i32 %530, 32
  %534 = sext i32 %533 to i64
  %535 = getelementptr inbounds [4 x i32], ptr @g_flipV_hashkey, i64 0, i64 %534
  %536 = load i32, ptr %535, align 4, !tbaa !15
  %537 = xor i32 %532, %536
  store i32 %537, ptr %535, align 4, !tbaa !15
  %538 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo.9]]], ptr @g_keyinfo, i64 0, i64 %27, i64 %497, i64 %401, i32 1, i32 2
  %539 = load i32, ptr %538, align 4, !tbaa !62
  %540 = load i32, ptr getelementptr inbounds (%struct.Hash_Key, ptr @g_flipV_hashkey, i64 0, i32 1), align 8, !tbaa !58
  %541 = xor i32 %540, %539
  store i32 %541, ptr getelementptr inbounds (%struct.Hash_Key, ptr @g_flipV_hashkey, i64 0, i32 1), align 8, !tbaa !58
  %542 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo.9]]], ptr @g_keyinfo, i64 0, i64 %27, i64 %497, i64 %401, i32 2
  %543 = load i32, ptr %542, align 8, !tbaa !63
  %544 = and i32 %543, 31
  %545 = shl nuw i32 1, %544
  %546 = sdiv i32 %543, 32
  %547 = sext i32 %546 to i64
  %548 = getelementptr inbounds [4 x i32], ptr @g_flipH_hashkey, i64 0, i64 %547
  %549 = load i32, ptr %548, align 4, !tbaa !15
  %550 = xor i32 %545, %549
  store i32 %550, ptr %548, align 4, !tbaa !15
  %551 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo.9]]], ptr @g_keyinfo, i64 0, i64 %27, i64 %497, i64 %401, i32 2, i32 1
  %552 = load i32, ptr %551, align 4, !tbaa !64
  %553 = and i32 %552, 31
  %554 = shl nuw i32 1, %553
  %555 = sdiv i32 %552, 32
  %556 = sext i32 %555 to i64
  %557 = getelementptr inbounds [4 x i32], ptr @g_flipH_hashkey, i64 0, i64 %556
  %558 = load i32, ptr %557, align 4, !tbaa !15
  %559 = xor i32 %554, %558
  store i32 %559, ptr %557, align 4, !tbaa !15
  %560 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo.9]]], ptr @g_keyinfo, i64 0, i64 %27, i64 %497, i64 %401, i32 2, i32 2
  %561 = load i32, ptr %560, align 16, !tbaa !65
  %562 = load i32, ptr getelementptr inbounds (%struct.Hash_Key, ptr @g_flipH_hashkey, i64 0, i32 1), align 8, !tbaa !58
  %563 = xor i32 %562, %561
  store i32 %563, ptr getelementptr inbounds (%struct.Hash_Key, ptr @g_flipH_hashkey, i64 0, i32 1), align 8, !tbaa !58
  %564 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo.9]]], ptr @g_keyinfo, i64 0, i64 %27, i64 %497, i64 %401, i32 3
  %565 = load i32, ptr %564, align 4, !tbaa !66
  %566 = and i32 %565, 31
  %567 = shl nuw i32 1, %566
  %568 = sdiv i32 %565, 32
  %569 = sext i32 %568 to i64
  %570 = getelementptr inbounds [4 x i32], ptr @g_flipVH_hashkey, i64 0, i64 %569
  %571 = load i32, ptr %570, align 4, !tbaa !15
  %572 = xor i32 %567, %571
  store i32 %572, ptr %570, align 4, !tbaa !15
  %573 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo.9]]], ptr @g_keyinfo, i64 0, i64 %27, i64 %497, i64 %401, i32 3, i32 1
  %574 = load i32, ptr %573, align 8, !tbaa !67
  %575 = and i32 %574, 31
  %576 = shl nuw i32 1, %575
  %577 = sdiv i32 %574, 32
  %578 = sext i32 %577 to i64
  %579 = getelementptr inbounds [4 x i32], ptr @g_flipVH_hashkey, i64 0, i64 %578
  %580 = load i32, ptr %579, align 4, !tbaa !15
  %581 = xor i32 %576, %580
  store i32 %581, ptr %579, align 4, !tbaa !15
  %582 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo.9]]], ptr @g_keyinfo, i64 0, i64 %27, i64 %497, i64 %401, i32 3, i32 2
  %583 = load i32, ptr %582, align 4, !tbaa !68
  %584 = load i32, ptr getelementptr inbounds (%struct.Hash_Key, ptr @g_flipVH_hashkey, i64 0, i32 1), align 8, !tbaa !58
  %585 = xor i32 %584, %583
  store i32 %585, ptr getelementptr inbounds (%struct.Hash_Key, ptr @g_flipVH_hashkey, i64 0, i32 1), align 8, !tbaa !58
  %586 = icmp sgt i32 %343, %492
  br i1 %586, label %599, label %587

587:                                              ; preds = %387
  %.lcssa3 = phi i64 [ %389, %387 ]
  %.lcssa2 = phi i32 [ %394, %387 ]
  %.lcssa1 = phi ptr [ %397, %387 ]
  %.lcssa = phi i32 [ %492, %387 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %6, ptr noundef nonnull align 4 dereferenceable(12) %.lcssa1, i64 12, i1 false), !tbaa.struct !70
  %588 = load i32, ptr @starting_depth, align 4, !tbaa !15
  %589 = sub nsw i32 %588, %0
  %590 = sext i32 %589 to i64
  %591 = getelementptr inbounds [40 x i32], ptr @stat_cutoffs, i64 0, i64 %590
  %592 = load i32, ptr %591, align 4, !tbaa !15
  %593 = add nsw i32 %592, 1
  store i32 %593, ptr %591, align 4, !tbaa !15
  %594 = icmp slt i32 %.lcssa2, 5
  %595 = select i1 %594, i64 %.lcssa3, i64 5
  %596 = getelementptr inbounds [40 x [10 x i32]], ptr @stat_nth_try, i64 0, i64 %590, i64 %595
  %597 = load i32, ptr %596, align 4, !tbaa !15
  %598 = add nsw i32 %597, 1
  store i32 %598, ptr %596, align 4, !tbaa !15
  br label %607

599:                                              ; preds = %387
  %600 = icmp slt i32 %388, %492
  br i1 %600, label %601, label %602

601:                                              ; preds = %599
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %6, ptr noundef nonnull align 4 dereferenceable(12) %397, i64 12, i1 false), !tbaa.struct !70
  br label %602

602:                                              ; preds = %601, %599
  %603 = phi i32 [ %492, %601 ], [ %388, %599 ]
  %604 = add nsw i64 %389, 1
  %605 = trunc i64 %604 to i32
  %606 = icmp eq i32 %381, %605
  br i1 %606, label %607, label %387, !llvm.loop !112

607:                                              ; preds = %602, %587, %380
  %608 = phi i32 [ %372, %380 ], [ %.lcssa, %587 ], [ %492, %602 ]
  %609 = phi i32 [ %373, %380 ], [ %.lcssa, %587 ], [ %603, %602 ]
  %610 = phi i32 [ %375, %380 ], [ %.lcssa2, %587 ], [ %381, %602 ]
  %611 = icmp slt i32 %608, %343
  %612 = and i1 %382, %611
  br i1 %612, label %371, label %613, !llvm.loop !113

613:                                              ; preds = %607
  %.lcssa4 = phi i32 [ %609, %607 ]
  %614 = load i64, ptr @g_num_nodes, align 8, !tbaa !11
  %615 = and i64 %9, 4294967295
  %616 = sub i64 %614, %615
  %617 = lshr i64 %616, 5
  %618 = trunc i64 %617 to i32
  tail call fastcc void @hashstore(i32 noundef %.lcssa4, i32 noundef %2, i32 noundef %3, i32 noundef %618, i32 noundef %0, ptr noundef nonnull byval(%struct.Basic_Info) align 8 %6, i32 noundef %7) #30
  br label %619

619:                                              ; preds = %613, %355, %349, %333, %322, %314, %259, %248, %240, %185, %174, %166, %111, %100, %92, %43, %34, %21, %18
  %620 = phi i32 [ 5000, %34 ], [ -5000, %43 ], [ 5000, %349 ], [ -5000, %355 ], [ %.lcssa4, %613 ], [ 5000, %18 ], [ %25, %21 ], [ %319, %314 ], [ %245, %240 ], [ %171, %166 ], [ %97, %92 ], [ %105, %100 ], [ %116, %111 ], [ %179, %174 ], [ %190, %185 ], [ %253, %248 ], [ %264, %259 ], [ %327, %322 ], [ %338, %333 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #34
  call void @llvm.lifetime.end.p0(i64 3072, ptr nonnull %5) #34
  ret i32 %620
}

; Function Attrs: nofree nounwind optsize uwtable
define internal fastcc void @u64bit_to_string(i64 noundef %0) unnamed_addr #16 {
  %2 = alloca [10 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #34
  br label %3

3:                                                ; preds = %3, %1
  %4 = phi i64 [ %10, %3 ], [ 0, %1 ]
  %5 = phi i64 [ %9, %3 ], [ %0, %1 ]
  %6 = urem i64 %5, 1000
  %7 = trunc i64 %6 to i32
  %8 = getelementptr inbounds [10 x i32], ptr %2, i64 0, i64 %4
  store i32 %7, ptr %8, align 4, !tbaa !15
  %9 = udiv i64 %5, 1000
  %10 = add nuw i64 %4, 1
  %11 = icmp ult i64 %5, 1000
  br i1 %11, label %12, label %3, !llvm.loop !114

12:                                               ; preds = %3
  %.lcssa1 = phi i64 [ %4, %3 ]
  %.lcssa = phi i32 [ %7, %3 ]
  %13 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @u64bit_to_string.big_num, ptr noundef nonnull dereferenceable(1) @.str.9.111, i32 noundef %.lcssa) #30
  %14 = and i64 %.lcssa1, 4294967295
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %27, label %16

16:                                               ; preds = %16, %12
  %17 = phi i64 [ %21, %16 ], [ %.lcssa1, %12 ]
  %18 = phi i32 [ %25, %16 ], [ %13, %12 ]
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8, ptr @u64bit_to_string.big_num, i64 %19
  %21 = add nsw i64 %17, -1
  %22 = getelementptr inbounds [10 x i32], ptr %2, i64 0, i64 %21
  %23 = load i32, ptr %22, align 4, !tbaa !15
  %24 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %20, ptr noundef nonnull dereferenceable(1) @.str.10.112, i32 noundef %23) #30
  %25 = add nsw i32 %24, %18
  %26 = icmp eq i64 %21, 0
  br i1 %26, label %27, label %16, !llvm.loop !115

27:                                               ; preds = %16, %12
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #34
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #17

; Function Attrs: nofree nounwind optsize uwtable
define internal fastcc void @print_stats() unnamed_addr #16 {
  %1 = load i32, ptr @cut1, align 4, !tbaa !15
  %2 = load i32, ptr @cut2, align 4, !tbaa !15
  %3 = load i32, ptr @cut3, align 4, !tbaa !15
  %4 = load i32, ptr @cut4, align 4, !tbaa !15
  %5 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9.46, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #31
  br label %6

6:                                                ; preds = %29, %0
  %7 = phi i64 [ 0, %0 ], [ %30, %29 ]
  %8 = getelementptr inbounds [40 x i32], ptr @stat_cutoffs, i64 0, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !15
  %10 = icmp eq i32 %9, 0
  %11 = getelementptr inbounds [40 x i32], ptr @stat_nodes, i64 0, i64 %7
  %12 = load i32, ptr %11, align 4, !tbaa !15
  %13 = icmp eq i32 %12, 0
  %14 = select i1 %10, i1 %13, i1 false
  br i1 %14, label %29, label %15

15:                                               ; preds = %6
  %16 = trunc i64 %7 to i32
  %17 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10.47, i32 noundef %16, i32 noundef %12, i32 noundef %9) #31
  br label %18

18:                                               ; preds = %18, %15
  %19 = phi i64 [ 0, %15 ], [ %23, %18 ]
  %20 = getelementptr inbounds [40 x [10 x i32]], ptr @stat_nth_try, i64 0, i64 %7, i64 %19
  %21 = load i32, ptr %20, align 4, !tbaa !15
  %22 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11.48, i32 noundef %21) #31
  %23 = add nuw nsw i64 %19, 1
  %24 = icmp eq i64 %23, 5
  br i1 %24, label %25, label %18, !llvm.loop !116

25:                                               ; preds = %18
  %26 = getelementptr inbounds [40 x [10 x i32]], ptr @stat_nth_try, i64 0, i64 %7, i64 5
  %27 = load i32, ptr %26, align 4, !tbaa !15
  %28 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12.49, i32 noundef %27) #31
  br label %29

29:                                               ; preds = %25, %6
  %30 = add nuw nsw i64 %7, 1
  %31 = icmp eq i64 %30, 40
  br i1 %31, label %32, label %6, !llvm.loop !117

32:                                               ; preds = %29
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #18

; Function Attrs: nounwind optsize
declare i32 @sigemptyset(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind optsize
declare i32 @sigaddset(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind optsize
declare i32 @sigprocmask(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #19

; Function Attrs: nofree nounwind optsize
declare noundef i32 @getchar() local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @does_next_player_win(i32 noundef %0) unnamed_addr #20 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [32 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #34
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #34
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #34
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #34
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #34
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #34
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #34
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #34
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %10) #34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %10, i8 0, i64 128, i1 false), !tbaa !15
  %11 = zext i32 %0 to i64
  %12 = getelementptr inbounds [2 x %struct.Basic_Info], ptr @g_info_totals, i64 0, i64 %11
  %13 = load i32, ptr %12, align 4, !tbaa !33
  %14 = load i32, ptr @g_empty_squares, align 4, !tbaa !15
  %15 = getelementptr inbounds [2 x i32], ptr @g_board_size, i64 0, i64 %11
  %16 = load i32, ptr %15, align 4, !tbaa !15
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %82

18:                                               ; preds = %1
  %19 = zext i32 %16 to i64
  %20 = getelementptr inbounds [2 x [32 x i32]], ptr @g_board, i64 0, i64 %11, i64 1
  %21 = load i32, ptr %20, align 4, !tbaa !15
  %22 = getelementptr inbounds [2 x [32 x i32]], ptr @g_board, i64 0, i64 %11, i64 2
  %23 = load i32, ptr %22, align 8, !tbaa !15
  br label %30

24:                                               ; preds = %67
  %.lcssa2 = phi i32 [ %78, %67 ]
  %.lcssa1 = phi i32 [ %79, %67 ]
  %.lcssa = phi i32 [ %80, %67 ]
  store i32 %.lcssa2, ptr %39, align 4, !tbaa !15
  store i32 %.lcssa1, ptr %41, align 4, !tbaa !15
  br label %25

25:                                               ; preds = %30, %24
  %26 = phi i32 [ %.lcssa1, %24 ], [ %33, %30 ]
  %27 = phi i32 [ %.lcssa2, %24 ], [ %34, %30 ]
  %28 = phi i32 [ %.lcssa, %24 ], [ %37, %30 ]
  %29 = icmp eq i64 %38, %19
  br i1 %29, label %82, label %30, !llvm.loop !118

30:                                               ; preds = %25, %18
  %31 = phi i32 [ %23, %18 ], [ %57, %25 ]
  %32 = phi i32 [ %21, %18 ], [ %31, %25 ]
  %33 = phi i32 [ 0, %18 ], [ %44, %25 ]
  %34 = phi i32 [ 0, %18 ], [ %26, %25 ]
  %35 = phi i32 [ 0, %18 ], [ %27, %25 ]
  %36 = phi i64 [ 0, %18 ], [ %38, %25 ]
  %37 = phi i32 [ 0, %18 ], [ %28, %25 ]
  %38 = add nuw nsw i64 %36, 1
  %39 = getelementptr inbounds i32, ptr %10, i64 %38
  %40 = add nuw nsw i64 %36, 2
  %41 = getelementptr inbounds i32, ptr %10, i64 %40
  %42 = add nuw nsw i64 %36, 3
  %43 = getelementptr inbounds i32, ptr %10, i64 %42
  %44 = load i32, ptr %43, align 4, !tbaa !15
  %45 = or i32 %32, %35
  %46 = or i32 %45, %31
  %47 = or i32 %46, %33
  %48 = or i32 %47, %34
  %49 = or i32 %48, %44
  %50 = lshr i32 %49, 1
  %51 = or i32 %50, %49
  %52 = getelementptr inbounds [2 x [32 x i32]], ptr @g_board, i64 0, i64 %11, i64 %36
  %53 = load i32, ptr %52, align 4, !tbaa !15
  %54 = lshr i32 %53, 1
  %55 = and i32 %54, %53
  %56 = getelementptr inbounds [2 x [32 x i32]], ptr @g_board, i64 0, i64 %11, i64 %42
  %57 = load i32, ptr %56, align 4, !tbaa !15
  %58 = lshr i32 %57, 1
  %59 = and i32 %58, %57
  %60 = or i32 %59, %55
  %61 = xor i32 %51, -1
  %62 = and i32 %60, %61
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %25, label %64

64:                                               ; preds = %30
  %65 = load i32, ptr %39, align 4, !tbaa !15
  %66 = load i32, ptr %41, align 4, !tbaa !15
  br label %67

67:                                               ; preds = %67, %64
  %68 = phi i32 [ %66, %64 ], [ %79, %67 ]
  %69 = phi i32 [ %65, %64 ], [ %78, %67 ]
  %70 = phi i32 [ %62, %64 ], [ %77, %67 ]
  %71 = phi i32 [ %37, %64 ], [ %80, %67 ]
  %72 = sub nsw i32 0, %70
  %73 = and i32 %70, %72
  %74 = shl nuw i32 %73, 1
  %75 = or i32 %74, %73
  %76 = xor i32 %75, -1
  %77 = and i32 %70, %76
  %78 = or i32 %75, %69
  %79 = or i32 %75, %68
  %80 = add nsw i32 %71, 1
  %81 = icmp eq i32 %77, 0
  br i1 %81, label %24, label %67, !llvm.loop !119

82:                                               ; preds = %25, %1
  %83 = phi i32 [ 0, %1 ], [ %28, %25 ]
  call fastcc void @pack_vuln(ptr noundef nonnull %10, i32 noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6) #31
  call fastcc void @pack_safe(ptr noundef nonnull %10, i32 noundef %0, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9) #31
  %84 = and i32 %83, -2147483647
  %85 = icmp eq i32 %84, 1
  br i1 %85, label %86, label %90

86:                                               ; preds = %82
  %87 = add nsw i32 %83, -1
  %88 = add nsw i32 %13, 2
  %89 = load i32, ptr %2, align 4, !tbaa !15
  br label %159

90:                                               ; preds = %82
  %91 = load i32, ptr %2, align 4, !tbaa !15
  %92 = srem i32 %91, 3
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %101, label %94

94:                                               ; preds = %90
  %95 = add nsw i32 %91, -1
  %96 = add nsw i32 %13, 1
  %97 = load i32, ptr %3, align 4, !tbaa !15
  %98 = icmp slt i32 %97, %91
  br i1 %98, label %159, label %99

99:                                               ; preds = %94
  %100 = add nsw i32 %97, -1
  store i32 %100, ptr %3, align 4, !tbaa !15
  br label %159

101:                                              ; preds = %90
  %102 = load i32, ptr %4, align 4, !tbaa !15
  %103 = and i32 %102, 1
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %112, label %105

105:                                              ; preds = %101
  %106 = add nsw i32 %102, -1
  store i32 %106, ptr %4, align 4, !tbaa !15
  %107 = add nsw i32 %13, 1
  %108 = load i32, ptr %5, align 4, !tbaa !15
  %109 = icmp slt i32 %108, %102
  br i1 %109, label %159, label %110

110:                                              ; preds = %105
  %111 = add nsw i32 %108, -1
  store i32 %111, ptr %5, align 4, !tbaa !15
  br label %159

112:                                              ; preds = %101
  %113 = load i32, ptr %7, align 4, !tbaa !15
  %114 = and i32 %113, 1
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %120, label %116

116:                                              ; preds = %112
  %117 = add nsw i32 %113, -1
  store i32 %117, ptr %7, align 4, !tbaa !15
  %118 = load i32, ptr %6, align 4, !tbaa !15
  %119 = add nsw i32 %118, 3
  store i32 %119, ptr %6, align 4, !tbaa !15
  br label %159

120:                                              ; preds = %112
  %121 = load i32, ptr %8, align 4, !tbaa !15
  %122 = and i32 %121, 1
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %128, label %124

124:                                              ; preds = %120
  %125 = add nsw i32 %121, -1
  store i32 %125, ptr %8, align 4, !tbaa !15
  %126 = load i32, ptr %6, align 4, !tbaa !15
  %127 = add nsw i32 %126, 2
  store i32 %127, ptr %6, align 4, !tbaa !15
  br label %159

128:                                              ; preds = %120
  %129 = load i32, ptr %9, align 4, !tbaa !15
  %130 = and i32 %129, 1
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %136, label %132

132:                                              ; preds = %128
  %133 = add nsw i32 %129, -1
  store i32 %133, ptr %9, align 4, !tbaa !15
  %134 = load i32, ptr %6, align 4, !tbaa !15
  %135 = add nsw i32 %134, 1
  store i32 %135, ptr %6, align 4, !tbaa !15
  br label %159

136:                                              ; preds = %128
  %137 = icmp sgt i32 %91, 0
  br i1 %137, label %138, label %145

138:                                              ; preds = %136
  %139 = add nsw i32 %91, -1
  %140 = add nsw i32 %13, 1
  %141 = load i32, ptr %3, align 4, !tbaa !15
  %142 = icmp slt i32 %141, %91
  br i1 %142, label %159, label %143

143:                                              ; preds = %138
  %144 = add nsw i32 %141, -1
  store i32 %144, ptr %3, align 4, !tbaa !15
  br label %159

145:                                              ; preds = %136
  %146 = icmp sgt i32 %102, 0
  br i1 %146, label %147, label %154

147:                                              ; preds = %145
  %148 = add nsw i32 %102, -1
  store i32 %148, ptr %4, align 4, !tbaa !15
  %149 = add nsw i32 %13, 1
  %150 = load i32, ptr %5, align 4, !tbaa !15
  %151 = icmp slt i32 %150, %102
  br i1 %151, label %159, label %152

152:                                              ; preds = %147
  %153 = add nsw i32 %150, -1
  store i32 %153, ptr %5, align 4, !tbaa !15
  br label %159

154:                                              ; preds = %145
  %155 = icmp sgt i32 %83, 0
  br i1 %155, label %156, label %262

156:                                              ; preds = %154
  %157 = add nsw i32 %83, -1
  %158 = add nsw i32 %13, 2
  br label %159

159:                                              ; preds = %156, %152, %147, %143, %138, %132, %124, %116, %110, %105, %99, %94, %86
  %160 = phi i32 [ %89, %86 ], [ %139, %138 ], [ %139, %143 ], [ %91, %147 ], [ %91, %152 ], [ %91, %156 ], [ %91, %132 ], [ %91, %124 ], [ %91, %116 ], [ %91, %105 ], [ %91, %110 ], [ %95, %94 ], [ %95, %99 ]
  %161 = phi i32 [ %87, %86 ], [ %83, %138 ], [ %83, %143 ], [ %83, %147 ], [ %83, %152 ], [ %157, %156 ], [ %83, %132 ], [ %83, %124 ], [ %83, %116 ], [ %83, %105 ], [ %83, %110 ], [ %83, %94 ], [ %83, %99 ]
  %162 = phi i32 [ %88, %86 ], [ %140, %138 ], [ %140, %143 ], [ %149, %147 ], [ %149, %152 ], [ %158, %156 ], [ %13, %132 ], [ %13, %124 ], [ %13, %116 ], [ %107, %105 ], [ %107, %110 ], [ %96, %94 ], [ %96, %99 ]
  %163 = and i32 %161, -2147483647
  %164 = icmp eq i32 %163, 1
  %165 = add nsw i32 %160, 2
  %166 = select i1 %164, i32 %165, i32 %160
  %167 = sext i1 %164 to i32
  %168 = sdiv i32 %166, 3
  %169 = load i32, ptr %4, align 4, !tbaa !15
  %170 = sdiv i32 %169, 2
  %171 = add i32 %162, %161
  %172 = add i32 %171, %167
  %173 = add i32 %172, %170
  %174 = add i32 %173, %168
  %175 = srem i32 %166, 3
  %176 = icmp eq i32 %175, 0
  %177 = and i32 %169, 1
  %178 = icmp eq i32 %177, 0
  %179 = select i1 %176, i1 true, i1 %178
  br i1 %179, label %185, label %180

180:                                              ; preds = %159
  %181 = add nsw i32 %174, 1
  %182 = load i32, ptr %6, align 4, !tbaa !15
  %183 = add nsw i32 %182, -1
  store i32 %183, ptr %6, align 4, !tbaa !15
  %184 = load i32, ptr %7, align 4, !tbaa !15
  br label %188

185:                                              ; preds = %159
  %186 = select i1 %176, i1 %178, i1 false
  %187 = load i32, ptr %7, align 4, !tbaa !15
  br i1 %186, label %188, label %204

188:                                              ; preds = %185, %180
  %189 = phi i32 [ %184, %180 ], [ %187, %185 ]
  %190 = phi i32 [ %181, %180 ], [ %174, %185 ]
  %191 = and i32 %189, -2147483647
  %192 = icmp eq i32 %191, 1
  %193 = load i32, ptr %8, align 4, !tbaa !15
  %194 = sext i1 %192 to i32
  %195 = add nsw i32 %189, %194
  %196 = zext i1 %192 to i32
  %197 = add nsw i32 %193, %196
  %198 = and i32 %197, -2147483647
  %199 = icmp eq i32 %198, 1
  %200 = load i32, ptr %9, align 4, !tbaa !15
  br i1 %199, label %201, label %232

201:                                              ; preds = %188
  %202 = add nsw i32 %197, -1
  %203 = add nsw i32 %200, 1
  br label %232

204:                                              ; preds = %185
  %205 = and i32 %187, -2147483647
  %206 = icmp eq i32 %205, 1
  br i1 %206, label %207, label %217

207:                                              ; preds = %204
  %208 = load i32, ptr %6, align 4, !tbaa !15
  %209 = add nsw i32 %208, 3
  store i32 %209, ptr %6, align 4, !tbaa !15
  %210 = load i32, ptr %8, align 4, !tbaa !15
  %211 = and i32 %210, -2147483647
  %212 = icmp eq i32 %211, 1
  %213 = load i32, ptr %9, align 4, !tbaa !15
  br i1 %212, label %214, label %232

214:                                              ; preds = %207
  %215 = add nsw i32 %210, -1
  %216 = add nsw i32 %213, 1
  br label %232

217:                                              ; preds = %204
  %218 = load i32, ptr %8, align 4, !tbaa !15
  %219 = and i32 %218, -2147483647
  %220 = icmp eq i32 %219, 1
  br i1 %220, label %221, label %225

221:                                              ; preds = %217
  %222 = load i32, ptr %6, align 4, !tbaa !15
  %223 = add nsw i32 %222, 2
  store i32 %223, ptr %6, align 4, !tbaa !15
  %224 = load i32, ptr %9, align 4, !tbaa !15
  br label %232

225:                                              ; preds = %217
  %226 = load i32, ptr %9, align 4, !tbaa !15
  %227 = and i32 %226, -2147483647
  %228 = icmp eq i32 %227, 1
  br i1 %228, label %229, label %232

229:                                              ; preds = %225
  %230 = load i32, ptr %6, align 4, !tbaa !15
  %231 = add nsw i32 %230, 1
  store i32 %231, ptr %6, align 4, !tbaa !15
  br label %232

232:                                              ; preds = %229, %225, %221, %214, %207, %201, %188
  %233 = phi i32 [ %216, %214 ], [ %213, %207 ], [ %226, %225 ], [ %226, %229 ], [ %224, %221 ], [ %200, %188 ], [ %203, %201 ]
  %234 = phi i32 [ %215, %214 ], [ %210, %207 ], [ %218, %225 ], [ %218, %229 ], [ %218, %221 ], [ %197, %188 ], [ %202, %201 ]
  %235 = phi i32 [ %187, %214 ], [ %187, %207 ], [ %187, %225 ], [ %187, %229 ], [ %187, %221 ], [ %195, %188 ], [ %195, %201 ]
  %236 = phi i32 [ %174, %214 ], [ %174, %207 ], [ %174, %225 ], [ %174, %229 ], [ %174, %221 ], [ %190, %188 ], [ %190, %201 ]
  %237 = load i32, ptr %3, align 4, !tbaa !15
  %238 = sub nsw i32 %166, %237
  %239 = sdiv i32 %238, -3
  %240 = load i32, ptr %6, align 4, !tbaa !15
  %241 = load i32, ptr %5, align 4, !tbaa !15
  %242 = sub nsw i32 %169, %241
  %243 = sdiv i32 %242, -2
  %244 = sdiv i32 %235, 2
  %245 = sdiv i32 %234, -2
  %246 = sdiv i32 %233, -2
  %247 = mul i32 %244, -3
  %248 = sub i32 %245, %236
  %249 = shl i32 %248, 1
  %250 = add i32 %170, %14
  %251 = add i32 %250, %168
  %252 = add i32 %251, %246
  %253 = add i32 %252, %247
  %254 = add i32 %237, %240
  %255 = sub i32 %253, %254
  %256 = add i32 %255, %249
  %257 = add i32 %256, %239
  %258 = sub i32 %257, %241
  %259 = add i32 %258, %243
  %260 = sdiv i32 %259, -2
  %261 = add i32 %260, %236
  br label %262

262:                                              ; preds = %232, %154
  %263 = phi i32 [ -1, %154 ], [ %261, %232 ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %10) #34
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #34
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #34
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #34
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #34
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #34
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #34
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #34
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #34
  ret i32 %263
}

; Function Attrs: nofree nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @does_who_just_moved_win(i32 noundef %0) unnamed_addr #20 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [32 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #34
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #34
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #34
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #34
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #34
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #34
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #34
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #34
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %10) #34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %10, i8 0, i64 128, i1 false), !tbaa !15
  %11 = zext i32 %0 to i64
  %12 = getelementptr inbounds [2 x %struct.Basic_Info], ptr @g_info_totals, i64 0, i64 %11
  %13 = load i32, ptr %12, align 4, !tbaa !33
  %14 = load i32, ptr @g_empty_squares, align 4, !tbaa !15
  %15 = getelementptr inbounds [2 x i32], ptr @g_board_size, i64 0, i64 %11
  %16 = load i32, ptr %15, align 4, !tbaa !15
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %82

18:                                               ; preds = %1
  %19 = zext i32 %16 to i64
  %20 = getelementptr inbounds [2 x [32 x i32]], ptr @g_board, i64 0, i64 %11, i64 1
  %21 = load i32, ptr %20, align 4, !tbaa !15
  %22 = getelementptr inbounds [2 x [32 x i32]], ptr @g_board, i64 0, i64 %11, i64 2
  %23 = load i32, ptr %22, align 8, !tbaa !15
  br label %30

24:                                               ; preds = %67
  %.lcssa2 = phi i32 [ %78, %67 ]
  %.lcssa1 = phi i32 [ %79, %67 ]
  %.lcssa = phi i32 [ %80, %67 ]
  store i32 %.lcssa2, ptr %39, align 4, !tbaa !15
  store i32 %.lcssa1, ptr %41, align 4, !tbaa !15
  br label %25

25:                                               ; preds = %30, %24
  %26 = phi i32 [ %.lcssa1, %24 ], [ %33, %30 ]
  %27 = phi i32 [ %.lcssa2, %24 ], [ %34, %30 ]
  %28 = phi i32 [ %.lcssa, %24 ], [ %37, %30 ]
  %29 = icmp eq i64 %38, %19
  br i1 %29, label %82, label %30, !llvm.loop !118

30:                                               ; preds = %25, %18
  %31 = phi i32 [ %23, %18 ], [ %57, %25 ]
  %32 = phi i32 [ %21, %18 ], [ %31, %25 ]
  %33 = phi i32 [ 0, %18 ], [ %44, %25 ]
  %34 = phi i32 [ 0, %18 ], [ %26, %25 ]
  %35 = phi i32 [ 0, %18 ], [ %27, %25 ]
  %36 = phi i64 [ 0, %18 ], [ %38, %25 ]
  %37 = phi i32 [ 0, %18 ], [ %28, %25 ]
  %38 = add nuw nsw i64 %36, 1
  %39 = getelementptr inbounds i32, ptr %10, i64 %38
  %40 = add nuw nsw i64 %36, 2
  %41 = getelementptr inbounds i32, ptr %10, i64 %40
  %42 = add nuw nsw i64 %36, 3
  %43 = getelementptr inbounds i32, ptr %10, i64 %42
  %44 = load i32, ptr %43, align 4, !tbaa !15
  %45 = or i32 %32, %35
  %46 = or i32 %45, %31
  %47 = or i32 %46, %33
  %48 = or i32 %47, %34
  %49 = or i32 %48, %44
  %50 = lshr i32 %49, 1
  %51 = or i32 %50, %49
  %52 = getelementptr inbounds [2 x [32 x i32]], ptr @g_board, i64 0, i64 %11, i64 %36
  %53 = load i32, ptr %52, align 4, !tbaa !15
  %54 = lshr i32 %53, 1
  %55 = and i32 %54, %53
  %56 = getelementptr inbounds [2 x [32 x i32]], ptr @g_board, i64 0, i64 %11, i64 %42
  %57 = load i32, ptr %56, align 4, !tbaa !15
  %58 = lshr i32 %57, 1
  %59 = and i32 %58, %57
  %60 = or i32 %59, %55
  %61 = xor i32 %51, -1
  %62 = and i32 %60, %61
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %25, label %64

64:                                               ; preds = %30
  %65 = load i32, ptr %39, align 4, !tbaa !15
  %66 = load i32, ptr %41, align 4, !tbaa !15
  br label %67

67:                                               ; preds = %67, %64
  %68 = phi i32 [ %66, %64 ], [ %79, %67 ]
  %69 = phi i32 [ %65, %64 ], [ %78, %67 ]
  %70 = phi i32 [ %62, %64 ], [ %77, %67 ]
  %71 = phi i32 [ %37, %64 ], [ %80, %67 ]
  %72 = sub nsw i32 0, %70
  %73 = and i32 %70, %72
  %74 = shl nuw i32 %73, 1
  %75 = or i32 %74, %73
  %76 = xor i32 %75, -1
  %77 = and i32 %70, %76
  %78 = or i32 %75, %69
  %79 = or i32 %75, %68
  %80 = add nsw i32 %71, 1
  %81 = icmp eq i32 %77, 0
  br i1 %81, label %24, label %67, !llvm.loop !119

82:                                               ; preds = %25, %1
  %83 = phi i32 [ 0, %1 ], [ %28, %25 ]
  call fastcc void @pack_vuln(ptr noundef nonnull %10, i32 noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6) #31
  call fastcc void @pack_safe(ptr noundef nonnull %10, i32 noundef %0, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9) #31
  %84 = load i32, ptr %2, align 4, !tbaa !15
  %85 = and i32 %83, -2147483647
  %86 = icmp eq i32 %85, 1
  %87 = add nsw i32 %84, 2
  %88 = select i1 %86, i32 %87, i32 %84
  %89 = sext i1 %86 to i32
  %90 = sdiv i32 %88, 3
  %91 = load i32, ptr %4, align 4, !tbaa !15
  %92 = sdiv i32 %91, 2
  %93 = add i32 %83, %13
  %94 = add i32 %93, %89
  %95 = add i32 %94, %92
  %96 = add i32 %95, %90
  %97 = srem i32 %88, 3
  %98 = icmp eq i32 %97, 0
  %99 = and i32 %91, 1
  %100 = icmp eq i32 %99, 0
  %101 = select i1 %98, i1 true, i1 %100
  br i1 %101, label %107, label %102

102:                                              ; preds = %82
  %103 = add nsw i32 %96, 1
  %104 = load i32, ptr %6, align 4, !tbaa !15
  %105 = add nsw i32 %104, -1
  store i32 %105, ptr %6, align 4, !tbaa !15
  %106 = load i32, ptr %7, align 4, !tbaa !15
  br label %110

107:                                              ; preds = %82
  %108 = select i1 %98, i1 %100, i1 false
  %109 = load i32, ptr %7, align 4, !tbaa !15
  br i1 %108, label %110, label %126

110:                                              ; preds = %107, %102
  %111 = phi i32 [ %106, %102 ], [ %109, %107 ]
  %112 = phi i32 [ %103, %102 ], [ %96, %107 ]
  %113 = and i32 %111, -2147483647
  %114 = icmp eq i32 %113, 1
  %115 = load i32, ptr %8, align 4, !tbaa !15
  %116 = sext i1 %114 to i32
  %117 = add nsw i32 %111, %116
  %118 = zext i1 %114 to i32
  %119 = add nsw i32 %115, %118
  %120 = and i32 %119, -2147483647
  %121 = icmp eq i32 %120, 1
  %122 = load i32, ptr %9, align 4, !tbaa !15
  br i1 %121, label %123, label %154

123:                                              ; preds = %110
  %124 = add nsw i32 %119, -1
  %125 = add nsw i32 %122, 1
  br label %154

126:                                              ; preds = %107
  %127 = and i32 %109, -2147483647
  %128 = icmp eq i32 %127, 1
  br i1 %128, label %129, label %139

129:                                              ; preds = %126
  %130 = load i32, ptr %6, align 4, !tbaa !15
  %131 = add nsw i32 %130, 3
  store i32 %131, ptr %6, align 4, !tbaa !15
  %132 = load i32, ptr %8, align 4, !tbaa !15
  %133 = and i32 %132, -2147483647
  %134 = icmp eq i32 %133, 1
  %135 = load i32, ptr %9, align 4, !tbaa !15
  br i1 %134, label %136, label %154

136:                                              ; preds = %129
  %137 = add nsw i32 %132, -1
  %138 = add nsw i32 %135, 1
  br label %154

139:                                              ; preds = %126
  %140 = load i32, ptr %8, align 4, !tbaa !15
  %141 = and i32 %140, -2147483647
  %142 = icmp eq i32 %141, 1
  br i1 %142, label %143, label %147

143:                                              ; preds = %139
  %144 = load i32, ptr %6, align 4, !tbaa !15
  %145 = add nsw i32 %144, 2
  store i32 %145, ptr %6, align 4, !tbaa !15
  %146 = load i32, ptr %9, align 4, !tbaa !15
  br label %154

147:                                              ; preds = %139
  %148 = load i32, ptr %9, align 4, !tbaa !15
  %149 = and i32 %148, -2147483647
  %150 = icmp eq i32 %149, 1
  br i1 %150, label %151, label %154

151:                                              ; preds = %147
  %152 = load i32, ptr %6, align 4, !tbaa !15
  %153 = add nsw i32 %152, 1
  store i32 %153, ptr %6, align 4, !tbaa !15
  br label %154

154:                                              ; preds = %151, %147, %143, %136, %129, %123, %110
  %155 = phi i32 [ %138, %136 ], [ %135, %129 ], [ %148, %147 ], [ %148, %151 ], [ %146, %143 ], [ %122, %110 ], [ %125, %123 ]
  %156 = phi i32 [ %137, %136 ], [ %132, %129 ], [ %140, %147 ], [ %140, %151 ], [ %140, %143 ], [ %119, %110 ], [ %124, %123 ]
  %157 = phi i32 [ %109, %136 ], [ %109, %129 ], [ %109, %147 ], [ %109, %151 ], [ %109, %143 ], [ %117, %110 ], [ %117, %123 ]
  %158 = phi i32 [ %96, %136 ], [ %96, %129 ], [ %96, %147 ], [ %96, %151 ], [ %96, %143 ], [ %112, %110 ], [ %112, %123 ]
  %159 = load i32, ptr %5, align 4, !tbaa !15
  %160 = sub nsw i32 %91, %159
  %161 = sdiv i32 %160, -2
  %162 = load i32, ptr %3, align 4, !tbaa !15
  %163 = load i32, ptr %6, align 4, !tbaa !15
  %164 = sub nsw i32 %88, %162
  %165 = sdiv i32 %164, -3
  %166 = sdiv i32 %157, 2
  %167 = sdiv i32 %156, -2
  %168 = sdiv i32 %155, -2
  %169 = mul i32 %166, -3
  %170 = sub i32 %167, %158
  %171 = shl i32 %170, 1
  %172 = add i32 %92, %14
  %173 = add i32 %172, %90
  %174 = add i32 %173, %168
  %175 = add i32 %174, %169
  %176 = add i32 %159, %162
  %177 = sub i32 %175, %176
  %178 = add i32 %177, %171
  %179 = add i32 %178, %161
  %180 = sub i32 %179, %163
  %181 = add i32 %180, %165
  %182 = sdiv i32 %181, -2
  %183 = add i32 %182, %158
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %10) #34
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #34
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #34
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #34
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #34
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #34
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #34
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #34
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #34
  ret i32 %183
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #17

; Function Attrs: nofree norecurse nosync nounwind optsize memory(read, argmem: write, inaccessiblemem: none) uwtable
define internal fastcc i32 @move_generator_stage1(ptr nocapture noundef writeonly %0, i32 noundef %1) unnamed_addr #21 {
  %3 = and i32 %1, 1
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds [2 x i32], ptr @g_board_size, i64 0, i64 %4
  %6 = load i32, ptr %5, align 4, !tbaa !15
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %65

8:                                                ; preds = %2
  %9 = zext i32 %6 to i64
  %10 = getelementptr inbounds [2 x [32 x i32]], ptr @g_board, i64 0, i64 %4, i64 0
  %11 = load i32, ptr %10, align 16, !tbaa !15
  %12 = getelementptr inbounds [2 x [32 x i32]], ptr @g_board, i64 0, i64 %4, i64 1
  %13 = load i32, ptr %12, align 4, !tbaa !15
  br label %19

14:                                               ; preds = %58
  %.lcssa = phi i64 [ %63, %58 ]
  %15 = trunc i64 %.lcssa to i32
  br label %16

16:                                               ; preds = %19, %14
  %17 = phi i32 [ %23, %19 ], [ %15, %14 ]
  %18 = icmp eq i64 %28, %9
  br i1 %18, label %65, label %19, !llvm.loop !120

19:                                               ; preds = %16, %8
  %20 = phi i32 [ %26, %16 ], [ %13, %8 ]
  %21 = phi i32 [ %20, %16 ], [ %11, %8 ]
  %22 = phi i64 [ %28, %16 ], [ 0, %8 ]
  %23 = phi i32 [ %17, %16 ], [ 0, %8 ]
  %24 = add nuw nsw i64 %22, 2
  %25 = getelementptr inbounds [2 x [32 x i32]], ptr @g_board, i64 0, i64 %4, i64 %24
  %26 = load i32, ptr %25, align 4, !tbaa !15
  %27 = and i32 %26, %21
  %28 = add nuw nsw i64 %22, 1
  %29 = or i32 %27, %20
  %30 = lshr i32 %29, 1
  %31 = or i32 %27, %30
  %32 = or i32 %31, %20
  %33 = icmp eq i32 %32, -1
  br i1 %33, label %16, label %34

34:                                               ; preds = %19
  %35 = xor i32 %32, -1
  %36 = sext i32 %23 to i64
  %37 = trunc i64 %28 to i32
  br label %38

38:                                               ; preds = %58, %34
  %39 = phi i64 [ %36, %34 ], [ %63, %58 ]
  %40 = phi i32 [ %35, %34 ], [ %43, %58 ]
  %41 = sub i32 0, %40
  %42 = and i32 %40, %41
  %43 = xor i32 %42, %40
  %44 = and i32 %42, 65535
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %38
  %47 = zext i32 %44 to i64
  %48 = getelementptr inbounds [65536 x i32], ptr @lastbit16, i64 0, i64 %47
  %49 = load i32, ptr %48, align 4, !tbaa !15
  br label %58

50:                                               ; preds = %38
  %51 = icmp ult i32 %42, 65536
  br i1 %51, label %58, label %52

52:                                               ; preds = %50
  %53 = lshr i32 %42, 16
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds [65536 x i32], ptr @lastbit16, i64 0, i64 %54
  %56 = load i32, ptr %55, align 4, !tbaa !15
  %57 = add nsw i32 %56, 16
  br label %58

58:                                               ; preds = %52, %50, %46
  %59 = phi i32 [ %49, %46 ], [ %57, %52 ], [ 100, %50 ]
  %60 = getelementptr inbounds %struct.Basic_Info, ptr %0, i64 %39
  %61 = getelementptr inbounds %struct.Basic_Info, ptr %0, i64 %39, i32 1
  store i32 %59, ptr %61, align 4, !tbaa !35
  store i32 %37, ptr %60, align 4, !tbaa !33
  %62 = getelementptr inbounds %struct.Basic_Info, ptr %0, i64 %39, i32 2
  store i32 0, ptr %62, align 4, !tbaa !37
  %63 = add i64 %39, 1
  %64 = icmp eq i32 %43, 0
  br i1 %64, label %14, label %38, !llvm.loop !121

65:                                               ; preds = %16, %2
  %66 = phi i32 [ 0, %2 ], [ %17, %16 ]
  ret i32 %66
}

; Function Attrs: nofree norecurse nosync nounwind optsize memory(read, argmem: write, inaccessiblemem: none) uwtable
define internal fastcc i32 @move_generator_stage2(ptr nocapture noundef writeonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #21 {
  %4 = and i32 %2, 1
  %5 = zext i32 %4 to i64
  %6 = getelementptr inbounds [2 x i32], ptr @g_board_size, i64 0, i64 %5
  %7 = load i32, ptr %6, align 4, !tbaa !15
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %68

9:                                                ; preds = %3
  %10 = zext i32 %7 to i64
  %11 = getelementptr inbounds [2 x [32 x i32]], ptr @g_board, i64 0, i64 %5, i64 0
  %12 = load i32, ptr %11, align 16, !tbaa !15
  %13 = getelementptr inbounds [2 x [32 x i32]], ptr @g_board, i64 0, i64 %5, i64 1
  %14 = load i32, ptr %13, align 4, !tbaa !15
  br label %20

15:                                               ; preds = %61
  %.lcssa = phi i64 [ %66, %61 ]
  %16 = trunc i64 %.lcssa to i32
  br label %17

17:                                               ; preds = %20, %15
  %18 = phi i32 [ %24, %20 ], [ %16, %15 ]
  %19 = icmp eq i64 %29, %10
  br i1 %19, label %68, label %20, !llvm.loop !122

20:                                               ; preds = %17, %9
  %21 = phi i32 [ %27, %17 ], [ %14, %9 ]
  %22 = phi i32 [ %21, %17 ], [ %12, %9 ]
  %23 = phi i64 [ %29, %17 ], [ 0, %9 ]
  %24 = phi i32 [ %18, %17 ], [ %1, %9 ]
  %25 = add nuw nsw i64 %23, 2
  %26 = getelementptr inbounds [2 x [32 x i32]], ptr @g_board, i64 0, i64 %5, i64 %25
  %27 = load i32, ptr %26, align 4, !tbaa !15
  %28 = and i32 %27, %22
  %29 = add nuw nsw i64 %23, 1
  %30 = lshr i32 %21, 1
  %31 = lshr i32 %28, 1
  %32 = xor i32 %28, %31
  %33 = xor i32 %32, -1
  %34 = or i32 %30, %33
  %35 = or i32 %34, %21
  %36 = icmp eq i32 %35, -1
  br i1 %36, label %17, label %37

37:                                               ; preds = %20
  %38 = xor i32 %35, -1
  %39 = sext i32 %24 to i64
  %40 = trunc i64 %29 to i32
  br label %41

41:                                               ; preds = %61, %37
  %42 = phi i64 [ %39, %37 ], [ %66, %61 ]
  %43 = phi i32 [ %38, %37 ], [ %46, %61 ]
  %44 = sub i32 0, %43
  %45 = and i32 %43, %44
  %46 = xor i32 %45, %43
  %47 = and i32 %45, 65535
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %41
  %50 = zext i32 %47 to i64
  %51 = getelementptr inbounds [65536 x i32], ptr @lastbit16, i64 0, i64 %50
  %52 = load i32, ptr %51, align 4, !tbaa !15
  br label %61

53:                                               ; preds = %41
  %54 = icmp ult i32 %45, 65536
  br i1 %54, label %61, label %55

55:                                               ; preds = %53
  %56 = lshr i32 %45, 16
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds [65536 x i32], ptr @lastbit16, i64 0, i64 %57
  %59 = load i32, ptr %58, align 4, !tbaa !15
  %60 = add nsw i32 %59, 16
  br label %61

61:                                               ; preds = %55, %53, %49
  %62 = phi i32 [ %52, %49 ], [ %60, %55 ], [ 100, %53 ]
  %63 = getelementptr inbounds %struct.Basic_Info, ptr %0, i64 %42
  %64 = getelementptr inbounds %struct.Basic_Info, ptr %0, i64 %42, i32 1
  store i32 %62, ptr %64, align 4, !tbaa !35
  store i32 %40, ptr %63, align 4, !tbaa !33
  %65 = getelementptr inbounds %struct.Basic_Info, ptr %0, i64 %42, i32 2
  store i32 0, ptr %65, align 4, !tbaa !37
  %66 = add i64 %42, 1
  %67 = icmp eq i32 %46, 0
  br i1 %67, label %15, label %41, !llvm.loop !123

68:                                               ; preds = %17, %3
  %69 = phi i32 [ %1, %3 ], [ %18, %17 ]
  ret i32 %69
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @hashstore(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nocapture noundef readonly byval(%struct.Basic_Info) align 8 %5, i32 noundef %6) unnamed_addr #22 {
  %8 = load i32, ptr getelementptr inbounds (%struct.Hash_Key, ptr @g_norm_hashkey, i64 0, i32 1), align 8, !tbaa !58
  %9 = load ptr, ptr @g_trans_table, align 8, !tbaa !7
  %10 = sext i32 %8 to i64
  %11 = getelementptr inbounds %struct.Hash_Entry.2, ptr %9, i64 %10
  %12 = load i32, ptr %11, align 4, !tbaa !15
  %13 = load i32, ptr @g_norm_hashkey, align 8, !tbaa !15
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %30

15:                                               ; preds = %7
  %16 = getelementptr inbounds [4 x i32], ptr %11, i64 0, i64 1
  %17 = load i32, ptr %16, align 4, !tbaa !15
  %18 = load i32, ptr getelementptr inbounds (%struct.Hash_Key, ptr @g_norm_hashkey, i64 0, i32 0, i64 1), align 4, !tbaa !15
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %30

20:                                               ; preds = %15
  %21 = getelementptr inbounds [4 x i32], ptr %11, i64 0, i64 2
  %22 = load i32, ptr %21, align 4, !tbaa !15
  %23 = load i32, ptr getelementptr inbounds (%struct.Hash_Key, ptr @g_norm_hashkey, i64 0, i32 0, i64 2), align 8, !tbaa !15
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %20
  %26 = getelementptr inbounds [4 x i32], ptr %11, i64 0, i64 3
  %27 = load i32, ptr %26, align 4, !tbaa !15
  %28 = load i32, ptr getelementptr inbounds (%struct.Hash_Key, ptr @g_norm_hashkey, i64 0, i32 0, i64 3), align 4, !tbaa !15
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %34, label %30

30:                                               ; preds = %25, %20, %15, %7
  %31 = getelementptr inbounds %struct.Hash_Entry.2, ptr %9, i64 %10, i32 1
  %32 = load i32, ptr %31, align 4, !tbaa !124
  %33 = icmp ugt i32 %32, %3
  br i1 %33, label %73, label %34

34:                                               ; preds = %30, %25
  store i32 %13, ptr %11, align 4, !tbaa !15
  %35 = load i32, ptr getelementptr inbounds (%struct.Hash_Key, ptr @g_norm_hashkey, i64 0, i32 0, i64 1), align 4, !tbaa !15
  %36 = getelementptr inbounds %struct.Hash_Entry.2, ptr %9, i64 %10, i32 0, i64 1
  store i32 %35, ptr %36, align 4, !tbaa !15
  %37 = load i32, ptr getelementptr inbounds (%struct.Hash_Key, ptr @g_norm_hashkey, i64 0, i32 0, i64 2), align 8, !tbaa !15
  %38 = getelementptr inbounds %struct.Hash_Entry.2, ptr %9, i64 %10, i32 0, i64 2
  store i32 %37, ptr %38, align 4, !tbaa !15
  %39 = load i32, ptr getelementptr inbounds (%struct.Hash_Key, ptr @g_norm_hashkey, i64 0, i32 0, i64 3), align 4, !tbaa !15
  %40 = getelementptr inbounds %struct.Hash_Entry.2, ptr %9, i64 %10, i32 0, i64 3
  store i32 %39, ptr %40, align 4, !tbaa !15
  %41 = getelementptr inbounds %struct.Hash_Entry.2, ptr %9, i64 %10, i32 1
  store i32 %3, ptr %41, align 4, !tbaa !124
  %42 = getelementptr inbounds %struct.Basic_Info, ptr %5, i64 0, i32 1
  %43 = load i32, ptr %42, align 4, !tbaa !35
  %44 = add i32 %43, 255
  %45 = zext i32 %6 to i64
  %46 = getelementptr inbounds [2 x i32], ptr @g_board_size, i64 0, i64 %45
  %47 = load i32, ptr %46, align 4, !tbaa !15
  %48 = mul i32 %44, %47
  %49 = load i32, ptr %5, align 8, !tbaa !33
  %50 = add i32 %49, 255
  %51 = add i32 %50, %48
  %52 = trunc i32 %51 to i8
  %53 = getelementptr inbounds %struct.Hash_Entry.2, ptr %9, i64 %10, i32 2
  store i8 %52, ptr %53, align 4, !tbaa !109
  %54 = getelementptr inbounds %struct.Hash_Entry.2, ptr %9, i64 %10, i32 3
  %55 = trunc i32 %4 to i24
  %56 = and i24 %55, 127
  %57 = trunc i32 %6 to i24
  %58 = shl nuw nsw i24 %57, 7
  %59 = and i24 %58, 128
  %60 = trunc i32 %0 to i24
  %61 = shl i24 %60, 8
  %62 = and i24 %61, 4194048
  %63 = or i24 %56, %62
  %64 = or i24 %63, %59
  %65 = icmp slt i32 %0, %2
  br i1 %65, label %67, label %66

66:                                               ; preds = %34
  store i24 %64, ptr %54, align 1
  br label %268

67:                                               ; preds = %34
  %68 = icmp sgt i32 %0, %1
  br i1 %68, label %69, label %71

69:                                               ; preds = %67
  %70 = or i24 %64, 4194304
  store i24 %70, ptr %54, align 1
  br label %268

71:                                               ; preds = %67
  %72 = or i24 %64, -8388608
  store i24 %72, ptr %54, align 1
  br label %268

73:                                               ; preds = %30
  %74 = load i32, ptr getelementptr inbounds (%struct.Hash_Key, ptr @g_flipV_hashkey, i64 0, i32 1), align 8, !tbaa !58
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.Hash_Entry.2, ptr %9, i64 %75
  %77 = load i32, ptr %76, align 4, !tbaa !15
  %78 = load i32, ptr @g_flipV_hashkey, align 8, !tbaa !15
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %95

80:                                               ; preds = %73
  %81 = getelementptr inbounds [4 x i32], ptr %76, i64 0, i64 1
  %82 = load i32, ptr %81, align 4, !tbaa !15
  %83 = load i32, ptr getelementptr inbounds (%struct.Hash_Key, ptr @g_flipV_hashkey, i64 0, i32 0, i64 1), align 4, !tbaa !15
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %95

85:                                               ; preds = %80
  %86 = getelementptr inbounds [4 x i32], ptr %76, i64 0, i64 2
  %87 = load i32, ptr %86, align 4, !tbaa !15
  %88 = load i32, ptr getelementptr inbounds (%struct.Hash_Key, ptr @g_flipV_hashkey, i64 0, i32 0, i64 2), align 8, !tbaa !15
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %95

90:                                               ; preds = %85
  %91 = getelementptr inbounds [4 x i32], ptr %76, i64 0, i64 3
  %92 = load i32, ptr %91, align 4, !tbaa !15
  %93 = load i32, ptr getelementptr inbounds (%struct.Hash_Key, ptr @g_flipV_hashkey, i64 0, i32 0, i64 3), align 4, !tbaa !15
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %99, label %95

95:                                               ; preds = %90, %85, %80, %73
  %96 = getelementptr inbounds %struct.Hash_Entry.2, ptr %9, i64 %75, i32 1
  %97 = load i32, ptr %96, align 4, !tbaa !124
  %98 = icmp ugt i32 %97, %3
  br i1 %98, label %138, label %99

99:                                               ; preds = %95, %90
  store i32 %78, ptr %76, align 4, !tbaa !15
  %100 = load i32, ptr getelementptr inbounds (%struct.Hash_Key, ptr @g_flipV_hashkey, i64 0, i32 0, i64 1), align 4, !tbaa !15
  %101 = getelementptr inbounds %struct.Hash_Entry.2, ptr %9, i64 %75, i32 0, i64 1
  store i32 %100, ptr %101, align 4, !tbaa !15
  %102 = load i32, ptr getelementptr inbounds (%struct.Hash_Key, ptr @g_flipV_hashkey, i64 0, i32 0, i64 2), align 8, !tbaa !15
  %103 = getelementptr inbounds %struct.Hash_Entry.2, ptr %9, i64 %75, i32 0, i64 2
  store i32 %102, ptr %103, align 4, !tbaa !15
  %104 = load i32, ptr getelementptr inbounds (%struct.Hash_Key, ptr @g_flipV_hashkey, i64 0, i32 0, i64 3), align 4, !tbaa !15
  %105 = getelementptr inbounds %struct.Hash_Entry.2, ptr %9, i64 %75, i32 0, i64 3
  store i32 %104, ptr %105, align 4, !tbaa !15
  %106 = getelementptr inbounds %struct.Hash_Entry.2, ptr %9, i64 %75, i32 1
  store i32 %3, ptr %106, align 4, !tbaa !124
  %107 = getelementptr inbounds %struct.Basic_Info, ptr %5, i64 0, i32 1
  %108 = load i32, ptr %107, align 4, !tbaa !35
  %109 = add i32 %108, 255
  %110 = zext i32 %6 to i64
  %111 = getelementptr inbounds [2 x i32], ptr @g_board_size, i64 0, i64 %110
  %112 = load i32, ptr %111, align 4, !tbaa !15
  %113 = mul i32 %109, %112
  %114 = load i32, ptr %5, align 8, !tbaa !33
  %115 = add i32 %114, 255
  %116 = add i32 %115, %113
  %117 = trunc i32 %116 to i8
  %118 = getelementptr inbounds %struct.Hash_Entry.2, ptr %9, i64 %75, i32 2
  store i8 %117, ptr %118, align 4, !tbaa !109
  %119 = getelementptr inbounds %struct.Hash_Entry.2, ptr %9, i64 %75, i32 3
  %120 = trunc i32 %4 to i24
  %121 = and i24 %120, 127
  %122 = trunc i32 %6 to i24
  %123 = shl nuw nsw i24 %122, 7
  %124 = and i24 %123, 128
  %125 = trunc i32 %0 to i24
  %126 = shl i24 %125, 8
  %127 = and i24 %126, 4194048
  %128 = or i24 %121, %127
  %129 = or i24 %128, %124
  %130 = icmp slt i32 %0, %2
  br i1 %130, label %132, label %131

131:                                              ; preds = %99
  store i24 %129, ptr %119, align 1
  br label %268

132:                                              ; preds = %99
  %133 = icmp sgt i32 %0, %1
  br i1 %133, label %134, label %136

134:                                              ; preds = %132
  %135 = or i24 %129, 4194304
  store i24 %135, ptr %119, align 1
  br label %268

136:                                              ; preds = %132
  %137 = or i24 %129, -8388608
  store i24 %137, ptr %119, align 1
  br label %268

138:                                              ; preds = %95
  %139 = load i32, ptr getelementptr inbounds (%struct.Hash_Key, ptr @g_flipH_hashkey, i64 0, i32 1), align 8, !tbaa !58
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.Hash_Entry.2, ptr %9, i64 %140
  %142 = load i32, ptr %141, align 4, !tbaa !15
  %143 = load i32, ptr @g_flipH_hashkey, align 8, !tbaa !15
  %144 = icmp eq i32 %142, %143
  br i1 %144, label %145, label %160

145:                                              ; preds = %138
  %146 = getelementptr inbounds [4 x i32], ptr %141, i64 0, i64 1
  %147 = load i32, ptr %146, align 4, !tbaa !15
  %148 = load i32, ptr getelementptr inbounds (%struct.Hash_Key, ptr @g_flipH_hashkey, i64 0, i32 0, i64 1), align 4, !tbaa !15
  %149 = icmp eq i32 %147, %148
  br i1 %149, label %150, label %160

150:                                              ; preds = %145
  %151 = getelementptr inbounds [4 x i32], ptr %141, i64 0, i64 2
  %152 = load i32, ptr %151, align 4, !tbaa !15
  %153 = load i32, ptr getelementptr inbounds (%struct.Hash_Key, ptr @g_flipH_hashkey, i64 0, i32 0, i64 2), align 8, !tbaa !15
  %154 = icmp eq i32 %152, %153
  br i1 %154, label %155, label %160

155:                                              ; preds = %150
  %156 = getelementptr inbounds [4 x i32], ptr %141, i64 0, i64 3
  %157 = load i32, ptr %156, align 4, !tbaa !15
  %158 = load i32, ptr getelementptr inbounds (%struct.Hash_Key, ptr @g_flipH_hashkey, i64 0, i32 0, i64 3), align 4, !tbaa !15
  %159 = icmp eq i32 %157, %158
  br i1 %159, label %164, label %160

160:                                              ; preds = %155, %150, %145, %138
  %161 = getelementptr inbounds %struct.Hash_Entry.2, ptr %9, i64 %140, i32 1
  %162 = load i32, ptr %161, align 4, !tbaa !124
  %163 = icmp ugt i32 %162, %3
  br i1 %163, label %203, label %164

164:                                              ; preds = %160, %155
  store i32 %143, ptr %141, align 4, !tbaa !15
  %165 = load i32, ptr getelementptr inbounds (%struct.Hash_Key, ptr @g_flipH_hashkey, i64 0, i32 0, i64 1), align 4, !tbaa !15
  %166 = getelementptr inbounds %struct.Hash_Entry.2, ptr %9, i64 %140, i32 0, i64 1
  store i32 %165, ptr %166, align 4, !tbaa !15
  %167 = load i32, ptr getelementptr inbounds (%struct.Hash_Key, ptr @g_flipH_hashkey, i64 0, i32 0, i64 2), align 8, !tbaa !15
  %168 = getelementptr inbounds %struct.Hash_Entry.2, ptr %9, i64 %140, i32 0, i64 2
  store i32 %167, ptr %168, align 4, !tbaa !15
  %169 = load i32, ptr getelementptr inbounds (%struct.Hash_Key, ptr @g_flipH_hashkey, i64 0, i32 0, i64 3), align 4, !tbaa !15
  %170 = getelementptr inbounds %struct.Hash_Entry.2, ptr %9, i64 %140, i32 0, i64 3
  store i32 %169, ptr %170, align 4, !tbaa !15
  %171 = getelementptr inbounds %struct.Hash_Entry.2, ptr %9, i64 %140, i32 1
  store i32 %3, ptr %171, align 4, !tbaa !124
  %172 = getelementptr inbounds %struct.Basic_Info, ptr %5, i64 0, i32 1
  %173 = load i32, ptr %172, align 4, !tbaa !35
  %174 = add i32 %173, 255
  %175 = zext i32 %6 to i64
  %176 = getelementptr inbounds [2 x i32], ptr @g_board_size, i64 0, i64 %175
  %177 = load i32, ptr %176, align 4, !tbaa !15
  %178 = mul i32 %174, %177
  %179 = load i32, ptr %5, align 8, !tbaa !33
  %180 = add i32 %179, 255
  %181 = add i32 %180, %178
  %182 = trunc i32 %181 to i8
  %183 = getelementptr inbounds %struct.Hash_Entry.2, ptr %9, i64 %140, i32 2
  store i8 %182, ptr %183, align 4, !tbaa !109
  %184 = getelementptr inbounds %struct.Hash_Entry.2, ptr %9, i64 %140, i32 3
  %185 = trunc i32 %4 to i24
  %186 = and i24 %185, 127
  %187 = trunc i32 %6 to i24
  %188 = shl nuw nsw i24 %187, 7
  %189 = and i24 %188, 128
  %190 = trunc i32 %0 to i24
  %191 = shl i24 %190, 8
  %192 = and i24 %191, 4194048
  %193 = or i24 %186, %192
  %194 = or i24 %193, %189
  %195 = icmp slt i32 %0, %2
  br i1 %195, label %197, label %196

196:                                              ; preds = %164
  store i24 %194, ptr %184, align 1
  br label %268

197:                                              ; preds = %164
  %198 = icmp sgt i32 %0, %1
  br i1 %198, label %199, label %201

199:                                              ; preds = %197
  %200 = or i24 %194, 4194304
  store i24 %200, ptr %184, align 1
  br label %268

201:                                              ; preds = %197
  %202 = or i24 %194, -8388608
  store i24 %202, ptr %184, align 1
  br label %268

203:                                              ; preds = %160
  %204 = load i32, ptr getelementptr inbounds (%struct.Hash_Key, ptr @g_flipVH_hashkey, i64 0, i32 1), align 8, !tbaa !58
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds %struct.Hash_Entry.2, ptr %9, i64 %205
  %207 = load i32, ptr %206, align 4, !tbaa !15
  %208 = load i32, ptr @g_flipVH_hashkey, align 8, !tbaa !15
  %209 = icmp eq i32 %207, %208
  br i1 %209, label %210, label %225

210:                                              ; preds = %203
  %211 = getelementptr inbounds [4 x i32], ptr %206, i64 0, i64 1
  %212 = load i32, ptr %211, align 4, !tbaa !15
  %213 = load i32, ptr getelementptr inbounds (%struct.Hash_Key, ptr @g_flipVH_hashkey, i64 0, i32 0, i64 1), align 4, !tbaa !15
  %214 = icmp eq i32 %212, %213
  br i1 %214, label %215, label %225

215:                                              ; preds = %210
  %216 = getelementptr inbounds [4 x i32], ptr %206, i64 0, i64 2
  %217 = load i32, ptr %216, align 4, !tbaa !15
  %218 = load i32, ptr getelementptr inbounds (%struct.Hash_Key, ptr @g_flipVH_hashkey, i64 0, i32 0, i64 2), align 8, !tbaa !15
  %219 = icmp eq i32 %217, %218
  br i1 %219, label %220, label %225

220:                                              ; preds = %215
  %221 = getelementptr inbounds [4 x i32], ptr %206, i64 0, i64 3
  %222 = load i32, ptr %221, align 4, !tbaa !15
  %223 = load i32, ptr getelementptr inbounds (%struct.Hash_Key, ptr @g_flipVH_hashkey, i64 0, i32 0, i64 3), align 4, !tbaa !15
  %224 = icmp eq i32 %222, %223
  br i1 %224, label %229, label %225

225:                                              ; preds = %220, %215, %210, %203
  %226 = getelementptr inbounds %struct.Hash_Entry.2, ptr %9, i64 %205, i32 1
  %227 = load i32, ptr %226, align 4, !tbaa !124
  %228 = icmp ugt i32 %227, %3
  br i1 %228, label %268, label %229

229:                                              ; preds = %225, %220
  store i32 %208, ptr %206, align 4, !tbaa !15
  %230 = load i32, ptr getelementptr inbounds (%struct.Hash_Key, ptr @g_flipVH_hashkey, i64 0, i32 0, i64 1), align 4, !tbaa !15
  %231 = getelementptr inbounds %struct.Hash_Entry.2, ptr %9, i64 %205, i32 0, i64 1
  store i32 %230, ptr %231, align 4, !tbaa !15
  %232 = load i32, ptr getelementptr inbounds (%struct.Hash_Key, ptr @g_flipVH_hashkey, i64 0, i32 0, i64 2), align 8, !tbaa !15
  %233 = getelementptr inbounds %struct.Hash_Entry.2, ptr %9, i64 %205, i32 0, i64 2
  store i32 %232, ptr %233, align 4, !tbaa !15
  %234 = load i32, ptr getelementptr inbounds (%struct.Hash_Key, ptr @g_flipVH_hashkey, i64 0, i32 0, i64 3), align 4, !tbaa !15
  %235 = getelementptr inbounds %struct.Hash_Entry.2, ptr %9, i64 %205, i32 0, i64 3
  store i32 %234, ptr %235, align 4, !tbaa !15
  %236 = getelementptr inbounds %struct.Hash_Entry.2, ptr %9, i64 %205, i32 1
  store i32 %3, ptr %236, align 4, !tbaa !124
  %237 = getelementptr inbounds %struct.Basic_Info, ptr %5, i64 0, i32 1
  %238 = load i32, ptr %237, align 4, !tbaa !35
  %239 = add i32 %238, 255
  %240 = zext i32 %6 to i64
  %241 = getelementptr inbounds [2 x i32], ptr @g_board_size, i64 0, i64 %240
  %242 = load i32, ptr %241, align 4, !tbaa !15
  %243 = mul i32 %239, %242
  %244 = load i32, ptr %5, align 8, !tbaa !33
  %245 = add i32 %244, 255
  %246 = add i32 %245, %243
  %247 = trunc i32 %246 to i8
  %248 = getelementptr inbounds %struct.Hash_Entry.2, ptr %9, i64 %205, i32 2
  store i8 %247, ptr %248, align 4, !tbaa !109
  %249 = getelementptr inbounds %struct.Hash_Entry.2, ptr %9, i64 %205, i32 3
  %250 = trunc i32 %4 to i24
  %251 = and i24 %250, 127
  %252 = trunc i32 %6 to i24
  %253 = shl nuw nsw i24 %252, 7
  %254 = and i24 %253, 128
  %255 = trunc i32 %0 to i24
  %256 = shl i24 %255, 8
  %257 = and i24 %256, 4194048
  %258 = or i24 %251, %257
  %259 = or i24 %258, %254
  %260 = icmp slt i32 %0, %2
  br i1 %260, label %262, label %261

261:                                              ; preds = %229
  store i24 %259, ptr %249, align 1
  br label %268

262:                                              ; preds = %229
  %263 = icmp sgt i32 %0, %1
  br i1 %263, label %264, label %266

264:                                              ; preds = %262
  %265 = or i24 %259, 4194304
  store i24 %265, ptr %249, align 1
  br label %268

266:                                              ; preds = %262
  %267 = or i24 %259, -8388608
  store i24 %267, ptr %249, align 1
  br label %268

268:                                              ; preds = %266, %264, %261, %225, %201, %199, %196, %136, %134, %131, %71, %69, %66
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @pack_vuln(ptr nocapture noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5, ptr nocapture noundef writeonly %6) unnamed_addr #23 {
  %8 = zext i32 %1 to i64
  %9 = getelementptr inbounds [2 x i32], ptr @g_board_size, i64 0, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !15
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %170

12:                                               ; preds = %7
  %13 = load i32, ptr %0, align 4, !tbaa !15
  %14 = zext i32 %10 to i64
  %15 = getelementptr inbounds [2 x [32 x i32]], ptr @g_board, i64 0, i64 %8, i64 1
  %16 = load i32, ptr %15, align 4, !tbaa !15
  br label %17

17:                                               ; preds = %160, %12
  %18 = phi i32 [ %16, %12 ], [ %30, %160 ]
  %19 = phi i32 [ %13, %12 ], [ %165, %160 ]
  %20 = phi i64 [ 0, %12 ], [ %37, %160 ]
  %21 = phi i32 [ 0, %12 ], [ %161, %160 ]
  %22 = phi i32 [ 0, %12 ], [ %168, %160 ]
  %23 = phi i32 [ 0, %12 ], [ %167, %160 ]
  %24 = phi i32 [ 0, %12 ], [ %162, %160 ]
  %25 = phi i32 [ 0, %12 ], [ %166, %160 ]
  %26 = phi i32 [ 0, %12 ], [ %163, %160 ]
  %27 = phi i32 [ 0, %12 ], [ %164, %160 ]
  %28 = add nuw nsw i64 %20, 2
  %29 = getelementptr inbounds [2 x [32 x i32]], ptr @g_board, i64 0, i64 %8, i64 %28
  %30 = load i32, ptr %29, align 4, !tbaa !15
  %31 = shl i32 %30, 1
  %32 = lshr i32 %30, 1
  %33 = and i32 %31, %32
  %34 = or i32 %33, %30
  %35 = xor i32 %34, -1
  %36 = or i32 %19, %35
  %37 = add nuw nsw i64 %20, 1
  %38 = getelementptr inbounds i32, ptr %0, i64 %37
  %39 = load i32, ptr %38, align 4, !tbaa !15
  %40 = or i32 %39, %18
  %41 = getelementptr inbounds [2 x [32 x i32]], ptr @g_board, i64 0, i64 %8, i64 %20
  %42 = load i32, ptr %41, align 4, !tbaa !15
  %43 = and i32 %42, %30
  %44 = icmp eq i32 %40, -1
  br i1 %44, label %160, label %45

45:                                               ; preds = %17
  %46 = xor i32 %40, -1
  br label %47

47:                                               ; preds = %134, %45
  %48 = phi i32 [ %135, %134 ], [ %39, %45 ]
  %49 = phi i32 [ %141, %134 ], [ %21, %45 ]
  %50 = phi i32 [ %140, %134 ], [ 0, %45 ]
  %51 = phi i32 [ %85, %134 ], [ %22, %45 ]
  %52 = phi i32 [ %139, %134 ], [ %23, %45 ]
  %53 = phi i32 [ %138, %134 ], [ %24, %45 ]
  %54 = phi i32 [ %137, %134 ], [ %25, %45 ]
  %55 = phi i32 [ %136, %134 ], [ %26, %45 ]
  %56 = phi i32 [ %60, %134 ], [ %46, %45 ]
  %57 = phi i32 [ %59, %134 ], [ %27, %45 ]
  %58 = sub i32 0, %56
  %59 = and i32 %56, %58
  %60 = xor i32 %59, %56
  %61 = lshr i32 %59, 1
  %62 = and i32 %61, %57
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %81

64:                                               ; preds = %47
  switch i32 %50, label %81 [
    i32 1, label %65
    i32 3, label %68
  ]

65:                                               ; preds = %64
  %66 = add nsw i32 %51, 1
  %67 = or i32 %57, %48
  store i32 %67, ptr %38, align 4, !tbaa !15
  br label %81

68:                                               ; preds = %64
  %69 = shl i32 %49, 1
  %70 = or i32 %49, %48
  %71 = or i32 %70, %69
  store i32 %71, ptr %38, align 4, !tbaa !15
  %72 = and i32 %49, %36
  %73 = icmp eq i32 %72, 0
  %74 = and i32 %69, %36
  %75 = icmp eq i32 %74, 0
  %76 = select i1 %73, i1 %75, i1 false
  br i1 %76, label %79, label %77

77:                                               ; preds = %68
  %78 = add nsw i32 %54, 1
  br label %81

79:                                               ; preds = %68
  %80 = add nsw i32 %52, 1
  br label %81

81:                                               ; preds = %79, %77, %65, %64, %47
  %82 = phi i32 [ %48, %47 ], [ %67, %65 ], [ %71, %77 ], [ %71, %79 ], [ %48, %64 ]
  %83 = phi i32 [ %54, %47 ], [ %54, %65 ], [ %78, %77 ], [ %54, %79 ], [ %54, %64 ]
  %84 = phi i32 [ %52, %47 ], [ %52, %65 ], [ %52, %77 ], [ %80, %79 ], [ %52, %64 ]
  %85 = phi i32 [ %51, %47 ], [ %66, %65 ], [ %51, %77 ], [ %51, %79 ], [ %51, %64 ]
  %86 = phi i32 [ %50, %47 ], [ 0, %65 ], [ 0, %77 ], [ 0, %79 ], [ 0, %64 ]
  %87 = and i32 %43, %59
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %96, label %89

89:                                               ; preds = %81
  switch i32 %86, label %93 [
    i32 0, label %134
    i32 1, label %90
    i32 2, label %91
    i32 3, label %92
  ]

90:                                               ; preds = %89
  br label %134

91:                                               ; preds = %89
  br label %134

92:                                               ; preds = %89
  br label %134

93:                                               ; preds = %89
  %94 = icmp eq i32 %86, 4
  %95 = select i1 %94, i32 3, i32 %86
  br label %134

96:                                               ; preds = %81
  switch i32 %86, label %133 [
    i32 0, label %134
    i32 1, label %97
    i32 2, label %106
    i32 3, label %119
    i32 4, label %134
  ]

97:                                               ; preds = %96
  %98 = or i32 %61, %59
  %99 = or i32 %98, %82
  store i32 %99, ptr %38, align 4, !tbaa !15
  %100 = and i32 %98, %36
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %104, label %102

102:                                              ; preds = %97
  %103 = add nsw i32 %83, 1
  br label %134

104:                                              ; preds = %97
  %105 = add nsw i32 %84, 1
  br label %134

106:                                              ; preds = %96
  %107 = shl i32 %49, 1
  %108 = or i32 %107, %49
  %109 = or i32 %108, %82
  store i32 %109, ptr %38, align 4, !tbaa !15
  %110 = and i32 %49, %36
  %111 = icmp eq i32 %110, 0
  %112 = and i32 %107, %36
  %113 = icmp eq i32 %112, 0
  %114 = select i1 %111, i1 %113, i1 false
  br i1 %114, label %117, label %115

115:                                              ; preds = %106
  %116 = add nsw i32 %55, 1
  br label %134

117:                                              ; preds = %106
  %118 = add nsw i32 %53, 1
  br label %134

119:                                              ; preds = %96
  %120 = shl i32 %49, 1
  %121 = or i32 %120, %49
  %122 = or i32 %121, %82
  store i32 %122, ptr %38, align 4, !tbaa !15
  %123 = and i32 %49, %36
  %124 = icmp ne i32 %123, 0
  %125 = and i32 %120, %36
  %126 = icmp ne i32 %125, 0
  %127 = select i1 %124, i1 true, i1 %126
  %128 = zext i1 %127 to i32
  %129 = add nsw i32 %83, %128
  %130 = xor i1 %127, true
  %131 = zext i1 %130 to i32
  %132 = add nsw i32 %84, %131
  br label %134

133:                                              ; preds = %96
  br label %134

134:                                              ; preds = %133, %119, %117, %115, %104, %102, %96, %96, %93, %92, %91, %90, %89
  %135 = phi i32 [ %82, %90 ], [ %82, %91 ], [ %82, %92 ], [ %82, %93 ], [ %99, %102 ], [ %99, %104 ], [ %109, %115 ], [ %109, %117 ], [ %122, %119 ], [ %82, %89 ], [ %82, %96 ], [ %82, %133 ], [ %82, %96 ]
  %136 = phi i32 [ %55, %90 ], [ %55, %91 ], [ %55, %92 ], [ %55, %93 ], [ %55, %102 ], [ %55, %104 ], [ %116, %115 ], [ %55, %117 ], [ %55, %119 ], [ %55, %89 ], [ %55, %96 ], [ %55, %133 ], [ %55, %96 ]
  %137 = phi i32 [ %83, %90 ], [ %83, %91 ], [ %83, %92 ], [ %83, %93 ], [ %103, %102 ], [ %83, %104 ], [ %83, %115 ], [ %83, %117 ], [ %129, %119 ], [ %83, %89 ], [ %83, %96 ], [ %83, %133 ], [ %83, %96 ]
  %138 = phi i32 [ %53, %90 ], [ %53, %91 ], [ %53, %92 ], [ %53, %93 ], [ %53, %102 ], [ %53, %104 ], [ %53, %115 ], [ %118, %117 ], [ %53, %119 ], [ %53, %89 ], [ %53, %96 ], [ %53, %133 ], [ %53, %96 ]
  %139 = phi i32 [ %84, %90 ], [ %84, %91 ], [ %84, %92 ], [ %84, %93 ], [ %84, %102 ], [ %105, %104 ], [ %84, %115 ], [ %84, %117 ], [ %132, %119 ], [ %84, %89 ], [ %84, %96 ], [ %84, %133 ], [ %84, %96 ]
  %140 = phi i32 [ 0, %90 ], [ 3, %91 ], [ 4, %92 ], [ %95, %93 ], [ 0, %102 ], [ 0, %104 ], [ 0, %115 ], [ 0, %117 ], [ 2, %119 ], [ 1, %89 ], [ 2, %96 ], [ %86, %133 ], [ 2, %96 ]
  %141 = phi i32 [ %49, %90 ], [ %49, %91 ], [ %49, %92 ], [ %49, %93 ], [ %49, %102 ], [ %49, %104 ], [ %49, %115 ], [ %49, %117 ], [ %59, %119 ], [ %49, %89 ], [ %59, %96 ], [ %49, %133 ], [ %59, %96 ]
  %142 = icmp eq i32 %60, 0
  br i1 %142, label %143, label %47, !llvm.loop !125

143:                                              ; preds = %134
  %.lcssa8 = phi i32 [ %135, %134 ]
  %.lcssa7 = phi i32 [ %136, %134 ]
  %.lcssa6 = phi i32 [ %137, %134 ]
  %.lcssa5 = phi i32 [ %138, %134 ]
  %.lcssa4 = phi i32 [ %139, %134 ]
  %.lcssa3 = phi i32 [ %140, %134 ]
  %.lcssa2 = phi i32 [ %141, %134 ]
  %.lcssa1 = phi i32 [ %85, %134 ]
  %.lcssa = phi i32 [ %59, %134 ]
  switch i32 %.lcssa3, label %160 [
    i32 1, label %144
    i32 3, label %147
  ]

144:                                              ; preds = %143
  %145 = add nsw i32 %.lcssa1, 1
  %146 = or i32 %.lcssa8, %.lcssa
  store i32 %146, ptr %38, align 4, !tbaa !15
  br label %160

147:                                              ; preds = %143
  %148 = shl i32 %.lcssa2, 1
  %149 = or i32 %.lcssa2, %.lcssa8
  %150 = or i32 %149, %148
  store i32 %150, ptr %38, align 4, !tbaa !15
  %151 = and i32 %.lcssa2, %36
  %152 = icmp eq i32 %151, 0
  %153 = and i32 %148, %36
  %154 = icmp eq i32 %153, 0
  %155 = select i1 %152, i1 %154, i1 false
  br i1 %155, label %158, label %156

156:                                              ; preds = %147
  %157 = add nsw i32 %.lcssa6, 1
  br label %160

158:                                              ; preds = %147
  %159 = add nsw i32 %.lcssa4, 1
  br label %160

160:                                              ; preds = %158, %156, %144, %143, %17
  %161 = phi i32 [ %.lcssa2, %144 ], [ %.lcssa2, %156 ], [ %.lcssa2, %158 ], [ %.lcssa2, %143 ], [ %21, %17 ]
  %162 = phi i32 [ %.lcssa5, %144 ], [ %.lcssa5, %156 ], [ %.lcssa5, %158 ], [ %.lcssa5, %143 ], [ %24, %17 ]
  %163 = phi i32 [ %.lcssa7, %144 ], [ %.lcssa7, %156 ], [ %.lcssa7, %158 ], [ %.lcssa7, %143 ], [ %26, %17 ]
  %164 = phi i32 [ %.lcssa, %144 ], [ %.lcssa, %156 ], [ %.lcssa, %158 ], [ %.lcssa, %143 ], [ %27, %17 ]
  %165 = phi i32 [ %146, %144 ], [ %150, %156 ], [ %150, %158 ], [ %.lcssa8, %143 ], [ %39, %17 ]
  %166 = phi i32 [ %.lcssa6, %144 ], [ %157, %156 ], [ %.lcssa6, %158 ], [ %.lcssa6, %143 ], [ %25, %17 ]
  %167 = phi i32 [ %.lcssa4, %144 ], [ %.lcssa4, %156 ], [ %159, %158 ], [ %.lcssa4, %143 ], [ %23, %17 ]
  %168 = phi i32 [ %145, %144 ], [ %.lcssa1, %156 ], [ %.lcssa1, %158 ], [ %.lcssa1, %143 ], [ %22, %17 ]
  %169 = icmp eq i64 %37, %14
  br i1 %169, label %170, label %17, !llvm.loop !126

170:                                              ; preds = %160, %7
  %171 = phi i32 [ 0, %7 ], [ %163, %160 ]
  %172 = phi i32 [ 0, %7 ], [ %166, %160 ]
  %173 = phi i32 [ 0, %7 ], [ %162, %160 ]
  %174 = phi i32 [ 0, %7 ], [ %167, %160 ]
  %175 = phi i32 [ 0, %7 ], [ %168, %160 ]
  %176 = add nsw i32 %172, %171
  store i32 %176, ptr %2, align 4, !tbaa !15
  store i32 %172, ptr %3, align 4, !tbaa !15
  %177 = add nsw i32 %174, %173
  store i32 %177, ptr %4, align 4, !tbaa !15
  store i32 %174, ptr %5, align 4, !tbaa !15
  store i32 %175, ptr %6, align 4, !tbaa !15
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @pack_safe(ptr nocapture noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4) unnamed_addr #24 {
  %6 = zext i32 %1 to i64
  %7 = getelementptr inbounds [2 x i32], ptr @g_board_size, i64 0, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !15
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %144

10:                                               ; preds = %5
  %11 = getelementptr inbounds [2 x [32 x i32]], ptr @g_board, i64 0, i64 %6, i64 1
  %12 = load i32, ptr %11, align 4, !tbaa !15
  %13 = zext i32 %8 to i64
  br label %19

14:                                               ; preds = %137, %19
  %15 = phi i32 [ %24, %19 ], [ %140, %137 ]
  %16 = phi i32 [ %23, %19 ], [ %141, %137 ]
  %17 = phi i32 [ %22, %19 ], [ %142, %137 ]
  %18 = icmp eq i64 %31, %13
  br i1 %18, label %144, label %19, !llvm.loop !127

19:                                               ; preds = %14, %10
  %20 = phi i32 [ %12, %10 ], [ %29, %14 ]
  %21 = phi i64 [ 0, %10 ], [ %31, %14 ]
  %22 = phi i32 [ 0, %10 ], [ %17, %14 ]
  %23 = phi i32 [ 0, %10 ], [ %16, %14 ]
  %24 = phi i32 [ 0, %10 ], [ %15, %14 ]
  %25 = getelementptr inbounds [2 x [32 x i32]], ptr @g_board, i64 0, i64 %6, i64 %21
  %26 = load i32, ptr %25, align 4, !tbaa !15
  %27 = add nuw nsw i64 %21, 2
  %28 = getelementptr inbounds [2 x [32 x i32]], ptr @g_board, i64 0, i64 %6, i64 %27
  %29 = load i32, ptr %28, align 4, !tbaa !15
  %30 = and i32 %29, %26
  %31 = add nuw nsw i64 %21, 1
  %32 = getelementptr inbounds i32, ptr %0, i64 %31
  %33 = load i32, ptr %32, align 4, !tbaa !15
  %34 = or i32 %33, %20
  %35 = lshr i32 %34, 1
  %36 = or i32 %35, %34
  %37 = xor i32 %36, -1
  %38 = lshr i32 %30, 1
  %39 = and i32 %38, %37
  %40 = and i32 %39, %30
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %14, label %42

42:                                               ; preds = %19
  %43 = getelementptr inbounds i32, ptr %0, i64 %21
  %44 = getelementptr inbounds i32, ptr %0, i64 %27
  %45 = add nsw i64 %21, -1
  %46 = getelementptr inbounds [2 x [32 x i32]], ptr @g_board, i64 0, i64 %6, i64 %45
  %47 = add nuw nsw i64 %21, 3
  %48 = getelementptr inbounds [2 x [32 x i32]], ptr @g_board, i64 0, i64 %6, i64 %47
  %49 = load i32, ptr %43, align 4, !tbaa !15
  %50 = load i32, ptr %44, align 4, !tbaa !15
  %51 = or i32 %49, %50
  br label %52

52:                                               ; preds = %137, %42
  %53 = phi i32 [ %33, %42 ], [ %138, %137 ]
  %54 = phi i32 [ %22, %42 ], [ %142, %137 ]
  %55 = phi i32 [ %23, %42 ], [ %141, %137 ]
  %56 = phi i32 [ %24, %42 ], [ %140, %137 ]
  %57 = phi i32 [ %40, %42 ], [ %64, %137 ]
  %58 = phi i32 [ %34, %42 ], [ %139, %137 ]
  %59 = sub nsw i32 0, %57
  %60 = and i32 %57, %59
  %61 = shl nuw i32 %60, 1
  %62 = or i32 %61, %60
  %63 = xor i32 %62, -1
  %64 = and i32 %57, %63
  %65 = or i32 %62, %58
  %66 = or i32 %51, %65
  %67 = lshr i32 %60, 1
  %68 = and i32 %66, %67
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %101

70:                                               ; preds = %52
  %71 = or i32 %65, %67
  %72 = or i32 %67, %53
  store i32 %72, ptr %32, align 4, !tbaa !15
  %73 = and i32 %67, %26
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %90

75:                                               ; preds = %70
  %76 = load i32, ptr %46, align 4, !tbaa !15
  %77 = and i32 %76, %67
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %90, label %79

79:                                               ; preds = %75
  %80 = and i32 %67, %29
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %79
  %83 = load i32, ptr %48, align 4, !tbaa !15
  %84 = and i32 %83, %67
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %88, label %86

86:                                               ; preds = %82
  %87 = add nsw i32 %56, 1
  br label %137

88:                                               ; preds = %82, %79
  %89 = add nsw i32 %55, 1
  br label %137

90:                                               ; preds = %75, %70
  %91 = and i32 %67, %29
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %90
  %94 = load i32, ptr %48, align 4, !tbaa !15
  %95 = and i32 %94, %67
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %99, label %97

97:                                               ; preds = %93
  %98 = add nsw i32 %55, 1
  br label %137

99:                                               ; preds = %93, %90
  %100 = add nsw i32 %54, 1
  br label %137

101:                                              ; preds = %52
  %102 = or i32 %66, %57
  %103 = shl i32 %60, 2
  %104 = and i32 %102, %103
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %137

106:                                              ; preds = %101
  %107 = or i32 %65, %103
  %108 = or i32 %103, %53
  store i32 %108, ptr %32, align 4, !tbaa !15
  %109 = and i32 %103, %26
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %126

111:                                              ; preds = %106
  %112 = load i32, ptr %46, align 4, !tbaa !15
  %113 = and i32 %112, %103
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %126, label %115

115:                                              ; preds = %111
  %116 = and i32 %103, %29
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %124

118:                                              ; preds = %115
  %119 = load i32, ptr %48, align 4, !tbaa !15
  %120 = and i32 %119, %103
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %124, label %122

122:                                              ; preds = %118
  %123 = add nsw i32 %56, 1
  br label %137

124:                                              ; preds = %118, %115
  %125 = add nsw i32 %55, 1
  br label %137

126:                                              ; preds = %111, %106
  %127 = and i32 %103, %29
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %135

129:                                              ; preds = %126
  %130 = load i32, ptr %48, align 4, !tbaa !15
  %131 = and i32 %130, %103
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %135, label %133

133:                                              ; preds = %129
  %134 = add nsw i32 %55, 1
  br label %137

135:                                              ; preds = %129, %126
  %136 = add nsw i32 %54, 1
  br label %137

137:                                              ; preds = %135, %133, %124, %122, %101, %99, %97, %88, %86
  %138 = phi i32 [ %53, %101 ], [ %108, %135 ], [ %108, %133 ], [ %108, %124 ], [ %108, %122 ], [ %72, %99 ], [ %72, %97 ], [ %72, %88 ], [ %72, %86 ]
  %139 = phi i32 [ %65, %101 ], [ %107, %135 ], [ %107, %133 ], [ %107, %124 ], [ %107, %122 ], [ %71, %99 ], [ %71, %97 ], [ %71, %88 ], [ %71, %86 ]
  %140 = phi i32 [ %56, %101 ], [ %56, %135 ], [ %56, %133 ], [ %56, %124 ], [ %123, %122 ], [ %56, %99 ], [ %56, %97 ], [ %56, %88 ], [ %87, %86 ]
  %141 = phi i32 [ %55, %101 ], [ %55, %135 ], [ %134, %133 ], [ %125, %124 ], [ %55, %122 ], [ %55, %99 ], [ %98, %97 ], [ %89, %88 ], [ %55, %86 ]
  %142 = phi i32 [ %54, %101 ], [ %136, %135 ], [ %54, %133 ], [ %54, %124 ], [ %54, %122 ], [ %100, %99 ], [ %54, %97 ], [ %54, %88 ], [ %54, %86 ]
  %143 = icmp eq i32 %64, 0
  br i1 %143, label %14, label %52, !llvm.loop !128

144:                                              ; preds = %14, %5
  %145 = phi i32 [ 0, %5 ], [ %15, %14 ]
  %146 = phi i32 [ 0, %5 ], [ %16, %14 ]
  %147 = phi i32 [ 0, %5 ], [ %17, %14 ]
  store i32 %145, ptr %2, align 4, !tbaa !15
  store i32 %146, ptr %3, align 4, !tbaa !15
  store i32 %147, ptr %4, align 4, !tbaa !15
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @check_hashkey_bit_set(ptr nocapture noundef readonly byval(%struct.Hash_Key) align 8 %0, i32 noundef %1) unnamed_addr #0 {
  %3 = sdiv i32 %1, 32
  %4 = sext i32 %3 to i64
  %5 = getelementptr inbounds [4 x i32], ptr %0, i64 0, i64 %4
  %6 = load i32, ptr %5, align 4, !tbaa !15
  %7 = and i32 %1, 31
  %8 = shl nuw i32 1, %7
  %9 = and i32 %6, %8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %23

11:                                               ; preds = %2
  %12 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9.111, i32 noundef %1) #31
  tail call fastcc void @print_bitboard() #31
  %13 = load i32, ptr %0, align 8
  %14 = getelementptr inbounds i8, ptr %0, i64 4
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds i8, ptr %0, i64 8
  %17 = load i32, ptr %16, align 8
  %18 = getelementptr inbounds i8, ptr %0, i64 12
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds i8, ptr %0, i64 16
  %21 = load i32, ptr %20, align 8
  %22 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %13, i32 noundef %15, i32 noundef %17, i32 noundef %19, i32 noundef %21) #31
  tail call void (ptr, i32, i32, ptr, ...) @_fatal_error_aux(ptr noundef nonnull @.str.1, i32 noundef 23, i32 poison, ptr noundef nonnull @.str.28) #30
  unreachable

23:                                               ; preds = %2
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @check_hashkey_bit_not_set(ptr nocapture noundef readonly byval(%struct.Hash_Key) align 8 %0, i32 noundef %1) unnamed_addr #0 {
  %3 = sdiv i32 %1, 32
  %4 = sext i32 %3 to i64
  %5 = getelementptr inbounds [4 x i32], ptr %0, i64 0, i64 %4
  %6 = load i32, ptr %5, align 4, !tbaa !15
  %7 = and i32 %1, 31
  %8 = shl nuw i32 1, %7
  %9 = and i32 %6, %8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %23, label %11

11:                                               ; preds = %2
  %12 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9.111, i32 noundef %1) #31
  tail call fastcc void @print_bitboard() #31
  %13 = load i32, ptr %0, align 8
  %14 = getelementptr inbounds i8, ptr %0, i64 4
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds i8, ptr %0, i64 8
  %17 = load i32, ptr %16, align 8
  %18 = getelementptr inbounds i8, ptr %0, i64 12
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds i8, ptr %0, i64 16
  %21 = load i32, ptr %20, align 8
  %22 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %13, i32 noundef %15, i32 noundef %17, i32 noundef %19, i32 noundef %21) #31
  tail call void (ptr, i32, i32, ptr, ...) @_fatal_error_aux(ptr noundef nonnull @.str.1, i32 noundef 38, i32 poison, ptr noundef nonnull @.str.28) #30
  unreachable

23:                                               ; preds = %2
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @check_hashkey_code(ptr nocapture noundef readonly byval(%struct.Hash_Key) align 8 %0) unnamed_addr #0 {
  %2 = load i32, ptr @g_board_size, align 4, !tbaa !15
  %3 = getelementptr inbounds %struct.Hash_Key, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !58
  %5 = icmp sgt i32 %2, 0
  br i1 %5, label %6, label %44

6:                                                ; preds = %1
  %7 = load i32, ptr getelementptr inbounds ([2 x i32], ptr @g_board_size, i64 0, i64 1), align 4, !tbaa !15
  %8 = icmp sgt i32 %7, 0
  %9 = zext i32 %7 to i64
  %10 = zext i32 %2 to i64
  br label %11

11:                                               ; preds = %40, %6
  %12 = phi i64 [ 0, %6 ], [ %41, %40 ]
  %13 = phi i32 [ %4, %6 ], [ %42, %40 ]
  br i1 %8, label %16, label %14

14:                                               ; preds = %11
  %15 = add nuw nsw i64 %12, 1
  br label %40

16:                                               ; preds = %11
  %17 = mul i64 %12, %9
  %18 = add nuw nsw i64 %12, 1
  br label %19

19:                                               ; preds = %37, %16
  %20 = phi i64 [ 0, %16 ], [ %32, %37 ]
  %21 = phi i32 [ %13, %16 ], [ %38, %37 ]
  %22 = add i64 %20, %17
  %23 = trunc i64 %22 to i32
  %24 = sdiv i32 %23, 32
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [4 x i32], ptr %0, i64 0, i64 %25
  %27 = load i32, ptr %26, align 4, !tbaa !15
  %28 = and i32 %23, 31
  %29 = shl nuw i32 1, %28
  %30 = and i32 %29, %27
  %31 = icmp eq i32 %30, 0
  %32 = add nuw nsw i64 %20, 1
  br i1 %31, label %37, label %33

33:                                               ; preds = %19
  %34 = getelementptr inbounds [32 x [32 x i32]], ptr @g_zobrist, i64 0, i64 %18, i64 %32
  %35 = load i32, ptr %34, align 4, !tbaa !15
  %36 = xor i32 %35, %21
  br label %37

37:                                               ; preds = %33, %19
  %38 = phi i32 [ %36, %33 ], [ %21, %19 ]
  %39 = icmp eq i64 %32, %9
  br i1 %39, label %40, label %19, !llvm.loop !129

40:                                               ; preds = %37, %14
  %41 = phi i64 [ %15, %14 ], [ %18, %37 ]
  %42 = phi i32 [ %13, %14 ], [ %38, %37 ]
  %43 = icmp eq i64 %41, %10
  br i1 %43, label %44, label %11, !llvm.loop !130

44:                                               ; preds = %40, %1
  %45 = phi i32 [ %4, %1 ], [ %42, %40 ]
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %44
  tail call void (ptr, i32, i32, ptr, ...) @_fatal_error_aux(ptr noundef nonnull @.str.1, i32 noundef 59, i32 poison, ptr noundef nonnull @.str.29) #30
  unreachable

48:                                               ; preds = %44
  ret void
}

; Function Attrs: nofree nounwind optsize uwtable
define internal fastcc void @print_bitboard() unnamed_addr #16 {
  %1 = load i32, ptr @g_board_size, align 4, !tbaa !15
  %2 = icmp sgt i32 %1, -2
  br i1 %2, label %3, label %12

3:                                                ; preds = %3, %0
  %4 = phi i64 [ %8, %3 ], [ 0, %0 ]
  %5 = getelementptr inbounds [2 x [32 x i32]], ptr @g_board, i64 0, i64 0, i64 %4
  %6 = load i32, ptr %5, align 4, !tbaa !15
  %7 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.18, i32 noundef %6) #31
  %8 = add nuw nsw i64 %4, 1
  %9 = load i32, ptr @g_board_size, align 4, !tbaa !15
  %10 = sext i32 %9 to i64
  %11 = icmp sgt i64 %4, %10
  br i1 %11, label %12, label %3, !llvm.loop !131

12:                                               ; preds = %3, %0
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #17

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define internal fastcc i32 @score_move(i64 %0, i32 noundef %1) unnamed_addr #25 {
  %3 = trunc i64 %0 to i32
  %4 = lshr i64 %0, 32
  %5 = trunc i64 %4 to i32
  %6 = and i32 %1, 1
  %7 = xor i32 %1, 1
  %8 = shl i32 3, %5
  %9 = zext i32 %6 to i64
  %10 = shl i64 %0, 32
  %11 = ashr exact i64 %10, 32
  %12 = getelementptr inbounds [2 x [32 x i32]], ptr @g_board, i64 0, i64 %9, i64 %11
  %13 = load i32, ptr %12, align 4, !tbaa !15
  %14 = xor i32 %13, %8
  store i32 %14, ptr %12, align 4, !tbaa !15
  %15 = shl nuw i32 1, %3
  %16 = zext i32 %7 to i64
  %17 = ashr i64 %0, 32
  %18 = getelementptr inbounds [2 x [32 x i32]], ptr @g_board, i64 0, i64 %16, i64 %17
  %19 = load i32, ptr %18, align 4, !tbaa !15
  %20 = xor i32 %19, %15
  store i32 %20, ptr %18, align 4, !tbaa !15
  %21 = add nsw i32 %5, 1
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [2 x [32 x i32]], ptr @g_board, i64 0, i64 %16, i64 %22
  %24 = load i32, ptr %23, align 4, !tbaa !15
  %25 = xor i32 %24, %15
  store i32 %25, ptr %23, align 4, !tbaa !15
  %26 = load i32, ptr %12, align 4, !tbaa !15
  %27 = shl i32 %26, 1
  %28 = or i32 %27, %26
  %29 = xor i32 %28, -1
  %30 = and i32 %29, 65535
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds [65536 x i32], ptr @move_table16, i64 0, i64 %31
  %33 = load i32, ptr %32, align 4, !tbaa !15
  %34 = icmp ult i32 %33, 268435456
  %35 = lshr i32 %29, 16
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds [65536 x i32], ptr @move_table16, i64 0, i64 %36
  %38 = load i32, ptr %37, align 4, !tbaa !15
  %39 = add i32 %38, %33
  %40 = select i1 %34, i32 65535, i32 65534
  %41 = and i32 %39, %40
  %42 = getelementptr inbounds [2 x [32 x %struct.Basic_Info]], ptr @g_info, i64 0, i64 %9, i64 %11
  %43 = getelementptr inbounds [2 x [32 x %struct.Basic_Info]], ptr @g_info, i64 0, i64 %9, i64 %11, i32 1
  %44 = load i32, ptr %43, align 4, !tbaa !35
  %45 = load i32, ptr %18, align 4, !tbaa !15
  %46 = shl i32 %45, 1
  %47 = or i32 %46, %45
  %48 = xor i32 %47, -1
  %49 = and i32 %48, 65535
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds [65536 x i32], ptr @move_table16, i64 0, i64 %50
  %52 = load i32, ptr %51, align 4, !tbaa !15
  %53 = icmp ult i32 %52, 268435456
  %54 = lshr i32 %48, 16
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds [65536 x i32], ptr @move_table16, i64 0, i64 %55
  %57 = load i32, ptr %56, align 4, !tbaa !15
  %58 = add i32 %57, %52
  %59 = select i1 %53, i32 65535, i32 65534
  %60 = and i32 %58, %59
  %61 = getelementptr inbounds [2 x [32 x %struct.Basic_Info]], ptr @g_info, i64 0, i64 %16, i64 %17, i32 1
  %62 = load i32, ptr %61, align 4, !tbaa !35
  %63 = shl i32 %25, 1
  %64 = or i32 %63, %25
  %65 = xor i32 %64, -1
  %66 = and i32 %65, 65535
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds [65536 x i32], ptr @move_table16, i64 0, i64 %67
  %69 = load i32, ptr %68, align 4, !tbaa !15
  %70 = icmp ult i32 %69, 268435456
  %71 = lshr i32 %65, 16
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds [65536 x i32], ptr @move_table16, i64 0, i64 %72
  %74 = load i32, ptr %73, align 4, !tbaa !15
  %75 = add i32 %74, %69
  %76 = select i1 %70, i32 65535, i32 65534
  %77 = and i32 %75, %76
  %78 = getelementptr inbounds [2 x [32 x %struct.Basic_Info]], ptr @g_info, i64 0, i64 %16, i64 %22, i32 1
  %79 = load i32, ptr %78, align 4, !tbaa !35
  %80 = sub i32 %79, %77
  %81 = add i32 %41, %62
  %82 = add i32 %44, %60
  %83 = sub i32 %81, %82
  %84 = add i32 %83, %80
  %85 = add nsw i32 %3, -1
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %2
  %88 = getelementptr inbounds [2 x [32 x i32]], ptr @g_board, i64 0, i64 %9, i64 0
  %89 = load i32, ptr %88, align 16, !tbaa !15
  br label %121

90:                                               ; preds = %2
  %91 = add i64 %10, -8589934592
  %92 = ashr exact i64 %91, 32
  %93 = getelementptr inbounds [2 x [32 x i32]], ptr @g_board, i64 0, i64 %9, i64 %92
  %94 = load i32, ptr %93, align 4, !tbaa !15
  %95 = and i32 %94, %26
  %96 = sext i32 %85 to i64
  %97 = getelementptr inbounds [2 x [32 x i32]], ptr @g_board, i64 0, i64 %9, i64 %96
  %98 = load i32, ptr %97, align 4, !tbaa !15
  %99 = shl i32 %98, 1
  %100 = or i32 %99, %98
  %101 = xor i32 %100, -1
  %102 = shl i32 %95, 1
  %103 = and i32 %102, %101
  %104 = and i32 %103, %95
  %105 = and i32 %104, 65534
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds [65536 x i32], ptr @move_table16, i64 0, i64 %106
  %108 = load i32, ptr %107, align 8, !tbaa !15
  %109 = icmp ult i32 %108, 268435456
  %110 = lshr i32 %104, 16
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds [65536 x i32], ptr @move_table16, i64 0, i64 %111
  %113 = load i32, ptr %112, align 4, !tbaa !15
  %114 = add i32 %113, %108
  %115 = select i1 %109, i32 65535, i32 65534
  %116 = and i32 %114, %115
  %117 = getelementptr inbounds [2 x [32 x %struct.Basic_Info]], ptr @g_info, i64 0, i64 %9, i64 %96
  %118 = load i32, ptr %117, align 4, !tbaa !33
  %119 = sub i32 %84, %118
  %120 = add i32 %119, %116
  br label %121

121:                                              ; preds = %90, %87
  %122 = phi i32 [ %98, %90 ], [ %89, %87 ]
  %123 = phi i32 [ %120, %90 ], [ %84, %87 ]
  %124 = add i64 %10, 4294967296
  %125 = ashr exact i64 %124, 32
  %126 = getelementptr inbounds [2 x [32 x i32]], ptr @g_board, i64 0, i64 %9, i64 %125
  %127 = load i32, ptr %126, align 4, !tbaa !15
  %128 = and i32 %127, %122
  %129 = shl i32 %128, 1
  %130 = and i32 %129, %29
  %131 = and i32 %130, %128
  %132 = and i32 %131, 65534
  %133 = zext i32 %132 to i64
  %134 = getelementptr inbounds [65536 x i32], ptr @move_table16, i64 0, i64 %133
  %135 = load i32, ptr %134, align 8, !tbaa !15
  %136 = icmp ult i32 %135, 268435456
  %137 = lshr i32 %131, 16
  %138 = zext i32 %137 to i64
  %139 = getelementptr inbounds [65536 x i32], ptr @move_table16, i64 0, i64 %138
  %140 = load i32, ptr %139, align 4, !tbaa !15
  %141 = add i32 %140, %135
  %142 = select i1 %136, i32 65535, i32 65534
  %143 = and i32 %141, %142
  %144 = load i32, ptr %42, align 4, !tbaa !33
  %145 = sub nsw i32 %143, %144
  %146 = add nsw i32 %145, %123
  %147 = getelementptr inbounds [2 x i32], ptr @g_board_size, i64 0, i64 %9
  %148 = load i32, ptr %147, align 4, !tbaa !15
  %149 = icmp eq i32 %148, %3
  br i1 %149, label %178, label %150

150:                                              ; preds = %121
  %151 = add i64 %10, 8589934592
  %152 = ashr exact i64 %151, 32
  %153 = getelementptr inbounds [2 x [32 x i32]], ptr @g_board, i64 0, i64 %9, i64 %152
  %154 = load i32, ptr %153, align 4, !tbaa !15
  %155 = and i32 %154, %26
  %156 = shl i32 %127, 1
  %157 = or i32 %156, %127
  %158 = xor i32 %157, -1
  %159 = shl i32 %155, 1
  %160 = and i32 %159, %158
  %161 = and i32 %160, %155
  %162 = and i32 %161, 65534
  %163 = zext i32 %162 to i64
  %164 = getelementptr inbounds [65536 x i32], ptr @move_table16, i64 0, i64 %163
  %165 = load i32, ptr %164, align 8, !tbaa !15
  %166 = icmp ult i32 %165, 268435456
  %167 = lshr i32 %161, 16
  %168 = zext i32 %167 to i64
  %169 = getelementptr inbounds [65536 x i32], ptr @move_table16, i64 0, i64 %168
  %170 = load i32, ptr %169, align 4, !tbaa !15
  %171 = add i32 %170, %165
  %172 = select i1 %166, i32 65535, i32 65534
  %173 = and i32 %171, %172
  %174 = getelementptr inbounds [2 x [32 x %struct.Basic_Info]], ptr @g_info, i64 0, i64 %9, i64 %125
  %175 = load i32, ptr %174, align 4, !tbaa !33
  %176 = sub i32 %146, %175
  %177 = add i32 %176, %173
  br label %178

178:                                              ; preds = %150, %121
  %179 = phi i32 [ %177, %150 ], [ %146, %121 ]
  %180 = add nsw i32 %5, -1
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %213, label %182

182:                                              ; preds = %178
  %183 = add i64 %0, -8589934592
  %184 = ashr i64 %183, 32
  %185 = getelementptr inbounds [2 x [32 x i32]], ptr @g_board, i64 0, i64 %16, i64 %184
  %186 = load i32, ptr %185, align 4, !tbaa !15
  %187 = and i32 %186, %45
  %188 = sext i32 %180 to i64
  %189 = getelementptr inbounds [2 x [32 x i32]], ptr @g_board, i64 0, i64 %16, i64 %188
  %190 = load i32, ptr %189, align 4, !tbaa !15
  %191 = shl i32 %190, 1
  %192 = or i32 %191, %190
  %193 = xor i32 %192, -1
  %194 = shl i32 %187, 1
  %195 = and i32 %194, %193
  %196 = and i32 %195, %187
  %197 = and i32 %196, 65534
  %198 = zext i32 %197 to i64
  %199 = getelementptr inbounds [65536 x i32], ptr @move_table16, i64 0, i64 %198
  %200 = load i32, ptr %199, align 8, !tbaa !15
  %201 = icmp ult i32 %200, 268435456
  %202 = lshr i32 %196, 16
  %203 = zext i32 %202 to i64
  %204 = getelementptr inbounds [65536 x i32], ptr @move_table16, i64 0, i64 %203
  %205 = load i32, ptr %204, align 4, !tbaa !15
  %206 = add i32 %205, %200
  %207 = select i1 %201, i32 65535, i32 65534
  %208 = and i32 %206, %207
  %209 = getelementptr inbounds [2 x [32 x %struct.Basic_Info]], ptr @g_info, i64 0, i64 %16, i64 %188
  %210 = load i32, ptr %209, align 4, !tbaa !33
  %211 = add i32 %210, %179
  %212 = sub i32 %211, %208
  br label %213

213:                                              ; preds = %182, %178
  %214 = phi i32 [ %212, %182 ], [ %179, %178 ]
  %215 = getelementptr inbounds [2 x i32], ptr @g_board_size, i64 0, i64 %16
  %216 = load i32, ptr %215, align 4, !tbaa !15
  %217 = icmp eq i32 %21, %216
  br i1 %217, label %254, label %218

218:                                              ; preds = %213
  %219 = add i64 %0, 4294967296
  %220 = ashr i64 %219, 32
  %221 = getelementptr inbounds [2 x [32 x i32]], ptr @g_board, i64 0, i64 %16, i64 %220
  %222 = load i32, ptr %221, align 4, !tbaa !15
  %223 = add i64 %0, 12884901888
  %224 = ashr i64 %223, 32
  %225 = getelementptr inbounds [2 x [32 x i32]], ptr @g_board, i64 0, i64 %16, i64 %224
  %226 = load i32, ptr %225, align 4, !tbaa !15
  %227 = and i32 %226, %222
  %228 = add i64 %0, 8589934592
  %229 = ashr i64 %228, 32
  %230 = getelementptr inbounds [2 x [32 x i32]], ptr @g_board, i64 0, i64 %16, i64 %229
  %231 = load i32, ptr %230, align 4, !tbaa !15
  %232 = shl i32 %231, 1
  %233 = or i32 %232, %231
  %234 = xor i32 %233, -1
  %235 = shl i32 %227, 1
  %236 = and i32 %235, %234
  %237 = and i32 %236, %227
  %238 = and i32 %237, 65534
  %239 = zext i32 %238 to i64
  %240 = getelementptr inbounds [65536 x i32], ptr @move_table16, i64 0, i64 %239
  %241 = load i32, ptr %240, align 8, !tbaa !15
  %242 = icmp ult i32 %241, 268435456
  %243 = lshr i32 %237, 16
  %244 = zext i32 %243 to i64
  %245 = getelementptr inbounds [65536 x i32], ptr @move_table16, i64 0, i64 %244
  %246 = load i32, ptr %245, align 4, !tbaa !15
  %247 = add i32 %246, %241
  %248 = select i1 %242, i32 65535, i32 65534
  %249 = and i32 %247, %248
  %250 = getelementptr inbounds [2 x [32 x %struct.Basic_Info]], ptr @g_info, i64 0, i64 %16, i64 %229
  %251 = load i32, ptr %250, align 4, !tbaa !33
  %252 = add i32 %251, %214
  %253 = sub i32 %252, %249
  br label %254

254:                                              ; preds = %218, %213
  %255 = phi i32 [ %253, %218 ], [ %214, %213 ]
  %256 = xor i32 %26, %8
  store i32 %256, ptr %12, align 4, !tbaa !15
  %257 = load i32, ptr %18, align 4, !tbaa !15
  %258 = xor i32 %257, %15
  store i32 %258, ptr %18, align 4, !tbaa !15
  %259 = load i32, ptr %23, align 4, !tbaa !15
  %260 = xor i32 %259, %15
  store i32 %260, ptr %23, align 4, !tbaa !15
  %261 = shl nsw i32 %255, 7
  %262 = zext i32 %1 to i64
  %263 = getelementptr inbounds [2 x [32 x [32 x i32]]], ptr @g_first_move, i64 0, i64 %262, i64 %11, i64 %17
  %264 = load i32, ptr %263, align 4, !tbaa !15
  %265 = add nsw i32 %264, %261
  ret i32 %265
}

; Function Attrs: nounwind optsize
declare i32 @asprintf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #26

; Function Attrs: nounwind optsize
declare void @srandom(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind optsize
declare i64 @random() local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind optsize memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define internal fastcc void @init__real_count(i32 noundef %0) unnamed_addr #27 {
  %2 = zext i32 %0 to i64
  %3 = getelementptr inbounds [2 x %struct.Basic_Info], ptr @g_info_totals, i64 0, i64 %2, i32 1
  store i32 0, ptr %3, align 4, !tbaa !35
  %4 = getelementptr inbounds [2 x i32], ptr @g_board_size, i64 0, i64 %2
  %5 = load i32, ptr %4, align 4, !tbaa !15
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %39

7:                                                ; preds = %1
  %8 = zext i32 %5 to i64
  br label %9

9:                                                ; preds = %9, %7
  %10 = phi i32 [ %36, %9 ], [ 0, %7 ]
  %11 = phi i64 [ %12, %9 ], [ 0, %7 ]
  %12 = add nuw nsw i64 %11, 1
  %13 = getelementptr inbounds [2 x [32 x %struct.Basic_Info]], ptr @g_info, i64 0, i64 %2, i64 %12, i32 1
  store i32 0, ptr %13, align 4, !tbaa !35
  %14 = shl i64 %12, 32
  %15 = ashr exact i64 %14, 32
  %16 = getelementptr inbounds [2 x [32 x i32]], ptr @g_board, i64 0, i64 %2, i64 %15
  %17 = load i32, ptr %16, align 4, !tbaa !15
  %18 = shl i32 %17, 1
  %19 = or i32 %18, %17
  %20 = xor i32 %19, -1
  %21 = and i32 %20, 65535
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds [65536 x i32], ptr @move_table16, i64 0, i64 %22
  %24 = load i32, ptr %23, align 4, !tbaa !15
  %25 = icmp ult i32 %24, 268435456
  %26 = lshr i32 %20, 16
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds [65536 x i32], ptr @move_table16, i64 0, i64 %27
  %29 = load i32, ptr %28, align 4, !tbaa !15
  %30 = add i32 %29, %24
  %31 = select i1 %25, i32 65535, i32 65534
  %32 = and i32 %30, %31
  %33 = getelementptr inbounds [2 x [32 x %struct.Basic_Info]], ptr @g_info, i64 0, i64 %2, i64 %15, i32 1
  %34 = load i32, ptr %33, align 4, !tbaa !35
  %35 = sub i32 %32, %34
  %36 = add nsw i32 %35, %10
  store i32 %32, ptr %33, align 4, !tbaa !35
  %37 = icmp eq i64 %12, %8
  br i1 %37, label %38, label %9, !llvm.loop !132

38:                                               ; preds = %9
  %.lcssa = phi i32 [ %36, %9 ]
  store i32 %.lcssa, ptr %3, align 4, !tbaa !35
  br label %39

39:                                               ; preds = %38, %1
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind optsize memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define internal fastcc void @init__safe_count(i32 noundef %0) unnamed_addr #27 {
  %2 = zext i32 %0 to i64
  %3 = getelementptr inbounds [2 x %struct.Basic_Info], ptr @g_info_totals, i64 0, i64 %2
  store i32 0, ptr %3, align 4, !tbaa !33
  %4 = getelementptr inbounds [2 x i32], ptr @g_board_size, i64 0, i64 %2
  %5 = load i32, ptr %4, align 4, !tbaa !15
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %51

7:                                                ; preds = %1
  %8 = zext i32 %5 to i64
  br label %9

9:                                                ; preds = %9, %7
  %10 = phi i32 [ %48, %9 ], [ 0, %7 ]
  %11 = phi i64 [ %12, %9 ], [ 0, %7 ]
  %12 = add nuw nsw i64 %11, 1
  %13 = getelementptr inbounds [2 x [32 x %struct.Basic_Info]], ptr @g_info, i64 0, i64 %2, i64 %12
  store i32 0, ptr %13, align 4, !tbaa !33
  %14 = shl i64 %11, 32
  %15 = ashr exact i64 %14, 32
  %16 = getelementptr inbounds [2 x [32 x i32]], ptr @g_board, i64 0, i64 %2, i64 %15
  %17 = load i32, ptr %16, align 4, !tbaa !15
  %18 = add nuw i64 %14, 8589934592
  %19 = ashr exact i64 %18, 32
  %20 = getelementptr inbounds [2 x [32 x i32]], ptr @g_board, i64 0, i64 %2, i64 %19
  %21 = load i32, ptr %20, align 4, !tbaa !15
  %22 = and i32 %21, %17
  %23 = shl i64 %12, 32
  %24 = ashr exact i64 %23, 32
  %25 = getelementptr inbounds [2 x [32 x i32]], ptr @g_board, i64 0, i64 %2, i64 %24
  %26 = load i32, ptr %25, align 4, !tbaa !15
  %27 = shl i32 %26, 1
  %28 = or i32 %27, %26
  %29 = xor i32 %28, -1
  %30 = shl i32 %22, 1
  %31 = and i32 %30, %29
  %32 = and i32 %31, %22
  %33 = and i32 %32, 65534
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds [65536 x i32], ptr @move_table16, i64 0, i64 %34
  %36 = load i32, ptr %35, align 8, !tbaa !15
  %37 = icmp ult i32 %36, 268435456
  %38 = lshr i32 %32, 16
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds [65536 x i32], ptr @move_table16, i64 0, i64 %39
  %41 = load i32, ptr %40, align 4, !tbaa !15
  %42 = add i32 %41, %36
  %43 = select i1 %37, i32 65535, i32 65534
  %44 = and i32 %42, %43
  %45 = getelementptr inbounds [2 x [32 x %struct.Basic_Info]], ptr @g_info, i64 0, i64 %2, i64 %24
  %46 = load i32, ptr %45, align 4, !tbaa !33
  %47 = sub i32 %44, %46
  %48 = add nsw i32 %47, %10
  store i32 %44, ptr %45, align 4, !tbaa !33
  %49 = icmp eq i64 %12, %8
  br i1 %49, label %50, label %9, !llvm.loop !133

50:                                               ; preds = %9
  %.lcssa = phi i32 [ %48, %9 ]
  store i32 %.lcssa, ptr %3, align 4, !tbaa !33
  br label %51

51:                                               ; preds = %50, %1
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @init_hashkey_code(ptr nocapture noundef %0) unnamed_addr #23 {
  %2 = load i32, ptr @g_board_size, align 4, !tbaa !15
  %3 = load i32, ptr getelementptr inbounds ([2 x i32], ptr @g_board_size, i64 0, i64 1), align 4, !tbaa !15
  %4 = getelementptr inbounds %struct.Hash_Key, ptr %0, i64 0, i32 1
  store i32 0, ptr %4, align 4, !tbaa !58
  %5 = icmp sgt i32 %2, 0
  br i1 %5, label %6, label %43

6:                                                ; preds = %1
  %7 = icmp sgt i32 %3, 0
  %8 = zext i32 %3 to i64
  %9 = zext i32 %2 to i64
  br label %10

10:                                               ; preds = %39, %6
  %11 = phi i32 [ 0, %6 ], [ %41, %39 ]
  %12 = phi i64 [ 0, %6 ], [ %40, %39 ]
  br i1 %7, label %15, label %13

13:                                               ; preds = %10
  %14 = add nuw nsw i64 %12, 1
  br label %39

15:                                               ; preds = %10
  %16 = mul i64 %12, %8
  %17 = add nuw nsw i64 %12, 1
  br label %18

18:                                               ; preds = %36, %15
  %19 = phi i32 [ %11, %15 ], [ %37, %36 ]
  %20 = phi i64 [ 0, %15 ], [ %31, %36 ]
  %21 = add i64 %20, %16
  %22 = trunc i64 %21 to i32
  %23 = sdiv i32 %22, 32
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [4 x i32], ptr %0, i64 0, i64 %24
  %26 = load i32, ptr %25, align 4, !tbaa !15
  %27 = and i32 %22, 31
  %28 = shl nuw i32 1, %27
  %29 = and i32 %28, %26
  %30 = icmp eq i32 %29, 0
  %31 = add nuw nsw i64 %20, 1
  br i1 %30, label %36, label %32

32:                                               ; preds = %18
  %33 = getelementptr inbounds [32 x [32 x i32]], ptr @g_zobrist, i64 0, i64 %17, i64 %31
  %34 = load i32, ptr %33, align 4, !tbaa !15
  %35 = xor i32 %34, %19
  store i32 %35, ptr %4, align 4, !tbaa !58
  br label %36

36:                                               ; preds = %32, %18
  %37 = phi i32 [ %35, %32 ], [ %19, %18 ]
  %38 = icmp eq i64 %31, %8
  br i1 %38, label %39, label %18, !llvm.loop !134

39:                                               ; preds = %36, %13
  %40 = phi i64 [ %14, %13 ], [ %17, %36 ]
  %41 = phi i32 [ %11, %13 ], [ %37, %36 ]
  %42 = icmp eq i64 %40, %9
  br i1 %42, label %43, label %10, !llvm.loop !135

43:                                               ; preds = %39, %1
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef ptr @fgets(ptr noundef, i32 noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #28

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #29

; Function Attrs: nofree nounwind optsize
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #29

attributes #0 = { nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind }
attributes #5 = { mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind optsize willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind optsize willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nounwind optsize willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nosync nounwind optsize willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #19 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nofree nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nofree norecurse nosync nounwind optsize memory(read, argmem: write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nofree norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { inlinehint nofree norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { inlinehint mustprogress nofree norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { nofree norecurse nosync nounwind optsize memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { nocallback nofree nosync nounwind willreturn }
attributes #30 = { nounwind optsize }
attributes #31 = { optsize }
attributes #32 = { noreturn nounwind optsize }
attributes #33 = { nounwind optsize willreturn memory(read) }
attributes #34 = { nounwind }
attributes #35 = { nounwind optsize allocsize(1) }
attributes #36 = { nounwind optsize allocsize(0) }
attributes #37 = { cold optsize }
attributes #38 = { nounwind optsize willreturn memory(none) }
attributes #39 = { cold }
attributes #40 = { nounwind optsize allocsize(0,1) }

!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
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
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.mustprogress"}
!15 = !{!16, !16, i64 0}
!16 = !{!"int", !9, i64 0}
!17 = !{!9, !9, i64 0}
!18 = distinct !{!18, !14}
!19 = distinct !{!19, !14}
!20 = !{!21, !16, i64 136}
!21 = !{!"sigaction", !9, i64 0, !22, i64 8, !16, i64 136, !8, i64 144}
!22 = !{!"", !9, i64 0}
!23 = !{!24, !12, i64 0}
!24 = !{!"itimerval", !25, i64 0, !25, i64 16}
!25 = !{!"timeval", !12, i64 0, !12, i64 8}
!26 = !{!24, !12, i64 8}
!27 = !{!24, !12, i64 16}
!28 = !{!24, !12, i64 24}
!29 = distinct !{!29, !14}
!30 = distinct !{!30, !14}
!31 = distinct !{!31, !14}
!32 = distinct !{!32, !14}
!33 = !{!34, !16, i64 0}
!34 = !{!"", !16, i64 0, !16, i64 4, !16, i64 8}
!35 = !{!34, !16, i64 4}
!36 = distinct !{!36, !14}
!37 = !{!34, !16, i64 8}
!38 = distinct !{!38, !14}
!39 = distinct !{!39, !14}
!40 = distinct !{!40, !14}
!41 = distinct !{!41, !14}
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
!54 = !{!55, !16, i64 0}
!55 = !{!"", !34, i64 0, !34, i64 12, !34, i64 24, !34, i64 36}
!56 = !{!55, !16, i64 4}
!57 = !{!55, !16, i64 8}
!58 = !{!59, !16, i64 16}
!59 = !{!"", !9, i64 0, !16, i64 16}
!60 = !{!55, !16, i64 12}
!61 = !{!55, !16, i64 16}
!62 = !{!55, !16, i64 20}
!63 = !{!55, !16, i64 24}
!64 = !{!55, !16, i64 28}
!65 = !{!55, !16, i64 32}
!66 = !{!55, !16, i64 36}
!67 = !{!55, !16, i64 40}
!68 = !{!55, !16, i64 44}
!69 = distinct !{!69, !14}
!70 = !{i64 0, i64 4, !15, i64 4, i64 4, !15, i64 8, i64 4, !15}
!71 = distinct !{!71, !14}
!72 = distinct !{!72, !14}
!73 = distinct !{!73, !14}
!74 = distinct !{!74, !14}
!75 = distinct !{!75, !14}
!76 = distinct !{!76, !14}
!77 = distinct !{!77, !14}
!78 = distinct !{!78, !14}
!79 = distinct !{!79, !14}
!80 = distinct !{!80, !14, !81, !82}
!81 = !{!"llvm.loop.isvectorized", i32 1}
!82 = !{!"llvm.loop.unroll.runtime.disable"}
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
!98 = distinct !{!98, !14}
!99 = distinct !{!99, !14}
!100 = distinct !{!100, !14}
!101 = distinct !{!101, !14}
!102 = distinct !{!102, !14}
!103 = distinct !{!103, !14}
!104 = distinct !{!104, !14, !81, !82}
!105 = distinct !{!105, !14}
!106 = distinct !{!106, !14}
!107 = distinct !{!107, !14}
!108 = distinct !{!108, !14}
!109 = !{!110, !9, i64 20}
!110 = !{!"", !9, i64 0, !16, i64 16, !9, i64 20, !9, i64 21, !9, i64 21, !111, i64 22, !111, i64 23}
!111 = !{!"short", !9, i64 0}
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
!124 = !{!110, !16, i64 16}
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
