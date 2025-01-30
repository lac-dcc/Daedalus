; ModuleID = '/src/llvm-test-suite/build/MultiSource/Applications/SIBsim4/SIBsim4.e.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._options_t = type { ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._edit_script = type { ptr, i32, i8 }
%struct._collec_t = type { %union._collec_elt_t, i32, i32 }
%union._collec_elt_t = type { ptr }
%struct._exon_t = type { i32, i32, i32, i32, i32, i32, i64 }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%struct._seq_t = type { ptr, ptr, ptr, %struct._read_buf_t, i32, i32, i32, i32 }
%struct._read_buf_t = type { ptr, i32, i32, i32, [4096 x i8] }
%struct._hash_env_t = type { ptr, ptr, i32, ptr, i32, i32 }
%struct._junction_t = type { [4 x i8], [4 x i8] }
%struct._result_t = type { ptr, %struct._collec_t, i32, i32, i32, %struct._sim4_stats }
%struct._sim4_stats = type { i32, i32, i32 }
%struct._edit_script_list = type { ptr, ptr, i32, i32, i32, i32, i32 }
%struct._splice_score_t = type { i32, i32, i32, i32, i32, i32, i32 }
%struct._hash_node_t = type { i32, i32 }

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
@argv0 = internal global ptr null, align 8
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
@options = internal global %struct._options_t zeroinitializer, align 8
@encoding = internal global [128 x i32] zeroinitializer, align 16
@.str.53 = private unnamed_addr constant [26 x i8] c"%u-%u  (%u-%u)   %u%% ==\0A\00", align 1
@.str.1.54 = private unnamed_addr constant [41 x i8] c"%u-%u  (%u-%u)   %u%% %s (%.2s/%.2s) %u\0A\00", align 1
@.str.2.51 = private unnamed_addr constant [3 x i8] c"->\00", align 1
@.str.3.52 = private unnamed_addr constant [3 x i8] c"<-\00", align 1
@.str.4.55 = private unnamed_addr constant [23 x i8] c"%u-%u  (%u-%u)   %u%%\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define internal void @align_path(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr nocapture noundef %7, ptr nocapture noundef writeonly %8, i32 noundef %9, i32 noundef %10) #0 {
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #32
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #32
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #32
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #32
  store ptr null, ptr %8, align 8, !tbaa !7
  store ptr null, ptr %7, align 8, !tbaa !7
  %16 = icmp eq i32 %2, %4
  %17 = icmp eq i32 %3, %5
  br i1 %16, label %18, label %26

18:                                               ; preds = %11
  br i1 %17, label %24, label %19

19:                                               ; preds = %18
  %20 = tail call ptr @xmalloc(i64 noundef 16) #33
  %21 = getelementptr inbounds %struct._edit_script, ptr %20, i64 0, i32 2
  store i8 2, ptr %21, align 4, !tbaa !11
  %22 = sub nsw i32 %5, %3
  %23 = getelementptr inbounds %struct._edit_script, ptr %20, i64 0, i32 1
  store i32 %22, ptr %23, align 8, !tbaa !14
  store ptr null, ptr %20, align 8, !tbaa !15
  store ptr %20, ptr %8, align 8, !tbaa !7
  br label %24

24:                                               ; preds = %19, %18
  %25 = phi ptr [ %20, %19 ], [ null, %18 ]
  store ptr %25, ptr %7, align 8, !tbaa !7
  br label %487

26:                                               ; preds = %11
  br i1 %17, label %27, label %32

27:                                               ; preds = %26
  %28 = tail call ptr @xmalloc(i64 noundef 16) #33
  %29 = getelementptr inbounds %struct._edit_script, ptr %28, i64 0, i32 2
  store i8 1, ptr %29, align 4, !tbaa !11
  %30 = sub nsw i32 %4, %2
  %31 = getelementptr inbounds %struct._edit_script, ptr %28, i64 0, i32 1
  store i32 %30, ptr %31, align 8, !tbaa !14
  store ptr null, ptr %28, align 8, !tbaa !15
  store ptr %28, ptr %8, align 8, !tbaa !7
  store ptr %28, ptr %7, align 8, !tbaa !7
  br label %487

32:                                               ; preds = %26
  %33 = icmp slt i32 %6, 2
  br i1 %33, label %34, label %154

34:                                               ; preds = %32
  %35 = sub nsw i32 %3, %2
  %36 = sub nsw i32 %5, %4
  %37 = icmp eq i32 %36, %35
  br i1 %37, label %38, label %43

38:                                               ; preds = %34
  %39 = tail call ptr @xmalloc(i64 noundef 16) #33
  %40 = getelementptr inbounds %struct._edit_script, ptr %39, i64 0, i32 2
  store i8 3, ptr %40, align 4, !tbaa !11
  %41 = sub nsw i32 %4, %2
  %42 = getelementptr inbounds %struct._edit_script, ptr %39, i64 0, i32 1
  store i32 %41, ptr %42, align 8, !tbaa !14
  store ptr null, ptr %39, align 8, !tbaa !15
  store ptr %39, ptr %8, align 8, !tbaa !7
  store ptr %39, ptr %7, align 8, !tbaa !7
  br label %487

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
  %58 = sext i32 %4 to i64
  br label %59

59:                                               ; preds = %67, %54
  %60 = phi i64 [ %57, %54 ], [ %68, %67 ]
  %61 = phi i64 [ %55, %54 ], [ %69, %67 ]
  %62 = getelementptr inbounds i8, ptr %0, i64 %60
  %63 = load i8, ptr %62, align 1, !tbaa !16
  %64 = getelementptr inbounds i8, ptr %1, i64 %61
  %65 = load i8, ptr %64, align 1, !tbaa !16
  %66 = icmp eq i8 %63, %65
  br i1 %66, label %67, label %73

67:                                               ; preds = %59
  %68 = add nuw nsw i64 %60, 1
  %69 = add nsw i64 %61, 1
  %70 = icmp slt i64 %68, %58
  %71 = icmp slt i64 %69, %56
  %72 = select i1 %70, i1 %71, i1 false
  br i1 %72, label %59, label %73, !llvm.loop !17

73:                                               ; preds = %67, %59
  %74 = phi i64 [ %60, %59 ], [ %68, %67 ]
  %75 = trunc i64 %74 to i32
  %76 = icmp sgt i32 %75, %2
  br i1 %76, label %77, label %82

77:                                               ; preds = %73
  %78 = tail call ptr @xmalloc(i64 noundef 16) #33
  %79 = getelementptr inbounds %struct._edit_script, ptr %78, i64 0, i32 2
  store i8 3, ptr %79, align 4, !tbaa !11
  %80 = sub nsw i32 %75, %2
  %81 = getelementptr inbounds %struct._edit_script, ptr %78, i64 0, i32 1
  store i32 %80, ptr %81, align 8, !tbaa !14
  store ptr %78, ptr %7, align 8, !tbaa !7
  br label %82

82:                                               ; preds = %77, %73, %50, %48
  %83 = phi ptr [ %78, %77 ], [ undef, %73 ], [ undef, %48 ], [ undef, %50 ]
  %84 = phi i32 [ %75, %77 ], [ %75, %73 ], [ %2, %48 ], [ %2, %50 ]
  %85 = tail call ptr @xmalloc(i64 noundef 16) #33
  %86 = getelementptr inbounds %struct._edit_script, ptr %85, i64 0, i32 2
  store i8 2, ptr %86, align 4, !tbaa !11
  %87 = getelementptr inbounds %struct._edit_script, ptr %85, i64 0, i32 1
  store i32 1, ptr %87, align 8, !tbaa !14
  %88 = load ptr, ptr %7, align 8, !tbaa !7
  %89 = icmp eq ptr %88, null
  %90 = select i1 %89, ptr %7, ptr %83
  store ptr %85, ptr %90, align 8, !tbaa !7
  store ptr %85, ptr %8, align 8, !tbaa !7
  store ptr null, ptr %85, align 8, !tbaa !15
  %91 = icmp eq i32 %84, %4
  br i1 %91, label %487, label %92

92:                                               ; preds = %82
  %93 = sub nsw i32 %4, %84
  %94 = tail call ptr @xmalloc(i64 noundef 16) #33
  store ptr %94, ptr %8, align 8, !tbaa !7
  %95 = getelementptr inbounds %struct._edit_script, ptr %94, i64 0, i32 2
  store i8 3, ptr %95, align 4, !tbaa !11
  %96 = getelementptr inbounds %struct._edit_script, ptr %94, i64 0, i32 1
  store i32 %93, ptr %96, align 8, !tbaa !14
  store ptr null, ptr %94, align 8, !tbaa !15
  store ptr %94, ptr %85, align 8, !tbaa !15
  br label %487

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
  %110 = sext i32 %4 to i64
  br label %111

111:                                              ; preds = %119, %106
  %112 = phi i64 [ %109, %106 ], [ %120, %119 ]
  %113 = phi i64 [ %107, %106 ], [ %121, %119 ]
  %114 = getelementptr inbounds i8, ptr %0, i64 %112
  %115 = load i8, ptr %114, align 1, !tbaa !16
  %116 = getelementptr inbounds i8, ptr %1, i64 %113
  %117 = load i8, ptr %116, align 1, !tbaa !16
  %118 = icmp eq i8 %115, %117
  br i1 %118, label %119, label %125

119:                                              ; preds = %111
  %120 = add nuw nsw i64 %112, 1
  %121 = add nsw i64 %113, 1
  %122 = icmp slt i64 %120, %110
  %123 = icmp slt i64 %121, %108
  %124 = select i1 %122, i1 %123, i1 false
  br i1 %124, label %111, label %125, !llvm.loop !17

125:                                              ; preds = %119, %111
  %126 = phi i64 [ %112, %111 ], [ %120, %119 ]
  %127 = trunc i64 %126 to i32
  %128 = icmp sgt i32 %127, %2
  br i1 %128, label %129, label %134

129:                                              ; preds = %125
  %130 = tail call ptr @xmalloc(i64 noundef 16) #33
  %131 = getelementptr inbounds %struct._edit_script, ptr %130, i64 0, i32 2
  store i8 3, ptr %131, align 4, !tbaa !11
  %132 = sub nsw i32 %127, %2
  %133 = getelementptr inbounds %struct._edit_script, ptr %130, i64 0, i32 1
  store i32 %132, ptr %133, align 8, !tbaa !14
  store ptr %130, ptr %7, align 8, !tbaa !7
  br label %134

134:                                              ; preds = %129, %125, %102, %100
  %135 = phi ptr [ %130, %129 ], [ undef, %125 ], [ undef, %100 ], [ undef, %102 ]
  %136 = phi i32 [ %127, %129 ], [ %127, %125 ], [ %2, %100 ], [ %2, %102 ]
  %137 = tail call ptr @xmalloc(i64 noundef 16) #33
  %138 = getelementptr inbounds %struct._edit_script, ptr %137, i64 0, i32 2
  store i8 1, ptr %138, align 4, !tbaa !11
  %139 = getelementptr inbounds %struct._edit_script, ptr %137, i64 0, i32 1
  store i32 1, ptr %139, align 8, !tbaa !14
  %140 = load ptr, ptr %7, align 8, !tbaa !7
  %141 = icmp eq ptr %140, null
  %142 = select i1 %141, ptr %7, ptr %135
  store ptr %137, ptr %142, align 8, !tbaa !7
  store ptr %137, ptr %8, align 8, !tbaa !7
  store ptr null, ptr %137, align 8, !tbaa !15
  %143 = add nsw i32 %136, 1
  %144 = icmp slt i32 %143, %4
  br i1 %144, label %145, label %487

145:                                              ; preds = %134
  %146 = tail call ptr @xmalloc(i64 noundef 16) #33
  store ptr %146, ptr %8, align 8, !tbaa !7
  %147 = getelementptr inbounds %struct._edit_script, ptr %146, i64 0, i32 2
  store i8 3, ptr %147, align 4, !tbaa !11
  %148 = xor i32 %136, -1
  %149 = add i32 %148, %4
  %150 = getelementptr inbounds %struct._edit_script, ptr %146, i64 0, i32 1
  store i32 %149, ptr %150, align 8, !tbaa !14
  store ptr null, ptr %146, align 8, !tbaa !15
  store ptr %146, ptr %137, align 8, !tbaa !15
  br label %487

151:                                              ; preds = %97
  %152 = load ptr, ptr @stderr, align 8, !tbaa !7
  %153 = tail call i64 @fwrite(ptr nonnull @.str, i64 48, i64 1, ptr %152) #34
  br label %487

154:                                              ; preds = %32
  %155 = lshr i32 %6, 1
  %156 = sub nsw i32 %6, %155
  %157 = sub nsw i32 %3, %2
  %158 = sub i32 %3, %4
  %159 = sub i32 %157, %155
  %160 = tail call i32 @llvm.smax.i32(i32 %158, i32 %159)
  %161 = sub nsw i32 %5, %2
  %162 = add nsw i32 %155, %157
  %163 = tail call i32 @llvm.smin.i32(i32 %161, i32 %162)
  %164 = sub nsw i32 %5, %4
  %165 = sub i32 %164, %156
  %166 = tail call i32 @llvm.smax.i32(i32 %158, i32 %165)
  %167 = add nsw i32 %156, %164
  %168 = tail call i32 @llvm.smin.i32(i32 %161, i32 %167)
  %169 = sub i32 %163, %160
  %170 = add i32 %169, 1
  %171 = sext i32 %170 to i64
  %172 = shl nsw i64 %171, 2
  %173 = tail call ptr @xmalloc(i64 noundef %172) #33
  %174 = sext i32 %160 to i64
  %175 = sub nsw i64 0, %174
  %176 = getelementptr inbounds i32, ptr %173, i64 %175
  %177 = tail call ptr @xmalloc(i64 noundef %172) #33
  %178 = getelementptr inbounds i32, ptr %177, i64 %175
  %179 = icmp sgt i32 %160, %163
  br i1 %179, label %184, label %180

180:                                              ; preds = %154
  %181 = zext i32 %169 to i64
  %182 = shl nuw nsw i64 %181, 2
  %183 = add nuw nsw i64 %182, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %173, i8 -1, i64 %183, i1 false), !tbaa !19
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
  %194 = sext i32 %4 to i64
  br label %195

195:                                              ; preds = %203, %190
  %196 = phi i64 [ %193, %190 ], [ %204, %203 ]
  %197 = phi i64 [ %191, %190 ], [ %205, %203 ]
  %198 = getelementptr inbounds i8, ptr %0, i64 %196
  %199 = load i8, ptr %198, align 1, !tbaa !16
  %200 = getelementptr inbounds i8, ptr %1, i64 %197
  %201 = load i8, ptr %200, align 1, !tbaa !16
  %202 = icmp eq i8 %199, %201
  br i1 %202, label %203, label %212

203:                                              ; preds = %195
  %204 = add nuw nsw i64 %196, 1
  %205 = add nsw i64 %197, 1
  %206 = icmp slt i64 %204, %194
  %207 = icmp slt i64 %205, %192
  %208 = select i1 %206, i1 %207, i1 false
  br i1 %208, label %195, label %212, !llvm.loop !17

209:                                              ; preds = %186, %184
  %210 = sext i32 %157 to i64
  %211 = getelementptr inbounds i32, ptr %176, i64 %210
  store i32 %2, ptr %211, align 4, !tbaa !19
  br label %218

212:                                              ; preds = %203, %195
  %213 = phi i64 [ %196, %195 ], [ %204, %203 ]
  %214 = trunc i64 %213 to i32
  %215 = sext i32 %157 to i64
  %216 = getelementptr inbounds i32, ptr %176, i64 %215
  store i32 %214, ptr %216, align 4, !tbaa !19
  %217 = icmp ult i32 %6, 2
  br i1 %217, label %323, label %218

218:                                              ; preds = %212, %209
  %219 = sext i32 %5 to i64
  %220 = sext i32 %4 to i64
  %221 = xor i32 %2, -1
  %222 = add i32 %221, %3
  %223 = tail call i32 @llvm.umax.i32(i32 %155, i32 1)
  br label %224

224:                                              ; preds = %319, %218
  %225 = phi i32 [ %222, %218 ], [ %321, %319 ]
  %226 = phi i32 [ 1, %218 ], [ %320, %319 ]
  %227 = tail call i32 @llvm.smax.i32(i32 %225, i32 %159)
  %228 = tail call i32 @llvm.smax.i32(i32 %227, i32 %158)
  %229 = sext i32 %228 to i64
  %230 = sub nsw i32 %157, %226
  %231 = tail call i32 @llvm.smax.i32(i32 %160, i32 %230)
  %232 = add nsw i32 %226, %157
  %233 = tail call i32 @llvm.smin.i32(i32 %163, i32 %232)
  %234 = icmp sgt i32 %231, %233
  br i1 %234, label %319, label %235

235:                                              ; preds = %224
  %236 = sext i32 %233 to i64
  br label %240

237:                                              ; preds = %307
  br i1 %234, label %319, label %238

238:                                              ; preds = %237
  %239 = sext i32 %233 to i64
  br label %312

240:                                              ; preds = %307, %235
  %241 = phi i64 [ %229, %235 ], [ %310, %307 ]
  %242 = trunc i64 %241 to i32
  %243 = icmp eq i32 %231, %242
  br i1 %243, label %244, label %249

244:                                              ; preds = %240
  %245 = add nsw i64 %241, 1
  %246 = getelementptr inbounds i32, ptr %176, i64 %245
  %247 = load i32, ptr %246, align 4, !tbaa !19
  %248 = add nsw i32 %247, 1
  br label %279

249:                                              ; preds = %240
  %250 = icmp eq i32 %233, %242
  br i1 %250, label %251, label %255

251:                                              ; preds = %249
  %252 = add nsw i64 %241, -1
  %253 = getelementptr inbounds i32, ptr %176, i64 %252
  %254 = load i32, ptr %253, align 4, !tbaa !19
  br label %279

255:                                              ; preds = %249
  %256 = getelementptr inbounds i32, ptr %176, i64 %241
  %257 = load i32, ptr %256, align 4, !tbaa !19
  %258 = add nsw i64 %241, 1
  %259 = getelementptr inbounds i32, ptr %176, i64 %258
  %260 = load i32, ptr %259, align 4, !tbaa !19
  %261 = icmp slt i32 %257, %260
  br i1 %261, label %262, label %266

262:                                              ; preds = %255
  %263 = add nsw i64 %241, -1
  %264 = getelementptr inbounds i32, ptr %176, i64 %263
  %265 = load i32, ptr %264, align 4, !tbaa !19
  br label %272

266:                                              ; preds = %255
  %267 = add nsw i32 %257, 1
  %268 = add nsw i64 %241, -1
  %269 = getelementptr inbounds i32, ptr %176, i64 %268
  %270 = load i32, ptr %269, align 4, !tbaa !19
  %271 = icmp slt i32 %267, %270
  br i1 %271, label %272, label %279

272:                                              ; preds = %266, %262
  %273 = phi i32 [ %265, %262 ], [ %270, %266 ]
  %274 = add nsw i32 %260, 1
  %275 = icmp slt i32 %274, %273
  %276 = icmp slt i32 %260, %257
  %277 = or i1 %276, %275
  %278 = select i1 %277, i32 %273, i32 %274
  br label %279

279:                                              ; preds = %272, %266, %251, %244
  %280 = phi i32 [ %248, %244 ], [ %254, %251 ], [ %267, %266 ], [ %278, %272 ]
  %281 = icmp slt i32 %280, 0
  br i1 %281, label %307, label %282

282:                                              ; preds = %279
  %283 = add i32 %280, %242
  %284 = icmp slt i32 %280, %4
  %285 = icmp slt i32 %283, %5
  %286 = and i1 %284, %285
  br i1 %286, label %287, label %307

287:                                              ; preds = %282
  %288 = sext i32 %283 to i64
  %289 = zext i32 %280 to i64
  br label %290

290:                                              ; preds = %298, %287
  %291 = phi i64 [ %289, %287 ], [ %299, %298 ]
  %292 = phi i64 [ %288, %287 ], [ %300, %298 ]
  %293 = getelementptr inbounds i8, ptr %0, i64 %291
  %294 = load i8, ptr %293, align 1, !tbaa !16
  %295 = getelementptr inbounds i8, ptr %1, i64 %292
  %296 = load i8, ptr %295, align 1, !tbaa !16
  %297 = icmp eq i8 %294, %296
  br i1 %297, label %298, label %304

298:                                              ; preds = %290
  %299 = add nuw nsw i64 %291, 1
  %300 = add nsw i64 %292, 1
  %301 = icmp slt i64 %299, %220
  %302 = icmp slt i64 %300, %219
  %303 = select i1 %301, i1 %302, i1 false
  br i1 %303, label %290, label %304, !llvm.loop !17

304:                                              ; preds = %298, %290
  %305 = phi i64 [ %291, %290 ], [ %299, %298 ]
  %306 = trunc i64 %305 to i32
  br label %307

307:                                              ; preds = %304, %282, %279
  %308 = phi i32 [ %280, %279 ], [ %280, %282 ], [ %306, %304 ]
  %309 = getelementptr inbounds i32, ptr %178, i64 %241
  store i32 %308, ptr %309, align 4, !tbaa !19
  %310 = add nsw i64 %241, 1
  %311 = icmp slt i64 %241, %236
  br i1 %311, label %240, label %237, !llvm.loop !20

312:                                              ; preds = %312, %238
  %313 = phi i64 [ %229, %238 ], [ %317, %312 ]
  %314 = getelementptr inbounds i32, ptr %178, i64 %313
  %315 = load i32, ptr %314, align 4, !tbaa !19
  %316 = getelementptr inbounds i32, ptr %176, i64 %313
  store i32 %315, ptr %316, align 4, !tbaa !19
  %317 = add nsw i64 %313, 1
  %318 = icmp slt i64 %313, %239
  br i1 %318, label %312, label %319, !llvm.loop !21

319:                                              ; preds = %312, %237, %224
  %320 = add nuw i32 %226, 1
  %321 = add i32 %225, -1
  %322 = icmp eq i32 %226, %223
  br i1 %322, label %323, label %224, !llvm.loop !22

323:                                              ; preds = %319, %212
  %324 = sub i32 %168, %166
  %325 = add i32 %324, 1
  %326 = sext i32 %325 to i64
  %327 = shl nsw i64 %326, 2
  %328 = tail call ptr @xmalloc(i64 noundef %327) #33
  %329 = sext i32 %166 to i64
  %330 = sub nsw i64 0, %329
  %331 = getelementptr inbounds i32, ptr %328, i64 %330
  %332 = tail call ptr @xmalloc(i64 noundef %327) #33
  %333 = getelementptr inbounds i32, ptr %332, i64 %330
  %334 = icmp sgt i32 %166, %168
  br i1 %334, label %346, label %335

335:                                              ; preds = %323
  %336 = add nsw i32 %4, 1
  %337 = add i32 %168, %166
  %338 = add i32 %337, 1
  %339 = sub i32 %338, %166
  br label %340

340:                                              ; preds = %340, %335
  %341 = phi i64 [ %329, %335 ], [ %343, %340 ]
  %342 = getelementptr inbounds i32, ptr %331, i64 %341
  store i32 %336, ptr %342, align 4, !tbaa !19
  %343 = add nsw i64 %341, 1
  %344 = trunc i64 %343 to i32
  %345 = icmp eq i32 %339, %344
  br i1 %345, label %346, label %340, !llvm.loop !23

346:                                              ; preds = %340, %323
  %347 = tail call fastcc i32 @rsnake(ptr noundef %0, ptr noundef %1, i32 noundef %164, i32 noundef %4, i32 noundef %2, i32 noundef %3, i32 noundef %9, i32 noundef %10) #35
  %348 = sext i32 %164 to i64
  %349 = getelementptr inbounds i32, ptr %331, i64 %348
  store i32 %347, ptr %349, align 4, !tbaa !19
  %350 = icmp slt i32 %156, 1
  br i1 %350, label %424, label %351

351:                                              ; preds = %346
  %352 = xor i32 %4, -1
  %353 = add i32 %352, %5
  %354 = add i32 %6, 1
  %355 = sub i32 %354, %155
  br label %356

356:                                              ; preds = %420, %351
  %357 = phi i32 [ %353, %351 ], [ %422, %420 ]
  %358 = phi i32 [ 1, %351 ], [ %421, %420 ]
  %359 = tail call i32 @llvm.smax.i32(i32 %357, i32 %165)
  %360 = tail call i32 @llvm.smax.i32(i32 %359, i32 %158)
  %361 = sext i32 %360 to i64
  %362 = sub nsw i32 %164, %358
  %363 = tail call i32 @llvm.smax.i32(i32 %166, i32 %362)
  %364 = add nsw i32 %358, %164
  %365 = tail call i32 @llvm.smin.i32(i32 %168, i32 %364)
  %366 = icmp sgt i32 %363, %365
  br i1 %366, label %420, label %367

367:                                              ; preds = %356
  %368 = sext i32 %365 to i64
  br label %372

369:                                              ; preds = %407
  br i1 %366, label %420, label %370

370:                                              ; preds = %369
  %371 = sext i32 %365 to i64
  br label %413

372:                                              ; preds = %407, %367
  %373 = phi i64 [ %361, %367 ], [ %408, %407 ]
  %374 = trunc i64 %373 to i32
  %375 = icmp eq i32 %363, %374
  br i1 %375, label %376, label %380

376:                                              ; preds = %372
  %377 = add nsw i64 %373, 1
  %378 = getelementptr inbounds i32, ptr %331, i64 %377
  %379 = load i32, ptr %378, align 4, !tbaa !19
  br label %407

380:                                              ; preds = %372
  %381 = icmp eq i32 %365, %374
  br i1 %381, label %382, label %388

382:                                              ; preds = %380
  %383 = add nsw i64 %373, -1
  %384 = getelementptr inbounds i32, ptr %331, i64 %383
  %385 = load i32, ptr %384, align 4, !tbaa !19
  %386 = add nsw i32 %385, -1
  %387 = add nsw i64 %373, 1
  br label %407

388:                                              ; preds = %380
  %389 = getelementptr inbounds i32, ptr %331, i64 %373
  %390 = load i32, ptr %389, align 4, !tbaa !19
  %391 = add nsw i32 %390, -1
  %392 = add nsw i64 %373, 1
  %393 = getelementptr inbounds i32, ptr %331, i64 %392
  %394 = load i32, ptr %393, align 4, !tbaa !19
  %395 = icmp sgt i32 %391, %394
  %396 = add nsw i64 %373, -1
  %397 = getelementptr inbounds i32, ptr %331, i64 %396
  %398 = load i32, ptr %397, align 4, !tbaa !19
  %399 = icmp sgt i32 %390, %398
  %400 = select i1 %395, i1 true, i1 %399
  br i1 %400, label %401, label %407

401:                                              ; preds = %388
  %402 = add nsw i32 %398, -1
  %403 = icmp sgt i32 %402, %394
  %404 = icmp sgt i32 %398, %390
  %405 = or i1 %404, %403
  %406 = select i1 %405, i32 %394, i32 %402
  br label %407

407:                                              ; preds = %401, %388, %382, %376
  %408 = phi i64 [ %392, %401 ], [ %387, %382 ], [ %377, %376 ], [ %392, %388 ]
  %409 = phi i32 [ %406, %401 ], [ %386, %382 ], [ %379, %376 ], [ %391, %388 ]
  %410 = tail call fastcc i32 @rsnake(ptr noundef %0, ptr noundef %1, i32 noundef %374, i32 noundef %409, i32 noundef %2, i32 noundef %3, i32 noundef %9, i32 noundef %10) #35
  %411 = getelementptr inbounds i32, ptr %333, i64 %373
  store i32 %410, ptr %411, align 4, !tbaa !19
  %412 = icmp slt i64 %373, %368
  br i1 %412, label %372, label %369, !llvm.loop !24

413:                                              ; preds = %413, %370
  %414 = phi i64 [ %361, %370 ], [ %418, %413 ]
  %415 = getelementptr inbounds i32, ptr %333, i64 %414
  %416 = load i32, ptr %415, align 4, !tbaa !19
  %417 = getelementptr inbounds i32, ptr %331, i64 %414
  store i32 %416, ptr %417, align 4, !tbaa !19
  %418 = add nsw i64 %414, 1
  %419 = icmp slt i64 %414, %371
  br i1 %419, label %413, label %420, !llvm.loop !25

420:                                              ; preds = %413, %369, %356
  %421 = add nuw i32 %358, 1
  %422 = add i32 %357, -1
  %423 = icmp eq i32 %421, %355
  br i1 %423, label %424, label %356, !llvm.loop !26

424:                                              ; preds = %420, %346
  %425 = tail call i32 @llvm.smax.i32(i32 %160, i32 %166)
  %426 = tail call i32 @llvm.smin.i32(i32 %163, i32 %168)
  %427 = icmp sgt i32 %425, %426
  br i1 %427, label %467, label %428

428:                                              ; preds = %424
  %429 = tail call i32 @llvm.smax.i32(i32 %165, i32 %159)
  %430 = tail call i32 @llvm.smax.i32(i32 %429, i32 %158)
  %431 = sext i32 %430 to i64
  %432 = sext i32 %426 to i64
  %433 = add i32 %426, %430
  %434 = add i32 %433, 1
  %435 = sub i32 %434, %425
  %436 = getelementptr inbounds i32, ptr %176, i64 %431
  %437 = load i32, ptr %436, align 4, !tbaa !19
  %438 = getelementptr inbounds i32, ptr %331, i64 %431
  %439 = load i32, ptr %438, align 4, !tbaa !19
  %440 = icmp slt i32 %437, %439
  br i1 %440, label %460, label %450

441:                                              ; preds = %460
  %442 = getelementptr inbounds i32, ptr %176, i64 %462
  %443 = load i32, ptr %442, align 4, !tbaa !19
  %444 = getelementptr inbounds i32, ptr %331, i64 %462
  %445 = load i32, ptr %444, align 4, !tbaa !19
  %446 = icmp slt i32 %443, %445
  br i1 %446, label %460, label %447, !llvm.loop !27

447:                                              ; preds = %441
  %.lcssa5 = phi i32 [ %443, %441 ]
  %.lcssa4 = phi i32 [ %445, %441 ]
  %.lcssa3 = phi i64 [ %461, %441 ]
  %.lcssa1 = phi i64 [ %462, %441 ]
  %448 = icmp sge i64 %.lcssa3, %432
  %449 = trunc i64 %.lcssa1 to i32
  br label %450

450:                                              ; preds = %447, %428
  %451 = phi i32 [ %449, %447 ], [ %430, %428 ]
  %452 = phi i1 [ %448, %447 ], [ false, %428 ]
  %453 = phi i32 [ %.lcssa5, %447 ], [ %437, %428 ]
  %454 = phi i32 [ %.lcssa4, %447 ], [ %439, %428 ]
  %455 = sub nsw i32 %453, %2
  %456 = sub nsw i32 %4, %454
  %457 = icmp slt i32 %455, %456
  %458 = select i1 %457, i32 %454, i32 %453
  %459 = add nsw i32 %458, %451
  br label %467

460:                                              ; preds = %441, %428
  %461 = phi i64 [ %462, %441 ], [ %431, %428 ]
  %462 = add nsw i64 %461, 1
  %463 = trunc i64 %462 to i32
  %464 = icmp eq i32 %435, %463
  br i1 %464, label %465, label %441, !llvm.loop !27

465:                                              ; preds = %460
  %.lcssa2 = phi i64 [ %461, %460 ]
  %466 = icmp sge i64 %.lcssa2, %432
  br label %467

467:                                              ; preds = %465, %450, %424
  %468 = phi i1 [ %452, %450 ], [ true, %424 ], [ %466, %465 ]
  %469 = phi i32 [ %458, %450 ], [ %2, %424 ], [ %2, %465 ]
  %470 = phi i32 [ %459, %450 ], [ %3, %424 ], [ %3, %465 ]
  tail call void @free(ptr noundef %173) #33
  tail call void @free(ptr noundef %328) #33
  tail call void @free(ptr noundef %177) #33
  tail call void @free(ptr noundef %332) #33
  br i1 %468, label %477, label %471

471:                                              ; preds = %467
  call void @align_path(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %469, i32 noundef %470, i32 noundef %155, ptr noundef nonnull %12, ptr noundef nonnull %13, i32 noundef %9, i32 noundef %10) #35
  call void @align_path(ptr noundef %0, ptr noundef %1, i32 noundef %469, i32 noundef %470, i32 noundef %4, i32 noundef %5, i32 noundef %156, ptr noundef nonnull %14, ptr noundef nonnull %15, i32 noundef %9, i32 noundef %10) #35
  %472 = load ptr, ptr %12, align 8, !tbaa !7
  %473 = icmp eq ptr %472, null
  %474 = load ptr, ptr %14, align 8, !tbaa !7
  %475 = load ptr, ptr %13, align 8
  br i1 %473, label %480, label %476

476:                                              ; preds = %471
  store ptr %474, ptr %475, align 8, !tbaa !15
  br label %480

477:                                              ; preds = %467
  %478 = load ptr, ptr @stderr, align 8, !tbaa !7
  %479 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 48, i64 1, ptr %478) #34
  br label %480

480:                                              ; preds = %477, %476, %471
  %481 = phi ptr [ %475, %476 ], [ undef, %477 ], [ %475, %471 ]
  %482 = phi ptr [ %474, %476 ], [ undef, %477 ], [ %474, %471 ]
  %483 = phi ptr [ %472, %476 ], [ null, %477 ], [ %474, %471 ]
  store ptr %483, ptr %7, align 8, !tbaa !7
  %484 = icmp eq ptr %482, null
  %485 = load ptr, ptr %15, align 8
  %486 = select i1 %484, ptr %481, ptr %485
  store ptr %486, ptr %8, align 8, !tbaa !7
  br label %487

487:                                              ; preds = %480, %151, %145, %134, %92, %82, %38, %27, %24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #32
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: nofree nounwind optsize uwtable
define internal fastcc i32 @rsnake(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) unnamed_addr #5 {
  %9 = icmp sgt i32 %3, %6
  br i1 %9, label %43, label %10

10:                                               ; preds = %8
  %11 = or i32 %5, %4
  %12 = icmp sgt i32 %11, -1
  br i1 %12, label %16, label %13

13:                                               ; preds = %10
  %14 = load ptr, ptr @stderr, align 8, !tbaa !7
  %15 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %14, ptr noundef nonnull @.str.8, i32 noundef %4, i32 noundef %5) #36
  br label %16

16:                                               ; preds = %13, %10
  %17 = add nsw i32 %3, %2
  %18 = icmp sgt i32 %17, %7
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load ptr, ptr @stderr, align 8, !tbaa !7
  %21 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %20, ptr noundef nonnull @.str.9, i32 noundef %3, i32 noundef %17) #36
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
  %32 = and i1 %30, %31
  br i1 %32, label %33, label %41

33:                                               ; preds = %27
  %34 = add nsw i64 %29, -1
  %35 = getelementptr inbounds i8, ptr %0, i64 %34
  %36 = load i8, ptr %35, align 1, !tbaa !16
  %37 = add nsw i64 %28, -1
  %38 = getelementptr inbounds i8, ptr %1, i64 %37
  %39 = load i8, ptr %38, align 1, !tbaa !16
  %40 = icmp eq i8 %36, %39
  br i1 %40, label %27, label %41, !llvm.loop !28

41:                                               ; preds = %33, %27
  %.lcssa = phi i64 [ %29, %33 ], [ %29, %27 ]
  %42 = trunc i64 %.lcssa to i32
  br label %43

43:                                               ; preds = %41, %8
  %44 = phi i32 [ %3, %8 ], [ %42, %41 ]
  ret i32 %44
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: nounwind optsize uwtable
define internal i32 @align_get_dist(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) #0 {
  %8 = sub nsw i32 %3, %2
  %9 = sub i32 %3, %4
  %10 = sub i32 %8, %6
  %11 = tail call i32 @llvm.smax.i32(i32 %9, i32 %10)
  %12 = sub nsw i32 %5, %2
  %13 = add nsw i32 %8, %6
  %14 = tail call i32 @llvm.smin.i32(i32 %12, i32 %13)
  %15 = sub nsw i32 %5, %4
  %16 = icmp sgt i32 %15, %14
  %17 = icmp slt i32 %15, %11
  %18 = select i1 %16, i1 true, i1 %17
  br i1 %18, label %188, label %19

19:                                               ; preds = %7
  %20 = sub i32 %14, %11
  %21 = add i32 %20, 1
  %22 = sext i32 %21 to i64
  %23 = shl nsw i64 %22, 2
  %24 = tail call ptr @xmalloc(i64 noundef %23) #33
  %25 = sext i32 %11 to i64
  %26 = sub nsw i64 0, %25
  %27 = getelementptr inbounds i32, ptr %24, i64 %26
  %28 = tail call ptr @xmalloc(i64 noundef %23) #33
  %29 = getelementptr inbounds i32, ptr %28, i64 %26
  %30 = icmp sgt i32 %11, %14
  br i1 %30, label %41, label %31

31:                                               ; preds = %19
  %32 = add i32 %14, %11
  %33 = add i32 %32, 1
  %34 = sub i32 %33, %11
  br label %35

35:                                               ; preds = %35, %31
  %36 = phi i64 [ %25, %31 ], [ %38, %35 ]
  %37 = getelementptr inbounds i32, ptr %27, i64 %36
  store i32 -2147483648, ptr %37, align 4, !tbaa !19
  %38 = add nsw i64 %36, 1
  %39 = trunc i64 %38 to i32
  %40 = icmp eq i32 %34, %39
  br i1 %40, label %41, label %35, !llvm.loop !29

41:                                               ; preds = %35, %19
  %42 = icmp slt i32 %2, 0
  br i1 %42, label %69, label %43

43:                                               ; preds = %41
  %44 = icmp slt i32 %2, %4
  %45 = icmp slt i32 %3, %5
  %46 = and i1 %44, %45
  br i1 %46, label %47, label %69

47:                                               ; preds = %43
  %48 = sext i32 %3 to i64
  %49 = sext i32 %5 to i64
  %50 = zext i32 %2 to i64
  %51 = sext i32 %4 to i64
  br label %52

52:                                               ; preds = %60, %47
  %53 = phi i64 [ %50, %47 ], [ %61, %60 ]
  %54 = phi i64 [ %48, %47 ], [ %62, %60 ]
  %55 = getelementptr inbounds i8, ptr %0, i64 %53
  %56 = load i8, ptr %55, align 1, !tbaa !16
  %57 = getelementptr inbounds i8, ptr %1, i64 %54
  %58 = load i8, ptr %57, align 1, !tbaa !16
  %59 = icmp eq i8 %56, %58
  br i1 %59, label %60, label %66

60:                                               ; preds = %52
  %61 = add nuw nsw i64 %53, 1
  %62 = add nsw i64 %54, 1
  %63 = icmp slt i64 %61, %51
  %64 = icmp slt i64 %62, %49
  %65 = select i1 %63, i1 %64, i1 false
  br i1 %65, label %52, label %66, !llvm.loop !17

66:                                               ; preds = %60, %52
  %67 = phi i64 [ %53, %52 ], [ %61, %60 ]
  %68 = trunc i64 %67 to i32
  br label %69

69:                                               ; preds = %66, %43, %41
  %70 = phi i32 [ %2, %41 ], [ %2, %43 ], [ %68, %66 ]
  %71 = sext i32 %8 to i64
  %72 = getelementptr inbounds i32, ptr %27, i64 %71
  store i32 %70, ptr %72, align 4, !tbaa !19
  %73 = sext i32 %15 to i64
  %74 = getelementptr inbounds i32, ptr %27, i64 %73
  %75 = load i32, ptr %74, align 4, !tbaa !19
  %76 = icmp slt i32 %75, %4
  br i1 %76, label %77, label %186

77:                                               ; preds = %69
  %78 = icmp slt i32 %6, 1
  br i1 %78, label %188, label %79

79:                                               ; preds = %77
  %80 = sext i32 %5 to i64
  %81 = sext i32 %4 to i64
  %82 = xor i32 %2, -1
  %83 = add i32 %82, %3
  br label %84

84:                                               ; preds = %182, %79
  %85 = phi i32 [ %83, %79 ], [ %184, %182 ]
  %86 = phi i32 [ 1, %79 ], [ %183, %182 ]
  %87 = tail call i32 @llvm.smax.i32(i32 %85, i32 %10)
  %88 = tail call i32 @llvm.smax.i32(i32 %87, i32 %9)
  %89 = sext i32 %88 to i64
  %90 = sub nsw i32 %8, %86
  %91 = tail call i32 @llvm.smax.i32(i32 %11, i32 %90)
  %92 = add nsw i32 %86, %8
  %93 = tail call i32 @llvm.smin.i32(i32 %14, i32 %92)
  %94 = icmp sgt i32 %91, %93
  br i1 %94, label %179, label %95

95:                                               ; preds = %84
  %96 = sext i32 %93 to i64
  br label %100

97:                                               ; preds = %167
  br i1 %94, label %179, label %98

98:                                               ; preds = %97
  %99 = sext i32 %93 to i64
  br label %172

100:                                              ; preds = %167, %95
  %101 = phi i64 [ %89, %95 ], [ %170, %167 ]
  %102 = trunc i64 %101 to i32
  %103 = icmp eq i32 %91, %102
  br i1 %103, label %104, label %109

104:                                              ; preds = %100
  %105 = add nsw i64 %101, 1
  %106 = getelementptr inbounds i32, ptr %27, i64 %105
  %107 = load i32, ptr %106, align 4, !tbaa !19
  %108 = add nsw i32 %107, 1
  br label %139

109:                                              ; preds = %100
  %110 = icmp eq i32 %93, %102
  br i1 %110, label %111, label %115

111:                                              ; preds = %109
  %112 = add nsw i64 %101, -1
  %113 = getelementptr inbounds i32, ptr %27, i64 %112
  %114 = load i32, ptr %113, align 4, !tbaa !19
  br label %139

115:                                              ; preds = %109
  %116 = getelementptr inbounds i32, ptr %27, i64 %101
  %117 = load i32, ptr %116, align 4, !tbaa !19
  %118 = add nsw i64 %101, 1
  %119 = getelementptr inbounds i32, ptr %27, i64 %118
  %120 = load i32, ptr %119, align 4, !tbaa !19
  %121 = icmp slt i32 %117, %120
  br i1 %121, label %122, label %126

122:                                              ; preds = %115
  %123 = add nsw i64 %101, -1
  %124 = getelementptr inbounds i32, ptr %27, i64 %123
  %125 = load i32, ptr %124, align 4, !tbaa !19
  br label %132

126:                                              ; preds = %115
  %127 = add nsw i32 %117, 1
  %128 = add nsw i64 %101, -1
  %129 = getelementptr inbounds i32, ptr %27, i64 %128
  %130 = load i32, ptr %129, align 4, !tbaa !19
  %131 = icmp slt i32 %127, %130
  br i1 %131, label %132, label %139

132:                                              ; preds = %126, %122
  %133 = phi i32 [ %125, %122 ], [ %130, %126 ]
  %134 = add nsw i32 %120, 1
  %135 = icmp slt i32 %134, %133
  %136 = icmp slt i32 %120, %117
  %137 = or i1 %136, %135
  %138 = select i1 %137, i32 %133, i32 %134
  br label %139

139:                                              ; preds = %132, %126, %111, %104
  %140 = phi i32 [ %108, %104 ], [ %114, %111 ], [ %127, %126 ], [ %138, %132 ]
  %141 = icmp slt i32 %140, 0
  br i1 %141, label %167, label %142

142:                                              ; preds = %139
  %143 = add i32 %140, %102
  %144 = icmp slt i32 %140, %4
  %145 = icmp slt i32 %143, %5
  %146 = and i1 %144, %145
  br i1 %146, label %147, label %167

147:                                              ; preds = %142
  %148 = sext i32 %143 to i64
  %149 = zext i32 %140 to i64
  br label %150

150:                                              ; preds = %158, %147
  %151 = phi i64 [ %149, %147 ], [ %159, %158 ]
  %152 = phi i64 [ %148, %147 ], [ %160, %158 ]
  %153 = getelementptr inbounds i8, ptr %0, i64 %151
  %154 = load i8, ptr %153, align 1, !tbaa !16
  %155 = getelementptr inbounds i8, ptr %1, i64 %152
  %156 = load i8, ptr %155, align 1, !tbaa !16
  %157 = icmp eq i8 %154, %156
  br i1 %157, label %158, label %164

158:                                              ; preds = %150
  %159 = add nuw nsw i64 %151, 1
  %160 = add nsw i64 %152, 1
  %161 = icmp slt i64 %159, %81
  %162 = icmp slt i64 %160, %80
  %163 = select i1 %161, i1 %162, i1 false
  br i1 %163, label %150, label %164, !llvm.loop !17

164:                                              ; preds = %158, %150
  %165 = phi i64 [ %151, %150 ], [ %159, %158 ]
  %166 = trunc i64 %165 to i32
  br label %167

167:                                              ; preds = %164, %142, %139
  %168 = phi i32 [ %140, %139 ], [ %140, %142 ], [ %166, %164 ]
  %169 = getelementptr inbounds i32, ptr %29, i64 %101
  store i32 %168, ptr %169, align 4, !tbaa !19
  %170 = add nsw i64 %101, 1
  %171 = icmp slt i64 %101, %96
  br i1 %171, label %100, label %97, !llvm.loop !30

172:                                              ; preds = %172, %98
  %173 = phi i64 [ %89, %98 ], [ %177, %172 ]
  %174 = getelementptr inbounds i32, ptr %29, i64 %173
  %175 = load i32, ptr %174, align 4, !tbaa !19
  %176 = getelementptr inbounds i32, ptr %27, i64 %173
  store i32 %175, ptr %176, align 4, !tbaa !19
  %177 = add nsw i64 %173, 1
  %178 = icmp slt i64 %173, %99
  br i1 %178, label %172, label %179, !llvm.loop !31

179:                                              ; preds = %172, %97, %84
  %180 = load i32, ptr %74, align 4, !tbaa !19
  %181 = icmp slt i32 %180, %4
  br i1 %181, label %182, label %186

182:                                              ; preds = %179
  %183 = add nuw i32 %86, 1
  %184 = add i32 %85, -1
  %185 = icmp eq i32 %86, %6
  br i1 %185, label %188, label %84, !llvm.loop !32

186:                                              ; preds = %179, %69
  %187 = phi i32 [ 0, %69 ], [ %86, %179 ]
  tail call void @free(ptr noundef nonnull %24) #33
  tail call void @free(ptr noundef %28) #33
  br label %188

188:                                              ; preds = %186, %182, %77, %7
  %189 = phi i32 [ -1, %7 ], [ -1, %77 ], [ %187, %186 ], [ -1, %182 ]
  ret i32 %189
}

; Function Attrs: nounwind optsize uwtable
define internal void @Condense_both_Ends(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = load ptr, ptr %0, align 8, !tbaa !7
  store ptr null, ptr %2, align 8, !tbaa !7
  %5 = icmp eq ptr %4, null
  br i1 %5, label %31, label %6

6:                                                ; preds = %27, %3
  %7 = phi ptr [ %29, %27 ], [ %4, %3 ]
  %8 = load ptr, ptr %7, align 8, !tbaa !15
  %9 = icmp eq ptr %8, null
  br i1 %9, label %27, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct._edit_script, ptr %7, i64 0, i32 2
  %12 = getelementptr inbounds %struct._edit_script, ptr %7, i64 0, i32 1
  br label %13

13:                                               ; preds = %19, %10
  %14 = phi ptr [ %8, %10 ], [ %25, %19 ]
  %15 = load i8, ptr %11, align 4, !tbaa !11
  %16 = getelementptr inbounds %struct._edit_script, ptr %14, i64 0, i32 2
  %17 = load i8, ptr %16, align 4, !tbaa !11
  %18 = icmp eq i8 %15, %17
  br i1 %18, label %19, label %27

19:                                               ; preds = %13
  %20 = load i32, ptr %12, align 8, !tbaa !14
  %21 = getelementptr inbounds %struct._edit_script, ptr %14, i64 0, i32 1
  %22 = load i32, ptr %21, align 8, !tbaa !14
  %23 = add nsw i32 %22, %20
  store i32 %23, ptr %12, align 8, !tbaa !14
  %24 = load ptr, ptr %14, align 8, !tbaa !15
  store ptr %24, ptr %7, align 8, !tbaa !15
  tail call void @free(ptr noundef nonnull %14) #33
  %25 = load ptr, ptr %7, align 8, !tbaa !15
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %13, !llvm.loop !33

27:                                               ; preds = %19, %13, %6
  %28 = phi ptr [ %1, %6 ], [ %2, %13 ], [ %1, %19 ]
  store ptr %7, ptr %28, align 8, !tbaa !7
  %29 = load ptr, ptr %7, align 8, !tbaa !15
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %6, !llvm.loop !34

31:                                               ; preds = %27, %3
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal void @S2A(ptr noundef readonly %0, ptr noundef %1, i32 noundef %2) #8 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %40, label %5

5:                                                ; preds = %3
  %6 = icmp eq i32 %2, 0
  br label %7

7:                                                ; preds = %36, %5
  %8 = phi ptr [ %1, %5 ], [ %37, %36 ]
  %9 = phi ptr [ %0, %5 ], [ %38, %36 ]
  %10 = getelementptr inbounds %struct._edit_script, ptr %9, i64 0, i32 2
  %11 = load i8, ptr %10, align 4, !tbaa !11
  switch i8 %11, label %27 [
    i8 3, label %12
    i8 2, label %23
  ]

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct._edit_script, ptr %9, i64 0, i32 1
  %14 = load i32, ptr %13, align 8, !tbaa !14
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %36

16:                                               ; preds = %16, %12
  %17 = phi i32 [ %20, %16 ], [ 0, %12 ]
  %18 = phi ptr [ %19, %16 ], [ %8, %12 ]
  %19 = getelementptr inbounds i32, ptr %18, i64 1
  store i32 0, ptr %18, align 4, !tbaa !19
  %20 = add nuw nsw i32 %17, 1
  %21 = load i32, ptr %13, align 8, !tbaa !14
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %16, label %36, !llvm.loop !35

23:                                               ; preds = %7
  %24 = getelementptr inbounds %struct._edit_script, ptr %9, i64 0, i32 1
  %25 = load i32, ptr %24, align 8, !tbaa !14
  %26 = sub nsw i32 0, %25
  br label %31

27:                                               ; preds = %7
  %28 = getelementptr inbounds %struct._edit_script, ptr %9, i64 0, i32 1
  %29 = load i32, ptr %28, align 8, !tbaa !14
  %30 = sub nsw i32 0, %29
  br label %31

31:                                               ; preds = %27, %23
  %32 = phi i32 [ %29, %27 ], [ %26, %23 ]
  %33 = phi i32 [ %30, %27 ], [ %25, %23 ]
  %34 = select i1 %6, i32 %33, i32 %32
  %35 = getelementptr inbounds i32, ptr %8, i64 1
  store i32 %34, ptr %8, align 4, !tbaa !19
  br label %36

36:                                               ; preds = %31, %16, %12
  %37 = phi ptr [ %8, %12 ], [ %35, %31 ], [ %19, %16 ]
  %38 = load ptr, ptr %9, align 8, !tbaa !15
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %7, !llvm.loop !36

40:                                               ; preds = %36, %3
  %41 = phi ptr [ %1, %3 ], [ %37, %36 ]
  %42 = ptrtoint ptr %41 to i64
  %43 = ptrtoint ptr %1 to i64
  %44 = sub i64 %42, %43
  %45 = lshr exact i64 %44, 2
  %46 = trunc i64 %45 to i32
  %47 = getelementptr inbounds i32, ptr %1, i64 -1
  store i32 %46, ptr %47, align 4, !tbaa !19
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @IDISPLAY(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4, i32 noundef %5, i32 noundef %6, ptr nocapture noundef readonly %7, i32 noundef %8) #0 {
  %10 = load ptr, ptr %7, align 8, !tbaa !16
  %11 = getelementptr inbounds %struct._collec_t, ptr %7, i64 0, i32 1
  %12 = load i32, ptr %11, align 8, !tbaa !37
  %13 = add i32 %12, -1
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds ptr, ptr %10, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !7
  %17 = getelementptr inbounds %struct._exon_t, ptr %16, i64 0, i32 2
  %18 = load i32, ptr %17, align 4, !tbaa !39
  %19 = load i32, ptr getelementptr inbounds (%struct._options_t, ptr @options, i64 0, i32 15), align 4, !tbaa !41
  %20 = add i32 %19, %18
  %21 = icmp ult i32 %20, 10
  br i1 %21, label %28, label %22

22:                                               ; preds = %22, %9
  %23 = phi i32 [ %26, %22 ], [ 1, %9 ]
  %24 = phi i32 [ %25, %22 ], [ %20, %9 ]
  %25 = udiv i32 %24, 10
  %26 = add i32 %23, 1
  %27 = icmp ult i32 %24, 100
  br i1 %27, label %28, label %22, !llvm.loop !43

28:                                               ; preds = %22, %9
  %29 = phi i32 [ 1, %9 ], [ %26, %22 ]
  %30 = tail call i32 @llvm.umax.i32(i32 %29, i32 7)
  %31 = icmp eq i32 %12, 0
  br i1 %31, label %47, label %32

32:                                               ; preds = %28
  %33 = zext i32 %12 to i64
  br label %34

34:                                               ; preds = %44, %32
  %35 = phi i64 [ 0, %32 ], [ %45, %44 ]
  %36 = getelementptr inbounds ptr, ptr %10, i64 %35
  %37 = load ptr, ptr %36, align 8, !tbaa !7
  %38 = load i32, ptr %37, align 4, !tbaa !44
  %39 = icmp eq i32 %38, %5
  br i1 %39, label %40, label %44

40:                                               ; preds = %34
  %41 = getelementptr inbounds %struct._exon_t, ptr %37, i64 0, i32 1
  %42 = load i32, ptr %41, align 4, !tbaa !45
  %43 = icmp eq i32 %42, %6
  br i1 %43, label %48, label %44

44:                                               ; preds = %40, %34
  %45 = add nuw nsw i64 %35, 1
  %46 = icmp eq i64 %45, %33
  br i1 %46, label %47, label %34, !llvm.loop !46

47:                                               ; preds = %44, %28
  tail call void (ptr, ...) @fatal(ptr noundef nonnull @.str.2) #37
  unreachable

48:                                               ; preds = %40
  %.lcssa1 = phi i64 [ %35, %40 ]
  %.lcssa = phi ptr [ %37, %40 ]
  %49 = trunc i64 %.lcssa1 to i32
  %50 = icmp ugt i32 %13, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %48
  %52 = getelementptr inbounds %struct._exon_t, ptr %.lcssa, i64 0, i32 2
  %53 = load i32, ptr %52, align 4, !tbaa !39
  %54 = add nsw i32 %53, 1
  br label %55

55:                                               ; preds = %51, %48
  %56 = phi i32 [ %54, %51 ], [ -1, %48 ]
  %57 = or i32 %2, %3
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %256, label %59

59:                                               ; preds = %55
  %60 = icmp eq i32 %8, 0
  %61 = icmp sgt i32 %8, 0
  %62 = select i1 %61, i8 62, i8 60
  br label %63

63:                                               ; preds = %237, %59
  %64 = phi ptr [ %.lcssa, %59 ], [ %238, %237 ]
  %65 = phi i32 [ %49, %59 ], [ %239, %237 ]
  %66 = phi ptr [ %4, %59 ], [ %240, %237 ]
  %67 = phi i32 [ %6, %59 ], [ %252, %237 ]
  %68 = phi i32 [ %5, %59 ], [ %251, %237 ]
  %69 = phi i32 [ 0, %59 ], [ %250, %237 ]
  %70 = phi i32 [ 0, %59 ], [ %241, %237 ]
  %71 = phi i32 [ 0, %59 ], [ %242, %237 ]
  %72 = phi i32 [ %56, %59 ], [ %243, %237 ]
  %73 = phi i32 [ 0, %59 ], [ %244, %237 ]
  %74 = phi i32 [ 0, %59 ], [ %245, %237 ]
  %75 = phi i8 [ 42, %59 ], [ %246, %237 ]
  %76 = phi ptr [ @CLINE, %59 ], [ %249, %237 ]
  %77 = phi ptr [ @BLINE, %59 ], [ %248, %237 ]
  %78 = phi ptr [ @ALINE, %59 ], [ %247, %237 ]
  %79 = icmp eq i32 %74, 0
  br i1 %79, label %80, label %95

80:                                               ; preds = %63
  %81 = load i32, ptr %66, align 4, !tbaa !19
  %82 = icmp eq i32 %81, 0
  %83 = getelementptr inbounds i32, ptr %66, i64 1
  br i1 %82, label %84, label %95

84:                                               ; preds = %80
  %85 = add i32 %71, 1
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds i8, ptr %0, i64 %86
  %88 = load i8, ptr %87, align 1, !tbaa !16
  store i8 %88, ptr %78, align 1, !tbaa !16
  %89 = add i32 %70, 1
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds i8, ptr %1, i64 %90
  %92 = load i8, ptr %91, align 1, !tbaa !16
  store i8 %92, ptr %77, align 1, !tbaa !16
  %93 = icmp eq i8 %88, %92
  %94 = select i1 %93, i8 124, i8 32
  store i8 %94, ptr %76, align 1, !tbaa !16
  br label %173

95:                                               ; preds = %80, %63
  %96 = phi i32 [ %74, %63 ], [ %81, %80 ]
  %97 = phi ptr [ %66, %63 ], [ %83, %80 ]
  %98 = icmp sgt i32 %96, 0
  br i1 %98, label %99, label %105

99:                                               ; preds = %95
  store i8 32, ptr %78, align 1, !tbaa !16
  %100 = add i32 %70, 1
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds i8, ptr %1, i64 %101
  %103 = load i8, ptr %102, align 1, !tbaa !16
  store i8 %103, ptr %77, align 1, !tbaa !16
  store i8 45, ptr %76, align 1, !tbaa !16
  %104 = add nsw i32 %96, -1
  br label %173

105:                                              ; preds = %95
  %106 = add i32 %71, %5
  %107 = icmp eq i32 %106, %72
  br i1 %107, label %108, label %139

108:                                              ; preds = %105
  %109 = getelementptr inbounds %struct._exon_t, ptr %64, i64 0, i32 6
  %110 = load i64, ptr %109, align 4
  %111 = ashr i64 %110, 56
  %112 = and i64 %111, 2147483648
  %113 = icmp ne i64 %112, 0
  %114 = or i1 %60, %113
  %115 = select i1 %114, i8 61, i8 %62
  %116 = add i32 %65, 1
  %117 = load i32, ptr %11, align 8, !tbaa !37
  %118 = icmp ult i32 %116, %117
  br i1 %118, label %119, label %124

119:                                              ; preds = %108
  %120 = load ptr, ptr %7, align 8, !tbaa !16
  %121 = zext i32 %116 to i64
  %122 = getelementptr inbounds ptr, ptr %120, i64 %121
  %123 = load ptr, ptr %122, align 8, !tbaa !7
  br label %124

124:                                              ; preds = %119, %108
  %125 = phi ptr [ %123, %119 ], [ null, %108 ]
  %126 = add i32 %117, -1
  %127 = icmp ult i32 %116, %126
  br i1 %127, label %128, label %132

128:                                              ; preds = %124
  %129 = getelementptr inbounds %struct._exon_t, ptr %125, i64 0, i32 2
  %130 = load i32, ptr %129, align 4, !tbaa !39
  %131 = add nsw i32 %130, 1
  br label %132

132:                                              ; preds = %128, %124
  %133 = phi i32 [ %131, %128 ], [ -1, %124 ]
  store i8 %115, ptr %76, align 1, !tbaa !16
  %134 = add i32 %71, 1
  %135 = zext i32 %134 to i64
  %136 = getelementptr inbounds i8, ptr %0, i64 %135
  %137 = load i8, ptr %136, align 1, !tbaa !16
  store i8 %137, ptr %78, align 1, !tbaa !16
  store i8 32, ptr %77, align 1, !tbaa !16
  %138 = add nsw i32 %96, 1
  br label %173

139:                                              ; preds = %105
  switch i32 %73, label %187 [
    i32 0, label %140
    i32 8, label %167
    i32 1, label %146
    i32 2, label %146
    i32 3, label %153
    i32 4, label %153
    i32 5, label %157
    i32 6, label %160
    i32 7, label %160
  ]

140:                                              ; preds = %139
  store i8 45, ptr %76, align 1, !tbaa !16
  %141 = add i32 %71, 1
  %142 = zext i32 %141 to i64
  %143 = getelementptr inbounds i8, ptr %0, i64 %142
  %144 = load i8, ptr %143, align 1, !tbaa !16
  store i8 %144, ptr %78, align 1, !tbaa !16
  store i8 32, ptr %77, align 1, !tbaa !16
  %145 = add nsw i32 %96, 1
  br label %173

146:                                              ; preds = %139, %139
  %147 = add i32 %71, 1
  %148 = zext i32 %147 to i64
  %149 = getelementptr inbounds i8, ptr %0, i64 %148
  %150 = load i8, ptr %149, align 1, !tbaa !16
  store i8 %150, ptr %78, align 1, !tbaa !16
  store i8 32, ptr %77, align 1, !tbaa !16
  store i8 %75, ptr %76, align 1, !tbaa !16
  %151 = add nsw i32 %96, 1
  %152 = add nuw nsw i32 %73, 1
  br label %173

153:                                              ; preds = %139, %139
  store i8 46, ptr %78, align 1, !tbaa !16
  store i8 32, ptr %77, align 1, !tbaa !16
  store i8 46, ptr %76, align 1, !tbaa !16
  %154 = add i32 %71, 1
  %155 = add nsw i32 %96, 1
  %156 = add nuw nsw i32 %73, 1
  br label %173

157:                                              ; preds = %139
  store i8 46, ptr %78, align 1, !tbaa !16
  store i8 32, ptr %77, align 1, !tbaa !16
  store i8 46, ptr %76, align 1, !tbaa !16
  %158 = add i32 %71, -3
  %159 = sub i32 %158, %96
  br label %173

160:                                              ; preds = %139, %139
  %161 = add i32 %71, 1
  %162 = zext i32 %161 to i64
  %163 = getelementptr inbounds i8, ptr %0, i64 %162
  %164 = load i8, ptr %163, align 1, !tbaa !16
  store i8 %164, ptr %78, align 1, !tbaa !16
  store i8 32, ptr %77, align 1, !tbaa !16
  store i8 %75, ptr %76, align 1, !tbaa !16
  %165 = add nsw i32 %96, 1
  %166 = add nuw nsw i32 %73, 1
  br label %173

167:                                              ; preds = %139
  %168 = add i32 %71, 1
  %169 = zext i32 %168 to i64
  %170 = getelementptr inbounds i8, ptr %0, i64 %169
  %171 = load i8, ptr %170, align 1, !tbaa !16
  store i8 %171, ptr %78, align 1, !tbaa !16
  store i8 32, ptr %77, align 1, !tbaa !16
  store i8 %75, ptr %76, align 1, !tbaa !16
  %172 = add nsw i32 %96, 1
  br label %173

173:                                              ; preds = %167, %160, %157, %153, %146, %140, %132, %99, %84
  %174 = phi i8 [ %75, %84 ], [ %75, %99 ], [ %115, %132 ], [ %75, %167 ], [ %75, %160 ], [ %75, %157 ], [ %75, %153 ], [ %75, %146 ], [ %75, %140 ]
  %175 = phi i32 [ 0, %84 ], [ %104, %99 ], [ %138, %132 ], [ %172, %167 ], [ %165, %160 ], [ -3, %157 ], [ %155, %153 ], [ %151, %146 ], [ %145, %140 ]
  %176 = phi i32 [ %73, %84 ], [ %73, %99 ], [ 1, %132 ], [ 0, %167 ], [ %166, %160 ], [ 6, %157 ], [ %156, %153 ], [ %152, %146 ], [ 0, %140 ]
  %177 = phi i32 [ %72, %84 ], [ %72, %99 ], [ %133, %132 ], [ %72, %167 ], [ %72, %160 ], [ %72, %157 ], [ %72, %153 ], [ %72, %146 ], [ %72, %140 ]
  %178 = phi i32 [ %85, %84 ], [ %71, %99 ], [ %134, %132 ], [ %168, %167 ], [ %161, %160 ], [ %159, %157 ], [ %154, %153 ], [ %147, %146 ], [ %141, %140 ]
  %179 = phi i32 [ %89, %84 ], [ %100, %99 ], [ %70, %132 ], [ %70, %167 ], [ %70, %160 ], [ %70, %157 ], [ %70, %153 ], [ %70, %146 ], [ %70, %140 ]
  %180 = phi ptr [ %83, %84 ], [ %97, %99 ], [ %97, %132 ], [ %97, %167 ], [ %97, %160 ], [ %97, %157 ], [ %97, %153 ], [ %97, %146 ], [ %97, %140 ]
  %181 = phi i32 [ %65, %84 ], [ %65, %99 ], [ %116, %132 ], [ %65, %167 ], [ %65, %160 ], [ %65, %157 ], [ %65, %153 ], [ %65, %146 ], [ %65, %140 ]
  %182 = phi ptr [ %64, %84 ], [ %64, %99 ], [ %125, %132 ], [ %64, %167 ], [ %64, %160 ], [ %64, %157 ], [ %64, %153 ], [ %64, %146 ], [ %64, %140 ]
  %183 = getelementptr inbounds i8, ptr %76, i64 1
  %184 = getelementptr inbounds i8, ptr %77, i64 1
  %185 = getelementptr inbounds i8, ptr %78, i64 1
  %186 = icmp ult ptr %185, getelementptr inbounds ([51 x i8], ptr @ALINE, i64 0, i64 50)
  br i1 %186, label %187, label %203

187:                                              ; preds = %173, %139
  %188 = phi ptr [ %182, %173 ], [ %64, %139 ]
  %189 = phi i32 [ %181, %173 ], [ %65, %139 ]
  %190 = phi ptr [ %180, %173 ], [ %97, %139 ]
  %191 = phi i32 [ %179, %173 ], [ %70, %139 ]
  %192 = phi i32 [ %178, %173 ], [ %71, %139 ]
  %193 = phi i32 [ %177, %173 ], [ %72, %139 ]
  %194 = phi i32 [ %176, %173 ], [ %73, %139 ]
  %195 = phi i32 [ %175, %173 ], [ %96, %139 ]
  %196 = phi i8 [ %174, %173 ], [ %75, %139 ]
  %197 = phi ptr [ %183, %173 ], [ %76, %139 ]
  %198 = phi ptr [ %184, %173 ], [ %77, %139 ]
  %199 = phi ptr [ %185, %173 ], [ %78, %139 ]
  %200 = icmp ult i32 %192, %2
  %201 = icmp ult i32 %191, %3
  %202 = select i1 %200, i1 true, i1 %201
  br i1 %202, label %237, label %203

203:                                              ; preds = %187, %173
  %204 = phi ptr [ %188, %187 ], [ %182, %173 ]
  %205 = phi i32 [ %189, %187 ], [ %181, %173 ]
  %206 = phi ptr [ %190, %187 ], [ %180, %173 ]
  %207 = phi i32 [ %191, %187 ], [ %179, %173 ]
  %208 = phi i32 [ %192, %187 ], [ %178, %173 ]
  %209 = phi i32 [ %193, %187 ], [ %177, %173 ]
  %210 = phi i32 [ %194, %187 ], [ %176, %173 ]
  %211 = phi i32 [ %195, %187 ], [ %175, %173 ]
  %212 = phi i8 [ %196, %187 ], [ %174, %173 ]
  %213 = phi ptr [ %197, %187 ], [ %183, %173 ]
  %214 = phi ptr [ %198, %187 ], [ %184, %173 ]
  %215 = phi ptr [ %199, %187 ], [ %185, %173 ]
  store i8 0, ptr %213, align 1, !tbaa !16
  store i8 0, ptr %214, align 1, !tbaa !16
  store i8 0, ptr %215, align 1, !tbaa !16
  %216 = add i32 %69, 1
  %217 = mul i32 %69, 50
  %218 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %30, i32 noundef %217) #35
  %219 = icmp ult ptr %215, getelementptr inbounds ([51 x i8], ptr @ALINE, i64 0, i64 10)
  br i1 %219, label %225, label %220

220:                                              ; preds = %220, %203
  %221 = phi ptr [ %223, %220 ], [ getelementptr inbounds ([51 x i8], ptr @ALINE, i64 0, i64 10), %203 ]
  %222 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4) #35
  %223 = getelementptr inbounds i8, ptr %221, i64 10
  %224 = icmp ugt ptr %223, %215
  br i1 %224, label %225, label %220, !llvm.loop !47

225:                                              ; preds = %220, %203
  %226 = phi ptr [ getelementptr inbounds ([51 x i8], ptr @ALINE, i64 0, i64 10), %203 ], [ %223, %220 ]
  %227 = getelementptr inbounds i8, ptr %215, i64 5
  %228 = icmp ugt ptr %226, %227
  br i1 %228, label %231, label %229

229:                                              ; preds = %225
  %230 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5) #35
  br label %231

231:                                              ; preds = %229, %225
  %232 = load i32, ptr getelementptr inbounds (%struct._options_t, ptr @options, i64 0, i32 15), align 4, !tbaa !41
  %233 = add i32 %232, %68
  %234 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, i32 noundef %30, i32 noundef %233, ptr noundef nonnull @ALINE, i32 noundef %30, ptr noundef nonnull @.str.7, ptr noundef nonnull @CLINE, i32 noundef %30, i32 noundef %67, ptr noundef nonnull @BLINE) #35
  %235 = add i32 %208, %5
  %236 = add i32 %207, %6
  br label %237

237:                                              ; preds = %231, %187
  %238 = phi ptr [ %204, %231 ], [ %188, %187 ]
  %239 = phi i32 [ %205, %231 ], [ %189, %187 ]
  %240 = phi ptr [ %206, %231 ], [ %190, %187 ]
  %241 = phi i32 [ %207, %231 ], [ %191, %187 ]
  %242 = phi i32 [ %208, %231 ], [ %192, %187 ]
  %243 = phi i32 [ %209, %231 ], [ %193, %187 ]
  %244 = phi i32 [ %210, %231 ], [ %194, %187 ]
  %245 = phi i32 [ %211, %231 ], [ %195, %187 ]
  %246 = phi i8 [ %212, %231 ], [ %196, %187 ]
  %247 = phi ptr [ @ALINE, %231 ], [ %199, %187 ]
  %248 = phi ptr [ @BLINE, %231 ], [ %198, %187 ]
  %249 = phi ptr [ @CLINE, %231 ], [ %197, %187 ]
  %250 = phi i32 [ %216, %231 ], [ %69, %187 ]
  %251 = phi i32 [ %235, %231 ], [ %68, %187 ]
  %252 = phi i32 [ %236, %231 ], [ %67, %187 ]
  %253 = icmp ult i32 %242, %2
  %254 = icmp ult i32 %241, %3
  %255 = select i1 %253, i1 true, i1 %254
  br i1 %255, label %63, label %256, !llvm.loop !48

256:                                              ; preds = %237, %55
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: nounwind optsize uwtable
define internal void @Free_script(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %3, %1
  %4 = phi ptr [ %5, %3 ], [ %0, %1 ]
  %5 = load ptr, ptr %4, align 8, !tbaa !15
  tail call void @free(ptr noundef nonnull %4) #33
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %3, !llvm.loop !49

7:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: noreturn nounwind optsize uwtable
define internal void @fatal(ptr nocapture noundef readonly %0, ...) #9 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #32
  call void @llvm.va_start(ptr nonnull %2)
  %3 = load ptr, ptr @stdout, align 8, !tbaa !7
  %4 = call i32 @fflush(ptr noundef %3) #35
  %5 = load ptr, ptr @argv0, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %14, label %7

7:                                                ; preds = %1
  %8 = call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %5, i32 noundef 47) #38
  %9 = load ptr, ptr @stderr, align 8, !tbaa !7
  %10 = icmp eq ptr %8, null
  %11 = getelementptr inbounds i8, ptr %8, i64 1
  %12 = select i1 %10, ptr %5, ptr %11
  %13 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef nonnull @.str.10, ptr noundef nonnull %12) #36
  br label %14

14:                                               ; preds = %7, %1
  %15 = load ptr, ptr @stderr, align 8, !tbaa !7
  %16 = call i32 @vfprintf(ptr noundef %15, ptr noundef %0, ptr noundef nonnull %2) #36
  call void @llvm.va_end(ptr nonnull %2)
  %17 = load ptr, ptr @stderr, align 8, !tbaa !7
  %18 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %17, ptr noundef nonnull @.str.1.11, ptr noundef nonnull @dna_seq_head, ptr noundef nonnull @rna_seq_head) #36
  call void @exit(i32 noundef 1) #37
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #10

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: nofree nounwind optsize
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #10

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32 noundef) local_unnamed_addr #12

; Function Attrs: nounwind optsize uwtable
define internal noalias ptr @xmalloc(i64 noundef %0) #0 {
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #39
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %9

4:                                                ; preds = %1
  %5 = tail call ptr @__errno_location() #40
  %6 = load i32, ptr %5, align 4, !tbaa !19
  %7 = tail call ptr @strerror(i32 noundef %6) #33
  %8 = load i32, ptr %5, align 4, !tbaa !19
  tail call void (ptr, ...) @fatal(ptr noundef nonnull @.str.2.14, i64 noundef %0, ptr noundef %7, i32 noundef %8) #41
  unreachable

9:                                                ; preds = %1
  ret ptr %2
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #14

; Function Attrs: nounwind optsize
declare ptr @strerror(i32 noundef) local_unnamed_addr #15

; Function Attrs: nounwind optsize uwtable
define internal noalias ptr @xcalloc(i64 noundef %0, i64 noundef %1) #0 {
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #42
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %10

5:                                                ; preds = %2
  %6 = tail call ptr @__errno_location() #40
  %7 = load i32, ptr %6, align 4, !tbaa !19
  %8 = tail call ptr @strerror(i32 noundef %7) #33
  %9 = load i32, ptr %6, align 4, !tbaa !19
  tail call void (ptr, ...) @fatal(ptr noundef nonnull @.str.3.15, i64 noundef %0, i64 noundef %1, ptr noundef %8, i32 noundef %9) #41
  unreachable

10:                                               ; preds = %2
  ret ptr %3
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #16

; Function Attrs: nounwind optsize uwtable
define internal noalias ptr @xrealloc(ptr noundef %0, i64 noundef %1) #0 {
  %3 = tail call ptr @realloc(ptr noundef %0, i64 noundef %1) #43
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %10

5:                                                ; preds = %2
  %6 = tail call ptr @__errno_location() #40
  %7 = load i32, ptr %6, align 4, !tbaa !19
  %8 = tail call ptr @strerror(i32 noundef %7) #33
  %9 = load i32, ptr %6, align 4, !tbaa !19
  tail call void (ptr, ...) @fatal(ptr noundef nonnull @.str.4.16, ptr noundef %0, i64 noundef %1, ptr noundef %8, i32 noundef %9) #41
  unreachable

10:                                               ; preds = %2
  ret ptr %3
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #17

; Function Attrs: nounwind optsize uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct._seq_t, align 8
  %4 = alloca %struct._seq_t, align 8
  %5 = alloca %struct._hash_env_t, align 8
  %6 = alloca %struct._collec_t, align 8
  %7 = alloca %struct._collec_t, align 8
  call void @llvm.lifetime.start.p0(i64 4160, ptr nonnull %3) #32
  call void @llvm.lifetime.start.p0(i64 4160, ptr nonnull %4) #32
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #32
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #32
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #32
  %8 = load ptr, ptr %1, align 8, !tbaa !7
  store ptr %8, ptr @argv0, align 8, !tbaa !7
  %9 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.19) #33
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load ptr, ptr @stderr, align 8, !tbaa !7
  %13 = load ptr, ptr %1, align 8, !tbaa !7
  %14 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %12, ptr noundef nonnull @.str.1.20, ptr noundef %13) #36
  br label %15

15:                                               ; preds = %11, %2
  %16 = tail call ptr @signal(i32 noundef 11, ptr noundef nonnull @bug_handler) #33
  %17 = tail call ptr @signal(i32 noundef 7, ptr noundef nonnull @bug_handler) #33
  store <4 x i32> <i32 15, i32 3, i32 10, i32 6>, ptr getelementptr inbounds (%struct._options_t, ptr @options, i64 0, i32 4), align 8, !tbaa !19
  store ptr @.str.2.23, ptr @options, align 8, !tbaa !50
  store i32 4, ptr getelementptr inbounds (%struct._options_t, ptr @options, i64 0, i32 2), align 8, !tbaa !51
  store <4 x i32> <i32 15, i32 10, i32 -5, i32 2>, ptr getelementptr inbounds (%struct._options_t, ptr @options, i64 0, i32 8), align 8, !tbaa !19
  store i32 1, ptr getelementptr inbounds (%struct._options_t, ptr @options, i64 0, i32 12), align 8, !tbaa !52
  store i32 12, ptr getelementptr inbounds (%struct._options_t, ptr @options, i64 0, i32 13), align 4, !tbaa !53
  store i32 12, ptr getelementptr inbounds (%struct._options_t, ptr @options, i64 0, i32 14), align 8, !tbaa !54
  store i32 75, ptr getelementptr inbounds (%struct._options_t, ptr @options, i64 0, i32 16), align 8, !tbaa !55
  store i32 50, ptr getelementptr inbounds (%struct._options_t, ptr @options, i64 0, i32 17), align 4, !tbaa !56
  br label %18

18:                                               ; preds = %31, %15
  %19 = tail call i32 @getopt(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.3.24) #33
  switch i32 %19, label %118 [
    i32 -1, label %121
    i32 65, label %20
    i32 67, label %25
    i32 99, label %32
    i32 69, label %38
    i32 102, label %44
    i32 103, label %49
    i32 73, label %52
    i32 75, label %55
    i32 76, label %61
    i32 77, label %87
    i32 111, label %93
    i32 113, label %96
    i32 82, label %99
    i32 114, label %104
    i32 87, label %107
    i32 88, label %113
    i32 63, label %31
  ]

20:                                               ; preds = %18
  %21 = load ptr, ptr @optarg, align 8, !tbaa !7
  %22 = tail call i32 @atoi(ptr nocapture noundef %21) #38
  store i32 %22, ptr getelementptr inbounds (%struct._options_t, ptr @options, i64 0, i32 3), align 4, !tbaa !57
  %23 = icmp ugt i32 %22, 4
  br i1 %23, label %24, label %31

24:                                               ; preds = %20
  tail call void (ptr, ...) @fatal(ptr noundef nonnull @.str.4.25) #37
  unreachable

25:                                               ; preds = %18
  %26 = load ptr, ptr @optarg, align 8, !tbaa !7
  %27 = tail call i32 @atoi(ptr nocapture noundef %26) #38
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  tail call void (ptr, ...) @fatal(ptr noundef nonnull @.str.5.26) #37
  unreachable

30:                                               ; preds = %25
  store i32 %27, ptr getelementptr inbounds (%struct._options_t, ptr @options, i64 0, i32 4), align 8, !tbaa !58
  br label %31

31:                                               ; preds = %118, %113, %107, %104, %99, %96, %93, %92, %83, %60, %52, %49, %44, %38, %37, %30, %20, %18
  br label %18

32:                                               ; preds = %18
  %33 = load ptr, ptr @optarg, align 8, !tbaa !7
  %34 = tail call i32 @atoi(ptr nocapture noundef %33) #38
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  tail call void (ptr, ...) @fatal(ptr noundef nonnull @.str.6.27) #37
  unreachable

37:                                               ; preds = %32
  store i32 %34, ptr getelementptr inbounds (%struct._options_t, ptr @options, i64 0, i32 17), align 4, !tbaa !56
  br label %31

38:                                               ; preds = %18
  %39 = load ptr, ptr @optarg, align 8, !tbaa !7
  %40 = tail call i32 @atoi(ptr nocapture noundef %39) #38
  store i32 %40, ptr getelementptr inbounds (%struct._options_t, ptr @options, i64 0, i32 5), align 4, !tbaa !59
  %41 = add i32 %40, -11
  %42 = icmp ult i32 %41, -8
  br i1 %42, label %43, label %31

43:                                               ; preds = %38
  tail call void (ptr, ...) @fatal(ptr noundef nonnull @.str.7.28) #37
  unreachable

44:                                               ; preds = %18
  %45 = load ptr, ptr @optarg, align 8, !tbaa !7
  %46 = tail call i32 @atoi(ptr nocapture noundef %45) #38
  store i32 %46, ptr getelementptr inbounds (%struct._options_t, ptr @options, i64 0, i32 16), align 8, !tbaa !55
  %47 = icmp ugt i32 %46, 100
  br i1 %47, label %48, label %31

48:                                               ; preds = %44
  tail call void (ptr, ...) @fatal(ptr noundef nonnull @.str.8.29) #37
  unreachable

49:                                               ; preds = %18
  %50 = load ptr, ptr @optarg, align 8, !tbaa !7
  %51 = tail call i32 @atoi(ptr nocapture noundef %50) #38
  store i32 %51, ptr getelementptr inbounds (%struct._options_t, ptr @options, i64 0, i32 6), align 8, !tbaa !60
  br label %31

52:                                               ; preds = %18
  %53 = load ptr, ptr @optarg, align 8, !tbaa !7
  %54 = tail call i32 @atoi(ptr nocapture noundef %53) #38
  store i32 %54, ptr getelementptr inbounds (%struct._options_t, ptr @options, i64 0, i32 7), align 4, !tbaa !61
  br label %31

55:                                               ; preds = %18
  %56 = load ptr, ptr @optarg, align 8, !tbaa !7
  %57 = tail call i32 @atoi(ptr nocapture noundef %56) #38
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %55
  tail call void (ptr, ...) @fatal(ptr noundef nonnull @.str.9.30) #37
  unreachable

60:                                               ; preds = %55
  store i32 %57, ptr getelementptr inbounds (%struct._options_t, ptr @options, i64 0, i32 8), align 8, !tbaa !62
  br label %31

61:                                               ; preds = %18
  %62 = load ptr, ptr @optarg, align 8, !tbaa !7
  %63 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %62) #38
  store ptr %62, ptr @options, align 8, !tbaa !50
  store i32 1, ptr getelementptr inbounds (%struct._options_t, ptr @options, i64 0, i32 2), align 8, !tbaa !51
  %64 = urem i64 %63, 5
  %65 = icmp eq i64 %64, 4
  br i1 %65, label %67, label %66

66:                                               ; preds = %61
  %.lcssa4 = phi i64 [ %63, %61 ]
  tail call void (ptr, ...) @fatal(ptr noundef nonnull @.str.10.31, i64 noundef %.lcssa4) #37
  unreachable

67:                                               ; preds = %83, %61
  %68 = phi i64 [ %85, %83 ], [ 0, %61 ]
  %69 = phi i32 [ %84, %83 ], [ 1, %61 ]
  %70 = urem i64 %68, 5
  %71 = icmp eq i64 %70, 4
  %72 = getelementptr inbounds i8, ptr %62, i64 %68
  %73 = load i8, ptr %72, align 1, !tbaa !16
  br i1 %71, label %74, label %80

74:                                               ; preds = %67
  %75 = icmp eq i8 %73, 44
  br i1 %75, label %78, label %76

76:                                               ; preds = %74
  %.lcssa3 = phi i64 [ %68, %74 ]
  %.lcssa1 = phi i8 [ %73, %74 ]
  %77 = sext i8 %.lcssa1 to i32
  tail call void (ptr, ...) @fatal(ptr noundef nonnull @.str.11, i32 noundef %77, i64 noundef %.lcssa3) #37
  unreachable

78:                                               ; preds = %74
  %79 = add i32 %69, 1
  store i32 %79, ptr getelementptr inbounds (%struct._options_t, ptr @options, i64 0, i32 2), align 8, !tbaa !51
  br label %83

80:                                               ; preds = %67
  switch i8 %73, label %81 [
    i8 65, label %83
    i8 67, label %83
    i8 71, label %83
    i8 84, label %83
  ]

81:                                               ; preds = %80
  %.lcssa2 = phi i64 [ %68, %80 ]
  %.lcssa = phi i8 [ %73, %80 ]
  %82 = sext i8 %.lcssa to i32
  tail call void (ptr, ...) @fatal(ptr noundef nonnull @.str.12, i32 noundef %82, i64 noundef %.lcssa2) #37
  unreachable

83:                                               ; preds = %80, %80, %80, %80, %78
  %84 = phi i32 [ %69, %80 ], [ %69, %80 ], [ %69, %80 ], [ %69, %80 ], [ %79, %78 ]
  %85 = add nuw i64 %68, 1
  %86 = icmp eq i64 %85, %63
  br i1 %86, label %31, label %67, !llvm.loop !63

87:                                               ; preds = %18
  %88 = load ptr, ptr @optarg, align 8, !tbaa !7
  %89 = tail call i32 @atoi(ptr nocapture noundef %88) #38
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %87
  tail call void (ptr, ...) @fatal(ptr noundef nonnull @.str.13) #37
  unreachable

92:                                               ; preds = %87
  store i32 %89, ptr getelementptr inbounds (%struct._options_t, ptr @options, i64 0, i32 9), align 4, !tbaa !64
  br label %31

93:                                               ; preds = %18
  %94 = load ptr, ptr @optarg, align 8, !tbaa !7
  %95 = tail call i32 @atoi(ptr nocapture noundef %94) #38
  store i32 %95, ptr getelementptr inbounds (%struct._options_t, ptr @options, i64 0, i32 15), align 4, !tbaa !41
  br label %31

96:                                               ; preds = %18
  %97 = load ptr, ptr @optarg, align 8, !tbaa !7
  %98 = tail call i32 @atoi(ptr nocapture noundef %97) #38
  store i32 %98, ptr getelementptr inbounds (%struct._options_t, ptr @options, i64 0, i32 10), align 8, !tbaa !65
  br label %31

99:                                               ; preds = %18
  %100 = load ptr, ptr @optarg, align 8, !tbaa !7
  %101 = tail call i32 @atoi(ptr nocapture noundef %100) #38
  store i32 %101, ptr getelementptr inbounds (%struct._options_t, ptr @options, i64 0, i32 11), align 4, !tbaa !66
  %102 = icmp ugt i32 %101, 2
  br i1 %102, label %103, label %31

103:                                              ; preds = %99
  tail call void (ptr, ...) @fatal(ptr noundef nonnull @.str.14) #37
  unreachable

104:                                              ; preds = %18
  %105 = load ptr, ptr @optarg, align 8, !tbaa !7
  %106 = tail call i32 @atoi(ptr nocapture noundef %105) #38
  store i32 %106, ptr getelementptr inbounds (%struct._options_t, ptr @options, i64 0, i32 12), align 8, !tbaa !52
  br label %31

107:                                              ; preds = %18
  %108 = load ptr, ptr @optarg, align 8, !tbaa !7
  %109 = tail call i32 @atoi(ptr nocapture noundef %108) #38
  store i32 %109, ptr getelementptr inbounds (%struct._options_t, ptr @options, i64 0, i32 13), align 4, !tbaa !53
  %110 = add i32 %109, -16
  %111 = icmp ult i32 %110, -15
  br i1 %111, label %112, label %31

112:                                              ; preds = %107
  tail call void (ptr, ...) @fatal(ptr noundef nonnull @.str.15) #37
  unreachable

113:                                              ; preds = %18
  %114 = load ptr, ptr @optarg, align 8, !tbaa !7
  %115 = tail call i32 @atoi(ptr nocapture noundef %114) #38
  store i32 %115, ptr getelementptr inbounds (%struct._options_t, ptr @options, i64 0, i32 14), align 8, !tbaa !54
  %116 = icmp slt i32 %115, 1
  br i1 %116, label %117, label %31

117:                                              ; preds = %113
  tail call void (ptr, ...) @fatal(ptr noundef nonnull @.str.16) #37
  unreachable

118:                                              ; preds = %18
  %119 = load ptr, ptr @stderr, align 8, !tbaa !7
  %120 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %119, ptr noundef nonnull @.str.17, i32 noundef %19) #36
  br label %31

121:                                              ; preds = %18
  %122 = load i32, ptr @optind, align 4, !tbaa !19
  %123 = add nsw i32 %122, 2
  %124 = icmp eq i32 %123, %0
  br i1 %124, label %145, label %125

125:                                              ; preds = %121
  %126 = load ptr, ptr @stderr, align 8, !tbaa !7
  %127 = load ptr, ptr %1, align 8, !tbaa !7
  %128 = load i32, ptr getelementptr inbounds (%struct._options_t, ptr @options, i64 0, i32 3), align 4, !tbaa !57
  %129 = load i32, ptr getelementptr inbounds (%struct._options_t, ptr @options, i64 0, i32 4), align 8, !tbaa !58
  %130 = load i32, ptr getelementptr inbounds (%struct._options_t, ptr @options, i64 0, i32 17), align 4, !tbaa !56
  %131 = load i32, ptr getelementptr inbounds (%struct._options_t, ptr @options, i64 0, i32 5), align 4, !tbaa !59
  %132 = load i32, ptr getelementptr inbounds (%struct._options_t, ptr @options, i64 0, i32 16), align 8, !tbaa !55
  %133 = load i32, ptr getelementptr inbounds (%struct._options_t, ptr @options, i64 0, i32 6), align 8, !tbaa !60
  %134 = load i32, ptr getelementptr inbounds (%struct._options_t, ptr @options, i64 0, i32 7), align 4, !tbaa !61
  %135 = load i32, ptr getelementptr inbounds (%struct._options_t, ptr @options, i64 0, i32 8), align 8, !tbaa !62
  %136 = load ptr, ptr @options, align 8, !tbaa !50
  %137 = load i32, ptr getelementptr inbounds (%struct._options_t, ptr @options, i64 0, i32 9), align 4, !tbaa !64
  %138 = load i32, ptr getelementptr inbounds (%struct._options_t, ptr @options, i64 0, i32 15), align 4, !tbaa !41
  %139 = load i32, ptr getelementptr inbounds (%struct._options_t, ptr @options, i64 0, i32 10), align 8, !tbaa !65
  %140 = load i32, ptr getelementptr inbounds (%struct._options_t, ptr @options, i64 0, i32 11), align 4, !tbaa !66
  %141 = load i32, ptr getelementptr inbounds (%struct._options_t, ptr @options, i64 0, i32 12), align 8, !tbaa !52
  %142 = load i32, ptr getelementptr inbounds (%struct._options_t, ptr @options, i64 0, i32 13), align 4, !tbaa !53
  %143 = load i32, ptr getelementptr inbounds (%struct._options_t, ptr @options, i64 0, i32 14), align 8, !tbaa !54
  %144 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %126, ptr noundef nonnull @Usage, ptr noundef %127, i32 noundef %128, i32 noundef %129, i32 noundef %130, i32 noundef %131, i32 noundef %132, i32 noundef %133, i32 noundef %134, i32 noundef %135, ptr noundef %136, i32 noundef %137, i32 noundef %138, i32 noundef %139, i32 noundef %140, i32 noundef %141, i32 noundef %142, i32 noundef %143) #36
  br label %373

145:                                              ; preds = %121
  %146 = sext i32 %122 to i64
  %147 = getelementptr inbounds ptr, ptr %1, i64 %146
  %148 = load ptr, ptr %147, align 8, !tbaa !7
  call fastcc void @init_seq(ptr noundef %148, ptr noundef nonnull %3) #35
  %149 = load i32, ptr getelementptr inbounds (%struct._options_t, ptr @options, i64 0, i32 15), align 4, !tbaa !41
  %150 = call fastcc i32 @get_next_seq(ptr noundef nonnull %3, i32 noundef %149, i32 noundef 1) #35, !range !67
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %157, label %152

152:                                              ; preds = %145
  %153 = load i32, ptr @optind, align 4, !tbaa !19
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds ptr, ptr %1, i64 %154
  %156 = load ptr, ptr %155, align 8, !tbaa !7
  tail call void (ptr, ...) @fatal(ptr noundef nonnull @.str.18, ptr noundef %156) #37
  unreachable

157:                                              ; preds = %145
  %158 = getelementptr inbounds %struct._seq_t, ptr %3, i64 0, i32 1
  %159 = load ptr, ptr %158, align 8, !tbaa !68
  %160 = tail call ptr @strncpy(ptr noundef nonnull dereferenceable(1) @dna_seq_head, ptr noundef nonnull dereferenceable(1) %159, i64 noundef 256) #33
  %161 = load i32, ptr @optind, align 4, !tbaa !19
  %162 = add nsw i32 %161, 1
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds ptr, ptr %1, i64 %163
  %165 = load ptr, ptr %164, align 8, !tbaa !7
  call fastcc void @init_seq(ptr noundef %165, ptr noundef nonnull %4) #35
  %166 = call fastcc i32 @get_next_seq(ptr noundef nonnull %4, i32 noundef 0, i32 noundef 0) #35, !range !67
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %174, label %168

168:                                              ; preds = %157
  %169 = load i32, ptr @optind, align 4, !tbaa !19
  %170 = add nsw i32 %169, 1
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds ptr, ptr %1, i64 %171
  %173 = load ptr, ptr %172, align 8, !tbaa !7
  tail call void (ptr, ...) @fatal(ptr noundef nonnull @.str.18, ptr noundef %173) #37
  unreachable

174:                                              ; preds = %157
  tail call void @init_encoding() #33
  %175 = load i32, ptr getelementptr inbounds (%struct._options_t, ptr @options, i64 0, i32 13), align 4, !tbaa !53
  %176 = getelementptr inbounds %struct._seq_t, ptr %3, i64 0, i32 2
  %177 = load ptr, ptr %176, align 8, !tbaa !71
  %178 = getelementptr inbounds %struct._seq_t, ptr %3, i64 0, i32 5
  %179 = load i32, ptr %178, align 4, !tbaa !72
  call void @init_hash_env(ptr noundef nonnull %5, i32 noundef %175, ptr noundef %177, i32 noundef %179) #33
  call void @init_col(ptr noundef nonnull %6, i32 noundef 1) #33
  call void @init_col(ptr noundef nonnull %7, i32 noundef 1) #33
  call void @bld_table(ptr noundef nonnull %5) #33
  %180 = load i32, ptr getelementptr inbounds (%struct._options_t, ptr @options, i64 0, i32 2), align 8, !tbaa !51
  %181 = zext i32 %180 to i64
  %182 = shl nuw nsw i64 %181, 3
  %183 = call ptr @xmalloc(i64 noundef %182) #33
  store ptr %183, ptr getelementptr inbounds (%struct._options_t, ptr @options, i64 0, i32 1), align 8, !tbaa !73
  %184 = load i32, ptr getelementptr inbounds (%struct._options_t, ptr @options, i64 0, i32 2), align 8, !tbaa !51
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %212, label %186

186:                                              ; preds = %207, %174
  %187 = phi i64 [ %208, %207 ], [ 0, %174 ]
  %188 = mul nuw nsw i64 %187, 5
  br label %189

189:                                              ; preds = %189, %186
  %190 = phi i64 [ 0, %186 ], [ %205, %189 ]
  %191 = load ptr, ptr @options, align 8, !tbaa !50
  %192 = add nuw nsw i64 %190, %188
  %193 = and i64 %192, 4294967295
  %194 = getelementptr inbounds i8, ptr %191, i64 %193
  %195 = load i8, ptr %194, align 1, !tbaa !16
  %196 = load ptr, ptr getelementptr inbounds (%struct._options_t, ptr @options, i64 0, i32 1), align 8, !tbaa !73
  %197 = getelementptr inbounds %struct._junction_t, ptr %196, i64 %187
  %198 = getelementptr inbounds [4 x i8], ptr %197, i64 0, i64 %190
  store i8 %195, ptr %198, align 1, !tbaa !16
  %199 = zext i8 %195 to i64
  %200 = getelementptr inbounds [256 x i8], ptr @dna_complement, i64 0, i64 %199
  %201 = load i8, ptr %200, align 1, !tbaa !16
  %202 = load ptr, ptr getelementptr inbounds (%struct._options_t, ptr @options, i64 0, i32 1), align 8, !tbaa !73
  %203 = sub nuw nsw i64 3, %190
  %204 = getelementptr inbounds %struct._junction_t, ptr %202, i64 %187, i32 1, i64 %203
  store i8 %201, ptr %204, align 1, !tbaa !16
  %205 = add nuw nsw i64 %190, 1
  %206 = icmp eq i64 %205, 4
  br i1 %206, label %207, label %189, !llvm.loop !74

207:                                              ; preds = %189
  %208 = add nuw nsw i64 %187, 1
  %209 = load i32, ptr getelementptr inbounds (%struct._options_t, ptr @options, i64 0, i32 2), align 8, !tbaa !51
  %210 = zext i32 %209 to i64
  %211 = icmp ult i64 %208, %210
  br i1 %211, label %186, label %212, !llvm.loop !75

212:                                              ; preds = %207, %174
  %213 = getelementptr inbounds %struct._seq_t, ptr %4, i64 0, i32 1
  %214 = getelementptr inbounds %struct._seq_t, ptr %4, i64 0, i32 5
  %215 = getelementptr inbounds %struct._seq_t, ptr %4, i64 0, i32 2
  %216 = getelementptr inbounds %struct._collec_t, ptr %7, i64 0, i32 1
  %217 = getelementptr inbounds %struct._collec_t, ptr %6, i64 0, i32 1
  br label %218

218:                                              ; preds = %372, %212
  %219 = phi i32 [ 0, %212 ], [ %227, %372 ]
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %224, label %221

221:                                              ; preds = %218
  %222 = call fastcc i32 @get_next_seq(ptr noundef nonnull %4, i32 noundef 0, i32 noundef 0) #35, !range !67
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %224, label %373

224:                                              ; preds = %221, %218
  %225 = load ptr, ptr %213, align 8, !tbaa !68
  %226 = call ptr @strncpy(ptr noundef nonnull dereferenceable(1) @rna_seq_head, ptr noundef nonnull dereferenceable(1) %225, i64 noundef 256) #33
  %227 = add nuw nsw i32 %219, 1
  %228 = load i32, ptr getelementptr inbounds (%struct._options_t, ptr @options, i64 0, i32 11), align 4, !tbaa !66
  switch i32 %228, label %251 [
    i32 0, label %252
    i32 2, label %229
    i32 1, label %230
  ]

229:                                              ; preds = %224
  call void @SIM4(ptr noundef nonnull %5, ptr noundef nonnull %4, ptr noundef nonnull %6) #33
  br label %230

230:                                              ; preds = %229, %224
  %231 = load i32, ptr %214, align 4, !tbaa !72
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %252, label %233

233:                                              ; preds = %230
  %234 = load ptr, ptr %215, align 8, !tbaa !71
  %235 = zext i32 %231 to i64
  %236 = getelementptr inbounds i8, ptr %234, i64 %235
  br label %237

237:                                              ; preds = %237, %233
  %238 = phi ptr [ %249, %237 ], [ %234, %233 ]
  %239 = phi ptr [ %240, %237 ], [ %236, %233 ]
  %240 = getelementptr inbounds i8, ptr %239, i64 -1
  %241 = load i8, ptr %240, align 1, !tbaa !16
  %242 = zext i8 %241 to i64
  %243 = getelementptr inbounds [256 x i8], ptr @dna_complement, i64 0, i64 %242
  %244 = load i8, ptr %243, align 1, !tbaa !16
  %245 = load i8, ptr %238, align 1, !tbaa !16
  %246 = zext i8 %245 to i64
  %247 = getelementptr inbounds [256 x i8], ptr @dna_complement, i64 0, i64 %246
  %248 = load i8, ptr %247, align 1, !tbaa !16
  store i8 %248, ptr %240, align 1, !tbaa !16
  %249 = getelementptr inbounds i8, ptr %238, i64 1
  store i8 %244, ptr %238, align 1, !tbaa !16
  %250 = icmp ult ptr %249, %240
  br i1 %250, label %237, label %252, !llvm.loop !76

251:                                              ; preds = %224
  call void (ptr, ...) @fatal(ptr noundef nonnull @.str.19.36) #37
  unreachable

252:                                              ; preds = %237, %230, %224
  %253 = phi ptr [ %6, %224 ], [ %7, %230 ], [ %7, %237 ]
  call void @SIM4(ptr noundef nonnull %5, ptr noundef nonnull %4, ptr noundef nonnull %253) #33
  %254 = load i32, ptr getelementptr inbounds (%struct._options_t, ptr @options, i64 0, i32 16), align 8, !tbaa !55
  %255 = icmp eq i32 %254, 0
  %256 = load i32, ptr %216, align 8, !tbaa !37
  br i1 %255, label %322, label %257

257:                                              ; preds = %252
  %258 = icmp eq i32 %256, 0
  br i1 %258, label %262, label %259

259:                                              ; preds = %257
  %260 = load ptr, ptr %7, align 8, !tbaa !16
  %261 = zext i32 %256 to i64
  br label %269

262:                                              ; preds = %269, %257
  %263 = phi i32 [ 0, %257 ], [ %276, %269 ]
  %264 = load i32, ptr %217, align 8, !tbaa !37
  %265 = icmp eq i32 %264, 0
  br i1 %265, label %289, label %266

266:                                              ; preds = %262
  %267 = load ptr, ptr %6, align 8, !tbaa !16
  %268 = zext i32 %264 to i64
  br label %279

269:                                              ; preds = %269, %259
  %270 = phi i64 [ 0, %259 ], [ %277, %269 ]
  %271 = phi i32 [ 0, %259 ], [ %276, %269 ]
  %272 = getelementptr inbounds ptr, ptr %260, i64 %270
  %273 = load ptr, ptr %272, align 8, !tbaa !7
  %274 = getelementptr inbounds %struct._result_t, ptr %273, i64 0, i32 5
  %275 = load i32, ptr %274, align 4, !tbaa !77
  %276 = call i32 @llvm.umax.i32(i32 %275, i32 %271)
  %277 = add nuw nsw i64 %270, 1
  %278 = icmp eq i64 %277, %261
  br i1 %278, label %262, label %269, !llvm.loop !80

279:                                              ; preds = %279, %266
  %280 = phi i64 [ 0, %266 ], [ %287, %279 ]
  %281 = phi i32 [ %263, %266 ], [ %286, %279 ]
  %282 = getelementptr inbounds ptr, ptr %267, i64 %280
  %283 = load ptr, ptr %282, align 8, !tbaa !7
  %284 = getelementptr inbounds %struct._result_t, ptr %283, i64 0, i32 5
  %285 = load i32, ptr %284, align 4, !tbaa !77
  %286 = call i32 @llvm.umax.i32(i32 %285, i32 %281)
  %287 = add nuw nsw i64 %280, 1
  %288 = icmp eq i64 %287, %268
  br i1 %288, label %289, label %279, !llvm.loop !81

289:                                              ; preds = %279, %262
  %290 = phi i32 [ %263, %262 ], [ %286, %279 ]
  %291 = mul i32 %290, %254
  %292 = udiv i32 %291, 100
  br i1 %258, label %296, label %293

293:                                              ; preds = %289
  %294 = load ptr, ptr %7, align 8, !tbaa !16
  %295 = zext i32 %256 to i64
  br label %300

296:                                              ; preds = %308, %289
  br i1 %265, label %322, label %297

297:                                              ; preds = %296
  %298 = load ptr, ptr %6, align 8, !tbaa !16
  %299 = zext i32 %264 to i64
  br label %311

300:                                              ; preds = %308, %293
  %301 = phi i64 [ 0, %293 ], [ %309, %308 ]
  %302 = getelementptr inbounds ptr, ptr %294, i64 %301
  %303 = load ptr, ptr %302, align 8, !tbaa !7
  %304 = getelementptr inbounds %struct._result_t, ptr %303, i64 0, i32 5
  %305 = load i32, ptr %304, align 4, !tbaa !77
  %306 = icmp ult i32 %305, %292
  br i1 %306, label %307, label %308

307:                                              ; preds = %300
  store i32 0, ptr %304, align 4, !tbaa !77
  br label %308

308:                                              ; preds = %307, %300
  %309 = add nuw nsw i64 %301, 1
  %310 = icmp eq i64 %309, %295
  br i1 %310, label %296, label %300, !llvm.loop !82

311:                                              ; preds = %319, %297
  %312 = phi i64 [ 0, %297 ], [ %320, %319 ]
  %313 = getelementptr inbounds ptr, ptr %298, i64 %312
  %314 = load ptr, ptr %313, align 8, !tbaa !7
  %315 = getelementptr inbounds %struct._result_t, ptr %314, i64 0, i32 5
  %316 = load i32, ptr %315, align 4, !tbaa !77
  %317 = icmp ult i32 %316, %292
  br i1 %317, label %318, label %319

318:                                              ; preds = %311
  store i32 0, ptr %315, align 4, !tbaa !77
  br label %319

319:                                              ; preds = %318, %311
  %320 = add nuw nsw i64 %312, 1
  %321 = icmp eq i64 %320, %299
  br i1 %321, label %322, label %311, !llvm.loop !83

322:                                              ; preds = %319, %296, %252
  %323 = icmp eq i32 %256, 0
  br i1 %323, label %333, label %324

324:                                              ; preds = %324, %322
  %325 = phi i64 [ %329, %324 ], [ 0, %322 ]
  %326 = load ptr, ptr %7, align 8, !tbaa !16
  %327 = getelementptr inbounds ptr, ptr %326, i64 %325
  %328 = load ptr, ptr %327, align 8, !tbaa !7
  call fastcc void @print_res(ptr noundef %328, i32 noundef 1, ptr noundef nonnull %3, ptr noundef nonnull %4) #35
  %329 = add nuw nsw i64 %325, 1
  %330 = load i32, ptr %216, align 8, !tbaa !37
  %331 = zext i32 %330 to i64
  %332 = icmp ult i64 %329, %331
  br i1 %332, label %324, label %333, !llvm.loop !84

333:                                              ; preds = %324, %322
  store i32 0, ptr %216, align 8, !tbaa !37
  %334 = load i32, ptr getelementptr inbounds (%struct._options_t, ptr @options, i64 0, i32 11), align 4, !tbaa !66
  %335 = icmp ne i32 %334, 0
  %336 = load i32, ptr getelementptr inbounds (%struct._options_t, ptr @options, i64 0, i32 3), align 4
  %337 = icmp ne i32 %336, 0
  %338 = select i1 %335, i1 %337, i1 false
  br i1 %338, label %339, label %360

339:                                              ; preds = %333
  %340 = load i32, ptr %214, align 4, !tbaa !72
  %341 = icmp eq i32 %340, 0
  br i1 %341, label %360, label %342

342:                                              ; preds = %339
  %343 = load ptr, ptr %215, align 8, !tbaa !71
  %344 = zext i32 %340 to i64
  %345 = getelementptr inbounds i8, ptr %343, i64 %344
  br label %346

346:                                              ; preds = %346, %342
  %347 = phi ptr [ %358, %346 ], [ %343, %342 ]
  %348 = phi ptr [ %349, %346 ], [ %345, %342 ]
  %349 = getelementptr inbounds i8, ptr %348, i64 -1
  %350 = load i8, ptr %349, align 1, !tbaa !16
  %351 = zext i8 %350 to i64
  %352 = getelementptr inbounds [256 x i8], ptr @dna_complement, i64 0, i64 %351
  %353 = load i8, ptr %352, align 1, !tbaa !16
  %354 = load i8, ptr %347, align 1, !tbaa !16
  %355 = zext i8 %354 to i64
  %356 = getelementptr inbounds [256 x i8], ptr @dna_complement, i64 0, i64 %355
  %357 = load i8, ptr %356, align 1, !tbaa !16
  store i8 %357, ptr %349, align 1, !tbaa !16
  %358 = getelementptr inbounds i8, ptr %347, i64 1
  store i8 %353, ptr %347, align 1, !tbaa !16
  %359 = icmp ult ptr %358, %349
  br i1 %359, label %346, label %360, !llvm.loop !76

360:                                              ; preds = %346, %339, %333
  %361 = load i32, ptr %217, align 8, !tbaa !37
  %362 = icmp eq i32 %361, 0
  br i1 %362, label %372, label %363

363:                                              ; preds = %363, %360
  %364 = phi i64 [ %368, %363 ], [ 0, %360 ]
  %365 = load ptr, ptr %6, align 8, !tbaa !16
  %366 = getelementptr inbounds ptr, ptr %365, i64 %364
  %367 = load ptr, ptr %366, align 8, !tbaa !7
  call fastcc void @print_res(ptr noundef %367, i32 noundef 0, ptr noundef nonnull %3, ptr noundef nonnull %4) #35
  %368 = add nuw nsw i64 %364, 1
  %369 = load i32, ptr %217, align 8, !tbaa !37
  %370 = zext i32 %369 to i64
  %371 = icmp ult i64 %368, %370
  br i1 %371, label %363, label %372, !llvm.loop !85

372:                                              ; preds = %363, %360
  store i32 0, ptr %217, align 8, !tbaa !37
  br label %218, !llvm.loop !86

373:                                              ; preds = %221, %125
  %374 = phi i32 [ 1, %125 ], [ 0, %221 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #32
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #32
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #32
  call void @llvm.lifetime.end.p0(i64 4160, ptr nonnull %4) #32
  call void @llvm.lifetime.end.p0(i64 4160, ptr nonnull %3) #32
  ret i32 %374
}

; Function Attrs: nounwind optsize
declare ptr @setlocale(i32 noundef, ptr noundef) local_unnamed_addr #15

; Function Attrs: noreturn nounwind optsize uwtable
define internal void @bug_handler(i32 noundef %0) #9 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !7
  %3 = tail call i32 @fflush(ptr noundef %2) #35
  %4 = load ptr, ptr @stderr, align 8, !tbaa !7
  %5 = tail call i32 @fflush(ptr noundef %4) #35
  %6 = load ptr, ptr @stderr, align 8, !tbaa !7
  %7 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef nonnull @.str.38, i32 noundef %0, ptr noundef nonnull @dna_seq_head, ptr noundef nonnull @rna_seq_head) #36
  tail call void @abort() #37
  unreachable
}

; Function Attrs: nounwind optsize
declare ptr @signal(i32 noundef, ptr noundef) local_unnamed_addr #15

; Function Attrs: nounwind optsize
declare i32 @getopt(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(read)
declare i32 @atoi(ptr nocapture noundef) local_unnamed_addr #18

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @init_seq(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 {
  store ptr %0, ptr %1, align 8, !tbaa !87
  %3 = getelementptr inbounds %struct._seq_t, ptr %1, i64 0, i32 1
  %4 = getelementptr inbounds %struct._seq_t, ptr %1, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %5 = tail call ptr @xmalloc(i64 noundef 4096) #33
  store ptr %5, ptr %4, align 8, !tbaa !88
  %6 = getelementptr inbounds %struct._seq_t, ptr %1, i64 0, i32 3, i32 1
  store i32 4096, ptr %6, align 8, !tbaa !89
  %7 = getelementptr inbounds %struct._seq_t, ptr %1, i64 0, i32 3, i32 2
  store i32 0, ptr %7, align 4, !tbaa !90
  %8 = getelementptr inbounds %struct._seq_t, ptr %1, i64 0, i32 3, i32 3
  store i32 0, ptr %8, align 8, !tbaa !91
  %9 = icmp eq ptr %0, null
  br i1 %9, label %19, label %10

10:                                               ; preds = %2
  %11 = tail call i32 (ptr, i32, ...) @open(ptr noundef nonnull %0, i32 noundef 0) #33
  %12 = getelementptr inbounds %struct._seq_t, ptr %1, i64 0, i32 4
  store i32 %11, ptr %12, align 8, !tbaa !92
  %13 = icmp eq i32 %11, -1
  br i1 %13, label %14, label %21

14:                                               ; preds = %10
  %15 = tail call ptr @__errno_location() #40
  %16 = load i32, ptr %15, align 4, !tbaa !19
  %17 = tail call ptr @strerror(i32 noundef %16) #33
  %18 = load i32, ptr %15, align 4, !tbaa !19
  tail call void (ptr, ...) @fatal(ptr noundef nonnull @.str.32, ptr noundef nonnull %0, ptr noundef %17, i32 noundef %18) #37
  unreachable

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct._seq_t, ptr %1, i64 0, i32 4
  store i32 0, ptr %20, align 8, !tbaa !92
  br label %21

21:                                               ; preds = %19, %10
  %22 = phi i32 [ %11, %10 ], [ 0, %19 ]
  %23 = getelementptr inbounds %struct._seq_t, ptr %1, i64 0, i32 5
  store i32 0, ptr %23, align 4, !tbaa !72
  %24 = getelementptr inbounds %struct._seq_t, ptr %1, i64 0, i32 6
  store i32 0, ptr %24, align 8, !tbaa !93
  %25 = getelementptr inbounds %struct._seq_t, ptr %1, i64 0, i32 7
  store i32 0, ptr %25, align 4, !tbaa !94
  %26 = tail call fastcc ptr @read_line_buf(ptr noundef nonnull %4, i32 noundef %22) #35
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @get_next_seq(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct._seq_t, ptr %0, i64 0, i32 3
  %5 = getelementptr inbounds %struct._seq_t, ptr %0, i64 0, i32 3, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !95
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %185, label %8

8:                                                ; preds = %3
  %9 = load ptr, ptr %4, align 8, !tbaa !96
  %10 = getelementptr inbounds %struct._seq_t, ptr %0, i64 0, i32 4
  %11 = load i8, ptr %9, align 1, !tbaa !16
  %12 = icmp eq i8 %11, 62
  br i1 %12, label %21, label %16

13:                                               ; preds = %16
  %14 = load i8, ptr %18, align 1, !tbaa !16
  %15 = icmp eq i8 %14, 62
  br i1 %15, label %21, label %16, !llvm.loop !97

16:                                               ; preds = %13, %8
  %17 = load i32, ptr %10, align 8, !tbaa !92
  %18 = tail call fastcc ptr @read_line_buf(ptr noundef nonnull %4, i32 noundef %17) #35
  %19 = load i32, ptr %5, align 4, !tbaa !95
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %185, label %13, !llvm.loop !97

21:                                               ; preds = %13, %8
  %22 = phi i32 [ %6, %8 ], [ %19, %13 ]
  %23 = phi ptr [ %9, %8 ], [ %18, %13 ]
  %24 = add i32 %22, 25
  %25 = getelementptr inbounds %struct._seq_t, ptr %0, i64 0, i32 6
  %26 = load i32, ptr %25, align 8, !tbaa !93
  %27 = icmp ugt i32 %24, %26
  br i1 %27, label %31, label %28

28:                                               ; preds = %21
  %29 = getelementptr inbounds %struct._seq_t, ptr %0, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !68
  br label %37

31:                                               ; preds = %21
  store i32 %24, ptr %25, align 8, !tbaa !93
  %32 = getelementptr inbounds %struct._seq_t, ptr %0, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !68
  %34 = zext i32 %24 to i64
  %35 = tail call ptr @xrealloc(ptr noundef %33, i64 noundef %34) #33
  store ptr %35, ptr %32, align 8, !tbaa !68
  %36 = load i32, ptr %5, align 4, !tbaa !95
  br label %37

37:                                               ; preds = %31, %28
  %38 = phi ptr [ %35, %31 ], [ %30, %28 ]
  %39 = phi i32 [ %36, %31 ], [ %22, %28 ]
  %40 = getelementptr inbounds %struct._seq_t, ptr %0, i64 0, i32 1
  %41 = add i32 %39, 1
  %42 = zext i32 %41 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %38, ptr nonnull align 1 %23, i64 %42, i1 false)
  %43 = getelementptr inbounds %struct._seq_t, ptr %0, i64 0, i32 5
  store i32 0, ptr %43, align 4, !tbaa !72
  %44 = load i32, ptr %10, align 8, !tbaa !92
  %45 = tail call fastcc ptr @read_line_buf(ptr noundef nonnull %4, i32 noundef %44) #35
  %46 = load i32, ptr %5, align 4, !tbaa !95
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %114, label %48

48:                                               ; preds = %37
  %49 = getelementptr inbounds %struct._seq_t, ptr %0, i64 0, i32 7
  %50 = getelementptr inbounds %struct._seq_t, ptr %0, i64 0, i32 2
  br label %51

51:                                               ; preds = %104, %48
  %52 = phi i32 [ %46, %48 ], [ %107, %104 ]
  %53 = phi ptr [ %45, %48 ], [ %106, %104 ]
  %54 = load i8, ptr %53, align 1, !tbaa !16
  %55 = icmp eq i8 %54, 62
  br i1 %55, label %109, label %56

56:                                               ; preds = %51
  %57 = load i32, ptr %43, align 4, !tbaa !72
  %58 = add i32 %52, 1
  %59 = add i32 %58, %57
  %60 = load i32, ptr %49, align 4, !tbaa !94
  %61 = icmp ugt i32 %59, %60
  br i1 %61, label %62, label %69

62:                                               ; preds = %56
  %63 = add i32 %60, 262144
  %64 = tail call i32 @llvm.umax.i32(i32 %59, i32 %63)
  store i32 %64, ptr %49, align 4, !tbaa !94
  %65 = load ptr, ptr %50, align 8, !tbaa !71
  %66 = zext i32 %64 to i64
  %67 = tail call ptr @xrealloc(ptr noundef %65, i64 noundef %66) #33
  store ptr %67, ptr %50, align 8, !tbaa !71
  %68 = load i8, ptr %53, align 1, !tbaa !16
  br label %69

69:                                               ; preds = %62, %56
  %70 = phi i8 [ %68, %62 ], [ %54, %56 ]
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %104, label %72

72:                                               ; preds = %69
  %73 = tail call ptr @__ctype_b_loc() #40
  br label %74

74:                                               ; preds = %101, %72
  %75 = phi i8 [ %70, %72 ], [ %102, %101 ]
  %76 = phi ptr [ %53, %72 ], [ %77, %101 ]
  %77 = getelementptr inbounds i8, ptr %76, i64 1
  %78 = load ptr, ptr %73, align 8, !tbaa !7
  %79 = zext i8 %75 to i64
  %80 = getelementptr inbounds i16, ptr %78, i64 %79
  %81 = load i16, ptr %80, align 2, !tbaa !98
  %82 = zext i16 %81 to i32
  %83 = and i32 %82, 256
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %94

85:                                               ; preds = %74
  %86 = and i32 %82, 512
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %101, label %88

88:                                               ; preds = %85
  %89 = tail call ptr @__ctype_toupper_loc() #40
  %90 = load ptr, ptr %89, align 8, !tbaa !7
  %91 = getelementptr inbounds i32, ptr %90, i64 %79
  %92 = load i32, ptr %91, align 4, !tbaa !19
  %93 = trunc i32 %92 to i8
  br label %94

94:                                               ; preds = %88, %74
  %95 = phi i8 [ %93, %88 ], [ %75, %74 ]
  %96 = load ptr, ptr %50, align 8, !tbaa !71
  %97 = load i32, ptr %43, align 4, !tbaa !72
  %98 = add i32 %97, 1
  store i32 %98, ptr %43, align 4, !tbaa !72
  %99 = zext i32 %97 to i64
  %100 = getelementptr inbounds i8, ptr %96, i64 %99
  store i8 %95, ptr %100, align 1, !tbaa !16
  br label %101

101:                                              ; preds = %94, %85
  %102 = load i8, ptr %77, align 1, !tbaa !16
  %103 = icmp eq i8 %102, 0
  br i1 %103, label %104, label %74, !llvm.loop !100

104:                                              ; preds = %101, %69
  %105 = load i32, ptr %10, align 8, !tbaa !92
  %106 = tail call fastcc ptr @read_line_buf(ptr noundef nonnull %4, i32 noundef %105) #35
  %107 = load i32, ptr %5, align 4, !tbaa !95
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %114, label %51, !llvm.loop !101

109:                                              ; preds = %51
  %110 = icmp eq i32 %2, 0
  br i1 %110, label %114, label %111

111:                                              ; preds = %109
  %112 = load ptr, ptr @stderr, align 8, !tbaa !7
  %113 = tail call i64 @fwrite(ptr nonnull @.str.34, i64 238, i64 1, ptr %112) #34
  br label %114

114:                                              ; preds = %111, %109, %104, %37
  %115 = getelementptr inbounds %struct._seq_t, ptr %0, i64 0, i32 2
  %116 = load ptr, ptr %115, align 8, !tbaa !71
  %117 = load i32, ptr %43, align 4, !tbaa !72
  %118 = zext i32 %117 to i64
  %119 = getelementptr inbounds i8, ptr %116, i64 %118
  store i8 0, ptr %119, align 1, !tbaa !16
  %120 = load ptr, ptr %40, align 8, !tbaa !68
  %121 = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %120, ptr noundef nonnull dereferenceable(1) @.str.35) #38
  %122 = icmp eq ptr %121, null
  br i1 %122, label %123, label %125

123:                                              ; preds = %114
  %124 = tail call ptr @__ctype_b_loc() #40
  br label %162

125:                                              ; preds = %114
  %126 = getelementptr inbounds i8, ptr %121, i64 6
  %127 = add i32 %39, -6
  %128 = tail call ptr @__ctype_b_loc() #40
  %129 = load ptr, ptr %128, align 8, !tbaa !7
  %130 = load i8, ptr %126, align 1, !tbaa !16
  %131 = sext i8 %130 to i64
  %132 = getelementptr inbounds i16, ptr %129, i64 %131
  %133 = load i16, ptr %132, align 2, !tbaa !98
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
  %146 = load i8, ptr %144, align 1, !tbaa !16
  %147 = sext i8 %146 to i64
  %148 = getelementptr inbounds i16, ptr %129, i64 %147
  %149 = load i16, ptr %148, align 2, !tbaa !98
  %150 = and i16 %149, 2048
  %151 = icmp eq i16 %150, 0
  br i1 %151, label %136, label %141, !llvm.loop !102

152:                                              ; preds = %152, %136
  %153 = phi i8 [ %158, %152 ], [ %137, %136 ]
  %154 = phi ptr [ %156, %152 ], [ %139, %136 ]
  %155 = phi ptr [ %157, %152 ], [ %121, %136 ]
  %156 = getelementptr inbounds i8, ptr %154, i64 1
  %157 = getelementptr inbounds i8, ptr %155, i64 1
  store i8 %153, ptr %155, align 1, !tbaa !16
  %158 = load i8, ptr %156, align 1, !tbaa !16
  %159 = icmp eq i8 %158, 0
  br i1 %159, label %160, label %152, !llvm.loop !103

160:                                              ; preds = %152
  %161 = load ptr, ptr %40, align 8, !tbaa !68
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
  %172 = load i8, ptr %171, align 1, !tbaa !16
  %173 = sext i8 %172 to i64
  %174 = getelementptr inbounds i16, ptr %168, i64 %173
  %175 = load i16, ptr %174, align 2, !tbaa !98
  %176 = and i16 %175, 8194
  %177 = icmp eq i16 %176, 0
  br i1 %177, label %178, label %169, !llvm.loop !104

178:                                              ; preds = %169
  %.lcssa = phi ptr [ %170, %169 ]
  %179 = load i32, ptr %43, align 4, !tbaa !72
  %180 = add i32 %179, %1
  %181 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %.lcssa, i64 noundef 24, ptr noundef nonnull @.str.36, i32 noundef %180) #33
  %182 = icmp ugt i32 %181, 23
  br i1 %182, label %183, label %185

183:                                              ; preds = %178
  %184 = load i32, ptr %43, align 4, !tbaa !72
  tail call void (ptr, ...) @fatal(ptr noundef nonnull @.str.37, i32 noundef %184) #37
  unreachable

185:                                              ; preds = %178, %16, %3
  %186 = phi i32 [ 0, %178 ], [ -1, %3 ], [ -1, %16 ]
  ret i32 %186
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i64 noundef) local_unnamed_addr #19

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @print_res(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) unnamed_addr #0 {
  %5 = alloca [51 x i8], align 16
  %6 = alloca [51 x i8], align 16
  %7 = getelementptr inbounds %struct._result_t, ptr %0, i64 0, i32 5
  %8 = load i32, ptr %7, align 4, !tbaa !77
  %9 = load i32, ptr getelementptr inbounds (%struct._options_t, ptr @options, i64 0, i32 17), align 4, !tbaa !56
  %10 = icmp ult i32 %8, %9
  br i1 %10, label %299, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct._seq_t, ptr %2, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !68
  %14 = getelementptr inbounds %struct._seq_t, ptr %3, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !68
  %16 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.20, ptr noundef %13, ptr noundef %15) #35
  %17 = icmp eq i32 %1, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %11
  %19 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %20

20:                                               ; preds = %18, %11
  %21 = load i32, ptr getelementptr inbounds (%struct._options_t, ptr @options, i64 0, i32 3), align 4, !tbaa !57
  switch i32 %21, label %296 [
    i32 0, label %22
    i32 1, label %26
    i32 3, label %31
    i32 4, label %39
  ]

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct._result_t, ptr %0, i64 0, i32 1
  %24 = getelementptr inbounds %struct._result_t, ptr %0, i64 0, i32 4
  %25 = load i32, ptr %24, align 8, !tbaa !105
  tail call void @print_exons(ptr noundef nonnull %23, i32 noundef %25) #33
  br label %297

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct._seq_t, ptr %2, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !71
  %29 = getelementptr inbounds %struct._seq_t, ptr %3, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !71
  tail call fastcc void @print_align_lat(ptr noundef %28, ptr noundef %30, ptr noundef nonnull %0) #35
  br label %297

31:                                               ; preds = %20
  %32 = getelementptr inbounds %struct._result_t, ptr %0, i64 0, i32 1
  %33 = getelementptr inbounds %struct._result_t, ptr %0, i64 0, i32 4
  %34 = load i32, ptr %33, align 8, !tbaa !105
  tail call void @print_exons(ptr noundef nonnull %32, i32 noundef %34) #33
  %35 = getelementptr inbounds %struct._seq_t, ptr %2, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !71
  %37 = getelementptr inbounds %struct._seq_t, ptr %3, i64 0, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !71
  tail call fastcc void @print_align_lat(ptr noundef %36, ptr noundef %38, ptr noundef nonnull %0) #35
  br label %297

39:                                               ; preds = %20
  %40 = getelementptr inbounds %struct._result_t, ptr %0, i64 0, i32 1
  %41 = getelementptr inbounds %struct._result_t, ptr %0, i64 0, i32 4
  %42 = load i32, ptr %41, align 8, !tbaa !105
  tail call void @print_exons(ptr noundef nonnull %40, i32 noundef %42) #33
  %43 = getelementptr inbounds %struct._result_t, ptr %0, i64 0, i32 5, i32 1
  %44 = load i32, ptr %43, align 4, !tbaa !106
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %174, label %46

46:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 51, ptr nonnull %5) #32
  %47 = load ptr, ptr %40, align 8, !tbaa !16
  %48 = getelementptr inbounds %struct._result_t, ptr %0, i64 0, i32 1, i32 1
  %49 = load i32, ptr %48, align 8, !tbaa !37
  %50 = add i32 %49, -1
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds ptr, ptr %47, i64 %51
  %53 = load ptr, ptr %52, align 8, !tbaa !7
  %54 = getelementptr inbounds %struct._exon_t, ptr %53, i64 0, i32 3
  %55 = load i32, ptr %54, align 4, !tbaa !107
  %56 = getelementptr inbounds %struct._seq_t, ptr %3, i64 0, i32 5
  %57 = load i32, ptr %56, align 4, !tbaa !72
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
  %69 = load ptr, ptr %58, align 8, !tbaa !71
  %70 = getelementptr inbounds i8, ptr %69, i64 %68
  %71 = load i8, ptr %70, align 1, !tbaa !16
  %72 = icmp eq i8 %71, 65
  %73 = zext i1 %72 to i32
  %74 = add i32 %65, %73
  %75 = add nuw nsw i64 %64, 1
  %76 = icmp eq i64 %75, 10
  br i1 %76, label %77, label %63, !llvm.loop !108

77:                                               ; preds = %67, %63
  %78 = phi i64 [ 10, %67 ], [ %62, %63 ]
  %79 = phi i32 [ %74, %67 ], [ %65, %63 ]
  %80 = trunc i64 %78 to i32
  %81 = add i32 %55, %80
  %82 = icmp ult i32 %81, %57
  br i1 %82, label %83, label %99

83:                                               ; preds = %77
  %84 = load ptr, ptr %58, align 8, !tbaa !71
  %85 = sub i32 %57, %55
  br label %86

86:                                               ; preds = %94, %83
  %87 = phi i32 [ %81, %83 ], [ %97, %94 ]
  %88 = phi i32 [ %79, %83 ], [ %96, %94 ]
  %89 = phi i32 [ %80, %83 ], [ %95, %94 ]
  %90 = zext i32 %87 to i64
  %91 = getelementptr inbounds i8, ptr %84, i64 %90
  %92 = load i8, ptr %91, align 1, !tbaa !16
  %93 = icmp eq i8 %92, 65
  br i1 %93, label %94, label %99

94:                                               ; preds = %86
  %95 = add i32 %89, 1
  %96 = add i32 %88, 1
  %97 = add i32 %95, %55
  %98 = icmp ult i32 %97, %57
  br i1 %98, label %86, label %99, !llvm.loop !109

99:                                               ; preds = %94, %86, %77
  %100 = phi i32 [ %80, %77 ], [ %89, %86 ], [ %85, %94 ]
  %101 = phi i32 [ %79, %77 ], [ %88, %86 ], [ %96, %94 ]
  %102 = getelementptr inbounds %struct._seq_t, ptr %2, i64 0, i32 5
  %103 = load i32, ptr %102, align 4, !tbaa !72
  %104 = tail call i32 @llvm.umin.i32(i32 %100, i32 %103)
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %99
  %107 = getelementptr inbounds %struct._exon_t, ptr %53, i64 0, i32 2
  %108 = load i32, ptr %107, align 4, !tbaa !39
  %109 = getelementptr inbounds %struct._seq_t, ptr %2, i64 0, i32 2
  %110 = load ptr, ptr %109, align 8, !tbaa !71
  br label %130

111:                                              ; preds = %99
  %112 = getelementptr inbounds %struct._seq_t, ptr %2, i64 0, i32 2
  %113 = load ptr, ptr %112, align 8, !tbaa !71
  %114 = getelementptr inbounds %struct._exon_t, ptr %53, i64 0, i32 2
  %115 = load i32, ptr %114, align 4, !tbaa !39
  %116 = zext i32 %104 to i64
  br label %117

117:                                              ; preds = %117, %111
  %118 = phi i64 [ 0, %111 ], [ %128, %117 ]
  %119 = phi i32 [ 0, %111 ], [ %127, %117 ]
  %120 = trunc i64 %118 to i32
  %121 = add i32 %115, %120
  %122 = zext i32 %121 to i64
  %123 = getelementptr inbounds i8, ptr %113, i64 %122
  %124 = load i8, ptr %123, align 1, !tbaa !16
  %125 = icmp eq i8 %124, 65
  %126 = zext i1 %125 to i32
  %127 = add i32 %119, %126
  %128 = add nuw nsw i64 %118, 1
  %129 = icmp eq i64 %128, %116
  br i1 %129, label %130, label %117, !llvm.loop !110

130:                                              ; preds = %117, %106
  %131 = phi ptr [ %110, %106 ], [ %113, %117 ]
  %132 = phi i32 [ %108, %106 ], [ %115, %117 ]
  %133 = phi i32 [ 0, %106 ], [ %127, %117 ]
  %134 = getelementptr inbounds %struct._exon_t, ptr %53, i64 0, i32 2
  %135 = add i32 %132, 1
  %136 = load i32, ptr getelementptr inbounds (%struct._options_t, ptr @options, i64 0, i32 15), align 4, !tbaa !41
  %137 = add i32 %135, %136
  %138 = load ptr, ptr %58, align 8, !tbaa !71
  %139 = getelementptr inbounds i8, ptr %138, i64 %59
  %140 = add i32 %55, 1
  %141 = getelementptr inbounds %struct._seq_t, ptr %2, i64 0, i32 2
  %142 = zext i32 %132 to i64
  %143 = getelementptr inbounds i8, ptr %131, i64 %142
  %144 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.24, i32 noundef %100, i32 noundef %101, i32 noundef %133, i32 noundef %137, i32 noundef %100, ptr noundef %139, i32 noundef %140, i32 noundef %100, i32 noundef %104, ptr noundef %143, i32 noundef %137) #35
  %145 = load i32, ptr %134, align 4, !tbaa !39
  %146 = zext i32 %145 to i64
  %147 = tail call i32 @llvm.umin.i32(i32 %145, i32 50)
  %148 = zext i32 %147 to i64
  %149 = sub nsw i64 0, %148
  %150 = load ptr, ptr %141, align 8, !tbaa !71
  %151 = getelementptr inbounds i8, ptr %150, i64 %146
  %152 = getelementptr inbounds i8, ptr %151, i64 %149
  %153 = call ptr @strncpy(ptr noundef nonnull %5, ptr noundef %152, i64 noundef %148) #33
  %154 = getelementptr inbounds [51 x i8], ptr %5, i64 0, i64 %148
  store i8 0, ptr %154, align 1, !tbaa !16
  %155 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) @.str.25) #38
  %156 = icmp eq ptr %155, null
  br i1 %156, label %157, label %160

157:                                              ; preds = %130
  %158 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) @.str.26) #38
  %159 = icmp eq ptr %158, null
  br i1 %159, label %173, label %160

160:                                              ; preds = %157, %130
  %161 = phi ptr [ %158, %157 ], [ %155, %130 ]
  %162 = ptrtoint ptr %161 to i64
  %163 = ptrtoint ptr %5 to i64
  %164 = load i32, ptr %134, align 4, !tbaa !39
  %165 = add i64 %148, %163
  %166 = sub i64 %162, %165
  %167 = load i32, ptr getelementptr inbounds (%struct._options_t, ptr @options, i64 0, i32 15), align 4, !tbaa !41
  %168 = trunc i64 %166 to i32
  %169 = add i32 %164, 1
  %170 = add i32 %169, %167
  %171 = add i32 %170, %168
  %172 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.27, i32 noundef %171) #35
  br label %173

173:                                              ; preds = %160, %157
  call void @llvm.lifetime.end.p0(i64 51, ptr nonnull %5) #32
  br label %174

174:                                              ; preds = %173, %39
  %175 = getelementptr inbounds %struct._result_t, ptr %0, i64 0, i32 5, i32 2
  %176 = load i32, ptr %175, align 4, !tbaa !111
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %291, label %178

178:                                              ; preds = %174
  call void @llvm.lifetime.start.p0(i64 51, ptr nonnull %6) #32
  %179 = load ptr, ptr %40, align 8, !tbaa !16
  %180 = load ptr, ptr %179, align 8, !tbaa !7
  %181 = getelementptr inbounds %struct._exon_t, ptr %180, i64 0, i32 1
  %182 = load i32, ptr %181, align 4, !tbaa !45
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
  %194 = load ptr, ptr %184, align 8, !tbaa !71
  %195 = trunc i64 %190 to i32
  %196 = sub i32 %188, %195
  %197 = zext i32 %196 to i64
  %198 = getelementptr inbounds i8, ptr %194, i64 %197
  %199 = load i8, ptr %198, align 1, !tbaa !16
  %200 = icmp eq i8 %199, 84
  %201 = zext i1 %200 to i32
  %202 = add i32 %191, %201
  %203 = add nuw nsw i64 %190, 1
  %204 = icmp eq i64 %203, 10
  br i1 %204, label %205, label %189, !llvm.loop !112

205:                                              ; preds = %193, %189
  %206 = phi i32 [ %202, %193 ], [ %191, %189 ]
  %207 = phi i32 [ %186, %193 ], [ %185, %189 ]
  %208 = icmp ult i32 %207, %183
  br i1 %208, label %209, label %229

209:                                              ; preds = %205
  %210 = load ptr, ptr %184, align 8, !tbaa !71
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
  %222 = load i8, ptr %221, align 1, !tbaa !16
  %223 = icmp eq i8 %222, 84
  br i1 %223, label %224, label %229

224:                                              ; preds = %215
  %225 = add nuw nsw i64 %216, 1
  %226 = add i32 %217, 1
  %227 = trunc i64 %225 to i32
  %228 = icmp eq i32 %183, %227
  br i1 %228, label %229, label %215, !llvm.loop !113

229:                                              ; preds = %224, %215, %205
  %230 = phi i32 [ %206, %205 ], [ %217, %215 ], [ %214, %224 ]
  %231 = phi i32 [ %207, %205 ], [ %218, %215 ], [ %183, %224 ]
  %232 = load i32, ptr %180, align 4, !tbaa !44
  %233 = add i32 %232, -1
  %234 = call i32 @llvm.umin.i32(i32 %231, i32 %233)
  %235 = icmp eq i32 %234, 0
  %236 = getelementptr inbounds %struct._seq_t, ptr %2, i64 0, i32 2
  %237 = load ptr, ptr %236, align 8, !tbaa !71
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
  %248 = load i8, ptr %247, align 1, !tbaa !16
  %249 = icmp eq i8 %248, 84
  %250 = zext i1 %249 to i32
  %251 = add i32 %243, %250
  %252 = add nuw nsw i64 %242, 1
  %253 = icmp eq i64 %252, %239
  br i1 %253, label %254, label %241, !llvm.loop !114

254:                                              ; preds = %241, %229
  %255 = phi i32 [ 0, %229 ], [ %251, %241 ]
  %256 = load i32, ptr getelementptr inbounds (%struct._options_t, ptr @options, i64 0, i32 15), align 4, !tbaa !41
  %257 = add i32 %256, %233
  %258 = load ptr, ptr %184, align 8, !tbaa !71
  %259 = sub i32 %183, %231
  %260 = zext i32 %259 to i64
  %261 = getelementptr inbounds i8, ptr %258, i64 %260
  %262 = sub i32 %233, %234
  %263 = zext i32 %262 to i64
  %264 = getelementptr inbounds i8, ptr %237, i64 %263
  %265 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.28, i32 noundef %231, i32 noundef %230, i32 noundef %255, i32 noundef %257, i32 noundef %231, ptr noundef %261, i32 noundef %183, i32 noundef %231, i32 noundef %234, ptr noundef %264, i32 noundef %257) #35
  %266 = load ptr, ptr %236, align 8, !tbaa !71
  %267 = load i32, ptr %180, align 4, !tbaa !44
  %268 = zext i32 %267 to i64
  %269 = getelementptr inbounds i8, ptr %266, i64 %268
  %270 = getelementptr inbounds i8, ptr %269, i64 -1
  %271 = call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(1) %270, i64 noundef 50) #33
  %272 = getelementptr inbounds [51 x i8], ptr %6, i64 0, i64 50
  store i8 0, ptr %272, align 2, !tbaa !16
  %273 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(1) @.str.29) #38
  %274 = icmp eq ptr %273, null
  br i1 %274, label %275, label %278

275:                                              ; preds = %254
  %276 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(1) @.str.30) #38
  %277 = icmp eq ptr %276, null
  br i1 %277, label %290, label %278

278:                                              ; preds = %275, %254
  %279 = phi ptr [ %276, %275 ], [ %273, %254 ]
  %280 = ptrtoint ptr %279 to i64
  %281 = ptrtoint ptr %6 to i64
  %282 = sub i64 %280, %281
  %283 = load i32, ptr %180, align 4, !tbaa !44
  %284 = load i32, ptr getelementptr inbounds (%struct._options_t, ptr @options, i64 0, i32 15), align 4, !tbaa !41
  %285 = trunc i64 %282 to i32
  %286 = add i32 %283, 5
  %287 = add i32 %286, %284
  %288 = add i32 %287, %285
  %289 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.31, i32 noundef %288) #35
  br label %290

290:                                              ; preds = %278, %275
  call void @llvm.lifetime.end.p0(i64 51, ptr nonnull %6) #32
  br label %291

291:                                              ; preds = %290, %174
  %292 = getelementptr inbounds %struct._seq_t, ptr %2, i64 0, i32 2
  %293 = load ptr, ptr %292, align 8, !tbaa !71
  %294 = getelementptr inbounds %struct._seq_t, ptr %3, i64 0, i32 2
  %295 = load ptr, ptr %294, align 8, !tbaa !71
  call fastcc void @print_align_lat(ptr noundef %293, ptr noundef %295, ptr noundef %0) #35
  br label %297

296:                                              ; preds = %20
  tail call void (ptr, ...) @fatal(ptr noundef nonnull @.str.22) #37
  unreachable

297:                                              ; preds = %291, %31, %26, %22
  %298 = call i32 @putchar(i32 10)
  br label %299

299:                                              ; preds = %297, %4
  %300 = getelementptr inbounds %struct._result_t, ptr %0, i64 0, i32 1
  %301 = getelementptr inbounds %struct._result_t, ptr %0, i64 0, i32 1, i32 1
  %302 = load i32, ptr %301, align 8, !tbaa !115
  %303 = icmp eq i32 %302, 0
  br i1 %303, label %313, label %304

304:                                              ; preds = %304, %299
  %305 = phi i64 [ %309, %304 ], [ 0, %299 ]
  %306 = load ptr, ptr %300, align 8, !tbaa !16
  %307 = getelementptr inbounds ptr, ptr %306, i64 %305
  %308 = load ptr, ptr %307, align 8, !tbaa !7
  call void @free(ptr noundef %308) #33
  %309 = add nuw nsw i64 %305, 1
  %310 = load i32, ptr %301, align 8, !tbaa !115
  %311 = zext i32 %310 to i64
  %312 = icmp ult i64 %309, %311
  br i1 %312, label %304, label %313, !llvm.loop !116

313:                                              ; preds = %304, %299
  %314 = load ptr, ptr %300, align 8, !tbaa !16
  call void @free(ptr noundef %314) #33
  %315 = load ptr, ptr %0, align 8, !tbaa !117
  %316 = icmp eq ptr %315, null
  br i1 %316, label %318, label %317

317:                                              ; preds = %313
  call void @free_align(ptr noundef nonnull %315) #33
  br label %318

318:                                              ; preds = %317, %313
  call void @free(ptr noundef nonnull %0) #33
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #2

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @print_align_lat(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = load ptr, ptr %2, align 8, !tbaa !117
  %5 = icmp eq ptr %4, null
  br i1 %5, label %39, label %6

6:                                                ; preds = %3
  %7 = getelementptr i8, ptr %0, i64 -2
  %8 = getelementptr i8, ptr %1, i64 -2
  %9 = getelementptr inbounds %struct._result_t, ptr %2, i64 0, i32 1
  %10 = getelementptr inbounds %struct._result_t, ptr %2, i64 0, i32 4
  br label %11

11:                                               ; preds = %11, %6
  %12 = phi ptr [ %4, %6 ], [ %13, %11 ]
  %13 = load ptr, ptr %12, align 8, !tbaa !118
  %14 = getelementptr inbounds %struct._edit_script_list, ptr %12, i64 0, i32 5
  %15 = load i32, ptr %14, align 4, !tbaa !120
  %16 = shl i32 %15, 1
  %17 = add i32 %16, 2
  %18 = zext i32 %17 to i64
  %19 = shl nuw nsw i64 %18, 2
  %20 = tail call ptr @xmalloc(i64 noundef %19) #33
  %21 = getelementptr inbounds i32, ptr %20, i64 1
  %22 = getelementptr inbounds %struct._edit_script_list, ptr %12, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !121
  tail call void @S2A(ptr noundef %23, ptr noundef nonnull %21, i32 noundef 0) #33
  %24 = load ptr, ptr %22, align 8, !tbaa !121
  tail call void @Free_script(ptr noundef %24) #33
  %25 = getelementptr inbounds %struct._edit_script_list, ptr %12, i64 0, i32 2
  %26 = load i32, ptr %25, align 8, !tbaa !122
  %27 = zext i32 %26 to i64
  %28 = getelementptr i8, ptr %7, i64 %27
  %29 = getelementptr inbounds %struct._edit_script_list, ptr %12, i64 0, i32 3
  %30 = load i32, ptr %29, align 4, !tbaa !123
  %31 = zext i32 %30 to i64
  %32 = getelementptr i8, ptr %8, i64 %31
  %33 = getelementptr inbounds %struct._edit_script_list, ptr %12, i64 0, i32 4
  %34 = load i32, ptr %33, align 8, !tbaa !124
  %35 = load i32, ptr %14, align 4, !tbaa !120
  %36 = load i32, ptr %10, align 8, !tbaa !105
  tail call void @IDISPLAY(ptr noundef nonnull %28, ptr noundef nonnull %32, i32 noundef %34, i32 noundef %35, ptr noundef nonnull %21, i32 noundef %26, i32 noundef %30, ptr noundef nonnull %9, i32 noundef %36) #33
  tail call void @free(ptr noundef %20) #33
  tail call void @free(ptr noundef nonnull %12) #33
  %37 = icmp eq ptr %13, null
  br i1 %37, label %38, label %11, !llvm.loop !125

38:                                               ; preds = %11
  store ptr null, ptr %2, align 8, !tbaa !117
  br label %39

39:                                               ; preds = %38, %3
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind optsize uwtable
define internal fastcc ptr @read_line_buf(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #32
  store i64 0, ptr %3, align 8, !tbaa !126
  %4 = getelementptr inbounds %struct._read_buf_t, ptr %0, i64 0, i32 2
  store i32 0, ptr %4, align 4, !tbaa !90
  %5 = call fastcc ptr @shuffle_line(ptr noundef %0, ptr noundef nonnull %3) #35
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %43

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct._read_buf_t, ptr %0, i64 0, i32 4
  %9 = getelementptr inbounds %struct._read_buf_t, ptr %0, i64 0, i32 3
  br label %10

10:                                               ; preds = %40, %7
  %11 = load i32, ptr %9, align 8, !tbaa !91
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds i8, ptr %8, i64 %12
  %14 = sub i32 4095, %11
  %15 = zext i32 %14 to i64
  %16 = tail call i64 @read(i32 noundef %1, ptr noundef nonnull %13, i64 noundef %15) #33
  %17 = icmp eq i64 %16, -1
  br i1 %17, label %18, label %25

18:                                               ; preds = %10
  %19 = tail call ptr @__errno_location() #40
  %20 = load i32, ptr %19, align 4, !tbaa !19
  %21 = icmp eq i32 %20, 4
  br i1 %21, label %29, label %22

22:                                               ; preds = %18
  %.lcssa1 = phi ptr [ %19, %18 ]
  %.lcssa = phi i32 [ %20, %18 ]
  %23 = tail call ptr @strerror(i32 noundef %.lcssa) #33
  %24 = load i32, ptr %.lcssa1, align 4, !tbaa !19
  tail call void (ptr, ...) @fatal(ptr noundef nonnull @.str.33, i32 noundef %1, ptr noundef %23, i32 noundef %24) #37
  unreachable

25:                                               ; preds = %10
  %26 = load i32, ptr %9, align 8, !tbaa !91
  %27 = trunc i64 %16 to i32
  %28 = add i32 %26, %27
  store i32 %28, ptr %9, align 8, !tbaa !91
  br label %29

29:                                               ; preds = %25, %18
  %30 = call fastcc ptr @shuffle_line(ptr noundef nonnull %0, ptr noundef nonnull %3) #35
  %31 = icmp eq ptr %30, null
  %32 = icmp eq i64 %16, 0
  %33 = and i1 %32, %31
  br i1 %33, label %34, label %40

34:                                               ; preds = %29
  %35 = load ptr, ptr %0, align 8, !tbaa !88
  %36 = load i32, ptr %4, align 4, !tbaa !90
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds i8, ptr %35, i64 %37
  store i8 0, ptr %38, align 1, !tbaa !16
  %39 = load ptr, ptr %0, align 8, !tbaa !88
  br label %40

40:                                               ; preds = %34, %29
  %41 = phi ptr [ %39, %34 ], [ %30, %29 ]
  %42 = icmp eq ptr %41, null
  br i1 %42, label %10, label %43, !llvm.loop !128

43:                                               ; preds = %40, %2
  %44 = phi ptr [ %5, %2 ], [ %41, %40 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #32
  ret ptr %44
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #20

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #14

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare ptr @__ctype_toupper_loc() local_unnamed_addr #14

; Function Attrs: nofree nounwind optsize
declare noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i64 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: nounwind optsize uwtable
define internal fastcc ptr @shuffle_line(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._read_buf_t, ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !91
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %69, label %6

6:                                                ; preds = %2
  %7 = load i64, ptr %1, align 8, !tbaa !126
  %8 = zext i32 %4 to i64
  %9 = icmp ult i64 %7, %8
  br i1 %9, label %10, label %69

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct._read_buf_t, ptr %0, i64 0, i32 1
  %12 = load i32, ptr %11, align 8, !tbaa !89
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds %struct._read_buf_t, ptr %0, i64 0, i32 2
  %15 = load i32, ptr %14, align 4, !tbaa !90
  %16 = zext i32 %15 to i64
  %17 = sub i64 %8, %7
  %18 = add nsw i64 %17, %16
  %19 = icmp ult i64 %18, %13
  br i1 %19, label %28, label %20

20:                                               ; preds = %10
  %21 = add i32 %12, 4096
  store i32 %21, ptr %11, align 8, !tbaa !89
  %22 = load ptr, ptr %0, align 8, !tbaa !88
  %23 = zext i32 %21 to i64
  %24 = tail call ptr @xrealloc(ptr noundef %22, i64 noundef %23) #33
  store ptr %24, ptr %0, align 8, !tbaa !88
  %25 = load i64, ptr %1, align 8, !tbaa !126
  %26 = load i32, ptr %3, align 8, !tbaa !91
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
  %35 = load i8, ptr %34, align 1, !tbaa !16
  %36 = icmp eq i8 %35, 10
  %37 = add nuw nsw i64 %33, 1
  store i64 %37, ptr %1, align 8, !tbaa !126
  %38 = load i8, ptr %34, align 1, !tbaa !16
  %39 = load ptr, ptr %0, align 8, !tbaa !88
  %40 = load i32, ptr %14, align 4, !tbaa !90
  %41 = add i32 %40, 1
  store i32 %41, ptr %14, align 4, !tbaa !90
  %42 = zext i32 %40 to i64
  %43 = getelementptr inbounds i8, ptr %39, i64 %42
  store i8 %38, ptr %43, align 1, !tbaa !16
  br i1 %36, label %49, label %44

44:                                               ; preds = %32
  %45 = load i64, ptr %1, align 8, !tbaa !126
  %46 = load i32, ptr %3, align 8, !tbaa !91
  %47 = zext i32 %46 to i64
  %48 = icmp ult i64 %45, %47
  br i1 %48, label %32, label %68, !llvm.loop !129

49:                                               ; preds = %32
  %50 = load ptr, ptr %0, align 8, !tbaa !88
  %51 = load i32, ptr %14, align 4, !tbaa !90
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds i8, ptr %50, i64 %52
  store i8 0, ptr %53, align 1, !tbaa !16
  %54 = load i64, ptr %1, align 8, !tbaa !126
  %55 = load i32, ptr %3, align 8, !tbaa !91
  %56 = zext i32 %55 to i64
  %57 = icmp ult i64 %54, %56
  br i1 %57, label %58, label %65

58:                                               ; preds = %49
  %59 = getelementptr inbounds %struct._read_buf_t, ptr %0, i64 0, i32 4
  %60 = getelementptr inbounds i8, ptr %59, i64 %54
  %61 = sub nsw i64 %56, %54
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %59, ptr nonnull align 1 %60, i64 %61, i1 false)
  %62 = load i64, ptr %1, align 8, !tbaa !126
  %63 = trunc i64 %62 to i32
  %64 = sub i32 %55, %63
  br label %65

65:                                               ; preds = %58, %49
  %66 = phi i32 [ %64, %58 ], [ 0, %49 ]
  store i32 %66, ptr %3, align 8, !tbaa !91
  store i64 0, ptr %1, align 8, !tbaa !126
  %67 = load ptr, ptr %0, align 8, !tbaa !88
  br label %69

68:                                               ; preds = %44, %28
  store i32 0, ptr %3, align 8, !tbaa !91
  store i64 0, ptr %1, align 8, !tbaa !126
  br label %69

69:                                               ; preds = %68, %65, %6, %2
  %70 = phi ptr [ %67, %65 ], [ null, %68 ], [ null, %6 ], [ null, %2 ]
  ret ptr %70
}

; Function Attrs: nofree optsize
declare noundef i64 @read(i32 noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #21

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #20

; Function Attrs: nofree optsize
declare noundef i32 @open(ptr nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #21

; Function Attrs: noreturn nounwind optsize
declare void @abort() local_unnamed_addr #12

; Function Attrs: nounwind optsize uwtable
define internal void @SIM4(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) #0 {
  %4 = alloca %struct._exon_t, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca %struct._splice_score_t, align 4
  %9 = alloca %struct._splice_score_t, align 8
  %10 = alloca %struct._splice_score_t, align 8
  %11 = alloca %struct._collec_t, align 8
  %12 = alloca %struct._collec_t, align 8
  %13 = alloca %struct._hash_env_t, align 8
  %14 = alloca %struct._hash_env_t, align 8
  %15 = alloca %struct._hash_env_t, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #32
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %12) #32
  %16 = getelementptr inbounds %struct._hash_env_t, ptr %0, i64 0, i32 2
  %17 = load i32, ptr %16, align 8, !tbaa !130
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %2769, label %19

19:                                               ; preds = %3
  %20 = getelementptr inbounds %struct._seq_t, ptr %1, i64 0, i32 5
  %21 = load i32, ptr %20, align 4, !tbaa !72
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %2769, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._collec_t, ptr %11, i64 0, i32 2
  store i32 5, ptr %24, align 4, !tbaa !132
  %25 = getelementptr inbounds %struct._collec_t, ptr %11, i64 0, i32 1
  store i32 0, ptr %25, align 8, !tbaa !37
  %26 = tail call ptr @xmalloc(i64 noundef 40) #33
  store ptr %26, ptr %11, align 8, !tbaa !16
  %27 = getelementptr inbounds %struct._seq_t, ptr %1, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !71
  %29 = load i32, ptr %20, align 4, !tbaa !72
  %30 = load i32, ptr getelementptr inbounds (%struct._options_t, ptr @options, i64 0, i32 8), align 8, !tbaa !62
  call fastcc void @exon_cores(ptr noundef nonnull %0, ptr noundef %28, i32 noundef %29, i32 noundef 1, i32 noundef 1, i32 noundef %30, ptr noundef nonnull %11, ptr noundef %2, ptr noundef null) #35
  %31 = getelementptr inbounds %struct._collec_t, ptr %12, i64 0, i32 2
  %32 = getelementptr inbounds %struct._collec_t, ptr %12, i64 0, i32 1
  %33 = getelementptr inbounds %struct._collec_t, ptr %2, i64 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %12, i8 0, i64 16, i1 false)
  %34 = load i32, ptr %33, align 8, !tbaa !37
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %2766, label %36

36:                                               ; preds = %23
  %37 = getelementptr inbounds %struct._hash_env_t, ptr %0, i64 0, i32 1
  %38 = getelementptr inbounds %struct._hash_env_t, ptr %0, i64 0, i32 5
  %39 = getelementptr inbounds %struct._hash_env_t, ptr %13, i64 0, i32 5
  %40 = getelementptr inbounds %struct._hash_env_t, ptr %13, i64 0, i32 1
  %41 = getelementptr inbounds %struct._hash_env_t, ptr %13, i64 0, i32 2
  %42 = getelementptr inbounds %struct._hash_env_t, ptr %13, i64 0, i32 4
  %43 = getelementptr inbounds %struct._hash_env_t, ptr %13, i64 0, i32 3
  %44 = getelementptr inbounds %struct._hash_env_t, ptr %14, i64 0, i32 5
  %45 = getelementptr inbounds %struct._hash_env_t, ptr %14, i64 0, i32 1
  %46 = getelementptr inbounds %struct._hash_env_t, ptr %14, i64 0, i32 2
  %47 = getelementptr inbounds %struct._hash_env_t, ptr %14, i64 0, i32 4
  %48 = getelementptr inbounds %struct._hash_env_t, ptr %14, i64 0, i32 3
  %49 = getelementptr inbounds %struct._hash_env_t, ptr %15, i64 0, i32 5
  %50 = getelementptr inbounds %struct._hash_env_t, ptr %15, i64 0, i32 1
  %51 = getelementptr inbounds %struct._hash_env_t, ptr %15, i64 0, i32 2
  %52 = getelementptr inbounds %struct._hash_env_t, ptr %15, i64 0, i32 4
  %53 = getelementptr inbounds %struct._hash_env_t, ptr %15, i64 0, i32 3
  %54 = getelementptr inbounds %struct._splice_score_t, ptr %8, i64 0, i32 1
  %55 = getelementptr inbounds %struct._splice_score_t, ptr %8, i64 0, i32 2
  %56 = getelementptr inbounds %struct._splice_score_t, ptr %8, i64 0, i32 6
  %57 = getelementptr inbounds %struct._splice_score_t, ptr %8, i64 0, i32 3
  %58 = getelementptr inbounds %struct._splice_score_t, ptr %9, i64 0, i32 2
  %59 = getelementptr inbounds %struct._splice_score_t, ptr %9, i64 0, i32 4
  %60 = getelementptr inbounds %struct._splice_score_t, ptr %9, i64 0, i32 5
  %61 = getelementptr inbounds %struct._splice_score_t, ptr %9, i64 0, i32 3
  %62 = getelementptr inbounds i8, ptr %9, i64 24
  %63 = getelementptr inbounds %struct._splice_score_t, ptr %10, i64 0, i32 1
  %64 = getelementptr inbounds %struct._splice_score_t, ptr %10, i64 0, i32 2
  %65 = getelementptr inbounds %struct._splice_score_t, ptr %10, i64 0, i32 4
  %66 = getelementptr inbounds %struct._splice_score_t, ptr %10, i64 0, i32 5
  %67 = getelementptr inbounds %struct._splice_score_t, ptr %10, i64 0, i32 3
  %68 = getelementptr inbounds i8, ptr %10, i64 24
  %69 = getelementptr inbounds %struct._exon_t, ptr %4, i64 0, i32 1
  %70 = getelementptr inbounds %struct._exon_t, ptr %4, i64 0, i32 2
  %71 = getelementptr inbounds %struct._exon_t, ptr %4, i64 0, i32 3
  br label %72

72:                                               ; preds = %2761, %36
  %73 = phi i64 [ 0, %36 ], [ %2762, %2761 ]
  %74 = load ptr, ptr %2, align 8, !tbaa !16
  %75 = getelementptr inbounds ptr, ptr %74, i64 %73
  %76 = load ptr, ptr %75, align 8, !tbaa !7
  %77 = getelementptr inbounds %struct._result_t, ptr %76, i64 0, i32 1
  %78 = getelementptr inbounds %struct._result_t, ptr %76, i64 0, i32 5
  %79 = getelementptr inbounds %struct._result_t, ptr %76, i64 0, i32 5, i32 1
  store i32 0, ptr %79, align 4, !tbaa !106
  %80 = getelementptr inbounds %struct._result_t, ptr %76, i64 0, i32 5, i32 2
  store i32 0, ptr %80, align 4, !tbaa !111
  %81 = load ptr, ptr %37, align 8, !tbaa !133
  %82 = load ptr, ptr %27, align 8, !tbaa !71
  call fastcc void @kill_polyA(ptr noundef %76, ptr noundef %81, ptr noundef %82) #35
  %83 = getelementptr inbounds %struct._result_t, ptr %76, i64 0, i32 1, i32 1
  %84 = load i32, ptr %83, align 8, !tbaa !37
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %2761, label %86

86:                                               ; preds = %72
  %87 = load i32, ptr %80, align 4, !tbaa !111
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %555

89:                                               ; preds = %86
  %90 = load ptr, ptr %77, align 8, !tbaa !16
  %91 = load ptr, ptr %90, align 8, !tbaa !7
  %92 = getelementptr inbounds %struct._exon_t, ptr %91, i64 0, i32 1
  %93 = load i32, ptr %92, align 4, !tbaa !45
  %94 = icmp ugt i32 %93, 1
  br i1 %94, label %95, label %555

95:                                               ; preds = %89
  %96 = add i32 %93, -62
  %97 = icmp ult i32 %96, -61
  br i1 %97, label %98, label %183

98:                                               ; preds = %95
  %99 = load i32, ptr %91, align 4, !tbaa !44
  %100 = add i32 %99, -1
  %101 = getelementptr inbounds %struct._result_t, ptr %76, i64 0, i32 2
  %102 = load i32, ptr %101, align 8, !tbaa !134
  %103 = icmp ugt i32 %100, %102
  br i1 %103, label %104, label %183

104:                                              ; preds = %98
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %13) #32
  %105 = load i32, ptr %38, align 4, !tbaa !135
  %106 = call i32 @llvm.umin.i32(i32 %105, i32 10)
  %107 = load ptr, ptr %27, align 8, !tbaa !71
  %108 = add i32 %93, -1
  store i32 %106, ptr %39, align 4, !tbaa !135
  store ptr %107, ptr %40, align 8, !tbaa !133
  store i32 %108, ptr %41, align 8, !tbaa !130
  %109 = shl nuw nsw i32 %106, 1
  %110 = add nsw i32 %109, -2
  %111 = shl nsw i32 -1, %110
  %112 = xor i32 %111, -1
  store i32 %112, ptr %42, align 8, !tbaa !136
  %113 = zext i32 %93 to i64
  %114 = shl nuw nsw i64 %113, 2
  %115 = call ptr @xmalloc(i64 noundef %114) #33
  store ptr %115, ptr %43, align 8, !tbaa !137
  %116 = call ptr @xcalloc(i64 noundef 524288, i64 noundef 8) #33
  store ptr %116, ptr %13, align 8, !tbaa !138
  call void @bld_table(ptr noundef nonnull %13) #35
  %117 = load ptr, ptr %37, align 8, !tbaa !133
  %118 = load i32, ptr %101, align 8, !tbaa !134
  %119 = zext i32 %118 to i64
  %120 = getelementptr inbounds i8, ptr %117, i64 %119
  %121 = load i32, ptr %91, align 4, !tbaa !44
  %122 = xor i32 %118, -1
  %123 = add i32 %121, %122
  %124 = add i32 %118, 1
  %125 = load i32, ptr getelementptr inbounds (%struct._options_t, ptr @options, i64 0, i32 4), align 8, !tbaa !58
  call fastcc void @exon_cores(ptr noundef nonnull %13, ptr noundef %120, i32 noundef %123, i32 noundef 1, i32 noundef %124, i32 noundef %125, ptr noundef nonnull %11, ptr noundef null, ptr noundef nonnull %12) #35
  call void @free_hash_env(ptr noundef nonnull %13) #35
  %126 = load i32, ptr %32, align 8, !tbaa !37
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %179, label %128

128:                                              ; preds = %104
  %129 = zext i32 %126 to i64
  br label %130

130:                                              ; preds = %130, %128
  %131 = phi i64 [ 0, %128 ], [ %137, %130 ]
  %132 = load ptr, ptr %12, align 8, !tbaa !16
  %133 = getelementptr inbounds ptr, ptr %132, i64 %131
  %134 = load ptr, ptr %133, align 8, !tbaa !7
  %135 = load <4 x i32>, ptr %134, align 4, !tbaa !19
  %136 = shufflevector <4 x i32> %135, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  store <4 x i32> %136, ptr %134, align 4, !tbaa !19
  %137 = add nuw nsw i64 %131, 1
  %138 = icmp eq i64 %137, %129
  br i1 %138, label %139, label %130, !llvm.loop !139

139:                                              ; preds = %130
  %140 = load ptr, ptr %12, align 8, !tbaa !16
  %141 = add i32 %126, -1
  %142 = zext i32 %141 to i64
  %143 = getelementptr inbounds ptr, ptr %140, i64 %142
  %144 = load ptr, ptr %143, align 8, !tbaa !7
  %145 = load ptr, ptr %37, align 8, !tbaa !133
  %146 = load i32, ptr %16, align 8, !tbaa !130
  %147 = load ptr, ptr %27, align 8, !tbaa !71
  %148 = getelementptr inbounds %struct._exon_t, ptr %144, i64 0, i32 3
  %149 = getelementptr inbounds %struct._exon_t, ptr %144, i64 0, i32 2
  %150 = load i32, ptr %149, align 4, !tbaa !39
  %151 = icmp ult i32 %150, %146
  br i1 %151, label %152, label %175

152:                                              ; preds = %139
  %153 = load i32, ptr %20, align 4, !tbaa !72
  %154 = load i32, ptr %148, align 4, !tbaa !107
  %155 = zext i32 %154 to i64
  %156 = zext i32 %150 to i64
  %157 = call i32 @llvm.umax.i32(i32 %154, i32 %153)
  %158 = zext i32 %157 to i64
  br label %159

159:                                              ; preds = %169, %152
  %160 = phi i64 [ %156, %152 ], [ %170, %169 ]
  %161 = phi i64 [ %155, %152 ], [ %172, %169 ]
  %162 = icmp eq i64 %161, %158
  br i1 %162, label %175, label %163

163:                                              ; preds = %159
  %164 = getelementptr inbounds i8, ptr %145, i64 %160
  %165 = load i8, ptr %164, align 1, !tbaa !16
  %166 = getelementptr inbounds i8, ptr %147, i64 %161
  %167 = load i8, ptr %166, align 1, !tbaa !16
  %168 = icmp eq i8 %165, %167
  br i1 %168, label %169, label %175

169:                                              ; preds = %163
  %170 = add nuw nsw i64 %160, 1
  %171 = trunc i64 %170 to i32
  store i32 %171, ptr %149, align 4, !tbaa !39
  %172 = add nuw nsw i64 %161, 1
  %173 = trunc i64 %172 to i32
  store i32 %173, ptr %148, align 4, !tbaa !107
  %174 = icmp eq i32 %146, %171
  br i1 %174, label %175, label %159, !llvm.loop !140

175:                                              ; preds = %169, %163, %159, %139
  %176 = load i32, ptr %38, align 4, !tbaa !135
  call fastcc void @merge(ptr noundef nonnull %77, ptr noundef nonnull %12, i32 noundef 0, i32 noundef %176) #35
  store i32 0, ptr %32, align 8, !tbaa !37
  %177 = load ptr, ptr %77, align 8, !tbaa !16
  %178 = load ptr, ptr %177, align 8, !tbaa !7
  br label %179

179:                                              ; preds = %175, %104
  %180 = phi ptr [ %178, %175 ], [ %91, %104 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %13) #32
  %181 = load i32, ptr %83, align 8, !tbaa !37
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %225, label %183

183:                                              ; preds = %179, %98, %95
  %184 = phi ptr [ %180, %179 ], [ %91, %98 ], [ %91, %95 ]
  %185 = phi i32 [ %181, %179 ], [ %84, %98 ], [ %84, %95 ]
  %186 = load ptr, ptr %77, align 8, !tbaa !16
  %187 = load ptr, ptr %27, align 8, !tbaa !71
  %188 = zext i32 %185 to i64
  br label %189

189:                                              ; preds = %195, %183
  %190 = phi i64 [ 0, %183 ], [ %196, %195 ]
  %191 = getelementptr inbounds ptr, ptr %186, i64 %190
  %192 = load ptr, ptr %191, align 8, !tbaa !7
  %193 = call fastcc i32 @is_polyAT_exon_p(ptr noundef %192, ptr noundef %187) #35, !range !141
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %198, label %195

195:                                              ; preds = %189
  %196 = add nuw nsw i64 %190, 1
  %197 = icmp eq i64 %196, %188
  br i1 %197, label %200, label %189, !llvm.loop !142

198:                                              ; preds = %189
  %.lcssa = phi i64 [ %190, %189 ]
  %199 = trunc i64 %.lcssa to i32
  br label %200

200:                                              ; preds = %198, %195
  %201 = phi i32 [ %199, %198 ], [ %185, %195 ]
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %225, label %203

203:                                              ; preds = %200
  %204 = zext i32 %201 to i64
  br label %205

205:                                              ; preds = %205, %203
  %206 = phi i64 [ 0, %203 ], [ %210, %205 ]
  %207 = load ptr, ptr %77, align 8, !tbaa !16
  %208 = getelementptr inbounds ptr, ptr %207, i64 %206
  %209 = load ptr, ptr %208, align 8, !tbaa !7
  call void @free(ptr noundef %209) #33
  %210 = add nuw nsw i64 %206, 1
  %211 = icmp eq i64 %210, %204
  br i1 %211, label %212, label %205, !llvm.loop !143

212:                                              ; preds = %205
  %213 = load ptr, ptr %77, align 8, !tbaa !16
  %214 = getelementptr inbounds ptr, ptr %213, i64 %204
  %215 = load i32, ptr %83, align 8, !tbaa !37
  %216 = sub i32 %215, %201
  %217 = zext i32 %216 to i64
  %218 = shl nuw nsw i64 %217, 3
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %213, ptr nonnull align 8 %214, i64 %218, i1 false)
  %219 = load i32, ptr %83, align 8, !tbaa !37
  %220 = sub i32 %219, %201
  store i32 %220, ptr %83, align 8, !tbaa !37
  %221 = icmp eq i32 %219, %201
  br i1 %221, label %2761, label %222

222:                                              ; preds = %212
  %223 = load ptr, ptr %77, align 8, !tbaa !16
  %224 = load ptr, ptr %223, align 8, !tbaa !7
  br label %225

225:                                              ; preds = %222, %200, %179
  %226 = phi ptr [ %224, %222 ], [ %184, %200 ], [ %180, %179 ]
  %227 = getelementptr inbounds %struct._exon_t, ptr %226, i64 0, i32 1
  %228 = load i32, ptr %227, align 4, !tbaa !45
  %229 = add i32 %228, -1
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %555, label %231

231:                                              ; preds = %225
  %232 = call i32 @llvm.umin.i32(i32 %229, i32 250)
  %233 = shl nuw nsw i32 %232, 2
  %234 = load i32, ptr %226, align 4, !tbaa !44
  %235 = icmp slt i32 %233, %234
  %236 = add nsw i32 %234, -1
  %237 = select i1 %235, i32 %233, i32 %236
  %238 = load ptr, ptr %27, align 8, !tbaa !71
  %239 = zext i32 %228 to i64
  %240 = getelementptr inbounds i8, ptr %238, i64 %239
  %241 = getelementptr inbounds i8, ptr %240, i64 -1
  %242 = zext i32 %232 to i64
  %243 = sub nsw i64 0, %242
  %244 = getelementptr inbounds i8, ptr %241, i64 %243
  %245 = load ptr, ptr %37, align 8, !tbaa !133
  %246 = zext i32 %234 to i64
  %247 = getelementptr inbounds i8, ptr %245, i64 %246
  %248 = getelementptr inbounds i8, ptr %247, i64 -1
  %249 = sext i32 %237 to i64
  %250 = sub nsw i64 0, %249
  %251 = getelementptr inbounds i8, ptr %248, i64 %250
  %252 = xor i32 %232, -1
  %253 = add i32 %228, %252
  %254 = xor i32 %237, -1
  %255 = add i32 %234, %254
  %256 = load i32, ptr %38, align 4, !tbaa !135
  %257 = add nuw nsw i32 %232, 1
  %258 = zext i32 %237 to i64
  br label %259

259:                                              ; preds = %267, %231
  %260 = phi i64 [ %271, %267 ], [ %258, %231 ]
  %261 = phi i64 [ %268, %267 ], [ %242, %231 ]
  %262 = trunc i64 %261 to i32
  %263 = icmp sgt i32 %262, 0
  %264 = trunc i64 %260 to i32
  %265 = icmp sgt i32 %264, 0
  %266 = and i1 %265, %263
  br i1 %266, label %267, label %275

267:                                              ; preds = %259
  %268 = add nsw i64 %261, -1
  %269 = getelementptr inbounds i8, ptr %244, i64 %268
  %270 = load i8, ptr %269, align 1, !tbaa !16
  %271 = add nsw i64 %260, -1
  %272 = getelementptr inbounds i8, ptr %251, i64 %271
  %273 = load i8, ptr %272, align 1, !tbaa !16
  %274 = icmp eq i8 %270, %273
  br i1 %274, label %259, label %275, !llvm.loop !144

275:                                              ; preds = %267, %259
  %.lcssa3 = phi i32 [ %262, %267 ], [ %262, %259 ]
  %.lcssa2 = phi i32 [ %264, %267 ], [ %264, %259 ]
  %276 = icmp eq i32 %.lcssa3, 0
  %277 = icmp eq i32 %.lcssa2, 0
  %278 = or i1 %277, %276
  br i1 %278, label %279, label %282

279:                                              ; preds = %275
  %280 = add nsw i32 %253, %.lcssa3
  %281 = add nsw i32 %255, %.lcssa2
  br label %539

282:                                              ; preds = %275
  %283 = add i32 %237, %232
  %284 = add i32 %283, 1
  %285 = sext i32 %284 to i64
  %286 = shl nsw i64 %285, 2
  %287 = call ptr @xmalloc(i64 noundef %286) #33
  %288 = call ptr @xmalloc(i64 noundef %286) #33
  %289 = icmp slt i32 %283, 0
  br i1 %289, label %323, label %290

290:                                              ; preds = %282
  %291 = zext i32 %284 to i64
  %292 = add nuw nsw i64 %291, 3
  %293 = and i64 %292, 8589934588
  %294 = add nsw i64 %291, -1
  %295 = insertelement <4 x i64> poison, i64 %294, i64 0
  %296 = shufflevector <4 x i64> %295, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %297

297:                                              ; preds = %319, %290
  %298 = phi i64 [ 0, %290 ], [ %320, %319 ]
  %299 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %290 ], [ %321, %319 ]
  %300 = icmp ule <4 x i64> %299, %296
  %301 = extractelement <4 x i1> %300, i64 0
  br i1 %301, label %302, label %304

302:                                              ; preds = %297
  %303 = getelementptr inbounds i32, ptr %287, i64 %298
  store i32 %257, ptr %303, align 4, !tbaa !19
  br label %304

304:                                              ; preds = %302, %297
  %305 = extractelement <4 x i1> %300, i64 1
  br i1 %305, label %306, label %309

306:                                              ; preds = %304
  %307 = or i64 %298, 1
  %308 = getelementptr inbounds i32, ptr %287, i64 %307
  store i32 %257, ptr %308, align 4, !tbaa !19
  br label %309

309:                                              ; preds = %306, %304
  %310 = extractelement <4 x i1> %300, i64 2
  br i1 %310, label %311, label %314

311:                                              ; preds = %309
  %312 = or i64 %298, 2
  %313 = getelementptr inbounds i32, ptr %287, i64 %312
  store i32 %257, ptr %313, align 4, !tbaa !19
  br label %314

314:                                              ; preds = %311, %309
  %315 = extractelement <4 x i1> %300, i64 3
  br i1 %315, label %316, label %319

316:                                              ; preds = %314
  %317 = or i64 %298, 3
  %318 = getelementptr inbounds i32, ptr %287, i64 %317
  store i32 %257, ptr %318, align 4, !tbaa !19
  br label %319

319:                                              ; preds = %316, %314
  %320 = add i64 %298, 4
  %321 = add <4 x i64> %299, <i64 4, i64 4, i64 4, i64 4>
  %322 = icmp eq i64 %320, %293
  br i1 %322, label %323, label %297, !llvm.loop !145

323:                                              ; preds = %319, %282
  %324 = getelementptr inbounds i32, ptr %287, i64 %249
  store i32 %.lcssa3, ptr %324, align 4, !tbaa !19
  %325 = zext i32 %257 to i64
  %326 = shl nuw nsw i64 %325, 2
  %327 = call ptr @xmalloc(i64 noundef %326) #33
  %328 = call ptr @xmalloc(i64 noundef %326) #33
  br label %329

329:                                              ; preds = %329, %323
  %330 = phi i64 [ %332, %329 ], [ 1, %323 ]
  %331 = getelementptr inbounds i32, ptr %327, i64 %330
  store i32 %257, ptr %331, align 4, !tbaa !19
  %332 = add nuw nsw i64 %330, 1
  %333 = icmp eq i64 %332, %325
  br i1 %333, label %334, label %329, !llvm.loop !148

334:                                              ; preds = %329
  %335 = load i32, ptr %324, align 4, !tbaa !19
  store i32 %335, ptr %327, align 4, !tbaa !19
  store i32 %237, ptr %328, align 4, !tbaa !19
  %336 = sdiv i32 %256, 2
  %337 = shl nsw i32 %256, 1
  %338 = add i32 %237, -1
  %339 = sub i32 %338, %232
  %340 = add i32 %237, 2
  %341 = add nuw nsw i32 %232, 2
  br label %348

342:                                              ; preds = %500, %399
  %343 = add nuw nsw i64 %352, 1
  %344 = add i32 %355, -1
  %345 = add i32 %354, -1
  %346 = add i32 %353, 1
  %347 = icmp eq i64 %356, %325
  br i1 %347, label %512, label %348, !llvm.loop !149

348:                                              ; preds = %342, %334
  %349 = phi i64 [ %359, %342 ], [ %249, %334 ]
  %350 = phi i64 [ %356, %342 ], [ 0, %334 ]
  %351 = phi i64 [ %358, %342 ], [ %249, %334 ]
  %352 = phi i64 [ %343, %342 ], [ 1, %334 ]
  %353 = phi i32 [ %346, %342 ], [ %340, %334 ]
  %354 = phi i32 [ %345, %342 ], [ %338, %334 ]
  %355 = phi i32 [ %344, %342 ], [ %339, %334 ]
  %356 = add nuw nsw i64 %350, 1
  %357 = sext i32 %354 to i64
  %358 = add nsw i64 %351, 1
  %359 = add nsw i64 %349, -1
  %360 = getelementptr inbounds i32, ptr %327, i64 %350
  %361 = load i32, ptr %360, align 4, !tbaa !19
  %362 = sub nsw i32 %232, %361
  %363 = icmp slt i32 %336, %362
  br i1 %363, label %364, label %372

364:                                              ; preds = %348
  %365 = icmp sgt i32 %337, %362
  br i1 %365, label %366, label %368

366:                                              ; preds = %364
  %367 = load i32, ptr getelementptr inbounds (%struct._options_t, ptr @options, i64 0, i32 5), align 4, !tbaa !59
  br label %372

368:                                              ; preds = %364
  %369 = sitofp i32 %362 to double
  %370 = call double @llvm.fmuladd.f64(double %369, double 0x3FC3333333333334, double 1.000000e+00)
  %371 = fptosi double %370 to i32
  br label %372

372:                                              ; preds = %368, %366, %348
  %373 = phi i32 [ %367, %366 ], [ %371, %368 ], [ 2, %348 ]
  %374 = sext i32 %373 to i64
  %375 = icmp sgt i64 %350, %374
  br i1 %375, label %376, label %397

376:                                              ; preds = %372
  %377 = icmp eq i64 %350, 0
  br i1 %377, label %508, label %378

378:                                              ; preds = %376
  %379 = add nsw i64 %350, -1
  %380 = and i64 %379, 4294967295
  %381 = getelementptr inbounds i32, ptr %327, i64 %380
  %382 = load i32, ptr %381, align 4, !tbaa !19
  %383 = sub nsw i32 %232, %382
  %384 = icmp slt i32 %336, %383
  br i1 %384, label %385, label %393

385:                                              ; preds = %378
  %386 = icmp sgt i32 %337, %383
  br i1 %386, label %387, label %389

387:                                              ; preds = %385
  %388 = load i32, ptr getelementptr inbounds (%struct._options_t, ptr @options, i64 0, i32 5), align 4, !tbaa !59
  br label %393

389:                                              ; preds = %385
  %390 = sitofp i32 %383 to double
  %391 = call double @llvm.fmuladd.f64(double %390, double 0x3FC3333333333334, double 1.000000e+00)
  %392 = fptosi double %391 to i32
  br label %393

393:                                              ; preds = %389, %387, %378
  %394 = phi i32 [ %388, %387 ], [ %392, %389 ], [ 2, %378 ]
  %395 = sext i32 %394 to i64
  %396 = icmp sgt i64 %379, %395
  br i1 %396, label %510, label %397

397:                                              ; preds = %393, %372
  %398 = icmp slt i64 %358, %359
  br i1 %398, label %399, label %403

399:                                              ; preds = %397
  %400 = load i32, ptr %324, align 4, !tbaa !19
  %401 = getelementptr inbounds i32, ptr %327, i64 %352
  store i32 %400, ptr %401, align 4, !tbaa !19
  %402 = getelementptr inbounds i32, ptr %328, i64 %352
  store i32 %237, ptr %402, align 4, !tbaa !19
  br label %342

403:                                              ; preds = %397
  %404 = trunc i64 %350 to i32
  %405 = xor i32 %404, -1
  %406 = add i32 %237, %405
  %407 = trunc i64 %352 to i32
  %408 = add i32 %237, %407
  %409 = sext i32 %408 to i64
  %410 = sext i32 %406 to i64
  %411 = add nsw i64 %409, -1
  %412 = getelementptr inbounds i32, ptr %287, i64 %411
  %413 = add nsw i64 %410, 1
  %414 = getelementptr inbounds i32, ptr %287, i64 %413
  br label %415

415:                                              ; preds = %480, %403
  %416 = phi i64 [ %357, %403 ], [ %481, %480 ]
  %417 = phi i32 [ %355, %403 ], [ %483, %480 ]
  %418 = icmp eq i64 %416, %410
  br i1 %418, label %419, label %421

419:                                              ; preds = %415
  %420 = load i32, ptr %414, align 4, !tbaa !19
  br label %445

421:                                              ; preds = %415
  %422 = icmp eq i64 %416, %409
  br i1 %422, label %423, label %426

423:                                              ; preds = %421
  %424 = load i32, ptr %412, align 4, !tbaa !19
  %425 = add nsw i32 %424, -1
  br label %445

426:                                              ; preds = %421
  %427 = getelementptr inbounds i32, ptr %287, i64 %416
  %428 = load i32, ptr %427, align 4, !tbaa !19
  %429 = add nsw i32 %428, -1
  %430 = add nsw i64 %416, 1
  %431 = getelementptr inbounds i32, ptr %287, i64 %430
  %432 = load i32, ptr %431, align 4, !tbaa !19
  %433 = icmp sgt i32 %429, %432
  %434 = add nsw i64 %416, -1
  %435 = getelementptr inbounds i32, ptr %287, i64 %434
  %436 = load i32, ptr %435, align 4, !tbaa !19
  %437 = icmp sgt i32 %428, %436
  %438 = select i1 %433, i1 true, i1 %437
  br i1 %438, label %439, label %445

439:                                              ; preds = %426
  %440 = add nsw i32 %436, -1
  %441 = icmp sgt i32 %440, %432
  %442 = icmp sgt i32 %436, %428
  %443 = or i1 %442, %441
  %444 = select i1 %443, i32 %432, i32 %440
  br label %445

445:                                              ; preds = %439, %426, %423, %419
  %446 = phi i32 [ %420, %419 ], [ %425, %423 ], [ %444, %439 ], [ %429, %426 ]
  %447 = zext i32 %446 to i64
  %448 = add i32 %446, %417
  %449 = zext i32 %448 to i64
  br label %450

450:                                              ; preds = %458, %445
  %451 = phi i64 [ %462, %458 ], [ %449, %445 ]
  %452 = phi i64 [ %459, %458 ], [ %447, %445 ]
  %453 = trunc i64 %452 to i32
  %454 = icmp sgt i32 %453, 0
  %455 = trunc i64 %451 to i32
  %456 = icmp sgt i32 %455, 0
  %457 = select i1 %454, i1 %456, i1 false
  br i1 %457, label %458, label %468

458:                                              ; preds = %450
  %459 = add nsw i64 %452, -1
  %460 = getelementptr inbounds i8, ptr %244, i64 %459
  %461 = load i8, ptr %460, align 1, !tbaa !16
  %462 = add nsw i64 %451, -1
  %463 = getelementptr inbounds i8, ptr %251, i64 %462
  %464 = load i8, ptr %463, align 1, !tbaa !16
  %465 = icmp eq i8 %461, %464
  br i1 %465, label %450, label %466, !llvm.loop !150

466:                                              ; preds = %458
  %.lcssa9 = phi i32 [ %453, %458 ]
  %467 = getelementptr inbounds i32, ptr %288, i64 %416
  store i32 %.lcssa9, ptr %467, align 4, !tbaa !19
  br label %480

468:                                              ; preds = %450
  %.lcssa8 = phi i32 [ %453, %450 ]
  %.lcssa4 = phi i32 [ %455, %450 ]
  %469 = getelementptr inbounds i32, ptr %288, i64 %416
  store i32 %.lcssa8, ptr %469, align 4, !tbaa !19
  %470 = icmp eq i32 %.lcssa8, 0
  %471 = icmp eq i32 %.lcssa4, 0
  %472 = select i1 %470, i1 %471, i1 false
  br i1 %472, label %473, label %474

473:                                              ; preds = %468
  %.lcssa12 = phi i32 [ %407, %468 ]
  call void @free(ptr noundef %287) #33
  call void @free(ptr noundef nonnull %288) #33
  call void @free(ptr noundef %327) #33
  call void @free(ptr noundef %328) #33
  br label %539

474:                                              ; preds = %468
  br i1 %470, label %475, label %477

475:                                              ; preds = %474
  %.lcssa13 = phi i32 [ %407, %474 ]
  %.lcssa4.lcssa6 = phi i32 [ %.lcssa4, %474 ]
  call void @free(ptr noundef %287) #33
  call void @free(ptr noundef nonnull %288) #33
  call void @free(ptr noundef %327) #33
  call void @free(ptr noundef %328) #33
  %476 = add nsw i32 %255, %.lcssa4.lcssa6
  br label %539

477:                                              ; preds = %474
  br i1 %471, label %478, label %480

478:                                              ; preds = %477
  %.lcssa14 = phi i32 [ %407, %477 ]
  %.lcssa8.lcssa11 = phi i32 [ %.lcssa8, %477 ]
  call void @free(ptr noundef %287) #33
  call void @free(ptr noundef nonnull %288) #33
  call void @free(ptr noundef %327) #33
  call void @free(ptr noundef %328) #33
  %479 = add nsw i32 %253, %.lcssa8.lcssa11
  br label %539

480:                                              ; preds = %477, %466
  %481 = add nsw i64 %416, 1
  %482 = icmp sgt i64 %416, %351
  %483 = add i32 %417, 1
  br i1 %482, label %484, label %415, !llvm.loop !151

484:                                              ; preds = %480
  %485 = load i32, ptr %324, align 4, !tbaa !19
  %486 = getelementptr inbounds i32, ptr %327, i64 %352
  store i32 %485, ptr %486, align 4, !tbaa !19
  %487 = getelementptr inbounds i32, ptr %328, i64 %352
  store i32 %237, ptr %487, align 4, !tbaa !19
  br label %488

488:                                              ; preds = %496, %484
  %489 = phi i64 [ %497, %496 ], [ %357, %484 ]
  %490 = getelementptr inbounds i32, ptr %288, i64 %489
  %491 = load i32, ptr %490, align 4, !tbaa !19
  %492 = load i32, ptr %486, align 4, !tbaa !19
  %493 = icmp slt i32 %491, %492
  br i1 %493, label %494, label %496

494:                                              ; preds = %488
  store i32 %491, ptr %486, align 4, !tbaa !19
  %495 = trunc i64 %489 to i32
  store i32 %495, ptr %487, align 4, !tbaa !19
  br label %496

496:                                              ; preds = %494, %488
  %497 = add nsw i64 %489, 1
  %498 = trunc i64 %497 to i32
  %499 = icmp eq i32 %353, %498
  br i1 %499, label %500, label %488, !llvm.loop !152

500:                                              ; preds = %500, %496
  %501 = phi i64 [ %505, %500 ], [ %357, %496 ]
  %502 = getelementptr inbounds i32, ptr %288, i64 %501
  %503 = load i32, ptr %502, align 4, !tbaa !19
  %504 = getelementptr inbounds i32, ptr %287, i64 %501
  store i32 %503, ptr %504, align 4, !tbaa !19
  %505 = add nsw i64 %501, 1
  %506 = trunc i64 %505 to i32
  %507 = icmp eq i32 %353, %506
  br i1 %507, label %342, label %500, !llvm.loop !153

508:                                              ; preds = %376
  %.lcssa15 = phi i64 [ %352, %376 ]
  %509 = trunc i64 %.lcssa15 to i32
  br label %512

510:                                              ; preds = %393
  %.lcssa16 = phi i64 [ %352, %393 ]
  %511 = trunc i64 %.lcssa16 to i32
  br label %512

512:                                              ; preds = %510, %508, %342
  %513 = phi i32 [ %509, %508 ], [ %511, %510 ], [ %341, %342 ]
  %514 = call i32 @llvm.smin.i32(i32 %513, i32 0)
  br label %515

515:                                              ; preds = %518, %512
  %516 = phi i32 [ %513, %512 ], [ %519, %518 ]
  %517 = icmp sgt i32 %516, 0
  br i1 %517, label %518, label %528

518:                                              ; preds = %515
  %519 = add nsw i32 %516, -1
  %520 = zext i32 %519 to i64
  %521 = getelementptr inbounds i32, ptr %327, i64 %520
  %522 = load i32, ptr %521, align 4, !tbaa !19
  %523 = zext i32 %516 to i64
  %524 = getelementptr inbounds i32, ptr %327, i64 %523
  %525 = load i32, ptr %524, align 4, !tbaa !19
  %526 = sub nsw i32 %522, %525
  %527 = icmp slt i32 %526, 3
  br i1 %527, label %515, label %528, !llvm.loop !154

528:                                              ; preds = %518, %515
  %529 = phi i32 [ %514, %515 ], [ %516, %518 ]
  %530 = sext i32 %529 to i64
  %531 = getelementptr inbounds i32, ptr %327, i64 %530
  %532 = load i32, ptr %531, align 4, !tbaa !19
  %533 = add nsw i32 %532, %253
  %534 = getelementptr inbounds i32, ptr %328, i64 %530
  %535 = load i32, ptr %534, align 4, !tbaa !19
  %536 = sub i32 %255, %232
  %537 = add i32 %536, %532
  %538 = add i32 %537, %535
  call void @free(ptr noundef %327) #33
  call void @free(ptr noundef %328) #33
  call void @free(ptr noundef %287) #33
  call void @free(ptr noundef %288) #33
  br label %539

539:                                              ; preds = %528, %478, %475, %473, %279
  %540 = phi i32 [ %280, %279 ], [ %533, %528 ], [ %253, %473 ], [ %253, %475 ], [ %479, %478 ]
  %541 = phi i32 [ %281, %279 ], [ %538, %528 ], [ %255, %473 ], [ %476, %475 ], [ %255, %478 ]
  %542 = phi i32 [ 0, %279 ], [ %529, %528 ], [ %.lcssa12, %473 ], [ %.lcssa13, %475 ], [ %.lcssa14, %478 ]
  %543 = load i32, ptr %227, align 4, !tbaa !45
  %544 = xor i32 %540, -1
  %545 = add i32 %543, %544
  %546 = load i32, ptr getelementptr inbounds (%struct._options_t, ptr @options, i64 0, i32 12), align 8, !tbaa !52
  %547 = mul nsw i32 %545, %546
  %548 = load i32, ptr getelementptr inbounds (%struct._options_t, ptr @options, i64 0, i32 10), align 8, !tbaa !65
  %549 = mul nsw i32 %548, %542
  %550 = add nsw i32 %549, %547
  %551 = icmp sgt i32 %550, -1
  br i1 %551, label %552, label %555

552:                                              ; preds = %539
  %553 = add nsw i32 %540, 1
  store i32 %553, ptr %227, align 4, !tbaa !45
  %554 = add nsw i32 %541, 1
  store i32 %554, ptr %226, align 4, !tbaa !44
  br label %555

555:                                              ; preds = %552, %539, %225, %89, %86
  %556 = load i32, ptr %79, align 4, !tbaa !106
  %557 = icmp eq i32 %556, 0
  br i1 %557, label %558, label %1025

558:                                              ; preds = %555
  %559 = load ptr, ptr %77, align 8, !tbaa !16
  %560 = load i32, ptr %83, align 8, !tbaa !37
  %561 = add i32 %560, -1
  %562 = zext i32 %561 to i64
  %563 = getelementptr inbounds ptr, ptr %559, i64 %562
  %564 = load ptr, ptr %563, align 8, !tbaa !7
  %565 = getelementptr inbounds %struct._exon_t, ptr %564, i64 0, i32 3
  %566 = load i32, ptr %565, align 4, !tbaa !107
  %567 = load i32, ptr %20, align 4, !tbaa !72
  %568 = icmp ult i32 %566, %567
  br i1 %568, label %569, label %1025

569:                                              ; preds = %558
  %570 = sub i32 %567, %566
  %571 = icmp ugt i32 %570, 60
  br i1 %571, label %572, label %668

572:                                              ; preds = %569
  %573 = getelementptr inbounds %struct._exon_t, ptr %564, i64 0, i32 2
  %574 = load i32, ptr %573, align 4, !tbaa !39
  %575 = getelementptr inbounds %struct._result_t, ptr %76, i64 0, i32 2
  %576 = load i32, ptr %575, align 8, !tbaa !134
  %577 = getelementptr inbounds %struct._result_t, ptr %76, i64 0, i32 3
  %578 = load i32, ptr %577, align 4, !tbaa !155
  %579 = add i32 %578, %576
  %580 = icmp ult i32 %574, %579
  br i1 %580, label %581, label %668

581:                                              ; preds = %572
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %14) #32
  %582 = load i32, ptr %38, align 4, !tbaa !135
  %583 = call i32 @llvm.umin.i32(i32 %582, i32 10)
  %584 = load ptr, ptr %27, align 8, !tbaa !71
  %585 = zext i32 %566 to i64
  %586 = getelementptr inbounds i8, ptr %584, i64 %585
  store i32 %583, ptr %44, align 4, !tbaa !135
  store ptr %586, ptr %45, align 8, !tbaa !133
  store i32 %570, ptr %46, align 8, !tbaa !130
  %587 = shl nuw nsw i32 %583, 1
  %588 = add nsw i32 %587, -2
  %589 = shl nsw i32 -1, %588
  %590 = xor i32 %589, -1
  store i32 %590, ptr %47, align 8, !tbaa !136
  %591 = add i32 %570, 1
  %592 = zext i32 %591 to i64
  %593 = shl nuw nsw i64 %592, 2
  %594 = call ptr @xmalloc(i64 noundef %593) #33
  store ptr %594, ptr %48, align 8, !tbaa !137
  %595 = call ptr @xcalloc(i64 noundef 524288, i64 noundef 8) #33
  store ptr %595, ptr %14, align 8, !tbaa !138
  call void @bld_table(ptr noundef nonnull %14) #35
  %596 = load ptr, ptr %37, align 8, !tbaa !133
  %597 = load i32, ptr %573, align 4, !tbaa !39
  %598 = zext i32 %597 to i64
  %599 = getelementptr inbounds i8, ptr %596, i64 %598
  %600 = load i32, ptr %575, align 8, !tbaa !134
  %601 = load i32, ptr %577, align 4, !tbaa !155
  %602 = sub i32 %600, %597
  %603 = add i32 %602, %601
  %604 = load i32, ptr %565, align 4, !tbaa !107
  %605 = add i32 %604, 1
  %606 = add i32 %597, 1
  %607 = load i32, ptr getelementptr inbounds (%struct._options_t, ptr @options, i64 0, i32 4), align 8, !tbaa !58
  call fastcc void @exon_cores(ptr noundef nonnull %14, ptr noundef %599, i32 noundef %603, i32 noundef %605, i32 noundef %606, i32 noundef %607, ptr noundef nonnull %11, ptr noundef null, ptr noundef nonnull %12) #35
  call void @free_hash_env(ptr noundef nonnull %14) #35
  %608 = load i32, ptr %32, align 8, !tbaa !37
  %609 = icmp eq i32 %608, 0
  br i1 %609, label %610, label %612

610:                                              ; preds = %581
  %611 = load i32, ptr %83, align 8, !tbaa !37
  br label %665

612:                                              ; preds = %581
  %613 = zext i32 %608 to i64
  br label %614

614:                                              ; preds = %614, %612
  %615 = phi i64 [ 0, %612 ], [ %621, %614 ]
  %616 = load ptr, ptr %12, align 8, !tbaa !16
  %617 = getelementptr inbounds ptr, ptr %616, i64 %615
  %618 = load ptr, ptr %617, align 8, !tbaa !7
  %619 = load <4 x i32>, ptr %618, align 4, !tbaa !19
  %620 = shufflevector <4 x i32> %619, <4 x i32> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  store <4 x i32> %620, ptr %618, align 4, !tbaa !19
  %621 = add nuw nsw i64 %615, 1
  %622 = icmp eq i64 %621, %613
  br i1 %622, label %623, label %614, !llvm.loop !139

623:                                              ; preds = %614
  %624 = load ptr, ptr %12, align 8, !tbaa !16
  %625 = load ptr, ptr %624, align 8, !tbaa !7
  %626 = load ptr, ptr %37, align 8, !tbaa !133
  %627 = load ptr, ptr %27, align 8, !tbaa !71
  %628 = load i32, ptr %625, align 4, !tbaa !44
  %629 = zext i32 %628 to i64
  %630 = getelementptr inbounds i8, ptr %626, i64 %629
  %631 = getelementptr inbounds i8, ptr %630, i64 -2
  %632 = getelementptr inbounds %struct._exon_t, ptr %625, i64 0, i32 1
  %633 = load i32, ptr %632, align 4, !tbaa !45
  %634 = zext i32 %633 to i64
  %635 = getelementptr inbounds i8, ptr %627, i64 %634
  %636 = getelementptr inbounds i8, ptr %635, i64 -2
  %637 = icmp ult ptr %631, %626
  %638 = icmp ult ptr %636, %627
  %639 = select i1 %637, i1 true, i1 %638
  br i1 %639, label %656, label %640

640:                                              ; preds = %648, %623
  %641 = phi i32 [ %652, %648 ], [ %633, %623 ]
  %642 = phi i32 [ %651, %648 ], [ %628, %623 ]
  %643 = phi ptr [ %650, %648 ], [ %636, %623 ]
  %644 = phi ptr [ %649, %648 ], [ %631, %623 ]
  %645 = load i8, ptr %644, align 1, !tbaa !16
  %646 = load i8, ptr %643, align 1, !tbaa !16
  %647 = icmp eq i8 %645, %646
  br i1 %647, label %648, label %656

648:                                              ; preds = %640
  %649 = getelementptr inbounds i8, ptr %644, i64 -1
  %650 = getelementptr inbounds i8, ptr %643, i64 -1
  %651 = add i32 %642, -1
  store i32 %651, ptr %625, align 4, !tbaa !44
  %652 = add i32 %641, -1
  store i32 %652, ptr %632, align 4, !tbaa !45
  %653 = icmp ult ptr %649, %626
  %654 = icmp ult ptr %650, %627
  %655 = select i1 %653, i1 true, i1 %654
  br i1 %655, label %656, label %640, !llvm.loop !156

656:                                              ; preds = %648, %640, %623
  %657 = load i32, ptr %83, align 8, !tbaa !37
  %658 = load i32, ptr %38, align 4, !tbaa !135
  call fastcc void @merge(ptr noundef nonnull %77, ptr noundef nonnull %12, i32 noundef %657, i32 noundef %658) #35
  store i32 0, ptr %32, align 8, !tbaa !37
  %659 = load ptr, ptr %77, align 8, !tbaa !16
  %660 = load i32, ptr %83, align 8, !tbaa !37
  %661 = add i32 %660, -1
  %662 = zext i32 %661 to i64
  %663 = getelementptr inbounds ptr, ptr %659, i64 %662
  %664 = load ptr, ptr %663, align 8, !tbaa !7
  br label %665

665:                                              ; preds = %656, %610
  %666 = phi i32 [ %660, %656 ], [ %611, %610 ]
  %667 = phi ptr [ %664, %656 ], [ %564, %610 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %14) #32
  br label %668

668:                                              ; preds = %665, %572, %569
  %669 = phi i32 [ %666, %665 ], [ %560, %572 ], [ %560, %569 ]
  %670 = phi ptr [ %667, %665 ], [ %564, %572 ], [ %564, %569 ]
  %671 = icmp eq i32 %669, 0
  br i1 %671, label %718, label %672

672:                                              ; preds = %668
  %673 = load ptr, ptr %77, align 8, !tbaa !16
  %674 = load ptr, ptr %27, align 8, !tbaa !71
  %675 = zext i32 %669 to i64
  br label %676

676:                                              ; preds = %686, %672
  %677 = phi i64 [ 0, %672 ], [ %687, %686 ]
  %678 = trunc i64 %677 to i32
  %679 = xor i32 %678, -1
  %680 = add i32 %669, %679
  %681 = zext i32 %680 to i64
  %682 = getelementptr inbounds ptr, ptr %673, i64 %681
  %683 = load ptr, ptr %682, align 8, !tbaa !7
  %684 = call fastcc i32 @is_polyAT_exon_p(ptr noundef %683, ptr noundef %674) #35, !range !141
  %685 = icmp eq i32 %684, 0
  br i1 %685, label %689, label %686

686:                                              ; preds = %676
  %687 = add nuw nsw i64 %677, 1
  %688 = icmp eq i64 %687, %675
  br i1 %688, label %689, label %676, !llvm.loop !157

689:                                              ; preds = %686, %676
  %690 = phi i32 [ %678, %676 ], [ %669, %686 ]
  %691 = icmp eq i32 %690, 0
  br i1 %691, label %718, label %692

692:                                              ; preds = %689
  %693 = sub i32 %669, %690
  %694 = icmp ugt i32 %690, %669
  br i1 %694, label %708, label %695

695:                                              ; preds = %692
  %696 = zext i32 %693 to i64
  br label %697

697:                                              ; preds = %697, %695
  %698 = phi i64 [ %696, %695 ], [ %702, %697 ]
  %699 = load ptr, ptr %77, align 8, !tbaa !16
  %700 = getelementptr inbounds ptr, ptr %699, i64 %698
  %701 = load ptr, ptr %700, align 8, !tbaa !7
  call void @free(ptr noundef %701) #33
  %702 = add nuw nsw i64 %698, 1
  %703 = load i32, ptr %83, align 8, !tbaa !37
  %704 = zext i32 %703 to i64
  %705 = icmp ult i64 %702, %704
  br i1 %705, label %697, label %706, !llvm.loop !158

706:                                              ; preds = %697
  %.lcssa21 = phi i32 [ %703, %697 ]
  %707 = sub i32 %.lcssa21, %690
  br label %708

708:                                              ; preds = %706, %692
  %709 = phi i32 [ %707, %706 ], [ %693, %692 ]
  %710 = phi i32 [ %.lcssa21, %706 ], [ %669, %692 ]
  store i32 %709, ptr %83, align 8, !tbaa !37
  %711 = icmp eq i32 %710, %690
  br i1 %711, label %2761, label %712

712:                                              ; preds = %708
  %713 = load ptr, ptr %77, align 8, !tbaa !16
  %714 = add i32 %709, -1
  %715 = zext i32 %714 to i64
  %716 = getelementptr inbounds ptr, ptr %713, i64 %715
  %717 = load ptr, ptr %716, align 8, !tbaa !7
  br label %718

718:                                              ; preds = %712, %689, %668
  %719 = phi ptr [ %717, %712 ], [ %670, %689 ], [ %670, %668 ]
  %720 = load i32, ptr %20, align 4, !tbaa !72
  %721 = getelementptr inbounds %struct._exon_t, ptr %719, i64 0, i32 3
  %722 = load i32, ptr %721, align 4, !tbaa !107
  %723 = icmp eq i32 %720, %722
  br i1 %723, label %1025, label %724

724:                                              ; preds = %718
  %725 = sub i32 %720, %722
  %726 = call i32 @llvm.umin.i32(i32 %725, i32 250)
  %727 = load ptr, ptr %27, align 8, !tbaa !71
  %728 = zext i32 %722 to i64
  %729 = getelementptr inbounds i8, ptr %727, i64 %728
  %730 = load ptr, ptr %37, align 8, !tbaa !133
  %731 = getelementptr inbounds %struct._exon_t, ptr %719, i64 0, i32 2
  %732 = load i32, ptr %731, align 4, !tbaa !39
  %733 = zext i32 %732 to i64
  %734 = getelementptr inbounds i8, ptr %730, i64 %733
  %735 = shl nuw nsw i32 %726, 2
  %736 = load i32, ptr %16, align 8, !tbaa !130
  %737 = sub i32 %736, %732
  %738 = call i32 @llvm.smin.i32(i32 %735, i32 %737)
  %739 = load i32, ptr %38, align 4, !tbaa !135
  %740 = add nuw nsw i32 %726, 1
  %741 = icmp sgt i32 %738, 0
  br i1 %741, label %742, label %761

742:                                              ; preds = %724
  %743 = add nsw i32 %738, -1
  %744 = add nsw i32 %726, -1
  %745 = call i32 @llvm.umin.i32(i32 %743, i32 %744)
  %746 = add nuw nsw i32 %745, 1
  %747 = zext i32 %746 to i64
  br label %748

748:                                              ; preds = %755, %742
  %749 = phi i64 [ 0, %742 ], [ %756, %755 ]
  %750 = getelementptr inbounds i8, ptr %729, i64 %749
  %751 = load i8, ptr %750, align 1, !tbaa !16
  %752 = getelementptr inbounds i8, ptr %734, i64 %749
  %753 = load i8, ptr %752, align 1, !tbaa !16
  %754 = icmp eq i8 %751, %753
  br i1 %754, label %755, label %758

755:                                              ; preds = %748
  %756 = add nuw nsw i64 %749, 1
  %757 = icmp eq i64 %756, %747
  br i1 %757, label %758, label %748, !llvm.loop !159

758:                                              ; preds = %755, %748
  %759 = phi i64 [ %749, %748 ], [ %747, %755 ]
  %760 = trunc i64 %759 to i32
  br label %761

761:                                              ; preds = %758, %724
  %762 = phi i32 [ 0, %724 ], [ %760, %758 ]
  %763 = icmp eq i32 %762, %726
  br i1 %763, label %764, label %766

764:                                              ; preds = %761
  %765 = add nsw i32 %732, %726
  br label %1011

766:                                              ; preds = %761
  %767 = icmp eq i32 %762, %738
  br i1 %767, label %768, label %770

768:                                              ; preds = %766
  %769 = add nsw i32 %738, %732
  br label %1011

770:                                              ; preds = %766
  %771 = add nsw i32 %738, %726
  %772 = add nsw i32 %771, 1
  %773 = sext i32 %772 to i64
  %774 = shl nsw i64 %773, 2
  %775 = call ptr @xmalloc(i64 noundef %774) #33
  %776 = call ptr @xmalloc(i64 noundef %774) #33
  %777 = icmp slt i32 %771, 0
  br i1 %777, label %781, label %778

778:                                              ; preds = %770
  %779 = zext i32 %772 to i64
  %780 = shl nuw nsw i64 %779, 2
  call void @llvm.memset.p0.i64(ptr align 4 %775, i8 -1, i64 %780, i1 false), !tbaa !19
  br label %781

781:                                              ; preds = %778, %770
  %782 = zext i32 %726 to i64
  %783 = getelementptr inbounds i32, ptr %775, i64 %782
  store i32 %762, ptr %783, align 4, !tbaa !19
  %784 = zext i32 %740 to i64
  %785 = shl nuw nsw i64 %784, 2
  %786 = call ptr @xmalloc(i64 noundef %785) #33
  %787 = call ptr @xmalloc(i64 noundef %785) #33
  %788 = icmp eq i32 %726, 0
  br i1 %788, label %792, label %789

789:                                              ; preds = %781
  %790 = getelementptr i8, ptr %786, i64 4
  %791 = shl nuw nsw i64 %782, 2
  call void @llvm.memset.p0.i64(ptr align 4 %790, i8 -1, i64 %791, i1 false), !tbaa !19
  br label %792

792:                                              ; preds = %789, %781
  %793 = load i32, ptr %783, align 4, !tbaa !19
  store i32 %793, ptr %786, align 4, !tbaa !19
  store i32 %726, ptr %787, align 4, !tbaa !19
  %794 = sdiv i32 %739, 2
  %795 = shl nsw i32 %739, 1
  %796 = sext i32 %738 to i64
  %797 = add nuw nsw i32 %726, 2
  br label %798

798:                                              ; preds = %975, %792
  %799 = phi i64 [ %806, %975 ], [ %782, %792 ]
  %800 = phi i64 [ %808, %975 ], [ 0, %792 ]
  %801 = phi i64 [ %977, %975 ], [ 1, %792 ]
  %802 = phi i32 [ %979, %975 ], [ %797, %792 ]
  %803 = phi i32 [ %807, %975 ], [ %726, %792 ]
  %804 = phi i32 [ %978, %975 ], [ -1, %792 ]
  %805 = phi i32 [ %976, %975 ], [ %740, %792 ]
  %806 = add nsw i64 %799, -1
  %807 = add nsw i32 %803, -1
  %808 = add nuw nsw i64 %800, 1
  %809 = getelementptr inbounds i32, ptr %786, i64 %800
  %810 = load i32, ptr %809, align 4, !tbaa !19
  %811 = icmp slt i32 %794, %810
  br i1 %811, label %812, label %820

812:                                              ; preds = %798
  %813 = icmp sgt i32 %795, %810
  br i1 %813, label %814, label %816

814:                                              ; preds = %812
  %815 = load i32, ptr getelementptr inbounds (%struct._options_t, ptr @options, i64 0, i32 5), align 4, !tbaa !59
  br label %820

816:                                              ; preds = %812
  %817 = sitofp i32 %810 to double
  %818 = call double @llvm.fmuladd.f64(double %817, double 0x3FC3333333333334, double 1.000000e+00)
  %819 = fptosi double %818 to i32
  br label %820

820:                                              ; preds = %816, %814, %798
  %821 = phi i32 [ %815, %814 ], [ %819, %816 ], [ 2, %798 ]
  %822 = sext i32 %821 to i64
  %823 = icmp sgt i64 %800, %822
  br i1 %823, label %824, label %844

824:                                              ; preds = %820
  %825 = icmp eq i64 %800, 0
  br i1 %825, label %981, label %826

826:                                              ; preds = %824
  %827 = add nsw i64 %800, -1
  %828 = and i64 %827, 4294967295
  %829 = getelementptr inbounds i32, ptr %786, i64 %828
  %830 = load i32, ptr %829, align 4, !tbaa !19
  %831 = icmp slt i32 %794, %830
  br i1 %831, label %832, label %840

832:                                              ; preds = %826
  %833 = icmp sgt i32 %795, %830
  br i1 %833, label %834, label %836

834:                                              ; preds = %832
  %835 = load i32, ptr getelementptr inbounds (%struct._options_t, ptr @options, i64 0, i32 5), align 4, !tbaa !59
  br label %840

836:                                              ; preds = %832
  %837 = sitofp i32 %830 to double
  %838 = call double @llvm.fmuladd.f64(double %837, double 0x3FC3333333333334, double 1.000000e+00)
  %839 = fptosi double %838 to i32
  br label %840

840:                                              ; preds = %836, %834, %826
  %841 = phi i32 [ %835, %834 ], [ %839, %836 ], [ 2, %826 ]
  %842 = sext i32 %841 to i64
  %843 = icmp sgt i64 %827, %842
  br i1 %843, label %983, label %844

844:                                              ; preds = %840, %820
  %845 = icmp sgt i32 %807, %805
  br i1 %845, label %846, label %850

846:                                              ; preds = %844
  %847 = load i32, ptr %783, align 4, !tbaa !19
  %848 = getelementptr inbounds i32, ptr %786, i64 %801
  store i32 %847, ptr %848, align 4, !tbaa !19
  %849 = getelementptr inbounds i32, ptr %787, i64 %801
  store i32 %726, ptr %849, align 4, !tbaa !19
  br label %975

850:                                              ; preds = %844
  %851 = xor i64 %800, -1
  %852 = add nsw i64 %851, %782
  %853 = add nuw nsw i64 %801, %782
  %854 = add nsw i64 %853, -1
  %855 = getelementptr inbounds i32, ptr %775, i64 %854
  %856 = sub nsw i64 %782, %800
  %857 = getelementptr inbounds i32, ptr %775, i64 %856
  br label %863

858:                                              ; preds = %947
  %859 = add nsw i64 %864, 1
  %860 = add i32 %865, 1
  %861 = trunc i64 %859 to i32
  %862 = icmp eq i32 %802, %861
  br i1 %862, label %951, label %863, !llvm.loop !160

863:                                              ; preds = %858, %850
  %864 = phi i64 [ %806, %850 ], [ %859, %858 ]
  %865 = phi i32 [ %804, %850 ], [ %860, %858 ]
  %866 = icmp eq i64 %864, %852
  br i1 %866, label %867, label %870

867:                                              ; preds = %863
  %868 = load i32, ptr %857, align 4, !tbaa !19
  %869 = add nsw i32 %868, 1
  br label %898

870:                                              ; preds = %863
  %871 = icmp eq i64 %864, %853
  br i1 %871, label %872, label %874

872:                                              ; preds = %870
  %873 = load i32, ptr %855, align 4, !tbaa !19
  br label %898

874:                                              ; preds = %870
  %875 = getelementptr inbounds i32, ptr %775, i64 %864
  %876 = load i32, ptr %875, align 4, !tbaa !19
  %877 = add nsw i64 %864, 1
  %878 = getelementptr inbounds i32, ptr %775, i64 %877
  %879 = load i32, ptr %878, align 4, !tbaa !19
  %880 = icmp slt i32 %876, %879
  br i1 %880, label %881, label %885

881:                                              ; preds = %874
  %882 = add nsw i64 %864, -1
  %883 = getelementptr inbounds i32, ptr %775, i64 %882
  %884 = load i32, ptr %883, align 4, !tbaa !19
  br label %891

885:                                              ; preds = %874
  %886 = add nsw i32 %876, 1
  %887 = add nsw i64 %864, -1
  %888 = getelementptr inbounds i32, ptr %775, i64 %887
  %889 = load i32, ptr %888, align 4, !tbaa !19
  %890 = icmp slt i32 %886, %889
  br i1 %890, label %891, label %898

891:                                              ; preds = %885, %881
  %892 = phi i32 [ %884, %881 ], [ %889, %885 ]
  %893 = add nsw i32 %879, 1
  %894 = icmp slt i32 %893, %892
  %895 = icmp slt i32 %879, %876
  %896 = or i1 %895, %894
  %897 = select i1 %896, i32 %892, i32 %893
  br label %898

898:                                              ; preds = %891, %885, %872, %867
  %899 = phi i32 [ %869, %867 ], [ %873, %872 ], [ %886, %885 ], [ %897, %891 ]
  %900 = trunc i64 %864 to i32
  %901 = sub i32 %900, %726
  %902 = add i32 %899, %901
  %903 = icmp sgt i32 %899, -1
  br i1 %903, label %904, label %933

904:                                              ; preds = %898
  %905 = icmp slt i32 %899, %726
  %906 = icmp slt i32 %902, %738
  %907 = and i1 %905, %906
  br i1 %907, label %908, label %933

908:                                              ; preds = %904
  %909 = add i32 %899, %865
  %910 = sext i32 %909 to i64
  %911 = zext i32 %899 to i64
  br label %912

912:                                              ; preds = %920, %908
  %913 = phi i64 [ %911, %908 ], [ %921, %920 ]
  %914 = phi i64 [ %910, %908 ], [ %923, %920 ]
  %915 = getelementptr inbounds i8, ptr %729, i64 %913
  %916 = load i8, ptr %915, align 1, !tbaa !16
  %917 = getelementptr inbounds i8, ptr %734, i64 %914
  %918 = load i8, ptr %917, align 1, !tbaa !16
  %919 = icmp eq i8 %916, %918
  br i1 %919, label %920, label %927

920:                                              ; preds = %912
  %921 = add nuw nsw i64 %913, 1
  %922 = trunc i64 %921 to i32
  %923 = add nsw i64 %914, 1
  %924 = icmp sgt i32 %726, %922
  %925 = icmp slt i64 %923, %796
  %926 = select i1 %924, i1 %925, i1 false
  br i1 %926, label %912, label %929, !llvm.loop !161

927:                                              ; preds = %912
  %.lcssa24 = phi i64 [ %913, %912 ]
  %.lcssa22 = phi i64 [ %914, %912 ]
  %928 = trunc i64 %.lcssa24 to i32
  br label %929

929:                                              ; preds = %927, %920
  %930 = phi i32 [ %928, %927 ], [ %922, %920 ]
  %931 = phi i64 [ %.lcssa22, %927 ], [ %923, %920 ]
  %932 = trunc i64 %931 to i32
  br label %933

933:                                              ; preds = %929, %904, %898
  %934 = phi i32 [ %899, %898 ], [ %899, %904 ], [ %930, %929 ]
  %935 = phi i32 [ %902, %898 ], [ %902, %904 ], [ %932, %929 ]
  %936 = getelementptr inbounds i32, ptr %776, i64 %864
  store i32 %934, ptr %936, align 4, !tbaa !19
  %937 = icmp eq i32 %934, %726
  %938 = icmp eq i32 %935, %738
  %939 = select i1 %937, i1 %938, i1 false
  br i1 %939, label %940, label %943

940:                                              ; preds = %933
  %.lcssa36 = phi i64 [ %801, %933 ]
  %941 = trunc i64 %.lcssa36 to i32
  call void @free(ptr noundef %775) #33
  call void @free(ptr noundef nonnull %776) #33
  call void @free(ptr noundef %786) #33
  call void @free(ptr noundef %787) #33
  %942 = add nsw i32 %738, %732
  br label %1011

943:                                              ; preds = %933
  br i1 %937, label %944, label %947

944:                                              ; preds = %943
  %.lcssa37 = phi i64 [ %801, %943 ]
  %.lcssa27 = phi i32 [ %935, %943 ]
  %945 = trunc i64 %.lcssa37 to i32
  call void @free(ptr noundef nonnull %776) #33
  call void @free(ptr noundef %775) #33
  call void @free(ptr noundef %786) #33
  call void @free(ptr noundef %787) #33
  %946 = add nsw i32 %.lcssa27, %732
  br label %1011

947:                                              ; preds = %943
  br i1 %938, label %948, label %858

948:                                              ; preds = %947
  %.lcssa38 = phi i64 [ %801, %947 ]
  %.lcssa32 = phi i32 [ %934, %947 ]
  %949 = trunc i64 %.lcssa38 to i32
  call void @free(ptr noundef nonnull %776) #33
  call void @free(ptr noundef %775) #33
  call void @free(ptr noundef %786) #33
  call void @free(ptr noundef %787) #33
  %950 = add nsw i32 %738, %732
  br label %1011

951:                                              ; preds = %858
  %952 = load i32, ptr %783, align 4, !tbaa !19
  %953 = getelementptr inbounds i32, ptr %786, i64 %801
  store i32 %952, ptr %953, align 4, !tbaa !19
  %954 = getelementptr inbounds i32, ptr %787, i64 %801
  store i32 %726, ptr %954, align 4, !tbaa !19
  br label %955

955:                                              ; preds = %963, %951
  %956 = phi i64 [ %964, %963 ], [ %806, %951 ]
  %957 = getelementptr inbounds i32, ptr %776, i64 %956
  %958 = load i32, ptr %957, align 4, !tbaa !19
  %959 = load i32, ptr %953, align 4, !tbaa !19
  %960 = icmp sgt i32 %958, %959
  br i1 %960, label %961, label %963

961:                                              ; preds = %955
  store i32 %958, ptr %953, align 4, !tbaa !19
  %962 = trunc i64 %956 to i32
  store i32 %962, ptr %954, align 4, !tbaa !19
  br label %963

963:                                              ; preds = %961, %955
  %964 = add nsw i64 %956, 1
  %965 = trunc i64 %964 to i32
  %966 = icmp eq i32 %802, %965
  br i1 %966, label %967, label %955, !llvm.loop !162

967:                                              ; preds = %967, %963
  %968 = phi i64 [ %972, %967 ], [ %806, %963 ]
  %969 = getelementptr inbounds i32, ptr %776, i64 %968
  %970 = load i32, ptr %969, align 4, !tbaa !19
  %971 = getelementptr inbounds i32, ptr %775, i64 %968
  store i32 %970, ptr %971, align 4, !tbaa !19
  %972 = add nsw i64 %968, 1
  %973 = trunc i64 %972 to i32
  %974 = icmp eq i32 %802, %973
  br i1 %974, label %975, label %967, !llvm.loop !163

975:                                              ; preds = %967, %846
  %976 = add nuw nsw i32 %805, 1
  %977 = add nuw nsw i64 %801, 1
  %978 = add nsw i32 %804, -1
  %979 = add nuw nsw i32 %802, 1
  %980 = icmp eq i64 %808, %784
  br i1 %980, label %985, label %798, !llvm.loop !164

981:                                              ; preds = %824
  %.lcssa34 = phi i64 [ %801, %824 ]
  %982 = trunc i64 %.lcssa34 to i32
  br label %985

983:                                              ; preds = %840
  %.lcssa35 = phi i64 [ %801, %840 ]
  %984 = trunc i64 %.lcssa35 to i32
  br label %985

985:                                              ; preds = %983, %981, %975
  %986 = phi i32 [ %982, %981 ], [ %984, %983 ], [ %797, %975 ]
  %987 = call i32 @llvm.smin.i32(i32 %986, i32 0)
  br label %988

988:                                              ; preds = %991, %985
  %989 = phi i32 [ %986, %985 ], [ %995, %991 ]
  %990 = icmp sgt i32 %989, 0
  br i1 %990, label %991, label %1001

991:                                              ; preds = %988
  %992 = zext i32 %989 to i64
  %993 = getelementptr inbounds i32, ptr %786, i64 %992
  %994 = load i32, ptr %993, align 4, !tbaa !19
  %995 = add nsw i32 %989, -1
  %996 = zext i32 %995 to i64
  %997 = getelementptr inbounds i32, ptr %786, i64 %996
  %998 = load i32, ptr %997, align 4, !tbaa !19
  %999 = sub nsw i32 %994, %998
  %1000 = icmp slt i32 %999, 3
  br i1 %1000, label %988, label %1001, !llvm.loop !165

1001:                                             ; preds = %991, %988
  %1002 = phi i32 [ %987, %988 ], [ %989, %991 ]
  %1003 = sext i32 %1002 to i64
  %1004 = getelementptr inbounds i32, ptr %786, i64 %1003
  %1005 = load i32, ptr %1004, align 4, !tbaa !19
  %1006 = getelementptr inbounds i32, ptr %787, i64 %1003
  %1007 = load i32, ptr %1006, align 4, !tbaa !19
  %1008 = sub i32 %732, %726
  %1009 = add i32 %1008, %1005
  %1010 = add i32 %1009, %1007
  call void @free(ptr noundef %786) #33
  call void @free(ptr noundef %787) #33
  call void @free(ptr noundef %775) #33
  call void @free(ptr noundef %776) #33
  br label %1011

1011:                                             ; preds = %1001, %948, %944, %940, %768, %764
  %1012 = phi i32 [ %726, %764 ], [ %738, %768 ], [ %1005, %1001 ], [ %726, %940 ], [ %726, %944 ], [ %.lcssa32, %948 ]
  %1013 = phi i32 [ %765, %764 ], [ %769, %768 ], [ %1010, %1001 ], [ %942, %940 ], [ %946, %944 ], [ %950, %948 ]
  %1014 = phi i32 [ 0, %764 ], [ 0, %768 ], [ %1002, %1001 ], [ %941, %940 ], [ %945, %944 ], [ %949, %948 ]
  %1015 = add nsw i32 %1012, %722
  %1016 = load i32, ptr %721, align 4, !tbaa !107
  %1017 = sub nsw i32 %1015, %1016
  %1018 = load i32, ptr getelementptr inbounds (%struct._options_t, ptr @options, i64 0, i32 12), align 8, !tbaa !52
  %1019 = mul nsw i32 %1017, %1018
  %1020 = load i32, ptr getelementptr inbounds (%struct._options_t, ptr @options, i64 0, i32 10), align 8, !tbaa !65
  %1021 = mul nsw i32 %1020, %1014
  %1022 = add nsw i32 %1021, %1019
  %1023 = icmp sgt i32 %1022, -1
  br i1 %1023, label %1024, label %1025

1024:                                             ; preds = %1011
  store i32 %1015, ptr %721, align 4, !tbaa !107
  store i32 %1013, ptr %731, align 4, !tbaa !39
  br label %1025

1025:                                             ; preds = %1024, %1011, %718, %558, %555
  %1026 = load i32, ptr %83, align 8, !tbaa !37
  %1027 = icmp ugt i32 %1026, 1
  br i1 %1027, label %1028, label %1804

1028:                                             ; preds = %1799, %1025
  %1029 = phi i32 [ %1800, %1799 ], [ %1026, %1025 ]
  %1030 = phi i32 [ %1802, %1799 ], [ 1, %1025 ]
  %1031 = load ptr, ptr %77, align 8, !tbaa !16
  %1032 = add i32 %1030, -1
  %1033 = zext i32 %1032 to i64
  %1034 = getelementptr inbounds ptr, ptr %1031, i64 %1033
  %1035 = load ptr, ptr %1034, align 8, !tbaa !7
  %1036 = zext i32 %1030 to i64
  %1037 = getelementptr inbounds ptr, ptr %1031, i64 %1036
  %1038 = load ptr, ptr %1037, align 8, !tbaa !7
  %1039 = getelementptr inbounds %struct._exon_t, ptr %1038, i64 0, i32 1
  %1040 = load i32, ptr %1039, align 4, !tbaa !45
  %1041 = getelementptr inbounds %struct._exon_t, ptr %1035, i64 0, i32 3
  %1042 = load i32, ptr %1041, align 4, !tbaa !107
  %1043 = xor i32 %1042, -1
  %1044 = add i32 %1040, %1043
  %1045 = icmp sgt i32 %1044, 0
  br i1 %1045, label %1046, label %1799

1046:                                             ; preds = %1028
  %1047 = load i32, ptr %1038, align 4, !tbaa !44
  %1048 = add i32 %1047, -1
  %1049 = getelementptr inbounds %struct._exon_t, ptr %1035, i64 0, i32 2
  %1050 = load i32, ptr %1049, align 4, !tbaa !39
  %1051 = icmp ugt i32 %1048, %1050
  br i1 %1051, label %1052, label %1799

1052:                                             ; preds = %1046
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %15) #32
  %1053 = icmp ult i32 %1044, 501
  %1054 = load i32, ptr %38, align 4, !tbaa !135
  %1055 = load ptr, ptr %37, align 8, !tbaa !133
  br i1 %1053, label %1056, label %1694

1056:                                             ; preds = %1052
  %1057 = load ptr, ptr %27, align 8, !tbaa !71
  %1058 = zext i32 %1042 to i64
  %1059 = getelementptr inbounds i8, ptr %1057, i64 %1058
  %1060 = zext i32 %1050 to i64
  %1061 = getelementptr inbounds i8, ptr %1055, i64 %1060
  %1062 = xor i32 %1050, -1
  %1063 = add i32 %1047, %1062
  %1064 = icmp ugt i32 %1063, 999999
  br i1 %1064, label %1607, label %1065

1065:                                             ; preds = %1056
  %1066 = sub nsw i32 %1063, %1044
  %1067 = uitofp i32 %1044 to double
  %1068 = call double @llvm.fmuladd.f64(double %1067, double 2.000000e-01, double 1.000000e+00)
  %1069 = fptoui double %1068 to i32
  %1070 = call i32 @llvm.umax.i32(i32 %1069, i32 %1054)
  %1071 = icmp slt i32 %1066, 0
  br i1 %1071, label %1072, label %1109

1072:                                             ; preds = %1065
  %1073 = uitofp i32 %1054 to double
  %1074 = uitofp i32 %1063 to double
  %1075 = fmul double %1074, 1.200000e+00
  %1076 = fcmp olt double %1075, %1073
  %1077 = select i1 %1076, double %1075, double %1073
  %1078 = fcmp ult double %1077, %1067
  br i1 %1078, label %1107, label %1079

1079:                                             ; preds = %1072
  %1080 = add nuw i32 %1050, 1
  %1081 = add i32 %1042, 1
  %1082 = add i32 %1040, -1
  %1083 = call ptr @xmalloc(i64 noundef 32) #33
  store i32 %1080, ptr %1083, align 4, !tbaa !44
  %1084 = getelementptr inbounds %struct._exon_t, ptr %1083, i64 0, i32 1
  store i32 %1081, ptr %1084, align 4, !tbaa !45
  %1085 = getelementptr inbounds %struct._exon_t, ptr %1083, i64 0, i32 2
  store i32 %1048, ptr %1085, align 4, !tbaa !39
  %1086 = getelementptr inbounds %struct._exon_t, ptr %1083, i64 0, i32 3
  store i32 %1082, ptr %1086, align 4, !tbaa !107
  %1087 = load i32, ptr %31, align 4, !tbaa !132
  %1088 = load i32, ptr %32, align 8, !tbaa !37
  %1089 = icmp ugt i32 %1087, %1088
  %1090 = load ptr, ptr %12, align 8, !tbaa !16
  br i1 %1089, label %1097, label %1091

1091:                                             ; preds = %1079
  %1092 = add i32 %1087, 5
  store i32 %1092, ptr %31, align 4, !tbaa !132
  %1093 = zext i32 %1092 to i64
  %1094 = shl nuw nsw i64 %1093, 3
  %1095 = call ptr @xrealloc(ptr noundef %1090, i64 noundef %1094) #33
  store ptr %1095, ptr %12, align 8, !tbaa !16
  %1096 = load i32, ptr %32, align 8, !tbaa !37
  br label %1097

1097:                                             ; preds = %1091, %1079
  %1098 = phi i32 [ %1096, %1091 ], [ %1088, %1079 ]
  %1099 = phi ptr [ %1095, %1091 ], [ %1090, %1079 ]
  %1100 = add i32 %1098, 1
  store i32 %1100, ptr %32, align 8, !tbaa !37
  %1101 = zext i32 %1098 to i64
  %1102 = getelementptr inbounds ptr, ptr %1099, i64 %1101
  store ptr %1083, ptr %1102, align 8, !tbaa !7
  %1103 = sub nsw i32 %1044, %1063
  %1104 = call double @llvm.fmuladd.f64(double %1074, double 2.000000e-01, double 1.000000e+00)
  %1105 = fptoui double %1104 to i32
  %1106 = add i32 %1103, %1105
  br label %1607

1107:                                             ; preds = %1072
  %1108 = add i32 %1070, 1
  br label %1607

1109:                                             ; preds = %1065
  %1110 = zext i32 %1044 to i64
  %1111 = zext i32 %1063 to i64
  br label %1112

1112:                                             ; preds = %1120, %1109
  %1113 = phi i64 [ %1124, %1120 ], [ %1111, %1109 ]
  %1114 = phi i64 [ %1121, %1120 ], [ %1110, %1109 ]
  %1115 = trunc i64 %1114 to i32
  %1116 = icmp sgt i32 %1115, 0
  %1117 = trunc i64 %1113 to i32
  %1118 = icmp sgt i32 %1117, 0
  %1119 = and i1 %1118, %1116
  br i1 %1119, label %1120, label %1128

1120:                                             ; preds = %1112
  %1121 = add nsw i64 %1114, -1
  %1122 = getelementptr inbounds i8, ptr %1059, i64 %1121
  %1123 = load i8, ptr %1122, align 1, !tbaa !16
  %1124 = add nsw i64 %1113, -1
  %1125 = getelementptr inbounds i8, ptr %1061, i64 %1124
  %1126 = load i8, ptr %1125, align 1, !tbaa !16
  %1127 = icmp eq i8 %1123, %1126
  br i1 %1127, label %1112, label %1155, !llvm.loop !166

1128:                                             ; preds = %1112
  %.lcssa40 = phi i32 [ %1115, %1112 ]
  %1129 = icmp eq i32 %.lcssa40, 0
  br i1 %1129, label %1130, label %1155

1130:                                             ; preds = %1128
  %1131 = add i32 %1050, 1
  %1132 = add i32 %1131, %1066
  %1133 = add i32 %1042, 1
  %1134 = add i32 %1040, -1
  %1135 = call ptr @xmalloc(i64 noundef 32) #33
  store i32 %1132, ptr %1135, align 4, !tbaa !44
  %1136 = getelementptr inbounds %struct._exon_t, ptr %1135, i64 0, i32 1
  store i32 %1133, ptr %1136, align 4, !tbaa !45
  %1137 = getelementptr inbounds %struct._exon_t, ptr %1135, i64 0, i32 2
  store i32 %1048, ptr %1137, align 4, !tbaa !39
  %1138 = getelementptr inbounds %struct._exon_t, ptr %1135, i64 0, i32 3
  store i32 %1134, ptr %1138, align 4, !tbaa !107
  %1139 = load i32, ptr %31, align 4, !tbaa !132
  %1140 = load i32, ptr %32, align 8, !tbaa !37
  %1141 = icmp ugt i32 %1139, %1140
  %1142 = load ptr, ptr %12, align 8, !tbaa !16
  br i1 %1141, label %1149, label %1143

1143:                                             ; preds = %1130
  %1144 = add i32 %1139, 5
  store i32 %1144, ptr %31, align 4, !tbaa !132
  %1145 = zext i32 %1144 to i64
  %1146 = shl nuw nsw i64 %1145, 3
  %1147 = call ptr @xrealloc(ptr noundef %1142, i64 noundef %1146) #33
  store ptr %1147, ptr %12, align 8, !tbaa !16
  %1148 = load i32, ptr %32, align 8, !tbaa !37
  br label %1149

1149:                                             ; preds = %1143, %1130
  %1150 = phi i32 [ %1148, %1143 ], [ %1140, %1130 ]
  %1151 = phi ptr [ %1147, %1143 ], [ %1142, %1130 ]
  %1152 = add i32 %1150, 1
  store i32 %1152, ptr %32, align 8, !tbaa !37
  %1153 = zext i32 %1150 to i64
  %1154 = getelementptr inbounds ptr, ptr %1151, i64 %1153
  store ptr %1135, ptr %1154, align 8, !tbaa !7
  br label %1610

1155:                                             ; preds = %1128, %1120
  %.lcssa41 = phi i32 [ %.lcssa40, %1128 ], [ %1115, %1120 ]
  %1156 = add i32 %1070, %1063
  %1157 = add i32 %1156, 1
  %1158 = zext i32 %1157 to i64
  %1159 = shl nuw nsw i64 %1158, 2
  %1160 = call ptr @xmalloc(i64 noundef %1159) #33
  %1161 = call ptr @xmalloc(i64 noundef %1159) #33
  %1162 = sub i32 %1040, %1042
  %1163 = zext i32 %1156 to i64
  br label %1164

1164:                                             ; preds = %1164, %1155
  %1165 = phi i64 [ 0, %1155 ], [ %1168, %1164 ]
  %1166 = getelementptr inbounds i32, ptr %1160, i64 %1165
  store i32 %1162, ptr %1166, align 4, !tbaa !19
  %1167 = getelementptr inbounds i32, ptr %1161, i64 %1165
  store i32 %1162, ptr %1167, align 4, !tbaa !19
  %1168 = add nuw nsw i64 %1165, 1
  %1169 = icmp eq i64 %1165, %1163
  br i1 %1169, label %1170, label %1164, !llvm.loop !167

1170:                                             ; preds = %1164
  %1171 = sext i32 %1070 to i64
  %1172 = getelementptr inbounds i32, ptr %1160, i64 %1171
  store i32 %.lcssa41, ptr %1172, align 4, !tbaa !19
  %1173 = add i32 %1070, -1
  %1174 = add i32 %1070, 1
  %1175 = call i32 @llvm.umin.i32(i32 %1063, i32 %1044)
  %1176 = icmp eq i32 %1175, 0
  br i1 %1176, label %1191, label %1177

1177:                                             ; preds = %1170
  %1178 = zext i32 %1175 to i64
  br label %1179

1179:                                             ; preds = %1186, %1177
  %1180 = phi i64 [ 0, %1177 ], [ %1187, %1186 ]
  %1181 = getelementptr inbounds i8, ptr %1059, i64 %1180
  %1182 = load i8, ptr %1181, align 1, !tbaa !16
  %1183 = getelementptr inbounds i8, ptr %1061, i64 %1180
  %1184 = load i8, ptr %1183, align 1, !tbaa !16
  %1185 = icmp eq i8 %1182, %1184
  br i1 %1185, label %1186, label %1189

1186:                                             ; preds = %1179
  %1187 = add nuw nsw i64 %1180, 1
  %1188 = icmp eq i64 %1187, %1178
  br i1 %1188, label %1191, label %1179, !llvm.loop !168

1189:                                             ; preds = %1179
  %.lcssa42 = phi i64 [ %1180, %1179 ]
  %1190 = trunc i64 %.lcssa42 to i32
  br label %1191

1191:                                             ; preds = %1189, %1186, %1170
  %1192 = phi i32 [ 0, %1170 ], [ %1190, %1189 ], [ %1175, %1186 ]
  %1193 = icmp eq i32 %1192, %1044
  br i1 %1193, label %1194, label %1219

1194:                                             ; preds = %1191
  %1195 = add i32 %1050, 1
  %1196 = add i32 %1042, 1
  %1197 = add i32 %1050, %1044
  %1198 = add i32 %1040, -1
  %1199 = call ptr @xmalloc(i64 noundef 32) #33
  store i32 %1195, ptr %1199, align 4, !tbaa !44
  %1200 = getelementptr inbounds %struct._exon_t, ptr %1199, i64 0, i32 1
  store i32 %1196, ptr %1200, align 4, !tbaa !45
  %1201 = getelementptr inbounds %struct._exon_t, ptr %1199, i64 0, i32 2
  store i32 %1197, ptr %1201, align 4, !tbaa !39
  %1202 = getelementptr inbounds %struct._exon_t, ptr %1199, i64 0, i32 3
  store i32 %1198, ptr %1202, align 4, !tbaa !107
  %1203 = load i32, ptr %31, align 4, !tbaa !132
  %1204 = load i32, ptr %32, align 8, !tbaa !37
  %1205 = icmp ugt i32 %1203, %1204
  %1206 = load ptr, ptr %12, align 8, !tbaa !16
  br i1 %1205, label %1213, label %1207

1207:                                             ; preds = %1194
  %1208 = add i32 %1203, 5
  store i32 %1208, ptr %31, align 4, !tbaa !132
  %1209 = zext i32 %1208 to i64
  %1210 = shl nuw nsw i64 %1209, 3
  %1211 = call ptr @xrealloc(ptr noundef %1206, i64 noundef %1210) #33
  store ptr %1211, ptr %12, align 8, !tbaa !16
  %1212 = load i32, ptr %32, align 8, !tbaa !37
  br label %1213

1213:                                             ; preds = %1207, %1194
  %1214 = phi i32 [ %1212, %1207 ], [ %1204, %1194 ]
  %1215 = phi ptr [ %1211, %1207 ], [ %1206, %1194 ]
  %1216 = add i32 %1214, 1
  store i32 %1216, ptr %32, align 8, !tbaa !37
  %1217 = zext i32 %1214 to i64
  %1218 = getelementptr inbounds ptr, ptr %1215, i64 %1217
  store ptr %1199, ptr %1218, align 8, !tbaa !7
  call void @free(ptr noundef %1160) #33
  call void @free(ptr noundef %1161) #33
  br label %1607

1219:                                             ; preds = %1191
  %1220 = call ptr @xmalloc(i64 noundef %1159) #33
  %1221 = call ptr @xmalloc(i64 noundef %1159) #33
  br label %1222

1222:                                             ; preds = %1222, %1219
  %1223 = phi i64 [ 0, %1219 ], [ %1226, %1222 ]
  %1224 = getelementptr inbounds i32, ptr %1220, i64 %1223
  store i32 -1, ptr %1224, align 4, !tbaa !19
  %1225 = getelementptr inbounds i32, ptr %1221, i64 %1223
  store i32 -1, ptr %1225, align 4, !tbaa !19
  %1226 = add nuw nsw i64 %1223, 1
  %1227 = icmp eq i64 %1223, %1163
  br i1 %1227, label %1228, label %1222, !llvm.loop !169

1228:                                             ; preds = %1222
  %1229 = getelementptr inbounds i32, ptr %1220, i64 %1171
  store i32 %1192, ptr %1229, align 4, !tbaa !19
  %1230 = zext i32 %1174 to i64
  %1231 = shl nuw nsw i64 %1230, 2
  %1232 = call ptr @xmalloc(i64 noundef %1231) #33
  %1233 = call ptr @xmalloc(i64 noundef %1231) #33
  %1234 = call ptr @xmalloc(i64 noundef %1231) #33
  %1235 = call ptr @xmalloc(i64 noundef %1231) #33
  %1236 = icmp eq i32 %1070, 0
  br i1 %1236, label %1237, label %1240

1237:                                             ; preds = %1228
  %1238 = load i32, ptr %1172, align 4, !tbaa !19
  store i32 %1238, ptr %1233, align 4, !tbaa !19
  store i32 0, ptr %1235, align 4, !tbaa !19
  %1239 = load i32, ptr %1229, align 4, !tbaa !19
  store i32 %1239, ptr %1232, align 4, !tbaa !19
  store i32 0, ptr %1234, align 4, !tbaa !19
  br label %1526

1240:                                             ; preds = %1228
  %1241 = call i32 @llvm.umax.i32(i32 %1174, i32 2)
  %1242 = zext i32 %1241 to i64
  br label %1243

1243:                                             ; preds = %1243, %1240
  %1244 = phi i64 [ 1, %1240 ], [ %1247, %1243 ]
  %1245 = getelementptr inbounds i32, ptr %1233, i64 %1244
  store i32 %1162, ptr %1245, align 4, !tbaa !19
  %1246 = getelementptr inbounds i32, ptr %1232, i64 %1244
  store i32 -1, ptr %1246, align 4, !tbaa !19
  %1247 = add nuw nsw i64 %1244, 1
  %1248 = icmp eq i64 %1247, %1242
  br i1 %1248, label %1249, label %1243, !llvm.loop !170

1249:                                             ; preds = %1243
  %1250 = load i32, ptr %1172, align 4, !tbaa !19
  store i32 %1250, ptr %1233, align 4, !tbaa !19
  store i32 %1070, ptr %1235, align 4, !tbaa !19
  %1251 = load i32, ptr %1229, align 4, !tbaa !19
  store i32 %1251, ptr %1232, align 4, !tbaa !19
  store i32 %1070, ptr %1234, align 4, !tbaa !19
  %1252 = getelementptr inbounds i32, ptr %1161, i64 %1171
  %1253 = getelementptr inbounds i32, ptr %1221, i64 %1171
  %1254 = sub i32 %1042, %1040
  %1255 = add i32 %1254, %1063
  %1256 = sext i32 %1173 to i64
  %1257 = add i32 %1070, 2
  br label %1258

1258:                                             ; preds = %1516, %1249
  %1259 = phi i32 [ %1525, %1516 ], [ 2, %1249 ]
  %1260 = phi i32 [ %1524, %1516 ], [ -1, %1249 ]
  %1261 = phi i32 [ %1523, %1516 ], [ %1257, %1249 ]
  %1262 = phi i64 [ %1392, %1516 ], [ %1256, %1249 ]
  %1263 = phi i32 [ %1522, %1516 ], [ %1255, %1249 ]
  %1264 = phi i32 [ %1393, %1516 ], [ %1174, %1249 ]
  %1265 = phi i32 [ %1519, %1516 ], [ -1, %1249 ]
  %1266 = phi i32 [ %1518, %1516 ], [ -1, %1249 ]
  %1267 = phi i32 [ %1520, %1516 ], [ 1, %1249 ]
  %1268 = phi i32 [ %1517, %1516 ], [ %1070, %1249 ]
  %1269 = trunc i64 %1262 to i32
  %1270 = icmp slt i32 %1264, %1269
  br i1 %1270, label %1271, label %1276

1271:                                             ; preds = %1258
  %1272 = load i32, ptr %1252, align 4, !tbaa !19
  %1273 = zext i32 %1267 to i64
  %1274 = getelementptr inbounds i32, ptr %1233, i64 %1273
  store i32 %1272, ptr %1274, align 4, !tbaa !19
  %1275 = getelementptr inbounds i32, ptr %1235, i64 %1273
  store i32 %1070, ptr %1275, align 4, !tbaa !19
  br label %1352

1276:                                             ; preds = %1258
  %1277 = sub i32 %1070, %1267
  %1278 = add i32 %1267, %1070
  %1279 = sext i32 %1278 to i64
  %1280 = sext i32 %1277 to i64
  %1281 = add nsw i64 %1279, -1
  %1282 = getelementptr inbounds i32, ptr %1160, i64 %1281
  %1283 = add nsw i64 %1280, 1
  %1284 = getelementptr inbounds i32, ptr %1160, i64 %1283
  br label %1285

1285:                                             ; preds = %1341, %1276
  %1286 = phi i64 [ %1262, %1276 ], [ %1343, %1341 ]
  %1287 = phi i32 [ %1263, %1276 ], [ %1344, %1341 ]
  %1288 = icmp eq i64 %1286, %1280
  br i1 %1288, label %1289, label %1291

1289:                                             ; preds = %1285
  %1290 = load i32, ptr %1284, align 4, !tbaa !19
  br label %1320

1291:                                             ; preds = %1285
  %1292 = icmp eq i64 %1286, %1279
  br i1 %1292, label %1293, label %1296

1293:                                             ; preds = %1291
  %1294 = load i32, ptr %1282, align 4, !tbaa !19
  %1295 = add nsw i32 %1294, -1
  br label %1320

1296:                                             ; preds = %1291
  %1297 = getelementptr inbounds i32, ptr %1160, i64 %1286
  %1298 = load i32, ptr %1297, align 4, !tbaa !19
  %1299 = add nsw i64 %1286, 1
  %1300 = getelementptr inbounds i32, ptr %1160, i64 %1299
  %1301 = load i32, ptr %1300, align 4, !tbaa !19
  %1302 = icmp sgt i32 %1298, %1301
  br i1 %1302, label %1303, label %1307

1303:                                             ; preds = %1296
  %1304 = add nsw i64 %1286, -1
  %1305 = getelementptr inbounds i32, ptr %1160, i64 %1304
  %1306 = load i32, ptr %1305, align 4, !tbaa !19
  br label %1313

1307:                                             ; preds = %1296
  %1308 = add nsw i32 %1298, -1
  %1309 = add nsw i64 %1286, -1
  %1310 = getelementptr inbounds i32, ptr %1160, i64 %1309
  %1311 = load i32, ptr %1310, align 4, !tbaa !19
  %1312 = icmp sgt i32 %1308, %1311
  br i1 %1312, label %1313, label %1320

1313:                                             ; preds = %1307, %1303
  %1314 = phi i32 [ %1306, %1303 ], [ %1311, %1307 ]
  %1315 = icmp slt i32 %1314, %1301
  %1316 = icmp slt i32 %1314, %1298
  %1317 = and i1 %1315, %1316
  %1318 = add nsw i32 %1314, -1
  %1319 = select i1 %1317, i32 %1318, i32 %1301
  br label %1320

1320:                                             ; preds = %1313, %1307, %1293, %1289
  %1321 = phi i32 [ %1290, %1289 ], [ %1295, %1293 ], [ %1308, %1307 ], [ %1319, %1313 ]
  %1322 = zext i32 %1321 to i64
  %1323 = add i32 %1321, %1287
  %1324 = zext i32 %1323 to i64
  br label %1325

1325:                                             ; preds = %1333, %1320
  %1326 = phi i64 [ %1337, %1333 ], [ %1324, %1320 ]
  %1327 = phi i64 [ %1334, %1333 ], [ %1322, %1320 ]
  %1328 = trunc i64 %1327 to i32
  %1329 = icmp sgt i32 %1328, 0
  %1330 = trunc i64 %1326 to i32
  %1331 = icmp sgt i32 %1330, 0
  %1332 = select i1 %1329, i1 %1331, i1 false
  br i1 %1332, label %1333, label %1341

1333:                                             ; preds = %1325
  %1334 = add nsw i64 %1327, -1
  %1335 = getelementptr inbounds i8, ptr %1059, i64 %1334
  %1336 = load i8, ptr %1335, align 1, !tbaa !16
  %1337 = add nsw i64 %1326, -1
  %1338 = getelementptr inbounds i8, ptr %1061, i64 %1337
  %1339 = load i8, ptr %1338, align 1, !tbaa !16
  %1340 = icmp eq i8 %1336, %1339
  br i1 %1340, label %1325, label %1341, !llvm.loop !171

1341:                                             ; preds = %1333, %1325
  %.lcssa43 = phi i32 [ %1328, %1333 ], [ %1328, %1325 ]
  %1342 = getelementptr inbounds i32, ptr %1161, i64 %1286
  store i32 %.lcssa43, ptr %1342, align 4, !tbaa !19
  %1343 = add nsw i64 %1286, 1
  %1344 = add i32 %1287, 1
  %1345 = trunc i64 %1343 to i32
  %1346 = icmp eq i32 %1261, %1345
  br i1 %1346, label %1347, label %1285, !llvm.loop !172

1347:                                             ; preds = %1341
  %1348 = load i32, ptr %1252, align 4, !tbaa !19
  %1349 = zext i32 %1267 to i64
  %1350 = getelementptr inbounds i32, ptr %1233, i64 %1349
  store i32 %1348, ptr %1350, align 4, !tbaa !19
  %1351 = getelementptr inbounds i32, ptr %1235, i64 %1349
  store i32 %1070, ptr %1351, align 4, !tbaa !19
  br label %1359

1352:                                             ; preds = %1369, %1271
  %1353 = phi ptr [ %1274, %1271 ], [ %1350, %1369 ]
  %1354 = phi i64 [ %1273, %1271 ], [ %1349, %1369 ]
  %1355 = icmp eq i32 %1267, 0
  br i1 %1355, label %1388, label %1356

1356:                                             ; preds = %1352
  %1357 = load i32, ptr %1353, align 4, !tbaa !19
  %1358 = icmp slt i32 %1265, 0
  br label %1373

1359:                                             ; preds = %1369, %1347
  %1360 = phi i64 [ %1370, %1369 ], [ %1262, %1347 ]
  %1361 = getelementptr inbounds i32, ptr %1161, i64 %1360
  %1362 = load i32, ptr %1361, align 4, !tbaa !19
  %1363 = getelementptr inbounds i32, ptr %1160, i64 %1360
  store i32 %1362, ptr %1363, align 4, !tbaa !19
  store i32 %1162, ptr %1361, align 4, !tbaa !19
  %1364 = load i32, ptr %1363, align 4, !tbaa !19
  %1365 = load i32, ptr %1350, align 4, !tbaa !19
  %1366 = icmp slt i32 %1364, %1365
  br i1 %1366, label %1367, label %1369

1367:                                             ; preds = %1359
  store i32 %1364, ptr %1350, align 4, !tbaa !19
  %1368 = trunc i64 %1360 to i32
  store i32 %1368, ptr %1351, align 4, !tbaa !19
  br label %1369

1369:                                             ; preds = %1367, %1359
  %1370 = add nsw i64 %1360, 1
  %1371 = trunc i64 %1370 to i32
  %1372 = icmp eq i32 %1261, %1371
  br i1 %1372, label %1352, label %1359, !llvm.loop !173

1373:                                             ; preds = %1385, %1356
  %1374 = phi i64 [ 0, %1356 ], [ %1386, %1385 ]
  %1375 = getelementptr inbounds i32, ptr %1232, i64 %1374
  %1376 = load i32, ptr %1375, align 4, !tbaa !19
  %1377 = icmp sgt i32 %1357, %1376
  br i1 %1377, label %1385, label %1378

1378:                                             ; preds = %1373
  %1379 = trunc i64 %1374 to i32
  %1380 = add i32 %1267, %1379
  %1381 = icmp ugt i32 %1268, %1380
  %1382 = icmp eq i32 %1268, %1380
  %1383 = select i1 %1382, i1 %1358, i1 false
  %1384 = select i1 %1381, i1 true, i1 %1383
  br i1 %1384, label %1388, label %1385

1385:                                             ; preds = %1378, %1373
  %1386 = add nuw nsw i64 %1374, 1
  %1387 = icmp eq i64 %1386, %1354
  br i1 %1387, label %1388, label %1373, !llvm.loop !174

1388:                                             ; preds = %1385, %1378, %1352
  %1389 = phi i32 [ %1268, %1352 ], [ %1268, %1385 ], [ %1380, %1378 ]
  %1390 = phi i32 [ %1266, %1352 ], [ %1266, %1385 ], [ %1267, %1378 ]
  %1391 = phi i32 [ %1265, %1352 ], [ %1265, %1385 ], [ %1379, %1378 ]
  %1392 = add i64 %1262, -1
  %1393 = add i32 %1264, 1
  br i1 %1270, label %1394, label %1398

1394:                                             ; preds = %1388
  %1395 = load i32, ptr %1253, align 4, !tbaa !19
  %1396 = getelementptr inbounds i32, ptr %1232, i64 %1354
  store i32 %1395, ptr %1396, align 4, !tbaa !19
  %1397 = getelementptr inbounds i32, ptr %1234, i64 %1354
  store i32 %1070, ptr %1397, align 4, !tbaa !19
  br label %1483

1398:                                             ; preds = %1388
  %1399 = sub i32 %1070, %1267
  %1400 = add nsw i32 %1267, %1070
  %1401 = sext i32 %1400 to i64
  %1402 = sext i32 %1399 to i64
  %1403 = add nsw i64 %1401, -1
  %1404 = getelementptr inbounds i32, ptr %1220, i64 %1403
  %1405 = add nsw i64 %1402, 1
  %1406 = getelementptr inbounds i32, ptr %1220, i64 %1405
  br label %1407

1407:                                             ; preds = %1473, %1398
  %1408 = phi i64 [ %1262, %1398 ], [ %1476, %1473 ]
  %1409 = phi i32 [ %1260, %1398 ], [ %1477, %1473 ]
  %1410 = icmp eq i64 %1408, %1402
  br i1 %1410, label %1411, label %1414

1411:                                             ; preds = %1407
  %1412 = load i32, ptr %1406, align 4, !tbaa !19
  %1413 = add nsw i32 %1412, 1
  br label %1442

1414:                                             ; preds = %1407
  %1415 = icmp eq i64 %1408, %1401
  br i1 %1415, label %1416, label %1418

1416:                                             ; preds = %1414
  %1417 = load i32, ptr %1404, align 4, !tbaa !19
  br label %1442

1418:                                             ; preds = %1414
  %1419 = getelementptr inbounds i32, ptr %1220, i64 %1408
  %1420 = load i32, ptr %1419, align 4, !tbaa !19
  %1421 = add nsw i64 %1408, 1
  %1422 = getelementptr inbounds i32, ptr %1220, i64 %1421
  %1423 = load i32, ptr %1422, align 4, !tbaa !19
  %1424 = icmp slt i32 %1420, %1423
  br i1 %1424, label %1425, label %1429

1425:                                             ; preds = %1418
  %1426 = add nsw i64 %1408, -1
  %1427 = getelementptr inbounds i32, ptr %1220, i64 %1426
  %1428 = load i32, ptr %1427, align 4, !tbaa !19
  br label %1435

1429:                                             ; preds = %1418
  %1430 = add nsw i32 %1420, 1
  %1431 = add nsw i64 %1408, -1
  %1432 = getelementptr inbounds i32, ptr %1220, i64 %1431
  %1433 = load i32, ptr %1432, align 4, !tbaa !19
  %1434 = icmp slt i32 %1430, %1433
  br i1 %1434, label %1435, label %1442

1435:                                             ; preds = %1429, %1425
  %1436 = phi i32 [ %1428, %1425 ], [ %1433, %1429 ]
  %1437 = add nsw i32 %1423, 1
  %1438 = icmp slt i32 %1437, %1436
  %1439 = icmp slt i32 %1423, %1420
  %1440 = or i1 %1439, %1438
  %1441 = select i1 %1440, i32 %1436, i32 %1437
  br label %1442

1442:                                             ; preds = %1435, %1429, %1416, %1411
  %1443 = phi i32 [ %1413, %1411 ], [ %1417, %1416 ], [ %1430, %1429 ], [ %1441, %1435 ]
  %1444 = icmp sgt i32 %1443, -1
  br i1 %1444, label %1445, label %1473

1445:                                             ; preds = %1442
  %1446 = trunc i64 %1408 to i32
  %1447 = sub i32 %1446, %1070
  %1448 = add i32 %1447, %1443
  %1449 = icmp ult i32 %1443, %1044
  %1450 = icmp ult i32 %1448, %1063
  %1451 = select i1 %1449, i1 %1450, i1 false
  br i1 %1451, label %1452, label %1473

1452:                                             ; preds = %1445
  %1453 = add i32 %1443, %1409
  %1454 = zext i32 %1453 to i64
  %1455 = zext i32 %1443 to i64
  br label %1456

1456:                                             ; preds = %1464, %1452
  %1457 = phi i64 [ %1455, %1452 ], [ %1465, %1464 ]
  %1458 = phi i64 [ %1454, %1452 ], [ %1466, %1464 ]
  %1459 = getelementptr inbounds i8, ptr %1059, i64 %1457
  %1460 = load i8, ptr %1459, align 1, !tbaa !16
  %1461 = getelementptr inbounds i8, ptr %1061, i64 %1458
  %1462 = load i8, ptr %1461, align 1, !tbaa !16
  %1463 = icmp eq i8 %1460, %1462
  br i1 %1463, label %1464, label %1470

1464:                                             ; preds = %1456
  %1465 = add nuw nsw i64 %1457, 1
  %1466 = add nuw nsw i64 %1458, 1
  %1467 = icmp ult i64 %1465, %1110
  %1468 = icmp ult i64 %1466, %1111
  %1469 = select i1 %1467, i1 %1468, i1 false
  br i1 %1469, label %1456, label %1470, !llvm.loop !175

1470:                                             ; preds = %1464, %1456
  %1471 = phi i64 [ %1457, %1456 ], [ %1465, %1464 ]
  %1472 = trunc i64 %1471 to i32
  br label %1473

1473:                                             ; preds = %1470, %1445, %1442
  %1474 = phi i32 [ %1443, %1442 ], [ %1443, %1445 ], [ %1472, %1470 ]
  %1475 = getelementptr inbounds i32, ptr %1221, i64 %1408
  store i32 %1474, ptr %1475, align 4, !tbaa !19
  %1476 = add nsw i64 %1408, 1
  %1477 = add i32 %1409, 1
  %1478 = icmp eq i32 %1477, %1259
  br i1 %1478, label %1479, label %1407, !llvm.loop !176

1479:                                             ; preds = %1473
  %1480 = load i32, ptr %1253, align 4, !tbaa !19
  %1481 = getelementptr inbounds i32, ptr %1232, i64 %1354
  store i32 %1480, ptr %1481, align 4, !tbaa !19
  %1482 = getelementptr inbounds i32, ptr %1234, i64 %1354
  store i32 %1070, ptr %1482, align 4, !tbaa !19
  br label %1487

1483:                                             ; preds = %1497, %1394
  %1484 = phi ptr [ %1396, %1394 ], [ %1481, %1497 ]
  %1485 = load i32, ptr %1484, align 4, !tbaa !19
  %1486 = icmp slt i32 %1391, 0
  br label %1501

1487:                                             ; preds = %1497, %1479
  %1488 = phi i64 [ %1498, %1497 ], [ %1262, %1479 ]
  %1489 = getelementptr inbounds i32, ptr %1221, i64 %1488
  %1490 = load i32, ptr %1489, align 4, !tbaa !19
  %1491 = getelementptr inbounds i32, ptr %1220, i64 %1488
  store i32 %1490, ptr %1491, align 4, !tbaa !19
  store i32 -1, ptr %1489, align 4, !tbaa !19
  %1492 = load i32, ptr %1491, align 4, !tbaa !19
  %1493 = load i32, ptr %1481, align 4, !tbaa !19
  %1494 = icmp sgt i32 %1492, %1493
  br i1 %1494, label %1495, label %1497

1495:                                             ; preds = %1487
  store i32 %1492, ptr %1481, align 4, !tbaa !19
  %1496 = trunc i64 %1488 to i32
  store i32 %1496, ptr %1482, align 4, !tbaa !19
  br label %1497

1497:                                             ; preds = %1495, %1487
  %1498 = add nsw i64 %1488, 1
  %1499 = trunc i64 %1498 to i32
  %1500 = icmp eq i32 %1261, %1499
  br i1 %1500, label %1483, label %1487, !llvm.loop !177

1501:                                             ; preds = %1513, %1483
  %1502 = phi i32 [ 0, %1483 ], [ %1514, %1513 ]
  %1503 = zext i32 %1502 to i64
  %1504 = getelementptr inbounds i32, ptr %1233, i64 %1503
  %1505 = load i32, ptr %1504, align 4, !tbaa !19
  %1506 = icmp sgt i32 %1505, %1485
  br i1 %1506, label %1513, label %1507

1507:                                             ; preds = %1501
  %1508 = add i32 %1502, %1267
  %1509 = icmp ugt i32 %1389, %1508
  %1510 = icmp eq i32 %1389, %1508
  %1511 = select i1 %1510, i1 %1486, i1 false
  %1512 = select i1 %1509, i1 true, i1 %1511
  br i1 %1512, label %1516, label %1513

1513:                                             ; preds = %1507, %1501
  %1514 = add i32 %1502, 1
  %1515 = icmp ugt i32 %1514, %1267
  br i1 %1515, label %1516, label %1501, !llvm.loop !178

1516:                                             ; preds = %1513, %1507
  %1517 = phi i32 [ %1389, %1513 ], [ %1508, %1507 ]
  %1518 = phi i32 [ %1390, %1513 ], [ %1502, %1507 ]
  %1519 = phi i32 [ %1391, %1513 ], [ %1267, %1507 ]
  %1520 = add i32 %1267, 1
  %1521 = icmp ugt i32 %1520, %1517
  %1522 = add i32 %1263, -1
  %1523 = add i32 %1261, 1
  %1524 = add i32 %1260, -1
  %1525 = add i32 %1259, 1
  br i1 %1521, label %1526, label %1258, !llvm.loop !179

1526:                                             ; preds = %1516, %1237
  %1527 = phi i32 [ 1, %1237 ], [ %1520, %1516 ]
  %1528 = phi i32 [ -1, %1237 ], [ %1518, %1516 ]
  %1529 = phi i32 [ -1, %1237 ], [ %1519, %1516 ]
  %1530 = icmp ugt i32 %1527, %1070
  br i1 %1530, label %1531, label %1532

1531:                                             ; preds = %1526
  call void @free(ptr noundef %1160) #33
  call void @free(ptr noundef %1161) #33
  call void @free(ptr noundef %1220) #33
  call void @free(ptr noundef %1221) #33
  call void @free(ptr noundef nonnull %1233) #33
  call void @free(ptr noundef %1235) #33
  call void @free(ptr noundef %1232) #33
  call void @free(ptr noundef %1234) #33
  br label %1607

1532:                                             ; preds = %1526
  %1533 = sext i32 %1528 to i64
  %1534 = getelementptr inbounds i32, ptr %1233, i64 %1533
  %1535 = load i32, ptr %1534, align 4, !tbaa !19
  %1536 = sub nsw i32 %1044, %1535
  %1537 = sext i32 %1529 to i64
  %1538 = getelementptr inbounds i32, ptr %1232, i64 %1537
  %1539 = load i32, ptr %1538, align 4, !tbaa !19
  %1540 = icmp slt i32 %1536, %1539
  %1541 = getelementptr inbounds i32, ptr %1235, i64 %1533
  %1542 = load i32, ptr %1541, align 4, !tbaa !19
  %1543 = select i1 %1540, i32 %1539, i32 %1535
  %1544 = icmp eq i32 %1543, 0
  br i1 %1544, label %1574, label %1545

1545:                                             ; preds = %1532
  %1546 = getelementptr inbounds i32, ptr %1234, i64 %1537
  %1547 = load i32, ptr %1546, align 4, !tbaa !19
  %1548 = add i32 %1050, 1
  %1549 = add i32 %1042, 1
  %1550 = sub i32 %1050, %1070
  %1551 = add i32 %1550, %1543
  %1552 = add i32 %1551, %1547
  %1553 = add i32 %1543, %1042
  %1554 = call ptr @xmalloc(i64 noundef 32) #33
  store i32 %1548, ptr %1554, align 4, !tbaa !44
  %1555 = getelementptr inbounds %struct._exon_t, ptr %1554, i64 0, i32 1
  store i32 %1549, ptr %1555, align 4, !tbaa !45
  %1556 = getelementptr inbounds %struct._exon_t, ptr %1554, i64 0, i32 2
  store i32 %1552, ptr %1556, align 4, !tbaa !39
  %1557 = getelementptr inbounds %struct._exon_t, ptr %1554, i64 0, i32 3
  store i32 %1553, ptr %1557, align 4, !tbaa !107
  %1558 = load i32, ptr %31, align 4, !tbaa !132
  %1559 = load i32, ptr %32, align 8, !tbaa !37
  %1560 = icmp ugt i32 %1558, %1559
  %1561 = load ptr, ptr %12, align 8, !tbaa !16
  br i1 %1560, label %1568, label %1562

1562:                                             ; preds = %1545
  %1563 = add i32 %1558, 5
  store i32 %1563, ptr %31, align 4, !tbaa !132
  %1564 = zext i32 %1563 to i64
  %1565 = shl nuw nsw i64 %1564, 3
  %1566 = call ptr @xrealloc(ptr noundef %1561, i64 noundef %1565) #33
  store ptr %1566, ptr %12, align 8, !tbaa !16
  %1567 = load i32, ptr %32, align 8, !tbaa !37
  br label %1568

1568:                                             ; preds = %1562, %1545
  %1569 = phi i32 [ %1567, %1562 ], [ %1559, %1545 ]
  %1570 = phi ptr [ %1566, %1562 ], [ %1561, %1545 ]
  %1571 = add i32 %1569, 1
  store i32 %1571, ptr %32, align 8, !tbaa !37
  %1572 = zext i32 %1569 to i64
  %1573 = getelementptr inbounds ptr, ptr %1570, i64 %1572
  store ptr %1554, ptr %1573, align 8, !tbaa !7
  br label %1574

1574:                                             ; preds = %1568, %1532
  %1575 = icmp ult i32 %1543, %1044
  br i1 %1575, label %1576, label %1605

1576:                                             ; preds = %1574
  %1577 = add i32 %1050, 1
  %1578 = add i32 %1577, %1066
  %1579 = sub i32 %1578, %1070
  %1580 = add i32 %1579, %1542
  %1581 = add i32 %1580, %1543
  %1582 = add i32 %1042, 1
  %1583 = add i32 %1582, %1543
  %1584 = add i32 %1040, -1
  %1585 = call ptr @xmalloc(i64 noundef 32) #33
  store i32 %1581, ptr %1585, align 4, !tbaa !44
  %1586 = getelementptr inbounds %struct._exon_t, ptr %1585, i64 0, i32 1
  store i32 %1583, ptr %1586, align 4, !tbaa !45
  %1587 = getelementptr inbounds %struct._exon_t, ptr %1585, i64 0, i32 2
  store i32 %1048, ptr %1587, align 4, !tbaa !39
  %1588 = getelementptr inbounds %struct._exon_t, ptr %1585, i64 0, i32 3
  store i32 %1584, ptr %1588, align 4, !tbaa !107
  %1589 = load i32, ptr %31, align 4, !tbaa !132
  %1590 = load i32, ptr %32, align 8, !tbaa !37
  %1591 = icmp ugt i32 %1589, %1590
  %1592 = load ptr, ptr %12, align 8, !tbaa !16
  br i1 %1591, label %1599, label %1593

1593:                                             ; preds = %1576
  %1594 = add i32 %1589, 5
  store i32 %1594, ptr %31, align 4, !tbaa !132
  %1595 = zext i32 %1594 to i64
  %1596 = shl nuw nsw i64 %1595, 3
  %1597 = call ptr @xrealloc(ptr noundef %1592, i64 noundef %1596) #33
  store ptr %1597, ptr %12, align 8, !tbaa !16
  %1598 = load i32, ptr %32, align 8, !tbaa !37
  br label %1599

1599:                                             ; preds = %1593, %1576
  %1600 = phi i32 [ %1598, %1593 ], [ %1590, %1576 ]
  %1601 = phi ptr [ %1597, %1593 ], [ %1592, %1576 ]
  %1602 = add i32 %1600, 1
  store i32 %1602, ptr %32, align 8, !tbaa !37
  %1603 = zext i32 %1600 to i64
  %1604 = getelementptr inbounds ptr, ptr %1601, i64 %1603
  store ptr %1585, ptr %1604, align 8, !tbaa !7
  br label %1605

1605:                                             ; preds = %1599, %1574
  call void @free(ptr noundef %1160) #33
  call void @free(ptr noundef %1161) #33
  call void @free(ptr noundef %1220) #33
  call void @free(ptr noundef %1221) #33
  call void @free(ptr noundef nonnull %1233) #33
  call void @free(ptr noundef nonnull %1235) #33
  call void @free(ptr noundef nonnull %1232) #33
  call void @free(ptr noundef nonnull %1234) #33
  %1606 = add nsw i32 %1529, %1528
  br label %1607

1607:                                             ; preds = %1605, %1531, %1213, %1107, %1097, %1056
  %1608 = phi i32 [ 0, %1056 ], [ %1606, %1605 ], [ %1527, %1531 ], [ 0, %1213 ], [ %1108, %1107 ], [ %1106, %1097 ]
  %1609 = load i32, ptr %32, align 8, !tbaa !37
  br label %1610

1610:                                             ; preds = %1607, %1149
  %1611 = phi i32 [ %1609, %1607 ], [ %1152, %1149 ]
  %1612 = phi i32 [ %1608, %1607 ], [ 0, %1149 ]
  %1613 = icmp eq i32 %1611, 0
  %1614 = load i32, ptr %38, align 4, !tbaa !135
  br i1 %1613, label %1615, label %1617

1615:                                             ; preds = %1610
  %1616 = load ptr, ptr %37, align 8, !tbaa !133
  br label %1694

1617:                                             ; preds = %1610
  %1618 = sitofp i32 %1612 to double
  %1619 = uitofp i32 %1614 to double
  %1620 = sitofp i32 %1044 to double
  %1621 = call double @llvm.fmuladd.f64(double %1620, double 2.000000e-01, double 1.000000e+00)
  %1622 = fcmp ogt double %1621, %1619
  %1623 = select i1 %1622, double %1621, double %1619
  %1624 = fcmp ult double %1623, %1618
  %1625 = load ptr, ptr %37, align 8, !tbaa !133
  br i1 %1624, label %1694, label %1626

1626:                                             ; preds = %1617
  %1627 = load ptr, ptr %12, align 8, !tbaa !16
  %1628 = load ptr, ptr %1627, align 8, !tbaa !7
  %1629 = load ptr, ptr %27, align 8, !tbaa !71
  %1630 = load i32, ptr %1628, align 4, !tbaa !44
  %1631 = zext i32 %1630 to i64
  %1632 = getelementptr inbounds i8, ptr %1625, i64 %1631
  %1633 = getelementptr inbounds i8, ptr %1632, i64 -2
  %1634 = getelementptr inbounds %struct._exon_t, ptr %1628, i64 0, i32 1
  %1635 = load i32, ptr %1634, align 4, !tbaa !45
  %1636 = zext i32 %1635 to i64
  %1637 = getelementptr inbounds i8, ptr %1629, i64 %1636
  %1638 = getelementptr inbounds i8, ptr %1637, i64 -2
  %1639 = icmp ult ptr %1633, %1625
  %1640 = icmp ult ptr %1638, %1629
  %1641 = select i1 %1639, i1 true, i1 %1640
  br i1 %1641, label %1660, label %1642

1642:                                             ; preds = %1650, %1626
  %1643 = phi i32 [ %1654, %1650 ], [ %1635, %1626 ]
  %1644 = phi i32 [ %1653, %1650 ], [ %1630, %1626 ]
  %1645 = phi ptr [ %1652, %1650 ], [ %1638, %1626 ]
  %1646 = phi ptr [ %1651, %1650 ], [ %1633, %1626 ]
  %1647 = load i8, ptr %1646, align 1, !tbaa !16
  %1648 = load i8, ptr %1645, align 1, !tbaa !16
  %1649 = icmp eq i8 %1647, %1648
  br i1 %1649, label %1650, label %1658

1650:                                             ; preds = %1642
  %1651 = getelementptr inbounds i8, ptr %1646, i64 -1
  %1652 = getelementptr inbounds i8, ptr %1645, i64 -1
  %1653 = add i32 %1644, -1
  store i32 %1653, ptr %1628, align 4, !tbaa !44
  %1654 = add i32 %1643, -1
  store i32 %1654, ptr %1634, align 4, !tbaa !45
  %1655 = icmp ult ptr %1651, %1625
  %1656 = icmp ult ptr %1652, %1629
  %1657 = select i1 %1655, i1 true, i1 %1656
  br i1 %1657, label %1658, label %1642, !llvm.loop !156

1658:                                             ; preds = %1650, %1642
  %1659 = load ptr, ptr %12, align 8, !tbaa !16
  br label %1660

1660:                                             ; preds = %1658, %1626
  %1661 = phi ptr [ %1659, %1658 ], [ %1627, %1626 ]
  %1662 = add i32 %1611, -1
  %1663 = zext i32 %1662 to i64
  %1664 = getelementptr inbounds ptr, ptr %1661, i64 %1663
  %1665 = load ptr, ptr %1664, align 8, !tbaa !7
  %1666 = load i32, ptr %16, align 8, !tbaa !130
  %1667 = getelementptr inbounds %struct._exon_t, ptr %1665, i64 0, i32 3
  %1668 = getelementptr inbounds %struct._exon_t, ptr %1665, i64 0, i32 2
  %1669 = load i32, ptr %1668, align 4, !tbaa !39
  %1670 = icmp ult i32 %1669, %1666
  br i1 %1670, label %1671, label %1794

1671:                                             ; preds = %1660
  %1672 = load i32, ptr %20, align 4, !tbaa !72
  %1673 = load i32, ptr %1667, align 4, !tbaa !107
  %1674 = zext i32 %1673 to i64
  %1675 = zext i32 %1669 to i64
  %1676 = call i32 @llvm.umax.i32(i32 %1673, i32 %1672)
  %1677 = zext i32 %1676 to i64
  br label %1678

1678:                                             ; preds = %1688, %1671
  %1679 = phi i64 [ %1675, %1671 ], [ %1689, %1688 ]
  %1680 = phi i64 [ %1674, %1671 ], [ %1691, %1688 ]
  %1681 = icmp eq i64 %1680, %1677
  br i1 %1681, label %1794, label %1682

1682:                                             ; preds = %1678
  %1683 = getelementptr inbounds i8, ptr %1625, i64 %1679
  %1684 = load i8, ptr %1683, align 1, !tbaa !16
  %1685 = getelementptr inbounds i8, ptr %1629, i64 %1680
  %1686 = load i8, ptr %1685, align 1, !tbaa !16
  %1687 = icmp eq i8 %1684, %1686
  br i1 %1687, label %1688, label %1794

1688:                                             ; preds = %1682
  %1689 = add nuw nsw i64 %1679, 1
  %1690 = trunc i64 %1689 to i32
  store i32 %1690, ptr %1668, align 4, !tbaa !39
  %1691 = add nuw nsw i64 %1680, 1
  %1692 = trunc i64 %1691 to i32
  store i32 %1692, ptr %1667, align 4, !tbaa !107
  %1693 = icmp eq i32 %1666, %1690
  br i1 %1693, label %1794, label %1678, !llvm.loop !140

1694:                                             ; preds = %1617, %1615, %1052
  %1695 = phi ptr [ %1616, %1615 ], [ %1625, %1617 ], [ %1055, %1052 ]
  %1696 = phi i32 [ %1614, %1615 ], [ %1614, %1617 ], [ %1054, %1052 ]
  %1697 = call i32 @llvm.umin.i32(i32 %1696, i32 8)
  %1698 = load i32, ptr %1049, align 4, !tbaa !39
  %1699 = zext i32 %1698 to i64
  %1700 = getelementptr inbounds i8, ptr %1695, i64 %1699
  %1701 = load i32, ptr %1038, align 4, !tbaa !44
  %1702 = xor i32 %1698, -1
  %1703 = add i32 %1701, %1702
  store i32 %1697, ptr %49, align 4, !tbaa !135
  store ptr %1700, ptr %50, align 8, !tbaa !133
  store i32 %1703, ptr %51, align 8, !tbaa !130
  %1704 = shl nuw nsw i32 %1697, 1
  %1705 = add nsw i32 %1704, -2
  %1706 = shl nsw i32 -1, %1705
  %1707 = xor i32 %1706, -1
  store i32 %1707, ptr %52, align 8, !tbaa !136
  %1708 = sub i32 %1701, %1698
  %1709 = zext i32 %1708 to i64
  %1710 = shl nuw nsw i64 %1709, 2
  %1711 = call ptr @xmalloc(i64 noundef %1710) #33
  store ptr %1711, ptr %53, align 8, !tbaa !137
  %1712 = call ptr @xcalloc(i64 noundef 524288, i64 noundef 8) #33
  store ptr %1712, ptr %15, align 8, !tbaa !138
  call void @bld_table(ptr noundef nonnull %15) #35
  %1713 = load ptr, ptr %27, align 8, !tbaa !71
  %1714 = load i32, ptr %1041, align 4, !tbaa !107
  %1715 = zext i32 %1714 to i64
  %1716 = getelementptr inbounds i8, ptr %1713, i64 %1715
  %1717 = load i32, ptr %1049, align 4, !tbaa !39
  %1718 = add i32 %1717, 1
  %1719 = add i32 %1714, 1
  %1720 = load i32, ptr getelementptr inbounds (%struct._options_t, ptr @options, i64 0, i32 4), align 8, !tbaa !58
  call fastcc void @exon_cores(ptr noundef nonnull %15, ptr noundef %1716, i32 noundef %1044, i32 noundef %1718, i32 noundef %1719, i32 noundef %1720, ptr noundef nonnull %11, ptr noundef null, ptr noundef nonnull %12) #35
  call void @free_hash_env(ptr noundef nonnull %15) #35
  %1721 = load i32, ptr %32, align 8, !tbaa !37
  %1722 = icmp eq i32 %1721, 0
  br i1 %1722, label %1796, label %1723

1723:                                             ; preds = %1694
  %1724 = load ptr, ptr %12, align 8, !tbaa !16
  %1725 = load ptr, ptr %1724, align 8, !tbaa !7
  %1726 = load ptr, ptr %37, align 8, !tbaa !133
  %1727 = load ptr, ptr %27, align 8, !tbaa !71
  %1728 = load i32, ptr %1725, align 4, !tbaa !44
  %1729 = zext i32 %1728 to i64
  %1730 = getelementptr inbounds i8, ptr %1726, i64 %1729
  %1731 = getelementptr inbounds i8, ptr %1730, i64 -2
  %1732 = getelementptr inbounds %struct._exon_t, ptr %1725, i64 0, i32 1
  %1733 = load i32, ptr %1732, align 4, !tbaa !45
  %1734 = zext i32 %1733 to i64
  %1735 = getelementptr inbounds i8, ptr %1727, i64 %1734
  %1736 = getelementptr inbounds i8, ptr %1735, i64 -2
  %1737 = icmp ult ptr %1731, %1726
  %1738 = icmp ult ptr %1736, %1727
  %1739 = select i1 %1737, i1 true, i1 %1738
  br i1 %1739, label %1758, label %1740

1740:                                             ; preds = %1748, %1723
  %1741 = phi i32 [ %1752, %1748 ], [ %1733, %1723 ]
  %1742 = phi i32 [ %1751, %1748 ], [ %1728, %1723 ]
  %1743 = phi ptr [ %1750, %1748 ], [ %1736, %1723 ]
  %1744 = phi ptr [ %1749, %1748 ], [ %1731, %1723 ]
  %1745 = load i8, ptr %1744, align 1, !tbaa !16
  %1746 = load i8, ptr %1743, align 1, !tbaa !16
  %1747 = icmp eq i8 %1745, %1746
  br i1 %1747, label %1748, label %1756

1748:                                             ; preds = %1740
  %1749 = getelementptr inbounds i8, ptr %1744, i64 -1
  %1750 = getelementptr inbounds i8, ptr %1743, i64 -1
  %1751 = add i32 %1742, -1
  store i32 %1751, ptr %1725, align 4, !tbaa !44
  %1752 = add i32 %1741, -1
  store i32 %1752, ptr %1732, align 4, !tbaa !45
  %1753 = icmp ult ptr %1749, %1726
  %1754 = icmp ult ptr %1750, %1727
  %1755 = select i1 %1753, i1 true, i1 %1754
  br i1 %1755, label %1756, label %1740, !llvm.loop !156

1756:                                             ; preds = %1748, %1740
  %1757 = load ptr, ptr %12, align 8, !tbaa !16
  br label %1758

1758:                                             ; preds = %1756, %1723
  %1759 = phi ptr [ %1757, %1756 ], [ %1724, %1723 ]
  %1760 = add i32 %1721, -1
  %1761 = zext i32 %1760 to i64
  %1762 = getelementptr inbounds ptr, ptr %1759, i64 %1761
  %1763 = load ptr, ptr %1762, align 8, !tbaa !7
  %1764 = load i32, ptr %16, align 8, !tbaa !130
  %1765 = getelementptr inbounds %struct._exon_t, ptr %1763, i64 0, i32 3
  %1766 = getelementptr inbounds %struct._exon_t, ptr %1763, i64 0, i32 2
  %1767 = load i32, ptr %1766, align 4, !tbaa !39
  %1768 = icmp ult i32 %1767, %1764
  br i1 %1768, label %1769, label %1792

1769:                                             ; preds = %1758
  %1770 = load i32, ptr %20, align 4, !tbaa !72
  %1771 = load i32, ptr %1765, align 4, !tbaa !107
  %1772 = zext i32 %1771 to i64
  %1773 = zext i32 %1767 to i64
  %1774 = call i32 @llvm.umax.i32(i32 %1771, i32 %1770)
  %1775 = zext i32 %1774 to i64
  br label %1776

1776:                                             ; preds = %1786, %1769
  %1777 = phi i64 [ %1773, %1769 ], [ %1787, %1786 ]
  %1778 = phi i64 [ %1772, %1769 ], [ %1789, %1786 ]
  %1779 = icmp eq i64 %1778, %1775
  br i1 %1779, label %1792, label %1780

1780:                                             ; preds = %1776
  %1781 = getelementptr inbounds i8, ptr %1726, i64 %1777
  %1782 = load i8, ptr %1781, align 1, !tbaa !16
  %1783 = getelementptr inbounds i8, ptr %1727, i64 %1778
  %1784 = load i8, ptr %1783, align 1, !tbaa !16
  %1785 = icmp eq i8 %1782, %1784
  br i1 %1785, label %1786, label %1792

1786:                                             ; preds = %1780
  %1787 = add nuw nsw i64 %1777, 1
  %1788 = trunc i64 %1787 to i32
  store i32 %1788, ptr %1766, align 4, !tbaa !39
  %1789 = add nuw nsw i64 %1778, 1
  %1790 = trunc i64 %1789 to i32
  store i32 %1790, ptr %1765, align 4, !tbaa !107
  %1791 = icmp eq i32 %1764, %1788
  br i1 %1791, label %1792, label %1776, !llvm.loop !140

1792:                                             ; preds = %1786, %1780, %1776, %1758
  %1793 = load i32, ptr %38, align 4, !tbaa !135
  br label %1794

1794:                                             ; preds = %1792, %1688, %1682, %1678, %1660
  %1795 = phi i32 [ %1793, %1792 ], [ %1614, %1660 ], [ %1614, %1688 ], [ %1614, %1682 ], [ %1614, %1678 ]
  call fastcc void @merge(ptr noundef nonnull %77, ptr noundef nonnull %12, i32 noundef %1030, i32 noundef %1795) #35
  store i32 0, ptr %32, align 8, !tbaa !37
  br label %1796

1796:                                             ; preds = %1794, %1694
  %1797 = phi i32 [ %1030, %1694 ], [ %1032, %1794 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %15) #32
  %1798 = load i32, ptr %83, align 8, !tbaa !37
  br label %1799

1799:                                             ; preds = %1796, %1046, %1028
  %1800 = phi i32 [ %1798, %1796 ], [ %1029, %1046 ], [ %1029, %1028 ]
  %1801 = phi i32 [ %1797, %1796 ], [ %1030, %1046 ], [ %1030, %1028 ]
  %1802 = add i32 %1801, 1
  %1803 = icmp ult i32 %1802, %1800
  br i1 %1803, label %1028, label %1804, !llvm.loop !180

1804:                                             ; preds = %1799, %1025
  %1805 = load ptr, ptr %37, align 8, !tbaa !133
  %1806 = load ptr, ptr %27, align 8, !tbaa !71
  call fastcc void @kill_polyA(ptr noundef nonnull %76, ptr noundef %1805, ptr noundef %1806) #35
  %1807 = load i32, ptr %38, align 4, !tbaa !135
  %1808 = load i32, ptr %83, align 8, !tbaa !37
  %1809 = icmp ugt i32 %1808, 1
  br i1 %1809, label %1814, label %1955

1810:                                             ; preds = %1888
  %.lcssa44 = phi i32 [ %1889, %1888 ]
  %1811 = icmp ugt i32 %.lcssa44, 1
  br i1 %1811, label %1812, label %1955

1812:                                             ; preds = %1810
  %1813 = add i32 %1807, 1
  br label %1892

1814:                                             ; preds = %1888, %1804
  %1815 = phi i32 [ %1889, %1888 ], [ %1808, %1804 ]
  %1816 = phi i32 [ %1890, %1888 ], [ 1, %1804 ]
  %1817 = load ptr, ptr %77, align 8, !tbaa !16
  %1818 = add i32 %1816, -1
  %1819 = zext i32 %1818 to i64
  %1820 = getelementptr inbounds ptr, ptr %1817, i64 %1819
  %1821 = load ptr, ptr %1820, align 8, !tbaa !7
  %1822 = zext i32 %1816 to i64
  %1823 = getelementptr inbounds ptr, ptr %1817, i64 %1822
  %1824 = load ptr, ptr %1823, align 8, !tbaa !7
  %1825 = getelementptr inbounds %struct._exon_t, ptr %1824, i64 0, i32 1
  %1826 = load i32, ptr %1825, align 4, !tbaa !45
  %1827 = getelementptr inbounds %struct._exon_t, ptr %1821, i64 0, i32 1
  %1828 = load i32, ptr %1827, align 4, !tbaa !45
  %1829 = sub i32 %1826, %1828
  %1830 = load i32, ptr getelementptr inbounds (%struct._options_t, ptr @options, i64 0, i32 7), align 4, !tbaa !61
  %1831 = icmp ugt i32 %1829, %1830
  br i1 %1831, label %1883, label %1832

1832:                                             ; preds = %1814
  %1833 = add i32 %1815, -1
  store i32 %1833, ptr %83, align 8, !tbaa !37
  %1834 = getelementptr inbounds %struct._exon_t, ptr %1821, i64 0, i32 3
  %1835 = load i32, ptr %1834, align 4, !tbaa !107
  %1836 = getelementptr inbounds %struct._exon_t, ptr %1824, i64 0, i32 3
  %1837 = load i32, ptr %1836, align 4, !tbaa !107
  %1838 = icmp ugt i32 %1835, %1837
  br i1 %1838, label %1839, label %1860

1839:                                             ; preds = %1832
  call void @free(ptr noundef nonnull %1824) #33
  %1840 = load ptr, ptr %77, align 8, !tbaa !16
  %1841 = getelementptr inbounds ptr, ptr %1840, i64 %1822
  %1842 = getelementptr inbounds ptr, ptr %1841, i64 1
  %1843 = load i32, ptr %83, align 8, !tbaa !37
  %1844 = sub i32 %1843, %1816
  %1845 = zext i32 %1844 to i64
  %1846 = shl nuw nsw i64 %1845, 3
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %1841, ptr nonnull align 8 %1842, i64 %1846, i1 false)
  %1847 = load i32, ptr %83, align 8, !tbaa !37
  %1848 = icmp ult i32 %1816, %1847
  br i1 %1848, label %1849, label %1888

1849:                                             ; preds = %1839
  %1850 = load ptr, ptr %77, align 8, !tbaa !16
  %1851 = getelementptr inbounds ptr, ptr %1850, i64 %1822
  %1852 = load ptr, ptr %1851, align 8, !tbaa !7
  %1853 = getelementptr inbounds %struct._exon_t, ptr %1821, i64 0, i32 2
  %1854 = load <2 x i32>, ptr %1853, align 4, !tbaa !19
  %1855 = insertelement <2 x i32> poison, i32 %1829, i64 0
  %1856 = shufflevector <2 x i32> %1855, <2 x i32> poison, <2 x i32> zeroinitializer
  %1857 = add <2 x i32> %1854, %1856
  store <2 x i32> %1857, ptr %1853, align 4, !tbaa !19
  %1858 = load <2 x i32>, ptr %1852, align 4, !tbaa !19
  %1859 = sub <2 x i32> %1858, %1856
  store <2 x i32> %1859, ptr %1852, align 4, !tbaa !19
  br label %1885

1860:                                             ; preds = %1832
  call void @free(ptr noundef nonnull %1821) #33
  %1861 = load ptr, ptr %77, align 8, !tbaa !16
  %1862 = getelementptr inbounds ptr, ptr %1861, i64 %1822
  %1863 = getelementptr inbounds ptr, ptr %1862, i64 -1
  %1864 = load i32, ptr %83, align 8, !tbaa !37
  %1865 = sub i32 %1864, %1816
  %1866 = add i32 %1865, 1
  %1867 = zext i32 %1866 to i64
  %1868 = shl nuw nsw i64 %1867, 3
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %1863, ptr align 8 %1862, i64 %1868, i1 false)
  %1869 = icmp ugt i32 %1816, 1
  br i1 %1869, label %1870, label %1885

1870:                                             ; preds = %1860
  %1871 = load ptr, ptr %77, align 8, !tbaa !16
  %1872 = add i32 %1816, -2
  %1873 = zext i32 %1872 to i64
  %1874 = getelementptr inbounds ptr, ptr %1871, i64 %1873
  %1875 = load ptr, ptr %1874, align 8, !tbaa !7
  %1876 = getelementptr inbounds %struct._exon_t, ptr %1875, i64 0, i32 2
  %1877 = load <2 x i32>, ptr %1876, align 4, !tbaa !19
  %1878 = insertelement <2 x i32> poison, i32 %1829, i64 0
  %1879 = shufflevector <2 x i32> %1878, <2 x i32> poison, <2 x i32> zeroinitializer
  %1880 = add <2 x i32> %1877, %1879
  store <2 x i32> %1880, ptr %1876, align 4, !tbaa !19
  %1881 = load <2 x i32>, ptr %1824, align 4, !tbaa !19
  %1882 = sub <2 x i32> %1881, %1879
  store <2 x i32> %1882, ptr %1824, align 4, !tbaa !19
  br label %1885

1883:                                             ; preds = %1814
  %1884 = add nuw i32 %1816, 1
  br label %1885

1885:                                             ; preds = %1883, %1870, %1860, %1849
  %1886 = phi i32 [ %1884, %1883 ], [ %1816, %1860 ], [ %1816, %1870 ], [ %1816, %1849 ]
  %1887 = load i32, ptr %83, align 8, !tbaa !37
  br label %1888

1888:                                             ; preds = %1885, %1839
  %1889 = phi i32 [ %1887, %1885 ], [ %1847, %1839 ]
  %1890 = phi i32 [ %1886, %1885 ], [ %1816, %1839 ]
  %1891 = icmp ult i32 %1890, %1889
  br i1 %1891, label %1814, label %1810, !llvm.loop !181

1892:                                             ; preds = %1950, %1812
  %1893 = phi i32 [ %.lcssa44, %1812 ], [ %1951, %1950 ]
  %1894 = phi i32 [ 1, %1812 ], [ %1953, %1950 ]
  %1895 = load ptr, ptr %77, align 8, !tbaa !16
  %1896 = add i32 %1894, -1
  %1897 = zext i32 %1896 to i64
  %1898 = getelementptr inbounds ptr, ptr %1895, i64 %1897
  %1899 = load ptr, ptr %1898, align 8, !tbaa !7
  %1900 = zext i32 %1894 to i64
  %1901 = getelementptr inbounds ptr, ptr %1895, i64 %1900
  %1902 = load ptr, ptr %1901, align 8, !tbaa !7
  %1903 = load i32, ptr %1902, align 4, !tbaa !44
  %1904 = getelementptr inbounds %struct._exon_t, ptr %1899, i64 0, i32 2
  %1905 = load i32, ptr %1904, align 4, !tbaa !39
  %1906 = add i32 %1905, 31
  %1907 = icmp ult i32 %1903, %1906
  br i1 %1907, label %1913, label %1908

1908:                                             ; preds = %1892
  %1909 = getelementptr inbounds %struct._exon_t, ptr %1899, i64 0, i32 3
  %1910 = load i32, ptr %1909, align 4, !tbaa !107
  %1911 = getelementptr inbounds %struct._exon_t, ptr %1902, i64 0, i32 1
  %1912 = load i32, ptr %1911, align 4, !tbaa !45
  br label %1920

1913:                                             ; preds = %1892
  %1914 = getelementptr inbounds %struct._exon_t, ptr %1902, i64 0, i32 1
  %1915 = load i32, ptr %1914, align 4, !tbaa !45
  %1916 = getelementptr inbounds %struct._exon_t, ptr %1899, i64 0, i32 3
  %1917 = load i32, ptr %1916, align 4, !tbaa !107
  %1918 = add i32 %1813, %1917
  %1919 = icmp ugt i32 %1915, %1918
  br i1 %1919, label %1920, label %1938

1920:                                             ; preds = %1913, %1908
  %1921 = phi i32 [ %1912, %1908 ], [ %1915, %1913 ]
  %1922 = phi i32 [ %1910, %1908 ], [ %1917, %1913 ]
  %1923 = icmp ugt i32 %1903, %1905
  %1924 = icmp ugt i32 %1921, %1922
  %1925 = and i1 %1923, %1924
  br i1 %1925, label %1926, label %1950

1926:                                             ; preds = %1920
  %1927 = xor i32 %1905, -1
  %1928 = add i32 %1903, %1927
  %1929 = xor i32 %1922, -1
  %1930 = add i32 %1921, %1929
  %1931 = call i32 @llvm.umin.i32(i32 %1930, i32 %1928)
  %1932 = call i32 @llvm.umax.i32(i32 %1930, i32 %1928)
  %1933 = sub i32 %1932, %1931
  %1934 = mul i32 %1933, 100
  %1935 = udiv i32 %1934, %1932
  %1936 = load i32, ptr getelementptr inbounds (%struct._options_t, ptr @options, i64 0, i32 6), align 8, !tbaa !60
  %1937 = icmp ugt i32 %1935, %1936
  br i1 %1937, label %1950, label %1938

1938:                                             ; preds = %1926, %1913
  %1939 = getelementptr inbounds %struct._exon_t, ptr %1902, i64 0, i32 2
  %1940 = load <2 x i32>, ptr %1939, align 4, !tbaa !19
  store <2 x i32> %1940, ptr %1904, align 4, !tbaa !19
  call void @free(ptr noundef nonnull %1902) #33
  %1941 = load i32, ptr %83, align 8, !tbaa !37
  %1942 = add i32 %1941, -1
  store i32 %1942, ptr %83, align 8, !tbaa !37
  %1943 = load ptr, ptr %77, align 8, !tbaa !16
  %1944 = getelementptr inbounds ptr, ptr %1943, i64 %1900
  %1945 = getelementptr inbounds ptr, ptr %1944, i64 1
  %1946 = sub i32 %1942, %1894
  %1947 = zext i32 %1946 to i64
  %1948 = shl nuw nsw i64 %1947, 3
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %1944, ptr nonnull align 8 %1945, i64 %1948, i1 false)
  %1949 = load i32, ptr %83, align 8, !tbaa !37
  br label %1950

1950:                                             ; preds = %1938, %1926, %1920
  %1951 = phi i32 [ %1949, %1938 ], [ %1893, %1926 ], [ %1893, %1920 ]
  %1952 = phi i32 [ %1896, %1938 ], [ %1894, %1926 ], [ %1894, %1920 ]
  %1953 = add i32 %1952, 1
  %1954 = icmp ult i32 %1953, %1951
  br i1 %1954, label %1892, label %1955, !llvm.loop !182

1955:                                             ; preds = %1950, %1810, %1804
  %1956 = phi i32 [ %1808, %1804 ], [ %.lcssa44, %1810 ], [ %1951, %1950 ]
  %1957 = icmp eq i32 %1956, 0
  br i1 %1957, label %2203, label %1958

1958:                                             ; preds = %1955
  %1959 = load ptr, ptr %77, align 8, !tbaa !16
  %1960 = load ptr, ptr %1959, align 8, !tbaa !7
  %1961 = getelementptr inbounds %struct._exon_t, ptr %1960, i64 0, i32 3
  %1962 = load i32, ptr %1961, align 4, !tbaa !107
  %1963 = getelementptr inbounds %struct._exon_t, ptr %1960, i64 0, i32 1
  %1964 = load i32, ptr %1963, align 4, !tbaa !45
  %1965 = add i32 %1962, 1
  %1966 = sub i32 %1965, %1964
  %1967 = load i32, ptr %38, align 4, !tbaa !135
  %1968 = icmp ult i32 %1966, %1967
  br i1 %1968, label %1982, label %1988

1969:                                             ; preds = %1982
  %1970 = load ptr, ptr %77, align 8, !tbaa !16
  %1971 = zext i32 %1985 to i64
  %1972 = getelementptr inbounds ptr, ptr %1970, i64 %1971
  %1973 = load ptr, ptr %1972, align 8, !tbaa !7
  %1974 = getelementptr inbounds %struct._exon_t, ptr %1973, i64 0, i32 3
  %1975 = load i32, ptr %1974, align 4, !tbaa !107
  %1976 = getelementptr inbounds %struct._exon_t, ptr %1973, i64 0, i32 1
  %1977 = load i32, ptr %1976, align 4, !tbaa !45
  %1978 = add i32 %1975, 1
  %1979 = sub i32 %1978, %1977
  %1980 = load i32, ptr %38, align 4, !tbaa !135
  %1981 = icmp ult i32 %1979, %1980
  br i1 %1981, label %1982, label %1988

1982:                                             ; preds = %1969, %1958
  %1983 = phi ptr [ %1973, %1969 ], [ %1960, %1958 ]
  %1984 = phi i32 [ %1985, %1969 ], [ 0, %1958 ]
  call void @free(ptr noundef nonnull %1983) #33
  %1985 = add nuw i32 %1984, 1
  %1986 = load i32, ptr %83, align 8, !tbaa !37
  %1987 = icmp ult i32 %1985, %1986
  br i1 %1987, label %1969, label %1992

1988:                                             ; preds = %1969, %1958
  %1989 = phi i32 [ %1956, %1958 ], [ %1986, %1969 ]
  %1990 = phi i32 [ 0, %1958 ], [ %1985, %1969 ]
  %1991 = icmp eq i32 %1990, 0
  br i1 %1991, label %2003, label %1992

1992:                                             ; preds = %1988, %1982
  %1993 = phi i32 [ %1990, %1988 ], [ %1985, %1982 ]
  %1994 = phi i32 [ %1989, %1988 ], [ %1986, %1982 ]
  %1995 = load ptr, ptr %77, align 8, !tbaa !16
  %1996 = zext i32 %1993 to i64
  %1997 = getelementptr inbounds ptr, ptr %1995, i64 %1996
  %1998 = sub i32 %1994, %1993
  %1999 = zext i32 %1998 to i64
  %2000 = shl nuw nsw i64 %1999, 3
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %1995, ptr nonnull align 8 %1997, i64 %2000, i1 false)
  %2001 = load i32, ptr %83, align 8, !tbaa !37
  %2002 = sub i32 %2001, %1993
  store i32 %2002, ptr %83, align 8, !tbaa !37
  br label %2003

2003:                                             ; preds = %1992, %1988
  %2004 = phi i32 [ %2002, %1992 ], [ %1989, %1988 ]
  %2005 = add i32 %2004, -1
  %2006 = icmp sgt i32 %2005, -1
  br i1 %2006, label %2007, label %2040

2007:                                             ; preds = %2003
  %2008 = load ptr, ptr %77, align 8, !tbaa !16
  %2009 = zext i32 %2005 to i64
  %2010 = getelementptr inbounds ptr, ptr %2008, i64 %2009
  %2011 = load ptr, ptr %2010, align 8, !tbaa !7
  %2012 = getelementptr inbounds %struct._exon_t, ptr %2011, i64 0, i32 3
  %2013 = load i32, ptr %2012, align 4, !tbaa !107
  %2014 = getelementptr inbounds %struct._exon_t, ptr %2011, i64 0, i32 1
  %2015 = load i32, ptr %2014, align 4, !tbaa !45
  %2016 = add i32 %2013, 1
  %2017 = sub i32 %2016, %2015
  %2018 = load i32, ptr %38, align 4, !tbaa !135
  %2019 = icmp ult i32 %2017, %2018
  br i1 %2019, label %2034, label %2040

2020:                                             ; preds = %2034
  %2021 = add nsw i32 %2036, -1
  %2022 = load ptr, ptr %77, align 8, !tbaa !16
  %2023 = zext i32 %2021 to i64
  %2024 = getelementptr inbounds ptr, ptr %2022, i64 %2023
  %2025 = load ptr, ptr %2024, align 8, !tbaa !7
  %2026 = getelementptr inbounds %struct._exon_t, ptr %2025, i64 0, i32 3
  %2027 = load i32, ptr %2026, align 4, !tbaa !107
  %2028 = getelementptr inbounds %struct._exon_t, ptr %2025, i64 0, i32 1
  %2029 = load i32, ptr %2028, align 4, !tbaa !45
  %2030 = add i32 %2027, 1
  %2031 = sub i32 %2030, %2029
  %2032 = load i32, ptr %38, align 4, !tbaa !135
  %2033 = icmp ult i32 %2031, %2032
  br i1 %2033, label %2034, label %2040

2034:                                             ; preds = %2020, %2007
  %2035 = phi ptr [ %2025, %2020 ], [ %2011, %2007 ]
  %2036 = phi i32 [ %2021, %2020 ], [ %2005, %2007 ]
  call void @free(ptr noundef nonnull %2035) #33
  %2037 = load i32, ptr %83, align 8, !tbaa !37
  %2038 = add i32 %2037, -1
  store i32 %2038, ptr %83, align 8, !tbaa !37
  %2039 = icmp sgt i32 %2036, 0
  br i1 %2039, label %2020, label %2040

2040:                                             ; preds = %2034, %2020, %2007, %2003
  %2041 = phi i32 [ %2004, %2003 ], [ %2004, %2007 ], [ %2038, %2034 ], [ %2038, %2020 ]
  %2042 = load ptr, ptr %37, align 8, !tbaa !133
  %2043 = load ptr, ptr %27, align 8, !tbaa !71
  %2044 = icmp ugt i32 %2041, 1
  br i1 %2044, label %2045, label %2198

2045:                                             ; preds = %2040
  %2046 = getelementptr inbounds %struct._result_t, ptr %76, i64 0, i32 4
  br label %2049

2047:                                             ; preds = %2096
  %.lcssa45 = phi i32 [ %2098, %2096 ]
  %2048 = icmp ugt i32 %.lcssa45, 1
  br i1 %2048, label %2101, label %2198

2049:                                             ; preds = %2096, %2045
  %2050 = phi i64 [ 1, %2045 ], [ %2097, %2096 ]
  %2051 = load ptr, ptr %77, align 8, !tbaa !16
  %2052 = add nsw i64 %2050, -1
  %2053 = getelementptr inbounds ptr, ptr %2051, i64 %2052
  %2054 = load ptr, ptr %2053, align 8, !tbaa !7
  %2055 = getelementptr inbounds ptr, ptr %2051, i64 %2050
  %2056 = load ptr, ptr %2055, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %8) #32
  %2057 = getelementptr inbounds %struct._exon_t, ptr %2054, i64 0, i32 6
  %2058 = load i64, ptr %2057, align 4
  %2059 = and i64 %2058, 4294967295
  %2060 = or i64 %2059, -72057594037927936
  store i64 %2060, ptr %2057, align 4
  %2061 = getelementptr inbounds %struct._exon_t, ptr %2056, i64 0, i32 1
  %2062 = load i32, ptr %2061, align 4, !tbaa !45
  %2063 = getelementptr inbounds %struct._exon_t, ptr %2054, i64 0, i32 3
  %2064 = load i32, ptr %2063, align 4, !tbaa !107
  %2065 = sub i32 %2062, %2064
  %2066 = icmp eq i32 %2065, 1
  br i1 %2066, label %2067, label %2096

2067:                                             ; preds = %2049
  %2068 = getelementptr inbounds %struct._exon_t, ptr %2054, i64 0, i32 2
  %2069 = load i32, ptr %2068, align 4, !tbaa !39
  store i32 %2069, ptr %8, align 4, !tbaa !183
  store i32 %2064, ptr %54, align 4, !tbaa !185
  %2070 = load i32, ptr %2056, align 4, !tbaa !44
  store i32 %2070, ptr %55, align 4, !tbaa !186
  %2071 = call fastcc i32 @perfect_spl_p(ptr noundef %2042, ptr noundef %2043, ptr noundef nonnull %8) #35, !range !141
  %2072 = icmp eq i32 %2071, 0
  br i1 %2072, label %2096, label %2073

2073:                                             ; preds = %2067
  %2074 = load i32, ptr %56, align 4, !tbaa !187
  %2075 = load i32, ptr %2046, align 8, !tbaa !105
  %2076 = add nsw i32 %2075, %2074
  store i32 %2076, ptr %2046, align 8, !tbaa !105
  %2077 = load i64, ptr %2057, align 4
  %2078 = and i32 %2074, 3
  %2079 = zext i32 %2078 to i64
  %2080 = shl nuw nsw i64 %2079, 32
  %2081 = and i64 %2077, 72057581153026047
  %2082 = or i64 %2081, %2080
  %2083 = load i32, ptr %57, align 4, !tbaa !188
  %2084 = and i32 %2083, 255
  %2085 = zext i32 %2084 to i64
  %2086 = shl nuw i64 %2085, 56
  %2087 = or i64 %2086, %2082
  store i64 %2087, ptr %2057, align 4
  %2088 = load i32, ptr getelementptr inbounds (%struct._options_t, ptr @options, i64 0, i32 9), align 4, !tbaa !64
  %2089 = shl i32 %2088, 1
  %2090 = add i32 %2089, 4
  %2091 = and i32 %2090, 4194302
  %2092 = zext i32 %2091 to i64
  %2093 = shl nuw nsw i64 %2092, 34
  %2094 = and i64 %2087, -72057576858058753
  %2095 = or i64 %2093, %2094
  store i64 %2095, ptr %2057, align 4
  br label %2096

2096:                                             ; preds = %2073, %2067, %2049
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %8) #32
  %2097 = add nuw nsw i64 %2050, 1
  %2098 = load i32, ptr %83, align 8, !tbaa !37
  %2099 = zext i32 %2098 to i64
  %2100 = icmp ult i64 %2097, %2099
  br i1 %2100, label %2049, label %2047, !llvm.loop !189

2101:                                             ; preds = %2193, %2047
  %2102 = phi i32 [ %2194, %2193 ], [ %.lcssa45, %2047 ]
  %2103 = phi i64 [ %2195, %2193 ], [ 1, %2047 ]
  %2104 = load ptr, ptr %77, align 8, !tbaa !16
  %2105 = add nsw i64 %2103, -1
  %2106 = getelementptr inbounds ptr, ptr %2104, i64 %2105
  %2107 = load ptr, ptr %2106, align 8, !tbaa !7
  %2108 = getelementptr inbounds ptr, ptr %2104, i64 %2103
  %2109 = load ptr, ptr %2108, align 8, !tbaa !7
  %2110 = getelementptr inbounds %struct._exon_t, ptr %2109, i64 0, i32 1
  %2111 = load i32, ptr %2110, align 4, !tbaa !45
  %2112 = getelementptr inbounds %struct._exon_t, ptr %2107, i64 0, i32 3
  %2113 = load i32, ptr %2112, align 4, !tbaa !107
  %2114 = icmp ugt i32 %2111, %2113
  br i1 %2114, label %2193, label %2115

2115:                                             ; preds = %2101
  %2116 = sub i32 %2113, %2111
  %2117 = add i32 %2116, 2
  %2118 = zext i32 %2117 to i64
  %2119 = mul nuw nsw i64 %2118, 28
  %2120 = call ptr @xmalloc(i64 noundef %2119) #33
  %2121 = icmp eq i32 %2117, 0
  br i1 %2121, label %2191, label %2122

2122:                                             ; preds = %2115
  %2123 = getelementptr inbounds %struct._exon_t, ptr %2107, i64 0, i32 2
  %2124 = xor i32 %2116, -1
  br label %2125

2125:                                             ; preds = %2144, %2122
  %2126 = phi i64 [ 0, %2122 ], [ %2146, %2144 ]
  %2127 = phi i32 [ 0, %2122 ], [ %2145, %2144 ]
  %2128 = trunc i64 %2126 to i32
  %2129 = add i32 %2128, %2124
  %2130 = getelementptr inbounds %struct._splice_score_t, ptr %2120, i64 %2126
  %2131 = load <2 x i32>, ptr %2123, align 4, !tbaa !19
  %2132 = insertelement <2 x i32> poison, i32 %2129, i64 0
  %2133 = shufflevector <2 x i32> %2132, <2 x i32> poison, <2 x i32> zeroinitializer
  %2134 = add <2 x i32> %2133, %2131
  store <2 x i32> %2134, ptr %2130, align 4, !tbaa !19
  %2135 = load i32, ptr %2109, align 4, !tbaa !44
  %2136 = add i32 %2135, %2128
  %2137 = getelementptr inbounds %struct._splice_score_t, ptr %2120, i64 %2126, i32 2
  store i32 %2136, ptr %2137, align 4, !tbaa !186
  %2138 = call fastcc i32 @perfect_spl_p(ptr noundef %2042, ptr noundef %2043, ptr noundef nonnull %2130) #35, !range !141
  %2139 = icmp eq i32 %2138, 0
  br i1 %2139, label %2142, label %2140

2140:                                             ; preds = %2125
  %2141 = add i32 %2127, 1
  br label %2144

2142:                                             ; preds = %2125
  %2143 = getelementptr inbounds %struct._splice_score_t, ptr %2120, i64 %2126, i32 6
  store i32 0, ptr %2143, align 4, !tbaa !187
  br label %2144

2144:                                             ; preds = %2142, %2140
  %2145 = phi i32 [ %2141, %2140 ], [ %2127, %2142 ]
  %2146 = add nuw nsw i64 %2126, 1
  %2147 = icmp eq i64 %2146, %2118
  br i1 %2147, label %2148, label %2125, !llvm.loop !190

2148:                                             ; preds = %2144
  %.lcssa46 = phi i32 [ %2145, %2144 ]
  %2149 = icmp eq i32 %.lcssa46, 1
  br i1 %2149, label %2150, label %2191

2150:                                             ; preds = %2148
  %2151 = getelementptr inbounds %struct._exon_t, ptr %2107, i64 0, i32 6
  br label %2152

2152:                                             ; preds = %2188, %2150
  %2153 = phi i64 [ 0, %2150 ], [ %2189, %2188 ]
  %2154 = getelementptr inbounds %struct._splice_score_t, ptr %2120, i64 %2153, i32 6
  %2155 = load i32, ptr %2154, align 4, !tbaa !187
  %2156 = icmp eq i32 %2155, 0
  br i1 %2156, label %2188, label %2157

2157:                                             ; preds = %2152
  %2158 = getelementptr inbounds %struct._splice_score_t, ptr %2120, i64 %2153
  %2159 = load i32, ptr %2046, align 8, !tbaa !105
  %2160 = add nsw i32 %2159, %2155
  store i32 %2160, ptr %2046, align 8, !tbaa !105
  %2161 = load i64, ptr %2151, align 4
  %2162 = and i32 %2155, 3
  %2163 = zext i32 %2162 to i64
  %2164 = shl nuw nsw i64 %2163, 32
  %2165 = and i64 %2161, -12884901889
  %2166 = or i64 %2165, %2164
  store i64 %2166, ptr %2151, align 4
  %2167 = getelementptr inbounds %struct._splice_score_t, ptr %2120, i64 %2153, i32 3
  %2168 = load i32, ptr %2167, align 4, !tbaa !188
  %2169 = and i32 %2168, 255
  %2170 = zext i32 %2169 to i64
  %2171 = shl nuw i64 %2170, 56
  %2172 = and i64 %2166, 72057594037927935
  %2173 = or i64 %2171, %2172
  store i64 %2173, ptr %2151, align 4
  %2174 = load i32, ptr getelementptr inbounds (%struct._options_t, ptr @options, i64 0, i32 9), align 4, !tbaa !64
  %2175 = shl i32 %2174, 1
  %2176 = add i32 %2175, 4
  %2177 = and i32 %2176, 4194302
  %2178 = zext i32 %2177 to i64
  %2179 = shl nuw nsw i64 %2178, 34
  %2180 = and i64 %2173, -72057576858058753
  %2181 = or i64 %2179, %2180
  store i64 %2181, ptr %2151, align 4
  %2182 = load i32, ptr %2158, align 4, !tbaa !183
  store i32 %2182, ptr %2123, align 4, !tbaa !39
  %2183 = getelementptr inbounds %struct._splice_score_t, ptr %2120, i64 %2153, i32 1
  %2184 = load i32, ptr %2183, align 4, !tbaa !185
  store i32 %2184, ptr %2112, align 4, !tbaa !107
  %2185 = add i32 %2184, 1
  store i32 %2185, ptr %2110, align 4, !tbaa !45
  %2186 = getelementptr inbounds %struct._splice_score_t, ptr %2120, i64 %2153, i32 2
  %2187 = load i32, ptr %2186, align 4, !tbaa !186
  store i32 %2187, ptr %2109, align 4, !tbaa !44
  br label %2188

2188:                                             ; preds = %2157, %2152
  %2189 = add nuw nsw i64 %2153, 1
  %2190 = icmp eq i64 %2189, %2118
  br i1 %2190, label %2191, label %2152, !llvm.loop !191

2191:                                             ; preds = %2188, %2148, %2115
  call void @free(ptr noundef %2120) #33
  %2192 = load i32, ptr %83, align 8, !tbaa !37
  br label %2193

2193:                                             ; preds = %2191, %2101
  %2194 = phi i32 [ %2102, %2101 ], [ %2192, %2191 ]
  %2195 = add nuw nsw i64 %2103, 1
  %2196 = zext i32 %2194 to i64
  %2197 = icmp ult i64 %2195, %2196
  br i1 %2197, label %2101, label %2198, !llvm.loop !192

2198:                                             ; preds = %2193, %2047, %2040
  %2199 = phi i32 [ %.lcssa45, %2047 ], [ %2041, %2040 ], [ %2194, %2193 ]
  %2200 = getelementptr inbounds %struct._result_t, ptr %76, i64 0, i32 4
  %2201 = load i32, ptr %2200, align 8, !tbaa !105
  %2202 = icmp eq i32 %2201, 0
  br i1 %2202, label %2209, label %2329

2203:                                             ; preds = %1955
  %2204 = load ptr, ptr %37, align 8, !tbaa !133
  %2205 = load ptr, ptr %27, align 8, !tbaa !71
  %2206 = getelementptr inbounds %struct._result_t, ptr %76, i64 0, i32 4
  %2207 = load i32, ptr %2206, align 8, !tbaa !105
  %2208 = icmp eq i32 %2207, 0
  br i1 %2208, label %2319, label %2461

2209:                                             ; preds = %2198
  %2210 = icmp ugt i32 %2199, 1
  br i1 %2210, label %2211, label %2319

2211:                                             ; preds = %2309, %2209
  %2212 = phi i32 [ %2310, %2309 ], [ %2199, %2209 ]
  %2213 = phi i32 [ %2311, %2309 ], [ %2199, %2209 ]
  %2214 = phi i32 [ %2312, %2309 ], [ %2199, %2209 ]
  %2215 = phi i64 [ %2316, %2309 ], [ 1, %2209 ]
  %2216 = phi i32 [ %2315, %2309 ], [ 0, %2209 ]
  %2217 = phi i32 [ %2314, %2309 ], [ 0, %2209 ]
  %2218 = phi i32 [ %2313, %2309 ], [ undef, %2209 ]
  %2219 = load ptr, ptr %77, align 8, !tbaa !16
  %2220 = add nsw i64 %2215, -1
  %2221 = getelementptr inbounds ptr, ptr %2219, i64 %2220
  %2222 = load ptr, ptr %2221, align 8, !tbaa !7
  %2223 = getelementptr inbounds ptr, ptr %2219, i64 %2215
  %2224 = load ptr, ptr %2223, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %9) #32
  %2225 = getelementptr inbounds %struct._exon_t, ptr %2222, i64 0, i32 3
  %2226 = load i32, ptr %2225, align 4, !tbaa !107
  %2227 = add i32 %2226, 1
  %2228 = getelementptr inbounds %struct._exon_t, ptr %2224, i64 0, i32 1
  %2229 = load i32, ptr %2228, align 4, !tbaa !45
  %2230 = icmp ult i32 %2227, %2229
  br i1 %2230, label %2309, label %2231

2231:                                             ; preds = %2211
  %2232 = getelementptr inbounds %struct._exon_t, ptr %2222, i64 0, i32 6
  %2233 = load i64, ptr %2232, align 4
  %2234 = shl i64 %2233, 30
  %2235 = ashr i64 %2234, 62
  %2236 = trunc i64 %2235 to i32
  %2237 = icmp sgt i32 %2236, 0
  br i1 %2237, label %2238, label %2243

2238:                                             ; preds = %2231
  %2239 = lshr i64 %2233, 34
  %2240 = trunc i64 %2239 to i32
  %2241 = and i32 %2240, 4194303
  %2242 = add i32 %2241, %2216
  br label %2309

2243:                                             ; preds = %2231
  %2244 = icmp slt i32 %2236, 0
  br i1 %2244, label %2245, label %2250

2245:                                             ; preds = %2243
  %2246 = lshr i64 %2233, 34
  %2247 = trunc i64 %2246 to i32
  %2248 = and i32 %2247, 4194303
  %2249 = add i32 %2248, %2217
  br label %2309

2250:                                             ; preds = %2243
  %2251 = sub i32 %2226, %2229
  %2252 = add i32 %2251, 2
  %2253 = icmp eq i32 %2252, 0
  br i1 %2253, label %2298, label %2254

2254:                                             ; preds = %2250
  %2255 = getelementptr inbounds %struct._exon_t, ptr %2222, i64 0, i32 2
  %2256 = xor i32 %2251, -1
  br label %2257

2257:                                             ; preds = %2289, %2254
  %2258 = phi i32 [ 0, %2254 ], [ %2294, %2289 ]
  %2259 = phi i32 [ -1, %2254 ], [ %2293, %2289 ]
  %2260 = phi i32 [ 0, %2254 ], [ %2292, %2289 ]
  %2261 = phi i32 [ 0, %2254 ], [ %2291, %2289 ]
  %2262 = phi i32 [ %2218, %2254 ], [ %2290, %2289 ]
  %2263 = add i32 %2258, %2256
  %2264 = load <2 x i32>, ptr %2255, align 4, !tbaa !19
  %2265 = insertelement <2 x i32> poison, i32 %2263, i64 0
  %2266 = shufflevector <2 x i32> %2265, <2 x i32> poison, <2 x i32> zeroinitializer
  %2267 = add <2 x i32> %2264, %2266
  store <2 x i32> %2267, ptr %9, align 8, !tbaa !19
  %2268 = load i32, ptr %2224, align 4, !tbaa !44
  %2269 = add i32 %2268, %2258
  store i32 %2269, ptr %58, align 8, !tbaa !186
  call fastcc void @compute_max_score(ptr noundef %2042, ptr noundef %2043, ptr noundef nonnull %9, i32 noundef 0) #35
  %2270 = load i32, ptr %59, align 8
  %2271 = icmp ult i32 %2270, %2260
  br i1 %2271, label %2289, label %2272

2272:                                             ; preds = %2257
  %2273 = icmp ugt i32 %2270, %2260
  br i1 %2273, label %2274, label %2277

2274:                                             ; preds = %2272
  %2275 = load i32, ptr %61, align 4, !tbaa.struct !193
  %2276 = load i32, ptr %60, align 4, !tbaa.struct !194
  br label %2285

2277:                                             ; preds = %2272
  %2278 = load i32, ptr %60, align 4
  %2279 = icmp ult i32 %2278, %2261
  br i1 %2279, label %2289, label %2280

2280:                                             ; preds = %2277
  %2281 = icmp ugt i32 %2278, %2261
  %2282 = load i32, ptr %61, align 4
  %2283 = icmp ult i32 %2282, %2259
  %2284 = select i1 %2281, i1 true, i1 %2283
  br i1 %2284, label %2285, label %2289

2285:                                             ; preds = %2280, %2274
  %2286 = phi i32 [ %2276, %2274 ], [ %2278, %2280 ]
  %2287 = phi i32 [ %2275, %2274 ], [ %2282, %2280 ]
  %2288 = load i32, ptr %62, align 8, !tbaa.struct !195
  br label %2289

2289:                                             ; preds = %2285, %2280, %2277, %2257
  %2290 = phi i32 [ %2288, %2285 ], [ %2262, %2257 ], [ %2262, %2277 ], [ %2262, %2280 ]
  %2291 = phi i32 [ %2286, %2285 ], [ %2261, %2257 ], [ %2261, %2277 ], [ %2261, %2280 ]
  %2292 = phi i32 [ %2270, %2285 ], [ %2260, %2257 ], [ %2260, %2277 ], [ %2260, %2280 ]
  %2293 = phi i32 [ %2287, %2285 ], [ %2259, %2257 ], [ %2259, %2277 ], [ %2259, %2280 ]
  %2294 = add nuw i32 %2258, 1
  %2295 = icmp eq i32 %2294, %2252
  br i1 %2295, label %2296, label %2257, !llvm.loop !196

2296:                                             ; preds = %2289
  %.lcssa48 = phi i32 [ %2290, %2289 ]
  %.lcssa47 = phi i32 [ %2292, %2289 ]
  %2297 = load i32, ptr %83, align 8, !tbaa !37
  br label %2298

2298:                                             ; preds = %2296, %2250
  %2299 = phi i32 [ %2212, %2250 ], [ %2297, %2296 ]
  %2300 = phi i32 [ %2213, %2250 ], [ %2297, %2296 ]
  %2301 = phi i32 [ %2218, %2250 ], [ %.lcssa48, %2296 ]
  %2302 = phi i32 [ 0, %2250 ], [ %.lcssa47, %2296 ]
  %2303 = icmp sgt i32 %2301, 0
  %2304 = select i1 %2303, i32 %2302, i32 0
  %2305 = add i32 %2304, %2216
  %2306 = icmp slt i32 %2301, 0
  %2307 = select i1 %2306, i32 %2302, i32 0
  %2308 = add i32 %2307, %2217
  br label %2309

2309:                                             ; preds = %2298, %2245, %2238, %2211
  %2310 = phi i32 [ %2212, %2211 ], [ %2212, %2238 ], [ %2212, %2245 ], [ %2299, %2298 ]
  %2311 = phi i32 [ %2213, %2211 ], [ %2213, %2238 ], [ %2213, %2245 ], [ %2300, %2298 ]
  %2312 = phi i32 [ %2214, %2211 ], [ %2214, %2238 ], [ %2214, %2245 ], [ %2300, %2298 ]
  %2313 = phi i32 [ %2218, %2211 ], [ %2218, %2238 ], [ %2218, %2245 ], [ %2301, %2298 ]
  %2314 = phi i32 [ %2217, %2211 ], [ %2217, %2238 ], [ %2249, %2245 ], [ %2308, %2298 ]
  %2315 = phi i32 [ %2216, %2211 ], [ %2242, %2238 ], [ %2216, %2245 ], [ %2305, %2298 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %9) #32
  %2316 = add nuw nsw i64 %2215, 1
  %2317 = zext i32 %2312 to i64
  %2318 = icmp ult i64 %2316, %2317
  br i1 %2318, label %2211, label %2319, !llvm.loop !197

2319:                                             ; preds = %2309, %2209, %2203
  %2320 = phi ptr [ %2043, %2209 ], [ %2205, %2203 ], [ %2043, %2309 ]
  %2321 = phi ptr [ %2042, %2209 ], [ %2204, %2203 ], [ %2042, %2309 ]
  %2322 = phi ptr [ %2200, %2209 ], [ %2206, %2203 ], [ %2200, %2309 ]
  %2323 = phi i32 [ %2199, %2209 ], [ 0, %2203 ], [ %2310, %2309 ]
  %2324 = phi i32 [ %2199, %2209 ], [ 0, %2203 ], [ %2312, %2309 ]
  %2325 = phi i32 [ 0, %2209 ], [ 0, %2203 ], [ %2314, %2309 ]
  %2326 = phi i32 [ 0, %2209 ], [ 0, %2203 ], [ %2315, %2309 ]
  %2327 = icmp ult i32 %2326, %2325
  %2328 = select i1 %2327, i32 -1, i32 1
  store i32 %2328, ptr %2322, align 8, !tbaa !105
  br label %2329

2329:                                             ; preds = %2319, %2198
  %2330 = phi ptr [ %2322, %2319 ], [ %2200, %2198 ]
  %2331 = phi ptr [ %2321, %2319 ], [ %2042, %2198 ]
  %2332 = phi ptr [ %2320, %2319 ], [ %2043, %2198 ]
  %2333 = phi i32 [ %2323, %2319 ], [ %2199, %2198 ]
  %2334 = phi i32 [ %2324, %2319 ], [ %2199, %2198 ]
  %2335 = icmp ugt i32 %2334, 1
  br i1 %2335, label %2336, label %2461

2336:                                             ; preds = %2451, %2329
  %2337 = phi i32 [ %2452, %2451 ], [ %2333, %2329 ]
  %2338 = phi i32 [ %2453, %2451 ], [ %2334, %2329 ]
  %2339 = phi i64 [ %2458, %2451 ], [ 1, %2329 ]
  %2340 = phi i32 [ %2457, %2451 ], [ undef, %2329 ]
  %2341 = phi i32 [ %2456, %2451 ], [ undef, %2329 ]
  %2342 = phi i32 [ %2455, %2451 ], [ undef, %2329 ]
  %2343 = phi i32 [ %2454, %2451 ], [ undef, %2329 ]
  %2344 = load ptr, ptr %77, align 8, !tbaa !16
  %2345 = add nsw i64 %2339, -1
  %2346 = getelementptr inbounds ptr, ptr %2344, i64 %2345
  %2347 = load ptr, ptr %2346, align 8, !tbaa !7
  %2348 = getelementptr inbounds ptr, ptr %2344, i64 %2339
  %2349 = load ptr, ptr %2348, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %10) #32
  %2350 = getelementptr inbounds %struct._exon_t, ptr %2347, i64 0, i32 6
  %2351 = load i64, ptr %2350, align 4
  %2352 = ashr i64 %2351, 56
  %2353 = and i64 %2352, 2147483648
  %2354 = icmp eq i64 %2353, 0
  br i1 %2354, label %2355, label %2362

2355:                                             ; preds = %2336
  %2356 = shl i64 %2351, 30
  %2357 = ashr i64 %2356, 62
  %2358 = trunc i64 %2357 to i32
  %2359 = load i32, ptr %2330, align 8, !tbaa !105
  %2360 = mul nsw i32 %2359, %2358
  %2361 = icmp sgt i32 %2360, 0
  br i1 %2361, label %2451, label %2362

2362:                                             ; preds = %2355, %2336
  %2363 = getelementptr inbounds %struct._exon_t, ptr %2347, i64 0, i32 3
  %2364 = load i32, ptr %2363, align 4, !tbaa !107
  %2365 = add i32 %2364, 1
  %2366 = getelementptr inbounds %struct._exon_t, ptr %2349, i64 0, i32 1
  %2367 = load i32, ptr %2366, align 4, !tbaa !45
  %2368 = icmp ult i32 %2365, %2367
  br i1 %2368, label %2451, label %2369

2369:                                             ; preds = %2362
  %2370 = sub i32 %2364, %2367
  %2371 = add i32 %2370, 2
  %2372 = icmp eq i32 %2371, 0
  br i1 %2372, label %2427, label %2373

2373:                                             ; preds = %2369
  %2374 = getelementptr inbounds %struct._exon_t, ptr %2347, i64 0, i32 2
  %2375 = xor i32 %2370, -1
  br label %2376

2376:                                             ; preds = %2415, %2373
  %2377 = phi i32 [ 0, %2373 ], [ %2423, %2415 ]
  %2378 = phi i32 [ %2340, %2373 ], [ %2422, %2415 ]
  %2379 = phi i32 [ %2341, %2373 ], [ %2421, %2415 ]
  %2380 = phi i32 [ %2342, %2373 ], [ %2420, %2415 ]
  %2381 = phi i32 [ -1, %2373 ], [ %2419, %2415 ]
  %2382 = phi i32 [ 0, %2373 ], [ %2418, %2415 ]
  %2383 = phi i32 [ 0, %2373 ], [ %2417, %2415 ]
  %2384 = phi i32 [ %2343, %2373 ], [ %2416, %2415 ]
  %2385 = add i32 %2377, %2375
  %2386 = load <2 x i32>, ptr %2374, align 4, !tbaa !19
  %2387 = insertelement <2 x i32> poison, i32 %2385, i64 0
  %2388 = shufflevector <2 x i32> %2387, <2 x i32> poison, <2 x i32> zeroinitializer
  %2389 = add <2 x i32> %2386, %2388
  store <2 x i32> %2389, ptr %10, align 8, !tbaa !19
  %2390 = load i32, ptr %2349, align 4, !tbaa !44
  %2391 = add i32 %2390, %2377
  store i32 %2391, ptr %64, align 8, !tbaa !186
  %2392 = load i32, ptr %2330, align 8, !tbaa !105
  call fastcc void @compute_max_score(ptr noundef %2331, ptr noundef %2332, ptr noundef nonnull %10, i32 noundef %2392) #35
  %2393 = load i32, ptr %65, align 8
  %2394 = icmp ult i32 %2393, %2382
  br i1 %2394, label %2415, label %2395

2395:                                             ; preds = %2376
  %2396 = icmp ugt i32 %2393, %2382
  br i1 %2396, label %2397, label %2400

2397:                                             ; preds = %2395
  %2398 = load i32, ptr %67, align 4, !tbaa.struct !193
  %2399 = load i32, ptr %66, align 4, !tbaa.struct !194
  br label %2408

2400:                                             ; preds = %2395
  %2401 = load i32, ptr %66, align 4
  %2402 = icmp ult i32 %2401, %2383
  br i1 %2402, label %2415, label %2403

2403:                                             ; preds = %2400
  %2404 = icmp ugt i32 %2401, %2383
  %2405 = load i32, ptr %67, align 4
  %2406 = icmp ult i32 %2405, %2381
  %2407 = select i1 %2404, i1 true, i1 %2406
  br i1 %2407, label %2408, label %2415

2408:                                             ; preds = %2403, %2397
  %2409 = phi i32 [ %2399, %2397 ], [ %2401, %2403 ]
  %2410 = phi i32 [ %2398, %2397 ], [ %2405, %2403 ]
  %2411 = load i32, ptr %10, align 8, !tbaa.struct !198
  %2412 = load i32, ptr %63, align 4, !tbaa.struct !199
  %2413 = load i32, ptr %64, align 8, !tbaa.struct !200
  %2414 = load i32, ptr %68, align 8, !tbaa.struct !195
  br label %2415

2415:                                             ; preds = %2408, %2403, %2400, %2376
  %2416 = phi i32 [ %2414, %2408 ], [ %2384, %2376 ], [ %2384, %2400 ], [ %2384, %2403 ]
  %2417 = phi i32 [ %2409, %2408 ], [ %2383, %2376 ], [ %2383, %2400 ], [ %2383, %2403 ]
  %2418 = phi i32 [ %2393, %2408 ], [ %2382, %2376 ], [ %2382, %2400 ], [ %2382, %2403 ]
  %2419 = phi i32 [ %2410, %2408 ], [ %2381, %2376 ], [ %2381, %2400 ], [ %2381, %2403 ]
  %2420 = phi i32 [ %2413, %2408 ], [ %2380, %2376 ], [ %2380, %2400 ], [ %2380, %2403 ]
  %2421 = phi i32 [ %2412, %2408 ], [ %2379, %2376 ], [ %2379, %2400 ], [ %2379, %2403 ]
  %2422 = phi i32 [ %2411, %2408 ], [ %2378, %2376 ], [ %2378, %2400 ], [ %2378, %2403 ]
  %2423 = add nuw i32 %2377, 1
  %2424 = icmp eq i32 %2423, %2371
  br i1 %2424, label %2425, label %2376, !llvm.loop !201

2425:                                             ; preds = %2415
  %.lcssa54 = phi i32 [ %2416, %2415 ]
  %.lcssa53 = phi i32 [ %2418, %2415 ]
  %.lcssa52 = phi i32 [ %2419, %2415 ]
  %.lcssa51 = phi i32 [ %2420, %2415 ]
  %.lcssa50 = phi i32 [ %2421, %2415 ]
  %.lcssa49 = phi i32 [ %2422, %2415 ]
  %2426 = load i64, ptr %2350, align 4
  br label %2427

2427:                                             ; preds = %2425, %2369
  %2428 = phi i64 [ %2351, %2369 ], [ %2426, %2425 ]
  %2429 = phi i32 [ %2343, %2369 ], [ %.lcssa54, %2425 ]
  %2430 = phi i32 [ 0, %2369 ], [ %.lcssa53, %2425 ]
  %2431 = phi i32 [ -1, %2369 ], [ %.lcssa52, %2425 ]
  %2432 = phi i32 [ %2342, %2369 ], [ %.lcssa51, %2425 ]
  %2433 = phi i32 [ %2341, %2369 ], [ %.lcssa50, %2425 ]
  %2434 = phi i32 [ %2340, %2369 ], [ %.lcssa49, %2425 ]
  %2435 = and i32 %2429, 3
  %2436 = zext i32 %2435 to i64
  %2437 = shl nuw nsw i64 %2436, 32
  %2438 = and i64 %2428, 4294967295
  %2439 = or i64 %2437, %2438
  %2440 = and i32 %2431, 255
  %2441 = zext i32 %2440 to i64
  %2442 = shl nuw i64 %2441, 56
  %2443 = or i64 %2442, %2439
  %2444 = and i32 %2430, 4194303
  %2445 = zext i32 %2444 to i64
  %2446 = shl nuw nsw i64 %2445, 34
  %2447 = or i64 %2443, %2446
  store i64 %2447, ptr %2350, align 4
  %2448 = getelementptr inbounds %struct._exon_t, ptr %2347, i64 0, i32 2
  store i32 %2434, ptr %2448, align 4, !tbaa !39
  store i32 %2433, ptr %2363, align 4, !tbaa !107
  %2449 = add i32 %2433, 1
  store i32 %2449, ptr %2366, align 4, !tbaa !45
  store i32 %2432, ptr %2349, align 4, !tbaa !44
  %2450 = load i32, ptr %83, align 8, !tbaa !37
  br label %2451

2451:                                             ; preds = %2427, %2362, %2355
  %2452 = phi i32 [ %2337, %2355 ], [ %2337, %2362 ], [ %2450, %2427 ]
  %2453 = phi i32 [ %2338, %2355 ], [ %2338, %2362 ], [ %2450, %2427 ]
  %2454 = phi i32 [ %2343, %2355 ], [ %2343, %2362 ], [ %2429, %2427 ]
  %2455 = phi i32 [ %2342, %2355 ], [ %2342, %2362 ], [ %2432, %2427 ]
  %2456 = phi i32 [ %2341, %2355 ], [ %2341, %2362 ], [ %2433, %2427 ]
  %2457 = phi i32 [ %2340, %2355 ], [ %2340, %2362 ], [ %2434, %2427 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %10) #32
  %2458 = add nuw nsw i64 %2339, 1
  %2459 = zext i32 %2453 to i64
  %2460 = icmp ult i64 %2458, %2459
  br i1 %2460, label %2336, label %2461, !llvm.loop !202

2461:                                             ; preds = %2451, %2329, %2203
  %2462 = phi i32 [ %2333, %2329 ], [ 0, %2203 ], [ %2452, %2451 ]
  %2463 = load ptr, ptr %37, align 8, !tbaa !133
  %2464 = load ptr, ptr %27, align 8, !tbaa !71
  %2465 = load i32, ptr %16, align 8, !tbaa !130
  %2466 = load i32, ptr %20, align 4, !tbaa !72
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #32
  store ptr null, ptr %76, align 8, !tbaa !7
  %2467 = add nsw i32 %2465, 1
  store i32 %2467, ptr %4, align 4, !tbaa !44
  %2468 = add nsw i32 %2466, 1
  store i32 %2468, ptr %69, align 4, !tbaa !45
  store i32 0, ptr %70, align 4, !tbaa !39
  store i32 0, ptr %71, align 4, !tbaa !107
  %2469 = getelementptr i8, ptr %2463, i64 -1
  %2470 = getelementptr i8, ptr %2464, i64 -1
  %2471 = add i32 %2462, -1
  %2472 = icmp sgt i32 %2471, -1
  br i1 %2472, label %2473, label %2755

2473:                                             ; preds = %2461
  %2474 = zext i32 %2471 to i64
  br label %2475

2475:                                             ; preds = %2696, %2473
  %2476 = phi i64 [ %2474, %2473 ], [ %2719, %2696 ]
  %2477 = phi i32 [ 0, %2473 ], [ %2703, %2696 ]
  %2478 = phi ptr [ %4, %2473 ], [ %2487, %2696 ]
  %2479 = phi i32 [ %2465, %2473 ], [ %2592, %2696 ]
  %2480 = phi i32 [ %2466, %2473 ], [ %2538, %2696 ]
  %2481 = phi i32 [ 0, %2473 ], [ %2699, %2696 ]
  %2482 = phi ptr [ null, %2473 ], [ %2718, %2696 ]
  %2483 = phi i32 [ 0, %2473 ], [ %2700, %2696 ]
  %2484 = phi ptr [ %69, %2473 ], [ %2488, %2696 ]
  %2485 = load ptr, ptr %77, align 8, !tbaa !16
  %2486 = getelementptr inbounds ptr, ptr %2485, i64 %2476
  %2487 = load ptr, ptr %2486, align 8, !tbaa !7
  %2488 = getelementptr inbounds %struct._exon_t, ptr %2487, i64 0, i32 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #32
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #32
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #32
  %2489 = load i32, ptr %2484, align 4, !tbaa !45
  %2490 = getelementptr inbounds %struct._exon_t, ptr %2487, i64 0, i32 3
  %2491 = load i32, ptr %2490, align 4, !tbaa !107
  %2492 = add i32 %2491, 1
  %2493 = icmp eq i32 %2489, %2492
  br i1 %2493, label %2518, label %2494

2494:                                             ; preds = %2475
  %2495 = icmp eq i32 %2477, 0
  br i1 %2495, label %2512, label %2496

2496:                                             ; preds = %2494
  %2497 = call ptr @xmalloc(i64 noundef 40) #33
  %2498 = load ptr, ptr %76, align 8, !tbaa !7
  store ptr %2498, ptr %2497, align 8, !tbaa !118
  store ptr %2497, ptr %76, align 8, !tbaa !7
  %2499 = getelementptr inbounds %struct._edit_script_list, ptr %2497, i64 0, i32 1
  store ptr %2482, ptr %2499, align 8, !tbaa !121
  %2500 = load i32, ptr %2478, align 4, !tbaa !44
  %2501 = getelementptr inbounds %struct._edit_script_list, ptr %2497, i64 0, i32 2
  store i32 %2500, ptr %2501, align 8, !tbaa !122
  %2502 = load i32, ptr %2484, align 4, !tbaa !45
  %2503 = getelementptr inbounds %struct._edit_script_list, ptr %2497, i64 0, i32 3
  store i32 %2502, ptr %2503, align 4, !tbaa !123
  %2504 = add i32 %2479, 1
  %2505 = sub i32 %2504, %2500
  %2506 = getelementptr inbounds %struct._edit_script_list, ptr %2497, i64 0, i32 4
  store i32 %2505, ptr %2506, align 8, !tbaa !124
  %2507 = add i32 %2480, 1
  %2508 = sub i32 %2507, %2502
  %2509 = getelementptr inbounds %struct._edit_script_list, ptr %2497, i64 0, i32 5
  store i32 %2508, ptr %2509, align 4, !tbaa !120
  %2510 = getelementptr inbounds %struct._edit_script_list, ptr %2497, i64 0, i32 6
  store i32 %2481, ptr %2510, align 8, !tbaa !203
  %2511 = load i32, ptr %2490, align 4, !tbaa !107
  br label %2512

2512:                                             ; preds = %2496, %2494
  %2513 = phi i32 [ %2511, %2496 ], [ %2491, %2494 ]
  %2514 = phi ptr [ null, %2496 ], [ %2482, %2494 ]
  %2515 = phi i32 [ 0, %2496 ], [ %2481, %2494 ]
  %2516 = getelementptr inbounds %struct._exon_t, ptr %2487, i64 0, i32 2
  %2517 = load i32, ptr %2516, align 4, !tbaa !39
  br label %2533

2518:                                             ; preds = %2475
  %2519 = load i32, ptr %2478, align 4, !tbaa !44
  %2520 = getelementptr inbounds %struct._exon_t, ptr %2487, i64 0, i32 2
  %2521 = load i32, ptr %2520, align 4, !tbaa !39
  %2522 = xor i32 %2521, -1
  %2523 = add i32 %2519, %2522
  %2524 = icmp eq i32 %2523, 0
  br i1 %2524, label %2533, label %2525

2525:                                             ; preds = %2518
  %2526 = icmp eq i32 %2477, 0
  br i1 %2526, label %2533, label %2527

2527:                                             ; preds = %2525
  %2528 = call ptr @xmalloc(i64 noundef 16) #33
  %2529 = getelementptr inbounds %struct._edit_script, ptr %2528, i64 0, i32 2
  store i8 1, ptr %2529, align 4, !tbaa !11
  %2530 = getelementptr inbounds %struct._edit_script, ptr %2528, i64 0, i32 1
  store i32 %2523, ptr %2530, align 8, !tbaa !14
  store ptr %2482, ptr %2528, align 8, !tbaa !15
  %2531 = load i32, ptr %2520, align 4, !tbaa !39
  %2532 = load i32, ptr %2490, align 4, !tbaa !107
  br label %2533

2533:                                             ; preds = %2527, %2525, %2518, %2512
  %2534 = phi i32 [ %2513, %2512 ], [ %2532, %2527 ], [ %2491, %2518 ], [ %2491, %2525 ]
  %2535 = phi i32 [ %2517, %2512 ], [ %2531, %2527 ], [ %2521, %2518 ], [ %2521, %2525 ]
  %2536 = phi ptr [ %2514, %2512 ], [ %2528, %2527 ], [ %2482, %2518 ], [ %2482, %2525 ]
  %2537 = phi i32 [ %2515, %2512 ], [ %2481, %2527 ], [ %2481, %2518 ], [ %2481, %2525 ]
  %2538 = phi i32 [ %2513, %2512 ], [ %2480, %2527 ], [ %2480, %2518 ], [ %2480, %2525 ]
  %2539 = phi i32 [ %2517, %2512 ], [ %2479, %2527 ], [ %2479, %2518 ], [ %2521, %2525 ]
  %2540 = load i32, ptr %2487, align 4, !tbaa !44
  %2541 = add i32 %2540, -1
  %2542 = load i32, ptr %2488, align 4, !tbaa !45
  %2543 = add i32 %2542, -1
  %2544 = getelementptr inbounds %struct._exon_t, ptr %2487, i64 0, i32 2
  %2545 = add i32 %2534, 1
  %2546 = sub i32 %2545, %2542
  %2547 = uitofp i32 %2546 to double
  %2548 = fmul double %2547, 2.000000e-01
  %2549 = fcmp ogt double %2548, 1.000000e+03
  %2550 = select i1 %2549, double %2548, double 1.000000e+03
  %2551 = fptosi double %2550 to i32
  %2552 = call i32 @align_get_dist(ptr noundef %2463, ptr noundef %2464, i32 noundef %2541, i32 noundef %2543, i32 noundef %2535, i32 noundef %2534, i32 noundef %2551) #33
  %2553 = icmp slt i32 %2552, 0
  br i1 %2553, label %2695, label %2554

2554:                                             ; preds = %2533
  %2555 = load i32, ptr %2487, align 4, !tbaa !44
  %2556 = add i32 %2555, -1
  %2557 = load i32, ptr %2488, align 4, !tbaa !45
  %2558 = add i32 %2557, -1
  %2559 = load i32, ptr %2544, align 4, !tbaa !39
  %2560 = load i32, ptr %2490, align 4, !tbaa !107
  call void @align_path(ptr noundef %2463, ptr noundef %2464, i32 noundef %2556, i32 noundef %2558, i32 noundef %2559, i32 noundef %2560, i32 noundef %2552, ptr noundef nonnull %5, ptr noundef nonnull %6, i32 noundef %2465, i32 noundef %2466) #33
  %2561 = load ptr, ptr %6, align 8, !tbaa !7
  %2562 = icmp eq ptr %2561, null
  br i1 %2562, label %2695, label %2563

2563:                                             ; preds = %2554
  call void @Condense_both_Ends(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7) #33
  %2564 = getelementptr inbounds %struct._exon_t, ptr %2478, i64 0, i32 2
  %2565 = load i32, ptr %2564, align 4, !tbaa !39
  %2566 = icmp eq i32 %2565, 0
  br i1 %2566, label %2567, label %2591

2567:                                             ; preds = %2563
  %2568 = load ptr, ptr %6, align 8, !tbaa !7
  %2569 = getelementptr inbounds %struct._edit_script, ptr %2568, i64 0, i32 2
  %2570 = load i8, ptr %2569, align 4, !tbaa !11
  %2571 = icmp eq i8 %2570, 1
  br i1 %2571, label %2572, label %2591

2572:                                             ; preds = %2567
  %2573 = getelementptr inbounds %struct._edit_script, ptr %2568, i64 0, i32 1
  %2574 = load i32, ptr %2573, align 8, !tbaa !14
  %2575 = sub nsw i32 %2552, %2574
  %2576 = load i32, ptr %2544, align 4, !tbaa !39
  %2577 = sub i32 %2576, %2574
  store i32 %2577, ptr %2544, align 4, !tbaa !39
  %2578 = sub nsw i32 %2539, %2574
  %2579 = icmp eq ptr %2536, null
  br i1 %2579, label %2588, label %2580

2580:                                             ; preds = %2572
  %2581 = getelementptr inbounds %struct._edit_script, ptr %2536, i64 0, i32 2
  %2582 = load i8, ptr %2581, align 4, !tbaa !11
  %2583 = icmp eq i8 %2582, 1
  br i1 %2583, label %2584, label %2588

2584:                                             ; preds = %2580
  %2585 = getelementptr inbounds %struct._edit_script, ptr %2536, i64 0, i32 1
  %2586 = load i32, ptr %2585, align 8, !tbaa !14
  %2587 = add nsw i32 %2586, %2574
  store i32 %2587, ptr %2585, align 8, !tbaa !14
  br label %2588

2588:                                             ; preds = %2584, %2580, %2572
  call void @free(ptr noundef nonnull %2568) #33
  %2589 = load ptr, ptr %7, align 8, !tbaa !7
  store ptr null, ptr %2589, align 8, !tbaa !15
  %2590 = load ptr, ptr %7, align 8, !tbaa !7
  store ptr %2590, ptr %6, align 8, !tbaa !7
  br label %2591

2591:                                             ; preds = %2588, %2567, %2563
  %2592 = phi i32 [ %2539, %2563 ], [ %2578, %2588 ], [ %2539, %2567 ]
  %2593 = phi i32 [ %2552, %2563 ], [ %2575, %2588 ], [ %2552, %2567 ]
  %2594 = icmp eq i64 %2476, 0
  %2595 = load ptr, ptr %5, align 8
  %2596 = icmp ne ptr %2595, null
  %2597 = select i1 %2594, i1 %2596, i1 false
  br i1 %2597, label %2598, label %2617

2598:                                             ; preds = %2591
  %2599 = getelementptr inbounds %struct._edit_script, ptr %2595, i64 0, i32 2
  %2600 = load i8, ptr %2599, align 4, !tbaa !11
  %2601 = icmp eq i8 %2600, 1
  br i1 %2601, label %2606, label %2602

2602:                                             ; preds = %2598
  %2603 = add nsw i32 %2593, %2537
  %2604 = load i32, ptr %2487, align 4, !tbaa !44
  %2605 = load i32, ptr %2488, align 4, !tbaa !45
  br label %2624

2606:                                             ; preds = %2598
  %2607 = getelementptr inbounds %struct._edit_script, ptr %2595, i64 0, i32 1
  %2608 = load i32, ptr %2607, align 8, !tbaa !14
  %2609 = sub nsw i32 %2593, %2608
  %2610 = load i32, ptr %2487, align 4, !tbaa !44
  %2611 = add i32 %2610, %2608
  store i32 %2611, ptr %2487, align 4, !tbaa !44
  %2612 = load ptr, ptr %2595, align 8, !tbaa !15
  %2613 = load ptr, ptr %6, align 8, !tbaa !7
  %2614 = icmp eq ptr %2613, %2595
  br i1 %2614, label %2615, label %2616

2615:                                             ; preds = %2606
  store ptr %2612, ptr %6, align 8, !tbaa !7
  br label %2616

2616:                                             ; preds = %2615, %2606
  call void @free(ptr noundef nonnull %2595) #33
  store ptr %2612, ptr %5, align 8, !tbaa !7
  br label %2617

2617:                                             ; preds = %2616, %2591
  %2618 = phi ptr [ %2612, %2616 ], [ %2595, %2591 ]
  %2619 = phi i32 [ %2609, %2616 ], [ %2593, %2591 ]
  %2620 = add nsw i32 %2619, %2537
  %2621 = load i32, ptr %2487, align 4, !tbaa !44
  %2622 = load i32, ptr %2488, align 4, !tbaa !45
  %2623 = icmp eq ptr %2618, null
  br i1 %2623, label %2696, label %2624

2624:                                             ; preds = %2617, %2602
  %2625 = phi i32 [ %2605, %2602 ], [ %2622, %2617 ]
  %2626 = phi i32 [ %2604, %2602 ], [ %2621, %2617 ]
  %2627 = phi i32 [ %2603, %2602 ], [ %2620, %2617 ]
  %2628 = phi ptr [ %2595, %2602 ], [ %2618, %2617 ]
  %2629 = zext i32 %2625 to i64
  %2630 = getelementptr i8, ptr %2470, i64 %2629
  %2631 = zext i32 %2626 to i64
  %2632 = getelementptr i8, ptr %2469, i64 %2631
  br label %2633

2633:                                             ; preds = %2687, %2624
  %2634 = phi ptr [ %2693, %2687 ], [ %2628, %2624 ]
  %2635 = phi i32 [ %2692, %2687 ], [ 0, %2624 ]
  %2636 = phi i32 [ %2691, %2687 ], [ 0, %2624 ]
  %2637 = phi ptr [ %2690, %2687 ], [ %2630, %2624 ]
  %2638 = phi ptr [ %2689, %2687 ], [ %2632, %2624 ]
  %2639 = phi i32 [ %2688, %2687 ], [ %2483, %2624 ]
  %2640 = getelementptr inbounds %struct._edit_script, ptr %2634, i64 0, i32 2
  %2641 = load i8, ptr %2640, align 4, !tbaa !11
  %2642 = sext i8 %2641 to i32
  switch i32 %2642, label %2687 [
    i32 1, label %2650
    i32 2, label %2657
    i32 3, label %2643
  ]

2643:                                             ; preds = %2633
  %2644 = getelementptr inbounds %struct._edit_script, ptr %2634, i64 0, i32 1
  %2645 = load i32, ptr %2644, align 8, !tbaa !14
  %2646 = icmp sgt i32 %2645, 0
  br i1 %2646, label %2647, label %2687

2647:                                             ; preds = %2643
  %2648 = add nsw i32 %2645, -1
  %2649 = zext i32 %2648 to i64
  br label %2664

2650:                                             ; preds = %2633
  %2651 = getelementptr inbounds %struct._edit_script, ptr %2634, i64 0, i32 1
  %2652 = load i32, ptr %2651, align 8, !tbaa !14
  %2653 = add nsw i32 %2652, %2635
  %2654 = add nsw i32 %2652, %2636
  %2655 = sext i32 %2652 to i64
  %2656 = getelementptr inbounds i8, ptr %2638, i64 %2655
  br label %2687

2657:                                             ; preds = %2633
  %2658 = getelementptr inbounds %struct._edit_script, ptr %2634, i64 0, i32 1
  %2659 = load i32, ptr %2658, align 8, !tbaa !14
  %2660 = add nsw i32 %2659, %2635
  %2661 = add nsw i32 %2659, %2636
  %2662 = sext i32 %2659 to i64
  %2663 = getelementptr inbounds i8, ptr %2637, i64 %2662
  br label %2687

2664:                                             ; preds = %2664, %2647
  %2665 = phi i32 [ %2678, %2664 ], [ 0, %2647 ]
  %2666 = phi i32 [ %2677, %2664 ], [ %2636, %2647 ]
  %2667 = phi ptr [ %2680, %2664 ], [ %2637, %2647 ]
  %2668 = phi ptr [ %2679, %2664 ], [ %2638, %2647 ]
  %2669 = phi i32 [ %2674, %2664 ], [ %2639, %2647 ]
  %2670 = load i8, ptr %2668, align 1, !tbaa !16
  %2671 = load i8, ptr %2667, align 1, !tbaa !16
  %2672 = icmp eq i8 %2670, %2671
  %2673 = zext i1 %2672 to i32
  %2674 = add i32 %2669, %2673
  %2675 = xor i1 %2672, true
  %2676 = zext i1 %2675 to i32
  %2677 = add nsw i32 %2666, %2676
  %2678 = add nuw nsw i32 %2665, 1
  %2679 = getelementptr inbounds i8, ptr %2668, i64 1
  %2680 = getelementptr inbounds i8, ptr %2667, i64 1
  %2681 = icmp eq i32 %2678, %2645
  br i1 %2681, label %2682, label %2664, !llvm.loop !204

2682:                                             ; preds = %2664
  %.lcssa56 = phi i32 [ %2674, %2664 ]
  %.lcssa55 = phi i32 [ %2677, %2664 ]
  %2683 = getelementptr i8, ptr %2637, i64 1
  %2684 = getelementptr i8, ptr %2638, i64 1
  %2685 = getelementptr i8, ptr %2684, i64 %2649
  %2686 = getelementptr i8, ptr %2683, i64 %2649
  br label %2687

2687:                                             ; preds = %2682, %2657, %2650, %2643, %2633
  %2688 = phi i32 [ %2639, %2633 ], [ %2639, %2657 ], [ %2639, %2650 ], [ %2639, %2643 ], [ %.lcssa56, %2682 ]
  %2689 = phi ptr [ %2638, %2633 ], [ %2638, %2657 ], [ %2656, %2650 ], [ %2638, %2643 ], [ %2685, %2682 ]
  %2690 = phi ptr [ %2637, %2633 ], [ %2663, %2657 ], [ %2637, %2650 ], [ %2637, %2643 ], [ %2686, %2682 ]
  %2691 = phi i32 [ %2636, %2633 ], [ %2661, %2657 ], [ %2654, %2650 ], [ %2636, %2643 ], [ %.lcssa55, %2682 ]
  %2692 = phi i32 [ %2635, %2633 ], [ %2660, %2657 ], [ %2653, %2650 ], [ %2635, %2643 ], [ %2635, %2682 ]
  %2693 = load ptr, ptr %2634, align 8, !tbaa !7
  %2694 = icmp eq ptr %2693, null
  br i1 %2694, label %2696, label %2633, !llvm.loop !205

2695:                                             ; preds = %2554, %2533
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #32
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #32
  br label %2759

2696:                                             ; preds = %2687, %2617
  %2697 = phi i32 [ %2622, %2617 ], [ %2625, %2687 ]
  %2698 = phi i32 [ %2621, %2617 ], [ %2626, %2687 ]
  %2699 = phi i32 [ %2620, %2617 ], [ %2627, %2687 ]
  %2700 = phi i32 [ %2483, %2617 ], [ %2688, %2687 ]
  %2701 = phi i32 [ 0, %2617 ], [ %2691, %2687 ]
  %2702 = phi i32 [ 0, %2617 ], [ %2692, %2687 ]
  %2703 = load i32, ptr %2544, align 4, !tbaa !39
  %2704 = load i32, ptr %2490, align 4, !tbaa !107
  %2705 = add i32 %2697, %2698
  %2706 = sub i32 %2702, %2705
  %2707 = add i32 %2706, 2
  %2708 = add i32 %2707, %2703
  %2709 = add i32 %2708, %2704
  %2710 = uitofp i32 %2709 to double
  %2711 = fmul double %2710, 5.000000e-01
  %2712 = fptosi double %2711 to i32
  %2713 = sub nsw i32 %2712, %2701
  %2714 = mul nsw i32 %2713, 100
  %2715 = sdiv i32 %2714, %2712
  %2716 = getelementptr inbounds %struct._exon_t, ptr %2487, i64 0, i32 4
  store i32 %2715, ptr %2716, align 4, !tbaa !206
  %2717 = load ptr, ptr %6, align 8, !tbaa !7
  store ptr %2536, ptr %2717, align 8, !tbaa !15
  %2718 = load ptr, ptr %5, align 8, !tbaa !7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #32
  %2719 = add nsw i64 %2476, -1
  %2720 = icmp sgt i64 %2476, 0
  br i1 %2720, label %2475, label %2721, !llvm.loop !207

2721:                                             ; preds = %2696
  %.lcssa66 = phi i32 [ %2699, %2696 ]
  %.lcssa65 = phi i32 [ %2700, %2696 ]
  %.lcssa64 = phi ptr [ %2718, %2696 ]
  %.lcssa63 = phi i32 [ %2592, %2696 ]
  %.lcssa62 = phi i32 [ %2538, %2696 ]
  %.lcssa60 = phi ptr [ %2487, %2696 ]
  %.lcssa58 = phi ptr [ %2488, %2696 ]
  %2722 = load i32, ptr %.lcssa58, align 4, !tbaa !45
  %2723 = add i32 %2722, -1
  %2724 = icmp eq i32 %2723, 0
  %2725 = icmp eq i32 %2723, %2466
  %2726 = or i1 %2724, %2725
  br i1 %2726, label %2739, label %2727

2727:                                             ; preds = %2721
  %2728 = call ptr @xmalloc(i64 noundef 40) #33
  %2729 = load ptr, ptr %76, align 8, !tbaa !7
  store ptr %2729, ptr %2728, align 8, !tbaa !118
  store ptr %2728, ptr %76, align 8, !tbaa !7
  %2730 = load i32, ptr %.lcssa60, align 4, !tbaa !44
  %2731 = getelementptr inbounds %struct._edit_script_list, ptr %2728, i64 0, i32 2
  store i32 %2730, ptr %2731, align 8, !tbaa !122
  %2732 = load i32, ptr %.lcssa58, align 4, !tbaa !45
  %2733 = getelementptr inbounds %struct._edit_script_list, ptr %2728, i64 0, i32 3
  store i32 %2732, ptr %2733, align 4, !tbaa !123
  %2734 = add i32 %.lcssa63, 1
  %2735 = sub i32 %2734, %2730
  %2736 = getelementptr inbounds %struct._edit_script_list, ptr %2728, i64 0, i32 4
  store i32 %2735, ptr %2736, align 8, !tbaa !124
  %2737 = add i32 %.lcssa62, 1
  %2738 = sub i32 %2737, %2732
  br label %2749

2739:                                             ; preds = %2721
  br i1 %2725, label %2755, label %2740

2740:                                             ; preds = %2739
  %2741 = call ptr @xmalloc(i64 noundef 40) #33
  %2742 = load ptr, ptr %76, align 8, !tbaa !7
  store ptr %2742, ptr %2741, align 8, !tbaa !118
  store ptr %2741, ptr %76, align 8, !tbaa !7
  %2743 = load i32, ptr %.lcssa60, align 4, !tbaa !44
  %2744 = getelementptr inbounds %struct._edit_script_list, ptr %2741, i64 0, i32 2
  store i32 %2743, ptr %2744, align 8, !tbaa !122
  %2745 = getelementptr inbounds %struct._edit_script_list, ptr %2741, i64 0, i32 3
  store i32 1, ptr %2745, align 4, !tbaa !123
  %2746 = add i32 %.lcssa63, 1
  %2747 = sub i32 %2746, %2743
  %2748 = getelementptr inbounds %struct._edit_script_list, ptr %2741, i64 0, i32 4
  store i32 %2747, ptr %2748, align 8, !tbaa !124
  br label %2749

2749:                                             ; preds = %2740, %2727
  %2750 = phi ptr [ %2741, %2740 ], [ %2728, %2727 ]
  %2751 = phi i32 [ %.lcssa62, %2740 ], [ %2738, %2727 ]
  %2752 = getelementptr inbounds %struct._edit_script_list, ptr %2750, i64 0, i32 5
  store i32 %2751, ptr %2752, align 4, !tbaa !120
  %2753 = getelementptr inbounds %struct._edit_script_list, ptr %2750, i64 0, i32 1
  store ptr %.lcssa64, ptr %2753, align 8, !tbaa !121
  %2754 = getelementptr inbounds %struct._edit_script_list, ptr %2750, i64 0, i32 6
  store i32 %.lcssa66, ptr %2754, align 8, !tbaa !203
  br label %2755

2755:                                             ; preds = %2749, %2739, %2461
  %2756 = phi i32 [ %.lcssa65, %2739 ], [ 0, %2461 ], [ %.lcssa65, %2749 ]
  store i32 %2756, ptr %78, align 4, !tbaa !19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #32
  %2757 = load i32, ptr getelementptr inbounds (%struct._options_t, ptr @options, i64 0, i32 3), align 4
  %2758 = icmp eq i32 %2757, 0
  br i1 %2758, label %2759, label %2761

2759:                                             ; preds = %2755, %2695
  %2760 = load ptr, ptr %76, align 8, !tbaa !117
  call void @free_align(ptr noundef %2760) #35
  store ptr null, ptr %76, align 8, !tbaa !117
  br label %2761

2761:                                             ; preds = %2759, %2755, %708, %212, %72
  %2762 = add nuw nsw i64 %73, 1
  %2763 = load i32, ptr %33, align 8, !tbaa !37
  %2764 = zext i32 %2763 to i64
  %2765 = icmp ult i64 %2762, %2764
  br i1 %2765, label %72, label %2766, !llvm.loop !208

2766:                                             ; preds = %2761, %23
  %2767 = load ptr, ptr %11, align 8, !tbaa !16
  call void @free(ptr noundef %2767) #33
  %2768 = load ptr, ptr %12, align 8, !tbaa !16
  call void @free(ptr noundef %2768) #33
  br label %2769

2769:                                             ; preds = %2766, %19, %3
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #32
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #32
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @exon_cores(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr nocapture noundef %6, ptr nocapture noundef %7, ptr noundef %8) unnamed_addr #0 {
  %10 = alloca %struct._hash_node_t, align 4
  %11 = icmp ne ptr %8, null
  %12 = zext i1 %11 to i32
  %13 = getelementptr inbounds %struct._hash_env_t, ptr %0, i64 0, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !130
  %15 = add i32 %2, 1
  %16 = add i32 %15, %14
  %17 = zext i32 %16 to i64
  %18 = tail call ptr @xcalloc(i64 noundef %17, i64 noundef 4) #33
  %19 = load i32, ptr %13, align 8, !tbaa !130
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
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #32
  br label %35

32:                                               ; preds = %66, %47
  %33 = phi i32 [ %74, %66 ], [ %57, %47 ]
  %34 = phi ptr [ %69, %66 ], [ %52, %47 ]
  br label %35

35:                                               ; preds = %32, %23
  %36 = phi i32 [ 0, %23 ], [ %33, %32 ]
  %37 = phi ptr [ %1, %23 ], [ %34, %32 ]
  store i32 0, ptr %10, align 4, !tbaa !209
  %38 = load i32, ptr %24, align 4, !tbaa !135
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
  %53 = load i8, ptr %48, align 1, !tbaa !16
  %54 = zext i8 %53 to i64
  %55 = getelementptr inbounds [128 x i32], ptr @encoding, i64 0, i64 %54
  %56 = load i32, ptr %55, align 4, !tbaa !19
  %57 = add nuw i32 %49, 1
  %58 = icmp ugt i32 %56, 3
  br i1 %58, label %32, label %59

59:                                               ; preds = %47
  %60 = shl i32 %51, 2
  %61 = add nuw i32 %56, %60
  store i32 %61, ptr %10, align 4, !tbaa !209
  %62 = add nuw i32 %50, 1
  %63 = icmp ult i32 %62, %38
  %64 = icmp ult i32 %57, %2
  %65 = select i1 %63, i1 %64, i1 false
  br i1 %65, label %47, label %42, !llvm.loop !211

66:                                               ; preds = %231, %42
  %67 = phi ptr [ %69, %231 ], [ %44, %42 ]
  %68 = phi i32 [ %74, %231 ], [ %43, %42 ]
  %69 = getelementptr inbounds i8, ptr %67, i64 1
  %70 = load i8, ptr %67, align 1, !tbaa !16
  %71 = zext i8 %70 to i64
  %72 = getelementptr inbounds [128 x i32], ptr @encoding, i64 0, i64 %71
  %73 = load i32, ptr %72, align 4, !tbaa !19
  %74 = add i32 %68, 1
  %75 = icmp ult i32 %73, 4
  br i1 %75, label %76, label %32

76:                                               ; preds = %66
  %77 = load i32, ptr %10, align 4, !tbaa !209
  %78 = load i32, ptr %25, align 8, !tbaa !136
  %79 = and i32 %78, %77
  %80 = shl i32 %79, 2
  %81 = add nuw i32 %80, %73
  store i32 %81, ptr %10, align 4, !tbaa !209
  %82 = load ptr, ptr %0, align 8, !tbaa !138
  %83 = and i32 %81, 524287
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds ptr, ptr %82, i64 %84
  %86 = call ptr @tfind(ptr noundef nonnull %10, ptr noundef %85, ptr noundef nonnull @hash_node_compare) #33
  %87 = icmp eq ptr %86, null
  br i1 %87, label %231, label %88

88:                                               ; preds = %76
  %89 = load ptr, ptr %86, align 8, !tbaa !7
  %90 = getelementptr inbounds %struct._hash_node_t, ptr %89, i64 0, i32 1
  %91 = load i32, ptr %90, align 4, !tbaa !19
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
  %102 = load i32, ptr %101, align 4, !tbaa !19
  %103 = icmp sgt i32 %102, %98
  br i1 %103, label %104, label %106

104:                                              ; preds = %97
  %105 = zext i32 %98 to i64
  br label %225

106:                                              ; preds = %97
  %107 = load ptr, ptr %26, align 8, !tbaa !133
  %108 = zext i32 %98 to i64
  %109 = getelementptr inbounds i8, ptr %107, i64 %108
  br i1 %96, label %110, label %139

110:                                              ; preds = %106
  %111 = load i32, ptr %13, align 8, !tbaa !130
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
  %129 = load i8, ptr %120, align 1, !tbaa !16
  %130 = getelementptr inbounds i8, ptr %121, i64 1
  %131 = load i8, ptr %121, align 1, !tbaa !16
  %132 = icmp eq i8 %129, %131
  %133 = select i1 %132, i32 %115, i32 %116
  %134 = add nsw i32 %133, %118
  %135 = icmp sgt i32 %134, %119
  %136 = select i1 %135, ptr %130, ptr %122
  %137 = call i32 @llvm.smax.i32(i32 %134, i32 %119)
  %138 = icmp ult ptr %128, %28
  br i1 %138, label %117, label %139, !llvm.loop !212

139:                                              ; preds = %127, %117, %106
  %140 = phi ptr [ %109, %106 ], [ %122, %117 ], [ %136, %127 ]
  %141 = phi i32 [ 0, %106 ], [ %119, %117 ], [ %137, %127 ]
  %142 = load i32, ptr %24, align 4, !tbaa !135
  %143 = zext i32 %142 to i64
  %144 = sub nsw i64 0, %143
  %145 = getelementptr inbounds i8, ptr %109, i64 %144
  %146 = getelementptr inbounds i8, ptr %95, i64 %144
  %147 = icmp ugt ptr %146, %1
  %148 = icmp ugt ptr %145, %107
  %149 = select i1 %147, i1 %148, i1 false
  br i1 %149, label %150, label %178

150:                                              ; preds = %139
  %151 = load i32, ptr getelementptr inbounds (%struct._options_t, ptr @options, i64 0, i32 14), align 8, !tbaa !54
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
  %165 = load i8, ptr %164, align 1, !tbaa !16
  %166 = getelementptr inbounds i8, ptr %160, i64 -1
  %167 = load i8, ptr %166, align 1, !tbaa !16
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
  br i1 %177, label %154, label %178, !llvm.loop !213

178:                                              ; preds = %163, %154, %139
  %179 = phi i32 [ 0, %139 ], [ %172, %163 ], [ %158, %154 ]
  %180 = phi ptr [ %145, %139 ], [ %173, %163 ], [ %156, %154 ]
  %181 = phi ptr [ %146, %139 ], [ %174, %163 ], [ %155, %154 ]
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
  %204 = call ptr @xmalloc(i64 noundef 32) #33
  store i32 %191, ptr %204, align 4, !tbaa !44
  %205 = getelementptr inbounds %struct._exon_t, ptr %204, i64 0, i32 1
  store i32 %194, ptr %205, align 4, !tbaa !45
  %206 = getelementptr inbounds %struct._exon_t, ptr %204, i64 0, i32 2
  store i32 %198, ptr %206, align 4, !tbaa !39
  %207 = getelementptr inbounds %struct._exon_t, ptr %204, i64 0, i32 3
  store i32 %203, ptr %207, align 4, !tbaa !107
  call fastcc void @add_col_elt(ptr noundef %6, ptr noundef nonnull %204) #35
  %208 = load ptr, ptr %6, align 8, !tbaa !16
  %209 = load i32, ptr %30, align 8, !tbaa !37
  %210 = add i32 %209, -1
  %211 = zext i32 %210 to i64
  %212 = getelementptr inbounds ptr, ptr %208, i64 %211
  %213 = load ptr, ptr %212, align 8, !tbaa !7
  %214 = getelementptr inbounds %struct._exon_t, ptr %213, i64 0, i32 4
  store i32 %183, ptr %214, align 4, !tbaa !206
  %215 = load ptr, ptr %26, align 8, !tbaa !133
  %216 = load i32, ptr %24, align 4, !tbaa !135
  br label %217

217:                                              ; preds = %187, %185
  %218 = phi i64 [ %186, %185 ], [ %195, %187 ]
  %219 = phi i32 [ %142, %185 ], [ %216, %187 ]
  %220 = phi ptr [ %107, %185 ], [ %215, %187 ]
  %221 = ptrtoint ptr %220 to i64
  %222 = sub i64 %218, %221
  %223 = trunc i64 %222 to i32
  %224 = add i32 %219, %223
  store i32 %224, ptr %101, align 4, !tbaa !19
  br label %225

225:                                              ; preds = %217, %104
  %226 = phi i64 [ %105, %104 ], [ %108, %217 ]
  %227 = load ptr, ptr %31, align 8, !tbaa !137
  %228 = getelementptr inbounds i32, ptr %227, i64 %226
  %229 = load i32, ptr %228, align 4, !tbaa !19
  %230 = icmp sgt i32 %229, -1
  br i1 %230, label %97, label %231, !llvm.loop !214

231:                                              ; preds = %225, %88, %76
  %232 = icmp eq i32 %74, %45
  br i1 %232, label %233, label %66

233:                                              ; preds = %231, %42
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #32
  br label %234

234:                                              ; preds = %233, %9
  call void @free(ptr noundef %18) #33
  %235 = load ptr, ptr %6, align 8, !tbaa !16
  %236 = getelementptr inbounds %struct._collec_t, ptr %6, i64 0, i32 1
  %237 = load i32, ptr %236, align 8, !tbaa !37
  %238 = zext i32 %237 to i64
  call void @qsort(ptr noundef %235, i64 noundef %238, i64 noundef 8, ptr noundef nonnull @msp_rna_compare) #33
  %239 = load i32, ptr %236, align 8, !tbaa !37
  %240 = icmp eq i32 %239, 0
  br i1 %240, label %306, label %241

241:                                              ; preds = %302, %234
  %242 = phi i32 [ %303, %302 ], [ %239, %234 ]
  %243 = phi i32 [ %304, %302 ], [ 0, %234 ]
  %244 = load ptr, ptr %6, align 8, !tbaa !16
  %245 = zext i32 %243 to i64
  %246 = getelementptr inbounds ptr, ptr %244, i64 %245
  %247 = load ptr, ptr %246, align 8, !tbaa !7
  %248 = getelementptr inbounds %struct._exon_t, ptr %247, i64 0, i32 3
  %249 = load i32, ptr %248, align 4, !tbaa !107
  %250 = getelementptr inbounds %struct._exon_t, ptr %247, i64 0, i32 1
  %251 = load i32, ptr %250, align 4, !tbaa !45
  %252 = sub i32 %249, %251
  %253 = icmp ugt i32 %252, 49
  br i1 %253, label %254, label %256

254:                                              ; preds = %241
  %255 = add nuw i32 %243, 1
  br label %302, !llvm.loop !215

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
  %267 = load i32, ptr %266, align 4, !tbaa !107
  %268 = icmp ugt i32 %267, %257
  br i1 %268, label %273, label %269

269:                                              ; preds = %262
  %270 = add nuw nsw i64 %263, 1
  %271 = trunc i64 %270 to i32
  %272 = icmp eq i32 %242, %271
  br i1 %272, label %275, label %262, !llvm.loop !216

273:                                              ; preds = %262
  %.lcssa9 = phi i64 [ %263, %262 ]
  %274 = trunc i64 %.lcssa9 to i32
  br label %275

275:                                              ; preds = %273, %269, %256
  %276 = phi i32 [ %258, %256 ], [ %274, %273 ], [ %242, %269 ]
  %277 = sub i32 %276, %243
  %278 = icmp ult i32 %277, 20
  br i1 %278, label %302, label %279, !llvm.loop !215

279:                                              ; preds = %275
  %280 = icmp ult i32 %243, %276
  %281 = zext i32 %276 to i64
  br i1 %280, label %282, label %292

282:                                              ; preds = %282, %279
  %283 = phi i64 [ %287, %282 ], [ %245, %279 ]
  %284 = load ptr, ptr %6, align 8, !tbaa !16
  %285 = getelementptr inbounds ptr, ptr %284, i64 %283
  %286 = load ptr, ptr %285, align 8, !tbaa !7
  call void @free(ptr noundef %286) #33
  %287 = add nuw nsw i64 %283, 1
  %288 = icmp eq i64 %287, %281
  br i1 %288, label %289, label %282, !llvm.loop !217

289:                                              ; preds = %282
  %290 = load ptr, ptr %6, align 8, !tbaa !16
  %291 = load i32, ptr %236, align 8, !tbaa !37
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
  %300 = load i32, ptr %236, align 8, !tbaa !37
  %301 = sub i32 %300, %277
  store i32 %301, ptr %236, align 8, !tbaa !37
  br label %302

302:                                              ; preds = %292, %275, %254
  %303 = phi i32 [ %242, %254 ], [ %301, %292 ], [ %242, %275 ]
  %304 = phi i32 [ %255, %254 ], [ %243, %292 ], [ %258, %275 ]
  %305 = icmp ult i32 %304, %303
  br i1 %305, label %241, label %306

306:                                              ; preds = %302, %234
  %307 = phi i32 [ 0, %234 ], [ %303, %302 ]
  %308 = load ptr, ptr %6, align 8, !tbaa !16
  %309 = zext i32 %307 to i64
  call void @qsort(ptr noundef %308, i64 noundef %309, i64 noundef 8, ptr noundef nonnull @msp_compare) #33
  %310 = load i32, ptr %236, align 8, !tbaa !37
  %311 = icmp eq i32 %310, 0
  br i1 %311, label %411, label %312

312:                                              ; preds = %405, %306
  %313 = phi i32 [ %406, %405 ], [ %310, %306 ]
  %314 = phi i32 [ %407, %405 ], [ 0, %306 ]
  %315 = load ptr, ptr %6, align 8, !tbaa !16
  %316 = zext i32 %314 to i64
  %317 = getelementptr inbounds ptr, ptr %315, i64 %316
  %318 = load ptr, ptr %317, align 8, !tbaa !7
  %319 = add nuw i32 %314, 1
  %320 = icmp ult i32 %319, %313
  br i1 %320, label %321, label %405

321:                                              ; preds = %312
  %322 = getelementptr inbounds %struct._exon_t, ptr %318, i64 0, i32 3
  %323 = load i32, ptr %322, align 4, !tbaa !107
  %324 = add i32 %323, 1
  %325 = load i32, ptr %318, align 4, !tbaa !44
  %326 = getelementptr inbounds %struct._exon_t, ptr %318, i64 0, i32 2
  %327 = add nuw nsw i64 %316, 1
  %328 = add i32 %323, 2
  br label %329

329:                                              ; preds = %350, %321
  %330 = phi i64 [ %327, %321 ], [ %351, %350 ]
  %331 = getelementptr inbounds ptr, ptr %315, i64 %330
  %332 = load ptr, ptr %331, align 8, !tbaa !7
  %333 = getelementptr inbounds %struct._exon_t, ptr %332, i64 0, i32 1
  %334 = load i32, ptr %333, align 4, !tbaa !45
  %335 = icmp ugt i32 %334, %324
  %336 = sub i32 %328, %334
  %337 = select i1 %335, i32 0, i32 %336
  %338 = load i32, ptr %332, align 4, !tbaa !44
  %339 = icmp ugt i32 %338, %325
  br i1 %339, label %340, label %344

340:                                              ; preds = %329
  %341 = load i32, ptr %326, align 4, !tbaa !39
  %342 = add i32 %341, 1
  %343 = icmp ugt i32 %338, %342
  br i1 %343, label %344, label %352

344:                                              ; preds = %340, %329
  %345 = icmp eq i32 %337, 0
  %346 = add nuw nsw i64 %330, 1
  %347 = trunc i64 %346 to i32
  %348 = icmp eq i32 %313, %347
  %349 = select i1 %345, i1 true, i1 %348
  br i1 %349, label %405, label %350

350:                                              ; preds = %362, %344
  %351 = phi i64 [ %363, %362 ], [ %346, %344 ]
  br label %329, !llvm.loop !218

352:                                              ; preds = %340
  %353 = sub i32 %341, %338
  %354 = add i32 %353, 2
  %355 = icmp ne i32 %337, 0
  %356 = icmp eq i32 %354, 0
  %357 = xor i1 %355, %356
  br i1 %357, label %358, label %362

358:                                              ; preds = %352
  %359 = sub nsw i32 %337, %354
  %360 = call i32 @llvm.abs.i32(i32 %359, i1 true)
  %361 = icmp ult i32 %360, 11
  br i1 %361, label %366, label %362

362:                                              ; preds = %358, %352
  %363 = add nuw nsw i64 %330, 1
  %364 = trunc i64 %363 to i32
  %365 = icmp eq i32 %313, %364
  br i1 %365, label %405, label %350

366:                                              ; preds = %358
  %.lcssa7 = phi i32 [ %341, %358 ]
  %.lcssa6 = phi i64 [ %330, %358 ]
  %.lcssa5 = phi i32 [ %337, %358 ]
  %367 = trunc i64 %.lcssa6 to i32
  %368 = icmp eq i32 %.lcssa5, 0
  br i1 %368, label %405, label %369

369:                                              ; preds = %366
  %370 = and i64 %.lcssa6, 4294967295
  %371 = getelementptr inbounds ptr, ptr %315, i64 %370
  %372 = load ptr, ptr %371, align 8, !tbaa !7
  %373 = getelementptr inbounds %struct._exon_t, ptr %318, i64 0, i32 4
  %374 = load i32, ptr %373, align 4, !tbaa !206
  %375 = getelementptr inbounds %struct._exon_t, ptr %372, i64 0, i32 4
  %376 = load i32, ptr %375, align 4, !tbaa !206
  %377 = add i32 %376, %374
  %378 = add i32 %.lcssa5, 1
  %379 = call i32 @llvm.usub.sat.i32(i32 %377, i32 %378)
  %380 = load i32, ptr %372, align 4, !tbaa !44
  %381 = call i32 @llvm.umin.i32(i32 %325, i32 %380)
  store i32 %381, ptr %318, align 4, !tbaa !44
  %382 = getelementptr inbounds %struct._exon_t, ptr %318, i64 0, i32 1
  %383 = load i32, ptr %382, align 4, !tbaa !45
  %384 = getelementptr inbounds %struct._exon_t, ptr %372, i64 0, i32 1
  %385 = load i32, ptr %384, align 4, !tbaa !45
  %386 = call i32 @llvm.umin.i32(i32 %383, i32 %385)
  store i32 %386, ptr %382, align 4, !tbaa !45
  %387 = getelementptr inbounds %struct._exon_t, ptr %372, i64 0, i32 2
  %388 = load i32, ptr %387, align 4, !tbaa !39
  %389 = call i32 @llvm.umax.i32(i32 %.lcssa7, i32 %388)
  store i32 %389, ptr %326, align 4, !tbaa !39
  %390 = getelementptr inbounds %struct._exon_t, ptr %372, i64 0, i32 3
  %391 = load i32, ptr %390, align 4, !tbaa !107
  %392 = call i32 @llvm.umax.i32(i32 %323, i32 %391)
  store i32 %392, ptr %322, align 4, !tbaa !107
  %393 = icmp ugt i32 %379, %374
  br i1 %393, label %394, label %395

394:                                              ; preds = %369
  store i32 %379, ptr %373, align 4, !tbaa !206
  br label %395

395:                                              ; preds = %394, %369
  %396 = add i32 %313, -1
  store i32 %396, ptr %236, align 8, !tbaa !37
  call void @free(ptr noundef nonnull %372) #33
  %397 = load ptr, ptr %6, align 8, !tbaa !16
  %398 = getelementptr inbounds ptr, ptr %397, i64 %370
  %399 = getelementptr inbounds ptr, ptr %398, i64 1
  %400 = load i32, ptr %236, align 8, !tbaa !37
  %401 = sub i32 %400, %367
  %402 = zext i32 %401 to i64
  %403 = shl nuw nsw i64 %402, 3
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %398, ptr nonnull align 8 %399, i64 %403, i1 false)
  %404 = load i32, ptr %236, align 8, !tbaa !37
  br label %405

405:                                              ; preds = %395, %366, %362, %344, %312
  %406 = phi i32 [ %404, %395 ], [ %313, %366 ], [ %313, %312 ], [ %313, %344 ], [ %313, %362 ]
  %407 = phi i32 [ %314, %395 ], [ %319, %366 ], [ %319, %312 ], [ %319, %344 ], [ %319, %362 ]
  %408 = icmp ult i32 %407, %406
  br i1 %408, label %312, label %409, !llvm.loop !219

409:                                              ; preds = %405
  %.lcssa8 = phi i32 [ %406, %405 ]
  %410 = icmp eq ptr %8, null
  br i1 %410, label %413, label %629

411:                                              ; preds = %306
  %412 = icmp eq ptr %8, null
  br i1 %412, label %432, label %629

413:                                              ; preds = %409
  %414 = icmp eq i32 %.lcssa8, 0
  br i1 %414, label %432, label %415

415:                                              ; preds = %413
  %416 = load ptr, ptr %6, align 8, !tbaa !16
  %417 = zext i32 %.lcssa8 to i64
  br label %418

418:                                              ; preds = %418, %415
  %419 = phi i64 [ 0, %415 ], [ %430, %418 ]
  %420 = phi i32 [ %2, %415 ], [ %426, %418 ]
  %421 = phi i32 [ 0, %415 ], [ %429, %418 ]
  %422 = getelementptr inbounds ptr, ptr %416, i64 %419
  %423 = load ptr, ptr %422, align 8, !tbaa !7
  %424 = getelementptr inbounds %struct._exon_t, ptr %423, i64 0, i32 1
  %425 = load i32, ptr %424, align 4, !tbaa !45
  %426 = call i32 @llvm.umin.i32(i32 %425, i32 %420)
  %427 = getelementptr inbounds %struct._exon_t, ptr %423, i64 0, i32 3
  %428 = load i32, ptr %427, align 4, !tbaa !107
  %429 = call i32 @llvm.umax.i32(i32 %428, i32 %421)
  %430 = add nuw nsw i64 %419, 1
  %431 = icmp eq i64 %430, %417
  br i1 %431, label %432, label %418, !llvm.loop !220

432:                                              ; preds = %418, %413, %411
  %433 = phi i1 [ true, %413 ], [ true, %411 ], [ %414, %418 ]
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
  %445 = load ptr, ptr %6, align 8, !tbaa !16
  %446 = getelementptr inbounds ptr, ptr %445, i64 %444
  %447 = load ptr, ptr %446, align 8, !tbaa !7
  %448 = getelementptr inbounds %struct._exon_t, ptr %447, i64 0, i32 1
  %449 = load i32, ptr %448, align 4, !tbaa !45
  %450 = icmp ult i32 %449, %439
  %451 = getelementptr inbounds %struct._exon_t, ptr %447, i64 0, i32 6
  %452 = load i64, ptr %451, align 4
  %453 = select i1 %450, i64 2, i64 0
  %454 = and i64 %452, -4
  %455 = or i64 %454, %453
  %456 = getelementptr inbounds %struct._exon_t, ptr %447, i64 0, i32 3
  %457 = load i32, ptr %456, align 4, !tbaa !107
  %458 = icmp ugt i32 %457, %442
  %459 = zext i1 %458 to i64
  %460 = or i64 %455, %459
  store i64 %460, ptr %451, align 4
  %461 = add nuw nsw i64 %444, 1
  %462 = load i32, ptr %236, align 8, !tbaa !37
  %463 = zext i32 %462 to i64
  %464 = icmp ult i64 %461, %463
  br i1 %464, label %443, label %465, !llvm.loop !221

465:                                              ; preds = %443, %432
  %466 = phi i32 [ 0, %432 ], [ %462, %443 ]
  %467 = call fastcc i32 @link_msps(ptr noundef nonnull %6, i32 noundef 0, i32 noundef %466) #35
  %468 = icmp sgt i32 %467, -1
  br i1 %468, label %469, label %668

469:                                              ; preds = %465
  %470 = load ptr, ptr %6, align 8, !tbaa !16
  %471 = zext i32 %467 to i64
  %472 = getelementptr inbounds ptr, ptr %470, i64 %471
  %473 = load ptr, ptr %472, align 8, !tbaa !7
  %474 = getelementptr inbounds %struct._exon_t, ptr %473, i64 0, i32 5
  %475 = load i32, ptr %474, align 4, !tbaa !222
  %476 = load i32, ptr getelementptr inbounds (%struct._options_t, ptr @options, i64 0, i32 16), align 8, !tbaa !55
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
  %486 = load i32, ptr %236, align 8, !tbaa !37
  %487 = icmp ugt i32 %486, 1
  br i1 %487, label %488, label %613

488:                                              ; preds = %484
  %489 = getelementptr inbounds %struct._collec_t, ptr %7, i64 0, i32 1
  %490 = insertelement <4 x i32> poison, i32 %3, i64 0
  %491 = insertelement <4 x i32> %490, i32 %4, i64 1
  %492 = shufflevector <4 x i32> %491, <4 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  br label %493

493:                                              ; preds = %599, %488
  %494 = phi ptr [ %470, %488 ], [ %600, %599 ]
  %495 = phi i64 [ 1, %488 ], [ %605, %599 ]
  %496 = phi i32 [ %467, %488 ], [ %604, %599 ]
  %497 = phi i32 [ 0, %488 ], [ %603, %599 ]
  %498 = phi i32 [ 0, %488 ], [ %602, %599 ]
  %499 = phi i32 [ 0, %488 ], [ %601, %599 ]
  %500 = add nsw i64 %495, -1
  %501 = getelementptr inbounds ptr, ptr %494, i64 %500
  %502 = load ptr, ptr %501, align 8, !tbaa !7
  %503 = getelementptr inbounds ptr, ptr %494, i64 %495
  %504 = load ptr, ptr %503, align 8, !tbaa !7
  %505 = getelementptr inbounds %struct._exon_t, ptr %502, i64 0, i32 6
  %506 = load i64, ptr %505, align 4
  %507 = and i64 %506, 1
  %508 = icmp eq i64 %507, 0
  br i1 %508, label %514, label %509

509:                                              ; preds = %493
  %510 = getelementptr inbounds %struct._exon_t, ptr %504, i64 0, i32 6
  %511 = load i64, ptr %510, align 4
  %512 = and i64 %511, 1
  %513 = icmp eq i64 %512, 0
  br i1 %513, label %528, label %514

514:                                              ; preds = %509, %493
  %515 = and i64 %506, 2
  %516 = icmp eq i64 %515, 0
  br i1 %516, label %517, label %522

517:                                              ; preds = %514
  %518 = getelementptr inbounds %struct._exon_t, ptr %504, i64 0, i32 6
  %519 = load i64, ptr %518, align 4
  %520 = and i64 %519, 2
  %521 = icmp eq i64 %520, 0
  br i1 %521, label %522, label %528

522:                                              ; preds = %517, %514
  br i1 %508, label %599, label %523

523:                                              ; preds = %522
  %524 = getelementptr inbounds %struct._exon_t, ptr %504, i64 0, i32 6
  %525 = load i64, ptr %524, align 4
  %526 = and i64 %525, 2
  %527 = icmp eq i64 %526, 0
  br i1 %527, label %599, label %528

528:                                              ; preds = %523, %517, %509
  %529 = trunc i64 %495 to i32
  %530 = call fastcc i32 @link_msps(ptr noundef nonnull %6, i32 noundef %497, i32 noundef %529) #35
  %531 = load ptr, ptr %6, align 8, !tbaa !16
  %532 = sext i32 %530 to i64
  %533 = getelementptr inbounds ptr, ptr %531, i64 %532
  %534 = load ptr, ptr %533, align 8, !tbaa !7
  %535 = getelementptr inbounds %struct._exon_t, ptr %534, i64 0, i32 5
  %536 = load i32, ptr %535, align 4, !tbaa !222
  %537 = load i32, ptr %236, align 8, !tbaa !37
  %538 = call fastcc i32 @link_msps(ptr noundef nonnull %6, i32 noundef %529, i32 noundef %537) #35
  %539 = load ptr, ptr %6, align 8, !tbaa !16
  %540 = sext i32 %538 to i64
  %541 = getelementptr inbounds ptr, ptr %539, i64 %540
  %542 = load ptr, ptr %541, align 8, !tbaa !7
  %543 = getelementptr inbounds %struct._exon_t, ptr %542, i64 0, i32 5
  %544 = load i32, ptr %543, align 4, !tbaa !222
  %545 = load i32, ptr getelementptr inbounds (%struct._options_t, ptr @options, i64 0, i32 16), align 8, !tbaa !55
  %546 = icmp ult i32 %545, 50
  %547 = icmp ult i32 %536, %485
  %548 = select i1 %546, i1 true, i1 %547
  %549 = icmp ult i32 %544, %485
  %550 = select i1 %548, i1 true, i1 %549
  br i1 %550, label %551, label %555

551:                                              ; preds = %528
  %552 = icmp ugt i32 %545, 49
  %553 = select i1 %547, i1 %549, i1 false
  %554 = select i1 %552, i1 true, i1 %553
  br i1 %554, label %599, label %555

555:                                              ; preds = %551, %528
  %556 = call ptr @xcalloc(i64 noundef 1, i64 noundef 48) #33
  call fastcc void @add_col_elt(ptr noundef %7, ptr noundef %556) #35
  %557 = load ptr, ptr %7, align 8, !tbaa !16
  %558 = load i32, ptr %489, align 8, !tbaa !37
  %559 = add i32 %558, -1
  %560 = zext i32 %559 to i64
  %561 = getelementptr inbounds ptr, ptr %557, i64 %560
  %562 = load ptr, ptr %561, align 8, !tbaa !7
  %563 = getelementptr inbounds %struct._result_t, ptr %562, i64 0, i32 2
  store i32 %498, ptr %563, align 8, !tbaa !134
  %564 = load i32, ptr %504, align 4, !tbaa !44
  %565 = sub i32 %564, %498
  %566 = getelementptr inbounds %struct._result_t, ptr %562, i64 0, i32 3
  store i32 %565, ptr %566, align 4, !tbaa !155
  %567 = getelementptr inbounds %struct._result_t, ptr %562, i64 0, i32 1
  %568 = sub i32 %529, %497
  %569 = getelementptr inbounds %struct._result_t, ptr %562, i64 0, i32 1, i32 2
  store i32 %568, ptr %569, align 4, !tbaa !132
  %570 = getelementptr inbounds %struct._result_t, ptr %562, i64 0, i32 1, i32 1
  store i32 0, ptr %570, align 8, !tbaa !37
  %571 = zext i32 %497 to i64
  %572 = icmp eq i64 %495, %571
  br i1 %572, label %577, label %573

573:                                              ; preds = %555
  %574 = zext i32 %568 to i64
  %575 = shl nuw nsw i64 %574, 3
  %576 = call ptr @xmalloc(i64 noundef %575) #33
  br label %577

577:                                              ; preds = %573, %555
  %578 = phi ptr [ %576, %573 ], [ null, %555 ]
  store ptr %578, ptr %567, align 8, !tbaa !16
  %579 = load ptr, ptr %6, align 8, !tbaa !16
  call fastcc void @msp2exons(ptr noundef %579, i32 noundef %530, ptr noundef nonnull %567, i32 noundef 0) #35
  %580 = load i32, ptr %570, align 8, !tbaa !37
  %581 = icmp eq i32 %580, 0
  br i1 %581, label %593, label %582

582:                                              ; preds = %577
  %583 = zext i32 %580 to i64
  br label %584

584:                                              ; preds = %584, %582
  %585 = phi i64 [ 0, %582 ], [ %591, %584 ]
  %586 = load ptr, ptr %567, align 8, !tbaa !16
  %587 = getelementptr inbounds ptr, ptr %586, i64 %585
  %588 = load ptr, ptr %587, align 8, !tbaa !7
  %589 = load <4 x i32>, ptr %588, align 4, !tbaa !19
  %590 = add <4 x i32> %589, %492
  store <4 x i32> %590, ptr %588, align 4, !tbaa !19
  %591 = add nuw nsw i64 %585, 1
  %592 = icmp eq i64 %591, %583
  br i1 %592, label %593, label %584, !llvm.loop !223

593:                                              ; preds = %584, %577
  %594 = load ptr, ptr %6, align 8, !tbaa !16
  %595 = getelementptr inbounds ptr, ptr %594, i64 %532
  %596 = load ptr, ptr %595, align 8, !tbaa !7
  %597 = getelementptr inbounds %struct._exon_t, ptr %596, i64 0, i32 2
  %598 = load i32, ptr %597, align 4, !tbaa !39
  br label %599

599:                                              ; preds = %593, %551, %523, %522
  %600 = phi ptr [ %494, %523 ], [ %494, %522 ], [ %594, %593 ], [ %539, %551 ]
  %601 = phi i32 [ %499, %523 ], [ %499, %522 ], [ 0, %593 ], [ 1, %551 ]
  %602 = phi i32 [ %498, %523 ], [ %498, %522 ], [ %598, %593 ], [ %498, %551 ]
  %603 = phi i32 [ %497, %523 ], [ %497, %522 ], [ %529, %593 ], [ %497, %551 ]
  %604 = phi i32 [ %496, %523 ], [ %496, %522 ], [ %538, %593 ], [ %538, %551 ]
  %605 = add nuw nsw i64 %495, 1
  %606 = load i32, ptr %236, align 8, !tbaa !37
  %607 = zext i32 %606 to i64
  %608 = icmp ult i64 %605, %607
  br i1 %608, label %493, label %609, !llvm.loop !224

609:                                              ; preds = %599
  %.lcssa4 = phi i32 [ %601, %599 ]
  %.lcssa3 = phi i32 [ %602, %599 ]
  %.lcssa2 = phi i32 [ %603, %599 ]
  %.lcssa1 = phi i32 [ %604, %599 ]
  %.lcssa = phi i32 [ %606, %599 ]
  %610 = icmp eq i32 %.lcssa4, 0
  br i1 %610, label %613, label %611

611:                                              ; preds = %609
  %612 = call fastcc i32 @link_msps(ptr noundef nonnull %6, i32 noundef %.lcssa2, i32 noundef %.lcssa) #35
  br label %613

613:                                              ; preds = %611, %609, %484
  %614 = phi i32 [ %.lcssa3, %611 ], [ %.lcssa3, %609 ], [ 0, %484 ]
  %615 = phi i32 [ %612, %611 ], [ %.lcssa1, %609 ], [ %467, %484 ]
  %616 = call ptr @xcalloc(i64 noundef 1, i64 noundef 48) #33
  call fastcc void @add_col_elt(ptr noundef %7, ptr noundef %616) #35
  %617 = load ptr, ptr %7, align 8, !tbaa !16
  %618 = getelementptr inbounds %struct._collec_t, ptr %7, i64 0, i32 1
  %619 = load i32, ptr %618, align 8, !tbaa !37
  %620 = add i32 %619, -1
  %621 = zext i32 %620 to i64
  %622 = getelementptr inbounds ptr, ptr %617, i64 %621
  %623 = load ptr, ptr %622, align 8, !tbaa !7
  %624 = getelementptr inbounds %struct._result_t, ptr %623, i64 0, i32 2
  store i32 %614, ptr %624, align 8, !tbaa !134
  %625 = load i32, ptr %13, align 8, !tbaa !130
  %626 = sub i32 %625, %614
  %627 = getelementptr inbounds %struct._result_t, ptr %623, i64 0, i32 3
  store i32 %626, ptr %627, align 4, !tbaa !155
  %628 = getelementptr inbounds %struct._result_t, ptr %623, i64 0, i32 1
  br label %632

629:                                              ; preds = %411, %409
  %630 = phi i32 [ 0, %411 ], [ %.lcssa8, %409 ]
  %631 = call fastcc i32 @link_msps(ptr noundef nonnull %6, i32 noundef 0, i32 noundef %630) #35
  br label %632

632:                                              ; preds = %629, %613
  %633 = phi i32 [ %615, %613 ], [ %631, %629 ]
  %634 = phi ptr [ %628, %613 ], [ %8, %629 ]
  %635 = getelementptr inbounds %struct._collec_t, ptr %634, i64 0, i32 2
  %636 = load i32, ptr %635, align 4, !tbaa !132
  %637 = icmp eq i32 %636, 0
  br i1 %637, label %638, label %648

638:                                              ; preds = %632
  %639 = load i32, ptr %236, align 8, !tbaa !37
  store i32 %639, ptr %635, align 4, !tbaa !132
  %640 = getelementptr inbounds %struct._collec_t, ptr %634, i64 0, i32 1
  store i32 0, ptr %640, align 8, !tbaa !37
  %641 = icmp eq i32 %639, 0
  br i1 %641, label %646, label %642

642:                                              ; preds = %638
  %643 = zext i32 %639 to i64
  %644 = shl nuw nsw i64 %643, 3
  %645 = call ptr @xmalloc(i64 noundef %644) #33
  br label %646

646:                                              ; preds = %642, %638
  %647 = phi ptr [ %645, %642 ], [ null, %638 ]
  store ptr %647, ptr %634, align 8, !tbaa !16
  br label %648

648:                                              ; preds = %646, %632
  %649 = load ptr, ptr %6, align 8, !tbaa !16
  call fastcc void @msp2exons(ptr noundef %649, i32 noundef %633, ptr noundef nonnull %634, i32 noundef %12) #35
  %650 = getelementptr inbounds %struct._collec_t, ptr %634, i64 0, i32 1
  %651 = load i32, ptr %650, align 8, !tbaa !37
  %652 = icmp eq i32 %651, 0
  br i1 %652, label %667, label %653

653:                                              ; preds = %648
  %654 = zext i32 %651 to i64
  %655 = insertelement <4 x i32> poison, i32 %3, i64 0
  %656 = insertelement <4 x i32> %655, i32 %4, i64 1
  %657 = shufflevector <4 x i32> %656, <4 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  br label %658

658:                                              ; preds = %658, %653
  %659 = phi i64 [ 0, %653 ], [ %665, %658 ]
  %660 = load ptr, ptr %634, align 8, !tbaa !16
  %661 = getelementptr inbounds ptr, ptr %660, i64 %659
  %662 = load ptr, ptr %661, align 8, !tbaa !7
  %663 = load <4 x i32>, ptr %662, align 4, !tbaa !19
  %664 = add <4 x i32> %663, %657
  store <4 x i32> %664, ptr %662, align 4, !tbaa !19
  %665 = add nuw nsw i64 %659, 1
  %666 = icmp eq i64 %665, %654
  br i1 %666, label %667, label %658, !llvm.loop !225

667:                                              ; preds = %658, %648
  store i32 0, ptr %236, align 8, !tbaa !37
  br label %668

668:                                              ; preds = %667, %465
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @kill_polyA(ptr nocapture noundef %0, ptr noundef readonly %1, ptr noundef readonly %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct._result_t, ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %struct._result_t, ptr %0, i64 0, i32 1, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !37
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %237, label %8

8:                                                ; preds = %3
  %9 = load ptr, ptr %4, align 8, !tbaa !16
  %10 = zext i32 %6 to i64
  br label %11

11:                                               ; preds = %17, %8
  %12 = phi i64 [ 0, %8 ], [ %18, %17 ]
  %13 = getelementptr inbounds ptr, ptr %9, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !7
  %15 = tail call fastcc i32 @is_polyAT_exon_p(ptr noundef %14, ptr noundef %2) #35, !range !141
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %11
  %18 = add nuw nsw i64 %12, 1
  %19 = icmp eq i64 %18, %10
  br i1 %19, label %22, label %11, !llvm.loop !226

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
  %29 = load ptr, ptr %4, align 8, !tbaa !16
  %30 = getelementptr inbounds ptr, ptr %29, i64 %28
  %31 = load ptr, ptr %30, align 8, !tbaa !7
  tail call void @free(ptr noundef %31) #33
  %32 = add nuw nsw i64 %28, 1
  %33 = icmp eq i64 %32, %26
  br i1 %33, label %34, label %27, !llvm.loop !227

34:                                               ; preds = %27
  %35 = load ptr, ptr %4, align 8, !tbaa !16
  %36 = getelementptr inbounds ptr, ptr %35, i64 %26
  %37 = load i32, ptr %5, align 8, !tbaa !37
  %38 = sub i32 %37, %23
  %39 = zext i32 %38 to i64
  %40 = shl nuw nsw i64 %39, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %35, ptr nonnull align 8 %36, i64 %40, i1 false)
  %41 = load i32, ptr %5, align 8, !tbaa !37
  %42 = sub i32 %41, %23
  store i32 %42, ptr %5, align 8, !tbaa !37
  br label %43

43:                                               ; preds = %34, %22
  %44 = phi i32 [ %42, %34 ], [ %6, %22 ]
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %237, label %46

46:                                               ; preds = %43
  %47 = load ptr, ptr %4, align 8, !tbaa !16
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
  %57 = tail call fastcc i32 @is_polyAT_exon_p(ptr noundef %56, ptr noundef %2) #35, !range !141
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %49
  %60 = add nuw nsw i64 %50, 1
  %61 = icmp eq i64 %60, %48
  br i1 %61, label %62, label %49, !llvm.loop !228

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
  %72 = load ptr, ptr %4, align 8, !tbaa !16
  %73 = getelementptr inbounds ptr, ptr %72, i64 %71
  %74 = load ptr, ptr %73, align 8, !tbaa !7
  tail call void @free(ptr noundef %74) #33
  %75 = add nuw nsw i64 %71, 1
  %76 = load i32, ptr %5, align 8, !tbaa !37
  %77 = zext i32 %76 to i64
  %78 = icmp ult i64 %75, %77
  br i1 %78, label %70, label %79, !llvm.loop !229

79:                                               ; preds = %70
  %.lcssa10 = phi i32 [ %76, %70 ]
  %80 = sub i32 %.lcssa10, %63
  br label %81

81:                                               ; preds = %79, %65
  %82 = phi i32 [ %80, %79 ], [ %66, %65 ]
  store i32 %82, ptr %5, align 8, !tbaa !37
  br label %83

83:                                               ; preds = %81, %62
  %84 = phi i32 [ %82, %81 ], [ %44, %62 ]
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %237, label %86

86:                                               ; preds = %83
  %87 = load ptr, ptr %4, align 8, !tbaa !16
  %88 = add i32 %84, -1
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds ptr, ptr %87, i64 %89
  %91 = load ptr, ptr %90, align 8, !tbaa !7
  %92 = getelementptr inbounds %struct._exon_t, ptr %91, i64 0, i32 3
  %93 = load i32, ptr %92, align 4, !tbaa !107
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds i8, ptr %2, i64 %94
  %96 = load i8, ptr %95, align 1, !tbaa !16
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
  %122 = load i8, ptr %121, align 1, !tbaa !16
  %123 = icmp ne i8 %122, 0
  %124 = sub nsw i32 %117, %120
  %125 = icmp slt i32 %124, 10
  %126 = select i1 %123, i1 %125, i1 false
  br i1 %126, label %98, label %127, !llvm.loop !230

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
  %137 = load i32, ptr %136, align 4, !tbaa !39
  %138 = zext i32 %137 to i64
  %139 = getelementptr inbounds i8, ptr %1, i64 %138
  %140 = load i8, ptr %139, align 1, !tbaa !16
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
  %154 = load i8, ptr %153, align 1, !tbaa !16
  %155 = icmp ne i8 %154, 0
  %156 = icmp ult i32 %149, %.lcssa7
  %157 = select i1 %155, i1 %156, i1 false
  br i1 %157, label %144, label %158, !llvm.loop !231

158:                                              ; preds = %144
  %.lcssa6 = phi i32 [ %149, %144 ]
  %.lcssa5 = phi i32 [ %152, %144 ]
  %159 = mul i32 %.lcssa5, 10
  %160 = udiv i32 %159, %.lcssa6
  %161 = icmp ult i32 %160, 8
  br i1 %161, label %162, label %164

162:                                              ; preds = %158
  %163 = getelementptr inbounds %struct._result_t, ptr %0, i64 0, i32 5, i32 1
  store i32 1, ptr %163, align 4, !tbaa !232
  br label %164

164:                                              ; preds = %162, %158, %135, %131, %127, %86
  %165 = phi i32 [ %.lcssa7, %158 ], [ %.lcssa7, %162 ], [ %.lcssa7, %131 ], [ %.lcssa7, %127 ], [ undef, %86 ], [ %.lcssa7, %135 ]
  %166 = phi i32 [ %.lcssa9, %158 ], [ %.lcssa9, %162 ], [ %.lcssa9, %131 ], [ %.lcssa9, %127 ], [ undef, %86 ], [ %.lcssa9, %135 ]
  %167 = load ptr, ptr %87, align 8, !tbaa !7
  %168 = getelementptr inbounds %struct._exon_t, ptr %167, i64 0, i32 1
  %169 = load i32, ptr %168, align 4, !tbaa !45
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
  %183 = load i8, ptr %175, align 1, !tbaa !16
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
  br i1 %201, label %174, label %202, !llvm.loop !233

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
  %211 = load i32, ptr %167, align 4, !tbaa !44
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
  %223 = load i8, ptr %219, align 1, !tbaa !16
  %224 = icmp eq i8 %223, 84
  %225 = zext i1 %224 to i32
  %226 = add i32 %221, %225
  %227 = getelementptr inbounds i8, ptr %219, i64 -1
  %228 = icmp uge ptr %227, %1
  %229 = icmp ult i32 %222, %.lcssa2
  %230 = select i1 %228, i1 %229, i1 false
  br i1 %230, label %218, label %231, !llvm.loop !234

231:                                              ; preds = %218
  %.lcssa1 = phi i32 [ %222, %218 ]
  %.lcssa = phi i32 [ %226, %218 ]
  %232 = mul i32 %.lcssa, 10
  %233 = udiv i32 %232, %.lcssa1
  %234 = icmp ult i32 %233, 8
  br i1 %234, label %235, label %237

235:                                              ; preds = %231
  %236 = getelementptr inbounds %struct._result_t, ptr %0, i64 0, i32 5, i32 2
  store i32 1, ptr %236, align 4, !tbaa !235
  br label %237

237:                                              ; preds = %235, %231, %210, %206, %202, %164, %83, %43, %3
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @bld_table(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct._hash_env_t, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !130
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %100, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._hash_env_t, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !133
  %8 = getelementptr inbounds %struct._hash_env_t, ptr %0, i64 0, i32 5
  %9 = getelementptr inbounds %struct._hash_env_t, ptr %0, i64 0, i32 4
  %10 = getelementptr inbounds %struct._hash_env_t, ptr %0, i64 0, i32 3
  br label %22

11:                                               ; preds = %90, %55
  %12 = phi i64 [ %59, %55 ], [ %71, %90 ]
  %13 = phi ptr [ %56, %55 ], [ %66, %90 ]
  %14 = phi i32 [ %60, %55 ], [ %97, %90 ]
  %15 = trunc i64 %12 to i32
  %16 = icmp ugt i32 %14, %15
  br i1 %16, label %17, label %100

17:                                               ; preds = %42, %20, %11
  %18 = phi ptr [ %13, %11 ], [ %.lcssa1, %20 ], [ %43, %42 ]
  %19 = phi i32 [ %15, %11 ], [ %21, %20 ], [ %48, %42 ]
  br label %22, !llvm.loop !236

20:                                               ; preds = %62
  %.lcssa1 = phi ptr [ %66, %62 ]
  %.lcssa = phi i64 [ %71, %62 ]
  %21 = trunc i64 %.lcssa to i32
  br label %17

22:                                               ; preds = %17, %5
  %23 = phi ptr [ %7, %5 ], [ %18, %17 ]
  %24 = phi i32 [ 0, %5 ], [ %19, %17 ]
  %25 = load i32, ptr %8, align 4, !tbaa !135
  %26 = icmp ugt i32 %25, 1
  br i1 %26, label %27, label %55

27:                                               ; preds = %22
  %28 = load i32, ptr %2, align 8, !tbaa !130
  %29 = getelementptr i8, ptr %23, i64 1
  %30 = add i32 %25, -2
  %31 = zext i32 %30 to i64
  %32 = getelementptr i8, ptr %29, i64 %31
  %33 = tail call i32 @llvm.umax.i32(i32 %24, i32 %28)
  %34 = add i32 %24, -1
  %35 = add i32 %34, %25
  br label %36

36:                                               ; preds = %50, %27
  %37 = phi i32 [ 0, %27 ], [ %52, %50 ]
  %38 = phi i32 [ %24, %27 ], [ %48, %50 ]
  %39 = phi i32 [ 1, %27 ], [ %53, %50 ]
  %40 = phi ptr [ %23, %27 ], [ %43, %50 ]
  %41 = icmp eq i32 %38, %33
  br i1 %41, label %55, label %42

42:                                               ; preds = %36
  %43 = getelementptr inbounds i8, ptr %40, i64 1
  %44 = load i8, ptr %40, align 1, !tbaa !16
  %45 = zext i8 %44 to i64
  %46 = getelementptr inbounds [128 x i32], ptr @encoding, i64 0, i64 %45
  %47 = load i32, ptr %46, align 4, !tbaa !19
  %48 = add i32 %38, 1
  %49 = icmp ugt i32 %47, 3
  br i1 %49, label %17, label %50

50:                                               ; preds = %42
  %51 = shl i32 %37, 2
  %52 = add nuw i32 %47, %51
  %53 = add nuw i32 %39, 1
  %54 = icmp eq i32 %53, %25
  br i1 %54, label %55, label %36, !llvm.loop !237

55:                                               ; preds = %50, %36, %22
  %56 = phi ptr [ %23, %22 ], [ %32, %50 ], [ %40, %36 ]
  %57 = phi i32 [ %24, %22 ], [ %35, %50 ], [ %33, %36 ]
  %58 = phi i32 [ 0, %22 ], [ %52, %50 ], [ %37, %36 ]
  %59 = zext i32 %57 to i64
  %60 = load i32, ptr %2, align 8, !tbaa !130
  %61 = icmp ult i32 %57, %60
  br i1 %61, label %62, label %11

62:                                               ; preds = %90, %55
  %63 = phi i32 [ %77, %90 ], [ %58, %55 ]
  %64 = phi ptr [ %66, %90 ], [ %56, %55 ]
  %65 = phi i64 [ %71, %90 ], [ %59, %55 ]
  %66 = getelementptr inbounds i8, ptr %64, i64 1
  %67 = load i8, ptr %64, align 1, !tbaa !16
  %68 = zext i8 %67 to i64
  %69 = getelementptr inbounds [128 x i32], ptr @encoding, i64 0, i64 %68
  %70 = load i32, ptr %69, align 4, !tbaa !19
  %71 = add nuw nsw i64 %65, 1
  %72 = icmp ult i32 %70, 4
  br i1 %72, label %73, label %20

73:                                               ; preds = %62
  %74 = load i32, ptr %9, align 8, !tbaa !136
  %75 = and i32 %74, %63
  %76 = shl i32 %75, 2
  %77 = add nuw i32 %76, %70
  %78 = tail call ptr @xmalloc(i64 noundef 8) #33
  store i32 %77, ptr %78, align 4, !tbaa !209
  %79 = load ptr, ptr %0, align 8, !tbaa !138
  %80 = and i32 %77, 524287
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds ptr, ptr %79, i64 %81
  %83 = tail call ptr @tsearch(ptr noundef nonnull %78, ptr noundef %82, ptr noundef nonnull @hash_node_compare) #33
  %84 = load ptr, ptr %83, align 8, !tbaa !7
  %85 = icmp eq ptr %84, %78
  br i1 %85, label %90, label %86

86:                                               ; preds = %73
  tail call void @free(ptr noundef nonnull %78) #33
  %87 = load ptr, ptr %83, align 8, !tbaa !7
  %88 = getelementptr inbounds %struct._hash_node_t, ptr %87, i64 0, i32 1
  %89 = load i32, ptr %88, align 4, !tbaa !238
  br label %90

90:                                               ; preds = %86, %73
  %91 = phi i32 [ %89, %86 ], [ -1, %73 ]
  %92 = phi ptr [ %87, %86 ], [ %78, %73 ]
  %93 = load ptr, ptr %10, align 8, !tbaa !137
  %94 = getelementptr inbounds i32, ptr %93, i64 %71
  store i32 %91, ptr %94, align 4, !tbaa !19
  %95 = getelementptr inbounds %struct._hash_node_t, ptr %92, i64 0, i32 1
  %96 = trunc i64 %71 to i32
  store i32 %96, ptr %95, align 4, !tbaa !238
  %97 = load i32, ptr %2, align 8, !tbaa !130
  %98 = zext i32 %97 to i64
  %99 = icmp ult i64 %71, %98
  br i1 %99, label %62, label %11

100:                                              ; preds = %11, %1
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @free_hash_env(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct._hash_env_t, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !137
  tail call void @free(ptr noundef %3) #33
  br label %4

4:                                                ; preds = %4, %1
  %5 = phi i64 [ 0, %1 ], [ %9, %4 ]
  %6 = load ptr, ptr %0, align 8, !tbaa !138
  %7 = getelementptr inbounds ptr, ptr %6, i64 %5
  %8 = load ptr, ptr %7, align 8, !tbaa !7
  tail call void @tdestroy(ptr noundef %8, ptr noundef nonnull @free) #33
  %9 = add nuw nsw i64 %5, 1
  %10 = icmp eq i64 %9, 524288
  br i1 %10, label %11, label %4, !llvm.loop !239

11:                                               ; preds = %4
  %12 = load ptr, ptr %0, align 8, !tbaa !138
  tail call void @free(ptr noundef %12) #33
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @merge(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct._collec_t, ptr %1, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !37
  %7 = add i32 %6, %2
  %8 = icmp eq i32 %6, 0
  br i1 %8, label %122, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct._collec_t, ptr %0, i64 0, i32 1
  %11 = load i32, ptr %10, align 8, !tbaa !37
  %12 = add i32 %11, %6
  %13 = getelementptr inbounds %struct._collec_t, ptr %0, i64 0, i32 2
  %14 = load i32, ptr %13, align 4, !tbaa !132
  %15 = icmp ugt i32 %12, %14
  %16 = load ptr, ptr %0, align 8, !tbaa !16
  br i1 %15, label %17, label %22

17:                                               ; preds = %9
  store i32 %12, ptr %13, align 4, !tbaa !132
  %18 = zext i32 %12 to i64
  %19 = shl nuw nsw i64 %18, 3
  %20 = tail call ptr @xrealloc(ptr noundef %16, i64 noundef %19) #33
  store ptr %20, ptr %0, align 8, !tbaa !16
  %21 = load i32, ptr %10, align 8, !tbaa !37
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
  %32 = load ptr, ptr %0, align 8, !tbaa !16
  %33 = getelementptr inbounds ptr, ptr %32, i64 %27
  %34 = load ptr, ptr %1, align 8, !tbaa !16
  %35 = load i32, ptr %5, align 8, !tbaa !37
  %36 = zext i32 %35 to i64
  %37 = shl nuw nsw i64 %36, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %33, ptr align 8 %34, i64 %37, i1 false)
  %38 = load i32, ptr %5, align 8, !tbaa !37
  %39 = load i32, ptr %10, align 8, !tbaa !37
  %40 = add i32 %39, %38
  store i32 %40, ptr %10, align 8, !tbaa !37
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
  %51 = load ptr, ptr %0, align 8, !tbaa !16
  %52 = add i32 %50, -1
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds ptr, ptr %51, i64 %53
  %55 = load ptr, ptr %54, align 8, !tbaa !7
  %56 = zext i32 %50 to i64
  %57 = getelementptr inbounds ptr, ptr %51, i64 %56
  %58 = load ptr, ptr %57, align 8, !tbaa !7
  %59 = getelementptr inbounds %struct._exon_t, ptr %58, i64 0, i32 1
  %60 = load i32, ptr %59, align 4, !tbaa !45
  %61 = getelementptr inbounds %struct._exon_t, ptr %55, i64 0, i32 1
  %62 = load i32, ptr %61, align 4, !tbaa !45
  %63 = icmp ugt i32 %60, %62
  br i1 %63, label %75, label %64

64:                                               ; preds = %48
  tail call void @free(ptr noundef nonnull %55) #33
  %65 = load ptr, ptr %0, align 8, !tbaa !16
  %66 = getelementptr inbounds ptr, ptr %65, i64 %56
  %67 = getelementptr inbounds ptr, ptr %66, i64 -1
  %68 = load i32, ptr %10, align 8, !tbaa !37
  %69 = sub i32 %68, %50
  %70 = zext i32 %69 to i64
  %71 = shl nuw nsw i64 %70, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %67, ptr align 8 %66, i64 %71, i1 false)
  %72 = load i32, ptr %10, align 8, !tbaa !37
  %73 = add i32 %72, -1
  store i32 %73, ptr %10, align 8, !tbaa !37
  %74 = add i32 %49, -1
  br label %117

75:                                               ; preds = %48
  %76 = getelementptr inbounds %struct._exon_t, ptr %55, i64 0, i32 3
  %77 = load i32, ptr %76, align 4, !tbaa !107
  %78 = getelementptr inbounds %struct._exon_t, ptr %58, i64 0, i32 3
  %79 = load i32, ptr %78, align 4, !tbaa !107
  %80 = icmp ult i32 %77, %79
  br i1 %80, label %91, label %81

81:                                               ; preds = %75
  tail call void @free(ptr noundef nonnull %58) #33
  %82 = load i32, ptr %10, align 8, !tbaa !37
  %83 = add i32 %82, -1
  store i32 %83, ptr %10, align 8, !tbaa !37
  %84 = load ptr, ptr %0, align 8, !tbaa !16
  %85 = getelementptr inbounds ptr, ptr %84, i64 %56
  %86 = getelementptr inbounds ptr, ptr %85, i64 1
  %87 = sub i32 %83, %50
  %88 = zext i32 %87 to i64
  %89 = shl nuw nsw i64 %88, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %85, ptr nonnull align 8 %86, i64 %89, i1 false)
  %90 = add i32 %49, -1
  br label %117

91:                                               ; preds = %75
  %92 = load i32, ptr %58, align 4, !tbaa !44
  %93 = getelementptr inbounds %struct._exon_t, ptr %55, i64 0, i32 2
  %94 = load i32, ptr %93, align 4, !tbaa !39
  %95 = add i32 %94, 31
  %96 = icmp uge i32 %92, %95
  %97 = add i32 %47, %77
  %98 = icmp ugt i32 %60, %97
  %99 = or i1 %96, %98
  br i1 %99, label %117, label %100

100:                                              ; preds = %91
  %101 = load i32, ptr %55, align 4, !tbaa !44
  %102 = tail call i32 @llvm.umin.i32(i32 %101, i32 %92)
  store i32 %102, ptr %55, align 4, !tbaa !44
  %103 = tail call i32 @llvm.umin.i32(i32 %62, i32 %60)
  store i32 %103, ptr %61, align 4, !tbaa !45
  %104 = getelementptr inbounds %struct._exon_t, ptr %58, i64 0, i32 2
  %105 = load i32, ptr %104, align 4, !tbaa !39
  %106 = tail call i32 @llvm.umax.i32(i32 %105, i32 %94)
  store i32 %106, ptr %93, align 4, !tbaa !39
  %107 = tail call i32 @llvm.umax.i32(i32 %79, i32 %77)
  store i32 %107, ptr %76, align 4, !tbaa !107
  tail call void @free(ptr noundef nonnull %58) #33
  %108 = load i32, ptr %10, align 8, !tbaa !37
  %109 = add i32 %108, -1
  store i32 %109, ptr %10, align 8, !tbaa !37
  %110 = load ptr, ptr %0, align 8, !tbaa !16
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
  br i1 %121, label %48, label %122, !llvm.loop !240

122:                                              ; preds = %117, %22, %4
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind optsize memory(argmem: read) uwtable
define internal fastcc i32 @is_polyAT_exon_p(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #22 {
  %3 = getelementptr inbounds %struct._exon_t, ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 4, !tbaa !107
  %5 = getelementptr inbounds %struct._exon_t, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !45
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
  %19 = load i8, ptr %18, align 1, !tbaa !16
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
  br i1 %38, label %39, label %11, !llvm.loop !241

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

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

; Function Attrs: nofree nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc i32 @perfect_spl_p(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) unnamed_addr #23 {
  %4 = alloca [4 x i8], align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #32
  %5 = load i32, ptr %2, align 4, !tbaa !183
  %6 = zext i32 %5 to i64
  %7 = getelementptr inbounds i8, ptr %0, i64 %6
  %8 = load i32, ptr getelementptr inbounds (%struct._options_t, ptr @options, i64 0, i32 9), align 4, !tbaa !64
  %9 = zext i32 %8 to i64
  %10 = sub nsw i64 0, %9
  %11 = getelementptr inbounds i8, ptr %7, i64 %10
  %12 = getelementptr inbounds %struct._splice_score_t, ptr %2, i64 0, i32 1
  %13 = load i32, ptr %12, align 4, !tbaa !185
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds i8, ptr %1, i64 %14
  %16 = getelementptr inbounds i8, ptr %15, i64 %10
  %17 = tail call fastcc i32 @SWscore(ptr noundef %11, ptr noundef %16, i32 noundef %8) #35
  %18 = icmp ult i32 %17, %8
  br i1 %18, label %54, label %19

19:                                               ; preds = %3
  %20 = getelementptr inbounds %struct._splice_score_t, ptr %2, i64 0, i32 2
  %21 = load i32, ptr %20, align 4, !tbaa !186
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
  %32 = load i32, ptr getelementptr inbounds (%struct._options_t, ptr @options, i64 0, i32 2), align 8, !tbaa !51
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %54, label %34

34:                                               ; preds = %27
  %35 = load ptr, ptr getelementptr inbounds (%struct._options_t, ptr @options, i64 0, i32 1), align 8, !tbaa !73
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
  br i1 %48, label %54, label %37, !llvm.loop !242

49:                                               ; preds = %42, %37
  %.lcssa = phi i64 [ %38, %42 ], [ %38, %37 ]
  %50 = phi i32 [ 1, %37 ], [ -1, %42 ]
  %51 = trunc i64 %.lcssa to i32
  %52 = getelementptr inbounds %struct._splice_score_t, ptr %2, i64 0, i32 3
  store i32 %51, ptr %52, align 4, !tbaa !188
  %53 = getelementptr inbounds %struct._splice_score_t, ptr %2, i64 0, i32 6
  store i32 %50, ptr %53, align 4, !tbaa !187
  br label %54

54:                                               ; preds = %49, %46, %27, %19, %3
  %55 = phi i32 [ 0, %3 ], [ 0, %19 ], [ 0, %27 ], [ 1, %49 ], [ 0, %46 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #32
  ret i32 %55
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @compute_max_score(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = load i32, ptr %2, align 4, !tbaa !183
  %6 = getelementptr inbounds %struct._splice_score_t, ptr %2, i64 0, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !185
  %8 = getelementptr inbounds %struct._splice_score_t, ptr %2, i64 0, i32 2
  %9 = load i32, ptr %8, align 4, !tbaa !186
  %10 = load i32, ptr getelementptr inbounds (%struct._options_t, ptr @options, i64 0, i32 9), align 4, !tbaa !64
  %11 = shl i32 %10, 1
  %12 = add i32 %11, 4
  %13 = zext i32 %12 to i64
  %14 = tail call ptr @xmalloc(i64 noundef %13) #33
  %15 = getelementptr inbounds %struct._splice_score_t, ptr %2, i64 0, i32 4
  store i32 0, ptr %15, align 4, !tbaa !243
  %16 = getelementptr inbounds %struct._splice_score_t, ptr %2, i64 0, i32 5
  store i32 0, ptr %16, align 4, !tbaa !244
  %17 = getelementptr inbounds %struct._splice_score_t, ptr %2, i64 0, i32 3
  store i32 -1, ptr %17, align 4, !tbaa !188
  %18 = load i32, ptr getelementptr inbounds (%struct._options_t, ptr @options, i64 0, i32 2), align 8, !tbaa !51
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %40, label %20

20:                                               ; preds = %4
  %21 = icmp sgt i32 %3, -1
  %22 = icmp eq i32 %3, 0
  br label %23

23:                                               ; preds = %35, %20
  %24 = phi i64 [ 0, %20 ], [ %36, %35 ]
  br i1 %21, label %27, label %25

25:                                               ; preds = %23
  %26 = trunc i64 %24 to i32
  br label %31

27:                                               ; preds = %23
  %28 = load ptr, ptr getelementptr inbounds (%struct._options_t, ptr @options, i64 0, i32 1), align 8, !tbaa !73
  %29 = getelementptr inbounds %struct._junction_t, ptr %28, i64 %24
  %30 = trunc i64 %24 to i32
  tail call fastcc void @compute_max_score_1(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, i32 noundef %30, i32 noundef %5, i32 noundef %7, i32 noundef %9, ptr noundef %14, ptr noundef %29, i32 noundef 1) #35
  br i1 %22, label %31, label %35

31:                                               ; preds = %27, %25
  %32 = phi i32 [ %26, %25 ], [ %30, %27 ]
  %33 = load ptr, ptr getelementptr inbounds (%struct._options_t, ptr @options, i64 0, i32 1), align 8, !tbaa !73
  %34 = getelementptr inbounds %struct._junction_t, ptr %33, i64 %24, i32 1
  tail call fastcc void @compute_max_score_1(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, i32 noundef %32, i32 noundef %5, i32 noundef %7, i32 noundef %9, ptr noundef %14, ptr noundef nonnull %34, i32 noundef -1) #35
  br label %35

35:                                               ; preds = %31, %27
  %36 = add nuw nsw i64 %24, 1
  %37 = load i32, ptr getelementptr inbounds (%struct._options_t, ptr @options, i64 0, i32 2), align 8, !tbaa !51
  %38 = zext i32 %37 to i64
  %39 = icmp ult i64 %36, %38
  br i1 %39, label %23, label %40, !llvm.loop !245

40:                                               ; preds = %35, %4
  tail call void @free(ptr noundef %14) #33
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @free_align(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %3, %1
  %4 = phi ptr [ %5, %3 ], [ %0, %1 ]
  %5 = load ptr, ptr %4, align 8, !tbaa !118
  %6 = getelementptr inbounds %struct._edit_script_list, ptr %4, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !121
  tail call void @Free_script(ptr noundef %7) #33
  tail call void @free(ptr noundef nonnull %4) #33
  %8 = icmp eq ptr %5, null
  br i1 %8, label %9, label %3, !llvm.loop !246

9:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: nofree nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @compute_max_score_1(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr nocapture noundef %7, ptr nocapture noundef readonly %8, i32 noundef %9) unnamed_addr #24 {
  %11 = load i32, ptr getelementptr inbounds (%struct._options_t, ptr @options, i64 0, i32 9), align 4, !tbaa !64
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds i8, ptr %7, i64 %12
  %14 = load i32, ptr %8, align 1
  store i32 %14, ptr %13, align 1
  %15 = load i32, ptr getelementptr inbounds (%struct._options_t, ptr @options, i64 0, i32 7), align 4, !tbaa !61
  %16 = sub i32 0, %15
  %17 = getelementptr inbounds i8, ptr %7, i64 4
  %18 = getelementptr inbounds i8, ptr %7, i64 2
  %19 = icmp slt i32 %15, %16
  br i1 %19, label %155, label %20

20:                                               ; preds = %10
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
  %40 = load i32, ptr getelementptr inbounds (%struct._options_t, ptr @options, i64 0, i32 9), align 4, !tbaa !64
  br label %41

41:                                               ; preds = %150, %20
  %42 = phi i32 [ %40, %20 ], [ %58, %150 ]
  %43 = phi i64 [ %39, %20 ], [ %151, %150 ]
  %44 = phi i32 [ undef, %20 ], [ %.lcssa2, %150 ]
  %45 = phi i32 [ undef, %20 ], [ %.lcssa4, %150 ]
  %46 = zext i32 %42 to i64
  %47 = sub nsw i64 0, %46
  %48 = getelementptr inbounds i8, ptr %22, i64 %47
  %49 = getelementptr inbounds i8, ptr %48, i64 %43
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %7, ptr align 1 %49, i64 %46, i1 false)
  %50 = load i32, ptr getelementptr inbounds (%struct._options_t, ptr @options, i64 0, i32 9), align 4, !tbaa !64
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds i8, ptr %17, i64 %51
  %53 = getelementptr inbounds i8, ptr %22, i64 %43
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %52, ptr align 1 %53, i64 %51, i1 false)
  %54 = trunc i64 %43 to i32
  %55 = add i32 %54, %4
  %56 = load i8, ptr %8, align 1, !tbaa !16
  %57 = load i8, ptr %23, align 1, !tbaa !16
  %58 = load i32, ptr getelementptr inbounds (%struct._options_t, ptr @options, i64 0, i32 9), align 4, !tbaa !64
  %59 = zext i32 %58 to i64
  %60 = sub nsw i64 0, %59
  %61 = getelementptr inbounds i8, ptr %25, i64 %60
  %62 = getelementptr inbounds i8, ptr %61, i64 %43
  %63 = add i32 %58, 2
  %64 = add i32 %27, %54
  %65 = add i32 %29, %54
  %66 = getelementptr i8, ptr %32, i64 %43
  %67 = getelementptr inbounds i8, ptr %18, i64 %59
  %68 = add i32 %54, %6
  br label %69

69:                                               ; preds = %127, %41
  %70 = phi i64 [ -1, %41 ], [ %131, %127 ]
  %71 = phi i32 [ 0, %41 ], [ %102, %127 ]
  %72 = phi i32 [ 0, %41 ], [ %101, %127 ]
  %73 = phi i32 [ %44, %41 ], [ %100, %127 ]
  %74 = phi i32 [ 0, %41 ], [ %130, %127 ]
  %75 = phi i32 [ %45, %41 ], [ %129, %127 ]
  %76 = phi i32 [ 0, %41 ], [ %128, %127 ]
  %77 = getelementptr inbounds i8, ptr %62, i64 %70
  %78 = tail call fastcc i32 @SWscore(ptr noundef %77, ptr noundef %7, i32 noundef %63) #35
  %79 = icmp ult i32 %78, %72
  %80 = trunc i64 %70 to i32
  br i1 %79, label %98, label %81

81:                                               ; preds = %69
  %82 = add i32 %55, %80
  %83 = add i32 %82, 1
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds i8, ptr %0, i64 %84
  %86 = load i8, ptr %85, align 1, !tbaa !16
  %87 = icmp eq i8 %86, %57
  %88 = zext i32 %82 to i64
  %89 = getelementptr inbounds i8, ptr %0, i64 %88
  %90 = load i8, ptr %89, align 1, !tbaa !16
  %91 = icmp eq i8 %90, %56
  %92 = select i1 %91, i32 2, i32 1
  %93 = zext i1 %91 to i32
  %94 = select i1 %87, i32 %92, i32 %93
  %95 = icmp ugt i32 %78, %72
  %96 = icmp ugt i32 %94, %71
  %97 = select i1 %95, i1 true, i1 %96
  br i1 %97, label %99, label %98

98:                                               ; preds = %81, %69
  br label %99

99:                                               ; preds = %98, %81
  %100 = phi i32 [ %82, %81 ], [ %73, %98 ]
  %101 = phi i32 [ %78, %81 ], [ %72, %98 ]
  %102 = phi i32 [ %94, %81 ], [ %71, %98 ]
  %103 = add i32 %64, %80
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds i8, ptr %0, i64 %104
  %106 = load i8, ptr %105, align 1, !tbaa !16
  %107 = load i8, ptr %28, align 1, !tbaa !16
  %108 = icmp eq i8 %106, %107
  %109 = zext i1 %108 to i32
  %110 = add i32 %65, %80
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds i8, ptr %0, i64 %111
  %113 = load i8, ptr %112, align 1, !tbaa !16
  %114 = load i8, ptr %30, align 1, !tbaa !16
  %115 = icmp eq i8 %113, %114
  %116 = select i1 %108, i32 2, i32 1
  %117 = select i1 %115, i32 %116, i32 %109
  %118 = getelementptr inbounds i8, ptr %66, i64 %70
  %119 = tail call fastcc i32 @SWscore(ptr noundef nonnull %118, ptr noundef nonnull %67, i32 noundef %63) #35
  %120 = icmp ult i32 %119, %76
  br i1 %120, label %127, label %121

121:                                              ; preds = %99
  %122 = icmp ugt i32 %119, %76
  %123 = icmp ugt i32 %117, %74
  %124 = select i1 %122, i1 true, i1 %123
  br i1 %124, label %125, label %127

125:                                              ; preds = %121
  %126 = add i32 %68, %80
  br label %127

127:                                              ; preds = %125, %121, %99
  %128 = phi i32 [ %119, %125 ], [ %76, %99 ], [ %76, %121 ]
  %129 = phi i32 [ %126, %125 ], [ %75, %99 ], [ %75, %121 ]
  %130 = phi i32 [ %117, %125 ], [ %74, %99 ], [ %74, %121 ]
  %131 = add nsw i64 %70, 1
  %132 = icmp eq i64 %131, 2
  br i1 %132, label %133, label %69, !llvm.loop !247

133:                                              ; preds = %127
  %.lcssa5 = phi i32 [ %128, %127 ]
  %.lcssa4 = phi i32 [ %129, %127 ]
  %.lcssa3 = phi i32 [ %130, %127 ]
  %.lcssa2 = phi i32 [ %100, %127 ]
  %.lcssa1 = phi i32 [ %101, %127 ]
  %.lcssa = phi i32 [ %102, %127 ]
  %134 = add i32 %.lcssa1, %.lcssa5
  %135 = add nuw nsw i32 %.lcssa, %.lcssa3
  %136 = load i32, ptr %33, align 4, !tbaa !243
  %137 = icmp ult i32 %134, %136
  br i1 %137, label %150, label %138

138:                                              ; preds = %133
  %139 = icmp ugt i32 %134, %136
  br i1 %139, label %148, label %140

140:                                              ; preds = %138
  %141 = load i32, ptr %34, align 4, !tbaa !244
  %142 = icmp ult i32 %135, %141
  br i1 %142, label %150, label %143

143:                                              ; preds = %140
  %144 = icmp ugt i32 %135, %141
  br i1 %144, label %148, label %145

145:                                              ; preds = %143
  %146 = load i32, ptr %35, align 4, !tbaa !188
  %147 = icmp ugt i32 %146, %3
  br i1 %147, label %148, label %150

148:                                              ; preds = %145, %143, %138
  store i32 %134, ptr %33, align 4, !tbaa !243
  store i32 %135, ptr %34, align 4, !tbaa !244
  store i32 %.lcssa2, ptr %2, align 4, !tbaa !183
  %149 = add i32 %54, %5
  store i32 %149, ptr %36, align 4, !tbaa !185
  store i32 %.lcssa4, ptr %37, align 4, !tbaa !186
  store i32 %3, ptr %35, align 4, !tbaa !188
  store i32 %9, ptr %38, align 4, !tbaa !187
  br label %150

150:                                              ; preds = %148, %145, %140, %133
  %151 = add nsw i64 %43, 1
  %152 = load i32, ptr getelementptr inbounds (%struct._options_t, ptr @options, i64 0, i32 7), align 4, !tbaa !61
  %153 = sext i32 %152 to i64
  %154 = icmp slt i64 %43, %153
  br i1 %154, label %41, label %155, !llvm.loop !248

155:                                              ; preds = %150, %10
  ret void
}

; Function Attrs: nofree nosync nounwind optsize memory(argmem: read) uwtable
define internal fastcc i32 @SWscore(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #25 {
  %4 = load i8, ptr %0, align 1, !tbaa !16
  %5 = load i8, ptr %1, align 1, !tbaa !16
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
  %19 = load i8, ptr %18, align 1, !tbaa !16
  %20 = icmp eq i8 %13, %19
  %21 = zext i1 %20 to i32
  %22 = add nsw i32 %15, %21
  %23 = tail call i32 @llvm.smax.i32(i32 %22, i32 %16)
  %24 = getelementptr inbounds i8, ptr %0, i64 %14
  %25 = load i8, ptr %24, align 1, !tbaa !16
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
  br i1 %38, label %39, label %11, !llvm.loop !249

39:                                               ; preds = %11, %3
  %40 = phi i32 [ %7, %3 ], [ %36, %11 ]
  ret i32 %40
}

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #26

; Function Attrs: optsize
declare void @tdestroy(ptr noundef, ptr noundef) local_unnamed_addr #27

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @hash_node_compare(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #28 {
  %3 = load i32, ptr %0, align 4, !tbaa !209
  %4 = load i32, ptr %1, align 4, !tbaa !209
  %5 = icmp ult i32 %3, %4
  %6 = icmp ugt i32 %3, %4
  %7 = zext i1 %6 to i32
  %8 = select i1 %5, i32 -1, i32 %7
  ret i32 %8
}

; Function Attrs: optsize
declare ptr @tsearch(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #27

; Function Attrs: optsize
declare ptr @tfind(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #27

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @add_col_elt(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._collec_t, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !132
  %5 = getelementptr inbounds %struct._collec_t, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !37
  %7 = icmp ugt i32 %4, %6
  %8 = load ptr, ptr %0, align 8, !tbaa !16
  br i1 %7, label %15, label %9

9:                                                ; preds = %2
  %10 = add i32 %4, 5
  store i32 %10, ptr %3, align 4, !tbaa !132
  %11 = zext i32 %10 to i64
  %12 = shl nuw nsw i64 %11, 3
  %13 = tail call ptr @xrealloc(ptr noundef %8, i64 noundef %12) #33
  store ptr %13, ptr %0, align 8, !tbaa !16
  %14 = load i32, ptr %5, align 8, !tbaa !37
  br label %15

15:                                               ; preds = %9, %2
  %16 = phi i32 [ %14, %9 ], [ %6, %2 ]
  %17 = phi ptr [ %13, %9 ], [ %8, %2 ]
  %18 = add i32 %16, 1
  store i32 %18, ptr %5, align 8, !tbaa !37
  %19 = zext i32 %16 to i64
  %20 = getelementptr inbounds ptr, ptr %17, i64 %19
  store ptr %1, ptr %20, align 8, !tbaa !7
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @msp_rna_compare(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #29 {
  %3 = load ptr, ptr %0, align 8, !tbaa !7
  %4 = load ptr, ptr %1, align 8, !tbaa !7
  %5 = getelementptr inbounds %struct._exon_t, ptr %3, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !45
  %7 = getelementptr inbounds %struct._exon_t, ptr %4, i64 0, i32 1
  %8 = load i32, ptr %7, align 4, !tbaa !45
  %9 = icmp ugt i32 %6, %8
  br i1 %9, label %21, label %10

10:                                               ; preds = %2
  %11 = icmp ult i32 %6, %8
  br i1 %11, label %21, label %12

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct._exon_t, ptr %3, i64 0, i32 3
  %14 = load i32, ptr %13, align 4, !tbaa !107
  %15 = getelementptr inbounds %struct._exon_t, ptr %4, i64 0, i32 3
  %16 = load i32, ptr %15, align 4, !tbaa !107
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
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #21

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @msp_compare(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #29 {
  %3 = load ptr, ptr %0, align 8, !tbaa !7
  %4 = load ptr, ptr %1, align 8, !tbaa !7
  %5 = load i32, ptr %3, align 4, !tbaa !44
  %6 = load i32, ptr %4, align 4, !tbaa !44
  %7 = icmp ugt i32 %5, %6
  br i1 %7, label %19, label %8

8:                                                ; preds = %2
  %9 = icmp ult i32 %5, %6
  br i1 %9, label %19, label %10

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct._exon_t, ptr %3, i64 0, i32 1
  %12 = load i32, ptr %11, align 4, !tbaa !45
  %13 = getelementptr inbounds %struct._exon_t, ptr %4, i64 0, i32 1
  %14 = load i32, ptr %13, align 4, !tbaa !45
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
declare i32 @llvm.abs.i32(i32, i1 immarg) #3

; Function Attrs: nofree nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc i32 @link_msps(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #30 {
  %4 = icmp ult i32 %1, %2
  br i1 %4, label %5, label %124

5:                                                ; preds = %3
  %6 = zext i32 %1 to i64
  %7 = zext i32 %2 to i64
  br label %8

8:                                                ; preds = %8, %5
  %9 = phi i64 [ %6, %5 ], [ %17, %8 ]
  %10 = load ptr, ptr %0, align 8, !tbaa !16
  %11 = getelementptr inbounds ptr, ptr %10, i64 %9
  %12 = load ptr, ptr %11, align 8, !tbaa !7
  %13 = getelementptr inbounds %struct._exon_t, ptr %12, i64 0, i32 5
  store i32 0, ptr %13, align 4, !tbaa !222
  %14 = getelementptr inbounds %struct._exon_t, ptr %12, i64 0, i32 6
  %15 = load i64, ptr %14, align 4
  %16 = or i64 %15, 4294967292
  store i64 %16, ptr %14, align 4
  %17 = add nuw nsw i64 %9, 1
  %18 = icmp eq i64 %17, %7
  br i1 %18, label %21, label %8, !llvm.loop !250

19:                                               ; preds = %121, %21
  %20 = icmp eq i64 %39, %7
  br i1 %20, label %124, label %21, !llvm.loop !251

21:                                               ; preds = %19, %8
  %22 = phi i64 [ %39, %19 ], [ %6, %8 ]
  %23 = phi i64 [ %26, %19 ], [ %6, %8 ]
  %24 = phi i32 [ %38, %19 ], [ 0, %8 ]
  %25 = phi i32 [ %36, %19 ], [ 0, %8 ]
  %26 = add nuw nsw i64 %23, 1
  %27 = load ptr, ptr %0, align 8, !tbaa !16
  %28 = getelementptr inbounds ptr, ptr %27, i64 %22
  %29 = load ptr, ptr %28, align 8, !tbaa !7
  %30 = getelementptr inbounds %struct._exon_t, ptr %29, i64 0, i32 4
  %31 = load i32, ptr %30, align 4, !tbaa !206
  %32 = getelementptr inbounds %struct._exon_t, ptr %29, i64 0, i32 5
  %33 = load i32, ptr %32, align 4, !tbaa !222
  %34 = add i32 %33, %31
  store i32 %34, ptr %32, align 4, !tbaa !222
  %35 = icmp ugt i32 %34, %25
  %36 = tail call i32 @llvm.umax.i32(i32 %34, i32 %25)
  %37 = trunc i64 %22 to i32
  %38 = select i1 %35, i32 %37, i32 %24
  %39 = add nuw nsw i64 %22, 1
  %40 = icmp ult i64 %39, %7
  br i1 %40, label %41, label %19

41:                                               ; preds = %21
  %42 = getelementptr inbounds %struct._exon_t, ptr %29, i64 0, i32 2
  %43 = getelementptr inbounds %struct._exon_t, ptr %29, i64 0, i32 3
  %44 = getelementptr inbounds %struct._exon_t, ptr %29, i64 0, i32 1
  %45 = shl nuw nsw i64 %22, 2
  %46 = and i64 %45, 4294967292
  br label %47

47:                                               ; preds = %121, %41
  %48 = phi i64 [ %26, %41 ], [ %122, %121 ]
  %49 = load ptr, ptr %0, align 8, !tbaa !16
  %50 = getelementptr inbounds ptr, ptr %49, i64 %48
  %51 = load ptr, ptr %50, align 8, !tbaa !7
  %52 = load i32, ptr %51, align 4, !tbaa !44
  %53 = load i32, ptr %42, align 4, !tbaa !39
  %54 = icmp ugt i32 %52, %53
  %55 = getelementptr inbounds %struct._exon_t, ptr %51, i64 0, i32 1
  %56 = load i32, ptr %55, align 4, !tbaa !45
  %57 = load i32, ptr %43, align 4, !tbaa !107
  %58 = icmp ugt i32 %56, %57
  br i1 %54, label %59, label %79

59:                                               ; preds = %47
  br i1 %58, label %99, label %60

60:                                               ; preds = %59
  %61 = load i32, ptr %44, align 4, !tbaa !45
  %62 = icmp ult i32 %56, %61
  br i1 %62, label %121, label %63

63:                                               ; preds = %60
  %64 = getelementptr inbounds %struct._exon_t, ptr %51, i64 0, i32 3
  %65 = load i32, ptr %64, align 4, !tbaa !107
  %66 = icmp ult i32 %65, %57
  br i1 %66, label %121, label %67

67:                                               ; preds = %63
  %68 = sub i32 %56, %61
  %69 = sub i32 %57, %56
  %70 = sub i32 %65, %57
  %71 = icmp ugt i32 %68, %69
  %72 = icmp ugt i32 %70, %69
  %73 = and i1 %71, %72
  br i1 %73, label %74, label %121

74:                                               ; preds = %67
  %75 = load i32, ptr getelementptr inbounds (%struct._options_t, ptr @options, i64 0, i32 8), align 8, !tbaa !62
  %76 = icmp ugt i32 %68, %75
  %77 = icmp ugt i32 %70, %75
  %78 = and i1 %76, %77
  br i1 %78, label %99, label %121

79:                                               ; preds = %47
  br i1 %58, label %80, label %121

80:                                               ; preds = %79
  %81 = load i32, ptr %29, align 4, !tbaa !44
  %82 = icmp ult i32 %52, %81
  br i1 %82, label %121, label %83

83:                                               ; preds = %80
  %84 = getelementptr inbounds %struct._exon_t, ptr %51, i64 0, i32 2
  %85 = load i32, ptr %84, align 4, !tbaa !39
  %86 = icmp ult i32 %85, %53
  br i1 %86, label %121, label %87

87:                                               ; preds = %83
  %88 = sub i32 %52, %81
  %89 = sub i32 %53, %52
  %90 = sub i32 %85, %53
  %91 = icmp ugt i32 %88, %89
  %92 = icmp ugt i32 %90, %89
  %93 = and i1 %91, %92
  br i1 %93, label %94, label %121

94:                                               ; preds = %87
  %95 = load i32, ptr getelementptr inbounds (%struct._options_t, ptr @options, i64 0, i32 8), align 8, !tbaa !62
  %96 = icmp ugt i32 %88, %95
  %97 = icmp ugt i32 %90, %95
  %98 = and i1 %96, %97
  br i1 %98, label %99, label %121

99:                                               ; preds = %94, %74, %59
  %100 = load i32, ptr %32, align 4, !tbaa !222
  %101 = getelementptr inbounds %struct._exon_t, ptr %51, i64 0, i32 5
  %102 = load i32, ptr %101, align 4, !tbaa !222
  %103 = icmp ult i32 %100, %102
  br i1 %103, label %121, label %104

104:                                              ; preds = %99
  %105 = load i32, ptr %29, align 4, !tbaa !44
  %106 = sub i32 %52, %105
  %107 = tail call i32 @llvm.abs.i32(i32 %106, i1 true)
  %108 = lshr i32 %107, 15
  %109 = load i32, ptr %44, align 4, !tbaa !45
  %110 = sub i32 %56, %109
  %111 = tail call i32 @llvm.abs.i32(i32 %110, i1 true)
  %112 = lshr i32 %111, 15
  %113 = add nuw nsw i32 %112, %108
  %114 = icmp ult i32 %113, %100
  br i1 %114, label %115, label %121

115:                                              ; preds = %104
  %116 = sub i32 %100, %113
  store i32 %116, ptr %101, align 4, !tbaa !222
  %117 = getelementptr inbounds %struct._exon_t, ptr %51, i64 0, i32 6
  %118 = load i64, ptr %117, align 4
  %119 = and i64 %118, -4294967293
  %120 = or i64 %119, %46
  store i64 %120, ptr %117, align 4
  br label %121

121:                                              ; preds = %115, %104, %99, %94, %87, %83, %80, %79, %74, %67, %63, %60
  %122 = add nuw nsw i64 %48, 1
  %123 = icmp ult i64 %122, %7
  br i1 %123, label %47, label %19, !llvm.loop !252

124:                                              ; preds = %19, %3
  %125 = phi i32 [ -1, %3 ], [ %38, %19 ]
  ret i32 %125
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
  %14 = load i32, ptr %7, align 8, !tbaa !37
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %49, label %16

16:                                               ; preds = %9
  %17 = load ptr, ptr %2, align 8, !tbaa !16
  %18 = add i32 %14, -1
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds ptr, ptr %17, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !7
  br i1 %8, label %22, label %49

22:                                               ; preds = %16
  %23 = load i32, ptr %21, align 4, !tbaa !44
  %24 = getelementptr inbounds %struct._exon_t, ptr %13, i64 0, i32 2
  %25 = load i32, ptr %24, align 4, !tbaa !39
  %26 = add i32 %25, 30
  %27 = icmp ult i32 %23, %26
  br i1 %27, label %28, label %49

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct._exon_t, ptr %21, i64 0, i32 1
  %30 = load i32, ptr %29, align 4, !tbaa !45
  %31 = getelementptr inbounds %struct._exon_t, ptr %13, i64 0, i32 3
  %32 = load i32, ptr %31, align 4, !tbaa !107
  %33 = add i32 %32, -1
  %34 = icmp ugt i32 %30, %33
  br i1 %34, label %35, label %49

35:                                               ; preds = %28
  %36 = getelementptr inbounds %struct._exon_t, ptr %21, i64 0, i32 2
  %37 = load i32, ptr %36, align 4, !tbaa !39
  %38 = tail call i32 @llvm.umax.i32(i32 %37, i32 %25)
  store i32 %38, ptr %36, align 4, !tbaa !39
  %39 = getelementptr inbounds %struct._exon_t, ptr %21, i64 0, i32 3
  %40 = load i32, ptr %39, align 4, !tbaa !107
  %41 = tail call i32 @llvm.umax.i32(i32 %40, i32 %32)
  store i32 %41, ptr %39, align 4, !tbaa !107
  %42 = load i32, ptr %13, align 4, !tbaa !44
  %43 = tail call i32 @llvm.umin.i32(i32 %23, i32 %42)
  store i32 %43, ptr %21, align 4, !tbaa !44
  %44 = getelementptr inbounds %struct._exon_t, ptr %13, i64 0, i32 1
  %45 = load i32, ptr %44, align 4, !tbaa !45
  %46 = tail call i32 @llvm.umin.i32(i32 %30, i32 %45)
  store i32 %46, ptr %29, align 4, !tbaa !45
  %47 = getelementptr inbounds %struct._exon_t, ptr %13, i64 0, i32 6
  %48 = load i64, ptr %47, align 4
  tail call void @free(ptr noundef nonnull %13) #33
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
  %60 = load i32, ptr %59, align 8, !tbaa !37
  %61 = icmp ult i32 %60, 2
  br i1 %61, label %79, label %62

62:                                               ; preds = %58
  %63 = add i32 %60, -1
  br label %64

64:                                               ; preds = %64, %62
  %65 = phi i64 [ 0, %62 ], [ %75, %64 ]
  %66 = phi i32 [ %63, %62 ], [ %76, %64 ]
  %67 = load ptr, ptr %2, align 8, !tbaa !16
  %68 = getelementptr inbounds ptr, ptr %67, i64 %65
  %69 = load ptr, ptr %68, align 8, !tbaa !7
  %70 = zext i32 %66 to i64
  %71 = getelementptr inbounds ptr, ptr %67, i64 %70
  %72 = load ptr, ptr %71, align 8, !tbaa !7
  store ptr %72, ptr %68, align 8, !tbaa !7
  %73 = load ptr, ptr %2, align 8, !tbaa !16
  %74 = getelementptr inbounds ptr, ptr %73, i64 %70
  store ptr %69, ptr %74, align 8, !tbaa !7
  %75 = add nuw nsw i64 %65, 1
  %76 = add i32 %66, -1
  %77 = zext i32 %76 to i64
  %78 = icmp ult i64 %75, %77
  br i1 %78, label %64, label %79, !llvm.loop !253

79:                                               ; preds = %64, %58
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @init_col(ptr nocapture noundef writeonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct._collec_t, ptr %0, i64 0, i32 2
  store i32 %1, ptr %3, align 4, !tbaa !132
  %4 = getelementptr inbounds %struct._collec_t, ptr %0, i64 0, i32 1
  store i32 0, ptr %4, align 8, !tbaa !37
  %5 = icmp eq i32 %1, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = zext i32 %1 to i64
  %8 = shl nuw nsw i64 %7, 3
  %9 = tail call ptr @xmalloc(i64 noundef %8) #33
  br label %10

10:                                               ; preds = %6, %2
  %11 = phi ptr [ %9, %6 ], [ null, %2 ]
  store ptr %11, ptr %0, align 8, !tbaa !16
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @init_hash_env(ptr nocapture noundef writeonly %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct._hash_env_t, ptr %0, i64 0, i32 5
  store i32 %1, ptr %5, align 4, !tbaa !135
  %6 = getelementptr inbounds %struct._hash_env_t, ptr %0, i64 0, i32 1
  store ptr %2, ptr %6, align 8, !tbaa !133
  %7 = getelementptr inbounds %struct._hash_env_t, ptr %0, i64 0, i32 2
  store i32 %3, ptr %7, align 8, !tbaa !130
  %8 = shl i32 %1, 1
  %9 = add i32 %8, -2
  %10 = shl nsw i32 -1, %9
  %11 = xor i32 %10, -1
  %12 = getelementptr inbounds %struct._hash_env_t, ptr %0, i64 0, i32 4
  store i32 %11, ptr %12, align 8, !tbaa !136
  %13 = add i32 %3, 1
  %14 = zext i32 %13 to i64
  %15 = shl nuw nsw i64 %14, 2
  %16 = tail call ptr @xmalloc(i64 noundef %15) #33
  %17 = getelementptr inbounds %struct._hash_env_t, ptr %0, i64 0, i32 3
  store ptr %16, ptr %17, align 8, !tbaa !137
  %18 = tail call ptr @xcalloc(i64 noundef 524288, i64 noundef 8) #33
  store ptr %18, ptr %0, align 8, !tbaa !138
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind optsize memory(write, argmem: none, inaccessiblemem: none) uwtable
define internal void @init_encoding() #31 {
  br label %1

1:                                                ; preds = %1, %0
  %2 = phi i64 [ 0, %0 ], [ %4, %1 ]
  %3 = getelementptr inbounds [128 x i32], ptr @encoding, i64 0, i64 %2
  store <4 x i32> <i32 4, i32 4, i32 4, i32 4>, ptr %3, align 16, !tbaa !19
  %4 = add nuw i64 %2, 4
  %5 = icmp eq i64 %4, 128
  br i1 %5, label %6, label %1, !llvm.loop !254

6:                                                ; preds = %1
  store i32 0, ptr getelementptr inbounds ([128 x i32], ptr @encoding, i64 0, i64 65), align 4, !tbaa !19
  store i32 1, ptr getelementptr inbounds ([128 x i32], ptr @encoding, i64 0, i64 67), align 4, !tbaa !19
  store i32 2, ptr getelementptr inbounds ([128 x i32], ptr @encoding, i64 0, i64 71), align 4, !tbaa !19
  store i32 3, ptr getelementptr inbounds ([128 x i32], ptr @encoding, i64 0, i64 84), align 16, !tbaa !19
  ret void
}

; Function Attrs: nofree nounwind optsize uwtable
define internal void @print_exons(ptr nocapture noundef readonly %0, i32 noundef %1) #5 {
  %3 = getelementptr inbounds %struct._collec_t, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !37
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
  %14 = load ptr, ptr %0, align 8, !tbaa !16
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
  %24 = load i32, ptr %16, align 4, !tbaa !44
  %25 = load i32, ptr getelementptr inbounds (%struct._options_t, ptr @options, i64 0, i32 15), align 4, !tbaa !41
  %26 = add i32 %25, %24
  %27 = getelementptr inbounds %struct._exon_t, ptr %16, i64 0, i32 2
  %28 = load i32, ptr %27, align 4, !tbaa !39
  %29 = add i32 %28, %25
  %30 = getelementptr inbounds %struct._exon_t, ptr %16, i64 0, i32 1
  %31 = load i32, ptr %30, align 4, !tbaa !45
  %32 = getelementptr inbounds %struct._exon_t, ptr %16, i64 0, i32 3
  %33 = load i32, ptr %32, align 4, !tbaa !107
  %34 = getelementptr inbounds %struct._exon_t, ptr %16, i64 0, i32 4
  %35 = load i32, ptr %34, align 4, !tbaa !206
  %36 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.53, i32 noundef %26, i32 noundef %29, i32 noundef %31, i32 noundef %33, i32 noundef %35) #35
  br label %57

37:                                               ; preds = %17
  %38 = load i32, ptr %16, align 4, !tbaa !44
  %39 = load i32, ptr getelementptr inbounds (%struct._options_t, ptr @options, i64 0, i32 15), align 4, !tbaa !41
  %40 = add i32 %39, %38
  %41 = getelementptr inbounds %struct._exon_t, ptr %16, i64 0, i32 2
  %42 = load i32, ptr %41, align 4, !tbaa !39
  %43 = add i32 %42, %39
  %44 = getelementptr inbounds %struct._exon_t, ptr %16, i64 0, i32 1
  %45 = load i32, ptr %44, align 4, !tbaa !45
  %46 = getelementptr inbounds %struct._exon_t, ptr %16, i64 0, i32 3
  %47 = load i32, ptr %46, align 4, !tbaa !107
  %48 = getelementptr inbounds %struct._exon_t, ptr %16, i64 0, i32 4
  %49 = load i32, ptr %48, align 4, !tbaa !206
  %50 = load ptr, ptr getelementptr inbounds (%struct._options_t, ptr @options, i64 0, i32 1), align 8, !tbaa !73
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
  br i1 %59, label %60, label %12, !llvm.loop !255

60:                                               ; preds = %57, %2
  %61 = phi i64 [ 0, %2 ], [ %11, %57 ]
  %62 = load ptr, ptr %0, align 8, !tbaa !16
  %63 = getelementptr inbounds ptr, ptr %62, i64 %61
  %64 = load ptr, ptr %63, align 8, !tbaa !7
  %65 = load i32, ptr %64, align 4, !tbaa !44
  %66 = load i32, ptr getelementptr inbounds (%struct._options_t, ptr @options, i64 0, i32 15), align 4, !tbaa !41
  %67 = add i32 %66, %65
  %68 = getelementptr inbounds %struct._exon_t, ptr %64, i64 0, i32 2
  %69 = load i32, ptr %68, align 4, !tbaa !39
  %70 = add i32 %69, %66
  %71 = getelementptr inbounds %struct._exon_t, ptr %64, i64 0, i32 1
  %72 = load i32, ptr %71, align 4, !tbaa !45
  %73 = getelementptr inbounds %struct._exon_t, ptr %64, i64 0, i32 3
  %74 = load i32, ptr %73, align 4, !tbaa !107
  %75 = getelementptr inbounds %struct._exon_t, ptr %64, i64 0, i32 4
  %76 = load i32, ptr %75, align 4, !tbaa !206
  %77 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4.55, i32 noundef %67, i32 noundef %70, i32 noundef %72, i32 noundef %74, i32 noundef %76) #35
  ret void
}

attributes #0 = { nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { nofree nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noreturn nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn }
attributes #11 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { noreturn nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nosync nounwind optsize willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nounwind optsize willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree nounwind optsize willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #21 = { nofree optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nofree norecurse nosync nounwind optsize memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nofree nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nofree nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { nofree nosync nounwind optsize memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { nofree nounwind willreturn memory(argmem: read) }
attributes #27 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { mustprogress nofree norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { nofree nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { nofree norecurse nosync nounwind optsize memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #32 = { nounwind }
attributes #33 = { nounwind optsize }
attributes #34 = { cold }
attributes #35 = { optsize }
attributes #36 = { cold optsize }
attributes #37 = { noreturn nounwind optsize }
attributes #38 = { nounwind optsize willreturn memory(read) }
attributes #39 = { nounwind optsize allocsize(0) }
attributes #40 = { nounwind optsize willreturn memory(none) }
attributes #41 = { noreturn optsize }
attributes #42 = { nounwind optsize allocsize(0,1) }
attributes #43 = { nounwind optsize allocsize(1) }

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
!11 = !{!12, !9, i64 12}
!12 = !{!"_edit_script", !8, i64 0, !13, i64 8, !9, i64 12}
!13 = !{!"int", !9, i64 0}
!14 = !{!12, !13, i64 8}
!15 = !{!12, !8, i64 0}
!16 = !{!9, !9, i64 0}
!17 = distinct !{!17, !18}
!18 = !{!"llvm.loop.mustprogress"}
!19 = !{!13, !13, i64 0}
!20 = distinct !{!20, !18}
!21 = distinct !{!21, !18}
!22 = distinct !{!22, !18}
!23 = distinct !{!23, !18}
!24 = distinct !{!24, !18}
!25 = distinct !{!25, !18}
!26 = distinct !{!26, !18}
!27 = distinct !{!27, !18}
!28 = distinct !{!28, !18}
!29 = distinct !{!29, !18}
!30 = distinct !{!30, !18}
!31 = distinct !{!31, !18}
!32 = distinct !{!32, !18}
!33 = distinct !{!33, !18}
!34 = distinct !{!34, !18}
!35 = distinct !{!35, !18}
!36 = distinct !{!36, !18}
!37 = !{!38, !13, i64 8}
!38 = !{!"_collec_t", !9, i64 0, !13, i64 8, !13, i64 12}
!39 = !{!40, !13, i64 8}
!40 = !{!"_exon_t", !13, i64 0, !13, i64 4, !13, i64 8, !13, i64 12, !13, i64 16, !13, i64 20, !13, i64 24, !13, i64 24, !13, i64 24, !13, i64 28, !13, i64 28, !13, i64 31}
!41 = !{!42, !13, i64 68}
!42 = !{!"_options_t", !8, i64 0, !8, i64 8, !13, i64 16, !13, i64 20, !13, i64 24, !13, i64 28, !13, i64 32, !13, i64 36, !13, i64 40, !13, i64 44, !13, i64 48, !13, i64 52, !13, i64 56, !13, i64 60, !13, i64 64, !13, i64 68, !13, i64 72, !13, i64 76}
!43 = distinct !{!43, !18}
!44 = !{!40, !13, i64 0}
!45 = !{!40, !13, i64 4}
!46 = distinct !{!46, !18}
!47 = distinct !{!47, !18}
!48 = distinct !{!48, !18}
!49 = distinct !{!49, !18}
!50 = !{!42, !8, i64 0}
!51 = !{!42, !13, i64 16}
!52 = !{!42, !13, i64 56}
!53 = !{!42, !13, i64 60}
!54 = !{!42, !13, i64 64}
!55 = !{!42, !13, i64 72}
!56 = !{!42, !13, i64 76}
!57 = !{!42, !13, i64 20}
!58 = !{!42, !13, i64 24}
!59 = !{!42, !13, i64 28}
!60 = !{!42, !13, i64 32}
!61 = !{!42, !13, i64 36}
!62 = !{!42, !13, i64 40}
!63 = distinct !{!63, !18}
!64 = !{!42, !13, i64 44}
!65 = !{!42, !13, i64 48}
!66 = !{!42, !13, i64 52}
!67 = !{i32 -1, i32 1}
!68 = !{!69, !8, i64 8}
!69 = !{!"_seq_t", !8, i64 0, !8, i64 8, !8, i64 16, !70, i64 24, !13, i64 4144, !13, i64 4148, !13, i64 4152, !13, i64 4156}
!70 = !{!"_read_buf_t", !8, i64 0, !13, i64 8, !13, i64 12, !13, i64 16, !9, i64 20}
!71 = !{!69, !8, i64 16}
!72 = !{!69, !13, i64 4148}
!73 = !{!42, !8, i64 8}
!74 = distinct !{!74, !18}
!75 = distinct !{!75, !18}
!76 = distinct !{!76, !18}
!77 = !{!78, !13, i64 36}
!78 = !{!"_result_t", !8, i64 0, !38, i64 8, !13, i64 24, !13, i64 28, !13, i64 32, !79, i64 36}
!79 = !{!"_sim4_stats", !13, i64 0, !13, i64 4, !13, i64 8}
!80 = distinct !{!80, !18}
!81 = distinct !{!81, !18}
!82 = distinct !{!82, !18}
!83 = distinct !{!83, !18}
!84 = distinct !{!84, !18}
!85 = distinct !{!85, !18}
!86 = distinct !{!86, !18}
!87 = !{!69, !8, i64 0}
!88 = !{!70, !8, i64 0}
!89 = !{!70, !13, i64 8}
!90 = !{!70, !13, i64 12}
!91 = !{!70, !13, i64 16}
!92 = !{!69, !13, i64 4144}
!93 = !{!69, !13, i64 4152}
!94 = !{!69, !13, i64 4156}
!95 = !{!69, !13, i64 36}
!96 = !{!69, !8, i64 24}
!97 = distinct !{!97, !18}
!98 = !{!99, !99, i64 0}
!99 = !{!"short", !9, i64 0}
!100 = distinct !{!100, !18}
!101 = distinct !{!101, !18}
!102 = distinct !{!102, !18}
!103 = distinct !{!103, !18}
!104 = distinct !{!104, !18}
!105 = !{!78, !13, i64 32}
!106 = !{!79, !13, i64 4}
!107 = !{!40, !13, i64 12}
!108 = distinct !{!108, !18}
!109 = distinct !{!109, !18}
!110 = distinct !{!110, !18}
!111 = !{!79, !13, i64 8}
!112 = distinct !{!112, !18}
!113 = distinct !{!113, !18}
!114 = distinct !{!114, !18}
!115 = !{!78, !13, i64 16}
!116 = distinct !{!116, !18}
!117 = !{!78, !8, i64 0}
!118 = !{!119, !8, i64 0}
!119 = !{!"_edit_script_list", !8, i64 0, !8, i64 8, !13, i64 16, !13, i64 20, !13, i64 24, !13, i64 28, !13, i64 32}
!120 = !{!119, !13, i64 28}
!121 = !{!119, !8, i64 8}
!122 = !{!119, !13, i64 16}
!123 = !{!119, !13, i64 20}
!124 = !{!119, !13, i64 24}
!125 = distinct !{!125, !18}
!126 = !{!127, !127, i64 0}
!127 = !{!"long", !9, i64 0}
!128 = distinct !{!128, !18}
!129 = distinct !{!129, !18}
!130 = !{!131, !13, i64 16}
!131 = !{!"_hash_env_t", !8, i64 0, !8, i64 8, !13, i64 16, !8, i64 24, !13, i64 32, !13, i64 36}
!132 = !{!38, !13, i64 12}
!133 = !{!131, !8, i64 8}
!134 = !{!78, !13, i64 24}
!135 = !{!131, !13, i64 36}
!136 = !{!131, !13, i64 32}
!137 = !{!131, !8, i64 24}
!138 = !{!131, !8, i64 0}
!139 = distinct !{!139, !18}
!140 = distinct !{!140, !18}
!141 = !{i32 0, i32 2}
!142 = distinct !{!142, !18}
!143 = distinct !{!143, !18}
!144 = distinct !{!144, !18}
!145 = distinct !{!145, !18, !146, !147}
!146 = !{!"llvm.loop.isvectorized", i32 1}
!147 = !{!"llvm.loop.unroll.runtime.disable"}
!148 = distinct !{!148, !18}
!149 = distinct !{!149, !18}
!150 = distinct !{!150, !18}
!151 = distinct !{!151, !18}
!152 = distinct !{!152, !18}
!153 = distinct !{!153, !18}
!154 = distinct !{!154, !18}
!155 = !{!78, !13, i64 28}
!156 = distinct !{!156, !18}
!157 = distinct !{!157, !18}
!158 = distinct !{!158, !18}
!159 = distinct !{!159, !18}
!160 = distinct !{!160, !18}
!161 = distinct !{!161, !18}
!162 = distinct !{!162, !18}
!163 = distinct !{!163, !18}
!164 = distinct !{!164, !18}
!165 = distinct !{!165, !18}
!166 = distinct !{!166, !18}
!167 = distinct !{!167, !18}
!168 = distinct !{!168, !18}
!169 = distinct !{!169, !18}
!170 = distinct !{!170, !18}
!171 = distinct !{!171, !18}
!172 = distinct !{!172, !18}
!173 = distinct !{!173, !18}
!174 = distinct !{!174, !18}
!175 = distinct !{!175, !18}
!176 = distinct !{!176, !18}
!177 = distinct !{!177, !18}
!178 = distinct !{!178, !18}
!179 = distinct !{!179, !18}
!180 = distinct !{!180, !18}
!181 = distinct !{!181, !18}
!182 = distinct !{!182, !18}
!183 = !{!184, !13, i64 0}
!184 = !{!"_splice_score_t", !13, i64 0, !13, i64 4, !13, i64 8, !13, i64 12, !13, i64 16, !13, i64 20, !13, i64 24}
!185 = !{!184, !13, i64 4}
!186 = !{!184, !13, i64 8}
!187 = !{!184, !13, i64 24}
!188 = !{!184, !13, i64 12}
!189 = distinct !{!189, !18}
!190 = distinct !{!190, !18}
!191 = distinct !{!191, !18}
!192 = distinct !{!192, !18}
!193 = !{i64 0, i64 4, !19, i64 4, i64 4, !19, i64 8, i64 4, !19, i64 12, i64 4, !19}
!194 = !{i64 0, i64 4, !19, i64 4, i64 4, !19}
!195 = !{i64 0, i64 4, !19}
!196 = distinct !{!196, !18}
!197 = distinct !{!197, !18}
!198 = !{i64 0, i64 4, !19, i64 4, i64 4, !19, i64 8, i64 4, !19, i64 12, i64 4, !19, i64 16, i64 4, !19, i64 20, i64 4, !19, i64 24, i64 4, !19}
!199 = !{i64 0, i64 4, !19, i64 4, i64 4, !19, i64 8, i64 4, !19, i64 12, i64 4, !19, i64 16, i64 4, !19, i64 20, i64 4, !19}
!200 = !{i64 0, i64 4, !19, i64 4, i64 4, !19, i64 8, i64 4, !19, i64 12, i64 4, !19, i64 16, i64 4, !19}
!201 = distinct !{!201, !18}
!202 = distinct !{!202, !18}
!203 = !{!119, !13, i64 32}
!204 = distinct !{!204, !18}
!205 = distinct !{!205, !18}
!206 = !{!40, !13, i64 16}
!207 = distinct !{!207, !18}
!208 = distinct !{!208, !18}
!209 = !{!210, !13, i64 0}
!210 = !{!"_hash_node_t", !13, i64 0, !13, i64 4}
!211 = distinct !{!211, !18}
!212 = distinct !{!212, !18}
!213 = distinct !{!213, !18}
!214 = distinct !{!214, !18}
!215 = distinct !{!215, !18}
!216 = distinct !{!216, !18}
!217 = distinct !{!217, !18}
!218 = distinct !{!218, !18}
!219 = distinct !{!219, !18}
!220 = distinct !{!220, !18}
!221 = distinct !{!221, !18}
!222 = !{!40, !13, i64 20}
!223 = distinct !{!223, !18}
!224 = distinct !{!224, !18}
!225 = distinct !{!225, !18}
!226 = distinct !{!226, !18}
!227 = distinct !{!227, !18}
!228 = distinct !{!228, !18}
!229 = distinct !{!229, !18}
!230 = distinct !{!230, !18}
!231 = distinct !{!231, !18}
!232 = !{!78, !13, i64 40}
!233 = distinct !{!233, !18}
!234 = distinct !{!234, !18}
!235 = !{!78, !13, i64 44}
!236 = distinct !{!236, !18}
!237 = distinct !{!237, !18}
!238 = !{!210, !13, i64 4}
!239 = distinct !{!239, !18}
!240 = distinct !{!240, !18}
!241 = distinct !{!241, !18}
!242 = distinct !{!242, !18}
!243 = !{!184, !13, i64 16}
!244 = !{!184, !13, i64 20}
!245 = distinct !{!245, !18}
!246 = distinct !{!246, !18}
!247 = distinct !{!247, !18}
!248 = distinct !{!248, !18}
!249 = distinct !{!249, !18}
!250 = distinct !{!250, !18}
!251 = distinct !{!251, !18}
!252 = distinct !{!252, !18}
!253 = distinct !{!253, !18}
!254 = distinct !{!254, !18, !146, !147}
!255 = distinct !{!255, !18}
