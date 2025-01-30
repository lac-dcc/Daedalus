; ModuleID = '/src/llvm-test-suite/build/MultiSource/Benchmarks/Prolangs-C/agrep/agrep.e.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.rnode = type { i16, %union.anon, i16, ptr, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr }
%struct.pnode = type { i32, ptr }
%struct.term = type { i32, [32 x i8] }
%struct.anon.1 = type { i32, i16, %union.anon.0 }
%union.anon.0 = type { ptr }
%struct.anon.2 = type { i8, i8 }
%struct.anon.3 = type { i16, ptr }
%struct.snode = type { ptr, i32, ptr }

@.str = private unnamed_addr constant [75 x i8] c"%s: the maximum number of erorrs allowed for full regular expression is 4\0A\00", align 1
@.str.3 = private unnamed_addr constant [63 x i8] c"%s: WARNING!!! -B option ignored when -c, -l, -f, or -# is on\0A\00", align 1
@.str.1 = private unnamed_addr constant [66 x i8] c"WARNING!!!  approximate matching is not supported with -f option\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"%s: -f and -n are not compatible\0A\00", align 1
@.str.3.4 = private unnamed_addr constant [34 x i8] c"%s: -f and -d are not compatible\0A\00", align 1
@.str.4 = private unnamed_addr constant [78 x i8] c"WARNING!!! -D#, -I#, or -S# option is ignored for regular expression pattern\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"%s: the error cost cannot be 0\0A\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"%s: -d and -x is not compatible\0A\00", align 1
@.str.2.5 = private unnamed_addr constant [36 x i8] c"mk_followpos: unknown node type %d\0A\00", align 1
@APPROX = internal global i32 0, align 4
@PAT_FILE = internal global i32 0, align 4
@CONSTANT = internal global i32 0, align 4
@old_D_pat = internal global [16 x i8] c"\0A\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@D_pattern = internal global [16 x i8] c"\0A; \00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@NOFILENAME = internal global i32 0, align 4
@Numfiles = internal global i32 0, align 4
@.str.8 = private unnamed_addr constant [6 x i8] c"agrep\00", align 1
@I = internal global i32 0, align 4
@.str.1.15 = private unnamed_addr constant [32 x i8] c"%s: illegal option combination\0A\00", align 1
@.str.2.20 = private unnamed_addr constant [32 x i8] c"%s: delimiter pattern too long\0A\00", align 1
@.str.4.21 = private unnamed_addr constant [57 x i8] c"%s: the pattern should immediately follow the -e option\0A\00", align 1
@.str.5.24 = private unnamed_addr constant [32 x i8] c"%s: Can't open pattern file %s\0A\00", align 1
@.str.6.25 = private unnamed_addr constant [57 x i8] c"%s: the pattern should immediately follow the -k option\0A\00", align 1
@.str.7 = private unnamed_addr constant [49 x i8] c"%s: -k should be the last option in the command\0A\00", align 1
@LINENUM = internal global i32 0, align 4
@OUTTAIL = internal global i32 0, align 4
@BESTMATCH = internal global i32 0, align 4
@NOPROMPT = internal global i32 0, align 4
@JUMP = internal global i32 0, align 4
@S = internal global i32 0, align 4
@DD = internal global i32 0, align 4
@FILEOUT = internal global i32 0, align 4
@.str.8.42 = private unnamed_addr constant [41 x i8] c"%s: the maximum number of errors is %d \0A\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"%s: illegal option  -%c\0A\00", align 1
@.str.10 = private unnamed_addr constant [46 x i8] c"%s: -h and -l options are mutually exclusive\0A\00", align 1
@Textfiles = internal global ptr null, align 8
@.str.11 = private unnamed_addr constant [60 x i8] c"%s: malloc failure (you probably don't have enough memory)\0A\00", align 1
@.str.12 = private unnamed_addr constant [35 x i8] c"%s: %s: no such file or directory\0A\00", align 1
@SGREP = internal global i32 0, align 4
@.str.13 = private unnamed_addr constant [53 x i8] c"%s: -l option is not compatible with standard input\0A\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.15 = private unnamed_addr constant [24 x i8] c"%s: can't open file %s\0A\00", align 1
@NOMATCH = internal global i32 0, align 4
@.str.16 = private unnamed_addr constant [8 x i8] c"%s: %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [25 x i8] c"best match has 1 error, \00", align 1
@.str.18 = private unnamed_addr constant [27 x i8] c"best match has %d errors, \00", align 1
@.str.19 = private unnamed_addr constant [35 x i8] c"there is 1 match, output it? (y/n)\00", align 1
@.str.20 = private unnamed_addr constant [41 x i8] c"there are %d matches, output them? (y/n)\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@EATFIRST = internal global i32 0, align 4
@TRUNCATE = internal global i32 0, align 4
@FIRSTOUTPUT = internal global i32 0, align 4
@FIRST_IN_RE = internal global i32 0, align 4
@SIMPLEPATTERN = internal global i32 0, align 4
@PSIZE = internal global i32 0, align 4
@Num_Pat = internal global i32 0, align 4
@.str.23 = private unnamed_addr constant [33 x i8] c"%s: regular expression too long\0A\00", align 1
@Next = internal global [66000 x i32] zeroinitializer, align 16
@Next1 = internal global [66000 x i32] zeroinitializer, align 16
@buffer = internal global [50177 x i8] zeroinitializer, align 16
@.str.25 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
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
@NO_ERR_MASK = internal global i32 0, align 4
@wildmask = internal global i32 0, align 4
@Bit = internal global [33 x i32] zeroinitializer, align 16
@.str.73 = private unnamed_addr constant [41 x i8] c"%s: illegal pattern, unmatched '<', '>'\0A\00", align 1
@.str.1.74 = private unnamed_addr constant [41 x i8] c"%s: illegal pattern, unmatched '[', ']'\0A\00", align 1
@AND = internal global i32 0, align 4
@.str.2.75 = private unnamed_addr constant [18 x i8] c"illegal pattern \0A\00", align 1
@.str.3.76 = private unnamed_addr constant [22 x i8] c"%s: pattern too long\0A\00", align 1
@Init = internal global [8 x i32] zeroinitializer, align 16
@Init1 = internal global i32 0, align 4
@D_endpos = internal global i32 0, align 4
@LONG = internal global i32 0, align 4
@SHORT = internal global i32 0, align 4
@p_size = internal global i32 0, align 4
@total_line = internal global i32 0, align 4
@HASH = internal global [8192 x ptr] zeroinitializer, align 16
@tr = internal global [256 x i8] zeroinitializer, align 16
@patt = internal global [30000 x ptr] zeroinitializer, align 16
@pat_len = internal global [30000 x i8] zeroinitializer, align 16
@.str.77 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@INVERSE = internal global i32 0, align 4
@SHIFT1 = internal global [4096 x i8] zeroinitializer, align 16
@qt = internal global ptr null, align 8
@pt = internal global ptr null, align 8
@pat_spool = internal global [320256 x i8] zeroinitializer, align 16
@buf = internal global [268192 x i8] zeroinitializer, align 16
@.str.2.80 = private unnamed_addr constant [37 x i8] c"%s: maximum pattern file size is %d\0A\00", align 1
@.str.3.81 = private unnamed_addr constant [38 x i8] c"%s: maximum number of patterns is %d\0A\00", align 1
@tr1 = internal global [256 x i8] zeroinitializer, align 16
@.str.4.82 = private unnamed_addr constant [27 x i8] c"the pattern file is empty\0A\00", align 1
@pos_cnt = internal global i32 0, align 4
@.str.87 = private unnamed_addr constant [33 x i8] c"parse_re: unknown token type %d\0A\00", align 1
@final_pos = internal global i32 0, align 4
@REGEX = internal global i32 0, align 4
@D_length = internal global i32 0, align 4
@.str.92 = private unnamed_addr constant [32 x i8] c"%s: delimiter pattern too long\0A\00", align 1
@HEAD = internal global i32 0, align 4
@RE_ERR = internal global i32 0, align 4
@TAIL = internal global i32 0, align 4
@DELIMITER = internal global i32 0, align 4
@.str.1.93 = private unnamed_addr constant [55 x i8] c"%s: -d or -w option is not supported for this pattern\0A\00", align 1
@.str.2.94 = private unnamed_addr constant [32 x i8] c"%s: illegal regular expression\0A\00", align 1
@table = internal global [32 x [32 x i32]] zeroinitializer, align 16
@.str.3.95 = private unnamed_addr constant [33 x i8] c"%s: regular expression too long\0A\00", align 1
@TR = internal global [256 x i8] zeroinitializer, align 16
@NOUPPER = internal global i32 0, align 4
@WORDBOUND = internal global i32 0, align 4
@WHOLELINE = internal global i32 0, align 4
@SILENT = internal global i32 0, align 4
@COUNT = internal global i32 0, align 4
@FNAME = internal global i32 0, align 4
@.str.96 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@CurrentFileName = internal global [256 x i8] zeroinitializer, align 16
@shift_1 = internal global i32 0, align 4
@SHIFT = internal global [256 x i8] zeroinitializer, align 16
@num_of_matched = internal global i32 0, align 4
@FILENAMEONLY = internal global i32 0, align 4
@MEMBER = internal global [8192 x i8] zeroinitializer, align 16
@endposition = internal global i32 0, align 4
@Mask = internal global [256 x i32] zeroinitializer, align 16
@Hashmask = internal global i32 0, align 4
@MEMBER_1 = internal global [65536 x i8] zeroinitializer, align 16
@SHIFT_2 = internal global [4096 x i8] zeroinitializer, align 16
@char_map = internal global [256 x i8] zeroinitializer, align 16
@MEMBER_D = internal global ptr null, align 8
@.str.2.97 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1
@BSize = internal global i8 0, align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.3.100 = private unnamed_addr constant [22 x i8] c"%s: pattern too long\0A\00", align 1
@Progname = internal global [256 x i8] zeroinitializer, align 16
@DNA = internal global i32 0, align 4

; Function Attrs: nounwind optsize uwtable
define internal void @asearch0(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca [10 x i32], align 16
  %5 = alloca [10 x i32], align 16
  %6 = alloca [98305 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #31
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #31
  call void @llvm.lifetime.start.p0(i64 98305, ptr nonnull %6) #31
  %7 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #32
  %8 = trunc i64 %7 to i32
  %9 = getelementptr inbounds [98305 x i8], ptr %6, i64 0, i64 49151
  store i8 10, ptr %9, align 1, !tbaa !7
  %10 = load i32, ptr @D_endpos, align 4, !tbaa !10
  %11 = icmp ugt i32 %8, 1
  br i1 %11, label %12, label %19

12:                                               ; preds = %12, %3
  %13 = phi i32 [ %17, %12 ], [ 1, %3 ]
  %14 = phi i32 [ %16, %12 ], [ %10, %3 ]
  %15 = shl i32 %14, 1
  %16 = or i32 %15, %14
  %17 = add nuw i32 %13, 1
  %18 = icmp eq i32 %17, %8
  br i1 %18, label %19, label %12, !llvm.loop !12

19:                                               ; preds = %12, %3
  %20 = phi i32 [ %10, %3 ], [ %16, %12 ]
  %21 = load i32, ptr @Init1, align 4, !tbaa !10
  %22 = load i32, ptr @NO_ERR_MASK, align 4, !tbaa !10
  %23 = load i32, ptr @Init, align 4, !tbaa !10
  %24 = add i32 %2, 1
  %25 = zext i32 %24 to i64
  br label %46

26:                                               ; preds = %46
  %27 = xor i32 %20, -1
  %28 = getelementptr inbounds i8, ptr %6, i64 49152
  %29 = shl i64 %7, 32
  %30 = ashr exact i64 %29, 32
  %31 = icmp eq i32 %2, 0
  %32 = zext i32 %2 to i64
  %33 = getelementptr inbounds [10 x i32], ptr %4, i64 0, i64 %32
  %34 = getelementptr inbounds [10 x i32], ptr %5, i64 0, i64 %32
  %35 = xor i32 %8, -1
  %36 = add nuw nsw i64 %25, 3
  %37 = and i64 %36, 8589934588
  %38 = add nsw i64 %25, -1
  %39 = insertelement <4 x i64> poison, i64 %38, i64 0
  %40 = shufflevector <4 x i64> %39, <4 x i64> poison, <4 x i32> zeroinitializer
  %41 = add nuw nsw i64 %25, 3
  %42 = and i64 %41, 8589934588
  %43 = add nsw i64 %25, -1
  %44 = insertelement <4 x i64> poison, i64 %43, i64 0
  %45 = shufflevector <4 x i64> %44, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %52

46:                                               ; preds = %46, %19
  %47 = phi i64 [ 0, %19 ], [ %50, %46 ]
  %48 = getelementptr inbounds [10 x i32], ptr %5, i64 0, i64 %47
  store i32 %23, ptr %48, align 4, !tbaa !10
  %49 = getelementptr inbounds [10 x i32], ptr %4, i64 0, i64 %47
  store i32 %23, ptr %49, align 4, !tbaa !10
  %50 = add nuw nsw i64 %47, 1
  %51 = icmp eq i64 %50, %25
  br i1 %51, label %26, label %46, !llvm.loop !14

52:                                               ; preds = %327, %26
  %53 = phi i32 [ 49151, %26 ], [ 49152, %327 ]
  %54 = phi i32 [ 49152, %26 ], [ %328, %327 ]
  %55 = phi i32 [ 0, %26 ], [ %310, %327 ]
  %56 = call i32 @fill_buf(i32 noundef %1, ptr noundef nonnull %28, i32 noundef 49152) #33
  %57 = icmp sgt i32 %56, 0
  br i1 %57, label %58, label %333

58:                                               ; preds = %52
  %59 = add nuw nsw i32 %56, 49152
  %60 = icmp ult i32 %56, 49152
  br i1 %60, label %61, label %68

61:                                               ; preds = %58
  %62 = zext i32 %59 to i64
  %63 = getelementptr inbounds i8, ptr %6, i64 %62
  %64 = call ptr @strncpy(ptr noundef nonnull %63, ptr noundef %0, i64 noundef %30) #33
  %65 = add i32 %59, %8
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds [98305 x i8], ptr %6, i64 0, i64 %66
  store i8 0, ptr %67, align 1, !tbaa !7
  br label %68

68:                                               ; preds = %61, %58
  %69 = phi i32 [ %65, %61 ], [ %59, %58 ]
  %70 = icmp ult i32 %53, %69
  br i1 %70, label %71, label %308

71:                                               ; preds = %68
  %72 = add nuw nsw i32 %56, 49151
  %73 = load i32, ptr %5, align 16, !tbaa !10
  br label %74

74:                                               ; preds = %303, %71
  %75 = phi i32 [ %73, %71 ], [ %304, %303 ]
  %76 = phi i32 [ %55, %71 ], [ %306, %303 ]
  %77 = phi i32 [ %53, %71 ], [ %194, %303 ]
  %78 = phi i32 [ %54, %71 ], [ %305, %303 ]
  %79 = add nuw i32 %77, 1
  %80 = zext i32 %77 to i64
  %81 = getelementptr inbounds [98305 x i8], ptr %6, i64 0, i64 %80
  %82 = load i8, ptr %81, align 1, !tbaa !7
  %83 = zext i8 %82 to i64
  %84 = getelementptr inbounds [0 x i32], ptr @Mask, i64 0, i64 %83
  %85 = load i32, ptr %84, align 4, !tbaa !10
  %86 = and i32 %75, %21
  %87 = lshr i32 %75, 1
  %88 = and i32 %87, %85
  %89 = or i32 %88, %86
  store i32 %89, ptr %4, align 16, !tbaa !10
  br i1 %31, label %108, label %90

90:                                               ; preds = %90, %74
  %91 = phi i32 [ %104, %90 ], [ %89, %74 ]
  %92 = phi i32 [ %95, %90 ], [ %75, %74 ]
  %93 = phi i64 [ %106, %90 ], [ 1, %74 ]
  %94 = getelementptr inbounds [10 x i32], ptr %5, i64 0, i64 %93
  %95 = load i32, ptr %94, align 4, !tbaa !10
  %96 = and i32 %95, %21
  %97 = or i32 %91, %92
  %98 = lshr i32 %97, 1
  %99 = and i32 %98, %22
  %100 = lshr i32 %95, 1
  %101 = and i32 %100, %85
  %102 = or i32 %96, %101
  %103 = or i32 %102, %99
  %104 = or i32 %103, %92
  %105 = getelementptr inbounds [10 x i32], ptr %4, i64 0, i64 %93
  store i32 %104, ptr %105, align 4, !tbaa !10
  %106 = add nuw nsw i64 %93, 1
  %107 = icmp eq i64 %106, %25
  br i1 %107, label %108, label %90, !llvm.loop !15

108:                                              ; preds = %90, %74
  %109 = and i32 %89, %10
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %190, label %111

111:                                              ; preds = %108
  %112 = add nsw i32 %76, 1
  %113 = load i32, ptr %33, align 4, !tbaa !10
  %114 = load i32, ptr @AND, align 4, !tbaa !10
  %115 = icmp eq i32 %114, 1
  %116 = load i32, ptr @endposition, align 4
  %117 = and i32 %116, %113
  %118 = icmp eq i32 %117, %116
  %119 = select i1 %115, i1 %118, i1 false
  br i1 %119, label %127, label %120

120:                                              ; preds = %111
  %121 = icmp eq i32 %114, 0
  %122 = icmp ne i32 %117, 0
  %123 = select i1 %121, i1 %122, i1 false
  %124 = zext i1 %123 to i32
  %125 = load i32, ptr @INVERSE, align 4, !tbaa !10
  %126 = icmp eq i32 %125, %124
  br i1 %126, label %134, label %127

127:                                              ; preds = %120, %111
  %128 = load i32, ptr @FILENAMEONLY, align 4, !tbaa !10
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %329

130:                                              ; preds = %127
  %131 = icmp slt i32 %78, %72
  br i1 %131, label %132, label %134

132:                                              ; preds = %130
  %133 = sub i32 %77, %8
  call void @output(ptr noundef nonnull %6, i32 noundef %78, i32 noundef %133, i32 noundef %112) #33
  br label %134

134:                                              ; preds = %132, %130, %120
  %135 = load i32, ptr @Init, align 4, !tbaa !10
  br label %136

136:                                              ; preds = %158, %134
  %137 = phi i64 [ 0, %134 ], [ %159, %158 ]
  %138 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %134 ], [ %160, %158 ]
  %139 = icmp ule <4 x i64> %138, %40
  %140 = extractelement <4 x i1> %139, i64 0
  br i1 %140, label %141, label %143

141:                                              ; preds = %136
  %142 = getelementptr inbounds [10 x i32], ptr %5, i64 0, i64 %137
  store i32 %135, ptr %142, align 16, !tbaa !10
  br label %143

143:                                              ; preds = %141, %136
  %144 = extractelement <4 x i1> %139, i64 1
  br i1 %144, label %145, label %148

145:                                              ; preds = %143
  %146 = or i64 %137, 1
  %147 = getelementptr inbounds [10 x i32], ptr %5, i64 0, i64 %146
  store i32 %135, ptr %147, align 4, !tbaa !10
  br label %148

148:                                              ; preds = %145, %143
  %149 = extractelement <4 x i1> %139, i64 2
  br i1 %149, label %150, label %153

150:                                              ; preds = %148
  %151 = or i64 %137, 2
  %152 = getelementptr inbounds [10 x i32], ptr %5, i64 0, i64 %151
  store i32 %135, ptr %152, align 8, !tbaa !10
  br label %153

153:                                              ; preds = %150, %148
  %154 = extractelement <4 x i1> %139, i64 3
  br i1 %154, label %155, label %158

155:                                              ; preds = %153
  %156 = or i64 %137, 3
  %157 = getelementptr inbounds [10 x i32], ptr %5, i64 0, i64 %156
  store i32 %135, ptr %157, align 4, !tbaa !10
  br label %158

158:                                              ; preds = %155, %153
  %159 = add i64 %137, 4
  %160 = add <4 x i64> %138, <i64 4, i64 4, i64 4, i64 4>
  %161 = icmp eq i64 %159, %37
  br i1 %161, label %162, label %136, !llvm.loop !16

162:                                              ; preds = %158
  %163 = sub i32 %79, %8
  %164 = load i32, ptr %5, align 16, !tbaa !10
  %165 = and i32 %164, %21
  %166 = lshr i32 %164, 1
  %167 = and i32 %166, %85
  %168 = or i32 %167, %165
  %169 = and i32 %168, %27
  store i32 %169, ptr %4, align 16, !tbaa !10
  br i1 %31, label %190, label %170

170:                                              ; preds = %162
  %171 = load i32, ptr @Init1, align 4, !tbaa !10
  br label %172

172:                                              ; preds = %172, %170
  %173 = phi i32 [ %169, %170 ], [ %186, %172 ]
  %174 = phi i32 [ %164, %170 ], [ %177, %172 ]
  %175 = phi i64 [ 1, %170 ], [ %188, %172 ]
  %176 = getelementptr inbounds [10 x i32], ptr %5, i64 0, i64 %175
  %177 = load i32, ptr %176, align 4, !tbaa !10
  %178 = and i32 %177, %171
  %179 = or i32 %173, %174
  %180 = lshr i32 %179, 1
  %181 = and i32 %180, %22
  %182 = lshr i32 %177, 1
  %183 = and i32 %182, %85
  %184 = or i32 %178, %183
  %185 = or i32 %184, %181
  %186 = or i32 %185, %174
  %187 = getelementptr inbounds [10 x i32], ptr %4, i64 0, i64 %175
  store i32 %186, ptr %187, align 4, !tbaa !10
  %188 = add nuw nsw i64 %175, 1
  %189 = icmp eq i64 %188, %25
  br i1 %189, label %190, label %172, !llvm.loop !19

190:                                              ; preds = %172, %162, %108
  %191 = phi i32 [ %89, %108 ], [ %169, %162 ], [ %169, %172 ]
  %192 = phi i32 [ %78, %108 ], [ %163, %162 ], [ %163, %172 ]
  %193 = phi i32 [ %76, %108 ], [ %112, %162 ], [ %112, %172 ]
  %194 = add i32 %77, 2
  %195 = zext i32 %79 to i64
  %196 = getelementptr inbounds [98305 x i8], ptr %6, i64 0, i64 %195
  %197 = load i8, ptr %196, align 1, !tbaa !7
  %198 = zext i8 %197 to i64
  %199 = getelementptr inbounds [0 x i32], ptr @Mask, i64 0, i64 %198
  %200 = load i32, ptr %199, align 4, !tbaa !10
  %201 = and i32 %191, %21
  %202 = lshr i32 %191, 1
  %203 = and i32 %202, %200
  %204 = or i32 %203, %201
  store i32 %204, ptr %5, align 16, !tbaa !10
  br i1 %31, label %223, label %205

205:                                              ; preds = %205, %190
  %206 = phi i32 [ %219, %205 ], [ %204, %190 ]
  %207 = phi i32 [ %210, %205 ], [ %191, %190 ]
  %208 = phi i64 [ %221, %205 ], [ 1, %190 ]
  %209 = getelementptr inbounds [10 x i32], ptr %4, i64 0, i64 %208
  %210 = load i32, ptr %209, align 4, !tbaa !10
  %211 = and i32 %210, %21
  %212 = or i32 %206, %207
  %213 = lshr i32 %212, 1
  %214 = and i32 %213, %22
  %215 = lshr i32 %210, 1
  %216 = and i32 %215, %200
  %217 = or i32 %211, %216
  %218 = or i32 %217, %214
  %219 = or i32 %218, %207
  %220 = getelementptr inbounds [10 x i32], ptr %5, i64 0, i64 %208
  store i32 %219, ptr %220, align 4, !tbaa !10
  %221 = add nuw nsw i64 %208, 1
  %222 = icmp eq i64 %221, %25
  br i1 %222, label %223, label %205, !llvm.loop !20

223:                                              ; preds = %205, %190
  %224 = and i32 %204, %10
  %225 = icmp eq i32 %224, 0
  br i1 %225, label %303, label %226

226:                                              ; preds = %223
  %227 = add nsw i32 %193, 1
  %228 = load i32, ptr %34, align 4, !tbaa !10
  %229 = load i32, ptr @AND, align 4, !tbaa !10
  %230 = icmp eq i32 %229, 1
  %231 = load i32, ptr @endposition, align 4
  %232 = and i32 %231, %228
  %233 = icmp eq i32 %232, %231
  %234 = select i1 %230, i1 %233, i1 false
  br i1 %234, label %242, label %235

235:                                              ; preds = %226
  %236 = icmp eq i32 %229, 0
  %237 = icmp ne i32 %232, 0
  %238 = select i1 %236, i1 %237, i1 false
  %239 = zext i1 %238 to i32
  %240 = load i32, ptr @INVERSE, align 4, !tbaa !10
  %241 = icmp eq i32 %240, %239
  br i1 %241, label %249, label %242

242:                                              ; preds = %235, %226
  %243 = load i32, ptr @FILENAMEONLY, align 4, !tbaa !10
  %244 = icmp eq i32 %243, 0
  br i1 %244, label %245, label %329

245:                                              ; preds = %242
  %246 = icmp slt i32 %192, %72
  br i1 %246, label %247, label %249

247:                                              ; preds = %245
  %248 = add i32 %194, %35
  call void @output(ptr noundef nonnull %6, i32 noundef %192, i32 noundef %248, i32 noundef %227) #33
  br label %249

249:                                              ; preds = %247, %245, %235
  %250 = load i32, ptr @Init, align 4, !tbaa !10
  br label %251

251:                                              ; preds = %273, %249
  %252 = phi i64 [ 0, %249 ], [ %274, %273 ]
  %253 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %249 ], [ %275, %273 ]
  %254 = icmp ule <4 x i64> %253, %45
  %255 = extractelement <4 x i1> %254, i64 0
  br i1 %255, label %256, label %258

256:                                              ; preds = %251
  %257 = getelementptr inbounds [10 x i32], ptr %4, i64 0, i64 %252
  store i32 %250, ptr %257, align 16, !tbaa !10
  br label %258

258:                                              ; preds = %256, %251
  %259 = extractelement <4 x i1> %254, i64 1
  br i1 %259, label %260, label %263

260:                                              ; preds = %258
  %261 = or i64 %252, 1
  %262 = getelementptr inbounds [10 x i32], ptr %4, i64 0, i64 %261
  store i32 %250, ptr %262, align 4, !tbaa !10
  br label %263

263:                                              ; preds = %260, %258
  %264 = extractelement <4 x i1> %254, i64 2
  br i1 %264, label %265, label %268

265:                                              ; preds = %263
  %266 = or i64 %252, 2
  %267 = getelementptr inbounds [10 x i32], ptr %4, i64 0, i64 %266
  store i32 %250, ptr %267, align 8, !tbaa !10
  br label %268

268:                                              ; preds = %265, %263
  %269 = extractelement <4 x i1> %254, i64 3
  br i1 %269, label %270, label %273

270:                                              ; preds = %268
  %271 = or i64 %252, 3
  %272 = getelementptr inbounds [10 x i32], ptr %4, i64 0, i64 %271
  store i32 %250, ptr %272, align 4, !tbaa !10
  br label %273

273:                                              ; preds = %270, %268
  %274 = add i64 %252, 4
  %275 = add <4 x i64> %253, <i64 4, i64 4, i64 4, i64 4>
  %276 = icmp eq i64 %274, %42
  br i1 %276, label %277, label %251, !llvm.loop !21

277:                                              ; preds = %273
  %278 = sub i32 %194, %8
  %279 = load i32, ptr %4, align 16, !tbaa !10
  %280 = and i32 %279, %21
  %281 = lshr i32 %279, 1
  %282 = and i32 %281, %200
  %283 = or i32 %282, %280
  %284 = and i32 %283, %27
  store i32 %284, ptr %5, align 16, !tbaa !10
  br i1 %31, label %303, label %285

285:                                              ; preds = %285, %277
  %286 = phi i32 [ %299, %285 ], [ %284, %277 ]
  %287 = phi i32 [ %290, %285 ], [ %279, %277 ]
  %288 = phi i64 [ %301, %285 ], [ 1, %277 ]
  %289 = getelementptr inbounds [10 x i32], ptr %4, i64 0, i64 %288
  %290 = load i32, ptr %289, align 4, !tbaa !10
  %291 = and i32 %290, %21
  %292 = or i32 %286, %287
  %293 = lshr i32 %292, 1
  %294 = and i32 %293, %22
  %295 = lshr i32 %290, 1
  %296 = and i32 %295, %200
  %297 = or i32 %291, %296
  %298 = or i32 %297, %294
  %299 = or i32 %298, %287
  %300 = getelementptr inbounds [10 x i32], ptr %5, i64 0, i64 %288
  store i32 %299, ptr %300, align 4, !tbaa !10
  %301 = add nuw nsw i64 %288, 1
  %302 = icmp eq i64 %301, %25
  br i1 %302, label %303, label %285, !llvm.loop !22

303:                                              ; preds = %285, %277, %223
  %304 = phi i32 [ %204, %223 ], [ %284, %277 ], [ %284, %285 ]
  %305 = phi i32 [ %192, %223 ], [ %278, %277 ], [ %278, %285 ]
  %306 = phi i32 [ %193, %223 ], [ %227, %277 ], [ %227, %285 ]
  %307 = icmp ult i32 %194, %69
  br i1 %307, label %74, label %308, !llvm.loop !23

308:                                              ; preds = %303, %68
  %309 = phi i32 [ %54, %68 ], [ %305, %303 ]
  %310 = phi i32 [ %55, %68 ], [ %306, %303 ]
  br i1 %60, label %327, label %311

311:                                              ; preds = %308
  %312 = sub nsw i32 %59, %309
  %313 = icmp sgt i32 %312, 49152
  br i1 %313, label %314, label %315

314:                                              ; preds = %311
  store i32 1, ptr @TRUNCATE, align 4, !tbaa !10
  br label %315

315:                                              ; preds = %314, %311
  %316 = phi i32 [ 49152, %314 ], [ %312, %311 ]
  %317 = freeze i32 %316
  %318 = sext i32 %317 to i64
  %319 = sub nsw i64 0, %318
  %320 = getelementptr inbounds i8, ptr %28, i64 %319
  %321 = sext i32 %309 to i64
  %322 = getelementptr inbounds i8, ptr %6, i64 %321
  %323 = call ptr @strncpy(ptr noundef nonnull %320, ptr noundef nonnull %322, i64 noundef %318) #33
  %324 = sub nsw i32 49152, %317
  %325 = icmp eq i32 %317, 49152
  %326 = select i1 %325, i32 1, i32 %324
  br label %327

327:                                              ; preds = %315, %308
  %328 = phi i32 [ %326, %315 ], [ 49152, %308 ]
  br label %52, !llvm.loop !24

329:                                              ; preds = %242, %127
  %330 = load i32, ptr @num_of_matched, align 4, !tbaa !10
  %331 = add nsw i32 %330, 1
  store i32 %331, ptr @num_of_matched, align 4, !tbaa !10
  %332 = call i32 @puts(ptr nonnull dereferenceable(1) @CurrentFileName)
  br label %333

333:                                              ; preds = %329, %52
  call void @llvm.lifetime.end.p0(i64 98305, ptr nonnull %6) #31
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #31
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #31
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind optsize uwtable
define internal void @asearch(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca [9 x i32], align 16
  %5 = alloca [9 x i32], align 16
  %6 = alloca [98305 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #31
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %5) #31
  call void @llvm.lifetime.start.p0(i64 98305, ptr nonnull %6) #31
  %7 = load i32, ptr @I, align 4, !tbaa !10
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %3
  store i32 -1, ptr @Init1, align 4, !tbaa !10
  br label %10

10:                                               ; preds = %9, %3
  %11 = icmp ugt i32 %2, 4
  br i1 %11, label %12, label %13

12:                                               ; preds = %10
  tail call void @asearch0(ptr noundef %0, i32 noundef %1, i32 noundef %2) #34
  br label %492

13:                                               ; preds = %10
  %14 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #32
  %15 = trunc i64 %14 to i32
  %16 = getelementptr inbounds [98305 x i8], ptr %6, i64 0, i64 49151
  store i8 10, ptr %16, align 1, !tbaa !7
  %17 = load i32, ptr @D_endpos, align 4, !tbaa !10
  %18 = icmp ugt i32 %15, 1
  br i1 %18, label %19, label %26

19:                                               ; preds = %19, %13
  %20 = phi i32 [ %24, %19 ], [ 1, %13 ]
  %21 = phi i32 [ %23, %19 ], [ %17, %13 ]
  %22 = shl i32 %21, 1
  %23 = or i32 %22, %21
  %24 = add nuw i32 %20, 1
  %25 = icmp eq i32 %24, %15
  br i1 %25, label %26, label %19, !llvm.loop !25

26:                                               ; preds = %19, %13
  %27 = phi i32 [ %17, %13 ], [ %23, %19 ]
  %28 = load i32, ptr @Init1, align 4, !tbaa !10
  %29 = load i32, ptr @NO_ERR_MASK, align 4, !tbaa !10
  %30 = load i32, ptr @Init, align 4, !tbaa !10
  %31 = add i32 %2, 1
  %32 = zext i32 %31 to i64
  br label %67

33:                                               ; preds = %67
  %34 = xor i32 %27, -1
  %35 = getelementptr inbounds i8, ptr %6, i64 49152
  %36 = icmp slt i32 %15, 1
  %37 = shl i64 %14, 32
  %38 = ashr exact i64 %37, 32
  %39 = icmp eq i32 %2, 1
  %40 = icmp eq i32 %2, 2
  %41 = icmp eq i32 %2, 3
  %42 = icmp eq i32 %2, 4
  %43 = icmp eq i32 %2, 0
  %44 = getelementptr inbounds [9 x i32], ptr %4, i64 0, i64 1
  %45 = getelementptr inbounds [9 x i32], ptr %4, i64 0, i64 2
  %46 = getelementptr inbounds [9 x i32], ptr %5, i64 0, i64 2
  %47 = getelementptr inbounds [9 x i32], ptr %4, i64 0, i64 3
  %48 = getelementptr inbounds [9 x i32], ptr %5, i64 0, i64 3
  %49 = getelementptr inbounds [9 x i32], ptr %4, i64 0, i64 4
  %50 = getelementptr inbounds [9 x i32], ptr %5, i64 0, i64 4
  %51 = xor i32 %15, -1
  %52 = getelementptr inbounds [9 x i32], ptr %5, i64 0, i64 1
  %53 = shl i64 %14, 32
  %54 = ashr exact i64 %53, 32
  %55 = and i64 %14, 4294967295
  %56 = getelementptr inbounds [98305 x i8], ptr %6, i64 0, i64 49152
  %57 = add nuw nsw i64 %32, 3
  %58 = and i64 %57, 8589934588
  %59 = add nsw i64 %32, -1
  %60 = insertelement <4 x i64> poison, i64 %59, i64 0
  %61 = shufflevector <4 x i64> %60, <4 x i64> poison, <4 x i32> zeroinitializer
  %62 = add nuw nsw i64 %32, 3
  %63 = and i64 %62, 8589934588
  %64 = add nsw i64 %32, -1
  %65 = insertelement <4 x i64> poison, i64 %64, i64 0
  %66 = shufflevector <4 x i64> %65, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %73

67:                                               ; preds = %67, %26
  %68 = phi i64 [ 0, %26 ], [ %71, %67 ]
  %69 = getelementptr inbounds [9 x i32], ptr %5, i64 0, i64 %68
  store i32 %30, ptr %69, align 4, !tbaa !10
  %70 = getelementptr inbounds [9 x i32], ptr %4, i64 0, i64 %68
  store i32 %30, ptr %70, align 4, !tbaa !10
  %71 = add nuw nsw i64 %68, 1
  %72 = icmp eq i64 %71, %32
  br i1 %72, label %33, label %67, !llvm.loop !26

73:                                               ; preds = %490, %33
  %74 = phi i32 [ %30, %33 ], [ %464, %490 ]
  %75 = phi i32 [ %30, %33 ], [ %465, %490 ]
  %76 = phi i32 [ %30, %33 ], [ %466, %490 ]
  %77 = phi i32 [ %30, %33 ], [ %467, %490 ]
  %78 = phi i32 [ %30, %33 ], [ %468, %490 ]
  %79 = phi i32 [ %30, %33 ], [ %469, %490 ]
  %80 = phi i32 [ %30, %33 ], [ %470, %490 ]
  %81 = phi i32 [ %30, %33 ], [ %471, %490 ]
  %82 = phi i1 [ false, %33 ], [ true, %490 ]
  %83 = phi i32 [ 49152, %33 ], [ %491, %490 ]
  %84 = phi i32 [ 0, %33 ], [ %473, %490 ]
  %85 = call i32 @fill_buf(i32 noundef %1, ptr noundef nonnull %35, i32 noundef 49152) #33
  %86 = icmp sgt i32 %85, 0
  br i1 %86, label %87, label %492

87:                                               ; preds = %73
  %88 = add nuw nsw i32 %85, 49152
  br i1 %82, label %114, label %89

89:                                               ; preds = %87
  %90 = load i32, ptr @DELIMITER, align 4, !tbaa !10
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %114, label %92

92:                                               ; preds = %89
  br i1 %36, label %110, label %93

93:                                               ; preds = %92
  %94 = load i8, ptr %0, align 1, !tbaa !7
  %95 = load i8, ptr %56, align 16, !tbaa !7
  %96 = icmp eq i8 %94, %95
  br i1 %96, label %97, label %110

97:                                               ; preds = %101, %93
  %98 = phi i64 [ %99, %101 ], [ 0, %93 ]
  %99 = add nuw nsw i64 %98, 1
  %100 = icmp eq i64 %99, %55
  br i1 %100, label %108, label %101, !llvm.loop !27

101:                                              ; preds = %97
  %102 = getelementptr inbounds i8, ptr %0, i64 %99
  %103 = load i8, ptr %102, align 1, !tbaa !7
  %104 = add nuw nsw i64 %98, 49153
  %105 = getelementptr inbounds [98305 x i8], ptr %6, i64 0, i64 %104
  %106 = load i8, ptr %105, align 1, !tbaa !7
  %107 = icmp eq i8 %103, %106
  br i1 %107, label %97, label %108, !llvm.loop !27

108:                                              ; preds = %101, %97
  %.lcssa = phi i64 [ %99, %101 ], [ %99, %97 ]
  %109 = icmp sge i64 %.lcssa, %54
  br label %110

110:                                              ; preds = %108, %93, %92
  %111 = phi i1 [ true, %92 ], [ false, %93 ], [ %109, %108 ]
  %112 = sext i1 %111 to i32
  %113 = add nsw i32 %84, %112
  br label %114

114:                                              ; preds = %110, %89, %87
  %115 = phi i32 [ 49152, %87 ], [ 49151, %110 ], [ 49151, %89 ]
  %116 = phi i32 [ %84, %87 ], [ %113, %110 ], [ %84, %89 ]
  %117 = icmp slt i32 %85, 49152
  br i1 %117, label %118, label %125

118:                                              ; preds = %114
  %119 = zext i32 %88 to i64
  %120 = getelementptr inbounds i8, ptr %6, i64 %119
  %121 = call ptr @strncpy(ptr noundef nonnull %120, ptr noundef %0, i64 noundef %38) #33
  %122 = add i32 %88, %15
  %123 = zext i32 %122 to i64
  %124 = getelementptr inbounds [98305 x i8], ptr %6, i64 0, i64 %123
  store i8 0, ptr %124, align 1, !tbaa !7
  br label %125

125:                                              ; preds = %118, %114
  %126 = phi i32 [ %122, %118 ], [ %88, %114 ]
  %127 = icmp ult i32 %115, %126
  br i1 %127, label %128, label %463

128:                                              ; preds = %125
  %129 = add nsw i32 %85, 49151
  br label %130

130:                                              ; preds = %451, %128
  %131 = phi i32 [ %116, %128 ], [ %461, %451 ]
  %132 = phi i32 [ %115, %128 ], [ %355, %451 ]
  %133 = phi i32 [ %83, %128 ], [ %460, %451 ]
  %134 = phi i32 [ %81, %128 ], [ %459, %451 ]
  %135 = phi i32 [ %80, %128 ], [ %458, %451 ]
  %136 = phi i32 [ %79, %128 ], [ %457, %451 ]
  %137 = phi i32 [ %78, %128 ], [ %456, %451 ]
  %138 = phi i32 [ %77, %128 ], [ %455, %451 ]
  %139 = phi i32 [ %76, %128 ], [ %454, %451 ]
  %140 = phi i32 [ %75, %128 ], [ %453, %451 ]
  %141 = phi i32 [ %74, %128 ], [ %452, %451 ]
  %142 = zext i32 %132 to i64
  %143 = getelementptr inbounds [98305 x i8], ptr %6, i64 0, i64 %142
  %144 = load i8, ptr %143, align 1, !tbaa !7
  %145 = zext i8 %144 to i64
  %146 = getelementptr inbounds [0 x i32], ptr @Mask, i64 0, i64 %145
  %147 = load i32, ptr %146, align 4, !tbaa !10
  %148 = and i32 %141, %28
  %149 = lshr i32 %141, 1
  %150 = and i32 %147, %149
  %151 = or i32 %150, %148
  %152 = and i32 %140, %28
  %153 = or i32 %150, %141
  %154 = lshr i32 %153, 1
  %155 = and i32 %154, %29
  %156 = lshr i32 %140, 1
  %157 = and i32 %147, %156
  %158 = or i32 %152, %157
  %159 = or i32 %158, %155
  %160 = or i32 %159, %141
  br i1 %39, label %191, label %161

161:                                              ; preds = %130
  %162 = and i32 %138, %28
  %163 = or i32 %160, %140
  %164 = lshr i32 %163, 1
  %165 = and i32 %164, %29
  %166 = lshr i32 %138, 1
  %167 = and i32 %147, %166
  %168 = or i32 %162, %167
  %169 = or i32 %168, %165
  %170 = or i32 %169, %140
  br i1 %40, label %191, label %171

171:                                              ; preds = %161
  %172 = and i32 %136, %28
  %173 = or i32 %170, %138
  %174 = lshr i32 %173, 1
  %175 = and i32 %174, %29
  %176 = lshr i32 %136, 1
  %177 = and i32 %147, %176
  %178 = or i32 %172, %177
  %179 = or i32 %178, %175
  %180 = or i32 %179, %138
  br i1 %41, label %191, label %181

181:                                              ; preds = %171
  %182 = and i32 %134, %28
  %183 = or i32 %180, %136
  %184 = lshr i32 %183, 1
  %185 = and i32 %184, %29
  %186 = lshr i32 %134, 1
  %187 = and i32 %147, %186
  %188 = or i32 %182, %187
  %189 = or i32 %188, %185
  %190 = or i32 %189, %136
  br label %191

191:                                              ; preds = %181, %171, %161, %130
  %192 = phi i32 [ %139, %130 ], [ %170, %161 ], [ %170, %171 ], [ %170, %181 ]
  %193 = phi i32 [ %137, %130 ], [ %137, %161 ], [ %180, %171 ], [ %180, %181 ]
  %194 = phi i32 [ %135, %130 ], [ %135, %161 ], [ %135, %171 ], [ %190, %181 ]
  %195 = add nuw i32 %132, 1
  %196 = and i32 %151, %17
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %291, label %198

198:                                              ; preds = %191
  %199 = add nsw i32 %131, 1
  %200 = select i1 %39, i32 %160, i32 %151
  %201 = select i1 %40, i32 %192, i32 %200
  %202 = select i1 %41, i32 %193, i32 %201
  %203 = select i1 %42, i32 %194, i32 %202
  %204 = load i32, ptr @AND, align 4, !tbaa !10
  %205 = icmp eq i32 %204, 1
  %206 = load i32, ptr @endposition, align 4
  %207 = and i32 %206, %203
  %208 = icmp eq i32 %207, %206
  %209 = select i1 %205, i1 %208, i1 false
  br i1 %209, label %217, label %210

210:                                              ; preds = %198
  %211 = icmp eq i32 %204, 0
  %212 = icmp ne i32 %207, 0
  %213 = select i1 %211, i1 %212, i1 false
  %214 = zext i1 %213 to i32
  %215 = load i32, ptr @INVERSE, align 4, !tbaa !10
  %216 = icmp eq i32 %215, %214
  br i1 %216, label %228, label %217

217:                                              ; preds = %210, %198
  %218 = load i32, ptr @FILENAMEONLY, align 4, !tbaa !10
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %224, label %220

220:                                              ; preds = %217
  %221 = load i32, ptr @num_of_matched, align 4, !tbaa !10
  %222 = add nsw i32 %221, 1
  store i32 %222, ptr @num_of_matched, align 4, !tbaa !10
  %223 = call i32 @puts(ptr nonnull dereferenceable(1) @CurrentFileName)
  br label %492

224:                                              ; preds = %217
  %225 = icmp slt i32 %133, %129
  br i1 %225, label %226, label %228

226:                                              ; preds = %224
  %227 = sub i32 %132, %15
  call void @output(ptr noundef nonnull %6, i32 noundef %133, i32 noundef %227, i32 noundef %199) #33
  br label %228

228:                                              ; preds = %226, %224, %210
  store i32 0, ptr @TRUNCATE, align 4, !tbaa !10
  %229 = load i32, ptr @Init, align 4, !tbaa !10
  br label %230

230:                                              ; preds = %252, %228
  %231 = phi i64 [ 0, %228 ], [ %253, %252 ]
  %232 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %228 ], [ %254, %252 ]
  %233 = icmp ule <4 x i64> %232, %61
  %234 = extractelement <4 x i1> %233, i64 0
  br i1 %234, label %235, label %237

235:                                              ; preds = %230
  %236 = getelementptr inbounds [9 x i32], ptr %5, i64 0, i64 %231
  store i32 %229, ptr %236, align 16, !tbaa !10
  br label %237

237:                                              ; preds = %235, %230
  %238 = extractelement <4 x i1> %233, i64 1
  br i1 %238, label %239, label %242

239:                                              ; preds = %237
  %240 = or i64 %231, 1
  %241 = getelementptr inbounds [9 x i32], ptr %5, i64 0, i64 %240
  store i32 %229, ptr %241, align 4, !tbaa !10
  br label %242

242:                                              ; preds = %239, %237
  %243 = extractelement <4 x i1> %233, i64 2
  br i1 %243, label %244, label %247

244:                                              ; preds = %242
  %245 = or i64 %231, 2
  %246 = getelementptr inbounds [9 x i32], ptr %5, i64 0, i64 %245
  store i32 %229, ptr %246, align 8, !tbaa !10
  br label %247

247:                                              ; preds = %244, %242
  %248 = extractelement <4 x i1> %233, i64 3
  br i1 %248, label %249, label %252

249:                                              ; preds = %247
  %250 = or i64 %231, 3
  %251 = getelementptr inbounds [9 x i32], ptr %5, i64 0, i64 %250
  store i32 %229, ptr %251, align 4, !tbaa !10
  br label %252

252:                                              ; preds = %249, %247
  %253 = add i64 %231, 4
  %254 = add <4 x i64> %232, <i64 4, i64 4, i64 4, i64 4>
  %255 = icmp eq i64 %253, %58
  br i1 %255, label %256, label %230, !llvm.loop !28

256:                                              ; preds = %252
  %257 = sub i32 %195, %15
  %258 = load i32, ptr %5, align 16, !tbaa !10
  %259 = load i32, ptr @Init1, align 4, !tbaa !10
  %260 = and i32 %259, %258
  %261 = lshr i32 %258, 1
  %262 = and i32 %261, %147
  %263 = or i32 %262, %260
  %264 = and i32 %263, %34
  store i32 %264, ptr %4, align 16, !tbaa !10
  br i1 %43, label %283, label %265

265:                                              ; preds = %265, %256
  %266 = phi i32 [ %279, %265 ], [ %264, %256 ]
  %267 = phi i32 [ %270, %265 ], [ %258, %256 ]
  %268 = phi i64 [ %281, %265 ], [ 1, %256 ]
  %269 = getelementptr inbounds [9 x i32], ptr %5, i64 0, i64 %268
  %270 = load i32, ptr %269, align 4, !tbaa !10
  %271 = and i32 %270, %259
  %272 = or i32 %266, %267
  %273 = lshr i32 %272, 1
  %274 = and i32 %273, %29
  %275 = lshr i32 %270, 1
  %276 = and i32 %275, %147
  %277 = or i32 %271, %276
  %278 = or i32 %277, %274
  %279 = or i32 %278, %267
  %280 = getelementptr inbounds [9 x i32], ptr %4, i64 0, i64 %268
  store i32 %279, ptr %280, align 4, !tbaa !10
  %281 = add nuw nsw i64 %268, 1
  %282 = icmp eq i64 %281, %32
  br i1 %282, label %283, label %265, !llvm.loop !29

283:                                              ; preds = %265, %256
  %284 = load i32, ptr %44, align 4, !tbaa !10
  %285 = load i32, ptr %45, align 8, !tbaa !10
  %286 = load i32, ptr %46, align 8, !tbaa !10
  %287 = load i32, ptr %47, align 4, !tbaa !10
  %288 = load i32, ptr %48, align 4, !tbaa !10
  %289 = load i32, ptr %49, align 16, !tbaa !10
  %290 = load i32, ptr %50, align 16, !tbaa !10
  br label %291

291:                                              ; preds = %283, %191
  %292 = phi i32 [ %264, %283 ], [ %151, %191 ]
  %293 = phi i32 [ %284, %283 ], [ %160, %191 ]
  %294 = phi i32 [ %285, %283 ], [ %192, %191 ]
  %295 = phi i32 [ %286, %283 ], [ %138, %191 ]
  %296 = phi i32 [ %287, %283 ], [ %193, %191 ]
  %297 = phi i32 [ %288, %283 ], [ %136, %191 ]
  %298 = phi i32 [ %289, %283 ], [ %194, %191 ]
  %299 = phi i32 [ %290, %283 ], [ %134, %191 ]
  %300 = phi i32 [ %257, %283 ], [ %133, %191 ]
  %301 = phi i32 [ %199, %283 ], [ %131, %191 ]
  %302 = zext i32 %195 to i64
  %303 = getelementptr inbounds [98305 x i8], ptr %6, i64 0, i64 %302
  %304 = load i8, ptr %303, align 1, !tbaa !7
  %305 = zext i8 %304 to i64
  %306 = getelementptr inbounds [0 x i32], ptr @Mask, i64 0, i64 %305
  %307 = load i32, ptr %306, align 4, !tbaa !10
  %308 = and i32 %292, %28
  %309 = lshr i32 %292, 1
  %310 = and i32 %307, %309
  %311 = or i32 %310, %308
  %312 = and i32 %293, %28
  %313 = or i32 %310, %292
  %314 = lshr i32 %313, 1
  %315 = and i32 %314, %29
  %316 = lshr i32 %293, 1
  %317 = and i32 %307, %316
  %318 = or i32 %312, %317
  %319 = or i32 %318, %315
  %320 = or i32 %319, %292
  br i1 %39, label %351, label %321

321:                                              ; preds = %291
  %322 = and i32 %294, %28
  %323 = or i32 %320, %293
  %324 = lshr i32 %323, 1
  %325 = and i32 %324, %29
  %326 = lshr i32 %294, 1
  %327 = and i32 %307, %326
  %328 = or i32 %322, %327
  %329 = or i32 %328, %325
  %330 = or i32 %329, %293
  br i1 %40, label %351, label %331

331:                                              ; preds = %321
  %332 = and i32 %296, %28
  %333 = or i32 %330, %294
  %334 = lshr i32 %333, 1
  %335 = and i32 %334, %29
  %336 = lshr i32 %296, 1
  %337 = and i32 %307, %336
  %338 = or i32 %332, %337
  %339 = or i32 %338, %335
  %340 = or i32 %339, %294
  br i1 %41, label %351, label %341

341:                                              ; preds = %331
  %342 = and i32 %298, %28
  %343 = or i32 %340, %296
  %344 = lshr i32 %343, 1
  %345 = and i32 %344, %29
  %346 = lshr i32 %298, 1
  %347 = and i32 %307, %346
  %348 = or i32 %342, %347
  %349 = or i32 %348, %345
  %350 = or i32 %349, %296
  br label %351

351:                                              ; preds = %341, %331, %321, %291
  %352 = phi i32 [ %295, %291 ], [ %330, %321 ], [ %330, %331 ], [ %330, %341 ]
  %353 = phi i32 [ %297, %291 ], [ %297, %321 ], [ %340, %331 ], [ %340, %341 ]
  %354 = phi i32 [ %299, %291 ], [ %299, %321 ], [ %299, %331 ], [ %350, %341 ]
  %355 = add i32 %132, 2
  %356 = and i32 %311, %17
  %357 = icmp eq i32 %356, 0
  br i1 %357, label %451, label %358

358:                                              ; preds = %351
  %359 = add nsw i32 %301, 1
  %360 = select i1 %39, i32 %320, i32 %311
  %361 = select i1 %40, i32 %352, i32 %360
  %362 = select i1 %41, i32 %353, i32 %361
  %363 = select i1 %42, i32 %354, i32 %362
  %364 = load i32, ptr @AND, align 4, !tbaa !10
  %365 = icmp eq i32 %364, 1
  %366 = load i32, ptr @endposition, align 4
  %367 = and i32 %366, %363
  %368 = icmp eq i32 %367, %366
  %369 = select i1 %365, i1 %368, i1 false
  br i1 %369, label %377, label %370

370:                                              ; preds = %358
  %371 = icmp eq i32 %364, 0
  %372 = icmp ne i32 %367, 0
  %373 = select i1 %371, i1 %372, i1 false
  %374 = zext i1 %373 to i32
  %375 = load i32, ptr @INVERSE, align 4, !tbaa !10
  %376 = icmp eq i32 %375, %374
  br i1 %376, label %388, label %377

377:                                              ; preds = %370, %358
  %378 = load i32, ptr @FILENAMEONLY, align 4, !tbaa !10
  %379 = icmp eq i32 %378, 0
  br i1 %379, label %384, label %380

380:                                              ; preds = %377
  %381 = load i32, ptr @num_of_matched, align 4, !tbaa !10
  %382 = add nsw i32 %381, 1
  store i32 %382, ptr @num_of_matched, align 4, !tbaa !10
  %383 = call i32 @puts(ptr nonnull dereferenceable(1) @CurrentFileName)
  br label %492

384:                                              ; preds = %377
  %385 = icmp slt i32 %300, %129
  br i1 %385, label %386, label %388

386:                                              ; preds = %384
  %387 = add i32 %355, %51
  call void @output(ptr noundef nonnull %6, i32 noundef %300, i32 noundef %387, i32 noundef %359) #33
  br label %388

388:                                              ; preds = %386, %384, %370
  store i32 0, ptr @TRUNCATE, align 4, !tbaa !10
  %389 = load i32, ptr @Init, align 4, !tbaa !10
  br label %390

390:                                              ; preds = %412, %388
  %391 = phi i64 [ 0, %388 ], [ %413, %412 ]
  %392 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %388 ], [ %414, %412 ]
  %393 = icmp ule <4 x i64> %392, %66
  %394 = extractelement <4 x i1> %393, i64 0
  br i1 %394, label %395, label %397

395:                                              ; preds = %390
  %396 = getelementptr inbounds [9 x i32], ptr %4, i64 0, i64 %391
  store i32 %389, ptr %396, align 16, !tbaa !10
  br label %397

397:                                              ; preds = %395, %390
  %398 = extractelement <4 x i1> %393, i64 1
  br i1 %398, label %399, label %402

399:                                              ; preds = %397
  %400 = or i64 %391, 1
  %401 = getelementptr inbounds [9 x i32], ptr %4, i64 0, i64 %400
  store i32 %389, ptr %401, align 4, !tbaa !10
  br label %402

402:                                              ; preds = %399, %397
  %403 = extractelement <4 x i1> %393, i64 2
  br i1 %403, label %404, label %407

404:                                              ; preds = %402
  %405 = or i64 %391, 2
  %406 = getelementptr inbounds [9 x i32], ptr %4, i64 0, i64 %405
  store i32 %389, ptr %406, align 8, !tbaa !10
  br label %407

407:                                              ; preds = %404, %402
  %408 = extractelement <4 x i1> %393, i64 3
  br i1 %408, label %409, label %412

409:                                              ; preds = %407
  %410 = or i64 %391, 3
  %411 = getelementptr inbounds [9 x i32], ptr %4, i64 0, i64 %410
  store i32 %389, ptr %411, align 4, !tbaa !10
  br label %412

412:                                              ; preds = %409, %407
  %413 = add i64 %391, 4
  %414 = add <4 x i64> %392, <i64 4, i64 4, i64 4, i64 4>
  %415 = icmp eq i64 %413, %63
  br i1 %415, label %416, label %390, !llvm.loop !30

416:                                              ; preds = %412
  %417 = sub i32 %355, %15
  %418 = load i32, ptr %4, align 16, !tbaa !10
  %419 = load i32, ptr @Init1, align 4, !tbaa !10
  %420 = and i32 %419, %418
  %421 = lshr i32 %418, 1
  %422 = and i32 %421, %307
  %423 = or i32 %422, %420
  %424 = and i32 %423, %34
  store i32 %424, ptr %5, align 16, !tbaa !10
  br i1 %43, label %443, label %425

425:                                              ; preds = %425, %416
  %426 = phi i32 [ %439, %425 ], [ %424, %416 ]
  %427 = phi i32 [ %430, %425 ], [ %418, %416 ]
  %428 = phi i64 [ %441, %425 ], [ 1, %416 ]
  %429 = getelementptr inbounds [9 x i32], ptr %4, i64 0, i64 %428
  %430 = load i32, ptr %429, align 4, !tbaa !10
  %431 = and i32 %430, %419
  %432 = or i32 %426, %427
  %433 = lshr i32 %432, 1
  %434 = and i32 %433, %29
  %435 = lshr i32 %430, 1
  %436 = and i32 %435, %307
  %437 = or i32 %431, %436
  %438 = or i32 %437, %434
  %439 = or i32 %438, %427
  %440 = getelementptr inbounds [9 x i32], ptr %5, i64 0, i64 %428
  store i32 %439, ptr %440, align 4, !tbaa !10
  %441 = add nuw nsw i64 %428, 1
  %442 = icmp eq i64 %441, %32
  br i1 %442, label %443, label %425, !llvm.loop !31

443:                                              ; preds = %425, %416
  %444 = load i32, ptr %52, align 4, !tbaa !10
  %445 = load i32, ptr %45, align 8, !tbaa !10
  %446 = load i32, ptr %46, align 8, !tbaa !10
  %447 = load i32, ptr %47, align 4, !tbaa !10
  %448 = load i32, ptr %48, align 4, !tbaa !10
  %449 = load i32, ptr %49, align 16, !tbaa !10
  %450 = load i32, ptr %50, align 16, !tbaa !10
  br label %451

451:                                              ; preds = %443, %351
  %452 = phi i32 [ %424, %443 ], [ %311, %351 ]
  %453 = phi i32 [ %444, %443 ], [ %320, %351 ]
  %454 = phi i32 [ %445, %443 ], [ %294, %351 ]
  %455 = phi i32 [ %446, %443 ], [ %352, %351 ]
  %456 = phi i32 [ %447, %443 ], [ %296, %351 ]
  %457 = phi i32 [ %448, %443 ], [ %353, %351 ]
  %458 = phi i32 [ %449, %443 ], [ %298, %351 ]
  %459 = phi i32 [ %450, %443 ], [ %354, %351 ]
  %460 = phi i32 [ %417, %443 ], [ %300, %351 ]
  %461 = phi i32 [ %359, %443 ], [ %301, %351 ]
  %462 = icmp ult i32 %355, %126
  br i1 %462, label %130, label %463, !llvm.loop !32

463:                                              ; preds = %451, %125
  %464 = phi i32 [ %74, %125 ], [ %452, %451 ]
  %465 = phi i32 [ %75, %125 ], [ %453, %451 ]
  %466 = phi i32 [ %76, %125 ], [ %454, %451 ]
  %467 = phi i32 [ %77, %125 ], [ %455, %451 ]
  %468 = phi i32 [ %78, %125 ], [ %456, %451 ]
  %469 = phi i32 [ %79, %125 ], [ %457, %451 ]
  %470 = phi i32 [ %80, %125 ], [ %458, %451 ]
  %471 = phi i32 [ %81, %125 ], [ %459, %451 ]
  %472 = phi i32 [ %83, %125 ], [ %460, %451 ]
  %473 = phi i32 [ %116, %125 ], [ %461, %451 ]
  br i1 %117, label %490, label %474

474:                                              ; preds = %463
  %475 = sub nsw i32 %88, %472
  %476 = icmp sgt i32 %475, 49152
  br i1 %476, label %477, label %478

477:                                              ; preds = %474
  store i32 1, ptr @TRUNCATE, align 4, !tbaa !10
  br label %478

478:                                              ; preds = %477, %474
  %479 = phi i32 [ 49152, %477 ], [ %475, %474 ]
  %480 = freeze i32 %479
  %481 = sext i32 %480 to i64
  %482 = sub nsw i64 0, %481
  %483 = getelementptr inbounds i8, ptr %35, i64 %482
  %484 = sext i32 %472 to i64
  %485 = getelementptr inbounds i8, ptr %6, i64 %484
  %486 = call ptr @strncpy(ptr noundef nonnull %483, ptr noundef nonnull %485, i64 noundef %481) #33
  %487 = sub nsw i32 49152, %480
  %488 = icmp eq i32 %480, 49152
  %489 = select i1 %488, i32 1, i32 %487
  br label %490

490:                                              ; preds = %478, %463
  %491 = phi i32 [ %489, %478 ], [ 49152, %463 ]
  br label %73, !llvm.loop !33

492:                                              ; preds = %380, %220, %73, %12
  call void @llvm.lifetime.end.p0(i64 98305, ptr nonnull %6) #31
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %5) #31
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #31
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @asearch1(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca [17 x i32], align 16
  %5 = alloca [17 x i32], align 16
  %6 = alloca [98305 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %4) #31
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %5) #31
  call void @llvm.lifetime.start.p0(i64 98305, ptr nonnull %6) #31
  %7 = load i32, ptr @I, align 4, !tbaa !10
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %3
  store i32 -1, ptr @Init1, align 4, !tbaa !10
  br label %10

10:                                               ; preds = %9, %3
  %11 = load i32, ptr @DD, align 4, !tbaa !10
  %12 = icmp ugt i32 %11, %2
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  %14 = add nuw i32 %2, 1
  store i32 %14, ptr @DD, align 4, !tbaa !10
  br label %15

15:                                               ; preds = %13, %10
  %16 = icmp ugt i32 %7, %2
  br i1 %16, label %17, label %19

17:                                               ; preds = %15
  %18 = add nuw i32 %2, 1
  store i32 %18, ptr @I, align 4, !tbaa !10
  br label %19

19:                                               ; preds = %17, %15
  %20 = load i32, ptr @S, align 4, !tbaa !10
  %21 = icmp ugt i32 %20, %2
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = add nuw i32 %2, 1
  store i32 %23, ptr @S, align 4, !tbaa !10
  br label %24

24:                                               ; preds = %22, %19
  %25 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #32
  %26 = trunc i64 %25 to i32
  %27 = getelementptr inbounds [98305 x i8], ptr %6, i64 0, i64 49151
  store i8 10, ptr %27, align 1, !tbaa !7
  %28 = load i32, ptr @NO_ERR_MASK, align 4, !tbaa !10
  %29 = load i32, ptr @D_endpos, align 4, !tbaa !10
  %30 = icmp ugt i32 %26, 1
  br i1 %30, label %31, label %38

31:                                               ; preds = %31, %24
  %32 = phi i32 [ %36, %31 ], [ 1, %24 ]
  %33 = phi i32 [ %35, %31 ], [ %29, %24 ]
  %34 = shl i32 %33, 1
  %35 = or i32 %34, %33
  %36 = add nuw i32 %32, 1
  %37 = icmp eq i32 %36, %26
  br i1 %37, label %38, label %31, !llvm.loop !34

38:                                               ; preds = %31, %24
  %39 = phi i32 [ %29, %24 ], [ %35, %31 ]
  %40 = xor i32 %39, -1
  %41 = add i32 %2, 1
  %42 = shl i32 %2, 1
  %43 = icmp eq i32 %2, 0
  br i1 %43, label %51, label %44

44:                                               ; preds = %38
  %45 = zext i32 %2 to i64
  %46 = shl nuw nsw i64 %45, 2
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %5, i8 0, i64 %46, i1 false), !tbaa !10
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %4, i8 0, i64 %46, i1 false), !tbaa !10
  %47 = icmp slt i32 %2, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = zext i32 %2 to i64
  %50 = zext i32 %42 to i64
  br label %55

51:                                               ; preds = %44, %38
  %52 = load i32, ptr @Init, align 4, !tbaa !10
  %53 = zext i32 %2 to i64
  %54 = zext i32 %42 to i64
  br label %70

55:                                               ; preds = %70, %48
  %56 = phi i1 [ true, %48 ], [ false, %70 ]
  %57 = phi i64 [ %50, %48 ], [ %54, %70 ]
  %58 = phi i64 [ %49, %48 ], [ %53, %70 ]
  %59 = getelementptr inbounds i8, ptr %6, i64 49152
  %60 = shl i64 %25, 32
  %61 = ashr exact i64 %60, 32
  %62 = getelementptr inbounds [17 x i32], ptr %5, i64 0, i64 %58
  %63 = getelementptr inbounds [17 x i32], ptr %4, i64 0, i64 %58
  %64 = icmp ugt i32 %41, %42
  %65 = getelementptr inbounds [17 x i32], ptr %4, i64 0, i64 %57
  %66 = xor i32 %26, -1
  %67 = getelementptr inbounds [17 x i32], ptr %5, i64 0, i64 %57
  %68 = zext i32 %41 to i64
  %69 = or i32 %42, 1
  br label %76

70:                                               ; preds = %70, %51
  %71 = phi i64 [ %53, %51 ], [ %74, %70 ]
  %72 = getelementptr inbounds [17 x i32], ptr %5, i64 0, i64 %71
  store i32 %52, ptr %72, align 4, !tbaa !10
  %73 = getelementptr inbounds [17 x i32], ptr %4, i64 0, i64 %71
  store i32 %52, ptr %73, align 4, !tbaa !10
  %74 = add nuw nsw i64 %71, 1
  %75 = icmp ult i64 %71, %54
  br i1 %75, label %70, label %55, !llvm.loop !35

76:                                               ; preds = %381, %55
  %77 = phi i32 [ %390, %381 ], [ 49152, %55 ]
  %78 = phi i32 [ %377, %381 ], [ 0, %55 ]
  %79 = call i32 @fill_buf(i32 noundef %1, ptr noundef nonnull %59, i32 noundef 49152) #33
  %80 = icmp sgt i32 %79, 0
  br i1 %80, label %81, label %395

81:                                               ; preds = %76
  %82 = add nuw nsw i32 %79, 49152
  %83 = icmp ult i32 %79, 49152
  br i1 %83, label %84, label %92

84:                                               ; preds = %81
  %85 = zext i32 %79 to i64
  %86 = getelementptr inbounds i8, ptr %59, i64 %85
  %87 = call ptr @strncpy(ptr noundef nonnull %86, ptr noundef %0, i64 noundef %61) #33
  %88 = add i32 %82, %26
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds [98305 x i8], ptr %6, i64 0, i64 %89
  store i8 0, ptr %90, align 1, !tbaa !7
  %91 = icmp ugt i32 %88, 49152
  br i1 %91, label %92, label %375

92:                                               ; preds = %84, %81
  %93 = phi i32 [ %88, %84 ], [ %82, %81 ]
  %94 = load i32, ptr @Init1, align 4, !tbaa !10
  br label %95

95:                                               ; preds = %370, %92
  %96 = phi i32 [ %371, %370 ], [ %94, %92 ]
  %97 = phi i32 [ %373, %370 ], [ %78, %92 ]
  %98 = phi i32 [ %239, %370 ], [ 49152, %92 ]
  %99 = phi i32 [ %372, %370 ], [ %77, %92 ]
  %100 = or i32 %98, 1
  %101 = zext i32 %98 to i64
  %102 = getelementptr inbounds [98305 x i8], ptr %6, i64 0, i64 %101
  %103 = load i8, ptr %102, align 2, !tbaa !7
  %104 = sext i8 %103 to i64
  %105 = getelementptr inbounds [0 x i32], ptr @Mask, i64 0, i64 %104
  %106 = load i32, ptr %105, align 4, !tbaa !10
  %107 = load i32, ptr %62, align 4, !tbaa !10
  %108 = and i32 %107, %96
  %109 = lshr i32 %107, 1
  %110 = and i32 %109, %106
  %111 = or i32 %110, %108
  store i32 %111, ptr %63, align 4, !tbaa !10
  br i1 %64, label %148, label %112

112:                                              ; preds = %95
  %113 = load i32, ptr @I, align 4, !tbaa !10
  %114 = load i32, ptr @DD, align 4, !tbaa !10
  %115 = load i32, ptr @S, align 4, !tbaa !10
  br label %116

116:                                              ; preds = %116, %112
  %117 = phi i64 [ %68, %112 ], [ %143, %116 ]
  %118 = getelementptr inbounds [17 x i32], ptr %5, i64 0, i64 %117
  %119 = load i32, ptr %118, align 4, !tbaa !10
  %120 = and i32 %119, %96
  %121 = lshr i32 %119, 1
  %122 = and i32 %121, %106
  %123 = trunc i64 %117 to i32
  %124 = sub i32 %123, %113
  %125 = zext i32 %124 to i64
  %126 = getelementptr inbounds [17 x i32], ptr %5, i64 0, i64 %125
  %127 = load i32, ptr %126, align 4, !tbaa !10
  %128 = sub i32 %123, %114
  %129 = zext i32 %128 to i64
  %130 = getelementptr inbounds [17 x i32], ptr %4, i64 0, i64 %129
  %131 = load i32, ptr %130, align 4, !tbaa !10
  %132 = sub i32 %123, %115
  %133 = zext i32 %132 to i64
  %134 = getelementptr inbounds [17 x i32], ptr %5, i64 0, i64 %133
  %135 = load i32, ptr %134, align 4, !tbaa !10
  %136 = or i32 %135, %131
  %137 = lshr i32 %136, 1
  %138 = and i32 %137, %28
  %139 = or i32 %127, %120
  %140 = or i32 %139, %122
  %141 = or i32 %140, %138
  %142 = getelementptr inbounds [17 x i32], ptr %4, i64 0, i64 %117
  store i32 %141, ptr %142, align 4, !tbaa !10
  %143 = add nuw nsw i64 %117, 1
  %144 = trunc i64 %143 to i32
  %145 = icmp eq i32 %69, %144
  br i1 %145, label %146, label %116, !llvm.loop !36

146:                                              ; preds = %116
  %147 = load i32, ptr %63, align 4, !tbaa !10
  br label %148

148:                                              ; preds = %146, %95
  %149 = phi i32 [ %147, %146 ], [ %111, %95 ]
  %150 = and i32 %149, %29
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %234, label %152

152:                                              ; preds = %148
  %153 = add nsw i32 %97, 1
  %154 = load i32, ptr @AND, align 4, !tbaa !10
  switch i32 %154, label %165 [
    i32 1, label %155
    i32 0, label %160
  ]

155:                                              ; preds = %152
  %156 = load i32, ptr %65, align 8, !tbaa !10
  %157 = load i32, ptr @endposition, align 4, !tbaa !10
  %158 = and i32 %157, %156
  %159 = icmp eq i32 %158, %157
  br i1 %159, label %170, label %165

160:                                              ; preds = %152
  %161 = load i32, ptr %65, align 8, !tbaa !10
  %162 = load i32, ptr @endposition, align 4, !tbaa !10
  %163 = and i32 %162, %161
  %164 = icmp ne i32 %163, 0
  br label %165

165:                                              ; preds = %160, %155, %152
  %166 = phi i1 [ %164, %160 ], [ false, %155 ], [ false, %152 ]
  %167 = zext i1 %166 to i32
  %168 = load i32, ptr @INVERSE, align 4, !tbaa !10
  %169 = icmp eq i32 %168, %167
  br i1 %169, label %177, label %170

170:                                              ; preds = %165, %155
  %171 = load i32, ptr @FILENAMEONLY, align 4, !tbaa !10
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %173, label %391

173:                                              ; preds = %170
  %174 = icmp slt i32 %99, %82
  br i1 %174, label %175, label %177

175:                                              ; preds = %173
  %176 = add i32 %100, %66
  call void @output(ptr noundef nonnull %6, i32 noundef %99, i32 noundef %176, i32 noundef %153) #33
  br label %177

177:                                              ; preds = %175, %173, %165
  %178 = sub i32 %100, %26
  store i32 0, ptr @TRUNCATE, align 4, !tbaa !10
  br i1 %56, label %191, label %179

179:                                              ; preds = %177
  %180 = load i32, ptr @Init, align 4, !tbaa !10
  br label %181

181:                                              ; preds = %181, %179
  %182 = phi i64 [ %58, %179 ], [ %185, %181 ]
  %183 = getelementptr inbounds [17 x i32], ptr %5, i64 0, i64 %182
  store i32 %180, ptr %183, align 4, !tbaa !10
  %184 = getelementptr inbounds [17 x i32], ptr %4, i64 0, i64 %182
  store i32 %180, ptr %184, align 4, !tbaa !10
  %185 = add nuw nsw i64 %182, 1
  %186 = icmp ult i64 %182, %57
  br i1 %186, label %181, label %187, !llvm.loop !37

187:                                              ; preds = %181
  %188 = load i32, ptr %62, align 4, !tbaa !10
  %189 = lshr i32 %188, 1
  %190 = and i32 %189, %106
  br label %191

191:                                              ; preds = %187, %177
  %192 = phi i32 [ %190, %187 ], [ %110, %177 ]
  %193 = phi i32 [ %188, %187 ], [ %107, %177 ]
  %194 = load i32, ptr @Init1, align 4, !tbaa !10
  %195 = and i32 %193, %194
  %196 = or i32 %192, %195
  %197 = and i32 %196, %40
  store i32 %197, ptr %63, align 4, !tbaa !10
  br i1 %64, label %234, label %198

198:                                              ; preds = %191
  %199 = load i32, ptr @I, align 4, !tbaa !10
  %200 = load i32, ptr @DD, align 4, !tbaa !10
  %201 = load i32, ptr @S, align 4, !tbaa !10
  br label %202

202:                                              ; preds = %202, %198
  %203 = phi i64 [ %68, %198 ], [ %229, %202 ]
  %204 = getelementptr inbounds [17 x i32], ptr %5, i64 0, i64 %203
  %205 = load i32, ptr %204, align 4, !tbaa !10
  %206 = and i32 %205, %194
  %207 = lshr i32 %205, 1
  %208 = and i32 %207, %106
  %209 = trunc i64 %203 to i32
  %210 = sub i32 %209, %199
  %211 = zext i32 %210 to i64
  %212 = getelementptr inbounds [17 x i32], ptr %5, i64 0, i64 %211
  %213 = load i32, ptr %212, align 4, !tbaa !10
  %214 = sub i32 %209, %200
  %215 = zext i32 %214 to i64
  %216 = getelementptr inbounds [17 x i32], ptr %4, i64 0, i64 %215
  %217 = load i32, ptr %216, align 4, !tbaa !10
  %218 = sub i32 %209, %201
  %219 = zext i32 %218 to i64
  %220 = getelementptr inbounds [17 x i32], ptr %5, i64 0, i64 %219
  %221 = load i32, ptr %220, align 4, !tbaa !10
  %222 = or i32 %221, %217
  %223 = lshr i32 %222, 1
  %224 = and i32 %223, %28
  %225 = or i32 %213, %206
  %226 = or i32 %225, %208
  %227 = or i32 %226, %224
  %228 = getelementptr inbounds [17 x i32], ptr %4, i64 0, i64 %203
  store i32 %227, ptr %228, align 4, !tbaa !10
  %229 = add nuw nsw i64 %203, 1
  %230 = trunc i64 %229 to i32
  %231 = icmp eq i32 %69, %230
  br i1 %231, label %232, label %202, !llvm.loop !38

232:                                              ; preds = %202
  %233 = load i32, ptr %63, align 4, !tbaa !10
  br label %234

234:                                              ; preds = %232, %191, %148
  %235 = phi i32 [ %96, %148 ], [ %194, %191 ], [ %194, %232 ]
  %236 = phi i32 [ %149, %148 ], [ %197, %191 ], [ %233, %232 ]
  %237 = phi i32 [ %99, %148 ], [ %178, %191 ], [ %178, %232 ]
  %238 = phi i32 [ %97, %148 ], [ %153, %191 ], [ %153, %232 ]
  %239 = add i32 %98, 2
  %240 = zext i32 %100 to i64
  %241 = getelementptr inbounds [98305 x i8], ptr %6, i64 0, i64 %240
  %242 = load i8, ptr %241, align 1, !tbaa !7
  %243 = sext i8 %242 to i64
  %244 = getelementptr inbounds [0 x i32], ptr @Mask, i64 0, i64 %243
  %245 = load i32, ptr %244, align 4, !tbaa !10
  %246 = and i32 %235, %236
  %247 = lshr i32 %236, 1
  %248 = and i32 %247, %245
  %249 = or i32 %248, %246
  store i32 %249, ptr %62, align 4, !tbaa !10
  br i1 %64, label %286, label %250

250:                                              ; preds = %234
  %251 = load i32, ptr @I, align 4, !tbaa !10
  %252 = load i32, ptr @DD, align 4, !tbaa !10
  %253 = load i32, ptr @S, align 4, !tbaa !10
  br label %254

254:                                              ; preds = %254, %250
  %255 = phi i64 [ %68, %250 ], [ %281, %254 ]
  %256 = getelementptr inbounds [17 x i32], ptr %4, i64 0, i64 %255
  %257 = load i32, ptr %256, align 4, !tbaa !10
  %258 = and i32 %257, %235
  %259 = lshr i32 %257, 1
  %260 = and i32 %259, %245
  %261 = trunc i64 %255 to i32
  %262 = sub i32 %261, %251
  %263 = zext i32 %262 to i64
  %264 = getelementptr inbounds [17 x i32], ptr %4, i64 0, i64 %263
  %265 = load i32, ptr %264, align 4, !tbaa !10
  %266 = sub i32 %261, %252
  %267 = zext i32 %266 to i64
  %268 = getelementptr inbounds [17 x i32], ptr %5, i64 0, i64 %267
  %269 = load i32, ptr %268, align 4, !tbaa !10
  %270 = sub i32 %261, %253
  %271 = zext i32 %270 to i64
  %272 = getelementptr inbounds [17 x i32], ptr %4, i64 0, i64 %271
  %273 = load i32, ptr %272, align 4, !tbaa !10
  %274 = or i32 %273, %269
  %275 = lshr i32 %274, 1
  %276 = and i32 %275, %28
  %277 = or i32 %265, %258
  %278 = or i32 %277, %260
  %279 = or i32 %278, %276
  %280 = getelementptr inbounds [17 x i32], ptr %5, i64 0, i64 %255
  store i32 %279, ptr %280, align 4, !tbaa !10
  %281 = add nuw nsw i64 %255, 1
  %282 = trunc i64 %281 to i32
  %283 = icmp eq i32 %69, %282
  br i1 %283, label %284, label %254, !llvm.loop !39

284:                                              ; preds = %254
  %285 = load i32, ptr %62, align 4, !tbaa !10
  br label %286

286:                                              ; preds = %284, %234
  %287 = phi i32 [ %285, %284 ], [ %249, %234 ]
  %288 = and i32 %287, %29
  %289 = icmp eq i32 %288, 0
  br i1 %289, label %370, label %290

290:                                              ; preds = %286
  %291 = add nsw i32 %238, 1
  %292 = load i32, ptr @AND, align 4, !tbaa !10
  switch i32 %292, label %303 [
    i32 1, label %293
    i32 0, label %298
  ]

293:                                              ; preds = %290
  %294 = load i32, ptr %67, align 8, !tbaa !10
  %295 = load i32, ptr @endposition, align 4, !tbaa !10
  %296 = and i32 %295, %294
  %297 = icmp eq i32 %296, %295
  br i1 %297, label %308, label %303

298:                                              ; preds = %290
  %299 = load i32, ptr %67, align 8, !tbaa !10
  %300 = load i32, ptr @endposition, align 4, !tbaa !10
  %301 = and i32 %300, %299
  %302 = icmp ne i32 %301, 0
  br label %303

303:                                              ; preds = %298, %293, %290
  %304 = phi i1 [ %302, %298 ], [ false, %293 ], [ false, %290 ]
  %305 = zext i1 %304 to i32
  %306 = load i32, ptr @INVERSE, align 4, !tbaa !10
  %307 = icmp eq i32 %306, %305
  br i1 %307, label %315, label %308

308:                                              ; preds = %303, %293
  %309 = load i32, ptr @FILENAMEONLY, align 4, !tbaa !10
  %310 = icmp eq i32 %309, 0
  br i1 %310, label %311, label %391

311:                                              ; preds = %308
  %312 = icmp slt i32 %237, %82
  br i1 %312, label %313, label %315

313:                                              ; preds = %311
  %314 = add i32 %239, %66
  call void @output(ptr noundef nonnull %6, i32 noundef %237, i32 noundef %314, i32 noundef %291) #33
  br label %315

315:                                              ; preds = %313, %311, %303
  %316 = sub i32 %239, %26
  store i32 0, ptr @TRUNCATE, align 4, !tbaa !10
  br i1 %56, label %329, label %317

317:                                              ; preds = %315
  %318 = load i32, ptr @Init, align 4, !tbaa !10
  br label %319

319:                                              ; preds = %319, %317
  %320 = phi i64 [ %58, %317 ], [ %323, %319 ]
  %321 = getelementptr inbounds [17 x i32], ptr %5, i64 0, i64 %320
  store i32 %318, ptr %321, align 4, !tbaa !10
  %322 = getelementptr inbounds [17 x i32], ptr %4, i64 0, i64 %320
  store i32 %318, ptr %322, align 4, !tbaa !10
  %323 = add nuw nsw i64 %320, 1
  %324 = icmp ult i64 %320, %57
  br i1 %324, label %319, label %325, !llvm.loop !40

325:                                              ; preds = %319
  %326 = load i32, ptr %63, align 4, !tbaa !10
  %327 = lshr i32 %326, 1
  %328 = and i32 %327, %245
  br label %329

329:                                              ; preds = %325, %315
  %330 = phi i32 [ %328, %325 ], [ %248, %315 ]
  %331 = phi i32 [ %326, %325 ], [ %236, %315 ]
  %332 = load i32, ptr @Init1, align 4, !tbaa !10
  %333 = and i32 %331, %332
  %334 = or i32 %330, %333
  %335 = and i32 %334, %40
  store i32 %335, ptr %62, align 4, !tbaa !10
  br i1 %64, label %370, label %336

336:                                              ; preds = %329
  %337 = load i32, ptr @I, align 4, !tbaa !10
  %338 = load i32, ptr @DD, align 4, !tbaa !10
  %339 = load i32, ptr @S, align 4, !tbaa !10
  br label %340

340:                                              ; preds = %340, %336
  %341 = phi i64 [ %68, %336 ], [ %367, %340 ]
  %342 = getelementptr inbounds [17 x i32], ptr %4, i64 0, i64 %341
  %343 = load i32, ptr %342, align 4, !tbaa !10
  %344 = and i32 %343, %332
  %345 = lshr i32 %343, 1
  %346 = and i32 %345, %245
  %347 = trunc i64 %341 to i32
  %348 = sub i32 %347, %337
  %349 = zext i32 %348 to i64
  %350 = getelementptr inbounds [17 x i32], ptr %4, i64 0, i64 %349
  %351 = load i32, ptr %350, align 4, !tbaa !10
  %352 = sub i32 %347, %338
  %353 = zext i32 %352 to i64
  %354 = getelementptr inbounds [17 x i32], ptr %5, i64 0, i64 %353
  %355 = load i32, ptr %354, align 4, !tbaa !10
  %356 = sub i32 %347, %339
  %357 = zext i32 %356 to i64
  %358 = getelementptr inbounds [17 x i32], ptr %4, i64 0, i64 %357
  %359 = load i32, ptr %358, align 4, !tbaa !10
  %360 = or i32 %359, %355
  %361 = lshr i32 %360, 1
  %362 = and i32 %361, %28
  %363 = or i32 %351, %344
  %364 = or i32 %363, %346
  %365 = or i32 %364, %362
  %366 = getelementptr inbounds [17 x i32], ptr %5, i64 0, i64 %341
  store i32 %365, ptr %366, align 4, !tbaa !10
  %367 = add nuw nsw i64 %341, 1
  %368 = trunc i64 %367 to i32
  %369 = icmp eq i32 %69, %368
  br i1 %369, label %370, label %340, !llvm.loop !41

370:                                              ; preds = %340, %329, %286
  %371 = phi i32 [ %235, %286 ], [ %332, %329 ], [ %332, %340 ]
  %372 = phi i32 [ %237, %286 ], [ %316, %329 ], [ %316, %340 ]
  %373 = phi i32 [ %238, %286 ], [ %291, %329 ], [ %291, %340 ]
  %374 = icmp ult i32 %239, %93
  br i1 %374, label %95, label %375, !llvm.loop !42

375:                                              ; preds = %370, %84
  %376 = phi i32 [ %77, %84 ], [ %372, %370 ]
  %377 = phi i32 [ %78, %84 ], [ %373, %370 ]
  %378 = sub nsw i32 %82, %376
  %379 = icmp sgt i32 %378, 49152
  br i1 %379, label %380, label %381

380:                                              ; preds = %375
  store i32 1, ptr @TRUNCATE, align 4, !tbaa !10
  br label %381

381:                                              ; preds = %380, %375
  %382 = phi i32 [ 49152, %380 ], [ %378, %375 ]
  %383 = sext i32 %382 to i64
  %384 = sub nsw i64 0, %383
  %385 = getelementptr inbounds i8, ptr %59, i64 %384
  %386 = sext i32 %376 to i64
  %387 = getelementptr inbounds i8, ptr %6, i64 %386
  %388 = call ptr @strncpy(ptr noundef nonnull %385, ptr noundef nonnull %387, i64 noundef %383) #33
  %389 = sub nsw i32 49152, %382
  %390 = select i1 %83, i32 49152, i32 %389
  br label %76, !llvm.loop !43

391:                                              ; preds = %308, %170
  %392 = load i32, ptr @num_of_matched, align 4, !tbaa !10
  %393 = add nsw i32 %392, 1
  store i32 %393, ptr @num_of_matched, align 4, !tbaa !10
  %394 = call i32 @puts(ptr nonnull dereferenceable(1) @CurrentFileName)
  br label %395

395:                                              ; preds = %391, %76
  call void @llvm.lifetime.end.p0(i64 98305, ptr nonnull %6) #31
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %5) #31
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %4) #31
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: nounwind optsize uwtable
define internal void @bitap(ptr noundef %0, ptr nocapture noundef readnone %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = alloca [147456 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 147456, ptr nonnull %6) #31
  %7 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #32
  %8 = trunc i64 %7 to i32
  store i32 %8, ptr @D_length, align 4, !tbaa !10
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %22, label %10

10:                                               ; preds = %17, %5
  %11 = phi i32 [ %18, %17 ], [ %8, %5 ]
  %12 = phi i64 [ %19, %17 ], [ 0, %5 ]
  %13 = getelementptr inbounds i8, ptr %0, i64 %12
  %14 = load i8, ptr %13, align 1, !tbaa !7
  switch i8 %14, label %17 [
    i8 94, label %15
    i8 36, label %15
  ]

15:                                               ; preds = %10, %10
  store i8 10, ptr %13, align 1, !tbaa !7
  %16 = load i32, ptr @D_length, align 4, !tbaa !10
  br label %17

17:                                               ; preds = %15, %10
  %18 = phi i32 [ %11, %10 ], [ %16, %15 ]
  %19 = add nuw nsw i64 %12, 1
  %20 = zext i32 %18 to i64
  %21 = icmp ult i64 %19, %20
  br i1 %21, label %10, label %22, !llvm.loop !44

22:                                               ; preds = %17, %5
  %23 = phi i32 [ 0, %5 ], [ %18, %17 ]
  %24 = load i32, ptr @REGEX, align 4, !tbaa !10
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %35, label %26

26:                                               ; preds = %22
  %27 = icmp sgt i32 %4, 4
  br i1 %27, label %28, label %31

28:                                               ; preds = %26
  %29 = load ptr, ptr @stderr, align 8, !tbaa !45
  %30 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %29, ptr noundef nonnull @.str, ptr noundef nonnull @Progname) #35
  tail call void @exit(i32 noundef 2) #36
  unreachable

31:                                               ; preds = %26
  %32 = icmp slt i32 %3, 16
  br i1 %32, label %33, label %34

33:                                               ; preds = %31
  tail call void @re(i32 noundef %2, i32 noundef %3, i32 noundef %4) #33
  br label %261

34:                                               ; preds = %31
  tail call void @re1(i32 noundef %2, i32 noundef %3, i32 noundef %4) #33
  br label %261

35:                                               ; preds = %22
  %36 = icmp sgt i32 %4, 0
  %37 = load i32, ptr @JUMP, align 4
  %38 = icmp eq i32 %37, 1
  %39 = select i1 %36, i1 %38, i1 false
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  tail call void @asearch1(ptr noundef %0, i32 noundef %2, i32 noundef %4) #33
  br label %261

41:                                               ; preds = %35
  br i1 %36, label %42, label %43

42:                                               ; preds = %41
  tail call void @asearch(ptr noundef %0, i32 noundef %2, i32 noundef %4) #33
  br label %261

43:                                               ; preds = %41
  %44 = load i32, ptr @I, align 4, !tbaa !10
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %43
  %47 = load i32, ptr @Init1, align 4, !tbaa !10
  br label %49

48:                                               ; preds = %43
  store i32 -1, ptr @Init1, align 4, !tbaa !10
  br label %49

49:                                               ; preds = %48, %46
  %50 = phi i32 [ %47, %46 ], [ -1, %48 ]
  %51 = getelementptr inbounds [147456 x i8], ptr %6, i64 0, i64 49151
  %52 = load i32, ptr @Init, align 4, !tbaa !10
  %53 = load i32, ptr @D_endpos, align 4, !tbaa !10
  store i8 10, ptr %51, align 1, !tbaa !7
  %54 = icmp ugt i32 %23, 1
  br i1 %54, label %55, label %62

55:                                               ; preds = %55, %49
  %56 = phi i32 [ %59, %55 ], [ %53, %49 ]
  %57 = phi i32 [ %60, %55 ], [ 1, %49 ]
  %58 = shl i32 %56, 1
  %59 = or i32 %58, %56
  %60 = add nuw i32 %57, 1
  %61 = icmp eq i32 %60, %23
  br i1 %61, label %62, label %55, !llvm.loop !47

62:                                               ; preds = %55, %49
  %63 = phi i32 [ %53, %49 ], [ %59, %55 ]
  %64 = xor i32 %63, -1
  %65 = getelementptr inbounds i8, ptr %6, i64 49152
  %66 = getelementptr inbounds [147456 x i8], ptr %6, i64 0, i64 49152
  br label %67

67:                                               ; preds = %252, %62
  %68 = phi i32 [ %52, %62 ], [ %246, %252 ]
  %69 = phi i1 [ false, %62 ], [ true, %252 ]
  %70 = phi i32 [ 49152, %62 ], [ %260, %252 ]
  %71 = phi i32 [ 0, %62 ], [ %248, %252 ]
  br label %72

72:                                               ; preds = %72, %67
  %73 = phi i32 [ %78, %72 ], [ 0, %67 ]
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8, ptr %65, i64 %74
  %76 = call i64 @read(i32 noundef %2, ptr noundef nonnull %75, i64 noundef 4096) #33
  %77 = trunc i64 %76 to i32
  %78 = add nsw i32 %73, %77
  %79 = icmp slt i32 %78, 49152
  %80 = icmp sgt i32 %77, 0
  %81 = and i1 %80, %79
  br i1 %81, label %72, label %82, !llvm.loop !48

82:                                               ; preds = %72
  %.lcssa1 = phi i32 [ %78, %72 ]
  %.lcssa = phi i1 [ %79, %72 ]
  %83 = icmp sgt i32 %.lcssa1, 0
  br i1 %83, label %84, label %261

84:                                               ; preds = %82
  %85 = add nuw nsw i32 %.lcssa1, 49152
  br i1 %69, label %115, label %86

86:                                               ; preds = %84
  %87 = load i32, ptr @DELIMITER, align 4, !tbaa !10
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %115, label %89

89:                                               ; preds = %86
  %90 = load i32, ptr @D_length, align 4, !tbaa !10
  %91 = icmp slt i32 %90, 1
  br i1 %91, label %111, label %92

92:                                               ; preds = %89
  %93 = zext i32 %90 to i64
  %94 = zext i32 %90 to i64
  %95 = load i8, ptr %0, align 1, !tbaa !7
  %96 = load i8, ptr %66, align 16, !tbaa !7
  %97 = icmp eq i8 %95, %96
  br i1 %97, label %98, label %111

98:                                               ; preds = %102, %92
  %99 = phi i64 [ %100, %102 ], [ 0, %92 ]
  %100 = add nuw nsw i64 %99, 1
  %101 = icmp eq i64 %100, %94
  br i1 %101, label %109, label %102, !llvm.loop !49

102:                                              ; preds = %98
  %103 = getelementptr inbounds i8, ptr %0, i64 %100
  %104 = load i8, ptr %103, align 1, !tbaa !7
  %105 = add nuw nsw i64 %99, 49153
  %106 = getelementptr inbounds [147456 x i8], ptr %6, i64 0, i64 %105
  %107 = load i8, ptr %106, align 1, !tbaa !7
  %108 = icmp eq i8 %104, %107
  br i1 %108, label %98, label %109, !llvm.loop !49

109:                                              ; preds = %102, %98
  %.lcssa2 = phi i64 [ %100, %102 ], [ %100, %98 ]
  %110 = icmp uge i64 %.lcssa2, %93
  br label %111

111:                                              ; preds = %109, %92, %89
  %112 = phi i1 [ true, %89 ], [ false, %92 ], [ %110, %109 ]
  %113 = sext i1 %112 to i32
  %114 = add nsw i32 %71, %113
  br label %115

115:                                              ; preds = %111, %86, %84
  %116 = phi i32 [ 49152, %84 ], [ 49151, %111 ], [ 49151, %86 ]
  %117 = phi i32 [ %71, %84 ], [ %114, %111 ], [ %71, %86 ]
  br i1 %.lcssa, label %118, label %127

118:                                              ; preds = %115
  %119 = zext i32 %.lcssa1 to i64
  %120 = getelementptr inbounds i8, ptr %65, i64 %119
  %121 = load i32, ptr @D_length, align 4, !tbaa !10
  %122 = sext i32 %121 to i64
  %123 = call ptr @strncpy(ptr noundef nonnull %120, ptr noundef %0, i64 noundef %122) #33
  %124 = add i32 %121, %85
  %125 = zext i32 %124 to i64
  %126 = getelementptr inbounds [147456 x i8], ptr %6, i64 0, i64 %125
  store i8 0, ptr %126, align 1, !tbaa !7
  br label %127

127:                                              ; preds = %118, %115
  %128 = phi i32 [ %124, %118 ], [ %85, %115 ]
  %129 = icmp ult i32 %116, %128
  br i1 %129, label %130, label %245

130:                                              ; preds = %127
  %131 = add nsw i32 %.lcssa1, 49151
  br label %132

132:                                              ; preds = %240, %130
  %133 = phi i32 [ %117, %130 ], [ %243, %240 ]
  %134 = phi i32 [ %70, %130 ], [ %242, %240 ]
  %135 = phi i32 [ %116, %130 ], [ %190, %240 ]
  %136 = phi i32 [ %68, %130 ], [ %241, %240 ]
  %137 = add nuw i32 %135, 1
  %138 = zext i32 %135 to i64
  %139 = getelementptr inbounds [147456 x i8], ptr %6, i64 0, i64 %138
  %140 = load i8, ptr %139, align 1, !tbaa !7
  %141 = sext i8 %140 to i64
  %142 = getelementptr inbounds [0 x i32], ptr @Mask, i64 0, i64 %141
  %143 = load i32, ptr %142, align 4, !tbaa !10
  %144 = and i32 %136, %50
  %145 = lshr i32 %136, 1
  %146 = and i32 %143, %145
  %147 = or i32 %146, %144
  %148 = and i32 %147, %53
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %186, label %150

150:                                              ; preds = %132
  %151 = add nsw i32 %133, 1
  %152 = load i32, ptr @AND, align 4, !tbaa !10
  %153 = icmp eq i32 %152, 1
  %154 = load i32, ptr @endposition, align 4
  %155 = and i32 %154, %147
  %156 = icmp eq i32 %155, %154
  %157 = select i1 %153, i1 %156, i1 false
  br i1 %157, label %165, label %158

158:                                              ; preds = %150
  %159 = icmp eq i32 %152, 0
  %160 = icmp ne i32 %155, 0
  %161 = select i1 %159, i1 %160, i1 false
  %162 = zext i1 %161 to i32
  %163 = load i32, ptr @INVERSE, align 4, !tbaa !10
  %164 = icmp eq i32 %163, %162
  br i1 %164, label %177, label %165

165:                                              ; preds = %158, %150
  %166 = load i32, ptr @FILENAMEONLY, align 4, !tbaa !10
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %172, label %168

168:                                              ; preds = %165
  %169 = load i32, ptr @num_of_matched, align 4, !tbaa !10
  %170 = add nsw i32 %169, 1
  store i32 %170, ptr @num_of_matched, align 4, !tbaa !10
  %171 = call i32 @puts(ptr nonnull dereferenceable(1) @CurrentFileName)
  br label %261

172:                                              ; preds = %165
  %173 = icmp slt i32 %134, %131
  br i1 %173, label %174, label %177

174:                                              ; preds = %172
  %175 = load i32, ptr @D_length, align 4, !tbaa !10
  %176 = sub i32 %135, %175
  call void @output(ptr noundef nonnull %6, i32 noundef %134, i32 noundef %176, i32 noundef %151) #33
  br label %177

177:                                              ; preds = %174, %172, %158
  %178 = load i32, ptr @D_length, align 4, !tbaa !10
  %179 = sub i32 %137, %178
  store i32 0, ptr @TRUNCATE, align 4, !tbaa !10
  %180 = load i32, ptr @Init, align 4, !tbaa !10
  %181 = and i32 %180, %50
  %182 = lshr i32 %180, 1
  %183 = and i32 %182, %143
  %184 = or i32 %183, %181
  %185 = and i32 %184, %64
  br label %186

186:                                              ; preds = %177, %132
  %187 = phi i32 [ %185, %177 ], [ %147, %132 ]
  %188 = phi i32 [ %179, %177 ], [ %134, %132 ]
  %189 = phi i32 [ %151, %177 ], [ %133, %132 ]
  %190 = add i32 %135, 2
  %191 = zext i32 %137 to i64
  %192 = getelementptr inbounds [147456 x i8], ptr %6, i64 0, i64 %191
  %193 = load i8, ptr %192, align 1, !tbaa !7
  %194 = sext i8 %193 to i64
  %195 = getelementptr inbounds [0 x i32], ptr @Mask, i64 0, i64 %194
  %196 = load i32, ptr %195, align 4, !tbaa !10
  %197 = and i32 %187, %50
  %198 = lshr i32 %187, 1
  %199 = and i32 %196, %198
  %200 = or i32 %199, %197
  %201 = and i32 %200, %53
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %240, label %203

203:                                              ; preds = %186
  %204 = add nsw i32 %189, 1
  %205 = load i32, ptr @AND, align 4, !tbaa !10
  %206 = icmp eq i32 %205, 1
  %207 = load i32, ptr @endposition, align 4
  %208 = and i32 %207, %200
  %209 = icmp eq i32 %208, %207
  %210 = select i1 %206, i1 %209, i1 false
  br i1 %210, label %218, label %211

211:                                              ; preds = %203
  %212 = icmp eq i32 %205, 0
  %213 = icmp ne i32 %208, 0
  %214 = select i1 %212, i1 %213, i1 false
  %215 = zext i1 %214 to i32
  %216 = load i32, ptr @INVERSE, align 4, !tbaa !10
  %217 = icmp eq i32 %216, %215
  br i1 %217, label %231, label %218

218:                                              ; preds = %211, %203
  %219 = load i32, ptr @FILENAMEONLY, align 4, !tbaa !10
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %225, label %221

221:                                              ; preds = %218
  %222 = load i32, ptr @num_of_matched, align 4, !tbaa !10
  %223 = add nsw i32 %222, 1
  store i32 %223, ptr @num_of_matched, align 4, !tbaa !10
  %224 = call i32 @puts(ptr nonnull dereferenceable(1) @CurrentFileName)
  br label %261

225:                                              ; preds = %218
  %226 = icmp slt i32 %188, %131
  br i1 %226, label %227, label %231

227:                                              ; preds = %225
  %228 = load i32, ptr @D_length, align 4, !tbaa !10
  %229 = xor i32 %228, -1
  %230 = add i32 %190, %229
  call void @output(ptr noundef nonnull %6, i32 noundef %188, i32 noundef %230, i32 noundef %204) #33
  br label %231

231:                                              ; preds = %227, %225, %211
  %232 = load i32, ptr @D_length, align 4, !tbaa !10
  %233 = sub i32 %190, %232
  store i32 0, ptr @TRUNCATE, align 4, !tbaa !10
  %234 = load i32, ptr @Init, align 4, !tbaa !10
  %235 = and i32 %234, %50
  %236 = lshr i32 %234, 1
  %237 = and i32 %236, %196
  %238 = or i32 %237, %235
  %239 = and i32 %238, %64
  br label %240

240:                                              ; preds = %231, %186
  %241 = phi i32 [ %239, %231 ], [ %200, %186 ]
  %242 = phi i32 [ %233, %231 ], [ %188, %186 ]
  %243 = phi i32 [ %204, %231 ], [ %189, %186 ]
  %244 = icmp ult i32 %190, %128
  br i1 %244, label %132, label %245, !llvm.loop !50

245:                                              ; preds = %240, %127
  %246 = phi i32 [ %68, %127 ], [ %241, %240 ]
  %247 = phi i32 [ %70, %127 ], [ %242, %240 ]
  %248 = phi i32 [ %117, %127 ], [ %243, %240 ]
  %249 = sub nsw i32 %85, %247
  %250 = icmp sgt i32 %249, 49152
  br i1 %250, label %251, label %252

251:                                              ; preds = %245
  store i32 1, ptr @TRUNCATE, align 4, !tbaa !10
  br label %252

252:                                              ; preds = %251, %245
  %253 = phi i32 [ 49152, %251 ], [ %249, %245 ]
  %254 = sext i32 %253 to i64
  %255 = sub nsw i64 0, %254
  %256 = getelementptr inbounds i8, ptr %65, i64 %255
  %257 = sext i32 %247 to i64
  %258 = getelementptr inbounds i8, ptr %6, i64 %257
  %259 = call ptr @strncpy(ptr noundef nonnull %256, ptr noundef nonnull %258, i64 noundef %254) #33
  %260 = sub nsw i32 49152, %253
  br label %67, !llvm.loop !51

261:                                              ; preds = %221, %168, %82, %42, %40, %34, %33
  call void @llvm.lifetime.end.p0(i64 147456, ptr nonnull %6) #31
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree optsize
declare noundef i64 @read(i32 noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind optsize uwtable
define internal i32 @fill_buf(i32 noundef %0, ptr nocapture noundef %1, i32 noundef %2) #9 {
  %4 = icmp sgt i32 %2, 0
  br i1 %4, label %5, label %15

5:                                                ; preds = %5, %3
  %6 = phi i32 [ %11, %5 ], [ 0, %3 ]
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds i8, ptr %1, i64 %7
  %9 = tail call i64 @read(i32 noundef %0, ptr noundef %8, i64 noundef 4096) #33
  %10 = trunc i64 %9 to i32
  %11 = add nsw i32 %6, %10
  %12 = icmp slt i32 %11, %2
  %13 = icmp sgt i32 %10, 0
  %14 = and i1 %13, %12
  br i1 %14, label %5, label %15, !llvm.loop !48

15:                                               ; preds = %5, %3
  %16 = phi i32 [ 0, %3 ], [ %11, %5 ]
  ret i32 %16
}

; Function Attrs: nofree nounwind optsize uwtable
define internal i32 @check_file(ptr nocapture noundef readonly %0) #9 {
  %2 = alloca %struct.stat, align 8
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %2) #31
  %3 = call i32 @stat(ptr noundef %0, ptr noundef nonnull %2) #33
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @__errno_location() #37
  %7 = load i32, ptr %6, align 4, !tbaa !10
  %8 = icmp eq i32 %7, 2
  %9 = select i1 %8, i32 -3, i32 -1
  br label %10

10:                                               ; preds = %5, %1
  %11 = phi i32 [ %9, %5 ], [ 0, %1 ]
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %2) #31
  ret i32 %11
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @stat(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #10

; Function Attrs: nounwind optsize uwtable
define internal void @compat() #0 {
  %1 = load i32, ptr @BESTMATCH, align 4, !tbaa !10
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %18, label %3

3:                                                ; preds = %0
  %4 = load i32, ptr @COUNT, align 4, !tbaa !10
  %5 = icmp ne i32 %4, 0
  %6 = load i32, ptr @FILENAMEONLY, align 4
  %7 = icmp ne i32 %6, 0
  %8 = select i1 %5, i1 true, i1 %7
  %9 = load i32, ptr @APPROX, align 4
  %10 = icmp ne i32 %9, 0
  %11 = select i1 %8, i1 true, i1 %10
  %12 = load i32, ptr @PAT_FILE, align 4
  %13 = icmp ne i32 %12, 0
  %14 = select i1 %11, i1 true, i1 %13
  br i1 %14, label %15, label %39

15:                                               ; preds = %3
  store i32 0, ptr @BESTMATCH, align 4, !tbaa !10
  %16 = load ptr, ptr @stderr, align 8, !tbaa !45
  %17 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %16, ptr noundef nonnull @.str.3, ptr noundef nonnull @Progname) #35
  br label %18

18:                                               ; preds = %15, %0
  %19 = load i32, ptr @PAT_FILE, align 4, !tbaa !10
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %39, label %21

21:                                               ; preds = %18
  %22 = load i32, ptr @APPROX, align 4, !tbaa !10
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %21
  %25 = load ptr, ptr @stderr, align 8, !tbaa !45
  %26 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 65, i64 1, ptr %25) #38
  br label %27

27:                                               ; preds = %24, %21
  %28 = load i32, ptr @LINENUM, align 4, !tbaa !10
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %27
  %31 = load ptr, ptr @stderr, align 8, !tbaa !45
  %32 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %31, ptr noundef nonnull @.str.2, ptr noundef nonnull @Progname) #35
  tail call void @exit(i32 noundef 2) #36
  unreachable

33:                                               ; preds = %27
  %34 = load i32, ptr @DELIMITER, align 4, !tbaa !10
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %33
  %37 = load ptr, ptr @stderr, align 8, !tbaa !45
  %38 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %37, ptr noundef nonnull @.str.3.4, ptr noundef nonnull @Progname) #35
  tail call void @exit(i32 noundef 2) #36
  unreachable

39:                                               ; preds = %33, %18, %3
  %40 = load i32, ptr @JUMP, align 4, !tbaa !10
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %60, label %42

42:                                               ; preds = %39
  %43 = load i32, ptr @REGEX, align 4, !tbaa !10
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %42
  %46 = load ptr, ptr @stderr, align 8, !tbaa !45
  %47 = tail call i64 @fwrite(ptr nonnull @.str.4, i64 77, i64 1, ptr %46) #38
  store i32 0, ptr @JUMP, align 4, !tbaa !10
  br label %48

48:                                               ; preds = %45, %42
  %49 = load i32, ptr @I, align 4, !tbaa !10
  %50 = icmp eq i32 %49, 0
  %51 = load i32, ptr @S, align 4
  %52 = icmp eq i32 %51, 0
  %53 = select i1 %50, i1 true, i1 %52
  %54 = load i32, ptr @DD, align 4
  %55 = icmp eq i32 %54, 0
  %56 = select i1 %53, i1 true, i1 %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %48
  %58 = load ptr, ptr @stderr, align 8, !tbaa !45
  %59 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %58, ptr noundef nonnull @.str.5, ptr noundef nonnull @Progname) #35
  tail call void @exit(i32 noundef 2) #36
  unreachable

60:                                               ; preds = %48, %39
  %61 = load i32, ptr @DELIMITER, align 4, !tbaa !10
  %62 = icmp ne i32 %61, 0
  %63 = load i32, ptr @WHOLELINE, align 4
  %64 = icmp ne i32 %63, 0
  %65 = select i1 %62, i1 %64, i1 false
  br i1 %65, label %66, label %69

66:                                               ; preds = %60
  %67 = load ptr, ptr @stderr, align 8, !tbaa !45
  %68 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %67, ptr noundef nonnull @.str.6, ptr noundef nonnull @Progname) #35
  tail call void @exit(i32 noundef 2) #36
  unreachable

69:                                               ; preds = %60
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind optsize willreturn uwtable
define internal ptr @extend_re(ptr nocapture noundef readonly %0) #11 {
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #32
  %3 = add i64 %2, 5
  %4 = and i64 %3, 4294967295
  %5 = tail call noalias ptr @malloc(i64 noundef %4) #39
  store i32 2632238, ptr %5, align 1
  %6 = tail call ptr @strcat(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) %0) #33
  %7 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %5)
  %8 = getelementptr inbounds i8, ptr %5, i64 %7
  store i16 41, ptr %8, align 1
  ret ptr %5
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite)
declare ptr @strcat(ptr noalias noundef returned, ptr noalias nocapture noundef readonly) local_unnamed_addr #3

; Function Attrs: nounwind optsize uwtable
define internal void @mk_followpos_1(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  br label %3

3:                                                ; preds = %26, %2
  %4 = phi ptr [ %0, %2 ], [ %28, %26 ]
  %5 = load i16, ptr %4, align 8, !tbaa !52
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
  %9 = load ptr, ptr %8, align 8, !tbaa !45
  %10 = icmp eq ptr %9, null
  br i1 %10, label %24, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.rnode, ptr %4, i64 0, i32 3
  br label %13

13:                                               ; preds = %13, %11
  %14 = phi ptr [ %9, %11 ], [ %22, %13 ]
  %15 = load i32, ptr %14, align 8, !tbaa !55
  %16 = load ptr, ptr %12, align 8, !tbaa !57
  %17 = sext i32 %15 to i64
  %18 = getelementptr inbounds [0 x ptr], ptr %1, i64 0, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !45
  %20 = tail call ptr @pset_union(ptr noundef %16, ptr noundef %19) #33
  store ptr %20, ptr %18, align 8, !tbaa !45
  %21 = getelementptr inbounds %struct.pnode, ptr %14, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !45
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %13, !llvm.loop !58

24:                                               ; preds = %13, %7
  %25 = getelementptr inbounds %struct.rnode, ptr %4, i64 0, i32 1
  br label %26

26:                                               ; preds = %57, %55, %52, %24
  %27 = phi ptr [ %25, %24 ], [ %54, %52 ], [ %56, %55 ], [ %60, %57 ]
  %28 = load ptr, ptr %27, align 8, !tbaa !7
  br label %3

29:                                               ; preds = %3
  %30 = getelementptr inbounds %struct.rnode, ptr %4, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !7
  %32 = getelementptr inbounds %struct.rnode, ptr %31, i64 0, i32 4
  %33 = load ptr, ptr %32, align 8, !tbaa !45
  %34 = icmp eq ptr %33, null
  br i1 %34, label %52, label %35

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.rnode, ptr %4, i64 0, i32 1, i32 0, i32 1
  br label %37

37:                                               ; preds = %37, %35
  %38 = phi ptr [ %33, %35 ], [ %48, %37 ]
  %39 = load i32, ptr %38, align 8, !tbaa !55
  %40 = load ptr, ptr %36, align 8, !tbaa !7
  %41 = getelementptr inbounds %struct.rnode, ptr %40, i64 0, i32 3
  %42 = load ptr, ptr %41, align 8, !tbaa !57
  %43 = sext i32 %39 to i64
  %44 = getelementptr inbounds [0 x ptr], ptr %1, i64 0, i64 %43
  %45 = load ptr, ptr %44, align 8, !tbaa !45
  %46 = tail call ptr @pset_union(ptr noundef %42, ptr noundef %45) #33
  store ptr %46, ptr %44, align 8, !tbaa !45
  %47 = getelementptr inbounds %struct.pnode, ptr %38, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !45
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %37, !llvm.loop !59

50:                                               ; preds = %37
  %51 = load ptr, ptr %30, align 8, !tbaa !7
  br label %52

52:                                               ; preds = %50, %29
  %53 = phi ptr [ %51, %50 ], [ %31, %29 ]
  tail call void @mk_followpos_1(ptr noundef %53, ptr noundef %1) #34
  %54 = getelementptr inbounds %struct.rnode, ptr %4, i64 0, i32 1, i32 0, i32 1
  br label %26

55:                                               ; preds = %3
  %56 = getelementptr inbounds %struct.rnode, ptr %4, i64 0, i32 1
  br label %26

57:                                               ; preds = %3
  %58 = getelementptr inbounds %struct.rnode, ptr %4, i64 0, i32 1
  %59 = load ptr, ptr %58, align 8, !tbaa !7
  tail call void @mk_followpos_1(ptr noundef %59, ptr noundef %1) #34
  %60 = getelementptr inbounds %struct.rnode, ptr %4, i64 0, i32 1, i32 0, i32 1
  br label %26

61:                                               ; preds = %3
  %.lcssa = phi i32 [ %6, %3 ]
  %62 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2.5, i32 noundef %.lcssa) #34
  br label %63

63:                                               ; preds = %61, %3, %3
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: nounwind optsize uwtable
define internal ptr @mk_followpos(ptr noundef readonly %0, i32 noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  %4 = icmp slt i32 %1, 0
  %5 = or i1 %3, %4
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = add nuw i32 %1, 1
  %8 = zext i32 %7 to i64
  %9 = shl nuw nsw i64 %8, 3
  %10 = tail call ptr @calloc(i64 1, i64 %9)
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %6
  tail call void @mk_followpos_1(ptr noundef nonnull %0, ptr noundef nonnull %10) #34
  br label %13

13:                                               ; preds = %12, %6, %2
  %14 = phi ptr [ %10, %12 ], [ null, %2 ], [ null, %6 ]
  ret ptr %14
}

; Function Attrs: nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: nounwind optsize uwtable
define internal i32 @init(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = tail call ptr @extend_re(ptr noundef %0) #34
  %4 = tail call ptr @parse(ptr noundef %3) #33
  %5 = icmp eq ptr %4, null
  br i1 %5, label %35, label %6

6:                                                ; preds = %2
  %7 = load i32, ptr @pos_cnt, align 4, !tbaa !10
  %8 = tail call ptr @mk_followpos(ptr noundef nonnull %4, i32 noundef %7) #34
  %9 = icmp eq ptr %8, null
  br i1 %9, label %35, label %10

10:                                               ; preds = %6
  %11 = load i32, ptr @pos_cnt, align 4, !tbaa !10
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %35, label %13

13:                                               ; preds = %30, %10
  %14 = phi i32 [ %31, %30 ], [ %11, %10 ]
  %15 = phi i64 [ %32, %30 ], [ 0, %10 ]
  %16 = getelementptr inbounds [0 x ptr], ptr %8, i64 0, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !45
  %18 = icmp eq ptr %17, null
  br i1 %18, label %30, label %19

19:                                               ; preds = %19, %13
  %20 = phi i64 [ %24, %19 ], [ 0, %13 ]
  %21 = phi ptr [ %26, %19 ], [ %17, %13 ]
  %22 = load i32, ptr %21, align 8, !tbaa !55
  %23 = getelementptr inbounds [32 x i32], ptr %1, i64 %15, i64 %20
  store i32 %22, ptr %23, align 4, !tbaa !10
  %24 = add nuw i64 %20, 1
  %25 = getelementptr inbounds %struct.pnode, ptr %21, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !45
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %19, !llvm.loop !60

28:                                               ; preds = %19
  %29 = load i32, ptr @pos_cnt, align 4, !tbaa !10
  br label %30

30:                                               ; preds = %28, %13
  %31 = phi i32 [ %29, %28 ], [ %14, %13 ]
  %32 = add nuw nsw i64 %15, 1
  %33 = sext i32 %31 to i64
  %34 = icmp slt i64 %15, %33
  br i1 %34, label %13, label %35, !llvm.loop !61

35:                                               ; preds = %30, %10, %6, %2
  %36 = phi i32 [ -1, %2 ], [ -1, %6 ], [ %11, %10 ], [ %31, %30 ]
  ret i32 %36
}

; Function Attrs: noreturn nounwind optsize uwtable
define dso_local i32 @main(i32 noundef %0, ptr nocapture noundef readonly %1) #14 {
  %3 = alloca i8, align 1
  %4 = alloca [128 x i8], align 16
  %5 = alloca [128 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #31
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %4) #31
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %5) #31
  tail call void @initial_value() #34
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(6) @Progname, ptr noundef nonnull align 1 dereferenceable(6) @.str.8, i64 6, i1 false) #33
  %6 = icmp slt i32 %0, 2
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  tail call void @usage() #34
  unreachable

8:                                                ; preds = %2
  store i8 0, ptr %4, align 16, !tbaa !7
  %9 = add nsw i32 %0, -1
  br label %10

10:                                               ; preds = %155, %8
  %11 = phi i32 [ %9, %8 ], [ %160, %155 ]
  %12 = phi i32 [ %0, %8 ], [ %159, %155 ]
  %13 = phi i32 [ undef, %8 ], [ %158, %155 ]
  %14 = phi i32 [ 0, %8 ], [ %157, %155 ]
  %15 = phi ptr [ %1, %8 ], [ %156, %155 ]
  %16 = getelementptr inbounds ptr, ptr %15, i64 1
  %17 = load ptr, ptr %16, align 8, !tbaa !45
  %18 = load i8, ptr %17, align 1, !tbaa !7
  %19 = icmp eq i8 %18, 45
  br i1 %19, label %20, label %162

20:                                               ; preds = %10
  %21 = getelementptr inbounds i8, ptr %17, i64 1
  %22 = load i8, ptr %21, align 1, !tbaa !7
  store i8 %22, ptr %3, align 1, !tbaa !7
  %23 = sext i8 %22 to i32
  switch i32 %23, label %138 [
    i32 99, label %24
    i32 115, label %25
    i32 112, label %26
    i32 120, label %27
    i32 76, label %155
    i32 100, label %33
    i32 101, label %68
    i32 102, label %83
    i32 104, label %93
    i32 105, label %94
    i32 107, label %95
    i32 108, label %116
    i32 110, label %117
    i32 118, label %118
    i32 116, label %119
    i32 66, label %120
    i32 119, label %121
    i32 121, label %127
    i32 73, label %128
    i32 83, label %131
    i32 68, label %134
    i32 71, label %137
  ]

24:                                               ; preds = %20
  store i32 1, ptr @COUNT, align 4, !tbaa !10
  br label %155

25:                                               ; preds = %20
  store i32 1, ptr @SILENT, align 4, !tbaa !10
  br label %155

26:                                               ; preds = %20
  store i32 0, ptr @I, align 4, !tbaa !10
  br label %155

27:                                               ; preds = %20
  store i32 1, ptr @WHOLELINE, align 4, !tbaa !10
  %28 = load i32, ptr @WORDBOUND, align 4, !tbaa !10
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %155, label %30

30:                                               ; preds = %27
  %31 = load ptr, ptr @stderr, align 8, !tbaa !45
  %32 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %31, ptr noundef nonnull @.str.1.15, ptr noundef nonnull @Progname) #35
  call void @exit(i32 noundef 2) #36
  unreachable

33:                                               ; preds = %20
  store i32 1, ptr @DELIMITER, align 4, !tbaa !10
  %34 = icmp ult i32 %12, 3
  br i1 %34, label %35, label %36

35:                                               ; preds = %33
  call void @usage() #34
  unreachable

36:                                               ; preds = %33
  %37 = getelementptr inbounds i8, ptr %17, i64 2
  %38 = load i8, ptr %37, align 1, !tbaa !7
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %40, label %52

40:                                               ; preds = %36
  %41 = getelementptr inbounds ptr, ptr %15, i64 2
  %42 = load ptr, ptr %41, align 8, !tbaa !45
  %43 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %42) #32
  %44 = trunc i64 %43 to i32
  store i32 %44, ptr @D_length, align 4, !tbaa !10
  %45 = icmp sgt i32 %44, 16
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = load ptr, ptr @stderr, align 8, !tbaa !45
  %48 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %47, ptr noundef nonnull @.str.2.20, ptr noundef nonnull @Progname) #35
  call void @exit(i32 noundef 2) #36
  unreachable

49:                                               ; preds = %40
  store i8 60, ptr @D_pattern, align 16, !tbaa !7
  %50 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) getelementptr inbounds ([16 x i8], ptr @D_pattern, i64 0, i64 1), ptr noundef nonnull dereferenceable(1) %42) #33
  %51 = add nsw i32 %12, -2
  br label %61

52:                                               ; preds = %36
  %53 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %37) #32
  %54 = trunc i64 %53 to i32
  store i32 %54, ptr @D_length, align 4, !tbaa !10
  %55 = icmp sgt i32 %54, 16
  br i1 %55, label %56, label %59

56:                                               ; preds = %52
  %57 = load ptr, ptr @stderr, align 8, !tbaa !45
  %58 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %57, ptr noundef nonnull @.str.2.20, ptr noundef nonnull @Progname) #35
  call void @exit(i32 noundef 2) #36
  unreachable

59:                                               ; preds = %52
  store i8 60, ptr @D_pattern, align 16, !tbaa !7
  %60 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) getelementptr inbounds ([16 x i8], ptr @D_pattern, i64 0, i64 1), ptr noundef nonnull dereferenceable(1) %37) #33
  br label %61

61:                                               ; preds = %59, %49
  %62 = phi i32 [ %44, %49 ], [ %54, %59 ]
  %63 = phi ptr [ %41, %49 ], [ %16, %59 ]
  %64 = phi i32 [ %51, %49 ], [ %11, %59 ]
  %65 = call i64 @strlen(ptr nonnull dereferenceable(1) @D_pattern)
  %66 = getelementptr inbounds i8, ptr @D_pattern, i64 %65
  store i32 2112318, ptr %66, align 1
  %67 = add nsw i32 %62, 1
  store i32 %67, ptr @D_length, align 4, !tbaa !10
  br label %155

68:                                               ; preds = %20
  %69 = add nsw i32 %12, -2
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %68
  %72 = load ptr, ptr @stderr, align 8, !tbaa !45
  %73 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %72, ptr noundef nonnull @.str.4.21, ptr noundef nonnull @Progname) #35
  call void @usage() #34
  unreachable

74:                                               ; preds = %68
  %75 = getelementptr inbounds ptr, ptr %15, i64 2
  %76 = load ptr, ptr %75, align 8, !tbaa !45
  %77 = load i8, ptr %76, align 1, !tbaa !7
  %78 = icmp eq i8 %77, 45
  br i1 %78, label %79, label %81

79:                                               ; preds = %74
  store i8 92, ptr %4, align 16, !tbaa !7
  %80 = call ptr @strcat(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) %76) #33
  br label %155

81:                                               ; preds = %74
  %82 = call ptr @strcat(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) %76) #33
  br label %155

83:                                               ; preds = %20
  store i32 1, ptr @PAT_FILE, align 4, !tbaa !10
  %84 = getelementptr inbounds ptr, ptr %15, i64 2
  %85 = add nsw i32 %12, -2
  %86 = load ptr, ptr %84, align 8, !tbaa !45
  %87 = call i32 (ptr, i32, ...) @open(ptr noundef %86, i32 noundef 0) #33
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %155

89:                                               ; preds = %83
  %.lcssa6 = phi ptr [ %84, %83 ]
  %90 = load ptr, ptr @stderr, align 8, !tbaa !45
  %91 = load ptr, ptr %.lcssa6, align 8, !tbaa !45
  %92 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %90, ptr noundef nonnull @.str.5.24, ptr noundef nonnull @Progname, ptr noundef %91) #35
  call void @exit(i32 noundef 2) #36
  unreachable

93:                                               ; preds = %20
  store i32 1, ptr @NOFILENAME, align 4, !tbaa !10
  br label %155

94:                                               ; preds = %20
  store i32 1, ptr @NOUPPER, align 4, !tbaa !10
  br label %155

95:                                               ; preds = %20
  %96 = add nsw i32 %12, -2
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %95
  %99 = load ptr, ptr @stderr, align 8, !tbaa !45
  %100 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %99, ptr noundef nonnull @.str.6.25, ptr noundef nonnull @Progname) #35
  call void @usage() #34
  unreachable

101:                                              ; preds = %95
  store i32 1, ptr @CONSTANT, align 4, !tbaa !10
  %102 = getelementptr inbounds ptr, ptr %15, i64 2
  %103 = load ptr, ptr %102, align 8, !tbaa !45
  %104 = call ptr @strcat(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) %103) #33
  %105 = icmp ugt i32 %12, 3
  br i1 %105, label %108, label %106

106:                                              ; preds = %101
  %.lcssa48 = phi i32 [ %12, %101 ]
  %.lcssa35 = phi i32 [ %13, %101 ]
  %.lcssa22 = phi i32 [ %14, %101 ]
  %.lcssa4 = phi ptr [ %102, %101 ]
  %.lcssa2 = phi i32 [ %96, %101 ]
  %107 = add nsw i32 %.lcssa48, -3
  br label %162

108:                                              ; preds = %101
  %109 = getelementptr inbounds ptr, ptr %15, i64 3
  %110 = load ptr, ptr %109, align 8, !tbaa !45
  %111 = load i8, ptr %110, align 1, !tbaa !7
  %112 = icmp eq i8 %111, 45
  br i1 %112, label %113, label %155

113:                                              ; preds = %108
  %114 = load ptr, ptr @stderr, align 8, !tbaa !45
  %115 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %114, ptr noundef nonnull @.str.7, ptr noundef nonnull @Progname) #35
  call void @exit(i32 noundef 2) #36
  unreachable

116:                                              ; preds = %20
  store i32 1, ptr @FILENAMEONLY, align 4, !tbaa !10
  br label %155

117:                                              ; preds = %20
  store i32 1, ptr @LINENUM, align 4, !tbaa !10
  br label %155

118:                                              ; preds = %20
  store i32 1, ptr @INVERSE, align 4, !tbaa !10
  br label %155

119:                                              ; preds = %20
  store i32 1, ptr @OUTTAIL, align 4, !tbaa !10
  br label %155

120:                                              ; preds = %20
  store i32 1, ptr @BESTMATCH, align 4, !tbaa !10
  br label %155

121:                                              ; preds = %20
  store i32 1, ptr @WORDBOUND, align 4, !tbaa !10
  %122 = load i32, ptr @WHOLELINE, align 4, !tbaa !10
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %155, label %124

124:                                              ; preds = %121
  %125 = load ptr, ptr @stderr, align 8, !tbaa !45
  %126 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %125, ptr noundef nonnull @.str.1.15, ptr noundef nonnull @Progname) #35
  call void @exit(i32 noundef 2) #36
  unreachable

127:                                              ; preds = %20
  store i32 1, ptr @NOPROMPT, align 4, !tbaa !10
  br label %155

128:                                              ; preds = %20
  %129 = getelementptr inbounds i8, ptr %17, i64 2
  %130 = call i32 @atoi(ptr nocapture noundef nonnull %129) #32
  store i32 %130, ptr @I, align 4, !tbaa !10
  store i32 1, ptr @JUMP, align 4, !tbaa !10
  br label %155

131:                                              ; preds = %20
  %132 = getelementptr inbounds i8, ptr %17, i64 2
  %133 = call i32 @atoi(ptr nocapture noundef nonnull %132) #32
  store i32 %133, ptr @S, align 4, !tbaa !10
  store i32 1, ptr @JUMP, align 4, !tbaa !10
  br label %155

134:                                              ; preds = %20
  %135 = getelementptr inbounds i8, ptr %17, i64 2
  %136 = call i32 @atoi(ptr nocapture noundef nonnull %135) #32
  store i32 %136, ptr @DD, align 4, !tbaa !10
  store i32 1, ptr @JUMP, align 4, !tbaa !10
  br label %155

137:                                              ; preds = %20
  store i32 1, ptr @FILEOUT, align 4, !tbaa !10
  store i32 1, ptr @COUNT, align 4, !tbaa !10
  br label %155

138:                                              ; preds = %20
  %139 = tail call ptr @__ctype_b_loc() #37
  %140 = load ptr, ptr %139, align 8, !tbaa !45
  %141 = sext i8 %22 to i64
  %142 = getelementptr inbounds i16, ptr %140, i64 %141
  %143 = load i16, ptr %142, align 2, !tbaa !62
  %144 = and i16 %143, 2048
  %145 = icmp eq i16 %144, 0
  br i1 %145, label %152, label %146

146:                                              ; preds = %138
  store i32 1, ptr @APPROX, align 4, !tbaa !10
  %147 = call i32 @atoi(ptr nocapture noundef nonnull %21) #32
  %148 = icmp sgt i32 %147, 8
  br i1 %148, label %149, label %155

149:                                              ; preds = %146
  %150 = load ptr, ptr @stderr, align 8, !tbaa !45
  %151 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %150, ptr noundef nonnull @.str.8.42, ptr noundef nonnull @Progname, i32 noundef 8) #35
  call void @exit(i32 noundef 2) #36
  unreachable

152:                                              ; preds = %138
  %.lcssa17 = phi i32 [ %23, %138 ]
  %153 = load ptr, ptr @stderr, align 8, !tbaa !45
  %154 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %153, ptr noundef nonnull @.str.9, ptr noundef nonnull @Progname, i32 noundef %.lcssa17) #35
  call void @usage() #34
  unreachable

155:                                              ; preds = %146, %137, %134, %131, %128, %127, %121, %120, %119, %118, %117, %116, %108, %94, %93, %83, %81, %79, %61, %27, %26, %25, %24, %20
  %156 = phi ptr [ %16, %146 ], [ %16, %137 ], [ %16, %134 ], [ %16, %131 ], [ %16, %128 ], [ %16, %127 ], [ %16, %121 ], [ %16, %120 ], [ %16, %119 ], [ %16, %118 ], [ %16, %117 ], [ %16, %116 ], [ %102, %108 ], [ %16, %94 ], [ %16, %93 ], [ %84, %83 ], [ %75, %79 ], [ %75, %81 ], [ %63, %61 ], [ %16, %20 ], [ %16, %27 ], [ %16, %26 ], [ %16, %25 ], [ %16, %24 ]
  %157 = phi i32 [ %147, %146 ], [ %14, %137 ], [ %14, %134 ], [ %14, %131 ], [ %14, %128 ], [ %14, %127 ], [ %14, %121 ], [ %14, %120 ], [ %14, %119 ], [ %14, %118 ], [ %14, %117 ], [ %14, %116 ], [ %14, %108 ], [ %14, %94 ], [ %14, %93 ], [ %14, %83 ], [ %14, %79 ], [ %14, %81 ], [ %14, %61 ], [ %14, %20 ], [ %14, %27 ], [ %14, %26 ], [ %14, %25 ], [ %14, %24 ]
  %158 = phi i32 [ %13, %146 ], [ %13, %137 ], [ %13, %134 ], [ %13, %131 ], [ %13, %128 ], [ %13, %127 ], [ %13, %121 ], [ %13, %120 ], [ %13, %119 ], [ %13, %118 ], [ %13, %117 ], [ %13, %116 ], [ %13, %108 ], [ %13, %94 ], [ %13, %93 ], [ %87, %83 ], [ %13, %79 ], [ %13, %81 ], [ %13, %61 ], [ %13, %20 ], [ %13, %27 ], [ %13, %26 ], [ %13, %25 ], [ %13, %24 ]
  %159 = phi i32 [ %11, %146 ], [ %11, %137 ], [ %11, %134 ], [ %11, %131 ], [ %11, %128 ], [ %11, %127 ], [ %11, %121 ], [ %11, %120 ], [ %11, %119 ], [ %11, %118 ], [ %11, %117 ], [ %11, %116 ], [ %96, %108 ], [ %11, %94 ], [ %11, %93 ], [ %85, %83 ], [ %69, %79 ], [ %69, %81 ], [ %64, %61 ], [ %11, %20 ], [ %11, %27 ], [ %11, %26 ], [ %11, %25 ], [ %11, %24 ]
  %160 = add nsw i32 %159, -1
  %161 = icmp sgt i32 %159, 1
  br i1 %161, label %10, label %162, !llvm.loop !63

162:                                              ; preds = %155, %106, %10
  %163 = phi i32 [ %.lcssa22, %106 ], [ %14, %10 ], [ %157, %155 ]
  %164 = phi i32 [ %.lcssa35, %106 ], [ %13, %10 ], [ %158, %155 ]
  %165 = phi i32 [ %.lcssa2, %106 ], [ %12, %10 ], [ %159, %155 ]
  %166 = phi i32 [ %107, %106 ], [ %11, %10 ], [ %160, %155 ]
  %167 = phi ptr [ %.lcssa4, %106 ], [ %16, %10 ], [ %156, %155 ]
  %168 = load i32, ptr @FILENAMEONLY, align 4, !tbaa !10
  %169 = icmp ne i32 %168, 0
  %170 = load i32, ptr @NOFILENAME, align 4
  %171 = icmp ne i32 %170, 0
  %172 = select i1 %169, i1 %171, i1 false
  br i1 %172, label %173, label %176

173:                                              ; preds = %162
  %174 = load ptr, ptr @stderr, align 8, !tbaa !45
  %175 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %174, ptr noundef nonnull @.str.10, ptr noundef nonnull @Progname) #35
  br label %176

176:                                              ; preds = %173, %162
  %177 = load i32, ptr @COUNT, align 4, !tbaa !10
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %189, label %179

179:                                              ; preds = %176
  %180 = load i32, ptr @FILENAMEONLY, align 4, !tbaa !10
  %181 = icmp ne i32 %180, 0
  %182 = load i32, ptr @NOFILENAME, align 4
  %183 = icmp ne i32 %182, 0
  %184 = select i1 %181, i1 true, i1 %183
  br i1 %184, label %185, label %189

185:                                              ; preds = %179
  store i32 0, ptr @FILENAMEONLY, align 4, !tbaa !10
  %186 = load i32, ptr @FILEOUT, align 4, !tbaa !10
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %188, label %189

188:                                              ; preds = %185
  store i32 0, ptr @NOFILENAME, align 4, !tbaa !10
  br label %189

189:                                              ; preds = %188, %185, %179, %176
  %190 = load i32, ptr @PAT_FILE, align 4, !tbaa !10
  %191 = icmp eq i32 %190, 0
  %192 = load i8, ptr %4, align 16
  %193 = icmp eq i8 %192, 0
  %194 = select i1 %191, i1 %193, i1 false
  br i1 %194, label %195, label %203

195:                                              ; preds = %189
  %196 = icmp eq i32 %166, 0
  br i1 %196, label %197, label %198

197:                                              ; preds = %195
  call void @usage() #34
  unreachable

198:                                              ; preds = %195
  %199 = load ptr, ptr %167, align 8, !tbaa !45
  %200 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) %199) #33
  %201 = add nsw i32 %165, -2
  %202 = getelementptr inbounds ptr, ptr %167, i64 1
  br label %203

203:                                              ; preds = %198, %189
  %204 = phi ptr [ %202, %198 ], [ %167, %189 ]
  %205 = phi i32 [ %201, %198 ], [ %166, %189 ]
  store i32 0, ptr @Numfiles, align 4, !tbaa !10
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %249, label %207

207:                                              ; preds = %203
  %208 = sext i32 %205 to i64
  %209 = shl nsw i64 %208, 3
  %210 = call noalias ptr @malloc(i64 noundef %209) #39
  store ptr %210, ptr @Textfiles, align 8, !tbaa !45
  %211 = icmp eq ptr %210, null
  br i1 %211, label %212, label %215

212:                                              ; preds = %207
  %213 = load ptr, ptr @stderr, align 8, !tbaa !45
  %214 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %213, ptr noundef nonnull @.str.11, ptr noundef nonnull @Progname) #35
  call void @exit(i32 noundef 2) #36
  unreachable

215:                                              ; preds = %246, %207
  %216 = phi i32 [ %218, %246 ], [ %205, %207 ]
  %217 = phi ptr [ %247, %246 ], [ %204, %207 ]
  %218 = add nsw i32 %216, -1
  %219 = load ptr, ptr %217, align 8, !tbaa !45
  %220 = call i32 @check_file(ptr noundef %219) #33
  %221 = icmp eq i32 %220, -3
  br i1 %221, label %222, label %226

222:                                              ; preds = %215
  %223 = load ptr, ptr @stderr, align 8, !tbaa !45
  %224 = load ptr, ptr %217, align 8, !tbaa !45
  %225 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %223, ptr noundef nonnull @.str.12, ptr noundef nonnull @Progname, ptr noundef %224) #35
  br label %246

226:                                              ; preds = %215
  %227 = load ptr, ptr %217, align 8, !tbaa !45
  %228 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %227) #32
  %229 = add i64 %228, 1
  %230 = call noalias ptr @malloc(i64 noundef %229) #39
  %231 = load ptr, ptr @Textfiles, align 8, !tbaa !45
  %232 = load i32, ptr @Numfiles, align 4, !tbaa !10
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds ptr, ptr %231, i64 %233
  store ptr %230, ptr %234, align 8, !tbaa !45
  %235 = icmp eq ptr %230, null
  br i1 %235, label %236, label %239

236:                                              ; preds = %226
  %237 = load ptr, ptr @stderr, align 8, !tbaa !45
  %238 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %237, ptr noundef nonnull @.str.11, ptr noundef nonnull @Progname) #35
  call void @exit(i32 noundef 2) #36
  unreachable

239:                                              ; preds = %226
  %240 = load ptr, ptr @Textfiles, align 8, !tbaa !45
  %241 = add nsw i32 %232, 1
  store i32 %241, ptr @Numfiles, align 4, !tbaa !10
  %242 = getelementptr inbounds ptr, ptr %240, i64 %233
  %243 = load ptr, ptr %242, align 8, !tbaa !45
  %244 = load ptr, ptr %217, align 8, !tbaa !45
  %245 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %243, ptr noundef nonnull dereferenceable(1) %244) #33
  br label %246

246:                                              ; preds = %239, %222
  %247 = getelementptr inbounds ptr, ptr %217, i64 1
  %248 = icmp eq i32 %218, 0
  br i1 %248, label %249, label %215, !llvm.loop !64

249:                                              ; preds = %246, %203
  call void @checksg(ptr noundef nonnull %4, i32 noundef %163) #34
  %250 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) %4) #33
  %251 = load i32, ptr @SGREP, align 4, !tbaa !10
  %252 = icmp eq i32 %251, 0
  br i1 %252, label %253, label %256

253:                                              ; preds = %249
  call void @preprocess(ptr noundef nonnull @D_pattern, ptr noundef nonnull %4) #33
  %254 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) @old_D_pat, ptr noundef nonnull dereferenceable(1) @D_pattern) #33
  %255 = call i32 @maskgen(ptr noundef nonnull %4, i32 noundef %163) #33
  br label %259

256:                                              ; preds = %249
  %257 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %5) #32
  %258 = trunc i64 %257 to i32
  br label %259

259:                                              ; preds = %256, %253
  %260 = phi i32 [ %255, %253 ], [ %258, %256 ]
  %261 = load i32, ptr @PAT_FILE, align 4, !tbaa !10
  %262 = icmp eq i32 %261, 0
  br i1 %262, label %264, label %263

263:                                              ; preds = %259
  call void @prepf(i32 noundef %164) #33
  br label %264

264:                                              ; preds = %263, %259
  %265 = load i32, ptr @Numfiles, align 4, !tbaa !10
  %266 = icmp sgt i32 %265, 1
  br i1 %266, label %267, label %268

267:                                              ; preds = %264
  store i32 1, ptr @FNAME, align 4, !tbaa !10
  br label %268

268:                                              ; preds = %267, %264
  %269 = load i32, ptr @NOFILENAME, align 4, !tbaa !10
  %270 = icmp eq i32 %269, 0
  br i1 %270, label %272, label %271

271:                                              ; preds = %268
  store i32 0, ptr @FNAME, align 4, !tbaa !10
  br label %272

272:                                              ; preds = %271, %268
  store i32 0, ptr @num_of_matched, align 4, !tbaa !10
  call void @compat() #33
  br i1 %206, label %276, label %273

273:                                              ; preds = %272
  %274 = load i32, ptr @Numfiles, align 4, !tbaa !10
  %275 = icmp sgt i32 %274, 0
  br i1 %275, label %310, label %379

276:                                              ; preds = %272
  %277 = load i32, ptr @FILENAMEONLY, align 4, !tbaa !10
  %278 = icmp eq i32 %277, 0
  br i1 %278, label %282, label %279

279:                                              ; preds = %276
  %280 = load ptr, ptr @stderr, align 8, !tbaa !45
  %281 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %280, ptr noundef nonnull @.str.13, ptr noundef nonnull @Progname) #35
  call void @exit(i32 noundef 2) #36
  unreachable

282:                                              ; preds = %276
  %283 = load i32, ptr @PAT_FILE, align 4, !tbaa !10
  %284 = icmp eq i32 %283, 0
  br i1 %284, label %286, label %285

285:                                              ; preds = %282
  call void @mgrep(i32 noundef 0) #33
  br label %293

286:                                              ; preds = %282
  %287 = load i32, ptr @SGREP, align 4, !tbaa !10
  %288 = icmp eq i32 %287, 0
  br i1 %288, label %292, label %289

289:                                              ; preds = %286
  %290 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %5) #32
  %291 = trunc i64 %290 to i32
  call void @sgrep(ptr noundef nonnull %5, i32 noundef %291, i32 noundef 0, i32 noundef %163) #33
  br label %293

292:                                              ; preds = %286
  call void @bitap(ptr noundef nonnull @old_D_pat, ptr noundef nonnull %4, i32 noundef 0, i32 noundef %260, i32 noundef %163) #33
  br label %293

293:                                              ; preds = %292, %289, %285
  %294 = load i32, ptr @COUNT, align 4, !tbaa !10
  %295 = icmp eq i32 %294, 0
  br i1 %295, label %507, label %296

296:                                              ; preds = %293
  %297 = load i32, ptr @INVERSE, align 4, !tbaa !10
  %298 = icmp ne i32 %297, 0
  %299 = load i32, ptr @PAT_FILE, align 4
  %300 = icmp ne i32 %299, 0
  %301 = select i1 %298, i1 %300, i1 false
  br i1 %301, label %302, label %307

302:                                              ; preds = %296
  %303 = load i32, ptr @total_line, align 4, !tbaa !10
  %304 = load i32, ptr @num_of_matched, align 4, !tbaa !10
  %305 = sub nsw i32 %303, %304
  %306 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14, i32 noundef %305) #34
  br label %507

307:                                              ; preds = %296
  %308 = load i32, ptr @num_of_matched, align 4, !tbaa !10
  %309 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14, i32 noundef %308) #34
  br label %507

310:                                              ; preds = %373, %273
  %311 = phi i64 [ %374, %373 ], [ 0, %273 ]
  %312 = load ptr, ptr @Textfiles, align 8, !tbaa !45
  %313 = getelementptr inbounds ptr, ptr %312, i64 %311
  %314 = load ptr, ptr %313, align 8, !tbaa !45
  %315 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) @CurrentFileName, ptr noundef nonnull dereferenceable(1) %314) #33
  %316 = load ptr, ptr %313, align 8, !tbaa !45
  %317 = call i32 (ptr, i32, ...) @open(ptr noundef %316, i32 noundef 0) #33
  %318 = icmp slt i32 %317, 1
  br i1 %318, label %319, label %325

319:                                              ; preds = %310
  %320 = load ptr, ptr @stderr, align 8, !tbaa !45
  %321 = load ptr, ptr @Textfiles, align 8, !tbaa !45
  %322 = getelementptr inbounds ptr, ptr %321, i64 %311
  %323 = load ptr, ptr %322, align 8, !tbaa !45
  %324 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %320, ptr noundef nonnull @.str.15, ptr noundef nonnull @Progname, ptr noundef %323) #35
  br label %373

325:                                              ; preds = %310
  %326 = load i32, ptr @PAT_FILE, align 4, !tbaa !10
  %327 = icmp eq i32 %326, 0
  br i1 %327, label %329, label %328

328:                                              ; preds = %325
  call void @mgrep(i32 noundef %317) #33
  br label %336

329:                                              ; preds = %325
  %330 = load i32, ptr @SGREP, align 4, !tbaa !10
  %331 = icmp eq i32 %330, 0
  br i1 %331, label %335, label %332

332:                                              ; preds = %329
  %333 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %5) #32
  %334 = trunc i64 %333 to i32
  call void @sgrep(ptr noundef nonnull %5, i32 noundef %334, i32 noundef %317, i32 noundef %163) #33
  br label %336

335:                                              ; preds = %329
  call void @bitap(ptr noundef nonnull @old_D_pat, ptr noundef nonnull %4, i32 noundef %317, i32 noundef %260, i32 noundef %163) #33
  br label %336

336:                                              ; preds = %335, %332, %328
  %337 = load i32, ptr @num_of_matched, align 4, !tbaa !10
  %338 = icmp eq i32 %337, 0
  br i1 %338, label %340, label %339

339:                                              ; preds = %336
  store i32 0, ptr @NOMATCH, align 4, !tbaa !10
  br label %340

340:                                              ; preds = %339, %336
  %341 = load i32, ptr @COUNT, align 4, !tbaa !10
  %342 = icmp eq i32 %341, 0
  %343 = load i32, ptr @FILEOUT, align 4
  %344 = icmp ne i32 %343, 0
  %345 = select i1 %342, i1 true, i1 %344
  br i1 %345, label %366, label %346

346:                                              ; preds = %340
  %347 = load i32, ptr @INVERSE, align 4, !tbaa !10
  %348 = icmp ne i32 %347, 0
  %349 = load i32, ptr @PAT_FILE, align 4
  %350 = icmp ne i32 %349, 0
  %351 = select i1 %348, i1 %350, i1 false
  %352 = load i32, ptr @FNAME, align 4, !tbaa !10
  %353 = icmp eq i32 %352, 0
  br i1 %351, label %354, label %361

354:                                              ; preds = %346
  %355 = load i32, ptr @total_line, align 4, !tbaa !10
  %356 = sub nsw i32 %355, %337
  br i1 %353, label %359, label %357

357:                                              ; preds = %354
  %358 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, ptr noundef nonnull @CurrentFileName, i32 noundef %356) #34
  br label %366

359:                                              ; preds = %354
  %360 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14, i32 noundef %356) #34
  br label %366

361:                                              ; preds = %346
  br i1 %353, label %364, label %362

362:                                              ; preds = %361
  %363 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, ptr noundef nonnull @CurrentFileName, i32 noundef %337) #34
  br label %366

364:                                              ; preds = %361
  %365 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14, i32 noundef %337) #34
  br label %366

366:                                              ; preds = %364, %362, %359, %357, %340
  %367 = load i32, ptr @FILEOUT, align 4, !tbaa !10
  %368 = icmp ne i32 %367, 0
  %369 = load i32, ptr @num_of_matched, align 4
  %370 = icmp ne i32 %369, 0
  %371 = select i1 %368, i1 %370, i1 false
  br i1 %371, label %372, label %373

372:                                              ; preds = %366
  call void @file_out(ptr noundef nonnull @CurrentFileName) #34
  br label %373

373:                                              ; preds = %372, %366, %319
  %374 = add nuw nsw i64 %311, 1
  %375 = call i32 @close(i32 noundef %317) #33
  store i32 0, ptr @num_of_matched, align 4, !tbaa !10
  %376 = load i32, ptr @Numfiles, align 4, !tbaa !10
  %377 = sext i32 %376 to i64
  %378 = icmp slt i64 %374, %377
  br i1 %378, label %310, label %379, !llvm.loop !65

379:                                              ; preds = %373, %273
  %380 = load i32, ptr @NOMATCH, align 4, !tbaa !10
  %381 = icmp ne i32 %380, 0
  %382 = load i32, ptr @BESTMATCH, align 4
  %383 = icmp ne i32 %382, 0
  %384 = select i1 %381, i1 %383, i1 false
  br i1 %384, label %385, label %507

385:                                              ; preds = %379
  %386 = load i32, ptr @WORDBOUND, align 4, !tbaa !10
  %387 = icmp ne i32 %386, 0
  %388 = load i32, ptr @WHOLELINE, align 4
  %389 = icmp ne i32 %388, 0
  %390 = select i1 %387, i1 true, i1 %389
  %391 = load i32, ptr @LINENUM, align 4
  %392 = icmp ne i32 %391, 0
  %393 = select i1 %390, i1 true, i1 %392
  %394 = load i32, ptr @INVERSE, align 4
  %395 = icmp ne i32 %394, 0
  %396 = select i1 %393, i1 true, i1 %395
  br i1 %396, label %397, label %400

397:                                              ; preds = %385
  store i32 0, ptr @SGREP, align 4, !tbaa !10
  call void @preprocess(ptr noundef nonnull @D_pattern, ptr noundef nonnull %4) #33
  %398 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) @old_D_pat, ptr noundef nonnull dereferenceable(1) @D_pattern) #33
  %399 = call i32 @maskgen(ptr noundef nonnull %4, i32 noundef %163) #33
  br label %400

400:                                              ; preds = %397, %385
  %401 = phi i32 [ %399, %397 ], [ %260, %385 ]
  store i32 1, ptr @COUNT, align 4, !tbaa !10
  %402 = icmp sgt i32 %401, 1
  %403 = load i32, ptr @num_of_matched, align 4
  %404 = icmp eq i32 %403, 0
  %405 = select i1 %402, i1 %404, i1 false
  br i1 %405, label %406, label %449

406:                                              ; preds = %400
  %407 = load i32, ptr @Numfiles, align 4, !tbaa !10
  br label %408

408:                                              ; preds = %440, %406
  %409 = phi i32 [ %442, %440 ], [ %407, %406 ]
  %410 = phi i32 [ %443, %440 ], [ 1, %406 ]
  %411 = icmp sgt i32 %409, 0
  br i1 %411, label %412, label %440

412:                                              ; preds = %432, %408
  %413 = phi i64 [ %433, %432 ], [ 0, %408 ]
  %414 = load ptr, ptr @Textfiles, align 8, !tbaa !45
  %415 = getelementptr inbounds ptr, ptr %414, i64 %413
  %416 = load ptr, ptr %415, align 8, !tbaa !45
  %417 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) @CurrentFileName, ptr noundef nonnull dereferenceable(1) %416) #33
  %418 = load ptr, ptr %415, align 8, !tbaa !45
  %419 = call i32 (ptr, i32, ...) @open(ptr noundef %418, i32 noundef 0) #33
  %420 = icmp sgt i32 %419, 0
  br i1 %420, label %421, label %432

421:                                              ; preds = %412
  %422 = load i32, ptr @PAT_FILE, align 4, !tbaa !10
  %423 = icmp eq i32 %422, 0
  br i1 %423, label %425, label %424

424:                                              ; preds = %421
  call void @mgrep(i32 noundef %419) #33
  br label %432

425:                                              ; preds = %421
  %426 = load i32, ptr @SGREP, align 4, !tbaa !10
  %427 = icmp eq i32 %426, 0
  br i1 %427, label %431, label %428

428:                                              ; preds = %425
  %429 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %5) #32
  %430 = trunc i64 %429 to i32
  call void @sgrep(ptr noundef nonnull %5, i32 noundef %430, i32 noundef %419, i32 noundef %410) #33
  br label %432

431:                                              ; preds = %425
  call void @bitap(ptr noundef nonnull @old_D_pat, ptr noundef nonnull %4, i32 noundef %419, i32 noundef %401, i32 noundef %410) #33
  br label %432

432:                                              ; preds = %431, %428, %424, %412
  %433 = add nuw nsw i64 %413, 1
  %434 = call i32 @close(i32 noundef %419) #33
  %435 = load i32, ptr @Numfiles, align 4, !tbaa !10
  %436 = sext i32 %435 to i64
  %437 = icmp slt i64 %433, %436
  br i1 %437, label %412, label %438, !llvm.loop !66

438:                                              ; preds = %432
  %.lcssa = phi i32 [ %435, %432 ]
  %439 = load i32, ptr @num_of_matched, align 4
  br label %440

440:                                              ; preds = %438, %408
  %441 = phi i32 [ %439, %438 ], [ 0, %408 ]
  %442 = phi i32 [ %.lcssa, %438 ], [ %409, %408 ]
  %443 = add nuw nsw i32 %410, 1
  %444 = icmp slt i32 %443, %401
  %445 = icmp ult i32 %410, 8
  %446 = and i1 %444, %445
  %447 = icmp eq i32 %441, 0
  %448 = select i1 %446, i1 %447, i1 false
  br i1 %448, label %408, label %449, !llvm.loop !67

449:                                              ; preds = %440, %400
  %450 = phi i32 [ 0, %400 ], [ %410, %440 ]
  %451 = phi i32 [ %403, %400 ], [ %441, %440 ]
  %452 = icmp sgt i32 %451, 0
  br i1 %452, label %453, label %507

453:                                              ; preds = %449
  store i32 0, ptr @COUNT, align 4, !tbaa !10
  %454 = load i32, ptr @NOPROMPT, align 4, !tbaa !10
  %455 = icmp eq i32 %454, 0
  br i1 %455, label %456, label %477

456:                                              ; preds = %453
  %457 = icmp eq i32 %450, 1
  %458 = load ptr, ptr @stderr, align 8, !tbaa !45
  br i1 %457, label %459, label %461

459:                                              ; preds = %456
  %460 = call i64 @fwrite(ptr nonnull @.str.17, i64 24, i64 1, ptr %458) #38
  br label %463

461:                                              ; preds = %456
  %462 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %458, ptr noundef nonnull @.str.18, i32 noundef %450) #35
  br label %463

463:                                              ; preds = %461, %459
  %464 = load ptr, ptr @stderr, align 8, !tbaa !45
  %465 = call i32 @fflush(ptr noundef %464) #34
  %466 = load i32, ptr @num_of_matched, align 4, !tbaa !10
  %467 = icmp eq i32 %466, 1
  %468 = load ptr, ptr @stderr, align 8, !tbaa !45
  br i1 %467, label %469, label %471

469:                                              ; preds = %463
  %470 = call i64 @fwrite(ptr nonnull @.str.19, i64 34, i64 1, ptr %468) #38
  br label %473

471:                                              ; preds = %463
  %472 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %468, ptr noundef nonnull @.str.20, i32 noundef %466) #35
  br label %473

473:                                              ; preds = %471, %469
  %474 = call i32 (ptr, ...) @__isoc99_scanf(ptr noundef nonnull @.str.21, ptr noundef nonnull %3) #34
  %475 = load i8, ptr %3, align 1, !tbaa !7
  %476 = icmp eq i8 %475, 121
  br i1 %476, label %477, label %507

477:                                              ; preds = %473, %453
  %478 = load i32, ptr @Numfiles, align 4, !tbaa !10
  %479 = icmp sgt i32 %478, 0
  br i1 %479, label %480, label %506

480:                                              ; preds = %500, %477
  %481 = phi i64 [ %501, %500 ], [ 0, %477 ]
  %482 = load ptr, ptr @Textfiles, align 8, !tbaa !45
  %483 = getelementptr inbounds ptr, ptr %482, i64 %481
  %484 = load ptr, ptr %483, align 8, !tbaa !45
  %485 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) @CurrentFileName, ptr noundef nonnull dereferenceable(1) %484) #33
  %486 = load ptr, ptr %483, align 8, !tbaa !45
  %487 = call i32 (ptr, i32, ...) @open(ptr noundef %486, i32 noundef 0) #33
  %488 = icmp sgt i32 %487, 0
  br i1 %488, label %489, label %500

489:                                              ; preds = %480
  %490 = load i32, ptr @PAT_FILE, align 4, !tbaa !10
  %491 = icmp eq i32 %490, 0
  br i1 %491, label %493, label %492

492:                                              ; preds = %489
  call void @mgrep(i32 noundef %487) #33
  br label %500

493:                                              ; preds = %489
  %494 = load i32, ptr @SGREP, align 4, !tbaa !10
  %495 = icmp eq i32 %494, 0
  br i1 %495, label %499, label %496

496:                                              ; preds = %493
  %497 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %5) #32
  %498 = trunc i64 %497 to i32
  call void @sgrep(ptr noundef nonnull %5, i32 noundef %498, i32 noundef %487, i32 noundef %450) #33
  br label %500

499:                                              ; preds = %493
  call void @bitap(ptr noundef nonnull @old_D_pat, ptr noundef nonnull %4, i32 noundef %487, i32 noundef %401, i32 noundef %450) #33
  br label %500

500:                                              ; preds = %499, %496, %492, %480
  %501 = add nuw nsw i64 %481, 1
  %502 = call i32 @close(i32 noundef %487) #33
  %503 = load i32, ptr @Numfiles, align 4, !tbaa !10
  %504 = sext i32 %503 to i64
  %505 = icmp slt i64 %501, %504
  br i1 %505, label %480, label %506, !llvm.loop !68

506:                                              ; preds = %500, %477
  store i32 0, ptr @NOMATCH, align 4, !tbaa !10
  br label %507

507:                                              ; preds = %506, %473, %449, %379, %307, %302, %293
  %508 = load i32, ptr @EATFIRST, align 4, !tbaa !10
  %509 = icmp eq i32 %508, 0
  br i1 %509, label %512, label %510

510:                                              ; preds = %507
  %511 = call i32 @putchar(i32 10)
  store i32 0, ptr @EATFIRST, align 4, !tbaa !10
  br label %512

512:                                              ; preds = %510, %507
  %513 = load i32, ptr @num_of_matched, align 4, !tbaa !10
  %514 = icmp eq i32 %513, 0
  br i1 %514, label %516, label %515

515:                                              ; preds = %512
  store i32 0, ptr @NOMATCH, align 4, !tbaa !10
  br label %520

516:                                              ; preds = %512
  %517 = load i32, ptr @NOMATCH, align 4, !tbaa !10
  %518 = icmp eq i32 %517, 0
  br i1 %518, label %520, label %519

519:                                              ; preds = %516
  call void @exit(i32 noundef 1) #36
  unreachable

520:                                              ; preds = %516, %515
  call void @exit(i32 noundef 0) #36
  unreachable
}

; Function Attrs: nofree nosync nounwind optsize memory(write, argmem: none, inaccessiblemem: none) uwtable
define internal void @initial_value() #15 {
  store i32 0, ptr @NOUPPER, align 4, !tbaa !10
  store i32 0, ptr @NOPROMPT, align 4, !tbaa !10
  store i32 0, ptr @BESTMATCH, align 4, !tbaa !10
  store i32 0, ptr @FNAME, align 4, !tbaa !10
  store i32 0, ptr @REGEX, align 4, !tbaa !10
  store i32 0, ptr @JUMP, align 4, !tbaa !10
  store i32 0, ptr @SGREP, align 4, !tbaa !10
  store i32 0, ptr @WHOLELINE, align 4, !tbaa !10
  store i32 0, ptr @LINENUM, align 4, !tbaa !10
  store i32 0, ptr @COUNT, align 4, !tbaa !10
  store i32 0, ptr @OUTTAIL, align 4, !tbaa !10
  store i32 0, ptr @TRUNCATE, align 4, !tbaa !10
  store i32 0, ptr @AND, align 4, !tbaa !10
  store i32 0, ptr @INVERSE, align 4, !tbaa !10
  store i32 0, ptr @EATFIRST, align 4, !tbaa !10
  store i32 1, ptr @FIRSTOUTPUT, align 4, !tbaa !10
  store i32 1, ptr @NOMATCH, align 4, !tbaa !10
  store i32 1, ptr @FIRST_IN_RE, align 4, !tbaa !10
  store i32 1, ptr @S, align 4, !tbaa !10
  store i32 1, ptr @DD, align 4, !tbaa !10
  store i32 1, ptr @I, align 4, !tbaa !10
  store i32 1, ptr @TAIL, align 4, !tbaa !10
  store i32 1, ptr @HEAD, align 4, !tbaa !10
  store i32 2, ptr @D_length, align 4, !tbaa !10
  store i32 0, ptr @num_of_matched, align 4, !tbaa !10
  store i32 0, ptr @SIMPLEPATTERN, align 4, !tbaa !10
  store i32 0, ptr @PSIZE, align 4, !tbaa !10
  store i32 0, ptr @Num_Pat, align 4, !tbaa !10
  store i32 0, ptr @SILENT, align 4, !tbaa !10
  store i32 0, ptr @RE_ERR, align 4, !tbaa !10
  store i32 0, ptr @DELIMITER, align 4, !tbaa !10
  store i32 0, ptr @WORDBOUND, align 4, !tbaa !10
  store i32 1, ptr getelementptr inbounds ([33 x i32], ptr @Bit, i64 0, i64 32), align 16, !tbaa !10
  br label %1

1:                                                ; preds = %1, %0
  %2 = phi i32 [ 1, %0 ], [ %4, %1 ]
  %3 = phi i64 [ 31, %0 ], [ %6, %1 ]
  %4 = shl i32 %2, 1
  %5 = getelementptr inbounds [33 x i32], ptr @Bit, i64 0, i64 %3
  store i32 %4, ptr %5, align 4, !tbaa !10
  %6 = add nsw i64 %3, -1
  %7 = icmp ugt i64 %3, 1
  br i1 %7, label %1, label %8, !llvm.loop !69

8:                                                ; preds = %1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) @Mask, i8 0, i64 1024, i1 false), !tbaa !10
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #16

; Function Attrs: noreturn nounwind optsize uwtable
define internal void @usage() #14 {
  %1 = load ptr, ptr @stderr, align 8, !tbaa !45
  %2 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.27, ptr noundef nonnull @Progname) #35
  %3 = tail call i32 @putchar(i32 10)
  %4 = load ptr, ptr @stderr, align 8, !tbaa !45
  %5 = tail call i64 @fwrite(ptr nonnull @.str.28, i64 36, i64 1, ptr %4) #38
  %6 = load ptr, ptr @stderr, align 8, !tbaa !45
  %7 = tail call i64 @fwrite(ptr nonnull @.str.29, i64 39, i64 1, ptr %6) #38
  %8 = load ptr, ptr @stderr, align 8, !tbaa !45
  %9 = tail call i64 @fwrite(ptr nonnull @.str.30, i64 41, i64 1, ptr %8) #38
  %10 = load ptr, ptr @stderr, align 8, !tbaa !45
  %11 = tail call i64 @fwrite(ptr nonnull @.str.31, i64 28, i64 1, ptr %10) #38
  %12 = load ptr, ptr @stderr, align 8, !tbaa !45
  %13 = tail call i64 @fwrite(ptr nonnull @.str.32, i64 29, i64 1, ptr %12) #38
  %14 = load ptr, ptr @stderr, align 8, !tbaa !45
  %15 = tail call i64 @fwrite(ptr nonnull @.str.33, i64 45, i64 1, ptr %14) #38
  %16 = load ptr, ptr @stderr, align 8, !tbaa !45
  %17 = tail call i64 @fwrite(ptr nonnull @.str.34, i64 51, i64 1, ptr %16) #38
  %18 = load ptr, ptr @stderr, align 8, !tbaa !45
  %19 = tail call i64 @fwrite(ptr nonnull @.str.35, i64 44, i64 1, ptr %18) #38
  %20 = load ptr, ptr @stderr, align 8, !tbaa !45
  %21 = tail call i64 @fwrite(ptr nonnull @.str.36, i64 47, i64 1, ptr %20) #38
  %22 = load ptr, ptr @stderr, align 8, !tbaa !45
  %23 = tail call i64 @fwrite(ptr nonnull @.str.37, i64 70, i64 1, ptr %22) #38
  %24 = load ptr, ptr @stderr, align 8, !tbaa !45
  %25 = tail call i64 @fwrite(ptr nonnull @.str.38, i64 61, i64 1, ptr %24) #38
  %26 = load ptr, ptr @stderr, align 8, !tbaa !45
  %27 = tail call i64 @fwrite(ptr nonnull @.str.39, i64 42, i64 1, ptr %26) #38
  %28 = tail call i32 @putchar(i32 10)
  tail call void @exit(i32 noundef 2) #36
  unreachable
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #3

; Function Attrs: nofree optsize
declare noundef i32 @open(ptr nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(read)
declare i32 @atoi(ptr nocapture noundef) local_unnamed_addr #17

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #10

; Function Attrs: nounwind optsize uwtable
define internal void @checksg(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #32
  %4 = trunc i64 %3 to i32
  %5 = load i32, ptr @PAT_FILE, align 4, !tbaa !10
  %6 = icmp ne i32 %5, 0
  %7 = icmp sgt i32 %4, %1
  %8 = select i1 %6, i1 true, i1 %7
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = load ptr, ptr @stderr, align 8, !tbaa !45
  %11 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef nonnull @.str.40, ptr noundef nonnull @Progname) #35
  tail call void @exit(i32 noundef 2) #36
  unreachable

12:                                               ; preds = %2
  store i32 1, ptr @SIMPLEPATTERN, align 4, !tbaa !10
  %13 = icmp sgt i32 %4, 0
  br i1 %13, label %14, label %32

14:                                               ; preds = %12
  %15 = icmp sgt i32 %1, 0
  %16 = and i64 %3, 4294967295
  br label %17

17:                                               ; preds = %25, %14
  %18 = phi i32 [ 1, %14 ], [ %26, %25 ]
  %19 = phi i64 [ 0, %14 ], [ %27, %25 ]
  %20 = getelementptr inbounds i8, ptr %0, i64 %19
  %21 = load i8, ptr %20, align 1, !tbaa !7
  switch i8 %21, label %25 [
    i8 59, label %24
    i8 44, label %24
    i8 46, label %24
    i8 42, label %24
    i8 45, label %24
    i8 91, label %24
    i8 93, label %24
    i8 40, label %24
    i8 41, label %24
    i8 60, label %24
    i8 62, label %24
    i8 94, label %22
    i8 36, label %23
    i8 124, label %24
    i8 35, label %24
    i8 92, label %24
  ]

22:                                               ; preds = %17
  br i1 %15, label %24, label %25

23:                                               ; preds = %17
  br i1 %15, label %24, label %25

24:                                               ; preds = %23, %22, %17, %17, %17, %17, %17, %17, %17, %17, %17, %17, %17, %17, %17, %17
  store i32 0, ptr @SIMPLEPATTERN, align 4, !tbaa !10
  br label %25

25:                                               ; preds = %24, %23, %22, %17
  %26 = phi i32 [ %18, %22 ], [ %18, %23 ], [ %18, %17 ], [ 0, %24 ]
  %27 = add nuw nsw i64 %19, 1
  %28 = icmp eq i64 %27, %16
  br i1 %28, label %29, label %17, !llvm.loop !70

29:                                               ; preds = %25
  %.lcssa = phi i32 [ %26, %25 ]
  %30 = load i32, ptr @CONSTANT, align 4, !tbaa !10
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %36, label %35

32:                                               ; preds = %12
  %33 = load i32, ptr @CONSTANT, align 4, !tbaa !10
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %32, %29
  store i32 1, ptr @SIMPLEPATTERN, align 4, !tbaa !10
  br label %38

36:                                               ; preds = %29
  %37 = icmp eq i32 %.lcssa, 0
  br i1 %37, label %84, label %38

38:                                               ; preds = %36, %35, %32
  %39 = load i32, ptr @NOUPPER, align 4, !tbaa !10
  %40 = icmp eq i32 %39, 0
  %41 = icmp eq i32 %1, 0
  %42 = or i1 %41, %40
  %43 = load i32, ptr @JUMP, align 4
  %44 = icmp ne i32 %43, 1
  %45 = select i1 %42, i1 %44, i1 false
  %46 = load i32, ptr @I, align 4
  %47 = icmp ne i32 %46, 0
  %48 = select i1 %45, i1 %47, i1 false
  %49 = load i32, ptr @LINENUM, align 4
  %50 = icmp eq i32 %49, 0
  %51 = select i1 %48, i1 %50, i1 false
  %52 = load i32, ptr @DELIMITER, align 4
  %53 = icmp eq i32 %52, 0
  %54 = select i1 %51, i1 %53, i1 false
  %55 = load i32, ptr @INVERSE, align 4
  %56 = icmp eq i32 %55, 0
  %57 = select i1 %54, i1 %56, i1 false
  br i1 %57, label %58, label %84

58:                                               ; preds = %38
  %59 = load i32, ptr @WORDBOUND, align 4, !tbaa !10
  %60 = icmp ne i32 %59, 0
  %61 = icmp sgt i32 %1, 0
  %62 = and i1 %61, %60
  br i1 %62, label %84, label %63

63:                                               ; preds = %58
  %64 = load i32, ptr @WHOLELINE, align 4, !tbaa !10
  %65 = icmp ne i32 %64, 0
  %66 = and i1 %61, %65
  %67 = load i32, ptr @SILENT, align 4
  %68 = icmp ne i32 %67, 0
  %69 = select i1 %66, i1 true, i1 %68
  br i1 %69, label %84, label %70

70:                                               ; preds = %63
  store i32 1, ptr @SGREP, align 4, !tbaa !10
  %71 = icmp sgt i32 %4, 15
  br i1 %71, label %72, label %73

72:                                               ; preds = %70
  store i32 1, ptr @DNA, align 4, !tbaa !10
  br label %74

73:                                               ; preds = %70
  br i1 %13, label %74, label %84

74:                                               ; preds = %73, %72
  %75 = and i64 %3, 4294967295
  br label %76

76:                                               ; preds = %81, %74
  %77 = phi i64 [ 0, %74 ], [ %82, %81 ]
  %78 = getelementptr inbounds i8, ptr %0, i64 %77
  %79 = load i8, ptr %78, align 1, !tbaa !7
  switch i8 %79, label %80 [
    i8 116, label %81
    i8 103, label %81
    i8 99, label %81
    i8 97, label %81
  ]

80:                                               ; preds = %76
  store i32 0, ptr @DNA, align 4, !tbaa !10
  br label %81

81:                                               ; preds = %80, %76, %76, %76, %76
  %82 = add nuw nsw i64 %77, 1
  %83 = icmp eq i64 %82, %75
  br i1 %83, label %84, label %76, !llvm.loop !71

84:                                               ; preds = %81, %73, %63, %58, %38, %36
  ret void
}

; Function Attrs: nofree nounwind optsize uwtable
define internal void @file_out(ptr nocapture noundef readonly %0) #9 {
  %2 = alloca [4097 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4097, ptr nonnull %2) #31
  %3 = load i32, ptr @FNAME, align 4, !tbaa !10
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %30, label %5

5:                                                ; preds = %1
  %6 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #32
  %7 = trunc i64 %6 to i32
  %8 = tail call i32 @putchar(i32 noundef 10) #34
  %9 = icmp sgt i32 %7, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %10, %5
  %11 = phi i32 [ %13, %10 ], [ 0, %5 ]
  %12 = tail call i32 @putchar(i32 noundef 58) #34
  %13 = add nuw nsw i32 %11, 1
  %14 = icmp eq i32 %13, %7
  br i1 %14, label %15, label %10, !llvm.loop !72

15:                                               ; preds = %10, %5
  %16 = tail call i32 @putchar(i32 noundef 10) #34
  %17 = tail call i32 @puts(ptr nonnull dereferenceable(1) @CurrentFileName)
  %18 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #32
  %19 = trunc i64 %18 to i32
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %21, %15
  %22 = phi i32 [ %24, %21 ], [ 0, %15 ]
  %23 = tail call i32 @putchar(i32 noundef 58) #34
  %24 = add nuw nsw i32 %22, 1
  %25 = icmp eq i32 %24, %19
  br i1 %25, label %26, label %21, !llvm.loop !73

26:                                               ; preds = %21, %15
  %27 = tail call i32 @putchar(i32 noundef 10) #34
  %28 = load ptr, ptr @stdout, align 8, !tbaa !45
  %29 = tail call i32 @fflush(ptr noundef %28) #34
  br label %30

30:                                               ; preds = %26, %1
  %31 = tail call i32 (ptr, i32, ...) @open(ptr noundef %0, i32 noundef 0) #33
  br label %32

32:                                               ; preds = %36, %30
  %33 = call i64 @read(i32 noundef %31, ptr noundef nonnull %2, i64 noundef 4096) #33
  %34 = trunc i64 %33 to i32
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = and i64 %33, 4294967295
  %38 = call i64 @write(i32 noundef 1, ptr noundef nonnull %2, i64 noundef %37) #33
  br label %32, !llvm.loop !74

39:                                               ; preds = %32
  call void @llvm.lifetime.end.p0(i64 4097, ptr nonnull %2) #31
  ret void
}

; Function Attrs: optsize
declare i32 @close(i32 noundef) local_unnamed_addr #18

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind optsize
declare noundef i32 @__isoc99_scanf(ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: nofree nounwind optsize
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree optsize
declare noundef i64 @write(i32 noundef, ptr nocapture noundef readonly, i64 noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind optsize uwtable
define internal void @compute_next(i32 noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) #9 {
  %4 = alloca [32 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %4) #31
  %5 = sub nsw i32 32, %0
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds [33 x i32], ptr @Bit, i64 0, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !10
  store i32 0, ptr %7, align 4, !tbaa !10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %4, i8 0, i64 128, i1 false), !tbaa !10
  %9 = icmp sgt i32 %0, 1
  br i1 %9, label %11, label %10

10:                                               ; preds = %3
  store i32 %8, ptr %7, align 4, !tbaa !10
  br label %42

11:                                               ; preds = %3
  %12 = zext i32 %0 to i64
  br label %13

13:                                               ; preds = %37, %11
  %14 = phi i64 [ 1, %11 ], [ %38, %37 ]
  %15 = getelementptr inbounds [32 x [32 x i32]], ptr @table, i64 0, i64 %14, i64 0
  %16 = load i32, ptr %15, align 16, !tbaa !10
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %37

18:                                               ; preds = %13
  %19 = getelementptr inbounds [32 x i32], ptr %4, i64 0, i64 %14
  %20 = load i32, ptr %19, align 4, !tbaa !10
  br label %21

21:                                               ; preds = %21, %18
  %22 = phi i64 [ 0, %18 ], [ %25, %21 ]
  %23 = phi i32 [ %20, %18 ], [ %30, %21 ]
  %24 = phi i32 [ %16, %18 ], [ %32, %21 ]
  %25 = add nuw nsw i64 %22, 1
  %26 = add nsw i32 %24, %5
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [33 x i32], ptr @Bit, i64 0, i64 %27
  %29 = load i32, ptr %28, align 4, !tbaa !10
  %30 = or i32 %29, %23
  %31 = getelementptr inbounds [32 x [32 x i32]], ptr @table, i64 0, i64 %14, i64 %25
  %32 = load i32, ptr %31, align 4, !tbaa !10
  %33 = icmp sgt i32 %32, 0
  %34 = icmp ult i64 %22, 9
  %35 = and i1 %34, %33
  br i1 %35, label %21, label %36, !llvm.loop !75

36:                                               ; preds = %21
  %.lcssa2 = phi i32 [ %30, %21 ]
  store i32 %.lcssa2, ptr %19, align 4, !tbaa !10
  br label %37

37:                                               ; preds = %36, %13
  %38 = add nuw nsw i64 %14, 1
  %39 = icmp eq i64 %38, %12
  br i1 %39, label %40, label %13, !llvm.loop !76

40:                                               ; preds = %37
  store i32 %8, ptr %7, align 4, !tbaa !10
  %41 = icmp slt i32 %0, 16
  br i1 %41, label %42, label %86

42:                                               ; preds = %40, %10
  %43 = icmp sgt i32 %0, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %44, %42
  %45 = phi i32 [ %47, %44 ], [ 1, %42 ]
  %46 = phi i32 [ %48, %44 ], [ 0, %42 ]
  %47 = shl nsw i32 %45, 1
  %48 = add nuw nsw i32 %46, 1
  %49 = icmp eq i32 %48, %0
  br i1 %49, label %50, label %44, !llvm.loop !77

50:                                               ; preds = %44, %42
  %51 = phi i32 [ 1, %42 ], [ %47, %44 ]
  %52 = shl nsw i32 %51, 1
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %169

54:                                               ; preds = %50
  %55 = ashr i32 %51, 1
  %56 = zext i32 %0 to i64
  %57 = zext i32 %51 to i64
  %58 = zext i32 %52 to i64
  br label %59

59:                                               ; preds = %83, %54
  %60 = phi i64 [ %57, %54 ], [ %84, %83 ]
  %61 = getelementptr inbounds i32, ptr %1, i64 %60
  store i32 %55, ptr %61, align 4, !tbaa !10
  br i1 %43, label %62, label %83

62:                                               ; preds = %59
  %63 = trunc i64 %60 to i32
  %64 = load i32, ptr getelementptr inbounds ([33 x i32], ptr @Bit, i64 0, i64 32), align 16, !tbaa !10
  br label %65

65:                                               ; preds = %77, %62
  %66 = phi i32 [ %55, %62 ], [ %78, %77 ]
  %67 = phi i32 [ %64, %62 ], [ %79, %77 ]
  %68 = phi i64 [ %56, %62 ], [ %81, %77 ]
  %69 = phi i32 [ %63, %62 ], [ %80, %77 ]
  %70 = and i32 %67, %69
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %77, label %72

72:                                               ; preds = %65
  %73 = getelementptr inbounds [32 x i32], ptr %4, i64 0, i64 %68
  %74 = load i32, ptr %73, align 4, !tbaa !10
  %75 = or i32 %74, %66
  store i32 %75, ptr %61, align 4, !tbaa !10
  %76 = load i32, ptr getelementptr inbounds ([33 x i32], ptr @Bit, i64 0, i64 32), align 16, !tbaa !10
  br label %77

77:                                               ; preds = %72, %65
  %78 = phi i32 [ %75, %72 ], [ %66, %65 ]
  %79 = phi i32 [ %76, %72 ], [ %67, %65 ]
  %80 = ashr i32 %69, 1
  %81 = add nsw i64 %68, -1
  %82 = icmp sgt i64 %68, 1
  br i1 %82, label %65, label %83, !llvm.loop !78

83:                                               ; preds = %77, %59
  %84 = add nuw nsw i64 %60, 1
  %85 = icmp eq i64 %84, %58
  br i1 %85, label %169, label %59, !llvm.loop !79

86:                                               ; preds = %40
  %87 = icmp ugt i32 %0, 30
  br i1 %87, label %88, label %91

88:                                               ; preds = %86
  %89 = load ptr, ptr @stderr, align 8, !tbaa !45
  %90 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %89, ptr noundef nonnull @.str.23, ptr noundef nonnull @Progname) #35
  br label %91

91:                                               ; preds = %88, %86
  %92 = and i32 %0, 1
  %93 = add nuw nsw i32 %92, %0
  %94 = lshr i32 %93, 1
  br label %95

95:                                               ; preds = %95, %91
  %96 = phi i32 [ %98, %95 ], [ 1, %91 ]
  %97 = phi i32 [ %99, %95 ], [ 0, %91 ]
  %98 = shl nsw i32 %96, 1
  %99 = add nuw nsw i32 %97, 1
  %100 = icmp eq i32 %99, %94
  br i1 %100, label %101, label %95, !llvm.loop !77

101:                                              ; preds = %95
  %.lcssa1 = phi i32 [ %96, %95 ]
  %.lcssa = phi i32 [ %98, %95 ]
  %102 = shl nsw i32 %.lcssa1, 2
  %103 = icmp slt i32 %.lcssa, %102
  br i1 %103, label %104, label %169

104:                                              ; preds = %101
  %105 = lshr i32 %0, 1
  %106 = icmp slt i32 %105, %0
  %107 = icmp ult i32 %0, 2
  %108 = sext i32 %0 to i64
  %109 = zext i32 %105 to i64
  %110 = tail call i32 @llvm.umax.i32(i32 %105, i32 1)
  %111 = sext i32 %.lcssa to i64
  %112 = sext i32 %102 to i64
  %113 = zext i32 %110 to i64
  br label %114

114:                                              ; preds = %166, %104
  %115 = phi i64 [ %111, %104 ], [ %167, %166 ]
  %116 = load i32, ptr %7, align 4, !tbaa !10
  %117 = lshr i32 %116, 1
  %118 = getelementptr inbounds i32, ptr %1, i64 %115
  store i32 %117, ptr %118, align 4, !tbaa !10
  br i1 %106, label %119, label %141

119:                                              ; preds = %114
  %120 = trunc i64 %115 to i32
  %121 = load i32, ptr getelementptr inbounds ([33 x i32], ptr @Bit, i64 0, i64 32), align 16, !tbaa !10
  br label %122

122:                                              ; preds = %135, %119
  %123 = phi i32 [ %117, %119 ], [ %136, %135 ]
  %124 = phi i32 [ %121, %119 ], [ %137, %135 ]
  %125 = phi i64 [ %108, %119 ], [ %139, %135 ]
  %126 = phi i32 [ %120, %119 ], [ %138, %135 ]
  %127 = and i32 %124, %126
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %135, label %129

129:                                              ; preds = %122
  %130 = sub nsw i64 %125, %109
  %131 = getelementptr inbounds [32 x i32], ptr %4, i64 0, i64 %130
  %132 = load i32, ptr %131, align 4, !tbaa !10
  %133 = or i32 %132, %123
  store i32 %133, ptr %118, align 4, !tbaa !10
  %134 = load i32, ptr getelementptr inbounds ([33 x i32], ptr @Bit, i64 0, i64 32), align 16, !tbaa !10
  br label %135

135:                                              ; preds = %129, %122
  %136 = phi i32 [ %133, %129 ], [ %123, %122 ]
  %137 = phi i32 [ %134, %129 ], [ %124, %122 ]
  %138 = ashr i32 %126, 1
  %139 = add nsw i64 %125, -1
  %140 = icmp sgt i64 %139, %109
  br i1 %140, label %122, label %141, !llvm.loop !80

141:                                              ; preds = %135, %114
  %142 = sub nsw i64 %115, %111
  %143 = getelementptr inbounds i32, ptr %2, i64 %142
  store i32 0, ptr %143, align 4, !tbaa !10
  br i1 %107, label %166, label %144

144:                                              ; preds = %141
  %145 = trunc i64 %142 to i32
  %146 = load i32, ptr getelementptr inbounds ([33 x i32], ptr @Bit, i64 0, i64 32), align 16, !tbaa !10
  br label %147

147:                                              ; preds = %160, %144
  %148 = phi i32 [ 0, %144 ], [ %161, %160 ]
  %149 = phi i32 [ %146, %144 ], [ %162, %160 ]
  %150 = phi i64 [ 0, %144 ], [ %164, %160 ]
  %151 = phi i32 [ %145, %144 ], [ %163, %160 ]
  %152 = and i32 %149, %151
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %160, label %154

154:                                              ; preds = %147
  %155 = sub nsw i64 %108, %150
  %156 = getelementptr inbounds [32 x i32], ptr %4, i64 0, i64 %155
  %157 = load i32, ptr %156, align 4, !tbaa !10
  %158 = or i32 %157, %148
  store i32 %158, ptr %143, align 4, !tbaa !10
  %159 = load i32, ptr getelementptr inbounds ([33 x i32], ptr @Bit, i64 0, i64 32), align 16, !tbaa !10
  br label %160

160:                                              ; preds = %154, %147
  %161 = phi i32 [ %158, %154 ], [ %148, %147 ]
  %162 = phi i32 [ %159, %154 ], [ %149, %147 ]
  %163 = ashr i32 %151, 1
  %164 = add nuw nsw i64 %150, 1
  %165 = icmp eq i64 %164, %113
  br i1 %165, label %166, label %147, !llvm.loop !81

166:                                              ; preds = %160, %141
  %167 = add nsw i64 %115, 1
  %168 = icmp eq i64 %167, %112
  br i1 %168, label %169, label %114, !llvm.loop !82

169:                                              ; preds = %166, %101, %83, %50
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %4) #31
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #19

; Function Attrs: nounwind optsize uwtable
define internal void @re1(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca [5 x i32], align 16
  %5 = alloca [5 x i32], align 16
  %6 = alloca [66000 x i32], align 16
  %7 = alloca [66000 x i32], align 16
  %8 = alloca [50177 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #31
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %5) #31
  call void @llvm.lifetime.start.p0(i64 264000, ptr nonnull %6) #31
  call void @llvm.lifetime.start.p0(i64 264000, ptr nonnull %7) #31
  call void @llvm.lifetime.start.p0(i64 50177, ptr nonnull %8) #31
  %9 = load i32, ptr @NO_ERR_MASK, align 4, !tbaa !10
  %10 = icmp sgt i32 %1, 30
  br i1 %10, label %11, label %14

11:                                               ; preds = %3
  %12 = load ptr, ptr @stderr, align 8, !tbaa !45
  %13 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %12, ptr noundef nonnull @.str.23, ptr noundef nonnull @Progname) #35
  tail call void @exit(i32 noundef 2) #36
  unreachable

14:                                               ; preds = %3
  %15 = sub nsw i32 32, %1
  %16 = sdiv i32 %1, 2
  %17 = add nsw i32 %1, 1
  %18 = icmp ult i32 %17, 3
  br i1 %18, label %32, label %19

19:                                               ; preds = %14
  %20 = tail call i32 @llvm.umax.i32(i32 %16, i32 1)
  br label %21

21:                                               ; preds = %21, %19
  %22 = phi i32 [ %29, %21 ], [ 32, %19 ]
  %23 = phi i32 [ %30, %21 ], [ 0, %19 ]
  %24 = phi i32 [ %28, %21 ], [ 0, %19 ]
  %25 = zext i32 %22 to i64
  %26 = getelementptr inbounds [33 x i32], ptr @Bit, i64 0, i64 %25
  %27 = load i32, ptr %26, align 4, !tbaa !10
  %28 = or i32 %27, %24
  %29 = add i32 %22, -1
  %30 = add nuw nsw i32 %23, 1
  %31 = icmp eq i32 %30, %20
  br i1 %31, label %32, label %21, !llvm.loop !83

32:                                               ; preds = %21, %14
  %33 = phi i32 [ 0, %14 ], [ %28, %21 ]
  %34 = phi i32 [ 0, %14 ], [ %20, %21 ]
  %35 = load i32, ptr @FIRST_IN_RE, align 4, !tbaa !10
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %32
  call void @compute_next(i32 noundef %1, ptr noundef nonnull %6, ptr noundef nonnull %7) #34
  br label %38

38:                                               ; preds = %37, %32
  store i32 0, ptr @FIRST_IN_RE, align 4, !tbaa !10
  %39 = sext i32 %15 to i64
  %40 = getelementptr inbounds [33 x i32], ptr @Bit, i64 0, i64 %39
  %41 = load i32, ptr %40, align 4, !tbaa !10
  store i32 %41, ptr @Init, align 16, !tbaa !10
  %42 = load i32, ptr @HEAD, align 4, !tbaa !10
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %50, label %44

44:                                               ; preds = %38
  %45 = sub i32 33, %1
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [33 x i32], ptr @Bit, i64 0, i64 %46
  %48 = load i32, ptr %47, align 4, !tbaa !10
  %49 = or i32 %48, %41
  store i32 %49, ptr @Init, align 16, !tbaa !10
  br label %50

50:                                               ; preds = %44, %38
  %51 = phi i32 [ %49, %44 ], [ %41, %38 ]
  %52 = icmp eq i32 %2, 0
  br i1 %52, label %73, label %53

53:                                               ; preds = %50
  %54 = add i32 %2, 1
  %55 = tail call i32 @llvm.umax.i32(i32 %54, i32 2)
  %56 = zext i32 %55 to i64
  br label %57

57:                                               ; preds = %57, %53
  %58 = phi i32 [ %51, %53 ], [ %69, %57 ]
  %59 = phi i64 [ 1, %53 ], [ %71, %57 ]
  %60 = lshr i32 %58, %16
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds [66000 x i32], ptr %6, i64 0, i64 %61
  %63 = load i32, ptr %62, align 4, !tbaa !10
  %64 = and i32 %58, %33
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds [66000 x i32], ptr %7, i64 0, i64 %65
  %67 = load i32, ptr %66, align 4, !tbaa !10
  %68 = or i32 %63, %67
  %69 = or i32 %68, %58
  %70 = getelementptr inbounds [8 x i32], ptr @Init, i64 0, i64 %59
  store i32 %69, ptr %70, align 4, !tbaa !10
  %71 = add nuw nsw i64 %59, 1
  %72 = icmp eq i64 %71, %56
  br i1 %72, label %73, label %57, !llvm.loop !84

73:                                               ; preds = %57, %50
  %74 = phi i32 [ 1, %50 ], [ %54, %57 ]
  %75 = or i32 %51, 1
  store i32 %75, ptr @Init1, align 4, !tbaa !10
  %76 = tail call i32 @llvm.umax.i32(i32 %74, i32 1)
  %77 = zext i32 %76 to i64
  %78 = shl nuw nsw i64 %77, 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %5, ptr noundef nonnull align 16 dereferenceable(1) @Init, i64 %78, i1 false), !tbaa !10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %4, ptr noundef nonnull align 16 dereferenceable(1) @Init, i64 %78, i1 false), !tbaa !10
  %79 = getelementptr inbounds i8, ptr %8, i64 1024
  %80 = getelementptr inbounds [50177 x i8], ptr %8, i64 0, i64 1023
  br i1 %52, label %111, label %81

81:                                               ; preds = %73
  %82 = getelementptr inbounds [5 x i32], ptr %5, i64 0, i64 1
  %83 = getelementptr inbounds [5 x i32], ptr %4, i64 0, i64 1
  %84 = icmp eq i32 %2, 1
  %85 = getelementptr inbounds [5 x i32], ptr %5, i64 0, i64 2
  %86 = getelementptr inbounds [5 x i32], ptr %4, i64 0, i64 2
  %87 = icmp eq i32 %2, 2
  %88 = getelementptr inbounds [5 x i32], ptr %5, i64 0, i64 3
  %89 = getelementptr inbounds [5 x i32], ptr %4, i64 0, i64 3
  %90 = icmp eq i32 %2, 3
  %91 = getelementptr inbounds [5 x i32], ptr %5, i64 0, i64 4
  %92 = getelementptr inbounds [5 x i32], ptr %4, i64 0, i64 4
  %93 = sext i32 %2 to i64
  %94 = getelementptr inbounds [5 x i32], ptr %5, i64 0, i64 %93
  %95 = getelementptr inbounds [5 x i32], ptr %4, i64 0, i64 %93
  %96 = tail call i32 @llvm.umax.i32(i32 %74, i32 1)
  %97 = tail call i32 @llvm.umax.i32(i32 %74, i32 2)
  %98 = zext i32 %96 to i64
  %99 = zext i32 %97 to i64
  %100 = zext i32 %97 to i64
  %101 = add nuw nsw i64 %98, 3
  %102 = and i64 %101, 8589934588
  %103 = add nsw i64 %98, -1
  %104 = insertelement <4 x i64> poison, i64 %103, i64 0
  %105 = shufflevector <4 x i64> %104, <4 x i64> poison, <4 x i32> zeroinitializer
  %106 = add nuw nsw i64 %98, 3
  %107 = and i64 %106, 8589934588
  %108 = add nsw i64 %98, -1
  %109 = insertelement <4 x i64> poison, i64 %108, i64 0
  %110 = shufflevector <4 x i64> %109, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %285

111:                                              ; preds = %73
  %112 = lshr i32 %51, %16
  %113 = zext i32 %112 to i64
  %114 = getelementptr inbounds [66000 x i32], ptr %6, i64 0, i64 %113
  %115 = and i32 %51, %33
  %116 = zext i32 %115 to i64
  %117 = getelementptr inbounds [66000 x i32], ptr %7, i64 0, i64 %116
  br label %118

118:                                              ; preds = %281, %111
  %119 = phi i32 [ %.lcssa1, %281 ], [ %51, %111 ]
  %120 = phi i32 [ %.lcssa, %281 ], [ %34, %111 ]
  %121 = phi i1 [ true, %281 ], [ false, %111 ]
  %122 = call i64 @read(i32 noundef %0, ptr noundef nonnull %79, i64 noundef 49152) #33
  %123 = trunc i64 %122 to i32
  %124 = icmp sgt i32 %123, 0
  br i1 %124, label %125, label %947

125:                                              ; preds = %118
  %126 = add nuw nsw i32 %123, 1024
  %127 = icmp ult i32 %123, 49152
  br i1 %127, label %128, label %137

128:                                              ; preds = %125
  %129 = add i64 %122, 1023
  %130 = and i64 %129, 4294967295
  %131 = getelementptr inbounds [50177 x i8], ptr %8, i64 0, i64 %130
  %132 = load i8, ptr %131, align 1, !tbaa !7
  %133 = icmp eq i8 %132, 10
  br i1 %133, label %137, label %134

134:                                              ; preds = %128
  %135 = zext i32 %126 to i64
  %136 = getelementptr inbounds [50177 x i8], ptr %8, i64 0, i64 %135
  store i8 10, ptr %136, align 1, !tbaa !7
  br label %137

137:                                              ; preds = %134, %128, %125
  br i1 %121, label %139, label %138

138:                                              ; preds = %137
  store i8 10, ptr %80, align 1, !tbaa !7
  br label %139

139:                                              ; preds = %138, %137
  %140 = phi i64 [ 1023, %138 ], [ 1024, %137 ]
  %141 = zext i32 %126 to i64
  br label %142

142:                                              ; preds = %277, %139
  %143 = phi i64 [ %140, %139 ], [ %213, %277 ]
  %144 = phi i32 [ %120, %139 ], [ %279, %277 ]
  %145 = phi i32 [ %119, %139 ], [ %278, %277 ]
  %146 = add nuw nsw i64 %143, 1
  %147 = getelementptr inbounds [50177 x i8], ptr %8, i64 0, i64 %143
  %148 = load i8, ptr %147, align 1, !tbaa !7
  %149 = zext i8 %148 to i64
  %150 = getelementptr inbounds [256 x i32], ptr @Mask, i64 0, i64 %149
  %151 = load i32, ptr %150, align 4, !tbaa !10
  %152 = icmp eq i8 %148, 10
  %153 = load i32, ptr @Init1, align 4, !tbaa !10
  %154 = and i32 %153, %145
  br i1 %152, label %164, label %155

155:                                              ; preds = %142
  %156 = icmp eq i32 %151, 0
  br i1 %156, label %210, label %157

157:                                              ; preds = %155
  %158 = lshr i32 %145, %16
  %159 = zext i32 %158 to i64
  %160 = getelementptr inbounds [66000 x i32], ptr %6, i64 0, i64 %159
  %161 = and i32 %145, %33
  %162 = zext i32 %161 to i64
  %163 = getelementptr inbounds [66000 x i32], ptr %7, i64 0, i64 %162
  br label %200

164:                                              ; preds = %142
  %165 = add nsw i32 %144, 1
  %166 = lshr i32 %145, %16
  %167 = zext i32 %166 to i64
  %168 = getelementptr inbounds [66000 x i32], ptr %6, i64 0, i64 %167
  %169 = load i32, ptr %168, align 4, !tbaa !10
  %170 = and i32 %145, %33
  %171 = zext i32 %170 to i64
  %172 = getelementptr inbounds [66000 x i32], ptr %7, i64 0, i64 %171
  %173 = load i32, ptr %172, align 4, !tbaa !10
  %174 = or i32 %173, %169
  %175 = and i32 %174, %151
  %176 = or i32 %175, %154
  %177 = load i32, ptr @TAIL, align 4, !tbaa !10
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %190, label %179

179:                                              ; preds = %164
  %180 = lshr i32 %176, %16
  %181 = zext i32 %180 to i64
  %182 = getelementptr inbounds [66000 x i32], ptr %6, i64 0, i64 %181
  %183 = load i32, ptr %182, align 4, !tbaa !10
  %184 = and i32 %176, %33
  %185 = zext i32 %184 to i64
  %186 = getelementptr inbounds [66000 x i32], ptr %7, i64 0, i64 %185
  %187 = load i32, ptr %186, align 4, !tbaa !10
  %188 = or i32 %183, %187
  %189 = or i32 %188, %176
  br label %190

190:                                              ; preds = %179, %164
  %191 = phi i32 [ %189, %179 ], [ %176, %164 ]
  %192 = and i32 %191, 1
  %193 = load i32, ptr @INVERSE, align 4, !tbaa !10
  %194 = icmp eq i32 %192, %193
  br i1 %194, label %200, label %195

195:                                              ; preds = %190
  %196 = load i32, ptr @FILENAMEONLY, align 4, !tbaa !10
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %198, label %943

198:                                              ; preds = %195
  %199 = trunc i64 %143 to i32
  call void @r_output(ptr noundef nonnull %8, i32 noundef %199, i32 noundef %126, i32 noundef %165) #34
  br label %200

200:                                              ; preds = %198, %190, %157
  %201 = phi ptr [ %163, %157 ], [ %117, %198 ], [ %117, %190 ]
  %202 = phi ptr [ %160, %157 ], [ %114, %198 ], [ %114, %190 ]
  %203 = phi i32 [ %154, %157 ], [ %51, %198 ], [ %51, %190 ]
  %204 = phi i32 [ %144, %157 ], [ %165, %198 ], [ %165, %190 ]
  %205 = load i32, ptr %202, align 4, !tbaa !10
  %206 = load i32, ptr %201, align 4, !tbaa !10
  %207 = or i32 %206, %205
  %208 = and i32 %207, %151
  %209 = or i32 %208, %203
  br label %210

210:                                              ; preds = %200, %155
  %211 = phi i32 [ %154, %155 ], [ %209, %200 ]
  %212 = phi i32 [ %144, %155 ], [ %204, %200 ]
  %213 = add nuw nsw i64 %143, 2
  %214 = getelementptr inbounds [50177 x i8], ptr %8, i64 0, i64 %146
  %215 = load i8, ptr %214, align 1, !tbaa !7
  %216 = zext i8 %215 to i64
  %217 = getelementptr inbounds [256 x i32], ptr @Mask, i64 0, i64 %216
  %218 = load i32, ptr %217, align 4, !tbaa !10
  %219 = icmp eq i8 %215, 10
  %220 = load i32, ptr @Init1, align 4, !tbaa !10
  %221 = and i32 %220, %211
  br i1 %219, label %231, label %222

222:                                              ; preds = %210
  %223 = icmp eq i32 %218, 0
  br i1 %223, label %277, label %224

224:                                              ; preds = %222
  %225 = lshr i32 %211, %16
  %226 = zext i32 %225 to i64
  %227 = getelementptr inbounds [66000 x i32], ptr %6, i64 0, i64 %226
  %228 = and i32 %211, %33
  %229 = zext i32 %228 to i64
  %230 = getelementptr inbounds [66000 x i32], ptr %7, i64 0, i64 %229
  br label %267

231:                                              ; preds = %210
  %232 = add nsw i32 %212, 1
  %233 = lshr i32 %211, %16
  %234 = zext i32 %233 to i64
  %235 = getelementptr inbounds [66000 x i32], ptr %6, i64 0, i64 %234
  %236 = load i32, ptr %235, align 4, !tbaa !10
  %237 = and i32 %211, %33
  %238 = zext i32 %237 to i64
  %239 = getelementptr inbounds [66000 x i32], ptr %7, i64 0, i64 %238
  %240 = load i32, ptr %239, align 4, !tbaa !10
  %241 = or i32 %240, %236
  %242 = and i32 %241, %218
  %243 = or i32 %242, %221
  %244 = load i32, ptr @TAIL, align 4, !tbaa !10
  %245 = icmp eq i32 %244, 0
  br i1 %245, label %257, label %246

246:                                              ; preds = %231
  %247 = lshr i32 %243, %16
  %248 = zext i32 %247 to i64
  %249 = getelementptr inbounds [66000 x i32], ptr %6, i64 0, i64 %248
  %250 = load i32, ptr %249, align 4, !tbaa !10
  %251 = and i32 %243, %33
  %252 = zext i32 %251 to i64
  %253 = getelementptr inbounds [66000 x i32], ptr %7, i64 0, i64 %252
  %254 = load i32, ptr %253, align 4, !tbaa !10
  %255 = or i32 %250, %254
  %256 = or i32 %255, %243
  br label %257

257:                                              ; preds = %246, %231
  %258 = phi i32 [ %256, %246 ], [ %243, %231 ]
  %259 = and i32 %258, 1
  %260 = load i32, ptr @INVERSE, align 4, !tbaa !10
  %261 = icmp eq i32 %259, %260
  br i1 %261, label %267, label %262

262:                                              ; preds = %257
  %263 = load i32, ptr @FILENAMEONLY, align 4, !tbaa !10
  %264 = icmp eq i32 %263, 0
  br i1 %264, label %265, label %943

265:                                              ; preds = %262
  %266 = trunc i64 %146 to i32
  call void @r_output(ptr noundef nonnull %8, i32 noundef %266, i32 noundef %126, i32 noundef %232) #34
  br label %267

267:                                              ; preds = %265, %257, %224
  %268 = phi ptr [ %230, %224 ], [ %117, %265 ], [ %117, %257 ]
  %269 = phi ptr [ %227, %224 ], [ %114, %265 ], [ %114, %257 ]
  %270 = phi i32 [ %221, %224 ], [ %51, %265 ], [ %51, %257 ]
  %271 = phi i32 [ %212, %224 ], [ %232, %265 ], [ %232, %257 ]
  %272 = load i32, ptr %269, align 4, !tbaa !10
  %273 = load i32, ptr %268, align 4, !tbaa !10
  %274 = or i32 %273, %272
  %275 = and i32 %274, %218
  %276 = or i32 %275, %270
  br label %277

277:                                              ; preds = %267, %222
  %278 = phi i32 [ %221, %222 ], [ %276, %267 ]
  %279 = phi i32 [ %212, %222 ], [ %271, %267 ]
  %280 = icmp ult i64 %213, %141
  br i1 %280, label %142, label %281, !llvm.loop !85

281:                                              ; preds = %277
  %.lcssa1 = phi i32 [ %278, %277 ]
  %.lcssa = phi i32 [ %279, %277 ]
  %282 = and i64 %122, 4294967295
  %283 = getelementptr inbounds i8, ptr %8, i64 %282
  %284 = call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %8, ptr noundef nonnull dereferenceable(1) %283, i64 noundef 1024) #33
  br label %118, !llvm.loop !86

285:                                              ; preds = %939, %81
  %286 = phi i1 [ true, %939 ], [ false, %81 ]
  %287 = phi i32 [ %.lcssa2, %939 ], [ %34, %81 ]
  %288 = call i64 @read(i32 noundef %0, ptr noundef nonnull %79, i64 noundef 49152) #33
  %289 = trunc i64 %288 to i32
  %290 = icmp sgt i32 %289, 0
  br i1 %290, label %291, label %947

291:                                              ; preds = %285
  %292 = add nuw nsw i32 %289, 1024
  %293 = icmp ult i32 %289, 49152
  br i1 %293, label %294, label %303

294:                                              ; preds = %291
  %295 = add i64 %288, 1023
  %296 = and i64 %295, 4294967295
  %297 = getelementptr inbounds [50177 x i8], ptr %8, i64 0, i64 %296
  %298 = load i8, ptr %297, align 1, !tbaa !7
  %299 = icmp eq i8 %298, 10
  br i1 %299, label %303, label %300

300:                                              ; preds = %294
  %301 = zext i32 %292 to i64
  %302 = getelementptr inbounds [50177 x i8], ptr %8, i64 0, i64 %301
  store i8 10, ptr %302, align 1, !tbaa !7
  br label %303

303:                                              ; preds = %300, %294, %291
  br i1 %286, label %305, label %304

304:                                              ; preds = %303
  store i8 10, ptr %80, align 1, !tbaa !7
  br label %305

305:                                              ; preds = %304, %303
  %306 = phi i64 [ 1023, %304 ], [ 1024, %303 ]
  %307 = zext i32 %292 to i64
  br label %308

308:                                              ; preds = %935, %305
  %309 = phi i64 [ %306, %305 ], [ %937, %935 ]
  %310 = phi i32 [ %287, %305 ], [ %936, %935 ]
  %311 = getelementptr inbounds [50177 x i8], ptr %8, i64 0, i64 %309
  %312 = load i8, ptr %311, align 1, !tbaa !7
  %313 = zext i8 %312 to i64
  %314 = getelementptr inbounds [256 x i32], ptr @Mask, i64 0, i64 %313
  %315 = load i32, ptr %314, align 4, !tbaa !10
  %316 = icmp eq i8 %312, 10
  br i1 %316, label %504, label %317

317:                                              ; preds = %308
  %318 = icmp eq i32 %315, 0
  %319 = load i32, ptr %5, align 16, !tbaa !10
  %320 = load i32, ptr @Init1, align 4, !tbaa !10
  %321 = and i32 %320, %319
  br i1 %318, label %441, label %322

322:                                              ; preds = %317
  %323 = lshr i32 %319, %16
  %324 = zext i32 %323 to i64
  %325 = getelementptr inbounds [66000 x i32], ptr %6, i64 0, i64 %324
  %326 = load i32, ptr %325, align 4, !tbaa !10
  %327 = and i32 %319, %33
  %328 = zext i32 %327 to i64
  %329 = getelementptr inbounds [66000 x i32], ptr %7, i64 0, i64 %328
  %330 = load i32, ptr %329, align 4, !tbaa !10
  %331 = or i32 %330, %326
  %332 = and i32 %331, %315
  %333 = or i32 %332, %321
  store i32 %333, ptr %4, align 16, !tbaa !10
  %334 = load i32, ptr %82, align 4, !tbaa !10
  %335 = and i32 %334, %320
  %336 = or i32 %332, %319
  %337 = lshr i32 %334, %16
  %338 = zext i32 %337 to i64
  %339 = getelementptr inbounds [66000 x i32], ptr %6, i64 0, i64 %338
  %340 = load i32, ptr %339, align 4, !tbaa !10
  %341 = and i32 %334, %33
  %342 = zext i32 %341 to i64
  %343 = getelementptr inbounds [66000 x i32], ptr %7, i64 0, i64 %342
  %344 = load i32, ptr %343, align 4, !tbaa !10
  %345 = or i32 %344, %340
  %346 = and i32 %345, %315
  %347 = lshr i32 %336, %16
  %348 = zext i32 %347 to i64
  %349 = getelementptr inbounds [66000 x i32], ptr %6, i64 0, i64 %348
  %350 = load i32, ptr %349, align 4, !tbaa !10
  %351 = and i32 %336, %33
  %352 = zext i32 %351 to i64
  %353 = getelementptr inbounds [66000 x i32], ptr %7, i64 0, i64 %352
  %354 = load i32, ptr %353, align 4, !tbaa !10
  %355 = or i32 %350, %354
  %356 = or i32 %355, %319
  %357 = and i32 %356, %9
  %358 = or i32 %357, %346
  %359 = or i32 %358, %335
  store i32 %359, ptr %83, align 4, !tbaa !10
  br i1 %84, label %623, label %360

360:                                              ; preds = %322
  %361 = load i32, ptr %85, align 8, !tbaa !10
  %362 = and i32 %361, %320
  %363 = or i32 %358, %334
  %364 = lshr i32 %361, %16
  %365 = zext i32 %364 to i64
  %366 = getelementptr inbounds [66000 x i32], ptr %6, i64 0, i64 %365
  %367 = load i32, ptr %366, align 4, !tbaa !10
  %368 = and i32 %361, %33
  %369 = zext i32 %368 to i64
  %370 = getelementptr inbounds [66000 x i32], ptr %7, i64 0, i64 %369
  %371 = load i32, ptr %370, align 4, !tbaa !10
  %372 = or i32 %371, %367
  %373 = and i32 %372, %315
  %374 = lshr i32 %363, %16
  %375 = zext i32 %374 to i64
  %376 = getelementptr inbounds [66000 x i32], ptr %6, i64 0, i64 %375
  %377 = load i32, ptr %376, align 4, !tbaa !10
  %378 = and i32 %363, %33
  %379 = zext i32 %378 to i64
  %380 = getelementptr inbounds [66000 x i32], ptr %7, i64 0, i64 %379
  %381 = load i32, ptr %380, align 4, !tbaa !10
  %382 = or i32 %377, %381
  %383 = or i32 %382, %334
  %384 = and i32 %383, %9
  %385 = or i32 %384, %373
  %386 = or i32 %385, %362
  store i32 %386, ptr %86, align 8, !tbaa !10
  br i1 %87, label %623, label %387

387:                                              ; preds = %360
  %388 = load i32, ptr %88, align 4, !tbaa !10
  %389 = and i32 %388, %320
  %390 = or i32 %385, %361
  %391 = lshr i32 %388, %16
  %392 = zext i32 %391 to i64
  %393 = getelementptr inbounds [66000 x i32], ptr %6, i64 0, i64 %392
  %394 = load i32, ptr %393, align 4, !tbaa !10
  %395 = and i32 %388, %33
  %396 = zext i32 %395 to i64
  %397 = getelementptr inbounds [66000 x i32], ptr %7, i64 0, i64 %396
  %398 = load i32, ptr %397, align 4, !tbaa !10
  %399 = or i32 %398, %394
  %400 = and i32 %399, %315
  %401 = lshr i32 %390, %16
  %402 = zext i32 %401 to i64
  %403 = getelementptr inbounds [66000 x i32], ptr %6, i64 0, i64 %402
  %404 = load i32, ptr %403, align 4, !tbaa !10
  %405 = and i32 %390, %33
  %406 = zext i32 %405 to i64
  %407 = getelementptr inbounds [66000 x i32], ptr %7, i64 0, i64 %406
  %408 = load i32, ptr %407, align 4, !tbaa !10
  %409 = or i32 %404, %408
  %410 = or i32 %409, %361
  %411 = and i32 %410, %9
  %412 = or i32 %411, %400
  %413 = or i32 %412, %389
  store i32 %413, ptr %89, align 4, !tbaa !10
  br i1 %90, label %623, label %414

414:                                              ; preds = %387
  %415 = load i32, ptr %91, align 16, !tbaa !10
  %416 = and i32 %415, %320
  %417 = or i32 %412, %388
  %418 = lshr i32 %415, %16
  %419 = zext i32 %418 to i64
  %420 = getelementptr inbounds [66000 x i32], ptr %6, i64 0, i64 %419
  %421 = load i32, ptr %420, align 4, !tbaa !10
  %422 = and i32 %415, %33
  %423 = zext i32 %422 to i64
  %424 = getelementptr inbounds [66000 x i32], ptr %7, i64 0, i64 %423
  %425 = load i32, ptr %424, align 4, !tbaa !10
  %426 = or i32 %425, %421
  %427 = and i32 %426, %315
  %428 = lshr i32 %417, %16
  %429 = zext i32 %428 to i64
  %430 = getelementptr inbounds [66000 x i32], ptr %6, i64 0, i64 %429
  %431 = load i32, ptr %430, align 4, !tbaa !10
  %432 = and i32 %417, %33
  %433 = zext i32 %432 to i64
  %434 = getelementptr inbounds [66000 x i32], ptr %7, i64 0, i64 %433
  %435 = load i32, ptr %434, align 4, !tbaa !10
  %436 = or i32 %431, %435
  %437 = or i32 %436, %388
  %438 = and i32 %437, %9
  %439 = or i32 %427, %416
  %440 = or i32 %439, %438
  br label %620

441:                                              ; preds = %317
  store i32 %321, ptr %4, align 16, !tbaa !10
  %442 = load i32, ptr %82, align 4, !tbaa !10
  %443 = and i32 %442, %320
  %444 = lshr i32 %319, %16
  %445 = zext i32 %444 to i64
  %446 = getelementptr inbounds [66000 x i32], ptr %6, i64 0, i64 %445
  %447 = load i32, ptr %446, align 4, !tbaa !10
  %448 = and i32 %319, %33
  %449 = zext i32 %448 to i64
  %450 = getelementptr inbounds [66000 x i32], ptr %7, i64 0, i64 %449
  %451 = load i32, ptr %450, align 4, !tbaa !10
  %452 = or i32 %447, %451
  %453 = or i32 %452, %319
  %454 = and i32 %453, %9
  %455 = or i32 %454, %443
  store i32 %455, ptr %83, align 4, !tbaa !10
  br i1 %84, label %623, label %456

456:                                              ; preds = %441
  %457 = load i32, ptr %85, align 8, !tbaa !10
  %458 = and i32 %457, %320
  %459 = or i32 %454, %442
  %460 = lshr i32 %459, %16
  %461 = zext i32 %460 to i64
  %462 = getelementptr inbounds [66000 x i32], ptr %6, i64 0, i64 %461
  %463 = load i32, ptr %462, align 4, !tbaa !10
  %464 = and i32 %459, %33
  %465 = zext i32 %464 to i64
  %466 = getelementptr inbounds [66000 x i32], ptr %7, i64 0, i64 %465
  %467 = load i32, ptr %466, align 4, !tbaa !10
  %468 = or i32 %463, %467
  %469 = or i32 %468, %442
  %470 = and i32 %469, %9
  %471 = or i32 %470, %458
  store i32 %471, ptr %86, align 8, !tbaa !10
  br i1 %87, label %623, label %472

472:                                              ; preds = %456
  %473 = load i32, ptr %88, align 4, !tbaa !10
  %474 = and i32 %473, %320
  %475 = or i32 %470, %457
  %476 = lshr i32 %475, %16
  %477 = zext i32 %476 to i64
  %478 = getelementptr inbounds [66000 x i32], ptr %6, i64 0, i64 %477
  %479 = load i32, ptr %478, align 4, !tbaa !10
  %480 = and i32 %475, %33
  %481 = zext i32 %480 to i64
  %482 = getelementptr inbounds [66000 x i32], ptr %7, i64 0, i64 %481
  %483 = load i32, ptr %482, align 4, !tbaa !10
  %484 = or i32 %479, %483
  %485 = or i32 %484, %457
  %486 = and i32 %485, %9
  %487 = or i32 %486, %474
  store i32 %487, ptr %89, align 4, !tbaa !10
  br i1 %90, label %623, label %488

488:                                              ; preds = %472
  %489 = load i32, ptr %91, align 16, !tbaa !10
  %490 = and i32 %489, %320
  %491 = or i32 %486, %473
  %492 = lshr i32 %491, %16
  %493 = zext i32 %492 to i64
  %494 = getelementptr inbounds [66000 x i32], ptr %6, i64 0, i64 %493
  %495 = load i32, ptr %494, align 4, !tbaa !10
  %496 = and i32 %491, %33
  %497 = zext i32 %496 to i64
  %498 = getelementptr inbounds [66000 x i32], ptr %7, i64 0, i64 %497
  %499 = load i32, ptr %498, align 4, !tbaa !10
  %500 = or i32 %495, %499
  %501 = or i32 %500, %473
  %502 = and i32 %501, %9
  %503 = or i32 %502, %490
  br label %620

504:                                              ; preds = %308
  %505 = add nsw i32 %310, 1
  %506 = load i32, ptr @Init1, align 4, !tbaa !10
  %507 = load i32, ptr %94, align 4, !tbaa !10
  %508 = and i32 %507, %506
  %509 = lshr i32 %507, %16
  %510 = zext i32 %509 to i64
  %511 = getelementptr inbounds [66000 x i32], ptr %6, i64 0, i64 %510
  %512 = load i32, ptr %511, align 4, !tbaa !10
  %513 = and i32 %507, %33
  %514 = zext i32 %513 to i64
  %515 = getelementptr inbounds [66000 x i32], ptr %7, i64 0, i64 %514
  %516 = load i32, ptr %515, align 4, !tbaa !10
  %517 = or i32 %516, %512
  %518 = and i32 %517, %315
  %519 = or i32 %518, %508
  store i32 %519, ptr %95, align 4, !tbaa !10
  %520 = load i32, ptr @TAIL, align 4, !tbaa !10
  %521 = icmp eq i32 %520, 0
  br i1 %521, label %533, label %522

522:                                              ; preds = %504
  %523 = lshr i32 %519, %16
  %524 = zext i32 %523 to i64
  %525 = getelementptr inbounds [66000 x i32], ptr %6, i64 0, i64 %524
  %526 = load i32, ptr %525, align 4, !tbaa !10
  %527 = and i32 %519, %33
  %528 = zext i32 %527 to i64
  %529 = getelementptr inbounds [66000 x i32], ptr %7, i64 0, i64 %528
  %530 = load i32, ptr %529, align 4, !tbaa !10
  %531 = or i32 %526, %530
  %532 = or i32 %531, %519
  store i32 %532, ptr %95, align 4, !tbaa !10
  br label %533

533:                                              ; preds = %522, %504
  %534 = phi i32 [ %532, %522 ], [ %519, %504 ]
  %535 = and i32 %534, 1
  %536 = load i32, ptr @INVERSE, align 4, !tbaa !10
  %537 = icmp eq i32 %535, %536
  br i1 %537, label %543, label %538

538:                                              ; preds = %533
  %539 = load i32, ptr @FILENAMEONLY, align 4, !tbaa !10
  %540 = icmp eq i32 %539, 0
  br i1 %540, label %541, label %943

541:                                              ; preds = %538
  %542 = trunc i64 %309 to i32
  call void @r_output(ptr noundef nonnull %8, i32 noundef %542, i32 noundef %292, i32 noundef %505) #34
  br label %543

543:                                              ; preds = %541, %533
  %544 = load i32, ptr @Init, align 16, !tbaa !10
  br label %545

545:                                              ; preds = %567, %543
  %546 = phi i64 [ 0, %543 ], [ %568, %567 ]
  %547 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %543 ], [ %569, %567 ]
  %548 = icmp ule <4 x i64> %547, %105
  %549 = extractelement <4 x i1> %548, i64 0
  br i1 %549, label %550, label %552

550:                                              ; preds = %545
  %551 = getelementptr inbounds [5 x i32], ptr %5, i64 0, i64 %546
  store i32 %544, ptr %551, align 16, !tbaa !10
  br label %552

552:                                              ; preds = %550, %545
  %553 = extractelement <4 x i1> %548, i64 1
  br i1 %553, label %554, label %557

554:                                              ; preds = %552
  %555 = or i64 %546, 1
  %556 = getelementptr inbounds [5 x i32], ptr %5, i64 0, i64 %555
  store i32 %544, ptr %556, align 4, !tbaa !10
  br label %557

557:                                              ; preds = %554, %552
  %558 = extractelement <4 x i1> %548, i64 2
  br i1 %558, label %559, label %562

559:                                              ; preds = %557
  %560 = or i64 %546, 2
  %561 = getelementptr inbounds [5 x i32], ptr %5, i64 0, i64 %560
  store i32 %544, ptr %561, align 8, !tbaa !10
  br label %562

562:                                              ; preds = %559, %557
  %563 = extractelement <4 x i1> %548, i64 3
  br i1 %563, label %564, label %567

564:                                              ; preds = %562
  %565 = or i64 %546, 3
  %566 = getelementptr inbounds [5 x i32], ptr %5, i64 0, i64 %565
  store i32 %544, ptr %566, align 4, !tbaa !10
  br label %567

567:                                              ; preds = %564, %562
  %568 = add i64 %546, 4
  %569 = add <4 x i64> %547, <i64 4, i64 4, i64 4, i64 4>
  %570 = icmp eq i64 %568, %102
  br i1 %570, label %571, label %545, !llvm.loop !87

571:                                              ; preds = %567
  %572 = load i32, ptr @Init1, align 4, !tbaa !10
  %573 = load i32, ptr %5, align 16, !tbaa !10
  %574 = and i32 %573, %572
  %575 = lshr i32 %573, %16
  %576 = zext i32 %575 to i64
  %577 = getelementptr inbounds [66000 x i32], ptr %6, i64 0, i64 %576
  %578 = load i32, ptr %577, align 4, !tbaa !10
  %579 = and i32 %573, %33
  %580 = zext i32 %579 to i64
  %581 = getelementptr inbounds [66000 x i32], ptr %7, i64 0, i64 %580
  %582 = load i32, ptr %581, align 4, !tbaa !10
  %583 = or i32 %582, %578
  %584 = and i32 %583, %315
  %585 = or i32 %584, %574
  store i32 %585, ptr %4, align 16, !tbaa !10
  br label %586

586:                                              ; preds = %586, %571
  %587 = phi i32 [ %573, %571 ], [ %591, %586 ]
  %588 = phi i32 [ %585, %571 ], [ %616, %586 ]
  %589 = phi i64 [ 1, %571 ], [ %618, %586 ]
  %590 = getelementptr inbounds [5 x i32], ptr %5, i64 0, i64 %589
  %591 = load i32, ptr %590, align 4, !tbaa !10
  %592 = and i32 %591, %572
  %593 = or i32 %587, %588
  %594 = lshr i32 %591, %16
  %595 = zext i32 %594 to i64
  %596 = getelementptr inbounds [66000 x i32], ptr %6, i64 0, i64 %595
  %597 = load i32, ptr %596, align 4, !tbaa !10
  %598 = and i32 %591, %33
  %599 = zext i32 %598 to i64
  %600 = getelementptr inbounds [66000 x i32], ptr %7, i64 0, i64 %599
  %601 = load i32, ptr %600, align 4, !tbaa !10
  %602 = or i32 %601, %597
  %603 = and i32 %602, %315
  %604 = lshr i32 %593, %16
  %605 = zext i32 %604 to i64
  %606 = getelementptr inbounds [66000 x i32], ptr %6, i64 0, i64 %605
  %607 = load i32, ptr %606, align 4, !tbaa !10
  %608 = and i32 %593, %33
  %609 = zext i32 %608 to i64
  %610 = getelementptr inbounds [66000 x i32], ptr %7, i64 0, i64 %609
  %611 = load i32, ptr %610, align 4, !tbaa !10
  %612 = or i32 %607, %611
  %613 = or i32 %612, %587
  %614 = and i32 %613, %9
  %615 = or i32 %603, %592
  %616 = or i32 %615, %614
  %617 = getelementptr inbounds [5 x i32], ptr %4, i64 0, i64 %589
  store i32 %616, ptr %617, align 4, !tbaa !10
  %618 = add nuw nsw i64 %589, 1
  %619 = icmp eq i64 %618, %99
  br i1 %619, label %623, label %586, !llvm.loop !88

620:                                              ; preds = %488, %414
  %621 = phi i32 [ %503, %488 ], [ %440, %414 ]
  %622 = phi i32 [ %321, %488 ], [ %333, %414 ]
  store i32 %621, ptr %92, align 16, !tbaa !10
  br label %623

623:                                              ; preds = %620, %586, %472, %456, %441, %387, %360, %322
  %624 = phi i32 [ %320, %322 ], [ %320, %360 ], [ %320, %387 ], [ %320, %441 ], [ %320, %456 ], [ %320, %472 ], [ %320, %620 ], [ %572, %586 ]
  %625 = phi i32 [ %333, %322 ], [ %333, %360 ], [ %333, %387 ], [ %321, %441 ], [ %321, %456 ], [ %321, %472 ], [ %622, %620 ], [ %585, %586 ]
  %626 = phi i32 [ %310, %322 ], [ %310, %360 ], [ %310, %387 ], [ %310, %441 ], [ %310, %456 ], [ %310, %472 ], [ %310, %620 ], [ %505, %586 ]
  %627 = add nuw nsw i64 %309, 1
  %628 = getelementptr inbounds [50177 x i8], ptr %8, i64 0, i64 %627
  %629 = load i8, ptr %628, align 1, !tbaa !7
  %630 = zext i8 %629 to i64
  %631 = getelementptr inbounds [256 x i32], ptr @Mask, i64 0, i64 %630
  %632 = load i32, ptr %631, align 4, !tbaa !10
  %633 = icmp eq i8 %629, 10
  br i1 %633, label %819, label %634

634:                                              ; preds = %623
  %635 = icmp eq i32 %632, 0
  %636 = and i32 %624, %625
  br i1 %635, label %756, label %637

637:                                              ; preds = %634
  %638 = lshr i32 %625, %16
  %639 = zext i32 %638 to i64
  %640 = getelementptr inbounds [66000 x i32], ptr %6, i64 0, i64 %639
  %641 = load i32, ptr %640, align 4, !tbaa !10
  %642 = and i32 %625, %33
  %643 = zext i32 %642 to i64
  %644 = getelementptr inbounds [66000 x i32], ptr %7, i64 0, i64 %643
  %645 = load i32, ptr %644, align 4, !tbaa !10
  %646 = or i32 %645, %641
  %647 = and i32 %646, %632
  %648 = or i32 %647, %636
  store i32 %648, ptr %5, align 16, !tbaa !10
  %649 = load i32, ptr %83, align 4, !tbaa !10
  %650 = and i32 %649, %624
  %651 = or i32 %647, %625
  %652 = lshr i32 %649, %16
  %653 = zext i32 %652 to i64
  %654 = getelementptr inbounds [66000 x i32], ptr %6, i64 0, i64 %653
  %655 = load i32, ptr %654, align 4, !tbaa !10
  %656 = and i32 %649, %33
  %657 = zext i32 %656 to i64
  %658 = getelementptr inbounds [66000 x i32], ptr %7, i64 0, i64 %657
  %659 = load i32, ptr %658, align 4, !tbaa !10
  %660 = or i32 %659, %655
  %661 = and i32 %660, %632
  %662 = lshr i32 %651, %16
  %663 = zext i32 %662 to i64
  %664 = getelementptr inbounds [66000 x i32], ptr %6, i64 0, i64 %663
  %665 = load i32, ptr %664, align 4, !tbaa !10
  %666 = and i32 %651, %33
  %667 = zext i32 %666 to i64
  %668 = getelementptr inbounds [66000 x i32], ptr %7, i64 0, i64 %667
  %669 = load i32, ptr %668, align 4, !tbaa !10
  %670 = or i32 %665, %669
  %671 = or i32 %670, %625
  %672 = and i32 %671, %9
  %673 = or i32 %672, %661
  %674 = or i32 %673, %650
  store i32 %674, ptr %82, align 4, !tbaa !10
  br i1 %84, label %935, label %675

675:                                              ; preds = %637
  %676 = load i32, ptr %86, align 8, !tbaa !10
  %677 = and i32 %676, %624
  %678 = or i32 %673, %649
  %679 = lshr i32 %676, %16
  %680 = zext i32 %679 to i64
  %681 = getelementptr inbounds [66000 x i32], ptr %6, i64 0, i64 %680
  %682 = load i32, ptr %681, align 4, !tbaa !10
  %683 = and i32 %676, %33
  %684 = zext i32 %683 to i64
  %685 = getelementptr inbounds [66000 x i32], ptr %7, i64 0, i64 %684
  %686 = load i32, ptr %685, align 4, !tbaa !10
  %687 = or i32 %686, %682
  %688 = and i32 %687, %632
  %689 = lshr i32 %678, %16
  %690 = zext i32 %689 to i64
  %691 = getelementptr inbounds [66000 x i32], ptr %6, i64 0, i64 %690
  %692 = load i32, ptr %691, align 4, !tbaa !10
  %693 = and i32 %678, %33
  %694 = zext i32 %693 to i64
  %695 = getelementptr inbounds [66000 x i32], ptr %7, i64 0, i64 %694
  %696 = load i32, ptr %695, align 4, !tbaa !10
  %697 = or i32 %692, %696
  %698 = or i32 %697, %649
  %699 = and i32 %698, %9
  %700 = or i32 %699, %688
  %701 = or i32 %700, %677
  store i32 %701, ptr %85, align 8, !tbaa !10
  br i1 %87, label %935, label %702

702:                                              ; preds = %675
  %703 = load i32, ptr %89, align 4, !tbaa !10
  %704 = and i32 %703, %624
  %705 = or i32 %700, %676
  %706 = lshr i32 %703, %16
  %707 = zext i32 %706 to i64
  %708 = getelementptr inbounds [66000 x i32], ptr %6, i64 0, i64 %707
  %709 = load i32, ptr %708, align 4, !tbaa !10
  %710 = and i32 %703, %33
  %711 = zext i32 %710 to i64
  %712 = getelementptr inbounds [66000 x i32], ptr %7, i64 0, i64 %711
  %713 = load i32, ptr %712, align 4, !tbaa !10
  %714 = or i32 %713, %709
  %715 = and i32 %714, %632
  %716 = lshr i32 %705, %16
  %717 = zext i32 %716 to i64
  %718 = getelementptr inbounds [66000 x i32], ptr %6, i64 0, i64 %717
  %719 = load i32, ptr %718, align 4, !tbaa !10
  %720 = and i32 %705, %33
  %721 = zext i32 %720 to i64
  %722 = getelementptr inbounds [66000 x i32], ptr %7, i64 0, i64 %721
  %723 = load i32, ptr %722, align 4, !tbaa !10
  %724 = or i32 %719, %723
  %725 = or i32 %724, %676
  %726 = and i32 %725, %9
  %727 = or i32 %726, %715
  %728 = or i32 %727, %704
  store i32 %728, ptr %88, align 4, !tbaa !10
  br i1 %90, label %935, label %729

729:                                              ; preds = %702
  %730 = load i32, ptr %92, align 16, !tbaa !10
  %731 = and i32 %730, %624
  %732 = or i32 %727, %703
  %733 = lshr i32 %730, %16
  %734 = zext i32 %733 to i64
  %735 = getelementptr inbounds [66000 x i32], ptr %6, i64 0, i64 %734
  %736 = load i32, ptr %735, align 4, !tbaa !10
  %737 = and i32 %730, %33
  %738 = zext i32 %737 to i64
  %739 = getelementptr inbounds [66000 x i32], ptr %7, i64 0, i64 %738
  %740 = load i32, ptr %739, align 4, !tbaa !10
  %741 = or i32 %740, %736
  %742 = and i32 %741, %632
  %743 = lshr i32 %732, %16
  %744 = zext i32 %743 to i64
  %745 = getelementptr inbounds [66000 x i32], ptr %6, i64 0, i64 %744
  %746 = load i32, ptr %745, align 4, !tbaa !10
  %747 = and i32 %732, %33
  %748 = zext i32 %747 to i64
  %749 = getelementptr inbounds [66000 x i32], ptr %7, i64 0, i64 %748
  %750 = load i32, ptr %749, align 4, !tbaa !10
  %751 = or i32 %746, %750
  %752 = or i32 %751, %703
  %753 = and i32 %752, %9
  %754 = or i32 %742, %731
  %755 = or i32 %754, %753
  br label %933

756:                                              ; preds = %634
  store i32 %636, ptr %5, align 16, !tbaa !10
  %757 = load i32, ptr %83, align 4, !tbaa !10
  %758 = and i32 %757, %624
  %759 = lshr i32 %625, %16
  %760 = zext i32 %759 to i64
  %761 = getelementptr inbounds [66000 x i32], ptr %6, i64 0, i64 %760
  %762 = load i32, ptr %761, align 4, !tbaa !10
  %763 = and i32 %625, %33
  %764 = zext i32 %763 to i64
  %765 = getelementptr inbounds [66000 x i32], ptr %7, i64 0, i64 %764
  %766 = load i32, ptr %765, align 4, !tbaa !10
  %767 = or i32 %762, %766
  %768 = or i32 %767, %625
  %769 = and i32 %768, %9
  %770 = or i32 %769, %758
  store i32 %770, ptr %82, align 4, !tbaa !10
  br i1 %84, label %935, label %771

771:                                              ; preds = %756
  %772 = load i32, ptr %86, align 8, !tbaa !10
  %773 = and i32 %772, %624
  %774 = or i32 %769, %757
  %775 = lshr i32 %774, %16
  %776 = zext i32 %775 to i64
  %777 = getelementptr inbounds [66000 x i32], ptr %6, i64 0, i64 %776
  %778 = load i32, ptr %777, align 4, !tbaa !10
  %779 = and i32 %774, %33
  %780 = zext i32 %779 to i64
  %781 = getelementptr inbounds [66000 x i32], ptr %7, i64 0, i64 %780
  %782 = load i32, ptr %781, align 4, !tbaa !10
  %783 = or i32 %778, %782
  %784 = or i32 %783, %757
  %785 = and i32 %784, %9
  %786 = or i32 %785, %773
  store i32 %786, ptr %85, align 8, !tbaa !10
  br i1 %87, label %935, label %787

787:                                              ; preds = %771
  %788 = load i32, ptr %89, align 4, !tbaa !10
  %789 = and i32 %788, %624
  %790 = or i32 %785, %772
  %791 = lshr i32 %790, %16
  %792 = zext i32 %791 to i64
  %793 = getelementptr inbounds [66000 x i32], ptr %6, i64 0, i64 %792
  %794 = load i32, ptr %793, align 4, !tbaa !10
  %795 = and i32 %790, %33
  %796 = zext i32 %795 to i64
  %797 = getelementptr inbounds [66000 x i32], ptr %7, i64 0, i64 %796
  %798 = load i32, ptr %797, align 4, !tbaa !10
  %799 = or i32 %794, %798
  %800 = or i32 %799, %772
  %801 = and i32 %800, %9
  %802 = or i32 %801, %789
  store i32 %802, ptr %88, align 4, !tbaa !10
  br i1 %90, label %935, label %803

803:                                              ; preds = %787
  %804 = load i32, ptr %92, align 16, !tbaa !10
  %805 = and i32 %804, %624
  %806 = or i32 %801, %788
  %807 = lshr i32 %806, %16
  %808 = zext i32 %807 to i64
  %809 = getelementptr inbounds [66000 x i32], ptr %6, i64 0, i64 %808
  %810 = load i32, ptr %809, align 4, !tbaa !10
  %811 = and i32 %806, %33
  %812 = zext i32 %811 to i64
  %813 = getelementptr inbounds [66000 x i32], ptr %7, i64 0, i64 %812
  %814 = load i32, ptr %813, align 4, !tbaa !10
  %815 = or i32 %810, %814
  %816 = or i32 %815, %788
  %817 = and i32 %816, %9
  %818 = or i32 %817, %805
  br label %933

819:                                              ; preds = %623
  %820 = add nsw i32 %626, 1
  %821 = load i32, ptr %95, align 4, !tbaa !10
  %822 = and i32 %821, %624
  %823 = lshr i32 %821, %16
  %824 = zext i32 %823 to i64
  %825 = getelementptr inbounds [66000 x i32], ptr %6, i64 0, i64 %824
  %826 = load i32, ptr %825, align 4, !tbaa !10
  %827 = and i32 %821, %33
  %828 = zext i32 %827 to i64
  %829 = getelementptr inbounds [66000 x i32], ptr %7, i64 0, i64 %828
  %830 = load i32, ptr %829, align 4, !tbaa !10
  %831 = or i32 %830, %826
  %832 = and i32 %831, %632
  %833 = or i32 %832, %822
  store i32 %833, ptr %94, align 4, !tbaa !10
  %834 = load i32, ptr @TAIL, align 4, !tbaa !10
  %835 = icmp eq i32 %834, 0
  br i1 %835, label %847, label %836

836:                                              ; preds = %819
  %837 = lshr i32 %833, %16
  %838 = zext i32 %837 to i64
  %839 = getelementptr inbounds [66000 x i32], ptr %6, i64 0, i64 %838
  %840 = load i32, ptr %839, align 4, !tbaa !10
  %841 = and i32 %833, %33
  %842 = zext i32 %841 to i64
  %843 = getelementptr inbounds [66000 x i32], ptr %7, i64 0, i64 %842
  %844 = load i32, ptr %843, align 4, !tbaa !10
  %845 = or i32 %840, %844
  %846 = or i32 %845, %833
  store i32 %846, ptr %94, align 4, !tbaa !10
  br label %847

847:                                              ; preds = %836, %819
  %848 = phi i32 [ %846, %836 ], [ %833, %819 ]
  %849 = and i32 %848, 1
  %850 = load i32, ptr @INVERSE, align 4, !tbaa !10
  %851 = icmp eq i32 %849, %850
  br i1 %851, label %857, label %852

852:                                              ; preds = %847
  %853 = load i32, ptr @FILENAMEONLY, align 4, !tbaa !10
  %854 = icmp eq i32 %853, 0
  br i1 %854, label %855, label %943

855:                                              ; preds = %852
  %856 = trunc i64 %627 to i32
  call void @r_output(ptr noundef nonnull %8, i32 noundef %856, i32 noundef %292, i32 noundef %820) #34
  br label %857

857:                                              ; preds = %855, %847
  br label %858

858:                                              ; preds = %880, %857
  %859 = phi i64 [ 0, %857 ], [ %881, %880 ]
  %860 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %857 ], [ %882, %880 ]
  %861 = icmp ule <4 x i64> %860, %110
  %862 = extractelement <4 x i1> %861, i64 0
  br i1 %862, label %863, label %865

863:                                              ; preds = %858
  %864 = getelementptr inbounds [5 x i32], ptr %4, i64 0, i64 %859
  store i32 %51, ptr %864, align 16, !tbaa !10
  br label %865

865:                                              ; preds = %863, %858
  %866 = extractelement <4 x i1> %861, i64 1
  br i1 %866, label %867, label %870

867:                                              ; preds = %865
  %868 = or i64 %859, 1
  %869 = getelementptr inbounds [5 x i32], ptr %4, i64 0, i64 %868
  store i32 %51, ptr %869, align 4, !tbaa !10
  br label %870

870:                                              ; preds = %867, %865
  %871 = extractelement <4 x i1> %861, i64 2
  br i1 %871, label %872, label %875

872:                                              ; preds = %870
  %873 = or i64 %859, 2
  %874 = getelementptr inbounds [5 x i32], ptr %4, i64 0, i64 %873
  store i32 %51, ptr %874, align 8, !tbaa !10
  br label %875

875:                                              ; preds = %872, %870
  %876 = extractelement <4 x i1> %861, i64 3
  br i1 %876, label %877, label %880

877:                                              ; preds = %875
  %878 = or i64 %859, 3
  %879 = getelementptr inbounds [5 x i32], ptr %4, i64 0, i64 %878
  store i32 %51, ptr %879, align 4, !tbaa !10
  br label %880

880:                                              ; preds = %877, %875
  %881 = add i64 %859, 4
  %882 = add <4 x i64> %860, <i64 4, i64 4, i64 4, i64 4>
  %883 = icmp eq i64 %881, %107
  br i1 %883, label %884, label %858, !llvm.loop !89

884:                                              ; preds = %880
  %885 = load i32, ptr @Init1, align 4, !tbaa !10
  %886 = load i32, ptr %4, align 16, !tbaa !10
  %887 = and i32 %886, %885
  %888 = lshr i32 %886, %16
  %889 = zext i32 %888 to i64
  %890 = getelementptr inbounds [66000 x i32], ptr %6, i64 0, i64 %889
  %891 = load i32, ptr %890, align 4, !tbaa !10
  %892 = and i32 %886, %33
  %893 = zext i32 %892 to i64
  %894 = getelementptr inbounds [66000 x i32], ptr %7, i64 0, i64 %893
  %895 = load i32, ptr %894, align 4, !tbaa !10
  %896 = or i32 %895, %891
  %897 = and i32 %896, %632
  %898 = or i32 %897, %887
  store i32 %898, ptr %5, align 16, !tbaa !10
  br label %899

899:                                              ; preds = %899, %884
  %900 = phi i32 [ %898, %884 ], [ %929, %899 ]
  %901 = phi i32 [ %886, %884 ], [ %904, %899 ]
  %902 = phi i64 [ 1, %884 ], [ %931, %899 ]
  %903 = getelementptr inbounds [5 x i32], ptr %4, i64 0, i64 %902
  %904 = load i32, ptr %903, align 4, !tbaa !10
  %905 = and i32 %904, %885
  %906 = or i32 %900, %901
  %907 = lshr i32 %904, %16
  %908 = zext i32 %907 to i64
  %909 = getelementptr inbounds [66000 x i32], ptr %6, i64 0, i64 %908
  %910 = load i32, ptr %909, align 4, !tbaa !10
  %911 = and i32 %904, %33
  %912 = zext i32 %911 to i64
  %913 = getelementptr inbounds [66000 x i32], ptr %7, i64 0, i64 %912
  %914 = load i32, ptr %913, align 4, !tbaa !10
  %915 = or i32 %914, %910
  %916 = and i32 %915, %632
  %917 = lshr i32 %906, %16
  %918 = zext i32 %917 to i64
  %919 = getelementptr inbounds [66000 x i32], ptr %6, i64 0, i64 %918
  %920 = load i32, ptr %919, align 4, !tbaa !10
  %921 = and i32 %906, %33
  %922 = zext i32 %921 to i64
  %923 = getelementptr inbounds [66000 x i32], ptr %7, i64 0, i64 %922
  %924 = load i32, ptr %923, align 4, !tbaa !10
  %925 = or i32 %920, %924
  %926 = or i32 %925, %901
  %927 = and i32 %926, %9
  %928 = or i32 %916, %905
  %929 = or i32 %928, %927
  %930 = getelementptr inbounds [5 x i32], ptr %5, i64 0, i64 %902
  store i32 %929, ptr %930, align 4, !tbaa !10
  %931 = add nuw nsw i64 %902, 1
  %932 = icmp eq i64 %931, %100
  br i1 %932, label %935, label %899, !llvm.loop !90

933:                                              ; preds = %803, %729
  %934 = phi i32 [ %818, %803 ], [ %755, %729 ]
  store i32 %934, ptr %91, align 16, !tbaa !10
  br label %935

935:                                              ; preds = %933, %899, %787, %771, %756, %702, %675, %637
  %936 = phi i32 [ %626, %637 ], [ %626, %675 ], [ %626, %702 ], [ %626, %756 ], [ %626, %771 ], [ %626, %787 ], [ %626, %933 ], [ %820, %899 ]
  %937 = add nuw nsw i64 %309, 2
  %938 = icmp ult i64 %937, %307
  br i1 %938, label %308, label %939, !llvm.loop !91

939:                                              ; preds = %935
  %.lcssa2 = phi i32 [ %936, %935 ]
  %940 = and i64 %288, 4294967295
  %941 = getelementptr inbounds i8, ptr %8, i64 %940
  %942 = call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %8, ptr noundef nonnull dereferenceable(1) %941, i64 noundef 1024) #33
  br label %285, !llvm.loop !92

943:                                              ; preds = %852, %538, %262, %195
  %944 = load i32, ptr @num_of_matched, align 4, !tbaa !10
  %945 = add nsw i32 %944, 1
  store i32 %945, ptr @num_of_matched, align 4, !tbaa !10
  %946 = call i32 @puts(ptr nonnull dereferenceable(1) @CurrentFileName)
  br label %947

947:                                              ; preds = %943, %285, %118
  call void @llvm.lifetime.end.p0(i64 50177, ptr nonnull %8) #31
  call void @llvm.lifetime.end.p0(i64 264000, ptr nonnull %7) #31
  call void @llvm.lifetime.end.p0(i64 264000, ptr nonnull %6) #31
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #31
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #31
  ret void
}

; Function Attrs: nofree nounwind optsize uwtable
define internal void @r_output(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #9 {
  %5 = icmp slt i32 %1, %2
  br i1 %5, label %6, label %51

6:                                                ; preds = %4
  %7 = load i32, ptr @num_of_matched, align 4, !tbaa !10
  %8 = add nsw i32 %7, 1
  store i32 %8, ptr @num_of_matched, align 4, !tbaa !10
  %9 = load i32, ptr @COUNT, align 4, !tbaa !10
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %51

11:                                               ; preds = %6
  %12 = load i32, ptr @FNAME, align 4, !tbaa !10
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %11
  %15 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.25, ptr noundef nonnull @CurrentFileName) #34
  br label %16

16:                                               ; preds = %14, %11
  %17 = sext i32 %1 to i64
  br label %18

18:                                               ; preds = %18, %16
  %19 = phi i64 [ %20, %18 ], [ %17, %16 ]
  %20 = add nsw i64 %19, -1
  %21 = getelementptr inbounds i8, ptr %0, i64 %20
  %22 = load i8, ptr %21, align 1, !tbaa !7
  %23 = icmp ne i8 %22, 10
  %24 = icmp sgt i64 %19, 1
  %25 = and i1 %24, %23
  br i1 %25, label %18, label %26, !llvm.loop !93

26:                                               ; preds = %18
  %.lcssa2 = phi i64 [ %19, %18 ]
  %.lcssa1 = phi i64 [ %20, %18 ]
  %.lcssa = phi i8 [ %22, %18 ]
  %27 = trunc i64 %.lcssa2 to i32
  %28 = load i32, ptr @LINENUM, align 4, !tbaa !10
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds i8, ptr %0, i64 %.lcssa1
  %32 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.26, i32 noundef %3) #34
  %33 = load i8, ptr %31, align 1, !tbaa !7
  br label %34

34:                                               ; preds = %30, %26
  %35 = phi i8 [ %33, %30 ], [ %.lcssa, %26 ]
  %36 = icmp eq i8 %35, 10
  %37 = select i1 %36, i32 %27, i32 1024
  %38 = icmp sgt i32 %37, %1
  br i1 %38, label %51, label %39

39:                                               ; preds = %34
  %40 = sext i32 %37 to i64
  %41 = add i32 %1, 1
  br label %42

42:                                               ; preds = %42, %39
  %43 = phi i64 [ %40, %39 ], [ %44, %42 ]
  %44 = add nsw i64 %43, 1
  %45 = getelementptr inbounds i8, ptr %0, i64 %43
  %46 = load i8, ptr %45, align 1, !tbaa !7
  %47 = zext i8 %46 to i32
  %48 = tail call i32 @putchar(i32 noundef %47) #34
  %49 = trunc i64 %44 to i32
  %50 = icmp eq i32 %41, %49
  br i1 %50, label %51, label %42, !llvm.loop !94

51:                                               ; preds = %42, %34, %6, %4
  ret void
}

; Function Attrs: nofree nounwind optsize uwtable
define internal void @re(i32 noundef %0, i32 noundef %1, i32 noundef %2) #9 {
  %4 = alloca [256 x i32], align 16
  %5 = alloca [5 x i32], align 16
  %6 = alloca [5 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %4) #31
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %5) #31
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %6) #31
  %7 = sub nsw i32 32, %1
  %8 = load i32, ptr @FIRST_IN_RE, align 4, !tbaa !10
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %3
  tail call void @compute_next(i32 noundef %1, ptr noundef nonnull @Next, ptr noundef nonnull @Next1) #34
  store i32 0, ptr @FIRST_IN_RE, align 4, !tbaa !10
  br label %11

11:                                               ; preds = %10, %3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %4, ptr noundef nonnull align 16 dereferenceable(1024) @Mask, i64 1024, i1 false), !tbaa !10
  %12 = load i32, ptr @NO_ERR_MASK, align 4, !tbaa !10
  %13 = sext i32 %7 to i64
  %14 = getelementptr inbounds [33 x i32], ptr @Bit, i64 0, i64 %13
  %15 = load i32, ptr %14, align 4, !tbaa !10
  store i32 %15, ptr @Init, align 16, !tbaa !10
  %16 = load i32, ptr @HEAD, align 4, !tbaa !10
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %11
  %19 = sub i32 33, %1
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [33 x i32], ptr @Bit, i64 0, i64 %20
  %22 = load i32, ptr %21, align 4, !tbaa !10
  %23 = or i32 %22, %15
  store i32 %23, ptr @Init, align 16, !tbaa !10
  br label %24

24:                                               ; preds = %18, %11
  %25 = phi i32 [ %23, %18 ], [ %15, %11 ]
  %26 = icmp eq i32 %2, 0
  br i1 %26, label %41, label %27

27:                                               ; preds = %24
  %28 = add i32 %2, 1
  %29 = tail call i32 @llvm.umax.i32(i32 %28, i32 2)
  %30 = zext i32 %29 to i64
  br label %31

31:                                               ; preds = %31, %27
  %32 = phi i32 [ %25, %27 ], [ %37, %31 ]
  %33 = phi i64 [ 1, %27 ], [ %39, %31 ]
  %34 = zext i32 %32 to i64
  %35 = getelementptr inbounds [66000 x i32], ptr @Next, i64 0, i64 %34
  %36 = load i32, ptr %35, align 4, !tbaa !10
  %37 = or i32 %36, %32
  %38 = getelementptr inbounds [8 x i32], ptr @Init, i64 0, i64 %33
  store i32 %37, ptr %38, align 4, !tbaa !10
  %39 = add nuw nsw i64 %33, 1
  %40 = icmp eq i64 %39, %30
  br i1 %40, label %41, label %31, !llvm.loop !95

41:                                               ; preds = %31, %24
  %42 = phi i32 [ 1, %24 ], [ %28, %31 ]
  %43 = tail call i32 @llvm.umax.i32(i32 %42, i32 1)
  %44 = zext i32 %43 to i64
  br label %45

45:                                               ; preds = %45, %41
  %46 = phi i64 [ 0, %41 ], [ %49, %45 ]
  %47 = getelementptr inbounds [5 x i32], ptr %6, i64 0, i64 %46
  store i32 %25, ptr %47, align 4, !tbaa !10
  %48 = getelementptr inbounds [5 x i32], ptr %5, i64 0, i64 %46
  store i32 %25, ptr %48, align 4, !tbaa !10
  %49 = add nuw nsw i64 %46, 1
  %50 = icmp eq i64 %49, %44
  br i1 %50, label %51, label %45, !llvm.loop !96

51:                                               ; preds = %45
  %52 = or i32 %25, 1
  br i1 %26, label %72, label %53

53:                                               ; preds = %51
  %54 = getelementptr inbounds [5 x i32], ptr %6, i64 0, i64 1
  %55 = getelementptr inbounds [5 x i32], ptr %5, i64 0, i64 1
  %56 = icmp eq i32 %2, 1
  %57 = getelementptr inbounds [5 x i32], ptr %6, i64 0, i64 2
  %58 = getelementptr inbounds [5 x i32], ptr %5, i64 0, i64 2
  %59 = icmp eq i32 %2, 2
  %60 = getelementptr inbounds [5 x i32], ptr %6, i64 0, i64 3
  %61 = getelementptr inbounds [5 x i32], ptr %5, i64 0, i64 3
  %62 = icmp eq i32 %2, 3
  %63 = getelementptr inbounds [5 x i32], ptr %6, i64 0, i64 4
  %64 = getelementptr inbounds [5 x i32], ptr %5, i64 0, i64 4
  %65 = sext i32 %2 to i64
  %66 = getelementptr inbounds [5 x i32], ptr %6, i64 0, i64 %65
  %67 = getelementptr inbounds [5 x i32], ptr %5, i64 0, i64 %65
  %68 = shl nuw nsw i64 %44, 2
  %69 = tail call i32 @llvm.umax.i32(i32 %42, i32 2)
  %70 = zext i32 %69 to i64
  %71 = zext i32 %69 to i64
  br label %205

72:                                               ; preds = %51
  %73 = zext i32 %25 to i64
  %74 = getelementptr inbounds [66000 x i32], ptr @Next, i64 0, i64 %73
  br label %75

75:                                               ; preds = %195, %72
  %76 = phi i32 [ %.lcssa, %195 ], [ %25, %72 ]
  %77 = phi i32 [ %.lcssa2, %195 ], [ 0, %72 ]
  %78 = phi i32 [ %204, %195 ], [ 1024, %72 ]
  %79 = phi i1 [ true, %195 ], [ false, %72 ]
  %80 = tail call i64 @read(i32 noundef %0, ptr noundef nonnull getelementptr inbounds ([50177 x i8], ptr @buffer, i64 0, i64 1024), i64 noundef 49152) #33
  %81 = trunc i64 %80 to i32
  %82 = icmp sgt i32 %81, 0
  br i1 %82, label %83, label %504

83:                                               ; preds = %75
  %84 = add nuw nsw i32 %81, 1024
  %85 = icmp ult i32 %81, 49152
  br i1 %85, label %86, label %95

86:                                               ; preds = %83
  %87 = add i64 %80, 1023
  %88 = and i64 %87, 4294967295
  %89 = getelementptr inbounds [50177 x i8], ptr @buffer, i64 0, i64 %88
  %90 = load i8, ptr %89, align 1, !tbaa !7
  %91 = icmp eq i8 %90, 10
  br i1 %91, label %95, label %92

92:                                               ; preds = %86
  %93 = zext i32 %84 to i64
  %94 = getelementptr inbounds [50177 x i8], ptr @buffer, i64 0, i64 %93
  store i8 10, ptr %94, align 1, !tbaa !7
  br label %95

95:                                               ; preds = %92, %86, %83
  br i1 %79, label %97, label %96

96:                                               ; preds = %95
  store i8 10, ptr getelementptr inbounds ([50177 x i8], ptr @buffer, i64 0, i64 1023), align 1, !tbaa !7
  br label %97

97:                                               ; preds = %96, %95
  %98 = phi i64 [ 1023, %96 ], [ 1024, %95 ]
  %99 = zext i32 %84 to i64
  br label %100

100:                                              ; preds = %186, %97
  %101 = phi i64 [ %98, %97 ], [ %148, %186 ]
  %102 = phi i32 [ %78, %97 ], [ %190, %186 ]
  %103 = phi i32 [ %77, %97 ], [ %189, %186 ]
  %104 = phi i32 [ %76, %97 ], [ %193, %186 ]
  %105 = add nuw nsw i64 %101, 1
  %106 = getelementptr inbounds [50177 x i8], ptr @buffer, i64 0, i64 %101
  %107 = load i8, ptr %106, align 1, !tbaa !7
  %108 = zext i8 %107 to i64
  %109 = getelementptr inbounds [256 x i32], ptr %4, i64 0, i64 %108
  %110 = load i32, ptr %109, align 4, !tbaa !10
  %111 = icmp eq i8 %107, 10
  %112 = and i32 %104, %52
  %113 = zext i32 %104 to i64
  %114 = getelementptr inbounds [66000 x i32], ptr @Next, i64 0, i64 %113
  %115 = load i32, ptr %114, align 4, !tbaa !10
  %116 = and i32 %115, %110
  %117 = or i32 %116, %112
  br i1 %111, label %118, label %144

118:                                              ; preds = %100
  %119 = add nsw i32 %103, 1
  %120 = load i32, ptr @TAIL, align 4, !tbaa !10
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %127, label %122

122:                                              ; preds = %118
  %123 = zext i32 %117 to i64
  %124 = getelementptr inbounds [66000 x i32], ptr @Next, i64 0, i64 %123
  %125 = load i32, ptr %124, align 4, !tbaa !10
  %126 = or i32 %125, %117
  br label %127

127:                                              ; preds = %122, %118
  %128 = phi i32 [ %126, %122 ], [ %117, %118 ]
  %129 = and i32 %128, 1
  %130 = load i32, ptr @INVERSE, align 4, !tbaa !10
  %131 = icmp eq i32 %129, %130
  br i1 %131, label %132, label %134

132:                                              ; preds = %127
  %133 = trunc i64 %101 to i32
  br label %139

134:                                              ; preds = %127
  %135 = load i32, ptr @FILENAMEONLY, align 4, !tbaa !10
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %500

137:                                              ; preds = %134
  %138 = trunc i64 %101 to i32
  tail call void @r_output(ptr noundef nonnull @buffer, i32 noundef %138, i32 noundef %84, i32 noundef %119) #34
  br label %139

139:                                              ; preds = %137, %132
  %140 = phi i32 [ %133, %132 ], [ %138, %137 ]
  %141 = load i32, ptr %74, align 4, !tbaa !10
  %142 = and i32 %141, %110
  %143 = or i32 %142, %25
  br label %144

144:                                              ; preds = %139, %100
  %145 = phi i32 [ %143, %139 ], [ %117, %100 ]
  %146 = phi i32 [ %119, %139 ], [ %103, %100 ]
  %147 = phi i32 [ %140, %139 ], [ %102, %100 ]
  %148 = add nuw nsw i64 %101, 2
  %149 = getelementptr inbounds [50177 x i8], ptr @buffer, i64 0, i64 %105
  %150 = load i8, ptr %149, align 1, !tbaa !7
  %151 = zext i8 %150 to i64
  %152 = getelementptr inbounds [256 x i32], ptr %4, i64 0, i64 %151
  %153 = load i32, ptr %152, align 4, !tbaa !10
  %154 = icmp eq i8 %150, 10
  br i1 %154, label %159, label %155

155:                                              ; preds = %144
  %156 = and i32 %145, %52
  %157 = zext i32 %145 to i64
  %158 = getelementptr inbounds [66000 x i32], ptr @Next, i64 0, i64 %157
  br label %186

159:                                              ; preds = %144
  %160 = add nsw i32 %146, 1
  %161 = and i32 %145, %52
  %162 = zext i32 %145 to i64
  %163 = getelementptr inbounds [66000 x i32], ptr @Next, i64 0, i64 %162
  %164 = load i32, ptr %163, align 4, !tbaa !10
  %165 = and i32 %164, %153
  %166 = or i32 %165, %161
  %167 = load i32, ptr @TAIL, align 4, !tbaa !10
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %174, label %169

169:                                              ; preds = %159
  %170 = zext i32 %166 to i64
  %171 = getelementptr inbounds [66000 x i32], ptr @Next, i64 0, i64 %170
  %172 = load i32, ptr %171, align 4, !tbaa !10
  %173 = or i32 %172, %166
  br label %174

174:                                              ; preds = %169, %159
  %175 = phi i32 [ %173, %169 ], [ %166, %159 ]
  %176 = and i32 %175, 1
  %177 = load i32, ptr @INVERSE, align 4, !tbaa !10
  %178 = icmp eq i32 %176, %177
  br i1 %178, label %179, label %181

179:                                              ; preds = %174
  %180 = trunc i64 %105 to i32
  br label %186

181:                                              ; preds = %174
  %182 = load i32, ptr @FILENAMEONLY, align 4, !tbaa !10
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %184, label %500

184:                                              ; preds = %181
  %185 = trunc i64 %105 to i32
  tail call void @r_output(ptr noundef nonnull @buffer, i32 noundef %185, i32 noundef %84, i32 noundef %160) #34
  br label %186

186:                                              ; preds = %184, %179, %155
  %187 = phi ptr [ %158, %155 ], [ %74, %179 ], [ %74, %184 ]
  %188 = phi i32 [ %156, %155 ], [ %25, %179 ], [ %25, %184 ]
  %189 = phi i32 [ %146, %155 ], [ %160, %179 ], [ %160, %184 ]
  %190 = phi i32 [ %147, %155 ], [ %180, %179 ], [ %185, %184 ]
  %191 = load i32, ptr %187, align 4, !tbaa !10
  %192 = and i32 %191, %153
  %193 = or i32 %192, %188
  %194 = icmp ult i64 %148, %99
  br i1 %194, label %100, label %195, !llvm.loop !97

195:                                              ; preds = %186
  %.lcssa2 = phi i32 [ %189, %186 ]
  %.lcssa1 = phi i32 [ %190, %186 ]
  %.lcssa = phi i32 [ %193, %186 ]
  %196 = sub nsw i32 %84, %.lcssa1
  %197 = tail call i32 @llvm.smin.i32(i32 %196, i32 1024)
  %198 = sext i32 %197 to i64
  %199 = sub nsw i64 0, %198
  %200 = getelementptr inbounds i8, ptr getelementptr inbounds ([50177 x i8], ptr @buffer, i64 0, i64 1024), i64 %199
  %201 = sext i32 %.lcssa1 to i64
  %202 = getelementptr inbounds i8, ptr @buffer, i64 %201
  %203 = tail call ptr @strncpy(ptr noundef nonnull %200, ptr noundef nonnull %202, i64 noundef %198) #33
  %204 = sub nsw i32 1024, %197
  br label %75, !llvm.loop !98

205:                                              ; preds = %496, %53
  %206 = phi i32 [ %.lcssa3, %496 ], [ 0, %53 ]
  %207 = phi i1 [ true, %496 ], [ false, %53 ]
  %208 = tail call i64 @read(i32 noundef %0, ptr noundef nonnull getelementptr inbounds ([50177 x i8], ptr @buffer, i64 0, i64 1024), i64 noundef 49152) #33
  %209 = trunc i64 %208 to i32
  %210 = icmp sgt i32 %209, 0
  br i1 %210, label %211, label %504

211:                                              ; preds = %205
  %212 = add nuw nsw i32 %209, 1024
  %213 = icmp ult i32 %209, 49152
  br i1 %213, label %214, label %223

214:                                              ; preds = %211
  %215 = add i64 %208, 1023
  %216 = and i64 %215, 4294967295
  %217 = getelementptr inbounds [50177 x i8], ptr @buffer, i64 0, i64 %216
  %218 = load i8, ptr %217, align 1, !tbaa !7
  %219 = icmp eq i8 %218, 10
  br i1 %219, label %223, label %220

220:                                              ; preds = %214
  %221 = zext i32 %212 to i64
  %222 = getelementptr inbounds [50177 x i8], ptr @buffer, i64 0, i64 %221
  store i8 10, ptr %222, align 1, !tbaa !7
  br label %223

223:                                              ; preds = %220, %214, %211
  br i1 %207, label %225, label %224

224:                                              ; preds = %223
  store i8 10, ptr getelementptr inbounds ([50177 x i8], ptr @buffer, i64 0, i64 1023), align 1, !tbaa !7
  br label %225

225:                                              ; preds = %224, %223
  %226 = phi i64 [ 1023, %224 ], [ 1024, %223 ]
  %227 = zext i32 %212 to i64
  br label %228

228:                                              ; preds = %492, %225
  %229 = phi i64 [ %226, %225 ], [ %494, %492 ]
  %230 = phi i32 [ %206, %225 ], [ %493, %492 ]
  %231 = add nuw nsw i64 %229, 1
  %232 = getelementptr inbounds [50177 x i8], ptr @buffer, i64 0, i64 %229
  %233 = load i8, ptr %232, align 1, !tbaa !7
  %234 = zext i8 %233 to i64
  %235 = getelementptr inbounds [256 x i32], ptr %4, i64 0, i64 %234
  %236 = load i32, ptr %235, align 4, !tbaa !10
  %237 = icmp eq i8 %233, 10
  br i1 %237, label %305, label %238

238:                                              ; preds = %228
  %239 = load i32, ptr %6, align 16, !tbaa !10
  %240 = and i32 %239, %52
  %241 = zext i32 %239 to i64
  %242 = getelementptr inbounds [66000 x i32], ptr @Next, i64 0, i64 %241
  %243 = load i32, ptr %242, align 4, !tbaa !10
  %244 = and i32 %243, %236
  %245 = or i32 %244, %240
  store i32 %245, ptr %5, align 16, !tbaa !10
  %246 = load i32, ptr %54, align 4, !tbaa !10
  %247 = and i32 %246, %52
  %248 = or i32 %244, %239
  %249 = zext i32 %248 to i64
  %250 = getelementptr inbounds [66000 x i32], ptr @Next, i64 0, i64 %249
  %251 = load i32, ptr %250, align 4, !tbaa !10
  %252 = or i32 %251, %239
  %253 = and i32 %252, %12
  %254 = zext i32 %246 to i64
  %255 = getelementptr inbounds [66000 x i32], ptr @Next, i64 0, i64 %254
  %256 = load i32, ptr %255, align 4, !tbaa !10
  %257 = and i32 %256, %236
  %258 = or i32 %257, %253
  %259 = or i32 %258, %247
  store i32 %259, ptr %55, align 4, !tbaa !10
  br i1 %56, label %361, label %260

260:                                              ; preds = %238
  %261 = load i32, ptr %57, align 8, !tbaa !10
  %262 = and i32 %261, %52
  %263 = or i32 %258, %246
  %264 = zext i32 %263 to i64
  %265 = getelementptr inbounds [66000 x i32], ptr @Next, i64 0, i64 %264
  %266 = load i32, ptr %265, align 4, !tbaa !10
  %267 = or i32 %266, %246
  %268 = and i32 %267, %12
  %269 = zext i32 %261 to i64
  %270 = getelementptr inbounds [66000 x i32], ptr @Next, i64 0, i64 %269
  %271 = load i32, ptr %270, align 4, !tbaa !10
  %272 = and i32 %271, %236
  %273 = or i32 %272, %268
  %274 = or i32 %273, %262
  store i32 %274, ptr %58, align 8, !tbaa !10
  br i1 %59, label %361, label %275

275:                                              ; preds = %260
  %276 = load i32, ptr %60, align 4, !tbaa !10
  %277 = and i32 %276, %52
  %278 = or i32 %273, %261
  %279 = zext i32 %278 to i64
  %280 = getelementptr inbounds [66000 x i32], ptr @Next, i64 0, i64 %279
  %281 = load i32, ptr %280, align 4, !tbaa !10
  %282 = or i32 %281, %261
  %283 = and i32 %282, %12
  %284 = zext i32 %276 to i64
  %285 = getelementptr inbounds [66000 x i32], ptr @Next, i64 0, i64 %284
  %286 = load i32, ptr %285, align 4, !tbaa !10
  %287 = and i32 %286, %236
  %288 = or i32 %287, %283
  %289 = or i32 %288, %277
  store i32 %289, ptr %61, align 4, !tbaa !10
  br i1 %62, label %361, label %290

290:                                              ; preds = %275
  %291 = load i32, ptr %63, align 16, !tbaa !10
  %292 = and i32 %291, %52
  %293 = or i32 %288, %276
  %294 = zext i32 %293 to i64
  %295 = getelementptr inbounds [66000 x i32], ptr @Next, i64 0, i64 %294
  %296 = load i32, ptr %295, align 4, !tbaa !10
  %297 = or i32 %296, %276
  %298 = and i32 %297, %12
  %299 = zext i32 %291 to i64
  %300 = getelementptr inbounds [66000 x i32], ptr @Next, i64 0, i64 %299
  %301 = load i32, ptr %300, align 4, !tbaa !10
  %302 = and i32 %301, %236
  %303 = or i32 %298, %292
  %304 = or i32 %303, %302
  store i32 %304, ptr %64, align 16, !tbaa !10
  br label %361

305:                                              ; preds = %228
  %306 = add nsw i32 %230, 1
  %307 = load i32, ptr %66, align 4, !tbaa !10
  %308 = and i32 %307, %52
  %309 = zext i32 %307 to i64
  %310 = getelementptr inbounds [66000 x i32], ptr @Next, i64 0, i64 %309
  %311 = load i32, ptr %310, align 4, !tbaa !10
  %312 = and i32 %311, %236
  %313 = or i32 %312, %308
  store i32 %313, ptr %67, align 4, !tbaa !10
  %314 = load i32, ptr @TAIL, align 4, !tbaa !10
  %315 = icmp eq i32 %314, 0
  br i1 %315, label %321, label %316

316:                                              ; preds = %305
  %317 = zext i32 %313 to i64
  %318 = getelementptr inbounds [66000 x i32], ptr @Next, i64 0, i64 %317
  %319 = load i32, ptr %318, align 4, !tbaa !10
  %320 = or i32 %319, %313
  store i32 %320, ptr %67, align 4, !tbaa !10
  br label %321

321:                                              ; preds = %316, %305
  %322 = phi i32 [ %320, %316 ], [ %313, %305 ]
  %323 = and i32 %322, 1
  %324 = load i32, ptr @INVERSE, align 4, !tbaa !10
  %325 = icmp eq i32 %323, %324
  br i1 %325, label %331, label %326

326:                                              ; preds = %321
  %327 = load i32, ptr @FILENAMEONLY, align 4, !tbaa !10
  %328 = icmp eq i32 %327, 0
  br i1 %328, label %329, label %500

329:                                              ; preds = %326
  %330 = trunc i64 %229 to i32
  tail call void @r_output(ptr noundef nonnull @buffer, i32 noundef %330, i32 noundef %212, i32 noundef %306) #34
  br label %331

331:                                              ; preds = %329, %321
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %6, ptr noundef nonnull align 16 dereferenceable(1) @Init, i64 %68, i1 false), !tbaa !10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %5, ptr noundef nonnull align 16 dereferenceable(1) @Init, i64 %68, i1 false), !tbaa !10
  %332 = load i32, ptr %6, align 16, !tbaa !10
  %333 = and i32 %332, %52
  %334 = zext i32 %332 to i64
  %335 = getelementptr inbounds [66000 x i32], ptr @Next, i64 0, i64 %334
  %336 = load i32, ptr %335, align 4, !tbaa !10
  %337 = and i32 %336, %236
  %338 = or i32 %337, %333
  store i32 %338, ptr %5, align 16, !tbaa !10
  br label %339

339:                                              ; preds = %339, %331
  %340 = phi i32 [ %338, %331 ], [ %357, %339 ]
  %341 = phi i32 [ %332, %331 ], [ %344, %339 ]
  %342 = phi i64 [ 1, %331 ], [ %359, %339 ]
  %343 = getelementptr inbounds [5 x i32], ptr %6, i64 0, i64 %342
  %344 = load i32, ptr %343, align 4, !tbaa !10
  %345 = and i32 %344, %52
  %346 = or i32 %340, %341
  %347 = zext i32 %346 to i64
  %348 = getelementptr inbounds [66000 x i32], ptr @Next, i64 0, i64 %347
  %349 = load i32, ptr %348, align 4, !tbaa !10
  %350 = or i32 %349, %341
  %351 = and i32 %350, %12
  %352 = zext i32 %344 to i64
  %353 = getelementptr inbounds [66000 x i32], ptr @Next, i64 0, i64 %352
  %354 = load i32, ptr %353, align 4, !tbaa !10
  %355 = and i32 %354, %236
  %356 = or i32 %355, %345
  %357 = or i32 %356, %351
  %358 = getelementptr inbounds [5 x i32], ptr %5, i64 0, i64 %342
  store i32 %357, ptr %358, align 4, !tbaa !10
  %359 = add nuw nsw i64 %342, 1
  %360 = icmp eq i64 %359, %70
  br i1 %360, label %361, label %339, !llvm.loop !99

361:                                              ; preds = %339, %290, %275, %260, %238
  %362 = phi i32 [ %245, %238 ], [ %245, %260 ], [ %245, %275 ], [ %245, %290 ], [ %338, %339 ]
  %363 = phi i32 [ %230, %238 ], [ %230, %260 ], [ %230, %275 ], [ %230, %290 ], [ %306, %339 ]
  %364 = getelementptr inbounds [50177 x i8], ptr @buffer, i64 0, i64 %231
  %365 = load i8, ptr %364, align 1, !tbaa !7
  %366 = zext i8 %365 to i64
  %367 = getelementptr inbounds [256 x i32], ptr %4, i64 0, i64 %366
  %368 = load i32, ptr %367, align 4, !tbaa !10
  %369 = icmp eq i8 %365, 10
  br i1 %369, label %436, label %370

370:                                              ; preds = %361
  %371 = and i32 %362, %52
  %372 = zext i32 %362 to i64
  %373 = getelementptr inbounds [66000 x i32], ptr @Next, i64 0, i64 %372
  %374 = load i32, ptr %373, align 4, !tbaa !10
  %375 = and i32 %374, %368
  %376 = or i32 %375, %371
  store i32 %376, ptr %6, align 16, !tbaa !10
  %377 = load i32, ptr %55, align 4, !tbaa !10
  %378 = and i32 %377, %52
  %379 = zext i32 %377 to i64
  %380 = getelementptr inbounds [66000 x i32], ptr @Next, i64 0, i64 %379
  %381 = load i32, ptr %380, align 4, !tbaa !10
  %382 = and i32 %381, %368
  %383 = or i32 %375, %362
  %384 = zext i32 %383 to i64
  %385 = getelementptr inbounds [66000 x i32], ptr @Next, i64 0, i64 %384
  %386 = load i32, ptr %385, align 4, !tbaa !10
  %387 = or i32 %386, %362
  %388 = and i32 %387, %12
  %389 = or i32 %388, %382
  %390 = or i32 %389, %378
  store i32 %390, ptr %54, align 4, !tbaa !10
  br i1 %56, label %492, label %391

391:                                              ; preds = %370
  %392 = load i32, ptr %58, align 8, !tbaa !10
  %393 = and i32 %392, %52
  %394 = zext i32 %392 to i64
  %395 = getelementptr inbounds [66000 x i32], ptr @Next, i64 0, i64 %394
  %396 = load i32, ptr %395, align 4, !tbaa !10
  %397 = and i32 %396, %368
  %398 = or i32 %389, %377
  %399 = zext i32 %398 to i64
  %400 = getelementptr inbounds [66000 x i32], ptr @Next, i64 0, i64 %399
  %401 = load i32, ptr %400, align 4, !tbaa !10
  %402 = or i32 %401, %377
  %403 = and i32 %402, %12
  %404 = or i32 %403, %397
  %405 = or i32 %404, %393
  store i32 %405, ptr %57, align 8, !tbaa !10
  br i1 %59, label %492, label %406

406:                                              ; preds = %391
  %407 = load i32, ptr %61, align 4, !tbaa !10
  %408 = and i32 %407, %52
  %409 = zext i32 %407 to i64
  %410 = getelementptr inbounds [66000 x i32], ptr @Next, i64 0, i64 %409
  %411 = load i32, ptr %410, align 4, !tbaa !10
  %412 = and i32 %411, %368
  %413 = or i32 %404, %392
  %414 = zext i32 %413 to i64
  %415 = getelementptr inbounds [66000 x i32], ptr @Next, i64 0, i64 %414
  %416 = load i32, ptr %415, align 4, !tbaa !10
  %417 = or i32 %416, %392
  %418 = and i32 %417, %12
  %419 = or i32 %418, %412
  %420 = or i32 %419, %408
  store i32 %420, ptr %60, align 4, !tbaa !10
  br i1 %62, label %492, label %421

421:                                              ; preds = %406
  %422 = load i32, ptr %64, align 16, !tbaa !10
  %423 = and i32 %422, %52
  %424 = zext i32 %422 to i64
  %425 = getelementptr inbounds [66000 x i32], ptr @Next, i64 0, i64 %424
  %426 = load i32, ptr %425, align 4, !tbaa !10
  %427 = and i32 %426, %368
  %428 = or i32 %419, %407
  %429 = zext i32 %428 to i64
  %430 = getelementptr inbounds [66000 x i32], ptr @Next, i64 0, i64 %429
  %431 = load i32, ptr %430, align 4, !tbaa !10
  %432 = or i32 %431, %407
  %433 = and i32 %432, %12
  %434 = or i32 %427, %423
  %435 = or i32 %434, %433
  store i32 %435, ptr %63, align 16, !tbaa !10
  br label %492

436:                                              ; preds = %361
  %437 = add nsw i32 %363, 1
  %438 = load i32, ptr %67, align 4, !tbaa !10
  %439 = and i32 %438, %52
  %440 = zext i32 %438 to i64
  %441 = getelementptr inbounds [66000 x i32], ptr @Next, i64 0, i64 %440
  %442 = load i32, ptr %441, align 4, !tbaa !10
  %443 = and i32 %442, %368
  %444 = or i32 %443, %439
  store i32 %444, ptr %66, align 4, !tbaa !10
  %445 = load i32, ptr @TAIL, align 4, !tbaa !10
  %446 = icmp eq i32 %445, 0
  br i1 %446, label %452, label %447

447:                                              ; preds = %436
  %448 = zext i32 %444 to i64
  %449 = getelementptr inbounds [66000 x i32], ptr @Next, i64 0, i64 %448
  %450 = load i32, ptr %449, align 4, !tbaa !10
  %451 = or i32 %450, %444
  store i32 %451, ptr %66, align 4, !tbaa !10
  br label %452

452:                                              ; preds = %447, %436
  %453 = phi i32 [ %451, %447 ], [ %444, %436 ]
  %454 = and i32 %453, 1
  %455 = load i32, ptr @INVERSE, align 4, !tbaa !10
  %456 = icmp eq i32 %454, %455
  br i1 %456, label %462, label %457

457:                                              ; preds = %452
  %458 = load i32, ptr @FILENAMEONLY, align 4, !tbaa !10
  %459 = icmp eq i32 %458, 0
  br i1 %459, label %460, label %500

460:                                              ; preds = %457
  %461 = trunc i64 %231 to i32
  tail call void @r_output(ptr noundef nonnull @buffer, i32 noundef %461, i32 noundef %212, i32 noundef %437) #34
  br label %462

462:                                              ; preds = %460, %452
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %6, ptr noundef nonnull align 16 dereferenceable(1) @Init, i64 %68, i1 false), !tbaa !10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %5, ptr noundef nonnull align 16 dereferenceable(1) @Init, i64 %68, i1 false), !tbaa !10
  %463 = load i32, ptr %5, align 16, !tbaa !10
  %464 = and i32 %463, %52
  %465 = zext i32 %463 to i64
  %466 = getelementptr inbounds [66000 x i32], ptr @Next, i64 0, i64 %465
  %467 = load i32, ptr %466, align 4, !tbaa !10
  %468 = and i32 %467, %368
  %469 = or i32 %468, %464
  store i32 %469, ptr %6, align 16, !tbaa !10
  br label %470

470:                                              ; preds = %470, %462
  %471 = phi i32 [ %469, %462 ], [ %488, %470 ]
  %472 = phi i32 [ %463, %462 ], [ %475, %470 ]
  %473 = phi i64 [ 1, %462 ], [ %490, %470 ]
  %474 = getelementptr inbounds [5 x i32], ptr %5, i64 0, i64 %473
  %475 = load i32, ptr %474, align 4, !tbaa !10
  %476 = and i32 %475, %52
  %477 = or i32 %471, %472
  %478 = zext i32 %477 to i64
  %479 = getelementptr inbounds [66000 x i32], ptr @Next, i64 0, i64 %478
  %480 = load i32, ptr %479, align 4, !tbaa !10
  %481 = or i32 %480, %472
  %482 = and i32 %481, %12
  %483 = zext i32 %475 to i64
  %484 = getelementptr inbounds [66000 x i32], ptr @Next, i64 0, i64 %483
  %485 = load i32, ptr %484, align 4, !tbaa !10
  %486 = and i32 %485, %368
  %487 = or i32 %486, %476
  %488 = or i32 %487, %482
  %489 = getelementptr inbounds [5 x i32], ptr %6, i64 0, i64 %473
  store i32 %488, ptr %489, align 4, !tbaa !10
  %490 = add nuw nsw i64 %473, 1
  %491 = icmp eq i64 %490, %71
  br i1 %491, label %492, label %470, !llvm.loop !100

492:                                              ; preds = %470, %421, %406, %391, %370
  %493 = phi i32 [ %363, %370 ], [ %363, %391 ], [ %363, %406 ], [ %363, %421 ], [ %437, %470 ]
  %494 = add nuw nsw i64 %229, 2
  %495 = icmp ult i64 %494, %227
  br i1 %495, label %228, label %496, !llvm.loop !101

496:                                              ; preds = %492
  %.lcssa3 = phi i32 [ %493, %492 ]
  %497 = and i64 %208, 4294967295
  %498 = getelementptr inbounds i8, ptr @buffer, i64 %497
  %499 = tail call ptr @strncpy(ptr noundef nonnull dereferenceable(1) @buffer, ptr noundef nonnull dereferenceable(1) %498, i64 noundef 1024) #33
  br label %205, !llvm.loop !102

500:                                              ; preds = %457, %326, %181, %134
  %501 = load i32, ptr @num_of_matched, align 4, !tbaa !10
  %502 = add nsw i32 %501, 1
  store i32 %502, ptr @num_of_matched, align 4, !tbaa !10
  %503 = tail call i32 @puts(ptr nonnull dereferenceable(1) @CurrentFileName)
  br label %504

504:                                              ; preds = %500, %205, %75
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %6) #31
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #31
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %4) #31
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #19

; Function Attrs: nofree nounwind optsize uwtable
define internal void @output(ptr noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #9 {
  %5 = icmp sgt i32 %1, %2
  br i1 %5, label %85, label %6

6:                                                ; preds = %4
  %7 = load i32, ptr @num_of_matched, align 4, !tbaa !10
  %8 = add nsw i32 %7, 1
  store i32 %8, ptr @num_of_matched, align 4, !tbaa !10
  %9 = load i32, ptr @COUNT, align 4, !tbaa !10
  %10 = icmp eq i32 %9, 0
  %11 = load i32, ptr @SILENT, align 4
  %12 = icmp eq i32 %11, 0
  %13 = select i1 %10, i1 %12, i1 false
  br i1 %13, label %14, label %85

14:                                               ; preds = %6
  %15 = load i32, ptr @OUTTAIL, align 4, !tbaa !10
  %16 = icmp eq i32 %15, 0
  %17 = load i32, ptr @D_length, align 4
  %18 = select i1 %16, i32 0, i32 %17
  %19 = add nsw i32 %18, %2
  %20 = add nsw i32 %18, %1
  %21 = load i32, ptr @DELIMITER, align 4, !tbaa !10
  %22 = icmp ne i32 %21, 0
  %23 = zext i1 %22 to i32
  %24 = load i32, ptr @FIRSTOUTPUT, align 4, !tbaa !10
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %35, label %26

26:                                               ; preds = %14
  %27 = sext i32 %20 to i64
  %28 = getelementptr inbounds i8, ptr %0, i64 %27
  %29 = load i8, ptr %28, align 1, !tbaa !7
  %30 = icmp eq i8 %29, 10
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = add nsw i32 %20, 1
  store i32 1, ptr @EATFIRST, align 4, !tbaa !10
  br label %33

33:                                               ; preds = %31, %26
  %34 = phi i32 [ %32, %31 ], [ %20, %26 ]
  store i32 0, ptr @FIRSTOUTPUT, align 4, !tbaa !10
  br label %35

35:                                               ; preds = %33, %14
  %36 = phi i32 [ %34, %33 ], [ %20, %14 ]
  %37 = load i32, ptr @TRUNCATE, align 4, !tbaa !10
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %35
  %40 = load ptr, ptr @stderr, align 8, !tbaa !45
  %41 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %40, ptr noundef nonnull @.str.41, i32 noundef %7) #35
  br label %42

42:                                               ; preds = %39, %35
  %43 = sext i32 %36 to i64
  %44 = getelementptr inbounds i8, ptr %0, i64 %43
  %45 = load i8, ptr %44, align 1, !tbaa !7
  %46 = icmp eq i8 %45, 10
  %47 = icmp sle i32 %36, %19
  %48 = select i1 %46, i1 %47, i1 false
  br i1 %48, label %49, label %60

49:                                               ; preds = %42
  %50 = sext i32 %19 to i64
  br label %51

51:                                               ; preds = %51, %49
  %52 = phi i64 [ %43, %49 ], [ %54, %51 ]
  %53 = tail call i32 @putchar(i32 10)
  %54 = add nsw i64 %52, 1
  %55 = getelementptr inbounds i8, ptr %0, i64 %54
  %56 = load i8, ptr %55, align 1, !tbaa !7
  %57 = icmp eq i8 %56, 10
  %58 = icmp slt i64 %52, %50
  %59 = select i1 %57, i1 %58, i1 false
  br i1 %59, label %51, label %60, !llvm.loop !103

60:                                               ; preds = %51, %42
  %61 = phi i64 [ %43, %42 ], [ %54, %51 ]
  %62 = getelementptr inbounds i8, ptr %0, i64 %61
  %63 = load i32, ptr @FNAME, align 4, !tbaa !10
  %64 = icmp eq i32 %63, 1
  br i1 %64, label %65, label %67

65:                                               ; preds = %60
  %66 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.25, ptr noundef nonnull @CurrentFileName) #34
  br label %67

67:                                               ; preds = %65, %60
  %68 = load i32, ptr @LINENUM, align 4, !tbaa !10
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %74, label %70

70:                                               ; preds = %67
  %71 = add i32 %3, -1
  %72 = add i32 %71, %23
  %73 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.26, i32 noundef %72) #34
  br label %74

74:                                               ; preds = %70, %67
  %75 = sext i32 %19 to i64
  %76 = getelementptr inbounds i8, ptr %0, i64 %75
  %77 = icmp sgt i64 %61, %75
  br i1 %77, label %85, label %78

78:                                               ; preds = %78, %74
  %79 = phi ptr [ %80, %78 ], [ %62, %74 ]
  %80 = getelementptr inbounds i8, ptr %79, i64 1
  %81 = load i8, ptr %79, align 1, !tbaa !7
  %82 = zext i8 %81 to i32
  %83 = tail call i32 @putchar(i32 noundef %82) #34
  %84 = icmp ugt ptr %80, %76
  br i1 %84, label %85, label %78, !llvm.loop !104

85:                                               ; preds = %78, %74, %6, %4
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @maskgen(ptr nocapture noundef %0, i32 noundef %1) #0 {
  %3 = alloca [42 x %struct.term], align 16
  call void @llvm.lifetime.start.p0(i64 1512, ptr nonnull %3) #31
  br label %4

4:                                                ; preds = %4, %2
  %5 = phi i64 [ 0, %2 ], [ %7, %4 ]
  %6 = getelementptr inbounds [42 x %struct.term], ptr %3, i64 0, i64 %5, i32 1
  store i8 0, ptr %6, align 4, !tbaa !7
  %7 = add nuw nsw i64 %5, 1
  %8 = icmp eq i64 %7, 32
  br i1 %8, label %9, label %4, !llvm.loop !105

9:                                                ; preds = %9, %4
  %10 = phi i64 [ %12, %9 ], [ 0, %4 ]
  %11 = getelementptr inbounds [42 x %struct.term], ptr %3, i64 0, i64 %10
  store i32 0, ptr %11, align 4, !tbaa !106
  %12 = add nuw nsw i64 %10, 1
  %13 = icmp eq i64 %12, 32
  br i1 %13, label %14, label %9, !llvm.loop !108

14:                                               ; preds = %9
  store i32 0, ptr @endposition, align 4, !tbaa !10
  store i32 0, ptr @NO_ERR_MASK, align 4, !tbaa !10
  store i32 0, ptr @wildmask, align 4, !tbaa !10
  %15 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #32
  %16 = trunc i64 %15 to i32
  %17 = load i32, ptr @NOUPPER, align 4, !tbaa !10
  %18 = icmp ne i32 %17, 0
  %19 = icmp sgt i32 %16, 0
  %20 = select i1 %18, i1 %19, i1 false
  br i1 %20, label %21, label %43

21:                                               ; preds = %14
  %22 = tail call ptr @__ctype_b_loc() #37
  %23 = and i64 %15, 4294967295
  br label %24

24:                                               ; preds = %40, %21
  %25 = phi i64 [ 0, %21 ], [ %41, %40 ]
  %26 = load ptr, ptr %22, align 8, !tbaa !45
  %27 = getelementptr inbounds i8, ptr %0, i64 %25
  %28 = load i8, ptr %27, align 1, !tbaa !7
  %29 = zext i8 %28 to i64
  %30 = getelementptr inbounds i16, ptr %26, i64 %29
  %31 = load i16, ptr %30, align 2, !tbaa !62
  %32 = and i16 %31, 1280
  %33 = icmp eq i16 %32, 1280
  br i1 %33, label %34, label %40

34:                                               ; preds = %24
  %35 = tail call ptr @__ctype_tolower_loc() #37
  %36 = load ptr, ptr %35, align 8, !tbaa !45
  %37 = getelementptr inbounds i32, ptr %36, i64 %29
  %38 = load i32, ptr %37, align 4, !tbaa !10
  %39 = trunc i32 %38 to i8
  store i8 %39, ptr %27, align 1, !tbaa !7
  br label %40

40:                                               ; preds = %34, %24
  %41 = add nuw nsw i64 %25, 1
  %42 = icmp eq i64 %41, %23
  br i1 %42, label %43, label %24, !llvm.loop !109

43:                                               ; preds = %40, %14
  br i1 %19, label %44, label %255

44:                                               ; preds = %43
  %45 = load i32, ptr @wildmask, align 4, !tbaa !10
  %46 = load i32, ptr @endposition, align 4, !tbaa !10
  %47 = load i32, ptr @AND, align 4
  %48 = load i32, ptr @NO_ERR_MASK, align 4, !tbaa !10
  %49 = load i32, ptr @D_length, align 4
  %50 = load i32, ptr @REGEX, align 4
  %51 = icmp eq i32 %50, 1
  %52 = icmp eq i32 %50, 0
  br label %53

53:                                               ; preds = %238, %44
  %54 = phi i32 [ 0, %44 ], [ %248, %238 ]
  %55 = phi i32 [ 1, %44 ], [ %244, %238 ]
  %56 = phi i32 [ 0, %44 ], [ %245, %238 ]
  %57 = phi i32 [ 0, %44 ], [ %246, %238 ]
  %58 = phi i32 [ 0, %44 ], [ %247, %238 ]
  %59 = phi i32 [ %48, %44 ], [ %242, %238 ]
  %60 = phi i32 [ %47, %44 ], [ %241, %238 ]
  %61 = phi i32 [ %46, %44 ], [ %240, %238 ]
  %62 = phi i32 [ %45, %44 ], [ %239, %238 ]
  %63 = sext i32 %54 to i64
  %64 = getelementptr inbounds i8, ptr %0, i64 %63
  %65 = load i8, ptr %64, align 1, !tbaa !7
  switch i8 %65, label %212 [
    i8 -7, label %66
    i8 -3, label %238
    i8 -6, label %238
    i8 -14, label %238
    i8 -13, label %238
    i8 -10, label %78
    i8 -9, label %80
    i8 -12, label %86
    i8 -11, label %156
    i8 -5, label %159
    i8 -4, label %172
    i8 10, label %190
    i8 -15, label %198
    i8 -17, label %205
  ]

66:                                               ; preds = %53
  br i1 %52, label %72, label %67

67:                                               ; preds = %66
  %68 = sext i32 %55 to i64
  %69 = getelementptr inbounds [42 x %struct.term], ptr %3, i64 0, i64 %68, i32 1
  store i8 46, ptr %69, align 4, !tbaa !7
  %70 = getelementptr inbounds [42 x %struct.term], ptr %3, i64 0, i64 %68, i32 1, i64 1
  store i8 46, ptr %70, align 1, !tbaa !7
  %71 = getelementptr inbounds [42 x %struct.term], ptr %3, i64 0, i64 %68, i32 1, i64 2
  store i8 0, ptr %71, align 2, !tbaa !7
  br label %227

72:                                               ; preds = %66
  %73 = add nsw i32 %55, -1
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [0 x i32], ptr @Bit, i64 0, i64 %74
  %76 = load i32, ptr %75, align 4, !tbaa !10
  %77 = or i32 %76, %62
  store i32 %77, ptr @wildmask, align 4, !tbaa !10
  br label %238

78:                                               ; preds = %53
  %79 = add nsw i32 %57, 1
  br label %238

80:                                               ; preds = %53
  %81 = add nsw i32 %57, -1
  %82 = icmp slt i32 %57, 1
  br i1 %82, label %83, label %238

83:                                               ; preds = %80
  %84 = load ptr, ptr @stderr, align 8, !tbaa !45
  %85 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %84, ptr noundef nonnull @.str.73, ptr noundef nonnull @Progname) #35
  tail call void @exit(i32 noundef 2) #36
  unreachable

86:                                               ; preds = %53
  %87 = icmp eq i32 %56, 1
  br i1 %87, label %88, label %93

88:                                               ; preds = %86
  %89 = sext i32 %55 to i64
  %90 = getelementptr inbounds [0 x i32], ptr @Bit, i64 0, i64 %89
  %91 = load i32, ptr %90, align 4, !tbaa !10
  %92 = or i32 %91, %59
  store i32 %92, ptr @NO_ERR_MASK, align 4, !tbaa !10
  br label %93

93:                                               ; preds = %88, %86
  %94 = phi i32 [ %92, %88 ], [ %59, %86 ]
  %95 = add nsw i32 %54, 1
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i8, ptr %0, i64 %96
  %98 = load i8, ptr %97, align 1, !tbaa !7
  %99 = icmp eq i8 %98, -8
  br i1 %99, label %100, label %107

100:                                              ; preds = %93
  %101 = sext i32 %55 to i64
  %102 = getelementptr inbounds [42 x %struct.term], ptr %3, i64 0, i64 %101
  store i32 1, ptr %102, align 4, !tbaa !106
  %103 = add nsw i32 %54, 2
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i8, ptr %0, i64 %104
  %106 = load i8, ptr %105, align 1, !tbaa !7
  br label %107

107:                                              ; preds = %100, %93
  %108 = phi i8 [ %106, %100 ], [ %98, %93 ]
  %109 = phi i32 [ %103, %100 ], [ %95, %93 ]
  %110 = icmp ne i8 %108, -11
  %111 = icmp slt i32 %109, %16
  %112 = select i1 %110, i1 %111, i1 false
  br i1 %112, label %113, label %145

113:                                              ; preds = %107
  %114 = sext i32 %55 to i64
  br label %115

115:                                              ; preds = %135, %113
  %116 = phi i8 [ %108, %113 ], [ %141, %135 ]
  %117 = phi i32 [ %109, %113 ], [ %138, %135 ]
  %118 = phi i32 [ 0, %113 ], [ %137, %135 ]
  %119 = icmp eq i8 %116, -19
  br i1 %119, label %120, label %128

120:                                              ; preds = %115
  %121 = add nsw i32 %117, 1
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i8, ptr %0, i64 %122
  %124 = load i8, ptr %123, align 1, !tbaa !7
  %125 = add nsw i32 %118, -1
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds [42 x %struct.term], ptr %3, i64 0, i64 %114, i32 1, i64 %126
  store i8 %124, ptr %127, align 1, !tbaa !7
  br label %135

128:                                              ; preds = %115
  %129 = add nsw i32 %118, 1
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds [42 x %struct.term], ptr %3, i64 0, i64 %114, i32 1, i64 %130
  store i8 %116, ptr %131, align 1, !tbaa !7
  %132 = sext i32 %118 to i64
  %133 = getelementptr inbounds [42 x %struct.term], ptr %3, i64 0, i64 %114, i32 1, i64 %132
  store i8 %116, ptr %133, align 1, !tbaa !7
  %134 = add nsw i32 %118, 2
  br label %135

135:                                              ; preds = %128, %120
  %136 = phi i32 [ 1, %128 ], [ 2, %120 ]
  %137 = phi i32 [ %134, %128 ], [ %118, %120 ]
  %138 = add nsw i32 %117, %136
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i8, ptr %0, i64 %139
  %141 = load i8, ptr %140, align 1, !tbaa !7
  %142 = icmp ne i8 %141, -11
  %143 = icmp slt i32 %138, %16
  %144 = select i1 %142, i1 %143, i1 false
  br i1 %144, label %115, label %145, !llvm.loop !110

145:                                              ; preds = %135, %107
  %146 = phi i32 [ 0, %107 ], [ %137, %135 ]
  %147 = phi i32 [ %109, %107 ], [ %138, %135 ]
  %148 = icmp eq i32 %147, %16
  br i1 %148, label %149, label %152

149:                                              ; preds = %145
  %150 = load ptr, ptr @stderr, align 8, !tbaa !45
  %151 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %150, ptr noundef nonnull @.str.1.74, ptr noundef nonnull @Progname) #35
  tail call void @exit(i32 noundef 2) #36
  unreachable

152:                                              ; preds = %145
  %153 = sext i32 %55 to i64
  %154 = sext i32 %146 to i64
  %155 = getelementptr inbounds [42 x %struct.term], ptr %3, i64 0, i64 %153, i32 1, i64 %154
  store i8 0, ptr %155, align 1, !tbaa !7
  br label %227

156:                                              ; preds = %53
  %157 = load ptr, ptr @stderr, align 8, !tbaa !45
  %158 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %157, ptr noundef nonnull @.str.1.74, ptr noundef nonnull @Progname) #35
  tail call void @exit(i32 noundef 2) #36
  unreachable

159:                                              ; preds = %53
  %160 = icmp eq i32 %60, 1
  %161 = select i1 %51, i1 true, i1 %160
  br i1 %161, label %162, label %165

162:                                              ; preds = %159
  %163 = load ptr, ptr @stderr, align 8, !tbaa !45
  %164 = tail call i64 @fwrite(ptr nonnull @.str.2.75, i64 17, i64 1, ptr %163) #38
  tail call void @exit(i32 noundef 2) #36
  unreachable

165:                                              ; preds = %159
  %166 = sext i32 %55 to i64
  %167 = getelementptr inbounds [42 x %struct.term], ptr %3, i64 0, i64 %166
  store i32 2, ptr %167, align 4, !tbaa !106
  %168 = getelementptr inbounds [42 x %struct.term], ptr %3, i64 0, i64 %166, i32 1
  store i8 0, ptr %168, align 4, !tbaa !7
  %169 = getelementptr inbounds [0 x i32], ptr @Bit, i64 0, i64 %166
  %170 = load i32, ptr %169, align 4, !tbaa !10
  %171 = or i32 %170, %61
  store i32 %171, ptr @endposition, align 4, !tbaa !10
  br label %227

172:                                              ; preds = %53
  %173 = sext i32 %55 to i64
  %174 = getelementptr inbounds [42 x %struct.term], ptr %3, i64 0, i64 %173
  store i32 2, ptr %174, align 4, !tbaa !106
  %175 = getelementptr inbounds [42 x %struct.term], ptr %3, i64 0, i64 %173, i32 1
  store i8 0, ptr %175, align 4, !tbaa !7
  %176 = icmp sgt i32 %55, %49
  br i1 %176, label %177, label %178

177:                                              ; preds = %172
  store i32 1, ptr @AND, align 4, !tbaa !10
  br label %178

178:                                              ; preds = %177, %172
  %179 = phi i32 [ 1, %177 ], [ %60, %172 ]
  %180 = icmp ne i32 %58, 0
  %181 = and i1 %176, %51
  %182 = select i1 %180, i1 true, i1 %181
  br i1 %182, label %183, label %186

183:                                              ; preds = %178
  %184 = load ptr, ptr @stderr, align 8, !tbaa !45
  %185 = tail call i64 @fwrite(ptr nonnull @.str.2.75, i64 17, i64 1, ptr %184) #38
  tail call void @exit(i32 noundef 2) #36
  unreachable

186:                                              ; preds = %178
  %187 = getelementptr inbounds [0 x i32], ptr @Bit, i64 0, i64 %173
  %188 = load i32, ptr %187, align 4, !tbaa !10
  %189 = or i32 %188, %61
  store i32 %189, ptr @endposition, align 4, !tbaa !10
  br label %227

190:                                              ; preds = %53
  %191 = sext i32 %55 to i64
  %192 = getelementptr inbounds [0 x i32], ptr @Bit, i64 0, i64 %191
  %193 = load i32, ptr %192, align 4, !tbaa !10
  %194 = or i32 %193, %59
  store i32 %194, ptr @NO_ERR_MASK, align 4, !tbaa !10
  %195 = getelementptr inbounds [42 x %struct.term], ptr %3, i64 0, i64 %191, i32 1
  %196 = getelementptr inbounds [42 x %struct.term], ptr %3, i64 0, i64 %191, i32 1, i64 1
  store i8 10, ptr %196, align 1, !tbaa !7
  store i8 10, ptr %195, align 4, !tbaa !7
  %197 = getelementptr inbounds [42 x %struct.term], ptr %3, i64 0, i64 %191, i32 1, i64 2
  store i8 0, ptr %197, align 2, !tbaa !7
  br label %227

198:                                              ; preds = %53
  %199 = sext i32 %55 to i64
  %200 = getelementptr inbounds [0 x i32], ptr @Bit, i64 0, i64 %199
  %201 = load i32, ptr %200, align 4, !tbaa !10
  %202 = or i32 %201, %59
  store i32 %202, ptr @NO_ERR_MASK, align 4, !tbaa !10
  %203 = getelementptr inbounds [42 x %struct.term], ptr %3, i64 0, i64 %199, i32 1
  store <8 x i8> <i8 1, i8 47, i8 58, i8 64, i8 91, i8 96, i8 123, i8 127>, ptr %203, align 4, !tbaa !7
  %204 = getelementptr inbounds [42 x %struct.term], ptr %3, i64 0, i64 %199, i32 1, i64 8
  store i8 0, ptr %204, align 4, !tbaa !7
  br label %227

205:                                              ; preds = %53
  %206 = sext i32 %55 to i64
  %207 = getelementptr inbounds [0 x i32], ptr @Bit, i64 0, i64 %206
  %208 = load i32, ptr %207, align 4, !tbaa !10
  %209 = or i32 %59, %208
  store i32 %209, ptr @NO_ERR_MASK, align 4, !tbaa !10
  %210 = getelementptr inbounds [42 x %struct.term], ptr %3, i64 0, i64 %206, i32 1
  store <4 x i8> <i8 10, i8 10, i8 -17, i8 -17>, ptr %210, align 4, !tbaa !7
  %211 = getelementptr inbounds [42 x %struct.term], ptr %3, i64 0, i64 %206, i32 1, i64 4
  store i8 0, ptr %211, align 4, !tbaa !7
  br label %227

212:                                              ; preds = %53
  %213 = icmp eq i32 %56, 1
  %214 = sext i32 %55 to i64
  br i1 %213, label %215, label %220

215:                                              ; preds = %212
  %216 = getelementptr inbounds [0 x i32], ptr @Bit, i64 0, i64 %214
  %217 = load i32, ptr %216, align 4, !tbaa !10
  %218 = or i32 %217, %59
  store i32 %218, ptr @NO_ERR_MASK, align 4, !tbaa !10
  %219 = load i8, ptr %64, align 1, !tbaa !7
  br label %220

220:                                              ; preds = %215, %212
  %221 = phi i8 [ %219, %215 ], [ %65, %212 ]
  %222 = phi i32 [ %218, %215 ], [ %59, %212 ]
  %223 = getelementptr inbounds [42 x %struct.term], ptr %3, i64 0, i64 %214
  store i32 0, ptr %223, align 4, !tbaa !106
  %224 = getelementptr inbounds [42 x %struct.term], ptr %3, i64 0, i64 %214, i32 1
  %225 = getelementptr inbounds [42 x %struct.term], ptr %3, i64 0, i64 %214, i32 1, i64 1
  store i8 %221, ptr %225, align 1, !tbaa !7
  store i8 %221, ptr %224, align 4, !tbaa !7
  %226 = getelementptr inbounds [42 x %struct.term], ptr %3, i64 0, i64 %214, i32 1, i64 2
  store i8 0, ptr %226, align 2, !tbaa !7
  br label %227

227:                                              ; preds = %220, %205, %198, %190, %186, %165, %152, %67
  %228 = phi i32 [ %61, %220 ], [ %61, %205 ], [ %61, %198 ], [ %61, %190 ], [ %189, %186 ], [ %171, %165 ], [ %61, %152 ], [ %61, %67 ]
  %229 = phi i32 [ %60, %220 ], [ %60, %205 ], [ %60, %198 ], [ %60, %190 ], [ %179, %186 ], [ %60, %165 ], [ %60, %152 ], [ %60, %67 ]
  %230 = phi i32 [ %222, %220 ], [ %209, %205 ], [ %202, %198 ], [ %194, %190 ], [ %59, %186 ], [ %59, %165 ], [ %94, %152 ], [ %59, %67 ]
  %231 = phi i32 [ %58, %220 ], [ %58, %205 ], [ %58, %198 ], [ %58, %190 ], [ 0, %186 ], [ 1, %165 ], [ %58, %152 ], [ %58, %67 ]
  %232 = phi i32 [ %54, %220 ], [ %54, %205 ], [ %54, %198 ], [ %54, %190 ], [ %54, %186 ], [ %54, %165 ], [ %147, %152 ], [ %54, %67 ]
  %233 = add nsw i32 %55, 1
  %234 = icmp sgt i32 %55, 31
  br i1 %234, label %235, label %238

235:                                              ; preds = %227
  %236 = load ptr, ptr @stderr, align 8, !tbaa !45
  %237 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %236, ptr noundef nonnull @.str.3.76, ptr noundef nonnull @Progname) #35
  tail call void @exit(i32 noundef 2) #36
  unreachable

238:                                              ; preds = %227, %80, %78, %72, %53, %53, %53, %53
  %239 = phi i32 [ %62, %227 ], [ %62, %80 ], [ %62, %78 ], [ %62, %53 ], [ %62, %53 ], [ %62, %53 ], [ %62, %53 ], [ %77, %72 ]
  %240 = phi i32 [ %228, %227 ], [ %61, %80 ], [ %61, %78 ], [ %61, %53 ], [ %61, %53 ], [ %61, %53 ], [ %61, %53 ], [ %61, %72 ]
  %241 = phi i32 [ %229, %227 ], [ %60, %80 ], [ %60, %78 ], [ %60, %53 ], [ %60, %53 ], [ %60, %53 ], [ %60, %53 ], [ %60, %72 ]
  %242 = phi i32 [ %230, %227 ], [ %59, %80 ], [ %59, %78 ], [ %59, %53 ], [ %59, %53 ], [ %59, %53 ], [ %59, %53 ], [ %59, %72 ]
  %243 = phi i32 [ %232, %227 ], [ %54, %80 ], [ %54, %78 ], [ %54, %53 ], [ %54, %53 ], [ %54, %53 ], [ %54, %53 ], [ %54, %72 ]
  %244 = phi i32 [ %233, %227 ], [ %55, %80 ], [ %55, %78 ], [ %55, %53 ], [ %55, %53 ], [ %55, %53 ], [ %55, %53 ], [ %55, %72 ]
  %245 = phi i32 [ %56, %227 ], [ 0, %80 ], [ 1, %78 ], [ %56, %53 ], [ %56, %53 ], [ %56, %53 ], [ %56, %53 ], [ %56, %72 ]
  %246 = phi i32 [ %57, %227 ], [ %81, %80 ], [ %79, %78 ], [ %57, %53 ], [ %57, %53 ], [ %57, %53 ], [ %57, %53 ], [ %57, %72 ]
  %247 = phi i32 [ %231, %227 ], [ %58, %80 ], [ %58, %78 ], [ %58, %53 ], [ %58, %53 ], [ %58, %53 ], [ %58, %53 ], [ %58, %72 ]
  %248 = add nsw i32 %243, 1
  %249 = icmp slt i32 %248, %16
  br i1 %249, label %53, label %250, !llvm.loop !111

250:                                              ; preds = %238
  %.lcssa1 = phi i32 [ %244, %238 ]
  %.lcssa = phi i32 [ %246, %238 ]
  %251 = icmp eq i32 %.lcssa, 0
  br i1 %251, label %255, label %252

252:                                              ; preds = %250
  %253 = load ptr, ptr @stderr, align 8, !tbaa !45
  %254 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %253, ptr noundef nonnull @.str.73, ptr noundef nonnull @Progname) #35
  tail call void @exit(i32 noundef 2) #36
  unreachable

255:                                              ; preds = %250, %43
  %256 = phi i32 [ %.lcssa1, %250 ], [ 1, %43 ]
  %257 = add nsw i32 %256, -1
  %258 = sub i32 33, %256
  %259 = load i32, ptr @wildmask, align 4, !tbaa !10
  %260 = lshr i32 %259, %258
  store i32 %260, ptr @wildmask, align 4, !tbaa !10
  %261 = load i32, ptr @endposition, align 4, !tbaa !10
  %262 = lshr i32 %261, %258
  %263 = load i32, ptr @NO_ERR_MASK, align 4, !tbaa !10
  %264 = ashr i32 %263, 1
  %265 = load i32, ptr getelementptr inbounds ([0 x i32], ptr @Bit, i64 0, i64 1), align 4, !tbaa !10
  %266 = xor i32 %264, -1
  %267 = or i32 %265, %266
  %268 = sub i32 32, %256
  %269 = ashr i32 %267, %268
  store i32 %269, ptr @NO_ERR_MASK, align 4, !tbaa !10
  %270 = icmp sgt i32 %256, 32
  %271 = load i32, ptr @Init, align 4, !tbaa !10
  br i1 %270, label %284, label %272

272:                                              ; preds = %255
  %273 = tail call i32 @llvm.smax.i32(i32 %258, i32 1)
  %274 = add nuw i32 %273, 1
  %275 = zext i32 %274 to i64
  br label %276

276:                                              ; preds = %276, %272
  %277 = phi i64 [ 1, %272 ], [ %282, %276 ]
  %278 = phi i32 [ %271, %272 ], [ %281, %276 ]
  %279 = getelementptr inbounds [0 x i32], ptr @Bit, i64 0, i64 %277
  %280 = load i32, ptr %279, align 4, !tbaa !10
  %281 = or i32 %280, %278
  %282 = add nuw nsw i64 %277, 1
  %283 = icmp eq i64 %282, %275
  br i1 %283, label %284, label %276, !llvm.loop !112

284:                                              ; preds = %276, %255
  %285 = phi i32 [ %271, %255 ], [ %281, %276 ]
  %286 = or i32 %285, %262
  store i32 %286, ptr @Init, align 4, !tbaa !10
  %287 = shl i32 %262, 1
  %288 = or i32 %287, 1
  %289 = or i32 %288, %260
  %290 = or i32 %289, %286
  store i32 %290, ptr @Init1, align 4, !tbaa !10
  %291 = load i32, ptr @D_length, align 4, !tbaa !10
  %292 = sub nsw i32 %257, %291
  %293 = shl nsw i32 -1, %292
  %294 = and i32 %293, %288
  store i32 %294, ptr @D_endpos, align 4, !tbaa !10
  %295 = xor i32 %294, %288
  store i32 %295, ptr @endposition, align 4, !tbaa !10
  %296 = icmp sgt i32 %256, 1
  %297 = load i32, ptr @REGEX, align 4
  %298 = icmp ne i32 %297, 0
  %299 = sext i32 %258 to i64
  %300 = zext i32 %256 to i64
  br label %301

301:                                              ; preds = %344, %284
  %302 = phi i64 [ 0, %284 ], [ %345, %344 ]
  br i1 %296, label %303, label %344

303:                                              ; preds = %301
  %304 = icmp ne i64 %302, 10
  %305 = select i1 %304, i1 true, i1 %298
  %306 = getelementptr inbounds [0 x i32], ptr @Mask, i64 0, i64 %302
  br label %307

307:                                              ; preds = %341, %303
  %308 = phi i64 [ 1, %303 ], [ %342, %341 ]
  br label %309

309:                                              ; preds = %323, %307
  %310 = phi i64 [ 0, %307 ], [ %324, %323 ]
  %311 = getelementptr inbounds [42 x %struct.term], ptr %3, i64 0, i64 %308, i32 1, i64 %310
  %312 = load i8, ptr %311, align 2, !tbaa !7
  switch i8 %312, label %314 [
    i8 0, label %331
    i8 -18, label %313
  ]

313:                                              ; preds = %309
  br i1 %305, label %325, label %314

314:                                              ; preds = %313, %309
  %315 = zext i8 %312 to i64
  %316 = icmp ult i64 %302, %315
  br i1 %316, label %323, label %317

317:                                              ; preds = %314
  %318 = or i64 %310, 1
  %319 = getelementptr inbounds [42 x %struct.term], ptr %3, i64 0, i64 %308, i32 1, i64 %318
  %320 = load i8, ptr %319, align 1, !tbaa !7
  %321 = zext i8 %320 to i64
  %322 = icmp ugt i64 %302, %321
  br i1 %322, label %323, label %325

323:                                              ; preds = %317, %314
  %324 = add nuw i64 %310, 2
  br label %309, !llvm.loop !113

325:                                              ; preds = %317, %313
  %326 = load i32, ptr %306, align 4, !tbaa !10
  %327 = add nsw i64 %308, %299
  %328 = getelementptr inbounds [0 x i32], ptr @Bit, i64 0, i64 %327
  %329 = load i32, ptr %328, align 4, !tbaa !10
  %330 = or i32 %329, %326
  store i32 %330, ptr %306, align 4, !tbaa !10
  br label %331

331:                                              ; preds = %325, %309
  %332 = getelementptr inbounds [42 x %struct.term], ptr %3, i64 0, i64 %308
  %333 = load i32, ptr %332, align 4, !tbaa !106
  %334 = icmp eq i32 %333, 1
  br i1 %334, label %335, label %341

335:                                              ; preds = %331
  %336 = load i32, ptr %306, align 4, !tbaa !10
  %337 = add nsw i64 %308, %299
  %338 = getelementptr inbounds [0 x i32], ptr @Bit, i64 0, i64 %337
  %339 = load i32, ptr %338, align 4, !tbaa !10
  %340 = xor i32 %339, %336
  store i32 %340, ptr %306, align 4, !tbaa !10
  br label %341

341:                                              ; preds = %335, %331
  %342 = add nuw nsw i64 %308, 1
  %343 = icmp eq i64 %342, %300
  br i1 %343, label %344, label %307, !llvm.loop !114

344:                                              ; preds = %341, %301
  %345 = add nuw nsw i64 %302, 1
  %346 = icmp eq i64 %345, 256
  br i1 %346, label %347, label %301, !llvm.loop !115

347:                                              ; preds = %344
  %348 = load i32, ptr @NOUPPER, align 4, !tbaa !10
  %349 = icmp eq i32 %348, 0
  br i1 %349, label %371, label %350

350:                                              ; preds = %347
  %351 = tail call ptr @__ctype_b_loc() #37
  %352 = load ptr, ptr %351, align 8, !tbaa !45
  br label %353

353:                                              ; preds = %368, %350
  %354 = phi i64 [ 65, %350 ], [ %369, %368 ]
  %355 = getelementptr inbounds i16, ptr %352, i64 %354
  %356 = load i16, ptr %355, align 2, !tbaa !62
  %357 = and i16 %356, 256
  %358 = icmp eq i16 %357, 0
  br i1 %358, label %368, label %359

359:                                              ; preds = %353
  %360 = tail call ptr @__ctype_tolower_loc() #37
  %361 = load ptr, ptr %360, align 8, !tbaa !45
  %362 = getelementptr inbounds i32, ptr %361, i64 %354
  %363 = load i32, ptr %362, align 4, !tbaa !10
  %364 = sext i32 %363 to i64
  %365 = getelementptr inbounds [0 x i32], ptr @Mask, i64 0, i64 %364
  %366 = load i32, ptr %365, align 4, !tbaa !10
  %367 = getelementptr inbounds [0 x i32], ptr @Mask, i64 0, i64 %354
  store i32 %366, ptr %367, align 4, !tbaa !10
  br label %368

368:                                              ; preds = %359, %353
  %369 = add nuw nsw i64 %354, 1
  %370 = icmp eq i64 %369, 91
  br i1 %370, label %371, label %353, !llvm.loop !116

371:                                              ; preds = %368, %347
  call void @llvm.lifetime.end.p0(i64 1512, ptr nonnull %3) #31
  ret i32 %257
}

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare ptr @__ctype_tolower_loc() local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #19

; Function Attrs: nofree nounwind optsize uwtable
define internal void @m_short(ptr noundef readonly %0, i32 noundef %1, i32 noundef %2) #9 {
  %4 = sext i32 %2 to i64
  %5 = getelementptr inbounds i8, ptr %0, i64 %4
  %6 = sext i32 %1 to i64
  %7 = getelementptr inbounds i8, ptr %0, i64 %6
  %8 = getelementptr inbounds i8, ptr %7, i64 1
  %9 = icmp sgt i32 %1, %2
  br i1 %9, label %141, label %10

10:                                               ; preds = %136, %3
  %11 = phi ptr [ %139, %136 ], [ %7, %3 ]
  %12 = phi ptr [ %138, %136 ], [ %8, %3 ]
  %13 = load i8, ptr %11, align 1, !tbaa !7
  %14 = zext i8 %13 to i64
  %15 = getelementptr inbounds [8192 x ptr], ptr @HASH, i64 0, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !45
  %17 = icmp eq ptr %16, null
  br i1 %17, label %136, label %18

18:                                               ; preds = %10
  %19 = load i32, ptr @num_of_matched, align 4, !tbaa !10
  %20 = load i32, ptr @FILENAMEONLY, align 4
  %21 = icmp ne i32 %20, 0
  %22 = load i32, ptr @SILENT, align 4
  %23 = icmp ne i32 %22, 0
  %24 = select i1 %21, i1 true, i1 %23
  %25 = load i32, ptr @COUNT, align 4
  %26 = icmp eq i32 %25, 0
  br label %27

27:                                               ; preds = %131, %18
  %28 = phi i8 [ %132, %131 ], [ %13, %18 ]
  %29 = phi i32 [ %133, %131 ], [ %19, %18 ]
  %30 = phi ptr [ %34, %131 ], [ %16, %18 ]
  %31 = phi ptr [ %134, %131 ], [ %11, %18 ]
  %32 = load i32, ptr %30, align 8, !tbaa !117
  %33 = getelementptr inbounds %struct.pnode, ptr %30, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !119
  %35 = sext i32 %32 to i64
  %36 = getelementptr inbounds [30000 x ptr], ptr @patt, i64 0, i64 %35
  %37 = load ptr, ptr %36, align 8, !tbaa !45
  %38 = load i8, ptr %37, align 1, !tbaa !7
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds [256 x i8], ptr @tr, i64 0, i64 %39
  %41 = load i8, ptr %40, align 1, !tbaa !7
  %42 = zext i8 %28 to i64
  %43 = getelementptr inbounds [256 x i8], ptr @tr, i64 0, i64 %42
  %44 = load i8, ptr %43, align 1, !tbaa !7
  %45 = icmp eq i8 %41, %44
  br i1 %45, label %46, label %63

46:                                               ; preds = %46, %27
  %47 = phi i64 [ %50, %46 ], [ 0, %27 ]
  %48 = phi ptr [ %49, %46 ], [ %31, %27 ]
  %49 = getelementptr inbounds i8, ptr %48, i64 1
  %50 = add nuw nsw i64 %47, 1
  %51 = getelementptr inbounds i8, ptr %37, i64 %50
  %52 = load i8, ptr %51, align 1, !tbaa !7
  %53 = zext i8 %52 to i64
  %54 = getelementptr inbounds [256 x i8], ptr @tr, i64 0, i64 %53
  %55 = load i8, ptr %54, align 1, !tbaa !7
  %56 = load i8, ptr %49, align 1, !tbaa !7
  %57 = zext i8 %56 to i64
  %58 = getelementptr inbounds [256 x i8], ptr @tr, i64 0, i64 %57
  %59 = load i8, ptr %58, align 1, !tbaa !7
  %60 = icmp eq i8 %55, %59
  br i1 %60, label %46, label %61, !llvm.loop !120

61:                                               ; preds = %46
  %.lcssa = phi i64 [ %50, %46 ]
  %62 = trunc i64 %.lcssa to i32
  br label %63

63:                                               ; preds = %61, %27
  %64 = phi i32 [ 0, %27 ], [ %62, %61 ]
  %65 = getelementptr inbounds [30000 x i8], ptr @pat_len, i64 0, i64 %35
  %66 = load i8, ptr %65, align 1, !tbaa !7
  %67 = zext i8 %66 to i32
  %68 = icmp ult i32 %64, %67
  br i1 %68, label %131, label %69

69:                                               ; preds = %63
  %70 = icmp ult ptr %31, %5
  br i1 %70, label %71, label %157

71:                                               ; preds = %69
  %72 = add nsw i32 %29, 1
  store i32 %72, ptr @num_of_matched, align 4, !tbaa !10
  br i1 %24, label %157, label %73

73:                                               ; preds = %71
  br i1 %26, label %79, label %74

74:                                               ; preds = %74, %73
  %75 = phi ptr [ %78, %74 ], [ %31, %73 ]
  %76 = load i8, ptr %75, align 1, !tbaa !7
  %77 = icmp eq i8 %76, 10
  %78 = getelementptr inbounds i8, ptr %75, i64 1
  br i1 %77, label %131, label %74, !llvm.loop !121

79:                                               ; preds = %73
  %.lcssa1 = phi ptr [ %31, %73 ]
  %80 = load i32, ptr @FNAME, align 4, !tbaa !10
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %84, label %82

82:                                               ; preds = %79
  %83 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.77, ptr noundef nonnull @CurrentFileName) #34
  br label %84

84:                                               ; preds = %82, %79
  %85 = load i32, ptr @INVERSE, align 4, !tbaa !10
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %106

87:                                               ; preds = %87, %84
  %88 = phi ptr [ %89, %87 ], [ %.lcssa1, %84 ]
  %89 = getelementptr inbounds i8, ptr %88, i64 -1
  %90 = load i8, ptr %89, align 1, !tbaa !7
  %91 = icmp eq i8 %90, 10
  br i1 %91, label %92, label %87, !llvm.loop !122

92:                                               ; preds = %87
  %.lcssa5 = phi ptr [ %88, %87 ]
  %93 = load i8, ptr %.lcssa5, align 1, !tbaa !7
  %94 = icmp eq i8 %93, 10
  br i1 %94, label %103, label %95

95:                                               ; preds = %95, %92
  %96 = phi i8 [ %101, %95 ], [ %93, %92 ]
  %97 = phi ptr [ %100, %95 ], [ %.lcssa5, %92 ]
  %98 = zext i8 %96 to i32
  %99 = tail call i32 @putchar(i32 noundef %98) #34
  %100 = getelementptr inbounds i8, ptr %97, i64 1
  %101 = load i8, ptr %100, align 1, !tbaa !7
  %102 = icmp eq i8 %101, 10
  br i1 %102, label %103, label %95, !llvm.loop !123

103:                                              ; preds = %95, %92
  %104 = phi ptr [ %.lcssa5, %92 ], [ %100, %95 ]
  %105 = tail call i32 @putchar(i32 10)
  br label %136

106:                                              ; preds = %106, %84
  %107 = phi ptr [ %108, %106 ], [ %.lcssa1, %84 ]
  %108 = getelementptr inbounds i8, ptr %107, i64 -1
  %109 = load i8, ptr %108, align 1, !tbaa !7
  %110 = icmp eq i8 %109, 10
  br i1 %110, label %111, label %106, !llvm.loop !124

111:                                              ; preds = %106
  %.lcssa2 = phi ptr [ %108, %106 ]
  %112 = icmp ult ptr %12, %.lcssa2
  br i1 %112, label %113, label %123

113:                                              ; preds = %113, %111
  %114 = phi ptr [ %115, %113 ], [ %12, %111 ]
  %115 = getelementptr inbounds i8, ptr %114, i64 1
  %116 = load i8, ptr %114, align 1, !tbaa !7
  %117 = zext i8 %116 to i32
  %118 = tail call i32 @putchar(i32 noundef %117) #34
  %119 = icmp ult ptr %115, %.lcssa2
  br i1 %119, label %113, label %120, !llvm.loop !125

120:                                              ; preds = %113
  br i1 %112, label %121, label %123

121:                                              ; preds = %120
  %122 = tail call i32 @putchar(i32 noundef 10) #34
  br label %123

123:                                              ; preds = %121, %120, %111
  br label %124

124:                                              ; preds = %124, %123
  %125 = phi ptr [ %126, %124 ], [ %.lcssa2, %123 ]
  %126 = getelementptr inbounds i8, ptr %125, i64 1
  %127 = load i8, ptr %126, align 1, !tbaa !7
  %128 = icmp eq i8 %127, 10
  br i1 %128, label %129, label %124, !llvm.loop !126

129:                                              ; preds = %124
  %.lcssa4 = phi ptr [ %125, %124 ]
  %.lcssa3 = phi ptr [ %126, %124 ]
  %130 = getelementptr inbounds i8, ptr %.lcssa4, i64 2
  br label %136

131:                                              ; preds = %74, %63
  %132 = phi i8 [ %28, %63 ], [ 10, %74 ]
  %133 = phi i32 [ %29, %63 ], [ %72, %74 ]
  %134 = phi ptr [ %31, %63 ], [ %75, %74 ]
  %135 = icmp eq ptr %34, null
  br i1 %135, label %136, label %27, !llvm.loop !127

136:                                              ; preds = %131, %129, %103, %10
  %137 = phi ptr [ %11, %10 ], [ %104, %103 ], [ %.lcssa3, %129 ], [ %134, %131 ]
  %138 = phi ptr [ %12, %10 ], [ %12, %103 ], [ %130, %129 ], [ %12, %131 ]
  %139 = getelementptr inbounds i8, ptr %137, i64 1
  %140 = icmp ugt ptr %139, %5
  br i1 %140, label %141, label %10, !llvm.loop !128

141:                                              ; preds = %136, %3
  %142 = phi ptr [ %8, %3 ], [ %138, %136 ]
  %143 = load i32, ptr @INVERSE, align 4, !tbaa !10
  %144 = icmp eq i32 %143, 0
  %145 = load i32, ptr @COUNT, align 4
  %146 = icmp ne i32 %145, 0
  %147 = select i1 %144, i1 true, i1 %146
  %148 = icmp ugt ptr %142, %5
  %149 = select i1 %147, i1 true, i1 %148
  br i1 %149, label %157, label %150

150:                                              ; preds = %150, %141
  %151 = phi ptr [ %152, %150 ], [ %142, %141 ]
  %152 = getelementptr inbounds i8, ptr %151, i64 1
  %153 = load i8, ptr %151, align 1, !tbaa !7
  %154 = zext i8 %153 to i32
  %155 = tail call i32 @putchar(i32 noundef %154) #34
  %156 = icmp ugt ptr %152, %5
  br i1 %156, label %157, label %150, !llvm.loop !129

157:                                              ; preds = %150, %141, %71, %69
  ret void
}

; Function Attrs: nofree nounwind optsize memory(readwrite, argmem: read) uwtable
define internal void @f_prep(i32 noundef %0, ptr nocapture noundef readonly %1) #20 {
  %3 = load i32, ptr @p_size, align 4, !tbaa !10
  %4 = add nsw i32 %3, -1
  %5 = load i32, ptr @LONG, align 4, !tbaa !10
  %6 = icmp sgt i32 %4, %5
  br i1 %6, label %7, label %44

7:                                                ; preds = %2
  %8 = icmp eq i32 %5, 0
  %9 = sext i32 %3 to i64
  %10 = add nsw i64 %9, -1
  %11 = sext i32 %5 to i64
  %12 = sext i32 %4 to i64
  br label %13

13:                                               ; preds = %42, %7
  %14 = phi i64 [ %10, %7 ], [ %18, %42 ]
  %15 = getelementptr inbounds i8, ptr %1, i64 %14
  %16 = load i8, ptr %15, align 1, !tbaa !7
  %17 = shl i8 %16, 4
  %18 = add nsw i64 %14, -1
  %19 = getelementptr inbounds i8, ptr %1, i64 %18
  %20 = load i8, ptr %19, align 1, !tbaa !7
  %21 = and i8 %20, 15
  %22 = or i8 %21, %17
  %23 = zext i8 %22 to i32
  br i1 %8, label %32, label %24

24:                                               ; preds = %13
  %25 = shl nuw nsw i32 %23, 4
  %26 = add nsw i64 %14, -2
  %27 = getelementptr inbounds i8, ptr %1, i64 %26
  %28 = load i8, ptr %27, align 1, !tbaa !7
  %29 = and i8 %28, 15
  %30 = zext i8 %29 to i32
  %31 = or i32 %25, %30
  br label %32

32:                                               ; preds = %24, %13
  %33 = phi i32 [ %31, %24 ], [ %23, %13 ]
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds [4096 x i8], ptr @SHIFT1, i64 0, i64 %34
  %36 = load i8, ptr %35, align 1, !tbaa !7
  %37 = sub nsw i64 %12, %14
  %38 = zext i8 %36 to i64
  %39 = icmp ugt i64 %37, %38
  br i1 %39, label %42, label %40

40:                                               ; preds = %32
  %41 = trunc i64 %37 to i8
  store i8 %41, ptr %35, align 1, !tbaa !7
  br label %42

42:                                               ; preds = %40, %32
  %43 = icmp sgt i64 %18, %11
  br i1 %43, label %13, label %44, !llvm.loop !130

44:                                               ; preds = %42, %2
  %45 = load i32, ptr @SHORT, align 4, !tbaa !10
  %46 = icmp eq i32 %45, 0
  %47 = select i1 %46, i32 15, i32 255
  %48 = icmp sgt i32 %3, 0
  br i1 %48, label %49, label %68

49:                                               ; preds = %44
  %50 = zext i32 %4 to i64
  br label %51

51:                                               ; preds = %51, %49
  %52 = phi i64 [ %50, %49 ], [ %63, %51 ]
  %53 = phi i32 [ 0, %49 ], [ %62, %51 ]
  %54 = shl i32 %53, 4
  %55 = getelementptr inbounds i8, ptr %1, i64 %52
  %56 = load i8, ptr %55, align 1, !tbaa !7
  %57 = zext i8 %56 to i64
  %58 = getelementptr inbounds [256 x i8], ptr @tr, i64 0, i64 %57
  %59 = load i8, ptr %58, align 1, !tbaa !7
  %60 = zext i8 %59 to i32
  %61 = and i32 %47, %60
  %62 = add i32 %61, %54
  %63 = add nsw i64 %52, -1
  %64 = icmp eq i64 %52, 0
  br i1 %64, label %65, label %51, !llvm.loop !131

65:                                               ; preds = %51
  %.lcssa = phi i32 [ %62, %51 ]
  %66 = and i32 %.lcssa, 8191
  %67 = zext i32 %66 to i64
  br label %68

68:                                               ; preds = %65, %44
  %69 = phi i64 [ 0, %44 ], [ %67, %65 ]
  %70 = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #39
  store ptr %70, ptr @qt, align 8, !tbaa !45
  store i32 %0, ptr %70, align 8, !tbaa !117
  %71 = getelementptr inbounds [8192 x ptr], ptr @HASH, i64 0, i64 %69
  %72 = load ptr, ptr %71, align 8, !tbaa !45
  store ptr %72, ptr @pt, align 8, !tbaa !45
  %73 = getelementptr inbounds %struct.pnode, ptr %70, i64 0, i32 1
  store ptr %72, ptr %73, align 8, !tbaa !119
  store ptr %70, ptr %71, align 8, !tbaa !45
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @prepf(i32 noundef %0) #0 {
  br label %2

2:                                                ; preds = %9, %1
  %3 = phi i32 [ 0, %1 ], [ %10, %9 ]
  %4 = sext i32 %3 to i64
  %5 = getelementptr inbounds i8, ptr @buf, i64 %4
  %6 = tail call i64 @read(i32 noundef %0, ptr noundef nonnull %5, i64 noundef 8192) #33
  %7 = trunc i64 %6 to i32
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %2
  %10 = add nsw i32 %3, %7
  %11 = icmp sgt i32 %10, 260000
  br i1 %11, label %12, label %2, !llvm.loop !132

12:                                               ; preds = %9
  %13 = load ptr, ptr @stderr, align 8, !tbaa !45
  %14 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %13, ptr noundef nonnull @.str.2.80, ptr noundef nonnull @Progname, i32 noundef 260000) #35
  tail call void @exit(i32 noundef 2) #36
  unreachable

15:                                               ; preds = %2
  %.lcssa8 = phi i32 [ %3, %2 ]
  %.lcssa6 = phi ptr [ %5, %2 ]
  store i8 10, ptr %.lcssa6, align 1, !tbaa !7
  %16 = icmp sgt i32 %.lcssa8, 0
  br i1 %16, label %17, label %63

17:                                               ; preds = %55, %15
  %18 = phi i64 [ %58, %55 ], [ 1, %15 ]
  %19 = phi i64 [ %.lcssa2, %55 ], [ 0, %15 ]
  %20 = phi ptr [ %57, %55 ], [ @pat_spool, %15 ]
  %21 = getelementptr inbounds [30000 x ptr], ptr @patt, i64 0, i64 %18
  store ptr %20, ptr %21, align 8, !tbaa !45
  %22 = load i32, ptr @WORDBOUND, align 4, !tbaa !10
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %17
  %25 = getelementptr inbounds i8, ptr %20, i64 1
  store i8 -128, ptr %20, align 1, !tbaa !7
  br label %26

26:                                               ; preds = %24, %17
  %27 = phi ptr [ %25, %24 ], [ %20, %17 ]
  %28 = load i32, ptr @WHOLELINE, align 4, !tbaa !10
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds i8, ptr %27, i64 1
  store i8 10, ptr %27, align 1, !tbaa !7
  br label %32

32:                                               ; preds = %30, %26
  %33 = phi ptr [ %31, %30 ], [ %27, %26 ]
  %34 = shl i64 %19, 32
  %35 = ashr exact i64 %34, 32
  br label %36

36:                                               ; preds = %36, %32
  %37 = phi i64 [ %39, %36 ], [ %35, %32 ]
  %38 = phi ptr [ %43, %36 ], [ %33, %32 ]
  %39 = add i64 %37, 1
  %40 = getelementptr inbounds [268192 x i8], ptr @buf, i64 0, i64 %37
  %41 = load i8, ptr %40, align 1, !tbaa !7
  store i8 %41, ptr %38, align 1, !tbaa !7
  %42 = icmp eq i8 %41, 10
  %43 = getelementptr inbounds i8, ptr %38, i64 1
  br i1 %42, label %44, label %36, !llvm.loop !133

44:                                               ; preds = %36
  %.lcssa3 = phi ptr [ %38, %36 ]
  %.lcssa2 = phi i64 [ %39, %36 ]
  %.lcssa1 = phi ptr [ %43, %36 ]
  %45 = trunc i64 %.lcssa2 to i32
  %46 = load i32, ptr @WORDBOUND, align 4, !tbaa !10
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %44
  store i8 -128, ptr %.lcssa3, align 1, !tbaa !7
  br label %49

49:                                               ; preds = %48, %44
  %50 = phi ptr [ %.lcssa1, %48 ], [ %.lcssa3, %44 ]
  %51 = load i32, ptr @WHOLELINE, align 4, !tbaa !10
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %49
  %54 = getelementptr inbounds i8, ptr %50, i64 1
  store i8 10, ptr %50, align 1, !tbaa !7
  br label %55

55:                                               ; preds = %53, %49
  %56 = phi ptr [ %54, %53 ], [ %50, %49 ]
  %57 = getelementptr inbounds i8, ptr %56, i64 1
  store i8 0, ptr %56, align 1, !tbaa !7
  %58 = add nuw i64 %18, 1
  %59 = icmp sgt i32 %.lcssa8, %45
  br i1 %59, label %17, label %60, !llvm.loop !134

60:                                               ; preds = %55
  %.lcssa5 = phi ptr [ %57, %55 ]
  %.lcssa4 = phi i64 [ %58, %55 ]
  %61 = trunc i64 %.lcssa4 to i32
  %62 = icmp ugt i32 %61, 30000
  br i1 %62, label %73, label %63

63:                                               ; preds = %60, %15
  %64 = phi ptr [ %.lcssa5, %60 ], [ @pat_spool, %15 ]
  %65 = phi i32 [ %61, %60 ], [ 1, %15 ]
  store i8 19, ptr %64, align 1, !tbaa !7
  br label %66

66:                                               ; preds = %66, %63
  %67 = phi i64 [ 0, %63 ], [ %70, %66 ]
  %68 = phi <16 x i8> [ <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15>, %63 ], [ %71, %66 ]
  %69 = getelementptr inbounds [256 x i8], ptr @tr, i64 0, i64 %67
  store <16 x i8> %68, ptr %69, align 16, !tbaa !7
  %70 = add nuw i64 %67, 16
  %71 = add <16 x i8> %68, <i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16>
  %72 = icmp eq i64 %70, 256
  br i1 %72, label %76, label %66, !llvm.loop !135

73:                                               ; preds = %60
  %74 = load ptr, ptr @stderr, align 8, !tbaa !45
  %75 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %74, ptr noundef nonnull @.str.3.81, ptr noundef nonnull @Progname, i32 noundef 30000) #35
  tail call void @exit(i32 noundef 2) #36
  unreachable

76:                                               ; preds = %66
  %77 = load i32, ptr @NOUPPER, align 4, !tbaa !10
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %184, label %79

79:                                               ; preds = %181, %76
  %80 = phi i64 [ %182, %181 ], [ 0, %76 ]
  %81 = trunc i64 %80 to i8
  %82 = insertelement <16 x i64> poison, i64 %80, i64 0
  %83 = shufflevector <16 x i64> %82, <16 x i64> poison, <16 x i32> zeroinitializer
  %84 = or <16 x i64> %83, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>
  %85 = icmp ult <16 x i64> %84, <i64 26, i64 26, i64 26, i64 26, i64 26, i64 26, i64 26, i64 26, i64 26, i64 26, i64 26, i64 26, i64 26, i64 26, i64 26, i64 26>
  %86 = extractelement <16 x i1> %85, i64 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %79
  %88 = add i64 %80, 65
  %89 = getelementptr inbounds [256 x i8], ptr @tr, i64 0, i64 %88
  %90 = add i8 %81, 97
  store i8 %90, ptr %89, align 1, !tbaa !7
  br label %91

91:                                               ; preds = %87, %79
  %92 = extractelement <16 x i1> %85, i64 1
  br i1 %92, label %93, label %97

93:                                               ; preds = %91
  %94 = add i64 %80, 66
  %95 = getelementptr inbounds [256 x i8], ptr @tr, i64 0, i64 %94
  %96 = add i8 %81, 98
  store i8 %96, ptr %95, align 2, !tbaa !7
  br label %97

97:                                               ; preds = %93, %91
  %98 = extractelement <16 x i1> %85, i64 2
  br i1 %98, label %99, label %103

99:                                               ; preds = %97
  %100 = add i64 %80, 67
  %101 = getelementptr inbounds [256 x i8], ptr @tr, i64 0, i64 %100
  %102 = add i8 %81, 99
  store i8 %102, ptr %101, align 1, !tbaa !7
  br label %103

103:                                              ; preds = %99, %97
  %104 = extractelement <16 x i1> %85, i64 3
  br i1 %104, label %105, label %109

105:                                              ; preds = %103
  %106 = add i64 %80, 68
  %107 = getelementptr inbounds [256 x i8], ptr @tr, i64 0, i64 %106
  %108 = add i8 %81, 100
  store i8 %108, ptr %107, align 4, !tbaa !7
  br label %109

109:                                              ; preds = %105, %103
  %110 = extractelement <16 x i1> %85, i64 4
  br i1 %110, label %111, label %115

111:                                              ; preds = %109
  %112 = add i64 %80, 69
  %113 = getelementptr inbounds [256 x i8], ptr @tr, i64 0, i64 %112
  %114 = add i8 %81, 101
  store i8 %114, ptr %113, align 1, !tbaa !7
  br label %115

115:                                              ; preds = %111, %109
  %116 = extractelement <16 x i1> %85, i64 5
  br i1 %116, label %117, label %121

117:                                              ; preds = %115
  %118 = add i64 %80, 70
  %119 = getelementptr inbounds [256 x i8], ptr @tr, i64 0, i64 %118
  %120 = add i8 %81, 102
  store i8 %120, ptr %119, align 2, !tbaa !7
  br label %121

121:                                              ; preds = %117, %115
  %122 = extractelement <16 x i1> %85, i64 6
  br i1 %122, label %123, label %127

123:                                              ; preds = %121
  %124 = add i64 %80, 71
  %125 = getelementptr inbounds [256 x i8], ptr @tr, i64 0, i64 %124
  %126 = add i8 %81, 103
  store i8 %126, ptr %125, align 1, !tbaa !7
  br label %127

127:                                              ; preds = %123, %121
  %128 = extractelement <16 x i1> %85, i64 7
  br i1 %128, label %129, label %133

129:                                              ; preds = %127
  %130 = add i64 %80, 72
  %131 = getelementptr inbounds [256 x i8], ptr @tr, i64 0, i64 %130
  %132 = add i8 %81, 104
  store i8 %132, ptr %131, align 8, !tbaa !7
  br label %133

133:                                              ; preds = %129, %127
  %134 = extractelement <16 x i1> %85, i64 8
  br i1 %134, label %135, label %139

135:                                              ; preds = %133
  %136 = add i64 %80, 73
  %137 = getelementptr inbounds [256 x i8], ptr @tr, i64 0, i64 %136
  %138 = add i8 %81, 105
  store i8 %138, ptr %137, align 1, !tbaa !7
  br label %139

139:                                              ; preds = %135, %133
  %140 = extractelement <16 x i1> %85, i64 9
  br i1 %140, label %141, label %145

141:                                              ; preds = %139
  %142 = add i64 %80, 74
  %143 = getelementptr inbounds [256 x i8], ptr @tr, i64 0, i64 %142
  %144 = add i8 %81, 106
  store i8 %144, ptr %143, align 2, !tbaa !7
  br label %145

145:                                              ; preds = %141, %139
  %146 = extractelement <16 x i1> %85, i64 10
  br i1 %146, label %147, label %151

147:                                              ; preds = %145
  %148 = add i64 %80, 75
  %149 = getelementptr inbounds [256 x i8], ptr @tr, i64 0, i64 %148
  %150 = add i8 %81, 107
  store i8 %150, ptr %149, align 1, !tbaa !7
  br label %151

151:                                              ; preds = %147, %145
  %152 = extractelement <16 x i1> %85, i64 11
  br i1 %152, label %153, label %157

153:                                              ; preds = %151
  %154 = add i64 %80, 76
  %155 = getelementptr inbounds [256 x i8], ptr @tr, i64 0, i64 %154
  %156 = add i8 %81, 108
  store i8 %156, ptr %155, align 4, !tbaa !7
  br label %157

157:                                              ; preds = %153, %151
  %158 = extractelement <16 x i1> %85, i64 12
  br i1 %158, label %159, label %163

159:                                              ; preds = %157
  %160 = add i64 %80, 77
  %161 = getelementptr inbounds [256 x i8], ptr @tr, i64 0, i64 %160
  %162 = add i8 %81, 109
  store i8 %162, ptr %161, align 1, !tbaa !7
  br label %163

163:                                              ; preds = %159, %157
  %164 = extractelement <16 x i1> %85, i64 13
  br i1 %164, label %165, label %169

165:                                              ; preds = %163
  %166 = add i64 %80, 78
  %167 = getelementptr inbounds [256 x i8], ptr @tr, i64 0, i64 %166
  %168 = add i8 %81, 110
  store i8 %168, ptr %167, align 2, !tbaa !7
  br label %169

169:                                              ; preds = %165, %163
  %170 = extractelement <16 x i1> %85, i64 14
  br i1 %170, label %171, label %175

171:                                              ; preds = %169
  %172 = add i64 %80, 79
  %173 = getelementptr inbounds [256 x i8], ptr @tr, i64 0, i64 %172
  %174 = add i8 %81, 111
  store i8 %174, ptr %173, align 1, !tbaa !7
  br label %175

175:                                              ; preds = %171, %169
  %176 = extractelement <16 x i1> %85, i64 15
  br i1 %176, label %177, label %181

177:                                              ; preds = %175
  %178 = add i64 %80, 80
  %179 = getelementptr inbounds [256 x i8], ptr @tr, i64 0, i64 %178
  %180 = add i8 %81, 112
  store i8 %180, ptr %179, align 16, !tbaa !7
  br label %181

181:                                              ; preds = %177, %175
  %182 = add i64 %80, 16
  %183 = icmp eq i64 %182, 32
  br i1 %183, label %184, label %79, !llvm.loop !136

184:                                              ; preds = %181, %76
  %185 = load i32, ptr @WORDBOUND, align 4, !tbaa !10
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %201, label %187

187:                                              ; preds = %184
  %188 = tail call ptr @__ctype_b_loc() #37
  br label %189

189:                                              ; preds = %198, %187
  %190 = phi i64 [ 0, %187 ], [ %199, %198 ]
  %191 = load ptr, ptr %188, align 8, !tbaa !45
  %192 = getelementptr inbounds i16, ptr %191, i64 %190
  %193 = load i16, ptr %192, align 2, !tbaa !62
  %194 = and i16 %193, 8
  %195 = icmp eq i16 %194, 0
  br i1 %195, label %196, label %198

196:                                              ; preds = %189
  %197 = getelementptr inbounds [256 x i8], ptr @tr, i64 0, i64 %190
  store i8 -128, ptr %197, align 1, !tbaa !7
  br label %198

198:                                              ; preds = %196, %189
  %199 = add nuw nsw i64 %190, 1
  %200 = icmp eq i64 %199, 128
  br i1 %200, label %201, label %189, !llvm.loop !137

201:                                              ; preds = %198, %184
  br label %202

202:                                              ; preds = %202, %201
  %203 = phi i64 [ %208, %202 ], [ 0, %201 ]
  %204 = getelementptr inbounds [256 x i8], ptr @tr, i64 0, i64 %203
  %205 = load <16 x i8>, ptr %204, align 16, !tbaa !7
  %206 = and <16 x i8> %205, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>
  %207 = getelementptr inbounds [256 x i8], ptr @tr1, i64 0, i64 %203
  store <16 x i8> %206, ptr %207, align 16, !tbaa !7
  %208 = add nuw i64 %203, 16
  %209 = icmp eq i64 %208, 256
  br i1 %209, label %210, label %202, !llvm.loop !138

210:                                              ; preds = %202
  store i32 256, ptr @p_size, align 4, !tbaa !10
  %211 = icmp ugt i32 %65, 1
  br i1 %211, label %212, label %240

212:                                              ; preds = %210
  %213 = zext i32 %65 to i64
  br label %214

214:                                              ; preds = %227, %212
  %215 = phi i64 [ 1, %212 ], [ %229, %227 ]
  %216 = phi i32 [ 256, %212 ], [ %228, %227 ]
  %217 = getelementptr inbounds [30000 x ptr], ptr @patt, i64 0, i64 %215
  %218 = load ptr, ptr %217, align 8, !tbaa !45
  %219 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %218) #32
  %220 = trunc i64 %219 to i32
  %221 = trunc i64 %219 to i8
  %222 = getelementptr inbounds [30000 x i8], ptr @pat_len, i64 0, i64 %215
  store i8 %221, ptr %222, align 1, !tbaa !7
  %223 = icmp ne i32 %220, 0
  %224 = icmp sgt i32 %216, %220
  %225 = select i1 %223, i1 %224, i1 false
  br i1 %225, label %226, label %227

226:                                              ; preds = %214
  store i32 %220, ptr @p_size, align 4, !tbaa !10
  br label %227

227:                                              ; preds = %226, %214
  %228 = phi i32 [ %216, %214 ], [ %220, %226 ]
  %229 = add nuw nsw i64 %215, 1
  %230 = icmp eq i64 %229, %213
  br i1 %230, label %231, label %214, !llvm.loop !139

231:                                              ; preds = %227
  %.lcssa = phi i32 [ %228, %227 ]
  %232 = icmp eq i32 %.lcssa, 0
  br i1 %232, label %233, label %236

233:                                              ; preds = %231
  %234 = load ptr, ptr @stderr, align 8, !tbaa !45
  %235 = tail call i64 @fwrite(ptr nonnull @.str.4.82, i64 26, i64 1, ptr %234) #38
  tail call void @exit(i32 noundef 2) #36
  unreachable

236:                                              ; preds = %231
  %237 = icmp sgt i32 %.lcssa8, 400
  %238 = icmp sgt i32 %.lcssa, 2
  %239 = and i1 %237, %238
  br i1 %239, label %245, label %243

240:                                              ; preds = %210
  %241 = icmp sgt i32 %.lcssa8, 400
  br i1 %241, label %245, label %242

242:                                              ; preds = %240
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) @SHIFT1, i8 -2, i64 4096, i1 false), !tbaa !7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(65536) @HASH, i8 0, i64 65536, i1 false), !tbaa !45
  br label %261

243:                                              ; preds = %236
  %244 = icmp eq i32 %.lcssa, 1
  br i1 %244, label %245, label %248

245:                                              ; preds = %243, %240, %236
  %246 = phi ptr [ @LONG, %240 ], [ @LONG, %236 ], [ @SHORT, %243 ]
  %247 = phi i32 [ 256, %240 ], [ %.lcssa, %236 ], [ 1, %243 ]
  store i32 1, ptr %246, align 4, !tbaa !10
  br label %248

248:                                              ; preds = %245, %243
  %249 = phi i32 [ %.lcssa, %243 ], [ %247, %245 ]
  %250 = trunc i32 %249 to i8
  %251 = add i8 %250, -2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) @SHIFT1, i8 %251, i64 4096, i1 false), !tbaa !7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(65536) @HASH, i8 0, i64 65536, i1 false), !tbaa !45
  br i1 %211, label %252, label %261

252:                                              ; preds = %248
  %253 = zext i32 %65 to i64
  br label %254

254:                                              ; preds = %254, %252
  %255 = phi i64 [ 1, %252 ], [ %259, %254 ]
  %256 = getelementptr inbounds [30000 x ptr], ptr @patt, i64 0, i64 %255
  %257 = load ptr, ptr %256, align 8, !tbaa !45
  %258 = trunc i64 %255 to i32
  tail call void @f_prep(i32 noundef %258, ptr noundef %257) #34
  %259 = add nuw nsw i64 %255, 1
  %260 = icmp eq i64 %259, %253
  br i1 %260, label %261, label %254, !llvm.loop !140

261:                                              ; preds = %254, %248, %242
  ret void
}

; Function Attrs: nofree nounwind optsize uwtable
define internal void @monkey1(ptr noundef readonly %0, i32 noundef %1, i32 noundef %2) #9 {
  %4 = load i32, ptr @p_size, align 4, !tbaa !10
  %5 = sext i32 %2 to i64
  %6 = getelementptr inbounds i8, ptr %0, i64 %5
  %7 = add nsw i32 %4, -1
  %8 = sext i32 %1 to i64
  %9 = getelementptr inbounds i8, ptr %0, i64 %8
  %10 = getelementptr inbounds i8, ptr %9, i64 1
  %11 = sext i32 %7 to i64
  %12 = getelementptr inbounds i8, ptr %9, i64 %11
  %13 = icmp ugt ptr %12, %6
  br i1 %13, label %200, label %14

14:                                               ; preds = %3
  %15 = load i32, ptr @LONG, align 4, !tbaa !10
  %16 = icmp eq i32 %15, 0
  %17 = sub nsw i64 0, %11
  %18 = trunc i32 %7 to i8
  %19 = tail call i32 @llvm.umax.i32(i32 %4, i32 1)
  %20 = zext i32 %19 to i64
  br label %21

21:                                               ; preds = %193, %14
  %22 = phi ptr [ %10, %14 ], [ %196, %193 ]
  %23 = phi ptr [ %12, %14 ], [ %198, %193 ]
  %24 = load i8, ptr %23, align 1, !tbaa !7
  %25 = zext i8 %24 to i64
  %26 = getelementptr inbounds [256 x i8], ptr @tr1, i64 0, i64 %25
  %27 = load i8, ptr %26, align 1, !tbaa !7
  %28 = zext i8 %27 to i32
  %29 = shl nuw nsw i32 %28, 4
  %30 = getelementptr inbounds i8, ptr %23, i64 -1
  %31 = load i8, ptr %30, align 1, !tbaa !7
  %32 = zext i8 %31 to i64
  %33 = getelementptr inbounds [256 x i8], ptr @tr1, i64 0, i64 %32
  %34 = load i8, ptr %33, align 1, !tbaa !7
  %35 = zext i8 %34 to i32
  %36 = add nuw nsw i32 %29, %35
  br i1 %16, label %46, label %37

37:                                               ; preds = %21
  %38 = shl nuw nsw i32 %36, 4
  %39 = getelementptr inbounds i8, ptr %23, i64 -2
  %40 = load i8, ptr %39, align 1, !tbaa !7
  %41 = zext i8 %40 to i64
  %42 = getelementptr inbounds [256 x i8], ptr @tr1, i64 0, i64 %41
  %43 = load i8, ptr %42, align 1, !tbaa !7
  %44 = zext i8 %43 to i32
  %45 = add nuw nsw i32 %38, %44
  br label %46

46:                                               ; preds = %37, %21
  %47 = phi i32 [ %45, %37 ], [ %36, %21 ]
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds [4096 x i8], ptr @SHIFT1, i64 0, i64 %48
  %50 = load i8, ptr %49, align 1, !tbaa !7
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %52, label %193

52:                                               ; preds = %52, %46
  %53 = phi i64 [ %64, %52 ], [ 0, %46 ]
  %54 = phi i32 [ %63, %52 ], [ 0, %46 ]
  %55 = shl i32 %54, 4
  %56 = sub nsw i64 0, %53
  %57 = getelementptr inbounds i8, ptr %23, i64 %56
  %58 = load i8, ptr %57, align 1, !tbaa !7
  %59 = zext i8 %58 to i64
  %60 = getelementptr inbounds [256 x i8], ptr @tr1, i64 0, i64 %59
  %61 = load i8, ptr %60, align 1, !tbaa !7
  %62 = zext i8 %61 to i32
  %63 = add i32 %55, %62
  %64 = add nuw nsw i64 %53, 1
  %65 = icmp eq i64 %64, %20
  br i1 %65, label %66, label %52, !llvm.loop !141

66:                                               ; preds = %52
  %.lcssa = phi i32 [ %63, %52 ]
  %67 = and i32 %.lcssa, 8191
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds [8192 x ptr], ptr @HASH, i64 0, i64 %68
  %70 = load ptr, ptr %69, align 8, !tbaa !45
  %71 = icmp eq ptr %70, null
  br i1 %71, label %193, label %72

72:                                               ; preds = %66
  %73 = getelementptr inbounds i8, ptr %23, i64 %17
  %74 = load i8, ptr %73, align 1, !tbaa !7
  %75 = zext i8 %74 to i64
  %76 = getelementptr inbounds [256 x i8], ptr @tr, i64 0, i64 %75
  %77 = load i8, ptr %76, align 1, !tbaa !7
  br label %78

78:                                               ; preds = %191, %72
  %79 = phi ptr [ %82, %191 ], [ %70, %72 ]
  %80 = load i32, ptr %79, align 8, !tbaa !117
  %81 = getelementptr inbounds %struct.pnode, ptr %79, i64 0, i32 1
  %82 = load ptr, ptr %81, align 8, !tbaa !119
  %83 = sext i32 %80 to i64
  %84 = getelementptr inbounds [30000 x ptr], ptr @patt, i64 0, i64 %83
  %85 = load ptr, ptr %84, align 8, !tbaa !45
  %86 = load i8, ptr %85, align 1, !tbaa !7
  %87 = zext i8 %86 to i64
  %88 = getelementptr inbounds [256 x i8], ptr @tr, i64 0, i64 %87
  %89 = load i8, ptr %88, align 1, !tbaa !7
  %90 = icmp eq i8 %89, %77
  br i1 %90, label %91, label %108

91:                                               ; preds = %91, %78
  %92 = phi i64 [ %95, %91 ], [ 0, %78 ]
  %93 = phi ptr [ %94, %91 ], [ %73, %78 ]
  %94 = getelementptr inbounds i8, ptr %93, i64 1
  %95 = add nuw nsw i64 %92, 1
  %96 = getelementptr inbounds i8, ptr %85, i64 %95
  %97 = load i8, ptr %96, align 1, !tbaa !7
  %98 = zext i8 %97 to i64
  %99 = getelementptr inbounds [256 x i8], ptr @tr, i64 0, i64 %98
  %100 = load i8, ptr %99, align 1, !tbaa !7
  %101 = load i8, ptr %94, align 1, !tbaa !7
  %102 = zext i8 %101 to i64
  %103 = getelementptr inbounds [256 x i8], ptr @tr, i64 0, i64 %102
  %104 = load i8, ptr %103, align 1, !tbaa !7
  %105 = icmp eq i8 %100, %104
  br i1 %105, label %91, label %106, !llvm.loop !142

106:                                              ; preds = %91
  %.lcssa1 = phi i64 [ %95, %91 ]
  %107 = trunc i64 %.lcssa1 to i32
  br label %108

108:                                              ; preds = %106, %78
  %109 = phi i32 [ 0, %78 ], [ %107, %106 ]
  %110 = icmp slt i32 %109, %4
  br i1 %110, label %191, label %111

111:                                              ; preds = %108
  %112 = getelementptr inbounds [30000 x i8], ptr @pat_len, i64 0, i64 %83
  %113 = load i8, ptr %112, align 1, !tbaa !7
  %114 = zext i8 %113 to i32
  %115 = icmp ult i32 %109, %114
  br i1 %115, label %191, label %116

116:                                              ; preds = %111
  %117 = icmp ugt ptr %23, %6
  br i1 %117, label %216, label %118

118:                                              ; preds = %116
  %119 = load i32, ptr @num_of_matched, align 4, !tbaa !10
  %120 = add nsw i32 %119, 1
  store i32 %120, ptr @num_of_matched, align 4, !tbaa !10
  %121 = load i32, ptr @FILENAMEONLY, align 4, !tbaa !10
  %122 = icmp ne i32 %121, 0
  %123 = load i32, ptr @SILENT, align 4
  %124 = icmp ne i32 %123, 0
  %125 = select i1 %122, i1 true, i1 %124
  br i1 %125, label %216, label %126

126:                                              ; preds = %118
  %127 = load i32, ptr @COUNT, align 4, !tbaa !10
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %134, label %129

129:                                              ; preds = %129, %126
  %130 = phi ptr [ %133, %129 ], [ %23, %126 ]
  %131 = load i8, ptr %130, align 1, !tbaa !7
  %132 = icmp eq i8 %131, 10
  %133 = getelementptr inbounds i8, ptr %130, i64 1
  br i1 %132, label %193, label %129, !llvm.loop !143

134:                                              ; preds = %126
  %135 = load i32, ptr @INVERSE, align 4, !tbaa !10
  %136 = icmp eq i32 %135, 0
  %137 = load i32, ptr @FNAME, align 4, !tbaa !10
  %138 = icmp eq i32 %137, 0
  br i1 %136, label %139, label %162

139:                                              ; preds = %134
  br i1 %138, label %142, label %140

140:                                              ; preds = %139
  %141 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.77, ptr noundef nonnull @CurrentFileName) #34
  br label %142

142:                                              ; preds = %140, %139
  br label %143

143:                                              ; preds = %143, %142
  %144 = phi ptr [ %145, %143 ], [ %23, %142 ]
  %145 = getelementptr inbounds i8, ptr %144, i64 -1
  %146 = load i8, ptr %145, align 1, !tbaa !7
  %147 = icmp eq i8 %146, 10
  br i1 %147, label %148, label %143, !llvm.loop !144

148:                                              ; preds = %143
  %.lcssa5 = phi ptr [ %144, %143 ]
  %149 = load i8, ptr %.lcssa5, align 1, !tbaa !7
  %150 = icmp eq i8 %149, 10
  br i1 %150, label %159, label %151

151:                                              ; preds = %151, %148
  %152 = phi i8 [ %157, %151 ], [ %149, %148 ]
  %153 = phi ptr [ %156, %151 ], [ %.lcssa5, %148 ]
  %154 = zext i8 %152 to i32
  %155 = tail call i32 @putchar(i32 noundef %154) #34
  %156 = getelementptr inbounds i8, ptr %153, i64 1
  %157 = load i8, ptr %156, align 1, !tbaa !7
  %158 = icmp eq i8 %157, 10
  br i1 %158, label %159, label %151, !llvm.loop !145

159:                                              ; preds = %151, %148
  %160 = phi ptr [ %.lcssa5, %148 ], [ %156, %151 ]
  %161 = tail call i32 @putchar(i32 10)
  br label %193

162:                                              ; preds = %134
  br i1 %138, label %165, label %163

163:                                              ; preds = %162
  %164 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.77, ptr noundef nonnull @CurrentFileName) #34
  br label %165

165:                                              ; preds = %163, %162
  br label %166

166:                                              ; preds = %166, %165
  %167 = phi ptr [ %168, %166 ], [ %23, %165 ]
  %168 = getelementptr inbounds i8, ptr %167, i64 -1
  %169 = load i8, ptr %168, align 1, !tbaa !7
  %170 = icmp eq i8 %169, 10
  br i1 %170, label %171, label %166, !llvm.loop !146

171:                                              ; preds = %166
  %.lcssa2 = phi ptr [ %168, %166 ]
  %172 = icmp ult ptr %22, %.lcssa2
  br i1 %172, label %173, label %183

173:                                              ; preds = %173, %171
  %174 = phi ptr [ %175, %173 ], [ %22, %171 ]
  %175 = getelementptr inbounds i8, ptr %174, i64 1
  %176 = load i8, ptr %174, align 1, !tbaa !7
  %177 = zext i8 %176 to i32
  %178 = tail call i32 @putchar(i32 noundef %177) #34
  %179 = icmp ult ptr %175, %.lcssa2
  br i1 %179, label %173, label %180, !llvm.loop !147

180:                                              ; preds = %173
  br i1 %172, label %181, label %183

181:                                              ; preds = %180
  %182 = tail call i32 @putchar(i32 noundef 10) #34
  br label %183

183:                                              ; preds = %181, %180, %171
  br label %184

184:                                              ; preds = %184, %183
  %185 = phi ptr [ %186, %184 ], [ %.lcssa2, %183 ]
  %186 = getelementptr inbounds i8, ptr %185, i64 1
  %187 = load i8, ptr %186, align 1, !tbaa !7
  %188 = icmp eq i8 %187, 10
  br i1 %188, label %189, label %184, !llvm.loop !148

189:                                              ; preds = %184
  %.lcssa4 = phi ptr [ %185, %184 ]
  %.lcssa3 = phi ptr [ %186, %184 ]
  %190 = getelementptr inbounds i8, ptr %.lcssa4, i64 2
  br label %193

191:                                              ; preds = %111, %108
  %192 = icmp eq ptr %82, null
  br i1 %192, label %193, label %78, !llvm.loop !149

193:                                              ; preds = %191, %189, %159, %129, %66, %46
  %194 = phi i8 [ %50, %46 ], [ 1, %66 ], [ %18, %189 ], [ %18, %159 ], [ %18, %129 ], [ 1, %191 ]
  %195 = phi ptr [ %23, %46 ], [ %23, %66 ], [ %.lcssa3, %189 ], [ %160, %159 ], [ %130, %129 ], [ %23, %191 ]
  %196 = phi ptr [ %22, %46 ], [ %22, %66 ], [ %190, %189 ], [ %22, %159 ], [ %22, %129 ], [ %22, %191 ]
  %197 = zext i8 %194 to i64
  %198 = getelementptr inbounds i8, ptr %195, i64 %197
  %199 = icmp ugt ptr %198, %6
  br i1 %199, label %200, label %21, !llvm.loop !150

200:                                              ; preds = %193, %3
  %201 = phi ptr [ %10, %3 ], [ %196, %193 ]
  %202 = load i32, ptr @INVERSE, align 4, !tbaa !10
  %203 = icmp eq i32 %202, 0
  %204 = load i32, ptr @COUNT, align 4
  %205 = icmp ne i32 %204, 0
  %206 = select i1 %203, i1 true, i1 %205
  %207 = icmp ugt ptr %201, %6
  %208 = select i1 %206, i1 true, i1 %207
  br i1 %208, label %216, label %209

209:                                              ; preds = %209, %200
  %210 = phi ptr [ %211, %209 ], [ %201, %200 ]
  %211 = getelementptr inbounds i8, ptr %210, i64 1
  %212 = load i8, ptr %210, align 1, !tbaa !7
  %213 = zext i8 %212 to i32
  %214 = tail call i32 @putchar(i32 noundef %213) #34
  %215 = icmp ugt ptr %211, %6
  br i1 %215, label %216, label %209, !llvm.loop !151

216:                                              ; preds = %209, %200, %118, %116
  ret void
}

; Function Attrs: nofree nounwind optsize uwtable
define internal void @mgrep(i32 noundef %0) #9 {
  %2 = alloca [17408 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 17408, ptr nonnull %2) #31
  %3 = getelementptr inbounds [17408 x i8], ptr %2, i64 0, i64 1023
  store i8 10, ptr %3, align 1, !tbaa !7
  %4 = getelementptr inbounds i8, ptr %2, i64 1024
  br label %5

5:                                                ; preds = %64, %1
  %6 = phi i32 [ 1023, %1 ], [ %67, %64 ]
  %7 = phi i32 [ undef, %1 ], [ %46, %64 ]
  %8 = phi i32 [ 0, %1 ], [ %48, %64 ]
  %9 = call i64 @read(i32 noundef %0, ptr noundef nonnull %4, i64 noundef 8192) #33
  %10 = trunc i64 %9 to i32
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %72

12:                                               ; preds = %5
  %13 = load i32, ptr @INVERSE, align 4, !tbaa !10
  %14 = icmp ne i32 %13, 0
  %15 = load i32, ptr @COUNT, align 4
  %16 = icmp ne i32 %15, 0
  %17 = select i1 %14, i1 %16, i1 false
  br i1 %17, label %18, label %33

18:                                               ; preds = %12
  %19 = load i32, ptr @total_line, align 4, !tbaa !10
  %20 = and i64 %9, 4294967295
  br label %21

21:                                               ; preds = %29, %18
  %22 = phi i64 [ 0, %18 ], [ %31, %29 ]
  %23 = phi i32 [ %19, %18 ], [ %30, %29 ]
  %24 = getelementptr inbounds i8, ptr %4, i64 %22
  %25 = load i8, ptr %24, align 1, !tbaa !7
  %26 = icmp eq i8 %25, 10
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = add nsw i32 %23, 1
  store i32 %28, ptr @total_line, align 4, !tbaa !10
  br label %29

29:                                               ; preds = %27, %21
  %30 = phi i32 [ %23, %21 ], [ %28, %27 ]
  %31 = add nuw nsw i64 %22, 1
  %32 = icmp eq i64 %31, %20
  br i1 %32, label %33, label %21, !llvm.loop !152

33:                                               ; preds = %29, %12
  %34 = add i32 %10, 1023
  %35 = sext i32 %34 to i64
  br label %36

36:                                               ; preds = %36, %33
  %37 = phi i64 [ %43, %36 ], [ %35, %33 ]
  %38 = getelementptr inbounds [17408 x i8], ptr %2, i64 0, i64 %37
  %39 = load i8, ptr %38, align 1, !tbaa !7
  %40 = icmp ne i8 %39, 10
  %41 = icmp sgt i64 %37, 1024
  %42 = and i1 %41, %40
  %43 = add nsw i64 %37, -1
  br i1 %42, label %36, label %44, !llvm.loop !153

44:                                               ; preds = %36
  %.lcssa = phi i64 [ %37, %36 ]
  %45 = getelementptr inbounds [17408 x i8], ptr %2, i64 0, i64 %.lcssa
  %46 = trunc i64 %.lcssa to i32
  %47 = sub nsw i32 %34, %46
  %48 = add nsw i32 %47, 1
  %49 = add nsw i32 %6, -1
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [17408 x i8], ptr %2, i64 0, i64 %50
  store i8 10, ptr %51, align 1, !tbaa !7
  %52 = load i32, ptr @SHORT, align 4, !tbaa !10
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %44
  call void @m_short(ptr noundef nonnull %2, i32 noundef %6, i32 noundef %46) #34
  br label %56

55:                                               ; preds = %44
  call void @monkey1(ptr noundef nonnull %2, i32 noundef %6, i32 noundef %46) #34
  br label %56

56:                                               ; preds = %55, %54
  %57 = load i32, ptr @FILENAMEONLY, align 4, !tbaa !10
  %58 = icmp ne i32 %57, 0
  %59 = load i32, ptr @num_of_matched, align 4
  %60 = icmp ne i32 %59, 0
  %61 = select i1 %58, i1 %60, i1 false
  br i1 %61, label %62, label %64

62:                                               ; preds = %56
  %63 = call i32 @puts(ptr nonnull dereferenceable(1) @CurrentFileName)
  br label %82

64:                                               ; preds = %56
  %65 = sub nsw i32 1023, %47
  %66 = icmp sgt i32 %47, 1023
  %67 = select i1 %66, i32 1, i32 %65
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8, ptr %2, i64 %68
  %70 = sext i32 %48 to i64
  %71 = call ptr @strncpy(ptr noundef nonnull %69, ptr noundef nonnull %45, i64 noundef %70) #33
  br label %5, !llvm.loop !154

72:                                               ; preds = %5
  %.lcssa5 = phi i32 [ %6, %5 ]
  %.lcssa3 = phi i32 [ %7, %5 ]
  %.lcssa1 = phi i32 [ %8, %5 ]
  store i8 10, ptr %4, align 16, !tbaa !7
  %73 = add nsw i32 %.lcssa5, -1
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [17408 x i8], ptr %2, i64 0, i64 %74
  store i8 10, ptr %75, align 1, !tbaa !7
  %76 = icmp sgt i32 %.lcssa1, 1
  br i1 %76, label %77, label %82

77:                                               ; preds = %72
  %78 = load i32, ptr @SHORT, align 4, !tbaa !10
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %77
  call void @m_short(ptr noundef nonnull %2, i32 noundef %.lcssa5, i32 noundef %.lcssa3) #34
  br label %82

81:                                               ; preds = %77
  call void @monkey1(ptr noundef nonnull %2, i32 noundef %.lcssa5, i32 noundef %.lcssa3) #34
  br label %82

82:                                               ; preds = %81, %80, %72, %62
  call void @llvm.lifetime.end.p0(i64 17408, ptr nonnull %2) #31
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal noalias ptr @mk_leaf(i16 noundef signext %0, i16 noundef signext %1, i8 noundef signext %2, ptr noundef %3) #0 {
  %5 = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #39
  %6 = tail call noalias dereferenceable_or_null(48) ptr @malloc(i64 noundef 48) #39
  %7 = icmp eq ptr %5, null
  %8 = icmp eq ptr %6, null
  %9 = or i1 %7, %8
  br i1 %9, label %24, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.anon.1, ptr %5, i64 0, i32 1
  store i16 %1, ptr %11, align 4, !tbaa !155
  %12 = load i32, ptr @pos_cnt, align 4, !tbaa !10
  %13 = add nsw i32 %12, 1
  store i32 %13, ptr @pos_cnt, align 4, !tbaa !10
  store i32 %12, ptr %5, align 8, !tbaa !157
  %14 = icmp eq i16 %1, 1
  %15 = getelementptr inbounds %struct.anon.1, ptr %5, i64 0, i32 2
  br i1 %14, label %16, label %17

16:                                               ; preds = %10
  store ptr %3, ptr %15, align 8, !tbaa !7
  br label %18

17:                                               ; preds = %10
  store i8 %2, ptr %15, align 8, !tbaa !7
  br label %18

18:                                               ; preds = %17, %16
  store i16 %0, ptr %6, align 8, !tbaa !52
  %19 = getelementptr inbounds %struct.rnode, ptr %6, i64 0, i32 1
  store ptr %5, ptr %19, align 8, !tbaa !7
  %20 = getelementptr inbounds %struct.rnode, ptr %6, i64 0, i32 2
  store i16 0, ptr %20, align 8, !tbaa !158
  %21 = tail call ptr @create_pos(i32 noundef %12) #33
  %22 = getelementptr inbounds %struct.rnode, ptr %6, i64 0, i32 3
  store ptr %21, ptr %22, align 8, !tbaa !57
  %23 = getelementptr inbounds %struct.rnode, ptr %6, i64 0, i32 4
  store ptr %21, ptr %23, align 8, !tbaa !159
  br label %24

24:                                               ; preds = %18, %4
  %25 = phi ptr [ %6, %18 ], [ null, %4 ]
  ret ptr %25
}

; Function Attrs: nounwind optsize uwtable
define internal noalias ptr @parse_cset(ptr nocapture noundef %0) #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !45
  %3 = load i8, ptr %2, align 1, !tbaa !7
  switch i8 %3, label %4 [
    i8 0, label %36
    i8 93, label %36
  ]

4:                                                ; preds = %1
  %5 = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #39
  br label %6

6:                                                ; preds = %26, %4
  %7 = phi i8 [ %3, %4 ], [ %32, %26 ]
  %8 = phi ptr [ %2, %4 ], [ %28, %26 ]
  %9 = phi ptr [ undef, %4 ], [ %10, %26 ]
  %10 = phi ptr [ %5, %4 ], [ %30, %26 ]
  switch i8 %7, label %11 [
    i8 93, label %33
    i8 0, label %36
  ]

11:                                               ; preds = %6
  %12 = tail call noalias dereferenceable_or_null(2) ptr @malloc(i64 noundef 2) #39
  store ptr %12, ptr %10, align 8, !tbaa !160
  %13 = getelementptr inbounds i8, ptr %8, i64 1
  store ptr %13, ptr %0, align 8, !tbaa !45
  %14 = load i8, ptr %8, align 1, !tbaa !7
  %15 = icmp eq i8 %14, 45
  br i1 %15, label %36, label %16

16:                                               ; preds = %11
  store i8 %14, ptr %12, align 1, !tbaa !162
  %17 = load i8, ptr %13, align 1, !tbaa !7
  switch i8 %17, label %26 [
    i8 0, label %36
    i8 45, label %18
  ]

18:                                               ; preds = %16
  %19 = getelementptr inbounds i8, ptr %8, i64 2
  store ptr %19, ptr %0, align 8, !tbaa !45
  %20 = load i8, ptr %19, align 1, !tbaa !7
  switch i8 %20, label %21 [
    i8 0, label %36
    i8 45, label %36
    i8 93, label %36
  ]

21:                                               ; preds = %18
  %22 = icmp slt i8 %20, %14
  br i1 %22, label %36, label %23

23:                                               ; preds = %21
  %24 = getelementptr inbounds i8, ptr %8, i64 3
  store ptr %24, ptr %0, align 8, !tbaa !45
  %25 = load i8, ptr %19, align 1, !tbaa !7
  br label %26

26:                                               ; preds = %23, %16
  %27 = phi i8 [ %25, %23 ], [ %14, %16 ]
  %28 = phi ptr [ %24, %23 ], [ %13, %16 ]
  %29 = getelementptr inbounds %struct.anon.2, ptr %12, i64 0, i32 1
  store i8 %27, ptr %29, align 1, !tbaa !164
  %30 = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #39
  %31 = getelementptr inbounds %struct.anon, ptr %10, i64 0, i32 1
  store ptr %30, ptr %31, align 8, !tbaa !165
  %32 = load i8, ptr %28, align 1, !tbaa !7
  br label %6, !llvm.loop !166

33:                                               ; preds = %6
  %.lcssa = phi ptr [ %9, %6 ]
  %34 = getelementptr inbounds %struct.anon, ptr %.lcssa, i64 0, i32 1
  store ptr null, ptr %34, align 8, !tbaa !165
  %35 = tail call ptr @mk_leaf(i16 noundef signext 1, i16 noundef signext 1, i8 noundef signext 0, ptr noundef %5) #34
  br label %36

36:                                               ; preds = %33, %21, %18, %18, %18, %16, %11, %6, %1, %1
  %37 = phi ptr [ %35, %33 ], [ null, %1 ], [ null, %1 ], [ null, %11 ], [ null, %16 ], [ null, %18 ], [ null, %18 ], [ null, %18 ], [ null, %21 ], [ null, %6 ]
  ret ptr %37
}

; Function Attrs: nounwind optsize uwtable
define internal noalias ptr @parse_wildcard() #0 {
  %1 = tail call noalias dereferenceable_or_null(2) ptr @malloc(i64 noundef 2) #39
  store i8 1, ptr %1, align 1, !tbaa !162
  %2 = getelementptr inbounds %struct.anon.2, ptr %1, i64 0, i32 1
  store i8 127, ptr %2, align 1, !tbaa !164
  %3 = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #39
  store ptr %1, ptr %3, align 8, !tbaa !160
  %4 = getelementptr inbounds %struct.anon, ptr %3, i64 0, i32 1
  store ptr null, ptr %4, align 8, !tbaa !165
  %5 = tail call ptr @mk_leaf(i16 noundef signext 1, i16 noundef signext 1, i8 noundef signext 0, ptr noundef nonnull %3) #34
  ret ptr %5
}

; Function Attrs: nounwind optsize uwtable
define internal noalias ptr @get_token(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %43, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !45
  %5 = icmp eq ptr %4, null
  br i1 %5, label %43, label %6

6:                                                ; preds = %3
  %7 = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #39
  %8 = load i8, ptr %4, align 1, !tbaa !7
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %6
  store i16 0, ptr %7, align 8, !tbaa !167
  br label %43

11:                                               ; preds = %6
  %12 = sext i8 %8 to i32
  switch i32 %12, label %13 [
    i32 46, label %14
    i32 91, label %18
    i32 40, label %38
    i32 41, label %23
    i32 42, label %24
    i32 124, label %25
    i32 63, label %26
    i32 92, label %27
  ]

13:                                               ; preds = %11
  store i16 1, ptr %7, align 8, !tbaa !167
  br label %33

14:                                               ; preds = %11
  store i16 1, ptr %7, align 8, !tbaa !167
  %15 = tail call ptr @parse_wildcard() #34
  %16 = getelementptr inbounds %struct.anon.3, ptr %7, i64 0, i32 1
  store ptr %15, ptr %16, align 8, !tbaa !169
  %17 = icmp eq ptr %15, null
  br i1 %17, label %43, label %40

18:                                               ; preds = %11
  %19 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %19, ptr %0, align 8, !tbaa !45
  store i16 1, ptr %7, align 8, !tbaa !167
  %20 = tail call ptr @parse_cset(ptr noundef nonnull %0) #34
  %21 = getelementptr inbounds %struct.anon.3, ptr %7, i64 0, i32 1
  store ptr %20, ptr %21, align 8, !tbaa !169
  %22 = icmp eq ptr %20, null
  br i1 %22, label %43, label %40

23:                                               ; preds = %11
  br label %38

24:                                               ; preds = %11
  br label %38

25:                                               ; preds = %11
  br label %38

26:                                               ; preds = %11
  br label %38

27:                                               ; preds = %11
  %28 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %28, ptr %0, align 8, !tbaa !45
  %29 = load i8, ptr %28, align 1, !tbaa !7
  store i16 1, ptr %7, align 8, !tbaa !167
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.anon.3, ptr %7, i64 0, i32 1
  store ptr null, ptr %32, align 8, !tbaa !169
  br label %43

33:                                               ; preds = %27, %13
  %34 = phi i8 [ %8, %13 ], [ %29, %27 ]
  %35 = tail call ptr @mk_leaf(i16 noundef signext 1, i16 noundef signext 0, i8 noundef signext %34, ptr noundef null) #34
  %36 = getelementptr inbounds %struct.anon.3, ptr %7, i64 0, i32 1
  store ptr %35, ptr %36, align 8, !tbaa !169
  %37 = icmp eq ptr %35, null
  br i1 %37, label %43, label %40

38:                                               ; preds = %26, %25, %24, %23, %11
  %39 = phi i16 [ 4, %26 ], [ 3, %25 ], [ 2, %24 ], [ 7, %23 ], [ 6, %11 ]
  store i16 %39, ptr %7, align 8, !tbaa !167
  br label %40

40:                                               ; preds = %38, %33, %18, %14
  %41 = load ptr, ptr %0, align 8, !tbaa !45
  %42 = getelementptr inbounds i8, ptr %41, i64 1
  store ptr %42, ptr %0, align 8, !tbaa !45
  br label %43

43:                                               ; preds = %40, %33, %31, %18, %14, %10, %3, %1
  %44 = phi ptr [ null, %3 ], [ null, %1 ], [ null, %14 ], [ null, %18 ], [ null, %33 ], [ %7, %40 ], [ %7, %10 ], [ null, %31 ]
  ret ptr %44
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @cat2(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %64, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !45
  %5 = icmp eq ptr %4, null
  br i1 %5, label %64, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.snode, ptr %4, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !170
  %9 = icmp eq ptr %8, null
  br i1 %9, label %64, label %10

10:                                               ; preds = %6
  %11 = tail call noalias dereferenceable_or_null(48) ptr @malloc(i64 noundef 48) #39
  %12 = icmp eq ptr %11, null
  br i1 %12, label %64, label %13

13:                                               ; preds = %10
  store i16 5, ptr %11, align 8, !tbaa !52
  %14 = tail call ptr @Pop(ptr noundef nonnull %0) #33
  %15 = getelementptr inbounds %struct.rnode, ptr %11, i64 0, i32 1
  %16 = getelementptr inbounds %struct.rnode, ptr %11, i64 0, i32 1, i32 0, i32 1
  store ptr %14, ptr %16, align 8, !tbaa !7
  %17 = tail call ptr @Pop(ptr noundef nonnull %0) #33
  store ptr %17, ptr %15, align 8, !tbaa !7
  %18 = tail call ptr @Push(ptr noundef nonnull %0, ptr noundef nonnull %11) #33
  %19 = icmp eq ptr %18, null
  br i1 %19, label %64, label %20

20:                                               ; preds = %13
  %21 = load ptr, ptr %15, align 8, !tbaa !7
  %22 = getelementptr inbounds %struct.rnode, ptr %21, i64 0, i32 2
  %23 = load i16, ptr %22, align 8, !tbaa !158
  %24 = icmp eq i16 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %20
  %26 = load ptr, ptr %16, align 8, !tbaa !7
  %27 = getelementptr inbounds %struct.rnode, ptr %26, i64 0, i32 2
  %28 = load i16, ptr %27, align 8, !tbaa !158
  %29 = icmp ne i16 %28, 0
  %30 = zext i1 %29 to i16
  br label %31

31:                                               ; preds = %25, %20
  %32 = phi i16 [ 0, %20 ], [ %30, %25 ]
  %33 = getelementptr inbounds %struct.rnode, ptr %11, i64 0, i32 2
  store i16 %32, ptr %33, align 8, !tbaa !158
  %34 = load i16, ptr %22, align 8, !tbaa !158
  %35 = icmp eq i16 %34, 0
  %36 = getelementptr inbounds %struct.rnode, ptr %21, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !57
  br i1 %35, label %43, label %38

38:                                               ; preds = %31
  %39 = load ptr, ptr %16, align 8, !tbaa !7
  %40 = getelementptr inbounds %struct.rnode, ptr %39, i64 0, i32 3
  %41 = load ptr, ptr %40, align 8, !tbaa !57
  %42 = tail call ptr @pset_union(ptr noundef %37, ptr noundef %41) #33
  br label %43

43:                                               ; preds = %38, %31
  %44 = phi ptr [ %42, %38 ], [ %37, %31 ]
  %45 = getelementptr inbounds %struct.rnode, ptr %11, i64 0, i32 3
  store ptr %44, ptr %45, align 8
  %46 = load ptr, ptr %16, align 8, !tbaa !7
  %47 = getelementptr inbounds %struct.rnode, ptr %46, i64 0, i32 2
  %48 = load i16, ptr %47, align 8, !tbaa !158
  %49 = icmp eq i16 %48, 0
  br i1 %49, label %57, label %50

50:                                               ; preds = %43
  %51 = load ptr, ptr %15, align 8, !tbaa !7
  %52 = getelementptr inbounds %struct.rnode, ptr %51, i64 0, i32 4
  %53 = load ptr, ptr %52, align 8, !tbaa !159
  %54 = getelementptr inbounds %struct.rnode, ptr %46, i64 0, i32 4
  %55 = load ptr, ptr %54, align 8, !tbaa !159
  %56 = tail call ptr @pset_union(ptr noundef %53, ptr noundef %55) #33
  br label %60

57:                                               ; preds = %43
  %58 = getelementptr inbounds %struct.rnode, ptr %46, i64 0, i32 4
  %59 = load ptr, ptr %58, align 8, !tbaa !159
  br label %60

60:                                               ; preds = %57, %50
  %61 = phi ptr [ %59, %57 ], [ %56, %50 ]
  %62 = getelementptr inbounds %struct.rnode, ptr %11, i64 0, i32 4
  store ptr %61, ptr %62, align 8
  %63 = load ptr, ptr %0, align 8, !tbaa !45
  br label %64

64:                                               ; preds = %60, %13, %10, %6, %3, %1
  %65 = phi ptr [ %63, %60 ], [ null, %1 ], [ null, %10 ], [ null, %13 ], [ %4, %6 ], [ null, %3 ]
  ret ptr %65
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @wrap(ptr noundef %0, i16 noundef signext %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %22, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr %0, align 8, !tbaa !45
  %6 = icmp eq ptr %5, null
  br i1 %6, label %22, label %7

7:                                                ; preds = %4
  %8 = tail call noalias dereferenceable_or_null(48) ptr @malloc(i64 noundef 48) #39
  %9 = icmp eq ptr %8, null
  br i1 %9, label %22, label %10

10:                                               ; preds = %7
  store i16 %1, ptr %8, align 8, !tbaa !52
  %11 = tail call ptr @Pop(ptr noundef nonnull %0) #33
  %12 = getelementptr inbounds %struct.rnode, ptr %8, i64 0, i32 1
  store ptr %11, ptr %12, align 8, !tbaa !7
  %13 = tail call ptr @Push(ptr noundef nonnull %0, ptr noundef nonnull %8) #33
  %14 = icmp eq ptr %13, null
  br i1 %14, label %22, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.rnode, ptr %8, i64 0, i32 2
  store i16 1, ptr %16, align 8, !tbaa !158
  %17 = load ptr, ptr %12, align 8, !tbaa !7
  %18 = getelementptr inbounds %struct.rnode, ptr %17, i64 0, i32 3
  %19 = getelementptr inbounds %struct.rnode, ptr %8, i64 0, i32 3
  %20 = load <2 x ptr>, ptr %18, align 8, !tbaa !45
  store <2 x ptr> %20, ptr %19, align 8, !tbaa !45
  %21 = load ptr, ptr %0, align 8, !tbaa !45
  br label %22

22:                                               ; preds = %15, %10, %7, %4, %2
  %23 = phi ptr [ %21, %15 ], [ null, %4 ], [ null, %2 ], [ null, %7 ], [ null, %10 ]
  ret ptr %23
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @mk_alt(ptr noundef %0, ptr noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %47, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr %0, align 8, !tbaa !45
  %6 = icmp eq ptr %5, null
  %7 = icmp eq ptr %1, null
  %8 = or i1 %7, %6
  br i1 %8, label %47, label %9

9:                                                ; preds = %4
  %10 = tail call noalias dereferenceable_or_null(48) ptr @malloc(i64 noundef 48) #39
  %11 = icmp eq ptr %10, null
  br i1 %11, label %47, label %12

12:                                               ; preds = %9
  store i16 3, ptr %10, align 8, !tbaa !52
  %13 = tail call ptr @Pop(ptr noundef nonnull %0) #33
  %14 = getelementptr inbounds %struct.rnode, ptr %10, i64 0, i32 1
  store ptr %13, ptr %14, align 8, !tbaa !7
  %15 = getelementptr inbounds %struct.rnode, ptr %10, i64 0, i32 1, i32 0, i32 1
  store ptr %1, ptr %15, align 8, !tbaa !7
  %16 = tail call ptr @Push(ptr noundef nonnull %0, ptr noundef nonnull %10) #33
  %17 = icmp eq ptr %16, null
  br i1 %17, label %47, label %18

18:                                               ; preds = %12
  %19 = load ptr, ptr %14, align 8, !tbaa !7
  %20 = getelementptr inbounds %struct.rnode, ptr %19, i64 0, i32 2
  %21 = load i16, ptr %20, align 8, !tbaa !158
  %22 = icmp eq i16 %21, 0
  %23 = load ptr, ptr %15, align 8, !tbaa !7
  br i1 %22, label %24, label %29

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.rnode, ptr %23, i64 0, i32 2
  %26 = load i16, ptr %25, align 8, !tbaa !158
  %27 = icmp ne i16 %26, 0
  %28 = zext i1 %27 to i16
  br label %29

29:                                               ; preds = %24, %18
  %30 = phi i16 [ 1, %18 ], [ %28, %24 ]
  %31 = getelementptr inbounds %struct.rnode, ptr %10, i64 0, i32 2
  store i16 %30, ptr %31, align 8, !tbaa !158
  %32 = getelementptr inbounds %struct.rnode, ptr %19, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !57
  %34 = getelementptr inbounds %struct.rnode, ptr %23, i64 0, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !57
  %36 = tail call ptr @pset_union(ptr noundef %33, ptr noundef %35) #33
  %37 = getelementptr inbounds %struct.rnode, ptr %10, i64 0, i32 3
  store ptr %36, ptr %37, align 8, !tbaa !57
  %38 = load ptr, ptr %14, align 8, !tbaa !7
  %39 = getelementptr inbounds %struct.rnode, ptr %38, i64 0, i32 4
  %40 = load ptr, ptr %39, align 8, !tbaa !159
  %41 = load ptr, ptr %15, align 8, !tbaa !7
  %42 = getelementptr inbounds %struct.rnode, ptr %41, i64 0, i32 4
  %43 = load ptr, ptr %42, align 8, !tbaa !159
  %44 = tail call ptr @pset_union(ptr noundef %40, ptr noundef %43) #33
  %45 = getelementptr inbounds %struct.rnode, ptr %10, i64 0, i32 4
  store ptr %44, ptr %45, align 8, !tbaa !159
  %46 = load ptr, ptr %0, align 8, !tbaa !45
  br label %47

47:                                               ; preds = %29, %12, %9, %4, %2
  %48 = phi ptr [ %46, %29 ], [ null, %4 ], [ null, %2 ], [ null, %9 ], [ null, %12 ]
  ret ptr %48
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @parse_re(ptr noundef %0, i16 noundef signext %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #31
  store ptr null, ptr %3, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #31
  %5 = icmp eq ptr %0, null
  br i1 %5, label %90, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %0, align 8, !tbaa !45
  %8 = icmp eq ptr %7, null
  br i1 %8, label %90, label %9

9:                                                ; preds = %74, %6
  %10 = call ptr @get_token(ptr noundef nonnull %0) #34
  %11 = icmp eq ptr %10, null
  br i1 %11, label %90, label %12

12:                                               ; preds = %9
  %13 = load i16, ptr %10, align 8, !tbaa !167
  %14 = sext i16 %13 to i32
  switch i32 %14, label %88 [
    i32 7, label %15
    i32 0, label %18
    i32 6, label %23
    i32 2, label %50
    i32 4, label %53
    i32 3, label %56
    i32 1, label %65
  ]

15:                                               ; preds = %12
  %.lcssa = phi i16 [ %13, %12 ]
  %16 = load ptr, ptr %0, align 8, !tbaa !45
  %17 = getelementptr inbounds i8, ptr %16, i64 -1
  store ptr %17, ptr %0, align 8, !tbaa !45
  br label %18

18:                                               ; preds = %15, %12
  %.lcssa1 = phi i16 [ %.lcssa, %15 ], [ %13, %12 ]
  %19 = icmp eq i16 %.lcssa1, %1
  br i1 %19, label %20, label %90

20:                                               ; preds = %18
  %21 = call ptr @cat2(ptr noundef nonnull %3) #34
  %22 = call ptr @Top(ptr noundef %21) #33
  br label %90

23:                                               ; preds = %12
  %24 = call ptr @parse_re(ptr noundef nonnull %0, i16 noundef signext 7) #34
  %25 = call ptr @Push(ptr noundef nonnull %3, ptr noundef %24) #33
  %26 = icmp eq ptr %25, null
  br i1 %26, label %90, label %27

27:                                               ; preds = %23
  %28 = call ptr @get_token(ptr noundef nonnull %0) #34
  %29 = load i16, ptr %28, align 8, !tbaa !167
  %30 = icmp ne i16 %29, 7
  %31 = icmp eq ptr %24, null
  %32 = or i1 %31, %30
  br i1 %32, label %90, label %33

33:                                               ; preds = %27
  %34 = load ptr, ptr %3, align 8, !tbaa !45
  %35 = call i32 @Size(ptr noundef %34) #33
  %36 = icmp sgt i32 %35, 2
  br i1 %36, label %37, label %74

37:                                               ; preds = %33
  %38 = load ptr, ptr %3, align 8, !tbaa !45
  %39 = getelementptr inbounds %struct.snode, ptr %38, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !170
  store ptr %40, ptr %4, align 8, !tbaa !45
  %41 = call ptr @cat2(ptr noundef nonnull %4) #34
  %42 = load ptr, ptr %3, align 8, !tbaa !45
  %43 = getelementptr inbounds %struct.snode, ptr %42, i64 0, i32 2
  store ptr %41, ptr %43, align 8, !tbaa !170
  %44 = icmp eq ptr %41, null
  br i1 %44, label %90, label %45

45:                                               ; preds = %37
  %46 = getelementptr inbounds %struct.snode, ptr %41, i64 0, i32 1
  %47 = load i32, ptr %46, align 8, !tbaa !172
  %48 = add nsw i32 %47, 1
  %49 = getelementptr inbounds %struct.snode, ptr %42, i64 0, i32 1
  store i32 %48, ptr %49, align 8, !tbaa !172
  br label %74

50:                                               ; preds = %12
  %51 = call ptr @wrap(ptr noundef nonnull %3, i16 noundef signext 2) #34
  %52 = icmp eq ptr %51, null
  br i1 %52, label %90, label %74

53:                                               ; preds = %12
  %54 = call ptr @wrap(ptr noundef nonnull %3, i16 noundef signext 4) #34
  %55 = icmp eq ptr %54, null
  br i1 %55, label %90, label %74

56:                                               ; preds = %12
  %57 = call ptr @cat2(ptr noundef nonnull %3) #34
  %58 = icmp eq ptr %57, null
  br i1 %58, label %90, label %59

59:                                               ; preds = %56
  %60 = call ptr @parse_re(ptr noundef nonnull %0, i16 noundef signext %1) #34
  %61 = icmp eq ptr %60, null
  br i1 %61, label %90, label %62

62:                                               ; preds = %59
  %63 = call ptr @mk_alt(ptr noundef nonnull %3, ptr noundef nonnull %60) #34
  %64 = icmp eq ptr %63, null
  br i1 %64, label %90, label %74

65:                                               ; preds = %12
  %66 = getelementptr inbounds %struct.anon.3, ptr %10, i64 0, i32 1
  %67 = load ptr, ptr %66, align 8, !tbaa !169
  %68 = call ptr @Push(ptr noundef nonnull %3, ptr noundef %67) #33
  %69 = icmp eq ptr %68, null
  br i1 %69, label %90, label %70

70:                                               ; preds = %65
  %71 = load ptr, ptr %3, align 8, !tbaa !45
  %72 = call i32 @Size(ptr noundef %71) #33
  %73 = icmp sgt i32 %72, 2
  br i1 %73, label %75, label %74

74:                                               ; preds = %88, %83, %70, %62, %53, %50, %45, %33
  br label %9

75:                                               ; preds = %70
  %76 = load ptr, ptr %3, align 8, !tbaa !45
  %77 = getelementptr inbounds %struct.snode, ptr %76, i64 0, i32 2
  %78 = load ptr, ptr %77, align 8, !tbaa !170
  store ptr %78, ptr %4, align 8, !tbaa !45
  %79 = call ptr @cat2(ptr noundef nonnull %4) #34
  %80 = load ptr, ptr %3, align 8, !tbaa !45
  %81 = getelementptr inbounds %struct.snode, ptr %80, i64 0, i32 2
  store ptr %79, ptr %81, align 8, !tbaa !170
  %82 = icmp eq ptr %79, null
  br i1 %82, label %90, label %83

83:                                               ; preds = %75
  %84 = getelementptr inbounds %struct.snode, ptr %79, i64 0, i32 1
  %85 = load i32, ptr %84, align 8, !tbaa !172
  %86 = add nsw i32 %85, 1
  %87 = getelementptr inbounds %struct.snode, ptr %80, i64 0, i32 1
  store i32 %86, ptr %87, align 8, !tbaa !172
  br label %74

88:                                               ; preds = %12
  %89 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.87, i32 noundef %14) #34
  br label %74

90:                                               ; preds = %75, %65, %62, %59, %56, %53, %50, %37, %27, %23, %20, %18, %9, %6, %2
  %91 = phi ptr [ %22, %20 ], [ null, %6 ], [ null, %2 ], [ null, %18 ], [ null, %9 ], [ null, %23 ], [ null, %27 ], [ null, %37 ], [ null, %50 ], [ null, %53 ], [ null, %56 ], [ null, %59 ], [ null, %62 ], [ null, %65 ], [ null, %75 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #31
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #31
  ret ptr %91
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @parse(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #31
  store ptr null, ptr %3, align 8, !tbaa !45
  %4 = call ptr @parse_re(ptr noundef nonnull %2, i16 noundef signext 0) #34
  %5 = icmp eq ptr %4, null
  br i1 %5, label %20, label %6

6:                                                ; preds = %1
  %7 = call ptr @Push(ptr noundef nonnull %3, ptr noundef nonnull %4) #33
  %8 = icmp eq ptr %7, null
  br i1 %8, label %20, label %9

9:                                                ; preds = %6
  %10 = call ptr @mk_leaf(i16 noundef signext 0, i16 noundef signext 0, i8 noundef signext 0, ptr noundef null) #34
  %11 = icmp eq ptr %10, null
  br i1 %11, label %20, label %12

12:                                               ; preds = %9
  %13 = call ptr @Push(ptr noundef nonnull %3, ptr noundef nonnull %10) #33
  %14 = icmp eq ptr %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %12
  %16 = load i32, ptr @pos_cnt, align 4, !tbaa !10
  %17 = add nsw i32 %16, -1
  store i32 %17, ptr @pos_cnt, align 4, !tbaa !10
  store i32 %17, ptr @final_pos, align 4, !tbaa !10
  %18 = call ptr @cat2(ptr noundef nonnull %3) #34
  %19 = call ptr @Top(ptr noundef %18) #33
  br label %20

20:                                               ; preds = %15, %12, %9, %6, %1
  %21 = phi ptr [ %19, %15 ], [ null, %6 ], [ null, %1 ], [ null, %12 ], [ null, %9 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #31
  ret ptr %21
}

; Function Attrs: nounwind optsize uwtable
define internal void @preprocess(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca [1024 x i8], align 16
  %4 = alloca [16 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %3) #31
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #31
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #32
  %6 = trunc i64 %5 to i32
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %20

8:                                                ; preds = %16, %2
  %9 = phi i32 [ %18, %16 ], [ 0, %2 ]
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i8, ptr %1, i64 %10
  %12 = load i8, ptr %11, align 1, !tbaa !7
  switch i8 %12, label %16 [
    i8 92, label %13
    i8 124, label %15
    i8 42, label %15
  ]

13:                                               ; preds = %8
  %14 = add nsw i32 %9, 1
  br label %16

15:                                               ; preds = %8, %8
  store i32 1, ptr @REGEX, align 4, !tbaa !10
  br label %16

16:                                               ; preds = %15, %13, %8
  %17 = phi i32 [ %14, %13 ], [ %9, %15 ], [ %9, %8 ]
  %18 = add nsw i32 %17, 1
  %19 = icmp slt i32 %18, %6
  br i1 %19, label %8, label %20, !llvm.loop !173

20:                                               ; preds = %16, %2
  %21 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #32
  %22 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #32
  %23 = shl i64 %22, 1
  %24 = add i64 %23, %21
  %25 = tail call noalias ptr @malloc(i64 noundef %24) #39
  %26 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) %0) #33
  %27 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #32
  %28 = trunc i64 %27 to i32
  %29 = load i32, ptr @WHOLELINE, align 4, !tbaa !10
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %47, label %31

31:                                               ; preds = %20
  %32 = shl i64 %27, 32
  %33 = ashr exact i64 %32, 32
  %34 = getelementptr inbounds [1024 x i8], ptr %3, i64 0, i64 %33
  store i8 -10, ptr %34, align 1, !tbaa !7
  %35 = add i64 %32, 4294967296
  %36 = ashr exact i64 %35, 32
  %37 = getelementptr inbounds [1024 x i8], ptr %3, i64 0, i64 %36
  store i8 -17, ptr %37, align 1, !tbaa !7
  %38 = add i64 %32, 8589934592
  %39 = ashr exact i64 %38, 32
  %40 = getelementptr inbounds [1024 x i8], ptr %3, i64 0, i64 %39
  store i8 -9, ptr %40, align 1, !tbaa !7
  %41 = add i64 %32, 12884901888
  %42 = ashr exact i64 %41, 32
  %43 = getelementptr inbounds [1024 x i8], ptr %3, i64 0, i64 %42
  store i8 0, ptr %43, align 1, !tbaa !7
  %44 = call ptr @strcat(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) %1) #33
  %45 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #32
  %46 = trunc i64 %45 to i32
  br label %67

47:                                               ; preds = %20
  %48 = load i32, ptr @WORDBOUND, align 4, !tbaa !10
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %63, label %50

50:                                               ; preds = %47
  %51 = shl i64 %27, 32
  %52 = ashr exact i64 %51, 32
  %53 = getelementptr inbounds [1024 x i8], ptr %3, i64 0, i64 %52
  store i8 -10, ptr %53, align 1, !tbaa !7
  %54 = add i64 %51, 4294967296
  %55 = ashr exact i64 %54, 32
  %56 = getelementptr inbounds [1024 x i8], ptr %3, i64 0, i64 %55
  store i8 -15, ptr %56, align 1, !tbaa !7
  %57 = add i64 %51, 8589934592
  %58 = ashr exact i64 %57, 32
  %59 = getelementptr inbounds [1024 x i8], ptr %3, i64 0, i64 %58
  store i8 -9, ptr %59, align 1, !tbaa !7
  %60 = add i64 %51, 12884901888
  %61 = ashr exact i64 %60, 32
  %62 = getelementptr inbounds [1024 x i8], ptr %3, i64 0, i64 %61
  store i8 0, ptr %62, align 1, !tbaa !7
  br label %63

63:                                               ; preds = %50, %47
  %64 = call ptr @strcat(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) %1) #33
  %65 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #32
  %66 = trunc i64 %65 to i32
  br i1 %49, label %81, label %67

67:                                               ; preds = %63, %31
  %68 = phi i64 [ %45, %31 ], [ %65, %63 ]
  %69 = phi i8 [ 10, %31 ], [ -15, %63 ]
  %70 = phi i32 [ %46, %31 ], [ %66, %63 ]
  %71 = shl i64 %68, 32
  %72 = ashr exact i64 %71, 32
  %73 = getelementptr inbounds [1024 x i8], ptr %3, i64 0, i64 %72
  store i8 -10, ptr %73, align 1, !tbaa !7
  %74 = add i64 %71, 4294967296
  %75 = ashr exact i64 %74, 32
  %76 = getelementptr inbounds [1024 x i8], ptr %3, i64 0, i64 %75
  store i8 %69, ptr %76, align 1, !tbaa !7
  %77 = add nsw i32 %70, 3
  %78 = add i64 %71, 8589934592
  %79 = ashr exact i64 %78, 32
  %80 = getelementptr inbounds [1024 x i8], ptr %3, i64 0, i64 %79
  store i8 -9, ptr %80, align 1, !tbaa !7
  br label %81

81:                                               ; preds = %67, %63
  %82 = phi i32 [ %66, %63 ], [ %77, %67 ]
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [1024 x i8], ptr %3, i64 0, i64 %83
  store i8 0, ptr %84, align 1, !tbaa !7
  store i32 0, ptr @D_length, align 4, !tbaa !10
  %85 = add nsw i32 %28, -2
  %86 = icmp sgt i32 %28, 2
  br i1 %86, label %87, label %137

87:                                               ; preds = %125, %81
  %88 = phi i64 [ %127, %125 ], [ 0, %81 ]
  %89 = phi i32 [ %128, %125 ], [ 0, %81 ]
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds [1024 x i8], ptr %3, i64 0, i64 %90
  %92 = load i8, ptr %91, align 1, !tbaa !7
  switch i8 %92, label %119 [
    i8 92, label %93
    i8 60, label %103
    i8 62, label %105
    i8 94, label %107
    i8 36, label %113
  ]

93:                                               ; preds = %87
  %94 = add nsw i32 %89, 1
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds [1024 x i8], ptr %3, i64 0, i64 %95
  %97 = load i8, ptr %96, align 1, !tbaa !7
  %98 = getelementptr inbounds i8, ptr %1, i64 %88
  store i8 %97, ptr %98, align 1, !tbaa !7
  %99 = load i32, ptr @D_length, align 4, !tbaa !10
  %100 = add nsw i32 %99, 1
  store i32 %100, ptr @D_length, align 4, !tbaa !10
  %101 = sext i32 %99 to i64
  %102 = getelementptr inbounds [16 x i8], ptr %4, i64 0, i64 %101
  store i8 %97, ptr %102, align 1, !tbaa !7
  br label %125

103:                                              ; preds = %87
  %104 = getelementptr inbounds i8, ptr %1, i64 %88
  store i8 -10, ptr %104, align 1, !tbaa !7
  br label %125

105:                                              ; preds = %87
  %106 = getelementptr inbounds i8, ptr %1, i64 %88
  store i8 -9, ptr %106, align 1, !tbaa !7
  br label %125

107:                                              ; preds = %87
  %108 = getelementptr inbounds i8, ptr %1, i64 %88
  store i8 10, ptr %108, align 1, !tbaa !7
  %109 = load i32, ptr @D_length, align 4, !tbaa !10
  %110 = add nsw i32 %109, 1
  store i32 %110, ptr @D_length, align 4, !tbaa !10
  %111 = sext i32 %109 to i64
  %112 = getelementptr inbounds [16 x i8], ptr %4, i64 0, i64 %111
  store i8 94, ptr %112, align 1, !tbaa !7
  br label %125

113:                                              ; preds = %87
  %114 = getelementptr inbounds i8, ptr %1, i64 %88
  store i8 10, ptr %114, align 1, !tbaa !7
  %115 = load i32, ptr @D_length, align 4, !tbaa !10
  %116 = add nsw i32 %115, 1
  store i32 %116, ptr @D_length, align 4, !tbaa !10
  %117 = sext i32 %115 to i64
  %118 = getelementptr inbounds [16 x i8], ptr %4, i64 0, i64 %117
  store i8 36, ptr %118, align 1, !tbaa !7
  br label %125

119:                                              ; preds = %87
  %120 = getelementptr inbounds i8, ptr %1, i64 %88
  store i8 %92, ptr %120, align 1, !tbaa !7
  %121 = load i32, ptr @D_length, align 4, !tbaa !10
  %122 = add nsw i32 %121, 1
  store i32 %122, ptr @D_length, align 4, !tbaa !10
  %123 = sext i32 %121 to i64
  %124 = getelementptr inbounds [16 x i8], ptr %4, i64 0, i64 %123
  store i8 %92, ptr %124, align 1, !tbaa !7
  br label %125

125:                                              ; preds = %119, %113, %107, %105, %103, %93
  %126 = phi i32 [ %89, %119 ], [ %89, %113 ], [ %89, %107 ], [ %89, %105 ], [ %89, %103 ], [ %94, %93 ]
  %127 = add nuw i64 %88, 1
  %128 = add nsw i32 %126, 1
  %129 = icmp slt i32 %128, %85
  br i1 %129, label %87, label %130, !llvm.loop !174

130:                                              ; preds = %125
  %.lcssa2 = phi i64 [ %127, %125 ]
  %131 = trunc i64 %.lcssa2 to i32
  %132 = load i32, ptr @D_length, align 4, !tbaa !10
  %133 = icmp sgt i32 %132, 8
  br i1 %133, label %134, label %137

134:                                              ; preds = %130
  %135 = load ptr, ptr @stderr, align 8, !tbaa !45
  %136 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %135, ptr noundef nonnull @.str.92, ptr noundef nonnull @Progname) #35
  call void @exit(i32 noundef 2) #36
  unreachable

137:                                              ; preds = %130, %81
  %138 = phi i32 [ %131, %130 ], [ 0, %81 ]
  %139 = add nuw nsw i32 %138, 1
  %140 = zext i32 %138 to i64
  %141 = getelementptr inbounds i8, ptr %1, i64 %140
  store i8 -4, ptr %141, align 1, !tbaa !7
  %142 = load i32, ptr @D_length, align 4, !tbaa !10
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds [16 x i8], ptr %4, i64 0, i64 %143
  store i8 0, ptr %144, align 1, !tbaa !7
  %145 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %4) #33
  %146 = load i32, ptr @D_length, align 4, !tbaa !10
  %147 = add nsw i32 %146, 1
  store i32 %147, ptr @D_length, align 4, !tbaa !10
  %148 = zext i32 %139 to i64
  %149 = getelementptr inbounds i8, ptr %1, i64 %148
  store i8 0, ptr %149, align 1, !tbaa !7
  %150 = load i32, ptr @REGEX, align 4, !tbaa !10
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %155, label %152

152:                                              ; preds = %137
  store i8 46, ptr %25, align 1, !tbaa !7
  %153 = getelementptr inbounds i8, ptr %25, i64 1
  store i8 40, ptr %153, align 1, !tbaa !7
  %154 = add nuw nsw i32 %138, 2
  store i8 -18, ptr %149, align 1, !tbaa !7
  store i32 1, ptr @HEAD, align 4, !tbaa !10
  br label %155

155:                                              ; preds = %152, %137
  %156 = phi i32 [ %154, %152 ], [ %139, %137 ]
  %157 = phi i32 [ 2, %152 ], [ 0, %137 ]
  %158 = icmp sgt i32 %82, %28
  br i1 %158, label %159, label %281

159:                                              ; preds = %155
  %160 = sext i32 %156 to i64
  br label %161

161:                                              ; preds = %271, %159
  %162 = phi i64 [ %160, %159 ], [ %276, %271 ]
  %163 = phi i32 [ 0, %159 ], [ %275, %271 ]
  %164 = phi i32 [ 0, %159 ], [ %274, %271 ]
  %165 = phi i32 [ %28, %159 ], [ %277, %271 ]
  %166 = phi i32 [ %157, %159 ], [ %272, %271 ]
  %167 = sext i32 %165 to i64
  %168 = getelementptr inbounds [1024 x i8], ptr %3, i64 0, i64 %167
  %169 = load i8, ptr %168, align 1, !tbaa !7
  switch i8 %169, label %266 [
    i8 92, label %170
    i8 35, label %179
    i8 40, label %191
    i8 41, label %196
    i8 91, label %201
    i8 93, label %206
    i8 60, label %211
    i8 62, label %213
    i8 94, label %215
    i8 36, label %226
    i8 46, label %231
    i8 42, label %236
    i8 124, label %241
    i8 44, label %246
    i8 59, label %248
    i8 45, label %253
    i8 -17, label %261
  ]

170:                                              ; preds = %161
  %171 = add nsw i32 %165, 1
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds [1024 x i8], ptr %3, i64 0, i64 %172
  %174 = load i8, ptr %173, align 1, !tbaa !7
  %175 = getelementptr inbounds i8, ptr %1, i64 %162
  store i8 %174, ptr %175, align 1, !tbaa !7
  %176 = add nsw i32 %166, 1
  %177 = sext i32 %166 to i64
  %178 = getelementptr inbounds i8, ptr %25, i64 %177
  store i8 111, ptr %178, align 1, !tbaa !7
  br label %271

179:                                              ; preds = %161
  %180 = load i32, ptr @REGEX, align 4, !tbaa !10
  %181 = icmp eq i32 %180, 0
  %182 = getelementptr inbounds i8, ptr %1, i64 %162
  br i1 %181, label %190, label %183

183:                                              ; preds = %179
  store i8 -18, ptr %182, align 1, !tbaa !7
  %184 = add nsw i32 %166, 1
  %185 = sext i32 %166 to i64
  %186 = getelementptr inbounds i8, ptr %25, i64 %185
  store i8 46, ptr %186, align 1, !tbaa !7
  %187 = add nsw i32 %166, 2
  %188 = sext i32 %184 to i64
  %189 = getelementptr inbounds i8, ptr %25, i64 %188
  store i8 42, ptr %189, align 1, !tbaa !7
  br label %271

190:                                              ; preds = %179
  store i8 -7, ptr %182, align 1, !tbaa !7
  br label %271

191:                                              ; preds = %161
  %192 = getelementptr inbounds i8, ptr %1, i64 %162
  store i8 -14, ptr %192, align 1, !tbaa !7
  %193 = add nsw i32 %166, 1
  %194 = sext i32 %166 to i64
  %195 = getelementptr inbounds i8, ptr %25, i64 %194
  store i8 40, ptr %195, align 1, !tbaa !7
  br label %271

196:                                              ; preds = %161
  %197 = getelementptr inbounds i8, ptr %1, i64 %162
  store i8 -13, ptr %197, align 1, !tbaa !7
  %198 = add nsw i32 %166, 1
  %199 = sext i32 %166 to i64
  %200 = getelementptr inbounds i8, ptr %25, i64 %199
  store i8 41, ptr %200, align 1, !tbaa !7
  br label %271

201:                                              ; preds = %161
  %202 = getelementptr inbounds i8, ptr %1, i64 %162
  store i8 -12, ptr %202, align 1, !tbaa !7
  %203 = add nsw i32 %166, 1
  %204 = sext i32 %166 to i64
  %205 = getelementptr inbounds i8, ptr %25, i64 %204
  store i8 91, ptr %205, align 1, !tbaa !7
  br label %271

206:                                              ; preds = %161
  %207 = getelementptr inbounds i8, ptr %1, i64 %162
  store i8 -11, ptr %207, align 1, !tbaa !7
  %208 = add nsw i32 %166, 1
  %209 = sext i32 %166 to i64
  %210 = getelementptr inbounds i8, ptr %25, i64 %209
  store i8 93, ptr %210, align 1, !tbaa !7
  br label %271

211:                                              ; preds = %161
  %212 = getelementptr inbounds i8, ptr %1, i64 %162
  store i8 -10, ptr %212, align 1, !tbaa !7
  br label %271

213:                                              ; preds = %161
  %214 = getelementptr inbounds i8, ptr %1, i64 %162
  store i8 -9, ptr %214, align 1, !tbaa !7
  br label %271

215:                                              ; preds = %161
  %216 = add nsw i32 %165, -1
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds [1024 x i8], ptr %3, i64 0, i64 %217
  %219 = load i8, ptr %218, align 1, !tbaa !7
  %220 = icmp eq i8 %219, 91
  %221 = select i1 %220, i8 -8, i8 10
  %222 = getelementptr inbounds i8, ptr %1, i64 %162
  store i8 %221, ptr %222, align 1
  %223 = add nsw i32 %166, 1
  %224 = sext i32 %166 to i64
  %225 = getelementptr inbounds i8, ptr %25, i64 %224
  store i8 94, ptr %225, align 1, !tbaa !7
  br label %271

226:                                              ; preds = %161
  %227 = getelementptr inbounds i8, ptr %1, i64 %162
  store i8 10, ptr %227, align 1, !tbaa !7
  %228 = add nsw i32 %166, 1
  %229 = sext i32 %166 to i64
  %230 = getelementptr inbounds i8, ptr %25, i64 %229
  store i8 36, ptr %230, align 1, !tbaa !7
  br label %271

231:                                              ; preds = %161
  %232 = getelementptr inbounds i8, ptr %1, i64 %162
  store i8 -18, ptr %232, align 1, !tbaa !7
  %233 = add nsw i32 %166, 1
  %234 = sext i32 %166 to i64
  %235 = getelementptr inbounds i8, ptr %25, i64 %234
  store i8 46, ptr %235, align 1, !tbaa !7
  br label %271

236:                                              ; preds = %161
  %237 = getelementptr inbounds i8, ptr %1, i64 %162
  store i8 -3, ptr %237, align 1, !tbaa !7
  %238 = add nsw i32 %166, 1
  %239 = sext i32 %166 to i64
  %240 = getelementptr inbounds i8, ptr %25, i64 %239
  store i8 42, ptr %240, align 1, !tbaa !7
  br label %271

241:                                              ; preds = %161
  %242 = getelementptr inbounds i8, ptr %1, i64 %162
  store i8 -6, ptr %242, align 1, !tbaa !7
  %243 = add nsw i32 %166, 1
  %244 = sext i32 %166 to i64
  %245 = getelementptr inbounds i8, ptr %25, i64 %244
  store i8 124, ptr %245, align 1, !tbaa !7
  br label %271

246:                                              ; preds = %161
  %247 = getelementptr inbounds i8, ptr %1, i64 %162
  store i8 -5, ptr %247, align 1, !tbaa !7
  store i32 1, ptr @RE_ERR, align 4, !tbaa !10
  br label %271

248:                                              ; preds = %161
  %249 = icmp eq i32 %164, 0
  br i1 %249, label %251, label %250

250:                                              ; preds = %248
  store i32 1, ptr @RE_ERR, align 4, !tbaa !10
  br label %251

251:                                              ; preds = %250, %248
  %252 = getelementptr inbounds i8, ptr %1, i64 %162
  store i8 -4, ptr %252, align 1, !tbaa !7
  br label %271

253:                                              ; preds = %161
  %254 = icmp eq i32 %163, 0
  %255 = getelementptr inbounds i8, ptr %1, i64 %162
  %256 = add nsw i32 %166, 1
  %257 = sext i32 %166 to i64
  %258 = getelementptr inbounds i8, ptr %25, i64 %257
  br i1 %254, label %260, label %259

259:                                              ; preds = %253
  store i8 -19, ptr %255, align 1, !tbaa !7
  store i8 45, ptr %258, align 1, !tbaa !7
  br label %271

260:                                              ; preds = %253
  store i8 45, ptr %255, align 1, !tbaa !7
  store i8 45, ptr %258, align 1, !tbaa !7
  br label %271

261:                                              ; preds = %161
  %262 = getelementptr inbounds i8, ptr %1, i64 %162
  store i8 -17, ptr %262, align 1, !tbaa !7
  %263 = add nsw i32 %166, 1
  %264 = sext i32 %166 to i64
  %265 = getelementptr inbounds i8, ptr %25, i64 %264
  store i8 78, ptr %265, align 1, !tbaa !7
  br label %271

266:                                              ; preds = %161
  %267 = getelementptr inbounds i8, ptr %1, i64 %162
  store i8 %169, ptr %267, align 1, !tbaa !7
  %268 = add nsw i32 %166, 1
  %269 = sext i32 %166 to i64
  %270 = getelementptr inbounds i8, ptr %25, i64 %269
  store i8 %169, ptr %270, align 1, !tbaa !7
  br label %271

271:                                              ; preds = %266, %261, %260, %259, %251, %246, %241, %236, %231, %226, %215, %213, %211, %206, %201, %196, %191, %190, %183, %170
  %272 = phi i32 [ %268, %266 ], [ %263, %261 ], [ %256, %259 ], [ %256, %260 ], [ %166, %251 ], [ %166, %246 ], [ %243, %241 ], [ %238, %236 ], [ %233, %231 ], [ %228, %226 ], [ %223, %215 ], [ %166, %213 ], [ %166, %211 ], [ %208, %206 ], [ %203, %201 ], [ %198, %196 ], [ %193, %191 ], [ %187, %183 ], [ %166, %190 ], [ %176, %170 ]
  %273 = phi i32 [ %165, %266 ], [ %165, %261 ], [ %165, %259 ], [ %165, %260 ], [ %165, %251 ], [ %165, %246 ], [ %165, %241 ], [ %165, %236 ], [ %165, %231 ], [ %165, %226 ], [ %165, %215 ], [ %165, %213 ], [ %165, %211 ], [ %165, %206 ], [ %165, %201 ], [ %165, %196 ], [ %165, %191 ], [ %165, %183 ], [ %165, %190 ], [ %171, %170 ]
  %274 = phi i32 [ %164, %266 ], [ %164, %261 ], [ %164, %259 ], [ %164, %260 ], [ 1, %251 ], [ %164, %246 ], [ %164, %241 ], [ %164, %236 ], [ %164, %231 ], [ %164, %226 ], [ %164, %215 ], [ %164, %213 ], [ %164, %211 ], [ %164, %206 ], [ %164, %201 ], [ %164, %196 ], [ %164, %191 ], [ %164, %183 ], [ %164, %190 ], [ %164, %170 ]
  %275 = phi i32 [ %163, %266 ], [ %163, %261 ], [ 1, %259 ], [ 0, %260 ], [ %163, %251 ], [ %163, %246 ], [ %163, %241 ], [ %163, %236 ], [ %163, %231 ], [ %163, %226 ], [ %163, %215 ], [ %163, %213 ], [ %163, %211 ], [ 0, %206 ], [ 1, %201 ], [ %163, %196 ], [ %163, %191 ], [ %163, %183 ], [ %163, %190 ], [ %163, %170 ]
  %276 = add i64 %162, 1
  %277 = add nsw i32 %273, 1
  %278 = icmp slt i32 %277, %82
  br i1 %278, label %161, label %279, !llvm.loop !175

279:                                              ; preds = %271
  %.lcssa1 = phi i32 [ %272, %271 ]
  %.lcssa = phi i64 [ %276, %271 ]
  %280 = trunc i64 %.lcssa to i32
  br label %281

281:                                              ; preds = %279, %155
  %282 = phi i32 [ %156, %155 ], [ %280, %279 ]
  %283 = phi i32 [ %157, %155 ], [ %.lcssa1, %279 ]
  %284 = load i32, ptr @REGEX, align 4, !tbaa !10
  %285 = icmp eq i32 %284, 0
  br i1 %285, label %296, label %286

286:                                              ; preds = %281
  %287 = add nsw i32 %283, 1
  %288 = sext i32 %283 to i64
  %289 = getelementptr inbounds i8, ptr %25, i64 %288
  store i8 41, ptr %289, align 1, !tbaa !7
  %290 = add nsw i32 %283, 2
  %291 = sext i32 %287 to i64
  %292 = getelementptr inbounds i8, ptr %25, i64 %291
  store i8 46, ptr %292, align 1, !tbaa !7
  %293 = add nsw i32 %282, 1
  %294 = sext i32 %282 to i64
  %295 = getelementptr inbounds i8, ptr %1, i64 %294
  store i8 -18, ptr %295, align 1, !tbaa !7
  store i32 1, ptr @TAIL, align 4, !tbaa !10
  br label %296

296:                                              ; preds = %286, %281
  %297 = phi i32 [ %293, %286 ], [ %282, %281 ]
  %298 = phi i32 [ %290, %286 ], [ %283, %281 ]
  %299 = sext i32 %297 to i64
  %300 = getelementptr inbounds i8, ptr %1, i64 %299
  store i8 0, ptr %300, align 1, !tbaa !7
  %301 = sext i32 %298 to i64
  %302 = getelementptr inbounds i8, ptr %25, i64 %301
  store i8 0, ptr %302, align 1, !tbaa !7
  %303 = load i32, ptr @REGEX, align 4, !tbaa !10
  %304 = icmp eq i32 %303, 0
  br i1 %304, label %348, label %305

305:                                              ; preds = %296
  %306 = load i32, ptr @DELIMITER, align 4, !tbaa !10
  %307 = icmp ne i32 %306, 0
  %308 = load i32, ptr @WORDBOUND, align 4
  %309 = icmp ne i32 %308, 0
  %310 = select i1 %307, i1 true, i1 %309
  br i1 %310, label %311, label %314

311:                                              ; preds = %305
  %312 = load ptr, ptr @stderr, align 8, !tbaa !45
  %313 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %312, ptr noundef nonnull @.str.1.93, ptr noundef nonnull @Progname) #35
  call void @exit(i32 noundef 2) #36
  unreachable

314:                                              ; preds = %305
  %315 = load i32, ptr @RE_ERR, align 4, !tbaa !10
  %316 = icmp eq i32 %315, 0
  br i1 %316, label %317, label %322

317:                                              ; preds = %314
  %318 = load i8, ptr %1, align 1, !tbaa !7
  %319 = icmp ne i8 %318, -18
  %320 = icmp sgt i32 %297, 0
  %321 = and i1 %319, %320
  br i1 %321, label %325, label %334

322:                                              ; preds = %314
  %323 = load ptr, ptr @stderr, align 8, !tbaa !45
  %324 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %323, ptr noundef nonnull @.str.2.94, ptr noundef nonnull @Progname) #35
  call void @exit(i32 noundef 2) #36
  unreachable

325:                                              ; preds = %325, %317
  %326 = phi ptr [ %329, %325 ], [ %1, %317 ]
  %327 = phi i32 [ %328, %325 ], [ %297, %317 ]
  %328 = add nsw i32 %327, -1
  %329 = getelementptr inbounds i8, ptr %326, i64 1
  %330 = load i8, ptr %329, align 1, !tbaa !7
  %331 = icmp ne i8 %330, -18
  %332 = icmp ugt i32 %327, 1
  %333 = select i1 %331, i1 %332, i1 false
  br i1 %333, label %325, label %334, !llvm.loop !176

334:                                              ; preds = %325, %317
  %335 = phi ptr [ %1, %317 ], [ %329, %325 ]
  %336 = call i32 @init(ptr noundef %25, ptr noundef nonnull @table) #33
  %337 = icmp slt i32 %336, 1
  br i1 %337, label %338, label %341

338:                                              ; preds = %334
  %339 = load ptr, ptr @stderr, align 8, !tbaa !45
  %340 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %339, ptr noundef nonnull @.str.2.94, ptr noundef nonnull @Progname) #35
  call void @exit(i32 noundef 2) #36
  unreachable

341:                                              ; preds = %334
  %342 = icmp ugt i32 %336, 30
  br i1 %342, label %343, label %346

343:                                              ; preds = %341
  %344 = load ptr, ptr @stderr, align 8, !tbaa !45
  %345 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %344, ptr noundef nonnull @.str.3.95, ptr noundef nonnull @Progname) #35
  call void @exit(i32 noundef 2) #36
  unreachable

346:                                              ; preds = %341
  %347 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %335) #33
  br label %348

348:                                              ; preds = %346, %296
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #31
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %3) #31
  ret void
}

; Function Attrs: nofree nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal void @char_tr(ptr nocapture noundef %0, ptr nocapture noundef %1) #21 {
  %3 = alloca [256 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %3)
  br label %4

4:                                                ; preds = %4, %2
  %5 = phi i64 [ 0, %2 ], [ %8, %4 ]
  %6 = phi <16 x i8> [ <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15>, %2 ], [ %9, %4 ]
  %7 = getelementptr inbounds [256 x i8], ptr @TR, i64 0, i64 %5
  store <16 x i8> %6, ptr %7, align 16, !tbaa !7
  %8 = add nuw i64 %5, 16
  %9 = add <16 x i8> %6, <i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16, i8 16>
  %10 = icmp eq i64 %8, 256
  br i1 %10, label %11, label %4, !llvm.loop !177

11:                                               ; preds = %4
  %12 = load i32, ptr @NOUPPER, align 4, !tbaa !10
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %119, label %14

14:                                               ; preds = %116, %11
  %15 = phi i64 [ %117, %116 ], [ 0, %11 ]
  %16 = trunc i64 %15 to i8
  %17 = insertelement <16 x i64> poison, i64 %15, i64 0
  %18 = shufflevector <16 x i64> %17, <16 x i64> poison, <16 x i32> zeroinitializer
  %19 = or <16 x i64> %18, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>
  %20 = icmp ult <16 x i64> %19, <i64 26, i64 26, i64 26, i64 26, i64 26, i64 26, i64 26, i64 26, i64 26, i64 26, i64 26, i64 26, i64 26, i64 26, i64 26, i64 26>
  %21 = extractelement <16 x i1> %20, i64 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %14
  %23 = add i64 %15, 65
  %24 = getelementptr inbounds [256 x i8], ptr @TR, i64 0, i64 %23
  %25 = add i8 %16, 97
  store i8 %25, ptr %24, align 1, !tbaa !7
  br label %26

26:                                               ; preds = %22, %14
  %27 = extractelement <16 x i1> %20, i64 1
  br i1 %27, label %28, label %32

28:                                               ; preds = %26
  %29 = add i64 %15, 66
  %30 = getelementptr inbounds [256 x i8], ptr @TR, i64 0, i64 %29
  %31 = add i8 %16, 98
  store i8 %31, ptr %30, align 2, !tbaa !7
  br label %32

32:                                               ; preds = %28, %26
  %33 = extractelement <16 x i1> %20, i64 2
  br i1 %33, label %34, label %38

34:                                               ; preds = %32
  %35 = add i64 %15, 67
  %36 = getelementptr inbounds [256 x i8], ptr @TR, i64 0, i64 %35
  %37 = add i8 %16, 99
  store i8 %37, ptr %36, align 1, !tbaa !7
  br label %38

38:                                               ; preds = %34, %32
  %39 = extractelement <16 x i1> %20, i64 3
  br i1 %39, label %40, label %44

40:                                               ; preds = %38
  %41 = add i64 %15, 68
  %42 = getelementptr inbounds [256 x i8], ptr @TR, i64 0, i64 %41
  %43 = add i8 %16, 100
  store i8 %43, ptr %42, align 4, !tbaa !7
  br label %44

44:                                               ; preds = %40, %38
  %45 = extractelement <16 x i1> %20, i64 4
  br i1 %45, label %46, label %50

46:                                               ; preds = %44
  %47 = add i64 %15, 69
  %48 = getelementptr inbounds [256 x i8], ptr @TR, i64 0, i64 %47
  %49 = add i8 %16, 101
  store i8 %49, ptr %48, align 1, !tbaa !7
  br label %50

50:                                               ; preds = %46, %44
  %51 = extractelement <16 x i1> %20, i64 5
  br i1 %51, label %52, label %56

52:                                               ; preds = %50
  %53 = add i64 %15, 70
  %54 = getelementptr inbounds [256 x i8], ptr @TR, i64 0, i64 %53
  %55 = add i8 %16, 102
  store i8 %55, ptr %54, align 2, !tbaa !7
  br label %56

56:                                               ; preds = %52, %50
  %57 = extractelement <16 x i1> %20, i64 6
  br i1 %57, label %58, label %62

58:                                               ; preds = %56
  %59 = add i64 %15, 71
  %60 = getelementptr inbounds [256 x i8], ptr @TR, i64 0, i64 %59
  %61 = add i8 %16, 103
  store i8 %61, ptr %60, align 1, !tbaa !7
  br label %62

62:                                               ; preds = %58, %56
  %63 = extractelement <16 x i1> %20, i64 7
  br i1 %63, label %64, label %68

64:                                               ; preds = %62
  %65 = add i64 %15, 72
  %66 = getelementptr inbounds [256 x i8], ptr @TR, i64 0, i64 %65
  %67 = add i8 %16, 104
  store i8 %67, ptr %66, align 8, !tbaa !7
  br label %68

68:                                               ; preds = %64, %62
  %69 = extractelement <16 x i1> %20, i64 8
  br i1 %69, label %70, label %74

70:                                               ; preds = %68
  %71 = add i64 %15, 73
  %72 = getelementptr inbounds [256 x i8], ptr @TR, i64 0, i64 %71
  %73 = add i8 %16, 105
  store i8 %73, ptr %72, align 1, !tbaa !7
  br label %74

74:                                               ; preds = %70, %68
  %75 = extractelement <16 x i1> %20, i64 9
  br i1 %75, label %76, label %80

76:                                               ; preds = %74
  %77 = add i64 %15, 74
  %78 = getelementptr inbounds [256 x i8], ptr @TR, i64 0, i64 %77
  %79 = add i8 %16, 106
  store i8 %79, ptr %78, align 2, !tbaa !7
  br label %80

80:                                               ; preds = %76, %74
  %81 = extractelement <16 x i1> %20, i64 10
  br i1 %81, label %82, label %86

82:                                               ; preds = %80
  %83 = add i64 %15, 75
  %84 = getelementptr inbounds [256 x i8], ptr @TR, i64 0, i64 %83
  %85 = add i8 %16, 107
  store i8 %85, ptr %84, align 1, !tbaa !7
  br label %86

86:                                               ; preds = %82, %80
  %87 = extractelement <16 x i1> %20, i64 11
  br i1 %87, label %88, label %92

88:                                               ; preds = %86
  %89 = add i64 %15, 76
  %90 = getelementptr inbounds [256 x i8], ptr @TR, i64 0, i64 %89
  %91 = add i8 %16, 108
  store i8 %91, ptr %90, align 4, !tbaa !7
  br label %92

92:                                               ; preds = %88, %86
  %93 = extractelement <16 x i1> %20, i64 12
  br i1 %93, label %94, label %98

94:                                               ; preds = %92
  %95 = add i64 %15, 77
  %96 = getelementptr inbounds [256 x i8], ptr @TR, i64 0, i64 %95
  %97 = add i8 %16, 109
  store i8 %97, ptr %96, align 1, !tbaa !7
  br label %98

98:                                               ; preds = %94, %92
  %99 = extractelement <16 x i1> %20, i64 13
  br i1 %99, label %100, label %104

100:                                              ; preds = %98
  %101 = add i64 %15, 78
  %102 = getelementptr inbounds [256 x i8], ptr @TR, i64 0, i64 %101
  %103 = add i8 %16, 110
  store i8 %103, ptr %102, align 2, !tbaa !7
  br label %104

104:                                              ; preds = %100, %98
  %105 = extractelement <16 x i1> %20, i64 14
  br i1 %105, label %106, label %110

106:                                              ; preds = %104
  %107 = add i64 %15, 79
  %108 = getelementptr inbounds [256 x i8], ptr @TR, i64 0, i64 %107
  %109 = add i8 %16, 111
  store i8 %109, ptr %108, align 1, !tbaa !7
  br label %110

110:                                              ; preds = %106, %104
  %111 = extractelement <16 x i1> %20, i64 15
  br i1 %111, label %112, label %116

112:                                              ; preds = %110
  %113 = add i64 %15, 80
  %114 = getelementptr inbounds [256 x i8], ptr @TR, i64 0, i64 %113
  %115 = add i8 %16, 112
  store i8 %115, ptr %114, align 16, !tbaa !7
  br label %116

116:                                              ; preds = %112, %110
  %117 = add i64 %15, 16
  %118 = icmp eq i64 %117, 32
  br i1 %118, label %119, label %14, !llvm.loop !178

119:                                              ; preds = %116, %11
  %120 = load i32, ptr @WORDBOUND, align 4, !tbaa !10
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %136, label %122

122:                                              ; preds = %119
  %123 = tail call ptr @__ctype_b_loc() #37
  br label %124

124:                                              ; preds = %133, %122
  %125 = phi i64 [ 0, %122 ], [ %134, %133 ]
  %126 = load ptr, ptr %123, align 8, !tbaa !45
  %127 = getelementptr inbounds i16, ptr %126, i64 %125
  %128 = load i16, ptr %127, align 2, !tbaa !62
  %129 = and i16 %128, 8
  %130 = icmp eq i16 %129, 0
  br i1 %130, label %131, label %133

131:                                              ; preds = %124
  %132 = getelementptr inbounds [256 x i8], ptr @TR, i64 0, i64 %125
  store i8 -128, ptr %132, align 1, !tbaa !7
  br label %133

133:                                              ; preds = %131, %124
  %134 = add nuw nsw i64 %125, 1
  %135 = icmp eq i64 %134, 128
  br i1 %135, label %136, label %124, !llvm.loop !179

136:                                              ; preds = %133, %119
  %137 = load i32, ptr @WHOLELINE, align 4, !tbaa !10
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %155, label %139

139:                                              ; preds = %136
  %140 = load i32, ptr %1, align 4, !tbaa !10
  %141 = sext i32 %140 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %3, ptr align 1 %0, i64 %141, i1 false)
  store i8 10, ptr %0, align 1, !tbaa !7
  %142 = getelementptr inbounds i8, ptr %0, i64 1
  %143 = load i32, ptr %1, align 4, !tbaa !10
  %144 = sext i32 %143 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %142, ptr nonnull align 16 %3, i64 %144, i1 false)
  %145 = load i32, ptr %1, align 4, !tbaa !10
  %146 = add nsw i32 %145, 1
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i8, ptr %0, i64 %147
  store i8 10, ptr %148, align 1, !tbaa !7
  %149 = load i32, ptr %1, align 4, !tbaa !10
  %150 = add nsw i32 %149, 2
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i8, ptr %0, i64 %151
  store i8 0, ptr %152, align 1, !tbaa !7
  %153 = load i32, ptr %1, align 4, !tbaa !10
  %154 = add nsw i32 %153, 2
  store i32 %154, ptr %1, align 4, !tbaa !10
  br label %155

155:                                              ; preds = %139, %136
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %3)
  ret void
}

; Function Attrs: nofree nounwind optsize uwtable
define internal void @s_output(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #9 {
  %3 = load i32, ptr @SILENT, align 4, !tbaa !10
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %54

5:                                                ; preds = %2
  %6 = load i32, ptr @COUNT, align 4, !tbaa !10
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %21, label %8

8:                                                ; preds = %5
  %9 = load i32, ptr %1, align 4, !tbaa !10
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i8, ptr %0, i64 %10
  %12 = load i8, ptr %11, align 1, !tbaa !7
  %13 = icmp eq i8 %12, 10
  br i1 %13, label %54, label %14

14:                                               ; preds = %14, %8
  %15 = phi i64 [ %16, %14 ], [ %10, %8 ]
  %16 = add i64 %15, 1
  %17 = trunc i64 %16 to i32
  store i32 %17, ptr %1, align 4, !tbaa !10
  %18 = getelementptr inbounds i8, ptr %0, i64 %16
  %19 = load i8, ptr %18, align 1, !tbaa !7
  %20 = icmp eq i8 %19, 10
  br i1 %20, label %54, label %14, !llvm.loop !180

21:                                               ; preds = %5
  %22 = load i32, ptr @FNAME, align 4, !tbaa !10
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.96, ptr noundef nonnull @CurrentFileName) #34
  br label %26

26:                                               ; preds = %24, %21
  %27 = load i32, ptr %1, align 4, !tbaa !10
  %28 = sext i32 %27 to i64
  br label %29

29:                                               ; preds = %29, %26
  %30 = phi i64 [ %31, %29 ], [ %28, %26 ]
  %31 = add nsw i64 %30, -1
  %32 = getelementptr inbounds i8, ptr %0, i64 %31
  %33 = load i8, ptr %32, align 1, !tbaa !7
  %34 = icmp eq i8 %33, 10
  br i1 %34, label %35, label %29, !llvm.loop !181

35:                                               ; preds = %29
  %.lcssa = phi i64 [ %30, %29 ]
  %36 = shl i64 %.lcssa, 32
  %37 = ashr exact i64 %36, 32
  %38 = getelementptr inbounds i8, ptr %0, i64 %37
  %39 = load i8, ptr %38, align 1, !tbaa !7
  %40 = icmp eq i8 %39, 10
  br i1 %40, label %50, label %41

41:                                               ; preds = %41, %35
  %42 = phi i64 [ %46, %41 ], [ %.lcssa, %35 ]
  %43 = phi i8 [ %48, %41 ], [ %39, %35 ]
  %44 = zext i8 %43 to i32
  %45 = tail call i32 @putchar(i32 noundef %44) #34
  %46 = add i64 %42, 1
  %47 = getelementptr inbounds i8, ptr %0, i64 %46
  %48 = load i8, ptr %47, align 1, !tbaa !7
  %49 = icmp eq i8 %48, 10
  br i1 %49, label %50, label %41, !llvm.loop !182

50:                                               ; preds = %41, %35
  %51 = phi i64 [ %.lcssa, %35 ], [ %46, %41 ]
  %52 = trunc i64 %51 to i32
  %53 = tail call i32 @putchar(i32 noundef 10) #34
  store i32 %52, ptr %1, align 4, !tbaa !10
  br label %54

54:                                               ; preds = %50, %14, %8, %2
  ret void
}

; Function Attrs: nofree nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal i32 @verify(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3, ptr noundef %4) #22 {
  %6 = alloca [256 x i32], align 16
  %7 = alloca [256 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %6) #31
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %7) #31
  %8 = sext i32 %1 to i64
  %9 = getelementptr inbounds i8, ptr %4, i64 %8
  %10 = icmp slt i32 %0, -1
  br i1 %10, label %14, label %11

11:                                               ; preds = %5
  %12 = add i32 %0, 2
  %13 = zext i32 %12 to i64
  br label %21

14:                                               ; preds = %21, %5
  %15 = icmp sgt i32 %1, 0
  br i1 %15, label %16, label %197

16:                                               ; preds = %14
  %17 = add i32 %0, 2
  %18 = load i8, ptr %4, align 1, !tbaa !7
  %19 = zext i32 %17 to i64
  %20 = zext i32 %17 to i64
  br label %28

21:                                               ; preds = %21, %11
  %22 = phi i64 [ 0, %11 ], [ %26, %21 ]
  %23 = getelementptr inbounds [256 x i32], ptr %7, i64 0, i64 %22
  %24 = trunc i64 %22 to i32
  store i32 %24, ptr %23, align 4, !tbaa !10
  %25 = getelementptr inbounds [256 x i32], ptr %6, i64 0, i64 %22
  store i32 %24, ptr %25, align 4, !tbaa !10
  %26 = add nuw nsw i64 %22, 1
  %27 = icmp eq i64 %26, %13
  br i1 %27, label %14, label %21, !llvm.loop !183

28:                                               ; preds = %194, %16
  %29 = phi i8 [ %18, %16 ], [ %183, %194 ]
  %30 = phi ptr [ %4, %16 ], [ %143, %194 ]
  %31 = phi i32 [ %2, %16 ], [ %195, %194 ]
  %32 = icmp slt i32 %31, 1
  br i1 %32, label %57, label %33

33:                                               ; preds = %28
  %34 = add nuw i32 %31, 1
  %35 = zext i32 %34 to i64
  br label %36

36:                                               ; preds = %52, %33
  %37 = phi i64 [ 1, %33 ], [ %55, %52 ]
  %38 = add nsw i64 %37, -1
  %39 = getelementptr inbounds [256 x i32], ptr %7, i64 0, i64 %38
  %40 = load i32, ptr %39, align 4, !tbaa !10
  %41 = getelementptr inbounds i8, ptr %3, i64 %38
  %42 = load i8, ptr %41, align 1, !tbaa !7
  %43 = icmp eq i8 %42, %29
  br i1 %43, label %52, label %44

44:                                               ; preds = %36
  %45 = getelementptr inbounds [256 x i32], ptr %7, i64 0, i64 %37
  %46 = load i32, ptr %45, align 4, !tbaa !10
  %47 = tail call i32 @llvm.smin.i32(i32 %46, i32 %40)
  %48 = getelementptr inbounds [256 x i32], ptr %6, i64 0, i64 %38
  %49 = load i32, ptr %48, align 4, !tbaa !10
  %50 = tail call i32 @llvm.smin.i32(i32 %49, i32 %47)
  %51 = add nsw i32 %50, 1
  br label %52

52:                                               ; preds = %44, %36
  %53 = phi i32 [ %40, %36 ], [ %51, %44 ]
  %54 = getelementptr inbounds [256 x i32], ptr %6, i64 0, i64 %37
  store i32 %53, ptr %54, align 4, !tbaa !10
  %55 = add nuw nsw i64 %37, 1
  %56 = icmp eq i64 %55, %35
  br i1 %56, label %57, label %36, !llvm.loop !184

57:                                               ; preds = %52, %28
  %58 = sext i32 %31 to i64
  %59 = getelementptr inbounds i8, ptr %3, i64 %58
  %60 = load i8, ptr %59, align 1, !tbaa !7
  %61 = getelementptr inbounds i8, ptr %30, i64 1
  %62 = icmp eq i8 %60, %29
  br i1 %62, label %66, label %63

63:                                               ; preds = %57
  %64 = getelementptr inbounds [256 x i32], ptr %6, i64 0, i64 %58
  %65 = load i32, ptr %64, align 4, !tbaa !10
  br label %72

66:                                               ; preds = %57
  %67 = getelementptr inbounds [256 x i32], ptr %7, i64 0, i64 %58
  %68 = load i32, ptr %67, align 4, !tbaa !10
  %69 = add nsw i32 %31, 1
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [256 x i32], ptr %6, i64 0, i64 %70
  store i32 %68, ptr %71, align 4, !tbaa !10
  br label %72

72:                                               ; preds = %66, %63
  %73 = phi i32 [ %68, %66 ], [ %65, %63 ]
  %74 = phi i32 [ %69, %66 ], [ %31, %63 ]
  %75 = icmp slt i32 %73, %2
  br i1 %75, label %76, label %82

76:                                               ; preds = %72
  %77 = add nsw i32 %74, 1
  %78 = add nsw i32 %73, 1
  %79 = add nsw i32 %74, 2
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [256 x i32], ptr %6, i64 0, i64 %80
  store i32 %78, ptr %81, align 4, !tbaa !10
  br label %82

82:                                               ; preds = %76, %72
  %83 = phi i32 [ %77, %76 ], [ %74, %72 ]
  %84 = sext i32 %83 to i64
  br label %85

85:                                               ; preds = %85, %82
  %86 = phi i64 [ %90, %85 ], [ %84, %82 ]
  %87 = getelementptr inbounds [256 x i32], ptr %6, i64 0, i64 %86
  %88 = load i32, ptr %87, align 4, !tbaa !10
  %89 = icmp sgt i32 %88, %2
  %90 = add i64 %86, -1
  br i1 %89, label %85, label %91, !llvm.loop !185

91:                                               ; preds = %85
  %.lcssa = phi i64 [ %86, %85 ]
  %92 = trunc i64 %.lcssa to i32
  %93 = icmp slt i32 %92, %0
  br i1 %93, label %100, label %94

94:                                               ; preds = %91
  %.lcssa2 = phi ptr [ %61, %91 ]
  %95 = ptrtoint ptr %.lcssa2 to i64
  %96 = ptrtoint ptr %4 to i64
  %97 = xor i64 %96, -1
  %98 = add i64 %95, %97
  %99 = trunc i64 %98 to i32
  br label %197

100:                                              ; preds = %91
  %101 = load i8, ptr %61, align 1, !tbaa !7
  %102 = icmp ne i8 %101, 10
  %103 = or i1 %102, %10
  %104 = select i1 %102, i32 %92, i32 %2
  br i1 %103, label %112, label %105

105:                                              ; preds = %105, %100
  %106 = phi i64 [ %110, %105 ], [ 0, %100 ]
  %107 = getelementptr inbounds [256 x i32], ptr %7, i64 0, i64 %106
  %108 = trunc i64 %106 to i32
  store i32 %108, ptr %107, align 4, !tbaa !10
  %109 = getelementptr inbounds [256 x i32], ptr %6, i64 0, i64 %106
  store i32 %108, ptr %109, align 4, !tbaa !10
  %110 = add nuw nsw i64 %106, 1
  %111 = icmp eq i64 %110, %19
  br i1 %111, label %112, label %105, !llvm.loop !186

112:                                              ; preds = %105, %100
  %113 = phi i32 [ %104, %100 ], [ %2, %105 ]
  %114 = icmp slt i32 %113, 1
  br i1 %114, label %139, label %115

115:                                              ; preds = %112
  %116 = add nuw i32 %113, 1
  %117 = zext i32 %116 to i64
  br label %118

118:                                              ; preds = %134, %115
  %119 = phi i64 [ 1, %115 ], [ %137, %134 ]
  %120 = add nsw i64 %119, -1
  %121 = getelementptr inbounds [256 x i32], ptr %6, i64 0, i64 %120
  %122 = load i32, ptr %121, align 4, !tbaa !10
  %123 = getelementptr inbounds i8, ptr %3, i64 %120
  %124 = load i8, ptr %123, align 1, !tbaa !7
  %125 = icmp eq i8 %124, %101
  br i1 %125, label %134, label %126

126:                                              ; preds = %118
  %127 = getelementptr inbounds [256 x i32], ptr %6, i64 0, i64 %119
  %128 = load i32, ptr %127, align 4, !tbaa !10
  %129 = tail call i32 @llvm.smin.i32(i32 %128, i32 %122)
  %130 = getelementptr inbounds [256 x i32], ptr %7, i64 0, i64 %120
  %131 = load i32, ptr %130, align 4, !tbaa !10
  %132 = tail call i32 @llvm.smin.i32(i32 %131, i32 %129)
  %133 = add nsw i32 %132, 1
  br label %134

134:                                              ; preds = %126, %118
  %135 = phi i32 [ %122, %118 ], [ %133, %126 ]
  %136 = getelementptr inbounds [256 x i32], ptr %7, i64 0, i64 %119
  store i32 %135, ptr %136, align 4, !tbaa !10
  %137 = add nuw nsw i64 %119, 1
  %138 = icmp eq i64 %137, %117
  br i1 %138, label %139, label %118, !llvm.loop !187

139:                                              ; preds = %134, %112
  %140 = sext i32 %113 to i64
  %141 = getelementptr inbounds i8, ptr %3, i64 %140
  %142 = load i8, ptr %141, align 1, !tbaa !7
  %143 = getelementptr inbounds i8, ptr %30, i64 2
  %144 = icmp eq i8 %142, %101
  br i1 %144, label %148, label %145

145:                                              ; preds = %139
  %146 = getelementptr inbounds [256 x i32], ptr %7, i64 0, i64 %140
  %147 = load i32, ptr %146, align 4, !tbaa !10
  br label %154

148:                                              ; preds = %139
  %149 = getelementptr inbounds [256 x i32], ptr %6, i64 0, i64 %140
  %150 = load i32, ptr %149, align 4, !tbaa !10
  %151 = add nsw i32 %113, 1
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds [256 x i32], ptr %7, i64 0, i64 %152
  store i32 %150, ptr %153, align 4, !tbaa !10
  br label %154

154:                                              ; preds = %148, %145
  %155 = phi i32 [ %150, %148 ], [ %147, %145 ]
  %156 = phi i32 [ %151, %148 ], [ %113, %145 ]
  %157 = icmp slt i32 %155, %2
  br i1 %157, label %158, label %164

158:                                              ; preds = %154
  %159 = add nsw i32 %156, 1
  %160 = add nsw i32 %155, 1
  %161 = add nsw i32 %156, 2
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds [256 x i32], ptr %7, i64 0, i64 %162
  store i32 %160, ptr %163, align 4, !tbaa !10
  br label %164

164:                                              ; preds = %158, %154
  %165 = phi i32 [ %159, %158 ], [ %156, %154 ]
  %166 = sext i32 %165 to i64
  br label %167

167:                                              ; preds = %167, %164
  %168 = phi i64 [ %172, %167 ], [ %166, %164 ]
  %169 = getelementptr inbounds [256 x i32], ptr %7, i64 0, i64 %168
  %170 = load i32, ptr %169, align 4, !tbaa !10
  %171 = icmp sgt i32 %170, %2
  %172 = add i64 %168, -1
  br i1 %171, label %167, label %173, !llvm.loop !188

173:                                              ; preds = %167
  %.lcssa1 = phi i64 [ %168, %167 ]
  %174 = trunc i64 %.lcssa1 to i32
  %175 = icmp slt i32 %174, %0
  br i1 %175, label %182, label %176

176:                                              ; preds = %173
  %.lcssa4 = phi ptr [ %143, %173 ]
  %177 = ptrtoint ptr %.lcssa4 to i64
  %178 = ptrtoint ptr %4 to i64
  %179 = xor i64 %178, -1
  %180 = add i64 %177, %179
  %181 = trunc i64 %180 to i32
  br label %197

182:                                              ; preds = %173
  %183 = load i8, ptr %143, align 1, !tbaa !7
  %184 = icmp ne i8 %183, 10
  %185 = or i1 %184, %10
  %186 = select i1 %184, i32 %174, i32 %2
  br i1 %185, label %194, label %187

187:                                              ; preds = %187, %182
  %188 = phi i64 [ %192, %187 ], [ 0, %182 ]
  %189 = getelementptr inbounds [256 x i32], ptr %7, i64 0, i64 %188
  %190 = trunc i64 %188 to i32
  store i32 %190, ptr %189, align 4, !tbaa !10
  %191 = getelementptr inbounds [256 x i32], ptr %6, i64 0, i64 %188
  store i32 %190, ptr %191, align 4, !tbaa !10
  %192 = add nuw nsw i64 %188, 1
  %193 = icmp eq i64 %192, %20
  br i1 %193, label %194, label %187, !llvm.loop !189

194:                                              ; preds = %187, %182
  %195 = phi i32 [ %186, %182 ], [ %2, %187 ]
  %196 = icmp ult ptr %143, %9
  br i1 %196, label %28, label %197, !llvm.loop !190

197:                                              ; preds = %194, %176, %94, %14
  %198 = phi i32 [ %99, %94 ], [ %181, %176 ], [ 0, %14 ], [ 0, %194 ]
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %7) #31
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %6) #31
  ret i32 %198
}

; Function Attrs: nofree nounwind optsize uwtable
define internal void @bm(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef readonly %2, ptr noundef readnone %3) #9 {
  %5 = load i32, ptr @shift_1, align 4, !tbaa !10
  %6 = icmp ugt ptr %2, %3
  br i1 %6, label %129, label %7

7:                                                ; preds = %4
  %8 = sext i32 %1 to i64
  %9 = sub nsw i64 0, %8
  %10 = zext i32 %1 to i64
  br label %11

11:                                               ; preds = %125, %7
  %12 = phi ptr [ %2, %7 ], [ %127, %125 ]
  %13 = phi i32 [ 0, %7 ], [ %126, %125 ]
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i8, ptr %12, i64 %14
  %16 = load i8, ptr %15, align 1, !tbaa !7
  %17 = zext i8 %16 to i64
  %18 = getelementptr inbounds [256 x i8], ptr @SHIFT, i64 0, i64 %17
  %19 = load i8, ptr %18, align 1, !tbaa !7
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %23, %11
  %22 = phi ptr [ %15, %11 ], [ %39, %23 ]
  br label %45

23:                                               ; preds = %23, %11
  %24 = phi i8 [ %43, %23 ], [ %19, %11 ]
  %25 = phi ptr [ %39, %23 ], [ %15, %11 ]
  %26 = zext i8 %24 to i64
  %27 = getelementptr inbounds i8, ptr %25, i64 %26
  %28 = load i8, ptr %27, align 1, !tbaa !7
  %29 = zext i8 %28 to i64
  %30 = getelementptr inbounds [256 x i8], ptr @SHIFT, i64 0, i64 %29
  %31 = load i8, ptr %30, align 1, !tbaa !7
  %32 = zext i8 %31 to i64
  %33 = getelementptr inbounds i8, ptr %27, i64 %32
  %34 = load i8, ptr %33, align 1, !tbaa !7
  %35 = zext i8 %34 to i64
  %36 = getelementptr inbounds [256 x i8], ptr @SHIFT, i64 0, i64 %35
  %37 = load i8, ptr %36, align 1, !tbaa !7
  %38 = zext i8 %37 to i64
  %39 = getelementptr inbounds i8, ptr %33, i64 %38
  %40 = load i8, ptr %39, align 1, !tbaa !7
  %41 = zext i8 %40 to i64
  %42 = getelementptr inbounds [256 x i8], ptr @SHIFT, i64 0, i64 %41
  %43 = load i8, ptr %42, align 1, !tbaa !7
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %21, label %23, !llvm.loop !191

45:                                               ; preds = %63, %21
  %46 = phi i64 [ 0, %21 ], [ %64, %63 ]
  %47 = trunc i64 %46 to i32
  %48 = xor i32 %47, -1
  %49 = add i32 %48, %1
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, ptr %0, i64 %50
  %52 = load i8, ptr %51, align 1, !tbaa !7
  %53 = zext i8 %52 to i64
  %54 = getelementptr inbounds [256 x i8], ptr @TR, i64 0, i64 %53
  %55 = load i8, ptr %54, align 1, !tbaa !7
  %56 = sub nsw i64 0, %46
  %57 = getelementptr inbounds i8, ptr %22, i64 %56
  %58 = load i8, ptr %57, align 1, !tbaa !7
  %59 = zext i8 %58 to i64
  %60 = getelementptr inbounds [256 x i8], ptr @TR, i64 0, i64 %59
  %61 = load i8, ptr %60, align 1, !tbaa !7
  %62 = icmp eq i8 %55, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %45
  %64 = add nuw nsw i64 %46, 1
  %65 = icmp eq i64 %64, %10
  br i1 %65, label %68, label %45, !llvm.loop !192

66:                                               ; preds = %45
  %.lcssa = phi i32 [ %47, %45 ]
  %67 = icmp eq i32 %.lcssa, %1
  br i1 %67, label %68, label %125

68:                                               ; preds = %66, %63
  %69 = icmp ugt ptr %22, %3
  br i1 %69, label %129, label %70

70:                                               ; preds = %68
  %71 = load i32, ptr @WORDBOUND, align 4, !tbaa !10
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %87, label %73

73:                                               ; preds = %70
  %74 = getelementptr inbounds i8, ptr %22, i64 1
  %75 = load i8, ptr %74, align 1, !tbaa !7
  %76 = zext i8 %75 to i64
  %77 = getelementptr inbounds [256 x i8], ptr @TR, i64 0, i64 %76
  %78 = load i8, ptr %77, align 1, !tbaa !7
  %79 = icmp eq i8 %78, -128
  br i1 %79, label %80, label %125

80:                                               ; preds = %73
  %81 = getelementptr inbounds i8, ptr %22, i64 %9
  %82 = load i8, ptr %81, align 1, !tbaa !7
  %83 = zext i8 %82 to i64
  %84 = getelementptr inbounds [256 x i8], ptr @TR, i64 0, i64 %83
  %85 = load i8, ptr %84, align 1, !tbaa !7
  %86 = icmp eq i8 %85, -128
  br i1 %86, label %87, label %125

87:                                               ; preds = %80, %70
  %88 = load i32, ptr @num_of_matched, align 4, !tbaa !10
  %89 = add nsw i32 %88, 1
  store i32 %89, ptr @num_of_matched, align 4, !tbaa !10
  %90 = load i32, ptr @FILENAMEONLY, align 4, !tbaa !10
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %129

92:                                               ; preds = %87
  %93 = load i32, ptr @COUNT, align 4, !tbaa !10
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %120

95:                                               ; preds = %92
  %96 = load i32, ptr @FNAME, align 4, !tbaa !10
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %100, label %98

98:                                               ; preds = %95
  %99 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.96, ptr noundef nonnull @CurrentFileName) #34
  br label %100

100:                                              ; preds = %98, %95
  br label %101

101:                                              ; preds = %101, %100
  %102 = phi ptr [ %103, %101 ], [ %22, %100 ]
  %103 = getelementptr inbounds i8, ptr %102, i64 -1
  %104 = load i8, ptr %103, align 1, !tbaa !7
  %105 = icmp eq i8 %104, 10
  br i1 %105, label %106, label %101, !llvm.loop !193

106:                                              ; preds = %101
  %.lcssa2 = phi ptr [ %102, %101 ]
  %107 = load i8, ptr %.lcssa2, align 1, !tbaa !7
  %108 = icmp eq i8 %107, 10
  br i1 %108, label %117, label %109

109:                                              ; preds = %109, %106
  %110 = phi i8 [ %115, %109 ], [ %107, %106 ]
  %111 = phi ptr [ %114, %109 ], [ %.lcssa2, %106 ]
  %112 = zext i8 %110 to i32
  %113 = tail call i32 @putchar(i32 noundef %112) #34
  %114 = getelementptr inbounds i8, ptr %111, i64 1
  %115 = load i8, ptr %114, align 1, !tbaa !7
  %116 = icmp eq i8 %115, 10
  br i1 %116, label %117, label %109, !llvm.loop !194

117:                                              ; preds = %109, %106
  %118 = phi ptr [ %.lcssa2, %106 ], [ %114, %109 ]
  %119 = tail call i32 @putchar(i32 noundef 10) #34
  br label %125

120:                                              ; preds = %120, %92
  %121 = phi ptr [ %124, %120 ], [ %22, %92 ]
  %122 = load i8, ptr %121, align 1, !tbaa !7
  %123 = icmp eq i8 %122, 10
  %124 = getelementptr inbounds i8, ptr %121, i64 1
  br i1 %123, label %125, label %120, !llvm.loop !195

125:                                              ; preds = %120, %117, %80, %73, %66
  %126 = phi i32 [ 1, %117 ], [ 1, %80 ], [ 1, %73 ], [ %5, %66 ], [ 1, %120 ]
  %127 = phi ptr [ %118, %117 ], [ %22, %80 ], [ %22, %73 ], [ %22, %66 ], [ %121, %120 ]
  %128 = icmp ugt ptr %127, %3
  br i1 %128, label %129, label %11, !llvm.loop !196

129:                                              ; preds = %125, %87, %68, %4
  ret void
}

; Function Attrs: nofree nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal void @initmask(ptr nocapture noundef %0, ptr nocapture noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef writeonly %4) #23 {
  %6 = xor i32 %3, -1
  %7 = icmp slt i32 %3, 0
  br i1 %7, label %25, label %8

8:                                                ; preds = %5
  %9 = and i32 %3, -4
  %10 = insertelement <4 x i32> poison, i32 %3, i64 0
  %11 = shufflevector <4 x i32> %10, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %12

12:                                               ; preds = %12, %8
  %13 = phi i32 [ 0, %8 ], [ %18, %12 ]
  %14 = phi <4 x i32> [ zeroinitializer, %8 ], [ %17, %12 ]
  %15 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %8 ], [ %19, %12 ]
  %16 = lshr <4 x i32> <i32 -2147483648, i32 -2147483648, i32 -2147483648, i32 -2147483648>, %15
  %17 = or <4 x i32> %14, %16
  %18 = add i32 %13, 4
  %19 = add <4 x i32> %15, <i32 4, i32 4, i32 4, i32 4>
  %20 = icmp eq i32 %13, %9
  br i1 %20, label %21, label %12, !llvm.loop !197

21:                                               ; preds = %12
  %.lcssa2 = phi <4 x i32> [ %14, %12 ]
  %.lcssa1 = phi <4 x i32> [ %15, %12 ]
  %.lcssa = phi <4 x i32> [ %17, %12 ]
  %22 = icmp ugt <4 x i32> %.lcssa1, %11
  %23 = select <4 x i1> %22, <4 x i32> %.lcssa2, <4 x i32> %.lcssa
  %24 = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %23)
  br label %25

25:                                               ; preds = %21, %5
  %26 = phi i32 [ 0, %5 ], [ %24, %21 ]
  %27 = add i32 %6, %2
  %28 = lshr i32 %26, %27
  store i32 %28, ptr %4, align 4, !tbaa !10
  %29 = icmp sgt i32 %2, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %25
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %1, i8 -1, i64 1024, i1 false), !tbaa !10
  br label %67

31:                                               ; preds = %25
  %32 = zext i32 %2 to i64
  br label %34

33:                                               ; preds = %39
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %1, i8 -1, i64 1024, i1 false), !tbaa !10
  br i1 %29, label %42, label %67

34:                                               ; preds = %39, %31
  %35 = phi i64 [ 0, %31 ], [ %40, %39 ]
  %36 = getelementptr inbounds i8, ptr %0, i64 %35
  %37 = load i8, ptr %36, align 1, !tbaa !7
  switch i8 %37, label %39 [
    i8 94, label %38
    i8 36, label %38
  ]

38:                                               ; preds = %34, %34
  store i8 10, ptr %36, align 1, !tbaa !7
  br label %39

39:                                               ; preds = %38, %34
  %40 = add nuw nsw i64 %35, 1
  %41 = icmp eq i64 %40, %32
  br i1 %41, label %33, label %34, !llvm.loop !198

42:                                               ; preds = %33
  %43 = zext i32 %2 to i64
  br label %44

44:                                               ; preds = %64, %42
  %45 = phi i64 [ 0, %42 ], [ %65, %64 ]
  %46 = getelementptr inbounds i8, ptr %0, i64 %45
  %47 = load i8, ptr %46, align 1, !tbaa !7
  %48 = zext i8 %47 to i64
  %49 = getelementptr inbounds i32, ptr %1, i64 %48
  br label %50

50:                                               ; preds = %61, %44
  %51 = phi i64 [ 0, %44 ], [ %62, %61 ]
  %52 = getelementptr inbounds i8, ptr %0, i64 %51
  %53 = load i8, ptr %52, align 1, !tbaa !7
  %54 = icmp eq i8 %47, %53
  br i1 %54, label %55, label %61

55:                                               ; preds = %50
  %56 = load i32, ptr %49, align 4, !tbaa !10
  %57 = trunc i64 %51 to i32
  %58 = lshr i32 -2147483648, %57
  %59 = xor i32 %58, -1
  %60 = and i32 %56, %59
  store i32 %60, ptr %49, align 4, !tbaa !10
  br label %61

61:                                               ; preds = %55, %50
  %62 = add nuw nsw i64 %51, 1
  %63 = icmp eq i64 %62, %43
  br i1 %63, label %64, label %50, !llvm.loop !199

64:                                               ; preds = %61
  %65 = add nuw nsw i64 %45, 1
  %66 = icmp eq i64 %65, %43
  br i1 %66, label %67, label %44, !llvm.loop !200

67:                                               ; preds = %64, %33, %30
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.or.v4i32(<4 x i32>) #19

; Function Attrs: nofree nosync nounwind optsize memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define internal void @prep(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #24 {
  %4 = add nsw i32 %2, 1
  %5 = sdiv i32 %1, %4
  %6 = mul i32 %5, %4
  %7 = trunc i32 %5 to i8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) @SHIFT, i8 %7, i64 256, i1 false), !tbaa !7
  %8 = srem i32 %1, %4
  %9 = add nsw i32 %1, -1
  %10 = icmp slt i32 %8, %1
  br i1 %10, label %11, label %31

11:                                               ; preds = %3
  %12 = sext i32 %1 to i64
  %13 = sext i32 %8 to i64
  br label %14

14:                                               ; preds = %29, %11
  %15 = phi i64 [ %12, %11 ], [ %16, %29 ]
  %16 = add nsw i64 %15, -1
  %17 = trunc i64 %16 to i32
  %18 = sub i32 %9, %17
  %19 = urem i32 %18, %5
  %20 = getelementptr inbounds i8, ptr %0, i64 %16
  %21 = load i8, ptr %20, align 1, !tbaa !7
  %22 = zext i8 %21 to i64
  %23 = getelementptr inbounds [256 x i8], ptr @SHIFT, i64 0, i64 %22
  %24 = load i8, ptr %23, align 1, !tbaa !7
  %25 = zext i8 %24 to i32
  %26 = icmp slt i32 %19, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %14
  %28 = trunc i32 %19 to i8
  store i8 %28, ptr %23, align 1, !tbaa !7
  br label %29

29:                                               ; preds = %27, %14
  %30 = icmp sgt i64 %16, %13
  br i1 %30, label %14, label %31, !llvm.loop !201

31:                                               ; preds = %29, %3
  store i32 %5, ptr @shift_1, align 4, !tbaa !10
  %32 = icmp slt i32 %2, 0
  br i1 %32, label %86, label %33

33:                                               ; preds = %31
  %34 = icmp ugt i32 %5, 1
  %35 = zext i32 %5 to i64
  %36 = zext i32 %4 to i64
  br label %37

37:                                               ; preds = %81, %33
  %38 = phi i32 [ %5, %33 ], [ %82, %81 ]
  %39 = phi i32 [ 0, %33 ], [ %84, %81 ]
  %40 = phi i32 [ %5, %33 ], [ %83, %81 ]
  br i1 %34, label %41, label %81

41:                                               ; preds = %37
  %42 = mul i32 %39, %5
  br label %43

43:                                               ; preds = %78, %41
  %44 = phi i32 [ %38, %41 ], [ %.lcssa2, %78 ]
  %45 = phi i64 [ 1, %41 ], [ %79, %78 ]
  %46 = phi i32 [ %40, %41 ], [ %.lcssa1, %78 ]
  %47 = phi i32 [ %40, %41 ], [ %.lcssa, %78 ]
  %48 = trunc i64 %45 to i32
  %49 = add i32 %42, %48
  %50 = sub i32 %9, %49
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, ptr %0, i64 %51
  br label %53

53:                                               ; preds = %71, %43
  %54 = phi i32 [ %44, %43 ], [ %72, %71 ]
  %55 = phi i64 [ 0, %43 ], [ %76, %71 ]
  %56 = phi i32 [ %46, %43 ], [ %73, %71 ]
  %57 = phi i32 [ %47, %43 ], [ %74, %71 ]
  %58 = phi i32 [ %47, %43 ], [ %75, %71 ]
  %59 = load i8, ptr %52, align 1, !tbaa !7
  %60 = trunc i64 %55 to i32
  %61 = mul i32 %5, %60
  %62 = sub i32 %9, %61
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds i8, ptr %0, i64 %63
  %65 = load i8, ptr %64, align 1, !tbaa !7
  %66 = icmp eq i8 %59, %65
  %67 = sext i32 %58 to i64
  %68 = icmp slt i64 %45, %67
  %69 = select i1 %66, i1 %68, i1 false
  br i1 %69, label %70, label %71

70:                                               ; preds = %53
  store i32 %48, ptr @shift_1, align 4, !tbaa !10
  br label %71

71:                                               ; preds = %70, %53
  %72 = phi i32 [ %54, %53 ], [ %48, %70 ]
  %73 = phi i32 [ %56, %53 ], [ %48, %70 ]
  %74 = phi i32 [ %57, %53 ], [ %48, %70 ]
  %75 = phi i32 [ %58, %53 ], [ %48, %70 ]
  %76 = add nuw nsw i64 %55, 1
  %77 = icmp eq i64 %76, %36
  br i1 %77, label %78, label %53, !llvm.loop !202

78:                                               ; preds = %71
  %.lcssa2 = phi i32 [ %72, %71 ]
  %.lcssa1 = phi i32 [ %73, %71 ]
  %.lcssa = phi i32 [ %74, %71 ]
  %79 = add nuw nsw i64 %45, 1
  %80 = icmp eq i64 %79, %35
  br i1 %80, label %81, label %43, !llvm.loop !203

81:                                               ; preds = %78, %37
  %82 = phi i32 [ %38, %37 ], [ %.lcssa2, %78 ]
  %83 = phi i32 [ %40, %37 ], [ %.lcssa1, %78 ]
  %84 = add nuw i32 %39, 1
  %85 = icmp eq i32 %39, %2
  br i1 %85, label %86, label %37, !llvm.loop !204

86:                                               ; preds = %81, %31
  %87 = phi i32 [ %5, %31 ], [ %82, %81 ]
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %86
  store i32 1, ptr @shift_1, align 4, !tbaa !10
  br label %90

90:                                               ; preds = %89, %86
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(8192) @MEMBER, i8 0, i64 8192, i1 false), !tbaa !7
  br i1 %32, label %119, label %91

91:                                               ; preds = %90
  %92 = tail call i32 @llvm.umin.i32(i32 %5, i32 3)
  %93 = icmp eq i32 %92, 0
  %94 = zext i32 %92 to i64
  br label %95

95:                                               ; preds = %113, %91
  %96 = phi i32 [ 0, %91 ], [ %117, %113 ]
  br i1 %93, label %113, label %97

97:                                               ; preds = %95
  %98 = mul i32 %96, %5
  br label %99

99:                                               ; preds = %99, %97
  %100 = phi i64 [ 0, %97 ], [ %111, %99 ]
  %101 = phi i32 [ 0, %97 ], [ %110, %99 ]
  %102 = shl i32 %101, 2
  %103 = trunc i64 %100 to i32
  %104 = add i32 %98, %103
  %105 = sub i32 %9, %104
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i8, ptr %0, i64 %106
  %108 = load i8, ptr %107, align 1, !tbaa !7
  %109 = zext i8 %108 to i32
  %110 = add i32 %102, %109
  %111 = add nuw nsw i64 %100, 1
  %112 = icmp eq i64 %111, %94
  br i1 %112, label %113, label %99, !llvm.loop !205

113:                                              ; preds = %99, %95
  %114 = phi i32 [ 0, %95 ], [ %110, %99 ]
  %115 = zext i32 %114 to i64
  %116 = getelementptr inbounds [8192 x i8], ptr @MEMBER, i64 0, i64 %115
  store i8 1, ptr %116, align 1, !tbaa !7
  %117 = add nuw i32 %96, 1
  %118 = icmp eq i32 %96, %2
  br i1 %118, label %119, label %95, !llvm.loop !206

119:                                              ; preds = %113, %90
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #19

; Function Attrs: nofree nounwind optsize uwtable
define internal void @agrep(ptr nocapture readnone %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) #9 {
  %6 = alloca [2048 x [2 x i32]], align 16
  %7 = alloca [21 x i32], align 16
  %8 = alloca [21 x i32], align 16
  %9 = alloca i32, align 4
  %10 = add nsw i32 %4, 1
  call void @llvm.lifetime.start.p0(i64 16384, ptr nonnull %6) #31
  call void @llvm.lifetime.start.p0(i64 84, ptr nonnull %7) #31
  call void @llvm.lifetime.start.p0(i64 84, ptr nonnull %8) #31
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #31
  %11 = getelementptr inbounds [2 x i32], ptr %6, i64 0, i64 1
  store i32 0, ptr %11, align 4, !tbaa !10
  store i32 0, ptr %6, align 16, !tbaa !10
  %12 = load i32, ptr @shift_1, align 4, !tbaa !10
  %13 = icmp ult ptr %2, %3
  br i1 %13, label %19, label %14

14:                                               ; preds = %5
  %15 = ptrtoint ptr %2 to i64
  %16 = ptrtoint ptr %3 to i64
  %17 = sub i64 %16, %15
  %18 = getelementptr inbounds [2048 x [2 x i32]], ptr %6, i64 0, i64 1
  store i32 2147483647, ptr %18, align 8
  br label %115

19:                                               ; preds = %5
  %20 = sdiv i32 %1, %10
  %21 = tail call i32 @llvm.smin.i32(i32 %20, i32 3)
  %22 = add nsw i32 %20, -1
  %23 = icmp ugt i32 %21, 1
  %24 = ptrtoint ptr %2 to i64
  %25 = add i32 %4, %1
  %26 = zext i32 %21 to i64
  %27 = sext i32 %22 to i64
  %28 = getelementptr inbounds i8, ptr %2, i64 %27
  %29 = icmp ult ptr %28, %3
  br i1 %29, label %30, label %106

30:                                               ; preds = %19
  %31 = sext i32 %12 to i64
  br label %32

32:                                               ; preds = %102, %30
  %33 = phi ptr [ %104, %102 ], [ %28, %30 ]
  %34 = phi i32 [ %103, %102 ], [ 0, %30 ]
  %35 = load i8, ptr %33, align 1, !tbaa !7
  %36 = zext i8 %35 to i64
  %37 = getelementptr inbounds [256 x i8], ptr @SHIFT, i64 0, i64 %36
  %38 = load i8, ptr %37, align 1, !tbaa !7
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %60, label %40

40:                                               ; preds = %46, %32
  %41 = phi i8 [ %56, %46 ], [ %38, %32 ]
  %42 = phi ptr [ %52, %46 ], [ %33, %32 ]
  %43 = zext i8 %41 to i64
  %44 = getelementptr inbounds i8, ptr %42, i64 %43
  %45 = icmp ult ptr %44, %3
  br i1 %45, label %46, label %60

46:                                               ; preds = %40
  %47 = load i8, ptr %44, align 1, !tbaa !7
  %48 = zext i8 %47 to i64
  %49 = getelementptr inbounds [256 x i8], ptr @SHIFT, i64 0, i64 %48
  %50 = load i8, ptr %49, align 1, !tbaa !7
  %51 = zext i8 %50 to i64
  %52 = getelementptr inbounds i8, ptr %44, i64 %51
  %53 = load i8, ptr %52, align 1, !tbaa !7
  %54 = zext i8 %53 to i64
  %55 = getelementptr inbounds [256 x i8], ptr @SHIFT, i64 0, i64 %54
  %56 = load i8, ptr %55, align 1, !tbaa !7
  %57 = icmp ult ptr %52, %3
  %58 = icmp ne i8 %56, 0
  %59 = select i1 %57, i1 %58, i1 false
  br i1 %59, label %40, label %60, !llvm.loop !207

60:                                               ; preds = %46, %40, %32
  %61 = phi ptr [ %33, %32 ], [ %52, %46 ], [ %44, %40 ]
  %62 = icmp ult ptr %61, %3
  br i1 %62, label %63, label %106

63:                                               ; preds = %60
  %64 = load i8, ptr %61, align 1, !tbaa !7
  %65 = zext i8 %64 to i32
  br i1 %23, label %66, label %77

66:                                               ; preds = %66, %63
  %67 = phi i64 [ %75, %66 ], [ 1, %63 ]
  %68 = phi i32 [ %74, %66 ], [ %65, %63 ]
  %69 = shl i32 %68, 2
  %70 = sub nsw i64 0, %67
  %71 = getelementptr inbounds i8, ptr %61, i64 %70
  %72 = load i8, ptr %71, align 1, !tbaa !7
  %73 = zext i8 %72 to i32
  %74 = add nsw i32 %69, %73
  %75 = add nuw nsw i64 %67, 1
  %76 = icmp eq i64 %75, %26
  br i1 %76, label %77, label %66, !llvm.loop !208

77:                                               ; preds = %66, %63
  %78 = phi i32 [ %65, %63 ], [ %74, %66 ]
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds [8192 x i8], ptr @MEMBER, i64 0, i64 %79
  %81 = load i8, ptr %80, align 1, !tbaa !7
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %102, label %83

83:                                               ; preds = %77
  %84 = ptrtoint ptr %61 to i64
  %85 = sub i64 %84, %24
  %86 = trunc i64 %85 to i32
  %87 = sub i32 %86, %25
  %88 = add nsw i32 %87, -10
  %89 = sext i32 %34 to i64
  %90 = getelementptr inbounds [2048 x [2 x i32]], ptr %6, i64 0, i64 %89, i64 1
  %91 = load i32, ptr %90, align 4, !tbaa !10
  %92 = icmp sgt i32 %88, %91
  br i1 %92, label %93, label %100

93:                                               ; preds = %83
  %94 = add nsw i32 %87, -2
  %95 = add nsw i32 %34, 1
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds [2048 x [2 x i32]], ptr %6, i64 0, i64 %96
  store i32 %94, ptr %97, align 8, !tbaa !10
  %98 = add i32 %25, %86
  %99 = getelementptr inbounds [2048 x [2 x i32]], ptr %6, i64 0, i64 %96, i64 1
  store i32 %98, ptr %99, align 4, !tbaa !10
  br label %102

100:                                              ; preds = %83
  %101 = add i32 %25, %86
  store i32 %101, ptr %90, align 4, !tbaa !10
  br label %102

102:                                              ; preds = %100, %93, %77
  %103 = phi i32 [ %95, %93 ], [ %34, %100 ], [ %34, %77 ]
  %104 = getelementptr inbounds i8, ptr %61, i64 %31
  %105 = icmp ult ptr %104, %3
  br i1 %105, label %32, label %106

106:                                              ; preds = %102, %60, %19
  %107 = phi i32 [ 0, %19 ], [ %34, %60 ], [ %103, %102 ]
  %108 = getelementptr inbounds [2048 x [2 x i32]], ptr %6, i64 0, i64 1
  %109 = load i32, ptr %108, align 8, !tbaa !10
  %110 = ptrtoint ptr %3 to i64
  %111 = sub i64 %110, %24
  %112 = getelementptr inbounds [2048 x [2 x i32]], ptr %6, i64 0, i64 1
  %113 = tail call i32 @llvm.smax.i32(i32 %109, i32 0)
  store i32 %113, ptr %112, align 8
  %114 = icmp slt i32 %107, 0
  br i1 %114, label %262, label %115

115:                                              ; preds = %106, %14
  %116 = phi i64 [ %17, %14 ], [ %111, %106 ]
  %117 = phi i32 [ 0, %14 ], [ %107, %106 ]
  %118 = trunc i64 %116 to i32
  %119 = load i32, ptr @endposition, align 4, !tbaa !10
  %120 = getelementptr inbounds [21 x i32], ptr %8, i64 0, i64 1
  %121 = getelementptr inbounds [21 x i32], ptr %7, i64 0, i64 1
  %122 = icmp slt i32 %4, 1
  %123 = icmp slt i32 %4, 0
  %124 = sext i32 %4 to i64
  %125 = getelementptr inbounds [21 x i32], ptr %7, i64 0, i64 %124
  %126 = getelementptr inbounds [21 x i32], ptr %8, i64 0, i64 %124
  %127 = zext i32 %10 to i64
  %128 = shl nuw nsw i64 %127, 2
  %129 = add nuw i32 %117, 1
  %130 = zext i32 %129 to i64
  br label %131

131:                                              ; preds = %258, %115
  %132 = phi i64 [ 0, %115 ], [ %260, %258 ]
  %133 = phi i32 [ 0, %115 ], [ %259, %258 ]
  %134 = getelementptr inbounds [2048 x [2 x i32]], ptr %6, i64 0, i64 %132
  %135 = load i32, ptr %134, align 8, !tbaa !10
  %136 = getelementptr inbounds [2048 x [2 x i32]], ptr %6, i64 0, i64 %132, i64 1
  %137 = load i32, ptr %136, align 4, !tbaa !10
  %138 = tail call i32 @llvm.smin.i32(i32 %137, i32 %118)
  store i32 %138, ptr %136, align 4
  %139 = tail call i32 @llvm.smax.i32(i32 %135, i32 0)
  store i32 -1, ptr %8, align 16, !tbaa !10
  store i32 2147483647, ptr %120, align 4, !tbaa !10
  store i32 2147483647, ptr %121, align 4, !tbaa !10
  br i1 %122, label %140, label %142

140:                                              ; preds = %142, %131
  %141 = icmp slt i32 %139, %138
  br i1 %141, label %151, label %258

142:                                              ; preds = %142, %131
  %143 = phi i32 [ %146, %142 ], [ -1, %131 ]
  %144 = phi i64 [ %149, %142 ], [ 1, %131 ]
  %145 = lshr i32 %143, 1
  %146 = and i32 %145, %143
  %147 = getelementptr inbounds [21 x i32], ptr %8, i64 0, i64 %144
  store i32 %146, ptr %147, align 4, !tbaa !10
  %148 = getelementptr inbounds [21 x i32], ptr %7, i64 0, i64 %144
  store i32 %146, ptr %148, align 4, !tbaa !10
  %149 = add nuw nsw i64 %144, 1
  %150 = icmp eq i64 %149, %127
  br i1 %150, label %140, label %142, !llvm.loop !209

151:                                              ; preds = %254, %140
  %152 = phi i32 [ %256, %254 ], [ %139, %140 ]
  %153 = phi i32 [ %255, %254 ], [ %133, %140 ]
  %154 = add nsw i32 %152, 1
  %155 = sext i32 %152 to i64
  %156 = getelementptr inbounds i8, ptr %2, i64 %155
  %157 = load i8, ptr %156, align 1, !tbaa !7
  %158 = icmp ne i8 %157, 10
  %159 = or i1 %158, %123
  br i1 %159, label %161, label %160

160:                                              ; preds = %151
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %8, i8 -1, i64 %128, i1 false), !tbaa !10
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %7, i8 -1, i64 %128, i1 false), !tbaa !10
  br label %161

161:                                              ; preds = %160, %151
  %162 = zext i8 %157 to i64
  %163 = getelementptr inbounds [0 x i32], ptr @Mask, i64 0, i64 %162
  %164 = load i32, ptr %163, align 4, !tbaa !10
  %165 = load i32, ptr %8, align 16, !tbaa !10
  %166 = lshr i32 %165, 1
  %167 = or i32 %166, %164
  store i32 %167, ptr %7, align 16, !tbaa !10
  br i1 %122, label %183, label %168

168:                                              ; preds = %168, %161
  %169 = phi i32 [ %179, %168 ], [ %167, %161 ]
  %170 = phi i32 [ %173, %168 ], [ %165, %161 ]
  %171 = phi i64 [ %181, %168 ], [ 1, %161 ]
  %172 = getelementptr inbounds [21 x i32], ptr %8, i64 0, i64 %171
  %173 = load i32, ptr %172, align 4, !tbaa !10
  %174 = lshr i32 %173, 1
  %175 = or i32 %174, %164
  %176 = and i32 %169, %170
  %177 = lshr i32 %176, 1
  %178 = and i32 %175, %177
  %179 = and i32 %178, %170
  %180 = getelementptr inbounds [21 x i32], ptr %7, i64 0, i64 %171
  store i32 %179, ptr %180, align 4, !tbaa !10
  %181 = add nuw nsw i64 %171, 1
  %182 = icmp eq i64 %181, %127
  br i1 %182, label %183, label %168, !llvm.loop !210

183:                                              ; preds = %168, %161
  %184 = load i32, ptr %125, align 4, !tbaa !10
  %185 = and i32 %184, %119
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %187, label %203

187:                                              ; preds = %183
  %188 = load i32, ptr @num_of_matched, align 4, !tbaa !10
  %189 = add nsw i32 %188, 1
  store i32 %189, ptr @num_of_matched, align 4, !tbaa !10
  %190 = load i32, ptr @FILENAMEONLY, align 4, !tbaa !10
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %192, label %262

192:                                              ; preds = %187
  store i32 %154, ptr %9, align 4, !tbaa !10
  %193 = icmp slt i32 %152, %153
  br i1 %193, label %196, label %194

194:                                              ; preds = %192
  call void @s_output(ptr noundef %2, ptr noundef nonnull %9) #34
  %195 = load i32, ptr %9, align 4, !tbaa !10
  br label %196

196:                                              ; preds = %194, %192
  %197 = phi i32 [ %195, %194 ], [ %153, %192 ]
  br i1 %123, label %198, label %202

198:                                              ; preds = %196
  %199 = sext i32 %197 to i64
  %200 = getelementptr inbounds i8, ptr %2, i64 %199
  %201 = load i8, ptr %200, align 1, !tbaa !7
  br label %212

202:                                              ; preds = %196
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %8, i8 -1, i64 %128, i1 false), !tbaa !10
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %7, i8 -1, i64 %128, i1 false), !tbaa !10
  br label %203

203:                                              ; preds = %202, %183
  %204 = phi i32 [ %153, %183 ], [ %197, %202 ]
  %205 = phi i32 [ %154, %183 ], [ %197, %202 ]
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i8, ptr %2, i64 %206
  %208 = load i8, ptr %207, align 1, !tbaa !7
  %209 = icmp ne i8 %208, 10
  %210 = or i1 %209, %123
  br i1 %210, label %212, label %211

211:                                              ; preds = %203
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %8, i8 -1, i64 %128, i1 false), !tbaa !10
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %7, i8 -1, i64 %128, i1 false), !tbaa !10
  br label %212

212:                                              ; preds = %211, %203, %198
  %213 = phi i8 [ %201, %198 ], [ 10, %211 ], [ %208, %203 ]
  %214 = phi i32 [ %197, %198 ], [ %205, %211 ], [ %205, %203 ]
  %215 = phi i32 [ %197, %198 ], [ %204, %211 ], [ %204, %203 ]
  %216 = add nsw i32 %214, 1
  %217 = zext i8 %213 to i64
  %218 = getelementptr inbounds [0 x i32], ptr @Mask, i64 0, i64 %217
  %219 = load i32, ptr %218, align 4, !tbaa !10
  %220 = load i32, ptr %7, align 16, !tbaa !10
  %221 = lshr i32 %220, 1
  %222 = or i32 %221, %219
  store i32 %222, ptr %8, align 16, !tbaa !10
  br i1 %122, label %238, label %223

223:                                              ; preds = %223, %212
  %224 = phi i32 [ %234, %223 ], [ %222, %212 ]
  %225 = phi i32 [ %228, %223 ], [ %220, %212 ]
  %226 = phi i64 [ %236, %223 ], [ 1, %212 ]
  %227 = getelementptr inbounds [21 x i32], ptr %7, i64 0, i64 %226
  %228 = load i32, ptr %227, align 4, !tbaa !10
  %229 = lshr i32 %228, 1
  %230 = or i32 %229, %219
  %231 = and i32 %224, %225
  %232 = lshr i32 %231, 1
  %233 = and i32 %230, %232
  %234 = and i32 %233, %225
  %235 = getelementptr inbounds [21 x i32], ptr %8, i64 0, i64 %226
  store i32 %234, ptr %235, align 4, !tbaa !10
  %236 = add nuw nsw i64 %226, 1
  %237 = icmp eq i64 %236, %127
  br i1 %237, label %238, label %223, !llvm.loop !211

238:                                              ; preds = %223, %212
  %239 = load i32, ptr %126, align 4, !tbaa !10
  %240 = and i32 %239, %119
  %241 = icmp eq i32 %240, 0
  br i1 %241, label %242, label %254

242:                                              ; preds = %238
  store i32 %216, ptr %9, align 4, !tbaa !10
  %243 = load i32, ptr @num_of_matched, align 4, !tbaa !10
  %244 = add nsw i32 %243, 1
  store i32 %244, ptr @num_of_matched, align 4, !tbaa !10
  %245 = load i32, ptr @FILENAMEONLY, align 4, !tbaa !10
  %246 = icmp eq i32 %245, 0
  br i1 %246, label %247, label %262

247:                                              ; preds = %242
  %248 = icmp slt i32 %214, %215
  br i1 %248, label %251, label %249

249:                                              ; preds = %247
  call void @s_output(ptr noundef %2, ptr noundef nonnull %9) #34
  %250 = load i32, ptr %9, align 4, !tbaa !10
  br label %251

251:                                              ; preds = %249, %247
  %252 = phi i32 [ %250, %249 ], [ %215, %247 ]
  br i1 %123, label %254, label %253

253:                                              ; preds = %251
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %8, i8 -1, i64 %128, i1 false), !tbaa !10
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %7, i8 -1, i64 %128, i1 false), !tbaa !10
  br label %254

254:                                              ; preds = %253, %251, %238
  %255 = phi i32 [ %215, %238 ], [ %252, %251 ], [ %252, %253 ]
  %256 = phi i32 [ %216, %238 ], [ %252, %251 ], [ %252, %253 ]
  %257 = icmp slt i32 %256, %138
  br i1 %257, label %151, label %258, !llvm.loop !212

258:                                              ; preds = %254, %140
  %259 = phi i32 [ %133, %140 ], [ %255, %254 ]
  %260 = add nuw nsw i64 %132, 1
  %261 = icmp eq i64 %260, %130
  br i1 %261, label %262, label %131, !llvm.loop !213

262:                                              ; preds = %258, %242, %187, %106
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #31
  call void @llvm.lifetime.end.p0(i64 84, ptr nonnull %8) #31
  call void @llvm.lifetime.end.p0(i64 84, ptr nonnull %7) #31
  call void @llvm.lifetime.end.p0(i64 16384, ptr nonnull %6) #31
  ret void
}

; Function Attrs: nofree nosync nounwind optsize memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define internal void @prep_bm(ptr nocapture noundef readonly %0, i32 noundef %1) #24 {
  %3 = trunc i32 %1 to i8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) @SHIFT, i8 %3, i64 256, i1 false), !tbaa !7
  %4 = add i32 %1, -1
  %5 = icmp sgt i32 %1, 0
  br i1 %5, label %6, label %54

6:                                                ; preds = %2
  %7 = zext i32 %4 to i64
  br label %8

8:                                                ; preds = %24, %6
  %9 = phi i64 [ %7, %6 ], [ %25, %24 ]
  %10 = getelementptr inbounds i8, ptr %0, i64 %9
  %11 = load i8, ptr %10, align 1, !tbaa !7
  %12 = zext i8 %11 to i64
  %13 = getelementptr inbounds [256 x i8], ptr @TR, i64 0, i64 %12
  %14 = load i8, ptr %13, align 1, !tbaa !7
  %15 = zext i8 %14 to i64
  %16 = getelementptr inbounds [256 x i8], ptr @SHIFT, i64 0, i64 %15
  %17 = load i8, ptr %16, align 1, !tbaa !7
  %18 = zext i8 %17 to i32
  %19 = icmp sgt i32 %4, %18
  br i1 %19, label %24, label %20

20:                                               ; preds = %8
  %21 = trunc i64 %9 to i32
  %22 = sub i32 %4, %21
  %23 = trunc i32 %22 to i8
  store i8 %23, ptr %16, align 1, !tbaa !7
  br label %24

24:                                               ; preds = %20, %8
  %25 = add nsw i64 %9, -1
  %26 = icmp sgt i64 %9, 0
  br i1 %26, label %8, label %27, !llvm.loop !214

27:                                               ; preds = %24
  store i32 %4, ptr @shift_1, align 4, !tbaa !10
  %28 = sext i32 %4 to i64
  %29 = getelementptr inbounds i8, ptr %0, i64 %28
  %30 = load i8, ptr %29, align 1, !tbaa !7
  %31 = zext i8 %30 to i64
  %32 = getelementptr inbounds [256 x i8], ptr @TR, i64 0, i64 %31
  %33 = load i8, ptr %32, align 1, !tbaa !7
  %34 = icmp sgt i32 %1, 1
  br i1 %34, label %35, label %51

35:                                               ; preds = %27
  %36 = add nsw i32 %1, -2
  br label %37

37:                                               ; preds = %48, %35
  %38 = phi i32 [ %49, %48 ], [ %36, %35 ]
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds i8, ptr %0, i64 %39
  %41 = load i8, ptr %40, align 1, !tbaa !7
  %42 = zext i8 %41 to i64
  %43 = getelementptr inbounds [256 x i8], ptr @TR, i64 0, i64 %42
  %44 = load i8, ptr %43, align 1, !tbaa !7
  %45 = icmp eq i8 %44, %33
  br i1 %45, label %46, label %48

46:                                               ; preds = %37
  %.lcssa = phi i32 [ %38, %37 ]
  %47 = sub nsw i32 %4, %.lcssa
  store i32 %47, ptr @shift_1, align 4, !tbaa !10
  br label %51

48:                                               ; preds = %37
  %49 = add nsw i32 %38, -1
  %50 = icmp eq i32 %38, 0
  br i1 %50, label %51, label %37, !llvm.loop !215

51:                                               ; preds = %48, %46, %27
  %52 = phi i32 [ %4, %27 ], [ %47, %46 ], [ %4, %48 ]
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %51, %2
  %55 = phi i32 [ %4, %2 ], [ 1, %51 ]
  store i32 %55, ptr @shift_1, align 4, !tbaa !10
  br label %56

56:                                               ; preds = %54, %51
  %57 = load i32, ptr @NOUPPER, align 4, !tbaa !10
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(26) getelementptr inbounds ([256 x i8], ptr @SHIFT, i64 0, i64 65), ptr noundef nonnull align 1 dereferenceable(26) getelementptr inbounds ([256 x i8], ptr @SHIFT, i64 0, i64 97), i64 26, i1 false), !tbaa !7
  br label %60

60:                                               ; preds = %59, %56
  ret void
}

; Function Attrs: nofree nounwind optsize uwtable
define internal void @a_monkey(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, ptr noundef readnone %3, i32 noundef %4) #9 {
  %6 = load i32, ptr @Hashmask, align 4, !tbaa !10
  %7 = icmp ult ptr %2, %3
  br i1 %7, label %8, label %100

8:                                                ; preds = %5
  %9 = xor i32 %4, -1
  %10 = add i32 %9, %1
  %11 = sext i32 %10 to i64
  %12 = shl nsw i32 %1, 1
  %13 = add nsw i32 %12, %4
  %14 = sext i32 %1 to i64
  %15 = add i32 %4, 1
  %16 = tail call i32 @llvm.umax.i32(i32 %15, i32 1)
  br label %17

17:                                               ; preds = %97, %8
  %18 = phi ptr [ %2, %8 ], [ %98, %97 ]
  %19 = getelementptr inbounds i8, ptr %18, i64 %11
  br label %20

20:                                               ; preds = %44, %17
  %21 = phi ptr [ %19, %17 ], [ %45, %44 ]
  %22 = phi i32 [ 0, %17 ], [ %46, %44 ]
  %23 = load i8, ptr %21, align 1, !tbaa !7
  %24 = getelementptr inbounds i8, ptr %21, i64 -1
  %25 = zext i8 %23 to i64
  %26 = getelementptr inbounds [65536 x i8], ptr @MEMBER_1, i64 0, i64 %25
  %27 = load i8, ptr %26, align 1, !tbaa !7
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %44, label %29

29:                                               ; preds = %20
  %30 = zext i8 %23 to i32
  br label %31

31:                                               ; preds = %31, %29
  %32 = phi ptr [ %39, %31 ], [ %24, %29 ]
  %33 = phi i32 [ %38, %31 ], [ %30, %29 ]
  %34 = shl i32 %33, 8
  %35 = load i8, ptr %32, align 1, !tbaa !7
  %36 = zext i8 %35 to i32
  %37 = or i32 %34, %36
  %38 = and i32 %37, %6
  %39 = getelementptr inbounds i8, ptr %32, i64 -1
  %40 = zext i32 %38 to i64
  %41 = getelementptr inbounds [65536 x i8], ptr @MEMBER_1, i64 0, i64 %40
  %42 = load i8, ptr %41, align 1, !tbaa !7
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %44, label %31, !llvm.loop !216

44:                                               ; preds = %31, %20
  %45 = phi ptr [ %24, %20 ], [ %39, %31 ]
  %46 = add nuw i32 %22, 1
  %47 = icmp eq i32 %46, %16
  br i1 %47, label %48, label %20, !llvm.loop !217

48:                                               ; preds = %44
  %.lcssa = phi ptr [ %45, %44 ]
  %49 = icmp ugt ptr %.lcssa, %18
  br i1 %49, label %97, label %50

50:                                               ; preds = %48
  %51 = tail call i32 @verify(i32 noundef %1, i32 noundef %13, i32 noundef %4, ptr noundef %0, ptr noundef %18) #34
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %95

53:                                               ; preds = %50
  %54 = zext i32 %51 to i64
  %55 = getelementptr inbounds i8, ptr %18, i64 %54
  %56 = icmp ugt ptr %55, %3
  br i1 %56, label %100, label %57

57:                                               ; preds = %53
  %58 = load i32, ptr @num_of_matched, align 4, !tbaa !10
  %59 = add nsw i32 %58, 1
  store i32 %59, ptr @num_of_matched, align 4, !tbaa !10
  %60 = load i32, ptr @FILENAMEONLY, align 4, !tbaa !10
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %100

62:                                               ; preds = %57
  %63 = load i32, ptr @COUNT, align 4, !tbaa !10
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %90

65:                                               ; preds = %62
  %66 = load i32, ptr @FNAME, align 4, !tbaa !10
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %70, label %68

68:                                               ; preds = %65
  %69 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.96, ptr noundef nonnull @CurrentFileName) #34
  br label %70

70:                                               ; preds = %68, %65
  br label %71

71:                                               ; preds = %71, %70
  %72 = phi ptr [ %73, %71 ], [ %55, %70 ]
  %73 = getelementptr inbounds i8, ptr %72, i64 -1
  %74 = load i8, ptr %73, align 1, !tbaa !7
  %75 = icmp eq i8 %74, 10
  br i1 %75, label %76, label %71, !llvm.loop !218

76:                                               ; preds = %71
  %.lcssa1 = phi ptr [ %72, %71 ]
  %77 = load i8, ptr %.lcssa1, align 1, !tbaa !7
  %78 = icmp eq i8 %77, 10
  br i1 %78, label %87, label %79

79:                                               ; preds = %79, %76
  %80 = phi i8 [ %85, %79 ], [ %77, %76 ]
  %81 = phi ptr [ %84, %79 ], [ %.lcssa1, %76 ]
  %82 = zext i8 %80 to i32
  %83 = tail call i32 @putchar(i32 noundef %82) #34
  %84 = getelementptr inbounds i8, ptr %81, i64 1
  %85 = load i8, ptr %84, align 1, !tbaa !7
  %86 = icmp eq i8 %85, 10
  br i1 %86, label %87, label %79, !llvm.loop !219

87:                                               ; preds = %79, %76
  %88 = phi ptr [ %.lcssa1, %76 ], [ %84, %79 ]
  %89 = tail call i32 @putchar(i32 10)
  br label %97

90:                                               ; preds = %90, %62
  %91 = phi ptr [ %94, %90 ], [ %55, %62 ]
  %92 = load i8, ptr %91, align 1, !tbaa !7
  %93 = icmp eq i8 %92, 10
  %94 = getelementptr inbounds i8, ptr %91, i64 1
  br i1 %93, label %97, label %90, !llvm.loop !220

95:                                               ; preds = %50
  %96 = getelementptr inbounds i8, ptr %18, i64 %14
  br label %97

97:                                               ; preds = %95, %90, %87, %48
  %98 = phi ptr [ %88, %87 ], [ %96, %95 ], [ %.lcssa, %48 ], [ %91, %90 ]
  %99 = icmp ult ptr %98, %3
  br i1 %99, label %17, label %100, !llvm.loop !221

100:                                              ; preds = %97, %57, %53, %5
  ret void
}

; Function Attrs: nofree nounwind optsize uwtable
define internal void @monkey(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef readonly %2, ptr noundef readnone %3) #9 {
  %5 = add nsw i32 %1, -1
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds i8, ptr %2, i64 %6
  %8 = icmp ult ptr %7, %3
  br i1 %8, label %9, label %107

9:                                                ; preds = %4
  %10 = zext i32 %1 to i64
  br label %11

11:                                               ; preds = %103, %9
  %12 = phi ptr [ %105, %103 ], [ %7, %9 ]
  %13 = load i8, ptr %12, align 1, !tbaa !7
  %14 = zext i8 %13 to i64
  %15 = shl nuw nsw i64 %14, 3
  %16 = getelementptr inbounds i8, ptr %12, i64 -1
  %17 = load i8, ptr %16, align 1, !tbaa !7
  %18 = zext i8 %17 to i64
  %19 = add nuw nsw i64 %15, %18
  %20 = getelementptr inbounds [4096 x i8], ptr @SHIFT_2, i64 0, i64 %19
  %21 = load i8, ptr %20, align 1, !tbaa !7
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %25, %11
  %24 = phi ptr [ %12, %11 ], [ %29, %25 ]
  br label %40

25:                                               ; preds = %25, %11
  %26 = phi i8 [ %38, %25 ], [ %21, %11 ]
  %27 = phi ptr [ %29, %25 ], [ %12, %11 ]
  %28 = zext i8 %26 to i64
  %29 = getelementptr inbounds i8, ptr %27, i64 %28
  %30 = load i8, ptr %29, align 1, !tbaa !7
  %31 = zext i8 %30 to i64
  %32 = shl nuw nsw i64 %31, 3
  %33 = getelementptr inbounds i8, ptr %29, i64 -1
  %34 = load i8, ptr %33, align 1, !tbaa !7
  %35 = zext i8 %34 to i64
  %36 = add nuw nsw i64 %32, %35
  %37 = getelementptr inbounds [4096 x i8], ptr @SHIFT_2, i64 0, i64 %36
  %38 = load i8, ptr %37, align 1, !tbaa !7
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %23, label %25, !llvm.loop !222

40:                                               ; preds = %55, %23
  %41 = phi i64 [ 0, %23 ], [ %56, %55 ]
  %42 = sub nsw i64 %6, %41
  %43 = getelementptr inbounds i8, ptr %0, i64 %42
  %44 = load i8, ptr %43, align 1, !tbaa !7
  %45 = zext i8 %44 to i64
  %46 = getelementptr inbounds [256 x i8], ptr @TR, i64 0, i64 %45
  %47 = load i8, ptr %46, align 1, !tbaa !7
  %48 = sub nsw i64 0, %41
  %49 = getelementptr inbounds i8, ptr %24, i64 %48
  %50 = load i8, ptr %49, align 1, !tbaa !7
  %51 = zext i8 %50 to i64
  %52 = getelementptr inbounds [256 x i8], ptr @TR, i64 0, i64 %51
  %53 = load i8, ptr %52, align 1, !tbaa !7
  %54 = icmp eq i8 %47, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %40
  %56 = add nuw nsw i64 %41, 1
  %57 = icmp eq i64 %56, %10
  br i1 %57, label %61, label %40, !llvm.loop !223

58:                                               ; preds = %40
  %.lcssa = phi i64 [ %41, %40 ]
  %59 = trunc i64 %.lcssa to i32
  %60 = icmp eq i32 %59, %1
  br i1 %60, label %61, label %103

61:                                               ; preds = %58, %55
  %62 = icmp ult ptr %24, %3
  br i1 %62, label %63, label %107

63:                                               ; preds = %61
  %64 = load i32, ptr @num_of_matched, align 4, !tbaa !10
  %65 = add nsw i32 %64, 1
  store i32 %65, ptr @num_of_matched, align 4, !tbaa !10
  %66 = load i32, ptr @FILENAMEONLY, align 4, !tbaa !10
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %107

68:                                               ; preds = %63
  %69 = load i32, ptr @COUNT, align 4, !tbaa !10
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %78, label %71

71:                                               ; preds = %71, %68
  %72 = phi ptr [ %75, %71 ], [ %24, %68 ]
  %73 = load i8, ptr %72, align 1, !tbaa !7
  %74 = icmp eq i8 %73, 10
  %75 = getelementptr inbounds i8, ptr %72, i64 1
  br i1 %74, label %76, label %71, !llvm.loop !224

76:                                               ; preds = %71
  %.lcssa2 = phi ptr [ %72, %71 ]
  %77 = getelementptr inbounds i8, ptr %.lcssa2, i64 -1
  br label %103

78:                                               ; preds = %68
  %79 = load i32, ptr @FNAME, align 4, !tbaa !10
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %83, label %81

81:                                               ; preds = %78
  %82 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.96, ptr noundef nonnull @CurrentFileName) #34
  br label %83

83:                                               ; preds = %81, %78
  br label %84

84:                                               ; preds = %84, %83
  %85 = phi ptr [ %86, %84 ], [ %24, %83 ]
  %86 = getelementptr inbounds i8, ptr %85, i64 -1
  %87 = load i8, ptr %86, align 1, !tbaa !7
  %88 = icmp eq i8 %87, 10
  br i1 %88, label %89, label %84, !llvm.loop !225

89:                                               ; preds = %84
  %.lcssa4 = phi ptr [ %85, %84 ]
  %.lcssa3 = phi ptr [ %86, %84 ]
  %90 = load i8, ptr %.lcssa4, align 1, !tbaa !7
  %91 = icmp eq i8 %90, 10
  br i1 %91, label %100, label %92

92:                                               ; preds = %92, %89
  %93 = phi i8 [ %98, %92 ], [ %90, %89 ]
  %94 = phi ptr [ %97, %92 ], [ %.lcssa4, %89 ]
  %95 = zext i8 %93 to i32
  %96 = tail call i32 @putchar(i32 noundef %95) #34
  %97 = getelementptr inbounds i8, ptr %94, i64 1
  %98 = load i8, ptr %97, align 1, !tbaa !7
  %99 = icmp eq i8 %98, 10
  br i1 %99, label %100, label %92, !llvm.loop !226

100:                                              ; preds = %92, %89
  %101 = phi ptr [ %.lcssa3, %89 ], [ %94, %92 ]
  %102 = tail call i32 @putchar(i32 10)
  br label %103

103:                                              ; preds = %100, %76, %58
  %104 = phi ptr [ %77, %76 ], [ %101, %100 ], [ %24, %58 ]
  %105 = getelementptr inbounds i8, ptr %104, i64 1
  %106 = icmp ult ptr %105, %3
  br i1 %106, label %11, label %107, !llvm.loop !227

107:                                              ; preds = %103, %63, %61, %4
  ret void
}

; Function Attrs: nofree nounwind optsize memory(write, argmem: read, inaccessiblemem: none) uwtable
define internal void @am_preprocess(ptr nocapture noundef readonly %0) #25 {
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #32
  store i32 65535, ptr @Hashmask, align 4, !tbaa !10
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(65536) @MEMBER_1, i8 0, i64 65536, i1 false), !tbaa !7
  %3 = trunc i64 %2 to i32
  %4 = add i32 %3, -1
  %5 = icmp sgt i32 %3, 0
  br i1 %5, label %6, label %34

6:                                                ; preds = %1
  %7 = zext i32 %4 to i64
  br label %12

8:                                                ; preds = %12
  %9 = icmp sgt i32 %3, 1
  br i1 %9, label %10, label %34

10:                                               ; preds = %8
  %11 = zext i32 %4 to i64
  br label %20

12:                                               ; preds = %12, %6
  %13 = phi i64 [ %7, %6 ], [ %18, %12 ]
  %14 = getelementptr inbounds i8, ptr %0, i64 %13
  %15 = load i8, ptr %14, align 1, !tbaa !7
  %16 = zext i8 %15 to i64
  %17 = getelementptr inbounds [65536 x i8], ptr @MEMBER_1, i64 0, i64 %16
  store i8 1, ptr %17, align 1, !tbaa !7
  %18 = add nsw i64 %13, -1
  %19 = icmp eq i64 %13, 0
  br i1 %19, label %8, label %12, !llvm.loop !228

20:                                               ; preds = %20, %10
  %21 = phi i64 [ %11, %10 ], [ %26, %20 ]
  %22 = getelementptr inbounds i8, ptr %0, i64 %21
  %23 = load i8, ptr %22, align 1, !tbaa !7
  %24 = zext i8 %23 to i64
  %25 = shl nuw nsw i64 %24, 8
  %26 = add nsw i64 %21, -1
  %27 = and i64 %26, 4294967295
  %28 = getelementptr inbounds i8, ptr %0, i64 %27
  %29 = load i8, ptr %28, align 1, !tbaa !7
  %30 = zext i8 %29 to i64
  %31 = or i64 %25, %30
  %32 = getelementptr inbounds [65536 x i8], ptr @MEMBER_1, i64 0, i64 %31
  store i8 1, ptr %32, align 1, !tbaa !7
  %33 = icmp ugt i64 %21, 1
  br i1 %33, label %20, label %34, !llvm.loop !229

34:                                               ; preds = %20, %8, %1
  ret void
}

; Function Attrs: nofree nounwind optsize memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define internal void @m_preprocess(ptr nocapture noundef readonly %0) #26 {
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #32
  %3 = trunc i64 %2 to i8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) @SHIFT_2, i8 %3, i64 4096, i1 false), !tbaa !7
  %4 = trunc i64 %2 to i32
  %5 = add i32 %4, -1
  %6 = icmp sgt i32 %4, 1
  br i1 %6, label %7, label %158

7:                                                ; preds = %1
  %8 = trunc i32 %5 to i8
  %9 = zext i32 %5 to i64
  %10 = insertelement <16 x i32> poison, i32 %4, i64 0
  %11 = shufflevector <16 x i32> %10, <16 x i32> poison, <16 x i32> zeroinitializer
  br label %12

12:                                               ; preds = %139, %7
  %13 = phi i64 [ %9, %7 ], [ %124, %139 ]
  %14 = getelementptr inbounds i8, ptr %0, i64 %13
  %15 = load i8, ptr %14, align 1, !tbaa !7
  %16 = zext i8 %15 to i32
  %17 = shl nuw nsw i32 %16, 3
  %18 = zext i32 %17 to i64
  br label %19

19:                                               ; preds = %120, %12
  %20 = phi i64 [ 0, %12 ], [ %121, %120 ]
  %21 = add nuw nsw i64 %20, %18
  %22 = getelementptr inbounds [4096 x i8], ptr @SHIFT_2, i64 0, i64 %21
  %23 = load <16 x i8>, ptr %22, align 8, !tbaa !7
  %24 = zext <16 x i8> %23 to <16 x i32>
  %25 = icmp eq <16 x i32> %11, %24
  %26 = extractelement <16 x i1> %25, i64 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %19
  %28 = add nuw nsw i64 %20, %18
  %29 = getelementptr inbounds [4096 x i8], ptr @SHIFT_2, i64 0, i64 %28
  store i8 %8, ptr %29, align 8, !tbaa !7
  br label %30

30:                                               ; preds = %27, %19
  %31 = extractelement <16 x i1> %25, i64 1
  br i1 %31, label %32, label %36

32:                                               ; preds = %30
  %33 = or i64 %20, 1
  %34 = add nuw nsw i64 %33, %18
  %35 = getelementptr inbounds [4096 x i8], ptr @SHIFT_2, i64 0, i64 %34
  store i8 %8, ptr %35, align 1, !tbaa !7
  br label %36

36:                                               ; preds = %32, %30
  %37 = extractelement <16 x i1> %25, i64 2
  br i1 %37, label %38, label %42

38:                                               ; preds = %36
  %39 = or i64 %20, 2
  %40 = add nuw nsw i64 %39, %18
  %41 = getelementptr inbounds [4096 x i8], ptr @SHIFT_2, i64 0, i64 %40
  store i8 %8, ptr %41, align 2, !tbaa !7
  br label %42

42:                                               ; preds = %38, %36
  %43 = extractelement <16 x i1> %25, i64 3
  br i1 %43, label %44, label %48

44:                                               ; preds = %42
  %45 = or i64 %20, 3
  %46 = add nuw nsw i64 %45, %18
  %47 = getelementptr inbounds [4096 x i8], ptr @SHIFT_2, i64 0, i64 %46
  store i8 %8, ptr %47, align 1, !tbaa !7
  br label %48

48:                                               ; preds = %44, %42
  %49 = extractelement <16 x i1> %25, i64 4
  br i1 %49, label %50, label %54

50:                                               ; preds = %48
  %51 = or i64 %20, 4
  %52 = add nuw nsw i64 %51, %18
  %53 = getelementptr inbounds [4096 x i8], ptr @SHIFT_2, i64 0, i64 %52
  store i8 %8, ptr %53, align 4, !tbaa !7
  br label %54

54:                                               ; preds = %50, %48
  %55 = extractelement <16 x i1> %25, i64 5
  br i1 %55, label %56, label %60

56:                                               ; preds = %54
  %57 = or i64 %20, 5
  %58 = add nuw nsw i64 %57, %18
  %59 = getelementptr inbounds [4096 x i8], ptr @SHIFT_2, i64 0, i64 %58
  store i8 %8, ptr %59, align 1, !tbaa !7
  br label %60

60:                                               ; preds = %56, %54
  %61 = extractelement <16 x i1> %25, i64 6
  br i1 %61, label %62, label %66

62:                                               ; preds = %60
  %63 = or i64 %20, 6
  %64 = add nuw nsw i64 %63, %18
  %65 = getelementptr inbounds [4096 x i8], ptr @SHIFT_2, i64 0, i64 %64
  store i8 %8, ptr %65, align 2, !tbaa !7
  br label %66

66:                                               ; preds = %62, %60
  %67 = extractelement <16 x i1> %25, i64 7
  br i1 %67, label %68, label %72

68:                                               ; preds = %66
  %69 = or i64 %20, 7
  %70 = add nuw nsw i64 %69, %18
  %71 = getelementptr inbounds [4096 x i8], ptr @SHIFT_2, i64 0, i64 %70
  store i8 %8, ptr %71, align 1, !tbaa !7
  br label %72

72:                                               ; preds = %68, %66
  %73 = extractelement <16 x i1> %25, i64 8
  br i1 %73, label %74, label %78

74:                                               ; preds = %72
  %75 = or i64 %20, 8
  %76 = add nuw nsw i64 %75, %18
  %77 = getelementptr inbounds [4096 x i8], ptr @SHIFT_2, i64 0, i64 %76
  store i8 %8, ptr %77, align 8, !tbaa !7
  br label %78

78:                                               ; preds = %74, %72
  %79 = extractelement <16 x i1> %25, i64 9
  br i1 %79, label %80, label %84

80:                                               ; preds = %78
  %81 = or i64 %20, 9
  %82 = add nuw nsw i64 %81, %18
  %83 = getelementptr inbounds [4096 x i8], ptr @SHIFT_2, i64 0, i64 %82
  store i8 %8, ptr %83, align 1, !tbaa !7
  br label %84

84:                                               ; preds = %80, %78
  %85 = extractelement <16 x i1> %25, i64 10
  br i1 %85, label %86, label %90

86:                                               ; preds = %84
  %87 = or i64 %20, 10
  %88 = add nuw nsw i64 %87, %18
  %89 = getelementptr inbounds [4096 x i8], ptr @SHIFT_2, i64 0, i64 %88
  store i8 %8, ptr %89, align 2, !tbaa !7
  br label %90

90:                                               ; preds = %86, %84
  %91 = extractelement <16 x i1> %25, i64 11
  br i1 %91, label %92, label %96

92:                                               ; preds = %90
  %93 = or i64 %20, 11
  %94 = add nuw nsw i64 %93, %18
  %95 = getelementptr inbounds [4096 x i8], ptr @SHIFT_2, i64 0, i64 %94
  store i8 %8, ptr %95, align 1, !tbaa !7
  br label %96

96:                                               ; preds = %92, %90
  %97 = extractelement <16 x i1> %25, i64 12
  br i1 %97, label %98, label %102

98:                                               ; preds = %96
  %99 = or i64 %20, 12
  %100 = add nuw nsw i64 %99, %18
  %101 = getelementptr inbounds [4096 x i8], ptr @SHIFT_2, i64 0, i64 %100
  store i8 %8, ptr %101, align 4, !tbaa !7
  br label %102

102:                                              ; preds = %98, %96
  %103 = extractelement <16 x i1> %25, i64 13
  br i1 %103, label %104, label %108

104:                                              ; preds = %102
  %105 = or i64 %20, 13
  %106 = add nuw nsw i64 %105, %18
  %107 = getelementptr inbounds [4096 x i8], ptr @SHIFT_2, i64 0, i64 %106
  store i8 %8, ptr %107, align 1, !tbaa !7
  br label %108

108:                                              ; preds = %104, %102
  %109 = extractelement <16 x i1> %25, i64 14
  br i1 %109, label %110, label %114

110:                                              ; preds = %108
  %111 = or i64 %20, 14
  %112 = add nuw nsw i64 %111, %18
  %113 = getelementptr inbounds [4096 x i8], ptr @SHIFT_2, i64 0, i64 %112
  store i8 %8, ptr %113, align 2, !tbaa !7
  br label %114

114:                                              ; preds = %110, %108
  %115 = extractelement <16 x i1> %25, i64 15
  br i1 %115, label %116, label %120

116:                                              ; preds = %114
  %117 = or i64 %20, 15
  %118 = add nuw nsw i64 %117, %18
  %119 = getelementptr inbounds [4096 x i8], ptr @SHIFT_2, i64 0, i64 %118
  store i8 %8, ptr %119, align 1, !tbaa !7
  br label %120

120:                                              ; preds = %116, %114
  %121 = add nuw i64 %20, 16
  %122 = icmp eq i64 %121, 256
  br i1 %122, label %123, label %19, !llvm.loop !230

123:                                              ; preds = %120
  %124 = add nsw i64 %13, -1
  %125 = and i64 %124, 4294967295
  %126 = getelementptr inbounds i8, ptr %0, i64 %125
  %127 = load i8, ptr %126, align 1, !tbaa !7
  %128 = zext i8 %127 to i32
  %129 = add nuw nsw i32 %17, %128
  %130 = zext i32 %129 to i64
  %131 = getelementptr inbounds [4096 x i8], ptr @SHIFT_2, i64 0, i64 %130
  %132 = load i8, ptr %131, align 1, !tbaa !7
  %133 = zext i8 %132 to i32
  %134 = icmp sgt i32 %5, %133
  br i1 %134, label %139, label %135

135:                                              ; preds = %123
  %136 = trunc i64 %13 to i32
  %137 = sub i32 %5, %136
  %138 = trunc i32 %137 to i8
  store i8 %138, ptr %131, align 1, !tbaa !7
  br label %139

139:                                              ; preds = %135, %123
  %140 = icmp sgt i64 %13, 1
  br i1 %140, label %12, label %141, !llvm.loop !231

141:                                              ; preds = %139
  store i32 %5, ptr @shift_1, align 4, !tbaa !10
  br i1 %6, label %142, label %160

142:                                              ; preds = %141
  %143 = add nsw i32 %4, -2
  %144 = zext i32 %5 to i64
  %145 = getelementptr inbounds i8, ptr %0, i64 %144
  %146 = load i8, ptr %145, align 1, !tbaa !7
  br label %147

147:                                              ; preds = %155, %142
  %148 = phi i32 [ %143, %142 ], [ %156, %155 ]
  %149 = zext i32 %148 to i64
  %150 = getelementptr inbounds i8, ptr %0, i64 %149
  %151 = load i8, ptr %150, align 1, !tbaa !7
  %152 = icmp eq i8 %151, %146
  br i1 %152, label %153, label %155

153:                                              ; preds = %147
  %.lcssa = phi i32 [ %148, %147 ]
  %154 = sub nsw i32 %5, %.lcssa
  br label %158

155:                                              ; preds = %147
  %156 = add nsw i32 %148, -1
  %157 = icmp eq i32 %148, 0
  br i1 %157, label %160, label %147, !llvm.loop !232

158:                                              ; preds = %153, %1
  %159 = phi i32 [ %154, %153 ], [ %5, %1 ]
  store i32 %159, ptr @shift_1, align 4, !tbaa !10
  br label %160

160:                                              ; preds = %158, %155, %141
  %161 = phi i32 [ %5, %141 ], [ %159, %158 ], [ %5, %155 ]
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %160
  store i32 1, ptr @shift_1, align 4, !tbaa !10
  br label %164

164:                                              ; preds = %163, %160
  store i8 0, ptr @SHIFT_2, align 16, !tbaa !7
  ret void
}

; Function Attrs: nofree nounwind optsize uwtable
define internal void @monkey4(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, ptr noundef readnone %3, i32 noundef %4) #9 {
  %6 = load i32, ptr @Hashmask, align 4, !tbaa !10
  %7 = icmp ult ptr %2, %3
  br i1 %7, label %8, label %119

8:                                                ; preds = %5
  %9 = xor i32 %4, -1
  %10 = add i32 %9, %1
  %11 = sext i32 %10 to i64
  %12 = shl nsw i32 %1, 1
  %13 = add nsw i32 %12, %4
  %14 = sext i32 %1 to i64
  %15 = add i32 %4, 1
  %16 = tail call i32 @llvm.umax.i32(i32 %15, i32 1)
  %17 = load ptr, ptr @MEMBER_D, align 8, !tbaa !45
  br label %18

18:                                               ; preds = %115, %8
  %19 = phi ptr [ %17, %8 ], [ %116, %115 ]
  %20 = phi ptr [ %2, %8 ], [ %117, %115 ]
  %21 = getelementptr inbounds i8, ptr %20, i64 %11
  br label %22

22:                                               ; preds = %60, %18
  %23 = phi ptr [ %21, %18 ], [ %61, %60 ]
  %24 = phi i32 [ 0, %18 ], [ %62, %60 ]
  %25 = getelementptr inbounds i8, ptr %23, i64 -1
  %26 = load i8, ptr %23, align 1, !tbaa !7
  %27 = zext i8 %26 to i64
  %28 = getelementptr inbounds [256 x i8], ptr @char_map, i64 0, i64 %27
  %29 = load i8, ptr %28, align 1, !tbaa !7
  %30 = zext i8 %29 to i32
  %31 = shl nuw nsw i32 %30, 3
  %32 = getelementptr inbounds i8, ptr %23, i64 -2
  %33 = load i8, ptr %25, align 1, !tbaa !7
  %34 = zext i8 %33 to i64
  %35 = getelementptr inbounds [256 x i8], ptr @char_map, i64 0, i64 %34
  %36 = load i8, ptr %35, align 1, !tbaa !7
  %37 = zext i8 %36 to i32
  %38 = add nuw nsw i32 %31, %37
  %39 = and i32 %38, %6
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds i8, ptr %19, i64 %40
  %42 = load i8, ptr %41, align 1, !tbaa !7
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %60, label %44

44:                                               ; preds = %44, %22
  %45 = phi i32 [ %55, %44 ], [ %39, %22 ]
  %46 = phi ptr [ %48, %44 ], [ %32, %22 ]
  %47 = shl i32 %45, 3
  %48 = getelementptr inbounds i8, ptr %46, i64 -1
  %49 = load i8, ptr %46, align 1, !tbaa !7
  %50 = zext i8 %49 to i64
  %51 = getelementptr inbounds [256 x i8], ptr @char_map, i64 0, i64 %50
  %52 = load i8, ptr %51, align 1, !tbaa !7
  %53 = zext i8 %52 to i32
  %54 = add i32 %47, %53
  %55 = and i32 %54, %6
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds i8, ptr %19, i64 %56
  %58 = load i8, ptr %57, align 1, !tbaa !7
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %60, label %44, !llvm.loop !233

60:                                               ; preds = %44, %22
  %61 = phi ptr [ %32, %22 ], [ %48, %44 ]
  %62 = add nuw i32 %24, 1
  %63 = icmp eq i32 %62, %16
  br i1 %63, label %64, label %22, !llvm.loop !234

64:                                               ; preds = %60
  %.lcssa = phi ptr [ %61, %60 ]
  %65 = icmp ugt ptr %.lcssa, %20
  br i1 %65, label %115, label %66

66:                                               ; preds = %64
  %67 = tail call i32 @verify(i32 noundef %1, i32 noundef %13, i32 noundef %4, ptr noundef %0, ptr noundef %20) #34
  %68 = icmp sgt i32 %67, 0
  br i1 %68, label %69, label %113

69:                                               ; preds = %66
  %70 = zext i32 %67 to i64
  %71 = getelementptr inbounds i8, ptr %20, i64 %70
  %72 = icmp ugt ptr %71, %3
  br i1 %72, label %119, label %73

73:                                               ; preds = %69
  %74 = load i32, ptr @num_of_matched, align 4, !tbaa !10
  %75 = add nsw i32 %74, 1
  store i32 %75, ptr @num_of_matched, align 4, !tbaa !10
  %76 = load i32, ptr @FILENAMEONLY, align 4, !tbaa !10
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %119

78:                                               ; preds = %73
  %79 = load i32, ptr @COUNT, align 4, !tbaa !10
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %108

81:                                               ; preds = %78
  %82 = load i32, ptr @FNAME, align 4, !tbaa !10
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %86, label %84

84:                                               ; preds = %81
  %85 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2.97, ptr noundef nonnull @CurrentFileName) #34
  br label %86

86:                                               ; preds = %84, %81
  br label %87

87:                                               ; preds = %87, %86
  %88 = phi ptr [ %89, %87 ], [ %71, %86 ]
  %89 = getelementptr inbounds i8, ptr %88, i64 -1
  %90 = load i8, ptr %89, align 1, !tbaa !7
  %91 = icmp eq i8 %90, 10
  br i1 %91, label %92, label %87, !llvm.loop !235

92:                                               ; preds = %87
  %.lcssa2 = phi ptr [ %88, %87 ]
  %.lcssa1 = phi ptr [ %89, %87 ]
  %93 = load i8, ptr %.lcssa2, align 1, !tbaa !7
  %94 = icmp eq i8 %93, 10
  br i1 %94, label %103, label %95

95:                                               ; preds = %95, %92
  %96 = phi i8 [ %101, %95 ], [ %93, %92 ]
  %97 = phi ptr [ %100, %95 ], [ %.lcssa2, %92 ]
  %98 = zext i8 %96 to i32
  %99 = tail call i32 @putchar(i32 noundef %98) #34
  %100 = getelementptr inbounds i8, ptr %97, i64 1
  %101 = load i8, ptr %100, align 1, !tbaa !7
  %102 = icmp eq i8 %101, 10
  br i1 %102, label %103, label %95, !llvm.loop !236

103:                                              ; preds = %95, %92
  %104 = phi ptr [ %.lcssa1, %92 ], [ %97, %95 ]
  %105 = tail call i32 @putchar(i32 10)
  %106 = getelementptr inbounds i8, ptr %104, i64 2
  %107 = load ptr, ptr @MEMBER_D, align 8, !tbaa !45
  br label %115

108:                                              ; preds = %108, %78
  %109 = phi ptr [ %112, %108 ], [ %71, %78 ]
  %110 = load i8, ptr %109, align 1, !tbaa !7
  %111 = icmp eq i8 %110, 10
  %112 = getelementptr inbounds i8, ptr %109, i64 1
  br i1 %111, label %115, label %108, !llvm.loop !237

113:                                              ; preds = %66
  %114 = getelementptr inbounds i8, ptr %20, i64 %14
  br label %115

115:                                              ; preds = %113, %108, %103, %64
  %116 = phi ptr [ %107, %103 ], [ %19, %113 ], [ %19, %64 ], [ %19, %108 ]
  %117 = phi ptr [ %106, %103 ], [ %114, %113 ], [ %.lcssa, %64 ], [ %112, %108 ]
  %118 = icmp ult ptr %117, %3
  br i1 %118, label %18, label %119, !llvm.loop !238

119:                                              ; preds = %115, %73, %69, %5
  ret void
}

; Function Attrs: nofree nounwind optsize uwtable
define internal void @prep4(ptr nocapture noundef readonly %0, i32 noundef %1) #9 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) @char_map, i8 0, i64 256, i1 false), !tbaa !7
  store i8 4, ptr getelementptr inbounds ([256 x i8], ptr @char_map, i64 0, i64 65), align 1, !tbaa !7
  store i8 4, ptr getelementptr inbounds ([256 x i8], ptr @char_map, i64 0, i64 97), align 1, !tbaa !7
  store i8 1, ptr getelementptr inbounds ([256 x i8], ptr @char_map, i64 0, i64 103), align 1, !tbaa !7
  store i8 2, ptr getelementptr inbounds ([256 x i8], ptr @char_map, i64 0, i64 116), align 4, !tbaa !7
  store i8 3, ptr getelementptr inbounds ([256 x i8], ptr @char_map, i64 0, i64 99), align 1, !tbaa !7
  store i8 5, ptr getelementptr inbounds ([256 x i8], ptr @char_map, i64 0, i64 110), align 2, !tbaa !7
  %3 = sdiv i32 %1, 2
  %4 = add nsw i32 %3, %1
  %5 = icmp sgt i32 %4, 4
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  store i8 1, ptr @BSize, align 1, !tbaa !7
  br label %17

7:                                                ; preds = %7, %2
  %8 = phi i32 [ %10, %7 ], [ 4, %2 ]
  %9 = phi i32 [ %11, %7 ], [ 1, %2 ]
  %10 = shl nsw i32 %8, 2
  %11 = add nuw nsw i32 %9, 1
  %12 = icmp slt i32 %10, %4
  br i1 %12, label %7, label %13, !llvm.loop !239

13:                                               ; preds = %7
  %.lcssa3 = phi i32 [ %11, %7 ]
  %14 = trunc i32 %.lcssa3 to i8
  store i8 %14, ptr @BSize, align 1, !tbaa !7
  store i32 1, ptr @Hashmask, align 4, !tbaa !10
  %15 = and i32 %.lcssa3, 255
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %30, label %17

17:                                               ; preds = %13, %6
  %18 = phi i32 [ 1, %6 ], [ %15, %13 ]
  %19 = mul nuw nsw i32 %18, 3
  br label %20

20:                                               ; preds = %20, %17
  %21 = phi i32 [ %25, %20 ], [ 1, %17 ]
  %22 = phi i32 [ %24, %20 ], [ 1, %17 ]
  %23 = shl i32 %22, 1
  %24 = or i32 %23, 1
  %25 = add nuw nsw i32 %21, 1
  %26 = icmp eq i32 %25, %19
  br i1 %26, label %27, label %20, !llvm.loop !240

27:                                               ; preds = %20
  %.lcssa2 = phi i32 [ %23, %20 ]
  %.lcssa1 = phi i32 [ %24, %20 ]
  store i32 %.lcssa1, ptr @Hashmask, align 4, !tbaa !10
  %28 = add i32 %.lcssa2, 2
  %29 = zext i32 %28 to i64
  br label %30

30:                                               ; preds = %27, %13
  %31 = phi i64 [ %29, %27 ], [ 2, %13 ]
  %32 = tail call noalias ptr @malloc(i64 noundef %31) #39
  store ptr %32, ptr @MEMBER_D, align 8, !tbaa !45
  br label %38

33:                                               ; preds = %38
  %34 = load i8, ptr @BSize, align 1, !tbaa !7
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %81, label %36

36:                                               ; preds = %33
  %37 = sext i32 %1 to i64
  br label %46

38:                                               ; preds = %38, %30
  %39 = phi i64 [ 0, %30 ], [ %42, %38 ]
  %40 = load ptr, ptr @MEMBER_D, align 8, !tbaa !45
  %41 = getelementptr inbounds i8, ptr %40, i64 %39
  store i8 0, ptr %41, align 1, !tbaa !7
  %42 = add nuw nsw i64 %39, 1
  %43 = load i32, ptr @Hashmask, align 4, !tbaa !10
  %44 = zext i32 %43 to i64
  %45 = icmp ult i64 %39, %44
  br i1 %45, label %38, label %33, !llvm.loop !241

46:                                               ; preds = %75, %36
  %47 = phi i8 [ %34, %36 ], [ %76, %75 ]
  %48 = phi i64 [ 0, %36 ], [ %77, %75 ]
  %49 = phi i64 [ 1, %36 ], [ %80, %75 ]
  %50 = icmp slt i64 %48, %37
  br i1 %50, label %51, label %75

51:                                               ; preds = %68, %46
  %52 = phi i64 [ %53, %68 ], [ %37, %46 ]
  %53 = add nsw i64 %52, -1
  br label %54

54:                                               ; preds = %54, %51
  %55 = phi i64 [ 0, %51 ], [ %66, %54 ]
  %56 = phi i32 [ 0, %51 ], [ %65, %54 ]
  %57 = shl i32 %56, 3
  %58 = sub nsw i64 %53, %55
  %59 = getelementptr inbounds i8, ptr %0, i64 %58
  %60 = load i8, ptr %59, align 1, !tbaa !7
  %61 = sext i8 %60 to i64
  %62 = getelementptr inbounds [256 x i8], ptr @char_map, i64 0, i64 %61
  %63 = load i8, ptr %62, align 1, !tbaa !7
  %64 = zext i8 %63 to i32
  %65 = add i32 %57, %64
  %66 = add nuw nsw i64 %55, 1
  %67 = icmp eq i64 %66, %49
  br i1 %67, label %68, label %54, !llvm.loop !242

68:                                               ; preds = %54
  %.lcssa = phi i32 [ %65, %54 ]
  %69 = load ptr, ptr @MEMBER_D, align 8, !tbaa !45
  %70 = zext i32 %.lcssa to i64
  %71 = getelementptr inbounds i8, ptr %69, i64 %70
  store i8 1, ptr %71, align 1, !tbaa !7
  %72 = icmp sgt i64 %53, %48
  br i1 %72, label %51, label %73, !llvm.loop !243

73:                                               ; preds = %68
  %74 = load i8, ptr @BSize, align 1, !tbaa !7
  br label %75

75:                                               ; preds = %73, %46
  %76 = phi i8 [ %74, %73 ], [ %47, %46 ]
  %77 = add nuw nsw i64 %48, 1
  %78 = zext i8 %76 to i64
  %79 = icmp ult i64 %77, %78
  %80 = add nuw nsw i64 %49, 1
  br i1 %79, label %46, label %81, !llvm.loop !244

81:                                               ; preds = %75, %33
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @sgrep(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca [10496 x i8], align 16
  store i32 %1, ptr %5, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 10496, ptr nonnull %6) #31
  %7 = load i8, ptr %0, align 1, !tbaa !7
  switch i8 %7, label %9 [
    i8 94, label %8
    i8 36, label %8
  ]

8:                                                ; preds = %4, %4
  store i8 10, ptr %0, align 1, !tbaa !7
  br label %9

9:                                                ; preds = %8, %4
  %10 = add nsw i32 %1, -1
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i8, ptr %0, i64 %11
  %13 = load i8, ptr %12, align 1, !tbaa !7
  switch i8 %13, label %15 [
    i8 94, label %14
    i8 36, label %14
  ]

14:                                               ; preds = %9, %9
  store i8 10, ptr %12, align 1, !tbaa !7
  br label %15

15:                                               ; preds = %14, %9
  call void @char_tr(ptr noundef nonnull %0, ptr noundef nonnull %5) #34
  %16 = getelementptr inbounds [10496 x i8], ptr %6, i64 0, i64 2047
  store i8 10, ptr %16, align 1, !tbaa !7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %6, i8 0, i64 1024, i1 false), !tbaa !7
  %17 = load i32, ptr @WHOLELINE, align 4, !tbaa !10
  %18 = icmp eq i32 %17, 0
  %19 = select i1 %18, i32 2048, i32 2047
  %20 = load i32, ptr %5, align 4, !tbaa !10
  %21 = icmp sgt i32 %20, 255
  br i1 %21, label %22, label %25

22:                                               ; preds = %15
  %23 = load ptr, ptr @stderr, align 8, !tbaa !45
  %24 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %23, ptr noundef nonnull @.str.3.100, ptr noundef nonnull @Progname) #35
  tail call void @exit(i32 noundef 2) #36
  unreachable

25:                                               ; preds = %15
  %26 = icmp eq i32 %3, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %25
  %28 = icmp sgt i32 %20, 20
  br i1 %28, label %29, label %30

29:                                               ; preds = %27
  tail call void @m_preprocess(ptr noundef nonnull %0) #34
  br label %41

30:                                               ; preds = %27
  tail call void @prep_bm(ptr noundef nonnull %0, i32 noundef %20) #34
  br label %39

31:                                               ; preds = %25
  %32 = load i32, ptr @DNA, align 4, !tbaa !10
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %31
  tail call void @prep4(ptr noundef nonnull %0, i32 noundef %20) #34
  br label %39

35:                                               ; preds = %31
  %36 = icmp sgt i32 %20, 23
  br i1 %36, label %37, label %38

37:                                               ; preds = %35
  tail call void @am_preprocess(ptr noundef nonnull %0) #34
  br label %41

38:                                               ; preds = %35
  tail call void @prep(ptr noundef nonnull %0, i32 noundef %20, i32 noundef %3) #34
  tail call void @initmask(ptr noundef nonnull %0, ptr noundef nonnull @Mask, i32 noundef %20, i32 noundef 0, ptr noundef nonnull @endposition) #34
  br label %39

39:                                               ; preds = %38, %34, %30
  %40 = icmp slt i32 %20, 1
  br i1 %40, label %48, label %41

41:                                               ; preds = %39, %37, %29
  %42 = add nsw i32 %20, -1
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds i8, ptr %0, i64 %43
  %45 = load i8, ptr %44, align 1, !tbaa !7
  %46 = getelementptr inbounds i8, ptr %6, i64 10241
  %47 = zext i32 %20 to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %46, i8 %45, i64 %47, i1 false), !tbaa !7
  br label %48

48:                                               ; preds = %41, %39
  %49 = getelementptr inbounds i8, ptr %6, i64 2048
  %50 = icmp sgt i32 %20, 23
  %51 = icmp sgt i32 %20, 20
  br label %52

52:                                               ; preds = %97, %48
  %53 = phi i32 [ %104, %97 ], [ %19, %48 ]
  %54 = call i64 @read(i32 noundef %2, ptr noundef nonnull %49, i64 noundef 8192) #33
  %55 = trunc i64 %54 to i32
  %56 = icmp sgt i32 %55, 0
  br i1 %56, label %57, label %105

57:                                               ; preds = %52
  %58 = add nuw nsw i32 %55, 2047
  br label %59

59:                                               ; preds = %59, %57
  %60 = phi i32 [ %58, %57 ], [ %67, %59 ]
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds [10496 x i8], ptr %6, i64 0, i64 %61
  %63 = load i8, ptr %62, align 1, !tbaa !7
  %64 = icmp ne i8 %63, 10
  %65 = icmp ugt i32 %60, 2048
  %66 = and i1 %65, %64
  %67 = add nsw i32 %60, -1
  br i1 %66, label %59, label %68, !llvm.loop !245

68:                                               ; preds = %59
  %.lcssa1 = phi i32 [ %60, %59 ]
  %.lcssa = phi i64 [ %61, %59 ]
  %69 = getelementptr inbounds [10496 x i8], ptr %6, i64 0, i64 %.lcssa
  %70 = sub nsw i32 %58, %.lcssa1
  %71 = add nsw i32 %70, 1
  %72 = add nsw i32 %53, -1
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds [10496 x i8], ptr %6, i64 0, i64 %73
  store i8 10, ptr %74, align 1, !tbaa !7
  br i1 %26, label %75, label %80

75:                                               ; preds = %68
  %76 = sext i32 %53 to i64
  %77 = getelementptr inbounds i8, ptr %6, i64 %76
  br i1 %51, label %78, label %79

78:                                               ; preds = %75
  call void @monkey(ptr noundef nonnull %0, i32 noundef %20, ptr noundef nonnull %77, ptr noundef nonnull %69) #34
  br label %89

79:                                               ; preds = %75
  call void @bm(ptr noundef nonnull %0, i32 noundef %20, ptr noundef nonnull %77, ptr noundef nonnull %69) #34
  br label %89

80:                                               ; preds = %68
  %81 = load i32, ptr @DNA, align 4, !tbaa !10
  %82 = icmp eq i32 %81, 0
  %83 = sext i32 %53 to i64
  %84 = getelementptr inbounds i8, ptr %6, i64 %83
  br i1 %82, label %86, label %85

85:                                               ; preds = %80
  call void @monkey4(ptr noundef nonnull %0, i32 noundef %20, ptr noundef nonnull %84, ptr noundef nonnull %69, i32 noundef %3) #34
  br label %89

86:                                               ; preds = %80
  br i1 %50, label %87, label %88

87:                                               ; preds = %86
  call void @a_monkey(ptr noundef nonnull %0, i32 noundef %20, ptr noundef nonnull %84, ptr noundef nonnull %69, i32 noundef %3) #34
  br label %89

88:                                               ; preds = %86
  call void @agrep(ptr nonnull poison, i32 noundef %20, ptr noundef nonnull %84, ptr noundef nonnull %69, i32 noundef %3) #34
  br label %89

89:                                               ; preds = %88, %87, %85, %79, %78
  %90 = load i32, ptr @FILENAMEONLY, align 4, !tbaa !10
  %91 = icmp ne i32 %90, 0
  %92 = load i32, ptr @num_of_matched, align 4
  %93 = icmp ne i32 %92, 0
  %94 = select i1 %91, i1 %93, i1 false
  br i1 %94, label %95, label %97

95:                                               ; preds = %89
  %96 = call i32 @puts(ptr nonnull dereferenceable(1) @CurrentFileName)
  br label %105

97:                                               ; preds = %89
  %98 = sub nsw i32 2047, %70
  %99 = call i32 @llvm.smax.i32(i32 %98, i32 1024)
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds i8, ptr %6, i64 %100
  %102 = sext i32 %71 to i64
  %103 = call ptr @strncpy(ptr noundef nonnull %101, ptr noundef nonnull %69, i64 noundef %102) #33
  %104 = add nuw nsw i32 %99, 1
  br label %52, !llvm.loop !246

105:                                              ; preds = %95, %52
  call void @llvm.lifetime.end.p0(i64 10496, ptr nonnull %6) #31
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn uwtable
define internal ptr @Push(ptr noundef %0, ptr noundef %1) #11 {
  %3 = tail call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #39
  %4 = icmp eq ptr %0, null
  %5 = icmp eq ptr %3, null
  %6 = or i1 %4, %5
  br i1 %6, label %18, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %0, align 8, !tbaa !45
  %9 = getelementptr inbounds %struct.snode, ptr %3, i64 0, i32 2
  store ptr %8, ptr %9, align 8, !tbaa !170
  store ptr %1, ptr %3, align 8, !tbaa !247
  %10 = icmp eq ptr %8, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.snode, ptr %8, i64 0, i32 1
  %13 = load i32, ptr %12, align 8, !tbaa !172
  %14 = add nsw i32 %13, 1
  br label %15

15:                                               ; preds = %11, %7
  %16 = phi i32 [ %14, %11 ], [ 1, %7 ]
  %17 = getelementptr inbounds %struct.snode, ptr %3, i64 0, i32 1
  store i32 %16, ptr %17, align 8
  store ptr %3, ptr %0, align 8, !tbaa !45
  br label %18

18:                                               ; preds = %15, %2
  %19 = phi ptr [ %3, %15 ], [ null, %2 ]
  ret ptr %19
}

; Function Attrs: mustprogress nounwind optsize willreturn uwtable
define internal ptr @Pop(ptr noundef %0) #27 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %10, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !45
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %3
  %7 = load ptr, ptr %4, align 8, !tbaa !247
  %8 = getelementptr inbounds %struct.snode, ptr %4, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !170
  store ptr %9, ptr %0, align 8, !tbaa !45
  tail call void @free(ptr noundef nonnull %4) #33
  br label %10

10:                                               ; preds = %6, %3, %1
  %11 = phi ptr [ %7, %6 ], [ null, %3 ], [ null, %1 ]
  ret ptr %11
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #28

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal ptr @Top(ptr noundef readonly %0) #29 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !247
  br label %5

5:                                                ; preds = %3, %1
  %6 = phi ptr [ %4, %3 ], [ null, %1 ]
  ret ptr %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @Size(ptr noundef readonly %0) #29 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.snode, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !172
  br label %6

6:                                                ; preds = %3, %1
  %7 = phi i32 [ %5, %3 ], [ 0, %1 ]
  ret i32 %7
}

; Function Attrs: nofree nounwind optsize uwtable
define internal ptr @pset_union(ptr noundef readonly %0, ptr noundef %1) #9 {
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
  %11 = load i32, ptr %10, align 8, !tbaa !55
  br i1 %5, label %20, label %12

12:                                               ; preds = %16, %6
  %13 = phi ptr [ %18, %16 ], [ %1, %6 ]
  %14 = load i32, ptr %13, align 8, !tbaa !55
  %15 = icmp eq i32 %14, %11
  br i1 %15, label %27, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.pnode, ptr %13, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !248
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %12, !llvm.loop !249

20:                                               ; preds = %16, %6
  %21 = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #39
  %22 = icmp eq ptr %21, null
  br i1 %22, label %37, label %23

23:                                               ; preds = %20
  store i32 %11, ptr %21, align 8, !tbaa !55
  %24 = icmp eq ptr %9, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.pnode, ptr %8, i64 0, i32 1
  store ptr %21, ptr %26, align 8, !tbaa !248
  br label %27

27:                                               ; preds = %25, %23, %12
  %28 = phi ptr [ %9, %25 ], [ %21, %23 ], [ %9, %12 ]
  %29 = phi ptr [ %21, %25 ], [ %21, %23 ], [ %7, %12 ]
  %30 = getelementptr inbounds %struct.pnode, ptr %10, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !248
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %6, !llvm.loop !250

33:                                               ; preds = %27
  %.lcssa1 = phi ptr [ %28, %27 ]
  %.lcssa = phi ptr [ %29, %27 ]
  %34 = icmp eq ptr %.lcssa1, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %33
  %36 = getelementptr inbounds %struct.pnode, ptr %.lcssa, i64 0, i32 1
  store ptr %1, ptr %36, align 8, !tbaa !248
  br label %37

37:                                               ; preds = %35, %33, %20, %2
  %38 = phi ptr [ %.lcssa1, %35 ], [ %1, %33 ], [ %1, %2 ], [ null, %20 ]
  ret ptr %38
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: readwrite) uwtable
define internal noalias ptr @create_pos(i32 noundef %0) #30 {
  %2 = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #39
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  store i32 %0, ptr %2, align 8, !tbaa !55
  %5 = getelementptr inbounds %struct.pnode, ptr %2, i64 0, i32 1
  store ptr null, ptr %5, align 8, !tbaa !248
  br label %6

6:                                                ; preds = %4, %1
  ret ptr %2
}

attributes #0 = { nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nosync nounwind optsize willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" }
attributes #14 = { noreturn nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree nosync nounwind optsize memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #17 = { mustprogress nofree nounwind optsize willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { nofree nounwind optsize memory(readwrite, argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nofree nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nofree nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nofree nosync nounwind optsize memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nofree nosync nounwind optsize memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { nofree nounwind optsize memory(write, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { nofree nounwind optsize memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { mustprogress nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { mustprogress nofree nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { nounwind }
attributes #32 = { nounwind optsize willreturn memory(read) }
attributes #33 = { nounwind optsize }
attributes #34 = { optsize }
attributes #35 = { cold optsize }
attributes #36 = { noreturn nounwind optsize }
attributes #37 = { nounwind optsize willreturn memory(none) }
attributes #38 = { cold }
attributes #39 = { nounwind optsize allocsize(0) }

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
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !11, i64 0}
!11 = !{!"int", !8, i64 0}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
!14 = distinct !{!14, !13}
!15 = distinct !{!15, !13}
!16 = distinct !{!16, !13, !17, !18}
!17 = !{!"llvm.loop.isvectorized", i32 1}
!18 = !{!"llvm.loop.unroll.runtime.disable"}
!19 = distinct !{!19, !13}
!20 = distinct !{!20, !13}
!21 = distinct !{!21, !13, !17, !18}
!22 = distinct !{!22, !13}
!23 = distinct !{!23, !13}
!24 = distinct !{!24, !13}
!25 = distinct !{!25, !13}
!26 = distinct !{!26, !13}
!27 = distinct !{!27, !13}
!28 = distinct !{!28, !13, !17, !18}
!29 = distinct !{!29, !13}
!30 = distinct !{!30, !13, !17, !18}
!31 = distinct !{!31, !13}
!32 = distinct !{!32, !13}
!33 = distinct !{!33, !13}
!34 = distinct !{!34, !13}
!35 = distinct !{!35, !13}
!36 = distinct !{!36, !13}
!37 = distinct !{!37, !13}
!38 = distinct !{!38, !13}
!39 = distinct !{!39, !13}
!40 = distinct !{!40, !13}
!41 = distinct !{!41, !13}
!42 = distinct !{!42, !13}
!43 = distinct !{!43, !13}
!44 = distinct !{!44, !13}
!45 = !{!46, !46, i64 0}
!46 = !{!"any pointer", !8, i64 0}
!47 = distinct !{!47, !13}
!48 = distinct !{!48, !13}
!49 = distinct !{!49, !13}
!50 = distinct !{!50, !13}
!51 = distinct !{!51, !13}
!52 = !{!53, !54, i64 0}
!53 = !{!"rnode", !54, i64 0, !8, i64 8, !54, i64 24, !46, i64 32, !46, i64 40}
!54 = !{!"short", !8, i64 0}
!55 = !{!56, !11, i64 0}
!56 = !{!"pnode", !11, i64 0, !46, i64 8}
!57 = !{!53, !46, i64 32}
!58 = distinct !{!58, !13}
!59 = distinct !{!59, !13}
!60 = distinct !{!60, !13}
!61 = distinct !{!61, !13}
!62 = !{!54, !54, i64 0}
!63 = distinct !{!63, !13}
!64 = distinct !{!64, !13}
!65 = distinct !{!65, !13}
!66 = distinct !{!66, !13}
!67 = distinct !{!67, !13}
!68 = distinct !{!68, !13}
!69 = distinct !{!69, !13}
!70 = distinct !{!70, !13}
!71 = distinct !{!71, !13}
!72 = distinct !{!72, !13}
!73 = distinct !{!73, !13}
!74 = distinct !{!74, !13}
!75 = distinct !{!75, !13}
!76 = distinct !{!76, !13}
!77 = distinct !{!77, !13}
!78 = distinct !{!78, !13}
!79 = distinct !{!79, !13}
!80 = distinct !{!80, !13}
!81 = distinct !{!81, !13}
!82 = distinct !{!82, !13}
!83 = distinct !{!83, !13}
!84 = distinct !{!84, !13}
!85 = distinct !{!85, !13}
!86 = distinct !{!86, !13}
!87 = distinct !{!87, !13, !17, !18}
!88 = distinct !{!88, !13}
!89 = distinct !{!89, !13, !17, !18}
!90 = distinct !{!90, !13}
!91 = distinct !{!91, !13}
!92 = distinct !{!92, !13}
!93 = distinct !{!93, !13}
!94 = distinct !{!94, !13}
!95 = distinct !{!95, !13}
!96 = distinct !{!96, !13}
!97 = distinct !{!97, !13}
!98 = distinct !{!98, !13}
!99 = distinct !{!99, !13}
!100 = distinct !{!100, !13}
!101 = distinct !{!101, !13}
!102 = distinct !{!102, !13}
!103 = distinct !{!103, !13}
!104 = distinct !{!104, !13}
!105 = distinct !{!105, !13}
!106 = !{!107, !11, i64 0}
!107 = !{!"term", !11, i64 0, !8, i64 4}
!108 = distinct !{!108, !13}
!109 = distinct !{!109, !13}
!110 = distinct !{!110, !13}
!111 = distinct !{!111, !13}
!112 = distinct !{!112, !13}
!113 = distinct !{!113, !13}
!114 = distinct !{!114, !13}
!115 = distinct !{!115, !13}
!116 = distinct !{!116, !13}
!117 = !{!118, !11, i64 0}
!118 = !{!"pat_list", !11, i64 0, !46, i64 8}
!119 = !{!118, !46, i64 8}
!120 = distinct !{!120, !13}
!121 = distinct !{!121, !13}
!122 = distinct !{!122, !13}
!123 = distinct !{!123, !13}
!124 = distinct !{!124, !13}
!125 = distinct !{!125, !13}
!126 = distinct !{!126, !13}
!127 = distinct !{!127, !13}
!128 = distinct !{!128, !13}
!129 = distinct !{!129, !13}
!130 = distinct !{!130, !13}
!131 = distinct !{!131, !13}
!132 = distinct !{!132, !13}
!133 = distinct !{!133, !13}
!134 = distinct !{!134, !13}
!135 = distinct !{!135, !13, !17, !18}
!136 = distinct !{!136, !13, !17, !18}
!137 = distinct !{!137, !13}
!138 = distinct !{!138, !13, !17, !18}
!139 = distinct !{!139, !13}
!140 = distinct !{!140, !13}
!141 = distinct !{!141, !13}
!142 = distinct !{!142, !13}
!143 = distinct !{!143, !13}
!144 = distinct !{!144, !13}
!145 = distinct !{!145, !13}
!146 = distinct !{!146, !13}
!147 = distinct !{!147, !13}
!148 = distinct !{!148, !13}
!149 = distinct !{!149, !13}
!150 = distinct !{!150, !13}
!151 = distinct !{!151, !13}
!152 = distinct !{!152, !13}
!153 = distinct !{!153, !13}
!154 = distinct !{!154, !13}
!155 = !{!156, !54, i64 4}
!156 = !{!"", !11, i64 0, !54, i64 4, !8, i64 8}
!157 = !{!156, !11, i64 0}
!158 = !{!53, !54, i64 24}
!159 = !{!53, !46, i64 40}
!160 = !{!161, !46, i64 0}
!161 = !{!"ch_set", !46, i64 0, !46, i64 8}
!162 = !{!163, !8, i64 0}
!163 = !{!"", !8, i64 0, !8, i64 1}
!164 = !{!163, !8, i64 1}
!165 = !{!161, !46, i64 8}
!166 = distinct !{!166, !13}
!167 = !{!168, !54, i64 0}
!168 = !{!"", !54, i64 0, !46, i64 8}
!169 = !{!168, !46, i64 8}
!170 = !{!171, !46, i64 16}
!171 = !{!"snode", !46, i64 0, !11, i64 8, !46, i64 16}
!172 = !{!171, !11, i64 8}
!173 = distinct !{!173, !13}
!174 = distinct !{!174, !13}
!175 = distinct !{!175, !13}
!176 = distinct !{!176, !13}
!177 = distinct !{!177, !13, !17, !18}
!178 = distinct !{!178, !13, !17, !18}
!179 = distinct !{!179, !13}
!180 = distinct !{!180, !13}
!181 = distinct !{!181, !13}
!182 = distinct !{!182, !13}
!183 = distinct !{!183, !13}
!184 = distinct !{!184, !13}
!185 = distinct !{!185, !13}
!186 = distinct !{!186, !13}
!187 = distinct !{!187, !13}
!188 = distinct !{!188, !13}
!189 = distinct !{!189, !13}
!190 = distinct !{!190, !13}
!191 = distinct !{!191, !13}
!192 = distinct !{!192, !13}
!193 = distinct !{!193, !13}
!194 = distinct !{!194, !13}
!195 = distinct !{!195, !13}
!196 = distinct !{!196, !13}
!197 = distinct !{!197, !13, !17, !18}
!198 = distinct !{!198, !13}
!199 = distinct !{!199, !13}
!200 = distinct !{!200, !13}
!201 = distinct !{!201, !13}
!202 = distinct !{!202, !13}
!203 = distinct !{!203, !13}
!204 = distinct !{!204, !13}
!205 = distinct !{!205, !13}
!206 = distinct !{!206, !13}
!207 = distinct !{!207, !13}
!208 = distinct !{!208, !13}
!209 = distinct !{!209, !13}
!210 = distinct !{!210, !13}
!211 = distinct !{!211, !13}
!212 = distinct !{!212, !13}
!213 = distinct !{!213, !13}
!214 = distinct !{!214, !13}
!215 = distinct !{!215, !13}
!216 = distinct !{!216, !13}
!217 = distinct !{!217, !13}
!218 = distinct !{!218, !13}
!219 = distinct !{!219, !13}
!220 = distinct !{!220, !13}
!221 = distinct !{!221, !13}
!222 = distinct !{!222, !13}
!223 = distinct !{!223, !13}
!224 = distinct !{!224, !13}
!225 = distinct !{!225, !13}
!226 = distinct !{!226, !13}
!227 = distinct !{!227, !13}
!228 = distinct !{!228, !13}
!229 = distinct !{!229, !13}
!230 = distinct !{!230, !13, !17, !18}
!231 = distinct !{!231, !13}
!232 = distinct !{!232, !13}
!233 = distinct !{!233, !13}
!234 = distinct !{!234, !13}
!235 = distinct !{!235, !13}
!236 = distinct !{!236, !13}
!237 = distinct !{!237, !13}
!238 = distinct !{!238, !13}
!239 = distinct !{!239, !13}
!240 = distinct !{!240, !13}
!241 = distinct !{!241, !13}
!242 = distinct !{!242, !13}
!243 = distinct !{!243, !13}
!244 = distinct !{!244, !13}
!245 = distinct !{!245, !13}
!246 = distinct !{!246, !13}
!247 = !{!171, !46, i64 0}
!248 = !{!56, !46, i64 8}
!249 = distinct !{!249, !13}
!250 = distinct !{!250, !13}
