; ModuleID = '/src/llvm-test-suite/build/MultiSource/Applications/obsequi/Obsequi.e.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Hash_Key = type { [4 x i32], i32 }
%struct.KeyInfo.9 = type { %struct.Basic_Info, %struct.Basic_Info, %struct.Basic_Info, %struct.Basic_Info }
%struct.Basic_Info = type { i32, i32, i32 }
%struct.Hash_Entry.2 = type { [4 x i32], i32, i8, [3 x i8] }
%struct.__sigset_t = type { [16 x i64] }
%struct.sigaction = type { %union.anon, %struct.__sigset_t, i32, ptr }
%union.anon = type { ptr }
%struct.itimerval = type { %struct.timeval, %struct.timeval }
%struct.timeval = type { i64, i64 }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }

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
@.str.21 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@current_search_state.str = internal global ptr null, align 8
@.str.27 = private unnamed_addr constant [39 x i8] c"Nodes: %s.\0A%d %d %d %d %d %d %d %d %d.\00", align 1
@.str.28 = private unnamed_addr constant [20 x i8] c"HashKey Incorrect.\0A\00", align 1
@.str.29 = private unnamed_addr constant [20 x i8] c"Invalid hash code.\0A\00", align 1
@.str = private unnamed_addr constant [29 x i8] c"%d moves next, do they win?\0A\00", align 1
@.str.1.1 = private unnamed_addr constant [68 x i8] c"prot %d, vuln2 %d(%d), vuln1 %d(%d), safe %d, unused %d, empty %d.\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"safe_op2 %d, safe_op1 %d, safe_op0 %d.\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"moves:%d, opp:%d.\0A\00", align 1
@.str.5.2 = private unnamed_addr constant [29 x i8] c"%d just moved, do they win?\0A\00", align 1
@str.6 = private unnamed_addr constant [7 x i8] c"H WINS\00", align 1
@g_trans_table = internal global ptr null, align 8
@.str.20 = private unnamed_addr constant [61 x i8] c"/src/llvm-test-suite/MultiSource/Applications/obsequi/init.c\00", align 1
@.str.1.21 = private unnamed_addr constant [27 x i8] c"Invalid board size %dX%d.\0A\00", align 1
@.str.24 = private unnamed_addr constant [66 x i8] c"/src/llvm-test-suite/MultiSource/Applications/obsequi/move_sort.c\00", align 1
@.str.1.25 = private unnamed_addr constant [21 x i8] c"Not enough buckets.\0A\00", align 1
@g_empty_squares = internal global i32 0, align 4
@g_print = internal global i32 0, align 4
@.str.26 = private unnamed_addr constant [64 x i8] c"/src/llvm-test-suite/MultiSource/Applications/obsequi/negamax.c\00", align 1
@.str.1.27 = private unnamed_addr constant [17 x i8] c"Invalid player.\0A\00", align 1
@.str.2.30 = private unnamed_addr constant [9 x i8] c"No moves\00", align 1
@g_num_nodes = internal global i64 0, align 8
@starting_depth = internal unnamed_addr global i32 0, align 4
@g_move_number = internal global [128 x i32] zeroinitializer, align 16
@g_norm_hashkey = internal global %struct.Hash_Key zeroinitializer, align 4
@g_flipV_hashkey = internal global %struct.Hash_Key zeroinitializer, align 4
@g_flipH_hashkey = internal global %struct.Hash_Key zeroinitializer, align 4
@g_flipVH_hashkey = internal global %struct.Hash_Key zeroinitializer, align 4
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
@g_keyinfo = internal global [2 x [32 x [32 x %struct.KeyInfo.9]]] zeroinitializer, align 16
@lastbit16 = internal global [65536 x i32] zeroinitializer, align 16
@g_zobrist = internal global [32 x [32 x i32]] zeroinitializer, align 16
@.str.96 = private unnamed_addr constant [68 x i8] c"/src/llvm-test-suite/MultiSource/Applications/obsequi/toggle_move.c\00", align 1
@.str.1.97 = private unnamed_addr constant [12 x i8] c"No maximum\0A\00", align 1
@g_info = internal global [2 x [32 x %struct.Basic_Info]] zeroinitializer, align 16
@g_info_totals = internal global [2 x %struct.Basic_Info] zeroinitializer, align 16
@move_table16 = internal global [65536 x i32] zeroinitializer, align 16
@g_first_move = internal global [2 x [32 x [32 x i32]]] zeroinitializer, align 16
@g_board_size = internal global [2 x i32] [i32 -1, i32 -1], align 4
@g_board = internal global [2 x [32 x i32]] zeroinitializer, align 16
@countbits16 = internal global [65536 x i32] zeroinitializer, align 16
@_fatal_error_aux.err_file = internal unnamed_addr global ptr null, align 8
@.str.100 = private unnamed_addr constant [10 x i8] c"WARNING: \00", align 1
@.str.1.101 = private unnamed_addr constant [8 x i8] c"ERROR: \00", align 1
@.str.2.102 = private unnamed_addr constant [13 x i8] c".fatal_error\00", align 1
@.str.3.103 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.4.104 = private unnamed_addr constant [31 x i8] c"Couldn't open \22.fatal_error\22.\0A\00", align 1
@.str.5.105 = private unnamed_addr constant [62 x i8] c"/src/llvm-test-suite/MultiSource/Applications/obsequi/utils.c\00", align 1
@.str.6.106 = private unnamed_addr constant [13 x i8] c"size == -1.\0A\00", align 1
@.str.7.107 = private unnamed_addr constant [29 x i8] c"Log file getting too large.\0A\00", align 1
@.str.8.108 = private unnamed_addr constant [23 x i8] c"> File: %s, Line: %d.\0A\00", align 1
@u64bit_to_string.big_num = internal global [80 x i8] zeroinitializer, align 16
@.str.9.111 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.10.112 = private unnamed_addr constant [6 x i8] c",%03d\00", align 1

; Function Attrs: nounwind optsize uwtable
define internal void @check_hash_code_sanity() #0 {
  %1 = alloca %struct.Hash_Key, align 8
  %2 = alloca %struct.Hash_Key, align 8
  %3 = alloca %struct.Hash_Key, align 8
  %4 = alloca %struct.Hash_Key, align 8
  %5 = alloca %struct.Hash_Key, align 8
  %6 = alloca %struct.Hash_Key, align 8
  %7 = alloca %struct.Hash_Key, align 8
  %8 = alloca %struct.Hash_Key, align 8
  %9 = alloca %struct.Hash_Key, align 8
  %10 = alloca %struct.Hash_Key, align 8
  %11 = alloca %struct.Hash_Key, align 8
  %12 = alloca %struct.Hash_Key, align 8
  %13 = load i32, ptr @g_board_size, align 4, !tbaa !7
  %14 = load i32, ptr getelementptr inbounds ([2 x i32], ptr @g_board_size, i64 0, i64 1), align 4, !tbaa !7
  %15 = icmp sgt i32 %13, 0
  br i1 %15, label %16, label %51

16:                                               ; preds = %0
  %17 = icmp sgt i32 %14, 0
  %18 = zext i32 %13 to i64
  br label %19

19:                                               ; preds = %48, %16
  %20 = phi i64 [ 0, %16 ], [ %49, %48 ]
  br i1 %17, label %23, label %21

21:                                               ; preds = %19
  %22 = add nuw nsw i64 %20, 1
  br label %48

23:                                               ; preds = %19
  %24 = trunc i64 %20 to i32
  %25 = add nuw nsw i64 %20, 1
  %26 = getelementptr inbounds [32 x i32], ptr @g_board, i64 0, i64 %25
  %27 = mul nsw i32 %14, %24
  %28 = xor i32 %24, -1
  %29 = add i32 %13, %28
  %30 = mul nsw i32 %29, %14
  br label %31

31:                                               ; preds = %46, %23
  %32 = phi i32 [ 0, %23 ], [ %34, %46 ]
  %33 = load i32, ptr %26, align 4, !tbaa !7
  %34 = add nuw nsw i32 %32, 1
  %35 = shl i32 2, %32
  %36 = and i32 %33, %35
  %37 = icmp eq i32 %36, 0
  %38 = add nsw i32 %32, %27
  %39 = xor i32 %32, -1
  %40 = add i32 %14, %39
  %41 = add nsw i32 %40, %27
  %42 = add nsw i32 %32, %30
  %43 = add nsw i32 %40, %30
  br i1 %37, label %45, label %44

44:                                               ; preds = %31
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %1) #31
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %1, ptr noundef nonnull align 4 dereferenceable(20) @g_norm_hashkey, i64 20, i1 false), !tbaa.struct !11
  tail call fastcc void @check_hashkey_bit_set(ptr noundef nonnull byval(%struct.Hash_Key) align 8 %1, i32 noundef %38) #32
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %1) #31
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #31
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %2, ptr noundef nonnull align 4 dereferenceable(20) @g_flipV_hashkey, i64 20, i1 false), !tbaa.struct !11
  tail call fastcc void @check_hashkey_bit_set(ptr noundef nonnull byval(%struct.Hash_Key) align 8 %2, i32 noundef %41) #32
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #31
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #31
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %3, ptr noundef nonnull align 4 dereferenceable(20) @g_flipH_hashkey, i64 20, i1 false), !tbaa.struct !11
  tail call fastcc void @check_hashkey_bit_set(ptr noundef nonnull byval(%struct.Hash_Key) align 8 %3, i32 noundef %42) #32
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #31
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #31
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %4, ptr noundef nonnull align 4 dereferenceable(20) @g_flipVH_hashkey, i64 20, i1 false), !tbaa.struct !11
  tail call fastcc void @check_hashkey_bit_set(ptr noundef nonnull byval(%struct.Hash_Key) align 8 %4, i32 noundef %43) #32
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #31
  br label %46

45:                                               ; preds = %31
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %5) #31
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %5, ptr noundef nonnull align 4 dereferenceable(20) @g_norm_hashkey, i64 20, i1 false), !tbaa.struct !11
  tail call fastcc void @check_hashkey_bit_not_set(ptr noundef nonnull byval(%struct.Hash_Key) align 8 %5, i32 noundef %38) #32
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #31
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %6) #31
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %6, ptr noundef nonnull align 4 dereferenceable(20) @g_flipV_hashkey, i64 20, i1 false), !tbaa.struct !11
  tail call fastcc void @check_hashkey_bit_not_set(ptr noundef nonnull byval(%struct.Hash_Key) align 8 %6, i32 noundef %41) #32
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %6) #31
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %7) #31
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %7, ptr noundef nonnull align 4 dereferenceable(20) @g_flipH_hashkey, i64 20, i1 false), !tbaa.struct !11
  tail call fastcc void @check_hashkey_bit_not_set(ptr noundef nonnull byval(%struct.Hash_Key) align 8 %7, i32 noundef %42) #32
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %7) #31
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %8) #31
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %8, ptr noundef nonnull align 4 dereferenceable(20) @g_flipVH_hashkey, i64 20, i1 false), !tbaa.struct !11
  tail call fastcc void @check_hashkey_bit_not_set(ptr noundef nonnull byval(%struct.Hash_Key) align 8 %8, i32 noundef %43) #32
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %8) #31
  br label %46

46:                                               ; preds = %45, %44
  %47 = icmp eq i32 %34, %14
  br i1 %47, label %48, label %31, !llvm.loop !13

48:                                               ; preds = %46, %21
  %49 = phi i64 [ %22, %21 ], [ %25, %46 ]
  %50 = icmp eq i64 %49, %18
  br i1 %50, label %51, label %19, !llvm.loop !15

51:                                               ; preds = %48, %0
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %9) #31
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %9, ptr noundef nonnull align 4 dereferenceable(20) @g_norm_hashkey, i64 20, i1 false), !tbaa.struct !11
  tail call fastcc void @check_hashkey_code(ptr noundef nonnull byval(%struct.Hash_Key) align 8 %9) #32
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %9) #31
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %10) #31
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %10, ptr noundef nonnull align 4 dereferenceable(20) @g_flipV_hashkey, i64 20, i1 false), !tbaa.struct !11
  tail call fastcc void @check_hashkey_code(ptr noundef nonnull byval(%struct.Hash_Key) align 8 %10) #32
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %10) #31
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %11) #31
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %11, ptr noundef nonnull align 4 dereferenceable(20) @g_flipH_hashkey, i64 20, i1 false), !tbaa.struct !11
  tail call fastcc void @check_hashkey_code(ptr noundef nonnull byval(%struct.Hash_Key) align 8 %11) #32
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %11) #31
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %12) #31
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %12, ptr noundef nonnull align 4 dereferenceable(20) @g_flipVH_hashkey, i64 20, i1 false), !tbaa.struct !11
  tail call fastcc void @check_hashkey_code(ptr noundef nonnull byval(%struct.Hash_Key) align 8 %12) #32
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %12) #31
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @check_hashkey_bit_set(ptr nocapture noundef readonly byval(%struct.Hash_Key) align 8 %0, i32 noundef %1) unnamed_addr #0 {
  %3 = sdiv i32 %1, 32
  %4 = sext i32 %3 to i64
  %5 = getelementptr inbounds [4 x i32], ptr %0, i64 0, i64 %4
  %6 = load i32, ptr %5, align 4, !tbaa !7
  %7 = and i32 %1, 31
  %8 = shl nuw i32 1, %7
  %9 = and i32 %6, %8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %23

11:                                               ; preds = %2
  %12 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.21, i32 noundef %1) #32
  tail call void @print_bitboard(i32 noundef 0) #32
  %13 = load i32, ptr %0, align 8
  %14 = getelementptr inbounds i8, ptr %0, i64 4
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds i8, ptr %0, i64 8
  %17 = load i32, ptr %16, align 8
  %18 = getelementptr inbounds i8, ptr %0, i64 12
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds i8, ptr %0, i64 16
  %21 = load i32, ptr %20, align 8
  %22 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %13, i32 noundef %15, i32 noundef %17, i32 noundef %19, i32 noundef %21) #32
  tail call void (ptr, i32, i32, ptr, ...) @_fatal_error_aux(ptr noundef nonnull @.str.1, i32 noundef 23, i32 noundef 1, ptr noundef nonnull @.str.28) #33
  br label %23

23:                                               ; preds = %11, %2
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @check_hashkey_bit_not_set(ptr nocapture noundef readonly byval(%struct.Hash_Key) align 8 %0, i32 noundef %1) unnamed_addr #0 {
  %3 = sdiv i32 %1, 32
  %4 = sext i32 %3 to i64
  %5 = getelementptr inbounds [4 x i32], ptr %0, i64 0, i64 %4
  %6 = load i32, ptr %5, align 4, !tbaa !7
  %7 = and i32 %1, 31
  %8 = shl nuw i32 1, %7
  %9 = and i32 %6, %8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %23, label %11

11:                                               ; preds = %2
  %12 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.21, i32 noundef %1) #32
  tail call void @print_bitboard(i32 noundef 0) #32
  %13 = load i32, ptr %0, align 8
  %14 = getelementptr inbounds i8, ptr %0, i64 4
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds i8, ptr %0, i64 8
  %17 = load i32, ptr %16, align 8
  %18 = getelementptr inbounds i8, ptr %0, i64 12
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds i8, ptr %0, i64 16
  %21 = load i32, ptr %20, align 8
  %22 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %13, i32 noundef %15, i32 noundef %17, i32 noundef %19, i32 noundef %21) #32
  tail call void (ptr, i32, i32, ptr, ...) @_fatal_error_aux(ptr noundef nonnull @.str.1, i32 noundef 38, i32 noundef 1, ptr noundef nonnull @.str.28) #33
  br label %23

23:                                               ; preds = %11, %2
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @check_hashkey_code(ptr nocapture noundef readonly byval(%struct.Hash_Key) align 8 %0) unnamed_addr #0 {
  %2 = load i32, ptr @g_board_size, align 4, !tbaa !7
  %3 = getelementptr inbounds %struct.Hash_Key, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !16
  %5 = icmp sgt i32 %2, 0
  br i1 %5, label %6, label %45

6:                                                ; preds = %1
  %7 = load i32, ptr getelementptr inbounds ([2 x i32], ptr @g_board_size, i64 0, i64 1), align 4, !tbaa !7
  %8 = icmp sgt i32 %7, 0
  %9 = zext i32 %7 to i64
  %10 = zext i32 %2 to i64
  %11 = zext i32 %7 to i64
  br label %12

12:                                               ; preds = %41, %6
  %13 = phi i64 [ 0, %6 ], [ %42, %41 ]
  %14 = phi i32 [ %4, %6 ], [ %43, %41 ]
  br i1 %8, label %17, label %15

15:                                               ; preds = %12
  %16 = add nuw nsw i64 %13, 1
  br label %41

17:                                               ; preds = %12
  %18 = mul i64 %13, %9
  %19 = add nuw nsw i64 %13, 1
  br label %20

20:                                               ; preds = %38, %17
  %21 = phi i64 [ 0, %17 ], [ %33, %38 ]
  %22 = phi i32 [ %14, %17 ], [ %39, %38 ]
  %23 = add i64 %21, %18
  %24 = trunc i64 %23 to i32
  %25 = sdiv i32 %24, 32
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [4 x i32], ptr %0, i64 0, i64 %26
  %28 = load i32, ptr %27, align 4, !tbaa !7
  %29 = and i32 %24, 31
  %30 = shl nuw i32 1, %29
  %31 = and i32 %28, %30
  %32 = icmp eq i32 %31, 0
  %33 = add nuw nsw i64 %21, 1
  br i1 %32, label %38, label %34

34:                                               ; preds = %20
  %35 = getelementptr inbounds [32 x [32 x i32]], ptr @g_zobrist, i64 0, i64 %19, i64 %33
  %36 = load i32, ptr %35, align 4, !tbaa !7
  %37 = xor i32 %36, %22
  br label %38

38:                                               ; preds = %34, %20
  %39 = phi i32 [ %37, %34 ], [ %22, %20 ]
  %40 = icmp eq i64 %33, %11
  br i1 %40, label %41, label %20, !llvm.loop !18

41:                                               ; preds = %38, %15
  %42 = phi i64 [ %16, %15 ], [ %19, %38 ]
  %43 = phi i32 [ %14, %15 ], [ %39, %38 ]
  %44 = icmp eq i64 %42, %10
  br i1 %44, label %45, label %12, !llvm.loop !19

45:                                               ; preds = %41, %1
  %46 = phi i32 [ %4, %1 ], [ %43, %41 ]
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %45
  tail call void (ptr, i32, i32, ptr, ...) @_fatal_error_aux(ptr noundef nonnull @.str.1, i32 noundef 59, i32 noundef 1, ptr noundef nonnull @.str.29) #33
  br label %49

49:                                               ; preds = %48, %45
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind optsize uwtable
define internal void @print_bitboard(i32 noundef %0) #4 {
  %2 = and i32 %0, 1
  %3 = zext i32 %2 to i64
  %4 = getelementptr inbounds [2 x i32], ptr @g_board_size, i64 0, i64 %3
  %5 = load i32, ptr %4, align 4, !tbaa !7
  %6 = icmp sgt i32 %5, -2
  br i1 %6, label %7, label %16

7:                                                ; preds = %7, %1
  %8 = phi i64 [ %12, %7 ], [ 0, %1 ]
  %9 = getelementptr inbounds [2 x [32 x i32]], ptr @g_board, i64 0, i64 %3, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !7
  %11 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.18, i32 noundef %10) #32
  %12 = add nuw nsw i64 %8, 1
  %13 = load i32, ptr %4, align 4, !tbaa !7
  %14 = sext i32 %13 to i64
  %15 = icmp sgt i64 %8, %14
  br i1 %15, label %16, label %7, !llvm.loop !20

16:                                               ; preds = %7, %1
  ret void
}

; Function Attrs: nofree nounwind optsize uwtable
define internal void @print_board(i32 noundef %0) #4 {
  %2 = and i32 %0, 1
  %3 = zext i32 %2 to i64
  %4 = getelementptr inbounds [2 x i32], ptr @g_board_size, i64 0, i64 %3
  %5 = load i32, ptr %4, align 4, !tbaa !7
  %6 = xor i32 %2, 1
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds [2 x i32], ptr @g_board_size, i64 0, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !7
  %10 = icmp sgt i32 %5, 0
  br i1 %10, label %11, label %32

11:                                               ; preds = %1
  %12 = icmp sgt i32 %9, 0
  %13 = zext i32 %5 to i64
  br label %14

14:                                               ; preds = %29, %11
  %15 = phi i64 [ 0, %11 ], [ %16, %29 ]
  %16 = add nuw nsw i64 %15, 1
  br i1 %12, label %17, label %29

17:                                               ; preds = %14
  %18 = getelementptr inbounds [2 x [32 x i32]], ptr @g_board, i64 0, i64 %3, i64 %16
  br label %19

19:                                               ; preds = %19, %17
  %20 = phi i32 [ 0, %17 ], [ %22, %19 ]
  %21 = load i32, ptr %18, align 4, !tbaa !7
  %22 = add nuw nsw i32 %20, 1
  %23 = shl i32 2, %20
  %24 = and i32 %21, %23
  %25 = icmp eq i32 %24, 0
  %26 = select i1 %25, ptr @.str.6, ptr @.str.5
  %27 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) %26) #32
  %28 = icmp eq i32 %22, %9
  br i1 %28, label %29, label %19, !llvm.loop !21

29:                                               ; preds = %19, %14
  %30 = tail call i32 @putchar(i32 10)
  %31 = icmp eq i64 %16, %13
  br i1 %31, label %32, label %14, !llvm.loop !22

32:                                               ; preds = %29, %1
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind optsize uwtable
define internal void @print_board_info(i32 %0) #4 {
  %2 = alloca [32 x [80 x i8]], align 16
  %3 = alloca [1 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 2560, ptr nonnull %2) #31
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #31
  store i8 0, ptr %3, align 1
  %4 = load i32, ptr @g_board_size, align 4, !tbaa !7
  %5 = load i32, ptr getelementptr inbounds ([2 x i32], ptr @g_board_size, i64 0, i64 1), align 4, !tbaa !7
  %6 = tail call i32 @llvm.smax.i32(i32 %4, i32 %5)
  %7 = getelementptr inbounds [32 x [80 x i8]], ptr %2, i64 0, i64 1
  %8 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(1) @.str.8, i32 noundef %4) #33
  %9 = getelementptr inbounds [32 x [80 x i8]], ptr %2, i64 0, i64 2
  %10 = load i32, ptr getelementptr inbounds ([2 x i32], ptr @g_board_size, i64 0, i64 1), align 4, !tbaa !7
  %11 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(1) @.str.9, i32 noundef %10) #33
  %12 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, ptr noundef nonnull %3, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12) #32
  %13 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, ptr noundef nonnull %3, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15) #32
  %14 = icmp sgt i32 %6, 0
  br i1 %14, label %15, label %34

15:                                               ; preds = %1
  %16 = zext i32 %6 to i64
  br label %17

17:                                               ; preds = %17, %15
  %18 = phi i64 [ 0, %15 ], [ %19, %17 ]
  %19 = add nuw nsw i64 %18, 1
  %20 = getelementptr inbounds [2 x [32 x %struct.Basic_Info]], ptr @g_info, i64 0, i64 1, i64 %19
  %21 = getelementptr inbounds [2 x [32 x %struct.Basic_Info]], ptr @g_info, i64 0, i64 1, i64 %19, i32 1
  %22 = load i32, ptr %21, align 4, !tbaa !23
  %23 = load i32, ptr %20, align 4, !tbaa !25
  %24 = getelementptr inbounds [32 x %struct.Basic_Info], ptr @g_info, i64 0, i64 %19
  %25 = getelementptr inbounds [32 x %struct.Basic_Info], ptr @g_info, i64 0, i64 %19, i32 1
  %26 = load i32, ptr %25, align 4, !tbaa !23
  %27 = load i32, ptr %24, align 4, !tbaa !25
  %28 = icmp ult i64 %18, 2
  %29 = getelementptr inbounds [32 x [80 x i8]], ptr %2, i64 0, i64 %19
  %30 = select i1 %28, ptr %29, ptr %3
  %31 = trunc i64 %19 to i32
  %32 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, i32 noundef %31, i32 noundef %22, i32 noundef %23, i32 noundef %26, i32 noundef %27, ptr noundef nonnull %30) #32
  %33 = icmp eq i64 %19, %16
  br i1 %33, label %34, label %17, !llvm.loop !26

34:                                               ; preds = %17, %1
  %35 = load i32, ptr getelementptr inbounds ([2 x %struct.Basic_Info], ptr @g_info_totals, i64 0, i64 1, i32 1), align 16, !tbaa !23
  %36 = load i32, ptr getelementptr inbounds ([2 x %struct.Basic_Info], ptr @g_info_totals, i64 0, i64 1), align 4, !tbaa !25
  %37 = load i32, ptr getelementptr inbounds ([2 x %struct.Basic_Info], ptr @g_info_totals, i64 0, i64 0, i32 1), align 4, !tbaa !23
  %38 = load i32, ptr @g_info_totals, align 16, !tbaa !25
  %39 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, i32 noundef %35, i32 noundef %36, i32 noundef %37, i32 noundef %38) #32
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #31
  call void @llvm.lifetime.end.p0(i64 2560, ptr nonnull %2) #31
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nofree nounwind optsize
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: nounwind optsize uwtable
define internal ptr @current_search_state() #0 {
  store i32 1, ptr @g_print, align 4, !tbaa !7
  %1 = load ptr, ptr @current_search_state.str, align 8, !tbaa !27
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @free(ptr noundef nonnull %1) #33
  br label %4

4:                                                ; preds = %3, %0
  %5 = load i64, ptr @g_num_nodes, align 8, !tbaa !29
  %6 = tail call ptr @u64bit_to_string(i64 noundef %5) #33
  %7 = load i32, ptr getelementptr inbounds ([128 x i32], ptr @g_move_number, i64 0, i64 1), align 4, !tbaa !7
  %8 = load i32, ptr getelementptr inbounds ([128 x i32], ptr @g_move_number, i64 0, i64 2), align 8, !tbaa !7
  %9 = load i32, ptr getelementptr inbounds ([128 x i32], ptr @g_move_number, i64 0, i64 3), align 4, !tbaa !7
  %10 = load i32, ptr getelementptr inbounds ([128 x i32], ptr @g_move_number, i64 0, i64 4), align 16, !tbaa !7
  %11 = load i32, ptr getelementptr inbounds ([128 x i32], ptr @g_move_number, i64 0, i64 5), align 4, !tbaa !7
  %12 = load i32, ptr getelementptr inbounds ([128 x i32], ptr @g_move_number, i64 0, i64 6), align 8, !tbaa !7
  %13 = load i32, ptr getelementptr inbounds ([128 x i32], ptr @g_move_number, i64 0, i64 7), align 4, !tbaa !7
  %14 = load i32, ptr getelementptr inbounds ([128 x i32], ptr @g_move_number, i64 0, i64 8), align 16, !tbaa !7
  %15 = load i32, ptr getelementptr inbounds ([128 x i32], ptr @g_move_number, i64 0, i64 9), align 4, !tbaa !7
  %16 = tail call i32 (ptr, ptr, ...) @asprintf(ptr noundef nonnull @current_search_state.str, ptr noundef nonnull @.str.27, ptr noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, i32 noundef %11, i32 noundef %12, i32 noundef %13, i32 noundef %14, i32 noundef %15) #33
  %17 = load ptr, ptr @current_search_state.str, align 8, !tbaa !27
  ret ptr %17
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind optsize
declare i32 @asprintf(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: nofree nounwind optsize uwtable
define internal i32 @does_next_player_win(i32 noundef %0, i32 noundef %1) #4 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [32 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #31
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #31
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #31
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #31
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #31
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #31
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #31
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #31
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %11) #31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %11, i8 0, i64 128, i1 false), !tbaa !7
  %12 = sext i32 %0 to i64
  %13 = getelementptr inbounds [2 x %struct.Basic_Info], ptr @g_info_totals, i64 0, i64 %12
  %14 = load i32, ptr %13, align 4, !tbaa !25
  %15 = load i32, ptr @g_empty_squares, align 4, !tbaa !7
  %16 = getelementptr inbounds [2 x i32], ptr @g_board_size, i64 0, i64 %12
  %17 = load i32, ptr %16, align 4, !tbaa !7
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %83

19:                                               ; preds = %2
  %20 = zext i32 %17 to i64
  %21 = getelementptr inbounds [2 x [32 x i32]], ptr @g_board, i64 0, i64 %12, i64 1
  %22 = load i32, ptr %21, align 4, !tbaa !7
  %23 = getelementptr inbounds [2 x [32 x i32]], ptr @g_board, i64 0, i64 %12, i64 2
  %24 = load i32, ptr %23, align 8, !tbaa !7
  br label %31

25:                                               ; preds = %68
  %.lcssa2 = phi i32 [ %79, %68 ]
  %.lcssa1 = phi i32 [ %80, %68 ]
  %.lcssa = phi i32 [ %81, %68 ]
  store i32 %.lcssa2, ptr %40, align 4, !tbaa !7
  store i32 %.lcssa1, ptr %42, align 4, !tbaa !7
  br label %26

26:                                               ; preds = %31, %25
  %27 = phi i32 [ %.lcssa1, %25 ], [ %34, %31 ]
  %28 = phi i32 [ %.lcssa2, %25 ], [ %35, %31 ]
  %29 = phi i32 [ %.lcssa, %25 ], [ %38, %31 ]
  %30 = icmp eq i64 %39, %20
  br i1 %30, label %83, label %31, !llvm.loop !31

31:                                               ; preds = %26, %19
  %32 = phi i32 [ %24, %19 ], [ %58, %26 ]
  %33 = phi i32 [ %22, %19 ], [ %32, %26 ]
  %34 = phi i32 [ 0, %19 ], [ %45, %26 ]
  %35 = phi i32 [ 0, %19 ], [ %27, %26 ]
  %36 = phi i32 [ 0, %19 ], [ %28, %26 ]
  %37 = phi i64 [ 0, %19 ], [ %39, %26 ]
  %38 = phi i32 [ 0, %19 ], [ %29, %26 ]
  %39 = add nuw nsw i64 %37, 1
  %40 = getelementptr inbounds i32, ptr %11, i64 %39
  %41 = add nuw nsw i64 %37, 2
  %42 = getelementptr inbounds i32, ptr %11, i64 %41
  %43 = add nuw nsw i64 %37, 3
  %44 = getelementptr inbounds i32, ptr %11, i64 %43
  %45 = load i32, ptr %44, align 4, !tbaa !7
  %46 = or i32 %36, %33
  %47 = or i32 %46, %32
  %48 = or i32 %47, %34
  %49 = or i32 %48, %35
  %50 = or i32 %49, %45
  %51 = lshr i32 %50, 1
  %52 = or i32 %51, %50
  %53 = getelementptr inbounds [2 x [32 x i32]], ptr @g_board, i64 0, i64 %12, i64 %37
  %54 = load i32, ptr %53, align 4, !tbaa !7
  %55 = lshr i32 %54, 1
  %56 = and i32 %55, %54
  %57 = getelementptr inbounds [2 x [32 x i32]], ptr @g_board, i64 0, i64 %12, i64 %43
  %58 = load i32, ptr %57, align 4, !tbaa !7
  %59 = lshr i32 %58, 1
  %60 = and i32 %59, %58
  %61 = or i32 %60, %56
  %62 = xor i32 %52, -1
  %63 = and i32 %61, %62
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %26, label %65

65:                                               ; preds = %31
  %66 = load i32, ptr %40, align 4, !tbaa !7
  %67 = load i32, ptr %42, align 4, !tbaa !7
  br label %68

68:                                               ; preds = %68, %65
  %69 = phi i32 [ %67, %65 ], [ %80, %68 ]
  %70 = phi i32 [ %66, %65 ], [ %79, %68 ]
  %71 = phi i32 [ %63, %65 ], [ %78, %68 ]
  %72 = phi i32 [ %38, %65 ], [ %81, %68 ]
  %73 = sub nsw i32 0, %71
  %74 = and i32 %71, %73
  %75 = shl nuw i32 %74, 1
  %76 = or i32 %75, %74
  %77 = xor i32 %76, -1
  %78 = and i32 %71, %77
  %79 = or i32 %76, %70
  %80 = or i32 %76, %69
  %81 = add nsw i32 %72, 1
  %82 = icmp eq i32 %78, 0
  br i1 %82, label %25, label %68, !llvm.loop !32

83:                                               ; preds = %26, %2
  %84 = phi i32 [ 0, %2 ], [ %29, %26 ]
  call fastcc void @pack_vuln(ptr noundef nonnull %11, i32 noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7) #32
  call fastcc void @pack_safe(ptr noundef nonnull %11, i32 noundef %0, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %10) #32
  %85 = icmp eq i32 %1, 0
  br i1 %85, label %101, label %86

86:                                               ; preds = %83
  %87 = load ptr, ptr @stderr, align 8, !tbaa !27
  %88 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %87, ptr noundef nonnull @.str, i32 noundef %0) #34
  %89 = load ptr, ptr @stderr, align 8, !tbaa !27
  %90 = load i32, ptr %3, align 4, !tbaa !7
  %91 = load i32, ptr %4, align 4, !tbaa !7
  %92 = load i32, ptr %5, align 4, !tbaa !7
  %93 = load i32, ptr %6, align 4, !tbaa !7
  %94 = load i32, ptr %7, align 4, !tbaa !7
  %95 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %89, ptr noundef nonnull @.str.1.1, i32 noundef %84, i32 noundef %90, i32 noundef %91, i32 noundef %92, i32 noundef %93, i32 noundef %14, i32 noundef %94, i32 noundef %15) #34
  %96 = load ptr, ptr @stderr, align 8, !tbaa !27
  %97 = load i32, ptr %8, align 4, !tbaa !7
  %98 = load i32, ptr %9, align 4, !tbaa !7
  %99 = load i32, ptr %10, align 4, !tbaa !7
  %100 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %96, ptr noundef nonnull @.str.2, i32 noundef %97, i32 noundef %98, i32 noundef %99) #34
  br label %101

101:                                              ; preds = %86, %83
  %102 = and i32 %84, -2147483647
  %103 = icmp eq i32 %102, 1
  br i1 %103, label %104, label %108

104:                                              ; preds = %101
  %105 = add nsw i32 %84, -1
  %106 = add nsw i32 %14, 2
  %107 = load i32, ptr %3, align 4, !tbaa !7
  br label %177

108:                                              ; preds = %101
  %109 = load i32, ptr %3, align 4, !tbaa !7
  %110 = srem i32 %109, 3
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %119, label %112

112:                                              ; preds = %108
  %113 = add nsw i32 %109, -1
  %114 = add nsw i32 %14, 1
  %115 = load i32, ptr %4, align 4, !tbaa !7
  %116 = icmp slt i32 %115, %109
  br i1 %116, label %177, label %117

117:                                              ; preds = %112
  %118 = add nsw i32 %115, -1
  store i32 %118, ptr %4, align 4, !tbaa !7
  br label %177

119:                                              ; preds = %108
  %120 = load i32, ptr %5, align 4, !tbaa !7
  %121 = and i32 %120, 1
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %130, label %123

123:                                              ; preds = %119
  %124 = add nsw i32 %120, -1
  store i32 %124, ptr %5, align 4, !tbaa !7
  %125 = add nsw i32 %14, 1
  %126 = load i32, ptr %6, align 4, !tbaa !7
  %127 = icmp slt i32 %126, %120
  br i1 %127, label %177, label %128

128:                                              ; preds = %123
  %129 = add nsw i32 %126, -1
  store i32 %129, ptr %6, align 4, !tbaa !7
  br label %177

130:                                              ; preds = %119
  %131 = load i32, ptr %8, align 4, !tbaa !7
  %132 = and i32 %131, 1
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %138, label %134

134:                                              ; preds = %130
  %135 = add nsw i32 %131, -1
  store i32 %135, ptr %8, align 4, !tbaa !7
  %136 = load i32, ptr %7, align 4, !tbaa !7
  %137 = add nsw i32 %136, 3
  store i32 %137, ptr %7, align 4, !tbaa !7
  br label %177

138:                                              ; preds = %130
  %139 = load i32, ptr %9, align 4, !tbaa !7
  %140 = and i32 %139, 1
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %146, label %142

142:                                              ; preds = %138
  %143 = add nsw i32 %139, -1
  store i32 %143, ptr %9, align 4, !tbaa !7
  %144 = load i32, ptr %7, align 4, !tbaa !7
  %145 = add nsw i32 %144, 2
  store i32 %145, ptr %7, align 4, !tbaa !7
  br label %177

146:                                              ; preds = %138
  %147 = load i32, ptr %10, align 4, !tbaa !7
  %148 = and i32 %147, 1
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %154, label %150

150:                                              ; preds = %146
  %151 = add nsw i32 %147, -1
  store i32 %151, ptr %10, align 4, !tbaa !7
  %152 = load i32, ptr %7, align 4, !tbaa !7
  %153 = add nsw i32 %152, 1
  store i32 %153, ptr %7, align 4, !tbaa !7
  br label %177

154:                                              ; preds = %146
  %155 = icmp sgt i32 %109, 0
  br i1 %155, label %156, label %163

156:                                              ; preds = %154
  %157 = add nsw i32 %109, -1
  %158 = add nsw i32 %14, 1
  %159 = load i32, ptr %4, align 4, !tbaa !7
  %160 = icmp slt i32 %159, %109
  br i1 %160, label %177, label %161

161:                                              ; preds = %156
  %162 = add nsw i32 %159, -1
  store i32 %162, ptr %4, align 4, !tbaa !7
  br label %177

163:                                              ; preds = %154
  %164 = icmp sgt i32 %120, 0
  br i1 %164, label %165, label %172

165:                                              ; preds = %163
  %166 = add nsw i32 %120, -1
  store i32 %166, ptr %5, align 4, !tbaa !7
  %167 = add nsw i32 %14, 1
  %168 = load i32, ptr %6, align 4, !tbaa !7
  %169 = icmp slt i32 %168, %120
  br i1 %169, label %177, label %170

170:                                              ; preds = %165
  %171 = add nsw i32 %168, -1
  store i32 %171, ptr %6, align 4, !tbaa !7
  br label %177

172:                                              ; preds = %163
  %173 = icmp sgt i32 %84, 0
  br i1 %173, label %174, label %288

174:                                              ; preds = %172
  %175 = add nsw i32 %84, -1
  %176 = add nsw i32 %14, 2
  br label %177

177:                                              ; preds = %174, %170, %165, %161, %156, %150, %142, %134, %128, %123, %117, %112, %104
  %178 = phi i32 [ %107, %104 ], [ %157, %156 ], [ %157, %161 ], [ %109, %165 ], [ %109, %170 ], [ %109, %174 ], [ %109, %150 ], [ %109, %142 ], [ %109, %134 ], [ %109, %123 ], [ %109, %128 ], [ %113, %112 ], [ %113, %117 ]
  %179 = phi i32 [ %105, %104 ], [ %84, %156 ], [ %84, %161 ], [ %84, %165 ], [ %84, %170 ], [ %175, %174 ], [ %84, %150 ], [ %84, %142 ], [ %84, %134 ], [ %84, %123 ], [ %84, %128 ], [ %84, %112 ], [ %84, %117 ]
  %180 = phi i32 [ %106, %104 ], [ %158, %156 ], [ %158, %161 ], [ %167, %165 ], [ %167, %170 ], [ %176, %174 ], [ %14, %150 ], [ %14, %142 ], [ %14, %134 ], [ %125, %123 ], [ %125, %128 ], [ %114, %112 ], [ %114, %117 ]
  %181 = and i32 %179, -2147483647
  %182 = icmp eq i32 %181, 1
  %183 = add nsw i32 %178, 2
  %184 = select i1 %182, i32 %183, i32 %178
  %185 = sext i1 %182 to i32
  %186 = add nsw i32 %179, %185
  %187 = sdiv i32 %184, 3
  %188 = load i32, ptr %5, align 4, !tbaa !7
  %189 = sdiv i32 %188, 2
  %190 = add i32 %186, %180
  %191 = add i32 %190, %187
  %192 = add i32 %191, %189
  %193 = srem i32 %184, 3
  %194 = icmp eq i32 %193, 0
  %195 = and i32 %188, 1
  %196 = icmp eq i32 %195, 0
  %197 = select i1 %194, i1 true, i1 %196
  br i1 %197, label %203, label %198

198:                                              ; preds = %177
  %199 = add nsw i32 %192, 1
  %200 = load i32, ptr %7, align 4, !tbaa !7
  %201 = add nsw i32 %200, -1
  store i32 %201, ptr %7, align 4, !tbaa !7
  %202 = load i32, ptr %8, align 4, !tbaa !7
  br label %206

203:                                              ; preds = %177
  %204 = select i1 %194, i1 %196, i1 false
  %205 = load i32, ptr %8, align 4, !tbaa !7
  br i1 %204, label %206, label %222

206:                                              ; preds = %203, %198
  %207 = phi i32 [ %202, %198 ], [ %205, %203 ]
  %208 = phi i32 [ %199, %198 ], [ %192, %203 ]
  %209 = and i32 %207, -2147483647
  %210 = icmp eq i32 %209, 1
  %211 = load i32, ptr %9, align 4, !tbaa !7
  %212 = sext i1 %210 to i32
  %213 = add nsw i32 %207, %212
  %214 = zext i1 %210 to i32
  %215 = add nsw i32 %211, %214
  %216 = and i32 %215, -2147483647
  %217 = icmp eq i32 %216, 1
  %218 = load i32, ptr %10, align 4, !tbaa !7
  br i1 %217, label %219, label %250

219:                                              ; preds = %206
  %220 = add nsw i32 %215, -1
  %221 = add nsw i32 %218, 1
  br label %250

222:                                              ; preds = %203
  %223 = and i32 %205, -2147483647
  %224 = icmp eq i32 %223, 1
  br i1 %224, label %225, label %235

225:                                              ; preds = %222
  %226 = load i32, ptr %7, align 4, !tbaa !7
  %227 = add nsw i32 %226, 3
  store i32 %227, ptr %7, align 4, !tbaa !7
  %228 = load i32, ptr %9, align 4, !tbaa !7
  %229 = and i32 %228, -2147483647
  %230 = icmp eq i32 %229, 1
  %231 = load i32, ptr %10, align 4, !tbaa !7
  br i1 %230, label %232, label %250

232:                                              ; preds = %225
  %233 = add nsw i32 %228, -1
  %234 = add nsw i32 %231, 1
  br label %250

235:                                              ; preds = %222
  %236 = load i32, ptr %9, align 4, !tbaa !7
  %237 = and i32 %236, -2147483647
  %238 = icmp eq i32 %237, 1
  br i1 %238, label %239, label %243

239:                                              ; preds = %235
  %240 = load i32, ptr %7, align 4, !tbaa !7
  %241 = add nsw i32 %240, 2
  store i32 %241, ptr %7, align 4, !tbaa !7
  %242 = load i32, ptr %10, align 4, !tbaa !7
  br label %250

243:                                              ; preds = %235
  %244 = load i32, ptr %10, align 4, !tbaa !7
  %245 = and i32 %244, -2147483647
  %246 = icmp eq i32 %245, 1
  br i1 %246, label %247, label %250

247:                                              ; preds = %243
  %248 = load i32, ptr %7, align 4, !tbaa !7
  %249 = add nsw i32 %248, 1
  store i32 %249, ptr %7, align 4, !tbaa !7
  br label %250

250:                                              ; preds = %247, %243, %239, %232, %225, %219, %206
  %251 = phi i32 [ %234, %232 ], [ %231, %225 ], [ %244, %243 ], [ %244, %247 ], [ %242, %239 ], [ %218, %206 ], [ %221, %219 ]
  %252 = phi i32 [ %233, %232 ], [ %228, %225 ], [ %236, %243 ], [ %236, %247 ], [ %236, %239 ], [ %215, %206 ], [ %220, %219 ]
  %253 = phi i32 [ %205, %232 ], [ %205, %225 ], [ %205, %243 ], [ %205, %247 ], [ %205, %239 ], [ %213, %206 ], [ %213, %219 ]
  %254 = phi i32 [ %192, %232 ], [ %192, %225 ], [ %192, %243 ], [ %192, %247 ], [ %192, %239 ], [ %208, %206 ], [ %208, %219 ]
  %255 = load i32, ptr %4, align 4, !tbaa !7
  %256 = sdiv i32 %184, -3
  %257 = sub nsw i32 %184, %255
  %258 = sdiv i32 %257, 3
  %259 = load i32, ptr %7, align 4, !tbaa !7
  %260 = add i32 %255, %256
  %261 = add i32 %260, %259
  %262 = add i32 %261, %258
  %263 = load i32, ptr %6, align 4, !tbaa !7
  %264 = sdiv i32 %188, -2
  %265 = sub nsw i32 %188, %263
  %266 = sdiv i32 %265, 2
  %267 = add i32 %263, %264
  %268 = add i32 %267, %266
  %269 = add nsw i32 %268, %262
  %270 = sdiv i32 %253, 2
  %271 = mul nsw i32 %270, 3
  %272 = add nsw i32 %269, %271
  %273 = sdiv i32 %252, 2
  %274 = shl nsw i32 %273, 1
  %275 = add nsw i32 %272, %274
  %276 = sdiv i32 %251, 2
  %277 = add nsw i32 %275, %276
  %278 = shl i32 %254, 1
  %279 = add i32 %278, %277
  %280 = sub i32 %15, %279
  %281 = sdiv i32 %280, 2
  %282 = sub nsw i32 %254, %281
  br i1 %85, label %288, label %283

283:                                              ; preds = %250
  %284 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %254, i32 noundef %281) #32
  %285 = icmp sgt i32 %282, -1
  br i1 %285, label %286, label %288

286:                                              ; preds = %283
  %287 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.6)
  br label %288

288:                                              ; preds = %286, %283, %250, %172
  %289 = phi i32 [ -1, %172 ], [ %282, %283 ], [ %282, %286 ], [ %282, %250 ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %11) #31
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #31
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #31
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #31
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #31
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #31
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #31
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #31
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #31
  ret i32 %289
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: nofree norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @pack_vuln(ptr nocapture noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5, ptr nocapture noundef writeonly %6) unnamed_addr #9 {
  %8 = sext i32 %1 to i64
  %9 = getelementptr inbounds [2 x i32], ptr @g_board_size, i64 0, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !7
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %171

12:                                               ; preds = %7
  %13 = load i32, ptr %0, align 4, !tbaa !7
  br label %14

14:                                               ; preds = %159, %12
  %15 = phi i32 [ %13, %12 ], [ %164, %159 ]
  %16 = phi i64 [ 0, %12 ], [ %33, %159 ]
  %17 = phi i32 [ 0, %12 ], [ %160, %159 ]
  %18 = phi i32 [ 0, %12 ], [ %167, %159 ]
  %19 = phi i32 [ 0, %12 ], [ %166, %159 ]
  %20 = phi i32 [ 0, %12 ], [ %161, %159 ]
  %21 = phi i32 [ 0, %12 ], [ %165, %159 ]
  %22 = phi i32 [ 0, %12 ], [ %162, %159 ]
  %23 = phi i32 [ 0, %12 ], [ %163, %159 ]
  %24 = add nuw nsw i64 %16, 2
  %25 = getelementptr inbounds [2 x [32 x i32]], ptr @g_board, i64 0, i64 %8, i64 %24
  %26 = load i32, ptr %25, align 4, !tbaa !7
  %27 = shl i32 %26, 1
  %28 = lshr i32 %26, 1
  %29 = and i32 %27, %28
  %30 = or i32 %29, %26
  %31 = xor i32 %30, -1
  %32 = or i32 %15, %31
  %33 = add nuw nsw i64 %16, 1
  %34 = getelementptr inbounds [2 x [32 x i32]], ptr @g_board, i64 0, i64 %8, i64 %33
  %35 = load i32, ptr %34, align 4, !tbaa !7
  %36 = getelementptr inbounds i32, ptr %0, i64 %33
  %37 = load i32, ptr %36, align 4, !tbaa !7
  %38 = or i32 %37, %35
  %39 = getelementptr inbounds [2 x [32 x i32]], ptr @g_board, i64 0, i64 %8, i64 %16
  %40 = load i32, ptr %39, align 4, !tbaa !7
  %41 = and i32 %40, %26
  %42 = icmp eq i32 %38, -1
  br i1 %42, label %159, label %43

43:                                               ; preds = %14
  %44 = xor i32 %38, -1
  br label %45

45:                                               ; preds = %133, %43
  %46 = phi i32 [ %134, %133 ], [ %37, %43 ]
  %47 = phi i32 [ %140, %133 ], [ %17, %43 ]
  %48 = phi i32 [ %139, %133 ], [ 0, %43 ]
  %49 = phi i32 [ %83, %133 ], [ %18, %43 ]
  %50 = phi i32 [ %138, %133 ], [ %19, %43 ]
  %51 = phi i32 [ %137, %133 ], [ %20, %43 ]
  %52 = phi i32 [ %136, %133 ], [ %21, %43 ]
  %53 = phi i32 [ %135, %133 ], [ %22, %43 ]
  %54 = phi i32 [ %58, %133 ], [ %44, %43 ]
  %55 = phi i32 [ %57, %133 ], [ %23, %43 ]
  %56 = sub i32 0, %54
  %57 = and i32 %54, %56
  %58 = xor i32 %57, %54
  %59 = lshr i32 %57, 1
  %60 = and i32 %59, %55
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %79

62:                                               ; preds = %45
  switch i32 %48, label %79 [
    i32 1, label %63
    i32 3, label %66
  ]

63:                                               ; preds = %62
  %64 = add nsw i32 %49, 1
  %65 = or i32 %46, %55
  store i32 %65, ptr %36, align 4, !tbaa !7
  br label %79

66:                                               ; preds = %62
  %67 = shl i32 %47, 1
  %68 = or i32 %47, %46
  %69 = or i32 %68, %67
  store i32 %69, ptr %36, align 4, !tbaa !7
  %70 = and i32 %47, %32
  %71 = icmp eq i32 %70, 0
  %72 = and i32 %67, %32
  %73 = icmp eq i32 %72, 0
  %74 = select i1 %71, i1 %73, i1 false
  br i1 %74, label %77, label %75

75:                                               ; preds = %66
  %76 = add nsw i32 %52, 1
  br label %79

77:                                               ; preds = %66
  %78 = add nsw i32 %50, 1
  br label %79

79:                                               ; preds = %77, %75, %63, %62, %45
  %80 = phi i32 [ %46, %45 ], [ %65, %63 ], [ %69, %75 ], [ %69, %77 ], [ %46, %62 ]
  %81 = phi i32 [ %52, %45 ], [ %52, %63 ], [ %76, %75 ], [ %52, %77 ], [ %52, %62 ]
  %82 = phi i32 [ %50, %45 ], [ %50, %63 ], [ %50, %75 ], [ %78, %77 ], [ %50, %62 ]
  %83 = phi i32 [ %49, %45 ], [ %64, %63 ], [ %49, %75 ], [ %49, %77 ], [ %49, %62 ]
  %84 = phi i32 [ %48, %45 ], [ 0, %63 ], [ 0, %75 ], [ 0, %77 ], [ 0, %62 ]
  %85 = and i32 %41, %57
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %94, label %87

87:                                               ; preds = %79
  switch i32 %84, label %91 [
    i32 0, label %133
    i32 1, label %88
    i32 2, label %89
    i32 3, label %90
  ]

88:                                               ; preds = %87
  br label %133

89:                                               ; preds = %87
  br label %133

90:                                               ; preds = %87
  br label %133

91:                                               ; preds = %87
  %92 = icmp eq i32 %84, 4
  %93 = select i1 %92, i32 3, i32 %84
  br label %133

94:                                               ; preds = %79
  switch i32 %84, label %132 [
    i32 0, label %133
    i32 1, label %95
    i32 2, label %105
    i32 3, label %118
    i32 4, label %133
  ]

95:                                               ; preds = %94
  %96 = or i32 %57, %80
  %97 = or i32 %96, %59
  store i32 %97, ptr %36, align 4, !tbaa !7
  %98 = or i32 %59, %57
  %99 = and i32 %98, %32
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %103, label %101

101:                                              ; preds = %95
  %102 = add nsw i32 %81, 1
  br label %133

103:                                              ; preds = %95
  %104 = add nsw i32 %82, 1
  br label %133

105:                                              ; preds = %94
  %106 = shl i32 %47, 1
  %107 = or i32 %47, %80
  %108 = or i32 %107, %106
  store i32 %108, ptr %36, align 4, !tbaa !7
  %109 = and i32 %47, %32
  %110 = icmp eq i32 %109, 0
  %111 = and i32 %106, %32
  %112 = icmp eq i32 %111, 0
  %113 = select i1 %110, i1 %112, i1 false
  br i1 %113, label %116, label %114

114:                                              ; preds = %105
  %115 = add nsw i32 %53, 1
  br label %133

116:                                              ; preds = %105
  %117 = add nsw i32 %51, 1
  br label %133

118:                                              ; preds = %94
  %119 = shl i32 %47, 1
  %120 = or i32 %47, %80
  %121 = or i32 %120, %119
  store i32 %121, ptr %36, align 4, !tbaa !7
  %122 = and i32 %47, %32
  %123 = icmp ne i32 %122, 0
  %124 = and i32 %119, %32
  %125 = icmp ne i32 %124, 0
  %126 = select i1 %123, i1 true, i1 %125
  %127 = zext i1 %126 to i32
  %128 = add nsw i32 %81, %127
  %129 = xor i1 %126, true
  %130 = zext i1 %129 to i32
  %131 = add nsw i32 %82, %130
  br label %133

132:                                              ; preds = %94
  br label %133

133:                                              ; preds = %132, %118, %116, %114, %103, %101, %94, %94, %91, %90, %89, %88, %87
  %134 = phi i32 [ %80, %88 ], [ %80, %89 ], [ %80, %90 ], [ %80, %91 ], [ %97, %101 ], [ %97, %103 ], [ %108, %114 ], [ %108, %116 ], [ %121, %118 ], [ %80, %87 ], [ %80, %94 ], [ %80, %132 ], [ %80, %94 ]
  %135 = phi i32 [ %53, %88 ], [ %53, %89 ], [ %53, %90 ], [ %53, %91 ], [ %53, %101 ], [ %53, %103 ], [ %115, %114 ], [ %53, %116 ], [ %53, %118 ], [ %53, %87 ], [ %53, %94 ], [ %53, %132 ], [ %53, %94 ]
  %136 = phi i32 [ %81, %88 ], [ %81, %89 ], [ %81, %90 ], [ %81, %91 ], [ %102, %101 ], [ %81, %103 ], [ %81, %114 ], [ %81, %116 ], [ %128, %118 ], [ %81, %87 ], [ %81, %94 ], [ %81, %132 ], [ %81, %94 ]
  %137 = phi i32 [ %51, %88 ], [ %51, %89 ], [ %51, %90 ], [ %51, %91 ], [ %51, %101 ], [ %51, %103 ], [ %51, %114 ], [ %117, %116 ], [ %51, %118 ], [ %51, %87 ], [ %51, %94 ], [ %51, %132 ], [ %51, %94 ]
  %138 = phi i32 [ %82, %88 ], [ %82, %89 ], [ %82, %90 ], [ %82, %91 ], [ %82, %101 ], [ %104, %103 ], [ %82, %114 ], [ %82, %116 ], [ %131, %118 ], [ %82, %87 ], [ %82, %94 ], [ %82, %132 ], [ %82, %94 ]
  %139 = phi i32 [ 0, %88 ], [ 3, %89 ], [ 4, %90 ], [ %93, %91 ], [ 0, %101 ], [ 0, %103 ], [ 0, %114 ], [ 0, %116 ], [ 2, %118 ], [ 1, %87 ], [ 2, %94 ], [ %84, %132 ], [ 2, %94 ]
  %140 = phi i32 [ %47, %88 ], [ %47, %89 ], [ %47, %90 ], [ %47, %91 ], [ %47, %101 ], [ %47, %103 ], [ %47, %114 ], [ %47, %116 ], [ %57, %118 ], [ %47, %87 ], [ %57, %94 ], [ %47, %132 ], [ %57, %94 ]
  %141 = icmp eq i32 %58, 0
  br i1 %141, label %142, label %45, !llvm.loop !33

142:                                              ; preds = %133
  %.lcssa8 = phi i32 [ %134, %133 ]
  %.lcssa7 = phi i32 [ %135, %133 ]
  %.lcssa6 = phi i32 [ %136, %133 ]
  %.lcssa5 = phi i32 [ %137, %133 ]
  %.lcssa4 = phi i32 [ %138, %133 ]
  %.lcssa3 = phi i32 [ %139, %133 ]
  %.lcssa2 = phi i32 [ %140, %133 ]
  %.lcssa1 = phi i32 [ %83, %133 ]
  %.lcssa = phi i32 [ %57, %133 ]
  switch i32 %.lcssa3, label %159 [
    i32 1, label %143
    i32 3, label %146
  ]

143:                                              ; preds = %142
  %144 = add nsw i32 %.lcssa1, 1
  %145 = or i32 %.lcssa8, %.lcssa
  store i32 %145, ptr %36, align 4, !tbaa !7
  br label %159

146:                                              ; preds = %142
  %147 = shl i32 %.lcssa2, 1
  %148 = or i32 %.lcssa2, %.lcssa8
  %149 = or i32 %148, %147
  store i32 %149, ptr %36, align 4, !tbaa !7
  %150 = and i32 %.lcssa2, %32
  %151 = icmp eq i32 %150, 0
  %152 = and i32 %147, %32
  %153 = icmp eq i32 %152, 0
  %154 = select i1 %151, i1 %153, i1 false
  br i1 %154, label %157, label %155

155:                                              ; preds = %146
  %156 = add nsw i32 %.lcssa6, 1
  br label %159

157:                                              ; preds = %146
  %158 = add nsw i32 %.lcssa4, 1
  br label %159

159:                                              ; preds = %157, %155, %143, %142, %14
  %160 = phi i32 [ %.lcssa2, %143 ], [ %.lcssa2, %155 ], [ %.lcssa2, %157 ], [ %.lcssa2, %142 ], [ %17, %14 ]
  %161 = phi i32 [ %.lcssa5, %143 ], [ %.lcssa5, %155 ], [ %.lcssa5, %157 ], [ %.lcssa5, %142 ], [ %20, %14 ]
  %162 = phi i32 [ %.lcssa7, %143 ], [ %.lcssa7, %155 ], [ %.lcssa7, %157 ], [ %.lcssa7, %142 ], [ %22, %14 ]
  %163 = phi i32 [ %.lcssa, %143 ], [ %.lcssa, %155 ], [ %.lcssa, %157 ], [ %.lcssa, %142 ], [ %23, %14 ]
  %164 = phi i32 [ %145, %143 ], [ %149, %155 ], [ %149, %157 ], [ %.lcssa8, %142 ], [ %37, %14 ]
  %165 = phi i32 [ %.lcssa6, %143 ], [ %156, %155 ], [ %.lcssa6, %157 ], [ %.lcssa6, %142 ], [ %21, %14 ]
  %166 = phi i32 [ %.lcssa4, %143 ], [ %.lcssa4, %155 ], [ %158, %157 ], [ %.lcssa4, %142 ], [ %19, %14 ]
  %167 = phi i32 [ %144, %143 ], [ %.lcssa1, %155 ], [ %.lcssa1, %157 ], [ %.lcssa1, %142 ], [ %18, %14 ]
  %168 = load i32, ptr %9, align 4, !tbaa !7
  %169 = sext i32 %168 to i64
  %170 = icmp slt i64 %33, %169
  br i1 %170, label %14, label %171, !llvm.loop !34

171:                                              ; preds = %159, %7
  %172 = phi i32 [ 0, %7 ], [ %162, %159 ]
  %173 = phi i32 [ 0, %7 ], [ %165, %159 ]
  %174 = phi i32 [ 0, %7 ], [ %161, %159 ]
  %175 = phi i32 [ 0, %7 ], [ %166, %159 ]
  %176 = phi i32 [ 0, %7 ], [ %167, %159 ]
  %177 = add nsw i32 %173, %172
  store i32 %177, ptr %2, align 4, !tbaa !7
  store i32 %173, ptr %3, align 4, !tbaa !7
  %178 = add nsw i32 %175, %174
  store i32 %178, ptr %4, align 4, !tbaa !7
  store i32 %175, ptr %5, align 4, !tbaa !7
  store i32 %176, ptr %6, align 4, !tbaa !7
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @pack_safe(ptr nocapture noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4) unnamed_addr #10 {
  %6 = sext i32 %1 to i64
  %7 = getelementptr inbounds [2 x i32], ptr @g_board_size, i64 0, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !7
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %159

10:                                               ; preds = %5
  %11 = getelementptr inbounds [2 x [32 x i32]], ptr @g_board, i64 0, i64 %6, i64 1
  %12 = load i32, ptr %11, align 4, !tbaa !7
  br label %23

13:                                               ; preds = %151
  %.lcssa3 = phi i32 [ %153, %151 ]
  %.lcssa2 = phi i32 [ %155, %151 ]
  %.lcssa1 = phi i32 [ %156, %151 ]
  %.lcssa = phi i32 [ %157, %151 ]
  %14 = load i32, ptr %7, align 4, !tbaa !7
  br label %15

15:                                               ; preds = %23, %13
  %16 = phi i32 [ %24, %23 ], [ %14, %13 ]
  %17 = phi i32 [ %34, %23 ], [ %.lcssa3, %13 ]
  %18 = phi i32 [ %29, %23 ], [ %.lcssa2, %13 ]
  %19 = phi i32 [ %28, %23 ], [ %.lcssa1, %13 ]
  %20 = phi i32 [ %27, %23 ], [ %.lcssa, %13 ]
  %21 = sext i32 %16 to i64
  %22 = icmp slt i64 %36, %21
  br i1 %22, label %23, label %159, !llvm.loop !35

23:                                               ; preds = %15, %10
  %24 = phi i32 [ %8, %10 ], [ %16, %15 ]
  %25 = phi i32 [ %12, %10 ], [ %17, %15 ]
  %26 = phi i64 [ 0, %10 ], [ %36, %15 ]
  %27 = phi i32 [ 0, %10 ], [ %20, %15 ]
  %28 = phi i32 [ 0, %10 ], [ %19, %15 ]
  %29 = phi i32 [ 0, %10 ], [ %18, %15 ]
  %30 = getelementptr inbounds [2 x [32 x i32]], ptr @g_board, i64 0, i64 %6, i64 %26
  %31 = load i32, ptr %30, align 4, !tbaa !7
  %32 = add nuw nsw i64 %26, 2
  %33 = getelementptr inbounds [2 x [32 x i32]], ptr @g_board, i64 0, i64 %6, i64 %32
  %34 = load i32, ptr %33, align 4, !tbaa !7
  %35 = and i32 %34, %31
  %36 = add nuw nsw i64 %26, 1
  %37 = getelementptr inbounds i32, ptr %0, i64 %36
  %38 = load i32, ptr %37, align 4, !tbaa !7
  %39 = or i32 %38, %25
  %40 = lshr i32 %39, 1
  %41 = or i32 %40, %39
  %42 = xor i32 %41, -1
  %43 = lshr i32 %35, 1
  %44 = and i32 %43, %42
  %45 = and i32 %44, %35
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %15, label %47

47:                                               ; preds = %23
  %48 = getelementptr inbounds i32, ptr %0, i64 %26
  %49 = getelementptr inbounds i32, ptr %0, i64 %32
  %50 = add nsw i64 %26, -1
  %51 = getelementptr inbounds [2 x [32 x i32]], ptr @g_board, i64 0, i64 %6, i64 %50
  %52 = add nuw i64 %26, 3
  %53 = and i64 %52, 4294967295
  %54 = getelementptr inbounds [2 x [32 x i32]], ptr @g_board, i64 0, i64 %6, i64 %53
  %55 = load i32, ptr %48, align 4, !tbaa !7
  %56 = load i32, ptr %49, align 4, !tbaa !7
  br label %57

57:                                               ; preds = %151, %47
  %58 = phi i32 [ %38, %47 ], [ %152, %151 ]
  %59 = phi i32 [ %34, %47 ], [ %153, %151 ]
  %60 = phi i32 [ %27, %47 ], [ %157, %151 ]
  %61 = phi i32 [ %28, %47 ], [ %156, %151 ]
  %62 = phi i32 [ %29, %47 ], [ %155, %151 ]
  %63 = phi i32 [ %45, %47 ], [ %70, %151 ]
  %64 = phi i32 [ %39, %47 ], [ %154, %151 ]
  %65 = sub nsw i32 0, %63
  %66 = and i32 %63, %65
  %67 = shl nuw i32 %66, 1
  %68 = or i32 %67, %66
  %69 = xor i32 %68, -1
  %70 = and i32 %63, %69
  %71 = or i32 %68, %64
  %72 = or i32 %55, %71
  %73 = or i32 %72, %56
  %74 = lshr i32 %66, 1
  %75 = and i32 %73, %74
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %111

77:                                               ; preds = %57
  %78 = or i32 %71, %74
  %79 = or i32 %58, %74
  store i32 %79, ptr %37, align 4, !tbaa !7
  %80 = load i32, ptr %30, align 4, !tbaa !7
  %81 = and i32 %80, %74
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %99

83:                                               ; preds = %77
  %84 = load i32, ptr %51, align 4, !tbaa !7
  %85 = and i32 %84, %74
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %99, label %87

87:                                               ; preds = %83
  %88 = load i32, ptr %33, align 4, !tbaa !7
  %89 = and i32 %88, %74
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %87
  %92 = load i32, ptr %54, align 4, !tbaa !7
  %93 = and i32 %92, %74
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %97, label %95

95:                                               ; preds = %91
  %96 = add nsw i32 %62, 1
  br label %151

97:                                               ; preds = %91, %87
  %98 = add nsw i32 %61, 1
  br label %151

99:                                               ; preds = %83, %77
  %100 = load i32, ptr %33, align 4, !tbaa !7
  %101 = and i32 %100, %74
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %109

103:                                              ; preds = %99
  %104 = load i32, ptr %54, align 4, !tbaa !7
  %105 = and i32 %104, %74
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %109, label %107

107:                                              ; preds = %103
  %108 = add nsw i32 %61, 1
  br label %151

109:                                              ; preds = %103, %99
  %110 = add nsw i32 %60, 1
  br label %151

111:                                              ; preds = %57
  %112 = or i32 %72, %63
  %113 = or i32 %112, %56
  %114 = shl i32 %66, 2
  %115 = and i32 %113, %114
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %151

117:                                              ; preds = %111
  %118 = or i32 %71, %114
  %119 = or i32 %58, %114
  store i32 %119, ptr %37, align 4, !tbaa !7
  %120 = load i32, ptr %30, align 4, !tbaa !7
  %121 = and i32 %120, %114
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %139

123:                                              ; preds = %117
  %124 = load i32, ptr %51, align 4, !tbaa !7
  %125 = and i32 %124, %114
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %139, label %127

127:                                              ; preds = %123
  %128 = load i32, ptr %33, align 4, !tbaa !7
  %129 = and i32 %128, %114
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %137

131:                                              ; preds = %127
  %132 = load i32, ptr %54, align 4, !tbaa !7
  %133 = and i32 %132, %114
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %137, label %135

135:                                              ; preds = %131
  %136 = add nsw i32 %62, 1
  br label %151

137:                                              ; preds = %131, %127
  %138 = add nsw i32 %61, 1
  br label %151

139:                                              ; preds = %123, %117
  %140 = load i32, ptr %33, align 4, !tbaa !7
  %141 = and i32 %140, %114
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %149

143:                                              ; preds = %139
  %144 = load i32, ptr %54, align 4, !tbaa !7
  %145 = and i32 %144, %114
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %149, label %147

147:                                              ; preds = %143
  %148 = add nsw i32 %61, 1
  br label %151

149:                                              ; preds = %143, %139
  %150 = add nsw i32 %60, 1
  br label %151

151:                                              ; preds = %149, %147, %137, %135, %111, %109, %107, %97, %95
  %152 = phi i32 [ %58, %111 ], [ %119, %149 ], [ %119, %147 ], [ %119, %137 ], [ %119, %135 ], [ %79, %109 ], [ %79, %107 ], [ %79, %97 ], [ %79, %95 ]
  %153 = phi i32 [ %59, %111 ], [ %140, %149 ], [ %140, %147 ], [ %128, %137 ], [ %128, %135 ], [ %100, %109 ], [ %100, %107 ], [ %88, %97 ], [ %88, %95 ]
  %154 = phi i32 [ %71, %111 ], [ %118, %149 ], [ %118, %147 ], [ %118, %137 ], [ %118, %135 ], [ %78, %109 ], [ %78, %107 ], [ %78, %97 ], [ %78, %95 ]
  %155 = phi i32 [ %62, %111 ], [ %62, %149 ], [ %62, %147 ], [ %62, %137 ], [ %136, %135 ], [ %62, %109 ], [ %62, %107 ], [ %62, %97 ], [ %96, %95 ]
  %156 = phi i32 [ %61, %111 ], [ %61, %149 ], [ %148, %147 ], [ %138, %137 ], [ %61, %135 ], [ %61, %109 ], [ %108, %107 ], [ %98, %97 ], [ %61, %95 ]
  %157 = phi i32 [ %60, %111 ], [ %150, %149 ], [ %60, %147 ], [ %60, %137 ], [ %60, %135 ], [ %110, %109 ], [ %60, %107 ], [ %60, %97 ], [ %60, %95 ]
  %158 = icmp eq i32 %70, 0
  br i1 %158, label %13, label %57, !llvm.loop !36

159:                                              ; preds = %15, %5
  %160 = phi i32 [ 0, %5 ], [ %18, %15 ]
  %161 = phi i32 [ 0, %5 ], [ %19, %15 ]
  %162 = phi i32 [ 0, %5 ], [ %20, %15 ]
  store i32 %160, ptr %2, align 4, !tbaa !7
  store i32 %161, ptr %3, align 4, !tbaa !7
  store i32 %162, ptr %4, align 4, !tbaa !7
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #11

; Function Attrs: nofree nounwind optsize uwtable
define internal i32 @does_who_just_moved_win(i32 noundef %0, i32 noundef %1) #4 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [32 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #31
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #31
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #31
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #31
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #31
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #31
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #31
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #31
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %11) #31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %11, i8 0, i64 128, i1 false), !tbaa !7
  %12 = sext i32 %0 to i64
  %13 = getelementptr inbounds [2 x %struct.Basic_Info], ptr @g_info_totals, i64 0, i64 %12
  %14 = load i32, ptr %13, align 4, !tbaa !25
  %15 = load i32, ptr @g_empty_squares, align 4, !tbaa !7
  %16 = getelementptr inbounds [2 x i32], ptr @g_board_size, i64 0, i64 %12
  %17 = load i32, ptr %16, align 4, !tbaa !7
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %83

19:                                               ; preds = %2
  %20 = zext i32 %17 to i64
  %21 = getelementptr inbounds [2 x [32 x i32]], ptr @g_board, i64 0, i64 %12, i64 1
  %22 = load i32, ptr %21, align 4, !tbaa !7
  %23 = getelementptr inbounds [2 x [32 x i32]], ptr @g_board, i64 0, i64 %12, i64 2
  %24 = load i32, ptr %23, align 8, !tbaa !7
  br label %31

25:                                               ; preds = %68
  %.lcssa2 = phi i32 [ %79, %68 ]
  %.lcssa1 = phi i32 [ %80, %68 ]
  %.lcssa = phi i32 [ %81, %68 ]
  store i32 %.lcssa2, ptr %40, align 4, !tbaa !7
  store i32 %.lcssa1, ptr %42, align 4, !tbaa !7
  br label %26

26:                                               ; preds = %31, %25
  %27 = phi i32 [ %.lcssa1, %25 ], [ %34, %31 ]
  %28 = phi i32 [ %.lcssa2, %25 ], [ %35, %31 ]
  %29 = phi i32 [ %.lcssa, %25 ], [ %38, %31 ]
  %30 = icmp eq i64 %39, %20
  br i1 %30, label %83, label %31, !llvm.loop !31

31:                                               ; preds = %26, %19
  %32 = phi i32 [ %24, %19 ], [ %58, %26 ]
  %33 = phi i32 [ %22, %19 ], [ %32, %26 ]
  %34 = phi i32 [ 0, %19 ], [ %45, %26 ]
  %35 = phi i32 [ 0, %19 ], [ %27, %26 ]
  %36 = phi i32 [ 0, %19 ], [ %28, %26 ]
  %37 = phi i64 [ 0, %19 ], [ %39, %26 ]
  %38 = phi i32 [ 0, %19 ], [ %29, %26 ]
  %39 = add nuw nsw i64 %37, 1
  %40 = getelementptr inbounds i32, ptr %11, i64 %39
  %41 = add nuw nsw i64 %37, 2
  %42 = getelementptr inbounds i32, ptr %11, i64 %41
  %43 = add nuw nsw i64 %37, 3
  %44 = getelementptr inbounds i32, ptr %11, i64 %43
  %45 = load i32, ptr %44, align 4, !tbaa !7
  %46 = or i32 %36, %33
  %47 = or i32 %46, %32
  %48 = or i32 %47, %34
  %49 = or i32 %48, %35
  %50 = or i32 %49, %45
  %51 = lshr i32 %50, 1
  %52 = or i32 %51, %50
  %53 = getelementptr inbounds [2 x [32 x i32]], ptr @g_board, i64 0, i64 %12, i64 %37
  %54 = load i32, ptr %53, align 4, !tbaa !7
  %55 = lshr i32 %54, 1
  %56 = and i32 %55, %54
  %57 = getelementptr inbounds [2 x [32 x i32]], ptr @g_board, i64 0, i64 %12, i64 %43
  %58 = load i32, ptr %57, align 4, !tbaa !7
  %59 = lshr i32 %58, 1
  %60 = and i32 %59, %58
  %61 = or i32 %60, %56
  %62 = xor i32 %52, -1
  %63 = and i32 %61, %62
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %26, label %65

65:                                               ; preds = %31
  %66 = load i32, ptr %40, align 4, !tbaa !7
  %67 = load i32, ptr %42, align 4, !tbaa !7
  br label %68

68:                                               ; preds = %68, %65
  %69 = phi i32 [ %67, %65 ], [ %80, %68 ]
  %70 = phi i32 [ %66, %65 ], [ %79, %68 ]
  %71 = phi i32 [ %63, %65 ], [ %78, %68 ]
  %72 = phi i32 [ %38, %65 ], [ %81, %68 ]
  %73 = sub nsw i32 0, %71
  %74 = and i32 %71, %73
  %75 = shl nuw i32 %74, 1
  %76 = or i32 %75, %74
  %77 = xor i32 %76, -1
  %78 = and i32 %71, %77
  %79 = or i32 %76, %70
  %80 = or i32 %76, %69
  %81 = add nsw i32 %72, 1
  %82 = icmp eq i32 %78, 0
  br i1 %82, label %25, label %68, !llvm.loop !32

83:                                               ; preds = %26, %2
  %84 = phi i32 [ 0, %2 ], [ %29, %26 ]
  call fastcc void @pack_vuln(ptr noundef nonnull %11, i32 noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7) #32
  call fastcc void @pack_safe(ptr noundef nonnull %11, i32 noundef %0, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %10) #32
  %85 = icmp eq i32 %1, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %83
  %87 = load i32, ptr %3, align 4, !tbaa !7
  br label %103

88:                                               ; preds = %83
  %89 = load ptr, ptr @stderr, align 8, !tbaa !27
  %90 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %89, ptr noundef nonnull @.str.5.2, i32 noundef %0) #34
  %91 = load ptr, ptr @stderr, align 8, !tbaa !27
  %92 = load i32, ptr %3, align 4, !tbaa !7
  %93 = load i32, ptr %4, align 4, !tbaa !7
  %94 = load i32, ptr %5, align 4, !tbaa !7
  %95 = load i32, ptr %6, align 4, !tbaa !7
  %96 = load i32, ptr %7, align 4, !tbaa !7
  %97 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %91, ptr noundef nonnull @.str.1.1, i32 noundef %84, i32 noundef %92, i32 noundef %93, i32 noundef %94, i32 noundef %95, i32 noundef %14, i32 noundef %96, i32 noundef %15) #34
  %98 = load ptr, ptr @stderr, align 8, !tbaa !27
  %99 = load i32, ptr %8, align 4, !tbaa !7
  %100 = load i32, ptr %9, align 4, !tbaa !7
  %101 = load i32, ptr %10, align 4, !tbaa !7
  %102 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %98, ptr noundef nonnull @.str.2, i32 noundef %99, i32 noundef %100, i32 noundef %101) #34
  br label %103

103:                                              ; preds = %88, %86
  %104 = phi i32 [ %87, %86 ], [ %92, %88 ]
  %105 = and i32 %84, -2147483647
  %106 = icmp eq i32 %105, 1
  %107 = add nsw i32 %104, 2
  %108 = select i1 %106, i32 %107, i32 %104
  %109 = sext i1 %106 to i32
  %110 = add nsw i32 %84, %109
  %111 = sdiv i32 %108, 3
  %112 = load i32, ptr %5, align 4, !tbaa !7
  %113 = sdiv i32 %112, 2
  %114 = add i32 %110, %14
  %115 = add i32 %114, %111
  %116 = add i32 %115, %113
  %117 = srem i32 %108, 3
  %118 = icmp eq i32 %117, 0
  %119 = and i32 %112, 1
  %120 = icmp eq i32 %119, 0
  %121 = select i1 %118, i1 true, i1 %120
  br i1 %121, label %127, label %122

122:                                              ; preds = %103
  %123 = add nsw i32 %116, 1
  %124 = load i32, ptr %7, align 4, !tbaa !7
  %125 = add nsw i32 %124, -1
  store i32 %125, ptr %7, align 4, !tbaa !7
  %126 = load i32, ptr %8, align 4, !tbaa !7
  br label %130

127:                                              ; preds = %103
  %128 = select i1 %118, i1 %120, i1 false
  %129 = load i32, ptr %8, align 4, !tbaa !7
  br i1 %128, label %130, label %146

130:                                              ; preds = %127, %122
  %131 = phi i32 [ %126, %122 ], [ %129, %127 ]
  %132 = phi i32 [ %123, %122 ], [ %116, %127 ]
  %133 = and i32 %131, -2147483647
  %134 = icmp eq i32 %133, 1
  %135 = load i32, ptr %9, align 4, !tbaa !7
  %136 = sext i1 %134 to i32
  %137 = add nsw i32 %131, %136
  %138 = zext i1 %134 to i32
  %139 = add nsw i32 %135, %138
  %140 = and i32 %139, -2147483647
  %141 = icmp eq i32 %140, 1
  %142 = load i32, ptr %10, align 4, !tbaa !7
  br i1 %141, label %143, label %174

143:                                              ; preds = %130
  %144 = add nsw i32 %139, -1
  %145 = add nsw i32 %142, 1
  br label %174

146:                                              ; preds = %127
  %147 = and i32 %129, -2147483647
  %148 = icmp eq i32 %147, 1
  br i1 %148, label %149, label %159

149:                                              ; preds = %146
  %150 = load i32, ptr %7, align 4, !tbaa !7
  %151 = add nsw i32 %150, 3
  store i32 %151, ptr %7, align 4, !tbaa !7
  %152 = load i32, ptr %9, align 4, !tbaa !7
  %153 = and i32 %152, -2147483647
  %154 = icmp eq i32 %153, 1
  %155 = load i32, ptr %10, align 4, !tbaa !7
  br i1 %154, label %156, label %174

156:                                              ; preds = %149
  %157 = add nsw i32 %152, -1
  %158 = add nsw i32 %155, 1
  br label %174

159:                                              ; preds = %146
  %160 = load i32, ptr %9, align 4, !tbaa !7
  %161 = and i32 %160, -2147483647
  %162 = icmp eq i32 %161, 1
  br i1 %162, label %163, label %167

163:                                              ; preds = %159
  %164 = load i32, ptr %7, align 4, !tbaa !7
  %165 = add nsw i32 %164, 2
  store i32 %165, ptr %7, align 4, !tbaa !7
  %166 = load i32, ptr %10, align 4, !tbaa !7
  br label %174

167:                                              ; preds = %159
  %168 = load i32, ptr %10, align 4, !tbaa !7
  %169 = and i32 %168, -2147483647
  %170 = icmp eq i32 %169, 1
  br i1 %170, label %171, label %174

171:                                              ; preds = %167
  %172 = load i32, ptr %7, align 4, !tbaa !7
  %173 = add nsw i32 %172, 1
  store i32 %173, ptr %7, align 4, !tbaa !7
  br label %174

174:                                              ; preds = %171, %167, %163, %156, %149, %143, %130
  %175 = phi i32 [ %158, %156 ], [ %155, %149 ], [ %168, %167 ], [ %168, %171 ], [ %166, %163 ], [ %142, %130 ], [ %145, %143 ]
  %176 = phi i32 [ %157, %156 ], [ %152, %149 ], [ %160, %167 ], [ %160, %171 ], [ %160, %163 ], [ %139, %130 ], [ %144, %143 ]
  %177 = phi i32 [ %129, %156 ], [ %129, %149 ], [ %129, %167 ], [ %129, %171 ], [ %129, %163 ], [ %137, %130 ], [ %137, %143 ]
  %178 = phi i32 [ %116, %156 ], [ %116, %149 ], [ %116, %167 ], [ %116, %171 ], [ %116, %163 ], [ %132, %130 ], [ %132, %143 ]
  %179 = load i32, ptr %4, align 4, !tbaa !7
  %180 = sdiv i32 %108, -3
  %181 = sub nsw i32 %108, %179
  %182 = sdiv i32 %181, 3
  %183 = load i32, ptr %7, align 4, !tbaa !7
  %184 = add i32 %179, %180
  %185 = add i32 %184, %183
  %186 = add i32 %185, %182
  %187 = load i32, ptr %6, align 4, !tbaa !7
  %188 = sdiv i32 %112, -2
  %189 = sub nsw i32 %112, %187
  %190 = sdiv i32 %189, 2
  %191 = add i32 %187, %188
  %192 = add i32 %191, %190
  %193 = add nsw i32 %192, %186
  %194 = sdiv i32 %177, 2
  %195 = mul nsw i32 %194, 3
  %196 = add nsw i32 %193, %195
  %197 = sdiv i32 %176, 2
  %198 = shl nsw i32 %197, 1
  %199 = add nsw i32 %196, %198
  %200 = sdiv i32 %175, 2
  %201 = add nsw i32 %199, %200
  %202 = shl i32 %178, 1
  %203 = add i32 %202, %201
  %204 = sub i32 %15, %203
  %205 = sdiv i32 %204, 2
  %206 = sub nsw i32 %178, %205
  br i1 %85, label %212, label %207

207:                                              ; preds = %174
  %208 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %178, i32 noundef %205) #32
  %209 = icmp sgt i32 %206, -1
  br i1 %209, label %210, label %212

210:                                              ; preds = %207
  %211 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.6)
  br label %212

212:                                              ; preds = %210, %207, %174
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %11) #31
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #31
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #31
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #31
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #31
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #31
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #31
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #31
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #31
  ret i32 %206
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal void @hashstore(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nocapture noundef readonly byval(%struct.Basic_Info) align 8 %5, i32 noundef %6) #12 {
  %8 = load i32, ptr getelementptr inbounds (%struct.Hash_Key, ptr @g_norm_hashkey, i64 0, i32 1), align 4, !tbaa !16
  %9 = load ptr, ptr @g_trans_table, align 8, !tbaa !27
  %10 = sext i32 %8 to i64
  %11 = getelementptr inbounds %struct.Hash_Entry.2, ptr %9, i64 %10
  %12 = load i32, ptr %11, align 4, !tbaa !7
  %13 = load i32, ptr @g_norm_hashkey, align 4, !tbaa !7
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %30

15:                                               ; preds = %7
  %16 = getelementptr inbounds [4 x i32], ptr %11, i64 0, i64 1
  %17 = load i32, ptr %16, align 4, !tbaa !7
  %18 = load i32, ptr getelementptr inbounds (%struct.Hash_Key, ptr @g_norm_hashkey, i64 0, i32 0, i64 1), align 4, !tbaa !7
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %30

20:                                               ; preds = %15
  %21 = getelementptr inbounds [4 x i32], ptr %11, i64 0, i64 2
  %22 = load i32, ptr %21, align 4, !tbaa !7
  %23 = load i32, ptr getelementptr inbounds (%struct.Hash_Key, ptr @g_norm_hashkey, i64 0, i32 0, i64 2), align 4, !tbaa !7
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %20
  %26 = getelementptr inbounds [4 x i32], ptr %11, i64 0, i64 3
  %27 = load i32, ptr %26, align 4, !tbaa !7
  %28 = load i32, ptr getelementptr inbounds (%struct.Hash_Key, ptr @g_norm_hashkey, i64 0, i32 0, i64 3), align 4, !tbaa !7
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %34, label %30

30:                                               ; preds = %25, %20, %15, %7
  %31 = getelementptr inbounds %struct.Hash_Entry.2, ptr %9, i64 %10, i32 1
  %32 = load i32, ptr %31, align 4, !tbaa !37
  %33 = icmp ugt i32 %32, %3
  br i1 %33, label %92, label %34

34:                                               ; preds = %30, %25
  store i32 %13, ptr %11, align 4, !tbaa !7
  %35 = load i32, ptr getelementptr inbounds (%struct.Hash_Key, ptr @g_norm_hashkey, i64 0, i32 0, i64 1), align 4, !tbaa !7
  %36 = getelementptr inbounds %struct.Hash_Entry.2, ptr %9, i64 %10, i32 0, i64 1
  store i32 %35, ptr %36, align 4, !tbaa !7
  %37 = load i32, ptr getelementptr inbounds (%struct.Hash_Key, ptr @g_norm_hashkey, i64 0, i32 0, i64 2), align 4, !tbaa !7
  %38 = getelementptr inbounds %struct.Hash_Entry.2, ptr %9, i64 %10, i32 0, i64 2
  store i32 %37, ptr %38, align 4, !tbaa !7
  %39 = load i32, ptr getelementptr inbounds (%struct.Hash_Key, ptr @g_norm_hashkey, i64 0, i32 0, i64 3), align 4, !tbaa !7
  %40 = getelementptr inbounds %struct.Hash_Entry.2, ptr %9, i64 %10, i32 0, i64 3
  store i32 %39, ptr %40, align 4, !tbaa !7
  %41 = getelementptr inbounds %struct.Hash_Entry.2, ptr %9, i64 %10, i32 1
  store i32 %3, ptr %41, align 4, !tbaa !37
  %42 = getelementptr inbounds %struct.Basic_Info, ptr %5, i64 0, i32 1
  %43 = load i32, ptr %42, align 4, !tbaa !23
  %44 = add i32 %43, 255
  %45 = sext i32 %6 to i64
  %46 = getelementptr inbounds [2 x i32], ptr @g_board_size, i64 0, i64 %45
  %47 = load i32, ptr %46, align 4, !tbaa !7
  %48 = mul i32 %44, %47
  %49 = load i32, ptr %5, align 8, !tbaa !25
  %50 = add i32 %49, 255
  %51 = add i32 %50, %48
  %52 = trunc i32 %51 to i8
  %53 = getelementptr inbounds %struct.Hash_Entry.2, ptr %9, i64 %10, i32 2
  store i8 %52, ptr %53, align 4, !tbaa !40
  %54 = getelementptr inbounds %struct.Hash_Entry.2, ptr %9, i64 %10, i32 3
  %55 = trunc i32 %4 to i24
  %56 = load i24, ptr %54, align 1
  %57 = and i24 %55, 127
  %58 = and i24 %56, -128
  %59 = or i24 %58, %57
  store i24 %59, ptr %54, align 1
  %60 = load ptr, ptr @g_trans_table, align 8, !tbaa !27
  %61 = getelementptr inbounds %struct.Hash_Entry.2, ptr %60, i64 %10, i32 3
  %62 = trunc i32 %6 to i24
  %63 = load i24, ptr %61, align 1
  %64 = shl i24 %62, 7
  %65 = and i24 %64, 128
  %66 = and i24 %63, -129
  %67 = or i24 %66, %65
  store i24 %67, ptr %61, align 1
  %68 = load ptr, ptr @g_trans_table, align 8, !tbaa !27
  %69 = getelementptr inbounds %struct.Hash_Entry.2, ptr %68, i64 %10, i32 3
  %70 = trunc i32 %0 to i24
  %71 = load i24, ptr %69, align 1
  %72 = shl i24 %70, 8
  %73 = and i24 %72, 4194048
  %74 = and i24 %71, -4194049
  %75 = or i24 %74, %73
  store i24 %75, ptr %69, align 1
  %76 = icmp slt i32 %0, %2
  br i1 %76, label %82, label %77

77:                                               ; preds = %34
  %78 = load ptr, ptr @g_trans_table, align 8, !tbaa !27
  %79 = getelementptr inbounds %struct.Hash_Entry.2, ptr %78, i64 %10, i32 3
  %80 = load i24, ptr %79, align 1
  %81 = and i24 %80, 4194303
  store i24 %81, ptr %79, align 1
  br label %344

82:                                               ; preds = %34
  %83 = icmp sgt i32 %0, %1
  %84 = load ptr, ptr @g_trans_table, align 8, !tbaa !27
  %85 = getelementptr inbounds %struct.Hash_Entry.2, ptr %84, i64 %10, i32 3
  %86 = load i24, ptr %85, align 1
  %87 = and i24 %86, 4194303
  br i1 %83, label %88, label %90

88:                                               ; preds = %82
  %89 = or i24 %87, 4194304
  store i24 %89, ptr %85, align 1
  br label %344

90:                                               ; preds = %82
  %91 = or i24 %87, -8388608
  store i24 %91, ptr %85, align 1
  br label %344

92:                                               ; preds = %30
  %93 = load i32, ptr getelementptr inbounds (%struct.Hash_Key, ptr @g_flipV_hashkey, i64 0, i32 1), align 4, !tbaa !16
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.Hash_Entry.2, ptr %9, i64 %94
  %96 = load i32, ptr %95, align 4, !tbaa !7
  %97 = load i32, ptr @g_flipV_hashkey, align 4, !tbaa !7
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %99, label %114

99:                                               ; preds = %92
  %100 = getelementptr inbounds [4 x i32], ptr %95, i64 0, i64 1
  %101 = load i32, ptr %100, align 4, !tbaa !7
  %102 = load i32, ptr getelementptr inbounds (%struct.Hash_Key, ptr @g_flipV_hashkey, i64 0, i32 0, i64 1), align 4, !tbaa !7
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %104, label %114

104:                                              ; preds = %99
  %105 = getelementptr inbounds [4 x i32], ptr %95, i64 0, i64 2
  %106 = load i32, ptr %105, align 4, !tbaa !7
  %107 = load i32, ptr getelementptr inbounds (%struct.Hash_Key, ptr @g_flipV_hashkey, i64 0, i32 0, i64 2), align 4, !tbaa !7
  %108 = icmp eq i32 %106, %107
  br i1 %108, label %109, label %114

109:                                              ; preds = %104
  %110 = getelementptr inbounds [4 x i32], ptr %95, i64 0, i64 3
  %111 = load i32, ptr %110, align 4, !tbaa !7
  %112 = load i32, ptr getelementptr inbounds (%struct.Hash_Key, ptr @g_flipV_hashkey, i64 0, i32 0, i64 3), align 4, !tbaa !7
  %113 = icmp eq i32 %111, %112
  br i1 %113, label %118, label %114

114:                                              ; preds = %109, %104, %99, %92
  %115 = getelementptr inbounds %struct.Hash_Entry.2, ptr %9, i64 %94, i32 1
  %116 = load i32, ptr %115, align 4, !tbaa !37
  %117 = icmp ugt i32 %116, %3
  br i1 %117, label %176, label %118

118:                                              ; preds = %114, %109
  store i32 %97, ptr %95, align 4, !tbaa !7
  %119 = load i32, ptr getelementptr inbounds (%struct.Hash_Key, ptr @g_flipV_hashkey, i64 0, i32 0, i64 1), align 4, !tbaa !7
  %120 = getelementptr inbounds %struct.Hash_Entry.2, ptr %9, i64 %94, i32 0, i64 1
  store i32 %119, ptr %120, align 4, !tbaa !7
  %121 = load i32, ptr getelementptr inbounds (%struct.Hash_Key, ptr @g_flipV_hashkey, i64 0, i32 0, i64 2), align 4, !tbaa !7
  %122 = getelementptr inbounds %struct.Hash_Entry.2, ptr %9, i64 %94, i32 0, i64 2
  store i32 %121, ptr %122, align 4, !tbaa !7
  %123 = load i32, ptr getelementptr inbounds (%struct.Hash_Key, ptr @g_flipV_hashkey, i64 0, i32 0, i64 3), align 4, !tbaa !7
  %124 = getelementptr inbounds %struct.Hash_Entry.2, ptr %9, i64 %94, i32 0, i64 3
  store i32 %123, ptr %124, align 4, !tbaa !7
  %125 = getelementptr inbounds %struct.Hash_Entry.2, ptr %9, i64 %94, i32 1
  store i32 %3, ptr %125, align 4, !tbaa !37
  %126 = getelementptr inbounds %struct.Basic_Info, ptr %5, i64 0, i32 1
  %127 = load i32, ptr %126, align 4, !tbaa !23
  %128 = add i32 %127, 255
  %129 = sext i32 %6 to i64
  %130 = getelementptr inbounds [2 x i32], ptr @g_board_size, i64 0, i64 %129
  %131 = load i32, ptr %130, align 4, !tbaa !7
  %132 = mul i32 %128, %131
  %133 = load i32, ptr %5, align 8, !tbaa !25
  %134 = add i32 %133, 255
  %135 = add i32 %134, %132
  %136 = trunc i32 %135 to i8
  %137 = getelementptr inbounds %struct.Hash_Entry.2, ptr %9, i64 %94, i32 2
  store i8 %136, ptr %137, align 4, !tbaa !40
  %138 = getelementptr inbounds %struct.Hash_Entry.2, ptr %9, i64 %94, i32 3
  %139 = trunc i32 %4 to i24
  %140 = load i24, ptr %138, align 1
  %141 = and i24 %139, 127
  %142 = and i24 %140, -128
  %143 = or i24 %142, %141
  store i24 %143, ptr %138, align 1
  %144 = load ptr, ptr @g_trans_table, align 8, !tbaa !27
  %145 = getelementptr inbounds %struct.Hash_Entry.2, ptr %144, i64 %94, i32 3
  %146 = trunc i32 %6 to i24
  %147 = load i24, ptr %145, align 1
  %148 = shl i24 %146, 7
  %149 = and i24 %148, 128
  %150 = and i24 %147, -129
  %151 = or i24 %150, %149
  store i24 %151, ptr %145, align 1
  %152 = load ptr, ptr @g_trans_table, align 8, !tbaa !27
  %153 = getelementptr inbounds %struct.Hash_Entry.2, ptr %152, i64 %94, i32 3
  %154 = trunc i32 %0 to i24
  %155 = load i24, ptr %153, align 1
  %156 = shl i24 %154, 8
  %157 = and i24 %156, 4194048
  %158 = and i24 %155, -4194049
  %159 = or i24 %158, %157
  store i24 %159, ptr %153, align 1
  %160 = icmp slt i32 %0, %2
  br i1 %160, label %166, label %161

161:                                              ; preds = %118
  %162 = load ptr, ptr @g_trans_table, align 8, !tbaa !27
  %163 = getelementptr inbounds %struct.Hash_Entry.2, ptr %162, i64 %94, i32 3
  %164 = load i24, ptr %163, align 1
  %165 = and i24 %164, 4194303
  store i24 %165, ptr %163, align 1
  br label %344

166:                                              ; preds = %118
  %167 = icmp sgt i32 %0, %1
  %168 = load ptr, ptr @g_trans_table, align 8, !tbaa !27
  %169 = getelementptr inbounds %struct.Hash_Entry.2, ptr %168, i64 %94, i32 3
  %170 = load i24, ptr %169, align 1
  %171 = and i24 %170, 4194303
  br i1 %167, label %172, label %174

172:                                              ; preds = %166
  %173 = or i24 %171, 4194304
  store i24 %173, ptr %169, align 1
  br label %344

174:                                              ; preds = %166
  %175 = or i24 %171, -8388608
  store i24 %175, ptr %169, align 1
  br label %344

176:                                              ; preds = %114
  %177 = load i32, ptr getelementptr inbounds (%struct.Hash_Key, ptr @g_flipH_hashkey, i64 0, i32 1), align 4, !tbaa !16
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds %struct.Hash_Entry.2, ptr %9, i64 %178
  %180 = load i32, ptr %179, align 4, !tbaa !7
  %181 = load i32, ptr @g_flipH_hashkey, align 4, !tbaa !7
  %182 = icmp eq i32 %180, %181
  br i1 %182, label %183, label %198

183:                                              ; preds = %176
  %184 = getelementptr inbounds [4 x i32], ptr %179, i64 0, i64 1
  %185 = load i32, ptr %184, align 4, !tbaa !7
  %186 = load i32, ptr getelementptr inbounds (%struct.Hash_Key, ptr @g_flipH_hashkey, i64 0, i32 0, i64 1), align 4, !tbaa !7
  %187 = icmp eq i32 %185, %186
  br i1 %187, label %188, label %198

188:                                              ; preds = %183
  %189 = getelementptr inbounds [4 x i32], ptr %179, i64 0, i64 2
  %190 = load i32, ptr %189, align 4, !tbaa !7
  %191 = load i32, ptr getelementptr inbounds (%struct.Hash_Key, ptr @g_flipH_hashkey, i64 0, i32 0, i64 2), align 4, !tbaa !7
  %192 = icmp eq i32 %190, %191
  br i1 %192, label %193, label %198

193:                                              ; preds = %188
  %194 = getelementptr inbounds [4 x i32], ptr %179, i64 0, i64 3
  %195 = load i32, ptr %194, align 4, !tbaa !7
  %196 = load i32, ptr getelementptr inbounds (%struct.Hash_Key, ptr @g_flipH_hashkey, i64 0, i32 0, i64 3), align 4, !tbaa !7
  %197 = icmp eq i32 %195, %196
  br i1 %197, label %202, label %198

198:                                              ; preds = %193, %188, %183, %176
  %199 = getelementptr inbounds %struct.Hash_Entry.2, ptr %9, i64 %178, i32 1
  %200 = load i32, ptr %199, align 4, !tbaa !37
  %201 = icmp ugt i32 %200, %3
  br i1 %201, label %260, label %202

202:                                              ; preds = %198, %193
  store i32 %181, ptr %179, align 4, !tbaa !7
  %203 = load i32, ptr getelementptr inbounds (%struct.Hash_Key, ptr @g_flipH_hashkey, i64 0, i32 0, i64 1), align 4, !tbaa !7
  %204 = getelementptr inbounds %struct.Hash_Entry.2, ptr %9, i64 %178, i32 0, i64 1
  store i32 %203, ptr %204, align 4, !tbaa !7
  %205 = load i32, ptr getelementptr inbounds (%struct.Hash_Key, ptr @g_flipH_hashkey, i64 0, i32 0, i64 2), align 4, !tbaa !7
  %206 = getelementptr inbounds %struct.Hash_Entry.2, ptr %9, i64 %178, i32 0, i64 2
  store i32 %205, ptr %206, align 4, !tbaa !7
  %207 = load i32, ptr getelementptr inbounds (%struct.Hash_Key, ptr @g_flipH_hashkey, i64 0, i32 0, i64 3), align 4, !tbaa !7
  %208 = getelementptr inbounds %struct.Hash_Entry.2, ptr %9, i64 %178, i32 0, i64 3
  store i32 %207, ptr %208, align 4, !tbaa !7
  %209 = getelementptr inbounds %struct.Hash_Entry.2, ptr %9, i64 %178, i32 1
  store i32 %3, ptr %209, align 4, !tbaa !37
  %210 = getelementptr inbounds %struct.Basic_Info, ptr %5, i64 0, i32 1
  %211 = load i32, ptr %210, align 4, !tbaa !23
  %212 = add i32 %211, 255
  %213 = sext i32 %6 to i64
  %214 = getelementptr inbounds [2 x i32], ptr @g_board_size, i64 0, i64 %213
  %215 = load i32, ptr %214, align 4, !tbaa !7
  %216 = mul i32 %212, %215
  %217 = load i32, ptr %5, align 8, !tbaa !25
  %218 = add i32 %217, 255
  %219 = add i32 %218, %216
  %220 = trunc i32 %219 to i8
  %221 = getelementptr inbounds %struct.Hash_Entry.2, ptr %9, i64 %178, i32 2
  store i8 %220, ptr %221, align 4, !tbaa !40
  %222 = getelementptr inbounds %struct.Hash_Entry.2, ptr %9, i64 %178, i32 3
  %223 = trunc i32 %4 to i24
  %224 = load i24, ptr %222, align 1
  %225 = and i24 %223, 127
  %226 = and i24 %224, -128
  %227 = or i24 %226, %225
  store i24 %227, ptr %222, align 1
  %228 = load ptr, ptr @g_trans_table, align 8, !tbaa !27
  %229 = getelementptr inbounds %struct.Hash_Entry.2, ptr %228, i64 %178, i32 3
  %230 = trunc i32 %6 to i24
  %231 = load i24, ptr %229, align 1
  %232 = shl i24 %230, 7
  %233 = and i24 %232, 128
  %234 = and i24 %231, -129
  %235 = or i24 %234, %233
  store i24 %235, ptr %229, align 1
  %236 = load ptr, ptr @g_trans_table, align 8, !tbaa !27
  %237 = getelementptr inbounds %struct.Hash_Entry.2, ptr %236, i64 %178, i32 3
  %238 = trunc i32 %0 to i24
  %239 = load i24, ptr %237, align 1
  %240 = shl i24 %238, 8
  %241 = and i24 %240, 4194048
  %242 = and i24 %239, -4194049
  %243 = or i24 %242, %241
  store i24 %243, ptr %237, align 1
  %244 = icmp slt i32 %0, %2
  br i1 %244, label %250, label %245

245:                                              ; preds = %202
  %246 = load ptr, ptr @g_trans_table, align 8, !tbaa !27
  %247 = getelementptr inbounds %struct.Hash_Entry.2, ptr %246, i64 %178, i32 3
  %248 = load i24, ptr %247, align 1
  %249 = and i24 %248, 4194303
  store i24 %249, ptr %247, align 1
  br label %344

250:                                              ; preds = %202
  %251 = icmp sgt i32 %0, %1
  %252 = load ptr, ptr @g_trans_table, align 8, !tbaa !27
  %253 = getelementptr inbounds %struct.Hash_Entry.2, ptr %252, i64 %178, i32 3
  %254 = load i24, ptr %253, align 1
  %255 = and i24 %254, 4194303
  br i1 %251, label %256, label %258

256:                                              ; preds = %250
  %257 = or i24 %255, 4194304
  store i24 %257, ptr %253, align 1
  br label %344

258:                                              ; preds = %250
  %259 = or i24 %255, -8388608
  store i24 %259, ptr %253, align 1
  br label %344

260:                                              ; preds = %198
  %261 = load i32, ptr getelementptr inbounds (%struct.Hash_Key, ptr @g_flipVH_hashkey, i64 0, i32 1), align 4, !tbaa !16
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds %struct.Hash_Entry.2, ptr %9, i64 %262
  %264 = load i32, ptr %263, align 4, !tbaa !7
  %265 = load i32, ptr @g_flipVH_hashkey, align 4, !tbaa !7
  %266 = icmp eq i32 %264, %265
  br i1 %266, label %267, label %282

267:                                              ; preds = %260
  %268 = getelementptr inbounds [4 x i32], ptr %263, i64 0, i64 1
  %269 = load i32, ptr %268, align 4, !tbaa !7
  %270 = load i32, ptr getelementptr inbounds (%struct.Hash_Key, ptr @g_flipVH_hashkey, i64 0, i32 0, i64 1), align 4, !tbaa !7
  %271 = icmp eq i32 %269, %270
  br i1 %271, label %272, label %282

272:                                              ; preds = %267
  %273 = getelementptr inbounds [4 x i32], ptr %263, i64 0, i64 2
  %274 = load i32, ptr %273, align 4, !tbaa !7
  %275 = load i32, ptr getelementptr inbounds (%struct.Hash_Key, ptr @g_flipVH_hashkey, i64 0, i32 0, i64 2), align 4, !tbaa !7
  %276 = icmp eq i32 %274, %275
  br i1 %276, label %277, label %282

277:                                              ; preds = %272
  %278 = getelementptr inbounds [4 x i32], ptr %263, i64 0, i64 3
  %279 = load i32, ptr %278, align 4, !tbaa !7
  %280 = load i32, ptr getelementptr inbounds (%struct.Hash_Key, ptr @g_flipVH_hashkey, i64 0, i32 0, i64 3), align 4, !tbaa !7
  %281 = icmp eq i32 %279, %280
  br i1 %281, label %286, label %282

282:                                              ; preds = %277, %272, %267, %260
  %283 = getelementptr inbounds %struct.Hash_Entry.2, ptr %9, i64 %262, i32 1
  %284 = load i32, ptr %283, align 4, !tbaa !37
  %285 = icmp ugt i32 %284, %3
  br i1 %285, label %344, label %286

286:                                              ; preds = %282, %277
  store i32 %265, ptr %263, align 4, !tbaa !7
  %287 = load i32, ptr getelementptr inbounds (%struct.Hash_Key, ptr @g_flipVH_hashkey, i64 0, i32 0, i64 1), align 4, !tbaa !7
  %288 = getelementptr inbounds %struct.Hash_Entry.2, ptr %9, i64 %262, i32 0, i64 1
  store i32 %287, ptr %288, align 4, !tbaa !7
  %289 = load i32, ptr getelementptr inbounds (%struct.Hash_Key, ptr @g_flipVH_hashkey, i64 0, i32 0, i64 2), align 4, !tbaa !7
  %290 = getelementptr inbounds %struct.Hash_Entry.2, ptr %9, i64 %262, i32 0, i64 2
  store i32 %289, ptr %290, align 4, !tbaa !7
  %291 = load i32, ptr getelementptr inbounds (%struct.Hash_Key, ptr @g_flipVH_hashkey, i64 0, i32 0, i64 3), align 4, !tbaa !7
  %292 = getelementptr inbounds %struct.Hash_Entry.2, ptr %9, i64 %262, i32 0, i64 3
  store i32 %291, ptr %292, align 4, !tbaa !7
  %293 = getelementptr inbounds %struct.Hash_Entry.2, ptr %9, i64 %262, i32 1
  store i32 %3, ptr %293, align 4, !tbaa !37
  %294 = getelementptr inbounds %struct.Basic_Info, ptr %5, i64 0, i32 1
  %295 = load i32, ptr %294, align 4, !tbaa !23
  %296 = add i32 %295, 255
  %297 = sext i32 %6 to i64
  %298 = getelementptr inbounds [2 x i32], ptr @g_board_size, i64 0, i64 %297
  %299 = load i32, ptr %298, align 4, !tbaa !7
  %300 = mul i32 %296, %299
  %301 = load i32, ptr %5, align 8, !tbaa !25
  %302 = add i32 %301, 255
  %303 = add i32 %302, %300
  %304 = trunc i32 %303 to i8
  %305 = getelementptr inbounds %struct.Hash_Entry.2, ptr %9, i64 %262, i32 2
  store i8 %304, ptr %305, align 4, !tbaa !40
  %306 = getelementptr inbounds %struct.Hash_Entry.2, ptr %9, i64 %262, i32 3
  %307 = trunc i32 %4 to i24
  %308 = load i24, ptr %306, align 1
  %309 = and i24 %307, 127
  %310 = and i24 %308, -128
  %311 = or i24 %310, %309
  store i24 %311, ptr %306, align 1
  %312 = load ptr, ptr @g_trans_table, align 8, !tbaa !27
  %313 = getelementptr inbounds %struct.Hash_Entry.2, ptr %312, i64 %262, i32 3
  %314 = trunc i32 %6 to i24
  %315 = load i24, ptr %313, align 1
  %316 = shl i24 %314, 7
  %317 = and i24 %316, 128
  %318 = and i24 %315, -129
  %319 = or i24 %318, %317
  store i24 %319, ptr %313, align 1
  %320 = load ptr, ptr @g_trans_table, align 8, !tbaa !27
  %321 = getelementptr inbounds %struct.Hash_Entry.2, ptr %320, i64 %262, i32 3
  %322 = trunc i32 %0 to i24
  %323 = load i24, ptr %321, align 1
  %324 = shl i24 %322, 8
  %325 = and i24 %324, 4194048
  %326 = and i24 %323, -4194049
  %327 = or i24 %326, %325
  store i24 %327, ptr %321, align 1
  %328 = icmp slt i32 %0, %2
  br i1 %328, label %334, label %329

329:                                              ; preds = %286
  %330 = load ptr, ptr @g_trans_table, align 8, !tbaa !27
  %331 = getelementptr inbounds %struct.Hash_Entry.2, ptr %330, i64 %262, i32 3
  %332 = load i24, ptr %331, align 1
  %333 = and i24 %332, 4194303
  store i24 %333, ptr %331, align 1
  br label %344

334:                                              ; preds = %286
  %335 = icmp sgt i32 %0, %1
  %336 = load ptr, ptr @g_trans_table, align 8, !tbaa !27
  %337 = getelementptr inbounds %struct.Hash_Entry.2, ptr %336, i64 %262, i32 3
  %338 = load i24, ptr %337, align 1
  %339 = and i24 %338, 4194303
  br i1 %335, label %340, label %342

340:                                              ; preds = %334
  %341 = or i24 %339, 4194304
  store i24 %341, ptr %337, align 1
  br label %344

342:                                              ; preds = %334
  %343 = or i24 %339, -8388608
  store i24 %343, ptr %337, align 1
  br label %344

344:                                              ; preds = %342, %340, %329, %282, %258, %256, %245, %174, %172, %161, %90, %88, %77
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal i32 @hashlookup(ptr nocapture noundef writeonly %0, ptr nocapture noundef %1, ptr nocapture noundef %2, i32 noundef %3, ptr nocapture noundef writeonly %4, i32 noundef %5) #13 {
  %7 = load i32, ptr getelementptr inbounds (%struct.Hash_Key, ptr @g_norm_hashkey, i64 0, i32 1), align 4, !tbaa !16
  %8 = load ptr, ptr @g_trans_table, align 8, !tbaa !27
  %9 = sext i32 %7 to i64
  %10 = getelementptr inbounds %struct.Hash_Entry.2, ptr %8, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !7
  %12 = load i32, ptr @g_norm_hashkey, align 4, !tbaa !7
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %92

14:                                               ; preds = %6
  %15 = getelementptr inbounds [4 x i32], ptr %10, i64 0, i64 1
  %16 = load i32, ptr %15, align 4, !tbaa !7
  %17 = load i32, ptr getelementptr inbounds (%struct.Hash_Key, ptr @g_norm_hashkey, i64 0, i32 0, i64 1), align 4, !tbaa !7
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %92

19:                                               ; preds = %14
  %20 = getelementptr inbounds [4 x i32], ptr %10, i64 0, i64 2
  %21 = load i32, ptr %20, align 4, !tbaa !7
  %22 = load i32, ptr getelementptr inbounds (%struct.Hash_Key, ptr @g_norm_hashkey, i64 0, i32 0, i64 2), align 4, !tbaa !7
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %92

24:                                               ; preds = %19
  %25 = getelementptr inbounds [4 x i32], ptr %10, i64 0, i64 3
  %26 = load i32, ptr %25, align 4, !tbaa !7
  %27 = load i32, ptr getelementptr inbounds (%struct.Hash_Key, ptr @g_norm_hashkey, i64 0, i32 0, i64 3), align 4, !tbaa !7
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %92

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.Hash_Entry.2, ptr %8, i64 %9, i32 3
  %31 = load i24, ptr %30, align 1
  %32 = zext i24 %31 to i32
  %33 = lshr i32 %32, 7
  %34 = and i32 %33, 1
  %35 = icmp eq i32 %34, %5
  br i1 %35, label %36, label %92

36:                                               ; preds = %29
  %37 = getelementptr inbounds %struct.Hash_Entry.2, ptr %8, i64 %9, i32 2
  %38 = load i8, ptr %37, align 4, !tbaa !40
  %39 = zext i8 %38 to i32
  %40 = zext i32 %5 to i64
  %41 = getelementptr inbounds [2 x i32], ptr @g_board_size, i64 0, i64 %40
  %42 = load i32, ptr %41, align 4, !tbaa !7
  %43 = sdiv i32 %39, %42
  %44 = add nsw i32 %43, 1
  %45 = getelementptr inbounds %struct.Basic_Info, ptr %4, i64 0, i32 1
  store i32 %44, ptr %45, align 4, !tbaa !23
  %46 = load i32, ptr %41, align 4, !tbaa !7
  %47 = srem i32 %39, %46
  %48 = add nuw nsw i32 %47, 1
  store i32 %48, ptr %4, align 4, !tbaa !25
  %49 = load i24, ptr %30, align 1
  %50 = and i24 %49, 127
  %51 = zext i24 %50 to i32
  %52 = icmp slt i32 %51, %3
  br i1 %52, label %92, label %53

53:                                               ; preds = %36
  %54 = lshr i24 %49, 22
  %55 = icmp eq i24 %54, 1
  br i1 %55, label %56, label %62

56:                                               ; preds = %53
  %57 = shl i24 %49, 2
  %58 = ashr i24 %57, 10
  %59 = zext i24 %58 to i32
  %60 = shl i32 %59, 16
  %61 = ashr exact i32 %60, 16
  store i32 %61, ptr %0, align 4, !tbaa !7
  br label %347

62:                                               ; preds = %53
  %63 = icmp ult i24 %49, 4194304
  br i1 %63, label %64, label %77

64:                                               ; preds = %62
  %65 = shl nuw i24 %49, 2
  %66 = ashr i24 %65, 10
  %67 = zext i24 %66 to i32
  %68 = shl i32 %67, 16
  %69 = ashr exact i32 %68, 16
  %70 = load i32, ptr %2, align 4, !tbaa !7
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %73, label %72

72:                                               ; preds = %64
  store i32 %69, ptr %0, align 4, !tbaa !7
  br label %347

73:                                               ; preds = %64
  %74 = load i32, ptr %1, align 4, !tbaa !7
  %75 = icmp sgt i32 %69, %74
  br i1 %75, label %76, label %347

76:                                               ; preds = %73
  store i32 %69, ptr %1, align 4, !tbaa !7
  br label %347

77:                                               ; preds = %62
  %78 = icmp eq i24 %54, 2
  br i1 %78, label %79, label %92

79:                                               ; preds = %77
  %80 = shl i24 %49, 2
  %81 = ashr i24 %80, 10
  %82 = zext i24 %81 to i32
  %83 = shl i32 %82, 16
  %84 = ashr exact i32 %83, 16
  %85 = load i32, ptr %1, align 4, !tbaa !7
  %86 = icmp sgt i32 %84, %85
  br i1 %86, label %88, label %87

87:                                               ; preds = %79
  store i32 %84, ptr %0, align 4, !tbaa !7
  br label %347

88:                                               ; preds = %79
  %89 = load i32, ptr %2, align 4, !tbaa !7
  %90 = icmp slt i32 %84, %89
  br i1 %90, label %91, label %347

91:                                               ; preds = %88
  store i32 %84, ptr %2, align 4, !tbaa !7
  br label %347

92:                                               ; preds = %77, %36, %29, %24, %19, %14, %6
  %93 = load i32, ptr getelementptr inbounds (%struct.Hash_Key, ptr @g_flipV_hashkey, i64 0, i32 1), align 4, !tbaa !16
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.Hash_Entry.2, ptr %8, i64 %94
  %96 = load i32, ptr %95, align 4, !tbaa !7
  %97 = load i32, ptr @g_flipV_hashkey, align 4, !tbaa !7
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %99, label %177

99:                                               ; preds = %92
  %100 = getelementptr inbounds [4 x i32], ptr %95, i64 0, i64 1
  %101 = load i32, ptr %100, align 4, !tbaa !7
  %102 = load i32, ptr getelementptr inbounds (%struct.Hash_Key, ptr @g_flipV_hashkey, i64 0, i32 0, i64 1), align 4, !tbaa !7
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %104, label %177

104:                                              ; preds = %99
  %105 = getelementptr inbounds [4 x i32], ptr %95, i64 0, i64 2
  %106 = load i32, ptr %105, align 4, !tbaa !7
  %107 = load i32, ptr getelementptr inbounds (%struct.Hash_Key, ptr @g_flipV_hashkey, i64 0, i32 0, i64 2), align 4, !tbaa !7
  %108 = icmp eq i32 %106, %107
  br i1 %108, label %109, label %177

109:                                              ; preds = %104
  %110 = getelementptr inbounds [4 x i32], ptr %95, i64 0, i64 3
  %111 = load i32, ptr %110, align 4, !tbaa !7
  %112 = load i32, ptr getelementptr inbounds (%struct.Hash_Key, ptr @g_flipV_hashkey, i64 0, i32 0, i64 3), align 4, !tbaa !7
  %113 = icmp eq i32 %111, %112
  br i1 %113, label %114, label %177

114:                                              ; preds = %109
  %115 = getelementptr inbounds %struct.Hash_Entry.2, ptr %8, i64 %94, i32 3
  %116 = load i24, ptr %115, align 1
  %117 = zext i24 %116 to i32
  %118 = lshr i32 %117, 7
  %119 = and i32 %118, 1
  %120 = icmp eq i32 %119, %5
  br i1 %120, label %121, label %177

121:                                              ; preds = %114
  %122 = getelementptr inbounds %struct.Hash_Entry.2, ptr %8, i64 %94, i32 2
  %123 = load i8, ptr %122, align 4, !tbaa !40
  %124 = zext i8 %123 to i32
  %125 = zext i32 %5 to i64
  %126 = getelementptr inbounds [2 x i32], ptr @g_board_size, i64 0, i64 %125
  %127 = load i32, ptr %126, align 4, !tbaa !7
  %128 = sdiv i32 %124, %127
  %129 = add nsw i32 %128, 1
  %130 = getelementptr inbounds %struct.Basic_Info, ptr %4, i64 0, i32 1
  store i32 %129, ptr %130, align 4, !tbaa !23
  %131 = load i32, ptr %126, align 4, !tbaa !7
  %132 = srem i32 %124, %131
  %133 = add nuw nsw i32 %132, 1
  store i32 %133, ptr %4, align 4, !tbaa !25
  %134 = load i24, ptr %115, align 1
  %135 = and i24 %134, 127
  %136 = zext i24 %135 to i32
  %137 = icmp slt i32 %136, %3
  br i1 %137, label %177, label %138

138:                                              ; preds = %121
  %139 = lshr i24 %134, 22
  %140 = icmp eq i24 %139, 1
  br i1 %140, label %141, label %147

141:                                              ; preds = %138
  %142 = shl i24 %134, 2
  %143 = ashr i24 %142, 10
  %144 = zext i24 %143 to i32
  %145 = shl i32 %144, 16
  %146 = ashr exact i32 %145, 16
  store i32 %146, ptr %0, align 4, !tbaa !7
  br label %347

147:                                              ; preds = %138
  %148 = icmp ult i24 %134, 4194304
  br i1 %148, label %149, label %162

149:                                              ; preds = %147
  %150 = shl nuw i24 %134, 2
  %151 = ashr i24 %150, 10
  %152 = zext i24 %151 to i32
  %153 = shl i32 %152, 16
  %154 = ashr exact i32 %153, 16
  %155 = load i32, ptr %2, align 4, !tbaa !7
  %156 = icmp slt i32 %154, %155
  br i1 %156, label %158, label %157

157:                                              ; preds = %149
  store i32 %154, ptr %0, align 4, !tbaa !7
  br label %347

158:                                              ; preds = %149
  %159 = load i32, ptr %1, align 4, !tbaa !7
  %160 = icmp sgt i32 %154, %159
  br i1 %160, label %161, label %347

161:                                              ; preds = %158
  store i32 %154, ptr %1, align 4, !tbaa !7
  br label %347

162:                                              ; preds = %147
  %163 = icmp eq i24 %139, 2
  br i1 %163, label %164, label %177

164:                                              ; preds = %162
  %165 = shl i24 %134, 2
  %166 = ashr i24 %165, 10
  %167 = zext i24 %166 to i32
  %168 = shl i32 %167, 16
  %169 = ashr exact i32 %168, 16
  %170 = load i32, ptr %1, align 4, !tbaa !7
  %171 = icmp sgt i32 %169, %170
  br i1 %171, label %173, label %172

172:                                              ; preds = %164
  store i32 %169, ptr %0, align 4, !tbaa !7
  br label %347

173:                                              ; preds = %164
  %174 = load i32, ptr %2, align 4, !tbaa !7
  %175 = icmp slt i32 %169, %174
  br i1 %175, label %176, label %347

176:                                              ; preds = %173
  store i32 %169, ptr %2, align 4, !tbaa !7
  br label %347

177:                                              ; preds = %162, %121, %114, %109, %104, %99, %92
  %178 = load i32, ptr getelementptr inbounds (%struct.Hash_Key, ptr @g_flipH_hashkey, i64 0, i32 1), align 4, !tbaa !16
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds %struct.Hash_Entry.2, ptr %8, i64 %179
  %181 = load i32, ptr %180, align 4, !tbaa !7
  %182 = load i32, ptr @g_flipH_hashkey, align 4, !tbaa !7
  %183 = icmp eq i32 %181, %182
  br i1 %183, label %184, label %262

184:                                              ; preds = %177
  %185 = getelementptr inbounds [4 x i32], ptr %180, i64 0, i64 1
  %186 = load i32, ptr %185, align 4, !tbaa !7
  %187 = load i32, ptr getelementptr inbounds (%struct.Hash_Key, ptr @g_flipH_hashkey, i64 0, i32 0, i64 1), align 4, !tbaa !7
  %188 = icmp eq i32 %186, %187
  br i1 %188, label %189, label %262

189:                                              ; preds = %184
  %190 = getelementptr inbounds [4 x i32], ptr %180, i64 0, i64 2
  %191 = load i32, ptr %190, align 4, !tbaa !7
  %192 = load i32, ptr getelementptr inbounds (%struct.Hash_Key, ptr @g_flipH_hashkey, i64 0, i32 0, i64 2), align 4, !tbaa !7
  %193 = icmp eq i32 %191, %192
  br i1 %193, label %194, label %262

194:                                              ; preds = %189
  %195 = getelementptr inbounds [4 x i32], ptr %180, i64 0, i64 3
  %196 = load i32, ptr %195, align 4, !tbaa !7
  %197 = load i32, ptr getelementptr inbounds (%struct.Hash_Key, ptr @g_flipH_hashkey, i64 0, i32 0, i64 3), align 4, !tbaa !7
  %198 = icmp eq i32 %196, %197
  br i1 %198, label %199, label %262

199:                                              ; preds = %194
  %200 = getelementptr inbounds %struct.Hash_Entry.2, ptr %8, i64 %179, i32 3
  %201 = load i24, ptr %200, align 1
  %202 = zext i24 %201 to i32
  %203 = lshr i32 %202, 7
  %204 = and i32 %203, 1
  %205 = icmp eq i32 %204, %5
  br i1 %205, label %206, label %262

206:                                              ; preds = %199
  %207 = getelementptr inbounds %struct.Hash_Entry.2, ptr %8, i64 %179, i32 2
  %208 = load i8, ptr %207, align 4, !tbaa !40
  %209 = zext i8 %208 to i32
  %210 = zext i32 %5 to i64
  %211 = getelementptr inbounds [2 x i32], ptr @g_board_size, i64 0, i64 %210
  %212 = load i32, ptr %211, align 4, !tbaa !7
  %213 = sdiv i32 %209, %212
  %214 = add nsw i32 %213, 1
  %215 = getelementptr inbounds %struct.Basic_Info, ptr %4, i64 0, i32 1
  store i32 %214, ptr %215, align 4, !tbaa !23
  %216 = load i32, ptr %211, align 4, !tbaa !7
  %217 = srem i32 %209, %216
  %218 = add nuw nsw i32 %217, 1
  store i32 %218, ptr %4, align 4, !tbaa !25
  %219 = load i24, ptr %200, align 1
  %220 = and i24 %219, 127
  %221 = zext i24 %220 to i32
  %222 = icmp slt i32 %221, %3
  br i1 %222, label %262, label %223

223:                                              ; preds = %206
  %224 = lshr i24 %219, 22
  %225 = icmp eq i24 %224, 1
  br i1 %225, label %226, label %232

226:                                              ; preds = %223
  %227 = shl i24 %219, 2
  %228 = ashr i24 %227, 10
  %229 = zext i24 %228 to i32
  %230 = shl i32 %229, 16
  %231 = ashr exact i32 %230, 16
  store i32 %231, ptr %0, align 4, !tbaa !7
  br label %347

232:                                              ; preds = %223
  %233 = icmp ult i24 %219, 4194304
  br i1 %233, label %234, label %247

234:                                              ; preds = %232
  %235 = shl nuw i24 %219, 2
  %236 = ashr i24 %235, 10
  %237 = zext i24 %236 to i32
  %238 = shl i32 %237, 16
  %239 = ashr exact i32 %238, 16
  %240 = load i32, ptr %2, align 4, !tbaa !7
  %241 = icmp slt i32 %239, %240
  br i1 %241, label %243, label %242

242:                                              ; preds = %234
  store i32 %239, ptr %0, align 4, !tbaa !7
  br label %347

243:                                              ; preds = %234
  %244 = load i32, ptr %1, align 4, !tbaa !7
  %245 = icmp sgt i32 %239, %244
  br i1 %245, label %246, label %347

246:                                              ; preds = %243
  store i32 %239, ptr %1, align 4, !tbaa !7
  br label %347

247:                                              ; preds = %232
  %248 = icmp eq i24 %224, 2
  br i1 %248, label %249, label %262

249:                                              ; preds = %247
  %250 = shl i24 %219, 2
  %251 = ashr i24 %250, 10
  %252 = zext i24 %251 to i32
  %253 = shl i32 %252, 16
  %254 = ashr exact i32 %253, 16
  %255 = load i32, ptr %1, align 4, !tbaa !7
  %256 = icmp sgt i32 %254, %255
  br i1 %256, label %258, label %257

257:                                              ; preds = %249
  store i32 %254, ptr %0, align 4, !tbaa !7
  br label %347

258:                                              ; preds = %249
  %259 = load i32, ptr %2, align 4, !tbaa !7
  %260 = icmp slt i32 %254, %259
  br i1 %260, label %261, label %347

261:                                              ; preds = %258
  store i32 %254, ptr %2, align 4, !tbaa !7
  br label %347

262:                                              ; preds = %247, %206, %199, %194, %189, %184, %177
  %263 = load i32, ptr getelementptr inbounds (%struct.Hash_Key, ptr @g_flipVH_hashkey, i64 0, i32 1), align 4, !tbaa !16
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds %struct.Hash_Entry.2, ptr %8, i64 %264
  %266 = load i32, ptr %265, align 4, !tbaa !7
  %267 = load i32, ptr @g_flipVH_hashkey, align 4, !tbaa !7
  %268 = icmp eq i32 %266, %267
  br i1 %268, label %269, label %347

269:                                              ; preds = %262
  %270 = getelementptr inbounds [4 x i32], ptr %265, i64 0, i64 1
  %271 = load i32, ptr %270, align 4, !tbaa !7
  %272 = load i32, ptr getelementptr inbounds (%struct.Hash_Key, ptr @g_flipVH_hashkey, i64 0, i32 0, i64 1), align 4, !tbaa !7
  %273 = icmp eq i32 %271, %272
  br i1 %273, label %274, label %347

274:                                              ; preds = %269
  %275 = getelementptr inbounds [4 x i32], ptr %265, i64 0, i64 2
  %276 = load i32, ptr %275, align 4, !tbaa !7
  %277 = load i32, ptr getelementptr inbounds (%struct.Hash_Key, ptr @g_flipVH_hashkey, i64 0, i32 0, i64 2), align 4, !tbaa !7
  %278 = icmp eq i32 %276, %277
  br i1 %278, label %279, label %347

279:                                              ; preds = %274
  %280 = getelementptr inbounds [4 x i32], ptr %265, i64 0, i64 3
  %281 = load i32, ptr %280, align 4, !tbaa !7
  %282 = load i32, ptr getelementptr inbounds (%struct.Hash_Key, ptr @g_flipVH_hashkey, i64 0, i32 0, i64 3), align 4, !tbaa !7
  %283 = icmp eq i32 %281, %282
  br i1 %283, label %284, label %347

284:                                              ; preds = %279
  %285 = getelementptr inbounds %struct.Hash_Entry.2, ptr %8, i64 %264, i32 3
  %286 = load i24, ptr %285, align 1
  %287 = zext i24 %286 to i32
  %288 = lshr i32 %287, 7
  %289 = and i32 %288, 1
  %290 = icmp eq i32 %289, %5
  br i1 %290, label %291, label %347

291:                                              ; preds = %284
  %292 = getelementptr inbounds %struct.Hash_Entry.2, ptr %8, i64 %264, i32 2
  %293 = load i8, ptr %292, align 4, !tbaa !40
  %294 = zext i8 %293 to i32
  %295 = zext i32 %5 to i64
  %296 = getelementptr inbounds [2 x i32], ptr @g_board_size, i64 0, i64 %295
  %297 = load i32, ptr %296, align 4, !tbaa !7
  %298 = sdiv i32 %294, %297
  %299 = add nsw i32 %298, 1
  %300 = getelementptr inbounds %struct.Basic_Info, ptr %4, i64 0, i32 1
  store i32 %299, ptr %300, align 4, !tbaa !23
  %301 = load i32, ptr %296, align 4, !tbaa !7
  %302 = srem i32 %294, %301
  %303 = add nuw nsw i32 %302, 1
  store i32 %303, ptr %4, align 4, !tbaa !25
  %304 = load i24, ptr %285, align 1
  %305 = and i24 %304, 127
  %306 = zext i24 %305 to i32
  %307 = icmp slt i32 %306, %3
  br i1 %307, label %347, label %308

308:                                              ; preds = %291
  %309 = lshr i24 %304, 22
  %310 = icmp eq i24 %309, 1
  br i1 %310, label %311, label %317

311:                                              ; preds = %308
  %312 = shl i24 %304, 2
  %313 = ashr i24 %312, 10
  %314 = zext i24 %313 to i32
  %315 = shl i32 %314, 16
  %316 = ashr exact i32 %315, 16
  store i32 %316, ptr %0, align 4, !tbaa !7
  br label %347

317:                                              ; preds = %308
  %318 = icmp ult i24 %304, 4194304
  br i1 %318, label %319, label %332

319:                                              ; preds = %317
  %320 = shl nuw i24 %304, 2
  %321 = ashr i24 %320, 10
  %322 = zext i24 %321 to i32
  %323 = shl i32 %322, 16
  %324 = ashr exact i32 %323, 16
  %325 = load i32, ptr %2, align 4, !tbaa !7
  %326 = icmp slt i32 %324, %325
  br i1 %326, label %328, label %327

327:                                              ; preds = %319
  store i32 %324, ptr %0, align 4, !tbaa !7
  br label %347

328:                                              ; preds = %319
  %329 = load i32, ptr %1, align 4, !tbaa !7
  %330 = icmp sgt i32 %324, %329
  br i1 %330, label %331, label %347

331:                                              ; preds = %328
  store i32 %324, ptr %1, align 4, !tbaa !7
  br label %347

332:                                              ; preds = %317
  %333 = icmp eq i24 %309, 2
  br i1 %333, label %334, label %347

334:                                              ; preds = %332
  %335 = shl i24 %304, 2
  %336 = ashr i24 %335, 10
  %337 = zext i24 %336 to i32
  %338 = shl i32 %337, 16
  %339 = ashr exact i32 %338, 16
  %340 = load i32, ptr %1, align 4, !tbaa !7
  %341 = icmp sgt i32 %339, %340
  br i1 %341, label %343, label %342

342:                                              ; preds = %334
  store i32 %339, ptr %0, align 4, !tbaa !7
  br label %347

343:                                              ; preds = %334
  %344 = load i32, ptr %2, align 4, !tbaa !7
  %345 = icmp slt i32 %339, %344
  br i1 %345, label %346, label %347

346:                                              ; preds = %343
  store i32 %339, ptr %2, align 4, !tbaa !7
  br label %347

347:                                              ; preds = %346, %343, %342, %332, %331, %328, %327, %311, %291, %284, %279, %274, %269, %262, %261, %258, %257, %246, %243, %242, %226, %176, %173, %172, %161, %158, %157, %141, %91, %88, %87, %76, %73, %72, %56
  %348 = phi i32 [ 1, %56 ], [ 1, %72 ], [ 1, %87 ], [ 1, %141 ], [ 1, %157 ], [ 1, %172 ], [ 1, %226 ], [ 1, %242 ], [ 1, %257 ], [ 1, %311 ], [ 1, %327 ], [ 1, %342 ], [ 0, %76 ], [ 0, %73 ], [ 0, %91 ], [ 0, %88 ], [ 0, %161 ], [ 0, %158 ], [ 0, %176 ], [ 0, %173 ], [ 0, %246 ], [ 0, %243 ], [ 0, %261 ], [ 0, %258 ], [ 0, %331 ], [ 0, %328 ], [ 0, %346 ], [ 0, %343 ], [ 0, %291 ], [ 0, %332 ], [ 0, %284 ], [ 0, %279 ], [ 0, %274 ], [ 0, %269 ], [ 0, %262 ]
  ret i32 %348
}

; Function Attrs: nounwind optsize uwtable
define internal void @init__safe_count(i32 noundef %0) #0 {
  %2 = sext i32 %0 to i64
  %3 = getelementptr inbounds [2 x %struct.Basic_Info], ptr @g_info_totals, i64 0, i64 %2
  store i32 0, ptr %3, align 4, !tbaa !25
  %4 = getelementptr inbounds [2 x i32], ptr @g_board_size, i64 0, i64 %2
  %5 = load i32, ptr %4, align 4, !tbaa !7
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %15

7:                                                ; preds = %7, %1
  %8 = phi i64 [ %9, %7 ], [ 0, %1 ]
  %9 = add nuw nsw i64 %8, 1
  %10 = getelementptr inbounds [2 x [32 x %struct.Basic_Info]], ptr @g_info, i64 0, i64 %2, i64 %9
  store i32 0, ptr %10, align 4, !tbaa !25
  %11 = trunc i64 %9 to i32
  tail call void @update_safe(i32 noundef %0, i32 noundef %11) #33
  %12 = load i32, ptr %4, align 4, !tbaa !7
  %13 = sext i32 %12 to i64
  %14 = icmp slt i64 %9, %13
  br i1 %14, label %7, label %15, !llvm.loop !41

15:                                               ; preds = %7, %1
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @init__real_count(i32 noundef %0) #0 {
  %2 = sext i32 %0 to i64
  %3 = getelementptr inbounds [2 x %struct.Basic_Info], ptr @g_info_totals, i64 0, i64 %2, i32 1
  store i32 0, ptr %3, align 4, !tbaa !23
  %4 = getelementptr inbounds [2 x i32], ptr @g_board_size, i64 0, i64 %2
  %5 = load i32, ptr %4, align 4, !tbaa !7
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %15

7:                                                ; preds = %7, %1
  %8 = phi i64 [ %9, %7 ], [ 0, %1 ]
  %9 = add nuw nsw i64 %8, 1
  %10 = getelementptr inbounds [2 x [32 x %struct.Basic_Info]], ptr @g_info, i64 0, i64 %2, i64 %9, i32 1
  store i32 0, ptr %10, align 4, !tbaa !23
  %11 = trunc i64 %9 to i32
  tail call void @update_real(i32 noundef %0, i32 noundef %11) #33
  %12 = load i32, ptr %4, align 4, !tbaa !7
  %13 = sext i32 %12 to i64
  %14 = icmp slt i64 %9, %13
  br i1 %14, label %7, label %15, !llvm.loop !42

15:                                               ; preds = %7, %1
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @initialize_solver() #0 {
  %1 = load ptr, ptr @g_trans_table, align 8, !tbaa !27
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %19

3:                                                ; preds = %0
  %4 = tail call noalias dereferenceable_or_null(201326592) ptr @calloc(i64 noundef 8388608, i64 noundef 24) #35
  store ptr %4, ptr @g_trans_table, align 8, !tbaa !27
  tail call void @srandom(i32 noundef 1) #33
  br label %5

5:                                                ; preds = %15, %3
  %6 = phi i64 [ 1, %3 ], [ %16, %15 ]
  br label %7

7:                                                ; preds = %7, %5
  %8 = phi i64 [ 1, %5 ], [ %13, %7 ]
  %9 = tail call i64 @random() #33
  %10 = trunc i64 %9 to i32
  %11 = and i32 %10, 8388607
  %12 = getelementptr inbounds [32 x [32 x i32]], ptr @g_zobrist, i64 0, i64 %6, i64 %8
  store i32 %11, ptr %12, align 4, !tbaa !7
  %13 = add nuw nsw i64 %8, 1
  %14 = icmp eq i64 %13, 31
  br i1 %14, label %15, label %7, !llvm.loop !43

15:                                               ; preds = %7
  %16 = add nuw nsw i64 %6, 1
  %17 = icmp eq i64 %16, 31
  br i1 %17, label %18, label %5, !llvm.loop !44

18:                                               ; preds = %15
  tail call void (...) @init_static_tables() #33
  br label %19

19:                                               ; preds = %18, %0
  tail call void (...) @init_less_static_tables() #33
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #14

; Function Attrs: nounwind optsize
declare void @srandom(i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind optsize
declare i64 @random() local_unnamed_addr #7

; Function Attrs: nounwind optsize uwtable
define internal void @initialize_board(i32 noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = add i32 %0, -31
  %5 = icmp ult i32 %4, -30
  %6 = add i32 %1, -31
  %7 = icmp ult i32 %6, -30
  %8 = or i1 %5, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @_fatal_error_aux(ptr noundef nonnull @.str.20, i32 noundef 102, i32 noundef 1, ptr noundef nonnull @.str.1.21, i32 noundef %0, i32 noundef %1) #33
  br label %10

10:                                               ; preds = %9, %3
  %11 = mul nsw i32 %1, %0
  %12 = icmp sgt i32 %11, 127
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  tail call void (ptr, i32, i32, ptr, ...) @_fatal_error_aux(ptr noundef nonnull @.str.20, i32 noundef 105, i32 noundef 1, ptr noundef nonnull @.str.1.21, i32 noundef %0, i32 noundef %1) #33
  br label %14

14:                                               ; preds = %13, %10
  %15 = load ptr, ptr @g_trans_table, align 8, !tbaa !27
  %16 = icmp ne ptr %15, null
  %17 = load i32, ptr @g_board_size, align 4
  %18 = icmp eq i32 %17, %0
  %19 = select i1 %16, i1 %18, i1 false
  %20 = load i32, ptr getelementptr inbounds ([2 x i32], ptr @g_board_size, i64 0, i64 1), align 4
  %21 = icmp eq i32 %20, %1
  %22 = select i1 %19, i1 %21, i1 false
  store i32 %0, ptr @g_board_size, align 4, !tbaa !7
  store i32 %1, ptr getelementptr inbounds ([2 x i32], ptr @g_board_size, i64 0, i64 1), align 4, !tbaa !7
  br i1 %22, label %24, label %23

23:                                               ; preds = %14
  tail call void @initialize_solver() #32
  br label %24

24:                                               ; preds = %23, %14
  %25 = icmp sgt i32 %0, 0
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) @g_board, i8 -1, i64 256, i1 false)
  br i1 %25, label %26, label %117

26:                                               ; preds = %24
  %27 = icmp sgt i32 %1, 0
  %28 = zext i32 %0 to i64
  %29 = zext i32 %1 to i64
  br label %30

30:                                               ; preds = %55, %26
  %31 = phi i64 [ 0, %26 ], [ %32, %55 ]
  %32 = add nuw nsw i64 %31, 1
  br i1 %27, label %33, label %55

33:                                               ; preds = %30
  %34 = getelementptr inbounds [32 x i32], ptr @g_board, i64 0, i64 %32
  %35 = trunc i64 %31 to i32
  %36 = shl i32 2, %35
  %37 = xor i32 %36, -1
  br label %38

38:                                               ; preds = %53, %33
  %39 = phi i64 [ 0, %33 ], [ %43, %53 ]
  %40 = getelementptr inbounds [30 x i32], ptr %2, i64 %31, i64 %39
  %41 = load i32, ptr %40, align 4, !tbaa !7
  %42 = icmp eq i32 %41, 0
  %43 = add nuw nsw i64 %39, 1
  br i1 %42, label %44, label %53

44:                                               ; preds = %38
  %45 = trunc i64 %39 to i32
  %46 = shl i32 2, %45
  %47 = xor i32 %46, -1
  %48 = load i32, ptr %34, align 4, !tbaa !7
  %49 = and i32 %48, %47
  store i32 %49, ptr %34, align 4, !tbaa !7
  %50 = getelementptr inbounds [2 x [32 x i32]], ptr @g_board, i64 0, i64 1, i64 %43
  %51 = load i32, ptr %50, align 4, !tbaa !7
  %52 = and i32 %51, %37
  store i32 %52, ptr %50, align 4, !tbaa !7
  br label %53

53:                                               ; preds = %44, %38
  %54 = icmp eq i64 %43, %29
  br i1 %54, label %55, label %38, !llvm.loop !45

55:                                               ; preds = %53, %30
  %56 = icmp eq i64 %32, %28
  br i1 %56, label %57, label %30, !llvm.loop !46

57:                                               ; preds = %55
  tail call void @init__real_count(i32 noundef 1) #32
  tail call void @init__real_count(i32 noundef 0) #32
  tail call void @init__safe_count(i32 noundef 1) #32
  tail call void @init__safe_count(i32 noundef 0) #32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) @g_norm_hashkey, i8 0, i64 16, i1 false), !tbaa !7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) @g_flipV_hashkey, i8 0, i64 16, i1 false), !tbaa !7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) @g_flipH_hashkey, i8 0, i64 16, i1 false), !tbaa !7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) @g_flipVH_hashkey, i8 0, i64 16, i1 false), !tbaa !7
  br i1 %25, label %58, label %118

58:                                               ; preds = %57
  %59 = icmp sgt i32 %1, 0
  %60 = zext i32 %0 to i64
  %61 = zext i32 %1 to i64
  br label %62

62:                                               ; preds = %114, %58
  %63 = phi i64 [ 0, %58 ], [ %115, %114 ]
  br i1 %59, label %64, label %114

64:                                               ; preds = %62
  %65 = trunc i64 %63 to i32
  %66 = mul nsw i32 %65, %1
  %67 = xor i32 %65, -1
  %68 = add i32 %67, %0
  %69 = mul nsw i32 %68, %1
  br label %70

70:                                               ; preds = %111, %64
  %71 = phi i64 [ 0, %64 ], [ %112, %111 ]
  %72 = getelementptr inbounds [30 x i32], ptr %2, i64 %63, i64 %71
  %73 = load i32, ptr %72, align 4, !tbaa !7
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %111, label %75

75:                                               ; preds = %70
  %76 = trunc i64 %71 to i32
  %77 = add nsw i32 %66, %76
  %78 = and i32 %77, 31
  %79 = shl nuw i32 1, %78
  %80 = sdiv i32 %77, 32
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [4 x i32], ptr @g_norm_hashkey, i64 0, i64 %81
  %83 = load i32, ptr %82, align 4, !tbaa !7
  %84 = or i32 %83, %79
  store i32 %84, ptr %82, align 4, !tbaa !7
  %85 = xor i32 %76, -1
  %86 = add i32 %85, %1
  %87 = add nsw i32 %86, %66
  %88 = and i32 %87, 31
  %89 = shl nuw i32 1, %88
  %90 = sdiv i32 %87, 32
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds [4 x i32], ptr @g_flipV_hashkey, i64 0, i64 %91
  %93 = load i32, ptr %92, align 4, !tbaa !7
  %94 = or i32 %93, %89
  store i32 %94, ptr %92, align 4, !tbaa !7
  %95 = add nsw i32 %69, %76
  %96 = and i32 %95, 31
  %97 = shl nuw i32 1, %96
  %98 = sdiv i32 %95, 32
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds [4 x i32], ptr @g_flipH_hashkey, i64 0, i64 %99
  %101 = load i32, ptr %100, align 4, !tbaa !7
  %102 = or i32 %101, %97
  store i32 %102, ptr %100, align 4, !tbaa !7
  %103 = add nsw i32 %86, %69
  %104 = and i32 %103, 31
  %105 = shl nuw i32 1, %104
  %106 = sdiv i32 %103, 32
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds [4 x i32], ptr @g_flipVH_hashkey, i64 0, i64 %107
  %109 = load i32, ptr %108, align 4, !tbaa !7
  %110 = or i32 %109, %105
  store i32 %110, ptr %108, align 4, !tbaa !7
  br label %111

111:                                              ; preds = %75, %70
  %112 = add nuw nsw i64 %71, 1
  %113 = icmp eq i64 %112, %61
  br i1 %113, label %114, label %70, !llvm.loop !47

114:                                              ; preds = %111, %62
  %115 = add nuw nsw i64 %63, 1
  %116 = icmp eq i64 %115, %60
  br i1 %116, label %118, label %62, !llvm.loop !48

117:                                              ; preds = %24
  tail call void @init__real_count(i32 noundef 1) #32
  tail call void @init__real_count(i32 noundef 0) #32
  tail call void @init__safe_count(i32 noundef 1) #32
  tail call void @init__safe_count(i32 noundef 0) #32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) @g_norm_hashkey, i8 0, i64 16, i1 false), !tbaa !7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) @g_flipV_hashkey, i8 0, i64 16, i1 false), !tbaa !7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) @g_flipH_hashkey, i8 0, i64 16, i1 false), !tbaa !7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) @g_flipVH_hashkey, i8 0, i64 16, i1 false), !tbaa !7
  br label %118

118:                                              ; preds = %117, %114, %57
  tail call fastcc void @init_hashkey_code(ptr noundef nonnull @g_norm_hashkey) #32
  tail call fastcc void @init_hashkey_code(ptr noundef nonnull @g_flipV_hashkey) #32
  tail call fastcc void @init_hashkey_code(ptr noundef nonnull @g_flipH_hashkey) #32
  tail call fastcc void @init_hashkey_code(ptr noundef nonnull @g_flipVH_hashkey) #32
  tail call void @print_board(i32 noundef 0) #33
  %119 = tail call i32 @putchar(i32 10)
  tail call void (i32, ...) @print_board_info(i32 noundef 0) #33
  tail call void (...) @check_hash_code_sanity() #33
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @init_hashkey_code(ptr nocapture noundef %0) unnamed_addr #9 {
  %2 = load i32, ptr @g_board_size, align 4, !tbaa !7
  %3 = load i32, ptr getelementptr inbounds ([2 x i32], ptr @g_board_size, i64 0, i64 1), align 4, !tbaa !7
  %4 = getelementptr inbounds %struct.Hash_Key, ptr %0, i64 0, i32 1
  store i32 0, ptr %4, align 4, !tbaa !16
  %5 = icmp sgt i32 %2, 0
  br i1 %5, label %6, label %44

6:                                                ; preds = %1
  %7 = icmp sgt i32 %3, 0
  %8 = zext i32 %3 to i64
  %9 = zext i32 %2 to i64
  %10 = zext i32 %3 to i64
  br label %11

11:                                               ; preds = %40, %6
  %12 = phi i32 [ 0, %6 ], [ %42, %40 ]
  %13 = phi i64 [ 0, %6 ], [ %41, %40 ]
  br i1 %7, label %16, label %14

14:                                               ; preds = %11
  %15 = add nuw nsw i64 %13, 1
  br label %40

16:                                               ; preds = %11
  %17 = mul i64 %13, %8
  %18 = add nuw nsw i64 %13, 1
  br label %19

19:                                               ; preds = %37, %16
  %20 = phi i32 [ %12, %16 ], [ %38, %37 ]
  %21 = phi i64 [ 0, %16 ], [ %32, %37 ]
  %22 = add i64 %21, %17
  %23 = trunc i64 %22 to i32
  %24 = sdiv i32 %23, 32
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [4 x i32], ptr %0, i64 0, i64 %25
  %27 = load i32, ptr %26, align 4, !tbaa !7
  %28 = and i32 %23, 31
  %29 = shl nuw i32 1, %28
  %30 = and i32 %27, %29
  %31 = icmp eq i32 %30, 0
  %32 = add nuw nsw i64 %21, 1
  br i1 %31, label %37, label %33

33:                                               ; preds = %19
  %34 = getelementptr inbounds [32 x [32 x i32]], ptr @g_zobrist, i64 0, i64 %18, i64 %32
  %35 = load i32, ptr %34, align 4, !tbaa !7
  %36 = xor i32 %20, %35
  store i32 %36, ptr %4, align 4, !tbaa !16
  br label %37

37:                                               ; preds = %33, %19
  %38 = phi i32 [ %36, %33 ], [ %20, %19 ]
  %39 = icmp eq i64 %32, %10
  br i1 %39, label %40, label %19, !llvm.loop !49

40:                                               ; preds = %37, %14
  %41 = phi i64 [ %15, %14 ], [ %18, %37 ]
  %42 = phi i32 [ %12, %14 ], [ %38, %37 ]
  %43 = icmp eq i64 %41, %9
  br i1 %43, label %44, label %11, !llvm.loop !50

44:                                               ; preds = %40, %1
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind optsize memory(read, argmem: write, inaccessiblemem: none) uwtable
define internal i32 @move_generator(ptr nocapture noundef writeonly %0, i32 noundef %1) #15 {
  %3 = and i32 %1, 1
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds [2 x i32], ptr @g_board_size, i64 0, i64 %4
  %6 = load i32, ptr %5, align 4, !tbaa !7
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %16, label %66

8:                                                ; preds = %59
  %.lcssa = phi i64 [ %64, %59 ]
  %9 = trunc i64 %.lcssa to i32
  %10 = load i32, ptr %5, align 4, !tbaa !7
  br label %11

11:                                               ; preds = %16, %8
  %12 = phi i32 [ %17, %16 ], [ %10, %8 ]
  %13 = phi i32 [ %19, %16 ], [ %9, %8 ]
  %14 = sext i32 %12 to i64
  %15 = icmp slt i64 %26, %14
  br i1 %15, label %16, label %66, !llvm.loop !51

16:                                               ; preds = %11, %2
  %17 = phi i32 [ %12, %11 ], [ %6, %2 ]
  %18 = phi i64 [ %26, %11 ], [ 0, %2 ]
  %19 = phi i32 [ %13, %11 ], [ 0, %2 ]
  %20 = getelementptr inbounds [2 x [32 x i32]], ptr @g_board, i64 0, i64 %4, i64 %18
  %21 = load i32, ptr %20, align 4, !tbaa !7
  %22 = add nuw nsw i64 %18, 2
  %23 = getelementptr inbounds [2 x [32 x i32]], ptr @g_board, i64 0, i64 %4, i64 %22
  %24 = load i32, ptr %23, align 4, !tbaa !7
  %25 = and i32 %24, %21
  %26 = add nuw nsw i64 %18, 1
  %27 = getelementptr inbounds [2 x [32 x i32]], ptr @g_board, i64 0, i64 %4, i64 %26
  %28 = load i32, ptr %27, align 4, !tbaa !7
  %29 = lshr i32 %28, 1
  %30 = lshr i32 %25, 1
  %31 = and i32 %30, %25
  %32 = or i32 %29, %31
  %33 = or i32 %32, %28
  %34 = icmp eq i32 %33, -1
  br i1 %34, label %11, label %35

35:                                               ; preds = %16
  %36 = xor i32 %33, -1
  %37 = sext i32 %19 to i64
  %38 = trunc i64 %26 to i32
  br label %39

39:                                               ; preds = %59, %35
  %40 = phi i64 [ %37, %35 ], [ %64, %59 ]
  %41 = phi i32 [ %36, %35 ], [ %44, %59 ]
  %42 = sub i32 0, %41
  %43 = and i32 %41, %42
  %44 = xor i32 %43, %41
  %45 = and i32 %43, 65535
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %39
  %48 = zext i32 %45 to i64
  %49 = getelementptr inbounds [65536 x i32], ptr @lastbit16, i64 0, i64 %48
  %50 = load i32, ptr %49, align 4, !tbaa !7
  br label %59

51:                                               ; preds = %39
  %52 = icmp ult i32 %43, 65536
  br i1 %52, label %59, label %53

53:                                               ; preds = %51
  %54 = lshr i32 %43, 16
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds [65536 x i32], ptr @lastbit16, i64 0, i64 %55
  %57 = load i32, ptr %56, align 4, !tbaa !7
  %58 = add nsw i32 %57, 16
  br label %59

59:                                               ; preds = %53, %51, %47
  %60 = phi i32 [ %50, %47 ], [ %58, %53 ], [ 100, %51 ]
  %61 = getelementptr inbounds %struct.Basic_Info, ptr %0, i64 %40
  %62 = getelementptr inbounds %struct.Basic_Info, ptr %0, i64 %40, i32 1
  store i32 %60, ptr %62, align 4, !tbaa !23
  store i32 %38, ptr %61, align 4, !tbaa !25
  %63 = getelementptr inbounds %struct.Basic_Info, ptr %0, i64 %40, i32 2
  store i32 0, ptr %63, align 4, !tbaa !52
  %64 = add i64 %40, 1
  %65 = icmp eq i32 %44, 0
  br i1 %65, label %8, label %39, !llvm.loop !53

66:                                               ; preds = %11, %2
  %67 = phi i32 [ 0, %2 ], [ %13, %11 ]
  ret i32 %67
}

; Function Attrs: nofree norecurse nosync nounwind optsize memory(read, argmem: write, inaccessiblemem: none) uwtable
define internal i32 @move_generator_stage1(ptr nocapture noundef writeonly %0, i32 noundef %1) #15 {
  %3 = and i32 %1, 1
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds [2 x i32], ptr @g_board_size, i64 0, i64 %4
  %6 = load i32, ptr %5, align 4, !tbaa !7
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %16, label %65

8:                                                ; preds = %58
  %.lcssa = phi i64 [ %63, %58 ]
  %9 = trunc i64 %.lcssa to i32
  %10 = load i32, ptr %5, align 4, !tbaa !7
  br label %11

11:                                               ; preds = %16, %8
  %12 = phi i32 [ %17, %16 ], [ %10, %8 ]
  %13 = phi i32 [ %19, %16 ], [ %9, %8 ]
  %14 = sext i32 %12 to i64
  %15 = icmp slt i64 %26, %14
  br i1 %15, label %16, label %65, !llvm.loop !54

16:                                               ; preds = %11, %2
  %17 = phi i32 [ %12, %11 ], [ %6, %2 ]
  %18 = phi i64 [ %26, %11 ], [ 0, %2 ]
  %19 = phi i32 [ %13, %11 ], [ 0, %2 ]
  %20 = getelementptr inbounds [2 x [32 x i32]], ptr @g_board, i64 0, i64 %4, i64 %18
  %21 = load i32, ptr %20, align 4, !tbaa !7
  %22 = add nuw nsw i64 %18, 2
  %23 = getelementptr inbounds [2 x [32 x i32]], ptr @g_board, i64 0, i64 %4, i64 %22
  %24 = load i32, ptr %23, align 4, !tbaa !7
  %25 = and i32 %24, %21
  %26 = add nuw nsw i64 %18, 1
  %27 = getelementptr inbounds [2 x [32 x i32]], ptr @g_board, i64 0, i64 %4, i64 %26
  %28 = load i32, ptr %27, align 4, !tbaa !7
  %29 = or i32 %25, %28
  %30 = lshr i32 %29, 1
  %31 = or i32 %25, %30
  %32 = or i32 %31, %28
  %33 = icmp eq i32 %32, -1
  br i1 %33, label %11, label %34

34:                                               ; preds = %16
  %35 = xor i32 %32, -1
  %36 = sext i32 %19 to i64
  %37 = trunc i64 %26 to i32
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
  %49 = load i32, ptr %48, align 4, !tbaa !7
  br label %58

50:                                               ; preds = %38
  %51 = icmp ult i32 %42, 65536
  br i1 %51, label %58, label %52

52:                                               ; preds = %50
  %53 = lshr i32 %42, 16
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds [65536 x i32], ptr @lastbit16, i64 0, i64 %54
  %56 = load i32, ptr %55, align 4, !tbaa !7
  %57 = add nsw i32 %56, 16
  br label %58

58:                                               ; preds = %52, %50, %46
  %59 = phi i32 [ %49, %46 ], [ %57, %52 ], [ 100, %50 ]
  %60 = getelementptr inbounds %struct.Basic_Info, ptr %0, i64 %39
  %61 = getelementptr inbounds %struct.Basic_Info, ptr %0, i64 %39, i32 1
  store i32 %59, ptr %61, align 4, !tbaa !23
  store i32 %37, ptr %60, align 4, !tbaa !25
  %62 = getelementptr inbounds %struct.Basic_Info, ptr %0, i64 %39, i32 2
  store i32 0, ptr %62, align 4, !tbaa !52
  %63 = add i64 %39, 1
  %64 = icmp eq i32 %43, 0
  br i1 %64, label %8, label %38, !llvm.loop !55

65:                                               ; preds = %11, %2
  %66 = phi i32 [ 0, %2 ], [ %13, %11 ]
  ret i32 %66
}

; Function Attrs: nofree norecurse nosync nounwind optsize memory(read, argmem: write, inaccessiblemem: none) uwtable
define internal i32 @move_generator_stage2(ptr nocapture noundef writeonly %0, i32 noundef %1, i32 noundef %2) #15 {
  %4 = and i32 %2, 1
  %5 = zext i32 %4 to i64
  %6 = getelementptr inbounds [2 x i32], ptr @g_board_size, i64 0, i64 %5
  %7 = load i32, ptr %6, align 4, !tbaa !7
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %17, label %68

9:                                                ; preds = %61
  %.lcssa = phi i64 [ %66, %61 ]
  %10 = trunc i64 %.lcssa to i32
  %11 = load i32, ptr %6, align 4, !tbaa !7
  br label %12

12:                                               ; preds = %17, %9
  %13 = phi i32 [ %18, %17 ], [ %11, %9 ]
  %14 = phi i32 [ %20, %17 ], [ %10, %9 ]
  %15 = sext i32 %13 to i64
  %16 = icmp slt i64 %27, %15
  br i1 %16, label %17, label %68, !llvm.loop !56

17:                                               ; preds = %12, %3
  %18 = phi i32 [ %13, %12 ], [ %7, %3 ]
  %19 = phi i64 [ %27, %12 ], [ 0, %3 ]
  %20 = phi i32 [ %14, %12 ], [ %1, %3 ]
  %21 = getelementptr inbounds [2 x [32 x i32]], ptr @g_board, i64 0, i64 %5, i64 %19
  %22 = load i32, ptr %21, align 4, !tbaa !7
  %23 = add nuw nsw i64 %19, 2
  %24 = getelementptr inbounds [2 x [32 x i32]], ptr @g_board, i64 0, i64 %5, i64 %23
  %25 = load i32, ptr %24, align 4, !tbaa !7
  %26 = and i32 %25, %22
  %27 = add nuw nsw i64 %19, 1
  %28 = getelementptr inbounds [2 x [32 x i32]], ptr @g_board, i64 0, i64 %5, i64 %27
  %29 = load i32, ptr %28, align 4, !tbaa !7
  %30 = lshr i32 %29, 1
  %31 = lshr i32 %26, 1
  %32 = xor i32 %26, %31
  %33 = xor i32 %32, -1
  %34 = or i32 %30, %33
  %35 = or i32 %34, %29
  %36 = icmp eq i32 %35, -1
  br i1 %36, label %12, label %37

37:                                               ; preds = %17
  %38 = xor i32 %35, -1
  %39 = sext i32 %20 to i64
  %40 = trunc i64 %27 to i32
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
  %52 = load i32, ptr %51, align 4, !tbaa !7
  br label %61

53:                                               ; preds = %41
  %54 = icmp ult i32 %45, 65536
  br i1 %54, label %61, label %55

55:                                               ; preds = %53
  %56 = lshr i32 %45, 16
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds [65536 x i32], ptr @lastbit16, i64 0, i64 %57
  %59 = load i32, ptr %58, align 4, !tbaa !7
  %60 = add nsw i32 %59, 16
  br label %61

61:                                               ; preds = %55, %53, %49
  %62 = phi i32 [ %52, %49 ], [ %60, %55 ], [ 100, %53 ]
  %63 = getelementptr inbounds %struct.Basic_Info, ptr %0, i64 %42
  %64 = getelementptr inbounds %struct.Basic_Info, ptr %0, i64 %42, i32 1
  store i32 %62, ptr %64, align 4, !tbaa !23
  store i32 %40, ptr %63, align 4, !tbaa !25
  %65 = getelementptr inbounds %struct.Basic_Info, ptr %0, i64 %42, i32 2
  store i32 0, ptr %65, align 4, !tbaa !52
  %66 = add i64 %42, 1
  %67 = icmp eq i32 %46, 0
  br i1 %67, label %9, label %41, !llvm.loop !57

68:                                               ; preds = %12, %3
  %69 = phi i32 [ %1, %3 ], [ %14, %12 ]
  ret i32 %69
}

; Function Attrs: nounwind optsize uwtable
define internal void @sort_moves(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca [128 x [256 x %struct.Basic_Info]], align 16
  %5 = alloca [128 x i32], align 16
  %6 = alloca [128 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 393216, ptr nonnull %4) #31
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %5) #31
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %6) #31
  %7 = icmp slt i32 %1, %2
  br i1 %7, label %8, label %18

8:                                                ; preds = %3
  %9 = sext i32 %1 to i64
  br label %10

10:                                               ; preds = %55, %8
  %11 = phi i64 [ %9, %8 ], [ %57, %55 ]
  %12 = phi i32 [ 0, %8 ], [ %56, %55 ]
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %40

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.Basic_Info, ptr %0, i64 %11, i32 2
  %16 = load i32, ptr %15, align 4, !tbaa !52
  %17 = zext i32 %12 to i64
  br label %24

18:                                               ; preds = %55, %3
  %19 = phi i32 [ 0, %3 ], [ %56, %55 ]
  %20 = icmp eq i32 %1, %2
  br i1 %20, label %111, label %21

21:                                               ; preds = %18
  %22 = icmp sgt i32 %19, 1
  %23 = zext i32 %19 to i64
  br label %60

24:                                               ; preds = %37, %14
  %25 = phi i64 [ 0, %14 ], [ %38, %37 ]
  %26 = getelementptr inbounds [128 x i32], ptr %5, i64 0, i64 %25
  %27 = load i32, ptr %26, align 4, !tbaa !7
  %28 = icmp eq i32 %16, %27
  br i1 %28, label %29, label %37

29:                                               ; preds = %24
  %.lcssa3 = phi i64 [ %25, %24 ]
  %30 = trunc i64 %.lcssa3 to i32
  %31 = getelementptr inbounds %struct.Basic_Info, ptr %0, i64 %11
  %32 = getelementptr inbounds [128 x i32], ptr %6, i64 0, i64 %.lcssa3
  %33 = load i32, ptr %32, align 4, !tbaa !7
  %34 = add nsw i32 %33, 1
  store i32 %34, ptr %32, align 4, !tbaa !7
  %35 = sext i32 %33 to i64
  %36 = getelementptr inbounds [128 x [256 x %struct.Basic_Info]], ptr %4, i64 0, i64 %.lcssa3, i64 %35
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %36, ptr noundef nonnull align 4 dereferenceable(12) %31, i64 12, i1 false), !tbaa.struct !58
  br label %40

37:                                               ; preds = %24
  %38 = add nuw nsw i64 %25, 1
  %39 = icmp eq i64 %38, %17
  br i1 %39, label %43, label %24, !llvm.loop !59

40:                                               ; preds = %29, %10
  %41 = phi i32 [ %30, %29 ], [ 0, %10 ]
  %42 = icmp eq i32 %41, %12
  br i1 %42, label %43, label %55

43:                                               ; preds = %40, %37
  %44 = icmp eq i32 %12, 128
  br i1 %44, label %45, label %46

45:                                               ; preds = %43
  tail call void (ptr, i32, i32, ptr, ...) @_fatal_error_aux(ptr noundef nonnull @.str.24, i32 noundef 34, i32 noundef 1, ptr noundef nonnull @.str.1.25) #33
  br label %46

46:                                               ; preds = %45, %43
  %47 = zext i32 %12 to i64
  %48 = getelementptr inbounds [128 x [256 x %struct.Basic_Info]], ptr %4, i64 0, i64 %47
  %49 = getelementptr inbounds %struct.Basic_Info, ptr %0, i64 %11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %48, ptr noundef nonnull align 4 dereferenceable(12) %49, i64 12, i1 false), !tbaa.struct !58
  %50 = getelementptr inbounds %struct.Basic_Info, ptr %0, i64 %11, i32 2
  %51 = load i32, ptr %50, align 4, !tbaa !52
  %52 = getelementptr inbounds [128 x i32], ptr %5, i64 0, i64 %47
  store i32 %51, ptr %52, align 4, !tbaa !7
  %53 = getelementptr inbounds [128 x i32], ptr %6, i64 0, i64 %47
  store i32 1, ptr %53, align 4, !tbaa !7
  %54 = add nsw i32 %12, 1
  br label %55

55:                                               ; preds = %46, %40
  %56 = phi i32 [ %54, %46 ], [ %12, %40 ]
  %57 = add nsw i64 %11, 1
  %58 = trunc i64 %57 to i32
  %59 = icmp eq i32 %58, %2
  br i1 %59, label %18, label %10, !llvm.loop !60

60:                                               ; preds = %89, %21
  %61 = phi i32 [ %1, %21 ], [ %96, %89 ]
  br i1 %22, label %62, label %64

62:                                               ; preds = %60
  %63 = load i32, ptr %5, align 16, !tbaa !7
  br label %99

64:                                               ; preds = %99, %60
  %65 = phi i32 [ 0, %60 ], [ %108, %99 ]
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [128 x i32], ptr %6, i64 0, i64 %66
  %68 = load i32, ptr %67, align 4, !tbaa !7
  %69 = sext i32 %61 to i64
  %70 = mul nsw i64 %69, 12
  %71 = getelementptr i8, ptr %0, i64 %70
  %72 = mul nsw i64 %66, 3072
  %73 = getelementptr i8, ptr %4, i64 %72
  %74 = tail call i32 @llvm.smax.i32(i32 %68, i32 1)
  %75 = zext i32 %74 to i64
  %76 = mul nuw nsw i64 %75, 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %71, ptr noundef nonnull align 16 dereferenceable(1) %73, i64 %76, i1 false)
  %77 = add nuw nsw i64 %75, 1
  %78 = and i64 %77, 4294967294
  %79 = add nsw i64 %75, -1
  %80 = insertelement <2 x i64> poison, i64 %79, i64 0
  %81 = shufflevector <2 x i64> %80, <2 x i64> poison, <2 x i32> zeroinitializer
  %82 = insertelement <2 x i64> <i64 poison, i64 0>, i64 %69, i64 0
  br label %83

83:                                               ; preds = %83, %64
  %84 = phi i64 [ 0, %64 ], [ %87, %83 ]
  %85 = phi <2 x i64> [ %82, %64 ], [ %86, %83 ]
  %86 = add <2 x i64> %85, <i64 1, i64 1>
  %87 = add i64 %84, 2
  %88 = icmp eq i64 %87, %78
  br i1 %88, label %89, label %83, !llvm.loop !61

89:                                               ; preds = %83
  %.lcssa2 = phi i64 [ %84, %83 ]
  %.lcssa1 = phi <2 x i64> [ %85, %83 ]
  %.lcssa = phi <2 x i64> [ %86, %83 ]
  %90 = insertelement <2 x i64> poison, i64 %.lcssa2, i64 0
  %91 = shufflevector <2 x i64> %90, <2 x i64> poison, <2 x i32> zeroinitializer
  %92 = or <2 x i64> %91, <i64 0, i64 1>
  %93 = icmp ugt <2 x i64> %92, %81
  %94 = select <2 x i1> %93, <2 x i64> %.lcssa1, <2 x i64> %.lcssa
  %95 = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %94)
  %96 = trunc i64 %95 to i32
  %97 = getelementptr inbounds [128 x i32], ptr %5, i64 0, i64 %66
  store i32 -5000, ptr %97, align 4, !tbaa !7
  %98 = icmp eq i32 %96, %2
  br i1 %98, label %111, label %60, !llvm.loop !64

99:                                               ; preds = %99, %62
  %100 = phi i64 [ 1, %62 ], [ %109, %99 ]
  %101 = phi i32 [ 0, %62 ], [ %108, %99 ]
  %102 = phi i32 [ %63, %62 ], [ %106, %99 ]
  %103 = getelementptr inbounds [128 x i32], ptr %5, i64 0, i64 %100
  %104 = load i32, ptr %103, align 4, !tbaa !7
  %105 = icmp sgt i32 %104, %102
  %106 = tail call i32 @llvm.smax.i32(i32 %104, i32 %102)
  %107 = trunc i64 %100 to i32
  %108 = select i1 %105, i32 %107, i32 %101
  %109 = add nuw nsw i64 %100, 1
  %110 = icmp eq i64 %109, %23
  br i1 %110, label %64, label %99, !llvm.loop !65

111:                                              ; preds = %89, %18
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %6) #31
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %5) #31
  call void @llvm.lifetime.end.p0(i64 393216, ptr nonnull %4) #31
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #5

; Function Attrs: nounwind optsize uwtable
define internal i32 @search_for_move(i8 noundef signext %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) #0 {
  %5 = alloca [256 x %struct.Basic_Info], align 16
  %6 = alloca %struct.Basic_Info, align 4
  call void @llvm.lifetime.start.p0(i64 3072, ptr nonnull %5) #31
  %7 = tail call ptr @__ctype_toupper_loc() #36
  %8 = load ptr, ptr %7, align 8, !tbaa !27
  %9 = sext i8 %0 to i64
  %10 = getelementptr inbounds i32, ptr %8, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !7
  %12 = icmp eq i32 %11, 86
  br i1 %12, label %16, label %13

13:                                               ; preds = %4
  %14 = icmp eq i32 %11, 72
  br i1 %14, label %16, label %15

15:                                               ; preds = %13
  tail call void (ptr, i32, i32, ptr, ...) @_fatal_error_aux(ptr noundef nonnull @.str.26, i32 noundef 126, i32 noundef 1, ptr noundef nonnull @.str.1.27) #33
  tail call void @exit(i32 noundef 1) #37
  unreachable

16:                                               ; preds = %13, %4
  %17 = phi i32 [ 1, %4 ], [ 0, %13 ]
  %18 = load i32, ptr @g_board_size, align 4, !tbaa !7
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = zext i32 %18 to i64
  br label %24

22:                                               ; preds = %24, %16
  %23 = phi i32 [ 0, %16 ], [ %40, %24 ]
  store i32 %23, ptr @g_empty_squares, align 4, !tbaa !7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) @stat_cutoffs, i8 0, i64 160, i1 false), !tbaa !7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) @stat_nodes, i8 0, i64 160, i1 false), !tbaa !7
  br label %42

24:                                               ; preds = %24, %20
  %25 = phi i64 [ 0, %20 ], [ %27, %24 ]
  %26 = phi i32 [ 0, %20 ], [ %40, %24 ]
  %27 = add nuw nsw i64 %25, 1
  %28 = getelementptr inbounds [32 x i32], ptr @g_board, i64 0, i64 %27
  %29 = load i32, ptr %28, align 4, !tbaa !7
  %30 = xor i32 %29, -1
  %31 = and i32 %30, 65535
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds [65536 x i32], ptr @countbits16, i64 0, i64 %32
  %34 = load i32, ptr %33, align 4, !tbaa !7
  %35 = lshr i32 %30, 16
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds [65536 x i32], ptr @countbits16, i64 0, i64 %36
  %38 = load i32, ptr %37, align 4, !tbaa !7
  %39 = add i32 %34, %26
  %40 = add i32 %39, %38
  %41 = icmp eq i64 %27, %21
  br i1 %41, label %22, label %24, !llvm.loop !66

42:                                               ; preds = %42, %22
  %43 = phi i64 [ %46, %42 ], [ 0, %22 ]
  %44 = mul nuw nsw i64 %43, 40
  %45 = getelementptr i8, ptr @stat_nth_try, i64 %44
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %45, i8 0, i64 24, i1 false), !tbaa !7
  %46 = add nuw nsw i64 %43, 1
  %47 = icmp eq i64 %46, 40
  br i1 %47, label %48, label %42, !llvm.loop !67

48:                                               ; preds = %42
  %49 = xor i32 %17, 1
  %50 = zext i32 %17 to i64
  %51 = getelementptr inbounds [2 x %struct.Basic_Info], ptr @g_info_totals, i64 0, i64 %50
  %52 = load i32, ptr %51, align 4, !tbaa !25
  %53 = zext i32 %49 to i64
  %54 = getelementptr inbounds [2 x %struct.Basic_Info], ptr @g_info_totals, i64 0, i64 %53, i32 1
  %55 = load i32, ptr %54, align 4, !tbaa !23
  %56 = icmp sgt i32 %52, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %48
  store i32 -1, ptr %1, align 4, !tbaa !7
  store i32 -1, ptr %2, align 4, !tbaa !7
  store i64 0, ptr %3, align 8, !tbaa !29
  br label %399

58:                                               ; preds = %48
  %59 = getelementptr inbounds [2 x %struct.Basic_Info], ptr @g_info_totals, i64 0, i64 %53
  %60 = load i32, ptr %59, align 4, !tbaa !25
  %61 = getelementptr inbounds [2 x %struct.Basic_Info], ptr @g_info_totals, i64 0, i64 %50, i32 1
  %62 = load i32, ptr %61, align 4, !tbaa !23
  %63 = icmp slt i32 %60, %62
  br i1 %63, label %65, label %64

64:                                               ; preds = %58
  store i32 -1, ptr %1, align 4, !tbaa !7
  store i32 -1, ptr %2, align 4, !tbaa !7
  store i64 0, ptr %3, align 8, !tbaa !29
  br label %399

65:                                               ; preds = %58
  %66 = call i32 @move_generator(ptr noundef nonnull %5, i32 noundef %17) #33
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %65
  call void (ptr, i32, i32, ptr, ...) @_fatal_error_aux(ptr noundef nonnull @.str.26, i32 noundef 160, i32 noundef 1, ptr noundef nonnull @.str.2.30) #33
  br label %69

69:                                               ; preds = %68, %65
  call void @score_and_get_first(ptr noundef nonnull %5, i32 noundef %66, i32 noundef %17, i64 4294967295, i32 undef) #33
  call void @sort_moves(ptr noundef nonnull %5, i32 noundef 1, i32 noundef %66) #33
  br label %70

70:                                               ; preds = %390, %69
  %71 = phi i32 [ 1, %69 ], [ %395, %390 ]
  %72 = phi i32 [ 0, %69 ], [ %340, %390 ]
  %73 = phi i32 [ %66, %69 ], [ %342, %390 ]
  store i64 0, ptr @g_num_nodes, align 8, !tbaa !29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) @stat_cutoffs, i8 0, i64 160, i1 false), !tbaa !7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) @stat_nodes, i8 0, i64 160, i1 false), !tbaa !7
  br label %74

74:                                               ; preds = %74, %70
  %75 = phi i64 [ 0, %70 ], [ %78, %74 ]
  %76 = mul nuw nsw i64 %75, 40
  %77 = getelementptr i8, ptr @stat_nth_try, i64 %76
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %77, i8 0, i64 24, i1 false), !tbaa !7
  %78 = add nuw nsw i64 %75, 1
  %79 = icmp eq i64 %78, 40
  br i1 %79, label %80, label %74, !llvm.loop !67

80:                                               ; preds = %74
  store i32 %71, ptr @starting_depth, align 4, !tbaa !7
  %81 = icmp sgt i32 %73, 0
  br i1 %81, label %82, label %302

82:                                               ; preds = %80
  %83 = add nsw i32 %71, -1
  %84 = zext i32 %73 to i64
  br label %85

85:                                               ; preds = %295, %82
  %86 = phi i64 [ 0, %82 ], [ %297, %295 ]
  %87 = phi i32 [ -5000, %82 ], [ %296, %295 ]
  call void (...) @set_position_values() #33
  %88 = trunc i64 %86 to i32
  store i32 %88, ptr @g_move_number, align 16, !tbaa !7
  %89 = load i32, ptr @g_empty_squares, align 4, !tbaa !7
  %90 = add nsw i32 %89, -2
  store i32 %90, ptr @g_empty_squares, align 4, !tbaa !7
  %91 = getelementptr inbounds [256 x %struct.Basic_Info], ptr %5, i64 0, i64 %86
  %92 = load i64, ptr %91, align 4
  %93 = getelementptr inbounds i8, ptr %91, i64 8
  %94 = load i32, ptr %93, align 4
  call void @toggle_move(i64 %92, i32 %94, i32 noundef %17) #33
  %95 = load i32, ptr %91, align 4, !tbaa !25
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds [256 x %struct.Basic_Info], ptr %5, i64 0, i64 %86, i32 1
  %98 = load i32, ptr %97, align 4, !tbaa !23
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo.9]]], ptr @g_keyinfo, i64 0, i64 %50, i64 %96, i64 %99
  %101 = load i32, ptr %100, align 16, !tbaa !68
  %102 = and i32 %101, 31
  %103 = shl nuw i32 1, %102
  %104 = sdiv i32 %101, 32
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds [4 x i32], ptr @g_norm_hashkey, i64 0, i64 %105
  %107 = load i32, ptr %106, align 4, !tbaa !7
  %108 = xor i32 %103, %107
  store i32 %108, ptr %106, align 4, !tbaa !7
  %109 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo.9]]], ptr @g_keyinfo, i64 0, i64 %50, i64 %96, i64 %99, i32 0, i32 1
  %110 = load i32, ptr %109, align 4, !tbaa !70
  %111 = and i32 %110, 31
  %112 = shl nuw i32 1, %111
  %113 = sdiv i32 %110, 32
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds [4 x i32], ptr @g_norm_hashkey, i64 0, i64 %114
  %116 = load i32, ptr %115, align 4, !tbaa !7
  %117 = xor i32 %112, %116
  store i32 %117, ptr %115, align 4, !tbaa !7
  %118 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo.9]]], ptr @g_keyinfo, i64 0, i64 %50, i64 %96, i64 %99, i32 0, i32 2
  %119 = load i32, ptr %118, align 8, !tbaa !71
  %120 = load i32, ptr getelementptr inbounds (%struct.Hash_Key, ptr @g_norm_hashkey, i64 0, i32 1), align 4, !tbaa !16
  %121 = xor i32 %120, %119
  store i32 %121, ptr getelementptr inbounds (%struct.Hash_Key, ptr @g_norm_hashkey, i64 0, i32 1), align 4, !tbaa !16
  %122 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo.9]]], ptr @g_keyinfo, i64 0, i64 %50, i64 %96, i64 %99, i32 1
  %123 = load i32, ptr %122, align 4, !tbaa !72
  %124 = and i32 %123, 31
  %125 = shl nuw i32 1, %124
  %126 = sdiv i32 %123, 32
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds [4 x i32], ptr @g_flipV_hashkey, i64 0, i64 %127
  %129 = load i32, ptr %128, align 4, !tbaa !7
  %130 = xor i32 %125, %129
  store i32 %130, ptr %128, align 4, !tbaa !7
  %131 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo.9]]], ptr @g_keyinfo, i64 0, i64 %50, i64 %96, i64 %99, i32 1, i32 1
  %132 = load i32, ptr %131, align 16, !tbaa !73
  %133 = and i32 %132, 31
  %134 = shl nuw i32 1, %133
  %135 = sdiv i32 %132, 32
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds [4 x i32], ptr @g_flipV_hashkey, i64 0, i64 %136
  %138 = load i32, ptr %137, align 4, !tbaa !7
  %139 = xor i32 %134, %138
  store i32 %139, ptr %137, align 4, !tbaa !7
  %140 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo.9]]], ptr @g_keyinfo, i64 0, i64 %50, i64 %96, i64 %99, i32 1, i32 2
  %141 = load i32, ptr %140, align 4, !tbaa !74
  %142 = load i32, ptr getelementptr inbounds (%struct.Hash_Key, ptr @g_flipV_hashkey, i64 0, i32 1), align 4, !tbaa !16
  %143 = xor i32 %142, %141
  store i32 %143, ptr getelementptr inbounds (%struct.Hash_Key, ptr @g_flipV_hashkey, i64 0, i32 1), align 4, !tbaa !16
  %144 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo.9]]], ptr @g_keyinfo, i64 0, i64 %50, i64 %96, i64 %99, i32 2
  %145 = load i32, ptr %144, align 8, !tbaa !75
  %146 = and i32 %145, 31
  %147 = shl nuw i32 1, %146
  %148 = sdiv i32 %145, 32
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds [4 x i32], ptr @g_flipH_hashkey, i64 0, i64 %149
  %151 = load i32, ptr %150, align 4, !tbaa !7
  %152 = xor i32 %147, %151
  store i32 %152, ptr %150, align 4, !tbaa !7
  %153 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo.9]]], ptr @g_keyinfo, i64 0, i64 %50, i64 %96, i64 %99, i32 2, i32 1
  %154 = load i32, ptr %153, align 4, !tbaa !76
  %155 = and i32 %154, 31
  %156 = shl nuw i32 1, %155
  %157 = sdiv i32 %154, 32
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds [4 x i32], ptr @g_flipH_hashkey, i64 0, i64 %158
  %160 = load i32, ptr %159, align 4, !tbaa !7
  %161 = xor i32 %156, %160
  store i32 %161, ptr %159, align 4, !tbaa !7
  %162 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo.9]]], ptr @g_keyinfo, i64 0, i64 %50, i64 %96, i64 %99, i32 2, i32 2
  %163 = load i32, ptr %162, align 16, !tbaa !77
  %164 = load i32, ptr getelementptr inbounds (%struct.Hash_Key, ptr @g_flipH_hashkey, i64 0, i32 1), align 4, !tbaa !16
  %165 = xor i32 %164, %163
  store i32 %165, ptr getelementptr inbounds (%struct.Hash_Key, ptr @g_flipH_hashkey, i64 0, i32 1), align 4, !tbaa !16
  %166 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo.9]]], ptr @g_keyinfo, i64 0, i64 %50, i64 %96, i64 %99, i32 3
  %167 = load i32, ptr %166, align 4, !tbaa !78
  %168 = and i32 %167, 31
  %169 = shl nuw i32 1, %168
  %170 = sdiv i32 %167, 32
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds [4 x i32], ptr @g_flipVH_hashkey, i64 0, i64 %171
  %173 = load i32, ptr %172, align 4, !tbaa !7
  %174 = xor i32 %169, %173
  store i32 %174, ptr %172, align 4, !tbaa !7
  %175 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo.9]]], ptr @g_keyinfo, i64 0, i64 %50, i64 %96, i64 %99, i32 3, i32 1
  %176 = load i32, ptr %175, align 8, !tbaa !79
  %177 = and i32 %176, 31
  %178 = shl nuw i32 1, %177
  %179 = sdiv i32 %176, 32
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds [4 x i32], ptr @g_flipVH_hashkey, i64 0, i64 %180
  %182 = load i32, ptr %181, align 4, !tbaa !7
  %183 = xor i32 %178, %182
  store i32 %183, ptr %181, align 4, !tbaa !7
  %184 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo.9]]], ptr @g_keyinfo, i64 0, i64 %50, i64 %96, i64 %99, i32 3, i32 2
  %185 = load i32, ptr %184, align 4, !tbaa !80
  %186 = load i32, ptr getelementptr inbounds (%struct.Hash_Key, ptr @g_flipVH_hashkey, i64 0, i32 1), align 4, !tbaa !16
  %187 = xor i32 %186, %185
  store i32 %187, ptr getelementptr inbounds (%struct.Hash_Key, ptr @g_flipVH_hashkey, i64 0, i32 1), align 4, !tbaa !16
  call void (...) @check_hash_code_sanity() #33
  %188 = sub nsw i32 0, %87
  %189 = call fastcc i32 @negamax(i32 noundef %83, i32 noundef %49, i32 noundef -5000, i32 noundef %188) #32
  %190 = sub nsw i32 0, %189
  %191 = load i32, ptr @g_empty_squares, align 4, !tbaa !7
  %192 = add nsw i32 %191, 2
  store i32 %192, ptr @g_empty_squares, align 4, !tbaa !7
  %193 = load i64, ptr %91, align 4
  %194 = load i32, ptr %93, align 4
  call void @toggle_move(i64 %193, i32 %194, i32 noundef %17) #33
  %195 = load i32, ptr %91, align 4, !tbaa !25
  %196 = sext i32 %195 to i64
  %197 = load i32, ptr %97, align 4, !tbaa !23
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo.9]]], ptr @g_keyinfo, i64 0, i64 %50, i64 %196, i64 %198
  %200 = load i32, ptr %199, align 16, !tbaa !68
  %201 = and i32 %200, 31
  %202 = shl nuw i32 1, %201
  %203 = sdiv i32 %200, 32
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds [4 x i32], ptr @g_norm_hashkey, i64 0, i64 %204
  %206 = load i32, ptr %205, align 4, !tbaa !7
  %207 = xor i32 %202, %206
  store i32 %207, ptr %205, align 4, !tbaa !7
  %208 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo.9]]], ptr @g_keyinfo, i64 0, i64 %50, i64 %196, i64 %198, i32 0, i32 1
  %209 = load i32, ptr %208, align 4, !tbaa !70
  %210 = and i32 %209, 31
  %211 = shl nuw i32 1, %210
  %212 = sdiv i32 %209, 32
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds [4 x i32], ptr @g_norm_hashkey, i64 0, i64 %213
  %215 = load i32, ptr %214, align 4, !tbaa !7
  %216 = xor i32 %211, %215
  store i32 %216, ptr %214, align 4, !tbaa !7
  %217 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo.9]]], ptr @g_keyinfo, i64 0, i64 %50, i64 %196, i64 %198, i32 0, i32 2
  %218 = load i32, ptr %217, align 8, !tbaa !71
  %219 = load i32, ptr getelementptr inbounds (%struct.Hash_Key, ptr @g_norm_hashkey, i64 0, i32 1), align 4, !tbaa !16
  %220 = xor i32 %219, %218
  store i32 %220, ptr getelementptr inbounds (%struct.Hash_Key, ptr @g_norm_hashkey, i64 0, i32 1), align 4, !tbaa !16
  %221 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo.9]]], ptr @g_keyinfo, i64 0, i64 %50, i64 %196, i64 %198, i32 1
  %222 = load i32, ptr %221, align 4, !tbaa !72
  %223 = and i32 %222, 31
  %224 = shl nuw i32 1, %223
  %225 = sdiv i32 %222, 32
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds [4 x i32], ptr @g_flipV_hashkey, i64 0, i64 %226
  %228 = load i32, ptr %227, align 4, !tbaa !7
  %229 = xor i32 %224, %228
  store i32 %229, ptr %227, align 4, !tbaa !7
  %230 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo.9]]], ptr @g_keyinfo, i64 0, i64 %50, i64 %196, i64 %198, i32 1, i32 1
  %231 = load i32, ptr %230, align 16, !tbaa !73
  %232 = and i32 %231, 31
  %233 = shl nuw i32 1, %232
  %234 = sdiv i32 %231, 32
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds [4 x i32], ptr @g_flipV_hashkey, i64 0, i64 %235
  %237 = load i32, ptr %236, align 4, !tbaa !7
  %238 = xor i32 %233, %237
  store i32 %238, ptr %236, align 4, !tbaa !7
  %239 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo.9]]], ptr @g_keyinfo, i64 0, i64 %50, i64 %196, i64 %198, i32 1, i32 2
  %240 = load i32, ptr %239, align 4, !tbaa !74
  %241 = load i32, ptr getelementptr inbounds (%struct.Hash_Key, ptr @g_flipV_hashkey, i64 0, i32 1), align 4, !tbaa !16
  %242 = xor i32 %241, %240
  store i32 %242, ptr getelementptr inbounds (%struct.Hash_Key, ptr @g_flipV_hashkey, i64 0, i32 1), align 4, !tbaa !16
  %243 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo.9]]], ptr @g_keyinfo, i64 0, i64 %50, i64 %196, i64 %198, i32 2
  %244 = load i32, ptr %243, align 8, !tbaa !75
  %245 = and i32 %244, 31
  %246 = shl nuw i32 1, %245
  %247 = sdiv i32 %244, 32
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds [4 x i32], ptr @g_flipH_hashkey, i64 0, i64 %248
  %250 = load i32, ptr %249, align 4, !tbaa !7
  %251 = xor i32 %246, %250
  store i32 %251, ptr %249, align 4, !tbaa !7
  %252 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo.9]]], ptr @g_keyinfo, i64 0, i64 %50, i64 %196, i64 %198, i32 2, i32 1
  %253 = load i32, ptr %252, align 4, !tbaa !76
  %254 = and i32 %253, 31
  %255 = shl nuw i32 1, %254
  %256 = sdiv i32 %253, 32
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds [4 x i32], ptr @g_flipH_hashkey, i64 0, i64 %257
  %259 = load i32, ptr %258, align 4, !tbaa !7
  %260 = xor i32 %255, %259
  store i32 %260, ptr %258, align 4, !tbaa !7
  %261 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo.9]]], ptr @g_keyinfo, i64 0, i64 %50, i64 %196, i64 %198, i32 2, i32 2
  %262 = load i32, ptr %261, align 16, !tbaa !77
  %263 = load i32, ptr getelementptr inbounds (%struct.Hash_Key, ptr @g_flipH_hashkey, i64 0, i32 1), align 4, !tbaa !16
  %264 = xor i32 %263, %262
  store i32 %264, ptr getelementptr inbounds (%struct.Hash_Key, ptr @g_flipH_hashkey, i64 0, i32 1), align 4, !tbaa !16
  %265 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo.9]]], ptr @g_keyinfo, i64 0, i64 %50, i64 %196, i64 %198, i32 3
  %266 = load i32, ptr %265, align 4, !tbaa !78
  %267 = and i32 %266, 31
  %268 = shl nuw i32 1, %267
  %269 = sdiv i32 %266, 32
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds [4 x i32], ptr @g_flipVH_hashkey, i64 0, i64 %270
  %272 = load i32, ptr %271, align 4, !tbaa !7
  %273 = xor i32 %268, %272
  store i32 %273, ptr %271, align 4, !tbaa !7
  %274 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo.9]]], ptr @g_keyinfo, i64 0, i64 %50, i64 %196, i64 %198, i32 3, i32 1
  %275 = load i32, ptr %274, align 8, !tbaa !79
  %276 = and i32 %275, 31
  %277 = shl nuw i32 1, %276
  %278 = sdiv i32 %275, 32
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds [4 x i32], ptr @g_flipVH_hashkey, i64 0, i64 %279
  %281 = load i32, ptr %280, align 4, !tbaa !7
  %282 = xor i32 %277, %281
  store i32 %282, ptr %280, align 4, !tbaa !7
  %283 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo.9]]], ptr @g_keyinfo, i64 0, i64 %50, i64 %196, i64 %198, i32 3, i32 2
  %284 = load i32, ptr %283, align 4, !tbaa !80
  %285 = load i32, ptr getelementptr inbounds (%struct.Hash_Key, ptr @g_flipVH_hashkey, i64 0, i32 1), align 4, !tbaa !16
  %286 = xor i32 %285, %284
  store i32 %286, ptr getelementptr inbounds (%struct.Hash_Key, ptr @g_flipVH_hashkey, i64 0, i32 1), align 4, !tbaa !16
  call void (...) @check_hash_code_sanity() #33
  %287 = load i32, ptr %91, align 4, !tbaa !25
  %288 = load i32, ptr %97, align 4, !tbaa !23
  %289 = load i64, ptr @g_num_nodes, align 8, !tbaa !29
  %290 = call ptr @u64bit_to_string(i64 noundef %289) #33
  %291 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3.43, i32 noundef %287, i32 noundef %288, i32 noundef %190, ptr noundef %290) #32
  %292 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i32 noundef %87, i32 noundef 5000) #32
  %293 = getelementptr inbounds [256 x %struct.Basic_Info], ptr %5, i64 0, i64 %86, i32 2
  store i32 %190, ptr %293, align 4, !tbaa !52
  %294 = icmp slt i32 %189, -4999
  br i1 %294, label %299, label %295

295:                                              ; preds = %85
  %296 = call i32 @llvm.smax.i32(i32 %87, i32 %190)
  %297 = add nuw nsw i64 %86, 1
  %298 = icmp eq i64 %297, %84
  br i1 %298, label %299, label %85, !llvm.loop !81

299:                                              ; preds = %295, %85
  %.lcssa1 = phi i32 [ %189, %295 ], [ %189, %85 ]
  %.lcssa = phi i32 [ %190, %295 ], [ %190, %85 ]
  %300 = phi i32 [ %73, %295 ], [ %88, %85 ]
  %301 = icmp slt i32 %.lcssa1, -4999
  br i1 %301, label %307, label %304

302:                                              ; preds = %80
  %303 = icmp sgt i32 %72, 4999
  br i1 %303, label %307, label %339

304:                                              ; preds = %299
  br i1 %81, label %305, label %339

305:                                              ; preds = %304
  %306 = zext i32 %73 to i64
  br label %319

307:                                              ; preds = %302, %299
  %308 = phi i32 [ %72, %302 ], [ %.lcssa, %299 ]
  %309 = phi i32 [ 0, %302 ], [ %300, %299 ]
  %310 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5.44, i32 noundef %308) #32
  %311 = zext i32 %309 to i64
  %312 = getelementptr inbounds [256 x %struct.Basic_Info], ptr %5, i64 0, i64 %311
  %313 = load i32, ptr %312, align 4, !tbaa !25
  %314 = getelementptr inbounds [256 x %struct.Basic_Info], ptr %5, i64 0, i64 %311, i32 1
  %315 = select i1 %12, ptr %2, ptr %1
  %316 = select i1 %12, ptr %1, ptr %2
  store i32 %313, ptr %315, align 4, !tbaa !7
  %317 = load i32, ptr %314, align 4, !tbaa !23
  store i32 %317, ptr %316, align 4, !tbaa !7
  %318 = load i64, ptr @g_num_nodes, align 8, !tbaa !29
  store i64 %318, ptr %3, align 8, !tbaa !29
  call fastcc void @print_stats() #32
  br label %399

319:                                              ; preds = %335, %305
  %320 = phi i64 [ 0, %305 ], [ %337, %335 ]
  %321 = phi i32 [ 0, %305 ], [ %336, %335 ]
  %322 = getelementptr inbounds [256 x %struct.Basic_Info], ptr %5, i64 0, i64 %320
  %323 = getelementptr inbounds [256 x %struct.Basic_Info], ptr %5, i64 0, i64 %320, i32 2
  %324 = load i32, ptr %323, align 4, !tbaa !52
  %325 = icmp slt i32 %324, -4999
  br i1 %325, label %326, label %328

326:                                              ; preds = %319
  %327 = add nsw i32 %321, 1
  br label %335

328:                                              ; preds = %319
  %329 = icmp sgt i32 %321, 0
  br i1 %329, label %330, label %335

330:                                              ; preds = %328
  %331 = trunc i64 %320 to i32
  %332 = sub nsw i32 %331, %321
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds [256 x %struct.Basic_Info], ptr %5, i64 0, i64 %333
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %334, ptr noundef nonnull align 4 dereferenceable(12) %322, i64 12, i1 false), !tbaa.struct !58
  br label %335

335:                                              ; preds = %330, %328, %326
  %336 = phi i32 [ %327, %326 ], [ %321, %330 ], [ %321, %328 ]
  %337 = add nuw nsw i64 %320, 1
  %338 = icmp eq i64 %337, %306
  br i1 %338, label %339, label %319, !llvm.loop !82

339:                                              ; preds = %335, %304, %302
  %340 = phi i32 [ %.lcssa, %304 ], [ %72, %302 ], [ %.lcssa, %335 ]
  %341 = phi i32 [ 0, %304 ], [ 0, %302 ], [ %336, %335 ]
  %342 = sub i32 %73, %341
  call fastcc void @print_stats() #32
  %343 = icmp eq i32 %342, 0
  br i1 %343, label %397, label %344

344:                                              ; preds = %339
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6)
  %345 = icmp sgt i32 %342, 0
  br i1 %345, label %346, label %390

346:                                              ; preds = %344
  %347 = zext i32 %342 to i64
  %348 = zext i32 %342 to i64
  br label %349

349:                                              ; preds = %387, %346
  %350 = phi i64 [ 0, %346 ], [ %353, %387 ]
  %351 = phi i64 [ 1, %346 ], [ %388, %387 ]
  %352 = getelementptr inbounds [256 x %struct.Basic_Info], ptr %5, i64 0, i64 %350
  %353 = add nuw nsw i64 %350, 1
  %354 = icmp ult i64 %353, %347
  %355 = trunc i64 %350 to i32
  br i1 %354, label %356, label %372

356:                                              ; preds = %349
  %357 = getelementptr inbounds [256 x %struct.Basic_Info], ptr %5, i64 0, i64 %350, i32 2
  %358 = load i32, ptr %357, align 4, !tbaa !52
  br label %359

359:                                              ; preds = %359, %356
  %360 = phi i64 [ %351, %356 ], [ %369, %359 ]
  %361 = phi i32 [ %355, %356 ], [ %368, %359 ]
  %362 = phi i32 [ %358, %356 ], [ %366, %359 ]
  %363 = getelementptr inbounds [256 x %struct.Basic_Info], ptr %5, i64 0, i64 %360, i32 2
  %364 = load i32, ptr %363, align 4, !tbaa !52
  %365 = icmp sgt i32 %364, %362
  %366 = call i32 @llvm.smax.i32(i32 %364, i32 %362)
  %367 = trunc i64 %360 to i32
  %368 = select i1 %365, i32 %367, i32 %361
  %369 = add nuw nsw i64 %360, 1
  %370 = trunc i64 %369 to i32
  %371 = icmp sgt i32 %342, %370
  br i1 %371, label %359, label %372, !llvm.loop !83

372:                                              ; preds = %359, %349
  %373 = phi i32 [ %355, %349 ], [ %368, %359 ]
  %374 = zext i32 %373 to i64
  %375 = icmp eq i64 %350, %374
  br i1 %375, label %387, label %376

376:                                              ; preds = %372
  %377 = sext i32 %373 to i64
  %378 = getelementptr inbounds [256 x %struct.Basic_Info], ptr %5, i64 0, i64 %377
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %6, ptr noundef nonnull align 4 dereferenceable(12) %378, i64 12, i1 false), !tbaa.struct !58
  br label %379

379:                                              ; preds = %379, %376
  %380 = phi i64 [ %377, %376 ], [ %382, %379 ]
  %381 = getelementptr inbounds [256 x %struct.Basic_Info], ptr %5, i64 0, i64 %380
  %382 = add nsw i64 %380, -1
  %383 = getelementptr inbounds [256 x %struct.Basic_Info], ptr %5, i64 0, i64 %382
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %381, ptr noundef nonnull align 4 dereferenceable(12) %383, i64 12, i1 false), !tbaa.struct !58
  %384 = and i64 %382, 4294967295
  %385 = icmp eq i64 %384, %350
  br i1 %385, label %386, label %379, !llvm.loop !84

386:                                              ; preds = %379
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %352, ptr noundef nonnull align 4 dereferenceable(12) %6, i64 12, i1 false), !tbaa.struct !58
  br label %387

387:                                              ; preds = %386, %372
  %388 = add nuw nsw i64 %351, 1
  %389 = icmp eq i64 %353, %348
  br i1 %389, label %390, label %349, !llvm.loop !85

390:                                              ; preds = %387, %344
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6)
  %391 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %340, i32 noundef %71) #32
  %392 = load i64, ptr @g_num_nodes, align 8, !tbaa !29
  %393 = trunc i64 %392 to i32
  %394 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8.45, i32 noundef %393) #32
  %395 = add nuw nsw i32 %71, 44
  %396 = icmp ult i32 %71, 6
  br i1 %396, label %70, label %397, !llvm.loop !86

397:                                              ; preds = %390, %339
  %.lcssa2 = phi i32 [ %340, %390 ], [ %340, %339 ]
  store i32 -1, ptr %1, align 4, !tbaa !7
  store i32 -1, ptr %2, align 4, !tbaa !7
  %398 = load i64, ptr @g_num_nodes, align 8, !tbaa !29
  store i64 %398, ptr %3, align 8, !tbaa !29
  br label %399

399:                                              ; preds = %397, %307, %64, %57
  %400 = phi i32 [ %.lcssa2, %397 ], [ %308, %307 ], [ -5000, %64 ], [ 5000, %57 ]
  call void @llvm.lifetime.end.p0(i64 3072, ptr nonnull %5) #31
  ret i32 %400
}

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare ptr @__ctype_toupper_loc() local_unnamed_addr #16

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32 noundef) local_unnamed_addr #17

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @negamax(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [256 x %struct.Basic_Info], align 16
  %8 = alloca %struct.Basic_Info, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.Basic_Info, align 8
  store i32 %2, ptr %5, align 4, !tbaa !7
  store i32 %3, ptr %6, align 4, !tbaa !7
  call void @llvm.lifetime.start.p0(i64 3072, ptr nonnull %7) #31
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #31
  %11 = and i32 %1, 1
  %12 = xor i32 %1, 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #31
  %13 = load i64, ptr @g_num_nodes, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #31
  %14 = add i64 %13, 1
  store i64 %14, ptr @g_num_nodes, align 8, !tbaa !29
  %15 = load i32, ptr @starting_depth, align 4, !tbaa !7
  %16 = sub nsw i32 %15, %0
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [40 x i32], ptr @stat_nodes, i64 0, i64 %17
  %19 = load i32, ptr %18, align 4, !tbaa !7
  %20 = add nsw i32 %19, 1
  store i32 %20, ptr %18, align 4, !tbaa !7
  %21 = icmp slt i32 %0, 1
  br i1 %21, label %22, label %30

22:                                               ; preds = %4
  %23 = tail call i32 @does_next_player_win(i32 noundef %11, i32 noundef 0) #33
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %348, label %25

25:                                               ; preds = %22
  %26 = tail call i32 @does_who_just_moved_win(i32 noundef %12, i32 noundef 0) #33
  %27 = icmp sgt i32 %26, -1
  %28 = sub nsw i32 %23, %26
  %29 = select i1 %27, i32 -5000, i32 %28
  br label %348

30:                                               ; preds = %4
  %31 = zext i32 %11 to i64
  %32 = getelementptr inbounds [2 x %struct.Basic_Info], ptr @g_info_totals, i64 0, i64 %31
  %33 = load i32, ptr %32, align 4, !tbaa !25
  %34 = zext i32 %12 to i64
  %35 = getelementptr inbounds [2 x %struct.Basic_Info], ptr @g_info_totals, i64 0, i64 %34, i32 1
  %36 = load i32, ptr %35, align 4, !tbaa !23
  %37 = icmp sgt i32 %33, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %30
  %39 = load i32, ptr @cut1, align 4, !tbaa !7
  %40 = add nsw i32 %39, 1
  store i32 %40, ptr @cut1, align 4, !tbaa !7
  br label %348

41:                                               ; preds = %30
  %42 = getelementptr inbounds [2 x %struct.Basic_Info], ptr @g_info_totals, i64 0, i64 %34
  %43 = load i32, ptr %42, align 4, !tbaa !25
  %44 = getelementptr inbounds [2 x %struct.Basic_Info], ptr @g_info_totals, i64 0, i64 %31, i32 1
  %45 = load i32, ptr %44, align 4, !tbaa !23
  %46 = icmp slt i32 %43, %45
  br i1 %46, label %50, label %47

47:                                               ; preds = %41
  %48 = load i32, ptr @cut2, align 4, !tbaa !7
  %49 = add nsw i32 %48, 1
  store i32 %49, ptr @cut2, align 4, !tbaa !7
  br label %348

50:                                               ; preds = %41
  store i32 -1, ptr %10, align 8, !tbaa !25
  %51 = call i32 @hashlookup(ptr noundef nonnull %9, ptr noundef nonnull %5, ptr noundef nonnull %6, i32 noundef %0, ptr noundef nonnull %10, i32 noundef %11) #33
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %50
  %54 = load i32, ptr %9, align 4, !tbaa !7
  br label %348

55:                                               ; preds = %50
  store i32 -1, ptr %10, align 8, !tbaa !25
  %56 = call i32 @does_next_player_win(i32 noundef %11, i32 noundef 0) #33
  %57 = icmp sgt i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  %59 = load i32, ptr @cut3, align 4, !tbaa !7
  %60 = add nsw i32 %59, 1
  store i32 %60, ptr @cut3, align 4, !tbaa !7
  br label %348

61:                                               ; preds = %55
  %62 = call i32 @does_who_just_moved_win(i32 noundef %12, i32 noundef 0) #33
  %63 = icmp sgt i32 %62, -1
  br i1 %63, label %64, label %67

64:                                               ; preds = %61
  %65 = load i32, ptr @cut4, align 4, !tbaa !7
  %66 = add nsw i32 %65, 1
  store i32 %66, ptr @cut4, align 4, !tbaa !7
  br label %348

67:                                               ; preds = %61
  %68 = call i32 @move_generator_stage1(ptr noundef nonnull %7, i32 noundef %11) #33
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %74, label %70

70:                                               ; preds = %67
  %71 = call i32 @move_generator_stage2(ptr noundef nonnull %7, i32 noundef 0, i32 noundef %11) #33
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %70
  call void (ptr, i32, i32, ptr, ...) @_fatal_error_aux(ptr noundef nonnull @.str.26, i32 noundef 458, i32 noundef 1, ptr noundef nonnull @.str.13.50) #33
  br label %74

74:                                               ; preds = %73, %70, %67
  %75 = phi i32 [ 3, %70 ], [ 3, %73 ], [ 2, %67 ]
  %76 = phi i32 [ %71, %70 ], [ 0, %73 ], [ %68, %67 ]
  %77 = load i64, ptr %10, align 8
  %78 = getelementptr inbounds i8, ptr %10, i64 8
  %79 = load i32, ptr %78, align 8
  call void @score_and_get_first(ptr noundef nonnull %7, i32 noundef %76, i32 noundef %11, i64 %77, i32 %79) #33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %8, ptr noundef nonnull align 16 dereferenceable(12) %7, i64 12, i1 false), !tbaa.struct !58
  %80 = add nsw i32 %0, -1
  %81 = xor i32 %11, 1
  br label %82

82:                                               ; preds = %334, %74
  %83 = phi i32 [ 1, %74 ], [ %90, %334 ]
  %84 = phi i32 [ 0, %74 ], [ %337, %334 ]
  %85 = phi i32 [ 0, %74 ], [ %92, %334 ]
  switch i32 %85, label %87 [
    i32 0, label %89
    i32 1, label %86
  ]

86:                                               ; preds = %82
  call void @sort_moves(ptr noundef nonnull %7, i32 noundef 1, i32 noundef %76) #33
  br label %89

87:                                               ; preds = %82
  %88 = call i32 @move_generator_stage2(ptr noundef nonnull %7, i32 noundef %83, i32 noundef %11) #33
  br label %89

89:                                               ; preds = %87, %86, %82
  %90 = phi i32 [ %88, %87 ], [ %83, %82 ], [ %76, %86 ]
  %91 = phi i1 [ false, %87 ], [ true, %82 ], [ %69, %86 ]
  %92 = phi i32 [ 3, %87 ], [ 1, %82 ], [ %75, %86 ]
  %93 = icmp slt i32 %84, %90
  br i1 %93, label %97, label %94

94:                                               ; preds = %89
  %95 = load i32, ptr %9, align 4, !tbaa !7
  %96 = load i32, ptr %6, align 4, !tbaa !7
  br label %334

97:                                               ; preds = %89
  %98 = sext i32 %84 to i64
  br label %99

99:                                               ; preds = %330, %97
  %100 = phi i64 [ %98, %97 ], [ %331, %330 ]
  %101 = load i32, ptr @starting_depth, align 4, !tbaa !7
  %102 = sub nsw i32 %101, %0
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds [128 x i32], ptr @g_move_number, i64 0, i64 %103
  %105 = trunc i64 %100 to i32
  store i32 %105, ptr %104, align 4, !tbaa !7
  %106 = load i32, ptr @g_empty_squares, align 4, !tbaa !7
  %107 = add nsw i32 %106, -2
  store i32 %107, ptr @g_empty_squares, align 4, !tbaa !7
  %108 = getelementptr inbounds [256 x %struct.Basic_Info], ptr %7, i64 0, i64 %100
  %109 = load i64, ptr %108, align 4
  %110 = getelementptr inbounds i8, ptr %108, i64 8
  %111 = load i32, ptr %110, align 4
  call void @toggle_move(i64 %109, i32 %111, i32 noundef %11) #33
  %112 = load i32, ptr %108, align 4, !tbaa !25
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds [256 x %struct.Basic_Info], ptr %7, i64 0, i64 %100, i32 1
  %115 = load i32, ptr %114, align 4, !tbaa !23
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo.9]]], ptr @g_keyinfo, i64 0, i64 %31, i64 %113, i64 %116
  %118 = load i32, ptr %117, align 16, !tbaa !68
  %119 = and i32 %118, 31
  %120 = shl nuw i32 1, %119
  %121 = sdiv i32 %118, 32
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds [4 x i32], ptr @g_norm_hashkey, i64 0, i64 %122
  %124 = load i32, ptr %123, align 4, !tbaa !7
  %125 = xor i32 %120, %124
  store i32 %125, ptr %123, align 4, !tbaa !7
  %126 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo.9]]], ptr @g_keyinfo, i64 0, i64 %31, i64 %113, i64 %116, i32 0, i32 1
  %127 = load i32, ptr %126, align 4, !tbaa !70
  %128 = and i32 %127, 31
  %129 = shl nuw i32 1, %128
  %130 = sdiv i32 %127, 32
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds [4 x i32], ptr @g_norm_hashkey, i64 0, i64 %131
  %133 = load i32, ptr %132, align 4, !tbaa !7
  %134 = xor i32 %129, %133
  store i32 %134, ptr %132, align 4, !tbaa !7
  %135 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo.9]]], ptr @g_keyinfo, i64 0, i64 %31, i64 %113, i64 %116, i32 0, i32 2
  %136 = load i32, ptr %135, align 8, !tbaa !71
  %137 = load i32, ptr getelementptr inbounds (%struct.Hash_Key, ptr @g_norm_hashkey, i64 0, i32 1), align 4, !tbaa !16
  %138 = xor i32 %137, %136
  store i32 %138, ptr getelementptr inbounds (%struct.Hash_Key, ptr @g_norm_hashkey, i64 0, i32 1), align 4, !tbaa !16
  %139 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo.9]]], ptr @g_keyinfo, i64 0, i64 %31, i64 %113, i64 %116, i32 1
  %140 = load i32, ptr %139, align 4, !tbaa !72
  %141 = and i32 %140, 31
  %142 = shl nuw i32 1, %141
  %143 = sdiv i32 %140, 32
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds [4 x i32], ptr @g_flipV_hashkey, i64 0, i64 %144
  %146 = load i32, ptr %145, align 4, !tbaa !7
  %147 = xor i32 %142, %146
  store i32 %147, ptr %145, align 4, !tbaa !7
  %148 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo.9]]], ptr @g_keyinfo, i64 0, i64 %31, i64 %113, i64 %116, i32 1, i32 1
  %149 = load i32, ptr %148, align 16, !tbaa !73
  %150 = and i32 %149, 31
  %151 = shl nuw i32 1, %150
  %152 = sdiv i32 %149, 32
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds [4 x i32], ptr @g_flipV_hashkey, i64 0, i64 %153
  %155 = load i32, ptr %154, align 4, !tbaa !7
  %156 = xor i32 %151, %155
  store i32 %156, ptr %154, align 4, !tbaa !7
  %157 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo.9]]], ptr @g_keyinfo, i64 0, i64 %31, i64 %113, i64 %116, i32 1, i32 2
  %158 = load i32, ptr %157, align 4, !tbaa !74
  %159 = load i32, ptr getelementptr inbounds (%struct.Hash_Key, ptr @g_flipV_hashkey, i64 0, i32 1), align 4, !tbaa !16
  %160 = xor i32 %159, %158
  store i32 %160, ptr getelementptr inbounds (%struct.Hash_Key, ptr @g_flipV_hashkey, i64 0, i32 1), align 4, !tbaa !16
  %161 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo.9]]], ptr @g_keyinfo, i64 0, i64 %31, i64 %113, i64 %116, i32 2
  %162 = load i32, ptr %161, align 8, !tbaa !75
  %163 = and i32 %162, 31
  %164 = shl nuw i32 1, %163
  %165 = sdiv i32 %162, 32
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds [4 x i32], ptr @g_flipH_hashkey, i64 0, i64 %166
  %168 = load i32, ptr %167, align 4, !tbaa !7
  %169 = xor i32 %164, %168
  store i32 %169, ptr %167, align 4, !tbaa !7
  %170 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo.9]]], ptr @g_keyinfo, i64 0, i64 %31, i64 %113, i64 %116, i32 2, i32 1
  %171 = load i32, ptr %170, align 4, !tbaa !76
  %172 = and i32 %171, 31
  %173 = shl nuw i32 1, %172
  %174 = sdiv i32 %171, 32
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds [4 x i32], ptr @g_flipH_hashkey, i64 0, i64 %175
  %177 = load i32, ptr %176, align 4, !tbaa !7
  %178 = xor i32 %173, %177
  store i32 %178, ptr %176, align 4, !tbaa !7
  %179 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo.9]]], ptr @g_keyinfo, i64 0, i64 %31, i64 %113, i64 %116, i32 2, i32 2
  %180 = load i32, ptr %179, align 16, !tbaa !77
  %181 = load i32, ptr getelementptr inbounds (%struct.Hash_Key, ptr @g_flipH_hashkey, i64 0, i32 1), align 4, !tbaa !16
  %182 = xor i32 %181, %180
  store i32 %182, ptr getelementptr inbounds (%struct.Hash_Key, ptr @g_flipH_hashkey, i64 0, i32 1), align 4, !tbaa !16
  %183 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo.9]]], ptr @g_keyinfo, i64 0, i64 %31, i64 %113, i64 %116, i32 3
  %184 = load i32, ptr %183, align 4, !tbaa !78
  %185 = and i32 %184, 31
  %186 = shl nuw i32 1, %185
  %187 = sdiv i32 %184, 32
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds [4 x i32], ptr @g_flipVH_hashkey, i64 0, i64 %188
  %190 = load i32, ptr %189, align 4, !tbaa !7
  %191 = xor i32 %186, %190
  store i32 %191, ptr %189, align 4, !tbaa !7
  %192 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo.9]]], ptr @g_keyinfo, i64 0, i64 %31, i64 %113, i64 %116, i32 3, i32 1
  %193 = load i32, ptr %192, align 8, !tbaa !79
  %194 = and i32 %193, 31
  %195 = shl nuw i32 1, %194
  %196 = sdiv i32 %193, 32
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds [4 x i32], ptr @g_flipVH_hashkey, i64 0, i64 %197
  %199 = load i32, ptr %198, align 4, !tbaa !7
  %200 = xor i32 %195, %199
  store i32 %200, ptr %198, align 4, !tbaa !7
  %201 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo.9]]], ptr @g_keyinfo, i64 0, i64 %31, i64 %113, i64 %116, i32 3, i32 2
  %202 = load i32, ptr %201, align 4, !tbaa !80
  %203 = load i32, ptr getelementptr inbounds (%struct.Hash_Key, ptr @g_flipVH_hashkey, i64 0, i32 1), align 4, !tbaa !16
  %204 = xor i32 %203, %202
  store i32 %204, ptr getelementptr inbounds (%struct.Hash_Key, ptr @g_flipVH_hashkey, i64 0, i32 1), align 4, !tbaa !16
  %205 = load i32, ptr %6, align 4, !tbaa !7
  %206 = sub nsw i32 0, %205
  %207 = load i32, ptr %5, align 4, !tbaa !7
  %208 = sub nsw i32 0, %207
  %209 = call fastcc i32 @negamax(i32 noundef %80, i32 noundef %81, i32 noundef %206, i32 noundef %208) #32
  %210 = sub nsw i32 0, %209
  store i32 %210, ptr %9, align 4, !tbaa !7
  %211 = load i32, ptr @g_empty_squares, align 4, !tbaa !7
  %212 = add nsw i32 %211, 2
  store i32 %212, ptr @g_empty_squares, align 4, !tbaa !7
  %213 = load i64, ptr %108, align 4
  %214 = load i32, ptr %110, align 4
  call void @toggle_move(i64 %213, i32 %214, i32 noundef %11) #33
  %215 = load i32, ptr %108, align 4, !tbaa !25
  %216 = sext i32 %215 to i64
  %217 = load i32, ptr %114, align 4, !tbaa !23
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo.9]]], ptr @g_keyinfo, i64 0, i64 %31, i64 %216, i64 %218
  %220 = load i32, ptr %219, align 16, !tbaa !68
  %221 = and i32 %220, 31
  %222 = shl nuw i32 1, %221
  %223 = sdiv i32 %220, 32
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds [4 x i32], ptr @g_norm_hashkey, i64 0, i64 %224
  %226 = load i32, ptr %225, align 4, !tbaa !7
  %227 = xor i32 %222, %226
  store i32 %227, ptr %225, align 4, !tbaa !7
  %228 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo.9]]], ptr @g_keyinfo, i64 0, i64 %31, i64 %216, i64 %218, i32 0, i32 1
  %229 = load i32, ptr %228, align 4, !tbaa !70
  %230 = and i32 %229, 31
  %231 = shl nuw i32 1, %230
  %232 = sdiv i32 %229, 32
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds [4 x i32], ptr @g_norm_hashkey, i64 0, i64 %233
  %235 = load i32, ptr %234, align 4, !tbaa !7
  %236 = xor i32 %231, %235
  store i32 %236, ptr %234, align 4, !tbaa !7
  %237 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo.9]]], ptr @g_keyinfo, i64 0, i64 %31, i64 %216, i64 %218, i32 0, i32 2
  %238 = load i32, ptr %237, align 8, !tbaa !71
  %239 = load i32, ptr getelementptr inbounds (%struct.Hash_Key, ptr @g_norm_hashkey, i64 0, i32 1), align 4, !tbaa !16
  %240 = xor i32 %239, %238
  store i32 %240, ptr getelementptr inbounds (%struct.Hash_Key, ptr @g_norm_hashkey, i64 0, i32 1), align 4, !tbaa !16
  %241 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo.9]]], ptr @g_keyinfo, i64 0, i64 %31, i64 %216, i64 %218, i32 1
  %242 = load i32, ptr %241, align 4, !tbaa !72
  %243 = and i32 %242, 31
  %244 = shl nuw i32 1, %243
  %245 = sdiv i32 %242, 32
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds [4 x i32], ptr @g_flipV_hashkey, i64 0, i64 %246
  %248 = load i32, ptr %247, align 4, !tbaa !7
  %249 = xor i32 %244, %248
  store i32 %249, ptr %247, align 4, !tbaa !7
  %250 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo.9]]], ptr @g_keyinfo, i64 0, i64 %31, i64 %216, i64 %218, i32 1, i32 1
  %251 = load i32, ptr %250, align 16, !tbaa !73
  %252 = and i32 %251, 31
  %253 = shl nuw i32 1, %252
  %254 = sdiv i32 %251, 32
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds [4 x i32], ptr @g_flipV_hashkey, i64 0, i64 %255
  %257 = load i32, ptr %256, align 4, !tbaa !7
  %258 = xor i32 %253, %257
  store i32 %258, ptr %256, align 4, !tbaa !7
  %259 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo.9]]], ptr @g_keyinfo, i64 0, i64 %31, i64 %216, i64 %218, i32 1, i32 2
  %260 = load i32, ptr %259, align 4, !tbaa !74
  %261 = load i32, ptr getelementptr inbounds (%struct.Hash_Key, ptr @g_flipV_hashkey, i64 0, i32 1), align 4, !tbaa !16
  %262 = xor i32 %261, %260
  store i32 %262, ptr getelementptr inbounds (%struct.Hash_Key, ptr @g_flipV_hashkey, i64 0, i32 1), align 4, !tbaa !16
  %263 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo.9]]], ptr @g_keyinfo, i64 0, i64 %31, i64 %216, i64 %218, i32 2
  %264 = load i32, ptr %263, align 8, !tbaa !75
  %265 = and i32 %264, 31
  %266 = shl nuw i32 1, %265
  %267 = sdiv i32 %264, 32
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds [4 x i32], ptr @g_flipH_hashkey, i64 0, i64 %268
  %270 = load i32, ptr %269, align 4, !tbaa !7
  %271 = xor i32 %266, %270
  store i32 %271, ptr %269, align 4, !tbaa !7
  %272 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo.9]]], ptr @g_keyinfo, i64 0, i64 %31, i64 %216, i64 %218, i32 2, i32 1
  %273 = load i32, ptr %272, align 4, !tbaa !76
  %274 = and i32 %273, 31
  %275 = shl nuw i32 1, %274
  %276 = sdiv i32 %273, 32
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds [4 x i32], ptr @g_flipH_hashkey, i64 0, i64 %277
  %279 = load i32, ptr %278, align 4, !tbaa !7
  %280 = xor i32 %275, %279
  store i32 %280, ptr %278, align 4, !tbaa !7
  %281 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo.9]]], ptr @g_keyinfo, i64 0, i64 %31, i64 %216, i64 %218, i32 2, i32 2
  %282 = load i32, ptr %281, align 16, !tbaa !77
  %283 = load i32, ptr getelementptr inbounds (%struct.Hash_Key, ptr @g_flipH_hashkey, i64 0, i32 1), align 4, !tbaa !16
  %284 = xor i32 %283, %282
  store i32 %284, ptr getelementptr inbounds (%struct.Hash_Key, ptr @g_flipH_hashkey, i64 0, i32 1), align 4, !tbaa !16
  %285 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo.9]]], ptr @g_keyinfo, i64 0, i64 %31, i64 %216, i64 %218, i32 3
  %286 = load i32, ptr %285, align 4, !tbaa !78
  %287 = and i32 %286, 31
  %288 = shl nuw i32 1, %287
  %289 = sdiv i32 %286, 32
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds [4 x i32], ptr @g_flipVH_hashkey, i64 0, i64 %290
  %292 = load i32, ptr %291, align 4, !tbaa !7
  %293 = xor i32 %288, %292
  store i32 %293, ptr %291, align 4, !tbaa !7
  %294 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo.9]]], ptr @g_keyinfo, i64 0, i64 %31, i64 %216, i64 %218, i32 3, i32 1
  %295 = load i32, ptr %294, align 8, !tbaa !79
  %296 = and i32 %295, 31
  %297 = shl nuw i32 1, %296
  %298 = sdiv i32 %295, 32
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds [4 x i32], ptr @g_flipVH_hashkey, i64 0, i64 %299
  %301 = load i32, ptr %300, align 4, !tbaa !7
  %302 = xor i32 %297, %301
  store i32 %302, ptr %300, align 4, !tbaa !7
  %303 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo.9]]], ptr @g_keyinfo, i64 0, i64 %31, i64 %216, i64 %218, i32 3, i32 2
  %304 = load i32, ptr %303, align 4, !tbaa !80
  %305 = load i32, ptr getelementptr inbounds (%struct.Hash_Key, ptr @g_flipVH_hashkey, i64 0, i32 1), align 4, !tbaa !16
  %306 = xor i32 %305, %304
  store i32 %306, ptr getelementptr inbounds (%struct.Hash_Key, ptr @g_flipVH_hashkey, i64 0, i32 1), align 4, !tbaa !16
  %307 = load i32, ptr %9, align 4, !tbaa !7
  %308 = load i32, ptr %6, align 4, !tbaa !7
  %309 = icmp slt i32 %307, %308
  br i1 %309, label %326, label %310

310:                                              ; preds = %99
  %.lcssa4 = phi i64 [ %100, %99 ]
  %.lcssa3 = phi i32 [ %105, %99 ]
  %.lcssa2 = phi ptr [ %108, %99 ]
  %.lcssa1 = phi i32 [ %307, %99 ]
  %.lcssa = phi i32 [ %308, %99 ]
  store i32 %.lcssa1, ptr %5, align 4, !tbaa !7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %8, ptr noundef nonnull align 4 dereferenceable(12) %.lcssa2, i64 12, i1 false), !tbaa.struct !58
  %311 = load i32, ptr @starting_depth, align 4, !tbaa !7
  %312 = sub nsw i32 %311, %0
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds [40 x i32], ptr @stat_cutoffs, i64 0, i64 %313
  %315 = load i32, ptr %314, align 4, !tbaa !7
  %316 = add nsw i32 %315, 1
  store i32 %316, ptr %314, align 4, !tbaa !7
  %317 = icmp slt i32 %.lcssa3, 5
  br i1 %317, label %318, label %322

318:                                              ; preds = %310
  %319 = getelementptr inbounds [40 x [10 x i32]], ptr @stat_nth_try, i64 0, i64 %313, i64 %.lcssa4
  %320 = load i32, ptr %319, align 4, !tbaa !7
  %321 = add nsw i32 %320, 1
  store i32 %321, ptr %319, align 4, !tbaa !7
  br label %334

322:                                              ; preds = %310
  %323 = getelementptr inbounds [40 x [10 x i32]], ptr @stat_nth_try, i64 0, i64 %313, i64 5
  %324 = load i32, ptr %323, align 4, !tbaa !7
  %325 = add nsw i32 %324, 1
  store i32 %325, ptr %323, align 4, !tbaa !7
  br label %334

326:                                              ; preds = %99
  %327 = load i32, ptr %5, align 4, !tbaa !7
  %328 = icmp sgt i32 %307, %327
  br i1 %328, label %329, label %330

329:                                              ; preds = %326
  store i32 %307, ptr %5, align 4, !tbaa !7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %8, ptr noundef nonnull align 4 dereferenceable(12) %108, i64 12, i1 false), !tbaa.struct !58
  br label %330

330:                                              ; preds = %329, %326
  %331 = add nsw i64 %100, 1
  %332 = trunc i64 %331 to i32
  %333 = icmp eq i32 %90, %332
  br i1 %333, label %334, label %99, !llvm.loop !87

334:                                              ; preds = %330, %322, %318, %94
  %335 = phi i32 [ %.lcssa, %318 ], [ %.lcssa, %322 ], [ %96, %94 ], [ %308, %330 ]
  %336 = phi i32 [ %.lcssa1, %318 ], [ %.lcssa1, %322 ], [ %95, %94 ], [ %307, %330 ]
  %337 = phi i32 [ %.lcssa3, %318 ], [ %.lcssa3, %322 ], [ %84, %94 ], [ %90, %330 ]
  %338 = icmp slt i32 %336, %335
  %339 = and i1 %91, %338
  br i1 %339, label %82, label %340, !llvm.loop !88

340:                                              ; preds = %334
  %341 = load i32, ptr %5, align 4, !tbaa !7
  %342 = load i64, ptr @g_num_nodes, align 8, !tbaa !29
  %343 = and i64 %13, 4294967295
  %344 = sub i64 %342, %343
  %345 = lshr i64 %344, 5
  %346 = trunc i64 %345 to i32
  call void @hashstore(i32 noundef %341, i32 noundef %2, i32 noundef %3, i32 noundef %346, i32 noundef %0, ptr noundef nonnull byval(%struct.Basic_Info) align 8 %8, i32 noundef %11) #33
  %347 = load i32, ptr %5, align 4, !tbaa !7
  br label %348

348:                                              ; preds = %340, %64, %58, %53, %47, %38, %25, %22
  %349 = phi i32 [ 5000, %38 ], [ -5000, %47 ], [ %54, %53 ], [ 5000, %58 ], [ -5000, %64 ], [ %347, %340 ], [ 5000, %22 ], [ %29, %25 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #31
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #31
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #31
  call void @llvm.lifetime.end.p0(i64 3072, ptr nonnull %7) #31
  ret i32 %349
}

; Function Attrs: nofree nounwind optsize uwtable
define internal fastcc void @print_stats() unnamed_addr #4 {
  %1 = load i32, ptr @cut1, align 4, !tbaa !7
  %2 = load i32, ptr @cut2, align 4, !tbaa !7
  %3 = load i32, ptr @cut3, align 4, !tbaa !7
  %4 = load i32, ptr @cut4, align 4, !tbaa !7
  %5 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9.46, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #32
  br label %6

6:                                                ; preds = %29, %0
  %7 = phi i64 [ 0, %0 ], [ %30, %29 ]
  %8 = getelementptr inbounds [40 x i32], ptr @stat_cutoffs, i64 0, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !7
  %10 = icmp eq i32 %9, 0
  %11 = getelementptr inbounds [40 x i32], ptr @stat_nodes, i64 0, i64 %7
  %12 = load i32, ptr %11, align 4, !tbaa !7
  %13 = icmp eq i32 %12, 0
  %14 = select i1 %10, i1 %13, i1 false
  br i1 %14, label %29, label %15

15:                                               ; preds = %6
  %16 = trunc i64 %7 to i32
  %17 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10.47, i32 noundef %16, i32 noundef %12, i32 noundef %9) #32
  br label %18

18:                                               ; preds = %18, %15
  %19 = phi i64 [ 0, %15 ], [ %23, %18 ]
  %20 = getelementptr inbounds [40 x [10 x i32]], ptr @stat_nth_try, i64 0, i64 %7, i64 %19
  %21 = load i32, ptr %20, align 4, !tbaa !7
  %22 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11.48, i32 noundef %21) #32
  %23 = add nuw nsw i64 %19, 1
  %24 = icmp eq i64 %23, 5
  br i1 %24, label %25, label %18, !llvm.loop !89

25:                                               ; preds = %18
  %26 = getelementptr inbounds [40 x [10 x i32]], ptr @stat_nth_try, i64 0, i64 %7, i64 5
  %27 = load i32, ptr %26, align 4, !tbaa !7
  %28 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12.49, i32 noundef %27) #32
  br label %29

29:                                               ; preds = %25, %6
  %30 = add nuw nsw i64 %7, 1
  %31 = icmp eq i64 %30, 40
  br i1 %31, label %32, label %6, !llvm.loop !90

32:                                               ; preds = %29
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal i64 @getline_llvm(ptr nocapture noundef %0, ptr nocapture readnone %1, ptr nocapture noundef %2) #0 {
  %4 = alloca [4096 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %4) #31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) %4, i8 0, i64 4096, i1 false)
  %5 = call ptr @fgets(ptr noundef nonnull %4, i32 noundef 4095, ptr noundef %2) #32
  %6 = icmp eq ptr %5, null
  br i1 %6, label %20, label %7

7:                                                ; preds = %3
  %8 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #38
  %9 = icmp sgt i64 %8, -1
  br i1 %9, label %10, label %20

10:                                               ; preds = %7
  %11 = load ptr, ptr %0, align 8, !tbaa !27
  %12 = icmp eq ptr %11, null
  %13 = add nuw nsw i64 %8, 1
  br i1 %12, label %14, label %16

14:                                               ; preds = %10
  %15 = call noalias ptr @malloc(i64 noundef %13) #39
  br label %18

16:                                               ; preds = %10
  %17 = call ptr @realloc(ptr noundef nonnull %11, i64 noundef %13) #40
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi ptr [ %17, %16 ], [ %15, %14 ]
  store ptr %19, ptr %0, align 8, !tbaa !27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %19, ptr noundef nonnull align 16 dereferenceable(1) %4, i64 %13, i1 false)
  br label %20

20:                                               ; preds = %18, %7, %3
  %21 = phi i64 [ %8, %18 ], [ %8, %7 ], [ -1, %3 ]
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %4) #31
  ret i64 %21
}

; Function Attrs: nofree nounwind optsize
declare noundef ptr @fgets(ptr noundef, i32 noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #18

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #19

; Function Attrs: mustprogress nounwind optsize willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #20

; Function Attrs: nounwind optsize uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.__sigset_t, align 8
  %4 = alloca %struct.sigaction, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [30 x [30 x i32]], align 16
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.sigaction, align 8
  %14 = alloca %struct.itimerval, align 8
  %15 = alloca ptr, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca [30 x [30 x i32]], align 16
  %19 = alloca i8, align 1
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i64, align 8
  br label %26

26:                                               ; preds = %43, %2
  %27 = tail call i32 @getopt(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.15.53) #33
  switch i32 %27, label %42 [
    i32 -1, label %44
    i32 101, label %28
    i32 104, label %30
    i32 108, label %32
    i32 116, label %35
    i32 118, label %39
    i32 119, label %41
  ]

28:                                               ; preds = %26
  %29 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @option_string) #32
  tail call void @exit(i32 noundef 0) #37
  unreachable

30:                                               ; preds = %26
  %31 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.33)
  tail call void @exit(i32 noundef 0) #37
  unreachable

32:                                               ; preds = %26
  %33 = load ptr, ptr @optarg, align 8, !tbaa !27
  %34 = tail call noalias ptr @strdup(ptr noundef %33) #33
  store ptr %34, ptr @lock_file, align 8, !tbaa !27
  br label %43

35:                                               ; preds = %26
  %36 = load ptr, ptr @optarg, align 8, !tbaa !27
  %37 = tail call i32 @atoi(ptr nocapture noundef %36) #38
  %38 = sext i32 %37 to i64
  store i64 %38, ptr @stop_minutes, align 8, !tbaa !29
  br label %43

39:                                               ; preds = %26
  %40 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  tail call void @exit(i32 noundef 0) #37
  unreachable

41:                                               ; preds = %26
  store i1 true, ptr @main_batch, align 4
  br label %43

42:                                               ; preds = %26
  tail call void (ptr, i32, i32, ptr, ...) @_fatal_error_aux(ptr noundef nonnull @.str.2.54, i32 noundef 378, i32 noundef 1, ptr noundef nonnull @.str.18.55, i32 noundef %27) #33
  br label %43

43:                                               ; preds = %42, %41, %35, %32
  br label %26, !llvm.loop !91

44:                                               ; preds = %26
  %45 = load i32, ptr @optind, align 4, !tbaa !7
  %46 = icmp slt i32 %45, %0
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  tail call void (ptr, i32, i32, ptr, ...) @_fatal_error_aux(ptr noundef nonnull @.str.2.54, i32 noundef 383, i32 noundef 1, ptr noundef nonnull @.str.19.56) #33
  br label %48

48:                                               ; preds = %47, %44
  %49 = load ptr, ptr @lock_file, align 8, !tbaa !27
  %50 = icmp eq ptr %49, null
  br i1 %50, label %218, label %51

51:                                               ; preds = %48
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #31
  store ptr null, ptr %15, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %16) #31
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %17) #31
  call void @llvm.lifetime.start.p0(i64 3600, ptr nonnull %18) #31
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %19) #31
  store i8 0, ptr %19, align 1, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %20) #31
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %21) #31
  %52 = tail call noalias ptr @fopen(ptr noundef nonnull %49, ptr noundef nonnull @.str.23) #32
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %55

54:                                               ; preds = %51
  tail call void (ptr, i32, i32, ptr, ...) @_fatal_error_aux(ptr noundef nonnull @.str.2.54, i32 noundef 563, i32 noundef 1, ptr noundef nonnull @.str.24.57) #33
  br label %55

55:                                               ; preds = %54, %51
  %56 = load ptr, ptr @lock_file, align 8, !tbaa !27
  %57 = tail call i32 @puts(ptr nonnull dereferenceable(1) %56)
  br label %58

58:                                               ; preds = %63, %55
  %59 = tail call i64 @ftell(ptr noundef %52) #32
  %60 = trunc i64 %59 to i32
  store i32 %60, ptr @lock_file_offset, align 4, !tbaa !7
  %61 = call i64 @getline_llvm(ptr noundef nonnull %15, ptr nonnull poison, ptr noundef %52) #32
  %62 = icmp eq i64 %61, -1
  br i1 %62, label %184, label %63

63:                                               ; preds = %58
  %64 = load ptr, ptr %15, align 8, !tbaa !27
  %65 = load i8, ptr %64, align 1, !tbaa !12
  %66 = icmp eq i8 %65, 65
  br i1 %66, label %67, label %58, !llvm.loop !92

67:                                               ; preds = %63
  %.lcssa11 = phi ptr [ %64, %63 ]
  %.lcssa10 = phi i64 [ %61, %63 ]
  %68 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.26.58, ptr noundef nonnull %.lcssa11) #32
  %69 = icmp ult i64 %.lcssa10, 19
  br i1 %69, label %70, label %71

70:                                               ; preds = %67
  tail call void (ptr, i32, i32, ptr, ...) @_fatal_error_aux(ptr noundef nonnull @.str.2.54, i32 noundef 577, i32 noundef 1, ptr noundef nonnull %.lcssa11) #33
  br label %71

71:                                               ; preds = %70, %67
  %72 = getelementptr inbounds i8, ptr %.lcssa11, i64 18
  %73 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %72, ptr noundef nonnull @.str.27.59, ptr noundef nonnull %16, ptr noundef nonnull %17) #33
  %74 = icmp eq i32 %73, 2
  br i1 %74, label %76, label %75

75:                                               ; preds = %71
  call void (ptr, i32, i32, ptr, ...) @_fatal_error_aux(ptr noundef nonnull @.str.2.54, i32 noundef 580, i32 noundef 1, ptr noundef nonnull @.str.28.60, ptr noundef nonnull %.lcssa11) #33
  br label %76

76:                                               ; preds = %75, %71
  %77 = load i32, ptr %16, align 4, !tbaa !7
  %78 = icmp ugt i32 %77, 30
  br i1 %78, label %79, label %80

79:                                               ; preds = %76
  call void (ptr, i32, i32, ptr, ...) @_fatal_error_aux(ptr noundef nonnull @.str.2.54, i32 noundef 583, i32 noundef 1, ptr noundef nonnull @.str.6.61, i32 noundef %77) #33
  br label %80

80:                                               ; preds = %79, %76
  %81 = load i32, ptr %17, align 4, !tbaa !7
  %82 = icmp ugt i32 %81, 30
  br i1 %82, label %83, label %85

83:                                               ; preds = %80
  call void (ptr, i32, i32, ptr, ...) @_fatal_error_aux(ptr noundef nonnull @.str.2.54, i32 noundef 585, i32 noundef 1, ptr noundef nonnull @.str.7.62, i32 noundef %81) #33
  %84 = load i32, ptr %17, align 4, !tbaa !7
  br label %85

85:                                               ; preds = %83, %80
  %86 = phi i32 [ %84, %83 ], [ %81, %80 ]
  %87 = load i32, ptr %16, align 4, !tbaa !7
  %88 = mul i32 %87, %86
  %89 = icmp ugt i32 %88, 128
  br i1 %89, label %90, label %91

90:                                               ; preds = %85
  call void (ptr, i32, i32, ptr, ...) @_fatal_error_aux(ptr noundef nonnull @.str.2.54, i32 noundef 587, i32 noundef 1, ptr noundef nonnull @.str.8.63, i32 noundef %88) #33
  br label %91

91:                                               ; preds = %90, %85
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(3600) %18, i8 0, i64 3600, i1 false), !tbaa !7
  store i32 30, ptr %20, align 4, !tbaa !7
  store i32 30, ptr %21, align 4, !tbaa !7
  br label %92

92:                                               ; preds = %179, %91
  %93 = phi i64 [ %.lcssa8, %179 ], [ 18, %91 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %22) #31
  %94 = shl i64 %93, 32
  %95 = ashr exact i64 %94, 32
  br label %96

96:                                               ; preds = %106, %92
  %97 = phi i64 [ %108, %106 ], [ %95, %92 ]
  %98 = phi i32 [ %107, %106 ], [ 0, %92 ]
  %99 = getelementptr inbounds i8, ptr %.lcssa11, i64 %97
  %100 = load i8, ptr %99, align 1, !tbaa !12
  switch i8 %100, label %104 [
    i8 0, label %109
    i8 32, label %101
  ]

101:                                              ; preds = %96
  %102 = icmp eq i32 %98, 0
  %103 = select i1 %102, i32 0, i32 2
  br label %106

104:                                              ; preds = %96
  %105 = icmp eq i32 %98, 2
  br i1 %105, label %109, label %106

106:                                              ; preds = %104, %101
  %107 = phi i32 [ %103, %101 ], [ 1, %104 ]
  %108 = add i64 %97, 1
  br label %96, !llvm.loop !93

109:                                              ; preds = %104, %96
  %.lcssa8 = phi i64 [ %97, %104 ], [ %97, %96 ]
  %110 = shl i64 %.lcssa8, 32
  %111 = ashr exact i64 %110, 32
  %112 = icmp ugt i64 %.lcssa10, %111
  br i1 %112, label %113, label %180

113:                                              ; preds = %109
  %114 = getelementptr inbounds i8, ptr %.lcssa11, i64 %111
  %115 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %114, ptr noundef nonnull @.str.29.64, ptr noundef nonnull %19, ptr noundef nonnull %22, ptr noundef nonnull %20, ptr noundef nonnull %21) #33
  %116 = icmp eq i32 %115, 4
  br i1 %116, label %117, label %180

117:                                              ; preds = %113
  %118 = load i8, ptr %19, align 1, !tbaa !12
  %119 = sext i8 %118 to i32
  %120 = load i32, ptr %20, align 4, !tbaa !7
  %121 = load i32, ptr %21, align 4, !tbaa !7
  %122 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.30, i32 noundef %119, i32 noundef %120, i32 noundef %121) #32
  %123 = load i8, ptr %19, align 1, !tbaa !12
  switch i8 %123, label %178 [
    i8 86, label %124
    i8 72, label %151
  ]

124:                                              ; preds = %117
  %125 = load i32, ptr %21, align 4, !tbaa !7
  %126 = sext i32 %125 to i64
  %127 = load i32, ptr %20, align 4, !tbaa !7
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds [30 x [30 x i32]], ptr %18, i64 0, i64 %126, i64 %128
  %130 = load i32, ptr %129, align 4, !tbaa !7
  %131 = icmp eq i32 %130, 1
  br i1 %131, label %138, label %132

132:                                              ; preds = %124
  %133 = add nsw i32 %125, 1
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds [30 x [30 x i32]], ptr %18, i64 0, i64 %134, i64 %128
  %136 = load i32, ptr %135, align 4, !tbaa !7
  %137 = icmp eq i32 %136, 1
  br i1 %137, label %138, label %145

138:                                              ; preds = %132, %124
  call void (ptr, i32, i32, ptr, ...) @_fatal_error_aux(ptr noundef nonnull @.str.2.54, i32 noundef 609, i32 noundef 1, ptr noundef nonnull %.lcssa11) #33
  %139 = load i32, ptr %21, align 4, !tbaa !7
  %140 = load i32, ptr %20, align 4, !tbaa !7
  %141 = add nsw i32 %139, 1
  %142 = sext i32 %141 to i64
  %143 = sext i32 %140 to i64
  %144 = sext i32 %139 to i64
  br label %145

145:                                              ; preds = %138, %132
  %146 = phi i64 [ %144, %138 ], [ %126, %132 ]
  %147 = phi i64 [ %143, %138 ], [ %128, %132 ]
  %148 = phi i64 [ %142, %138 ], [ %134, %132 ]
  %149 = getelementptr inbounds [30 x [30 x i32]], ptr %18, i64 0, i64 %148, i64 %147
  store i32 1, ptr %149, align 4, !tbaa !7
  %150 = getelementptr inbounds [30 x [30 x i32]], ptr %18, i64 0, i64 %146, i64 %147
  store i32 1, ptr %150, align 4, !tbaa !7
  br label %179

151:                                              ; preds = %117
  %152 = load i32, ptr %20, align 4, !tbaa !7
  %153 = sext i32 %152 to i64
  %154 = load i32, ptr %21, align 4, !tbaa !7
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds [30 x [30 x i32]], ptr %18, i64 0, i64 %153, i64 %155
  %157 = load i32, ptr %156, align 4, !tbaa !7
  %158 = icmp eq i32 %157, 1
  br i1 %158, label %165, label %159

159:                                              ; preds = %151
  %160 = add nsw i32 %154, 1
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds [30 x [30 x i32]], ptr %18, i64 0, i64 %153, i64 %161
  %163 = load i32, ptr %162, align 4, !tbaa !7
  %164 = icmp eq i32 %163, 1
  br i1 %164, label %165, label %172

165:                                              ; preds = %159, %151
  call void (ptr, i32, i32, ptr, ...) @_fatal_error_aux(ptr noundef nonnull @.str.2.54, i32 noundef 613, i32 noundef 1, ptr noundef nonnull %.lcssa11) #33
  %166 = load i32, ptr %20, align 4, !tbaa !7
  %167 = load i32, ptr %21, align 4, !tbaa !7
  %168 = sext i32 %166 to i64
  %169 = add nsw i32 %167, 1
  %170 = sext i32 %169 to i64
  %171 = sext i32 %167 to i64
  br label %172

172:                                              ; preds = %165, %159
  %173 = phi i64 [ %171, %165 ], [ %155, %159 ]
  %174 = phi i64 [ %170, %165 ], [ %161, %159 ]
  %175 = phi i64 [ %168, %165 ], [ %153, %159 ]
  %176 = getelementptr inbounds [30 x [30 x i32]], ptr %18, i64 0, i64 %175, i64 %174
  store i32 1, ptr %176, align 4, !tbaa !7
  %177 = getelementptr inbounds [30 x [30 x i32]], ptr %18, i64 0, i64 %175, i64 %173
  store i32 1, ptr %177, align 4, !tbaa !7
  br label %179

178:                                              ; preds = %117
  call void (ptr, i32, i32, ptr, ...) @_fatal_error_aux(ptr noundef nonnull @.str.2.54, i32 noundef 615, i32 noundef 1, ptr noundef nonnull @.str.31) #33
  br label %179

179:                                              ; preds = %178, %172, %145
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %22) #31
  br label %92

180:                                              ; preds = %113, %109
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %22) #31
  %181 = call i32 @puts(ptr nonnull dereferenceable(1) @str.35)
  %182 = load ptr, ptr @stdout, align 8, !tbaa !27
  %183 = call i32 @fflush(ptr noundef %182) #32
  br label %185

184:                                              ; preds = %58
  tail call void (ptr, i32, i32, ptr, ...) @_fatal_error_aux(ptr noundef nonnull @.str.2.54, i32 noundef 624, i32 noundef 1, ptr noundef nonnull @.str.14.65) #33
  br label %185

185:                                              ; preds = %184, %180
  %186 = load i32, ptr @lock_file_offset, align 4, !tbaa !7
  %187 = sext i32 %186 to i64
  %188 = call i32 @fseek(ptr noundef %52, i64 noundef %187, i32 noundef 0) #32
  %189 = call i32 @fputc(i32 87, ptr %52)
  %190 = call i32 @fflush(ptr noundef %52) #32
  %191 = load i8, ptr %19, align 1, !tbaa !12
  switch i8 %191, label %194 [
    i8 86, label %192
    i8 72, label %193
  ]

192:                                              ; preds = %185
  store i8 72, ptr @main_whos_turn, align 1, !tbaa !12
  br label %195

193:                                              ; preds = %185
  store i8 86, ptr @main_whos_turn, align 1, !tbaa !12
  br label %195

194:                                              ; preds = %185
  call void (ptr, i32, i32, ptr, ...) @_fatal_error_aux(ptr noundef nonnull @.str.2.54, i32 noundef 632, i32 noundef 1, ptr noundef nonnull @.str.31) #33
  br label %195

195:                                              ; preds = %194, %193, %192
  %196 = load i32, ptr %16, align 4, !tbaa !7
  %197 = load i32, ptr %17, align 4, !tbaa !7
  call void @initialize_board(i32 noundef %196, i32 noundef %197, ptr noundef nonnull %18) #33
  %198 = load ptr, ptr %15, align 8, !tbaa !27
  call void @free(ptr noundef %198) #33
  %199 = call i32 @fclose(ptr noundef %52) #32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %21) #31
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %20) #31
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %19) #31
  call void @llvm.lifetime.end.p0(i64 3600, ptr nonnull %18) #31
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %17) #31
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %16) #31
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #31
  %200 = load i64, ptr @stop_minutes, align 8, !tbaa !29
  %201 = icmp eq i64 %200, 0
  br i1 %201, label %332, label %202

202:                                              ; preds = %195
  call void @llvm.lifetime.start.p0(i64 152, ptr nonnull %13) #31
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %14) #31
  %203 = getelementptr inbounds %struct.sigaction, ptr %13, i64 0, i32 1
  %204 = call i32 @sigfillset(ptr noundef nonnull %203) #33
  %205 = getelementptr inbounds %struct.sigaction, ptr %13, i64 0, i32 2
  store i32 0, ptr %205, align 8, !tbaa !94
  store ptr @stop_alrm_handler, ptr %13, align 8, !tbaa !12
  %206 = call i32 @sigaction(i32 noundef 26, ptr noundef nonnull %13, ptr noundef null) #33
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %209, label %208

208:                                              ; preds = %202
  call void (ptr, i32, i32, ptr, ...) @_fatal_error_aux(ptr noundef nonnull @.str.2.54, i32 noundef 449, i32 noundef 1, ptr noundef nonnull @.str.20.66) #33
  br label %209

209:                                              ; preds = %208, %202
  %210 = mul nsw i64 %200, 60
  store i64 %210, ptr %14, align 8, !tbaa !97
  %211 = getelementptr inbounds %struct.timeval, ptr %14, i64 0, i32 1
  store i64 0, ptr %211, align 8, !tbaa !100
  %212 = getelementptr inbounds %struct.itimerval, ptr %14, i64 0, i32 1
  store i64 %210, ptr %212, align 8, !tbaa !101
  %213 = getelementptr inbounds %struct.itimerval, ptr %14, i64 0, i32 1, i32 1
  store i64 0, ptr %213, align 8, !tbaa !102
  %214 = call i32 @setitimer(i32 noundef 1, ptr noundef nonnull %14, ptr noundef null) #33
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %217, label %216

216:                                              ; preds = %209
  call void (ptr, i32, i32, ptr, ...) @_fatal_error_aux(ptr noundef nonnull @.str.2.54, i32 noundef 457, i32 noundef 1, ptr noundef nonnull @.str.22) #33
  br label %217

217:                                              ; preds = %216, %209
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %14) #31
  call void @llvm.lifetime.end.p0(i64 152, ptr nonnull %13) #31
  br label %332

218:                                              ; preds = %48
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #31
  store ptr null, ptr %5, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #31
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #31
  call void @llvm.lifetime.start.p0(i64 3600, ptr nonnull %8) #31
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #31
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #31
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #31
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #31
  br label %219

219:                                              ; preds = %314, %218
  %220 = phi ptr [ null, %218 ], [ %315, %314 ]
  %221 = load ptr, ptr @stdin, align 8, !tbaa !27
  %222 = call i64 @getline_llvm(ptr noundef nonnull %5, ptr nonnull poison, ptr noundef %221) #32
  switch i64 %222, label %223 [
    i64 -1, label %321
    i64 0, label %314
  ]

223:                                              ; preds = %219
  %224 = icmp eq ptr %220, null
  br i1 %224, label %227, label %225

225:                                              ; preds = %223
  %226 = call ptr @realloc(ptr noundef nonnull %220, i64 noundef 0) #40
  br label %229

227:                                              ; preds = %223
  %228 = call noalias ptr @malloc(i64 noundef 0) #39
  br label %229

229:                                              ; preds = %227, %225
  %230 = phi ptr [ %226, %225 ], [ %228, %227 ]
  %231 = load ptr, ptr %5, align 8, !tbaa !27
  %232 = add i64 %222, -1
  %233 = getelementptr inbounds i8, ptr %231, i64 %232
  store i8 0, ptr %233, align 1, !tbaa !12
  %234 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %231, ptr noundef nonnull @.str.4.67, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %9, ptr noundef %230, ptr noundef nonnull %10) #33
  switch i32 %234, label %235 [
    i32 5, label %238
    i32 3, label %238
  ]

235:                                              ; preds = %229
  %236 = load ptr, ptr @stderr, align 8, !tbaa !27
  %237 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %236, ptr noundef nonnull @.str.5.68, ptr noundef nonnull %231) #34
  br label %314

238:                                              ; preds = %229, %229
  %239 = load i32, ptr %6, align 4, !tbaa !7
  %240 = icmp ugt i32 %239, 30
  br i1 %240, label %241, label %244

241:                                              ; preds = %238
  %242 = load ptr, ptr @stderr, align 8, !tbaa !27
  %243 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %242, ptr noundef nonnull @.str.6.61, i32 noundef %239) #34
  br label %314

244:                                              ; preds = %238
  %245 = load i32, ptr %7, align 4, !tbaa !7
  %246 = icmp ugt i32 %245, 30
  br i1 %246, label %247, label %250

247:                                              ; preds = %244
  %248 = load ptr, ptr @stderr, align 8, !tbaa !27
  %249 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %248, ptr noundef nonnull @.str.7.62, i32 noundef %245) #34
  br label %314

250:                                              ; preds = %244
  %251 = mul nuw nsw i32 %245, %239
  %252 = icmp ugt i32 %251, 256
  br i1 %252, label %256, label %253

253:                                              ; preds = %250
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(3600) %8, i8 0, i64 3600, i1 false), !tbaa !7
  store i32 30, ptr %11, align 4, !tbaa !7
  store i32 30, ptr %12, align 4, !tbaa !7
  %254 = icmp eq i32 %234, 5
  %255 = tail call ptr @__ctype_toupper_loc() #36
  br i1 %254, label %259, label %301

256:                                              ; preds = %250
  %257 = load ptr, ptr @stderr, align 8, !tbaa !27
  %258 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %257, ptr noundef nonnull @.str.8.63, i32 noundef %251) #34
  br label %314

259:                                              ; preds = %253
  %260 = load ptr, ptr %255, align 8, !tbaa !27
  %261 = load i8, ptr %9, align 1, !tbaa !12
  %262 = sext i8 %261 to i64
  %263 = getelementptr inbounds i32, ptr %260, i64 %262
  %264 = load i32, ptr %263, align 4, !tbaa !7
  %265 = trunc i32 %264 to i8
  store i8 %265, ptr %9, align 1, !tbaa !12
  %266 = and i32 %264, 255
  %267 = icmp eq i32 %266, 66
  br i1 %267, label %271, label %268

268:                                              ; preds = %259
  %269 = load ptr, ptr @stderr, align 8, !tbaa !27
  %270 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %269, ptr noundef nonnull @.str.5.68, ptr noundef nonnull %231) #34
  br label %314

271:                                              ; preds = %259
  %272 = call ptr @strtok(ptr noundef %230, ptr noundef nonnull @.str.9.69) #33
  %273 = icmp eq ptr %272, null
  br i1 %273, label %298, label %274

274:                                              ; preds = %292, %271
  %275 = phi ptr [ %296, %292 ], [ %272, %271 ]
  %276 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %275, ptr noundef nonnull @.str.10.70, ptr noundef nonnull %11, ptr noundef nonnull %12) #33
  %277 = icmp eq i32 %276, 2
  br i1 %277, label %281, label %278

278:                                              ; preds = %274
  %.lcssa = phi ptr [ %275, %274 ]
  %279 = load ptr, ptr @stderr, align 8, !tbaa !27
  %280 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %279, ptr noundef nonnull @.str.11.71, ptr noundef nonnull %.lcssa) #34
  store i8 0, ptr %9, align 1, !tbaa !12
  br label %314

281:                                              ; preds = %274
  %282 = load i32, ptr %11, align 4, !tbaa !7
  %283 = load i32, ptr %6, align 4, !tbaa !7
  %284 = icmp ult i32 %282, %283
  br i1 %284, label %285, label %289

285:                                              ; preds = %281
  %286 = load i32, ptr %12, align 4, !tbaa !7
  %287 = load i32, ptr %7, align 4, !tbaa !7
  %288 = icmp ult i32 %286, %287
  br i1 %288, label %292, label %289

289:                                              ; preds = %285, %281
  %.lcssa1 = phi ptr [ %275, %285 ], [ %275, %281 ]
  %290 = load ptr, ptr @stderr, align 8, !tbaa !27
  %291 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %290, ptr noundef nonnull @.str.11.71, ptr noundef nonnull %.lcssa1) #34
  store i8 0, ptr %9, align 1, !tbaa !12
  br label %314

292:                                              ; preds = %285
  %293 = sext i32 %282 to i64
  %294 = sext i32 %286 to i64
  %295 = getelementptr inbounds [30 x [30 x i32]], ptr %8, i64 0, i64 %293, i64 %294
  store i32 1, ptr %295, align 4, !tbaa !7
  %296 = call ptr @strtok(ptr noundef null, ptr noundef nonnull @.str.9.69) #33
  %297 = icmp eq ptr %296, null
  br i1 %297, label %298, label %274, !llvm.loop !103

298:                                              ; preds = %292, %271
  %299 = load i8, ptr %9, align 1, !tbaa !12
  %300 = icmp eq i8 %299, 0
  br i1 %300, label %314, label %301

301:                                              ; preds = %298, %253
  %302 = phi ptr [ %10, %298 ], [ %9, %253 ]
  %303 = load i8, ptr %302, align 1, !tbaa !12
  %304 = load ptr, ptr %255, align 8, !tbaa !27
  %305 = sext i8 %303 to i64
  %306 = getelementptr inbounds i32, ptr %304, i64 %305
  %307 = load i32, ptr %306, align 4, !tbaa !7
  %308 = trunc i32 %307 to i8
  store i8 %308, ptr %10, align 1, !tbaa !12
  %309 = shl i32 %307, 24
  switch i32 %309, label %310 [
    i32 1442840576, label %316
    i32 1207959552, label %316
  ]

310:                                              ; preds = %301
  %311 = ashr exact i32 %309, 24
  %312 = load ptr, ptr @stderr, align 8, !tbaa !27
  %313 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %312, ptr noundef nonnull @.str.12.72, i32 noundef %311) #34
  br label %314

314:                                              ; preds = %310, %298, %289, %278, %268, %256, %247, %241, %235, %219
  %315 = phi ptr [ %230, %235 ], [ %230, %241 ], [ %230, %247 ], [ %230, %256 ], [ %230, %310 ], [ %230, %298 ], [ %220, %219 ], [ %230, %268 ], [ %230, %278 ], [ %230, %289 ]
  br label %219, !llvm.loop !104

316:                                              ; preds = %301, %301
  %.lcssa7 = phi ptr [ %230, %301 ], [ %230, %301 ]
  %.lcssa6 = phi ptr [ %231, %301 ], [ %231, %301 ]
  %.lcssa3 = phi i64 [ %222, %301 ], [ %222, %301 ]
  %317 = call i32 @puts(ptr nonnull dereferenceable(1) @str.35)
  %318 = load ptr, ptr @stdout, align 8, !tbaa !27
  %319 = call i32 @fflush(ptr noundef %318) #32
  %320 = icmp eq i64 %.lcssa3, -1
  br i1 %320, label %323, label %326

321:                                              ; preds = %219
  %.lcssa4 = phi ptr [ %220, %219 ]
  %322 = load ptr, ptr %5, align 8, !tbaa !27
  br label %323

323:                                              ; preds = %321, %316
  %324 = phi ptr [ %.lcssa6, %316 ], [ %322, %321 ]
  %325 = phi ptr [ %.lcssa7, %316 ], [ %.lcssa4, %321 ]
  call void (ptr, i32, i32, ptr, ...) @_fatal_error_aux(ptr noundef nonnull @.str.2.54, i32 noundef 275, i32 noundef 1, ptr noundef nonnull @.str.14.65) #33
  br label %326

326:                                              ; preds = %323, %316
  %327 = phi ptr [ %324, %323 ], [ %.lcssa6, %316 ]
  %328 = phi ptr [ %325, %323 ], [ %.lcssa7, %316 ]
  %329 = load i8, ptr %10, align 1, !tbaa !12
  store i8 %329, ptr @main_whos_turn, align 1, !tbaa !12
  %330 = load i32, ptr %6, align 4, !tbaa !7
  %331 = load i32, ptr %7, align 4, !tbaa !7
  call void @initialize_board(i32 noundef %330, i32 noundef %331, ptr noundef nonnull %8) #33
  call void @free(ptr noundef %327) #33
  call void @free(ptr noundef %328) #33
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #31
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #31
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #31
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #31
  call void @llvm.lifetime.end.p0(i64 3600, ptr nonnull %8) #31
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #31
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #31
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #31
  br label %332

332:                                              ; preds = %326, %217, %195
  call void @llvm.lifetime.start.p0(i64 152, ptr nonnull %4) #31
  %333 = getelementptr inbounds %struct.sigaction, ptr %4, i64 0, i32 1
  %334 = call i32 @sigfillset(ptr noundef nonnull %333) #33
  %335 = getelementptr inbounds %struct.sigaction, ptr %4, i64 0, i32 2
  store i32 0, ptr %335, align 8, !tbaa !94
  store ptr @sig_int_handler, ptr %4, align 8, !tbaa !12
  %336 = call i32 @sigaction(i32 noundef 2, ptr noundef nonnull %4, ptr noundef null) #33
  %337 = icmp eq i32 %336, 0
  br i1 %337, label %339, label %338

338:                                              ; preds = %332
  call void (ptr, i32, i32, ptr, ...) @_fatal_error_aux(ptr noundef nonnull @.str.2.54, i32 noundef 418, i32 noundef 1, ptr noundef nonnull @.str.20.66) #33
  br label %339

339:                                              ; preds = %338, %332
  call void @llvm.lifetime.end.p0(i64 152, ptr nonnull %4) #31
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %23) #31
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %24) #31
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %25) #31
  %340 = load i8, ptr @main_whos_turn, align 1, !tbaa !12
  %341 = call i32 @search_for_move(i8 noundef signext %340, ptr noundef nonnull %23, ptr noundef nonnull %24, ptr noundef nonnull %25) #33
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %3) #31
  %342 = call i32 @sigemptyset(ptr noundef nonnull %3) #33
  %343 = call i32 @sigaddset(ptr noundef nonnull %3, i32 noundef 14) #33
  %344 = call i32 @sigaddset(ptr noundef nonnull %3, i32 noundef 2) #33
  %345 = call i32 @sigprocmask(i32 noundef 0, ptr noundef nonnull %3, ptr noundef null) #33
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %3) #31
  %346 = load i64, ptr %25, align 8, !tbaa !29
  %347 = call ptr @u64bit_to_string(i64 noundef %346) #33
  %348 = icmp sgt i32 %341, 4999
  %349 = load i8, ptr @main_whos_turn, align 1, !tbaa !12
  br i1 %348, label %350, label %355

350:                                              ; preds = %339
  %351 = sext i8 %349 to i32
  %352 = load i32, ptr %23, align 4, !tbaa !7
  %353 = load i32, ptr %24, align 4, !tbaa !7
  %354 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.73, i32 noundef %351, i32 noundef %352, i32 noundef %353, ptr noundef %347) #32
  br label %361

355:                                              ; preds = %339
  %356 = icmp eq i8 %349, 86
  %357 = select i1 %356, i32 72, i32 86
  %358 = load i32, ptr %23, align 4, !tbaa !7
  %359 = load i32, ptr %24, align 4, !tbaa !7
  %360 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.73, i32 noundef %357, i32 noundef %358, i32 noundef %359, ptr noundef %347) #32
  br label %361

361:                                              ; preds = %355, %350
  %362 = load ptr, ptr @stdout, align 8, !tbaa !27
  %363 = call i32 @fflush(ptr noundef %362) #32
  %364 = load ptr, ptr @lock_file, align 8, !tbaa !27
  %365 = icmp eq ptr %364, null
  br i1 %365, label %393, label %366

366:                                              ; preds = %361
  br i1 %348, label %367, label %369

367:                                              ; preds = %366
  %368 = load i8, ptr @main_whos_turn, align 1, !tbaa !12
  br label %377

369:                                              ; preds = %366
  %370 = icmp slt i32 %341, -4999
  br i1 %370, label %371, label %375

371:                                              ; preds = %369
  %372 = load i8, ptr @main_whos_turn, align 1, !tbaa !12
  %373 = icmp eq i8 %372, 86
  %374 = select i1 %373, i8 72, i8 86
  br label %377

375:                                              ; preds = %369
  call void (ptr, i32, i32, ptr, ...) @_fatal_error_aux(ptr noundef nonnull @.str.2.54, i32 noundef 149, i32 noundef 1, ptr noundef nonnull @.str.3.74) #33
  %376 = load ptr, ptr @lock_file, align 8, !tbaa !27
  br label %377

377:                                              ; preds = %375, %371, %367
  %378 = phi ptr [ %364, %367 ], [ %364, %371 ], [ %376, %375 ]
  %379 = phi i8 [ %368, %367 ], [ %374, %371 ], [ 0, %375 ]
  %380 = call noalias ptr @fopen(ptr noundef %378, ptr noundef nonnull @.str.23) #32
  %381 = icmp eq ptr %380, null
  br i1 %381, label %382, label %383

382:                                              ; preds = %377
  call void (ptr, i32, i32, ptr, ...) @_fatal_error_aux(ptr noundef nonnull @.str.2.54, i32 noundef 530, i32 noundef 1, ptr noundef nonnull @.str.24.57) #33
  br label %383

383:                                              ; preds = %382, %377
  %384 = load ptr, ptr @lock_file, align 8, !tbaa !27
  %385 = call i32 @puts(ptr nonnull dereferenceable(1) %384)
  %386 = load i32, ptr @lock_file_offset, align 4, !tbaa !7
  %387 = sext i32 %386 to i64
  %388 = call i32 @fseek(ptr noundef %380, i64 noundef %387, i32 noundef 0) #32
  %389 = sext i8 %379 to i32
  %390 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %380, ptr noundef nonnull @.str.25, i32 noundef %389, ptr noundef %347) #32
  %391 = call i32 @fflush(ptr noundef %380) #32
  %392 = call i32 @fclose(ptr noundef %380) #32
  br label %393

393:                                              ; preds = %383, %361
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %25) #31
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %24) #31
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %23) #31
  %394 = call i32 (i32, i32, ...) @fcntl(i32 noundef 0, i32 noundef 4, i32 noundef 0) #33
  %395 = load i1, ptr @main_batch, align 4
  br i1 %395, label %396, label %399

396:                                              ; preds = %396, %393
  %397 = call i32 @getchar() #32
  %398 = icmp eq i32 %397, -1
  br i1 %398, label %399, label %396, !llvm.loop !105

399:                                              ; preds = %396, %393
  ret i32 0
}

; Function Attrs: nounwind optsize
declare i32 @getopt(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare noalias ptr @strdup(ptr nocapture noundef readonly) local_unnamed_addr #21

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(read)
declare i32 @atoi(ptr nocapture noundef) local_unnamed_addr #22

; Function Attrs: nofree nounwind optsize
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #3

; Function Attrs: nofree nounwind optsize
declare noundef i64 @ftell(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind optsize
declare noundef i32 @__isoc99_sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fseek(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nounwind optsize
declare i32 @sigfillset(ptr noundef) local_unnamed_addr #7

; Function Attrs: noreturn nounwind optsize uwtable
define internal void @stop_alrm_handler(i32 %0) #23 {
  tail call void @exit(i32 noundef 0) #37
  unreachable
}

; Function Attrs: nounwind optsize
declare i32 @sigaction(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind optsize willreturn
declare noundef i32 @setitimer(i32 noundef, ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #24

; Function Attrs: mustprogress nofree nounwind optsize willreturn
declare ptr @strtok(ptr noundef, ptr nocapture noundef readonly) local_unnamed_addr #24

; Function Attrs: nounwind optsize uwtable
define internal void @sig_int_handler(i32 %0) #0 {
  %2 = tail call ptr (...) @current_search_state() #33
  %3 = load ptr, ptr @stderr, align 8, !tbaa !27
  %4 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef nonnull @.str.21.75, ptr noundef %2) #34
  %5 = load ptr, ptr @stderr, align 8, !tbaa !27
  %6 = tail call i32 @fflush(ptr noundef %5) #32
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @sigemptyset(ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind optsize
declare i32 @sigaddset(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind optsize
declare i32 @sigprocmask(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #25

; Function Attrs: nofree nounwind optsize
declare noundef i32 @getchar() local_unnamed_addr #3

; Function Attrs: nofree nosync nounwind optsize memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define internal void @set_position_values() #26 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(8192) @g_first_move, i8 0, i64 8192, i1 false), !tbaa !7
  br label %1

1:                                                ; preds = %41, %0
  %2 = phi i1 [ true, %0 ], [ false, %41 ]
  %3 = phi i64 [ 0, %0 ], [ 1, %41 ]
  %4 = getelementptr inbounds [2 x i32], ptr @g_board_size, i64 0, i64 %3
  %5 = load i32, ptr %4, align 4, !tbaa !7
  %6 = icmp sgt i32 %5, 2
  br i1 %6, label %7, label %41

7:                                                ; preds = %1
  %8 = add nuw nsw i32 %5, 3
  %9 = lshr i32 %8, 1
  %10 = xor i64 %3, 1
  %11 = getelementptr inbounds [2 x i32], ptr @g_board_size, i64 0, i64 %10
  %12 = load i32, ptr %11, align 4, !tbaa !7
  %13 = sdiv i32 %12, 2
  %14 = icmp slt i32 %12, 2
  %15 = sext i32 %12 to i64
  %16 = sext i32 %13 to i64
  %17 = zext i32 %9 to i64
  br label %18

18:                                               ; preds = %37, %7
  %19 = phi i64 [ 2, %7 ], [ %39, %37 ]
  %20 = phi i32 [ 127, %7 ], [ %38, %37 ]
  br i1 %14, label %37, label %21

21:                                               ; preds = %18
  %22 = trunc i64 %19 to i32
  %23 = sub i32 %5, %22
  %24 = add i32 %23, 1
  %25 = sext i32 %24 to i64
  br label %26

26:                                               ; preds = %26, %21
  %27 = phi i64 [ 1, %21 ], [ %35, %26 ]
  %28 = phi i32 [ %20, %21 ], [ %29, %26 ]
  %29 = add nsw i32 %28, -1
  %30 = getelementptr inbounds [2 x [32 x [32 x i32]]], ptr @g_first_move, i64 0, i64 %3, i64 %19, i64 %27
  store i32 %29, ptr %30, align 4, !tbaa !7
  %31 = getelementptr inbounds [2 x [32 x [32 x i32]]], ptr @g_first_move, i64 0, i64 %3, i64 %25, i64 %27
  store i32 %29, ptr %31, align 4, !tbaa !7
  %32 = sub nsw i64 %15, %27
  %33 = getelementptr inbounds [2 x [32 x [32 x i32]]], ptr @g_first_move, i64 0, i64 %3, i64 %25, i64 %32
  store i32 %29, ptr %33, align 4, !tbaa !7
  %34 = getelementptr inbounds [2 x [32 x [32 x i32]]], ptr @g_first_move, i64 0, i64 %3, i64 %19, i64 %32
  store i32 %29, ptr %34, align 4, !tbaa !7
  %35 = add nuw nsw i64 %27, 2
  %36 = icmp sgt i64 %35, %16
  br i1 %36, label %37, label %26, !llvm.loop !106

37:                                               ; preds = %26, %18
  %38 = phi i32 [ %20, %18 ], [ %29, %26 ]
  %39 = add nuw nsw i64 %19, 2
  %40 = icmp ult i64 %39, %17
  br i1 %40, label %18, label %41, !llvm.loop !107

41:                                               ; preds = %37, %1
  br i1 %2, label %1, label %42, !llvm.loop !108

42:                                               ; preds = %88, %41
  %43 = phi i1 [ false, %88 ], [ true, %41 ]
  %44 = phi i64 [ 1, %88 ], [ 0, %41 ]
  %45 = getelementptr inbounds [2 x i32], ptr @g_board_size, i64 0, i64 %44
  %46 = load i32, ptr %45, align 4, !tbaa !7
  %47 = icmp sgt i32 %46, 2
  br i1 %47, label %48, label %88

48:                                               ; preds = %42
  %49 = add nuw nsw i32 %46, 3
  %50 = lshr i32 %49, 1
  %51 = xor i64 %44, 1
  %52 = getelementptr inbounds [2 x i32], ptr @g_board_size, i64 0, i64 %51
  %53 = load i32, ptr %52, align 4, !tbaa !7
  %54 = sdiv i32 %53, 2
  %55 = icmp slt i32 %53, 2
  %56 = sext i32 %53 to i64
  %57 = add nsw i32 %54, 1
  %58 = zext i32 %50 to i64
  %59 = zext i32 %57 to i64
  br label %60

60:                                               ; preds = %84, %48
  %61 = phi i64 [ 2, %48 ], [ %86, %84 ]
  %62 = phi i32 [ 90, %48 ], [ %85, %84 ]
  br i1 %55, label %84, label %63

63:                                               ; preds = %60
  %64 = trunc i64 %61 to i32
  %65 = sub i32 %46, %64
  %66 = add i32 %65, 1
  %67 = sext i32 %66 to i64
  br label %68

68:                                               ; preds = %80, %63
  %69 = phi i64 [ 1, %63 ], [ %82, %80 ]
  %70 = phi i32 [ %62, %63 ], [ %81, %80 ]
  %71 = getelementptr inbounds [2 x [32 x [32 x i32]]], ptr @g_first_move, i64 0, i64 %44, i64 %61, i64 %69
  %72 = load i32, ptr %71, align 4, !tbaa !7
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %68
  %75 = add nsw i32 %70, -1
  store i32 %75, ptr %71, align 4, !tbaa !7
  %76 = getelementptr inbounds [2 x [32 x [32 x i32]]], ptr @g_first_move, i64 0, i64 %44, i64 %67, i64 %69
  store i32 %75, ptr %76, align 4, !tbaa !7
  %77 = sub nsw i64 %56, %69
  %78 = getelementptr inbounds [2 x [32 x [32 x i32]]], ptr @g_first_move, i64 0, i64 %44, i64 %67, i64 %77
  store i32 %75, ptr %78, align 4, !tbaa !7
  %79 = getelementptr inbounds [2 x [32 x [32 x i32]]], ptr @g_first_move, i64 0, i64 %44, i64 %61, i64 %77
  store i32 %75, ptr %79, align 4, !tbaa !7
  br label %80

80:                                               ; preds = %74, %68
  %81 = phi i32 [ %75, %74 ], [ %70, %68 ]
  %82 = add nuw nsw i64 %69, 1
  %83 = icmp eq i64 %82, %59
  br i1 %83, label %84, label %68, !llvm.loop !109

84:                                               ; preds = %80, %60
  %85 = phi i32 [ %62, %60 ], [ %81, %80 ]
  %86 = add nuw nsw i64 %61, 2
  %87 = icmp ult i64 %86, %58
  br i1 %87, label %60, label %88, !llvm.loop !110

88:                                               ; preds = %84, %42
  br i1 %43, label %42, label %89, !llvm.loop !111

89:                                               ; preds = %134, %88
  %90 = phi i1 [ false, %134 ], [ true, %88 ]
  %91 = phi i64 [ 1, %134 ], [ 0, %88 ]
  %92 = getelementptr inbounds [2 x i32], ptr @g_board_size, i64 0, i64 %91
  %93 = load i32, ptr %92, align 4, !tbaa !7
  %94 = icmp sgt i32 %93, 4
  br i1 %94, label %95, label %134

95:                                               ; preds = %89
  %96 = add nuw nsw i32 %93, 3
  %97 = lshr i32 %96, 1
  %98 = xor i64 %91, 1
  %99 = getelementptr inbounds [2 x i32], ptr @g_board_size, i64 0, i64 %98
  %100 = load i32, ptr %99, align 4, !tbaa !7
  %101 = sdiv i32 %100, 2
  %102 = icmp slt i32 %100, 2
  %103 = sext i32 %100 to i64
  %104 = sext i32 %101 to i64
  %105 = zext i32 %97 to i64
  br label %106

106:                                              ; preds = %130, %95
  %107 = phi i64 [ 3, %95 ], [ %132, %130 ]
  %108 = phi i32 [ 70, %95 ], [ %131, %130 ]
  br i1 %102, label %130, label %109

109:                                              ; preds = %106
  %110 = trunc i64 %107 to i32
  %111 = sub i32 %93, %110
  %112 = add i32 %111, 1
  %113 = sext i32 %112 to i64
  br label %114

114:                                              ; preds = %126, %109
  %115 = phi i64 [ 1, %109 ], [ %128, %126 ]
  %116 = phi i32 [ %108, %109 ], [ %127, %126 ]
  %117 = getelementptr inbounds [2 x [32 x [32 x i32]]], ptr @g_first_move, i64 0, i64 %91, i64 %107, i64 %115
  %118 = load i32, ptr %117, align 4, !tbaa !7
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %126

120:                                              ; preds = %114
  %121 = add nsw i32 %116, -1
  store i32 %121, ptr %117, align 4, !tbaa !7
  %122 = getelementptr inbounds [2 x [32 x [32 x i32]]], ptr @g_first_move, i64 0, i64 %91, i64 %113, i64 %115
  store i32 %121, ptr %122, align 4, !tbaa !7
  %123 = sub nsw i64 %103, %115
  %124 = getelementptr inbounds [2 x [32 x [32 x i32]]], ptr @g_first_move, i64 0, i64 %91, i64 %113, i64 %123
  store i32 %121, ptr %124, align 4, !tbaa !7
  %125 = getelementptr inbounds [2 x [32 x [32 x i32]]], ptr @g_first_move, i64 0, i64 %91, i64 %107, i64 %123
  store i32 %121, ptr %125, align 4, !tbaa !7
  br label %126

126:                                              ; preds = %120, %114
  %127 = phi i32 [ %121, %120 ], [ %116, %114 ]
  %128 = add nuw nsw i64 %115, 2
  %129 = icmp sgt i64 %128, %104
  br i1 %129, label %130, label %114, !llvm.loop !112

130:                                              ; preds = %126, %106
  %131 = phi i32 [ %108, %106 ], [ %127, %126 ]
  %132 = add nuw nsw i64 %107, 1
  %133 = icmp eq i64 %132, %105
  br i1 %133, label %134, label %106, !llvm.loop !113

134:                                              ; preds = %130, %89
  br i1 %90, label %89, label %135, !llvm.loop !114

135:                                              ; preds = %181, %134
  %136 = phi i1 [ false, %181 ], [ true, %134 ]
  %137 = phi i64 [ 1, %181 ], [ 0, %134 ]
  %138 = getelementptr inbounds [2 x i32], ptr @g_board_size, i64 0, i64 %137
  %139 = load i32, ptr %138, align 4, !tbaa !7
  %140 = icmp sgt i32 %139, 4
  br i1 %140, label %141, label %181

141:                                              ; preds = %135
  %142 = add nuw nsw i32 %139, 3
  %143 = lshr i32 %142, 1
  %144 = xor i64 %137, 1
  %145 = getelementptr inbounds [2 x i32], ptr @g_board_size, i64 0, i64 %144
  %146 = load i32, ptr %145, align 4, !tbaa !7
  %147 = sdiv i32 %146, 2
  %148 = icmp slt i32 %146, 2
  %149 = sext i32 %146 to i64
  %150 = add nsw i32 %147, 1
  %151 = zext i32 %143 to i64
  %152 = zext i32 %150 to i64
  br label %153

153:                                              ; preds = %177, %141
  %154 = phi i64 [ 3, %141 ], [ %179, %177 ]
  %155 = phi i32 [ 50, %141 ], [ %178, %177 ]
  br i1 %148, label %177, label %156

156:                                              ; preds = %153
  %157 = trunc i64 %154 to i32
  %158 = sub i32 %139, %157
  %159 = add i32 %158, 1
  %160 = sext i32 %159 to i64
  br label %161

161:                                              ; preds = %173, %156
  %162 = phi i64 [ 1, %156 ], [ %175, %173 ]
  %163 = phi i32 [ %155, %156 ], [ %174, %173 ]
  %164 = getelementptr inbounds [2 x [32 x [32 x i32]]], ptr @g_first_move, i64 0, i64 %137, i64 %154, i64 %162
  %165 = load i32, ptr %164, align 4, !tbaa !7
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %167, label %173

167:                                              ; preds = %161
  %168 = add nsw i32 %163, -1
  store i32 %168, ptr %164, align 4, !tbaa !7
  %169 = getelementptr inbounds [2 x [32 x [32 x i32]]], ptr @g_first_move, i64 0, i64 %137, i64 %160, i64 %162
  store i32 %168, ptr %169, align 4, !tbaa !7
  %170 = sub nsw i64 %149, %162
  %171 = getelementptr inbounds [2 x [32 x [32 x i32]]], ptr @g_first_move, i64 0, i64 %137, i64 %160, i64 %170
  store i32 %168, ptr %171, align 4, !tbaa !7
  %172 = getelementptr inbounds [2 x [32 x [32 x i32]]], ptr @g_first_move, i64 0, i64 %137, i64 %154, i64 %170
  store i32 %168, ptr %172, align 4, !tbaa !7
  br label %173

173:                                              ; preds = %167, %161
  %174 = phi i32 [ %168, %167 ], [ %163, %161 ]
  %175 = add nuw nsw i64 %162, 1
  %176 = icmp eq i64 %175, %152
  br i1 %176, label %177, label %161, !llvm.loop !115

177:                                              ; preds = %173, %153
  %178 = phi i32 [ %155, %153 ], [ %174, %173 ]
  %179 = add nuw nsw i64 %154, 1
  %180 = icmp eq i64 %179, %151
  br i1 %180, label %181, label %153, !llvm.loop !116

181:                                              ; preds = %177, %135
  br i1 %136, label %135, label %182, !llvm.loop !117

182:                                              ; preds = %228, %181
  %183 = phi i1 [ false, %228 ], [ true, %181 ]
  %184 = phi i64 [ 1, %228 ], [ 0, %181 ]
  %185 = getelementptr inbounds [2 x i32], ptr @g_board_size, i64 0, i64 %184
  %186 = load i32, ptr %185, align 4, !tbaa !7
  %187 = icmp sgt i32 %186, 0
  br i1 %187, label %188, label %228

188:                                              ; preds = %182
  %189 = add nuw nsw i32 %186, 3
  %190 = lshr i32 %189, 1
  %191 = xor i64 %184, 1
  %192 = getelementptr inbounds [2 x i32], ptr @g_board_size, i64 0, i64 %191
  %193 = load i32, ptr %192, align 4, !tbaa !7
  %194 = sdiv i32 %193, 2
  %195 = icmp slt i32 %193, 2
  %196 = sext i32 %193 to i64
  %197 = add nsw i32 %194, 1
  %198 = zext i32 %190 to i64
  %199 = zext i32 %197 to i64
  br label %200

200:                                              ; preds = %224, %188
  %201 = phi i64 [ 1, %188 ], [ %226, %224 ]
  %202 = phi i32 [ 30, %188 ], [ %225, %224 ]
  br i1 %195, label %224, label %203

203:                                              ; preds = %200
  %204 = trunc i64 %201 to i32
  %205 = sub i32 %186, %204
  %206 = add i32 %205, 1
  %207 = sext i32 %206 to i64
  br label %208

208:                                              ; preds = %220, %203
  %209 = phi i64 [ 1, %203 ], [ %222, %220 ]
  %210 = phi i32 [ %202, %203 ], [ %221, %220 ]
  %211 = getelementptr inbounds [2 x [32 x [32 x i32]]], ptr @g_first_move, i64 0, i64 %184, i64 %201, i64 %209
  %212 = load i32, ptr %211, align 4, !tbaa !7
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %214, label %220

214:                                              ; preds = %208
  %215 = add nsw i32 %210, -1
  store i32 %215, ptr %211, align 4, !tbaa !7
  %216 = getelementptr inbounds [2 x [32 x [32 x i32]]], ptr @g_first_move, i64 0, i64 %184, i64 %207, i64 %209
  store i32 %215, ptr %216, align 4, !tbaa !7
  %217 = sub nsw i64 %196, %209
  %218 = getelementptr inbounds [2 x [32 x [32 x i32]]], ptr @g_first_move, i64 0, i64 %184, i64 %207, i64 %217
  store i32 %215, ptr %218, align 4, !tbaa !7
  %219 = getelementptr inbounds [2 x [32 x [32 x i32]]], ptr @g_first_move, i64 0, i64 %184, i64 %201, i64 %217
  store i32 %215, ptr %219, align 4, !tbaa !7
  br label %220

220:                                              ; preds = %214, %208
  %221 = phi i32 [ %215, %214 ], [ %210, %208 ]
  %222 = add nuw nsw i64 %209, 1
  %223 = icmp eq i64 %222, %199
  br i1 %223, label %224, label %208, !llvm.loop !118

224:                                              ; preds = %220, %200
  %225 = phi i32 [ %202, %200 ], [ %221, %220 ]
  %226 = add nuw nsw i64 %201, 1
  %227 = icmp eq i64 %226, %198
  br i1 %227, label %228, label %200, !llvm.loop !119

228:                                              ; preds = %224, %182
  br i1 %183, label %182, label %229, !llvm.loop !120

229:                                              ; preds = %228
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind optsize memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define internal void @init_static_tables() #27 {
  store i32 0, ptr @countbits16, align 16, !tbaa !7
  br label %1

1:                                                ; preds = %1, %0
  %2 = phi i64 [ 1, %0 ], [ %11, %1 ]
  %3 = trunc i64 %2 to i32
  %4 = and i32 %3, 1
  %5 = lshr i64 %2, 1
  %6 = and i64 %5, 2147483647
  %7 = getelementptr inbounds [65536 x i32], ptr @countbits16, i64 0, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !7
  %9 = add nsw i32 %4, %8
  %10 = getelementptr inbounds [65536 x i32], ptr @countbits16, i64 0, i64 %2
  store i32 %9, ptr %10, align 4, !tbaa !7
  %11 = add nuw nsw i64 %2, 1
  %12 = icmp eq i64 %11, 65536
  br i1 %12, label %13, label %1, !llvm.loop !121

13:                                               ; preds = %151, %1
  %14 = phi i64 [ %152, %151 ], [ 0, %1 ]
  %15 = phi <4 x i32> [ %153, %151 ], [ <i32 1, i32 2, i32 3, i32 4>, %1 ]
  %16 = insertelement <4 x i64> poison, i64 %14, i64 0
  %17 = shufflevector <4 x i64> %16, <4 x i64> poison, <4 x i32> zeroinitializer
  %18 = or <4 x i64> %17, <i64 0, i64 1, i64 2, i64 3>
  %19 = icmp ult <4 x i64> %18, <i64 65535, i64 65535, i64 65535, i64 65535>
  %20 = and <4 x i32> %15, <i32 1, i32 1, i32 1, i32 1>
  %21 = icmp eq <4 x i32> %20, zeroinitializer
  %22 = and <4 x i32> %15, <i32 2, i32 2, i32 2, i32 2>
  %23 = icmp eq <4 x i32> %22, zeroinitializer
  %24 = and <4 x i32> %15, <i32 4, i32 4, i32 4, i32 4>
  %25 = icmp eq <4 x i32> %24, zeroinitializer
  %26 = and <4 x i32> %15, <i32 8, i32 8, i32 8, i32 8>
  %27 = icmp eq <4 x i32> %26, zeroinitializer
  %28 = and <4 x i32> %15, <i32 16, i32 16, i32 16, i32 16>
  %29 = icmp eq <4 x i32> %28, zeroinitializer
  %30 = and <4 x i32> %15, <i32 32, i32 32, i32 32, i32 32>
  %31 = icmp eq <4 x i32> %30, zeroinitializer
  %32 = and <4 x i32> %15, <i32 64, i32 64, i32 64, i32 64>
  %33 = icmp eq <4 x i32> %32, zeroinitializer
  %34 = and <4 x i32> %15, <i32 128, i32 128, i32 128, i32 128>
  %35 = icmp eq <4 x i32> %34, zeroinitializer
  %36 = and <4 x i32> %15, <i32 256, i32 256, i32 256, i32 256>
  %37 = icmp eq <4 x i32> %36, zeroinitializer
  %38 = and <4 x i32> %15, <i32 512, i32 512, i32 512, i32 512>
  %39 = icmp eq <4 x i32> %38, zeroinitializer
  %40 = and <4 x i32> %15, <i32 1024, i32 1024, i32 1024, i32 1024>
  %41 = icmp eq <4 x i32> %40, zeroinitializer
  %42 = and <4 x i32> %15, <i32 2048, i32 2048, i32 2048, i32 2048>
  %43 = icmp eq <4 x i32> %42, zeroinitializer
  %44 = and <4 x i32> %15, <i32 4096, i32 4096, i32 4096, i32 4096>
  %45 = icmp eq <4 x i32> %44, zeroinitializer
  %46 = and <4 x i32> %15, <i32 8192, i32 8192, i32 8192, i32 8192>
  %47 = icmp eq <4 x i32> %46, zeroinitializer
  %48 = and <4 x i32> %15, <i32 16384, i32 16384, i32 16384, i32 16384>
  %49 = icmp eq <4 x i32> %48, zeroinitializer
  %50 = and <4 x i32> %15, <i32 32768, i32 32768, i32 32768, i32 32768>
  %51 = icmp ne <4 x i32> %50, zeroinitializer
  %52 = xor <4 x i1> %21, <i1 true, i1 true, i1 true, i1 true>
  %53 = select <4 x i1> %19, <4 x i1> %52, <4 x i1> zeroinitializer
  %54 = select <4 x i1> %19, <4 x i1> %21, <4 x i1> zeroinitializer
  %55 = xor <4 x i1> %23, <i1 true, i1 true, i1 true, i1 true>
  %56 = select <4 x i1> %54, <4 x i1> %55, <4 x i1> zeroinitializer
  %57 = select <4 x i1> %54, <4 x i1> %23, <4 x i1> zeroinitializer
  %58 = xor <4 x i1> %25, <i1 true, i1 true, i1 true, i1 true>
  %59 = select <4 x i1> %57, <4 x i1> %58, <4 x i1> zeroinitializer
  %60 = select <4 x i1> %57, <4 x i1> %25, <4 x i1> zeroinitializer
  %61 = xor <4 x i1> %27, <i1 true, i1 true, i1 true, i1 true>
  %62 = select <4 x i1> %60, <4 x i1> %61, <4 x i1> zeroinitializer
  %63 = select <4 x i1> %60, <4 x i1> %27, <4 x i1> zeroinitializer
  %64 = xor <4 x i1> %29, <i1 true, i1 true, i1 true, i1 true>
  %65 = select <4 x i1> %63, <4 x i1> %64, <4 x i1> zeroinitializer
  %66 = select <4 x i1> %63, <4 x i1> %29, <4 x i1> zeroinitializer
  %67 = xor <4 x i1> %31, <i1 true, i1 true, i1 true, i1 true>
  %68 = select <4 x i1> %66, <4 x i1> %67, <4 x i1> zeroinitializer
  %69 = select <4 x i1> %66, <4 x i1> %31, <4 x i1> zeroinitializer
  %70 = xor <4 x i1> %33, <i1 true, i1 true, i1 true, i1 true>
  %71 = select <4 x i1> %69, <4 x i1> %70, <4 x i1> zeroinitializer
  %72 = select <4 x i1> %69, <4 x i1> %33, <4 x i1> zeroinitializer
  %73 = xor <4 x i1> %35, <i1 true, i1 true, i1 true, i1 true>
  %74 = select <4 x i1> %72, <4 x i1> %73, <4 x i1> zeroinitializer
  %75 = select <4 x i1> %72, <4 x i1> %35, <4 x i1> zeroinitializer
  %76 = xor <4 x i1> %37, <i1 true, i1 true, i1 true, i1 true>
  %77 = select <4 x i1> %75, <4 x i1> %76, <4 x i1> zeroinitializer
  %78 = select <4 x i1> %75, <4 x i1> %37, <4 x i1> zeroinitializer
  %79 = xor <4 x i1> %39, <i1 true, i1 true, i1 true, i1 true>
  %80 = select <4 x i1> %78, <4 x i1> %79, <4 x i1> zeroinitializer
  %81 = select <4 x i1> %78, <4 x i1> %39, <4 x i1> zeroinitializer
  %82 = xor <4 x i1> %41, <i1 true, i1 true, i1 true, i1 true>
  %83 = select <4 x i1> %81, <4 x i1> %82, <4 x i1> zeroinitializer
  %84 = select <4 x i1> %81, <4 x i1> %41, <4 x i1> zeroinitializer
  %85 = xor <4 x i1> %43, <i1 true, i1 true, i1 true, i1 true>
  %86 = select <4 x i1> %84, <4 x i1> %85, <4 x i1> zeroinitializer
  %87 = select <4 x i1> %84, <4 x i1> %43, <4 x i1> zeroinitializer
  %88 = xor <4 x i1> %45, <i1 true, i1 true, i1 true, i1 true>
  %89 = select <4 x i1> %87, <4 x i1> %88, <4 x i1> zeroinitializer
  %90 = select <4 x i1> %87, <4 x i1> %45, <4 x i1> zeroinitializer
  %91 = xor <4 x i1> %47, <i1 true, i1 true, i1 true, i1 true>
  %92 = select <4 x i1> %90, <4 x i1> %91, <4 x i1> zeroinitializer
  %93 = select <4 x i1> %90, <4 x i1> %47, <4 x i1> zeroinitializer
  %94 = xor <4 x i1> %49, <i1 true, i1 true, i1 true, i1 true>
  %95 = select <4 x i1> %93, <4 x i1> %94, <4 x i1> zeroinitializer
  %96 = select <4 x i1> %93, <4 x i1> %49, <4 x i1> zeroinitializer
  %97 = select <4 x i1> %96, <4 x i1> %51, <4 x i1> zeroinitializer
  %98 = zext <4 x i1> %56 to <4 x i32>
  %99 = select <4 x i1> %59, <4 x i32> <i32 2, i32 2, i32 2, i32 2>, <4 x i32> %98
  %100 = select <4 x i1> %62, <4 x i32> <i32 3, i32 3, i32 3, i32 3>, <4 x i32> %99
  %101 = select <4 x i1> %65, <4 x i32> <i32 4, i32 4, i32 4, i32 4>, <4 x i32> %100
  %102 = select <4 x i1> %68, <4 x i32> <i32 5, i32 5, i32 5, i32 5>, <4 x i32> %101
  %103 = select <4 x i1> %71, <4 x i32> <i32 6, i32 6, i32 6, i32 6>, <4 x i32> %102
  %104 = select <4 x i1> %74, <4 x i32> <i32 7, i32 7, i32 7, i32 7>, <4 x i32> %103
  %105 = select <4 x i1> %77, <4 x i32> <i32 8, i32 8, i32 8, i32 8>, <4 x i32> %104
  %106 = select <4 x i1> %80, <4 x i32> <i32 9, i32 9, i32 9, i32 9>, <4 x i32> %105
  %107 = select <4 x i1> %83, <4 x i32> <i32 10, i32 10, i32 10, i32 10>, <4 x i32> %106
  %108 = select <4 x i1> %86, <4 x i32> <i32 11, i32 11, i32 11, i32 11>, <4 x i32> %107
  %109 = select <4 x i1> %89, <4 x i32> <i32 12, i32 12, i32 12, i32 12>, <4 x i32> %108
  %110 = select <4 x i1> %92, <4 x i32> <i32 13, i32 13, i32 13, i32 13>, <4 x i32> %109
  %111 = select <4 x i1> %95, <4 x i32> <i32 14, i32 14, i32 14, i32 14>, <4 x i32> %110
  %112 = select <4 x i1> %97, <4 x i32> <i32 15, i32 15, i32 15, i32 15>, <4 x i32> %111
  %113 = or <4 x i1> %95, %53
  %114 = or <4 x i1> %113, %97
  %115 = or <4 x i1> %114, %92
  %116 = or <4 x i1> %115, %89
  %117 = or <4 x i1> %116, %86
  %118 = or <4 x i1> %117, %83
  %119 = or <4 x i1> %118, %80
  %120 = or <4 x i1> %119, %77
  %121 = or <4 x i1> %120, %74
  %122 = or <4 x i1> %121, %71
  %123 = or <4 x i1> %122, %68
  %124 = or <4 x i1> %123, %65
  %125 = or <4 x i1> %124, %62
  %126 = or <4 x i1> %125, %59
  %127 = or <4 x i1> %126, %56
  %128 = extractelement <4 x i1> %127, i64 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %13
  %130 = or i64 %14, 1
  %131 = getelementptr inbounds [65536 x i32], ptr @lastbit16, i64 0, i64 %130
  %132 = extractelement <4 x i32> %112, i64 0
  store i32 %132, ptr %131, align 4, !tbaa !7
  br label %133

133:                                              ; preds = %129, %13
  %134 = extractelement <4 x i1> %127, i64 1
  br i1 %134, label %135, label %139

135:                                              ; preds = %133
  %136 = or i64 %14, 2
  %137 = getelementptr inbounds [65536 x i32], ptr @lastbit16, i64 0, i64 %136
  %138 = extractelement <4 x i32> %112, i64 1
  store i32 %138, ptr %137, align 8, !tbaa !7
  br label %139

139:                                              ; preds = %135, %133
  %140 = extractelement <4 x i1> %127, i64 2
  br i1 %140, label %141, label %145

141:                                              ; preds = %139
  %142 = or i64 %14, 3
  %143 = getelementptr inbounds [65536 x i32], ptr @lastbit16, i64 0, i64 %142
  %144 = extractelement <4 x i32> %112, i64 2
  store i32 %144, ptr %143, align 4, !tbaa !7
  br label %145

145:                                              ; preds = %141, %139
  %146 = extractelement <4 x i1> %127, i64 3
  br i1 %146, label %147, label %151

147:                                              ; preds = %145
  %148 = add i64 %14, 4
  %149 = getelementptr inbounds [65536 x i32], ptr @lastbit16, i64 0, i64 %148
  %150 = extractelement <4 x i32> %112, i64 3
  store i32 %150, ptr %149, align 16, !tbaa !7
  br label %151

151:                                              ; preds = %147, %145
  %152 = add i64 %14, 4
  %153 = add <4 x i32> %15, <i32 4, i32 4, i32 4, i32 4>
  %154 = icmp eq i64 %152, 65536
  br i1 %154, label %155, label %13, !llvm.loop !122

155:                                              ; preds = %151
  store i32 100, ptr @lastbit16, align 16, !tbaa !7
  br label %156

156:                                              ; preds = %173, %155
  %157 = phi i64 [ 0, %155 ], [ %181, %173 ]
  %158 = phi i32 [ 0, %155 ], [ %174, %173 ]
  %159 = icmp eq i64 %157, 0
  br i1 %159, label %173, label %160

160:                                              ; preds = %156
  %161 = trunc i64 %157 to i32
  br label %162

162:                                              ; preds = %162, %160
  %163 = phi i32 [ %171, %162 ], [ 0, %160 ]
  %164 = phi i32 [ %170, %162 ], [ %161, %160 ]
  %165 = sub i32 0, %164
  %166 = and i32 %164, %165
  %167 = shl i32 %166, 1
  %168 = or i32 %167, %166
  %169 = xor i32 %168, -1
  %170 = and i32 %164, %169
  %171 = add i32 %163, 1
  %172 = icmp eq i32 %170, 0
  br i1 %172, label %173, label %162, !llvm.loop !123

173:                                              ; preds = %162, %156
  %174 = phi i32 [ %158, %156 ], [ %166, %162 ]
  %175 = phi i32 [ 0, %156 ], [ %171, %162 ]
  %176 = and i32 %174, 32768
  %177 = icmp eq i32 %176, 0
  %178 = or i32 %175, -268435456
  %179 = select i1 %177, i32 %175, i32 %178
  %180 = getelementptr inbounds [65536 x i32], ptr @move_table16, i64 0, i64 %157
  store i32 %179, ptr %180, align 4, !tbaa !7
  %181 = add nuw nsw i64 %157, 1
  %182 = icmp eq i64 %181, 65536
  br i1 %182, label %183, label %156, !llvm.loop !124

183:                                              ; preds = %173
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind optsize memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define internal void @init_less_static_tables() #27 {
  %1 = load i32, ptr @g_board_size, align 4, !tbaa !7
  %2 = load i32, ptr getelementptr inbounds ([2 x i32], ptr @g_board_size, i64 0, i64 1), align 4, !tbaa !7
  br label %3

3:                                                ; preds = %23, %0
  %4 = phi i64 [ 0, %0 ], [ %24, %23 ]
  br label %13

5:                                                ; preds = %23
  %6 = icmp sgt i32 %1, 0
  br i1 %6, label %7, label %60

7:                                                ; preds = %5
  %8 = icmp sgt i32 %2, 0
  %9 = sext i32 %2 to i64
  %10 = zext i32 %1 to i64
  %11 = zext i32 %1 to i64
  %12 = zext i32 %2 to i64
  br label %26

13:                                               ; preds = %13, %3
  %14 = phi i64 [ 0, %3 ], [ %21, %13 ]
  %15 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo.9]]], ptr @g_keyinfo, i64 0, i64 0, i64 %4, i64 %14
  %16 = getelementptr inbounds %struct.Basic_Info, ptr %15, i64 0, i32 1
  store i32 -1, ptr %16, align 4, !tbaa !23
  store i32 -1, ptr %15, align 16, !tbaa !25
  %17 = getelementptr inbounds %struct.Basic_Info, ptr %15, i64 0, i32 2
  store i32 0, ptr %17, align 8, !tbaa !52
  %18 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo.9]]], ptr @g_keyinfo, i64 0, i64 1, i64 %4, i64 %14
  %19 = getelementptr inbounds %struct.Basic_Info, ptr %18, i64 0, i32 1
  store i32 -1, ptr %19, align 4, !tbaa !23
  store i32 -1, ptr %18, align 16, !tbaa !25
  %20 = getelementptr inbounds %struct.Basic_Info, ptr %18, i64 0, i32 2
  store i32 0, ptr %20, align 8, !tbaa !52
  %21 = add nuw nsw i64 %14, 1
  %22 = icmp eq i64 %21, 32
  br i1 %22, label %23, label %13, !llvm.loop !125

23:                                               ; preds = %13
  %24 = add nuw nsw i64 %4, 1
  %25 = icmp eq i64 %24, 32
  br i1 %25, label %5, label %3, !llvm.loop !126

26:                                               ; preds = %57, %7
  %27 = phi i64 [ 0, %7 ], [ %58, %57 ]
  br i1 %8, label %30, label %28

28:                                               ; preds = %26
  %29 = add nuw nsw i64 %27, 1
  br label %57

30:                                               ; preds = %26
  %31 = trunc i64 %27 to i32
  %32 = mul nsw i32 %2, %31
  %33 = add nuw nsw i64 %27, 1
  %34 = icmp slt i64 %33, %10
  %35 = trunc i64 %33 to i32
  %36 = mul nsw i32 %2, %35
  br label %37

37:                                               ; preds = %55, %30
  %38 = phi i64 [ 0, %30 ], [ %39, %55 ]
  %39 = add nuw nsw i64 %38, 1
  %40 = icmp slt i64 %39, %9
  br i1 %40, label %41, label %48

41:                                               ; preds = %37
  %42 = trunc i64 %38 to i32
  %43 = add nsw i32 %32, %42
  %44 = getelementptr inbounds [32 x [32 x %struct.KeyInfo.9]], ptr @g_keyinfo, i64 0, i64 %33, i64 %39
  store i32 %43, ptr %44, align 16, !tbaa !68
  %45 = trunc i64 %39 to i32
  %46 = add nsw i32 %32, %45
  %47 = getelementptr inbounds %struct.Basic_Info, ptr %44, i64 0, i32 1
  store i32 %46, ptr %47, align 4, !tbaa !70
  br label %48

48:                                               ; preds = %41, %37
  br i1 %34, label %49, label %55

49:                                               ; preds = %48
  %50 = trunc i64 %38 to i32
  %51 = add nsw i32 %32, %50
  %52 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo.9]]], ptr @g_keyinfo, i64 0, i64 1, i64 %39, i64 %33
  store i32 %51, ptr %52, align 16, !tbaa !68
  %53 = add nsw i32 %36, %50
  %54 = getelementptr inbounds %struct.Basic_Info, ptr %52, i64 0, i32 1
  store i32 %53, ptr %54, align 4, !tbaa !70
  br label %55

55:                                               ; preds = %49, %48
  %56 = icmp eq i64 %39, %12
  br i1 %56, label %57, label %37, !llvm.loop !127

57:                                               ; preds = %55, %28
  %58 = phi i64 [ %29, %28 ], [ %33, %55 ]
  %59 = icmp eq i64 %58, %11
  br i1 %59, label %60, label %26, !llvm.loop !128

60:                                               ; preds = %57, %5
  br label %61

61:                                               ; preds = %180, %60
  %62 = phi i64 [ %181, %180 ], [ 0, %60 ]
  br label %63

63:                                               ; preds = %177, %61
  %64 = phi i64 [ 0, %61 ], [ %178, %177 ]
  br label %65

65:                                               ; preds = %170, %63
  %66 = phi i1 [ true, %63 ], [ false, %170 ]
  %67 = phi i64 [ 0, %63 ], [ 1, %170 ]
  %68 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo.9]]], ptr @g_keyinfo, i64 0, i64 %67, i64 %62, i64 %64
  %69 = load i32, ptr %68, align 16, !tbaa !25
  %70 = icmp eq i32 %69, -1
  br i1 %70, label %71, label %74

71:                                               ; preds = %65
  %72 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo.9]]], ptr @g_keyinfo, i64 0, i64 %67, i64 %62, i64 %64, i32 1, i32 1
  store <4 x i32> <i32 -1, i32 -1, i32 0, i32 -1>, ptr %68, align 16, !tbaa !7
  store <4 x i32> <i32 -1, i32 0, i32 -1, i32 -1>, ptr %72, align 16, !tbaa !7
  %73 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo.9]]], ptr @g_keyinfo, i64 0, i64 %67, i64 %62, i64 %64, i32 2, i32 2
  store i32 0, ptr %73, align 16, !tbaa !52
  br label %170

74:                                               ; preds = %65
  %75 = sdiv i32 %69, %2
  %76 = srem i32 %69, %2
  %77 = getelementptr inbounds %struct.Basic_Info, ptr %68, i64 0, i32 1
  %78 = load i32, ptr %77, align 4, !tbaa !23
  %79 = sdiv i32 %78, %2
  %80 = srem i32 %78, %2
  %81 = mul nsw i32 %75, %2
  %82 = xor i32 %76, -1
  %83 = add i32 %2, %82
  %84 = add nsw i32 %83, %81
  %85 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo.9]]], ptr @g_keyinfo, i64 0, i64 %67, i64 %62, i64 %64, i32 1
  store i32 %84, ptr %85, align 4, !tbaa !72
  %86 = mul nsw i32 %79, %2
  %87 = xor i32 %80, -1
  %88 = add i32 %2, %87
  %89 = add nsw i32 %88, %86
  %90 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo.9]]], ptr @g_keyinfo, i64 0, i64 %67, i64 %62, i64 %64, i32 1, i32 1
  store i32 %89, ptr %90, align 16, !tbaa !73
  %91 = xor i32 %75, -1
  %92 = add i32 %1, %91
  %93 = mul nsw i32 %92, %2
  %94 = add nsw i32 %93, %76
  %95 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo.9]]], ptr @g_keyinfo, i64 0, i64 %67, i64 %62, i64 %64, i32 2
  store i32 %94, ptr %95, align 8, !tbaa !75
  %96 = xor i32 %79, -1
  %97 = add i32 %1, %96
  %98 = mul nsw i32 %97, %2
  %99 = add nsw i32 %98, %80
  %100 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo.9]]], ptr @g_keyinfo, i64 0, i64 %67, i64 %62, i64 %64, i32 2, i32 1
  store i32 %99, ptr %100, align 4, !tbaa !76
  %101 = add nsw i32 %93, %83
  %102 = add nsw i32 %98, %88
  %103 = add nsw i32 %75, 1
  %104 = sext i32 %103 to i64
  %105 = add nsw i32 %76, 1
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds [32 x [32 x i32]], ptr @g_zobrist, i64 0, i64 %104, i64 %106
  %108 = load i32, ptr %107, align 4, !tbaa !7
  %109 = add nsw i32 %79, 1
  %110 = sext i32 %109 to i64
  %111 = add nsw i32 %80, 1
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds [32 x [32 x i32]], ptr @g_zobrist, i64 0, i64 %110, i64 %112
  %114 = load i32, ptr %113, align 4, !tbaa !7
  %115 = xor i32 %114, %108
  %116 = getelementptr inbounds %struct.Basic_Info, ptr %68, i64 0, i32 2
  store i32 %115, ptr %116, align 8, !tbaa !52
  %117 = sdiv i32 %84, %2
  %118 = srem i32 %84, %2
  %119 = add nsw i32 %117, 1
  %120 = sext i32 %119 to i64
  %121 = add nsw i32 %118, 1
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds [32 x [32 x i32]], ptr @g_zobrist, i64 0, i64 %120, i64 %122
  %124 = load i32, ptr %123, align 4, !tbaa !7
  %125 = sdiv i32 %89, %2
  %126 = srem i32 %89, %2
  %127 = add nsw i32 %125, 1
  %128 = sext i32 %127 to i64
  %129 = add nsw i32 %126, 1
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds [32 x [32 x i32]], ptr @g_zobrist, i64 0, i64 %128, i64 %130
  %132 = load i32, ptr %131, align 4, !tbaa !7
  %133 = xor i32 %132, %124
  %134 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo.9]]], ptr @g_keyinfo, i64 0, i64 %67, i64 %62, i64 %64, i32 1, i32 2
  store i32 %133, ptr %134, align 4, !tbaa !52
  %135 = sdiv i32 %94, %2
  %136 = srem i32 %94, %2
  %137 = add nsw i32 %135, 1
  %138 = sext i32 %137 to i64
  %139 = add nsw i32 %136, 1
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds [32 x [32 x i32]], ptr @g_zobrist, i64 0, i64 %138, i64 %140
  %142 = load i32, ptr %141, align 4, !tbaa !7
  %143 = sdiv i32 %99, %2
  %144 = srem i32 %99, %2
  %145 = add nsw i32 %143, 1
  %146 = sext i32 %145 to i64
  %147 = add nsw i32 %144, 1
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds [32 x [32 x i32]], ptr @g_zobrist, i64 0, i64 %146, i64 %148
  %150 = load i32, ptr %149, align 4, !tbaa !7
  %151 = xor i32 %150, %142
  %152 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo.9]]], ptr @g_keyinfo, i64 0, i64 %67, i64 %62, i64 %64, i32 2, i32 2
  store i32 %151, ptr %152, align 16, !tbaa !52
  %153 = sdiv i32 %101, %2
  %154 = srem i32 %101, %2
  %155 = add nsw i32 %153, 1
  %156 = sext i32 %155 to i64
  %157 = add nsw i32 %154, 1
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds [32 x [32 x i32]], ptr @g_zobrist, i64 0, i64 %156, i64 %158
  %160 = load i32, ptr %159, align 4, !tbaa !7
  %161 = sdiv i32 %102, %2
  %162 = srem i32 %102, %2
  %163 = add nsw i32 %161, 1
  %164 = sext i32 %163 to i64
  %165 = add nsw i32 %162, 1
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds [32 x [32 x i32]], ptr @g_zobrist, i64 0, i64 %164, i64 %166
  %168 = load i32, ptr %167, align 4, !tbaa !7
  %169 = xor i32 %168, %160
  br label %170

170:                                              ; preds = %74, %71
  %171 = phi i32 [ -1, %71 ], [ %102, %74 ]
  %172 = phi i32 [ -1, %71 ], [ %101, %74 ]
  %173 = phi i32 [ 0, %71 ], [ %169, %74 ]
  %174 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo.9]]], ptr @g_keyinfo, i64 0, i64 %67, i64 %62, i64 %64, i32 3, i32 1
  store i32 %171, ptr %174, align 8
  %175 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo.9]]], ptr @g_keyinfo, i64 0, i64 %67, i64 %62, i64 %64, i32 3
  store i32 %172, ptr %175, align 4
  %176 = getelementptr inbounds [2 x [32 x [32 x %struct.KeyInfo.9]]], ptr @g_keyinfo, i64 0, i64 %67, i64 %62, i64 %64, i32 3, i32 2
  store i32 %173, ptr %176, align 4
  br i1 %66, label %65, label %177, !llvm.loop !129

177:                                              ; preds = %170
  %178 = add nuw nsw i64 %64, 1
  %179 = icmp eq i64 %178, 32
  br i1 %179, label %180, label %63, !llvm.loop !130

180:                                              ; preds = %177
  %181 = add nuw nsw i64 %62, 1
  %182 = icmp eq i64 %181, 32
  br i1 %182, label %183, label %61, !llvm.loop !131

183:                                              ; preds = %180
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define internal void @update_safe(i32 noundef %0, i32 noundef %1) #28 {
  %3 = sext i32 %0 to i64
  %4 = add nsw i32 %1, -1
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds [2 x [32 x i32]], ptr @g_board, i64 0, i64 %3, i64 %5
  %7 = load i32, ptr %6, align 4, !tbaa !7
  %8 = add nsw i32 %1, 1
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [2 x [32 x i32]], ptr @g_board, i64 0, i64 %3, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !7
  %12 = and i32 %11, %7
  %13 = sext i32 %1 to i64
  %14 = getelementptr inbounds [2 x [32 x i32]], ptr @g_board, i64 0, i64 %3, i64 %13
  %15 = load i32, ptr %14, align 4, !tbaa !7
  %16 = shl i32 %15, 1
  %17 = or i32 %16, %15
  %18 = xor i32 %17, -1
  %19 = shl i32 %12, 1
  %20 = and i32 %19, %18
  %21 = and i32 %20, %12
  %22 = and i32 %21, 65534
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds [65536 x i32], ptr @move_table16, i64 0, i64 %23
  %25 = load i32, ptr %24, align 8, !tbaa !7
  %26 = icmp ult i32 %25, 268435456
  %27 = lshr i32 %21, 16
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds [65536 x i32], ptr @move_table16, i64 0, i64 %28
  %30 = load i32, ptr %29, align 4, !tbaa !7
  %31 = add i32 %30, %25
  %32 = select i1 %26, i32 65535, i32 65534
  %33 = and i32 %31, %32
  %34 = getelementptr inbounds [2 x [32 x %struct.Basic_Info]], ptr @g_info, i64 0, i64 %3, i64 %13
  %35 = load i32, ptr %34, align 4, !tbaa !25
  %36 = sub i32 %33, %35
  %37 = getelementptr inbounds [2 x %struct.Basic_Info], ptr @g_info_totals, i64 0, i64 %3
  %38 = load i32, ptr %37, align 4, !tbaa !25
  %39 = add nsw i32 %36, %38
  store i32 %39, ptr %37, align 4, !tbaa !25
  store i32 %33, ptr %34, align 4, !tbaa !25
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define internal void @update_real(i32 noundef %0, i32 noundef %1) #28 {
  %3 = sext i32 %0 to i64
  %4 = sext i32 %1 to i64
  %5 = getelementptr inbounds [2 x [32 x i32]], ptr @g_board, i64 0, i64 %3, i64 %4
  %6 = load i32, ptr %5, align 4, !tbaa !7
  %7 = shl i32 %6, 1
  %8 = or i32 %7, %6
  %9 = xor i32 %8, -1
  %10 = and i32 %9, 65535
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds [65536 x i32], ptr @move_table16, i64 0, i64 %11
  %13 = load i32, ptr %12, align 4, !tbaa !7
  %14 = icmp ult i32 %13, 268435456
  %15 = lshr i32 %9, 16
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds [65536 x i32], ptr @move_table16, i64 0, i64 %16
  %18 = load i32, ptr %17, align 4, !tbaa !7
  %19 = add i32 %18, %13
  %20 = select i1 %14, i32 65535, i32 65534
  %21 = and i32 %19, %20
  %22 = getelementptr inbounds [2 x [32 x %struct.Basic_Info]], ptr @g_info, i64 0, i64 %3, i64 %4, i32 1
  %23 = load i32, ptr %22, align 4, !tbaa !23
  %24 = sub i32 %21, %23
  %25 = getelementptr inbounds [2 x %struct.Basic_Info], ptr @g_info_totals, i64 0, i64 %3, i32 1
  %26 = load i32, ptr %25, align 4, !tbaa !23
  %27 = add nsw i32 %24, %26
  store i32 %27, ptr %25, align 4, !tbaa !23
  store i32 %21, ptr %22, align 4, !tbaa !23
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define internal void @toggle_move(i64 %0, i32 %1, i32 noundef %2) #28 {
  %4 = trunc i64 %0 to i32
  %5 = lshr i64 %0, 32
  %6 = trunc i64 %5 to i32
  %7 = and i32 %2, 1
  %8 = xor i32 %2, 1
  %9 = shl i32 3, %6
  %10 = zext i32 %7 to i64
  %11 = shl i64 %0, 32
  %12 = ashr exact i64 %11, 32
  %13 = getelementptr inbounds [2 x [32 x i32]], ptr @g_board, i64 0, i64 %10, i64 %12
  %14 = load i32, ptr %13, align 4, !tbaa !7
  %15 = xor i32 %14, %9
  store i32 %15, ptr %13, align 4, !tbaa !7
  %16 = shl nuw i32 1, %4
  %17 = sext i32 %8 to i64
  %18 = ashr i64 %0, 32
  %19 = getelementptr inbounds [2 x [32 x i32]], ptr @g_board, i64 0, i64 %17, i64 %18
  %20 = load i32, ptr %19, align 4, !tbaa !7
  %21 = xor i32 %20, %16
  store i32 %21, ptr %19, align 4, !tbaa !7
  %22 = add nsw i32 %6, 1
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [2 x [32 x i32]], ptr @g_board, i64 0, i64 %17, i64 %23
  %25 = load i32, ptr %24, align 4, !tbaa !7
  %26 = xor i32 %25, %16
  store i32 %26, ptr %24, align 4, !tbaa !7
  %27 = add nsw i32 %4, -1
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %3
  %30 = getelementptr inbounds [2 x [32 x i32]], ptr @g_board, i64 0, i64 %10, i64 0
  %31 = load i32, ptr %30, align 16, !tbaa !7
  %32 = load i32, ptr %13, align 4, !tbaa !7
  %33 = getelementptr inbounds [2 x %struct.Basic_Info], ptr @g_info_totals, i64 0, i64 %10
  %34 = load i32, ptr %33, align 4, !tbaa !25
  br label %69

35:                                               ; preds = %3
  %36 = add i64 %11, -8589934592
  %37 = ashr exact i64 %36, 32
  %38 = getelementptr inbounds [2 x [32 x i32]], ptr @g_board, i64 0, i64 %10, i64 %37
  %39 = load i32, ptr %38, align 4, !tbaa !7
  %40 = load i32, ptr %13, align 4, !tbaa !7
  %41 = and i32 %40, %39
  %42 = sext i32 %27 to i64
  %43 = getelementptr inbounds [2 x [32 x i32]], ptr @g_board, i64 0, i64 %10, i64 %42
  %44 = load i32, ptr %43, align 4, !tbaa !7
  %45 = shl i32 %44, 1
  %46 = or i32 %45, %44
  %47 = xor i32 %46, -1
  %48 = shl i32 %41, 1
  %49 = and i32 %48, %47
  %50 = and i32 %49, %41
  %51 = and i32 %50, 65534
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds [65536 x i32], ptr @move_table16, i64 0, i64 %52
  %54 = load i32, ptr %53, align 8, !tbaa !7
  %55 = icmp ult i32 %54, 268435456
  %56 = lshr i32 %50, 16
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds [65536 x i32], ptr @move_table16, i64 0, i64 %57
  %59 = load i32, ptr %58, align 4, !tbaa !7
  %60 = add i32 %59, %54
  %61 = select i1 %55, i32 65535, i32 65534
  %62 = and i32 %60, %61
  %63 = getelementptr inbounds [2 x [32 x %struct.Basic_Info]], ptr @g_info, i64 0, i64 %10, i64 %42
  %64 = load i32, ptr %63, align 4, !tbaa !25
  %65 = sub i32 %62, %64
  %66 = getelementptr inbounds [2 x %struct.Basic_Info], ptr @g_info_totals, i64 0, i64 %10
  %67 = load i32, ptr %66, align 4, !tbaa !25
  %68 = add nsw i32 %65, %67
  store i32 %62, ptr %63, align 4, !tbaa !25
  br label %69

69:                                               ; preds = %35, %29
  %70 = phi i32 [ %34, %29 ], [ %68, %35 ]
  %71 = phi i32 [ %32, %29 ], [ %40, %35 ]
  %72 = phi i32 [ %31, %29 ], [ %44, %35 ]
  %73 = add i64 %11, 4294967296
  %74 = ashr exact i64 %73, 32
  %75 = getelementptr inbounds [2 x [32 x i32]], ptr @g_board, i64 0, i64 %10, i64 %74
  %76 = load i32, ptr %75, align 4, !tbaa !7
  %77 = and i32 %76, %72
  %78 = shl i32 %71, 1
  %79 = or i32 %78, %71
  %80 = xor i32 %79, -1
  %81 = shl i32 %77, 1
  %82 = and i32 %81, %77
  %83 = and i32 %82, %80
  %84 = and i32 %83, 65534
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds [65536 x i32], ptr @move_table16, i64 0, i64 %85
  %87 = load i32, ptr %86, align 8, !tbaa !7
  %88 = icmp ult i32 %87, 268435456
  %89 = lshr i32 %83, 16
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds [65536 x i32], ptr @move_table16, i64 0, i64 %90
  %92 = load i32, ptr %91, align 4, !tbaa !7
  %93 = add i32 %92, %87
  %94 = select i1 %88, i32 65535, i32 65534
  %95 = and i32 %93, %94
  %96 = getelementptr inbounds [2 x [32 x %struct.Basic_Info]], ptr @g_info, i64 0, i64 %10, i64 %12
  %97 = load i32, ptr %96, align 4, !tbaa !25
  %98 = sub i32 %95, %97
  %99 = getelementptr inbounds [2 x %struct.Basic_Info], ptr @g_info_totals, i64 0, i64 %10
  %100 = add nsw i32 %98, %70
  store i32 %100, ptr %99, align 4, !tbaa !25
  store i32 %95, ptr %96, align 4, !tbaa !25
  %101 = getelementptr inbounds [2 x i32], ptr @g_board_size, i64 0, i64 %10
  %102 = load i32, ptr %101, align 4, !tbaa !7
  %103 = icmp eq i32 %102, %4
  br i1 %103, label %132, label %104

104:                                              ; preds = %69
  %105 = add i64 %11, 8589934592
  %106 = ashr exact i64 %105, 32
  %107 = getelementptr inbounds [2 x [32 x i32]], ptr @g_board, i64 0, i64 %10, i64 %106
  %108 = load i32, ptr %107, align 4, !tbaa !7
  %109 = and i32 %108, %71
  %110 = shl i32 %76, 1
  %111 = or i32 %110, %76
  %112 = xor i32 %111, -1
  %113 = shl i32 %109, 1
  %114 = and i32 %113, %112
  %115 = and i32 %114, %109
  %116 = and i32 %115, 65534
  %117 = zext i32 %116 to i64
  %118 = getelementptr inbounds [65536 x i32], ptr @move_table16, i64 0, i64 %117
  %119 = load i32, ptr %118, align 8, !tbaa !7
  %120 = icmp ult i32 %119, 268435456
  %121 = lshr i32 %115, 16
  %122 = zext i32 %121 to i64
  %123 = getelementptr inbounds [65536 x i32], ptr @move_table16, i64 0, i64 %122
  %124 = load i32, ptr %123, align 4, !tbaa !7
  %125 = add i32 %124, %119
  %126 = select i1 %120, i32 65535, i32 65534
  %127 = and i32 %125, %126
  %128 = getelementptr inbounds [2 x [32 x %struct.Basic_Info]], ptr @g_info, i64 0, i64 %10, i64 %74
  %129 = load i32, ptr %128, align 4, !tbaa !25
  %130 = sub i32 %100, %129
  %131 = add i32 %130, %127
  store i32 %131, ptr %99, align 4, !tbaa !25
  store i32 %127, ptr %128, align 4, !tbaa !25
  br label %132

132:                                              ; preds = %104, %69
  %133 = add nsw i32 %6, -1
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %169, label %135

135:                                              ; preds = %132
  %136 = add i64 %0, -8589934592
  %137 = ashr i64 %136, 32
  %138 = getelementptr inbounds [2 x [32 x i32]], ptr @g_board, i64 0, i64 %17, i64 %137
  %139 = load i32, ptr %138, align 4, !tbaa !7
  %140 = load i32, ptr %19, align 4, !tbaa !7
  %141 = and i32 %140, %139
  %142 = sext i32 %133 to i64
  %143 = getelementptr inbounds [2 x [32 x i32]], ptr @g_board, i64 0, i64 %17, i64 %142
  %144 = load i32, ptr %143, align 4, !tbaa !7
  %145 = shl i32 %144, 1
  %146 = or i32 %145, %144
  %147 = xor i32 %146, -1
  %148 = shl i32 %141, 1
  %149 = and i32 %148, %147
  %150 = and i32 %149, %141
  %151 = and i32 %150, 65534
  %152 = zext i32 %151 to i64
  %153 = getelementptr inbounds [65536 x i32], ptr @move_table16, i64 0, i64 %152
  %154 = load i32, ptr %153, align 8, !tbaa !7
  %155 = icmp ult i32 %154, 268435456
  %156 = lshr i32 %150, 16
  %157 = zext i32 %156 to i64
  %158 = getelementptr inbounds [65536 x i32], ptr @move_table16, i64 0, i64 %157
  %159 = load i32, ptr %158, align 4, !tbaa !7
  %160 = add i32 %159, %154
  %161 = select i1 %155, i32 65535, i32 65534
  %162 = and i32 %160, %161
  %163 = getelementptr inbounds [2 x [32 x %struct.Basic_Info]], ptr @g_info, i64 0, i64 %17, i64 %142
  %164 = load i32, ptr %163, align 4, !tbaa !25
  %165 = sub i32 %162, %164
  %166 = getelementptr inbounds [2 x %struct.Basic_Info], ptr @g_info_totals, i64 0, i64 %17
  %167 = load i32, ptr %166, align 4, !tbaa !25
  %168 = add nsw i32 %165, %167
  store i32 %168, ptr %166, align 4, !tbaa !25
  store i32 %162, ptr %163, align 4, !tbaa !25
  br label %169

169:                                              ; preds = %135, %132
  %170 = getelementptr inbounds [2 x i32], ptr @g_board_size, i64 0, i64 %17
  %171 = load i32, ptr %170, align 4, !tbaa !7
  %172 = icmp eq i32 %22, %171
  br i1 %172, label %211, label %173

173:                                              ; preds = %169
  %174 = add i64 %0, 4294967296
  %175 = ashr i64 %174, 32
  %176 = getelementptr inbounds [2 x [32 x i32]], ptr @g_board, i64 0, i64 %17, i64 %175
  %177 = load i32, ptr %176, align 4, !tbaa !7
  %178 = add i64 %0, 12884901888
  %179 = ashr i64 %178, 32
  %180 = getelementptr inbounds [2 x [32 x i32]], ptr @g_board, i64 0, i64 %17, i64 %179
  %181 = load i32, ptr %180, align 4, !tbaa !7
  %182 = and i32 %181, %177
  %183 = add i64 %0, 8589934592
  %184 = ashr i64 %183, 32
  %185 = getelementptr inbounds [2 x [32 x i32]], ptr @g_board, i64 0, i64 %17, i64 %184
  %186 = load i32, ptr %185, align 4, !tbaa !7
  %187 = shl i32 %186, 1
  %188 = or i32 %187, %186
  %189 = xor i32 %188, -1
  %190 = shl i32 %182, 1
  %191 = and i32 %190, %189
  %192 = and i32 %191, %182
  %193 = and i32 %192, 65534
  %194 = zext i32 %193 to i64
  %195 = getelementptr inbounds [65536 x i32], ptr @move_table16, i64 0, i64 %194
  %196 = load i32, ptr %195, align 8, !tbaa !7
  %197 = icmp ult i32 %196, 268435456
  %198 = lshr i32 %192, 16
  %199 = zext i32 %198 to i64
  %200 = getelementptr inbounds [65536 x i32], ptr @move_table16, i64 0, i64 %199
  %201 = load i32, ptr %200, align 4, !tbaa !7
  %202 = add i32 %201, %196
  %203 = select i1 %197, i32 65535, i32 65534
  %204 = and i32 %202, %203
  %205 = getelementptr inbounds [2 x [32 x %struct.Basic_Info]], ptr @g_info, i64 0, i64 %17, i64 %184
  %206 = load i32, ptr %205, align 4, !tbaa !25
  %207 = sub i32 %204, %206
  %208 = getelementptr inbounds [2 x %struct.Basic_Info], ptr @g_info_totals, i64 0, i64 %17
  %209 = load i32, ptr %208, align 4, !tbaa !25
  %210 = add nsw i32 %207, %209
  store i32 %210, ptr %208, align 4, !tbaa !25
  store i32 %204, ptr %205, align 4, !tbaa !25
  br label %211

211:                                              ; preds = %173, %169
  %212 = and i32 %80, 65535
  %213 = zext i32 %212 to i64
  %214 = getelementptr inbounds [65536 x i32], ptr @move_table16, i64 0, i64 %213
  %215 = load i32, ptr %214, align 4, !tbaa !7
  %216 = icmp ult i32 %215, 268435456
  %217 = lshr i32 %80, 16
  %218 = zext i32 %217 to i64
  %219 = getelementptr inbounds [65536 x i32], ptr @move_table16, i64 0, i64 %218
  %220 = load i32, ptr %219, align 4, !tbaa !7
  %221 = add i32 %220, %215
  %222 = select i1 %216, i32 65535, i32 65534
  %223 = and i32 %221, %222
  %224 = getelementptr inbounds [2 x [32 x %struct.Basic_Info]], ptr @g_info, i64 0, i64 %10, i64 %12, i32 1
  %225 = load i32, ptr %224, align 4, !tbaa !23
  %226 = sub i32 %223, %225
  %227 = getelementptr inbounds [2 x %struct.Basic_Info], ptr @g_info_totals, i64 0, i64 %10, i32 1
  %228 = load i32, ptr %227, align 4, !tbaa !23
  %229 = add nsw i32 %226, %228
  store i32 %229, ptr %227, align 4, !tbaa !23
  store i32 %223, ptr %224, align 4, !tbaa !23
  %230 = load i32, ptr %19, align 4, !tbaa !7
  %231 = shl i32 %230, 1
  %232 = or i32 %231, %230
  %233 = xor i32 %232, -1
  %234 = and i32 %233, 65535
  %235 = zext i32 %234 to i64
  %236 = getelementptr inbounds [65536 x i32], ptr @move_table16, i64 0, i64 %235
  %237 = load i32, ptr %236, align 4, !tbaa !7
  %238 = icmp ult i32 %237, 268435456
  %239 = lshr i32 %233, 16
  %240 = zext i32 %239 to i64
  %241 = getelementptr inbounds [65536 x i32], ptr @move_table16, i64 0, i64 %240
  %242 = load i32, ptr %241, align 4, !tbaa !7
  %243 = add i32 %242, %237
  %244 = select i1 %238, i32 65535, i32 65534
  %245 = and i32 %243, %244
  %246 = getelementptr inbounds [2 x [32 x %struct.Basic_Info]], ptr @g_info, i64 0, i64 %17, i64 %18, i32 1
  %247 = load i32, ptr %246, align 4, !tbaa !23
  %248 = getelementptr inbounds [2 x %struct.Basic_Info], ptr @g_info_totals, i64 0, i64 %17, i32 1
  %249 = load i32, ptr %248, align 4, !tbaa !23
  store i32 %245, ptr %246, align 4, !tbaa !23
  %250 = shl i32 %26, 1
  %251 = or i32 %250, %26
  %252 = xor i32 %251, -1
  %253 = and i32 %252, 65535
  %254 = zext i32 %253 to i64
  %255 = getelementptr inbounds [65536 x i32], ptr @move_table16, i64 0, i64 %254
  %256 = load i32, ptr %255, align 4, !tbaa !7
  %257 = icmp ult i32 %256, 268435456
  %258 = lshr i32 %252, 16
  %259 = zext i32 %258 to i64
  %260 = getelementptr inbounds [65536 x i32], ptr @move_table16, i64 0, i64 %259
  %261 = load i32, ptr %260, align 4, !tbaa !7
  %262 = add i32 %261, %256
  %263 = select i1 %257, i32 65535, i32 65534
  %264 = and i32 %262, %263
  %265 = getelementptr inbounds [2 x [32 x %struct.Basic_Info]], ptr @g_info, i64 0, i64 %17, i64 %23, i32 1
  %266 = load i32, ptr %265, align 4, !tbaa !23
  %267 = add i32 %245, %249
  %268 = add i32 %247, %266
  %269 = sub i32 %267, %268
  %270 = add i32 %269, %264
  store i32 %270, ptr %248, align 4, !tbaa !23
  store i32 %264, ptr %265, align 4, !tbaa !23
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @score_and_get_first(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.Basic_Info, align 4
  %7 = trunc i64 %3 to i32
  %8 = lshr i64 %3, 32
  %9 = trunc i64 %8 to i32
  %10 = icmp eq i32 %7, -1
  %11 = icmp sgt i32 %1, 0
  br i1 %10, label %15, label %12

12:                                               ; preds = %5
  br i1 %11, label %13, label %56

13:                                               ; preds = %12
  %14 = zext i32 %1 to i64
  br label %18

15:                                               ; preds = %5
  br i1 %11, label %16, label %56

16:                                               ; preds = %15
  %17 = zext i32 %1 to i64
  br label %39

18:                                               ; preds = %35, %13
  %19 = phi i64 [ 0, %13 ], [ %37, %35 ]
  %20 = phi i32 [ -1, %13 ], [ %36, %35 ]
  %21 = getelementptr inbounds %struct.Basic_Info, ptr %0, i64 %19
  %22 = load i32, ptr %21, align 4, !tbaa !25
  %23 = icmp eq i32 %22, %7
  br i1 %23, label %24, label %31

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.Basic_Info, ptr %0, i64 %19, i32 1
  %26 = load i32, ptr %25, align 4, !tbaa !23
  %27 = icmp eq i32 %26, %9
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.Basic_Info, ptr %0, i64 %19, i32 2
  store i32 450000, ptr %29, align 4, !tbaa !52
  %30 = trunc i64 %19 to i32
  br label %35

31:                                               ; preds = %24, %18
  %32 = load i64, ptr %21, align 4
  %33 = tail call fastcc i32 @score_move(i64 %32, i32 noundef %2) #32
  %34 = getelementptr inbounds %struct.Basic_Info, ptr %0, i64 %19, i32 2
  store i32 %33, ptr %34, align 4, !tbaa !52
  br label %35

35:                                               ; preds = %31, %28
  %36 = phi i32 [ %30, %28 ], [ %20, %31 ]
  %37 = add nuw nsw i64 %19, 1
  %38 = icmp eq i64 %37, %14
  br i1 %38, label %53, label %18, !llvm.loop !132

39:                                               ; preds = %39, %16
  %40 = phi i64 [ 0, %16 ], [ %51, %39 ]
  %41 = phi i32 [ -50000, %16 ], [ %50, %39 ]
  %42 = phi i32 [ -1, %16 ], [ %49, %39 ]
  %43 = getelementptr inbounds %struct.Basic_Info, ptr %0, i64 %40
  %44 = load i64, ptr %43, align 4
  %45 = tail call fastcc i32 @score_move(i64 %44, i32 noundef %2) #32
  %46 = getelementptr inbounds %struct.Basic_Info, ptr %0, i64 %40, i32 2
  store i32 %45, ptr %46, align 4, !tbaa !52
  %47 = icmp sgt i32 %45, %41
  %48 = trunc i64 %40 to i32
  %49 = select i1 %47, i32 %48, i32 %42
  %50 = tail call i32 @llvm.smax.i32(i32 %45, i32 %41)
  %51 = add nuw nsw i64 %40, 1
  %52 = icmp eq i64 %51, %17
  br i1 %52, label %53, label %39, !llvm.loop !133

53:                                               ; preds = %39, %35
  %54 = phi i32 [ %49, %39 ], [ %36, %35 ]
  %55 = icmp eq i32 %54, -1
  br i1 %55, label %56, label %57

56:                                               ; preds = %53, %15, %12
  tail call void (ptr, i32, i32, ptr, ...) @_fatal_error_aux(ptr noundef nonnull @.str.96, i32 noundef 180, i32 noundef 1, ptr noundef nonnull @.str.1.97) #33
  br label %57

57:                                               ; preds = %56, %53
  %58 = phi i32 [ -1, %56 ], [ %54, %53 ]
  %59 = icmp sgt i32 %1, 1
  br i1 %59, label %60, label %74

60:                                               ; preds = %57
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6)
  %61 = sext i32 %58 to i64
  %62 = getelementptr inbounds %struct.Basic_Info, ptr %0, i64 %61
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %6, ptr noundef nonnull align 4 dereferenceable(12) %62, i64 12, i1 false), !tbaa.struct !58
  %63 = icmp sgt i32 %58, 0
  br i1 %63, label %64, label %73

64:                                               ; preds = %60
  %65 = zext i32 %58 to i64
  br label %66

66:                                               ; preds = %66, %64
  %67 = phi i64 [ %65, %64 ], [ %69, %66 ]
  %68 = getelementptr inbounds %struct.Basic_Info, ptr %0, i64 %67
  %69 = add nsw i64 %67, -1
  %70 = and i64 %69, 4294967295
  %71 = getelementptr inbounds %struct.Basic_Info, ptr %0, i64 %70
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %68, ptr noundef nonnull align 4 dereferenceable(12) %71, i64 12, i1 false), !tbaa.struct !58
  %72 = icmp ugt i64 %67, 1
  br i1 %72, label %66, label %73, !llvm.loop !134

73:                                               ; preds = %66, %60
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %0, ptr noundef nonnull align 4 dereferenceable(12) %6, i64 12, i1 false), !tbaa.struct !58
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6)
  br label %74

74:                                               ; preds = %73, %57
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define internal fastcc i32 @score_move(i64 %0, i32 noundef %1) unnamed_addr #29 {
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
  %13 = load i32, ptr %12, align 4, !tbaa !7
  %14 = xor i32 %13, %8
  store i32 %14, ptr %12, align 4, !tbaa !7
  %15 = shl nuw i32 1, %3
  %16 = sext i32 %7 to i64
  %17 = ashr i64 %0, 32
  %18 = getelementptr inbounds [2 x [32 x i32]], ptr @g_board, i64 0, i64 %16, i64 %17
  %19 = load i32, ptr %18, align 4, !tbaa !7
  %20 = xor i32 %19, %15
  store i32 %20, ptr %18, align 4, !tbaa !7
  %21 = add nsw i32 %5, 1
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [2 x [32 x i32]], ptr @g_board, i64 0, i64 %16, i64 %22
  %24 = load i32, ptr %23, align 4, !tbaa !7
  %25 = xor i32 %24, %15
  store i32 %25, ptr %23, align 4, !tbaa !7
  %26 = load i32, ptr %12, align 4, !tbaa !7
  %27 = shl i32 %26, 1
  %28 = or i32 %27, %26
  %29 = xor i32 %28, -1
  %30 = and i32 %29, 65535
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds [65536 x i32], ptr @move_table16, i64 0, i64 %31
  %33 = load i32, ptr %32, align 4, !tbaa !7
  %34 = icmp ult i32 %33, 268435456
  %35 = lshr i32 %29, 16
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds [65536 x i32], ptr @move_table16, i64 0, i64 %36
  %38 = load i32, ptr %37, align 4, !tbaa !7
  %39 = add i32 %38, %33
  %40 = select i1 %34, i32 65535, i32 65534
  %41 = and i32 %39, %40
  %42 = getelementptr inbounds [2 x [32 x %struct.Basic_Info]], ptr @g_info, i64 0, i64 %9, i64 %11
  %43 = getelementptr inbounds [2 x [32 x %struct.Basic_Info]], ptr @g_info, i64 0, i64 %9, i64 %11, i32 1
  %44 = load i32, ptr %43, align 4, !tbaa !23
  %45 = load i32, ptr %18, align 4, !tbaa !7
  %46 = shl i32 %45, 1
  %47 = or i32 %46, %45
  %48 = xor i32 %47, -1
  %49 = and i32 %48, 65535
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds [65536 x i32], ptr @move_table16, i64 0, i64 %50
  %52 = load i32, ptr %51, align 4, !tbaa !7
  %53 = icmp ult i32 %52, 268435456
  %54 = lshr i32 %48, 16
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds [65536 x i32], ptr @move_table16, i64 0, i64 %55
  %57 = load i32, ptr %56, align 4, !tbaa !7
  %58 = add i32 %57, %52
  %59 = select i1 %53, i32 65535, i32 65534
  %60 = and i32 %58, %59
  %61 = getelementptr inbounds [2 x [32 x %struct.Basic_Info]], ptr @g_info, i64 0, i64 %16, i64 %17, i32 1
  %62 = load i32, ptr %61, align 4, !tbaa !23
  %63 = shl i32 %25, 1
  %64 = or i32 %63, %25
  %65 = xor i32 %64, -1
  %66 = and i32 %65, 65535
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds [65536 x i32], ptr @move_table16, i64 0, i64 %67
  %69 = load i32, ptr %68, align 4, !tbaa !7
  %70 = icmp ult i32 %69, 268435456
  %71 = lshr i32 %65, 16
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds [65536 x i32], ptr @move_table16, i64 0, i64 %72
  %74 = load i32, ptr %73, align 4, !tbaa !7
  %75 = add i32 %74, %69
  %76 = select i1 %70, i32 65535, i32 65534
  %77 = and i32 %75, %76
  %78 = getelementptr inbounds [2 x [32 x %struct.Basic_Info]], ptr @g_info, i64 0, i64 %16, i64 %22, i32 1
  %79 = load i32, ptr %78, align 4, !tbaa !23
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
  %89 = load i32, ptr %88, align 16, !tbaa !7
  br label %121

90:                                               ; preds = %2
  %91 = add i64 %10, -8589934592
  %92 = ashr exact i64 %91, 32
  %93 = getelementptr inbounds [2 x [32 x i32]], ptr @g_board, i64 0, i64 %9, i64 %92
  %94 = load i32, ptr %93, align 4, !tbaa !7
  %95 = and i32 %94, %26
  %96 = sext i32 %85 to i64
  %97 = getelementptr inbounds [2 x [32 x i32]], ptr @g_board, i64 0, i64 %9, i64 %96
  %98 = load i32, ptr %97, align 4, !tbaa !7
  %99 = shl i32 %98, 1
  %100 = or i32 %99, %98
  %101 = xor i32 %100, -1
  %102 = shl i32 %95, 1
  %103 = and i32 %102, %101
  %104 = and i32 %103, %95
  %105 = and i32 %104, 65534
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds [65536 x i32], ptr @move_table16, i64 0, i64 %106
  %108 = load i32, ptr %107, align 8, !tbaa !7
  %109 = icmp ult i32 %108, 268435456
  %110 = lshr i32 %104, 16
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds [65536 x i32], ptr @move_table16, i64 0, i64 %111
  %113 = load i32, ptr %112, align 4, !tbaa !7
  %114 = add i32 %113, %108
  %115 = select i1 %109, i32 65535, i32 65534
  %116 = and i32 %114, %115
  %117 = getelementptr inbounds [2 x [32 x %struct.Basic_Info]], ptr @g_info, i64 0, i64 %9, i64 %96
  %118 = load i32, ptr %117, align 4, !tbaa !25
  %119 = sub i32 %84, %118
  %120 = add i32 %119, %116
  br label %121

121:                                              ; preds = %90, %87
  %122 = phi i32 [ %98, %90 ], [ %89, %87 ]
  %123 = phi i32 [ %120, %90 ], [ %84, %87 ]
  %124 = add i64 %10, 4294967296
  %125 = ashr exact i64 %124, 32
  %126 = getelementptr inbounds [2 x [32 x i32]], ptr @g_board, i64 0, i64 %9, i64 %125
  %127 = load i32, ptr %126, align 4, !tbaa !7
  %128 = and i32 %127, %122
  %129 = shl i32 %128, 1
  %130 = and i32 %129, %29
  %131 = and i32 %130, %128
  %132 = and i32 %131, 65534
  %133 = zext i32 %132 to i64
  %134 = getelementptr inbounds [65536 x i32], ptr @move_table16, i64 0, i64 %133
  %135 = load i32, ptr %134, align 8, !tbaa !7
  %136 = icmp ult i32 %135, 268435456
  %137 = lshr i32 %131, 16
  %138 = zext i32 %137 to i64
  %139 = getelementptr inbounds [65536 x i32], ptr @move_table16, i64 0, i64 %138
  %140 = load i32, ptr %139, align 4, !tbaa !7
  %141 = add i32 %140, %135
  %142 = select i1 %136, i32 65535, i32 65534
  %143 = and i32 %141, %142
  %144 = load i32, ptr %42, align 4, !tbaa !25
  %145 = sub nsw i32 %143, %144
  %146 = add nsw i32 %145, %123
  %147 = getelementptr inbounds [2 x i32], ptr @g_board_size, i64 0, i64 %9
  %148 = load i32, ptr %147, align 4, !tbaa !7
  %149 = icmp eq i32 %148, %3
  br i1 %149, label %178, label %150

150:                                              ; preds = %121
  %151 = add i64 %10, 8589934592
  %152 = ashr exact i64 %151, 32
  %153 = getelementptr inbounds [2 x [32 x i32]], ptr @g_board, i64 0, i64 %9, i64 %152
  %154 = load i32, ptr %153, align 4, !tbaa !7
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
  %165 = load i32, ptr %164, align 8, !tbaa !7
  %166 = icmp ult i32 %165, 268435456
  %167 = lshr i32 %161, 16
  %168 = zext i32 %167 to i64
  %169 = getelementptr inbounds [65536 x i32], ptr @move_table16, i64 0, i64 %168
  %170 = load i32, ptr %169, align 4, !tbaa !7
  %171 = add i32 %170, %165
  %172 = select i1 %166, i32 65535, i32 65534
  %173 = and i32 %171, %172
  %174 = getelementptr inbounds [2 x [32 x %struct.Basic_Info]], ptr @g_info, i64 0, i64 %9, i64 %125
  %175 = load i32, ptr %174, align 4, !tbaa !25
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
  %186 = load i32, ptr %185, align 4, !tbaa !7
  %187 = and i32 %186, %45
  %188 = sext i32 %180 to i64
  %189 = getelementptr inbounds [2 x [32 x i32]], ptr @g_board, i64 0, i64 %16, i64 %188
  %190 = load i32, ptr %189, align 4, !tbaa !7
  %191 = shl i32 %190, 1
  %192 = or i32 %191, %190
  %193 = xor i32 %192, -1
  %194 = shl i32 %187, 1
  %195 = and i32 %194, %193
  %196 = and i32 %195, %187
  %197 = and i32 %196, 65534
  %198 = zext i32 %197 to i64
  %199 = getelementptr inbounds [65536 x i32], ptr @move_table16, i64 0, i64 %198
  %200 = load i32, ptr %199, align 8, !tbaa !7
  %201 = icmp ult i32 %200, 268435456
  %202 = lshr i32 %196, 16
  %203 = zext i32 %202 to i64
  %204 = getelementptr inbounds [65536 x i32], ptr @move_table16, i64 0, i64 %203
  %205 = load i32, ptr %204, align 4, !tbaa !7
  %206 = add i32 %205, %200
  %207 = select i1 %201, i32 65535, i32 65534
  %208 = and i32 %206, %207
  %209 = getelementptr inbounds [2 x [32 x %struct.Basic_Info]], ptr @g_info, i64 0, i64 %16, i64 %188
  %210 = load i32, ptr %209, align 4, !tbaa !25
  %211 = add i32 %210, %179
  %212 = sub i32 %211, %208
  br label %213

213:                                              ; preds = %182, %178
  %214 = phi i32 [ %212, %182 ], [ %179, %178 ]
  %215 = getelementptr inbounds [2 x i32], ptr @g_board_size, i64 0, i64 %16
  %216 = load i32, ptr %215, align 4, !tbaa !7
  %217 = icmp eq i32 %21, %216
  br i1 %217, label %254, label %218

218:                                              ; preds = %213
  %219 = add i64 %0, 4294967296
  %220 = ashr i64 %219, 32
  %221 = getelementptr inbounds [2 x [32 x i32]], ptr @g_board, i64 0, i64 %16, i64 %220
  %222 = load i32, ptr %221, align 4, !tbaa !7
  %223 = add i64 %0, 12884901888
  %224 = ashr i64 %223, 32
  %225 = getelementptr inbounds [2 x [32 x i32]], ptr @g_board, i64 0, i64 %16, i64 %224
  %226 = load i32, ptr %225, align 4, !tbaa !7
  %227 = and i32 %226, %222
  %228 = add i64 %0, 8589934592
  %229 = ashr i64 %228, 32
  %230 = getelementptr inbounds [2 x [32 x i32]], ptr @g_board, i64 0, i64 %16, i64 %229
  %231 = load i32, ptr %230, align 4, !tbaa !7
  %232 = shl i32 %231, 1
  %233 = or i32 %232, %231
  %234 = xor i32 %233, -1
  %235 = shl i32 %227, 1
  %236 = and i32 %235, %234
  %237 = and i32 %236, %227
  %238 = and i32 %237, 65534
  %239 = zext i32 %238 to i64
  %240 = getelementptr inbounds [65536 x i32], ptr @move_table16, i64 0, i64 %239
  %241 = load i32, ptr %240, align 8, !tbaa !7
  %242 = icmp ult i32 %241, 268435456
  %243 = lshr i32 %237, 16
  %244 = zext i32 %243 to i64
  %245 = getelementptr inbounds [65536 x i32], ptr @move_table16, i64 0, i64 %244
  %246 = load i32, ptr %245, align 4, !tbaa !7
  %247 = add i32 %246, %241
  %248 = select i1 %242, i32 65535, i32 65534
  %249 = and i32 %247, %248
  %250 = getelementptr inbounds [2 x [32 x %struct.Basic_Info]], ptr @g_info, i64 0, i64 %16, i64 %229
  %251 = load i32, ptr %250, align 4, !tbaa !25
  %252 = add i32 %251, %214
  %253 = sub i32 %252, %249
  br label %254

254:                                              ; preds = %218, %213
  %255 = phi i32 [ %253, %218 ], [ %214, %213 ]
  %256 = xor i32 %26, %8
  store i32 %256, ptr %12, align 4, !tbaa !7
  %257 = load i32, ptr %18, align 4, !tbaa !7
  %258 = xor i32 %257, %15
  store i32 %258, ptr %18, align 4, !tbaa !7
  %259 = load i32, ptr %23, align 4, !tbaa !7
  %260 = xor i32 %259, %15
  store i32 %260, ptr %23, align 4, !tbaa !7
  %261 = shl nsw i32 %255, 7
  %262 = sext i32 %1 to i64
  %263 = getelementptr inbounds [2 x [32 x [32 x i32]]], ptr @g_first_move, i64 0, i64 %262, i64 %11, i64 %17
  %264 = load i32, ptr %263, align 4, !tbaa !7
  %265 = add nsw i32 %264, %261
  ret i32 %265
}

; Function Attrs: nounwind optsize uwtable
define internal void @_fatal_error_aux(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3, ...) #0 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #31
  %6 = icmp eq i32 %2, 0
  %7 = select i1 %6, ptr @.str.100, ptr @.str.1.101
  %8 = load ptr, ptr @_fatal_error_aux.err_file, align 8, !tbaa !27
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %16

10:                                               ; preds = %4
  %11 = tail call noalias ptr @fopen(ptr noundef nonnull @.str.2.102, ptr noundef nonnull @.str.3.103) #32
  store ptr %11, ptr @_fatal_error_aux.err_file, align 8, !tbaa !27
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = load ptr, ptr @stderr, align 8, !tbaa !27
  %15 = tail call i64 @fwrite(ptr nonnull @.str.4.104, i64 30, i64 1, ptr %14) #41
  br label %16

16:                                               ; preds = %13, %10, %4
  br i1 %6, label %17, label %32

17:                                               ; preds = %16
  %18 = load ptr, ptr @_fatal_error_aux.err_file, align 8, !tbaa !27
  %19 = tail call i64 @ftell(ptr noundef %18) #32
  %20 = trunc i64 %19 to i32
  %21 = icmp eq i32 %20, -1
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  tail call void (ptr, i32, i32, ptr, ...) @_fatal_error_aux(ptr noundef nonnull @.str.5.105, i32 noundef 36, i32 noundef 1, ptr noundef nonnull @.str.6.106) #32
  br label %32

23:                                               ; preds = %17
  %24 = icmp sgt i32 %20, 33556432
  br i1 %24, label %50, label %25

25:                                               ; preds = %23
  %26 = icmp sgt i32 %20, 33554432
  br i1 %26, label %27, label %32

27:                                               ; preds = %25
  %28 = load ptr, ptr @stderr, align 8, !tbaa !27
  %29 = tail call i64 @fwrite(ptr nonnull @.str.7.107, i64 28, i64 1, ptr %28) #41
  %30 = load ptr, ptr @_fatal_error_aux.err_file, align 8, !tbaa !27
  %31 = tail call i64 @fwrite(ptr nonnull @.str.7.107, i64 28, i64 1, ptr %30)
  br label %32

32:                                               ; preds = %27, %25, %22, %16
  %33 = load ptr, ptr @stderr, align 8, !tbaa !27
  %34 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %33, ptr noundef nonnull %7) #34
  %35 = load ptr, ptr @_fatal_error_aux.err_file, align 8, !tbaa !27
  %36 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %35, ptr noundef nonnull %7) #32
  call void @llvm.va_start(ptr nonnull %5)
  %37 = load ptr, ptr @stderr, align 8, !tbaa !27
  %38 = call i32 @vfprintf(ptr noundef %37, ptr noundef %3, ptr noundef nonnull %5) #34
  %39 = load ptr, ptr @_fatal_error_aux.err_file, align 8, !tbaa !27
  %40 = call i32 @vfprintf(ptr noundef %39, ptr noundef %3, ptr noundef nonnull %5) #32
  call void @llvm.va_end(ptr nonnull %5)
  %41 = load ptr, ptr @stderr, align 8, !tbaa !27
  %42 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %41, ptr noundef nonnull @.str.8.108, ptr noundef %0, i32 noundef %1) #34
  %43 = load ptr, ptr @_fatal_error_aux.err_file, align 8, !tbaa !27
  %44 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %43, ptr noundef nonnull @.str.8.108, ptr noundef %0, i32 noundef %1) #32
  %45 = load ptr, ptr @stderr, align 8, !tbaa !27
  %46 = call i32 @fflush(ptr noundef %45) #32
  %47 = load ptr, ptr @_fatal_error_aux.err_file, align 8, !tbaa !27
  %48 = call i32 @fflush(ptr noundef %47) #32
  br i1 %6, label %50, label %49

49:                                               ; preds = %32
  call void @exit(i32 noundef %2) #37
  unreachable

50:                                               ; preds = %32, %23
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #31
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #30

; Function Attrs: nofree nounwind optsize
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #30

; Function Attrs: nofree nounwind optsize uwtable
define internal nonnull ptr @u64bit_to_string(i64 noundef %0) #4 {
  %2 = alloca [10 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #31
  br label %3

3:                                                ; preds = %3, %1
  %4 = phi i64 [ %10, %3 ], [ 0, %1 ]
  %5 = phi i64 [ %9, %3 ], [ %0, %1 ]
  %6 = urem i64 %5, 1000
  %7 = trunc i64 %6 to i32
  %8 = getelementptr inbounds [10 x i32], ptr %2, i64 0, i64 %4
  store i32 %7, ptr %8, align 4, !tbaa !7
  %9 = udiv i64 %5, 1000
  %10 = add nuw i64 %4, 1
  %11 = icmp ult i64 %5, 1000
  br i1 %11, label %12, label %3, !llvm.loop !135

12:                                               ; preds = %3
  %.lcssa1 = phi i64 [ %4, %3 ]
  %.lcssa = phi i32 [ %7, %3 ]
  %13 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @u64bit_to_string.big_num, ptr noundef nonnull dereferenceable(1) @.str.9.111, i32 noundef %.lcssa) #33
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
  %23 = load i32, ptr %22, align 4, !tbaa !7
  %24 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %20, ptr noundef nonnull dereferenceable(1) @.str.10.112, i32 noundef %23) #33
  %25 = add nsw i32 %24, %18
  %26 = icmp eq i64 %21, 0
  br i1 %26, label %27, label %16, !llvm.loop !136

27:                                               ; preds = %16, %12
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #31
  ret ptr @u64bit_to_string.big_num
}

attributes #0 = { nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { nofree norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { inlinehint nofree norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind }
attributes #12 = { mustprogress nofree norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree norecurse nosync nounwind optsize memory(read, argmem: write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree nosync nounwind optsize willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { noreturn nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nounwind optsize willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree nounwind optsize willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { noreturn nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { mustprogress nofree nounwind optsize willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { nofree nosync nounwind optsize memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { nofree norecurse nosync nounwind optsize memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { mustprogress nofree norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { inlinehint mustprogress nofree norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { nocallback nofree nosync nounwind willreturn }
attributes #31 = { nounwind }
attributes #32 = { optsize }
attributes #33 = { nounwind optsize }
attributes #34 = { cold optsize }
attributes #35 = { nounwind optsize allocsize(0,1) }
attributes #36 = { nounwind optsize willreturn memory(none) }
attributes #37 = { noreturn nounwind optsize }
attributes #38 = { nounwind optsize willreturn memory(read) }
attributes #39 = { nounwind optsize allocsize(0) }
attributes #40 = { nounwind optsize allocsize(1) }
attributes #41 = { cold }

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
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{i64 0, i64 16, !12, i64 16, i64 4, !7}
!12 = !{!9, !9, i64 0}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.mustprogress"}
!15 = distinct !{!15, !14}
!16 = !{!17, !8, i64 16}
!17 = !{!"", !9, i64 0, !8, i64 16}
!18 = distinct !{!18, !14}
!19 = distinct !{!19, !14}
!20 = distinct !{!20, !14}
!21 = distinct !{!21, !14}
!22 = distinct !{!22, !14}
!23 = !{!24, !8, i64 4}
!24 = !{!"", !8, i64 0, !8, i64 4, !8, i64 8}
!25 = !{!24, !8, i64 0}
!26 = distinct !{!26, !14}
!27 = !{!28, !28, i64 0}
!28 = !{!"any pointer", !9, i64 0}
!29 = !{!30, !30, i64 0}
!30 = !{!"long", !9, i64 0}
!31 = distinct !{!31, !14}
!32 = distinct !{!32, !14}
!33 = distinct !{!33, !14}
!34 = distinct !{!34, !14}
!35 = distinct !{!35, !14}
!36 = distinct !{!36, !14}
!37 = !{!38, !8, i64 16}
!38 = !{!"", !9, i64 0, !8, i64 16, !9, i64 20, !9, i64 21, !9, i64 21, !39, i64 22, !39, i64 23}
!39 = !{!"short", !9, i64 0}
!40 = !{!38, !9, i64 20}
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
!52 = !{!24, !8, i64 8}
!53 = distinct !{!53, !14}
!54 = distinct !{!54, !14}
!55 = distinct !{!55, !14}
!56 = distinct !{!56, !14}
!57 = distinct !{!57, !14}
!58 = !{i64 0, i64 4, !7, i64 4, i64 4, !7, i64 8, i64 4, !7}
!59 = distinct !{!59, !14}
!60 = distinct !{!60, !14}
!61 = distinct !{!61, !14, !62, !63}
!62 = !{!"llvm.loop.isvectorized", i32 1}
!63 = !{!"llvm.loop.unroll.runtime.disable"}
!64 = distinct !{!64, !14}
!65 = distinct !{!65, !14}
!66 = distinct !{!66, !14}
!67 = distinct !{!67, !14}
!68 = !{!69, !8, i64 0}
!69 = !{!"", !24, i64 0, !24, i64 12, !24, i64 24, !24, i64 36}
!70 = !{!69, !8, i64 4}
!71 = !{!69, !8, i64 8}
!72 = !{!69, !8, i64 12}
!73 = !{!69, !8, i64 16}
!74 = !{!69, !8, i64 20}
!75 = !{!69, !8, i64 24}
!76 = !{!69, !8, i64 28}
!77 = !{!69, !8, i64 32}
!78 = !{!69, !8, i64 36}
!79 = !{!69, !8, i64 40}
!80 = !{!69, !8, i64 44}
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
!94 = !{!95, !8, i64 136}
!95 = !{!"sigaction", !9, i64 0, !96, i64 8, !8, i64 136, !28, i64 144}
!96 = !{!"", !9, i64 0}
!97 = !{!98, !30, i64 0}
!98 = !{!"itimerval", !99, i64 0, !99, i64 16}
!99 = !{!"timeval", !30, i64 0, !30, i64 8}
!100 = !{!98, !30, i64 8}
!101 = !{!98, !30, i64 16}
!102 = !{!98, !30, i64 24}
!103 = distinct !{!103, !14}
!104 = distinct !{!104, !14}
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
!122 = distinct !{!122, !14, !62, !63}
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
