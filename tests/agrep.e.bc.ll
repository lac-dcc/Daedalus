; ModuleID = 'agrep.e.bc.ll'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.pnode = type { i32, ptr }
%struct.snode = type { ptr, i32, ptr }
%struct.term = type { i32, [32 x i8] }
%struct.rnode = type { i16, %union.anon, i16, ptr, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr }
%struct.anon.3 = type { i16, ptr }
%struct.anon.1 = type { i32, i16, %union.anon.0 }
%union.anon.0 = type { ptr }
%struct.anon.2 = type { i8, i8 }

@.str = private unnamed_addr constant [75 x i8] c"%s: the maximum number of erorrs allowed for full regular expression is 4\0A\00", align 1
@.str.3 = private unnamed_addr constant [63 x i8] c"%s: WARNING!!! -B option ignored when -c, -l, -f, or -# is on\0A\00", align 1
@.str.1 = private unnamed_addr constant [66 x i8] c"WARNING!!!  approximate matching is not supported with -f option\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"%s: -f and -n are not compatible\0A\00", align 1
@.str.3.4 = private unnamed_addr constant [34 x i8] c"%s: -f and -d are not compatible\0A\00", align 1
@.str.4 = private unnamed_addr constant [78 x i8] c"WARNING!!! -D#, -I#, or -S# option is ignored for regular expression pattern\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"%s: the error cost cannot be 0\0A\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"%s: -d and -x is not compatible\0A\00", align 1
@.str.2.5 = private unnamed_addr constant [36 x i8] c"mk_followpos: unknown node type %d\0A\00", align 1
@APPROX = internal unnamed_addr global i1 false, align 4
@PAT_FILE = internal unnamed_addr global i1 false, align 4
@CONSTANT = internal unnamed_addr global i1 false, align 4
@old_D_pat = internal global [16 x i8] c"\0A\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@D_pattern = internal global [16 x i8] c"\0A; \00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@NOFILENAME = internal unnamed_addr global i1 false, align 4
@Numfiles = internal unnamed_addr global i32 0, align 4
@.str.8 = private unnamed_addr constant [6 x i8] c"agrep\00", align 1
@I = internal unnamed_addr global i32 0, align 4
@.str.1.15 = private unnamed_addr constant [32 x i8] c"%s: illegal option combination\0A\00", align 1
@.str.4.21 = private unnamed_addr constant [57 x i8] c"%s: the pattern should immediately follow the -e option\0A\00", align 1
@.str.5.24 = private unnamed_addr constant [32 x i8] c"%s: Can't open pattern file %s\0A\00", align 1
@.str.6.25 = private unnamed_addr constant [57 x i8] c"%s: the pattern should immediately follow the -k option\0A\00", align 1
@.str.7 = private unnamed_addr constant [49 x i8] c"%s: -k should be the last option in the command\0A\00", align 1
@LINENUM = internal unnamed_addr global i1 false, align 4
@OUTTAIL = internal unnamed_addr global i1 false, align 4
@BESTMATCH = internal unnamed_addr global i1 false, align 4
@NOPROMPT = internal unnamed_addr global i1 false, align 4
@JUMP = internal unnamed_addr global i1 false, align 4
@S = internal unnamed_addr global i32 0, align 4
@DD = internal unnamed_addr global i32 0, align 4
@FILEOUT = internal unnamed_addr global i1 false, align 4
@.str.8.42 = private unnamed_addr constant [41 x i8] c"%s: the maximum number of errors is %d \0A\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"%s: illegal option  -%c\0A\00", align 1
@.str.10 = private unnamed_addr constant [46 x i8] c"%s: -h and -l options are mutually exclusive\0A\00", align 1
@Textfiles = internal unnamed_addr global ptr null, align 8
@.str.11 = private unnamed_addr constant [60 x i8] c"%s: malloc failure (you probably don't have enough memory)\0A\00", align 1
@.str.12 = private unnamed_addr constant [35 x i8] c"%s: %s: no such file or directory\0A\00", align 1
@SGREP = internal unnamed_addr global i1 false, align 4
@.str.13 = private unnamed_addr constant [53 x i8] c"%s: -l option is not compatible with standard input\0A\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.15 = private unnamed_addr constant [24 x i8] c"%s: can't open file %s\0A\00", align 1
@NOMATCH = internal unnamed_addr global i1 false, align 4
@.str.16 = private unnamed_addr constant [8 x i8] c"%s: %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [25 x i8] c"best match has 1 error, \00", align 1
@.str.18 = private unnamed_addr constant [27 x i8] c"best match has %d errors, \00", align 1
@.str.19 = private unnamed_addr constant [35 x i8] c"there is 1 match, output it? (y/n)\00", align 1
@.str.20 = private unnamed_addr constant [41 x i8] c"there are %d matches, output them? (y/n)\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@EATFIRST = internal unnamed_addr global i1 false, align 4
@TRUNCATE = internal unnamed_addr global i1 false, align 4
@FIRSTOUTPUT = internal unnamed_addr global i1 false, align 4
@FIRST_IN_RE = internal unnamed_addr global i1 false, align 4
@Next = internal global [66000 x i32] zeroinitializer, align 16
@Next1 = internal global [66000 x i32] zeroinitializer, align 16
@buffer = internal global [50177 x i8] zeroinitializer, align 16
@.str.26 = private unnamed_addr constant [5 x i8] c"%d: \00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@.str.27 = private unnamed_addr constant [68 x i8] c"usage: %s [-#cdehiklnpstvwxBDGIS] [-f patternfile] pattern [files]\0A\00", align 1
@.str.28 = private unnamed_addr constant [37 x i8] c"summary of frequently used options:\0A\00", align 1
@.str.29 = private unnamed_addr constant [40 x i8] c"-#: find matches with at most # errors\0A\00", align 1
@.str.30 = private unnamed_addr constant [42 x i8] c"-c: output the number of matched records\0A\00", align 1
@.str.31 = private unnamed_addr constant [29 x i8] c"-d: define record delimiter\0A\00", align 1
@.str.32 = private unnamed_addr constant [30 x i8] c"-h: do not output file names\0A\00", align 1
@.str.33 = private unnamed_addr constant [46 x i8] c"-i: case-insensitive search, e.g., 'a' = 'A'\0A\00", align 1
@.str.34 = private unnamed_addr constant [52 x i8] c"-l: output the names of files that contain a match\0A\00", align 1
@.str.35 = private unnamed_addr constant [45 x i8] c"-n: output record prefixed by record number\0A\00", align 1
@.str.36 = private unnamed_addr constant [48 x i8] c"-v: output those records containing no matches\0A\00", align 1
@.str.37 = private unnamed_addr constant [71 x i8] c"-w: pattern has to match as a word, e.g., 'win' will not match 'wind'\0A\00", align 1
@.str.38 = private unnamed_addr constant [62 x i8] c"-B: best match mode. find the closest matches to the pattern\0A\00", align 1
@.str.39 = private unnamed_addr constant [43 x i8] c"-G: output the files that contain a match\0A\00", align 1
@.str.40 = private unnamed_addr constant [59 x i8] c"%s: size of pattern must be greater than number of errors\0A\00", align 1
@.str.41 = private unnamed_addr constant [65 x i8] c"WARNING!!!  some lines have been truncated in output record #%d\0A\00", align 1
@NO_ERR_MASK = internal unnamed_addr global i32 0, align 4
@Bit = internal unnamed_addr global [33 x i32] zeroinitializer, align 16
@.str.73 = private unnamed_addr constant [41 x i8] c"%s: illegal pattern, unmatched '<', '>'\0A\00", align 1
@.str.1.74 = private unnamed_addr constant [41 x i8] c"%s: illegal pattern, unmatched '[', ']'\0A\00", align 1
@AND = internal unnamed_addr global i1 false, align 4
@.str.2.75 = private unnamed_addr constant [18 x i8] c"illegal pattern \0A\00", align 1
@Init = internal unnamed_addr global [8 x i32] zeroinitializer, align 16
@Init1 = internal unnamed_addr global i32 0, align 4
@D_endpos = internal unnamed_addr global i32 0, align 4
@LONG = internal unnamed_addr global i32 0, align 4
@SHORT = internal unnamed_addr global i32 0, align 4
@p_size = internal unnamed_addr global i32 0, align 4
@total_line = internal unnamed_addr global i32 0, align 4
@HASH = internal unnamed_addr global [8192 x ptr] zeroinitializer, align 16
@tr = internal unnamed_addr global [256 x i8] zeroinitializer, align 16
@patt = internal unnamed_addr global [30000 x ptr] zeroinitializer, align 16
@pat_len = internal unnamed_addr global [30000 x i8] zeroinitializer, align 16
@INVERSE = internal unnamed_addr global i1 false, align 4
@SHIFT1 = internal unnamed_addr global [4096 x i8] zeroinitializer, align 16
@qt = internal unnamed_addr global ptr null, align 8
@pt = internal unnamed_addr global ptr null, align 8
@pat_spool = internal global [320256 x i8] zeroinitializer, align 16
@buf = internal global [268192 x i8] zeroinitializer, align 16
@.str.2.80 = private unnamed_addr constant [37 x i8] c"%s: maximum pattern file size is %d\0A\00", align 1
@.str.3.81 = private unnamed_addr constant [38 x i8] c"%s: maximum number of patterns is %d\0A\00", align 1
@tr1 = internal unnamed_addr global [256 x i8] zeroinitializer, align 16
@pos_cnt = internal unnamed_addr global i32 0, align 4
@.str.87 = private unnamed_addr constant [33 x i8] c"parse_re: unknown token type %d\0A\00", align 1
@REGEX = internal unnamed_addr global i1 false, align 4
@D_length = internal unnamed_addr global i32 0, align 4
@.str.92 = private unnamed_addr constant [32 x i8] c"%s: delimiter pattern too long\0A\00", align 1
@HEAD = internal unnamed_addr global i1 false, align 4
@RE_ERR = internal unnamed_addr global i1 false, align 4
@TAIL = internal unnamed_addr global i1 false, align 4
@DELIMITER = internal unnamed_addr global i1 false, align 4
@.str.1.93 = private unnamed_addr constant [55 x i8] c"%s: -d or -w option is not supported for this pattern\0A\00", align 1
@.str.2.94 = private unnamed_addr constant [32 x i8] c"%s: illegal regular expression\0A\00", align 1
@table = internal unnamed_addr global [32 x [32 x i32]] zeroinitializer, align 16
@.str.3.95 = private unnamed_addr constant [33 x i8] c"%s: regular expression too long\0A\00", align 1
@TR = internal unnamed_addr global [256 x i8] zeroinitializer, align 16
@NOUPPER = internal unnamed_addr global i1 false, align 4
@WORDBOUND = internal unnamed_addr global i1 false, align 4
@WHOLELINE = internal unnamed_addr global i1 false, align 4
@SILENT = internal unnamed_addr global i1 false, align 4
@COUNT = internal unnamed_addr global i1 false, align 4
@FNAME = internal unnamed_addr global i1 false, align 4
@.str.96 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@CurrentFileName = internal global [256 x i8] zeroinitializer, align 16
@shift_1 = internal unnamed_addr global i32 0, align 4
@SHIFT = internal unnamed_addr global [256 x i8] zeroinitializer, align 16
@num_of_matched = internal unnamed_addr global i32 0, align 4
@FILENAMEONLY = internal unnamed_addr global i1 false, align 4
@MEMBER = internal unnamed_addr global [8192 x i8] zeroinitializer, align 16
@endposition = internal unnamed_addr global i32 0, align 4
@Mask = internal unnamed_addr global [256 x i32] zeroinitializer, align 16
@Hashmask = internal unnamed_addr global i32 0, align 4
@MEMBER_1 = internal unnamed_addr global [65536 x i8] zeroinitializer, align 16
@SHIFT_2 = internal unnamed_addr global [4096 x i8] zeroinitializer, align 16
@char_map = internal unnamed_addr global [256 x i8] zeroinitializer, align 16
@MEMBER_D = internal unnamed_addr global ptr null, align 8
@.str.2.97 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.3.100 = private unnamed_addr constant [22 x i8] c"%s: pattern too long\0A\00", align 1
@Progname = internal global [256 x i8] zeroinitializer, align 16
@DNA = internal unnamed_addr global i1 false, align 4

; Function Attrs: noreturn nounwind optsize uwtable
define dso_local i32 @main(i32 noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca [4097 x i8], align 16
  %4 = alloca %struct.stat, align 8
  %5 = alloca i8, align 1
  %6 = alloca [128 x i8], align 16
  %7 = alloca [128 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #24
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %6) #24
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %7) #24
  store i1 false, ptr @NOUPPER, align 4
  store i1 false, ptr @NOPROMPT, align 4
  store i1 false, ptr @BESTMATCH, align 4
  store i1 false, ptr @FNAME, align 4
  store i1 false, ptr @REGEX, align 4
  store i1 false, ptr @JUMP, align 4
  store i1 false, ptr @SGREP, align 4
  store i1 false, ptr @WHOLELINE, align 4
  store i1 false, ptr @LINENUM, align 4
  store i1 false, ptr @COUNT, align 4
  store i1 false, ptr @OUTTAIL, align 4
  store i1 false, ptr @TRUNCATE, align 4
  store i1 false, ptr @AND, align 4
  store i1 false, ptr @INVERSE, align 4
  store i1 false, ptr @EATFIRST, align 4
  store i1 true, ptr @FIRSTOUTPUT, align 4
  store i1 true, ptr @NOMATCH, align 4
  store i1 true, ptr @FIRST_IN_RE, align 4
  store i32 1, ptr @S, align 4, !tbaa !7
  store i32 1, ptr @DD, align 4, !tbaa !7
  store i32 1, ptr @I, align 4, !tbaa !7
  store i1 true, ptr @TAIL, align 4
  store i1 true, ptr @HEAD, align 4
  store i32 2, ptr @D_length, align 4, !tbaa !7
  store i32 0, ptr @num_of_matched, align 4, !tbaa !7
  store i1 false, ptr @SILENT, align 4
  store i1 false, ptr @RE_ERR, align 4
  store i1 false, ptr @DELIMITER, align 4
  store i1 false, ptr @WORDBOUND, align 4
  store i32 1, ptr getelementptr inbounds ([33 x i32], ptr @Bit, i64 0, i64 32), align 16, !tbaa !7
  br label %8

8:                                                ; preds = %8, %2
  %9 = phi i32 [ 1, %2 ], [ %11, %8 ]
  %10 = phi i64 [ 31, %2 ], [ %13, %8 ]
  %11 = shl i32 %9, 1
  %12 = getelementptr inbounds [33 x i32], ptr @Bit, i64 0, i64 %10
  store i32 %11, ptr %12, align 4, !tbaa !7
  %13 = add nsw i64 %10, -1
  %14 = icmp ugt i64 %10, 1
  br i1 %14, label %8, label %15, !llvm.loop !11

15:                                               ; preds = %8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) @Mask, i8 0, i64 1024, i1 false), !tbaa !7
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(6) @Progname, ptr noundef nonnull align 1 dereferenceable(6) @.str.8, i64 6, i1 false) #25
  %16 = icmp slt i32 %0, 2
  br i1 %16, label %17, label %18

17:                                               ; preds = %15
  tail call fastcc void @usage() #26
  unreachable

18:                                               ; preds = %15
  store i8 0, ptr %6, align 16, !tbaa !13
  %19 = add nsw i32 %0, -1
  br label %20

20:                                               ; preds = %163, %18
  %21 = phi i32 [ %19, %18 ], [ %168, %163 ]
  %22 = phi i32 [ %0, %18 ], [ %167, %163 ]
  %23 = phi i32 [ undef, %18 ], [ %166, %163 ]
  %24 = phi i32 [ 0, %18 ], [ %165, %163 ]
  %25 = phi ptr [ %1, %18 ], [ %164, %163 ]
  %26 = getelementptr inbounds ptr, ptr %25, i64 1
  %27 = load ptr, ptr %26, align 8, !tbaa !14
  %28 = load i8, ptr %27, align 1, !tbaa !13
  %29 = icmp eq i8 %28, 45
  br i1 %29, label %30, label %170

30:                                               ; preds = %20
  %31 = getelementptr inbounds i8, ptr %27, i64 1
  %32 = load i8, ptr %31, align 1, !tbaa !13
  store i8 %32, ptr %5, align 1, !tbaa !13
  %33 = sext i8 %32 to i32
  switch i32 %33, label %146 [
    i32 99, label %34
    i32 115, label %35
    i32 112, label %36
    i32 120, label %37
    i32 76, label %163
    i32 100, label %42
    i32 101, label %77
    i32 102, label %92
    i32 104, label %102
    i32 105, label %103
    i32 107, label %104
    i32 108, label %125
    i32 110, label %126
    i32 118, label %127
    i32 116, label %128
    i32 66, label %129
    i32 119, label %130
    i32 121, label %135
    i32 73, label %136
    i32 83, label %139
    i32 68, label %142
    i32 71, label %145
  ]

34:                                               ; preds = %30
  store i1 true, ptr @COUNT, align 4
  br label %163

35:                                               ; preds = %30
  store i1 true, ptr @SILENT, align 4
  br label %163

36:                                               ; preds = %30
  store i32 0, ptr @I, align 4, !tbaa !7
  br label %163

37:                                               ; preds = %30
  store i1 true, ptr @WHOLELINE, align 4
  %38 = load i1, ptr @WORDBOUND, align 4
  br i1 %38, label %39, label %163

39:                                               ; preds = %37
  %40 = load ptr, ptr @stderr, align 8, !tbaa !14
  %41 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %40, ptr noundef nonnull @.str.1.15, ptr noundef nonnull @Progname) #27
  call void @exit(i32 noundef 2) #28
  unreachable

42:                                               ; preds = %30
  store i1 true, ptr @DELIMITER, align 4
  %43 = icmp ult i32 %22, 3
  br i1 %43, label %44, label %45

44:                                               ; preds = %42
  call fastcc void @usage() #26
  unreachable

45:                                               ; preds = %42
  %46 = getelementptr inbounds i8, ptr %27, i64 2
  %47 = load i8, ptr %46, align 1, !tbaa !13
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %49, label %61

49:                                               ; preds = %45
  %50 = getelementptr inbounds ptr, ptr %25, i64 2
  %51 = load ptr, ptr %50, align 8, !tbaa !14
  %52 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %51) #29
  %53 = trunc i64 %52 to i32
  store i32 %53, ptr @D_length, align 4, !tbaa !7
  %54 = icmp sgt i32 %53, 16
  br i1 %54, label %55, label %58

55:                                               ; preds = %49
  %56 = load ptr, ptr @stderr, align 8, !tbaa !14
  %57 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %56, ptr noundef nonnull @.str.92, ptr noundef nonnull @Progname) #27
  call void @exit(i32 noundef 2) #28
  unreachable

58:                                               ; preds = %49
  store i8 60, ptr @D_pattern, align 16, !tbaa !13
  %59 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) getelementptr inbounds ([16 x i8], ptr @D_pattern, i64 0, i64 1), ptr noundef nonnull dereferenceable(1) %51) #25
  %60 = add nsw i32 %22, -2
  br label %70

61:                                               ; preds = %45
  %62 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %46) #29
  %63 = trunc i64 %62 to i32
  store i32 %63, ptr @D_length, align 4, !tbaa !7
  %64 = icmp sgt i32 %63, 16
  br i1 %64, label %65, label %68

65:                                               ; preds = %61
  %66 = load ptr, ptr @stderr, align 8, !tbaa !14
  %67 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %66, ptr noundef nonnull @.str.92, ptr noundef nonnull @Progname) #27
  call void @exit(i32 noundef 2) #28
  unreachable

68:                                               ; preds = %61
  store i8 60, ptr @D_pattern, align 16, !tbaa !13
  %69 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) getelementptr inbounds ([16 x i8], ptr @D_pattern, i64 0, i64 1), ptr noundef nonnull dereferenceable(1) %46) #25
  br label %70

70:                                               ; preds = %68, %58
  %71 = phi i32 [ %53, %58 ], [ %63, %68 ]
  %72 = phi ptr [ %50, %58 ], [ %26, %68 ]
  %73 = phi i32 [ %60, %58 ], [ %21, %68 ]
  %74 = call i64 @strlen(ptr nonnull dereferenceable(1) @D_pattern)
  %75 = getelementptr inbounds i8, ptr @D_pattern, i64 %74
  store i32 2112318, ptr %75, align 1
  %76 = add nsw i32 %71, 1
  store i32 %76, ptr @D_length, align 4, !tbaa !7
  br label %163

77:                                               ; preds = %30
  %78 = add nsw i32 %22, -2
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %77
  %81 = load ptr, ptr @stderr, align 8, !tbaa !14
  %82 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %81, ptr noundef nonnull @.str.4.21, ptr noundef nonnull @Progname) #27
  call fastcc void @usage() #26
  unreachable

83:                                               ; preds = %77
  %84 = getelementptr inbounds ptr, ptr %25, i64 2
  %85 = load ptr, ptr %84, align 8, !tbaa !14
  %86 = load i8, ptr %85, align 1, !tbaa !13
  %87 = icmp eq i8 %86, 45
  br i1 %87, label %88, label %90

88:                                               ; preds = %83
  store i8 92, ptr %6, align 16, !tbaa !13
  %89 = call ptr @strcat(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(1) %85) #25
  br label %163

90:                                               ; preds = %83
  %91 = call ptr @strcat(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(1) %85) #25
  br label %163

92:                                               ; preds = %30
  store i1 true, ptr @PAT_FILE, align 4
  %93 = getelementptr inbounds ptr, ptr %25, i64 2
  %94 = add nsw i32 %22, -2
  %95 = load ptr, ptr %93, align 8, !tbaa !14
  %96 = call i32 (ptr, i32, ...) @open(ptr noundef %95, i32 noundef 0) #25
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %163

98:                                               ; preds = %92
  %.lcssa20 = phi ptr [ %93, %92 ]
  %99 = load ptr, ptr @stderr, align 8, !tbaa !14
  %100 = load ptr, ptr %.lcssa20, align 8, !tbaa !14
  %101 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %99, ptr noundef nonnull @.str.5.24, ptr noundef nonnull @Progname, ptr noundef %100) #27
  call void @exit(i32 noundef 2) #28
  unreachable

102:                                              ; preds = %30
  store i1 true, ptr @NOFILENAME, align 4
  br label %163

103:                                              ; preds = %30
  store i1 true, ptr @NOUPPER, align 4
  br label %163

104:                                              ; preds = %30
  %105 = add nsw i32 %22, -2
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %104
  %108 = load ptr, ptr @stderr, align 8, !tbaa !14
  %109 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %108, ptr noundef nonnull @.str.6.25, ptr noundef nonnull @Progname) #27
  call fastcc void @usage() #26
  unreachable

110:                                              ; preds = %104
  store i1 true, ptr @CONSTANT, align 4
  %111 = getelementptr inbounds ptr, ptr %25, i64 2
  %112 = load ptr, ptr %111, align 8, !tbaa !14
  %113 = call ptr @strcat(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(1) %112) #25
  %114 = icmp ugt i32 %22, 3
  br i1 %114, label %117, label %115

115:                                              ; preds = %110
  %.lcssa62 = phi i32 [ %22, %110 ]
  %.lcssa49 = phi i32 [ %23, %110 ]
  %.lcssa36 = phi i32 [ %24, %110 ]
  %.lcssa18 = phi ptr [ %111, %110 ]
  %.lcssa16 = phi i32 [ %105, %110 ]
  %116 = add nsw i32 %.lcssa62, -3
  br label %170

117:                                              ; preds = %110
  %118 = getelementptr inbounds ptr, ptr %25, i64 3
  %119 = load ptr, ptr %118, align 8, !tbaa !14
  %120 = load i8, ptr %119, align 1, !tbaa !13
  %121 = icmp eq i8 %120, 45
  br i1 %121, label %122, label %163

122:                                              ; preds = %117
  %123 = load ptr, ptr @stderr, align 8, !tbaa !14
  %124 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %123, ptr noundef nonnull @.str.7, ptr noundef nonnull @Progname) #27
  call void @exit(i32 noundef 2) #28
  unreachable

125:                                              ; preds = %30
  store i1 true, ptr @FILENAMEONLY, align 4
  br label %163

126:                                              ; preds = %30
  store i1 true, ptr @LINENUM, align 4
  br label %163

127:                                              ; preds = %30
  store i1 true, ptr @INVERSE, align 4
  br label %163

128:                                              ; preds = %30
  store i1 true, ptr @OUTTAIL, align 4
  br label %163

129:                                              ; preds = %30
  store i1 true, ptr @BESTMATCH, align 4
  br label %163

130:                                              ; preds = %30
  store i1 true, ptr @WORDBOUND, align 4
  %131 = load i1, ptr @WHOLELINE, align 4
  br i1 %131, label %132, label %163

132:                                              ; preds = %130
  %133 = load ptr, ptr @stderr, align 8, !tbaa !14
  %134 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %133, ptr noundef nonnull @.str.1.15, ptr noundef nonnull @Progname) #27
  call void @exit(i32 noundef 2) #28
  unreachable

135:                                              ; preds = %30
  store i1 true, ptr @NOPROMPT, align 4
  br label %163

136:                                              ; preds = %30
  %137 = getelementptr inbounds i8, ptr %27, i64 2
  %138 = call i32 @atoi(ptr nocapture noundef nonnull %137) #29
  store i32 %138, ptr @I, align 4, !tbaa !7
  store i1 true, ptr @JUMP, align 4
  br label %163

139:                                              ; preds = %30
  %140 = getelementptr inbounds i8, ptr %27, i64 2
  %141 = call i32 @atoi(ptr nocapture noundef nonnull %140) #29
  store i32 %141, ptr @S, align 4, !tbaa !7
  store i1 true, ptr @JUMP, align 4
  br label %163

142:                                              ; preds = %30
  %143 = getelementptr inbounds i8, ptr %27, i64 2
  %144 = call i32 @atoi(ptr nocapture noundef nonnull %143) #29
  store i32 %144, ptr @DD, align 4, !tbaa !7
  store i1 true, ptr @JUMP, align 4
  br label %163

145:                                              ; preds = %30
  store i1 true, ptr @FILEOUT, align 4
  store i1 true, ptr @COUNT, align 4
  br label %163

146:                                              ; preds = %30
  %147 = tail call ptr @__ctype_b_loc() #30
  %148 = load ptr, ptr %147, align 8, !tbaa !14
  %149 = sext i8 %32 to i64
  %150 = getelementptr inbounds i16, ptr %148, i64 %149
  %151 = load i16, ptr %150, align 2, !tbaa !16
  %152 = and i16 %151, 2048
  %153 = icmp eq i16 %152, 0
  br i1 %153, label %160, label %154

154:                                              ; preds = %146
  store i1 true, ptr @APPROX, align 4
  %155 = call i32 @atoi(ptr nocapture noundef nonnull %31) #29
  %156 = icmp sgt i32 %155, 8
  br i1 %156, label %157, label %163

157:                                              ; preds = %154
  %158 = load ptr, ptr @stderr, align 8, !tbaa !14
  %159 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %158, ptr noundef nonnull @.str.8.42, ptr noundef nonnull @Progname, i32 noundef 8) #27
  call void @exit(i32 noundef 2) #28
  unreachable

160:                                              ; preds = %146
  %.lcssa31 = phi i32 [ %33, %146 ]
  %161 = load ptr, ptr @stderr, align 8, !tbaa !14
  %162 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %161, ptr noundef nonnull @.str.9, ptr noundef nonnull @Progname, i32 noundef %.lcssa31) #27
  call fastcc void @usage() #26
  unreachable

163:                                              ; preds = %154, %145, %142, %139, %136, %135, %130, %129, %128, %127, %126, %125, %117, %103, %102, %92, %90, %88, %70, %37, %36, %35, %34, %30
  %164 = phi ptr [ %26, %154 ], [ %26, %145 ], [ %26, %142 ], [ %26, %139 ], [ %26, %136 ], [ %26, %135 ], [ %26, %130 ], [ %26, %129 ], [ %26, %128 ], [ %26, %127 ], [ %26, %126 ], [ %26, %125 ], [ %111, %117 ], [ %26, %103 ], [ %26, %102 ], [ %93, %92 ], [ %84, %88 ], [ %84, %90 ], [ %72, %70 ], [ %26, %30 ], [ %26, %37 ], [ %26, %36 ], [ %26, %35 ], [ %26, %34 ]
  %165 = phi i32 [ %155, %154 ], [ %24, %145 ], [ %24, %142 ], [ %24, %139 ], [ %24, %136 ], [ %24, %135 ], [ %24, %130 ], [ %24, %129 ], [ %24, %128 ], [ %24, %127 ], [ %24, %126 ], [ %24, %125 ], [ %24, %117 ], [ %24, %103 ], [ %24, %102 ], [ %24, %92 ], [ %24, %88 ], [ %24, %90 ], [ %24, %70 ], [ %24, %30 ], [ %24, %37 ], [ %24, %36 ], [ %24, %35 ], [ %24, %34 ]
  %166 = phi i32 [ %23, %154 ], [ %23, %145 ], [ %23, %142 ], [ %23, %139 ], [ %23, %136 ], [ %23, %135 ], [ %23, %130 ], [ %23, %129 ], [ %23, %128 ], [ %23, %127 ], [ %23, %126 ], [ %23, %125 ], [ %23, %117 ], [ %23, %103 ], [ %23, %102 ], [ %96, %92 ], [ %23, %88 ], [ %23, %90 ], [ %23, %70 ], [ %23, %30 ], [ %23, %37 ], [ %23, %36 ], [ %23, %35 ], [ %23, %34 ]
  %167 = phi i32 [ %21, %154 ], [ %21, %145 ], [ %21, %142 ], [ %21, %139 ], [ %21, %136 ], [ %21, %135 ], [ %21, %130 ], [ %21, %129 ], [ %21, %128 ], [ %21, %127 ], [ %21, %126 ], [ %21, %125 ], [ %105, %117 ], [ %21, %103 ], [ %21, %102 ], [ %94, %92 ], [ %78, %88 ], [ %78, %90 ], [ %73, %70 ], [ %21, %30 ], [ %21, %37 ], [ %21, %36 ], [ %21, %35 ], [ %21, %34 ]
  %168 = add nsw i32 %167, -1
  %169 = icmp sgt i32 %167, 1
  br i1 %169, label %20, label %170, !llvm.loop !18

170:                                              ; preds = %163, %115, %20
  %171 = phi i32 [ %.lcssa36, %115 ], [ %24, %20 ], [ %165, %163 ]
  %172 = phi i32 [ %.lcssa49, %115 ], [ %23, %20 ], [ %166, %163 ]
  %173 = phi i32 [ %.lcssa16, %115 ], [ %22, %20 ], [ %167, %163 ]
  %174 = phi i32 [ %116, %115 ], [ %21, %20 ], [ %168, %163 ]
  %175 = phi ptr [ %.lcssa18, %115 ], [ %26, %20 ], [ %164, %163 ]
  %176 = load i1, ptr @FILENAMEONLY, align 4
  %177 = load i1, ptr @NOFILENAME, align 4
  %178 = select i1 %176, i1 %177, i1 false
  br i1 %178, label %179, label %182

179:                                              ; preds = %170
  %180 = load ptr, ptr @stderr, align 8, !tbaa !14
  %181 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %180, ptr noundef nonnull @.str.10, ptr noundef nonnull @Progname) #27
  br label %182

182:                                              ; preds = %179, %170
  %183 = load i1, ptr @COUNT, align 4
  br i1 %183, label %184, label %191

184:                                              ; preds = %182
  %185 = load i1, ptr @FILENAMEONLY, align 4
  %186 = load i1, ptr @NOFILENAME, align 4
  %187 = select i1 %185, i1 true, i1 %186
  br i1 %187, label %188, label %191

188:                                              ; preds = %184
  store i1 false, ptr @FILENAMEONLY, align 4
  %189 = load i1, ptr @FILEOUT, align 4
  br i1 %189, label %191, label %190

190:                                              ; preds = %188
  store i1 false, ptr @NOFILENAME, align 4
  br label %191

191:                                              ; preds = %190, %188, %184, %182
  %192 = load i1, ptr @PAT_FILE, align 4
  %193 = load i8, ptr %6, align 16
  %194 = icmp ne i8 %193, 0
  %195 = select i1 %192, i1 true, i1 %194
  br i1 %195, label %204, label %196

196:                                              ; preds = %191
  %197 = icmp eq i32 %174, 0
  br i1 %197, label %198, label %199

198:                                              ; preds = %196
  call fastcc void @usage() #26
  unreachable

199:                                              ; preds = %196
  %200 = load ptr, ptr %175, align 8, !tbaa !14
  %201 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(1) %200) #25
  %202 = add nsw i32 %173, -2
  %203 = getelementptr inbounds ptr, ptr %175, i64 1
  br label %204

204:                                              ; preds = %199, %191
  %205 = phi ptr [ %203, %199 ], [ %175, %191 ]
  %206 = phi i32 [ %202, %199 ], [ %174, %191 ]
  store i32 0, ptr @Numfiles, align 4, !tbaa !7
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %253, label %208

208:                                              ; preds = %204
  %209 = sext i32 %206 to i64
  %210 = shl nsw i64 %209, 3
  %211 = call noalias ptr @malloc(i64 noundef %210) #31
  store ptr %211, ptr @Textfiles, align 8, !tbaa !14
  %212 = icmp eq ptr %211, null
  br i1 %212, label %213, label %216

213:                                              ; preds = %208
  %214 = load ptr, ptr @stderr, align 8, !tbaa !14
  %215 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %214, ptr noundef nonnull @.str.11, ptr noundef nonnull @Progname) #27
  call void @exit(i32 noundef 2) #28
  unreachable

216:                                              ; preds = %248, %208
  %217 = phi i32 [ %219, %248 ], [ %206, %208 ]
  %218 = phi ptr [ %249, %248 ], [ %205, %208 ]
  %219 = add nsw i32 %217, -1
  %220 = load ptr, ptr %218, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %4) #24
  %221 = call i32 @stat(ptr noundef %220, ptr noundef nonnull %4) #25
  %222 = icmp eq i32 %221, 0
  br i1 %222, label %231, label %223

223:                                              ; preds = %216
  %224 = tail call ptr @__errno_location() #30
  %225 = load i32, ptr %224, align 4, !tbaa !7
  %226 = icmp eq i32 %225, 2
  br i1 %226, label %227, label %231

227:                                              ; preds = %223
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %4) #24
  %228 = load ptr, ptr @stderr, align 8, !tbaa !14
  %229 = load ptr, ptr %218, align 8, !tbaa !14
  %230 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %228, ptr noundef nonnull @.str.12, ptr noundef nonnull @Progname, ptr noundef %229) #27
  br label %248

231:                                              ; preds = %223, %216
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %4) #24
  %232 = load ptr, ptr %218, align 8, !tbaa !14
  %233 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %232) #29
  %234 = add i64 %233, 1
  %235 = call noalias ptr @malloc(i64 noundef %234) #31
  %236 = load ptr, ptr @Textfiles, align 8, !tbaa !14
  %237 = load i32, ptr @Numfiles, align 4, !tbaa !7
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds ptr, ptr %236, i64 %238
  store ptr %235, ptr %239, align 8, !tbaa !14
  %240 = icmp eq ptr %235, null
  br i1 %240, label %241, label %244

241:                                              ; preds = %231
  %242 = load ptr, ptr @stderr, align 8, !tbaa !14
  %243 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %242, ptr noundef nonnull @.str.11, ptr noundef nonnull @Progname) #27
  call void @exit(i32 noundef 2) #28
  unreachable

244:                                              ; preds = %231
  %245 = add nsw i32 %237, 1
  store i32 %245, ptr @Numfiles, align 4, !tbaa !7
  %246 = load ptr, ptr %218, align 8, !tbaa !14
  %247 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %235, ptr noundef nonnull dereferenceable(1) %246) #25
  br label %248

248:                                              ; preds = %244, %227
  %249 = getelementptr inbounds ptr, ptr %218, i64 1
  %250 = icmp eq i32 %219, 0
  br i1 %250, label %251, label %216, !llvm.loop !19

251:                                              ; preds = %248
  %252 = load i1, ptr @PAT_FILE, align 4
  br label %253

253:                                              ; preds = %251, %204
  %254 = phi i1 [ %252, %251 ], [ %192, %204 ]
  %255 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %6) #29
  %256 = trunc i64 %255 to i32
  %257 = icmp slt i32 %171, %256
  %258 = select i1 %254, i1 true, i1 %257
  br i1 %258, label %262, label %259

259:                                              ; preds = %253
  %260 = load ptr, ptr @stderr, align 8, !tbaa !14
  %261 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %260, ptr noundef nonnull @.str.40, ptr noundef nonnull @Progname) #27
  call void @exit(i32 noundef 2) #28
  unreachable

262:                                              ; preds = %253
  %263 = icmp sgt i32 %256, 0
  br i1 %263, label %264, label %283

264:                                              ; preds = %262
  %265 = icmp sgt i32 %171, 0
  %266 = and i64 %255, 4294967295
  br label %267

267:                                              ; preds = %275, %264
  %268 = phi i32 [ 1, %264 ], [ %276, %275 ]
  %269 = phi i64 [ 0, %264 ], [ %277, %275 ]
  %270 = getelementptr inbounds i8, ptr %6, i64 %269
  %271 = load i8, ptr %270, align 1, !tbaa !13
  switch i8 %271, label %275 [
    i8 59, label %274
    i8 44, label %274
    i8 46, label %274
    i8 42, label %274
    i8 45, label %274
    i8 91, label %274
    i8 93, label %274
    i8 40, label %274
    i8 41, label %274
    i8 60, label %274
    i8 62, label %274
    i8 94, label %272
    i8 36, label %273
    i8 124, label %274
    i8 35, label %274
    i8 92, label %274
  ]

272:                                              ; preds = %267
  br i1 %265, label %274, label %275

273:                                              ; preds = %267
  br i1 %265, label %274, label %275

274:                                              ; preds = %273, %272, %267, %267, %267, %267, %267, %267, %267, %267, %267, %267, %267, %267, %267, %267
  br label %275

275:                                              ; preds = %274, %273, %272, %267
  %276 = phi i32 [ %268, %272 ], [ %268, %273 ], [ %268, %267 ], [ 0, %274 ]
  %277 = add nuw nsw i64 %269, 1
  %278 = icmp eq i64 %277, %266
  br i1 %278, label %279, label %267, !llvm.loop !20

279:                                              ; preds = %275
  %.lcssa14 = phi i32 [ %276, %275 ]
  %280 = load i1, ptr @CONSTANT, align 4
  %281 = icmp ne i32 %.lcssa14, 0
  %282 = select i1 %280, i1 true, i1 %281
  br i1 %282, label %283, label %323

283:                                              ; preds = %279, %262
  %284 = load i1, ptr @NOUPPER, align 4
  %285 = icmp ne i32 %171, 0
  %286 = load i1, ptr @JUMP, align 4
  %287 = load i32, ptr @I, align 4
  %288 = icmp eq i32 %287, 0
  %289 = and i1 %285, %284
  %290 = select i1 %289, i1 true, i1 %286
  %291 = select i1 %290, i1 true, i1 %288
  %292 = load i1, ptr @LINENUM, align 4
  %293 = load i1, ptr @DELIMITER, align 4
  %294 = load i1, ptr @INVERSE, align 4
  %295 = select i1 %291, i1 true, i1 %292
  %296 = select i1 %295, i1 true, i1 %293
  %297 = select i1 %296, i1 true, i1 %294
  br i1 %297, label %323, label %298

298:                                              ; preds = %283
  %299 = load i1, ptr @WORDBOUND, align 4
  %300 = icmp sgt i32 %171, 0
  %301 = and i1 %300, %299
  br i1 %301, label %323, label %302

302:                                              ; preds = %298
  %303 = load i1, ptr @WHOLELINE, align 4
  %304 = and i1 %300, %303
  %305 = load i1, ptr @SILENT, align 4
  %306 = select i1 %304, i1 true, i1 %305
  br i1 %306, label %323, label %307

307:                                              ; preds = %302
  store i1 true, ptr @SGREP, align 4
  %308 = icmp sgt i32 %256, 15
  br i1 %308, label %309, label %310

309:                                              ; preds = %307
  store i1 true, ptr @DNA, align 4
  br label %313

310:                                              ; preds = %307
  br i1 %263, label %313, label %311

311:                                              ; preds = %310
  %312 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(1) %6) #25
  br label %330

313:                                              ; preds = %310, %309
  %314 = and i64 %255, 4294967295
  br label %315

315:                                              ; preds = %320, %313
  %316 = phi i64 [ 0, %313 ], [ %321, %320 ]
  %317 = getelementptr inbounds i8, ptr %6, i64 %316
  %318 = load i8, ptr %317, align 1, !tbaa !13
  switch i8 %318, label %319 [
    i8 116, label %320
    i8 103, label %320
    i8 99, label %320
    i8 97, label %320
  ]

319:                                              ; preds = %315
  store i1 false, ptr @DNA, align 4
  br label %320

320:                                              ; preds = %319, %315, %315, %315, %315
  %321 = add nuw nsw i64 %316, 1
  %322 = icmp eq i64 %321, %314
  br i1 %322, label %323, label %315, !llvm.loop !21

323:                                              ; preds = %320, %302, %298, %283, %279
  %324 = load i1, ptr @SGREP, align 4
  %325 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(1) %6) #25
  br i1 %324, label %330, label %326

326:                                              ; preds = %323
  call fastcc void @preprocess(ptr noundef nonnull %6) #25
  %327 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) @old_D_pat, ptr noundef nonnull dereferenceable(1) @D_pattern) #25
  %328 = call fastcc i32 @maskgen(ptr noundef nonnull %6) #25
  %329 = load i1, ptr @PAT_FILE, align 4
  br i1 %329, label %333, label %690

330:                                              ; preds = %323, %311
  %331 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %7) #29
  %332 = trunc i64 %331 to i32
  br i1 %254, label %333, label %690

333:                                              ; preds = %330, %326
  %334 = phi i32 [ %328, %326 ], [ %332, %330 ]
  br label %335

335:                                              ; preds = %342, %333
  %336 = phi i32 [ %343, %342 ], [ 0, %333 ]
  %337 = sext i32 %336 to i64
  %338 = getelementptr inbounds i8, ptr @buf, i64 %337
  %339 = call i64 @read(i32 noundef %172, ptr noundef nonnull %338, i64 noundef 8192) #25
  %340 = trunc i64 %339 to i32
  %341 = icmp sgt i32 %340, 0
  br i1 %341, label %342, label %348

342:                                              ; preds = %335
  %343 = add nsw i32 %336, %340
  %344 = icmp sgt i32 %343, 260000
  br i1 %344, label %345, label %335, !llvm.loop !22

345:                                              ; preds = %342
  %346 = load ptr, ptr @stderr, align 8, !tbaa !14
  %347 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %346, ptr noundef nonnull @.str.2.80, ptr noundef nonnull @Progname, i32 noundef 260000) #27
  call void @exit(i32 noundef 2) #28
  unreachable

348:                                              ; preds = %335
  %.lcssa12 = phi i32 [ %336, %335 ]
  %.lcssa10 = phi ptr [ %338, %335 ]
  store i8 10, ptr %.lcssa10, align 1, !tbaa !13
  %349 = icmp sgt i32 %.lcssa12, 0
  br i1 %349, label %350, label %392

350:                                              ; preds = %384, %348
  %351 = phi i64 [ %387, %384 ], [ 1, %348 ]
  %352 = phi i64 [ %.lcssa6, %384 ], [ 0, %348 ]
  %353 = phi ptr [ %386, %384 ], [ @pat_spool, %348 ]
  %354 = getelementptr inbounds [30000 x ptr], ptr @patt, i64 0, i64 %351
  store ptr %353, ptr %354, align 8, !tbaa !14
  %355 = load i1, ptr @WORDBOUND, align 4
  br i1 %355, label %356, label %358

356:                                              ; preds = %350
  %357 = getelementptr inbounds i8, ptr %353, i64 1
  store i8 -128, ptr %353, align 1, !tbaa !13
  br label %358

358:                                              ; preds = %356, %350
  %359 = phi ptr [ %357, %356 ], [ %353, %350 ]
  %360 = load i1, ptr @WHOLELINE, align 4
  br i1 %360, label %361, label %363

361:                                              ; preds = %358
  %362 = getelementptr inbounds i8, ptr %359, i64 1
  store i8 10, ptr %359, align 1, !tbaa !13
  br label %363

363:                                              ; preds = %361, %358
  %364 = phi ptr [ %362, %361 ], [ %359, %358 ]
  %365 = shl i64 %352, 32
  %366 = ashr exact i64 %365, 32
  br label %367

367:                                              ; preds = %367, %363
  %368 = phi i64 [ %370, %367 ], [ %366, %363 ]
  %369 = phi ptr [ %374, %367 ], [ %364, %363 ]
  %370 = add i64 %368, 1
  %371 = getelementptr inbounds [268192 x i8], ptr @buf, i64 0, i64 %368
  %372 = load i8, ptr %371, align 1, !tbaa !13
  store i8 %372, ptr %369, align 1, !tbaa !13
  %373 = icmp eq i8 %372, 10
  %374 = getelementptr inbounds i8, ptr %369, i64 1
  br i1 %373, label %375, label %367, !llvm.loop !23

375:                                              ; preds = %367
  %.lcssa7 = phi ptr [ %369, %367 ]
  %.lcssa6 = phi i64 [ %370, %367 ]
  %.lcssa5 = phi ptr [ %374, %367 ]
  %376 = trunc i64 %.lcssa6 to i32
  %377 = load i1, ptr @WORDBOUND, align 4
  br i1 %377, label %378, label %379

378:                                              ; preds = %375
  store i8 -128, ptr %.lcssa7, align 1, !tbaa !13
  br label %379

379:                                              ; preds = %378, %375
  %380 = phi ptr [ %.lcssa5, %378 ], [ %.lcssa7, %375 ]
  %381 = load i1, ptr @WHOLELINE, align 4
  br i1 %381, label %382, label %384

382:                                              ; preds = %379
  %383 = getelementptr inbounds i8, ptr %380, i64 1
  store i8 10, ptr %380, align 1, !tbaa !13
  br label %384

384:                                              ; preds = %382, %379
  %385 = phi ptr [ %383, %382 ], [ %380, %379 ]
  %386 = getelementptr inbounds i8, ptr %385, i64 1
  store i8 0, ptr %385, align 1, !tbaa !13
  %387 = add nuw i64 %351, 1
  %388 = icmp sgt i32 %.lcssa12, %376
  br i1 %388, label %350, label %389, !llvm.loop !24

389:                                              ; preds = %384
  %.lcssa9 = phi ptr [ %386, %384 ]
  %.lcssa8 = phi i64 [ %387, %384 ]
  %390 = trunc i64 %.lcssa8 to i32
  %391 = icmp ugt i32 %390, 30000
  br i1 %391, label %402, label %392

392:                                              ; preds = %389, %348
  %393 = phi ptr [ %.lcssa9, %389 ], [ @pat_spool, %348 ]
  %394 = phi i32 [ %390, %389 ], [ 1, %348 ]
  store i8 19, ptr %393, align 1, !tbaa !13
  br label %395

395:                                              ; preds = %395, %392
  %396 = phi i64 [ 0, %392 ], [ %399, %395 ]
  %397 = phi <16 x i8> [ <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15>, %392 ], [ %400, %395 ]
  %398 = getelementptr inbounds [256 x i8], ptr @tr, i64 0, i64 %396
  store <16 x i8> %397, ptr %398, align 16, !tbaa !13
  %399 = add nuw nsw i64 %396, 16
  %400 = add <16 x i8> %397, <i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16>
  %401 = icmp eq i64 %399, 256
  br i1 %401, label %405, label %395, !llvm.loop !25

402:                                              ; preds = %389
  %403 = load ptr, ptr @stderr, align 8, !tbaa !14
  %404 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %403, ptr noundef nonnull @.str.3.81, ptr noundef nonnull @Progname, i32 noundef 30000) #27
  call void @exit(i32 noundef 2) #28
  unreachable

405:                                              ; preds = %395
  %406 = load i1, ptr @NOUPPER, align 4
  br i1 %406, label %407, label %512

407:                                              ; preds = %509, %405
  %408 = phi i64 [ %510, %509 ], [ 0, %405 ]
  %409 = trunc i64 %408 to i8
  %410 = insertelement <16 x i64> poison, i64 %408, i64 0
  %411 = shufflevector <16 x i64> %410, <16 x i64> poison, <16 x i32> zeroinitializer
  %412 = or <16 x i64> %411, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>
  %413 = icmp ult <16 x i64> %412, <i64 26, i64 26, i64 26, i64 26, i64 26, i64 26, i64 26, i64 26, i64 26, i64 26, i64 26, i64 26, i64 26, i64 26, i64 26, i64 26>
  %414 = extractelement <16 x i1> %413, i64 0
  br i1 %414, label %415, label %419

415:                                              ; preds = %407
  %416 = add nuw nsw i64 %408, 65
  %417 = getelementptr inbounds [256 x i8], ptr @tr, i64 0, i64 %416
  %418 = add i8 %409, 97
  store i8 %418, ptr %417, align 1, !tbaa !13
  br label %419

419:                                              ; preds = %415, %407
  %420 = extractelement <16 x i1> %413, i64 1
  br i1 %420, label %421, label %425

421:                                              ; preds = %419
  %422 = add nuw nsw i64 %408, 66
  %423 = getelementptr inbounds [256 x i8], ptr @tr, i64 0, i64 %422
  %424 = add i8 %409, 98
  store i8 %424, ptr %423, align 2, !tbaa !13
  br label %425

425:                                              ; preds = %421, %419
  %426 = extractelement <16 x i1> %413, i64 2
  br i1 %426, label %427, label %431

427:                                              ; preds = %425
  %428 = add nuw nsw i64 %408, 67
  %429 = getelementptr inbounds [256 x i8], ptr @tr, i64 0, i64 %428
  %430 = add i8 %409, 99
  store i8 %430, ptr %429, align 1, !tbaa !13
  br label %431

431:                                              ; preds = %427, %425
  %432 = extractelement <16 x i1> %413, i64 3
  br i1 %432, label %433, label %437

433:                                              ; preds = %431
  %434 = add nuw nsw i64 %408, 68
  %435 = getelementptr inbounds [256 x i8], ptr @tr, i64 0, i64 %434
  %436 = add i8 %409, 100
  store i8 %436, ptr %435, align 4, !tbaa !13
  br label %437

437:                                              ; preds = %433, %431
  %438 = extractelement <16 x i1> %413, i64 4
  br i1 %438, label %439, label %443

439:                                              ; preds = %437
  %440 = add nuw nsw i64 %408, 69
  %441 = getelementptr inbounds [256 x i8], ptr @tr, i64 0, i64 %440
  %442 = add i8 %409, 101
  store i8 %442, ptr %441, align 1, !tbaa !13
  br label %443

443:                                              ; preds = %439, %437
  %444 = extractelement <16 x i1> %413, i64 5
  br i1 %444, label %445, label %449

445:                                              ; preds = %443
  %446 = add nuw nsw i64 %408, 70
  %447 = getelementptr inbounds [256 x i8], ptr @tr, i64 0, i64 %446
  %448 = add i8 %409, 102
  store i8 %448, ptr %447, align 2, !tbaa !13
  br label %449

449:                                              ; preds = %445, %443
  %450 = extractelement <16 x i1> %413, i64 6
  br i1 %450, label %451, label %455

451:                                              ; preds = %449
  %452 = add nuw nsw i64 %408, 71
  %453 = getelementptr inbounds [256 x i8], ptr @tr, i64 0, i64 %452
  %454 = add i8 %409, 103
  store i8 %454, ptr %453, align 1, !tbaa !13
  br label %455

455:                                              ; preds = %451, %449
  %456 = extractelement <16 x i1> %413, i64 7
  br i1 %456, label %457, label %461

457:                                              ; preds = %455
  %458 = add nuw nsw i64 %408, 72
  %459 = getelementptr inbounds [256 x i8], ptr @tr, i64 0, i64 %458
  %460 = add i8 %409, 104
  store i8 %460, ptr %459, align 8, !tbaa !13
  br label %461

461:                                              ; preds = %457, %455
  %462 = extractelement <16 x i1> %413, i64 8
  br i1 %462, label %463, label %467

463:                                              ; preds = %461
  %464 = add nuw nsw i64 %408, 73
  %465 = getelementptr inbounds [256 x i8], ptr @tr, i64 0, i64 %464
  %466 = add i8 %409, 105
  store i8 %466, ptr %465, align 1, !tbaa !13
  br label %467

467:                                              ; preds = %463, %461
  %468 = extractelement <16 x i1> %413, i64 9
  br i1 %468, label %469, label %473

469:                                              ; preds = %467
  %470 = add nuw nsw i64 %408, 74
  %471 = getelementptr inbounds [256 x i8], ptr @tr, i64 0, i64 %470
  %472 = add i8 %409, 106
  store i8 %472, ptr %471, align 2, !tbaa !13
  br label %473

473:                                              ; preds = %469, %467
  %474 = extractelement <16 x i1> %413, i64 10
  br i1 %474, label %475, label %479

475:                                              ; preds = %473
  %476 = add nuw nsw i64 %408, 75
  %477 = getelementptr inbounds [256 x i8], ptr @tr, i64 0, i64 %476
  %478 = add i8 %409, 107
  store i8 %478, ptr %477, align 1, !tbaa !13
  br label %479

479:                                              ; preds = %475, %473
  %480 = extractelement <16 x i1> %413, i64 11
  br i1 %480, label %481, label %485

481:                                              ; preds = %479
  %482 = add nuw nsw i64 %408, 76
  %483 = getelementptr inbounds [256 x i8], ptr @tr, i64 0, i64 %482
  %484 = add i8 %409, 108
  store i8 %484, ptr %483, align 4, !tbaa !13
  br label %485

485:                                              ; preds = %481, %479
  %486 = extractelement <16 x i1> %413, i64 12
  br i1 %486, label %487, label %491

487:                                              ; preds = %485
  %488 = add nuw nsw i64 %408, 77
  %489 = getelementptr inbounds [256 x i8], ptr @tr, i64 0, i64 %488
  %490 = add i8 %409, 109
  store i8 %490, ptr %489, align 1, !tbaa !13
  br label %491

491:                                              ; preds = %487, %485
  %492 = extractelement <16 x i1> %413, i64 13
  br i1 %492, label %493, label %497

493:                                              ; preds = %491
  %494 = add nuw nsw i64 %408, 78
  %495 = getelementptr inbounds [256 x i8], ptr @tr, i64 0, i64 %494
  %496 = add i8 %409, 110
  store i8 %496, ptr %495, align 2, !tbaa !13
  br label %497

497:                                              ; preds = %493, %491
  %498 = extractelement <16 x i1> %413, i64 14
  br i1 %498, label %499, label %503

499:                                              ; preds = %497
  %500 = add nuw nsw i64 %408, 79
  %501 = getelementptr inbounds [256 x i8], ptr @tr, i64 0, i64 %500
  %502 = add i8 %409, 111
  store i8 %502, ptr %501, align 1, !tbaa !13
  br label %503

503:                                              ; preds = %499, %497
  %504 = extractelement <16 x i1> %413, i64 15
  br i1 %504, label %505, label %509

505:                                              ; preds = %503
  %506 = add nuw nsw i64 %408, 80
  %507 = getelementptr inbounds [256 x i8], ptr @tr, i64 0, i64 %506
  %508 = add i8 %409, 112
  store i8 %508, ptr %507, align 16, !tbaa !13
  br label %509

509:                                              ; preds = %505, %503
  %510 = add nuw nsw i64 %408, 16
  %511 = icmp eq i64 %510, 32
  br i1 %511, label %512, label %407, !llvm.loop !28

512:                                              ; preds = %509, %405
  %513 = load i1, ptr @WORDBOUND, align 4
  br i1 %513, label %514, label %564

514:                                              ; preds = %512
  %515 = tail call ptr @__ctype_b_loc() #30
  %516 = load ptr, ptr %515, align 8, !tbaa !14
  br label %517

517:                                              ; preds = %561, %514
  %518 = phi i64 [ 0, %514 ], [ %562, %561 ]
  %519 = getelementptr inbounds i16, ptr %516, i64 %518
  %520 = load <8 x i16>, ptr %519, align 2, !tbaa !16
  %521 = and <8 x i16> %520, <i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8>
  %522 = icmp eq <8 x i16> %521, zeroinitializer
  %523 = extractelement <8 x i1> %522, i64 0
  br i1 %523, label %524, label %526

524:                                              ; preds = %517
  %525 = getelementptr inbounds [256 x i8], ptr @tr, i64 0, i64 %518
  store i8 -128, ptr %525, align 8, !tbaa !13
  br label %526

526:                                              ; preds = %524, %517
  %527 = extractelement <8 x i1> %522, i64 1
  br i1 %527, label %528, label %531

528:                                              ; preds = %526
  %529 = or i64 %518, 1
  %530 = getelementptr inbounds [256 x i8], ptr @tr, i64 0, i64 %529
  store i8 -128, ptr %530, align 1, !tbaa !13
  br label %531

531:                                              ; preds = %528, %526
  %532 = extractelement <8 x i1> %522, i64 2
  br i1 %532, label %533, label %536

533:                                              ; preds = %531
  %534 = or i64 %518, 2
  %535 = getelementptr inbounds [256 x i8], ptr @tr, i64 0, i64 %534
  store i8 -128, ptr %535, align 2, !tbaa !13
  br label %536

536:                                              ; preds = %533, %531
  %537 = extractelement <8 x i1> %522, i64 3
  br i1 %537, label %538, label %541

538:                                              ; preds = %536
  %539 = or i64 %518, 3
  %540 = getelementptr inbounds [256 x i8], ptr @tr, i64 0, i64 %539
  store i8 -128, ptr %540, align 1, !tbaa !13
  br label %541

541:                                              ; preds = %538, %536
  %542 = extractelement <8 x i1> %522, i64 4
  br i1 %542, label %543, label %546

543:                                              ; preds = %541
  %544 = or i64 %518, 4
  %545 = getelementptr inbounds [256 x i8], ptr @tr, i64 0, i64 %544
  store i8 -128, ptr %545, align 4, !tbaa !13
  br label %546

546:                                              ; preds = %543, %541
  %547 = extractelement <8 x i1> %522, i64 5
  br i1 %547, label %548, label %551

548:                                              ; preds = %546
  %549 = or i64 %518, 5
  %550 = getelementptr inbounds [256 x i8], ptr @tr, i64 0, i64 %549
  store i8 -128, ptr %550, align 1, !tbaa !13
  br label %551

551:                                              ; preds = %548, %546
  %552 = extractelement <8 x i1> %522, i64 6
  br i1 %552, label %553, label %556

553:                                              ; preds = %551
  %554 = or i64 %518, 6
  %555 = getelementptr inbounds [256 x i8], ptr @tr, i64 0, i64 %554
  store i8 -128, ptr %555, align 2, !tbaa !13
  br label %556

556:                                              ; preds = %553, %551
  %557 = extractelement <8 x i1> %522, i64 7
  br i1 %557, label %558, label %561

558:                                              ; preds = %556
  %559 = or i64 %518, 7
  %560 = getelementptr inbounds [256 x i8], ptr @tr, i64 0, i64 %559
  store i8 -128, ptr %560, align 1, !tbaa !13
  br label %561

561:                                              ; preds = %558, %556
  %562 = add nuw nsw i64 %518, 8
  %563 = icmp eq i64 %562, 128
  br i1 %563, label %564, label %517, !llvm.loop !29

564:                                              ; preds = %561, %512
  br label %565

565:                                              ; preds = %565, %564
  %566 = phi i64 [ %571, %565 ], [ 0, %564 ]
  %567 = getelementptr inbounds [256 x i8], ptr @tr, i64 0, i64 %566
  %568 = load <16 x i8>, ptr %567, align 16, !tbaa !13
  %569 = and <16 x i8> %568, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>
  %570 = getelementptr inbounds [256 x i8], ptr @tr1, i64 0, i64 %566
  store <16 x i8> %569, ptr %570, align 16, !tbaa !13
  %571 = add nuw nsw i64 %566, 16
  %572 = icmp eq i64 %571, 256
  br i1 %572, label %573, label %565, !llvm.loop !30

573:                                              ; preds = %565
  store i32 256, ptr @p_size, align 4, !tbaa !7
  %574 = icmp ugt i32 %394, 1
  br i1 %574, label %575, label %598

575:                                              ; preds = %573
  %576 = zext i32 %394 to i64
  br label %577

577:                                              ; preds = %590, %575
  %578 = phi i64 [ 1, %575 ], [ %592, %590 ]
  %579 = phi i32 [ 256, %575 ], [ %591, %590 ]
  %580 = getelementptr inbounds [30000 x ptr], ptr @patt, i64 0, i64 %578
  %581 = load ptr, ptr %580, align 8, !tbaa !14
  %582 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %581) #29
  %583 = trunc i64 %582 to i32
  %584 = trunc i64 %582 to i8
  %585 = getelementptr inbounds [30000 x i8], ptr @pat_len, i64 0, i64 %578
  store i8 %584, ptr %585, align 1, !tbaa !13
  %586 = icmp ne i32 %583, 0
  %587 = icmp sgt i32 %579, %583
  %588 = select i1 %586, i1 %587, i1 false
  br i1 %588, label %589, label %590

589:                                              ; preds = %577
  store i32 %583, ptr @p_size, align 4, !tbaa !7
  br label %590

590:                                              ; preds = %589, %577
  %591 = phi i32 [ %579, %577 ], [ %583, %589 ]
  %592 = add nuw nsw i64 %578, 1
  %593 = icmp eq i64 %592, %576
  br i1 %593, label %594, label %577, !llvm.loop !31

594:                                              ; preds = %590
  %.lcssa4 = phi i32 [ %591, %590 ]
  %595 = icmp sgt i32 %.lcssa12, 400
  %596 = icmp sgt i32 %.lcssa4, 2
  %597 = and i1 %595, %596
  br i1 %597, label %603, label %601

598:                                              ; preds = %573
  %599 = icmp sgt i32 %.lcssa12, 400
  br i1 %599, label %603, label %600

600:                                              ; preds = %598
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) @SHIFT1, i8 -2, i64 4096, i1 false), !tbaa !13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(65536) @HASH, i8 0, i64 65536, i1 false), !tbaa !14
  br label %690

601:                                              ; preds = %594
  %602 = icmp eq i32 %.lcssa4, 1
  br i1 %602, label %603, label %606

603:                                              ; preds = %601, %598, %594
  %604 = phi i32 [ 256, %598 ], [ %.lcssa4, %594 ], [ 1, %601 ]
  %605 = phi ptr [ @LONG, %598 ], [ @LONG, %594 ], [ @SHORT, %601 ]
  store i32 1, ptr %605, align 4, !tbaa !7
  br label %606

606:                                              ; preds = %603, %601
  %607 = phi i32 [ %.lcssa4, %601 ], [ %604, %603 ]
  %608 = trunc i32 %607 to i8
  %609 = add i8 %608, -2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) @SHIFT1, i8 %609, i64 4096, i1 false), !tbaa !13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(65536) @HASH, i8 0, i64 65536, i1 false), !tbaa !14
  br i1 %574, label %610, label %690

610:                                              ; preds = %606
  %611 = zext i32 %394 to i64
  %612 = add nsw i32 %607, -1
  %613 = load i32, ptr @LONG, align 4, !tbaa !7
  %614 = icmp sgt i32 %612, %613
  %615 = load i32, ptr @SHORT, align 4, !tbaa !7
  %616 = icmp eq i32 %615, 0
  %617 = select i1 %616, i32 15, i32 255
  %618 = icmp sgt i32 %607, 0
  %619 = icmp eq i32 %613, 0
  %620 = sext i32 %607 to i64
  %621 = add nsw i64 %620, -1
  %622 = sext i32 %613 to i64
  %623 = sext i32 %612 to i64
  %624 = zext i32 %612 to i64
  br label %625

625:                                              ; preds = %681, %610
  %626 = phi i64 [ 1, %610 ], [ %687, %681 ]
  %627 = getelementptr inbounds [30000 x ptr], ptr @patt, i64 0, i64 %626
  %628 = load ptr, ptr %627, align 8, !tbaa !14
  %629 = trunc i64 %626 to i32
  br i1 %614, label %630, label %663

630:                                              ; preds = %625
  %631 = getelementptr inbounds i8, ptr %628, i64 %621
  %632 = load i8, ptr %631, align 1, !tbaa !13
  br label %633

633:                                              ; preds = %661, %630
  %634 = phi i8 [ %632, %630 ], [ %639, %661 ]
  %635 = phi i64 [ %621, %630 ], [ %637, %661 ]
  %636 = shl i8 %634, 4
  %637 = add nsw i64 %635, -1
  %638 = getelementptr inbounds i8, ptr %628, i64 %637
  %639 = load i8, ptr %638, align 1, !tbaa !13
  %640 = and i8 %639, 15
  %641 = or i8 %640, %636
  %642 = zext i8 %641 to i32
  br i1 %619, label %651, label %643

643:                                              ; preds = %633
  %644 = shl nuw nsw i32 %642, 4
  %645 = add nsw i64 %635, -2
  %646 = getelementptr inbounds i8, ptr %628, i64 %645
  %647 = load i8, ptr %646, align 1, !tbaa !13
  %648 = and i8 %647, 15
  %649 = zext i8 %648 to i32
  %650 = or i32 %644, %649
  br label %651

651:                                              ; preds = %643, %633
  %652 = phi i32 [ %650, %643 ], [ %642, %633 ]
  %653 = zext i32 %652 to i64
  %654 = getelementptr inbounds [4096 x i8], ptr @SHIFT1, i64 0, i64 %653
  %655 = load i8, ptr %654, align 1, !tbaa !13
  %656 = sub nsw i64 %623, %635
  %657 = zext i8 %655 to i64
  %658 = icmp ugt i64 %656, %657
  br i1 %658, label %661, label %659

659:                                              ; preds = %651
  %660 = trunc i64 %656 to i8
  store i8 %660, ptr %654, align 1, !tbaa !13
  br label %661

661:                                              ; preds = %659, %651
  %662 = icmp sgt i64 %637, %622
  br i1 %662, label %633, label %663, !llvm.loop !32

663:                                              ; preds = %661, %625
  br i1 %618, label %664, label %681

664:                                              ; preds = %664, %663
  %665 = phi i64 [ %676, %664 ], [ %624, %663 ]
  %666 = phi i32 [ %675, %664 ], [ 0, %663 ]
  %667 = shl i32 %666, 4
  %668 = getelementptr inbounds i8, ptr %628, i64 %665
  %669 = load i8, ptr %668, align 1, !tbaa !13
  %670 = zext i8 %669 to i64
  %671 = getelementptr inbounds [256 x i8], ptr @tr, i64 0, i64 %670
  %672 = load i8, ptr %671, align 1, !tbaa !13
  %673 = zext i8 %672 to i32
  %674 = and i32 %617, %673
  %675 = add i32 %674, %667
  %676 = add nsw i64 %665, -1
  %677 = icmp eq i64 %665, 0
  br i1 %677, label %678, label %664, !llvm.loop !33

678:                                              ; preds = %664
  %.lcssa1 = phi i32 [ %675, %664 ]
  %679 = and i32 %.lcssa1, 8191
  %680 = zext i32 %679 to i64
  br label %681

681:                                              ; preds = %678, %663
  %682 = phi i64 [ 0, %663 ], [ %680, %678 ]
  %683 = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #31
  store i32 %629, ptr %683, align 8, !tbaa !34
  %684 = getelementptr inbounds [8192 x ptr], ptr @HASH, i64 0, i64 %682
  %685 = load ptr, ptr %684, align 8, !tbaa !14
  %686 = getelementptr inbounds %struct.pnode, ptr %683, i64 0, i32 1
  store ptr %685, ptr %686, align 8, !tbaa !36
  store ptr %683, ptr %684, align 8, !tbaa !14
  %687 = add nuw nsw i64 %626, 1
  %688 = icmp eq i64 %687, %611
  br i1 %688, label %689, label %625, !llvm.loop !37

689:                                              ; preds = %681
  %.lcssa3 = phi ptr [ %683, %681 ]
  %.lcssa2 = phi ptr [ %685, %681 ]
  store ptr %.lcssa3, ptr @qt, align 8, !tbaa !14
  store ptr %.lcssa2, ptr @pt, align 8, !tbaa !14
  br label %690

690:                                              ; preds = %689, %606, %600, %330, %326
  %691 = phi i32 [ %328, %326 ], [ %334, %689 ], [ %334, %606 ], [ %334, %600 ], [ %332, %330 ]
  %692 = load i32, ptr @Numfiles, align 4, !tbaa !7
  %693 = icmp sgt i32 %692, 1
  br i1 %693, label %694, label %695

694:                                              ; preds = %690
  store i1 true, ptr @FNAME, align 4
  br label %695

695:                                              ; preds = %694, %690
  %696 = load i1, ptr @NOFILENAME, align 4
  br i1 %696, label %697, label %698

697:                                              ; preds = %695
  store i1 false, ptr @FNAME, align 4
  br label %698

698:                                              ; preds = %697, %695
  store i32 0, ptr @num_of_matched, align 4, !tbaa !7
  %699 = load i1, ptr @BESTMATCH, align 4
  %700 = load i1, ptr @PAT_FILE, align 4
  br i1 %699, label %701, label %712

701:                                              ; preds = %698
  %702 = load i1, ptr @COUNT, align 4
  %703 = load i1, ptr @FILENAMEONLY, align 4
  %704 = select i1 %702, i1 true, i1 %703
  %705 = load i1, ptr @APPROX, align 4
  %706 = select i1 %704, i1 true, i1 %705
  %707 = select i1 %706, i1 true, i1 %700
  br i1 %707, label %708, label %728

708:                                              ; preds = %701
  store i1 false, ptr @BESTMATCH, align 4
  %709 = load ptr, ptr @stderr, align 8, !tbaa !14
  %710 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %709, ptr noundef nonnull @.str.3, ptr noundef nonnull @Progname) #27
  %711 = load i1, ptr @PAT_FILE, align 4
  br i1 %711, label %713, label %728

712:                                              ; preds = %698
  br i1 %700, label %713, label %728

713:                                              ; preds = %712, %708
  %714 = load i1, ptr @APPROX, align 4
  br i1 %714, label %715, label %718

715:                                              ; preds = %713
  %716 = load ptr, ptr @stderr, align 8, !tbaa !14
  %717 = call i64 @fwrite(ptr nonnull @.str.1, i64 65, i64 1, ptr %716) #32
  br label %718

718:                                              ; preds = %715, %713
  %719 = load i1, ptr @LINENUM, align 4
  br i1 %719, label %720, label %723

720:                                              ; preds = %718
  %721 = load ptr, ptr @stderr, align 8, !tbaa !14
  %722 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %721, ptr noundef nonnull @.str.2, ptr noundef nonnull @Progname) #27
  call void @exit(i32 noundef 2) #28
  unreachable

723:                                              ; preds = %718
  %724 = load i1, ptr @DELIMITER, align 4
  br i1 %724, label %725, label %728

725:                                              ; preds = %723
  %726 = load ptr, ptr @stderr, align 8, !tbaa !14
  %727 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %726, ptr noundef nonnull @.str.3.4, ptr noundef nonnull @Progname) #27
  call void @exit(i32 noundef 2) #28
  unreachable

728:                                              ; preds = %723, %712, %708, %701
  %729 = load i1, ptr @JUMP, align 4
  br i1 %729, label %730, label %747

730:                                              ; preds = %728
  %731 = load i1, ptr @REGEX, align 4
  br i1 %731, label %732, label %735

732:                                              ; preds = %730
  %733 = load ptr, ptr @stderr, align 8, !tbaa !14
  %734 = call i64 @fwrite(ptr nonnull @.str.4, i64 77, i64 1, ptr %733) #32
  store i1 false, ptr @JUMP, align 4
  br label %735

735:                                              ; preds = %732, %730
  %736 = load i32, ptr @I, align 4, !tbaa !7
  %737 = icmp eq i32 %736, 0
  %738 = load i32, ptr @S, align 4
  %739 = icmp eq i32 %738, 0
  %740 = select i1 %737, i1 true, i1 %739
  %741 = load i32, ptr @DD, align 4
  %742 = icmp eq i32 %741, 0
  %743 = select i1 %740, i1 true, i1 %742
  br i1 %743, label %744, label %747

744:                                              ; preds = %735
  %745 = load ptr, ptr @stderr, align 8, !tbaa !14
  %746 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %745, ptr noundef nonnull @.str.5, ptr noundef nonnull @Progname) #27
  call void @exit(i32 noundef 2) #28
  unreachable

747:                                              ; preds = %735, %728
  %748 = load i1, ptr @DELIMITER, align 4
  %749 = load i1, ptr @WHOLELINE, align 4
  %750 = select i1 %748, i1 %749, i1 false
  br i1 %750, label %751, label %754

751:                                              ; preds = %747
  %752 = load ptr, ptr @stderr, align 8, !tbaa !14
  %753 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %752, ptr noundef nonnull @.str.6, ptr noundef nonnull @Progname) #27
  call void @exit(i32 noundef 2) #28
  unreachable

754:                                              ; preds = %747
  br i1 %207, label %758, label %755

755:                                              ; preds = %754
  %756 = load i32, ptr @Numfiles, align 4, !tbaa !7
  %757 = icmp sgt i32 %756, 0
  br i1 %757, label %786, label %884

758:                                              ; preds = %754
  %759 = load i1, ptr @FILENAMEONLY, align 4
  br i1 %759, label %760, label %763

760:                                              ; preds = %758
  %761 = load ptr, ptr @stderr, align 8, !tbaa !14
  %762 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %761, ptr noundef nonnull @.str.13, ptr noundef nonnull @Progname) #27
  call void @exit(i32 noundef 2) #28
  unreachable

763:                                              ; preds = %758
  %764 = load i1, ptr @PAT_FILE, align 4
  br i1 %764, label %765, label %766

765:                                              ; preds = %763
  call fastcc void @mgrep(i32 noundef 0) #25
  br label %772

766:                                              ; preds = %763
  %767 = load i1, ptr @SGREP, align 4
  br i1 %767, label %768, label %771

768:                                              ; preds = %766
  %769 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %7) #29
  %770 = trunc i64 %769 to i32
  call fastcc void @sgrep(ptr noundef nonnull %7, i32 noundef %770, i32 noundef 0, i32 noundef %171) #25
  br label %772

771:                                              ; preds = %766
  call fastcc void @bitap(i32 noundef 0, i32 noundef %691, i32 noundef %171) #25
  br label %772

772:                                              ; preds = %771, %768, %765
  %773 = load i1, ptr @COUNT, align 4
  br i1 %773, label %774, label %1001

774:                                              ; preds = %772
  %775 = load i1, ptr @INVERSE, align 4
  %776 = load i1, ptr @PAT_FILE, align 4
  %777 = select i1 %775, i1 %776, i1 false
  br i1 %777, label %778, label %783

778:                                              ; preds = %774
  %779 = load i32, ptr @total_line, align 4, !tbaa !7
  %780 = load i32, ptr @num_of_matched, align 4, !tbaa !7
  %781 = sub nsw i32 %779, %780
  %782 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14, i32 noundef %781) #26
  br label %1001

783:                                              ; preds = %774
  %784 = load i32, ptr @num_of_matched, align 4, !tbaa !7
  %785 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14, i32 noundef %784) #26
  br label %1001

786:                                              ; preds = %878, %755
  %787 = phi i64 [ %879, %878 ], [ 0, %755 ]
  %788 = load ptr, ptr @Textfiles, align 8, !tbaa !14
  %789 = getelementptr inbounds ptr, ptr %788, i64 %787
  %790 = load ptr, ptr %789, align 8, !tbaa !14
  %791 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) @CurrentFileName, ptr noundef nonnull dereferenceable(1) %790) #25
  %792 = load ptr, ptr %789, align 8, !tbaa !14
  %793 = call i32 (ptr, i32, ...) @open(ptr noundef %792, i32 noundef 0) #25
  %794 = icmp slt i32 %793, 1
  br i1 %794, label %795, label %801

795:                                              ; preds = %786
  %796 = load ptr, ptr @stderr, align 8, !tbaa !14
  %797 = load ptr, ptr @Textfiles, align 8, !tbaa !14
  %798 = getelementptr inbounds ptr, ptr %797, i64 %787
  %799 = load ptr, ptr %798, align 8, !tbaa !14
  %800 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %796, ptr noundef nonnull @.str.15, ptr noundef nonnull @Progname, ptr noundef %799) #27
  br label %878

801:                                              ; preds = %786
  %802 = load i1, ptr @PAT_FILE, align 4
  br i1 %802, label %803, label %804

803:                                              ; preds = %801
  call fastcc void @mgrep(i32 noundef %793) #25
  br label %810

804:                                              ; preds = %801
  %805 = load i1, ptr @SGREP, align 4
  br i1 %805, label %806, label %809

806:                                              ; preds = %804
  %807 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %7) #29
  %808 = trunc i64 %807 to i32
  call fastcc void @sgrep(ptr noundef nonnull %7, i32 noundef %808, i32 noundef %793, i32 noundef %171) #25
  br label %810

809:                                              ; preds = %804
  call fastcc void @bitap(i32 noundef %793, i32 noundef %691, i32 noundef %171) #25
  br label %810

810:                                              ; preds = %809, %806, %803
  %811 = load i32, ptr @num_of_matched, align 4, !tbaa !7
  %812 = icmp eq i32 %811, 0
  br i1 %812, label %814, label %813

813:                                              ; preds = %810
  store i1 false, ptr @NOMATCH, align 4
  br label %814

814:                                              ; preds = %813, %810
  %815 = load i1, ptr @COUNT, align 4
  %816 = xor i1 %815, true
  %817 = load i1, ptr @FILEOUT, align 4
  %818 = select i1 %816, i1 true, i1 %817
  br i1 %818, label %836, label %819

819:                                              ; preds = %814
  %820 = load i1, ptr @INVERSE, align 4
  %821 = load i1, ptr @PAT_FILE, align 4
  %822 = select i1 %820, i1 %821, i1 false
  %823 = load i1, ptr @FNAME, align 4
  br i1 %822, label %824, label %831

824:                                              ; preds = %819
  %825 = load i32, ptr @total_line, align 4, !tbaa !7
  %826 = sub nsw i32 %825, %811
  br i1 %823, label %827, label %829

827:                                              ; preds = %824
  %828 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, ptr noundef nonnull @CurrentFileName, i32 noundef %826) #26
  br label %836

829:                                              ; preds = %824
  %830 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14, i32 noundef %826) #26
  br label %836

831:                                              ; preds = %819
  br i1 %823, label %832, label %834

832:                                              ; preds = %831
  %833 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, ptr noundef nonnull @CurrentFileName, i32 noundef %811) #26
  br label %836

834:                                              ; preds = %831
  %835 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14, i32 noundef %811) #26
  br label %836

836:                                              ; preds = %834, %832, %829, %827, %814
  %837 = load i1, ptr @FILEOUT, align 4
  %838 = load i32, ptr @num_of_matched, align 4
  %839 = icmp ne i32 %838, 0
  %840 = select i1 %837, i1 %839, i1 false
  br i1 %840, label %841, label %878

841:                                              ; preds = %836
  call void @llvm.lifetime.start.p0(i64 4097, ptr nonnull %3) #24
  %842 = load i1, ptr @FNAME, align 4
  br i1 %842, label %843, label %868

843:                                              ; preds = %841
  %844 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) @CurrentFileName) #29
  %845 = trunc i64 %844 to i32
  %846 = call i32 @putchar(i32 noundef 10) #26
  %847 = icmp sgt i32 %845, 0
  br i1 %847, label %848, label %853

848:                                              ; preds = %848, %843
  %849 = phi i32 [ %851, %848 ], [ 0, %843 ]
  %850 = call i32 @putchar(i32 noundef 58) #26
  %851 = add nuw nsw i32 %849, 1
  %852 = icmp eq i32 %851, %845
  br i1 %852, label %853, label %848, !llvm.loop !38

853:                                              ; preds = %848, %843
  %854 = call i32 @putchar(i32 noundef 10) #26
  %855 = call i32 @puts(ptr nonnull dereferenceable(1) @CurrentFileName)
  %856 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) @CurrentFileName) #29
  %857 = trunc i64 %856 to i32
  %858 = icmp sgt i32 %857, 0
  br i1 %858, label %859, label %864

859:                                              ; preds = %859, %853
  %860 = phi i32 [ %862, %859 ], [ 0, %853 ]
  %861 = call i32 @putchar(i32 noundef 58) #26
  %862 = add nuw nsw i32 %860, 1
  %863 = icmp eq i32 %862, %857
  br i1 %863, label %864, label %859, !llvm.loop !39

864:                                              ; preds = %859, %853
  %865 = call i32 @putchar(i32 noundef 10) #26
  %866 = load ptr, ptr @stdout, align 8, !tbaa !14
  %867 = call i32 @fflush(ptr noundef %866) #26
  br label %868

868:                                              ; preds = %864, %841
  %869 = call i32 (ptr, i32, ...) @open(ptr noundef nonnull @CurrentFileName, i32 noundef 0) #25
  br label %870

870:                                              ; preds = %874, %868
  %871 = call i64 @read(i32 noundef %869, ptr noundef nonnull %3, i64 noundef 4096) #25
  %872 = trunc i64 %871 to i32
  %873 = icmp sgt i32 %872, 0
  br i1 %873, label %874, label %877

874:                                              ; preds = %870
  %875 = and i64 %871, 4294967295
  %876 = call i64 @write(i32 noundef 1, ptr noundef nonnull %3, i64 noundef %875) #25
  br label %870, !llvm.loop !40

877:                                              ; preds = %870
  call void @llvm.lifetime.end.p0(i64 4097, ptr nonnull %3) #24
  br label %878

878:                                              ; preds = %877, %836, %795
  %879 = add nuw nsw i64 %787, 1
  %880 = call i32 @close(i32 noundef %793) #25
  store i32 0, ptr @num_of_matched, align 4, !tbaa !7
  %881 = load i32, ptr @Numfiles, align 4, !tbaa !7
  %882 = sext i32 %881 to i64
  %883 = icmp slt i64 %879, %882
  br i1 %883, label %786, label %884, !llvm.loop !41

884:                                              ; preds = %878, %755
  %885 = load i1, ptr @NOMATCH, align 4
  %886 = load i1, ptr @BESTMATCH, align 4
  %887 = select i1 %885, i1 %886, i1 false
  br i1 %887, label %888, label %1001

888:                                              ; preds = %884
  %889 = load i1, ptr @WORDBOUND, align 4
  %890 = load i1, ptr @WHOLELINE, align 4
  %891 = select i1 %889, i1 true, i1 %890
  %892 = load i1, ptr @LINENUM, align 4
  %893 = select i1 %891, i1 true, i1 %892
  %894 = load i1, ptr @INVERSE, align 4
  %895 = select i1 %893, i1 true, i1 %894
  br i1 %895, label %896, label %899

896:                                              ; preds = %888
  store i1 false, ptr @SGREP, align 4
  call fastcc void @preprocess(ptr noundef nonnull %6) #25
  %897 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) @old_D_pat, ptr noundef nonnull dereferenceable(1) @D_pattern) #25
  %898 = call fastcc i32 @maskgen(ptr noundef nonnull %6) #25
  br label %899

899:                                              ; preds = %896, %888
  %900 = phi i32 [ %898, %896 ], [ %691, %888 ]
  store i1 true, ptr @COUNT, align 4
  %901 = icmp sgt i32 %900, 1
  %902 = load i32, ptr @num_of_matched, align 4
  %903 = icmp eq i32 %902, 0
  %904 = select i1 %901, i1 %903, i1 false
  br i1 %904, label %905, label %946

905:                                              ; preds = %899
  %906 = load i32, ptr @Numfiles, align 4, !tbaa !7
  br label %907

907:                                              ; preds = %937, %905
  %908 = phi i32 [ %939, %937 ], [ %906, %905 ]
  %909 = phi i32 [ %940, %937 ], [ 1, %905 ]
  %910 = icmp sgt i32 %908, 0
  br i1 %910, label %911, label %937

911:                                              ; preds = %929, %907
  %912 = phi i64 [ %930, %929 ], [ 0, %907 ]
  %913 = load ptr, ptr @Textfiles, align 8, !tbaa !14
  %914 = getelementptr inbounds ptr, ptr %913, i64 %912
  %915 = load ptr, ptr %914, align 8, !tbaa !14
  %916 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) @CurrentFileName, ptr noundef nonnull dereferenceable(1) %915) #25
  %917 = load ptr, ptr %914, align 8, !tbaa !14
  %918 = call i32 (ptr, i32, ...) @open(ptr noundef %917, i32 noundef 0) #25
  %919 = icmp sgt i32 %918, 0
  br i1 %919, label %920, label %929

920:                                              ; preds = %911
  %921 = load i1, ptr @PAT_FILE, align 4
  br i1 %921, label %922, label %923

922:                                              ; preds = %920
  call fastcc void @mgrep(i32 noundef %918) #25
  br label %929

923:                                              ; preds = %920
  %924 = load i1, ptr @SGREP, align 4
  br i1 %924, label %925, label %928

925:                                              ; preds = %923
  %926 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %7) #29
  %927 = trunc i64 %926 to i32
  call fastcc void @sgrep(ptr noundef nonnull %7, i32 noundef %927, i32 noundef %918, i32 noundef %909) #25
  br label %929

928:                                              ; preds = %923
  call fastcc void @bitap(i32 noundef %918, i32 noundef %900, i32 noundef %909) #25
  br label %929

929:                                              ; preds = %928, %925, %922, %911
  %930 = add nuw nsw i64 %912, 1
  %931 = call i32 @close(i32 noundef %918) #25
  %932 = load i32, ptr @Numfiles, align 4, !tbaa !7
  %933 = sext i32 %932 to i64
  %934 = icmp slt i64 %930, %933
  br i1 %934, label %911, label %935, !llvm.loop !42

935:                                              ; preds = %929
  %.lcssa = phi i32 [ %932, %929 ]
  %936 = load i32, ptr @num_of_matched, align 4
  br label %937

937:                                              ; preds = %935, %907
  %938 = phi i32 [ %936, %935 ], [ 0, %907 ]
  %939 = phi i32 [ %.lcssa, %935 ], [ %908, %907 ]
  %940 = add nuw nsw i32 %909, 1
  %941 = icmp slt i32 %940, %900
  %942 = icmp ult i32 %909, 8
  %943 = and i1 %942, %941
  %944 = icmp eq i32 %938, 0
  %945 = select i1 %943, i1 %944, i1 false
  br i1 %945, label %907, label %946, !llvm.loop !43

946:                                              ; preds = %937, %899
  %947 = phi i32 [ 0, %899 ], [ %909, %937 ]
  %948 = phi i32 [ %902, %899 ], [ %938, %937 ]
  %949 = icmp sgt i32 %948, 0
  br i1 %949, label %950, label %1001

950:                                              ; preds = %946
  store i1 false, ptr @COUNT, align 4
  %951 = load i1, ptr @NOPROMPT, align 4
  br i1 %951, label %973, label %952

952:                                              ; preds = %950
  %953 = icmp eq i32 %947, 1
  %954 = load ptr, ptr @stderr, align 8, !tbaa !14
  br i1 %953, label %955, label %957

955:                                              ; preds = %952
  %956 = call i64 @fwrite(ptr nonnull @.str.17, i64 24, i64 1, ptr %954) #32
  br label %959

957:                                              ; preds = %952
  %958 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %954, ptr noundef nonnull @.str.18, i32 noundef %947) #27
  br label %959

959:                                              ; preds = %957, %955
  %960 = load ptr, ptr @stderr, align 8, !tbaa !14
  %961 = call i32 @fflush(ptr noundef %960) #26
  %962 = load i32, ptr @num_of_matched, align 4, !tbaa !7
  %963 = icmp eq i32 %962, 1
  %964 = load ptr, ptr @stderr, align 8, !tbaa !14
  br i1 %963, label %965, label %967

965:                                              ; preds = %959
  %966 = call i64 @fwrite(ptr nonnull @.str.19, i64 34, i64 1, ptr %964) #32
  br label %969

967:                                              ; preds = %959
  %968 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %964, ptr noundef nonnull @.str.20, i32 noundef %962) #27
  br label %969

969:                                              ; preds = %967, %965
  %970 = call i32 (ptr, ...) @__isoc99_scanf(ptr noundef nonnull @.str.21, ptr noundef nonnull %5) #26
  %971 = load i8, ptr %5, align 1, !tbaa !13
  %972 = icmp eq i8 %971, 121
  br i1 %972, label %973, label %1001

973:                                              ; preds = %969, %950
  %974 = load i32, ptr @Numfiles, align 4, !tbaa !7
  %975 = icmp sgt i32 %974, 0
  br i1 %975, label %976, label %1000

976:                                              ; preds = %994, %973
  %977 = phi i64 [ %995, %994 ], [ 0, %973 ]
  %978 = load ptr, ptr @Textfiles, align 8, !tbaa !14
  %979 = getelementptr inbounds ptr, ptr %978, i64 %977
  %980 = load ptr, ptr %979, align 8, !tbaa !14
  %981 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) @CurrentFileName, ptr noundef nonnull dereferenceable(1) %980) #25
  %982 = load ptr, ptr %979, align 8, !tbaa !14
  %983 = call i32 (ptr, i32, ...) @open(ptr noundef %982, i32 noundef 0) #25
  %984 = icmp sgt i32 %983, 0
  br i1 %984, label %985, label %994

985:                                              ; preds = %976
  %986 = load i1, ptr @PAT_FILE, align 4
  br i1 %986, label %987, label %988

987:                                              ; preds = %985
  call fastcc void @mgrep(i32 noundef %983) #25
  br label %994

988:                                              ; preds = %985
  %989 = load i1, ptr @SGREP, align 4
  br i1 %989, label %990, label %993

990:                                              ; preds = %988
  %991 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %7) #29
  %992 = trunc i64 %991 to i32
  call fastcc void @sgrep(ptr noundef nonnull %7, i32 noundef %992, i32 noundef %983, i32 noundef %947) #25
  br label %994

993:                                              ; preds = %988
  call fastcc void @bitap(i32 noundef %983, i32 noundef %900, i32 noundef %947) #25
  br label %994

994:                                              ; preds = %993, %990, %987, %976
  %995 = add nuw nsw i64 %977, 1
  %996 = call i32 @close(i32 noundef %983) #25
  %997 = load i32, ptr @Numfiles, align 4, !tbaa !7
  %998 = sext i32 %997 to i64
  %999 = icmp slt i64 %995, %998
  br i1 %999, label %976, label %1000, !llvm.loop !44

1000:                                             ; preds = %994, %973
  store i1 false, ptr @NOMATCH, align 4
  br label %1001

1001:                                             ; preds = %1000, %969, %946, %884, %783, %778, %772
  %1002 = load i1, ptr @EATFIRST, align 4
  br i1 %1002, label %1003, label %1005

1003:                                             ; preds = %1001
  %1004 = call i32 @putchar(i32 10)
  store i1 false, ptr @EATFIRST, align 4
  br label %1005

1005:                                             ; preds = %1003, %1001
  %1006 = load i32, ptr @num_of_matched, align 4, !tbaa !7
  %1007 = icmp eq i32 %1006, 0
  br i1 %1007, label %1009, label %1008

1008:                                             ; preds = %1005
  store i1 false, ptr @NOMATCH, align 4
  br label %1012

1009:                                             ; preds = %1005
  %1010 = load i1, ptr @NOMATCH, align 4
  br i1 %1010, label %1011, label %1012

1011:                                             ; preds = %1009
  call void @exit(i32 noundef 1) #28
  unreachable

1012:                                             ; preds = %1009, %1008
  call void @exit(i32 noundef 0) #28
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noreturn nounwind optsize uwtable
define internal fastcc void @usage() unnamed_addr #0 {
  %1 = load ptr, ptr @stderr, align 8, !tbaa !14
  %2 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.27, ptr noundef nonnull @Progname) #27
  %3 = tail call i32 @putchar(i32 10)
  %4 = load ptr, ptr @stderr, align 8, !tbaa !14
  %5 = tail call i64 @fwrite(ptr nonnull @.str.28, i64 36, i64 1, ptr %4) #32
  %6 = load ptr, ptr @stderr, align 8, !tbaa !14
  %7 = tail call i64 @fwrite(ptr nonnull @.str.29, i64 39, i64 1, ptr %6) #32
  %8 = load ptr, ptr @stderr, align 8, !tbaa !14
  %9 = tail call i64 @fwrite(ptr nonnull @.str.30, i64 41, i64 1, ptr %8) #32
  %10 = load ptr, ptr @stderr, align 8, !tbaa !14
  %11 = tail call i64 @fwrite(ptr nonnull @.str.31, i64 28, i64 1, ptr %10) #32
  %12 = load ptr, ptr @stderr, align 8, !tbaa !14
  %13 = tail call i64 @fwrite(ptr nonnull @.str.32, i64 29, i64 1, ptr %12) #32
  %14 = load ptr, ptr @stderr, align 8, !tbaa !14
  %15 = tail call i64 @fwrite(ptr nonnull @.str.33, i64 45, i64 1, ptr %14) #32
  %16 = load ptr, ptr @stderr, align 8, !tbaa !14
  %17 = tail call i64 @fwrite(ptr nonnull @.str.34, i64 51, i64 1, ptr %16) #32
  %18 = load ptr, ptr @stderr, align 8, !tbaa !14
  %19 = tail call i64 @fwrite(ptr nonnull @.str.35, i64 44, i64 1, ptr %18) #32
  %20 = load ptr, ptr @stderr, align 8, !tbaa !14
  %21 = tail call i64 @fwrite(ptr nonnull @.str.36, i64 47, i64 1, ptr %20) #32
  %22 = load ptr, ptr @stderr, align 8, !tbaa !14
  %23 = tail call i64 @fwrite(ptr nonnull @.str.37, i64 70, i64 1, ptr %22) #32
  %24 = load ptr, ptr @stderr, align 8, !tbaa !14
  %25 = tail call i64 @fwrite(ptr nonnull @.str.38, i64 61, i64 1, ptr %24) #32
  %26 = load ptr, ptr @stderr, align 8, !tbaa !14
  %27 = tail call i64 @fwrite(ptr nonnull @.str.39, i64 42, i64 1, ptr %26) #32
  %28 = tail call i32 @putchar(i32 10)
  tail call void @exit(i32 noundef 2) #28
  unreachable
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite)
declare ptr @strcat(ptr noalias noundef returned, ptr noalias nocapture noundef readonly) local_unnamed_addr #7

; Function Attrs: nofree optsize
declare noundef i32 @open(ptr nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(read)
declare i32 @atoi(ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #10

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #11

; Function Attrs: nofree nounwind optsize
declare noundef i32 @stat(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @preprocess(ptr noundef %0) unnamed_addr #12 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca [1024 x i8], align 16
  %5 = alloca [16 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #24
  %6 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #29
  %7 = trunc i64 %6 to i32
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %21

9:                                                ; preds = %17, %1
  %10 = phi i32 [ %19, %17 ], [ 0, %1 ]
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i8, ptr %0, i64 %11
  %13 = load i8, ptr %12, align 1, !tbaa !13
  switch i8 %13, label %17 [
    i8 92, label %14
    i8 124, label %16
    i8 42, label %16
  ]

14:                                               ; preds = %9
  %15 = add nsw i32 %10, 1
  br label %17

16:                                               ; preds = %9, %9
  store i1 true, ptr @REGEX, align 4
  br label %17

17:                                               ; preds = %16, %14, %9
  %18 = phi i32 [ %15, %14 ], [ %10, %16 ], [ %10, %9 ]
  %19 = add nsw i32 %18, 1
  %20 = icmp slt i32 %19, %7
  br i1 %20, label %9, label %21, !llvm.loop !45

21:                                               ; preds = %17, %1
  %22 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) @D_pattern) #29
  %23 = shl i64 %22, 1
  %24 = add i64 %23, %6
  %25 = tail call noalias ptr @malloc(i64 noundef %24) #31
  %26 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) @D_pattern) #25
  %27 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #29
  %28 = trunc i64 %27 to i32
  %29 = load i1, ptr @WHOLELINE, align 4
  br i1 %29, label %30, label %46

30:                                               ; preds = %21
  %31 = shl i64 %27, 32
  %32 = ashr exact i64 %31, 32
  %33 = getelementptr inbounds [1024 x i8], ptr %4, i64 0, i64 %32
  store i8 -10, ptr %33, align 1, !tbaa !13
  %34 = add i64 %31, 4294967296
  %35 = ashr exact i64 %34, 32
  %36 = getelementptr inbounds [1024 x i8], ptr %4, i64 0, i64 %35
  store i8 -17, ptr %36, align 1, !tbaa !13
  %37 = add i64 %31, 8589934592
  %38 = ashr exact i64 %37, 32
  %39 = getelementptr inbounds [1024 x i8], ptr %4, i64 0, i64 %38
  store i8 -9, ptr %39, align 1, !tbaa !13
  %40 = add i64 %31, 12884901888
  %41 = ashr exact i64 %40, 32
  %42 = getelementptr inbounds [1024 x i8], ptr %4, i64 0, i64 %41
  store i8 0, ptr %42, align 1, !tbaa !13
  %43 = call ptr @strcat(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) %0) #25
  %44 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #29
  %45 = trunc i64 %44 to i32
  br label %65

46:                                               ; preds = %21
  %47 = load i1, ptr @WORDBOUND, align 4
  br i1 %47, label %48, label %61

48:                                               ; preds = %46
  %49 = shl i64 %27, 32
  %50 = ashr exact i64 %49, 32
  %51 = getelementptr inbounds [1024 x i8], ptr %4, i64 0, i64 %50
  store i8 -10, ptr %51, align 1, !tbaa !13
  %52 = add i64 %49, 4294967296
  %53 = ashr exact i64 %52, 32
  %54 = getelementptr inbounds [1024 x i8], ptr %4, i64 0, i64 %53
  store i8 -15, ptr %54, align 1, !tbaa !13
  %55 = add i64 %49, 8589934592
  %56 = ashr exact i64 %55, 32
  %57 = getelementptr inbounds [1024 x i8], ptr %4, i64 0, i64 %56
  store i8 -9, ptr %57, align 1, !tbaa !13
  %58 = add i64 %49, 12884901888
  %59 = ashr exact i64 %58, 32
  %60 = getelementptr inbounds [1024 x i8], ptr %4, i64 0, i64 %59
  store i8 0, ptr %60, align 1, !tbaa !13
  br label %61

61:                                               ; preds = %48, %46
  %62 = call ptr @strcat(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) %0) #25
  %63 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #29
  %64 = trunc i64 %63 to i32
  br i1 %47, label %65, label %79

65:                                               ; preds = %61, %30
  %66 = phi i64 [ %44, %30 ], [ %63, %61 ]
  %67 = phi i8 [ 10, %30 ], [ -15, %61 ]
  %68 = phi i32 [ %45, %30 ], [ %64, %61 ]
  %69 = shl i64 %66, 32
  %70 = ashr exact i64 %69, 32
  %71 = getelementptr inbounds [1024 x i8], ptr %4, i64 0, i64 %70
  store i8 -10, ptr %71, align 1, !tbaa !13
  %72 = add i64 %69, 4294967296
  %73 = ashr exact i64 %72, 32
  %74 = getelementptr inbounds [1024 x i8], ptr %4, i64 0, i64 %73
  store i8 %67, ptr %74, align 1, !tbaa !13
  %75 = add nsw i32 %68, 3
  %76 = add i64 %69, 8589934592
  %77 = ashr exact i64 %76, 32
  %78 = getelementptr inbounds [1024 x i8], ptr %4, i64 0, i64 %77
  store i8 -9, ptr %78, align 1, !tbaa !13
  br label %79

79:                                               ; preds = %65, %61
  %80 = phi i32 [ %64, %61 ], [ %75, %65 ]
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [1024 x i8], ptr %4, i64 0, i64 %81
  store i8 0, ptr %82, align 1, !tbaa !13
  store i32 0, ptr @D_length, align 4, !tbaa !7
  %83 = add nsw i32 %28, -2
  %84 = icmp sgt i32 %28, 2
  br i1 %84, label %85, label %132

85:                                               ; preds = %120, %79
  %86 = phi i32 [ %121, %120 ], [ 0, %79 ]
  %87 = phi i64 [ %123, %120 ], [ 0, %79 ]
  %88 = phi i32 [ %124, %120 ], [ 0, %79 ]
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds [1024 x i8], ptr %4, i64 0, i64 %89
  %91 = load i8, ptr %90, align 1, !tbaa !13
  switch i8 %91, label %115 [
    i8 92, label %92
    i8 60, label %101
    i8 62, label %103
    i8 94, label %105
    i8 36, label %110
  ]

92:                                               ; preds = %85
  %93 = add nsw i32 %88, 1
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds [1024 x i8], ptr %4, i64 0, i64 %94
  %96 = load i8, ptr %95, align 1, !tbaa !13
  %97 = getelementptr inbounds i8, ptr %0, i64 %87
  store i8 %96, ptr %97, align 1, !tbaa !13
  %98 = add nsw i32 %86, 1
  store i32 %98, ptr @D_length, align 4, !tbaa !7
  %99 = sext i32 %86 to i64
  %100 = getelementptr inbounds [16 x i8], ptr %5, i64 0, i64 %99
  store i8 %96, ptr %100, align 1, !tbaa !13
  br label %120

101:                                              ; preds = %85
  %102 = getelementptr inbounds i8, ptr %0, i64 %87
  store i8 -10, ptr %102, align 1, !tbaa !13
  br label %120

103:                                              ; preds = %85
  %104 = getelementptr inbounds i8, ptr %0, i64 %87
  store i8 -9, ptr %104, align 1, !tbaa !13
  br label %120

105:                                              ; preds = %85
  %106 = getelementptr inbounds i8, ptr %0, i64 %87
  store i8 10, ptr %106, align 1, !tbaa !13
  %107 = add nsw i32 %86, 1
  store i32 %107, ptr @D_length, align 4, !tbaa !7
  %108 = sext i32 %86 to i64
  %109 = getelementptr inbounds [16 x i8], ptr %5, i64 0, i64 %108
  store i8 94, ptr %109, align 1, !tbaa !13
  br label %120

110:                                              ; preds = %85
  %111 = getelementptr inbounds i8, ptr %0, i64 %87
  store i8 10, ptr %111, align 1, !tbaa !13
  %112 = add nsw i32 %86, 1
  store i32 %112, ptr @D_length, align 4, !tbaa !7
  %113 = sext i32 %86 to i64
  %114 = getelementptr inbounds [16 x i8], ptr %5, i64 0, i64 %113
  store i8 36, ptr %114, align 1, !tbaa !13
  br label %120

115:                                              ; preds = %85
  %116 = getelementptr inbounds i8, ptr %0, i64 %87
  store i8 %91, ptr %116, align 1, !tbaa !13
  %117 = add nsw i32 %86, 1
  store i32 %117, ptr @D_length, align 4, !tbaa !7
  %118 = sext i32 %86 to i64
  %119 = getelementptr inbounds [16 x i8], ptr %5, i64 0, i64 %118
  store i8 %91, ptr %119, align 1, !tbaa !13
  br label %120

120:                                              ; preds = %115, %110, %105, %103, %101, %92
  %121 = phi i32 [ %117, %115 ], [ %112, %110 ], [ %107, %105 ], [ %86, %103 ], [ %86, %101 ], [ %98, %92 ]
  %122 = phi i32 [ %88, %115 ], [ %88, %110 ], [ %88, %105 ], [ %88, %103 ], [ %88, %101 ], [ %93, %92 ]
  %123 = add nuw i64 %87, 1
  %124 = add nsw i32 %122, 1
  %125 = icmp slt i32 %124, %83
  br i1 %125, label %85, label %126, !llvm.loop !46

126:                                              ; preds = %120
  %.lcssa3 = phi i32 [ %121, %120 ]
  %.lcssa2 = phi i64 [ %123, %120 ]
  %127 = trunc i64 %.lcssa2 to i32
  %128 = icmp sgt i32 %.lcssa3, 8
  br i1 %128, label %129, label %132

129:                                              ; preds = %126
  %130 = load ptr, ptr @stderr, align 8, !tbaa !14
  %131 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %130, ptr noundef nonnull @.str.92, ptr noundef nonnull @Progname) #27
  call void @exit(i32 noundef 2) #28
  unreachable

132:                                              ; preds = %126, %79
  %133 = phi i32 [ %.lcssa3, %126 ], [ 0, %79 ]
  %134 = phi i32 [ %127, %126 ], [ 0, %79 ]
  %135 = add nuw nsw i32 %134, 1
  %136 = zext i32 %134 to i64
  %137 = getelementptr inbounds i8, ptr %0, i64 %136
  store i8 -4, ptr %137, align 1, !tbaa !13
  %138 = sext i32 %133 to i64
  %139 = getelementptr inbounds [16 x i8], ptr %5, i64 0, i64 %138
  store i8 0, ptr %139, align 1, !tbaa !13
  %140 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) @D_pattern, ptr noundef nonnull dereferenceable(1) %5) #25
  %141 = add nsw i32 %133, 1
  store i32 %141, ptr @D_length, align 4, !tbaa !7
  %142 = zext i32 %135 to i64
  %143 = getelementptr inbounds i8, ptr %0, i64 %142
  store i8 0, ptr %143, align 1, !tbaa !13
  %144 = load i1, ptr @REGEX, align 4
  br i1 %144, label %145, label %148

145:                                              ; preds = %132
  store i8 46, ptr %25, align 1, !tbaa !13
  %146 = getelementptr inbounds i8, ptr %25, i64 1
  store i8 40, ptr %146, align 1, !tbaa !13
  %147 = add nuw nsw i32 %134, 2
  store i8 -18, ptr %143, align 1, !tbaa !13
  store i1 true, ptr @HEAD, align 4
  br label %148

148:                                              ; preds = %145, %132
  %149 = phi i32 [ %147, %145 ], [ %135, %132 ]
  %150 = phi i32 [ 2, %145 ], [ 0, %132 ]
  %151 = icmp sgt i32 %80, %28
  br i1 %151, label %152, label %272

152:                                              ; preds = %148
  %153 = sext i32 %149 to i64
  br label %154

154:                                              ; preds = %262, %152
  %155 = phi i64 [ %153, %152 ], [ %267, %262 ]
  %156 = phi i32 [ 0, %152 ], [ %266, %262 ]
  %157 = phi i32 [ 0, %152 ], [ %265, %262 ]
  %158 = phi i32 [ %28, %152 ], [ %268, %262 ]
  %159 = phi i32 [ %150, %152 ], [ %263, %262 ]
  %160 = sext i32 %158 to i64
  %161 = getelementptr inbounds [1024 x i8], ptr %4, i64 0, i64 %160
  %162 = load i8, ptr %161, align 1, !tbaa !13
  switch i8 %162, label %257 [
    i8 92, label %163
    i8 35, label %172
    i8 40, label %182
    i8 41, label %187
    i8 91, label %192
    i8 93, label %197
    i8 60, label %202
    i8 62, label %204
    i8 94, label %206
    i8 36, label %217
    i8 46, label %222
    i8 42, label %227
    i8 124, label %232
    i8 44, label %237
    i8 59, label %239
    i8 45, label %244
    i8 -17, label %252
  ]

163:                                              ; preds = %154
  %164 = add nsw i32 %158, 1
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds [1024 x i8], ptr %4, i64 0, i64 %165
  %167 = load i8, ptr %166, align 1, !tbaa !13
  %168 = getelementptr inbounds i8, ptr %0, i64 %155
  store i8 %167, ptr %168, align 1, !tbaa !13
  %169 = add nsw i32 %159, 1
  %170 = sext i32 %159 to i64
  %171 = getelementptr inbounds i8, ptr %25, i64 %170
  store i8 111, ptr %171, align 1, !tbaa !13
  br label %262

172:                                              ; preds = %154
  %173 = getelementptr inbounds i8, ptr %0, i64 %155
  br i1 %144, label %174, label %181

174:                                              ; preds = %172
  store i8 -18, ptr %173, align 1, !tbaa !13
  %175 = add nsw i32 %159, 1
  %176 = sext i32 %159 to i64
  %177 = getelementptr inbounds i8, ptr %25, i64 %176
  store i8 46, ptr %177, align 1, !tbaa !13
  %178 = add nsw i32 %159, 2
  %179 = sext i32 %175 to i64
  %180 = getelementptr inbounds i8, ptr %25, i64 %179
  store i8 42, ptr %180, align 1, !tbaa !13
  br label %262

181:                                              ; preds = %172
  store i8 -7, ptr %173, align 1, !tbaa !13
  br label %262

182:                                              ; preds = %154
  %183 = getelementptr inbounds i8, ptr %0, i64 %155
  store i8 -14, ptr %183, align 1, !tbaa !13
  %184 = add nsw i32 %159, 1
  %185 = sext i32 %159 to i64
  %186 = getelementptr inbounds i8, ptr %25, i64 %185
  store i8 40, ptr %186, align 1, !tbaa !13
  br label %262

187:                                              ; preds = %154
  %188 = getelementptr inbounds i8, ptr %0, i64 %155
  store i8 -13, ptr %188, align 1, !tbaa !13
  %189 = add nsw i32 %159, 1
  %190 = sext i32 %159 to i64
  %191 = getelementptr inbounds i8, ptr %25, i64 %190
  store i8 41, ptr %191, align 1, !tbaa !13
  br label %262

192:                                              ; preds = %154
  %193 = getelementptr inbounds i8, ptr %0, i64 %155
  store i8 -12, ptr %193, align 1, !tbaa !13
  %194 = add nsw i32 %159, 1
  %195 = sext i32 %159 to i64
  %196 = getelementptr inbounds i8, ptr %25, i64 %195
  store i8 91, ptr %196, align 1, !tbaa !13
  br label %262

197:                                              ; preds = %154
  %198 = getelementptr inbounds i8, ptr %0, i64 %155
  store i8 -11, ptr %198, align 1, !tbaa !13
  %199 = add nsw i32 %159, 1
  %200 = sext i32 %159 to i64
  %201 = getelementptr inbounds i8, ptr %25, i64 %200
  store i8 93, ptr %201, align 1, !tbaa !13
  br label %262

202:                                              ; preds = %154
  %203 = getelementptr inbounds i8, ptr %0, i64 %155
  store i8 -10, ptr %203, align 1, !tbaa !13
  br label %262

204:                                              ; preds = %154
  %205 = getelementptr inbounds i8, ptr %0, i64 %155
  store i8 -9, ptr %205, align 1, !tbaa !13
  br label %262

206:                                              ; preds = %154
  %207 = add nsw i32 %158, -1
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds [1024 x i8], ptr %4, i64 0, i64 %208
  %210 = load i8, ptr %209, align 1, !tbaa !13
  %211 = icmp eq i8 %210, 91
  %212 = select i1 %211, i8 -8, i8 10
  %213 = getelementptr inbounds i8, ptr %0, i64 %155
  store i8 %212, ptr %213, align 1
  %214 = add nsw i32 %159, 1
  %215 = sext i32 %159 to i64
  %216 = getelementptr inbounds i8, ptr %25, i64 %215
  store i8 94, ptr %216, align 1, !tbaa !13
  br label %262

217:                                              ; preds = %154
  %218 = getelementptr inbounds i8, ptr %0, i64 %155
  store i8 10, ptr %218, align 1, !tbaa !13
  %219 = add nsw i32 %159, 1
  %220 = sext i32 %159 to i64
  %221 = getelementptr inbounds i8, ptr %25, i64 %220
  store i8 36, ptr %221, align 1, !tbaa !13
  br label %262

222:                                              ; preds = %154
  %223 = getelementptr inbounds i8, ptr %0, i64 %155
  store i8 -18, ptr %223, align 1, !tbaa !13
  %224 = add nsw i32 %159, 1
  %225 = sext i32 %159 to i64
  %226 = getelementptr inbounds i8, ptr %25, i64 %225
  store i8 46, ptr %226, align 1, !tbaa !13
  br label %262

227:                                              ; preds = %154
  %228 = getelementptr inbounds i8, ptr %0, i64 %155
  store i8 -3, ptr %228, align 1, !tbaa !13
  %229 = add nsw i32 %159, 1
  %230 = sext i32 %159 to i64
  %231 = getelementptr inbounds i8, ptr %25, i64 %230
  store i8 42, ptr %231, align 1, !tbaa !13
  br label %262

232:                                              ; preds = %154
  %233 = getelementptr inbounds i8, ptr %0, i64 %155
  store i8 -6, ptr %233, align 1, !tbaa !13
  %234 = add nsw i32 %159, 1
  %235 = sext i32 %159 to i64
  %236 = getelementptr inbounds i8, ptr %25, i64 %235
  store i8 124, ptr %236, align 1, !tbaa !13
  br label %262

237:                                              ; preds = %154
  %238 = getelementptr inbounds i8, ptr %0, i64 %155
  store i8 -5, ptr %238, align 1, !tbaa !13
  store i1 true, ptr @RE_ERR, align 4
  br label %262

239:                                              ; preds = %154
  %240 = icmp eq i32 %157, 0
  br i1 %240, label %242, label %241

241:                                              ; preds = %239
  store i1 true, ptr @RE_ERR, align 4
  br label %242

242:                                              ; preds = %241, %239
  %243 = getelementptr inbounds i8, ptr %0, i64 %155
  store i8 -4, ptr %243, align 1, !tbaa !13
  br label %262

244:                                              ; preds = %154
  %245 = icmp eq i32 %156, 0
  %246 = getelementptr inbounds i8, ptr %0, i64 %155
  %247 = add nsw i32 %159, 1
  %248 = sext i32 %159 to i64
  %249 = getelementptr inbounds i8, ptr %25, i64 %248
  br i1 %245, label %251, label %250

250:                                              ; preds = %244
  store i8 -19, ptr %246, align 1, !tbaa !13
  store i8 45, ptr %249, align 1, !tbaa !13
  br label %262

251:                                              ; preds = %244
  store i8 45, ptr %246, align 1, !tbaa !13
  store i8 45, ptr %249, align 1, !tbaa !13
  br label %262

252:                                              ; preds = %154
  %253 = getelementptr inbounds i8, ptr %0, i64 %155
  store i8 -17, ptr %253, align 1, !tbaa !13
  %254 = add nsw i32 %159, 1
  %255 = sext i32 %159 to i64
  %256 = getelementptr inbounds i8, ptr %25, i64 %255
  store i8 78, ptr %256, align 1, !tbaa !13
  br label %262

257:                                              ; preds = %154
  %258 = getelementptr inbounds i8, ptr %0, i64 %155
  store i8 %162, ptr %258, align 1, !tbaa !13
  %259 = add nsw i32 %159, 1
  %260 = sext i32 %159 to i64
  %261 = getelementptr inbounds i8, ptr %25, i64 %260
  store i8 %162, ptr %261, align 1, !tbaa !13
  br label %262

262:                                              ; preds = %257, %252, %251, %250, %242, %237, %232, %227, %222, %217, %206, %204, %202, %197, %192, %187, %182, %181, %174, %163
  %263 = phi i32 [ %259, %257 ], [ %254, %252 ], [ %247, %250 ], [ %247, %251 ], [ %159, %242 ], [ %159, %237 ], [ %234, %232 ], [ %229, %227 ], [ %224, %222 ], [ %219, %217 ], [ %214, %206 ], [ %159, %204 ], [ %159, %202 ], [ %199, %197 ], [ %194, %192 ], [ %189, %187 ], [ %184, %182 ], [ %178, %174 ], [ %159, %181 ], [ %169, %163 ]
  %264 = phi i32 [ %158, %257 ], [ %158, %252 ], [ %158, %250 ], [ %158, %251 ], [ %158, %242 ], [ %158, %237 ], [ %158, %232 ], [ %158, %227 ], [ %158, %222 ], [ %158, %217 ], [ %158, %206 ], [ %158, %204 ], [ %158, %202 ], [ %158, %197 ], [ %158, %192 ], [ %158, %187 ], [ %158, %182 ], [ %158, %174 ], [ %158, %181 ], [ %164, %163 ]
  %265 = phi i32 [ %157, %257 ], [ %157, %252 ], [ %157, %250 ], [ %157, %251 ], [ 1, %242 ], [ %157, %237 ], [ %157, %232 ], [ %157, %227 ], [ %157, %222 ], [ %157, %217 ], [ %157, %206 ], [ %157, %204 ], [ %157, %202 ], [ %157, %197 ], [ %157, %192 ], [ %157, %187 ], [ %157, %182 ], [ %157, %174 ], [ %157, %181 ], [ %157, %163 ]
  %266 = phi i32 [ %156, %257 ], [ %156, %252 ], [ 1, %250 ], [ 0, %251 ], [ %156, %242 ], [ %156, %237 ], [ %156, %232 ], [ %156, %227 ], [ %156, %222 ], [ %156, %217 ], [ %156, %206 ], [ %156, %204 ], [ %156, %202 ], [ 0, %197 ], [ 1, %192 ], [ %156, %187 ], [ %156, %182 ], [ %156, %174 ], [ %156, %181 ], [ %156, %163 ]
  %267 = add i64 %155, 1
  %268 = add nsw i32 %264, 1
  %269 = icmp slt i32 %268, %80
  br i1 %269, label %154, label %270, !llvm.loop !47

270:                                              ; preds = %262
  %.lcssa1 = phi i32 [ %263, %262 ]
  %.lcssa = phi i64 [ %267, %262 ]
  %271 = trunc i64 %.lcssa to i32
  br label %272

272:                                              ; preds = %270, %148
  %273 = phi i32 [ %149, %148 ], [ %271, %270 ]
  %274 = phi i32 [ %150, %148 ], [ %.lcssa1, %270 ]
  br i1 %144, label %278, label %275

275:                                              ; preds = %272
  %276 = sext i32 %273 to i64
  %277 = getelementptr inbounds i8, ptr %0, i64 %276
  store i8 0, ptr %277, align 1, !tbaa !13
  br label %393

278:                                              ; preds = %272
  %279 = add nsw i32 %274, 1
  %280 = sext i32 %274 to i64
  %281 = getelementptr inbounds i8, ptr %25, i64 %280
  store i8 41, ptr %281, align 1, !tbaa !13
  %282 = add nsw i32 %274, 2
  %283 = sext i32 %279 to i64
  %284 = getelementptr inbounds i8, ptr %25, i64 %283
  store i8 46, ptr %284, align 1, !tbaa !13
  %285 = add nsw i32 %273, 1
  %286 = sext i32 %273 to i64
  %287 = getelementptr inbounds i8, ptr %0, i64 %286
  store i8 -18, ptr %287, align 1, !tbaa !13
  store i1 true, ptr @TAIL, align 4
  %288 = sext i32 %285 to i64
  %289 = getelementptr inbounds i8, ptr %0, i64 %288
  store i8 0, ptr %289, align 1, !tbaa !13
  %290 = sext i32 %282 to i64
  %291 = getelementptr inbounds i8, ptr %25, i64 %290
  store i8 0, ptr %291, align 1, !tbaa !13
  %292 = load i1, ptr @DELIMITER, align 4
  %293 = load i1, ptr @WORDBOUND, align 4
  %294 = select i1 %292, i1 true, i1 %293
  br i1 %294, label %295, label %298

295:                                              ; preds = %278
  %296 = load ptr, ptr @stderr, align 8, !tbaa !14
  %297 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %296, ptr noundef nonnull @.str.1.93, ptr noundef nonnull @Progname) #27
  call void @exit(i32 noundef 2) #28
  unreachable

298:                                              ; preds = %278
  %299 = load i1, ptr @RE_ERR, align 4
  br i1 %299, label %305, label %300

300:                                              ; preds = %298
  %301 = load i8, ptr %0, align 1, !tbaa !13
  %302 = icmp ne i8 %301, -18
  %303 = icmp sgt i32 %273, -1
  %304 = and i1 %303, %302
  br i1 %304, label %308, label %317

305:                                              ; preds = %298
  %306 = load ptr, ptr @stderr, align 8, !tbaa !14
  %307 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %306, ptr noundef nonnull @.str.2.94, ptr noundef nonnull @Progname) #27
  call void @exit(i32 noundef 2) #28
  unreachable

308:                                              ; preds = %308, %300
  %309 = phi ptr [ %312, %308 ], [ %0, %300 ]
  %310 = phi i32 [ %311, %308 ], [ %285, %300 ]
  %311 = add nsw i32 %310, -1
  %312 = getelementptr inbounds i8, ptr %309, i64 1
  %313 = load i8, ptr %312, align 1, !tbaa !13
  %314 = icmp ne i8 %313, -18
  %315 = icmp ugt i32 %310, 1
  %316 = select i1 %314, i1 %315, i1 false
  br i1 %316, label %308, label %317, !llvm.loop !48

317:                                              ; preds = %308, %300
  %318 = phi ptr [ %0, %300 ], [ %312, %308 ]
  %319 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %25) #29
  %320 = add i64 %319, 5
  %321 = and i64 %320, 4294967295
  %322 = call noalias ptr @malloc(i64 noundef %321) #31
  store i32 2632238, ptr %322, align 1
  %323 = call ptr @strcat(ptr noundef nonnull dereferenceable(1) %322, ptr noundef nonnull dereferenceable(1) %25) #25
  %324 = call i64 @strlen(ptr nonnull dereferenceable(1) %322)
  %325 = getelementptr inbounds i8, ptr %322, i64 %324
  store i16 41, ptr %325, align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2)
  store ptr %322, ptr %2, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #24
  %326 = call fastcc ptr @parse_re(ptr noundef nonnull %2, i16 noundef signext 0) #26
  %327 = icmp eq ptr %326, null
  br i1 %327, label %346, label %328

328:                                              ; preds = %317
  %329 = call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #31
  %330 = icmp eq ptr %329, null
  br i1 %330, label %346, label %331

331:                                              ; preds = %328
  %332 = getelementptr inbounds %struct.snode, ptr %329, i64 0, i32 2
  store ptr null, ptr %332, align 8, !tbaa !49
  store ptr %326, ptr %329, align 8, !tbaa !51
  %333 = getelementptr inbounds %struct.snode, ptr %329, i64 0, i32 1
  store i32 1, ptr %333, align 8
  %334 = call fastcc ptr @mk_leaf(i16 noundef signext 0, i16 noundef signext 0, i8 noundef signext 0, ptr noundef null) #26
  %335 = icmp eq ptr %334, null
  br i1 %335, label %346, label %336

336:                                              ; preds = %331
  %337 = call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #31
  %338 = icmp eq ptr %337, null
  br i1 %338, label %346, label %339

339:                                              ; preds = %336
  %340 = getelementptr inbounds %struct.snode, ptr %337, i64 0, i32 2
  store ptr %329, ptr %340, align 8, !tbaa !49
  store ptr %334, ptr %337, align 8, !tbaa !51
  %341 = getelementptr inbounds %struct.snode, ptr %337, i64 0, i32 1
  store i32 2, ptr %341, align 8
  store ptr %337, ptr %3, align 8, !tbaa !14
  %342 = load i32, ptr @pos_cnt, align 4, !tbaa !7
  %343 = add nsw i32 %342, -1
  store i32 %343, ptr @pos_cnt, align 4, !tbaa !7
  %344 = call fastcc ptr @cat2(ptr noundef nonnull %3) #26
  %345 = icmp eq ptr %344, null
  br i1 %345, label %346, label %347

346:                                              ; preds = %339, %336, %331, %328, %317
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2)
  br label %383

347:                                              ; preds = %339
  %348 = load ptr, ptr %344, align 8, !tbaa !51
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2)
  %349 = icmp eq ptr %348, null
  br i1 %349, label %383, label %350

350:                                              ; preds = %347
  %351 = load i32, ptr @pos_cnt, align 4, !tbaa !7
  %352 = icmp slt i32 %351, 0
  br i1 %352, label %383, label %353

353:                                              ; preds = %350
  %354 = add nuw i32 %351, 1
  %355 = zext i32 %354 to i64
  %356 = shl nuw nsw i64 %355, 3
  %357 = call ptr @calloc(i64 1, i64 %356)
  %358 = icmp eq ptr %357, null
  br i1 %358, label %383, label %359

359:                                              ; preds = %353
  call fastcc void @mk_followpos_1(ptr noundef nonnull %348, ptr noundef nonnull %357) #26
  %360 = load i32, ptr @pos_cnt, align 4, !tbaa !7
  %361 = icmp slt i32 %360, 0
  br i1 %361, label %383, label %362

362:                                              ; preds = %359
  %363 = zext i32 %360 to i64
  br label %364

364:                                              ; preds = %378, %362
  %365 = phi i64 [ %379, %378 ], [ 0, %362 ]
  %366 = getelementptr inbounds [0 x ptr], ptr %357, i64 0, i64 %365
  %367 = load ptr, ptr %366, align 8, !tbaa !14
  %368 = icmp eq ptr %367, null
  br i1 %368, label %378, label %369

369:                                              ; preds = %369, %364
  %370 = phi i64 [ %374, %369 ], [ 0, %364 ]
  %371 = phi ptr [ %376, %369 ], [ %367, %364 ]
  %372 = load i32, ptr %371, align 8, !tbaa !52
  %373 = getelementptr inbounds [32 x i32], ptr @table, i64 %365, i64 %370
  store i32 %372, ptr %373, align 4, !tbaa !7
  %374 = add nuw i64 %370, 1
  %375 = getelementptr inbounds %struct.pnode, ptr %371, i64 0, i32 1
  %376 = load ptr, ptr %375, align 8, !tbaa !14
  %377 = icmp eq ptr %376, null
  br i1 %377, label %378, label %369, !llvm.loop !54

378:                                              ; preds = %369, %364
  %379 = add nuw nsw i64 %365, 1
  %380 = icmp eq i64 %365, %363
  br i1 %380, label %381, label %364, !llvm.loop !55

381:                                              ; preds = %378
  %382 = icmp slt i32 %360, 1
  br i1 %382, label %383, label %386

383:                                              ; preds = %381, %359, %353, %350, %347, %346
  %384 = load ptr, ptr @stderr, align 8, !tbaa !14
  %385 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %384, ptr noundef nonnull @.str.2.94, ptr noundef nonnull @Progname) #27
  call void @exit(i32 noundef 2) #28
  unreachable

386:                                              ; preds = %381
  %387 = icmp ugt i32 %360, 30
  br i1 %387, label %388, label %391

388:                                              ; preds = %386
  %389 = load ptr, ptr @stderr, align 8, !tbaa !14
  %390 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %389, ptr noundef nonnull @.str.3.95, ptr noundef nonnull @Progname) #27
  call void @exit(i32 noundef 2) #28
  unreachable

391:                                              ; preds = %386
  %392 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %318) #25
  br label %393

393:                                              ; preds = %391, %275
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %4) #24
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @maskgen(ptr nocapture noundef %0) unnamed_addr #12 {
  %2 = alloca [42 x %struct.term], align 16
  call void @llvm.lifetime.start.p0(i64 1512, ptr nonnull %2) #24
  br label %3

3:                                                ; preds = %3, %1
  %4 = phi i64 [ 0, %1 ], [ %6, %3 ]
  %5 = getelementptr inbounds [42 x %struct.term], ptr %2, i64 0, i64 %4, i32 1
  store i8 0, ptr %5, align 4, !tbaa !13
  %6 = add nuw nsw i64 %4, 1
  %7 = icmp eq i64 %6, 32
  br i1 %7, label %8, label %3, !llvm.loop !56

8:                                                ; preds = %8, %3
  %9 = phi i64 [ %11, %8 ], [ 0, %3 ]
  %10 = getelementptr inbounds [42 x %struct.term], ptr %2, i64 0, i64 %9
  store i32 0, ptr %10, align 4, !tbaa !57
  %11 = add nuw nsw i64 %9, 1
  %12 = icmp eq i64 %11, 32
  br i1 %12, label %13, label %8, !llvm.loop !59

13:                                               ; preds = %8
  store i32 0, ptr @endposition, align 4, !tbaa !7
  store i32 0, ptr @NO_ERR_MASK, align 4, !tbaa !7
  %14 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #29
  %15 = trunc i64 %14 to i32
  %16 = load i1, ptr @NOUPPER, align 4
  %17 = icmp sgt i32 %15, 0
  %18 = select i1 %16, i1 %17, i1 false
  br i1 %18, label %19, label %41

19:                                               ; preds = %13
  %20 = tail call ptr @__ctype_b_loc() #30
  %21 = and i64 %14, 4294967295
  br label %22

22:                                               ; preds = %38, %19
  %23 = phi i64 [ 0, %19 ], [ %39, %38 ]
  %24 = load ptr, ptr %20, align 8, !tbaa !14
  %25 = getelementptr inbounds i8, ptr %0, i64 %23
  %26 = load i8, ptr %25, align 1, !tbaa !13
  %27 = zext i8 %26 to i64
  %28 = getelementptr inbounds i16, ptr %24, i64 %27
  %29 = load i16, ptr %28, align 2, !tbaa !16
  %30 = and i16 %29, 1280
  %31 = icmp eq i16 %30, 1280
  br i1 %31, label %32, label %38

32:                                               ; preds = %22
  %33 = tail call ptr @__ctype_tolower_loc() #30
  %34 = load ptr, ptr %33, align 8, !tbaa !14
  %35 = getelementptr inbounds i32, ptr %34, i64 %27
  %36 = load i32, ptr %35, align 4, !tbaa !7
  %37 = trunc i32 %36 to i8
  store i8 %37, ptr %25, align 1, !tbaa !13
  br label %38

38:                                               ; preds = %32, %22
  %39 = add nuw nsw i64 %23, 1
  %40 = icmp eq i64 %39, %21
  br i1 %40, label %41, label %22, !llvm.loop !60

41:                                               ; preds = %38, %13
  br i1 %17, label %42, label %247

42:                                               ; preds = %41
  %43 = load i1, ptr @AND, align 4
  %44 = zext i1 %43 to i32
  %45 = load i32, ptr @D_length, align 4
  %46 = load i1, ptr @REGEX, align 4
  br label %47

47:                                               ; preds = %230, %42
  %48 = phi i32 [ 0, %42 ], [ %240, %230 ]
  %49 = phi i32 [ 1, %42 ], [ %236, %230 ]
  %50 = phi i32 [ 0, %42 ], [ %237, %230 ]
  %51 = phi i32 [ 0, %42 ], [ %238, %230 ]
  %52 = phi i32 [ 0, %42 ], [ %239, %230 ]
  %53 = phi i32 [ 0, %42 ], [ %234, %230 ]
  %54 = phi i32 [ %44, %42 ], [ %233, %230 ]
  %55 = phi i32 [ 0, %42 ], [ %232, %230 ]
  %56 = phi i32 [ 0, %42 ], [ %231, %230 ]
  %57 = sext i32 %48 to i64
  %58 = getelementptr inbounds i8, ptr %0, i64 %57
  %59 = load i8, ptr %58, align 1, !tbaa !13
  switch i8 %59, label %206 [
    i8 -7, label %60
    i8 -3, label %230
    i8 -6, label %230
    i8 -14, label %230
    i8 -13, label %230
    i8 -10, label %72
    i8 -9, label %74
    i8 -12, label %80
    i8 -11, label %150
    i8 -5, label %153
    i8 -4, label %166
    i8 10, label %184
    i8 -15, label %192
    i8 -17, label %199
  ]

60:                                               ; preds = %47
  br i1 %46, label %61, label %66

61:                                               ; preds = %60
  %62 = sext i32 %49 to i64
  %63 = getelementptr inbounds [42 x %struct.term], ptr %2, i64 0, i64 %62, i32 1
  store i8 46, ptr %63, align 4, !tbaa !13
  %64 = getelementptr inbounds [42 x %struct.term], ptr %2, i64 0, i64 %62, i32 1, i64 1
  store i8 46, ptr %64, align 1, !tbaa !13
  %65 = getelementptr inbounds [42 x %struct.term], ptr %2, i64 0, i64 %62, i32 1, i64 2
  store i8 0, ptr %65, align 2, !tbaa !13
  br label %219

66:                                               ; preds = %60
  %67 = add nsw i32 %49, -1
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [0 x i32], ptr @Bit, i64 0, i64 %68
  %70 = load i32, ptr %69, align 4, !tbaa !7
  %71 = or i32 %70, %56
  br label %230

72:                                               ; preds = %47
  %73 = add nsw i32 %51, 1
  br label %230

74:                                               ; preds = %47
  %75 = add nsw i32 %51, -1
  %76 = icmp slt i32 %51, 1
  br i1 %76, label %77, label %230

77:                                               ; preds = %74
  %78 = load ptr, ptr @stderr, align 8, !tbaa !14
  %79 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %78, ptr noundef nonnull @.str.73, ptr noundef nonnull @Progname) #27
  tail call void @exit(i32 noundef 2) #28
  unreachable

80:                                               ; preds = %47
  %81 = icmp eq i32 %50, 1
  br i1 %81, label %82, label %87

82:                                               ; preds = %80
  %83 = sext i32 %49 to i64
  %84 = getelementptr inbounds [0 x i32], ptr @Bit, i64 0, i64 %83
  %85 = load i32, ptr %84, align 4, !tbaa !7
  %86 = or i32 %85, %53
  store i32 %86, ptr @NO_ERR_MASK, align 4, !tbaa !7
  br label %87

87:                                               ; preds = %82, %80
  %88 = phi i32 [ %86, %82 ], [ %53, %80 ]
  %89 = add nsw i32 %48, 1
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8, ptr %0, i64 %90
  %92 = load i8, ptr %91, align 1, !tbaa !13
  %93 = icmp eq i8 %92, -8
  br i1 %93, label %94, label %101

94:                                               ; preds = %87
  %95 = sext i32 %49 to i64
  %96 = getelementptr inbounds [42 x %struct.term], ptr %2, i64 0, i64 %95
  store i32 1, ptr %96, align 4, !tbaa !57
  %97 = add nsw i32 %48, 2
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i8, ptr %0, i64 %98
  %100 = load i8, ptr %99, align 1, !tbaa !13
  br label %101

101:                                              ; preds = %94, %87
  %102 = phi i8 [ %100, %94 ], [ %92, %87 ]
  %103 = phi i32 [ %97, %94 ], [ %89, %87 ]
  %104 = icmp ne i8 %102, -11
  %105 = icmp slt i32 %103, %15
  %106 = select i1 %104, i1 %105, i1 false
  br i1 %106, label %107, label %139

107:                                              ; preds = %101
  %108 = sext i32 %49 to i64
  br label %109

109:                                              ; preds = %129, %107
  %110 = phi i8 [ %102, %107 ], [ %135, %129 ]
  %111 = phi i32 [ %103, %107 ], [ %132, %129 ]
  %112 = phi i32 [ 0, %107 ], [ %131, %129 ]
  %113 = icmp eq i8 %110, -19
  br i1 %113, label %114, label %122

114:                                              ; preds = %109
  %115 = add nsw i32 %111, 1
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i8, ptr %0, i64 %116
  %118 = load i8, ptr %117, align 1, !tbaa !13
  %119 = add nsw i32 %112, -1
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds [42 x %struct.term], ptr %2, i64 0, i64 %108, i32 1, i64 %120
  store i8 %118, ptr %121, align 1, !tbaa !13
  br label %129

122:                                              ; preds = %109
  %123 = add nsw i32 %112, 1
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds [42 x %struct.term], ptr %2, i64 0, i64 %108, i32 1, i64 %124
  store i8 %110, ptr %125, align 1, !tbaa !13
  %126 = sext i32 %112 to i64
  %127 = getelementptr inbounds [42 x %struct.term], ptr %2, i64 0, i64 %108, i32 1, i64 %126
  store i8 %110, ptr %127, align 1, !tbaa !13
  %128 = add nsw i32 %112, 2
  br label %129

129:                                              ; preds = %122, %114
  %130 = phi i32 [ 1, %122 ], [ 2, %114 ]
  %131 = phi i32 [ %128, %122 ], [ %112, %114 ]
  %132 = add nsw i32 %130, %111
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i8, ptr %0, i64 %133
  %135 = load i8, ptr %134, align 1, !tbaa !13
  %136 = icmp ne i8 %135, -11
  %137 = icmp slt i32 %132, %15
  %138 = select i1 %136, i1 %137, i1 false
  br i1 %138, label %109, label %139, !llvm.loop !61

139:                                              ; preds = %129, %101
  %140 = phi i32 [ 0, %101 ], [ %131, %129 ]
  %141 = phi i32 [ %103, %101 ], [ %132, %129 ]
  %142 = icmp eq i32 %141, %15
  br i1 %142, label %143, label %146

143:                                              ; preds = %139
  %144 = load ptr, ptr @stderr, align 8, !tbaa !14
  %145 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %144, ptr noundef nonnull @.str.1.74, ptr noundef nonnull @Progname) #27
  tail call void @exit(i32 noundef 2) #28
  unreachable

146:                                              ; preds = %139
  %147 = sext i32 %49 to i64
  %148 = sext i32 %140 to i64
  %149 = getelementptr inbounds [42 x %struct.term], ptr %2, i64 0, i64 %147, i32 1, i64 %148
  store i8 0, ptr %149, align 1, !tbaa !13
  br label %219

150:                                              ; preds = %47
  %151 = load ptr, ptr @stderr, align 8, !tbaa !14
  %152 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %151, ptr noundef nonnull @.str.1.74, ptr noundef nonnull @Progname) #27
  tail call void @exit(i32 noundef 2) #28
  unreachable

153:                                              ; preds = %47
  %154 = icmp eq i32 %54, 1
  %155 = select i1 %46, i1 true, i1 %154
  br i1 %155, label %156, label %159

156:                                              ; preds = %153
  %157 = load ptr, ptr @stderr, align 8, !tbaa !14
  %158 = tail call i64 @fwrite(ptr nonnull @.str.2.75, i64 17, i64 1, ptr %157) #32
  tail call void @exit(i32 noundef 2) #28
  unreachable

159:                                              ; preds = %153
  %160 = sext i32 %49 to i64
  %161 = getelementptr inbounds [42 x %struct.term], ptr %2, i64 0, i64 %160
  store i32 2, ptr %161, align 4, !tbaa !57
  %162 = getelementptr inbounds [42 x %struct.term], ptr %2, i64 0, i64 %160, i32 1
  store i8 0, ptr %162, align 4, !tbaa !13
  %163 = getelementptr inbounds [0 x i32], ptr @Bit, i64 0, i64 %160
  %164 = load i32, ptr %163, align 4, !tbaa !7
  %165 = or i32 %164, %55
  store i32 %165, ptr @endposition, align 4, !tbaa !7
  br label %219

166:                                              ; preds = %47
  %167 = sext i32 %49 to i64
  %168 = getelementptr inbounds [42 x %struct.term], ptr %2, i64 0, i64 %167
  store i32 2, ptr %168, align 4, !tbaa !57
  %169 = getelementptr inbounds [42 x %struct.term], ptr %2, i64 0, i64 %167, i32 1
  store i8 0, ptr %169, align 4, !tbaa !13
  %170 = icmp sgt i32 %49, %45
  br i1 %170, label %171, label %172

171:                                              ; preds = %166
  store i1 true, ptr @AND, align 4
  br label %172

172:                                              ; preds = %171, %166
  %173 = phi i32 [ 1, %171 ], [ %54, %166 ]
  %174 = icmp ne i32 %52, 0
  %175 = and i1 %46, %170
  %176 = select i1 %174, i1 true, i1 %175
  br i1 %176, label %177, label %180

177:                                              ; preds = %172
  %178 = load ptr, ptr @stderr, align 8, !tbaa !14
  %179 = tail call i64 @fwrite(ptr nonnull @.str.2.75, i64 17, i64 1, ptr %178) #32
  tail call void @exit(i32 noundef 2) #28
  unreachable

180:                                              ; preds = %172
  %181 = getelementptr inbounds [0 x i32], ptr @Bit, i64 0, i64 %167
  %182 = load i32, ptr %181, align 4, !tbaa !7
  %183 = or i32 %182, %55
  store i32 %183, ptr @endposition, align 4, !tbaa !7
  br label %219

184:                                              ; preds = %47
  %185 = sext i32 %49 to i64
  %186 = getelementptr inbounds [0 x i32], ptr @Bit, i64 0, i64 %185
  %187 = load i32, ptr %186, align 4, !tbaa !7
  %188 = or i32 %187, %53
  store i32 %188, ptr @NO_ERR_MASK, align 4, !tbaa !7
  %189 = getelementptr inbounds [42 x %struct.term], ptr %2, i64 0, i64 %185, i32 1
  %190 = getelementptr inbounds [42 x %struct.term], ptr %2, i64 0, i64 %185, i32 1, i64 1
  store i8 10, ptr %190, align 1, !tbaa !13
  store i8 10, ptr %189, align 4, !tbaa !13
  %191 = getelementptr inbounds [42 x %struct.term], ptr %2, i64 0, i64 %185, i32 1, i64 2
  store i8 0, ptr %191, align 2, !tbaa !13
  br label %219

192:                                              ; preds = %47
  %193 = sext i32 %49 to i64
  %194 = getelementptr inbounds [0 x i32], ptr @Bit, i64 0, i64 %193
  %195 = load i32, ptr %194, align 4, !tbaa !7
  %196 = or i32 %195, %53
  store i32 %196, ptr @NO_ERR_MASK, align 4, !tbaa !7
  %197 = getelementptr inbounds [42 x %struct.term], ptr %2, i64 0, i64 %193, i32 1
  store <8 x i8> <i8 1, i8 47, i8 58, i8 64, i8 91, i8 96, i8 123, i8 127>, ptr %197, align 4, !tbaa !13
  %198 = getelementptr inbounds [42 x %struct.term], ptr %2, i64 0, i64 %193, i32 1, i64 8
  store i8 0, ptr %198, align 4, !tbaa !13
  br label %219

199:                                              ; preds = %47
  %200 = sext i32 %49 to i64
  %201 = getelementptr inbounds [0 x i32], ptr @Bit, i64 0, i64 %200
  %202 = load i32, ptr %201, align 4, !tbaa !7
  %203 = or i32 %202, %53
  store i32 %203, ptr @NO_ERR_MASK, align 4, !tbaa !7
  %204 = getelementptr inbounds [42 x %struct.term], ptr %2, i64 0, i64 %200, i32 1
  store <4 x i8> <i8 10, i8 10, i8 -17, i8 -17>, ptr %204, align 4, !tbaa !13
  %205 = getelementptr inbounds [42 x %struct.term], ptr %2, i64 0, i64 %200, i32 1, i64 4
  store i8 0, ptr %205, align 4, !tbaa !13
  br label %219

206:                                              ; preds = %47
  %207 = icmp eq i32 %50, 1
  %208 = sext i32 %49 to i64
  br i1 %207, label %209, label %213

209:                                              ; preds = %206
  %210 = getelementptr inbounds [0 x i32], ptr @Bit, i64 0, i64 %208
  %211 = load i32, ptr %210, align 4, !tbaa !7
  %212 = or i32 %211, %53
  store i32 %212, ptr @NO_ERR_MASK, align 4, !tbaa !7
  br label %213

213:                                              ; preds = %209, %206
  %214 = phi i32 [ %212, %209 ], [ %53, %206 ]
  %215 = getelementptr inbounds [42 x %struct.term], ptr %2, i64 0, i64 %208
  store i32 0, ptr %215, align 4, !tbaa !57
  %216 = getelementptr inbounds [42 x %struct.term], ptr %2, i64 0, i64 %208, i32 1
  %217 = getelementptr inbounds [42 x %struct.term], ptr %2, i64 0, i64 %208, i32 1, i64 1
  store i8 %59, ptr %217, align 1, !tbaa !13
  store i8 %59, ptr %216, align 4, !tbaa !13
  %218 = getelementptr inbounds [42 x %struct.term], ptr %2, i64 0, i64 %208, i32 1, i64 2
  store i8 0, ptr %218, align 2, !tbaa !13
  br label %219

219:                                              ; preds = %213, %199, %192, %184, %180, %159, %146, %61
  %220 = phi i32 [ %55, %213 ], [ %55, %199 ], [ %55, %192 ], [ %55, %184 ], [ %183, %180 ], [ %165, %159 ], [ %55, %146 ], [ %55, %61 ]
  %221 = phi i32 [ %54, %213 ], [ %54, %199 ], [ %54, %192 ], [ %54, %184 ], [ %173, %180 ], [ 0, %159 ], [ %54, %146 ], [ %54, %61 ]
  %222 = phi i32 [ %214, %213 ], [ %203, %199 ], [ %196, %192 ], [ %188, %184 ], [ %53, %180 ], [ %53, %159 ], [ %88, %146 ], [ %53, %61 ]
  %223 = phi i32 [ %52, %213 ], [ %52, %199 ], [ %52, %192 ], [ %52, %184 ], [ 0, %180 ], [ 1, %159 ], [ %52, %146 ], [ %52, %61 ]
  %224 = phi i32 [ %48, %213 ], [ %48, %199 ], [ %48, %192 ], [ %48, %184 ], [ %48, %180 ], [ %48, %159 ], [ %141, %146 ], [ %48, %61 ]
  %225 = add nsw i32 %49, 1
  %226 = icmp sgt i32 %49, 31
  br i1 %226, label %227, label %230

227:                                              ; preds = %219
  %228 = load ptr, ptr @stderr, align 8, !tbaa !14
  %229 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %228, ptr noundef nonnull @.str.3.100, ptr noundef nonnull @Progname) #27
  tail call void @exit(i32 noundef 2) #28
  unreachable

230:                                              ; preds = %219, %74, %72, %66, %47, %47, %47, %47
  %231 = phi i32 [ %56, %219 ], [ %56, %74 ], [ %56, %72 ], [ %56, %47 ], [ %56, %47 ], [ %56, %47 ], [ %56, %47 ], [ %71, %66 ]
  %232 = phi i32 [ %220, %219 ], [ %55, %74 ], [ %55, %72 ], [ %55, %47 ], [ %55, %47 ], [ %55, %47 ], [ %55, %47 ], [ %55, %66 ]
  %233 = phi i32 [ %221, %219 ], [ %54, %74 ], [ %54, %72 ], [ %54, %47 ], [ %54, %47 ], [ %54, %47 ], [ %54, %47 ], [ %54, %66 ]
  %234 = phi i32 [ %222, %219 ], [ %53, %74 ], [ %53, %72 ], [ %53, %47 ], [ %53, %47 ], [ %53, %47 ], [ %53, %47 ], [ %53, %66 ]
  %235 = phi i32 [ %224, %219 ], [ %48, %74 ], [ %48, %72 ], [ %48, %47 ], [ %48, %47 ], [ %48, %47 ], [ %48, %47 ], [ %48, %66 ]
  %236 = phi i32 [ %225, %219 ], [ %49, %74 ], [ %49, %72 ], [ %49, %47 ], [ %49, %47 ], [ %49, %47 ], [ %49, %47 ], [ %49, %66 ]
  %237 = phi i32 [ %50, %219 ], [ 0, %74 ], [ 1, %72 ], [ %50, %47 ], [ %50, %47 ], [ %50, %47 ], [ %50, %47 ], [ %50, %66 ]
  %238 = phi i32 [ %51, %219 ], [ %75, %74 ], [ %73, %72 ], [ %51, %47 ], [ %51, %47 ], [ %51, %47 ], [ %51, %47 ], [ %51, %66 ]
  %239 = phi i32 [ %223, %219 ], [ %52, %74 ], [ %52, %72 ], [ %52, %47 ], [ %52, %47 ], [ %52, %47 ], [ %52, %47 ], [ %52, %66 ]
  %240 = add nsw i32 %235, 1
  %241 = icmp slt i32 %240, %15
  br i1 %241, label %47, label %242, !llvm.loop !62

242:                                              ; preds = %230
  %.lcssa4 = phi i32 [ %231, %230 ]
  %.lcssa3 = phi i32 [ %232, %230 ]
  %.lcssa2 = phi i32 [ %234, %230 ]
  %.lcssa1 = phi i32 [ %236, %230 ]
  %.lcssa = phi i32 [ %238, %230 ]
  %243 = icmp eq i32 %.lcssa, 0
  br i1 %243, label %247, label %244

244:                                              ; preds = %242
  %245 = load ptr, ptr @stderr, align 8, !tbaa !14
  %246 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %245, ptr noundef nonnull @.str.73, ptr noundef nonnull @Progname) #27
  tail call void @exit(i32 noundef 2) #28
  unreachable

247:                                              ; preds = %242, %41
  %248 = phi i32 [ %.lcssa2, %242 ], [ 0, %41 ]
  %249 = phi i32 [ %.lcssa3, %242 ], [ 0, %41 ]
  %250 = phi i32 [ %.lcssa4, %242 ], [ 0, %41 ]
  %251 = phi i32 [ %.lcssa1, %242 ], [ 1, %41 ]
  %252 = add nsw i32 %251, -1
  %253 = sub i32 33, %251
  %254 = lshr i32 %250, %253
  %255 = lshr i32 %249, %253
  %256 = ashr i32 %248, 1
  %257 = load i32, ptr getelementptr inbounds ([33 x i32], ptr @Bit, i64 0, i64 1), align 4, !tbaa !7
  %258 = xor i32 %256, -1
  %259 = or i32 %257, %258
  %260 = sub i32 32, %251
  %261 = ashr i32 %259, %260
  store i32 %261, ptr @NO_ERR_MASK, align 4, !tbaa !7
  %262 = icmp sgt i32 %251, 32
  %263 = load i32, ptr @Init, align 16, !tbaa !7
  br i1 %262, label %276, label %264

264:                                              ; preds = %247
  %265 = tail call i32 @llvm.smax.i32(i32 %253, i32 1)
  %266 = add nuw i32 %265, 1
  %267 = zext i32 %266 to i64
  br label %268

268:                                              ; preds = %268, %264
  %269 = phi i64 [ 1, %264 ], [ %274, %268 ]
  %270 = phi i32 [ %263, %264 ], [ %273, %268 ]
  %271 = getelementptr inbounds [0 x i32], ptr @Bit, i64 0, i64 %269
  %272 = load i32, ptr %271, align 4, !tbaa !7
  %273 = or i32 %272, %270
  %274 = add nuw nsw i64 %269, 1
  %275 = icmp eq i64 %274, %267
  br i1 %275, label %276, label %268, !llvm.loop !63

276:                                              ; preds = %268, %247
  %277 = phi i32 [ %263, %247 ], [ %273, %268 ]
  %278 = or i32 %277, %255
  store i32 %278, ptr @Init, align 16, !tbaa !7
  %279 = shl i32 %255, 1
  %280 = or i32 %279, 1
  %281 = or i32 %280, %254
  %282 = or i32 %281, %278
  store i32 %282, ptr @Init1, align 4, !tbaa !7
  %283 = load i32, ptr @D_length, align 4, !tbaa !7
  %284 = sub nsw i32 %252, %283
  %285 = shl nsw i32 -1, %284
  %286 = and i32 %285, %280
  store i32 %286, ptr @D_endpos, align 4, !tbaa !7
  %287 = xor i32 %286, %280
  store i32 %287, ptr @endposition, align 4, !tbaa !7
  %288 = icmp sgt i32 %251, 1
  %289 = load i1, ptr @REGEX, align 4
  %290 = sext i32 %253 to i64
  %291 = zext i32 %251 to i64
  br label %292

292:                                              ; preds = %335, %276
  %293 = phi i64 [ 0, %276 ], [ %336, %335 ]
  br i1 %288, label %294, label %335

294:                                              ; preds = %292
  %295 = icmp ne i64 %293, 10
  %296 = select i1 %295, i1 true, i1 %289
  %297 = getelementptr inbounds [0 x i32], ptr @Mask, i64 0, i64 %293
  %298 = trunc i64 %293 to i8
  br label %299

299:                                              ; preds = %332, %294
  %300 = phi i64 [ 1, %294 ], [ %333, %332 ]
  br label %301

301:                                              ; preds = %314, %299
  %302 = phi i64 [ 0, %299 ], [ %315, %314 ]
  %303 = getelementptr inbounds [42 x %struct.term], ptr %2, i64 0, i64 %300, i32 1, i64 %302
  %304 = load i8, ptr %303, align 2, !tbaa !13
  switch i8 %304, label %306 [
    i8 0, label %322
    i8 -18, label %305
  ]

305:                                              ; preds = %301
  br i1 %296, label %316, label %306

306:                                              ; preds = %305, %301
  %307 = zext i8 %304 to i64
  %308 = icmp ult i64 %293, %307
  br i1 %308, label %314, label %309

309:                                              ; preds = %306
  %310 = or i64 %302, 1
  %311 = getelementptr inbounds [42 x %struct.term], ptr %2, i64 0, i64 %300, i32 1, i64 %310
  %312 = load i8, ptr %311, align 1, !tbaa !13
  %313 = icmp ult i8 %312, %298
  br i1 %313, label %314, label %316

314:                                              ; preds = %309, %306
  %315 = add nuw i64 %302, 2
  br label %301, !llvm.loop !64

316:                                              ; preds = %309, %305
  %317 = load i32, ptr %297, align 4, !tbaa !7
  %318 = add nsw i64 %300, %290
  %319 = getelementptr inbounds [0 x i32], ptr @Bit, i64 0, i64 %318
  %320 = load i32, ptr %319, align 4, !tbaa !7
  %321 = or i32 %320, %317
  store i32 %321, ptr %297, align 4, !tbaa !7
  br label %322

322:                                              ; preds = %316, %301
  %323 = getelementptr inbounds [42 x %struct.term], ptr %2, i64 0, i64 %300
  %324 = load i32, ptr %323, align 4, !tbaa !57
  %325 = icmp eq i32 %324, 1
  br i1 %325, label %326, label %332

326:                                              ; preds = %322
  %327 = load i32, ptr %297, align 4, !tbaa !7
  %328 = add nsw i64 %300, %290
  %329 = getelementptr inbounds [0 x i32], ptr @Bit, i64 0, i64 %328
  %330 = load i32, ptr %329, align 4, !tbaa !7
  %331 = xor i32 %330, %327
  store i32 %331, ptr %297, align 4, !tbaa !7
  br label %332

332:                                              ; preds = %326, %322
  %333 = add nuw nsw i64 %300, 1
  %334 = icmp eq i64 %333, %291
  br i1 %334, label %335, label %299, !llvm.loop !65

335:                                              ; preds = %332, %292
  %336 = add nuw nsw i64 %293, 1
  %337 = icmp eq i64 %336, 256
  br i1 %337, label %338, label %292, !llvm.loop !66

338:                                              ; preds = %335
  br i1 %16, label %339, label %360

339:                                              ; preds = %338
  %340 = tail call ptr @__ctype_b_loc() #30
  %341 = load ptr, ptr %340, align 8, !tbaa !14
  br label %342

342:                                              ; preds = %357, %339
  %343 = phi i64 [ 65, %339 ], [ %358, %357 ]
  %344 = getelementptr inbounds i16, ptr %341, i64 %343
  %345 = load i16, ptr %344, align 2, !tbaa !16
  %346 = and i16 %345, 256
  %347 = icmp eq i16 %346, 0
  br i1 %347, label %357, label %348

348:                                              ; preds = %342
  %349 = tail call ptr @__ctype_tolower_loc() #30
  %350 = load ptr, ptr %349, align 8, !tbaa !14
  %351 = getelementptr inbounds i32, ptr %350, i64 %343
  %352 = load i32, ptr %351, align 4, !tbaa !7
  %353 = sext i32 %352 to i64
  %354 = getelementptr inbounds [0 x i32], ptr @Mask, i64 0, i64 %353
  %355 = load i32, ptr %354, align 4, !tbaa !7
  %356 = getelementptr inbounds [0 x i32], ptr @Mask, i64 0, i64 %343
  store i32 %355, ptr %356, align 4, !tbaa !7
  br label %357

357:                                              ; preds = %348, %342
  %358 = add nuw nsw i64 %343, 1
  %359 = icmp eq i64 %358, 91
  br i1 %359, label %360, label %342, !llvm.loop !67

360:                                              ; preds = %357, %338
  call void @llvm.lifetime.end.p0(i64 1512, ptr nonnull %2) #24
  ret i32 %252
}

; Function Attrs: nofree optsize
declare noundef i64 @read(i32 noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: nofree nounwind optsize uwtable
define internal fastcc void @mgrep(i32 noundef %0) unnamed_addr #14 {
  %2 = alloca [17408 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 17408, ptr nonnull %2) #24
  %3 = getelementptr inbounds [17408 x i8], ptr %2, i64 0, i64 1023
  store i8 10, ptr %3, align 1, !tbaa !13
  %4 = getelementptr inbounds i8, ptr %2, i64 1024
  br label %5

5:                                                ; preds = %61, %1
  %6 = phi i32 [ 1023, %1 ], [ %64, %61 ]
  %7 = phi i32 [ undef, %1 ], [ %44, %61 ]
  %8 = phi i32 [ 0, %1 ], [ %46, %61 ]
  %9 = call i64 @read(i32 noundef %0, ptr noundef nonnull %4, i64 noundef 8192) #25
  %10 = trunc i64 %9 to i32
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %69

12:                                               ; preds = %5
  %13 = load i1, ptr @INVERSE, align 4
  %14 = load i1, ptr @COUNT, align 4
  %15 = select i1 %13, i1 %14, i1 false
  br i1 %15, label %16, label %31

16:                                               ; preds = %12
  %17 = load i32, ptr @total_line, align 4, !tbaa !7
  %18 = and i64 %9, 4294967295
  br label %19

19:                                               ; preds = %27, %16
  %20 = phi i64 [ 0, %16 ], [ %29, %27 ]
  %21 = phi i32 [ %17, %16 ], [ %28, %27 ]
  %22 = getelementptr inbounds i8, ptr %4, i64 %20
  %23 = load i8, ptr %22, align 1, !tbaa !13
  %24 = icmp eq i8 %23, 10
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = add nsw i32 %21, 1
  store i32 %26, ptr @total_line, align 4, !tbaa !7
  br label %27

27:                                               ; preds = %25, %19
  %28 = phi i32 [ %21, %19 ], [ %26, %25 ]
  %29 = add nuw nsw i64 %20, 1
  %30 = icmp eq i64 %29, %18
  br i1 %30, label %31, label %19, !llvm.loop !68

31:                                               ; preds = %27, %12
  %32 = add nuw i32 %10, 1023
  %33 = sext i32 %32 to i64
  br label %34

34:                                               ; preds = %34, %31
  %35 = phi i64 [ %41, %34 ], [ %33, %31 ]
  %36 = getelementptr inbounds [17408 x i8], ptr %2, i64 0, i64 %35
  %37 = load i8, ptr %36, align 1, !tbaa !13
  %38 = icmp ne i8 %37, 10
  %39 = icmp sgt i64 %35, 1024
  %40 = and i1 %39, %38
  %41 = add nsw i64 %35, -1
  br i1 %40, label %34, label %42, !llvm.loop !69

42:                                               ; preds = %34
  %.lcssa = phi i64 [ %35, %34 ]
  %43 = getelementptr inbounds [17408 x i8], ptr %2, i64 0, i64 %.lcssa
  %44 = trunc i64 %.lcssa to i32
  %45 = sub nsw i32 %32, %44
  %46 = add nsw i32 %45, 1
  %47 = add nsw i32 %6, -1
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [17408 x i8], ptr %2, i64 0, i64 %48
  store i8 10, ptr %49, align 1, !tbaa !13
  %50 = load i32, ptr @SHORT, align 4, !tbaa !7
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %42
  call fastcc void @m_short(ptr noundef nonnull %2, i32 noundef %6, i32 noundef %44) #26
  br label %54

53:                                               ; preds = %42
  call fastcc void @monkey1(ptr noundef nonnull %2, i32 noundef %6, i32 noundef %44) #26
  br label %54

54:                                               ; preds = %53, %52
  %55 = load i1, ptr @FILENAMEONLY, align 4
  %56 = load i32, ptr @num_of_matched, align 4
  %57 = icmp ne i32 %56, 0
  %58 = select i1 %55, i1 %57, i1 false
  br i1 %58, label %59, label %61

59:                                               ; preds = %54
  %60 = call i32 @puts(ptr nonnull dereferenceable(1) @CurrentFileName)
  br label %79

61:                                               ; preds = %54
  %62 = sub nsw i32 1023, %45
  %63 = icmp sgt i32 %45, 1023
  %64 = select i1 %63, i32 1, i32 %62
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8, ptr %2, i64 %65
  %67 = sext i32 %46 to i64
  %68 = call ptr @strncpy(ptr noundef nonnull %66, ptr noundef nonnull %43, i64 noundef %67) #25
  br label %5, !llvm.loop !70

69:                                               ; preds = %5
  %.lcssa5 = phi i32 [ %6, %5 ]
  %.lcssa3 = phi i32 [ %7, %5 ]
  %.lcssa1 = phi i32 [ %8, %5 ]
  store i8 10, ptr %4, align 16, !tbaa !13
  %70 = add nsw i32 %.lcssa5, -1
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [17408 x i8], ptr %2, i64 0, i64 %71
  store i8 10, ptr %72, align 1, !tbaa !13
  %73 = icmp sgt i32 %.lcssa1, 1
  br i1 %73, label %74, label %79

74:                                               ; preds = %69
  %75 = load i32, ptr @SHORT, align 4, !tbaa !7
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %74
  call fastcc void @m_short(ptr noundef nonnull %2, i32 noundef %.lcssa5, i32 noundef %.lcssa3) #26
  br label %79

78:                                               ; preds = %74
  call fastcc void @monkey1(ptr noundef nonnull %2, i32 noundef %.lcssa5, i32 noundef %.lcssa3) #26
  br label %79

79:                                               ; preds = %78, %77, %69, %59
  call void @llvm.lifetime.end.p0(i64 17408, ptr nonnull %2) #24
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @sgrep(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #12 {
  %5 = alloca [2048 x [2 x i32]], align 16
  %6 = alloca [21 x i32], align 16
  %7 = alloca [21 x i32], align 16
  %8 = alloca i32, align 4
  %9 = alloca [256 x i8], align 16
  %10 = alloca [10496 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 10496, ptr nonnull %10) #24
  %11 = load i8, ptr %0, align 1, !tbaa !13
  switch i8 %11, label %13 [
    i8 94, label %12
    i8 36, label %12
  ]

12:                                               ; preds = %4, %4
  store i8 10, ptr %0, align 1, !tbaa !13
  br label %13

13:                                               ; preds = %12, %4
  %14 = add nsw i32 %1, -1
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i8, ptr %0, i64 %15
  %17 = load i8, ptr %16, align 1, !tbaa !13
  switch i8 %17, label %19 [
    i8 94, label %18
    i8 36, label %18
  ]

18:                                               ; preds = %13, %13
  store i8 10, ptr %16, align 1, !tbaa !13
  br label %19

19:                                               ; preds = %18, %13
  %20 = phi i8 [ 10, %18 ], [ %17, %13 ]
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %9)
  br label %21

21:                                               ; preds = %21, %19
  %22 = phi i64 [ 0, %19 ], [ %25, %21 ]
  %23 = phi <16 x i8> [ <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15>, %19 ], [ %26, %21 ]
  %24 = getelementptr inbounds [256 x i8], ptr @TR, i64 0, i64 %22
  store <16 x i8> %23, ptr %24, align 16, !tbaa !13
  %25 = add nuw nsw i64 %22, 16
  %26 = add <16 x i8> %23, <i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16>
  %27 = icmp eq i64 %25, 256
  br i1 %27, label %28, label %21, !llvm.loop !71

28:                                               ; preds = %21
  %29 = load i1, ptr @NOUPPER, align 4
  br i1 %29, label %30, label %135

30:                                               ; preds = %132, %28
  %31 = phi i64 [ %133, %132 ], [ 0, %28 ]
  %32 = trunc i64 %31 to i8
  %33 = insertelement <16 x i64> poison, i64 %31, i64 0
  %34 = shufflevector <16 x i64> %33, <16 x i64> poison, <16 x i32> zeroinitializer
  %35 = or <16 x i64> %34, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>
  %36 = icmp ult <16 x i64> %35, <i64 26, i64 26, i64 26, i64 26, i64 26, i64 26, i64 26, i64 26, i64 26, i64 26, i64 26, i64 26, i64 26, i64 26, i64 26, i64 26>
  %37 = extractelement <16 x i1> %36, i64 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %30
  %39 = add nuw nsw i64 %31, 65
  %40 = getelementptr inbounds [256 x i8], ptr @TR, i64 0, i64 %39
  %41 = add i8 %32, 97
  store i8 %41, ptr %40, align 1, !tbaa !13
  br label %42

42:                                               ; preds = %38, %30
  %43 = extractelement <16 x i1> %36, i64 1
  br i1 %43, label %44, label %48

44:                                               ; preds = %42
  %45 = add nuw nsw i64 %31, 66
  %46 = getelementptr inbounds [256 x i8], ptr @TR, i64 0, i64 %45
  %47 = add i8 %32, 98
  store i8 %47, ptr %46, align 2, !tbaa !13
  br label %48

48:                                               ; preds = %44, %42
  %49 = extractelement <16 x i1> %36, i64 2
  br i1 %49, label %50, label %54

50:                                               ; preds = %48
  %51 = add nuw nsw i64 %31, 67
  %52 = getelementptr inbounds [256 x i8], ptr @TR, i64 0, i64 %51
  %53 = add i8 %32, 99
  store i8 %53, ptr %52, align 1, !tbaa !13
  br label %54

54:                                               ; preds = %50, %48
  %55 = extractelement <16 x i1> %36, i64 3
  br i1 %55, label %56, label %60

56:                                               ; preds = %54
  %57 = add nuw nsw i64 %31, 68
  %58 = getelementptr inbounds [256 x i8], ptr @TR, i64 0, i64 %57
  %59 = add i8 %32, 100
  store i8 %59, ptr %58, align 4, !tbaa !13
  br label %60

60:                                               ; preds = %56, %54
  %61 = extractelement <16 x i1> %36, i64 4
  br i1 %61, label %62, label %66

62:                                               ; preds = %60
  %63 = add nuw nsw i64 %31, 69
  %64 = getelementptr inbounds [256 x i8], ptr @TR, i64 0, i64 %63
  %65 = add i8 %32, 101
  store i8 %65, ptr %64, align 1, !tbaa !13
  br label %66

66:                                               ; preds = %62, %60
  %67 = extractelement <16 x i1> %36, i64 5
  br i1 %67, label %68, label %72

68:                                               ; preds = %66
  %69 = add nuw nsw i64 %31, 70
  %70 = getelementptr inbounds [256 x i8], ptr @TR, i64 0, i64 %69
  %71 = add i8 %32, 102
  store i8 %71, ptr %70, align 2, !tbaa !13
  br label %72

72:                                               ; preds = %68, %66
  %73 = extractelement <16 x i1> %36, i64 6
  br i1 %73, label %74, label %78

74:                                               ; preds = %72
  %75 = add nuw nsw i64 %31, 71
  %76 = getelementptr inbounds [256 x i8], ptr @TR, i64 0, i64 %75
  %77 = add i8 %32, 103
  store i8 %77, ptr %76, align 1, !tbaa !13
  br label %78

78:                                               ; preds = %74, %72
  %79 = extractelement <16 x i1> %36, i64 7
  br i1 %79, label %80, label %84

80:                                               ; preds = %78
  %81 = add nuw nsw i64 %31, 72
  %82 = getelementptr inbounds [256 x i8], ptr @TR, i64 0, i64 %81
  %83 = add i8 %32, 104
  store i8 %83, ptr %82, align 8, !tbaa !13
  br label %84

84:                                               ; preds = %80, %78
  %85 = extractelement <16 x i1> %36, i64 8
  br i1 %85, label %86, label %90

86:                                               ; preds = %84
  %87 = add nuw nsw i64 %31, 73
  %88 = getelementptr inbounds [256 x i8], ptr @TR, i64 0, i64 %87
  %89 = add i8 %32, 105
  store i8 %89, ptr %88, align 1, !tbaa !13
  br label %90

90:                                               ; preds = %86, %84
  %91 = extractelement <16 x i1> %36, i64 9
  br i1 %91, label %92, label %96

92:                                               ; preds = %90
  %93 = add nuw nsw i64 %31, 74
  %94 = getelementptr inbounds [256 x i8], ptr @TR, i64 0, i64 %93
  %95 = add i8 %32, 106
  store i8 %95, ptr %94, align 2, !tbaa !13
  br label %96

96:                                               ; preds = %92, %90
  %97 = extractelement <16 x i1> %36, i64 10
  br i1 %97, label %98, label %102

98:                                               ; preds = %96
  %99 = add nuw nsw i64 %31, 75
  %100 = getelementptr inbounds [256 x i8], ptr @TR, i64 0, i64 %99
  %101 = add i8 %32, 107
  store i8 %101, ptr %100, align 1, !tbaa !13
  br label %102

102:                                              ; preds = %98, %96
  %103 = extractelement <16 x i1> %36, i64 11
  br i1 %103, label %104, label %108

104:                                              ; preds = %102
  %105 = add nuw nsw i64 %31, 76
  %106 = getelementptr inbounds [256 x i8], ptr @TR, i64 0, i64 %105
  %107 = add i8 %32, 108
  store i8 %107, ptr %106, align 4, !tbaa !13
  br label %108

108:                                              ; preds = %104, %102
  %109 = extractelement <16 x i1> %36, i64 12
  br i1 %109, label %110, label %114

110:                                              ; preds = %108
  %111 = add nuw nsw i64 %31, 77
  %112 = getelementptr inbounds [256 x i8], ptr @TR, i64 0, i64 %111
  %113 = add i8 %32, 109
  store i8 %113, ptr %112, align 1, !tbaa !13
  br label %114

114:                                              ; preds = %110, %108
  %115 = extractelement <16 x i1> %36, i64 13
  br i1 %115, label %116, label %120

116:                                              ; preds = %114
  %117 = add nuw nsw i64 %31, 78
  %118 = getelementptr inbounds [256 x i8], ptr @TR, i64 0, i64 %117
  %119 = add i8 %32, 110
  store i8 %119, ptr %118, align 2, !tbaa !13
  br label %120

120:                                              ; preds = %116, %114
  %121 = extractelement <16 x i1> %36, i64 14
  br i1 %121, label %122, label %126

122:                                              ; preds = %120
  %123 = add nuw nsw i64 %31, 79
  %124 = getelementptr inbounds [256 x i8], ptr @TR, i64 0, i64 %123
  %125 = add i8 %32, 111
  store i8 %125, ptr %124, align 1, !tbaa !13
  br label %126

126:                                              ; preds = %122, %120
  %127 = extractelement <16 x i1> %36, i64 15
  br i1 %127, label %128, label %132

128:                                              ; preds = %126
  %129 = add nuw nsw i64 %31, 80
  %130 = getelementptr inbounds [256 x i8], ptr @TR, i64 0, i64 %129
  %131 = add i8 %32, 112
  store i8 %131, ptr %130, align 16, !tbaa !13
  br label %132

132:                                              ; preds = %128, %126
  %133 = add nuw nsw i64 %31, 16
  %134 = icmp eq i64 %133, 32
  br i1 %134, label %135, label %30, !llvm.loop !72

135:                                              ; preds = %132, %28
  %136 = load i1, ptr @WORDBOUND, align 4
  br i1 %136, label %137, label %187

137:                                              ; preds = %135
  %138 = tail call ptr @__ctype_b_loc() #30
  %139 = load ptr, ptr %138, align 8, !tbaa !14
  br label %140

140:                                              ; preds = %184, %137
  %141 = phi i64 [ 0, %137 ], [ %185, %184 ]
  %142 = getelementptr inbounds i16, ptr %139, i64 %141
  %143 = load <8 x i16>, ptr %142, align 2, !tbaa !16
  %144 = and <8 x i16> %143, <i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8>
  %145 = icmp eq <8 x i16> %144, zeroinitializer
  %146 = extractelement <8 x i1> %145, i64 0
  br i1 %146, label %147, label %149

147:                                              ; preds = %140
  %148 = getelementptr inbounds [256 x i8], ptr @TR, i64 0, i64 %141
  store i8 -128, ptr %148, align 8, !tbaa !13
  br label %149

149:                                              ; preds = %147, %140
  %150 = extractelement <8 x i1> %145, i64 1
  br i1 %150, label %151, label %154

151:                                              ; preds = %149
  %152 = or i64 %141, 1
  %153 = getelementptr inbounds [256 x i8], ptr @TR, i64 0, i64 %152
  store i8 -128, ptr %153, align 1, !tbaa !13
  br label %154

154:                                              ; preds = %151, %149
  %155 = extractelement <8 x i1> %145, i64 2
  br i1 %155, label %156, label %159

156:                                              ; preds = %154
  %157 = or i64 %141, 2
  %158 = getelementptr inbounds [256 x i8], ptr @TR, i64 0, i64 %157
  store i8 -128, ptr %158, align 2, !tbaa !13
  br label %159

159:                                              ; preds = %156, %154
  %160 = extractelement <8 x i1> %145, i64 3
  br i1 %160, label %161, label %164

161:                                              ; preds = %159
  %162 = or i64 %141, 3
  %163 = getelementptr inbounds [256 x i8], ptr @TR, i64 0, i64 %162
  store i8 -128, ptr %163, align 1, !tbaa !13
  br label %164

164:                                              ; preds = %161, %159
  %165 = extractelement <8 x i1> %145, i64 4
  br i1 %165, label %166, label %169

166:                                              ; preds = %164
  %167 = or i64 %141, 4
  %168 = getelementptr inbounds [256 x i8], ptr @TR, i64 0, i64 %167
  store i8 -128, ptr %168, align 4, !tbaa !13
  br label %169

169:                                              ; preds = %166, %164
  %170 = extractelement <8 x i1> %145, i64 5
  br i1 %170, label %171, label %174

171:                                              ; preds = %169
  %172 = or i64 %141, 5
  %173 = getelementptr inbounds [256 x i8], ptr @TR, i64 0, i64 %172
  store i8 -128, ptr %173, align 1, !tbaa !13
  br label %174

174:                                              ; preds = %171, %169
  %175 = extractelement <8 x i1> %145, i64 6
  br i1 %175, label %176, label %179

176:                                              ; preds = %174
  %177 = or i64 %141, 6
  %178 = getelementptr inbounds [256 x i8], ptr @TR, i64 0, i64 %177
  store i8 -128, ptr %178, align 2, !tbaa !13
  br label %179

179:                                              ; preds = %176, %174
  %180 = extractelement <8 x i1> %145, i64 7
  br i1 %180, label %181, label %184

181:                                              ; preds = %179
  %182 = or i64 %141, 7
  %183 = getelementptr inbounds [256 x i8], ptr @TR, i64 0, i64 %182
  store i8 -128, ptr %183, align 1, !tbaa !13
  br label %184

184:                                              ; preds = %181, %179
  %185 = add nuw nsw i64 %141, 8
  %186 = icmp eq i64 %185, 128
  br i1 %186, label %187, label %140, !llvm.loop !73

187:                                              ; preds = %184, %135
  %188 = load i1, ptr @WHOLELINE, align 4
  br i1 %188, label %189, label %198

189:                                              ; preds = %187
  %190 = sext i32 %1 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %9, ptr align 1 %0, i64 %190, i1 false)
  store i8 10, ptr %0, align 1, !tbaa !13
  %191 = getelementptr inbounds i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %191, ptr nonnull align 16 %9, i64 %190, i1 false)
  %192 = add nsw i32 %1, 1
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i8, ptr %0, i64 %193
  store i8 10, ptr %194, align 1, !tbaa !13
  %195 = add nsw i32 %1, 2
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i8, ptr %0, i64 %196
  store i8 0, ptr %197, align 1, !tbaa !13
  br label %198

198:                                              ; preds = %189, %187
  %199 = phi i8 [ %20, %187 ], [ 10, %189 ]
  %200 = phi i32 [ 2048, %187 ], [ 2047, %189 ]
  %201 = phi i32 [ %1, %187 ], [ %195, %189 ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %9)
  %202 = getelementptr inbounds [10496 x i8], ptr %10, i64 0, i64 2047
  store i8 10, ptr %202, align 1, !tbaa !13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %10, i8 0, i64 1024, i1 false), !tbaa !13
  %203 = icmp sgt i32 %201, 255
  br i1 %203, label %204, label %207

204:                                              ; preds = %198
  %205 = load ptr, ptr @stderr, align 8, !tbaa !14
  %206 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %205, ptr noundef nonnull @.str.3.100, ptr noundef nonnull @Progname) #27
  tail call void @exit(i32 noundef 2) #28
  unreachable

207:                                              ; preds = %198
  %208 = icmp eq i32 %3, 0
  br i1 %208, label %209, label %424

209:                                              ; preds = %207
  %210 = icmp sgt i32 %201, 20
  br i1 %210, label %211, label %371

211:                                              ; preds = %209
  %212 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #29
  %213 = trunc i64 %212 to i8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) @SHIFT_2, i8 %213, i64 4096, i1 false), !tbaa !13
  %214 = trunc i64 %212 to i32
  %215 = add i32 %214, -1
  %216 = icmp sgt i32 %214, 1
  br i1 %216, label %217, label %364

217:                                              ; preds = %211
  %218 = trunc i32 %215 to i8
  %219 = zext i32 %215 to i64
  %220 = insertelement <16 x i32> poison, i32 %214, i64 0
  %221 = shufflevector <16 x i32> %220, <16 x i32> poison, <16 x i32> zeroinitializer
  br label %222

222:                                              ; preds = %347, %217
  %223 = phi i64 [ %219, %217 ], [ %332, %347 ]
  %224 = getelementptr inbounds i8, ptr %0, i64 %223
  %225 = load i8, ptr %224, align 1, !tbaa !13
  %226 = zext i8 %225 to i32
  %227 = shl nuw nsw i32 %226, 3
  %228 = zext i32 %227 to i64
  %229 = or i64 %228, 1
  %230 = or i64 %228, 2
  %231 = or i64 %228, 3
  %232 = or i64 %228, 4
  %233 = or i64 %228, 5
  %234 = or i64 %228, 6
  %235 = or i64 %228, 7
  %236 = add nuw nsw i64 %228, 8
  %237 = add nuw nsw i64 %228, 9
  %238 = add nuw nsw i64 %228, 10
  %239 = add nuw nsw i64 %228, 11
  %240 = add nuw nsw i64 %228, 12
  %241 = add nuw nsw i64 %228, 13
  %242 = add nuw nsw i64 %228, 14
  %243 = add nuw nsw i64 %228, 15
  br label %244

244:                                              ; preds = %328, %222
  %245 = phi i64 [ 0, %222 ], [ %329, %328 ]
  %246 = add nuw nsw i64 %245, %228
  %247 = getelementptr inbounds [4096 x i8], ptr @SHIFT_2, i64 0, i64 %246
  %248 = load <16 x i8>, ptr %247, align 8, !tbaa !13
  %249 = zext <16 x i8> %248 to <16 x i32>
  %250 = icmp eq <16 x i32> %221, %249
  %251 = extractelement <16 x i1> %250, i64 0
  br i1 %251, label %252, label %253

252:                                              ; preds = %244
  store i8 %218, ptr %247, align 8, !tbaa !13
  br label %253

253:                                              ; preds = %252, %244
  %254 = extractelement <16 x i1> %250, i64 1
  br i1 %254, label %255, label %258

255:                                              ; preds = %253
  %256 = add nuw nsw i64 %229, %245
  %257 = getelementptr inbounds [4096 x i8], ptr @SHIFT_2, i64 0, i64 %256
  store i8 %218, ptr %257, align 1, !tbaa !13
  br label %258

258:                                              ; preds = %255, %253
  %259 = extractelement <16 x i1> %250, i64 2
  br i1 %259, label %260, label %263

260:                                              ; preds = %258
  %261 = add nuw nsw i64 %230, %245
  %262 = getelementptr inbounds [4096 x i8], ptr @SHIFT_2, i64 0, i64 %261
  store i8 %218, ptr %262, align 2, !tbaa !13
  br label %263

263:                                              ; preds = %260, %258
  %264 = extractelement <16 x i1> %250, i64 3
  br i1 %264, label %265, label %268

265:                                              ; preds = %263
  %266 = add nuw nsw i64 %231, %245
  %267 = getelementptr inbounds [4096 x i8], ptr @SHIFT_2, i64 0, i64 %266
  store i8 %218, ptr %267, align 1, !tbaa !13
  br label %268

268:                                              ; preds = %265, %263
  %269 = extractelement <16 x i1> %250, i64 4
  br i1 %269, label %270, label %273

270:                                              ; preds = %268
  %271 = add nuw nsw i64 %232, %245
  %272 = getelementptr inbounds [4096 x i8], ptr @SHIFT_2, i64 0, i64 %271
  store i8 %218, ptr %272, align 4, !tbaa !13
  br label %273

273:                                              ; preds = %270, %268
  %274 = extractelement <16 x i1> %250, i64 5
  br i1 %274, label %275, label %278

275:                                              ; preds = %273
  %276 = add nuw nsw i64 %233, %245
  %277 = getelementptr inbounds [4096 x i8], ptr @SHIFT_2, i64 0, i64 %276
  store i8 %218, ptr %277, align 1, !tbaa !13
  br label %278

278:                                              ; preds = %275, %273
  %279 = extractelement <16 x i1> %250, i64 6
  br i1 %279, label %280, label %283

280:                                              ; preds = %278
  %281 = add nuw nsw i64 %234, %245
  %282 = getelementptr inbounds [4096 x i8], ptr @SHIFT_2, i64 0, i64 %281
  store i8 %218, ptr %282, align 2, !tbaa !13
  br label %283

283:                                              ; preds = %280, %278
  %284 = extractelement <16 x i1> %250, i64 7
  br i1 %284, label %285, label %288

285:                                              ; preds = %283
  %286 = add nuw nsw i64 %235, %245
  %287 = getelementptr inbounds [4096 x i8], ptr @SHIFT_2, i64 0, i64 %286
  store i8 %218, ptr %287, align 1, !tbaa !13
  br label %288

288:                                              ; preds = %285, %283
  %289 = extractelement <16 x i1> %250, i64 8
  br i1 %289, label %290, label %293

290:                                              ; preds = %288
  %291 = add nuw nsw i64 %236, %245
  %292 = getelementptr inbounds [4096 x i8], ptr @SHIFT_2, i64 0, i64 %291
  store i8 %218, ptr %292, align 8, !tbaa !13
  br label %293

293:                                              ; preds = %290, %288
  %294 = extractelement <16 x i1> %250, i64 9
  br i1 %294, label %295, label %298

295:                                              ; preds = %293
  %296 = add nuw nsw i64 %237, %245
  %297 = getelementptr inbounds [4096 x i8], ptr @SHIFT_2, i64 0, i64 %296
  store i8 %218, ptr %297, align 1, !tbaa !13
  br label %298

298:                                              ; preds = %295, %293
  %299 = extractelement <16 x i1> %250, i64 10
  br i1 %299, label %300, label %303

300:                                              ; preds = %298
  %301 = add nuw nsw i64 %238, %245
  %302 = getelementptr inbounds [4096 x i8], ptr @SHIFT_2, i64 0, i64 %301
  store i8 %218, ptr %302, align 2, !tbaa !13
  br label %303

303:                                              ; preds = %300, %298
  %304 = extractelement <16 x i1> %250, i64 11
  br i1 %304, label %305, label %308

305:                                              ; preds = %303
  %306 = add nuw nsw i64 %239, %245
  %307 = getelementptr inbounds [4096 x i8], ptr @SHIFT_2, i64 0, i64 %306
  store i8 %218, ptr %307, align 1, !tbaa !13
  br label %308

308:                                              ; preds = %305, %303
  %309 = extractelement <16 x i1> %250, i64 12
  br i1 %309, label %310, label %313

310:                                              ; preds = %308
  %311 = add nuw nsw i64 %240, %245
  %312 = getelementptr inbounds [4096 x i8], ptr @SHIFT_2, i64 0, i64 %311
  store i8 %218, ptr %312, align 4, !tbaa !13
  br label %313

313:                                              ; preds = %310, %308
  %314 = extractelement <16 x i1> %250, i64 13
  br i1 %314, label %315, label %318

315:                                              ; preds = %313
  %316 = add nuw nsw i64 %241, %245
  %317 = getelementptr inbounds [4096 x i8], ptr @SHIFT_2, i64 0, i64 %316
  store i8 %218, ptr %317, align 1, !tbaa !13
  br label %318

318:                                              ; preds = %315, %313
  %319 = extractelement <16 x i1> %250, i64 14
  br i1 %319, label %320, label %323

320:                                              ; preds = %318
  %321 = add nuw nsw i64 %242, %245
  %322 = getelementptr inbounds [4096 x i8], ptr @SHIFT_2, i64 0, i64 %321
  store i8 %218, ptr %322, align 2, !tbaa !13
  br label %323

323:                                              ; preds = %320, %318
  %324 = extractelement <16 x i1> %250, i64 15
  br i1 %324, label %325, label %328

325:                                              ; preds = %323
  %326 = add nuw nsw i64 %243, %245
  %327 = getelementptr inbounds [4096 x i8], ptr @SHIFT_2, i64 0, i64 %326
  store i8 %218, ptr %327, align 1, !tbaa !13
  br label %328

328:                                              ; preds = %325, %323
  %329 = add nuw nsw i64 %245, 16
  %330 = icmp eq i64 %329, 256
  br i1 %330, label %331, label %244, !llvm.loop !74

331:                                              ; preds = %328
  %332 = add nsw i64 %223, -1
  %333 = and i64 %332, 4294967295
  %334 = getelementptr inbounds i8, ptr %0, i64 %333
  %335 = load i8, ptr %334, align 1, !tbaa !13
  %336 = zext i8 %335 to i32
  %337 = add nuw nsw i32 %227, %336
  %338 = zext i32 %337 to i64
  %339 = getelementptr inbounds [4096 x i8], ptr @SHIFT_2, i64 0, i64 %338
  %340 = load i8, ptr %339, align 1, !tbaa !13
  %341 = zext i8 %340 to i32
  %342 = icmp sgt i32 %215, %341
  br i1 %342, label %347, label %343

343:                                              ; preds = %331
  %344 = trunc i64 %223 to i32
  %345 = sub i32 %215, %344
  %346 = trunc i32 %345 to i8
  store i8 %346, ptr %339, align 1, !tbaa !13
  br label %347

347:                                              ; preds = %343, %331
  %348 = icmp sgt i64 %223, 1
  br i1 %348, label %222, label %349, !llvm.loop !75

349:                                              ; preds = %347
  store i32 %215, ptr @shift_1, align 4, !tbaa !7
  %350 = add nsw i32 %214, -2
  %351 = getelementptr inbounds i8, ptr %0, i64 %219
  %352 = load i8, ptr %351, align 1, !tbaa !13
  br label %353

353:                                              ; preds = %361, %349
  %354 = phi i32 [ %350, %349 ], [ %362, %361 ]
  %355 = zext i32 %354 to i64
  %356 = getelementptr inbounds i8, ptr %0, i64 %355
  %357 = load i8, ptr %356, align 1, !tbaa !13
  %358 = icmp eq i8 %357, %352
  br i1 %358, label %359, label %361

359:                                              ; preds = %353
  %.lcssa15 = phi i32 [ %354, %353 ]
  %360 = sub nsw i32 %215, %.lcssa15
  br label %364

361:                                              ; preds = %353
  %362 = add nsw i32 %354, -1
  %363 = icmp eq i32 %354, 0
  br i1 %363, label %366, label %353, !llvm.loop !76

364:                                              ; preds = %359, %211
  %365 = phi i32 [ %360, %359 ], [ %215, %211 ]
  store i32 %365, ptr @shift_1, align 4, !tbaa !7
  br label %366

366:                                              ; preds = %364, %361
  %367 = phi i32 [ %365, %364 ], [ %215, %361 ]
  %368 = icmp eq i32 %367, 0
  br i1 %368, label %369, label %370

369:                                              ; preds = %366
  store i32 1, ptr @shift_1, align 4, !tbaa !7
  br label %370

370:                                              ; preds = %369, %366
  store i8 0, ptr @SHIFT_2, align 16, !tbaa !13
  br label %684

371:                                              ; preds = %209
  %372 = trunc i32 %201 to i8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) @SHIFT, i8 %372, i64 256, i1 false), !tbaa !13
  %373 = add i32 %201, -1
  %374 = icmp sgt i32 %201, 0
  br i1 %374, label %375, label %420

375:                                              ; preds = %371
  %376 = zext i32 %373 to i64
  br label %377

377:                                              ; preds = %393, %375
  %378 = phi i64 [ %376, %375 ], [ %394, %393 ]
  %379 = getelementptr inbounds i8, ptr %0, i64 %378
  %380 = load i8, ptr %379, align 1, !tbaa !13
  %381 = zext i8 %380 to i64
  %382 = getelementptr inbounds [256 x i8], ptr @TR, i64 0, i64 %381
  %383 = load i8, ptr %382, align 1, !tbaa !13
  %384 = zext i8 %383 to i64
  %385 = getelementptr inbounds [256 x i8], ptr @SHIFT, i64 0, i64 %384
  %386 = load i8, ptr %385, align 1, !tbaa !13
  %387 = zext i8 %386 to i32
  %388 = icmp sgt i32 %373, %387
  br i1 %388, label %393, label %389

389:                                              ; preds = %377
  %390 = trunc i64 %378 to i32
  %391 = sub i32 %373, %390
  %392 = trunc i32 %391 to i8
  store i8 %392, ptr %385, align 1, !tbaa !13
  br label %393

393:                                              ; preds = %389, %377
  %394 = add nsw i64 %378, -1
  %395 = icmp sgt i64 %378, 0
  br i1 %395, label %377, label %396, !llvm.loop !77

396:                                              ; preds = %393
  store i32 %373, ptr @shift_1, align 4, !tbaa !7
  %397 = zext i8 %199 to i64
  %398 = getelementptr inbounds [256 x i8], ptr @TR, i64 0, i64 %397
  %399 = load i8, ptr %398, align 1, !tbaa !13
  %400 = icmp sgt i32 %201, 1
  br i1 %400, label %401, label %417

401:                                              ; preds = %396
  %402 = add nsw i32 %201, -2
  br label %403

403:                                              ; preds = %414, %401
  %404 = phi i32 [ %415, %414 ], [ %402, %401 ]
  %405 = zext i32 %404 to i64
  %406 = getelementptr inbounds i8, ptr %0, i64 %405
  %407 = load i8, ptr %406, align 1, !tbaa !13
  %408 = zext i8 %407 to i64
  %409 = getelementptr inbounds [256 x i8], ptr @TR, i64 0, i64 %408
  %410 = load i8, ptr %409, align 1, !tbaa !13
  %411 = icmp eq i8 %410, %399
  br i1 %411, label %412, label %414

412:                                              ; preds = %403
  %.lcssa16 = phi i32 [ %404, %403 ]
  %413 = sub nsw i32 %373, %.lcssa16
  store i32 %413, ptr @shift_1, align 4, !tbaa !7
  br label %417

414:                                              ; preds = %403
  %415 = add nsw i32 %404, -1
  %416 = icmp eq i32 %404, 0
  br i1 %416, label %417, label %403, !llvm.loop !78

417:                                              ; preds = %414, %412, %396
  %418 = phi i32 [ %373, %396 ], [ %413, %412 ], [ %373, %414 ]
  %419 = icmp eq i32 %418, 0
  br i1 %419, label %420, label %422

420:                                              ; preds = %417, %371
  %421 = phi i32 [ %373, %371 ], [ 1, %417 ]
  store i32 %421, ptr @shift_1, align 4, !tbaa !7
  br label %422

422:                                              ; preds = %420, %417
  br i1 %29, label %423, label %680

423:                                              ; preds = %422
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(26) getelementptr inbounds ([256 x i8], ptr @SHIFT, i64 0, i64 65), ptr noundef nonnull align 1 dereferenceable(26) getelementptr inbounds ([256 x i8], ptr @SHIFT, i64 0, i64 97), i64 26, i1 false), !tbaa !13
  br label %680

424:                                              ; preds = %207
  %425 = load i1, ptr @DNA, align 4
  br i1 %425, label %426, label %494

426:                                              ; preds = %424
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) @char_map, i8 0, i64 256, i1 false), !tbaa !13
  store i8 4, ptr getelementptr inbounds ([256 x i8], ptr @char_map, i64 0, i64 65), align 1, !tbaa !13
  store i8 4, ptr getelementptr inbounds ([256 x i8], ptr @char_map, i64 0, i64 97), align 1, !tbaa !13
  store i8 1, ptr getelementptr inbounds ([256 x i8], ptr @char_map, i64 0, i64 103), align 1, !tbaa !13
  store i8 2, ptr getelementptr inbounds ([256 x i8], ptr @char_map, i64 0, i64 116), align 4, !tbaa !13
  store i8 3, ptr getelementptr inbounds ([256 x i8], ptr @char_map, i64 0, i64 99), align 1, !tbaa !13
  store i8 5, ptr getelementptr inbounds ([256 x i8], ptr @char_map, i64 0, i64 110), align 2, !tbaa !13
  %427 = sdiv i32 %201, 2
  %428 = add nsw i32 %427, %201
  %429 = icmp sgt i32 %428, 4
  br i1 %429, label %430, label %440

430:                                              ; preds = %430, %426
  %431 = phi i32 [ %433, %430 ], [ 4, %426 ]
  %432 = phi i32 [ %434, %430 ], [ 1, %426 ]
  %433 = shl nsw i32 %431, 2
  %434 = add nuw nsw i32 %432, 1
  %435 = icmp slt i32 %433, %428
  br i1 %435, label %430, label %436, !llvm.loop !79

436:                                              ; preds = %430
  %.lcssa20 = phi i32 [ %434, %430 ]
  %437 = trunc i32 %.lcssa20 to i8
  store i32 1, ptr @Hashmask, align 4, !tbaa !7
  %438 = and i32 %.lcssa20, 255
  %439 = icmp eq i32 %438, 0
  br i1 %439, label %456, label %440

440:                                              ; preds = %436, %426
  %441 = phi i8 [ %437, %436 ], [ 1, %426 ]
  %442 = phi i32 [ %438, %436 ], [ 1, %426 ]
  %443 = mul nuw nsw i32 %442, 3
  br label %444

444:                                              ; preds = %444, %440
  %445 = phi i32 [ %449, %444 ], [ 1, %440 ]
  %446 = phi i32 [ %448, %444 ], [ 1, %440 ]
  %447 = shl i32 %446, 1
  %448 = or i32 %447, 1
  %449 = add nuw nsw i32 %445, 1
  %450 = icmp eq i32 %449, %443
  br i1 %450, label %451, label %444, !llvm.loop !80

451:                                              ; preds = %444
  %.lcssa19 = phi i32 [ %447, %444 ]
  %.lcssa18 = phi i32 [ %448, %444 ]
  store i32 %.lcssa18, ptr @Hashmask, align 4, !tbaa !7
  %452 = add i32 %.lcssa19, 2
  %453 = zext i32 %452 to i64
  %454 = zext i32 %.lcssa18 to i64
  %455 = add nuw nsw i64 %454, 1
  br label %456

456:                                              ; preds = %451, %436
  %457 = phi i8 [ %441, %451 ], [ %437, %436 ]
  %458 = phi i64 [ %455, %451 ], [ 2, %436 ]
  %459 = phi i64 [ %453, %451 ], [ 2, %436 ]
  %460 = tail call noalias ptr @malloc(i64 noundef %459) #31
  store ptr %460, ptr @MEMBER_D, align 8, !tbaa !14
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %460, i8 0, i64 %458, i1 false), !tbaa !13
  %461 = icmp eq i8 %457, 0
  br i1 %461, label %680, label %462

462:                                              ; preds = %456
  %463 = sext i32 %201 to i64
  %464 = zext i8 %457 to i64
  br label %465

465:                                              ; preds = %490, %462
  %466 = phi i64 [ 0, %462 ], [ %491, %490 ]
  %467 = phi i64 [ 1, %462 ], [ %492, %490 ]
  %468 = icmp slt i64 %466, %463
  br i1 %468, label %469, label %490

469:                                              ; preds = %486, %465
  %470 = phi i64 [ %471, %486 ], [ %463, %465 ]
  %471 = add nsw i64 %470, -1
  br label %472

472:                                              ; preds = %472, %469
  %473 = phi i64 [ 0, %469 ], [ %484, %472 ]
  %474 = phi i32 [ 0, %469 ], [ %483, %472 ]
  %475 = shl i32 %474, 3
  %476 = sub nsw i64 %471, %473
  %477 = getelementptr inbounds i8, ptr %0, i64 %476
  %478 = load i8, ptr %477, align 1, !tbaa !13
  %479 = sext i8 %478 to i64
  %480 = getelementptr inbounds [256 x i8], ptr @char_map, i64 0, i64 %479
  %481 = load i8, ptr %480, align 1, !tbaa !13
  %482 = zext i8 %481 to i32
  %483 = add i32 %475, %482
  %484 = add nuw nsw i64 %473, 1
  %485 = icmp eq i64 %484, %467
  br i1 %485, label %486, label %472, !llvm.loop !81

486:                                              ; preds = %472
  %.lcssa17 = phi i32 [ %483, %472 ]
  %487 = zext i32 %.lcssa17 to i64
  %488 = getelementptr inbounds i8, ptr %460, i64 %487
  store i8 1, ptr %488, align 1, !tbaa !13
  %489 = icmp sgt i64 %471, %466
  br i1 %489, label %469, label %490, !llvm.loop !82

490:                                              ; preds = %486, %465
  %491 = add nuw nsw i64 %466, 1
  %492 = add nuw nsw i64 %467, 1
  %493 = icmp eq i64 %491, %464
  br i1 %493, label %680, label %465, !llvm.loop !83

494:                                              ; preds = %424
  %495 = icmp sgt i32 %201, 23
  br i1 %495, label %496, label %527

496:                                              ; preds = %494
  %497 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #29
  store i32 65535, ptr @Hashmask, align 4, !tbaa !7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(65536) @MEMBER_1, i8 0, i64 65536, i1 false), !tbaa !13
  %498 = trunc i64 %497 to i32
  %499 = icmp sgt i32 %498, 0
  br i1 %499, label %500, label %684

500:                                              ; preds = %496
  %501 = add i64 %497, 4294967295
  %502 = and i64 %501, 4294967295
  br label %505

503:                                              ; preds = %505
  %504 = icmp sgt i32 %498, 1
  br i1 %504, label %513, label %684

505:                                              ; preds = %505, %500
  %506 = phi i64 [ %502, %500 ], [ %511, %505 ]
  %507 = getelementptr inbounds i8, ptr %0, i64 %506
  %508 = load i8, ptr %507, align 1, !tbaa !13
  %509 = zext i8 %508 to i64
  %510 = getelementptr inbounds [65536 x i8], ptr @MEMBER_1, i64 0, i64 %509
  store i8 1, ptr %510, align 1, !tbaa !13
  %511 = add nsw i64 %506, -1
  %512 = icmp eq i64 %506, 0
  br i1 %512, label %503, label %505, !llvm.loop !84

513:                                              ; preds = %513, %503
  %514 = phi i64 [ %519, %513 ], [ %502, %503 ]
  %515 = getelementptr inbounds i8, ptr %0, i64 %514
  %516 = load i8, ptr %515, align 1, !tbaa !13
  %517 = zext i8 %516 to i64
  %518 = shl nuw nsw i64 %517, 8
  %519 = add nsw i64 %514, -1
  %520 = and i64 %519, 4294967295
  %521 = getelementptr inbounds i8, ptr %0, i64 %520
  %522 = load i8, ptr %521, align 1, !tbaa !13
  %523 = zext i8 %522 to i64
  %524 = or i64 %518, %523
  %525 = getelementptr inbounds [65536 x i8], ptr @MEMBER_1, i64 0, i64 %524
  store i8 1, ptr %525, align 1, !tbaa !13
  %526 = icmp ugt i64 %514, 1
  br i1 %526, label %513, label %684, !llvm.loop !85

527:                                              ; preds = %494
  %528 = add nsw i32 %3, 1
  %529 = sdiv i32 %201, %528
  %530 = trunc i32 %529 to i8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) @SHIFT, i8 %530, i64 256, i1 false), !tbaa !13
  %531 = srem i32 %201, %528
  %532 = add i32 %201, -1
  %533 = icmp slt i32 %531, %201
  br i1 %533, label %534, label %554

534:                                              ; preds = %527
  %535 = sext i32 %201 to i64
  %536 = sext i32 %531 to i64
  br label %537

537:                                              ; preds = %552, %534
  %538 = phi i64 [ %535, %534 ], [ %539, %552 ]
  %539 = add nsw i64 %538, -1
  %540 = trunc i64 %539 to i32
  %541 = sub i32 %532, %540
  %542 = urem i32 %541, %529
  %543 = getelementptr inbounds i8, ptr %0, i64 %539
  %544 = load i8, ptr %543, align 1, !tbaa !13
  %545 = zext i8 %544 to i64
  %546 = getelementptr inbounds [256 x i8], ptr @SHIFT, i64 0, i64 %545
  %547 = load i8, ptr %546, align 1, !tbaa !13
  %548 = zext i8 %547 to i32
  %549 = icmp slt i32 %542, %548
  br i1 %549, label %550, label %552

550:                                              ; preds = %537
  %551 = trunc i32 %542 to i8
  store i8 %551, ptr %546, align 1, !tbaa !13
  br label %552

552:                                              ; preds = %550, %537
  %553 = icmp sgt i64 %539, %536
  br i1 %553, label %537, label %554, !llvm.loop !86

554:                                              ; preds = %552, %527
  store i32 %529, ptr @shift_1, align 4, !tbaa !7
  %555 = icmp slt i32 %3, 0
  br i1 %555, label %609, label %556

556:                                              ; preds = %554
  %557 = icmp ugt i32 %529, 1
  %558 = zext i32 %529 to i64
  %559 = zext i32 %528 to i64
  br label %560

560:                                              ; preds = %604, %556
  %561 = phi i32 [ %529, %556 ], [ %605, %604 ]
  %562 = phi i32 [ 0, %556 ], [ %607, %604 ]
  %563 = phi i32 [ %529, %556 ], [ %606, %604 ]
  br i1 %557, label %564, label %604

564:                                              ; preds = %560
  %565 = mul i32 %562, %529
  br label %566

566:                                              ; preds = %601, %564
  %567 = phi i32 [ %561, %564 ], [ %.lcssa23, %601 ]
  %568 = phi i64 [ 1, %564 ], [ %602, %601 ]
  %569 = phi i32 [ %563, %564 ], [ %.lcssa22, %601 ]
  %570 = phi i32 [ %563, %564 ], [ %.lcssa21, %601 ]
  %571 = trunc i64 %568 to i32
  %572 = add i32 %565, %571
  %573 = sub i32 %532, %572
  %574 = sext i32 %573 to i64
  %575 = getelementptr inbounds i8, ptr %0, i64 %574
  %576 = load i8, ptr %575, align 1, !tbaa !13
  br label %577

577:                                              ; preds = %594, %566
  %578 = phi i32 [ %567, %566 ], [ %595, %594 ]
  %579 = phi i64 [ 0, %566 ], [ %599, %594 ]
  %580 = phi i32 [ %569, %566 ], [ %596, %594 ]
  %581 = phi i32 [ %570, %566 ], [ %597, %594 ]
  %582 = phi i32 [ %570, %566 ], [ %598, %594 ]
  %583 = trunc i64 %579 to i32
  %584 = mul i32 %529, %583
  %585 = sub i32 %532, %584
  %586 = zext i32 %585 to i64
  %587 = getelementptr inbounds i8, ptr %0, i64 %586
  %588 = load i8, ptr %587, align 1, !tbaa !13
  %589 = icmp eq i8 %576, %588
  %590 = sext i32 %582 to i64
  %591 = icmp slt i64 %568, %590
  %592 = select i1 %589, i1 %591, i1 false
  br i1 %592, label %593, label %594

593:                                              ; preds = %577
  store i32 %571, ptr @shift_1, align 4, !tbaa !7
  br label %594

594:                                              ; preds = %593, %577
  %595 = phi i32 [ %578, %577 ], [ %571, %593 ]
  %596 = phi i32 [ %580, %577 ], [ %571, %593 ]
  %597 = phi i32 [ %581, %577 ], [ %571, %593 ]
  %598 = phi i32 [ %582, %577 ], [ %571, %593 ]
  %599 = add nuw nsw i64 %579, 1
  %600 = icmp eq i64 %599, %559
  br i1 %600, label %601, label %577, !llvm.loop !87

601:                                              ; preds = %594
  %.lcssa23 = phi i32 [ %595, %594 ]
  %.lcssa22 = phi i32 [ %596, %594 ]
  %.lcssa21 = phi i32 [ %597, %594 ]
  %602 = add nuw nsw i64 %568, 1
  %603 = icmp eq i64 %602, %558
  br i1 %603, label %604, label %566, !llvm.loop !88

604:                                              ; preds = %601, %560
  %605 = phi i32 [ %561, %560 ], [ %.lcssa23, %601 ]
  %606 = phi i32 [ %563, %560 ], [ %.lcssa22, %601 ]
  %607 = add nuw i32 %562, 1
  %608 = icmp eq i32 %562, %3
  br i1 %608, label %609, label %560, !llvm.loop !89

609:                                              ; preds = %604, %554
  %610 = phi i32 [ %529, %554 ], [ %605, %604 ]
  %611 = icmp eq i32 %610, 0
  br i1 %611, label %612, label %613

612:                                              ; preds = %609
  store i32 1, ptr @shift_1, align 4, !tbaa !7
  br label %613

613:                                              ; preds = %612, %609
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(8192) @MEMBER, i8 0, i64 8192, i1 false), !tbaa !13
  br i1 %555, label %642, label %614

614:                                              ; preds = %613
  %615 = tail call i32 @llvm.umin.i32(i32 %529, i32 3)
  %616 = icmp eq i32 %615, 0
  %617 = zext i32 %615 to i64
  br label %618

618:                                              ; preds = %636, %614
  %619 = phi i32 [ 0, %614 ], [ %640, %636 ]
  br i1 %616, label %636, label %620

620:                                              ; preds = %618
  %621 = mul i32 %619, %529
  br label %622

622:                                              ; preds = %622, %620
  %623 = phi i64 [ 0, %620 ], [ %634, %622 ]
  %624 = phi i32 [ 0, %620 ], [ %633, %622 ]
  %625 = shl i32 %624, 2
  %626 = trunc i64 %623 to i32
  %627 = add i32 %621, %626
  %628 = sub i32 %532, %627
  %629 = sext i32 %628 to i64
  %630 = getelementptr inbounds i8, ptr %0, i64 %629
  %631 = load i8, ptr %630, align 1, !tbaa !13
  %632 = zext i8 %631 to i32
  %633 = add i32 %625, %632
  %634 = add nuw nsw i64 %623, 1
  %635 = icmp eq i64 %634, %617
  br i1 %635, label %636, label %622, !llvm.loop !90

636:                                              ; preds = %622, %618
  %637 = phi i32 [ 0, %618 ], [ %633, %622 ]
  %638 = zext i32 %637 to i64
  %639 = getelementptr inbounds [8192 x i8], ptr @MEMBER, i64 0, i64 %638
  store i8 1, ptr %639, align 1, !tbaa !13
  %640 = add nuw i32 %619, 1
  %641 = icmp eq i32 %619, %3
  br i1 %641, label %642, label %618, !llvm.loop !91

642:                                              ; preds = %636, %613
  %643 = lshr i32 -2147483648, %532
  store i32 %643, ptr @endposition, align 4, !tbaa !7
  %644 = icmp sgt i32 %201, 0
  br i1 %644, label %646, label %645

645:                                              ; preds = %642
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) @Mask, i8 -1, i64 1024, i1 false), !tbaa !7
  br label %691

646:                                              ; preds = %642
  %647 = zext i32 %201 to i64
  br label %649

648:                                              ; preds = %654
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) @Mask, i8 -1, i64 1024, i1 false), !tbaa !7
  br label %657

649:                                              ; preds = %654, %646
  %650 = phi i64 [ 0, %646 ], [ %655, %654 ]
  %651 = getelementptr inbounds i8, ptr %0, i64 %650
  %652 = load i8, ptr %651, align 1, !tbaa !13
  switch i8 %652, label %654 [
    i8 94, label %653
    i8 36, label %653
  ]

653:                                              ; preds = %649, %649
  store i8 10, ptr %651, align 1, !tbaa !13
  br label %654

654:                                              ; preds = %653, %649
  %655 = add nuw nsw i64 %650, 1
  %656 = icmp eq i64 %655, %647
  br i1 %656, label %648, label %649, !llvm.loop !92

657:                                              ; preds = %677, %648
  %658 = phi i64 [ 0, %648 ], [ %678, %677 ]
  %659 = getelementptr inbounds i8, ptr %0, i64 %658
  %660 = load i8, ptr %659, align 1, !tbaa !13
  %661 = zext i8 %660 to i64
  %662 = getelementptr inbounds i32, ptr @Mask, i64 %661
  br label %663

663:                                              ; preds = %674, %657
  %664 = phi i64 [ 0, %657 ], [ %675, %674 ]
  %665 = getelementptr inbounds i8, ptr %0, i64 %664
  %666 = load i8, ptr %665, align 1, !tbaa !13
  %667 = icmp eq i8 %660, %666
  br i1 %667, label %668, label %674

668:                                              ; preds = %663
  %669 = load i32, ptr %662, align 4, !tbaa !7
  %670 = trunc i64 %664 to i32
  %671 = lshr i32 -2147483648, %670
  %672 = xor i32 %671, -1
  %673 = and i32 %669, %672
  store i32 %673, ptr %662, align 4, !tbaa !7
  br label %674

674:                                              ; preds = %668, %663
  %675 = add nuw nsw i64 %664, 1
  %676 = icmp eq i64 %675, %647
  br i1 %676, label %677, label %663, !llvm.loop !93

677:                                              ; preds = %674
  %678 = add nuw nsw i64 %658, 1
  %679 = icmp eq i64 %678, %647
  br i1 %679, label %680, label %657, !llvm.loop !94

680:                                              ; preds = %677, %490, %456, %423, %422
  %681 = icmp slt i32 %201, 1
  br i1 %681, label %682, label %684

682:                                              ; preds = %680
  %683 = add nsw i32 %201, -1
  br label %691

684:                                              ; preds = %680, %513, %503, %496, %370
  %685 = add nsw i32 %201, -1
  %686 = zext i32 %685 to i64
  %687 = getelementptr inbounds i8, ptr %0, i64 %686
  %688 = load i8, ptr %687, align 1, !tbaa !13
  %689 = getelementptr inbounds i8, ptr %10, i64 10241
  %690 = zext i32 %201 to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %689, i8 %688, i64 %690, i1 false), !tbaa !13
  br label %691

691:                                              ; preds = %684, %682, %645
  %692 = phi i32 [ %683, %682 ], [ %532, %645 ], [ %685, %684 ]
  %693 = getelementptr inbounds i8, ptr %10, i64 2048
  %694 = icmp sgt i32 %201, 23
  %695 = icmp sgt i32 %201, 20
  %696 = add i32 %3, 1
  %697 = getelementptr inbounds [2 x i32], ptr %5, i64 0, i64 1
  %698 = getelementptr inbounds [2048 x [2 x i32]], ptr %5, i64 0, i64 1
  %699 = add i32 %201, %3
  %700 = getelementptr inbounds [21 x i32], ptr %7, i64 0, i64 1
  %701 = getelementptr inbounds [21 x i32], ptr %6, i64 0, i64 1
  %702 = icmp slt i32 %3, 1
  %703 = icmp slt i32 %3, 0
  %704 = sext i32 %3 to i64
  %705 = getelementptr inbounds [21 x i32], ptr %6, i64 0, i64 %704
  %706 = getelementptr inbounds [21 x i32], ptr %7, i64 0, i64 %704
  %707 = zext i32 %696 to i64
  %708 = shl nuw nsw i64 %707, 2
  %709 = xor i32 %3, -1
  %710 = add i32 %201, %709
  %711 = sext i32 %710 to i64
  %712 = shl nsw i32 %201, 1
  %713 = add nsw i32 %712, %3
  %714 = zext i32 %201 to i64
  %715 = tail call i32 @llvm.umax.i32(i32 %696, i32 1)
  %716 = sext i32 %201 to i64
  %717 = sub nsw i64 0, %716
  %718 = zext i32 %692 to i64
  br label %719

719:                                              ; preds = %1395, %691
  %720 = phi i32 [ %1402, %1395 ], [ %200, %691 ]
  %721 = call i64 @read(i32 noundef %2, ptr noundef nonnull %693, i64 noundef 8192) #25
  %722 = trunc i64 %721 to i32
  %723 = icmp sgt i32 %722, 0
  br i1 %723, label %724, label %1403

724:                                              ; preds = %719
  %725 = add nuw nsw i32 %722, 2047
  br label %726

726:                                              ; preds = %726, %724
  %727 = phi i32 [ %725, %724 ], [ %734, %726 ]
  %728 = zext i32 %727 to i64
  %729 = getelementptr inbounds [10496 x i8], ptr %10, i64 0, i64 %728
  %730 = load i8, ptr %729, align 1, !tbaa !13
  %731 = icmp ne i8 %730, 10
  %732 = icmp ugt i32 %727, 2048
  %733 = and i1 %732, %731
  %734 = add nsw i32 %727, -1
  br i1 %733, label %726, label %735, !llvm.loop !95

735:                                              ; preds = %726
  %.lcssa1 = phi i32 [ %727, %726 ]
  %.lcssa = phi i64 [ %728, %726 ]
  %736 = getelementptr inbounds [10496 x i8], ptr %10, i64 0, i64 %.lcssa
  %737 = sub nsw i32 %725, %.lcssa1
  %738 = add nsw i32 %737, 1
  %739 = add nsw i32 %720, -1
  %740 = zext i32 %739 to i64
  %741 = getelementptr inbounds [10496 x i8], ptr %10, i64 0, i64 %740
  store i8 10, ptr %741, align 1, !tbaa !13
  br i1 %208, label %742, label %958

742:                                              ; preds = %735
  %743 = sext i32 %720 to i64
  %744 = getelementptr inbounds i8, ptr %10, i64 %743
  br i1 %695, label %745, label %841

745:                                              ; preds = %742
  %746 = getelementptr inbounds i8, ptr %744, i64 %718
  %747 = icmp ult ptr %746, %736
  br i1 %747, label %748, label %1388

748:                                              ; preds = %837, %745
  %749 = phi ptr [ %839, %837 ], [ %746, %745 ]
  %750 = load i8, ptr %749, align 1, !tbaa !13
  %751 = zext i8 %750 to i64
  %752 = shl nuw nsw i64 %751, 3
  %753 = getelementptr inbounds i8, ptr %749, i64 -1
  %754 = load i8, ptr %753, align 1, !tbaa !13
  %755 = zext i8 %754 to i64
  %756 = add nuw nsw i64 %752, %755
  %757 = getelementptr inbounds [4096 x i8], ptr @SHIFT_2, i64 0, i64 %756
  %758 = load i8, ptr %757, align 1, !tbaa !13
  %759 = icmp eq i8 %758, 0
  br i1 %759, label %760, label %762

760:                                              ; preds = %762, %748
  %761 = phi ptr [ %749, %748 ], [ %766, %762 ]
  br label %777

762:                                              ; preds = %762, %748
  %763 = phi i8 [ %775, %762 ], [ %758, %748 ]
  %764 = phi ptr [ %766, %762 ], [ %749, %748 ]
  %765 = zext i8 %763 to i64
  %766 = getelementptr inbounds i8, ptr %764, i64 %765
  %767 = load i8, ptr %766, align 1, !tbaa !13
  %768 = zext i8 %767 to i64
  %769 = shl nuw nsw i64 %768, 3
  %770 = getelementptr inbounds i8, ptr %766, i64 -1
  %771 = load i8, ptr %770, align 1, !tbaa !13
  %772 = zext i8 %771 to i64
  %773 = add nuw nsw i64 %769, %772
  %774 = getelementptr inbounds [4096 x i8], ptr @SHIFT_2, i64 0, i64 %773
  %775 = load i8, ptr %774, align 1, !tbaa !13
  %776 = icmp eq i8 %775, 0
  br i1 %776, label %760, label %762, !llvm.loop !96

777:                                              ; preds = %792, %760
  %778 = phi i64 [ 0, %760 ], [ %793, %792 ]
  %779 = sub nsw i64 %718, %778
  %780 = getelementptr inbounds i8, ptr %0, i64 %779
  %781 = load i8, ptr %780, align 1, !tbaa !13
  %782 = zext i8 %781 to i64
  %783 = getelementptr inbounds [256 x i8], ptr @TR, i64 0, i64 %782
  %784 = load i8, ptr %783, align 1, !tbaa !13
  %785 = sub nsw i64 0, %778
  %786 = getelementptr inbounds i8, ptr %761, i64 %785
  %787 = load i8, ptr %786, align 1, !tbaa !13
  %788 = zext i8 %787 to i64
  %789 = getelementptr inbounds [256 x i8], ptr @TR, i64 0, i64 %788
  %790 = load i8, ptr %789, align 1, !tbaa !13
  %791 = icmp eq i8 %784, %790
  br i1 %791, label %792, label %795

792:                                              ; preds = %777
  %793 = add nuw nsw i64 %778, 1
  %794 = icmp eq i64 %793, %714
  br i1 %794, label %798, label %777, !llvm.loop !97

795:                                              ; preds = %777
  %.lcssa10 = phi i64 [ %778, %777 ]
  %796 = trunc i64 %.lcssa10 to i32
  %797 = icmp eq i32 %201, %796
  br i1 %797, label %798, label %837

798:                                              ; preds = %795, %792
  %799 = icmp ult ptr %761, %736
  br i1 %799, label %800, label %1388

800:                                              ; preds = %798
  %801 = load i32, ptr @num_of_matched, align 4, !tbaa !7
  %802 = add nsw i32 %801, 1
  store i32 %802, ptr @num_of_matched, align 4, !tbaa !7
  %803 = load i1, ptr @FILENAMEONLY, align 4
  br i1 %803, label %1388, label %804

804:                                              ; preds = %800
  %805 = load i1, ptr @COUNT, align 4
  br i1 %805, label %806, label %813

806:                                              ; preds = %806, %804
  %807 = phi ptr [ %810, %806 ], [ %761, %804 ]
  %808 = load i8, ptr %807, align 1, !tbaa !13
  %809 = icmp eq i8 %808, 10
  %810 = getelementptr inbounds i8, ptr %807, i64 1
  br i1 %809, label %811, label %806, !llvm.loop !98

811:                                              ; preds = %806
  %.lcssa14 = phi ptr [ %807, %806 ]
  %812 = getelementptr inbounds i8, ptr %.lcssa14, i64 -1
  br label %837

813:                                              ; preds = %804
  %814 = load i1, ptr @FNAME, align 4
  br i1 %814, label %815, label %817

815:                                              ; preds = %813
  %816 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.96, ptr noundef nonnull @CurrentFileName) #26
  br label %817

817:                                              ; preds = %815, %813
  br label %818

818:                                              ; preds = %818, %817
  %819 = phi ptr [ %820, %818 ], [ %761, %817 ]
  %820 = getelementptr inbounds i8, ptr %819, i64 -1
  %821 = load i8, ptr %820, align 1, !tbaa !13
  %822 = icmp eq i8 %821, 10
  br i1 %822, label %823, label %818, !llvm.loop !99

823:                                              ; preds = %818
  %.lcssa13 = phi ptr [ %819, %818 ]
  %.lcssa12 = phi ptr [ %820, %818 ]
  %824 = load i8, ptr %.lcssa13, align 1, !tbaa !13
  %825 = icmp eq i8 %824, 10
  br i1 %825, label %834, label %826

826:                                              ; preds = %826, %823
  %827 = phi i8 [ %832, %826 ], [ %824, %823 ]
  %828 = phi ptr [ %831, %826 ], [ %.lcssa13, %823 ]
  %829 = zext i8 %827 to i32
  %830 = call i32 @putchar(i32 noundef %829) #26
  %831 = getelementptr inbounds i8, ptr %828, i64 1
  %832 = load i8, ptr %831, align 1, !tbaa !13
  %833 = icmp eq i8 %832, 10
  br i1 %833, label %834, label %826, !llvm.loop !100

834:                                              ; preds = %826, %823
  %835 = phi ptr [ %.lcssa12, %823 ], [ %828, %826 ]
  %836 = call i32 @putchar(i32 10)
  br label %837

837:                                              ; preds = %834, %811, %795
  %838 = phi ptr [ %812, %811 ], [ %835, %834 ], [ %761, %795 ]
  %839 = getelementptr inbounds i8, ptr %838, i64 1
  %840 = icmp ult ptr %839, %736
  br i1 %840, label %748, label %1388, !llvm.loop !101

841:                                              ; preds = %742
  %842 = load i32, ptr @shift_1, align 4, !tbaa !7
  %843 = icmp ugt ptr %744, %736
  br i1 %843, label %1388, label %844

844:                                              ; preds = %954, %841
  %845 = phi ptr [ %956, %954 ], [ %744, %841 ]
  %846 = phi i32 [ %955, %954 ], [ 0, %841 ]
  %847 = sext i32 %846 to i64
  %848 = getelementptr inbounds i8, ptr %845, i64 %847
  %849 = load i8, ptr %848, align 1, !tbaa !13
  %850 = zext i8 %849 to i64
  %851 = getelementptr inbounds [256 x i8], ptr @SHIFT, i64 0, i64 %850
  %852 = load i8, ptr %851, align 1, !tbaa !13
  %853 = icmp eq i8 %852, 0
  br i1 %853, label %854, label %856

854:                                              ; preds = %856, %844
  %855 = phi ptr [ %848, %844 ], [ %872, %856 ]
  br label %878

856:                                              ; preds = %856, %844
  %857 = phi i8 [ %876, %856 ], [ %852, %844 ]
  %858 = phi ptr [ %872, %856 ], [ %848, %844 ]
  %859 = zext i8 %857 to i64
  %860 = getelementptr inbounds i8, ptr %858, i64 %859
  %861 = load i8, ptr %860, align 1, !tbaa !13
  %862 = zext i8 %861 to i64
  %863 = getelementptr inbounds [256 x i8], ptr @SHIFT, i64 0, i64 %862
  %864 = load i8, ptr %863, align 1, !tbaa !13
  %865 = zext i8 %864 to i64
  %866 = getelementptr inbounds i8, ptr %860, i64 %865
  %867 = load i8, ptr %866, align 1, !tbaa !13
  %868 = zext i8 %867 to i64
  %869 = getelementptr inbounds [256 x i8], ptr @SHIFT, i64 0, i64 %868
  %870 = load i8, ptr %869, align 1, !tbaa !13
  %871 = zext i8 %870 to i64
  %872 = getelementptr inbounds i8, ptr %866, i64 %871
  %873 = load i8, ptr %872, align 1, !tbaa !13
  %874 = zext i8 %873 to i64
  %875 = getelementptr inbounds [256 x i8], ptr @SHIFT, i64 0, i64 %874
  %876 = load i8, ptr %875, align 1, !tbaa !13
  %877 = icmp eq i8 %876, 0
  br i1 %877, label %854, label %856, !llvm.loop !102

878:                                              ; preds = %896, %854
  %879 = phi i64 [ 0, %854 ], [ %897, %896 ]
  %880 = trunc i64 %879 to i32
  %881 = xor i32 %880, -1
  %882 = add i32 %201, %881
  %883 = sext i32 %882 to i64
  %884 = getelementptr inbounds i8, ptr %0, i64 %883
  %885 = load i8, ptr %884, align 1, !tbaa !13
  %886 = zext i8 %885 to i64
  %887 = getelementptr inbounds [256 x i8], ptr @TR, i64 0, i64 %886
  %888 = load i8, ptr %887, align 1, !tbaa !13
  %889 = sub nsw i64 0, %879
  %890 = getelementptr inbounds i8, ptr %855, i64 %889
  %891 = load i8, ptr %890, align 1, !tbaa !13
  %892 = zext i8 %891 to i64
  %893 = getelementptr inbounds [256 x i8], ptr @TR, i64 0, i64 %892
  %894 = load i8, ptr %893, align 1, !tbaa !13
  %895 = icmp eq i8 %888, %894
  br i1 %895, label %896, label %899

896:                                              ; preds = %878
  %897 = add nuw nsw i64 %879, 1
  %898 = icmp eq i64 %897, %714
  br i1 %898, label %901, label %878, !llvm.loop !103

899:                                              ; preds = %878
  %.lcssa7 = phi i32 [ %880, %878 ]
  %900 = icmp eq i32 %201, %.lcssa7
  br i1 %900, label %901, label %954

901:                                              ; preds = %899, %896
  %902 = icmp ugt ptr %855, %736
  br i1 %902, label %1388, label %903

903:                                              ; preds = %901
  %904 = load i1, ptr @WORDBOUND, align 4
  br i1 %904, label %905, label %919

905:                                              ; preds = %903
  %906 = getelementptr inbounds i8, ptr %855, i64 1
  %907 = load i8, ptr %906, align 1, !tbaa !13
  %908 = zext i8 %907 to i64
  %909 = getelementptr inbounds [256 x i8], ptr @TR, i64 0, i64 %908
  %910 = load i8, ptr %909, align 1, !tbaa !13
  %911 = icmp eq i8 %910, -128
  br i1 %911, label %912, label %954

912:                                              ; preds = %905
  %913 = getelementptr inbounds i8, ptr %855, i64 %717
  %914 = load i8, ptr %913, align 1, !tbaa !13
  %915 = zext i8 %914 to i64
  %916 = getelementptr inbounds [256 x i8], ptr @TR, i64 0, i64 %915
  %917 = load i8, ptr %916, align 1, !tbaa !13
  %918 = icmp eq i8 %917, -128
  br i1 %918, label %919, label %954

919:                                              ; preds = %912, %903
  %920 = load i32, ptr @num_of_matched, align 4, !tbaa !7
  %921 = add nsw i32 %920, 1
  store i32 %921, ptr @num_of_matched, align 4, !tbaa !7
  %922 = load i1, ptr @FILENAMEONLY, align 4
  br i1 %922, label %1388, label %923

923:                                              ; preds = %919
  %924 = load i1, ptr @COUNT, align 4
  br i1 %924, label %949, label %925

925:                                              ; preds = %923
  %926 = load i1, ptr @FNAME, align 4
  br i1 %926, label %927, label %929

927:                                              ; preds = %925
  %928 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.96, ptr noundef nonnull @CurrentFileName) #26
  br label %929

929:                                              ; preds = %927, %925
  br label %930

930:                                              ; preds = %930, %929
  %931 = phi ptr [ %932, %930 ], [ %855, %929 ]
  %932 = getelementptr inbounds i8, ptr %931, i64 -1
  %933 = load i8, ptr %932, align 1, !tbaa !13
  %934 = icmp eq i8 %933, 10
  br i1 %934, label %935, label %930, !llvm.loop !104

935:                                              ; preds = %930
  %.lcssa9 = phi ptr [ %931, %930 ]
  %936 = load i8, ptr %.lcssa9, align 1, !tbaa !13
  %937 = icmp eq i8 %936, 10
  br i1 %937, label %946, label %938

938:                                              ; preds = %938, %935
  %939 = phi i8 [ %944, %938 ], [ %936, %935 ]
  %940 = phi ptr [ %943, %938 ], [ %.lcssa9, %935 ]
  %941 = zext i8 %939 to i32
  %942 = call i32 @putchar(i32 noundef %941) #26
  %943 = getelementptr inbounds i8, ptr %940, i64 1
  %944 = load i8, ptr %943, align 1, !tbaa !13
  %945 = icmp eq i8 %944, 10
  br i1 %945, label %946, label %938, !llvm.loop !105

946:                                              ; preds = %938, %935
  %947 = phi ptr [ %.lcssa9, %935 ], [ %943, %938 ]
  %948 = call i32 @putchar(i32 noundef 10) #26
  br label %954

949:                                              ; preds = %949, %923
  %950 = phi ptr [ %953, %949 ], [ %855, %923 ]
  %951 = load i8, ptr %950, align 1, !tbaa !13
  %952 = icmp eq i8 %951, 10
  %953 = getelementptr inbounds i8, ptr %950, i64 1
  br i1 %952, label %954, label %949, !llvm.loop !106

954:                                              ; preds = %949, %946, %912, %905, %899
  %955 = phi i32 [ 1, %946 ], [ 1, %912 ], [ 1, %905 ], [ %842, %899 ], [ 1, %949 ]
  %956 = phi ptr [ %947, %946 ], [ %855, %912 ], [ %855, %905 ], [ %855, %899 ], [ %950, %949 ]
  %957 = icmp ugt ptr %956, %736
  br i1 %957, label %1388, label %844, !llvm.loop !107

958:                                              ; preds = %735
  %959 = load i1, ptr @DNA, align 4
  %960 = sext i32 %720 to i64
  %961 = getelementptr inbounds i8, ptr %10, i64 %960
  br i1 %959, label %962, label %1065

962:                                              ; preds = %958
  %963 = load i32, ptr @Hashmask, align 4, !tbaa !7
  %964 = icmp ult ptr %961, %736
  br i1 %964, label %965, label %1388

965:                                              ; preds = %962
  %966 = load ptr, ptr @MEMBER_D, align 8, !tbaa !14
  br label %967

967:                                              ; preds = %1061, %965
  %968 = phi ptr [ %966, %965 ], [ %1062, %1061 ]
  %969 = phi ptr [ %961, %965 ], [ %1063, %1061 ]
  %970 = getelementptr inbounds i8, ptr %969, i64 %711
  br label %971

971:                                              ; preds = %1009, %967
  %972 = phi ptr [ %970, %967 ], [ %1010, %1009 ]
  %973 = phi i32 [ 0, %967 ], [ %1011, %1009 ]
  %974 = getelementptr inbounds i8, ptr %972, i64 -1
  %975 = load i8, ptr %972, align 1, !tbaa !13
  %976 = zext i8 %975 to i64
  %977 = getelementptr inbounds [256 x i8], ptr @char_map, i64 0, i64 %976
  %978 = load i8, ptr %977, align 1, !tbaa !13
  %979 = zext i8 %978 to i32
  %980 = shl nuw nsw i32 %979, 3
  %981 = getelementptr inbounds i8, ptr %972, i64 -2
  %982 = load i8, ptr %974, align 1, !tbaa !13
  %983 = zext i8 %982 to i64
  %984 = getelementptr inbounds [256 x i8], ptr @char_map, i64 0, i64 %983
  %985 = load i8, ptr %984, align 1, !tbaa !13
  %986 = zext i8 %985 to i32
  %987 = add nuw nsw i32 %980, %986
  %988 = and i32 %987, %963
  %989 = zext i32 %988 to i64
  %990 = getelementptr inbounds i8, ptr %968, i64 %989
  %991 = load i8, ptr %990, align 1, !tbaa !13
  %992 = icmp eq i8 %991, 0
  br i1 %992, label %1009, label %993

993:                                              ; preds = %993, %971
  %994 = phi i32 [ %1004, %993 ], [ %988, %971 ]
  %995 = phi ptr [ %997, %993 ], [ %981, %971 ]
  %996 = shl i32 %994, 3
  %997 = getelementptr inbounds i8, ptr %995, i64 -1
  %998 = load i8, ptr %995, align 1, !tbaa !13
  %999 = zext i8 %998 to i64
  %1000 = getelementptr inbounds [256 x i8], ptr @char_map, i64 0, i64 %999
  %1001 = load i8, ptr %1000, align 1, !tbaa !13
  %1002 = zext i8 %1001 to i32
  %1003 = add i32 %996, %1002
  %1004 = and i32 %1003, %963
  %1005 = zext i32 %1004 to i64
  %1006 = getelementptr inbounds i8, ptr %968, i64 %1005
  %1007 = load i8, ptr %1006, align 1, !tbaa !13
  %1008 = icmp eq i8 %1007, 0
  br i1 %1008, label %1009, label %993, !llvm.loop !108

1009:                                             ; preds = %993, %971
  %1010 = phi ptr [ %981, %971 ], [ %997, %993 ]
  %1011 = add nuw i32 %973, 1
  %1012 = icmp eq i32 %1011, %715
  br i1 %1012, label %1013, label %971, !llvm.loop !109

1013:                                             ; preds = %1009
  %.lcssa4 = phi ptr [ %1010, %1009 ]
  %1014 = icmp ugt ptr %.lcssa4, %969
  br i1 %1014, label %1061, label %1015

1015:                                             ; preds = %1013
  %1016 = call fastcc i32 @verify(i32 noundef %201, i32 noundef %713, i32 noundef %3, ptr noundef %0, ptr noundef %969) #26
  %1017 = icmp sgt i32 %1016, 0
  br i1 %1017, label %1018, label %1059

1018:                                             ; preds = %1015
  %1019 = zext i32 %1016 to i64
  %1020 = getelementptr inbounds i8, ptr %969, i64 %1019
  %1021 = icmp ugt ptr %1020, %736
  br i1 %1021, label %1388, label %1022

1022:                                             ; preds = %1018
  %1023 = load i32, ptr @num_of_matched, align 4, !tbaa !7
  %1024 = add nsw i32 %1023, 1
  store i32 %1024, ptr @num_of_matched, align 4, !tbaa !7
  %1025 = load i1, ptr @FILENAMEONLY, align 4
  br i1 %1025, label %1388, label %1026

1026:                                             ; preds = %1022
  %1027 = load i1, ptr @COUNT, align 4
  br i1 %1027, label %1054, label %1028

1028:                                             ; preds = %1026
  %1029 = load i1, ptr @FNAME, align 4
  br i1 %1029, label %1030, label %1032

1030:                                             ; preds = %1028
  %1031 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2.97, ptr noundef nonnull @CurrentFileName) #26
  br label %1032

1032:                                             ; preds = %1030, %1028
  br label %1033

1033:                                             ; preds = %1033, %1032
  %1034 = phi ptr [ %1035, %1033 ], [ %1020, %1032 ]
  %1035 = getelementptr inbounds i8, ptr %1034, i64 -1
  %1036 = load i8, ptr %1035, align 1, !tbaa !13
  %1037 = icmp eq i8 %1036, 10
  br i1 %1037, label %1038, label %1033, !llvm.loop !110

1038:                                             ; preds = %1033
  %.lcssa6 = phi ptr [ %1034, %1033 ]
  %.lcssa5 = phi ptr [ %1035, %1033 ]
  %1039 = load i8, ptr %.lcssa6, align 1, !tbaa !13
  %1040 = icmp eq i8 %1039, 10
  br i1 %1040, label %1049, label %1041

1041:                                             ; preds = %1041, %1038
  %1042 = phi i8 [ %1047, %1041 ], [ %1039, %1038 ]
  %1043 = phi ptr [ %1046, %1041 ], [ %.lcssa6, %1038 ]
  %1044 = zext i8 %1042 to i32
  %1045 = call i32 @putchar(i32 noundef %1044) #26
  %1046 = getelementptr inbounds i8, ptr %1043, i64 1
  %1047 = load i8, ptr %1046, align 1, !tbaa !13
  %1048 = icmp eq i8 %1047, 10
  br i1 %1048, label %1049, label %1041, !llvm.loop !111

1049:                                             ; preds = %1041, %1038
  %1050 = phi ptr [ %.lcssa5, %1038 ], [ %1043, %1041 ]
  %1051 = call i32 @putchar(i32 10)
  %1052 = getelementptr inbounds i8, ptr %1050, i64 2
  %1053 = load ptr, ptr @MEMBER_D, align 8, !tbaa !14
  br label %1061

1054:                                             ; preds = %1054, %1026
  %1055 = phi ptr [ %1058, %1054 ], [ %1020, %1026 ]
  %1056 = load i8, ptr %1055, align 1, !tbaa !13
  %1057 = icmp eq i8 %1056, 10
  %1058 = getelementptr inbounds i8, ptr %1055, i64 1
  br i1 %1057, label %1061, label %1054, !llvm.loop !112

1059:                                             ; preds = %1015
  %1060 = getelementptr inbounds i8, ptr %969, i64 %716
  br label %1061

1061:                                             ; preds = %1059, %1054, %1049, %1013
  %1062 = phi ptr [ %1053, %1049 ], [ %968, %1059 ], [ %968, %1013 ], [ %968, %1054 ]
  %1063 = phi ptr [ %1052, %1049 ], [ %1060, %1059 ], [ %.lcssa4, %1013 ], [ %1058, %1054 ]
  %1064 = icmp ult ptr %1063, %736
  br i1 %1064, label %967, label %1388, !llvm.loop !113

1065:                                             ; preds = %958
  br i1 %694, label %1066, label %1149

1066:                                             ; preds = %1065
  %1067 = load i32, ptr @Hashmask, align 4, !tbaa !7
  %1068 = icmp ult ptr %961, %736
  br i1 %1068, label %1069, label %1388

1069:                                             ; preds = %1146, %1066
  %1070 = phi ptr [ %1147, %1146 ], [ %961, %1066 ]
  %1071 = getelementptr inbounds i8, ptr %1070, i64 %711
  br label %1072

1072:                                             ; preds = %1096, %1069
  %1073 = phi ptr [ %1071, %1069 ], [ %1097, %1096 ]
  %1074 = phi i32 [ 0, %1069 ], [ %1098, %1096 ]
  %1075 = load i8, ptr %1073, align 1, !tbaa !13
  %1076 = getelementptr inbounds i8, ptr %1073, i64 -1
  %1077 = zext i8 %1075 to i64
  %1078 = getelementptr inbounds [65536 x i8], ptr @MEMBER_1, i64 0, i64 %1077
  %1079 = load i8, ptr %1078, align 1, !tbaa !13
  %1080 = icmp eq i8 %1079, 0
  br i1 %1080, label %1096, label %1081

1081:                                             ; preds = %1072
  %1082 = zext i8 %1075 to i32
  br label %1083

1083:                                             ; preds = %1083, %1081
  %1084 = phi ptr [ %1091, %1083 ], [ %1076, %1081 ]
  %1085 = phi i32 [ %1090, %1083 ], [ %1082, %1081 ]
  %1086 = shl i32 %1085, 8
  %1087 = load i8, ptr %1084, align 1, !tbaa !13
  %1088 = zext i8 %1087 to i32
  %1089 = or i32 %1086, %1088
  %1090 = and i32 %1089, %1067
  %1091 = getelementptr inbounds i8, ptr %1084, i64 -1
  %1092 = zext i32 %1090 to i64
  %1093 = getelementptr inbounds [65536 x i8], ptr @MEMBER_1, i64 0, i64 %1092
  %1094 = load i8, ptr %1093, align 1, !tbaa !13
  %1095 = icmp eq i8 %1094, 0
  br i1 %1095, label %1096, label %1083, !llvm.loop !114

1096:                                             ; preds = %1083, %1072
  %1097 = phi ptr [ %1076, %1072 ], [ %1091, %1083 ]
  %1098 = add nuw i32 %1074, 1
  %1099 = icmp eq i32 %1098, %715
  br i1 %1099, label %1100, label %1072, !llvm.loop !115

1100:                                             ; preds = %1096
  %.lcssa2 = phi ptr [ %1097, %1096 ]
  %1101 = icmp ugt ptr %.lcssa2, %1070
  br i1 %1101, label %1146, label %1102

1102:                                             ; preds = %1100
  %1103 = call fastcc i32 @verify(i32 noundef %201, i32 noundef %713, i32 noundef %3, ptr noundef %0, ptr noundef %1070) #26
  %1104 = icmp sgt i32 %1103, 0
  br i1 %1104, label %1105, label %1144

1105:                                             ; preds = %1102
  %1106 = zext i32 %1103 to i64
  %1107 = getelementptr inbounds i8, ptr %1070, i64 %1106
  %1108 = icmp ugt ptr %1107, %736
  br i1 %1108, label %1388, label %1109

1109:                                             ; preds = %1105
  %1110 = load i32, ptr @num_of_matched, align 4, !tbaa !7
  %1111 = add nsw i32 %1110, 1
  store i32 %1111, ptr @num_of_matched, align 4, !tbaa !7
  %1112 = load i1, ptr @FILENAMEONLY, align 4
  br i1 %1112, label %1388, label %1113

1113:                                             ; preds = %1109
  %1114 = load i1, ptr @COUNT, align 4
  br i1 %1114, label %1139, label %1115

1115:                                             ; preds = %1113
  %1116 = load i1, ptr @FNAME, align 4
  br i1 %1116, label %1117, label %1119

1117:                                             ; preds = %1115
  %1118 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.96, ptr noundef nonnull @CurrentFileName) #26
  br label %1119

1119:                                             ; preds = %1117, %1115
  br label %1120

1120:                                             ; preds = %1120, %1119
  %1121 = phi ptr [ %1122, %1120 ], [ %1107, %1119 ]
  %1122 = getelementptr inbounds i8, ptr %1121, i64 -1
  %1123 = load i8, ptr %1122, align 1, !tbaa !13
  %1124 = icmp eq i8 %1123, 10
  br i1 %1124, label %1125, label %1120, !llvm.loop !116

1125:                                             ; preds = %1120
  %.lcssa3 = phi ptr [ %1121, %1120 ]
  %1126 = load i8, ptr %.lcssa3, align 1, !tbaa !13
  %1127 = icmp eq i8 %1126, 10
  br i1 %1127, label %1136, label %1128

1128:                                             ; preds = %1128, %1125
  %1129 = phi i8 [ %1134, %1128 ], [ %1126, %1125 ]
  %1130 = phi ptr [ %1133, %1128 ], [ %.lcssa3, %1125 ]
  %1131 = zext i8 %1129 to i32
  %1132 = call i32 @putchar(i32 noundef %1131) #26
  %1133 = getelementptr inbounds i8, ptr %1130, i64 1
  %1134 = load i8, ptr %1133, align 1, !tbaa !13
  %1135 = icmp eq i8 %1134, 10
  br i1 %1135, label %1136, label %1128, !llvm.loop !117

1136:                                             ; preds = %1128, %1125
  %1137 = phi ptr [ %.lcssa3, %1125 ], [ %1133, %1128 ]
  %1138 = call i32 @putchar(i32 10)
  br label %1146

1139:                                             ; preds = %1139, %1113
  %1140 = phi ptr [ %1143, %1139 ], [ %1107, %1113 ]
  %1141 = load i8, ptr %1140, align 1, !tbaa !13
  %1142 = icmp eq i8 %1141, 10
  %1143 = getelementptr inbounds i8, ptr %1140, i64 1
  br i1 %1142, label %1146, label %1139, !llvm.loop !118

1144:                                             ; preds = %1102
  %1145 = getelementptr inbounds i8, ptr %1070, i64 %714
  br label %1146

1146:                                             ; preds = %1144, %1139, %1136, %1100
  %1147 = phi ptr [ %1137, %1136 ], [ %1145, %1144 ], [ %.lcssa2, %1100 ], [ %1140, %1139 ]
  %1148 = icmp ult ptr %1147, %736
  br i1 %1148, label %1069, label %1388, !llvm.loop !119

1149:                                             ; preds = %1065
  call void @llvm.lifetime.start.p0(i64 16384, ptr nonnull %5) #24
  call void @llvm.lifetime.start.p0(i64 84, ptr nonnull %6) #24
  call void @llvm.lifetime.start.p0(i64 84, ptr nonnull %7) #24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #24
  store i32 0, ptr %697, align 4, !tbaa !7
  store i32 0, ptr %5, align 16, !tbaa !7
  %1150 = load i32, ptr @shift_1, align 4, !tbaa !7
  %1151 = icmp ult ptr %961, %736
  br i1 %1151, label %1154, label %1152

1152:                                             ; preds = %1149
  %1153 = ptrtoint ptr %961 to i64
  br label %1247

1154:                                             ; preds = %1149
  %1155 = sdiv i32 %201, %696
  %1156 = call i32 @llvm.smin.i32(i32 %1155, i32 3)
  %1157 = add nsw i32 %1155, -1
  %1158 = icmp ugt i32 %1156, 1
  %1159 = ptrtoint ptr %961 to i64
  %1160 = zext i32 %1156 to i64
  %1161 = sext i32 %1157 to i64
  %1162 = getelementptr inbounds i8, ptr %961, i64 %1161
  %1163 = icmp ult ptr %1162, %736
  br i1 %1163, label %1164, label %1247

1164:                                             ; preds = %1154
  %1165 = sext i32 %1150 to i64
  br label %1166

1166:                                             ; preds = %1236, %1164
  %1167 = phi ptr [ %1238, %1236 ], [ %1162, %1164 ]
  %1168 = phi i32 [ %1237, %1236 ], [ 0, %1164 ]
  %1169 = load i8, ptr %1167, align 1, !tbaa !13
  %1170 = zext i8 %1169 to i64
  %1171 = getelementptr inbounds [256 x i8], ptr @SHIFT, i64 0, i64 %1170
  %1172 = load i8, ptr %1171, align 1, !tbaa !13
  %1173 = icmp eq i8 %1172, 0
  br i1 %1173, label %1194, label %1174

1174:                                             ; preds = %1180, %1166
  %1175 = phi i8 [ %1190, %1180 ], [ %1172, %1166 ]
  %1176 = phi ptr [ %1186, %1180 ], [ %1167, %1166 ]
  %1177 = zext i8 %1175 to i64
  %1178 = getelementptr inbounds i8, ptr %1176, i64 %1177
  %1179 = icmp ult ptr %1178, %736
  br i1 %1179, label %1180, label %1194

1180:                                             ; preds = %1174
  %1181 = load i8, ptr %1178, align 1, !tbaa !13
  %1182 = zext i8 %1181 to i64
  %1183 = getelementptr inbounds [256 x i8], ptr @SHIFT, i64 0, i64 %1182
  %1184 = load i8, ptr %1183, align 1, !tbaa !13
  %1185 = zext i8 %1184 to i64
  %1186 = getelementptr inbounds i8, ptr %1178, i64 %1185
  %1187 = load i8, ptr %1186, align 1, !tbaa !13
  %1188 = zext i8 %1187 to i64
  %1189 = getelementptr inbounds [256 x i8], ptr @SHIFT, i64 0, i64 %1188
  %1190 = load i8, ptr %1189, align 1, !tbaa !13
  %1191 = icmp ult ptr %1186, %736
  %1192 = icmp ne i8 %1190, 0
  %1193 = select i1 %1191, i1 %1192, i1 false
  br i1 %1193, label %1174, label %1194, !llvm.loop !120

1194:                                             ; preds = %1180, %1174, %1166
  %1195 = phi ptr [ %1167, %1166 ], [ %1178, %1174 ], [ %1186, %1180 ]
  %1196 = icmp ult ptr %1195, %736
  br i1 %1196, label %1197, label %1240

1197:                                             ; preds = %1194
  %1198 = load i8, ptr %1195, align 1, !tbaa !13
  %1199 = zext i8 %1198 to i32
  br i1 %1158, label %1200, label %1211

1200:                                             ; preds = %1200, %1197
  %1201 = phi i64 [ %1209, %1200 ], [ 1, %1197 ]
  %1202 = phi i32 [ %1208, %1200 ], [ %1199, %1197 ]
  %1203 = shl i32 %1202, 2
  %1204 = sub nsw i64 0, %1201
  %1205 = getelementptr inbounds i8, ptr %1195, i64 %1204
  %1206 = load i8, ptr %1205, align 1, !tbaa !13
  %1207 = zext i8 %1206 to i32
  %1208 = add nsw i32 %1203, %1207
  %1209 = add nuw nsw i64 %1201, 1
  %1210 = icmp eq i64 %1209, %1160
  br i1 %1210, label %1211, label %1200, !llvm.loop !121

1211:                                             ; preds = %1200, %1197
  %1212 = phi i32 [ %1199, %1197 ], [ %1208, %1200 ]
  %1213 = sext i32 %1212 to i64
  %1214 = getelementptr inbounds [8192 x i8], ptr @MEMBER, i64 0, i64 %1213
  %1215 = load i8, ptr %1214, align 1, !tbaa !13
  %1216 = icmp eq i8 %1215, 0
  br i1 %1216, label %1236, label %1217

1217:                                             ; preds = %1211
  %1218 = ptrtoint ptr %1195 to i64
  %1219 = sub i64 %1218, %1159
  %1220 = trunc i64 %1219 to i32
  %1221 = sub i32 %1220, %699
  %1222 = add nsw i32 %1221, -10
  %1223 = sext i32 %1168 to i64
  %1224 = getelementptr inbounds [2048 x [2 x i32]], ptr %5, i64 0, i64 %1223, i64 1
  %1225 = load i32, ptr %1224, align 4, !tbaa !7
  %1226 = icmp sgt i32 %1222, %1225
  br i1 %1226, label %1227, label %1234

1227:                                             ; preds = %1217
  %1228 = add nsw i32 %1221, -2
  %1229 = add nsw i32 %1168, 1
  %1230 = sext i32 %1229 to i64
  %1231 = getelementptr inbounds [2048 x [2 x i32]], ptr %5, i64 0, i64 %1230
  store i32 %1228, ptr %1231, align 8, !tbaa !7
  %1232 = add i32 %699, %1220
  %1233 = getelementptr inbounds [2048 x [2 x i32]], ptr %5, i64 0, i64 %1230, i64 1
  store i32 %1232, ptr %1233, align 4, !tbaa !7
  br label %1236

1234:                                             ; preds = %1217
  %1235 = add i32 %699, %1220
  store i32 %1235, ptr %1224, align 4, !tbaa !7
  br label %1236

1236:                                             ; preds = %1234, %1227, %1211
  %1237 = phi i32 [ %1229, %1227 ], [ %1168, %1234 ], [ %1168, %1211 ]
  %1238 = getelementptr inbounds i8, ptr %1195, i64 %1165
  %1239 = icmp ult ptr %1238, %736
  br i1 %1239, label %1166, label %1240

1240:                                             ; preds = %1236, %1194
  %1241 = phi i32 [ %1168, %1194 ], [ %1237, %1236 ]
  %1242 = load i32, ptr %698, align 8, !tbaa !7
  %1243 = ptrtoint ptr %736 to i64
  %1244 = sub i64 %1243, %1159
  %1245 = call i32 @llvm.smax.i32(i32 %1242, i32 0)
  store i32 %1245, ptr %698, align 8
  %1246 = icmp slt i32 %1241, 0
  br i1 %1246, label %1387, label %1251

1247:                                             ; preds = %1154, %1152
  %1248 = phi i64 [ %1153, %1152 ], [ %1159, %1154 ]
  %1249 = ptrtoint ptr %736 to i64
  %1250 = sub i64 %1249, %1248
  store i32 2147483647, ptr %698, align 8
  br label %1251

1251:                                             ; preds = %1247, %1240
  %1252 = phi i64 [ %1244, %1240 ], [ %1250, %1247 ]
  %1253 = phi i32 [ %1241, %1240 ], [ 0, %1247 ]
  %1254 = trunc i64 %1252 to i32
  %1255 = load i32, ptr @endposition, align 4, !tbaa !7
  %1256 = add nuw i32 %1253, 1
  %1257 = zext i32 %1256 to i64
  br label %1258

1258:                                             ; preds = %1383, %1251
  %1259 = phi i64 [ 0, %1251 ], [ %1385, %1383 ]
  %1260 = phi i32 [ 0, %1251 ], [ %1384, %1383 ]
  %1261 = getelementptr inbounds [2048 x [2 x i32]], ptr %5, i64 0, i64 %1259
  %1262 = load i32, ptr %1261, align 8, !tbaa !7
  %1263 = getelementptr inbounds [2048 x [2 x i32]], ptr %5, i64 0, i64 %1259, i64 1
  %1264 = load i32, ptr %1263, align 4, !tbaa !7
  %1265 = call i32 @llvm.smin.i32(i32 %1264, i32 %1254)
  store i32 %1265, ptr %1263, align 4
  %1266 = call i32 @llvm.smax.i32(i32 %1262, i32 0)
  store i32 -1, ptr %7, align 16, !tbaa !7
  store i32 2147483647, ptr %700, align 4, !tbaa !7
  store i32 2147483647, ptr %701, align 4, !tbaa !7
  br i1 %702, label %1267, label %1269

1267:                                             ; preds = %1269, %1258
  %1268 = icmp slt i32 %1266, %1265
  br i1 %1268, label %1278, label %1383

1269:                                             ; preds = %1269, %1258
  %1270 = phi i32 [ %1273, %1269 ], [ -1, %1258 ]
  %1271 = phi i64 [ %1276, %1269 ], [ 1, %1258 ]
  %1272 = lshr i32 %1270, 1
  %1273 = and i32 %1272, %1270
  %1274 = getelementptr inbounds [21 x i32], ptr %7, i64 0, i64 %1271
  store i32 %1273, ptr %1274, align 4, !tbaa !7
  %1275 = getelementptr inbounds [21 x i32], ptr %6, i64 0, i64 %1271
  store i32 %1273, ptr %1275, align 4, !tbaa !7
  %1276 = add nuw nsw i64 %1271, 1
  %1277 = icmp eq i64 %1276, %707
  br i1 %1277, label %1267, label %1269, !llvm.loop !122

1278:                                             ; preds = %1379, %1267
  %1279 = phi i32 [ %1381, %1379 ], [ %1266, %1267 ]
  %1280 = phi i32 [ %1380, %1379 ], [ %1260, %1267 ]
  %1281 = add nsw i32 %1279, 1
  %1282 = sext i32 %1279 to i64
  %1283 = getelementptr inbounds i8, ptr %961, i64 %1282
  %1284 = load i8, ptr %1283, align 1, !tbaa !13
  %1285 = icmp ne i8 %1284, 10
  %1286 = or i1 %703, %1285
  br i1 %1286, label %1288, label %1287

1287:                                             ; preds = %1278
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %7, i8 -1, i64 %708, i1 false), !tbaa !7
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %6, i8 -1, i64 %708, i1 false), !tbaa !7
  br label %1288

1288:                                             ; preds = %1287, %1278
  %1289 = zext i8 %1284 to i64
  %1290 = getelementptr inbounds [0 x i32], ptr @Mask, i64 0, i64 %1289
  %1291 = load i32, ptr %1290, align 4, !tbaa !7
  %1292 = load i32, ptr %7, align 16, !tbaa !7
  %1293 = lshr i32 %1292, 1
  %1294 = or i32 %1293, %1291
  store i32 %1294, ptr %6, align 16, !tbaa !7
  br i1 %702, label %1310, label %1295

1295:                                             ; preds = %1295, %1288
  %1296 = phi i32 [ %1306, %1295 ], [ %1294, %1288 ]
  %1297 = phi i32 [ %1300, %1295 ], [ %1292, %1288 ]
  %1298 = phi i64 [ %1308, %1295 ], [ 1, %1288 ]
  %1299 = getelementptr inbounds [21 x i32], ptr %7, i64 0, i64 %1298
  %1300 = load i32, ptr %1299, align 4, !tbaa !7
  %1301 = lshr i32 %1300, 1
  %1302 = or i32 %1301, %1291
  %1303 = and i32 %1297, %1296
  %1304 = lshr i32 %1303, 1
  %1305 = and i32 %1304, %1302
  %1306 = and i32 %1305, %1297
  %1307 = getelementptr inbounds [21 x i32], ptr %6, i64 0, i64 %1298
  store i32 %1306, ptr %1307, align 4, !tbaa !7
  %1308 = add nuw nsw i64 %1298, 1
  %1309 = icmp eq i64 %1308, %707
  br i1 %1309, label %1310, label %1295, !llvm.loop !123

1310:                                             ; preds = %1295, %1288
  %1311 = load i32, ptr %705, align 4, !tbaa !7
  %1312 = and i32 %1311, %1255
  %1313 = icmp eq i32 %1312, 0
  br i1 %1313, label %1314, label %1329

1314:                                             ; preds = %1310
  %1315 = load i32, ptr @num_of_matched, align 4, !tbaa !7
  %1316 = add nsw i32 %1315, 1
  store i32 %1316, ptr @num_of_matched, align 4, !tbaa !7
  %1317 = load i1, ptr @FILENAMEONLY, align 4
  br i1 %1317, label %1387, label %1318

1318:                                             ; preds = %1314
  store i32 %1281, ptr %8, align 4, !tbaa !7
  %1319 = icmp slt i32 %1279, %1280
  br i1 %1319, label %1322, label %1320

1320:                                             ; preds = %1318
  call fastcc void @s_output(ptr noundef nonnull %961, ptr noundef nonnull %8) #26
  %1321 = load i32, ptr %8, align 4, !tbaa !7
  br label %1322

1322:                                             ; preds = %1320, %1318
  %1323 = phi i32 [ %1321, %1320 ], [ %1280, %1318 ]
  br i1 %703, label %1324, label %1328

1324:                                             ; preds = %1322
  %1325 = sext i32 %1323 to i64
  %1326 = getelementptr inbounds i8, ptr %961, i64 %1325
  %1327 = load i8, ptr %1326, align 1, !tbaa !13
  br label %1338

1328:                                             ; preds = %1322
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %7, i8 -1, i64 %708, i1 false), !tbaa !7
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %6, i8 -1, i64 %708, i1 false), !tbaa !7
  br label %1329

1329:                                             ; preds = %1328, %1310
  %1330 = phi i32 [ %1280, %1310 ], [ %1323, %1328 ]
  %1331 = phi i32 [ %1281, %1310 ], [ %1323, %1328 ]
  %1332 = sext i32 %1331 to i64
  %1333 = getelementptr inbounds i8, ptr %961, i64 %1332
  %1334 = load i8, ptr %1333, align 1, !tbaa !13
  %1335 = icmp ne i8 %1334, 10
  %1336 = or i1 %703, %1335
  br i1 %1336, label %1338, label %1337

1337:                                             ; preds = %1329
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %7, i8 -1, i64 %708, i1 false), !tbaa !7
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %6, i8 -1, i64 %708, i1 false), !tbaa !7
  br label %1338

1338:                                             ; preds = %1337, %1329, %1324
  %1339 = phi i8 [ %1327, %1324 ], [ 10, %1337 ], [ %1334, %1329 ]
  %1340 = phi i32 [ %1323, %1324 ], [ %1331, %1337 ], [ %1331, %1329 ]
  %1341 = phi i32 [ %1323, %1324 ], [ %1330, %1337 ], [ %1330, %1329 ]
  %1342 = add nsw i32 %1340, 1
  %1343 = zext i8 %1339 to i64
  %1344 = getelementptr inbounds [0 x i32], ptr @Mask, i64 0, i64 %1343
  %1345 = load i32, ptr %1344, align 4, !tbaa !7
  %1346 = load i32, ptr %6, align 16, !tbaa !7
  %1347 = lshr i32 %1346, 1
  %1348 = or i32 %1347, %1345
  store i32 %1348, ptr %7, align 16, !tbaa !7
  br i1 %702, label %1364, label %1349

1349:                                             ; preds = %1349, %1338
  %1350 = phi i32 [ %1360, %1349 ], [ %1348, %1338 ]
  %1351 = phi i32 [ %1354, %1349 ], [ %1346, %1338 ]
  %1352 = phi i64 [ %1362, %1349 ], [ 1, %1338 ]
  %1353 = getelementptr inbounds [21 x i32], ptr %6, i64 0, i64 %1352
  %1354 = load i32, ptr %1353, align 4, !tbaa !7
  %1355 = lshr i32 %1354, 1
  %1356 = or i32 %1355, %1345
  %1357 = and i32 %1351, %1350
  %1358 = lshr i32 %1357, 1
  %1359 = and i32 %1358, %1356
  %1360 = and i32 %1359, %1351
  %1361 = getelementptr inbounds [21 x i32], ptr %7, i64 0, i64 %1352
  store i32 %1360, ptr %1361, align 4, !tbaa !7
  %1362 = add nuw nsw i64 %1352, 1
  %1363 = icmp eq i64 %1362, %707
  br i1 %1363, label %1364, label %1349, !llvm.loop !124

1364:                                             ; preds = %1349, %1338
  %1365 = load i32, ptr %706, align 4, !tbaa !7
  %1366 = and i32 %1365, %1255
  %1367 = icmp eq i32 %1366, 0
  br i1 %1367, label %1368, label %1379

1368:                                             ; preds = %1364
  store i32 %1342, ptr %8, align 4, !tbaa !7
  %1369 = load i32, ptr @num_of_matched, align 4, !tbaa !7
  %1370 = add nsw i32 %1369, 1
  store i32 %1370, ptr @num_of_matched, align 4, !tbaa !7
  %1371 = load i1, ptr @FILENAMEONLY, align 4
  br i1 %1371, label %1387, label %1372

1372:                                             ; preds = %1368
  %1373 = icmp slt i32 %1340, %1341
  br i1 %1373, label %1376, label %1374

1374:                                             ; preds = %1372
  call fastcc void @s_output(ptr noundef nonnull %961, ptr noundef nonnull %8) #26
  %1375 = load i32, ptr %8, align 4, !tbaa !7
  br label %1376

1376:                                             ; preds = %1374, %1372
  %1377 = phi i32 [ %1375, %1374 ], [ %1341, %1372 ]
  br i1 %703, label %1379, label %1378

1378:                                             ; preds = %1376
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %7, i8 -1, i64 %708, i1 false), !tbaa !7
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %6, i8 -1, i64 %708, i1 false), !tbaa !7
  br label %1379

1379:                                             ; preds = %1378, %1376, %1364
  %1380 = phi i32 [ %1341, %1364 ], [ %1377, %1376 ], [ %1377, %1378 ]
  %1381 = phi i32 [ %1342, %1364 ], [ %1377, %1376 ], [ %1377, %1378 ]
  %1382 = icmp slt i32 %1381, %1265
  br i1 %1382, label %1278, label %1383, !llvm.loop !125

1383:                                             ; preds = %1379, %1267
  %1384 = phi i32 [ %1260, %1267 ], [ %1380, %1379 ]
  %1385 = add nuw nsw i64 %1259, 1
  %1386 = icmp eq i64 %1385, %1257
  br i1 %1386, label %1387, label %1258, !llvm.loop !126

1387:                                             ; preds = %1383, %1368, %1314, %1240
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #24
  call void @llvm.lifetime.end.p0(i64 84, ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(i64 84, ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(i64 16384, ptr nonnull %5) #24
  br label %1388

1388:                                             ; preds = %1387, %1146, %1109, %1105, %1066, %1061, %1022, %1018, %962, %954, %919, %901, %841, %837, %800, %798, %745
  %1389 = load i1, ptr @FILENAMEONLY, align 4
  %1390 = load i32, ptr @num_of_matched, align 4
  %1391 = icmp ne i32 %1390, 0
  %1392 = select i1 %1389, i1 %1391, i1 false
  br i1 %1392, label %1393, label %1395

1393:                                             ; preds = %1388
  %1394 = call i32 @puts(ptr nonnull dereferenceable(1) @CurrentFileName)
  br label %1403

1395:                                             ; preds = %1388
  %1396 = sub nsw i32 2047, %737
  %1397 = call i32 @llvm.smax.i32(i32 %1396, i32 1024)
  %1398 = zext i32 %1397 to i64
  %1399 = getelementptr inbounds i8, ptr %10, i64 %1398
  %1400 = sext i32 %738 to i64
  %1401 = call ptr @strncpy(ptr noundef nonnull %1399, ptr noundef nonnull %736, i64 noundef %1400) #25
  %1402 = add nuw nsw i32 %1397, 1
  br label %719, !llvm.loop !127

1403:                                             ; preds = %1393, %719
  call void @llvm.lifetime.end.p0(i64 10496, ptr nonnull %10) #24
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @bitap(i32 noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #12 {
  %4 = alloca [10 x i32], align 16
  %5 = alloca [10 x i32], align 16
  %6 = alloca [98305 x i8], align 16
  %7 = alloca [9 x i32], align 16
  %8 = alloca [9 x i32], align 16
  %9 = alloca [98305 x i8], align 16
  %10 = alloca [17 x i32], align 16
  %11 = alloca [17 x i32], align 16
  %12 = alloca [98305 x i8], align 16
  %13 = alloca [5 x i32], align 16
  %14 = alloca [5 x i32], align 16
  %15 = alloca [66000 x i32], align 16
  %16 = alloca [66000 x i32], align 16
  %17 = alloca [50177 x i8], align 16
  %18 = alloca [256 x i32], align 16
  %19 = alloca [5 x i32], align 16
  %20 = alloca [5 x i32], align 16
  %21 = alloca [147456 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 147456, ptr nonnull %21) #24
  %22 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) @old_D_pat) #29
  %23 = trunc i64 %22 to i32
  store i32 %23, ptr @D_length, align 4, !tbaa !7
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %35, label %25

25:                                               ; preds = %3
  %26 = and i64 %22, 4294967295
  br label %27

27:                                               ; preds = %32, %25
  %28 = phi i64 [ %33, %32 ], [ 0, %25 ]
  %29 = getelementptr inbounds i8, ptr @old_D_pat, i64 %28
  %30 = load i8, ptr %29, align 1, !tbaa !13
  switch i8 %30, label %32 [
    i8 94, label %31
    i8 36, label %31
  ]

31:                                               ; preds = %27, %27
  store i8 10, ptr %29, align 1, !tbaa !13
  br label %32

32:                                               ; preds = %31, %27
  %33 = add nuw nsw i64 %28, 1
  %34 = icmp eq i64 %33, %26
  br i1 %34, label %35, label %27, !llvm.loop !128

35:                                               ; preds = %32, %3
  %36 = load i1, ptr @REGEX, align 4
  br i1 %36, label %37, label %1465

37:                                               ; preds = %35
  %38 = icmp sgt i32 %2, 4
  br i1 %38, label %39, label %42

39:                                               ; preds = %37
  %40 = load ptr, ptr @stderr, align 8, !tbaa !14
  %41 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %40, ptr noundef nonnull @.str, ptr noundef nonnull @Progname) #27
  tail call void @exit(i32 noundef 2) #28
  unreachable

42:                                               ; preds = %37
  %43 = icmp slt i32 %1, 16
  br i1 %43, label %44, label %536

44:                                               ; preds = %42
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %18) #24
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %19) #24
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %20) #24
  %45 = sub nsw i32 32, %1
  %46 = load i1, ptr @FIRST_IN_RE, align 4
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  tail call fastcc void @compute_next(i32 noundef %1, ptr noundef nonnull @Next, ptr noundef nonnull @Next1) #26
  store i1 false, ptr @FIRST_IN_RE, align 4
  br label %48

48:                                               ; preds = %47, %44
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %18, ptr noundef nonnull align 16 dereferenceable(1024) @Mask, i64 1024, i1 false), !tbaa !7
  %49 = load i32, ptr @NO_ERR_MASK, align 4, !tbaa !7
  %50 = zext i32 %45 to i64
  %51 = getelementptr inbounds [33 x i32], ptr @Bit, i64 0, i64 %50
  %52 = load i32, ptr %51, align 4, !tbaa !7
  store i32 %52, ptr @Init, align 16, !tbaa !7
  %53 = load i1, ptr @HEAD, align 4
  br i1 %53, label %54, label %60

54:                                               ; preds = %48
  %55 = sub i32 33, %1
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [33 x i32], ptr @Bit, i64 0, i64 %56
  %58 = load i32, ptr %57, align 4, !tbaa !7
  %59 = or i32 %58, %52
  store i32 %59, ptr @Init, align 16, !tbaa !7
  br label %60

60:                                               ; preds = %54, %48
  %61 = phi i32 [ %59, %54 ], [ %52, %48 ]
  %62 = icmp eq i32 %2, 0
  br i1 %62, label %77, label %63

63:                                               ; preds = %60
  %64 = add nsw i32 %2, 1
  %65 = tail call i32 @llvm.umax.i32(i32 %64, i32 2)
  %66 = zext i32 %65 to i64
  br label %67

67:                                               ; preds = %67, %63
  %68 = phi i32 [ %61, %63 ], [ %73, %67 ]
  %69 = phi i64 [ 1, %63 ], [ %75, %67 ]
  %70 = zext i32 %68 to i64
  %71 = getelementptr inbounds [66000 x i32], ptr @Next, i64 0, i64 %70
  %72 = load i32, ptr %71, align 4, !tbaa !7
  %73 = or i32 %72, %68
  %74 = getelementptr inbounds [8 x i32], ptr @Init, i64 0, i64 %69
  store i32 %73, ptr %74, align 4, !tbaa !7
  %75 = add nuw nsw i64 %69, 1
  %76 = icmp eq i64 %75, %66
  br i1 %76, label %77, label %67, !llvm.loop !129

77:                                               ; preds = %67, %60
  %78 = phi i32 [ 1, %60 ], [ %64, %67 ]
  %79 = tail call i32 @llvm.umax.i32(i32 %78, i32 1)
  %80 = zext i32 %79 to i64
  br label %81

81:                                               ; preds = %81, %77
  %82 = phi i64 [ 0, %77 ], [ %85, %81 ]
  %83 = getelementptr inbounds [5 x i32], ptr %20, i64 0, i64 %82
  store i32 %61, ptr %83, align 4, !tbaa !7
  %84 = getelementptr inbounds [5 x i32], ptr %19, i64 0, i64 %82
  store i32 %61, ptr %84, align 4, !tbaa !7
  %85 = add nuw nsw i64 %82, 1
  %86 = icmp eq i64 %85, %80
  br i1 %86, label %87, label %81, !llvm.loop !130

87:                                               ; preds = %81
  %88 = or i32 %61, 1
  br i1 %62, label %107, label %89

89:                                               ; preds = %87
  %90 = getelementptr inbounds [5 x i32], ptr %20, i64 0, i64 1
  %91 = getelementptr inbounds [5 x i32], ptr %19, i64 0, i64 1
  %92 = icmp eq i32 %2, 1
  %93 = getelementptr inbounds [5 x i32], ptr %20, i64 0, i64 2
  %94 = getelementptr inbounds [5 x i32], ptr %19, i64 0, i64 2
  %95 = icmp eq i32 %2, 2
  %96 = getelementptr inbounds [5 x i32], ptr %20, i64 0, i64 3
  %97 = getelementptr inbounds [5 x i32], ptr %19, i64 0, i64 3
  %98 = icmp eq i32 %2, 3
  %99 = getelementptr inbounds [5 x i32], ptr %20, i64 0, i64 4
  %100 = getelementptr inbounds [5 x i32], ptr %19, i64 0, i64 4
  %101 = sext i32 %2 to i64
  %102 = getelementptr inbounds [5 x i32], ptr %20, i64 0, i64 %101
  %103 = getelementptr inbounds [5 x i32], ptr %19, i64 0, i64 %101
  %104 = shl nuw nsw i64 %80, 2
  %105 = tail call i32 @llvm.umax.i32(i32 %78, i32 2)
  %106 = zext i32 %105 to i64
  br label %238

107:                                              ; preds = %87
  %108 = zext i32 %61 to i64
  %109 = getelementptr inbounds [66000 x i32], ptr @Next, i64 0, i64 %108
  br label %110

110:                                              ; preds = %228, %107
  %111 = phi i32 [ %.lcssa, %228 ], [ %61, %107 ]
  %112 = phi i32 [ %.lcssa2, %228 ], [ 0, %107 ]
  %113 = phi i32 [ %237, %228 ], [ 1024, %107 ]
  %114 = phi i1 [ true, %228 ], [ false, %107 ]
  %115 = tail call i64 @read(i32 noundef %0, ptr noundef nonnull getelementptr inbounds ([50177 x i8], ptr @buffer, i64 0, i64 1024), i64 noundef 49152) #25
  %116 = trunc i64 %115 to i32
  %117 = icmp sgt i32 %116, 0
  br i1 %117, label %118, label %535

118:                                              ; preds = %110
  %119 = add nuw nsw i32 %116, 1024
  %120 = icmp ult i32 %116, 49152
  br i1 %120, label %121, label %130

121:                                              ; preds = %118
  %122 = add i64 %115, 1023
  %123 = and i64 %122, 4294967295
  %124 = getelementptr inbounds [50177 x i8], ptr @buffer, i64 0, i64 %123
  %125 = load i8, ptr %124, align 1, !tbaa !13
  %126 = icmp eq i8 %125, 10
  br i1 %126, label %130, label %127

127:                                              ; preds = %121
  %128 = zext i32 %119 to i64
  %129 = getelementptr inbounds [50177 x i8], ptr @buffer, i64 0, i64 %128
  store i8 10, ptr %129, align 1, !tbaa !13
  br label %130

130:                                              ; preds = %127, %121, %118
  br i1 %114, label %132, label %131

131:                                              ; preds = %130
  store i8 10, ptr getelementptr inbounds ([50177 x i8], ptr @buffer, i64 0, i64 1023), align 1, !tbaa !13
  br label %132

132:                                              ; preds = %131, %130
  %133 = phi i64 [ 1023, %131 ], [ 1024, %130 ]
  %134 = zext i32 %119 to i64
  br label %135

135:                                              ; preds = %219, %132
  %136 = phi i64 [ %133, %132 ], [ %182, %219 ]
  %137 = phi i32 [ %113, %132 ], [ %223, %219 ]
  %138 = phi i32 [ %112, %132 ], [ %222, %219 ]
  %139 = phi i32 [ %111, %132 ], [ %226, %219 ]
  %140 = add nuw nsw i64 %136, 1
  %141 = getelementptr inbounds [50177 x i8], ptr @buffer, i64 0, i64 %136
  %142 = load i8, ptr %141, align 1, !tbaa !13
  %143 = zext i8 %142 to i64
  %144 = getelementptr inbounds [256 x i32], ptr %18, i64 0, i64 %143
  %145 = load i32, ptr %144, align 4, !tbaa !7
  %146 = icmp eq i8 %142, 10
  %147 = and i32 %139, %88
  %148 = zext i32 %139 to i64
  %149 = getelementptr inbounds [66000 x i32], ptr @Next, i64 0, i64 %148
  %150 = load i32, ptr %149, align 4, !tbaa !7
  %151 = and i32 %150, %145
  %152 = or i32 %151, %147
  br i1 %146, label %153, label %178

153:                                              ; preds = %135
  %154 = add nsw i32 %138, 1
  %155 = load i1, ptr @TAIL, align 4
  br i1 %155, label %156, label %161

156:                                              ; preds = %153
  %157 = zext i32 %152 to i64
  %158 = getelementptr inbounds [66000 x i32], ptr @Next, i64 0, i64 %157
  %159 = load i32, ptr %158, align 4, !tbaa !7
  %160 = or i32 %159, %152
  br label %161

161:                                              ; preds = %156, %153
  %162 = phi i32 [ %160, %156 ], [ %152, %153 ]
  %163 = load i1, ptr @INVERSE, align 4
  %164 = and i32 %162, 1
  %165 = icmp eq i32 %164, 0
  %166 = xor i1 %163, %165
  br i1 %166, label %167, label %169

167:                                              ; preds = %161
  %168 = trunc i64 %136 to i32
  br label %173

169:                                              ; preds = %161
  %170 = load i1, ptr @FILENAMEONLY, align 4
  br i1 %170, label %531, label %171

171:                                              ; preds = %169
  %172 = trunc i64 %136 to i32
  tail call fastcc void @r_output(ptr noundef nonnull @buffer, i32 noundef %172, i32 noundef %119, i32 noundef %154) #26
  br label %173

173:                                              ; preds = %171, %167
  %174 = phi i32 [ %168, %167 ], [ %172, %171 ]
  %175 = load i32, ptr %109, align 4, !tbaa !7
  %176 = and i32 %175, %145
  %177 = or i32 %176, %61
  br label %178

178:                                              ; preds = %173, %135
  %179 = phi i32 [ %177, %173 ], [ %152, %135 ]
  %180 = phi i32 [ %154, %173 ], [ %138, %135 ]
  %181 = phi i32 [ %174, %173 ], [ %137, %135 ]
  %182 = add nuw nsw i64 %136, 2
  %183 = getelementptr inbounds [50177 x i8], ptr @buffer, i64 0, i64 %140
  %184 = load i8, ptr %183, align 1, !tbaa !13
  %185 = zext i8 %184 to i64
  %186 = getelementptr inbounds [256 x i32], ptr %18, i64 0, i64 %185
  %187 = load i32, ptr %186, align 4, !tbaa !7
  %188 = icmp eq i8 %184, 10
  br i1 %188, label %193, label %189

189:                                              ; preds = %178
  %190 = and i32 %179, %88
  %191 = zext i32 %179 to i64
  %192 = getelementptr inbounds [66000 x i32], ptr @Next, i64 0, i64 %191
  br label %219

193:                                              ; preds = %178
  %194 = add nsw i32 %180, 1
  %195 = and i32 %179, %88
  %196 = zext i32 %179 to i64
  %197 = getelementptr inbounds [66000 x i32], ptr @Next, i64 0, i64 %196
  %198 = load i32, ptr %197, align 4, !tbaa !7
  %199 = and i32 %198, %187
  %200 = or i32 %199, %195
  %201 = load i1, ptr @TAIL, align 4
  br i1 %201, label %202, label %207

202:                                              ; preds = %193
  %203 = zext i32 %200 to i64
  %204 = getelementptr inbounds [66000 x i32], ptr @Next, i64 0, i64 %203
  %205 = load i32, ptr %204, align 4, !tbaa !7
  %206 = or i32 %205, %200
  br label %207

207:                                              ; preds = %202, %193
  %208 = phi i32 [ %206, %202 ], [ %200, %193 ]
  %209 = load i1, ptr @INVERSE, align 4
  %210 = and i32 %208, 1
  %211 = icmp eq i32 %210, 0
  %212 = xor i1 %209, %211
  br i1 %212, label %213, label %215

213:                                              ; preds = %207
  %214 = trunc i64 %140 to i32
  br label %219

215:                                              ; preds = %207
  %216 = load i1, ptr @FILENAMEONLY, align 4
  br i1 %216, label %531, label %217

217:                                              ; preds = %215
  %218 = trunc i64 %140 to i32
  tail call fastcc void @r_output(ptr noundef nonnull @buffer, i32 noundef %218, i32 noundef %119, i32 noundef %194) #26
  br label %219

219:                                              ; preds = %217, %213, %189
  %220 = phi ptr [ %192, %189 ], [ %109, %213 ], [ %109, %217 ]
  %221 = phi i32 [ %190, %189 ], [ %61, %213 ], [ %61, %217 ]
  %222 = phi i32 [ %180, %189 ], [ %194, %213 ], [ %194, %217 ]
  %223 = phi i32 [ %181, %189 ], [ %214, %213 ], [ %218, %217 ]
  %224 = load i32, ptr %220, align 4, !tbaa !7
  %225 = and i32 %224, %187
  %226 = or i32 %225, %221
  %227 = icmp ult i64 %182, %134
  br i1 %227, label %135, label %228, !llvm.loop !131

228:                                              ; preds = %219
  %.lcssa2 = phi i32 [ %222, %219 ]
  %.lcssa1 = phi i32 [ %223, %219 ]
  %.lcssa = phi i32 [ %226, %219 ]
  %229 = sub nsw i32 %119, %.lcssa1
  %230 = tail call i32 @llvm.smin.i32(i32 %229, i32 1024)
  %231 = sext i32 %230 to i64
  %232 = sub nsw i64 0, %231
  %233 = getelementptr inbounds i8, ptr getelementptr inbounds ([50177 x i8], ptr @buffer, i64 0, i64 1024), i64 %232
  %234 = sext i32 %.lcssa1 to i64
  %235 = getelementptr inbounds i8, ptr @buffer, i64 %234
  %236 = tail call ptr @strncpy(ptr noundef nonnull %233, ptr noundef nonnull %235, i64 noundef %231) #25
  %237 = sub nsw i32 1024, %230
  br label %110, !llvm.loop !132

238:                                              ; preds = %527, %89
  %239 = phi i32 [ %.lcssa3, %527 ], [ 0, %89 ]
  %240 = phi i1 [ true, %527 ], [ false, %89 ]
  %241 = tail call i64 @read(i32 noundef %0, ptr noundef nonnull getelementptr inbounds ([50177 x i8], ptr @buffer, i64 0, i64 1024), i64 noundef 49152) #25
  %242 = trunc i64 %241 to i32
  %243 = icmp sgt i32 %242, 0
  br i1 %243, label %244, label %535

244:                                              ; preds = %238
  %245 = add nuw nsw i32 %242, 1024
  %246 = icmp ult i32 %242, 49152
  br i1 %246, label %247, label %256

247:                                              ; preds = %244
  %248 = add i64 %241, 1023
  %249 = and i64 %248, 4294967295
  %250 = getelementptr inbounds [50177 x i8], ptr @buffer, i64 0, i64 %249
  %251 = load i8, ptr %250, align 1, !tbaa !13
  %252 = icmp eq i8 %251, 10
  br i1 %252, label %256, label %253

253:                                              ; preds = %247
  %254 = zext i32 %245 to i64
  %255 = getelementptr inbounds [50177 x i8], ptr @buffer, i64 0, i64 %254
  store i8 10, ptr %255, align 1, !tbaa !13
  br label %256

256:                                              ; preds = %253, %247, %244
  br i1 %240, label %258, label %257

257:                                              ; preds = %256
  store i8 10, ptr getelementptr inbounds ([50177 x i8], ptr @buffer, i64 0, i64 1023), align 1, !tbaa !13
  br label %258

258:                                              ; preds = %257, %256
  %259 = phi i64 [ 1023, %257 ], [ 1024, %256 ]
  %260 = zext i32 %245 to i64
  br label %261

261:                                              ; preds = %523, %258
  %262 = phi i64 [ %259, %258 ], [ %525, %523 ]
  %263 = phi i32 [ %239, %258 ], [ %524, %523 ]
  %264 = add nuw nsw i64 %262, 1
  %265 = getelementptr inbounds [50177 x i8], ptr @buffer, i64 0, i64 %262
  %266 = load i8, ptr %265, align 1, !tbaa !13
  %267 = zext i8 %266 to i64
  %268 = getelementptr inbounds [256 x i32], ptr %18, i64 0, i64 %267
  %269 = load i32, ptr %268, align 4, !tbaa !7
  %270 = icmp eq i8 %266, 10
  br i1 %270, label %338, label %271

271:                                              ; preds = %261
  %272 = load i32, ptr %20, align 16, !tbaa !7
  %273 = and i32 %272, %88
  %274 = zext i32 %272 to i64
  %275 = getelementptr inbounds [66000 x i32], ptr @Next, i64 0, i64 %274
  %276 = load i32, ptr %275, align 4, !tbaa !7
  %277 = and i32 %276, %269
  %278 = or i32 %277, %273
  store i32 %278, ptr %19, align 16, !tbaa !7
  %279 = load i32, ptr %90, align 4, !tbaa !7
  %280 = and i32 %279, %88
  %281 = or i32 %277, %272
  %282 = zext i32 %281 to i64
  %283 = getelementptr inbounds [66000 x i32], ptr @Next, i64 0, i64 %282
  %284 = load i32, ptr %283, align 4, !tbaa !7
  %285 = or i32 %284, %272
  %286 = and i32 %285, %49
  %287 = zext i32 %279 to i64
  %288 = getelementptr inbounds [66000 x i32], ptr @Next, i64 0, i64 %287
  %289 = load i32, ptr %288, align 4, !tbaa !7
  %290 = and i32 %289, %269
  %291 = or i32 %290, %286
  %292 = or i32 %291, %280
  store i32 %292, ptr %91, align 4, !tbaa !7
  br i1 %92, label %393, label %293

293:                                              ; preds = %271
  %294 = load i32, ptr %93, align 8, !tbaa !7
  %295 = and i32 %294, %88
  %296 = or i32 %291, %279
  %297 = zext i32 %296 to i64
  %298 = getelementptr inbounds [66000 x i32], ptr @Next, i64 0, i64 %297
  %299 = load i32, ptr %298, align 4, !tbaa !7
  %300 = or i32 %299, %279
  %301 = and i32 %300, %49
  %302 = zext i32 %294 to i64
  %303 = getelementptr inbounds [66000 x i32], ptr @Next, i64 0, i64 %302
  %304 = load i32, ptr %303, align 4, !tbaa !7
  %305 = and i32 %304, %269
  %306 = or i32 %305, %301
  %307 = or i32 %306, %295
  store i32 %307, ptr %94, align 8, !tbaa !7
  br i1 %95, label %393, label %308

308:                                              ; preds = %293
  %309 = load i32, ptr %96, align 4, !tbaa !7
  %310 = and i32 %309, %88
  %311 = or i32 %306, %294
  %312 = zext i32 %311 to i64
  %313 = getelementptr inbounds [66000 x i32], ptr @Next, i64 0, i64 %312
  %314 = load i32, ptr %313, align 4, !tbaa !7
  %315 = or i32 %314, %294
  %316 = and i32 %315, %49
  %317 = zext i32 %309 to i64
  %318 = getelementptr inbounds [66000 x i32], ptr @Next, i64 0, i64 %317
  %319 = load i32, ptr %318, align 4, !tbaa !7
  %320 = and i32 %319, %269
  %321 = or i32 %320, %316
  %322 = or i32 %321, %310
  store i32 %322, ptr %97, align 4, !tbaa !7
  br i1 %98, label %393, label %323

323:                                              ; preds = %308
  %324 = load i32, ptr %99, align 16, !tbaa !7
  %325 = and i32 %324, %88
  %326 = or i32 %321, %309
  %327 = zext i32 %326 to i64
  %328 = getelementptr inbounds [66000 x i32], ptr @Next, i64 0, i64 %327
  %329 = load i32, ptr %328, align 4, !tbaa !7
  %330 = or i32 %329, %309
  %331 = and i32 %330, %49
  %332 = zext i32 %324 to i64
  %333 = getelementptr inbounds [66000 x i32], ptr @Next, i64 0, i64 %332
  %334 = load i32, ptr %333, align 4, !tbaa !7
  %335 = and i32 %334, %269
  %336 = or i32 %331, %325
  %337 = or i32 %336, %335
  store i32 %337, ptr %100, align 16, !tbaa !7
  br label %393

338:                                              ; preds = %261
  %339 = add nsw i32 %263, 1
  %340 = load i32, ptr %102, align 4, !tbaa !7
  %341 = and i32 %340, %88
  %342 = zext i32 %340 to i64
  %343 = getelementptr inbounds [66000 x i32], ptr @Next, i64 0, i64 %342
  %344 = load i32, ptr %343, align 4, !tbaa !7
  %345 = and i32 %344, %269
  %346 = or i32 %345, %341
  store i32 %346, ptr %103, align 4, !tbaa !7
  %347 = load i1, ptr @TAIL, align 4
  br i1 %347, label %348, label %353

348:                                              ; preds = %338
  %349 = zext i32 %346 to i64
  %350 = getelementptr inbounds [66000 x i32], ptr @Next, i64 0, i64 %349
  %351 = load i32, ptr %350, align 4, !tbaa !7
  %352 = or i32 %351, %346
  store i32 %352, ptr %103, align 4, !tbaa !7
  br label %353

353:                                              ; preds = %348, %338
  %354 = phi i32 [ %352, %348 ], [ %346, %338 ]
  %355 = load i1, ptr @INVERSE, align 4
  %356 = and i32 %354, 1
  %357 = icmp eq i32 %356, 0
  %358 = xor i1 %355, %357
  br i1 %358, label %363, label %359

359:                                              ; preds = %353
  %360 = load i1, ptr @FILENAMEONLY, align 4
  br i1 %360, label %531, label %361

361:                                              ; preds = %359
  %362 = trunc i64 %262 to i32
  tail call fastcc void @r_output(ptr noundef nonnull @buffer, i32 noundef %362, i32 noundef %245, i32 noundef %339) #26
  br label %363

363:                                              ; preds = %361, %353
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %20, ptr noundef nonnull align 16 dereferenceable(1) @Init, i64 %104, i1 false), !tbaa !7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %19, ptr noundef nonnull align 16 dereferenceable(1) @Init, i64 %104, i1 false), !tbaa !7
  %364 = load i32, ptr %20, align 16, !tbaa !7
  %365 = and i32 %364, %88
  %366 = zext i32 %364 to i64
  %367 = getelementptr inbounds [66000 x i32], ptr @Next, i64 0, i64 %366
  %368 = load i32, ptr %367, align 4, !tbaa !7
  %369 = and i32 %368, %269
  %370 = or i32 %369, %365
  store i32 %370, ptr %19, align 16, !tbaa !7
  br label %371

371:                                              ; preds = %371, %363
  %372 = phi i32 [ %370, %363 ], [ %389, %371 ]
  %373 = phi i32 [ %364, %363 ], [ %376, %371 ]
  %374 = phi i64 [ 1, %363 ], [ %391, %371 ]
  %375 = getelementptr inbounds [5 x i32], ptr %20, i64 0, i64 %374
  %376 = load i32, ptr %375, align 4, !tbaa !7
  %377 = and i32 %376, %88
  %378 = or i32 %373, %372
  %379 = zext i32 %378 to i64
  %380 = getelementptr inbounds [66000 x i32], ptr @Next, i64 0, i64 %379
  %381 = load i32, ptr %380, align 4, !tbaa !7
  %382 = or i32 %381, %373
  %383 = and i32 %382, %49
  %384 = zext i32 %376 to i64
  %385 = getelementptr inbounds [66000 x i32], ptr @Next, i64 0, i64 %384
  %386 = load i32, ptr %385, align 4, !tbaa !7
  %387 = and i32 %386, %269
  %388 = or i32 %387, %377
  %389 = or i32 %388, %383
  %390 = getelementptr inbounds [5 x i32], ptr %19, i64 0, i64 %374
  store i32 %389, ptr %390, align 4, !tbaa !7
  %391 = add nuw nsw i64 %374, 1
  %392 = icmp eq i64 %391, %106
  br i1 %392, label %393, label %371, !llvm.loop !133

393:                                              ; preds = %371, %323, %308, %293, %271
  %394 = phi i32 [ %278, %271 ], [ %278, %293 ], [ %278, %308 ], [ %278, %323 ], [ %370, %371 ]
  %395 = phi i32 [ %263, %271 ], [ %263, %293 ], [ %263, %308 ], [ %263, %323 ], [ %339, %371 ]
  %396 = getelementptr inbounds [50177 x i8], ptr @buffer, i64 0, i64 %264
  %397 = load i8, ptr %396, align 1, !tbaa !13
  %398 = zext i8 %397 to i64
  %399 = getelementptr inbounds [256 x i32], ptr %18, i64 0, i64 %398
  %400 = load i32, ptr %399, align 4, !tbaa !7
  %401 = icmp eq i8 %397, 10
  br i1 %401, label %468, label %402

402:                                              ; preds = %393
  %403 = and i32 %394, %88
  %404 = zext i32 %394 to i64
  %405 = getelementptr inbounds [66000 x i32], ptr @Next, i64 0, i64 %404
  %406 = load i32, ptr %405, align 4, !tbaa !7
  %407 = and i32 %406, %400
  %408 = or i32 %407, %403
  store i32 %408, ptr %20, align 16, !tbaa !7
  %409 = load i32, ptr %91, align 4, !tbaa !7
  %410 = and i32 %409, %88
  %411 = zext i32 %409 to i64
  %412 = getelementptr inbounds [66000 x i32], ptr @Next, i64 0, i64 %411
  %413 = load i32, ptr %412, align 4, !tbaa !7
  %414 = and i32 %413, %400
  %415 = or i32 %407, %394
  %416 = zext i32 %415 to i64
  %417 = getelementptr inbounds [66000 x i32], ptr @Next, i64 0, i64 %416
  %418 = load i32, ptr %417, align 4, !tbaa !7
  %419 = or i32 %418, %394
  %420 = and i32 %419, %49
  %421 = or i32 %420, %414
  %422 = or i32 %421, %410
  store i32 %422, ptr %90, align 4, !tbaa !7
  br i1 %92, label %523, label %423

423:                                              ; preds = %402
  %424 = load i32, ptr %94, align 8, !tbaa !7
  %425 = and i32 %424, %88
  %426 = zext i32 %424 to i64
  %427 = getelementptr inbounds [66000 x i32], ptr @Next, i64 0, i64 %426
  %428 = load i32, ptr %427, align 4, !tbaa !7
  %429 = and i32 %428, %400
  %430 = or i32 %421, %409
  %431 = zext i32 %430 to i64
  %432 = getelementptr inbounds [66000 x i32], ptr @Next, i64 0, i64 %431
  %433 = load i32, ptr %432, align 4, !tbaa !7
  %434 = or i32 %433, %409
  %435 = and i32 %434, %49
  %436 = or i32 %435, %429
  %437 = or i32 %436, %425
  store i32 %437, ptr %93, align 8, !tbaa !7
  br i1 %95, label %523, label %438

438:                                              ; preds = %423
  %439 = load i32, ptr %97, align 4, !tbaa !7
  %440 = and i32 %439, %88
  %441 = zext i32 %439 to i64
  %442 = getelementptr inbounds [66000 x i32], ptr @Next, i64 0, i64 %441
  %443 = load i32, ptr %442, align 4, !tbaa !7
  %444 = and i32 %443, %400
  %445 = or i32 %436, %424
  %446 = zext i32 %445 to i64
  %447 = getelementptr inbounds [66000 x i32], ptr @Next, i64 0, i64 %446
  %448 = load i32, ptr %447, align 4, !tbaa !7
  %449 = or i32 %448, %424
  %450 = and i32 %449, %49
  %451 = or i32 %450, %444
  %452 = or i32 %451, %440
  store i32 %452, ptr %96, align 4, !tbaa !7
  br i1 %98, label %523, label %453

453:                                              ; preds = %438
  %454 = load i32, ptr %100, align 16, !tbaa !7
  %455 = and i32 %454, %88
  %456 = zext i32 %454 to i64
  %457 = getelementptr inbounds [66000 x i32], ptr @Next, i64 0, i64 %456
  %458 = load i32, ptr %457, align 4, !tbaa !7
  %459 = and i32 %458, %400
  %460 = or i32 %451, %439
  %461 = zext i32 %460 to i64
  %462 = getelementptr inbounds [66000 x i32], ptr @Next, i64 0, i64 %461
  %463 = load i32, ptr %462, align 4, !tbaa !7
  %464 = or i32 %463, %439
  %465 = and i32 %464, %49
  %466 = or i32 %459, %455
  %467 = or i32 %466, %465
  store i32 %467, ptr %99, align 16, !tbaa !7
  br label %523

468:                                              ; preds = %393
  %469 = add nsw i32 %395, 1
  %470 = load i32, ptr %103, align 4, !tbaa !7
  %471 = and i32 %470, %88
  %472 = zext i32 %470 to i64
  %473 = getelementptr inbounds [66000 x i32], ptr @Next, i64 0, i64 %472
  %474 = load i32, ptr %473, align 4, !tbaa !7
  %475 = and i32 %474, %400
  %476 = or i32 %475, %471
  store i32 %476, ptr %102, align 4, !tbaa !7
  %477 = load i1, ptr @TAIL, align 4
  br i1 %477, label %478, label %483

478:                                              ; preds = %468
  %479 = zext i32 %476 to i64
  %480 = getelementptr inbounds [66000 x i32], ptr @Next, i64 0, i64 %479
  %481 = load i32, ptr %480, align 4, !tbaa !7
  %482 = or i32 %481, %476
  store i32 %482, ptr %102, align 4, !tbaa !7
  br label %483

483:                                              ; preds = %478, %468
  %484 = phi i32 [ %482, %478 ], [ %476, %468 ]
  %485 = load i1, ptr @INVERSE, align 4
  %486 = and i32 %484, 1
  %487 = icmp eq i32 %486, 0
  %488 = xor i1 %485, %487
  br i1 %488, label %493, label %489

489:                                              ; preds = %483
  %490 = load i1, ptr @FILENAMEONLY, align 4
  br i1 %490, label %531, label %491

491:                                              ; preds = %489
  %492 = trunc i64 %264 to i32
  tail call fastcc void @r_output(ptr noundef nonnull @buffer, i32 noundef %492, i32 noundef %245, i32 noundef %469) #26
  br label %493

493:                                              ; preds = %491, %483
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %20, ptr noundef nonnull align 16 dereferenceable(1) @Init, i64 %104, i1 false), !tbaa !7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %19, ptr noundef nonnull align 16 dereferenceable(1) @Init, i64 %104, i1 false), !tbaa !7
  %494 = load i32, ptr %19, align 16, !tbaa !7
  %495 = and i32 %494, %88
  %496 = zext i32 %494 to i64
  %497 = getelementptr inbounds [66000 x i32], ptr @Next, i64 0, i64 %496
  %498 = load i32, ptr %497, align 4, !tbaa !7
  %499 = and i32 %498, %400
  %500 = or i32 %499, %495
  store i32 %500, ptr %20, align 16, !tbaa !7
  br label %501

501:                                              ; preds = %501, %493
  %502 = phi i32 [ %500, %493 ], [ %519, %501 ]
  %503 = phi i32 [ %494, %493 ], [ %506, %501 ]
  %504 = phi i64 [ 1, %493 ], [ %521, %501 ]
  %505 = getelementptr inbounds [5 x i32], ptr %19, i64 0, i64 %504
  %506 = load i32, ptr %505, align 4, !tbaa !7
  %507 = and i32 %506, %88
  %508 = or i32 %503, %502
  %509 = zext i32 %508 to i64
  %510 = getelementptr inbounds [66000 x i32], ptr @Next, i64 0, i64 %509
  %511 = load i32, ptr %510, align 4, !tbaa !7
  %512 = or i32 %511, %503
  %513 = and i32 %512, %49
  %514 = zext i32 %506 to i64
  %515 = getelementptr inbounds [66000 x i32], ptr @Next, i64 0, i64 %514
  %516 = load i32, ptr %515, align 4, !tbaa !7
  %517 = and i32 %516, %400
  %518 = or i32 %517, %507
  %519 = or i32 %518, %513
  %520 = getelementptr inbounds [5 x i32], ptr %20, i64 0, i64 %504
  store i32 %519, ptr %520, align 4, !tbaa !7
  %521 = add nuw nsw i64 %504, 1
  %522 = icmp eq i64 %521, %106
  br i1 %522, label %523, label %501, !llvm.loop !134

523:                                              ; preds = %501, %453, %438, %423, %402
  %524 = phi i32 [ %395, %402 ], [ %395, %423 ], [ %395, %438 ], [ %395, %453 ], [ %469, %501 ]
  %525 = add nuw nsw i64 %262, 2
  %526 = icmp ult i64 %525, %260
  br i1 %526, label %261, label %527, !llvm.loop !135

527:                                              ; preds = %523
  %.lcssa3 = phi i32 [ %524, %523 ]
  %528 = and i64 %241, 4294967295
  %529 = getelementptr inbounds i8, ptr @buffer, i64 %528
  %530 = tail call ptr @strncpy(ptr noundef nonnull dereferenceable(1) @buffer, ptr noundef nonnull dereferenceable(1) %529, i64 noundef 1024) #25
  br label %238, !llvm.loop !136

531:                                              ; preds = %489, %359, %215, %169
  %532 = load i32, ptr @num_of_matched, align 4, !tbaa !7
  %533 = add nsw i32 %532, 1
  store i32 %533, ptr @num_of_matched, align 4, !tbaa !7
  %534 = tail call i32 @puts(ptr nonnull dereferenceable(1) @CurrentFileName)
  br label %535

535:                                              ; preds = %531, %238, %110
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %20) #24
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %19) #24
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %18) #24
  br label %2856

536:                                              ; preds = %42
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %13) #24
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %14) #24
  call void @llvm.lifetime.start.p0(i64 264000, ptr nonnull %15) #24
  call void @llvm.lifetime.start.p0(i64 264000, ptr nonnull %16) #24
  call void @llvm.lifetime.start.p0(i64 50177, ptr nonnull %17) #24
  %537 = load i32, ptr @NO_ERR_MASK, align 4, !tbaa !7
  %538 = icmp ugt i32 %1, 30
  br i1 %538, label %539, label %542

539:                                              ; preds = %536
  %540 = load ptr, ptr @stderr, align 8, !tbaa !14
  %541 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %540, ptr noundef nonnull @.str.3.95, ptr noundef nonnull @Progname) #27
  tail call void @exit(i32 noundef 2) #28
  unreachable

542:                                              ; preds = %536
  %543 = lshr i32 %1, 1
  br label %544

544:                                              ; preds = %544, %542
  %545 = phi i64 [ %551, %544 ], [ 32, %542 ]
  %546 = phi i32 [ %552, %544 ], [ 0, %542 ]
  %547 = phi i32 [ %550, %544 ], [ 0, %542 ]
  %548 = getelementptr inbounds [33 x i32], ptr @Bit, i64 0, i64 %545
  %549 = load i32, ptr %548, align 4, !tbaa !7
  %550 = or i32 %549, %547
  %551 = add nsw i64 %545, -1
  %552 = add nuw nsw i32 %546, 1
  %553 = icmp eq i32 %552, %543
  br i1 %553, label %554, label %544, !llvm.loop !137

554:                                              ; preds = %544
  %.lcssa7 = phi i32 [ %550, %544 ]
  %555 = sub nuw nsw i32 32, %1
  %556 = load i1, ptr @FIRST_IN_RE, align 4
  br i1 %556, label %557, label %558

557:                                              ; preds = %554
  call fastcc void @compute_next(i32 noundef %1, ptr noundef nonnull %15, ptr noundef nonnull %16) #26
  br label %558

558:                                              ; preds = %557, %554
  store i1 false, ptr @FIRST_IN_RE, align 4
  %559 = zext i32 %555 to i64
  %560 = getelementptr inbounds [33 x i32], ptr @Bit, i64 0, i64 %559
  %561 = load i32, ptr %560, align 4, !tbaa !7
  store i32 %561, ptr @Init, align 16, !tbaa !7
  %562 = load i1, ptr @HEAD, align 4
  br i1 %562, label %563, label %569

563:                                              ; preds = %558
  %564 = sub nuw nsw i32 33, %1
  %565 = zext i32 %564 to i64
  %566 = getelementptr inbounds [33 x i32], ptr @Bit, i64 0, i64 %565
  %567 = load i32, ptr %566, align 4, !tbaa !7
  %568 = or i32 %567, %561
  store i32 %568, ptr @Init, align 16, !tbaa !7
  br label %569

569:                                              ; preds = %563, %558
  %570 = phi i32 [ %568, %563 ], [ %561, %558 ]
  %571 = icmp eq i32 %2, 0
  br i1 %571, label %592, label %572

572:                                              ; preds = %569
  %573 = add nsw i32 %2, 1
  %574 = tail call i32 @llvm.umax.i32(i32 %573, i32 2)
  %575 = zext i32 %574 to i64
  br label %576

576:                                              ; preds = %576, %572
  %577 = phi i32 [ %570, %572 ], [ %588, %576 ]
  %578 = phi i64 [ 1, %572 ], [ %590, %576 ]
  %579 = lshr i32 %577, %543
  %580 = zext i32 %579 to i64
  %581 = getelementptr inbounds [66000 x i32], ptr %15, i64 0, i64 %580
  %582 = load i32, ptr %581, align 4, !tbaa !7
  %583 = and i32 %577, %.lcssa7
  %584 = zext i32 %583 to i64
  %585 = getelementptr inbounds [66000 x i32], ptr %16, i64 0, i64 %584
  %586 = load i32, ptr %585, align 4, !tbaa !7
  %587 = or i32 %582, %586
  %588 = or i32 %587, %577
  %589 = getelementptr inbounds [8 x i32], ptr @Init, i64 0, i64 %578
  store i32 %588, ptr %589, align 4, !tbaa !7
  %590 = add nuw nsw i64 %578, 1
  %591 = icmp eq i64 %590, %575
  br i1 %591, label %592, label %576, !llvm.loop !138

592:                                              ; preds = %576, %569
  %593 = phi i32 [ 1, %569 ], [ %573, %576 ]
  %594 = or i32 %570, 1
  store i32 %594, ptr @Init1, align 4, !tbaa !7
  %595 = tail call i32 @llvm.umax.i32(i32 %593, i32 1)
  %596 = zext i32 %595 to i64
  %597 = shl nuw nsw i64 %596, 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %14, ptr noundef nonnull align 16 dereferenceable(1) @Init, i64 %597, i1 false), !tbaa !7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %13, ptr noundef nonnull align 16 dereferenceable(1) @Init, i64 %597, i1 false), !tbaa !7
  %598 = getelementptr inbounds i8, ptr %17, i64 1024
  %599 = getelementptr inbounds [50177 x i8], ptr %17, i64 0, i64 1023
  br i1 %571, label %622, label %600

600:                                              ; preds = %592
  %601 = getelementptr inbounds [5 x i32], ptr %14, i64 0, i64 1
  %602 = getelementptr inbounds [5 x i32], ptr %13, i64 0, i64 1
  %603 = icmp eq i32 %2, 1
  %604 = getelementptr inbounds [5 x i32], ptr %14, i64 0, i64 2
  %605 = getelementptr inbounds [5 x i32], ptr %13, i64 0, i64 2
  %606 = icmp eq i32 %2, 2
  %607 = getelementptr inbounds [5 x i32], ptr %14, i64 0, i64 3
  %608 = getelementptr inbounds [5 x i32], ptr %13, i64 0, i64 3
  %609 = icmp eq i32 %2, 3
  %610 = getelementptr inbounds [5 x i32], ptr %14, i64 0, i64 4
  %611 = getelementptr inbounds [5 x i32], ptr %13, i64 0, i64 4
  %612 = sext i32 %2 to i64
  %613 = getelementptr inbounds [5 x i32], ptr %14, i64 0, i64 %612
  %614 = getelementptr inbounds [5 x i32], ptr %13, i64 0, i64 %612
  %615 = tail call i32 @llvm.umax.i32(i32 %593, i32 2)
  %616 = zext i32 %615 to i64
  %617 = add nuw nsw i64 %596, 3
  %618 = and i64 %617, 8589934588
  %619 = add nsw i64 %596, -1
  %620 = insertelement <4 x i64> poison, i64 %619, i64 0
  %621 = shufflevector <4 x i64> %620, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %804

622:                                              ; preds = %592
  %623 = lshr i32 %570, %543
  %624 = zext i32 %623 to i64
  %625 = getelementptr inbounds [66000 x i32], ptr %15, i64 0, i64 %624
  %626 = and i32 %570, %.lcssa7
  %627 = zext i32 %626 to i64
  %628 = getelementptr inbounds [66000 x i32], ptr %16, i64 0, i64 %627
  br label %629

629:                                              ; preds = %800, %622
  %630 = phi i32 [ %.lcssa5, %800 ], [ %570, %622 ]
  %631 = phi i32 [ %.lcssa4, %800 ], [ %543, %622 ]
  %632 = phi i1 [ true, %800 ], [ false, %622 ]
  %633 = call i64 @read(i32 noundef %0, ptr noundef nonnull %598, i64 noundef 49152) #25
  %634 = trunc i64 %633 to i32
  %635 = icmp sgt i32 %634, 0
  br i1 %635, label %636, label %1464

636:                                              ; preds = %629
  %637 = add nuw nsw i32 %634, 1024
  %638 = icmp ult i32 %634, 49152
  br i1 %638, label %639, label %648

639:                                              ; preds = %636
  %640 = add i64 %633, 1023
  %641 = and i64 %640, 4294967295
  %642 = getelementptr inbounds [50177 x i8], ptr %17, i64 0, i64 %641
  %643 = load i8, ptr %642, align 1, !tbaa !13
  %644 = icmp eq i8 %643, 10
  br i1 %644, label %648, label %645

645:                                              ; preds = %639
  %646 = zext i32 %637 to i64
  %647 = getelementptr inbounds [50177 x i8], ptr %17, i64 0, i64 %646
  store i8 10, ptr %647, align 1, !tbaa !13
  br label %648

648:                                              ; preds = %645, %639, %636
  br i1 %632, label %650, label %649

649:                                              ; preds = %648
  store i8 10, ptr %599, align 1, !tbaa !13
  br label %650

650:                                              ; preds = %649, %648
  %651 = phi i64 [ 1023, %649 ], [ 1024, %648 ]
  %652 = zext i32 %637 to i64
  %653 = load i32, ptr @Init1, align 4, !tbaa !7
  br label %654

654:                                              ; preds = %794, %650
  %655 = phi i32 [ %653, %650 ], [ %795, %794 ]
  %656 = phi i32 [ %653, %650 ], [ %796, %794 ]
  %657 = phi i64 [ %651, %650 ], [ %729, %794 ]
  %658 = phi i32 [ %631, %650 ], [ %798, %794 ]
  %659 = phi i32 [ %630, %650 ], [ %797, %794 ]
  %660 = add nuw nsw i64 %657, 1
  %661 = getelementptr inbounds [50177 x i8], ptr %17, i64 0, i64 %657
  %662 = load i8, ptr %661, align 1, !tbaa !13
  %663 = zext i8 %662 to i64
  %664 = getelementptr inbounds [256 x i32], ptr @Mask, i64 0, i64 %663
  %665 = load i32, ptr %664, align 4, !tbaa !7
  %666 = icmp eq i8 %662, 10
  %667 = and i32 %659, %656
  br i1 %666, label %677, label %668

668:                                              ; preds = %654
  %669 = icmp eq i32 %665, 0
  br i1 %669, label %724, label %670

670:                                              ; preds = %668
  %671 = lshr i32 %659, %543
  %672 = zext i32 %671 to i64
  %673 = getelementptr inbounds [66000 x i32], ptr %15, i64 0, i64 %672
  %674 = and i32 %659, %.lcssa7
  %675 = zext i32 %674 to i64
  %676 = getelementptr inbounds [66000 x i32], ptr %16, i64 0, i64 %675
  br label %713

677:                                              ; preds = %654
  %678 = add nsw i32 %658, 1
  %679 = lshr i32 %659, %543
  %680 = zext i32 %679 to i64
  %681 = getelementptr inbounds [66000 x i32], ptr %15, i64 0, i64 %680
  %682 = load i32, ptr %681, align 4, !tbaa !7
  %683 = and i32 %659, %.lcssa7
  %684 = zext i32 %683 to i64
  %685 = getelementptr inbounds [66000 x i32], ptr %16, i64 0, i64 %684
  %686 = load i32, ptr %685, align 4, !tbaa !7
  %687 = or i32 %686, %682
  %688 = and i32 %687, %665
  %689 = or i32 %688, %667
  %690 = load i1, ptr @TAIL, align 4
  br i1 %690, label %691, label %702

691:                                              ; preds = %677
  %692 = lshr i32 %689, %543
  %693 = zext i32 %692 to i64
  %694 = getelementptr inbounds [66000 x i32], ptr %15, i64 0, i64 %693
  %695 = load i32, ptr %694, align 4, !tbaa !7
  %696 = and i32 %689, %.lcssa7
  %697 = zext i32 %696 to i64
  %698 = getelementptr inbounds [66000 x i32], ptr %16, i64 0, i64 %697
  %699 = load i32, ptr %698, align 4, !tbaa !7
  %700 = or i32 %695, %699
  %701 = or i32 %700, %689
  br label %702

702:                                              ; preds = %691, %677
  %703 = phi i32 [ %701, %691 ], [ %689, %677 ]
  %704 = load i1, ptr @INVERSE, align 4
  %705 = and i32 %703, 1
  %706 = icmp eq i32 %705, 0
  %707 = xor i1 %704, %706
  br i1 %707, label %713, label %708

708:                                              ; preds = %702
  %709 = load i1, ptr @FILENAMEONLY, align 4
  br i1 %709, label %1460, label %710

710:                                              ; preds = %708
  %711 = trunc i64 %657 to i32
  call fastcc void @r_output(ptr noundef nonnull %17, i32 noundef %711, i32 noundef %637, i32 noundef %678) #26
  %712 = load i32, ptr @Init1, align 4, !tbaa !7
  br label %713

713:                                              ; preds = %710, %702, %670
  %714 = phi i32 [ %655, %670 ], [ %712, %710 ], [ %655, %702 ]
  %715 = phi ptr [ %676, %670 ], [ %628, %710 ], [ %628, %702 ]
  %716 = phi ptr [ %673, %670 ], [ %625, %710 ], [ %625, %702 ]
  %717 = phi i32 [ %667, %670 ], [ %570, %710 ], [ %570, %702 ]
  %718 = phi i32 [ %658, %670 ], [ %678, %710 ], [ %678, %702 ]
  %719 = load i32, ptr %716, align 4, !tbaa !7
  %720 = load i32, ptr %715, align 4, !tbaa !7
  %721 = or i32 %720, %719
  %722 = and i32 %721, %665
  %723 = or i32 %722, %717
  br label %724

724:                                              ; preds = %713, %668
  %725 = phi i32 [ %655, %668 ], [ %714, %713 ]
  %726 = phi i32 [ %656, %668 ], [ %714, %713 ]
  %727 = phi i32 [ %667, %668 ], [ %723, %713 ]
  %728 = phi i32 [ %658, %668 ], [ %718, %713 ]
  %729 = add nuw nsw i64 %657, 2
  %730 = getelementptr inbounds [50177 x i8], ptr %17, i64 0, i64 %660
  %731 = load i8, ptr %730, align 1, !tbaa !13
  %732 = zext i8 %731 to i64
  %733 = getelementptr inbounds [256 x i32], ptr @Mask, i64 0, i64 %732
  %734 = load i32, ptr %733, align 4, !tbaa !7
  %735 = icmp eq i8 %731, 10
  %736 = and i32 %727, %726
  br i1 %735, label %746, label %737

737:                                              ; preds = %724
  %738 = icmp eq i32 %734, 0
  br i1 %738, label %794, label %739

739:                                              ; preds = %737
  %740 = lshr i32 %727, %543
  %741 = zext i32 %740 to i64
  %742 = getelementptr inbounds [66000 x i32], ptr %15, i64 0, i64 %741
  %743 = and i32 %727, %.lcssa7
  %744 = zext i32 %743 to i64
  %745 = getelementptr inbounds [66000 x i32], ptr %16, i64 0, i64 %744
  br label %782

746:                                              ; preds = %724
  %747 = add nsw i32 %728, 1
  %748 = lshr i32 %727, %543
  %749 = zext i32 %748 to i64
  %750 = getelementptr inbounds [66000 x i32], ptr %15, i64 0, i64 %749
  %751 = load i32, ptr %750, align 4, !tbaa !7
  %752 = and i32 %727, %.lcssa7
  %753 = zext i32 %752 to i64
  %754 = getelementptr inbounds [66000 x i32], ptr %16, i64 0, i64 %753
  %755 = load i32, ptr %754, align 4, !tbaa !7
  %756 = or i32 %755, %751
  %757 = and i32 %756, %734
  %758 = or i32 %757, %736
  %759 = load i1, ptr @TAIL, align 4
  br i1 %759, label %760, label %771

760:                                              ; preds = %746
  %761 = lshr i32 %758, %543
  %762 = zext i32 %761 to i64
  %763 = getelementptr inbounds [66000 x i32], ptr %15, i64 0, i64 %762
  %764 = load i32, ptr %763, align 4, !tbaa !7
  %765 = and i32 %758, %.lcssa7
  %766 = zext i32 %765 to i64
  %767 = getelementptr inbounds [66000 x i32], ptr %16, i64 0, i64 %766
  %768 = load i32, ptr %767, align 4, !tbaa !7
  %769 = or i32 %764, %768
  %770 = or i32 %769, %758
  br label %771

771:                                              ; preds = %760, %746
  %772 = phi i32 [ %770, %760 ], [ %758, %746 ]
  %773 = load i1, ptr @INVERSE, align 4
  %774 = and i32 %772, 1
  %775 = icmp eq i32 %774, 0
  %776 = xor i1 %773, %775
  br i1 %776, label %782, label %777

777:                                              ; preds = %771
  %778 = load i1, ptr @FILENAMEONLY, align 4
  br i1 %778, label %1460, label %779

779:                                              ; preds = %777
  %780 = trunc i64 %660 to i32
  call fastcc void @r_output(ptr noundef nonnull %17, i32 noundef %780, i32 noundef %637, i32 noundef %747) #26
  %781 = load i32, ptr @Init1, align 4, !tbaa !7
  br label %782

782:                                              ; preds = %779, %771, %739
  %783 = phi i32 [ %725, %739 ], [ %781, %779 ], [ %725, %771 ]
  %784 = phi i32 [ %726, %739 ], [ %781, %779 ], [ %726, %771 ]
  %785 = phi ptr [ %745, %739 ], [ %628, %779 ], [ %628, %771 ]
  %786 = phi ptr [ %742, %739 ], [ %625, %779 ], [ %625, %771 ]
  %787 = phi i32 [ %736, %739 ], [ %570, %779 ], [ %570, %771 ]
  %788 = phi i32 [ %728, %739 ], [ %747, %779 ], [ %747, %771 ]
  %789 = load i32, ptr %786, align 4, !tbaa !7
  %790 = load i32, ptr %785, align 4, !tbaa !7
  %791 = or i32 %790, %789
  %792 = and i32 %791, %734
  %793 = or i32 %792, %787
  br label %794

794:                                              ; preds = %782, %737
  %795 = phi i32 [ %725, %737 ], [ %783, %782 ]
  %796 = phi i32 [ %726, %737 ], [ %784, %782 ]
  %797 = phi i32 [ %736, %737 ], [ %793, %782 ]
  %798 = phi i32 [ %728, %737 ], [ %788, %782 ]
  %799 = icmp ult i64 %729, %652
  br i1 %799, label %654, label %800, !llvm.loop !139

800:                                              ; preds = %794
  %.lcssa5 = phi i32 [ %797, %794 ]
  %.lcssa4 = phi i32 [ %798, %794 ]
  %801 = and i64 %633, 4294967295
  %802 = getelementptr inbounds i8, ptr %17, i64 %801
  %803 = call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %17, ptr noundef nonnull dereferenceable(1) %802, i64 noundef 1024) #25
  br label %629, !llvm.loop !140

804:                                              ; preds = %1456, %600
  %805 = phi i1 [ true, %1456 ], [ false, %600 ]
  %806 = phi i32 [ %.lcssa6, %1456 ], [ %543, %600 ]
  %807 = call i64 @read(i32 noundef %0, ptr noundef nonnull %598, i64 noundef 49152) #25
  %808 = trunc i64 %807 to i32
  %809 = icmp sgt i32 %808, 0
  br i1 %809, label %810, label %1464

810:                                              ; preds = %804
  %811 = add nuw nsw i32 %808, 1024
  %812 = icmp ult i32 %808, 49152
  br i1 %812, label %813, label %822

813:                                              ; preds = %810
  %814 = add i64 %807, 1023
  %815 = and i64 %814, 4294967295
  %816 = getelementptr inbounds [50177 x i8], ptr %17, i64 0, i64 %815
  %817 = load i8, ptr %816, align 1, !tbaa !13
  %818 = icmp eq i8 %817, 10
  br i1 %818, label %822, label %819

819:                                              ; preds = %813
  %820 = zext i32 %811 to i64
  %821 = getelementptr inbounds [50177 x i8], ptr %17, i64 0, i64 %820
  store i8 10, ptr %821, align 1, !tbaa !13
  br label %822

822:                                              ; preds = %819, %813, %810
  br i1 %805, label %824, label %823

823:                                              ; preds = %822
  store i8 10, ptr %599, align 1, !tbaa !13
  br label %824

824:                                              ; preds = %823, %822
  %825 = phi i64 [ 1023, %823 ], [ 1024, %822 ]
  %826 = zext i32 %811 to i64
  br label %827

827:                                              ; preds = %1452, %824
  %828 = phi i64 [ %825, %824 ], [ %1454, %1452 ]
  %829 = phi i32 [ %806, %824 ], [ %1453, %1452 ]
  %830 = getelementptr inbounds [50177 x i8], ptr %17, i64 0, i64 %828
  %831 = load i8, ptr %830, align 1, !tbaa !13
  %832 = zext i8 %831 to i64
  %833 = getelementptr inbounds [256 x i32], ptr @Mask, i64 0, i64 %832
  %834 = load i32, ptr %833, align 4, !tbaa !7
  %835 = icmp eq i8 %831, 10
  br i1 %835, label %1023, label %836

836:                                              ; preds = %827
  %837 = icmp eq i32 %834, 0
  %838 = load i32, ptr %14, align 16, !tbaa !7
  %839 = load i32, ptr @Init1, align 4, !tbaa !7
  %840 = and i32 %839, %838
  br i1 %837, label %960, label %841

841:                                              ; preds = %836
  %842 = lshr i32 %838, %543
  %843 = zext i32 %842 to i64
  %844 = getelementptr inbounds [66000 x i32], ptr %15, i64 0, i64 %843
  %845 = load i32, ptr %844, align 4, !tbaa !7
  %846 = and i32 %838, %.lcssa7
  %847 = zext i32 %846 to i64
  %848 = getelementptr inbounds [66000 x i32], ptr %16, i64 0, i64 %847
  %849 = load i32, ptr %848, align 4, !tbaa !7
  %850 = or i32 %849, %845
  %851 = and i32 %850, %834
  %852 = or i32 %851, %840
  store i32 %852, ptr %13, align 16, !tbaa !7
  %853 = load i32, ptr %601, align 4, !tbaa !7
  %854 = and i32 %853, %839
  %855 = or i32 %851, %838
  %856 = lshr i32 %853, %543
  %857 = zext i32 %856 to i64
  %858 = getelementptr inbounds [66000 x i32], ptr %15, i64 0, i64 %857
  %859 = load i32, ptr %858, align 4, !tbaa !7
  %860 = and i32 %853, %.lcssa7
  %861 = zext i32 %860 to i64
  %862 = getelementptr inbounds [66000 x i32], ptr %16, i64 0, i64 %861
  %863 = load i32, ptr %862, align 4, !tbaa !7
  %864 = or i32 %863, %859
  %865 = and i32 %864, %834
  %866 = lshr i32 %855, %543
  %867 = zext i32 %866 to i64
  %868 = getelementptr inbounds [66000 x i32], ptr %15, i64 0, i64 %867
  %869 = load i32, ptr %868, align 4, !tbaa !7
  %870 = and i32 %855, %.lcssa7
  %871 = zext i32 %870 to i64
  %872 = getelementptr inbounds [66000 x i32], ptr %16, i64 0, i64 %871
  %873 = load i32, ptr %872, align 4, !tbaa !7
  %874 = or i32 %869, %873
  %875 = or i32 %874, %838
  %876 = and i32 %875, %537
  %877 = or i32 %876, %865
  %878 = or i32 %877, %854
  store i32 %878, ptr %602, align 4, !tbaa !7
  br i1 %603, label %1141, label %879

879:                                              ; preds = %841
  %880 = load i32, ptr %604, align 8, !tbaa !7
  %881 = and i32 %880, %839
  %882 = or i32 %877, %853
  %883 = lshr i32 %880, %543
  %884 = zext i32 %883 to i64
  %885 = getelementptr inbounds [66000 x i32], ptr %15, i64 0, i64 %884
  %886 = load i32, ptr %885, align 4, !tbaa !7
  %887 = and i32 %880, %.lcssa7
  %888 = zext i32 %887 to i64
  %889 = getelementptr inbounds [66000 x i32], ptr %16, i64 0, i64 %888
  %890 = load i32, ptr %889, align 4, !tbaa !7
  %891 = or i32 %890, %886
  %892 = and i32 %891, %834
  %893 = lshr i32 %882, %543
  %894 = zext i32 %893 to i64
  %895 = getelementptr inbounds [66000 x i32], ptr %15, i64 0, i64 %894
  %896 = load i32, ptr %895, align 4, !tbaa !7
  %897 = and i32 %882, %.lcssa7
  %898 = zext i32 %897 to i64
  %899 = getelementptr inbounds [66000 x i32], ptr %16, i64 0, i64 %898
  %900 = load i32, ptr %899, align 4, !tbaa !7
  %901 = or i32 %896, %900
  %902 = or i32 %901, %853
  %903 = and i32 %902, %537
  %904 = or i32 %903, %892
  %905 = or i32 %904, %881
  store i32 %905, ptr %605, align 8, !tbaa !7
  br i1 %606, label %1141, label %906

906:                                              ; preds = %879
  %907 = load i32, ptr %607, align 4, !tbaa !7
  %908 = and i32 %907, %839
  %909 = or i32 %904, %880
  %910 = lshr i32 %907, %543
  %911 = zext i32 %910 to i64
  %912 = getelementptr inbounds [66000 x i32], ptr %15, i64 0, i64 %911
  %913 = load i32, ptr %912, align 4, !tbaa !7
  %914 = and i32 %907, %.lcssa7
  %915 = zext i32 %914 to i64
  %916 = getelementptr inbounds [66000 x i32], ptr %16, i64 0, i64 %915
  %917 = load i32, ptr %916, align 4, !tbaa !7
  %918 = or i32 %917, %913
  %919 = and i32 %918, %834
  %920 = lshr i32 %909, %543
  %921 = zext i32 %920 to i64
  %922 = getelementptr inbounds [66000 x i32], ptr %15, i64 0, i64 %921
  %923 = load i32, ptr %922, align 4, !tbaa !7
  %924 = and i32 %909, %.lcssa7
  %925 = zext i32 %924 to i64
  %926 = getelementptr inbounds [66000 x i32], ptr %16, i64 0, i64 %925
  %927 = load i32, ptr %926, align 4, !tbaa !7
  %928 = or i32 %923, %927
  %929 = or i32 %928, %880
  %930 = and i32 %929, %537
  %931 = or i32 %930, %919
  %932 = or i32 %931, %908
  store i32 %932, ptr %608, align 4, !tbaa !7
  br i1 %609, label %1141, label %933

933:                                              ; preds = %906
  %934 = load i32, ptr %610, align 16, !tbaa !7
  %935 = and i32 %934, %839
  %936 = or i32 %931, %907
  %937 = lshr i32 %934, %543
  %938 = zext i32 %937 to i64
  %939 = getelementptr inbounds [66000 x i32], ptr %15, i64 0, i64 %938
  %940 = load i32, ptr %939, align 4, !tbaa !7
  %941 = and i32 %934, %.lcssa7
  %942 = zext i32 %941 to i64
  %943 = getelementptr inbounds [66000 x i32], ptr %16, i64 0, i64 %942
  %944 = load i32, ptr %943, align 4, !tbaa !7
  %945 = or i32 %944, %940
  %946 = and i32 %945, %834
  %947 = lshr i32 %936, %543
  %948 = zext i32 %947 to i64
  %949 = getelementptr inbounds [66000 x i32], ptr %15, i64 0, i64 %948
  %950 = load i32, ptr %949, align 4, !tbaa !7
  %951 = and i32 %936, %.lcssa7
  %952 = zext i32 %951 to i64
  %953 = getelementptr inbounds [66000 x i32], ptr %16, i64 0, i64 %952
  %954 = load i32, ptr %953, align 4, !tbaa !7
  %955 = or i32 %950, %954
  %956 = or i32 %955, %907
  %957 = and i32 %956, %537
  %958 = or i32 %946, %935
  %959 = or i32 %958, %957
  br label %1138

960:                                              ; preds = %836
  store i32 %840, ptr %13, align 16, !tbaa !7
  %961 = load i32, ptr %601, align 4, !tbaa !7
  %962 = and i32 %961, %839
  %963 = lshr i32 %838, %543
  %964 = zext i32 %963 to i64
  %965 = getelementptr inbounds [66000 x i32], ptr %15, i64 0, i64 %964
  %966 = load i32, ptr %965, align 4, !tbaa !7
  %967 = and i32 %838, %.lcssa7
  %968 = zext i32 %967 to i64
  %969 = getelementptr inbounds [66000 x i32], ptr %16, i64 0, i64 %968
  %970 = load i32, ptr %969, align 4, !tbaa !7
  %971 = or i32 %966, %970
  %972 = or i32 %971, %838
  %973 = and i32 %972, %537
  %974 = or i32 %973, %962
  store i32 %974, ptr %602, align 4, !tbaa !7
  br i1 %603, label %1141, label %975

975:                                              ; preds = %960
  %976 = load i32, ptr %604, align 8, !tbaa !7
  %977 = and i32 %976, %839
  %978 = or i32 %973, %961
  %979 = lshr i32 %978, %543
  %980 = zext i32 %979 to i64
  %981 = getelementptr inbounds [66000 x i32], ptr %15, i64 0, i64 %980
  %982 = load i32, ptr %981, align 4, !tbaa !7
  %983 = and i32 %978, %.lcssa7
  %984 = zext i32 %983 to i64
  %985 = getelementptr inbounds [66000 x i32], ptr %16, i64 0, i64 %984
  %986 = load i32, ptr %985, align 4, !tbaa !7
  %987 = or i32 %982, %986
  %988 = or i32 %987, %961
  %989 = and i32 %988, %537
  %990 = or i32 %989, %977
  store i32 %990, ptr %605, align 8, !tbaa !7
  br i1 %606, label %1141, label %991

991:                                              ; preds = %975
  %992 = load i32, ptr %607, align 4, !tbaa !7
  %993 = and i32 %992, %839
  %994 = or i32 %989, %976
  %995 = lshr i32 %994, %543
  %996 = zext i32 %995 to i64
  %997 = getelementptr inbounds [66000 x i32], ptr %15, i64 0, i64 %996
  %998 = load i32, ptr %997, align 4, !tbaa !7
  %999 = and i32 %994, %.lcssa7
  %1000 = zext i32 %999 to i64
  %1001 = getelementptr inbounds [66000 x i32], ptr %16, i64 0, i64 %1000
  %1002 = load i32, ptr %1001, align 4, !tbaa !7
  %1003 = or i32 %998, %1002
  %1004 = or i32 %1003, %976
  %1005 = and i32 %1004, %537
  %1006 = or i32 %1005, %993
  store i32 %1006, ptr %608, align 4, !tbaa !7
  br i1 %609, label %1141, label %1007

1007:                                             ; preds = %991
  %1008 = load i32, ptr %610, align 16, !tbaa !7
  %1009 = and i32 %1008, %839
  %1010 = or i32 %1005, %992
  %1011 = lshr i32 %1010, %543
  %1012 = zext i32 %1011 to i64
  %1013 = getelementptr inbounds [66000 x i32], ptr %15, i64 0, i64 %1012
  %1014 = load i32, ptr %1013, align 4, !tbaa !7
  %1015 = and i32 %1010, %.lcssa7
  %1016 = zext i32 %1015 to i64
  %1017 = getelementptr inbounds [66000 x i32], ptr %16, i64 0, i64 %1016
  %1018 = load i32, ptr %1017, align 4, !tbaa !7
  %1019 = or i32 %1014, %1018
  %1020 = or i32 %1019, %992
  %1021 = and i32 %1020, %537
  %1022 = or i32 %1021, %1009
  br label %1138

1023:                                             ; preds = %827
  %1024 = add nsw i32 %829, 1
  %1025 = load i32, ptr @Init1, align 4, !tbaa !7
  %1026 = load i32, ptr %613, align 4, !tbaa !7
  %1027 = and i32 %1026, %1025
  %1028 = lshr i32 %1026, %543
  %1029 = zext i32 %1028 to i64
  %1030 = getelementptr inbounds [66000 x i32], ptr %15, i64 0, i64 %1029
  %1031 = load i32, ptr %1030, align 4, !tbaa !7
  %1032 = and i32 %1026, %.lcssa7
  %1033 = zext i32 %1032 to i64
  %1034 = getelementptr inbounds [66000 x i32], ptr %16, i64 0, i64 %1033
  %1035 = load i32, ptr %1034, align 4, !tbaa !7
  %1036 = or i32 %1035, %1031
  %1037 = and i32 %1036, %834
  %1038 = or i32 %1037, %1027
  store i32 %1038, ptr %614, align 4, !tbaa !7
  %1039 = load i1, ptr @TAIL, align 4
  br i1 %1039, label %1040, label %1051

1040:                                             ; preds = %1023
  %1041 = lshr i32 %1038, %543
  %1042 = zext i32 %1041 to i64
  %1043 = getelementptr inbounds [66000 x i32], ptr %15, i64 0, i64 %1042
  %1044 = load i32, ptr %1043, align 4, !tbaa !7
  %1045 = and i32 %1038, %.lcssa7
  %1046 = zext i32 %1045 to i64
  %1047 = getelementptr inbounds [66000 x i32], ptr %16, i64 0, i64 %1046
  %1048 = load i32, ptr %1047, align 4, !tbaa !7
  %1049 = or i32 %1044, %1048
  %1050 = or i32 %1049, %1038
  store i32 %1050, ptr %614, align 4, !tbaa !7
  br label %1051

1051:                                             ; preds = %1040, %1023
  %1052 = phi i32 [ %1050, %1040 ], [ %1038, %1023 ]
  %1053 = load i1, ptr @INVERSE, align 4
  %1054 = and i32 %1052, 1
  %1055 = icmp eq i32 %1054, 0
  %1056 = xor i1 %1053, %1055
  br i1 %1056, label %1061, label %1057

1057:                                             ; preds = %1051
  %1058 = load i1, ptr @FILENAMEONLY, align 4
  br i1 %1058, label %1460, label %1059

1059:                                             ; preds = %1057
  %1060 = trunc i64 %828 to i32
  call fastcc void @r_output(ptr noundef nonnull %17, i32 noundef %1060, i32 noundef %811, i32 noundef %1024) #26
  br label %1061

1061:                                             ; preds = %1059, %1051
  %1062 = load i32, ptr @Init, align 16, !tbaa !7
  br label %1063

1063:                                             ; preds = %1085, %1061
  %1064 = phi i64 [ 0, %1061 ], [ %1086, %1085 ]
  %1065 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %1061 ], [ %1087, %1085 ]
  %1066 = icmp ule <4 x i64> %1065, %621
  %1067 = extractelement <4 x i1> %1066, i64 0
  br i1 %1067, label %1068, label %1070

1068:                                             ; preds = %1063
  %1069 = getelementptr inbounds [5 x i32], ptr %14, i64 0, i64 %1064
  store i32 %1062, ptr %1069, align 16, !tbaa !7
  br label %1070

1070:                                             ; preds = %1068, %1063
  %1071 = extractelement <4 x i1> %1066, i64 1
  br i1 %1071, label %1072, label %1075

1072:                                             ; preds = %1070
  %1073 = or i64 %1064, 1
  %1074 = getelementptr inbounds [5 x i32], ptr %14, i64 0, i64 %1073
  store i32 %1062, ptr %1074, align 4, !tbaa !7
  br label %1075

1075:                                             ; preds = %1072, %1070
  %1076 = extractelement <4 x i1> %1066, i64 2
  br i1 %1076, label %1077, label %1080

1077:                                             ; preds = %1075
  %1078 = or i64 %1064, 2
  %1079 = getelementptr inbounds [5 x i32], ptr %14, i64 0, i64 %1078
  store i32 %1062, ptr %1079, align 8, !tbaa !7
  br label %1080

1080:                                             ; preds = %1077, %1075
  %1081 = extractelement <4 x i1> %1066, i64 3
  br i1 %1081, label %1082, label %1085

1082:                                             ; preds = %1080
  %1083 = or i64 %1064, 3
  %1084 = getelementptr inbounds [5 x i32], ptr %14, i64 0, i64 %1083
  store i32 %1062, ptr %1084, align 4, !tbaa !7
  br label %1085

1085:                                             ; preds = %1082, %1080
  %1086 = add nuw nsw i64 %1064, 4
  %1087 = add <4 x i64> %1065, <i64 4, i64 4, i64 4, i64 4>
  %1088 = icmp eq i64 %1086, %618
  br i1 %1088, label %1089, label %1063, !llvm.loop !141

1089:                                             ; preds = %1085
  %1090 = load i32, ptr @Init1, align 4, !tbaa !7
  %1091 = load i32, ptr %14, align 16, !tbaa !7
  %1092 = and i32 %1091, %1090
  %1093 = lshr i32 %1091, %543
  %1094 = zext i32 %1093 to i64
  %1095 = getelementptr inbounds [66000 x i32], ptr %15, i64 0, i64 %1094
  %1096 = load i32, ptr %1095, align 4, !tbaa !7
  %1097 = and i32 %1091, %.lcssa7
  %1098 = zext i32 %1097 to i64
  %1099 = getelementptr inbounds [66000 x i32], ptr %16, i64 0, i64 %1098
  %1100 = load i32, ptr %1099, align 4, !tbaa !7
  %1101 = or i32 %1100, %1096
  %1102 = and i32 %1101, %834
  %1103 = or i32 %1102, %1092
  store i32 %1103, ptr %13, align 16, !tbaa !7
  br label %1104

1104:                                             ; preds = %1104, %1089
  %1105 = phi i32 [ %1091, %1089 ], [ %1109, %1104 ]
  %1106 = phi i32 [ %1103, %1089 ], [ %1134, %1104 ]
  %1107 = phi i64 [ 1, %1089 ], [ %1136, %1104 ]
  %1108 = getelementptr inbounds [5 x i32], ptr %14, i64 0, i64 %1107
  %1109 = load i32, ptr %1108, align 4, !tbaa !7
  %1110 = and i32 %1109, %1090
  %1111 = or i32 %1106, %1105
  %1112 = lshr i32 %1109, %543
  %1113 = zext i32 %1112 to i64
  %1114 = getelementptr inbounds [66000 x i32], ptr %15, i64 0, i64 %1113
  %1115 = load i32, ptr %1114, align 4, !tbaa !7
  %1116 = and i32 %1109, %.lcssa7
  %1117 = zext i32 %1116 to i64
  %1118 = getelementptr inbounds [66000 x i32], ptr %16, i64 0, i64 %1117
  %1119 = load i32, ptr %1118, align 4, !tbaa !7
  %1120 = or i32 %1119, %1115
  %1121 = and i32 %1120, %834
  %1122 = lshr i32 %1111, %543
  %1123 = zext i32 %1122 to i64
  %1124 = getelementptr inbounds [66000 x i32], ptr %15, i64 0, i64 %1123
  %1125 = load i32, ptr %1124, align 4, !tbaa !7
  %1126 = and i32 %1111, %.lcssa7
  %1127 = zext i32 %1126 to i64
  %1128 = getelementptr inbounds [66000 x i32], ptr %16, i64 0, i64 %1127
  %1129 = load i32, ptr %1128, align 4, !tbaa !7
  %1130 = or i32 %1125, %1129
  %1131 = or i32 %1130, %1105
  %1132 = and i32 %1131, %537
  %1133 = or i32 %1121, %1110
  %1134 = or i32 %1133, %1132
  %1135 = getelementptr inbounds [5 x i32], ptr %13, i64 0, i64 %1107
  store i32 %1134, ptr %1135, align 4, !tbaa !7
  %1136 = add nuw nsw i64 %1107, 1
  %1137 = icmp eq i64 %1136, %616
  br i1 %1137, label %1141, label %1104, !llvm.loop !142

1138:                                             ; preds = %1007, %933
  %1139 = phi i32 [ %1022, %1007 ], [ %959, %933 ]
  %1140 = phi i32 [ %840, %1007 ], [ %852, %933 ]
  store i32 %1139, ptr %611, align 16, !tbaa !7
  br label %1141

1141:                                             ; preds = %1138, %1104, %991, %975, %960, %906, %879, %841
  %1142 = phi i32 [ %839, %841 ], [ %839, %879 ], [ %839, %906 ], [ %839, %960 ], [ %839, %975 ], [ %839, %991 ], [ %839, %1138 ], [ %1090, %1104 ]
  %1143 = phi i32 [ %852, %841 ], [ %852, %879 ], [ %852, %906 ], [ %840, %960 ], [ %840, %975 ], [ %840, %991 ], [ %1140, %1138 ], [ %1103, %1104 ]
  %1144 = phi i32 [ %829, %841 ], [ %829, %879 ], [ %829, %906 ], [ %829, %960 ], [ %829, %975 ], [ %829, %991 ], [ %829, %1138 ], [ %1024, %1104 ]
  %1145 = add nuw nsw i64 %828, 1
  %1146 = getelementptr inbounds [50177 x i8], ptr %17, i64 0, i64 %1145
  %1147 = load i8, ptr %1146, align 1, !tbaa !13
  %1148 = zext i8 %1147 to i64
  %1149 = getelementptr inbounds [256 x i32], ptr @Mask, i64 0, i64 %1148
  %1150 = load i32, ptr %1149, align 4, !tbaa !7
  %1151 = icmp eq i8 %1147, 10
  br i1 %1151, label %1337, label %1152

1152:                                             ; preds = %1141
  %1153 = icmp eq i32 %1150, 0
  %1154 = and i32 %1143, %1142
  br i1 %1153, label %1274, label %1155

1155:                                             ; preds = %1152
  %1156 = lshr i32 %1143, %543
  %1157 = zext i32 %1156 to i64
  %1158 = getelementptr inbounds [66000 x i32], ptr %15, i64 0, i64 %1157
  %1159 = load i32, ptr %1158, align 4, !tbaa !7
  %1160 = and i32 %1143, %.lcssa7
  %1161 = zext i32 %1160 to i64
  %1162 = getelementptr inbounds [66000 x i32], ptr %16, i64 0, i64 %1161
  %1163 = load i32, ptr %1162, align 4, !tbaa !7
  %1164 = or i32 %1163, %1159
  %1165 = and i32 %1164, %1150
  %1166 = or i32 %1165, %1154
  store i32 %1166, ptr %14, align 16, !tbaa !7
  %1167 = load i32, ptr %602, align 4, !tbaa !7
  %1168 = and i32 %1167, %1142
  %1169 = or i32 %1165, %1143
  %1170 = lshr i32 %1167, %543
  %1171 = zext i32 %1170 to i64
  %1172 = getelementptr inbounds [66000 x i32], ptr %15, i64 0, i64 %1171
  %1173 = load i32, ptr %1172, align 4, !tbaa !7
  %1174 = and i32 %1167, %.lcssa7
  %1175 = zext i32 %1174 to i64
  %1176 = getelementptr inbounds [66000 x i32], ptr %16, i64 0, i64 %1175
  %1177 = load i32, ptr %1176, align 4, !tbaa !7
  %1178 = or i32 %1177, %1173
  %1179 = and i32 %1178, %1150
  %1180 = lshr i32 %1169, %543
  %1181 = zext i32 %1180 to i64
  %1182 = getelementptr inbounds [66000 x i32], ptr %15, i64 0, i64 %1181
  %1183 = load i32, ptr %1182, align 4, !tbaa !7
  %1184 = and i32 %1169, %.lcssa7
  %1185 = zext i32 %1184 to i64
  %1186 = getelementptr inbounds [66000 x i32], ptr %16, i64 0, i64 %1185
  %1187 = load i32, ptr %1186, align 4, !tbaa !7
  %1188 = or i32 %1183, %1187
  %1189 = or i32 %1188, %1143
  %1190 = and i32 %1189, %537
  %1191 = or i32 %1190, %1179
  %1192 = or i32 %1191, %1168
  store i32 %1192, ptr %601, align 4, !tbaa !7
  br i1 %603, label %1452, label %1193

1193:                                             ; preds = %1155
  %1194 = load i32, ptr %605, align 8, !tbaa !7
  %1195 = and i32 %1194, %1142
  %1196 = or i32 %1191, %1167
  %1197 = lshr i32 %1194, %543
  %1198 = zext i32 %1197 to i64
  %1199 = getelementptr inbounds [66000 x i32], ptr %15, i64 0, i64 %1198
  %1200 = load i32, ptr %1199, align 4, !tbaa !7
  %1201 = and i32 %1194, %.lcssa7
  %1202 = zext i32 %1201 to i64
  %1203 = getelementptr inbounds [66000 x i32], ptr %16, i64 0, i64 %1202
  %1204 = load i32, ptr %1203, align 4, !tbaa !7
  %1205 = or i32 %1204, %1200
  %1206 = and i32 %1205, %1150
  %1207 = lshr i32 %1196, %543
  %1208 = zext i32 %1207 to i64
  %1209 = getelementptr inbounds [66000 x i32], ptr %15, i64 0, i64 %1208
  %1210 = load i32, ptr %1209, align 4, !tbaa !7
  %1211 = and i32 %1196, %.lcssa7
  %1212 = zext i32 %1211 to i64
  %1213 = getelementptr inbounds [66000 x i32], ptr %16, i64 0, i64 %1212
  %1214 = load i32, ptr %1213, align 4, !tbaa !7
  %1215 = or i32 %1210, %1214
  %1216 = or i32 %1215, %1167
  %1217 = and i32 %1216, %537
  %1218 = or i32 %1217, %1206
  %1219 = or i32 %1218, %1195
  store i32 %1219, ptr %604, align 8, !tbaa !7
  br i1 %606, label %1452, label %1220

1220:                                             ; preds = %1193
  %1221 = load i32, ptr %608, align 4, !tbaa !7
  %1222 = and i32 %1221, %1142
  %1223 = or i32 %1218, %1194
  %1224 = lshr i32 %1221, %543
  %1225 = zext i32 %1224 to i64
  %1226 = getelementptr inbounds [66000 x i32], ptr %15, i64 0, i64 %1225
  %1227 = load i32, ptr %1226, align 4, !tbaa !7
  %1228 = and i32 %1221, %.lcssa7
  %1229 = zext i32 %1228 to i64
  %1230 = getelementptr inbounds [66000 x i32], ptr %16, i64 0, i64 %1229
  %1231 = load i32, ptr %1230, align 4, !tbaa !7
  %1232 = or i32 %1231, %1227
  %1233 = and i32 %1232, %1150
  %1234 = lshr i32 %1223, %543
  %1235 = zext i32 %1234 to i64
  %1236 = getelementptr inbounds [66000 x i32], ptr %15, i64 0, i64 %1235
  %1237 = load i32, ptr %1236, align 4, !tbaa !7
  %1238 = and i32 %1223, %.lcssa7
  %1239 = zext i32 %1238 to i64
  %1240 = getelementptr inbounds [66000 x i32], ptr %16, i64 0, i64 %1239
  %1241 = load i32, ptr %1240, align 4, !tbaa !7
  %1242 = or i32 %1237, %1241
  %1243 = or i32 %1242, %1194
  %1244 = and i32 %1243, %537
  %1245 = or i32 %1244, %1233
  %1246 = or i32 %1245, %1222
  store i32 %1246, ptr %607, align 4, !tbaa !7
  br i1 %609, label %1452, label %1247

1247:                                             ; preds = %1220
  %1248 = load i32, ptr %611, align 16, !tbaa !7
  %1249 = and i32 %1248, %1142
  %1250 = or i32 %1245, %1221
  %1251 = lshr i32 %1248, %543
  %1252 = zext i32 %1251 to i64
  %1253 = getelementptr inbounds [66000 x i32], ptr %15, i64 0, i64 %1252
  %1254 = load i32, ptr %1253, align 4, !tbaa !7
  %1255 = and i32 %1248, %.lcssa7
  %1256 = zext i32 %1255 to i64
  %1257 = getelementptr inbounds [66000 x i32], ptr %16, i64 0, i64 %1256
  %1258 = load i32, ptr %1257, align 4, !tbaa !7
  %1259 = or i32 %1258, %1254
  %1260 = and i32 %1259, %1150
  %1261 = lshr i32 %1250, %543
  %1262 = zext i32 %1261 to i64
  %1263 = getelementptr inbounds [66000 x i32], ptr %15, i64 0, i64 %1262
  %1264 = load i32, ptr %1263, align 4, !tbaa !7
  %1265 = and i32 %1250, %.lcssa7
  %1266 = zext i32 %1265 to i64
  %1267 = getelementptr inbounds [66000 x i32], ptr %16, i64 0, i64 %1266
  %1268 = load i32, ptr %1267, align 4, !tbaa !7
  %1269 = or i32 %1264, %1268
  %1270 = or i32 %1269, %1221
  %1271 = and i32 %1270, %537
  %1272 = or i32 %1260, %1249
  %1273 = or i32 %1272, %1271
  br label %1450

1274:                                             ; preds = %1152
  store i32 %1154, ptr %14, align 16, !tbaa !7
  %1275 = load i32, ptr %602, align 4, !tbaa !7
  %1276 = and i32 %1275, %1142
  %1277 = lshr i32 %1143, %543
  %1278 = zext i32 %1277 to i64
  %1279 = getelementptr inbounds [66000 x i32], ptr %15, i64 0, i64 %1278
  %1280 = load i32, ptr %1279, align 4, !tbaa !7
  %1281 = and i32 %1143, %.lcssa7
  %1282 = zext i32 %1281 to i64
  %1283 = getelementptr inbounds [66000 x i32], ptr %16, i64 0, i64 %1282
  %1284 = load i32, ptr %1283, align 4, !tbaa !7
  %1285 = or i32 %1280, %1284
  %1286 = or i32 %1285, %1143
  %1287 = and i32 %1286, %537
  %1288 = or i32 %1287, %1276
  store i32 %1288, ptr %601, align 4, !tbaa !7
  br i1 %603, label %1452, label %1289

1289:                                             ; preds = %1274
  %1290 = load i32, ptr %605, align 8, !tbaa !7
  %1291 = and i32 %1290, %1142
  %1292 = or i32 %1287, %1275
  %1293 = lshr i32 %1292, %543
  %1294 = zext i32 %1293 to i64
  %1295 = getelementptr inbounds [66000 x i32], ptr %15, i64 0, i64 %1294
  %1296 = load i32, ptr %1295, align 4, !tbaa !7
  %1297 = and i32 %1292, %.lcssa7
  %1298 = zext i32 %1297 to i64
  %1299 = getelementptr inbounds [66000 x i32], ptr %16, i64 0, i64 %1298
  %1300 = load i32, ptr %1299, align 4, !tbaa !7
  %1301 = or i32 %1296, %1300
  %1302 = or i32 %1301, %1275
  %1303 = and i32 %1302, %537
  %1304 = or i32 %1303, %1291
  store i32 %1304, ptr %604, align 8, !tbaa !7
  br i1 %606, label %1452, label %1305

1305:                                             ; preds = %1289
  %1306 = load i32, ptr %608, align 4, !tbaa !7
  %1307 = and i32 %1306, %1142
  %1308 = or i32 %1303, %1290
  %1309 = lshr i32 %1308, %543
  %1310 = zext i32 %1309 to i64
  %1311 = getelementptr inbounds [66000 x i32], ptr %15, i64 0, i64 %1310
  %1312 = load i32, ptr %1311, align 4, !tbaa !7
  %1313 = and i32 %1308, %.lcssa7
  %1314 = zext i32 %1313 to i64
  %1315 = getelementptr inbounds [66000 x i32], ptr %16, i64 0, i64 %1314
  %1316 = load i32, ptr %1315, align 4, !tbaa !7
  %1317 = or i32 %1312, %1316
  %1318 = or i32 %1317, %1290
  %1319 = and i32 %1318, %537
  %1320 = or i32 %1319, %1307
  store i32 %1320, ptr %607, align 4, !tbaa !7
  br i1 %609, label %1452, label %1321

1321:                                             ; preds = %1305
  %1322 = load i32, ptr %611, align 16, !tbaa !7
  %1323 = and i32 %1322, %1142
  %1324 = or i32 %1319, %1306
  %1325 = lshr i32 %1324, %543
  %1326 = zext i32 %1325 to i64
  %1327 = getelementptr inbounds [66000 x i32], ptr %15, i64 0, i64 %1326
  %1328 = load i32, ptr %1327, align 4, !tbaa !7
  %1329 = and i32 %1324, %.lcssa7
  %1330 = zext i32 %1329 to i64
  %1331 = getelementptr inbounds [66000 x i32], ptr %16, i64 0, i64 %1330
  %1332 = load i32, ptr %1331, align 4, !tbaa !7
  %1333 = or i32 %1328, %1332
  %1334 = or i32 %1333, %1306
  %1335 = and i32 %1334, %537
  %1336 = or i32 %1335, %1323
  br label %1450

1337:                                             ; preds = %1141
  %1338 = add nsw i32 %1144, 1
  %1339 = load i32, ptr %614, align 4, !tbaa !7
  %1340 = and i32 %1339, %1142
  %1341 = lshr i32 %1339, %543
  %1342 = zext i32 %1341 to i64
  %1343 = getelementptr inbounds [66000 x i32], ptr %15, i64 0, i64 %1342
  %1344 = load i32, ptr %1343, align 4, !tbaa !7
  %1345 = and i32 %1339, %.lcssa7
  %1346 = zext i32 %1345 to i64
  %1347 = getelementptr inbounds [66000 x i32], ptr %16, i64 0, i64 %1346
  %1348 = load i32, ptr %1347, align 4, !tbaa !7
  %1349 = or i32 %1348, %1344
  %1350 = and i32 %1349, %1150
  %1351 = or i32 %1350, %1340
  store i32 %1351, ptr %613, align 4, !tbaa !7
  %1352 = load i1, ptr @TAIL, align 4
  br i1 %1352, label %1353, label %1364

1353:                                             ; preds = %1337
  %1354 = lshr i32 %1351, %543
  %1355 = zext i32 %1354 to i64
  %1356 = getelementptr inbounds [66000 x i32], ptr %15, i64 0, i64 %1355
  %1357 = load i32, ptr %1356, align 4, !tbaa !7
  %1358 = and i32 %1351, %.lcssa7
  %1359 = zext i32 %1358 to i64
  %1360 = getelementptr inbounds [66000 x i32], ptr %16, i64 0, i64 %1359
  %1361 = load i32, ptr %1360, align 4, !tbaa !7
  %1362 = or i32 %1357, %1361
  %1363 = or i32 %1362, %1351
  store i32 %1363, ptr %613, align 4, !tbaa !7
  br label %1364

1364:                                             ; preds = %1353, %1337
  %1365 = phi i32 [ %1363, %1353 ], [ %1351, %1337 ]
  %1366 = load i1, ptr @INVERSE, align 4
  %1367 = and i32 %1365, 1
  %1368 = icmp eq i32 %1367, 0
  %1369 = xor i1 %1366, %1368
  br i1 %1369, label %1374, label %1370

1370:                                             ; preds = %1364
  %1371 = load i1, ptr @FILENAMEONLY, align 4
  br i1 %1371, label %1460, label %1372

1372:                                             ; preds = %1370
  %1373 = trunc i64 %1145 to i32
  call fastcc void @r_output(ptr noundef nonnull %17, i32 noundef %1373, i32 noundef %811, i32 noundef %1338) #26
  br label %1374

1374:                                             ; preds = %1372, %1364
  br label %1375

1375:                                             ; preds = %1397, %1374
  %1376 = phi i64 [ %1398, %1397 ], [ 0, %1374 ]
  %1377 = phi <4 x i64> [ %1399, %1397 ], [ <i64 0, i64 1, i64 2, i64 3>, %1374 ]
  %1378 = icmp ule <4 x i64> %1377, %621
  %1379 = extractelement <4 x i1> %1378, i64 0
  br i1 %1379, label %1380, label %1382

1380:                                             ; preds = %1375
  %1381 = getelementptr inbounds [5 x i32], ptr %13, i64 0, i64 %1376
  store i32 %570, ptr %1381, align 16, !tbaa !7
  br label %1382

1382:                                             ; preds = %1380, %1375
  %1383 = extractelement <4 x i1> %1378, i64 1
  br i1 %1383, label %1384, label %1387

1384:                                             ; preds = %1382
  %1385 = or i64 %1376, 1
  %1386 = getelementptr inbounds [5 x i32], ptr %13, i64 0, i64 %1385
  store i32 %570, ptr %1386, align 4, !tbaa !7
  br label %1387

1387:                                             ; preds = %1384, %1382
  %1388 = extractelement <4 x i1> %1378, i64 2
  br i1 %1388, label %1389, label %1392

1389:                                             ; preds = %1387
  %1390 = or i64 %1376, 2
  %1391 = getelementptr inbounds [5 x i32], ptr %13, i64 0, i64 %1390
  store i32 %570, ptr %1391, align 8, !tbaa !7
  br label %1392

1392:                                             ; preds = %1389, %1387
  %1393 = extractelement <4 x i1> %1378, i64 3
  br i1 %1393, label %1394, label %1397

1394:                                             ; preds = %1392
  %1395 = or i64 %1376, 3
  %1396 = getelementptr inbounds [5 x i32], ptr %13, i64 0, i64 %1395
  store i32 %570, ptr %1396, align 4, !tbaa !7
  br label %1397

1397:                                             ; preds = %1394, %1392
  %1398 = add nuw nsw i64 %1376, 4
  %1399 = add <4 x i64> %1377, <i64 4, i64 4, i64 4, i64 4>
  %1400 = icmp eq i64 %1398, %618
  br i1 %1400, label %1401, label %1375, !llvm.loop !143

1401:                                             ; preds = %1397
  %1402 = load i32, ptr @Init1, align 4, !tbaa !7
  %1403 = load i32, ptr %13, align 16, !tbaa !7
  %1404 = and i32 %1403, %1402
  %1405 = lshr i32 %1403, %543
  %1406 = zext i32 %1405 to i64
  %1407 = getelementptr inbounds [66000 x i32], ptr %15, i64 0, i64 %1406
  %1408 = load i32, ptr %1407, align 4, !tbaa !7
  %1409 = and i32 %1403, %.lcssa7
  %1410 = zext i32 %1409 to i64
  %1411 = getelementptr inbounds [66000 x i32], ptr %16, i64 0, i64 %1410
  %1412 = load i32, ptr %1411, align 4, !tbaa !7
  %1413 = or i32 %1412, %1408
  %1414 = and i32 %1413, %1150
  %1415 = or i32 %1414, %1404
  store i32 %1415, ptr %14, align 16, !tbaa !7
  br label %1416

1416:                                             ; preds = %1416, %1401
  %1417 = phi i32 [ %1415, %1401 ], [ %1446, %1416 ]
  %1418 = phi i32 [ %1403, %1401 ], [ %1421, %1416 ]
  %1419 = phi i64 [ 1, %1401 ], [ %1448, %1416 ]
  %1420 = getelementptr inbounds [5 x i32], ptr %13, i64 0, i64 %1419
  %1421 = load i32, ptr %1420, align 4, !tbaa !7
  %1422 = and i32 %1421, %1402
  %1423 = or i32 %1418, %1417
  %1424 = lshr i32 %1421, %543
  %1425 = zext i32 %1424 to i64
  %1426 = getelementptr inbounds [66000 x i32], ptr %15, i64 0, i64 %1425
  %1427 = load i32, ptr %1426, align 4, !tbaa !7
  %1428 = and i32 %1421, %.lcssa7
  %1429 = zext i32 %1428 to i64
  %1430 = getelementptr inbounds [66000 x i32], ptr %16, i64 0, i64 %1429
  %1431 = load i32, ptr %1430, align 4, !tbaa !7
  %1432 = or i32 %1431, %1427
  %1433 = and i32 %1432, %1150
  %1434 = lshr i32 %1423, %543
  %1435 = zext i32 %1434 to i64
  %1436 = getelementptr inbounds [66000 x i32], ptr %15, i64 0, i64 %1435
  %1437 = load i32, ptr %1436, align 4, !tbaa !7
  %1438 = and i32 %1423, %.lcssa7
  %1439 = zext i32 %1438 to i64
  %1440 = getelementptr inbounds [66000 x i32], ptr %16, i64 0, i64 %1439
  %1441 = load i32, ptr %1440, align 4, !tbaa !7
  %1442 = or i32 %1437, %1441
  %1443 = or i32 %1442, %1418
  %1444 = and i32 %1443, %537
  %1445 = or i32 %1433, %1422
  %1446 = or i32 %1445, %1444
  %1447 = getelementptr inbounds [5 x i32], ptr %14, i64 0, i64 %1419
  store i32 %1446, ptr %1447, align 4, !tbaa !7
  %1448 = add nuw nsw i64 %1419, 1
  %1449 = icmp eq i64 %1448, %616
  br i1 %1449, label %1452, label %1416, !llvm.loop !144

1450:                                             ; preds = %1321, %1247
  %1451 = phi i32 [ %1336, %1321 ], [ %1273, %1247 ]
  store i32 %1451, ptr %610, align 16, !tbaa !7
  br label %1452

1452:                                             ; preds = %1450, %1416, %1305, %1289, %1274, %1220, %1193, %1155
  %1453 = phi i32 [ %1144, %1155 ], [ %1144, %1193 ], [ %1144, %1220 ], [ %1144, %1274 ], [ %1144, %1289 ], [ %1144, %1305 ], [ %1144, %1450 ], [ %1338, %1416 ]
  %1454 = add nuw nsw i64 %828, 2
  %1455 = icmp ult i64 %1454, %826
  br i1 %1455, label %827, label %1456, !llvm.loop !145

1456:                                             ; preds = %1452
  %.lcssa6 = phi i32 [ %1453, %1452 ]
  %1457 = and i64 %807, 4294967295
  %1458 = getelementptr inbounds i8, ptr %17, i64 %1457
  %1459 = call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %17, ptr noundef nonnull dereferenceable(1) %1458, i64 noundef 1024) #25
  br label %804, !llvm.loop !146

1460:                                             ; preds = %1370, %1057, %777, %708
  %1461 = load i32, ptr @num_of_matched, align 4, !tbaa !7
  %1462 = add nsw i32 %1461, 1
  store i32 %1462, ptr @num_of_matched, align 4, !tbaa !7
  %1463 = call i32 @puts(ptr nonnull dereferenceable(1) @CurrentFileName)
  br label %1464

1464:                                             ; preds = %1460, %804, %629
  call void @llvm.lifetime.end.p0(i64 50177, ptr nonnull %17) #24
  call void @llvm.lifetime.end.p0(i64 264000, ptr nonnull %16) #24
  call void @llvm.lifetime.end.p0(i64 264000, ptr nonnull %15) #24
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %14) #24
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %13) #24
  br label %2856

1465:                                             ; preds = %35
  %1466 = icmp sgt i32 %2, 0
  %1467 = load i1, ptr @JUMP, align 4
  %1468 = select i1 %1466, i1 %1467, i1 false
  br i1 %1468, label %1469, label %1838

1469:                                             ; preds = %1465
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %10) #24
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %11) #24
  call void @llvm.lifetime.start.p0(i64 98305, ptr nonnull %12) #24
  %1470 = load i32, ptr @I, align 4, !tbaa !7
  %1471 = icmp eq i32 %1470, 0
  br i1 %1471, label %1472, label %1473

1472:                                             ; preds = %1469
  store i32 -1, ptr @Init1, align 4, !tbaa !7
  br label %1473

1473:                                             ; preds = %1472, %1469
  %1474 = load i32, ptr @DD, align 4, !tbaa !7
  %1475 = icmp ugt i32 %1474, %2
  br i1 %1475, label %1476, label %1478

1476:                                             ; preds = %1473
  %1477 = add nuw i32 %2, 1
  store i32 %1477, ptr @DD, align 4, !tbaa !7
  br label %1478

1478:                                             ; preds = %1476, %1473
  %1479 = icmp ugt i32 %1470, %2
  br i1 %1479, label %1480, label %1482

1480:                                             ; preds = %1478
  %1481 = add nuw i32 %2, 1
  store i32 %1481, ptr @I, align 4, !tbaa !7
  br label %1482

1482:                                             ; preds = %1480, %1478
  %1483 = load i32, ptr @S, align 4, !tbaa !7
  %1484 = icmp ugt i32 %1483, %2
  br i1 %1484, label %1485, label %1487

1485:                                             ; preds = %1482
  %1486 = add nuw i32 %2, 1
  store i32 %1486, ptr @S, align 4, !tbaa !7
  br label %1487

1487:                                             ; preds = %1485, %1482
  %1488 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) @old_D_pat) #29
  %1489 = trunc i64 %1488 to i32
  %1490 = getelementptr inbounds [98305 x i8], ptr %12, i64 0, i64 49151
  store i8 10, ptr %1490, align 1, !tbaa !13
  %1491 = load i32, ptr @NO_ERR_MASK, align 4, !tbaa !7
  %1492 = load i32, ptr @D_endpos, align 4, !tbaa !7
  %1493 = icmp ugt i32 %1489, 1
  br i1 %1493, label %1494, label %1501

1494:                                             ; preds = %1494, %1487
  %1495 = phi i32 [ %1499, %1494 ], [ 1, %1487 ]
  %1496 = phi i32 [ %1498, %1494 ], [ %1492, %1487 ]
  %1497 = shl i32 %1496, 1
  %1498 = or i32 %1497, %1496
  %1499 = add nuw i32 %1495, 1
  %1500 = icmp eq i32 %1499, %1489
  br i1 %1500, label %1501, label %1494, !llvm.loop !147

1501:                                             ; preds = %1494, %1487
  %1502 = phi i32 [ %1492, %1487 ], [ %1498, %1494 ]
  %1503 = shl nuw i32 %2, 1
  %1504 = zext i32 %2 to i64
  %1505 = shl nuw nsw i64 %1504, 2
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %11, i8 0, i64 %1505, i1 false), !tbaa !7
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %10, i8 0, i64 %1505, i1 false), !tbaa !7
  %1506 = load i32, ptr @Init, align 16, !tbaa !7
  %1507 = zext i32 %1503 to i64
  br label %1521

1508:                                             ; preds = %1521
  %1509 = xor i32 %1502, -1
  %1510 = add nuw i32 %2, 1
  %1511 = getelementptr inbounds i8, ptr %12, i64 49152
  %1512 = shl i64 %1488, 32
  %1513 = ashr exact i64 %1512, 32
  %1514 = getelementptr inbounds [17 x i32], ptr %11, i64 0, i64 %1504
  %1515 = getelementptr inbounds [17 x i32], ptr %10, i64 0, i64 %1504
  %1516 = getelementptr inbounds [17 x i32], ptr %10, i64 0, i64 %1507
  %1517 = xor i32 %1489, -1
  %1518 = getelementptr inbounds [17 x i32], ptr %11, i64 0, i64 %1507
  %1519 = zext i32 %1510 to i64
  %1520 = or i32 %1503, 1
  br label %1527

1521:                                             ; preds = %1521, %1501
  %1522 = phi i64 [ %1504, %1501 ], [ %1525, %1521 ]
  %1523 = getelementptr inbounds [17 x i32], ptr %11, i64 0, i64 %1522
  store i32 %1506, ptr %1523, align 4, !tbaa !7
  %1524 = getelementptr inbounds [17 x i32], ptr %10, i64 0, i64 %1522
  store i32 %1506, ptr %1524, align 4, !tbaa !7
  %1525 = add nuw nsw i64 %1522, 1
  %1526 = icmp ult i64 %1522, %1507
  br i1 %1526, label %1521, label %1508, !llvm.loop !148

1527:                                             ; preds = %1823, %1508
  %1528 = phi i32 [ %1832, %1823 ], [ 49152, %1508 ]
  %1529 = phi i32 [ %1819, %1823 ], [ 0, %1508 ]
  br label %1530

1530:                                             ; preds = %1530, %1527
  %1531 = phi i32 [ %1536, %1530 ], [ 0, %1527 ]
  %1532 = sext i32 %1531 to i64
  %1533 = getelementptr inbounds i8, ptr %1511, i64 %1532
  %1534 = call i64 @read(i32 noundef %0, ptr noundef nonnull %1533, i64 noundef 4096) #25
  %1535 = trunc i64 %1534 to i32
  %1536 = add nsw i32 %1531, %1535
  %1537 = icmp slt i32 %1536, 49152
  %1538 = icmp sgt i32 %1535, 0
  %1539 = and i1 %1538, %1537
  br i1 %1539, label %1530, label %1540, !llvm.loop !149

1540:                                             ; preds = %1530
  %.lcssa8 = phi i32 [ %1536, %1530 ]
  %1541 = icmp sgt i32 %.lcssa8, 0
  br i1 %1541, label %1542, label %1837

1542:                                             ; preds = %1540
  %1543 = add nuw nsw i32 %.lcssa8, 49152
  %1544 = icmp ult i32 %.lcssa8, 49152
  br i1 %1544, label %1545, label %1553

1545:                                             ; preds = %1542
  %1546 = zext i32 %.lcssa8 to i64
  %1547 = getelementptr inbounds i8, ptr %1511, i64 %1546
  %1548 = call ptr @strncpy(ptr noundef nonnull %1547, ptr noundef nonnull @old_D_pat, i64 noundef %1513) #25
  %1549 = add i32 %1543, %1489
  %1550 = zext i32 %1549 to i64
  %1551 = getelementptr inbounds [98305 x i8], ptr %12, i64 0, i64 %1550
  store i8 0, ptr %1551, align 1, !tbaa !13
  %1552 = icmp ugt i32 %1549, 49152
  br i1 %1552, label %1553, label %1817

1553:                                             ; preds = %1545, %1542
  %1554 = phi i32 [ %1549, %1545 ], [ %1543, %1542 ]
  %1555 = load i32, ptr @Init1, align 4, !tbaa !7
  %1556 = load i32, ptr @I, align 4, !tbaa !7
  %1557 = load i32, ptr @DD, align 4, !tbaa !7
  %1558 = load i32, ptr @S, align 4, !tbaa !7
  br label %1559

1559:                                             ; preds = %1809, %1553
  %1560 = phi i32 [ %1810, %1809 ], [ %1558, %1553 ]
  %1561 = phi i32 [ %1811, %1809 ], [ %1557, %1553 ]
  %1562 = phi i32 [ %1812, %1809 ], [ %1556, %1553 ]
  %1563 = phi i32 [ %1813, %1809 ], [ %1555, %1553 ]
  %1564 = phi i32 [ %1815, %1809 ], [ %1529, %1553 ]
  %1565 = phi i32 [ %1734, %1809 ], [ 49152, %1553 ]
  %1566 = phi i32 [ %1814, %1809 ], [ %1528, %1553 ]
  %1567 = zext i32 %1565 to i64
  %1568 = getelementptr inbounds [98305 x i8], ptr %12, i64 0, i64 %1567
  %1569 = load i8, ptr %1568, align 2, !tbaa !13
  %1570 = sext i8 %1569 to i64
  %1571 = getelementptr inbounds [0 x i32], ptr @Mask, i64 0, i64 %1570
  %1572 = load i32, ptr %1571, align 4, !tbaa !7
  %1573 = load i32, ptr %1514, align 4, !tbaa !7
  %1574 = and i32 %1573, %1563
  %1575 = lshr i32 %1573, 1
  %1576 = and i32 %1575, %1572
  %1577 = or i32 %1576, %1574
  store i32 %1577, ptr %1515, align 4, !tbaa !7
  br label %1578

1578:                                             ; preds = %1578, %1559
  %1579 = phi i64 [ %1519, %1559 ], [ %1605, %1578 ]
  %1580 = getelementptr inbounds [17 x i32], ptr %11, i64 0, i64 %1579
  %1581 = load i32, ptr %1580, align 4, !tbaa !7
  %1582 = and i32 %1581, %1563
  %1583 = lshr i32 %1581, 1
  %1584 = and i32 %1583, %1572
  %1585 = trunc i64 %1579 to i32
  %1586 = sub i32 %1585, %1562
  %1587 = zext i32 %1586 to i64
  %1588 = getelementptr inbounds [17 x i32], ptr %11, i64 0, i64 %1587
  %1589 = load i32, ptr %1588, align 4, !tbaa !7
  %1590 = sub i32 %1585, %1561
  %1591 = zext i32 %1590 to i64
  %1592 = getelementptr inbounds [17 x i32], ptr %10, i64 0, i64 %1591
  %1593 = load i32, ptr %1592, align 4, !tbaa !7
  %1594 = sub i32 %1585, %1560
  %1595 = zext i32 %1594 to i64
  %1596 = getelementptr inbounds [17 x i32], ptr %11, i64 0, i64 %1595
  %1597 = load i32, ptr %1596, align 4, !tbaa !7
  %1598 = or i32 %1597, %1593
  %1599 = lshr i32 %1598, 1
  %1600 = and i32 %1599, %1491
  %1601 = or i32 %1589, %1582
  %1602 = or i32 %1601, %1584
  %1603 = or i32 %1602, %1600
  %1604 = getelementptr inbounds [17 x i32], ptr %10, i64 0, i64 %1579
  store i32 %1603, ptr %1604, align 4, !tbaa !7
  %1605 = add nuw nsw i64 %1579, 1
  %1606 = trunc i64 %1605 to i32
  %1607 = icmp eq i32 %1520, %1606
  br i1 %1607, label %1608, label %1578, !llvm.loop !150

1608:                                             ; preds = %1578
  %1609 = or i32 %1565, 1
  %1610 = load i32, ptr %1515, align 4, !tbaa !7
  %1611 = and i32 %1610, %1492
  %1612 = icmp eq i32 %1611, 0
  br i1 %1612, label %1685, label %1613

1613:                                             ; preds = %1608
  %1614 = add nsw i32 %1564, 1
  %1615 = load i1, ptr @AND, align 4
  %1616 = load i32, ptr %1516, align 8, !tbaa !7
  %1617 = load i32, ptr @endposition, align 4, !tbaa !7
  %1618 = and i32 %1617, %1616
  br i1 %1615, label %1619, label %1623

1619:                                             ; preds = %1613
  %1620 = icmp eq i32 %1618, %1617
  br i1 %1620, label %1627, label %1621

1621:                                             ; preds = %1619
  %1622 = load i1, ptr @INVERSE, align 4
  br i1 %1622, label %1627, label %1633

1623:                                             ; preds = %1613
  %1624 = icmp ne i32 %1618, 0
  %1625 = load i1, ptr @INVERSE, align 4
  %1626 = xor i1 %1624, %1625
  br i1 %1626, label %1627, label %1633

1627:                                             ; preds = %1623, %1621, %1619
  %1628 = load i1, ptr @FILENAMEONLY, align 4
  br i1 %1628, label %1833, label %1629

1629:                                             ; preds = %1627
  %1630 = icmp slt i32 %1566, %1543
  br i1 %1630, label %1631, label %1633

1631:                                             ; preds = %1629
  %1632 = add i32 %1609, %1517
  call fastcc void @output(ptr noundef nonnull %12, i32 noundef %1566, i32 noundef %1632, i32 noundef %1614) #25
  br label %1633

1633:                                             ; preds = %1631, %1629, %1623, %1621
  store i1 false, ptr @TRUNCATE, align 4
  %1634 = load i32, ptr @Init, align 16, !tbaa !7
  br label %1635

1635:                                             ; preds = %1635, %1633
  %1636 = phi i64 [ %1504, %1633 ], [ %1639, %1635 ]
  %1637 = getelementptr inbounds [17 x i32], ptr %11, i64 0, i64 %1636
  store i32 %1634, ptr %1637, align 4, !tbaa !7
  %1638 = getelementptr inbounds [17 x i32], ptr %10, i64 0, i64 %1636
  store i32 %1634, ptr %1638, align 4, !tbaa !7
  %1639 = add nuw nsw i64 %1636, 1
  %1640 = icmp ult i64 %1636, %1507
  br i1 %1640, label %1635, label %1641, !llvm.loop !151

1641:                                             ; preds = %1635
  %1642 = load i32, ptr %1514, align 4, !tbaa !7
  %1643 = lshr i32 %1642, 1
  %1644 = and i32 %1643, %1572
  %1645 = load i32, ptr @Init1, align 4, !tbaa !7
  %1646 = and i32 %1645, %1642
  %1647 = or i32 %1644, %1646
  %1648 = and i32 %1647, %1509
  store i32 %1648, ptr %1515, align 4, !tbaa !7
  %1649 = load i32, ptr @I, align 4, !tbaa !7
  %1650 = load i32, ptr @DD, align 4, !tbaa !7
  %1651 = load i32, ptr @S, align 4, !tbaa !7
  br label %1652

1652:                                             ; preds = %1652, %1641
  %1653 = phi i64 [ %1519, %1641 ], [ %1679, %1652 ]
  %1654 = getelementptr inbounds [17 x i32], ptr %11, i64 0, i64 %1653
  %1655 = load i32, ptr %1654, align 4, !tbaa !7
  %1656 = and i32 %1655, %1645
  %1657 = lshr i32 %1655, 1
  %1658 = and i32 %1657, %1572
  %1659 = trunc i64 %1653 to i32
  %1660 = sub i32 %1659, %1649
  %1661 = zext i32 %1660 to i64
  %1662 = getelementptr inbounds [17 x i32], ptr %11, i64 0, i64 %1661
  %1663 = load i32, ptr %1662, align 4, !tbaa !7
  %1664 = sub i32 %1659, %1650
  %1665 = zext i32 %1664 to i64
  %1666 = getelementptr inbounds [17 x i32], ptr %10, i64 0, i64 %1665
  %1667 = load i32, ptr %1666, align 4, !tbaa !7
  %1668 = sub i32 %1659, %1651
  %1669 = zext i32 %1668 to i64
  %1670 = getelementptr inbounds [17 x i32], ptr %11, i64 0, i64 %1669
  %1671 = load i32, ptr %1670, align 4, !tbaa !7
  %1672 = or i32 %1671, %1667
  %1673 = lshr i32 %1672, 1
  %1674 = and i32 %1673, %1491
  %1675 = or i32 %1663, %1656
  %1676 = or i32 %1675, %1658
  %1677 = or i32 %1676, %1674
  %1678 = getelementptr inbounds [17 x i32], ptr %10, i64 0, i64 %1653
  store i32 %1677, ptr %1678, align 4, !tbaa !7
  %1679 = add nuw nsw i64 %1653, 1
  %1680 = trunc i64 %1679 to i32
  %1681 = icmp eq i32 %1520, %1680
  br i1 %1681, label %1682, label %1652, !llvm.loop !152

1682:                                             ; preds = %1652
  %1683 = sub i32 %1609, %1489
  %1684 = load i32, ptr %1515, align 4, !tbaa !7
  br label %1685

1685:                                             ; preds = %1682, %1608
  %1686 = phi i32 [ %1560, %1608 ], [ %1651, %1682 ]
  %1687 = phi i32 [ %1561, %1608 ], [ %1650, %1682 ]
  %1688 = phi i32 [ %1562, %1608 ], [ %1649, %1682 ]
  %1689 = phi i32 [ %1563, %1608 ], [ %1645, %1682 ]
  %1690 = phi i32 [ %1610, %1608 ], [ %1684, %1682 ]
  %1691 = phi i32 [ %1566, %1608 ], [ %1683, %1682 ]
  %1692 = phi i32 [ %1564, %1608 ], [ %1614, %1682 ]
  %1693 = zext i32 %1609 to i64
  %1694 = getelementptr inbounds [98305 x i8], ptr %12, i64 0, i64 %1693
  %1695 = load i8, ptr %1694, align 1, !tbaa !13
  %1696 = sext i8 %1695 to i64
  %1697 = getelementptr inbounds [0 x i32], ptr @Mask, i64 0, i64 %1696
  %1698 = load i32, ptr %1697, align 4, !tbaa !7
  %1699 = and i32 %1690, %1689
  %1700 = lshr i32 %1690, 1
  %1701 = and i32 %1698, %1700
  %1702 = or i32 %1701, %1699
  store i32 %1702, ptr %1514, align 4, !tbaa !7
  br label %1703

1703:                                             ; preds = %1703, %1685
  %1704 = phi i64 [ %1519, %1685 ], [ %1730, %1703 ]
  %1705 = getelementptr inbounds [17 x i32], ptr %10, i64 0, i64 %1704
  %1706 = load i32, ptr %1705, align 4, !tbaa !7
  %1707 = and i32 %1706, %1689
  %1708 = lshr i32 %1706, 1
  %1709 = and i32 %1708, %1698
  %1710 = trunc i64 %1704 to i32
  %1711 = sub i32 %1710, %1688
  %1712 = zext i32 %1711 to i64
  %1713 = getelementptr inbounds [17 x i32], ptr %10, i64 0, i64 %1712
  %1714 = load i32, ptr %1713, align 4, !tbaa !7
  %1715 = sub i32 %1710, %1687
  %1716 = zext i32 %1715 to i64
  %1717 = getelementptr inbounds [17 x i32], ptr %11, i64 0, i64 %1716
  %1718 = load i32, ptr %1717, align 4, !tbaa !7
  %1719 = sub i32 %1710, %1686
  %1720 = zext i32 %1719 to i64
  %1721 = getelementptr inbounds [17 x i32], ptr %10, i64 0, i64 %1720
  %1722 = load i32, ptr %1721, align 4, !tbaa !7
  %1723 = or i32 %1722, %1718
  %1724 = lshr i32 %1723, 1
  %1725 = and i32 %1724, %1491
  %1726 = or i32 %1714, %1707
  %1727 = or i32 %1726, %1709
  %1728 = or i32 %1727, %1725
  %1729 = getelementptr inbounds [17 x i32], ptr %11, i64 0, i64 %1704
  store i32 %1728, ptr %1729, align 4, !tbaa !7
  %1730 = add nuw nsw i64 %1704, 1
  %1731 = trunc i64 %1730 to i32
  %1732 = icmp eq i32 %1520, %1731
  br i1 %1732, label %1733, label %1703, !llvm.loop !153

1733:                                             ; preds = %1703
  %1734 = add i32 %1565, 2
  %1735 = load i32, ptr %1514, align 4, !tbaa !7
  %1736 = and i32 %1735, %1492
  %1737 = icmp eq i32 %1736, 0
  br i1 %1737, label %1809, label %1738

1738:                                             ; preds = %1733
  %1739 = add nsw i32 %1692, 1
  %1740 = load i1, ptr @AND, align 4
  %1741 = load i32, ptr %1518, align 8, !tbaa !7
  %1742 = load i32, ptr @endposition, align 4, !tbaa !7
  %1743 = and i32 %1742, %1741
  br i1 %1740, label %1744, label %1748

1744:                                             ; preds = %1738
  %1745 = icmp eq i32 %1743, %1742
  br i1 %1745, label %1752, label %1746

1746:                                             ; preds = %1744
  %1747 = load i1, ptr @INVERSE, align 4
  br i1 %1747, label %1752, label %1758

1748:                                             ; preds = %1738
  %1749 = icmp ne i32 %1743, 0
  %1750 = load i1, ptr @INVERSE, align 4
  %1751 = xor i1 %1749, %1750
  br i1 %1751, label %1752, label %1758

1752:                                             ; preds = %1748, %1746, %1744
  %1753 = load i1, ptr @FILENAMEONLY, align 4
  br i1 %1753, label %1833, label %1754

1754:                                             ; preds = %1752
  %1755 = icmp slt i32 %1691, %1543
  br i1 %1755, label %1756, label %1758

1756:                                             ; preds = %1754
  %1757 = add i32 %1734, %1517
  call fastcc void @output(ptr noundef nonnull %12, i32 noundef %1691, i32 noundef %1757, i32 noundef %1739) #25
  br label %1758

1758:                                             ; preds = %1756, %1754, %1748, %1746
  store i1 false, ptr @TRUNCATE, align 4
  %1759 = load i32, ptr @Init, align 16, !tbaa !7
  br label %1760

1760:                                             ; preds = %1760, %1758
  %1761 = phi i64 [ %1504, %1758 ], [ %1764, %1760 ]
  %1762 = getelementptr inbounds [17 x i32], ptr %11, i64 0, i64 %1761
  store i32 %1759, ptr %1762, align 4, !tbaa !7
  %1763 = getelementptr inbounds [17 x i32], ptr %10, i64 0, i64 %1761
  store i32 %1759, ptr %1763, align 4, !tbaa !7
  %1764 = add nuw nsw i64 %1761, 1
  %1765 = icmp ult i64 %1761, %1507
  br i1 %1765, label %1760, label %1766, !llvm.loop !154

1766:                                             ; preds = %1760
  %1767 = load i32, ptr %1515, align 4, !tbaa !7
  %1768 = lshr i32 %1767, 1
  %1769 = and i32 %1768, %1698
  %1770 = load i32, ptr @Init1, align 4, !tbaa !7
  %1771 = and i32 %1770, %1767
  %1772 = or i32 %1769, %1771
  %1773 = and i32 %1772, %1509
  store i32 %1773, ptr %1514, align 4, !tbaa !7
  %1774 = load i32, ptr @I, align 4, !tbaa !7
  %1775 = load i32, ptr @DD, align 4, !tbaa !7
  %1776 = load i32, ptr @S, align 4, !tbaa !7
  br label %1777

1777:                                             ; preds = %1777, %1766
  %1778 = phi i64 [ %1519, %1766 ], [ %1804, %1777 ]
  %1779 = getelementptr inbounds [17 x i32], ptr %10, i64 0, i64 %1778
  %1780 = load i32, ptr %1779, align 4, !tbaa !7
  %1781 = and i32 %1780, %1770
  %1782 = lshr i32 %1780, 1
  %1783 = and i32 %1782, %1698
  %1784 = trunc i64 %1778 to i32
  %1785 = sub i32 %1784, %1774
  %1786 = zext i32 %1785 to i64
  %1787 = getelementptr inbounds [17 x i32], ptr %10, i64 0, i64 %1786
  %1788 = load i32, ptr %1787, align 4, !tbaa !7
  %1789 = sub i32 %1784, %1775
  %1790 = zext i32 %1789 to i64
  %1791 = getelementptr inbounds [17 x i32], ptr %11, i64 0, i64 %1790
  %1792 = load i32, ptr %1791, align 4, !tbaa !7
  %1793 = sub i32 %1784, %1776
  %1794 = zext i32 %1793 to i64
  %1795 = getelementptr inbounds [17 x i32], ptr %10, i64 0, i64 %1794
  %1796 = load i32, ptr %1795, align 4, !tbaa !7
  %1797 = or i32 %1796, %1792
  %1798 = lshr i32 %1797, 1
  %1799 = and i32 %1798, %1491
  %1800 = or i32 %1788, %1781
  %1801 = or i32 %1800, %1783
  %1802 = or i32 %1801, %1799
  %1803 = getelementptr inbounds [17 x i32], ptr %11, i64 0, i64 %1778
  store i32 %1802, ptr %1803, align 4, !tbaa !7
  %1804 = add nuw nsw i64 %1778, 1
  %1805 = trunc i64 %1804 to i32
  %1806 = icmp eq i32 %1520, %1805
  br i1 %1806, label %1807, label %1777, !llvm.loop !155

1807:                                             ; preds = %1777
  %1808 = sub i32 %1734, %1489
  br label %1809

1809:                                             ; preds = %1807, %1733
  %1810 = phi i32 [ %1686, %1733 ], [ %1776, %1807 ]
  %1811 = phi i32 [ %1687, %1733 ], [ %1775, %1807 ]
  %1812 = phi i32 [ %1688, %1733 ], [ %1774, %1807 ]
  %1813 = phi i32 [ %1689, %1733 ], [ %1770, %1807 ]
  %1814 = phi i32 [ %1691, %1733 ], [ %1808, %1807 ]
  %1815 = phi i32 [ %1692, %1733 ], [ %1739, %1807 ]
  %1816 = icmp ult i32 %1734, %1554
  br i1 %1816, label %1559, label %1817, !llvm.loop !156

1817:                                             ; preds = %1809, %1545
  %1818 = phi i32 [ %1528, %1545 ], [ %1814, %1809 ]
  %1819 = phi i32 [ %1529, %1545 ], [ %1815, %1809 ]
  %1820 = sub nsw i32 %1543, %1818
  %1821 = icmp sgt i32 %1820, 49152
  br i1 %1821, label %1822, label %1823

1822:                                             ; preds = %1817
  store i1 true, ptr @TRUNCATE, align 4
  br label %1823

1823:                                             ; preds = %1822, %1817
  %1824 = phi i32 [ 49152, %1822 ], [ %1820, %1817 ]
  %1825 = sext i32 %1824 to i64
  %1826 = sub nsw i64 0, %1825
  %1827 = getelementptr inbounds i8, ptr %1511, i64 %1826
  %1828 = sext i32 %1818 to i64
  %1829 = getelementptr inbounds i8, ptr %12, i64 %1828
  %1830 = call ptr @strncpy(ptr noundef nonnull %1827, ptr noundef nonnull %1829, i64 noundef %1825) #25
  %1831 = sub nsw i32 49152, %1824
  %1832 = select i1 %1544, i32 49152, i32 %1831
  br label %1527, !llvm.loop !157

1833:                                             ; preds = %1752, %1627
  %1834 = load i32, ptr @num_of_matched, align 4, !tbaa !7
  %1835 = add nsw i32 %1834, 1
  store i32 %1835, ptr @num_of_matched, align 4, !tbaa !7
  %1836 = call i32 @puts(ptr nonnull dereferenceable(1) @CurrentFileName)
  br label %1837

1837:                                             ; preds = %1833, %1540
  call void @llvm.lifetime.end.p0(i64 98305, ptr nonnull %12) #24
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %11) #24
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %10) #24
  br label %2856

1838:                                             ; preds = %1465
  br i1 %1466, label %1839, label %2646

1839:                                             ; preds = %1838
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %7) #24
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %8) #24
  call void @llvm.lifetime.start.p0(i64 98305, ptr nonnull %9) #24
  %1840 = load i32, ptr @I, align 4, !tbaa !7
  %1841 = icmp eq i32 %1840, 0
  br i1 %1841, label %1842, label %1843

1842:                                             ; preds = %1839
  store i32 -1, ptr @Init1, align 4, !tbaa !7
  br label %1843

1843:                                             ; preds = %1842, %1839
  %1844 = icmp ugt i32 %2, 4
  br i1 %1844, label %1845, label %2172

1845:                                             ; preds = %1843
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #24
  call void @llvm.lifetime.start.p0(i64 98305, ptr nonnull %6) #24
  %1846 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) @old_D_pat) #29
  %1847 = trunc i64 %1846 to i32
  %1848 = getelementptr inbounds [98305 x i8], ptr %6, i64 0, i64 49151
  store i8 10, ptr %1848, align 1, !tbaa !13
  %1849 = load i32, ptr @D_endpos, align 4, !tbaa !7
  %1850 = icmp ugt i32 %1847, 1
  br i1 %1850, label %1851, label %1858

1851:                                             ; preds = %1851, %1845
  %1852 = phi i32 [ %1856, %1851 ], [ 1, %1845 ]
  %1853 = phi i32 [ %1855, %1851 ], [ %1849, %1845 ]
  %1854 = shl i32 %1853, 1
  %1855 = or i32 %1854, %1853
  %1856 = add nuw i32 %1852, 1
  %1857 = icmp eq i32 %1856, %1847
  br i1 %1857, label %1858, label %1851, !llvm.loop !158

1858:                                             ; preds = %1851, %1845
  %1859 = phi i32 [ %1849, %1845 ], [ %1855, %1851 ]
  %1860 = load i32, ptr @Init1, align 4, !tbaa !7
  %1861 = load i32, ptr @NO_ERR_MASK, align 4, !tbaa !7
  %1862 = load i32, ptr @Init, align 16, !tbaa !7
  %1863 = add nuw i32 %2, 1
  %1864 = zext i32 %1863 to i64
  br label %1879

1865:                                             ; preds = %1879
  %1866 = xor i32 %1859, -1
  %1867 = getelementptr inbounds i8, ptr %6, i64 49152
  %1868 = shl i64 %1846, 32
  %1869 = ashr exact i64 %1868, 32
  %1870 = zext i32 %2 to i64
  %1871 = getelementptr inbounds [10 x i32], ptr %4, i64 0, i64 %1870
  %1872 = getelementptr inbounds [10 x i32], ptr %5, i64 0, i64 %1870
  %1873 = xor i32 %1847, -1
  %1874 = add nuw nsw i64 %1864, 3
  %1875 = and i64 %1874, 8589934588
  %1876 = add nsw i64 %1864, -1
  %1877 = insertelement <4 x i64> poison, i64 %1876, i64 0
  %1878 = shufflevector <4 x i64> %1877, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %1885

1879:                                             ; preds = %1879, %1858
  %1880 = phi i64 [ 0, %1858 ], [ %1883, %1879 ]
  %1881 = getelementptr inbounds [10 x i32], ptr %5, i64 0, i64 %1880
  store i32 %1862, ptr %1881, align 4, !tbaa !7
  %1882 = getelementptr inbounds [10 x i32], ptr %4, i64 0, i64 %1880
  store i32 %1862, ptr %1882, align 4, !tbaa !7
  %1883 = add nuw nsw i64 %1880, 1
  %1884 = icmp eq i64 %1883, %1864
  br i1 %1884, label %1865, label %1879, !llvm.loop !159

1885:                                             ; preds = %2165, %1865
  %1886 = phi i32 [ 49151, %1865 ], [ 49152, %2165 ]
  %1887 = phi i32 [ 49152, %1865 ], [ %2166, %2165 ]
  %1888 = phi i32 [ 0, %1865 ], [ %2148, %2165 ]
  br label %1889

1889:                                             ; preds = %1889, %1885
  %1890 = phi i32 [ %1895, %1889 ], [ 0, %1885 ]
  %1891 = sext i32 %1890 to i64
  %1892 = getelementptr inbounds i8, ptr %1867, i64 %1891
  %1893 = call i64 @read(i32 noundef %0, ptr noundef nonnull %1892, i64 noundef 4096) #25
  %1894 = trunc i64 %1893 to i32
  %1895 = add nsw i32 %1890, %1894
  %1896 = icmp slt i32 %1895, 49152
  %1897 = icmp sgt i32 %1894, 0
  %1898 = and i1 %1897, %1896
  br i1 %1898, label %1889, label %1899, !llvm.loop !149

1899:                                             ; preds = %1889
  %.lcssa9 = phi i32 [ %1895, %1889 ]
  %1900 = icmp sgt i32 %.lcssa9, 0
  br i1 %1900, label %1901, label %2171

1901:                                             ; preds = %1899
  %1902 = add nuw nsw i32 %.lcssa9, 49152
  %1903 = icmp ult i32 %.lcssa9, 49152
  br i1 %1903, label %1904, label %1911

1904:                                             ; preds = %1901
  %1905 = zext i32 %1902 to i64
  %1906 = getelementptr inbounds i8, ptr %6, i64 %1905
  %1907 = call ptr @strncpy(ptr noundef nonnull %1906, ptr noundef nonnull @old_D_pat, i64 noundef %1869) #25
  %1908 = add i32 %1902, %1847
  %1909 = zext i32 %1908 to i64
  %1910 = getelementptr inbounds [98305 x i8], ptr %6, i64 0, i64 %1909
  store i8 0, ptr %1910, align 1, !tbaa !13
  br label %1911

1911:                                             ; preds = %1904, %1901
  %1912 = phi i32 [ %1908, %1904 ], [ %1902, %1901 ]
  %1913 = icmp ult i32 %1886, %1912
  br i1 %1913, label %1914, label %2146

1914:                                             ; preds = %1911
  %1915 = add nuw nsw i32 %.lcssa9, 49151
  %1916 = load i32, ptr %5, align 16, !tbaa !7
  br label %1917

1917:                                             ; preds = %2141, %1914
  %1918 = phi i32 [ %1916, %1914 ], [ %2142, %2141 ]
  %1919 = phi i32 [ %1888, %1914 ], [ %2144, %2141 ]
  %1920 = phi i32 [ %1886, %1914 ], [ %2063, %2141 ]
  %1921 = phi i32 [ %1887, %1914 ], [ %2143, %2141 ]
  %1922 = zext i32 %1920 to i64
  %1923 = getelementptr inbounds [98305 x i8], ptr %6, i64 0, i64 %1922
  %1924 = load i8, ptr %1923, align 1, !tbaa !13
  %1925 = zext i8 %1924 to i64
  %1926 = getelementptr inbounds [0 x i32], ptr @Mask, i64 0, i64 %1925
  %1927 = load i32, ptr %1926, align 4, !tbaa !7
  %1928 = and i32 %1918, %1860
  %1929 = lshr i32 %1918, 1
  %1930 = and i32 %1927, %1929
  %1931 = or i32 %1930, %1928
  store i32 %1931, ptr %4, align 16, !tbaa !7
  br label %1932

1932:                                             ; preds = %1932, %1917
  %1933 = phi i32 [ %1946, %1932 ], [ %1931, %1917 ]
  %1934 = phi i32 [ %1937, %1932 ], [ %1918, %1917 ]
  %1935 = phi i64 [ %1948, %1932 ], [ 1, %1917 ]
  %1936 = getelementptr inbounds [10 x i32], ptr %5, i64 0, i64 %1935
  %1937 = load i32, ptr %1936, align 4, !tbaa !7
  %1938 = and i32 %1937, %1860
  %1939 = or i32 %1934, %1933
  %1940 = lshr i32 %1939, 1
  %1941 = and i32 %1940, %1861
  %1942 = lshr i32 %1937, 1
  %1943 = and i32 %1942, %1927
  %1944 = or i32 %1941, %1938
  %1945 = or i32 %1944, %1943
  %1946 = or i32 %1945, %1934
  %1947 = getelementptr inbounds [10 x i32], ptr %4, i64 0, i64 %1935
  store i32 %1946, ptr %1947, align 4, !tbaa !7
  %1948 = add nuw nsw i64 %1935, 1
  %1949 = icmp eq i64 %1948, %1864
  br i1 %1949, label %1950, label %1932, !llvm.loop !160

1950:                                             ; preds = %1932
  %1951 = add nuw i32 %1920, 1
  %1952 = and i32 %1931, %1849
  %1953 = icmp eq i32 %1952, 0
  br i1 %1953, label %2030, label %1954

1954:                                             ; preds = %1950
  %1955 = add nsw i32 %1919, 1
  %1956 = load i32, ptr %1871, align 4, !tbaa !7
  %1957 = load i1, ptr @AND, align 4
  %1958 = load i32, ptr @endposition, align 4
  %1959 = and i32 %1958, %1956
  %1960 = icmp eq i32 %1959, %1958
  %1961 = select i1 %1957, i1 %1960, i1 false
  br i1 %1961, label %1968, label %1962

1962:                                             ; preds = %1954
  %1963 = xor i1 %1957, true
  %1964 = icmp ne i32 %1959, 0
  %1965 = select i1 %1963, i1 %1964, i1 false
  %1966 = load i1, ptr @INVERSE, align 4
  %1967 = xor i1 %1965, %1966
  br i1 %1967, label %1968, label %1974

1968:                                             ; preds = %1962, %1954
  %1969 = load i1, ptr @FILENAMEONLY, align 4
  br i1 %1969, label %2167, label %1970

1970:                                             ; preds = %1968
  %1971 = icmp slt i32 %1921, %1915
  br i1 %1971, label %1972, label %1974

1972:                                             ; preds = %1970
  %1973 = sub i32 %1920, %1847
  call fastcc void @output(ptr noundef nonnull %6, i32 noundef %1921, i32 noundef %1973, i32 noundef %1955) #25
  br label %1974

1974:                                             ; preds = %1972, %1970, %1962
  %1975 = load i32, ptr @Init, align 16, !tbaa !7
  br label %1976

1976:                                             ; preds = %1998, %1974
  %1977 = phi i64 [ 0, %1974 ], [ %1999, %1998 ]
  %1978 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %1974 ], [ %2000, %1998 ]
  %1979 = icmp ule <4 x i64> %1978, %1878
  %1980 = extractelement <4 x i1> %1979, i64 0
  br i1 %1980, label %1981, label %1983

1981:                                             ; preds = %1976
  %1982 = getelementptr inbounds [10 x i32], ptr %5, i64 0, i64 %1977
  store i32 %1975, ptr %1982, align 16, !tbaa !7
  br label %1983

1983:                                             ; preds = %1981, %1976
  %1984 = extractelement <4 x i1> %1979, i64 1
  br i1 %1984, label %1985, label %1988

1985:                                             ; preds = %1983
  %1986 = or i64 %1977, 1
  %1987 = getelementptr inbounds [10 x i32], ptr %5, i64 0, i64 %1986
  store i32 %1975, ptr %1987, align 4, !tbaa !7
  br label %1988

1988:                                             ; preds = %1985, %1983
  %1989 = extractelement <4 x i1> %1979, i64 2
  br i1 %1989, label %1990, label %1993

1990:                                             ; preds = %1988
  %1991 = or i64 %1977, 2
  %1992 = getelementptr inbounds [10 x i32], ptr %5, i64 0, i64 %1991
  store i32 %1975, ptr %1992, align 8, !tbaa !7
  br label %1993

1993:                                             ; preds = %1990, %1988
  %1994 = extractelement <4 x i1> %1979, i64 3
  br i1 %1994, label %1995, label %1998

1995:                                             ; preds = %1993
  %1996 = or i64 %1977, 3
  %1997 = getelementptr inbounds [10 x i32], ptr %5, i64 0, i64 %1996
  store i32 %1975, ptr %1997, align 4, !tbaa !7
  br label %1998

1998:                                             ; preds = %1995, %1993
  %1999 = add i64 %1977, 4
  %2000 = add <4 x i64> %1978, <i64 4, i64 4, i64 4, i64 4>
  %2001 = icmp eq i64 %1999, %1875
  br i1 %2001, label %2002, label %1976, !llvm.loop !161

2002:                                             ; preds = %1998
  %2003 = load i32, ptr %5, align 16, !tbaa !7
  %2004 = and i32 %2003, %1860
  %2005 = lshr i32 %2003, 1
  %2006 = and i32 %2005, %1927
  %2007 = or i32 %2006, %2004
  %2008 = and i32 %2007, %1866
  store i32 %2008, ptr %4, align 16, !tbaa !7
  %2009 = load i32, ptr @Init1, align 4, !tbaa !7
  br label %2010

2010:                                             ; preds = %2010, %2002
  %2011 = phi i32 [ %2008, %2002 ], [ %2024, %2010 ]
  %2012 = phi i32 [ %2003, %2002 ], [ %2015, %2010 ]
  %2013 = phi i64 [ 1, %2002 ], [ %2026, %2010 ]
  %2014 = getelementptr inbounds [10 x i32], ptr %5, i64 0, i64 %2013
  %2015 = load i32, ptr %2014, align 4, !tbaa !7
  %2016 = and i32 %2015, %2009
  %2017 = or i32 %2012, %2011
  %2018 = lshr i32 %2017, 1
  %2019 = and i32 %2018, %1861
  %2020 = lshr i32 %2015, 1
  %2021 = and i32 %2020, %1927
  %2022 = or i32 %2019, %2016
  %2023 = or i32 %2022, %2021
  %2024 = or i32 %2023, %2012
  %2025 = getelementptr inbounds [10 x i32], ptr %4, i64 0, i64 %2013
  store i32 %2024, ptr %2025, align 4, !tbaa !7
  %2026 = add nuw nsw i64 %2013, 1
  %2027 = icmp eq i64 %2026, %1864
  br i1 %2027, label %2028, label %2010, !llvm.loop !162

2028:                                             ; preds = %2010
  %2029 = sub i32 %1951, %1847
  br label %2030

2030:                                             ; preds = %2028, %1950
  %2031 = phi i32 [ %1931, %1950 ], [ %2008, %2028 ]
  %2032 = phi i32 [ %1921, %1950 ], [ %2029, %2028 ]
  %2033 = phi i32 [ %1919, %1950 ], [ %1955, %2028 ]
  %2034 = zext i32 %1951 to i64
  %2035 = getelementptr inbounds [98305 x i8], ptr %6, i64 0, i64 %2034
  %2036 = load i8, ptr %2035, align 1, !tbaa !13
  %2037 = zext i8 %2036 to i64
  %2038 = getelementptr inbounds [0 x i32], ptr @Mask, i64 0, i64 %2037
  %2039 = load i32, ptr %2038, align 4, !tbaa !7
  %2040 = and i32 %2031, %1860
  %2041 = lshr i32 %2031, 1
  %2042 = and i32 %2039, %2041
  %2043 = or i32 %2042, %2040
  store i32 %2043, ptr %5, align 16, !tbaa !7
  br label %2044

2044:                                             ; preds = %2044, %2030
  %2045 = phi i32 [ %2058, %2044 ], [ %2043, %2030 ]
  %2046 = phi i32 [ %2049, %2044 ], [ %2031, %2030 ]
  %2047 = phi i64 [ %2060, %2044 ], [ 1, %2030 ]
  %2048 = getelementptr inbounds [10 x i32], ptr %4, i64 0, i64 %2047
  %2049 = load i32, ptr %2048, align 4, !tbaa !7
  %2050 = and i32 %2049, %1860
  %2051 = or i32 %2046, %2045
  %2052 = lshr i32 %2051, 1
  %2053 = and i32 %2052, %1861
  %2054 = lshr i32 %2049, 1
  %2055 = and i32 %2054, %2039
  %2056 = or i32 %2053, %2050
  %2057 = or i32 %2056, %2055
  %2058 = or i32 %2057, %2046
  %2059 = getelementptr inbounds [10 x i32], ptr %5, i64 0, i64 %2047
  store i32 %2058, ptr %2059, align 4, !tbaa !7
  %2060 = add nuw nsw i64 %2047, 1
  %2061 = icmp eq i64 %2060, %1864
  br i1 %2061, label %2062, label %2044, !llvm.loop !163

2062:                                             ; preds = %2044
  %2063 = add i32 %1920, 2
  %2064 = and i32 %2043, %1849
  %2065 = icmp eq i32 %2064, 0
  br i1 %2065, label %2141, label %2066

2066:                                             ; preds = %2062
  %2067 = add nsw i32 %2033, 1
  %2068 = load i32, ptr %1872, align 4, !tbaa !7
  %2069 = load i1, ptr @AND, align 4
  %2070 = load i32, ptr @endposition, align 4
  %2071 = and i32 %2070, %2068
  %2072 = icmp eq i32 %2071, %2070
  %2073 = select i1 %2069, i1 %2072, i1 false
  br i1 %2073, label %2080, label %2074

2074:                                             ; preds = %2066
  %2075 = xor i1 %2069, true
  %2076 = icmp ne i32 %2071, 0
  %2077 = select i1 %2075, i1 %2076, i1 false
  %2078 = load i1, ptr @INVERSE, align 4
  %2079 = xor i1 %2077, %2078
  br i1 %2079, label %2080, label %2086

2080:                                             ; preds = %2074, %2066
  %2081 = load i1, ptr @FILENAMEONLY, align 4
  br i1 %2081, label %2167, label %2082

2082:                                             ; preds = %2080
  %2083 = icmp slt i32 %2032, %1915
  br i1 %2083, label %2084, label %2086

2084:                                             ; preds = %2082
  %2085 = add i32 %2063, %1873
  call fastcc void @output(ptr noundef nonnull %6, i32 noundef %2032, i32 noundef %2085, i32 noundef %2067) #25
  br label %2086

2086:                                             ; preds = %2084, %2082, %2074
  %2087 = load i32, ptr @Init, align 16, !tbaa !7
  br label %2088

2088:                                             ; preds = %2110, %2086
  %2089 = phi i64 [ 0, %2086 ], [ %2111, %2110 ]
  %2090 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %2086 ], [ %2112, %2110 ]
  %2091 = icmp ule <4 x i64> %2090, %1878
  %2092 = extractelement <4 x i1> %2091, i64 0
  br i1 %2092, label %2093, label %2095

2093:                                             ; preds = %2088
  %2094 = getelementptr inbounds [10 x i32], ptr %4, i64 0, i64 %2089
  store i32 %2087, ptr %2094, align 16, !tbaa !7
  br label %2095

2095:                                             ; preds = %2093, %2088
  %2096 = extractelement <4 x i1> %2091, i64 1
  br i1 %2096, label %2097, label %2100

2097:                                             ; preds = %2095
  %2098 = or i64 %2089, 1
  %2099 = getelementptr inbounds [10 x i32], ptr %4, i64 0, i64 %2098
  store i32 %2087, ptr %2099, align 4, !tbaa !7
  br label %2100

2100:                                             ; preds = %2097, %2095
  %2101 = extractelement <4 x i1> %2091, i64 2
  br i1 %2101, label %2102, label %2105

2102:                                             ; preds = %2100
  %2103 = or i64 %2089, 2
  %2104 = getelementptr inbounds [10 x i32], ptr %4, i64 0, i64 %2103
  store i32 %2087, ptr %2104, align 8, !tbaa !7
  br label %2105

2105:                                             ; preds = %2102, %2100
  %2106 = extractelement <4 x i1> %2091, i64 3
  br i1 %2106, label %2107, label %2110

2107:                                             ; preds = %2105
  %2108 = or i64 %2089, 3
  %2109 = getelementptr inbounds [10 x i32], ptr %4, i64 0, i64 %2108
  store i32 %2087, ptr %2109, align 4, !tbaa !7
  br label %2110

2110:                                             ; preds = %2107, %2105
  %2111 = add i64 %2089, 4
  %2112 = add <4 x i64> %2090, <i64 4, i64 4, i64 4, i64 4>
  %2113 = icmp eq i64 %2111, %1875
  br i1 %2113, label %2114, label %2088, !llvm.loop !164

2114:                                             ; preds = %2110
  %2115 = load i32, ptr %4, align 16, !tbaa !7
  %2116 = and i32 %2115, %1860
  %2117 = lshr i32 %2115, 1
  %2118 = and i32 %2117, %2039
  %2119 = or i32 %2118, %2116
  %2120 = and i32 %2119, %1866
  store i32 %2120, ptr %5, align 16, !tbaa !7
  br label %2121

2121:                                             ; preds = %2121, %2114
  %2122 = phi i32 [ %2135, %2121 ], [ %2120, %2114 ]
  %2123 = phi i32 [ %2126, %2121 ], [ %2115, %2114 ]
  %2124 = phi i64 [ %2137, %2121 ], [ 1, %2114 ]
  %2125 = getelementptr inbounds [10 x i32], ptr %4, i64 0, i64 %2124
  %2126 = load i32, ptr %2125, align 4, !tbaa !7
  %2127 = and i32 %2126, %1860
  %2128 = or i32 %2123, %2122
  %2129 = lshr i32 %2128, 1
  %2130 = and i32 %2129, %1861
  %2131 = lshr i32 %2126, 1
  %2132 = and i32 %2131, %2039
  %2133 = or i32 %2130, %2127
  %2134 = or i32 %2133, %2132
  %2135 = or i32 %2134, %2123
  %2136 = getelementptr inbounds [10 x i32], ptr %5, i64 0, i64 %2124
  store i32 %2135, ptr %2136, align 4, !tbaa !7
  %2137 = add nuw nsw i64 %2124, 1
  %2138 = icmp eq i64 %2137, %1864
  br i1 %2138, label %2139, label %2121, !llvm.loop !165

2139:                                             ; preds = %2121
  %2140 = sub i32 %2063, %1847
  br label %2141

2141:                                             ; preds = %2139, %2062
  %2142 = phi i32 [ %2043, %2062 ], [ %2120, %2139 ]
  %2143 = phi i32 [ %2032, %2062 ], [ %2140, %2139 ]
  %2144 = phi i32 [ %2033, %2062 ], [ %2067, %2139 ]
  %2145 = icmp ult i32 %2063, %1912
  br i1 %2145, label %1917, label %2146, !llvm.loop !166

2146:                                             ; preds = %2141, %1911
  %2147 = phi i32 [ %1887, %1911 ], [ %2143, %2141 ]
  %2148 = phi i32 [ %1888, %1911 ], [ %2144, %2141 ]
  br i1 %1903, label %2165, label %2149

2149:                                             ; preds = %2146
  %2150 = sub nsw i32 %1902, %2147
  %2151 = icmp sgt i32 %2150, 49152
  br i1 %2151, label %2152, label %2153

2152:                                             ; preds = %2149
  store i1 true, ptr @TRUNCATE, align 4
  br label %2153

2153:                                             ; preds = %2152, %2149
  %2154 = phi i32 [ 49152, %2152 ], [ %2150, %2149 ]
  %2155 = freeze i32 %2154
  %2156 = sext i32 %2155 to i64
  %2157 = sub nsw i64 0, %2156
  %2158 = getelementptr inbounds i8, ptr %1867, i64 %2157
  %2159 = sext i32 %2147 to i64
  %2160 = getelementptr inbounds i8, ptr %6, i64 %2159
  %2161 = call ptr @strncpy(ptr noundef nonnull %2158, ptr noundef nonnull %2160, i64 noundef %2156) #25
  %2162 = sub nsw i32 49152, %2155
  %2163 = icmp eq i32 %2155, 49152
  %2164 = select i1 %2163, i32 1, i32 %2162
  br label %2165

2165:                                             ; preds = %2153, %2146
  %2166 = phi i32 [ %2164, %2153 ], [ 49152, %2146 ]
  br label %1885, !llvm.loop !167

2167:                                             ; preds = %2080, %1968
  %2168 = load i32, ptr @num_of_matched, align 4, !tbaa !7
  %2169 = add nsw i32 %2168, 1
  store i32 %2169, ptr @num_of_matched, align 4, !tbaa !7
  %2170 = call i32 @puts(ptr nonnull dereferenceable(1) @CurrentFileName)
  br label %2171

2171:                                             ; preds = %2167, %1899
  call void @llvm.lifetime.end.p0(i64 98305, ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #24
  br label %2645

2172:                                             ; preds = %1843
  %2173 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) @old_D_pat) #29
  %2174 = trunc i64 %2173 to i32
  %2175 = getelementptr inbounds [98305 x i8], ptr %9, i64 0, i64 49151
  store i8 10, ptr %2175, align 1, !tbaa !13
  %2176 = load i32, ptr @D_endpos, align 4, !tbaa !7
  %2177 = icmp ugt i32 %2174, 1
  br i1 %2177, label %2178, label %2185

2178:                                             ; preds = %2178, %2172
  %2179 = phi i32 [ %2183, %2178 ], [ 1, %2172 ]
  %2180 = phi i32 [ %2182, %2178 ], [ %2176, %2172 ]
  %2181 = shl i32 %2180, 1
  %2182 = or i32 %2181, %2180
  %2183 = add nuw i32 %2179, 1
  %2184 = icmp eq i32 %2183, %2174
  br i1 %2184, label %2185, label %2178, !llvm.loop !168

2185:                                             ; preds = %2178, %2172
  %2186 = phi i32 [ %2176, %2172 ], [ %2182, %2178 ]
  %2187 = load i32, ptr @Init1, align 4, !tbaa !7
  %2188 = load i32, ptr @NO_ERR_MASK, align 4, !tbaa !7
  %2189 = load i32, ptr @Init, align 16, !tbaa !7
  %2190 = add nuw nsw i32 %2, 1
  %2191 = zext i32 %2190 to i64
  br label %2217

2192:                                             ; preds = %2217
  %2193 = xor i32 %2186, -1
  %2194 = getelementptr inbounds i8, ptr %9, i64 49152
  %2195 = icmp slt i32 %2174, 1
  %2196 = shl i64 %2173, 32
  %2197 = ashr exact i64 %2196, 32
  %2198 = icmp eq i32 %2, 1
  %2199 = icmp eq i32 %2, 2
  %2200 = icmp eq i32 %2, 3
  %2201 = icmp eq i32 %2, 4
  %2202 = getelementptr inbounds [9 x i32], ptr %7, i64 0, i64 1
  %2203 = getelementptr inbounds [9 x i32], ptr %7, i64 0, i64 2
  %2204 = getelementptr inbounds [9 x i32], ptr %8, i64 0, i64 2
  %2205 = getelementptr inbounds [9 x i32], ptr %7, i64 0, i64 3
  %2206 = getelementptr inbounds [9 x i32], ptr %8, i64 0, i64 3
  %2207 = getelementptr inbounds [9 x i32], ptr %7, i64 0, i64 4
  %2208 = getelementptr inbounds [9 x i32], ptr %8, i64 0, i64 4
  %2209 = xor i32 %2174, -1
  %2210 = getelementptr inbounds [9 x i32], ptr %8, i64 0, i64 1
  %2211 = and i64 %2173, 4294967295
  %2212 = add nuw nsw i64 %2191, 3
  %2213 = and i64 %2212, 8589934588
  %2214 = add nsw i64 %2191, -1
  %2215 = insertelement <4 x i64> poison, i64 %2214, i64 0
  %2216 = shufflevector <4 x i64> %2215, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %2223

2217:                                             ; preds = %2217, %2185
  %2218 = phi i64 [ 0, %2185 ], [ %2221, %2217 ]
  %2219 = getelementptr inbounds [9 x i32], ptr %8, i64 0, i64 %2218
  store i32 %2189, ptr %2219, align 4, !tbaa !7
  %2220 = getelementptr inbounds [9 x i32], ptr %7, i64 0, i64 %2218
  store i32 %2189, ptr %2220, align 4, !tbaa !7
  %2221 = add nuw nsw i64 %2218, 1
  %2222 = icmp eq i64 %2221, %2191
  br i1 %2222, label %2192, label %2217, !llvm.loop !169

2223:                                             ; preds = %2643, %2192
  %2224 = phi i32 [ %2189, %2192 ], [ %2617, %2643 ]
  %2225 = phi i32 [ %2189, %2192 ], [ %2618, %2643 ]
  %2226 = phi i32 [ %2189, %2192 ], [ %2619, %2643 ]
  %2227 = phi i32 [ %2189, %2192 ], [ %2620, %2643 ]
  %2228 = phi i32 [ %2189, %2192 ], [ %2621, %2643 ]
  %2229 = phi i32 [ %2189, %2192 ], [ %2622, %2643 ]
  %2230 = phi i32 [ %2189, %2192 ], [ %2623, %2643 ]
  %2231 = phi i32 [ %2189, %2192 ], [ %2624, %2643 ]
  %2232 = phi i1 [ false, %2192 ], [ true, %2643 ]
  %2233 = phi i32 [ 49152, %2192 ], [ %2644, %2643 ]
  %2234 = phi i32 [ 0, %2192 ], [ %2626, %2643 ]
  br label %2235

2235:                                             ; preds = %2235, %2223
  %2236 = phi i32 [ %2241, %2235 ], [ 0, %2223 ]
  %2237 = sext i32 %2236 to i64
  %2238 = getelementptr inbounds i8, ptr %2194, i64 %2237
  %2239 = call i64 @read(i32 noundef %0, ptr noundef nonnull %2238, i64 noundef 4096) #25
  %2240 = trunc i64 %2239 to i32
  %2241 = add nsw i32 %2236, %2240
  %2242 = icmp slt i32 %2241, 49152
  %2243 = icmp sgt i32 %2240, 0
  %2244 = and i1 %2243, %2242
  br i1 %2244, label %2235, label %2245, !llvm.loop !149

2245:                                             ; preds = %2235
  %.lcssa11 = phi i32 [ %2241, %2235 ]
  %.lcssa10 = phi i1 [ %2242, %2235 ]
  %2246 = icmp sgt i32 %.lcssa11, 0
  br i1 %2246, label %2247, label %2645

2247:                                             ; preds = %2245
  %2248 = add nuw nsw i32 %.lcssa11, 49152
  br i1 %2232, label %2274, label %2249

2249:                                             ; preds = %2247
  %2250 = load i1, ptr @DELIMITER, align 4
  br i1 %2250, label %2251, label %2274

2251:                                             ; preds = %2249
  br i1 %2195, label %2270, label %2252

2252:                                             ; preds = %2251
  %2253 = load i8, ptr @old_D_pat, align 16, !tbaa !13
  %2254 = load i8, ptr %2194, align 16, !tbaa !13
  %2255 = icmp eq i8 %2253, %2254
  br i1 %2255, label %2256, label %2270

2256:                                             ; preds = %2260, %2252
  %2257 = phi i64 [ %2258, %2260 ], [ 0, %2252 ]
  %2258 = add nuw nsw i64 %2257, 1
  %2259 = icmp eq i64 %2258, %2211
  br i1 %2259, label %2267, label %2260, !llvm.loop !170

2260:                                             ; preds = %2256
  %2261 = getelementptr inbounds i8, ptr @old_D_pat, i64 %2258
  %2262 = load i8, ptr %2261, align 1, !tbaa !13
  %2263 = add nuw nsw i64 %2257, 49153
  %2264 = getelementptr inbounds [98305 x i8], ptr %9, i64 0, i64 %2263
  %2265 = load i8, ptr %2264, align 1, !tbaa !13
  %2266 = icmp eq i8 %2262, %2265
  br i1 %2266, label %2256, label %2267, !llvm.loop !170

2267:                                             ; preds = %2260, %2256
  %2268 = phi i64 [ %2258, %2260 ], [ %2211, %2256 ]
  %2269 = icmp sge i64 %2268, %2197
  br label %2270

2270:                                             ; preds = %2267, %2252, %2251
  %2271 = phi i1 [ true, %2251 ], [ false, %2252 ], [ %2269, %2267 ]
  %2272 = sext i1 %2271 to i32
  %2273 = add nsw i32 %2234, %2272
  br label %2274

2274:                                             ; preds = %2270, %2249, %2247
  %2275 = phi i32 [ 49152, %2247 ], [ 49151, %2270 ], [ 49151, %2249 ]
  %2276 = phi i32 [ %2234, %2247 ], [ %2273, %2270 ], [ %2234, %2249 ]
  br i1 %.lcssa10, label %2277, label %2284

2277:                                             ; preds = %2274
  %2278 = zext i32 %2248 to i64
  %2279 = getelementptr inbounds i8, ptr %9, i64 %2278
  %2280 = call ptr @strncpy(ptr noundef nonnull %2279, ptr noundef nonnull @old_D_pat, i64 noundef %2197) #25
  %2281 = add i32 %2248, %2174
  %2282 = zext i32 %2281 to i64
  %2283 = getelementptr inbounds [98305 x i8], ptr %9, i64 0, i64 %2282
  store i8 0, ptr %2283, align 1, !tbaa !13
  br label %2284

2284:                                             ; preds = %2277, %2274
  %2285 = phi i32 [ %2281, %2277 ], [ %2248, %2274 ]
  %2286 = icmp ult i32 %2275, %2285
  br i1 %2286, label %2287, label %2616

2287:                                             ; preds = %2284
  %2288 = add nuw nsw i32 %.lcssa11, 49151
  br label %2289

2289:                                             ; preds = %2604, %2287
  %2290 = phi i32 [ %2276, %2287 ], [ %2614, %2604 ]
  %2291 = phi i32 [ %2275, %2287 ], [ %2511, %2604 ]
  %2292 = phi i32 [ %2233, %2287 ], [ %2613, %2604 ]
  %2293 = phi i32 [ %2231, %2287 ], [ %2612, %2604 ]
  %2294 = phi i32 [ %2230, %2287 ], [ %2611, %2604 ]
  %2295 = phi i32 [ %2229, %2287 ], [ %2610, %2604 ]
  %2296 = phi i32 [ %2228, %2287 ], [ %2609, %2604 ]
  %2297 = phi i32 [ %2227, %2287 ], [ %2608, %2604 ]
  %2298 = phi i32 [ %2226, %2287 ], [ %2607, %2604 ]
  %2299 = phi i32 [ %2225, %2287 ], [ %2606, %2604 ]
  %2300 = phi i32 [ %2224, %2287 ], [ %2605, %2604 ]
  %2301 = zext i32 %2291 to i64
  %2302 = getelementptr inbounds [98305 x i8], ptr %9, i64 0, i64 %2301
  %2303 = load i8, ptr %2302, align 1, !tbaa !13
  %2304 = zext i8 %2303 to i64
  %2305 = getelementptr inbounds [0 x i32], ptr @Mask, i64 0, i64 %2304
  %2306 = load i32, ptr %2305, align 4, !tbaa !7
  %2307 = and i32 %2300, %2187
  %2308 = lshr i32 %2300, 1
  %2309 = and i32 %2306, %2308
  %2310 = or i32 %2309, %2307
  %2311 = and i32 %2299, %2187
  %2312 = or i32 %2309, %2300
  %2313 = lshr i32 %2312, 1
  %2314 = and i32 %2313, %2188
  %2315 = lshr i32 %2299, 1
  %2316 = and i32 %2306, %2315
  %2317 = or i32 %2311, %2316
  %2318 = or i32 %2317, %2314
  %2319 = or i32 %2318, %2300
  br i1 %2198, label %2350, label %2320

2320:                                             ; preds = %2289
  %2321 = and i32 %2297, %2187
  %2322 = or i32 %2319, %2299
  %2323 = lshr i32 %2322, 1
  %2324 = and i32 %2323, %2188
  %2325 = lshr i32 %2297, 1
  %2326 = and i32 %2306, %2325
  %2327 = or i32 %2321, %2326
  %2328 = or i32 %2327, %2324
  %2329 = or i32 %2328, %2299
  br i1 %2199, label %2350, label %2330

2330:                                             ; preds = %2320
  %2331 = and i32 %2295, %2187
  %2332 = or i32 %2329, %2297
  %2333 = lshr i32 %2332, 1
  %2334 = and i32 %2333, %2188
  %2335 = lshr i32 %2295, 1
  %2336 = and i32 %2306, %2335
  %2337 = or i32 %2331, %2336
  %2338 = or i32 %2337, %2334
  %2339 = or i32 %2338, %2297
  br i1 %2200, label %2350, label %2340

2340:                                             ; preds = %2330
  %2341 = and i32 %2293, %2187
  %2342 = or i32 %2339, %2295
  %2343 = lshr i32 %2342, 1
  %2344 = and i32 %2343, %2188
  %2345 = lshr i32 %2293, 1
  %2346 = and i32 %2306, %2345
  %2347 = or i32 %2341, %2346
  %2348 = or i32 %2347, %2344
  %2349 = or i32 %2348, %2295
  br label %2350

2350:                                             ; preds = %2340, %2330, %2320, %2289
  %2351 = phi i32 [ %2298, %2289 ], [ %2329, %2320 ], [ %2329, %2330 ], [ %2329, %2340 ]
  %2352 = phi i32 [ %2296, %2289 ], [ %2296, %2320 ], [ %2339, %2330 ], [ %2339, %2340 ]
  %2353 = phi i32 [ %2294, %2289 ], [ %2294, %2320 ], [ %2294, %2330 ], [ %2349, %2340 ]
  %2354 = add nuw i32 %2291, 1
  %2355 = and i32 %2310, %2176
  %2356 = icmp eq i32 %2355, 0
  br i1 %2356, label %2447, label %2357

2357:                                             ; preds = %2350
  %2358 = add nsw i32 %2290, 1
  %2359 = select i1 %2198, i32 %2319, i32 %2310
  %2360 = select i1 %2199, i32 %2351, i32 %2359
  %2361 = select i1 %2200, i32 %2352, i32 %2360
  %2362 = select i1 %2201, i32 %2353, i32 %2361
  %2363 = load i1, ptr @AND, align 4
  %2364 = load i32, ptr @endposition, align 4
  %2365 = and i32 %2364, %2362
  %2366 = icmp eq i32 %2365, %2364
  %2367 = select i1 %2363, i1 %2366, i1 false
  br i1 %2367, label %2374, label %2368

2368:                                             ; preds = %2357
  %2369 = xor i1 %2363, true
  %2370 = icmp ne i32 %2365, 0
  %2371 = select i1 %2369, i1 %2370, i1 false
  %2372 = load i1, ptr @INVERSE, align 4
  %2373 = xor i1 %2371, %2372
  br i1 %2373, label %2374, label %2384

2374:                                             ; preds = %2368, %2357
  %2375 = load i1, ptr @FILENAMEONLY, align 4
  br i1 %2375, label %2376, label %2380

2376:                                             ; preds = %2374
  %2377 = load i32, ptr @num_of_matched, align 4, !tbaa !7
  %2378 = add nsw i32 %2377, 1
  store i32 %2378, ptr @num_of_matched, align 4, !tbaa !7
  %2379 = call i32 @puts(ptr nonnull dereferenceable(1) @CurrentFileName)
  br label %2645

2380:                                             ; preds = %2374
  %2381 = icmp slt i32 %2292, %2288
  br i1 %2381, label %2382, label %2384

2382:                                             ; preds = %2380
  %2383 = sub i32 %2291, %2174
  call fastcc void @output(ptr noundef nonnull %9, i32 noundef %2292, i32 noundef %2383, i32 noundef %2358) #25
  br label %2384

2384:                                             ; preds = %2382, %2380, %2368
  store i1 false, ptr @TRUNCATE, align 4
  %2385 = load i32, ptr @Init, align 16, !tbaa !7
  br label %2386

2386:                                             ; preds = %2408, %2384
  %2387 = phi i64 [ 0, %2384 ], [ %2409, %2408 ]
  %2388 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %2384 ], [ %2410, %2408 ]
  %2389 = icmp ule <4 x i64> %2388, %2216
  %2390 = extractelement <4 x i1> %2389, i64 0
  br i1 %2390, label %2391, label %2393

2391:                                             ; preds = %2386
  %2392 = getelementptr inbounds [9 x i32], ptr %8, i64 0, i64 %2387
  store i32 %2385, ptr %2392, align 16, !tbaa !7
  br label %2393

2393:                                             ; preds = %2391, %2386
  %2394 = extractelement <4 x i1> %2389, i64 1
  br i1 %2394, label %2395, label %2398

2395:                                             ; preds = %2393
  %2396 = or i64 %2387, 1
  %2397 = getelementptr inbounds [9 x i32], ptr %8, i64 0, i64 %2396
  store i32 %2385, ptr %2397, align 4, !tbaa !7
  br label %2398

2398:                                             ; preds = %2395, %2393
  %2399 = extractelement <4 x i1> %2389, i64 2
  br i1 %2399, label %2400, label %2403

2400:                                             ; preds = %2398
  %2401 = or i64 %2387, 2
  %2402 = getelementptr inbounds [9 x i32], ptr %8, i64 0, i64 %2401
  store i32 %2385, ptr %2402, align 8, !tbaa !7
  br label %2403

2403:                                             ; preds = %2400, %2398
  %2404 = extractelement <4 x i1> %2389, i64 3
  br i1 %2404, label %2405, label %2408

2405:                                             ; preds = %2403
  %2406 = or i64 %2387, 3
  %2407 = getelementptr inbounds [9 x i32], ptr %8, i64 0, i64 %2406
  store i32 %2385, ptr %2407, align 4, !tbaa !7
  br label %2408

2408:                                             ; preds = %2405, %2403
  %2409 = add i64 %2387, 4
  %2410 = add <4 x i64> %2388, <i64 4, i64 4, i64 4, i64 4>
  %2411 = icmp eq i64 %2409, %2213
  br i1 %2411, label %2412, label %2386, !llvm.loop !171

2412:                                             ; preds = %2408
  %2413 = load i32, ptr %8, align 16, !tbaa !7
  %2414 = load i32, ptr @Init1, align 4, !tbaa !7
  %2415 = and i32 %2414, %2413
  %2416 = lshr i32 %2413, 1
  %2417 = and i32 %2416, %2306
  %2418 = or i32 %2417, %2415
  %2419 = and i32 %2418, %2193
  store i32 %2419, ptr %7, align 16, !tbaa !7
  br label %2420

2420:                                             ; preds = %2420, %2412
  %2421 = phi i32 [ %2434, %2420 ], [ %2419, %2412 ]
  %2422 = phi i32 [ %2425, %2420 ], [ %2413, %2412 ]
  %2423 = phi i64 [ %2436, %2420 ], [ 1, %2412 ]
  %2424 = getelementptr inbounds [9 x i32], ptr %8, i64 0, i64 %2423
  %2425 = load i32, ptr %2424, align 4, !tbaa !7
  %2426 = and i32 %2425, %2414
  %2427 = or i32 %2422, %2421
  %2428 = lshr i32 %2427, 1
  %2429 = and i32 %2428, %2188
  %2430 = lshr i32 %2425, 1
  %2431 = and i32 %2430, %2306
  %2432 = or i32 %2426, %2429
  %2433 = or i32 %2432, %2431
  %2434 = or i32 %2433, %2422
  %2435 = getelementptr inbounds [9 x i32], ptr %7, i64 0, i64 %2423
  store i32 %2434, ptr %2435, align 4, !tbaa !7
  %2436 = add nuw nsw i64 %2423, 1
  %2437 = icmp eq i64 %2436, %2191
  br i1 %2437, label %2438, label %2420, !llvm.loop !172

2438:                                             ; preds = %2420
  %2439 = sub i32 %2354, %2174
  %2440 = load i32, ptr %2202, align 4, !tbaa !7
  %2441 = load i32, ptr %2203, align 8, !tbaa !7
  %2442 = load i32, ptr %2204, align 8, !tbaa !7
  %2443 = load i32, ptr %2205, align 4, !tbaa !7
  %2444 = load i32, ptr %2206, align 4, !tbaa !7
  %2445 = load i32, ptr %2207, align 16, !tbaa !7
  %2446 = load i32, ptr %2208, align 16, !tbaa !7
  br label %2447

2447:                                             ; preds = %2438, %2350
  %2448 = phi i32 [ %2419, %2438 ], [ %2310, %2350 ]
  %2449 = phi i32 [ %2440, %2438 ], [ %2319, %2350 ]
  %2450 = phi i32 [ %2441, %2438 ], [ %2351, %2350 ]
  %2451 = phi i32 [ %2442, %2438 ], [ %2297, %2350 ]
  %2452 = phi i32 [ %2443, %2438 ], [ %2352, %2350 ]
  %2453 = phi i32 [ %2444, %2438 ], [ %2295, %2350 ]
  %2454 = phi i32 [ %2445, %2438 ], [ %2353, %2350 ]
  %2455 = phi i32 [ %2446, %2438 ], [ %2293, %2350 ]
  %2456 = phi i32 [ %2439, %2438 ], [ %2292, %2350 ]
  %2457 = phi i32 [ %2358, %2438 ], [ %2290, %2350 ]
  %2458 = zext i32 %2354 to i64
  %2459 = getelementptr inbounds [98305 x i8], ptr %9, i64 0, i64 %2458
  %2460 = load i8, ptr %2459, align 1, !tbaa !13
  %2461 = zext i8 %2460 to i64
  %2462 = getelementptr inbounds [0 x i32], ptr @Mask, i64 0, i64 %2461
  %2463 = load i32, ptr %2462, align 4, !tbaa !7
  %2464 = and i32 %2448, %2187
  %2465 = lshr i32 %2448, 1
  %2466 = and i32 %2463, %2465
  %2467 = or i32 %2466, %2464
  %2468 = and i32 %2449, %2187
  %2469 = or i32 %2466, %2448
  %2470 = lshr i32 %2469, 1
  %2471 = and i32 %2470, %2188
  %2472 = lshr i32 %2449, 1
  %2473 = and i32 %2463, %2472
  %2474 = or i32 %2468, %2473
  %2475 = or i32 %2474, %2471
  %2476 = or i32 %2475, %2448
  br i1 %2198, label %2507, label %2477

2477:                                             ; preds = %2447
  %2478 = and i32 %2450, %2187
  %2479 = or i32 %2476, %2449
  %2480 = lshr i32 %2479, 1
  %2481 = and i32 %2480, %2188
  %2482 = lshr i32 %2450, 1
  %2483 = and i32 %2463, %2482
  %2484 = or i32 %2478, %2483
  %2485 = or i32 %2484, %2481
  %2486 = or i32 %2485, %2449
  br i1 %2199, label %2507, label %2487

2487:                                             ; preds = %2477
  %2488 = and i32 %2452, %2187
  %2489 = or i32 %2486, %2450
  %2490 = lshr i32 %2489, 1
  %2491 = and i32 %2490, %2188
  %2492 = lshr i32 %2452, 1
  %2493 = and i32 %2463, %2492
  %2494 = or i32 %2488, %2493
  %2495 = or i32 %2494, %2491
  %2496 = or i32 %2495, %2450
  br i1 %2200, label %2507, label %2497

2497:                                             ; preds = %2487
  %2498 = and i32 %2454, %2187
  %2499 = or i32 %2496, %2452
  %2500 = lshr i32 %2499, 1
  %2501 = and i32 %2500, %2188
  %2502 = lshr i32 %2454, 1
  %2503 = and i32 %2463, %2502
  %2504 = or i32 %2498, %2503
  %2505 = or i32 %2504, %2501
  %2506 = or i32 %2505, %2452
  br label %2507

2507:                                             ; preds = %2497, %2487, %2477, %2447
  %2508 = phi i32 [ %2451, %2447 ], [ %2486, %2477 ], [ %2486, %2487 ], [ %2486, %2497 ]
  %2509 = phi i32 [ %2453, %2447 ], [ %2453, %2477 ], [ %2496, %2487 ], [ %2496, %2497 ]
  %2510 = phi i32 [ %2455, %2447 ], [ %2455, %2477 ], [ %2455, %2487 ], [ %2506, %2497 ]
  %2511 = add i32 %2291, 2
  %2512 = and i32 %2467, %2176
  %2513 = icmp eq i32 %2512, 0
  br i1 %2513, label %2604, label %2514

2514:                                             ; preds = %2507
  %2515 = add nsw i32 %2457, 1
  %2516 = select i1 %2198, i32 %2476, i32 %2467
  %2517 = select i1 %2199, i32 %2508, i32 %2516
  %2518 = select i1 %2200, i32 %2509, i32 %2517
  %2519 = select i1 %2201, i32 %2510, i32 %2518
  %2520 = load i1, ptr @AND, align 4
  %2521 = load i32, ptr @endposition, align 4
  %2522 = and i32 %2521, %2519
  %2523 = icmp eq i32 %2522, %2521
  %2524 = select i1 %2520, i1 %2523, i1 false
  br i1 %2524, label %2531, label %2525

2525:                                             ; preds = %2514
  %2526 = xor i1 %2520, true
  %2527 = icmp ne i32 %2522, 0
  %2528 = select i1 %2526, i1 %2527, i1 false
  %2529 = load i1, ptr @INVERSE, align 4
  %2530 = xor i1 %2528, %2529
  br i1 %2530, label %2531, label %2541

2531:                                             ; preds = %2525, %2514
  %2532 = load i1, ptr @FILENAMEONLY, align 4
  br i1 %2532, label %2533, label %2537

2533:                                             ; preds = %2531
  %2534 = load i32, ptr @num_of_matched, align 4, !tbaa !7
  %2535 = add nsw i32 %2534, 1
  store i32 %2535, ptr @num_of_matched, align 4, !tbaa !7
  %2536 = call i32 @puts(ptr nonnull dereferenceable(1) @CurrentFileName)
  br label %2645

2537:                                             ; preds = %2531
  %2538 = icmp slt i32 %2456, %2288
  br i1 %2538, label %2539, label %2541

2539:                                             ; preds = %2537
  %2540 = add i32 %2511, %2209
  call fastcc void @output(ptr noundef nonnull %9, i32 noundef %2456, i32 noundef %2540, i32 noundef %2515) #25
  br label %2541

2541:                                             ; preds = %2539, %2537, %2525
  store i1 false, ptr @TRUNCATE, align 4
  %2542 = load i32, ptr @Init, align 16, !tbaa !7
  br label %2543

2543:                                             ; preds = %2565, %2541
  %2544 = phi i64 [ 0, %2541 ], [ %2566, %2565 ]
  %2545 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %2541 ], [ %2567, %2565 ]
  %2546 = icmp ule <4 x i64> %2545, %2216
  %2547 = extractelement <4 x i1> %2546, i64 0
  br i1 %2547, label %2548, label %2550

2548:                                             ; preds = %2543
  %2549 = getelementptr inbounds [9 x i32], ptr %7, i64 0, i64 %2544
  store i32 %2542, ptr %2549, align 16, !tbaa !7
  br label %2550

2550:                                             ; preds = %2548, %2543
  %2551 = extractelement <4 x i1> %2546, i64 1
  br i1 %2551, label %2552, label %2555

2552:                                             ; preds = %2550
  %2553 = or i64 %2544, 1
  %2554 = getelementptr inbounds [9 x i32], ptr %7, i64 0, i64 %2553
  store i32 %2542, ptr %2554, align 4, !tbaa !7
  br label %2555

2555:                                             ; preds = %2552, %2550
  %2556 = extractelement <4 x i1> %2546, i64 2
  br i1 %2556, label %2557, label %2560

2557:                                             ; preds = %2555
  %2558 = or i64 %2544, 2
  %2559 = getelementptr inbounds [9 x i32], ptr %7, i64 0, i64 %2558
  store i32 %2542, ptr %2559, align 8, !tbaa !7
  br label %2560

2560:                                             ; preds = %2557, %2555
  %2561 = extractelement <4 x i1> %2546, i64 3
  br i1 %2561, label %2562, label %2565

2562:                                             ; preds = %2560
  %2563 = or i64 %2544, 3
  %2564 = getelementptr inbounds [9 x i32], ptr %7, i64 0, i64 %2563
  store i32 %2542, ptr %2564, align 4, !tbaa !7
  br label %2565

2565:                                             ; preds = %2562, %2560
  %2566 = add i64 %2544, 4
  %2567 = add <4 x i64> %2545, <i64 4, i64 4, i64 4, i64 4>
  %2568 = icmp eq i64 %2566, %2213
  br i1 %2568, label %2569, label %2543, !llvm.loop !173

2569:                                             ; preds = %2565
  %2570 = load i32, ptr %7, align 16, !tbaa !7
  %2571 = load i32, ptr @Init1, align 4, !tbaa !7
  %2572 = and i32 %2571, %2570
  %2573 = lshr i32 %2570, 1
  %2574 = and i32 %2573, %2463
  %2575 = or i32 %2574, %2572
  %2576 = and i32 %2575, %2193
  store i32 %2576, ptr %8, align 16, !tbaa !7
  br label %2577

2577:                                             ; preds = %2577, %2569
  %2578 = phi i32 [ %2591, %2577 ], [ %2576, %2569 ]
  %2579 = phi i32 [ %2582, %2577 ], [ %2570, %2569 ]
  %2580 = phi i64 [ %2593, %2577 ], [ 1, %2569 ]
  %2581 = getelementptr inbounds [9 x i32], ptr %7, i64 0, i64 %2580
  %2582 = load i32, ptr %2581, align 4, !tbaa !7
  %2583 = and i32 %2582, %2571
  %2584 = or i32 %2579, %2578
  %2585 = lshr i32 %2584, 1
  %2586 = and i32 %2585, %2188
  %2587 = lshr i32 %2582, 1
  %2588 = and i32 %2587, %2463
  %2589 = or i32 %2583, %2586
  %2590 = or i32 %2589, %2588
  %2591 = or i32 %2590, %2579
  %2592 = getelementptr inbounds [9 x i32], ptr %8, i64 0, i64 %2580
  store i32 %2591, ptr %2592, align 4, !tbaa !7
  %2593 = add nuw nsw i64 %2580, 1
  %2594 = icmp eq i64 %2593, %2191
  br i1 %2594, label %2595, label %2577, !llvm.loop !174

2595:                                             ; preds = %2577
  %2596 = sub i32 %2511, %2174
  %2597 = load i32, ptr %2210, align 4, !tbaa !7
  %2598 = load i32, ptr %2203, align 8, !tbaa !7
  %2599 = load i32, ptr %2204, align 8, !tbaa !7
  %2600 = load i32, ptr %2205, align 4, !tbaa !7
  %2601 = load i32, ptr %2206, align 4, !tbaa !7
  %2602 = load i32, ptr %2207, align 16, !tbaa !7
  %2603 = load i32, ptr %2208, align 16, !tbaa !7
  br label %2604

2604:                                             ; preds = %2595, %2507
  %2605 = phi i32 [ %2576, %2595 ], [ %2467, %2507 ]
  %2606 = phi i32 [ %2597, %2595 ], [ %2476, %2507 ]
  %2607 = phi i32 [ %2598, %2595 ], [ %2450, %2507 ]
  %2608 = phi i32 [ %2599, %2595 ], [ %2508, %2507 ]
  %2609 = phi i32 [ %2600, %2595 ], [ %2452, %2507 ]
  %2610 = phi i32 [ %2601, %2595 ], [ %2509, %2507 ]
  %2611 = phi i32 [ %2602, %2595 ], [ %2454, %2507 ]
  %2612 = phi i32 [ %2603, %2595 ], [ %2510, %2507 ]
  %2613 = phi i32 [ %2596, %2595 ], [ %2456, %2507 ]
  %2614 = phi i32 [ %2515, %2595 ], [ %2457, %2507 ]
  %2615 = icmp ult i32 %2511, %2285
  br i1 %2615, label %2289, label %2616, !llvm.loop !175

2616:                                             ; preds = %2604, %2284
  %2617 = phi i32 [ %2224, %2284 ], [ %2605, %2604 ]
  %2618 = phi i32 [ %2225, %2284 ], [ %2606, %2604 ]
  %2619 = phi i32 [ %2226, %2284 ], [ %2607, %2604 ]
  %2620 = phi i32 [ %2227, %2284 ], [ %2608, %2604 ]
  %2621 = phi i32 [ %2228, %2284 ], [ %2609, %2604 ]
  %2622 = phi i32 [ %2229, %2284 ], [ %2610, %2604 ]
  %2623 = phi i32 [ %2230, %2284 ], [ %2611, %2604 ]
  %2624 = phi i32 [ %2231, %2284 ], [ %2612, %2604 ]
  %2625 = phi i32 [ %2233, %2284 ], [ %2613, %2604 ]
  %2626 = phi i32 [ %2276, %2284 ], [ %2614, %2604 ]
  br i1 %.lcssa10, label %2643, label %2627

2627:                                             ; preds = %2616
  %2628 = sub nsw i32 %2248, %2625
  %2629 = icmp sgt i32 %2628, 49152
  br i1 %2629, label %2630, label %2631

2630:                                             ; preds = %2627
  store i1 true, ptr @TRUNCATE, align 4
  br label %2631

2631:                                             ; preds = %2630, %2627
  %2632 = phi i32 [ 49152, %2630 ], [ %2628, %2627 ]
  %2633 = freeze i32 %2632
  %2634 = sext i32 %2633 to i64
  %2635 = sub nsw i64 0, %2634
  %2636 = getelementptr inbounds i8, ptr %2194, i64 %2635
  %2637 = sext i32 %2625 to i64
  %2638 = getelementptr inbounds i8, ptr %9, i64 %2637
  %2639 = call ptr @strncpy(ptr noundef nonnull %2636, ptr noundef nonnull %2638, i64 noundef %2634) #25
  %2640 = sub nsw i32 49152, %2633
  %2641 = icmp eq i32 %2633, 49152
  %2642 = select i1 %2641, i32 1, i32 %2640
  br label %2643

2643:                                             ; preds = %2631, %2616
  %2644 = phi i32 [ %2642, %2631 ], [ 49152, %2616 ]
  br label %2223, !llvm.loop !176

2645:                                             ; preds = %2533, %2376, %2245, %2171
  call void @llvm.lifetime.end.p0(i64 98305, ptr nonnull %9) #24
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %8) #24
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %7) #24
  br label %2856

2646:                                             ; preds = %1838
  %2647 = load i32, ptr @I, align 4, !tbaa !7
  %2648 = icmp eq i32 %2647, 0
  br i1 %2648, label %2651, label %2649

2649:                                             ; preds = %2646
  %2650 = load i32, ptr @Init1, align 4, !tbaa !7
  br label %2652

2651:                                             ; preds = %2646
  store i32 -1, ptr @Init1, align 4, !tbaa !7
  br label %2652

2652:                                             ; preds = %2651, %2649
  %2653 = phi i32 [ %2650, %2649 ], [ -1, %2651 ]
  %2654 = getelementptr inbounds [147456 x i8], ptr %21, i64 0, i64 49151
  %2655 = load i32, ptr @Init, align 16, !tbaa !7
  %2656 = load i32, ptr @D_endpos, align 4, !tbaa !7
  store i8 10, ptr %2654, align 1, !tbaa !13
  %2657 = icmp ugt i32 %23, 1
  br i1 %2657, label %2658, label %2665

2658:                                             ; preds = %2658, %2652
  %2659 = phi i32 [ %2662, %2658 ], [ %2656, %2652 ]
  %2660 = phi i32 [ %2663, %2658 ], [ 1, %2652 ]
  %2661 = shl i32 %2659, 1
  %2662 = or i32 %2661, %2659
  %2663 = add nuw i32 %2660, 1
  %2664 = icmp eq i32 %2663, %23
  br i1 %2664, label %2665, label %2658, !llvm.loop !177

2665:                                             ; preds = %2658, %2652
  %2666 = phi i32 [ %2656, %2652 ], [ %2662, %2658 ]
  %2667 = xor i32 %2666, -1
  %2668 = getelementptr inbounds i8, ptr %21, i64 49152
  br label %2669

2669:                                             ; preds = %2847, %2665
  %2670 = phi i32 [ %2655, %2665 ], [ %2841, %2847 ]
  %2671 = phi i1 [ false, %2665 ], [ true, %2847 ]
  %2672 = phi i32 [ 49152, %2665 ], [ %2855, %2847 ]
  %2673 = phi i32 [ 0, %2665 ], [ %2843, %2847 ]
  br label %2674

2674:                                             ; preds = %2674, %2669
  %2675 = phi i32 [ %2680, %2674 ], [ 0, %2669 ]
  %2676 = sext i32 %2675 to i64
  %2677 = getelementptr inbounds i8, ptr %2668, i64 %2676
  %2678 = call i64 @read(i32 noundef %0, ptr noundef nonnull %2677, i64 noundef 4096) #25
  %2679 = trunc i64 %2678 to i32
  %2680 = add nsw i32 %2675, %2679
  %2681 = icmp slt i32 %2680, 49152
  %2682 = icmp sgt i32 %2679, 0
  %2683 = and i1 %2682, %2681
  br i1 %2683, label %2674, label %2684, !llvm.loop !149

2684:                                             ; preds = %2674
  %.lcssa13 = phi i32 [ %2680, %2674 ]
  %.lcssa12 = phi i1 [ %2681, %2674 ]
  %2685 = icmp sgt i32 %.lcssa13, 0
  br i1 %2685, label %2686, label %2856

2686:                                             ; preds = %2684
  %2687 = add nuw nsw i32 %.lcssa13, 49152
  br i1 %2671, label %2716, label %2688

2688:                                             ; preds = %2686
  %2689 = load i1, ptr @DELIMITER, align 4
  br i1 %2689, label %2690, label %2716

2690:                                             ; preds = %2688
  %2691 = load i32, ptr @D_length, align 4, !tbaa !7
  %2692 = icmp slt i32 %2691, 1
  br i1 %2692, label %2712, label %2693

2693:                                             ; preds = %2690
  %2694 = zext i32 %2691 to i64
  %2695 = load i8, ptr @old_D_pat, align 16, !tbaa !13
  %2696 = load i8, ptr %2668, align 16, !tbaa !13
  %2697 = icmp eq i8 %2695, %2696
  br i1 %2697, label %2698, label %2712

2698:                                             ; preds = %2702, %2693
  %2699 = phi i64 [ %2700, %2702 ], [ 0, %2693 ]
  %2700 = add nuw nsw i64 %2699, 1
  %2701 = icmp eq i64 %2700, %2694
  br i1 %2701, label %2709, label %2702, !llvm.loop !178

2702:                                             ; preds = %2698
  %2703 = getelementptr inbounds i8, ptr @old_D_pat, i64 %2700
  %2704 = load i8, ptr %2703, align 1, !tbaa !13
  %2705 = add nuw nsw i64 %2699, 49153
  %2706 = getelementptr inbounds [147456 x i8], ptr %21, i64 0, i64 %2705
  %2707 = load i8, ptr %2706, align 1, !tbaa !13
  %2708 = icmp eq i8 %2704, %2707
  br i1 %2708, label %2698, label %2709, !llvm.loop !178

2709:                                             ; preds = %2702, %2698
  %2710 = phi i64 [ %2700, %2702 ], [ %2694, %2698 ]
  %2711 = icmp uge i64 %2710, %2694
  br label %2712

2712:                                             ; preds = %2709, %2693, %2690
  %2713 = phi i1 [ true, %2690 ], [ false, %2693 ], [ %2711, %2709 ]
  %2714 = sext i1 %2713 to i32
  %2715 = add nsw i32 %2673, %2714
  br label %2716

2716:                                             ; preds = %2712, %2688, %2686
  %2717 = phi i32 [ 49152, %2686 ], [ 49151, %2712 ], [ 49151, %2688 ]
  %2718 = phi i32 [ %2673, %2686 ], [ %2715, %2712 ], [ %2673, %2688 ]
  br i1 %.lcssa12, label %2719, label %2728

2719:                                             ; preds = %2716
  %2720 = zext i32 %.lcssa13 to i64
  %2721 = getelementptr inbounds i8, ptr %2668, i64 %2720
  %2722 = load i32, ptr @D_length, align 4, !tbaa !7
  %2723 = sext i32 %2722 to i64
  %2724 = call ptr @strncpy(ptr noundef nonnull %2721, ptr noundef nonnull @old_D_pat, i64 noundef %2723) #25
  %2725 = add i32 %2722, %2687
  %2726 = zext i32 %2725 to i64
  %2727 = getelementptr inbounds [147456 x i8], ptr %21, i64 0, i64 %2726
  store i8 0, ptr %2727, align 1, !tbaa !13
  br label %2728

2728:                                             ; preds = %2719, %2716
  %2729 = phi i32 [ %2725, %2719 ], [ %2687, %2716 ]
  %2730 = icmp ult i32 %2717, %2729
  br i1 %2730, label %2731, label %2840

2731:                                             ; preds = %2728
  %2732 = add nuw nsw i32 %.lcssa13, 49151
  br label %2733

2733:                                             ; preds = %2835, %2731
  %2734 = phi i32 [ %2718, %2731 ], [ %2838, %2835 ]
  %2735 = phi i32 [ %2672, %2731 ], [ %2837, %2835 ]
  %2736 = phi i32 [ %2717, %2731 ], [ %2788, %2835 ]
  %2737 = phi i32 [ %2670, %2731 ], [ %2836, %2835 ]
  %2738 = add nuw i32 %2736, 1
  %2739 = zext i32 %2736 to i64
  %2740 = getelementptr inbounds [147456 x i8], ptr %21, i64 0, i64 %2739
  %2741 = load i8, ptr %2740, align 1, !tbaa !13
  %2742 = sext i8 %2741 to i64
  %2743 = getelementptr inbounds [0 x i32], ptr @Mask, i64 0, i64 %2742
  %2744 = load i32, ptr %2743, align 4, !tbaa !7
  %2745 = and i32 %2737, %2653
  %2746 = lshr i32 %2737, 1
  %2747 = and i32 %2744, %2746
  %2748 = or i32 %2747, %2745
  %2749 = and i32 %2748, %2656
  %2750 = icmp eq i32 %2749, 0
  br i1 %2750, label %2784, label %2751

2751:                                             ; preds = %2733
  %2752 = add nsw i32 %2734, 1
  %2753 = load i1, ptr @AND, align 4
  %2754 = load i32, ptr @endposition, align 4
  %2755 = and i32 %2754, %2748
  %2756 = icmp eq i32 %2755, %2754
  %2757 = select i1 %2753, i1 %2756, i1 false
  br i1 %2757, label %2764, label %2758

2758:                                             ; preds = %2751
  %2759 = xor i1 %2753, true
  %2760 = icmp ne i32 %2755, 0
  %2761 = select i1 %2759, i1 %2760, i1 false
  %2762 = load i1, ptr @INVERSE, align 4
  %2763 = xor i1 %2761, %2762
  br i1 %2763, label %2764, label %2775

2764:                                             ; preds = %2758, %2751
  %2765 = load i1, ptr @FILENAMEONLY, align 4
  br i1 %2765, label %2766, label %2770

2766:                                             ; preds = %2764
  %2767 = load i32, ptr @num_of_matched, align 4, !tbaa !7
  %2768 = add nsw i32 %2767, 1
  store i32 %2768, ptr @num_of_matched, align 4, !tbaa !7
  %2769 = call i32 @puts(ptr nonnull dereferenceable(1) @CurrentFileName)
  br label %2856

2770:                                             ; preds = %2764
  %2771 = icmp slt i32 %2735, %2732
  br i1 %2771, label %2772, label %2775

2772:                                             ; preds = %2770
  %2773 = load i32, ptr @D_length, align 4, !tbaa !7
  %2774 = sub i32 %2736, %2773
  call fastcc void @output(ptr noundef nonnull %21, i32 noundef %2735, i32 noundef %2774, i32 noundef %2752) #25
  br label %2775

2775:                                             ; preds = %2772, %2770, %2758
  %2776 = load i32, ptr @D_length, align 4, !tbaa !7
  %2777 = sub i32 %2738, %2776
  store i1 false, ptr @TRUNCATE, align 4
  %2778 = load i32, ptr @Init, align 16, !tbaa !7
  %2779 = and i32 %2778, %2653
  %2780 = lshr i32 %2778, 1
  %2781 = and i32 %2780, %2744
  %2782 = or i32 %2781, %2779
  %2783 = and i32 %2782, %2667
  br label %2784

2784:                                             ; preds = %2775, %2733
  %2785 = phi i32 [ %2783, %2775 ], [ %2748, %2733 ]
  %2786 = phi i32 [ %2777, %2775 ], [ %2735, %2733 ]
  %2787 = phi i32 [ %2752, %2775 ], [ %2734, %2733 ]
  %2788 = add i32 %2736, 2
  %2789 = zext i32 %2738 to i64
  %2790 = getelementptr inbounds [147456 x i8], ptr %21, i64 0, i64 %2789
  %2791 = load i8, ptr %2790, align 1, !tbaa !13
  %2792 = sext i8 %2791 to i64
  %2793 = getelementptr inbounds [0 x i32], ptr @Mask, i64 0, i64 %2792
  %2794 = load i32, ptr %2793, align 4, !tbaa !7
  %2795 = and i32 %2785, %2653
  %2796 = lshr i32 %2785, 1
  %2797 = and i32 %2794, %2796
  %2798 = or i32 %2797, %2795
  %2799 = and i32 %2798, %2656
  %2800 = icmp eq i32 %2799, 0
  br i1 %2800, label %2835, label %2801

2801:                                             ; preds = %2784
  %2802 = add nsw i32 %2787, 1
  %2803 = load i1, ptr @AND, align 4
  %2804 = load i32, ptr @endposition, align 4
  %2805 = and i32 %2804, %2798
  %2806 = icmp eq i32 %2805, %2804
  %2807 = select i1 %2803, i1 %2806, i1 false
  br i1 %2807, label %2814, label %2808

2808:                                             ; preds = %2801
  %2809 = xor i1 %2803, true
  %2810 = icmp ne i32 %2805, 0
  %2811 = select i1 %2809, i1 %2810, i1 false
  %2812 = load i1, ptr @INVERSE, align 4
  %2813 = xor i1 %2811, %2812
  br i1 %2813, label %2814, label %2826

2814:                                             ; preds = %2808, %2801
  %2815 = load i1, ptr @FILENAMEONLY, align 4
  br i1 %2815, label %2816, label %2820

2816:                                             ; preds = %2814
  %2817 = load i32, ptr @num_of_matched, align 4, !tbaa !7
  %2818 = add nsw i32 %2817, 1
  store i32 %2818, ptr @num_of_matched, align 4, !tbaa !7
  %2819 = call i32 @puts(ptr nonnull dereferenceable(1) @CurrentFileName)
  br label %2856

2820:                                             ; preds = %2814
  %2821 = icmp slt i32 %2786, %2732
  br i1 %2821, label %2822, label %2826

2822:                                             ; preds = %2820
  %2823 = load i32, ptr @D_length, align 4, !tbaa !7
  %2824 = xor i32 %2823, -1
  %2825 = add i32 %2788, %2824
  call fastcc void @output(ptr noundef nonnull %21, i32 noundef %2786, i32 noundef %2825, i32 noundef %2802) #25
  br label %2826

2826:                                             ; preds = %2822, %2820, %2808
  %2827 = load i32, ptr @D_length, align 4, !tbaa !7
  %2828 = sub i32 %2788, %2827
  store i1 false, ptr @TRUNCATE, align 4
  %2829 = load i32, ptr @Init, align 16, !tbaa !7
  %2830 = and i32 %2829, %2653
  %2831 = lshr i32 %2829, 1
  %2832 = and i32 %2831, %2794
  %2833 = or i32 %2832, %2830
  %2834 = and i32 %2833, %2667
  br label %2835

2835:                                             ; preds = %2826, %2784
  %2836 = phi i32 [ %2834, %2826 ], [ %2798, %2784 ]
  %2837 = phi i32 [ %2828, %2826 ], [ %2786, %2784 ]
  %2838 = phi i32 [ %2802, %2826 ], [ %2787, %2784 ]
  %2839 = icmp ult i32 %2788, %2729
  br i1 %2839, label %2733, label %2840, !llvm.loop !179

2840:                                             ; preds = %2835, %2728
  %2841 = phi i32 [ %2670, %2728 ], [ %2836, %2835 ]
  %2842 = phi i32 [ %2672, %2728 ], [ %2837, %2835 ]
  %2843 = phi i32 [ %2718, %2728 ], [ %2838, %2835 ]
  %2844 = sub nsw i32 %2687, %2842
  %2845 = icmp sgt i32 %2844, 49152
  br i1 %2845, label %2846, label %2847

2846:                                             ; preds = %2840
  store i1 true, ptr @TRUNCATE, align 4
  br label %2847

2847:                                             ; preds = %2846, %2840
  %2848 = phi i32 [ 49152, %2846 ], [ %2844, %2840 ]
  %2849 = sext i32 %2848 to i64
  %2850 = sub nsw i64 0, %2849
  %2851 = getelementptr inbounds i8, ptr %2668, i64 %2850
  %2852 = sext i32 %2842 to i64
  %2853 = getelementptr inbounds i8, ptr %21, i64 %2852
  %2854 = call ptr @strncpy(ptr noundef nonnull %2851, ptr noundef nonnull %2853, i64 noundef %2849) #25
  %2855 = sub nsw i32 49152, %2848
  br label %2669, !llvm.loop !180

2856:                                             ; preds = %2816, %2766, %2684, %2645, %1837, %1464, %535
  call void @llvm.lifetime.end.p0(i64 147456, ptr nonnull %21) #24
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind optsize
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #13

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree optsize
declare noundef i64 @write(i32 noundef, ptr nocapture noundef readonly, i64 noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare i32 @close(i32 noundef) local_unnamed_addr #15

; Function Attrs: nofree nounwind optsize
declare noundef i32 @__isoc99_scanf(ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nofree nosync nounwind optsize memory(readwrite, argmem: write, inaccessiblemem: none) uwtable
define internal fastcc void @compute_next(i32 noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #16 {
  %4 = alloca [32 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %4) #24
  %5 = sub nsw i32 32, %0
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds [33 x i32], ptr @Bit, i64 0, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !7
  store i32 0, ptr %7, align 4, !tbaa !7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %4, i8 0, i64 128, i1 false), !tbaa !7
  %9 = icmp sgt i32 %0, 1
  br i1 %9, label %11, label %10

10:                                               ; preds = %3
  store i32 %8, ptr %7, align 4, !tbaa !7
  br label %42

11:                                               ; preds = %3
  %12 = zext i32 %0 to i64
  br label %13

13:                                               ; preds = %37, %11
  %14 = phi i64 [ 1, %11 ], [ %38, %37 ]
  %15 = getelementptr inbounds [32 x [32 x i32]], ptr @table, i64 0, i64 %14, i64 0
  %16 = load i32, ptr %15, align 16, !tbaa !7
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %37

18:                                               ; preds = %13
  %19 = getelementptr inbounds [32 x i32], ptr %4, i64 0, i64 %14
  %20 = load i32, ptr %19, align 4, !tbaa !7
  br label %21

21:                                               ; preds = %21, %18
  %22 = phi i64 [ 0, %18 ], [ %25, %21 ]
  %23 = phi i32 [ %20, %18 ], [ %30, %21 ]
  %24 = phi i32 [ %16, %18 ], [ %32, %21 ]
  %25 = add nuw nsw i64 %22, 1
  %26 = add nsw i32 %24, %5
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [33 x i32], ptr @Bit, i64 0, i64 %27
  %29 = load i32, ptr %28, align 4, !tbaa !7
  %30 = or i32 %29, %23
  %31 = getelementptr inbounds [32 x [32 x i32]], ptr @table, i64 0, i64 %14, i64 %25
  %32 = load i32, ptr %31, align 4, !tbaa !7
  %33 = icmp sgt i32 %32, 0
  %34 = icmp ult i64 %22, 9
  %35 = and i1 %34, %33
  br i1 %35, label %21, label %36, !llvm.loop !181

36:                                               ; preds = %21
  %.lcssa2 = phi i32 [ %30, %21 ]
  store i32 %.lcssa2, ptr %19, align 4, !tbaa !7
  br label %37

37:                                               ; preds = %36, %13
  %38 = add nuw nsw i64 %14, 1
  %39 = icmp eq i64 %38, %12
  br i1 %39, label %40, label %13, !llvm.loop !182

40:                                               ; preds = %37
  store i32 %8, ptr %7, align 4, !tbaa !7
  %41 = icmp slt i32 %0, 16
  br i1 %41, label %42, label %83

42:                                               ; preds = %40, %10
  %43 = icmp sgt i32 %0, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %44, %42
  %45 = phi i32 [ %47, %44 ], [ 1, %42 ]
  %46 = phi i32 [ %48, %44 ], [ 0, %42 ]
  %47 = shl nsw i32 %45, 1
  %48 = add nuw nsw i32 %46, 1
  %49 = icmp eq i32 %48, %0
  br i1 %49, label %50, label %44, !llvm.loop !183

50:                                               ; preds = %44, %42
  %51 = phi i32 [ 1, %42 ], [ %47, %44 ]
  %52 = shl nsw i32 %51, 1
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %148

54:                                               ; preds = %50
  %55 = ashr i32 %51, 1
  %56 = zext i32 %0 to i64
  %57 = zext i32 %51 to i64
  %58 = zext i32 %52 to i64
  %59 = load i32, ptr getelementptr inbounds ([33 x i32], ptr @Bit, i64 0, i64 32), align 16
  br label %60

60:                                               ; preds = %80, %54
  %61 = phi i64 [ %57, %54 ], [ %81, %80 ]
  %62 = getelementptr inbounds i32, ptr %1, i64 %61
  store i32 %55, ptr %62, align 4, !tbaa !7
  br i1 %43, label %63, label %80

63:                                               ; preds = %60
  %64 = trunc i64 %61 to i32
  br label %65

65:                                               ; preds = %75, %63
  %66 = phi i32 [ %55, %63 ], [ %76, %75 ]
  %67 = phi i64 [ %56, %63 ], [ %78, %75 ]
  %68 = phi i32 [ %64, %63 ], [ %77, %75 ]
  %69 = and i32 %68, %59
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %75, label %71

71:                                               ; preds = %65
  %72 = getelementptr inbounds [32 x i32], ptr %4, i64 0, i64 %67
  %73 = load i32, ptr %72, align 4, !tbaa !7
  %74 = or i32 %73, %66
  store i32 %74, ptr %62, align 4, !tbaa !7
  br label %75

75:                                               ; preds = %71, %65
  %76 = phi i32 [ %74, %71 ], [ %66, %65 ]
  %77 = ashr i32 %68, 1
  %78 = add nsw i64 %67, -1
  %79 = icmp sgt i64 %67, 1
  br i1 %79, label %65, label %80, !llvm.loop !184

80:                                               ; preds = %75, %60
  %81 = add nuw nsw i64 %61, 1
  %82 = icmp eq i64 %81, %58
  br i1 %82, label %148, label %60, !llvm.loop !185

83:                                               ; preds = %40
  %84 = and i32 %0, 1
  %85 = add nuw nsw i32 %84, %0
  %86 = lshr i32 %85, 1
  br label %87

87:                                               ; preds = %87, %83
  %88 = phi i32 [ %90, %87 ], [ 1, %83 ]
  %89 = phi i32 [ %91, %87 ], [ 0, %83 ]
  %90 = shl nsw i32 %88, 1
  %91 = add nuw nsw i32 %89, 1
  %92 = icmp eq i32 %91, %86
  br i1 %92, label %93, label %87, !llvm.loop !183

93:                                               ; preds = %87
  %.lcssa1 = phi i32 [ %88, %87 ]
  %.lcssa = phi i32 [ %90, %87 ]
  %94 = shl nsw i32 %.lcssa1, 2
  %95 = icmp slt i32 %.lcssa, %94
  br i1 %95, label %96, label %148

96:                                               ; preds = %93
  %97 = lshr i32 %0, 1
  %98 = zext i32 %97 to i64
  %99 = tail call i32 @llvm.umax.i32(i32 %97, i32 1)
  %100 = sext i32 %.lcssa to i64
  %101 = sext i32 %94 to i64
  %102 = zext i32 %99 to i64
  %103 = lshr i32 %8, 1
  %104 = load i32, ptr getelementptr inbounds ([33 x i32], ptr @Bit, i64 0, i64 32), align 16, !tbaa !7
  br label %105

105:                                              ; preds = %145, %96
  %106 = phi i64 [ %100, %96 ], [ %146, %145 ]
  %107 = getelementptr inbounds i32, ptr %1, i64 %106
  store i32 %103, ptr %107, align 4, !tbaa !7
  %108 = trunc i64 %106 to i32
  br label %109

109:                                              ; preds = %120, %105
  %110 = phi i32 [ %103, %105 ], [ %121, %120 ]
  %111 = phi i64 [ %12, %105 ], [ %123, %120 ]
  %112 = phi i32 [ %108, %105 ], [ %122, %120 ]
  %113 = and i32 %112, %104
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %120, label %115

115:                                              ; preds = %109
  %116 = sub nsw i64 %111, %98
  %117 = getelementptr inbounds [32 x i32], ptr %4, i64 0, i64 %116
  %118 = load i32, ptr %117, align 4, !tbaa !7
  %119 = or i32 %118, %110
  store i32 %119, ptr %107, align 4, !tbaa !7
  br label %120

120:                                              ; preds = %115, %109
  %121 = phi i32 [ %119, %115 ], [ %110, %109 ]
  %122 = ashr i32 %112, 1
  %123 = add nsw i64 %111, -1
  %124 = icmp sgt i64 %123, %98
  br i1 %124, label %109, label %125, !llvm.loop !186

125:                                              ; preds = %120
  %126 = sub nsw i64 %106, %100
  %127 = getelementptr inbounds i32, ptr %2, i64 %126
  store i32 0, ptr %127, align 4, !tbaa !7
  %128 = trunc i64 %126 to i32
  br label %129

129:                                              ; preds = %140, %125
  %130 = phi i32 [ 0, %125 ], [ %141, %140 ]
  %131 = phi i64 [ 0, %125 ], [ %143, %140 ]
  %132 = phi i32 [ %128, %125 ], [ %142, %140 ]
  %133 = and i32 %132, %104
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %140, label %135

135:                                              ; preds = %129
  %136 = sub nsw i64 %12, %131
  %137 = getelementptr inbounds [32 x i32], ptr %4, i64 0, i64 %136
  %138 = load i32, ptr %137, align 4, !tbaa !7
  %139 = or i32 %138, %130
  store i32 %139, ptr %127, align 4, !tbaa !7
  br label %140

140:                                              ; preds = %135, %129
  %141 = phi i32 [ %139, %135 ], [ %130, %129 ]
  %142 = ashr i32 %132, 1
  %143 = add nuw nsw i64 %131, 1
  %144 = icmp eq i64 %143, %102
  br i1 %144, label %145, label %129, !llvm.loop !187

145:                                              ; preds = %140
  %146 = add nsw i64 %106, 1
  %147 = icmp eq i64 %146, %101
  br i1 %147, label %148, label %105, !llvm.loop !188

148:                                              ; preds = %145, %93, %80, %50
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %4) #24
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #17

; Function Attrs: nofree nounwind optsize uwtable
define internal fastcc void @r_output(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #14 {
  %5 = icmp slt i32 %1, %2
  br i1 %5, label %6, label %48

6:                                                ; preds = %4
  %7 = load i32, ptr @num_of_matched, align 4, !tbaa !7
  %8 = add nsw i32 %7, 1
  store i32 %8, ptr @num_of_matched, align 4, !tbaa !7
  %9 = load i1, ptr @COUNT, align 4
  br i1 %9, label %48, label %10

10:                                               ; preds = %6
  %11 = load i1, ptr @FNAME, align 4
  br i1 %11, label %12, label %14

12:                                               ; preds = %10
  %13 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.96, ptr noundef nonnull @CurrentFileName) #26
  br label %14

14:                                               ; preds = %12, %10
  %15 = sext i32 %1 to i64
  br label %16

16:                                               ; preds = %16, %14
  %17 = phi i64 [ %18, %16 ], [ %15, %14 ]
  %18 = add nsw i64 %17, -1
  %19 = getelementptr inbounds i8, ptr %0, i64 %18
  %20 = load i8, ptr %19, align 1, !tbaa !13
  %21 = icmp ne i8 %20, 10
  %22 = icmp sgt i64 %17, 1
  %23 = and i1 %22, %21
  br i1 %23, label %16, label %24, !llvm.loop !189

24:                                               ; preds = %16
  %.lcssa2 = phi i64 [ %17, %16 ]
  %.lcssa1 = phi i64 [ %18, %16 ]
  %.lcssa = phi i8 [ %20, %16 ]
  %25 = trunc i64 %.lcssa2 to i32
  %26 = load i1, ptr @LINENUM, align 4
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = getelementptr inbounds i8, ptr %0, i64 %.lcssa1
  %29 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.26, i32 noundef %3) #26
  %30 = load i8, ptr %28, align 1, !tbaa !13
  br label %31

31:                                               ; preds = %27, %24
  %32 = phi i8 [ %30, %27 ], [ %.lcssa, %24 ]
  %33 = icmp eq i8 %32, 10
  %34 = select i1 %33, i32 %25, i32 1024
  %35 = icmp sgt i32 %34, %1
  br i1 %35, label %48, label %36

36:                                               ; preds = %31
  %37 = sext i32 %34 to i64
  %38 = add nsw i32 %1, 1
  br label %39

39:                                               ; preds = %39, %36
  %40 = phi i64 [ %37, %36 ], [ %41, %39 ]
  %41 = add nsw i64 %40, 1
  %42 = getelementptr inbounds i8, ptr %0, i64 %40
  %43 = load i8, ptr %42, align 1, !tbaa !13
  %44 = zext i8 %43 to i32
  %45 = tail call i32 @putchar(i32 noundef %44) #26
  %46 = trunc i64 %41 to i32
  %47 = icmp eq i32 %38, %46
  br i1 %47, label %48, label %39, !llvm.loop !190

48:                                               ; preds = %39, %31, %6, %4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #17

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i64 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind optsize uwtable
define internal fastcc void @output(ptr noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #14 {
  %5 = icmp sgt i32 %1, %2
  br i1 %5, label %77, label %6

6:                                                ; preds = %4
  %7 = load i32, ptr @num_of_matched, align 4, !tbaa !7
  %8 = add nsw i32 %7, 1
  store i32 %8, ptr @num_of_matched, align 4, !tbaa !7
  %9 = load i1, ptr @COUNT, align 4
  %10 = load i1, ptr @SILENT, align 4
  %11 = select i1 %9, i1 true, i1 %10
  br i1 %11, label %77, label %12

12:                                               ; preds = %6
  %13 = load i1, ptr @OUTTAIL, align 4
  %14 = load i32, ptr @D_length, align 4
  %15 = select i1 %13, i32 %14, i32 0
  %16 = add nsw i32 %15, %2
  %17 = add nsw i32 %15, %1
  %18 = load i1, ptr @DELIMITER, align 4
  %19 = zext i1 %18 to i32
  %20 = load i1, ptr @FIRSTOUTPUT, align 4
  br i1 %20, label %21, label %30

21:                                               ; preds = %12
  %22 = sext i32 %17 to i64
  %23 = getelementptr inbounds i8, ptr %0, i64 %22
  %24 = load i8, ptr %23, align 1, !tbaa !13
  %25 = icmp eq i8 %24, 10
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = add nsw i32 %17, 1
  store i1 true, ptr @EATFIRST, align 4
  br label %28

28:                                               ; preds = %26, %21
  %29 = phi i32 [ %27, %26 ], [ %17, %21 ]
  store i1 false, ptr @FIRSTOUTPUT, align 4
  br label %30

30:                                               ; preds = %28, %12
  %31 = phi i32 [ %29, %28 ], [ %17, %12 ]
  %32 = load i1, ptr @TRUNCATE, align 4
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = load ptr, ptr @stderr, align 8, !tbaa !14
  %35 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %34, ptr noundef nonnull @.str.41, i32 noundef %7) #27
  br label %36

36:                                               ; preds = %33, %30
  %37 = sext i32 %31 to i64
  %38 = getelementptr inbounds i8, ptr %0, i64 %37
  %39 = load i8, ptr %38, align 1, !tbaa !13
  %40 = icmp eq i8 %39, 10
  %41 = icmp sle i32 %31, %16
  %42 = select i1 %40, i1 %41, i1 false
  br i1 %42, label %43, label %54

43:                                               ; preds = %36
  %44 = sext i32 %16 to i64
  br label %45

45:                                               ; preds = %45, %43
  %46 = phi i64 [ %37, %43 ], [ %48, %45 ]
  %47 = tail call i32 @putchar(i32 10)
  %48 = add nsw i64 %46, 1
  %49 = getelementptr inbounds i8, ptr %0, i64 %48
  %50 = load i8, ptr %49, align 1, !tbaa !13
  %51 = icmp eq i8 %50, 10
  %52 = icmp slt i64 %46, %44
  %53 = select i1 %51, i1 %52, i1 false
  br i1 %53, label %45, label %54, !llvm.loop !191

54:                                               ; preds = %45, %36
  %55 = phi i64 [ %37, %36 ], [ %48, %45 ]
  %56 = getelementptr inbounds i8, ptr %0, i64 %55
  %57 = load i1, ptr @FNAME, align 4
  br i1 %57, label %58, label %60

58:                                               ; preds = %54
  %59 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.96, ptr noundef nonnull @CurrentFileName) #26
  br label %60

60:                                               ; preds = %58, %54
  %61 = load i1, ptr @LINENUM, align 4
  br i1 %61, label %62, label %66

62:                                               ; preds = %60
  %63 = add i32 %3, -1
  %64 = add i32 %63, %19
  %65 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.26, i32 noundef %64) #26
  br label %66

66:                                               ; preds = %62, %60
  %67 = sext i32 %16 to i64
  %68 = getelementptr inbounds i8, ptr %0, i64 %67
  %69 = icmp sgt i64 %55, %67
  br i1 %69, label %77, label %70

70:                                               ; preds = %70, %66
  %71 = phi ptr [ %72, %70 ], [ %56, %66 ]
  %72 = getelementptr inbounds i8, ptr %71, i64 1
  %73 = load i8, ptr %71, align 1, !tbaa !13
  %74 = zext i8 %73 to i32
  %75 = tail call i32 @putchar(i32 noundef %74) #26
  %76 = icmp ugt ptr %72, %68
  br i1 %76, label %77, label %70, !llvm.loop !192

77:                                               ; preds = %70, %66, %6, %4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #17

; Function Attrs: nofree nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @verify(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3, ptr noundef %4) unnamed_addr #18 {
  %6 = alloca [256 x i32], align 16
  %7 = alloca [256 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %6) #24
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %7) #24
  %8 = sext i32 %1 to i64
  %9 = getelementptr inbounds i8, ptr %4, i64 %8
  %10 = icmp slt i32 %0, -1
  br i1 %10, label %14, label %11

11:                                               ; preds = %5
  %12 = add nsw i32 %0, 2
  %13 = zext i32 %12 to i64
  br label %20

14:                                               ; preds = %20, %5
  %15 = icmp sgt i32 %1, 0
  br i1 %15, label %16, label %196

16:                                               ; preds = %14
  %17 = add nsw i32 %0, 2
  %18 = load i8, ptr %4, align 1, !tbaa !13
  %19 = zext i32 %17 to i64
  br label %27

20:                                               ; preds = %20, %11
  %21 = phi i64 [ 0, %11 ], [ %25, %20 ]
  %22 = getelementptr inbounds [256 x i32], ptr %7, i64 0, i64 %21
  %23 = trunc i64 %21 to i32
  store i32 %23, ptr %22, align 4, !tbaa !7
  %24 = getelementptr inbounds [256 x i32], ptr %6, i64 0, i64 %21
  store i32 %23, ptr %24, align 4, !tbaa !7
  %25 = add nuw nsw i64 %21, 1
  %26 = icmp eq i64 %25, %13
  br i1 %26, label %14, label %20, !llvm.loop !193

27:                                               ; preds = %193, %16
  %28 = phi i8 [ %18, %16 ], [ %182, %193 ]
  %29 = phi ptr [ %4, %16 ], [ %142, %193 ]
  %30 = phi i32 [ %2, %16 ], [ %194, %193 ]
  %31 = icmp slt i32 %30, 1
  br i1 %31, label %56, label %32

32:                                               ; preds = %27
  %33 = add nuw i32 %30, 1
  %34 = zext i32 %33 to i64
  br label %35

35:                                               ; preds = %51, %32
  %36 = phi i64 [ 1, %32 ], [ %54, %51 ]
  %37 = add nsw i64 %36, -1
  %38 = getelementptr inbounds [256 x i32], ptr %7, i64 0, i64 %37
  %39 = load i32, ptr %38, align 4, !tbaa !7
  %40 = getelementptr inbounds i8, ptr %3, i64 %37
  %41 = load i8, ptr %40, align 1, !tbaa !13
  %42 = icmp eq i8 %41, %28
  br i1 %42, label %51, label %43

43:                                               ; preds = %35
  %44 = getelementptr inbounds [256 x i32], ptr %7, i64 0, i64 %36
  %45 = load i32, ptr %44, align 4, !tbaa !7
  %46 = tail call i32 @llvm.smin.i32(i32 %45, i32 %39)
  %47 = getelementptr inbounds [256 x i32], ptr %6, i64 0, i64 %37
  %48 = load i32, ptr %47, align 4, !tbaa !7
  %49 = tail call i32 @llvm.smin.i32(i32 %48, i32 %46)
  %50 = add nsw i32 %49, 1
  br label %51

51:                                               ; preds = %43, %35
  %52 = phi i32 [ %39, %35 ], [ %50, %43 ]
  %53 = getelementptr inbounds [256 x i32], ptr %6, i64 0, i64 %36
  store i32 %52, ptr %53, align 4, !tbaa !7
  %54 = add nuw nsw i64 %36, 1
  %55 = icmp eq i64 %54, %34
  br i1 %55, label %56, label %35, !llvm.loop !194

56:                                               ; preds = %51, %27
  %57 = sext i32 %30 to i64
  %58 = getelementptr inbounds i8, ptr %3, i64 %57
  %59 = load i8, ptr %58, align 1, !tbaa !13
  %60 = getelementptr inbounds i8, ptr %29, i64 1
  %61 = icmp eq i8 %59, %28
  br i1 %61, label %65, label %62

62:                                               ; preds = %56
  %63 = getelementptr inbounds [256 x i32], ptr %6, i64 0, i64 %57
  %64 = load i32, ptr %63, align 4, !tbaa !7
  br label %71

65:                                               ; preds = %56
  %66 = getelementptr inbounds [256 x i32], ptr %7, i64 0, i64 %57
  %67 = load i32, ptr %66, align 4, !tbaa !7
  %68 = add nsw i32 %30, 1
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [256 x i32], ptr %6, i64 0, i64 %69
  store i32 %67, ptr %70, align 4, !tbaa !7
  br label %71

71:                                               ; preds = %65, %62
  %72 = phi i32 [ %67, %65 ], [ %64, %62 ]
  %73 = phi i32 [ %68, %65 ], [ %30, %62 ]
  %74 = icmp slt i32 %72, %2
  br i1 %74, label %75, label %81

75:                                               ; preds = %71
  %76 = add nsw i32 %73, 1
  %77 = add nsw i32 %72, 1
  %78 = add nsw i32 %73, 2
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds [256 x i32], ptr %6, i64 0, i64 %79
  store i32 %77, ptr %80, align 4, !tbaa !7
  br label %81

81:                                               ; preds = %75, %71
  %82 = phi i32 [ %76, %75 ], [ %73, %71 ]
  %83 = sext i32 %82 to i64
  br label %84

84:                                               ; preds = %84, %81
  %85 = phi i64 [ %89, %84 ], [ %83, %81 ]
  %86 = getelementptr inbounds [256 x i32], ptr %6, i64 0, i64 %85
  %87 = load i32, ptr %86, align 4, !tbaa !7
  %88 = icmp sgt i32 %87, %2
  %89 = add i64 %85, -1
  br i1 %88, label %84, label %90, !llvm.loop !195

90:                                               ; preds = %84
  %.lcssa = phi i64 [ %85, %84 ]
  %91 = trunc i64 %.lcssa to i32
  %92 = icmp slt i32 %91, %0
  br i1 %92, label %99, label %93

93:                                               ; preds = %90
  %.lcssa2 = phi ptr [ %60, %90 ]
  %94 = ptrtoint ptr %.lcssa2 to i64
  %95 = ptrtoint ptr %4 to i64
  %96 = xor i64 %95, -1
  %97 = add i64 %94, %96
  %98 = trunc i64 %97 to i32
  br label %196

99:                                               ; preds = %90
  %100 = load i8, ptr %60, align 1, !tbaa !13
  %101 = icmp ne i8 %100, 10
  %102 = or i1 %10, %101
  %103 = select i1 %101, i32 %91, i32 %2
  br i1 %102, label %111, label %104

104:                                              ; preds = %104, %99
  %105 = phi i64 [ %109, %104 ], [ 0, %99 ]
  %106 = getelementptr inbounds [256 x i32], ptr %7, i64 0, i64 %105
  %107 = trunc i64 %105 to i32
  store i32 %107, ptr %106, align 4, !tbaa !7
  %108 = getelementptr inbounds [256 x i32], ptr %6, i64 0, i64 %105
  store i32 %107, ptr %108, align 4, !tbaa !7
  %109 = add nuw nsw i64 %105, 1
  %110 = icmp eq i64 %109, %19
  br i1 %110, label %111, label %104, !llvm.loop !196

111:                                              ; preds = %104, %99
  %112 = phi i32 [ %103, %99 ], [ %2, %104 ]
  %113 = icmp slt i32 %112, 1
  br i1 %113, label %138, label %114

114:                                              ; preds = %111
  %115 = add nuw i32 %112, 1
  %116 = zext i32 %115 to i64
  br label %117

117:                                              ; preds = %133, %114
  %118 = phi i64 [ 1, %114 ], [ %136, %133 ]
  %119 = add nsw i64 %118, -1
  %120 = getelementptr inbounds [256 x i32], ptr %6, i64 0, i64 %119
  %121 = load i32, ptr %120, align 4, !tbaa !7
  %122 = getelementptr inbounds i8, ptr %3, i64 %119
  %123 = load i8, ptr %122, align 1, !tbaa !13
  %124 = icmp eq i8 %123, %100
  br i1 %124, label %133, label %125

125:                                              ; preds = %117
  %126 = getelementptr inbounds [256 x i32], ptr %6, i64 0, i64 %118
  %127 = load i32, ptr %126, align 4, !tbaa !7
  %128 = tail call i32 @llvm.smin.i32(i32 %127, i32 %121)
  %129 = getelementptr inbounds [256 x i32], ptr %7, i64 0, i64 %119
  %130 = load i32, ptr %129, align 4, !tbaa !7
  %131 = tail call i32 @llvm.smin.i32(i32 %130, i32 %128)
  %132 = add nsw i32 %131, 1
  br label %133

133:                                              ; preds = %125, %117
  %134 = phi i32 [ %121, %117 ], [ %132, %125 ]
  %135 = getelementptr inbounds [256 x i32], ptr %7, i64 0, i64 %118
  store i32 %134, ptr %135, align 4, !tbaa !7
  %136 = add nuw nsw i64 %118, 1
  %137 = icmp eq i64 %136, %116
  br i1 %137, label %138, label %117, !llvm.loop !197

138:                                              ; preds = %133, %111
  %139 = sext i32 %112 to i64
  %140 = getelementptr inbounds i8, ptr %3, i64 %139
  %141 = load i8, ptr %140, align 1, !tbaa !13
  %142 = getelementptr inbounds i8, ptr %29, i64 2
  %143 = icmp eq i8 %141, %100
  br i1 %143, label %147, label %144

144:                                              ; preds = %138
  %145 = getelementptr inbounds [256 x i32], ptr %7, i64 0, i64 %139
  %146 = load i32, ptr %145, align 4, !tbaa !7
  br label %153

147:                                              ; preds = %138
  %148 = getelementptr inbounds [256 x i32], ptr %6, i64 0, i64 %139
  %149 = load i32, ptr %148, align 4, !tbaa !7
  %150 = add nsw i32 %112, 1
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds [256 x i32], ptr %7, i64 0, i64 %151
  store i32 %149, ptr %152, align 4, !tbaa !7
  br label %153

153:                                              ; preds = %147, %144
  %154 = phi i32 [ %149, %147 ], [ %146, %144 ]
  %155 = phi i32 [ %150, %147 ], [ %112, %144 ]
  %156 = icmp slt i32 %154, %2
  br i1 %156, label %157, label %163

157:                                              ; preds = %153
  %158 = add nsw i32 %155, 1
  %159 = add nsw i32 %154, 1
  %160 = add nsw i32 %155, 2
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds [256 x i32], ptr %7, i64 0, i64 %161
  store i32 %159, ptr %162, align 4, !tbaa !7
  br label %163

163:                                              ; preds = %157, %153
  %164 = phi i32 [ %158, %157 ], [ %155, %153 ]
  %165 = sext i32 %164 to i64
  br label %166

166:                                              ; preds = %166, %163
  %167 = phi i64 [ %171, %166 ], [ %165, %163 ]
  %168 = getelementptr inbounds [256 x i32], ptr %7, i64 0, i64 %167
  %169 = load i32, ptr %168, align 4, !tbaa !7
  %170 = icmp sgt i32 %169, %2
  %171 = add i64 %167, -1
  br i1 %170, label %166, label %172, !llvm.loop !198

172:                                              ; preds = %166
  %.lcssa1 = phi i64 [ %167, %166 ]
  %173 = trunc i64 %.lcssa1 to i32
  %174 = icmp slt i32 %173, %0
  br i1 %174, label %181, label %175

175:                                              ; preds = %172
  %.lcssa4 = phi ptr [ %142, %172 ]
  %176 = ptrtoint ptr %.lcssa4 to i64
  %177 = ptrtoint ptr %4 to i64
  %178 = xor i64 %177, -1
  %179 = add i64 %176, %178
  %180 = trunc i64 %179 to i32
  br label %196

181:                                              ; preds = %172
  %182 = load i8, ptr %142, align 1, !tbaa !13
  %183 = icmp ne i8 %182, 10
  %184 = or i1 %10, %183
  %185 = select i1 %183, i32 %173, i32 %2
  br i1 %184, label %193, label %186

186:                                              ; preds = %186, %181
  %187 = phi i64 [ %191, %186 ], [ 0, %181 ]
  %188 = getelementptr inbounds [256 x i32], ptr %7, i64 0, i64 %187
  %189 = trunc i64 %187 to i32
  store i32 %189, ptr %188, align 4, !tbaa !7
  %190 = getelementptr inbounds [256 x i32], ptr %6, i64 0, i64 %187
  store i32 %189, ptr %190, align 4, !tbaa !7
  %191 = add nuw nsw i64 %187, 1
  %192 = icmp eq i64 %191, %19
  br i1 %192, label %193, label %186, !llvm.loop !199

193:                                              ; preds = %186, %181
  %194 = phi i32 [ %185, %181 ], [ %2, %186 ]
  %195 = icmp ult ptr %142, %9
  br i1 %195, label %27, label %196, !llvm.loop !200

196:                                              ; preds = %193, %175, %93, %14
  %197 = phi i32 [ %98, %93 ], [ %180, %175 ], [ 0, %14 ], [ 0, %193 ]
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %6) #24
  ret i32 %197
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #17

; Function Attrs: nofree nounwind optsize uwtable
define internal fastcc void @s_output(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) unnamed_addr #14 {
  %3 = load i1, ptr @SILENT, align 4
  br i1 %3, label %51, label %4

4:                                                ; preds = %2
  %5 = load i1, ptr @COUNT, align 4
  br i1 %5, label %6, label %19

6:                                                ; preds = %4
  %7 = load i32, ptr %1, align 4, !tbaa !7
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds i8, ptr %0, i64 %8
  %10 = load i8, ptr %9, align 1, !tbaa !13
  %11 = icmp eq i8 %10, 10
  br i1 %11, label %51, label %12

12:                                               ; preds = %12, %6
  %13 = phi i64 [ %14, %12 ], [ %8, %6 ]
  %14 = add i64 %13, 1
  %15 = trunc i64 %14 to i32
  store i32 %15, ptr %1, align 4, !tbaa !7
  %16 = getelementptr inbounds i8, ptr %0, i64 %14
  %17 = load i8, ptr %16, align 1, !tbaa !13
  %18 = icmp eq i8 %17, 10
  br i1 %18, label %51, label %12, !llvm.loop !201

19:                                               ; preds = %4
  %20 = load i1, ptr @FNAME, align 4
  br i1 %20, label %21, label %23

21:                                               ; preds = %19
  %22 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.96, ptr noundef nonnull @CurrentFileName) #26
  br label %23

23:                                               ; preds = %21, %19
  %24 = load i32, ptr %1, align 4, !tbaa !7
  %25 = sext i32 %24 to i64
  br label %26

26:                                               ; preds = %26, %23
  %27 = phi i64 [ %28, %26 ], [ %25, %23 ]
  %28 = add nsw i64 %27, -1
  %29 = getelementptr inbounds i8, ptr %0, i64 %28
  %30 = load i8, ptr %29, align 1, !tbaa !13
  %31 = icmp eq i8 %30, 10
  br i1 %31, label %32, label %26, !llvm.loop !202

32:                                               ; preds = %26
  %.lcssa = phi i64 [ %27, %26 ]
  %33 = shl i64 %.lcssa, 32
  %34 = ashr exact i64 %33, 32
  %35 = getelementptr inbounds i8, ptr %0, i64 %34
  %36 = load i8, ptr %35, align 1, !tbaa !13
  %37 = icmp eq i8 %36, 10
  br i1 %37, label %47, label %38

38:                                               ; preds = %38, %32
  %39 = phi i64 [ %43, %38 ], [ %.lcssa, %32 ]
  %40 = phi i8 [ %45, %38 ], [ %36, %32 ]
  %41 = zext i8 %40 to i32
  %42 = tail call i32 @putchar(i32 noundef %41) #26
  %43 = add i64 %39, 1
  %44 = getelementptr inbounds i8, ptr %0, i64 %43
  %45 = load i8, ptr %44, align 1, !tbaa !13
  %46 = icmp eq i8 %45, 10
  br i1 %46, label %47, label %38, !llvm.loop !203

47:                                               ; preds = %38, %32
  %48 = phi i64 [ %.lcssa, %32 ], [ %43, %38 ]
  %49 = trunc i64 %48 to i32
  %50 = tail call i32 @putchar(i32 noundef 10) #26
  store i32 %49, ptr %1, align 4, !tbaa !7
  br label %51

51:                                               ; preds = %47, %12, %6, %2
  ret void
}

; Function Attrs: nofree nounwind optsize uwtable
define internal fastcc void @m_short(ptr noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #14 {
  %4 = sext i32 %2 to i64
  %5 = getelementptr inbounds i8, ptr %0, i64 %4
  %6 = sext i32 %1 to i64
  %7 = getelementptr inbounds i8, ptr %0, i64 %6
  %8 = getelementptr inbounds i8, ptr %7, i64 1
  %9 = icmp sgt i32 %1, %2
  br i1 %9, label %135, label %10

10:                                               ; preds = %130, %3
  %11 = phi ptr [ %133, %130 ], [ %7, %3 ]
  %12 = phi ptr [ %132, %130 ], [ %8, %3 ]
  %13 = load i8, ptr %11, align 1, !tbaa !13
  %14 = zext i8 %13 to i64
  %15 = getelementptr inbounds [8192 x ptr], ptr @HASH, i64 0, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !14
  %17 = icmp eq ptr %16, null
  br i1 %17, label %130, label %18

18:                                               ; preds = %10
  %19 = load i32, ptr @num_of_matched, align 4, !tbaa !7
  %20 = load i1, ptr @FILENAMEONLY, align 4
  %21 = load i1, ptr @SILENT, align 4
  %22 = select i1 %20, i1 true, i1 %21
  %23 = load i1, ptr @COUNT, align 4
  br label %24

24:                                               ; preds = %125, %18
  %25 = phi i8 [ %126, %125 ], [ %13, %18 ]
  %26 = phi i32 [ %127, %125 ], [ %19, %18 ]
  %27 = phi ptr [ %31, %125 ], [ %16, %18 ]
  %28 = phi ptr [ %128, %125 ], [ %11, %18 ]
  %29 = load i32, ptr %27, align 8, !tbaa !34
  %30 = getelementptr inbounds %struct.pnode, ptr %27, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !36
  %32 = sext i32 %29 to i64
  %33 = getelementptr inbounds [30000 x ptr], ptr @patt, i64 0, i64 %32
  %34 = load ptr, ptr %33, align 8, !tbaa !14
  %35 = load i8, ptr %34, align 1, !tbaa !13
  %36 = zext i8 %35 to i64
  %37 = getelementptr inbounds [256 x i8], ptr @tr, i64 0, i64 %36
  %38 = load i8, ptr %37, align 1, !tbaa !13
  %39 = zext i8 %25 to i64
  %40 = getelementptr inbounds [256 x i8], ptr @tr, i64 0, i64 %39
  %41 = load i8, ptr %40, align 1, !tbaa !13
  %42 = icmp eq i8 %38, %41
  br i1 %42, label %43, label %60

43:                                               ; preds = %43, %24
  %44 = phi i64 [ %47, %43 ], [ 0, %24 ]
  %45 = phi ptr [ %46, %43 ], [ %28, %24 ]
  %46 = getelementptr inbounds i8, ptr %45, i64 1
  %47 = add nuw nsw i64 %44, 1
  %48 = getelementptr inbounds i8, ptr %34, i64 %47
  %49 = load i8, ptr %48, align 1, !tbaa !13
  %50 = zext i8 %49 to i64
  %51 = getelementptr inbounds [256 x i8], ptr @tr, i64 0, i64 %50
  %52 = load i8, ptr %51, align 1, !tbaa !13
  %53 = load i8, ptr %46, align 1, !tbaa !13
  %54 = zext i8 %53 to i64
  %55 = getelementptr inbounds [256 x i8], ptr @tr, i64 0, i64 %54
  %56 = load i8, ptr %55, align 1, !tbaa !13
  %57 = icmp eq i8 %52, %56
  br i1 %57, label %43, label %58, !llvm.loop !204

58:                                               ; preds = %43
  %.lcssa = phi i64 [ %47, %43 ]
  %59 = trunc i64 %.lcssa to i32
  br label %60

60:                                               ; preds = %58, %24
  %61 = phi i32 [ 0, %24 ], [ %59, %58 ]
  %62 = getelementptr inbounds [30000 x i8], ptr @pat_len, i64 0, i64 %32
  %63 = load i8, ptr %62, align 1, !tbaa !13
  %64 = zext i8 %63 to i32
  %65 = icmp ult i32 %61, %64
  br i1 %65, label %125, label %66

66:                                               ; preds = %60
  %67 = icmp ult ptr %28, %5
  br i1 %67, label %68, label %150

68:                                               ; preds = %66
  %69 = add nsw i32 %26, 1
  store i32 %69, ptr @num_of_matched, align 4, !tbaa !7
  br i1 %22, label %150, label %70

70:                                               ; preds = %68
  br i1 %23, label %71, label %76

71:                                               ; preds = %71, %70
  %72 = phi ptr [ %75, %71 ], [ %28, %70 ]
  %73 = load i8, ptr %72, align 1, !tbaa !13
  %74 = icmp eq i8 %73, 10
  %75 = getelementptr inbounds i8, ptr %72, i64 1
  br i1 %74, label %125, label %71, !llvm.loop !205

76:                                               ; preds = %70
  %.lcssa1 = phi ptr [ %28, %70 ]
  %77 = load i1, ptr @FNAME, align 4
  br i1 %77, label %78, label %80

78:                                               ; preds = %76
  %79 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.96, ptr noundef nonnull @CurrentFileName) #26
  br label %80

80:                                               ; preds = %78, %76
  %81 = load i1, ptr @INVERSE, align 4
  br i1 %81, label %101, label %82

82:                                               ; preds = %82, %80
  %83 = phi ptr [ %84, %82 ], [ %.lcssa1, %80 ]
  %84 = getelementptr inbounds i8, ptr %83, i64 -1
  %85 = load i8, ptr %84, align 1, !tbaa !13
  %86 = icmp eq i8 %85, 10
  br i1 %86, label %87, label %82, !llvm.loop !206

87:                                               ; preds = %82
  %.lcssa2 = phi ptr [ %83, %82 ]
  %88 = load i8, ptr %.lcssa2, align 1, !tbaa !13
  %89 = icmp eq i8 %88, 10
  br i1 %89, label %98, label %90

90:                                               ; preds = %90, %87
  %91 = phi i8 [ %96, %90 ], [ %88, %87 ]
  %92 = phi ptr [ %95, %90 ], [ %.lcssa2, %87 ]
  %93 = zext i8 %91 to i32
  %94 = tail call i32 @putchar(i32 noundef %93) #26
  %95 = getelementptr inbounds i8, ptr %92, i64 1
  %96 = load i8, ptr %95, align 1, !tbaa !13
  %97 = icmp eq i8 %96, 10
  br i1 %97, label %98, label %90, !llvm.loop !207

98:                                               ; preds = %90, %87
  %99 = phi ptr [ %.lcssa2, %87 ], [ %95, %90 ]
  %100 = tail call i32 @putchar(i32 10)
  br label %130

101:                                              ; preds = %101, %80
  %102 = phi ptr [ %103, %101 ], [ %.lcssa1, %80 ]
  %103 = getelementptr inbounds i8, ptr %102, i64 -1
  %104 = load i8, ptr %103, align 1, !tbaa !13
  %105 = icmp eq i8 %104, 10
  br i1 %105, label %106, label %101, !llvm.loop !208

106:                                              ; preds = %101
  %.lcssa3 = phi ptr [ %103, %101 ]
  %107 = icmp ult ptr %12, %.lcssa3
  br i1 %107, label %108, label %117

108:                                              ; preds = %108, %106
  %109 = phi ptr [ %110, %108 ], [ %12, %106 ]
  %110 = getelementptr inbounds i8, ptr %109, i64 1
  %111 = load i8, ptr %109, align 1, !tbaa !13
  %112 = zext i8 %111 to i32
  %113 = tail call i32 @putchar(i32 noundef %112) #26
  %114 = icmp ult ptr %110, %.lcssa3
  br i1 %114, label %108, label %115, !llvm.loop !209

115:                                              ; preds = %108
  %116 = tail call i32 @putchar(i32 noundef 10) #26
  br label %117

117:                                              ; preds = %115, %106
  br label %118

118:                                              ; preds = %118, %117
  %119 = phi ptr [ %120, %118 ], [ %.lcssa3, %117 ]
  %120 = getelementptr inbounds i8, ptr %119, i64 1
  %121 = load i8, ptr %120, align 1, !tbaa !13
  %122 = icmp eq i8 %121, 10
  br i1 %122, label %123, label %118, !llvm.loop !210

123:                                              ; preds = %118
  %.lcssa5 = phi ptr [ %119, %118 ]
  %.lcssa4 = phi ptr [ %120, %118 ]
  %124 = getelementptr inbounds i8, ptr %.lcssa5, i64 2
  br label %130

125:                                              ; preds = %71, %60
  %126 = phi i8 [ %25, %60 ], [ 10, %71 ]
  %127 = phi i32 [ %26, %60 ], [ %69, %71 ]
  %128 = phi ptr [ %28, %60 ], [ %72, %71 ]
  %129 = icmp eq ptr %31, null
  br i1 %129, label %130, label %24, !llvm.loop !211

130:                                              ; preds = %125, %123, %98, %10
  %131 = phi ptr [ %11, %10 ], [ %99, %98 ], [ %.lcssa4, %123 ], [ %128, %125 ]
  %132 = phi ptr [ %12, %10 ], [ %12, %98 ], [ %124, %123 ], [ %12, %125 ]
  %133 = getelementptr inbounds i8, ptr %131, i64 1
  %134 = icmp ugt ptr %133, %5
  br i1 %134, label %135, label %10, !llvm.loop !212

135:                                              ; preds = %130, %3
  %136 = phi ptr [ %8, %3 ], [ %132, %130 ]
  %137 = load i1, ptr @INVERSE, align 4
  %138 = xor i1 %137, true
  %139 = load i1, ptr @COUNT, align 4
  %140 = select i1 %138, i1 true, i1 %139
  %141 = icmp ugt ptr %136, %5
  %142 = select i1 %140, i1 true, i1 %141
  br i1 %142, label %150, label %143

143:                                              ; preds = %143, %135
  %144 = phi ptr [ %145, %143 ], [ %136, %135 ]
  %145 = getelementptr inbounds i8, ptr %144, i64 1
  %146 = load i8, ptr %144, align 1, !tbaa !13
  %147 = zext i8 %146 to i32
  %148 = tail call i32 @putchar(i32 noundef %147) #26
  %149 = icmp ugt ptr %145, %5
  br i1 %149, label %150, label %143, !llvm.loop !213

150:                                              ; preds = %143, %135, %68, %66
  ret void
}

; Function Attrs: nofree nounwind optsize uwtable
define internal fastcc void @monkey1(ptr noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #14 {
  %4 = load i32, ptr @p_size, align 4, !tbaa !7
  %5 = sext i32 %2 to i64
  %6 = getelementptr inbounds i8, ptr %0, i64 %5
  %7 = add nsw i32 %4, -1
  %8 = sext i32 %1 to i64
  %9 = getelementptr inbounds i8, ptr %0, i64 %8
  %10 = getelementptr inbounds i8, ptr %9, i64 1
  %11 = sext i32 %7 to i64
  %12 = getelementptr inbounds i8, ptr %9, i64 %11
  %13 = icmp ugt ptr %12, %6
  br i1 %13, label %194, label %14

14:                                               ; preds = %3
  %15 = load i32, ptr @LONG, align 4, !tbaa !7
  %16 = icmp eq i32 %15, 0
  %17 = sub nsw i64 0, %11
  %18 = trunc i32 %7 to i8
  %19 = tail call i32 @llvm.umax.i32(i32 %4, i32 1)
  %20 = zext i32 %19 to i64
  br label %21

21:                                               ; preds = %187, %14
  %22 = phi ptr [ %10, %14 ], [ %190, %187 ]
  %23 = phi ptr [ %12, %14 ], [ %192, %187 ]
  %24 = load i8, ptr %23, align 1, !tbaa !13
  %25 = zext i8 %24 to i64
  %26 = getelementptr inbounds [256 x i8], ptr @tr1, i64 0, i64 %25
  %27 = load i8, ptr %26, align 1, !tbaa !13
  %28 = zext i8 %27 to i32
  %29 = shl nuw nsw i32 %28, 4
  %30 = getelementptr inbounds i8, ptr %23, i64 -1
  %31 = load i8, ptr %30, align 1, !tbaa !13
  %32 = zext i8 %31 to i64
  %33 = getelementptr inbounds [256 x i8], ptr @tr1, i64 0, i64 %32
  %34 = load i8, ptr %33, align 1, !tbaa !13
  %35 = zext i8 %34 to i32
  %36 = add nuw nsw i32 %29, %35
  br i1 %16, label %46, label %37

37:                                               ; preds = %21
  %38 = shl nuw nsw i32 %36, 4
  %39 = getelementptr inbounds i8, ptr %23, i64 -2
  %40 = load i8, ptr %39, align 1, !tbaa !13
  %41 = zext i8 %40 to i64
  %42 = getelementptr inbounds [256 x i8], ptr @tr1, i64 0, i64 %41
  %43 = load i8, ptr %42, align 1, !tbaa !13
  %44 = zext i8 %43 to i32
  %45 = add nuw nsw i32 %38, %44
  br label %46

46:                                               ; preds = %37, %21
  %47 = phi i32 [ %45, %37 ], [ %36, %21 ]
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds [4096 x i8], ptr @SHIFT1, i64 0, i64 %48
  %50 = load i8, ptr %49, align 1, !tbaa !13
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %52, label %187

52:                                               ; preds = %52, %46
  %53 = phi i64 [ %64, %52 ], [ 0, %46 ]
  %54 = phi i32 [ %63, %52 ], [ 0, %46 ]
  %55 = shl i32 %54, 4
  %56 = sub nsw i64 0, %53
  %57 = getelementptr inbounds i8, ptr %23, i64 %56
  %58 = load i8, ptr %57, align 1, !tbaa !13
  %59 = zext i8 %58 to i64
  %60 = getelementptr inbounds [256 x i8], ptr @tr1, i64 0, i64 %59
  %61 = load i8, ptr %60, align 1, !tbaa !13
  %62 = zext i8 %61 to i32
  %63 = add i32 %55, %62
  %64 = add nuw nsw i64 %53, 1
  %65 = icmp eq i64 %64, %20
  br i1 %65, label %66, label %52, !llvm.loop !214

66:                                               ; preds = %52
  %.lcssa = phi i32 [ %63, %52 ]
  %67 = and i32 %.lcssa, 8191
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds [8192 x ptr], ptr @HASH, i64 0, i64 %68
  %70 = load ptr, ptr %69, align 8, !tbaa !14
  %71 = icmp eq ptr %70, null
  br i1 %71, label %187, label %72

72:                                               ; preds = %66
  %73 = getelementptr inbounds i8, ptr %23, i64 %17
  %74 = load i8, ptr %73, align 1, !tbaa !13
  %75 = zext i8 %74 to i64
  %76 = getelementptr inbounds [256 x i8], ptr @tr, i64 0, i64 %75
  %77 = load i8, ptr %76, align 1, !tbaa !13
  br label %78

78:                                               ; preds = %185, %72
  %79 = phi ptr [ %82, %185 ], [ %70, %72 ]
  %80 = load i32, ptr %79, align 8, !tbaa !34
  %81 = getelementptr inbounds %struct.pnode, ptr %79, i64 0, i32 1
  %82 = load ptr, ptr %81, align 8, !tbaa !36
  %83 = sext i32 %80 to i64
  %84 = getelementptr inbounds [30000 x ptr], ptr @patt, i64 0, i64 %83
  %85 = load ptr, ptr %84, align 8, !tbaa !14
  %86 = load i8, ptr %85, align 1, !tbaa !13
  %87 = zext i8 %86 to i64
  %88 = getelementptr inbounds [256 x i8], ptr @tr, i64 0, i64 %87
  %89 = load i8, ptr %88, align 1, !tbaa !13
  %90 = icmp eq i8 %89, %77
  br i1 %90, label %91, label %108

91:                                               ; preds = %91, %78
  %92 = phi i64 [ %95, %91 ], [ 0, %78 ]
  %93 = phi ptr [ %94, %91 ], [ %73, %78 ]
  %94 = getelementptr inbounds i8, ptr %93, i64 1
  %95 = add nuw nsw i64 %92, 1
  %96 = getelementptr inbounds i8, ptr %85, i64 %95
  %97 = load i8, ptr %96, align 1, !tbaa !13
  %98 = zext i8 %97 to i64
  %99 = getelementptr inbounds [256 x i8], ptr @tr, i64 0, i64 %98
  %100 = load i8, ptr %99, align 1, !tbaa !13
  %101 = load i8, ptr %94, align 1, !tbaa !13
  %102 = zext i8 %101 to i64
  %103 = getelementptr inbounds [256 x i8], ptr @tr, i64 0, i64 %102
  %104 = load i8, ptr %103, align 1, !tbaa !13
  %105 = icmp eq i8 %100, %104
  br i1 %105, label %91, label %106, !llvm.loop !215

106:                                              ; preds = %91
  %.lcssa1 = phi i64 [ %95, %91 ]
  %107 = trunc i64 %.lcssa1 to i32
  br label %108

108:                                              ; preds = %106, %78
  %109 = phi i32 [ 0, %78 ], [ %107, %106 ]
  %110 = icmp slt i32 %109, %4
  br i1 %110, label %185, label %111

111:                                              ; preds = %108
  %112 = getelementptr inbounds [30000 x i8], ptr @pat_len, i64 0, i64 %83
  %113 = load i8, ptr %112, align 1, !tbaa !13
  %114 = zext i8 %113 to i32
  %115 = icmp ult i32 %109, %114
  br i1 %115, label %185, label %116

116:                                              ; preds = %111
  %117 = icmp ugt ptr %23, %6
  br i1 %117, label %209, label %118

118:                                              ; preds = %116
  %119 = load i32, ptr @num_of_matched, align 4, !tbaa !7
  %120 = add nsw i32 %119, 1
  store i32 %120, ptr @num_of_matched, align 4, !tbaa !7
  %121 = load i1, ptr @FILENAMEONLY, align 4
  %122 = load i1, ptr @SILENT, align 4
  %123 = select i1 %121, i1 true, i1 %122
  br i1 %123, label %209, label %124

124:                                              ; preds = %118
  %125 = load i1, ptr @COUNT, align 4
  br i1 %125, label %126, label %131

126:                                              ; preds = %126, %124
  %127 = phi ptr [ %130, %126 ], [ %23, %124 ]
  %128 = load i8, ptr %127, align 1, !tbaa !13
  %129 = icmp eq i8 %128, 10
  %130 = getelementptr inbounds i8, ptr %127, i64 1
  br i1 %129, label %187, label %126, !llvm.loop !216

131:                                              ; preds = %124
  %132 = load i1, ptr @INVERSE, align 4
  %133 = load i1, ptr @FNAME, align 4
  br i1 %132, label %157, label %134

134:                                              ; preds = %131
  br i1 %133, label %135, label %137

135:                                              ; preds = %134
  %136 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.96, ptr noundef nonnull @CurrentFileName) #26
  br label %137

137:                                              ; preds = %135, %134
  br label %138

138:                                              ; preds = %138, %137
  %139 = phi ptr [ %140, %138 ], [ %23, %137 ]
  %140 = getelementptr inbounds i8, ptr %139, i64 -1
  %141 = load i8, ptr %140, align 1, !tbaa !13
  %142 = icmp eq i8 %141, 10
  br i1 %142, label %143, label %138, !llvm.loop !217

143:                                              ; preds = %138
  %.lcssa2 = phi ptr [ %139, %138 ]
  %144 = load i8, ptr %.lcssa2, align 1, !tbaa !13
  %145 = icmp eq i8 %144, 10
  br i1 %145, label %154, label %146

146:                                              ; preds = %146, %143
  %147 = phi i8 [ %152, %146 ], [ %144, %143 ]
  %148 = phi ptr [ %151, %146 ], [ %.lcssa2, %143 ]
  %149 = zext i8 %147 to i32
  %150 = tail call i32 @putchar(i32 noundef %149) #26
  %151 = getelementptr inbounds i8, ptr %148, i64 1
  %152 = load i8, ptr %151, align 1, !tbaa !13
  %153 = icmp eq i8 %152, 10
  br i1 %153, label %154, label %146, !llvm.loop !218

154:                                              ; preds = %146, %143
  %155 = phi ptr [ %.lcssa2, %143 ], [ %151, %146 ]
  %156 = tail call i32 @putchar(i32 10)
  br label %187

157:                                              ; preds = %131
  br i1 %133, label %158, label %160

158:                                              ; preds = %157
  %159 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.96, ptr noundef nonnull @CurrentFileName) #26
  br label %160

160:                                              ; preds = %158, %157
  br label %161

161:                                              ; preds = %161, %160
  %162 = phi ptr [ %163, %161 ], [ %23, %160 ]
  %163 = getelementptr inbounds i8, ptr %162, i64 -1
  %164 = load i8, ptr %163, align 1, !tbaa !13
  %165 = icmp eq i8 %164, 10
  br i1 %165, label %166, label %161, !llvm.loop !219

166:                                              ; preds = %161
  %.lcssa3 = phi ptr [ %163, %161 ]
  %167 = icmp ult ptr %22, %.lcssa3
  br i1 %167, label %168, label %177

168:                                              ; preds = %168, %166
  %169 = phi ptr [ %170, %168 ], [ %22, %166 ]
  %170 = getelementptr inbounds i8, ptr %169, i64 1
  %171 = load i8, ptr %169, align 1, !tbaa !13
  %172 = zext i8 %171 to i32
  %173 = tail call i32 @putchar(i32 noundef %172) #26
  %174 = icmp ult ptr %170, %.lcssa3
  br i1 %174, label %168, label %175, !llvm.loop !220

175:                                              ; preds = %168
  %176 = tail call i32 @putchar(i32 noundef 10) #26
  br label %177

177:                                              ; preds = %175, %166
  br label %178

178:                                              ; preds = %178, %177
  %179 = phi ptr [ %180, %178 ], [ %.lcssa3, %177 ]
  %180 = getelementptr inbounds i8, ptr %179, i64 1
  %181 = load i8, ptr %180, align 1, !tbaa !13
  %182 = icmp eq i8 %181, 10
  br i1 %182, label %183, label %178, !llvm.loop !221

183:                                              ; preds = %178
  %.lcssa5 = phi ptr [ %179, %178 ]
  %.lcssa4 = phi ptr [ %180, %178 ]
  %184 = getelementptr inbounds i8, ptr %.lcssa5, i64 2
  br label %187

185:                                              ; preds = %111, %108
  %186 = icmp eq ptr %82, null
  br i1 %186, label %187, label %78, !llvm.loop !222

187:                                              ; preds = %185, %183, %154, %126, %66, %46
  %188 = phi i8 [ %50, %46 ], [ 1, %66 ], [ %18, %183 ], [ %18, %154 ], [ %18, %126 ], [ 1, %185 ]
  %189 = phi ptr [ %23, %46 ], [ %23, %66 ], [ %.lcssa4, %183 ], [ %155, %154 ], [ %127, %126 ], [ %23, %185 ]
  %190 = phi ptr [ %22, %46 ], [ %22, %66 ], [ %184, %183 ], [ %22, %154 ], [ %22, %126 ], [ %22, %185 ]
  %191 = zext i8 %188 to i64
  %192 = getelementptr inbounds i8, ptr %189, i64 %191
  %193 = icmp ugt ptr %192, %6
  br i1 %193, label %194, label %21, !llvm.loop !223

194:                                              ; preds = %187, %3
  %195 = phi ptr [ %10, %3 ], [ %190, %187 ]
  %196 = load i1, ptr @INVERSE, align 4
  %197 = xor i1 %196, true
  %198 = load i1, ptr @COUNT, align 4
  %199 = select i1 %197, i1 true, i1 %198
  %200 = icmp ugt ptr %195, %6
  %201 = select i1 %199, i1 true, i1 %200
  br i1 %201, label %209, label %202

202:                                              ; preds = %202, %194
  %203 = phi ptr [ %204, %202 ], [ %195, %194 ]
  %204 = getelementptr inbounds i8, ptr %203, i64 1
  %205 = load i8, ptr %203, align 1, !tbaa !13
  %206 = zext i8 %205 to i32
  %207 = tail call i32 @putchar(i32 noundef %206) #26
  %208 = icmp ugt ptr %204, %6
  br i1 %208, label %209, label %202, !llvm.loop !224

209:                                              ; preds = %202, %194, %118, %116
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare ptr @__ctype_tolower_loc() local_unnamed_addr #10

; Function Attrs: nounwind optsize uwtable
define internal fastcc ptr @parse_re(ptr noundef %0, i16 noundef signext %1) unnamed_addr #12 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #24
  store ptr null, ptr %3, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #24
  %5 = icmp eq ptr %0, null
  br i1 %5, label %158, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %0, align 8, !tbaa !14
  %8 = icmp eq ptr %7, null
  br i1 %8, label %158, label %9

9:                                                ; preds = %157, %6
  %10 = call fastcc ptr @get_token(ptr noundef nonnull %0) #26
  %11 = icmp eq ptr %10, null
  br i1 %11, label %158, label %12

12:                                               ; preds = %9
  %13 = load i16, ptr %10, align 8, !tbaa !225
  %14 = sext i16 %13 to i32
  switch i32 %14, label %155 [
    i32 7, label %15
    i32 0, label %18
    i32 6, label %25
    i32 2, label %64
    i32 4, label %67
    i32 3, label %70
    i32 1, label %128
  ]

15:                                               ; preds = %12
  %.lcssa = phi i16 [ %13, %12 ]
  %16 = load ptr, ptr %0, align 8, !tbaa !14
  %17 = getelementptr inbounds i8, ptr %16, i64 -1
  store ptr %17, ptr %0, align 8, !tbaa !14
  br label %18

18:                                               ; preds = %15, %12
  %.lcssa1 = phi i16 [ %.lcssa, %15 ], [ %13, %12 ]
  %19 = icmp eq i16 %.lcssa1, %1
  br i1 %19, label %20, label %158

20:                                               ; preds = %18
  %21 = call fastcc ptr @cat2(ptr noundef nonnull %3) #26
  %22 = icmp eq ptr %21, null
  br i1 %22, label %158, label %23

23:                                               ; preds = %20
  %24 = load ptr, ptr %21, align 8, !tbaa !51
  br label %158

25:                                               ; preds = %12
  %26 = call fastcc ptr @parse_re(ptr noundef nonnull %0, i16 noundef signext 7) #26
  %27 = call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #31
  %28 = icmp eq ptr %27, null
  br i1 %28, label %158, label %29

29:                                               ; preds = %25
  %30 = load ptr, ptr %3, align 8, !tbaa !14
  %31 = getelementptr inbounds %struct.snode, ptr %27, i64 0, i32 2
  store ptr %30, ptr %31, align 8, !tbaa !49
  store ptr %26, ptr %27, align 8, !tbaa !51
  %32 = icmp eq ptr %30, null
  br i1 %32, label %37, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.snode, ptr %30, i64 0, i32 1
  %35 = load i32, ptr %34, align 8, !tbaa !227
  %36 = add nsw i32 %35, 1
  br label %37

37:                                               ; preds = %33, %29
  %38 = phi i32 [ %36, %33 ], [ 1, %29 ]
  %39 = getelementptr inbounds %struct.snode, ptr %27, i64 0, i32 1
  store i32 %38, ptr %39, align 8
  store ptr %27, ptr %3, align 8, !tbaa !14
  %40 = call fastcc ptr @get_token(ptr noundef nonnull %0) #26
  %41 = load i16, ptr %40, align 8, !tbaa !225
  %42 = icmp ne i16 %41, 7
  %43 = icmp eq ptr %26, null
  %44 = or i1 %43, %42
  br i1 %44, label %158, label %45

45:                                               ; preds = %37
  %46 = load ptr, ptr %3, align 8, !tbaa !14
  %47 = icmp eq ptr %46, null
  br i1 %47, label %157, label %48

48:                                               ; preds = %45
  %49 = getelementptr inbounds %struct.snode, ptr %46, i64 0, i32 1
  %50 = load i32, ptr %49, align 8, !tbaa !227
  %51 = icmp sgt i32 %50, 2
  br i1 %51, label %52, label %157

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.snode, ptr %46, i64 0, i32 2
  %54 = load ptr, ptr %53, align 8, !tbaa !49
  store ptr %54, ptr %4, align 8, !tbaa !14
  %55 = call fastcc ptr @cat2(ptr noundef nonnull %4) #26
  %56 = load ptr, ptr %3, align 8, !tbaa !14
  %57 = getelementptr inbounds %struct.snode, ptr %56, i64 0, i32 2
  store ptr %55, ptr %57, align 8, !tbaa !49
  %58 = icmp eq ptr %55, null
  br i1 %58, label %158, label %59

59:                                               ; preds = %52
  %60 = getelementptr inbounds %struct.snode, ptr %55, i64 0, i32 1
  %61 = load i32, ptr %60, align 8, !tbaa !227
  %62 = add nsw i32 %61, 1
  %63 = getelementptr inbounds %struct.snode, ptr %56, i64 0, i32 1
  store i32 %62, ptr %63, align 8, !tbaa !227
  br label %157

64:                                               ; preds = %12
  %65 = call fastcc ptr @wrap(ptr noundef nonnull %3, i16 noundef signext 2) #26
  %66 = icmp eq ptr %65, null
  br i1 %66, label %158, label %157

67:                                               ; preds = %12
  %68 = call fastcc ptr @wrap(ptr noundef nonnull %3, i16 noundef signext 4) #26
  %69 = icmp eq ptr %68, null
  br i1 %69, label %158, label %157

70:                                               ; preds = %12
  %71 = call fastcc ptr @cat2(ptr noundef nonnull %3) #26
  %72 = icmp eq ptr %71, null
  br i1 %72, label %158, label %73

73:                                               ; preds = %70
  %74 = call fastcc ptr @parse_re(ptr noundef nonnull %0, i16 noundef signext %1) #26
  %75 = icmp eq ptr %74, null
  br i1 %75, label %158, label %76

76:                                               ; preds = %73
  %77 = load ptr, ptr %3, align 8, !tbaa !14
  %78 = icmp eq ptr %77, null
  br i1 %78, label %158, label %79

79:                                               ; preds = %76
  %80 = call noalias dereferenceable_or_null(48) ptr @malloc(i64 noundef 48) #31
  %81 = icmp eq ptr %80, null
  br i1 %81, label %158, label %82

82:                                               ; preds = %79
  store i16 3, ptr %80, align 8, !tbaa !228
  %83 = load ptr, ptr %77, align 8, !tbaa !51
  %84 = getelementptr inbounds %struct.snode, ptr %77, i64 0, i32 2
  %85 = load ptr, ptr %84, align 8, !tbaa !49
  store ptr %85, ptr %3, align 8, !tbaa !14
  call void @free(ptr noundef nonnull %77) #25
  %86 = getelementptr inbounds %struct.rnode, ptr %80, i64 0, i32 1
  store ptr %83, ptr %86, align 8, !tbaa !13
  %87 = getelementptr inbounds %struct.rnode, ptr %80, i64 0, i32 1, i32 0, i32 1
  store ptr %74, ptr %87, align 8, !tbaa !13
  %88 = call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #31
  %89 = icmp eq ptr %88, null
  br i1 %89, label %158, label %90

90:                                               ; preds = %82
  %91 = load ptr, ptr %3, align 8, !tbaa !14
  %92 = getelementptr inbounds %struct.snode, ptr %88, i64 0, i32 2
  store ptr %91, ptr %92, align 8, !tbaa !49
  store ptr %80, ptr %88, align 8, !tbaa !51
  %93 = icmp eq ptr %91, null
  br i1 %93, label %98, label %94

94:                                               ; preds = %90
  %95 = getelementptr inbounds %struct.snode, ptr %91, i64 0, i32 1
  %96 = load i32, ptr %95, align 8, !tbaa !227
  %97 = add nsw i32 %96, 1
  br label %98

98:                                               ; preds = %94, %90
  %99 = phi i32 [ %97, %94 ], [ 1, %90 ]
  %100 = getelementptr inbounds %struct.snode, ptr %88, i64 0, i32 1
  store i32 %99, ptr %100, align 8
  store ptr %88, ptr %3, align 8, !tbaa !14
  %101 = getelementptr inbounds %struct.rnode, ptr %83, i64 0, i32 2
  %102 = load i16, ptr %101, align 8, !tbaa !230
  %103 = icmp eq i16 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %98
  %105 = getelementptr inbounds %struct.rnode, ptr %74, i64 0, i32 2
  %106 = load i16, ptr %105, align 8, !tbaa !230
  %107 = icmp ne i16 %106, 0
  %108 = zext i1 %107 to i16
  br label %109

109:                                              ; preds = %104, %98
  %110 = phi i16 [ 1, %98 ], [ %108, %104 ]
  %111 = getelementptr inbounds %struct.rnode, ptr %80, i64 0, i32 2
  store i16 %110, ptr %111, align 8, !tbaa !230
  %112 = getelementptr inbounds %struct.rnode, ptr %83, i64 0, i32 3
  %113 = load ptr, ptr %112, align 8, !tbaa !231
  %114 = getelementptr inbounds %struct.rnode, ptr %74, i64 0, i32 3
  %115 = load ptr, ptr %114, align 8, !tbaa !231
  %116 = call fastcc ptr @pset_union(ptr noundef %113, ptr noundef %115) #25
  %117 = getelementptr inbounds %struct.rnode, ptr %80, i64 0, i32 3
  store ptr %116, ptr %117, align 8, !tbaa !231
  %118 = load ptr, ptr %86, align 8, !tbaa !13
  %119 = getelementptr inbounds %struct.rnode, ptr %118, i64 0, i32 4
  %120 = load ptr, ptr %119, align 8, !tbaa !232
  %121 = load ptr, ptr %87, align 8, !tbaa !13
  %122 = getelementptr inbounds %struct.rnode, ptr %121, i64 0, i32 4
  %123 = load ptr, ptr %122, align 8, !tbaa !232
  %124 = call fastcc ptr @pset_union(ptr noundef %120, ptr noundef %123) #25
  %125 = getelementptr inbounds %struct.rnode, ptr %80, i64 0, i32 4
  store ptr %124, ptr %125, align 8, !tbaa !232
  %126 = load ptr, ptr %3, align 8, !tbaa !14
  %127 = icmp eq ptr %126, null
  br i1 %127, label %158, label %157

128:                                              ; preds = %12
  %129 = getelementptr inbounds %struct.anon.3, ptr %10, i64 0, i32 1
  %130 = load ptr, ptr %129, align 8, !tbaa !233
  %131 = call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #31
  %132 = icmp eq ptr %131, null
  br i1 %132, label %158, label %133

133:                                              ; preds = %128
  %134 = load ptr, ptr %3, align 8, !tbaa !14
  %135 = getelementptr inbounds %struct.snode, ptr %131, i64 0, i32 2
  store ptr %134, ptr %135, align 8, !tbaa !49
  store ptr %130, ptr %131, align 8, !tbaa !51
  %136 = icmp eq ptr %134, null
  br i1 %136, label %137, label %139

137:                                              ; preds = %133
  %138 = getelementptr inbounds %struct.snode, ptr %131, i64 0, i32 1
  store i32 1, ptr %138, align 8
  store ptr %131, ptr %3, align 8, !tbaa !14
  br label %157

139:                                              ; preds = %133
  %140 = getelementptr inbounds %struct.snode, ptr %134, i64 0, i32 1
  %141 = load i32, ptr %140, align 8, !tbaa !227
  %142 = add nsw i32 %141, 1
  %143 = getelementptr inbounds %struct.snode, ptr %131, i64 0, i32 1
  store i32 %142, ptr %143, align 8
  store ptr %131, ptr %3, align 8, !tbaa !14
  %144 = icmp sgt i32 %141, 1
  br i1 %144, label %145, label %157

145:                                              ; preds = %139
  store ptr %134, ptr %4, align 8, !tbaa !14
  %146 = call fastcc ptr @cat2(ptr noundef nonnull %4) #26
  %147 = load ptr, ptr %3, align 8, !tbaa !14
  %148 = getelementptr inbounds %struct.snode, ptr %147, i64 0, i32 2
  store ptr %146, ptr %148, align 8, !tbaa !49
  %149 = icmp eq ptr %146, null
  br i1 %149, label %158, label %150

150:                                              ; preds = %145
  %151 = getelementptr inbounds %struct.snode, ptr %146, i64 0, i32 1
  %152 = load i32, ptr %151, align 8, !tbaa !227
  %153 = add nsw i32 %152, 1
  %154 = getelementptr inbounds %struct.snode, ptr %147, i64 0, i32 1
  store i32 %153, ptr %154, align 8, !tbaa !227
  br label %157

155:                                              ; preds = %12
  %156 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.87, i32 noundef %14) #26
  br label %157

157:                                              ; preds = %155, %150, %139, %137, %109, %67, %64, %59, %48, %45
  br label %9

158:                                              ; preds = %145, %128, %109, %82, %79, %76, %73, %70, %67, %64, %52, %37, %25, %23, %20, %18, %9, %6, %2
  %159 = phi ptr [ null, %6 ], [ null, %2 ], [ null, %18 ], [ %24, %23 ], [ null, %20 ], [ null, %9 ], [ null, %25 ], [ null, %37 ], [ null, %52 ], [ null, %64 ], [ null, %67 ], [ null, %70 ], [ null, %73 ], [ null, %76 ], [ null, %79 ], [ null, %82 ], [ null, %109 ], [ null, %128 ], [ null, %145 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #24
  ret ptr %159
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(readwrite, argmem: none) uwtable
define internal fastcc noalias ptr @mk_leaf(i16 noundef signext %0, i16 noundef signext %1, i8 noundef signext %2, ptr noundef %3) unnamed_addr #19 {
  %5 = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #31
  %6 = tail call noalias dereferenceable_or_null(48) ptr @malloc(i64 noundef 48) #31
  %7 = icmp eq ptr %5, null
  %8 = icmp eq ptr %6, null
  %9 = or i1 %7, %8
  br i1 %9, label %28, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.anon.1, ptr %5, i64 0, i32 1
  store i16 %1, ptr %11, align 4, !tbaa !234
  %12 = load i32, ptr @pos_cnt, align 4, !tbaa !7
  %13 = add nsw i32 %12, 1
  store i32 %13, ptr @pos_cnt, align 4, !tbaa !7
  store i32 %12, ptr %5, align 8, !tbaa !236
  %14 = icmp eq i16 %1, 1
  %15 = getelementptr inbounds %struct.anon.1, ptr %5, i64 0, i32 2
  br i1 %14, label %16, label %17

16:                                               ; preds = %10
  store ptr %3, ptr %15, align 8, !tbaa !13
  br label %18

17:                                               ; preds = %10
  store i8 %2, ptr %15, align 8, !tbaa !13
  br label %18

18:                                               ; preds = %17, %16
  store i16 %0, ptr %6, align 8, !tbaa !228
  %19 = getelementptr inbounds %struct.rnode, ptr %6, i64 0, i32 1
  store ptr %5, ptr %19, align 8, !tbaa !13
  %20 = getelementptr inbounds %struct.rnode, ptr %6, i64 0, i32 2
  store i16 0, ptr %20, align 8, !tbaa !230
  %21 = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #31
  %22 = icmp eq ptr %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %18
  store i32 %12, ptr %21, align 8, !tbaa !52
  %24 = getelementptr inbounds %struct.pnode, ptr %21, i64 0, i32 1
  store ptr null, ptr %24, align 8, !tbaa !237
  br label %25

25:                                               ; preds = %23, %18
  %26 = getelementptr inbounds %struct.rnode, ptr %6, i64 0, i32 3
  store ptr %21, ptr %26, align 8, !tbaa !231
  %27 = getelementptr inbounds %struct.rnode, ptr %6, i64 0, i32 4
  store ptr %21, ptr %27, align 8, !tbaa !232
  br label %28

28:                                               ; preds = %25, %4
  %29 = phi ptr [ %6, %25 ], [ null, %4 ]
  ret ptr %29
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc ptr @cat2(ptr noundef %0) unnamed_addr #12 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %71, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !14
  %5 = icmp eq ptr %4, null
  br i1 %5, label %71, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.snode, ptr %4, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !49
  %9 = icmp eq ptr %8, null
  br i1 %9, label %71, label %10

10:                                               ; preds = %6
  %11 = tail call noalias dereferenceable_or_null(48) ptr @malloc(i64 noundef 48) #31
  %12 = icmp eq ptr %11, null
  br i1 %12, label %71, label %13

13:                                               ; preds = %10
  store i16 5, ptr %11, align 8, !tbaa !228
  %14 = load ptr, ptr %4, align 8, !tbaa !51
  store ptr %8, ptr %0, align 8, !tbaa !14
  tail call void @free(ptr noundef nonnull %4) #25
  %15 = getelementptr inbounds %struct.rnode, ptr %11, i64 0, i32 1
  %16 = getelementptr inbounds %struct.rnode, ptr %11, i64 0, i32 1, i32 0, i32 1
  store ptr %14, ptr %16, align 8, !tbaa !13
  %17 = load ptr, ptr %0, align 8, !tbaa !14
  %18 = icmp eq ptr %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %13
  %20 = load ptr, ptr %17, align 8, !tbaa !51
  %21 = getelementptr inbounds %struct.snode, ptr %17, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !49
  store ptr %22, ptr %0, align 8, !tbaa !14
  tail call void @free(ptr noundef nonnull %17) #25
  br label %23

23:                                               ; preds = %19, %13
  %24 = phi ptr [ %20, %19 ], [ null, %13 ]
  store ptr %24, ptr %15, align 8, !tbaa !13
  %25 = tail call fastcc ptr @Push(ptr noundef nonnull %0, ptr noundef nonnull %11) #25
  %26 = icmp eq ptr %25, null
  br i1 %26, label %71, label %27

27:                                               ; preds = %23
  %28 = load ptr, ptr %15, align 8, !tbaa !13
  %29 = getelementptr inbounds %struct.rnode, ptr %28, i64 0, i32 2
  %30 = load i16, ptr %29, align 8, !tbaa !230
  %31 = icmp eq i16 %30, 0
  %32 = load ptr, ptr %16, align 8, !tbaa !13
  br i1 %31, label %38, label %33

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.rnode, ptr %32, i64 0, i32 2
  %35 = load i16, ptr %34, align 8, !tbaa !230
  %36 = icmp ne i16 %35, 0
  %37 = zext i1 %36 to i16
  br label %38

38:                                               ; preds = %33, %27
  %39 = phi i16 [ 0, %27 ], [ %37, %33 ]
  %40 = getelementptr inbounds %struct.rnode, ptr %11, i64 0, i32 2
  store i16 %39, ptr %40, align 8, !tbaa !230
  %41 = load i16, ptr %29, align 8, !tbaa !230
  %42 = icmp eq i16 %41, 0
  %43 = getelementptr inbounds %struct.rnode, ptr %28, i64 0, i32 3
  %44 = load ptr, ptr %43, align 8, !tbaa !231
  br i1 %42, label %50, label %45

45:                                               ; preds = %38
  %46 = getelementptr inbounds %struct.rnode, ptr %32, i64 0, i32 3
  %47 = load ptr, ptr %46, align 8, !tbaa !231
  %48 = tail call fastcc ptr @pset_union(ptr noundef %44, ptr noundef %47) #25
  %49 = load ptr, ptr %16, align 8, !tbaa !13
  br label %50

50:                                               ; preds = %45, %38
  %51 = phi ptr [ %49, %45 ], [ %32, %38 ]
  %52 = phi ptr [ %48, %45 ], [ %44, %38 ]
  %53 = getelementptr inbounds %struct.rnode, ptr %11, i64 0, i32 3
  store ptr %52, ptr %53, align 8
  %54 = getelementptr inbounds %struct.rnode, ptr %51, i64 0, i32 2
  %55 = load i16, ptr %54, align 8, !tbaa !230
  %56 = icmp eq i16 %55, 0
  br i1 %56, label %64, label %57

57:                                               ; preds = %50
  %58 = load ptr, ptr %15, align 8, !tbaa !13
  %59 = getelementptr inbounds %struct.rnode, ptr %58, i64 0, i32 4
  %60 = load ptr, ptr %59, align 8, !tbaa !232
  %61 = getelementptr inbounds %struct.rnode, ptr %51, i64 0, i32 4
  %62 = load ptr, ptr %61, align 8, !tbaa !232
  %63 = tail call fastcc ptr @pset_union(ptr noundef %60, ptr noundef %62) #25
  br label %67

64:                                               ; preds = %50
  %65 = getelementptr inbounds %struct.rnode, ptr %51, i64 0, i32 4
  %66 = load ptr, ptr %65, align 8, !tbaa !232
  br label %67

67:                                               ; preds = %64, %57
  %68 = phi ptr [ %66, %64 ], [ %63, %57 ]
  %69 = getelementptr inbounds %struct.rnode, ptr %11, i64 0, i32 4
  store ptr %68, ptr %69, align 8
  %70 = load ptr, ptr %0, align 8, !tbaa !14
  br label %71

71:                                               ; preds = %67, %23, %10, %6, %3, %1
  %72 = phi ptr [ %70, %67 ], [ null, %1 ], [ null, %10 ], [ null, %23 ], [ %4, %6 ], [ null, %3 ]
  ret ptr %72
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #20

; Function Attrs: nofree nounwind optsize uwtable
define internal fastcc void @mk_followpos_1(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #14 {
  br label %3

3:                                                ; preds = %26, %2
  %4 = phi ptr [ %0, %2 ], [ %28, %26 ]
  %5 = load i16, ptr %4, align 8, !tbaa !228
  %6 = sext i16 %5 to i32
  switch i32 %6, label %61 [
    i32 0, label %63
    i32 2, label %7
    i32 5, label %29
    i32 4, label %55
    i32 3, label %57
    i32 1, label %63
  ]

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.rnode, ptr %4, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !14
  %10 = icmp eq ptr %9, null
  br i1 %10, label %24, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.rnode, ptr %4, i64 0, i32 3
  br label %13

13:                                               ; preds = %13, %11
  %14 = phi ptr [ %9, %11 ], [ %22, %13 ]
  %15 = load i32, ptr %14, align 8, !tbaa !52
  %16 = load ptr, ptr %12, align 8, !tbaa !231
  %17 = sext i32 %15 to i64
  %18 = getelementptr inbounds [0 x ptr], ptr %1, i64 0, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !14
  %20 = tail call fastcc ptr @pset_union(ptr noundef %16, ptr noundef %19) #25
  store ptr %20, ptr %18, align 8, !tbaa !14
  %21 = getelementptr inbounds %struct.pnode, ptr %14, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !14
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %13, !llvm.loop !238

24:                                               ; preds = %13, %7
  %25 = getelementptr inbounds %struct.rnode, ptr %4, i64 0, i32 1
  br label %26

26:                                               ; preds = %57, %55, %52, %24
  %27 = phi ptr [ %25, %24 ], [ %54, %52 ], [ %56, %55 ], [ %60, %57 ]
  %28 = load ptr, ptr %27, align 8, !tbaa !13
  br label %3

29:                                               ; preds = %3
  %30 = getelementptr inbounds %struct.rnode, ptr %4, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !13
  %32 = getelementptr inbounds %struct.rnode, ptr %31, i64 0, i32 4
  %33 = load ptr, ptr %32, align 8, !tbaa !14
  %34 = icmp eq ptr %33, null
  br i1 %34, label %52, label %35

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.rnode, ptr %4, i64 0, i32 1, i32 0, i32 1
  br label %37

37:                                               ; preds = %37, %35
  %38 = phi ptr [ %33, %35 ], [ %48, %37 ]
  %39 = load i32, ptr %38, align 8, !tbaa !52
  %40 = load ptr, ptr %36, align 8, !tbaa !13
  %41 = getelementptr inbounds %struct.rnode, ptr %40, i64 0, i32 3
  %42 = load ptr, ptr %41, align 8, !tbaa !231
  %43 = sext i32 %39 to i64
  %44 = getelementptr inbounds [0 x ptr], ptr %1, i64 0, i64 %43
  %45 = load ptr, ptr %44, align 8, !tbaa !14
  %46 = tail call fastcc ptr @pset_union(ptr noundef %42, ptr noundef %45) #25
  store ptr %46, ptr %44, align 8, !tbaa !14
  %47 = getelementptr inbounds %struct.pnode, ptr %38, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !14
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %37, !llvm.loop !239

50:                                               ; preds = %37
  %51 = load ptr, ptr %30, align 8, !tbaa !13
  br label %52

52:                                               ; preds = %50, %29
  %53 = phi ptr [ %51, %50 ], [ %31, %29 ]
  tail call fastcc void @mk_followpos_1(ptr noundef %53, ptr noundef %1) #26
  %54 = getelementptr inbounds %struct.rnode, ptr %4, i64 0, i32 1, i32 0, i32 1
  br label %26

55:                                               ; preds = %3
  %56 = getelementptr inbounds %struct.rnode, ptr %4, i64 0, i32 1
  br label %26

57:                                               ; preds = %3
  %58 = getelementptr inbounds %struct.rnode, ptr %4, i64 0, i32 1
  %59 = load ptr, ptr %58, align 8, !tbaa !13
  tail call fastcc void @mk_followpos_1(ptr noundef %59, ptr noundef %1) #26
  %60 = getelementptr inbounds %struct.rnode, ptr %4, i64 0, i32 1, i32 0, i32 1
  br label %26

61:                                               ; preds = %3
  %.lcssa = phi i32 [ %6, %3 ]
  %62 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2.5, i32 noundef %.lcssa) #26
  br label %63

63:                                               ; preds = %61, %3, %3
  ret void
}

; Function Attrs: nofree nounwind optsize uwtable
define internal fastcc ptr @pset_union(ptr noundef readonly %0, ptr noundef %1) unnamed_addr #14 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %37, label %4

4:                                                ; preds = %2
  %5 = icmp eq ptr %1, null
  br label %6

6:                                                ; preds = %27, %4
  %7 = phi ptr [ undef, %4 ], [ %29, %27 ]
  %8 = phi ptr [ null, %4 ], [ %29, %27 ]
  %9 = phi ptr [ null, %4 ], [ %28, %27 ]
  %10 = phi ptr [ %0, %4 ], [ %31, %27 ]
  %11 = load i32, ptr %10, align 8, !tbaa !52
  br i1 %5, label %20, label %12

12:                                               ; preds = %16, %6
  %13 = phi ptr [ %18, %16 ], [ %1, %6 ]
  %14 = load i32, ptr %13, align 8, !tbaa !52
  %15 = icmp eq i32 %14, %11
  br i1 %15, label %27, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.pnode, ptr %13, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !237
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %12, !llvm.loop !240

20:                                               ; preds = %16, %6
  %21 = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #31
  %22 = icmp eq ptr %21, null
  br i1 %22, label %37, label %23

23:                                               ; preds = %20
  store i32 %11, ptr %21, align 8, !tbaa !52
  %24 = icmp eq ptr %9, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.pnode, ptr %8, i64 0, i32 1
  store ptr %21, ptr %26, align 8, !tbaa !237
  br label %27

27:                                               ; preds = %25, %23, %12
  %28 = phi ptr [ %9, %25 ], [ %21, %23 ], [ %9, %12 ]
  %29 = phi ptr [ %21, %25 ], [ %21, %23 ], [ %7, %12 ]
  %30 = getelementptr inbounds %struct.pnode, ptr %10, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !237
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %6, !llvm.loop !241

33:                                               ; preds = %27
  %.lcssa1 = phi ptr [ %28, %27 ]
  %.lcssa = phi ptr [ %29, %27 ]
  %34 = icmp eq ptr %.lcssa1, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %33
  %36 = getelementptr inbounds %struct.pnode, ptr %.lcssa, i64 0, i32 1
  store ptr %1, ptr %36, align 8, !tbaa !237
  br label %37

37:                                               ; preds = %35, %33, %20, %2
  %38 = phi ptr [ %.lcssa1, %35 ], [ %1, %33 ], [ %1, %2 ], [ null, %20 ]
  ret ptr %38
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #21

; Function Attrs: mustprogress nofree nounwind optsize willreturn uwtable
define internal fastcc ptr @Push(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #22 {
  %3 = tail call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #31
  %4 = icmp eq ptr %3, null
  br i1 %4, label %16, label %5

5:                                                ; preds = %2
  %6 = load ptr, ptr %0, align 8, !tbaa !14
  %7 = getelementptr inbounds %struct.snode, ptr %3, i64 0, i32 2
  store ptr %6, ptr %7, align 8, !tbaa !49
  store ptr %1, ptr %3, align 8, !tbaa !51
  %8 = icmp eq ptr %6, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.snode, ptr %6, i64 0, i32 1
  %11 = load i32, ptr %10, align 8, !tbaa !227
  %12 = add nsw i32 %11, 1
  br label %13

13:                                               ; preds = %9, %5
  %14 = phi i32 [ %12, %9 ], [ 1, %5 ]
  %15 = getelementptr inbounds %struct.snode, ptr %3, i64 0, i32 1
  store i32 %14, ptr %15, align 8
  store ptr %3, ptr %0, align 8, !tbaa !14
  br label %16

16:                                               ; preds = %13, %2
  ret ptr %3
}

; Function Attrs: nofree nounwind optsize uwtable
define internal fastcc noalias ptr @get_token(ptr nocapture noundef %0) unnamed_addr #14 {
  %2 = load ptr, ptr %0, align 8, !tbaa !14
  %3 = icmp eq ptr %2, null
  br i1 %3, label %79, label %4

4:                                                ; preds = %1
  %5 = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #31
  %6 = load i8, ptr %2, align 1, !tbaa !13
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %4
  store i16 0, ptr %5, align 8, !tbaa !225
  br label %79

9:                                                ; preds = %4
  %10 = sext i8 %6 to i32
  switch i32 %10, label %11 [
    i32 46, label %12
    i32 91, label %20
    i32 40, label %74
    i32 41, label %59
    i32 42, label %60
    i32 124, label %61
    i32 63, label %62
    i32 92, label %63
  ]

11:                                               ; preds = %9
  store i16 1, ptr %5, align 8, !tbaa !225
  br label %69

12:                                               ; preds = %9
  store i16 1, ptr %5, align 8, !tbaa !225
  %13 = tail call noalias dereferenceable_or_null(2) ptr @malloc(i64 noundef 2) #31
  store i8 1, ptr %13, align 1, !tbaa !242
  %14 = getelementptr inbounds %struct.anon.2, ptr %13, i64 0, i32 1
  store i8 127, ptr %14, align 1, !tbaa !244
  %15 = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #31
  store ptr %13, ptr %15, align 8, !tbaa !245
  %16 = getelementptr inbounds %struct.anon, ptr %15, i64 0, i32 1
  store ptr null, ptr %16, align 8, !tbaa !247
  %17 = tail call fastcc ptr @mk_leaf(i16 noundef signext 1, i16 noundef signext 1, i8 noundef signext 0, ptr noundef nonnull %15) #26
  %18 = getelementptr inbounds %struct.anon.3, ptr %5, i64 0, i32 1
  store ptr %17, ptr %18, align 8, !tbaa !233
  %19 = icmp eq ptr %17, null
  br i1 %19, label %79, label %76

20:                                               ; preds = %9
  %21 = getelementptr inbounds i8, ptr %2, i64 1
  store ptr %21, ptr %0, align 8, !tbaa !14
  store i16 1, ptr %5, align 8, !tbaa !225
  %22 = load i8, ptr %21, align 1, !tbaa !13
  switch i8 %22, label %23 [
    i8 0, label %52
    i8 93, label %52
  ]

23:                                               ; preds = %20
  %24 = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #31
  br label %25

25:                                               ; preds = %45, %23
  %26 = phi i8 [ %22, %23 ], [ %51, %45 ]
  %27 = phi ptr [ %21, %23 ], [ %47, %45 ]
  %28 = phi ptr [ undef, %23 ], [ %29, %45 ]
  %29 = phi ptr [ %24, %23 ], [ %49, %45 ]
  switch i8 %26, label %30 [
    i8 93, label %54
    i8 0, label %52
  ]

30:                                               ; preds = %25
  %31 = tail call noalias dereferenceable_or_null(2) ptr @malloc(i64 noundef 2) #31
  store ptr %31, ptr %29, align 8, !tbaa !245
  %32 = getelementptr inbounds i8, ptr %27, i64 1
  store ptr %32, ptr %0, align 8, !tbaa !14
  %33 = load i8, ptr %27, align 1, !tbaa !13
  %34 = icmp eq i8 %33, 45
  br i1 %34, label %52, label %35

35:                                               ; preds = %30
  store i8 %33, ptr %31, align 1, !tbaa !242
  %36 = load i8, ptr %32, align 1, !tbaa !13
  switch i8 %36, label %45 [
    i8 0, label %52
    i8 45, label %37
  ]

37:                                               ; preds = %35
  %38 = getelementptr inbounds i8, ptr %27, i64 2
  store ptr %38, ptr %0, align 8, !tbaa !14
  %39 = load i8, ptr %38, align 1, !tbaa !13
  switch i8 %39, label %40 [
    i8 0, label %52
    i8 45, label %52
    i8 93, label %52
  ]

40:                                               ; preds = %37
  %41 = icmp slt i8 %39, %33
  br i1 %41, label %52, label %42

42:                                               ; preds = %40
  %43 = getelementptr inbounds i8, ptr %27, i64 3
  store ptr %43, ptr %0, align 8, !tbaa !14
  %44 = load i8, ptr %38, align 1, !tbaa !13
  br label %45

45:                                               ; preds = %42, %35
  %46 = phi i8 [ %44, %42 ], [ %33, %35 ]
  %47 = phi ptr [ %43, %42 ], [ %32, %35 ]
  %48 = getelementptr inbounds %struct.anon.2, ptr %31, i64 0, i32 1
  store i8 %46, ptr %48, align 1, !tbaa !244
  %49 = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #31
  %50 = getelementptr inbounds %struct.anon, ptr %29, i64 0, i32 1
  store ptr %49, ptr %50, align 8, !tbaa !247
  %51 = load i8, ptr %47, align 1, !tbaa !13
  br label %25, !llvm.loop !248

52:                                               ; preds = %40, %37, %37, %37, %35, %30, %25, %20, %20
  %53 = getelementptr inbounds %struct.anon.3, ptr %5, i64 0, i32 1
  store ptr null, ptr %53, align 8, !tbaa !233
  br label %79

54:                                               ; preds = %25
  %.lcssa = phi ptr [ %28, %25 ]
  %55 = getelementptr inbounds %struct.anon, ptr %.lcssa, i64 0, i32 1
  store ptr null, ptr %55, align 8, !tbaa !247
  %56 = tail call fastcc ptr @mk_leaf(i16 noundef signext 1, i16 noundef signext 1, i8 noundef signext 0, ptr noundef %24) #26
  %57 = getelementptr inbounds %struct.anon.3, ptr %5, i64 0, i32 1
  store ptr %56, ptr %57, align 8, !tbaa !233
  %58 = icmp eq ptr %56, null
  br i1 %58, label %79, label %76

59:                                               ; preds = %9
  br label %74

60:                                               ; preds = %9
  br label %74

61:                                               ; preds = %9
  br label %74

62:                                               ; preds = %9
  br label %74

63:                                               ; preds = %9
  %64 = getelementptr inbounds i8, ptr %2, i64 1
  store ptr %64, ptr %0, align 8, !tbaa !14
  %65 = load i8, ptr %64, align 1, !tbaa !13
  store i16 1, ptr %5, align 8, !tbaa !225
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.anon.3, ptr %5, i64 0, i32 1
  store ptr null, ptr %68, align 8, !tbaa !233
  br label %79

69:                                               ; preds = %63, %11
  %70 = phi i8 [ %6, %11 ], [ %65, %63 ]
  %71 = tail call fastcc ptr @mk_leaf(i16 noundef signext 1, i16 noundef signext 0, i8 noundef signext %70, ptr noundef null) #26
  %72 = getelementptr inbounds %struct.anon.3, ptr %5, i64 0, i32 1
  store ptr %71, ptr %72, align 8, !tbaa !233
  %73 = icmp eq ptr %71, null
  br i1 %73, label %79, label %76

74:                                               ; preds = %62, %61, %60, %59, %9
  %75 = phi i16 [ 4, %62 ], [ 3, %61 ], [ 2, %60 ], [ 7, %59 ], [ 6, %9 ]
  store i16 %75, ptr %5, align 8, !tbaa !225
  br label %76

76:                                               ; preds = %74, %69, %54, %12
  %77 = load ptr, ptr %0, align 8, !tbaa !14
  %78 = getelementptr inbounds i8, ptr %77, i64 1
  store ptr %78, ptr %0, align 8, !tbaa !14
  br label %79

79:                                               ; preds = %76, %69, %67, %54, %52, %12, %8, %1
  %80 = phi ptr [ null, %1 ], [ null, %12 ], [ null, %54 ], [ null, %69 ], [ %5, %76 ], [ %5, %8 ], [ null, %67 ], [ null, %52 ]
  ret ptr %80
}

; Function Attrs: mustprogress nounwind optsize willreturn uwtable
define internal fastcc ptr @wrap(ptr noundef %0, i16 noundef signext %1) unnamed_addr #23 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %24, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr %0, align 8, !tbaa !14
  %6 = icmp eq ptr %5, null
  br i1 %6, label %24, label %7

7:                                                ; preds = %4
  %8 = tail call noalias dereferenceable_or_null(48) ptr @malloc(i64 noundef 48) #31
  %9 = icmp eq ptr %8, null
  br i1 %9, label %24, label %10

10:                                               ; preds = %7
  store i16 %1, ptr %8, align 8, !tbaa !228
  %11 = load ptr, ptr %5, align 8, !tbaa !51
  %12 = getelementptr inbounds %struct.snode, ptr %5, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !49
  store ptr %13, ptr %0, align 8, !tbaa !14
  tail call void @free(ptr noundef nonnull %5) #25
  %14 = getelementptr inbounds %struct.rnode, ptr %8, i64 0, i32 1
  store ptr %11, ptr %14, align 8, !tbaa !13
  %15 = tail call fastcc ptr @Push(ptr noundef nonnull %0, ptr noundef nonnull %8) #25
  %16 = icmp eq ptr %15, null
  br i1 %16, label %24, label %17

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.rnode, ptr %8, i64 0, i32 2
  store i16 1, ptr %18, align 8, !tbaa !230
  %19 = load ptr, ptr %14, align 8, !tbaa !13
  %20 = getelementptr inbounds %struct.rnode, ptr %19, i64 0, i32 3
  %21 = getelementptr inbounds %struct.rnode, ptr %8, i64 0, i32 3
  %22 = load <2 x ptr>, ptr %20, align 8, !tbaa !14
  store <2 x ptr> %22, ptr %21, align 8, !tbaa !14
  %23 = load ptr, ptr %0, align 8, !tbaa !14
  br label %24

24:                                               ; preds = %17, %10, %7, %4, %2
  %25 = phi ptr [ %23, %17 ], [ null, %4 ], [ null, %2 ], [ null, %7 ], [ null, %10 ]
  ret ptr %25
}

attributes #0 = { noreturn nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind optsize willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nosync nounwind optsize willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind }
attributes #14 = { nofree nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree nosync nounwind optsize memory(readwrite, argmem: write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nofree nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree nounwind optsize willreturn memory(readwrite, argmem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" }
attributes #21 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nounwind }
attributes #25 = { nounwind optsize }
attributes #26 = { optsize }
attributes #27 = { cold optsize }
attributes #28 = { noreturn nounwind optsize }
attributes #29 = { nounwind optsize willreturn memory(read) }
attributes #30 = { nounwind optsize willreturn memory(none) }
attributes #31 = { nounwind optsize allocsize(0) }
attributes #32 = { cold }

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
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!9, !9, i64 0}
!14 = !{!15, !15, i64 0}
!15 = !{!"any pointer", !9, i64 0}
!16 = !{!17, !17, i64 0}
!17 = !{!"short", !9, i64 0}
!18 = distinct !{!18, !12}
!19 = distinct !{!19, !12}
!20 = distinct !{!20, !12}
!21 = distinct !{!21, !12}
!22 = distinct !{!22, !12}
!23 = distinct !{!23, !12}
!24 = distinct !{!24, !12}
!25 = distinct !{!25, !12, !26, !27}
!26 = !{!"llvm.loop.isvectorized", i32 1}
!27 = !{!"llvm.loop.unroll.runtime.disable"}
!28 = distinct !{!28, !12, !26, !27}
!29 = distinct !{!29, !12, !26, !27}
!30 = distinct !{!30, !12, !26, !27}
!31 = distinct !{!31, !12}
!32 = distinct !{!32, !12}
!33 = distinct !{!33, !12}
!34 = !{!35, !8, i64 0}
!35 = !{!"pat_list", !8, i64 0, !15, i64 8}
!36 = !{!35, !15, i64 8}
!37 = distinct !{!37, !12}
!38 = distinct !{!38, !12}
!39 = distinct !{!39, !12}
!40 = distinct !{!40, !12}
!41 = distinct !{!41, !12}
!42 = distinct !{!42, !12}
!43 = distinct !{!43, !12}
!44 = distinct !{!44, !12}
!45 = distinct !{!45, !12}
!46 = distinct !{!46, !12}
!47 = distinct !{!47, !12}
!48 = distinct !{!48, !12}
!49 = !{!50, !15, i64 16}
!50 = !{!"snode", !15, i64 0, !8, i64 8, !15, i64 16}
!51 = !{!50, !15, i64 0}
!52 = !{!53, !8, i64 0}
!53 = !{!"pnode", !8, i64 0, !15, i64 8}
!54 = distinct !{!54, !12}
!55 = distinct !{!55, !12}
!56 = distinct !{!56, !12}
!57 = !{!58, !8, i64 0}
!58 = !{!"term", !8, i64 0, !9, i64 4}
!59 = distinct !{!59, !12}
!60 = distinct !{!60, !12}
!61 = distinct !{!61, !12}
!62 = distinct !{!62, !12}
!63 = distinct !{!63, !12}
!64 = distinct !{!64, !12}
!65 = distinct !{!65, !12}
!66 = distinct !{!66, !12}
!67 = distinct !{!67, !12}
!68 = distinct !{!68, !12}
!69 = distinct !{!69, !12}
!70 = distinct !{!70, !12}
!71 = distinct !{!71, !12, !26, !27}
!72 = distinct !{!72, !12, !26, !27}
!73 = distinct !{!73, !12, !26, !27}
!74 = distinct !{!74, !12, !26, !27}
!75 = distinct !{!75, !12}
!76 = distinct !{!76, !12}
!77 = distinct !{!77, !12}
!78 = distinct !{!78, !12}
!79 = distinct !{!79, !12}
!80 = distinct !{!80, !12}
!81 = distinct !{!81, !12}
!82 = distinct !{!82, !12}
!83 = distinct !{!83, !12}
!84 = distinct !{!84, !12}
!85 = distinct !{!85, !12}
!86 = distinct !{!86, !12}
!87 = distinct !{!87, !12}
!88 = distinct !{!88, !12}
!89 = distinct !{!89, !12}
!90 = distinct !{!90, !12}
!91 = distinct !{!91, !12}
!92 = distinct !{!92, !12}
!93 = distinct !{!93, !12}
!94 = distinct !{!94, !12}
!95 = distinct !{!95, !12}
!96 = distinct !{!96, !12}
!97 = distinct !{!97, !12}
!98 = distinct !{!98, !12}
!99 = distinct !{!99, !12}
!100 = distinct !{!100, !12}
!101 = distinct !{!101, !12}
!102 = distinct !{!102, !12}
!103 = distinct !{!103, !12}
!104 = distinct !{!104, !12}
!105 = distinct !{!105, !12}
!106 = distinct !{!106, !12}
!107 = distinct !{!107, !12}
!108 = distinct !{!108, !12}
!109 = distinct !{!109, !12}
!110 = distinct !{!110, !12}
!111 = distinct !{!111, !12}
!112 = distinct !{!112, !12}
!113 = distinct !{!113, !12}
!114 = distinct !{!114, !12}
!115 = distinct !{!115, !12}
!116 = distinct !{!116, !12}
!117 = distinct !{!117, !12}
!118 = distinct !{!118, !12}
!119 = distinct !{!119, !12}
!120 = distinct !{!120, !12}
!121 = distinct !{!121, !12}
!122 = distinct !{!122, !12}
!123 = distinct !{!123, !12}
!124 = distinct !{!124, !12}
!125 = distinct !{!125, !12}
!126 = distinct !{!126, !12}
!127 = distinct !{!127, !12}
!128 = distinct !{!128, !12}
!129 = distinct !{!129, !12}
!130 = distinct !{!130, !12}
!131 = distinct !{!131, !12}
!132 = distinct !{!132, !12}
!133 = distinct !{!133, !12}
!134 = distinct !{!134, !12}
!135 = distinct !{!135, !12}
!136 = distinct !{!136, !12}
!137 = distinct !{!137, !12}
!138 = distinct !{!138, !12}
!139 = distinct !{!139, !12}
!140 = distinct !{!140, !12}
!141 = distinct !{!141, !12, !26, !27}
!142 = distinct !{!142, !12}
!143 = distinct !{!143, !12, !26, !27}
!144 = distinct !{!144, !12}
!145 = distinct !{!145, !12}
!146 = distinct !{!146, !12}
!147 = distinct !{!147, !12}
!148 = distinct !{!148, !12}
!149 = distinct !{!149, !12}
!150 = distinct !{!150, !12}
!151 = distinct !{!151, !12}
!152 = distinct !{!152, !12}
!153 = distinct !{!153, !12}
!154 = distinct !{!154, !12}
!155 = distinct !{!155, !12}
!156 = distinct !{!156, !12}
!157 = distinct !{!157, !12}
!158 = distinct !{!158, !12}
!159 = distinct !{!159, !12}
!160 = distinct !{!160, !12}
!161 = distinct !{!161, !12, !26, !27}
!162 = distinct !{!162, !12}
!163 = distinct !{!163, !12}
!164 = distinct !{!164, !12, !26, !27}
!165 = distinct !{!165, !12}
!166 = distinct !{!166, !12}
!167 = distinct !{!167, !12}
!168 = distinct !{!168, !12}
!169 = distinct !{!169, !12}
!170 = distinct !{!170, !12}
!171 = distinct !{!171, !12, !26, !27}
!172 = distinct !{!172, !12}
!173 = distinct !{!173, !12, !26, !27}
!174 = distinct !{!174, !12}
!175 = distinct !{!175, !12}
!176 = distinct !{!176, !12}
!177 = distinct !{!177, !12}
!178 = distinct !{!178, !12}
!179 = distinct !{!179, !12}
!180 = distinct !{!180, !12}
!181 = distinct !{!181, !12}
!182 = distinct !{!182, !12}
!183 = distinct !{!183, !12}
!184 = distinct !{!184, !12}
!185 = distinct !{!185, !12}
!186 = distinct !{!186, !12}
!187 = distinct !{!187, !12}
!188 = distinct !{!188, !12}
!189 = distinct !{!189, !12}
!190 = distinct !{!190, !12}
!191 = distinct !{!191, !12}
!192 = distinct !{!192, !12}
!193 = distinct !{!193, !12}
!194 = distinct !{!194, !12}
!195 = distinct !{!195, !12}
!196 = distinct !{!196, !12}
!197 = distinct !{!197, !12}
!198 = distinct !{!198, !12}
!199 = distinct !{!199, !12}
!200 = distinct !{!200, !12}
!201 = distinct !{!201, !12}
!202 = distinct !{!202, !12}
!203 = distinct !{!203, !12}
!204 = distinct !{!204, !12}
!205 = distinct !{!205, !12}
!206 = distinct !{!206, !12}
!207 = distinct !{!207, !12}
!208 = distinct !{!208, !12}
!209 = distinct !{!209, !12}
!210 = distinct !{!210, !12}
!211 = distinct !{!211, !12}
!212 = distinct !{!212, !12}
!213 = distinct !{!213, !12}
!214 = distinct !{!214, !12}
!215 = distinct !{!215, !12}
!216 = distinct !{!216, !12}
!217 = distinct !{!217, !12}
!218 = distinct !{!218, !12}
!219 = distinct !{!219, !12}
!220 = distinct !{!220, !12}
!221 = distinct !{!221, !12}
!222 = distinct !{!222, !12}
!223 = distinct !{!223, !12}
!224 = distinct !{!224, !12}
!225 = !{!226, !17, i64 0}
!226 = !{!"", !17, i64 0, !15, i64 8}
!227 = !{!50, !8, i64 8}
!228 = !{!229, !17, i64 0}
!229 = !{!"rnode", !17, i64 0, !9, i64 8, !17, i64 24, !15, i64 32, !15, i64 40}
!230 = !{!229, !17, i64 24}
!231 = !{!229, !15, i64 32}
!232 = !{!229, !15, i64 40}
!233 = !{!226, !15, i64 8}
!234 = !{!235, !17, i64 4}
!235 = !{!"", !8, i64 0, !17, i64 4, !9, i64 8}
!236 = !{!235, !8, i64 0}
!237 = !{!53, !15, i64 8}
!238 = distinct !{!238, !12}
!239 = distinct !{!239, !12}
!240 = distinct !{!240, !12}
!241 = distinct !{!241, !12}
!242 = !{!243, !9, i64 0}
!243 = !{!"", !9, i64 0, !9, i64 1}
!244 = !{!243, !9, i64 1}
!245 = !{!246, !15, i64 0}
!246 = !{!"ch_set", !15, i64 0, !15, i64 8}
!247 = !{!246, !15, i64 8}
!248 = distinct !{!248, !12}
