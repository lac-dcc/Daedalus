; ModuleID = '/src/llvm-test-suite/build/MultiSource/Applications/spiff/spiff.e.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._W_bolstruct = type { [16 x i8], [16 x i8], [16 x i8] }
%struct._W_comstruct = type { [16 x i8], [16 x i8], [16 x i8], i32 }
%struct._K_str = type { i32, i32, i32, ptr, ptr, ptr }
%struct._T_tstr = type { i32, ptr, ptr }
%struct.R_flstr = type { i32, i32, ptr }
%struct.edt = type { ptr, i32, i32, i32 }

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
@_W_bolchar = internal global i8 94, align 1
@_W_eolchar = internal global i8 36, align 1
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
@.str.2.26 = private unnamed_addr constant [2 x i8] c"0\00", align 1
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
@.str.47 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1.48 = private unnamed_addr constant [22 x i8] c"Cannot open file %s.\0A\00", align 1
@.str.2.49 = private unnamed_addr constant [48 x i8] c"fatal error -- got 0 length line %d in file %s\0A\00", align 1
@.str.3.50 = private unnamed_addr constant [65 x i8] c"got fatally long line %d in file %s length is %d, must be a bug\0A\00", align 1
@.str.4.51 = private unnamed_addr constant [64 x i8] c"line %d too long in file %s, newline added after %d characters\0A\00", align 1
@.str.5.52 = private unnamed_addr constant [63 x i8] c"didn't find a newline at end of line %d in file %s, added one\0A\00", align 1
@.str.6.53 = private unnamed_addr constant [63 x i8] c"warning -- ran out of space reading %s, truncated to %d lines\0A\00", align 1
@.str.54 = private unnamed_addr constant [22 x i8] c"found %d differences\0A\00", align 1
@.str.1.55 = private unnamed_addr constant [27 x i8] c"fell off end of do_miller\0A\00", align 1
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
@_P_start = internal unnamed_addr global i32 0, align 4
@_P_lcount = internal unnamed_addr global i32 0, align 4
@_P_flags = internal unnamed_addr global i32 0, align 4
@_P_dummyline = internal global [2 x i8] zeroinitializer, align 1
@_P_nextchr = internal unnamed_addr global ptr null, align 8
@_P_has_content = internal unnamed_addr global i1 false, align 4
@_P_next_tol = internal unnamed_addr global i32 0, align 4
@_L_bc = internal global [10000 x i32] zeroinitializer, align 16
@_L_btlm = internal global i32 0, align 4
@_L_atlm = internal global i32 0, align 4
@_L_ac = internal global [10000 x i32] zeroinitializer, align 16
@_P_realline = internal unnamed_addr global i32 0, align 4
@.str.1.89 = private unnamed_addr constant [36 x i8] c"parser got confused at end of file\0A\00", align 1
@_L_bclm = internal global i32 0, align 4
@_L_aclm = internal global i32 0, align 4
@_P_firstchr = internal unnamed_addr global ptr null, align 8
@_L_btlindex = internal global [10000 x i32] zeroinitializer, align 16
@_L_atlindex = internal global [10000 x i32] zeroinitializer, align 16
@_L_bi = internal global [10000 x i32] zeroinitializer, align 16
@_L_ai = internal global [10000 x i32] zeroinitializer, align 16
@_P_stringsize = internal unnamed_addr global i32 0, align 4
@_L_bl = internal global [10000 x ptr] zeroinitializer, align 16
@_L_bclindex = internal global [10000 x i32] zeroinitializer, align 16
@_L_al = internal global [10000 x ptr] zeroinitializer, align 16
@_L_aclindex = internal global [10000 x i32] zeroinitializer, align 16
@.str.2.87 = private unnamed_addr constant [70 x i8] c"warning -- to many tokens in file only first %d tokens will be used.\0A\00", align 1
@.str.3.88 = private unnamed_addr constant [32 x i8] c"scanned %d words from file #%d\0A\00", align 1
@_L_brlm = internal global i32 0, align 4
@_L_arlm = internal global i32 0, align 4
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
@_K_bto = internal global [50000 x ptr] zeroinitializer, align 16
@_K_ato = internal global [50000 x ptr] zeroinitializer, align 16
@_K_atm = internal global i32 0, align 4
@_K_btm = internal global i32 0, align 4
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
define internal void @C_addcmd(ptr noundef %0) #0 {
  %2 = load i32, ptr @_C_nextcmd, align 4, !tbaa !7
  %3 = add nsw i32 %2, 1
  store i32 %3, ptr @_C_nextcmd, align 4, !tbaa !7
  %4 = sext i32 %2 to i64
  %5 = getelementptr inbounds [100 x ptr], ptr @_C_cmds, i64 0, i64 %4
  tail call void (ptr, ptr, ...) @S_savestr(ptr noundef nonnull %5, ptr noundef %0) #31
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @C_docmds() #0 {
  %1 = load i32, ptr @_C_nextcmd, align 4, !tbaa !7
  %2 = icmp sgt i32 %1, 0
  br i1 %2, label %3, label %11

3:                                                ; preds = %3, %0
  %4 = phi i64 [ %7, %3 ], [ 0, %0 ]
  %5 = getelementptr inbounds [100 x ptr], ptr @_C_cmds, i64 0, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !11
  tail call fastcc void @_C_do_a_cmd(ptr noundef %6) #32
  %7 = add nuw nsw i64 %4, 1
  %8 = load i32, ptr @_C_nextcmd, align 4, !tbaa !7
  %9 = sext i32 %8 to i64
  %10 = icmp slt i64 %7, %9
  br i1 %10, label %3, label %11, !llvm.loop !13

11:                                               ; preds = %3, %0
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @_C_do_a_cmd(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8, !tbaa !11
  call void (ptr, ...) @S_skipspace(ptr noundef nonnull %2) #31
  %3 = load ptr, ptr %2, align 8, !tbaa !11
  %4 = call i32 (ptr, ptr, ...) @S_wordcmp(ptr noundef %3, ptr noundef nonnull @.str) #31
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %14

6:                                                ; preds = %1
  call void (ptr, ...) @S_nextword(ptr noundef nonnull %2) #31
  %7 = load ptr, ptr %2, align 8, !tbaa !11
  %8 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %7) #33
  %9 = icmp ugt i64 %8, 19
  br i1 %9, label %10, label %12

10:                                               ; preds = %6
  call void (ptr, ...) @Z_fatal(ptr noundef nonnull @.str.1) #31
  %11 = load ptr, ptr %2, align 8, !tbaa !11
  br label %12

12:                                               ; preds = %10, %6
  %13 = phi ptr [ %11, %10 ], [ %7, %6 ]
  call void (ptr, ptr, ...) @S_wordcpy(ptr noundef nonnull @_C_cmdword, ptr noundef %13) #31
  br label %99

14:                                               ; preds = %1
  %15 = load ptr, ptr %2, align 8, !tbaa !11
  %16 = call i32 (ptr, ptr, ...) @S_wordcmp(ptr noundef %15, ptr noundef nonnull @.str.2) #31
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  call void (ptr, ...) @S_nextword(ptr noundef nonnull %2) #31
  %19 = load ptr, ptr %2, align 8, !tbaa !11
  call void (ptr, ...) @T_tolline(ptr noundef %19) #31
  br label %99

20:                                               ; preds = %14
  %21 = load ptr, ptr %2, align 8, !tbaa !11
  %22 = call i32 (ptr, ptr, ...) @S_wordcmp(ptr noundef %21, ptr noundef nonnull @.str.3) #31
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %20
  call void (ptr, ...) @S_nextword(ptr noundef nonnull %2) #31
  %25 = load ptr, ptr %2, align 8, !tbaa !11
  %26 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %25) #33
  %27 = icmp ugt i64 %26, 19
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  call void (ptr, ...) @Z_fatal(ptr noundef nonnull @.str.1) #31
  %29 = load ptr, ptr %2, align 8, !tbaa !11
  br label %30

30:                                               ; preds = %28, %24
  %31 = phi ptr [ %29, %28 ], [ %25, %24 ]
  call void (ptr, i32, ...) @W_addcom(ptr noundef %31, i32 noundef 0) #31
  br label %99

32:                                               ; preds = %20
  %33 = load ptr, ptr %2, align 8, !tbaa !11
  %34 = call i32 (ptr, ptr, ...) @S_wordcmp(ptr noundef %33, ptr noundef nonnull @.str.4) #31
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %32
  call void (ptr, ...) @S_nextword(ptr noundef nonnull %2) #31
  %37 = load ptr, ptr %2, align 8, !tbaa !11
  %38 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %37) #33
  %39 = icmp ugt i64 %38, 19
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  call void (ptr, ...) @Z_fatal(ptr noundef nonnull @.str.1) #31
  %41 = load ptr, ptr %2, align 8, !tbaa !11
  br label %42

42:                                               ; preds = %40, %36
  %43 = phi ptr [ %41, %40 ], [ %37, %36 ]
  call void (ptr, i32, ...) @W_addcom(ptr noundef %43, i32 noundef 1) #31
  br label %99

44:                                               ; preds = %32
  %45 = load ptr, ptr %2, align 8, !tbaa !11
  %46 = call i32 (ptr, ptr, ...) @S_wordcmp(ptr noundef %45, ptr noundef nonnull @.str.5) #31
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %44
  call void (ptr, ...) @S_nextword(ptr noundef nonnull %2) #31
  %49 = load ptr, ptr %2, align 8, !tbaa !11
  %50 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %49) #33
  %51 = icmp ugt i64 %50, 19
  br i1 %51, label %52, label %54

52:                                               ; preds = %48
  call void (ptr, ...) @Z_fatal(ptr noundef nonnull @.str.1) #31
  %53 = load ptr, ptr %2, align 8, !tbaa !11
  br label %54

54:                                               ; preds = %52, %48
  %55 = phi ptr [ %53, %52 ], [ %49, %48 ]
  call void (ptr, ...) @W_addlit(ptr noundef %55) #31
  br label %99

56:                                               ; preds = %44
  %57 = load ptr, ptr %2, align 8, !tbaa !11
  %58 = call i32 (ptr, ptr, ...) @S_wordcmp(ptr noundef %57, ptr noundef nonnull @.str.6) #31
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %56
  call void (...) @W_clearcoms() #31
  br label %99

61:                                               ; preds = %56
  %62 = load ptr, ptr %2, align 8, !tbaa !11
  %63 = call i32 (ptr, ptr, ...) @S_wordcmp(ptr noundef %62, ptr noundef nonnull @.str.7) #31
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %61
  call void (...) @W_clearlits() #31
  br label %99

66:                                               ; preds = %61
  %67 = load ptr, ptr %2, align 8, !tbaa !11
  %68 = call i32 (ptr, ptr, ...) @S_wordcmp(ptr noundef %67, ptr noundef nonnull @.str.8) #31
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %66
  call void (ptr, ...) @S_nextword(ptr noundef nonnull %2) #31
  %71 = load ptr, ptr %2, align 8, !tbaa !11
  %72 = load i8, ptr %71, align 1, !tbaa !15
  store i8 %72, ptr @_W_bolchar, align 1, !tbaa !15
  br label %99

73:                                               ; preds = %66
  %74 = load ptr, ptr %2, align 8, !tbaa !11
  %75 = call i32 (ptr, ptr, ...) @S_wordcmp(ptr noundef %74, ptr noundef nonnull @.str.9) #31
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %73
  call void (ptr, ...) @S_nextword(ptr noundef nonnull %2) #31
  %78 = load ptr, ptr %2, align 8, !tbaa !11
  %79 = load i8, ptr %78, align 1, !tbaa !15
  store i8 %79, ptr @_W_eolchar, align 1, !tbaa !15
  br label %99

80:                                               ; preds = %73
  %81 = load ptr, ptr %2, align 8, !tbaa !11
  %82 = call i32 (ptr, ptr, ...) @S_wordcmp(ptr noundef %81, ptr noundef nonnull @.str.10) #31
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %80
  call void (ptr, ...) @S_nextword(ptr noundef nonnull %2) #31
  %85 = load ptr, ptr %2, align 8, !tbaa !11
  call void (ptr, ...) @P_addalpha(ptr noundef %85) #31
  br label %99

86:                                               ; preds = %80
  %87 = load ptr, ptr %2, align 8, !tbaa !11
  %88 = load i8, ptr %87, align 1
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %99, label %90

90:                                               ; preds = %86
  %91 = call i32 (ptr, ptr, ...) @S_wordcmp(ptr noundef nonnull %87, ptr noundef nonnull @.str.11) #31
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %99, label %93

93:                                               ; preds = %90
  %94 = load ptr, ptr %2, align 8, !tbaa !11
  %95 = load i8, ptr %94, align 1, !tbaa !15
  %96 = icmp eq i8 %95, 35
  br i1 %96, label %99, label %97

97:                                               ; preds = %93
  %98 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @Z_err_buf, ptr noundef nonnull dereferenceable(1) @.str.12, ptr noundef %0) #31
  call void (ptr, ...) @Z_fatal(ptr noundef nonnull @Z_err_buf) #31
  br label %99

99:                                               ; preds = %97, %93, %90, %86, %84, %77, %70, %65, %60, %54, %42, %30, %18, %12
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind optsize
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define internal void @C_clear_cmd() #3 {
  store i8 0, ptr @_C_cmdword, align 16, !tbaa !15
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @C_is_cmd(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #34
  %3 = load i8, ptr @_C_cmdword, align 16, !tbaa !15
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = tail call i32 (ptr, ptr, ...) @S_wordcmp(ptr noundef %0, ptr noundef nonnull @_C_cmdword) #31
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %5
  store ptr %0, ptr %2, align 8, !tbaa !11
  call void (ptr, ...) @S_nextword(ptr noundef nonnull %2) #31
  %9 = load ptr, ptr %2, align 8, !tbaa !11
  call fastcc void @_C_do_a_cmd(ptr noundef %9) #32
  br label %10

10:                                               ; preds = %8, %5, %1
  %11 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %1 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #34
  ret i32 %11
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nounwind optsize uwtable
define internal void @W_addcom(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !11
  %4 = load i8, ptr %0, align 1, !tbaa !15
  %5 = load i8, ptr @_W_bolchar, align 1, !tbaa !15
  %6 = icmp eq i8 %4, %5
  br i1 %6, label %7, label %35

7:                                                ; preds = %2
  %8 = load i32, ptr @_W_nextbol, align 4, !tbaa !7
  %9 = icmp sgt i32 %8, 19
  br i1 %9, label %10, label %12

10:                                               ; preds = %7
  tail call void (ptr, ...) @Z_fatal(ptr noundef nonnull @.str.13) #31
  %11 = load i32, ptr @_W_nextbol, align 4, !tbaa !7
  br label %12

12:                                               ; preds = %10, %7
  %13 = phi i32 [ %11, %10 ], [ %8, %7 ]
  %14 = getelementptr inbounds i8, ptr %0, i64 1
  store ptr %14, ptr %3, align 8, !tbaa !11
  %15 = sext i32 %13 to i64
  %16 = getelementptr inbounds [20 x %struct._W_bolstruct], ptr @_W_bols, i64 0, i64 %15
  tail call void (ptr, ptr, ...) @S_wordcpy(ptr noundef nonnull %16, ptr noundef nonnull %14) #31
  call void (ptr, ...) @S_nextword(ptr noundef nonnull %3) #31
  %17 = load ptr, ptr %3, align 8, !tbaa !11
  %18 = load i8, ptr %17, align 1, !tbaa !15
  %19 = load i8, ptr @_W_eolchar, align 1, !tbaa !15
  %20 = icmp eq i8 %18, %19
  %21 = load i32, ptr @_W_nextbol, align 4, !tbaa !7
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [20 x %struct._W_bolstruct], ptr @_W_bols, i64 0, i64 %22, i32 1
  br i1 %20, label %24, label %25

24:                                               ; preds = %12
  store i16 10, ptr %23, align 16
  br label %26

25:                                               ; preds = %12
  call void (ptr, ptr, ...) @S_wordcpy(ptr noundef nonnull %23, ptr noundef nonnull %17) #31
  br label %26

26:                                               ; preds = %25, %24
  call void (ptr, ...) @S_nextword(ptr noundef nonnull %3) #31
  %27 = load i32, ptr @_W_nextbol, align 4, !tbaa !7
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [20 x %struct._W_bolstruct], ptr @_W_bols, i64 0, i64 %28, i32 2
  %30 = load ptr, ptr %3, align 8, !tbaa !11
  call void (ptr, ptr, ...) @S_wordcpy(ptr noundef nonnull %29, ptr noundef %30) #31
  %31 = icmp eq i32 %1, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %26
  call void (ptr, ...) @Z_complain(ptr noundef nonnull @.str.2.16) #31
  br label %33

33:                                               ; preds = %32, %26
  %34 = load i32, ptr @_W_nextbol, align 4, !tbaa !7
  br label %61

35:                                               ; preds = %2
  %36 = load i32, ptr @_W_nextcom, align 4, !tbaa !7
  %37 = icmp sgt i32 %36, 19
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  tail call void (ptr, ...) @Z_fatal(ptr noundef nonnull @.str.3.17) #31
  %39 = load i32, ptr @_W_nextcom, align 4, !tbaa !7
  br label %40

40:                                               ; preds = %38, %35
  %41 = phi i32 [ %39, %38 ], [ %36, %35 ]
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [20 x %struct._W_comstruct], ptr @_W_coms, i64 0, i64 %42
  tail call void (ptr, ptr, ...) @S_wordcpy(ptr noundef nonnull %43, ptr noundef nonnull %0) #31
  call void (ptr, ...) @S_nextword(ptr noundef nonnull %3) #31
  %44 = load ptr, ptr %3, align 8, !tbaa !11
  %45 = load i8, ptr %44, align 1, !tbaa !15
  %46 = load i8, ptr @_W_eolchar, align 1, !tbaa !15
  %47 = icmp eq i8 %45, %46
  %48 = load i32, ptr @_W_nextbol, align 4, !tbaa !7
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [20 x %struct._W_comstruct], ptr @_W_coms, i64 0, i64 %49, i32 1
  br i1 %47, label %51, label %52

51:                                               ; preds = %40
  store i16 10, ptr %50, align 4
  br label %53

52:                                               ; preds = %40
  call void (ptr, ptr, ...) @S_wordcpy(ptr noundef nonnull %50, ptr noundef nonnull %44) #31
  br label %53

53:                                               ; preds = %52, %51
  call void (ptr, ...) @S_nextword(ptr noundef nonnull %3) #31
  %54 = load i32, ptr @_W_nextcom, align 4, !tbaa !7
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [20 x %struct._W_comstruct], ptr @_W_coms, i64 0, i64 %55, i32 2
  %57 = load ptr, ptr %3, align 8, !tbaa !11
  call void (ptr, ptr, ...) @S_wordcpy(ptr noundef nonnull %56, ptr noundef %57) #31
  %58 = load i32, ptr @_W_nextcom, align 4, !tbaa !7
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [20 x %struct._W_comstruct], ptr @_W_coms, i64 0, i64 %59, i32 3
  store i32 %1, ptr %60, align 4, !tbaa !16
  br label %61

61:                                               ; preds = %53, %33
  %62 = phi i32 [ %58, %53 ], [ %34, %33 ]
  %63 = phi ptr [ @_W_nextcom, %53 ], [ @_W_nextbol, %33 ]
  %64 = add nsw i32 %62, 1
  store i32 %64, ptr %63, align 4, !tbaa !7
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define internal void @W_clearcoms() #3 {
  store i32 0, ptr @_W_nextcom, align 4, !tbaa !7
  store i32 0, ptr @_W_nextbol, align 4, !tbaa !7
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @W_addlit(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8, !tbaa !11
  %3 = load i32, ptr @_W_nextlit, align 4, !tbaa !7
  %4 = icmp sgt i32 %3, 19
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  tail call void (ptr, ...) @Z_fatal(ptr noundef nonnull @.str.4.22) #31
  %6 = load i32, ptr @_W_nextlit, align 4, !tbaa !7
  br label %7

7:                                                ; preds = %5, %1
  %8 = phi i32 [ %6, %5 ], [ %3, %1 ]
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [20 x %struct._W_bolstruct], ptr @_W_lits, i64 0, i64 %9
  tail call void (ptr, ptr, ...) @S_wordcpy(ptr noundef nonnull %10, ptr noundef %0) #31
  call void (ptr, ...) @S_nextword(ptr noundef nonnull %2) #31
  %11 = load i32, ptr @_W_nextlit, align 4, !tbaa !7
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [20 x %struct._W_bolstruct], ptr @_W_lits, i64 0, i64 %12, i32 1
  %14 = load ptr, ptr %2, align 8, !tbaa !11
  call void (ptr, ptr, ...) @S_wordcpy(ptr noundef nonnull %13, ptr noundef %14) #31
  call void (ptr, ...) @S_nextword(ptr noundef nonnull %2) #31
  %15 = load i32, ptr @_W_nextlit, align 4, !tbaa !7
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [20 x %struct._W_bolstruct], ptr @_W_lits, i64 0, i64 %16, i32 2
  %18 = load ptr, ptr %2, align 8, !tbaa !11
  call void (ptr, ptr, ...) @S_wordcpy(ptr noundef nonnull %17, ptr noundef %18) #31
  %19 = load i32, ptr @_W_nextlit, align 4, !tbaa !7
  %20 = add nsw i32 %19, 1
  store i32 %20, ptr @_W_nextlit, align 4, !tbaa !7
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define internal void @W_clearlits() #3 {
  store i32 0, ptr @_W_nextlit, align 4, !tbaa !7
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @W_isbol(ptr noundef %0) #0 {
  %2 = load i32, ptr @_W_nextbol, align 4, !tbaa !7
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %9, label %20

4:                                                ; preds = %9
  %5 = add nuw nsw i64 %10, 1
  %6 = load i32, ptr @_W_nextbol, align 4, !tbaa !7
  %7 = sext i32 %6 to i64
  %8 = icmp slt i64 %5, %7
  br i1 %8, label %9, label %20, !llvm.loop !18

9:                                                ; preds = %4, %1
  %10 = phi i64 [ %5, %4 ], [ 0, %1 ]
  %11 = getelementptr inbounds [20 x %struct._W_bolstruct], ptr @_W_bols, i64 0, i64 %10
  %12 = tail call i32 (ptr, ptr, ...) @S_wordcmp(ptr noundef %0, ptr noundef nonnull %11) #31
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %4

14:                                               ; preds = %9
  %.lcssa1 = phi i64 [ %10, %9 ]
  %.lcssa = phi ptr [ %11, %9 ]
  %15 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) @bol_scratch, ptr noundef nonnull dereferenceable(1) %.lcssa) #31
  %16 = getelementptr inbounds [20 x %struct._W_bolstruct], ptr @_W_bols, i64 0, i64 %.lcssa1, i32 1
  %17 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) getelementptr inbounds (%struct._W_bolstruct, ptr @bol_scratch, i64 0, i32 1), ptr noundef nonnull dereferenceable(1) %16) #31
  %18 = getelementptr inbounds [20 x %struct._W_bolstruct], ptr @_W_bols, i64 0, i64 %.lcssa1, i32 2
  %19 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) getelementptr inbounds (%struct._W_bolstruct, ptr @bol_scratch, i64 0, i32 2), ptr noundef nonnull dereferenceable(1) %18) #31
  br label %20

20:                                               ; preds = %14, %4, %1
  %21 = phi ptr [ @bol_scratch, %14 ], [ null, %1 ], [ null, %4 ]
  ret ptr %21
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #5

; Function Attrs: nounwind optsize uwtable
define internal i32 @W_is_bol(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct._W_bolstruct, ptr %0, i64 0, i32 2
  %3 = load i32, ptr @_W_nextbol, align 4, !tbaa !7
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %25

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._W_bolstruct, ptr %0, i64 0, i32 1
  br label %7

7:                                                ; preds = %20, %5
  %8 = phi i64 [ 0, %5 ], [ %21, %20 ]
  %9 = getelementptr inbounds [20 x %struct._W_bolstruct], ptr @_W_bols, i64 0, i64 %8
  %10 = tail call i32 (ptr, ptr, ...) @S_wordcmp(ptr noundef %0, ptr noundef nonnull %9) #31
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %7
  %13 = getelementptr inbounds [20 x %struct._W_bolstruct], ptr @_W_bols, i64 0, i64 %8, i32 1
  %14 = tail call i32 (ptr, ptr, ...) @S_wordcmp(ptr noundef nonnull %6, ptr noundef nonnull %13) #31
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %12
  %17 = getelementptr inbounds [20 x %struct._W_bolstruct], ptr @_W_bols, i64 0, i64 %8, i32 2
  %18 = tail call i32 (ptr, ptr, ...) @S_wordcmp(ptr noundef nonnull %2, ptr noundef nonnull %17) #31
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %16, %12, %7
  %21 = add nuw nsw i64 %8, 1
  %22 = load i32, ptr @_W_nextbol, align 4, !tbaa !7
  %23 = sext i32 %22 to i64
  %24 = icmp slt i64 %21, %23
  br i1 %24, label %7, label %25, !llvm.loop !19

25:                                               ; preds = %20, %16, %1
  %26 = phi i32 [ 0, %1 ], [ 0, %20 ], [ 1, %16 ]
  ret i32 %26
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @W_islit(ptr noundef %0) #0 {
  %2 = load i32, ptr @_W_nextlit, align 4, !tbaa !7
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %9, label %20

4:                                                ; preds = %9
  %5 = add nuw nsw i64 %10, 1
  %6 = load i32, ptr @_W_nextlit, align 4, !tbaa !7
  %7 = sext i32 %6 to i64
  %8 = icmp slt i64 %5, %7
  br i1 %8, label %9, label %20, !llvm.loop !20

9:                                                ; preds = %4, %1
  %10 = phi i64 [ %5, %4 ], [ 0, %1 ]
  %11 = getelementptr inbounds [20 x %struct._W_bolstruct], ptr @_W_lits, i64 0, i64 %10
  %12 = tail call i32 (ptr, ptr, ...) @S_wordcmp(ptr noundef %0, ptr noundef nonnull %11) #31
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %4

14:                                               ; preds = %9
  %.lcssa1 = phi i64 [ %10, %9 ]
  %.lcssa = phi ptr [ %11, %9 ]
  %15 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) @lit_scratch, ptr noundef nonnull dereferenceable(1) %.lcssa) #31
  %16 = getelementptr inbounds [20 x %struct._W_bolstruct], ptr @_W_lits, i64 0, i64 %.lcssa1, i32 1
  %17 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) getelementptr inbounds (%struct._W_bolstruct, ptr @lit_scratch, i64 0, i32 1), ptr noundef nonnull dereferenceable(1) %16) #31
  %18 = getelementptr inbounds [20 x %struct._W_bolstruct], ptr @_W_lits, i64 0, i64 %.lcssa1, i32 2
  %19 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) getelementptr inbounds (%struct._W_bolstruct, ptr @lit_scratch, i64 0, i32 2), ptr noundef nonnull dereferenceable(1) %18) #31
  br label %20

20:                                               ; preds = %14, %4, %1
  %21 = phi ptr [ @lit_scratch, %14 ], [ null, %1 ], [ null, %4 ]
  ret ptr %21
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @W_is_lit(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct._W_bolstruct, ptr %0, i64 0, i32 2
  %3 = load i32, ptr @_W_nextlit, align 4, !tbaa !7
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %25

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._W_bolstruct, ptr %0, i64 0, i32 1
  br label %7

7:                                                ; preds = %20, %5
  %8 = phi i64 [ 0, %5 ], [ %21, %20 ]
  %9 = getelementptr inbounds [20 x %struct._W_bolstruct], ptr @_W_lits, i64 0, i64 %8
  %10 = tail call i32 (ptr, ptr, ...) @S_wordcmp(ptr noundef %0, ptr noundef nonnull %9) #31
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %7
  %13 = getelementptr inbounds [20 x %struct._W_bolstruct], ptr @_W_lits, i64 0, i64 %8, i32 1
  %14 = tail call i32 (ptr, ptr, ...) @S_wordcmp(ptr noundef nonnull %6, ptr noundef nonnull %13) #31
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %12
  %17 = getelementptr inbounds [20 x %struct._W_bolstruct], ptr @_W_lits, i64 0, i64 %8, i32 2
  %18 = tail call i32 (ptr, ptr, ...) @S_wordcmp(ptr noundef nonnull %2, ptr noundef nonnull %17) #31
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %16, %12, %7
  %21 = add nuw nsw i64 %8, 1
  %22 = load i32, ptr @_W_nextlit, align 4, !tbaa !7
  %23 = sext i32 %22 to i64
  %24 = icmp slt i64 %21, %23
  br i1 %24, label %7, label %25, !llvm.loop !21

25:                                               ; preds = %20, %16, %1
  %26 = phi i32 [ 0, %1 ], [ 0, %20 ], [ 1, %16 ]
  ret i32 %26
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @W_iscom(ptr noundef %0) #0 {
  %2 = load i32, ptr @_W_nextcom, align 4, !tbaa !7
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %9, label %22

4:                                                ; preds = %9
  %5 = add nuw nsw i64 %10, 1
  %6 = load i32, ptr @_W_nextcom, align 4, !tbaa !7
  %7 = sext i32 %6 to i64
  %8 = icmp slt i64 %5, %7
  br i1 %8, label %9, label %22, !llvm.loop !22

9:                                                ; preds = %4, %1
  %10 = phi i64 [ %5, %4 ], [ 0, %1 ]
  %11 = getelementptr inbounds [20 x %struct._W_comstruct], ptr @_W_coms, i64 0, i64 %10
  %12 = tail call i32 (ptr, ptr, ...) @S_wordcmp(ptr noundef %0, ptr noundef nonnull %11) #31
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %4

14:                                               ; preds = %9
  %.lcssa1 = phi i64 [ %10, %9 ]
  %.lcssa = phi ptr [ %11, %9 ]
  %15 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) @com_scratch, ptr noundef nonnull dereferenceable(1) %.lcssa) #31
  %16 = getelementptr inbounds [20 x %struct._W_comstruct], ptr @_W_coms, i64 0, i64 %.lcssa1, i32 1
  %17 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) getelementptr inbounds (%struct._W_comstruct, ptr @com_scratch, i64 0, i32 1), ptr noundef nonnull dereferenceable(1) %16) #31
  %18 = getelementptr inbounds [20 x %struct._W_comstruct], ptr @_W_coms, i64 0, i64 %.lcssa1, i32 2
  %19 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) getelementptr inbounds (%struct._W_comstruct, ptr @com_scratch, i64 0, i32 2), ptr noundef nonnull dereferenceable(1) %18) #31
  %20 = getelementptr inbounds [20 x %struct._W_comstruct], ptr @_W_coms, i64 0, i64 %.lcssa1, i32 3
  %21 = load i32, ptr %20, align 4, !tbaa !16
  store i32 %21, ptr getelementptr inbounds (%struct._W_comstruct, ptr @com_scratch, i64 0, i32 3), align 4, !tbaa !16
  br label %22

22:                                               ; preds = %14, %4, %1
  %23 = phi ptr [ @com_scratch, %14 ], [ null, %1 ], [ null, %4 ]
  ret ptr %23
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @W_is_com(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct._W_comstruct, ptr %0, i64 0, i32 3
  %3 = load i32, ptr @_W_nextcom, align 4, !tbaa !7
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %31

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._W_comstruct, ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %struct._W_comstruct, ptr %0, i64 0, i32 2
  br label %8

8:                                                ; preds = %26, %5
  %9 = phi i64 [ 0, %5 ], [ %27, %26 ]
  %10 = getelementptr inbounds [20 x %struct._W_comstruct], ptr @_W_coms, i64 0, i64 %9
  %11 = tail call i32 (ptr, ptr, ...) @S_wordcmp(ptr noundef %0, ptr noundef nonnull %10) #31
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %26

13:                                               ; preds = %8
  %14 = getelementptr inbounds [20 x %struct._W_comstruct], ptr @_W_coms, i64 0, i64 %9, i32 1
  %15 = tail call i32 (ptr, ptr, ...) @S_wordcmp(ptr noundef nonnull %6, ptr noundef nonnull %14) #31
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %13
  %18 = getelementptr inbounds [20 x %struct._W_comstruct], ptr @_W_coms, i64 0, i64 %9, i32 2
  %19 = tail call i32 (ptr, ptr, ...) @S_wordcmp(ptr noundef nonnull %7, ptr noundef nonnull %18) #31
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %17
  %22 = load i32, ptr %2, align 4, !tbaa !16
  %23 = getelementptr inbounds [20 x %struct._W_comstruct], ptr @_W_coms, i64 0, i64 %9, i32 3
  %24 = load i32, ptr %23, align 4, !tbaa !16
  %25 = icmp eq i32 %22, %24
  br i1 %25, label %31, label %26

26:                                               ; preds = %21, %17, %13, %8
  %27 = add nuw nsw i64 %9, 1
  %28 = load i32, ptr @_W_nextcom, align 4, !tbaa !7
  %29 = sext i32 %28 to i64
  %30 = icmp slt i64 %27, %29
  br i1 %30, label %8, label %31, !llvm.loop !23

31:                                               ; preds = %26, %21, %1
  %32 = phi i32 [ 0, %1 ], [ 0, %26 ], [ 1, %21 ]
  ret i32 %32
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @W_is_nesting(ptr nocapture noundef readonly %0) #6 {
  %2 = getelementptr inbounds %struct._W_comstruct, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !16
  ret i32 %3
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @X_com(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = sext i32 %0 to i64
  %5 = getelementptr inbounds [0 x ptr], ptr @_K_ato, i64 0, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !11
  %7 = sext i32 %1 to i64
  %8 = getelementptr inbounds [0 x ptr], ptr @_K_bto, i64 0, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !11
  %10 = and i32 %2, 2
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct._K_str, ptr %6, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !24
  %15 = getelementptr inbounds %struct._K_str, ptr %9, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !24
  %17 = tail call fastcc i32 @_X_strcmp(ptr noundef %14, ptr noundef %16, i32 noundef %2) #32
  br label %106

18:                                               ; preds = %3
  %19 = getelementptr inbounds %struct._K_str, ptr %6, i64 0, i32 2
  %20 = load i32, ptr %19, align 8, !tbaa !26
  %21 = getelementptr inbounds %struct._K_str, ptr %9, i64 0, i32 2
  %22 = load i32, ptr %21, align 8, !tbaa !26
  %23 = icmp eq i32 %20, %22
  br i1 %23, label %24, label %106

24:                                               ; preds = %18
  switch i32 %20, label %105 [
    i32 1, label %25
    i32 2, label %31
  ]

25:                                               ; preds = %24
  %26 = getelementptr inbounds %struct._K_str, ptr %6, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !24
  %28 = getelementptr inbounds %struct._K_str, ptr %9, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !24
  %30 = tail call fastcc i32 @_X_strcmp(ptr noundef %27, ptr noundef %29, i32 noundef %2) #32
  br label %106

31:                                               ; preds = %24
  %32 = getelementptr inbounds %struct._K_str, ptr %6, i64 0, i32 4
  %33 = load ptr, ptr %32, align 8, !tbaa !27
  %34 = getelementptr inbounds %struct._K_str, ptr %9, i64 0, i32 4
  %35 = load ptr, ptr %34, align 8, !tbaa !27
  %36 = getelementptr inbounds %struct._K_str, ptr %6, i64 0, i32 5
  %37 = load ptr, ptr %36, align 8, !tbaa !28
  %38 = getelementptr inbounds %struct._K_str, ptr %9, i64 0, i32 5
  %39 = load ptr, ptr %38, align 8, !tbaa !28
  %40 = tail call ptr (ptr, ptr, ...) @T_picktol(ptr noundef %37, ptr noundef %39) #31
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %31
  tail call void (ptr, ...) @Z_fatal(ptr noundef nonnull @.str.1.25) #31
  br label %72

43:                                               ; preds = %68, %31
  %44 = phi ptr [ %70, %68 ], [ %40, %31 ]
  %45 = load i32, ptr %44, align 8, !tbaa !29
  switch i32 %45, label %68 [
    i32 2, label %106
    i32 0, label %46
  ]

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct._T_tstr, ptr %44, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !31
  %49 = load i32, ptr %48, align 8, !tbaa !32
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.R_flstr, ptr %48, i64 0, i32 2
  %53 = load ptr, ptr %52, align 8, !tbaa !34
  %54 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %53, ptr noundef nonnull dereferenceable(2) @.str.2.26) #33
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %68, label %56

56:                                               ; preds = %51, %46
  %57 = tail call i32 (ptr, ...) @R_getexp(ptr noundef %33) #31
  %58 = load ptr, ptr %47, align 8, !tbaa !31
  %59 = tail call i32 (ptr, ...) @R_getexp(ptr noundef %58) #31
  %60 = add nsw i32 %59, -1
  %61 = icmp slt i32 %57, %60
  br i1 %61, label %62, label %68

62:                                               ; preds = %56
  %63 = tail call i32 (ptr, ...) @R_getexp(ptr noundef %35) #31
  %64 = load ptr, ptr %47, align 8, !tbaa !31
  %65 = tail call i32 (ptr, ...) @R_getexp(ptr noundef %64) #31
  %66 = add nsw i32 %65, -1
  %67 = icmp slt i32 %63, %66
  br i1 %67, label %106, label %68

68:                                               ; preds = %62, %56, %51, %43
  %69 = getelementptr inbounds %struct._T_tstr, ptr %44, i64 0, i32 2
  %70 = load ptr, ptr %69, align 8, !tbaa !35
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %43, !llvm.loop !36

72:                                               ; preds = %68, %42
  %73 = getelementptr inbounds %struct.R_flstr, ptr %33, i64 0, i32 1
  %74 = load i32, ptr %73, align 4, !tbaa !37
  %75 = getelementptr inbounds %struct.R_flstr, ptr %35, i64 0, i32 1
  %76 = load i32, ptr %75, align 4, !tbaa !37
  %77 = icmp eq i32 %74, %76
  br i1 %77, label %80, label %78

78:                                               ; preds = %72
  %79 = tail call ptr (ptr, ptr, ...) @F_floatmagadd(ptr noundef nonnull %33, ptr noundef nonnull %35) #31
  br label %82

80:                                               ; preds = %72
  %81 = tail call ptr (ptr, ptr, ...) @F_floatsub(ptr noundef nonnull %33, ptr noundef nonnull %35) #31
  br label %82

82:                                               ; preds = %80, %78
  %83 = phi ptr [ %79, %78 ], [ %81, %80 ]
  br i1 %41, label %106, label %84

84:                                               ; preds = %101, %82
  %85 = phi ptr [ %103, %101 ], [ %40, %82 ]
  %86 = getelementptr inbounds %struct._T_tstr, ptr %85, i64 0, i32 1
  %87 = load ptr, ptr %86, align 8, !tbaa !31
  %88 = load i32, ptr %85, align 8, !tbaa !29
  switch i32 %88, label %96 [
    i32 0, label %97
    i32 1, label %89
  ]

89:                                               ; preds = %84
  %90 = tail call i32 @F_floatcmp(ptr noundef %33, ptr noundef %35) #31
  %91 = icmp sgt i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %89
  %93 = tail call ptr (ptr, ptr, ...) @F_floatmul(ptr noundef %33, ptr noundef %87) #31
  br label %97

94:                                               ; preds = %89
  %95 = tail call ptr (ptr, ptr, ...) @F_floatmul(ptr noundef %35, ptr noundef %87) #31
  br label %97

96:                                               ; preds = %84
  tail call void (ptr, ...) @Z_fatal(ptr noundef nonnull @.str.3.27) #31
  br label %97

97:                                               ; preds = %96, %94, %92, %84
  %98 = phi ptr [ %87, %84 ], [ %93, %92 ], [ %95, %94 ], [ %87, %96 ]
  %99 = tail call i32 @F_floatcmp(ptr noundef %83, ptr noundef %98) #31
  %100 = icmp slt i32 %99, 1
  br i1 %100, label %106, label %101

101:                                              ; preds = %97
  %102 = getelementptr inbounds %struct._T_tstr, ptr %85, i64 0, i32 2
  %103 = load ptr, ptr %102, align 8, !tbaa !35
  %104 = icmp eq ptr %103, null
  br i1 %104, label %106, label %84, !llvm.loop !38

105:                                              ; preds = %24
  tail call void (ptr, ...) @Z_fatal(ptr noundef nonnull @.str.28) #31
  br label %106

106:                                              ; preds = %105, %101, %97, %82, %62, %43, %25, %18, %12
  %107 = phi i32 [ %17, %12 ], [ -1, %105 ], [ %30, %25 ], [ 1, %18 ], [ 1, %82 ], [ 0, %97 ], [ 1, %101 ], [ 0, %43 ], [ 0, %62 ]
  ret i32 %107
}

; Function Attrs: nofree nounwind optsize memory(read) uwtable
define internal fastcc i32 @_X_strcmp(ptr noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #7 {
  %4 = and i32 %2, 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %49, label %6

6:                                                ; preds = %3
  %7 = icmp ne ptr %0, null
  tail call void @llvm.assume(i1 %7)
  %8 = load i8, ptr %1, align 1, !tbaa !15
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %44, label %10

10:                                               ; preds = %6
  %11 = tail call ptr @__ctype_b_loc() #35
  %12 = load ptr, ptr %11, align 8, !tbaa !11
  br label %13

13:                                               ; preds = %39, %10
  %14 = phi i8 [ %42, %39 ], [ %8, %10 ]
  %15 = phi ptr [ %41, %39 ], [ %1, %10 ]
  %16 = phi ptr [ %40, %39 ], [ %0, %10 ]
  %17 = load i8, ptr %16, align 1, !tbaa !15
  %18 = sext i8 %17 to i64
  %19 = getelementptr inbounds i16, ptr %12, i64 %18
  %20 = load i16, ptr %19, align 2, !tbaa !39
  %21 = and i16 %20, 1024
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %37, label %23

23:                                               ; preds = %13
  %24 = sext i8 %14 to i64
  %25 = getelementptr inbounds i16, ptr %12, i64 %24
  %26 = load i16, ptr %25, align 2, !tbaa !39
  %27 = and i16 %26, 1024
  %28 = icmp eq i16 %27, 0
  br i1 %28, label %37, label %29

29:                                               ; preds = %23
  %30 = tail call ptr @__ctype_tolower_loc() #35
  %31 = load ptr, ptr %30, align 8, !tbaa !11
  %32 = getelementptr inbounds i32, ptr %31, i64 %18
  %33 = load i32, ptr %32, align 4, !tbaa !7
  %34 = getelementptr inbounds i32, ptr %31, i64 %24
  %35 = load i32, ptr %34, align 4, !tbaa !7
  %36 = icmp eq i32 %33, %35
  br i1 %36, label %39, label %51

37:                                               ; preds = %23, %13
  %38 = icmp eq i8 %17, %14
  br i1 %38, label %39, label %51

39:                                               ; preds = %37, %29
  %40 = getelementptr inbounds i8, ptr %16, i64 1
  %41 = getelementptr inbounds i8, ptr %15, i64 1
  %42 = load i8, ptr %41, align 1, !tbaa !15
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %44, label %13

44:                                               ; preds = %39, %6
  %45 = phi ptr [ %0, %6 ], [ %40, %39 ]
  %46 = load i8, ptr %45, align 1, !tbaa !15
  %47 = icmp ne i8 %46, 0
  %48 = zext i1 %47 to i32
  br label %51

49:                                               ; preds = %3
  %50 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %1) #33
  br label %51

51:                                               ; preds = %49, %44, %37, %29
  %52 = phi i32 [ %48, %44 ], [ %50, %49 ], [ 1, %29 ], [ 1, %37 ]
  ret i32 %52
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.assume(i1 noundef) #8

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare ptr @__ctype_tolower_loc() local_unnamed_addr #9

; Function Attrs: nounwind optsize uwtable
define internal ptr @Q_do_exact(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = tail call i32 @llvm.smin.i32(i32 %0, i32 %1)
  %6 = add nsw i32 %2, 1
  %7 = sext i32 %6 to i64
  %8 = shl nsw i64 %7, 3
  %9 = tail call ptr (i64, ...) @_Z_myalloc(i64 noundef %8) #31
  %10 = icmp eq i32 %0, %1
  br i1 %10, label %13, label %11

11:                                               ; preds = %4
  %12 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @Z_err_buf, ptr noundef nonnull dereferenceable(1) @.str.29, i32 noundef %0, i32 noundef %1) #31
  tail call void (ptr, ...) @Z_complain(ptr noundef nonnull @Z_err_buf) #31
  br label %13

13:                                               ; preds = %11, %4
  %14 = shl i32 %5, 1
  br label %15

15:                                               ; preds = %97, %13
  %16 = phi i64 [ 0, %13 ], [ %98, %97 ]
  %17 = phi ptr [ null, %13 ], [ %99, %97 ]
  %18 = phi i32 [ 0, %13 ], [ %.lcssa5, %97 ]
  %19 = phi i32 [ 0, %13 ], [ %.lcssa4, %97 ]
  br label %20

20:                                               ; preds = %61, %15
  %21 = phi i32 [ %57, %61 ], [ %18, %15 ]
  %22 = phi i32 [ %58, %61 ], [ %19, %15 ]
  %23 = icmp slt i32 %22, %5
  br i1 %23, label %24, label %31

24:                                               ; preds = %28, %20
  %25 = phi i32 [ %29, %28 ], [ %22, %20 ]
  %26 = tail call i32 (i32, i32, i32, ...) @X_com(i32 noundef %25, i32 noundef %25, i32 noundef %3) #31
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = add i32 %25, 1
  %30 = icmp eq i32 %29, %5
  br i1 %30, label %100, label %24, !llvm.loop !41

31:                                               ; preds = %24, %20
  %32 = phi i32 [ %22, %20 ], [ %25, %24 ]
  %33 = icmp slt i32 %32, %5
  br i1 %33, label %34, label %100

34:                                               ; preds = %31
  %35 = add i32 %14, %21
  %36 = shl i32 %32, 1
  %37 = sub i32 %35, %36
  %38 = tail call i32 (i32, i32, i32, ...) @X_com(i32 noundef %32, i32 noundef %32, i32 noundef %3) #31
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %56, label %43

40:                                               ; preds = %49
  %41 = tail call i32 (i32, i32, i32, ...) @X_com(i32 noundef %50, i32 noundef %50, i32 noundef %3) #31
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %52, label %43, !llvm.loop !42

43:                                               ; preds = %40, %34
  %44 = phi i32 [ %46, %40 ], [ %21, %34 ]
  %45 = phi i32 [ %50, %40 ], [ %32, %34 ]
  %46 = add nsw i32 %44, 2
  %47 = icmp sgt i32 %46, %2
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  tail call void (i32, ...) @Z_exceed(i32 noundef %2) #31
  br label %49

49:                                               ; preds = %48, %43
  %50 = add i32 %45, 1
  %51 = icmp eq i32 %50, %5
  br i1 %51, label %52, label %40, !llvm.loop !42

52:                                               ; preds = %49, %40
  %.lcssa = phi i32 [ %50, %49 ], [ %50, %40 ]
  %53 = phi i32 [ %37, %49 ], [ %46, %40 ]
  %54 = phi i32 [ %5, %49 ], [ %50, %40 ]
  %55 = icmp slt i32 %.lcssa, %5
  br label %56

56:                                               ; preds = %52, %34
  %57 = phi i32 [ %21, %34 ], [ %53, %52 ]
  %58 = phi i32 [ %32, %34 ], [ %54, %52 ]
  %59 = phi i1 [ true, %34 ], [ %55, %52 ]
  %60 = icmp slt i32 %32, %58
  br i1 %60, label %62, label %61

61:                                               ; preds = %56
  br i1 %59, label %20, label %100, !llvm.loop !43

62:                                               ; preds = %56
  %.lcssa5 = phi i32 [ %57, %56 ]
  %.lcssa4 = phi i32 [ %58, %56 ]
  %.lcssa3 = phi i1 [ %59, %56 ]
  %.lcssa2 = phi i1 [ %60, %56 ]
  %.lcssa1 = phi i32 [ %32, %56 ]
  %63 = shl i64 %16, 32
  %64 = ashr exact i64 %63, 32
  br label %69

65:                                               ; preds = %69
  %.lcssa7 = phi ptr [ %75, %69 ]
  %.lcssa6 = phi i64 [ %80, %69 ]
  br i1 %.lcssa2, label %66, label %96

66:                                               ; preds = %65
  %67 = shl i64 %.lcssa6, 32
  %68 = ashr exact i64 %67, 32
  br label %82

69:                                               ; preds = %69, %62
  %70 = phi i64 [ %64, %62 ], [ %80, %69 ]
  %71 = phi i32 [ %.lcssa1, %62 ], [ %77, %69 ]
  %72 = phi ptr [ %17, %62 ], [ %75, %69 ]
  %73 = tail call ptr (i64, ...) @_Z_myalloc(i64 noundef 24) #31
  %74 = getelementptr inbounds ptr, ptr %9, i64 %70
  store ptr %73, ptr %74, align 8, !tbaa !11
  store ptr %72, ptr %73, align 8, !tbaa !44
  %75 = load ptr, ptr %74, align 8, !tbaa !11
  %76 = getelementptr inbounds %struct.edt, ptr %75, i64 0, i32 1
  store i32 2, ptr %76, align 8, !tbaa !46
  %77 = add i32 %71, 1
  %78 = getelementptr inbounds %struct.edt, ptr %75, i64 0, i32 2
  store i32 %77, ptr %78, align 4, !tbaa !47
  %79 = getelementptr inbounds %struct.edt, ptr %75, i64 0, i32 3
  store i32 0, ptr %79, align 8, !tbaa !48
  %80 = add nsw i64 %70, 1
  %81 = icmp eq i32 %77, %.lcssa4
  br i1 %81, label %65, label %69, !llvm.loop !49

82:                                               ; preds = %82, %66
  %83 = phi i64 [ %68, %66 ], [ %93, %82 ]
  %84 = phi i32 [ %.lcssa1, %66 ], [ %91, %82 ]
  %85 = phi ptr [ %.lcssa7, %66 ], [ %88, %82 ]
  %86 = tail call ptr (i64, ...) @_Z_myalloc(i64 noundef 24) #31
  %87 = getelementptr inbounds ptr, ptr %9, i64 %83
  store ptr %86, ptr %87, align 8, !tbaa !11
  store ptr %85, ptr %86, align 8, !tbaa !44
  %88 = load ptr, ptr %87, align 8, !tbaa !11
  %89 = getelementptr inbounds %struct.edt, ptr %88, i64 0, i32 1
  store i32 1, ptr %89, align 8, !tbaa !46
  %90 = getelementptr inbounds %struct.edt, ptr %88, i64 0, i32 2
  store i32 %.lcssa4, ptr %90, align 4, !tbaa !47
  %91 = add i32 %84, 1
  %92 = getelementptr inbounds %struct.edt, ptr %88, i64 0, i32 3
  store i32 %91, ptr %92, align 8, !tbaa !48
  %93 = add nsw i64 %83, 1
  %94 = icmp eq i32 %91, %.lcssa4
  br i1 %94, label %95, label %82, !llvm.loop !50

95:                                               ; preds = %82
  %.lcssa9 = phi ptr [ %88, %82 ]
  %.lcssa8 = phi i64 [ %93, %82 ]
  br i1 %.lcssa3, label %97, label %100

96:                                               ; preds = %65
  br i1 %.lcssa3, label %97, label %100

97:                                               ; preds = %96, %95
  %98 = phi i64 [ %.lcssa8, %95 ], [ %.lcssa6, %96 ]
  %99 = phi ptr [ %.lcssa9, %95 ], [ %.lcssa7, %96 ]
  br label %15, !llvm.loop !43

100:                                              ; preds = %96, %95, %61, %31, %28
  %101 = phi ptr [ %17, %28 ], [ %17, %61 ], [ %17, %31 ], [ %.lcssa7, %96 ], [ %.lcssa9, %95 ]
  ret ptr %101
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nofree nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal i32 @F_isfloat(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #11 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %3
  %6 = load i8, ptr %0, align 1, !tbaa !15
  switch i8 %6, label %9 [
    i8 43, label %7
    i8 45, label %7
  ]

7:                                                ; preds = %5, %5
  %8 = getelementptr inbounds i8, ptr %0, i64 1
  br label %9

9:                                                ; preds = %7, %5, %3
  %10 = phi ptr [ %8, %7 ], [ %0, %3 ], [ %0, %5 ]
  %11 = phi i32 [ 1, %7 ], [ 0, %3 ], [ 0, %5 ]
  %12 = tail call ptr @__ctype_b_loc() #35
  %13 = load ptr, ptr %12, align 8, !tbaa !11
  %14 = load i8, ptr %10, align 1, !tbaa !15
  %15 = sext i8 %14 to i64
  %16 = getelementptr inbounds i16, ptr %13, i64 %15
  %17 = load i16, ptr %16, align 2, !tbaa !39
  %18 = and i16 %17, 2048
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %31, label %20

20:                                               ; preds = %20, %9
  %21 = phi i32 [ %24, %20 ], [ %11, %9 ]
  %22 = phi ptr [ %23, %20 ], [ %10, %9 ]
  %23 = getelementptr inbounds i8, ptr %22, i64 1
  %24 = add nuw nsw i32 %21, 1
  %25 = load i8, ptr %23, align 1, !tbaa !15
  %26 = sext i8 %25 to i64
  %27 = getelementptr inbounds i16, ptr %13, i64 %26
  %28 = load i16, ptr %27, align 2, !tbaa !39
  %29 = and i16 %28, 2048
  %30 = icmp eq i16 %29, 0
  br i1 %30, label %31, label %20, !llvm.loop !51

31:                                               ; preds = %20, %9
  %32 = phi ptr [ %10, %9 ], [ %23, %20 ]
  %33 = phi i32 [ %11, %9 ], [ %24, %20 ]
  %34 = phi i8 [ %14, %9 ], [ %25, %20 ]
  %35 = icmp eq i8 %34, 46
  br i1 %35, label %36, label %40

36:                                               ; preds = %31
  %37 = getelementptr inbounds i8, ptr %32, i64 1
  %38 = add nuw nsw i32 %33, 1
  %39 = load i8, ptr %37, align 1, !tbaa !15
  br label %42

40:                                               ; preds = %31
  %41 = icmp eq i32 %1, 0
  br i1 %41, label %42, label %96

42:                                               ; preds = %40, %36
  %43 = phi i8 [ %39, %36 ], [ %34, %40 ]
  %44 = phi ptr [ %37, %36 ], [ %32, %40 ]
  %45 = phi i32 [ %38, %36 ], [ %33, %40 ]
  %46 = sext i8 %43 to i64
  %47 = getelementptr inbounds i16, ptr %13, i64 %46
  %48 = load i16, ptr %47, align 2, !tbaa !39
  %49 = and i16 %48, 2048
  %50 = icmp eq i16 %49, 0
  br i1 %50, label %62, label %51

51:                                               ; preds = %51, %42
  %52 = phi i32 [ %55, %51 ], [ %45, %42 ]
  %53 = phi ptr [ %54, %51 ], [ %44, %42 ]
  %54 = getelementptr inbounds i8, ptr %53, i64 1
  %55 = add nsw i32 %52, 1
  %56 = load i8, ptr %54, align 1, !tbaa !15
  %57 = sext i8 %56 to i64
  %58 = getelementptr inbounds i16, ptr %13, i64 %57
  %59 = load i16, ptr %58, align 2, !tbaa !39
  %60 = and i16 %59, 2048
  %61 = icmp eq i16 %60, 0
  br i1 %61, label %63, label %51, !llvm.loop !52

62:                                               ; preds = %42
  br i1 %19, label %96, label %63

63:                                               ; preds = %62, %51
  %64 = phi i8 [ %43, %62 ], [ %56, %51 ]
  %65 = phi i32 [ %45, %62 ], [ %55, %51 ]
  %66 = phi ptr [ %44, %62 ], [ %54, %51 ]
  switch i8 %64, label %93 [
    i8 101, label %67
    i8 69, label %67
    i8 100, label %67
    i8 68, label %67
  ]

67:                                               ; preds = %63, %63, %63, %63
  %68 = getelementptr inbounds i8, ptr %66, i64 1
  %69 = load i8, ptr %68, align 1, !tbaa !15
  switch i8 %69, label %73 [
    i8 43, label %70
    i8 45, label %70
  ]

70:                                               ; preds = %67, %67
  %71 = getelementptr inbounds i8, ptr %66, i64 2
  %72 = load i8, ptr %71, align 1, !tbaa !15
  br label %73

73:                                               ; preds = %70, %67
  %74 = phi i8 [ %72, %70 ], [ %69, %67 ]
  %75 = phi ptr [ %71, %70 ], [ %68, %67 ]
  %76 = phi i32 [ 2, %70 ], [ 1, %67 ]
  %77 = sext i8 %74 to i64
  %78 = getelementptr inbounds i16, ptr %13, i64 %77
  %79 = load i16, ptr %78, align 2, !tbaa !39
  %80 = and i16 %79, 2048
  %81 = icmp eq i16 %80, 0
  br i1 %81, label %96, label %82

82:                                               ; preds = %82, %73
  %83 = phi i32 [ %86, %82 ], [ %76, %73 ]
  %84 = phi ptr [ %85, %82 ], [ %75, %73 ]
  %85 = getelementptr inbounds i8, ptr %84, i64 1
  %86 = add nuw nsw i32 %83, 1
  %87 = load i8, ptr %85, align 1, !tbaa !15
  %88 = sext i8 %87 to i64
  %89 = getelementptr inbounds i16, ptr %13, i64 %88
  %90 = load i16, ptr %89, align 2, !tbaa !39
  %91 = and i16 %90, 2048
  %92 = icmp eq i16 %91, 0
  br i1 %92, label %93, label %82, !llvm.loop !53

93:                                               ; preds = %82, %63
  %94 = phi i32 [ 0, %63 ], [ %86, %82 ]
  %95 = add nsw i32 %94, %65
  br label %96

96:                                               ; preds = %93, %73, %62, %40
  %97 = phi i32 [ %95, %93 ], [ 0, %40 ], [ 0, %62 ], [ %65, %73 ]
  ret i32 %97
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @F_atof(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca [200 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %3) #34
  %4 = tail call ptr (...) @R_makefloat() #31
  %5 = getelementptr inbounds %struct.R_flstr, ptr %4, i64 0, i32 1
  store i32 0, ptr %5, align 4, !tbaa !37
  store i8 0, ptr %3, align 16, !tbaa !15
  %6 = load i8, ptr %0, align 1, !tbaa !15
  switch i8 %6, label %11 [
    i8 43, label %7
    i8 45, label %9
  ]

7:                                                ; preds = %2
  %8 = getelementptr inbounds i8, ptr %0, i64 1
  br label %11

9:                                                ; preds = %2
  store i32 1, ptr %5, align 4, !tbaa !37
  %10 = getelementptr inbounds i8, ptr %0, i64 1
  br label %11

11:                                               ; preds = %9, %7, %2
  %12 = phi ptr [ %0, %2 ], [ %10, %9 ], [ %8, %7 ]
  br label %13

13:                                               ; preds = %13, %11
  %14 = phi ptr [ %17, %13 ], [ %12, %11 ]
  %15 = load i8, ptr %14, align 1, !tbaa !15
  %16 = icmp eq i8 %15, 48
  %17 = getelementptr inbounds i8, ptr %14, i64 1
  br i1 %16, label %13, label %18, !llvm.loop !54

18:                                               ; preds = %13
  %.lcssa11 = phi ptr [ %14, %13 ]
  %.lcssa10 = phi i8 [ %15, %13 ]
  %19 = tail call ptr @__ctype_b_loc() #35
  %20 = load ptr, ptr %19, align 8, !tbaa !11
  %21 = sext i8 %.lcssa10 to i64
  %22 = getelementptr inbounds i16, ptr %20, i64 %21
  %23 = load i16, ptr %22, align 2, !tbaa !39
  %24 = and i16 %23, 2048
  %25 = icmp eq i16 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %18
  %27 = icmp eq i8 %.lcssa10, 46
  %28 = zext i1 %27 to i64
  %29 = getelementptr inbounds i8, ptr %.lcssa11, i64 %28
  br label %54

30:                                               ; preds = %30, %18
  %31 = phi i64 [ %36, %30 ], [ 0, %18 ]
  %32 = phi i8 [ %41, %30 ], [ %.lcssa10, %18 ]
  %33 = phi i32 [ %37, %30 ], [ 0, %18 ]
  %34 = phi ptr [ %35, %30 ], [ %.lcssa11, %18 ]
  %35 = getelementptr inbounds i8, ptr %34, i64 1
  %36 = add nuw nsw i64 %31, 1
  %37 = add nuw nsw i32 %33, 1
  %38 = getelementptr inbounds [200 x i8], ptr %3, i64 0, i64 %31
  store i8 %32, ptr %38, align 1, !tbaa !15
  %39 = getelementptr inbounds [200 x i8], ptr %3, i64 0, i64 %36
  store i8 0, ptr %39, align 1, !tbaa !15
  %40 = load ptr, ptr %19, align 8, !tbaa !11
  %41 = load i8, ptr %35, align 1, !tbaa !15
  %42 = sext i8 %41 to i64
  %43 = getelementptr inbounds i16, ptr %40, i64 %42
  %44 = load i16, ptr %43, align 2, !tbaa !39
  %45 = and i16 %44, 2048
  %46 = icmp eq i16 %45, 0
  br i1 %46, label %47, label %30, !llvm.loop !55

47:                                               ; preds = %30
  %.lcssa9 = phi ptr [ %35, %30 ]
  %.lcssa8 = phi i64 [ %36, %30 ]
  %.lcssa7 = phi i32 [ %37, %30 ]
  %.lcssa6 = phi ptr [ %40, %30 ]
  %.lcssa5 = phi i8 [ %41, %30 ]
  %48 = trunc i64 %.lcssa8 to i32
  %49 = icmp eq i8 %.lcssa5, 46
  %50 = zext i1 %49 to i64
  %51 = getelementptr inbounds i8, ptr %.lcssa9, i64 %50
  br i1 %25, label %54, label %52

52:                                               ; preds = %47
  %53 = load i8, ptr %51, align 1, !tbaa !15
  br label %68

54:                                               ; preds = %47, %26
  %55 = phi ptr [ %29, %26 ], [ %51, %47 ]
  %56 = phi i32 [ 0, %26 ], [ %.lcssa7, %47 ]
  %57 = phi i32 [ 0, %26 ], [ %48, %47 ]
  %58 = phi ptr [ %20, %26 ], [ %.lcssa6, %47 ]
  %59 = load i8, ptr %55, align 1, !tbaa !15
  %60 = icmp eq i8 %59, 48
  br i1 %60, label %61, label %68

61:                                               ; preds = %61, %54
  %62 = phi i32 [ %65, %61 ], [ %56, %54 ]
  %63 = phi ptr [ %64, %61 ], [ %55, %54 ]
  %64 = getelementptr inbounds i8, ptr %63, i64 1
  %65 = add nsw i32 %62, -1
  %66 = load i8, ptr %64, align 1, !tbaa !15
  %67 = icmp eq i8 %66, 48
  br i1 %67, label %61, label %68, !llvm.loop !56

68:                                               ; preds = %61, %54, %52
  %69 = phi i32 [ %48, %52 ], [ %57, %54 ], [ %57, %61 ]
  %70 = phi ptr [ %.lcssa6, %52 ], [ %58, %54 ], [ %58, %61 ]
  %71 = phi i8 [ %53, %52 ], [ %59, %54 ], [ %66, %61 ]
  %72 = phi ptr [ %51, %52 ], [ %55, %54 ], [ %64, %61 ]
  %73 = phi i32 [ %.lcssa7, %52 ], [ %56, %54 ], [ %65, %61 ]
  %74 = sext i8 %71 to i64
  %75 = getelementptr inbounds i16, ptr %70, i64 %74
  %76 = load i16, ptr %75, align 2, !tbaa !39
  %77 = and i16 %76, 2048
  %78 = icmp eq i16 %77, 0
  br i1 %78, label %98, label %79

79:                                               ; preds = %68
  %80 = zext i32 %69 to i64
  br label %81

81:                                               ; preds = %81, %79
  %82 = phi i64 [ %80, %79 ], [ %86, %81 ]
  %83 = phi i8 [ %71, %79 ], [ %90, %81 ]
  %84 = phi ptr [ %72, %79 ], [ %85, %81 ]
  %85 = getelementptr inbounds i8, ptr %84, i64 1
  %86 = add nuw nsw i64 %82, 1
  %87 = getelementptr inbounds [200 x i8], ptr %3, i64 0, i64 %82
  store i8 %83, ptr %87, align 1, !tbaa !15
  %88 = getelementptr inbounds [200 x i8], ptr %3, i64 0, i64 %86
  store i8 0, ptr %88, align 1, !tbaa !15
  %89 = load ptr, ptr %19, align 8, !tbaa !11
  %90 = load i8, ptr %85, align 1, !tbaa !15
  %91 = sext i8 %90 to i64
  %92 = getelementptr inbounds i16, ptr %89, i64 %91
  %93 = load i16, ptr %92, align 2, !tbaa !39
  %94 = and i16 %93, 2048
  %95 = icmp eq i16 %94, 0
  br i1 %95, label %96, label %81, !llvm.loop !57

96:                                               ; preds = %81
  %.lcssa4 = phi ptr [ %85, %81 ]
  %.lcssa3 = phi i64 [ %86, %81 ]
  %.lcssa2 = phi ptr [ %89, %81 ]
  %.lcssa1 = phi i8 [ %90, %81 ]
  %97 = trunc i64 %.lcssa3 to i32
  br label %98

98:                                               ; preds = %96, %68
  %99 = phi ptr [ %72, %68 ], [ %.lcssa4, %96 ]
  %100 = phi i32 [ %69, %68 ], [ %97, %96 ]
  %101 = phi ptr [ %70, %68 ], [ %.lcssa2, %96 ]
  %102 = phi i8 [ %71, %68 ], [ %.lcssa1, %96 ]
  switch i8 %102, label %107 [
    i8 101, label %103
    i8 69, label %103
    i8 100, label %103
    i8 68, label %103
  ]

103:                                              ; preds = %98, %98, %98, %98
  %104 = getelementptr inbounds i8, ptr %99, i64 1
  %105 = tail call i32 @atoi(ptr nocapture noundef nonnull %104) #33
  %106 = add nsw i32 %105, %73
  br label %107

107:                                              ; preds = %103, %98
  %108 = phi ptr [ %104, %103 ], [ %99, %98 ]
  %109 = phi i32 [ %106, %103 ], [ %73, %98 ]
  %110 = icmp eq i32 %1, 0
  br i1 %110, label %130, label %111

111:                                              ; preds = %107
  %112 = load i8, ptr %108, align 1, !tbaa !15
  switch i8 %112, label %115 [
    i8 43, label %113
    i8 45, label %113
  ]

113:                                              ; preds = %111, %111
  %114 = getelementptr inbounds i8, ptr %108, i64 1
  br label %115

115:                                              ; preds = %113, %111
  %116 = phi ptr [ %108, %111 ], [ %114, %113 ]
  br label %117

117:                                              ; preds = %117, %115
  %118 = phi ptr [ %125, %117 ], [ %116, %115 ]
  %119 = load i8, ptr %118, align 1, !tbaa !15
  %120 = sext i8 %119 to i64
  %121 = getelementptr inbounds i16, ptr %101, i64 %120
  %122 = load i16, ptr %121, align 2, !tbaa !39
  %123 = and i16 %122, 2048
  %124 = icmp eq i16 %123, 0
  %125 = getelementptr inbounds i8, ptr %118, i64 1
  br i1 %124, label %126, label %117, !llvm.loop !58

126:                                              ; preds = %117
  %.lcssa = phi i8 [ %119, %117 ]
  %127 = icmp eq i8 %.lcssa, 0
  br i1 %127, label %130, label %128

128:                                              ; preds = %126
  %129 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @Z_err_buf, ptr noundef nonnull dereferenceable(1) @.str.30, ptr noundef nonnull %0) #31
  tail call void (ptr, ...) @Z_fatal(ptr noundef nonnull @Z_err_buf) #31
  br label %130

130:                                              ; preds = %128, %126, %107
  %131 = icmp eq i32 %100, 0
  br i1 %131, label %146, label %132

132:                                              ; preds = %130
  %133 = zext i32 %100 to i64
  br label %137

134:                                              ; preds = %137
  %135 = add nuw nsw i64 %138, 1
  %136 = icmp eq i64 %135, %133
  br i1 %136, label %146, label %137, !llvm.loop !59

137:                                              ; preds = %134, %132
  %138 = phi i64 [ 0, %132 ], [ %135, %134 ]
  %139 = getelementptr inbounds [200 x i8], ptr %3, i64 0, i64 %138
  %140 = load i8, ptr %139, align 1, !tbaa !15
  %141 = icmp eq i8 %140, 48
  br i1 %141, label %134, label %142

142:                                              ; preds = %137
  call void (ptr, ...) @S_trimzeros(ptr noundef nonnull %3) #31
  %143 = getelementptr inbounds %struct.R_flstr, ptr %4, i64 0, i32 2
  %144 = load ptr, ptr %143, align 8, !tbaa !34
  %145 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %144, ptr noundef nonnull dereferenceable(1) %3) #31
  store i32 %109, ptr %4, align 8, !tbaa !32
  br label %149

146:                                              ; preds = %134, %130
  %147 = getelementptr inbounds %struct.R_flstr, ptr %4, i64 0, i32 2
  %148 = load ptr, ptr %147, align 8, !tbaa !34
  store i16 48, ptr %148, align 1
  store i32 0, ptr %4, align 8, !tbaa !32
  store i32 0, ptr %5, align 4, !tbaa !37
  br label %149

149:                                              ; preds = %146, %142
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %3) #34
  ret ptr %4
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(read)
declare i32 @atoi(ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: nounwind optsize uwtable
define internal ptr @F_floatsub(ptr noundef %0, ptr noundef %1) #0 {
  %3 = load i1, ptr @F_floatsub.needinit, align 4
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = tail call ptr (...) @R_makefloat() #31
  store ptr %5, ptr @F_floatsub.result, align 8, !tbaa !11
  store i1 true, ptr @F_floatsub.needinit, align 4
  br label %6

6:                                                ; preds = %4, %2
  store i8 0, ptr @F_floatsub.man1, align 16, !tbaa !15
  store i8 0, ptr @F_floatsub.man2, align 16, !tbaa !15
  %7 = tail call i32 (ptr, ...) @R_getexp(ptr noundef %0) #31
  %8 = tail call i32 (ptr, ...) @R_getexp(ptr noundef %1) #31
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = icmp sgt i32 %7, %8
  br i1 %11, label %18, label %24

12:                                               ; preds = %12, %6
  %13 = phi i32 [ %16, %12 ], [ %7, %6 ]
  %14 = tail call i64 @strlen(ptr nonnull dereferenceable(1) @F_floatsub.man1)
  %15 = getelementptr inbounds i8, ptr @F_floatsub.man1, i64 %14
  store i16 48, ptr %15, align 1
  %16 = add nsw i32 %13, 1
  %17 = icmp eq i32 %16, %8
  br i1 %17, label %27, label %12, !llvm.loop !60

18:                                               ; preds = %18, %10
  %19 = phi i32 [ %22, %18 ], [ %8, %10 ]
  %20 = tail call i64 @strlen(ptr nonnull dereferenceable(1) @F_floatsub.man2)
  %21 = getelementptr inbounds i8, ptr @F_floatsub.man2, i64 %20
  store i16 48, ptr %21, align 1
  %22 = add nsw i32 %19, 1
  %23 = icmp eq i32 %22, %7
  br i1 %23, label %27, label %18, !llvm.loop !61

24:                                               ; preds = %10
  %25 = icmp eq i32 %7, %8
  br i1 %25, label %27, label %26

26:                                               ; preds = %24
  tail call void (ptr, ...) @Z_fatal(ptr noundef nonnull @.str.2.33) #31
  br label %27

27:                                               ; preds = %26, %24, %18, %12
  %28 = phi i32 [ %7, %26 ], [ %7, %24 ], [ %8, %12 ], [ %7, %18 ]
  %29 = getelementptr inbounds %struct.R_flstr, ptr %0, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !34
  %31 = tail call ptr @strcat(ptr noundef nonnull dereferenceable(1) @F_floatsub.man1, ptr noundef nonnull dereferenceable(1) %30) #31
  %32 = getelementptr inbounds %struct.R_flstr, ptr %1, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !34
  %34 = tail call ptr @strcat(ptr noundef nonnull dereferenceable(1) @F_floatsub.man2, ptr noundef nonnull dereferenceable(1) %33) #31
  %35 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) @F_floatsub.man1, ptr noundef nonnull dereferenceable(1) @F_floatsub.man2) #33
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %27
  %38 = load ptr, ptr @F_floatsub.result, align 8, !tbaa !11
  %39 = getelementptr inbounds %struct.R_flstr, ptr %38, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !34
  store i16 48, ptr %40, align 1
  store i32 0, ptr %38, align 8, !tbaa !32
  br label %126

41:                                               ; preds = %27
  %42 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) @F_floatsub.man1) #33
  %43 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) @F_floatsub.man2) #33
  %44 = icmp ugt i64 %42, %43
  br i1 %44, label %45, label %55

45:                                               ; preds = %41
  %46 = sub i64 %42, %43
  %47 = trunc i64 %46 to i32
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %49, label %67

49:                                               ; preds = %49, %45
  %50 = phi i32 [ %53, %49 ], [ %47, %45 ]
  %51 = tail call i64 @strlen(ptr nonnull dereferenceable(1) @F_floatsub.man2)
  %52 = getelementptr inbounds i8, ptr @F_floatsub.man2, i64 %51
  store i16 48, ptr %52, align 1
  %53 = add nsw i32 %50, -1
  %54 = icmp ugt i32 %50, 1
  br i1 %54, label %49, label %67, !llvm.loop !62

55:                                               ; preds = %41
  %56 = icmp ult i64 %42, %43
  %57 = sub i64 %43, %42
  %58 = trunc i64 %57 to i32
  %59 = icmp sgt i32 %58, 0
  %60 = and i1 %56, %59
  br i1 %60, label %61, label %67

61:                                               ; preds = %61, %55
  %62 = phi i32 [ %65, %61 ], [ %58, %55 ]
  %63 = tail call i64 @strlen(ptr nonnull dereferenceable(1) @F_floatsub.man1)
  %64 = getelementptr inbounds i8, ptr @F_floatsub.man1, i64 %63
  store i16 48, ptr %64, align 1
  %65 = add nsw i32 %62, -1
  %66 = icmp ugt i32 %62, 1
  br i1 %66, label %61, label %67, !llvm.loop !62

67:                                               ; preds = %61, %55, %49, %45
  %68 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) @F_floatsub.man1) #33
  %69 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) @F_floatsub.man2) #33
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %72, label %71

71:                                               ; preds = %67
  tail call void (ptr, ...) @Z_fatal(ptr noundef nonnull @.str.3.34) #31
  br label %72

72:                                               ; preds = %71, %67
  %73 = icmp slt i32 %35, 0
  %74 = select i1 %73, ptr @F_floatsub.man2, ptr @F_floatsub.man1
  %75 = select i1 %73, ptr @F_floatsub.man1, ptr @F_floatsub.man2
  %76 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %74) #33
  %77 = trunc i64 %76 to i32
  %78 = getelementptr inbounds [200 x i8], ptr @F_floatsub.diff, i64 0, i64 %76
  store i8 0, ptr %78, align 1, !tbaa !15
  %79 = add i32 %77, -1
  %80 = icmp sgt i32 %79, -1
  br i1 %80, label %84, label %81

81:                                               ; preds = %102, %72
  %82 = load i8, ptr @F_floatsub.diff, align 16, !tbaa !15
  %83 = icmp eq i8 %82, 48
  br i1 %83, label %112, label %119

84:                                               ; preds = %102, %72
  %85 = phi i32 [ %110, %102 ], [ %79, %72 ]
  %86 = phi i32 [ %106, %102 ], [ 0, %72 ]
  %87 = icmp eq i32 %86, 0
  %88 = zext i32 %85 to i64
  %89 = getelementptr inbounds i8, ptr %74, i64 %88
  %90 = load i8, ptr %89, align 1, !tbaa !15
  br i1 %87, label %97, label %91

91:                                               ; preds = %84
  %92 = icmp eq i8 %90, 48
  %93 = add i8 %90, -1
  %94 = select i1 %92, i8 57, i8 %93
  %95 = getelementptr inbounds i8, ptr %75, i64 %88
  %96 = load i8, ptr %95, align 1, !tbaa !15
  br label %102

97:                                               ; preds = %84
  %98 = getelementptr inbounds i8, ptr %75, i64 %88
  %99 = load i8, ptr %98, align 1, !tbaa !15
  %100 = icmp slt i8 %90, %99
  %101 = select i1 %100, i8 58, i8 %90
  br label %102

102:                                              ; preds = %97, %91
  %103 = phi i8 [ %96, %91 ], [ %99, %97 ]
  %104 = phi i1 [ %92, %91 ], [ %100, %97 ]
  %105 = phi i8 [ %94, %91 ], [ %101, %97 ]
  %106 = zext i1 %104 to i32
  %107 = add i8 %105, 48
  %108 = sub i8 %107, %103
  %109 = getelementptr inbounds [200 x i8], ptr @F_floatsub.diff, i64 0, i64 %88
  store i8 %108, ptr %109, align 1, !tbaa !15
  %110 = add nsw i32 %85, -1
  %111 = icmp sgt i32 %85, 0
  br i1 %111, label %84, label %81, !llvm.loop !63

112:                                              ; preds = %112, %81
  %113 = phi ptr [ %115, %112 ], [ @F_floatsub.diff, %81 ]
  %114 = phi i32 [ %116, %112 ], [ %28, %81 ]
  %115 = getelementptr inbounds i8, ptr %113, i64 1
  %116 = add nsw i32 %114, -1
  %117 = load i8, ptr %115, align 1, !tbaa !15
  %118 = icmp eq i8 %117, 48
  br i1 %118, label %112, label %119, !llvm.loop !64

119:                                              ; preds = %112, %81
  %120 = phi i32 [ %28, %81 ], [ %116, %112 ]
  %121 = phi ptr [ @F_floatsub.diff, %81 ], [ %115, %112 ]
  %122 = load ptr, ptr @F_floatsub.result, align 8, !tbaa !11
  store i32 %120, ptr %122, align 8, !tbaa !32
  %123 = getelementptr inbounds %struct.R_flstr, ptr %122, i64 0, i32 2
  %124 = load ptr, ptr %123, align 8, !tbaa !34
  %125 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %124, ptr noundef nonnull dereferenceable(1) %121) #31
  br label %126

126:                                              ; preds = %119, %37
  %127 = phi ptr [ %122, %119 ], [ %38, %37 ]
  %128 = getelementptr inbounds %struct.R_flstr, ptr %127, i64 0, i32 1
  store i32 0, ptr %128, align 4, !tbaa !37
  ret ptr %127
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite)
declare ptr @strcat(ptr noalias noundef returned, ptr noalias nocapture noundef readonly) local_unnamed_addr #5

; Function Attrs: nounwind optsize uwtable
define internal i32 @F_floatcmp(ptr noundef %0, ptr noundef %1) #0 {
  %3 = load i32, ptr %0, align 8, !tbaa !32
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %19

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.R_flstr, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  %8 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(2) @.str.1.37) #33
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %19

10:                                               ; preds = %5
  %11 = load i32, ptr %1, align 8, !tbaa !32
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.R_flstr, ptr %1, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !34
  %16 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %15, ptr noundef nonnull dereferenceable(2) @.str.1.37) #33
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %43, label %18

18:                                               ; preds = %13, %10
  br label %43

19:                                               ; preds = %5, %2
  %20 = load i32, ptr %1, align 8, !tbaa !32
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.R_flstr, ptr %1, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !34
  %25 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %24, ptr noundef nonnull dereferenceable(2) @.str.1.37) #33
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %43, label %27

27:                                               ; preds = %22, %19
  %28 = tail call i32 (ptr, ...) @R_getexp(ptr noundef nonnull %0) #31
  %29 = tail call i32 (ptr, ...) @R_getexp(ptr noundef nonnull %1) #31
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %43, label %31

31:                                               ; preds = %27
  %32 = tail call i32 (ptr, ...) @R_getexp(ptr noundef nonnull %0) #31
  %33 = tail call i32 (ptr, ...) @R_getexp(ptr noundef nonnull %1) #31
  %34 = icmp sgt i32 %32, %33
  br i1 %34, label %43, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.R_flstr, ptr %0, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !34
  %38 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) @F_floatcmp.man1, ptr noundef nonnull dereferenceable(1) %37) #31
  tail call void (ptr, ...) @S_trimzeros(ptr noundef nonnull @F_floatcmp.man1) #31
  %39 = getelementptr inbounds %struct.R_flstr, ptr %1, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !34
  %41 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) @F_floatcmp.man2, ptr noundef nonnull dereferenceable(1) %40) #31
  tail call void (ptr, ...) @S_trimzeros(ptr noundef nonnull @F_floatcmp.man2) #31
  %42 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) @F_floatcmp.man1, ptr noundef nonnull dereferenceable(1) @F_floatcmp.man2) #33
  br label %43

43:                                               ; preds = %35, %31, %27, %22, %18, %13
  %44 = phi i32 [ %42, %35 ], [ -1, %18 ], [ 0, %13 ], [ 1, %22 ], [ -1, %27 ], [ 1, %31 ]
  ret i32 %44
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @F_floatmul(ptr noundef %0, ptr noundef %1) #0 {
  %3 = load i1, ptr @F_floatmul.needinit, align 4
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = tail call ptr (...) @R_makefloat() #31
  store ptr %5, ptr @F_floatmul.result, align 8, !tbaa !11
  store i1 true, ptr @F_floatmul.needinit, align 4
  br label %6

6:                                                ; preds = %4, %2
  %7 = load i32, ptr %0, align 8, !tbaa !32
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.R_flstr, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !34
  %12 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %11, ptr noundef nonnull dereferenceable(2) @.str.1.37) #33
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %22, label %14

14:                                               ; preds = %9, %6
  %15 = load i32, ptr %1, align 8, !tbaa !32
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.R_flstr, ptr %1, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !34
  %20 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %19, ptr noundef nonnull dereferenceable(2) @.str.1.37) #33
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %17, %9
  %23 = load ptr, ptr @F_floatmul.result, align 8, !tbaa !11
  %24 = getelementptr inbounds %struct.R_flstr, ptr %23, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !34
  store i16 48, ptr %25, align 1
  store i32 0, ptr %23, align 8, !tbaa !32
  %26 = getelementptr inbounds %struct.R_flstr, ptr %23, i64 0, i32 1
  store i32 0, ptr %26, align 4, !tbaa !37
  br label %113

27:                                               ; preds = %17, %14
  %28 = getelementptr inbounds %struct.R_flstr, ptr %0, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !34
  %30 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) @F_floatmul.man1, ptr noundef nonnull dereferenceable(1) %29) #31
  %31 = getelementptr inbounds %struct.R_flstr, ptr %1, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !34
  %33 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) @F_floatmul.man2, ptr noundef nonnull dereferenceable(1) %32) #31
  %34 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) @F_floatmul.man1) #33
  %35 = add i64 %34, -1
  %36 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) @F_floatmul.man2) #33
  %37 = add i64 %36, -1
  %38 = getelementptr inbounds i8, ptr @F_floatmul.man2, i64 %37
  %39 = icmp slt i64 %35, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %27
  %41 = getelementptr inbounds i8, ptr @F_floatmul.man1, i64 %35
  br label %45

42:                                               ; preds = %45, %27
  %43 = phi i32 [ 0, %27 ], [ %51, %45 ]
  %44 = icmp slt i64 %37, 0
  br i1 %44, label %63, label %54

45:                                               ; preds = %45, %40
  %46 = phi ptr [ %52, %45 ], [ %41, %40 ]
  %47 = phi i32 [ %51, %45 ], [ 0, %40 ]
  %48 = load i8, ptr %46, align 1, !tbaa !15
  %49 = sext i8 %48 to i32
  %50 = add i32 %47, -48
  %51 = add i32 %50, %49
  %52 = getelementptr inbounds i8, ptr %46, i64 -1
  %53 = icmp ult ptr %52, @F_floatmul.man1
  br i1 %53, label %42, label %45, !llvm.loop !65

54:                                               ; preds = %54, %42
  %55 = phi ptr [ %61, %54 ], [ %38, %42 ]
  %56 = phi i32 [ %60, %54 ], [ 0, %42 ]
  %57 = load i8, ptr %55, align 1, !tbaa !15
  %58 = sext i8 %57 to i32
  %59 = add i32 %56, -48
  %60 = add i32 %59, %58
  %61 = getelementptr inbounds i8, ptr %55, i64 -1
  %62 = icmp ult ptr %61, @F_floatmul.man2
  br i1 %62, label %63, label %54, !llvm.loop !66

63:                                               ; preds = %54, %42
  %64 = phi i32 [ 0, %42 ], [ %60, %54 ]
  %65 = icmp sgt i32 %43, %64
  %66 = select i1 %65, ptr @F_floatmul.man1, ptr @F_floatmul.man2
  %67 = select i1 %65, ptr @F_floatmul.man2, ptr @F_floatmul.man1
  tail call void (ptr, ...) @S_trimzeros(ptr noundef nonnull %66) #31
  tail call void (ptr, ...) @S_trimzeros(ptr noundef nonnull %67) #31
  %68 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %66) #33
  %69 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %67) #33
  %70 = add i64 %69, %68
  %71 = trunc i64 %70 to i32
  %72 = add i64 %69, -1
  store i16 48, ptr @F_floatmul.prod, align 16
  %73 = icmp slt i64 %72, 0
  br i1 %73, label %92, label %74

74:                                               ; preds = %63
  %75 = getelementptr inbounds i8, ptr %67, i64 %72
  br label %76

76:                                               ; preds = %80, %74
  %77 = phi ptr [ %83, %80 ], [ %75, %74 ]
  %78 = load i8, ptr %77, align 1, !tbaa !15
  %79 = icmp sgt i8 %78, 48
  br i1 %79, label %85, label %80

80:                                               ; preds = %85, %76
  %81 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %66)
  %82 = getelementptr inbounds i8, ptr %66, i64 %81
  store i16 48, ptr %82, align 1
  %83 = getelementptr inbounds i8, ptr %77, i64 -1
  %84 = icmp ult ptr %83, %67
  br i1 %84, label %92, label %76, !llvm.loop !67

85:                                               ; preds = %85, %76
  %86 = phi i32 [ %87, %85 ], [ 0, %76 ]
  tail call fastcc void @_F_stradd(ptr noundef nonnull @F_floatmul.prod, ptr noundef nonnull %66) #32
  %87 = add nuw nsw i32 %86, 1
  %88 = load i8, ptr %77, align 1, !tbaa !15
  %89 = sext i8 %88 to i32
  %90 = add nsw i32 %89, -48
  %91 = icmp slt i32 %87, %90
  br i1 %91, label %85, label %80, !llvm.loop !68

92:                                               ; preds = %80, %63
  %93 = load ptr, ptr @F_floatmul.result, align 8, !tbaa !11
  %94 = getelementptr inbounds %struct.R_flstr, ptr %93, i64 0, i32 2
  %95 = load ptr, ptr %94, align 8, !tbaa !34
  %96 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %95, ptr noundef nonnull dereferenceable(1) @F_floatmul.prod) #31
  %97 = tail call i32 (ptr, ...) @R_getexp(ptr noundef nonnull %0) #31
  %98 = tail call i32 (ptr, ...) @R_getexp(ptr noundef nonnull %1) #31
  %99 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) @F_floatmul.prod) #33
  %100 = trunc i64 %99 to i32
  %101 = sub i32 %97, %71
  %102 = add i32 %101, %98
  %103 = add i32 %102, %100
  %104 = load ptr, ptr @F_floatmul.result, align 8, !tbaa !11
  store i32 %103, ptr %104, align 8, !tbaa !32
  %105 = getelementptr inbounds %struct.R_flstr, ptr %0, i64 0, i32 1
  %106 = load i32, ptr %105, align 4, !tbaa !37
  %107 = getelementptr inbounds %struct.R_flstr, ptr %1, i64 0, i32 1
  %108 = load i32, ptr %107, align 4, !tbaa !37
  %109 = icmp eq i32 %106, %108
  %110 = getelementptr inbounds %struct.R_flstr, ptr %104, i64 0, i32 1
  br i1 %109, label %111, label %112

111:                                              ; preds = %92
  store i32 0, ptr %110, align 4, !tbaa !37
  br label %113

112:                                              ; preds = %92
  store i32 1, ptr %110, align 4, !tbaa !37
  br label %113

113:                                              ; preds = %112, %111, %22
  %114 = phi ptr [ %104, %111 ], [ %104, %112 ], [ %23, %22 ]
  ret ptr %114
}

; Function Attrs: nofree nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @_F_stradd(ptr noundef %0, ptr noundef readonly %1) unnamed_addr #13 {
  %3 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #33
  %4 = add i64 %3, -1
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #33
  %6 = add i64 %5, -1
  store i8 0, ptr getelementptr inbounds ([200 x i8], ptr @_F_stradd.result, i64 0, i64 199), align 1, !tbaa !15
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
  %21 = load i8, ptr %19, align 1, !tbaa !15
  %22 = sext i8 %21 to i32
  %23 = add nsw i32 %22, -48
  %24 = getelementptr inbounds i8, ptr %19, i64 -1
  br label %25

25:                                               ; preds = %20, %13
  %26 = phi ptr [ %24, %20 ], [ %19, %13 ]
  %27 = phi i32 [ %23, %20 ], [ 0, %13 ]
  br i1 %14, label %28, label %33

28:                                               ; preds = %25
  %29 = load i8, ptr %18, align 1, !tbaa !15
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
  store i8 %43, ptr %17, align 1, !tbaa !15
  %45 = icmp uge ptr %26, %0
  %46 = icmp uge ptr %34, %1
  %47 = select i1 %45, i1 true, i1 %46
  br i1 %47, label %13, label %48, !llvm.loop !69

48:                                               ; preds = %33
  %.lcssa1 = phi i1 [ %38, %33 ]
  %.lcssa = phi ptr [ %44, %33 ]
  br i1 %.lcssa1, label %49, label %50

49:                                               ; preds = %48
  store i8 49, ptr %.lcssa, align 1, !tbaa !15
  br label %53

50:                                               ; preds = %48, %2
  %51 = phi ptr [ %.lcssa, %48 ], [ getelementptr inbounds ([200 x i8], ptr @_F_stradd.result, i64 0, i64 198), %2 ]
  %52 = getelementptr inbounds i8, ptr %51, i64 1
  br label %53

53:                                               ; preds = %50, %49
  %54 = phi ptr [ %.lcssa, %49 ], [ %52, %50 ]
  %55 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %54) #31
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @F_floatmagadd(ptr noundef %0, ptr noundef %1) #0 {
  %3 = load i1, ptr @F_floatmagadd.needinit, align 4
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = tail call ptr (...) @R_makefloat() #31
  store ptr %5, ptr @F_floatmagadd.result, align 8, !tbaa !11
  store i1 true, ptr @F_floatmagadd.needinit, align 4
  br label %6

6:                                                ; preds = %4, %2
  store i8 0, ptr @F_floatmagadd.man1, align 16
  store i8 0, ptr @F_floatmagadd.man2, align 16
  %7 = tail call i32 (ptr, ...) @R_getexp(ptr noundef %0) #31
  %8 = tail call i32 (ptr, ...) @R_getexp(ptr noundef %1) #31
  %9 = xor i32 %8, %7
  %10 = icmp sgt i32 %9, -1
  %11 = tail call i32 (ptr, ...) @R_getexp(ptr noundef %0) #31
  br i1 %10, label %20, label %12

12:                                               ; preds = %6
  %13 = tail call i32 (ptr, ...) @R_getexp(ptr noundef %1) #31
  %14 = tail call i32 @llvm.abs.i32(i32 %11, i1 true)
  %15 = tail call i32 @llvm.abs.i32(i32 %13, i1 true)
  %16 = icmp ult i32 %14, %15
  %17 = sub nsw i32 %15, %14
  %18 = sub nsw i32 %14, %15
  %19 = select i1 %16, i32 %17, i32 %18
  br label %31

20:                                               ; preds = %6
  %21 = icmp slt i32 %11, 0
  %22 = tail call i32 (ptr, ...) @R_getexp(ptr noundef %0) #31
  %23 = sub nsw i32 0, %22
  %24 = select i1 %21, i32 %23, i32 %22
  %25 = tail call i32 (ptr, ...) @R_getexp(ptr noundef %1) #31
  %26 = icmp slt i32 %25, 0
  %27 = tail call i32 (ptr, ...) @R_getexp(ptr noundef %1) #31
  %28 = sub nsw i32 0, %27
  %29 = select i1 %26, i32 %28, i32 %27
  %30 = add nsw i32 %29, %24
  br label %31

31:                                               ; preds = %20, %12
  %32 = phi i32 [ %19, %12 ], [ %30, %20 ]
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %51

34:                                               ; preds = %31
  %35 = tail call i32 (ptr, ...) @R_getexp(ptr noundef %0) #31
  %36 = tail call i32 (ptr, ...) @R_getexp(ptr noundef %1) #31
  %37 = icmp slt i32 %35, %36
  %38 = zext i32 %32 to i64
  br i1 %37, label %39, label %45

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.R_flstr, ptr %0, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !34
  %42 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %41) #33
  %43 = add i64 %42, %38
  %44 = icmp ugt i64 %43, 199
  br i1 %44, label %60, label %61

45:                                               ; preds = %34
  %46 = getelementptr inbounds %struct.R_flstr, ptr %1, i64 0, i32 2
  %47 = load ptr, ptr %46, align 8, !tbaa !34
  %48 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %47) #33
  %49 = add i64 %48, %38
  %50 = icmp ugt i64 %49, 199
  br i1 %50, label %60, label %61

51:                                               ; preds = %31
  %52 = getelementptr inbounds %struct.R_flstr, ptr %0, i64 0, i32 2
  %53 = load ptr, ptr %52, align 8, !tbaa !34
  %54 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %53) #33
  %55 = getelementptr inbounds %struct.R_flstr, ptr %1, i64 0, i32 2
  %56 = load ptr, ptr %55, align 8, !tbaa !34
  %57 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %56) #33
  %58 = tail call i64 @llvm.umax.i64(i64 %54, i64 %57)
  %59 = icmp ugt i64 %58, 198
  br i1 %59, label %60, label %61

60:                                               ; preds = %51, %45, %39
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(40) @Z_err_buf, ptr noundef nonnull align 1 dereferenceable(40) @.str.5.42, i64 40, i1 false)
  tail call void (ptr, ...) @Z_fatal(ptr noundef nonnull @Z_err_buf) #31
  br label %61

61:                                               ; preds = %60, %51, %45, %39
  %62 = tail call i32 (ptr, ...) @R_getexp(ptr noundef %0) #31
  %63 = tail call i32 (ptr, ...) @R_getexp(ptr noundef %1) #31
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %72

65:                                               ; preds = %61
  br i1 %33, label %66, label %79

66:                                               ; preds = %66, %65
  %67 = phi i32 [ %70, %66 ], [ %32, %65 ]
  %68 = tail call i64 @strlen(ptr nonnull dereferenceable(1) @F_floatmagadd.man1)
  %69 = getelementptr inbounds i8, ptr @F_floatmagadd.man1, i64 %68
  store i16 48, ptr %69, align 1
  %70 = add nsw i32 %67, -1
  %71 = icmp ugt i32 %67, 1
  br i1 %71, label %66, label %79, !llvm.loop !62

72:                                               ; preds = %61
  br i1 %33, label %73, label %79

73:                                               ; preds = %73, %72
  %74 = phi i32 [ %77, %73 ], [ %32, %72 ]
  %75 = tail call i64 @strlen(ptr nonnull dereferenceable(1) @F_floatmagadd.man2)
  %76 = getelementptr inbounds i8, ptr @F_floatmagadd.man2, i64 %75
  store i16 48, ptr %76, align 1
  %77 = add nsw i32 %74, -1
  %78 = icmp ugt i32 %74, 1
  br i1 %78, label %73, label %79, !llvm.loop !62

79:                                               ; preds = %73, %72, %66, %65
  %80 = phi ptr [ %1, %65 ], [ %0, %72 ], [ %1, %66 ], [ %0, %73 ]
  %81 = tail call i32 (ptr, ...) @R_getexp(ptr noundef %80) #31
  %82 = getelementptr inbounds %struct.R_flstr, ptr %0, i64 0, i32 2
  %83 = load ptr, ptr %82, align 8, !tbaa !34
  %84 = tail call ptr @strcat(ptr noundef nonnull dereferenceable(1) @F_floatmagadd.man1, ptr noundef nonnull dereferenceable(1) %83) #31
  %85 = getelementptr inbounds %struct.R_flstr, ptr %1, i64 0, i32 2
  %86 = load ptr, ptr %85, align 8, !tbaa !34
  %87 = tail call ptr @strcat(ptr noundef nonnull dereferenceable(1) @F_floatmagadd.man2, ptr noundef nonnull dereferenceable(1) %86) #31
  %88 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) @F_floatmagadd.man1) #33
  %89 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) @F_floatmagadd.man2) #33
  %90 = tail call i64 @llvm.umax.i64(i64 %88, i64 %89)
  tail call fastcc void @_F_stradd(ptr noundef nonnull @F_floatmagadd.man1, ptr noundef nonnull @F_floatmagadd.man2) #32
  %91 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) @F_floatmagadd.man1) #33
  %92 = sub i64 %91, %90
  %93 = trunc i64 %92 to i32
  %94 = add i32 %81, %93
  %95 = load i8, ptr @F_floatmagadd.man1, align 16, !tbaa !15
  %96 = icmp eq i8 %95, 48
  br i1 %96, label %97, label %104

97:                                               ; preds = %97, %79
  %98 = phi ptr [ %100, %97 ], [ @F_floatmagadd.man1, %79 ]
  %99 = phi i32 [ %101, %97 ], [ %94, %79 ]
  %100 = getelementptr inbounds i8, ptr %98, i64 1
  %101 = add nsw i32 %99, -1
  %102 = load i8, ptr %100, align 1, !tbaa !15
  %103 = icmp eq i8 %102, 48
  br i1 %103, label %97, label %104, !llvm.loop !70

104:                                              ; preds = %97, %79
  %105 = phi i32 [ %94, %79 ], [ %101, %97 ]
  %106 = phi ptr [ @F_floatmagadd.man1, %79 ], [ %100, %97 ]
  %107 = load ptr, ptr @F_floatmagadd.result, align 8, !tbaa !11
  %108 = getelementptr inbounds %struct.R_flstr, ptr %107, i64 0, i32 2
  %109 = load ptr, ptr %108, align 8, !tbaa !34
  %110 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %109, ptr noundef nonnull dereferenceable(1) %106) #31
  store i32 %105, ptr %107, align 8, !tbaa !32
  %111 = getelementptr inbounds %struct.R_flstr, ptr %107, i64 0, i32 1
  store i32 0, ptr %111, align 4, !tbaa !37
  ret ptr %107
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #10

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #14

; Function Attrs: nounwind optsize uwtable
define internal ptr @R_makefloat() #0 {
  %1 = tail call ptr (i64, ...) @_Z_myalloc(i64 noundef 16) #31
  %2 = tail call ptr (i64, ...) @_Z_myalloc(i64 noundef 200) #31
  %3 = getelementptr inbounds %struct.R_flstr, ptr %1, i64 0, i32 2
  store ptr %2, ptr %3, align 8, !tbaa !34
  ret ptr %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @R_getexp(ptr nocapture noundef readonly %0) #6 {
  %2 = load i32, ptr %0, align 8, !tbaa !32
  ret i32 %2
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @L_init_file(i32 noundef %0, ptr noundef %1) #0 {
  %3 = tail call noalias ptr @fopen(ptr noundef %1, ptr noundef nonnull @.str.47) #32
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  %6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @Z_err_buf, ptr noundef nonnull dereferenceable(1) @.str.1.48, ptr noundef %1) #31
  tail call void (ptr, ...) @Z_fatal(ptr noundef nonnull @Z_err_buf) #31
  br label %7

7:                                                ; preds = %5, %2
  %8 = icmp eq i32 %0, 0
  %9 = select i1 %8, ptr @_L_arlm, ptr @_L_brlm
  %10 = select i1 %8, ptr @_L_al, ptr @_L_bl
  store i32 0, ptr %9, align 4, !tbaa !7
  %11 = select i1 %8, ptr @_L_arlm, ptr @_L_brlm
  br label %12

12:                                               ; preds = %69, %7
  %13 = tail call ptr @fgets(ptr noundef nonnull @L_init_file.buf, i32 noundef 1025, ptr noundef %3) #32
  %14 = icmp eq ptr %13, null
  br i1 %14, label %72, label %15

15:                                               ; preds = %12
  %16 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) @L_init_file.buf) #33
  %17 = trunc i64 %16 to i32
  %18 = icmp slt i32 %17, 1
  br i1 %18, label %19, label %25

19:                                               ; preds = %15
  %20 = load i32, ptr @_L_brlm, align 4
  %21 = load i32, ptr @_L_arlm, align 4
  %22 = select i1 %8, i32 %21, i32 %20
  %23 = add nsw i32 %22, 1
  %24 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @Z_err_buf, ptr noundef nonnull dereferenceable(1) @.str.2.49, i32 noundef %23, ptr noundef %1) #31
  br label %33

25:                                               ; preds = %15
  %26 = icmp ugt i32 %17, 1024
  br i1 %26, label %27, label %34

27:                                               ; preds = %25
  %28 = load i32, ptr @_L_brlm, align 4
  %29 = load i32, ptr @_L_arlm, align 4
  %30 = select i1 %8, i32 %29, i32 %28
  %31 = add nsw i32 %30, 1
  %32 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @Z_err_buf, ptr noundef nonnull dereferenceable(1) @.str.3.50, i32 noundef %31, ptr noundef %1, i32 noundef %17) #31
  br label %33

33:                                               ; preds = %27, %19
  tail call void (ptr, ...) @Z_fatal(ptr noundef nonnull @Z_err_buf) #31
  br label %34

34:                                               ; preds = %33, %25
  %35 = shl i64 %16, 32
  %36 = add i64 %35, -4294967296
  %37 = ashr exact i64 %36, 32
  %38 = getelementptr inbounds [1026 x i8], ptr @L_init_file.buf, i64 0, i64 %37
  %39 = load i8, ptr %38, align 1, !tbaa !15
  %40 = icmp eq i8 %39, 10
  br i1 %40, label %57, label %41

41:                                               ; preds = %34
  %42 = icmp eq i32 %17, 1024
  %43 = load i32, ptr @_L_brlm, align 4
  %44 = load i32, ptr @_L_arlm, align 4
  %45 = select i1 %8, i32 %44, i32 %43
  %46 = add nsw i32 %45, 1
  br i1 %42, label %47, label %49

47:                                               ; preds = %41
  %48 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @Z_err_buf, ptr noundef nonnull dereferenceable(1) @.str.4.51, i32 noundef %46, ptr noundef %1, i32 noundef 1024) #31
  br label %51

49:                                               ; preds = %41
  %50 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @Z_err_buf, ptr noundef nonnull dereferenceable(1) @.str.5.52, i32 noundef %46, ptr noundef %1) #31
  br label %51

51:                                               ; preds = %49, %47
  tail call void (ptr, ...) @Z_complain(ptr noundef nonnull @Z_err_buf) #31
  %52 = ashr exact i64 %35, 32
  %53 = getelementptr inbounds [1026 x i8], ptr @L_init_file.buf, i64 0, i64 %52
  store i8 10, ptr %53, align 1, !tbaa !15
  %54 = add i64 %35, 4294967296
  %55 = ashr exact i64 %54, 32
  %56 = getelementptr inbounds [1026 x i8], ptr @L_init_file.buf, i64 0, i64 %55
  store i8 0, ptr %56, align 1, !tbaa !15
  br label %57

57:                                               ; preds = %51, %34
  %58 = load i32, ptr @_L_brlm, align 4
  %59 = load i32, ptr @_L_arlm, align 4
  %60 = select i1 %8, i32 %59, i32 %58
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [10000 x ptr], ptr %10, i64 0, i64 %61
  tail call void (ptr, ptr, ...) @S_savestr(ptr noundef nonnull %62, ptr noundef nonnull @L_init_file.buf) #31
  %63 = load i32, ptr @_L_brlm, align 4
  %64 = load i32, ptr @_L_arlm, align 4
  %65 = select i1 %8, i32 %64, i32 %63
  %66 = icmp sgt i32 %65, 9998
  br i1 %66, label %67, label %69

67:                                               ; preds = %57
  %68 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @Z_err_buf, ptr noundef nonnull dereferenceable(1) @.str.6.53, ptr noundef %1, i32 noundef 10000) #31
  tail call void (ptr, ...) @Z_complain(ptr noundef nonnull @Z_err_buf) #31
  br label %72

69:                                               ; preds = %57
  %70 = select i1 %8, i32 %64, i32 %63
  %71 = add nsw i32 %70, 1
  store i32 %71, ptr %11, align 4, !tbaa !7
  br label %12, !llvm.loop !71

72:                                               ; preds = %67, %12
  %73 = phi i32 [ 0, %67 ], [ 1, %12 ]
  %74 = tail call i32 @fclose(ptr noundef %3) #32
  %75 = select i1 %8, ptr @_L_aclm, ptr @_L_bclm
  %76 = select i1 %8, ptr @_L_atlm, ptr @_L_btlm
  store i32 0, ptr %75, align 4, !tbaa !7
  store i32 0, ptr %76, align 4, !tbaa !7
  ret i32 %73
}

; Function Attrs: nofree nounwind optsize
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef ptr @fgets(ptr noundef, i32 noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nounwind optsize uwtable
define internal ptr @G_do_miller(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = add nsw i32 %1, %0
  %6 = add nsw i32 %5, 1
  %7 = sext i32 %6 to i64
  %8 = shl nsw i64 %7, 3
  %9 = tail call ptr (i64, ...) @_Z_myalloc(i64 noundef %8) #31
  %10 = shl nsw i64 %7, 2
  %11 = tail call ptr (i64, ...) @_Z_myalloc(i64 noundef %10) #31
  %12 = tail call i32 @llvm.smin.i32(i32 %0, i32 %1)
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %18, %4
  %15 = phi i32 [ %19, %18 ], [ 0, %4 ]
  %16 = tail call i32 (i32, i32, i32, ...) @X_com(i32 noundef %15, i32 noundef %15, i32 noundef %3) #31
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = add nuw nsw i32 %15, 1
  %20 = icmp eq i32 %19, %12
  br i1 %20, label %21, label %14, !llvm.loop !72

21:                                               ; preds = %18, %14, %4
  %22 = phi i32 [ 0, %4 ], [ %12, %18 ], [ %15, %14 ]
  %23 = sdiv i32 %5, 2
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, ptr %11, i64 %24
  store i32 %22, ptr %25, align 4, !tbaa !7
  %26 = getelementptr inbounds ptr, ptr %9, i64 %24
  store ptr null, ptr %26, align 8, !tbaa !11
  %27 = icmp eq i32 %22, %0
  %28 = add nsw i32 %23, 1
  %29 = add nsw i32 %23, -1
  %30 = select i1 %27, i32 %28, i32 %29
  %31 = icmp eq i32 %22, %1
  %32 = select i1 %31, i32 %29, i32 %28
  %33 = and i1 %27, %31
  br i1 %33, label %136, label %34

34:                                               ; preds = %21
  %35 = icmp slt i32 %2, 1
  br i1 %35, label %135, label %36

36:                                               ; preds = %34
  %37 = add nuw i32 %2, 1
  %38 = zext i32 %37 to i64
  br label %39

39:                                               ; preds = %132, %36
  %40 = phi i64 [ 1, %36 ], [ %133, %132 ]
  %41 = phi i32 [ %30, %36 ], [ %125, %132 ]
  %42 = phi i32 [ %32, %36 ], [ %126, %132 ]
  %43 = icmp sgt i32 %41, %42
  br i1 %43, label %122, label %44

44:                                               ; preds = %39
  %45 = sub nsw i64 %24, %40
  %46 = add nsw i64 %40, %24
  %47 = sext i32 %41 to i64
  %48 = add nsw i64 %46, -1
  %49 = getelementptr inbounds i32, ptr %11, i64 %48
  %50 = add nsw i64 %45, 1
  %51 = getelementptr inbounds i32, ptr %11, i64 %50
  br label %52

52:                                               ; preds = %113, %44
  %53 = phi i64 [ %47, %44 ], [ %114, %113 ]
  %54 = phi i32 [ %41, %44 ], [ %116, %113 ]
  %55 = phi i32 [ %42, %44 ], [ %119, %113 ]
  %56 = tail call ptr (i64, ...) @_Z_myalloc(i64 noundef 24) #31
  %57 = icmp eq i64 %53, %45
  br i1 %57, label %58, label %60

58:                                               ; preds = %52
  %59 = load i32, ptr %51, align 4, !tbaa !7
  br label %72

60:                                               ; preds = %52
  %61 = icmp eq i64 %53, %46
  br i1 %61, label %62, label %64

62:                                               ; preds = %60
  %63 = load i32, ptr %49, align 4, !tbaa !7
  br label %76

64:                                               ; preds = %60
  %65 = add nsw i64 %53, 1
  %66 = getelementptr inbounds i32, ptr %11, i64 %65
  %67 = load i32, ptr %66, align 4, !tbaa !7
  %68 = add nsw i64 %53, -1
  %69 = getelementptr inbounds i32, ptr %11, i64 %68
  %70 = load i32, ptr %69, align 4, !tbaa !7
  %71 = icmp slt i32 %67, %70
  br i1 %71, label %76, label %72

72:                                               ; preds = %64, %58
  %73 = phi i32 [ %59, %58 ], [ %67, %64 ]
  %74 = phi i64 [ %50, %58 ], [ %65, %64 ]
  %75 = add nsw i32 %73, 1
  br label %76

76:                                               ; preds = %72, %64, %62
  %77 = phi i64 [ %74, %72 ], [ %48, %62 ], [ %68, %64 ]
  %78 = phi i32 [ 2, %72 ], [ 1, %62 ], [ 1, %64 ]
  %79 = phi i32 [ %75, %72 ], [ %63, %62 ], [ %70, %64 ]
  %80 = getelementptr inbounds ptr, ptr %9, i64 %77
  %81 = load ptr, ptr %80, align 8, !tbaa !11
  store ptr %81, ptr %56, align 8, !tbaa !44
  %82 = getelementptr inbounds %struct.edt, ptr %56, i64 0, i32 1
  store i32 %78, ptr %82, align 8, !tbaa !46
  %83 = getelementptr inbounds %struct.edt, ptr %56, i64 0, i32 2
  store i32 %79, ptr %83, align 4, !tbaa !47
  %84 = trunc i64 %53 to i32
  %85 = sub i32 %84, %23
  %86 = add i32 %85, %79
  %87 = getelementptr inbounds %struct.edt, ptr %56, i64 0, i32 3
  store i32 %86, ptr %87, align 8, !tbaa !48
  %88 = getelementptr inbounds ptr, ptr %9, i64 %53
  store ptr %56, ptr %88, align 8, !tbaa !11
  %89 = icmp slt i32 %79, %0
  %90 = icmp slt i32 %86, %1
  %91 = and i1 %89, %90
  br i1 %91, label %92, label %103

92:                                               ; preds = %97, %76
  %93 = phi i32 [ %99, %97 ], [ %86, %76 ]
  %94 = phi i32 [ %98, %97 ], [ %79, %76 ]
  %95 = tail call i32 (i32, i32, i32, ...) @X_com(i32 noundef %94, i32 noundef %93, i32 noundef %3) #31
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %92
  %98 = add nsw i32 %94, 1
  %99 = add nsw i32 %93, 1
  %100 = icmp slt i32 %98, %0
  %101 = icmp slt i32 %99, %1
  %102 = select i1 %100, i1 %101, i1 false
  br i1 %102, label %92, label %103, !llvm.loop !73

103:                                              ; preds = %97, %92, %76
  %104 = phi i32 [ %79, %76 ], [ %98, %97 ], [ %94, %92 ]
  %105 = phi i32 [ %86, %76 ], [ %99, %97 ], [ %93, %92 ]
  %106 = getelementptr inbounds i32, ptr %11, i64 %53
  store i32 %104, ptr %106, align 4, !tbaa !7
  %107 = icmp eq i32 %104, %0
  %108 = icmp eq i32 %105, %1
  %109 = select i1 %107, i1 %108, i1 false
  br i1 %109, label %110, label %113

110:                                              ; preds = %103
  %.lcssa = phi i64 [ %53, %103 ]
  %111 = getelementptr inbounds ptr, ptr %9, i64 %.lcssa
  %112 = load ptr, ptr %111, align 8, !tbaa !11
  br label %136

113:                                              ; preds = %103
  %114 = add nsw i64 %53, 2
  %115 = trunc i64 %114 to i32
  %116 = select i1 %107, i32 %115, i32 %54
  %117 = trunc i64 %53 to i32
  %118 = add i32 %117, -2
  %119 = select i1 %108, i32 %118, i32 %55
  %120 = sext i32 %119 to i64
  %121 = icmp sgt i64 %114, %120
  br i1 %121, label %122, label %52, !llvm.loop !74

122:                                              ; preds = %113, %39
  %123 = phi i32 [ %42, %39 ], [ %119, %113 ]
  %124 = phi i32 [ %41, %39 ], [ %116, %113 ]
  %125 = add nsw i32 %124, -1
  %126 = add nsw i32 %123, 1
  %127 = trunc i64 %40 to i32
  %128 = urem i32 %127, 100
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %122
  %131 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @Z_err_buf, ptr noundef nonnull dereferenceable(1) @.str.54, i32 noundef %127) #31
  tail call void (ptr, ...) @Z_chatter(ptr noundef nonnull @Z_err_buf) #31
  br label %132

132:                                              ; preds = %130, %122
  %133 = add nuw nsw i64 %40, 1
  %134 = icmp eq i64 %133, %38
  br i1 %134, label %135, label %39, !llvm.loop !75

135:                                              ; preds = %132, %34
  tail call void (i32, ...) @Z_exceed(i32 noundef %2) #31
  tail call void (ptr, ...) @Z_fatal(ptr noundef nonnull @.str.1.55) #31
  br label %136

136:                                              ; preds = %135, %110, %21
  %137 = phi ptr [ %112, %110 ], [ null, %135 ], [ null, %21 ]
  ret ptr %137
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define internal void @Z_setquiet() #3 {
  store i1 true, ptr @_Z_qflag, align 4
  ret void
}

; Function Attrs: nofree nounwind optsize uwtable
define internal void @Z_chatter(ptr nocapture noundef readonly %0) #15 {
  %2 = load i1, ptr @_Z_qflag, align 4
  br i1 %2, label %8, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr @stderr, align 8, !tbaa !11
  %5 = tail call i32 @fputs(ptr noundef nonnull @.str.58, ptr noundef %4) #36
  %6 = load ptr, ptr @stderr, align 8, !tbaa !11
  %7 = tail call i32 @fputs(ptr noundef %0, ptr noundef %6) #36
  br label %8

8:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fputs(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize uwtable
define internal void @Z_complain(ptr nocapture noundef readonly %0) #15 {
  %2 = load i1, ptr @_Z_qflag, align 4
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr @stderr, align 8, !tbaa !11
  %5 = tail call i32 @fputs(ptr noundef %0, ptr noundef %4) #36
  br label %6

6:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: noreturn nounwind optsize uwtable
define internal void @_Z_qfatal(ptr nocapture noundef readonly %0) #16 {
  tail call void (...) @V_cleanup() #31
  tail call void (...) @O_cleanup() #31
  %2 = load i1, ptr @_Z_qflag, align 4
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr @stderr, align 8, !tbaa !11
  %5 = tail call i32 @fputs(ptr noundef %0, ptr noundef %4) #36
  br label %6

6:                                                ; preds = %3, %1
  tail call void @exit(i32 noundef 2) #37
  unreachable
}

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32 noundef) local_unnamed_addr #17

; Function Attrs: noreturn nounwind optsize uwtable
define internal void @Z_fatal(ptr nocapture noundef readonly %0) #16 {
  tail call void (...) @V_cleanup() #31
  tail call void (...) @O_cleanup() #31
  %2 = load ptr, ptr @stderr, align 8, !tbaa !11
  %3 = tail call i32 @fputs(ptr noundef %0, ptr noundef %2) #36
  tail call void @exit(i32 noundef 2) #37
  unreachable
}

; Function Attrs: nounwind optsize uwtable
define internal noalias ptr @_Z_myalloc(i32 noundef %0) #0 {
  %2 = zext i32 %0 to i64
  %3 = tail call noalias ptr @calloc(i64 noundef %2, i64 noundef 1) #38
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  tail call void @Z_fatal(ptr noundef nonnull @.str.1.65) #32
  unreachable

6:                                                ; preds = %1
  ret ptr %3
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #18

; Function Attrs: noreturn nounwind optsize uwtable
define internal void @Z_exceed(i32 noundef %0) #16 {
  %2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @Z_err_buf, ptr noundef nonnull dereferenceable(1) @.str.2.70, i32 noundef %0) #31
  tail call void @_Z_qfatal(ptr noundef nonnull @Z_err_buf) #32
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal void @O_cleanup() #19 {
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @O_output(ptr noundef %0, i32 noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %252, label %7

4:                                                ; preds = %7
  %.lcssa6 = phi ptr [ %8, %7 ]
  %5 = and i32 %1, 8
  %6 = icmp eq i32 %5, 0
  br label %15

7:                                                ; preds = %7, %2
  %8 = phi ptr [ %13, %7 ], [ %0, %2 ]
  %9 = phi ptr [ %8, %7 ], [ null, %2 ]
  %10 = getelementptr inbounds %struct.edt, ptr %8, i64 0, i32 2
  %11 = load <2 x i32>, ptr %10, align 4, !tbaa !7
  %12 = add nsw <2 x i32> %11, <i32 -1, i32 -1>
  store <2 x i32> %12, ptr %10, align 4, !tbaa !7
  %13 = load ptr, ptr %8, align 8, !tbaa !44
  store ptr %9, ptr %8, align 8, !tbaa !44
  %14 = icmp eq ptr %13, null
  br i1 %14, label %4, label %7, !llvm.loop !76

15:                                               ; preds = %250, %4
  %16 = phi ptr [ %.lcssa6, %4 ], [ %71, %250 ]
  %17 = phi i32 [ -1, %4 ], [ %69, %250 ]
  %18 = getelementptr inbounds %struct.edt, ptr %16, i64 0, i32 2
  %19 = load i32, ptr %18, align 4, !tbaa !47
  %20 = getelementptr inbounds %struct.edt, ptr %16, i64 0, i32 1
  %21 = load i32, ptr %20, align 8, !tbaa !46
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %45, label %23

23:                                               ; preds = %31, %15
  %24 = phi i32 [ %33, %31 ], [ %19, %15 ]
  %25 = phi ptr [ %26, %31 ], [ %16, %15 ]
  %26 = load ptr, ptr %25, align 8, !tbaa !44
  %27 = icmp eq ptr %26, null
  br i1 %27, label %40, label %28

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.edt, ptr %26, i64 0, i32 1
  %30 = load i32, ptr %29, align 8, !tbaa !46
  switch i32 %30, label %40 [
    i32 2, label %31
    i32 1, label %36
  ]

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.edt, ptr %26, i64 0, i32 2
  %33 = load i32, ptr %32, align 4, !tbaa !47
  %34 = add nsw i32 %24, 1
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %23, label %40, !llvm.loop !77

36:                                               ; preds = %28
  %.lcssa5 = phi i32 [ %24, %28 ]
  %.lcssa3 = phi ptr [ %25, %28 ]
  %.lcssa1 = phi ptr [ %26, %28 ]
  %37 = getelementptr inbounds %struct.edt, ptr %.lcssa1, i64 0, i32 2
  %38 = load i32, ptr %37, align 4, !tbaa !47
  %39 = icmp eq i32 %38, %.lcssa5
  br i1 %39, label %45, label %40

40:                                               ; preds = %36, %31, %28, %23
  %.lcssa2 = phi ptr [ %.lcssa3, %36 ], [ %25, %31 ], [ %25, %28 ], [ %25, %23 ]
  %.lcssa = phi ptr [ %.lcssa1, %36 ], [ %26, %31 ], [ %26, %28 ], [ %26, %23 ]
  %41 = getelementptr inbounds %struct.edt, ptr %.lcssa2, i64 0, i32 2
  %42 = load i32, ptr %41, align 4, !tbaa !47
  %43 = getelementptr inbounds %struct.edt, ptr %.lcssa2, i64 0, i32 3
  %44 = load i32, ptr %43, align 8, !tbaa !48
  br label %67

45:                                               ; preds = %36, %15
  %46 = phi i32 [ %19, %15 ], [ %.lcssa5, %36 ]
  %47 = phi i32 [ %17, %15 ], [ %.lcssa5, %36 ]
  %48 = phi i32 [ 1, %15 ], [ 3, %36 ]
  %49 = phi ptr [ %16, %15 ], [ %.lcssa1, %36 ]
  %50 = getelementptr inbounds %struct.edt, ptr %49, i64 0, i32 3
  %51 = load i32, ptr %50, align 8, !tbaa !48
  %52 = add nsw i32 %51, -1
  br label %53

53:                                               ; preds = %63, %45
  %54 = phi i32 [ %52, %45 ], [ %56, %63 ]
  %55 = phi ptr [ %49, %45 ], [ %57, %63 ]
  %56 = add nsw i32 %54, 1
  %57 = load ptr, ptr %55, align 8, !tbaa !44
  %58 = icmp eq ptr %57, null
  br i1 %58, label %67, label %59

59:                                               ; preds = %53
  %60 = getelementptr inbounds %struct.edt, ptr %57, i64 0, i32 1
  %61 = load i32, ptr %60, align 8, !tbaa !46
  %62 = icmp eq i32 %61, 1
  br i1 %62, label %63, label %67

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.edt, ptr %57, i64 0, i32 2
  %65 = load i32, ptr %64, align 4, !tbaa !47
  %66 = icmp eq i32 %65, %46
  br i1 %66, label %53, label %67, !llvm.loop !78

67:                                               ; preds = %63, %59, %53, %40
  %68 = phi i32 [ %44, %40 ], [ %51, %63 ], [ %51, %53 ], [ %51, %59 ]
  %69 = phi i32 [ %42, %40 ], [ %47, %63 ], [ %47, %53 ], [ %47, %59 ]
  %70 = phi i32 [ -1, %40 ], [ %56, %63 ], [ %56, %53 ], [ %56, %59 ]
  %71 = phi ptr [ %.lcssa, %40 ], [ %57, %59 ], [ null, %53 ], [ %57, %63 ]
  %72 = phi i32 [ 2, %40 ], [ %48, %63 ], [ %48, %53 ], [ %48, %59 ]
  br i1 %6, label %73, label %104

73:                                               ; preds = %67
  %74 = icmp sgt i32 %19, -1
  br i1 %74, label %75, label %80

75:                                               ; preds = %73
  %76 = zext i32 %19 to i64
  %77 = getelementptr inbounds [0 x ptr], ptr @_K_ato, i64 0, i64 %76
  %78 = load ptr, ptr %77, align 8, !tbaa !11
  %79 = load i32, ptr %78, align 8, !tbaa !79
  br label %80

80:                                               ; preds = %75, %73
  %81 = phi i32 [ %79, %75 ], [ %19, %73 ]
  %82 = icmp sgt i32 %69, -1
  br i1 %82, label %83, label %88

83:                                               ; preds = %80
  %84 = zext i32 %69 to i64
  %85 = getelementptr inbounds [0 x ptr], ptr @_K_ato, i64 0, i64 %84
  %86 = load ptr, ptr %85, align 8, !tbaa !11
  %87 = load i32, ptr %86, align 8, !tbaa !79
  br label %88

88:                                               ; preds = %83, %80
  %89 = phi i32 [ %87, %83 ], [ %69, %80 ]
  %90 = icmp sgt i32 %68, -1
  br i1 %90, label %91, label %96

91:                                               ; preds = %88
  %92 = zext i32 %68 to i64
  %93 = getelementptr inbounds [0 x ptr], ptr @_K_bto, i64 0, i64 %92
  %94 = load ptr, ptr %93, align 8, !tbaa !11
  %95 = load i32, ptr %94, align 8, !tbaa !79
  br label %96

96:                                               ; preds = %91, %88
  %97 = phi i32 [ %95, %91 ], [ %68, %88 ]
  %98 = icmp sgt i32 %70, -1
  br i1 %98, label %99, label %106

99:                                               ; preds = %96
  %100 = zext i32 %70 to i64
  %101 = getelementptr inbounds [0 x ptr], ptr @_K_bto, i64 0, i64 %100
  %102 = load ptr, ptr %101, align 8, !tbaa !11
  %103 = load i32, ptr %102, align 8, !tbaa !79
  br label %106

104:                                              ; preds = %67
  %105 = add nsw i32 %19, 1
  br label %114

106:                                              ; preds = %99, %96
  %107 = phi i32 [ %70, %96 ], [ %103, %99 ]
  %108 = icmp slt i32 %81, 0
  br i1 %108, label %114, label %109

109:                                              ; preds = %106
  %110 = zext i32 %81 to i64
  %111 = getelementptr inbounds [0 x i32], ptr @_L_atlindex, i64 0, i64 %110
  %112 = load i32, ptr %111, align 4, !tbaa !7
  %113 = add nsw i32 %112, 1
  br label %114

114:                                              ; preds = %109, %106, %104
  %115 = phi i32 [ %70, %104 ], [ %107, %109 ], [ %107, %106 ]
  %116 = phi i32 [ %68, %104 ], [ %97, %109 ], [ %97, %106 ]
  %117 = phi i32 [ %69, %104 ], [ %89, %109 ], [ %89, %106 ]
  %118 = phi i32 [ %19, %104 ], [ %81, %109 ], [ %81, %106 ]
  %119 = phi i32 [ %105, %104 ], [ %113, %109 ], [ 0, %106 ]
  %120 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.73, i32 noundef %119) #32
  switch i32 %72, label %224 [
    i32 1, label %121
    i32 2, label %151
    i32 3, label %179
  ]

121:                                              ; preds = %114
  br i1 %6, label %122, label %133

122:                                              ; preds = %121
  %123 = icmp slt i32 %116, 0
  br i1 %123, label %129, label %124

124:                                              ; preds = %122
  %125 = zext i32 %116 to i64
  %126 = getelementptr inbounds [0 x i32], ptr @_L_btlindex, i64 0, i64 %125
  %127 = load i32, ptr %126, align 4, !tbaa !7
  %128 = add nsw i32 %127, 1
  br label %129

129:                                              ; preds = %124, %122
  %130 = phi i32 [ %128, %124 ], [ 0, %122 ]
  %131 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1.74, i32 noundef %130) #32
  %132 = icmp sgt i32 %115, %116
  br i1 %132, label %139, label %149

133:                                              ; preds = %121
  %134 = add nsw i32 %116, 1
  %135 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1.74, i32 noundef %134) #32
  %136 = icmp sgt i32 %115, %116
  br i1 %136, label %137, label %149

137:                                              ; preds = %133
  %138 = add nsw i32 %115, 1
  br label %146

139:                                              ; preds = %129
  %140 = icmp slt i32 %115, 0
  br i1 %140, label %146, label %141

141:                                              ; preds = %139
  %142 = zext i32 %115 to i64
  %143 = getelementptr inbounds [0 x i32], ptr @_L_btlindex, i64 0, i64 %142
  %144 = load i32, ptr %143, align 4, !tbaa !7
  %145 = add nsw i32 %144, 1
  br label %146

146:                                              ; preds = %141, %139, %137
  %147 = phi i32 [ %138, %137 ], [ %145, %141 ], [ 0, %139 ]
  %148 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2.75, i32 noundef %147) #32
  br label %149

149:                                              ; preds = %146, %133, %129
  %150 = tail call i32 @putchar(i32 10)
  br label %240

151:                                              ; preds = %114
  %152 = icmp sgt i32 %117, %118
  br i1 %152, label %153, label %166

153:                                              ; preds = %151
  br i1 %6, label %156, label %154

154:                                              ; preds = %153
  %155 = add nsw i32 %117, 1
  br label %163

156:                                              ; preds = %153
  %157 = icmp slt i32 %117, 0
  br i1 %157, label %163, label %158

158:                                              ; preds = %156
  %159 = zext i32 %117 to i64
  %160 = getelementptr inbounds [0 x i32], ptr @_L_atlindex, i64 0, i64 %159
  %161 = load i32, ptr %160, align 4, !tbaa !7
  %162 = add nsw i32 %161, 1
  br label %163

163:                                              ; preds = %158, %156, %154
  %164 = phi i32 [ %155, %154 ], [ %162, %158 ], [ 0, %156 ]
  %165 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2.75, i32 noundef %164) #32
  br label %166

166:                                              ; preds = %163, %151
  br i1 %6, label %169, label %167

167:                                              ; preds = %166
  %168 = add nsw i32 %116, 1
  br label %176

169:                                              ; preds = %166
  %170 = icmp slt i32 %116, 0
  br i1 %170, label %176, label %171

171:                                              ; preds = %169
  %172 = zext i32 %116 to i64
  %173 = getelementptr inbounds [0 x i32], ptr @_L_btlindex, i64 0, i64 %172
  %174 = load i32, ptr %173, align 4, !tbaa !7
  %175 = add nsw i32 %174, 1
  br label %176

176:                                              ; preds = %171, %169, %167
  %177 = phi i32 [ %168, %167 ], [ %175, %171 ], [ 0, %169 ]
  %178 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4.76, i32 noundef %177) #32
  br label %227

179:                                              ; preds = %114
  %180 = icmp sgt i32 %117, %118
  br i1 %180, label %181, label %194

181:                                              ; preds = %179
  br i1 %6, label %184, label %182

182:                                              ; preds = %181
  %183 = add nsw i32 %117, 1
  br label %191

184:                                              ; preds = %181
  %185 = icmp slt i32 %117, 0
  br i1 %185, label %191, label %186

186:                                              ; preds = %184
  %187 = zext i32 %117 to i64
  %188 = getelementptr inbounds [0 x i32], ptr @_L_atlindex, i64 0, i64 %187
  %189 = load i32, ptr %188, align 4, !tbaa !7
  %190 = add nsw i32 %189, 1
  br label %191

191:                                              ; preds = %186, %184, %182
  %192 = phi i32 [ %183, %182 ], [ %190, %186 ], [ 0, %184 ]
  %193 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2.75, i32 noundef %192) #32
  br label %194

194:                                              ; preds = %191, %179
  br i1 %6, label %195, label %206

195:                                              ; preds = %194
  %196 = icmp slt i32 %116, 0
  br i1 %196, label %202, label %197

197:                                              ; preds = %195
  %198 = zext i32 %116 to i64
  %199 = getelementptr inbounds [0 x i32], ptr @_L_btlindex, i64 0, i64 %198
  %200 = load i32, ptr %199, align 4, !tbaa !7
  %201 = add nsw i32 %200, 1
  br label %202

202:                                              ; preds = %197, %195
  %203 = phi i32 [ %201, %197 ], [ 0, %195 ]
  %204 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5.77, i32 noundef %203) #32
  %205 = icmp sgt i32 %115, %116
  br i1 %205, label %212, label %222

206:                                              ; preds = %194
  %207 = add nsw i32 %116, 1
  %208 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5.77, i32 noundef %207) #32
  %209 = icmp sgt i32 %115, %116
  br i1 %209, label %210, label %222

210:                                              ; preds = %206
  %211 = add nsw i32 %115, 1
  br label %219

212:                                              ; preds = %202
  %213 = icmp slt i32 %115, 0
  br i1 %213, label %219, label %214

214:                                              ; preds = %212
  %215 = zext i32 %115 to i64
  %216 = getelementptr inbounds [0 x i32], ptr @_L_btlindex, i64 0, i64 %215
  %217 = load i32, ptr %216, align 4, !tbaa !7
  %218 = add nsw i32 %217, 1
  br label %219

219:                                              ; preds = %214, %212, %210
  %220 = phi i32 [ %211, %210 ], [ %218, %214 ], [ 0, %212 ]
  %221 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2.75, i32 noundef %220) #32
  br label %222

222:                                              ; preds = %219, %206, %202
  %223 = tail call i32 @putchar(i32 10)
  br label %227

224:                                              ; preds = %114
  tail call void (ptr, ...) @Z_fatal(ptr noundef nonnull @.str.6.78) #31
  %225 = and i32 %72, -2
  %226 = icmp eq i32 %225, 2
  br i1 %226, label %227, label %237

227:                                              ; preds = %224, %222, %176
  br i1 %6, label %236, label %228

228:                                              ; preds = %227
  %229 = icmp sgt i32 %118, %117
  br i1 %229, label %237, label %230

230:                                              ; preds = %230, %228
  %231 = phi i32 [ %234, %230 ], [ %118, %228 ]
  %232 = tail call fastcc ptr @_O_get_text(i32 noundef 0, i32 noundef %231, i32 noundef %1) #32
  %233 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7.79, ptr noundef %232) #32
  %234 = add i32 %231, 1
  %235 = icmp eq i32 %231, %117
  br i1 %235, label %237, label %230, !llvm.loop !80

236:                                              ; preds = %227
  tail call fastcc void @_O_do_lines(i32 noundef %19, i32 noundef %69, i32 noundef 0) #32
  br label %237

237:                                              ; preds = %236, %230, %228, %224
  switch i32 %72, label %250 [
    i32 3, label %238
    i32 1, label %240
  ]

238:                                              ; preds = %237
  %239 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %240

240:                                              ; preds = %238, %237, %149
  br i1 %6, label %249, label %241

241:                                              ; preds = %240
  %242 = icmp sgt i32 %116, %115
  br i1 %242, label %250, label %243

243:                                              ; preds = %243, %241
  %244 = phi i32 [ %247, %243 ], [ %116, %241 ]
  %245 = tail call fastcc ptr @_O_get_text(i32 noundef 1, i32 noundef %244, i32 noundef %1) #32
  %246 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9.80, ptr noundef %245) #32
  %247 = add i32 %244, 1
  %248 = icmp eq i32 %244, %115
  br i1 %248, label %250, label %243, !llvm.loop !81

249:                                              ; preds = %240
  tail call fastcc void @_O_do_lines(i32 noundef %68, i32 noundef %70, i32 noundef 1) #32
  br label %250

250:                                              ; preds = %249, %243, %241, %237
  %251 = icmp eq ptr %71, null
  br i1 %251, label %252, label %15, !llvm.loop !82

252:                                              ; preds = %250, %2
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize uwtable
define internal fastcc ptr @_O_get_text(i32 noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #15 {
  %4 = and i32 %2, 8
  %5 = icmp eq i32 %4, 0
  %6 = icmp eq i32 %0, 0
  %7 = sext i32 %1 to i64
  br i1 %5, label %35, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds [0 x ptr], ptr @_K_bto, i64 0, i64 %7
  %10 = getelementptr inbounds [0 x ptr], ptr @_K_ato, i64 0, i64 %7
  %11 = select i1 %6, ptr %10, ptr %9
  %12 = load ptr, ptr %11, align 8, !tbaa !11
  %13 = getelementptr inbounds %struct._K_str, ptr %12, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !24
  %15 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %14) #33
  %16 = icmp eq i64 %15, 1
  br i1 %16, label %17, label %23

17:                                               ; preds = %8
  %18 = load i8, ptr %14, align 1, !tbaa !15
  %19 = sext i8 %18 to i32
  switch i32 %19, label %23 [
    i32 10, label %20
    i32 9, label %21
    i32 32, label %22
  ]

20:                                               ; preds = %17
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(10) @_O_convert.spacetext, ptr noundef nonnull align 1 dereferenceable(10) @.str.11.81, i64 10, i1 false) #31
  br label %23

21:                                               ; preds = %17
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(6) @_O_convert.spacetext, ptr noundef nonnull align 1 dereferenceable(6) @.str.12.82, i64 6, i1 false) #31
  br label %23

22:                                               ; preds = %17
  store i64 17527603716969276, ptr @_O_convert.spacetext, align 16
  br label %23

23:                                               ; preds = %22, %21, %20, %17, %8
  %24 = phi ptr [ @_O_convert.spacetext, %22 ], [ @_O_convert.spacetext, %21 ], [ @_O_convert.spacetext, %20 ], [ %14, %17 ], [ %14, %8 ]
  %25 = load i32, ptr %12, align 8, !tbaa !79
  %26 = sext i32 %25 to i64
  %27 = select i1 %6, ptr @_L_atlindex, ptr @_L_btlindex
  %28 = getelementptr inbounds [0 x i32], ptr %27, i64 0, i64 %26
  %29 = load i32, ptr %28, align 4, !tbaa !7
  %30 = add nsw i32 %29, 1
  %31 = getelementptr inbounds %struct._K_str, ptr %12, i64 0, i32 1
  %32 = load i32, ptr %31, align 4, !tbaa !83
  %33 = add nsw i32 %32, 1
  %34 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @_O_get_text.buf, ptr noundef nonnull dereferenceable(1) @.str.10.83, ptr noundef %24, i32 noundef %30, i32 noundef %33) #31
  br label %47

35:                                               ; preds = %3
  %36 = select i1 %6, ptr @_L_atlindex, ptr @_L_btlindex
  %37 = select i1 %6, ptr @_L_aclindex, ptr @_L_bclindex
  %38 = select i1 %6, ptr @_L_al, ptr @_L_bl
  %39 = getelementptr inbounds [0 x i32], ptr %36, i64 0, i64 %7
  %40 = load i32, ptr %39, align 4, !tbaa !7
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [0 x i32], ptr %37, i64 0, i64 %41
  %43 = load i32, ptr %42, align 4, !tbaa !7
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [0 x ptr], ptr %38, i64 0, i64 %44
  %46 = load ptr, ptr %45, align 8, !tbaa !11
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
  %21 = load ptr, ptr %20, align 8, !tbaa !11
  %22 = load i32, ptr %21, align 8, !tbaa !79
  %23 = icmp eq i32 %17, %22
  br i1 %23, label %114, label %24

24:                                               ; preds = %15
  call void @llvm.lifetime.start.p0(i64 1025, ptr nonnull %4) #34
  %25 = sext i32 %22 to i64
  %26 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) %11) #32
  %27 = getelementptr inbounds [0 x i32], ptr %12, i64 0, i64 %25
  %28 = load i32, ptr %27, align 4, !tbaa !7
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [0 x i32], ptr %13, i64 0, i64 %29
  %31 = load i32, ptr %30, align 4, !tbaa !7
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [0 x ptr], ptr %14, i64 0, i64 %32
  %34 = load ptr, ptr %33, align 8, !tbaa !11
  %35 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) %34) #31
  %36 = getelementptr inbounds %struct._K_str, ptr %21, i64 0, i32 1
  %37 = load i32, ptr %36, align 4, !tbaa !83
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %49

39:                                               ; preds = %24
  %40 = zext i32 %37 to i64
  br label %41

41:                                               ; preds = %41, %39
  %42 = phi i64 [ %47, %41 ], [ 0, %39 ]
  %43 = getelementptr inbounds i8, ptr %4, i64 %42
  %44 = load i8, ptr %43, align 1, !tbaa !15
  %45 = sext i8 %44 to i32
  %46 = call i32 @putchar(i32 noundef %45) #32
  %47 = add nuw nsw i64 %42, 1
  %48 = icmp eq i64 %47, %40
  br i1 %48, label %49, label %41, !llvm.loop !84

49:                                               ; preds = %41, %24
  %50 = load i1, ptr @_O_need_init, align 4
  br i1 %50, label %52, label %51

51:                                               ; preds = %49
  call fastcc void @_O_st_init() #32
  br label %52

52:                                               ; preds = %51, %49
  br label %53

53:                                               ; preds = %59, %52
  %54 = phi i64 [ %60, %59 ], [ %16, %52 ]
  %55 = phi ptr [ %63, %59 ], [ %20, %52 ]
  %56 = load ptr, ptr %55, align 8, !tbaa !11
  %57 = load i32, ptr %56, align 8, !tbaa !79
  %58 = icmp eq i32 %22, %57
  br i1 %58, label %59, label %65

59:                                               ; preds = %53
  %60 = add nsw i64 %54, 1
  %61 = getelementptr inbounds [0 x ptr], ptr @_K_bto, i64 0, i64 %60
  %62 = getelementptr inbounds [0 x ptr], ptr @_K_ato, i64 0, i64 %60
  %63 = select i1 %7, ptr %62, ptr %61
  %64 = icmp slt i64 %54, %9
  br i1 %64, label %53, label %67, !llvm.loop !85

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
  %74 = load ptr, ptr %73, align 8, !tbaa !11
  %75 = getelementptr inbounds %struct._K_str, ptr %74, i64 0, i32 1
  %76 = load i32, ptr %75, align 4, !tbaa !83
  %77 = getelementptr inbounds %struct._K_str, ptr %74, i64 0, i32 3
  %78 = load ptr, ptr %77, align 8, !tbaa !24
  %79 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %78) #33
  %80 = trunc i64 %79 to i32
  %81 = add i32 %76, %80
  %82 = load i32, ptr %36, align 4, !tbaa !83
  %83 = icmp slt i32 %82, %81
  br i1 %83, label %84, label %95

84:                                               ; preds = %67
  %85 = sext i32 %82 to i64
  br label %86

86:                                               ; preds = %86, %84
  %87 = phi i64 [ %85, %84 ], [ %92, %86 ]
  %88 = getelementptr inbounds i8, ptr %4, i64 %87
  %89 = load i8, ptr %88, align 1, !tbaa !15
  %90 = sext i8 %89 to i32
  %91 = call i32 @putchar(i32 noundef %90) #32
  %92 = add nsw i64 %87, 1
  %93 = trunc i64 %92 to i32
  %94 = icmp eq i32 %81, %93
  br i1 %94, label %95, label %86, !llvm.loop !84

95:                                               ; preds = %86, %67
  %96 = load i1, ptr @_O_need_init, align 4
  br i1 %96, label %98, label %97

97:                                               ; preds = %95
  call fastcc void @_O_st_init() #32
  br label %98

98:                                               ; preds = %97, %95
  %99 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #33
  %100 = trunc i64 %99 to i32
  %101 = icmp slt i32 %81, %100
  br i1 %101, label %102, label %113

102:                                              ; preds = %98
  %103 = sext i32 %81 to i64
  br label %104

104:                                              ; preds = %104, %102
  %105 = phi i64 [ %103, %102 ], [ %110, %104 ]
  %106 = getelementptr inbounds i8, ptr %4, i64 %105
  %107 = load i8, ptr %106, align 1, !tbaa !15
  %108 = sext i8 %107 to i32
  %109 = call i32 @putchar(i32 noundef %108) #32
  %110 = add nsw i64 %105, 1
  %111 = trunc i64 %110 to i32
  %112 = icmp eq i32 %111, %100
  br i1 %112, label %113, label %104, !llvm.loop !84

113:                                              ; preds = %104, %98
  call void @llvm.lifetime.end.p0(i64 1025, ptr nonnull %4) #34
  br label %114

114:                                              ; preds = %113, %15
  %115 = phi i32 [ %22, %113 ], [ %17, %15 ]
  %116 = add nsw i64 %16, 1
  %117 = trunc i64 %116 to i32
  %118 = icmp eq i32 %10, %117
  br i1 %118, label %119, label %15, !llvm.loop !86

119:                                              ; preds = %114, %3
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #20

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @_O_st_init() unnamed_addr #0 {
  %1 = tail call i32 @isatty(i32 noundef 1) #31
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %7, label %3

3:                                                ; preds = %0
  %4 = tail call ptr @getenv(ptr noundef nonnull @.str.16) #31
  store ptr %4, ptr @_O_st_tmp, align 8, !tbaa !11
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  tail call void (ptr, ...) @Z_complain(ptr noundef nonnull @.str.17) #31
  br label %7

7:                                                ; preds = %6, %3, %0
  store i1 true, ptr @_O_need_init, align 4
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @isatty(i32 noundef) local_unnamed_addr #21

; Function Attrs: nofree nounwind optsize memory(read)
declare noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #22

; Function Attrs: nounwind optsize uwtable
define internal void @P_addalpha(ptr noundef %0) #0 {
  %2 = alloca [1024 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %2) #34
  call void (ptr, ptr, ...) @S_wordcpy(ptr noundef nonnull %2, ptr noundef %0) #31
  %3 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) @_P_alpha) #33
  %4 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #33
  %5 = add i64 %4, %3
  %6 = icmp ugt i64 %5, 255
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  call void (ptr, ...) @Z_fatal(ptr noundef nonnull @.str.86) #31
  br label %8

8:                                                ; preds = %7, %1
  %9 = call ptr @strcat(ptr noundef nonnull dereferenceable(1) @_P_alpha, ptr noundef nonnull dereferenceable(1) %2) #31
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %2) #34
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @P_file_parse(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca ptr, align 8
  store i32 %0, ptr @_P_fnumb, align 4, !tbaa !7
  store i32 %1, ptr @_P_start, align 4, !tbaa !7
  store i32 %2, ptr @_P_lcount, align 4, !tbaa !7
  store i32 %3, ptr @_P_flags, align 4, !tbaa !7
  store i8 0, ptr @_P_dummyline, align 1, !tbaa !15
  tail call void (...) @C_clear_cmd() #31
  tail call void (...) @T_clear_tols() #31
  tail call void (...) @W_clearcoms() #31
  tail call void (...) @W_clearlits() #31
  store i8 0, ptr @_P_alpha, align 16, !tbaa !15
  tail call void (...) @C_docmds() #31
  store ptr @_P_dummyline, ptr @_P_nextchr, align 8, !tbaa !11
  store i1 false, ptr @_P_has_content, align 4
  store i32 0, ptr @_P_next_tol, align 4, !tbaa !7
  %6 = load i32, ptr @_P_fnumb, align 4, !tbaa !7
  %7 = icmp eq i32 %6, 0
  %8 = select i1 %7, ptr @_L_ac, ptr @_L_bc
  %9 = load i32, ptr @_L_atlm, align 4
  %10 = load i32, ptr @_L_btlm, align 4
  %11 = select i1 %7, i32 %9, i32 %10
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [0 x i32], ptr %8, i64 0, i64 %12
  store i32 0, ptr %13, align 4, !tbaa !7
  %14 = load i32, ptr @_P_start, align 4, !tbaa !7
  %15 = add nsw i32 %14, -1
  store i32 %15, ptr @_P_realline, align 4, !tbaa !7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #34
  br label %16

16:                                               ; preds = %100, %4
  %17 = phi ptr [ %101, %100 ], [ @_P_dummyline, %4 ]
  %18 = load i8, ptr %17, align 1, !tbaa !15
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %82

20:                                               ; preds = %16
  %21 = call fastcc i32 @_P_nextline() #32, !range !87
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %514

23:                                               ; preds = %20
  %24 = load i1, ptr @_P_has_content, align 4
  br i1 %24, label %25, label %100

25:                                               ; preds = %23
  %26 = load ptr, ptr @_P_firstchr, align 8, !tbaa !11
  %27 = call ptr (ptr, ...) @W_isbol(ptr noundef %26) #31
  %28 = icmp eq ptr %27, null
  %29 = load ptr, ptr @_P_nextchr, align 8, !tbaa !11
  br i1 %28, label %82, label %30

30:                                               ; preds = %25
  %31 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %27) #33
  %32 = getelementptr inbounds i8, ptr %29, i64 %31
  store ptr %32, ptr @_P_nextchr, align 8, !tbaa !11
  %33 = getelementptr inbounds %struct._W_bolstruct, ptr %27, i64 0, i32 1
  %34 = load i8, ptr %33, align 1, !tbaa !15
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %100, label %36

36:                                               ; preds = %30
  %37 = getelementptr inbounds %struct._W_bolstruct, ptr %27, i64 0, i32 2
  br label %38

38:                                               ; preds = %80, %36
  %39 = phi ptr [ %81, %80 ], [ %32, %36 ]
  %40 = load i8, ptr %39, align 1, !tbaa !15
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %38
  %43 = call fastcc i32 @_P_nextline() #32, !range !87
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %514

45:                                               ; preds = %42
  %46 = load i1, ptr @_P_has_content, align 4
  br i1 %46, label %50, label %47

47:                                               ; preds = %45
  %48 = call i32 (ptr, ...) @W_is_bol(ptr noundef nonnull %27) #31
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %100, label %50

50:                                               ; preds = %47, %45, %38
  %51 = load i8, ptr %37, align 1, !tbaa !15
  %52 = icmp eq i8 %51, 0
  %53 = load ptr, ptr @_P_nextchr, align 8, !tbaa !11
  br i1 %52, label %69, label %54

54:                                               ; preds = %50
  %55 = call i32 (ptr, ptr, ...) @S_wordcmp(ptr noundef %53, ptr noundef nonnull %37) #31
  %56 = icmp eq i32 %55, 0
  %57 = load ptr, ptr @_P_nextchr, align 8, !tbaa !11
  br i1 %56, label %58, label %69

58:                                               ; preds = %54
  %59 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %37) #33
  %60 = getelementptr inbounds i8, ptr %57, i64 %59
  %61 = call i32 (ptr, ptr, ...) @S_wordcmp(ptr noundef %60, ptr noundef nonnull %33) #31
  %62 = icmp eq i32 %61, 0
  %63 = load ptr, ptr @_P_nextchr, align 8, !tbaa !11
  br i1 %62, label %64, label %69

64:                                               ; preds = %58
  %65 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %37) #33
  %66 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %33) #33
  %67 = add i64 %66, %65
  %68 = getelementptr inbounds i8, ptr %63, i64 %67
  br label %80

69:                                               ; preds = %58, %54, %50
  %70 = phi ptr [ %63, %58 ], [ %57, %54 ], [ %53, %50 ]
  %71 = call i32 (ptr, ptr, ...) @S_wordcmp(ptr noundef %70, ptr noundef nonnull %33) #31
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %69
  %74 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %33) #33
  %75 = load ptr, ptr @_P_nextchr, align 8, !tbaa !11
  %76 = getelementptr inbounds i8, ptr %75, i64 %74
  br label %98

77:                                               ; preds = %69
  %78 = load ptr, ptr @_P_nextchr, align 8, !tbaa !11
  %79 = getelementptr inbounds i8, ptr %78, i64 1
  br label %80

80:                                               ; preds = %77, %64
  %81 = phi ptr [ %79, %77 ], [ %68, %64 ]
  store ptr %81, ptr @_P_nextchr, align 8, !tbaa !11
  br label %38

82:                                               ; preds = %25, %16
  %83 = phi ptr [ %29, %25 ], [ %17, %16 ]
  %84 = load i32, ptr @_P_flags, align 4, !tbaa !7
  %85 = and i32 %84, 1
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %102

87:                                               ; preds = %82
  %88 = tail call ptr @__ctype_b_loc() #35
  %89 = load ptr, ptr %88, align 8, !tbaa !11
  %90 = load i8, ptr %83, align 1, !tbaa !15
  %91 = sext i8 %90 to i64
  %92 = getelementptr inbounds i16, ptr %89, i64 %91
  %93 = load i16, ptr %92, align 2, !tbaa !39
  %94 = and i16 %93, 8192
  %95 = icmp eq i16 %94, 0
  br i1 %95, label %102, label %96

96:                                               ; preds = %87
  %97 = getelementptr inbounds i8, ptr %83, i64 1
  br label %98

98:                                               ; preds = %96, %73
  %99 = phi ptr [ %76, %73 ], [ %97, %96 ]
  store ptr %99, ptr @_P_nextchr, align 8, !tbaa !11
  br label %100

100:                                              ; preds = %512, %154, %126, %105, %98, %47, %30, %23
  %101 = load ptr, ptr @_P_nextchr, align 8, !tbaa !11
  br label %16

102:                                              ; preds = %87, %82
  %103 = call ptr (ptr, ...) @W_iscom(ptr noundef %83) #31
  %104 = icmp eq ptr %103, null
  br i1 %104, label %182, label %105

105:                                              ; preds = %102
  %106 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %103) #33
  %107 = load ptr, ptr @_P_nextchr, align 8, !tbaa !11
  %108 = getelementptr inbounds i8, ptr %107, i64 %106
  store ptr %108, ptr @_P_nextchr, align 8, !tbaa !11
  %109 = getelementptr inbounds %struct._W_comstruct, ptr %103, i64 0, i32 1
  %110 = load i8, ptr %109, align 4, !tbaa !15
  %111 = icmp eq i8 %110, 0
  br i1 %111, label %100, label %112

112:                                              ; preds = %105
  %113 = getelementptr inbounds %struct._W_comstruct, ptr %103, i64 0, i32 2
  br label %114

114:                                              ; preds = %176, %112
  %115 = phi ptr [ %108, %112 ], [ %177, %176 ]
  %116 = phi i32 [ 1, %112 ], [ %178, %176 ]
  br label %117

117:                                              ; preds = %148, %114
  %118 = phi ptr [ %149, %148 ], [ %115, %114 ]
  %119 = load i8, ptr %118, align 1, !tbaa !15
  %120 = icmp eq i8 %119, 0
  br i1 %120, label %121, label %129

121:                                              ; preds = %117
  %122 = call fastcc i32 @_P_nextline() #32, !range !87
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %514

124:                                              ; preds = %121
  %125 = load i1, ptr @_P_has_content, align 4
  br i1 %125, label %129, label %126

126:                                              ; preds = %124
  %127 = call i32 (ptr, ...) @W_is_com(ptr noundef nonnull %103) #31
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %100, label %129

129:                                              ; preds = %126, %124, %117
  %130 = load i8, ptr %113, align 4, !tbaa !15
  %131 = icmp eq i8 %130, 0
  %132 = load ptr, ptr @_P_nextchr, align 8, !tbaa !11
  br i1 %131, label %150, label %133

133:                                              ; preds = %129
  %134 = call i32 (ptr, ptr, ...) @S_wordcmp(ptr noundef %132, ptr noundef nonnull %113) #31
  %135 = icmp eq i32 %134, 0
  %136 = load ptr, ptr @_P_nextchr, align 8, !tbaa !11
  br i1 %135, label %137, label %150

137:                                              ; preds = %133
  %138 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %113) #33
  %139 = getelementptr inbounds i8, ptr %136, i64 %138
  %140 = call i32 (ptr, ptr, ...) @S_wordcmp(ptr noundef %139, ptr noundef nonnull %109) #31
  %141 = icmp eq i32 %140, 0
  %142 = load ptr, ptr @_P_nextchr, align 8, !tbaa !11
  br i1 %141, label %143, label %150

143:                                              ; preds = %137
  %144 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %113) #33
  %145 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %109) #33
  %146 = add i64 %145, %144
  %147 = getelementptr inbounds i8, ptr %142, i64 %146
  br label %148

148:                                              ; preds = %179, %143
  %149 = phi ptr [ %181, %179 ], [ %147, %143 ]
  store ptr %149, ptr @_P_nextchr, align 8, !tbaa !11
  br label %117

150:                                              ; preds = %137, %133, %129
  %151 = phi ptr [ %142, %137 ], [ %136, %133 ], [ %132, %129 ]
  %152 = call i32 (ptr, ptr, ...) @S_wordcmp(ptr noundef %151, ptr noundef nonnull %109) #31
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %164

154:                                              ; preds = %150
  %155 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %109) #33
  %156 = load ptr, ptr @_P_nextchr, align 8, !tbaa !11
  %157 = getelementptr inbounds i8, ptr %156, i64 %155
  store ptr %157, ptr @_P_nextchr, align 8, !tbaa !11
  %158 = call i32 @W_is_nesting(ptr noundef nonnull %103) #31
  %159 = icmp eq i32 %158, 0
  %160 = add nsw i32 %116, -1
  %161 = icmp eq i32 %160, 0
  %162 = select i1 %159, i1 true, i1 %161
  %163 = load ptr, ptr @_P_nextchr, align 8, !tbaa !11
  br i1 %162, label %100, label %176

164:                                              ; preds = %150
  %165 = call i32 @W_is_nesting(ptr noundef nonnull %103) #31
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %179, label %167

167:                                              ; preds = %164
  %168 = load ptr, ptr @_P_nextchr, align 8, !tbaa !11
  %169 = call i32 (ptr, ptr, ...) @S_wordcmp(ptr noundef %168, ptr noundef nonnull %109) #31
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %171, label %179

171:                                              ; preds = %167
  %172 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %109) #33
  %173 = load ptr, ptr @_P_nextchr, align 8, !tbaa !11
  %174 = getelementptr inbounds i8, ptr %173, i64 %172
  store ptr %174, ptr @_P_nextchr, align 8, !tbaa !11
  %175 = add nsw i32 %116, 1
  br label %176

176:                                              ; preds = %171, %154
  %177 = phi ptr [ %163, %154 ], [ %174, %171 ]
  %178 = phi i32 [ %160, %154 ], [ %175, %171 ]
  br label %114

179:                                              ; preds = %167, %164
  %180 = load ptr, ptr @_P_nextchr, align 8, !tbaa !11
  %181 = getelementptr inbounds i8, ptr %180, i64 1
  br label %148

182:                                              ; preds = %102
  %183 = load i32, ptr @_P_fnumb, align 4, !tbaa !7
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %191, label %185

185:                                              ; preds = %182
  %186 = load i32, ptr @_L_btlm, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds [0 x i32], ptr @_L_bc, i64 0, i64 %187
  %189 = load i32, ptr %188, align 4, !tbaa !7
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %197, label %207

191:                                              ; preds = %182
  %192 = load i32, ptr @_L_atlm, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds [0 x i32], ptr @_L_ac, i64 0, i64 %193
  %195 = load i32, ptr %194, align 4, !tbaa !7
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %202, label %207

197:                                              ; preds = %185
  %198 = load i32, ptr @_L_bclm, align 4
  %199 = getelementptr inbounds [0 x i32], ptr @_L_btlindex, i64 0, i64 %187
  store i32 %198, ptr %199, align 4, !tbaa !7
  %200 = load i32, ptr @_K_btm, align 4
  %201 = getelementptr inbounds [0 x i32], ptr @_L_bi, i64 0, i64 %187
  store i32 %200, ptr %201, align 4, !tbaa !7
  br label %207

202:                                              ; preds = %191
  %203 = load i32, ptr @_L_aclm, align 4
  %204 = getelementptr inbounds [0 x i32], ptr @_L_atlindex, i64 0, i64 %193
  store i32 %203, ptr %204, align 4, !tbaa !7
  %205 = load i32, ptr @_K_atm, align 4
  %206 = getelementptr inbounds [0 x i32], ptr @_L_ai, i64 0, i64 %193
  store i32 %205, ptr %206, align 4, !tbaa !7
  br label %207

207:                                              ; preds = %202, %197, %191, %185
  %208 = load i32, ptr @_L_btlm, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds [0 x i32], ptr @_L_btlindex, i64 0, i64 %209
  %211 = load i32, ptr @_L_atlm, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds [0 x i32], ptr @_L_atlindex, i64 0, i64 %212
  %214 = select i1 %184, ptr %213, ptr %210
  %215 = load i32, ptr %214, align 4, !tbaa !7
  %216 = load ptr, ptr @_P_nextchr, align 8, !tbaa !11
  %217 = load ptr, ptr @_P_firstchr, align 8, !tbaa !11
  %218 = ptrtoint ptr %216 to i64
  %219 = ptrtoint ptr %217 to i64
  %220 = sub i64 %218, %219
  %221 = trunc i64 %220 to i32
  %222 = call ptr (i64, ...) @_Z_myalloc(i64 noundef 40) #31
  %223 = load i32, ptr @_P_fnumb, align 4, !tbaa !7
  %224 = icmp eq i32 %223, 0
  %225 = load i32, ptr @_L_btlm, align 4
  %226 = load i32, ptr @_L_atlm, align 4
  %227 = select i1 %224, i32 %226, i32 %225
  store i32 %227, ptr %222, align 8, !tbaa !79
  %228 = getelementptr inbounds %struct._K_str, ptr %222, i64 0, i32 1
  store i32 %221, ptr %228, align 4, !tbaa !83
  %229 = load ptr, ptr @_P_nextchr, align 8, !tbaa !11
  %230 = call ptr (ptr, ...) @W_islit(ptr noundef %229) #31
  %231 = icmp eq ptr %230, null
  br i1 %231, label %370, label %232

232:                                              ; preds = %207
  %233 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %230) #33
  %234 = load ptr, ptr @_P_nextchr, align 8, !tbaa !11
  %235 = getelementptr inbounds i8, ptr %234, i64 %233
  store ptr %235, ptr @_P_nextchr, align 8, !tbaa !11
  %236 = trunc i64 %233 to i32
  store i32 %236, ptr @_P_stringsize, align 4, !tbaa !7
  %237 = getelementptr inbounds %struct._W_bolstruct, ptr %230, i64 0, i32 1
  %238 = load i8, ptr %237, align 1, !tbaa !15
  %239 = icmp eq i8 %238, 0
  br i1 %239, label %298, label %240

240:                                              ; preds = %232
  %241 = getelementptr inbounds %struct._W_bolstruct, ptr %230, i64 0, i32 2
  br label %242

242:                                              ; preds = %292, %240
  %243 = phi ptr [ %293, %292 ], [ %235, %240 ]
  %244 = load i8, ptr %243, align 1, !tbaa !15
  %245 = icmp eq i8 %244, 0
  br i1 %245, label %246, label %254

246:                                              ; preds = %242
  %247 = call fastcc i32 @_P_nextline() #32, !range !87
  %248 = icmp eq i32 %247, 0
  br i1 %248, label %249, label %295

249:                                              ; preds = %246
  %250 = load i1, ptr @_P_has_content, align 4
  br i1 %250, label %254, label %251

251:                                              ; preds = %249
  %252 = call i32 (ptr, ...) @W_is_lit(ptr noundef nonnull %230) #31
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %295, label %254

254:                                              ; preds = %251, %249, %242
  %255 = load i8, ptr %241, align 1, !tbaa !15
  %256 = icmp eq i8 %255, 0
  %257 = load ptr, ptr @_P_nextchr, align 8, !tbaa !11
  br i1 %256, label %276, label %258

258:                                              ; preds = %254
  %259 = call i32 (ptr, ptr, ...) @S_wordcmp(ptr noundef %257, ptr noundef nonnull %241) #31
  %260 = icmp eq i32 %259, 0
  %261 = load ptr, ptr @_P_nextchr, align 8, !tbaa !11
  br i1 %260, label %262, label %276

262:                                              ; preds = %258
  %263 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %241) #33
  %264 = getelementptr inbounds i8, ptr %261, i64 %263
  %265 = call i32 (ptr, ptr, ...) @S_wordcmp(ptr noundef %264, ptr noundef nonnull %237) #31
  %266 = icmp eq i32 %265, 0
  %267 = load ptr, ptr @_P_nextchr, align 8, !tbaa !11
  br i1 %266, label %268, label %276

268:                                              ; preds = %262
  %269 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %241) #33
  %270 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %237) #33
  %271 = add i64 %270, %269
  %272 = getelementptr inbounds i8, ptr %267, i64 %271
  store ptr %272, ptr @_P_nextchr, align 8, !tbaa !11
  %273 = load i32, ptr @_P_stringsize, align 4, !tbaa !7
  %274 = trunc i64 %271 to i32
  %275 = add i32 %273, %274
  br label %292

276:                                              ; preds = %262, %258, %254
  %277 = phi ptr [ %267, %262 ], [ %261, %258 ], [ %257, %254 ]
  %278 = call i32 (ptr, ptr, ...) @S_wordcmp(ptr noundef %277, ptr noundef nonnull %237) #31
  %279 = icmp eq i32 %278, 0
  br i1 %279, label %280, label %287

280:                                              ; preds = %276
  %281 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %237) #33
  %282 = load ptr, ptr @_P_nextchr, align 8, !tbaa !11
  %283 = getelementptr inbounds i8, ptr %282, i64 %281
  store ptr %283, ptr @_P_nextchr, align 8, !tbaa !11
  %284 = load i32, ptr @_P_stringsize, align 4, !tbaa !7
  %285 = trunc i64 %281 to i32
  %286 = add i32 %284, %285
  store i32 %286, ptr @_P_stringsize, align 4, !tbaa !7
  br label %298

287:                                              ; preds = %276
  %288 = load ptr, ptr @_P_nextchr, align 8, !tbaa !11
  %289 = getelementptr inbounds i8, ptr %288, i64 1
  store ptr %289, ptr @_P_nextchr, align 8, !tbaa !11
  %290 = load i32, ptr @_P_stringsize, align 4, !tbaa !7
  %291 = add nsw i32 %290, 1
  br label %292

292:                                              ; preds = %287, %268
  %293 = phi ptr [ %289, %287 ], [ %272, %268 ]
  %294 = phi i32 [ %291, %287 ], [ %275, %268 ]
  store i32 %294, ptr @_P_stringsize, align 4, !tbaa !7
  br label %242

295:                                              ; preds = %251, %246
  %296 = phi i32 [ 0, %251 ], [ 1, %246 ]
  %297 = load i32, ptr @_P_stringsize, align 4, !tbaa !7
  br label %298

298:                                              ; preds = %295, %280, %232
  %299 = phi i32 [ %286, %280 ], [ %236, %232 ], [ %297, %295 ]
  %300 = phi i32 [ 0, %280 ], [ 0, %232 ], [ %296, %295 ]
  %301 = getelementptr inbounds %struct._K_str, ptr %222, i64 0, i32 2
  store i32 1, ptr %301, align 8, !tbaa !26
  call void (ptr, i32, ...) @S_allocstr(ptr noundef nonnull %5, i32 noundef %299) #31
  %302 = load i32, ptr @_P_fnumb, align 4, !tbaa !7
  %303 = icmp eq i32 %302, 0
  %304 = load i32, ptr @_L_bclm, align 4
  %305 = load i32, ptr @_L_aclm, align 4
  %306 = select i1 %303, i32 %305, i32 %304
  %307 = icmp sgt i32 %306, %215
  %308 = load ptr, ptr %5, align 8, !tbaa !11
  %309 = sext i32 %215 to i64
  %310 = select i1 %303, ptr @_L_aclindex, ptr @_L_bclindex
  %311 = select i1 %303, ptr @_L_al, ptr @_L_bl
  %312 = getelementptr inbounds [0 x i32], ptr %310, i64 0, i64 %309
  %313 = load i32, ptr %312, align 4, !tbaa !7
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds [0 x ptr], ptr %311, i64 0, i64 %314
  %316 = load ptr, ptr %315, align 8, !tbaa !11
  %317 = shl i64 %220, 32
  %318 = ashr exact i64 %317, 32
  %319 = getelementptr inbounds i8, ptr %316, i64 %318
  br i1 %307, label %320, label %359

320:                                              ; preds = %298
  %321 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %308, ptr noundef nonnull dereferenceable(1) %319) #31
  %322 = add nsw i32 %215, 1
  %323 = icmp slt i32 %322, %306
  br i1 %323, label %324, label %342

324:                                              ; preds = %320
  %325 = sext i32 %322 to i64
  br label %326

326:                                              ; preds = %326, %324
  %327 = phi i64 [ %325, %324 ], [ %339, %326 ]
  %328 = load ptr, ptr %5, align 8, !tbaa !11
  %329 = load i32, ptr @_P_fnumb, align 4, !tbaa !7
  %330 = icmp eq i32 %329, 0
  %331 = select i1 %330, ptr @_L_aclindex, ptr @_L_bclindex
  %332 = select i1 %330, ptr @_L_al, ptr @_L_bl
  %333 = getelementptr inbounds [0 x i32], ptr %331, i64 0, i64 %327
  %334 = load i32, ptr %333, align 4, !tbaa !7
  %335 = sext i32 %334 to i64
  %336 = getelementptr inbounds [0 x ptr], ptr %332, i64 0, i64 %335
  %337 = load ptr, ptr %336, align 8, !tbaa !11
  %338 = call ptr @strcat(ptr noundef nonnull dereferenceable(1) %328, ptr noundef nonnull dereferenceable(1) %337) #31
  %339 = add nsw i64 %327, 1
  %340 = trunc i64 %339 to i32
  %341 = icmp eq i32 %306, %340
  br i1 %341, label %342, label %326, !llvm.loop !88

342:                                              ; preds = %326, %320
  %343 = load ptr, ptr %5, align 8, !tbaa !11
  %344 = load i32, ptr @_P_fnumb, align 4, !tbaa !7
  %345 = icmp eq i32 %344, 0
  %346 = sext i32 %306 to i64
  %347 = select i1 %345, ptr @_L_aclindex, ptr @_L_bclindex
  %348 = select i1 %345, ptr @_L_al, ptr @_L_bl
  %349 = getelementptr inbounds [0 x i32], ptr %347, i64 0, i64 %346
  %350 = load i32, ptr %349, align 4, !tbaa !7
  %351 = sext i32 %350 to i64
  %352 = getelementptr inbounds [0 x ptr], ptr %348, i64 0, i64 %351
  %353 = load ptr, ptr %352, align 8, !tbaa !11
  %354 = load i32, ptr @_P_stringsize, align 4, !tbaa !7
  %355 = sext i32 %354 to i64
  %356 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %343) #33
  %357 = sub i64 %355, %356
  %358 = call ptr @strncat(ptr noundef nonnull dereferenceable(1) %343, ptr noundef %353, i64 noundef %357) #31
  br label %367

359:                                              ; preds = %298
  %360 = load i32, ptr @_P_stringsize, align 4, !tbaa !7
  %361 = sext i32 %360 to i64
  %362 = call ptr @strncpy(ptr noundef %308, ptr noundef %319, i64 noundef %361) #31
  %363 = load ptr, ptr %5, align 8, !tbaa !11
  %364 = load i32, ptr @_P_stringsize, align 4, !tbaa !7
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds i8, ptr %363, i64 %365
  store i8 0, ptr %366, align 1, !tbaa !15
  br label %367

367:                                              ; preds = %359, %342
  %368 = load ptr, ptr %5, align 8, !tbaa !11
  %369 = getelementptr inbounds %struct._K_str, ptr %222, i64 0, i32 3
  store ptr %368, ptr %369, align 8, !tbaa !24
  br label %473

370:                                              ; preds = %207
  %371 = load ptr, ptr @_P_nextchr, align 8, !tbaa !11
  %372 = load i32, ptr @_P_flags, align 4, !tbaa !7
  %373 = and i32 %372, 32
  %374 = and i32 %372, 16
  %375 = call i32 @F_isfloat(ptr noundef %371, i32 noundef %373, i32 noundef %374) #31
  %376 = icmp eq i32 %375, 0
  br i1 %376, label %402, label %377

377:                                              ; preds = %370
  %378 = getelementptr inbounds %struct._K_str, ptr %222, i64 0, i32 3
  %379 = load ptr, ptr @_P_nextchr, align 8, !tbaa !11
  call void (ptr, ptr, i32, ...) @S_savenstr(ptr noundef nonnull %378, ptr noundef %379, i32 noundef %375) #31
  %380 = getelementptr inbounds %struct._K_str, ptr %222, i64 0, i32 2
  store i32 2, ptr %380, align 8, !tbaa !26
  %381 = load i32, ptr @_P_flags, align 4, !tbaa !7
  %382 = and i32 %381, 2
  %383 = icmp eq i32 %382, 0
  br i1 %383, label %384, label %391

384:                                              ; preds = %377
  %385 = load ptr, ptr %378, align 8, !tbaa !24
  %386 = call ptr (ptr, i32, ...) @F_atof(ptr noundef %385, i32 noundef 1) #31
  %387 = getelementptr inbounds %struct._K_str, ptr %222, i64 0, i32 4
  store ptr %386, ptr %387, align 8, !tbaa !27
  %388 = load i32, ptr @_P_next_tol, align 4, !tbaa !7
  %389 = call ptr (i32, ...) @T_gettol(i32 noundef %388) #31
  %390 = getelementptr inbounds %struct._K_str, ptr %222, i64 0, i32 5
  store ptr %389, ptr %390, align 8, !tbaa !28
  br label %391

391:                                              ; preds = %384, %377
  %392 = load i32, ptr @_P_next_tol, align 4, !tbaa !7
  %393 = call i32 @T_moretols(i32 noundef %392) #31
  %394 = icmp eq i32 %393, 0
  br i1 %394, label %398, label %395

395:                                              ; preds = %391
  %396 = load i32, ptr @_P_next_tol, align 4, !tbaa !7
  %397 = add nsw i32 %396, 1
  store i32 %397, ptr @_P_next_tol, align 4, !tbaa !7
  br label %398

398:                                              ; preds = %395, %391
  %399 = load ptr, ptr @_P_nextchr, align 8, !tbaa !11
  %400 = sext i32 %375 to i64
  %401 = getelementptr inbounds i8, ptr %399, i64 %400
  store ptr %401, ptr @_P_nextchr, align 8, !tbaa !11
  br label %473

402:                                              ; preds = %370
  %403 = tail call ptr @__ctype_b_loc() #35
  %404 = load ptr, ptr %403, align 8, !tbaa !11
  %405 = load ptr, ptr @_P_nextchr, align 8, !tbaa !11
  %406 = load i8, ptr %405, align 1, !tbaa !15
  %407 = sext i8 %406 to i32
  %408 = sext i8 %406 to i64
  %409 = getelementptr inbounds i16, ptr %404, i64 %408
  %410 = load i16, ptr %409, align 2, !tbaa !39
  %411 = zext i16 %410 to i32
  %412 = and i32 %411, 2048
  %413 = icmp eq i32 %412, 0
  br i1 %413, label %431, label %414

414:                                              ; preds = %414, %402
  %415 = phi ptr [ %423, %414 ], [ %405, %402 ]
  store ptr %415, ptr %5, align 8, !tbaa !11
  %416 = load ptr, ptr %403, align 8, !tbaa !11
  %417 = load i8, ptr %415, align 1, !tbaa !15
  %418 = sext i8 %417 to i64
  %419 = getelementptr inbounds i16, ptr %416, i64 %418
  %420 = load i16, ptr %419, align 2, !tbaa !39
  %421 = and i16 %420, 2048
  %422 = icmp eq i16 %421, 0
  %423 = getelementptr inbounds i8, ptr %415, i64 1
  br i1 %422, label %424, label %414, !llvm.loop !89

424:                                              ; preds = %414
  %.lcssa = phi ptr [ %415, %414 ]
  %425 = getelementptr inbounds %struct._K_str, ptr %222, i64 0, i32 3
  %426 = ptrtoint ptr %.lcssa to i64
  %427 = ptrtoint ptr %405 to i64
  %428 = sub i64 %426, %427
  call void (ptr, ptr, i64, ...) @S_savenstr(ptr noundef nonnull %425, ptr noundef nonnull %405, i64 noundef %428) #31
  %429 = getelementptr inbounds %struct._K_str, ptr %222, i64 0, i32 2
  store i32 1, ptr %429, align 8, !tbaa !26
  %430 = load ptr, ptr %5, align 8, !tbaa !11
  store ptr %430, ptr @_P_nextchr, align 8, !tbaa !11
  br label %473

431:                                              ; preds = %402
  %432 = and i32 %411, 1024
  %433 = icmp eq i32 %432, 0
  br i1 %433, label %434, label %441

434:                                              ; preds = %431
  %435 = icmp eq i8 %406, 0
  br i1 %435, label %468, label %436

436:                                              ; preds = %434
  %437 = call ptr @index(ptr noundef nonnull @_P_alpha, i32 noundef %407) #33
  %438 = ptrtoint ptr %437 to i64
  %439 = and i64 %438, 4294967295
  %440 = icmp eq i64 %439, 0
  br i1 %440, label %468, label %441

441:                                              ; preds = %436, %431
  br label %442

442:                                              ; preds = %459, %441
  %443 = phi ptr [ %460, %459 ], [ %405, %441 ]
  store ptr %443, ptr %5, align 8, !tbaa !11
  %444 = load ptr, ptr %403, align 8, !tbaa !11
  %445 = load i8, ptr %443, align 1, !tbaa !15
  %446 = sext i8 %445 to i64
  %447 = getelementptr inbounds i16, ptr %444, i64 %446
  %448 = load i16, ptr %447, align 2, !tbaa !39
  %449 = and i16 %448, 3072
  %450 = icmp eq i16 %449, 0
  br i1 %450, label %451, label %459

451:                                              ; preds = %442
  %452 = icmp eq i8 %445, 0
  br i1 %452, label %461, label %453

453:                                              ; preds = %451
  %454 = sext i8 %445 to i32
  %455 = call ptr @index(ptr noundef nonnull @_P_alpha, i32 noundef %454) #33
  %456 = ptrtoint ptr %455 to i64
  %457 = and i64 %456, 4294967295
  %458 = icmp eq i64 %457, 0
  br i1 %458, label %461, label %459

459:                                              ; preds = %453, %442
  %460 = getelementptr inbounds i8, ptr %443, i64 1
  br label %442, !llvm.loop !90

461:                                              ; preds = %453, %451
  %.lcssa1 = phi ptr [ %443, %453 ], [ %443, %451 ]
  %462 = getelementptr inbounds %struct._K_str, ptr %222, i64 0, i32 3
  %463 = ptrtoint ptr %.lcssa1 to i64
  %464 = ptrtoint ptr %405 to i64
  %465 = sub i64 %463, %464
  call void (ptr, ptr, i64, ...) @S_savenstr(ptr noundef nonnull %462, ptr noundef nonnull %405, i64 noundef %465) #31
  %466 = getelementptr inbounds %struct._K_str, ptr %222, i64 0, i32 2
  store i32 1, ptr %466, align 8, !tbaa !26
  %467 = load ptr, ptr %5, align 8, !tbaa !11
  store ptr %467, ptr @_P_nextchr, align 8, !tbaa !11
  br label %473

468:                                              ; preds = %436, %434
  %469 = getelementptr inbounds %struct._K_str, ptr %222, i64 0, i32 3
  call void (ptr, ptr, i32, ...) @S_savenstr(ptr noundef nonnull %469, ptr noundef nonnull %405, i32 noundef 1) #31
  %470 = getelementptr inbounds %struct._K_str, ptr %222, i64 0, i32 2
  store i32 1, ptr %470, align 8, !tbaa !26
  %471 = load ptr, ptr @_P_nextchr, align 8, !tbaa !11
  %472 = getelementptr inbounds i8, ptr %471, i64 1
  store ptr %472, ptr @_P_nextchr, align 8, !tbaa !11
  br label %473

473:                                              ; preds = %468, %461, %424, %398, %367
  %474 = phi i32 [ %300, %367 ], [ 0, %398 ], [ 0, %424 ], [ 0, %461 ], [ 0, %468 ]
  %475 = load i32, ptr @_P_fnumb, align 4, !tbaa !7
  %476 = icmp eq i32 %475, 0
  %477 = load i32, ptr @_K_btm, align 4
  %478 = load i32, ptr @_K_atm, align 4
  %479 = select i1 %476, i32 %478, i32 %477
  call void (i32, i32, ptr, ...) @K_settoken(i32 noundef %475, i32 noundef %479, ptr noundef nonnull %222) #31
  %480 = load i32, ptr @_P_fnumb, align 4, !tbaa !7
  %481 = icmp eq i32 %480, 0
  br i1 %481, label %490, label %482

482:                                              ; preds = %473
  %483 = load i32, ptr @_L_btlm, align 4
  %484 = sext i32 %483 to i64
  %485 = getelementptr inbounds [0 x i32], ptr @_L_bc, i64 0, i64 %484
  %486 = load i32, ptr %485, align 4, !tbaa !7
  %487 = add nsw i32 %486, 1
  store i32 %487, ptr %485, align 4, !tbaa !7
  %488 = load i32, ptr @_K_btm, align 4, !tbaa !7
  %489 = add nsw i32 %488, 1
  store i32 %489, ptr @_K_btm, align 4, !tbaa !7
  br label %498

490:                                              ; preds = %473
  %491 = load i32, ptr @_L_atlm, align 4
  %492 = sext i32 %491 to i64
  %493 = getelementptr inbounds [0 x i32], ptr @_L_ac, i64 0, i64 %492
  %494 = load i32, ptr %493, align 4, !tbaa !7
  %495 = add nsw i32 %494, 1
  store i32 %495, ptr %493, align 4, !tbaa !7
  %496 = load i32, ptr @_K_atm, align 4, !tbaa !7
  %497 = add nsw i32 %496, 1
  store i32 %497, ptr @_K_atm, align 4, !tbaa !7
  br label %498

498:                                              ; preds = %490, %482
  %499 = phi i32 [ %489, %482 ], [ %497, %490 ]
  %500 = icmp sgt i32 %499, 49999
  br i1 %500, label %501, label %503

501:                                              ; preds = %498
  %502 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @Z_err_buf, ptr noundef nonnull dereferenceable(1) @.str.2.87, i32 noundef 50000) #31
  call void (ptr, ...) @Z_complain(ptr noundef nonnull @Z_err_buf) #31
  br label %514

503:                                              ; preds = %498
  %504 = load i32, ptr @_K_btm, align 4
  %505 = load i32, ptr @_K_atm, align 4
  %506 = select i1 %481, i32 %505, i32 %504
  %507 = srem i32 %506, 1000
  %508 = icmp eq i32 %507, 0
  br i1 %508, label %509, label %512

509:                                              ; preds = %503
  %510 = add nsw i32 %480, 1
  %511 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @Z_err_buf, ptr noundef nonnull dereferenceable(1) @.str.3.88, i32 noundef %506, i32 noundef %510) #31
  call void (ptr, ...) @Z_chatter(ptr noundef nonnull @Z_err_buf) #31
  br label %512

512:                                              ; preds = %509, %503
  %513 = icmp eq i32 %474, 0
  br i1 %513, label %100, label %514

514:                                              ; preds = %512, %501, %121, %42, %20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #34
  %515 = load i1, ptr @_P_has_content, align 4
  br i1 %515, label %516, label %539

516:                                              ; preds = %514
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(36) @Z_err_buf, ptr noundef nonnull align 1 dereferenceable(36) @.str.1.89, i64 36, i1 false)
  call void (ptr, ...) @Z_complain(ptr noundef nonnull @Z_err_buf) #31
  %517 = load i32, ptr @_P_fnumb, align 4, !tbaa !7
  %518 = icmp eq i32 %517, 0
  br i1 %518, label %527, label %519

519:                                              ; preds = %516
  %520 = load i32, ptr @_L_bclm, align 4, !tbaa !7
  %521 = add nsw i32 %520, 1
  store i32 %521, ptr @_L_bclm, align 4, !tbaa !7
  %522 = load i32, ptr @_L_btlm, align 4
  %523 = sext i32 %522 to i64
  %524 = getelementptr inbounds [0 x i32], ptr @_L_bc, i64 0, i64 %523
  %525 = load i32, ptr %524, align 4, !tbaa !7
  %526 = icmp eq i32 %525, 0
  br i1 %526, label %539, label %535

527:                                              ; preds = %516
  %528 = load i32, ptr @_L_aclm, align 4, !tbaa !7
  %529 = add nsw i32 %528, 1
  store i32 %529, ptr @_L_aclm, align 4, !tbaa !7
  %530 = load i32, ptr @_L_atlm, align 4
  %531 = sext i32 %530 to i64
  %532 = getelementptr inbounds [0 x i32], ptr @_L_ac, i64 0, i64 %531
  %533 = load i32, ptr %532, align 4, !tbaa !7
  %534 = icmp eq i32 %533, 0
  br i1 %534, label %539, label %535

535:                                              ; preds = %527, %519
  %536 = phi i32 [ %522, %519 ], [ %530, %527 ]
  %537 = phi ptr [ @_L_btlm, %519 ], [ @_L_atlm, %527 ]
  %538 = add nsw i32 %536, 1
  store i32 %538, ptr %537, align 4, !tbaa !7
  br label %539

539:                                              ; preds = %535, %527, %519, %514
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @_P_nextline() unnamed_addr #0 {
  %1 = load i1, ptr @_P_has_content, align 4
  br i1 %1, label %2, label %31

2:                                                ; preds = %0
  %3 = load i32, ptr @_P_fnumb, align 4, !tbaa !7
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %13, label %5

5:                                                ; preds = %2
  %6 = load i32, ptr @_L_bclm, align 4, !tbaa !7
  %7 = add nsw i32 %6, 1
  store i32 %7, ptr @_L_bclm, align 4, !tbaa !7
  %8 = load i32, ptr @_L_btlm, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [0 x i32], ptr @_L_bc, i64 0, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !7
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %30, label %21

13:                                               ; preds = %2
  %14 = load i32, ptr @_L_aclm, align 4, !tbaa !7
  %15 = add nsw i32 %14, 1
  store i32 %15, ptr @_L_aclm, align 4, !tbaa !7
  %16 = load i32, ptr @_L_atlm, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [0 x i32], ptr @_L_ac, i64 0, i64 %17
  %19 = load i32, ptr %18, align 4, !tbaa !7
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %30, label %23

21:                                               ; preds = %5
  %22 = add nsw i32 %8, 1
  store i32 %22, ptr @_L_btlm, align 4, !tbaa !7
  br label %25

23:                                               ; preds = %13
  %24 = add nsw i32 %16, 1
  store i32 %24, ptr @_L_atlm, align 4, !tbaa !7
  br label %25

25:                                               ; preds = %23, %21
  %26 = phi i32 [ %22, %21 ], [ %24, %23 ]
  %27 = phi ptr [ @_L_bc, %21 ], [ @_L_ac, %23 ]
  %28 = sext i32 %26 to i64
  %29 = getelementptr inbounds [0 x i32], ptr %27, i64 0, i64 %28
  store i32 0, ptr %29, align 4, !tbaa !7
  br label %30

30:                                               ; preds = %25, %13, %5
  store i1 false, ptr @_P_has_content, align 4
  br label %31

31:                                               ; preds = %30, %0
  store i32 0, ptr @_P_next_tol, align 4, !tbaa !7
  %32 = load i32, ptr @_P_realline, align 4, !tbaa !7
  %33 = add nsw i32 %32, 1
  store i32 %33, ptr @_P_realline, align 4, !tbaa !7
  %34 = load i32, ptr @_P_start, align 4, !tbaa !7
  %35 = load i32, ptr @_P_lcount, align 4, !tbaa !7
  %36 = add nsw i32 %35, %34
  %37 = icmp slt i32 %33, %36
  br i1 %37, label %38, label %62

38:                                               ; preds = %31
  %39 = load i32, ptr @_P_fnumb, align 4, !tbaa !7
  %40 = icmp eq i32 %39, 0
  %41 = sext i32 %33 to i64
  %42 = getelementptr inbounds [0 x ptr], ptr @_L_bl, i64 0, i64 %41
  %43 = getelementptr inbounds [0 x ptr], ptr @_L_al, i64 0, i64 %41
  %44 = select i1 %40, ptr %43, ptr %42
  %45 = load ptr, ptr %44, align 8, !tbaa !11
  store ptr %45, ptr @_P_nextchr, align 8, !tbaa !11
  store ptr %45, ptr @_P_firstchr, align 8, !tbaa !11
  %46 = tail call i32 (ptr, ...) @C_is_cmd(ptr noundef %45) #31
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %38
  store ptr @_P_dummyline, ptr @_P_nextchr, align 8, !tbaa !11
  br label %61

49:                                               ; preds = %38
  %50 = load i32, ptr @_P_fnumb, align 4, !tbaa !7
  %51 = icmp eq i32 %50, 0
  %52 = load i32, ptr @_P_realline, align 4, !tbaa !7
  br i1 %51, label %57, label %53

53:                                               ; preds = %49
  %54 = load i32, ptr @_L_bclm, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [0 x i32], ptr @_L_bclindex, i64 0, i64 %55
  store i32 %52, ptr %56, align 4, !tbaa !7
  br label %61

57:                                               ; preds = %49
  %58 = load i32, ptr @_L_aclm, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [0 x i32], ptr @_L_aclindex, i64 0, i64 %59
  store i32 %52, ptr %60, align 4, !tbaa !7
  br label %61

61:                                               ; preds = %57, %53, %48
  store i1 %47, ptr @_P_has_content, align 4
  br label %62

62:                                               ; preds = %61, %31
  %63 = phi i32 [ 0, %61 ], [ 1, %31 ]
  ret i32 %63
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite)
declare ptr @strncat(ptr noalias noundef returned, ptr noalias nocapture noundef readonly, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(read)
declare ptr @index(ptr noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: nounwind optsize uwtable
define dso_local i32 @main(i32 noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca [1024 x i8], align 16
  %4 = alloca [1024 x i8], align 16
  %5 = alloca [2 x ptr], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #34
  %6 = getelementptr inbounds [2 x ptr], ptr %5, i64 0, i64 1
  %7 = icmp sgt i32 %0, 1
  br i1 %7, label %8, label %143

8:                                                ; preds = %134, %2
  %9 = phi i32 [ %135, %134 ], [ -1, %2 ]
  %10 = phi i32 [ %139, %134 ], [ %0, %2 ]
  %11 = phi ptr [ %138, %134 ], [ %1, %2 ]
  %12 = getelementptr inbounds ptr, ptr %11, i64 1
  %13 = load ptr, ptr %12, align 8, !tbaa !11
  %14 = load i8, ptr %13, align 1, !tbaa !15
  %15 = icmp eq i8 %14, 45
  br i1 %15, label %16, label %141

16:                                               ; preds = %8
  %17 = getelementptr inbounds i8, ptr %13, i64 1
  %18 = load i8, ptr %17, align 1, !tbaa !15
  %19 = sext i8 %18 to i32
  switch i32 %19, label %133 [
    i32 116, label %20
    i32 119, label %23
    i32 98, label %26
    i32 99, label %29
    i32 100, label %32
    i32 109, label %35
    i32 97, label %38
    i32 114, label %51
    i32 105, label %64
    i32 101, label %65
    i32 118, label %66
    i32 113, label %67
    i32 115, label %68
    i32 102, label %103
    i32 67, label %126
    i32 83, label %127
    i32 70, label %128
    i32 76, label %129
    i32 77, label %130
    i32 48, label %131
    i32 49, label %131
    i32 50, label %131
    i32 51, label %131
    i32 52, label %131
    i32 53, label %131
    i32 54, label %131
    i32 55, label %131
    i32 56, label %131
    i32 57, label %131
  ]

20:                                               ; preds = %16
  %21 = load i32, ptr @_Y_flags, align 4, !tbaa !7
  %22 = or i32 %21, 8
  store i32 %22, ptr @_Y_flags, align 4, !tbaa !7
  br label %134

23:                                               ; preds = %16
  %24 = load i32, ptr @_Y_flags, align 4, !tbaa !7
  %25 = or i32 %24, 1
  store i32 %25, ptr @_Y_flags, align 4, !tbaa !7
  br label %134

26:                                               ; preds = %16
  %27 = load i32, ptr @_Y_flags, align 4, !tbaa !7
  %28 = or i32 %27, 2
  store i32 %28, ptr @_Y_flags, align 4, !tbaa !7
  br label %134

29:                                               ; preds = %16
  %30 = load i32, ptr @_Y_flags, align 4, !tbaa !7
  %31 = or i32 %30, 4
  store i32 %31, ptr @_Y_flags, align 4, !tbaa !7
  br label %134

32:                                               ; preds = %16
  %33 = load i32, ptr @_Y_flags, align 4, !tbaa !7
  %34 = or i32 %33, 32
  store i32 %34, ptr @_Y_flags, align 4, !tbaa !7
  br label %134

35:                                               ; preds = %16
  %36 = load i32, ptr @_Y_flags, align 4, !tbaa !7
  %37 = or i32 %36, 16
  store i32 %37, ptr @_Y_flags, align 4, !tbaa !7
  br label %134

38:                                               ; preds = %16
  %39 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %13) #33
  %40 = icmp eq i64 %39, 2
  br i1 %40, label %41, label %45

41:                                               ; preds = %38
  %42 = add nsw i32 %10, -1
  %43 = getelementptr inbounds ptr, ptr %11, i64 2
  %44 = load ptr, ptr %43, align 8, !tbaa !11
  br label %47

45:                                               ; preds = %38
  %46 = getelementptr inbounds i8, ptr %13, i64 2
  br label %47

47:                                               ; preds = %45, %41
  %48 = phi ptr [ %12, %41 ], [ %11, %45 ]
  %49 = phi ptr [ %44, %41 ], [ %46, %45 ]
  %50 = phi i32 [ %42, %41 ], [ %10, %45 ]
  call void (ptr, i32, ptr, ...) @_T_addtol(ptr noundef nonnull @_T_gtol, i32 noundef 0, ptr noundef %49) #31
  br label %134

51:                                               ; preds = %16
  %52 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %13) #33
  %53 = icmp eq i64 %52, 2
  br i1 %53, label %54, label %58

54:                                               ; preds = %51
  %55 = add nsw i32 %10, -1
  %56 = getelementptr inbounds ptr, ptr %11, i64 2
  %57 = load ptr, ptr %56, align 8, !tbaa !11
  br label %60

58:                                               ; preds = %51
  %59 = getelementptr inbounds i8, ptr %13, i64 2
  br label %60

60:                                               ; preds = %58, %54
  %61 = phi ptr [ %12, %54 ], [ %11, %58 ]
  %62 = phi ptr [ %57, %54 ], [ %59, %58 ]
  %63 = phi i32 [ %55, %54 ], [ %10, %58 ]
  call void (ptr, i32, ptr, ...) @_T_addtol(ptr noundef nonnull @_T_gtol, i32 noundef 1, ptr noundef %62) #31
  br label %134

64:                                               ; preds = %16
  call void (ptr, i32, ptr, ...) @_T_addtol(ptr noundef nonnull @_T_gtol, i32 noundef 2, ptr noundef null) #31
  br label %134

65:                                               ; preds = %16
  store i1 true, ptr @_Y_eflag, align 4
  br label %134

66:                                               ; preds = %16
  store i1 true, ptr @_Y_vflag, align 4
  br label %134

67:                                               ; preds = %16
  call void (...) @Z_setquiet() #31
  br label %134

68:                                               ; preds = %16
  %69 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %13) #33
  %70 = icmp eq i64 %69, 2
  br i1 %70, label %71, label %75

71:                                               ; preds = %68
  %72 = add nsw i32 %10, -1
  %73 = getelementptr inbounds ptr, ptr %11, i64 2
  %74 = load ptr, ptr %73, align 8, !tbaa !11
  br label %77

75:                                               ; preds = %68
  %76 = getelementptr inbounds i8, ptr %13, i64 2
  br label %77

77:                                               ; preds = %75, %71
  %78 = phi ptr [ %12, %71 ], [ %11, %75 ]
  %79 = phi ptr [ %74, %71 ], [ %76, %75 ]
  %80 = phi i32 [ %72, %71 ], [ %10, %75 ]
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %3) #34
  %81 = load i8, ptr %79, align 1, !tbaa !15
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %102, label %83

83:                                               ; preds = %91, %77
  %84 = phi i8 [ %92, %91 ], [ %81, %77 ]
  %85 = phi ptr [ %93, %91 ], [ %79, %77 ]
  %86 = phi ptr [ %94, %91 ], [ %3, %77 ]
  switch i8 %84, label %87 [
    i8 0, label %95
    i8 10, label %95
  ]

87:                                               ; preds = %83
  %88 = getelementptr inbounds i8, ptr %85, i64 1
  %89 = getelementptr inbounds i8, ptr %86, i64 1
  store i8 %84, ptr %86, align 1, !tbaa !15
  %90 = load i8, ptr %88, align 1, !tbaa !15
  br label %91

91:                                               ; preds = %95, %87
  %92 = phi i8 [ %90, %87 ], [ %100, %95 ]
  %93 = phi ptr [ %88, %87 ], [ %99, %95 ]
  %94 = phi ptr [ %89, %87 ], [ %3, %95 ]
  br label %83, !llvm.loop !91

95:                                               ; preds = %83, %83
  store i8 0, ptr %86, align 1, !tbaa !15
  call void (ptr, ...) @C_addcmd(ptr noundef nonnull %3) #31
  %96 = load i8, ptr %85, align 1, !tbaa !15
  %97 = icmp eq i8 %96, 10
  %98 = zext i1 %97 to i64
  %99 = getelementptr inbounds i8, ptr %85, i64 %98
  %100 = load i8, ptr %99, align 1, !tbaa !15
  %101 = icmp eq i8 %100, 0
  br i1 %101, label %102, label %91

102:                                              ; preds = %95, %77
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %3) #34
  br label %134

103:                                              ; preds = %16
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %4) #34
  %104 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %13) #33
  %105 = icmp eq i64 %104, 2
  br i1 %105, label %106, label %110

106:                                              ; preds = %103
  %107 = add nsw i32 %10, -1
  %108 = getelementptr inbounds ptr, ptr %11, i64 2
  %109 = load ptr, ptr %108, align 8, !tbaa !11
  br label %112

110:                                              ; preds = %103
  %111 = getelementptr inbounds i8, ptr %13, i64 2
  br label %112

112:                                              ; preds = %110, %106
  %113 = phi ptr [ %12, %106 ], [ %11, %110 ]
  %114 = phi ptr [ %109, %106 ], [ %111, %110 ]
  %115 = phi i32 [ %107, %106 ], [ %10, %110 ]
  %116 = call noalias ptr @fopen(ptr noundef %114, ptr noundef nonnull @.str.90) #32
  %117 = icmp eq ptr %116, null
  br i1 %117, label %118, label %119

118:                                              ; preds = %112
  call void (ptr, ...) @Z_fatal(ptr noundef nonnull @.str.1.91) #31
  br label %119

119:                                              ; preds = %118, %112
  br label %120

120:                                              ; preds = %123, %119
  %121 = call ptr @fgets(ptr noundef nonnull %4, i32 noundef 1024, ptr noundef %116) #32
  %122 = icmp eq ptr %121, null
  br i1 %122, label %124, label %123

123:                                              ; preds = %120
  call void (ptr, ...) @C_addcmd(ptr noundef nonnull %4) #31
  br label %120, !llvm.loop !92

124:                                              ; preds = %120
  %125 = call i32 @fclose(ptr noundef %116) #32
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %4) #34
  br label %134

126:                                              ; preds = %16
  call void (ptr, ...) @C_addcmd(ptr noundef nonnull @.str.2.92) #31
  call void (ptr, ...) @C_addcmd(ptr noundef nonnull @.str.3.93) #31
  call void (ptr, ...) @C_addcmd(ptr noundef nonnull @.str.4.94) #31
  call void (ptr, ...) @C_addcmd(ptr noundef nonnull @.str.5.95) #31
  call void (ptr, ...) @C_addcmd(ptr noundef nonnull @.str.6.96) #31
  call void (ptr, ...) @C_addcmd(ptr noundef nonnull @.str.7.97) #31
  call void (ptr, ...) @C_addcmd(ptr noundef nonnull @.str.8.98) #31
  call void (ptr, ...) @C_addcmd(ptr noundef nonnull @.str.9.99) #31
  call void (ptr, ...) @C_addcmd(ptr noundef nonnull @.str.10.100) #31
  call void (ptr, ...) @C_addcmd(ptr noundef nonnull @.str.11.101) #31
  call void (ptr, ...) @C_addcmd(ptr noundef nonnull @.str.12.102) #31
  call void (ptr, ...) @C_addcmd(ptr noundef nonnull @.str.13.103) #31
  call void (ptr, ...) @C_addcmd(ptr noundef nonnull @.str.14.104) #31
  call void (ptr, ...) @C_addcmd(ptr noundef nonnull @.str.15.105) #31
  call void (ptr, ...) @C_addcmd(ptr noundef nonnull @.str.16.106) #31
  br label %134

127:                                              ; preds = %16
  call void (ptr, ...) @C_addcmd(ptr noundef nonnull @.str.17.107) #31
  call void (ptr, ...) @C_addcmd(ptr noundef nonnull @.str.18) #31
  call void (ptr, ...) @C_addcmd(ptr noundef nonnull @.str.19) #31
  br label %134

128:                                              ; preds = %16
  call void (ptr, ...) @C_addcmd(ptr noundef nonnull @.str.20) #31
  call void (ptr, ...) @C_addcmd(ptr noundef nonnull @.str.21) #31
  call void (ptr, ...) @C_addcmd(ptr noundef nonnull @.str.19) #31
  br label %134

129:                                              ; preds = %16
  call void (ptr, ...) @C_addcmd(ptr noundef nonnull @.str.22) #31
  call void (ptr, ...) @C_addcmd(ptr noundef nonnull @.str.23) #31
  call void (ptr, ...) @C_addcmd(ptr noundef nonnull @.str.19) #31
  br label %134

130:                                              ; preds = %16
  call void (ptr, ...) @C_addcmd(ptr noundef nonnull @.str.24) #31
  call void (ptr, ...) @C_addcmd(ptr noundef nonnull @.str.25) #31
  call void (ptr, ...) @C_addcmd(ptr noundef nonnull @.str.26) #31
  call void (ptr, ...) @C_addcmd(ptr noundef nonnull @.str.27) #31
  call void (ptr, ...) @C_addcmd(ptr noundef nonnull @.str.28.108) #31
  call void (ptr, ...) @C_addcmd(ptr noundef nonnull @.str.29.109) #31
  call void (ptr, ...) @C_addcmd(ptr noundef nonnull @.str.30.110) #31
  call void (ptr, ...) @C_addcmd(ptr noundef nonnull @.str.19) #31
  br label %134

131:                                              ; preds = %16, %16, %16, %16, %16, %16, %16, %16, %16, %16
  %132 = call i32 @atoi(ptr nocapture noundef nonnull %17) #33
  br label %134

133:                                              ; preds = %16
  call void (ptr, ...) @Z_fatal(ptr noundef nonnull @.str.31) #31
  br label %134

134:                                              ; preds = %133, %131, %130, %129, %128, %127, %126, %124, %102, %67, %66, %65, %64, %60, %47, %35, %32, %29, %26, %23, %20
  %135 = phi i32 [ %9, %133 ], [ %132, %131 ], [ %9, %130 ], [ %9, %129 ], [ %9, %128 ], [ %9, %127 ], [ %9, %126 ], [ %9, %124 ], [ %9, %102 ], [ %9, %67 ], [ %9, %66 ], [ %9, %65 ], [ %9, %64 ], [ %9, %60 ], [ %9, %47 ], [ %9, %35 ], [ %9, %32 ], [ %9, %29 ], [ %9, %26 ], [ %9, %23 ], [ %9, %20 ]
  %136 = phi ptr [ %11, %133 ], [ %11, %131 ], [ %11, %130 ], [ %11, %129 ], [ %11, %128 ], [ %11, %127 ], [ %11, %126 ], [ %113, %124 ], [ %78, %102 ], [ %11, %67 ], [ %11, %66 ], [ %11, %65 ], [ %11, %64 ], [ %61, %60 ], [ %48, %47 ], [ %11, %35 ], [ %11, %32 ], [ %11, %29 ], [ %11, %26 ], [ %11, %23 ], [ %11, %20 ]
  %137 = phi i32 [ %10, %133 ], [ %10, %131 ], [ %10, %130 ], [ %10, %129 ], [ %10, %128 ], [ %10, %127 ], [ %10, %126 ], [ %115, %124 ], [ %80, %102 ], [ %10, %67 ], [ %10, %66 ], [ %10, %65 ], [ %10, %64 ], [ %63, %60 ], [ %50, %47 ], [ %10, %35 ], [ %10, %32 ], [ %10, %29 ], [ %10, %26 ], [ %10, %23 ], [ %10, %20 ]
  %138 = getelementptr inbounds ptr, ptr %136, i64 1
  %139 = add nsw i32 %137, -1
  %140 = icmp sgt i32 %137, 2
  br i1 %140, label %8, label %143, !llvm.loop !93

141:                                              ; preds = %8
  %.lcssa4 = phi i32 [ %9, %8 ]
  %.lcssa3 = phi i32 [ %10, %8 ]
  %.lcssa2 = phi ptr [ %11, %8 ]
  %.lcssa1 = phi ptr [ %13, %8 ]
  %142 = icmp eq i32 %.lcssa3, 3
  br i1 %142, label %148, label %143

143:                                              ; preds = %141, %134, %2
  %144 = phi i32 [ %.lcssa4, %141 ], [ -1, %2 ], [ %135, %134 ]
  %145 = phi ptr [ %.lcssa2, %141 ], [ %1, %2 ], [ %138, %134 ]
  call void (ptr, ...) @Z_fatal(ptr noundef nonnull @.str.32) #31
  %146 = getelementptr inbounds ptr, ptr %145, i64 1
  %147 = load ptr, ptr %146, align 8, !tbaa !11
  br label %148

148:                                              ; preds = %143, %141
  %149 = phi i32 [ %144, %143 ], [ %.lcssa4, %141 ]
  %150 = phi ptr [ %147, %143 ], [ %.lcssa1, %141 ]
  %151 = phi ptr [ %145, %143 ], [ %.lcssa2, %141 ]
  store ptr %150, ptr %5, align 16, !tbaa !11
  %152 = getelementptr inbounds ptr, ptr %151, i64 2
  %153 = load ptr, ptr %152, align 8, !tbaa !11
  store ptr %153, ptr %6, align 8, !tbaa !11
  call void (...) @T_initdefault() #31
  br label %154

154:                                              ; preds = %154, %148
  %155 = phi i1 [ true, %148 ], [ false, %154 ]
  %156 = phi i64 [ 0, %148 ], [ 1, %154 ]
  %157 = getelementptr inbounds [2 x ptr], ptr %5, i64 0, i64 %156
  %158 = load ptr, ptr %157, align 8, !tbaa !11
  %159 = trunc i64 %156 to i32
  %160 = call i32 @L_init_file(i32 noundef %159, ptr noundef %158) #31
  %161 = select i1 %155, ptr @_K_atm, ptr @_K_btm
  store i32 0, ptr %161, align 4, !tbaa !7
  %162 = load i32, ptr @_L_brlm, align 4
  %163 = load i32, ptr @_L_arlm, align 4
  %164 = select i1 %155, i32 %163, i32 %162
  %165 = load i32, ptr @_Y_flags, align 4, !tbaa !7
  call void (i32, i32, i32, i32, ...) @P_file_parse(i32 noundef %159, i32 noundef 0, i32 noundef %164, i32 noundef %165) #31
  br i1 %155, label %154, label %166, !llvm.loop !94

166:                                              ; preds = %154
  %167 = load i1, ptr @_Y_vflag, align 4
  br i1 %167, label %168, label %171

168:                                              ; preds = %166
  %169 = load i32, ptr @_Y_flags, align 4, !tbaa !7
  %170 = call i32 @V_visual(i32 noundef %169) #31
  br label %195

171:                                              ; preds = %166
  %172 = icmp eq i32 %149, -1
  %173 = load i32, ptr @_K_atm, align 4
  %174 = load i32, ptr @_K_btm, align 4
  %175 = add nsw i32 %174, %173
  %176 = select i1 %172, i32 %175, i32 %149
  br label %177

177:                                              ; preds = %187, %171
  %178 = phi i32 [ 0, %171 ], [ %189, %187 ]
  %179 = load i1, ptr @_Y_eflag, align 4
  %180 = load i32, ptr @_K_atm, align 4, !tbaa !7
  %181 = load i32, ptr @_K_btm, align 4, !tbaa !7
  %182 = load i32, ptr @_Y_flags, align 4, !tbaa !7
  br i1 %179, label %183, label %185

183:                                              ; preds = %177
  %184 = call ptr (i32, i32, i32, i32, ...) @Q_do_exact(i32 noundef %180, i32 noundef %181, i32 noundef %176, i32 noundef %182) #31
  br label %187

185:                                              ; preds = %177
  %186 = call ptr (i32, i32, i32, i32, ...) @G_do_miller(i32 noundef %180, i32 noundef %181, i32 noundef %176, i32 noundef %182) #31
  br label %187

187:                                              ; preds = %185, %183
  %188 = phi ptr [ %184, %183 ], [ %186, %185 ]
  %189 = add nuw nsw i32 %178, 1
  %190 = icmp eq i32 %189, 30001
  br i1 %190, label %191, label %177, !llvm.loop !95

191:                                              ; preds = %187
  %.lcssa = phi ptr [ %188, %187 ]
  %192 = icmp eq ptr %.lcssa, null
  br i1 %192, label %195, label %193

193:                                              ; preds = %191
  %194 = load i32, ptr @_Y_flags, align 4, !tbaa !7
  call void (ptr, i32, ...) @O_output(ptr noundef nonnull %.lcssa, i32 noundef %194) #31
  br label %195

195:                                              ; preds = %193, %191, %168
  %196 = phi i32 [ %170, %168 ], [ 1, %193 ], [ 0, %191 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #34
  ret i32 %196
}

; Function Attrs: nofree nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal void @S_wordcpy(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) #23 {
  %3 = load i8, ptr %1, align 1, !tbaa !15
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %22, label %5

5:                                                ; preds = %2
  %6 = tail call ptr @__ctype_b_loc() #35
  br label %7

7:                                                ; preds = %17, %5
  %8 = phi i8 [ %3, %5 ], [ %20, %17 ]
  %9 = phi ptr [ %1, %5 ], [ %18, %17 ]
  %10 = phi ptr [ %0, %5 ], [ %19, %17 ]
  %11 = load ptr, ptr %6, align 8, !tbaa !11
  %12 = sext i8 %8 to i64
  %13 = getelementptr inbounds i16, ptr %11, i64 %12
  %14 = load i16, ptr %13, align 2, !tbaa !39
  %15 = and i16 %14, 24576
  %16 = icmp eq i16 %15, 16384
  br i1 %16, label %17, label %22

17:                                               ; preds = %7
  %18 = getelementptr inbounds i8, ptr %9, i64 1
  %19 = getelementptr inbounds i8, ptr %10, i64 1
  store i8 %8, ptr %10, align 1, !tbaa !15
  %20 = load i8, ptr %18, align 1, !tbaa !15
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %7, !llvm.loop !96

22:                                               ; preds = %17, %7, %2
  %23 = phi ptr [ %0, %2 ], [ %10, %7 ], [ %19, %17 ]
  store i8 0, ptr %23, align 1, !tbaa !15
  ret void
}

; Function Attrs: nofree nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @S_skipword(ptr nocapture noundef %0) #24 {
  %2 = load ptr, ptr %0, align 8, !tbaa !11
  %3 = load i8, ptr %2, align 1, !tbaa !15
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %20, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @__ctype_b_loc() #35
  br label %7

7:                                                ; preds = %16, %5
  %8 = phi i8 [ %3, %5 ], [ %18, %16 ]
  %9 = phi ptr [ %2, %5 ], [ %17, %16 ]
  %10 = load ptr, ptr %6, align 8, !tbaa !11
  %11 = sext i8 %8 to i64
  %12 = getelementptr inbounds i16, ptr %10, i64 %11
  %13 = load i16, ptr %12, align 2, !tbaa !39
  %14 = and i16 %13, 24576
  %15 = icmp eq i16 %14, 16384
  br i1 %15, label %16, label %20

16:                                               ; preds = %7
  %17 = getelementptr inbounds i8, ptr %9, i64 1
  store ptr %17, ptr %0, align 8, !tbaa !11
  %18 = load i8, ptr %17, align 1, !tbaa !15
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %7, !llvm.loop !97

20:                                               ; preds = %16, %7, %1
  ret void
}

; Function Attrs: nofree nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @S_skipspace(ptr nocapture noundef %0) #24 {
  %2 = load ptr, ptr %0, align 8, !tbaa !11
  %3 = load i8, ptr %2, align 1, !tbaa !15
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %20, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @__ctype_b_loc() #35
  br label %7

7:                                                ; preds = %16, %5
  %8 = phi i8 [ %3, %5 ], [ %18, %16 ]
  %9 = phi ptr [ %2, %5 ], [ %17, %16 ]
  %10 = load ptr, ptr %6, align 8, !tbaa !11
  %11 = sext i8 %8 to i64
  %12 = getelementptr inbounds i16, ptr %10, i64 %11
  %13 = load i16, ptr %12, align 2, !tbaa !39
  %14 = and i16 %13, 8192
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %7
  %17 = getelementptr inbounds i8, ptr %9, i64 1
  store ptr %17, ptr %0, align 8, !tbaa !11
  %18 = load i8, ptr %17, align 1, !tbaa !15
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %7, !llvm.loop !98

20:                                               ; preds = %16, %7, %1
  ret void
}

; Function Attrs: nofree nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @S_nextword(ptr nocapture noundef %0) #24 {
  tail call void @S_skipword(ptr noundef %0) #32
  tail call void @S_skipspace(ptr noundef %0) #32
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @S_wordcmp(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #25 {
  %3 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #33
  %4 = tail call i32 @strncmp(ptr noundef %0, ptr noundef %1, i64 noundef %3) #33
  ret i32 %4
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind optsize memory(argmem: readwrite) uwtable
define internal void @S_trimzeros(ptr nocapture noundef %0) #26 {
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #33
  %3 = icmp sgt i64 %2, 1
  br i1 %3, label %4, label %12

4:                                                ; preds = %10, %1
  %5 = phi i64 [ %6, %10 ], [ %2, %1 ]
  %6 = add nsw i64 %5, -1
  %7 = getelementptr inbounds i8, ptr %0, i64 %6
  %8 = load i8, ptr %7, align 1, !tbaa !15
  %9 = icmp eq i8 %8, 48
  br i1 %9, label %10, label %12

10:                                               ; preds = %4
  store i8 0, ptr %7, align 1, !tbaa !15
  %11 = icmp ugt i64 %5, 2
  br i1 %11, label %4, label %12, !llvm.loop !99

12:                                               ; preds = %10, %4, %1
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @S_savestr(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #33
  tail call void (ptr, i64, ...) @S_allocstr(ptr noundef %0, i64 noundef %3) #32
  %4 = load ptr, ptr %0, align 8, !tbaa !11
  %5 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) %1) #31
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @S_allocstr(ptr nocapture noundef writeonly %0, i32 noundef %1) #0 {
  %3 = add nsw i32 %1, 1
  %4 = sext i32 %3 to i64
  %5 = tail call ptr (i64, ...) @_Z_myalloc(i64 noundef %4) #31
  store ptr %5, ptr %0, align 8, !tbaa !11
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @S_savenstr(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = add nsw i32 %2, 1
  %5 = sext i32 %4 to i64
  %6 = tail call ptr (i64, ...) @_Z_myalloc(i64 noundef %5) #31
  store ptr %6, ptr %0, align 8, !tbaa !11
  %7 = sext i32 %2 to i64
  %8 = tail call ptr @strncpy(ptr noundef %6, ptr noundef %1, i64 noundef %7) #31
  %9 = load ptr, ptr %0, align 8, !tbaa !11
  %10 = getelementptr inbounds i8, ptr %9, i64 %7
  store i8 0, ptr %10, align 1, !tbaa !15
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(write, inaccessiblemem: none) uwtable
define internal void @K_settoken(i32 noundef %0, i32 noundef %1, ptr noundef %2) #27 {
  %4 = icmp eq i32 %0, 0
  %5 = sext i32 %1 to i64
  %6 = select i1 %4, ptr @_K_ato, ptr @_K_bto
  %7 = getelementptr inbounds [50000 x ptr], ptr %6, i64 0, i64 %5
  store ptr %2, ptr %7, align 8, !tbaa !11
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @T_initdefault() #0 {
  %1 = load i1, ptr @T_initdefault.called_before, align 4
  br i1 %1, label %2, label %3

2:                                                ; preds = %0
  tail call void (ptr, ...) @Z_fatal(ptr noundef nonnull @.str.139) #31
  br label %3

3:                                                ; preds = %2, %0
  %4 = load ptr, ptr @_T_gtol, align 8, !tbaa !11
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  tail call void @_T_addtol(ptr noundef nonnull @_T_gtol, i32 noundef 0, ptr noundef nonnull @.str.1.142) #32
  tail call void @_T_addtol(ptr noundef nonnull @_T_gtol, i32 noundef 1, ptr noundef nonnull @.str.1.142) #32
  br label %7

7:                                                ; preds = %6, %3
  store i1 true, ptr @T_initdefault.called_before, align 4
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @_T_addtol(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = load ptr, ptr %0, align 8, !tbaa !11
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = tail call ptr (i64, ...) @_Z_myalloc(i64 noundef 24) #31
  store ptr %7, ptr %0, align 8, !tbaa !11
  br label %16

8:                                                ; preds = %8, %3
  %9 = phi ptr [ %11, %8 ], [ %4, %3 ]
  %10 = getelementptr inbounds %struct._T_tstr, ptr %9, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !35
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %8, !llvm.loop !100

13:                                               ; preds = %8
  %.lcssa = phi ptr [ %9, %8 ]
  %14 = getelementptr inbounds %struct._T_tstr, ptr %.lcssa, i64 0, i32 2
  %15 = tail call ptr (i64, ...) @_Z_myalloc(i64 noundef 24) #31
  store ptr %15, ptr %14, align 8, !tbaa !35
  br label %16

16:                                               ; preds = %13, %6
  %17 = phi ptr [ %7, %6 ], [ %15, %13 ]
  store i32 %1, ptr %17, align 8, !tbaa !29
  %18 = getelementptr inbounds %struct._T_tstr, ptr %17, i64 0, i32 2
  store ptr null, ptr %18, align 8, !tbaa !35
  %19 = icmp eq i32 %1, 2
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct._T_tstr, ptr %17, i64 0, i32 1
  store ptr null, ptr %21, align 8, !tbaa !31
  br label %39

22:                                               ; preds = %16
  %23 = tail call ptr (ptr, i32, ...) @F_atof(ptr noundef %2, i32 noundef 0) #31
  %24 = getelementptr inbounds %struct._T_tstr, ptr %17, i64 0, i32 1
  store ptr %23, ptr %24, align 8, !tbaa !31
  %25 = getelementptr inbounds %struct.R_flstr, ptr %23, i64 0, i32 1
  %26 = load i32, ptr %25, align 4, !tbaa !37
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %22
  %29 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @Z_err_buf, ptr noundef nonnull dereferenceable(1) @.str.3.145, ptr noundef %2) #31
  tail call void (ptr, ...) @Z_fatal(ptr noundef nonnull @Z_err_buf) #31
  br label %30

30:                                               ; preds = %28, %22
  %31 = icmp eq i32 %1, 1
  br i1 %31, label %32, label %39

32:                                               ; preds = %30
  %33 = load ptr, ptr %24, align 8, !tbaa !31
  %34 = tail call ptr (ptr, i32, ...) @F_atof(ptr noundef nonnull @.str.4.146, i32 noundef 1) #31
  %35 = tail call i32 @F_floatcmp(ptr noundef %33, ptr noundef %34) #31
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @Z_err_buf, ptr noundef nonnull dereferenceable(1) @.str.5.147, ptr noundef %2) #31
  tail call void (ptr, ...) @Z_fatal(ptr noundef nonnull @Z_err_buf) #31
  br label %39

39:                                               ; preds = %37, %32, %30, %20
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define internal void @T_clear_tols() #28 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) @_T_tols, i8 0, i64 80, i1 false), !tbaa !11
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #29

; Function Attrs: nounwind optsize uwtable
define internal void @T_tolline(ptr nocapture noundef readonly %0) #0 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) @_T_tols, i8 0, i64 80, i1 false), !tbaa !11
  %2 = load i8, ptr %0, align 1, !tbaa !15
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %31, label %4

4:                                                ; preds = %25, %1
  %5 = phi i64 [ %19, %25 ], [ 0, %1 ]
  %6 = phi ptr [ %28, %25 ], [ %0, %1 ]
  %7 = icmp ugt i64 %5, 9
  br i1 %7, label %8, label %9

8:                                                ; preds = %4
  tail call void (ptr, ...) @Z_fatal(ptr noundef nonnull @.str.2.152) #31
  br label %9

9:                                                ; preds = %8, %4
  %10 = getelementptr inbounds [10 x ptr], ptr @_T_tols, i64 0, i64 %5
  br label %11

11:                                               ; preds = %15, %9
  %12 = phi ptr [ %6, %9 ], [ %16, %15 ]
  %13 = phi ptr [ @_T_getspec.retval, %9 ], [ %17, %15 ]
  %14 = load i8, ptr %12, align 1, !tbaa !15
  switch i8 %14, label %15 [
    i8 59, label %18
    i8 0, label %18
  ]

15:                                               ; preds = %11
  %16 = getelementptr inbounds i8, ptr %12, i64 1
  %17 = getelementptr inbounds i8, ptr %13, i64 1
  store i8 %14, ptr %13, align 1, !tbaa !15
  br label %11, !llvm.loop !101

18:                                               ; preds = %11, %11
  %.lcssa = phi ptr [ %13, %11 ], [ %13, %11 ]
  store i8 0, ptr %.lcssa, align 1, !tbaa !15
  tail call fastcc void @_T_settol(ptr noundef nonnull %10, ptr noundef nonnull @_T_getspec.retval) #32
  %19 = add nuw i64 %5, 1
  br label %20

20:                                               ; preds = %23, %18
  %21 = phi ptr [ %6, %18 ], [ %24, %23 ]
  %22 = load i8, ptr %21, align 1, !tbaa !15
  switch i8 %22, label %23 [
    i8 59, label %25
    i8 0, label %25
  ]

23:                                               ; preds = %20
  %24 = getelementptr inbounds i8, ptr %21, i64 1
  br label %20, !llvm.loop !102

25:                                               ; preds = %20, %20
  %.lcssa2 = phi ptr [ %21, %20 ], [ %21, %20 ]
  %.lcssa1 = phi i8 [ %22, %20 ], [ %22, %20 ]
  %26 = icmp eq i8 %.lcssa1, 59
  %27 = zext i1 %26 to i64
  %28 = getelementptr inbounds i8, ptr %.lcssa2, i64 %27
  %29 = load i8, ptr %28, align 1, !tbaa !15
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %4, !llvm.loop !103

31:                                               ; preds = %25, %1
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @_T_settol(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8, !tbaa !11
  %4 = load i8, ptr %1, align 1, !tbaa !15
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %50, label %6

6:                                                ; preds = %46, %2
  call void (ptr, ...) @S_skipspace(ptr noundef nonnull %3) #31
  %7 = load ptr, ptr %3, align 8, !tbaa !11
  %8 = load i8, ptr %7, align 1, !tbaa !15
  %9 = getelementptr inbounds i8, ptr %7, i64 1
  store ptr %9, ptr %3, align 8, !tbaa !11
  call void (ptr, ...) @S_skipspace(ptr noundef nonnull %3) #31
  %10 = sext i8 %8 to i32
  switch i32 %10, label %44 [
    i32 97, label %11
    i32 114, label %13
    i32 105, label %15
    i32 100, label %31
  ]

11:                                               ; preds = %6
  %12 = load ptr, ptr %3, align 8, !tbaa !11
  call void @_T_addtol(ptr noundef %0, i32 noundef 0, ptr noundef %12) #32
  br label %46

13:                                               ; preds = %6
  %14 = load ptr, ptr %3, align 8, !tbaa !11
  call void @_T_addtol(ptr noundef %0, i32 noundef 1, ptr noundef %14) #32
  br label %46

15:                                               ; preds = %6
  %16 = load ptr, ptr %0, align 8, !tbaa !11
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = call ptr (i64, ...) @_Z_myalloc(i64 noundef 24) #31
  store ptr %19, ptr %0, align 8, !tbaa !11
  br label %28

20:                                               ; preds = %20, %15
  %21 = phi ptr [ %23, %20 ], [ %16, %15 ]
  %22 = getelementptr inbounds %struct._T_tstr, ptr %21, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !35
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %20, !llvm.loop !100

25:                                               ; preds = %20
  %.lcssa1 = phi ptr [ %21, %20 ]
  %26 = getelementptr inbounds %struct._T_tstr, ptr %.lcssa1, i64 0, i32 2
  %27 = call ptr (i64, ...) @_Z_myalloc(i64 noundef 24) #31
  store ptr %27, ptr %26, align 8, !tbaa !35
  br label %28

28:                                               ; preds = %25, %18
  %29 = phi ptr [ %19, %18 ], [ %27, %25 ]
  store i32 2, ptr %29, align 8, !tbaa !29
  %30 = getelementptr inbounds %struct._T_tstr, ptr %29, i64 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %30, i8 0, i64 16, i1 false)
  br label %46

31:                                               ; preds = %6
  %32 = load ptr, ptr @_T_gtol, align 8, !tbaa !11
  %33 = load ptr, ptr %0, align 8, !tbaa !11
  %34 = icmp eq ptr %33, null
  br i1 %34, label %42, label %35

35:                                               ; preds = %35, %31
  %36 = phi ptr [ %38, %35 ], [ %33, %31 ]
  %37 = getelementptr inbounds %struct._T_tstr, ptr %36, i64 0, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !35
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %35, !llvm.loop !104

40:                                               ; preds = %35
  %.lcssa = phi ptr [ %36, %35 ]
  %41 = getelementptr inbounds %struct._T_tstr, ptr %.lcssa, i64 0, i32 2
  br label %42

42:                                               ; preds = %40, %31
  %43 = phi ptr [ %0, %31 ], [ %41, %40 ]
  store ptr %32, ptr %43, align 8, !tbaa !11
  br label %46

44:                                               ; preds = %6
  %45 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @Z_err_buf, ptr noundef nonnull dereferenceable(1) @.str.6.153, i32 noundef %10) #31
  call void (ptr, ...) @Z_fatal(ptr noundef nonnull @Z_err_buf) #31
  br label %46

46:                                               ; preds = %44, %42, %28, %13, %11
  call void (ptr, ...) @S_nextword(ptr noundef nonnull %3) #31
  %47 = load ptr, ptr %3, align 8, !tbaa !11
  %48 = load i8, ptr %47, align 1, !tbaa !15
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %50, label %6, !llvm.loop !105

50:                                               ; preds = %46, %2
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal i32 @T_moretols(i32 noundef %0) #30 {
  %2 = icmp ult i32 %0, 9
  br i1 %2, label %3, label %10

3:                                                ; preds = %1
  %4 = add nuw nsw i32 %0, 1
  %5 = zext i32 %4 to i64
  %6 = getelementptr inbounds [10 x ptr], ptr @_T_tols, i64 0, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !11
  %8 = icmp ne ptr %7, null
  %9 = zext i1 %8 to i32
  br label %10

10:                                               ; preds = %3, %1
  %11 = phi i32 [ 0, %1 ], [ %9, %3 ]
  ret i32 %11
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal ptr @T_gettol(i32 noundef %0) #30 {
  %2 = sext i32 %0 to i64
  %3 = getelementptr inbounds [10 x ptr], ptr @_T_tols, i64 0, i64 %2
  %4 = load ptr, ptr %3, align 8, !tbaa !11
  ret ptr %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal ptr @T_picktol(ptr noundef readnone %0, ptr noundef readnone %1) #30 {
  %3 = icmp eq ptr %0, null
  %4 = icmp eq ptr %1, null
  %5 = load ptr, ptr @_T_gtol, align 8
  %6 = select i1 %4, ptr %5, ptr %1
  %7 = select i1 %3, ptr %6, ptr %0
  ret ptr %7
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @V_visual(i32 noundef %0) #0 {
  tail call void (ptr, ...) @Z_fatal(ptr noundef nonnull @.str.162) #31
  %2 = sub nsw i32 0, %0
  ret i32 %2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal void @V_cleanup() #19 {
  ret void
}

attributes #0 = { nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind optsize memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #9 = { mustprogress nofree nosync nounwind optsize willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nofree nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nounwind optsize willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #15 = { nofree nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { noreturn nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { noreturn nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nofree nounwind }
attributes #21 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nofree nounwind optsize memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nofree nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nofree nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { nofree nounwind optsize memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { mustprogress nofree norecurse nosync nounwind optsize willreturn memory(write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { mustprogress nofree nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #30 = { mustprogress nofree norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { nounwind optsize }
attributes #32 = { optsize }
attributes #33 = { nounwind optsize willreturn memory(read) }
attributes #34 = { nounwind }
attributes #35 = { nounwind optsize willreturn memory(none) }
attributes #36 = { cold optsize }
attributes #37 = { noreturn nounwind optsize }
attributes #38 = { nounwind optsize allocsize(0,1) }

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
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!12, !12, i64 0}
!12 = !{!"any pointer", !9, i64 0}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.mustprogress"}
!15 = !{!9, !9, i64 0}
!16 = !{!17, !8, i64 48}
!17 = !{!"", !9, i64 0, !9, i64 16, !9, i64 32, !8, i64 48}
!18 = distinct !{!18, !14}
!19 = distinct !{!19, !14}
!20 = distinct !{!20, !14}
!21 = distinct !{!21, !14}
!22 = distinct !{!22, !14}
!23 = distinct !{!23, !14}
!24 = !{!25, !12, i64 16}
!25 = !{!"", !8, i64 0, !8, i64 4, !8, i64 8, !12, i64 16, !12, i64 24, !12, i64 32}
!26 = !{!25, !8, i64 8}
!27 = !{!25, !12, i64 24}
!28 = !{!25, !12, i64 32}
!29 = !{!30, !8, i64 0}
!30 = !{!"_T_tstr", !8, i64 0, !12, i64 8, !12, i64 16}
!31 = !{!30, !12, i64 8}
!32 = !{!33, !8, i64 0}
!33 = !{!"R_flstr", !8, i64 0, !8, i64 4, !12, i64 8}
!34 = !{!33, !12, i64 8}
!35 = !{!30, !12, i64 16}
!36 = distinct !{!36, !14}
!37 = !{!33, !8, i64 4}
!38 = distinct !{!38, !14}
!39 = !{!40, !40, i64 0}
!40 = !{!"short", !9, i64 0}
!41 = distinct !{!41, !14}
!42 = distinct !{!42, !14}
!43 = distinct !{!43, !14}
!44 = !{!45, !12, i64 0}
!45 = !{!"edt", !12, i64 0, !8, i64 8, !8, i64 12, !8, i64 16}
!46 = !{!45, !8, i64 8}
!47 = !{!45, !8, i64 12}
!48 = !{!45, !8, i64 16}
!49 = distinct !{!49, !14}
!50 = distinct !{!50, !14}
!51 = distinct !{!51, !14}
!52 = distinct !{!52, !14}
!53 = distinct !{!53, !14}
!54 = distinct !{!54, !14}
!55 = distinct !{!55, !14}
!56 = distinct !{!56, !14}
!57 = distinct !{!57, !14}
!58 = distinct !{!58, !14}
!59 = distinct !{!59, !14}
!60 = distinct !{!60, !14}
!61 = distinct !{!61, !14}
!62 = distinct !{!62, !14}
!63 = distinct !{!63, !14}
!64 = distinct !{!64, !14}
!65 = distinct !{!65, !14}
!66 = distinct !{!66, !14}
!67 = distinct !{!67, !14}
!68 = distinct !{!68, !14}
!69 = distinct !{!69, !14}
!70 = distinct !{!70, !14}
!71 = distinct !{!71, !14}
!72 = distinct !{!72, !14}
!73 = distinct !{!73, !14}
!74 = distinct !{!74, !14}
!75 = distinct !{!75, !14}
!76 = distinct !{!76, !14}
!77 = distinct !{!77, !14}
!78 = distinct !{!78, !14}
!79 = !{!25, !8, i64 0}
!80 = distinct !{!80, !14}
!81 = distinct !{!81, !14}
!82 = distinct !{!82, !14}
!83 = !{!25, !8, i64 4}
!84 = distinct !{!84, !14}
!85 = distinct !{!85, !14}
!86 = distinct !{!86, !14}
!87 = !{i32 0, i32 2}
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
!104 = distinct !{!104, !14}
!105 = distinct !{!105, !14}
