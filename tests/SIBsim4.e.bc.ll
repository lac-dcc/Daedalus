; ModuleID = 'SIBsim4.e.bc.ll'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._options_t = type { ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._seq_t = type { ptr, ptr, ptr, %struct._read_buf_t, i32, i32, i32, i32 }
%struct._read_buf_t = type { ptr, i32, i32, i32, [4096 x i8] }
%struct._hash_env_t = type { ptr, ptr, i32, ptr, i32, i32 }
%struct._collec_t = type { %union._collec_elt_t, i32, i32 }
%union._collec_elt_t = type { ptr }
%struct._junction_t = type { [4 x i8], [4 x i8] }
%struct._result_t = type { ptr, %struct._collec_t, i32, i32, i32, %struct._sim4_stats }
%struct._sim4_stats = type { i32, i32, i32 }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%struct._hash_node_t = type { i32, i32 }
%struct._exon_t = type { i32, i32, i32, i32, i32, i32, i64 }
%struct._splice_score_t = type { i32, i32, i32, i32, i32, i32, i32 }
%struct._edit_script_list = type { ptr, ptr, i32, i32, i32, i32, i32 }
%struct._edit_script = type { ptr, i32, i8 }

@.str = private unnamed_addr constant [49 x i8] c"align.c: warning: something wrong when aligning.\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"align.c: warning: something wrong when dividing\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"align.c: Alignment fragment not found.\0A\00", align 1
@ALINE = internal global [51 x i8] zeroinitializer, align 16
@BLINE = internal global [51 x i8] zeroinitializer, align 16
@CLINE = internal global [51 x i8] zeroinitializer, align 16
@.str.3 = private unnamed_addr constant [6 x i8] c"\0A%*u \00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"    .    :\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"    .\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"\0A%*u %s\0A%*s %s\0A%*u %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.8 = private unnamed_addr constant [40 x i8] c"TROUBLE!!! startx:  %5d,  starty:  %5d\0A\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"TROUBLE!!! x:  %5d,  y:  %5d\0A\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@.str.1.11 = private unnamed_addr constant [35 x i8] c"\0A while processing:\0A%.256s\0A%.256s\0A\00", align 1
@.str.2.14 = private unnamed_addr constant [31 x i8] c"malloc of %zd failed: %s (%d)\0A\00", align 1
@.str.3.15 = private unnamed_addr constant [36 x i8] c"calloc of %zd, %zd failed: %s (%d)\0A\00", align 1
@.str.4.16 = private unnamed_addr constant [38 x i8] c"realloc of %p to %zd failed: %s (%d)\0A\00", align 1
@argv0 = internal unnamed_addr global ptr null, align 8
@.str.19 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.1.20 = private unnamed_addr constant [44 x i8] c"%s: Warning: could not set locale to POSIX\0A\00", align 1
@.str.2.23 = private unnamed_addr constant [20 x i8] c"GTAG,GCAG,GTAC,ATAC\00", align 1
@.str.3.24 = private unnamed_addr constant [33 x i8] c"A:C:c:E:f:g:I:K:L:M:o:q:R:r:W:X:\00", align 1
@optarg = external local_unnamed_addr global ptr, align 8
@.str.4.25 = private unnamed_addr constant [36 x i8] c"A must be one of 0, 1, 2, 3, or 4.\0A\00", align 1
@.str.5.26 = private unnamed_addr constant [42 x i8] c"Value for option C must be non-negative.\0A\00", align 1
@.str.6.27 = private unnamed_addr constant [42 x i8] c"Value for option c must be non-negative.\0A\00", align 1
@.str.7.28 = private unnamed_addr constant [35 x i8] c"Cutoff (E) must be within [3,10].\0A\00", align 1
@.str.8.29 = private unnamed_addr constant [47 x i8] c"Filter in percent (f) must be within [0,100].\0A\00", align 1
@.str.9.30 = private unnamed_addr constant [42 x i8] c"Value for option K must be non-negative.\0A\00", align 1
@.str.10.31 = private unnamed_addr constant [44 x i8] c"Splice types list has illegal length (%zu)\0A\00", align 1
@.str.11 = private unnamed_addr constant [67 x i8] c"Comma expected instead of %c at position %zuin splice types list.\0A\00", align 1
@.str.12 = private unnamed_addr constant [84 x i8] c"Expected 'A', 'C', 'G' or 'T' instead of '%c' atposition %zu in splice types list.\0A\00", align 1
@.str.13 = private unnamed_addr constant [42 x i8] c"Value for option M must be non-negative.\0A\00", align 1
@.str.14 = private unnamed_addr constant [30 x i8] c"R must be one of 0, 1, or 2.\0A\00", align 1
@.str.15 = private unnamed_addr constant [26 x i8] c"W must be within [1,15].\0A\00", align 1
@.str.16 = private unnamed_addr constant [21 x i8] c"X must be positive.\0A\00", align 1
@.str.17 = private unnamed_addr constant [42 x i8] c"?? getopt returned character code 0%o ??\0A\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@Usage = internal constant [1399 x i8] c"%s [options] dna est_db\0A\0AThis is SIBsim4 version 0.14.\0A\0AAvailable options (default value in braces[]):\0A  -A <int>  output format\0A             0: exon endpoints only\0A             1: alignment text\0A             3: both exon endpoints and alignment text\0A             4: both exon endpoints and alignment text with polyA info\0A            Note that 2 is unimplemented [%d]\0A  -C <int>  MSP score threshold for the second pass [%d]\0A  -c <int>  minimum score cutoff [%d]\0A  -E <int>  cutoff value [%d]\0A  -f <int>  score filter in percent (0 to disable filtering) [%d]\0A  -g <int>  join exons when gap on genomic and RNA have lengths which\0A            differ at most by this percentage [%d]\0A  -I <int>  window width in which to search for intron splicing [%d]\0A  -K <int>  MSP score threshold for the first pass [%d]\0A  -L <str>  a comma separated list of forward splice-types [%s]\0A  -M <int>  scoring splice sites, evaluate match within M nucleotides [%d]\0A  -o <int>  offset nt positions in dna sequence by this amount [%u]\0A  -q <int>  penalty for a nucleotide mismatch [%d]\0A  -R <int>  direction of search\0A             0: search the '+' (direct) strand only\0A             1: search the '-' strand only\0A             2: search both strands and report the best match\0A            [%d]\0A  -r <int>  reward for a nucleotide match [%d]\0A  -W <int>  word size [%d]\0A  -X <int>  value for terminating word extensions [%d]\0A\00", align 16
@.str.18 = private unnamed_addr constant [31 x i8] c"Cannot read sequence from %s.\0A\00", align 1
@dna_seq_head = internal global [256 x i8] zeroinitializer, align 16
@rna_seq_head = internal global [256 x i8] zeroinitializer, align 16
@.str.19.36 = private unnamed_addr constant [43 x i8] c"Unrecognized request for EST orientation.\0A\00", align 1
@dna_complement = internal unnamed_addr constant [256 x i8] c"                                                                 TVGH  CD  M KN   YSA BWXR       tvgh  cd  m kn   ysa bwxr                                                                                                                                      ", align 16
@.str.20 = private unnamed_addr constant [7 x i8] c"\0A%s%s\0A\00", align 1
@.str.22 = private unnamed_addr constant [43 x i8] c"Unrecognized option for alignment output.\0A\00", align 1
@.str.24 = private unnamed_addr constant [56 x i8] c"\0APolyA site %u nt, %u/%u A's %u\0A R %.*s %u\0A D %*.*s %u\0A\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"AATAAA\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"ATTAAA\00", align 1
@.str.27 = private unnamed_addr constant [17 x i8] c"PolyA signal %u\0A\00", align 1
@.str.28 = private unnamed_addr constant [69 x i8] c"\0APolyA site %u nt, %u/%u A's %u minus strand\0A R %.*s %u\0A D %*.*s %u\0A\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"TTTATT\00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"TTTAAT\00", align 1
@.str.31 = private unnamed_addr constant [30 x i8] c"PolyA signal %u minus strand\0A\00", align 1
@.str.32 = private unnamed_addr constant [32 x i8] c"Could not open file %s: %s(%d)\0A\00", align 1
@.str.33 = private unnamed_addr constant [32 x i8] c"Could not read from %d: %s(%d)\0A\00", align 1
@.str.34 = private unnamed_addr constant [239 x i8] c"\0A***  WARNING                                           ***\0A***  there appears to be several sequences in the DNA  ***\0A***  sequence file.  Only the first one will be used,  ***\0A***  which might not be what was intended.             ***\0A\0A\00", align 1
@.str.35 = private unnamed_addr constant [7 x i8] c"; LEN=\00", align 1
@.str.36 = private unnamed_addr constant [10 x i8] c"; LEN=%u\0A\00", align 1
@.str.37 = private unnamed_addr constant [23 x i8] c"Sequence too long: %u\0A\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@.str.38 = private unnamed_addr constant [51 x i8] c"\0ACaught signal %d while processing:\0A%.256s\0A%.256s\0A\00", align 1
@str = private unnamed_addr constant [14 x i8] c"(complement)\0A\00", align 1
@options = internal unnamed_addr global %struct._options_t zeroinitializer, align 8
@encoding = internal unnamed_addr global [128 x i32] zeroinitializer, align 16
@.str.53 = private unnamed_addr constant [26 x i8] c"%u-%u  (%u-%u)   %u%% ==\0A\00", align 1
@.str.1.54 = private unnamed_addr constant [41 x i8] c"%u-%u  (%u-%u)   %u%% %s (%.2s/%.2s) %u\0A\00", align 1
@.str.2.51 = private unnamed_addr constant [3 x i8] c"->\00", align 1
@.str.3.52 = private unnamed_addr constant [3 x i8] c"<-\00", align 1
@.str.4.55 = private unnamed_addr constant [23 x i8] c"%u-%u  (%u-%u)   %u%%\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct._seq_t, align 8
  %4 = alloca %struct._seq_t, align 8
  %5 = alloca %struct._hash_env_t, align 8
  %6 = alloca %struct._collec_t, align 8
  %7 = alloca %struct._collec_t, align 8
  call void @llvm.lifetime.start.p0(i64 4160, ptr nonnull %3) #30
  call void @llvm.lifetime.start.p0(i64 4160, ptr nonnull %4) #30
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #30
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #30
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #30
  %8 = load ptr, ptr %1, align 8, !tbaa !7
  store ptr %8, ptr @argv0, align 8, !tbaa !7
  %9 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.19) #31
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load ptr, ptr @stderr, align 8, !tbaa !7
  %13 = load ptr, ptr %1, align 8, !tbaa !7
  %14 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %12, ptr noundef nonnull @.str.1.20, ptr noundef %13) #32
  br label %15

15:                                               ; preds = %11, %2
  %16 = tail call ptr @signal(i32 noundef 11, ptr noundef nonnull @bug_handler) #31
  %17 = tail call ptr @signal(i32 noundef 7, ptr noundef nonnull @bug_handler) #31
  store <4 x i32> <i32 15, i32 3, i32 10, i32 6>, ptr getelementptr inbounds (%struct._options_t, ptr @options, i64 0, i32 4), align 8, !tbaa !11
  store ptr @.str.2.23, ptr @options, align 8, !tbaa !13
  store i32 4, ptr getelementptr inbounds (%struct._options_t, ptr @options, i64 0, i32 2), align 8, !tbaa !15
  store <4 x i32> <i32 15, i32 10, i32 -5, i32 2>, ptr getelementptr inbounds (%struct._options_t, ptr @options, i64 0, i32 8), align 8, !tbaa !11
  store i32 1, ptr getelementptr inbounds (%struct._options_t, ptr @options, i64 0, i32 12), align 8, !tbaa !16
  store i32 12, ptr getelementptr inbounds (%struct._options_t, ptr @options, i64 0, i32 13), align 4, !tbaa !17
  store i32 12, ptr getelementptr inbounds (%struct._options_t, ptr @options, i64 0, i32 14), align 8, !tbaa !18
  store i32 75, ptr getelementptr inbounds (%struct._options_t, ptr @options, i64 0, i32 16), align 8, !tbaa !19
  store i32 50, ptr getelementptr inbounds (%struct._options_t, ptr @options, i64 0, i32 17), align 4, !tbaa !20
  br label %18

18:                                               ; preds = %120, %15
  %19 = tail call i32 @getopt(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.3.24) #31
  switch i32 %19, label %117 [
    i32 -1, label %121
    i32 65, label %20
    i32 67, label %25
    i32 99, label %31
    i32 69, label %37
    i32 102, label %43
    i32 103, label %48
    i32 73, label %51
    i32 75, label %54
    i32 76, label %60
    i32 77, label %86
    i32 111, label %92
    i32 113, label %95
    i32 82, label %98
    i32 114, label %103
    i32 87, label %106
    i32 88, label %112
    i32 63, label %120
  ]

20:                                               ; preds = %18
  %21 = load ptr, ptr @optarg, align 8, !tbaa !7
  %22 = tail call i32 @atoi(ptr nocapture noundef %21) #33
  store i32 %22, ptr getelementptr inbounds (%struct._options_t, ptr @options, i64 0, i32 3), align 4, !tbaa !21
  %23 = icmp ugt i32 %22, 4
  br i1 %23, label %24, label %120

24:                                               ; preds = %20
  tail call void (ptr, ...) @fatal(ptr noundef nonnull @.str.4.25) #34
  unreachable

25:                                               ; preds = %18
  %26 = load ptr, ptr @optarg, align 8, !tbaa !7
  %27 = tail call i32 @atoi(ptr nocapture noundef %26) #33
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  tail call void (ptr, ...) @fatal(ptr noundef nonnull @.str.5.26) #34
  unreachable

30:                                               ; preds = %25
  store i32 %27, ptr getelementptr inbounds (%struct._options_t, ptr @options, i64 0, i32 4), align 8, !tbaa !22
  br label %120

31:                                               ; preds = %18
  %32 = load ptr, ptr @optarg, align 8, !tbaa !7
  %33 = tail call i32 @atoi(ptr nocapture noundef %32) #33
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  tail call void (ptr, ...) @fatal(ptr noundef nonnull @.str.6.27) #34
  unreachable

36:                                               ; preds = %31
  store i32 %33, ptr getelementptr inbounds (%struct._options_t, ptr @options, i64 0, i32 17), align 4, !tbaa !20
  br label %120

37:                                               ; preds = %18
  %38 = load ptr, ptr @optarg, align 8, !tbaa !7
  %39 = tail call i32 @atoi(ptr nocapture noundef %38) #33
  store i32 %39, ptr getelementptr inbounds (%struct._options_t, ptr @options, i64 0, i32 5), align 4, !tbaa !23
  %40 = add i32 %39, -11
  %41 = icmp ult i32 %40, -8
  br i1 %41, label %42, label %120

42:                                               ; preds = %37
  tail call void (ptr, ...) @fatal(ptr noundef nonnull @.str.7.28) #34
  unreachable

43:                                               ; preds = %18
  %44 = load ptr, ptr @optarg, align 8, !tbaa !7
  %45 = tail call i32 @atoi(ptr nocapture noundef %44) #33
  store i32 %45, ptr getelementptr inbounds (%struct._options_t, ptr @options, i64 0, i32 16), align 8, !tbaa !19
  %46 = icmp ugt i32 %45, 100
  br i1 %46, label %47, label %120

47:                                               ; preds = %43
  tail call void (ptr, ...) @fatal(ptr noundef nonnull @.str.8.29) #34
  unreachable

48:                                               ; preds = %18
  %49 = load ptr, ptr @optarg, align 8, !tbaa !7
  %50 = tail call i32 @atoi(ptr nocapture noundef %49) #33
  store i32 %50, ptr getelementptr inbounds (%struct._options_t, ptr @options, i64 0, i32 6), align 8, !tbaa !24
  br label %120

51:                                               ; preds = %18
  %52 = load ptr, ptr @optarg, align 8, !tbaa !7
  %53 = tail call i32 @atoi(ptr nocapture noundef %52) #33
  store i32 %53, ptr getelementptr inbounds (%struct._options_t, ptr @options, i64 0, i32 7), align 4, !tbaa !25
  br label %120

54:                                               ; preds = %18
  %55 = load ptr, ptr @optarg, align 8, !tbaa !7
  %56 = tail call i32 @atoi(ptr nocapture noundef %55) #33
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %54
  tail call void (ptr, ...) @fatal(ptr noundef nonnull @.str.9.30) #34
  unreachable

59:                                               ; preds = %54
  store i32 %56, ptr getelementptr inbounds (%struct._options_t, ptr @options, i64 0, i32 8), align 8, !tbaa !26
  br label %120

60:                                               ; preds = %18
  %61 = load ptr, ptr @optarg, align 8, !tbaa !7
  %62 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %61) #33
  store ptr %61, ptr @options, align 8, !tbaa !13
  store i32 1, ptr getelementptr inbounds (%struct._options_t, ptr @options, i64 0, i32 2), align 8, !tbaa !15
  %63 = urem i64 %62, 5
  %64 = icmp eq i64 %63, 4
  br i1 %64, label %66, label %65

65:                                               ; preds = %60
  %.lcssa4 = phi i64 [ %62, %60 ]
  tail call void (ptr, ...) @fatal(ptr noundef nonnull @.str.10.31, i64 noundef %.lcssa4) #34
  unreachable

66:                                               ; preds = %82, %60
  %67 = phi i64 [ %84, %82 ], [ 0, %60 ]
  %68 = phi i32 [ %83, %82 ], [ 1, %60 ]
  %69 = urem i64 %67, 5
  %70 = icmp eq i64 %69, 4
  %71 = getelementptr inbounds i8, ptr %61, i64 %67
  %72 = load i8, ptr %71, align 1, !tbaa !27
  br i1 %70, label %73, label %79

73:                                               ; preds = %66
  %74 = icmp eq i8 %72, 44
  br i1 %74, label %77, label %75

75:                                               ; preds = %73
  %.lcssa3 = phi i64 [ %67, %73 ]
  %.lcssa1 = phi i8 [ %72, %73 ]
  %76 = sext i8 %.lcssa1 to i32
  tail call void (ptr, ...) @fatal(ptr noundef nonnull @.str.11, i32 noundef %76, i64 noundef %.lcssa3) #34
  unreachable

77:                                               ; preds = %73
  %78 = add i32 %68, 1
  store i32 %78, ptr getelementptr inbounds (%struct._options_t, ptr @options, i64 0, i32 2), align 8, !tbaa !15
  br label %82

79:                                               ; preds = %66
  switch i8 %72, label %80 [
    i8 65, label %82
    i8 67, label %82
    i8 71, label %82
    i8 84, label %82
  ]

80:                                               ; preds = %79
  %.lcssa2 = phi i64 [ %67, %79 ]
  %.lcssa = phi i8 [ %72, %79 ]
  %81 = sext i8 %.lcssa to i32
  tail call void (ptr, ...) @fatal(ptr noundef nonnull @.str.12, i32 noundef %81, i64 noundef %.lcssa2) #34
  unreachable

82:                                               ; preds = %79, %79, %79, %79, %77
  %83 = phi i32 [ %68, %79 ], [ %68, %79 ], [ %68, %79 ], [ %68, %79 ], [ %78, %77 ]
  %84 = add nuw i64 %67, 1
  %85 = icmp eq i64 %84, %62
  br i1 %85, label %120, label %66, !llvm.loop !28

86:                                               ; preds = %18
  %87 = load ptr, ptr @optarg, align 8, !tbaa !7
  %88 = tail call i32 @atoi(ptr nocapture noundef %87) #33
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %86
  tail call void (ptr, ...) @fatal(ptr noundef nonnull @.str.13) #34
  unreachable

91:                                               ; preds = %86
  store i32 %88, ptr getelementptr inbounds (%struct._options_t, ptr @options, i64 0, i32 9), align 4, !tbaa !30
  br label %120

92:                                               ; preds = %18
  %93 = load ptr, ptr @optarg, align 8, !tbaa !7
  %94 = tail call i32 @atoi(ptr nocapture noundef %93) #33
  store i32 %94, ptr getelementptr inbounds (%struct._options_t, ptr @options, i64 0, i32 15), align 4, !tbaa !31
  br label %120

95:                                               ; preds = %18
  %96 = load ptr, ptr @optarg, align 8, !tbaa !7
  %97 = tail call i32 @atoi(ptr nocapture noundef %96) #33
  store i32 %97, ptr getelementptr inbounds (%struct._options_t, ptr @options, i64 0, i32 10), align 8, !tbaa !32
  br label %120

98:                                               ; preds = %18
  %99 = load ptr, ptr @optarg, align 8, !tbaa !7
  %100 = tail call i32 @atoi(ptr nocapture noundef %99) #33
  store i32 %100, ptr getelementptr inbounds (%struct._options_t, ptr @options, i64 0, i32 11), align 4, !tbaa !33
  %101 = icmp ugt i32 %100, 2
  br i1 %101, label %102, label %120

102:                                              ; preds = %98
  tail call void (ptr, ...) @fatal(ptr noundef nonnull @.str.14) #34
  unreachable

103:                                              ; preds = %18
  %104 = load ptr, ptr @optarg, align 8, !tbaa !7
  %105 = tail call i32 @atoi(ptr nocapture noundef %104) #33
  store i32 %105, ptr getelementptr inbounds (%struct._options_t, ptr @options, i64 0, i32 12), align 8, !tbaa !16
  br label %120

106:                                              ; preds = %18
  %107 = load ptr, ptr @optarg, align 8, !tbaa !7
  %108 = tail call i32 @atoi(ptr nocapture noundef %107) #33
  store i32 %108, ptr getelementptr inbounds (%struct._options_t, ptr @options, i64 0, i32 13), align 4, !tbaa !17
  %109 = add i32 %108, -16
  %110 = icmp ult i32 %109, -15
  br i1 %110, label %111, label %120

111:                                              ; preds = %106
  tail call void (ptr, ...) @fatal(ptr noundef nonnull @.str.15) #34
  unreachable

112:                                              ; preds = %18
  %113 = load ptr, ptr @optarg, align 8, !tbaa !7
  %114 = tail call i32 @atoi(ptr nocapture noundef %113) #33
  store i32 %114, ptr getelementptr inbounds (%struct._options_t, ptr @options, i64 0, i32 14), align 8, !tbaa !18
  %115 = icmp slt i32 %114, 1
  br i1 %115, label %116, label %120

116:                                              ; preds = %112
  tail call void (ptr, ...) @fatal(ptr noundef nonnull @.str.16) #34
  unreachable

117:                                              ; preds = %18
  %118 = load ptr, ptr @stderr, align 8, !tbaa !7
  %119 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %118, ptr noundef nonnull @.str.17, i32 noundef %19) #32
  br label %120

120:                                              ; preds = %117, %112, %106, %103, %98, %95, %92, %91, %82, %59, %51, %48, %43, %37, %36, %30, %20, %18
  br label %18

121:                                              ; preds = %18
  %122 = load i32, ptr @optind, align 4, !tbaa !11
  %123 = add nsw i32 %122, 2
  %124 = icmp eq i32 %123, %0
  br i1 %124, label %145, label %125

125:                                              ; preds = %121
  %126 = load ptr, ptr @stderr, align 8, !tbaa !7
  %127 = load ptr, ptr %1, align 8, !tbaa !7
  %128 = load i32, ptr getelementptr inbounds (%struct._options_t, ptr @options, i64 0, i32 3), align 4, !tbaa !21
  %129 = load i32, ptr getelementptr inbounds (%struct._options_t, ptr @options, i64 0, i32 4), align 8, !tbaa !22
  %130 = load i32, ptr getelementptr inbounds (%struct._options_t, ptr @options, i64 0, i32 17), align 4, !tbaa !20
  %131 = load i32, ptr getelementptr inbounds (%struct._options_t, ptr @options, i64 0, i32 5), align 4, !tbaa !23
  %132 = load i32, ptr getelementptr inbounds (%struct._options_t, ptr @options, i64 0, i32 16), align 8, !tbaa !19
  %133 = load i32, ptr getelementptr inbounds (%struct._options_t, ptr @options, i64 0, i32 6), align 8, !tbaa !24
  %134 = load i32, ptr getelementptr inbounds (%struct._options_t, ptr @options, i64 0, i32 7), align 4, !tbaa !25
  %135 = load i32, ptr getelementptr inbounds (%struct._options_t, ptr @options, i64 0, i32 8), align 8, !tbaa !26
  %136 = load ptr, ptr @options, align 8, !tbaa !13
  %137 = load i32, ptr getelementptr inbounds (%struct._options_t, ptr @options, i64 0, i32 9), align 4, !tbaa !30
  %138 = load i32, ptr getelementptr inbounds (%struct._options_t, ptr @options, i64 0, i32 15), align 4, !tbaa !31
  %139 = load i32, ptr getelementptr inbounds (%struct._options_t, ptr @options, i64 0, i32 10), align 8, !tbaa !32
  %140 = load i32, ptr getelementptr inbounds (%struct._options_t, ptr @options, i64 0, i32 11), align 4, !tbaa !33
  %141 = load i32, ptr getelementptr inbounds (%struct._options_t, ptr @options, i64 0, i32 12), align 8, !tbaa !16
  %142 = load i32, ptr getelementptr inbounds (%struct._options_t, ptr @options, i64 0, i32 13), align 4, !tbaa !17
  %143 = load i32, ptr getelementptr inbounds (%struct._options_t, ptr @options, i64 0, i32 14), align 8, !tbaa !18
  %144 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %126, ptr noundef nonnull @Usage, ptr noundef %127, i32 noundef %128, i32 noundef %129, i32 noundef %130, i32 noundef %131, i32 noundef %132, i32 noundef %133, i32 noundef %134, i32 noundef %135, ptr noundef %136, i32 noundef %137, i32 noundef %138, i32 noundef %139, i32 noundef %140, i32 noundef %141, i32 noundef %142, i32 noundef %143) #32
  br label %394

145:                                              ; preds = %121
  %146 = sext i32 %122 to i64
  %147 = getelementptr inbounds ptr, ptr %1, i64 %146
  %148 = load ptr, ptr %147, align 8, !tbaa !7
  call fastcc void @init_seq(ptr noundef %148, ptr noundef nonnull %3) #35
  %149 = load i32, ptr getelementptr inbounds (%struct._options_t, ptr @options, i64 0, i32 15), align 4, !tbaa !31
  %150 = call fastcc i32 @get_next_seq(ptr noundef nonnull %3, i32 noundef %149, i32 noundef 1) #35, !range !34
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %157, label %152

152:                                              ; preds = %145
  %153 = load i32, ptr @optind, align 4, !tbaa !11
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds ptr, ptr %1, i64 %154
  %156 = load ptr, ptr %155, align 8, !tbaa !7
  tail call void (ptr, ...) @fatal(ptr noundef nonnull @.str.18, ptr noundef %156) #34
  unreachable

157:                                              ; preds = %145
  %158 = getelementptr inbounds %struct._seq_t, ptr %3, i64 0, i32 1
  %159 = load ptr, ptr %158, align 8, !tbaa !35
  %160 = tail call ptr @strncpy(ptr noundef nonnull dereferenceable(1) @dna_seq_head, ptr noundef nonnull dereferenceable(1) %159, i64 noundef 256) #31
  %161 = load i32, ptr @optind, align 4, !tbaa !11
  %162 = add nsw i32 %161, 1
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds ptr, ptr %1, i64 %163
  %165 = load ptr, ptr %164, align 8, !tbaa !7
  call fastcc void @init_seq(ptr noundef %165, ptr noundef nonnull %4) #35
  %166 = call fastcc i32 @get_next_seq(ptr noundef nonnull %4, i32 noundef 0, i32 noundef 0) #35, !range !34
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %174, label %168

168:                                              ; preds = %157
  %169 = load i32, ptr @optind, align 4, !tbaa !11
  %170 = add nsw i32 %169, 1
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds ptr, ptr %1, i64 %171
  %173 = load ptr, ptr %172, align 8, !tbaa !7
  tail call void (ptr, ...) @fatal(ptr noundef nonnull @.str.18, ptr noundef %173) #34
  unreachable

174:                                              ; preds = %174, %157
  %175 = phi i64 [ %177, %174 ], [ 0, %157 ]
  %176 = getelementptr inbounds [128 x i32], ptr @encoding, i64 0, i64 %175
  store <4 x i32> <i32 4, i32 4, i32 4, i32 4>, ptr %176, align 16, !tbaa !11
  %177 = add nuw nsw i64 %175, 4
  %178 = icmp eq i64 %177, 128
  br i1 %178, label %179, label %174, !llvm.loop !38

179:                                              ; preds = %174
  store i32 0, ptr getelementptr inbounds ([128 x i32], ptr @encoding, i64 0, i64 65), align 4, !tbaa !11
  store i32 1, ptr getelementptr inbounds ([128 x i32], ptr @encoding, i64 0, i64 67), align 4, !tbaa !11
  store i32 2, ptr getelementptr inbounds ([128 x i32], ptr @encoding, i64 0, i64 71), align 4, !tbaa !11
  store i32 3, ptr getelementptr inbounds ([128 x i32], ptr @encoding, i64 0, i64 84), align 16, !tbaa !11
  %180 = load i32, ptr getelementptr inbounds (%struct._options_t, ptr @options, i64 0, i32 13), align 4, !tbaa !17
  %181 = getelementptr inbounds %struct._seq_t, ptr %3, i64 0, i32 2
  %182 = load ptr, ptr %181, align 8, !tbaa !41
  %183 = getelementptr inbounds %struct._seq_t, ptr %3, i64 0, i32 5
  %184 = load i32, ptr %183, align 4, !tbaa !42
  %185 = getelementptr inbounds %struct._hash_env_t, ptr %5, i64 0, i32 5
  store i32 %180, ptr %185, align 4, !tbaa !43
  %186 = getelementptr inbounds %struct._hash_env_t, ptr %5, i64 0, i32 1
  store ptr %182, ptr %186, align 8, !tbaa !45
  %187 = getelementptr inbounds %struct._hash_env_t, ptr %5, i64 0, i32 2
  store i32 %184, ptr %187, align 8, !tbaa !46
  %188 = shl i32 %180, 1
  %189 = add i32 %188, -2
  %190 = shl nsw i32 -1, %189
  %191 = xor i32 %190, -1
  %192 = getelementptr inbounds %struct._hash_env_t, ptr %5, i64 0, i32 4
  store i32 %191, ptr %192, align 8, !tbaa !47
  %193 = add i32 %184, 1
  %194 = zext i32 %193 to i64
  %195 = shl nuw nsw i64 %194, 2
  %196 = tail call fastcc ptr @xmalloc(i64 noundef %195) #31
  %197 = getelementptr inbounds %struct._hash_env_t, ptr %5, i64 0, i32 3
  store ptr %196, ptr %197, align 8, !tbaa !48
  %198 = tail call fastcc ptr @xcalloc(i64 noundef 524288, i64 noundef 8) #31
  store ptr %198, ptr %5, align 8, !tbaa !49
  %199 = getelementptr inbounds %struct._collec_t, ptr %6, i64 0, i32 2
  store i32 1, ptr %199, align 4, !tbaa !50
  %200 = getelementptr inbounds %struct._collec_t, ptr %6, i64 0, i32 1
  store i32 0, ptr %200, align 8, !tbaa !52
  %201 = tail call fastcc ptr @xmalloc(i64 noundef 8) #31
  store ptr %201, ptr %6, align 8, !tbaa !27
  %202 = getelementptr inbounds %struct._collec_t, ptr %7, i64 0, i32 2
  store i32 1, ptr %202, align 4, !tbaa !50
  %203 = getelementptr inbounds %struct._collec_t, ptr %7, i64 0, i32 1
  store i32 0, ptr %203, align 8, !tbaa !52
  %204 = tail call fastcc ptr @xmalloc(i64 noundef 8) #31
  store ptr %204, ptr %7, align 8, !tbaa !27
  call fastcc void @bld_table(ptr noundef nonnull %5) #31
  %205 = load i32, ptr getelementptr inbounds (%struct._options_t, ptr @options, i64 0, i32 2), align 8, !tbaa !15
  %206 = zext i32 %205 to i64
  %207 = shl nuw nsw i64 %206, 3
  %208 = tail call fastcc ptr @xmalloc(i64 noundef %207) #31
  store ptr %208, ptr getelementptr inbounds (%struct._options_t, ptr @options, i64 0, i32 1), align 8, !tbaa !53
  %209 = load i32, ptr getelementptr inbounds (%struct._options_t, ptr @options, i64 0, i32 2), align 8, !tbaa !15
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %235, label %211

211:                                              ; preds = %179
  %212 = load ptr, ptr @options, align 8, !tbaa !13
  %213 = zext i32 %209 to i64
  br label %214

214:                                              ; preds = %232, %211
  %215 = phi i64 [ %233, %232 ], [ 0, %211 ]
  %216 = mul nuw nsw i64 %215, 5
  %217 = getelementptr inbounds %struct._junction_t, ptr %208, i64 %215
  br label %218

218:                                              ; preds = %218, %214
  %219 = phi i64 [ 0, %214 ], [ %230, %218 ]
  %220 = add nuw nsw i64 %219, %216
  %221 = and i64 %220, 4294967295
  %222 = getelementptr inbounds i8, ptr %212, i64 %221
  %223 = load i8, ptr %222, align 1, !tbaa !27
  %224 = getelementptr inbounds [4 x i8], ptr %217, i64 0, i64 %219
  store i8 %223, ptr %224, align 1, !tbaa !27
  %225 = zext i8 %223 to i64
  %226 = getelementptr inbounds [256 x i8], ptr @dna_complement, i64 0, i64 %225
  %227 = load i8, ptr %226, align 1, !tbaa !27
  %228 = sub nuw nsw i64 3, %219
  %229 = getelementptr inbounds %struct._junction_t, ptr %208, i64 %215, i32 1, i64 %228
  store i8 %227, ptr %229, align 1, !tbaa !27
  %230 = add nuw nsw i64 %219, 1
  %231 = icmp eq i64 %230, 4
  br i1 %231, label %232, label %218, !llvm.loop !54

232:                                              ; preds = %218
  %233 = add nuw nsw i64 %215, 1
  %234 = icmp eq i64 %233, %213
  br i1 %234, label %235, label %214, !llvm.loop !55

235:                                              ; preds = %232, %179
  %236 = getelementptr inbounds %struct._seq_t, ptr %4, i64 0, i32 1
  %237 = getelementptr inbounds %struct._seq_t, ptr %4, i64 0, i32 5
  %238 = getelementptr inbounds %struct._seq_t, ptr %4, i64 0, i32 2
  br label %239

239:                                              ; preds = %393, %235
  %240 = phi i32 [ 0, %235 ], [ %248, %393 ]
  %241 = icmp eq i32 %240, 0
  br i1 %241, label %245, label %242

242:                                              ; preds = %239
  %243 = call fastcc i32 @get_next_seq(ptr noundef nonnull %4, i32 noundef 0, i32 noundef 0) #35, !range !34
  %244 = icmp eq i32 %243, 0
  br i1 %244, label %245, label %394

245:                                              ; preds = %242, %239
  %246 = load ptr, ptr %236, align 8, !tbaa !35
  %247 = tail call ptr @strncpy(ptr noundef nonnull dereferenceable(1) @rna_seq_head, ptr noundef nonnull dereferenceable(1) %246, i64 noundef 256) #31
  %248 = add nuw nsw i32 %240, 1
  %249 = load i32, ptr getelementptr inbounds (%struct._options_t, ptr @options, i64 0, i32 11), align 4, !tbaa !33
  switch i32 %249, label %272 [
    i32 0, label %273
    i32 2, label %250
    i32 1, label %251
  ]

250:                                              ; preds = %245
  call fastcc void @SIM4(ptr noundef nonnull %5, ptr noundef nonnull %4, ptr noundef nonnull %6) #31
  br label %251

251:                                              ; preds = %250, %245
  %252 = load i32, ptr %237, align 4, !tbaa !42
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %273, label %254

254:                                              ; preds = %251
  %255 = load ptr, ptr %238, align 8, !tbaa !41
  %256 = zext i32 %252 to i64
  %257 = getelementptr inbounds i8, ptr %255, i64 %256
  br label %258

258:                                              ; preds = %258, %254
  %259 = phi ptr [ %270, %258 ], [ %255, %254 ]
  %260 = phi ptr [ %261, %258 ], [ %257, %254 ]
  %261 = getelementptr inbounds i8, ptr %260, i64 -1
  %262 = load i8, ptr %261, align 1, !tbaa !27
  %263 = zext i8 %262 to i64
  %264 = getelementptr inbounds [256 x i8], ptr @dna_complement, i64 0, i64 %263
  %265 = load i8, ptr %264, align 1, !tbaa !27
  %266 = load i8, ptr %259, align 1, !tbaa !27
  %267 = zext i8 %266 to i64
  %268 = getelementptr inbounds [256 x i8], ptr @dna_complement, i64 0, i64 %267
  %269 = load i8, ptr %268, align 1, !tbaa !27
  store i8 %269, ptr %261, align 1, !tbaa !27
  %270 = getelementptr inbounds i8, ptr %259, i64 1
  store i8 %265, ptr %259, align 1, !tbaa !27
  %271 = icmp ult ptr %270, %261
  br i1 %271, label %258, label %273, !llvm.loop !56

272:                                              ; preds = %245
  tail call void (ptr, ...) @fatal(ptr noundef nonnull @.str.19.36) #34
  unreachable

273:                                              ; preds = %258, %251, %245
  %274 = phi ptr [ %6, %245 ], [ %7, %251 ], [ %7, %258 ]
  call fastcc void @SIM4(ptr noundef nonnull %5, ptr noundef nonnull %4, ptr noundef nonnull %274) #31
  %275 = load i32, ptr getelementptr inbounds (%struct._options_t, ptr @options, i64 0, i32 16), align 8, !tbaa !19
  %276 = icmp eq i32 %275, 0
  %277 = load i32, ptr %203, align 8, !tbaa !52
  br i1 %276, label %343, label %278

278:                                              ; preds = %273
  %279 = icmp eq i32 %277, 0
  br i1 %279, label %283, label %280

280:                                              ; preds = %278
  %281 = load ptr, ptr %7, align 8, !tbaa !27
  %282 = zext i32 %277 to i64
  br label %290

283:                                              ; preds = %290, %278
  %284 = phi i32 [ 0, %278 ], [ %297, %290 ]
  %285 = load i32, ptr %200, align 8, !tbaa !52
  %286 = icmp eq i32 %285, 0
  br i1 %286, label %310, label %287

287:                                              ; preds = %283
  %288 = load ptr, ptr %6, align 8, !tbaa !27
  %289 = zext i32 %285 to i64
  br label %300

290:                                              ; preds = %290, %280
  %291 = phi i64 [ 0, %280 ], [ %298, %290 ]
  %292 = phi i32 [ 0, %280 ], [ %297, %290 ]
  %293 = getelementptr inbounds ptr, ptr %281, i64 %291
  %294 = load ptr, ptr %293, align 8, !tbaa !7
  %295 = getelementptr inbounds %struct._result_t, ptr %294, i64 0, i32 5
  %296 = load i32, ptr %295, align 4, !tbaa !57
  %297 = tail call i32 @llvm.umax.i32(i32 %296, i32 %292)
  %298 = add nuw nsw i64 %291, 1
  %299 = icmp eq i64 %298, %282
  br i1 %299, label %283, label %290, !llvm.loop !60

300:                                              ; preds = %300, %287
  %301 = phi i64 [ 0, %287 ], [ %308, %300 ]
  %302 = phi i32 [ %284, %287 ], [ %307, %300 ]
  %303 = getelementptr inbounds ptr, ptr %288, i64 %301
  %304 = load ptr, ptr %303, align 8, !tbaa !7
  %305 = getelementptr inbounds %struct._result_t, ptr %304, i64 0, i32 5
  %306 = load i32, ptr %305, align 4, !tbaa !57
  %307 = tail call i32 @llvm.umax.i32(i32 %306, i32 %302)
  %308 = add nuw nsw i64 %301, 1
  %309 = icmp eq i64 %308, %289
  br i1 %309, label %310, label %300, !llvm.loop !61

310:                                              ; preds = %300, %283
  %311 = phi i32 [ %284, %283 ], [ %307, %300 ]
  %312 = mul i32 %311, %275
  %313 = udiv i32 %312, 100
  br i1 %279, label %317, label %314

314:                                              ; preds = %310
  %315 = load ptr, ptr %7, align 8, !tbaa !27
  %316 = zext i32 %277 to i64
  br label %321

317:                                              ; preds = %329, %310
  br i1 %286, label %343, label %318

318:                                              ; preds = %317
  %319 = load ptr, ptr %6, align 8, !tbaa !27
  %320 = zext i32 %285 to i64
  br label %332

321:                                              ; preds = %329, %314
  %322 = phi i64 [ 0, %314 ], [ %330, %329 ]
  %323 = getelementptr inbounds ptr, ptr %315, i64 %322
  %324 = load ptr, ptr %323, align 8, !tbaa !7
  %325 = getelementptr inbounds %struct._result_t, ptr %324, i64 0, i32 5
  %326 = load i32, ptr %325, align 4, !tbaa !57
  %327 = icmp ult i32 %326, %313
  br i1 %327, label %328, label %329

328:                                              ; preds = %321
  store i32 0, ptr %325, align 4, !tbaa !57
  br label %329

329:                                              ; preds = %328, %321
  %330 = add nuw nsw i64 %322, 1
  %331 = icmp eq i64 %330, %316
  br i1 %331, label %317, label %321, !llvm.loop !62

332:                                              ; preds = %340, %318
  %333 = phi i64 [ 0, %318 ], [ %341, %340 ]
  %334 = getelementptr inbounds ptr, ptr %319, i64 %333
  %335 = load ptr, ptr %334, align 8, !tbaa !7
  %336 = getelementptr inbounds %struct._result_t, ptr %335, i64 0, i32 5
  %337 = load i32, ptr %336, align 4, !tbaa !57
  %338 = icmp ult i32 %337, %313
  br i1 %338, label %339, label %340

339:                                              ; preds = %332
  store i32 0, ptr %336, align 4, !tbaa !57
  br label %340

340:                                              ; preds = %339, %332
  %341 = add nuw nsw i64 %333, 1
  %342 = icmp eq i64 %341, %320
  br i1 %342, label %343, label %332, !llvm.loop !63

343:                                              ; preds = %340, %317, %273
  %344 = icmp eq i32 %277, 0
  br i1 %344, label %354, label %345

345:                                              ; preds = %343
  %346 = load ptr, ptr %7, align 8, !tbaa !27
  %347 = zext i32 %277 to i64
  br label %348

348:                                              ; preds = %348, %345
  %349 = phi i64 [ %352, %348 ], [ 0, %345 ]
  %350 = getelementptr inbounds ptr, ptr %346, i64 %349
  %351 = load ptr, ptr %350, align 8, !tbaa !7
  call fastcc void @print_res(ptr noundef %351, i32 noundef 1, ptr noundef nonnull %3, ptr noundef nonnull %4) #35
  %352 = add nuw nsw i64 %349, 1
  %353 = icmp eq i64 %352, %347
  br i1 %353, label %354, label %348, !llvm.loop !64

354:                                              ; preds = %348, %343
  store i32 0, ptr %203, align 8, !tbaa !52
  %355 = load i32, ptr getelementptr inbounds (%struct._options_t, ptr @options, i64 0, i32 11), align 4, !tbaa !33
  %356 = icmp ne i32 %355, 0
  %357 = load i32, ptr getelementptr inbounds (%struct._options_t, ptr @options, i64 0, i32 3), align 4
  %358 = icmp ne i32 %357, 0
  %359 = select i1 %356, i1 %358, i1 false
  br i1 %359, label %360, label %381

360:                                              ; preds = %354
  %361 = load i32, ptr %237, align 4, !tbaa !42
  %362 = icmp eq i32 %361, 0
  br i1 %362, label %381, label %363

363:                                              ; preds = %360
  %364 = load ptr, ptr %238, align 8, !tbaa !41
  %365 = zext i32 %361 to i64
  %366 = getelementptr inbounds i8, ptr %364, i64 %365
  br label %367

367:                                              ; preds = %367, %363
  %368 = phi ptr [ %379, %367 ], [ %364, %363 ]
  %369 = phi ptr [ %370, %367 ], [ %366, %363 ]
  %370 = getelementptr inbounds i8, ptr %369, i64 -1
  %371 = load i8, ptr %370, align 1, !tbaa !27
  %372 = zext i8 %371 to i64
  %373 = getelementptr inbounds [256 x i8], ptr @dna_complement, i64 0, i64 %372
  %374 = load i8, ptr %373, align 1, !tbaa !27
  %375 = load i8, ptr %368, align 1, !tbaa !27
  %376 = zext i8 %375 to i64
  %377 = getelementptr inbounds [256 x i8], ptr @dna_complement, i64 0, i64 %376
  %378 = load i8, ptr %377, align 1, !tbaa !27
  store i8 %378, ptr %370, align 1, !tbaa !27
  %379 = getelementptr inbounds i8, ptr %368, i64 1
  store i8 %374, ptr %368, align 1, !tbaa !27
  %380 = icmp ult ptr %379, %370
  br i1 %380, label %367, label %381, !llvm.loop !56

381:                                              ; preds = %367, %360, %354
  %382 = load i32, ptr %200, align 8, !tbaa !52
  %383 = icmp eq i32 %382, 0
  br i1 %383, label %393, label %384

384:                                              ; preds = %381
  %385 = load ptr, ptr %6, align 8, !tbaa !27
  %386 = zext i32 %382 to i64
  br label %387

387:                                              ; preds = %387, %384
  %388 = phi i64 [ %391, %387 ], [ 0, %384 ]
  %389 = getelementptr inbounds ptr, ptr %385, i64 %388
  %390 = load ptr, ptr %389, align 8, !tbaa !7
  call fastcc void @print_res(ptr noundef %390, i32 noundef 0, ptr noundef nonnull %3, ptr noundef nonnull %4) #35
  %391 = add nuw nsw i64 %388, 1
  %392 = icmp eq i64 %391, %386
  br i1 %392, label %393, label %387, !llvm.loop !65

393:                                              ; preds = %387, %381
  store i32 0, ptr %200, align 8, !tbaa !52
  br label %239, !llvm.loop !66

394:                                              ; preds = %242, %125
  %395 = phi i32 [ 1, %125 ], [ 0, %242 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #30
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #30
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #30
  call void @llvm.lifetime.end.p0(i64 4160, ptr nonnull %4) #30
  call void @llvm.lifetime.end.p0(i64 4160, ptr nonnull %3) #30
  ret i32 %395
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind optsize
declare ptr @setlocale(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: noreturn nounwind optsize uwtable
define internal void @bug_handler(i32 noundef %0) #4 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !7
  %3 = tail call i32 @fflush(ptr noundef %2) #35
  %4 = load ptr, ptr @stderr, align 8, !tbaa !7
  %5 = tail call i32 @fflush(ptr noundef %4) #35
  %6 = load ptr, ptr @stderr, align 8, !tbaa !7
  %7 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef nonnull @.str.38, i32 noundef %0, ptr noundef nonnull @dna_seq_head, ptr noundef nonnull @rna_seq_head) #32
  tail call void @abort() #34
  unreachable
}

; Function Attrs: nounwind optsize
declare ptr @signal(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind optsize
declare i32 @getopt(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(read)
declare i32 @atoi(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: noreturn nounwind optsize uwtable
define internal void @fatal(ptr nocapture noundef readonly %0, ...) unnamed_addr #4 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #30
  call void @llvm.va_start(ptr nonnull %2)
  %3 = load ptr, ptr @stdout, align 8, !tbaa !7
  %4 = call i32 @fflush(ptr noundef %3) #35
  %5 = load ptr, ptr @argv0, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %14, label %7

7:                                                ; preds = %1
  %8 = call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %5, i32 noundef 47) #33
  %9 = load ptr, ptr @stderr, align 8, !tbaa !7
  %10 = icmp eq ptr %8, null
  %11 = getelementptr inbounds i8, ptr %8, i64 1
  %12 = select i1 %10, ptr %5, ptr %11
  %13 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef nonnull @.str.10, ptr noundef nonnull %12) #32
  br label %14

14:                                               ; preds = %7, %1
  %15 = load ptr, ptr @stderr, align 8, !tbaa !7
  %16 = call i32 @vfprintf(ptr noundef %15, ptr noundef %0, ptr noundef nonnull %2) #32
  call void @llvm.va_end(ptr nonnull %2)
  %17 = load ptr, ptr @stderr, align 8, !tbaa !7
  %18 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %17, ptr noundef nonnull @.str.1.11, ptr noundef nonnull @dna_seq_head, ptr noundef nonnull @rna_seq_head) #32
  call void @exit(i32 noundef 1) #34
  unreachable
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @init_seq(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 {
  store ptr %0, ptr %1, align 8, !tbaa !67
  %3 = getelementptr inbounds %struct._seq_t, ptr %1, i64 0, i32 1
  %4 = getelementptr inbounds %struct._seq_t, ptr %1, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %5 = tail call fastcc ptr @xmalloc(i64 noundef 4096) #31
  store ptr %5, ptr %4, align 8, !tbaa !68
  %6 = getelementptr inbounds %struct._seq_t, ptr %1, i64 0, i32 3, i32 1
  store i32 4096, ptr %6, align 8, !tbaa !69
  %7 = getelementptr inbounds %struct._seq_t, ptr %1, i64 0, i32 3, i32 2
  store i32 0, ptr %7, align 4, !tbaa !70
  %8 = getelementptr inbounds %struct._seq_t, ptr %1, i64 0, i32 3, i32 3
  store i32 0, ptr %8, align 8, !tbaa !71
  %9 = icmp eq ptr %0, null
  br i1 %9, label %19, label %10

10:                                               ; preds = %2
  %11 = tail call i32 (ptr, i32, ...) @open(ptr noundef nonnull %0, i32 noundef 0) #31
  %12 = getelementptr inbounds %struct._seq_t, ptr %1, i64 0, i32 4
  store i32 %11, ptr %12, align 8, !tbaa !72
  %13 = icmp eq i32 %11, -1
  br i1 %13, label %14, label %21

14:                                               ; preds = %10
  %15 = tail call ptr @__errno_location() #36
  %16 = load i32, ptr %15, align 4, !tbaa !11
  %17 = tail call ptr @strerror(i32 noundef %16) #31
  %18 = load i32, ptr %15, align 4, !tbaa !11
  tail call void (ptr, ...) @fatal(ptr noundef nonnull @.str.32, ptr noundef nonnull %0, ptr noundef %17, i32 noundef %18) #34
  unreachable

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct._seq_t, ptr %1, i64 0, i32 4
  store i32 0, ptr %20, align 8, !tbaa !72
  br label %21

21:                                               ; preds = %19, %10
  %22 = phi i32 [ %11, %10 ], [ 0, %19 ]
  %23 = getelementptr inbounds %struct._seq_t, ptr %1, i64 0, i32 5
  store i32 0, ptr %23, align 4, !tbaa !42
  %24 = getelementptr inbounds %struct._seq_t, ptr %1, i64 0, i32 6
  store i32 0, ptr %24, align 8, !tbaa !73
  %25 = getelementptr inbounds %struct._seq_t, ptr %1, i64 0, i32 7
  store i32 0, ptr %25, align 4, !tbaa !74
  %26 = tail call fastcc ptr @read_line_buf(ptr noundef nonnull %4, i32 noundef %22) #35
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @get_next_seq(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct._seq_t, ptr %0, i64 0, i32 3
  %5 = getelementptr inbounds %struct._seq_t, ptr %0, i64 0, i32 3, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !75
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %185, label %8

8:                                                ; preds = %3
  %9 = load ptr, ptr %4, align 8, !tbaa !76
  %10 = getelementptr inbounds %struct._seq_t, ptr %0, i64 0, i32 4
  %11 = load i8, ptr %9, align 1, !tbaa !27
  %12 = icmp eq i8 %11, 62
  br i1 %12, label %21, label %16

13:                                               ; preds = %16
  %14 = load i8, ptr %18, align 1, !tbaa !27
  %15 = icmp eq i8 %14, 62
  br i1 %15, label %21, label %16, !llvm.loop !77

16:                                               ; preds = %13, %8
  %17 = load i32, ptr %10, align 8, !tbaa !72
  %18 = tail call fastcc ptr @read_line_buf(ptr noundef nonnull %4, i32 noundef %17) #35
  %19 = load i32, ptr %5, align 4, !tbaa !75
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %185, label %13, !llvm.loop !77

21:                                               ; preds = %13, %8
  %22 = phi i32 [ %6, %8 ], [ %19, %13 ]
  %23 = phi ptr [ %9, %8 ], [ %18, %13 ]
  %24 = add i32 %22, 25
  %25 = getelementptr inbounds %struct._seq_t, ptr %0, i64 0, i32 6
  %26 = load i32, ptr %25, align 8, !tbaa !73
  %27 = icmp ugt i32 %24, %26
  br i1 %27, label %31, label %28

28:                                               ; preds = %21
  %29 = getelementptr inbounds %struct._seq_t, ptr %0, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !35
  br label %37

31:                                               ; preds = %21
  store i32 %24, ptr %25, align 8, !tbaa !73
  %32 = getelementptr inbounds %struct._seq_t, ptr %0, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !35
  %34 = zext i32 %24 to i64
  %35 = tail call fastcc ptr @xrealloc(ptr noundef %33, i64 noundef %34) #31
  store ptr %35, ptr %32, align 8, !tbaa !35
  %36 = load i32, ptr %5, align 4, !tbaa !75
  br label %37

37:                                               ; preds = %31, %28
  %38 = phi ptr [ %35, %31 ], [ %30, %28 ]
  %39 = phi i32 [ %36, %31 ], [ %22, %28 ]
  %40 = getelementptr inbounds %struct._seq_t, ptr %0, i64 0, i32 1
  %41 = add i32 %39, 1
  %42 = zext i32 %41 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %38, ptr nonnull align 1 %23, i64 %42, i1 false)
  %43 = getelementptr inbounds %struct._seq_t, ptr %0, i64 0, i32 5
  store i32 0, ptr %43, align 4, !tbaa !42
  %44 = load i32, ptr %10, align 8, !tbaa !72
  %45 = tail call fastcc ptr @read_line_buf(ptr noundef nonnull %4, i32 noundef %44) #35
  %46 = load i32, ptr %5, align 4, !tbaa !75
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %114, label %48

48:                                               ; preds = %37
  %49 = getelementptr inbounds %struct._seq_t, ptr %0, i64 0, i32 7
  %50 = getelementptr inbounds %struct._seq_t, ptr %0, i64 0, i32 2
  br label %51

51:                                               ; preds = %104, %48
  %52 = phi i32 [ %46, %48 ], [ %107, %104 ]
  %53 = phi ptr [ %45, %48 ], [ %106, %104 ]
  %54 = load i8, ptr %53, align 1, !tbaa !27
  %55 = icmp eq i8 %54, 62
  br i1 %55, label %109, label %56

56:                                               ; preds = %51
  %57 = load i32, ptr %43, align 4, !tbaa !42
  %58 = add i32 %52, 1
  %59 = add i32 %58, %57
  %60 = load i32, ptr %49, align 4, !tbaa !74
  %61 = icmp ugt i32 %59, %60
  br i1 %61, label %62, label %69

62:                                               ; preds = %56
  %63 = add i32 %60, 262144
  %64 = tail call i32 @llvm.umax.i32(i32 %59, i32 %63)
  store i32 %64, ptr %49, align 4, !tbaa !74
  %65 = load ptr, ptr %50, align 8, !tbaa !41
  %66 = zext i32 %64 to i64
  %67 = tail call fastcc ptr @xrealloc(ptr noundef %65, i64 noundef %66) #31
  store ptr %67, ptr %50, align 8, !tbaa !41
  %68 = load i8, ptr %53, align 1, !tbaa !27
  br label %69

69:                                               ; preds = %62, %56
  %70 = phi i8 [ %68, %62 ], [ %54, %56 ]
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %104, label %72

72:                                               ; preds = %69
  %73 = tail call ptr @__ctype_b_loc() #36
  br label %74

74:                                               ; preds = %101, %72
  %75 = phi i8 [ %70, %72 ], [ %102, %101 ]
  %76 = phi ptr [ %53, %72 ], [ %77, %101 ]
  %77 = getelementptr inbounds i8, ptr %76, i64 1
  %78 = load ptr, ptr %73, align 8, !tbaa !7
  %79 = zext i8 %75 to i64
  %80 = getelementptr inbounds i16, ptr %78, i64 %79
  %81 = load i16, ptr %80, align 2, !tbaa !78
  %82 = zext i16 %81 to i32
  %83 = and i32 %82, 256
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %94

85:                                               ; preds = %74
  %86 = and i32 %82, 512
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %101, label %88

88:                                               ; preds = %85
  %89 = tail call ptr @__ctype_toupper_loc() #36
  %90 = load ptr, ptr %89, align 8, !tbaa !7
  %91 = getelementptr inbounds i32, ptr %90, i64 %79
  %92 = load i32, ptr %91, align 4, !tbaa !11
  %93 = trunc i32 %92 to i8
  br label %94

94:                                               ; preds = %88, %74
  %95 = phi i8 [ %93, %88 ], [ %75, %74 ]
  %96 = load ptr, ptr %50, align 8, !tbaa !41
  %97 = load i32, ptr %43, align 4, !tbaa !42
  %98 = add i32 %97, 1
  store i32 %98, ptr %43, align 4, !tbaa !42
  %99 = zext i32 %97 to i64
  %100 = getelementptr inbounds i8, ptr %96, i64 %99
  store i8 %95, ptr %100, align 1, !tbaa !27
  br label %101

101:                                              ; preds = %94, %85
  %102 = load i8, ptr %77, align 1, !tbaa !27
  %103 = icmp eq i8 %102, 0
  br i1 %103, label %104, label %74, !llvm.loop !80

104:                                              ; preds = %101, %69
  %105 = load i32, ptr %10, align 8, !tbaa !72
  %106 = tail call fastcc ptr @read_line_buf(ptr noundef nonnull %4, i32 noundef %105) #35
  %107 = load i32, ptr %5, align 4, !tbaa !75
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %114, label %51, !llvm.loop !81

109:                                              ; preds = %51
  %110 = icmp eq i32 %2, 0
  br i1 %110, label %114, label %111

111:                                              ; preds = %109
  %112 = load ptr, ptr @stderr, align 8, !tbaa !7
  %113 = tail call i64 @fwrite(ptr nonnull @.str.34, i64 238, i64 1, ptr %112) #37
  br label %114

114:                                              ; preds = %111, %109, %104, %37
  %115 = getelementptr inbounds %struct._seq_t, ptr %0, i64 0, i32 2
  %116 = load ptr, ptr %115, align 8, !tbaa !41
  %117 = load i32, ptr %43, align 4, !tbaa !42
  %118 = zext i32 %117 to i64
  %119 = getelementptr inbounds i8, ptr %116, i64 %118
  store i8 0, ptr %119, align 1, !tbaa !27
  %120 = load ptr, ptr %40, align 8, !tbaa !35
  %121 = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %120, ptr noundef nonnull dereferenceable(1) @.str.35) #33
  %122 = icmp eq ptr %121, null
  br i1 %122, label %123, label %125

123:                                              ; preds = %114
  %124 = tail call ptr @__ctype_b_loc() #36
  br label %162

125:                                              ; preds = %114
  %126 = getelementptr inbounds i8, ptr %121, i64 6
  %127 = add i32 %39, -6
  %128 = tail call ptr @__ctype_b_loc() #36
  %129 = load ptr, ptr %128, align 8, !tbaa !7
  %130 = load i8, ptr %126, align 1, !tbaa !27
  %131 = sext i8 %130 to i64
  %132 = getelementptr inbounds i16, ptr %129, i64 %131
  %133 = load i16, ptr %132, align 2, !tbaa !78
  %134 = and i16 %133, 2048
  %135 = icmp eq i16 %134, 0
  br i1 %135, label %136, label %141

136:                                              ; preds = %141, %125
  %137 = phi i8 [ %130, %125 ], [ %146, %141 ]
  %138 = phi i32 [ %127, %125 ], [ %145, %141 ]
  %139 = phi ptr [ %126, %125 ], [ %144, %141 ]
  %140 = icmp eq i8 %137, 0
  br i1 %140, label %162, label %152

141:                                              ; preds = %141, %125
  %142 = phi ptr [ %144, %141 ], [ %126, %125 ]
  %143 = phi i32 [ %145, %141 ], [ %127, %125 ]
  %144 = getelementptr inbounds i8, ptr %142, i64 1
  %145 = add i32 %143, -1
  %146 = load i8, ptr %144, align 1, !tbaa !27
  %147 = sext i8 %146 to i64
  %148 = getelementptr inbounds i16, ptr %129, i64 %147
  %149 = load i16, ptr %148, align 2, !tbaa !78
  %150 = and i16 %149, 2048
  %151 = icmp eq i16 %150, 0
  br i1 %151, label %136, label %141, !llvm.loop !82

152:                                              ; preds = %152, %136
  %153 = phi i8 [ %158, %152 ], [ %137, %136 ]
  %154 = phi ptr [ %156, %152 ], [ %139, %136 ]
  %155 = phi ptr [ %157, %152 ], [ %121, %136 ]
  %156 = getelementptr inbounds i8, ptr %154, i64 1
  %157 = getelementptr inbounds i8, ptr %155, i64 1
  store i8 %153, ptr %155, align 1, !tbaa !27
  %158 = load i8, ptr %156, align 1, !tbaa !27
  %159 = icmp eq i8 %158, 0
  br i1 %159, label %160, label %152, !llvm.loop !83

160:                                              ; preds = %152
  %161 = load ptr, ptr %40, align 8, !tbaa !35
  br label %162

162:                                              ; preds = %160, %136, %123
  %163 = phi ptr [ %124, %123 ], [ %128, %160 ], [ %128, %136 ]
  %164 = phi ptr [ %120, %123 ], [ %161, %160 ], [ %120, %136 ]
  %165 = phi i32 [ %39, %123 ], [ %138, %160 ], [ %138, %136 ]
  %166 = zext i32 %165 to i64
  %167 = getelementptr inbounds i8, ptr %164, i64 %166
  %168 = load ptr, ptr %163, align 8, !tbaa !7
  br label %169

169:                                              ; preds = %169, %162
  %170 = phi ptr [ %167, %162 ], [ %171, %169 ]
  %171 = getelementptr inbounds i8, ptr %170, i64 -1
  %172 = load i8, ptr %171, align 1, !tbaa !27
  %173 = sext i8 %172 to i64
  %174 = getelementptr inbounds i16, ptr %168, i64 %173
  %175 = load i16, ptr %174, align 2, !tbaa !78
  %176 = and i16 %175, 8194
  %177 = icmp eq i16 %176, 0
  br i1 %177, label %178, label %169, !llvm.loop !84

178:                                              ; preds = %169
  %.lcssa = phi ptr [ %170, %169 ]
  %179 = load i32, ptr %43, align 4, !tbaa !42
  %180 = add i32 %179, %1
  %181 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %.lcssa, i64 noundef 24, ptr noundef nonnull @.str.36, i32 noundef %180) #31
  %182 = icmp ugt i32 %181, 23
  br i1 %182, label %183, label %185

183:                                              ; preds = %178
  %184 = load i32, ptr %43, align 4, !tbaa !42
  tail call void (ptr, ...) @fatal(ptr noundef nonnull @.str.37, i32 noundef %184) #34
  unreachable

185:                                              ; preds = %178, %16, %3
  %186 = phi i32 [ 0, %178 ], [ -1, %3 ], [ -1, %16 ]
  ret i32 %186
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i64 noundef) local_unnamed_addr #7

; Function Attrs: nounwind optsize uwtable
define internal fastcc noalias ptr @xmalloc(i64 noundef %0) unnamed_addr #0 {
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #38
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %9

4:                                                ; preds = %1
  %5 = tail call ptr @__errno_location() #36
  %6 = load i32, ptr %5, align 4, !tbaa !11
  %7 = tail call ptr @strerror(i32 noundef %6) #31
  %8 = load i32, ptr %5, align 4, !tbaa !11
  tail call void (ptr, ...) @fatal(ptr noundef nonnull @.str.2.14, i64 noundef %0, ptr noundef %7, i32 noundef %8) #39
  unreachable

9:                                                ; preds = %1
  ret ptr %2
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc noalias ptr @xcalloc(i64 noundef %0, i64 noundef %1) unnamed_addr #0 {
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #40
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %10

5:                                                ; preds = %2
  %6 = tail call ptr @__errno_location() #36
  %7 = load i32, ptr %6, align 4, !tbaa !11
  %8 = tail call ptr @strerror(i32 noundef %7) #31
  %9 = load i32, ptr %6, align 4, !tbaa !11
  tail call void (ptr, ...) @fatal(ptr noundef nonnull @.str.3.15, i64 noundef %0, i64 noundef %1, ptr noundef %8, i32 noundef %9) #39
  unreachable

10:                                               ; preds = %2
  ret ptr %3
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @bld_table(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._hash_env_t, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !46
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %119, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._hash_env_t, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !45
  %8 = getelementptr inbounds %struct._hash_env_t, ptr %0, i64 0, i32 5
  %9 = getelementptr inbounds %struct._hash_env_t, ptr %0, i64 0, i32 4
  %10 = getelementptr inbounds %struct._hash_env_t, ptr %0, i64 0, i32 3
  br label %11

11:                                               ; preds = %22, %5
  %12 = phi i32 [ %3, %5 ], [ %23, %22 ]
  %13 = phi ptr [ %7, %5 ], [ %24, %22 ]
  %14 = phi i32 [ 0, %5 ], [ %25, %22 ]
  %15 = load i32, ptr %8, align 4, !tbaa !43
  %16 = icmp ugt i32 %15, 1
  br label %31

17:                                               ; preds = %109, %66
  %18 = phi i32 [ %68, %66 ], [ %115, %109 ]
  %19 = phi i32 [ %12, %66 ], [ %116, %109 ]
  %20 = phi ptr [ %67, %66 ], [ %91, %109 ]
  %21 = icmp ugt i32 %19, %18
  br i1 %21, label %22, label %119

22:                                               ; preds = %26, %17
  %23 = phi i32 [ %27, %26 ], [ %19, %17 ]
  %24 = phi ptr [ %28, %26 ], [ %20, %17 ]
  %25 = phi i32 [ %30, %26 ], [ %18, %17 ]
  br label %11, !llvm.loop !85

26:                                               ; preds = %80, %71
  %27 = phi i32 [ %12, %71 ], [ %116, %80 ]
  %28 = phi ptr [ %73, %71 ], [ %81, %80 ]
  %29 = phi i64 [ %78, %71 ], [ %86, %80 ]
  %30 = trunc i64 %29 to i32
  br label %22

31:                                               ; preds = %42, %11
  %32 = phi ptr [ %13, %11 ], [ %43, %42 ]
  %33 = phi i32 [ %14, %11 ], [ %48, %42 ]
  br i1 %16, label %34, label %66

34:                                               ; preds = %31
  %35 = tail call i32 @llvm.umax.i32(i32 %33, i32 %12)
  br label %36

36:                                               ; preds = %50, %34
  %37 = phi i32 [ 0, %34 ], [ %52, %50 ]
  %38 = phi i32 [ %33, %34 ], [ %48, %50 ]
  %39 = phi i32 [ 1, %34 ], [ %53, %50 ]
  %40 = phi ptr [ %32, %34 ], [ %43, %50 ]
  %41 = icmp eq i32 %38, %35
  br i1 %41, label %55, label %42

42:                                               ; preds = %36
  %43 = getelementptr inbounds i8, ptr %40, i64 1
  %44 = load i8, ptr %40, align 1, !tbaa !27
  %45 = zext i8 %44 to i64
  %46 = getelementptr inbounds [128 x i32], ptr @encoding, i64 0, i64 %45
  %47 = load i32, ptr %46, align 4, !tbaa !11
  %48 = add i32 %38, 1
  %49 = icmp ugt i32 %47, 3
  br i1 %49, label %31, label %50, !llvm.loop !85

50:                                               ; preds = %42
  %51 = shl i32 %37, 2
  %52 = add nuw i32 %47, %51
  %53 = add nuw i32 %39, 1
  %54 = icmp eq i32 %53, %15
  br i1 %54, label %59, label %36, !llvm.loop !86

55:                                               ; preds = %36
  %.lcssa9 = phi i32 [ %35, %36 ]
  %.lcssa7 = phi ptr [ %32, %36 ]
  %.lcssa4 = phi i32 [ %33, %36 ]
  %.lcssa = phi i32 [ %37, %36 ]
  %56 = sub i32 %.lcssa9, %.lcssa4
  %57 = zext i32 %56 to i64
  %58 = getelementptr i8, ptr %.lcssa7, i64 %57
  br label %66

59:                                               ; preds = %50
  %.lcssa8 = phi ptr [ %32, %50 ]
  %.lcssa5 = phi i32 [ %33, %50 ]
  %.lcssa2 = phi i32 [ %52, %50 ]
  %60 = getelementptr i8, ptr %.lcssa8, i64 1
  %61 = add i32 %15, -2
  %62 = zext i32 %61 to i64
  %63 = getelementptr i8, ptr %60, i64 %62
  %64 = add i32 %.lcssa5, -1
  %65 = add i32 %64, %15
  br label %66

66:                                               ; preds = %59, %55, %31
  %67 = phi ptr [ %58, %55 ], [ %63, %59 ], [ %32, %31 ]
  %68 = phi i32 [ %.lcssa9, %55 ], [ %65, %59 ], [ %33, %31 ]
  %69 = phi i32 [ %.lcssa, %55 ], [ %.lcssa2, %59 ], [ 0, %31 ]
  %70 = icmp ult i32 %68, %12
  br i1 %70, label %71, label %17

71:                                               ; preds = %66
  %72 = zext i32 %68 to i64
  %73 = getelementptr inbounds i8, ptr %67, i64 1
  %74 = load i8, ptr %67, align 1, !tbaa !27
  %75 = zext i8 %74 to i64
  %76 = getelementptr inbounds [128 x i32], ptr @encoding, i64 0, i64 %75
  %77 = load i32, ptr %76, align 4, !tbaa !11
  %78 = add nuw nsw i64 %72, 1
  %79 = icmp ult i32 %77, 4
  br i1 %79, label %88, label %26

80:                                               ; preds = %109
  %81 = getelementptr inbounds i8, ptr %91, i64 1
  %82 = load i8, ptr %91, align 1, !tbaa !27
  %83 = zext i8 %82 to i64
  %84 = getelementptr inbounds [128 x i32], ptr @encoding, i64 0, i64 %83
  %85 = load i32, ptr %84, align 4, !tbaa !11
  %86 = add nuw nsw i64 %89, 1
  %87 = icmp ult i32 %85, 4
  br i1 %87, label %88, label %26

88:                                               ; preds = %80, %71
  %89 = phi i64 [ %86, %80 ], [ %78, %71 ]
  %90 = phi i32 [ %85, %80 ], [ %77, %71 ]
  %91 = phi ptr [ %81, %80 ], [ %73, %71 ]
  %92 = phi i32 [ %96, %80 ], [ %69, %71 ]
  %93 = load i32, ptr %9, align 8, !tbaa !47
  %94 = and i32 %93, %92
  %95 = shl i32 %94, 2
  %96 = or i32 %95, %90
  %97 = tail call fastcc ptr @xmalloc(i64 noundef 8) #31
  store i32 %96, ptr %97, align 4, !tbaa !87
  %98 = load ptr, ptr %0, align 8, !tbaa !49
  %99 = and i32 %96, 524287
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds ptr, ptr %98, i64 %100
  %102 = tail call ptr @tsearch(ptr noundef nonnull %97, ptr noundef %101, ptr noundef nonnull @hash_node_compare) #31
  %103 = load ptr, ptr %102, align 8, !tbaa !7
  %104 = icmp eq ptr %103, %97
  br i1 %104, label %109, label %105

105:                                              ; preds = %88
  tail call void @free(ptr noundef nonnull %97) #31
  %106 = load ptr, ptr %102, align 8, !tbaa !7
  %107 = getelementptr inbounds %struct._hash_node_t, ptr %106, i64 0, i32 1
  %108 = load i32, ptr %107, align 4, !tbaa !89
  br label %109

109:                                              ; preds = %105, %88
  %110 = phi i32 [ %108, %105 ], [ -1, %88 ]
  %111 = phi ptr [ %106, %105 ], [ %97, %88 ]
  %112 = load ptr, ptr %10, align 8, !tbaa !48
  %113 = getelementptr inbounds i32, ptr %112, i64 %89
  store i32 %110, ptr %113, align 4, !tbaa !11
  %114 = getelementptr inbounds %struct._hash_node_t, ptr %111, i64 0, i32 1
  %115 = trunc i64 %89 to i32
  store i32 %115, ptr %114, align 4, !tbaa !89
  %116 = load i32, ptr %2, align 8, !tbaa !46
  %117 = zext i32 %116 to i64
  %118 = icmp ult i64 %89, %117
  br i1 %118, label %80, label %17

119:                                              ; preds = %17, %1
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @SIM4(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) unnamed_addr #0 {
  %4 = alloca %struct._exon_t, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca %struct._splice_score_t, align 4
  %8 = alloca %struct._splice_score_t, align 8
  %9 = alloca %struct._splice_score_t, align 8
  %10 = alloca %struct._collec_t, align 8
  %11 = alloca %struct._collec_t, align 8
  %12 = alloca %struct._hash_env_t, align 8
  %13 = alloca %struct._hash_env_t, align 8
  %14 = alloca %struct._hash_env_t, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #30
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #30
  %15 = getelementptr inbounds %struct._hash_env_t, ptr %0, i64 0, i32 2
  %16 = load i32, ptr %15, align 8, !tbaa !46
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %2962, label %18

18:                                               ; preds = %3
  %19 = getelementptr inbounds %struct._seq_t, ptr %1, i64 0, i32 5
  %20 = load i32, ptr %19, align 4, !tbaa !42
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %2962, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct._collec_t, ptr %10, i64 0, i32 2
  store i32 5, ptr %23, align 4, !tbaa !50
  %24 = getelementptr inbounds %struct._collec_t, ptr %10, i64 0, i32 1
  store i32 0, ptr %24, align 8, !tbaa !52
  %25 = tail call fastcc ptr @xmalloc(i64 noundef 40) #31
  store ptr %25, ptr %10, align 8, !tbaa !27
  %26 = getelementptr inbounds %struct._seq_t, ptr %1, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !41
  %28 = load i32, ptr %19, align 4, !tbaa !42
  %29 = load i32, ptr getelementptr inbounds (%struct._options_t, ptr @options, i64 0, i32 8), align 8, !tbaa !26
  call fastcc void @exon_cores(ptr noundef nonnull %0, ptr noundef %27, i32 noundef %28, i32 noundef 1, i32 noundef 1, i32 noundef %29, ptr noundef nonnull %10, ptr noundef %2, ptr noundef null) #35
  %30 = getelementptr inbounds %struct._collec_t, ptr %11, i64 0, i32 2
  %31 = getelementptr inbounds %struct._collec_t, ptr %11, i64 0, i32 1
  %32 = getelementptr inbounds %struct._collec_t, ptr %2, i64 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, i8 0, i64 16, i1 false)
  %33 = load i32, ptr %32, align 8, !tbaa !52
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %2959, label %35

35:                                               ; preds = %22
  %36 = getelementptr inbounds %struct._hash_env_t, ptr %0, i64 0, i32 1
  %37 = getelementptr inbounds %struct._hash_env_t, ptr %0, i64 0, i32 5
  %38 = getelementptr inbounds %struct._hash_env_t, ptr %12, i64 0, i32 5
  %39 = getelementptr inbounds %struct._hash_env_t, ptr %12, i64 0, i32 1
  %40 = getelementptr inbounds %struct._hash_env_t, ptr %12, i64 0, i32 2
  %41 = getelementptr inbounds %struct._hash_env_t, ptr %12, i64 0, i32 4
  %42 = getelementptr inbounds %struct._hash_env_t, ptr %12, i64 0, i32 3
  %43 = getelementptr inbounds %struct._hash_env_t, ptr %13, i64 0, i32 5
  %44 = getelementptr inbounds %struct._hash_env_t, ptr %13, i64 0, i32 1
  %45 = getelementptr inbounds %struct._hash_env_t, ptr %13, i64 0, i32 2
  %46 = getelementptr inbounds %struct._hash_env_t, ptr %13, i64 0, i32 4
  %47 = getelementptr inbounds %struct._hash_env_t, ptr %13, i64 0, i32 3
  %48 = getelementptr inbounds %struct._hash_env_t, ptr %14, i64 0, i32 5
  %49 = getelementptr inbounds %struct._hash_env_t, ptr %14, i64 0, i32 1
  %50 = getelementptr inbounds %struct._hash_env_t, ptr %14, i64 0, i32 2
  %51 = getelementptr inbounds %struct._hash_env_t, ptr %14, i64 0, i32 4
  %52 = getelementptr inbounds %struct._hash_env_t, ptr %14, i64 0, i32 3
  %53 = getelementptr inbounds %struct._splice_score_t, ptr %7, i64 0, i32 1
  %54 = getelementptr inbounds %struct._splice_score_t, ptr %7, i64 0, i32 2
  %55 = getelementptr inbounds %struct._splice_score_t, ptr %7, i64 0, i32 6
  %56 = getelementptr inbounds %struct._splice_score_t, ptr %7, i64 0, i32 3
  %57 = getelementptr inbounds %struct._splice_score_t, ptr %8, i64 0, i32 2
  %58 = getelementptr inbounds %struct._splice_score_t, ptr %8, i64 0, i32 4
  %59 = getelementptr inbounds %struct._splice_score_t, ptr %8, i64 0, i32 5
  %60 = getelementptr inbounds %struct._splice_score_t, ptr %8, i64 0, i32 3
  %61 = getelementptr inbounds i8, ptr %8, i64 24
  %62 = getelementptr inbounds %struct._splice_score_t, ptr %9, i64 0, i32 1
  %63 = getelementptr inbounds %struct._splice_score_t, ptr %9, i64 0, i32 2
  %64 = getelementptr inbounds %struct._splice_score_t, ptr %9, i64 0, i32 4
  %65 = getelementptr inbounds %struct._splice_score_t, ptr %9, i64 0, i32 5
  %66 = getelementptr inbounds %struct._splice_score_t, ptr %9, i64 0, i32 3
  %67 = getelementptr inbounds i8, ptr %9, i64 24
  %68 = getelementptr inbounds %struct._exon_t, ptr %4, i64 0, i32 1
  %69 = getelementptr inbounds %struct._exon_t, ptr %4, i64 0, i32 2
  %70 = getelementptr inbounds %struct._exon_t, ptr %4, i64 0, i32 3
  br label %71

71:                                               ; preds = %2954, %35
  %72 = phi i64 [ 0, %35 ], [ %2955, %2954 ]
  %73 = load ptr, ptr %2, align 8, !tbaa !27
  %74 = getelementptr inbounds ptr, ptr %73, i64 %72
  %75 = load ptr, ptr %74, align 8, !tbaa !7
  %76 = getelementptr inbounds %struct._result_t, ptr %75, i64 0, i32 1
  %77 = getelementptr inbounds %struct._result_t, ptr %75, i64 0, i32 5
  %78 = getelementptr inbounds %struct._result_t, ptr %75, i64 0, i32 5, i32 1
  store i32 0, ptr %78, align 4, !tbaa !90
  %79 = getelementptr inbounds %struct._result_t, ptr %75, i64 0, i32 5, i32 2
  store i32 0, ptr %79, align 4, !tbaa !91
  %80 = load ptr, ptr %36, align 8, !tbaa !45
  %81 = load ptr, ptr %26, align 8, !tbaa !41
  call fastcc void @kill_polyA(ptr noundef %75, ptr noundef %80, ptr noundef %81) #35
  %82 = getelementptr inbounds %struct._result_t, ptr %75, i64 0, i32 1, i32 1
  %83 = load i32, ptr %82, align 8, !tbaa !52
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %2954, label %85

85:                                               ; preds = %71
  %86 = load i32, ptr %79, align 4, !tbaa !91
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %551

88:                                               ; preds = %85
  %89 = load ptr, ptr %76, align 8, !tbaa !27
  %90 = load ptr, ptr %89, align 8, !tbaa !7
  %91 = getelementptr inbounds %struct._exon_t, ptr %90, i64 0, i32 1
  %92 = load i32, ptr %91, align 4, !tbaa !92
  %93 = icmp ugt i32 %92, 1
  br i1 %93, label %94, label %551

94:                                               ; preds = %88
  %95 = add i32 %92, -62
  %96 = icmp ult i32 %95, -61
  br i1 %96, label %97, label %184

97:                                               ; preds = %94
  %98 = load i32, ptr %90, align 4, !tbaa !94
  %99 = add i32 %98, -1
  %100 = getelementptr inbounds %struct._result_t, ptr %75, i64 0, i32 2
  %101 = load i32, ptr %100, align 8, !tbaa !95
  %102 = icmp ugt i32 %99, %101
  br i1 %102, label %103, label %184

103:                                              ; preds = %97
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %12) #30
  %104 = load i32, ptr %37, align 4, !tbaa !43
  %105 = call i32 @llvm.umin.i32(i32 %104, i32 10)
  %106 = load ptr, ptr %26, align 8, !tbaa !41
  %107 = add i32 %92, -1
  store i32 %105, ptr %38, align 4, !tbaa !43
  store ptr %106, ptr %39, align 8, !tbaa !45
  store i32 %107, ptr %40, align 8, !tbaa !46
  %108 = shl nuw nsw i32 %105, 1
  %109 = add nsw i32 %108, -2
  %110 = shl nsw i32 -1, %109
  %111 = xor i32 %110, -1
  store i32 %111, ptr %41, align 8, !tbaa !47
  %112 = zext i32 %92 to i64
  %113 = shl nuw nsw i64 %112, 2
  %114 = call fastcc ptr @xmalloc(i64 noundef %113) #31
  store ptr %114, ptr %42, align 8, !tbaa !48
  %115 = call fastcc ptr @xcalloc(i64 noundef 524288, i64 noundef 8) #31
  store ptr %115, ptr %12, align 8, !tbaa !49
  call fastcc void @bld_table(ptr noundef nonnull %12) #35
  %116 = load ptr, ptr %36, align 8, !tbaa !45
  %117 = load i32, ptr %100, align 8, !tbaa !95
  %118 = zext i32 %117 to i64
  %119 = getelementptr inbounds i8, ptr %116, i64 %118
  %120 = load i32, ptr %90, align 4, !tbaa !94
  %121 = xor i32 %117, -1
  %122 = add i32 %120, %121
  %123 = add i32 %117, 1
  %124 = load i32, ptr getelementptr inbounds (%struct._options_t, ptr @options, i64 0, i32 4), align 8, !tbaa !22
  call fastcc void @exon_cores(ptr noundef nonnull %12, ptr noundef %119, i32 noundef %122, i32 noundef 1, i32 noundef %123, i32 noundef %124, ptr noundef nonnull %10, ptr noundef null, ptr noundef nonnull %11) #35
  call fastcc void @free_hash_env(ptr noundef nonnull %12) #35
  %125 = load i32, ptr %31, align 8, !tbaa !52
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %178, label %127

127:                                              ; preds = %103
  %128 = zext i32 %125 to i64
  br label %129

129:                                              ; preds = %129, %127
  %130 = phi i64 [ 0, %127 ], [ %136, %129 ]
  %131 = load ptr, ptr %11, align 8, !tbaa !27
  %132 = getelementptr inbounds ptr, ptr %131, i64 %130
  %133 = load ptr, ptr %132, align 8, !tbaa !7
  %134 = load <4 x i32>, ptr %133, align 4, !tbaa !11
  %135 = shufflevector <4 x i32> %134, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  store <4 x i32> %135, ptr %133, align 4, !tbaa !11
  %136 = add nuw nsw i64 %130, 1
  %137 = icmp eq i64 %136, %128
  br i1 %137, label %138, label %129, !llvm.loop !96

138:                                              ; preds = %129
  %139 = load ptr, ptr %11, align 8, !tbaa !27
  %140 = add i32 %125, -1
  %141 = zext i32 %140 to i64
  %142 = getelementptr inbounds ptr, ptr %139, i64 %141
  %143 = load ptr, ptr %142, align 8, !tbaa !7
  %144 = load ptr, ptr %36, align 8, !tbaa !45
  %145 = load i32, ptr %15, align 8, !tbaa !46
  %146 = load ptr, ptr %26, align 8, !tbaa !41
  %147 = getelementptr inbounds %struct._exon_t, ptr %143, i64 0, i32 3
  %148 = getelementptr inbounds %struct._exon_t, ptr %143, i64 0, i32 2
  %149 = load i32, ptr %148, align 4, !tbaa !97
  %150 = icmp ult i32 %149, %145
  br i1 %150, label %151, label %174

151:                                              ; preds = %138
  %152 = load i32, ptr %19, align 4, !tbaa !42
  %153 = load i32, ptr %147, align 4, !tbaa !98
  %154 = zext i32 %153 to i64
  %155 = zext i32 %149 to i64
  %156 = call i32 @llvm.umax.i32(i32 %153, i32 %152)
  %157 = zext i32 %156 to i64
  br label %158

158:                                              ; preds = %168, %151
  %159 = phi i64 [ %155, %151 ], [ %169, %168 ]
  %160 = phi i64 [ %154, %151 ], [ %171, %168 ]
  %161 = icmp eq i64 %160, %157
  br i1 %161, label %174, label %162

162:                                              ; preds = %158
  %163 = getelementptr inbounds i8, ptr %144, i64 %159
  %164 = load i8, ptr %163, align 1, !tbaa !27
  %165 = getelementptr inbounds i8, ptr %146, i64 %160
  %166 = load i8, ptr %165, align 1, !tbaa !27
  %167 = icmp eq i8 %164, %166
  br i1 %167, label %168, label %174

168:                                              ; preds = %162
  %169 = add nuw nsw i64 %159, 1
  %170 = trunc i64 %169 to i32
  store i32 %170, ptr %148, align 4, !tbaa !97
  %171 = add nuw nsw i64 %160, 1
  %172 = trunc i64 %171 to i32
  store i32 %172, ptr %147, align 4, !tbaa !98
  %173 = icmp eq i32 %145, %170
  br i1 %173, label %174, label %158, !llvm.loop !99

174:                                              ; preds = %168, %162, %158, %138
  %175 = load i32, ptr %37, align 4, !tbaa !43
  call fastcc void @merge(ptr noundef nonnull %76, ptr noundef nonnull %11, i32 noundef 0, i32 noundef %175) #35
  store i32 0, ptr %31, align 8, !tbaa !52
  %176 = load ptr, ptr %76, align 8, !tbaa !27
  %177 = load ptr, ptr %176, align 8, !tbaa !7
  br label %178

178:                                              ; preds = %174, %103
  %179 = phi ptr [ %177, %174 ], [ %90, %103 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %12) #30
  %180 = load i32, ptr %82, align 8, !tbaa !52
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %226, label %182

182:                                              ; preds = %178
  %183 = load ptr, ptr %76, align 8, !tbaa !27
  br label %184

184:                                              ; preds = %182, %97, %94
  %185 = phi ptr [ %183, %182 ], [ %89, %97 ], [ %89, %94 ]
  %186 = phi ptr [ %179, %182 ], [ %90, %97 ], [ %90, %94 ]
  %187 = phi i32 [ %180, %182 ], [ %83, %97 ], [ %83, %94 ]
  %188 = load ptr, ptr %26, align 8, !tbaa !41
  %189 = zext i32 %187 to i64
  br label %190

190:                                              ; preds = %196, %184
  %191 = phi i64 [ 0, %184 ], [ %197, %196 ]
  %192 = getelementptr inbounds ptr, ptr %185, i64 %191
  %193 = load ptr, ptr %192, align 8, !tbaa !7
  %194 = call fastcc i32 @is_polyAT_exon_p(ptr noundef %193, ptr noundef %188) #35, !range !100
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %199, label %196

196:                                              ; preds = %190
  %197 = add nuw nsw i64 %191, 1
  %198 = icmp eq i64 %197, %189
  br i1 %198, label %201, label %190, !llvm.loop !101

199:                                              ; preds = %190
  %.lcssa = phi i64 [ %191, %190 ]
  %200 = trunc i64 %.lcssa to i32
  br label %201

201:                                              ; preds = %199, %196
  %202 = phi i32 [ %200, %199 ], [ %187, %196 ]
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %226, label %204

204:                                              ; preds = %201
  %205 = zext i32 %202 to i64
  br label %206

206:                                              ; preds = %206, %204
  %207 = phi i64 [ 0, %204 ], [ %211, %206 ]
  %208 = load ptr, ptr %76, align 8, !tbaa !27
  %209 = getelementptr inbounds ptr, ptr %208, i64 %207
  %210 = load ptr, ptr %209, align 8, !tbaa !7
  call void @free(ptr noundef %210) #31
  %211 = add nuw nsw i64 %207, 1
  %212 = icmp eq i64 %211, %205
  br i1 %212, label %213, label %206, !llvm.loop !102

213:                                              ; preds = %206
  %214 = load ptr, ptr %76, align 8, !tbaa !27
  %215 = getelementptr inbounds ptr, ptr %214, i64 %205
  %216 = load i32, ptr %82, align 8, !tbaa !52
  %217 = sub i32 %216, %202
  %218 = zext i32 %217 to i64
  %219 = shl nuw nsw i64 %218, 3
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %214, ptr nonnull align 8 %215, i64 %219, i1 false)
  %220 = load i32, ptr %82, align 8, !tbaa !52
  %221 = sub i32 %220, %202
  store i32 %221, ptr %82, align 8, !tbaa !52
  %222 = icmp eq i32 %220, %202
  br i1 %222, label %2954, label %223

223:                                              ; preds = %213
  %224 = load ptr, ptr %76, align 8, !tbaa !27
  %225 = load ptr, ptr %224, align 8, !tbaa !7
  br label %226

226:                                              ; preds = %223, %201, %178
  %227 = phi ptr [ %225, %223 ], [ %186, %201 ], [ %179, %178 ]
  %228 = getelementptr inbounds %struct._exon_t, ptr %227, i64 0, i32 1
  %229 = load i32, ptr %228, align 4, !tbaa !92
  %230 = add i32 %229, -1
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %551, label %232

232:                                              ; preds = %226
  %233 = call i32 @llvm.umin.i32(i32 %230, i32 250)
  %234 = shl nuw nsw i32 %233, 2
  %235 = load i32, ptr %227, align 4, !tbaa !94
  %236 = icmp slt i32 %234, %235
  %237 = add nsw i32 %235, -1
  %238 = select i1 %236, i32 %234, i32 %237
  %239 = load ptr, ptr %26, align 8, !tbaa !41
  %240 = zext i32 %229 to i64
  %241 = getelementptr inbounds i8, ptr %239, i64 %240
  %242 = getelementptr inbounds i8, ptr %241, i64 -1
  %243 = zext i32 %233 to i64
  %244 = sub nsw i64 0, %243
  %245 = getelementptr inbounds i8, ptr %242, i64 %244
  %246 = load ptr, ptr %36, align 8, !tbaa !45
  %247 = zext i32 %235 to i64
  %248 = getelementptr inbounds i8, ptr %246, i64 %247
  %249 = getelementptr inbounds i8, ptr %248, i64 -1
  %250 = sext i32 %238 to i64
  %251 = sub nsw i64 0, %250
  %252 = getelementptr inbounds i8, ptr %249, i64 %251
  %253 = xor i32 %233, -1
  %254 = add i32 %229, %253
  %255 = xor i32 %238, -1
  %256 = add i32 %235, %255
  %257 = load i32, ptr %37, align 4, !tbaa !43
  %258 = add nuw nsw i32 %233, 1
  %259 = zext i32 %238 to i64
  br label %260

260:                                              ; preds = %268, %232
  %261 = phi i64 [ %272, %268 ], [ %259, %232 ]
  %262 = phi i64 [ %269, %268 ], [ %243, %232 ]
  %263 = trunc i64 %262 to i32
  %264 = icmp sgt i32 %263, 0
  %265 = trunc i64 %261 to i32
  %266 = icmp sgt i32 %265, 0
  %267 = and i1 %266, %264
  br i1 %267, label %268, label %276

268:                                              ; preds = %260
  %269 = add nsw i64 %262, -1
  %270 = getelementptr inbounds i8, ptr %245, i64 %269
  %271 = load i8, ptr %270, align 1, !tbaa !27
  %272 = add nsw i64 %261, -1
  %273 = getelementptr inbounds i8, ptr %252, i64 %272
  %274 = load i8, ptr %273, align 1, !tbaa !27
  %275 = icmp eq i8 %271, %274
  br i1 %275, label %260, label %276, !llvm.loop !103

276:                                              ; preds = %268, %260
  %.lcssa3 = phi i32 [ %263, %268 ], [ %263, %260 ]
  %.lcssa2 = phi i32 [ %265, %268 ], [ %265, %260 ]
  %277 = icmp eq i32 %.lcssa3, 0
  %278 = icmp eq i32 %.lcssa2, 0
  %279 = or i1 %278, %277
  br i1 %279, label %280, label %283

280:                                              ; preds = %276
  %281 = add nsw i32 %254, %.lcssa3
  %282 = add nsw i32 %256, %.lcssa2
  br label %535

283:                                              ; preds = %276
  %284 = add i32 %238, %233
  %285 = add i32 %284, 1
  %286 = sext i32 %285 to i64
  %287 = shl nsw i64 %286, 2
  %288 = call fastcc ptr @xmalloc(i64 noundef %287) #31
  %289 = call fastcc ptr @xmalloc(i64 noundef %287) #31
  %290 = icmp slt i32 %284, 0
  br i1 %290, label %324, label %291

291:                                              ; preds = %283
  %292 = zext i32 %285 to i64
  %293 = add nuw nsw i64 %292, 3
  %294 = and i64 %293, 8589934588
  %295 = add nsw i64 %292, -1
  %296 = insertelement <4 x i64> poison, i64 %295, i64 0
  %297 = shufflevector <4 x i64> %296, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %298

298:                                              ; preds = %320, %291
  %299 = phi i64 [ 0, %291 ], [ %321, %320 ]
  %300 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %291 ], [ %322, %320 ]
  %301 = icmp ule <4 x i64> %300, %297
  %302 = extractelement <4 x i1> %301, i64 0
  br i1 %302, label %303, label %305

303:                                              ; preds = %298
  %304 = getelementptr inbounds i32, ptr %288, i64 %299
  store i32 %258, ptr %304, align 4, !tbaa !11
  br label %305

305:                                              ; preds = %303, %298
  %306 = extractelement <4 x i1> %301, i64 1
  br i1 %306, label %307, label %310

307:                                              ; preds = %305
  %308 = or i64 %299, 1
  %309 = getelementptr inbounds i32, ptr %288, i64 %308
  store i32 %258, ptr %309, align 4, !tbaa !11
  br label %310

310:                                              ; preds = %307, %305
  %311 = extractelement <4 x i1> %301, i64 2
  br i1 %311, label %312, label %315

312:                                              ; preds = %310
  %313 = or i64 %299, 2
  %314 = getelementptr inbounds i32, ptr %288, i64 %313
  store i32 %258, ptr %314, align 4, !tbaa !11
  br label %315

315:                                              ; preds = %312, %310
  %316 = extractelement <4 x i1> %301, i64 3
  br i1 %316, label %317, label %320

317:                                              ; preds = %315
  %318 = or i64 %299, 3
  %319 = getelementptr inbounds i32, ptr %288, i64 %318
  store i32 %258, ptr %319, align 4, !tbaa !11
  br label %320

320:                                              ; preds = %317, %315
  %321 = add i64 %299, 4
  %322 = add <4 x i64> %300, <i64 4, i64 4, i64 4, i64 4>
  %323 = icmp eq i64 %321, %294
  br i1 %323, label %324, label %298, !llvm.loop !104

324:                                              ; preds = %320, %283
  %325 = getelementptr inbounds i32, ptr %288, i64 %250
  store i32 %.lcssa3, ptr %325, align 4, !tbaa !11
  %326 = zext i32 %258 to i64
  %327 = shl nuw nsw i64 %326, 2
  %328 = call fastcc ptr @xmalloc(i64 noundef %327) #31
  %329 = call fastcc ptr @xmalloc(i64 noundef %327) #31
  br label %330

330:                                              ; preds = %330, %324
  %331 = phi i64 [ %333, %330 ], [ 1, %324 ]
  %332 = getelementptr inbounds i32, ptr %328, i64 %331
  store i32 %258, ptr %332, align 4, !tbaa !11
  %333 = add nuw nsw i64 %331, 1
  %334 = icmp eq i64 %333, %326
  br i1 %334, label %335, label %330, !llvm.loop !105

335:                                              ; preds = %330
  store i32 %.lcssa3, ptr %328, align 4, !tbaa !11
  store i32 %238, ptr %329, align 4, !tbaa !11
  %336 = sdiv i32 %257, 2
  %337 = shl nsw i32 %257, 1
  %338 = add i32 %238, -1
  %339 = sub i32 %338, %233
  %340 = add i32 %238, 2
  %341 = add nuw nsw i32 %233, 2
  %342 = load i32, ptr getelementptr inbounds (%struct._options_t, ptr @options, i64 0, i32 5), align 4
  br label %349

343:                                              ; preds = %503, %401
  %344 = add nuw nsw i64 %353, 1
  %345 = add i32 %356, -1
  %346 = add i32 %355, -1
  %347 = add i32 %354, 1
  %348 = icmp eq i64 %363, %326
  br i1 %348, label %508, label %349, !llvm.loop !106

349:                                              ; preds = %343, %335
  %350 = phi i64 [ %365, %343 ], [ %250, %335 ]
  %351 = phi i64 [ %363, %343 ], [ 0, %335 ]
  %352 = phi i64 [ %364, %343 ], [ %250, %335 ]
  %353 = phi i64 [ %344, %343 ], [ 1, %335 ]
  %354 = phi i32 [ %347, %343 ], [ %340, %335 ]
  %355 = phi i32 [ %346, %343 ], [ %338, %335 ]
  %356 = phi i32 [ %345, %343 ], [ %339, %335 ]
  %357 = sext i32 %355 to i64
  %358 = shl nsw i64 %357, 2
  %359 = getelementptr i8, ptr %288, i64 %358
  %360 = getelementptr i8, ptr %289, i64 %358
  %361 = shl nuw nsw i64 %351, 3
  %362 = add nuw nsw i64 %361, 12
  %363 = add nuw nsw i64 %351, 1
  %364 = add nsw i64 %352, 1
  %365 = add nsw i64 %350, -1
  %366 = getelementptr inbounds i32, ptr %328, i64 %351
  %367 = load i32, ptr %366, align 4, !tbaa !11
  %368 = sub nsw i32 %233, %367
  %369 = icmp slt i32 %336, %368
  br i1 %369, label %370, label %376

370:                                              ; preds = %349
  %371 = icmp sgt i32 %337, %368
  br i1 %371, label %376, label %372

372:                                              ; preds = %370
  %373 = sitofp i32 %368 to double
  %374 = call double @llvm.fmuladd.f64(double %373, double 0x3FC3333333333334, double 1.000000e+00)
  %375 = fptosi double %374 to i32
  br label %376

376:                                              ; preds = %372, %370, %349
  %377 = phi i32 [ %375, %372 ], [ 2, %349 ], [ %342, %370 ]
  %378 = sext i32 %377 to i64
  %379 = icmp sgt i64 %351, %378
  br i1 %379, label %380, label %399

380:                                              ; preds = %376
  %381 = icmp eq i64 %351, 0
  br i1 %381, label %504, label %382

382:                                              ; preds = %380
  %383 = add nsw i64 %351, -1
  %384 = and i64 %383, 4294967295
  %385 = getelementptr inbounds i32, ptr %328, i64 %384
  %386 = load i32, ptr %385, align 4, !tbaa !11
  %387 = sub nsw i32 %233, %386
  %388 = icmp slt i32 %336, %387
  br i1 %388, label %389, label %395

389:                                              ; preds = %382
  %390 = icmp sgt i32 %337, %387
  br i1 %390, label %395, label %391

391:                                              ; preds = %389
  %392 = sitofp i32 %387 to double
  %393 = call double @llvm.fmuladd.f64(double %392, double 0x3FC3333333333334, double 1.000000e+00)
  %394 = fptosi double %393 to i32
  br label %395

395:                                              ; preds = %391, %389, %382
  %396 = phi i32 [ %394, %391 ], [ 2, %382 ], [ %342, %389 ]
  %397 = sext i32 %396 to i64
  %398 = icmp sgt i64 %383, %397
  br i1 %398, label %506, label %399

399:                                              ; preds = %395, %376
  %400 = icmp slt i64 %364, %365
  br i1 %400, label %401, label %405

401:                                              ; preds = %399
  %402 = load i32, ptr %325, align 4, !tbaa !11
  %403 = getelementptr inbounds i32, ptr %328, i64 %353
  store i32 %402, ptr %403, align 4, !tbaa !11
  %404 = getelementptr inbounds i32, ptr %329, i64 %353
  store i32 %238, ptr %404, align 4, !tbaa !11
  br label %343

405:                                              ; preds = %399
  %406 = trunc i64 %351 to i32
  %407 = xor i32 %406, -1
  %408 = add i32 %238, %407
  %409 = trunc i64 %353 to i32
  %410 = add i32 %238, %409
  %411 = sext i32 %410 to i64
  %412 = sext i32 %408 to i64
  %413 = add nsw i64 %411, -1
  %414 = getelementptr inbounds i32, ptr %288, i64 %413
  %415 = add nsw i64 %412, 1
  %416 = getelementptr inbounds i32, ptr %288, i64 %415
  br label %417

417:                                              ; preds = %482, %405
  %418 = phi i64 [ %357, %405 ], [ %483, %482 ]
  %419 = phi i32 [ %356, %405 ], [ %485, %482 ]
  %420 = icmp eq i64 %418, %412
  br i1 %420, label %421, label %423

421:                                              ; preds = %417
  %422 = load i32, ptr %416, align 4, !tbaa !11
  br label %447

423:                                              ; preds = %417
  %424 = icmp eq i64 %418, %411
  br i1 %424, label %425, label %428

425:                                              ; preds = %423
  %426 = load i32, ptr %414, align 4, !tbaa !11
  %427 = add nsw i32 %426, -1
  br label %447

428:                                              ; preds = %423
  %429 = getelementptr inbounds i32, ptr %288, i64 %418
  %430 = load i32, ptr %429, align 4, !tbaa !11
  %431 = add nsw i32 %430, -1
  %432 = add nsw i64 %418, 1
  %433 = getelementptr inbounds i32, ptr %288, i64 %432
  %434 = load i32, ptr %433, align 4, !tbaa !11
  %435 = icmp sgt i32 %431, %434
  %436 = add nsw i64 %418, -1
  %437 = getelementptr inbounds i32, ptr %288, i64 %436
  %438 = load i32, ptr %437, align 4, !tbaa !11
  %439 = icmp sgt i32 %430, %438
  %440 = select i1 %435, i1 true, i1 %439
  br i1 %440, label %441, label %447

441:                                              ; preds = %428
  %442 = add nsw i32 %438, -1
  %443 = icmp sgt i32 %442, %434
  %444 = icmp sgt i32 %438, %430
  %445 = or i1 %444, %443
  %446 = select i1 %445, i32 %434, i32 %442
  br label %447

447:                                              ; preds = %441, %428, %425, %421
  %448 = phi i32 [ %422, %421 ], [ %427, %425 ], [ %446, %441 ], [ %431, %428 ]
  %449 = zext i32 %448 to i64
  %450 = add i32 %448, %419
  %451 = zext i32 %450 to i64
  br label %452

452:                                              ; preds = %460, %447
  %453 = phi i64 [ %464, %460 ], [ %451, %447 ]
  %454 = phi i64 [ %461, %460 ], [ %449, %447 ]
  %455 = trunc i64 %454 to i32
  %456 = icmp sgt i32 %455, 0
  %457 = trunc i64 %453 to i32
  %458 = icmp sgt i32 %457, 0
  %459 = select i1 %456, i1 %458, i1 false
  br i1 %459, label %460, label %470

460:                                              ; preds = %452
  %461 = add nsw i64 %454, -1
  %462 = getelementptr inbounds i8, ptr %245, i64 %461
  %463 = load i8, ptr %462, align 1, !tbaa !27
  %464 = add nsw i64 %453, -1
  %465 = getelementptr inbounds i8, ptr %252, i64 %464
  %466 = load i8, ptr %465, align 1, !tbaa !27
  %467 = icmp eq i8 %463, %466
  br i1 %467, label %452, label %468, !llvm.loop !107

468:                                              ; preds = %460
  %.lcssa9 = phi i32 [ %455, %460 ]
  %469 = getelementptr inbounds i32, ptr %289, i64 %418
  store i32 %.lcssa9, ptr %469, align 4, !tbaa !11
  br label %482

470:                                              ; preds = %452
  %.lcssa8 = phi i32 [ %455, %452 ]
  %.lcssa4 = phi i32 [ %457, %452 ]
  %471 = getelementptr inbounds i32, ptr %289, i64 %418
  store i32 %.lcssa8, ptr %471, align 4, !tbaa !11
  %472 = icmp eq i32 %.lcssa8, 0
  %473 = icmp eq i32 %.lcssa4, 0
  %474 = select i1 %472, i1 %473, i1 false
  br i1 %474, label %475, label %476

475:                                              ; preds = %470
  %.lcssa13 = phi i32 [ %409, %470 ]
  call void @free(ptr noundef %288) #31
  call void @free(ptr noundef nonnull %289) #31
  call void @free(ptr noundef %328) #31
  call void @free(ptr noundef %329) #31
  br label %535

476:                                              ; preds = %470
  br i1 %472, label %477, label %479

477:                                              ; preds = %476
  %.lcssa14 = phi i32 [ %409, %476 ]
  %.lcssa4.lcssa6 = phi i32 [ %.lcssa4, %476 ]
  call void @free(ptr noundef %288) #31
  call void @free(ptr noundef nonnull %289) #31
  call void @free(ptr noundef %328) #31
  call void @free(ptr noundef %329) #31
  %478 = add nsw i32 %256, %.lcssa4.lcssa6
  br label %535

479:                                              ; preds = %476
  br i1 %473, label %480, label %482

480:                                              ; preds = %479
  %.lcssa15 = phi i32 [ %409, %479 ]
  %.lcssa8.lcssa11 = phi i32 [ %.lcssa8, %479 ]
  call void @free(ptr noundef %288) #31
  call void @free(ptr noundef nonnull %289) #31
  call void @free(ptr noundef %328) #31
  call void @free(ptr noundef %329) #31
  %481 = add nsw i32 %254, %.lcssa8.lcssa11
  br label %535

482:                                              ; preds = %479, %468
  %483 = add nsw i64 %418, 1
  %484 = icmp sgt i64 %418, %352
  %485 = add i32 %419, 1
  br i1 %484, label %486, label %417, !llvm.loop !108

486:                                              ; preds = %482
  %487 = load i32, ptr %325, align 4, !tbaa !11
  %488 = getelementptr inbounds i32, ptr %328, i64 %353
  %489 = getelementptr inbounds i32, ptr %329, i64 %353
  store i32 %238, ptr %489, align 4, !tbaa !11
  br label %490

490:                                              ; preds = %498, %486
  %491 = phi i32 [ %499, %498 ], [ %487, %486 ]
  %492 = phi i64 [ %500, %498 ], [ %357, %486 ]
  %493 = getelementptr inbounds i32, ptr %289, i64 %492
  %494 = load i32, ptr %493, align 4, !tbaa !11
  %495 = icmp slt i32 %494, %491
  br i1 %495, label %496, label %498

496:                                              ; preds = %490
  %497 = trunc i64 %492 to i32
  store i32 %497, ptr %489, align 4, !tbaa !11
  br label %498

498:                                              ; preds = %496, %490
  %499 = phi i32 [ %494, %496 ], [ %491, %490 ]
  %500 = add nsw i64 %492, 1
  %501 = trunc i64 %500 to i32
  %502 = icmp eq i32 %354, %501
  br i1 %502, label %503, label %490, !llvm.loop !109

503:                                              ; preds = %498
  %.lcssa12 = phi i32 [ %499, %498 ]
  store i32 %.lcssa12, ptr %488, align 4, !tbaa !11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %359, ptr noundef nonnull align 4 dereferenceable(1) %360, i64 %362, i1 false), !tbaa !11
  br label %343

504:                                              ; preds = %380
  %.lcssa16 = phi i64 [ %353, %380 ]
  %505 = trunc i64 %.lcssa16 to i32
  br label %508

506:                                              ; preds = %395
  %.lcssa17 = phi i64 [ %353, %395 ]
  %507 = trunc i64 %.lcssa17 to i32
  br label %508

508:                                              ; preds = %506, %504, %343
  %509 = phi i32 [ %505, %504 ], [ %507, %506 ], [ %341, %343 ]
  %510 = call i32 @llvm.smin.i32(i32 %509, i32 0)
  br label %511

511:                                              ; preds = %514, %508
  %512 = phi i32 [ %509, %508 ], [ %515, %514 ]
  %513 = icmp sgt i32 %512, 0
  br i1 %513, label %514, label %524

514:                                              ; preds = %511
  %515 = add nsw i32 %512, -1
  %516 = zext i32 %515 to i64
  %517 = getelementptr inbounds i32, ptr %328, i64 %516
  %518 = load i32, ptr %517, align 4, !tbaa !11
  %519 = zext i32 %512 to i64
  %520 = getelementptr inbounds i32, ptr %328, i64 %519
  %521 = load i32, ptr %520, align 4, !tbaa !11
  %522 = sub nsw i32 %518, %521
  %523 = icmp slt i32 %522, 3
  br i1 %523, label %511, label %524, !llvm.loop !110

524:                                              ; preds = %514, %511
  %525 = phi i32 [ %510, %511 ], [ %512, %514 ]
  %526 = sext i32 %525 to i64
  %527 = getelementptr inbounds i32, ptr %328, i64 %526
  %528 = load i32, ptr %527, align 4, !tbaa !11
  %529 = add nsw i32 %528, %254
  %530 = getelementptr inbounds i32, ptr %329, i64 %526
  %531 = load i32, ptr %530, align 4, !tbaa !11
  %532 = sub i32 %256, %233
  %533 = add i32 %532, %528
  %534 = add i32 %533, %531
  call void @free(ptr noundef %328) #31
  call void @free(ptr noundef %329) #31
  call void @free(ptr noundef %288) #31
  call void @free(ptr noundef %289) #31
  br label %535

535:                                              ; preds = %524, %480, %477, %475, %280
  %536 = phi i32 [ %281, %280 ], [ %529, %524 ], [ %254, %475 ], [ %254, %477 ], [ %481, %480 ]
  %537 = phi i32 [ %282, %280 ], [ %534, %524 ], [ %256, %475 ], [ %478, %477 ], [ %256, %480 ]
  %538 = phi i32 [ 0, %280 ], [ %525, %524 ], [ %.lcssa13, %475 ], [ %.lcssa14, %477 ], [ %.lcssa15, %480 ]
  %539 = load i32, ptr %228, align 4, !tbaa !92
  %540 = xor i32 %536, -1
  %541 = add i32 %539, %540
  %542 = load i32, ptr getelementptr inbounds (%struct._options_t, ptr @options, i64 0, i32 12), align 8, !tbaa !16
  %543 = mul nsw i32 %541, %542
  %544 = load i32, ptr getelementptr inbounds (%struct._options_t, ptr @options, i64 0, i32 10), align 8, !tbaa !32
  %545 = mul nsw i32 %544, %538
  %546 = add nsw i32 %545, %543
  %547 = icmp sgt i32 %546, -1
  br i1 %547, label %548, label %551

548:                                              ; preds = %535
  %549 = add nsw i32 %536, 1
  store i32 %549, ptr %228, align 4, !tbaa !92
  %550 = add nsw i32 %537, 1
  store i32 %550, ptr %227, align 4, !tbaa !94
  br label %551

551:                                              ; preds = %548, %535, %226, %88, %85
  %552 = load i32, ptr %78, align 4, !tbaa !90
  %553 = icmp eq i32 %552, 0
  br i1 %553, label %554, label %1021

554:                                              ; preds = %551
  %555 = load ptr, ptr %76, align 8, !tbaa !27
  %556 = load i32, ptr %82, align 8, !tbaa !52
  %557 = add i32 %556, -1
  %558 = zext i32 %557 to i64
  %559 = getelementptr inbounds ptr, ptr %555, i64 %558
  %560 = load ptr, ptr %559, align 8, !tbaa !7
  %561 = getelementptr inbounds %struct._exon_t, ptr %560, i64 0, i32 3
  %562 = load i32, ptr %561, align 4, !tbaa !98
  %563 = load i32, ptr %19, align 4, !tbaa !42
  %564 = icmp ult i32 %562, %563
  br i1 %564, label %565, label %1021

565:                                              ; preds = %554
  %566 = sub i32 %563, %562
  %567 = icmp ugt i32 %566, 60
  br i1 %567, label %568, label %664

568:                                              ; preds = %565
  %569 = getelementptr inbounds %struct._exon_t, ptr %560, i64 0, i32 2
  %570 = load i32, ptr %569, align 4, !tbaa !97
  %571 = getelementptr inbounds %struct._result_t, ptr %75, i64 0, i32 2
  %572 = load i32, ptr %571, align 8, !tbaa !95
  %573 = getelementptr inbounds %struct._result_t, ptr %75, i64 0, i32 3
  %574 = load i32, ptr %573, align 4, !tbaa !111
  %575 = add i32 %574, %572
  %576 = icmp ult i32 %570, %575
  br i1 %576, label %577, label %664

577:                                              ; preds = %568
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %13) #30
  %578 = load i32, ptr %37, align 4, !tbaa !43
  %579 = call i32 @llvm.umin.i32(i32 %578, i32 10)
  %580 = load ptr, ptr %26, align 8, !tbaa !41
  %581 = zext i32 %562 to i64
  %582 = getelementptr inbounds i8, ptr %580, i64 %581
  store i32 %579, ptr %43, align 4, !tbaa !43
  store ptr %582, ptr %44, align 8, !tbaa !45
  store i32 %566, ptr %45, align 8, !tbaa !46
  %583 = shl nuw nsw i32 %579, 1
  %584 = add nsw i32 %583, -2
  %585 = shl nsw i32 -1, %584
  %586 = xor i32 %585, -1
  store i32 %586, ptr %46, align 8, !tbaa !47
  %587 = add i32 %566, 1
  %588 = zext i32 %587 to i64
  %589 = shl nuw nsw i64 %588, 2
  %590 = call fastcc ptr @xmalloc(i64 noundef %589) #31
  store ptr %590, ptr %47, align 8, !tbaa !48
  %591 = call fastcc ptr @xcalloc(i64 noundef 524288, i64 noundef 8) #31
  store ptr %591, ptr %13, align 8, !tbaa !49
  call fastcc void @bld_table(ptr noundef nonnull %13) #35
  %592 = load ptr, ptr %36, align 8, !tbaa !45
  %593 = load i32, ptr %569, align 4, !tbaa !97
  %594 = zext i32 %593 to i64
  %595 = getelementptr inbounds i8, ptr %592, i64 %594
  %596 = load i32, ptr %571, align 8, !tbaa !95
  %597 = load i32, ptr %573, align 4, !tbaa !111
  %598 = sub i32 %596, %593
  %599 = add i32 %598, %597
  %600 = load i32, ptr %561, align 4, !tbaa !98
  %601 = add i32 %600, 1
  %602 = add i32 %593, 1
  %603 = load i32, ptr getelementptr inbounds (%struct._options_t, ptr @options, i64 0, i32 4), align 8, !tbaa !22
  call fastcc void @exon_cores(ptr noundef nonnull %13, ptr noundef %595, i32 noundef %599, i32 noundef %601, i32 noundef %602, i32 noundef %603, ptr noundef nonnull %10, ptr noundef null, ptr noundef nonnull %11) #35
  call fastcc void @free_hash_env(ptr noundef nonnull %13) #35
  %604 = load i32, ptr %31, align 8, !tbaa !52
  %605 = icmp eq i32 %604, 0
  br i1 %605, label %606, label %608

606:                                              ; preds = %577
  %607 = load i32, ptr %82, align 8, !tbaa !52
  br label %661

608:                                              ; preds = %577
  %609 = zext i32 %604 to i64
  br label %610

610:                                              ; preds = %610, %608
  %611 = phi i64 [ 0, %608 ], [ %617, %610 ]
  %612 = load ptr, ptr %11, align 8, !tbaa !27
  %613 = getelementptr inbounds ptr, ptr %612, i64 %611
  %614 = load ptr, ptr %613, align 8, !tbaa !7
  %615 = load <4 x i32>, ptr %614, align 4, !tbaa !11
  %616 = shufflevector <4 x i32> %615, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  store <4 x i32> %616, ptr %614, align 4, !tbaa !11
  %617 = add nuw nsw i64 %611, 1
  %618 = icmp eq i64 %617, %609
  br i1 %618, label %619, label %610, !llvm.loop !96

619:                                              ; preds = %610
  %620 = load ptr, ptr %11, align 8, !tbaa !27
  %621 = load ptr, ptr %620, align 8, !tbaa !7
  %622 = load ptr, ptr %36, align 8, !tbaa !45
  %623 = load ptr, ptr %26, align 8, !tbaa !41
  %624 = load i32, ptr %621, align 4, !tbaa !94
  %625 = zext i32 %624 to i64
  %626 = getelementptr inbounds i8, ptr %622, i64 %625
  %627 = getelementptr inbounds i8, ptr %626, i64 -2
  %628 = getelementptr inbounds %struct._exon_t, ptr %621, i64 0, i32 1
  %629 = load i32, ptr %628, align 4, !tbaa !92
  %630 = zext i32 %629 to i64
  %631 = getelementptr inbounds i8, ptr %623, i64 %630
  %632 = getelementptr inbounds i8, ptr %631, i64 -2
  %633 = icmp ult ptr %627, %622
  %634 = icmp ult ptr %632, %623
  %635 = select i1 %633, i1 true, i1 %634
  br i1 %635, label %652, label %636

636:                                              ; preds = %644, %619
  %637 = phi i32 [ %648, %644 ], [ %629, %619 ]
  %638 = phi i32 [ %647, %644 ], [ %624, %619 ]
  %639 = phi ptr [ %646, %644 ], [ %632, %619 ]
  %640 = phi ptr [ %645, %644 ], [ %627, %619 ]
  %641 = load i8, ptr %640, align 1, !tbaa !27
  %642 = load i8, ptr %639, align 1, !tbaa !27
  %643 = icmp eq i8 %641, %642
  br i1 %643, label %644, label %652

644:                                              ; preds = %636
  %645 = getelementptr inbounds i8, ptr %640, i64 -1
  %646 = getelementptr inbounds i8, ptr %639, i64 -1
  %647 = add i32 %638, -1
  store i32 %647, ptr %621, align 4, !tbaa !94
  %648 = add i32 %637, -1
  store i32 %648, ptr %628, align 4, !tbaa !92
  %649 = icmp ult ptr %645, %622
  %650 = icmp ult ptr %646, %623
  %651 = select i1 %649, i1 true, i1 %650
  br i1 %651, label %652, label %636, !llvm.loop !112

652:                                              ; preds = %644, %636, %619
  %653 = load i32, ptr %82, align 8, !tbaa !52
  %654 = load i32, ptr %37, align 4, !tbaa !43
  call fastcc void @merge(ptr noundef nonnull %76, ptr noundef nonnull %11, i32 noundef %653, i32 noundef %654) #35
  store i32 0, ptr %31, align 8, !tbaa !52
  %655 = load ptr, ptr %76, align 8, !tbaa !27
  %656 = load i32, ptr %82, align 8, !tbaa !52
  %657 = add i32 %656, -1
  %658 = zext i32 %657 to i64
  %659 = getelementptr inbounds ptr, ptr %655, i64 %658
  %660 = load ptr, ptr %659, align 8, !tbaa !7
  br label %661

661:                                              ; preds = %652, %606
  %662 = phi i32 [ %656, %652 ], [ %607, %606 ]
  %663 = phi ptr [ %660, %652 ], [ %560, %606 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %13) #30
  br label %664

664:                                              ; preds = %661, %568, %565
  %665 = phi i32 [ %662, %661 ], [ %556, %568 ], [ %556, %565 ]
  %666 = phi ptr [ %663, %661 ], [ %560, %568 ], [ %560, %565 ]
  %667 = icmp eq i32 %665, 0
  br i1 %667, label %714, label %668

668:                                              ; preds = %664
  %669 = load ptr, ptr %76, align 8, !tbaa !27
  %670 = load ptr, ptr %26, align 8, !tbaa !41
  %671 = zext i32 %665 to i64
  br label %672

672:                                              ; preds = %682, %668
  %673 = phi i64 [ 0, %668 ], [ %683, %682 ]
  %674 = trunc i64 %673 to i32
  %675 = xor i32 %674, -1
  %676 = add i32 %665, %675
  %677 = zext i32 %676 to i64
  %678 = getelementptr inbounds ptr, ptr %669, i64 %677
  %679 = load ptr, ptr %678, align 8, !tbaa !7
  %680 = call fastcc i32 @is_polyAT_exon_p(ptr noundef %679, ptr noundef %670) #35, !range !100
  %681 = icmp eq i32 %680, 0
  br i1 %681, label %685, label %682

682:                                              ; preds = %672
  %683 = add nuw nsw i64 %673, 1
  %684 = icmp eq i64 %683, %671
  br i1 %684, label %685, label %672, !llvm.loop !113

685:                                              ; preds = %682, %672
  %686 = phi i32 [ %674, %672 ], [ %665, %682 ]
  %687 = icmp eq i32 %686, 0
  br i1 %687, label %714, label %688

688:                                              ; preds = %685
  %689 = sub i32 %665, %686
  %690 = icmp ugt i32 %686, %665
  br i1 %690, label %704, label %691

691:                                              ; preds = %688
  %692 = zext i32 %689 to i64
  br label %693

693:                                              ; preds = %693, %691
  %694 = phi i64 [ %692, %691 ], [ %698, %693 ]
  %695 = load ptr, ptr %76, align 8, !tbaa !27
  %696 = getelementptr inbounds ptr, ptr %695, i64 %694
  %697 = load ptr, ptr %696, align 8, !tbaa !7
  call void @free(ptr noundef %697) #31
  %698 = add nuw nsw i64 %694, 1
  %699 = load i32, ptr %82, align 8, !tbaa !52
  %700 = zext i32 %699 to i64
  %701 = icmp ult i64 %698, %700
  br i1 %701, label %693, label %702, !llvm.loop !114

702:                                              ; preds = %693
  %.lcssa22 = phi i32 [ %699, %693 ]
  %703 = sub i32 %.lcssa22, %686
  br label %704

704:                                              ; preds = %702, %688
  %705 = phi i32 [ %703, %702 ], [ %689, %688 ]
  %706 = phi i32 [ %.lcssa22, %702 ], [ %665, %688 ]
  store i32 %705, ptr %82, align 8, !tbaa !52
  %707 = icmp eq i32 %706, %686
  br i1 %707, label %2954, label %708

708:                                              ; preds = %704
  %709 = load ptr, ptr %76, align 8, !tbaa !27
  %710 = add i32 %705, -1
  %711 = zext i32 %710 to i64
  %712 = getelementptr inbounds ptr, ptr %709, i64 %711
  %713 = load ptr, ptr %712, align 8, !tbaa !7
  br label %714

714:                                              ; preds = %708, %685, %664
  %715 = phi ptr [ %713, %708 ], [ %666, %685 ], [ %666, %664 ]
  %716 = load i32, ptr %19, align 4, !tbaa !42
  %717 = getelementptr inbounds %struct._exon_t, ptr %715, i64 0, i32 3
  %718 = load i32, ptr %717, align 4, !tbaa !98
  %719 = icmp eq i32 %716, %718
  br i1 %719, label %1021, label %720

720:                                              ; preds = %714
  %721 = sub i32 %716, %718
  %722 = call i32 @llvm.umin.i32(i32 %721, i32 250)
  %723 = load ptr, ptr %26, align 8, !tbaa !41
  %724 = zext i32 %718 to i64
  %725 = getelementptr inbounds i8, ptr %723, i64 %724
  %726 = load ptr, ptr %36, align 8, !tbaa !45
  %727 = getelementptr inbounds %struct._exon_t, ptr %715, i64 0, i32 2
  %728 = load i32, ptr %727, align 4, !tbaa !97
  %729 = zext i32 %728 to i64
  %730 = getelementptr inbounds i8, ptr %726, i64 %729
  %731 = shl nuw nsw i32 %722, 2
  %732 = load i32, ptr %15, align 8, !tbaa !46
  %733 = sub i32 %732, %728
  %734 = call i32 @llvm.smin.i32(i32 %731, i32 %733)
  %735 = load i32, ptr %37, align 4, !tbaa !43
  %736 = add nuw nsw i32 %722, 1
  %737 = icmp sgt i32 %734, 0
  br i1 %737, label %738, label %757

738:                                              ; preds = %720
  %739 = add nsw i32 %734, -1
  %740 = add nsw i32 %722, -1
  %741 = call i32 @llvm.umin.i32(i32 %739, i32 %740)
  %742 = add nuw nsw i32 %741, 1
  %743 = zext i32 %742 to i64
  br label %744

744:                                              ; preds = %751, %738
  %745 = phi i64 [ 0, %738 ], [ %752, %751 ]
  %746 = getelementptr inbounds i8, ptr %725, i64 %745
  %747 = load i8, ptr %746, align 1, !tbaa !27
  %748 = getelementptr inbounds i8, ptr %730, i64 %745
  %749 = load i8, ptr %748, align 1, !tbaa !27
  %750 = icmp eq i8 %747, %749
  br i1 %750, label %751, label %754

751:                                              ; preds = %744
  %752 = add nuw nsw i64 %745, 1
  %753 = icmp eq i64 %752, %743
  br i1 %753, label %754, label %744, !llvm.loop !115

754:                                              ; preds = %751, %744
  %755 = phi i64 [ %745, %744 ], [ %743, %751 ]
  %756 = trunc i64 %755 to i32
  br label %757

757:                                              ; preds = %754, %720
  %758 = phi i32 [ 0, %720 ], [ %756, %754 ]
  %759 = icmp eq i32 %758, %722
  br i1 %759, label %760, label %762

760:                                              ; preds = %757
  %761 = add nsw i32 %728, %722
  br label %1007

762:                                              ; preds = %757
  %763 = icmp eq i32 %758, %734
  br i1 %763, label %764, label %766

764:                                              ; preds = %762
  %765 = add nsw i32 %734, %728
  br label %1007

766:                                              ; preds = %762
  %767 = add nsw i32 %734, %722
  %768 = add nsw i32 %767, 1
  %769 = sext i32 %768 to i64
  %770 = shl nsw i64 %769, 2
  %771 = call fastcc ptr @xmalloc(i64 noundef %770) #31
  %772 = call fastcc ptr @xmalloc(i64 noundef %770) #31
  %773 = icmp slt i32 %767, 0
  br i1 %773, label %777, label %774

774:                                              ; preds = %766
  %775 = zext i32 %768 to i64
  %776 = shl nuw nsw i64 %775, 2
  call void @llvm.memset.p0.i64(ptr align 4 %771, i8 -1, i64 %776, i1 false), !tbaa !11
  br label %777

777:                                              ; preds = %774, %766
  %778 = zext i32 %722 to i64
  %779 = getelementptr inbounds i32, ptr %771, i64 %778
  store i32 %758, ptr %779, align 4, !tbaa !11
  %780 = zext i32 %736 to i64
  %781 = shl nuw nsw i64 %780, 2
  %782 = call fastcc ptr @xmalloc(i64 noundef %781) #31
  %783 = call fastcc ptr @xmalloc(i64 noundef %781) #31
  %784 = icmp eq i32 %722, 0
  br i1 %784, label %788, label %785

785:                                              ; preds = %777
  %786 = getelementptr i8, ptr %782, i64 4
  %787 = shl nuw nsw i64 %778, 2
  call void @llvm.memset.p0.i64(ptr align 4 %786, i8 -1, i64 %787, i1 false), !tbaa !11
  br label %788

788:                                              ; preds = %785, %777
  %789 = phi i64 [ %787, %785 ], [ 0, %777 ]
  store i32 %758, ptr %782, align 4, !tbaa !11
  store i32 %722, ptr %783, align 4, !tbaa !11
  %790 = sdiv i32 %735, 2
  %791 = shl nsw i32 %735, 1
  %792 = sext i32 %734 to i64
  %793 = add nuw nsw i32 %722, 2
  %794 = load i32, ptr getelementptr inbounds (%struct._options_t, ptr @options, i64 0, i32 5), align 4
  %795 = add nsw i64 %789, -4
  br label %796

796:                                              ; preds = %971, %788
  %797 = phi i64 [ %812, %971 ], [ %778, %788 ]
  %798 = phi i64 [ %814, %971 ], [ 0, %788 ]
  %799 = phi i64 [ %973, %971 ], [ 1, %788 ]
  %800 = phi i32 [ %975, %971 ], [ %793, %788 ]
  %801 = phi i32 [ %813, %971 ], [ %722, %788 ]
  %802 = phi i32 [ %974, %971 ], [ -1, %788 ]
  %803 = phi i32 [ %972, %971 ], [ %736, %788 ]
  %804 = shl i64 %798, 2
  %805 = sub i64 %795, %804
  %806 = getelementptr i8, ptr %771, i64 %805
  %807 = getelementptr i8, ptr %772, i64 %805
  %808 = shl i64 %798, 3
  %809 = add i64 %808, 8
  %810 = and i64 %809, 17179869176
  %811 = or i64 %810, 4
  %812 = add nsw i64 %797, -1
  %813 = add nsw i32 %801, -1
  %814 = add nuw nsw i64 %798, 1
  %815 = getelementptr inbounds i32, ptr %782, i64 %798
  %816 = load i32, ptr %815, align 4, !tbaa !11
  %817 = icmp slt i32 %790, %816
  br i1 %817, label %818, label %824

818:                                              ; preds = %796
  %819 = icmp sgt i32 %791, %816
  br i1 %819, label %824, label %820

820:                                              ; preds = %818
  %821 = sitofp i32 %816 to double
  %822 = call double @llvm.fmuladd.f64(double %821, double 0x3FC3333333333334, double 1.000000e+00)
  %823 = fptosi double %822 to i32
  br label %824

824:                                              ; preds = %820, %818, %796
  %825 = phi i32 [ %823, %820 ], [ 2, %796 ], [ %794, %818 ]
  %826 = sext i32 %825 to i64
  %827 = icmp sgt i64 %798, %826
  br i1 %827, label %828, label %846

828:                                              ; preds = %824
  %829 = icmp eq i64 %798, 0
  br i1 %829, label %977, label %830

830:                                              ; preds = %828
  %831 = add nsw i64 %798, -1
  %832 = and i64 %831, 4294967295
  %833 = getelementptr inbounds i32, ptr %782, i64 %832
  %834 = load i32, ptr %833, align 4, !tbaa !11
  %835 = icmp slt i32 %790, %834
  br i1 %835, label %836, label %842

836:                                              ; preds = %830
  %837 = icmp sgt i32 %791, %834
  br i1 %837, label %842, label %838

838:                                              ; preds = %836
  %839 = sitofp i32 %834 to double
  %840 = call double @llvm.fmuladd.f64(double %839, double 0x3FC3333333333334, double 1.000000e+00)
  %841 = fptosi double %840 to i32
  br label %842

842:                                              ; preds = %838, %836, %830
  %843 = phi i32 [ %841, %838 ], [ 2, %830 ], [ %794, %836 ]
  %844 = sext i32 %843 to i64
  %845 = icmp sgt i64 %831, %844
  br i1 %845, label %979, label %846

846:                                              ; preds = %842, %824
  %847 = icmp sgt i32 %813, %803
  br i1 %847, label %848, label %852

848:                                              ; preds = %846
  %849 = load i32, ptr %779, align 4, !tbaa !11
  %850 = getelementptr inbounds i32, ptr %782, i64 %799
  store i32 %849, ptr %850, align 4, !tbaa !11
  %851 = getelementptr inbounds i32, ptr %783, i64 %799
  store i32 %722, ptr %851, align 4, !tbaa !11
  br label %971

852:                                              ; preds = %846
  %853 = xor i64 %798, -1
  %854 = add nsw i64 %853, %778
  %855 = add nuw nsw i64 %799, %778
  %856 = add nsw i64 %855, -1
  %857 = getelementptr inbounds i32, ptr %771, i64 %856
  %858 = sub nsw i64 %778, %798
  %859 = getelementptr inbounds i32, ptr %771, i64 %858
  br label %865

860:                                              ; preds = %949
  %861 = add nsw i64 %866, 1
  %862 = add i32 %867, 1
  %863 = trunc i64 %861 to i32
  %864 = icmp eq i32 %800, %863
  br i1 %864, label %953, label %865, !llvm.loop !116

865:                                              ; preds = %860, %852
  %866 = phi i64 [ %812, %852 ], [ %861, %860 ]
  %867 = phi i32 [ %802, %852 ], [ %862, %860 ]
  %868 = icmp eq i64 %866, %854
  br i1 %868, label %869, label %872

869:                                              ; preds = %865
  %870 = load i32, ptr %859, align 4, !tbaa !11
  %871 = add nsw i32 %870, 1
  br label %900

872:                                              ; preds = %865
  %873 = icmp eq i64 %866, %855
  br i1 %873, label %874, label %876

874:                                              ; preds = %872
  %875 = load i32, ptr %857, align 4, !tbaa !11
  br label %900

876:                                              ; preds = %872
  %877 = getelementptr inbounds i32, ptr %771, i64 %866
  %878 = load i32, ptr %877, align 4, !tbaa !11
  %879 = add nsw i64 %866, 1
  %880 = getelementptr inbounds i32, ptr %771, i64 %879
  %881 = load i32, ptr %880, align 4, !tbaa !11
  %882 = icmp slt i32 %878, %881
  br i1 %882, label %883, label %887

883:                                              ; preds = %876
  %884 = add nsw i64 %866, -1
  %885 = getelementptr inbounds i32, ptr %771, i64 %884
  %886 = load i32, ptr %885, align 4, !tbaa !11
  br label %893

887:                                              ; preds = %876
  %888 = add nsw i32 %878, 1
  %889 = add nsw i64 %866, -1
  %890 = getelementptr inbounds i32, ptr %771, i64 %889
  %891 = load i32, ptr %890, align 4, !tbaa !11
  %892 = icmp slt i32 %888, %891
  br i1 %892, label %893, label %900

893:                                              ; preds = %887, %883
  %894 = phi i32 [ %886, %883 ], [ %891, %887 ]
  %895 = add nsw i32 %881, 1
  %896 = icmp slt i32 %895, %894
  %897 = icmp slt i32 %881, %878
  %898 = or i1 %897, %896
  %899 = select i1 %898, i32 %894, i32 %895
  br label %900

900:                                              ; preds = %893, %887, %874, %869
  %901 = phi i32 [ %871, %869 ], [ %875, %874 ], [ %888, %887 ], [ %899, %893 ]
  %902 = trunc i64 %866 to i32
  %903 = sub i32 %902, %722
  %904 = add i32 %901, %903
  %905 = icmp sgt i32 %901, -1
  br i1 %905, label %906, label %935

906:                                              ; preds = %900
  %907 = icmp slt i32 %901, %722
  %908 = icmp slt i32 %904, %734
  %909 = and i1 %907, %908
  br i1 %909, label %910, label %935

910:                                              ; preds = %906
  %911 = add i32 %901, %867
  %912 = sext i32 %911 to i64
  %913 = zext i32 %901 to i64
  br label %914

914:                                              ; preds = %922, %910
  %915 = phi i64 [ %913, %910 ], [ %923, %922 ]
  %916 = phi i64 [ %912, %910 ], [ %925, %922 ]
  %917 = getelementptr inbounds i8, ptr %725, i64 %915
  %918 = load i8, ptr %917, align 1, !tbaa !27
  %919 = getelementptr inbounds i8, ptr %730, i64 %916
  %920 = load i8, ptr %919, align 1, !tbaa !27
  %921 = icmp eq i8 %918, %920
  br i1 %921, label %922, label %929

922:                                              ; preds = %914
  %923 = add nuw nsw i64 %915, 1
  %924 = trunc i64 %923 to i32
  %925 = add nsw i64 %916, 1
  %926 = icmp sgt i32 %722, %924
  %927 = icmp slt i64 %925, %792
  %928 = select i1 %926, i1 %927, i1 false
  br i1 %928, label %914, label %931, !llvm.loop !117

929:                                              ; preds = %914
  %.lcssa25 = phi i64 [ %915, %914 ]
  %.lcssa23 = phi i64 [ %916, %914 ]
  %930 = trunc i64 %.lcssa25 to i32
  br label %931

931:                                              ; preds = %929, %922
  %932 = phi i32 [ %930, %929 ], [ %924, %922 ]
  %933 = phi i64 [ %.lcssa23, %929 ], [ %925, %922 ]
  %934 = trunc i64 %933 to i32
  br label %935

935:                                              ; preds = %931, %906, %900
  %936 = phi i32 [ %901, %900 ], [ %901, %906 ], [ %932, %931 ]
  %937 = phi i32 [ %904, %900 ], [ %904, %906 ], [ %934, %931 ]
  %938 = getelementptr inbounds i32, ptr %772, i64 %866
  store i32 %936, ptr %938, align 4, !tbaa !11
  %939 = icmp eq i32 %936, %722
  %940 = icmp eq i32 %937, %734
  %941 = select i1 %939, i1 %940, i1 false
  br i1 %941, label %942, label %945

942:                                              ; preds = %935
  %.lcssa38 = phi i64 [ %799, %935 ]
  %943 = trunc i64 %.lcssa38 to i32
  call void @free(ptr noundef %771) #31
  call void @free(ptr noundef nonnull %772) #31
  call void @free(ptr noundef %782) #31
  call void @free(ptr noundef %783) #31
  %944 = add nsw i32 %734, %728
  br label %1007

945:                                              ; preds = %935
  br i1 %939, label %946, label %949

946:                                              ; preds = %945
  %.lcssa39 = phi i64 [ %799, %945 ]
  %.lcssa28 = phi i32 [ %937, %945 ]
  %947 = trunc i64 %.lcssa39 to i32
  call void @free(ptr noundef nonnull %772) #31
  call void @free(ptr noundef %771) #31
  call void @free(ptr noundef %782) #31
  call void @free(ptr noundef %783) #31
  %948 = add nsw i32 %.lcssa28, %728
  br label %1007

949:                                              ; preds = %945
  br i1 %940, label %950, label %860

950:                                              ; preds = %949
  %.lcssa40 = phi i64 [ %799, %949 ]
  %.lcssa33 = phi i32 [ %936, %949 ]
  %951 = trunc i64 %.lcssa40 to i32
  call void @free(ptr noundef nonnull %772) #31
  call void @free(ptr noundef %771) #31
  call void @free(ptr noundef %782) #31
  call void @free(ptr noundef %783) #31
  %952 = add nsw i32 %734, %728
  br label %1007

953:                                              ; preds = %860
  %954 = load i32, ptr %779, align 4, !tbaa !11
  %955 = getelementptr inbounds i32, ptr %782, i64 %799
  %956 = getelementptr inbounds i32, ptr %783, i64 %799
  store i32 %722, ptr %956, align 4, !tbaa !11
  br label %957

957:                                              ; preds = %965, %953
  %958 = phi i32 [ %966, %965 ], [ %954, %953 ]
  %959 = phi i64 [ %967, %965 ], [ %812, %953 ]
  %960 = getelementptr inbounds i32, ptr %772, i64 %959
  %961 = load i32, ptr %960, align 4, !tbaa !11
  %962 = icmp sgt i32 %961, %958
  br i1 %962, label %963, label %965

963:                                              ; preds = %957
  %964 = trunc i64 %959 to i32
  store i32 %964, ptr %956, align 4, !tbaa !11
  br label %965

965:                                              ; preds = %963, %957
  %966 = phi i32 [ %961, %963 ], [ %958, %957 ]
  %967 = add nsw i64 %959, 1
  %968 = trunc i64 %967 to i32
  %969 = icmp eq i32 %800, %968
  br i1 %969, label %970, label %957, !llvm.loop !118

970:                                              ; preds = %965
  %.lcssa35 = phi i32 [ %966, %965 ]
  store i32 %.lcssa35, ptr %955, align 4, !tbaa !11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %806, ptr noundef nonnull align 4 dereferenceable(1) %807, i64 %811, i1 false), !tbaa !11
  br label %971

971:                                              ; preds = %970, %848
  %972 = add nuw nsw i32 %803, 1
  %973 = add nuw nsw i64 %799, 1
  %974 = add nsw i32 %802, -1
  %975 = add nuw nsw i32 %800, 1
  %976 = icmp eq i64 %814, %780
  br i1 %976, label %981, label %796, !llvm.loop !119

977:                                              ; preds = %828
  %.lcssa36 = phi i64 [ %799, %828 ]
  %978 = trunc i64 %.lcssa36 to i32
  br label %981

979:                                              ; preds = %842
  %.lcssa37 = phi i64 [ %799, %842 ]
  %980 = trunc i64 %.lcssa37 to i32
  br label %981

981:                                              ; preds = %979, %977, %971
  %982 = phi i32 [ %978, %977 ], [ %980, %979 ], [ %793, %971 ]
  %983 = call i32 @llvm.smin.i32(i32 %982, i32 0)
  br label %984

984:                                              ; preds = %987, %981
  %985 = phi i32 [ %982, %981 ], [ %991, %987 ]
  %986 = icmp sgt i32 %985, 0
  br i1 %986, label %987, label %997

987:                                              ; preds = %984
  %988 = zext i32 %985 to i64
  %989 = getelementptr inbounds i32, ptr %782, i64 %988
  %990 = load i32, ptr %989, align 4, !tbaa !11
  %991 = add nsw i32 %985, -1
  %992 = zext i32 %991 to i64
  %993 = getelementptr inbounds i32, ptr %782, i64 %992
  %994 = load i32, ptr %993, align 4, !tbaa !11
  %995 = sub nsw i32 %990, %994
  %996 = icmp slt i32 %995, 3
  br i1 %996, label %984, label %997, !llvm.loop !120

997:                                              ; preds = %987, %984
  %998 = phi i32 [ %983, %984 ], [ %985, %987 ]
  %999 = sext i32 %998 to i64
  %1000 = getelementptr inbounds i32, ptr %782, i64 %999
  %1001 = load i32, ptr %1000, align 4, !tbaa !11
  %1002 = getelementptr inbounds i32, ptr %783, i64 %999
  %1003 = load i32, ptr %1002, align 4, !tbaa !11
  %1004 = sub i32 %728, %722
  %1005 = add i32 %1004, %1001
  %1006 = add i32 %1005, %1003
  call void @free(ptr noundef %782) #31
  call void @free(ptr noundef %783) #31
  call void @free(ptr noundef %771) #31
  call void @free(ptr noundef %772) #31
  br label %1007

1007:                                             ; preds = %997, %950, %946, %942, %764, %760
  %1008 = phi i32 [ %722, %760 ], [ %734, %764 ], [ %1001, %997 ], [ %722, %942 ], [ %722, %946 ], [ %.lcssa33, %950 ]
  %1009 = phi i32 [ %761, %760 ], [ %765, %764 ], [ %1006, %997 ], [ %944, %942 ], [ %948, %946 ], [ %952, %950 ]
  %1010 = phi i32 [ 0, %760 ], [ 0, %764 ], [ %998, %997 ], [ %943, %942 ], [ %947, %946 ], [ %951, %950 ]
  %1011 = add nsw i32 %1008, %718
  %1012 = load i32, ptr %717, align 4, !tbaa !98
  %1013 = sub nsw i32 %1011, %1012
  %1014 = load i32, ptr getelementptr inbounds (%struct._options_t, ptr @options, i64 0, i32 12), align 8, !tbaa !16
  %1015 = mul nsw i32 %1013, %1014
  %1016 = load i32, ptr getelementptr inbounds (%struct._options_t, ptr @options, i64 0, i32 10), align 8, !tbaa !32
  %1017 = mul nsw i32 %1016, %1010
  %1018 = add nsw i32 %1017, %1015
  %1019 = icmp sgt i32 %1018, -1
  br i1 %1019, label %1020, label %1021

1020:                                             ; preds = %1007
  store i32 %1011, ptr %717, align 4, !tbaa !98
  store i32 %1009, ptr %727, align 4, !tbaa !97
  br label %1021

1021:                                             ; preds = %1020, %1007, %714, %554, %551
  %1022 = load i32, ptr %82, align 8, !tbaa !52
  %1023 = icmp ugt i32 %1022, 1
  br i1 %1023, label %1024, label %1793

1024:                                             ; preds = %1788, %1021
  %1025 = phi i32 [ %1789, %1788 ], [ %1022, %1021 ]
  %1026 = phi i32 [ %1791, %1788 ], [ 1, %1021 ]
  %1027 = load ptr, ptr %76, align 8, !tbaa !27
  %1028 = add i32 %1026, -1
  %1029 = zext i32 %1028 to i64
  %1030 = getelementptr inbounds ptr, ptr %1027, i64 %1029
  %1031 = load ptr, ptr %1030, align 8, !tbaa !7
  %1032 = zext i32 %1026 to i64
  %1033 = getelementptr inbounds ptr, ptr %1027, i64 %1032
  %1034 = load ptr, ptr %1033, align 8, !tbaa !7
  %1035 = getelementptr inbounds %struct._exon_t, ptr %1034, i64 0, i32 1
  %1036 = load i32, ptr %1035, align 4, !tbaa !92
  %1037 = getelementptr inbounds %struct._exon_t, ptr %1031, i64 0, i32 3
  %1038 = load i32, ptr %1037, align 4, !tbaa !98
  %1039 = xor i32 %1038, -1
  %1040 = add i32 %1036, %1039
  %1041 = icmp sgt i32 %1040, 0
  br i1 %1041, label %1042, label %1788

1042:                                             ; preds = %1024
  %1043 = load i32, ptr %1034, align 4, !tbaa !94
  %1044 = add i32 %1043, -1
  %1045 = getelementptr inbounds %struct._exon_t, ptr %1031, i64 0, i32 2
  %1046 = load i32, ptr %1045, align 4, !tbaa !97
  %1047 = icmp ugt i32 %1044, %1046
  br i1 %1047, label %1048, label %1788

1048:                                             ; preds = %1042
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %14) #30
  %1049 = icmp ult i32 %1040, 501
  %1050 = load i32, ptr %37, align 4, !tbaa !43
  %1051 = load ptr, ptr %36, align 8, !tbaa !45
  br i1 %1049, label %1052, label %1683

1052:                                             ; preds = %1048
  %1053 = load ptr, ptr %26, align 8, !tbaa !41
  %1054 = zext i32 %1038 to i64
  %1055 = getelementptr inbounds i8, ptr %1053, i64 %1054
  %1056 = zext i32 %1046 to i64
  %1057 = getelementptr inbounds i8, ptr %1051, i64 %1056
  %1058 = xor i32 %1046, -1
  %1059 = add i32 %1043, %1058
  %1060 = icmp ugt i32 %1059, 999999
  br i1 %1060, label %1596, label %1061

1061:                                             ; preds = %1052
  %1062 = sub nsw i32 %1059, %1040
  %1063 = uitofp i32 %1040 to double
  %1064 = call double @llvm.fmuladd.f64(double %1063, double 2.000000e-01, double 1.000000e+00)
  %1065 = fptoui double %1064 to i32
  %1066 = call i32 @llvm.umax.i32(i32 %1065, i32 %1050)
  %1067 = icmp slt i32 %1062, 0
  br i1 %1067, label %1068, label %1105

1068:                                             ; preds = %1061
  %1069 = uitofp i32 %1050 to double
  %1070 = uitofp i32 %1059 to double
  %1071 = fmul double %1070, 1.200000e+00
  %1072 = fcmp olt double %1071, %1069
  %1073 = select i1 %1072, double %1071, double %1069
  %1074 = fcmp ult double %1073, %1063
  br i1 %1074, label %1103, label %1075

1075:                                             ; preds = %1068
  %1076 = add nuw i32 %1046, 1
  %1077 = add i32 %1038, 1
  %1078 = add i32 %1036, -1
  %1079 = call fastcc ptr @xmalloc(i64 noundef 32) #31
  store i32 %1076, ptr %1079, align 4, !tbaa !94
  %1080 = getelementptr inbounds %struct._exon_t, ptr %1079, i64 0, i32 1
  store i32 %1077, ptr %1080, align 4, !tbaa !92
  %1081 = getelementptr inbounds %struct._exon_t, ptr %1079, i64 0, i32 2
  store i32 %1044, ptr %1081, align 4, !tbaa !97
  %1082 = getelementptr inbounds %struct._exon_t, ptr %1079, i64 0, i32 3
  store i32 %1078, ptr %1082, align 4, !tbaa !98
  %1083 = load i32, ptr %30, align 4, !tbaa !50
  %1084 = load i32, ptr %31, align 8, !tbaa !52
  %1085 = icmp ugt i32 %1083, %1084
  %1086 = load ptr, ptr %11, align 8, !tbaa !27
  br i1 %1085, label %1093, label %1087

1087:                                             ; preds = %1075
  %1088 = add i32 %1083, 5
  store i32 %1088, ptr %30, align 4, !tbaa !50
  %1089 = zext i32 %1088 to i64
  %1090 = shl nuw nsw i64 %1089, 3
  %1091 = call fastcc ptr @xrealloc(ptr noundef %1086, i64 noundef %1090) #31
  store ptr %1091, ptr %11, align 8, !tbaa !27
  %1092 = load i32, ptr %31, align 8, !tbaa !52
  br label %1093

1093:                                             ; preds = %1087, %1075
  %1094 = phi i32 [ %1092, %1087 ], [ %1084, %1075 ]
  %1095 = phi ptr [ %1091, %1087 ], [ %1086, %1075 ]
  %1096 = add i32 %1094, 1
  store i32 %1096, ptr %31, align 8, !tbaa !52
  %1097 = zext i32 %1094 to i64
  %1098 = getelementptr inbounds ptr, ptr %1095, i64 %1097
  store ptr %1079, ptr %1098, align 8, !tbaa !7
  %1099 = sub nsw i32 %1040, %1059
  %1100 = call double @llvm.fmuladd.f64(double %1070, double 2.000000e-01, double 1.000000e+00)
  %1101 = fptoui double %1100 to i32
  %1102 = add i32 %1099, %1101
  br label %1596

1103:                                             ; preds = %1068
  %1104 = add i32 %1066, 1
  br label %1596

1105:                                             ; preds = %1061
  %1106 = zext i32 %1040 to i64
  %1107 = zext i32 %1059 to i64
  br label %1108

1108:                                             ; preds = %1116, %1105
  %1109 = phi i64 [ %1120, %1116 ], [ %1107, %1105 ]
  %1110 = phi i64 [ %1117, %1116 ], [ %1106, %1105 ]
  %1111 = trunc i64 %1110 to i32
  %1112 = icmp sgt i32 %1111, 0
  %1113 = trunc i64 %1109 to i32
  %1114 = icmp sgt i32 %1113, 0
  %1115 = and i1 %1114, %1112
  br i1 %1115, label %1116, label %1124

1116:                                             ; preds = %1108
  %1117 = add nsw i64 %1110, -1
  %1118 = getelementptr inbounds i8, ptr %1055, i64 %1117
  %1119 = load i8, ptr %1118, align 1, !tbaa !27
  %1120 = add nsw i64 %1109, -1
  %1121 = getelementptr inbounds i8, ptr %1057, i64 %1120
  %1122 = load i8, ptr %1121, align 1, !tbaa !27
  %1123 = icmp eq i8 %1119, %1122
  br i1 %1123, label %1108, label %1151, !llvm.loop !121

1124:                                             ; preds = %1108
  %.lcssa42 = phi i32 [ %1111, %1108 ]
  %1125 = icmp eq i32 %.lcssa42, 0
  br i1 %1125, label %1126, label %1151

1126:                                             ; preds = %1124
  %1127 = add i32 %1046, 1
  %1128 = add i32 %1127, %1062
  %1129 = add i32 %1038, 1
  %1130 = add i32 %1036, -1
  %1131 = call fastcc ptr @xmalloc(i64 noundef 32) #31
  store i32 %1128, ptr %1131, align 4, !tbaa !94
  %1132 = getelementptr inbounds %struct._exon_t, ptr %1131, i64 0, i32 1
  store i32 %1129, ptr %1132, align 4, !tbaa !92
  %1133 = getelementptr inbounds %struct._exon_t, ptr %1131, i64 0, i32 2
  store i32 %1044, ptr %1133, align 4, !tbaa !97
  %1134 = getelementptr inbounds %struct._exon_t, ptr %1131, i64 0, i32 3
  store i32 %1130, ptr %1134, align 4, !tbaa !98
  %1135 = load i32, ptr %30, align 4, !tbaa !50
  %1136 = load i32, ptr %31, align 8, !tbaa !52
  %1137 = icmp ugt i32 %1135, %1136
  %1138 = load ptr, ptr %11, align 8, !tbaa !27
  br i1 %1137, label %1145, label %1139

1139:                                             ; preds = %1126
  %1140 = add i32 %1135, 5
  store i32 %1140, ptr %30, align 4, !tbaa !50
  %1141 = zext i32 %1140 to i64
  %1142 = shl nuw nsw i64 %1141, 3
  %1143 = call fastcc ptr @xrealloc(ptr noundef %1138, i64 noundef %1142) #31
  store ptr %1143, ptr %11, align 8, !tbaa !27
  %1144 = load i32, ptr %31, align 8, !tbaa !52
  br label %1145

1145:                                             ; preds = %1139, %1126
  %1146 = phi i32 [ %1144, %1139 ], [ %1136, %1126 ]
  %1147 = phi ptr [ %1143, %1139 ], [ %1138, %1126 ]
  %1148 = add i32 %1146, 1
  store i32 %1148, ptr %31, align 8, !tbaa !52
  %1149 = zext i32 %1146 to i64
  %1150 = getelementptr inbounds ptr, ptr %1147, i64 %1149
  store ptr %1131, ptr %1150, align 8, !tbaa !7
  br label %1599

1151:                                             ; preds = %1124, %1116
  %.lcssa43 = phi i32 [ %.lcssa42, %1124 ], [ %1111, %1116 ]
  %1152 = add i32 %1066, %1059
  %1153 = add i32 %1152, 1
  %1154 = zext i32 %1153 to i64
  %1155 = shl nuw nsw i64 %1154, 2
  %1156 = call fastcc ptr @xmalloc(i64 noundef %1155) #31
  %1157 = call fastcc ptr @xmalloc(i64 noundef %1155) #31
  %1158 = sub i32 %1036, %1038
  %1159 = zext i32 %1152 to i64
  br label %1160

1160:                                             ; preds = %1160, %1151
  %1161 = phi i64 [ 0, %1151 ], [ %1164, %1160 ]
  %1162 = getelementptr inbounds i32, ptr %1156, i64 %1161
  store i32 %1158, ptr %1162, align 4, !tbaa !11
  %1163 = getelementptr inbounds i32, ptr %1157, i64 %1161
  store i32 %1158, ptr %1163, align 4, !tbaa !11
  %1164 = add nuw nsw i64 %1161, 1
  %1165 = icmp eq i64 %1161, %1159
  br i1 %1165, label %1166, label %1160, !llvm.loop !122

1166:                                             ; preds = %1160
  %1167 = sext i32 %1066 to i64
  %1168 = getelementptr inbounds i32, ptr %1156, i64 %1167
  store i32 %.lcssa43, ptr %1168, align 4, !tbaa !11
  %1169 = add i32 %1066, -1
  %1170 = add i32 %1066, 1
  %1171 = call i32 @llvm.umin.i32(i32 %1059, i32 %1040)
  %1172 = icmp eq i32 %1171, 0
  br i1 %1172, label %1187, label %1173

1173:                                             ; preds = %1166
  %1174 = zext i32 %1171 to i64
  br label %1175

1175:                                             ; preds = %1182, %1173
  %1176 = phi i64 [ 0, %1173 ], [ %1183, %1182 ]
  %1177 = getelementptr inbounds i8, ptr %1055, i64 %1176
  %1178 = load i8, ptr %1177, align 1, !tbaa !27
  %1179 = getelementptr inbounds i8, ptr %1057, i64 %1176
  %1180 = load i8, ptr %1179, align 1, !tbaa !27
  %1181 = icmp eq i8 %1178, %1180
  br i1 %1181, label %1182, label %1185

1182:                                             ; preds = %1175
  %1183 = add nuw nsw i64 %1176, 1
  %1184 = icmp eq i64 %1183, %1174
  br i1 %1184, label %1187, label %1175, !llvm.loop !123

1185:                                             ; preds = %1175
  %.lcssa44 = phi i64 [ %1176, %1175 ]
  %1186 = trunc i64 %.lcssa44 to i32
  br label %1187

1187:                                             ; preds = %1185, %1182, %1166
  %1188 = phi i32 [ 0, %1166 ], [ %1186, %1185 ], [ %1171, %1182 ]
  %1189 = icmp eq i32 %1188, %1040
  br i1 %1189, label %1190, label %1215

1190:                                             ; preds = %1187
  %1191 = add i32 %1046, 1
  %1192 = add i32 %1038, 1
  %1193 = add i32 %1046, %1040
  %1194 = add i32 %1036, -1
  %1195 = call fastcc ptr @xmalloc(i64 noundef 32) #31
  store i32 %1191, ptr %1195, align 4, !tbaa !94
  %1196 = getelementptr inbounds %struct._exon_t, ptr %1195, i64 0, i32 1
  store i32 %1192, ptr %1196, align 4, !tbaa !92
  %1197 = getelementptr inbounds %struct._exon_t, ptr %1195, i64 0, i32 2
  store i32 %1193, ptr %1197, align 4, !tbaa !97
  %1198 = getelementptr inbounds %struct._exon_t, ptr %1195, i64 0, i32 3
  store i32 %1194, ptr %1198, align 4, !tbaa !98
  %1199 = load i32, ptr %30, align 4, !tbaa !50
  %1200 = load i32, ptr %31, align 8, !tbaa !52
  %1201 = icmp ugt i32 %1199, %1200
  %1202 = load ptr, ptr %11, align 8, !tbaa !27
  br i1 %1201, label %1209, label %1203

1203:                                             ; preds = %1190
  %1204 = add i32 %1199, 5
  store i32 %1204, ptr %30, align 4, !tbaa !50
  %1205 = zext i32 %1204 to i64
  %1206 = shl nuw nsw i64 %1205, 3
  %1207 = call fastcc ptr @xrealloc(ptr noundef %1202, i64 noundef %1206) #31
  store ptr %1207, ptr %11, align 8, !tbaa !27
  %1208 = load i32, ptr %31, align 8, !tbaa !52
  br label %1209

1209:                                             ; preds = %1203, %1190
  %1210 = phi i32 [ %1208, %1203 ], [ %1200, %1190 ]
  %1211 = phi ptr [ %1207, %1203 ], [ %1202, %1190 ]
  %1212 = add i32 %1210, 1
  store i32 %1212, ptr %31, align 8, !tbaa !52
  %1213 = zext i32 %1210 to i64
  %1214 = getelementptr inbounds ptr, ptr %1211, i64 %1213
  store ptr %1195, ptr %1214, align 8, !tbaa !7
  call void @free(ptr noundef %1156) #31
  call void @free(ptr noundef %1157) #31
  br label %1596

1215:                                             ; preds = %1187
  %1216 = call fastcc ptr @xmalloc(i64 noundef %1155) #31
  %1217 = call fastcc ptr @xmalloc(i64 noundef %1155) #31
  %1218 = shl nuw nsw i64 %1159, 2
  %1219 = add nuw nsw i64 %1218, 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %1216, i8 -1, i64 %1219, i1 false), !tbaa !11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %1217, i8 -1, i64 %1219, i1 false), !tbaa !11
  %1220 = getelementptr inbounds i32, ptr %1216, i64 %1167
  store i32 %1188, ptr %1220, align 4, !tbaa !11
  %1221 = zext i32 %1170 to i64
  %1222 = shl nuw nsw i64 %1221, 2
  %1223 = call fastcc ptr @xmalloc(i64 noundef %1222) #31
  %1224 = call fastcc ptr @xmalloc(i64 noundef %1222) #31
  %1225 = call fastcc ptr @xmalloc(i64 noundef %1222) #31
  %1226 = call fastcc ptr @xmalloc(i64 noundef %1222) #31
  %1227 = icmp eq i32 %1066, 0
  br i1 %1227, label %1228, label %1229

1228:                                             ; preds = %1215
  store i32 %.lcssa43, ptr %1224, align 4, !tbaa !11
  store i32 0, ptr %1226, align 4, !tbaa !11
  store i32 %1188, ptr %1223, align 4, !tbaa !11
  store i32 0, ptr %1225, align 4, !tbaa !11
  br label %1515

1229:                                             ; preds = %1215
  %1230 = call i32 @llvm.umax.i32(i32 %1170, i32 2)
  %1231 = zext i32 %1230 to i64
  %1232 = getelementptr i8, ptr %1223, i64 4
  %1233 = shl nuw nsw i64 %1231, 2
  %1234 = add nsw i64 %1233, -4
  call void @llvm.memset.p0.i64(ptr align 4 %1232, i8 -1, i64 %1234, i1 false), !tbaa !11
  br label %1235

1235:                                             ; preds = %1235, %1229
  %1236 = phi i64 [ 1, %1229 ], [ %1238, %1235 ]
  %1237 = getelementptr inbounds i32, ptr %1224, i64 %1236
  store i32 %1158, ptr %1237, align 4, !tbaa !11
  %1238 = add nuw nsw i64 %1236, 1
  %1239 = icmp eq i64 %1238, %1231
  br i1 %1239, label %1240, label %1235, !llvm.loop !124

1240:                                             ; preds = %1235
  store i32 %.lcssa43, ptr %1224, align 4, !tbaa !11
  store i32 %1066, ptr %1226, align 4, !tbaa !11
  store i32 %1188, ptr %1223, align 4, !tbaa !11
  store i32 %1066, ptr %1225, align 4, !tbaa !11
  %1241 = getelementptr inbounds i32, ptr %1157, i64 %1167
  %1242 = getelementptr inbounds i32, ptr %1217, i64 %1167
  %1243 = sub i32 %1038, %1036
  %1244 = add i32 %1243, %1059
  %1245 = sext i32 %1169 to i64
  %1246 = add i32 %1066, 2
  br label %1247

1247:                                             ; preds = %1505, %1240
  %1248 = phi i32 [ %1514, %1505 ], [ 2, %1240 ]
  %1249 = phi i32 [ %1513, %1505 ], [ -1, %1240 ]
  %1250 = phi i32 [ %1512, %1505 ], [ %1246, %1240 ]
  %1251 = phi i64 [ %1381, %1505 ], [ %1245, %1240 ]
  %1252 = phi i32 [ %1511, %1505 ], [ %1244, %1240 ]
  %1253 = phi i32 [ %1382, %1505 ], [ %1170, %1240 ]
  %1254 = phi i32 [ %1508, %1505 ], [ -1, %1240 ]
  %1255 = phi i32 [ %1507, %1505 ], [ -1, %1240 ]
  %1256 = phi i32 [ %1509, %1505 ], [ 1, %1240 ]
  %1257 = phi i32 [ %1506, %1505 ], [ %1066, %1240 ]
  %1258 = trunc i64 %1251 to i32
  %1259 = icmp slt i32 %1253, %1258
  br i1 %1259, label %1260, label %1265

1260:                                             ; preds = %1247
  %1261 = load i32, ptr %1241, align 4, !tbaa !11
  %1262 = zext i32 %1256 to i64
  %1263 = getelementptr inbounds i32, ptr %1224, i64 %1262
  store i32 %1261, ptr %1263, align 4, !tbaa !11
  %1264 = getelementptr inbounds i32, ptr %1226, i64 %1262
  store i32 %1066, ptr %1264, align 4, !tbaa !11
  br label %1342

1265:                                             ; preds = %1247
  %1266 = sub i32 %1066, %1256
  %1267 = add i32 %1256, %1066
  %1268 = sext i32 %1267 to i64
  %1269 = sext i32 %1266 to i64
  %1270 = add nsw i64 %1268, -1
  %1271 = getelementptr inbounds i32, ptr %1156, i64 %1270
  %1272 = add nsw i64 %1269, 1
  %1273 = getelementptr inbounds i32, ptr %1156, i64 %1272
  br label %1274

1274:                                             ; preds = %1330, %1265
  %1275 = phi i64 [ %1251, %1265 ], [ %1332, %1330 ]
  %1276 = phi i32 [ %1252, %1265 ], [ %1333, %1330 ]
  %1277 = icmp eq i64 %1275, %1269
  br i1 %1277, label %1278, label %1280

1278:                                             ; preds = %1274
  %1279 = load i32, ptr %1273, align 4, !tbaa !11
  br label %1309

1280:                                             ; preds = %1274
  %1281 = icmp eq i64 %1275, %1268
  br i1 %1281, label %1282, label %1285

1282:                                             ; preds = %1280
  %1283 = load i32, ptr %1271, align 4, !tbaa !11
  %1284 = add nsw i32 %1283, -1
  br label %1309

1285:                                             ; preds = %1280
  %1286 = getelementptr inbounds i32, ptr %1156, i64 %1275
  %1287 = load i32, ptr %1286, align 4, !tbaa !11
  %1288 = add nsw i64 %1275, 1
  %1289 = getelementptr inbounds i32, ptr %1156, i64 %1288
  %1290 = load i32, ptr %1289, align 4, !tbaa !11
  %1291 = icmp sgt i32 %1287, %1290
  br i1 %1291, label %1292, label %1296

1292:                                             ; preds = %1285
  %1293 = add nsw i64 %1275, -1
  %1294 = getelementptr inbounds i32, ptr %1156, i64 %1293
  %1295 = load i32, ptr %1294, align 4, !tbaa !11
  br label %1302

1296:                                             ; preds = %1285
  %1297 = add nsw i32 %1287, -1
  %1298 = add nsw i64 %1275, -1
  %1299 = getelementptr inbounds i32, ptr %1156, i64 %1298
  %1300 = load i32, ptr %1299, align 4, !tbaa !11
  %1301 = icmp sgt i32 %1297, %1300
  br i1 %1301, label %1302, label %1309

1302:                                             ; preds = %1296, %1292
  %1303 = phi i32 [ %1295, %1292 ], [ %1300, %1296 ]
  %1304 = icmp slt i32 %1303, %1290
  %1305 = icmp slt i32 %1303, %1287
  %1306 = and i1 %1304, %1305
  %1307 = add nsw i32 %1303, -1
  %1308 = select i1 %1306, i32 %1307, i32 %1290
  br label %1309

1309:                                             ; preds = %1302, %1296, %1282, %1278
  %1310 = phi i32 [ %1279, %1278 ], [ %1284, %1282 ], [ %1297, %1296 ], [ %1308, %1302 ]
  %1311 = zext i32 %1310 to i64
  %1312 = add i32 %1310, %1276
  %1313 = zext i32 %1312 to i64
  br label %1314

1314:                                             ; preds = %1322, %1309
  %1315 = phi i64 [ %1326, %1322 ], [ %1313, %1309 ]
  %1316 = phi i64 [ %1323, %1322 ], [ %1311, %1309 ]
  %1317 = trunc i64 %1316 to i32
  %1318 = icmp sgt i32 %1317, 0
  %1319 = trunc i64 %1315 to i32
  %1320 = icmp sgt i32 %1319, 0
  %1321 = select i1 %1318, i1 %1320, i1 false
  br i1 %1321, label %1322, label %1330

1322:                                             ; preds = %1314
  %1323 = add nsw i64 %1316, -1
  %1324 = getelementptr inbounds i8, ptr %1055, i64 %1323
  %1325 = load i8, ptr %1324, align 1, !tbaa !27
  %1326 = add nsw i64 %1315, -1
  %1327 = getelementptr inbounds i8, ptr %1057, i64 %1326
  %1328 = load i8, ptr %1327, align 1, !tbaa !27
  %1329 = icmp eq i8 %1325, %1328
  br i1 %1329, label %1314, label %1330, !llvm.loop !125

1330:                                             ; preds = %1322, %1314
  %.lcssa45 = phi i32 [ %1317, %1322 ], [ %1317, %1314 ]
  %1331 = getelementptr inbounds i32, ptr %1157, i64 %1275
  store i32 %.lcssa45, ptr %1331, align 4, !tbaa !11
  %1332 = add nsw i64 %1275, 1
  %1333 = add i32 %1276, 1
  %1334 = trunc i64 %1332 to i32
  %1335 = icmp eq i32 %1250, %1334
  br i1 %1335, label %1336, label %1274, !llvm.loop !126

1336:                                             ; preds = %1330
  %1337 = load i32, ptr %1241, align 4, !tbaa !11
  %1338 = zext i32 %1256 to i64
  %1339 = getelementptr inbounds i32, ptr %1224, i64 %1338
  %1340 = getelementptr inbounds i32, ptr %1226, i64 %1338
  store i32 %1066, ptr %1340, align 4, !tbaa !11
  br label %1348

1341:                                             ; preds = %1357
  %.lcssa46 = phi i32 [ %1358, %1357 ]
  store i32 %.lcssa46, ptr %1339, align 4, !tbaa !11
  br label %1342

1342:                                             ; preds = %1341, %1260
  %1343 = phi i32 [ %1261, %1260 ], [ %.lcssa46, %1341 ]
  %1344 = phi i64 [ %1262, %1260 ], [ %1338, %1341 ]
  %1345 = icmp eq i32 %1256, 0
  br i1 %1345, label %1377, label %1346

1346:                                             ; preds = %1342
  %1347 = icmp slt i32 %1254, 0
  br label %1362

1348:                                             ; preds = %1357, %1336
  %1349 = phi i32 [ %1358, %1357 ], [ %1337, %1336 ]
  %1350 = phi i64 [ %1359, %1357 ], [ %1251, %1336 ]
  %1351 = getelementptr inbounds i32, ptr %1157, i64 %1350
  %1352 = load i32, ptr %1351, align 4, !tbaa !11
  %1353 = getelementptr inbounds i32, ptr %1156, i64 %1350
  store i32 %1352, ptr %1353, align 4, !tbaa !11
  store i32 %1158, ptr %1351, align 4, !tbaa !11
  %1354 = icmp slt i32 %1352, %1349
  br i1 %1354, label %1355, label %1357

1355:                                             ; preds = %1348
  %1356 = trunc i64 %1350 to i32
  store i32 %1356, ptr %1340, align 4, !tbaa !11
  br label %1357

1357:                                             ; preds = %1355, %1348
  %1358 = phi i32 [ %1352, %1355 ], [ %1349, %1348 ]
  %1359 = add nsw i64 %1350, 1
  %1360 = trunc i64 %1359 to i32
  %1361 = icmp eq i32 %1250, %1360
  br i1 %1361, label %1341, label %1348, !llvm.loop !127

1362:                                             ; preds = %1374, %1346
  %1363 = phi i64 [ 0, %1346 ], [ %1375, %1374 ]
  %1364 = getelementptr inbounds i32, ptr %1223, i64 %1363
  %1365 = load i32, ptr %1364, align 4, !tbaa !11
  %1366 = icmp sgt i32 %1343, %1365
  br i1 %1366, label %1374, label %1367

1367:                                             ; preds = %1362
  %1368 = trunc i64 %1363 to i32
  %1369 = add i32 %1256, %1368
  %1370 = icmp ugt i32 %1257, %1369
  %1371 = icmp eq i32 %1257, %1369
  %1372 = select i1 %1371, i1 %1347, i1 false
  %1373 = select i1 %1370, i1 true, i1 %1372
  br i1 %1373, label %1377, label %1374

1374:                                             ; preds = %1367, %1362
  %1375 = add nuw nsw i64 %1363, 1
  %1376 = icmp eq i64 %1375, %1344
  br i1 %1376, label %1377, label %1362, !llvm.loop !128

1377:                                             ; preds = %1374, %1367, %1342
  %1378 = phi i32 [ %1257, %1342 ], [ %1369, %1367 ], [ %1257, %1374 ]
  %1379 = phi i32 [ %1255, %1342 ], [ %1256, %1367 ], [ %1255, %1374 ]
  %1380 = phi i32 [ %1254, %1342 ], [ %1368, %1367 ], [ %1254, %1374 ]
  %1381 = add i64 %1251, -1
  %1382 = add i32 %1253, 1
  br i1 %1259, label %1383, label %1387

1383:                                             ; preds = %1377
  %1384 = load i32, ptr %1242, align 4, !tbaa !11
  %1385 = getelementptr inbounds i32, ptr %1223, i64 %1344
  store i32 %1384, ptr %1385, align 4, !tbaa !11
  %1386 = getelementptr inbounds i32, ptr %1225, i64 %1344
  store i32 %1066, ptr %1386, align 4, !tbaa !11
  br label %1473

1387:                                             ; preds = %1377
  %1388 = sub i32 %1066, %1256
  %1389 = add nsw i32 %1256, %1066
  %1390 = sext i32 %1389 to i64
  %1391 = sext i32 %1388 to i64
  %1392 = add nsw i64 %1390, -1
  %1393 = getelementptr inbounds i32, ptr %1216, i64 %1392
  %1394 = add nsw i64 %1391, 1
  %1395 = getelementptr inbounds i32, ptr %1216, i64 %1394
  br label %1396

1396:                                             ; preds = %1462, %1387
  %1397 = phi i64 [ %1251, %1387 ], [ %1465, %1462 ]
  %1398 = phi i32 [ %1249, %1387 ], [ %1466, %1462 ]
  %1399 = icmp eq i64 %1397, %1391
  br i1 %1399, label %1400, label %1403

1400:                                             ; preds = %1396
  %1401 = load i32, ptr %1395, align 4, !tbaa !11
  %1402 = add nsw i32 %1401, 1
  br label %1431

1403:                                             ; preds = %1396
  %1404 = icmp eq i64 %1397, %1390
  br i1 %1404, label %1405, label %1407

1405:                                             ; preds = %1403
  %1406 = load i32, ptr %1393, align 4, !tbaa !11
  br label %1431

1407:                                             ; preds = %1403
  %1408 = getelementptr inbounds i32, ptr %1216, i64 %1397
  %1409 = load i32, ptr %1408, align 4, !tbaa !11
  %1410 = add nsw i64 %1397, 1
  %1411 = getelementptr inbounds i32, ptr %1216, i64 %1410
  %1412 = load i32, ptr %1411, align 4, !tbaa !11
  %1413 = icmp slt i32 %1409, %1412
  br i1 %1413, label %1414, label %1418

1414:                                             ; preds = %1407
  %1415 = add nsw i64 %1397, -1
  %1416 = getelementptr inbounds i32, ptr %1216, i64 %1415
  %1417 = load i32, ptr %1416, align 4, !tbaa !11
  br label %1424

1418:                                             ; preds = %1407
  %1419 = add nsw i32 %1409, 1
  %1420 = add nsw i64 %1397, -1
  %1421 = getelementptr inbounds i32, ptr %1216, i64 %1420
  %1422 = load i32, ptr %1421, align 4, !tbaa !11
  %1423 = icmp slt i32 %1419, %1422
  br i1 %1423, label %1424, label %1431

1424:                                             ; preds = %1418, %1414
  %1425 = phi i32 [ %1417, %1414 ], [ %1422, %1418 ]
  %1426 = add nsw i32 %1412, 1
  %1427 = icmp slt i32 %1426, %1425
  %1428 = icmp slt i32 %1412, %1409
  %1429 = or i1 %1428, %1427
  %1430 = select i1 %1429, i32 %1425, i32 %1426
  br label %1431

1431:                                             ; preds = %1424, %1418, %1405, %1400
  %1432 = phi i32 [ %1402, %1400 ], [ %1406, %1405 ], [ %1419, %1418 ], [ %1430, %1424 ]
  %1433 = icmp sgt i32 %1432, -1
  br i1 %1433, label %1434, label %1462

1434:                                             ; preds = %1431
  %1435 = trunc i64 %1397 to i32
  %1436 = sub i32 %1435, %1066
  %1437 = add i32 %1436, %1432
  %1438 = icmp ult i32 %1432, %1040
  %1439 = icmp ult i32 %1437, %1059
  %1440 = select i1 %1438, i1 %1439, i1 false
  br i1 %1440, label %1441, label %1462

1441:                                             ; preds = %1434
  %1442 = add i32 %1432, %1398
  %1443 = zext i32 %1442 to i64
  %1444 = zext i32 %1432 to i64
  br label %1445

1445:                                             ; preds = %1453, %1441
  %1446 = phi i64 [ %1444, %1441 ], [ %1454, %1453 ]
  %1447 = phi i64 [ %1443, %1441 ], [ %1455, %1453 ]
  %1448 = getelementptr inbounds i8, ptr %1055, i64 %1446
  %1449 = load i8, ptr %1448, align 1, !tbaa !27
  %1450 = getelementptr inbounds i8, ptr %1057, i64 %1447
  %1451 = load i8, ptr %1450, align 1, !tbaa !27
  %1452 = icmp eq i8 %1449, %1451
  br i1 %1452, label %1453, label %1459

1453:                                             ; preds = %1445
  %1454 = add nuw nsw i64 %1446, 1
  %1455 = add nuw nsw i64 %1447, 1
  %1456 = icmp ult i64 %1454, %1106
  %1457 = icmp ult i64 %1455, %1107
  %1458 = select i1 %1456, i1 %1457, i1 false
  br i1 %1458, label %1445, label %1459, !llvm.loop !129

1459:                                             ; preds = %1453, %1445
  %1460 = phi i64 [ %1446, %1445 ], [ %1454, %1453 ]
  %1461 = trunc i64 %1460 to i32
  br label %1462

1462:                                             ; preds = %1459, %1434, %1431
  %1463 = phi i32 [ %1432, %1431 ], [ %1432, %1434 ], [ %1461, %1459 ]
  %1464 = getelementptr inbounds i32, ptr %1217, i64 %1397
  store i32 %1463, ptr %1464, align 4, !tbaa !11
  %1465 = add nsw i64 %1397, 1
  %1466 = add i32 %1398, 1
  %1467 = icmp eq i32 %1466, %1248
  br i1 %1467, label %1468, label %1396, !llvm.loop !130

1468:                                             ; preds = %1462
  %1469 = load i32, ptr %1242, align 4, !tbaa !11
  %1470 = getelementptr inbounds i32, ptr %1223, i64 %1344
  %1471 = getelementptr inbounds i32, ptr %1225, i64 %1344
  store i32 %1066, ptr %1471, align 4, !tbaa !11
  br label %1476

1472:                                             ; preds = %1485
  %.lcssa47 = phi i32 [ %1486, %1485 ]
  store i32 %.lcssa47, ptr %1470, align 4, !tbaa !11
  br label %1473

1473:                                             ; preds = %1472, %1383
  %1474 = phi i32 [ %1384, %1383 ], [ %.lcssa47, %1472 ]
  %1475 = icmp slt i32 %1380, 0
  br label %1490

1476:                                             ; preds = %1485, %1468
  %1477 = phi i32 [ %1486, %1485 ], [ %1469, %1468 ]
  %1478 = phi i64 [ %1487, %1485 ], [ %1251, %1468 ]
  %1479 = getelementptr inbounds i32, ptr %1217, i64 %1478
  %1480 = load i32, ptr %1479, align 4, !tbaa !11
  %1481 = getelementptr inbounds i32, ptr %1216, i64 %1478
  store i32 %1480, ptr %1481, align 4, !tbaa !11
  store i32 -1, ptr %1479, align 4, !tbaa !11
  %1482 = icmp sgt i32 %1480, %1477
  br i1 %1482, label %1483, label %1485

1483:                                             ; preds = %1476
  %1484 = trunc i64 %1478 to i32
  store i32 %1484, ptr %1471, align 4, !tbaa !11
  br label %1485

1485:                                             ; preds = %1483, %1476
  %1486 = phi i32 [ %1480, %1483 ], [ %1477, %1476 ]
  %1487 = add nsw i64 %1478, 1
  %1488 = trunc i64 %1487 to i32
  %1489 = icmp eq i32 %1250, %1488
  br i1 %1489, label %1472, label %1476, !llvm.loop !131

1490:                                             ; preds = %1502, %1473
  %1491 = phi i32 [ 0, %1473 ], [ %1503, %1502 ]
  %1492 = zext i32 %1491 to i64
  %1493 = getelementptr inbounds i32, ptr %1224, i64 %1492
  %1494 = load i32, ptr %1493, align 4, !tbaa !11
  %1495 = icmp sgt i32 %1494, %1474
  br i1 %1495, label %1502, label %1496

1496:                                             ; preds = %1490
  %1497 = add i32 %1491, %1256
  %1498 = icmp ugt i32 %1378, %1497
  %1499 = icmp eq i32 %1378, %1497
  %1500 = select i1 %1499, i1 %1475, i1 false
  %1501 = select i1 %1498, i1 true, i1 %1500
  br i1 %1501, label %1505, label %1502

1502:                                             ; preds = %1496, %1490
  %1503 = add i32 %1491, 1
  %1504 = icmp ugt i32 %1503, %1256
  br i1 %1504, label %1505, label %1490, !llvm.loop !132

1505:                                             ; preds = %1502, %1496
  %1506 = phi i32 [ %1378, %1502 ], [ %1497, %1496 ]
  %1507 = phi i32 [ %1379, %1502 ], [ %1491, %1496 ]
  %1508 = phi i32 [ %1380, %1502 ], [ %1256, %1496 ]
  %1509 = add i32 %1256, 1
  %1510 = icmp ugt i32 %1509, %1506
  %1511 = add i32 %1252, -1
  %1512 = add i32 %1250, 1
  %1513 = add i32 %1249, -1
  %1514 = add i32 %1248, 1
  br i1 %1510, label %1515, label %1247, !llvm.loop !133

1515:                                             ; preds = %1505, %1228
  %1516 = phi i32 [ 1, %1228 ], [ %1509, %1505 ]
  %1517 = phi i32 [ -1, %1228 ], [ %1507, %1505 ]
  %1518 = phi i32 [ -1, %1228 ], [ %1508, %1505 ]
  %1519 = icmp ugt i32 %1516, %1066
  br i1 %1519, label %1520, label %1521

1520:                                             ; preds = %1515
  call void @free(ptr noundef %1156) #31
  call void @free(ptr noundef %1157) #31
  call void @free(ptr noundef %1216) #31
  call void @free(ptr noundef %1217) #31
  call void @free(ptr noundef nonnull %1224) #31
  call void @free(ptr noundef %1226) #31
  call void @free(ptr noundef %1223) #31
  call void @free(ptr noundef %1225) #31
  br label %1596

1521:                                             ; preds = %1515
  %1522 = sext i32 %1517 to i64
  %1523 = getelementptr inbounds i32, ptr %1224, i64 %1522
  %1524 = load i32, ptr %1523, align 4, !tbaa !11
  %1525 = sub nsw i32 %1040, %1524
  %1526 = sext i32 %1518 to i64
  %1527 = getelementptr inbounds i32, ptr %1223, i64 %1526
  %1528 = load i32, ptr %1527, align 4, !tbaa !11
  %1529 = icmp slt i32 %1525, %1528
  %1530 = getelementptr inbounds i32, ptr %1226, i64 %1522
  %1531 = load i32, ptr %1530, align 4, !tbaa !11
  %1532 = select i1 %1529, i32 %1528, i32 %1524
  %1533 = icmp eq i32 %1532, 0
  br i1 %1533, label %1563, label %1534

1534:                                             ; preds = %1521
  %1535 = getelementptr inbounds i32, ptr %1225, i64 %1526
  %1536 = load i32, ptr %1535, align 4, !tbaa !11
  %1537 = add i32 %1046, 1
  %1538 = add i32 %1038, 1
  %1539 = sub i32 %1046, %1066
  %1540 = add i32 %1539, %1532
  %1541 = add i32 %1540, %1536
  %1542 = add i32 %1532, %1038
  %1543 = call fastcc ptr @xmalloc(i64 noundef 32) #31
  store i32 %1537, ptr %1543, align 4, !tbaa !94
  %1544 = getelementptr inbounds %struct._exon_t, ptr %1543, i64 0, i32 1
  store i32 %1538, ptr %1544, align 4, !tbaa !92
  %1545 = getelementptr inbounds %struct._exon_t, ptr %1543, i64 0, i32 2
  store i32 %1541, ptr %1545, align 4, !tbaa !97
  %1546 = getelementptr inbounds %struct._exon_t, ptr %1543, i64 0, i32 3
  store i32 %1542, ptr %1546, align 4, !tbaa !98
  %1547 = load i32, ptr %30, align 4, !tbaa !50
  %1548 = load i32, ptr %31, align 8, !tbaa !52
  %1549 = icmp ugt i32 %1547, %1548
  %1550 = load ptr, ptr %11, align 8, !tbaa !27
  br i1 %1549, label %1557, label %1551

1551:                                             ; preds = %1534
  %1552 = add i32 %1547, 5
  store i32 %1552, ptr %30, align 4, !tbaa !50
  %1553 = zext i32 %1552 to i64
  %1554 = shl nuw nsw i64 %1553, 3
  %1555 = call fastcc ptr @xrealloc(ptr noundef %1550, i64 noundef %1554) #31
  store ptr %1555, ptr %11, align 8, !tbaa !27
  %1556 = load i32, ptr %31, align 8, !tbaa !52
  br label %1557

1557:                                             ; preds = %1551, %1534
  %1558 = phi i32 [ %1556, %1551 ], [ %1548, %1534 ]
  %1559 = phi ptr [ %1555, %1551 ], [ %1550, %1534 ]
  %1560 = add i32 %1558, 1
  store i32 %1560, ptr %31, align 8, !tbaa !52
  %1561 = zext i32 %1558 to i64
  %1562 = getelementptr inbounds ptr, ptr %1559, i64 %1561
  store ptr %1543, ptr %1562, align 8, !tbaa !7
  br label %1563

1563:                                             ; preds = %1557, %1521
  %1564 = icmp ult i32 %1532, %1040
  br i1 %1564, label %1565, label %1594

1565:                                             ; preds = %1563
  %1566 = add i32 %1046, 1
  %1567 = add i32 %1566, %1062
  %1568 = sub i32 %1567, %1066
  %1569 = add i32 %1568, %1531
  %1570 = add i32 %1569, %1532
  %1571 = add i32 %1038, 1
  %1572 = add i32 %1571, %1532
  %1573 = add i32 %1036, -1
  %1574 = call fastcc ptr @xmalloc(i64 noundef 32) #31
  store i32 %1570, ptr %1574, align 4, !tbaa !94
  %1575 = getelementptr inbounds %struct._exon_t, ptr %1574, i64 0, i32 1
  store i32 %1572, ptr %1575, align 4, !tbaa !92
  %1576 = getelementptr inbounds %struct._exon_t, ptr %1574, i64 0, i32 2
  store i32 %1044, ptr %1576, align 4, !tbaa !97
  %1577 = getelementptr inbounds %struct._exon_t, ptr %1574, i64 0, i32 3
  store i32 %1573, ptr %1577, align 4, !tbaa !98
  %1578 = load i32, ptr %30, align 4, !tbaa !50
  %1579 = load i32, ptr %31, align 8, !tbaa !52
  %1580 = icmp ugt i32 %1578, %1579
  %1581 = load ptr, ptr %11, align 8, !tbaa !27
  br i1 %1580, label %1588, label %1582

1582:                                             ; preds = %1565
  %1583 = add i32 %1578, 5
  store i32 %1583, ptr %30, align 4, !tbaa !50
  %1584 = zext i32 %1583 to i64
  %1585 = shl nuw nsw i64 %1584, 3
  %1586 = call fastcc ptr @xrealloc(ptr noundef %1581, i64 noundef %1585) #31
  store ptr %1586, ptr %11, align 8, !tbaa !27
  %1587 = load i32, ptr %31, align 8, !tbaa !52
  br label %1588

1588:                                             ; preds = %1582, %1565
  %1589 = phi i32 [ %1587, %1582 ], [ %1579, %1565 ]
  %1590 = phi ptr [ %1586, %1582 ], [ %1581, %1565 ]
  %1591 = add i32 %1589, 1
  store i32 %1591, ptr %31, align 8, !tbaa !52
  %1592 = zext i32 %1589 to i64
  %1593 = getelementptr inbounds ptr, ptr %1590, i64 %1592
  store ptr %1574, ptr %1593, align 8, !tbaa !7
  br label %1594

1594:                                             ; preds = %1588, %1563
  call void @free(ptr noundef %1156) #31
  call void @free(ptr noundef %1157) #31
  call void @free(ptr noundef %1216) #31
  call void @free(ptr noundef %1217) #31
  call void @free(ptr noundef nonnull %1224) #31
  call void @free(ptr noundef nonnull %1226) #31
  call void @free(ptr noundef nonnull %1223) #31
  call void @free(ptr noundef nonnull %1225) #31
  %1595 = add nsw i32 %1518, %1517
  br label %1596

1596:                                             ; preds = %1594, %1520, %1209, %1103, %1093, %1052
  %1597 = phi i32 [ 0, %1052 ], [ %1595, %1594 ], [ %1516, %1520 ], [ 0, %1209 ], [ %1104, %1103 ], [ %1102, %1093 ]
  %1598 = load i32, ptr %31, align 8, !tbaa !52
  br label %1599

1599:                                             ; preds = %1596, %1145
  %1600 = phi i32 [ %1598, %1596 ], [ %1148, %1145 ]
  %1601 = phi i32 [ %1597, %1596 ], [ 0, %1145 ]
  %1602 = icmp eq i32 %1600, 0
  %1603 = load i32, ptr %37, align 4, !tbaa !43
  br i1 %1602, label %1604, label %1606

1604:                                             ; preds = %1599
  %1605 = load ptr, ptr %36, align 8, !tbaa !45
  br label %1683

1606:                                             ; preds = %1599
  %1607 = sitofp i32 %1601 to double
  %1608 = uitofp i32 %1603 to double
  %1609 = sitofp i32 %1040 to double
  %1610 = call double @llvm.fmuladd.f64(double %1609, double 2.000000e-01, double 1.000000e+00)
  %1611 = fcmp ogt double %1610, %1608
  %1612 = select i1 %1611, double %1610, double %1608
  %1613 = fcmp ult double %1612, %1607
  %1614 = load ptr, ptr %36, align 8, !tbaa !45
  br i1 %1613, label %1683, label %1615

1615:                                             ; preds = %1606
  %1616 = load ptr, ptr %11, align 8, !tbaa !27
  %1617 = load ptr, ptr %1616, align 8, !tbaa !7
  %1618 = load ptr, ptr %26, align 8, !tbaa !41
  %1619 = load i32, ptr %1617, align 4, !tbaa !94
  %1620 = zext i32 %1619 to i64
  %1621 = getelementptr inbounds i8, ptr %1614, i64 %1620
  %1622 = getelementptr inbounds i8, ptr %1621, i64 -2
  %1623 = getelementptr inbounds %struct._exon_t, ptr %1617, i64 0, i32 1
  %1624 = load i32, ptr %1623, align 4, !tbaa !92
  %1625 = zext i32 %1624 to i64
  %1626 = getelementptr inbounds i8, ptr %1618, i64 %1625
  %1627 = getelementptr inbounds i8, ptr %1626, i64 -2
  %1628 = icmp ult ptr %1622, %1614
  %1629 = icmp ult ptr %1627, %1618
  %1630 = select i1 %1628, i1 true, i1 %1629
  br i1 %1630, label %1649, label %1631

1631:                                             ; preds = %1639, %1615
  %1632 = phi i32 [ %1643, %1639 ], [ %1624, %1615 ]
  %1633 = phi i32 [ %1642, %1639 ], [ %1619, %1615 ]
  %1634 = phi ptr [ %1641, %1639 ], [ %1627, %1615 ]
  %1635 = phi ptr [ %1640, %1639 ], [ %1622, %1615 ]
  %1636 = load i8, ptr %1635, align 1, !tbaa !27
  %1637 = load i8, ptr %1634, align 1, !tbaa !27
  %1638 = icmp eq i8 %1636, %1637
  br i1 %1638, label %1639, label %1647

1639:                                             ; preds = %1631
  %1640 = getelementptr inbounds i8, ptr %1635, i64 -1
  %1641 = getelementptr inbounds i8, ptr %1634, i64 -1
  %1642 = add i32 %1633, -1
  store i32 %1642, ptr %1617, align 4, !tbaa !94
  %1643 = add i32 %1632, -1
  store i32 %1643, ptr %1623, align 4, !tbaa !92
  %1644 = icmp ult ptr %1640, %1614
  %1645 = icmp ult ptr %1641, %1618
  %1646 = select i1 %1644, i1 true, i1 %1645
  br i1 %1646, label %1647, label %1631, !llvm.loop !112

1647:                                             ; preds = %1639, %1631
  %1648 = load ptr, ptr %11, align 8, !tbaa !27
  br label %1649

1649:                                             ; preds = %1647, %1615
  %1650 = phi ptr [ %1648, %1647 ], [ %1616, %1615 ]
  %1651 = add i32 %1600, -1
  %1652 = zext i32 %1651 to i64
  %1653 = getelementptr inbounds ptr, ptr %1650, i64 %1652
  %1654 = load ptr, ptr %1653, align 8, !tbaa !7
  %1655 = load i32, ptr %15, align 8, !tbaa !46
  %1656 = getelementptr inbounds %struct._exon_t, ptr %1654, i64 0, i32 3
  %1657 = getelementptr inbounds %struct._exon_t, ptr %1654, i64 0, i32 2
  %1658 = load i32, ptr %1657, align 4, !tbaa !97
  %1659 = icmp ult i32 %1658, %1655
  br i1 %1659, label %1660, label %1783

1660:                                             ; preds = %1649
  %1661 = load i32, ptr %19, align 4, !tbaa !42
  %1662 = load i32, ptr %1656, align 4, !tbaa !98
  %1663 = zext i32 %1662 to i64
  %1664 = zext i32 %1658 to i64
  %1665 = call i32 @llvm.umax.i32(i32 %1662, i32 %1661)
  %1666 = zext i32 %1665 to i64
  br label %1667

1667:                                             ; preds = %1677, %1660
  %1668 = phi i64 [ %1664, %1660 ], [ %1678, %1677 ]
  %1669 = phi i64 [ %1663, %1660 ], [ %1680, %1677 ]
  %1670 = icmp eq i64 %1669, %1666
  br i1 %1670, label %1783, label %1671

1671:                                             ; preds = %1667
  %1672 = getelementptr inbounds i8, ptr %1614, i64 %1668
  %1673 = load i8, ptr %1672, align 1, !tbaa !27
  %1674 = getelementptr inbounds i8, ptr %1618, i64 %1669
  %1675 = load i8, ptr %1674, align 1, !tbaa !27
  %1676 = icmp eq i8 %1673, %1675
  br i1 %1676, label %1677, label %1783

1677:                                             ; preds = %1671
  %1678 = add nuw nsw i64 %1668, 1
  %1679 = trunc i64 %1678 to i32
  store i32 %1679, ptr %1657, align 4, !tbaa !97
  %1680 = add nuw nsw i64 %1669, 1
  %1681 = trunc i64 %1680 to i32
  store i32 %1681, ptr %1656, align 4, !tbaa !98
  %1682 = icmp eq i32 %1655, %1679
  br i1 %1682, label %1783, label %1667, !llvm.loop !99

1683:                                             ; preds = %1606, %1604, %1048
  %1684 = phi ptr [ %1605, %1604 ], [ %1614, %1606 ], [ %1051, %1048 ]
  %1685 = phi i32 [ %1603, %1604 ], [ %1603, %1606 ], [ %1050, %1048 ]
  %1686 = call i32 @llvm.umin.i32(i32 %1685, i32 8)
  %1687 = load i32, ptr %1045, align 4, !tbaa !97
  %1688 = zext i32 %1687 to i64
  %1689 = getelementptr inbounds i8, ptr %1684, i64 %1688
  %1690 = load i32, ptr %1034, align 4, !tbaa !94
  %1691 = xor i32 %1687, -1
  %1692 = add i32 %1690, %1691
  store i32 %1686, ptr %48, align 4, !tbaa !43
  store ptr %1689, ptr %49, align 8, !tbaa !45
  store i32 %1692, ptr %50, align 8, !tbaa !46
  %1693 = shl nuw nsw i32 %1686, 1
  %1694 = add nsw i32 %1693, -2
  %1695 = shl nsw i32 -1, %1694
  %1696 = xor i32 %1695, -1
  store i32 %1696, ptr %51, align 8, !tbaa !47
  %1697 = sub i32 %1690, %1687
  %1698 = zext i32 %1697 to i64
  %1699 = shl nuw nsw i64 %1698, 2
  %1700 = call fastcc ptr @xmalloc(i64 noundef %1699) #31
  store ptr %1700, ptr %52, align 8, !tbaa !48
  %1701 = call fastcc ptr @xcalloc(i64 noundef 524288, i64 noundef 8) #31
  store ptr %1701, ptr %14, align 8, !tbaa !49
  call fastcc void @bld_table(ptr noundef nonnull %14) #35
  %1702 = load ptr, ptr %26, align 8, !tbaa !41
  %1703 = load i32, ptr %1037, align 4, !tbaa !98
  %1704 = zext i32 %1703 to i64
  %1705 = getelementptr inbounds i8, ptr %1702, i64 %1704
  %1706 = load i32, ptr %1045, align 4, !tbaa !97
  %1707 = add i32 %1706, 1
  %1708 = add i32 %1703, 1
  %1709 = load i32, ptr getelementptr inbounds (%struct._options_t, ptr @options, i64 0, i32 4), align 8, !tbaa !22
  call fastcc void @exon_cores(ptr noundef nonnull %14, ptr noundef %1705, i32 noundef %1040, i32 noundef %1707, i32 noundef %1708, i32 noundef %1709, ptr noundef nonnull %10, ptr noundef null, ptr noundef nonnull %11) #35
  call fastcc void @free_hash_env(ptr noundef nonnull %14) #35
  %1710 = load i32, ptr %31, align 8, !tbaa !52
  %1711 = icmp eq i32 %1710, 0
  br i1 %1711, label %1785, label %1712

1712:                                             ; preds = %1683
  %1713 = load ptr, ptr %11, align 8, !tbaa !27
  %1714 = load ptr, ptr %1713, align 8, !tbaa !7
  %1715 = load ptr, ptr %36, align 8, !tbaa !45
  %1716 = load ptr, ptr %26, align 8, !tbaa !41
  %1717 = load i32, ptr %1714, align 4, !tbaa !94
  %1718 = zext i32 %1717 to i64
  %1719 = getelementptr inbounds i8, ptr %1715, i64 %1718
  %1720 = getelementptr inbounds i8, ptr %1719, i64 -2
  %1721 = getelementptr inbounds %struct._exon_t, ptr %1714, i64 0, i32 1
  %1722 = load i32, ptr %1721, align 4, !tbaa !92
  %1723 = zext i32 %1722 to i64
  %1724 = getelementptr inbounds i8, ptr %1716, i64 %1723
  %1725 = getelementptr inbounds i8, ptr %1724, i64 -2
  %1726 = icmp ult ptr %1720, %1715
  %1727 = icmp ult ptr %1725, %1716
  %1728 = select i1 %1726, i1 true, i1 %1727
  br i1 %1728, label %1747, label %1729

1729:                                             ; preds = %1737, %1712
  %1730 = phi i32 [ %1741, %1737 ], [ %1722, %1712 ]
  %1731 = phi i32 [ %1740, %1737 ], [ %1717, %1712 ]
  %1732 = phi ptr [ %1739, %1737 ], [ %1725, %1712 ]
  %1733 = phi ptr [ %1738, %1737 ], [ %1720, %1712 ]
  %1734 = load i8, ptr %1733, align 1, !tbaa !27
  %1735 = load i8, ptr %1732, align 1, !tbaa !27
  %1736 = icmp eq i8 %1734, %1735
  br i1 %1736, label %1737, label %1745

1737:                                             ; preds = %1729
  %1738 = getelementptr inbounds i8, ptr %1733, i64 -1
  %1739 = getelementptr inbounds i8, ptr %1732, i64 -1
  %1740 = add i32 %1731, -1
  store i32 %1740, ptr %1714, align 4, !tbaa !94
  %1741 = add i32 %1730, -1
  store i32 %1741, ptr %1721, align 4, !tbaa !92
  %1742 = icmp ult ptr %1738, %1715
  %1743 = icmp ult ptr %1739, %1716
  %1744 = select i1 %1742, i1 true, i1 %1743
  br i1 %1744, label %1745, label %1729, !llvm.loop !112

1745:                                             ; preds = %1737, %1729
  %1746 = load ptr, ptr %11, align 8, !tbaa !27
  br label %1747

1747:                                             ; preds = %1745, %1712
  %1748 = phi ptr [ %1746, %1745 ], [ %1713, %1712 ]
  %1749 = add i32 %1710, -1
  %1750 = zext i32 %1749 to i64
  %1751 = getelementptr inbounds ptr, ptr %1748, i64 %1750
  %1752 = load ptr, ptr %1751, align 8, !tbaa !7
  %1753 = load i32, ptr %15, align 8, !tbaa !46
  %1754 = getelementptr inbounds %struct._exon_t, ptr %1752, i64 0, i32 3
  %1755 = getelementptr inbounds %struct._exon_t, ptr %1752, i64 0, i32 2
  %1756 = load i32, ptr %1755, align 4, !tbaa !97
  %1757 = icmp ult i32 %1756, %1753
  br i1 %1757, label %1758, label %1781

1758:                                             ; preds = %1747
  %1759 = load i32, ptr %19, align 4, !tbaa !42
  %1760 = load i32, ptr %1754, align 4, !tbaa !98
  %1761 = zext i32 %1760 to i64
  %1762 = zext i32 %1756 to i64
  %1763 = call i32 @llvm.umax.i32(i32 %1760, i32 %1759)
  %1764 = zext i32 %1763 to i64
  br label %1765

1765:                                             ; preds = %1775, %1758
  %1766 = phi i64 [ %1762, %1758 ], [ %1776, %1775 ]
  %1767 = phi i64 [ %1761, %1758 ], [ %1778, %1775 ]
  %1768 = icmp eq i64 %1767, %1764
  br i1 %1768, label %1781, label %1769

1769:                                             ; preds = %1765
  %1770 = getelementptr inbounds i8, ptr %1715, i64 %1766
  %1771 = load i8, ptr %1770, align 1, !tbaa !27
  %1772 = getelementptr inbounds i8, ptr %1716, i64 %1767
  %1773 = load i8, ptr %1772, align 1, !tbaa !27
  %1774 = icmp eq i8 %1771, %1773
  br i1 %1774, label %1775, label %1781

1775:                                             ; preds = %1769
  %1776 = add nuw nsw i64 %1766, 1
  %1777 = trunc i64 %1776 to i32
  store i32 %1777, ptr %1755, align 4, !tbaa !97
  %1778 = add nuw nsw i64 %1767, 1
  %1779 = trunc i64 %1778 to i32
  store i32 %1779, ptr %1754, align 4, !tbaa !98
  %1780 = icmp eq i32 %1753, %1777
  br i1 %1780, label %1781, label %1765, !llvm.loop !99

1781:                                             ; preds = %1775, %1769, %1765, %1747
  %1782 = load i32, ptr %37, align 4, !tbaa !43
  br label %1783

1783:                                             ; preds = %1781, %1677, %1671, %1667, %1649
  %1784 = phi i32 [ %1782, %1781 ], [ %1603, %1649 ], [ %1603, %1667 ], [ %1603, %1671 ], [ %1603, %1677 ]
  call fastcc void @merge(ptr noundef nonnull %76, ptr noundef nonnull %11, i32 noundef %1026, i32 noundef %1784) #35
  store i32 0, ptr %31, align 8, !tbaa !52
  br label %1785

1785:                                             ; preds = %1783, %1683
  %1786 = phi i32 [ %1026, %1683 ], [ %1028, %1783 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %14) #30
  %1787 = load i32, ptr %82, align 8, !tbaa !52
  br label %1788

1788:                                             ; preds = %1785, %1042, %1024
  %1789 = phi i32 [ %1787, %1785 ], [ %1025, %1042 ], [ %1025, %1024 ]
  %1790 = phi i32 [ %1786, %1785 ], [ %1026, %1042 ], [ %1026, %1024 ]
  %1791 = add i32 %1790, 1
  %1792 = icmp ult i32 %1791, %1789
  br i1 %1792, label %1024, label %1793, !llvm.loop !134

1793:                                             ; preds = %1788, %1021
  %1794 = load ptr, ptr %36, align 8, !tbaa !45
  %1795 = load ptr, ptr %26, align 8, !tbaa !41
  call fastcc void @kill_polyA(ptr noundef nonnull %75, ptr noundef %1794, ptr noundef %1795) #35
  %1796 = load i32, ptr %37, align 4, !tbaa !43
  %1797 = load i32, ptr %82, align 8, !tbaa !52
  %1798 = icmp ugt i32 %1797, 1
  br i1 %1798, label %1799, label %1945

1799:                                             ; preds = %1793
  %1800 = load i32, ptr getelementptr inbounds (%struct._options_t, ptr @options, i64 0, i32 7), align 4, !tbaa !25
  br label %1806

1801:                                             ; preds = %1879
  %.lcssa48 = phi i32 [ %1880, %1879 ]
  %1802 = icmp ugt i32 %.lcssa48, 1
  br i1 %1802, label %1803, label %1945

1803:                                             ; preds = %1801
  %1804 = add i32 %1796, 1
  %1805 = load i32, ptr getelementptr inbounds (%struct._options_t, ptr @options, i64 0, i32 6), align 8
  br label %1883

1806:                                             ; preds = %1879, %1799
  %1807 = phi i32 [ %1880, %1879 ], [ %1797, %1799 ]
  %1808 = phi i32 [ %1881, %1879 ], [ 1, %1799 ]
  %1809 = load ptr, ptr %76, align 8, !tbaa !27
  %1810 = add i32 %1808, -1
  %1811 = zext i32 %1810 to i64
  %1812 = getelementptr inbounds ptr, ptr %1809, i64 %1811
  %1813 = load ptr, ptr %1812, align 8, !tbaa !7
  %1814 = zext i32 %1808 to i64
  %1815 = getelementptr inbounds ptr, ptr %1809, i64 %1814
  %1816 = load ptr, ptr %1815, align 8, !tbaa !7
  %1817 = getelementptr inbounds %struct._exon_t, ptr %1816, i64 0, i32 1
  %1818 = load i32, ptr %1817, align 4, !tbaa !92
  %1819 = getelementptr inbounds %struct._exon_t, ptr %1813, i64 0, i32 1
  %1820 = load i32, ptr %1819, align 4, !tbaa !92
  %1821 = sub i32 %1818, %1820
  %1822 = icmp ugt i32 %1821, %1800
  br i1 %1822, label %1874, label %1823

1823:                                             ; preds = %1806
  %1824 = add i32 %1807, -1
  store i32 %1824, ptr %82, align 8, !tbaa !52
  %1825 = getelementptr inbounds %struct._exon_t, ptr %1813, i64 0, i32 3
  %1826 = load i32, ptr %1825, align 4, !tbaa !98
  %1827 = getelementptr inbounds %struct._exon_t, ptr %1816, i64 0, i32 3
  %1828 = load i32, ptr %1827, align 4, !tbaa !98
  %1829 = icmp ugt i32 %1826, %1828
  br i1 %1829, label %1830, label %1851

1830:                                             ; preds = %1823
  call void @free(ptr noundef nonnull %1816) #31
  %1831 = load ptr, ptr %76, align 8, !tbaa !27
  %1832 = getelementptr inbounds ptr, ptr %1831, i64 %1814
  %1833 = getelementptr inbounds ptr, ptr %1832, i64 1
  %1834 = load i32, ptr %82, align 8, !tbaa !52
  %1835 = sub i32 %1834, %1808
  %1836 = zext i32 %1835 to i64
  %1837 = shl nuw nsw i64 %1836, 3
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %1832, ptr nonnull align 8 %1833, i64 %1837, i1 false)
  %1838 = load i32, ptr %82, align 8, !tbaa !52
  %1839 = icmp ult i32 %1808, %1838
  br i1 %1839, label %1840, label %1879

1840:                                             ; preds = %1830
  %1841 = load ptr, ptr %76, align 8, !tbaa !27
  %1842 = getelementptr inbounds ptr, ptr %1841, i64 %1814
  %1843 = load ptr, ptr %1842, align 8, !tbaa !7
  %1844 = getelementptr inbounds %struct._exon_t, ptr %1813, i64 0, i32 2
  %1845 = load <2 x i32>, ptr %1844, align 4, !tbaa !11
  %1846 = insertelement <2 x i32> poison, i32 %1821, i64 0
  %1847 = shufflevector <2 x i32> %1846, <2 x i32> poison, <2 x i32> zeroinitializer
  %1848 = add <2 x i32> %1845, %1847
  store <2 x i32> %1848, ptr %1844, align 4, !tbaa !11
  %1849 = load <2 x i32>, ptr %1843, align 4, !tbaa !11
  %1850 = sub <2 x i32> %1849, %1847
  store <2 x i32> %1850, ptr %1843, align 4, !tbaa !11
  br label %1876

1851:                                             ; preds = %1823
  call void @free(ptr noundef nonnull %1813) #31
  %1852 = load ptr, ptr %76, align 8, !tbaa !27
  %1853 = getelementptr inbounds ptr, ptr %1852, i64 %1814
  %1854 = getelementptr inbounds ptr, ptr %1853, i64 -1
  %1855 = load i32, ptr %82, align 8, !tbaa !52
  %1856 = sub i32 %1855, %1808
  %1857 = add i32 %1856, 1
  %1858 = zext i32 %1857 to i64
  %1859 = shl nuw nsw i64 %1858, 3
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %1854, ptr align 8 %1853, i64 %1859, i1 false)
  %1860 = icmp ugt i32 %1808, 1
  br i1 %1860, label %1861, label %1876

1861:                                             ; preds = %1851
  %1862 = load ptr, ptr %76, align 8, !tbaa !27
  %1863 = add i32 %1808, -2
  %1864 = zext i32 %1863 to i64
  %1865 = getelementptr inbounds ptr, ptr %1862, i64 %1864
  %1866 = load ptr, ptr %1865, align 8, !tbaa !7
  %1867 = getelementptr inbounds %struct._exon_t, ptr %1866, i64 0, i32 2
  %1868 = load <2 x i32>, ptr %1867, align 4, !tbaa !11
  %1869 = insertelement <2 x i32> poison, i32 %1821, i64 0
  %1870 = shufflevector <2 x i32> %1869, <2 x i32> poison, <2 x i32> zeroinitializer
  %1871 = add <2 x i32> %1868, %1870
  store <2 x i32> %1871, ptr %1867, align 4, !tbaa !11
  %1872 = load <2 x i32>, ptr %1816, align 4, !tbaa !11
  %1873 = sub <2 x i32> %1872, %1870
  store <2 x i32> %1873, ptr %1816, align 4, !tbaa !11
  br label %1876

1874:                                             ; preds = %1806
  %1875 = add nuw i32 %1808, 1
  br label %1876

1876:                                             ; preds = %1874, %1861, %1851, %1840
  %1877 = phi i32 [ %1875, %1874 ], [ %1808, %1851 ], [ %1808, %1861 ], [ %1808, %1840 ]
  %1878 = load i32, ptr %82, align 8, !tbaa !52
  br label %1879

1879:                                             ; preds = %1876, %1830
  %1880 = phi i32 [ %1878, %1876 ], [ %1838, %1830 ]
  %1881 = phi i32 [ %1877, %1876 ], [ %1808, %1830 ]
  %1882 = icmp ult i32 %1881, %1880
  br i1 %1882, label %1806, label %1801, !llvm.loop !135

1883:                                             ; preds = %1940, %1803
  %1884 = phi i32 [ %.lcssa48, %1803 ], [ %1941, %1940 ]
  %1885 = phi i32 [ 1, %1803 ], [ %1943, %1940 ]
  %1886 = load ptr, ptr %76, align 8, !tbaa !27
  %1887 = add i32 %1885, -1
  %1888 = zext i32 %1887 to i64
  %1889 = getelementptr inbounds ptr, ptr %1886, i64 %1888
  %1890 = load ptr, ptr %1889, align 8, !tbaa !7
  %1891 = zext i32 %1885 to i64
  %1892 = getelementptr inbounds ptr, ptr %1886, i64 %1891
  %1893 = load ptr, ptr %1892, align 8, !tbaa !7
  %1894 = load i32, ptr %1893, align 4, !tbaa !94
  %1895 = getelementptr inbounds %struct._exon_t, ptr %1890, i64 0, i32 2
  %1896 = load i32, ptr %1895, align 4, !tbaa !97
  %1897 = add i32 %1896, 31
  %1898 = icmp ult i32 %1894, %1897
  br i1 %1898, label %1904, label %1899

1899:                                             ; preds = %1883
  %1900 = getelementptr inbounds %struct._exon_t, ptr %1890, i64 0, i32 3
  %1901 = load i32, ptr %1900, align 4, !tbaa !98
  %1902 = getelementptr inbounds %struct._exon_t, ptr %1893, i64 0, i32 1
  %1903 = load i32, ptr %1902, align 4, !tbaa !92
  br label %1911

1904:                                             ; preds = %1883
  %1905 = getelementptr inbounds %struct._exon_t, ptr %1893, i64 0, i32 1
  %1906 = load i32, ptr %1905, align 4, !tbaa !92
  %1907 = getelementptr inbounds %struct._exon_t, ptr %1890, i64 0, i32 3
  %1908 = load i32, ptr %1907, align 4, !tbaa !98
  %1909 = add i32 %1804, %1908
  %1910 = icmp ugt i32 %1906, %1909
  br i1 %1910, label %1911, label %1928

1911:                                             ; preds = %1904, %1899
  %1912 = phi i32 [ %1903, %1899 ], [ %1906, %1904 ]
  %1913 = phi i32 [ %1901, %1899 ], [ %1908, %1904 ]
  %1914 = icmp ugt i32 %1894, %1896
  %1915 = icmp ugt i32 %1912, %1913
  %1916 = and i1 %1914, %1915
  br i1 %1916, label %1917, label %1940

1917:                                             ; preds = %1911
  %1918 = xor i32 %1896, -1
  %1919 = add i32 %1894, %1918
  %1920 = xor i32 %1913, -1
  %1921 = add i32 %1912, %1920
  %1922 = call i32 @llvm.umin.i32(i32 %1921, i32 %1919)
  %1923 = call i32 @llvm.umax.i32(i32 %1921, i32 %1919)
  %1924 = sub i32 %1923, %1922
  %1925 = mul i32 %1924, 100
  %1926 = udiv i32 %1925, %1923
  %1927 = icmp ugt i32 %1926, %1805
  br i1 %1927, label %1940, label %1928

1928:                                             ; preds = %1917, %1904
  %1929 = getelementptr inbounds %struct._exon_t, ptr %1893, i64 0, i32 2
  %1930 = load <2 x i32>, ptr %1929, align 4, !tbaa !11
  store <2 x i32> %1930, ptr %1895, align 4, !tbaa !11
  call void @free(ptr noundef nonnull %1893) #31
  %1931 = load i32, ptr %82, align 8, !tbaa !52
  %1932 = add i32 %1931, -1
  store i32 %1932, ptr %82, align 8, !tbaa !52
  %1933 = load ptr, ptr %76, align 8, !tbaa !27
  %1934 = getelementptr inbounds ptr, ptr %1933, i64 %1891
  %1935 = getelementptr inbounds ptr, ptr %1934, i64 1
  %1936 = sub i32 %1932, %1885
  %1937 = zext i32 %1936 to i64
  %1938 = shl nuw nsw i64 %1937, 3
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %1934, ptr nonnull align 8 %1935, i64 %1938, i1 false)
  %1939 = load i32, ptr %82, align 8, !tbaa !52
  br label %1940

1940:                                             ; preds = %1928, %1917, %1911
  %1941 = phi i32 [ %1939, %1928 ], [ %1884, %1917 ], [ %1884, %1911 ]
  %1942 = phi i32 [ %1887, %1928 ], [ %1885, %1917 ], [ %1885, %1911 ]
  %1943 = add i32 %1942, 1
  %1944 = icmp ult i32 %1943, %1941
  br i1 %1944, label %1883, label %1945, !llvm.loop !136

1945:                                             ; preds = %1940, %1801, %1793
  %1946 = phi i32 [ %1797, %1793 ], [ %.lcssa48, %1801 ], [ %1941, %1940 ]
  %1947 = icmp eq i32 %1946, 0
  br i1 %1947, label %2183, label %1948

1948:                                             ; preds = %1945
  %1949 = load ptr, ptr %76, align 8, !tbaa !27
  %1950 = load ptr, ptr %1949, align 8, !tbaa !7
  %1951 = getelementptr inbounds %struct._exon_t, ptr %1950, i64 0, i32 3
  %1952 = load i32, ptr %1951, align 4, !tbaa !98
  %1953 = getelementptr inbounds %struct._exon_t, ptr %1950, i64 0, i32 1
  %1954 = load i32, ptr %1953, align 4, !tbaa !92
  %1955 = add i32 %1952, 1
  %1956 = sub i32 %1955, %1954
  %1957 = load i32, ptr %37, align 4, !tbaa !43
  %1958 = icmp ult i32 %1956, %1957
  br i1 %1958, label %1970, label %1987

1959:                                             ; preds = %1970
  %1960 = getelementptr inbounds ptr, ptr %1977, i64 %1973
  %1961 = load ptr, ptr %1960, align 8, !tbaa !7
  %1962 = getelementptr inbounds %struct._exon_t, ptr %1961, i64 0, i32 3
  %1963 = load i32, ptr %1962, align 4, !tbaa !98
  %1964 = getelementptr inbounds %struct._exon_t, ptr %1961, i64 0, i32 1
  %1965 = load i32, ptr %1964, align 4, !tbaa !92
  %1966 = add i32 %1963, 1
  %1967 = sub i32 %1966, %1965
  %1968 = load i32, ptr %37, align 4, !tbaa !43
  %1969 = icmp ult i32 %1967, %1968
  br i1 %1969, label %1970, label %1978

1970:                                             ; preds = %1959, %1948
  %1971 = phi i64 [ %1973, %1959 ], [ 0, %1948 ]
  %1972 = phi ptr [ %1961, %1959 ], [ %1950, %1948 ]
  call void @free(ptr noundef nonnull %1972) #31
  %1973 = add nuw nsw i64 %1971, 1
  %1974 = load i32, ptr %82, align 8, !tbaa !52
  %1975 = zext i32 %1974 to i64
  %1976 = icmp ult i64 %1973, %1975
  %1977 = load ptr, ptr %76, align 8, !tbaa !27
  br i1 %1976, label %1959, label %1978

1978:                                             ; preds = %1970, %1959
  %.lcssa51 = phi i64 [ %1973, %1970 ], [ %1973, %1959 ]
  %.lcssa50 = phi i32 [ %1974, %1970 ], [ %1974, %1959 ]
  %.lcssa49 = phi ptr [ %1977, %1970 ], [ %1977, %1959 ]
  %1979 = trunc i64 %.lcssa51 to i32
  %1980 = and i64 %.lcssa51, 4294967295
  %1981 = getelementptr inbounds ptr, ptr %.lcssa49, i64 %1980
  %1982 = sub i32 %.lcssa50, %1979
  %1983 = zext i32 %1982 to i64
  %1984 = shl nuw nsw i64 %1983, 3
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %.lcssa49, ptr nonnull align 8 %1981, i64 %1984, i1 false)
  %1985 = load i32, ptr %82, align 8, !tbaa !52
  %1986 = sub i32 %1985, %1979
  store i32 %1986, ptr %82, align 8, !tbaa !52
  br label %1987

1987:                                             ; preds = %1978, %1948
  %1988 = phi i32 [ %1986, %1978 ], [ %1946, %1948 ]
  %1989 = add i32 %1988, -1
  %1990 = icmp sgt i32 %1989, -1
  br i1 %1990, label %1991, label %2023

1991:                                             ; preds = %1987
  %1992 = load ptr, ptr %76, align 8, !tbaa !27
  %1993 = zext i32 %1989 to i64
  %1994 = getelementptr inbounds ptr, ptr %1992, i64 %1993
  %1995 = load ptr, ptr %1994, align 8, !tbaa !7
  %1996 = getelementptr inbounds %struct._exon_t, ptr %1995, i64 0, i32 3
  %1997 = load i32, ptr %1996, align 4, !tbaa !98
  %1998 = getelementptr inbounds %struct._exon_t, ptr %1995, i64 0, i32 1
  %1999 = load i32, ptr %1998, align 4, !tbaa !92
  %2000 = add i32 %1997, 1
  %2001 = sub i32 %2000, %1999
  %2002 = load i32, ptr %37, align 4, !tbaa !43
  %2003 = icmp ult i32 %2001, %2002
  br i1 %2003, label %2017, label %2023

2004:                                             ; preds = %2017
  %2005 = add nsw i64 %2018, -1
  %2006 = load ptr, ptr %76, align 8, !tbaa !27
  %2007 = getelementptr inbounds ptr, ptr %2006, i64 %2005
  %2008 = load ptr, ptr %2007, align 8, !tbaa !7
  %2009 = getelementptr inbounds %struct._exon_t, ptr %2008, i64 0, i32 3
  %2010 = load i32, ptr %2009, align 4, !tbaa !98
  %2011 = getelementptr inbounds %struct._exon_t, ptr %2008, i64 0, i32 1
  %2012 = load i32, ptr %2011, align 4, !tbaa !92
  %2013 = add i32 %2010, 1
  %2014 = sub i32 %2013, %2012
  %2015 = load i32, ptr %37, align 4, !tbaa !43
  %2016 = icmp ult i32 %2014, %2015
  br i1 %2016, label %2017, label %2023

2017:                                             ; preds = %2004, %1991
  %2018 = phi i64 [ %2005, %2004 ], [ %1993, %1991 ]
  %2019 = phi ptr [ %2008, %2004 ], [ %1995, %1991 ]
  call void @free(ptr noundef nonnull %2019) #31
  %2020 = load i32, ptr %82, align 8, !tbaa !52
  %2021 = add i32 %2020, -1
  store i32 %2021, ptr %82, align 8, !tbaa !52
  %2022 = icmp sgt i64 %2018, 0
  br i1 %2022, label %2004, label %2023

2023:                                             ; preds = %2017, %2004, %1991, %1987
  %2024 = phi i32 [ %1988, %1987 ], [ %1988, %1991 ], [ %2021, %2004 ], [ %2021, %2017 ]
  %2025 = load ptr, ptr %36, align 8, !tbaa !45
  %2026 = load ptr, ptr %26, align 8, !tbaa !41
  %2027 = icmp ugt i32 %2024, 1
  br i1 %2027, label %2028, label %2178

2028:                                             ; preds = %2023
  %2029 = getelementptr inbounds %struct._result_t, ptr %75, i64 0, i32 4
  %2030 = load i32, ptr getelementptr inbounds (%struct._options_t, ptr @options, i64 0, i32 9), align 4
  %2031 = shl i32 %2030, 1
  %2032 = add i32 %2031, 4
  %2033 = and i32 %2032, 4194302
  %2034 = zext i32 %2033 to i64
  %2035 = shl nuw nsw i64 %2034, 34
  br label %2038

2036:                                             ; preds = %2078
  %.lcssa52 = phi i32 [ %2080, %2078 ]
  %2037 = icmp ugt i32 %.lcssa52, 1
  br i1 %2037, label %2083, label %2178

2038:                                             ; preds = %2078, %2028
  %2039 = phi i64 [ 1, %2028 ], [ %2079, %2078 ]
  %2040 = load ptr, ptr %76, align 8, !tbaa !27
  %2041 = add nsw i64 %2039, -1
  %2042 = getelementptr inbounds ptr, ptr %2040, i64 %2041
  %2043 = load ptr, ptr %2042, align 8, !tbaa !7
  %2044 = getelementptr inbounds ptr, ptr %2040, i64 %2039
  %2045 = load ptr, ptr %2044, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %7) #30
  %2046 = getelementptr inbounds %struct._exon_t, ptr %2043, i64 0, i32 6
  %2047 = load i64, ptr %2046, align 4
  %2048 = and i64 %2047, 4294967295
  %2049 = or i64 %2048, -72057594037927936
  store i64 %2049, ptr %2046, align 4
  %2050 = getelementptr inbounds %struct._exon_t, ptr %2045, i64 0, i32 1
  %2051 = load i32, ptr %2050, align 4, !tbaa !92
  %2052 = getelementptr inbounds %struct._exon_t, ptr %2043, i64 0, i32 3
  %2053 = load i32, ptr %2052, align 4, !tbaa !98
  %2054 = sub i32 %2051, %2053
  %2055 = icmp eq i32 %2054, 1
  br i1 %2055, label %2056, label %2078

2056:                                             ; preds = %2038
  %2057 = getelementptr inbounds %struct._exon_t, ptr %2043, i64 0, i32 2
  %2058 = load i32, ptr %2057, align 4, !tbaa !97
  store i32 %2058, ptr %7, align 4, !tbaa !137
  store i32 %2053, ptr %53, align 4, !tbaa !139
  %2059 = load i32, ptr %2045, align 4, !tbaa !94
  store i32 %2059, ptr %54, align 4, !tbaa !140
  %2060 = call fastcc i32 @perfect_spl_p(ptr noundef %2025, ptr noundef %2026, ptr noundef nonnull %7) #35, !range !100
  %2061 = icmp eq i32 %2060, 0
  br i1 %2061, label %2078, label %2062

2062:                                             ; preds = %2056
  %2063 = load i32, ptr %55, align 4, !tbaa !141
  %2064 = load i32, ptr %2029, align 8, !tbaa !142
  %2065 = add nsw i32 %2064, %2063
  store i32 %2065, ptr %2029, align 8, !tbaa !142
  %2066 = load i64, ptr %2046, align 4
  %2067 = and i32 %2063, 3
  %2068 = zext i32 %2067 to i64
  %2069 = shl nuw nsw i64 %2068, 32
  %2070 = and i64 %2066, 4294967295
  %2071 = or i64 %2070, %2069
  %2072 = load i32, ptr %56, align 4, !tbaa !143
  %2073 = and i32 %2072, 255
  %2074 = zext i32 %2073 to i64
  %2075 = shl nuw i64 %2074, 56
  %2076 = or i64 %2075, %2071
  %2077 = or i64 %2035, %2076
  store i64 %2077, ptr %2046, align 4
  br label %2078

2078:                                             ; preds = %2062, %2056, %2038
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %7) #30
  %2079 = add nuw nsw i64 %2039, 1
  %2080 = load i32, ptr %82, align 8, !tbaa !52
  %2081 = zext i32 %2080 to i64
  %2082 = icmp ult i64 %2079, %2081
  br i1 %2082, label %2038, label %2036, !llvm.loop !144

2083:                                             ; preds = %2173, %2036
  %2084 = phi i32 [ %2174, %2173 ], [ %.lcssa52, %2036 ]
  %2085 = phi i64 [ %2175, %2173 ], [ 1, %2036 ]
  %2086 = load ptr, ptr %76, align 8, !tbaa !27
  %2087 = add nsw i64 %2085, -1
  %2088 = getelementptr inbounds ptr, ptr %2086, i64 %2087
  %2089 = load ptr, ptr %2088, align 8, !tbaa !7
  %2090 = getelementptr inbounds ptr, ptr %2086, i64 %2085
  %2091 = load ptr, ptr %2090, align 8, !tbaa !7
  %2092 = getelementptr inbounds %struct._exon_t, ptr %2091, i64 0, i32 1
  %2093 = load i32, ptr %2092, align 4, !tbaa !92
  %2094 = getelementptr inbounds %struct._exon_t, ptr %2089, i64 0, i32 3
  %2095 = load i32, ptr %2094, align 4, !tbaa !98
  %2096 = icmp ugt i32 %2093, %2095
  br i1 %2096, label %2173, label %2097

2097:                                             ; preds = %2083
  %2098 = sub i32 %2095, %2093
  %2099 = add i32 %2098, 2
  %2100 = zext i32 %2099 to i64
  %2101 = mul nuw nsw i64 %2100, 28
  %2102 = call fastcc ptr @xmalloc(i64 noundef %2101) #31
  %2103 = icmp eq i32 %2099, 0
  br i1 %2103, label %2171, label %2104

2104:                                             ; preds = %2097
  %2105 = getelementptr inbounds %struct._exon_t, ptr %2089, i64 0, i32 2
  %2106 = xor i32 %2098, -1
  %2107 = load <2 x i32>, ptr %2105, align 4, !tbaa !11
  %2108 = load i32, ptr %2091, align 4, !tbaa !94
  br label %2109

2109:                                             ; preds = %2126, %2104
  %2110 = phi i64 [ 0, %2104 ], [ %2128, %2126 ]
  %2111 = phi i32 [ 0, %2104 ], [ %2127, %2126 ]
  %2112 = trunc i64 %2110 to i32
  %2113 = add i32 %2112, %2106
  %2114 = getelementptr inbounds %struct._splice_score_t, ptr %2102, i64 %2110
  %2115 = insertelement <2 x i32> poison, i32 %2113, i64 0
  %2116 = shufflevector <2 x i32> %2115, <2 x i32> poison, <2 x i32> zeroinitializer
  %2117 = add <2 x i32> %2116, %2107
  store <2 x i32> %2117, ptr %2114, align 4, !tbaa !11
  %2118 = add i32 %2108, %2112
  %2119 = getelementptr inbounds %struct._splice_score_t, ptr %2102, i64 %2110, i32 2
  store i32 %2118, ptr %2119, align 4, !tbaa !140
  %2120 = call fastcc i32 @perfect_spl_p(ptr noundef %2025, ptr noundef %2026, ptr noundef nonnull %2114) #35, !range !100
  %2121 = icmp eq i32 %2120, 0
  br i1 %2121, label %2124, label %2122

2122:                                             ; preds = %2109
  %2123 = add i32 %2111, 1
  br label %2126

2124:                                             ; preds = %2109
  %2125 = getelementptr inbounds %struct._splice_score_t, ptr %2102, i64 %2110, i32 6
  store i32 0, ptr %2125, align 4, !tbaa !141
  br label %2126

2126:                                             ; preds = %2124, %2122
  %2127 = phi i32 [ %2123, %2122 ], [ %2111, %2124 ]
  %2128 = add nuw nsw i64 %2110, 1
  %2129 = icmp eq i64 %2128, %2100
  br i1 %2129, label %2130, label %2109, !llvm.loop !145

2130:                                             ; preds = %2126
  %.lcssa53 = phi i32 [ %2127, %2126 ]
  %2131 = icmp eq i32 %.lcssa53, 1
  br i1 %2131, label %2132, label %2171

2132:                                             ; preds = %2130
  %2133 = getelementptr inbounds %struct._exon_t, ptr %2089, i64 0, i32 6
  %2134 = load i32, ptr getelementptr inbounds (%struct._options_t, ptr @options, i64 0, i32 9), align 4
  %2135 = shl i32 %2134, 1
  %2136 = add i32 %2135, 4
  %2137 = and i32 %2136, 4194302
  %2138 = zext i32 %2137 to i64
  %2139 = shl nuw nsw i64 %2138, 34
  br label %2140

2140:                                             ; preds = %2168, %2132
  %2141 = phi i64 [ 0, %2132 ], [ %2169, %2168 ]
  %2142 = getelementptr inbounds %struct._splice_score_t, ptr %2102, i64 %2141, i32 6
  %2143 = load i32, ptr %2142, align 4, !tbaa !141
  %2144 = icmp eq i32 %2143, 0
  br i1 %2144, label %2168, label %2145

2145:                                             ; preds = %2140
  %2146 = getelementptr inbounds %struct._splice_score_t, ptr %2102, i64 %2141
  %2147 = load i32, ptr %2029, align 8, !tbaa !142
  %2148 = add nsw i32 %2147, %2143
  store i32 %2148, ptr %2029, align 8, !tbaa !142
  %2149 = load i64, ptr %2133, align 4
  %2150 = and i32 %2143, 3
  %2151 = zext i32 %2150 to i64
  %2152 = shl nuw nsw i64 %2151, 32
  %2153 = and i64 %2149, 4294967295
  %2154 = or i64 %2153, %2152
  %2155 = getelementptr inbounds %struct._splice_score_t, ptr %2102, i64 %2141, i32 3
  %2156 = load i32, ptr %2155, align 4, !tbaa !143
  %2157 = and i32 %2156, 255
  %2158 = zext i32 %2157 to i64
  %2159 = shl nuw i64 %2158, 56
  %2160 = or i64 %2159, %2154
  %2161 = or i64 %2139, %2160
  store i64 %2161, ptr %2133, align 4
  %2162 = load i32, ptr %2146, align 4, !tbaa !137
  store i32 %2162, ptr %2105, align 4, !tbaa !97
  %2163 = getelementptr inbounds %struct._splice_score_t, ptr %2102, i64 %2141, i32 1
  %2164 = load i32, ptr %2163, align 4, !tbaa !139
  store i32 %2164, ptr %2094, align 4, !tbaa !98
  %2165 = add i32 %2164, 1
  store i32 %2165, ptr %2092, align 4, !tbaa !92
  %2166 = getelementptr inbounds %struct._splice_score_t, ptr %2102, i64 %2141, i32 2
  %2167 = load i32, ptr %2166, align 4, !tbaa !140
  store i32 %2167, ptr %2091, align 4, !tbaa !94
  br label %2168

2168:                                             ; preds = %2145, %2140
  %2169 = add nuw nsw i64 %2141, 1
  %2170 = icmp eq i64 %2169, %2100
  br i1 %2170, label %2171, label %2140, !llvm.loop !146

2171:                                             ; preds = %2168, %2130, %2097
  call void @free(ptr noundef %2102) #31
  %2172 = load i32, ptr %82, align 8, !tbaa !52
  br label %2173

2173:                                             ; preds = %2171, %2083
  %2174 = phi i32 [ %2084, %2083 ], [ %2172, %2171 ]
  %2175 = add nuw nsw i64 %2085, 1
  %2176 = zext i32 %2174 to i64
  %2177 = icmp ult i64 %2175, %2176
  br i1 %2177, label %2083, label %2178, !llvm.loop !147

2178:                                             ; preds = %2173, %2036, %2023
  %2179 = phi i32 [ %.lcssa52, %2036 ], [ %2024, %2023 ], [ %2174, %2173 ]
  %2180 = getelementptr inbounds %struct._result_t, ptr %75, i64 0, i32 4
  %2181 = load i32, ptr %2180, align 8, !tbaa !142
  %2182 = icmp eq i32 %2181, 0
  br i1 %2182, label %2189, label %2309

2183:                                             ; preds = %1945
  %2184 = load ptr, ptr %36, align 8, !tbaa !45
  %2185 = load ptr, ptr %26, align 8, !tbaa !41
  %2186 = getelementptr inbounds %struct._result_t, ptr %75, i64 0, i32 4
  %2187 = load i32, ptr %2186, align 8, !tbaa !142
  %2188 = icmp eq i32 %2187, 0
  br i1 %2188, label %2299, label %2441

2189:                                             ; preds = %2178
  %2190 = icmp ugt i32 %2179, 1
  br i1 %2190, label %2191, label %2299

2191:                                             ; preds = %2289, %2189
  %2192 = phi i32 [ %2290, %2289 ], [ %2179, %2189 ]
  %2193 = phi i32 [ %2291, %2289 ], [ %2179, %2189 ]
  %2194 = phi i32 [ %2292, %2289 ], [ %2179, %2189 ]
  %2195 = phi i64 [ %2296, %2289 ], [ 1, %2189 ]
  %2196 = phi i32 [ %2295, %2289 ], [ 0, %2189 ]
  %2197 = phi i32 [ %2294, %2289 ], [ 0, %2189 ]
  %2198 = phi i32 [ %2293, %2289 ], [ undef, %2189 ]
  %2199 = load ptr, ptr %76, align 8, !tbaa !27
  %2200 = add nsw i64 %2195, -1
  %2201 = getelementptr inbounds ptr, ptr %2199, i64 %2200
  %2202 = load ptr, ptr %2201, align 8, !tbaa !7
  %2203 = getelementptr inbounds ptr, ptr %2199, i64 %2195
  %2204 = load ptr, ptr %2203, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %8) #30
  %2205 = getelementptr inbounds %struct._exon_t, ptr %2202, i64 0, i32 3
  %2206 = load i32, ptr %2205, align 4, !tbaa !98
  %2207 = add i32 %2206, 1
  %2208 = getelementptr inbounds %struct._exon_t, ptr %2204, i64 0, i32 1
  %2209 = load i32, ptr %2208, align 4, !tbaa !92
  %2210 = icmp ult i32 %2207, %2209
  br i1 %2210, label %2289, label %2211

2211:                                             ; preds = %2191
  %2212 = getelementptr inbounds %struct._exon_t, ptr %2202, i64 0, i32 6
  %2213 = load i64, ptr %2212, align 4
  %2214 = shl i64 %2213, 30
  %2215 = ashr i64 %2214, 62
  %2216 = trunc i64 %2215 to i32
  %2217 = icmp sgt i32 %2216, 0
  br i1 %2217, label %2218, label %2223

2218:                                             ; preds = %2211
  %2219 = lshr i64 %2213, 34
  %2220 = trunc i64 %2219 to i32
  %2221 = and i32 %2220, 4194303
  %2222 = add i32 %2221, %2196
  br label %2289

2223:                                             ; preds = %2211
  %2224 = icmp slt i32 %2216, 0
  br i1 %2224, label %2225, label %2230

2225:                                             ; preds = %2223
  %2226 = lshr i64 %2213, 34
  %2227 = trunc i64 %2226 to i32
  %2228 = and i32 %2227, 4194303
  %2229 = add i32 %2228, %2197
  br label %2289

2230:                                             ; preds = %2223
  %2231 = sub i32 %2206, %2209
  %2232 = add i32 %2231, 2
  %2233 = icmp eq i32 %2232, 0
  br i1 %2233, label %2278, label %2234

2234:                                             ; preds = %2230
  %2235 = getelementptr inbounds %struct._exon_t, ptr %2202, i64 0, i32 2
  %2236 = xor i32 %2231, -1
  br label %2237

2237:                                             ; preds = %2269, %2234
  %2238 = phi i32 [ 0, %2234 ], [ %2274, %2269 ]
  %2239 = phi i32 [ -1, %2234 ], [ %2273, %2269 ]
  %2240 = phi i32 [ 0, %2234 ], [ %2272, %2269 ]
  %2241 = phi i32 [ 0, %2234 ], [ %2271, %2269 ]
  %2242 = phi i32 [ %2198, %2234 ], [ %2270, %2269 ]
  %2243 = add i32 %2238, %2236
  %2244 = load <2 x i32>, ptr %2235, align 4, !tbaa !11
  %2245 = insertelement <2 x i32> poison, i32 %2243, i64 0
  %2246 = shufflevector <2 x i32> %2245, <2 x i32> poison, <2 x i32> zeroinitializer
  %2247 = add <2 x i32> %2244, %2246
  store <2 x i32> %2247, ptr %8, align 8, !tbaa !11
  %2248 = load i32, ptr %2204, align 4, !tbaa !94
  %2249 = add i32 %2248, %2238
  store i32 %2249, ptr %57, align 8, !tbaa !140
  call fastcc void @compute_max_score(ptr noundef %2025, ptr noundef %2026, ptr noundef nonnull %8, i32 noundef 0) #35
  %2250 = load i32, ptr %58, align 8
  %2251 = icmp ult i32 %2250, %2240
  br i1 %2251, label %2269, label %2252

2252:                                             ; preds = %2237
  %2253 = icmp ugt i32 %2250, %2240
  br i1 %2253, label %2254, label %2257

2254:                                             ; preds = %2252
  %2255 = load i32, ptr %60, align 4, !tbaa.struct !148
  %2256 = load i32, ptr %59, align 4, !tbaa.struct !149
  br label %2265

2257:                                             ; preds = %2252
  %2258 = load i32, ptr %59, align 4
  %2259 = icmp ult i32 %2258, %2241
  br i1 %2259, label %2269, label %2260

2260:                                             ; preds = %2257
  %2261 = icmp ugt i32 %2258, %2241
  %2262 = load i32, ptr %60, align 4
  %2263 = icmp ult i32 %2262, %2239
  %2264 = select i1 %2261, i1 true, i1 %2263
  br i1 %2264, label %2265, label %2269

2265:                                             ; preds = %2260, %2254
  %2266 = phi i32 [ %2256, %2254 ], [ %2258, %2260 ]
  %2267 = phi i32 [ %2255, %2254 ], [ %2262, %2260 ]
  %2268 = load i32, ptr %61, align 8, !tbaa.struct !150
  br label %2269

2269:                                             ; preds = %2265, %2260, %2257, %2237
  %2270 = phi i32 [ %2268, %2265 ], [ %2242, %2237 ], [ %2242, %2257 ], [ %2242, %2260 ]
  %2271 = phi i32 [ %2266, %2265 ], [ %2241, %2237 ], [ %2241, %2257 ], [ %2241, %2260 ]
  %2272 = phi i32 [ %2250, %2265 ], [ %2240, %2237 ], [ %2240, %2257 ], [ %2240, %2260 ]
  %2273 = phi i32 [ %2267, %2265 ], [ %2239, %2237 ], [ %2239, %2257 ], [ %2239, %2260 ]
  %2274 = add nuw i32 %2238, 1
  %2275 = icmp eq i32 %2274, %2232
  br i1 %2275, label %2276, label %2237, !llvm.loop !151

2276:                                             ; preds = %2269
  %.lcssa55 = phi i32 [ %2270, %2269 ]
  %.lcssa54 = phi i32 [ %2272, %2269 ]
  %2277 = load i32, ptr %82, align 8, !tbaa !52
  br label %2278

2278:                                             ; preds = %2276, %2230
  %2279 = phi i32 [ %2192, %2230 ], [ %2277, %2276 ]
  %2280 = phi i32 [ %2193, %2230 ], [ %2277, %2276 ]
  %2281 = phi i32 [ %2198, %2230 ], [ %.lcssa55, %2276 ]
  %2282 = phi i32 [ 0, %2230 ], [ %.lcssa54, %2276 ]
  %2283 = icmp sgt i32 %2281, 0
  %2284 = select i1 %2283, i32 %2282, i32 0
  %2285 = add i32 %2284, %2196
  %2286 = icmp slt i32 %2281, 0
  %2287 = select i1 %2286, i32 %2282, i32 0
  %2288 = add i32 %2287, %2197
  br label %2289

2289:                                             ; preds = %2278, %2225, %2218, %2191
  %2290 = phi i32 [ %2192, %2191 ], [ %2192, %2218 ], [ %2192, %2225 ], [ %2279, %2278 ]
  %2291 = phi i32 [ %2193, %2191 ], [ %2193, %2218 ], [ %2193, %2225 ], [ %2280, %2278 ]
  %2292 = phi i32 [ %2194, %2191 ], [ %2194, %2218 ], [ %2194, %2225 ], [ %2280, %2278 ]
  %2293 = phi i32 [ %2198, %2191 ], [ %2198, %2218 ], [ %2198, %2225 ], [ %2281, %2278 ]
  %2294 = phi i32 [ %2197, %2191 ], [ %2197, %2218 ], [ %2229, %2225 ], [ %2288, %2278 ]
  %2295 = phi i32 [ %2196, %2191 ], [ %2222, %2218 ], [ %2196, %2225 ], [ %2285, %2278 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %8) #30
  %2296 = add nuw nsw i64 %2195, 1
  %2297 = zext i32 %2292 to i64
  %2298 = icmp ult i64 %2296, %2297
  br i1 %2298, label %2191, label %2299, !llvm.loop !152

2299:                                             ; preds = %2289, %2189, %2183
  %2300 = phi ptr [ %2026, %2189 ], [ %2185, %2183 ], [ %2026, %2289 ]
  %2301 = phi ptr [ %2025, %2189 ], [ %2184, %2183 ], [ %2025, %2289 ]
  %2302 = phi ptr [ %2180, %2189 ], [ %2186, %2183 ], [ %2180, %2289 ]
  %2303 = phi i32 [ %2179, %2189 ], [ 0, %2183 ], [ %2290, %2289 ]
  %2304 = phi i32 [ %2179, %2189 ], [ 0, %2183 ], [ %2292, %2289 ]
  %2305 = phi i32 [ 0, %2189 ], [ 0, %2183 ], [ %2294, %2289 ]
  %2306 = phi i32 [ 0, %2189 ], [ 0, %2183 ], [ %2295, %2289 ]
  %2307 = icmp ult i32 %2306, %2305
  %2308 = select i1 %2307, i32 -1, i32 1
  store i32 %2308, ptr %2302, align 8, !tbaa !142
  br label %2309

2309:                                             ; preds = %2299, %2178
  %2310 = phi ptr [ %2302, %2299 ], [ %2180, %2178 ]
  %2311 = phi ptr [ %2301, %2299 ], [ %2025, %2178 ]
  %2312 = phi ptr [ %2300, %2299 ], [ %2026, %2178 ]
  %2313 = phi i32 [ %2303, %2299 ], [ %2179, %2178 ]
  %2314 = phi i32 [ %2304, %2299 ], [ %2179, %2178 ]
  %2315 = icmp ugt i32 %2314, 1
  br i1 %2315, label %2316, label %2441

2316:                                             ; preds = %2431, %2309
  %2317 = phi i32 [ %2432, %2431 ], [ %2313, %2309 ]
  %2318 = phi i32 [ %2433, %2431 ], [ %2314, %2309 ]
  %2319 = phi i64 [ %2438, %2431 ], [ 1, %2309 ]
  %2320 = phi i32 [ %2437, %2431 ], [ undef, %2309 ]
  %2321 = phi i32 [ %2436, %2431 ], [ undef, %2309 ]
  %2322 = phi i32 [ %2435, %2431 ], [ undef, %2309 ]
  %2323 = phi i32 [ %2434, %2431 ], [ undef, %2309 ]
  %2324 = load ptr, ptr %76, align 8, !tbaa !27
  %2325 = add nsw i64 %2319, -1
  %2326 = getelementptr inbounds ptr, ptr %2324, i64 %2325
  %2327 = load ptr, ptr %2326, align 8, !tbaa !7
  %2328 = getelementptr inbounds ptr, ptr %2324, i64 %2319
  %2329 = load ptr, ptr %2328, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %9) #30
  %2330 = getelementptr inbounds %struct._exon_t, ptr %2327, i64 0, i32 6
  %2331 = load i64, ptr %2330, align 4
  %2332 = ashr i64 %2331, 56
  %2333 = and i64 %2332, 2147483648
  %2334 = icmp eq i64 %2333, 0
  br i1 %2334, label %2335, label %2342

2335:                                             ; preds = %2316
  %2336 = shl i64 %2331, 30
  %2337 = ashr i64 %2336, 62
  %2338 = trunc i64 %2337 to i32
  %2339 = load i32, ptr %2310, align 8, !tbaa !142
  %2340 = mul nsw i32 %2339, %2338
  %2341 = icmp sgt i32 %2340, 0
  br i1 %2341, label %2431, label %2342

2342:                                             ; preds = %2335, %2316
  %2343 = getelementptr inbounds %struct._exon_t, ptr %2327, i64 0, i32 3
  %2344 = load i32, ptr %2343, align 4, !tbaa !98
  %2345 = add i32 %2344, 1
  %2346 = getelementptr inbounds %struct._exon_t, ptr %2329, i64 0, i32 1
  %2347 = load i32, ptr %2346, align 4, !tbaa !92
  %2348 = icmp ult i32 %2345, %2347
  br i1 %2348, label %2431, label %2349

2349:                                             ; preds = %2342
  %2350 = sub i32 %2344, %2347
  %2351 = add i32 %2350, 2
  %2352 = icmp eq i32 %2351, 0
  br i1 %2352, label %2407, label %2353

2353:                                             ; preds = %2349
  %2354 = getelementptr inbounds %struct._exon_t, ptr %2327, i64 0, i32 2
  %2355 = xor i32 %2350, -1
  br label %2356

2356:                                             ; preds = %2395, %2353
  %2357 = phi i32 [ 0, %2353 ], [ %2403, %2395 ]
  %2358 = phi i32 [ %2320, %2353 ], [ %2402, %2395 ]
  %2359 = phi i32 [ %2321, %2353 ], [ %2401, %2395 ]
  %2360 = phi i32 [ %2322, %2353 ], [ %2400, %2395 ]
  %2361 = phi i32 [ -1, %2353 ], [ %2399, %2395 ]
  %2362 = phi i32 [ 0, %2353 ], [ %2398, %2395 ]
  %2363 = phi i32 [ 0, %2353 ], [ %2397, %2395 ]
  %2364 = phi i32 [ %2323, %2353 ], [ %2396, %2395 ]
  %2365 = add i32 %2357, %2355
  %2366 = load <2 x i32>, ptr %2354, align 4, !tbaa !11
  %2367 = insertelement <2 x i32> poison, i32 %2365, i64 0
  %2368 = shufflevector <2 x i32> %2367, <2 x i32> poison, <2 x i32> zeroinitializer
  %2369 = add <2 x i32> %2366, %2368
  store <2 x i32> %2369, ptr %9, align 8, !tbaa !11
  %2370 = load i32, ptr %2329, align 4, !tbaa !94
  %2371 = add i32 %2370, %2357
  store i32 %2371, ptr %63, align 8, !tbaa !140
  %2372 = load i32, ptr %2310, align 8, !tbaa !142
  call fastcc void @compute_max_score(ptr noundef %2311, ptr noundef %2312, ptr noundef nonnull %9, i32 noundef %2372) #35
  %2373 = load i32, ptr %64, align 8
  %2374 = icmp ult i32 %2373, %2362
  br i1 %2374, label %2395, label %2375

2375:                                             ; preds = %2356
  %2376 = icmp ugt i32 %2373, %2362
  br i1 %2376, label %2377, label %2380

2377:                                             ; preds = %2375
  %2378 = load i32, ptr %66, align 4, !tbaa.struct !148
  %2379 = load i32, ptr %65, align 4, !tbaa.struct !149
  br label %2388

2380:                                             ; preds = %2375
  %2381 = load i32, ptr %65, align 4
  %2382 = icmp ult i32 %2381, %2363
  br i1 %2382, label %2395, label %2383

2383:                                             ; preds = %2380
  %2384 = icmp ugt i32 %2381, %2363
  %2385 = load i32, ptr %66, align 4
  %2386 = icmp ult i32 %2385, %2361
  %2387 = select i1 %2384, i1 true, i1 %2386
  br i1 %2387, label %2388, label %2395

2388:                                             ; preds = %2383, %2377
  %2389 = phi i32 [ %2379, %2377 ], [ %2381, %2383 ]
  %2390 = phi i32 [ %2378, %2377 ], [ %2385, %2383 ]
  %2391 = load i32, ptr %9, align 8, !tbaa.struct !153
  %2392 = load i32, ptr %62, align 4, !tbaa.struct !154
  %2393 = load i32, ptr %63, align 8, !tbaa.struct !155
  %2394 = load i32, ptr %67, align 8, !tbaa.struct !150
  br label %2395

2395:                                             ; preds = %2388, %2383, %2380, %2356
  %2396 = phi i32 [ %2394, %2388 ], [ %2364, %2356 ], [ %2364, %2380 ], [ %2364, %2383 ]
  %2397 = phi i32 [ %2389, %2388 ], [ %2363, %2356 ], [ %2363, %2380 ], [ %2363, %2383 ]
  %2398 = phi i32 [ %2373, %2388 ], [ %2362, %2356 ], [ %2362, %2380 ], [ %2362, %2383 ]
  %2399 = phi i32 [ %2390, %2388 ], [ %2361, %2356 ], [ %2361, %2380 ], [ %2361, %2383 ]
  %2400 = phi i32 [ %2393, %2388 ], [ %2360, %2356 ], [ %2360, %2380 ], [ %2360, %2383 ]
  %2401 = phi i32 [ %2392, %2388 ], [ %2359, %2356 ], [ %2359, %2380 ], [ %2359, %2383 ]
  %2402 = phi i32 [ %2391, %2388 ], [ %2358, %2356 ], [ %2358, %2380 ], [ %2358, %2383 ]
  %2403 = add nuw i32 %2357, 1
  %2404 = icmp eq i32 %2403, %2351
  br i1 %2404, label %2405, label %2356, !llvm.loop !156

2405:                                             ; preds = %2395
  %.lcssa61 = phi i32 [ %2396, %2395 ]
  %.lcssa60 = phi i32 [ %2398, %2395 ]
  %.lcssa59 = phi i32 [ %2399, %2395 ]
  %.lcssa58 = phi i32 [ %2400, %2395 ]
  %.lcssa57 = phi i32 [ %2401, %2395 ]
  %.lcssa56 = phi i32 [ %2402, %2395 ]
  %2406 = load i64, ptr %2330, align 4
  br label %2407

2407:                                             ; preds = %2405, %2349
  %2408 = phi i64 [ %2331, %2349 ], [ %2406, %2405 ]
  %2409 = phi i32 [ %2323, %2349 ], [ %.lcssa61, %2405 ]
  %2410 = phi i32 [ 0, %2349 ], [ %.lcssa60, %2405 ]
  %2411 = phi i32 [ -1, %2349 ], [ %.lcssa59, %2405 ]
  %2412 = phi i32 [ %2322, %2349 ], [ %.lcssa58, %2405 ]
  %2413 = phi i32 [ %2321, %2349 ], [ %.lcssa57, %2405 ]
  %2414 = phi i32 [ %2320, %2349 ], [ %.lcssa56, %2405 ]
  %2415 = and i32 %2409, 3
  %2416 = zext i32 %2415 to i64
  %2417 = shl nuw nsw i64 %2416, 32
  %2418 = and i64 %2408, 4294967295
  %2419 = or i64 %2417, %2418
  %2420 = and i32 %2411, 255
  %2421 = zext i32 %2420 to i64
  %2422 = shl nuw i64 %2421, 56
  %2423 = or i64 %2422, %2419
  %2424 = and i32 %2410, 4194303
  %2425 = zext i32 %2424 to i64
  %2426 = shl nuw nsw i64 %2425, 34
  %2427 = or i64 %2423, %2426
  store i64 %2427, ptr %2330, align 4
  %2428 = getelementptr inbounds %struct._exon_t, ptr %2327, i64 0, i32 2
  store i32 %2414, ptr %2428, align 4, !tbaa !97
  store i32 %2413, ptr %2343, align 4, !tbaa !98
  %2429 = add i32 %2413, 1
  store i32 %2429, ptr %2346, align 4, !tbaa !92
  store i32 %2412, ptr %2329, align 4, !tbaa !94
  %2430 = load i32, ptr %82, align 8, !tbaa !52
  br label %2431

2431:                                             ; preds = %2407, %2342, %2335
  %2432 = phi i32 [ %2317, %2335 ], [ %2317, %2342 ], [ %2430, %2407 ]
  %2433 = phi i32 [ %2318, %2335 ], [ %2318, %2342 ], [ %2430, %2407 ]
  %2434 = phi i32 [ %2323, %2335 ], [ %2323, %2342 ], [ %2409, %2407 ]
  %2435 = phi i32 [ %2322, %2335 ], [ %2322, %2342 ], [ %2412, %2407 ]
  %2436 = phi i32 [ %2321, %2335 ], [ %2321, %2342 ], [ %2413, %2407 ]
  %2437 = phi i32 [ %2320, %2335 ], [ %2320, %2342 ], [ %2414, %2407 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %9) #30
  %2438 = add nuw nsw i64 %2319, 1
  %2439 = zext i32 %2433 to i64
  %2440 = icmp ult i64 %2438, %2439
  br i1 %2440, label %2316, label %2441, !llvm.loop !157

2441:                                             ; preds = %2431, %2309, %2183
  %2442 = phi i32 [ %2313, %2309 ], [ 0, %2183 ], [ %2432, %2431 ]
  %2443 = load ptr, ptr %36, align 8, !tbaa !45
  %2444 = load ptr, ptr %26, align 8, !tbaa !41
  %2445 = load i32, ptr %15, align 8, !tbaa !46
  %2446 = load i32, ptr %19, align 4, !tbaa !42
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #30
  store ptr null, ptr %75, align 8, !tbaa !7
  %2447 = add nsw i32 %2445, 1
  store i32 %2447, ptr %4, align 4, !tbaa !94
  %2448 = add nsw i32 %2446, 1
  store i32 %2448, ptr %68, align 4, !tbaa !92
  store i32 0, ptr %69, align 4, !tbaa !97
  store i32 0, ptr %70, align 4, !tbaa !98
  %2449 = getelementptr i8, ptr %2443, i64 -1
  %2450 = getelementptr i8, ptr %2444, i64 -1
  %2451 = add i32 %2442, -1
  %2452 = icmp sgt i32 %2451, -1
  br i1 %2452, label %2453, label %2948

2453:                                             ; preds = %2441
  %2454 = zext i32 %2451 to i64
  br label %2455

2455:                                             ; preds = %2890, %2453
  %2456 = phi i32 [ %2447, %2453 ], [ %2892, %2890 ]
  %2457 = phi i32 [ %2448, %2453 ], [ %2891, %2890 ]
  %2458 = phi i64 [ %2454, %2453 ], [ %2913, %2890 ]
  %2459 = phi i32 [ 0, %2453 ], [ %2897, %2890 ]
  %2460 = phi ptr [ %4, %2453 ], [ %2469, %2890 ]
  %2461 = phi i32 [ %2445, %2453 ], [ %2788, %2890 ]
  %2462 = phi i32 [ %2446, %2453 ], [ %2518, %2890 ]
  %2463 = phi i32 [ 0, %2453 ], [ %2893, %2890 ]
  %2464 = phi ptr [ null, %2453 ], [ %2912, %2890 ]
  %2465 = phi i32 [ 0, %2453 ], [ %2894, %2890 ]
  %2466 = phi ptr [ %68, %2453 ], [ %2470, %2890 ]
  %2467 = load ptr, ptr %76, align 8, !tbaa !27
  %2468 = getelementptr inbounds ptr, ptr %2467, i64 %2458
  %2469 = load ptr, ptr %2468, align 8, !tbaa !7
  %2470 = getelementptr inbounds %struct._exon_t, ptr %2469, i64 0, i32 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #30
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #30
  %2471 = getelementptr inbounds %struct._exon_t, ptr %2469, i64 0, i32 3
  %2472 = load i32, ptr %2471, align 4, !tbaa !98
  %2473 = add i32 %2472, 1
  %2474 = icmp eq i32 %2457, %2473
  br i1 %2474, label %2499, label %2475

2475:                                             ; preds = %2455
  %2476 = icmp eq i32 %2459, 0
  br i1 %2476, label %2493, label %2477

2477:                                             ; preds = %2475
  %2478 = call fastcc ptr @xmalloc(i64 noundef 40) #31
  %2479 = load ptr, ptr %75, align 8, !tbaa !7
  store ptr %2479, ptr %2478, align 8, !tbaa !158
  store ptr %2478, ptr %75, align 8, !tbaa !7
  %2480 = getelementptr inbounds %struct._edit_script_list, ptr %2478, i64 0, i32 1
  store ptr %2464, ptr %2480, align 8, !tbaa !160
  %2481 = load i32, ptr %2460, align 4, !tbaa !94
  %2482 = getelementptr inbounds %struct._edit_script_list, ptr %2478, i64 0, i32 2
  store i32 %2481, ptr %2482, align 8, !tbaa !161
  %2483 = load i32, ptr %2466, align 4, !tbaa !92
  %2484 = getelementptr inbounds %struct._edit_script_list, ptr %2478, i64 0, i32 3
  store i32 %2483, ptr %2484, align 4, !tbaa !162
  %2485 = add i32 %2461, 1
  %2486 = sub i32 %2485, %2481
  %2487 = getelementptr inbounds %struct._edit_script_list, ptr %2478, i64 0, i32 4
  store i32 %2486, ptr %2487, align 8, !tbaa !163
  %2488 = add i32 %2462, 1
  %2489 = sub i32 %2488, %2483
  %2490 = getelementptr inbounds %struct._edit_script_list, ptr %2478, i64 0, i32 5
  store i32 %2489, ptr %2490, align 4, !tbaa !164
  %2491 = getelementptr inbounds %struct._edit_script_list, ptr %2478, i64 0, i32 6
  store i32 %2463, ptr %2491, align 8, !tbaa !165
  %2492 = load i32, ptr %2471, align 4, !tbaa !98
  br label %2493

2493:                                             ; preds = %2477, %2475
  %2494 = phi i32 [ %2492, %2477 ], [ %2472, %2475 ]
  %2495 = phi ptr [ null, %2477 ], [ %2464, %2475 ]
  %2496 = phi i32 [ 0, %2477 ], [ %2463, %2475 ]
  %2497 = getelementptr inbounds %struct._exon_t, ptr %2469, i64 0, i32 2
  %2498 = load i32, ptr %2497, align 4, !tbaa !97
  br label %2513

2499:                                             ; preds = %2455
  %2500 = getelementptr inbounds %struct._exon_t, ptr %2469, i64 0, i32 2
  %2501 = load i32, ptr %2500, align 4, !tbaa !97
  %2502 = xor i32 %2501, -1
  %2503 = add i32 %2456, %2502
  %2504 = icmp eq i32 %2503, 0
  br i1 %2504, label %2513, label %2505

2505:                                             ; preds = %2499
  %2506 = icmp eq i32 %2459, 0
  br i1 %2506, label %2513, label %2507

2507:                                             ; preds = %2505
  %2508 = call fastcc ptr @xmalloc(i64 noundef 16) #31
  %2509 = getelementptr inbounds %struct._edit_script, ptr %2508, i64 0, i32 2
  store i8 1, ptr %2509, align 4, !tbaa !166
  %2510 = getelementptr inbounds %struct._edit_script, ptr %2508, i64 0, i32 1
  store i32 %2503, ptr %2510, align 8, !tbaa !168
  store ptr %2464, ptr %2508, align 8, !tbaa !169
  %2511 = load i32, ptr %2500, align 4, !tbaa !97
  %2512 = load i32, ptr %2471, align 4, !tbaa !98
  br label %2513

2513:                                             ; preds = %2507, %2505, %2499, %2493
  %2514 = phi i32 [ %2494, %2493 ], [ %2512, %2507 ], [ %2472, %2499 ], [ %2472, %2505 ]
  %2515 = phi i32 [ %2498, %2493 ], [ %2511, %2507 ], [ %2501, %2499 ], [ %2501, %2505 ]
  %2516 = phi ptr [ %2495, %2493 ], [ %2508, %2507 ], [ %2464, %2499 ], [ %2464, %2505 ]
  %2517 = phi i32 [ %2496, %2493 ], [ %2463, %2507 ], [ %2463, %2499 ], [ %2463, %2505 ]
  %2518 = phi i32 [ %2494, %2493 ], [ %2462, %2507 ], [ %2462, %2499 ], [ %2462, %2505 ]
  %2519 = phi i32 [ %2498, %2493 ], [ %2461, %2507 ], [ %2461, %2499 ], [ %2501, %2505 ]
  %2520 = load i32, ptr %2469, align 4, !tbaa !94
  %2521 = add i32 %2520, -1
  %2522 = load i32, ptr %2470, align 4, !tbaa !92
  %2523 = add i32 %2522, -1
  %2524 = getelementptr inbounds %struct._exon_t, ptr %2469, i64 0, i32 2
  %2525 = add i32 %2514, 1
  %2526 = sub i32 %2525, %2522
  %2527 = uitofp i32 %2526 to double
  %2528 = fmul double %2527, 2.000000e-01
  %2529 = fcmp ogt double %2528, 1.000000e+03
  %2530 = select i1 %2529, double %2528, double 1.000000e+03
  %2531 = fptosi double %2530 to i32
  %2532 = sub nsw i32 %2523, %2521
  %2533 = sub i32 %2523, %2515
  %2534 = sub i32 %2532, %2531
  %2535 = call i32 @llvm.smax.i32(i32 %2533, i32 %2534)
  %2536 = sub i32 %2514, %2521
  %2537 = add i32 %2532, %2531
  %2538 = call i32 @llvm.smin.i32(i32 %2536, i32 %2537)
  %2539 = sub nsw i32 %2514, %2515
  %2540 = icmp sgt i32 %2539, %2538
  %2541 = icmp slt i32 %2539, %2535
  %2542 = select i1 %2540, i1 true, i1 %2541
  br i1 %2542, label %2889, label %2543

2543:                                             ; preds = %2513
  %2544 = sub i32 %2538, %2535
  %2545 = add i32 %2544, 1
  %2546 = sext i32 %2545 to i64
  %2547 = shl nsw i64 %2546, 2
  %2548 = call fastcc ptr @xmalloc(i64 noundef %2547) #31
  %2549 = sext i32 %2535 to i64
  %2550 = sub nsw i64 0, %2549
  %2551 = getelementptr inbounds i32, ptr %2548, i64 %2550
  %2552 = call fastcc ptr @xmalloc(i64 noundef %2547) #31
  %2553 = add i32 %2538, 1
  br label %2554

2554:                                             ; preds = %2554, %2543
  %2555 = phi i64 [ %2549, %2543 ], [ %2557, %2554 ]
  %2556 = getelementptr inbounds i32, ptr %2551, i64 %2555
  store i32 -2147483648, ptr %2556, align 4, !tbaa !11
  %2557 = add nsw i64 %2555, 1
  %2558 = trunc i64 %2557 to i32
  %2559 = icmp eq i32 %2553, %2558
  br i1 %2559, label %2560, label %2554, !llvm.loop !170

2560:                                             ; preds = %2554
  %2561 = getelementptr inbounds i32, ptr %2552, i64 %2550
  %2562 = icmp slt i32 %2521, 0
  br i1 %2562, label %2589, label %2563

2563:                                             ; preds = %2560
  %2564 = icmp slt i32 %2521, %2515
  %2565 = icmp slt i32 %2523, %2514
  %2566 = and i1 %2564, %2565
  br i1 %2566, label %2567, label %2589

2567:                                             ; preds = %2563
  %2568 = sext i32 %2523 to i64
  %2569 = sext i32 %2514 to i64
  %2570 = zext i32 %2521 to i64
  %2571 = zext i32 %2515 to i64
  br label %2572

2572:                                             ; preds = %2580, %2567
  %2573 = phi i64 [ %2570, %2567 ], [ %2581, %2580 ]
  %2574 = phi i64 [ %2568, %2567 ], [ %2582, %2580 ]
  %2575 = getelementptr inbounds i8, ptr %2443, i64 %2573
  %2576 = load i8, ptr %2575, align 1, !tbaa !27
  %2577 = getelementptr inbounds i8, ptr %2444, i64 %2574
  %2578 = load i8, ptr %2577, align 1, !tbaa !27
  %2579 = icmp eq i8 %2576, %2578
  br i1 %2579, label %2580, label %2586

2580:                                             ; preds = %2572
  %2581 = add nuw nsw i64 %2573, 1
  %2582 = add nsw i64 %2574, 1
  %2583 = icmp ult i64 %2581, %2571
  %2584 = icmp slt i64 %2582, %2569
  %2585 = select i1 %2583, i1 %2584, i1 false
  br i1 %2585, label %2572, label %2586, !llvm.loop !171

2586:                                             ; preds = %2580, %2572
  %2587 = phi i64 [ %2573, %2572 ], [ %2581, %2580 ]
  %2588 = trunc i64 %2587 to i32
  br label %2589

2589:                                             ; preds = %2586, %2563, %2560
  %2590 = phi i32 [ %2521, %2560 ], [ %2521, %2563 ], [ %2588, %2586 ]
  %2591 = sext i32 %2532 to i64
  %2592 = getelementptr inbounds i32, ptr %2551, i64 %2591
  store i32 %2590, ptr %2592, align 4, !tbaa !11
  %2593 = sext i32 %2539 to i64
  %2594 = getelementptr inbounds i32, ptr %2551, i64 %2593
  %2595 = load i32, ptr %2594, align 4, !tbaa !11
  %2596 = icmp slt i32 %2595, %2515
  br i1 %2596, label %2597, label %2718

2597:                                             ; preds = %2589
  %2598 = icmp slt i32 %2531, 1
  br i1 %2598, label %2889, label %2599

2599:                                             ; preds = %2597
  %2600 = sext i32 %2514 to i64
  %2601 = sext i32 %2515 to i64
  %2602 = sub i32 %2523, %2520
  %2603 = mul nsw i64 %2549, -4
  %2604 = getelementptr i8, ptr %2548, i64 %2603
  %2605 = getelementptr i8, ptr %2552, i64 %2603
  %2606 = sub i32 %2522, %2520
  %2607 = add i32 %2606, 1
  br label %2608

2608:                                             ; preds = %2713, %2599
  %2609 = phi i32 [ %2711, %2713 ], [ %2595, %2599 ]
  %2610 = phi i32 [ %2717, %2713 ], [ 0, %2599 ]
  %2611 = phi i32 [ %2715, %2713 ], [ %2602, %2599 ]
  %2612 = phi i32 [ %2714, %2713 ], [ 1, %2599 ]
  %2613 = call i32 @llvm.smax.i32(i32 %2611, i32 %2534)
  %2614 = call i32 @llvm.smax.i32(i32 %2613, i32 %2533)
  %2615 = sext i32 %2614 to i64
  %2616 = shl nsw i64 %2615, 2
  %2617 = getelementptr i8, ptr %2604, i64 %2616
  %2618 = getelementptr i8, ptr %2605, i64 %2616
  %2619 = add i32 %2607, %2610
  %2620 = call i32 @llvm.smin.i32(i32 %2619, i32 %2537)
  %2621 = call i32 @llvm.smin.i32(i32 %2620, i32 %2536)
  %2622 = call i32 @llvm.smax.i32(i32 %2621, i32 %2611)
  %2623 = call i32 @llvm.smax.i32(i32 %2622, i32 %2534)
  %2624 = call i32 @llvm.smax.i32(i32 %2623, i32 %2533)
  %2625 = sext i32 %2624 to i64
  %2626 = sub nsw i64 %2625, %2615
  %2627 = shl nsw i64 %2626, 2
  %2628 = add nsw i64 %2627, 4
  %2629 = sub nsw i32 %2532, %2612
  %2630 = call i32 @llvm.smax.i32(i32 %2535, i32 %2629)
  %2631 = add nsw i32 %2612, %2532
  %2632 = call i32 @llvm.smin.i32(i32 %2538, i32 %2631)
  %2633 = icmp sgt i32 %2630, %2632
  br i1 %2633, label %2710, label %2634

2634:                                             ; preds = %2608
  %2635 = sext i32 %2632 to i64
  br label %2636

2636:                                             ; preds = %2703, %2634
  %2637 = phi i64 [ %2615, %2634 ], [ %2706, %2703 ]
  %2638 = trunc i64 %2637 to i32
  %2639 = icmp eq i32 %2630, %2638
  br i1 %2639, label %2640, label %2645

2640:                                             ; preds = %2636
  %2641 = add nsw i64 %2637, 1
  %2642 = getelementptr inbounds i32, ptr %2551, i64 %2641
  %2643 = load i32, ptr %2642, align 4, !tbaa !11
  %2644 = add nsw i32 %2643, 1
  br label %2675

2645:                                             ; preds = %2636
  %2646 = icmp eq i32 %2632, %2638
  br i1 %2646, label %2647, label %2651

2647:                                             ; preds = %2645
  %2648 = add nsw i64 %2637, -1
  %2649 = getelementptr inbounds i32, ptr %2551, i64 %2648
  %2650 = load i32, ptr %2649, align 4, !tbaa !11
  br label %2675

2651:                                             ; preds = %2645
  %2652 = getelementptr inbounds i32, ptr %2551, i64 %2637
  %2653 = load i32, ptr %2652, align 4, !tbaa !11
  %2654 = add nsw i64 %2637, 1
  %2655 = getelementptr inbounds i32, ptr %2551, i64 %2654
  %2656 = load i32, ptr %2655, align 4, !tbaa !11
  %2657 = icmp slt i32 %2653, %2656
  br i1 %2657, label %2658, label %2662

2658:                                             ; preds = %2651
  %2659 = add nsw i64 %2637, -1
  %2660 = getelementptr inbounds i32, ptr %2551, i64 %2659
  %2661 = load i32, ptr %2660, align 4, !tbaa !11
  br label %2668

2662:                                             ; preds = %2651
  %2663 = add nsw i32 %2653, 1
  %2664 = add nsw i64 %2637, -1
  %2665 = getelementptr inbounds i32, ptr %2551, i64 %2664
  %2666 = load i32, ptr %2665, align 4, !tbaa !11
  %2667 = icmp slt i32 %2663, %2666
  br i1 %2667, label %2668, label %2675

2668:                                             ; preds = %2662, %2658
  %2669 = phi i32 [ %2661, %2658 ], [ %2666, %2662 ]
  %2670 = add nsw i32 %2656, 1
  %2671 = icmp slt i32 %2670, %2669
  %2672 = icmp slt i32 %2656, %2653
  %2673 = or i1 %2672, %2671
  %2674 = select i1 %2673, i32 %2669, i32 %2670
  br label %2675

2675:                                             ; preds = %2668, %2662, %2647, %2640
  %2676 = phi i32 [ %2644, %2640 ], [ %2650, %2647 ], [ %2663, %2662 ], [ %2674, %2668 ]
  %2677 = icmp slt i32 %2676, 0
  br i1 %2677, label %2703, label %2678

2678:                                             ; preds = %2675
  %2679 = add i32 %2676, %2638
  %2680 = icmp slt i32 %2676, %2515
  %2681 = icmp slt i32 %2679, %2514
  %2682 = and i1 %2680, %2681
  br i1 %2682, label %2683, label %2703

2683:                                             ; preds = %2678
  %2684 = sext i32 %2679 to i64
  %2685 = zext i32 %2676 to i64
  br label %2686

2686:                                             ; preds = %2694, %2683
  %2687 = phi i64 [ %2685, %2683 ], [ %2695, %2694 ]
  %2688 = phi i64 [ %2684, %2683 ], [ %2696, %2694 ]
  %2689 = getelementptr inbounds i8, ptr %2443, i64 %2687
  %2690 = load i8, ptr %2689, align 1, !tbaa !27
  %2691 = getelementptr inbounds i8, ptr %2444, i64 %2688
  %2692 = load i8, ptr %2691, align 1, !tbaa !27
  %2693 = icmp eq i8 %2690, %2692
  br i1 %2693, label %2694, label %2700

2694:                                             ; preds = %2686
  %2695 = add nuw nsw i64 %2687, 1
  %2696 = add nsw i64 %2688, 1
  %2697 = icmp slt i64 %2695, %2601
  %2698 = icmp slt i64 %2696, %2600
  %2699 = select i1 %2697, i1 %2698, i1 false
  br i1 %2699, label %2686, label %2700, !llvm.loop !171

2700:                                             ; preds = %2694, %2686
  %2701 = phi i64 [ %2687, %2686 ], [ %2695, %2694 ]
  %2702 = trunc i64 %2701 to i32
  br label %2703

2703:                                             ; preds = %2700, %2678, %2675
  %2704 = phi i32 [ %2676, %2675 ], [ %2676, %2678 ], [ %2702, %2700 ]
  %2705 = getelementptr inbounds i32, ptr %2561, i64 %2637
  store i32 %2704, ptr %2705, align 4, !tbaa !11
  %2706 = add nsw i64 %2637, 1
  %2707 = icmp slt i64 %2637, %2635
  br i1 %2707, label %2636, label %2708, !llvm.loop !172

2708:                                             ; preds = %2703
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %2617, ptr align 4 %2618, i64 %2628, i1 false), !tbaa !11
  %2709 = load i32, ptr %2594, align 4, !tbaa !11
  br label %2710

2710:                                             ; preds = %2708, %2608
  %2711 = phi i32 [ %2709, %2708 ], [ %2609, %2608 ]
  %2712 = icmp slt i32 %2711, %2515
  br i1 %2712, label %2713, label %2718

2713:                                             ; preds = %2710
  %2714 = add nuw i32 %2612, 1
  %2715 = add i32 %2611, -1
  %2716 = icmp eq i32 %2612, %2531
  %2717 = add nuw nsw i32 %2610, 1
  br i1 %2716, label %2889, label %2608, !llvm.loop !173

2718:                                             ; preds = %2710, %2589
  %2719 = phi i32 [ 0, %2589 ], [ %2612, %2710 ]
  call void @free(ptr noundef nonnull %2548) #31
  call void @free(ptr noundef %2552) #31
  %2720 = load i32, ptr %2469, align 4, !tbaa !94
  %2721 = add i32 %2720, -1
  %2722 = load i32, ptr %2470, align 4, !tbaa !92
  %2723 = add i32 %2722, -1
  %2724 = load i32, ptr %2524, align 4, !tbaa !97
  %2725 = load i32, ptr %2471, align 4, !tbaa !98
  call fastcc void @align_path(ptr noundef %2443, ptr noundef %2444, i32 noundef %2721, i32 noundef %2723, i32 noundef %2724, i32 noundef %2725, i32 noundef %2719, ptr noundef nonnull %5, ptr noundef nonnull %6, i32 noundef %2445, i32 noundef %2446) #31
  %2726 = load ptr, ptr %6, align 8, !tbaa !7
  %2727 = icmp eq ptr %2726, null
  br i1 %2727, label %2889, label %2728

2728:                                             ; preds = %2718
  %2729 = load ptr, ptr %5, align 8
  %2730 = icmp eq ptr %2729, null
  br i1 %2730, label %2760, label %2731

2731:                                             ; preds = %2728
  %2732 = load ptr, ptr %2729, align 8, !tbaa !169
  %2733 = icmp eq ptr %2732, null
  br i1 %2733, label %2757, label %2737

2734:                                             ; preds = %2743
  %.lcssa62 = phi ptr [ %2744, %2743 ]
  %2735 = load ptr, ptr %.lcssa62, align 8, !tbaa !169
  %2736 = icmp eq ptr %2735, null
  br i1 %2736, label %2757, label %2737, !llvm.loop !174

2737:                                             ; preds = %2734, %2731
  %2738 = phi ptr [ %2735, %2734 ], [ %2732, %2731 ]
  %2739 = phi ptr [ %.lcssa62, %2734 ], [ %2729, %2731 ]
  %2740 = phi ptr [ %2739, %2734 ], [ null, %2731 ]
  %2741 = getelementptr inbounds %struct._edit_script, ptr %2739, i64 0, i32 2
  %2742 = getelementptr inbounds %struct._edit_script, ptr %2739, i64 0, i32 1
  br label %2743

2743:                                             ; preds = %2749, %2737
  %2744 = phi ptr [ %2738, %2737 ], [ %2755, %2749 ]
  %2745 = load i8, ptr %2741, align 4, !tbaa !166
  %2746 = getelementptr inbounds %struct._edit_script, ptr %2744, i64 0, i32 2
  %2747 = load i8, ptr %2746, align 4, !tbaa !166
  %2748 = icmp eq i8 %2745, %2747
  br i1 %2748, label %2749, label %2734

2749:                                             ; preds = %2743
  %2750 = load i32, ptr %2742, align 8, !tbaa !168
  %2751 = getelementptr inbounds %struct._edit_script, ptr %2744, i64 0, i32 1
  %2752 = load i32, ptr %2751, align 8, !tbaa !168
  %2753 = add nsw i32 %2752, %2750
  store i32 %2753, ptr %2742, align 8, !tbaa !168
  %2754 = load ptr, ptr %2744, align 8, !tbaa !169
  store ptr %2754, ptr %2739, align 8, !tbaa !169
  call void @free(ptr noundef nonnull %2744) #31
  %2755 = load ptr, ptr %2739, align 8, !tbaa !169
  %2756 = icmp eq ptr %2755, null
  br i1 %2756, label %2757, label %2743, !llvm.loop !175

2757:                                             ; preds = %2749, %2734, %2731
  %2758 = phi ptr [ null, %2731 ], [ %2740, %2749 ], [ %2739, %2734 ]
  %2759 = phi ptr [ %2729, %2731 ], [ %2739, %2749 ], [ %.lcssa62, %2734 ]
  store ptr %2759, ptr %6, align 8, !tbaa !7
  br label %2760

2760:                                             ; preds = %2757, %2728
  %2761 = phi ptr [ null, %2728 ], [ %2758, %2757 ]
  %2762 = getelementptr inbounds %struct._exon_t, ptr %2460, i64 0, i32 2
  %2763 = load i32, ptr %2762, align 4, !tbaa !97
  %2764 = icmp eq i32 %2763, 0
  br i1 %2764, label %2765, label %2787

2765:                                             ; preds = %2760
  %2766 = load ptr, ptr %6, align 8, !tbaa !7
  %2767 = getelementptr inbounds %struct._edit_script, ptr %2766, i64 0, i32 2
  %2768 = load i8, ptr %2767, align 4, !tbaa !166
  %2769 = icmp eq i8 %2768, 1
  br i1 %2769, label %2770, label %2787

2770:                                             ; preds = %2765
  %2771 = getelementptr inbounds %struct._edit_script, ptr %2766, i64 0, i32 1
  %2772 = load i32, ptr %2771, align 8, !tbaa !168
  %2773 = sub nsw i32 %2719, %2772
  %2774 = load i32, ptr %2524, align 4, !tbaa !97
  %2775 = sub i32 %2774, %2772
  store i32 %2775, ptr %2524, align 4, !tbaa !97
  %2776 = sub nsw i32 %2519, %2772
  %2777 = icmp eq ptr %2516, null
  br i1 %2777, label %2786, label %2778

2778:                                             ; preds = %2770
  %2779 = getelementptr inbounds %struct._edit_script, ptr %2516, i64 0, i32 2
  %2780 = load i8, ptr %2779, align 4, !tbaa !166
  %2781 = icmp eq i8 %2780, 1
  br i1 %2781, label %2782, label %2786

2782:                                             ; preds = %2778
  %2783 = getelementptr inbounds %struct._edit_script, ptr %2516, i64 0, i32 1
  %2784 = load i32, ptr %2783, align 8, !tbaa !168
  %2785 = add nsw i32 %2784, %2772
  store i32 %2785, ptr %2783, align 8, !tbaa !168
  br label %2786

2786:                                             ; preds = %2782, %2778, %2770
  call void @free(ptr noundef nonnull %2766) #31
  store ptr null, ptr %2761, align 8, !tbaa !169
  store ptr %2761, ptr %6, align 8, !tbaa !7
  br label %2787

2787:                                             ; preds = %2786, %2765, %2760
  %2788 = phi i32 [ %2519, %2760 ], [ %2776, %2786 ], [ %2519, %2765 ]
  %2789 = phi i32 [ %2719, %2760 ], [ %2773, %2786 ], [ %2719, %2765 ]
  %2790 = icmp eq i64 %2458, 0
  %2791 = icmp ne ptr %2729, null
  %2792 = and i1 %2790, %2791
  br i1 %2792, label %2793, label %2811

2793:                                             ; preds = %2787
  %2794 = getelementptr inbounds %struct._edit_script, ptr %2729, i64 0, i32 2
  %2795 = load i8, ptr %2794, align 4, !tbaa !166
  %2796 = icmp eq i8 %2795, 1
  br i1 %2796, label %2801, label %2797

2797:                                             ; preds = %2793
  %2798 = add nsw i32 %2789, %2517
  %2799 = load i32, ptr %2469, align 4, !tbaa !94
  %2800 = load i32, ptr %2470, align 4, !tbaa !92
  br label %2818

2801:                                             ; preds = %2793
  %2802 = getelementptr inbounds %struct._edit_script, ptr %2729, i64 0, i32 1
  %2803 = load i32, ptr %2802, align 8, !tbaa !168
  %2804 = sub nsw i32 %2789, %2803
  %2805 = load i32, ptr %2469, align 4, !tbaa !94
  %2806 = add i32 %2805, %2803
  store i32 %2806, ptr %2469, align 4, !tbaa !94
  %2807 = load ptr, ptr %2729, align 8, !tbaa !169
  %2808 = load ptr, ptr %6, align 8, !tbaa !7
  %2809 = icmp eq ptr %2808, %2729
  %2810 = select i1 %2809, ptr %2807, ptr %2808
  store ptr %2810, ptr %6, align 8
  call void @free(ptr noundef nonnull %2729) #31
  store ptr %2807, ptr %5, align 8, !tbaa !7
  br label %2811

2811:                                             ; preds = %2801, %2787
  %2812 = phi ptr [ %2807, %2801 ], [ %2729, %2787 ]
  %2813 = phi i32 [ %2804, %2801 ], [ %2789, %2787 ]
  %2814 = add nsw i32 %2813, %2517
  %2815 = load i32, ptr %2469, align 4, !tbaa !94
  %2816 = load i32, ptr %2470, align 4, !tbaa !92
  %2817 = icmp eq ptr %2812, null
  br i1 %2817, label %2890, label %2818

2818:                                             ; preds = %2811, %2797
  %2819 = phi i32 [ %2800, %2797 ], [ %2816, %2811 ]
  %2820 = phi i32 [ %2799, %2797 ], [ %2815, %2811 ]
  %2821 = phi i32 [ %2798, %2797 ], [ %2814, %2811 ]
  %2822 = phi ptr [ %2729, %2797 ], [ %2812, %2811 ]
  %2823 = zext i32 %2819 to i64
  %2824 = getelementptr i8, ptr %2450, i64 %2823
  %2825 = zext i32 %2820 to i64
  %2826 = getelementptr i8, ptr %2449, i64 %2825
  br label %2827

2827:                                             ; preds = %2881, %2818
  %2828 = phi ptr [ %2887, %2881 ], [ %2822, %2818 ]
  %2829 = phi i32 [ %2886, %2881 ], [ 0, %2818 ]
  %2830 = phi i32 [ %2885, %2881 ], [ 0, %2818 ]
  %2831 = phi ptr [ %2884, %2881 ], [ %2824, %2818 ]
  %2832 = phi ptr [ %2883, %2881 ], [ %2826, %2818 ]
  %2833 = phi i32 [ %2882, %2881 ], [ %2465, %2818 ]
  %2834 = getelementptr inbounds %struct._edit_script, ptr %2828, i64 0, i32 2
  %2835 = load i8, ptr %2834, align 4, !tbaa !166
  %2836 = sext i8 %2835 to i32
  switch i32 %2836, label %2881 [
    i32 1, label %2843
    i32 2, label %2850
    i32 3, label %2837
  ]

2837:                                             ; preds = %2827
  %2838 = getelementptr inbounds %struct._edit_script, ptr %2828, i64 0, i32 1
  %2839 = load i32, ptr %2838, align 8, !tbaa !168
  %2840 = icmp sgt i32 %2839, 0
  br i1 %2840, label %2841, label %2881

2841:                                             ; preds = %2837
  %2842 = add nsw i32 %2839, -1
  br label %2857

2843:                                             ; preds = %2827
  %2844 = getelementptr inbounds %struct._edit_script, ptr %2828, i64 0, i32 1
  %2845 = load i32, ptr %2844, align 8, !tbaa !168
  %2846 = add nsw i32 %2845, %2829
  %2847 = add nsw i32 %2845, %2830
  %2848 = sext i32 %2845 to i64
  %2849 = getelementptr inbounds i8, ptr %2832, i64 %2848
  br label %2881

2850:                                             ; preds = %2827
  %2851 = getelementptr inbounds %struct._edit_script, ptr %2828, i64 0, i32 1
  %2852 = load i32, ptr %2851, align 8, !tbaa !168
  %2853 = add nsw i32 %2852, %2829
  %2854 = add nsw i32 %2852, %2830
  %2855 = sext i32 %2852 to i64
  %2856 = getelementptr inbounds i8, ptr %2831, i64 %2855
  br label %2881

2857:                                             ; preds = %2857, %2841
  %2858 = phi i32 [ %2871, %2857 ], [ 0, %2841 ]
  %2859 = phi i32 [ %2870, %2857 ], [ %2830, %2841 ]
  %2860 = phi ptr [ %2873, %2857 ], [ %2831, %2841 ]
  %2861 = phi ptr [ %2872, %2857 ], [ %2832, %2841 ]
  %2862 = phi i32 [ %2867, %2857 ], [ %2833, %2841 ]
  %2863 = load i8, ptr %2861, align 1, !tbaa !27
  %2864 = load i8, ptr %2860, align 1, !tbaa !27
  %2865 = icmp eq i8 %2863, %2864
  %2866 = zext i1 %2865 to i32
  %2867 = add i32 %2862, %2866
  %2868 = xor i1 %2865, true
  %2869 = zext i1 %2868 to i32
  %2870 = add nsw i32 %2859, %2869
  %2871 = add nuw nsw i32 %2858, 1
  %2872 = getelementptr inbounds i8, ptr %2861, i64 1
  %2873 = getelementptr inbounds i8, ptr %2860, i64 1
  %2874 = icmp eq i32 %2871, %2839
  br i1 %2874, label %2875, label %2857, !llvm.loop !176

2875:                                             ; preds = %2857
  %.lcssa64 = phi i32 [ %2867, %2857 ]
  %.lcssa63 = phi i32 [ %2870, %2857 ]
  %2876 = zext i32 %2842 to i64
  %2877 = getelementptr i8, ptr %2831, i64 1
  %2878 = getelementptr i8, ptr %2832, i64 1
  %2879 = getelementptr i8, ptr %2878, i64 %2876
  %2880 = getelementptr i8, ptr %2877, i64 %2876
  br label %2881

2881:                                             ; preds = %2875, %2850, %2843, %2837, %2827
  %2882 = phi i32 [ %2833, %2827 ], [ %2833, %2850 ], [ %2833, %2843 ], [ %2833, %2837 ], [ %.lcssa64, %2875 ]
  %2883 = phi ptr [ %2832, %2827 ], [ %2832, %2850 ], [ %2849, %2843 ], [ %2832, %2837 ], [ %2879, %2875 ]
  %2884 = phi ptr [ %2831, %2827 ], [ %2856, %2850 ], [ %2831, %2843 ], [ %2831, %2837 ], [ %2880, %2875 ]
  %2885 = phi i32 [ %2830, %2827 ], [ %2854, %2850 ], [ %2847, %2843 ], [ %2830, %2837 ], [ %.lcssa63, %2875 ]
  %2886 = phi i32 [ %2829, %2827 ], [ %2853, %2850 ], [ %2846, %2843 ], [ %2829, %2837 ], [ %2829, %2875 ]
  %2887 = load ptr, ptr %2828, align 8, !tbaa !7
  %2888 = icmp eq ptr %2887, null
  br i1 %2888, label %2890, label %2827, !llvm.loop !177

2889:                                             ; preds = %2718, %2713, %2597, %2513
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #30
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #30
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #30
  br label %2952

2890:                                             ; preds = %2881, %2811
  %2891 = phi i32 [ %2816, %2811 ], [ %2819, %2881 ]
  %2892 = phi i32 [ %2815, %2811 ], [ %2820, %2881 ]
  %2893 = phi i32 [ %2814, %2811 ], [ %2821, %2881 ]
  %2894 = phi i32 [ %2465, %2811 ], [ %2882, %2881 ]
  %2895 = phi i32 [ 0, %2811 ], [ %2885, %2881 ]
  %2896 = phi i32 [ 0, %2811 ], [ %2886, %2881 ]
  %2897 = load i32, ptr %2524, align 4, !tbaa !97
  %2898 = load i32, ptr %2471, align 4, !tbaa !98
  %2899 = add i32 %2891, %2892
  %2900 = sub i32 %2896, %2899
  %2901 = add i32 %2900, 2
  %2902 = add i32 %2901, %2897
  %2903 = add i32 %2902, %2898
  %2904 = uitofp i32 %2903 to double
  %2905 = fmul double %2904, 5.000000e-01
  %2906 = fptosi double %2905 to i32
  %2907 = sub nsw i32 %2906, %2895
  %2908 = mul nsw i32 %2907, 100
  %2909 = sdiv i32 %2908, %2906
  %2910 = getelementptr inbounds %struct._exon_t, ptr %2469, i64 0, i32 4
  store i32 %2909, ptr %2910, align 4, !tbaa !178
  %2911 = load ptr, ptr %6, align 8, !tbaa !7
  store ptr %2516, ptr %2911, align 8, !tbaa !169
  %2912 = load ptr, ptr %5, align 8, !tbaa !7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #30
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #30
  %2913 = add nsw i64 %2458, -1
  %2914 = icmp sgt i64 %2458, 0
  br i1 %2914, label %2455, label %2915, !llvm.loop !179

2915:                                             ; preds = %2890
  %.lcssa75 = phi i32 [ %2518, %2890 ]
  %.lcssa73 = phi ptr [ %2469, %2890 ]
  %.lcssa71 = phi ptr [ %2470, %2890 ]
  %.lcssa69 = phi i32 [ %2891, %2890 ]
  %.lcssa68 = phi i32 [ %2893, %2890 ]
  %.lcssa67 = phi i32 [ %2894, %2890 ]
  %.lcssa66 = phi ptr [ %2912, %2890 ]
  %.lcssa65 = phi i32 [ %2788, %2890 ]
  %2916 = add i32 %.lcssa69, -1
  %2917 = icmp eq i32 %2916, 0
  %2918 = icmp eq i32 %2916, %2446
  %2919 = or i1 %2917, %2918
  br i1 %2919, label %2932, label %2920

2920:                                             ; preds = %2915
  %2921 = call fastcc ptr @xmalloc(i64 noundef 40) #31
  %2922 = load ptr, ptr %75, align 8, !tbaa !7
  store ptr %2922, ptr %2921, align 8, !tbaa !158
  store ptr %2921, ptr %75, align 8, !tbaa !7
  %2923 = load i32, ptr %.lcssa73, align 4, !tbaa !94
  %2924 = getelementptr inbounds %struct._edit_script_list, ptr %2921, i64 0, i32 2
  store i32 %2923, ptr %2924, align 8, !tbaa !161
  %2925 = load i32, ptr %.lcssa71, align 4, !tbaa !92
  %2926 = getelementptr inbounds %struct._edit_script_list, ptr %2921, i64 0, i32 3
  store i32 %2925, ptr %2926, align 4, !tbaa !162
  %2927 = add i32 %.lcssa65, 1
  %2928 = sub i32 %2927, %2923
  %2929 = getelementptr inbounds %struct._edit_script_list, ptr %2921, i64 0, i32 4
  store i32 %2928, ptr %2929, align 8, !tbaa !163
  %2930 = add i32 %.lcssa75, 1
  %2931 = sub i32 %2930, %2925
  br label %2942

2932:                                             ; preds = %2915
  br i1 %2918, label %2948, label %2933

2933:                                             ; preds = %2932
  %2934 = call fastcc ptr @xmalloc(i64 noundef 40) #31
  %2935 = load ptr, ptr %75, align 8, !tbaa !7
  store ptr %2935, ptr %2934, align 8, !tbaa !158
  store ptr %2934, ptr %75, align 8, !tbaa !7
  %2936 = load i32, ptr %.lcssa73, align 4, !tbaa !94
  %2937 = getelementptr inbounds %struct._edit_script_list, ptr %2934, i64 0, i32 2
  store i32 %2936, ptr %2937, align 8, !tbaa !161
  %2938 = getelementptr inbounds %struct._edit_script_list, ptr %2934, i64 0, i32 3
  store i32 1, ptr %2938, align 4, !tbaa !162
  %2939 = add i32 %.lcssa65, 1
  %2940 = sub i32 %2939, %2936
  %2941 = getelementptr inbounds %struct._edit_script_list, ptr %2934, i64 0, i32 4
  store i32 %2940, ptr %2941, align 8, !tbaa !163
  br label %2942

2942:                                             ; preds = %2933, %2920
  %2943 = phi ptr [ %2934, %2933 ], [ %2921, %2920 ]
  %2944 = phi i32 [ %.lcssa75, %2933 ], [ %2931, %2920 ]
  %2945 = getelementptr inbounds %struct._edit_script_list, ptr %2943, i64 0, i32 5
  store i32 %2944, ptr %2945, align 4, !tbaa !164
  %2946 = getelementptr inbounds %struct._edit_script_list, ptr %2943, i64 0, i32 1
  store ptr %.lcssa66, ptr %2946, align 8, !tbaa !160
  %2947 = getelementptr inbounds %struct._edit_script_list, ptr %2943, i64 0, i32 6
  store i32 %.lcssa68, ptr %2947, align 8, !tbaa !165
  br label %2948

2948:                                             ; preds = %2942, %2932, %2441
  %2949 = phi i32 [ %.lcssa67, %2932 ], [ 0, %2441 ], [ %.lcssa67, %2942 ]
  store i32 %2949, ptr %77, align 4, !tbaa !11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #30
  %2950 = load i32, ptr getelementptr inbounds (%struct._options_t, ptr @options, i64 0, i32 3), align 4
  %2951 = icmp eq i32 %2950, 0
  br i1 %2951, label %2952, label %2954

2952:                                             ; preds = %2948, %2889
  %2953 = load ptr, ptr %75, align 8, !tbaa !180
  call fastcc void @free_align(ptr noundef %2953) #35
  store ptr null, ptr %75, align 8, !tbaa !180
  br label %2954

2954:                                             ; preds = %2952, %2948, %704, %213, %71
  %2955 = add nuw nsw i64 %72, 1
  %2956 = load i32, ptr %32, align 8, !tbaa !52
  %2957 = zext i32 %2956 to i64
  %2958 = icmp ult i64 %2955, %2957
  br i1 %2958, label %71, label %2959, !llvm.loop !181

2959:                                             ; preds = %2954, %22
  %2960 = load ptr, ptr %10, align 8, !tbaa !27
  call void @free(ptr noundef %2960) #31
  %2961 = load ptr, ptr %11, align 8, !tbaa !27
  call void @free(ptr noundef %2961) #31
  br label %2962

2962:                                             ; preds = %2959, %18, %3
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #30
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #30
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @print_res(ptr nocapture noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) unnamed_addr #0 {
  %5 = alloca [51 x i8], align 16
  %6 = alloca [51 x i8], align 16
  %7 = getelementptr inbounds %struct._result_t, ptr %0, i64 0, i32 5
  %8 = load i32, ptr %7, align 4, !tbaa !57
  %9 = load i32, ptr getelementptr inbounds (%struct._options_t, ptr @options, i64 0, i32 17), align 4, !tbaa !20
  %10 = icmp ult i32 %8, %9
  br i1 %10, label %299, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct._seq_t, ptr %2, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !35
  %14 = getelementptr inbounds %struct._seq_t, ptr %3, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !35
  %16 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.20, ptr noundef %13, ptr noundef %15) #35
  %17 = icmp eq i32 %1, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %11
  %19 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %20

20:                                               ; preds = %18, %11
  %21 = load i32, ptr getelementptr inbounds (%struct._options_t, ptr @options, i64 0, i32 3), align 4, !tbaa !21
  switch i32 %21, label %296 [
    i32 0, label %22
    i32 1, label %26
    i32 3, label %31
    i32 4, label %39
  ]

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct._result_t, ptr %0, i64 0, i32 1
  %24 = getelementptr inbounds %struct._result_t, ptr %0, i64 0, i32 4
  %25 = load i32, ptr %24, align 8, !tbaa !142
  tail call fastcc void @print_exons(ptr noundef nonnull %23, i32 noundef %25) #31
  br label %297

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct._seq_t, ptr %2, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !41
  %29 = getelementptr inbounds %struct._seq_t, ptr %3, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !41
  tail call fastcc void @print_align_lat(ptr noundef %28, ptr noundef %30, ptr noundef nonnull %0) #35
  br label %297

31:                                               ; preds = %20
  %32 = getelementptr inbounds %struct._result_t, ptr %0, i64 0, i32 1
  %33 = getelementptr inbounds %struct._result_t, ptr %0, i64 0, i32 4
  %34 = load i32, ptr %33, align 8, !tbaa !142
  tail call fastcc void @print_exons(ptr noundef nonnull %32, i32 noundef %34) #31
  %35 = getelementptr inbounds %struct._seq_t, ptr %2, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !41
  %37 = getelementptr inbounds %struct._seq_t, ptr %3, i64 0, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !41
  tail call fastcc void @print_align_lat(ptr noundef %36, ptr noundef %38, ptr noundef nonnull %0) #35
  br label %297

39:                                               ; preds = %20
  %40 = getelementptr inbounds %struct._result_t, ptr %0, i64 0, i32 1
  %41 = getelementptr inbounds %struct._result_t, ptr %0, i64 0, i32 4
  %42 = load i32, ptr %41, align 8, !tbaa !142
  tail call fastcc void @print_exons(ptr noundef nonnull %40, i32 noundef %42) #31
  %43 = getelementptr inbounds %struct._result_t, ptr %0, i64 0, i32 5, i32 1
  %44 = load i32, ptr %43, align 4, !tbaa !90
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %174, label %46

46:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 51, ptr nonnull %5) #30
  %47 = load ptr, ptr %40, align 8, !tbaa !27
  %48 = getelementptr inbounds %struct._result_t, ptr %0, i64 0, i32 1, i32 1
  %49 = load i32, ptr %48, align 8, !tbaa !52
  %50 = add i32 %49, -1
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds ptr, ptr %47, i64 %51
  %53 = load ptr, ptr %52, align 8, !tbaa !7
  %54 = getelementptr inbounds %struct._exon_t, ptr %53, i64 0, i32 3
  %55 = load i32, ptr %54, align 4, !tbaa !98
  %56 = getelementptr inbounds %struct._seq_t, ptr %3, i64 0, i32 5
  %57 = load i32, ptr %56, align 4, !tbaa !42
  %58 = getelementptr inbounds %struct._seq_t, ptr %3, i64 0, i32 2
  %59 = zext i32 %55 to i64
  %60 = tail call i32 @llvm.usub.sat.i32(i32 %57, i32 %55)
  %61 = zext i32 %60 to i64
  %62 = tail call i64 @llvm.umin.i64(i64 %61, i64 9)
  br label %63

63:                                               ; preds = %67, %46
  %64 = phi i64 [ 0, %46 ], [ %75, %67 ]
  %65 = phi i32 [ 0, %46 ], [ %74, %67 ]
  %66 = icmp eq i64 %64, %61
  br i1 %66, label %77, label %67

67:                                               ; preds = %63
  %68 = add nuw nsw i64 %64, %59
  %69 = load ptr, ptr %58, align 8, !tbaa !41
  %70 = getelementptr inbounds i8, ptr %69, i64 %68
  %71 = load i8, ptr %70, align 1, !tbaa !27
  %72 = icmp eq i8 %71, 65
  %73 = zext i1 %72 to i32
  %74 = add i32 %65, %73
  %75 = add nuw nsw i64 %64, 1
  %76 = icmp eq i64 %75, 10
  br i1 %76, label %77, label %63, !llvm.loop !182

77:                                               ; preds = %67, %63
  %78 = phi i64 [ 10, %67 ], [ %62, %63 ]
  %79 = phi i32 [ %74, %67 ], [ %65, %63 ]
  %80 = trunc i64 %78 to i32
  %81 = add i32 %55, %80
  %82 = icmp ult i32 %81, %57
  br i1 %82, label %83, label %99

83:                                               ; preds = %77
  %84 = load ptr, ptr %58, align 8, !tbaa !41
  %85 = sub i32 %57, %55
  br label %86

86:                                               ; preds = %94, %83
  %87 = phi i32 [ %81, %83 ], [ %97, %94 ]
  %88 = phi i32 [ %79, %83 ], [ %96, %94 ]
  %89 = phi i32 [ %80, %83 ], [ %95, %94 ]
  %90 = zext i32 %87 to i64
  %91 = getelementptr inbounds i8, ptr %84, i64 %90
  %92 = load i8, ptr %91, align 1, !tbaa !27
  %93 = icmp eq i8 %92, 65
  br i1 %93, label %94, label %99

94:                                               ; preds = %86
  %95 = add i32 %89, 1
  %96 = add i32 %88, 1
  %97 = add i32 %95, %55
  %98 = icmp ult i32 %97, %57
  br i1 %98, label %86, label %99, !llvm.loop !183

99:                                               ; preds = %94, %86, %77
  %100 = phi i32 [ %80, %77 ], [ %85, %94 ], [ %89, %86 ]
  %101 = phi i32 [ %79, %77 ], [ %96, %94 ], [ %88, %86 ]
  %102 = getelementptr inbounds %struct._seq_t, ptr %2, i64 0, i32 5
  %103 = load i32, ptr %102, align 4, !tbaa !42
  %104 = tail call i32 @llvm.umin.i32(i32 %100, i32 %103)
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %99
  %107 = getelementptr inbounds %struct._exon_t, ptr %53, i64 0, i32 2
  %108 = load i32, ptr %107, align 4, !tbaa !97
  %109 = getelementptr inbounds %struct._seq_t, ptr %2, i64 0, i32 2
  %110 = load ptr, ptr %109, align 8, !tbaa !41
  br label %130

111:                                              ; preds = %99
  %112 = getelementptr inbounds %struct._seq_t, ptr %2, i64 0, i32 2
  %113 = load ptr, ptr %112, align 8, !tbaa !41
  %114 = getelementptr inbounds %struct._exon_t, ptr %53, i64 0, i32 2
  %115 = load i32, ptr %114, align 4, !tbaa !97
  %116 = zext i32 %104 to i64
  br label %117

117:                                              ; preds = %117, %111
  %118 = phi i64 [ 0, %111 ], [ %128, %117 ]
  %119 = phi i32 [ 0, %111 ], [ %127, %117 ]
  %120 = trunc i64 %118 to i32
  %121 = add i32 %115, %120
  %122 = zext i32 %121 to i64
  %123 = getelementptr inbounds i8, ptr %113, i64 %122
  %124 = load i8, ptr %123, align 1, !tbaa !27
  %125 = icmp eq i8 %124, 65
  %126 = zext i1 %125 to i32
  %127 = add i32 %119, %126
  %128 = add nuw nsw i64 %118, 1
  %129 = icmp eq i64 %128, %116
  br i1 %129, label %130, label %117, !llvm.loop !184

130:                                              ; preds = %117, %106
  %131 = phi ptr [ %110, %106 ], [ %113, %117 ]
  %132 = phi i32 [ %108, %106 ], [ %115, %117 ]
  %133 = phi i32 [ 0, %106 ], [ %127, %117 ]
  %134 = getelementptr inbounds %struct._exon_t, ptr %53, i64 0, i32 2
  %135 = add i32 %132, 1
  %136 = load i32, ptr getelementptr inbounds (%struct._options_t, ptr @options, i64 0, i32 15), align 4, !tbaa !31
  %137 = add i32 %135, %136
  %138 = load ptr, ptr %58, align 8, !tbaa !41
  %139 = getelementptr inbounds i8, ptr %138, i64 %59
  %140 = add i32 %55, 1
  %141 = getelementptr inbounds %struct._seq_t, ptr %2, i64 0, i32 2
  %142 = zext i32 %132 to i64
  %143 = getelementptr inbounds i8, ptr %131, i64 %142
  %144 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.24, i32 noundef %100, i32 noundef %101, i32 noundef %133, i32 noundef %137, i32 noundef %100, ptr noundef %139, i32 noundef %140, i32 noundef %100, i32 noundef %104, ptr noundef %143, i32 noundef %137) #35
  %145 = load i32, ptr %134, align 4, !tbaa !97
  %146 = zext i32 %145 to i64
  %147 = tail call i32 @llvm.umin.i32(i32 %145, i32 50)
  %148 = zext i32 %147 to i64
  %149 = sub nsw i64 0, %148
  %150 = load ptr, ptr %141, align 8, !tbaa !41
  %151 = getelementptr inbounds i8, ptr %150, i64 %146
  %152 = getelementptr inbounds i8, ptr %151, i64 %149
  %153 = call ptr @strncpy(ptr noundef nonnull %5, ptr noundef %152, i64 noundef %148) #31
  %154 = getelementptr inbounds [51 x i8], ptr %5, i64 0, i64 %148
  store i8 0, ptr %154, align 1, !tbaa !27
  %155 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) @.str.25) #33
  %156 = icmp eq ptr %155, null
  br i1 %156, label %157, label %160

157:                                              ; preds = %130
  %158 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) @.str.26) #33
  %159 = icmp eq ptr %158, null
  br i1 %159, label %173, label %160

160:                                              ; preds = %157, %130
  %161 = phi ptr [ %158, %157 ], [ %155, %130 ]
  %162 = ptrtoint ptr %161 to i64
  %163 = ptrtoint ptr %5 to i64
  %164 = load i32, ptr %134, align 4, !tbaa !97
  %165 = add i64 %148, %163
  %166 = sub i64 %162, %165
  %167 = load i32, ptr getelementptr inbounds (%struct._options_t, ptr @options, i64 0, i32 15), align 4, !tbaa !31
  %168 = trunc i64 %166 to i32
  %169 = add i32 %164, 1
  %170 = add i32 %169, %167
  %171 = add i32 %170, %168
  %172 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.27, i32 noundef %171) #35
  br label %173

173:                                              ; preds = %160, %157
  call void @llvm.lifetime.end.p0(i64 51, ptr nonnull %5) #30
  br label %174

174:                                              ; preds = %173, %39
  %175 = getelementptr inbounds %struct._result_t, ptr %0, i64 0, i32 5, i32 2
  %176 = load i32, ptr %175, align 4, !tbaa !91
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %291, label %178

178:                                              ; preds = %174
  call void @llvm.lifetime.start.p0(i64 51, ptr nonnull %6) #30
  %179 = load ptr, ptr %40, align 8, !tbaa !27
  %180 = load ptr, ptr %179, align 8, !tbaa !7
  %181 = getelementptr inbounds %struct._exon_t, ptr %180, i64 0, i32 1
  %182 = load i32, ptr %181, align 4, !tbaa !92
  %183 = add i32 %182, -1
  %184 = getelementptr inbounds %struct._seq_t, ptr %3, i64 0, i32 2
  %185 = call i32 @llvm.umin.i32(i32 %183, i32 9)
  %186 = add nuw nsw i32 %185, 1
  %187 = zext i32 %183 to i64
  %188 = add i32 %182, -2
  br label %189

189:                                              ; preds = %193, %178
  %190 = phi i64 [ 0, %178 ], [ %203, %193 ]
  %191 = phi i32 [ 0, %178 ], [ %202, %193 ]
  %192 = icmp eq i64 %190, %187
  br i1 %192, label %205, label %193

193:                                              ; preds = %189
  %194 = load ptr, ptr %184, align 8, !tbaa !41
  %195 = trunc i64 %190 to i32
  %196 = sub i32 %188, %195
  %197 = zext i32 %196 to i64
  %198 = getelementptr inbounds i8, ptr %194, i64 %197
  %199 = load i8, ptr %198, align 1, !tbaa !27
  %200 = icmp eq i8 %199, 84
  %201 = zext i1 %200 to i32
  %202 = add i32 %191, %201
  %203 = add nuw nsw i64 %190, 1
  %204 = icmp eq i64 %203, 10
  br i1 %204, label %205, label %189, !llvm.loop !185

205:                                              ; preds = %193, %189
  %206 = phi i32 [ %202, %193 ], [ %191, %189 ]
  %207 = phi i32 [ %186, %193 ], [ %185, %189 ]
  %208 = icmp ult i32 %207, %183
  br i1 %208, label %209, label %229

209:                                              ; preds = %205
  %210 = load ptr, ptr %184, align 8, !tbaa !41
  %211 = zext i32 %207 to i64
  %212 = add i32 %206, %182
  %213 = xor i32 %207, -1
  %214 = add i32 %212, %213
  br label %215

215:                                              ; preds = %224, %209
  %216 = phi i64 [ %211, %209 ], [ %225, %224 ]
  %217 = phi i32 [ %206, %209 ], [ %226, %224 ]
  %218 = trunc i64 %216 to i32
  %219 = sub i32 %188, %218
  %220 = zext i32 %219 to i64
  %221 = getelementptr inbounds i8, ptr %210, i64 %220
  %222 = load i8, ptr %221, align 1, !tbaa !27
  %223 = icmp eq i8 %222, 84
  br i1 %223, label %224, label %229

224:                                              ; preds = %215
  %225 = add nuw nsw i64 %216, 1
  %226 = add i32 %217, 1
  %227 = trunc i64 %225 to i32
  %228 = icmp eq i32 %183, %227
  br i1 %228, label %229, label %215, !llvm.loop !186

229:                                              ; preds = %224, %215, %205
  %230 = phi i32 [ %206, %205 ], [ %214, %224 ], [ %217, %215 ]
  %231 = phi i32 [ %207, %205 ], [ %183, %224 ], [ %218, %215 ]
  %232 = load i32, ptr %180, align 4, !tbaa !94
  %233 = add i32 %232, -1
  %234 = call i32 @llvm.umin.i32(i32 %231, i32 %233)
  %235 = icmp eq i32 %234, 0
  %236 = getelementptr inbounds %struct._seq_t, ptr %2, i64 0, i32 2
  %237 = load ptr, ptr %236, align 8, !tbaa !41
  br i1 %235, label %254, label %238

238:                                              ; preds = %229
  %239 = zext i32 %234 to i64
  %240 = add i32 %232, -2
  br label %241

241:                                              ; preds = %241, %238
  %242 = phi i64 [ 0, %238 ], [ %252, %241 ]
  %243 = phi i32 [ 0, %238 ], [ %251, %241 ]
  %244 = trunc i64 %242 to i32
  %245 = sub i32 %240, %244
  %246 = zext i32 %245 to i64
  %247 = getelementptr inbounds i8, ptr %237, i64 %246
  %248 = load i8, ptr %247, align 1, !tbaa !27
  %249 = icmp eq i8 %248, 84
  %250 = zext i1 %249 to i32
  %251 = add i32 %243, %250
  %252 = add nuw nsw i64 %242, 1
  %253 = icmp eq i64 %252, %239
  br i1 %253, label %254, label %241, !llvm.loop !187

254:                                              ; preds = %241, %229
  %255 = phi i32 [ 0, %229 ], [ %251, %241 ]
  %256 = load i32, ptr getelementptr inbounds (%struct._options_t, ptr @options, i64 0, i32 15), align 4, !tbaa !31
  %257 = add i32 %256, %233
  %258 = load ptr, ptr %184, align 8, !tbaa !41
  %259 = sub i32 %183, %231
  %260 = zext i32 %259 to i64
  %261 = getelementptr inbounds i8, ptr %258, i64 %260
  %262 = sub i32 %233, %234
  %263 = zext i32 %262 to i64
  %264 = getelementptr inbounds i8, ptr %237, i64 %263
  %265 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.28, i32 noundef %231, i32 noundef %230, i32 noundef %255, i32 noundef %257, i32 noundef %231, ptr noundef %261, i32 noundef %183, i32 noundef %231, i32 noundef %234, ptr noundef %264, i32 noundef %257) #35
  %266 = load ptr, ptr %236, align 8, !tbaa !41
  %267 = load i32, ptr %180, align 4, !tbaa !94
  %268 = zext i32 %267 to i64
  %269 = getelementptr inbounds i8, ptr %266, i64 %268
  %270 = getelementptr inbounds i8, ptr %269, i64 -1
  %271 = call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(1) %270, i64 noundef 50) #31
  %272 = getelementptr inbounds [51 x i8], ptr %6, i64 0, i64 50
  store i8 0, ptr %272, align 2, !tbaa !27
  %273 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(1) @.str.29) #33
  %274 = icmp eq ptr %273, null
  br i1 %274, label %275, label %278

275:                                              ; preds = %254
  %276 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(1) @.str.30) #33
  %277 = icmp eq ptr %276, null
  br i1 %277, label %290, label %278

278:                                              ; preds = %275, %254
  %279 = phi ptr [ %276, %275 ], [ %273, %254 ]
  %280 = ptrtoint ptr %279 to i64
  %281 = ptrtoint ptr %6 to i64
  %282 = sub i64 %280, %281
  %283 = load i32, ptr %180, align 4, !tbaa !94
  %284 = load i32, ptr getelementptr inbounds (%struct._options_t, ptr @options, i64 0, i32 15), align 4, !tbaa !31
  %285 = trunc i64 %282 to i32
  %286 = add i32 %283, 5
  %287 = add i32 %286, %284
  %288 = add i32 %287, %285
  %289 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.31, i32 noundef %288) #35
  br label %290

290:                                              ; preds = %278, %275
  call void @llvm.lifetime.end.p0(i64 51, ptr nonnull %6) #30
  br label %291

291:                                              ; preds = %290, %174
  %292 = getelementptr inbounds %struct._seq_t, ptr %2, i64 0, i32 2
  %293 = load ptr, ptr %292, align 8, !tbaa !41
  %294 = getelementptr inbounds %struct._seq_t, ptr %3, i64 0, i32 2
  %295 = load ptr, ptr %294, align 8, !tbaa !41
  call fastcc void @print_align_lat(ptr noundef %293, ptr noundef %295, ptr noundef %0) #35
  br label %297

296:                                              ; preds = %20
  tail call void (ptr, ...) @fatal(ptr noundef nonnull @.str.22) #34
  unreachable

297:                                              ; preds = %291, %31, %26, %22
  %298 = call i32 @putchar(i32 10)
  br label %299

299:                                              ; preds = %297, %4
  %300 = getelementptr inbounds %struct._result_t, ptr %0, i64 0, i32 1
  %301 = getelementptr inbounds %struct._result_t, ptr %0, i64 0, i32 1, i32 1
  %302 = load i32, ptr %301, align 8, !tbaa !188
  %303 = icmp eq i32 %302, 0
  br i1 %303, label %313, label %304

304:                                              ; preds = %304, %299
  %305 = phi i64 [ %309, %304 ], [ 0, %299 ]
  %306 = load ptr, ptr %300, align 8, !tbaa !27
  %307 = getelementptr inbounds ptr, ptr %306, i64 %305
  %308 = load ptr, ptr %307, align 8, !tbaa !7
  call void @free(ptr noundef %308) #31
  %309 = add nuw nsw i64 %305, 1
  %310 = load i32, ptr %301, align 8, !tbaa !188
  %311 = zext i32 %310 to i64
  %312 = icmp ult i64 %309, %311
  br i1 %312, label %304, label %313, !llvm.loop !189

313:                                              ; preds = %304, %299
  %314 = load ptr, ptr %300, align 8, !tbaa !27
  call void @free(ptr noundef %314) #31
  %315 = load ptr, ptr %0, align 8, !tbaa !180
  %316 = icmp eq ptr %315, null
  br i1 %316, label %318, label %317

317:                                              ; preds = %313
  call fastcc void @free_align(ptr noundef nonnull %315) #31
  br label %318

318:                                              ; preds = %317, %313
  call void @free(ptr noundef nonnull %0) #31
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #9

; Function Attrs: nofree nounwind optsize uwtable
define internal fastcc void @print_exons(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #10 {
  %3 = getelementptr inbounds %struct._collec_t, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !52
  %5 = add i32 %4, -1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %60, label %7

7:                                                ; preds = %2
  %8 = icmp eq i32 %1, 0
  %9 = icmp sgt i32 %1, 0
  %10 = select i1 %9, ptr @.str.2.51, ptr @.str.3.52
  %11 = zext i32 %5 to i64
  br label %12

12:                                               ; preds = %57, %7
  %13 = phi i64 [ 0, %7 ], [ %58, %57 ]
  %14 = load ptr, ptr %0, align 8, !tbaa !27
  %15 = getelementptr inbounds ptr, ptr %14, i64 %13
  %16 = load ptr, ptr %15, align 8, !tbaa !7
  br i1 %8, label %23, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct._exon_t, ptr %16, i64 0, i32 6
  %19 = load i64, ptr %18, align 4
  %20 = ashr i64 %19, 56
  %21 = and i64 %20, 2147483648
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %37, label %23

23:                                               ; preds = %17, %12
  %24 = load i32, ptr %16, align 4, !tbaa !94
  %25 = load i32, ptr getelementptr inbounds (%struct._options_t, ptr @options, i64 0, i32 15), align 4, !tbaa !31
  %26 = add i32 %25, %24
  %27 = getelementptr inbounds %struct._exon_t, ptr %16, i64 0, i32 2
  %28 = load i32, ptr %27, align 4, !tbaa !97
  %29 = add i32 %28, %25
  %30 = getelementptr inbounds %struct._exon_t, ptr %16, i64 0, i32 1
  %31 = load i32, ptr %30, align 4, !tbaa !92
  %32 = getelementptr inbounds %struct._exon_t, ptr %16, i64 0, i32 3
  %33 = load i32, ptr %32, align 4, !tbaa !98
  %34 = getelementptr inbounds %struct._exon_t, ptr %16, i64 0, i32 4
  %35 = load i32, ptr %34, align 4, !tbaa !178
  %36 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.53, i32 noundef %26, i32 noundef %29, i32 noundef %31, i32 noundef %33, i32 noundef %35) #35
  br label %57

37:                                               ; preds = %17
  %38 = load i32, ptr %16, align 4, !tbaa !94
  %39 = load i32, ptr getelementptr inbounds (%struct._options_t, ptr @options, i64 0, i32 15), align 4, !tbaa !31
  %40 = add i32 %39, %38
  %41 = getelementptr inbounds %struct._exon_t, ptr %16, i64 0, i32 2
  %42 = load i32, ptr %41, align 4, !tbaa !97
  %43 = add i32 %42, %39
  %44 = getelementptr inbounds %struct._exon_t, ptr %16, i64 0, i32 1
  %45 = load i32, ptr %44, align 4, !tbaa !92
  %46 = getelementptr inbounds %struct._exon_t, ptr %16, i64 0, i32 3
  %47 = load i32, ptr %46, align 4, !tbaa !98
  %48 = getelementptr inbounds %struct._exon_t, ptr %16, i64 0, i32 4
  %49 = load i32, ptr %48, align 4, !tbaa !178
  %50 = load ptr, ptr getelementptr inbounds (%struct._options_t, ptr @options, i64 0, i32 1), align 8, !tbaa !53
  %51 = getelementptr inbounds %struct._junction_t, ptr %50, i64 %20
  %52 = getelementptr inbounds i8, ptr %51, i64 2
  %53 = lshr i64 %19, 34
  %54 = trunc i64 %53 to i32
  %55 = and i32 %54, 4194303
  %56 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1.54, i32 noundef %40, i32 noundef %43, i32 noundef %45, i32 noundef %47, i32 noundef %49, ptr noundef nonnull %10, ptr noundef %51, ptr noundef nonnull %52, i32 noundef %55) #35
  br label %57

57:                                               ; preds = %37, %23
  %58 = add nuw nsw i64 %13, 1
  %59 = icmp eq i64 %58, %11
  br i1 %59, label %60, label %12, !llvm.loop !190

60:                                               ; preds = %57, %2
  %61 = phi i64 [ 0, %2 ], [ %11, %57 ]
  %62 = load ptr, ptr %0, align 8, !tbaa !27
  %63 = getelementptr inbounds ptr, ptr %62, i64 %61
  %64 = load ptr, ptr %63, align 8, !tbaa !7
  %65 = load i32, ptr %64, align 4, !tbaa !94
  %66 = load i32, ptr getelementptr inbounds (%struct._options_t, ptr @options, i64 0, i32 15), align 4, !tbaa !31
  %67 = add i32 %66, %65
  %68 = getelementptr inbounds %struct._exon_t, ptr %64, i64 0, i32 2
  %69 = load i32, ptr %68, align 4, !tbaa !97
  %70 = add i32 %69, %66
  %71 = getelementptr inbounds %struct._exon_t, ptr %64, i64 0, i32 1
  %72 = load i32, ptr %71, align 4, !tbaa !92
  %73 = getelementptr inbounds %struct._exon_t, ptr %64, i64 0, i32 3
  %74 = load i32, ptr %73, align 4, !tbaa !98
  %75 = getelementptr inbounds %struct._exon_t, ptr %64, i64 0, i32 4
  %76 = load i32, ptr %75, align 4, !tbaa !178
  %77 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4.55, i32 noundef %67, i32 noundef %70, i32 noundef %72, i32 noundef %74, i32 noundef %76) #35
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @print_align_lat(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) unnamed_addr #0 {
  %4 = load ptr, ptr %2, align 8, !tbaa !180
  %5 = icmp eq ptr %4, null
  br i1 %5, label %328, label %6

6:                                                ; preds = %3
  %7 = getelementptr i8, ptr %0, i64 -2
  %8 = getelementptr i8, ptr %1, i64 -2
  %9 = getelementptr inbounds %struct._result_t, ptr %2, i64 0, i32 1
  %10 = getelementptr inbounds %struct._result_t, ptr %2, i64 0, i32 4
  %11 = getelementptr inbounds %struct._result_t, ptr %2, i64 0, i32 1, i32 1
  br label %12

12:                                               ; preds = %325, %6
  %13 = phi ptr [ %4, %6 ], [ %14, %325 ]
  %14 = load ptr, ptr %13, align 8, !tbaa !158
  %15 = getelementptr inbounds %struct._edit_script_list, ptr %13, i64 0, i32 5
  %16 = load i32, ptr %15, align 4, !tbaa !164
  %17 = shl i32 %16, 1
  %18 = add i32 %17, 2
  %19 = zext i32 %18 to i64
  %20 = shl nuw nsw i64 %19, 2
  %21 = tail call fastcc ptr @xmalloc(i64 noundef %20) #31
  %22 = getelementptr inbounds i32, ptr %21, i64 1
  %23 = getelementptr inbounds %struct._edit_script_list, ptr %13, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !160
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %12
  store i32 0, ptr %21, align 4, !tbaa !11
  br label %67

27:                                               ; preds = %53, %12
  %28 = phi ptr [ %54, %53 ], [ %22, %12 ]
  %29 = phi ptr [ %55, %53 ], [ %24, %12 ]
  %30 = getelementptr inbounds %struct._edit_script, ptr %29, i64 0, i32 2
  %31 = load i8, ptr %30, align 4, !tbaa !166
  switch i8 %31, label %46 [
    i8 3, label %32
    i8 2, label %43
  ]

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct._edit_script, ptr %29, i64 0, i32 1
  %34 = load i32, ptr %33, align 8, !tbaa !168
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %53

36:                                               ; preds = %36, %32
  %37 = phi i32 [ %40, %36 ], [ 0, %32 ]
  %38 = phi ptr [ %39, %36 ], [ %28, %32 ]
  %39 = getelementptr inbounds i32, ptr %38, i64 1
  store i32 0, ptr %38, align 4, !tbaa !11
  %40 = add nuw nsw i32 %37, 1
  %41 = load i32, ptr %33, align 8, !tbaa !168
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %36, label %53, !llvm.loop !191

43:                                               ; preds = %27
  %44 = getelementptr inbounds %struct._edit_script, ptr %29, i64 0, i32 1
  %45 = load i32, ptr %44, align 8, !tbaa !168
  br label %50

46:                                               ; preds = %27
  %47 = getelementptr inbounds %struct._edit_script, ptr %29, i64 0, i32 1
  %48 = load i32, ptr %47, align 8, !tbaa !168
  %49 = sub nsw i32 0, %48
  br label %50

50:                                               ; preds = %46, %43
  %51 = phi i32 [ %49, %46 ], [ %45, %43 ]
  %52 = getelementptr inbounds i32, ptr %28, i64 1
  store i32 %51, ptr %28, align 4, !tbaa !11
  br label %53

53:                                               ; preds = %50, %36, %32
  %54 = phi ptr [ %28, %32 ], [ %52, %50 ], [ %39, %36 ]
  %55 = load ptr, ptr %29, align 8, !tbaa !169
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %27, !llvm.loop !192

57:                                               ; preds = %53
  %.lcssa = phi ptr [ %54, %53 ]
  %58 = ptrtoint ptr %.lcssa to i64
  %59 = ptrtoint ptr %22 to i64
  %60 = sub i64 %58, %59
  %61 = lshr exact i64 %60, 2
  %62 = trunc i64 %61 to i32
  store i32 %62, ptr %21, align 4, !tbaa !11
  br label %63

63:                                               ; preds = %63, %57
  %64 = phi ptr [ %65, %63 ], [ %24, %57 ]
  %65 = load ptr, ptr %64, align 8, !tbaa !169
  tail call void @free(ptr noundef nonnull %64) #31
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %63, !llvm.loop !193

67:                                               ; preds = %63, %26
  %68 = getelementptr inbounds %struct._edit_script_list, ptr %13, i64 0, i32 2
  %69 = load i32, ptr %68, align 8, !tbaa !161
  %70 = zext i32 %69 to i64
  %71 = getelementptr i8, ptr %7, i64 %70
  %72 = getelementptr inbounds %struct._edit_script_list, ptr %13, i64 0, i32 3
  %73 = load i32, ptr %72, align 4, !tbaa !162
  %74 = zext i32 %73 to i64
  %75 = getelementptr i8, ptr %8, i64 %74
  %76 = getelementptr inbounds %struct._edit_script_list, ptr %13, i64 0, i32 4
  %77 = load i32, ptr %76, align 8, !tbaa !163
  %78 = load i32, ptr %15, align 4, !tbaa !164
  %79 = load i32, ptr %10, align 8, !tbaa !142
  %80 = load ptr, ptr %9, align 8, !tbaa !27
  %81 = load i32, ptr %11, align 8, !tbaa !52
  %82 = add i32 %81, -1
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds ptr, ptr %80, i64 %83
  %85 = load ptr, ptr %84, align 8, !tbaa !7
  %86 = getelementptr inbounds %struct._exon_t, ptr %85, i64 0, i32 2
  %87 = load i32, ptr %86, align 4, !tbaa !97
  %88 = load i32, ptr getelementptr inbounds (%struct._options_t, ptr @options, i64 0, i32 15), align 4, !tbaa !31
  %89 = add i32 %88, %87
  %90 = icmp ult i32 %89, 10
  br i1 %90, label %97, label %91

91:                                               ; preds = %91, %67
  %92 = phi i32 [ %95, %91 ], [ 1, %67 ]
  %93 = phi i32 [ %94, %91 ], [ %89, %67 ]
  %94 = udiv i32 %93, 10
  %95 = add i32 %92, 1
  %96 = icmp ult i32 %93, 100
  br i1 %96, label %97, label %91, !llvm.loop !194

97:                                               ; preds = %91, %67
  %98 = phi i32 [ 1, %67 ], [ %95, %91 ]
  %99 = tail call i32 @llvm.umax.i32(i32 %98, i32 7)
  %100 = icmp eq i32 %81, 0
  br i1 %100, label %116, label %101

101:                                              ; preds = %97
  %102 = zext i32 %81 to i64
  br label %103

103:                                              ; preds = %113, %101
  %104 = phi i64 [ 0, %101 ], [ %114, %113 ]
  %105 = getelementptr inbounds ptr, ptr %80, i64 %104
  %106 = load ptr, ptr %105, align 8, !tbaa !7
  %107 = load i32, ptr %106, align 4, !tbaa !94
  %108 = icmp eq i32 %107, %69
  br i1 %108, label %109, label %113

109:                                              ; preds = %103
  %110 = getelementptr inbounds %struct._exon_t, ptr %106, i64 0, i32 1
  %111 = load i32, ptr %110, align 4, !tbaa !92
  %112 = icmp eq i32 %111, %73
  br i1 %112, label %117, label %113

113:                                              ; preds = %109, %103
  %114 = add nuw nsw i64 %104, 1
  %115 = icmp eq i64 %114, %102
  br i1 %115, label %116, label %103, !llvm.loop !195

116:                                              ; preds = %113, %97
  tail call void (ptr, ...) @fatal(ptr noundef nonnull @.str.2) #34
  unreachable

117:                                              ; preds = %109
  %.lcssa2 = phi i64 [ %104, %109 ]
  %.lcssa1 = phi ptr [ %106, %109 ]
  %118 = trunc i64 %.lcssa2 to i32
  %119 = icmp ugt i32 %82, %118
  br i1 %119, label %120, label %124

120:                                              ; preds = %117
  %121 = getelementptr inbounds %struct._exon_t, ptr %.lcssa1, i64 0, i32 2
  %122 = load i32, ptr %121, align 4, !tbaa !97
  %123 = add nsw i32 %122, 1
  br label %124

124:                                              ; preds = %120, %117
  %125 = phi i32 [ %123, %120 ], [ -1, %117 ]
  %126 = or i32 %78, %77
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %325, label %128

128:                                              ; preds = %124
  %129 = icmp eq i32 %79, 0
  %130 = icmp sgt i32 %79, 0
  %131 = select i1 %130, i8 62, i8 60
  br label %132

132:                                              ; preds = %306, %128
  %133 = phi ptr [ %.lcssa1, %128 ], [ %307, %306 ]
  %134 = phi i32 [ %118, %128 ], [ %308, %306 ]
  %135 = phi ptr [ %22, %128 ], [ %309, %306 ]
  %136 = phi i32 [ %73, %128 ], [ %321, %306 ]
  %137 = phi i32 [ %69, %128 ], [ %320, %306 ]
  %138 = phi i32 [ 0, %128 ], [ %319, %306 ]
  %139 = phi i32 [ 0, %128 ], [ %310, %306 ]
  %140 = phi i32 [ 0, %128 ], [ %311, %306 ]
  %141 = phi i32 [ %125, %128 ], [ %312, %306 ]
  %142 = phi i32 [ 0, %128 ], [ %313, %306 ]
  %143 = phi i32 [ 0, %128 ], [ %314, %306 ]
  %144 = phi i8 [ 42, %128 ], [ %315, %306 ]
  %145 = phi ptr [ @CLINE, %128 ], [ %318, %306 ]
  %146 = phi ptr [ @BLINE, %128 ], [ %317, %306 ]
  %147 = phi ptr [ @ALINE, %128 ], [ %316, %306 ]
  %148 = icmp eq i32 %143, 0
  br i1 %148, label %149, label %164

149:                                              ; preds = %132
  %150 = load i32, ptr %135, align 4, !tbaa !11
  %151 = icmp eq i32 %150, 0
  %152 = getelementptr inbounds i32, ptr %135, i64 1
  br i1 %151, label %153, label %164

153:                                              ; preds = %149
  %154 = add i32 %140, 1
  %155 = zext i32 %154 to i64
  %156 = getelementptr inbounds i8, ptr %71, i64 %155
  %157 = load i8, ptr %156, align 1, !tbaa !27
  store i8 %157, ptr %147, align 1, !tbaa !27
  %158 = add i32 %139, 1
  %159 = zext i32 %158 to i64
  %160 = getelementptr inbounds i8, ptr %75, i64 %159
  %161 = load i8, ptr %160, align 1, !tbaa !27
  store i8 %161, ptr %146, align 1, !tbaa !27
  %162 = icmp eq i8 %157, %161
  %163 = select i1 %162, i8 124, i8 32
  store i8 %163, ptr %145, align 1, !tbaa !27
  br label %242

164:                                              ; preds = %149, %132
  %165 = phi i32 [ %143, %132 ], [ %150, %149 ]
  %166 = phi ptr [ %135, %132 ], [ %152, %149 ]
  %167 = icmp sgt i32 %165, 0
  br i1 %167, label %168, label %174

168:                                              ; preds = %164
  store i8 32, ptr %147, align 1, !tbaa !27
  %169 = add i32 %139, 1
  %170 = zext i32 %169 to i64
  %171 = getelementptr inbounds i8, ptr %75, i64 %170
  %172 = load i8, ptr %171, align 1, !tbaa !27
  store i8 %172, ptr %146, align 1, !tbaa !27
  store i8 45, ptr %145, align 1, !tbaa !27
  %173 = add nsw i32 %165, -1
  br label %242

174:                                              ; preds = %164
  %175 = add i32 %140, %69
  %176 = icmp eq i32 %175, %141
  br i1 %176, label %177, label %208

177:                                              ; preds = %174
  %178 = getelementptr inbounds %struct._exon_t, ptr %133, i64 0, i32 6
  %179 = load i64, ptr %178, align 4
  %180 = ashr i64 %179, 56
  %181 = and i64 %180, 2147483648
  %182 = icmp ne i64 %181, 0
  %183 = or i1 %129, %182
  %184 = select i1 %183, i8 61, i8 %131
  %185 = add i32 %134, 1
  %186 = load i32, ptr %11, align 8, !tbaa !52
  %187 = icmp ult i32 %185, %186
  br i1 %187, label %188, label %193

188:                                              ; preds = %177
  %189 = load ptr, ptr %9, align 8, !tbaa !27
  %190 = zext i32 %185 to i64
  %191 = getelementptr inbounds ptr, ptr %189, i64 %190
  %192 = load ptr, ptr %191, align 8, !tbaa !7
  br label %193

193:                                              ; preds = %188, %177
  %194 = phi ptr [ %192, %188 ], [ null, %177 ]
  %195 = add i32 %186, -1
  %196 = icmp ult i32 %185, %195
  br i1 %196, label %197, label %201

197:                                              ; preds = %193
  %198 = getelementptr inbounds %struct._exon_t, ptr %194, i64 0, i32 2
  %199 = load i32, ptr %198, align 4, !tbaa !97
  %200 = add nsw i32 %199, 1
  br label %201

201:                                              ; preds = %197, %193
  %202 = phi i32 [ %200, %197 ], [ -1, %193 ]
  store i8 %184, ptr %145, align 1, !tbaa !27
  %203 = add i32 %140, 1
  %204 = zext i32 %203 to i64
  %205 = getelementptr inbounds i8, ptr %71, i64 %204
  %206 = load i8, ptr %205, align 1, !tbaa !27
  store i8 %206, ptr %147, align 1, !tbaa !27
  store i8 32, ptr %146, align 1, !tbaa !27
  %207 = add nsw i32 %165, 1
  br label %242

208:                                              ; preds = %174
  switch i32 %142, label %256 [
    i32 0, label %209
    i32 8, label %236
    i32 1, label %215
    i32 2, label %215
    i32 3, label %222
    i32 4, label %222
    i32 5, label %226
    i32 6, label %229
    i32 7, label %229
  ]

209:                                              ; preds = %208
  store i8 45, ptr %145, align 1, !tbaa !27
  %210 = add i32 %140, 1
  %211 = zext i32 %210 to i64
  %212 = getelementptr inbounds i8, ptr %71, i64 %211
  %213 = load i8, ptr %212, align 1, !tbaa !27
  store i8 %213, ptr %147, align 1, !tbaa !27
  store i8 32, ptr %146, align 1, !tbaa !27
  %214 = add nsw i32 %165, 1
  br label %242

215:                                              ; preds = %208, %208
  %216 = add i32 %140, 1
  %217 = zext i32 %216 to i64
  %218 = getelementptr inbounds i8, ptr %71, i64 %217
  %219 = load i8, ptr %218, align 1, !tbaa !27
  store i8 %219, ptr %147, align 1, !tbaa !27
  store i8 32, ptr %146, align 1, !tbaa !27
  store i8 %144, ptr %145, align 1, !tbaa !27
  %220 = add nsw i32 %165, 1
  %221 = add nuw nsw i32 %142, 1
  br label %242

222:                                              ; preds = %208, %208
  store i8 46, ptr %147, align 1, !tbaa !27
  store i8 32, ptr %146, align 1, !tbaa !27
  store i8 46, ptr %145, align 1, !tbaa !27
  %223 = add i32 %140, 1
  %224 = add nsw i32 %165, 1
  %225 = add nuw nsw i32 %142, 1
  br label %242

226:                                              ; preds = %208
  store i8 46, ptr %147, align 1, !tbaa !27
  store i8 32, ptr %146, align 1, !tbaa !27
  store i8 46, ptr %145, align 1, !tbaa !27
  %227 = add i32 %140, -3
  %228 = sub i32 %227, %165
  br label %242

229:                                              ; preds = %208, %208
  %230 = add i32 %140, 1
  %231 = zext i32 %230 to i64
  %232 = getelementptr inbounds i8, ptr %71, i64 %231
  %233 = load i8, ptr %232, align 1, !tbaa !27
  store i8 %233, ptr %147, align 1, !tbaa !27
  store i8 32, ptr %146, align 1, !tbaa !27
  store i8 %144, ptr %145, align 1, !tbaa !27
  %234 = add nsw i32 %165, 1
  %235 = add nuw nsw i32 %142, 1
  br label %242

236:                                              ; preds = %208
  %237 = add i32 %140, 1
  %238 = zext i32 %237 to i64
  %239 = getelementptr inbounds i8, ptr %71, i64 %238
  %240 = load i8, ptr %239, align 1, !tbaa !27
  store i8 %240, ptr %147, align 1, !tbaa !27
  store i8 32, ptr %146, align 1, !tbaa !27
  store i8 %144, ptr %145, align 1, !tbaa !27
  %241 = add nsw i32 %165, 1
  br label %242

242:                                              ; preds = %236, %229, %226, %222, %215, %209, %201, %168, %153
  %243 = phi i8 [ %144, %153 ], [ %144, %168 ], [ %184, %201 ], [ %144, %236 ], [ %144, %229 ], [ %144, %226 ], [ %144, %222 ], [ %144, %215 ], [ %144, %209 ]
  %244 = phi i32 [ 0, %153 ], [ %173, %168 ], [ %207, %201 ], [ %241, %236 ], [ %234, %229 ], [ -3, %226 ], [ %224, %222 ], [ %220, %215 ], [ %214, %209 ]
  %245 = phi i32 [ %142, %153 ], [ %142, %168 ], [ 1, %201 ], [ 0, %236 ], [ %235, %229 ], [ 6, %226 ], [ %225, %222 ], [ %221, %215 ], [ 0, %209 ]
  %246 = phi i32 [ %141, %153 ], [ %141, %168 ], [ %202, %201 ], [ %141, %236 ], [ %141, %229 ], [ %141, %226 ], [ %141, %222 ], [ %141, %215 ], [ %141, %209 ]
  %247 = phi i32 [ %154, %153 ], [ %140, %168 ], [ %203, %201 ], [ %237, %236 ], [ %230, %229 ], [ %228, %226 ], [ %223, %222 ], [ %216, %215 ], [ %210, %209 ]
  %248 = phi i32 [ %158, %153 ], [ %169, %168 ], [ %139, %201 ], [ %139, %236 ], [ %139, %229 ], [ %139, %226 ], [ %139, %222 ], [ %139, %215 ], [ %139, %209 ]
  %249 = phi ptr [ %152, %153 ], [ %166, %168 ], [ %166, %201 ], [ %166, %236 ], [ %166, %229 ], [ %166, %226 ], [ %166, %222 ], [ %166, %215 ], [ %166, %209 ]
  %250 = phi i32 [ %134, %153 ], [ %134, %168 ], [ %185, %201 ], [ %134, %236 ], [ %134, %229 ], [ %134, %226 ], [ %134, %222 ], [ %134, %215 ], [ %134, %209 ]
  %251 = phi ptr [ %133, %153 ], [ %133, %168 ], [ %194, %201 ], [ %133, %236 ], [ %133, %229 ], [ %133, %226 ], [ %133, %222 ], [ %133, %215 ], [ %133, %209 ]
  %252 = getelementptr inbounds i8, ptr %145, i64 1
  %253 = getelementptr inbounds i8, ptr %146, i64 1
  %254 = getelementptr inbounds i8, ptr %147, i64 1
  %255 = icmp ult ptr %254, getelementptr inbounds ([51 x i8], ptr @ALINE, i64 0, i64 50)
  br i1 %255, label %256, label %272

256:                                              ; preds = %242, %208
  %257 = phi ptr [ %251, %242 ], [ %133, %208 ]
  %258 = phi i32 [ %250, %242 ], [ %134, %208 ]
  %259 = phi ptr [ %249, %242 ], [ %166, %208 ]
  %260 = phi i32 [ %248, %242 ], [ %139, %208 ]
  %261 = phi i32 [ %247, %242 ], [ %140, %208 ]
  %262 = phi i32 [ %246, %242 ], [ %141, %208 ]
  %263 = phi i32 [ %245, %242 ], [ %142, %208 ]
  %264 = phi i32 [ %244, %242 ], [ %165, %208 ]
  %265 = phi i8 [ %243, %242 ], [ %144, %208 ]
  %266 = phi ptr [ %252, %242 ], [ %145, %208 ]
  %267 = phi ptr [ %253, %242 ], [ %146, %208 ]
  %268 = phi ptr [ %254, %242 ], [ %147, %208 ]
  %269 = icmp ult i32 %261, %77
  %270 = icmp ult i32 %260, %78
  %271 = select i1 %269, i1 true, i1 %270
  br i1 %271, label %306, label %272

272:                                              ; preds = %256, %242
  %273 = phi ptr [ %257, %256 ], [ %251, %242 ]
  %274 = phi i32 [ %258, %256 ], [ %250, %242 ]
  %275 = phi ptr [ %259, %256 ], [ %249, %242 ]
  %276 = phi i32 [ %260, %256 ], [ %248, %242 ]
  %277 = phi i32 [ %261, %256 ], [ %247, %242 ]
  %278 = phi i32 [ %262, %256 ], [ %246, %242 ]
  %279 = phi i32 [ %263, %256 ], [ %245, %242 ]
  %280 = phi i32 [ %264, %256 ], [ %244, %242 ]
  %281 = phi i8 [ %265, %256 ], [ %243, %242 ]
  %282 = phi ptr [ %266, %256 ], [ %252, %242 ]
  %283 = phi ptr [ %267, %256 ], [ %253, %242 ]
  %284 = phi ptr [ %268, %256 ], [ %254, %242 ]
  store i8 0, ptr %282, align 1, !tbaa !27
  store i8 0, ptr %283, align 1, !tbaa !27
  store i8 0, ptr %284, align 1, !tbaa !27
  %285 = add i32 %138, 1
  %286 = mul i32 %138, 50
  %287 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %99, i32 noundef %286) #35
  %288 = icmp ult ptr %284, getelementptr inbounds ([51 x i8], ptr @ALINE, i64 0, i64 10)
  br i1 %288, label %294, label %289

289:                                              ; preds = %289, %272
  %290 = phi ptr [ %292, %289 ], [ getelementptr inbounds ([51 x i8], ptr @ALINE, i64 0, i64 10), %272 ]
  %291 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4) #35
  %292 = getelementptr inbounds i8, ptr %290, i64 10
  %293 = icmp ugt ptr %292, %284
  br i1 %293, label %294, label %289, !llvm.loop !196

294:                                              ; preds = %289, %272
  %295 = phi ptr [ getelementptr inbounds ([51 x i8], ptr @ALINE, i64 0, i64 10), %272 ], [ %292, %289 ]
  %296 = getelementptr inbounds i8, ptr %284, i64 5
  %297 = icmp ugt ptr %295, %296
  br i1 %297, label %300, label %298

298:                                              ; preds = %294
  %299 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5) #35
  br label %300

300:                                              ; preds = %298, %294
  %301 = load i32, ptr getelementptr inbounds (%struct._options_t, ptr @options, i64 0, i32 15), align 4, !tbaa !31
  %302 = add i32 %301, %137
  %303 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, i32 noundef %99, i32 noundef %302, ptr noundef nonnull @ALINE, i32 noundef %99, ptr noundef nonnull @.str.7, ptr noundef nonnull @CLINE, i32 noundef %99, i32 noundef %136, ptr noundef nonnull @BLINE) #35
  %304 = add i32 %277, %69
  %305 = add i32 %276, %73
  br label %306

306:                                              ; preds = %300, %256
  %307 = phi ptr [ %273, %300 ], [ %257, %256 ]
  %308 = phi i32 [ %274, %300 ], [ %258, %256 ]
  %309 = phi ptr [ %275, %300 ], [ %259, %256 ]
  %310 = phi i32 [ %276, %300 ], [ %260, %256 ]
  %311 = phi i32 [ %277, %300 ], [ %261, %256 ]
  %312 = phi i32 [ %278, %300 ], [ %262, %256 ]
  %313 = phi i32 [ %279, %300 ], [ %263, %256 ]
  %314 = phi i32 [ %280, %300 ], [ %264, %256 ]
  %315 = phi i8 [ %281, %300 ], [ %265, %256 ]
  %316 = phi ptr [ @ALINE, %300 ], [ %268, %256 ]
  %317 = phi ptr [ @BLINE, %300 ], [ %267, %256 ]
  %318 = phi ptr [ @CLINE, %300 ], [ %266, %256 ]
  %319 = phi i32 [ %285, %300 ], [ %138, %256 ]
  %320 = phi i32 [ %304, %300 ], [ %137, %256 ]
  %321 = phi i32 [ %305, %300 ], [ %136, %256 ]
  %322 = icmp ult i32 %311, %77
  %323 = icmp ult i32 %310, %78
  %324 = select i1 %322, i1 true, i1 %323
  br i1 %324, label %132, label %325, !llvm.loop !197

325:                                              ; preds = %306, %124
  tail call void @free(ptr noundef %21) #31
  tail call void @free(ptr noundef nonnull %13) #31
  %326 = icmp eq ptr %14, null
  br i1 %326, label %327, label %12, !llvm.loop !198

327:                                              ; preds = %325
  store ptr null, ptr %2, align 8, !tbaa !180
  br label %328

328:                                              ; preds = %327, %3
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @free_align(ptr noundef %0) unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %15, label %3

3:                                                ; preds = %13, %1
  %4 = phi ptr [ %5, %13 ], [ %0, %1 ]
  %5 = load ptr, ptr %4, align 8, !tbaa !158
  %6 = getelementptr inbounds %struct._edit_script_list, ptr %4, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !160
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %9, %3
  %10 = phi ptr [ %11, %9 ], [ %7, %3 ]
  %11 = load ptr, ptr %10, align 8, !tbaa !169
  tail call void @free(ptr noundef nonnull %10) #31
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %9, !llvm.loop !193

13:                                               ; preds = %9, %3
  tail call void @free(ptr noundef nonnull %4) #31
  %14 = icmp eq ptr %5, null
  br i1 %14, label %15, label %3, !llvm.loop !199

15:                                               ; preds = %13, %1
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @exon_cores(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr nocapture noundef %6, ptr nocapture noundef %7, ptr noundef %8) unnamed_addr #0 {
  %10 = alloca %struct._hash_node_t, align 4
  %11 = icmp ne ptr %8, null
  %12 = zext i1 %11 to i32
  %13 = getelementptr inbounds %struct._hash_env_t, ptr %0, i64 0, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !46
  %15 = add i32 %2, 1
  %16 = add i32 %15, %14
  %17 = zext i32 %16 to i64
  %18 = tail call fastcc ptr @xcalloc(i64 noundef %17, i64 noundef 4) #31
  %19 = load i32, ptr %13, align 8, !tbaa !46
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds i32, ptr %18, i64 %20
  %22 = icmp eq i32 %2, 0
  br i1 %22, label %234, label %23

23:                                               ; preds = %9
  %24 = getelementptr inbounds %struct._hash_env_t, ptr %0, i64 0, i32 5
  %25 = getelementptr inbounds %struct._hash_env_t, ptr %0, i64 0, i32 4
  %26 = getelementptr inbounds %struct._hash_env_t, ptr %0, i64 0, i32 1
  %27 = zext i32 %2 to i64
  %28 = getelementptr inbounds i8, ptr %1, i64 %27
  %29 = ptrtoint ptr %1 to i64
  %30 = getelementptr inbounds %struct._collec_t, ptr %6, i64 0, i32 1
  %31 = getelementptr inbounds %struct._hash_env_t, ptr %0, i64 0, i32 3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #30
  br label %35

32:                                               ; preds = %66, %47
  %33 = phi i32 [ %74, %66 ], [ %57, %47 ]
  %34 = phi ptr [ %69, %66 ], [ %52, %47 ]
  br label %35

35:                                               ; preds = %32, %23
  %36 = phi i32 [ 0, %23 ], [ %33, %32 ]
  %37 = phi ptr [ %1, %23 ], [ %34, %32 ]
  store i32 0, ptr %10, align 4, !tbaa !87
  %38 = load i32, ptr %24, align 4, !tbaa !43
  %39 = icmp ugt i32 %38, 1
  %40 = icmp ult i32 %36, %2
  %41 = select i1 %39, i1 %40, i1 false
  br i1 %41, label %47, label %42

42:                                               ; preds = %59, %35
  %43 = phi i32 [ %36, %35 ], [ %57, %59 ]
  %44 = phi ptr [ %37, %35 ], [ %52, %59 ]
  %45 = call i32 @llvm.umax.i32(i32 %43, i32 %2)
  %46 = icmp ult i32 %43, %2
  br i1 %46, label %66, label %233

47:                                               ; preds = %59, %35
  %48 = phi ptr [ %52, %59 ], [ %37, %35 ]
  %49 = phi i32 [ %57, %59 ], [ %36, %35 ]
  %50 = phi i32 [ %62, %59 ], [ 1, %35 ]
  %51 = phi i32 [ %61, %59 ], [ 0, %35 ]
  %52 = getelementptr inbounds i8, ptr %48, i64 1
  %53 = load i8, ptr %48, align 1, !tbaa !27
  %54 = zext i8 %53 to i64
  %55 = getelementptr inbounds [128 x i32], ptr @encoding, i64 0, i64 %54
  %56 = load i32, ptr %55, align 4, !tbaa !11
  %57 = add nuw i32 %49, 1
  %58 = icmp ugt i32 %56, 3
  br i1 %58, label %32, label %59

59:                                               ; preds = %47
  %60 = shl i32 %51, 2
  %61 = add nuw i32 %56, %60
  store i32 %61, ptr %10, align 4, !tbaa !87
  %62 = add nuw i32 %50, 1
  %63 = icmp ult i32 %62, %38
  %64 = icmp ult i32 %57, %2
  %65 = select i1 %63, i1 %64, i1 false
  br i1 %65, label %47, label %42, !llvm.loop !200

66:                                               ; preds = %231, %42
  %67 = phi ptr [ %69, %231 ], [ %44, %42 ]
  %68 = phi i32 [ %74, %231 ], [ %43, %42 ]
  %69 = getelementptr inbounds i8, ptr %67, i64 1
  %70 = load i8, ptr %67, align 1, !tbaa !27
  %71 = zext i8 %70 to i64
  %72 = getelementptr inbounds [128 x i32], ptr @encoding, i64 0, i64 %71
  %73 = load i32, ptr %72, align 4, !tbaa !11
  %74 = add i32 %68, 1
  %75 = icmp ult i32 %73, 4
  br i1 %75, label %76, label %32

76:                                               ; preds = %66
  %77 = load i32, ptr %10, align 4, !tbaa !87
  %78 = load i32, ptr %25, align 8, !tbaa !47
  %79 = and i32 %78, %77
  %80 = shl i32 %79, 2
  %81 = add nuw i32 %80, %73
  store i32 %81, ptr %10, align 4, !tbaa !87
  %82 = load ptr, ptr %0, align 8, !tbaa !49
  %83 = and i32 %81, 524287
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds ptr, ptr %82, i64 %84
  %86 = call ptr @tfind(ptr noundef nonnull %10, ptr noundef %85, ptr noundef nonnull @hash_node_compare) #31
  %87 = icmp eq ptr %86, null
  br i1 %87, label %231, label %88

88:                                               ; preds = %76
  %89 = load ptr, ptr %86, align 8, !tbaa !7
  %90 = getelementptr inbounds %struct._hash_node_t, ptr %89, i64 0, i32 1
  %91 = load i32, ptr %90, align 4, !tbaa !11
  %92 = icmp sgt i32 %91, -1
  br i1 %92, label %93, label %231

93:                                               ; preds = %88
  %94 = sext i32 %74 to i64
  %95 = getelementptr inbounds i8, ptr %1, i64 %94
  %96 = icmp slt i64 %94, %27
  br label %97

97:                                               ; preds = %225, %93
  %98 = phi i32 [ %91, %93 ], [ %229, %225 ]
  %99 = sub nsw i32 %74, %98
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, ptr %21, i64 %100
  %102 = load i32, ptr %101, align 4, !tbaa !11
  %103 = icmp sgt i32 %102, %98
  br i1 %103, label %104, label %106

104:                                              ; preds = %97
  %105 = zext i32 %98 to i64
  br label %225

106:                                              ; preds = %97
  %107 = load ptr, ptr %26, align 8, !tbaa !45
  %108 = zext i32 %98 to i64
  %109 = getelementptr inbounds i8, ptr %107, i64 %108
  br i1 %96, label %110, label %139

110:                                              ; preds = %106
  %111 = load i32, ptr %13, align 8, !tbaa !46
  %112 = zext i32 %111 to i64
  %113 = getelementptr inbounds i8, ptr %107, i64 %112
  %114 = load i32, ptr getelementptr inbounds (%struct._options_t, ptr @options, i64 0, i32 14), align 8
  %115 = load i32, ptr getelementptr inbounds (%struct._options_t, ptr @options, i64 0, i32 12), align 8
  %116 = load i32, ptr getelementptr inbounds (%struct._options_t, ptr @options, i64 0, i32 10), align 8
  br label %117

117:                                              ; preds = %127, %110
  %118 = phi i32 [ 0, %110 ], [ %134, %127 ]
  %119 = phi i32 [ 0, %110 ], [ %137, %127 ]
  %120 = phi ptr [ %95, %110 ], [ %128, %127 ]
  %121 = phi ptr [ %109, %110 ], [ %130, %127 ]
  %122 = phi ptr [ %109, %110 ], [ %136, %127 ]
  %123 = icmp uge ptr %121, %113
  %124 = sub nsw i32 %119, %114
  %125 = icmp slt i32 %118, %124
  %126 = select i1 %123, i1 true, i1 %125
  br i1 %126, label %139, label %127

127:                                              ; preds = %117
  %128 = getelementptr inbounds i8, ptr %120, i64 1
  %129 = load i8, ptr %120, align 1, !tbaa !27
  %130 = getelementptr inbounds i8, ptr %121, i64 1
  %131 = load i8, ptr %121, align 1, !tbaa !27
  %132 = icmp eq i8 %129, %131
  %133 = select i1 %132, i32 %115, i32 %116
  %134 = add nsw i32 %133, %118
  %135 = icmp sgt i32 %134, %119
  %136 = select i1 %135, ptr %130, ptr %122
  %137 = call i32 @llvm.smax.i32(i32 %134, i32 %119)
  %138 = icmp ult ptr %128, %28
  br i1 %138, label %117, label %139, !llvm.loop !201

139:                                              ; preds = %127, %117, %106
  %140 = phi ptr [ %109, %106 ], [ %136, %127 ], [ %122, %117 ]
  %141 = phi i32 [ 0, %106 ], [ %137, %127 ], [ %119, %117 ]
  %142 = load i32, ptr %24, align 4, !tbaa !43
  %143 = zext i32 %142 to i64
  %144 = sub nsw i64 0, %143
  %145 = getelementptr inbounds i8, ptr %109, i64 %144
  %146 = getelementptr inbounds i8, ptr %95, i64 %144
  %147 = icmp ugt ptr %146, %1
  %148 = icmp ugt ptr %145, %107
  %149 = select i1 %147, i1 %148, i1 false
  br i1 %149, label %150, label %178

150:                                              ; preds = %139
  %151 = load i32, ptr getelementptr inbounds (%struct._options_t, ptr @options, i64 0, i32 14), align 8, !tbaa !18
  %152 = load i32, ptr getelementptr inbounds (%struct._options_t, ptr @options, i64 0, i32 12), align 8
  %153 = load i32, ptr getelementptr inbounds (%struct._options_t, ptr @options, i64 0, i32 10), align 8
  br label %154

154:                                              ; preds = %163, %150
  %155 = phi ptr [ %146, %150 ], [ %174, %163 ]
  %156 = phi ptr [ %145, %150 ], [ %173, %163 ]
  %157 = phi i32 [ 0, %150 ], [ %170, %163 ]
  %158 = phi i32 [ 0, %150 ], [ %172, %163 ]
  %159 = phi ptr [ %146, %150 ], [ %164, %163 ]
  %160 = phi ptr [ %145, %150 ], [ %166, %163 ]
  %161 = sub nsw i32 %158, %151
  %162 = icmp slt i32 %157, %161
  br i1 %162, label %178, label %163

163:                                              ; preds = %154
  %164 = getelementptr inbounds i8, ptr %159, i64 -1
  %165 = load i8, ptr %164, align 1, !tbaa !27
  %166 = getelementptr inbounds i8, ptr %160, i64 -1
  %167 = load i8, ptr %166, align 1, !tbaa !27
  %168 = icmp eq i8 %165, %167
  %169 = select i1 %168, i32 %152, i32 %153
  %170 = add nsw i32 %169, %157
  %171 = icmp sgt i32 %170, %158
  %172 = call i32 @llvm.smax.i32(i32 %170, i32 %158)
  %173 = select i1 %171, ptr %166, ptr %156
  %174 = select i1 %171, ptr %164, ptr %155
  %175 = icmp ugt ptr %164, %1
  %176 = icmp ugt ptr %166, %107
  %177 = select i1 %175, i1 %176, i1 false
  br i1 %177, label %154, label %178, !llvm.loop !202

178:                                              ; preds = %163, %154, %139
  %179 = phi i32 [ 0, %139 ], [ %158, %154 ], [ %172, %163 ]
  %180 = phi ptr [ %145, %139 ], [ %156, %154 ], [ %173, %163 ]
  %181 = phi ptr [ %146, %139 ], [ %155, %154 ], [ %174, %163 ]
  %182 = add i32 %142, %141
  %183 = add i32 %182, %179
  %184 = icmp slt i32 %183, %5
  br i1 %184, label %185, label %187

185:                                              ; preds = %178
  %186 = ptrtoint ptr %140 to i64
  br label %217

187:                                              ; preds = %178
  %188 = ptrtoint ptr %180 to i64
  %189 = ptrtoint ptr %107 to i64
  %190 = sub i64 %188, %189
  %191 = trunc i64 %190 to i32
  %192 = ptrtoint ptr %181 to i64
  %193 = sub i64 %192, %29
  %194 = trunc i64 %193 to i32
  %195 = ptrtoint ptr %140 to i64
  %196 = xor i64 %189, -1
  %197 = add i64 %195, %196
  %198 = trunc i64 %197 to i32
  %199 = getelementptr inbounds i8, ptr %140, i64 %193
  %200 = ptrtoint ptr %199 to i64
  %201 = xor i64 %188, -1
  %202 = add i64 %200, %201
  %203 = trunc i64 %202 to i32
  %204 = call fastcc ptr @xmalloc(i64 noundef 32) #31
  store i32 %191, ptr %204, align 4, !tbaa !94
  %205 = getelementptr inbounds %struct._exon_t, ptr %204, i64 0, i32 1
  store i32 %194, ptr %205, align 4, !tbaa !92
  %206 = getelementptr inbounds %struct._exon_t, ptr %204, i64 0, i32 2
  store i32 %198, ptr %206, align 4, !tbaa !97
  %207 = getelementptr inbounds %struct._exon_t, ptr %204, i64 0, i32 3
  store i32 %203, ptr %207, align 4, !tbaa !98
  call fastcc void @add_col_elt(ptr noundef %6, ptr noundef nonnull %204) #35
  %208 = load ptr, ptr %6, align 8, !tbaa !27
  %209 = load i32, ptr %30, align 8, !tbaa !52
  %210 = add i32 %209, -1
  %211 = zext i32 %210 to i64
  %212 = getelementptr inbounds ptr, ptr %208, i64 %211
  %213 = load ptr, ptr %212, align 8, !tbaa !7
  %214 = getelementptr inbounds %struct._exon_t, ptr %213, i64 0, i32 4
  store i32 %183, ptr %214, align 4, !tbaa !178
  %215 = load ptr, ptr %26, align 8, !tbaa !45
  %216 = load i32, ptr %24, align 4, !tbaa !43
  br label %217

217:                                              ; preds = %187, %185
  %218 = phi i64 [ %186, %185 ], [ %195, %187 ]
  %219 = phi i32 [ %142, %185 ], [ %216, %187 ]
  %220 = phi ptr [ %107, %185 ], [ %215, %187 ]
  %221 = ptrtoint ptr %220 to i64
  %222 = sub i64 %218, %221
  %223 = trunc i64 %222 to i32
  %224 = add i32 %219, %223
  store i32 %224, ptr %101, align 4, !tbaa !11
  br label %225

225:                                              ; preds = %217, %104
  %226 = phi i64 [ %105, %104 ], [ %108, %217 ]
  %227 = load ptr, ptr %31, align 8, !tbaa !48
  %228 = getelementptr inbounds i32, ptr %227, i64 %226
  %229 = load i32, ptr %228, align 4, !tbaa !11
  %230 = icmp sgt i32 %229, -1
  br i1 %230, label %97, label %231, !llvm.loop !203

231:                                              ; preds = %225, %88, %76
  %232 = icmp eq i32 %74, %45
  br i1 %232, label %233, label %66

233:                                              ; preds = %231, %42
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #30
  br label %234

234:                                              ; preds = %233, %9
  call void @free(ptr noundef %18) #31
  %235 = load ptr, ptr %6, align 8, !tbaa !27
  %236 = getelementptr inbounds %struct._collec_t, ptr %6, i64 0, i32 1
  %237 = load i32, ptr %236, align 8, !tbaa !52
  %238 = zext i32 %237 to i64
  call void @qsort(ptr noundef %235, i64 noundef %238, i64 noundef 8, ptr noundef nonnull @msp_rna_compare) #31
  %239 = load i32, ptr %236, align 8, !tbaa !52
  %240 = icmp eq i32 %239, 0
  br i1 %240, label %306, label %241

241:                                              ; preds = %302, %234
  %242 = phi i32 [ %303, %302 ], [ %239, %234 ]
  %243 = phi i32 [ %304, %302 ], [ 0, %234 ]
  %244 = load ptr, ptr %6, align 8, !tbaa !27
  %245 = zext i32 %243 to i64
  %246 = getelementptr inbounds ptr, ptr %244, i64 %245
  %247 = load ptr, ptr %246, align 8, !tbaa !7
  %248 = getelementptr inbounds %struct._exon_t, ptr %247, i64 0, i32 3
  %249 = load i32, ptr %248, align 4, !tbaa !98
  %250 = getelementptr inbounds %struct._exon_t, ptr %247, i64 0, i32 1
  %251 = load i32, ptr %250, align 4, !tbaa !92
  %252 = sub i32 %249, %251
  %253 = icmp ugt i32 %252, 49
  br i1 %253, label %254, label %256

254:                                              ; preds = %241
  %255 = add nuw i32 %243, 1
  br label %302, !llvm.loop !204

256:                                              ; preds = %241
  %257 = add i32 %249, 5
  %258 = add nuw i32 %243, 1
  %259 = icmp ult i32 %258, %242
  br i1 %259, label %260, label %275

260:                                              ; preds = %256
  %261 = zext i32 %258 to i64
  br label %262

262:                                              ; preds = %269, %260
  %263 = phi i64 [ %261, %260 ], [ %270, %269 ]
  %264 = getelementptr inbounds ptr, ptr %244, i64 %263
  %265 = load ptr, ptr %264, align 8, !tbaa !7
  %266 = getelementptr inbounds %struct._exon_t, ptr %265, i64 0, i32 3
  %267 = load i32, ptr %266, align 4, !tbaa !98
  %268 = icmp ugt i32 %267, %257
  br i1 %268, label %273, label %269

269:                                              ; preds = %262
  %270 = add nuw nsw i64 %263, 1
  %271 = trunc i64 %270 to i32
  %272 = icmp eq i32 %242, %271
  br i1 %272, label %275, label %262, !llvm.loop !205

273:                                              ; preds = %262
  %.lcssa25 = phi i64 [ %263, %262 ]
  %274 = trunc i64 %.lcssa25 to i32
  br label %275

275:                                              ; preds = %273, %269, %256
  %276 = phi i32 [ %258, %256 ], [ %274, %273 ], [ %242, %269 ]
  %277 = sub i32 %276, %243
  %278 = icmp ult i32 %277, 20
  br i1 %278, label %302, label %279, !llvm.loop !204

279:                                              ; preds = %275
  %280 = icmp ult i32 %243, %276
  %281 = zext i32 %276 to i64
  br i1 %280, label %282, label %292

282:                                              ; preds = %282, %279
  %283 = phi i64 [ %287, %282 ], [ %245, %279 ]
  %284 = load ptr, ptr %6, align 8, !tbaa !27
  %285 = getelementptr inbounds ptr, ptr %284, i64 %283
  %286 = load ptr, ptr %285, align 8, !tbaa !7
  call void @free(ptr noundef %286) #31
  %287 = add nuw nsw i64 %283, 1
  %288 = icmp eq i64 %287, %281
  br i1 %288, label %289, label %282, !llvm.loop !206

289:                                              ; preds = %282
  %290 = load ptr, ptr %6, align 8, !tbaa !27
  %291 = load i32, ptr %236, align 8, !tbaa !52
  br label %292

292:                                              ; preds = %289, %279
  %293 = phi i32 [ %291, %289 ], [ %242, %279 ]
  %294 = phi ptr [ %290, %289 ], [ %244, %279 ]
  %295 = getelementptr inbounds ptr, ptr %294, i64 %245
  %296 = getelementptr inbounds ptr, ptr %294, i64 %281
  %297 = sub i32 %293, %276
  %298 = zext i32 %297 to i64
  %299 = shl nuw nsw i64 %298, 3
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %295, ptr nonnull align 8 %296, i64 %299, i1 false)
  %300 = load i32, ptr %236, align 8, !tbaa !52
  %301 = sub i32 %300, %277
  store i32 %301, ptr %236, align 8, !tbaa !52
  br label %302

302:                                              ; preds = %292, %275, %254
  %303 = phi i32 [ %242, %254 ], [ %301, %292 ], [ %242, %275 ]
  %304 = phi i32 [ %255, %254 ], [ %243, %292 ], [ %258, %275 ]
  %305 = icmp ult i32 %304, %303
  br i1 %305, label %241, label %306

306:                                              ; preds = %302, %234
  %307 = phi i32 [ 0, %234 ], [ %303, %302 ]
  %308 = load ptr, ptr %6, align 8, !tbaa !27
  %309 = zext i32 %307 to i64
  call void @qsort(ptr noundef %308, i64 noundef %309, i64 noundef 8, ptr noundef nonnull @msp_compare) #31
  %310 = load i32, ptr %236, align 8, !tbaa !52
  %311 = icmp eq i32 %310, 0
  br i1 %311, label %411, label %312

312:                                              ; preds = %405, %306
  %313 = phi i32 [ %406, %405 ], [ %310, %306 ]
  %314 = phi i32 [ %407, %405 ], [ 0, %306 ]
  %315 = load ptr, ptr %6, align 8, !tbaa !27
  %316 = zext i32 %314 to i64
  %317 = getelementptr inbounds ptr, ptr %315, i64 %316
  %318 = load ptr, ptr %317, align 8, !tbaa !7
  %319 = add nuw i32 %314, 1
  %320 = icmp ult i32 %319, %313
  br i1 %320, label %321, label %405

321:                                              ; preds = %312
  %322 = getelementptr inbounds %struct._exon_t, ptr %318, i64 0, i32 3
  %323 = load i32, ptr %322, align 4, !tbaa !98
  %324 = add i32 %323, 1
  %325 = load i32, ptr %318, align 4, !tbaa !94
  %326 = getelementptr inbounds %struct._exon_t, ptr %318, i64 0, i32 2
  %327 = add nuw nsw i64 %316, 1
  %328 = add i32 %323, 2
  br label %329

329:                                              ; preds = %364, %321
  %330 = phi i64 [ %327, %321 ], [ %365, %364 ]
  %331 = getelementptr inbounds ptr, ptr %315, i64 %330
  %332 = load ptr, ptr %331, align 8, !tbaa !7
  %333 = getelementptr inbounds %struct._exon_t, ptr %332, i64 0, i32 1
  %334 = load i32, ptr %333, align 4, !tbaa !92
  %335 = icmp ugt i32 %334, %324
  %336 = sub i32 %328, %334
  %337 = select i1 %335, i32 0, i32 %336
  %338 = load i32, ptr %332, align 4, !tbaa !94
  %339 = icmp ugt i32 %338, %325
  br i1 %339, label %340, label %344

340:                                              ; preds = %329
  %341 = load i32, ptr %326, align 4, !tbaa !97
  %342 = add i32 %341, 1
  %343 = icmp ugt i32 %338, %342
  br i1 %343, label %344, label %350

344:                                              ; preds = %340, %329
  %345 = icmp eq i32 %337, 0
  %346 = add nuw nsw i64 %330, 1
  %347 = trunc i64 %346 to i32
  %348 = icmp eq i32 %313, %347
  %349 = select i1 %345, i1 true, i1 %348
  br i1 %349, label %405, label %364

350:                                              ; preds = %340
  %351 = sub i32 %341, %338
  %352 = add i32 %351, 2
  %353 = icmp ne i32 %337, 0
  %354 = icmp eq i32 %352, 0
  %355 = xor i1 %353, %354
  br i1 %355, label %356, label %360

356:                                              ; preds = %350
  %357 = sub nsw i32 %337, %352
  %358 = call i32 @llvm.abs.i32(i32 %357, i1 true)
  %359 = icmp ult i32 %358, 11
  br i1 %359, label %366, label %360

360:                                              ; preds = %356, %350
  %361 = add nuw nsw i64 %330, 1
  %362 = trunc i64 %361 to i32
  %363 = icmp eq i32 %313, %362
  br i1 %363, label %405, label %364

364:                                              ; preds = %360, %344
  %365 = phi i64 [ %361, %360 ], [ %346, %344 ]
  br label %329, !llvm.loop !207

366:                                              ; preds = %356
  %.lcssa23 = phi i32 [ %341, %356 ]
  %.lcssa22 = phi i64 [ %330, %356 ]
  %.lcssa21 = phi i32 [ %337, %356 ]
  %367 = trunc i64 %.lcssa22 to i32
  %368 = icmp eq i32 %.lcssa21, 0
  br i1 %368, label %405, label %369

369:                                              ; preds = %366
  %370 = and i64 %.lcssa22, 4294967295
  %371 = getelementptr inbounds ptr, ptr %315, i64 %370
  %372 = load ptr, ptr %371, align 8, !tbaa !7
  %373 = getelementptr inbounds %struct._exon_t, ptr %318, i64 0, i32 4
  %374 = load i32, ptr %373, align 4, !tbaa !178
  %375 = getelementptr inbounds %struct._exon_t, ptr %372, i64 0, i32 4
  %376 = load i32, ptr %375, align 4, !tbaa !178
  %377 = add i32 %376, %374
  %378 = add i32 %.lcssa21, 1
  %379 = call i32 @llvm.usub.sat.i32(i32 %377, i32 %378)
  %380 = load i32, ptr %372, align 4, !tbaa !94
  %381 = call i32 @llvm.umin.i32(i32 %325, i32 %380)
  store i32 %381, ptr %318, align 4, !tbaa !94
  %382 = getelementptr inbounds %struct._exon_t, ptr %318, i64 0, i32 1
  %383 = load i32, ptr %382, align 4, !tbaa !92
  %384 = getelementptr inbounds %struct._exon_t, ptr %372, i64 0, i32 1
  %385 = load i32, ptr %384, align 4, !tbaa !92
  %386 = call i32 @llvm.umin.i32(i32 %383, i32 %385)
  store i32 %386, ptr %382, align 4, !tbaa !92
  %387 = getelementptr inbounds %struct._exon_t, ptr %372, i64 0, i32 2
  %388 = load i32, ptr %387, align 4, !tbaa !97
  %389 = call i32 @llvm.umax.i32(i32 %.lcssa23, i32 %388)
  store i32 %389, ptr %326, align 4, !tbaa !97
  %390 = getelementptr inbounds %struct._exon_t, ptr %372, i64 0, i32 3
  %391 = load i32, ptr %390, align 4, !tbaa !98
  %392 = call i32 @llvm.umax.i32(i32 %323, i32 %391)
  store i32 %392, ptr %322, align 4, !tbaa !98
  %393 = icmp ugt i32 %379, %374
  br i1 %393, label %394, label %395

394:                                              ; preds = %369
  store i32 %379, ptr %373, align 4, !tbaa !178
  br label %395

395:                                              ; preds = %394, %369
  %396 = add i32 %313, -1
  store i32 %396, ptr %236, align 8, !tbaa !52
  call void @free(ptr noundef nonnull %372) #31
  %397 = load ptr, ptr %6, align 8, !tbaa !27
  %398 = getelementptr inbounds ptr, ptr %397, i64 %370
  %399 = getelementptr inbounds ptr, ptr %398, i64 1
  %400 = load i32, ptr %236, align 8, !tbaa !52
  %401 = sub i32 %400, %367
  %402 = zext i32 %401 to i64
  %403 = shl nuw nsw i64 %402, 3
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %398, ptr nonnull align 8 %399, i64 %403, i1 false)
  %404 = load i32, ptr %236, align 8, !tbaa !52
  br label %405

405:                                              ; preds = %395, %366, %360, %344, %312
  %406 = phi i32 [ %404, %395 ], [ %313, %366 ], [ %313, %312 ], [ %313, %344 ], [ %313, %360 ]
  %407 = phi i32 [ %314, %395 ], [ %319, %366 ], [ %319, %312 ], [ %319, %344 ], [ %319, %360 ]
  %408 = icmp ult i32 %407, %406
  br i1 %408, label %312, label %409, !llvm.loop !208

409:                                              ; preds = %405
  %.lcssa24 = phi i32 [ %406, %405 ]
  %410 = icmp eq ptr %8, null
  br i1 %410, label %413, label %640

411:                                              ; preds = %306
  %412 = icmp eq ptr %8, null
  br i1 %412, label %432, label %640

413:                                              ; preds = %409
  %414 = icmp eq i32 %.lcssa24, 0
  br i1 %414, label %432, label %415

415:                                              ; preds = %413
  %416 = load ptr, ptr %6, align 8, !tbaa !27
  %417 = zext i32 %.lcssa24 to i64
  br label %418

418:                                              ; preds = %418, %415
  %419 = phi i64 [ 0, %415 ], [ %430, %418 ]
  %420 = phi i32 [ %2, %415 ], [ %426, %418 ]
  %421 = phi i32 [ 0, %415 ], [ %429, %418 ]
  %422 = getelementptr inbounds ptr, ptr %416, i64 %419
  %423 = load ptr, ptr %422, align 8, !tbaa !7
  %424 = getelementptr inbounds %struct._exon_t, ptr %423, i64 0, i32 1
  %425 = load i32, ptr %424, align 4, !tbaa !92
  %426 = call i32 @llvm.umin.i32(i32 %425, i32 %420)
  %427 = getelementptr inbounds %struct._exon_t, ptr %423, i64 0, i32 3
  %428 = load i32, ptr %427, align 4, !tbaa !98
  %429 = call i32 @llvm.umax.i32(i32 %428, i32 %421)
  %430 = add nuw nsw i64 %419, 1
  %431 = icmp eq i64 %430, %417
  br i1 %431, label %432, label %418, !llvm.loop !209

432:                                              ; preds = %418, %413, %411
  %433 = phi i1 [ true, %413 ], [ true, %411 ], [ false, %418 ]
  %434 = phi i32 [ 0, %413 ], [ 0, %411 ], [ %429, %418 ]
  %435 = phi i32 [ %2, %413 ], [ %2, %411 ], [ %426, %418 ]
  %436 = add i32 %434, 1
  %437 = sub i32 %436, %435
  %438 = lshr i32 %437, 2
  %439 = add i32 %438, %435
  %440 = icmp ugt i32 %434, %438
  %441 = select i1 %440, i32 %438, i32 0
  %442 = sub i32 %434, %441
  br i1 %433, label %465, label %443

443:                                              ; preds = %443, %432
  %444 = phi i64 [ %461, %443 ], [ 0, %432 ]
  %445 = load ptr, ptr %6, align 8, !tbaa !27
  %446 = getelementptr inbounds ptr, ptr %445, i64 %444
  %447 = load ptr, ptr %446, align 8, !tbaa !7
  %448 = getelementptr inbounds %struct._exon_t, ptr %447, i64 0, i32 1
  %449 = load i32, ptr %448, align 4, !tbaa !92
  %450 = icmp ult i32 %449, %439
  %451 = getelementptr inbounds %struct._exon_t, ptr %447, i64 0, i32 6
  %452 = load i64, ptr %451, align 4
  %453 = select i1 %450, i64 2, i64 0
  %454 = and i64 %452, -4
  %455 = or i64 %454, %453
  %456 = getelementptr inbounds %struct._exon_t, ptr %447, i64 0, i32 3
  %457 = load i32, ptr %456, align 4, !tbaa !98
  %458 = icmp ugt i32 %457, %442
  %459 = zext i1 %458 to i64
  %460 = or i64 %455, %459
  store i64 %460, ptr %451, align 4
  %461 = add nuw nsw i64 %444, 1
  %462 = load i32, ptr %236, align 8, !tbaa !52
  %463 = zext i32 %462 to i64
  %464 = icmp ult i64 %461, %463
  br i1 %464, label %443, label %465, !llvm.loop !210

465:                                              ; preds = %443, %432
  %466 = phi i32 [ 0, %432 ], [ %462, %443 ]
  %467 = call fastcc i32 @link_msps(ptr noundef nonnull %6, i32 noundef 0, i32 noundef %466) #35
  %468 = icmp sgt i32 %467, -1
  br i1 %468, label %469, label %679

469:                                              ; preds = %465
  %470 = load ptr, ptr %6, align 8, !tbaa !27
  %471 = zext i32 %467 to i64
  %472 = getelementptr inbounds ptr, ptr %470, i64 %471
  %473 = load ptr, ptr %472, align 8, !tbaa !7
  %474 = getelementptr inbounds %struct._exon_t, ptr %473, i64 0, i32 5
  %475 = load i32, ptr %474, align 4, !tbaa !211
  %476 = load i32, ptr getelementptr inbounds (%struct._options_t, ptr @options, i64 0, i32 16), align 8, !tbaa !19
  %477 = icmp ugt i32 %476, 49
  br i1 %477, label %478, label %481

478:                                              ; preds = %469
  %479 = mul i32 %476, %475
  %480 = udiv i32 %479, 100
  br label %484

481:                                              ; preds = %469
  %482 = lshr i32 %475, 2
  %483 = sub i32 %475, %482
  br label %484

484:                                              ; preds = %481, %478
  %485 = phi i32 [ %480, %478 ], [ %483, %481 ]
  %486 = load i32, ptr %236, align 8, !tbaa !52
  %487 = icmp ugt i32 %486, 1
  br i1 %487, label %488, label %624

488:                                              ; preds = %484
  %489 = getelementptr inbounds %struct._collec_t, ptr %7, i64 0, i32 1
  %490 = insertelement <4 x i32> poison, i32 %3, i64 0
  %491 = insertelement <4 x i32> %490, i32 %4, i64 1
  %492 = shufflevector <4 x i32> %491, <4 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  br label %493

493:                                              ; preds = %605, %488
  %494 = phi i32 [ %611, %605 ], [ %486, %488 ]
  %495 = phi ptr [ %606, %605 ], [ %470, %488 ]
  %496 = phi i64 [ %612, %605 ], [ 1, %488 ]
  %497 = phi i32 [ %.lcssa4, %605 ], [ %467, %488 ]
  %498 = phi i32 [ %.lcssa7, %605 ], [ 0, %488 ]
  %499 = phi i32 [ %610, %605 ], [ 0, %488 ]
  br label %500

500:                                              ; preds = %615, %493
  %501 = phi i32 [ %494, %493 ], [ %617, %615 ]
  %502 = phi ptr [ %495, %493 ], [ %548, %615 ]
  %503 = phi i64 [ %496, %493 ], [ %616, %615 ]
  %504 = phi i32 [ %497, %493 ], [ %547, %615 ]
  %505 = phi i1 [ true, %493 ], [ false, %615 ]
  %506 = zext i32 %501 to i64
  br label %507

507:                                              ; preds = %602, %500
  %508 = phi i64 [ %603, %602 ], [ %503, %500 ]
  %509 = add nsw i64 %508, -1
  %510 = getelementptr inbounds ptr, ptr %502, i64 %509
  %511 = load ptr, ptr %510, align 8, !tbaa !7
  %512 = getelementptr inbounds ptr, ptr %502, i64 %508
  %513 = load ptr, ptr %512, align 8, !tbaa !7
  %514 = getelementptr inbounds %struct._exon_t, ptr %511, i64 0, i32 6
  %515 = load i64, ptr %514, align 4
  %516 = and i64 %515, 1
  %517 = icmp eq i64 %516, 0
  br i1 %517, label %523, label %518

518:                                              ; preds = %507
  %519 = getelementptr inbounds %struct._exon_t, ptr %513, i64 0, i32 6
  %520 = load i64, ptr %519, align 4
  %521 = and i64 %520, 1
  %522 = icmp eq i64 %521, 0
  br i1 %522, label %537, label %523

523:                                              ; preds = %518, %507
  %524 = and i64 %515, 2
  %525 = icmp eq i64 %524, 0
  br i1 %525, label %526, label %531

526:                                              ; preds = %523
  %527 = getelementptr inbounds %struct._exon_t, ptr %513, i64 0, i32 6
  %528 = load i64, ptr %527, align 4
  %529 = and i64 %528, 2
  %530 = icmp eq i64 %529, 0
  br i1 %530, label %531, label %537

531:                                              ; preds = %526, %523
  br i1 %517, label %602, label %532

532:                                              ; preds = %531
  %533 = getelementptr inbounds %struct._exon_t, ptr %513, i64 0, i32 6
  %534 = load i64, ptr %533, align 4
  %535 = and i64 %534, 2
  %536 = icmp eq i64 %535, 0
  br i1 %536, label %602, label %537

537:                                              ; preds = %532, %526, %518
  %.lcssa2 = phi i64 [ %508, %532 ], [ %508, %526 ], [ %508, %518 ]
  %.lcssa = phi ptr [ %513, %532 ], [ %513, %526 ], [ %513, %518 ]
  %538 = trunc i64 %.lcssa2 to i32
  %539 = call fastcc i32 @link_msps(ptr noundef nonnull %6, i32 noundef %498, i32 noundef %538) #35
  %540 = load ptr, ptr %6, align 8, !tbaa !27
  %541 = sext i32 %539 to i64
  %542 = getelementptr inbounds ptr, ptr %540, i64 %541
  %543 = load ptr, ptr %542, align 8, !tbaa !7
  %544 = getelementptr inbounds %struct._exon_t, ptr %543, i64 0, i32 5
  %545 = load i32, ptr %544, align 4, !tbaa !211
  %546 = load i32, ptr %236, align 8, !tbaa !52
  %547 = call fastcc i32 @link_msps(ptr noundef nonnull %6, i32 noundef %538, i32 noundef %546) #35
  %548 = load ptr, ptr %6, align 8, !tbaa !27
  %549 = sext i32 %547 to i64
  %550 = getelementptr inbounds ptr, ptr %548, i64 %549
  %551 = load ptr, ptr %550, align 8, !tbaa !7
  %552 = getelementptr inbounds %struct._exon_t, ptr %551, i64 0, i32 5
  %553 = load i32, ptr %552, align 4, !tbaa !211
  %554 = load i32, ptr getelementptr inbounds (%struct._options_t, ptr @options, i64 0, i32 16), align 8, !tbaa !19
  %555 = icmp ult i32 %554, 50
  %556 = icmp ult i32 %545, %485
  %557 = select i1 %555, i1 true, i1 %556
  %558 = icmp ult i32 %553, %485
  %559 = select i1 %557, i1 true, i1 %558
  br i1 %559, label %560, label %564

560:                                              ; preds = %537
  %561 = icmp ugt i32 %554, 49
  %562 = select i1 %556, i1 %558, i1 false
  %563 = select i1 %561, i1 true, i1 %562
  br i1 %563, label %615, label %564

564:                                              ; preds = %560, %537
  %.lcssa7 = phi i32 [ %538, %560 ], [ %538, %537 ]
  %.lcssa6 = phi i32 [ %539, %560 ], [ %539, %537 ]
  %.lcssa5 = phi i64 [ %541, %560 ], [ %541, %537 ]
  %.lcssa4 = phi i32 [ %547, %560 ], [ %547, %537 ]
  %.lcssa2.lcssa = phi i64 [ %.lcssa2, %560 ], [ %.lcssa2, %537 ]
  %.lcssa.lcssa = phi ptr [ %.lcssa, %560 ], [ %.lcssa, %537 ]
  %565 = call fastcc ptr @xcalloc(i64 noundef 1, i64 noundef 48) #31
  call fastcc void @add_col_elt(ptr noundef %7, ptr noundef %565) #35
  %566 = load ptr, ptr %7, align 8, !tbaa !27
  %567 = load i32, ptr %489, align 8, !tbaa !52
  %568 = add i32 %567, -1
  %569 = zext i32 %568 to i64
  %570 = getelementptr inbounds ptr, ptr %566, i64 %569
  %571 = load ptr, ptr %570, align 8, !tbaa !7
  %572 = getelementptr inbounds %struct._result_t, ptr %571, i64 0, i32 2
  store i32 %499, ptr %572, align 8, !tbaa !95
  %573 = load i32, ptr %.lcssa.lcssa, align 4, !tbaa !94
  %574 = sub i32 %573, %499
  %575 = getelementptr inbounds %struct._result_t, ptr %571, i64 0, i32 3
  store i32 %574, ptr %575, align 4, !tbaa !111
  %576 = getelementptr inbounds %struct._result_t, ptr %571, i64 0, i32 1
  %577 = sub i32 %.lcssa7, %498
  %578 = getelementptr inbounds %struct._result_t, ptr %571, i64 0, i32 1, i32 2
  store i32 %577, ptr %578, align 4, !tbaa !50
  %579 = getelementptr inbounds %struct._result_t, ptr %571, i64 0, i32 1, i32 1
  store i32 0, ptr %579, align 8, !tbaa !52
  %580 = zext i32 %498 to i64
  %581 = icmp eq i64 %.lcssa2.lcssa, %580
  br i1 %581, label %586, label %582

582:                                              ; preds = %564
  %583 = zext i32 %577 to i64
  %584 = shl nuw nsw i64 %583, 3
  %585 = call fastcc ptr @xmalloc(i64 noundef %584) #31
  br label %586

586:                                              ; preds = %582, %564
  %587 = phi ptr [ %585, %582 ], [ null, %564 ]
  store ptr %587, ptr %576, align 8, !tbaa !27
  %588 = load ptr, ptr %6, align 8, !tbaa !27
  call fastcc void @msp2exons(ptr noundef %588, i32 noundef %.lcssa6, ptr noundef nonnull %576, i32 noundef 0) #35
  %589 = load i32, ptr %579, align 8, !tbaa !52
  %590 = icmp eq i32 %589, 0
  br i1 %590, label %605, label %591

591:                                              ; preds = %586
  %592 = zext i32 %589 to i64
  br label %593

593:                                              ; preds = %593, %591
  %594 = phi i64 [ 0, %591 ], [ %600, %593 ]
  %595 = load ptr, ptr %576, align 8, !tbaa !27
  %596 = getelementptr inbounds ptr, ptr %595, i64 %594
  %597 = load ptr, ptr %596, align 8, !tbaa !7
  %598 = load <4 x i32>, ptr %597, align 4, !tbaa !11
  %599 = add <4 x i32> %598, %492
  store <4 x i32> %599, ptr %597, align 4, !tbaa !11
  %600 = add nuw nsw i64 %594, 1
  %601 = icmp eq i64 %600, %592
  br i1 %601, label %605, label %593, !llvm.loop !212

602:                                              ; preds = %532, %531
  %603 = add nuw nsw i64 %508, 1
  %604 = icmp ult i64 %603, %506
  br i1 %604, label %507, label %620, !llvm.loop !213

605:                                              ; preds = %593, %586
  %606 = load ptr, ptr %6, align 8, !tbaa !27
  %607 = getelementptr inbounds ptr, ptr %606, i64 %.lcssa5
  %608 = load ptr, ptr %607, align 8, !tbaa !7
  %609 = getelementptr inbounds %struct._exon_t, ptr %608, i64 0, i32 2
  %610 = load i32, ptr %609, align 4, !tbaa !97
  %611 = load i32, ptr %236, align 8, !tbaa !52
  %612 = add nuw nsw i64 %.lcssa2.lcssa, 1
  %613 = zext i32 %611 to i64
  %614 = icmp ult i64 %612, %613
  br i1 %614, label %493, label %624, !llvm.loop !213

615:                                              ; preds = %560
  %616 = add nuw nsw i64 %.lcssa2, 1
  %617 = load i32, ptr %236, align 8, !tbaa !52
  %618 = zext i32 %617 to i64
  %619 = icmp ult i64 %616, %618
  br i1 %619, label %500, label %621, !llvm.loop !213

620:                                              ; preds = %602
  %.lcssa20 = phi i32 [ %498, %602 ]
  %.lcssa18 = phi i32 [ %499, %602 ]
  %.lcssa16 = phi i32 [ %501, %602 ]
  %.lcssa13 = phi i32 [ %504, %602 ]
  %.lcssa10 = phi i1 [ %505, %602 ]
  br i1 %.lcssa10, label %624, label %621

621:                                              ; preds = %620, %615
  %.lcssa19 = phi i32 [ %.lcssa20, %620 ], [ %498, %615 ]
  %.lcssa17 = phi i32 [ %.lcssa18, %620 ], [ %499, %615 ]
  %622 = phi i32 [ %.lcssa16, %620 ], [ %617, %615 ]
  %623 = call fastcc i32 @link_msps(ptr noundef nonnull %6, i32 noundef %.lcssa19, i32 noundef %622) #35
  br label %624

624:                                              ; preds = %621, %620, %605, %484
  %625 = phi i32 [ %.lcssa17, %621 ], [ %.lcssa18, %620 ], [ 0, %484 ], [ %610, %605 ]
  %626 = phi i32 [ %623, %621 ], [ %.lcssa13, %620 ], [ %467, %484 ], [ %.lcssa4, %605 ]
  %627 = call fastcc ptr @xcalloc(i64 noundef 1, i64 noundef 48) #31
  call fastcc void @add_col_elt(ptr noundef %7, ptr noundef %627) #35
  %628 = load ptr, ptr %7, align 8, !tbaa !27
  %629 = getelementptr inbounds %struct._collec_t, ptr %7, i64 0, i32 1
  %630 = load i32, ptr %629, align 8, !tbaa !52
  %631 = add i32 %630, -1
  %632 = zext i32 %631 to i64
  %633 = getelementptr inbounds ptr, ptr %628, i64 %632
  %634 = load ptr, ptr %633, align 8, !tbaa !7
  %635 = getelementptr inbounds %struct._result_t, ptr %634, i64 0, i32 2
  store i32 %625, ptr %635, align 8, !tbaa !95
  %636 = load i32, ptr %13, align 8, !tbaa !46
  %637 = sub i32 %636, %625
  %638 = getelementptr inbounds %struct._result_t, ptr %634, i64 0, i32 3
  store i32 %637, ptr %638, align 4, !tbaa !111
  %639 = getelementptr inbounds %struct._result_t, ptr %634, i64 0, i32 1
  br label %643

640:                                              ; preds = %411, %409
  %641 = phi i32 [ 0, %411 ], [ %.lcssa24, %409 ]
  %642 = call fastcc i32 @link_msps(ptr noundef nonnull %6, i32 noundef 0, i32 noundef %641) #35
  br label %643

643:                                              ; preds = %640, %624
  %644 = phi i32 [ %626, %624 ], [ %642, %640 ]
  %645 = phi ptr [ %639, %624 ], [ %8, %640 ]
  %646 = getelementptr inbounds %struct._collec_t, ptr %645, i64 0, i32 2
  %647 = load i32, ptr %646, align 4, !tbaa !50
  %648 = icmp eq i32 %647, 0
  br i1 %648, label %649, label %659

649:                                              ; preds = %643
  %650 = load i32, ptr %236, align 8, !tbaa !52
  store i32 %650, ptr %646, align 4, !tbaa !50
  %651 = getelementptr inbounds %struct._collec_t, ptr %645, i64 0, i32 1
  store i32 0, ptr %651, align 8, !tbaa !52
  %652 = icmp eq i32 %650, 0
  br i1 %652, label %657, label %653

653:                                              ; preds = %649
  %654 = zext i32 %650 to i64
  %655 = shl nuw nsw i64 %654, 3
  %656 = call fastcc ptr @xmalloc(i64 noundef %655) #31
  br label %657

657:                                              ; preds = %653, %649
  %658 = phi ptr [ %656, %653 ], [ null, %649 ]
  store ptr %658, ptr %645, align 8, !tbaa !27
  br label %659

659:                                              ; preds = %657, %643
  %660 = load ptr, ptr %6, align 8, !tbaa !27
  call fastcc void @msp2exons(ptr noundef %660, i32 noundef %644, ptr noundef nonnull %645, i32 noundef %12) #35
  %661 = getelementptr inbounds %struct._collec_t, ptr %645, i64 0, i32 1
  %662 = load i32, ptr %661, align 8, !tbaa !52
  %663 = icmp eq i32 %662, 0
  br i1 %663, label %678, label %664

664:                                              ; preds = %659
  %665 = zext i32 %662 to i64
  %666 = insertelement <4 x i32> poison, i32 %3, i64 0
  %667 = insertelement <4 x i32> %666, i32 %4, i64 1
  %668 = shufflevector <4 x i32> %667, <4 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  br label %669

669:                                              ; preds = %669, %664
  %670 = phi i64 [ 0, %664 ], [ %676, %669 ]
  %671 = load ptr, ptr %645, align 8, !tbaa !27
  %672 = getelementptr inbounds ptr, ptr %671, i64 %670
  %673 = load ptr, ptr %672, align 8, !tbaa !7
  %674 = load <4 x i32>, ptr %673, align 4, !tbaa !11
  %675 = add <4 x i32> %674, %668
  store <4 x i32> %675, ptr %673, align 4, !tbaa !11
  %676 = add nuw nsw i64 %670, 1
  %677 = icmp eq i64 %676, %665
  br i1 %677, label %678, label %669, !llvm.loop !214

678:                                              ; preds = %669, %659
  store i32 0, ptr %236, align 8, !tbaa !52
  br label %679

679:                                              ; preds = %678, %465
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #12

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @kill_polyA(ptr nocapture noundef %0, ptr noundef readonly %1, ptr noundef readonly %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct._result_t, ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %struct._result_t, ptr %0, i64 0, i32 1, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !52
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %237, label %8

8:                                                ; preds = %3
  %9 = load ptr, ptr %4, align 8, !tbaa !27
  %10 = zext i32 %6 to i64
  br label %11

11:                                               ; preds = %17, %8
  %12 = phi i64 [ 0, %8 ], [ %18, %17 ]
  %13 = getelementptr inbounds ptr, ptr %9, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !7
  %15 = tail call fastcc i32 @is_polyAT_exon_p(ptr noundef %14, ptr noundef %2) #35, !range !100
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %11
  %18 = add nuw nsw i64 %12, 1
  %19 = icmp eq i64 %18, %10
  br i1 %19, label %22, label %11, !llvm.loop !215

20:                                               ; preds = %11
  %.lcssa11 = phi i64 [ %12, %11 ]
  %21 = trunc i64 %.lcssa11 to i32
  br label %22

22:                                               ; preds = %20, %17
  %23 = phi i32 [ %21, %20 ], [ %6, %17 ]
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %43, label %25

25:                                               ; preds = %22
  %26 = zext i32 %23 to i64
  br label %27

27:                                               ; preds = %27, %25
  %28 = phi i64 [ 0, %25 ], [ %32, %27 ]
  %29 = load ptr, ptr %4, align 8, !tbaa !27
  %30 = getelementptr inbounds ptr, ptr %29, i64 %28
  %31 = load ptr, ptr %30, align 8, !tbaa !7
  tail call void @free(ptr noundef %31) #31
  %32 = add nuw nsw i64 %28, 1
  %33 = icmp eq i64 %32, %26
  br i1 %33, label %34, label %27, !llvm.loop !216

34:                                               ; preds = %27
  %35 = load ptr, ptr %4, align 8, !tbaa !27
  %36 = getelementptr inbounds ptr, ptr %35, i64 %26
  %37 = load i32, ptr %5, align 8, !tbaa !52
  %38 = sub i32 %37, %23
  %39 = zext i32 %38 to i64
  %40 = shl nuw nsw i64 %39, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %35, ptr nonnull align 8 %36, i64 %40, i1 false)
  %41 = load i32, ptr %5, align 8, !tbaa !52
  %42 = sub i32 %41, %23
  store i32 %42, ptr %5, align 8, !tbaa !52
  br label %43

43:                                               ; preds = %34, %22
  %44 = phi i32 [ %42, %34 ], [ %6, %22 ]
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %237, label %46

46:                                               ; preds = %43
  %47 = load ptr, ptr %4, align 8, !tbaa !27
  %48 = zext i32 %44 to i64
  br label %49

49:                                               ; preds = %59, %46
  %50 = phi i64 [ 0, %46 ], [ %60, %59 ]
  %51 = trunc i64 %50 to i32
  %52 = xor i32 %51, -1
  %53 = add i32 %44, %52
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds ptr, ptr %47, i64 %54
  %56 = load ptr, ptr %55, align 8, !tbaa !7
  %57 = tail call fastcc i32 @is_polyAT_exon_p(ptr noundef %56, ptr noundef %2) #35, !range !100
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %49
  %60 = add nuw nsw i64 %50, 1
  %61 = icmp eq i64 %60, %48
  br i1 %61, label %62, label %49, !llvm.loop !217

62:                                               ; preds = %59, %49
  %63 = phi i32 [ %51, %49 ], [ %44, %59 ]
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %83, label %65

65:                                               ; preds = %62
  %66 = sub i32 %44, %63
  %67 = icmp ugt i32 %63, %44
  br i1 %67, label %81, label %68

68:                                               ; preds = %65
  %69 = zext i32 %66 to i64
  br label %70

70:                                               ; preds = %70, %68
  %71 = phi i64 [ %69, %68 ], [ %75, %70 ]
  %72 = load ptr, ptr %4, align 8, !tbaa !27
  %73 = getelementptr inbounds ptr, ptr %72, i64 %71
  %74 = load ptr, ptr %73, align 8, !tbaa !7
  tail call void @free(ptr noundef %74) #31
  %75 = add nuw nsw i64 %71, 1
  %76 = load i32, ptr %5, align 8, !tbaa !52
  %77 = zext i32 %76 to i64
  %78 = icmp ult i64 %75, %77
  br i1 %78, label %70, label %79, !llvm.loop !218

79:                                               ; preds = %70
  %.lcssa10 = phi i32 [ %76, %70 ]
  %80 = sub i32 %.lcssa10, %63
  br label %81

81:                                               ; preds = %79, %65
  %82 = phi i32 [ %80, %79 ], [ %66, %65 ]
  store i32 %82, ptr %5, align 8, !tbaa !52
  br label %83

83:                                               ; preds = %81, %62
  %84 = phi i32 [ %82, %81 ], [ %44, %62 ]
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %237, label %86

86:                                               ; preds = %83
  %87 = load ptr, ptr %4, align 8, !tbaa !27
  %88 = add i32 %84, -1
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds ptr, ptr %87, i64 %89
  %91 = load ptr, ptr %90, align 8, !tbaa !7
  %92 = getelementptr inbounds %struct._exon_t, ptr %91, i64 0, i32 3
  %93 = load i32, ptr %92, align 4, !tbaa !98
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds i8, ptr %2, i64 %94
  %96 = load i8, ptr %95, align 1, !tbaa !27
  %97 = icmp eq i8 %96, 0
  br i1 %97, label %164, label %98

98:                                               ; preds = %115, %86
  %99 = phi i8 [ %122, %115 ], [ %96, %86 ]
  %100 = phi ptr [ %121, %115 ], [ %95, %86 ]
  %101 = phi i32 [ %120, %115 ], [ 0, %86 ]
  %102 = phi i32 [ %107, %115 ], [ 0, %86 ]
  %103 = phi i32 [ %119, %115 ], [ 0, %86 ]
  %104 = phi i32 [ %118, %115 ], [ undef, %86 ]
  %105 = phi i32 [ %117, %115 ], [ 0, %86 ]
  %106 = phi i32 [ %116, %115 ], [ undef, %86 ]
  %107 = add i32 %102, 1
  switch i8 %99, label %113 [
    i8 65, label %108
    i8 78, label %115
  ]

108:                                              ; preds = %98
  %109 = add i32 %103, 1
  %110 = add nsw i32 %101, 1
  %111 = icmp slt i32 %101, %105
  br i1 %111, label %115, label %112

112:                                              ; preds = %108
  br label %115

113:                                              ; preds = %98
  %114 = add nsw i32 %101, -2
  br label %115

115:                                              ; preds = %113, %112, %108, %98
  %116 = phi i32 [ %106, %113 ], [ %106, %98 ], [ %109, %112 ], [ %106, %108 ]
  %117 = phi i32 [ %105, %113 ], [ %105, %98 ], [ %110, %112 ], [ %105, %108 ]
  %118 = phi i32 [ %104, %113 ], [ %104, %98 ], [ %107, %112 ], [ %104, %108 ]
  %119 = phi i32 [ %103, %113 ], [ %103, %98 ], [ %109, %112 ], [ %109, %108 ]
  %120 = phi i32 [ %114, %113 ], [ %101, %98 ], [ %110, %112 ], [ %110, %108 ]
  %121 = getelementptr inbounds i8, ptr %100, i64 1
  %122 = load i8, ptr %121, align 1, !tbaa !27
  %123 = icmp ne i8 %122, 0
  %124 = sub nsw i32 %117, %120
  %125 = icmp slt i32 %124, 10
  %126 = select i1 %123, i1 %125, i1 false
  br i1 %126, label %98, label %127, !llvm.loop !219

127:                                              ; preds = %115
  %.lcssa9 = phi i32 [ %116, %115 ]
  %.lcssa8 = phi i32 [ %117, %115 ]
  %.lcssa7 = phi i32 [ %118, %115 ]
  %128 = icmp sgt i32 %.lcssa8, 0
  %129 = icmp ugt i32 %.lcssa9, 7
  %130 = select i1 %128, i1 %129, i1 false
  br i1 %130, label %131, label %164

131:                                              ; preds = %127
  %132 = mul i32 %.lcssa9, 10
  %133 = udiv i32 %132, %.lcssa7
  %134 = icmp ugt i32 %133, 7
  br i1 %134, label %135, label %164

135:                                              ; preds = %131
  %136 = getelementptr inbounds %struct._exon_t, ptr %91, i64 0, i32 2
  %137 = load i32, ptr %136, align 4, !tbaa !97
  %138 = zext i32 %137 to i64
  %139 = getelementptr inbounds i8, ptr %1, i64 %138
  %140 = load i8, ptr %139, align 1, !tbaa !27
  %141 = icmp ne i8 %140, 0
  %142 = icmp ne i32 %.lcssa7, 0
  %143 = select i1 %141, i1 %142, i1 false
  br i1 %143, label %144, label %164

144:                                              ; preds = %144, %135
  %145 = phi i8 [ %154, %144 ], [ %140, %135 ]
  %146 = phi ptr [ %153, %144 ], [ %139, %135 ]
  %147 = phi i32 [ %149, %144 ], [ 0, %135 ]
  %148 = phi i32 [ %152, %144 ], [ 0, %135 ]
  %149 = add nuw i32 %147, 1
  %150 = icmp eq i8 %145, 65
  %151 = zext i1 %150 to i32
  %152 = add i32 %148, %151
  %153 = getelementptr inbounds i8, ptr %146, i64 1
  %154 = load i8, ptr %153, align 1, !tbaa !27
  %155 = icmp ne i8 %154, 0
  %156 = icmp ult i32 %149, %.lcssa7
  %157 = select i1 %155, i1 %156, i1 false
  br i1 %157, label %144, label %158, !llvm.loop !220

158:                                              ; preds = %144
  %.lcssa6 = phi i32 [ %149, %144 ]
  %.lcssa5 = phi i32 [ %152, %144 ]
  %159 = mul i32 %.lcssa5, 10
  %160 = udiv i32 %159, %.lcssa6
  %161 = icmp ult i32 %160, 8
  br i1 %161, label %162, label %164

162:                                              ; preds = %158
  %163 = getelementptr inbounds %struct._result_t, ptr %0, i64 0, i32 5, i32 1
  store i32 1, ptr %163, align 4, !tbaa !221
  br label %164

164:                                              ; preds = %162, %158, %135, %131, %127, %86
  %165 = phi i32 [ %.lcssa7, %158 ], [ %.lcssa7, %162 ], [ %.lcssa7, %131 ], [ %.lcssa7, %127 ], [ undef, %86 ], [ %.lcssa7, %135 ]
  %166 = phi i32 [ %.lcssa9, %158 ], [ %.lcssa9, %162 ], [ %.lcssa9, %131 ], [ %.lcssa9, %127 ], [ undef, %86 ], [ %.lcssa9, %135 ]
  %167 = load ptr, ptr %87, align 8, !tbaa !7
  %168 = getelementptr inbounds %struct._exon_t, ptr %167, i64 0, i32 1
  %169 = load i32, ptr %168, align 4, !tbaa !92
  %170 = zext i32 %169 to i64
  %171 = getelementptr inbounds i8, ptr %2, i64 %170
  %172 = getelementptr inbounds i8, ptr %171, i64 -2
  %173 = icmp ult ptr %172, %2
  br i1 %173, label %237, label %174

174:                                              ; preds = %191, %164
  %175 = phi ptr [ %197, %191 ], [ %172, %164 ]
  %176 = phi i32 [ %196, %191 ], [ 0, %164 ]
  %177 = phi i32 [ %182, %191 ], [ 0, %164 ]
  %178 = phi i32 [ %195, %191 ], [ 0, %164 ]
  %179 = phi i32 [ %194, %191 ], [ %165, %164 ]
  %180 = phi i32 [ %193, %191 ], [ 0, %164 ]
  %181 = phi i32 [ %192, %191 ], [ %166, %164 ]
  %182 = add i32 %177, 1
  %183 = load i8, ptr %175, align 1, !tbaa !27
  switch i8 %183, label %189 [
    i8 84, label %184
    i8 78, label %191
  ]

184:                                              ; preds = %174
  %185 = add i32 %178, 1
  %186 = add nsw i32 %176, 1
  %187 = icmp slt i32 %176, %180
  br i1 %187, label %191, label %188

188:                                              ; preds = %184
  br label %191

189:                                              ; preds = %174
  %190 = add nsw i32 %176, -2
  br label %191

191:                                              ; preds = %189, %188, %184, %174
  %192 = phi i32 [ %181, %189 ], [ %181, %174 ], [ %185, %188 ], [ %181, %184 ]
  %193 = phi i32 [ %180, %189 ], [ %180, %174 ], [ %186, %188 ], [ %180, %184 ]
  %194 = phi i32 [ %179, %189 ], [ %179, %174 ], [ %182, %188 ], [ %179, %184 ]
  %195 = phi i32 [ %178, %189 ], [ %178, %174 ], [ %185, %188 ], [ %185, %184 ]
  %196 = phi i32 [ %190, %189 ], [ %176, %174 ], [ %186, %188 ], [ %186, %184 ]
  %197 = getelementptr inbounds i8, ptr %175, i64 -1
  %198 = icmp uge ptr %197, %2
  %199 = sub nsw i32 %193, %196
  %200 = icmp slt i32 %199, 10
  %201 = select i1 %198, i1 %200, i1 false
  br i1 %201, label %174, label %202, !llvm.loop !222

202:                                              ; preds = %191
  %.lcssa4 = phi i32 [ %192, %191 ]
  %.lcssa3 = phi i32 [ %193, %191 ]
  %.lcssa2 = phi i32 [ %194, %191 ]
  %203 = icmp sgt i32 %.lcssa3, 0
  %204 = icmp ugt i32 %.lcssa4, 7
  %205 = select i1 %203, i1 %204, i1 false
  br i1 %205, label %206, label %237

206:                                              ; preds = %202
  %207 = mul i32 %.lcssa4, 10
  %208 = udiv i32 %207, %.lcssa2
  %209 = icmp ugt i32 %208, 7
  br i1 %209, label %210, label %237

210:                                              ; preds = %206
  %211 = load i32, ptr %167, align 4, !tbaa !94
  %212 = zext i32 %211 to i64
  %213 = getelementptr inbounds i8, ptr %1, i64 %212
  %214 = getelementptr inbounds i8, ptr %213, i64 -2
  %215 = icmp uge ptr %214, %1
  %216 = icmp ne i32 %.lcssa2, 0
  %217 = select i1 %215, i1 %216, i1 false
  br i1 %217, label %218, label %237

218:                                              ; preds = %218, %210
  %219 = phi ptr [ %227, %218 ], [ %214, %210 ]
  %220 = phi i32 [ %222, %218 ], [ 0, %210 ]
  %221 = phi i32 [ %226, %218 ], [ 0, %210 ]
  %222 = add nuw i32 %220, 1
  %223 = load i8, ptr %219, align 1, !tbaa !27
  %224 = icmp eq i8 %223, 84
  %225 = zext i1 %224 to i32
  %226 = add i32 %221, %225
  %227 = getelementptr inbounds i8, ptr %219, i64 -1
  %228 = icmp uge ptr %227, %1
  %229 = icmp ult i32 %222, %.lcssa2
  %230 = select i1 %228, i1 %229, i1 false
  br i1 %230, label %218, label %231, !llvm.loop !223

231:                                              ; preds = %218
  %.lcssa1 = phi i32 [ %222, %218 ]
  %.lcssa = phi i32 [ %226, %218 ]
  %232 = mul i32 %.lcssa, 10
  %233 = udiv i32 %232, %.lcssa1
  %234 = icmp ult i32 %233, 8
  br i1 %234, label %235, label %237

235:                                              ; preds = %231
  %236 = getelementptr inbounds %struct._result_t, ptr %0, i64 0, i32 5, i32 2
  store i32 1, ptr %236, align 4, !tbaa !224
  br label %237

237:                                              ; preds = %235, %231, %210, %206, %202, %164, %83, %43, %3
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @free_hash_env(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._hash_env_t, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !48
  tail call void @free(ptr noundef %3) #31
  br label %4

4:                                                ; preds = %4, %1
  %5 = phi i64 [ 0, %1 ], [ %9, %4 ]
  %6 = load ptr, ptr %0, align 8, !tbaa !49
  %7 = getelementptr inbounds ptr, ptr %6, i64 %5
  %8 = load ptr, ptr %7, align 8, !tbaa !7
  tail call void @tdestroy(ptr noundef %8, ptr noundef nonnull @free) #31
  %9 = add nuw nsw i64 %5, 1
  %10 = icmp eq i64 %9, 524288
  br i1 %10, label %11, label %4, !llvm.loop !225

11:                                               ; preds = %4
  %12 = load ptr, ptr %0, align 8, !tbaa !49
  tail call void @free(ptr noundef %12) #31
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @merge(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct._collec_t, ptr %1, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !52
  %7 = add i32 %6, %2
  %8 = icmp eq i32 %6, 0
  br i1 %8, label %122, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct._collec_t, ptr %0, i64 0, i32 1
  %11 = load i32, ptr %10, align 8, !tbaa !52
  %12 = add i32 %11, %6
  %13 = getelementptr inbounds %struct._collec_t, ptr %0, i64 0, i32 2
  %14 = load i32, ptr %13, align 4, !tbaa !50
  %15 = icmp ugt i32 %12, %14
  %16 = load ptr, ptr %0, align 8, !tbaa !27
  br i1 %15, label %17, label %22

17:                                               ; preds = %9
  store i32 %12, ptr %13, align 4, !tbaa !50
  %18 = zext i32 %12 to i64
  %19 = shl nuw nsw i64 %18, 3
  %20 = tail call fastcc ptr @xrealloc(ptr noundef %16, i64 noundef %19) #31
  store ptr %20, ptr %0, align 8, !tbaa !27
  %21 = load i32, ptr %10, align 8, !tbaa !52
  br label %22

22:                                               ; preds = %17, %9
  %23 = phi i32 [ %21, %17 ], [ %11, %9 ]
  %24 = phi ptr [ %20, %17 ], [ %16, %9 ]
  %25 = zext i32 %7 to i64
  %26 = getelementptr inbounds ptr, ptr %24, i64 %25
  %27 = zext i32 %2 to i64
  %28 = getelementptr inbounds ptr, ptr %24, i64 %27
  %29 = sub i32 %23, %2
  %30 = zext i32 %29 to i64
  %31 = shl nuw nsw i64 %30, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %26, ptr align 8 %28, i64 %31, i1 false)
  %32 = load ptr, ptr %0, align 8, !tbaa !27
  %33 = getelementptr inbounds ptr, ptr %32, i64 %27
  %34 = load ptr, ptr %1, align 8, !tbaa !27
  %35 = load i32, ptr %5, align 8, !tbaa !52
  %36 = zext i32 %35 to i64
  %37 = shl nuw nsw i64 %36, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %33, ptr align 8 %34, i64 %37, i1 false)
  %38 = load i32, ptr %5, align 8, !tbaa !52
  %39 = load i32, ptr %10, align 8, !tbaa !52
  %40 = add i32 %39, %38
  store i32 %40, ptr %10, align 8, !tbaa !52
  %41 = icmp ult i32 %7, %40
  %42 = zext i1 %41 to i32
  %43 = add i32 %7, %42
  %44 = tail call i32 @llvm.umax.i32(i32 %2, i32 1)
  %45 = icmp ult i32 %44, %43
  br i1 %45, label %46, label %122

46:                                               ; preds = %22
  %47 = add i32 %3, 1
  br label %48

48:                                               ; preds = %117, %46
  %49 = phi i32 [ %43, %46 ], [ %119, %117 ]
  %50 = phi i32 [ %44, %46 ], [ %120, %117 ]
  %51 = load ptr, ptr %0, align 8, !tbaa !27
  %52 = add i32 %50, -1
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds ptr, ptr %51, i64 %53
  %55 = load ptr, ptr %54, align 8, !tbaa !7
  %56 = zext i32 %50 to i64
  %57 = getelementptr inbounds ptr, ptr %51, i64 %56
  %58 = load ptr, ptr %57, align 8, !tbaa !7
  %59 = getelementptr inbounds %struct._exon_t, ptr %58, i64 0, i32 1
  %60 = load i32, ptr %59, align 4, !tbaa !92
  %61 = getelementptr inbounds %struct._exon_t, ptr %55, i64 0, i32 1
  %62 = load i32, ptr %61, align 4, !tbaa !92
  %63 = icmp ugt i32 %60, %62
  br i1 %63, label %75, label %64

64:                                               ; preds = %48
  tail call void @free(ptr noundef nonnull %55) #31
  %65 = load ptr, ptr %0, align 8, !tbaa !27
  %66 = getelementptr inbounds ptr, ptr %65, i64 %56
  %67 = getelementptr inbounds ptr, ptr %66, i64 -1
  %68 = load i32, ptr %10, align 8, !tbaa !52
  %69 = sub i32 %68, %50
  %70 = zext i32 %69 to i64
  %71 = shl nuw nsw i64 %70, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %67, ptr align 8 %66, i64 %71, i1 false)
  %72 = load i32, ptr %10, align 8, !tbaa !52
  %73 = add i32 %72, -1
  store i32 %73, ptr %10, align 8, !tbaa !52
  %74 = add i32 %49, -1
  br label %117

75:                                               ; preds = %48
  %76 = getelementptr inbounds %struct._exon_t, ptr %55, i64 0, i32 3
  %77 = load i32, ptr %76, align 4, !tbaa !98
  %78 = getelementptr inbounds %struct._exon_t, ptr %58, i64 0, i32 3
  %79 = load i32, ptr %78, align 4, !tbaa !98
  %80 = icmp ult i32 %77, %79
  br i1 %80, label %91, label %81

81:                                               ; preds = %75
  tail call void @free(ptr noundef nonnull %58) #31
  %82 = load i32, ptr %10, align 8, !tbaa !52
  %83 = add i32 %82, -1
  store i32 %83, ptr %10, align 8, !tbaa !52
  %84 = load ptr, ptr %0, align 8, !tbaa !27
  %85 = getelementptr inbounds ptr, ptr %84, i64 %56
  %86 = getelementptr inbounds ptr, ptr %85, i64 1
  %87 = sub i32 %83, %50
  %88 = zext i32 %87 to i64
  %89 = shl nuw nsw i64 %88, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %85, ptr nonnull align 8 %86, i64 %89, i1 false)
  %90 = add i32 %49, -1
  br label %117

91:                                               ; preds = %75
  %92 = load i32, ptr %58, align 4, !tbaa !94
  %93 = getelementptr inbounds %struct._exon_t, ptr %55, i64 0, i32 2
  %94 = load i32, ptr %93, align 4, !tbaa !97
  %95 = add i32 %94, 31
  %96 = icmp uge i32 %92, %95
  %97 = add i32 %47, %77
  %98 = icmp ugt i32 %60, %97
  %99 = or i1 %98, %96
  br i1 %99, label %117, label %100

100:                                              ; preds = %91
  %101 = load i32, ptr %55, align 4, !tbaa !94
  %102 = tail call i32 @llvm.umin.i32(i32 %101, i32 %92)
  store i32 %102, ptr %55, align 4, !tbaa !94
  %103 = tail call i32 @llvm.umin.i32(i32 %62, i32 %60)
  store i32 %103, ptr %61, align 4, !tbaa !92
  %104 = getelementptr inbounds %struct._exon_t, ptr %58, i64 0, i32 2
  %105 = load i32, ptr %104, align 4, !tbaa !97
  %106 = tail call i32 @llvm.umax.i32(i32 %105, i32 %94)
  store i32 %106, ptr %93, align 4, !tbaa !97
  %107 = tail call i32 @llvm.umax.i32(i32 %79, i32 %77)
  store i32 %107, ptr %76, align 4, !tbaa !98
  tail call void @free(ptr noundef nonnull %58) #31
  %108 = load i32, ptr %10, align 8, !tbaa !52
  %109 = add i32 %108, -1
  store i32 %109, ptr %10, align 8, !tbaa !52
  %110 = load ptr, ptr %0, align 8, !tbaa !27
  %111 = getelementptr inbounds ptr, ptr %110, i64 %56
  %112 = getelementptr inbounds ptr, ptr %111, i64 1
  %113 = sub i32 %109, %50
  %114 = zext i32 %113 to i64
  %115 = shl nuw nsw i64 %114, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %111, ptr nonnull align 8 %112, i64 %115, i1 false)
  %116 = add i32 %49, -1
  br label %117

117:                                              ; preds = %100, %91, %81, %64
  %118 = phi i32 [ %52, %64 ], [ %52, %81 ], [ %52, %100 ], [ %50, %91 ]
  %119 = phi i32 [ %74, %64 ], [ %90, %81 ], [ %116, %100 ], [ %49, %91 ]
  %120 = add i32 %118, 1
  %121 = icmp ult i32 %120, %119
  br i1 %121, label %48, label %122, !llvm.loop !226

122:                                              ; preds = %117, %22, %4
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind optsize memory(argmem: read) uwtable
define internal fastcc i32 @is_polyAT_exon_p(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #13 {
  %3 = getelementptr inbounds %struct._exon_t, ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 4, !tbaa !98
  %5 = getelementptr inbounds %struct._exon_t, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !92
  %7 = add i32 %6, -1
  %8 = icmp ult i32 %7, %4
  br i1 %8, label %9, label %39

9:                                                ; preds = %2
  %10 = zext i32 %7 to i64
  br label %11

11:                                               ; preds = %30, %9
  %12 = phi i64 [ %10, %9 ], [ %36, %30 ]
  %13 = phi i32 [ 0, %9 ], [ %35, %30 ]
  %14 = phi i32 [ 0, %9 ], [ %34, %30 ]
  %15 = phi i32 [ 0, %9 ], [ %33, %30 ]
  %16 = phi i32 [ 0, %9 ], [ %32, %30 ]
  %17 = phi i32 [ 0, %9 ], [ %31, %30 ]
  %18 = getelementptr inbounds i8, ptr %1, i64 %12
  %19 = load i8, ptr %18, align 1, !tbaa !27
  switch i8 %19, label %28 [
    i8 65, label %20
    i8 67, label %22
    i8 71, label %24
    i8 84, label %26
  ]

20:                                               ; preds = %11
  %21 = add i32 %17, 1
  br label %30

22:                                               ; preds = %11
  %23 = add i32 %16, 1
  br label %30

24:                                               ; preds = %11
  %25 = add i32 %15, 1
  br label %30

26:                                               ; preds = %11
  %27 = add i32 %14, 1
  br label %30

28:                                               ; preds = %11
  %29 = add i32 %13, 1
  br label %30

30:                                               ; preds = %28, %26, %24, %22, %20
  %31 = phi i32 [ %17, %28 ], [ %17, %26 ], [ %17, %24 ], [ %17, %22 ], [ %21, %20 ]
  %32 = phi i32 [ %16, %28 ], [ %16, %26 ], [ %16, %24 ], [ %23, %22 ], [ %16, %20 ]
  %33 = phi i32 [ %15, %28 ], [ %15, %26 ], [ %25, %24 ], [ %15, %22 ], [ %15, %20 ]
  %34 = phi i32 [ %14, %28 ], [ %27, %26 ], [ %14, %24 ], [ %14, %22 ], [ %14, %20 ]
  %35 = phi i32 [ %29, %28 ], [ %13, %26 ], [ %13, %24 ], [ %13, %22 ], [ %13, %20 ]
  %36 = add nuw nsw i64 %12, 1
  %37 = trunc i64 %36 to i32
  %38 = icmp eq i32 %4, %37
  br i1 %38, label %39, label %11, !llvm.loop !227

39:                                               ; preds = %30, %2
  %40 = phi i32 [ 0, %2 ], [ %31, %30 ]
  %41 = phi i32 [ 0, %2 ], [ %32, %30 ]
  %42 = phi i32 [ 0, %2 ], [ %33, %30 ]
  %43 = phi i32 [ 0, %2 ], [ %34, %30 ]
  %44 = phi i32 [ 0, %2 ], [ %35, %30 ]
  %45 = add i32 %4, 1
  %46 = add i32 %6, %44
  %47 = sub i32 %45, %46
  %48 = icmp ult i32 %47, 30
  %49 = mul i32 %40, 10
  %50 = udiv i32 %49, %47
  br i1 %48, label %51, label %67

51:                                               ; preds = %39
  %52 = icmp ugt i32 %50, 6
  br i1 %52, label %84, label %53

53:                                               ; preds = %51
  %54 = add i32 %42, %40
  %55 = mul i32 %54, 10
  %56 = udiv i32 %55, %47
  %57 = icmp ugt i32 %56, 7
  br i1 %57, label %84, label %58

58:                                               ; preds = %53
  %59 = mul i32 %43, 10
  %60 = udiv i32 %59, %47
  %61 = icmp ugt i32 %60, 6
  br i1 %61, label %84, label %62

62:                                               ; preds = %58
  %63 = add i32 %43, %41
  %64 = mul i32 %63, 10
  %65 = udiv i32 %64, %47
  %66 = icmp ugt i32 %65, 7
  br i1 %66, label %84, label %83

67:                                               ; preds = %39
  %68 = icmp ugt i32 %50, 7
  br i1 %68, label %84, label %69

69:                                               ; preds = %67
  %70 = add i32 %42, %40
  %71 = mul i32 %70, 100
  %72 = udiv i32 %71, %47
  %73 = icmp ugt i32 %72, 94
  br i1 %73, label %84, label %74

74:                                               ; preds = %69
  %75 = mul i32 %43, 10
  %76 = udiv i32 %75, %47
  %77 = icmp ugt i32 %76, 7
  br i1 %77, label %84, label %78

78:                                               ; preds = %74
  %79 = add i32 %43, %41
  %80 = mul i32 %79, 100
  %81 = udiv i32 %80, %47
  %82 = icmp ugt i32 %81, 94
  br i1 %82, label %84, label %83

83:                                               ; preds = %78, %62
  br label %84

84:                                               ; preds = %83, %78, %74, %69, %67, %62, %58, %53, %51
  %85 = phi i32 [ 0, %83 ], [ 1, %62 ], [ 1, %58 ], [ 1, %53 ], [ 1, %51 ], [ 1, %78 ], [ 1, %74 ], [ 1, %69 ], [ 1, %67 ]
  ret i32 %85
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #8

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nounwind optsize uwtable
define internal fastcc noalias ptr @xrealloc(ptr noundef %0, i64 noundef %1) unnamed_addr #0 {
  %3 = tail call ptr @realloc(ptr noundef %0, i64 noundef %1) #41
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %10

5:                                                ; preds = %2
  %6 = tail call ptr @__errno_location() #36
  %7 = load i32, ptr %6, align 4, !tbaa !11
  %8 = tail call ptr @strerror(i32 noundef %7) #31
  %9 = load i32, ptr %6, align 4, !tbaa !11
  tail call void (ptr, ...) @fatal(ptr noundef nonnull @.str.4.16, ptr noundef %0, i64 noundef %1, ptr noundef %8, i32 noundef %9) #39
  unreachable

10:                                               ; preds = %2
  ret ptr %3
}

; Function Attrs: nofree nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc i32 @perfect_spl_p(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) unnamed_addr #15 {
  %4 = alloca [4 x i8], align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #30
  %5 = load i32, ptr %2, align 4, !tbaa !137
  %6 = zext i32 %5 to i64
  %7 = getelementptr inbounds i8, ptr %0, i64 %6
  %8 = load i32, ptr getelementptr inbounds (%struct._options_t, ptr @options, i64 0, i32 9), align 4, !tbaa !30
  %9 = zext i32 %8 to i64
  %10 = sub nsw i64 0, %9
  %11 = getelementptr inbounds i8, ptr %7, i64 %10
  %12 = getelementptr inbounds %struct._splice_score_t, ptr %2, i64 0, i32 1
  %13 = load i32, ptr %12, align 4, !tbaa !139
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds i8, ptr %1, i64 %14
  %16 = getelementptr inbounds i8, ptr %15, i64 %10
  %17 = tail call fastcc i32 @SWscore(ptr noundef %11, ptr noundef %16, i32 noundef %8) #35
  %18 = icmp ult i32 %17, %8
  br i1 %18, label %54, label %19

19:                                               ; preds = %3
  %20 = getelementptr inbounds %struct._splice_score_t, ptr %2, i64 0, i32 2
  %21 = load i32, ptr %20, align 4, !tbaa !140
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds i8, ptr %0, i64 %22
  %24 = getelementptr inbounds i8, ptr %23, i64 -1
  %25 = tail call fastcc i32 @SWscore(ptr noundef nonnull %24, ptr noundef %15, i32 noundef %8) #35
  %26 = icmp ult i32 %25, %8
  br i1 %26, label %54, label %27

27:                                               ; preds = %19
  %28 = load i16, ptr %7, align 1
  store i16 %28, ptr %4, align 2
  %29 = getelementptr inbounds i8, ptr %4, i64 2
  %30 = getelementptr inbounds i8, ptr %23, i64 -3
  %31 = load i16, ptr %30, align 1
  store i16 %31, ptr %29, align 2
  %32 = load i32, ptr getelementptr inbounds (%struct._options_t, ptr @options, i64 0, i32 2), align 8, !tbaa !15
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %54, label %34

34:                                               ; preds = %27
  %35 = load ptr, ptr getelementptr inbounds (%struct._options_t, ptr @options, i64 0, i32 1), align 8, !tbaa !53
  %36 = zext i32 %32 to i64
  br label %37

37:                                               ; preds = %46, %34
  %38 = phi i64 [ 0, %34 ], [ %47, %46 ]
  %39 = getelementptr inbounds %struct._junction_t, ptr %35, i64 %38
  %40 = call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %4, ptr noundef nonnull dereferenceable(4) %39, i64 4)
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %49, label %42

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct._junction_t, ptr %35, i64 %38, i32 1
  %44 = call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %4, ptr noundef nonnull dereferenceable(4) %43, i64 4)
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %42
  %47 = add nuw nsw i64 %38, 1
  %48 = icmp eq i64 %47, %36
  br i1 %48, label %54, label %37, !llvm.loop !228

49:                                               ; preds = %42, %37
  %.lcssa = phi i64 [ %38, %42 ], [ %38, %37 ]
  %50 = phi i32 [ 1, %37 ], [ -1, %42 ]
  %51 = trunc i64 %.lcssa to i32
  %52 = getelementptr inbounds %struct._splice_score_t, ptr %2, i64 0, i32 3
  store i32 %51, ptr %52, align 4, !tbaa !143
  %53 = getelementptr inbounds %struct._splice_score_t, ptr %2, i64 0, i32 6
  store i32 %50, ptr %53, align 4, !tbaa !141
  br label %54

54:                                               ; preds = %49, %46, %27, %19, %3
  %55 = phi i32 [ 0, %3 ], [ 0, %19 ], [ 0, %27 ], [ 1, %49 ], [ 0, %46 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #30
  ret i32 %55
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @compute_max_score(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = load i32, ptr %2, align 4, !tbaa !137
  %6 = getelementptr inbounds %struct._splice_score_t, ptr %2, i64 0, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !139
  %8 = getelementptr inbounds %struct._splice_score_t, ptr %2, i64 0, i32 2
  %9 = load i32, ptr %8, align 4, !tbaa !140
  %10 = load i32, ptr getelementptr inbounds (%struct._options_t, ptr @options, i64 0, i32 9), align 4, !tbaa !30
  %11 = shl i32 %10, 1
  %12 = add i32 %11, 4
  %13 = zext i32 %12 to i64
  %14 = tail call fastcc ptr @xmalloc(i64 noundef %13) #31
  %15 = getelementptr inbounds %struct._splice_score_t, ptr %2, i64 0, i32 4
  store i32 0, ptr %15, align 4, !tbaa !229
  %16 = getelementptr inbounds %struct._splice_score_t, ptr %2, i64 0, i32 5
  store i32 0, ptr %16, align 4, !tbaa !230
  %17 = getelementptr inbounds %struct._splice_score_t, ptr %2, i64 0, i32 3
  store i32 -1, ptr %17, align 4, !tbaa !143
  %18 = load i32, ptr getelementptr inbounds (%struct._options_t, ptr @options, i64 0, i32 2), align 8, !tbaa !15
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %38, label %20

20:                                               ; preds = %4
  %21 = icmp sgt i32 %3, -1
  %22 = icmp eq i32 %3, 0
  %23 = load ptr, ptr getelementptr inbounds (%struct._options_t, ptr @options, i64 0, i32 1), align 8
  %24 = zext i32 %18 to i64
  br label %25

25:                                               ; preds = %35, %20
  %26 = phi i64 [ 0, %20 ], [ %36, %35 ]
  br i1 %21, label %29, label %27

27:                                               ; preds = %25
  %28 = trunc i64 %26 to i32
  br label %32

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct._junction_t, ptr %23, i64 %26
  %31 = trunc i64 %26 to i32
  tail call fastcc void @compute_max_score_1(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, i32 noundef %31, i32 noundef %5, i32 noundef %7, i32 noundef %9, ptr noundef %14, ptr noundef %30, i32 noundef 1) #35
  br i1 %22, label %32, label %35

32:                                               ; preds = %29, %27
  %33 = phi i32 [ %28, %27 ], [ %31, %29 ]
  %34 = getelementptr inbounds %struct._junction_t, ptr %23, i64 %26, i32 1
  tail call fastcc void @compute_max_score_1(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, i32 noundef %33, i32 noundef %5, i32 noundef %7, i32 noundef %9, ptr noundef %14, ptr noundef nonnull %34, i32 noundef -1) #35
  br label %35

35:                                               ; preds = %32, %29
  %36 = add nuw nsw i64 %26, 1
  %37 = icmp eq i64 %36, %24
  br i1 %37, label %38, label %25, !llvm.loop !231

38:                                               ; preds = %35, %4
  tail call void @free(ptr noundef %14) #31
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @align_path(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr nocapture noundef %7, ptr nocapture noundef writeonly %8, i32 noundef %9, i32 noundef %10) unnamed_addr #0 {
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #30
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #30
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #30
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #30
  store ptr null, ptr %8, align 8, !tbaa !7
  store ptr null, ptr %7, align 8, !tbaa !7
  %16 = icmp eq i32 %2, %4
  %17 = icmp eq i32 %3, %5
  br i1 %16, label %18, label %26

18:                                               ; preds = %11
  br i1 %17, label %24, label %19

19:                                               ; preds = %18
  %20 = tail call fastcc ptr @xmalloc(i64 noundef 16) #31
  %21 = getelementptr inbounds %struct._edit_script, ptr %20, i64 0, i32 2
  store i8 2, ptr %21, align 4, !tbaa !166
  %22 = sub nsw i32 %5, %3
  %23 = getelementptr inbounds %struct._edit_script, ptr %20, i64 0, i32 1
  store i32 %22, ptr %23, align 8, !tbaa !168
  store ptr null, ptr %20, align 8, !tbaa !169
  store ptr %20, ptr %8, align 8, !tbaa !7
  br label %24

24:                                               ; preds = %19, %18
  %25 = phi ptr [ %20, %19 ], [ null, %18 ]
  store ptr %25, ptr %7, align 8, !tbaa !7
  br label %517

26:                                               ; preds = %11
  br i1 %17, label %27, label %32

27:                                               ; preds = %26
  %28 = tail call fastcc ptr @xmalloc(i64 noundef 16) #31
  %29 = getelementptr inbounds %struct._edit_script, ptr %28, i64 0, i32 2
  store i8 1, ptr %29, align 4, !tbaa !166
  %30 = sub nsw i32 %4, %2
  %31 = getelementptr inbounds %struct._edit_script, ptr %28, i64 0, i32 1
  store i32 %30, ptr %31, align 8, !tbaa !168
  store ptr null, ptr %28, align 8, !tbaa !169
  store ptr %28, ptr %8, align 8, !tbaa !7
  store ptr %28, ptr %7, align 8, !tbaa !7
  br label %517

32:                                               ; preds = %26
  %33 = icmp slt i32 %6, 2
  br i1 %33, label %34, label %154

34:                                               ; preds = %32
  %35 = sub nsw i32 %3, %2
  %36 = sub nsw i32 %5, %4
  %37 = icmp eq i32 %36, %35
  br i1 %37, label %38, label %43

38:                                               ; preds = %34
  %39 = tail call fastcc ptr @xmalloc(i64 noundef 16) #31
  %40 = getelementptr inbounds %struct._edit_script, ptr %39, i64 0, i32 2
  store i8 3, ptr %40, align 4, !tbaa !166
  %41 = sub nsw i32 %4, %2
  %42 = getelementptr inbounds %struct._edit_script, ptr %39, i64 0, i32 1
  store i32 %41, ptr %42, align 8, !tbaa !168
  store ptr null, ptr %39, align 8, !tbaa !169
  store ptr %39, ptr %8, align 8, !tbaa !7
  store ptr %39, ptr %7, align 8, !tbaa !7
  br label %517

43:                                               ; preds = %34
  %44 = sub nsw i32 %5, %3
  %45 = sub nsw i32 %4, %2
  %46 = add nsw i32 %45, 1
  %47 = icmp eq i32 %44, %46
  br i1 %47, label %48, label %97

48:                                               ; preds = %43
  %49 = icmp slt i32 %2, 0
  br i1 %49, label %82, label %50

50:                                               ; preds = %48
  %51 = icmp slt i32 %2, %4
  %52 = icmp slt i32 %3, %5
  %53 = and i1 %51, %52
  br i1 %53, label %54, label %82

54:                                               ; preds = %50
  %55 = sext i32 %3 to i64
  %56 = sext i32 %5 to i64
  %57 = zext i32 %2 to i64
  %58 = zext i32 %4 to i64
  br label %59

59:                                               ; preds = %67, %54
  %60 = phi i64 [ %57, %54 ], [ %68, %67 ]
  %61 = phi i64 [ %55, %54 ], [ %69, %67 ]
  %62 = getelementptr inbounds i8, ptr %0, i64 %60
  %63 = load i8, ptr %62, align 1, !tbaa !27
  %64 = getelementptr inbounds i8, ptr %1, i64 %61
  %65 = load i8, ptr %64, align 1, !tbaa !27
  %66 = icmp eq i8 %63, %65
  br i1 %66, label %67, label %73

67:                                               ; preds = %59
  %68 = add nuw nsw i64 %60, 1
  %69 = add nsw i64 %61, 1
  %70 = icmp ult i64 %68, %58
  %71 = icmp slt i64 %69, %56
  %72 = select i1 %70, i1 %71, i1 false
  br i1 %72, label %59, label %73, !llvm.loop !171

73:                                               ; preds = %67, %59
  %74 = phi i64 [ %60, %59 ], [ %68, %67 ]
  %75 = trunc i64 %74 to i32
  %76 = icmp sgt i32 %75, %2
  br i1 %76, label %77, label %82

77:                                               ; preds = %73
  %78 = tail call fastcc ptr @xmalloc(i64 noundef 16) #31
  %79 = getelementptr inbounds %struct._edit_script, ptr %78, i64 0, i32 2
  store i8 3, ptr %79, align 4, !tbaa !166
  %80 = sub nsw i32 %75, %2
  %81 = getelementptr inbounds %struct._edit_script, ptr %78, i64 0, i32 1
  store i32 %80, ptr %81, align 8, !tbaa !168
  store ptr %78, ptr %7, align 8, !tbaa !7
  br label %82

82:                                               ; preds = %77, %73, %50, %48
  %83 = phi ptr [ %78, %77 ], [ undef, %73 ], [ undef, %48 ], [ undef, %50 ]
  %84 = phi i32 [ %75, %77 ], [ %75, %73 ], [ %2, %48 ], [ %2, %50 ]
  %85 = tail call fastcc ptr @xmalloc(i64 noundef 16) #31
  %86 = getelementptr inbounds %struct._edit_script, ptr %85, i64 0, i32 2
  store i8 2, ptr %86, align 4, !tbaa !166
  %87 = getelementptr inbounds %struct._edit_script, ptr %85, i64 0, i32 1
  store i32 1, ptr %87, align 8, !tbaa !168
  %88 = load ptr, ptr %7, align 8, !tbaa !7
  %89 = icmp eq ptr %88, null
  %90 = select i1 %89, ptr %7, ptr %83
  store ptr %85, ptr %90, align 8, !tbaa !7
  store ptr %85, ptr %8, align 8, !tbaa !7
  store ptr null, ptr %85, align 8, !tbaa !169
  %91 = icmp eq i32 %84, %4
  br i1 %91, label %517, label %92

92:                                               ; preds = %82
  %93 = sub nsw i32 %4, %84
  %94 = tail call fastcc ptr @xmalloc(i64 noundef 16) #31
  store ptr %94, ptr %8, align 8, !tbaa !7
  %95 = getelementptr inbounds %struct._edit_script, ptr %94, i64 0, i32 2
  store i8 3, ptr %95, align 4, !tbaa !166
  %96 = getelementptr inbounds %struct._edit_script, ptr %94, i64 0, i32 1
  store i32 %93, ptr %96, align 8, !tbaa !168
  store ptr null, ptr %94, align 8, !tbaa !169
  store ptr %94, ptr %85, align 8, !tbaa !169
  br label %517

97:                                               ; preds = %43
  %98 = add nsw i32 %44, 1
  %99 = icmp eq i32 %98, %45
  br i1 %99, label %100, label %151

100:                                              ; preds = %97
  %101 = icmp slt i32 %2, 0
  br i1 %101, label %134, label %102

102:                                              ; preds = %100
  %103 = icmp slt i32 %2, %4
  %104 = icmp slt i32 %3, %5
  %105 = and i1 %103, %104
  br i1 %105, label %106, label %134

106:                                              ; preds = %102
  %107 = sext i32 %3 to i64
  %108 = sext i32 %5 to i64
  %109 = zext i32 %2 to i64
  %110 = zext i32 %4 to i64
  br label %111

111:                                              ; preds = %119, %106
  %112 = phi i64 [ %109, %106 ], [ %120, %119 ]
  %113 = phi i64 [ %107, %106 ], [ %121, %119 ]
  %114 = getelementptr inbounds i8, ptr %0, i64 %112
  %115 = load i8, ptr %114, align 1, !tbaa !27
  %116 = getelementptr inbounds i8, ptr %1, i64 %113
  %117 = load i8, ptr %116, align 1, !tbaa !27
  %118 = icmp eq i8 %115, %117
  br i1 %118, label %119, label %125

119:                                              ; preds = %111
  %120 = add nuw nsw i64 %112, 1
  %121 = add nsw i64 %113, 1
  %122 = icmp ult i64 %120, %110
  %123 = icmp slt i64 %121, %108
  %124 = select i1 %122, i1 %123, i1 false
  br i1 %124, label %111, label %125, !llvm.loop !171

125:                                              ; preds = %119, %111
  %126 = phi i64 [ %112, %111 ], [ %120, %119 ]
  %127 = trunc i64 %126 to i32
  %128 = icmp sgt i32 %127, %2
  br i1 %128, label %129, label %134

129:                                              ; preds = %125
  %130 = tail call fastcc ptr @xmalloc(i64 noundef 16) #31
  %131 = getelementptr inbounds %struct._edit_script, ptr %130, i64 0, i32 2
  store i8 3, ptr %131, align 4, !tbaa !166
  %132 = sub nsw i32 %127, %2
  %133 = getelementptr inbounds %struct._edit_script, ptr %130, i64 0, i32 1
  store i32 %132, ptr %133, align 8, !tbaa !168
  store ptr %130, ptr %7, align 8, !tbaa !7
  br label %134

134:                                              ; preds = %129, %125, %102, %100
  %135 = phi ptr [ %130, %129 ], [ undef, %125 ], [ undef, %100 ], [ undef, %102 ]
  %136 = phi i32 [ %127, %129 ], [ %127, %125 ], [ %2, %100 ], [ %2, %102 ]
  %137 = tail call fastcc ptr @xmalloc(i64 noundef 16) #31
  %138 = getelementptr inbounds %struct._edit_script, ptr %137, i64 0, i32 2
  store i8 1, ptr %138, align 4, !tbaa !166
  %139 = getelementptr inbounds %struct._edit_script, ptr %137, i64 0, i32 1
  store i32 1, ptr %139, align 8, !tbaa !168
  %140 = load ptr, ptr %7, align 8, !tbaa !7
  %141 = icmp eq ptr %140, null
  %142 = select i1 %141, ptr %7, ptr %135
  store ptr %137, ptr %142, align 8, !tbaa !7
  store ptr %137, ptr %8, align 8, !tbaa !7
  store ptr null, ptr %137, align 8, !tbaa !169
  %143 = add nsw i32 %136, 1
  %144 = icmp slt i32 %143, %4
  br i1 %144, label %145, label %517

145:                                              ; preds = %134
  %146 = tail call fastcc ptr @xmalloc(i64 noundef 16) #31
  store ptr %146, ptr %8, align 8, !tbaa !7
  %147 = getelementptr inbounds %struct._edit_script, ptr %146, i64 0, i32 2
  store i8 3, ptr %147, align 4, !tbaa !166
  %148 = xor i32 %136, -1
  %149 = add i32 %148, %4
  %150 = getelementptr inbounds %struct._edit_script, ptr %146, i64 0, i32 1
  store i32 %149, ptr %150, align 8, !tbaa !168
  store ptr null, ptr %146, align 8, !tbaa !169
  store ptr %146, ptr %137, align 8, !tbaa !169
  br label %517

151:                                              ; preds = %97
  %152 = load ptr, ptr @stderr, align 8, !tbaa !7
  %153 = tail call i64 @fwrite(ptr nonnull @.str, i64 48, i64 1, ptr %152) #37
  br label %517

154:                                              ; preds = %32
  %155 = lshr i32 %6, 1
  %156 = sub nsw i32 %6, %155
  %157 = sub nsw i32 %3, %2
  %158 = sub i32 %3, %4
  %159 = sub i32 %157, %155
  %160 = tail call i32 @llvm.smax.i32(i32 %158, i32 %159)
  %161 = sub i32 %5, %2
  %162 = add i32 %155, %157
  %163 = tail call i32 @llvm.smin.i32(i32 %161, i32 %162)
  %164 = sub nsw i32 %5, %4
  %165 = sub i32 %164, %156
  %166 = tail call i32 @llvm.smax.i32(i32 %158, i32 %165)
  %167 = add i32 %156, %164
  %168 = tail call i32 @llvm.smin.i32(i32 %161, i32 %167)
  %169 = sub i32 %163, %160
  %170 = add i32 %169, 1
  %171 = sext i32 %170 to i64
  %172 = shl nsw i64 %171, 2
  %173 = tail call fastcc ptr @xmalloc(i64 noundef %172) #31
  %174 = sext i32 %160 to i64
  %175 = sub nsw i64 0, %174
  %176 = getelementptr inbounds i32, ptr %173, i64 %175
  %177 = tail call fastcc ptr @xmalloc(i64 noundef %172) #31
  %178 = getelementptr inbounds i32, ptr %177, i64 %175
  %179 = icmp sgt i32 %160, %163
  br i1 %179, label %184, label %180

180:                                              ; preds = %154
  %181 = zext i32 %169 to i64
  %182 = shl nuw nsw i64 %181, 2
  %183 = add nuw nsw i64 %182, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %173, i8 -1, i64 %183, i1 false), !tbaa !11
  br label %184

184:                                              ; preds = %180, %154
  %185 = icmp slt i32 %2, 0
  br i1 %185, label %209, label %186

186:                                              ; preds = %184
  %187 = icmp slt i32 %2, %4
  %188 = icmp slt i32 %3, %5
  %189 = and i1 %187, %188
  br i1 %189, label %190, label %209

190:                                              ; preds = %186
  %191 = sext i32 %3 to i64
  %192 = sext i32 %5 to i64
  %193 = zext i32 %2 to i64
  %194 = zext i32 %4 to i64
  br label %195

195:                                              ; preds = %203, %190
  %196 = phi i64 [ %193, %190 ], [ %204, %203 ]
  %197 = phi i64 [ %191, %190 ], [ %205, %203 ]
  %198 = getelementptr inbounds i8, ptr %0, i64 %196
  %199 = load i8, ptr %198, align 1, !tbaa !27
  %200 = getelementptr inbounds i8, ptr %1, i64 %197
  %201 = load i8, ptr %200, align 1, !tbaa !27
  %202 = icmp eq i8 %199, %201
  br i1 %202, label %203, label %213

203:                                              ; preds = %195
  %204 = add nuw nsw i64 %196, 1
  %205 = add nsw i64 %197, 1
  %206 = icmp ult i64 %204, %194
  %207 = icmp slt i64 %205, %192
  %208 = select i1 %206, i1 %207, i1 false
  br i1 %208, label %195, label %213, !llvm.loop !171

209:                                              ; preds = %186, %184
  %210 = sext i32 %157 to i64
  %211 = getelementptr inbounds i32, ptr %176, i64 %210
  store i32 %2, ptr %211, align 4, !tbaa !11
  %212 = sext i32 %5 to i64
  br label %218

213:                                              ; preds = %203, %195
  %214 = phi i64 [ %196, %195 ], [ %204, %203 ]
  %215 = trunc i64 %214 to i32
  %216 = sext i32 %157 to i64
  %217 = getelementptr inbounds i32, ptr %176, i64 %216
  store i32 %215, ptr %217, align 4, !tbaa !11
  br label %218

218:                                              ; preds = %213, %209
  %219 = phi i64 [ %192, %213 ], [ %212, %209 ]
  %220 = sext i32 %4 to i64
  %221 = xor i32 %2, -1
  %222 = add i32 %221, %3
  %223 = tail call i32 @llvm.umax.i32(i32 %155, i32 1)
  %224 = mul nsw i64 %174, -4
  %225 = getelementptr i8, ptr %173, i64 %224
  %226 = getelementptr i8, ptr %177, i64 %224
  %227 = add i32 %3, 1
  %228 = sub i32 %227, %2
  br label %229

229:                                              ; preds = %333, %218
  %230 = phi i64 [ %337, %333 ], [ 0, %218 ]
  %231 = phi i32 [ %335, %333 ], [ %222, %218 ]
  %232 = phi i32 [ %334, %333 ], [ 1, %218 ]
  %233 = tail call i32 @llvm.smax.i32(i32 %231, i32 %159)
  %234 = tail call i32 @llvm.smax.i32(i32 %233, i32 %158)
  %235 = sext i32 %234 to i64
  %236 = shl nsw i64 %235, 2
  %237 = getelementptr i8, ptr %225, i64 %236
  %238 = getelementptr i8, ptr %226, i64 %236
  %239 = trunc i64 %230 to i32
  %240 = add i32 %228, %239
  %241 = tail call i32 @llvm.smin.i32(i32 %240, i32 %162)
  %242 = tail call i32 @llvm.smin.i32(i32 %241, i32 %161)
  %243 = tail call i32 @llvm.smax.i32(i32 %242, i32 %231)
  %244 = tail call i32 @llvm.smax.i32(i32 %243, i32 %159)
  %245 = tail call i32 @llvm.smax.i32(i32 %244, i32 %158)
  %246 = sext i32 %245 to i64
  %247 = add nsw i64 %246, 1
  %248 = sub nsw i64 %247, %235
  %249 = shl nuw nsw i64 %248, 2
  %250 = sub nsw i32 %157, %232
  %251 = tail call i32 @llvm.smax.i32(i32 %160, i32 %250)
  %252 = add nsw i32 %232, %157
  %253 = tail call i32 @llvm.smin.i32(i32 %163, i32 %252)
  %254 = icmp sgt i32 %251, %253
  br i1 %254, label %333, label %255

255:                                              ; preds = %229
  %256 = tail call i32 @llvm.smax.i32(i32 %231, i32 %159)
  %257 = tail call i32 @llvm.smax.i32(i32 %256, i32 %158)
  %258 = sext i32 %257 to i64
  %259 = sext i32 %253 to i64
  br label %260

260:                                              ; preds = %327, %255
  %261 = phi i64 [ %258, %255 ], [ %330, %327 ]
  %262 = trunc i64 %261 to i32
  %263 = icmp eq i32 %251, %262
  br i1 %263, label %264, label %269

264:                                              ; preds = %260
  %265 = add nsw i64 %261, 1
  %266 = getelementptr inbounds i32, ptr %176, i64 %265
  %267 = load i32, ptr %266, align 4, !tbaa !11
  %268 = add nsw i32 %267, 1
  br label %299

269:                                              ; preds = %260
  %270 = icmp eq i32 %253, %262
  br i1 %270, label %271, label %275

271:                                              ; preds = %269
  %272 = add nsw i64 %261, -1
  %273 = getelementptr inbounds i32, ptr %176, i64 %272
  %274 = load i32, ptr %273, align 4, !tbaa !11
  br label %299

275:                                              ; preds = %269
  %276 = getelementptr inbounds i32, ptr %176, i64 %261
  %277 = load i32, ptr %276, align 4, !tbaa !11
  %278 = add nsw i64 %261, 1
  %279 = getelementptr inbounds i32, ptr %176, i64 %278
  %280 = load i32, ptr %279, align 4, !tbaa !11
  %281 = icmp slt i32 %277, %280
  br i1 %281, label %282, label %286

282:                                              ; preds = %275
  %283 = add nsw i64 %261, -1
  %284 = getelementptr inbounds i32, ptr %176, i64 %283
  %285 = load i32, ptr %284, align 4, !tbaa !11
  br label %292

286:                                              ; preds = %275
  %287 = add nsw i32 %277, 1
  %288 = add nsw i64 %261, -1
  %289 = getelementptr inbounds i32, ptr %176, i64 %288
  %290 = load i32, ptr %289, align 4, !tbaa !11
  %291 = icmp slt i32 %287, %290
  br i1 %291, label %292, label %299

292:                                              ; preds = %286, %282
  %293 = phi i32 [ %285, %282 ], [ %290, %286 ]
  %294 = add nsw i32 %280, 1
  %295 = icmp slt i32 %294, %293
  %296 = icmp slt i32 %280, %277
  %297 = or i1 %296, %295
  %298 = select i1 %297, i32 %293, i32 %294
  br label %299

299:                                              ; preds = %292, %286, %271, %264
  %300 = phi i32 [ %268, %264 ], [ %274, %271 ], [ %287, %286 ], [ %298, %292 ]
  %301 = icmp slt i32 %300, 0
  br i1 %301, label %327, label %302

302:                                              ; preds = %299
  %303 = add i32 %300, %262
  %304 = icmp slt i32 %300, %4
  %305 = icmp slt i32 %303, %5
  %306 = and i1 %304, %305
  br i1 %306, label %307, label %327

307:                                              ; preds = %302
  %308 = sext i32 %303 to i64
  %309 = zext i32 %300 to i64
  br label %310

310:                                              ; preds = %318, %307
  %311 = phi i64 [ %309, %307 ], [ %319, %318 ]
  %312 = phi i64 [ %308, %307 ], [ %320, %318 ]
  %313 = getelementptr inbounds i8, ptr %0, i64 %311
  %314 = load i8, ptr %313, align 1, !tbaa !27
  %315 = getelementptr inbounds i8, ptr %1, i64 %312
  %316 = load i8, ptr %315, align 1, !tbaa !27
  %317 = icmp eq i8 %314, %316
  br i1 %317, label %318, label %324

318:                                              ; preds = %310
  %319 = add nuw nsw i64 %311, 1
  %320 = add nsw i64 %312, 1
  %321 = icmp slt i64 %319, %220
  %322 = icmp slt i64 %320, %219
  %323 = select i1 %321, i1 %322, i1 false
  br i1 %323, label %310, label %324, !llvm.loop !171

324:                                              ; preds = %318, %310
  %325 = phi i64 [ %311, %310 ], [ %319, %318 ]
  %326 = trunc i64 %325 to i32
  br label %327

327:                                              ; preds = %324, %302, %299
  %328 = phi i32 [ %300, %299 ], [ %300, %302 ], [ %326, %324 ]
  %329 = getelementptr inbounds i32, ptr %178, i64 %261
  store i32 %328, ptr %329, align 4, !tbaa !11
  %330 = add nsw i64 %261, 1
  %331 = icmp slt i64 %261, %259
  br i1 %331, label %260, label %332, !llvm.loop !232

332:                                              ; preds = %327
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %237, ptr align 4 %238, i64 %249, i1 false), !tbaa !11
  br label %333

333:                                              ; preds = %332, %229
  %334 = add nuw i32 %232, 1
  %335 = add i32 %231, -1
  %336 = icmp eq i32 %232, %223
  %337 = add nuw nsw i64 %230, 1
  br i1 %336, label %338, label %229, !llvm.loop !233

338:                                              ; preds = %333
  %339 = sub i32 %168, %166
  %340 = add i32 %339, 1
  %341 = sext i32 %340 to i64
  %342 = shl nsw i64 %341, 2
  %343 = tail call fastcc ptr @xmalloc(i64 noundef %342) #31
  %344 = sext i32 %166 to i64
  %345 = sub nsw i64 0, %344
  %346 = getelementptr inbounds i32, ptr %343, i64 %345
  %347 = tail call fastcc ptr @xmalloc(i64 noundef %342) #31
  %348 = getelementptr inbounds i32, ptr %347, i64 %345
  %349 = icmp sgt i32 %166, %168
  br i1 %349, label %359, label %350

350:                                              ; preds = %338
  %351 = add nsw i32 %4, 1
  %352 = add i32 %168, 1
  br label %353

353:                                              ; preds = %353, %350
  %354 = phi i64 [ %344, %350 ], [ %356, %353 ]
  %355 = getelementptr inbounds i32, ptr %346, i64 %354
  store i32 %351, ptr %355, align 4, !tbaa !11
  %356 = add nsw i64 %354, 1
  %357 = trunc i64 %356 to i32
  %358 = icmp eq i32 %352, %357
  br i1 %358, label %359, label %353, !llvm.loop !234

359:                                              ; preds = %353, %338
  %360 = tail call fastcc i32 @rsnake(ptr noundef %0, ptr noundef %1, i32 noundef %164, i32 noundef %4, i32 noundef %2, i32 noundef %3, i32 noundef %9, i32 noundef %10) #35
  %361 = sext i32 %164 to i64
  %362 = getelementptr inbounds i32, ptr %346, i64 %361
  store i32 %360, ptr %362, align 4, !tbaa !11
  %363 = icmp slt i32 %156, 1
  br i1 %363, label %451, label %364

364:                                              ; preds = %359
  %365 = xor i32 %4, -1
  %366 = add i32 %365, %5
  %367 = add nuw i32 %6, 1
  %368 = sub i32 %367, %155
  %369 = mul nsw i64 %344, -4
  %370 = getelementptr i8, ptr %343, i64 %369
  %371 = getelementptr i8, ptr %347, i64 %369
  %372 = add i32 %5, 1
  %373 = sub i32 %372, %4
  br label %374

374:                                              ; preds = %446, %364
  %375 = phi i32 [ %450, %446 ], [ 0, %364 ]
  %376 = phi i32 [ %448, %446 ], [ %366, %364 ]
  %377 = phi i32 [ %447, %446 ], [ 1, %364 ]
  %378 = tail call i32 @llvm.smax.i32(i32 %376, i32 %165)
  %379 = tail call i32 @llvm.smax.i32(i32 %378, i32 %158)
  %380 = sext i32 %379 to i64
  %381 = shl nsw i64 %380, 2
  %382 = getelementptr i8, ptr %370, i64 %381
  %383 = getelementptr i8, ptr %371, i64 %381
  %384 = add i32 %373, %375
  %385 = tail call i32 @llvm.smin.i32(i32 %384, i32 %167)
  %386 = tail call i32 @llvm.smin.i32(i32 %385, i32 %161)
  %387 = tail call i32 @llvm.smax.i32(i32 %386, i32 %376)
  %388 = tail call i32 @llvm.smax.i32(i32 %387, i32 %165)
  %389 = tail call i32 @llvm.smax.i32(i32 %388, i32 %158)
  %390 = sext i32 %389 to i64
  %391 = add nsw i64 %390, 1
  %392 = sub nsw i64 %391, %380
  %393 = shl nuw nsw i64 %392, 2
  %394 = sub nsw i32 %164, %377
  %395 = tail call i32 @llvm.smax.i32(i32 %166, i32 %394)
  %396 = add nsw i32 %377, %164
  %397 = tail call i32 @llvm.smin.i32(i32 %168, i32 %396)
  %398 = icmp sgt i32 %395, %397
  br i1 %398, label %446, label %399

399:                                              ; preds = %374
  %400 = tail call i32 @llvm.smax.i32(i32 %376, i32 %165)
  %401 = tail call i32 @llvm.smax.i32(i32 %400, i32 %158)
  %402 = sext i32 %401 to i64
  %403 = sext i32 %397 to i64
  br label %404

404:                                              ; preds = %439, %399
  %405 = phi i64 [ %402, %399 ], [ %440, %439 ]
  %406 = trunc i64 %405 to i32
  %407 = icmp eq i32 %395, %406
  br i1 %407, label %408, label %412

408:                                              ; preds = %404
  %409 = add nsw i64 %405, 1
  %410 = getelementptr inbounds i32, ptr %346, i64 %409
  %411 = load i32, ptr %410, align 4, !tbaa !11
  br label %439

412:                                              ; preds = %404
  %413 = icmp eq i32 %397, %406
  br i1 %413, label %414, label %420

414:                                              ; preds = %412
  %415 = add nsw i64 %405, -1
  %416 = getelementptr inbounds i32, ptr %346, i64 %415
  %417 = load i32, ptr %416, align 4, !tbaa !11
  %418 = add nsw i32 %417, -1
  %419 = add nsw i64 %405, 1
  br label %439

420:                                              ; preds = %412
  %421 = getelementptr inbounds i32, ptr %346, i64 %405
  %422 = load i32, ptr %421, align 4, !tbaa !11
  %423 = add nsw i32 %422, -1
  %424 = add nsw i64 %405, 1
  %425 = getelementptr inbounds i32, ptr %346, i64 %424
  %426 = load i32, ptr %425, align 4, !tbaa !11
  %427 = icmp sgt i32 %423, %426
  %428 = add nsw i64 %405, -1
  %429 = getelementptr inbounds i32, ptr %346, i64 %428
  %430 = load i32, ptr %429, align 4, !tbaa !11
  %431 = icmp sgt i32 %422, %430
  %432 = select i1 %427, i1 true, i1 %431
  br i1 %432, label %433, label %439

433:                                              ; preds = %420
  %434 = add nsw i32 %430, -1
  %435 = icmp sgt i32 %434, %426
  %436 = icmp sgt i32 %430, %422
  %437 = or i1 %436, %435
  %438 = select i1 %437, i32 %426, i32 %434
  br label %439

439:                                              ; preds = %433, %420, %414, %408
  %440 = phi i64 [ %424, %433 ], [ %419, %414 ], [ %409, %408 ], [ %424, %420 ]
  %441 = phi i32 [ %438, %433 ], [ %418, %414 ], [ %411, %408 ], [ %423, %420 ]
  %442 = tail call fastcc i32 @rsnake(ptr noundef %0, ptr noundef %1, i32 noundef %406, i32 noundef %441, i32 noundef %2, i32 noundef %3, i32 noundef %9, i32 noundef %10) #35
  %443 = getelementptr inbounds i32, ptr %348, i64 %405
  store i32 %442, ptr %443, align 4, !tbaa !11
  %444 = icmp slt i64 %405, %403
  br i1 %444, label %404, label %445, !llvm.loop !235

445:                                              ; preds = %439
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %382, ptr align 4 %383, i64 %393, i1 false), !tbaa !11
  br label %446

446:                                              ; preds = %445, %374
  %447 = add nuw i32 %377, 1
  %448 = add i32 %376, -1
  %449 = icmp eq i32 %447, %368
  %450 = add nuw i32 %375, 1
  br i1 %449, label %451, label %374, !llvm.loop !236

451:                                              ; preds = %446, %359
  %452 = tail call i32 @llvm.smax.i32(i32 %160, i32 %166)
  %453 = tail call i32 @llvm.smin.i32(i32 %163, i32 %168)
  %454 = icmp sgt i32 %452, %453
  br i1 %454, label %497, label %455

455:                                              ; preds = %451
  %456 = tail call i32 @llvm.smax.i32(i32 %165, i32 %159)
  %457 = tail call i32 @llvm.smax.i32(i32 %456, i32 %158)
  %458 = sext i32 %457 to i64
  %459 = sext i32 %453 to i64
  %460 = add i32 %457, 1
  %461 = add i32 %460, %453
  %462 = sub i32 %461, %452
  %463 = getelementptr inbounds i32, ptr %176, i64 %458
  %464 = load i32, ptr %463, align 4, !tbaa !11
  %465 = getelementptr inbounds i32, ptr %346, i64 %458
  %466 = load i32, ptr %465, align 4, !tbaa !11
  %467 = icmp slt i32 %464, %466
  br i1 %467, label %468, label %480

468:                                              ; preds = %455
  %469 = sub i32 %453, %457
  %470 = zext i32 %469 to i64
  %471 = add nsw i64 %458, %470
  br label %490

472:                                              ; preds = %490
  %473 = getelementptr inbounds i32, ptr %176, i64 %492
  %474 = load i32, ptr %473, align 4, !tbaa !11
  %475 = getelementptr inbounds i32, ptr %346, i64 %492
  %476 = load i32, ptr %475, align 4, !tbaa !11
  %477 = icmp slt i32 %474, %476
  br i1 %477, label %490, label %478, !llvm.loop !237

478:                                              ; preds = %472
  %.lcssa5 = phi i32 [ %474, %472 ]
  %.lcssa4 = phi i32 [ %476, %472 ]
  %.lcssa3 = phi i64 [ %491, %472 ]
  %.lcssa1 = phi i32 [ %493, %472 ]
  %479 = icmp sge i64 %.lcssa3, %459
  br label %480

480:                                              ; preds = %478, %455
  %481 = phi i32 [ %.lcssa1, %478 ], [ %457, %455 ]
  %482 = phi i1 [ %479, %478 ], [ false, %455 ]
  %483 = phi i32 [ %.lcssa5, %478 ], [ %464, %455 ]
  %484 = phi i32 [ %.lcssa4, %478 ], [ %466, %455 ]
  %485 = sub nsw i32 %483, %2
  %486 = sub nsw i32 %4, %484
  %487 = icmp slt i32 %485, %486
  %488 = select i1 %487, i32 %484, i32 %483
  %489 = add nsw i32 %488, %481
  br label %497

490:                                              ; preds = %472, %468
  %491 = phi i64 [ %492, %472 ], [ %458, %468 ]
  %492 = add nsw i64 %491, 1
  %493 = trunc i64 %492 to i32
  %494 = icmp eq i32 %462, %493
  br i1 %494, label %495, label %472, !llvm.loop !237

495:                                              ; preds = %490
  %496 = icmp sge i64 %471, %459
  br label %497

497:                                              ; preds = %495, %480, %451
  %498 = phi i1 [ %482, %480 ], [ true, %451 ], [ %496, %495 ]
  %499 = phi i32 [ %488, %480 ], [ %2, %451 ], [ %2, %495 ]
  %500 = phi i32 [ %489, %480 ], [ %3, %451 ], [ %3, %495 ]
  tail call void @free(ptr noundef %173) #31
  tail call void @free(ptr noundef %343) #31
  tail call void @free(ptr noundef %177) #31
  tail call void @free(ptr noundef %347) #31
  br i1 %498, label %507, label %501

501:                                              ; preds = %497
  call fastcc void @align_path(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %499, i32 noundef %500, i32 noundef %155, ptr noundef nonnull %12, ptr noundef nonnull %13, i32 noundef %9, i32 noundef %10) #35
  call fastcc void @align_path(ptr noundef %0, ptr noundef %1, i32 noundef %499, i32 noundef %500, i32 noundef %4, i32 noundef %5, i32 noundef %156, ptr noundef nonnull %14, ptr noundef nonnull %15, i32 noundef %9, i32 noundef %10) #35
  %502 = load ptr, ptr %12, align 8, !tbaa !7
  %503 = icmp eq ptr %502, null
  %504 = load ptr, ptr %14, align 8, !tbaa !7
  %505 = load ptr, ptr %13, align 8
  br i1 %503, label %510, label %506

506:                                              ; preds = %501
  store ptr %504, ptr %505, align 8, !tbaa !169
  br label %510

507:                                              ; preds = %497
  %508 = load ptr, ptr @stderr, align 8, !tbaa !7
  %509 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 48, i64 1, ptr %508) #37
  br label %510

510:                                              ; preds = %507, %506, %501
  %511 = phi ptr [ %505, %506 ], [ undef, %507 ], [ %505, %501 ]
  %512 = phi ptr [ %504, %506 ], [ undef, %507 ], [ %504, %501 ]
  %513 = phi ptr [ %502, %506 ], [ null, %507 ], [ %504, %501 ]
  store ptr %513, ptr %7, align 8, !tbaa !7
  %514 = icmp eq ptr %512, null
  %515 = load ptr, ptr %15, align 8
  %516 = select i1 %514, ptr %511, ptr %515
  store ptr %516, ptr %8, align 8, !tbaa !7
  br label %517

517:                                              ; preds = %510, %151, %145, %134, %92, %82, %38, %27, %24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #30
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #30
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #30
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #30
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind optsize uwtable
define internal fastcc i32 @rsnake(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) unnamed_addr #10 {
  %9 = icmp sgt i32 %3, %6
  br i1 %9, label %43, label %10

10:                                               ; preds = %8
  %11 = or i32 %5, %4
  %12 = icmp sgt i32 %11, -1
  br i1 %12, label %16, label %13

13:                                               ; preds = %10
  %14 = load ptr, ptr @stderr, align 8, !tbaa !7
  %15 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %14, ptr noundef nonnull @.str.8, i32 noundef %4, i32 noundef %5) #32
  br label %16

16:                                               ; preds = %13, %10
  %17 = add nsw i32 %3, %2
  %18 = icmp sgt i32 %17, %7
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load ptr, ptr @stderr, align 8, !tbaa !7
  %21 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %20, ptr noundef nonnull @.str.9, i32 noundef %3, i32 noundef %17) #32
  br label %22

22:                                               ; preds = %19, %16
  %23 = sext i32 %3 to i64
  %24 = sext i32 %4 to i64
  %25 = sext i32 %17 to i64
  %26 = sext i32 %5 to i64
  br label %27

27:                                               ; preds = %33, %22
  %28 = phi i64 [ %37, %33 ], [ %25, %22 ]
  %29 = phi i64 [ %34, %33 ], [ %23, %22 ]
  %30 = icmp sgt i64 %29, %24
  %31 = icmp sgt i64 %28, %26
  %32 = and i1 %31, %30
  br i1 %32, label %33, label %41

33:                                               ; preds = %27
  %34 = add nsw i64 %29, -1
  %35 = getelementptr inbounds i8, ptr %0, i64 %34
  %36 = load i8, ptr %35, align 1, !tbaa !27
  %37 = add nsw i64 %28, -1
  %38 = getelementptr inbounds i8, ptr %1, i64 %37
  %39 = load i8, ptr %38, align 1, !tbaa !27
  %40 = icmp eq i8 %36, %39
  br i1 %40, label %27, label %41, !llvm.loop !238

41:                                               ; preds = %33, %27
  %.lcssa = phi i64 [ %29, %33 ], [ %29, %27 ]
  %42 = trunc i64 %.lcssa to i32
  br label %43

43:                                               ; preds = %41, %8
  %44 = phi i32 [ %3, %8 ], [ %42, %41 ]
  ret i32 %44
}

; Function Attrs: nofree nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @compute_max_score_1(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr nocapture noundef %7, ptr nocapture noundef readonly %8, i32 noundef %9) unnamed_addr #16 {
  %11 = load i32, ptr getelementptr inbounds (%struct._options_t, ptr @options, i64 0, i32 9), align 4, !tbaa !30
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds i8, ptr %7, i64 %12
  %14 = load i32, ptr %8, align 1
  store i32 %14, ptr %13, align 1
  %15 = load i32, ptr getelementptr inbounds (%struct._options_t, ptr @options, i64 0, i32 7), align 4, !tbaa !25
  %16 = sub i32 0, %15
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %146, label %18

18:                                               ; preds = %10
  %19 = getelementptr inbounds i8, ptr %7, i64 2
  %20 = getelementptr inbounds i8, ptr %7, i64 4
  %21 = zext i32 %5 to i64
  %22 = getelementptr inbounds i8, ptr %1, i64 %21
  %23 = getelementptr inbounds i8, ptr %8, i64 1
  %24 = zext i32 %4 to i64
  %25 = getelementptr inbounds i8, ptr %0, i64 %24
  %26 = getelementptr i8, ptr %0, i64 -3
  %27 = add i32 %6, -3
  %28 = getelementptr inbounds i8, ptr %8, i64 2
  %29 = add i32 %6, -2
  %30 = getelementptr inbounds i8, ptr %8, i64 3
  %31 = zext i32 %6 to i64
  %32 = getelementptr i8, ptr %26, i64 %31
  %33 = getelementptr inbounds %struct._splice_score_t, ptr %2, i64 0, i32 4
  %34 = getelementptr inbounds %struct._splice_score_t, ptr %2, i64 0, i32 5
  %35 = getelementptr inbounds %struct._splice_score_t, ptr %2, i64 0, i32 3
  %36 = getelementptr inbounds %struct._splice_score_t, ptr %2, i64 0, i32 1
  %37 = getelementptr inbounds %struct._splice_score_t, ptr %2, i64 0, i32 2
  %38 = getelementptr inbounds %struct._splice_score_t, ptr %2, i64 0, i32 6
  %39 = sext i32 %16 to i64
  %40 = sub nsw i64 0, %12
  %41 = getelementptr inbounds i8, ptr %22, i64 %40
  %42 = getelementptr inbounds i8, ptr %20, i64 %12
  %43 = getelementptr inbounds i8, ptr %25, i64 %40
  %44 = add i32 %11, 2
  %45 = getelementptr inbounds i8, ptr %19, i64 %12
  %46 = sext i32 %15 to i64
  br label %47

47:                                               ; preds = %143, %18
  %48 = phi i64 [ %39, %18 ], [ %144, %143 ]
  %49 = phi i32 [ undef, %18 ], [ %.lcssa2, %143 ]
  %50 = phi i32 [ undef, %18 ], [ %.lcssa4, %143 ]
  %51 = getelementptr inbounds i8, ptr %41, i64 %48
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %7, ptr align 1 %51, i64 %12, i1 false)
  %52 = getelementptr inbounds i8, ptr %22, i64 %48
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %42, ptr align 1 %52, i64 %12, i1 false)
  %53 = trunc i64 %48 to i32
  %54 = add i32 %53, %4
  %55 = load i8, ptr %8, align 1, !tbaa !27
  %56 = load i8, ptr %23, align 1, !tbaa !27
  %57 = getelementptr inbounds i8, ptr %43, i64 %48
  %58 = add i32 %27, %53
  %59 = add i32 %29, %53
  %60 = getelementptr i8, ptr %32, i64 %48
  %61 = add i32 %53, %6
  br label %62

62:                                               ; preds = %120, %47
  %63 = phi i64 [ -1, %47 ], [ %124, %120 ]
  %64 = phi i32 [ 0, %47 ], [ %95, %120 ]
  %65 = phi i32 [ 0, %47 ], [ %94, %120 ]
  %66 = phi i32 [ %49, %47 ], [ %93, %120 ]
  %67 = phi i32 [ 0, %47 ], [ %123, %120 ]
  %68 = phi i32 [ %50, %47 ], [ %122, %120 ]
  %69 = phi i32 [ 0, %47 ], [ %121, %120 ]
  %70 = getelementptr inbounds i8, ptr %57, i64 %63
  %71 = tail call fastcc i32 @SWscore(ptr noundef %70, ptr noundef %7, i32 noundef %44) #35
  %72 = icmp ult i32 %71, %65
  %73 = trunc i64 %63 to i32
  br i1 %72, label %91, label %74

74:                                               ; preds = %62
  %75 = add i32 %54, %73
  %76 = add i32 %75, 1
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds i8, ptr %0, i64 %77
  %79 = load i8, ptr %78, align 1, !tbaa !27
  %80 = icmp eq i8 %79, %56
  %81 = zext i32 %75 to i64
  %82 = getelementptr inbounds i8, ptr %0, i64 %81
  %83 = load i8, ptr %82, align 1, !tbaa !27
  %84 = icmp eq i8 %83, %55
  %85 = select i1 %84, i32 2, i32 1
  %86 = zext i1 %84 to i32
  %87 = select i1 %80, i32 %85, i32 %86
  %88 = icmp ugt i32 %71, %65
  %89 = icmp ugt i32 %87, %64
  %90 = select i1 %88, i1 true, i1 %89
  br i1 %90, label %92, label %91

91:                                               ; preds = %74, %62
  br label %92

92:                                               ; preds = %91, %74
  %93 = phi i32 [ %75, %74 ], [ %66, %91 ]
  %94 = phi i32 [ %71, %74 ], [ %65, %91 ]
  %95 = phi i32 [ %87, %74 ], [ %64, %91 ]
  %96 = add i32 %58, %73
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds i8, ptr %0, i64 %97
  %99 = load i8, ptr %98, align 1, !tbaa !27
  %100 = load i8, ptr %28, align 1, !tbaa !27
  %101 = icmp eq i8 %99, %100
  %102 = zext i1 %101 to i32
  %103 = add i32 %59, %73
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds i8, ptr %0, i64 %104
  %106 = load i8, ptr %105, align 1, !tbaa !27
  %107 = load i8, ptr %30, align 1, !tbaa !27
  %108 = icmp eq i8 %106, %107
  %109 = select i1 %101, i32 2, i32 1
  %110 = select i1 %108, i32 %109, i32 %102
  %111 = getelementptr inbounds i8, ptr %60, i64 %63
  %112 = tail call fastcc i32 @SWscore(ptr noundef nonnull %111, ptr noundef nonnull %45, i32 noundef %44) #35
  %113 = icmp ult i32 %112, %69
  br i1 %113, label %120, label %114

114:                                              ; preds = %92
  %115 = icmp ugt i32 %112, %69
  %116 = icmp ugt i32 %110, %67
  %117 = select i1 %115, i1 true, i1 %116
  br i1 %117, label %118, label %120

118:                                              ; preds = %114
  %119 = add i32 %61, %73
  br label %120

120:                                              ; preds = %118, %114, %92
  %121 = phi i32 [ %112, %118 ], [ %69, %92 ], [ %69, %114 ]
  %122 = phi i32 [ %119, %118 ], [ %68, %92 ], [ %68, %114 ]
  %123 = phi i32 [ %110, %118 ], [ %67, %92 ], [ %67, %114 ]
  %124 = add nsw i64 %63, 1
  %125 = icmp eq i64 %124, 2
  br i1 %125, label %126, label %62, !llvm.loop !239

126:                                              ; preds = %120
  %.lcssa5 = phi i32 [ %121, %120 ]
  %.lcssa4 = phi i32 [ %122, %120 ]
  %.lcssa3 = phi i32 [ %123, %120 ]
  %.lcssa2 = phi i32 [ %93, %120 ]
  %.lcssa1 = phi i32 [ %94, %120 ]
  %.lcssa = phi i32 [ %95, %120 ]
  %127 = add i32 %.lcssa5, %.lcssa1
  %128 = add nuw nsw i32 %.lcssa3, %.lcssa
  %129 = load i32, ptr %33, align 4, !tbaa !229
  %130 = icmp ult i32 %127, %129
  br i1 %130, label %143, label %131

131:                                              ; preds = %126
  %132 = icmp ugt i32 %127, %129
  br i1 %132, label %141, label %133

133:                                              ; preds = %131
  %134 = load i32, ptr %34, align 4, !tbaa !230
  %135 = icmp ult i32 %128, %134
  br i1 %135, label %143, label %136

136:                                              ; preds = %133
  %137 = icmp ugt i32 %128, %134
  br i1 %137, label %141, label %138

138:                                              ; preds = %136
  %139 = load i32, ptr %35, align 4, !tbaa !143
  %140 = icmp ugt i32 %139, %3
  br i1 %140, label %141, label %143

141:                                              ; preds = %138, %136, %131
  store i32 %127, ptr %33, align 4, !tbaa !229
  store i32 %128, ptr %34, align 4, !tbaa !230
  store i32 %.lcssa2, ptr %2, align 4, !tbaa !137
  %142 = add i32 %53, %5
  store i32 %142, ptr %36, align 4, !tbaa !139
  store i32 %.lcssa4, ptr %37, align 4, !tbaa !140
  store i32 %3, ptr %35, align 4, !tbaa !143
  store i32 %9, ptr %38, align 4, !tbaa !141
  br label %143

143:                                              ; preds = %141, %138, %133, %126
  %144 = add nsw i64 %48, 1
  %145 = icmp eq i64 %48, %46
  br i1 %145, label %146, label %47, !llvm.loop !240

146:                                              ; preds = %143, %10
  ret void
}

; Function Attrs: nofree nosync nounwind optsize memory(argmem: read) uwtable
define internal fastcc i32 @SWscore(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #17 {
  %4 = load i8, ptr %0, align 1, !tbaa !27
  %5 = load i8, ptr %1, align 1, !tbaa !27
  %6 = icmp eq i8 %4, %5
  %7 = zext i1 %6 to i32
  %8 = icmp ugt i32 %2, 1
  br i1 %8, label %9, label %39

9:                                                ; preds = %3
  %10 = zext i32 %2 to i64
  br label %11

11:                                               ; preds = %11, %9
  %12 = phi i8 [ %5, %9 ], [ %19, %11 ]
  %13 = phi i8 [ %4, %9 ], [ %25, %11 ]
  %14 = phi i64 [ 1, %9 ], [ %37, %11 ]
  %15 = phi i32 [ 0, %9 ], [ %23, %11 ]
  %16 = phi i32 [ %7, %9 ], [ %36, %11 ]
  %17 = phi i32 [ 0, %9 ], [ %29, %11 ]
  %18 = getelementptr inbounds i8, ptr %1, i64 %14
  %19 = load i8, ptr %18, align 1, !tbaa !27
  %20 = icmp eq i8 %13, %19
  %21 = zext i1 %20 to i32
  %22 = add nsw i32 %15, %21
  %23 = tail call i32 @llvm.smax.i32(i32 %22, i32 %16)
  %24 = getelementptr inbounds i8, ptr %0, i64 %14
  %25 = load i8, ptr %24, align 1, !tbaa !27
  %26 = icmp eq i8 %25, %12
  %27 = zext i1 %26 to i32
  %28 = add nsw i32 %17, %27
  %29 = tail call i32 @llvm.smax.i32(i32 %28, i32 %16)
  %30 = add nsw i32 %23, -1
  %31 = add nsw i32 %29, -1
  %32 = tail call i32 @llvm.smax.i32(i32 %30, i32 %31)
  %33 = icmp eq i8 %25, %19
  %34 = zext i1 %33 to i32
  %35 = add nsw i32 %16, %34
  %36 = tail call i32 @llvm.smax.i32(i32 %32, i32 %35)
  %37 = add nuw nsw i64 %14, 1
  %38 = icmp eq i64 %37, %10
  br i1 %38, label %39, label %11, !llvm.loop !241

39:                                               ; preds = %11, %3
  %40 = phi i32 [ %7, %3 ], [ %36, %11 ]
  ret i32 %40
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #18

; Function Attrs: mustprogress nounwind optsize willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #19

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #20

; Function Attrs: nounwind optsize
declare ptr @strerror(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @tdestroy(ptr noundef, ptr noundef) local_unnamed_addr #21

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @hash_node_compare(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #22 {
  %3 = load i32, ptr %0, align 4, !tbaa !87
  %4 = load i32, ptr %1, align 4, !tbaa !87
  %5 = icmp ult i32 %3, %4
  %6 = icmp ugt i32 %3, %4
  %7 = zext i1 %6 to i32
  %8 = select i1 %5, i32 -1, i32 %7
  ret i32 %8
}

; Function Attrs: optsize
declare ptr @tfind(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #21

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @add_col_elt(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._collec_t, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !50
  %5 = getelementptr inbounds %struct._collec_t, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !52
  %7 = icmp ugt i32 %4, %6
  %8 = load ptr, ptr %0, align 8, !tbaa !27
  br i1 %7, label %15, label %9

9:                                                ; preds = %2
  %10 = add i32 %4, 5
  store i32 %10, ptr %3, align 4, !tbaa !50
  %11 = zext i32 %10 to i64
  %12 = shl nuw nsw i64 %11, 3
  %13 = tail call fastcc ptr @xrealloc(ptr noundef %8, i64 noundef %12) #31
  store ptr %13, ptr %0, align 8, !tbaa !27
  %14 = load i32, ptr %5, align 8, !tbaa !52
  br label %15

15:                                               ; preds = %9, %2
  %16 = phi i32 [ %14, %9 ], [ %6, %2 ]
  %17 = phi ptr [ %13, %9 ], [ %8, %2 ]
  %18 = add i32 %16, 1
  store i32 %18, ptr %5, align 8, !tbaa !52
  %19 = zext i32 %16 to i64
  %20 = getelementptr inbounds ptr, ptr %17, i64 %19
  store ptr %1, ptr %20, align 8, !tbaa !7
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @msp_rna_compare(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #23 {
  %3 = load ptr, ptr %0, align 8, !tbaa !7
  %4 = load ptr, ptr %1, align 8, !tbaa !7
  %5 = getelementptr inbounds %struct._exon_t, ptr %3, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !92
  %7 = getelementptr inbounds %struct._exon_t, ptr %4, i64 0, i32 1
  %8 = load i32, ptr %7, align 4, !tbaa !92
  %9 = icmp ugt i32 %6, %8
  br i1 %9, label %21, label %10

10:                                               ; preds = %2
  %11 = icmp ult i32 %6, %8
  br i1 %11, label %21, label %12

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct._exon_t, ptr %3, i64 0, i32 3
  %14 = load i32, ptr %13, align 4, !tbaa !98
  %15 = getelementptr inbounds %struct._exon_t, ptr %4, i64 0, i32 3
  %16 = load i32, ptr %15, align 4, !tbaa !98
  %17 = icmp ugt i32 %14, %16
  br i1 %17, label %21, label %18

18:                                               ; preds = %12
  %19 = icmp ult i32 %14, %16
  %20 = zext i1 %19 to i32
  br label %21

21:                                               ; preds = %18, %12, %10, %2
  %22 = phi i32 [ 1, %2 ], [ -1, %10 ], [ -1, %12 ], [ %20, %18 ]
  ret i32 %22
}

; Function Attrs: nofree optsize
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #24

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @msp_compare(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #23 {
  %3 = load ptr, ptr %0, align 8, !tbaa !7
  %4 = load ptr, ptr %1, align 8, !tbaa !7
  %5 = load i32, ptr %3, align 4, !tbaa !94
  %6 = load i32, ptr %4, align 4, !tbaa !94
  %7 = icmp ugt i32 %5, %6
  br i1 %7, label %19, label %8

8:                                                ; preds = %2
  %9 = icmp ult i32 %5, %6
  br i1 %9, label %19, label %10

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct._exon_t, ptr %3, i64 0, i32 1
  %12 = load i32, ptr %11, align 4, !tbaa !92
  %13 = getelementptr inbounds %struct._exon_t, ptr %4, i64 0, i32 1
  %14 = load i32, ptr %13, align 4, !tbaa !92
  %15 = icmp ugt i32 %12, %14
  br i1 %15, label %19, label %16

16:                                               ; preds = %10
  %17 = icmp ult i32 %12, %14
  %18 = sext i1 %17 to i32
  br label %19

19:                                               ; preds = %16, %10, %8, %2
  %20 = phi i32 [ 1, %2 ], [ -1, %8 ], [ 1, %10 ], [ %18, %16 ]
  ret i32 %20
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #8

; Function Attrs: nofree nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc i32 @link_msps(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #25 {
  %4 = icmp ult i32 %1, %2
  br i1 %4, label %5, label %125

5:                                                ; preds = %3
  %6 = zext i32 %1 to i64
  %7 = zext i32 %2 to i64
  br label %8

8:                                                ; preds = %8, %5
  %9 = phi i64 [ %6, %5 ], [ %17, %8 ]
  %10 = load ptr, ptr %0, align 8, !tbaa !27
  %11 = getelementptr inbounds ptr, ptr %10, i64 %9
  %12 = load ptr, ptr %11, align 8, !tbaa !7
  %13 = getelementptr inbounds %struct._exon_t, ptr %12, i64 0, i32 5
  store i32 0, ptr %13, align 4, !tbaa !211
  %14 = getelementptr inbounds %struct._exon_t, ptr %12, i64 0, i32 6
  %15 = load i64, ptr %14, align 4
  %16 = or i64 %15, 4294967292
  store i64 %16, ptr %14, align 4
  %17 = add nuw nsw i64 %9, 1
  %18 = icmp eq i64 %17, %7
  br i1 %18, label %19, label %8, !llvm.loop !242

19:                                               ; preds = %8
  %20 = load i32, ptr getelementptr inbounds (%struct._options_t, ptr @options, i64 0, i32 8), align 8
  br label %23

21:                                               ; preds = %121, %23
  %22 = icmp eq i64 %27, %7
  br i1 %22, label %125, label %23, !llvm.loop !243

23:                                               ; preds = %21, %19
  %24 = phi i64 [ %27, %21 ], [ %6, %19 ]
  %25 = phi i32 [ %39, %21 ], [ 0, %19 ]
  %26 = phi i32 [ %37, %21 ], [ 0, %19 ]
  %27 = add nuw nsw i64 %24, 1
  %28 = load ptr, ptr %0, align 8, !tbaa !27
  %29 = getelementptr inbounds ptr, ptr %28, i64 %24
  %30 = load ptr, ptr %29, align 8, !tbaa !7
  %31 = getelementptr inbounds %struct._exon_t, ptr %30, i64 0, i32 4
  %32 = load i32, ptr %31, align 4, !tbaa !178
  %33 = getelementptr inbounds %struct._exon_t, ptr %30, i64 0, i32 5
  %34 = load i32, ptr %33, align 4, !tbaa !211
  %35 = add i32 %34, %32
  store i32 %35, ptr %33, align 4, !tbaa !211
  %36 = icmp ugt i32 %35, %26
  %37 = tail call i32 @llvm.umax.i32(i32 %35, i32 %26)
  %38 = trunc i64 %24 to i32
  %39 = select i1 %36, i32 %38, i32 %25
  %40 = icmp ult i64 %27, %7
  br i1 %40, label %41, label %21

41:                                               ; preds = %23
  %42 = getelementptr inbounds %struct._exon_t, ptr %30, i64 0, i32 2
  %43 = getelementptr inbounds %struct._exon_t, ptr %30, i64 0, i32 3
  %44 = getelementptr inbounds %struct._exon_t, ptr %30, i64 0, i32 1
  %45 = shl nuw nsw i64 %24, 2
  %46 = and i64 %45, 4294967292
  %47 = load ptr, ptr %0, align 8, !tbaa !27
  br label %48

48:                                               ; preds = %121, %41
  %49 = phi ptr [ %47, %41 ], [ %122, %121 ]
  %50 = phi i64 [ %27, %41 ], [ %123, %121 ]
  %51 = getelementptr inbounds ptr, ptr %49, i64 %50
  %52 = load ptr, ptr %51, align 8, !tbaa !7
  %53 = load i32, ptr %52, align 4, !tbaa !94
  %54 = load i32, ptr %42, align 4, !tbaa !97
  %55 = icmp ugt i32 %53, %54
  %56 = getelementptr inbounds %struct._exon_t, ptr %52, i64 0, i32 1
  %57 = load i32, ptr %56, align 4, !tbaa !92
  %58 = load i32, ptr %43, align 4, !tbaa !98
  %59 = icmp ugt i32 %57, %58
  br i1 %55, label %60, label %79

60:                                               ; preds = %48
  br i1 %59, label %98, label %61

61:                                               ; preds = %60
  %62 = load i32, ptr %44, align 4, !tbaa !92
  %63 = icmp ult i32 %57, %62
  br i1 %63, label %121, label %64

64:                                               ; preds = %61
  %65 = getelementptr inbounds %struct._exon_t, ptr %52, i64 0, i32 3
  %66 = load i32, ptr %65, align 4, !tbaa !98
  %67 = icmp ult i32 %66, %58
  br i1 %67, label %121, label %68

68:                                               ; preds = %64
  %69 = sub i32 %57, %62
  %70 = sub i32 %58, %57
  %71 = sub i32 %66, %58
  %72 = icmp ugt i32 %69, %70
  %73 = icmp ugt i32 %71, %70
  %74 = and i1 %72, %73
  br i1 %74, label %75, label %121

75:                                               ; preds = %68
  %76 = icmp ugt i32 %69, %20
  %77 = icmp ugt i32 %71, %20
  %78 = and i1 %76, %77
  br i1 %78, label %98, label %121

79:                                               ; preds = %48
  br i1 %59, label %80, label %121

80:                                               ; preds = %79
  %81 = load i32, ptr %30, align 4, !tbaa !94
  %82 = icmp ult i32 %53, %81
  br i1 %82, label %121, label %83

83:                                               ; preds = %80
  %84 = getelementptr inbounds %struct._exon_t, ptr %52, i64 0, i32 2
  %85 = load i32, ptr %84, align 4, !tbaa !97
  %86 = icmp ult i32 %85, %54
  br i1 %86, label %121, label %87

87:                                               ; preds = %83
  %88 = sub i32 %53, %81
  %89 = sub i32 %54, %53
  %90 = sub i32 %85, %54
  %91 = icmp ugt i32 %88, %89
  %92 = icmp ugt i32 %90, %89
  %93 = and i1 %91, %92
  br i1 %93, label %94, label %121

94:                                               ; preds = %87
  %95 = icmp ugt i32 %88, %20
  %96 = icmp ugt i32 %90, %20
  %97 = and i1 %95, %96
  br i1 %97, label %98, label %121

98:                                               ; preds = %94, %75, %60
  %99 = load i32, ptr %33, align 4, !tbaa !211
  %100 = getelementptr inbounds %struct._exon_t, ptr %52, i64 0, i32 5
  %101 = load i32, ptr %100, align 4, !tbaa !211
  %102 = icmp ult i32 %99, %101
  br i1 %102, label %121, label %103

103:                                              ; preds = %98
  %104 = load i32, ptr %30, align 4, !tbaa !94
  %105 = sub i32 %53, %104
  %106 = tail call i32 @llvm.abs.i32(i32 %105, i1 true)
  %107 = lshr i32 %106, 15
  %108 = load i32, ptr %44, align 4, !tbaa !92
  %109 = sub i32 %57, %108
  %110 = tail call i32 @llvm.abs.i32(i32 %109, i1 true)
  %111 = lshr i32 %110, 15
  %112 = add nuw nsw i32 %111, %107
  %113 = icmp ult i32 %112, %99
  br i1 %113, label %114, label %121

114:                                              ; preds = %103
  %115 = sub i32 %99, %112
  store i32 %115, ptr %100, align 4, !tbaa !211
  %116 = getelementptr inbounds %struct._exon_t, ptr %52, i64 0, i32 6
  %117 = load i64, ptr %116, align 4
  %118 = and i64 %117, -4294967293
  %119 = or i64 %118, %46
  store i64 %119, ptr %116, align 4
  %120 = load ptr, ptr %0, align 8, !tbaa !27
  br label %121

121:                                              ; preds = %114, %103, %98, %94, %87, %83, %80, %79, %75, %68, %64, %61
  %122 = phi ptr [ %120, %114 ], [ %49, %103 ], [ %49, %98 ], [ %49, %94 ], [ %49, %87 ], [ %49, %83 ], [ %49, %80 ], [ %49, %79 ], [ %49, %75 ], [ %49, %68 ], [ %49, %64 ], [ %49, %61 ]
  %123 = add nuw nsw i64 %50, 1
  %124 = icmp ult i64 %123, %7
  br i1 %124, label %48, label %21, !llvm.loop !244

125:                                              ; preds = %21, %3
  %126 = phi i32 [ -1, %3 ], [ %39, %21 ]
  ret i32 %126
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @msp2exons(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = icmp sgt i32 %1, -1
  br i1 %5, label %6, label %58

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct._collec_t, ptr %2, i64 0, i32 1
  %8 = icmp eq i32 %3, 0
  br label %9

9:                                                ; preds = %52, %6
  %10 = phi i32 [ %1, %6 ], [ %56, %52 ]
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds ptr, ptr %0, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !7
  %14 = load i32, ptr %7, align 8, !tbaa !52
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %49, label %16

16:                                               ; preds = %9
  %17 = load ptr, ptr %2, align 8, !tbaa !27
  %18 = add i32 %14, -1
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds ptr, ptr %17, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !7
  br i1 %8, label %22, label %49

22:                                               ; preds = %16
  %23 = load i32, ptr %21, align 4, !tbaa !94
  %24 = getelementptr inbounds %struct._exon_t, ptr %13, i64 0, i32 2
  %25 = load i32, ptr %24, align 4, !tbaa !97
  %26 = add i32 %25, 30
  %27 = icmp ult i32 %23, %26
  br i1 %27, label %28, label %49

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct._exon_t, ptr %21, i64 0, i32 1
  %30 = load i32, ptr %29, align 4, !tbaa !92
  %31 = getelementptr inbounds %struct._exon_t, ptr %13, i64 0, i32 3
  %32 = load i32, ptr %31, align 4, !tbaa !98
  %33 = add i32 %32, -1
  %34 = icmp ugt i32 %30, %33
  br i1 %34, label %35, label %49

35:                                               ; preds = %28
  %36 = getelementptr inbounds %struct._exon_t, ptr %21, i64 0, i32 2
  %37 = load i32, ptr %36, align 4, !tbaa !97
  %38 = tail call i32 @llvm.umax.i32(i32 %37, i32 %25)
  store i32 %38, ptr %36, align 4, !tbaa !97
  %39 = getelementptr inbounds %struct._exon_t, ptr %21, i64 0, i32 3
  %40 = load i32, ptr %39, align 4, !tbaa !98
  %41 = tail call i32 @llvm.umax.i32(i32 %40, i32 %32)
  store i32 %41, ptr %39, align 4, !tbaa !98
  %42 = load i32, ptr %13, align 4, !tbaa !94
  %43 = tail call i32 @llvm.umin.i32(i32 %23, i32 %42)
  store i32 %43, ptr %21, align 4, !tbaa !94
  %44 = getelementptr inbounds %struct._exon_t, ptr %13, i64 0, i32 1
  %45 = load i32, ptr %44, align 4, !tbaa !92
  %46 = tail call i32 @llvm.umin.i32(i32 %30, i32 %45)
  store i32 %46, ptr %29, align 4, !tbaa !92
  %47 = getelementptr inbounds %struct._exon_t, ptr %13, i64 0, i32 6
  %48 = load i64, ptr %47, align 4
  tail call void @free(ptr noundef nonnull %13) #31
  br label %52

49:                                               ; preds = %28, %22, %16, %9
  tail call fastcc void @add_col_elt(ptr noundef nonnull %2, ptr noundef %13) #35
  %50 = getelementptr inbounds %struct._exon_t, ptr %13, i64 0, i32 6
  %51 = load i64, ptr %50, align 4
  br label %52

52:                                               ; preds = %49, %35
  %53 = phi i64 [ %51, %49 ], [ %48, %35 ]
  %54 = shl i64 %53, 32
  %55 = ashr i64 %54, 34
  %56 = trunc i64 %55 to i32
  %57 = icmp sgt i32 %56, -1
  br i1 %57, label %9, label %58

58:                                               ; preds = %52, %4
  %59 = getelementptr inbounds %struct._collec_t, ptr %2, i64 0, i32 1
  %60 = load i32, ptr %59, align 8, !tbaa !52
  %61 = icmp ult i32 %60, 2
  br i1 %61, label %78, label %62

62:                                               ; preds = %58
  %63 = add i32 %60, -1
  %64 = zext i32 %63 to i64
  br label %65

65:                                               ; preds = %65, %62
  %66 = phi i64 [ %76, %65 ], [ %64, %62 ]
  %67 = phi i64 [ %75, %65 ], [ 0, %62 ]
  %68 = load ptr, ptr %2, align 8, !tbaa !27
  %69 = getelementptr inbounds ptr, ptr %68, i64 %67
  %70 = load ptr, ptr %69, align 8, !tbaa !7
  %71 = getelementptr inbounds ptr, ptr %68, i64 %66
  %72 = load ptr, ptr %71, align 8, !tbaa !7
  store ptr %72, ptr %69, align 8, !tbaa !7
  %73 = load ptr, ptr %2, align 8, !tbaa !27
  %74 = getelementptr inbounds ptr, ptr %73, i64 %66
  store ptr %70, ptr %74, align 8, !tbaa !7
  %75 = add nuw nsw i64 %67, 1
  %76 = add nsw i64 %66, -1
  %77 = icmp ult i64 %75, %76
  br i1 %77, label %65, label %78, !llvm.loop !245

78:                                               ; preds = %65, %58
  ret void
}

; Function Attrs: optsize
declare ptr @tsearch(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #21

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #26

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #27

; Function Attrs: nounwind optsize uwtable
define internal fastcc ptr @read_line_buf(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #30
  store i64 0, ptr %3, align 8, !tbaa !246
  %4 = getelementptr inbounds %struct._read_buf_t, ptr %0, i64 0, i32 2
  store i32 0, ptr %4, align 4, !tbaa !70
  %5 = call fastcc ptr @shuffle_line(ptr noundef %0, ptr noundef nonnull %3) #35
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %43

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct._read_buf_t, ptr %0, i64 0, i32 4
  %9 = getelementptr inbounds %struct._read_buf_t, ptr %0, i64 0, i32 3
  br label %10

10:                                               ; preds = %40, %7
  %11 = load i32, ptr %9, align 8, !tbaa !71
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds i8, ptr %8, i64 %12
  %14 = sub i32 4095, %11
  %15 = zext i32 %14 to i64
  %16 = tail call i64 @read(i32 noundef %1, ptr noundef nonnull %13, i64 noundef %15) #31
  %17 = icmp eq i64 %16, -1
  br i1 %17, label %18, label %25

18:                                               ; preds = %10
  %19 = tail call ptr @__errno_location() #36
  %20 = load i32, ptr %19, align 4, !tbaa !11
  %21 = icmp eq i32 %20, 4
  br i1 %21, label %29, label %22

22:                                               ; preds = %18
  %.lcssa1 = phi ptr [ %19, %18 ]
  %.lcssa = phi i32 [ %20, %18 ]
  %23 = tail call ptr @strerror(i32 noundef %.lcssa) #31
  %24 = load i32, ptr %.lcssa1, align 4, !tbaa !11
  tail call void (ptr, ...) @fatal(ptr noundef nonnull @.str.33, i32 noundef %1, ptr noundef %23, i32 noundef %24) #34
  unreachable

25:                                               ; preds = %10
  %26 = load i32, ptr %9, align 8, !tbaa !71
  %27 = trunc i64 %16 to i32
  %28 = add i32 %26, %27
  store i32 %28, ptr %9, align 8, !tbaa !71
  br label %29

29:                                               ; preds = %25, %18
  %30 = call fastcc ptr @shuffle_line(ptr noundef nonnull %0, ptr noundef nonnull %3) #35
  %31 = icmp eq ptr %30, null
  %32 = icmp eq i64 %16, 0
  %33 = and i1 %32, %31
  br i1 %33, label %34, label %40

34:                                               ; preds = %29
  %35 = load ptr, ptr %0, align 8, !tbaa !68
  %36 = load i32, ptr %4, align 4, !tbaa !70
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds i8, ptr %35, i64 %37
  store i8 0, ptr %38, align 1, !tbaa !27
  %39 = load ptr, ptr %0, align 8, !tbaa !68
  br label %40

40:                                               ; preds = %34, %29
  %41 = phi ptr [ %39, %34 ], [ %30, %29 ]
  %42 = icmp eq ptr %41, null
  br i1 %42, label %10, label %43, !llvm.loop !248

43:                                               ; preds = %40, %2
  %44 = phi ptr [ %5, %2 ], [ %41, %40 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #30
  ret ptr %44
}

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #20

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare ptr @__ctype_toupper_loc() local_unnamed_addr #20

; Function Attrs: nofree nounwind optsize
declare noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i64 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: nounwind optsize uwtable
define internal fastcc ptr @shuffle_line(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._read_buf_t, ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !71
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %69, label %6

6:                                                ; preds = %2
  %7 = load i64, ptr %1, align 8, !tbaa !246
  %8 = zext i32 %4 to i64
  %9 = icmp ult i64 %7, %8
  br i1 %9, label %10, label %69

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct._read_buf_t, ptr %0, i64 0, i32 1
  %12 = load i32, ptr %11, align 8, !tbaa !69
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds %struct._read_buf_t, ptr %0, i64 0, i32 2
  %15 = load i32, ptr %14, align 4, !tbaa !70
  %16 = zext i32 %15 to i64
  %17 = sub i64 %8, %7
  %18 = add nsw i64 %17, %16
  %19 = icmp ult i64 %18, %13
  br i1 %19, label %28, label %20

20:                                               ; preds = %10
  %21 = add i32 %12, 4096
  store i32 %21, ptr %11, align 8, !tbaa !69
  %22 = load ptr, ptr %0, align 8, !tbaa !68
  %23 = zext i32 %21 to i64
  %24 = tail call fastcc ptr @xrealloc(ptr noundef %22, i64 noundef %23) #31
  store ptr %24, ptr %0, align 8, !tbaa !68
  %25 = load i64, ptr %1, align 8, !tbaa !246
  %26 = load i32, ptr %3, align 8, !tbaa !71
  %27 = zext i32 %26 to i64
  br label %28

28:                                               ; preds = %20, %10
  %29 = phi i64 [ %27, %20 ], [ %8, %10 ]
  %30 = phi i64 [ %25, %20 ], [ %7, %10 ]
  %31 = icmp ult i64 %30, %29
  br i1 %31, label %32, label %68

32:                                               ; preds = %44, %28
  %33 = phi i64 [ %45, %44 ], [ %30, %28 ]
  %34 = getelementptr inbounds %struct._read_buf_t, ptr %0, i64 0, i32 4, i64 %33
  %35 = load i8, ptr %34, align 1, !tbaa !27
  %36 = icmp eq i8 %35, 10
  %37 = add nuw nsw i64 %33, 1
  store i64 %37, ptr %1, align 8, !tbaa !246
  %38 = load i8, ptr %34, align 1, !tbaa !27
  %39 = load ptr, ptr %0, align 8, !tbaa !68
  %40 = load i32, ptr %14, align 4, !tbaa !70
  %41 = add i32 %40, 1
  store i32 %41, ptr %14, align 4, !tbaa !70
  %42 = zext i32 %40 to i64
  %43 = getelementptr inbounds i8, ptr %39, i64 %42
  store i8 %38, ptr %43, align 1, !tbaa !27
  br i1 %36, label %49, label %44

44:                                               ; preds = %32
  %45 = load i64, ptr %1, align 8, !tbaa !246
  %46 = load i32, ptr %3, align 8, !tbaa !71
  %47 = zext i32 %46 to i64
  %48 = icmp ult i64 %45, %47
  br i1 %48, label %32, label %68, !llvm.loop !249

49:                                               ; preds = %32
  %50 = load ptr, ptr %0, align 8, !tbaa !68
  %51 = load i32, ptr %14, align 4, !tbaa !70
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds i8, ptr %50, i64 %52
  store i8 0, ptr %53, align 1, !tbaa !27
  %54 = load i64, ptr %1, align 8, !tbaa !246
  %55 = load i32, ptr %3, align 8, !tbaa !71
  %56 = zext i32 %55 to i64
  %57 = icmp ult i64 %54, %56
  br i1 %57, label %58, label %65

58:                                               ; preds = %49
  %59 = getelementptr inbounds %struct._read_buf_t, ptr %0, i64 0, i32 4
  %60 = getelementptr inbounds i8, ptr %59, i64 %54
  %61 = sub nsw i64 %56, %54
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %59, ptr nonnull align 1 %60, i64 %61, i1 false)
  %62 = load i64, ptr %1, align 8, !tbaa !246
  %63 = trunc i64 %62 to i32
  %64 = sub i32 %55, %63
  br label %65

65:                                               ; preds = %58, %49
  %66 = phi i32 [ %64, %58 ], [ 0, %49 ]
  store i32 %66, ptr %3, align 8, !tbaa !71
  store i64 0, ptr %1, align 8, !tbaa !246
  %67 = load ptr, ptr %0, align 8, !tbaa !68
  br label %69

68:                                               ; preds = %44, %28
  store i32 0, ptr %3, align 8, !tbaa !71
  store i64 0, ptr %1, align 8, !tbaa !246
  br label %69

69:                                               ; preds = %68, %65, %6, %2
  %70 = phi ptr [ %67, %65 ], [ null, %68 ], [ null, %6 ], [ null, %2 ]
  ret ptr %70
}

; Function Attrs: nofree optsize
declare noundef i64 @read(i32 noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #24

; Function Attrs: nofree optsize
declare noundef i32 @open(ptr nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #24

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #28

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind optsize
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #28

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32 noundef) local_unnamed_addr #29

; Function Attrs: noreturn nounwind optsize
declare void @abort() local_unnamed_addr #29

attributes #0 = { nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind optsize willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nofree nounwind }
attributes #10 = { nofree nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #13 = { nofree norecurse nosync nounwind optsize memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #15 = { nofree nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree nosync nounwind optsize memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree nounwind willreturn memory(argmem: read) }
attributes #19 = { mustprogress nounwind optsize willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree nosync nounwind optsize willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nofree norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nofree optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { nofree nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { nocallback nofree nosync nounwind willreturn }
attributes #29 = { noreturn nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { nounwind }
attributes #31 = { nounwind optsize }
attributes #32 = { cold optsize }
attributes #33 = { nounwind optsize willreturn memory(read) }
attributes #34 = { noreturn nounwind optsize }
attributes #35 = { optsize }
attributes #36 = { nounwind optsize willreturn memory(none) }
attributes #37 = { cold }
attributes #38 = { nounwind optsize allocsize(0) }
attributes #39 = { noreturn optsize }
attributes #40 = { nounwind optsize allocsize(0,1) }
attributes #41 = { nounwind optsize allocsize(1) }

!llvm.ident = !{!0, !0, !0, !0}
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
!13 = !{!14, !8, i64 0}
!14 = !{!"_options_t", !8, i64 0, !8, i64 8, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !12, i64 32, !12, i64 36, !12, i64 40, !12, i64 44, !12, i64 48, !12, i64 52, !12, i64 56, !12, i64 60, !12, i64 64, !12, i64 68, !12, i64 72, !12, i64 76}
!15 = !{!14, !12, i64 16}
!16 = !{!14, !12, i64 56}
!17 = !{!14, !12, i64 60}
!18 = !{!14, !12, i64 64}
!19 = !{!14, !12, i64 72}
!20 = !{!14, !12, i64 76}
!21 = !{!14, !12, i64 20}
!22 = !{!14, !12, i64 24}
!23 = !{!14, !12, i64 28}
!24 = !{!14, !12, i64 32}
!25 = !{!14, !12, i64 36}
!26 = !{!14, !12, i64 40}
!27 = !{!9, !9, i64 0}
!28 = distinct !{!28, !29}
!29 = !{!"llvm.loop.mustprogress"}
!30 = !{!14, !12, i64 44}
!31 = !{!14, !12, i64 68}
!32 = !{!14, !12, i64 48}
!33 = !{!14, !12, i64 52}
!34 = !{i32 -1, i32 1}
!35 = !{!36, !8, i64 8}
!36 = !{!"_seq_t", !8, i64 0, !8, i64 8, !8, i64 16, !37, i64 24, !12, i64 4144, !12, i64 4148, !12, i64 4152, !12, i64 4156}
!37 = !{!"_read_buf_t", !8, i64 0, !12, i64 8, !12, i64 12, !12, i64 16, !9, i64 20}
!38 = distinct !{!38, !29, !39, !40}
!39 = !{!"llvm.loop.isvectorized", i32 1}
!40 = !{!"llvm.loop.unroll.runtime.disable"}
!41 = !{!36, !8, i64 16}
!42 = !{!36, !12, i64 4148}
!43 = !{!44, !12, i64 36}
!44 = !{!"_hash_env_t", !8, i64 0, !8, i64 8, !12, i64 16, !8, i64 24, !12, i64 32, !12, i64 36}
!45 = !{!44, !8, i64 8}
!46 = !{!44, !12, i64 16}
!47 = !{!44, !12, i64 32}
!48 = !{!44, !8, i64 24}
!49 = !{!44, !8, i64 0}
!50 = !{!51, !12, i64 12}
!51 = !{!"_collec_t", !9, i64 0, !12, i64 8, !12, i64 12}
!52 = !{!51, !12, i64 8}
!53 = !{!14, !8, i64 8}
!54 = distinct !{!54, !29}
!55 = distinct !{!55, !29}
!56 = distinct !{!56, !29}
!57 = !{!58, !12, i64 36}
!58 = !{!"_result_t", !8, i64 0, !51, i64 8, !12, i64 24, !12, i64 28, !12, i64 32, !59, i64 36}
!59 = !{!"_sim4_stats", !12, i64 0, !12, i64 4, !12, i64 8}
!60 = distinct !{!60, !29}
!61 = distinct !{!61, !29}
!62 = distinct !{!62, !29}
!63 = distinct !{!63, !29}
!64 = distinct !{!64, !29}
!65 = distinct !{!65, !29}
!66 = distinct !{!66, !29}
!67 = !{!36, !8, i64 0}
!68 = !{!37, !8, i64 0}
!69 = !{!37, !12, i64 8}
!70 = !{!37, !12, i64 12}
!71 = !{!37, !12, i64 16}
!72 = !{!36, !12, i64 4144}
!73 = !{!36, !12, i64 4152}
!74 = !{!36, !12, i64 4156}
!75 = !{!36, !12, i64 36}
!76 = !{!36, !8, i64 24}
!77 = distinct !{!77, !29}
!78 = !{!79, !79, i64 0}
!79 = !{!"short", !9, i64 0}
!80 = distinct !{!80, !29}
!81 = distinct !{!81, !29}
!82 = distinct !{!82, !29}
!83 = distinct !{!83, !29}
!84 = distinct !{!84, !29}
!85 = distinct !{!85, !29}
!86 = distinct !{!86, !29}
!87 = !{!88, !12, i64 0}
!88 = !{!"_hash_node_t", !12, i64 0, !12, i64 4}
!89 = !{!88, !12, i64 4}
!90 = !{!59, !12, i64 4}
!91 = !{!59, !12, i64 8}
!92 = !{!93, !12, i64 4}
!93 = !{!"_exon_t", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 24, !12, i64 24, !12, i64 28, !12, i64 28, !12, i64 31}
!94 = !{!93, !12, i64 0}
!95 = !{!58, !12, i64 24}
!96 = distinct !{!96, !29}
!97 = !{!93, !12, i64 8}
!98 = !{!93, !12, i64 12}
!99 = distinct !{!99, !29}
!100 = !{i32 0, i32 2}
!101 = distinct !{!101, !29}
!102 = distinct !{!102, !29}
!103 = distinct !{!103, !29}
!104 = distinct !{!104, !29, !39, !40}
!105 = distinct !{!105, !29}
!106 = distinct !{!106, !29}
!107 = distinct !{!107, !29}
!108 = distinct !{!108, !29}
!109 = distinct !{!109, !29}
!110 = distinct !{!110, !29}
!111 = !{!58, !12, i64 28}
!112 = distinct !{!112, !29}
!113 = distinct !{!113, !29}
!114 = distinct !{!114, !29}
!115 = distinct !{!115, !29}
!116 = distinct !{!116, !29}
!117 = distinct !{!117, !29}
!118 = distinct !{!118, !29}
!119 = distinct !{!119, !29}
!120 = distinct !{!120, !29}
!121 = distinct !{!121, !29}
!122 = distinct !{!122, !29}
!123 = distinct !{!123, !29}
!124 = distinct !{!124, !29}
!125 = distinct !{!125, !29}
!126 = distinct !{!126, !29}
!127 = distinct !{!127, !29}
!128 = distinct !{!128, !29}
!129 = distinct !{!129, !29}
!130 = distinct !{!130, !29}
!131 = distinct !{!131, !29}
!132 = distinct !{!132, !29}
!133 = distinct !{!133, !29}
!134 = distinct !{!134, !29}
!135 = distinct !{!135, !29}
!136 = distinct !{!136, !29}
!137 = !{!138, !12, i64 0}
!138 = !{!"_splice_score_t", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24}
!139 = !{!138, !12, i64 4}
!140 = !{!138, !12, i64 8}
!141 = !{!138, !12, i64 24}
!142 = !{!58, !12, i64 32}
!143 = !{!138, !12, i64 12}
!144 = distinct !{!144, !29}
!145 = distinct !{!145, !29}
!146 = distinct !{!146, !29}
!147 = distinct !{!147, !29}
!148 = !{i64 0, i64 4, !11, i64 4, i64 4, !11, i64 8, i64 4, !11, i64 12, i64 4, !11}
!149 = !{i64 0, i64 4, !11, i64 4, i64 4, !11}
!150 = !{i64 0, i64 4, !11}
!151 = distinct !{!151, !29}
!152 = distinct !{!152, !29}
!153 = !{i64 0, i64 4, !11, i64 4, i64 4, !11, i64 8, i64 4, !11, i64 12, i64 4, !11, i64 16, i64 4, !11, i64 20, i64 4, !11, i64 24, i64 4, !11}
!154 = !{i64 0, i64 4, !11, i64 4, i64 4, !11, i64 8, i64 4, !11, i64 12, i64 4, !11, i64 16, i64 4, !11, i64 20, i64 4, !11}
!155 = !{i64 0, i64 4, !11, i64 4, i64 4, !11, i64 8, i64 4, !11, i64 12, i64 4, !11, i64 16, i64 4, !11}
!156 = distinct !{!156, !29}
!157 = distinct !{!157, !29}
!158 = !{!159, !8, i64 0}
!159 = !{!"_edit_script_list", !8, i64 0, !8, i64 8, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !12, i64 32}
!160 = !{!159, !8, i64 8}
!161 = !{!159, !12, i64 16}
!162 = !{!159, !12, i64 20}
!163 = !{!159, !12, i64 24}
!164 = !{!159, !12, i64 28}
!165 = !{!159, !12, i64 32}
!166 = !{!167, !9, i64 12}
!167 = !{!"_edit_script", !8, i64 0, !12, i64 8, !9, i64 12}
!168 = !{!167, !12, i64 8}
!169 = !{!167, !8, i64 0}
!170 = distinct !{!170, !29}
!171 = distinct !{!171, !29}
!172 = distinct !{!172, !29}
!173 = distinct !{!173, !29}
!174 = distinct !{!174, !29}
!175 = distinct !{!175, !29}
!176 = distinct !{!176, !29}
!177 = distinct !{!177, !29}
!178 = !{!93, !12, i64 16}
!179 = distinct !{!179, !29}
!180 = !{!58, !8, i64 0}
!181 = distinct !{!181, !29}
!182 = distinct !{!182, !29}
!183 = distinct !{!183, !29}
!184 = distinct !{!184, !29}
!185 = distinct !{!185, !29}
!186 = distinct !{!186, !29}
!187 = distinct !{!187, !29}
!188 = !{!58, !12, i64 16}
!189 = distinct !{!189, !29}
!190 = distinct !{!190, !29}
!191 = distinct !{!191, !29}
!192 = distinct !{!192, !29}
!193 = distinct !{!193, !29}
!194 = distinct !{!194, !29}
!195 = distinct !{!195, !29}
!196 = distinct !{!196, !29}
!197 = distinct !{!197, !29}
!198 = distinct !{!198, !29}
!199 = distinct !{!199, !29}
!200 = distinct !{!200, !29}
!201 = distinct !{!201, !29}
!202 = distinct !{!202, !29}
!203 = distinct !{!203, !29}
!204 = distinct !{!204, !29}
!205 = distinct !{!205, !29}
!206 = distinct !{!206, !29}
!207 = distinct !{!207, !29}
!208 = distinct !{!208, !29}
!209 = distinct !{!209, !29}
!210 = distinct !{!210, !29}
!211 = !{!93, !12, i64 20}
!212 = distinct !{!212, !29}
!213 = distinct !{!213, !29}
!214 = distinct !{!214, !29}
!215 = distinct !{!215, !29}
!216 = distinct !{!216, !29}
!217 = distinct !{!217, !29}
!218 = distinct !{!218, !29}
!219 = distinct !{!219, !29}
!220 = distinct !{!220, !29}
!221 = !{!58, !12, i64 40}
!222 = distinct !{!222, !29}
!223 = distinct !{!223, !29}
!224 = !{!58, !12, i64 44}
!225 = distinct !{!225, !29}
!226 = distinct !{!226, !29}
!227 = distinct !{!227, !29}
!228 = distinct !{!228, !29}
!229 = !{!138, !12, i64 16}
!230 = !{!138, !12, i64 20}
!231 = distinct !{!231, !29}
!232 = distinct !{!232, !29}
!233 = distinct !{!233, !29}
!234 = distinct !{!234, !29}
!235 = distinct !{!235, !29}
!236 = distinct !{!236, !29}
!237 = distinct !{!237, !29}
!238 = distinct !{!238, !29}
!239 = distinct !{!239, !29}
!240 = distinct !{!240, !29}
!241 = distinct !{!241, !29}
!242 = distinct !{!242, !29}
!243 = distinct !{!243, !29}
!244 = distinct !{!244, !29}
!245 = distinct !{!245, !29}
!246 = !{!247, !247, i64 0}
!247 = !{!"long", !9, i64 0}
!248 = distinct !{!248, !29}
!249 = distinct !{!249, !29}
