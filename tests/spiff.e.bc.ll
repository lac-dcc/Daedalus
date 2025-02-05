; ModuleID = 'spiff.e.bc.ll'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._W_bolstruct = type { [16 x i8], [16 x i8], [16 x i8] }
%struct._W_comstruct = type { [16 x i8], [16 x i8], [16 x i8], i32 }
%struct._T_tstr = type { i32, ptr, ptr }
%struct._K_str = type { i32, i32, i32, ptr, ptr, ptr }
%struct.edt = type { ptr, i32, i32, i32 }
%struct.R_flstr = type { i32, i32, ptr }

@_C_cmds = internal global [100 x ptr] zeroinitializer, align 16
@_C_nextcmd = internal unnamed_addr global i32 0, align 4
@_C_cmdword = internal global [20 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [8 x i8] c"command\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"command word is too long\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"tol\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"comment\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"nestcom\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"resetcomments\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"resetliterals\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"beginchar\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"endchar\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"addalpha\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"rem\00", align 1
@.str.12 = private unnamed_addr constant [29 x i8] c"don't understand command %s\0A\00", align 1
@_W_bolchar = internal unnamed_addr global i8 94, align 1
@_W_eolchar = internal unnamed_addr global i8 36, align 1
@_W_nextbol = internal unnamed_addr global i32 0, align 4
@.str.13 = private unnamed_addr constant [50 x i8] c"too many beginning of line comment delimiter sets\00", align 1
@_W_bols = internal global [20 x %struct._W_bolstruct] zeroinitializer, align 16
@.str.2.16 = private unnamed_addr constant [36 x i8] c"begining of line comment won't nest\00", align 1
@_W_nextcom = internal unnamed_addr global i32 0, align 4
@.str.3.17 = private unnamed_addr constant [32 x i8] c"too many comment delimiter sets\00", align 1
@_W_coms = internal global [20 x %struct._W_comstruct] zeroinitializer, align 16
@_W_nextlit = internal unnamed_addr global i32 0, align 4
@.str.4.22 = private unnamed_addr constant [32 x i8] c"too many literal delimiter sets\00", align 1
@_W_lits = internal global [20 x %struct._W_bolstruct] zeroinitializer, align 16
@bol_scratch = internal global %struct._W_bolstruct zeroinitializer, align 1
@lit_scratch = internal global %struct._W_bolstruct zeroinitializer, align 1
@com_scratch = internal global %struct._W_comstruct zeroinitializer, align 4
@.str.28 = private unnamed_addr constant [32 x i8] c"fell off switch in _X_cmptokens\00", align 1
@.str.1.25 = private unnamed_addr constant [42 x i8] c"_X_floatdiff called with a null tolerance\00", align 1
@.str.3.27 = private unnamed_addr constant [45 x i8] c"bad value for type of tolerance in floatdiff\00", align 1
@.str.29 = private unnamed_addr constant [50 x i8] c"unequal number of tokens, %d and %d respectively\0A\00", align 1
@.str.30 = private unnamed_addr constant [33 x i8] c"didn't use up all of %s in atocf\00", align 1
@.str.1.37 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@F_floatsub.result = internal unnamed_addr global ptr null, align 8
@F_floatsub.needinit = internal unnamed_addr global i1 false, align 4
@F_floatsub.man1 = internal global [200 x i8] zeroinitializer, align 16
@F_floatsub.man2 = internal global [200 x i8] zeroinitializer, align 16
@F_floatsub.diff = internal global [200 x i8] zeroinitializer, align 16
@.str.2.33 = private unnamed_addr constant [51 x i8] c"mantissas didn't get lined up properly in floatsub\00", align 1
@.str.3.34 = private unnamed_addr constant [32 x i8] c"lengths not equal in F_floatsub\00", align 1
@F_floatcmp.man1 = internal global [200 x i8] zeroinitializer, align 16
@F_floatcmp.man2 = internal global [200 x i8] zeroinitializer, align 16
@F_floatmul.prod = internal global [200 x i8] zeroinitializer, align 16
@F_floatmul.man1 = internal global [200 x i8] zeroinitializer, align 16
@F_floatmul.man2 = internal global [200 x i8] zeroinitializer, align 16
@F_floatmul.result = internal unnamed_addr global ptr null, align 8
@F_floatmul.needinit = internal unnamed_addr global i1 false, align 4
@F_floatmagadd.result = internal unnamed_addr global ptr null, align 8
@F_floatmagadd.needinit = internal unnamed_addr global i1 false, align 4
@F_floatmagadd.man1 = internal global [200 x i8] zeroinitializer, align 16
@F_floatmagadd.man2 = internal global [200 x i8] zeroinitializer, align 16
@.str.5.42 = private unnamed_addr constant [40 x i8] c"numbers differ by too much in magnitude\00", align 1
@_F_stradd.result = internal global [200 x i8] zeroinitializer, align 16
@L_init_file.buf = internal global [1026 x i8] zeroinitializer, align 16
@.str.1.48 = private unnamed_addr constant [22 x i8] c"Cannot open file %s.\0A\00", align 1
@.str.2.49 = private unnamed_addr constant [48 x i8] c"fatal error -- got 0 length line %d in file %s\0A\00", align 1
@.str.3.50 = private unnamed_addr constant [65 x i8] c"got fatally long line %d in file %s length is %d, must be a bug\0A\00", align 1
@.str.4.51 = private unnamed_addr constant [64 x i8] c"line %d too long in file %s, newline added after %d characters\0A\00", align 1
@.str.5.52 = private unnamed_addr constant [63 x i8] c"didn't find a newline at end of line %d in file %s, added one\0A\00", align 1
@.str.6.53 = private unnamed_addr constant [63 x i8] c"warning -- ran out of space reading %s, truncated to %d lines\0A\00", align 1
@.str.54 = private unnamed_addr constant [22 x i8] c"found %d differences\0A\00", align 1
@_Z_qflag = internal unnamed_addr global i1 false, align 4
@.str.58 = private unnamed_addr constant [10 x i8] c"spiff -- \00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.1.65 = private unnamed_addr constant [15 x i8] c"Out of Memory\0A\00", align 1
@.str.2.70 = private unnamed_addr constant [41 x i8] c"The files differ in more than %d places\0A\00", align 1
@.str.73 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1.74 = private unnamed_addr constant [4 x i8] c"a%d\00", align 1
@.str.2.75 = private unnamed_addr constant [4 x i8] c",%d\00", align 1
@.str.4.76 = private unnamed_addr constant [5 x i8] c"d%d\0A\00", align 1
@.str.5.77 = private unnamed_addr constant [4 x i8] c"c%d\00", align 1
@.str.6.78 = private unnamed_addr constant [29 x i8] c"type in O_output wasn't set\0A\00", align 1
@.str.7.79 = private unnamed_addr constant [5 x i8] c"< %s\00", align 1
@.str.9.80 = private unnamed_addr constant [5 x i8] c"> %s\00", align 1
@_O_get_text.buf = internal global [2048 x i8] zeroinitializer, align 16
@.str.10.83 = private unnamed_addr constant [29 x i8] c"%s -- line %d, character %d\0A\00", align 1
@_O_convert.spacetext = internal global [20 x i8] zeroinitializer, align 16
@.str.11.81 = private unnamed_addr constant [10 x i8] c"<NEWLINE>\00", align 1
@.str.12.82 = private unnamed_addr constant [6 x i8] c"<TAB>\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"< \00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"> \00", align 1
@_O_need_init = internal unnamed_addr global i1 false, align 4
@.str.16 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1
@_O_st_tmp = internal unnamed_addr global ptr null, align 8
@.str.17 = private unnamed_addr constant [38 x i8] c"can't find TERM entry in environment\0A\00", align 1
@str = private unnamed_addr constant [4 x i8] c"---\00", align 1
@_P_alpha = internal global [256 x i8] zeroinitializer, align 16
@.str.86 = private unnamed_addr constant [47 x i8] c"too many characters added to extended alphabet\00", align 1
@_P_fnumb = internal unnamed_addr global i32 0, align 4
@_P_lcount = internal unnamed_addr global i32 0, align 4
@_P_flags = internal unnamed_addr global i32 0, align 4
@_P_dummyline = internal global [2 x i8] zeroinitializer, align 1
@_P_nextchr = internal unnamed_addr global ptr null, align 8
@_P_has_content = internal unnamed_addr global i1 false, align 4
@_P_next_tol = internal unnamed_addr global i32 0, align 4
@_L_bc = internal unnamed_addr global [10000 x i32] zeroinitializer, align 16
@_L_btlm = internal unnamed_addr global i32 0, align 4
@_L_atlm = internal unnamed_addr global i32 0, align 4
@_L_ac = internal unnamed_addr global [10000 x i32] zeroinitializer, align 16
@_P_realline = internal unnamed_addr global i32 0, align 4
@.str.1.89 = private unnamed_addr constant [36 x i8] c"parser got confused at end of file\0A\00", align 1
@_L_bclm = internal unnamed_addr global i32 0, align 4
@_L_aclm = internal unnamed_addr global i32 0, align 4
@_P_firstchr = internal unnamed_addr global ptr null, align 8
@_L_btlindex = internal unnamed_addr global [10000 x i32] zeroinitializer, align 16
@_L_atlindex = internal unnamed_addr global [10000 x i32] zeroinitializer, align 16
@_P_stringsize = internal unnamed_addr global i32 0, align 4
@_L_bl = internal global [10000 x ptr] zeroinitializer, align 16
@_L_bclindex = internal unnamed_addr global [10000 x i32] zeroinitializer, align 16
@_L_al = internal global [10000 x ptr] zeroinitializer, align 16
@_L_aclindex = internal unnamed_addr global [10000 x i32] zeroinitializer, align 16
@.str.2.87 = private unnamed_addr constant [70 x i8] c"warning -- to many tokens in file only first %d tokens will be used.\0A\00", align 1
@.str.3.88 = private unnamed_addr constant [32 x i8] c"scanned %d words from file #%d\0A\00", align 1
@_L_brlm = internal unnamed_addr global i32 0, align 4
@_L_arlm = internal unnamed_addr global i32 0, align 4
@_Y_flags = internal unnamed_addr global i32 0, align 4
@_Y_vflag = internal unnamed_addr global i1 false, align 4
@_Y_eflag = internal unnamed_addr global i1 false, align 4
@.str.90 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1.91 = private unnamed_addr constant [25 x i8] c"can't open command file\0A\00", align 1
@.str.2.92 = private unnamed_addr constant [21 x i8] c"literal  \22   \22    \\ \00", align 1
@.str.3.93 = private unnamed_addr constant [18 x i8] c"comment  /*  */\09 \00", align 1
@.str.4.94 = private unnamed_addr constant [15 x i8] c"literal  &&\09\09 \00", align 1
@.str.5.95 = private unnamed_addr constant [15 x i8] c"literal  ||\09\09 \00", align 1
@.str.6.96 = private unnamed_addr constant [15 x i8] c"literal  <=\09\09 \00", align 1
@.str.7.97 = private unnamed_addr constant [15 x i8] c"literal  >=\09\09 \00", align 1
@.str.8.98 = private unnamed_addr constant [15 x i8] c"literal  !=\09\09 \00", align 1
@.str.9.99 = private unnamed_addr constant [15 x i8] c"literal  ==\09\09 \00", align 1
@.str.10.100 = private unnamed_addr constant [15 x i8] c"literal  --\09\09 \00", align 1
@.str.11.101 = private unnamed_addr constant [15 x i8] c"literal  ++\09\09 \00", align 1
@.str.12.102 = private unnamed_addr constant [15 x i8] c"literal  <<\09\09 \00", align 1
@.str.13.103 = private unnamed_addr constant [15 x i8] c"literal  >>\09\09 \00", align 1
@.str.14.104 = private unnamed_addr constant [15 x i8] c"literal  ->\09\09 \00", align 1
@.str.15.105 = private unnamed_addr constant [14 x i8] c"addalpha _\09\09 \00", align 1
@.str.16.106 = private unnamed_addr constant [16 x i8] c"tol      a0 \09\09 \00", align 1
@.str.17.107 = private unnamed_addr constant [22 x i8] c"literal  '    '    \\\09\00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c"comment  #    $\09\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"tol      a0 \09\09\00", align 1
@.str.20 = private unnamed_addr constant [20 x i8] c"literal  '\09'     ' \00", align 1
@.str.21 = private unnamed_addr constant [17 x i8] c"comment  ^C   $\09\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"literal  \22 \09\22\09\00", align 1
@.str.23 = private unnamed_addr constant [15 x i8] c"comment  ; \09$\09\00", align 1
@.str.24 = private unnamed_addr constant [14 x i8] c"literal ' \09'\09\00", align 1
@.str.25 = private unnamed_addr constant [13 x i8] c"literal \22\09\22\09\00", align 1
@.str.26 = private unnamed_addr constant [15 x i8] c"comment (*\09*)\09\00", align 1
@.str.27 = private unnamed_addr constant [13 x i8] c"literal :=\09\09\00", align 1
@.str.28.108 = private unnamed_addr constant [13 x i8] c"literal <>\09\09\00", align 1
@.str.29.109 = private unnamed_addr constant [13 x i8] c"literal <=\09\09\00", align 1
@.str.30.110 = private unnamed_addr constant [13 x i8] c"literal >=\09\09\00", align 1
@.str.31 = private unnamed_addr constant [28 x i8] c"don't understand arguments\0A\00", align 1
@.str.32 = private unnamed_addr constant [32 x i8] c"spiff requires two file names.\0A\00", align 1
@_K_bto = internal unnamed_addr global [50000 x ptr] zeroinitializer, align 16
@_K_ato = internal unnamed_addr global [50000 x ptr] zeroinitializer, align 16
@_K_atm = internal unnamed_addr global i32 0, align 4
@_K_btm = internal unnamed_addr global i32 0, align 4
@_T_gtol = internal global ptr null, align 8
@T_initdefault.called_before = internal unnamed_addr global i1 false, align 4
@.str.139 = private unnamed_addr constant [37 x i8] c"T_initdefault called more than once\0A\00", align 1
@.str.1.142 = private unnamed_addr constant [6 x i8] c"1e-10\00", align 1
@_T_tols = internal global [10 x ptr] zeroinitializer, align 16
@.str.2.152 = private unnamed_addr constant [29 x i8] c"too many tolerances per line\00", align 1
@Z_err_buf = internal global [1024 x i8] zeroinitializer, align 16
@.str.3.145 = private unnamed_addr constant [47 x i8] c"%s : negative tolerances don't make any sense\0A\00", align 1
@.str.4.146 = private unnamed_addr constant [4 x i8] c"2.0\00", align 1
@.str.5.147 = private unnamed_addr constant [62 x i8] c"%s : relative tolerances greater than 2 don't make any sense\0A\00", align 1
@.str.6.153 = private unnamed_addr constant [38 x i8] c"don't understand tolerance type '%c'\0A\00", align 1
@_T_getspec.retval = internal global [1024 x i8] zeroinitializer, align 16
@.str.162 = private unnamed_addr constant [46 x i8] c"visual mode is not available on this machine\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define dso_local i32 @main(i32 noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca [1024 x i8], align 16
  %4 = alloca [1024 x i8], align 16
  %5 = alloca [2 x ptr], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #22
  %6 = getelementptr inbounds [2 x ptr], ptr %5, i64 0, i64 1
  %7 = icmp sgt i32 %0, 1
  br i1 %7, label %8, label %157

8:                                                ; preds = %148, %2
  %9 = phi i32 [ %149, %148 ], [ -1, %2 ]
  %10 = phi i32 [ %153, %148 ], [ %0, %2 ]
  %11 = phi ptr [ %152, %148 ], [ %1, %2 ]
  %12 = getelementptr inbounds ptr, ptr %11, i64 1
  %13 = load ptr, ptr %12, align 8, !tbaa !7
  %14 = load i8, ptr %13, align 1, !tbaa !11
  %15 = icmp eq i8 %14, 45
  br i1 %15, label %16, label %155

16:                                               ; preds = %8
  %17 = getelementptr inbounds i8, ptr %13, i64 1
  %18 = load i8, ptr %17, align 1, !tbaa !11
  %19 = sext i8 %18 to i32
  switch i32 %19, label %147 [
    i32 116, label %20
    i32 119, label %23
    i32 98, label %26
    i32 99, label %29
    i32 100, label %32
    i32 109, label %35
    i32 97, label %38
    i32 114, label %51
    i32 105, label %64
    i32 101, label %80
    i32 118, label %81
    i32 113, label %82
    i32 115, label %83
    i32 102, label %118
    i32 67, label %140
    i32 83, label %141
    i32 70, label %142
    i32 76, label %143
    i32 77, label %144
    i32 48, label %145
    i32 49, label %145
    i32 50, label %145
    i32 51, label %145
    i32 52, label %145
    i32 53, label %145
    i32 54, label %145
    i32 55, label %145
    i32 56, label %145
    i32 57, label %145
  ]

20:                                               ; preds = %16
  %21 = load i32, ptr @_Y_flags, align 4, !tbaa !12
  %22 = or i32 %21, 8
  store i32 %22, ptr @_Y_flags, align 4, !tbaa !12
  br label %148

23:                                               ; preds = %16
  %24 = load i32, ptr @_Y_flags, align 4, !tbaa !12
  %25 = or i32 %24, 1
  store i32 %25, ptr @_Y_flags, align 4, !tbaa !12
  br label %148

26:                                               ; preds = %16
  %27 = load i32, ptr @_Y_flags, align 4, !tbaa !12
  %28 = or i32 %27, 2
  store i32 %28, ptr @_Y_flags, align 4, !tbaa !12
  br label %148

29:                                               ; preds = %16
  %30 = load i32, ptr @_Y_flags, align 4, !tbaa !12
  %31 = or i32 %30, 4
  store i32 %31, ptr @_Y_flags, align 4, !tbaa !12
  br label %148

32:                                               ; preds = %16
  %33 = load i32, ptr @_Y_flags, align 4, !tbaa !12
  %34 = or i32 %33, 32
  store i32 %34, ptr @_Y_flags, align 4, !tbaa !12
  br label %148

35:                                               ; preds = %16
  %36 = load i32, ptr @_Y_flags, align 4, !tbaa !12
  %37 = or i32 %36, 16
  store i32 %37, ptr @_Y_flags, align 4, !tbaa !12
  br label %148

38:                                               ; preds = %16
  %39 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %13) #23
  %40 = icmp eq i64 %39, 2
  br i1 %40, label %41, label %45

41:                                               ; preds = %38
  %42 = add nsw i32 %10, -1
  %43 = getelementptr inbounds ptr, ptr %11, i64 2
  %44 = load ptr, ptr %43, align 8, !tbaa !7
  br label %47

45:                                               ; preds = %38
  %46 = getelementptr inbounds i8, ptr %13, i64 2
  br label %47

47:                                               ; preds = %45, %41
  %48 = phi ptr [ %12, %41 ], [ %11, %45 ]
  %49 = phi ptr [ %44, %41 ], [ %46, %45 ]
  %50 = phi i32 [ %42, %41 ], [ %10, %45 ]
  call fastcc void @_T_addtol(ptr noundef nonnull @_T_gtol, i32 noundef 0, ptr noundef %49) #24
  br label %148

51:                                               ; preds = %16
  %52 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %13) #23
  %53 = icmp eq i64 %52, 2
  br i1 %53, label %54, label %58

54:                                               ; preds = %51
  %55 = add nsw i32 %10, -1
  %56 = getelementptr inbounds ptr, ptr %11, i64 2
  %57 = load ptr, ptr %56, align 8, !tbaa !7
  br label %60

58:                                               ; preds = %51
  %59 = getelementptr inbounds i8, ptr %13, i64 2
  br label %60

60:                                               ; preds = %58, %54
  %61 = phi ptr [ %12, %54 ], [ %11, %58 ]
  %62 = phi ptr [ %57, %54 ], [ %59, %58 ]
  %63 = phi i32 [ %55, %54 ], [ %10, %58 ]
  call fastcc void @_T_addtol(ptr noundef nonnull @_T_gtol, i32 noundef 1, ptr noundef %62) #24
  br label %148

64:                                               ; preds = %16
  %65 = load ptr, ptr @_T_gtol, align 8, !tbaa !7
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %69

67:                                               ; preds = %64
  %68 = call ptr (i64, ...) @_Z_myalloc(i64 noundef 24) #24
  store ptr %68, ptr @_T_gtol, align 8, !tbaa !7
  br label %77

69:                                               ; preds = %69, %64
  %70 = phi ptr [ %72, %69 ], [ %65, %64 ]
  %71 = getelementptr inbounds %struct._T_tstr, ptr %70, i64 0, i32 2
  %72 = load ptr, ptr %71, align 8, !tbaa !14
  %73 = icmp eq ptr %72, null
  br i1 %73, label %74, label %69, !llvm.loop !16

74:                                               ; preds = %69
  %.lcssa42 = phi ptr [ %70, %69 ]
  %75 = getelementptr inbounds %struct._T_tstr, ptr %.lcssa42, i64 0, i32 2
  %76 = call ptr (i64, ...) @_Z_myalloc(i64 noundef 24) #24
  store ptr %76, ptr %75, align 8, !tbaa !14
  br label %77

77:                                               ; preds = %74, %67
  %78 = phi ptr [ %68, %67 ], [ %76, %74 ]
  store i32 2, ptr %78, align 8, !tbaa !18
  %79 = getelementptr inbounds %struct._T_tstr, ptr %78, i64 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %79, i8 0, i64 16, i1 false)
  br label %148

80:                                               ; preds = %16
  store i1 true, ptr @_Y_eflag, align 4
  br label %148

81:                                               ; preds = %16
  store i1 true, ptr @_Y_vflag, align 4
  br label %148

82:                                               ; preds = %16
  store i1 true, ptr @_Z_qflag, align 4
  br label %148

83:                                               ; preds = %16
  %84 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %13) #23
  %85 = icmp eq i64 %84, 2
  br i1 %85, label %86, label %90

86:                                               ; preds = %83
  %87 = add nsw i32 %10, -1
  %88 = getelementptr inbounds ptr, ptr %11, i64 2
  %89 = load ptr, ptr %88, align 8, !tbaa !7
  br label %92

90:                                               ; preds = %83
  %91 = getelementptr inbounds i8, ptr %13, i64 2
  br label %92

92:                                               ; preds = %90, %86
  %93 = phi ptr [ %12, %86 ], [ %11, %90 ]
  %94 = phi ptr [ %89, %86 ], [ %91, %90 ]
  %95 = phi i32 [ %87, %86 ], [ %10, %90 ]
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %3) #22
  %96 = load i8, ptr %94, align 1, !tbaa !11
  %97 = icmp eq i8 %96, 0
  br i1 %97, label %117, label %98

98:                                               ; preds = %113, %92
  %99 = phi i8 [ %114, %113 ], [ %96, %92 ]
  %100 = phi ptr [ %115, %113 ], [ %94, %92 ]
  %101 = phi ptr [ %116, %113 ], [ %3, %92 ]
  switch i8 %99, label %102 [
    i8 0, label %106
    i8 10, label %106
  ]

102:                                              ; preds = %98
  %103 = getelementptr inbounds i8, ptr %100, i64 1
  %104 = getelementptr inbounds i8, ptr %101, i64 1
  store i8 %99, ptr %101, align 1, !tbaa !11
  %105 = load i8, ptr %103, align 1, !tbaa !11
  br label %113

106:                                              ; preds = %98, %98
  store i8 0, ptr %101, align 1, !tbaa !11
  call fastcc void @C_addcmd(ptr noundef nonnull %3) #24
  %107 = load i8, ptr %100, align 1, !tbaa !11
  %108 = icmp eq i8 %107, 10
  %109 = zext i1 %108 to i64
  %110 = getelementptr inbounds i8, ptr %100, i64 %109
  %111 = load i8, ptr %110, align 1, !tbaa !11
  %112 = icmp eq i8 %111, 0
  br i1 %112, label %117, label %113

113:                                              ; preds = %106, %102
  %114 = phi i8 [ %105, %102 ], [ %111, %106 ]
  %115 = phi ptr [ %103, %102 ], [ %110, %106 ]
  %116 = phi ptr [ %104, %102 ], [ %3, %106 ]
  br label %98, !llvm.loop !19

117:                                              ; preds = %106, %92
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %3) #22
  br label %148

118:                                              ; preds = %16
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %4) #22
  %119 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %13) #23
  %120 = icmp eq i64 %119, 2
  br i1 %120, label %121, label %125

121:                                              ; preds = %118
  %122 = add nsw i32 %10, -1
  %123 = getelementptr inbounds ptr, ptr %11, i64 2
  %124 = load ptr, ptr %123, align 8, !tbaa !7
  br label %127

125:                                              ; preds = %118
  %126 = getelementptr inbounds i8, ptr %13, i64 2
  br label %127

127:                                              ; preds = %125, %121
  %128 = phi ptr [ %12, %121 ], [ %11, %125 ]
  %129 = phi ptr [ %124, %121 ], [ %126, %125 ]
  %130 = phi i32 [ %122, %121 ], [ %10, %125 ]
  %131 = call noalias ptr @fopen(ptr noundef %129, ptr noundef nonnull @.str.90) #25
  %132 = icmp eq ptr %131, null
  br i1 %132, label %133, label %134

133:                                              ; preds = %127
  call fastcc void @Z_fatal(ptr noundef nonnull @.str.1.91) #24
  unreachable

134:                                              ; preds = %137, %127
  %135 = call ptr @fgets(ptr noundef nonnull %4, i32 noundef 1024, ptr noundef nonnull %131) #25
  %136 = icmp eq ptr %135, null
  br i1 %136, label %138, label %137

137:                                              ; preds = %134
  call fastcc void @C_addcmd(ptr noundef nonnull %4) #24
  br label %134, !llvm.loop !20

138:                                              ; preds = %134
  %139 = call i32 @fclose(ptr noundef nonnull %131) #25
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %4) #22
  br label %148

140:                                              ; preds = %16
  call fastcc void @C_addcmd(ptr noundef nonnull @.str.2.92) #24
  call fastcc void @C_addcmd(ptr noundef nonnull @.str.3.93) #24
  call fastcc void @C_addcmd(ptr noundef nonnull @.str.4.94) #24
  call fastcc void @C_addcmd(ptr noundef nonnull @.str.5.95) #24
  call fastcc void @C_addcmd(ptr noundef nonnull @.str.6.96) #24
  call fastcc void @C_addcmd(ptr noundef nonnull @.str.7.97) #24
  call fastcc void @C_addcmd(ptr noundef nonnull @.str.8.98) #24
  call fastcc void @C_addcmd(ptr noundef nonnull @.str.9.99) #24
  call fastcc void @C_addcmd(ptr noundef nonnull @.str.10.100) #24
  call fastcc void @C_addcmd(ptr noundef nonnull @.str.11.101) #24
  call fastcc void @C_addcmd(ptr noundef nonnull @.str.12.102) #24
  call fastcc void @C_addcmd(ptr noundef nonnull @.str.13.103) #24
  call fastcc void @C_addcmd(ptr noundef nonnull @.str.14.104) #24
  call fastcc void @C_addcmd(ptr noundef nonnull @.str.15.105) #24
  call fastcc void @C_addcmd(ptr noundef nonnull @.str.16.106) #24
  br label %148

141:                                              ; preds = %16
  call fastcc void @C_addcmd(ptr noundef nonnull @.str.17.107) #24
  call fastcc void @C_addcmd(ptr noundef nonnull @.str.18) #24
  call fastcc void @C_addcmd(ptr noundef nonnull @.str.19) #24
  br label %148

142:                                              ; preds = %16
  call fastcc void @C_addcmd(ptr noundef nonnull @.str.20) #24
  call fastcc void @C_addcmd(ptr noundef nonnull @.str.21) #24
  call fastcc void @C_addcmd(ptr noundef nonnull @.str.19) #24
  br label %148

143:                                              ; preds = %16
  call fastcc void @C_addcmd(ptr noundef nonnull @.str.22) #24
  call fastcc void @C_addcmd(ptr noundef nonnull @.str.23) #24
  call fastcc void @C_addcmd(ptr noundef nonnull @.str.19) #24
  br label %148

144:                                              ; preds = %16
  call fastcc void @C_addcmd(ptr noundef nonnull @.str.24) #24
  call fastcc void @C_addcmd(ptr noundef nonnull @.str.25) #24
  call fastcc void @C_addcmd(ptr noundef nonnull @.str.26) #24
  call fastcc void @C_addcmd(ptr noundef nonnull @.str.27) #24
  call fastcc void @C_addcmd(ptr noundef nonnull @.str.28.108) #24
  call fastcc void @C_addcmd(ptr noundef nonnull @.str.29.109) #24
  call fastcc void @C_addcmd(ptr noundef nonnull @.str.30.110) #24
  call fastcc void @C_addcmd(ptr noundef nonnull @.str.19) #24
  br label %148

145:                                              ; preds = %16, %16, %16, %16, %16, %16, %16, %16, %16, %16
  %146 = call i32 @atoi(ptr nocapture noundef nonnull %17) #23
  br label %148

147:                                              ; preds = %16
  call fastcc void @Z_fatal(ptr noundef nonnull @.str.31) #24
  unreachable

148:                                              ; preds = %145, %144, %143, %142, %141, %140, %138, %117, %82, %81, %80, %77, %60, %47, %35, %32, %29, %26, %23, %20
  %149 = phi i32 [ %146, %145 ], [ %9, %144 ], [ %9, %143 ], [ %9, %142 ], [ %9, %141 ], [ %9, %140 ], [ %9, %138 ], [ %9, %117 ], [ %9, %82 ], [ %9, %81 ], [ %9, %80 ], [ %9, %77 ], [ %9, %60 ], [ %9, %47 ], [ %9, %35 ], [ %9, %32 ], [ %9, %29 ], [ %9, %26 ], [ %9, %23 ], [ %9, %20 ]
  %150 = phi ptr [ %11, %145 ], [ %11, %144 ], [ %11, %143 ], [ %11, %142 ], [ %11, %141 ], [ %11, %140 ], [ %128, %138 ], [ %93, %117 ], [ %11, %82 ], [ %11, %81 ], [ %11, %80 ], [ %11, %77 ], [ %61, %60 ], [ %48, %47 ], [ %11, %35 ], [ %11, %32 ], [ %11, %29 ], [ %11, %26 ], [ %11, %23 ], [ %11, %20 ]
  %151 = phi i32 [ %10, %145 ], [ %10, %144 ], [ %10, %143 ], [ %10, %142 ], [ %10, %141 ], [ %10, %140 ], [ %130, %138 ], [ %95, %117 ], [ %10, %82 ], [ %10, %81 ], [ %10, %80 ], [ %10, %77 ], [ %63, %60 ], [ %50, %47 ], [ %10, %35 ], [ %10, %32 ], [ %10, %29 ], [ %10, %26 ], [ %10, %23 ], [ %10, %20 ]
  %152 = getelementptr inbounds ptr, ptr %150, i64 1
  %153 = add nsw i32 %151, -1
  %154 = icmp sgt i32 %151, 2
  br i1 %154, label %8, label %157, !llvm.loop !21

155:                                              ; preds = %8
  %.lcssa52 = phi i32 [ %9, %8 ]
  %.lcssa49 = phi i32 [ %10, %8 ]
  %.lcssa46 = phi ptr [ %11, %8 ]
  %.lcssa43 = phi ptr [ %13, %8 ]
  %156 = icmp eq i32 %.lcssa49, 3
  br i1 %156, label %158, label %157

157:                                              ; preds = %155, %148, %2
  call fastcc void @Z_fatal(ptr noundef nonnull @.str.32) #24
  unreachable

158:                                              ; preds = %155
  store ptr %.lcssa43, ptr %5, align 16, !tbaa !7
  %159 = getelementptr inbounds ptr, ptr %.lcssa46, i64 2
  %160 = load ptr, ptr %159, align 8, !tbaa !7
  store ptr %160, ptr %6, align 8, !tbaa !7
  %161 = load i1, ptr @T_initdefault.called_before, align 4
  br i1 %161, label %162, label %163

162:                                              ; preds = %158
  call fastcc void @Z_fatal(ptr noundef nonnull @.str.139) #24
  unreachable

163:                                              ; preds = %158
  %164 = load ptr, ptr @_T_gtol, align 8, !tbaa !7
  %165 = icmp eq ptr %164, null
  br i1 %165, label %166, label %167

166:                                              ; preds = %163
  call fastcc void @_T_addtol(ptr noundef nonnull @_T_gtol, i32 noundef 0, ptr noundef nonnull @.str.1.142) #25
  call fastcc void @_T_addtol(ptr noundef nonnull @_T_gtol, i32 noundef 1, ptr noundef nonnull @.str.1.142) #25
  br label %167

167:                                              ; preds = %166, %163
  store i1 true, ptr @T_initdefault.called_before, align 4
  br label %168

168:                                              ; preds = %960, %167
  %169 = phi i1 [ true, %167 ], [ false, %960 ]
  %170 = phi i64 [ 0, %167 ], [ 1, %960 ]
  %171 = getelementptr inbounds [2 x ptr], ptr %5, i64 0, i64 %170
  %172 = load ptr, ptr %171, align 8, !tbaa !7
  %173 = trunc i64 %170 to i32
  %174 = call noalias ptr @fopen(ptr noundef %172, ptr noundef nonnull @.str.90) #25
  %175 = icmp eq ptr %174, null
  br i1 %175, label %176, label %178

176:                                              ; preds = %168
  %.lcssa35 = phi ptr [ %172, %168 ]
  %177 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @Z_err_buf, ptr noundef nonnull dereferenceable(1) @.str.1.48, ptr noundef %.lcssa35) #24
  call fastcc void @Z_fatal(ptr noundef nonnull @Z_err_buf) #24
  unreachable

178:                                              ; preds = %168
  %179 = icmp eq i32 %173, 0
  %180 = select i1 %179, ptr @_L_arlm, ptr @_L_brlm
  %181 = select i1 %179, ptr @_L_al, ptr @_L_bl
  br label %182

182:                                              ; preds = %233, %178
  %183 = phi i32 [ 0, %178 ], [ %246, %233 ]
  store i32 %183, ptr %180, align 4, !tbaa !12
  %184 = call ptr @fgets(ptr noundef nonnull @L_init_file.buf, i32 noundef 1025, ptr noundef nonnull %174) #25
  %185 = icmp eq ptr %184, null
  br i1 %185, label %253, label %186

186:                                              ; preds = %182
  %187 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) @L_init_file.buf) #23
  %188 = trunc i64 %187 to i32
  %189 = icmp slt i32 %188, 1
  br i1 %189, label %190, label %196

190:                                              ; preds = %186
  %.lcssa39 = phi i1 [ %179, %186 ]
  %.lcssa36 = phi ptr [ %172, %186 ]
  %191 = load i32, ptr @_L_brlm, align 4
  %192 = load i32, ptr @_L_arlm, align 4
  %193 = select i1 %.lcssa39, i32 %192, i32 %191
  %194 = add nsw i32 %193, 1
  %195 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @Z_err_buf, ptr noundef nonnull dereferenceable(1) @.str.2.49, i32 noundef %194, ptr noundef %.lcssa36) #24
  br label %204

196:                                              ; preds = %186
  %197 = icmp ugt i32 %188, 1024
  br i1 %197, label %198, label %205

198:                                              ; preds = %196
  %.lcssa40 = phi i1 [ %179, %196 ]
  %.lcssa37 = phi ptr [ %172, %196 ]
  %.lcssa19 = phi i32 [ %188, %196 ]
  %199 = load i32, ptr @_L_brlm, align 4
  %200 = load i32, ptr @_L_arlm, align 4
  %201 = select i1 %.lcssa40, i32 %200, i32 %199
  %202 = add nsw i32 %201, 1
  %203 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @Z_err_buf, ptr noundef nonnull dereferenceable(1) @.str.3.50, i32 noundef %202, ptr noundef %.lcssa37, i32 noundef %.lcssa19) #24
  br label %204

204:                                              ; preds = %198, %190
  call fastcc void @Z_fatal(ptr noundef nonnull @Z_err_buf) #24
  unreachable

205:                                              ; preds = %196
  %206 = shl i64 %187, 32
  %207 = add i64 %206, -4294967296
  %208 = ashr exact i64 %207, 32
  %209 = getelementptr inbounds [1026 x i8], ptr @L_init_file.buf, i64 0, i64 %208
  %210 = load i8, ptr %209, align 1, !tbaa !11
  %211 = icmp eq i8 %210, 10
  br i1 %211, label %233, label %212

212:                                              ; preds = %205
  %213 = icmp eq i32 %188, 1024
  %214 = load i32, ptr @_L_brlm, align 4
  %215 = load i32, ptr @_L_arlm, align 4
  %216 = select i1 %179, i32 %215, i32 %214
  %217 = add nsw i32 %216, 1
  br i1 %213, label %218, label %220

218:                                              ; preds = %212
  %219 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @Z_err_buf, ptr noundef nonnull dereferenceable(1) @.str.4.51, i32 noundef %217, ptr noundef %172, i32 noundef 1024) #24
  br label %222

220:                                              ; preds = %212
  %221 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @Z_err_buf, ptr noundef nonnull dereferenceable(1) @.str.5.52, i32 noundef %217, ptr noundef %172) #24
  br label %222

222:                                              ; preds = %220, %218
  %223 = load i1, ptr @_Z_qflag, align 4
  br i1 %223, label %227, label %224

224:                                              ; preds = %222
  %225 = load ptr, ptr @stderr, align 8, !tbaa !7
  %226 = call i32 @fputs(ptr noundef nonnull @Z_err_buf, ptr noundef %225) #26
  br label %227

227:                                              ; preds = %224, %222
  %228 = ashr exact i64 %206, 32
  %229 = getelementptr inbounds [1026 x i8], ptr @L_init_file.buf, i64 0, i64 %228
  store i8 10, ptr %229, align 1, !tbaa !11
  %230 = add i64 %206, 4294967296
  %231 = ashr exact i64 %230, 32
  %232 = getelementptr inbounds [1026 x i8], ptr @L_init_file.buf, i64 0, i64 %231
  store i8 0, ptr %232, align 1, !tbaa !11
  br label %233

233:                                              ; preds = %227, %205
  %234 = load i32, ptr @_L_brlm, align 4
  %235 = load i32, ptr @_L_arlm, align 4
  %236 = select i1 %179, i32 %235, i32 %234
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds [10000 x ptr], ptr %181, i64 0, i64 %237
  %239 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) @L_init_file.buf) #23
  call void (ptr, i64, ...) @S_allocstr(ptr noundef nonnull %238, i64 noundef %239) #25
  %240 = load ptr, ptr %238, align 8, !tbaa !7
  %241 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %240, ptr noundef nonnull dereferenceable(1) @L_init_file.buf) #24
  %242 = load i32, ptr @_L_brlm, align 4
  %243 = load i32, ptr @_L_arlm, align 4
  %244 = select i1 %179, i32 %243, i32 %242
  %245 = icmp sgt i32 %244, 9998
  %246 = add nsw i32 %244, 1
  br i1 %245, label %247, label %182, !llvm.loop !22

247:                                              ; preds = %233
  %248 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @Z_err_buf, ptr noundef nonnull dereferenceable(1) @.str.6.53, ptr noundef %172, i32 noundef 10000) #24
  %249 = load i1, ptr @_Z_qflag, align 4
  br i1 %249, label %253, label %250

250:                                              ; preds = %247
  %251 = load ptr, ptr @stderr, align 8, !tbaa !7
  %252 = call i32 @fputs(ptr noundef nonnull @Z_err_buf, ptr noundef %251) #26
  br label %253

253:                                              ; preds = %250, %247, %182
  %254 = call i32 @fclose(ptr noundef nonnull %174) #25
  %255 = select i1 %179, ptr @_L_aclm, ptr @_L_bclm
  %256 = select i1 %179, ptr @_L_atlm, ptr @_L_btlm
  store i32 0, ptr %255, align 4, !tbaa !12
  store i32 0, ptr %256, align 4, !tbaa !12
  %257 = select i1 %169, ptr @_K_atm, ptr @_K_btm
  store i32 0, ptr %257, align 4, !tbaa !12
  %258 = load i32, ptr @_L_brlm, align 4
  %259 = load i32, ptr @_L_arlm, align 4
  %260 = select i1 %169, i32 %259, i32 %258
  %261 = load i32, ptr @_Y_flags, align 4, !tbaa !12
  store i32 %173, ptr @_P_fnumb, align 4, !tbaa !12
  store i32 %260, ptr @_P_lcount, align 4, !tbaa !12
  store i32 %261, ptr @_P_flags, align 4, !tbaa !12
  store i8 0, ptr @_P_dummyline, align 1, !tbaa !11
  store i8 0, ptr @_C_cmdword, align 16, !tbaa !11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) @_T_tols, i8 0, i64 80, i1 false), !tbaa !7
  store i32 0, ptr @_W_nextcom, align 4, !tbaa !12
  store i32 0, ptr @_W_nextbol, align 4, !tbaa !12
  store i32 0, ptr @_W_nextlit, align 4, !tbaa !12
  store i8 0, ptr @_P_alpha, align 16, !tbaa !11
  %262 = load i32, ptr @_C_nextcmd, align 4, !tbaa !12
  %263 = icmp sgt i32 %262, 0
  br i1 %263, label %264, label %274

264:                                              ; preds = %264, %253
  %265 = phi i64 [ %268, %264 ], [ 0, %253 ]
  %266 = getelementptr inbounds [100 x ptr], ptr @_C_cmds, i64 0, i64 %265
  %267 = load ptr, ptr %266, align 8, !tbaa !7
  call fastcc void @_C_do_a_cmd(ptr noundef %267) #25
  %268 = add nuw nsw i64 %265, 1
  %269 = load i32, ptr @_C_nextcmd, align 4, !tbaa !12
  %270 = sext i32 %269 to i64
  %271 = icmp slt i64 %268, %270
  br i1 %271, label %264, label %272, !llvm.loop !23

272:                                              ; preds = %264
  %273 = load i32, ptr @_P_fnumb, align 4, !tbaa !12
  br label %274

274:                                              ; preds = %272, %253
  %275 = phi i32 [ %273, %272 ], [ %173, %253 ]
  store ptr @_P_dummyline, ptr @_P_nextchr, align 8, !tbaa !7
  store i1 false, ptr @_P_has_content, align 4
  store i32 0, ptr @_P_next_tol, align 4, !tbaa !12
  %276 = icmp eq i32 %275, 0
  %277 = select i1 %276, ptr @_L_ac, ptr @_L_bc
  %278 = load i32, ptr @_L_atlm, align 4
  %279 = load i32, ptr @_L_btlm, align 4
  %280 = select i1 %276, i32 %278, i32 %279
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds [0 x i32], ptr %277, i64 0, i64 %281
  store i32 0, ptr %282, align 4, !tbaa !12
  store i32 -1, ptr @_P_realline, align 4, !tbaa !12
  br label %283

283:                                              ; preds = %395, %274
  %284 = phi ptr [ %396, %395 ], [ @_P_dummyline, %274 ]
  %285 = load i8, ptr %284, align 1, !tbaa !11
  %286 = icmp eq i8 %285, 0
  br i1 %286, label %287, label %377

287:                                              ; preds = %283
  %288 = call fastcc i32 @_P_nextline() #25, !range !24
  %289 = icmp eq i32 %288, 0
  br i1 %289, label %290, label %930

290:                                              ; preds = %287
  %291 = load i1, ptr @_P_has_content, align 4
  br i1 %291, label %292, label %395

292:                                              ; preds = %290
  %293 = load ptr, ptr @_P_firstchr, align 8, !tbaa !7
  %294 = load i32, ptr @_W_nextbol, align 4, !tbaa !12
  %295 = icmp sgt i32 %294, 0
  br i1 %295, label %296, label %307

296:                                              ; preds = %292
  %297 = zext i32 %294 to i64
  br label %301

298:                                              ; preds = %301
  %299 = add nuw nsw i64 %302, 1
  %300 = icmp eq i64 %299, %297
  br i1 %300, label %307, label %301, !llvm.loop !25

301:                                              ; preds = %298, %296
  %302 = phi i64 [ %299, %298 ], [ 0, %296 ]
  %303 = getelementptr inbounds [20 x %struct._W_bolstruct], ptr @_W_bols, i64 0, i64 %302
  %304 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %303) #23
  %305 = call i32 @strncmp(ptr noundef %293, ptr noundef nonnull %303, i64 noundef %304) #23
  %306 = icmp eq i32 %305, 0
  br i1 %306, label %309, label %298

307:                                              ; preds = %298, %292
  %308 = load ptr, ptr @_P_nextchr, align 8, !tbaa !7
  br label %377

309:                                              ; preds = %301
  %.lcssa22 = phi i64 [ %302, %301 ]
  %.lcssa21 = phi ptr [ %303, %301 ]
  %310 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) @bol_scratch, ptr noundef nonnull dereferenceable(1) %.lcssa21) #24
  %311 = getelementptr inbounds [20 x %struct._W_bolstruct], ptr @_W_bols, i64 0, i64 %.lcssa22, i32 1
  %312 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) getelementptr inbounds (%struct._W_bolstruct, ptr @bol_scratch, i64 0, i32 1), ptr noundef nonnull dereferenceable(1) %311) #24
  %313 = getelementptr inbounds [20 x %struct._W_bolstruct], ptr @_W_bols, i64 0, i64 %.lcssa22, i32 2
  %314 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) getelementptr inbounds (%struct._W_bolstruct, ptr @bol_scratch, i64 0, i32 2), ptr noundef nonnull dereferenceable(1) %313) #24
  %315 = load ptr, ptr @_P_nextchr, align 8, !tbaa !7
  %316 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) @bol_scratch) #23
  %317 = getelementptr inbounds i8, ptr %315, i64 %316
  store ptr %317, ptr @_P_nextchr, align 8, !tbaa !7
  %318 = load i8, ptr getelementptr inbounds (%struct._W_bolstruct, ptr @bol_scratch, i64 0, i32 1), align 1, !tbaa !11
  %319 = icmp eq i8 %318, 0
  br i1 %319, label %395, label %320

320:                                              ; preds = %374, %309
  %321 = phi ptr [ %376, %374 ], [ %317, %309 ]
  %322 = load i8, ptr %321, align 1, !tbaa !11
  %323 = icmp eq i8 %322, 0
  br i1 %323, label %324, label %353

324:                                              ; preds = %320
  %325 = call fastcc i32 @_P_nextline() #25, !range !24
  %326 = icmp eq i32 %325, 0
  br i1 %326, label %327, label %930

327:                                              ; preds = %324
  %328 = load i1, ptr @_P_has_content, align 4
  br i1 %328, label %353, label %329

329:                                              ; preds = %327
  %330 = load i32, ptr @_W_nextbol, align 4, !tbaa !12
  %331 = icmp sgt i32 %330, 0
  br i1 %331, label %332, label %395

332:                                              ; preds = %329
  %333 = zext i32 %330 to i64
  br label %334

334:                                              ; preds = %350, %332
  %335 = phi i64 [ 0, %332 ], [ %351, %350 ]
  %336 = getelementptr inbounds [20 x %struct._W_bolstruct], ptr @_W_bols, i64 0, i64 %335
  %337 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %336) #23
  %338 = call i32 @strncmp(ptr noundef nonnull @bol_scratch, ptr noundef nonnull %336, i64 noundef %337) #23
  %339 = icmp eq i32 %338, 0
  br i1 %339, label %340, label %350

340:                                              ; preds = %334
  %341 = getelementptr inbounds [20 x %struct._W_bolstruct], ptr @_W_bols, i64 0, i64 %335, i32 1
  %342 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %341) #23
  %343 = call i32 @strncmp(ptr noundef nonnull getelementptr inbounds (%struct._W_bolstruct, ptr @bol_scratch, i64 0, i32 1), ptr noundef nonnull %341, i64 noundef %342) #23
  %344 = icmp eq i32 %343, 0
  br i1 %344, label %345, label %350

345:                                              ; preds = %340
  %346 = getelementptr inbounds [20 x %struct._W_bolstruct], ptr @_W_bols, i64 0, i64 %335, i32 2
  %347 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %346) #23
  %348 = call i32 @strncmp(ptr noundef nonnull getelementptr inbounds (%struct._W_bolstruct, ptr @bol_scratch, i64 0, i32 2), ptr noundef nonnull %346, i64 noundef %347) #23
  %349 = icmp eq i32 %348, 0
  br i1 %349, label %353, label %350

350:                                              ; preds = %345, %340, %334
  %351 = add nuw nsw i64 %335, 1
  %352 = icmp eq i64 %351, %333
  br i1 %352, label %395, label %334, !llvm.loop !26

353:                                              ; preds = %345, %327, %320
  %354 = load i8, ptr getelementptr inbounds (%struct._W_bolstruct, ptr @bol_scratch, i64 0, i32 2), align 1, !tbaa !11
  %355 = icmp eq i8 %354, 0
  %356 = load ptr, ptr @_P_nextchr, align 8, !tbaa !7
  br i1 %355, label %368, label %357

357:                                              ; preds = %353
  %358 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) getelementptr inbounds (%struct._W_bolstruct, ptr @bol_scratch, i64 0, i32 2)) #23
  %359 = call i32 @strncmp(ptr noundef %356, ptr noundef nonnull getelementptr inbounds (%struct._W_bolstruct, ptr @bol_scratch, i64 0, i32 2), i64 noundef %358) #23
  %360 = icmp eq i32 %359, 0
  br i1 %360, label %361, label %368

361:                                              ; preds = %357
  %362 = getelementptr inbounds i8, ptr %356, i64 %358
  %363 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) getelementptr inbounds (%struct._W_bolstruct, ptr @bol_scratch, i64 0, i32 1)) #23
  %364 = call i32 @strncmp(ptr noundef %362, ptr noundef nonnull getelementptr inbounds (%struct._W_bolstruct, ptr @bol_scratch, i64 0, i32 1), i64 noundef %363) #23
  %365 = icmp eq i32 %364, 0
  br i1 %365, label %366, label %368

366:                                              ; preds = %361
  %367 = add i64 %363, %358
  br label %374

368:                                              ; preds = %361, %357, %353
  %369 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) getelementptr inbounds (%struct._W_bolstruct, ptr @bol_scratch, i64 0, i32 1)) #23
  %370 = call i32 @strncmp(ptr noundef %356, ptr noundef nonnull getelementptr inbounds (%struct._W_bolstruct, ptr @bol_scratch, i64 0, i32 1), i64 noundef %369) #23
  %371 = icmp eq i32 %370, 0
  br i1 %371, label %372, label %374

372:                                              ; preds = %368
  %.lcssa34 = phi i64 [ %369, %368 ]
  %.lcssa33 = phi ptr [ %356, %368 ]
  %373 = getelementptr inbounds i8, ptr %.lcssa33, i64 %.lcssa34
  br label %393

374:                                              ; preds = %368, %366
  %375 = phi i64 [ %367, %366 ], [ 1, %368 ]
  %376 = getelementptr inbounds i8, ptr %356, i64 %375
  store ptr %376, ptr @_P_nextchr, align 8, !tbaa !7
  br label %320

377:                                              ; preds = %307, %283
  %378 = phi ptr [ %284, %283 ], [ %308, %307 ]
  %379 = load i32, ptr @_P_flags, align 4, !tbaa !12
  %380 = and i32 %379, 1
  %381 = icmp eq i32 %380, 0
  br i1 %381, label %382, label %397

382:                                              ; preds = %377
  %383 = tail call ptr @__ctype_b_loc() #27
  %384 = load ptr, ptr %383, align 8, !tbaa !7
  %385 = load i8, ptr %378, align 1, !tbaa !11
  %386 = sext i8 %385 to i64
  %387 = getelementptr inbounds i16, ptr %384, i64 %386
  %388 = load i16, ptr %387, align 2, !tbaa !27
  %389 = and i16 %388, 8192
  %390 = icmp eq i16 %389, 0
  br i1 %390, label %397, label %391

391:                                              ; preds = %382
  %392 = getelementptr inbounds i8, ptr %378, i64 1
  br label %393

393:                                              ; preds = %483, %391, %372
  %394 = phi ptr [ %484, %483 ], [ %373, %372 ], [ %392, %391 ]
  store ptr %394, ptr @_P_nextchr, align 8, !tbaa !7
  br label %395

395:                                              ; preds = %928, %458, %432, %411, %393, %350, %329, %309, %290
  %396 = load ptr, ptr @_P_nextchr, align 8, !tbaa !7
  br label %283

397:                                              ; preds = %382, %377
  %398 = load i32, ptr @_W_nextcom, align 4, !tbaa !12
  %399 = icmp sgt i32 %398, 0
  br i1 %399, label %400, label %485

400:                                              ; preds = %397
  %401 = zext i32 %398 to i64
  br label %405

402:                                              ; preds = %405
  %403 = add nuw nsw i64 %406, 1
  %404 = icmp eq i64 %403, %401
  br i1 %404, label %485, label %405, !llvm.loop !29

405:                                              ; preds = %402, %400
  %406 = phi i64 [ %403, %402 ], [ 0, %400 ]
  %407 = getelementptr inbounds [20 x %struct._W_comstruct], ptr @_W_coms, i64 0, i64 %406
  %408 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %407) #23
  %409 = call i32 @strncmp(ptr noundef %378, ptr noundef nonnull %407, i64 noundef %408) #23
  %410 = icmp eq i32 %409, 0
  br i1 %410, label %411, label %402

411:                                              ; preds = %405
  %.lcssa24 = phi i64 [ %406, %405 ]
  %.lcssa23 = phi ptr [ %407, %405 ]
  %412 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) @com_scratch, ptr noundef nonnull dereferenceable(1) %.lcssa23) #24
  %413 = getelementptr inbounds [20 x %struct._W_comstruct], ptr @_W_coms, i64 0, i64 %.lcssa24, i32 1
  %414 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) getelementptr inbounds (%struct._W_comstruct, ptr @com_scratch, i64 0, i32 1), ptr noundef nonnull dereferenceable(1) %413) #24
  %415 = getelementptr inbounds [20 x %struct._W_comstruct], ptr @_W_coms, i64 0, i64 %.lcssa24, i32 2
  %416 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) getelementptr inbounds (%struct._W_comstruct, ptr @com_scratch, i64 0, i32 2), ptr noundef nonnull dereferenceable(1) %415) #24
  %417 = getelementptr inbounds [20 x %struct._W_comstruct], ptr @_W_coms, i64 0, i64 %.lcssa24, i32 3
  %418 = load i32, ptr %417, align 4, !tbaa !30
  store i32 %418, ptr getelementptr inbounds (%struct._W_comstruct, ptr @com_scratch, i64 0, i32 3), align 4, !tbaa !30
  %419 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) @com_scratch) #23
  %420 = getelementptr inbounds i8, ptr %378, i64 %419
  store ptr %420, ptr @_P_nextchr, align 8, !tbaa !7
  %421 = load i8, ptr getelementptr inbounds (%struct._W_comstruct, ptr @com_scratch, i64 0, i32 1), align 4, !tbaa !11
  %422 = icmp eq i8 %421, 0
  br i1 %422, label %395, label %423

423:                                              ; preds = %476, %411
  %424 = phi ptr [ %478, %476 ], [ %420, %411 ]
  %425 = load i8, ptr %424, align 1, !tbaa !11
  %426 = icmp eq i8 %425, 0
  br i1 %426, label %427, label %461

427:                                              ; preds = %423
  %428 = call fastcc i32 @_P_nextline() #25, !range !24
  %429 = icmp eq i32 %428, 0
  br i1 %429, label %430, label %930

430:                                              ; preds = %427
  %431 = load i1, ptr @_P_has_content, align 4
  br i1 %431, label %461, label %432

432:                                              ; preds = %430
  %433 = load i32, ptr @_W_nextcom, align 4, !tbaa !12
  %434 = icmp sgt i32 %433, 0
  br i1 %434, label %435, label %395

435:                                              ; preds = %432
  %436 = zext i32 %433 to i64
  %437 = load i32, ptr getelementptr inbounds (%struct._W_comstruct, ptr @com_scratch, i64 0, i32 3), align 4
  br label %438

438:                                              ; preds = %458, %435
  %439 = phi i64 [ 0, %435 ], [ %459, %458 ]
  %440 = getelementptr inbounds [20 x %struct._W_comstruct], ptr @_W_coms, i64 0, i64 %439
  %441 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %440) #23
  %442 = call i32 @strncmp(ptr noundef nonnull @com_scratch, ptr noundef nonnull %440, i64 noundef %441) #23
  %443 = icmp eq i32 %442, 0
  br i1 %443, label %444, label %458

444:                                              ; preds = %438
  %445 = getelementptr inbounds [20 x %struct._W_comstruct], ptr @_W_coms, i64 0, i64 %439, i32 1
  %446 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %445) #23
  %447 = call i32 @strncmp(ptr noundef nonnull getelementptr inbounds (%struct._W_comstruct, ptr @com_scratch, i64 0, i32 1), ptr noundef nonnull %445, i64 noundef %446) #23
  %448 = icmp eq i32 %447, 0
  br i1 %448, label %449, label %458

449:                                              ; preds = %444
  %450 = getelementptr inbounds [20 x %struct._W_comstruct], ptr @_W_coms, i64 0, i64 %439, i32 2
  %451 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %450) #23
  %452 = call i32 @strncmp(ptr noundef nonnull getelementptr inbounds (%struct._W_comstruct, ptr @com_scratch, i64 0, i32 2), ptr noundef nonnull %450, i64 noundef %451) #23
  %453 = icmp eq i32 %452, 0
  br i1 %453, label %454, label %458

454:                                              ; preds = %449
  %455 = getelementptr inbounds [20 x %struct._W_comstruct], ptr @_W_coms, i64 0, i64 %439, i32 3
  %456 = load i32, ptr %455, align 4, !tbaa !30
  %457 = icmp eq i32 %437, %456
  br i1 %457, label %461, label %458

458:                                              ; preds = %454, %449, %444, %438
  %459 = add nuw nsw i64 %439, 1
  %460 = icmp eq i64 %459, %436
  br i1 %460, label %395, label %438, !llvm.loop !32

461:                                              ; preds = %454, %430, %423
  %462 = load i8, ptr getelementptr inbounds (%struct._W_comstruct, ptr @com_scratch, i64 0, i32 2), align 4, !tbaa !11
  %463 = icmp eq i8 %462, 0
  %464 = load ptr, ptr @_P_nextchr, align 8, !tbaa !7
  br i1 %463, label %479, label %465

465:                                              ; preds = %461
  %466 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) getelementptr inbounds (%struct._W_comstruct, ptr @com_scratch, i64 0, i32 2)) #23
  %467 = call i32 @strncmp(ptr noundef %464, ptr noundef nonnull getelementptr inbounds (%struct._W_comstruct, ptr @com_scratch, i64 0, i32 2), i64 noundef %466) #23
  %468 = icmp eq i32 %467, 0
  br i1 %468, label %469, label %479

469:                                              ; preds = %465
  %470 = getelementptr inbounds i8, ptr %464, i64 %466
  %471 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) getelementptr inbounds (%struct._W_comstruct, ptr @com_scratch, i64 0, i32 1)) #23
  %472 = call i32 @strncmp(ptr noundef %470, ptr noundef nonnull getelementptr inbounds (%struct._W_comstruct, ptr @com_scratch, i64 0, i32 1), i64 noundef %471) #23
  %473 = icmp eq i32 %472, 0
  br i1 %473, label %474, label %479

474:                                              ; preds = %469
  %475 = add i64 %471, %466
  br label %476

476:                                              ; preds = %479, %474
  %477 = phi i64 [ %475, %474 ], [ 1, %479 ]
  %478 = getelementptr inbounds i8, ptr %464, i64 %477
  store ptr %478, ptr @_P_nextchr, align 8, !tbaa !7
  br label %423

479:                                              ; preds = %469, %465, %461
  %480 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) getelementptr inbounds (%struct._W_comstruct, ptr @com_scratch, i64 0, i32 1)) #23
  %481 = call i32 @strncmp(ptr noundef %464, ptr noundef nonnull getelementptr inbounds (%struct._W_comstruct, ptr @com_scratch, i64 0, i32 1), i64 noundef %480) #23
  %482 = icmp eq i32 %481, 0
  br i1 %482, label %483, label %476

483:                                              ; preds = %479
  %.lcssa32 = phi i64 [ %480, %479 ]
  %.lcssa31 = phi ptr [ %464, %479 ]
  %484 = getelementptr inbounds i8, ptr %.lcssa31, i64 %.lcssa32
  br label %393

485:                                              ; preds = %402, %397
  %486 = load i32, ptr @_P_fnumb, align 4, !tbaa !12
  %487 = icmp eq i32 %486, 0
  br i1 %487, label %494, label %488

488:                                              ; preds = %485
  %489 = load i32, ptr @_L_btlm, align 4
  %490 = sext i32 %489 to i64
  %491 = getelementptr inbounds [0 x i32], ptr @_L_bc, i64 0, i64 %490
  %492 = load i32, ptr %491, align 4, !tbaa !12
  %493 = icmp eq i32 %492, 0
  br i1 %493, label %500, label %506

494:                                              ; preds = %485
  %495 = load i32, ptr @_L_atlm, align 4
  %496 = sext i32 %495 to i64
  %497 = getelementptr inbounds [0 x i32], ptr @_L_ac, i64 0, i64 %496
  %498 = load i32, ptr %497, align 4, !tbaa !12
  %499 = icmp eq i32 %498, 0
  br i1 %499, label %503, label %506

500:                                              ; preds = %488
  %501 = load i32, ptr @_L_bclm, align 4
  %502 = getelementptr inbounds [0 x i32], ptr @_L_btlindex, i64 0, i64 %490
  store i32 %501, ptr %502, align 4, !tbaa !12
  br label %506

503:                                              ; preds = %494
  %504 = load i32, ptr @_L_aclm, align 4
  %505 = getelementptr inbounds [0 x i32], ptr @_L_atlindex, i64 0, i64 %496
  store i32 %504, ptr %505, align 4, !tbaa !12
  br label %506

506:                                              ; preds = %503, %500, %494, %488
  %507 = load i32, ptr @_L_btlm, align 4
  %508 = sext i32 %507 to i64
  %509 = getelementptr inbounds [0 x i32], ptr @_L_btlindex, i64 0, i64 %508
  %510 = load i32, ptr @_L_atlm, align 4
  %511 = sext i32 %510 to i64
  %512 = getelementptr inbounds [0 x i32], ptr @_L_atlindex, i64 0, i64 %511
  %513 = select i1 %487, ptr %512, ptr %509
  %514 = load i32, ptr %513, align 4, !tbaa !12
  %515 = load ptr, ptr @_P_firstchr, align 8, !tbaa !7
  %516 = ptrtoint ptr %378 to i64
  %517 = ptrtoint ptr %515 to i64
  %518 = sub i64 %516, %517
  %519 = trunc i64 %518 to i32
  %520 = call ptr (i64, ...) @_Z_myalloc(i64 noundef 40) #24
  %521 = load i32, ptr @_P_fnumb, align 4, !tbaa !12
  %522 = icmp eq i32 %521, 0
  %523 = load i32, ptr @_L_btlm, align 4
  %524 = load i32, ptr @_L_atlm, align 4
  %525 = select i1 %522, i32 %524, i32 %523
  store i32 %525, ptr %520, align 8, !tbaa !33
  %526 = getelementptr inbounds %struct._K_str, ptr %520, i64 0, i32 1
  store i32 %519, ptr %526, align 4, !tbaa !35
  %527 = load ptr, ptr @_P_nextchr, align 8, !tbaa !7
  %528 = load i32, ptr @_W_nextlit, align 4, !tbaa !12
  %529 = icmp sgt i32 %528, 0
  br i1 %529, label %530, label %683

530:                                              ; preds = %506
  %531 = zext i32 %528 to i64
  br label %535

532:                                              ; preds = %535
  %533 = add nuw nsw i64 %536, 1
  %534 = icmp eq i64 %533, %531
  br i1 %534, label %683, label %535, !llvm.loop !36

535:                                              ; preds = %532, %530
  %536 = phi i64 [ %533, %532 ], [ 0, %530 ]
  %537 = getelementptr inbounds [20 x %struct._W_bolstruct], ptr @_W_lits, i64 0, i64 %536
  %538 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %537) #23
  %539 = call i32 @strncmp(ptr noundef %527, ptr noundef nonnull %537, i64 noundef %538) #23
  %540 = icmp eq i32 %539, 0
  br i1 %540, label %541, label %532

541:                                              ; preds = %535
  %.lcssa26 = phi i64 [ %536, %535 ]
  %.lcssa25 = phi ptr [ %537, %535 ]
  %542 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) @lit_scratch, ptr noundef nonnull dereferenceable(1) %.lcssa25) #24
  %543 = getelementptr inbounds [20 x %struct._W_bolstruct], ptr @_W_lits, i64 0, i64 %.lcssa26, i32 1
  %544 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) getelementptr inbounds (%struct._W_bolstruct, ptr @lit_scratch, i64 0, i32 1), ptr noundef nonnull dereferenceable(1) %543) #24
  %545 = getelementptr inbounds [20 x %struct._W_bolstruct], ptr @_W_lits, i64 0, i64 %.lcssa26, i32 2
  %546 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) getelementptr inbounds (%struct._W_bolstruct, ptr @lit_scratch, i64 0, i32 2), ptr noundef nonnull dereferenceable(1) %545) #24
  %547 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) @lit_scratch) #23
  %548 = getelementptr inbounds i8, ptr %527, i64 %547
  store ptr %548, ptr @_P_nextchr, align 8, !tbaa !7
  %549 = trunc i64 %547 to i32
  store i32 %549, ptr @_P_stringsize, align 4, !tbaa !12
  %550 = load i8, ptr getelementptr inbounds (%struct._W_bolstruct, ptr @lit_scratch, i64 0, i32 1), align 1, !tbaa !11
  %551 = icmp eq i8 %550, 0
  br i1 %551, label %623, label %552

552:                                              ; preds = %617, %541
  %553 = phi ptr [ %618, %617 ], [ %548, %541 ]
  %554 = load i8, ptr %553, align 1, !tbaa !11
  %555 = icmp eq i8 %554, 0
  br i1 %555, label %556, label %585

556:                                              ; preds = %552
  %557 = call fastcc i32 @_P_nextline() #25, !range !24
  %558 = icmp eq i32 %557, 0
  br i1 %558, label %559, label %620

559:                                              ; preds = %556
  %560 = load i1, ptr @_P_has_content, align 4
  br i1 %560, label %585, label %561

561:                                              ; preds = %559
  %562 = load i32, ptr @_W_nextlit, align 4, !tbaa !12
  %563 = icmp sgt i32 %562, 0
  br i1 %563, label %564, label %620

564:                                              ; preds = %561
  %565 = zext i32 %562 to i64
  br label %566

566:                                              ; preds = %582, %564
  %567 = phi i64 [ 0, %564 ], [ %583, %582 ]
  %568 = getelementptr inbounds [20 x %struct._W_bolstruct], ptr @_W_lits, i64 0, i64 %567
  %569 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %568) #23
  %570 = call i32 @strncmp(ptr noundef nonnull @lit_scratch, ptr noundef nonnull %568, i64 noundef %569) #23
  %571 = icmp eq i32 %570, 0
  br i1 %571, label %572, label %582

572:                                              ; preds = %566
  %573 = getelementptr inbounds [20 x %struct._W_bolstruct], ptr @_W_lits, i64 0, i64 %567, i32 1
  %574 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %573) #23
  %575 = call i32 @strncmp(ptr noundef nonnull getelementptr inbounds (%struct._W_bolstruct, ptr @lit_scratch, i64 0, i32 1), ptr noundef nonnull %573, i64 noundef %574) #23
  %576 = icmp eq i32 %575, 0
  br i1 %576, label %577, label %582

577:                                              ; preds = %572
  %578 = getelementptr inbounds [20 x %struct._W_bolstruct], ptr @_W_lits, i64 0, i64 %567, i32 2
  %579 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %578) #23
  %580 = call i32 @strncmp(ptr noundef nonnull getelementptr inbounds (%struct._W_bolstruct, ptr @lit_scratch, i64 0, i32 2), ptr noundef nonnull %578, i64 noundef %579) #23
  %581 = icmp eq i32 %580, 0
  br i1 %581, label %585, label %582

582:                                              ; preds = %577, %572, %566
  %583 = add nuw nsw i64 %567, 1
  %584 = icmp eq i64 %583, %565
  br i1 %584, label %620, label %566, !llvm.loop !37

585:                                              ; preds = %577, %559, %552
  %586 = load i8, ptr getelementptr inbounds (%struct._W_bolstruct, ptr @lit_scratch, i64 0, i32 2), align 1, !tbaa !11
  %587 = icmp eq i8 %586, 0
  %588 = load ptr, ptr @_P_nextchr, align 8, !tbaa !7
  br i1 %587, label %604, label %589

589:                                              ; preds = %585
  %590 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) getelementptr inbounds (%struct._W_bolstruct, ptr @lit_scratch, i64 0, i32 2)) #23
  %591 = call i32 @strncmp(ptr noundef %588, ptr noundef nonnull getelementptr inbounds (%struct._W_bolstruct, ptr @lit_scratch, i64 0, i32 2), i64 noundef %590) #23
  %592 = icmp eq i32 %591, 0
  br i1 %592, label %593, label %604

593:                                              ; preds = %589
  %594 = getelementptr inbounds i8, ptr %588, i64 %590
  %595 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) getelementptr inbounds (%struct._W_bolstruct, ptr @lit_scratch, i64 0, i32 1)) #23
  %596 = call i32 @strncmp(ptr noundef %594, ptr noundef nonnull getelementptr inbounds (%struct._W_bolstruct, ptr @lit_scratch, i64 0, i32 1), i64 noundef %595) #23
  %597 = icmp eq i32 %596, 0
  br i1 %597, label %598, label %604

598:                                              ; preds = %593
  %599 = add i64 %595, %590
  %600 = getelementptr inbounds i8, ptr %588, i64 %599
  store ptr %600, ptr @_P_nextchr, align 8, !tbaa !7
  %601 = load i32, ptr @_P_stringsize, align 4, !tbaa !12
  %602 = trunc i64 %599 to i32
  %603 = add i32 %601, %602
  br label %617

604:                                              ; preds = %593, %589, %585
  %605 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) getelementptr inbounds (%struct._W_bolstruct, ptr @lit_scratch, i64 0, i32 1)) #23
  %606 = call i32 @strncmp(ptr noundef %588, ptr noundef nonnull getelementptr inbounds (%struct._W_bolstruct, ptr @lit_scratch, i64 0, i32 1), i64 noundef %605) #23
  %607 = icmp eq i32 %606, 0
  br i1 %607, label %608, label %613

608:                                              ; preds = %604
  %.lcssa30 = phi i64 [ %605, %604 ]
  %.lcssa29 = phi ptr [ %588, %604 ]
  %609 = getelementptr inbounds i8, ptr %.lcssa29, i64 %.lcssa30
  store ptr %609, ptr @_P_nextchr, align 8, !tbaa !7
  %610 = load i32, ptr @_P_stringsize, align 4, !tbaa !12
  %611 = trunc i64 %.lcssa30 to i32
  %612 = add i32 %610, %611
  store i32 %612, ptr @_P_stringsize, align 4, !tbaa !12
  br label %623

613:                                              ; preds = %604
  %614 = getelementptr inbounds i8, ptr %588, i64 1
  store ptr %614, ptr @_P_nextchr, align 8, !tbaa !7
  %615 = load i32, ptr @_P_stringsize, align 4, !tbaa !12
  %616 = add nsw i32 %615, 1
  br label %617

617:                                              ; preds = %613, %598
  %618 = phi ptr [ %614, %613 ], [ %600, %598 ]
  %619 = phi i32 [ %616, %613 ], [ %603, %598 ]
  store i32 %619, ptr @_P_stringsize, align 4, !tbaa !12
  br label %552

620:                                              ; preds = %582, %561, %556
  %621 = phi i32 [ 0, %582 ], [ 1, %556 ], [ 0, %561 ]
  %622 = load i32, ptr @_P_stringsize, align 4, !tbaa !12
  br label %623

623:                                              ; preds = %620, %608, %541
  %624 = phi i32 [ %612, %608 ], [ %549, %541 ], [ %622, %620 ]
  %625 = phi i32 [ 0, %608 ], [ 0, %541 ], [ %621, %620 ]
  %626 = getelementptr inbounds %struct._K_str, ptr %520, i64 0, i32 2
  store i32 1, ptr %626, align 8, !tbaa !38
  %627 = add nsw i32 %624, 1
  %628 = sext i32 %627 to i64
  %629 = call ptr (i64, ...) @_Z_myalloc(i64 noundef %628) #24
  %630 = load i32, ptr @_P_fnumb, align 4, !tbaa !12
  %631 = icmp eq i32 %630, 0
  %632 = load i32, ptr @_L_bclm, align 4
  %633 = load i32, ptr @_L_aclm, align 4
  %634 = select i1 %631, i32 %633, i32 %632
  %635 = icmp sgt i32 %634, %514
  %636 = sext i32 %514 to i64
  %637 = select i1 %631, ptr @_L_aclindex, ptr @_L_bclindex
  %638 = select i1 %631, ptr @_L_al, ptr @_L_bl
  %639 = getelementptr inbounds [0 x i32], ptr %637, i64 0, i64 %636
  %640 = load i32, ptr %639, align 4, !tbaa !12
  %641 = sext i32 %640 to i64
  %642 = getelementptr inbounds [0 x ptr], ptr %638, i64 0, i64 %641
  %643 = load ptr, ptr %642, align 8, !tbaa !7
  %644 = shl i64 %518, 32
  %645 = ashr exact i64 %644, 32
  %646 = getelementptr inbounds i8, ptr %643, i64 %645
  br i1 %635, label %647, label %676

647:                                              ; preds = %623
  %648 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %629, ptr noundef nonnull dereferenceable(1) %646) #24
  %649 = add nsw i32 %514, 1
  %650 = icmp slt i32 %649, %634
  br i1 %650, label %651, label %664

651:                                              ; preds = %647
  %652 = sext i32 %649 to i64
  br label %653

653:                                              ; preds = %653, %651
  %654 = phi i64 [ %652, %651 ], [ %661, %653 ]
  %655 = getelementptr inbounds [0 x i32], ptr %637, i64 0, i64 %654
  %656 = load i32, ptr %655, align 4, !tbaa !12
  %657 = sext i32 %656 to i64
  %658 = getelementptr inbounds [0 x ptr], ptr %638, i64 0, i64 %657
  %659 = load ptr, ptr %658, align 8, !tbaa !7
  %660 = call ptr @strcat(ptr noundef nonnull dereferenceable(1) %629, ptr noundef nonnull dereferenceable(1) %659) #24
  %661 = add nsw i64 %654, 1
  %662 = trunc i64 %661 to i32
  %663 = icmp eq i32 %634, %662
  br i1 %663, label %664, label %653, !llvm.loop !39

664:                                              ; preds = %653, %647
  %665 = sext i32 %634 to i64
  %666 = getelementptr inbounds [0 x i32], ptr %637, i64 0, i64 %665
  %667 = load i32, ptr %666, align 4, !tbaa !12
  %668 = sext i32 %667 to i64
  %669 = getelementptr inbounds [0 x ptr], ptr %638, i64 0, i64 %668
  %670 = load ptr, ptr %669, align 8, !tbaa !7
  %671 = load i32, ptr @_P_stringsize, align 4, !tbaa !12
  %672 = sext i32 %671 to i64
  %673 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %629) #23
  %674 = sub i64 %672, %673
  %675 = call ptr @strncat(ptr noundef nonnull dereferenceable(1) %629, ptr noundef %670, i64 noundef %674) #24
  br label %681

676:                                              ; preds = %623
  %677 = load i32, ptr @_P_stringsize, align 4, !tbaa !12
  %678 = sext i32 %677 to i64
  %679 = call ptr @strncpy(ptr noundef %629, ptr noundef %646, i64 noundef %678) #24
  %680 = getelementptr inbounds i8, ptr %629, i64 %678
  store i8 0, ptr %680, align 1, !tbaa !11
  br label %681

681:                                              ; preds = %676, %664
  %682 = getelementptr inbounds %struct._K_str, ptr %520, i64 0, i32 3
  store ptr %629, ptr %682, align 8, !tbaa !40
  br label %889

683:                                              ; preds = %532, %506
  %684 = load i32, ptr @_P_flags, align 4, !tbaa !12
  %685 = and i32 %684, 32
  %686 = and i32 %684, 16
  %687 = icmp eq i32 %686, 0
  br i1 %687, label %692, label %688

688:                                              ; preds = %683
  %689 = load i8, ptr %527, align 1, !tbaa !11
  switch i8 %689, label %692 [
    i8 43, label %690
    i8 45, label %690
  ]

690:                                              ; preds = %688, %688
  %691 = getelementptr inbounds i8, ptr %527, i64 1
  br label %692

692:                                              ; preds = %690, %688, %683
  %693 = phi ptr [ %691, %690 ], [ %527, %683 ], [ %527, %688 ]
  %694 = phi i32 [ 1, %690 ], [ 0, %683 ], [ 0, %688 ]
  %695 = tail call ptr @__ctype_b_loc() #27
  %696 = load ptr, ptr %695, align 8, !tbaa !7
  %697 = load i8, ptr %693, align 1, !tbaa !11
  %698 = sext i8 %697 to i64
  %699 = getelementptr inbounds i16, ptr %696, i64 %698
  %700 = load i16, ptr %699, align 2, !tbaa !27
  %701 = and i16 %700, 2048
  %702 = icmp eq i16 %701, 0
  br i1 %702, label %714, label %703

703:                                              ; preds = %703, %692
  %704 = phi i32 [ %707, %703 ], [ %694, %692 ]
  %705 = phi ptr [ %706, %703 ], [ %693, %692 ]
  %706 = getelementptr inbounds i8, ptr %705, i64 1
  %707 = add nuw nsw i32 %704, 1
  %708 = load i8, ptr %706, align 1, !tbaa !11
  %709 = sext i8 %708 to i64
  %710 = getelementptr inbounds i16, ptr %696, i64 %709
  %711 = load i16, ptr %710, align 2, !tbaa !27
  %712 = and i16 %711, 2048
  %713 = icmp eq i16 %712, 0
  br i1 %713, label %714, label %703, !llvm.loop !41

714:                                              ; preds = %703, %692
  %715 = phi ptr [ %693, %692 ], [ %706, %703 ]
  %716 = phi i32 [ %694, %692 ], [ %707, %703 ]
  %717 = phi i8 [ %697, %692 ], [ %708, %703 ]
  %718 = icmp eq i8 %717, 46
  br i1 %718, label %719, label %723

719:                                              ; preds = %714
  %720 = getelementptr inbounds i8, ptr %715, i64 1
  %721 = add nuw nsw i32 %716, 1
  %722 = load i8, ptr %720, align 1, !tbaa !11
  br label %725

723:                                              ; preds = %714
  %724 = icmp eq i32 %685, 0
  br i1 %724, label %725, label %819

725:                                              ; preds = %723, %719
  %726 = phi i8 [ %722, %719 ], [ %717, %723 ]
  %727 = phi ptr [ %720, %719 ], [ %715, %723 ]
  %728 = phi i32 [ %721, %719 ], [ %716, %723 ]
  %729 = sext i8 %726 to i64
  %730 = getelementptr inbounds i16, ptr %696, i64 %729
  %731 = load i16, ptr %730, align 2, !tbaa !27
  %732 = and i16 %731, 2048
  %733 = icmp eq i16 %732, 0
  br i1 %733, label %745, label %734

734:                                              ; preds = %734, %725
  %735 = phi i32 [ %738, %734 ], [ %728, %725 ]
  %736 = phi ptr [ %737, %734 ], [ %727, %725 ]
  %737 = getelementptr inbounds i8, ptr %736, i64 1
  %738 = add nsw i32 %735, 1
  %739 = load i8, ptr %737, align 1, !tbaa !11
  %740 = sext i8 %739 to i64
  %741 = getelementptr inbounds i16, ptr %696, i64 %740
  %742 = load i16, ptr %741, align 2, !tbaa !27
  %743 = and i16 %742, 2048
  %744 = icmp eq i16 %743, 0
  br i1 %744, label %746, label %734, !llvm.loop !42

745:                                              ; preds = %725
  br i1 %702, label %819, label %746

746:                                              ; preds = %745, %734
  %747 = phi i8 [ %726, %745 ], [ %739, %734 ]
  %748 = phi i32 [ %728, %745 ], [ %738, %734 ]
  %749 = phi ptr [ %727, %745 ], [ %737, %734 ]
  switch i8 %747, label %776 [
    i8 101, label %750
    i8 69, label %750
    i8 100, label %750
    i8 68, label %750
  ]

750:                                              ; preds = %746, %746, %746, %746
  %751 = getelementptr inbounds i8, ptr %749, i64 1
  %752 = load i8, ptr %751, align 1, !tbaa !11
  switch i8 %752, label %756 [
    i8 43, label %753
    i8 45, label %753
  ]

753:                                              ; preds = %750, %750
  %754 = getelementptr inbounds i8, ptr %749, i64 2
  %755 = load i8, ptr %754, align 1, !tbaa !11
  br label %756

756:                                              ; preds = %753, %750
  %757 = phi i8 [ %755, %753 ], [ %752, %750 ]
  %758 = phi ptr [ %754, %753 ], [ %751, %750 ]
  %759 = phi i32 [ 2, %753 ], [ 1, %750 ]
  %760 = sext i8 %757 to i64
  %761 = getelementptr inbounds i16, ptr %696, i64 %760
  %762 = load i16, ptr %761, align 2, !tbaa !27
  %763 = and i16 %762, 2048
  %764 = icmp eq i16 %763, 0
  br i1 %764, label %779, label %765

765:                                              ; preds = %765, %756
  %766 = phi i32 [ %769, %765 ], [ %759, %756 ]
  %767 = phi ptr [ %768, %765 ], [ %758, %756 ]
  %768 = getelementptr inbounds i8, ptr %767, i64 1
  %769 = add nuw nsw i32 %766, 1
  %770 = load i8, ptr %768, align 1, !tbaa !11
  %771 = sext i8 %770 to i64
  %772 = getelementptr inbounds i16, ptr %696, i64 %771
  %773 = load i16, ptr %772, align 2, !tbaa !27
  %774 = and i16 %773, 2048
  %775 = icmp eq i16 %774, 0
  br i1 %775, label %776, label %765, !llvm.loop !43

776:                                              ; preds = %765, %746
  %777 = phi i32 [ 0, %746 ], [ %769, %765 ]
  %778 = add nsw i32 %777, %748
  br label %779

779:                                              ; preds = %776, %756
  %780 = phi i32 [ %778, %776 ], [ %748, %756 ]
  %781 = icmp eq i32 %780, 0
  br i1 %781, label %819, label %782

782:                                              ; preds = %779
  %783 = getelementptr inbounds %struct._K_str, ptr %520, i64 0, i32 3
  %784 = add nsw i32 %780, 1
  %785 = sext i32 %784 to i64
  %786 = call ptr (i64, ...) @_Z_myalloc(i64 noundef %785) #24
  store ptr %786, ptr %783, align 8, !tbaa !7
  %787 = sext i32 %780 to i64
  %788 = call ptr @strncpy(ptr noundef %786, ptr noundef %527, i64 noundef %787) #24
  %789 = load ptr, ptr %783, align 8, !tbaa !7
  %790 = getelementptr inbounds i8, ptr %789, i64 %787
  store i8 0, ptr %790, align 1, !tbaa !11
  %791 = getelementptr inbounds %struct._K_str, ptr %520, i64 0, i32 2
  store i32 2, ptr %791, align 8, !tbaa !38
  %792 = load i32, ptr @_P_flags, align 4, !tbaa !12
  %793 = and i32 %792, 2
  %794 = icmp eq i32 %793, 0
  br i1 %794, label %797, label %795

795:                                              ; preds = %782
  %796 = load i32, ptr @_P_next_tol, align 4, !tbaa !12
  br label %806

797:                                              ; preds = %782
  %798 = load ptr, ptr %783, align 8, !tbaa !40
  %799 = call fastcc ptr @F_atof(ptr noundef %798, i32 noundef 1) #24
  %800 = getelementptr inbounds %struct._K_str, ptr %520, i64 0, i32 4
  store ptr %799, ptr %800, align 8, !tbaa !44
  %801 = load i32, ptr @_P_next_tol, align 4, !tbaa !12
  %802 = sext i32 %801 to i64
  %803 = getelementptr inbounds [10 x ptr], ptr @_T_tols, i64 0, i64 %802
  %804 = load ptr, ptr %803, align 8, !tbaa !7
  %805 = getelementptr inbounds %struct._K_str, ptr %520, i64 0, i32 5
  store ptr %804, ptr %805, align 8, !tbaa !45
  br label %806

806:                                              ; preds = %797, %795
  %807 = phi i32 [ %796, %795 ], [ %801, %797 ]
  %808 = icmp ult i32 %807, 9
  br i1 %808, label %809, label %816

809:                                              ; preds = %806
  %810 = add nuw nsw i32 %807, 1
  %811 = zext i32 %810 to i64
  %812 = getelementptr inbounds [10 x ptr], ptr @_T_tols, i64 0, i64 %811
  %813 = load ptr, ptr %812, align 8, !tbaa !7
  %814 = icmp eq ptr %813, null
  br i1 %814, label %816, label %815

815:                                              ; preds = %809
  store i32 %810, ptr @_P_next_tol, align 4, !tbaa !12
  br label %816

816:                                              ; preds = %815, %809, %806
  %817 = load ptr, ptr @_P_nextchr, align 8, !tbaa !7
  %818 = getelementptr inbounds i8, ptr %817, i64 %787
  store ptr %818, ptr @_P_nextchr, align 8, !tbaa !7
  br label %889

819:                                              ; preds = %779, %745, %723
  %820 = load i8, ptr %527, align 1, !tbaa !11
  %821 = sext i8 %820 to i32
  %822 = sext i8 %820 to i64
  %823 = getelementptr inbounds i16, ptr %696, i64 %822
  %824 = load i16, ptr %823, align 2, !tbaa !27
  %825 = zext i16 %824 to i32
  %826 = and i32 %825, 2048
  %827 = icmp eq i32 %826, 0
  br i1 %827, label %843, label %828

828:                                              ; preds = %828, %819
  %829 = phi ptr [ %836, %828 ], [ %527, %819 ]
  %830 = load i8, ptr %829, align 1, !tbaa !11
  %831 = sext i8 %830 to i64
  %832 = getelementptr inbounds i16, ptr %696, i64 %831
  %833 = load i16, ptr %832, align 2, !tbaa !27
  %834 = and i16 %833, 2048
  %835 = icmp eq i16 %834, 0
  %836 = getelementptr inbounds i8, ptr %829, i64 1
  br i1 %835, label %837, label %828, !llvm.loop !46

837:                                              ; preds = %828
  %.lcssa27 = phi ptr [ %829, %828 ]
  %838 = getelementptr inbounds %struct._K_str, ptr %520, i64 0, i32 3
  %839 = ptrtoint ptr %.lcssa27 to i64
  %840 = ptrtoint ptr %527 to i64
  %841 = sub i64 %839, %840
  call void (ptr, ptr, i64, ...) @S_savenstr(ptr noundef nonnull %838, ptr noundef nonnull %527, i64 noundef %841) #24
  %842 = getelementptr inbounds %struct._K_str, ptr %520, i64 0, i32 2
  store i32 1, ptr %842, align 8, !tbaa !38
  store ptr %.lcssa27, ptr @_P_nextchr, align 8, !tbaa !7
  br label %889

843:                                              ; preds = %819
  %844 = and i32 %825, 1024
  %845 = icmp eq i32 %844, 0
  br i1 %845, label %846, label %853

846:                                              ; preds = %843
  %847 = icmp eq i8 %820, 0
  br i1 %847, label %880, label %848

848:                                              ; preds = %846
  %849 = call ptr @index(ptr noundef nonnull @_P_alpha, i32 noundef %821) #23
  %850 = ptrtoint ptr %849 to i64
  %851 = and i64 %850, 4294967295
  %852 = icmp eq i64 %851, 0
  br i1 %852, label %880, label %853

853:                                              ; preds = %848, %843
  br label %854

854:                                              ; preds = %868, %853
  %855 = phi i16 [ %873, %868 ], [ %824, %853 ]
  %856 = phi i8 [ %870, %868 ], [ %820, %853 ]
  %857 = phi ptr [ %869, %868 ], [ %527, %853 ]
  %858 = and i16 %855, 3072
  %859 = icmp eq i16 %858, 0
  br i1 %859, label %860, label %868

860:                                              ; preds = %854
  %861 = icmp eq i8 %856, 0
  br i1 %861, label %874, label %862

862:                                              ; preds = %860
  %863 = sext i8 %856 to i32
  %864 = call ptr @index(ptr noundef nonnull @_P_alpha, i32 noundef %863) #23
  %865 = ptrtoint ptr %864 to i64
  %866 = and i64 %865, 4294967295
  %867 = icmp eq i64 %866, 0
  br i1 %867, label %874, label %868

868:                                              ; preds = %862, %854
  %869 = getelementptr inbounds i8, ptr %857, i64 1
  %870 = load i8, ptr %869, align 1, !tbaa !11
  %871 = sext i8 %870 to i64
  %872 = getelementptr inbounds i16, ptr %696, i64 %871
  %873 = load i16, ptr %872, align 2, !tbaa !27
  br label %854, !llvm.loop !47

874:                                              ; preds = %862, %860
  %.lcssa28 = phi ptr [ %857, %862 ], [ %857, %860 ]
  %875 = getelementptr inbounds %struct._K_str, ptr %520, i64 0, i32 3
  %876 = ptrtoint ptr %.lcssa28 to i64
  %877 = ptrtoint ptr %527 to i64
  %878 = sub i64 %876, %877
  call void (ptr, ptr, i64, ...) @S_savenstr(ptr noundef nonnull %875, ptr noundef nonnull %527, i64 noundef %878) #24
  %879 = getelementptr inbounds %struct._K_str, ptr %520, i64 0, i32 2
  store i32 1, ptr %879, align 8, !tbaa !38
  store ptr %.lcssa28, ptr @_P_nextchr, align 8, !tbaa !7
  br label %889

880:                                              ; preds = %848, %846
  %881 = getelementptr inbounds %struct._K_str, ptr %520, i64 0, i32 3
  %882 = call ptr (i64, ...) @_Z_myalloc(i64 noundef 2) #24
  store ptr %882, ptr %881, align 8, !tbaa !7
  %883 = load i8, ptr %527, align 1
  store i8 %883, ptr %882, align 1
  %884 = load ptr, ptr %881, align 8, !tbaa !7
  %885 = getelementptr inbounds i8, ptr %884, i64 1
  store i8 0, ptr %885, align 1, !tbaa !11
  %886 = getelementptr inbounds %struct._K_str, ptr %520, i64 0, i32 2
  store i32 1, ptr %886, align 8, !tbaa !38
  %887 = load ptr, ptr @_P_nextchr, align 8, !tbaa !7
  %888 = getelementptr inbounds i8, ptr %887, i64 1
  store ptr %888, ptr @_P_nextchr, align 8, !tbaa !7
  br label %889

889:                                              ; preds = %880, %874, %837, %816, %681
  %890 = phi i32 [ %625, %681 ], [ 0, %816 ], [ 0, %837 ], [ 0, %874 ], [ 0, %880 ]
  %891 = load i32, ptr @_P_fnumb, align 4, !tbaa !12
  %892 = icmp eq i32 %891, 0
  %893 = load i32, ptr @_K_btm, align 4
  %894 = load i32, ptr @_K_atm, align 4
  %895 = select i1 %892, i32 %894, i32 %893
  %896 = sext i32 %895 to i64
  %897 = select i1 %892, ptr @_K_ato, ptr @_K_bto
  %898 = getelementptr inbounds [50000 x ptr], ptr %897, i64 0, i64 %896
  store ptr %520, ptr %898, align 8, !tbaa !7
  br i1 %892, label %906, label %899

899:                                              ; preds = %889
  %900 = load i32, ptr @_L_btlm, align 4
  %901 = sext i32 %900 to i64
  %902 = getelementptr inbounds [0 x i32], ptr @_L_bc, i64 0, i64 %901
  %903 = load i32, ptr %902, align 4, !tbaa !12
  %904 = add nsw i32 %903, 1
  store i32 %904, ptr %902, align 4, !tbaa !12
  %905 = add nsw i32 %893, 1
  store i32 %905, ptr @_K_btm, align 4, !tbaa !12
  br label %913

906:                                              ; preds = %889
  %907 = load i32, ptr @_L_atlm, align 4
  %908 = sext i32 %907 to i64
  %909 = getelementptr inbounds [0 x i32], ptr @_L_ac, i64 0, i64 %908
  %910 = load i32, ptr %909, align 4, !tbaa !12
  %911 = add nsw i32 %910, 1
  store i32 %911, ptr %909, align 4, !tbaa !12
  %912 = add nsw i32 %894, 1
  store i32 %912, ptr @_K_atm, align 4, !tbaa !12
  br label %913

913:                                              ; preds = %906, %899
  %914 = phi i32 [ %912, %906 ], [ %905, %899 ]
  %915 = icmp sgt i32 %914, 49999
  br i1 %915, label %916, label %922

916:                                              ; preds = %913
  %917 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @Z_err_buf, ptr noundef nonnull dereferenceable(1) @.str.2.87, i32 noundef 50000) #24
  %918 = load i1, ptr @_Z_qflag, align 4
  br i1 %918, label %930, label %919

919:                                              ; preds = %916
  %920 = load ptr, ptr @stderr, align 8, !tbaa !7
  %921 = call i32 @fputs(ptr noundef nonnull @Z_err_buf, ptr noundef %920) #26
  br label %930

922:                                              ; preds = %913
  %923 = srem i32 %914, 1000
  %924 = icmp eq i32 %923, 0
  br i1 %924, label %925, label %928

925:                                              ; preds = %922
  %926 = add nsw i32 %891, 1
  %927 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @Z_err_buf, ptr noundef nonnull dereferenceable(1) @.str.3.88, i32 noundef %914, i32 noundef %926) #24
  call fastcc void @Z_chatter(ptr noundef nonnull @Z_err_buf) #24
  br label %928

928:                                              ; preds = %925, %922
  %929 = icmp eq i32 %890, 0
  br i1 %929, label %395, label %930

930:                                              ; preds = %928, %919, %916, %427, %324, %287
  %931 = load i1, ptr @_P_has_content, align 4
  br i1 %931, label %932, label %960

932:                                              ; preds = %930
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(36) @Z_err_buf, ptr noundef nonnull align 1 dereferenceable(36) @.str.1.89, i64 36, i1 false)
  %933 = load i1, ptr @_Z_qflag, align 4
  br i1 %933, label %937, label %934

934:                                              ; preds = %932
  %935 = load ptr, ptr @stderr, align 8, !tbaa !7
  %936 = call i32 @fputs(ptr noundef nonnull @Z_err_buf, ptr noundef %935) #26
  br label %937

937:                                              ; preds = %934, %932
  %938 = load i32, ptr @_P_fnumb, align 4, !tbaa !12
  %939 = icmp eq i32 %938, 0
  br i1 %939, label %948, label %940

940:                                              ; preds = %937
  %941 = load i32, ptr @_L_bclm, align 4, !tbaa !12
  %942 = add nsw i32 %941, 1
  store i32 %942, ptr @_L_bclm, align 4, !tbaa !12
  %943 = load i32, ptr @_L_btlm, align 4
  %944 = sext i32 %943 to i64
  %945 = getelementptr inbounds [0 x i32], ptr @_L_bc, i64 0, i64 %944
  %946 = load i32, ptr %945, align 4, !tbaa !12
  %947 = icmp eq i32 %946, 0
  br i1 %947, label %960, label %956

948:                                              ; preds = %937
  %949 = load i32, ptr @_L_aclm, align 4, !tbaa !12
  %950 = add nsw i32 %949, 1
  store i32 %950, ptr @_L_aclm, align 4, !tbaa !12
  %951 = load i32, ptr @_L_atlm, align 4
  %952 = sext i32 %951 to i64
  %953 = getelementptr inbounds [0 x i32], ptr @_L_ac, i64 0, i64 %952
  %954 = load i32, ptr %953, align 4, !tbaa !12
  %955 = icmp eq i32 %954, 0
  br i1 %955, label %960, label %956

956:                                              ; preds = %948, %940
  %957 = phi i32 [ %943, %940 ], [ %951, %948 ]
  %958 = phi ptr [ @_L_btlm, %940 ], [ @_L_atlm, %948 ]
  %959 = add nsw i32 %957, 1
  store i32 %959, ptr %958, align 4, !tbaa !12
  br label %960

960:                                              ; preds = %956, %948, %940, %930
  br i1 %169, label %168, label %961, !llvm.loop !48

961:                                              ; preds = %960
  %962 = load i1, ptr @_Y_vflag, align 4
  br i1 %962, label %963, label %964

963:                                              ; preds = %961
  call fastcc void @Z_fatal(ptr noundef nonnull @.str.162) #24
  unreachable

964:                                              ; preds = %961
  %965 = icmp eq i32 %.lcssa52, -1
  %966 = load i32, ptr @_K_atm, align 4
  %967 = load i32, ptr @_K_btm, align 4
  %968 = add nsw i32 %967, %966
  %969 = select i1 %965, i32 %968, i32 %.lcssa52
  %970 = icmp slt i32 %969, 1
  %971 = add i32 %969, 1
  %972 = zext i32 %971 to i64
  %973 = sext i32 %971 to i64
  %974 = shl nsw i64 %973, 3
  br label %975

975:                                              ; preds = %1205, %964
  %976 = phi i32 [ %967, %964 ], [ %1208, %1205 ]
  %977 = phi i32 [ %966, %964 ], [ %1207, %1205 ]
  %978 = phi i32 [ 0, %964 ], [ %1206, %1205 ]
  %979 = load i1, ptr @_Y_eflag, align 4
  %980 = load i32, ptr @_Y_flags, align 4, !tbaa !12
  br i1 %979, label %981, label %1073

981:                                              ; preds = %975
  %982 = call i32 @llvm.smin.i32(i32 %977, i32 %976)
  %983 = call ptr (i64, ...) @_Z_myalloc(i64 noundef %974) #24
  %984 = icmp eq i32 %977, %976
  br i1 %984, label %991, label %985

985:                                              ; preds = %981
  %986 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @Z_err_buf, ptr noundef nonnull dereferenceable(1) @.str.29, i32 noundef %977, i32 noundef %976) #24
  %987 = load i1, ptr @_Z_qflag, align 4
  br i1 %987, label %991, label %988

988:                                              ; preds = %985
  %989 = load ptr, ptr @stderr, align 8, !tbaa !7
  %990 = call i32 @fputs(ptr noundef nonnull @Z_err_buf, ptr noundef %989) #26
  br label %991

991:                                              ; preds = %988, %985, %981
  %992 = shl i32 %982, 1
  br label %993

993:                                              ; preds = %1072, %991
  %994 = phi i64 [ 0, %991 ], [ %.lcssa15, %1072 ]
  %995 = phi ptr [ null, %991 ], [ %.lcssa16, %1072 ]
  %996 = phi i32 [ 0, %991 ], [ %.lcssa12, %1072 ]
  %997 = phi i32 [ 0, %991 ], [ %.lcssa11, %1072 ]
  br label %998

998:                                              ; preds = %1039, %993
  %999 = phi i32 [ %1035, %1039 ], [ %996, %993 ]
  %1000 = phi i32 [ %1036, %1039 ], [ %997, %993 ]
  %1001 = icmp slt i32 %1000, %982
  br i1 %1001, label %1002, label %1009

1002:                                             ; preds = %1006, %998
  %1003 = phi i32 [ %1007, %1006 ], [ %1000, %998 ]
  %1004 = call fastcc i32 @X_com(i32 noundef %1003, i32 noundef %1003, i32 noundef %980) #24
  %1005 = icmp eq i32 %1004, 0
  br i1 %1005, label %1006, label %1009

1006:                                             ; preds = %1002
  %1007 = add i32 %1003, 1
  %1008 = icmp eq i32 %1007, %982
  br i1 %1008, label %1201, label %1002, !llvm.loop !49

1009:                                             ; preds = %1002, %998
  %1010 = phi i32 [ %1000, %998 ], [ %1003, %1002 ]
  %1011 = icmp slt i32 %1010, %982
  br i1 %1011, label %1012, label %1201

1012:                                             ; preds = %1009
  %1013 = add i32 %999, %992
  %1014 = shl i32 %1010, 1
  %1015 = sub i32 %1013, %1014
  %1016 = call fastcc i32 @X_com(i32 noundef %1010, i32 noundef %1010, i32 noundef %980) #24
  %1017 = icmp eq i32 %1016, 0
  br i1 %1017, label %1034, label %1021

1018:                                             ; preds = %1027
  %1019 = call fastcc i32 @X_com(i32 noundef %1028, i32 noundef %1028, i32 noundef %980) #24
  %1020 = icmp eq i32 %1019, 0
  br i1 %1020, label %1030, label %1021, !llvm.loop !50

1021:                                             ; preds = %1018, %1012
  %1022 = phi i32 [ %1024, %1018 ], [ %999, %1012 ]
  %1023 = phi i32 [ %1028, %1018 ], [ %1010, %1012 ]
  %1024 = add nsw i32 %1022, 2
  %1025 = icmp sgt i32 %1024, %969
  br i1 %1025, label %1026, label %1027

1026:                                             ; preds = %1021
  call fastcc void @Z_exceed(i32 noundef %969) #24
  unreachable

1027:                                             ; preds = %1021
  %1028 = add i32 %1023, 1
  %1029 = icmp eq i32 %1028, %982
  br i1 %1029, label %1030, label %1018, !llvm.loop !50

1030:                                             ; preds = %1027, %1018
  %1031 = phi i32 [ %982, %1027 ], [ %1028, %1018 ]
  %1032 = phi i32 [ %1015, %1027 ], [ %1024, %1018 ]
  %1033 = icmp slt i32 %1031, %982
  br label %1034

1034:                                             ; preds = %1030, %1012
  %1035 = phi i32 [ %999, %1012 ], [ %1032, %1030 ]
  %1036 = phi i32 [ %1010, %1012 ], [ %1031, %1030 ]
  %1037 = phi i1 [ true, %1012 ], [ %1033, %1030 ]
  %1038 = icmp slt i32 %1010, %1036
  br i1 %1038, label %1040, label %1039

1039:                                             ; preds = %1034
  br i1 %1037, label %998, label %1201, !llvm.loop !51

1040:                                             ; preds = %1034
  %.lcssa12 = phi i32 [ %1035, %1034 ]
  %.lcssa11 = phi i32 [ %1036, %1034 ]
  %.lcssa10 = phi i1 [ %1037, %1034 ]
  %.lcssa9 = phi i32 [ %1010, %1034 ]
  %1041 = shl i64 %994, 32
  %1042 = ashr exact i64 %1041, 32
  br label %1046

1043:                                             ; preds = %1046
  %.lcssa14 = phi ptr [ %1052, %1046 ]
  %.lcssa13 = phi i64 [ %1057, %1046 ]
  %1044 = shl i64 %.lcssa13, 32
  %1045 = ashr exact i64 %1044, 32
  br label %1059

1046:                                             ; preds = %1046, %1040
  %1047 = phi i64 [ %1042, %1040 ], [ %1057, %1046 ]
  %1048 = phi i32 [ %.lcssa9, %1040 ], [ %1054, %1046 ]
  %1049 = phi ptr [ %995, %1040 ], [ %1052, %1046 ]
  %1050 = call ptr (i64, ...) @_Z_myalloc(i64 noundef 24) #24
  %1051 = getelementptr inbounds ptr, ptr %983, i64 %1047
  store ptr %1050, ptr %1051, align 8, !tbaa !7
  store ptr %1049, ptr %1050, align 8, !tbaa !52
  %1052 = load ptr, ptr %1051, align 8, !tbaa !7
  %1053 = getelementptr inbounds %struct.edt, ptr %1052, i64 0, i32 1
  store i32 2, ptr %1053, align 8, !tbaa !54
  %1054 = add i32 %1048, 1
  %1055 = getelementptr inbounds %struct.edt, ptr %1052, i64 0, i32 2
  store i32 %1054, ptr %1055, align 4, !tbaa !55
  %1056 = getelementptr inbounds %struct.edt, ptr %1052, i64 0, i32 3
  store i32 0, ptr %1056, align 8, !tbaa !56
  %1057 = add nsw i64 %1047, 1
  %1058 = icmp eq i32 %1054, %.lcssa11
  br i1 %1058, label %1043, label %1046, !llvm.loop !57

1059:                                             ; preds = %1059, %1043
  %1060 = phi i64 [ %1045, %1043 ], [ %1070, %1059 ]
  %1061 = phi i32 [ %.lcssa9, %1043 ], [ %1068, %1059 ]
  %1062 = phi ptr [ %.lcssa14, %1043 ], [ %1065, %1059 ]
  %1063 = call ptr (i64, ...) @_Z_myalloc(i64 noundef 24) #24
  %1064 = getelementptr inbounds ptr, ptr %983, i64 %1060
  store ptr %1063, ptr %1064, align 8, !tbaa !7
  store ptr %1062, ptr %1063, align 8, !tbaa !52
  %1065 = load ptr, ptr %1064, align 8, !tbaa !7
  %1066 = getelementptr inbounds %struct.edt, ptr %1065, i64 0, i32 1
  store i32 1, ptr %1066, align 8, !tbaa !54
  %1067 = getelementptr inbounds %struct.edt, ptr %1065, i64 0, i32 2
  store i32 %.lcssa11, ptr %1067, align 4, !tbaa !55
  %1068 = add i32 %1061, 1
  %1069 = getelementptr inbounds %struct.edt, ptr %1065, i64 0, i32 3
  store i32 %1068, ptr %1069, align 8, !tbaa !56
  %1070 = add nsw i64 %1060, 1
  %1071 = icmp eq i32 %1068, %.lcssa11
  br i1 %1071, label %1072, label %1059, !llvm.loop !58

1072:                                             ; preds = %1059
  %.lcssa16 = phi ptr [ %1065, %1059 ]
  %.lcssa15 = phi i64 [ %1070, %1059 ]
  br i1 %.lcssa10, label %993, label %1201, !llvm.loop !51

1073:                                             ; preds = %975
  %1074 = add nsw i32 %976, %977
  %1075 = add nsw i32 %1074, 1
  %1076 = sext i32 %1075 to i64
  %1077 = shl nsw i64 %1076, 3
  %1078 = call ptr (i64, ...) @_Z_myalloc(i64 noundef %1077) #24
  %1079 = shl nsw i64 %1076, 2
  %1080 = call ptr (i64, ...) @_Z_myalloc(i64 noundef %1079) #24
  %1081 = call i32 @llvm.smin.i32(i32 %977, i32 %976)
  %1082 = icmp sgt i32 %1081, 0
  br i1 %1082, label %1083, label %1090

1083:                                             ; preds = %1087, %1073
  %1084 = phi i32 [ %1088, %1087 ], [ 0, %1073 ]
  %1085 = call fastcc i32 @X_com(i32 noundef %1084, i32 noundef %1084, i32 noundef %980) #24
  %1086 = icmp eq i32 %1085, 0
  br i1 %1086, label %1087, label %1090

1087:                                             ; preds = %1083
  %1088 = add nuw nsw i32 %1084, 1
  %1089 = icmp eq i32 %1088, %1081
  br i1 %1089, label %1090, label %1083, !llvm.loop !59

1090:                                             ; preds = %1087, %1083, %1073
  %1091 = phi i32 [ 0, %1073 ], [ %1081, %1087 ], [ %1084, %1083 ]
  %1092 = sdiv i32 %1074, 2
  %1093 = sext i32 %1092 to i64
  %1094 = getelementptr inbounds i32, ptr %1080, i64 %1093
  store i32 %1091, ptr %1094, align 4, !tbaa !12
  %1095 = getelementptr inbounds ptr, ptr %1078, i64 %1093
  store ptr null, ptr %1095, align 8, !tbaa !7
  %1096 = icmp eq i32 %1091, %977
  %1097 = icmp eq i32 %1091, %976
  %1098 = and i1 %1096, %1097
  br i1 %1098, label %1209, label %1099

1099:                                             ; preds = %1090
  br i1 %970, label %1200, label %1100

1100:                                             ; preds = %1099
  %1101 = add nsw i32 %1092, 1
  %1102 = add nsw i32 %1092, -1
  %1103 = select i1 %1096, i32 %1101, i32 %1102
  %1104 = select i1 %1097, i32 %1102, i32 %1101
  br label %1105

1105:                                             ; preds = %1197, %1100
  %1106 = phi i64 [ %1198, %1197 ], [ 1, %1100 ]
  %1107 = phi i32 [ %1190, %1197 ], [ %1103, %1100 ]
  %1108 = phi i32 [ %1191, %1197 ], [ %1104, %1100 ]
  %1109 = icmp sgt i32 %1107, %1108
  br i1 %1109, label %1187, label %1110

1110:                                             ; preds = %1105
  %1111 = sub nsw i64 %1093, %1106
  %1112 = add nsw i64 %1106, %1093
  %1113 = sext i32 %1107 to i64
  %1114 = add nsw i64 %1112, -1
  %1115 = getelementptr inbounds i32, ptr %1080, i64 %1114
  %1116 = add nsw i64 %1111, 1
  %1117 = getelementptr inbounds i32, ptr %1080, i64 %1116
  br label %1118

1118:                                             ; preds = %1179, %1110
  %1119 = phi i64 [ %1113, %1110 ], [ %1180, %1179 ]
  %1120 = phi i32 [ %1107, %1110 ], [ %1182, %1179 ]
  %1121 = phi i32 [ %1108, %1110 ], [ %1184, %1179 ]
  %1122 = call ptr (i64, ...) @_Z_myalloc(i64 noundef 24) #24
  %1123 = icmp eq i64 %1119, %1111
  br i1 %1123, label %1124, label %1126

1124:                                             ; preds = %1118
  %1125 = load i32, ptr %1117, align 4, !tbaa !12
  br label %1138

1126:                                             ; preds = %1118
  %1127 = icmp eq i64 %1119, %1112
  br i1 %1127, label %1128, label %1130

1128:                                             ; preds = %1126
  %1129 = load i32, ptr %1115, align 4, !tbaa !12
  br label %1142

1130:                                             ; preds = %1126
  %1131 = add nsw i64 %1119, 1
  %1132 = getelementptr inbounds i32, ptr %1080, i64 %1131
  %1133 = load i32, ptr %1132, align 4, !tbaa !12
  %1134 = add nsw i64 %1119, -1
  %1135 = getelementptr inbounds i32, ptr %1080, i64 %1134
  %1136 = load i32, ptr %1135, align 4, !tbaa !12
  %1137 = icmp slt i32 %1133, %1136
  br i1 %1137, label %1142, label %1138

1138:                                             ; preds = %1130, %1124
  %1139 = phi i32 [ %1125, %1124 ], [ %1133, %1130 ]
  %1140 = phi i64 [ %1116, %1124 ], [ %1131, %1130 ]
  %1141 = add nsw i32 %1139, 1
  br label %1142

1142:                                             ; preds = %1138, %1130, %1128
  %1143 = phi i64 [ %1140, %1138 ], [ %1114, %1128 ], [ %1134, %1130 ]
  %1144 = phi i32 [ 2, %1138 ], [ 1, %1128 ], [ 1, %1130 ]
  %1145 = phi i32 [ %1141, %1138 ], [ %1129, %1128 ], [ %1136, %1130 ]
  %1146 = getelementptr inbounds ptr, ptr %1078, i64 %1143
  %1147 = load ptr, ptr %1146, align 8, !tbaa !7
  store ptr %1147, ptr %1122, align 8, !tbaa !52
  %1148 = getelementptr inbounds %struct.edt, ptr %1122, i64 0, i32 1
  store i32 %1144, ptr %1148, align 8, !tbaa !54
  %1149 = getelementptr inbounds %struct.edt, ptr %1122, i64 0, i32 2
  store i32 %1145, ptr %1149, align 4, !tbaa !55
  %1150 = trunc i64 %1119 to i32
  %1151 = sub i32 %1150, %1092
  %1152 = add i32 %1145, %1151
  %1153 = getelementptr inbounds %struct.edt, ptr %1122, i64 0, i32 3
  store i32 %1152, ptr %1153, align 8, !tbaa !56
  %1154 = getelementptr inbounds ptr, ptr %1078, i64 %1119
  store ptr %1122, ptr %1154, align 8, !tbaa !7
  %1155 = icmp slt i32 %1145, %977
  %1156 = icmp slt i32 %1152, %976
  %1157 = and i1 %1155, %1156
  br i1 %1157, label %1158, label %1169

1158:                                             ; preds = %1163, %1142
  %1159 = phi i32 [ %1165, %1163 ], [ %1152, %1142 ]
  %1160 = phi i32 [ %1164, %1163 ], [ %1145, %1142 ]
  %1161 = call fastcc i32 @X_com(i32 noundef %1160, i32 noundef %1159, i32 noundef %980) #24
  %1162 = icmp eq i32 %1161, 0
  br i1 %1162, label %1163, label %1169

1163:                                             ; preds = %1158
  %1164 = add nsw i32 %1160, 1
  %1165 = add nsw i32 %1159, 1
  %1166 = icmp slt i32 %1164, %977
  %1167 = icmp slt i32 %1165, %976
  %1168 = select i1 %1166, i1 %1167, i1 false
  br i1 %1168, label %1158, label %1169, !llvm.loop !60

1169:                                             ; preds = %1163, %1158, %1142
  %1170 = phi i32 [ %1145, %1142 ], [ %1164, %1163 ], [ %1160, %1158 ]
  %1171 = phi i32 [ %1152, %1142 ], [ %1165, %1163 ], [ %1159, %1158 ]
  %1172 = getelementptr inbounds i32, ptr %1080, i64 %1119
  store i32 %1170, ptr %1172, align 4, !tbaa !12
  %1173 = icmp eq i32 %1170, %977
  %1174 = icmp eq i32 %1171, %976
  %1175 = select i1 %1173, i1 %1174, i1 false
  br i1 %1175, label %1176, label %1179

1176:                                             ; preds = %1169
  %.lcssa7 = phi i64 [ %1119, %1169 ]
  %1177 = getelementptr inbounds ptr, ptr %1078, i64 %.lcssa7
  %1178 = load ptr, ptr %1177, align 8, !tbaa !7
  br label %1201

1179:                                             ; preds = %1169
  %1180 = add nsw i64 %1119, 2
  %1181 = trunc i64 %1180 to i32
  %1182 = select i1 %1173, i32 %1181, i32 %1120
  %1183 = add i32 %1150, -2
  %1184 = select i1 %1174, i32 %1183, i32 %1121
  %1185 = sext i32 %1184 to i64
  %1186 = icmp sgt i64 %1180, %1185
  br i1 %1186, label %1187, label %1118, !llvm.loop !61

1187:                                             ; preds = %1179, %1105
  %1188 = phi i32 [ %1108, %1105 ], [ %1184, %1179 ]
  %1189 = phi i32 [ %1107, %1105 ], [ %1182, %1179 ]
  %1190 = add nsw i32 %1189, -1
  %1191 = add nsw i32 %1188, 1
  %1192 = trunc i64 %1106 to i32
  %1193 = urem i32 %1192, 100
  %1194 = icmp eq i32 %1193, 0
  br i1 %1194, label %1195, label %1197

1195:                                             ; preds = %1187
  %1196 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @Z_err_buf, ptr noundef nonnull dereferenceable(1) @.str.54, i32 noundef %1192) #24
  call fastcc void @Z_chatter(ptr noundef nonnull @Z_err_buf) #24
  br label %1197

1197:                                             ; preds = %1195, %1187
  %1198 = add nuw nsw i64 %1106, 1
  %1199 = icmp eq i64 %1198, %972
  br i1 %1199, label %1200, label %1105, !llvm.loop !62

1200:                                             ; preds = %1197, %1099
  call fastcc void @Z_exceed(i32 noundef %969) #24
  unreachable

1201:                                             ; preds = %1176, %1072, %1039, %1009, %1006
  %1202 = phi ptr [ %1178, %1176 ], [ %995, %1006 ], [ %995, %1009 ], [ %995, %1039 ], [ %.lcssa16, %1072 ]
  %1203 = add nuw nsw i32 %978, 1
  %1204 = icmp eq i32 %1203, 30001
  br i1 %1204, label %1212, label %1205

1205:                                             ; preds = %1209, %1201
  %1206 = phi i32 [ %1203, %1201 ], [ %1210, %1209 ]
  %1207 = load i32, ptr @_K_atm, align 4, !tbaa !12
  %1208 = load i32, ptr @_K_btm, align 4, !tbaa !12
  br label %975, !llvm.loop !63

1209:                                             ; preds = %1090
  %1210 = add nuw nsw i32 %978, 1
  %1211 = icmp eq i32 %1210, 30001
  br i1 %1211, label %1462, label %1205

1212:                                             ; preds = %1201
  %.lcssa17 = phi ptr [ %1202, %1201 ]
  %1213 = icmp eq ptr %.lcssa17, null
  br i1 %1213, label %1462, label %1214

1214:                                             ; preds = %1212
  %1215 = load i32, ptr @_Y_flags, align 4, !tbaa !12
  br label %1219

1216:                                             ; preds = %1219
  %.lcssa6 = phi ptr [ %1220, %1219 ]
  %1217 = and i32 %1215, 8
  %1218 = icmp eq i32 %1217, 0
  br label %1227

1219:                                             ; preds = %1219, %1214
  %1220 = phi ptr [ %1225, %1219 ], [ %.lcssa17, %1214 ]
  %1221 = phi ptr [ %1220, %1219 ], [ null, %1214 ]
  %1222 = getelementptr inbounds %struct.edt, ptr %1220, i64 0, i32 2
  %1223 = load <2 x i32>, ptr %1222, align 4, !tbaa !12
  %1224 = add nsw <2 x i32> %1223, <i32 -1, i32 -1>
  store <2 x i32> %1224, ptr %1222, align 4, !tbaa !12
  %1225 = load ptr, ptr %1220, align 8, !tbaa !52
  store ptr %1221, ptr %1220, align 8, !tbaa !52
  %1226 = icmp eq ptr %1225, null
  br i1 %1226, label %1216, label %1219, !llvm.loop !64

1227:                                             ; preds = %1460, %1216
  %1228 = phi ptr [ %.lcssa6, %1216 ], [ %1283, %1460 ]
  %1229 = phi i32 [ -1, %1216 ], [ %1281, %1460 ]
  %1230 = getelementptr inbounds %struct.edt, ptr %1228, i64 0, i32 2
  %1231 = load i32, ptr %1230, align 4, !tbaa !55
  %1232 = getelementptr inbounds %struct.edt, ptr %1228, i64 0, i32 1
  %1233 = load i32, ptr %1232, align 8, !tbaa !54
  %1234 = icmp eq i32 %1233, 1
  br i1 %1234, label %1257, label %1235

1235:                                             ; preds = %1243, %1227
  %1236 = phi i32 [ %1245, %1243 ], [ %1231, %1227 ]
  %1237 = phi ptr [ %1238, %1243 ], [ %1228, %1227 ]
  %1238 = load ptr, ptr %1237, align 8, !tbaa !52
  %1239 = icmp eq ptr %1238, null
  br i1 %1239, label %1252, label %1240

1240:                                             ; preds = %1235
  %1241 = getelementptr inbounds %struct.edt, ptr %1238, i64 0, i32 1
  %1242 = load i32, ptr %1241, align 8, !tbaa !54
  switch i32 %1242, label %1252 [
    i32 2, label %1243
    i32 1, label %1248
  ]

1243:                                             ; preds = %1240
  %1244 = getelementptr inbounds %struct.edt, ptr %1238, i64 0, i32 2
  %1245 = load i32, ptr %1244, align 4, !tbaa !55
  %1246 = add nsw i32 %1236, 1
  %1247 = icmp eq i32 %1245, %1246
  br i1 %1247, label %1235, label %1252, !llvm.loop !65

1248:                                             ; preds = %1240
  %.lcssa5 = phi i32 [ %1236, %1240 ]
  %.lcssa3 = phi ptr [ %1237, %1240 ]
  %.lcssa1 = phi ptr [ %1238, %1240 ]
  %1249 = getelementptr inbounds %struct.edt, ptr %.lcssa1, i64 0, i32 2
  %1250 = load i32, ptr %1249, align 4, !tbaa !55
  %1251 = icmp eq i32 %1250, %.lcssa5
  br i1 %1251, label %1257, label %1252

1252:                                             ; preds = %1248, %1243, %1240, %1235
  %.lcssa2 = phi ptr [ %.lcssa3, %1248 ], [ %1237, %1243 ], [ %1237, %1240 ], [ %1237, %1235 ]
  %.lcssa = phi ptr [ %.lcssa1, %1248 ], [ %1238, %1243 ], [ %1238, %1240 ], [ %1238, %1235 ]
  %1253 = getelementptr inbounds %struct.edt, ptr %.lcssa2, i64 0, i32 2
  %1254 = load i32, ptr %1253, align 4, !tbaa !55
  %1255 = getelementptr inbounds %struct.edt, ptr %.lcssa2, i64 0, i32 3
  %1256 = load i32, ptr %1255, align 8, !tbaa !56
  br label %1279

1257:                                             ; preds = %1248, %1227
  %1258 = phi i32 [ %1231, %1227 ], [ %.lcssa5, %1248 ]
  %1259 = phi i32 [ %1229, %1227 ], [ %.lcssa5, %1248 ]
  %1260 = phi i32 [ 1, %1227 ], [ 3, %1248 ]
  %1261 = phi ptr [ %1228, %1227 ], [ %.lcssa1, %1248 ]
  %1262 = getelementptr inbounds %struct.edt, ptr %1261, i64 0, i32 3
  %1263 = load i32, ptr %1262, align 8, !tbaa !56
  %1264 = add nsw i32 %1263, -1
  br label %1265

1265:                                             ; preds = %1275, %1257
  %1266 = phi i32 [ %1264, %1257 ], [ %1268, %1275 ]
  %1267 = phi ptr [ %1261, %1257 ], [ %1269, %1275 ]
  %1268 = add nsw i32 %1266, 1
  %1269 = load ptr, ptr %1267, align 8, !tbaa !52
  %1270 = icmp eq ptr %1269, null
  br i1 %1270, label %1279, label %1271

1271:                                             ; preds = %1265
  %1272 = getelementptr inbounds %struct.edt, ptr %1269, i64 0, i32 1
  %1273 = load i32, ptr %1272, align 8, !tbaa !54
  %1274 = icmp eq i32 %1273, 1
  br i1 %1274, label %1275, label %1279

1275:                                             ; preds = %1271
  %1276 = getelementptr inbounds %struct.edt, ptr %1269, i64 0, i32 2
  %1277 = load i32, ptr %1276, align 4, !tbaa !55
  %1278 = icmp eq i32 %1277, %1258
  br i1 %1278, label %1265, label %1279, !llvm.loop !66

1279:                                             ; preds = %1275, %1271, %1265, %1252
  %1280 = phi i32 [ %1256, %1252 ], [ %1263, %1265 ], [ %1263, %1271 ], [ %1263, %1275 ]
  %1281 = phi i32 [ %1254, %1252 ], [ %1259, %1265 ], [ %1259, %1271 ], [ %1259, %1275 ]
  %1282 = phi i32 [ -1, %1252 ], [ %1268, %1265 ], [ %1268, %1271 ], [ %1268, %1275 ]
  %1283 = phi ptr [ %.lcssa, %1252 ], [ %1269, %1275 ], [ %1269, %1271 ], [ null, %1265 ]
  %1284 = phi i32 [ 2, %1252 ], [ %1260, %1265 ], [ %1260, %1271 ], [ %1260, %1275 ]
  br i1 %1218, label %1285, label %1316

1285:                                             ; preds = %1279
  %1286 = icmp sgt i32 %1231, -1
  br i1 %1286, label %1287, label %1292

1287:                                             ; preds = %1285
  %1288 = zext i32 %1231 to i64
  %1289 = getelementptr inbounds [0 x ptr], ptr @_K_ato, i64 0, i64 %1288
  %1290 = load ptr, ptr %1289, align 8, !tbaa !7
  %1291 = load i32, ptr %1290, align 8, !tbaa !33
  br label %1292

1292:                                             ; preds = %1287, %1285
  %1293 = phi i32 [ %1291, %1287 ], [ %1231, %1285 ]
  %1294 = icmp sgt i32 %1281, -1
  br i1 %1294, label %1295, label %1300

1295:                                             ; preds = %1292
  %1296 = zext i32 %1281 to i64
  %1297 = getelementptr inbounds [0 x ptr], ptr @_K_ato, i64 0, i64 %1296
  %1298 = load ptr, ptr %1297, align 8, !tbaa !7
  %1299 = load i32, ptr %1298, align 8, !tbaa !33
  br label %1300

1300:                                             ; preds = %1295, %1292
  %1301 = phi i32 [ %1299, %1295 ], [ %1281, %1292 ]
  %1302 = icmp sgt i32 %1280, -1
  br i1 %1302, label %1303, label %1308

1303:                                             ; preds = %1300
  %1304 = zext i32 %1280 to i64
  %1305 = getelementptr inbounds [0 x ptr], ptr @_K_bto, i64 0, i64 %1304
  %1306 = load ptr, ptr %1305, align 8, !tbaa !7
  %1307 = load i32, ptr %1306, align 8, !tbaa !33
  br label %1308

1308:                                             ; preds = %1303, %1300
  %1309 = phi i32 [ %1307, %1303 ], [ %1280, %1300 ]
  %1310 = icmp sgt i32 %1282, -1
  br i1 %1310, label %1311, label %1318

1311:                                             ; preds = %1308
  %1312 = zext i32 %1282 to i64
  %1313 = getelementptr inbounds [0 x ptr], ptr @_K_bto, i64 0, i64 %1312
  %1314 = load ptr, ptr %1313, align 8, !tbaa !7
  %1315 = load i32, ptr %1314, align 8, !tbaa !33
  br label %1318

1316:                                             ; preds = %1279
  %1317 = add nsw i32 %1231, 1
  br label %1326

1318:                                             ; preds = %1311, %1308
  %1319 = phi i32 [ %1282, %1308 ], [ %1315, %1311 ]
  %1320 = icmp slt i32 %1293, 0
  br i1 %1320, label %1326, label %1321

1321:                                             ; preds = %1318
  %1322 = zext i32 %1293 to i64
  %1323 = getelementptr inbounds [0 x i32], ptr @_L_atlindex, i64 0, i64 %1322
  %1324 = load i32, ptr %1323, align 4, !tbaa !12
  %1325 = add nsw i32 %1324, 1
  br label %1326

1326:                                             ; preds = %1321, %1318, %1316
  %1327 = phi i32 [ %1282, %1316 ], [ %1319, %1321 ], [ %1319, %1318 ]
  %1328 = phi i32 [ %1280, %1316 ], [ %1309, %1321 ], [ %1309, %1318 ]
  %1329 = phi i32 [ %1281, %1316 ], [ %1301, %1321 ], [ %1301, %1318 ]
  %1330 = phi i32 [ %1231, %1316 ], [ %1293, %1321 ], [ %1293, %1318 ]
  %1331 = phi i32 [ %1317, %1316 ], [ %1325, %1321 ], [ 0, %1318 ]
  %1332 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.73, i32 noundef %1331) #25
  switch i32 %1284, label %1436 [
    i32 1, label %1333
    i32 2, label %1363
    i32 3, label %1391
  ]

1333:                                             ; preds = %1326
  br i1 %1218, label %1334, label %1345

1334:                                             ; preds = %1333
  %1335 = icmp slt i32 %1328, 0
  br i1 %1335, label %1341, label %1336

1336:                                             ; preds = %1334
  %1337 = zext i32 %1328 to i64
  %1338 = getelementptr inbounds [0 x i32], ptr @_L_btlindex, i64 0, i64 %1337
  %1339 = load i32, ptr %1338, align 4, !tbaa !12
  %1340 = add nsw i32 %1339, 1
  br label %1341

1341:                                             ; preds = %1336, %1334
  %1342 = phi i32 [ %1340, %1336 ], [ 0, %1334 ]
  %1343 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1.74, i32 noundef %1342) #25
  %1344 = icmp sgt i32 %1327, %1328
  br i1 %1344, label %1351, label %1361

1345:                                             ; preds = %1333
  %1346 = add nsw i32 %1328, 1
  %1347 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1.74, i32 noundef %1346) #25
  %1348 = icmp sgt i32 %1327, %1328
  br i1 %1348, label %1349, label %1361

1349:                                             ; preds = %1345
  %1350 = add nsw i32 %1327, 1
  br label %1358

1351:                                             ; preds = %1341
  %1352 = icmp slt i32 %1327, 0
  br i1 %1352, label %1358, label %1353

1353:                                             ; preds = %1351
  %1354 = zext i32 %1327 to i64
  %1355 = getelementptr inbounds [0 x i32], ptr @_L_btlindex, i64 0, i64 %1354
  %1356 = load i32, ptr %1355, align 4, !tbaa !12
  %1357 = add nsw i32 %1356, 1
  br label %1358

1358:                                             ; preds = %1353, %1351, %1349
  %1359 = phi i32 [ %1350, %1349 ], [ %1357, %1353 ], [ 0, %1351 ]
  %1360 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2.75, i32 noundef %1359) #25
  br label %1361

1361:                                             ; preds = %1358, %1345, %1341
  %1362 = call i32 @putchar(i32 10)
  br label %1450

1363:                                             ; preds = %1326
  %1364 = icmp sgt i32 %1329, %1330
  br i1 %1364, label %1365, label %1378

1365:                                             ; preds = %1363
  br i1 %1218, label %1368, label %1366

1366:                                             ; preds = %1365
  %1367 = add nsw i32 %1329, 1
  br label %1375

1368:                                             ; preds = %1365
  %1369 = icmp slt i32 %1329, 0
  br i1 %1369, label %1375, label %1370

1370:                                             ; preds = %1368
  %1371 = zext i32 %1329 to i64
  %1372 = getelementptr inbounds [0 x i32], ptr @_L_atlindex, i64 0, i64 %1371
  %1373 = load i32, ptr %1372, align 4, !tbaa !12
  %1374 = add nsw i32 %1373, 1
  br label %1375

1375:                                             ; preds = %1370, %1368, %1366
  %1376 = phi i32 [ %1367, %1366 ], [ %1374, %1370 ], [ 0, %1368 ]
  %1377 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2.75, i32 noundef %1376) #25
  br label %1378

1378:                                             ; preds = %1375, %1363
  br i1 %1218, label %1381, label %1379

1379:                                             ; preds = %1378
  %1380 = add nsw i32 %1328, 1
  br label %1388

1381:                                             ; preds = %1378
  %1382 = icmp slt i32 %1328, 0
  br i1 %1382, label %1388, label %1383

1383:                                             ; preds = %1381
  %1384 = zext i32 %1328 to i64
  %1385 = getelementptr inbounds [0 x i32], ptr @_L_btlindex, i64 0, i64 %1384
  %1386 = load i32, ptr %1385, align 4, !tbaa !12
  %1387 = add nsw i32 %1386, 1
  br label %1388

1388:                                             ; preds = %1383, %1381, %1379
  %1389 = phi i32 [ %1380, %1379 ], [ %1387, %1383 ], [ 0, %1381 ]
  %1390 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4.76, i32 noundef %1389) #25
  br label %1437

1391:                                             ; preds = %1326
  %1392 = icmp sgt i32 %1329, %1330
  br i1 %1392, label %1393, label %1406

1393:                                             ; preds = %1391
  br i1 %1218, label %1396, label %1394

1394:                                             ; preds = %1393
  %1395 = add nsw i32 %1329, 1
  br label %1403

1396:                                             ; preds = %1393
  %1397 = icmp slt i32 %1329, 0
  br i1 %1397, label %1403, label %1398

1398:                                             ; preds = %1396
  %1399 = zext i32 %1329 to i64
  %1400 = getelementptr inbounds [0 x i32], ptr @_L_atlindex, i64 0, i64 %1399
  %1401 = load i32, ptr %1400, align 4, !tbaa !12
  %1402 = add nsw i32 %1401, 1
  br label %1403

1403:                                             ; preds = %1398, %1396, %1394
  %1404 = phi i32 [ %1395, %1394 ], [ %1402, %1398 ], [ 0, %1396 ]
  %1405 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2.75, i32 noundef %1404) #25
  br label %1406

1406:                                             ; preds = %1403, %1391
  br i1 %1218, label %1407, label %1418

1407:                                             ; preds = %1406
  %1408 = icmp slt i32 %1328, 0
  br i1 %1408, label %1414, label %1409

1409:                                             ; preds = %1407
  %1410 = zext i32 %1328 to i64
  %1411 = getelementptr inbounds [0 x i32], ptr @_L_btlindex, i64 0, i64 %1410
  %1412 = load i32, ptr %1411, align 4, !tbaa !12
  %1413 = add nsw i32 %1412, 1
  br label %1414

1414:                                             ; preds = %1409, %1407
  %1415 = phi i32 [ %1413, %1409 ], [ 0, %1407 ]
  %1416 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5.77, i32 noundef %1415) #25
  %1417 = icmp sgt i32 %1327, %1328
  br i1 %1417, label %1424, label %1434

1418:                                             ; preds = %1406
  %1419 = add nsw i32 %1328, 1
  %1420 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5.77, i32 noundef %1419) #25
  %1421 = icmp sgt i32 %1327, %1328
  br i1 %1421, label %1422, label %1434

1422:                                             ; preds = %1418
  %1423 = add nsw i32 %1327, 1
  br label %1431

1424:                                             ; preds = %1414
  %1425 = icmp slt i32 %1327, 0
  br i1 %1425, label %1431, label %1426

1426:                                             ; preds = %1424
  %1427 = zext i32 %1327 to i64
  %1428 = getelementptr inbounds [0 x i32], ptr @_L_btlindex, i64 0, i64 %1427
  %1429 = load i32, ptr %1428, align 4, !tbaa !12
  %1430 = add nsw i32 %1429, 1
  br label %1431

1431:                                             ; preds = %1426, %1424, %1422
  %1432 = phi i32 [ %1423, %1422 ], [ %1430, %1426 ], [ 0, %1424 ]
  %1433 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2.75, i32 noundef %1432) #25
  br label %1434

1434:                                             ; preds = %1431, %1418, %1414
  %1435 = call i32 @putchar(i32 10)
  br label %1437

1436:                                             ; preds = %1326
  call fastcc void @Z_fatal(ptr noundef nonnull @.str.6.78) #24
  unreachable

1437:                                             ; preds = %1434, %1388
  br i1 %1218, label %1446, label %1438

1438:                                             ; preds = %1437
  %1439 = icmp sgt i32 %1330, %1329
  br i1 %1439, label %1447, label %1440

1440:                                             ; preds = %1440, %1438
  %1441 = phi i32 [ %1444, %1440 ], [ %1330, %1438 ]
  %1442 = call fastcc ptr @_O_get_text(i32 noundef 0, i32 noundef %1441, i32 noundef %1215) #25
  %1443 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7.79, ptr noundef %1442) #25
  %1444 = add i32 %1441, 1
  %1445 = icmp eq i32 %1441, %1329
  br i1 %1445, label %1447, label %1440, !llvm.loop !67

1446:                                             ; preds = %1437
  call fastcc void @_O_do_lines(i32 noundef %1231, i32 noundef %1281, i32 noundef 0) #25
  br label %1447

1447:                                             ; preds = %1446, %1440, %1438
  switch i32 %1284, label %1460 [
    i32 3, label %1448
    i32 1, label %1450
  ]

1448:                                             ; preds = %1447
  %1449 = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %1450

1450:                                             ; preds = %1448, %1447, %1361
  br i1 %1218, label %1459, label %1451

1451:                                             ; preds = %1450
  %1452 = icmp sgt i32 %1328, %1327
  br i1 %1452, label %1460, label %1453

1453:                                             ; preds = %1453, %1451
  %1454 = phi i32 [ %1457, %1453 ], [ %1328, %1451 ]
  %1455 = call fastcc ptr @_O_get_text(i32 noundef 1, i32 noundef %1454, i32 noundef %1215) #25
  %1456 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9.80, ptr noundef %1455) #25
  %1457 = add i32 %1454, 1
  %1458 = icmp eq i32 %1454, %1327
  br i1 %1458, label %1460, label %1453, !llvm.loop !68

1459:                                             ; preds = %1450
  call fastcc void @_O_do_lines(i32 noundef %1280, i32 noundef %1282, i32 noundef 1) #25
  br label %1460

1460:                                             ; preds = %1459, %1453, %1451, %1447
  %1461 = icmp eq ptr %1283, null
  br i1 %1461, label %1462, label %1227, !llvm.loop !69

1462:                                             ; preds = %1460, %1212, %1209
  %1463 = phi i32 [ 0, %1212 ], [ 1, %1460 ], [ 0, %1209 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #22
  ret i32 %1463
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @_T_addtol(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = load ptr, ptr %0, align 8, !tbaa !7
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = tail call ptr (i64, ...) @_Z_myalloc(i64 noundef 24) #24
  store ptr %7, ptr %0, align 8, !tbaa !7
  br label %16

8:                                                ; preds = %8, %3
  %9 = phi ptr [ %11, %8 ], [ %4, %3 ]
  %10 = getelementptr inbounds %struct._T_tstr, ptr %9, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !14
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %8, !llvm.loop !16

13:                                               ; preds = %8
  %.lcssa = phi ptr [ %9, %8 ]
  %14 = getelementptr inbounds %struct._T_tstr, ptr %.lcssa, i64 0, i32 2
  %15 = tail call ptr (i64, ...) @_Z_myalloc(i64 noundef 24) #24
  store ptr %15, ptr %14, align 8, !tbaa !14
  br label %16

16:                                               ; preds = %13, %6
  %17 = phi ptr [ %7, %6 ], [ %15, %13 ]
  store i32 %1, ptr %17, align 8, !tbaa !18
  %18 = getelementptr inbounds %struct._T_tstr, ptr %17, i64 0, i32 2
  store ptr null, ptr %18, align 8, !tbaa !14
  %19 = icmp eq i32 %1, 2
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct._T_tstr, ptr %17, i64 0, i32 1
  store ptr null, ptr %21, align 8, !tbaa !70
  br label %38

22:                                               ; preds = %16
  %23 = tail call fastcc ptr @F_atof(ptr noundef %2, i32 noundef 0) #24
  %24 = getelementptr inbounds %struct._T_tstr, ptr %17, i64 0, i32 1
  store ptr %23, ptr %24, align 8, !tbaa !70
  %25 = getelementptr inbounds %struct.R_flstr, ptr %23, i64 0, i32 1
  %26 = load i32, ptr %25, align 4, !tbaa !71
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %22
  %29 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @Z_err_buf, ptr noundef nonnull dereferenceable(1) @.str.3.145, ptr noundef %2) #24
  tail call fastcc void @Z_fatal(ptr noundef nonnull @Z_err_buf) #24
  unreachable

30:                                               ; preds = %22
  %31 = icmp eq i32 %1, 1
  br i1 %31, label %32, label %38

32:                                               ; preds = %30
  %33 = tail call fastcc ptr @F_atof(ptr noundef nonnull @.str.4.146, i32 noundef 1) #24
  %34 = tail call fastcc i32 @F_floatcmp(ptr noundef nonnull %23, ptr noundef %33) #24
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @Z_err_buf, ptr noundef nonnull dereferenceable(1) @.str.5.147, ptr noundef %2) #24
  tail call fastcc void @Z_fatal(ptr noundef nonnull @Z_err_buf) #24
  unreachable

38:                                               ; preds = %32, %30, %20
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal noalias ptr @_Z_myalloc(i32 noundef %0) unnamed_addr #0 {
  %2 = zext i32 %0 to i64
  %3 = tail call noalias ptr @calloc(i64 noundef %2, i64 noundef 1) #28
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  tail call fastcc void @Z_fatal(ptr noundef nonnull @.str.1.65) #25
  unreachable

6:                                                ; preds = %1
  ret ptr %3
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @C_addcmd(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = load i32, ptr @_C_nextcmd, align 4, !tbaa !12
  %3 = add nsw i32 %2, 1
  store i32 %3, ptr @_C_nextcmd, align 4, !tbaa !12
  %4 = sext i32 %2 to i64
  %5 = getelementptr inbounds [100 x ptr], ptr @_C_cmds, i64 0, i64 %4
  %6 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #23
  tail call void (ptr, i64, ...) @S_allocstr(ptr noundef nonnull %5, i64 noundef %6) #25
  %7 = load ptr, ptr %5, align 8, !tbaa !7
  %8 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(1) %0) #24
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind optsize
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: noreturn nounwind optsize uwtable
define internal fastcc void @Z_fatal(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !7
  %3 = tail call i32 @fputs(ptr noundef %0, ptr noundef %2) #26
  tail call void @exit(i32 noundef 2) #29
  unreachable
}

; Function Attrs: nofree nounwind optsize
declare noundef ptr @fgets(ptr noundef, i32 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(read)
declare i32 @atoi(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind optsize
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fputs(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind optsize uwtable
define internal void @S_allocstr(ptr nocapture noundef writeonly %0, i32 noundef %1) unnamed_addr #0 {
  %3 = add nsw i32 %1, 1
  %4 = sext i32 %3 to i64
  %5 = tail call ptr (i64, ...) @_Z_myalloc(i64 noundef %4) #24
  store ptr %5, ptr %0, align 8, !tbaa !7
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #7

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @_C_do_a_cmd(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8, !tbaa !7
  call fastcc void @S_skipspace(ptr noundef nonnull %4) #24
  %5 = load ptr, ptr %4, align 8, !tbaa !7
  %6 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(8) @.str, i64 noundef 7) #23
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  call fastcc void @S_nextword(ptr noundef nonnull %4) #24
  %9 = load ptr, ptr %4, align 8, !tbaa !7
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %9) #23
  %11 = icmp ugt i64 %10, 19
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  tail call fastcc void @Z_fatal(ptr noundef nonnull @.str.1) #24
  unreachable

13:                                               ; preds = %8
  tail call fastcc void @S_wordcpy(ptr noundef nonnull @_C_cmdword, ptr noundef %9) #24
  br label %173

14:                                               ; preds = %1
  %15 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(4) @.str.2, i64 noundef 3) #23
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %97

17:                                               ; preds = %14
  call fastcc void @S_nextword(ptr noundef nonnull %4) #24
  %18 = load ptr, ptr %4, align 8, !tbaa !7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) @_T_tols, i8 0, i64 80, i1 false), !tbaa !7
  %19 = load i8, ptr %18, align 1, !tbaa !11
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %173, label %21

21:                                               ; preds = %91, %17
  %22 = phi i8 [ %95, %91 ], [ %19, %17 ]
  %23 = phi i64 [ %85, %91 ], [ 0, %17 ]
  %24 = phi ptr [ %94, %91 ], [ %18, %17 ]
  %25 = icmp eq i64 %23, 10
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  tail call fastcc void @Z_fatal(ptr noundef nonnull @.str.2.152) #24
  unreachable

27:                                               ; preds = %21
  %28 = getelementptr inbounds [10 x ptr], ptr @_T_tols, i64 0, i64 %23
  br label %29

29:                                               ; preds = %33, %27
  %30 = phi i8 [ %22, %27 ], [ %36, %33 ]
  %31 = phi ptr [ %24, %27 ], [ %34, %33 ]
  %32 = phi ptr [ @_T_getspec.retval, %27 ], [ %35, %33 ]
  switch i8 %30, label %33 [
    i8 59, label %37
    i8 0, label %37
  ]

33:                                               ; preds = %29
  %34 = getelementptr inbounds i8, ptr %31, i64 1
  %35 = getelementptr inbounds i8, ptr %32, i64 1
  store i8 %30, ptr %32, align 1, !tbaa !11
  %36 = load i8, ptr %34, align 1, !tbaa !11
  br label %29, !llvm.loop !73

37:                                               ; preds = %29, %29
  %.lcssa = phi ptr [ %32, %29 ], [ %32, %29 ]
  store i8 0, ptr %.lcssa, align 1, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3)
  store ptr @_T_getspec.retval, ptr %3, align 8, !tbaa !7
  %38 = load i8, ptr @_T_getspec.retval, align 16, !tbaa !11
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %84, label %40

40:                                               ; preds = %80, %37
  call fastcc void @S_skipspace(ptr noundef nonnull %3) #24
  %41 = load ptr, ptr %3, align 8, !tbaa !7
  %42 = load i8, ptr %41, align 1, !tbaa !11
  %43 = getelementptr inbounds i8, ptr %41, i64 1
  store ptr %43, ptr %3, align 8, !tbaa !7
  call fastcc void @S_skipspace(ptr noundef nonnull %3) #24
  %44 = sext i8 %42 to i32
  switch i32 %44, label %78 [
    i32 97, label %45
    i32 114, label %47
    i32 105, label %49
    i32 100, label %65
  ]

45:                                               ; preds = %40
  %46 = load ptr, ptr %3, align 8, !tbaa !7
  tail call fastcc void @_T_addtol(ptr noundef nonnull %28, i32 noundef 0, ptr noundef %46) #25
  br label %80

47:                                               ; preds = %40
  %48 = load ptr, ptr %3, align 8, !tbaa !7
  tail call fastcc void @_T_addtol(ptr noundef nonnull %28, i32 noundef 1, ptr noundef %48) #25
  br label %80

49:                                               ; preds = %40
  %50 = load ptr, ptr %28, align 8, !tbaa !7
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %54

52:                                               ; preds = %49
  %53 = tail call ptr (i64, ...) @_Z_myalloc(i64 noundef 24) #24
  store ptr %53, ptr %28, align 8, !tbaa !7
  br label %62

54:                                               ; preds = %54, %49
  %55 = phi ptr [ %57, %54 ], [ %50, %49 ]
  %56 = getelementptr inbounds %struct._T_tstr, ptr %55, i64 0, i32 2
  %57 = load ptr, ptr %56, align 8, !tbaa !14
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %54, !llvm.loop !16

59:                                               ; preds = %54
  %.lcssa2 = phi ptr [ %55, %54 ]
  %60 = getelementptr inbounds %struct._T_tstr, ptr %.lcssa2, i64 0, i32 2
  %61 = tail call ptr (i64, ...) @_Z_myalloc(i64 noundef 24) #24
  store ptr %61, ptr %60, align 8, !tbaa !14
  br label %62

62:                                               ; preds = %59, %52
  %63 = phi ptr [ %53, %52 ], [ %61, %59 ]
  store i32 2, ptr %63, align 8, !tbaa !18
  %64 = getelementptr inbounds %struct._T_tstr, ptr %63, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %64, i8 0, i64 16, i1 false)
  br label %80

65:                                               ; preds = %40
  %66 = load ptr, ptr @_T_gtol, align 8, !tbaa !7
  %67 = load ptr, ptr %28, align 8, !tbaa !7
  %68 = icmp eq ptr %67, null
  br i1 %68, label %76, label %69

69:                                               ; preds = %69, %65
  %70 = phi ptr [ %72, %69 ], [ %67, %65 ]
  %71 = getelementptr inbounds %struct._T_tstr, ptr %70, i64 0, i32 2
  %72 = load ptr, ptr %71, align 8, !tbaa !14
  %73 = icmp eq ptr %72, null
  br i1 %73, label %74, label %69, !llvm.loop !74

74:                                               ; preds = %69
  %.lcssa1 = phi ptr [ %70, %69 ]
  %75 = getelementptr inbounds %struct._T_tstr, ptr %.lcssa1, i64 0, i32 2
  br label %76

76:                                               ; preds = %74, %65
  %77 = phi ptr [ %28, %65 ], [ %75, %74 ]
  store ptr %66, ptr %77, align 8, !tbaa !7
  br label %80

78:                                               ; preds = %40
  %.lcssa3 = phi i32 [ %44, %40 ]
  %79 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @Z_err_buf, ptr noundef nonnull dereferenceable(1) @.str.6.153, i32 noundef %.lcssa3) #24
  tail call fastcc void @Z_fatal(ptr noundef nonnull @Z_err_buf) #24
  unreachable

80:                                               ; preds = %76, %62, %47, %45
  call fastcc void @S_nextword(ptr noundef nonnull %3) #24
  %81 = load ptr, ptr %3, align 8, !tbaa !7
  %82 = load i8, ptr %81, align 1, !tbaa !11
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %84, label %40, !llvm.loop !75

84:                                               ; preds = %80, %37
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3)
  %85 = add nuw nsw i64 %23, 1
  br label %86

86:                                               ; preds = %89, %84
  %87 = phi ptr [ %24, %84 ], [ %90, %89 ]
  %88 = load i8, ptr %87, align 1, !tbaa !11
  switch i8 %88, label %89 [
    i8 59, label %91
    i8 0, label %91
  ]

89:                                               ; preds = %86
  %90 = getelementptr inbounds i8, ptr %87, i64 1
  br label %86, !llvm.loop !76

91:                                               ; preds = %86, %86
  %.lcssa5 = phi ptr [ %87, %86 ], [ %87, %86 ]
  %.lcssa4 = phi i8 [ %88, %86 ], [ %88, %86 ]
  %92 = icmp eq i8 %.lcssa4, 59
  %93 = zext i1 %92 to i64
  %94 = getelementptr inbounds i8, ptr %.lcssa5, i64 %93
  %95 = load i8, ptr %94, align 1, !tbaa !11
  %96 = icmp eq i8 %95, 0
  br i1 %96, label %173, label %21, !llvm.loop !77

97:                                               ; preds = %14
  %98 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(8) @.str.3, i64 noundef 7) #23
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %106

100:                                              ; preds = %97
  call fastcc void @S_nextword(ptr noundef nonnull %4) #24
  %101 = load ptr, ptr %4, align 8, !tbaa !7
  %102 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %101) #23
  %103 = icmp ugt i64 %102, 19
  br i1 %103, label %104, label %105

104:                                              ; preds = %100
  tail call fastcc void @Z_fatal(ptr noundef nonnull @.str.1) #24
  unreachable

105:                                              ; preds = %100
  tail call fastcc void @W_addcom(ptr noundef %101, i32 noundef 0) #24
  br label %173

106:                                              ; preds = %97
  %107 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(8) @.str.4, i64 noundef 7) #23
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %115

109:                                              ; preds = %106
  call fastcc void @S_nextword(ptr noundef nonnull %4) #24
  %110 = load ptr, ptr %4, align 8, !tbaa !7
  %111 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %110) #23
  %112 = icmp ugt i64 %111, 19
  br i1 %112, label %113, label %114

113:                                              ; preds = %109
  tail call fastcc void @Z_fatal(ptr noundef nonnull @.str.1) #24
  unreachable

114:                                              ; preds = %109
  tail call fastcc void @W_addcom(ptr noundef %110, i32 noundef 1) #24
  br label %173

115:                                              ; preds = %106
  %116 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(8) @.str.5, i64 noundef 7) #23
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %138

118:                                              ; preds = %115
  call fastcc void @S_nextword(ptr noundef nonnull %4) #24
  %119 = load ptr, ptr %4, align 8, !tbaa !7
  %120 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %119) #23
  %121 = icmp ugt i64 %120, 19
  br i1 %121, label %122, label %123

122:                                              ; preds = %118
  tail call fastcc void @Z_fatal(ptr noundef nonnull @.str.1) #24
  unreachable

123:                                              ; preds = %118
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2)
  store ptr %119, ptr %2, align 8, !tbaa !7
  %124 = load i32, ptr @_W_nextlit, align 4, !tbaa !12
  %125 = icmp sgt i32 %124, 19
  br i1 %125, label %126, label %127

126:                                              ; preds = %123
  tail call fastcc void @Z_fatal(ptr noundef nonnull @.str.4.22) #24
  unreachable

127:                                              ; preds = %123
  %128 = sext i32 %124 to i64
  %129 = getelementptr inbounds [20 x %struct._W_bolstruct], ptr @_W_lits, i64 0, i64 %128
  tail call fastcc void @S_wordcpy(ptr noundef nonnull %129, ptr noundef %119) #24
  call fastcc void @S_nextword(ptr noundef nonnull %2) #24
  %130 = getelementptr inbounds [20 x %struct._W_bolstruct], ptr @_W_lits, i64 0, i64 %128, i32 1
  %131 = load ptr, ptr %2, align 8, !tbaa !7
  tail call fastcc void @S_wordcpy(ptr noundef nonnull %130, ptr noundef %131) #24
  call fastcc void @S_nextword(ptr noundef nonnull %2) #24
  %132 = load i32, ptr @_W_nextlit, align 4, !tbaa !12
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds [20 x %struct._W_bolstruct], ptr @_W_lits, i64 0, i64 %133, i32 2
  %135 = load ptr, ptr %2, align 8, !tbaa !7
  tail call fastcc void @S_wordcpy(ptr noundef nonnull %134, ptr noundef %135) #24
  %136 = load i32, ptr @_W_nextlit, align 4, !tbaa !12
  %137 = add nsw i32 %136, 1
  store i32 %137, ptr @_W_nextlit, align 4, !tbaa !12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2)
  br label %173

138:                                              ; preds = %115
  %139 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(14) @.str.6, i64 noundef 13) #23
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %138
  store i32 0, ptr @_W_nextcom, align 4, !tbaa !12
  store i32 0, ptr @_W_nextbol, align 4, !tbaa !12
  br label %173

142:                                              ; preds = %138
  %143 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(14) @.str.7, i64 noundef 13) #23
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %142
  store i32 0, ptr @_W_nextlit, align 4, !tbaa !12
  br label %173

146:                                              ; preds = %142
  %147 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(10) @.str.8, i64 noundef 9) #23
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %149, label %152

149:                                              ; preds = %146
  call fastcc void @S_nextword(ptr noundef nonnull %4) #24
  %150 = load ptr, ptr %4, align 8, !tbaa !7
  %151 = load i8, ptr %150, align 1, !tbaa !11
  store i8 %151, ptr @_W_bolchar, align 1, !tbaa !11
  br label %173

152:                                              ; preds = %146
  %153 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(8) @.str.9, i64 noundef 7) #23
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %158

155:                                              ; preds = %152
  call fastcc void @S_nextword(ptr noundef nonnull %4) #24
  %156 = load ptr, ptr %4, align 8, !tbaa !7
  %157 = load i8, ptr %156, align 1, !tbaa !11
  store i8 %157, ptr @_W_eolchar, align 1, !tbaa !11
  br label %173

158:                                              ; preds = %152
  %159 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(9) @.str.10, i64 noundef 8) #23
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %161, label %163

161:                                              ; preds = %158
  call fastcc void @S_nextword(ptr noundef nonnull %4) #24
  %162 = load ptr, ptr %4, align 8, !tbaa !7
  tail call fastcc void @P_addalpha(ptr noundef %162) #24
  br label %173

163:                                              ; preds = %158
  %164 = load i8, ptr %5, align 1
  %165 = icmp eq i8 %164, 0
  br i1 %165, label %173, label %166

166:                                              ; preds = %163
  %167 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(4) @.str.11, i64 noundef 3) #23
  %168 = icmp eq i32 %167, 0
  %169 = icmp eq i8 %164, 35
  %170 = or i1 %169, %168
  br i1 %170, label %173, label %171

171:                                              ; preds = %166
  %172 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @Z_err_buf, ptr noundef nonnull dereferenceable(1) @.str.12, ptr noundef %0) #24
  tail call fastcc void @Z_fatal(ptr noundef nonnull @Z_err_buf) #24
  unreachable

173:                                              ; preds = %166, %163, %161, %155, %149, %145, %141, %127, %114, %105, %91, %17, %13
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @_P_nextline() unnamed_addr #0 {
  %1 = alloca ptr, align 8
  %2 = load i1, ptr @_P_has_content, align 4
  br i1 %2, label %3, label %32

3:                                                ; preds = %0
  %4 = load i32, ptr @_P_fnumb, align 4, !tbaa !12
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %14, label %6

6:                                                ; preds = %3
  %7 = load i32, ptr @_L_bclm, align 4, !tbaa !12
  %8 = add nsw i32 %7, 1
  store i32 %8, ptr @_L_bclm, align 4, !tbaa !12
  %9 = load i32, ptr @_L_btlm, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [0 x i32], ptr @_L_bc, i64 0, i64 %10
  %12 = load i32, ptr %11, align 4, !tbaa !12
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %31, label %22

14:                                               ; preds = %3
  %15 = load i32, ptr @_L_aclm, align 4, !tbaa !12
  %16 = add nsw i32 %15, 1
  store i32 %16, ptr @_L_aclm, align 4, !tbaa !12
  %17 = load i32, ptr @_L_atlm, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [0 x i32], ptr @_L_ac, i64 0, i64 %18
  %20 = load i32, ptr %19, align 4, !tbaa !12
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %31, label %24

22:                                               ; preds = %6
  %23 = add nsw i32 %9, 1
  store i32 %23, ptr @_L_btlm, align 4, !tbaa !12
  br label %26

24:                                               ; preds = %14
  %25 = add nsw i32 %17, 1
  store i32 %25, ptr @_L_atlm, align 4, !tbaa !12
  br label %26

26:                                               ; preds = %24, %22
  %27 = phi i32 [ %23, %22 ], [ %25, %24 ]
  %28 = phi ptr [ @_L_bc, %22 ], [ @_L_ac, %24 ]
  %29 = sext i32 %27 to i64
  %30 = getelementptr inbounds [0 x i32], ptr %28, i64 0, i64 %29
  store i32 0, ptr %30, align 4, !tbaa !12
  br label %31

31:                                               ; preds = %26, %14, %6
  store i1 false, ptr @_P_has_content, align 4
  br label %32

32:                                               ; preds = %31, %0
  store i32 0, ptr @_P_next_tol, align 4, !tbaa !12
  %33 = load i32, ptr @_P_realline, align 4, !tbaa !12
  %34 = add nsw i32 %33, 1
  store i32 %34, ptr @_P_realline, align 4, !tbaa !12
  %35 = load i32, ptr @_P_lcount, align 4, !tbaa !12
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %64

37:                                               ; preds = %32
  %38 = load i32, ptr @_P_fnumb, align 4, !tbaa !12
  %39 = icmp eq i32 %38, 0
  %40 = sext i32 %34 to i64
  %41 = getelementptr inbounds [0 x ptr], ptr @_L_bl, i64 0, i64 %40
  %42 = getelementptr inbounds [0 x ptr], ptr @_L_al, i64 0, i64 %40
  %43 = select i1 %39, ptr %42, ptr %41
  %44 = load ptr, ptr %43, align 8, !tbaa !7
  store ptr %44, ptr @_P_nextchr, align 8, !tbaa !7
  store ptr %44, ptr @_P_firstchr, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #22
  %45 = load i8, ptr @_C_cmdword, align 16, !tbaa !11
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %53, label %47

47:                                               ; preds = %37
  %48 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) @_C_cmdword) #23
  %49 = tail call i32 @strncmp(ptr noundef %44, ptr noundef nonnull @_C_cmdword, i64 noundef %48) #23
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  store ptr %44, ptr %1, align 8, !tbaa !7
  call fastcc void @S_nextword(ptr noundef nonnull %1) #24
  %52 = load ptr, ptr %1, align 8, !tbaa !7
  tail call fastcc void @_C_do_a_cmd(ptr noundef %52) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #22
  store ptr @_P_dummyline, ptr @_P_nextchr, align 8, !tbaa !7
  br label %62

53:                                               ; preds = %47, %37
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #22
  br i1 %39, label %58, label %54

54:                                               ; preds = %53
  %55 = load i32, ptr @_L_bclm, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [0 x i32], ptr @_L_bclindex, i64 0, i64 %56
  store i32 %34, ptr %57, align 4, !tbaa !12
  br label %62

58:                                               ; preds = %53
  %59 = load i32, ptr @_L_aclm, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [0 x i32], ptr @_L_aclindex, i64 0, i64 %60
  store i32 %34, ptr %61, align 4, !tbaa !12
  br label %62

62:                                               ; preds = %58, %54, %51
  %63 = phi i1 [ true, %58 ], [ true, %54 ], [ false, %51 ]
  store i1 %63, ptr @_P_has_content, align 4
  br label %64

64:                                               ; preds = %62, %32
  %65 = phi i32 [ 0, %62 ], [ 1, %32 ]
  ret i32 %65
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite)
declare ptr @strcat(ptr noalias noundef returned, ptr noalias nocapture noundef readonly) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite)
declare ptr @strncat(ptr noalias noundef returned, ptr noalias nocapture noundef readonly, i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i64 noundef) local_unnamed_addr #7

; Function Attrs: nounwind optsize uwtable
define internal fastcc ptr @F_atof(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca [200 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %3) #22
  %4 = tail call ptr (i64, ...) @_Z_myalloc(i64 noundef 16) #24
  %5 = tail call ptr (i64, ...) @_Z_myalloc(i64 noundef 200) #24
  %6 = getelementptr inbounds %struct.R_flstr, ptr %4, i64 0, i32 2
  store ptr %5, ptr %6, align 8, !tbaa !78
  %7 = getelementptr inbounds %struct.R_flstr, ptr %4, i64 0, i32 1
  store i32 0, ptr %7, align 4, !tbaa !71
  store i8 0, ptr %3, align 16, !tbaa !11
  %8 = load i8, ptr %0, align 1, !tbaa !11
  switch i8 %8, label %13 [
    i8 43, label %9
    i8 45, label %11
  ]

9:                                                ; preds = %2
  %10 = getelementptr inbounds i8, ptr %0, i64 1
  br label %13

11:                                               ; preds = %2
  store i32 1, ptr %7, align 4, !tbaa !71
  %12 = getelementptr inbounds i8, ptr %0, i64 1
  br label %13

13:                                               ; preds = %11, %9, %2
  %14 = phi ptr [ %10, %9 ], [ %12, %11 ], [ %0, %2 ]
  br label %15

15:                                               ; preds = %15, %13
  %16 = phi ptr [ %19, %15 ], [ %14, %13 ]
  %17 = load i8, ptr %16, align 1, !tbaa !11
  %18 = icmp eq i8 %17, 48
  %19 = getelementptr inbounds i8, ptr %16, i64 1
  br i1 %18, label %15, label %20, !llvm.loop !79

20:                                               ; preds = %15
  %.lcssa9 = phi ptr [ %16, %15 ]
  %.lcssa8 = phi i8 [ %17, %15 ]
  %21 = tail call ptr @__ctype_b_loc() #27
  %22 = load ptr, ptr %21, align 8, !tbaa !7
  %23 = sext i8 %.lcssa8 to i64
  %24 = getelementptr inbounds i16, ptr %22, i64 %23
  %25 = load i16, ptr %24, align 2, !tbaa !27
  %26 = and i16 %25, 2048
  %27 = icmp eq i16 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %20
  %29 = icmp eq i8 %.lcssa8, 46
  %30 = zext i1 %29 to i64
  %31 = getelementptr inbounds i8, ptr %.lcssa9, i64 %30
  %32 = load i8, ptr %31, align 1, !tbaa !11
  %33 = icmp eq i8 %32, 48
  br i1 %33, label %56, label %63

34:                                               ; preds = %34, %20
  %35 = phi i64 [ %40, %34 ], [ 0, %20 ]
  %36 = phi i8 [ %44, %34 ], [ %.lcssa8, %20 ]
  %37 = phi i32 [ %41, %34 ], [ 0, %20 ]
  %38 = phi ptr [ %39, %34 ], [ %.lcssa9, %20 ]
  %39 = getelementptr inbounds i8, ptr %38, i64 1
  %40 = add nuw nsw i64 %35, 1
  %41 = add nuw nsw i32 %37, 1
  %42 = getelementptr inbounds [200 x i8], ptr %3, i64 0, i64 %35
  store i8 %36, ptr %42, align 1, !tbaa !11
  %43 = getelementptr inbounds [200 x i8], ptr %3, i64 0, i64 %40
  store i8 0, ptr %43, align 1, !tbaa !11
  %44 = load i8, ptr %39, align 1, !tbaa !11
  %45 = sext i8 %44 to i64
  %46 = getelementptr inbounds i16, ptr %22, i64 %45
  %47 = load i16, ptr %46, align 2, !tbaa !27
  %48 = and i16 %47, 2048
  %49 = icmp eq i16 %48, 0
  br i1 %49, label %50, label %34, !llvm.loop !80

50:                                               ; preds = %34
  %.lcssa7 = phi ptr [ %39, %34 ]
  %.lcssa6 = phi i64 [ %40, %34 ]
  %.lcssa5 = phi i32 [ %41, %34 ]
  %.lcssa4 = phi i8 [ %44, %34 ]
  %51 = trunc i64 %.lcssa6 to i32
  %52 = icmp eq i8 %.lcssa4, 46
  %53 = zext i1 %52 to i64
  %54 = getelementptr inbounds i8, ptr %.lcssa7, i64 %53
  %55 = load i8, ptr %54, align 1, !tbaa !11
  br label %63

56:                                               ; preds = %56, %28
  %57 = phi i32 [ %60, %56 ], [ 0, %28 ]
  %58 = phi ptr [ %59, %56 ], [ %31, %28 ]
  %59 = getelementptr inbounds i8, ptr %58, i64 1
  %60 = add nsw i32 %57, -1
  %61 = load i8, ptr %59, align 1, !tbaa !11
  %62 = icmp eq i8 %61, 48
  br i1 %62, label %56, label %63, !llvm.loop !81

63:                                               ; preds = %56, %50, %28
  %64 = phi i32 [ %51, %50 ], [ 0, %28 ], [ 0, %56 ]
  %65 = phi i8 [ %55, %50 ], [ %32, %28 ], [ %61, %56 ]
  %66 = phi ptr [ %54, %50 ], [ %31, %28 ], [ %59, %56 ]
  %67 = phi i32 [ %.lcssa5, %50 ], [ 0, %28 ], [ %60, %56 ]
  %68 = sext i8 %65 to i64
  %69 = getelementptr inbounds i16, ptr %22, i64 %68
  %70 = load i16, ptr %69, align 2, !tbaa !27
  %71 = and i16 %70, 2048
  %72 = icmp eq i16 %71, 0
  br i1 %72, label %91, label %73

73:                                               ; preds = %63
  %74 = zext i32 %64 to i64
  br label %75

75:                                               ; preds = %75, %73
  %76 = phi i64 [ %74, %73 ], [ %80, %75 ]
  %77 = phi i8 [ %65, %73 ], [ %83, %75 ]
  %78 = phi ptr [ %66, %73 ], [ %79, %75 ]
  %79 = getelementptr inbounds i8, ptr %78, i64 1
  %80 = add nuw nsw i64 %76, 1
  %81 = getelementptr inbounds [200 x i8], ptr %3, i64 0, i64 %76
  store i8 %77, ptr %81, align 1, !tbaa !11
  %82 = getelementptr inbounds [200 x i8], ptr %3, i64 0, i64 %80
  store i8 0, ptr %82, align 1, !tbaa !11
  %83 = load i8, ptr %79, align 1, !tbaa !11
  %84 = sext i8 %83 to i64
  %85 = getelementptr inbounds i16, ptr %22, i64 %84
  %86 = load i16, ptr %85, align 2, !tbaa !27
  %87 = and i16 %86, 2048
  %88 = icmp eq i16 %87, 0
  br i1 %88, label %89, label %75, !llvm.loop !82

89:                                               ; preds = %75
  %.lcssa3 = phi ptr [ %79, %75 ]
  %.lcssa2 = phi i64 [ %80, %75 ]
  %.lcssa1 = phi i8 [ %83, %75 ]
  %90 = trunc i64 %.lcssa2 to i32
  br label %91

91:                                               ; preds = %89, %63
  %92 = phi ptr [ %66, %63 ], [ %.lcssa3, %89 ]
  %93 = phi i32 [ %64, %63 ], [ %90, %89 ]
  %94 = phi i8 [ %65, %63 ], [ %.lcssa1, %89 ]
  switch i8 %94, label %99 [
    i8 101, label %95
    i8 69, label %95
    i8 100, label %95
    i8 68, label %95
  ]

95:                                               ; preds = %91, %91, %91, %91
  %96 = getelementptr inbounds i8, ptr %92, i64 1
  %97 = tail call i32 @atoi(ptr nocapture noundef nonnull %96) #23
  %98 = add nsw i32 %97, %67
  br label %99

99:                                               ; preds = %95, %91
  %100 = phi ptr [ %96, %95 ], [ %92, %91 ]
  %101 = phi i32 [ %98, %95 ], [ %67, %91 ]
  %102 = icmp eq i32 %1, 0
  br i1 %102, label %122, label %103

103:                                              ; preds = %99
  %104 = load i8, ptr %100, align 1, !tbaa !11
  switch i8 %104, label %107 [
    i8 43, label %105
    i8 45, label %105
  ]

105:                                              ; preds = %103, %103
  %106 = getelementptr inbounds i8, ptr %100, i64 1
  br label %107

107:                                              ; preds = %105, %103
  %108 = phi ptr [ %106, %105 ], [ %100, %103 ]
  br label %109

109:                                              ; preds = %109, %107
  %110 = phi ptr [ %117, %109 ], [ %108, %107 ]
  %111 = load i8, ptr %110, align 1, !tbaa !11
  %112 = sext i8 %111 to i64
  %113 = getelementptr inbounds i16, ptr %22, i64 %112
  %114 = load i16, ptr %113, align 2, !tbaa !27
  %115 = and i16 %114, 2048
  %116 = icmp eq i16 %115, 0
  %117 = getelementptr inbounds i8, ptr %110, i64 1
  br i1 %116, label %118, label %109, !llvm.loop !83

118:                                              ; preds = %109
  %.lcssa = phi i8 [ %111, %109 ]
  %119 = icmp eq i8 %.lcssa, 0
  br i1 %119, label %122, label %120

120:                                              ; preds = %118
  %121 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @Z_err_buf, ptr noundef nonnull dereferenceable(1) @.str.30, ptr noundef nonnull %0) #24
  tail call fastcc void @Z_fatal(ptr noundef nonnull @Z_err_buf) #24
  unreachable

122:                                              ; preds = %118, %99
  %123 = icmp eq i32 %93, 0
  br i1 %123, label %147, label %124

124:                                              ; preds = %122
  %125 = zext i32 %93 to i64
  br label %129

126:                                              ; preds = %129
  %127 = add nuw nsw i64 %130, 1
  %128 = icmp eq i64 %127, %125
  br i1 %128, label %147, label %129, !llvm.loop !84

129:                                              ; preds = %126, %124
  %130 = phi i64 [ 0, %124 ], [ %127, %126 ]
  %131 = getelementptr inbounds [200 x i8], ptr %3, i64 0, i64 %130
  %132 = load i8, ptr %131, align 1, !tbaa !11
  %133 = icmp eq i8 %132, 48
  br i1 %133, label %126, label %134

134:                                              ; preds = %129
  %135 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #23
  %136 = icmp sgt i64 %135, 1
  br i1 %136, label %137, label %145

137:                                              ; preds = %143, %134
  %138 = phi i64 [ %139, %143 ], [ %135, %134 ]
  %139 = add nsw i64 %138, -1
  %140 = getelementptr inbounds i8, ptr %3, i64 %139
  %141 = load i8, ptr %140, align 1, !tbaa !11
  %142 = icmp eq i8 %141, 48
  br i1 %142, label %143, label %145

143:                                              ; preds = %137
  store i8 0, ptr %140, align 1, !tbaa !11
  %144 = icmp ugt i64 %138, 2
  br i1 %144, label %137, label %145, !llvm.loop !85

145:                                              ; preds = %143, %137, %134
  %146 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) %3) #24
  store i32 %101, ptr %4, align 8, !tbaa !86
  br label %148

147:                                              ; preds = %126, %122
  store i16 48, ptr %5, align 1
  store i32 0, ptr %4, align 8, !tbaa !86
  store i32 0, ptr %7, align 4, !tbaa !71
  br label %148

148:                                              ; preds = %147, %145
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %3) #22
  ret ptr %4
}

; Function Attrs: nounwind optsize uwtable
define internal void @S_savenstr(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 {
  %4 = add nsw i32 %2, 1
  %5 = sext i32 %4 to i64
  %6 = tail call ptr (i64, ...) @_Z_myalloc(i64 noundef %5) #24
  store ptr %6, ptr %0, align 8, !tbaa !7
  %7 = sext i32 %2 to i64
  %8 = tail call ptr @strncpy(ptr noundef %6, ptr noundef %1, i64 noundef %7) #24
  %9 = load ptr, ptr %0, align 8, !tbaa !7
  %10 = getelementptr inbounds i8, ptr %9, i64 %7
  store i8 0, ptr %10, align 1, !tbaa !11
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(read)
declare ptr @index(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind optsize uwtable
define internal fastcc void @Z_chatter(ptr nocapture noundef readonly %0) unnamed_addr #9 {
  %2 = load i1, ptr @_Z_qflag, align 4
  br i1 %2, label %8, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr @stderr, align 8, !tbaa !7
  %5 = tail call i32 @fputs(ptr noundef nonnull @.str.58, ptr noundef %4) #26
  %6 = load ptr, ptr @stderr, align 8, !tbaa !7
  %7 = tail call i32 @fputs(ptr noundef %0, ptr noundef %6) #26
  br label %8

8:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #11

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @X_com(i32 noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = sext i32 %0 to i64
  %5 = getelementptr inbounds [0 x ptr], ptr @_K_ato, i64 0, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !7
  %7 = sext i32 %1 to i64
  %8 = getelementptr inbounds [0 x ptr], ptr @_K_bto, i64 0, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !7
  %10 = and i32 %2, 2
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %310

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct._K_str, ptr %6, i64 0, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !38
  %15 = getelementptr inbounds %struct._K_str, ptr %9, i64 0, i32 2
  %16 = load i32, ptr %15, align 8, !tbaa !38
  %17 = icmp eq i32 %14, %16
  br i1 %17, label %18, label %316

18:                                               ; preds = %12
  switch i32 %14, label %309 [
    i32 1, label %310
    i32 2, label %19
  ]

19:                                               ; preds = %18
  %20 = getelementptr inbounds %struct._K_str, ptr %6, i64 0, i32 4
  %21 = load ptr, ptr %20, align 8, !tbaa !44
  %22 = getelementptr inbounds %struct._K_str, ptr %9, i64 0, i32 4
  %23 = load ptr, ptr %22, align 8, !tbaa !44
  %24 = getelementptr inbounds %struct._K_str, ptr %6, i64 0, i32 5
  %25 = load ptr, ptr %24, align 8, !tbaa !45
  %26 = getelementptr inbounds %struct._K_str, ptr %9, i64 0, i32 5
  %27 = load ptr, ptr %26, align 8, !tbaa !45
  %28 = icmp eq ptr %25, null
  %29 = icmp eq ptr %27, null
  %30 = load ptr, ptr @_T_gtol, align 8
  %31 = select i1 %29, ptr %30, ptr %27
  %32 = select i1 %28, ptr %31, ptr %25
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %19
  tail call fastcc void @Z_fatal(ptr noundef nonnull @.str.1.25) #24
  unreachable

35:                                               ; preds = %55, %19
  %36 = phi ptr [ %57, %55 ], [ %32, %19 ]
  %37 = load i32, ptr %36, align 8, !tbaa !18
  switch i32 %37, label %55 [
    i32 2, label %316
    i32 0, label %38
  ]

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct._T_tstr, ptr %36, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !70
  %41 = load i32, ptr %40, align 8, !tbaa !86
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.R_flstr, ptr %40, i64 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !78
  %46 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %45, ptr noundef nonnull dereferenceable(2) @.str.1.37) #23
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %55, label %48

48:                                               ; preds = %43, %38
  %49 = load i32, ptr %21, align 8, !tbaa !86
  %50 = add nsw i32 %41, -1
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %48
  %53 = load i32, ptr %23, align 8, !tbaa !86
  %54 = icmp slt i32 %53, %50
  br i1 %54, label %316, label %55

55:                                               ; preds = %52, %48, %43, %35
  %56 = getelementptr inbounds %struct._T_tstr, ptr %36, i64 0, i32 2
  %57 = load ptr, ptr %56, align 8, !tbaa !14
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %35, !llvm.loop !87

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.R_flstr, ptr %21, i64 0, i32 1
  %61 = load i32, ptr %60, align 4, !tbaa !71
  %62 = getelementptr inbounds %struct.R_flstr, ptr %23, i64 0, i32 1
  %63 = load i32, ptr %62, align 4, !tbaa !71
  %64 = icmp eq i32 %61, %63
  br i1 %64, label %160, label %65

65:                                               ; preds = %59
  %66 = load i1, ptr @F_floatmagadd.needinit, align 4
  br i1 %66, label %71, label %67

67:                                               ; preds = %65
  %68 = tail call ptr (i64, ...) @_Z_myalloc(i64 noundef 16) #24
  %69 = tail call ptr (i64, ...) @_Z_myalloc(i64 noundef 200) #24
  %70 = getelementptr inbounds %struct.R_flstr, ptr %68, i64 0, i32 2
  store ptr %69, ptr %70, align 8, !tbaa !78
  store ptr %68, ptr @F_floatmagadd.result, align 8, !tbaa !7
  store i1 true, ptr @F_floatmagadd.needinit, align 4
  br label %71

71:                                               ; preds = %67, %65
  store i8 0, ptr @F_floatmagadd.man1, align 16
  store i8 0, ptr @F_floatmagadd.man2, align 16
  %72 = load i32, ptr %21, align 8, !tbaa !86
  %73 = load i32, ptr %23, align 8, !tbaa !86
  %74 = xor i32 %73, %72
  %75 = icmp sgt i32 %74, -1
  %76 = tail call i32 @llvm.abs.i32(i32 %72, i1 true)
  %77 = tail call i32 @llvm.abs.i32(i32 %73, i1 true)
  br i1 %75, label %83, label %78

78:                                               ; preds = %71
  %79 = icmp ult i32 %76, %77
  %80 = sub nsw i32 %77, %76
  %81 = sub nsw i32 %76, %77
  %82 = select i1 %79, i32 %80, i32 %81
  br label %85

83:                                               ; preds = %71
  %84 = add nuw nsw i32 %77, %76
  br label %85

85:                                               ; preds = %83, %78
  %86 = phi i32 [ %82, %78 ], [ %84, %83 ]
  %87 = icmp sgt i32 %86, 0
  br i1 %87, label %88, label %103

88:                                               ; preds = %85
  %89 = icmp slt i32 %72, %73
  %90 = zext i32 %86 to i64
  br i1 %89, label %91, label %97

91:                                               ; preds = %88
  %92 = getelementptr inbounds %struct.R_flstr, ptr %21, i64 0, i32 2
  %93 = load ptr, ptr %92, align 8, !tbaa !78
  %94 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %93) #23
  %95 = add i64 %94, %90
  %96 = icmp ugt i64 %95, 199
  br i1 %96, label %112, label %116

97:                                               ; preds = %88
  %98 = getelementptr inbounds %struct.R_flstr, ptr %23, i64 0, i32 2
  %99 = load ptr, ptr %98, align 8, !tbaa !78
  %100 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %99) #23
  %101 = add i64 %100, %90
  %102 = icmp ugt i64 %101, 199
  br i1 %102, label %112, label %122

103:                                              ; preds = %85
  %104 = getelementptr inbounds %struct.R_flstr, ptr %21, i64 0, i32 2
  %105 = load ptr, ptr %104, align 8, !tbaa !78
  %106 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %105) #23
  %107 = getelementptr inbounds %struct.R_flstr, ptr %23, i64 0, i32 2
  %108 = load ptr, ptr %107, align 8, !tbaa !78
  %109 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %108) #23
  %110 = tail call i64 @llvm.umax.i64(i64 %106, i64 %109)
  %111 = icmp ugt i64 %110, 198
  br i1 %111, label %112, label %113

112:                                              ; preds = %103, %97, %91
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) @Z_err_buf, ptr noundef nonnull align 1 dereferenceable(40) @.str.5.42, i64 40, i1 false)
  tail call fastcc void @Z_fatal(ptr noundef nonnull @Z_err_buf) #24
  unreachable

113:                                              ; preds = %103
  %114 = icmp slt i32 %72, %73
  %115 = select i1 %114, ptr %23, ptr %21
  br label %128

116:                                              ; preds = %116, %91
  %117 = phi i32 [ %120, %116 ], [ %86, %91 ]
  %118 = tail call i64 @strlen(ptr nonnull dereferenceable(1) @F_floatmagadd.man1)
  %119 = getelementptr inbounds i8, ptr @F_floatmagadd.man1, i64 %118
  store i16 48, ptr %119, align 1
  %120 = add nsw i32 %117, -1
  %121 = icmp ugt i32 %117, 1
  br i1 %121, label %116, label %128, !llvm.loop !88

122:                                              ; preds = %122, %97
  %123 = phi i32 [ %126, %122 ], [ %86, %97 ]
  %124 = tail call i64 @strlen(ptr nonnull dereferenceable(1) @F_floatmagadd.man2)
  %125 = getelementptr inbounds i8, ptr @F_floatmagadd.man2, i64 %124
  store i16 48, ptr %125, align 1
  %126 = add nsw i32 %123, -1
  %127 = icmp ugt i32 %123, 1
  br i1 %127, label %122, label %128, !llvm.loop !88

128:                                              ; preds = %122, %116, %113
  %129 = phi ptr [ %115, %113 ], [ %23, %116 ], [ %21, %122 ]
  %130 = load i32, ptr %129, align 8, !tbaa !86
  %131 = getelementptr inbounds %struct.R_flstr, ptr %21, i64 0, i32 2
  %132 = load ptr, ptr %131, align 8, !tbaa !78
  %133 = tail call ptr @strcat(ptr noundef nonnull dereferenceable(1) @F_floatmagadd.man1, ptr noundef nonnull dereferenceable(1) %132) #24
  %134 = getelementptr inbounds %struct.R_flstr, ptr %23, i64 0, i32 2
  %135 = load ptr, ptr %134, align 8, !tbaa !78
  %136 = tail call ptr @strcat(ptr noundef nonnull dereferenceable(1) @F_floatmagadd.man2, ptr noundef nonnull dereferenceable(1) %135) #24
  %137 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) @F_floatmagadd.man1) #23
  %138 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) @F_floatmagadd.man2) #23
  %139 = tail call i64 @llvm.umax.i64(i64 %137, i64 %138)
  tail call fastcc void @_F_stradd(ptr noundef nonnull @F_floatmagadd.man1, ptr noundef nonnull @F_floatmagadd.man2) #25
  %140 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) @F_floatmagadd.man1) #23
  %141 = sub i64 %140, %139
  %142 = trunc i64 %141 to i32
  %143 = add i32 %130, %142
  %144 = load i8, ptr @F_floatmagadd.man1, align 16, !tbaa !11
  %145 = icmp eq i8 %144, 48
  br i1 %145, label %146, label %153

146:                                              ; preds = %146, %128
  %147 = phi ptr [ %149, %146 ], [ @F_floatmagadd.man1, %128 ]
  %148 = phi i32 [ %150, %146 ], [ %143, %128 ]
  %149 = getelementptr inbounds i8, ptr %147, i64 1
  %150 = add nsw i32 %148, -1
  %151 = load i8, ptr %149, align 1, !tbaa !11
  %152 = icmp eq i8 %151, 48
  br i1 %152, label %146, label %153, !llvm.loop !89

153:                                              ; preds = %146, %128
  %154 = phi i32 [ %143, %128 ], [ %150, %146 ]
  %155 = phi ptr [ @F_floatmagadd.man1, %128 ], [ %149, %146 ]
  %156 = load ptr, ptr @F_floatmagadd.result, align 8, !tbaa !7
  %157 = getelementptr inbounds %struct.R_flstr, ptr %156, i64 0, i32 2
  %158 = load ptr, ptr %157, align 8, !tbaa !78
  %159 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %158, ptr noundef nonnull dereferenceable(1) %155) #24
  store i32 %154, ptr %156, align 8, !tbaa !86
  br label %287

160:                                              ; preds = %59
  %161 = load i1, ptr @F_floatsub.needinit, align 4
  br i1 %161, label %166, label %162

162:                                              ; preds = %160
  %163 = tail call ptr (i64, ...) @_Z_myalloc(i64 noundef 16) #24
  %164 = tail call ptr (i64, ...) @_Z_myalloc(i64 noundef 200) #24
  %165 = getelementptr inbounds %struct.R_flstr, ptr %163, i64 0, i32 2
  store ptr %164, ptr %165, align 8, !tbaa !78
  store ptr %163, ptr @F_floatsub.result, align 8, !tbaa !7
  store i1 true, ptr @F_floatsub.needinit, align 4
  br label %166

166:                                              ; preds = %162, %160
  store i8 0, ptr @F_floatsub.man1, align 16, !tbaa !11
  store i8 0, ptr @F_floatsub.man2, align 16, !tbaa !11
  %167 = load i32, ptr %21, align 8, !tbaa !86
  %168 = load i32, ptr %23, align 8, !tbaa !86
  %169 = icmp slt i32 %167, %168
  br i1 %169, label %172, label %170

170:                                              ; preds = %166
  %171 = icmp sgt i32 %167, %168
  br i1 %171, label %178, label %184

172:                                              ; preds = %172, %166
  %173 = phi i32 [ %176, %172 ], [ %167, %166 ]
  %174 = tail call i64 @strlen(ptr nonnull dereferenceable(1) @F_floatsub.man1)
  %175 = getelementptr inbounds i8, ptr @F_floatsub.man1, i64 %174
  store i16 48, ptr %175, align 1
  %176 = add nsw i32 %173, 1
  %177 = icmp eq i32 %176, %168
  br i1 %177, label %187, label %172, !llvm.loop !90

178:                                              ; preds = %178, %170
  %179 = phi i32 [ %182, %178 ], [ %168, %170 ]
  %180 = tail call i64 @strlen(ptr nonnull dereferenceable(1) @F_floatsub.man2)
  %181 = getelementptr inbounds i8, ptr @F_floatsub.man2, i64 %180
  store i16 48, ptr %181, align 1
  %182 = add nsw i32 %179, 1
  %183 = icmp eq i32 %182, %167
  br i1 %183, label %187, label %178, !llvm.loop !91

184:                                              ; preds = %170
  %185 = icmp eq i32 %167, %168
  br i1 %185, label %187, label %186

186:                                              ; preds = %184
  tail call fastcc void @Z_fatal(ptr noundef nonnull @.str.2.33) #24
  unreachable

187:                                              ; preds = %184, %178, %172
  %188 = phi i32 [ %167, %184 ], [ %168, %172 ], [ %167, %178 ]
  %189 = getelementptr inbounds %struct.R_flstr, ptr %21, i64 0, i32 2
  %190 = load ptr, ptr %189, align 8, !tbaa !78
  %191 = tail call ptr @strcat(ptr noundef nonnull dereferenceable(1) @F_floatsub.man1, ptr noundef nonnull dereferenceable(1) %190) #24
  %192 = getelementptr inbounds %struct.R_flstr, ptr %23, i64 0, i32 2
  %193 = load ptr, ptr %192, align 8, !tbaa !78
  %194 = tail call ptr @strcat(ptr noundef nonnull dereferenceable(1) @F_floatsub.man2, ptr noundef nonnull dereferenceable(1) %193) #24
  %195 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) @F_floatsub.man1, ptr noundef nonnull dereferenceable(1) @F_floatsub.man2) #23
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %197, label %201

197:                                              ; preds = %187
  %198 = load ptr, ptr @F_floatsub.result, align 8, !tbaa !7
  %199 = getelementptr inbounds %struct.R_flstr, ptr %198, i64 0, i32 2
  %200 = load ptr, ptr %199, align 8, !tbaa !78
  store i16 48, ptr %200, align 1
  store i32 0, ptr %198, align 8, !tbaa !86
  br label %287

201:                                              ; preds = %187
  %202 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) @F_floatsub.man1) #23
  %203 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) @F_floatsub.man2) #23
  %204 = icmp ugt i64 %202, %203
  br i1 %204, label %205, label %215

205:                                              ; preds = %201
  %206 = sub i64 %202, %203
  %207 = trunc i64 %206 to i32
  %208 = icmp sgt i32 %207, 0
  br i1 %208, label %209, label %227

209:                                              ; preds = %209, %205
  %210 = phi i32 [ %213, %209 ], [ %207, %205 ]
  %211 = tail call i64 @strlen(ptr nonnull dereferenceable(1) @F_floatsub.man2)
  %212 = getelementptr inbounds i8, ptr @F_floatsub.man2, i64 %211
  store i16 48, ptr %212, align 1
  %213 = add nsw i32 %210, -1
  %214 = icmp ugt i32 %210, 1
  br i1 %214, label %209, label %227, !llvm.loop !88

215:                                              ; preds = %201
  %216 = icmp ult i64 %202, %203
  %217 = sub i64 %203, %202
  %218 = trunc i64 %217 to i32
  %219 = icmp sgt i32 %218, 0
  %220 = and i1 %216, %219
  br i1 %220, label %221, label %227

221:                                              ; preds = %221, %215
  %222 = phi i32 [ %225, %221 ], [ %218, %215 ]
  %223 = tail call i64 @strlen(ptr nonnull dereferenceable(1) @F_floatsub.man1)
  %224 = getelementptr inbounds i8, ptr @F_floatsub.man1, i64 %223
  store i16 48, ptr %224, align 1
  %225 = add nsw i32 %222, -1
  %226 = icmp ugt i32 %222, 1
  br i1 %226, label %221, label %227, !llvm.loop !88

227:                                              ; preds = %221, %215, %209, %205
  %228 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) @F_floatsub.man1) #23
  %229 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) @F_floatsub.man2) #23
  %230 = icmp eq i64 %228, %229
  br i1 %230, label %232, label %231

231:                                              ; preds = %227
  tail call fastcc void @Z_fatal(ptr noundef nonnull @.str.3.34) #24
  unreachable

232:                                              ; preds = %227
  %233 = icmp slt i32 %195, 0
  %234 = select i1 %233, ptr @F_floatsub.man2, ptr @F_floatsub.man1
  %235 = select i1 %233, ptr @F_floatsub.man1, ptr @F_floatsub.man2
  %236 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %234) #23
  %237 = trunc i64 %236 to i32
  %238 = getelementptr inbounds [200 x i8], ptr @F_floatsub.diff, i64 0, i64 %236
  store i8 0, ptr %238, align 1, !tbaa !11
  %239 = add i32 %237, -1
  %240 = icmp sgt i32 %239, -1
  br i1 %240, label %241, label %243

241:                                              ; preds = %232
  %242 = zext i32 %239 to i64
  br label %246

243:                                              ; preds = %263, %232
  %244 = load i8, ptr @F_floatsub.diff, align 16, !tbaa !11
  %245 = icmp eq i8 %244, 48
  br i1 %245, label %273, label %280

246:                                              ; preds = %263, %241
  %247 = phi i64 [ %242, %241 ], [ %271, %263 ]
  %248 = phi i32 [ 0, %241 ], [ %267, %263 ]
  %249 = icmp eq i32 %248, 0
  %250 = getelementptr inbounds i8, ptr %234, i64 %247
  %251 = load i8, ptr %250, align 1, !tbaa !11
  br i1 %249, label %258, label %252

252:                                              ; preds = %246
  %253 = icmp eq i8 %251, 48
  %254 = add i8 %251, -1
  %255 = select i1 %253, i8 57, i8 %254
  %256 = getelementptr inbounds i8, ptr %235, i64 %247
  %257 = load i8, ptr %256, align 1, !tbaa !11
  br label %263

258:                                              ; preds = %246
  %259 = getelementptr inbounds i8, ptr %235, i64 %247
  %260 = load i8, ptr %259, align 1, !tbaa !11
  %261 = icmp slt i8 %251, %260
  %262 = select i1 %261, i8 58, i8 %251
  br label %263

263:                                              ; preds = %258, %252
  %264 = phi i8 [ %257, %252 ], [ %260, %258 ]
  %265 = phi i1 [ %253, %252 ], [ %261, %258 ]
  %266 = phi i8 [ %255, %252 ], [ %262, %258 ]
  %267 = zext i1 %265 to i32
  %268 = sub i8 %266, %264
  %269 = add i8 %268, 48
  %270 = getelementptr inbounds [200 x i8], ptr @F_floatsub.diff, i64 0, i64 %247
  store i8 %269, ptr %270, align 1, !tbaa !11
  %271 = add nsw i64 %247, -1
  %272 = icmp sgt i64 %247, 0
  br i1 %272, label %246, label %243, !llvm.loop !92

273:                                              ; preds = %273, %243
  %274 = phi ptr [ %276, %273 ], [ @F_floatsub.diff, %243 ]
  %275 = phi i32 [ %277, %273 ], [ %188, %243 ]
  %276 = getelementptr inbounds i8, ptr %274, i64 1
  %277 = add nsw i32 %275, -1
  %278 = load i8, ptr %276, align 1, !tbaa !11
  %279 = icmp eq i8 %278, 48
  br i1 %279, label %273, label %280, !llvm.loop !93

280:                                              ; preds = %273, %243
  %281 = phi i32 [ %188, %243 ], [ %277, %273 ]
  %282 = phi ptr [ @F_floatsub.diff, %243 ], [ %276, %273 ]
  %283 = load ptr, ptr @F_floatsub.result, align 8, !tbaa !7
  store i32 %281, ptr %283, align 8, !tbaa !86
  %284 = getelementptr inbounds %struct.R_flstr, ptr %283, i64 0, i32 2
  %285 = load ptr, ptr %284, align 8, !tbaa !78
  %286 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %285, ptr noundef nonnull dereferenceable(1) %282) #24
  br label %287

287:                                              ; preds = %280, %197, %153
  %288 = phi ptr [ %156, %153 ], [ %283, %280 ], [ %198, %197 ]
  %289 = getelementptr inbounds %struct.R_flstr, ptr %288, i64 0, i32 1
  store i32 0, ptr %289, align 4, !tbaa !71
  br label %290

290:                                              ; preds = %305, %287
  %291 = phi ptr [ %307, %305 ], [ %32, %287 ]
  %292 = getelementptr inbounds %struct._T_tstr, ptr %291, i64 0, i32 1
  %293 = load ptr, ptr %292, align 8, !tbaa !70
  %294 = load i32, ptr %291, align 8, !tbaa !18
  switch i32 %294, label %300 [
    i32 0, label %301
    i32 1, label %295
  ]

295:                                              ; preds = %290
  %296 = tail call fastcc i32 @F_floatcmp(ptr noundef %21, ptr noundef %23) #24
  %297 = icmp sgt i32 %296, 0
  %298 = select i1 %297, ptr %21, ptr %23
  %299 = tail call fastcc ptr @F_floatmul(ptr noundef %298, ptr noundef %293) #24
  br label %301

300:                                              ; preds = %290
  tail call fastcc void @Z_fatal(ptr noundef nonnull @.str.3.27) #24
  unreachable

301:                                              ; preds = %295, %290
  %302 = phi ptr [ %293, %290 ], [ %299, %295 ]
  %303 = tail call fastcc i32 @F_floatcmp(ptr noundef nonnull %288, ptr noundef %302) #24
  %304 = icmp slt i32 %303, 1
  br i1 %304, label %316, label %305

305:                                              ; preds = %301
  %306 = getelementptr inbounds %struct._T_tstr, ptr %291, i64 0, i32 2
  %307 = load ptr, ptr %306, align 8, !tbaa !14
  %308 = icmp eq ptr %307, null
  br i1 %308, label %316, label %290, !llvm.loop !94

309:                                              ; preds = %18
  tail call fastcc void @Z_fatal(ptr noundef nonnull @.str.28) #24
  unreachable

310:                                              ; preds = %18, %3
  %311 = getelementptr inbounds %struct._K_str, ptr %6, i64 0, i32 3
  %312 = load ptr, ptr %311, align 8, !tbaa !40
  %313 = getelementptr inbounds %struct._K_str, ptr %9, i64 0, i32 3
  %314 = load ptr, ptr %313, align 8, !tbaa !40
  %315 = tail call fastcc i32 @_X_strcmp(ptr noundef %312, ptr noundef %314, i32 noundef %2) #25
  br label %316

316:                                              ; preds = %310, %305, %301, %52, %35, %12
  %317 = phi i32 [ 1, %12 ], [ %315, %310 ], [ 1, %305 ], [ 0, %301 ], [ 0, %35 ], [ 0, %52 ]
  ret i32 %317
}

; Function Attrs: noreturn nounwind optsize uwtable
define internal fastcc void @Z_exceed(i32 noundef %0) unnamed_addr #5 {
  %2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @Z_err_buf, ptr noundef nonnull dereferenceable(1) @.str.2.70, i32 noundef %0) #24
  tail call fastcc void @_Z_qfatal() #25
  unreachable
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind optsize
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind optsize uwtable
define internal fastcc ptr @_O_get_text(i32 noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #9 {
  %4 = and i32 %2, 8
  %5 = icmp eq i32 %4, 0
  %6 = icmp eq i32 %0, 0
  %7 = sext i32 %1 to i64
  br i1 %5, label %35, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds [0 x ptr], ptr @_K_bto, i64 0, i64 %7
  %10 = getelementptr inbounds [0 x ptr], ptr @_K_ato, i64 0, i64 %7
  %11 = select i1 %6, ptr %10, ptr %9
  %12 = load ptr, ptr %11, align 8, !tbaa !7
  %13 = getelementptr inbounds %struct._K_str, ptr %12, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !40
  %15 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %14) #23
  %16 = icmp eq i64 %15, 1
  br i1 %16, label %17, label %23

17:                                               ; preds = %8
  %18 = load i8, ptr %14, align 1, !tbaa !11
  %19 = sext i8 %18 to i32
  switch i32 %19, label %23 [
    i32 10, label %20
    i32 9, label %21
    i32 32, label %22
  ]

20:                                               ; preds = %17
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(10) @_O_convert.spacetext, ptr noundef nonnull align 1 dereferenceable(10) @.str.11.81, i64 10, i1 false) #24
  br label %23

21:                                               ; preds = %17
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(6) @_O_convert.spacetext, ptr noundef nonnull align 1 dereferenceable(6) @.str.12.82, i64 6, i1 false) #24
  br label %23

22:                                               ; preds = %17
  store i64 17527603716969276, ptr @_O_convert.spacetext, align 16
  br label %23

23:                                               ; preds = %22, %21, %20, %17, %8
  %24 = phi ptr [ @_O_convert.spacetext, %22 ], [ @_O_convert.spacetext, %21 ], [ @_O_convert.spacetext, %20 ], [ %14, %17 ], [ %14, %8 ]
  %25 = load i32, ptr %12, align 8, !tbaa !33
  %26 = sext i32 %25 to i64
  %27 = select i1 %6, ptr @_L_atlindex, ptr @_L_btlindex
  %28 = getelementptr inbounds [0 x i32], ptr %27, i64 0, i64 %26
  %29 = load i32, ptr %28, align 4, !tbaa !12
  %30 = add nsw i32 %29, 1
  %31 = getelementptr inbounds %struct._K_str, ptr %12, i64 0, i32 1
  %32 = load i32, ptr %31, align 4, !tbaa !35
  %33 = add nsw i32 %32, 1
  %34 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @_O_get_text.buf, ptr noundef nonnull dereferenceable(1) @.str.10.83, ptr noundef %24, i32 noundef %30, i32 noundef %33) #24
  br label %47

35:                                               ; preds = %3
  %36 = select i1 %6, ptr @_L_atlindex, ptr @_L_btlindex
  %37 = select i1 %6, ptr @_L_aclindex, ptr @_L_bclindex
  %38 = select i1 %6, ptr @_L_al, ptr @_L_bl
  %39 = getelementptr inbounds [0 x i32], ptr %36, i64 0, i64 %7
  %40 = load i32, ptr %39, align 4, !tbaa !12
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [0 x i32], ptr %37, i64 0, i64 %41
  %43 = load i32, ptr %42, align 4, !tbaa !12
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [0 x ptr], ptr %38, i64 0, i64 %44
  %46 = load ptr, ptr %45, align 8, !tbaa !7
  br label %47

47:                                               ; preds = %35, %23
  %48 = phi ptr [ @_O_get_text.buf, %23 ], [ %46, %35 ]
  ret ptr %48
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @_O_do_lines(i32 noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca [1025 x i8], align 16
  %5 = icmp sgt i32 %0, %1
  br i1 %5, label %119, label %6

6:                                                ; preds = %3
  %7 = icmp eq i32 %2, 0
  %8 = sext i32 %0 to i64
  %9 = sext i32 %1 to i64
  %10 = add i32 %1, 1
  %11 = select i1 %7, ptr @.str.14, ptr @.str.15
  %12 = select i1 %7, ptr @_L_atlindex, ptr @_L_btlindex
  %13 = select i1 %7, ptr @_L_aclindex, ptr @_L_bclindex
  %14 = select i1 %7, ptr @_L_al, ptr @_L_bl
  br label %15

15:                                               ; preds = %114, %6
  %16 = phi i64 [ %8, %6 ], [ %116, %114 ]
  %17 = phi i32 [ -1, %6 ], [ %115, %114 ]
  %18 = getelementptr inbounds [0 x ptr], ptr @_K_bto, i64 0, i64 %16
  %19 = getelementptr inbounds [0 x ptr], ptr @_K_ato, i64 0, i64 %16
  %20 = select i1 %7, ptr %19, ptr %18
  %21 = load ptr, ptr %20, align 8, !tbaa !7
  %22 = load i32, ptr %21, align 8, !tbaa !33
  %23 = icmp eq i32 %17, %22
  br i1 %23, label %114, label %24

24:                                               ; preds = %15
  call void @llvm.lifetime.start.p0(i64 1025, ptr nonnull %4) #22
  %25 = sext i32 %22 to i64
  %26 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) %11) #25
  %27 = getelementptr inbounds [0 x i32], ptr %12, i64 0, i64 %25
  %28 = load i32, ptr %27, align 4, !tbaa !12
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [0 x i32], ptr %13, i64 0, i64 %29
  %31 = load i32, ptr %30, align 4, !tbaa !12
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [0 x ptr], ptr %14, i64 0, i64 %32
  %34 = load ptr, ptr %33, align 8, !tbaa !7
  %35 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) %34) #24
  %36 = getelementptr inbounds %struct._K_str, ptr %21, i64 0, i32 1
  %37 = load i32, ptr %36, align 4, !tbaa !35
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %49

39:                                               ; preds = %24
  %40 = zext i32 %37 to i64
  br label %41

41:                                               ; preds = %41, %39
  %42 = phi i64 [ %47, %41 ], [ 0, %39 ]
  %43 = getelementptr inbounds i8, ptr %4, i64 %42
  %44 = load i8, ptr %43, align 1, !tbaa !11
  %45 = sext i8 %44 to i32
  %46 = call i32 @putchar(i32 noundef %45) #25
  %47 = add nuw nsw i64 %42, 1
  %48 = icmp eq i64 %47, %40
  br i1 %48, label %49, label %41, !llvm.loop !95

49:                                               ; preds = %41, %24
  %50 = load i1, ptr @_O_need_init, align 4
  br i1 %50, label %52, label %51

51:                                               ; preds = %49
  call fastcc void @_O_st_init() #25
  br label %52

52:                                               ; preds = %51, %49
  br label %53

53:                                               ; preds = %59, %52
  %54 = phi i64 [ %60, %59 ], [ %16, %52 ]
  %55 = phi ptr [ %63, %59 ], [ %20, %52 ]
  %56 = load ptr, ptr %55, align 8, !tbaa !7
  %57 = load i32, ptr %56, align 8, !tbaa !33
  %58 = icmp eq i32 %22, %57
  br i1 %58, label %59, label %65

59:                                               ; preds = %53
  %60 = add nsw i64 %54, 1
  %61 = getelementptr inbounds [0 x ptr], ptr @_K_bto, i64 0, i64 %60
  %62 = getelementptr inbounds [0 x ptr], ptr @_K_ato, i64 0, i64 %60
  %63 = select i1 %7, ptr %62, ptr %61
  %64 = icmp slt i64 %54, %9
  br i1 %64, label %53, label %67, !llvm.loop !96

65:                                               ; preds = %53
  %.lcssa = phi i64 [ %54, %53 ]
  %66 = trunc i64 %.lcssa to i32
  br label %67

67:                                               ; preds = %65, %59
  %68 = phi i32 [ %66, %65 ], [ %10, %59 ]
  %69 = add nsw i32 %68, -1
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [0 x ptr], ptr @_K_bto, i64 0, i64 %70
  %72 = getelementptr inbounds [0 x ptr], ptr @_K_ato, i64 0, i64 %70
  %73 = select i1 %7, ptr %72, ptr %71
  %74 = load ptr, ptr %73, align 8, !tbaa !7
  %75 = getelementptr inbounds %struct._K_str, ptr %74, i64 0, i32 1
  %76 = load i32, ptr %75, align 4, !tbaa !35
  %77 = getelementptr inbounds %struct._K_str, ptr %74, i64 0, i32 3
  %78 = load ptr, ptr %77, align 8, !tbaa !40
  %79 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %78) #23
  %80 = trunc i64 %79 to i32
  %81 = add i32 %76, %80
  %82 = load i32, ptr %36, align 4, !tbaa !35
  %83 = icmp slt i32 %82, %81
  br i1 %83, label %84, label %95

84:                                               ; preds = %67
  %85 = sext i32 %82 to i64
  br label %86

86:                                               ; preds = %86, %84
  %87 = phi i64 [ %85, %84 ], [ %92, %86 ]
  %88 = getelementptr inbounds i8, ptr %4, i64 %87
  %89 = load i8, ptr %88, align 1, !tbaa !11
  %90 = sext i8 %89 to i32
  %91 = call i32 @putchar(i32 noundef %90) #25
  %92 = add nsw i64 %87, 1
  %93 = trunc i64 %92 to i32
  %94 = icmp eq i32 %81, %93
  br i1 %94, label %95, label %86, !llvm.loop !95

95:                                               ; preds = %86, %67
  %96 = load i1, ptr @_O_need_init, align 4
  br i1 %96, label %98, label %97

97:                                               ; preds = %95
  call fastcc void @_O_st_init() #25
  br label %98

98:                                               ; preds = %97, %95
  %99 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #23
  %100 = trunc i64 %99 to i32
  %101 = icmp slt i32 %81, %100
  br i1 %101, label %102, label %113

102:                                              ; preds = %98
  %103 = sext i32 %81 to i64
  br label %104

104:                                              ; preds = %104, %102
  %105 = phi i64 [ %103, %102 ], [ %110, %104 ]
  %106 = getelementptr inbounds i8, ptr %4, i64 %105
  %107 = load i8, ptr %106, align 1, !tbaa !11
  %108 = sext i8 %107 to i32
  %109 = call i32 @putchar(i32 noundef %108) #25
  %110 = add nsw i64 %105, 1
  %111 = trunc i64 %110 to i32
  %112 = icmp eq i32 %111, %100
  br i1 %112, label %113, label %104, !llvm.loop !95

113:                                              ; preds = %104, %98
  call void @llvm.lifetime.end.p0(i64 1025, ptr nonnull %4) #22
  br label %114

114:                                              ; preds = %113, %15
  %115 = phi i32 [ %22, %113 ], [ %17, %15 ]
  %116 = add nsw i64 %16, 1
  %117 = trunc i64 %116 to i32
  %118 = icmp eq i32 %10, %117
  br i1 %118, label %119, label %15, !llvm.loop !97

119:                                              ; preds = %114, %3
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #12

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @_O_st_init() unnamed_addr #0 {
  %1 = tail call i32 @isatty(i32 noundef 1) #24
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %11, label %3

3:                                                ; preds = %0
  %4 = tail call ptr @getenv(ptr noundef nonnull @.str.16) #24
  store ptr %4, ptr @_O_st_tmp, align 8, !tbaa !7
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %11

6:                                                ; preds = %3
  %7 = load i1, ptr @_Z_qflag, align 4
  br i1 %7, label %11, label %8

8:                                                ; preds = %6
  %9 = load ptr, ptr @stderr, align 8, !tbaa !7
  %10 = tail call i32 @fputs(ptr noundef nonnull @.str.17, ptr noundef %9) #26
  br label %11

11:                                               ; preds = %8, %6, %3, %0
  store i1 true, ptr @_O_need_init, align 4
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @isatty(i32 noundef) local_unnamed_addr #13

; Function Attrs: nofree nounwind optsize memory(read)
declare noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: noreturn nounwind optsize uwtable
define internal fastcc void @_Z_qfatal() unnamed_addr #5 {
  %1 = load i1, ptr @_Z_qflag, align 4
  br i1 %1, label %5, label %2

2:                                                ; preds = %0
  %3 = load ptr, ptr @stderr, align 8, !tbaa !7
  %4 = tail call i32 @fputs(ptr noundef nonnull @Z_err_buf, ptr noundef %3) #26
  br label %5

5:                                                ; preds = %2, %0
  tail call void @exit(i32 noundef 2) #29
  unreachable
}

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32 noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #11

; Function Attrs: nofree nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @_F_stradd(ptr noundef %0, ptr noundef readonly %1) unnamed_addr #16 {
  %3 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #23
  %4 = add i64 %3, -1
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #23
  %6 = add i64 %5, -1
  store i8 0, ptr getelementptr inbounds ([200 x i8], ptr @_F_stradd.result, i64 0, i64 199), align 1, !tbaa !11
  %7 = icmp sgt i64 %4, -1
  %8 = icmp sgt i64 %6, -1
  %9 = select i1 %7, i1 true, i1 %8
  br i1 %9, label %10, label %50

10:                                               ; preds = %2
  %11 = getelementptr inbounds i8, ptr %1, i64 %6
  %12 = getelementptr inbounds i8, ptr %0, i64 %4
  br label %13

13:                                               ; preds = %33, %10
  %14 = phi i1 [ %46, %33 ], [ %8, %10 ]
  %15 = phi i1 [ %45, %33 ], [ %7, %10 ]
  %16 = phi i32 [ %40, %33 ], [ 0, %10 ]
  %17 = phi ptr [ %44, %33 ], [ getelementptr inbounds ([200 x i8], ptr @_F_stradd.result, i64 0, i64 198), %10 ]
  %18 = phi ptr [ %34, %33 ], [ %11, %10 ]
  %19 = phi ptr [ %26, %33 ], [ %12, %10 ]
  br i1 %15, label %20, label %25

20:                                               ; preds = %13
  %21 = load i8, ptr %19, align 1, !tbaa !11
  %22 = sext i8 %21 to i32
  %23 = add nsw i32 %22, -48
  %24 = getelementptr inbounds i8, ptr %19, i64 -1
  br label %25

25:                                               ; preds = %20, %13
  %26 = phi ptr [ %24, %20 ], [ %19, %13 ]
  %27 = phi i32 [ %23, %20 ], [ 0, %13 ]
  br i1 %14, label %28, label %33

28:                                               ; preds = %25
  %29 = load i8, ptr %18, align 1, !tbaa !11
  %30 = sext i8 %29 to i32
  %31 = add nsw i32 %30, -48
  %32 = getelementptr inbounds i8, ptr %18, i64 -1
  br label %33

33:                                               ; preds = %28, %25
  %34 = phi ptr [ %32, %28 ], [ %18, %25 ]
  %35 = phi i32 [ %31, %28 ], [ 0, %25 ]
  %36 = add nsw i32 %27, %16
  %37 = add nsw i32 %36, %35
  %38 = icmp sgt i32 %37, 9
  %39 = add nsw i32 %37, 246
  %40 = zext i1 %38 to i32
  %41 = select i1 %38, i32 %39, i32 %37
  %42 = trunc i32 %41 to i8
  %43 = add i8 %42, 48
  %44 = getelementptr inbounds i8, ptr %17, i64 -1
  store i8 %43, ptr %17, align 1, !tbaa !11
  %45 = icmp uge ptr %26, %0
  %46 = icmp uge ptr %34, %1
  %47 = select i1 %45, i1 true, i1 %46
  br i1 %47, label %13, label %48, !llvm.loop !98

48:                                               ; preds = %33
  %.lcssa1 = phi i1 [ %38, %33 ]
  %.lcssa = phi ptr [ %44, %33 ]
  br i1 %.lcssa1, label %49, label %50

49:                                               ; preds = %48
  store i8 49, ptr %.lcssa, align 1, !tbaa !11
  br label %53

50:                                               ; preds = %48, %2
  %51 = phi ptr [ %.lcssa, %48 ], [ getelementptr inbounds ([200 x i8], ptr @_F_stradd.result, i64 0, i64 198), %2 ]
  %52 = getelementptr inbounds i8, ptr %51, i64 1
  br label %53

53:                                               ; preds = %50, %49
  %54 = phi ptr [ %.lcssa, %49 ], [ %52, %50 ]
  %55 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %54) #24
  ret void
}

; Function Attrs: nofree nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc i32 @F_floatcmp(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #16 {
  %3 = load i32, ptr %0, align 8, !tbaa !86
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %19

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.R_flstr, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !78
  %8 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(2) @.str.1.37) #23
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %19

10:                                               ; preds = %5
  %11 = load i32, ptr %1, align 8, !tbaa !86
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.R_flstr, ptr %1, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !78
  %16 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %15, ptr noundef nonnull dereferenceable(2) @.str.1.37) #23
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %61, label %18

18:                                               ; preds = %13, %10
  br label %61

19:                                               ; preds = %5, %2
  %20 = load i32, ptr %1, align 8, !tbaa !86
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.R_flstr, ptr %1, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !78
  %25 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %24, ptr noundef nonnull dereferenceable(2) @.str.1.37) #23
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %61, label %27

27:                                               ; preds = %22, %19
  %28 = icmp slt i32 %3, %20
  br i1 %28, label %61, label %29

29:                                               ; preds = %27
  %30 = icmp sgt i32 %3, %20
  br i1 %30, label %61, label %31

31:                                               ; preds = %29
  %32 = getelementptr inbounds %struct.R_flstr, ptr %0, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !78
  %34 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) @F_floatcmp.man1, ptr noundef nonnull dereferenceable(1) %33) #24
  %35 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) @F_floatcmp.man1) #23
  %36 = icmp sgt i64 %35, 1
  br i1 %36, label %37, label %45

37:                                               ; preds = %43, %31
  %38 = phi i64 [ %39, %43 ], [ %35, %31 ]
  %39 = add nsw i64 %38, -1
  %40 = getelementptr inbounds i8, ptr @F_floatcmp.man1, i64 %39
  %41 = load i8, ptr %40, align 1, !tbaa !11
  %42 = icmp eq i8 %41, 48
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  store i8 0, ptr %40, align 1, !tbaa !11
  %44 = icmp ugt i64 %38, 2
  br i1 %44, label %37, label %45, !llvm.loop !85

45:                                               ; preds = %43, %37, %31
  %46 = getelementptr inbounds %struct.R_flstr, ptr %1, i64 0, i32 2
  %47 = load ptr, ptr %46, align 8, !tbaa !78
  %48 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) @F_floatcmp.man2, ptr noundef nonnull dereferenceable(1) %47) #24
  %49 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) @F_floatcmp.man2) #23
  %50 = icmp sgt i64 %49, 1
  br i1 %50, label %51, label %59

51:                                               ; preds = %57, %45
  %52 = phi i64 [ %53, %57 ], [ %49, %45 ]
  %53 = add nsw i64 %52, -1
  %54 = getelementptr inbounds i8, ptr @F_floatcmp.man2, i64 %53
  %55 = load i8, ptr %54, align 1, !tbaa !11
  %56 = icmp eq i8 %55, 48
  br i1 %56, label %57, label %59

57:                                               ; preds = %51
  store i8 0, ptr %54, align 1, !tbaa !11
  %58 = icmp ugt i64 %52, 2
  br i1 %58, label %51, label %59, !llvm.loop !85

59:                                               ; preds = %57, %51, %45
  %60 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) @F_floatcmp.man1, ptr noundef nonnull dereferenceable(1) @F_floatcmp.man2) #23
  br label %61

61:                                               ; preds = %59, %29, %27, %22, %18, %13
  %62 = phi i32 [ %60, %59 ], [ -1, %18 ], [ 0, %13 ], [ 1, %22 ], [ -1, %27 ], [ 1, %29 ]
  ret i32 %62
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc ptr @F_floatmul(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = load i1, ptr @F_floatmul.needinit, align 4
  br i1 %3, label %8, label %4

4:                                                ; preds = %2
  %5 = tail call ptr (i64, ...) @_Z_myalloc(i64 noundef 16) #24
  %6 = tail call ptr (i64, ...) @_Z_myalloc(i64 noundef 200) #24
  %7 = getelementptr inbounds %struct.R_flstr, ptr %5, i64 0, i32 2
  store ptr %6, ptr %7, align 8, !tbaa !78
  store ptr %5, ptr @F_floatmul.result, align 8, !tbaa !7
  store i1 true, ptr @F_floatmul.needinit, align 4
  br label %8

8:                                                ; preds = %4, %2
  %9 = load i32, ptr %0, align 8, !tbaa !86
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.R_flstr, ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !78
  %14 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %13, ptr noundef nonnull dereferenceable(2) @.str.1.37) #23
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %24, label %16

16:                                               ; preds = %11, %8
  %17 = load i32, ptr %1, align 8, !tbaa !86
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %29

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.R_flstr, ptr %1, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !78
  %22 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %21, ptr noundef nonnull dereferenceable(2) @.str.1.37) #23
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %19, %11
  %25 = load ptr, ptr @F_floatmul.result, align 8, !tbaa !7
  %26 = getelementptr inbounds %struct.R_flstr, ptr %25, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !78
  store i16 48, ptr %27, align 1
  store i32 0, ptr %25, align 8, !tbaa !86
  %28 = getelementptr inbounds %struct.R_flstr, ptr %25, i64 0, i32 1
  store i32 0, ptr %28, align 4, !tbaa !71
  br label %136

29:                                               ; preds = %19, %16
  %30 = getelementptr inbounds %struct.R_flstr, ptr %0, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !78
  %32 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) @F_floatmul.man1, ptr noundef nonnull dereferenceable(1) %31) #24
  %33 = getelementptr inbounds %struct.R_flstr, ptr %1, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !78
  %35 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) @F_floatmul.man2, ptr noundef nonnull dereferenceable(1) %34) #24
  %36 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) @F_floatmul.man1) #23
  %37 = add i64 %36, -1
  %38 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) @F_floatmul.man2) #23
  %39 = add i64 %38, -1
  %40 = getelementptr inbounds i8, ptr @F_floatmul.man2, i64 %39
  %41 = icmp slt i64 %37, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %29
  %43 = getelementptr inbounds i8, ptr @F_floatmul.man1, i64 %37
  br label %47

44:                                               ; preds = %47, %29
  %45 = phi i32 [ 0, %29 ], [ %53, %47 ]
  %46 = icmp slt i64 %39, 0
  br i1 %46, label %65, label %56

47:                                               ; preds = %47, %42
  %48 = phi ptr [ %54, %47 ], [ %43, %42 ]
  %49 = phi i32 [ %53, %47 ], [ 0, %42 ]
  %50 = load i8, ptr %48, align 1, !tbaa !11
  %51 = sext i8 %50 to i32
  %52 = add i32 %49, -48
  %53 = add i32 %52, %51
  %54 = getelementptr inbounds i8, ptr %48, i64 -1
  %55 = icmp ult ptr %54, @F_floatmul.man1
  br i1 %55, label %44, label %47, !llvm.loop !99

56:                                               ; preds = %56, %44
  %57 = phi ptr [ %63, %56 ], [ %40, %44 ]
  %58 = phi i32 [ %62, %56 ], [ 0, %44 ]
  %59 = load i8, ptr %57, align 1, !tbaa !11
  %60 = sext i8 %59 to i32
  %61 = add i32 %58, -48
  %62 = add i32 %61, %60
  %63 = getelementptr inbounds i8, ptr %57, i64 -1
  %64 = icmp ult ptr %63, @F_floatmul.man2
  br i1 %64, label %65, label %56, !llvm.loop !100

65:                                               ; preds = %56, %44
  %66 = phi i32 [ 0, %44 ], [ %62, %56 ]
  %67 = icmp sgt i32 %45, %66
  %68 = select i1 %67, ptr @F_floatmul.man1, ptr @F_floatmul.man2
  %69 = select i1 %67, ptr @F_floatmul.man2, ptr @F_floatmul.man1
  %70 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %68) #23
  %71 = icmp sgt i64 %70, 1
  br i1 %71, label %72, label %80

72:                                               ; preds = %78, %65
  %73 = phi i64 [ %74, %78 ], [ %70, %65 ]
  %74 = add nsw i64 %73, -1
  %75 = getelementptr inbounds i8, ptr %68, i64 %74
  %76 = load i8, ptr %75, align 1, !tbaa !11
  %77 = icmp eq i8 %76, 48
  br i1 %77, label %78, label %80

78:                                               ; preds = %72
  store i8 0, ptr %75, align 1, !tbaa !11
  %79 = icmp ugt i64 %73, 2
  br i1 %79, label %72, label %80, !llvm.loop !85

80:                                               ; preds = %78, %72, %65
  %81 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %69) #23
  %82 = icmp sgt i64 %81, 1
  br i1 %82, label %83, label %91

83:                                               ; preds = %89, %80
  %84 = phi i64 [ %85, %89 ], [ %81, %80 ]
  %85 = add nsw i64 %84, -1
  %86 = getelementptr inbounds i8, ptr %69, i64 %85
  %87 = load i8, ptr %86, align 1, !tbaa !11
  %88 = icmp eq i8 %87, 48
  br i1 %88, label %89, label %91

89:                                               ; preds = %83
  store i8 0, ptr %86, align 1, !tbaa !11
  %90 = icmp ugt i64 %84, 2
  br i1 %90, label %83, label %91, !llvm.loop !85

91:                                               ; preds = %89, %83, %80
  %92 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %68) #23
  %93 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %69) #23
  %94 = add i64 %93, %92
  %95 = trunc i64 %94 to i32
  %96 = add i64 %93, -1
  store i16 48, ptr @F_floatmul.prod, align 16
  %97 = icmp slt i64 %96, 0
  br i1 %97, label %116, label %98

98:                                               ; preds = %91
  %99 = getelementptr inbounds i8, ptr %69, i64 %96
  br label %100

100:                                              ; preds = %104, %98
  %101 = phi ptr [ %107, %104 ], [ %99, %98 ]
  %102 = load i8, ptr %101, align 1, !tbaa !11
  %103 = icmp sgt i8 %102, 48
  br i1 %103, label %109, label %104

104:                                              ; preds = %109, %100
  %105 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %68)
  %106 = getelementptr inbounds i8, ptr %68, i64 %105
  store i16 48, ptr %106, align 1
  %107 = getelementptr inbounds i8, ptr %101, i64 -1
  %108 = icmp ult ptr %107, %69
  br i1 %108, label %116, label %100, !llvm.loop !101

109:                                              ; preds = %109, %100
  %110 = phi i32 [ %111, %109 ], [ 0, %100 ]
  tail call fastcc void @_F_stradd(ptr noundef nonnull @F_floatmul.prod, ptr noundef nonnull %68) #25
  %111 = add nuw nsw i32 %110, 1
  %112 = load i8, ptr %101, align 1, !tbaa !11
  %113 = sext i8 %112 to i32
  %114 = add nsw i32 %113, -48
  %115 = icmp slt i32 %111, %114
  br i1 %115, label %109, label %104, !llvm.loop !102

116:                                              ; preds = %104, %91
  %117 = load ptr, ptr @F_floatmul.result, align 8, !tbaa !7
  %118 = getelementptr inbounds %struct.R_flstr, ptr %117, i64 0, i32 2
  %119 = load ptr, ptr %118, align 8, !tbaa !78
  %120 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %119, ptr noundef nonnull dereferenceable(1) @F_floatmul.prod) #24
  %121 = load i32, ptr %0, align 8, !tbaa !86
  %122 = load i32, ptr %1, align 8, !tbaa !86
  %123 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) @F_floatmul.prod) #23
  %124 = trunc i64 %123 to i32
  %125 = sub i32 %121, %95
  %126 = add i32 %125, %122
  %127 = add i32 %126, %124
  store i32 %127, ptr %117, align 8, !tbaa !86
  %128 = getelementptr inbounds %struct.R_flstr, ptr %0, i64 0, i32 1
  %129 = load i32, ptr %128, align 4, !tbaa !71
  %130 = getelementptr inbounds %struct.R_flstr, ptr %1, i64 0, i32 1
  %131 = load i32, ptr %130, align 4, !tbaa !71
  %132 = icmp eq i32 %129, %131
  %133 = getelementptr inbounds %struct.R_flstr, ptr %117, i64 0, i32 1
  br i1 %132, label %134, label %135

134:                                              ; preds = %116
  store i32 0, ptr %133, align 4, !tbaa !71
  br label %136

135:                                              ; preds = %116
  store i32 1, ptr %133, align 4, !tbaa !71
  br label %136

136:                                              ; preds = %135, %134, %24
  %137 = phi ptr [ %117, %134 ], [ %117, %135 ], [ %25, %24 ]
  ret ptr %137
}

; Function Attrs: nofree nounwind optsize memory(read) uwtable
define internal fastcc i32 @_X_strcmp(ptr noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #17 {
  %4 = and i32 %2, 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %49, label %6

6:                                                ; preds = %3
  %7 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %7)
  %8 = load i8, ptr %1, align 1, !tbaa !11
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %44, label %10

10:                                               ; preds = %6
  %11 = tail call ptr @__ctype_b_loc() #27
  %12 = load ptr, ptr %11, align 8, !tbaa !7
  br label %13

13:                                               ; preds = %39, %10
  %14 = phi i8 [ %42, %39 ], [ %8, %10 ]
  %15 = phi ptr [ %41, %39 ], [ %1, %10 ]
  %16 = phi ptr [ %40, %39 ], [ %0, %10 ]
  %17 = load i8, ptr %16, align 1, !tbaa !11
  %18 = sext i8 %17 to i64
  %19 = getelementptr inbounds i16, ptr %12, i64 %18
  %20 = load i16, ptr %19, align 2, !tbaa !27
  %21 = and i16 %20, 1024
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %37, label %23

23:                                               ; preds = %13
  %24 = sext i8 %14 to i64
  %25 = getelementptr inbounds i16, ptr %12, i64 %24
  %26 = load i16, ptr %25, align 2, !tbaa !27
  %27 = and i16 %26, 1024
  %28 = icmp eq i16 %27, 0
  br i1 %28, label %37, label %29

29:                                               ; preds = %23
  %30 = tail call ptr @__ctype_tolower_loc() #27
  %31 = load ptr, ptr %30, align 8, !tbaa !7
  %32 = getelementptr inbounds i32, ptr %31, i64 %18
  %33 = load i32, ptr %32, align 4, !tbaa !12
  %34 = getelementptr inbounds i32, ptr %31, i64 %24
  %35 = load i32, ptr %34, align 4, !tbaa !12
  %36 = icmp eq i32 %33, %35
  br i1 %36, label %39, label %51

37:                                               ; preds = %23, %13
  %38 = icmp eq i8 %17, %14
  br i1 %38, label %39, label %51

39:                                               ; preds = %37, %29
  %40 = getelementptr inbounds i8, ptr %16, i64 1
  %41 = getelementptr inbounds i8, ptr %15, i64 1
  %42 = load i8, ptr %41, align 1, !tbaa !11
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %44, label %13

44:                                               ; preds = %39, %6
  %45 = phi ptr [ %0, %6 ], [ %40, %39 ]
  %46 = load i8, ptr %45, align 1, !tbaa !11
  %47 = icmp ne i8 %46, 0
  %48 = zext i1 %47 to i32
  br label %51

49:                                               ; preds = %3
  %50 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %1) #23
  br label %51

51:                                               ; preds = %49, %44, %37, %29
  %52 = phi i32 [ %48, %44 ], [ %50, %49 ], [ 1, %29 ], [ 1, %37 ]
  ret i32 %52
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.assume(i1 noundef) #18

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare ptr @__ctype_tolower_loc() local_unnamed_addr #8

; Function Attrs: nofree nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @S_nextword(ptr nocapture noundef %0) unnamed_addr #19 {
  %2 = load ptr, ptr %0, align 8, !tbaa !7
  %3 = load i8, ptr %2, align 1, !tbaa !11
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %20, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @__ctype_b_loc() #27
  br label %7

7:                                                ; preds = %16, %5
  %8 = phi i8 [ %3, %5 ], [ %18, %16 ]
  %9 = phi ptr [ %2, %5 ], [ %17, %16 ]
  %10 = load ptr, ptr %6, align 8, !tbaa !7
  %11 = sext i8 %8 to i64
  %12 = getelementptr inbounds i16, ptr %10, i64 %11
  %13 = load i16, ptr %12, align 2, !tbaa !27
  %14 = and i16 %13, 24576
  %15 = icmp eq i16 %14, 16384
  br i1 %15, label %16, label %20

16:                                               ; preds = %7
  %17 = getelementptr inbounds i8, ptr %9, i64 1
  store ptr %17, ptr %0, align 8, !tbaa !7
  %18 = load i8, ptr %17, align 1, !tbaa !11
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %7, !llvm.loop !103

20:                                               ; preds = %16, %7, %1
  tail call fastcc void @S_skipspace(ptr noundef nonnull %0) #25
  ret void
}

; Function Attrs: nofree nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @S_skipspace(ptr nocapture noundef %0) unnamed_addr #19 {
  %2 = load ptr, ptr %0, align 8, !tbaa !7
  %3 = load i8, ptr %2, align 1, !tbaa !11
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %20, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @__ctype_b_loc() #27
  br label %7

7:                                                ; preds = %16, %5
  %8 = phi i8 [ %3, %5 ], [ %18, %16 ]
  %9 = phi ptr [ %2, %5 ], [ %17, %16 ]
  %10 = load ptr, ptr %6, align 8, !tbaa !7
  %11 = sext i8 %8 to i64
  %12 = getelementptr inbounds i16, ptr %10, i64 %11
  %13 = load i16, ptr %12, align 2, !tbaa !27
  %14 = and i16 %13, 8192
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %7
  %17 = getelementptr inbounds i8, ptr %9, i64 1
  store ptr %17, ptr %0, align 8, !tbaa !7
  %18 = load i8, ptr %17, align 1, !tbaa !11
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %7, !llvm.loop !104

20:                                               ; preds = %16, %7, %1
  ret void
}

; Function Attrs: nofree nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @S_wordcpy(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #20 {
  %3 = load i8, ptr %1, align 1, !tbaa !11
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %22, label %5

5:                                                ; preds = %2
  %6 = tail call ptr @__ctype_b_loc() #27
  br label %7

7:                                                ; preds = %17, %5
  %8 = phi i8 [ %3, %5 ], [ %20, %17 ]
  %9 = phi ptr [ %1, %5 ], [ %18, %17 ]
  %10 = phi ptr [ %0, %5 ], [ %19, %17 ]
  %11 = load ptr, ptr %6, align 8, !tbaa !7
  %12 = sext i8 %8 to i64
  %13 = getelementptr inbounds i16, ptr %11, i64 %12
  %14 = load i16, ptr %13, align 2, !tbaa !27
  %15 = and i16 %14, 24576
  %16 = icmp eq i16 %15, 16384
  br i1 %16, label %17, label %22

17:                                               ; preds = %7
  %18 = getelementptr inbounds i8, ptr %9, i64 1
  %19 = getelementptr inbounds i8, ptr %10, i64 1
  store i8 %8, ptr %10, align 1, !tbaa !11
  %20 = load i8, ptr %18, align 1, !tbaa !11
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %7, !llvm.loop !105

22:                                               ; preds = %17, %7, %2
  %23 = phi ptr [ %0, %2 ], [ %19, %17 ], [ %10, %7 ]
  store i8 0, ptr %23, align 1, !tbaa !11
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @W_addcom(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !7
  %4 = load i8, ptr %0, align 1, !tbaa !11
  %5 = load i8, ptr @_W_bolchar, align 1, !tbaa !11
  %6 = icmp eq i8 %4, %5
  br i1 %6, label %7, label %38

7:                                                ; preds = %2
  %8 = load i32, ptr @_W_nextbol, align 4, !tbaa !12
  %9 = icmp sgt i32 %8, 19
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  tail call fastcc void @Z_fatal(ptr noundef nonnull @.str.13) #24
  unreachable

11:                                               ; preds = %7
  %12 = getelementptr inbounds i8, ptr %0, i64 1
  store ptr %12, ptr %3, align 8, !tbaa !7
  %13 = sext i32 %8 to i64
  %14 = getelementptr inbounds [20 x %struct._W_bolstruct], ptr @_W_bols, i64 0, i64 %13
  tail call fastcc void @S_wordcpy(ptr noundef nonnull %14, ptr noundef nonnull %12) #24
  call fastcc void @S_nextword(ptr noundef nonnull %3) #24
  %15 = load ptr, ptr %3, align 8, !tbaa !7
  %16 = load i8, ptr %15, align 1, !tbaa !11
  %17 = load i8, ptr @_W_eolchar, align 1, !tbaa !11
  %18 = icmp eq i8 %16, %17
  %19 = load i32, ptr @_W_nextbol, align 4, !tbaa !12
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [20 x %struct._W_bolstruct], ptr @_W_bols, i64 0, i64 %20, i32 1
  br i1 %18, label %22, label %23

22:                                               ; preds = %11
  store i16 10, ptr %21, align 16
  br label %26

23:                                               ; preds = %11
  tail call fastcc void @S_wordcpy(ptr noundef nonnull %21, ptr noundef nonnull %15) #24
  %24 = load i32, ptr @_W_nextbol, align 4, !tbaa !12
  %25 = sext i32 %24 to i64
  br label %26

26:                                               ; preds = %23, %22
  %27 = phi i64 [ %25, %23 ], [ %20, %22 ]
  call fastcc void @S_nextword(ptr noundef nonnull %3) #24
  %28 = getelementptr inbounds [20 x %struct._W_bolstruct], ptr @_W_bols, i64 0, i64 %27, i32 2
  %29 = load ptr, ptr %3, align 8, !tbaa !7
  tail call fastcc void @S_wordcpy(ptr noundef nonnull %28, ptr noundef %29) #24
  %30 = icmp eq i32 %1, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %26
  %32 = load i1, ptr @_Z_qflag, align 4
  br i1 %32, label %36, label %33

33:                                               ; preds = %31
  %34 = load ptr, ptr @stderr, align 8, !tbaa !7
  %35 = tail call i32 @fputs(ptr noundef nonnull @.str.2.16, ptr noundef %34) #26
  br label %36

36:                                               ; preds = %33, %31, %26
  %37 = load i32, ptr @_W_nextbol, align 4, !tbaa !12
  br label %62

38:                                               ; preds = %2
  %39 = load i32, ptr @_W_nextcom, align 4, !tbaa !12
  %40 = icmp sgt i32 %39, 19
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  tail call fastcc void @Z_fatal(ptr noundef nonnull @.str.3.17) #24
  unreachable

42:                                               ; preds = %38
  %43 = sext i32 %39 to i64
  %44 = getelementptr inbounds [20 x %struct._W_comstruct], ptr @_W_coms, i64 0, i64 %43
  tail call fastcc void @S_wordcpy(ptr noundef nonnull %44, ptr noundef nonnull %0) #24
  call fastcc void @S_nextword(ptr noundef nonnull %3) #24
  %45 = load ptr, ptr %3, align 8, !tbaa !7
  %46 = load i8, ptr %45, align 1, !tbaa !11
  %47 = load i8, ptr @_W_eolchar, align 1, !tbaa !11
  %48 = icmp eq i8 %46, %47
  %49 = load i32, ptr @_W_nextbol, align 4, !tbaa !12
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [20 x %struct._W_comstruct], ptr @_W_coms, i64 0, i64 %50, i32 1
  br i1 %48, label %52, label %53

52:                                               ; preds = %42
  store i16 10, ptr %51, align 4
  br label %54

53:                                               ; preds = %42
  tail call fastcc void @S_wordcpy(ptr noundef nonnull %51, ptr noundef nonnull %45) #24
  br label %54

54:                                               ; preds = %53, %52
  call fastcc void @S_nextword(ptr noundef nonnull %3) #24
  %55 = load i32, ptr @_W_nextcom, align 4, !tbaa !12
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [20 x %struct._W_comstruct], ptr @_W_coms, i64 0, i64 %56, i32 2
  %58 = load ptr, ptr %3, align 8, !tbaa !7
  tail call fastcc void @S_wordcpy(ptr noundef nonnull %57, ptr noundef %58) #24
  %59 = load i32, ptr @_W_nextcom, align 4, !tbaa !12
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [20 x %struct._W_comstruct], ptr @_W_coms, i64 0, i64 %60, i32 3
  store i32 %1, ptr %61, align 4, !tbaa !30
  br label %62

62:                                               ; preds = %54, %36
  %63 = phi i32 [ %59, %54 ], [ %37, %36 ]
  %64 = phi ptr [ @_W_nextcom, %54 ], [ @_W_nextbol, %36 ]
  %65 = add nsw i32 %63, 1
  store i32 %65, ptr %64, align 4, !tbaa !12
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @P_addalpha(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = alloca [1024 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %2) #22
  call fastcc void @S_wordcpy(ptr noundef nonnull %2, ptr noundef %0) #24
  %3 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) @_P_alpha) #23
  %4 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #23
  %5 = add i64 %4, %3
  %6 = icmp ugt i64 %5, 255
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  tail call fastcc void @Z_fatal(ptr noundef nonnull @.str.86) #24
  unreachable

8:                                                ; preds = %1
  %9 = call ptr @strcat(ptr noundef nonnull dereferenceable(1) @_P_alpha, ptr noundef nonnull dereferenceable(1) %2) #24
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %2) #22
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #21

attributes #0 = { nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind optsize willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nosync nounwind optsize willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nofree nounwind }
attributes #13 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree nounwind optsize memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { noreturn nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree nounwind optsize memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #19 = { nofree nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nofree nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nounwind }
attributes #23 = { nounwind optsize willreturn memory(read) }
attributes #24 = { nounwind optsize }
attributes #25 = { optsize }
attributes #26 = { cold optsize }
attributes #27 = { nounwind optsize willreturn memory(none) }
attributes #28 = { nounwind optsize allocsize(0,1) }
attributes #29 = { noreturn nounwind optsize }

!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
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
!11 = !{!9, !9, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"int", !9, i64 0}
!14 = !{!15, !8, i64 16}
!15 = !{!"_T_tstr", !13, i64 0, !8, i64 8, !8, i64 16}
!16 = distinct !{!16, !17}
!17 = !{!"llvm.loop.mustprogress"}
!18 = !{!15, !13, i64 0}
!19 = distinct !{!19, !17}
!20 = distinct !{!20, !17}
!21 = distinct !{!21, !17}
!22 = distinct !{!22, !17}
!23 = distinct !{!23, !17}
!24 = !{i32 0, i32 2}
!25 = distinct !{!25, !17}
!26 = distinct !{!26, !17}
!27 = !{!28, !28, i64 0}
!28 = !{!"short", !9, i64 0}
!29 = distinct !{!29, !17}
!30 = !{!31, !13, i64 48}
!31 = !{!"", !9, i64 0, !9, i64 16, !9, i64 32, !13, i64 48}
!32 = distinct !{!32, !17}
!33 = !{!34, !13, i64 0}
!34 = !{!"", !13, i64 0, !13, i64 4, !13, i64 8, !8, i64 16, !8, i64 24, !8, i64 32}
!35 = !{!34, !13, i64 4}
!36 = distinct !{!36, !17}
!37 = distinct !{!37, !17}
!38 = !{!34, !13, i64 8}
!39 = distinct !{!39, !17}
!40 = !{!34, !8, i64 16}
!41 = distinct !{!41, !17}
!42 = distinct !{!42, !17}
!43 = distinct !{!43, !17}
!44 = !{!34, !8, i64 24}
!45 = !{!34, !8, i64 32}
!46 = distinct !{!46, !17}
!47 = distinct !{!47, !17}
!48 = distinct !{!48, !17}
!49 = distinct !{!49, !17}
!50 = distinct !{!50, !17}
!51 = distinct !{!51, !17}
!52 = !{!53, !8, i64 0}
!53 = !{!"edt", !8, i64 0, !13, i64 8, !13, i64 12, !13, i64 16}
!54 = !{!53, !13, i64 8}
!55 = !{!53, !13, i64 12}
!56 = !{!53, !13, i64 16}
!57 = distinct !{!57, !17}
!58 = distinct !{!58, !17}
!59 = distinct !{!59, !17}
!60 = distinct !{!60, !17}
!61 = distinct !{!61, !17}
!62 = distinct !{!62, !17}
!63 = distinct !{!63, !17}
!64 = distinct !{!64, !17}
!65 = distinct !{!65, !17}
!66 = distinct !{!66, !17}
!67 = distinct !{!67, !17}
!68 = distinct !{!68, !17}
!69 = distinct !{!69, !17}
!70 = !{!15, !8, i64 8}
!71 = !{!72, !13, i64 4}
!72 = !{!"R_flstr", !13, i64 0, !13, i64 4, !8, i64 8}
!73 = distinct !{!73, !17}
!74 = distinct !{!74, !17}
!75 = distinct !{!75, !17}
!76 = distinct !{!76, !17}
!77 = distinct !{!77, !17}
!78 = !{!72, !8, i64 8}
!79 = distinct !{!79, !17}
!80 = distinct !{!80, !17}
!81 = distinct !{!81, !17}
!82 = distinct !{!82, !17}
!83 = distinct !{!83, !17}
!84 = distinct !{!84, !17}
!85 = distinct !{!85, !17}
!86 = !{!72, !13, i64 0}
!87 = distinct !{!87, !17}
!88 = distinct !{!88, !17}
!89 = distinct !{!89, !17}
!90 = distinct !{!90, !17}
!91 = distinct !{!91, !17}
!92 = distinct !{!92, !17}
!93 = distinct !{!93, !17}
!94 = distinct !{!94, !17}
!95 = distinct !{!95, !17}
!96 = distinct !{!96, !17}
!97 = distinct !{!97, !17}
!98 = distinct !{!98, !17}
!99 = distinct !{!99, !17}
!100 = distinct !{!100, !17}
!101 = distinct !{!101, !17}
!102 = distinct !{!102, !17}
!103 = distinct !{!103, !17}
!104 = distinct !{!104, !17}
!105 = distinct !{!105, !17}
