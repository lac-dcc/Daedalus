; ModuleID = '/src/llvm-test-suite/build/MultiSource/Benchmarks/Prolangs-C/bison/mybison.e.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.core = type { ptr, ptr, i16, i16, i16, [1 x i16] }
%struct.shifts = type { ptr, i16, i16, [1 x i16] }
%struct.errs = type { i16, [1 x i16] }
%struct.shorts = type { ptr, i16 }
%struct.bucket = type { ptr, ptr, ptr, ptr, i16, i16, i16, i16, i8 }
%struct.symbol_list = type { ptr, ptr, ptr }

@kernel_base = internal unnamed_addr global ptr null, align 8
@kernel_items = internal unnamed_addr global ptr null, align 8
@shift_symbol = internal unnamed_addr global ptr null, align 8
@kernel_end = internal unnamed_addr global ptr null, align 8
@shiftset = internal unnamed_addr global ptr null, align 8
@redset = internal unnamed_addr global ptr null, align 8
@state_table.89 = internal unnamed_addr global ptr null, align 8
@this_state = internal unnamed_addr global ptr null, align 8
@nshifts = internal unnamed_addr global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"states\00", align 1
@last_state = internal unnamed_addr global ptr null, align 8
@last_shift = internal unnamed_addr global ptr null, align 8
@last_reduction = internal unnamed_addr global ptr null, align 8
@.str.3 = private unnamed_addr constant [25 x i8] c"bison: memory exhausted\0A\00", align 1
@itemset = internal global ptr null, align 8
@rulesetsize = internal unnamed_addr global i32 0, align 4
@ruleset = internal unnamed_addr global ptr null, align 8
@fderives = internal unnamed_addr global ptr null, align 8
@firsts = internal unnamed_addr global ptr null, align 8
@varsetsize = internal unnamed_addr global i32 0, align 4
@itemsetend = internal global ptr null, align 8
@conflicts = internal global ptr null, align 8
@shiftset.14 = internal unnamed_addr global ptr null, align 8
@lookaheadset = internal unnamed_addr global ptr null, align 8
@.str.16 = private unnamed_addr constant [7 x i8] c"reduce\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"shift\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"an error\00", align 1
@.str.3.15 = private unnamed_addr constant [67 x i8] c"Conflict in state %d between rule %d and token %s resolved as %s.\0A\00", align 1
@src_total = internal unnamed_addr global i32 0, align 4
@rrc_total = internal unnamed_addr global i32 0, align 4
@src_count = internal unnamed_addr global i32 0, align 4
@rrc_count = internal unnamed_addr global i32 0, align 4
@.str.4 = private unnamed_addr constant [18 x i8] c"State %d contains\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c" 1 shift/reduce conflict\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c" %d shift/reduce conflicts\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c" and\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c" 1 reduce/reduce conflict\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c" %d reduce/reduce conflicts\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"%s contains\00", align 1
@.str.11 = private unnamed_addr constant [29 x i8] c"    %-4s\09[reduce  %d  (%s)]\0A\00", align 1
@.str.12 = private unnamed_addr constant [32 x i8] c"    $default\09reduce  %d  (%s)\0A\0A\00", align 1
@.str.13 = private unnamed_addr constant [27 x i8] c"    %-4s\09reduce  %d  (%s)\0A\00", align 1
@.str.14 = private unnamed_addr constant [31 x i8] c"    $default\09reduce  %d  (%s)\0A\00", align 1
@.str.31 = private unnamed_addr constant [8 x i8] c"/tmp/b.\00", align 1
@.str.1.19 = private unnamed_addr constant [3 x i8] c".c\00", align 1
@.str.2.20 = private unnamed_addr constant [5 x i8] c".tab\00", align 1
@.str.3.21 = private unnamed_addr constant [5 x i8] c"_tab\00", align 1
@.str.4.24 = private unnamed_addr constant [4 x i8] c"y.y\00", align 1
@.str.5.25 = private unnamed_addr constant [3 x i8] c".y\00", align 1
@.str.6.26 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.7.27 = private unnamed_addr constant [8 x i8] c".output\00", align 1
@outfile = internal global ptr null, align 8
@stdout = external local_unnamed_addr global ptr, align 8
@.str.8.30 = private unnamed_addr constant [3 x i8] c".h\00", align 1
@defsfile = internal global ptr null, align 8
@.str.9.32 = private unnamed_addr constant [11 x i8] c"act.XXXXXX\00", align 1
@actfile = internal global ptr null, align 8
@.str.10.33 = private unnamed_addr constant [13 x i8] c"attrs.XXXXXX\00", align 1
@tmpattrsfile = internal global ptr null, align 8
@.str.11.34 = private unnamed_addr constant [11 x i8] c"tab.XXXXXX\00", align 1
@tmptabfile = internal global ptr null, align 8
@tabfile = internal global ptr null, align 8
@.str.12.35 = private unnamed_addr constant [9 x i8] c".stype.h\00", align 1
@.str.13.36 = private unnamed_addr constant [9 x i8] c".guard.c\00", align 1
@guardfile = internal global ptr null, align 8
@.str.14.37 = private unnamed_addr constant [12 x i8] c"BISON_HAIRY\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"parse.y.in\00", align 1
@.str.16.38 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"bison: \00", align 1
@fixed_outfiles = internal global i32 0, align 4
@.str.45 = private unnamed_addr constant [5 x i8] c"yacc\00", align 1
@.str.1.46 = private unnamed_addr constant [8 x i8] c"yvdlto:\00", align 1
@spec_outfile = internal global ptr null, align 8
@.str.2.47 = private unnamed_addr constant [27 x i8] c"grammar file not specified\00", align 1
@.str.3.48 = private unnamed_addr constant [41 x i8] c"bison: warning: extra arguments ignored\0A\00", align 1
@optarg = dso_local global ptr null, align 8
@optind = dso_local global i32 0, align 4
@opterr = dso_local global i32 1, align 4
@last_nonopt = internal unnamed_addr global i32 0, align 4
@first_nonopt = internal unnamed_addr global i32 0, align 4
@nextchar = internal unnamed_addr global ptr null, align 8
@ordering = internal unnamed_addr global i32 0, align 4
@.str.53 = private unnamed_addr constant [20 x i8] c"_POSIX_OPTION_ORDER\00", align 1
@.str.1.54 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@.str.2.57 = private unnamed_addr constant [45 x i8] c"%s: unrecognized option, character code 0%o\0A\00", align 1
@.str.3.58 = private unnamed_addr constant [31 x i8] c"%s: unrecognized option `-%c'\0A\00", align 1
@.str.4.59 = private unnamed_addr constant [34 x i8] c"%s: no argument for `-%c' option\0A\00", align 1
@maxrhs = internal unnamed_addr global i32 0, align 4
@lookback = internal unnamed_addr global ptr null, align 8
@ngotos = internal unnamed_addr global i32 0, align 4
@.str.104 = private unnamed_addr constant [6 x i8] c"gotos\00", align 1
@.str.1.100 = private unnamed_addr constant [9 x i8] c"map_goto\00", align 1
@F = internal unnamed_addr global ptr null, align 8
@includes = internal unnamed_addr global ptr null, align 8
@derives = internal global ptr null, align 8
@.str.2.103 = private unnamed_addr constant [18 x i8] c"add_lookback_edge\00", align 1
@infinity = internal unnamed_addr global i32 0, align 4
@INDEX = internal unnamed_addr global ptr null, align 8
@VERTICES = internal unnamed_addr global ptr null, align 8
@top = internal unnamed_addr global i32 0, align 4
@R = internal unnamed_addr global ptr null, align 8
@unlexed = internal unnamed_addr global i32 0, align 4
@.str.105 = private unnamed_addr constant [23 x i8] c"unexpected '/%c' found\00", align 1
@.str.1.106 = private unnamed_addr constant [21 x i8] c"unterminated comment\00", align 1
@unlexed_symval = internal unnamed_addr global ptr null, align 8
@.str.2.107 = private unnamed_addr constant [35 x i8] c"malformatted literal token '\\%03o'\00", align 1
@.str.3.108 = private unnamed_addr constant [28 x i8] c"invalid literal token '\\%c'\00", align 1
@.str.4.109 = private unnamed_addr constant [44 x i8] c"multicharacter literal tokens NOT supported\00", align 1
@.str.5.110 = private unnamed_addr constant [23 x i8] c"unterminated type name\00", align 1
@.str.6.111 = private unnamed_addr constant [28 x i8] c"type name too long (%d max)\00", align 1
@.str.7.112 = private unnamed_addr constant [6 x i8] c"token\00", align 1
@.str.8.113 = private unnamed_addr constant [5 x i8] c"term\00", align 1
@.str.9.114 = private unnamed_addr constant [6 x i8] c"nterm\00", align 1
@.str.10.115 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.11.116 = private unnamed_addr constant [6 x i8] c"guard\00", align 1
@.str.12.117 = private unnamed_addr constant [6 x i8] c"union\00", align 1
@.str.13.118 = private unnamed_addr constant [7 x i8] c"expect\00", align 1
@.str.14.119 = private unnamed_addr constant [6 x i8] c"start\00", align 1
@.str.15.120 = private unnamed_addr constant [5 x i8] c"left\00", align 1
@.str.16.121 = private unnamed_addr constant [6 x i8] c"right\00", align 1
@.str.17.122 = private unnamed_addr constant [9 x i8] c"nonassoc\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"binary\00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"semantic_parser\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"pure_parser\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"prec\00", align 1
@verboseflag = internal global i32 0, align 4
@.str.125 = private unnamed_addr constant [17 x i8] c"fatal error: %s\0A\00", align 1
@.str.1.126 = private unnamed_addr constant [19 x i8] c"\22%s\22, line %d: %s\0A\00", align 1
@.str.2.131 = private unnamed_addr constant [34 x i8] c"limit of %d exceeded, too many %s\00", align 1
@.str.3.134 = private unnamed_addr constant [20 x i8] c"internal error, %s\0A\00", align 1
@nullable = internal global ptr null, align 8
@.str.139 = private unnamed_addr constant [248 x i8] c"\0A#include \22%s\22\0Aextern int yyerror;\0Aextern int yycost;\0Aextern char * yymsg;\0Aextern YYSTYPE yyval;\0A\0Ayyguard(n, yyvsp, yylsp)\0Aregister int n;\0Aregister YYSTYPE *yyvsp;\0Aregister YYLTYPE *yylsp;\0A{\0A  yyerror = 0;\0Ayycost = 0;\0A  yymsg = 0;\0Aswitch (n)\0A    {\00", align 1
@attrsfile = internal global ptr null, align 8
@.str.1.141 = private unnamed_addr constant [164 x i8] c"\0A#include \22%s\22\0Aextern YYSTYPE yyval;\0Aextern int yychar;yyaction(n, yyvsp, yylsp)\0Aregister int n;\0Aregister YYSTYPE *yyvsp;\0Aregister YYLTYPE *yylsp;\0A{\0A  switch (n)\0A{\00", align 1
@.str.2.140 = private unnamed_addr constant [19 x i8] c"\0A  switch (yyn) {\0A\00", align 1
@.str.3.142 = private unnamed_addr constant [10 x i8] c"\0A    }\0A}\0A\00", align 1
@.str.4.143 = private unnamed_addr constant [4 x i8] c"\0A}\0A\00", align 1
@debugflag = internal global i32 0, align 4
@.str.5.146 = private unnamed_addr constant [17 x i8] c"#define YYDEBUG\0A\00", align 1
@.str.6.147 = private unnamed_addr constant [15 x i8] c"#include \22%s\22\0A\00", align 1
@.str.7.148 = private unnamed_addr constant [21 x i8] c"#include <stdio.h>\0A\0A\00", align 1
@.str.8.149 = private unnamed_addr constant [40 x i8] c"#ifndef __STDC__\0A#define const\0A#endif\0A\0A\00", align 1
@.str.9.160 = private unnamed_addr constant [69 x i8] c"\0A#define YYTRANSLATE(x) ((unsigned)(x) <= %d ? yytranslate[x] : %d)\0A\00", align 1
@.str.10.161 = private unnamed_addr constant [43 x i8] c"\0Astatic const char yytranslate[] = {     0\00", align 1
@.str.11.162 = private unnamed_addr constant [44 x i8] c"\0Astatic const short yytranslate[] = {     0\00", align 1
@.str.12.151 = private unnamed_addr constant [4 x i8] c"%6d\00", align 1
@.str.13.152 = private unnamed_addr constant [5 x i8] c"\0A};\0A\00", align 1
@.str.14.163 = private unnamed_addr constant [29 x i8] c"\0A#define YYTRANSLATE(x) (x)\0A\00", align 1
@.str.15.157 = private unnamed_addr constant [39 x i8] c"\0Astatic const short yyprhs[] = {     0\00", align 1
@.str.16.158 = private unnamed_addr constant [39 x i8] c"\0A};\0A\0Astatic const short yyrhs[] = {%6d\00", align 1
@.str.17.159 = private unnamed_addr constant [7 x i8] c"     0\00", align 1
@.str.18.156 = private unnamed_addr constant [39 x i8] c"\0Astatic const short yystos[] = {     0\00", align 1
@.str.19.153 = private unnamed_addr constant [40 x i8] c"\0Astatic const short yyrline[] = {     0\00", align 1
@.str.20.154 = private unnamed_addr constant [51 x i8] c"\0A};\0A\0Astatic const char * const yytname[] = {     0\00", align 1
@.str.21.155 = private unnamed_addr constant [4 x i8] c"\\%c\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c"\\n\00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c"\\t\00", align 1
@.str.24 = private unnamed_addr constant [3 x i8] c"\\b\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"\\%03o\00", align 1
@.str.26 = private unnamed_addr constant [41 x i8] c"\0A};\0A\0Astatic const short yyr1[] = {     0\00", align 1
@.str.27 = private unnamed_addr constant [41 x i8] c"\0A};\0A\0Astatic const short yyr2[] = {     0\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"%6d\0A};\0A\00", align 1
@.str.29 = private unnamed_addr constant [23 x i8] c"\0A\0A#define\09YYFINAL\09\09%d\0A\00", align 1
@final_state = internal global i32 0, align 4
@.str.30 = private unnamed_addr constant [20 x i8] c"#define\09YYFLAG\09\09%d\0A\00", align 1
@.str.31.164 = private unnamed_addr constant [21 x i8] c"#define\09YYNTBASE\09%d\0A\00", align 1
@nvectors = internal unnamed_addr global i32 0, align 4
@froms = internal unnamed_addr global ptr null, align 8
@tos = internal unnamed_addr global ptr null, align 8
@tally = internal unnamed_addr global ptr null, align 8
@width = internal unnamed_addr global ptr null, align 8
@lookaheads = internal global ptr null, align 8
@LA = internal global ptr null, align 8
@LAruleno = internal global ptr null, align 8
@goto_map = internal global ptr null, align 8
@from_state = internal global ptr null, align 8
@to_state = internal global ptr null, align 8
@actrow = internal unnamed_addr global ptr null, align 8
@.str.32 = private unnamed_addr constant [38 x i8] c"\0Astatic const short yydefact[] = {%6d\00", align 1
@tokensetsize = internal global i32 0, align 4
@state_count = internal unnamed_addr global ptr null, align 8
@.str.33 = private unnamed_addr constant [39 x i8] c"\0Astatic const short yydefgoto[] = {%6d\00", align 1
@order = internal unnamed_addr global ptr null, align 8
@nentries = internal unnamed_addr global i32 0, align 4
@base = internal unnamed_addr global ptr null, align 8
@pos = internal unnamed_addr global ptr null, align 8
@table = internal unnamed_addr global ptr null, align 8
@check = internal unnamed_addr global ptr null, align 8
@lowzero = internal unnamed_addr global i32 0, align 4
@high = internal unnamed_addr global i32 0, align 4
@.str.34 = private unnamed_addr constant [12 x i8] c"pack_vector\00", align 1
@.str.35 = private unnamed_addr constant [33 x i8] c"maximum table size (%d) exceeded\00", align 1
@.str.36 = private unnamed_addr constant [36 x i8] c"\0Astatic const short yypact[] = {%6d\00", align 1
@.str.37 = private unnamed_addr constant [41 x i8] c"\0A};\0A\0Astatic const short yypgoto[] = {%6d\00", align 1
@.str.38 = private unnamed_addr constant [23 x i8] c"\0A\0A#define\09YYLAST\09\09%d\0A\0A\00", align 1
@.str.39 = private unnamed_addr constant [37 x i8] c"\0Astatic const short yytable[] = {%6d\00", align 1
@.str.40 = private unnamed_addr constant [37 x i8] c"\0Astatic const short yycheck[] = {%6d\00", align 1
@.str.41 = private unnamed_addr constant [21 x i8] c"#define YYIMPURE 1\0A\0A\00", align 1
@.str.42 = private unnamed_addr constant [19 x i8] c"#define YYPURE 1\0A\0A\00", align 1
@fparser = internal global ptr null, align 8
@.str.43 = private unnamed_addr constant [5 x i8] c"#lin\00", align 1
@.str.44 = private unnamed_addr constant [4 x i8] c"#li\00", align 1
@.str.45.150 = private unnamed_addr constant [3 x i8] c"#l\00", align 1
@.str.47 = private unnamed_addr constant [15 x i8] c"#line %d \22%s\22\0A\00", align 1
@first_state = internal global ptr null, align 8
@first_shift = internal global ptr null, align 8
@first_reduction = internal global ptr null, align 8
@any_conflicts = internal global i8 0, align 1
@foutput = internal global ptr null, align 8
@.str.169 = private unnamed_addr constant [16 x i8] c"\0A\0Atoken types:\0A\00", align 1
@nstates = internal global i32 0, align 4
@.str.1.170 = private unnamed_addr constant [16 x i8] c" type %d is %s\0A\00", align 1
@.str.2.171 = private unnamed_addr constant [13 x i8] c"\0A\0Astate %d\0A\0A\00", align 1
@state_table = internal global ptr null, align 8
@.str.3.177 = private unnamed_addr constant [13 x i8] c"    %s  ->  \00", align 1
@.str.4.178 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.5.179 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.6.180 = private unnamed_addr constant [8 x i8] c"   (%d)\00", align 1
@shift_table = internal global ptr null, align 8
@reduction_table = internal global ptr null, align 8
@err_table = internal global ptr null, align 8
@.str.7.172 = private unnamed_addr constant [16 x i8] c"    NO ACTIONS\0A\00", align 1
@accessing_symbol = internal global ptr null, align 8
@.str.8.173 = private unnamed_addr constant [20 x i8] c"    %-4s\09shift  %d\0A\00", align 1
@.str.9.174 = private unnamed_addr constant [33 x i8] c"    %-4s\09error (nonassociative)\0A\00", align 1
@consistent = internal global ptr null, align 8
@.str.10.175 = private unnamed_addr constant [32 x i8] c"    $default\09reduce  %d  (%s)\0A\0A\00", align 1
@.str.11.176 = private unnamed_addr constant [19 x i8] c"    %-4s\09goto  %d\0A\00", align 1
@start_flag = internal global i32 0, align 4
@startval = internal global ptr null, align 8
@translations = internal global i32 0, align 4
@nvars = internal global i32 0, align 4
@nrules = internal global i32 0, align 4
@nitems = internal global i32 0, align 4
@rline_allocated = internal global i32 0, align 4
@rline = internal global ptr null, align 8
@typed = internal unnamed_addr global i1 false, align 4
@lastprec = internal unnamed_addr global i32 0, align 4
@gensym_count = internal unnamed_addr global i32 0, align 4
@semantic_parser = internal global i32 0, align 4
@pure_parser = internal global i32 0, align 4
@yylsp_needed = internal unnamed_addr global i1 false, align 4
@grammar = internal global ptr null, align 8
@lineno = internal global i32 0, align 4
@.str.185 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@errtoken = internal unnamed_addr global ptr null, align 8
@.str.1.186 = private unnamed_addr constant [10 x i8] c"$illegal.\00", align 1
@ftable = internal global ptr null, align 8
@.str.2.187 = private unnamed_addr constant [40 x i8] c"\0A/*  A Bison parser, made from %s  */\0A\0A\00", align 1
@infile = internal global ptr null, align 8
@.str.3.188 = private unnamed_addr constant [23 x i8] c"#define YYLSP_NEEDED\0A\0A\00", align 1
@.str.4.227 = private unnamed_addr constant [35 x i8] c"junk after % in definition section\00", align 1
@.str.5.192 = private unnamed_addr constant [17 x i8] c"no input grammar\00", align 1
@.str.6.228 = private unnamed_addr constant [46 x i8] c"Unrecognized char '%c' in declaration section\00", align 1
@nolinesflag = internal global i32 0, align 4
@fattrs = internal global ptr null, align 8
@.str.7.205 = private unnamed_addr constant [15 x i8] c"#line %d \22%s\22\0A\00", align 1
@finput = internal global ptr null, align 8
@.str.8.207 = private unnamed_addr constant [20 x i8] c"unterminated string\00", align 1
@.str.9.232 = private unnamed_addr constant [38 x i8] c"unterminated comment in %{ definition\00", align 1
@.str.10.233 = private unnamed_addr constant [27 x i8] c"unterminated %{ definition\00", align 1
@token_buffer = internal global [1025 x i8] zeroinitializer, align 16
@symval = internal global ptr null, align 8
@.str.11.202 = private unnamed_addr constant [20 x i8] c"symbol %s redefined\00", align 1
@.str.12.201 = private unnamed_addr constant [26 x i8] c"type redeclaration for %s\00", align 1
@numval = internal global i32 0, align 4
@.str.13.203 = private unnamed_addr constant [45 x i8] c"invalid text in %token or %nterm declaration\00", align 1
@.str.14.193 = private unnamed_addr constant [29 x i8] c"multiple %start declarations\00", align 1
@.str.15.194 = private unnamed_addr constant [27 x i8] c"invalid %start declaration\00", align 1
@.str.16.200 = private unnamed_addr constant [29 x i8] c"ill-formed %type declaration\00", align 1
@.str.17.231 = private unnamed_addr constant [26 x i8] c"invalid %type declaration\00", align 1
@.str.18.229 = private unnamed_addr constant [40 x i8] c"invalid text in association declaration\00", align 1
@.str.19.230 = private unnamed_addr constant [37 x i8] c"malformatted association declaration\00", align 1
@.str.20.195 = private unnamed_addr constant [29 x i8] c"multiple %union declarations\00", align 1
@.str.21.196 = private unnamed_addr constant [16 x i8] c"\0A#line %d \22%s\22\0A\00", align 1
@.str.23.197 = private unnamed_addr constant [14 x i8] c"typedef union\00", align 1
@fdefines = internal global ptr null, align 8
@.str.24.198 = private unnamed_addr constant [21 x i8] c"unterminated comment\00", align 1
@.str.25.199 = private unnamed_addr constant [11 x i8] c" YYSTYPE;\0A\00", align 1
@expected_conflicts = internal global i32 0, align 4
@.str.26.219 = private unnamed_addr constant [189 x i8] c"\0A#ifndef YYLTYPE\0Atypedef\0A  struct yyltype\0A    {\0A      int first_line;\0A      int first_column;\0A      int last_line;\0A      int last_column;\0A    }\0A  yyltype;\0A\0A#define YYLTYPE yyltype\0A#endif\0A\0A\00", align 1
@.str.27.220 = private unnamed_addr constant [32 x i8] c"#define\09YYACCEPT\09goto yyaccept\0A\00", align 1
@.str.28.221 = private unnamed_addr constant [30 x i8] c"#define\09YYABORT\09goto yyabort\0A\00", align 1
@.str.29.222 = private unnamed_addr constant [31 x i8] c"#define\09YYERROR\09goto yyerrlab\0A\00", align 1
@.str.30.223 = private unnamed_addr constant [50 x i8] c"#define\09yytext\09(*_yytext)\0Aextern char **_yytext;\0A\00", align 1
@.str.31.224 = private unnamed_addr constant [52 x i8] c"#define\09yylval\09(*_yylval)\0Aextern YYSTYPE *_yylval;\0A\00", align 1
@.str.32.225 = private unnamed_addr constant [52 x i8] c"#define\09yylloc\09(*_yylloc)\0Aextern YYLTYPE *_yylloc;\0A\00", align 1
@.str.33.226 = private unnamed_addr constant [51 x i8] c"#define\09yyppval\09(*_yyppval)\0Aextern int *_yyppval;\0A\00", align 1
@.str.34.217 = private unnamed_addr constant [16 x i8] c"invalid $ value\00", align 1
@fguard = internal global ptr null, align 8
@.str.35.204 = private unnamed_addr constant [11 x i8] c"\0Acase %d:\0A\00", align 1
@.str.36.206 = private unnamed_addr constant [28 x i8] c"unmatched right brace ('}')\00", align 1
@.str.37.208 = private unnamed_addr constant [6 x i8] c"yyval\00", align 1
@.str.38.209 = private unnamed_addr constant [4 x i8] c".%s\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.39.210 = private unnamed_addr constant [52 x i8] c"%s:%d:  warning:  $$ of '%s' has no declared type.\0A\00", align 1
@.str.40.211 = private unnamed_addr constant [15 x i8] c"yyp->yyvsp[%d]\00", align 1
@.str.41.212 = private unnamed_addr constant [53 x i8] c"%s:%d:  warning:  $%d of '%s' has no declared type.\0A\00", align 1
@.str.42.213 = private unnamed_addr constant [15 x i8] c"$%c is invalid\00", align 1
@.str.43.214 = private unnamed_addr constant [15 x i8] c"@%c is invalid\00", align 1
@.str.44.215 = private unnamed_addr constant [15 x i8] c"yyp->yylsp[%d]\00", align 1
@.str.45.216 = private unnamed_addr constant [27 x i8] c"unterminated %guard clause\00", align 1
@.str.46 = private unnamed_addr constant [14 x i8] c";\0A    break;}\00", align 1
@faction = internal global ptr null, align 8
@.str.47.218 = private unnamed_addr constant [20 x i8] c"invalid @-construct\00", align 1
@.str.48 = private unnamed_addr constant [14 x i8] c"unmatched '{'\00", align 1
@.str.49 = private unnamed_addr constant [4 x i8] c"@%d\00", align 1
@.str.50 = private unnamed_addr constant [16 x i8] c"ill-formed rule\00", align 1
@.str.51 = private unnamed_addr constant [33 x i8] c"grammar starts with vertical bar\00", align 1
@.str.52 = private unnamed_addr constant [36 x i8] c"rule given for %s, which is a token\00", align 1
@.str.53.191 = private unnamed_addr constant [50 x i8] c"%guard present but %semantic_parser not specified\00", align 1
@.str.54 = private unnamed_addr constant [31 x i8] c"two actions at end of one rule\00", align 1
@.str.55 = private unnamed_addr constant [60 x i8] c"%s:%d:  warning:  type clash ('%s' '%s') on default action\0A\00", align 1
@.str.56 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.57 = private unnamed_addr constant [14 x i8] c"invalid input\00", align 1
@.str.58 = private unnamed_addr constant [44 x i8] c"#ifndef YYSTYPE\0A#define YYSTYPE int\0A#endif\0A\00", align 1
@.str.59 = private unnamed_addr constant [59 x i8] c"symbol %s used, not defined as token, and no rules for it\0A\00", align 1
@failure = internal global i32 0, align 4
@ntokens = internal global i32 0, align 4
@.str.60 = private unnamed_addr constant [25 x i8] c"bison: memory exhausted\0A\00", align 1
@tags = internal global ptr null, align 8
@.str.61 = private unnamed_addr constant [2 x i8] c"$\00", align 1
@sprec = internal global ptr null, align 8
@sassoc = internal global ptr null, align 8
@max_user_token_number = internal global i32 0, align 4
@token_translations = internal global ptr null, align 8
@.str.62 = private unnamed_addr constant [41 x i8] c"tokens %s and %s both assigned number %d\00", align 1
@error_token_number = internal global i32 0, align 4
@.str.63 = private unnamed_addr constant [33 x i8] c"the start symbol %s is undefined\00", align 1
@.str.64 = private unnamed_addr constant [31 x i8] c"the start symbol %s is a token\00", align 1
@start_symbol = internal global i32 0, align 4
@definesflag = internal global i32 0, align 4
@.str.65 = private unnamed_addr constant [17 x i8] c"#define\09NT%s\09%d\0A\00", align 1
@.str.66 = private unnamed_addr constant [15 x i8] c"#define\09%s\09%d\0A\00", align 1
@.str.67 = private unnamed_addr constant [16 x i8] c"#define\09T%s\09%d\0A\00", align 1
@ritem = internal global ptr null, align 8
@rlhs = internal global ptr null, align 8
@rrhs = internal global ptr null, align 8
@rprec = internal global ptr null, align 8
@rassoc = internal global ptr null, align 8
@symtab = internal global ptr null, align 8
@firstsymbol = internal global ptr null, align 8
@lastsymbol = internal global ptr null, align 8
@nsyms = internal global i32 0, align 4

; Function Attrs: nounwind optsize uwtable
define internal void @allocate_itemsets() #0 {
  %1 = load i32, ptr @nsyms, align 4, !tbaa !7
  %2 = shl i32 %1, 1
  %3 = tail call ptr (i32, ...) @mallocate(i32 noundef %2) #29
  %4 = load ptr, ptr @ritem, align 8, !tbaa !11
  %5 = load i16, ptr %4, align 2, !tbaa !13
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %23, label %7

7:                                                ; preds = %19, %0
  %8 = phi i16 [ %21, %19 ], [ %5, %0 ]
  %9 = phi ptr [ %11, %19 ], [ %4, %0 ]
  %10 = phi i32 [ %20, %19 ], [ 0, %0 ]
  %11 = getelementptr inbounds i16, ptr %9, i64 1
  %12 = icmp sgt i16 %8, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %7
  %14 = zext i16 %8 to i64
  %15 = add nsw i32 %10, 1
  %16 = getelementptr inbounds i16, ptr %3, i64 %14
  %17 = load i16, ptr %16, align 2, !tbaa !13
  %18 = add i16 %17, 1
  store i16 %18, ptr %16, align 2, !tbaa !13
  br label %19

19:                                               ; preds = %13, %7
  %20 = phi i32 [ %15, %13 ], [ %10, %7 ]
  %21 = load i16, ptr %11, align 2, !tbaa !13
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %23, label %7, !llvm.loop !15

23:                                               ; preds = %19, %0
  %24 = phi i32 [ 0, %0 ], [ %20, %19 ]
  %25 = load i32, ptr @nsyms, align 4, !tbaa !7
  %26 = shl i32 %25, 3
  %27 = tail call ptr (i32, ...) @mallocate(i32 noundef %26) #29
  store ptr %27, ptr @kernel_base, align 8, !tbaa !11
  %28 = shl i32 %24, 1
  %29 = tail call ptr (i32, ...) @mallocate(i32 noundef %28) #29
  store ptr %29, ptr @kernel_items, align 8, !tbaa !11
  %30 = load i32, ptr @nsyms, align 4, !tbaa !7
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %47

32:                                               ; preds = %23
  %33 = load ptr, ptr @kernel_base, align 8, !tbaa !11
  %34 = zext i32 %30 to i64
  br label %35

35:                                               ; preds = %35, %32
  %36 = phi i64 [ 0, %32 ], [ %45, %35 ]
  %37 = phi i32 [ 0, %32 ], [ %44, %35 ]
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i16, ptr %29, i64 %38
  %40 = getelementptr inbounds ptr, ptr %33, i64 %36
  store ptr %39, ptr %40, align 8, !tbaa !11
  %41 = getelementptr inbounds i16, ptr %3, i64 %36
  %42 = load i16, ptr %41, align 2, !tbaa !13
  %43 = sext i16 %42 to i32
  %44 = add nsw i32 %37, %43
  %45 = add nuw nsw i64 %36, 1
  %46 = icmp eq i64 %45, %34
  br i1 %46, label %47, label %35, !llvm.loop !17

47:                                               ; preds = %35, %23
  store ptr %3, ptr @shift_symbol, align 8, !tbaa !11
  %48 = shl i32 %30, 3
  %49 = tail call ptr (i32, ...) @mallocate(i32 noundef %48) #29
  store ptr %49, ptr @kernel_end, align 8, !tbaa !11
  ret void
}

; Function Attrs: mustprogress nounwind optsize willreturn uwtable
define internal void @free_storage() #1 {
  %1 = load ptr, ptr @shift_symbol, align 8, !tbaa !11
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @free(ptr noundef nonnull %1) #29
  br label %4

4:                                                ; preds = %3, %0
  %5 = load ptr, ptr @redset, align 8, !tbaa !11
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void @free(ptr noundef nonnull %5) #29
  br label %8

8:                                                ; preds = %7, %4
  %9 = load ptr, ptr @shiftset, align 8, !tbaa !11
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %8
  tail call void @free(ptr noundef nonnull %9) #29
  br label %12

12:                                               ; preds = %11, %8
  %13 = load ptr, ptr @kernel_base, align 8, !tbaa !11
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %12
  tail call void @free(ptr noundef nonnull %13) #29
  br label %16

16:                                               ; preds = %15, %12
  %17 = load ptr, ptr @kernel_end, align 8, !tbaa !11
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %16
  tail call void @free(ptr noundef nonnull %17) #29
  br label %20

20:                                               ; preds = %19, %16
  %21 = load ptr, ptr @kernel_items, align 8, !tbaa !11
  %22 = icmp eq ptr %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %20
  tail call void @free(ptr noundef nonnull %21) #29
  br label %24

24:                                               ; preds = %23, %20
  %25 = load ptr, ptr @state_table.89, align 8, !tbaa !11
  %26 = icmp eq ptr %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %24
  tail call void @free(ptr noundef nonnull %25) #29
  br label %28

28:                                               ; preds = %27, %24
  ret void
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nounwind optsize uwtable
define internal void @generate_states() #0 {
  tail call void @allocate_itemsets() #30
  %1 = load i32, ptr @nsyms, align 4, !tbaa !7
  %2 = shl i32 %1, 1
  %3 = tail call ptr (i32, ...) @mallocate(i32 noundef %2) #29
  store ptr %3, ptr @shiftset, align 8, !tbaa !11
  %4 = load i32, ptr @nrules, align 4, !tbaa !7
  %5 = shl i32 %4, 1
  %6 = add i32 %5, 2
  %7 = tail call ptr (i32, ...) @mallocate(i32 noundef %6) #29
  store ptr %7, ptr @redset, align 8, !tbaa !11
  %8 = tail call ptr (i32, ...) @mallocate(i32 noundef 8072) #29
  store ptr %8, ptr @state_table.89, align 8, !tbaa !11
  %9 = load i32, ptr @nitems, align 4, !tbaa !7
  tail call void @initialize_closure(i32 noundef %9) #29
  %10 = tail call ptr (i32, ...) @mallocate(i32 noundef 22) #29
  store ptr %10, ptr @this_state, align 8, !tbaa !11
  store ptr %10, ptr @last_state, align 8, !tbaa !11
  store ptr %10, ptr @first_state, align 8, !tbaa !11
  store i32 1, ptr @nstates, align 4, !tbaa !7
  %11 = icmp eq ptr %10, null
  br i1 %11, label %25, label %12

12:                                               ; preds = %21, %0
  %13 = phi ptr [ %23, %21 ], [ %10, %0 ]
  %14 = getelementptr inbounds %struct.core, ptr %13, i64 0, i32 5
  %15 = getelementptr inbounds %struct.core, ptr %13, i64 0, i32 4
  %16 = load i16, ptr %15, align 4, !tbaa !18
  %17 = sext i16 %16 to i32
  tail call void @closure(ptr noundef nonnull %14, i32 noundef %17) #29
  tail call void @save_reductions() #30
  tail call void @new_itemsets() #30
  tail call void @append_states() #30
  %18 = load i32, ptr @nshifts, align 4, !tbaa !7
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %12
  tail call void @save_shifts() #30
  br label %21

21:                                               ; preds = %20, %12
  %22 = load ptr, ptr @this_state, align 8, !tbaa !11
  %23 = load ptr, ptr %22, align 8, !tbaa !20
  store ptr %23, ptr @this_state, align 8, !tbaa !11
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %12, !llvm.loop !21

25:                                               ; preds = %21, %0
  tail call void @finalize_closure() #29
  tail call void @free_storage() #30
  tail call void @augment_automaton() #30
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @save_reductions() #0 {
  %1 = load ptr, ptr @itemset, align 8, !tbaa !11
  %2 = load ptr, ptr @itemsetend, align 8, !tbaa !11
  %3 = icmp ult ptr %1, %2
  br i1 %3, label %4, label %53

4:                                                ; preds = %0
  %5 = load ptr, ptr @ritem, align 8, !tbaa !11
  %6 = load ptr, ptr @redset, align 8
  br label %7

7:                                                ; preds = %20, %4
  %8 = phi ptr [ %1, %4 ], [ %22, %20 ]
  %9 = phi i32 [ 0, %4 ], [ %21, %20 ]
  %10 = load i16, ptr %8, align 2, !tbaa !13
  %11 = sext i16 %10 to i64
  %12 = getelementptr inbounds i16, ptr %5, i64 %11
  %13 = load i16, ptr %12, align 2, !tbaa !13
  %14 = icmp slt i16 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %7
  %16 = sub i16 0, %13
  %17 = add nsw i32 %9, 1
  %18 = sext i32 %9 to i64
  %19 = getelementptr inbounds i16, ptr %6, i64 %18
  store i16 %16, ptr %19, align 2, !tbaa !13
  br label %20

20:                                               ; preds = %15, %7
  %21 = phi i32 [ %17, %15 ], [ %9, %7 ]
  %22 = getelementptr inbounds i16, ptr %8, i64 1
  %23 = icmp ult ptr %22, %2
  br i1 %23, label %7, label %24, !llvm.loop !22

24:                                               ; preds = %20
  %.lcssa = phi i32 [ %21, %20 ]
  %25 = icmp eq i32 %.lcssa, 0
  br i1 %25, label %53, label %26

26:                                               ; preds = %24
  %27 = shl i32 %.lcssa, 1
  %28 = add i32 %27, 14
  %29 = tail call ptr (i32, ...) @mallocate(i32 noundef %28) #29
  %30 = load ptr, ptr @this_state, align 8, !tbaa !11
  %31 = getelementptr inbounds %struct.core, ptr %30, i64 0, i32 2
  %32 = load i16, ptr %31, align 8, !tbaa !23
  %33 = getelementptr inbounds %struct.shifts, ptr %29, i64 0, i32 1
  store i16 %32, ptr %33, align 8, !tbaa !24
  %34 = trunc i32 %.lcssa to i16
  %35 = getelementptr inbounds %struct.shifts, ptr %29, i64 0, i32 2
  store i16 %34, ptr %35, align 2, !tbaa !26
  %36 = load ptr, ptr @redset, align 8, !tbaa !11
  %37 = sext i32 %.lcssa to i64
  %38 = getelementptr inbounds i16, ptr %36, i64 %37
  %39 = icmp sgt i32 %.lcssa, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %26
  %41 = getelementptr %struct.shifts, ptr %29, i64 0, i32 3
  br label %42

42:                                               ; preds = %42, %40
  %43 = phi ptr [ %45, %42 ], [ %36, %40 ]
  %44 = phi ptr [ %47, %42 ], [ %41, %40 ]
  %45 = getelementptr inbounds i16, ptr %43, i64 1
  %46 = load i16, ptr %43, align 2, !tbaa !13
  %47 = getelementptr inbounds i16, ptr %44, i64 1
  store i16 %46, ptr %44, align 2, !tbaa !13
  %48 = icmp ult ptr %45, %38
  br i1 %48, label %42, label %49, !llvm.loop !27

49:                                               ; preds = %42, %26
  %50 = load ptr, ptr @last_reduction, align 8, !tbaa !11
  %51 = icmp eq ptr %50, null
  %52 = select i1 %51, ptr @first_reduction, ptr %50
  store ptr %29, ptr %52, align 8, !tbaa !11
  store ptr %29, ptr @last_reduction, align 8, !tbaa !11
  br label %53

53:                                               ; preds = %49, %24, %0
  ret void
}

; Function Attrs: nofree nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal void @new_itemsets() #3 {
  %1 = load i32, ptr @nsyms, align 4, !tbaa !7
  %2 = icmp sgt i32 %1, 0
  br i1 %2, label %3, label %7

3:                                                ; preds = %0
  %4 = load ptr, ptr @kernel_end, align 8, !tbaa !11
  %5 = zext i32 %1 to i64
  %6 = shl nuw nsw i64 %5, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %4, i8 0, i64 %6, i1 false), !tbaa !11
  br label %7

7:                                                ; preds = %3, %0
  %8 = load ptr, ptr @itemset, align 8, !tbaa !11
  %9 = load ptr, ptr @itemsetend, align 8, !tbaa !11
  %10 = icmp ult ptr %8, %9
  br i1 %10, label %11, label %50

11:                                               ; preds = %7
  %12 = load ptr, ptr @kernel_end, align 8
  %13 = load ptr, ptr @shift_symbol, align 8
  %14 = load ptr, ptr @kernel_base, align 8
  %15 = load ptr, ptr @ritem, align 8, !tbaa !11
  br label %16

16:                                               ; preds = %45, %11
  %17 = phi ptr [ %9, %11 ], [ %46, %45 ]
  %18 = phi ptr [ %15, %11 ], [ %47, %45 ]
  %19 = phi ptr [ %8, %11 ], [ %21, %45 ]
  %20 = phi i32 [ 0, %11 ], [ %48, %45 ]
  %21 = getelementptr inbounds i16, ptr %19, i64 1
  %22 = load i16, ptr %19, align 2, !tbaa !13
  %23 = sext i16 %22 to i64
  %24 = getelementptr inbounds i16, ptr %18, i64 %23
  %25 = load i16, ptr %24, align 2, !tbaa !13
  %26 = icmp sgt i16 %25, 0
  br i1 %26, label %27, label %45

27:                                               ; preds = %16
  %28 = zext i16 %25 to i64
  %29 = getelementptr inbounds ptr, ptr %12, i64 %28
  %30 = load ptr, ptr %29, align 8, !tbaa !11
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %38

32:                                               ; preds = %27
  %33 = add nsw i32 %20, 1
  %34 = sext i32 %20 to i64
  %35 = getelementptr inbounds i16, ptr %13, i64 %34
  store i16 %25, ptr %35, align 2, !tbaa !13
  %36 = getelementptr inbounds ptr, ptr %14, i64 %28
  %37 = load ptr, ptr %36, align 8, !tbaa !11
  br label %38

38:                                               ; preds = %32, %27
  %39 = phi i32 [ %20, %27 ], [ %33, %32 ]
  %40 = phi ptr [ %30, %27 ], [ %37, %32 ]
  %41 = add i16 %22, 1
  %42 = getelementptr inbounds i16, ptr %40, i64 1
  store i16 %41, ptr %40, align 2, !tbaa !13
  store ptr %42, ptr %29, align 8, !tbaa !11
  %43 = load ptr, ptr @ritem, align 8, !tbaa !11
  %44 = load ptr, ptr @itemsetend, align 8, !tbaa !11
  br label %45

45:                                               ; preds = %38, %16
  %46 = phi ptr [ %44, %38 ], [ %17, %16 ]
  %47 = phi ptr [ %43, %38 ], [ %18, %16 ]
  %48 = phi i32 [ %39, %38 ], [ %20, %16 ]
  %49 = icmp ult ptr %21, %46
  br i1 %49, label %16, label %50, !llvm.loop !28

50:                                               ; preds = %45, %7
  %51 = phi i32 [ 0, %7 ], [ %48, %45 ]
  store i32 %51, ptr @nshifts, align 4, !tbaa !7
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @append_states() #0 {
  %1 = load i32, ptr @nshifts, align 4, !tbaa !7
  %2 = icmp sgt i32 %1, 1
  br i1 %2, label %3, label %6

3:                                                ; preds = %0
  %4 = load ptr, ptr @shift_symbol, align 8, !tbaa !11
  %5 = zext i32 %1 to i64
  br label %8

6:                                                ; preds = %22, %0
  %7 = icmp sgt i32 %1, 0
  br i1 %7, label %29, label %43

8:                                                ; preds = %22, %3
  %9 = phi i64 [ 1, %3 ], [ %27, %22 ]
  %10 = getelementptr inbounds i16, ptr %4, i64 %9
  %11 = load i16, ptr %10, align 2, !tbaa !13
  br label %12

12:                                               ; preds = %19, %8
  %13 = phi i64 [ %9, %8 ], [ %14, %19 ]
  %14 = add nsw i64 %13, -1
  %15 = and i64 %14, 4294967295
  %16 = getelementptr inbounds i16, ptr %4, i64 %15
  %17 = load i16, ptr %16, align 2, !tbaa !13
  %18 = icmp sgt i16 %17, %11
  br i1 %18, label %19, label %22

19:                                               ; preds = %12
  %20 = getelementptr inbounds i16, ptr %4, i64 %13
  store i16 %17, ptr %20, align 2, !tbaa !13
  %21 = icmp sgt i64 %13, 1
  br i1 %21, label %12, label %22, !llvm.loop !29

22:                                               ; preds = %19, %12
  %23 = phi i64 [ 0, %19 ], [ %13, %12 ]
  %24 = shl i64 %23, 32
  %25 = ashr exact i64 %24, 32
  %26 = getelementptr inbounds i16, ptr %4, i64 %25
  store i16 %11, ptr %26, align 2, !tbaa !13
  %27 = add nuw nsw i64 %9, 1
  %28 = icmp eq i64 %27, %5
  br i1 %28, label %6, label %8, !llvm.loop !30

29:                                               ; preds = %29, %6
  %30 = phi i64 [ %39, %29 ], [ 0, %6 ]
  %31 = load ptr, ptr @shift_symbol, align 8, !tbaa !11
  %32 = getelementptr inbounds i16, ptr %31, i64 %30
  %33 = load i16, ptr %32, align 2, !tbaa !13
  %34 = sext i16 %33 to i32
  %35 = tail call i32 @get_state(i32 noundef %34) #30, !range !31
  %36 = trunc i32 %35 to i16
  %37 = load ptr, ptr @shiftset, align 8, !tbaa !11
  %38 = getelementptr inbounds i16, ptr %37, i64 %30
  store i16 %36, ptr %38, align 2, !tbaa !13
  %39 = add nuw nsw i64 %30, 1
  %40 = load i32, ptr @nshifts, align 4, !tbaa !7
  %41 = sext i32 %40 to i64
  %42 = icmp slt i64 %39, %41
  br i1 %42, label %29, label %43, !llvm.loop !32

43:                                               ; preds = %29, %6
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @save_shifts() #0 {
  %1 = load i32, ptr @nshifts, align 4, !tbaa !7
  %2 = shl i32 %1, 1
  %3 = add i32 %2, 14
  %4 = tail call ptr (i32, ...) @mallocate(i32 noundef %3) #29
  %5 = load ptr, ptr @this_state, align 8, !tbaa !11
  %6 = getelementptr inbounds %struct.core, ptr %5, i64 0, i32 2
  %7 = load i16, ptr %6, align 8, !tbaa !23
  %8 = getelementptr inbounds %struct.shifts, ptr %4, i64 0, i32 1
  store i16 %7, ptr %8, align 8, !tbaa !33
  %9 = load i32, ptr @nshifts, align 4, !tbaa !7
  %10 = trunc i32 %9 to i16
  %11 = getelementptr inbounds %struct.shifts, ptr %4, i64 0, i32 2
  store i16 %10, ptr %11, align 2, !tbaa !35
  %12 = load ptr, ptr @shiftset, align 8, !tbaa !11
  %13 = sext i32 %9 to i64
  %14 = getelementptr inbounds i16, ptr %12, i64 %13
  %15 = icmp sgt i32 %9, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %0
  %17 = getelementptr %struct.shifts, ptr %4, i64 0, i32 3
  br label %18

18:                                               ; preds = %18, %16
  %19 = phi ptr [ %21, %18 ], [ %12, %16 ]
  %20 = phi ptr [ %23, %18 ], [ %17, %16 ]
  %21 = getelementptr inbounds i16, ptr %19, i64 1
  %22 = load i16, ptr %19, align 2, !tbaa !13
  %23 = getelementptr inbounds i16, ptr %20, i64 1
  store i16 %22, ptr %20, align 2, !tbaa !13
  %24 = icmp ult ptr %21, %14
  br i1 %24, label %18, label %25, !llvm.loop !36

25:                                               ; preds = %18, %0
  %26 = load ptr, ptr @last_shift, align 8, !tbaa !11
  %27 = icmp eq ptr %26, null
  %28 = select i1 %27, ptr @first_shift, ptr %26
  store ptr %4, ptr %28, align 8, !tbaa !11
  store ptr %4, ptr @last_shift, align 8, !tbaa !11
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @augment_automaton() #0 {
  %1 = load ptr, ptr @first_shift, align 8, !tbaa !11
  %2 = icmp eq ptr %1, null
  br i1 %2, label %156, label %3

3:                                                ; preds = %0
  %4 = getelementptr inbounds %struct.shifts, ptr %1, i64 0, i32 1
  %5 = load i16, ptr %4, align 8, !tbaa !33
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %7, label %132

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.shifts, ptr %1, i64 0, i32 2
  %9 = load i16, ptr %8, align 2, !tbaa !35
  %10 = load ptr, ptr @first_state, align 8, !tbaa !11
  %11 = load i32, ptr @start_symbol, align 4, !tbaa !7
  br label %12

12:                                               ; preds = %19, %7
  %13 = phi ptr [ %10, %7 ], [ %14, %19 ]
  %14 = load ptr, ptr %13, align 8, !tbaa !20
  %15 = getelementptr inbounds %struct.core, ptr %14, i64 0, i32 3
  %16 = load i16, ptr %15, align 2, !tbaa !37
  %17 = sext i16 %16 to i32
  %18 = icmp sgt i32 %11, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.core, ptr %14, i64 0, i32 2
  %21 = load i16, ptr %20, align 8, !tbaa !23
  %22 = icmp slt i16 %21, %9
  br i1 %22, label %12, label %23, !llvm.loop !38

23:                                               ; preds = %19, %12
  %.lcssa1 = phi ptr [ %14, %19 ], [ %14, %12 ]
  %.lcssa = phi i32 [ %17, %19 ], [ %17, %12 ]
  %24 = icmp eq i32 %11, %.lcssa
  %25 = getelementptr inbounds %struct.core, ptr %.lcssa1, i64 0, i32 2
  %26 = load i16, ptr %25, align 8, !tbaa !23
  br i1 %24, label %27, label %75

27:                                               ; preds = %23
  %28 = icmp sgt i16 %26, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %29, %27
  %30 = phi ptr [ %31, %29 ], [ %1, %27 ]
  %31 = load ptr, ptr %30, align 8, !tbaa !39
  %32 = getelementptr inbounds %struct.shifts, ptr %31, i64 0, i32 1
  %33 = load i16, ptr %32, align 8, !tbaa !33
  %34 = icmp slt i16 %33, %26
  br i1 %34, label %29, label %35, !llvm.loop !40

35:                                               ; preds = %29, %27
  %36 = phi ptr [ %1, %27 ], [ %31, %29 ]
  %37 = phi ptr [ undef, %27 ], [ %30, %29 ]
  %38 = phi i16 [ 0, %27 ], [ %33, %29 ]
  %39 = icmp eq i16 %38, %26
  br i1 %39, label %40, label %68

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.shifts, ptr %36, i64 0, i32 2
  %42 = load i16, ptr %41, align 2, !tbaa !35
  %43 = sext i16 %42 to i32
  %44 = shl nsw i32 %43, 1
  %45 = add nsw i32 %44, 16
  %46 = tail call ptr (i32, ...) @mallocate(i32 noundef %45) #29
  %47 = load ptr, ptr %36, align 8, !tbaa !39
  store ptr %47, ptr %46, align 8, !tbaa !39
  %48 = getelementptr inbounds %struct.shifts, ptr %46, i64 0, i32 1
  store i16 %26, ptr %48, align 8, !tbaa !33
  %49 = load i16, ptr %41, align 2, !tbaa !35
  %50 = add i16 %49, 1
  %51 = getelementptr inbounds %struct.shifts, ptr %46, i64 0, i32 2
  store i16 %50, ptr %51, align 2, !tbaa !35
  %52 = load i32, ptr @nstates, align 4, !tbaa !7
  %53 = trunc i32 %52 to i16
  %54 = getelementptr inbounds %struct.shifts, ptr %46, i64 0, i32 3
  store i16 %53, ptr %54, align 4, !tbaa !13
  %55 = load i16, ptr %41, align 2, !tbaa !35
  %56 = icmp sgt i16 %55, 0
  br i1 %56, label %57, label %67

57:                                               ; preds = %40
  %58 = zext i16 %55 to i64
  br label %59

59:                                               ; preds = %59, %57
  %60 = phi i64 [ %58, %57 ], [ %61, %59 ]
  %61 = add nsw i64 %60, -1
  %62 = and i64 %61, 4294967295
  %63 = getelementptr inbounds %struct.shifts, ptr %36, i64 0, i32 3, i64 %62
  %64 = load i16, ptr %63, align 2, !tbaa !13
  %65 = getelementptr inbounds %struct.shifts, ptr %46, i64 0, i32 3, i64 %60
  store i16 %64, ptr %65, align 2, !tbaa !13
  %66 = icmp ugt i64 %60, 1
  br i1 %66, label %59, label %67, !llvm.loop !41

67:                                               ; preds = %59, %40
  store ptr %46, ptr %37, align 8, !tbaa !39
  tail call void @free(ptr noundef nonnull %36) #29
  br label %179

68:                                               ; preds = %35
  %69 = tail call ptr (i32, ...) @mallocate(i32 noundef 16) #29
  store ptr %36, ptr %69, align 8, !tbaa !39
  %70 = getelementptr inbounds %struct.shifts, ptr %69, i64 0, i32 1
  store i16 %26, ptr %70, align 8, !tbaa !33
  %71 = getelementptr inbounds %struct.shifts, ptr %69, i64 0, i32 2
  store i16 1, ptr %71, align 2, !tbaa !35
  %72 = load i32, ptr @nstates, align 4, !tbaa !7
  %73 = trunc i32 %72 to i16
  %74 = getelementptr inbounds %struct.shifts, ptr %69, i64 0, i32 3
  store i16 %73, ptr %74, align 4, !tbaa !13
  store ptr %69, ptr %37, align 8, !tbaa !39
  br label %179

75:                                               ; preds = %23
  %76 = sext i16 %9 to i32
  %77 = shl nsw i32 %76, 1
  %78 = add nsw i32 %77, 16
  %79 = tail call ptr (i32, ...) @mallocate(i32 noundef %78) #29
  %80 = load ptr, ptr %1, align 8, !tbaa !39
  store ptr %80, ptr %79, align 8, !tbaa !39
  %81 = load i16, ptr %8, align 2, !tbaa !35
  %82 = add i16 %81, 1
  %83 = getelementptr inbounds %struct.shifts, ptr %79, i64 0, i32 2
  store i16 %82, ptr %83, align 2, !tbaa !35
  %84 = icmp sgt i16 %26, 0
  br i1 %84, label %85, label %94

85:                                               ; preds = %75
  %86 = zext i16 %26 to i64
  br label %87

87:                                               ; preds = %87, %85
  %88 = phi i64 [ 0, %85 ], [ %92, %87 ]
  %89 = getelementptr inbounds %struct.shifts, ptr %1, i64 0, i32 3, i64 %88
  %90 = load i16, ptr %89, align 2, !tbaa !13
  %91 = getelementptr inbounds %struct.shifts, ptr %79, i64 0, i32 3, i64 %88
  store i16 %90, ptr %91, align 2, !tbaa !13
  %92 = add nuw nsw i64 %88, 1
  %93 = icmp eq i64 %92, %86
  br i1 %93, label %94, label %87, !llvm.loop !42

94:                                               ; preds = %87, %75
  %95 = load i32, ptr @nstates, align 4, !tbaa !7
  %96 = trunc i32 %95 to i16
  %97 = sext i16 %26 to i64
  %98 = getelementptr inbounds %struct.shifts, ptr %79, i64 0, i32 3, i64 %97
  store i16 %96, ptr %98, align 2, !tbaa !13
  %99 = load i16, ptr %8, align 2, !tbaa !35
  %100 = icmp slt i16 %26, %99
  br i1 %100, label %101, label %110

101:                                              ; preds = %101, %94
  %102 = phi i64 [ %105, %101 ], [ %97, %94 ]
  %103 = getelementptr inbounds %struct.shifts, ptr %1, i64 0, i32 3, i64 %102
  %104 = load i16, ptr %103, align 2, !tbaa !13
  %105 = add nsw i64 %102, 1
  %106 = getelementptr inbounds %struct.shifts, ptr %79, i64 0, i32 3, i64 %105
  store i16 %104, ptr %106, align 2, !tbaa !13
  %107 = load i16, ptr %8, align 2, !tbaa !35
  %108 = sext i16 %107 to i64
  %109 = icmp slt i64 %105, %108
  br i1 %109, label %101, label %110, !llvm.loop !43

110:                                              ; preds = %101, %94
  store ptr %79, ptr @first_shift, align 8, !tbaa !11
  %111 = load ptr, ptr @last_shift, align 8, !tbaa !11
  %112 = icmp eq ptr %111, %1
  br i1 %112, label %113, label %114

113:                                              ; preds = %110
  store ptr %79, ptr @last_shift, align 8, !tbaa !11
  br label %114

114:                                              ; preds = %113, %110
  tail call void @free(ptr noundef nonnull %1) #29
  %115 = tail call ptr (i32, ...) @mallocate(i32 noundef 22) #29
  %116 = load i32, ptr @nstates, align 4, !tbaa !7
  %117 = trunc i32 %116 to i16
  %118 = getelementptr inbounds %struct.core, ptr %115, i64 0, i32 2
  store i16 %117, ptr %118, align 8, !tbaa !23
  %119 = load i32, ptr @start_symbol, align 4, !tbaa !7
  %120 = trunc i32 %119 to i16
  %121 = getelementptr inbounds %struct.core, ptr %115, i64 0, i32 3
  store i16 %120, ptr %121, align 2, !tbaa !37
  %122 = load ptr, ptr @last_state, align 8, !tbaa !11
  store ptr %115, ptr %122, align 8, !tbaa !20
  store ptr %115, ptr @last_state, align 8, !tbaa !11
  %123 = tail call ptr (i32, ...) @mallocate(i32 noundef 16) #29
  %124 = load i32, ptr @nstates, align 4, !tbaa !7
  %125 = add nsw i32 %124, 1
  store i32 %125, ptr @nstates, align 4, !tbaa !7
  %126 = trunc i32 %124 to i16
  %127 = getelementptr inbounds %struct.shifts, ptr %123, i64 0, i32 1
  store i16 %126, ptr %127, align 8, !tbaa !33
  %128 = getelementptr inbounds %struct.shifts, ptr %123, i64 0, i32 2
  store i16 1, ptr %128, align 2, !tbaa !35
  %129 = trunc i32 %125 to i16
  %130 = getelementptr inbounds %struct.shifts, ptr %123, i64 0, i32 3
  store i16 %129, ptr %130, align 4, !tbaa !13
  %131 = load ptr, ptr @last_shift, align 8, !tbaa !11
  store ptr %123, ptr %131, align 8, !tbaa !39
  store ptr %123, ptr @last_shift, align 8, !tbaa !11
  br label %179

132:                                              ; preds = %3
  %133 = tail call ptr (i32, ...) @mallocate(i32 noundef 16) #29
  %134 = load ptr, ptr @first_shift, align 8, !tbaa !11
  store ptr %134, ptr %133, align 8, !tbaa !39
  %135 = getelementptr inbounds %struct.shifts, ptr %133, i64 0, i32 2
  store i16 1, ptr %135, align 2, !tbaa !35
  %136 = load i32, ptr @nstates, align 4, !tbaa !7
  %137 = trunc i32 %136 to i16
  %138 = getelementptr inbounds %struct.shifts, ptr %133, i64 0, i32 3
  store i16 %137, ptr %138, align 4, !tbaa !13
  store ptr %133, ptr @first_shift, align 8, !tbaa !11
  %139 = tail call ptr (i32, ...) @mallocate(i32 noundef 22) #29
  %140 = load i32, ptr @nstates, align 4, !tbaa !7
  %141 = trunc i32 %140 to i16
  %142 = getelementptr inbounds %struct.core, ptr %139, i64 0, i32 2
  store i16 %141, ptr %142, align 8, !tbaa !23
  %143 = load i32, ptr @start_symbol, align 4, !tbaa !7
  %144 = trunc i32 %143 to i16
  %145 = getelementptr inbounds %struct.core, ptr %139, i64 0, i32 3
  store i16 %144, ptr %145, align 2, !tbaa !37
  %146 = load ptr, ptr @last_state, align 8, !tbaa !11
  store ptr %139, ptr %146, align 8, !tbaa !20
  store ptr %139, ptr @last_state, align 8, !tbaa !11
  %147 = tail call ptr (i32, ...) @mallocate(i32 noundef 16) #29
  %148 = load i32, ptr @nstates, align 4, !tbaa !7
  %149 = add nsw i32 %148, 1
  store i32 %149, ptr @nstates, align 4, !tbaa !7
  %150 = trunc i32 %148 to i16
  %151 = getelementptr inbounds %struct.shifts, ptr %147, i64 0, i32 1
  store i16 %150, ptr %151, align 8, !tbaa !33
  %152 = getelementptr inbounds %struct.shifts, ptr %147, i64 0, i32 2
  store i16 1, ptr %152, align 2, !tbaa !35
  %153 = trunc i32 %149 to i16
  %154 = getelementptr inbounds %struct.shifts, ptr %147, i64 0, i32 3
  store i16 %153, ptr %154, align 4, !tbaa !13
  %155 = load ptr, ptr @last_shift, align 8, !tbaa !11
  store ptr %147, ptr %155, align 8, !tbaa !39
  store ptr %147, ptr @last_shift, align 8, !tbaa !11
  br label %179

156:                                              ; preds = %0
  %157 = tail call ptr (i32, ...) @mallocate(i32 noundef 16) #29
  %158 = getelementptr inbounds %struct.shifts, ptr %157, i64 0, i32 2
  store i16 1, ptr %158, align 2, !tbaa !35
  %159 = load i32, ptr @nstates, align 4, !tbaa !7
  %160 = trunc i32 %159 to i16
  %161 = getelementptr inbounds %struct.shifts, ptr %157, i64 0, i32 3
  store i16 %160, ptr %161, align 4, !tbaa !13
  store ptr %157, ptr @first_shift, align 8, !tbaa !11
  store ptr %157, ptr @last_shift, align 8, !tbaa !11
  %162 = tail call ptr (i32, ...) @mallocate(i32 noundef 22) #29
  %163 = load i32, ptr @nstates, align 4, !tbaa !7
  %164 = trunc i32 %163 to i16
  %165 = getelementptr inbounds %struct.core, ptr %162, i64 0, i32 2
  store i16 %164, ptr %165, align 8, !tbaa !23
  %166 = load i32, ptr @start_symbol, align 4, !tbaa !7
  %167 = trunc i32 %166 to i16
  %168 = getelementptr inbounds %struct.core, ptr %162, i64 0, i32 3
  store i16 %167, ptr %168, align 2, !tbaa !37
  %169 = load ptr, ptr @last_state, align 8, !tbaa !11
  store ptr %162, ptr %169, align 8, !tbaa !20
  store ptr %162, ptr @last_state, align 8, !tbaa !11
  %170 = tail call ptr (i32, ...) @mallocate(i32 noundef 16) #29
  %171 = load i32, ptr @nstates, align 4, !tbaa !7
  %172 = add nsw i32 %171, 1
  store i32 %172, ptr @nstates, align 4, !tbaa !7
  %173 = trunc i32 %171 to i16
  %174 = getelementptr inbounds %struct.shifts, ptr %170, i64 0, i32 1
  store i16 %173, ptr %174, align 8, !tbaa !33
  %175 = getelementptr inbounds %struct.shifts, ptr %170, i64 0, i32 2
  store i16 1, ptr %175, align 2, !tbaa !35
  %176 = trunc i32 %172 to i16
  %177 = getelementptr inbounds %struct.shifts, ptr %170, i64 0, i32 3
  store i16 %176, ptr %177, align 4, !tbaa !13
  %178 = load ptr, ptr @last_shift, align 8, !tbaa !11
  store ptr %170, ptr %178, align 8, !tbaa !39
  store ptr %170, ptr @last_shift, align 8, !tbaa !11
  br label %179

179:                                              ; preds = %156, %132, %114, %68, %67
  %180 = tail call ptr (i32, ...) @mallocate(i32 noundef 22) #29
  %181 = load i32, ptr @nstates, align 4, !tbaa !7
  %182 = trunc i32 %181 to i16
  %183 = getelementptr inbounds %struct.core, ptr %180, i64 0, i32 2
  store i16 %182, ptr %183, align 8, !tbaa !23
  %184 = load ptr, ptr @last_state, align 8, !tbaa !11
  store ptr %180, ptr %184, align 8, !tbaa !20
  store ptr %180, ptr @last_state, align 8, !tbaa !11
  %185 = tail call ptr (i32, ...) @mallocate(i32 noundef 16) #29
  %186 = load i32, ptr @nstates, align 4, !tbaa !7
  %187 = add nsw i32 %186, 1
  store i32 %187, ptr @nstates, align 4, !tbaa !7
  %188 = trunc i32 %186 to i16
  %189 = getelementptr inbounds %struct.shifts, ptr %185, i64 0, i32 1
  store i16 %188, ptr %189, align 8, !tbaa !33
  %190 = getelementptr inbounds %struct.shifts, ptr %185, i64 0, i32 2
  store i16 1, ptr %190, align 2, !tbaa !35
  %191 = trunc i32 %187 to i16
  %192 = getelementptr inbounds %struct.shifts, ptr %185, i64 0, i32 3
  store i16 %191, ptr %192, align 4, !tbaa !13
  %193 = load ptr, ptr @last_shift, align 8, !tbaa !11
  store ptr %185, ptr %193, align 8, !tbaa !39
  store ptr %185, ptr @last_shift, align 8, !tbaa !11
  store i32 %187, ptr @final_state, align 4, !tbaa !7
  %194 = tail call ptr (i32, ...) @mallocate(i32 noundef 22) #29
  %195 = load i32, ptr @nstates, align 4, !tbaa !7
  %196 = add nsw i32 %195, 1
  store i32 %196, ptr @nstates, align 4, !tbaa !7
  %197 = trunc i32 %195 to i16
  %198 = getelementptr inbounds %struct.core, ptr %194, i64 0, i32 2
  store i16 %197, ptr %198, align 8, !tbaa !23
  %199 = load ptr, ptr @last_state, align 8, !tbaa !11
  store ptr %194, ptr %199, align 8, !tbaa !20
  store ptr %194, ptr @last_state, align 8, !tbaa !11
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @get_state(i32 noundef %0) #0 {
  %2 = load ptr, ptr @kernel_base, align 8, !tbaa !11
  %3 = sext i32 %0 to i64
  %4 = getelementptr inbounds ptr, ptr %2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !11
  %6 = load ptr, ptr @kernel_end, align 8, !tbaa !11
  %7 = getelementptr inbounds ptr, ptr %6, i64 %3
  %8 = load ptr, ptr %7, align 8, !tbaa !11
  %9 = ptrtoint ptr %8 to i64
  %10 = ptrtoint ptr %5 to i64
  %11 = sub i64 %9, %10
  %12 = lshr exact i64 %11, 1
  %13 = trunc i64 %12 to i32
  %14 = icmp ult ptr %5, %8
  br i1 %14, label %15, label %26

15:                                               ; preds = %15, %1
  %16 = phi i32 [ %21, %15 ], [ 0, %1 ]
  %17 = phi ptr [ %18, %15 ], [ %5, %1 ]
  %18 = getelementptr inbounds i16, ptr %17, i64 1
  %19 = load i16, ptr %17, align 2, !tbaa !13
  %20 = sext i16 %19 to i32
  %21 = add nsw i32 %16, %20
  %22 = icmp ult ptr %18, %8
  br i1 %22, label %15, label %23, !llvm.loop !44

23:                                               ; preds = %15
  %.lcssa2 = phi i32 [ %21, %15 ]
  %24 = srem i32 %.lcssa2, 1009
  %25 = sext i32 %24 to i64
  br label %26

26:                                               ; preds = %23, %1
  %27 = phi i64 [ 0, %1 ], [ %25, %23 ]
  %28 = load ptr, ptr @state_table.89, align 8, !tbaa !11
  %29 = getelementptr inbounds ptr, ptr %28, i64 %27
  %30 = load ptr, ptr %29, align 8, !tbaa !11
  %31 = icmp eq ptr %30, null
  br i1 %31, label %64, label %32

32:                                               ; preds = %26
  %33 = load ptr, ptr @kernel_base, align 8
  %34 = getelementptr inbounds ptr, ptr %33, i64 %3
  br label %35

35:                                               ; preds = %57, %32
  %36 = phi ptr [ %30, %32 ], [ %59, %57 ]
  %37 = getelementptr inbounds %struct.core, ptr %36, i64 0, i32 4
  %38 = load i16, ptr %37, align 4, !tbaa !18
  %39 = sext i16 %38 to i32
  %40 = icmp eq i32 %39, %13
  br i1 %40, label %41, label %57

41:                                               ; preds = %35
  %42 = load ptr, ptr %34, align 8, !tbaa !11
  %43 = icmp ult ptr %42, %8
  br i1 %43, label %44, label %68

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.core, ptr %36, i64 0, i32 5
  br label %46

46:                                               ; preds = %46, %44
  %47 = phi ptr [ %49, %46 ], [ %42, %44 ]
  %48 = phi ptr [ %51, %46 ], [ %45, %44 ]
  %49 = getelementptr inbounds i16, ptr %47, i64 1
  %50 = load i16, ptr %47, align 2, !tbaa !13
  %51 = getelementptr inbounds i16, ptr %48, i64 1
  %52 = load i16, ptr %48, align 2, !tbaa !13
  %53 = icmp eq i16 %50, %52
  %54 = icmp ult ptr %49, %8
  %55 = select i1 %53, i1 %54, i1 false
  br i1 %55, label %46, label %56, !llvm.loop !45

56:                                               ; preds = %46
  %.lcssa = phi i1 [ %53, %46 ]
  br i1 %.lcssa, label %68, label %57

57:                                               ; preds = %56, %35
  %58 = getelementptr inbounds %struct.core, ptr %36, i64 0, i32 1
  %59 = load ptr, ptr %58, align 8, !tbaa !46
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %35, !llvm.loop !47

61:                                               ; preds = %57
  %.lcssa1 = phi ptr [ %36, %57 ]
  %62 = getelementptr inbounds %struct.core, ptr %.lcssa1, i64 0, i32 1
  %63 = tail call ptr @new_state(i32 noundef %0) #30
  store ptr %63, ptr %62, align 8, !tbaa !46
  br label %68

64:                                               ; preds = %26
  %65 = tail call ptr @new_state(i32 noundef %0) #30
  %66 = load ptr, ptr @state_table.89, align 8, !tbaa !11
  %67 = getelementptr inbounds ptr, ptr %66, i64 %27
  store ptr %65, ptr %67, align 8, !tbaa !11
  br label %68

68:                                               ; preds = %64, %61, %56, %41
  %69 = phi ptr [ %65, %64 ], [ %63, %61 ], [ %36, %56 ], [ %36, %41 ]
  %70 = getelementptr inbounds %struct.core, ptr %69, i64 0, i32 2
  %71 = load i16, ptr %70, align 8, !tbaa !23
  %72 = sext i16 %71 to i32
  ret i32 %72
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @new_state(i32 noundef %0) #0 {
  %2 = load i32, ptr @nstates, align 4, !tbaa !7
  %3 = icmp sgt i32 %2, 32766
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @toomany(ptr noundef nonnull @.str) #29
  br label %5

5:                                                ; preds = %4, %1
  %6 = load ptr, ptr @kernel_base, align 8, !tbaa !11
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !11
  %10 = load ptr, ptr @kernel_end, align 8, !tbaa !11
  %11 = getelementptr inbounds ptr, ptr %10, i64 %7
  %12 = load ptr, ptr %11, align 8, !tbaa !11
  %13 = ptrtoint ptr %12 to i64
  %14 = ptrtoint ptr %9 to i64
  %15 = sub i64 %13, %14
  %16 = lshr exact i64 %15, 1
  %17 = trunc i64 %15 to i32
  %18 = and i32 %17, -2
  %19 = add i32 %18, 22
  %20 = tail call ptr (i32, ...) @mallocate(i32 noundef %19) #29
  %21 = trunc i32 %0 to i16
  %22 = getelementptr inbounds %struct.core, ptr %20, i64 0, i32 3
  store i16 %21, ptr %22, align 2, !tbaa !37
  %23 = load i32, ptr @nstates, align 4, !tbaa !7
  %24 = trunc i32 %23 to i16
  %25 = getelementptr inbounds %struct.core, ptr %20, i64 0, i32 2
  store i16 %24, ptr %25, align 8, !tbaa !23
  %26 = trunc i64 %16 to i16
  %27 = getelementptr inbounds %struct.core, ptr %20, i64 0, i32 4
  store i16 %26, ptr %27, align 4, !tbaa !18
  %28 = icmp ult ptr %9, %12
  br i1 %28, label %29, label %38

29:                                               ; preds = %5
  %30 = getelementptr %struct.core, ptr %20, i64 0, i32 5
  br label %31

31:                                               ; preds = %31, %29
  %32 = phi ptr [ %34, %31 ], [ %9, %29 ]
  %33 = phi ptr [ %36, %31 ], [ %30, %29 ]
  %34 = getelementptr inbounds i16, ptr %32, i64 1
  %35 = load i16, ptr %32, align 2, !tbaa !13
  %36 = getelementptr inbounds i16, ptr %33, i64 1
  store i16 %35, ptr %33, align 2, !tbaa !13
  %37 = icmp ult ptr %34, %12
  br i1 %37, label %31, label %38, !llvm.loop !48

38:                                               ; preds = %31, %5
  %39 = load ptr, ptr @last_state, align 8, !tbaa !11
  store ptr %20, ptr %39, align 8, !tbaa !20
  store ptr %20, ptr @last_state, align 8, !tbaa !11
  %40 = add nsw i32 %23, 1
  store i32 %40, ptr @nstates, align 4, !tbaa !7
  ret ptr %20
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: nounwind optsize uwtable
define internal noalias ptr @mallocate(i32 noundef %0) #0 {
  %2 = zext i32 %0 to i64
  %3 = tail call noalias ptr @calloc(i64 noundef %2, i64 noundef 1) #31
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = load ptr, ptr @stderr, align 8, !tbaa !11
  %7 = tail call i64 @fwrite(ptr nonnull @.str.3, i64 24, i64 1, ptr %6) #32
  tail call void @done(i32 noundef 1) #29
  br label %8

8:                                                ; preds = %5, %1
  ret ptr %3
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind optsize uwtable
define internal void @initialize_closure(i32 noundef %0) #0 {
  %2 = shl i32 %0, 1
  %3 = tail call ptr (i32, ...) @mallocate(i32 noundef %2) #29
  store ptr %3, ptr @itemset, align 8, !tbaa !11
  %4 = load i32, ptr @nrules, align 4, !tbaa !7
  %5 = add nsw i32 %4, 32
  %6 = sdiv i32 %5, 32
  store i32 %6, ptr @rulesetsize, align 4, !tbaa !7
  %7 = shl nsw i32 %6, 2
  %8 = tail call ptr (i32, ...) @mallocate(i32 noundef %7) #29
  store ptr %8, ptr @ruleset, align 8, !tbaa !11
  tail call void @set_fderives() #30
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @set_fderives() #0 {
  %1 = load i32, ptr @nvars, align 4, !tbaa !7
  %2 = load i32, ptr @rulesetsize, align 4, !tbaa !7
  %3 = shl i32 %1, 2
  %4 = mul i32 %3, %2
  %5 = tail call ptr (i32, ...) @mallocate(i32 noundef %4) #29
  %6 = load i32, ptr @ntokens, align 4, !tbaa !7
  %7 = load i32, ptr @rulesetsize, align 4, !tbaa !7
  %8 = mul nsw i32 %7, %6
  %9 = sext i32 %8 to i64
  %10 = sub nsw i64 0, %9
  %11 = getelementptr inbounds i32, ptr %5, i64 %10
  store ptr %11, ptr @fderives, align 8, !tbaa !11
  tail call void @set_firsts() #30
  %12 = load i32, ptr @ntokens, align 4, !tbaa !7
  %13 = load i32, ptr @nsyms, align 4, !tbaa !7
  %14 = icmp slt i32 %12, %13
  %15 = load ptr, ptr @firsts, align 8, !tbaa !11
  br i1 %14, label %16, label %91

16:                                               ; preds = %0
  %17 = load ptr, ptr @fderives, align 8, !tbaa !11
  %18 = load i32, ptr @rulesetsize, align 4, !tbaa !7
  %19 = mul nsw i32 %18, %12
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, ptr %17, i64 %20
  %22 = load i32, ptr @varsetsize, align 4, !tbaa !7
  %23 = sext i32 %18 to i64
  br label %24

24:                                               ; preds = %85, %16
  %25 = phi i32 [ %13, %16 ], [ %86, %85 ]
  %26 = phi i32 [ %13, %16 ], [ %87, %85 ]
  %27 = phi i32 [ %12, %16 ], [ %89, %85 ]
  %28 = phi ptr [ %21, %16 ], [ %88, %85 ]
  %29 = load i32, ptr @ntokens, align 4, !tbaa !7
  %30 = icmp slt i32 %29, %26
  br i1 %30, label %31, label %85

31:                                               ; preds = %24
  %32 = sub nsw i32 %27, %29
  %33 = mul nsw i32 %32, %22
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, ptr %15, i64 %34
  %36 = load i32, ptr %35, align 4, !tbaa !7
  %37 = getelementptr inbounds i32, ptr %35, i64 1
  %38 = load ptr, ptr @derives, align 8
  %39 = sext i32 %29 to i64
  br label %40

40:                                               ; preds = %80, %31
  %41 = phi i32 [ %25, %31 ], [ %70, %80 ]
  %42 = phi i64 [ %39, %31 ], [ %73, %80 ]
  %43 = phi i32 [ %36, %31 ], [ %83, %80 ]
  %44 = phi i32 [ 1, %31 ], [ %82, %80 ]
  %45 = phi ptr [ %37, %31 ], [ %81, %80 ]
  %46 = and i32 %43, %44
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %69, label %48

48:                                               ; preds = %40
  %49 = getelementptr inbounds ptr, ptr %38, i64 %42
  %50 = load ptr, ptr %49, align 8, !tbaa !11
  %51 = load i16, ptr %50, align 2, !tbaa !13
  %52 = icmp sgt i16 %51, 0
  br i1 %52, label %53, label %69

53:                                               ; preds = %53, %48
  %54 = phi i16 [ %65, %53 ], [ %51, %48 ]
  %55 = phi ptr [ %57, %53 ], [ %50, %48 ]
  %56 = zext i16 %54 to i32
  %57 = getelementptr inbounds i16, ptr %55, i64 1
  %58 = and i32 %56, 31
  %59 = shl nuw i32 1, %58
  %60 = lshr i32 %56, 5
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds i32, ptr %28, i64 %61
  %63 = load i32, ptr %62, align 4, !tbaa !7
  %64 = or i32 %63, %59
  store i32 %64, ptr %62, align 4, !tbaa !7
  %65 = load i16, ptr %57, align 2, !tbaa !13
  %66 = icmp sgt i16 %65, 0
  br i1 %66, label %53, label %67, !llvm.loop !49

67:                                               ; preds = %53
  %68 = load i32, ptr @nsyms, align 4, !tbaa !7
  br label %69

69:                                               ; preds = %67, %48, %40
  %70 = phi i32 [ %68, %67 ], [ %41, %48 ], [ %41, %40 ]
  %71 = shl i32 %44, 1
  %72 = icmp eq i32 %71, 0
  %73 = add nsw i64 %42, 1
  %74 = sext i32 %70 to i64
  br i1 %72, label %75, label %80

75:                                               ; preds = %69
  %76 = icmp slt i64 %73, %74
  br i1 %76, label %77, label %80

77:                                               ; preds = %75
  %78 = getelementptr inbounds i32, ptr %45, i64 1
  %79 = load i32, ptr %45, align 4, !tbaa !7
  br label %80

80:                                               ; preds = %77, %75, %69
  %81 = phi ptr [ %45, %75 ], [ %78, %77 ], [ %45, %69 ]
  %82 = phi i32 [ 0, %75 ], [ 1, %77 ], [ %71, %69 ]
  %83 = phi i32 [ %43, %75 ], [ %79, %77 ], [ %43, %69 ]
  %84 = icmp slt i64 %73, %74
  br i1 %84, label %40, label %85, !llvm.loop !50

85:                                               ; preds = %80, %24
  %86 = phi i32 [ %25, %24 ], [ %70, %80 ]
  %87 = phi i32 [ %26, %24 ], [ %70, %80 ]
  %88 = getelementptr inbounds i32, ptr %28, i64 %23
  %89 = add nsw i32 %27, 1
  %90 = icmp slt i32 %89, %87
  br i1 %90, label %24, label %91, !llvm.loop !51

91:                                               ; preds = %85, %0
  %92 = icmp eq ptr %15, null
  br i1 %92, label %94, label %93

93:                                               ; preds = %91
  tail call void @free(ptr noundef nonnull %15) #29
  br label %94

94:                                               ; preds = %93, %91
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @set_firsts() #0 {
  %1 = load i32, ptr @nvars, align 4, !tbaa !7
  %2 = add nsw i32 %1, 31
  %3 = sdiv i32 %2, 32
  store i32 %3, ptr @varsetsize, align 4, !tbaa !7
  %4 = shl i32 %1, 2
  %5 = mul i32 %4, %3
  %6 = tail call ptr (i32, ...) @mallocate(i32 noundef %5) #29
  store ptr %6, ptr @firsts, align 8, !tbaa !11
  %7 = load i32, ptr @ntokens, align 4, !tbaa !7
  %8 = load i32, ptr @nsyms, align 4, !tbaa !7
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %63

10:                                               ; preds = %0
  %11 = load ptr, ptr @derives, align 8, !tbaa !11
  %12 = load ptr, ptr @ritem, align 8
  %13 = load ptr, ptr @rrhs, align 8
  %14 = sext i32 %3 to i64
  %15 = sext i32 %7 to i64
  br label %16

16:                                               ; preds = %56, %10
  %17 = phi i32 [ %7, %10 ], [ %57, %56 ]
  %18 = phi i32 [ %8, %10 ], [ %58, %56 ]
  %19 = phi i64 [ %15, %10 ], [ %60, %56 ]
  %20 = phi ptr [ %6, %10 ], [ %59, %56 ]
  %21 = getelementptr inbounds ptr, ptr %11, i64 %19
  %22 = load ptr, ptr %21, align 8, !tbaa !11
  %23 = load i16, ptr %22, align 2, !tbaa !13
  %24 = icmp sgt i16 %23, -1
  br i1 %24, label %25, label %56

25:                                               ; preds = %49, %16
  %26 = phi i32 [ %50, %49 ], [ %17, %16 ]
  %27 = phi i32 [ %51, %49 ], [ %17, %16 ]
  %28 = phi i16 [ %52, %49 ], [ %23, %16 ]
  %29 = phi ptr [ %30, %49 ], [ %22, %16 ]
  %30 = getelementptr inbounds i16, ptr %29, i64 1
  %31 = zext i16 %28 to i64
  %32 = getelementptr inbounds i16, ptr %13, i64 %31
  %33 = load i16, ptr %32, align 2, !tbaa !13
  %34 = sext i16 %33 to i64
  %35 = getelementptr inbounds i16, ptr %12, i64 %34
  %36 = load i16, ptr %35, align 2, !tbaa !13
  %37 = sext i16 %36 to i32
  %38 = icmp sgt i32 %27, %37
  br i1 %38, label %49, label %39

39:                                               ; preds = %25
  %40 = sub nsw i32 %37, %27
  %41 = and i32 %40, 31
  %42 = shl nuw i32 1, %41
  %43 = ashr i32 %40, 5
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, ptr %20, i64 %44
  %46 = load i32, ptr %45, align 4, !tbaa !7
  %47 = or i32 %46, %42
  store i32 %47, ptr %45, align 4, !tbaa !7
  %48 = load i32, ptr @ntokens, align 4, !tbaa !7
  br label %49

49:                                               ; preds = %39, %25
  %50 = phi i32 [ %48, %39 ], [ %26, %25 ]
  %51 = phi i32 [ %48, %39 ], [ %27, %25 ]
  %52 = load i16, ptr %30, align 2, !tbaa !13
  %53 = icmp sgt i16 %52, -1
  br i1 %53, label %25, label %54, !llvm.loop !52

54:                                               ; preds = %49
  %.lcssa = phi i32 [ %50, %49 ]
  %55 = load i32, ptr @nsyms, align 4, !tbaa !7
  br label %56

56:                                               ; preds = %54, %16
  %57 = phi i32 [ %.lcssa, %54 ], [ %17, %16 ]
  %58 = phi i32 [ %55, %54 ], [ %18, %16 ]
  %59 = getelementptr inbounds i32, ptr %20, i64 %14
  %60 = add nsw i64 %19, 1
  %61 = sext i32 %58 to i64
  %62 = icmp slt i64 %60, %61
  br i1 %62, label %16, label %63, !llvm.loop !53

63:                                               ; preds = %56, %0
  %64 = load i32, ptr @nvars, align 4, !tbaa !7
  tail call void @RTC(ptr noundef %6, i32 noundef %64) #29
  ret void
}

; Function Attrs: nofree nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal void @closure(ptr noundef readonly %0, i32 noundef %1) #3 {
  %3 = load ptr, ptr @ruleset, align 8, !tbaa !11
  %4 = ptrtoint ptr %3 to i64
  %5 = load i32, ptr @rulesetsize, align 4, !tbaa !7
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds i32, ptr %3, i64 %6
  %8 = sext i32 %1 to i64
  %9 = getelementptr inbounds i16, ptr %0, i64 %8
  %10 = icmp eq i32 %1, 0
  %11 = icmp slt i32 %5, 1
  br i1 %10, label %22, label %12

12:                                               ; preds = %2
  br i1 %11, label %38, label %13

13:                                               ; preds = %12
  %14 = shl nsw i64 %6, 2
  %15 = add i64 %14, %4
  %16 = add i64 %4, 4
  %17 = tail call i64 @llvm.umax.i64(i64 %15, i64 %16)
  %18 = xor i64 %4, -1
  %19 = add i64 %17, %18
  %20 = and i64 %19, -4
  %21 = add i64 %20, 4
  tail call void @llvm.memset.p0.i64(ptr align 4 %3, i8 0, i64 %21, i1 false), !tbaa !7
  br label %38

22:                                               ; preds = %2
  br i1 %11, label %23, label %25

23:                                               ; preds = %22
  %24 = load ptr, ptr @itemset, align 8, !tbaa !11
  store ptr %24, ptr @itemsetend, align 8, !tbaa !11
  br label %72

25:                                               ; preds = %22
  %26 = load ptr, ptr @fderives, align 8, !tbaa !11
  %27 = load i32, ptr @start_symbol, align 4, !tbaa !7
  %28 = mul nsw i32 %27, %5
  %29 = sext i32 %28 to i64
  %30 = getelementptr i32, ptr %26, i64 %29
  br label %31

31:                                               ; preds = %31, %25
  %32 = phi ptr [ %34, %31 ], [ %30, %25 ]
  %33 = phi ptr [ %36, %31 ], [ %3, %25 ]
  %34 = getelementptr inbounds i32, ptr %32, i64 1
  %35 = load i32, ptr %32, align 4, !tbaa !7
  %36 = getelementptr inbounds i32, ptr %33, i64 1
  store i32 %35, ptr %33, align 4, !tbaa !7
  %37 = icmp ult ptr %36, %7
  br i1 %37, label %31, label %69, !llvm.loop !54

38:                                               ; preds = %13, %12
  %39 = icmp sgt i32 %1, 0
  br i1 %39, label %40, label %69

40:                                               ; preds = %38
  %41 = load ptr, ptr @ritem, align 8, !tbaa !11
  %42 = load ptr, ptr @fderives, align 8
  br label %43

43:                                               ; preds = %67, %40
  %44 = phi ptr [ %0, %40 ], [ %45, %67 ]
  %45 = getelementptr inbounds i16, ptr %44, i64 1
  %46 = load i16, ptr %44, align 2, !tbaa !13
  %47 = sext i16 %46 to i64
  %48 = getelementptr inbounds i16, ptr %41, i64 %47
  %49 = load i16, ptr %48, align 2, !tbaa !13
  %50 = sext i16 %49 to i32
  %51 = load i32, ptr @ntokens, align 4, !tbaa !7
  %52 = icmp sgt i32 %51, %50
  %53 = select i1 %52, i1 true, i1 %11
  br i1 %53, label %67, label %54

54:                                               ; preds = %43
  %55 = mul nsw i32 %5, %50
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, ptr %42, i64 %56
  br label %58

58:                                               ; preds = %58, %54
  %59 = phi ptr [ %61, %58 ], [ %57, %54 ]
  %60 = phi ptr [ %63, %58 ], [ %3, %54 ]
  %61 = getelementptr inbounds i32, ptr %59, i64 1
  %62 = load i32, ptr %59, align 4, !tbaa !7
  %63 = getelementptr inbounds i32, ptr %60, i64 1
  %64 = load i32, ptr %60, align 4, !tbaa !7
  %65 = or i32 %64, %62
  store i32 %65, ptr %60, align 4, !tbaa !7
  %66 = icmp ult ptr %63, %7
  br i1 %66, label %58, label %67, !llvm.loop !55

67:                                               ; preds = %58, %43
  %68 = icmp ult ptr %45, %9
  br i1 %68, label %43, label %69, !llvm.loop !56

69:                                               ; preds = %67, %38, %31
  %70 = load ptr, ptr @itemset, align 8, !tbaa !11
  store ptr %70, ptr @itemsetend, align 8, !tbaa !11
  %71 = icmp sgt i32 %5, 0
  br i1 %71, label %76, label %72

72:                                               ; preds = %123, %69, %23
  %73 = phi ptr [ %70, %69 ], [ %24, %23 ], [ %124, %123 ]
  %74 = phi ptr [ %0, %69 ], [ %0, %23 ], [ %125, %123 ]
  %75 = icmp ult ptr %74, %9
  br i1 %75, label %128, label %136

76:                                               ; preds = %123, %69
  %77 = phi i32 [ %126, %123 ], [ 0, %69 ]
  %78 = phi ptr [ %125, %123 ], [ %0, %69 ]
  %79 = phi ptr [ %81, %123 ], [ %3, %69 ]
  %80 = phi ptr [ %124, %123 ], [ %70, %69 ]
  %81 = getelementptr inbounds i32, ptr %79, i64 1
  %82 = load i32, ptr %79, align 4, !tbaa !7
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %87, label %84

84:                                               ; preds = %76
  %85 = load ptr, ptr @rrhs, align 8
  %86 = sext i32 %77 to i64
  br label %89

87:                                               ; preds = %76
  %88 = add nsw i32 %77, 32
  br label %123

89:                                               ; preds = %114, %84
  %90 = phi i64 [ %86, %84 ], [ %119, %114 ]
  %91 = phi ptr [ %80, %84 ], [ %115, %114 ]
  %92 = phi i32 [ 1, %84 ], [ %118, %114 ]
  %93 = phi ptr [ %78, %84 ], [ %117, %114 ]
  %94 = phi ptr [ %80, %84 ], [ %116, %114 ]
  %95 = and i32 %92, %82
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %114, label %97

97:                                               ; preds = %89
  %98 = getelementptr inbounds i16, ptr %85, i64 %90
  %99 = load i16, ptr %98, align 2, !tbaa !13
  %100 = icmp ult ptr %93, %9
  br i1 %100, label %101, label %110

101:                                              ; preds = %106, %97
  %102 = phi ptr [ %107, %106 ], [ %93, %97 ]
  %103 = phi ptr [ %108, %106 ], [ %94, %97 ]
  %104 = load i16, ptr %102, align 2, !tbaa !13
  %105 = icmp slt i16 %104, %99
  br i1 %105, label %106, label %110

106:                                              ; preds = %101
  %107 = getelementptr inbounds i16, ptr %102, i64 1
  %108 = getelementptr inbounds i16, ptr %103, i64 1
  store i16 %104, ptr %103, align 2, !tbaa !13
  %109 = icmp ult ptr %107, %9
  br i1 %109, label %101, label %110, !llvm.loop !57

110:                                              ; preds = %106, %101, %97
  %111 = phi ptr [ %94, %97 ], [ %108, %106 ], [ %103, %101 ]
  %112 = phi ptr [ %93, %97 ], [ %107, %106 ], [ %102, %101 ]
  %113 = getelementptr inbounds i16, ptr %111, i64 1
  store ptr %113, ptr @itemsetend, align 8, !tbaa !11
  store i16 %99, ptr %111, align 2, !tbaa !13
  br label %114

114:                                              ; preds = %110, %89
  %115 = phi ptr [ %113, %110 ], [ %91, %89 ]
  %116 = phi ptr [ %113, %110 ], [ %94, %89 ]
  %117 = phi ptr [ %112, %110 ], [ %93, %89 ]
  %118 = shl i32 %92, 1
  %119 = add nsw i64 %90, 1
  %120 = icmp eq i32 %118, 0
  br i1 %120, label %121, label %89, !llvm.loop !58

121:                                              ; preds = %114
  %.lcssa3 = phi ptr [ %115, %114 ]
  %.lcssa2 = phi ptr [ %117, %114 ]
  %.lcssa1 = phi i64 [ %119, %114 ]
  %122 = trunc i64 %.lcssa1 to i32
  br label %123

123:                                              ; preds = %121, %87
  %124 = phi ptr [ %80, %87 ], [ %.lcssa3, %121 ]
  %125 = phi ptr [ %78, %87 ], [ %.lcssa2, %121 ]
  %126 = phi i32 [ %88, %87 ], [ %122, %121 ]
  %127 = icmp ult ptr %81, %7
  br i1 %127, label %76, label %72, !llvm.loop !59

128:                                              ; preds = %128, %72
  %129 = phi ptr [ %131, %128 ], [ %74, %72 ]
  %130 = phi ptr [ %133, %128 ], [ %73, %72 ]
  %131 = getelementptr inbounds i16, ptr %129, i64 1
  %132 = load i16, ptr %129, align 2, !tbaa !13
  %133 = getelementptr inbounds i16, ptr %130, i64 1
  store i16 %132, ptr %130, align 2, !tbaa !13
  %134 = icmp ult ptr %131, %9
  br i1 %134, label %128, label %135, !llvm.loop !60

135:                                              ; preds = %128
  %.lcssa = phi ptr [ %133, %128 ]
  store ptr %.lcssa, ptr @itemsetend, align 8, !tbaa !11
  br label %136

136:                                              ; preds = %135, %72
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #7

; Function Attrs: mustprogress nounwind optsize willreturn uwtable
define internal void @finalize_closure() #1 {
  %1 = load ptr, ptr @itemset, align 8, !tbaa !11
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @free(ptr noundef nonnull %1) #29
  br label %4

4:                                                ; preds = %3, %0
  %5 = load ptr, ptr @ruleset, align 8, !tbaa !11
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void @free(ptr noundef nonnull %5) #29
  br label %8

8:                                                ; preds = %7, %4
  %9 = load ptr, ptr @fderives, align 8, !tbaa !11
  %10 = icmp eq ptr %9, null
  br i1 %10, label %17, label %11

11:                                               ; preds = %8
  %12 = load i32, ptr @ntokens, align 4, !tbaa !7
  %13 = load i32, ptr @rulesetsize, align 4, !tbaa !7
  %14 = mul nsw i32 %13, %12
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, ptr %9, i64 %15
  tail call void @free(ptr noundef %16) #29
  br label %17

17:                                               ; preds = %11, %8
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @initialize_conflicts() #0 {
  %1 = load i32, ptr @nstates, align 4, !tbaa !7
  %2 = tail call ptr (i32, ...) @mallocate(i32 noundef %1) #29
  store ptr %2, ptr @conflicts, align 8, !tbaa !11
  %3 = load i32, ptr @tokensetsize, align 4, !tbaa !7
  %4 = shl i32 %3, 2
  %5 = tail call ptr (i32, ...) @mallocate(i32 noundef %4) #29
  store ptr %5, ptr @shiftset.14, align 8, !tbaa !11
  %6 = load i32, ptr @tokensetsize, align 4, !tbaa !7
  %7 = shl i32 %6, 2
  %8 = tail call ptr (i32, ...) @mallocate(i32 noundef %7) #29
  store ptr %8, ptr @lookaheadset, align 8, !tbaa !11
  %9 = load i32, ptr @nstates, align 4, !tbaa !7
  %10 = shl i32 %9, 3
  %11 = tail call ptr (i32, ...) @mallocate(i32 noundef %10) #29
  store ptr %11, ptr @err_table, align 8, !tbaa !11
  store i8 0, ptr @any_conflicts, align 1, !tbaa !61
  %12 = load i32, ptr @nstates, align 4, !tbaa !7
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %14, %0
  %15 = phi i32 [ %16, %14 ], [ 0, %0 ]
  tail call void @set_conflicts(i32 noundef %15) #30
  %16 = add nuw nsw i32 %15, 1
  %17 = load i32, ptr @nstates, align 4, !tbaa !7
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %14, label %19, !llvm.loop !62

19:                                               ; preds = %14, %0
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @set_conflicts(i32 noundef %0) #0 {
  %2 = load ptr, ptr @consistent, align 8, !tbaa !11
  %3 = sext i32 %0 to i64
  %4 = getelementptr inbounds i8, ptr %2, i64 %3
  %5 = load i8, ptr %4, align 1, !tbaa !61
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %158

7:                                                ; preds = %1
  %8 = load i32, ptr @tokensetsize, align 4, !tbaa !7
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %19

10:                                               ; preds = %7
  %11 = load ptr, ptr @lookaheadset, align 8, !tbaa !11
  br label %12

12:                                               ; preds = %12, %10
  %13 = phi i64 [ 0, %10 ], [ %15, %12 ]
  %14 = getelementptr inbounds i32, ptr %11, i64 %13
  store i32 0, ptr %14, align 4, !tbaa !7
  %15 = add nuw nsw i64 %13, 1
  %16 = load i32, ptr @tokensetsize, align 4, !tbaa !7
  %17 = sext i32 %16 to i64
  %18 = icmp slt i64 %15, %17
  br i1 %18, label %12, label %19, !llvm.loop !63

19:                                               ; preds = %12, %7
  %20 = phi i32 [ %8, %7 ], [ %16, %12 ]
  %21 = load ptr, ptr @shift_table, align 8, !tbaa !11
  %22 = getelementptr inbounds ptr, ptr %21, i64 %3
  %23 = load ptr, ptr %22, align 8, !tbaa !11
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = load ptr, ptr @lookaheadset, align 8, !tbaa !11
  br label %57

27:                                               ; preds = %19
  %28 = getelementptr inbounds %struct.shifts, ptr %23, i64 0, i32 2
  %29 = load i16, ptr %28, align 2, !tbaa !35
  %30 = icmp sgt i16 %29, 0
  %31 = load ptr, ptr @lookaheadset, align 8
  br i1 %30, label %32, label %57

32:                                               ; preds = %27
  %33 = zext i16 %29 to i64
  %34 = load ptr, ptr @accessing_symbol, align 8, !tbaa !11
  br label %35

35:                                               ; preds = %45, %32
  %36 = phi i64 [ 0, %32 ], [ %53, %45 ]
  %37 = getelementptr inbounds %struct.shifts, ptr %23, i64 0, i32 3, i64 %36
  %38 = load i16, ptr %37, align 2, !tbaa !13
  %39 = sext i16 %38 to i64
  %40 = getelementptr inbounds i16, ptr %34, i64 %39
  %41 = load i16, ptr %40, align 2, !tbaa !13
  %42 = sext i16 %41 to i32
  %43 = load i32, ptr @ntokens, align 4, !tbaa !7
  %44 = icmp sgt i32 %43, %42
  br i1 %44, label %45, label %55

45:                                               ; preds = %35
  %46 = and i32 %42, 31
  %47 = shl nuw i32 1, %46
  %48 = ashr i32 %42, 5
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, ptr %31, i64 %49
  %51 = load i32, ptr %50, align 4, !tbaa !7
  %52 = or i32 %51, %47
  store i32 %52, ptr %50, align 4, !tbaa !7
  %53 = add nuw nsw i64 %36, 1
  %54 = icmp eq i64 %53, %33
  br i1 %54, label %55, label %35, !llvm.loop !64

55:                                               ; preds = %45, %35
  %56 = load i32, ptr @tokensetsize, align 4, !tbaa !7
  br label %57

57:                                               ; preds = %55, %27, %25
  %58 = phi i32 [ %20, %25 ], [ %56, %55 ], [ %20, %27 ]
  %59 = phi ptr [ %26, %25 ], [ %31, %55 ], [ %31, %27 ]
  %60 = load ptr, ptr @lookaheads, align 8, !tbaa !11
  %61 = add nsw i32 %0, 1
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i16, ptr %60, i64 %62
  %64 = load i16, ptr %63, align 2, !tbaa !13
  %65 = sext i16 %64 to i32
  %66 = sext i32 %58 to i64
  %67 = getelementptr inbounds i32, ptr %59, i64 %66
  %68 = getelementptr inbounds i16, ptr %60, i64 %3
  %69 = load i16, ptr %68, align 2, !tbaa !13
  %70 = icmp slt i16 %69, %64
  br i1 %70, label %71, label %117

71:                                               ; preds = %57
  %72 = sext i16 %69 to i64
  %73 = sext i16 %64 to i64
  %74 = load ptr, ptr @rprec, align 8, !tbaa !11
  %75 = load ptr, ptr @LAruleno, align 8, !tbaa !11
  br label %76

76:                                               ; preds = %108, %71
  %77 = phi ptr [ %75, %71 ], [ %109, %108 ]
  %78 = phi ptr [ %74, %71 ], [ %110, %108 ]
  %79 = phi i64 [ %72, %71 ], [ %111, %108 ]
  %80 = getelementptr inbounds i16, ptr %77, i64 %79
  %81 = load i16, ptr %80, align 2, !tbaa !13
  %82 = sext i16 %81 to i64
  %83 = getelementptr inbounds i16, ptr %78, i64 %82
  %84 = load i16, ptr %83, align 2, !tbaa !13
  %85 = icmp eq i16 %84, 0
  br i1 %85, label %108, label %86

86:                                               ; preds = %76
  %87 = load ptr, ptr @LA, align 8, !tbaa !11
  %88 = load i32, ptr @tokensetsize, align 4, !tbaa !7
  %89 = sext i32 %88 to i64
  %90 = mul nsw i64 %79, %89
  %91 = getelementptr inbounds i32, ptr %87, i64 %90
  %92 = load ptr, ptr @lookaheadset, align 8, !tbaa !11
  br label %93

93:                                               ; preds = %97, %86
  %94 = phi ptr [ %91, %86 ], [ %98, %97 ]
  %95 = phi ptr [ %92, %86 ], [ %100, %97 ]
  %96 = icmp ult ptr %95, %67
  br i1 %96, label %97, label %108

97:                                               ; preds = %93
  %98 = getelementptr inbounds i32, ptr %94, i64 1
  %99 = load i32, ptr %94, align 4, !tbaa !7
  %100 = getelementptr inbounds i32, ptr %95, i64 1
  %101 = load i32, ptr %95, align 4, !tbaa !7
  %102 = and i32 %101, %99
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %93, label %104, !llvm.loop !65

104:                                              ; preds = %97
  %105 = trunc i64 %79 to i32
  tail call void @resolve_sr_conflict(i32 noundef %0, i32 noundef %105) #30
  %106 = load ptr, ptr @rprec, align 8, !tbaa !11
  %107 = load ptr, ptr @LAruleno, align 8, !tbaa !11
  br label %108

108:                                              ; preds = %104, %93, %76
  %109 = phi ptr [ %77, %76 ], [ %107, %104 ], [ %77, %93 ]
  %110 = phi ptr [ %78, %76 ], [ %106, %104 ], [ %78, %93 ]
  %111 = add nsw i64 %79, 1
  %112 = icmp eq i64 %111, %73
  br i1 %112, label %113, label %76, !llvm.loop !66

113:                                              ; preds = %108
  %114 = load ptr, ptr @lookaheads, align 8, !tbaa !11
  %115 = getelementptr inbounds i16, ptr %114, i64 %3
  %116 = load i16, ptr %115, align 2, !tbaa !13
  br label %117

117:                                              ; preds = %113, %57
  %118 = phi i16 [ %116, %113 ], [ %69, %57 ]
  %119 = icmp slt i16 %118, %64
  br i1 %119, label %120, label %158

120:                                              ; preds = %117
  %121 = sext i16 %118 to i32
  %122 = load ptr, ptr @lookaheadset, align 8, !tbaa !11
  %123 = icmp ult ptr %122, %67
  br label %124

124:                                              ; preds = %155, %120
  %125 = phi i32 [ %121, %120 ], [ %156, %155 ]
  %126 = load ptr, ptr @LA, align 8, !tbaa !11
  %127 = load i32, ptr @tokensetsize, align 4, !tbaa !7
  %128 = mul nsw i32 %127, %125
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, ptr %126, i64 %129
  br i1 %123, label %132, label %155

131:                                              ; preds = %144
  br i1 %123, label %146, label %155

132:                                              ; preds = %144, %124
  %133 = phi ptr [ %137, %144 ], [ %122, %124 ]
  %134 = phi ptr [ %135, %144 ], [ %130, %124 ]
  %135 = getelementptr inbounds i32, ptr %134, i64 1
  %136 = load i32, ptr %134, align 4, !tbaa !7
  %137 = getelementptr inbounds i32, ptr %133, i64 1
  %138 = load i32, ptr %133, align 4, !tbaa !7
  %139 = and i32 %138, %136
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %144, label %141

141:                                              ; preds = %132
  %142 = load ptr, ptr @conflicts, align 8, !tbaa !11
  %143 = getelementptr inbounds i8, ptr %142, i64 %3
  store i8 1, ptr %143, align 1, !tbaa !61
  store i8 1, ptr @any_conflicts, align 1, !tbaa !61
  br label %144

144:                                              ; preds = %141, %132
  %145 = icmp ult ptr %137, %67
  br i1 %145, label %132, label %131, !llvm.loop !67

146:                                              ; preds = %146, %131
  %147 = phi ptr [ %151, %146 ], [ %122, %131 ]
  %148 = phi ptr [ %149, %146 ], [ %130, %131 ]
  %149 = getelementptr inbounds i32, ptr %148, i64 1
  %150 = load i32, ptr %148, align 4, !tbaa !7
  %151 = getelementptr inbounds i32, ptr %147, i64 1
  %152 = load i32, ptr %147, align 4, !tbaa !7
  %153 = or i32 %152, %150
  store i32 %153, ptr %147, align 4, !tbaa !7
  %154 = icmp ult ptr %151, %67
  br i1 %154, label %146, label %155, !llvm.loop !68

155:                                              ; preds = %146, %131, %124
  %156 = add nsw i32 %125, 1
  %157 = icmp eq i32 %156, %65
  br i1 %157, label %158, label %124, !llvm.loop !69

158:                                              ; preds = %155, %117, %1
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @resolve_sr_conflict(i32 noundef %0, i32 noundef %1) #0 {
  %3 = load i32, ptr @ntokens, align 4, !tbaa !7
  %4 = sext i32 %3 to i64
  %5 = shl nsw i64 %4, 1
  %6 = add nsw i64 %5, 4
  %7 = tail call noalias ptr @malloc(i64 noundef %6) #33
  %8 = getelementptr inbounds %struct.errs, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr @rprec, align 8, !tbaa !11
  %10 = load ptr, ptr @LAruleno, align 8, !tbaa !11
  %11 = sext i32 %1 to i64
  %12 = getelementptr inbounds i16, ptr %10, i64 %11
  %13 = load i16, ptr %12, align 2, !tbaa !13
  %14 = sext i16 %13 to i64
  %15 = getelementptr inbounds i16, ptr %9, i64 %14
  %16 = load i16, ptr %15, align 2, !tbaa !13
  %17 = icmp sgt i32 %3, 0
  br i1 %17, label %18, label %144

18:                                               ; preds = %2
  %19 = load ptr, ptr @lookaheadset, align 8, !tbaa !11
  %20 = load ptr, ptr @LA, align 8, !tbaa !11
  %21 = load i32, ptr @tokensetsize, align 4, !tbaa !7
  %22 = mul nsw i32 %21, %1
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, ptr %20, i64 %23
  br label %25

25:                                               ; preds = %132, %18
  %26 = phi i64 [ 0, %18 ], [ %140, %132 ]
  %27 = phi ptr [ %8, %18 ], [ %133, %132 ]
  %28 = phi i32 [ 1, %18 ], [ %139, %132 ]
  %29 = phi ptr [ %19, %18 ], [ %138, %132 ]
  %30 = phi ptr [ %24, %18 ], [ %137, %132 ]
  %31 = load i32, ptr %29, align 4, !tbaa !7
  %32 = load i32, ptr %30, align 4, !tbaa !7
  %33 = and i32 %31, %32
  %34 = and i32 %33, %28
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %132, label %36

36:                                               ; preds = %25
  %37 = load ptr, ptr @sprec, align 8, !tbaa !11
  %38 = getelementptr inbounds i16, ptr %37, i64 %26
  %39 = load i16, ptr %38, align 2, !tbaa !13
  %40 = icmp eq i16 %39, 0
  br i1 %40, label %132, label %41

41:                                               ; preds = %36
  %42 = icmp slt i16 %39, %16
  br i1 %42, label %43, label %62

43:                                               ; preds = %41
  %44 = load i32, ptr @verboseflag, align 4, !tbaa !7
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %57, label %46

46:                                               ; preds = %43
  %47 = load ptr, ptr @foutput, align 8, !tbaa !11
  %48 = load ptr, ptr @LAruleno, align 8, !tbaa !11
  %49 = getelementptr inbounds i16, ptr %48, i64 %11
  %50 = load i16, ptr %49, align 2, !tbaa !13
  %51 = sext i16 %50 to i32
  %52 = load ptr, ptr @tags, align 8, !tbaa !11
  %53 = getelementptr inbounds ptr, ptr %52, i64 %26
  %54 = load ptr, ptr %53, align 8, !tbaa !11
  %55 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %47, ptr noundef nonnull @.str.3.15, i32 noundef %0, i32 noundef %51, ptr noundef %54, ptr noundef nonnull @.str.16) #30
  %56 = load i32, ptr %29, align 4, !tbaa !7
  br label %57

57:                                               ; preds = %46, %43
  %58 = phi i32 [ %56, %46 ], [ %31, %43 ]
  %59 = xor i32 %28, -1
  %60 = and i32 %58, %59
  store i32 %60, ptr %29, align 4, !tbaa !7
  %61 = trunc i64 %26 to i32
  tail call void @flush_shift(i32 noundef %0, i32 noundef %61) #30
  br label %132

62:                                               ; preds = %41
  %63 = icmp sgt i16 %39, %16
  br i1 %63, label %64, label %82

64:                                               ; preds = %62
  %65 = load i32, ptr @verboseflag, align 4, !tbaa !7
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %78, label %67

67:                                               ; preds = %64
  %68 = load ptr, ptr @foutput, align 8, !tbaa !11
  %69 = load ptr, ptr @LAruleno, align 8, !tbaa !11
  %70 = getelementptr inbounds i16, ptr %69, i64 %11
  %71 = load i16, ptr %70, align 2, !tbaa !13
  %72 = sext i16 %71 to i32
  %73 = load ptr, ptr @tags, align 8, !tbaa !11
  %74 = getelementptr inbounds ptr, ptr %73, i64 %26
  %75 = load ptr, ptr %74, align 8, !tbaa !11
  %76 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %68, ptr noundef nonnull @.str.3.15, i32 noundef %0, i32 noundef %72, ptr noundef %75, ptr noundef nonnull @.str.1) #30
  %77 = load i32, ptr %30, align 4, !tbaa !7
  br label %78

78:                                               ; preds = %67, %64
  %79 = phi i32 [ %77, %67 ], [ %32, %64 ]
  %80 = xor i32 %28, -1
  %81 = and i32 %79, %80
  store i32 %81, ptr %30, align 4, !tbaa !7
  br label %132

82:                                               ; preds = %62
  %83 = load ptr, ptr @sassoc, align 8, !tbaa !11
  %84 = getelementptr inbounds i16, ptr %83, i64 %26
  %85 = load i16, ptr %84, align 2, !tbaa !13
  %86 = sext i16 %85 to i32
  switch i32 %86, label %107 [
    i32 1, label %87
    i32 2, label %90
    i32 3, label %93
  ]

87:                                               ; preds = %82
  %88 = load i32, ptr @verboseflag, align 4, !tbaa !7
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %107, label %96

90:                                               ; preds = %82
  %91 = load i32, ptr @verboseflag, align 4, !tbaa !7
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %107, label %96

93:                                               ; preds = %82
  %94 = load i32, ptr @verboseflag, align 4, !tbaa !7
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %107, label %96

96:                                               ; preds = %93, %90, %87
  %97 = phi ptr [ @.str.1, %87 ], [ @.str.16, %90 ], [ @.str.2, %93 ]
  %98 = load ptr, ptr @foutput, align 8, !tbaa !11
  %99 = load ptr, ptr @LAruleno, align 8, !tbaa !11
  %100 = getelementptr inbounds i16, ptr %99, i64 %11
  %101 = load i16, ptr %100, align 2, !tbaa !13
  %102 = sext i16 %101 to i32
  %103 = load ptr, ptr @tags, align 8, !tbaa !11
  %104 = getelementptr inbounds ptr, ptr %103, i64 %26
  %105 = load ptr, ptr %104, align 8, !tbaa !11
  %106 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %98, ptr noundef nonnull @.str.3.15, i32 noundef %0, i32 noundef %102, ptr noundef %105, ptr noundef nonnull %97) #30
  br label %107

107:                                              ; preds = %96, %93, %90, %87, %82
  %108 = load ptr, ptr @sassoc, align 8, !tbaa !11
  %109 = getelementptr inbounds i16, ptr %108, i64 %26
  %110 = load i16, ptr %109, align 2, !tbaa !13
  %111 = icmp eq i16 %110, 1
  %112 = xor i32 %28, -1
  br i1 %111, label %113, label %116

113:                                              ; preds = %107
  %114 = load i32, ptr %30, align 4, !tbaa !7
  %115 = and i32 %114, %112
  store i32 %115, ptr %30, align 4, !tbaa !7
  br label %132

116:                                              ; preds = %107
  %117 = load i32, ptr %29, align 4, !tbaa !7
  %118 = and i32 %117, %112
  store i32 %118, ptr %29, align 4, !tbaa !7
  %119 = trunc i64 %26 to i32
  tail call void @flush_shift(i32 noundef %0, i32 noundef %119) #30
  %120 = load ptr, ptr @sassoc, align 8, !tbaa !11
  %121 = getelementptr inbounds i16, ptr %120, i64 %26
  %122 = load i16, ptr %121, align 2, !tbaa !13
  %123 = icmp eq i16 %122, 2
  br i1 %123, label %132, label %124

124:                                              ; preds = %116
  %125 = xor i32 %28, -1
  %126 = load i32, ptr %30, align 4, !tbaa !7
  %127 = and i32 %126, %125
  store i32 %127, ptr %30, align 4, !tbaa !7
  %128 = icmp eq i16 %122, 3
  br i1 %128, label %129, label %132

129:                                              ; preds = %124
  %130 = trunc i64 %26 to i16
  %131 = getelementptr inbounds i16, ptr %27, i64 1
  store i16 %130, ptr %27, align 2, !tbaa !13
  br label %132

132:                                              ; preds = %129, %124, %116, %113, %78, %57, %36, %25
  %133 = phi ptr [ %27, %57 ], [ %27, %78 ], [ %131, %129 ], [ %27, %124 ], [ %27, %36 ], [ %27, %25 ], [ %27, %116 ], [ %27, %113 ]
  %134 = shl i32 %28, 1
  %135 = icmp eq i32 %134, 0
  %136 = zext i1 %135 to i64
  %137 = getelementptr inbounds i32, ptr %30, i64 %136
  %138 = getelementptr inbounds i32, ptr %29, i64 %136
  %139 = tail call i32 @llvm.umax.i32(i32 %134, i32 1)
  %140 = add nuw nsw i64 %26, 1
  %141 = load i32, ptr @ntokens, align 4, !tbaa !7
  %142 = sext i32 %141 to i64
  %143 = icmp slt i64 %140, %142
  br i1 %143, label %25, label %144, !llvm.loop !70

144:                                              ; preds = %132, %2
  %145 = phi ptr [ %8, %2 ], [ %133, %132 ]
  %146 = ptrtoint ptr %145 to i64
  %147 = ptrtoint ptr %8 to i64
  %148 = sub i64 %146, %147
  %149 = lshr exact i64 %148, 1
  %150 = trunc i64 %149 to i16
  store i16 %150, ptr %7, align 2, !tbaa !71
  %151 = icmp eq i16 %150, 0
  br i1 %151, label %165, label %152

152:                                              ; preds = %144
  %153 = ptrtoint ptr %7 to i64
  %154 = sub i64 %146, %153
  %155 = trunc i64 %154 to i32
  %156 = tail call ptr (i32, ...) @mallocate(i32 noundef %155) #29
  %157 = load ptr, ptr @err_table, align 8, !tbaa !11
  %158 = sext i32 %0 to i64
  %159 = getelementptr inbounds ptr, ptr %157, i64 %158
  store ptr %156, ptr %159, align 8, !tbaa !11
  %160 = load ptr, ptr @err_table, align 8, !tbaa !11
  %161 = getelementptr inbounds ptr, ptr %160, i64 %158
  %162 = load ptr, ptr %161, align 8, !tbaa !11
  %163 = shl i64 %154, 32
  %164 = ashr exact i64 %163, 32
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %162, ptr nonnull align 1 %7, i64 %164, i1 false)
  br label %169

165:                                              ; preds = %144
  %166 = load ptr, ptr @err_table, align 8, !tbaa !11
  %167 = sext i32 %0 to i64
  %168 = getelementptr inbounds ptr, ptr %166, i64 %167
  store ptr null, ptr %168, align 8, !tbaa !11
  br label %169

169:                                              ; preds = %165, %152
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: nofree norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal void @flush_shift(i32 noundef %0, i32 noundef %1) #10 {
  %3 = load ptr, ptr @shift_table, align 8, !tbaa !11
  %4 = sext i32 %0 to i64
  %5 = getelementptr inbounds ptr, ptr %3, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !11
  %7 = icmp eq ptr %6, null
  br i1 %7, label %30, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.shifts, ptr %6, i64 0, i32 2
  %10 = load i16, ptr %9, align 2, !tbaa !35
  %11 = icmp sgt i16 %10, 0
  br i1 %11, label %12, label %30

12:                                               ; preds = %8
  %13 = zext i16 %10 to i64
  %14 = load ptr, ptr @accessing_symbol, align 8
  br label %15

15:                                               ; preds = %27, %12
  %16 = phi i64 [ 0, %12 ], [ %28, %27 ]
  %17 = getelementptr inbounds %struct.shifts, ptr %6, i64 0, i32 3, i64 %16
  %18 = load i16, ptr %17, align 2, !tbaa !13
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %15
  %21 = sext i16 %18 to i64
  %22 = getelementptr inbounds i16, ptr %14, i64 %21
  %23 = load i16, ptr %22, align 2, !tbaa !13
  %24 = sext i16 %23 to i32
  %25 = icmp eq i32 %24, %1
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  store i16 0, ptr %17, align 2, !tbaa !13
  br label %27

27:                                               ; preds = %26, %20, %15
  %28 = add nuw nsw i64 %16, 1
  %29 = icmp eq i64 %28, %13
  br i1 %29, label %30, label %15, !llvm.loop !73

30:                                               ; preds = %27, %8, %2
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #11

; Function Attrs: nofree nounwind optsize uwtable
define internal void @conflict_log() #12 {
  store i32 0, ptr @src_total, align 4, !tbaa !7
  store i32 0, ptr @rrc_total, align 4, !tbaa !7
  %1 = load i32, ptr @nstates, align 4, !tbaa !7
  %2 = icmp sgt i32 %1, 0
  br i1 %2, label %3, label %28

3:                                                ; preds = %0
  %4 = load ptr, ptr @conflicts, align 8, !tbaa !11
  br label %5

5:                                                ; preds = %22, %3
  %6 = phi i32 [ %1, %3 ], [ %23, %22 ]
  %7 = phi ptr [ %4, %3 ], [ %24, %22 ]
  %8 = phi i64 [ 0, %3 ], [ %25, %22 ]
  %9 = getelementptr inbounds i8, ptr %7, i64 %8
  %10 = load i8, ptr %9, align 1, !tbaa !61
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %22, label %12

12:                                               ; preds = %5
  %13 = trunc i64 %8 to i32
  tail call void @count_sr_conflicts(i32 noundef %13) #30
  tail call void @count_rr_conflicts(i32 noundef %13) #30
  %14 = load i32, ptr @src_count, align 4, !tbaa !7
  %15 = load i32, ptr @src_total, align 4, !tbaa !7
  %16 = add nsw i32 %15, %14
  store i32 %16, ptr @src_total, align 4, !tbaa !7
  %17 = load i32, ptr @rrc_count, align 4, !tbaa !7
  %18 = load i32, ptr @rrc_total, align 4, !tbaa !7
  %19 = add nsw i32 %18, %17
  store i32 %19, ptr @rrc_total, align 4, !tbaa !7
  %20 = load ptr, ptr @conflicts, align 8, !tbaa !11
  %21 = load i32, ptr @nstates, align 4, !tbaa !7
  br label %22

22:                                               ; preds = %12, %5
  %23 = phi i32 [ %6, %5 ], [ %21, %12 ]
  %24 = phi ptr [ %7, %5 ], [ %20, %12 ]
  %25 = add nuw nsw i64 %8, 1
  %26 = sext i32 %23 to i64
  %27 = icmp slt i64 %25, %26
  br i1 %27, label %5, label %28, !llvm.loop !74

28:                                               ; preds = %22, %0
  tail call void @total_conflicts() #30
  ret void
}

; Function Attrs: nofree nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal void @count_sr_conflicts(i32 noundef %0) #3 {
  store i32 0, ptr @src_count, align 4, !tbaa !7
  %2 = load ptr, ptr @shift_table, align 8, !tbaa !11
  %3 = sext i32 %0 to i64
  %4 = getelementptr inbounds ptr, ptr %2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !11
  %6 = icmp eq ptr %5, null
  br i1 %6, label %127, label %7

7:                                                ; preds = %1
  %8 = load i32, ptr @tokensetsize, align 4, !tbaa !7
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %21

10:                                               ; preds = %7
  %11 = load ptr, ptr @shiftset.14, align 8, !tbaa !11
  %12 = load ptr, ptr @lookaheadset, align 8, !tbaa !11
  br label %13

13:                                               ; preds = %13, %10
  %14 = phi i64 [ 0, %10 ], [ %17, %13 ]
  %15 = getelementptr inbounds i32, ptr %11, i64 %14
  store i32 0, ptr %15, align 4, !tbaa !7
  %16 = getelementptr inbounds i32, ptr %12, i64 %14
  store i32 0, ptr %16, align 4, !tbaa !7
  %17 = add nuw nsw i64 %14, 1
  %18 = load i32, ptr @tokensetsize, align 4, !tbaa !7
  %19 = sext i32 %18 to i64
  %20 = icmp slt i64 %17, %19
  br i1 %20, label %13, label %21, !llvm.loop !75

21:                                               ; preds = %13, %7
  %22 = phi i32 [ %8, %7 ], [ %18, %13 ]
  %23 = getelementptr inbounds %struct.shifts, ptr %5, i64 0, i32 2
  %24 = load i16, ptr %23, align 2, !tbaa !35
  %25 = icmp sgt i16 %24, 0
  br i1 %25, label %26, label %55

26:                                               ; preds = %21
  %27 = zext i16 %24 to i64
  %28 = load ptr, ptr @accessing_symbol, align 8
  %29 = load ptr, ptr @shiftset.14, align 8
  br label %30

30:                                               ; preds = %50, %26
  %31 = phi i64 [ 0, %26 ], [ %51, %50 ]
  %32 = getelementptr inbounds %struct.shifts, ptr %5, i64 0, i32 3, i64 %31
  %33 = load i16, ptr %32, align 2, !tbaa !13
  %34 = icmp eq i16 %33, 0
  br i1 %34, label %50, label %35

35:                                               ; preds = %30
  %36 = sext i16 %33 to i64
  %37 = getelementptr inbounds i16, ptr %28, i64 %36
  %38 = load i16, ptr %37, align 2, !tbaa !13
  %39 = sext i16 %38 to i32
  %40 = load i32, ptr @ntokens, align 4, !tbaa !7
  %41 = icmp sgt i32 %40, %39
  br i1 %41, label %42, label %53

42:                                               ; preds = %35
  %43 = and i32 %39, 31
  %44 = shl nuw i32 1, %43
  %45 = ashr i32 %39, 5
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, ptr %29, i64 %46
  %48 = load i32, ptr %47, align 4, !tbaa !7
  %49 = or i32 %48, %44
  store i32 %49, ptr %47, align 4, !tbaa !7
  br label %50

50:                                               ; preds = %42, %30
  %51 = add nuw nsw i64 %31, 1
  %52 = icmp eq i64 %51, %27
  br i1 %52, label %53, label %30, !llvm.loop !76

53:                                               ; preds = %50, %35
  %54 = load i32, ptr @tokensetsize, align 4, !tbaa !7
  br label %55

55:                                               ; preds = %53, %21
  %56 = phi i32 [ %54, %53 ], [ %22, %21 ]
  %57 = load ptr, ptr @lookaheads, align 8, !tbaa !11
  %58 = add nsw i32 %0, 1
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i16, ptr %57, i64 %59
  %61 = load i16, ptr %60, align 2, !tbaa !13
  %62 = sext i16 %61 to i32
  %63 = load ptr, ptr @lookaheadset, align 8, !tbaa !11
  %64 = sext i32 %56 to i64
  %65 = getelementptr inbounds i32, ptr %63, i64 %64
  %66 = getelementptr inbounds i16, ptr %57, i64 %3
  %67 = load i16, ptr %66, align 2, !tbaa !13
  %68 = icmp slt i16 %67, %61
  br i1 %68, label %69, label %92

69:                                               ; preds = %55
  %70 = sext i16 %67 to i32
  %71 = load ptr, ptr @LA, align 8, !tbaa !11
  %72 = icmp sgt i32 %56, 0
  br label %73

73:                                               ; preds = %89, %69
  %74 = phi i32 [ %70, %69 ], [ %90, %89 ]
  br i1 %72, label %75, label %89

75:                                               ; preds = %73
  %76 = load i32, ptr @tokensetsize, align 4, !tbaa !7
  %77 = mul nsw i32 %76, %74
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, ptr %71, i64 %78
  br label %80

80:                                               ; preds = %80, %75
  %81 = phi ptr [ %85, %80 ], [ %63, %75 ]
  %82 = phi ptr [ %83, %80 ], [ %79, %75 ]
  %83 = getelementptr inbounds i32, ptr %82, i64 1
  %84 = load i32, ptr %82, align 4, !tbaa !7
  %85 = getelementptr inbounds i32, ptr %81, i64 1
  %86 = load i32, ptr %81, align 4, !tbaa !7
  %87 = or i32 %86, %84
  store i32 %87, ptr %81, align 4, !tbaa !7
  %88 = icmp ult ptr %85, %65
  br i1 %88, label %80, label %89, !llvm.loop !77

89:                                               ; preds = %80, %73
  %90 = add nsw i32 %74, 1
  %91 = icmp eq i32 %90, %62
  br i1 %91, label %92, label %73, !llvm.loop !78

92:                                               ; preds = %89, %55
  %93 = icmp sgt i32 %56, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %92
  %95 = load ptr, ptr @shiftset.14, align 8, !tbaa !11
  br label %99

96:                                               ; preds = %99, %92
  %97 = load i32, ptr @ntokens, align 4, !tbaa !7
  %98 = icmp sgt i32 %97, 0
  br i1 %98, label %108, label %127

99:                                               ; preds = %99, %94
  %100 = phi ptr [ %104, %99 ], [ %63, %94 ]
  %101 = phi ptr [ %102, %99 ], [ %95, %94 ]
  %102 = getelementptr inbounds i32, ptr %101, i64 1
  %103 = load i32, ptr %101, align 4, !tbaa !7
  %104 = getelementptr inbounds i32, ptr %100, i64 1
  %105 = load i32, ptr %100, align 4, !tbaa !7
  %106 = and i32 %105, %103
  store i32 %106, ptr %100, align 4, !tbaa !7
  %107 = icmp ult ptr %104, %65
  br i1 %107, label %99, label %96, !llvm.loop !79

108:                                              ; preds = %118, %96
  %109 = phi i32 [ %125, %118 ], [ 0, %96 ]
  %110 = phi ptr [ %124, %118 ], [ %63, %96 ]
  %111 = phi i32 [ %122, %118 ], [ 1, %96 ]
  %112 = phi i32 [ %119, %118 ], [ 0, %96 ]
  %113 = load i32, ptr %110, align 4, !tbaa !7
  %114 = and i32 %113, %111
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %118, label %116

116:                                              ; preds = %108
  %117 = add nsw i32 %112, 1
  store i32 %117, ptr @src_count, align 4, !tbaa !7
  br label %118

118:                                              ; preds = %116, %108
  %119 = phi i32 [ %117, %116 ], [ %112, %108 ]
  %120 = shl i32 %111, 1
  %121 = icmp eq i32 %120, 0
  %122 = tail call i32 @llvm.umax.i32(i32 %120, i32 1)
  %123 = zext i1 %121 to i64
  %124 = getelementptr inbounds i32, ptr %110, i64 %123
  %125 = add nuw nsw i32 %109, 1
  %126 = icmp eq i32 %125, %97
  br i1 %126, label %127, label %108, !llvm.loop !80

127:                                              ; preds = %118, %96, %1
  ret void
}

; Function Attrs: nofree nosync nounwind optsize memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define internal void @count_rr_conflicts(i32 noundef %0) #13 {
  store i32 0, ptr @rrc_count, align 4, !tbaa !7
  %2 = load ptr, ptr @lookaheads, align 8, !tbaa !11
  %3 = sext i32 %0 to i64
  %4 = getelementptr inbounds i16, ptr %2, i64 %3
  %5 = load i16, ptr %4, align 2, !tbaa !13
  %6 = sext i16 %5 to i32
  %7 = add nsw i32 %0, 1
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds i16, ptr %2, i64 %8
  %10 = load i16, ptr %9, align 2, !tbaa !13
  %11 = sext i16 %10 to i32
  %12 = sub nsw i32 %11, %6
  %13 = icmp slt i32 %12, 2
  br i1 %13, label %55, label %14

14:                                               ; preds = %1
  %15 = load i32, ptr @ntokens, align 4, !tbaa !7
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %55

17:                                               ; preds = %14
  %18 = load ptr, ptr @LA, align 8, !tbaa !11
  %19 = load i32, ptr @tokensetsize, align 4, !tbaa !7
  %20 = mul nsw i32 %19, %6
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, ptr %18, i64 %21
  %23 = icmp slt i16 %5, %10
  %24 = sext i32 %19 to i64
  br label %25

25:                                               ; preds = %46, %17
  %26 = phi i32 [ 0, %17 ], [ %53, %46 ]
  %27 = phi ptr [ %22, %17 ], [ %52, %46 ]
  %28 = phi i32 [ 1, %17 ], [ %50, %46 ]
  %29 = phi i32 [ 0, %17 ], [ %47, %46 ]
  br i1 %23, label %30, label %46

30:                                               ; preds = %30, %25
  %31 = phi i32 [ %40, %30 ], [ %6, %25 ]
  %32 = phi ptr [ %39, %30 ], [ %27, %25 ]
  %33 = phi i32 [ %38, %30 ], [ 0, %25 ]
  %34 = load i32, ptr %32, align 4, !tbaa !7
  %35 = and i32 %34, %28
  %36 = icmp ne i32 %35, 0
  %37 = zext i1 %36 to i32
  %38 = add nuw nsw i32 %33, %37
  %39 = getelementptr inbounds i32, ptr %32, i64 %24
  %40 = add nsw i32 %31, 1
  %41 = icmp eq i32 %40, %11
  br i1 %41, label %42, label %30, !llvm.loop !81

42:                                               ; preds = %30
  %.lcssa = phi i32 [ %38, %30 ]
  %43 = icmp ugt i32 %.lcssa, 1
  br i1 %43, label %44, label %46

44:                                               ; preds = %42
  %45 = add nsw i32 %29, 1
  store i32 %45, ptr @rrc_count, align 4, !tbaa !7
  br label %46

46:                                               ; preds = %44, %42, %25
  %47 = phi i32 [ %45, %44 ], [ %29, %42 ], [ %29, %25 ]
  %48 = shl i32 %28, 1
  %49 = icmp eq i32 %48, 0
  %50 = tail call i32 @llvm.umax.i32(i32 %48, i32 1)
  %51 = zext i1 %49 to i64
  %52 = getelementptr inbounds i32, ptr %27, i64 %51
  %53 = add nuw nsw i32 %26, 1
  %54 = icmp eq i32 %53, %15
  br i1 %54, label %55, label %25, !llvm.loop !82

55:                                               ; preds = %46, %14, %1
  ret void
}

; Function Attrs: nofree nounwind optsize uwtable
define internal void @total_conflicts() #12 {
  %1 = load i32, ptr @src_total, align 4, !tbaa !7
  %2 = load i32, ptr @expected_conflicts, align 4, !tbaa !7
  %3 = icmp eq i32 %1, %2
  %4 = load i32, ptr @rrc_total, align 4
  %5 = icmp eq i32 %4, 0
  %6 = select i1 %3, i1 %5, i1 false
  br i1 %6, label %53, label %7

7:                                                ; preds = %0
  %8 = load ptr, ptr @stdout, align 8, !tbaa !11
  %9 = tail call i32 @fflush(ptr noundef %8) #30
  %10 = load ptr, ptr @stderr, align 8, !tbaa !11
  %11 = load ptr, ptr @infile, align 8, !tbaa !11
  %12 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %11, i32 noundef 47) #34
  %13 = icmp eq ptr %12, null
  %14 = getelementptr inbounds i8, ptr %12, i64 1
  %15 = select i1 %13, ptr %11, ptr %14
  %16 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef nonnull @.str.10, ptr noundef %15) #35
  %17 = load i32, ptr @src_total, align 4, !tbaa !7
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %22

19:                                               ; preds = %7
  %20 = load ptr, ptr @stderr, align 8, !tbaa !11
  %21 = tail call i64 @fwrite(ptr nonnull @.str.5, i64 24, i64 1, ptr %20) #32
  br label %27

22:                                               ; preds = %7
  %23 = icmp sgt i32 %17, 1
  br i1 %23, label %24, label %27

24:                                               ; preds = %22
  %25 = load ptr, ptr @stderr, align 8, !tbaa !11
  %26 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %25, ptr noundef nonnull @.str.6, i32 noundef %17) #35
  br label %27

27:                                               ; preds = %24, %22, %19
  %28 = load i32, ptr @src_total, align 4, !tbaa !7
  %29 = icmp sgt i32 %28, 0
  %30 = load i32, ptr @rrc_total, align 4
  %31 = icmp sgt i32 %30, 0
  %32 = select i1 %29, i1 %31, i1 false
  br i1 %32, label %33, label %37

33:                                               ; preds = %27
  %34 = load ptr, ptr @stderr, align 8, !tbaa !11
  %35 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 4, i64 1, ptr %34) #32
  %36 = load i32, ptr @rrc_total, align 4, !tbaa !7
  br label %37

37:                                               ; preds = %33, %27
  %38 = phi i32 [ %36, %33 ], [ %30, %27 ]
  %39 = icmp eq i32 %38, 1
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = load ptr, ptr @stderr, align 8, !tbaa !11
  %42 = tail call i64 @fwrite(ptr nonnull @.str.8, i64 25, i64 1, ptr %41) #32
  br label %48

43:                                               ; preds = %37
  %44 = icmp sgt i32 %38, 1
  br i1 %44, label %45, label %48

45:                                               ; preds = %43
  %46 = load ptr, ptr @stderr, align 8, !tbaa !11
  %47 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %46, ptr noundef nonnull @.str.9, i32 noundef %38) #35
  br label %48

48:                                               ; preds = %45, %43, %40
  %49 = load ptr, ptr @stderr, align 8, !tbaa !11
  %50 = tail call i32 @putc(i32 noundef 46, ptr noundef %49) #30
  %51 = load ptr, ptr @stderr, align 8, !tbaa !11
  %52 = tail call i32 @putc(i32 noundef 10, ptr noundef %51) #30
  br label %53

53:                                               ; preds = %48, %0
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #14

; Function Attrs: nofree nounwind optsize
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind optsize uwtable
define internal void @verbose_conflict_log() #12 {
  store i32 0, ptr @src_total, align 4, !tbaa !7
  store i32 0, ptr @rrc_total, align 4, !tbaa !7
  %1 = load i32, ptr @nstates, align 4, !tbaa !7
  %2 = icmp sgt i32 %1, 0
  br i1 %2, label %3, label %66

3:                                                ; preds = %0
  %4 = load ptr, ptr @conflicts, align 8, !tbaa !11
  br label %5

5:                                                ; preds = %60, %3
  %6 = phi i32 [ %1, %3 ], [ %61, %60 ]
  %7 = phi ptr [ %4, %3 ], [ %62, %60 ]
  %8 = phi i64 [ 0, %3 ], [ %63, %60 ]
  %9 = getelementptr inbounds i8, ptr %7, i64 %8
  %10 = load i8, ptr %9, align 1, !tbaa !61
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %60, label %12

12:                                               ; preds = %5
  %13 = trunc i64 %8 to i32
  tail call void @count_sr_conflicts(i32 noundef %13) #30
  tail call void @count_rr_conflicts(i32 noundef %13) #30
  %14 = load i32, ptr @src_count, align 4, !tbaa !7
  %15 = load i32, ptr @src_total, align 4, !tbaa !7
  %16 = add nsw i32 %15, %14
  store i32 %16, ptr @src_total, align 4, !tbaa !7
  %17 = load i32, ptr @rrc_count, align 4, !tbaa !7
  %18 = load i32, ptr @rrc_total, align 4, !tbaa !7
  %19 = add nsw i32 %18, %17
  store i32 %19, ptr @rrc_total, align 4, !tbaa !7
  %20 = load ptr, ptr @foutput, align 8, !tbaa !11
  %21 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %20, ptr noundef nonnull @.str.4, i32 noundef %13) #30
  %22 = load i32, ptr @src_count, align 4, !tbaa !7
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %24, label %27

24:                                               ; preds = %12
  %25 = load ptr, ptr @foutput, align 8, !tbaa !11
  %26 = tail call i64 @fwrite(ptr nonnull @.str.5, i64 24, i64 1, ptr %25)
  br label %32

27:                                               ; preds = %12
  %28 = icmp sgt i32 %22, 1
  br i1 %28, label %29, label %32

29:                                               ; preds = %27
  %30 = load ptr, ptr @foutput, align 8, !tbaa !11
  %31 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %30, ptr noundef nonnull @.str.6, i32 noundef %22) #30
  br label %32

32:                                               ; preds = %29, %27, %24
  %33 = load i32, ptr @src_count, align 4, !tbaa !7
  %34 = icmp sgt i32 %33, 0
  %35 = load i32, ptr @rrc_count, align 4
  %36 = icmp sgt i32 %35, 0
  %37 = select i1 %34, i1 %36, i1 false
  br i1 %37, label %38, label %42

38:                                               ; preds = %32
  %39 = load ptr, ptr @foutput, align 8, !tbaa !11
  %40 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 4, i64 1, ptr %39)
  %41 = load i32, ptr @rrc_count, align 4, !tbaa !7
  br label %42

42:                                               ; preds = %38, %32
  %43 = phi i32 [ %41, %38 ], [ %35, %32 ]
  %44 = icmp eq i32 %43, 1
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load ptr, ptr @foutput, align 8, !tbaa !11
  %47 = tail call i64 @fwrite(ptr nonnull @.str.8, i64 25, i64 1, ptr %46)
  br label %53

48:                                               ; preds = %42
  %49 = icmp sgt i32 %43, 1
  br i1 %49, label %50, label %53

50:                                               ; preds = %48
  %51 = load ptr, ptr @foutput, align 8, !tbaa !11
  %52 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %51, ptr noundef nonnull @.str.9, i32 noundef %43) #30
  br label %53

53:                                               ; preds = %50, %48, %45
  %54 = load ptr, ptr @foutput, align 8, !tbaa !11
  %55 = tail call i32 @putc(i32 noundef 46, ptr noundef %54) #30
  %56 = load ptr, ptr @foutput, align 8, !tbaa !11
  %57 = tail call i32 @putc(i32 noundef 10, ptr noundef %56) #30
  %58 = load ptr, ptr @conflicts, align 8, !tbaa !11
  %59 = load i32, ptr @nstates, align 4, !tbaa !7
  br label %60

60:                                               ; preds = %53, %5
  %61 = phi i32 [ %6, %5 ], [ %59, %53 ]
  %62 = phi ptr [ %7, %5 ], [ %58, %53 ]
  %63 = add nuw nsw i64 %8, 1
  %64 = sext i32 %61 to i64
  %65 = icmp slt i64 %63, %64
  br i1 %65, label %5, label %66, !llvm.loop !83

66:                                               ; preds = %60, %0
  tail call void @total_conflicts() #30
  ret void
}

; Function Attrs: nofree nounwind optsize uwtable
define internal void @print_reductions(i32 noundef %0) #12 {
  %2 = load i32, ptr @tokensetsize, align 4, !tbaa !7
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %4, label %13

4:                                                ; preds = %1
  %5 = load ptr, ptr @shiftset.14, align 8, !tbaa !11
  br label %6

6:                                                ; preds = %6, %4
  %7 = phi i64 [ 0, %4 ], [ %9, %6 ]
  %8 = getelementptr inbounds i32, ptr %5, i64 %7
  store i32 0, ptr %8, align 4, !tbaa !7
  %9 = add nuw nsw i64 %7, 1
  %10 = load i32, ptr @tokensetsize, align 4, !tbaa !7
  %11 = sext i32 %10 to i64
  %12 = icmp slt i64 %9, %11
  br i1 %12, label %6, label %13, !llvm.loop !84

13:                                               ; preds = %6, %1
  %14 = load ptr, ptr @shift_table, align 8, !tbaa !11
  %15 = sext i32 %0 to i64
  %16 = getelementptr inbounds ptr, ptr %14, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !11
  %18 = icmp eq ptr %17, null
  br i1 %18, label %55, label %19

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.shifts, ptr %17, i64 0, i32 2
  %21 = load i16, ptr %20, align 2, !tbaa !35
  %22 = icmp sgt i16 %21, 0
  br i1 %22, label %23, label %55

23:                                               ; preds = %19
  %24 = zext i16 %21 to i64
  %25 = load ptr, ptr @accessing_symbol, align 8
  %26 = load ptr, ptr @shiftset.14, align 8
  br label %27

27:                                               ; preds = %51, %23
  %28 = phi i64 [ 0, %23 ], [ %53, %51 ]
  %29 = phi i32 [ 0, %23 ], [ %52, %51 ]
  %30 = getelementptr inbounds %struct.shifts, ptr %17, i64 0, i32 3, i64 %28
  %31 = load i16, ptr %30, align 2, !tbaa !13
  %32 = icmp eq i16 %31, 0
  br i1 %32, label %51, label %33

33:                                               ; preds = %27
  %34 = sext i16 %31 to i64
  %35 = getelementptr inbounds i16, ptr %25, i64 %34
  %36 = load i16, ptr %35, align 2, !tbaa !13
  %37 = sext i16 %36 to i32
  %38 = load i32, ptr @ntokens, align 4, !tbaa !7
  %39 = icmp sgt i32 %38, %37
  br i1 %39, label %40, label %55

40:                                               ; preds = %33
  %41 = load i32, ptr @error_token_number, align 4, !tbaa !7
  %42 = icmp eq i32 %41, %37
  %43 = select i1 %42, i32 1, i32 %29
  %44 = and i32 %37, 31
  %45 = shl nuw i32 1, %44
  %46 = ashr i32 %37, 5
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, ptr %26, i64 %47
  %49 = load i32, ptr %48, align 4, !tbaa !7
  %50 = or i32 %49, %45
  store i32 %50, ptr %48, align 4, !tbaa !7
  br label %51

51:                                               ; preds = %40, %27
  %52 = phi i32 [ %43, %40 ], [ %29, %27 ]
  %53 = add nuw nsw i64 %28, 1
  %54 = icmp eq i64 %53, %24
  br i1 %54, label %55, label %27, !llvm.loop !85

55:                                               ; preds = %51, %33, %19, %13
  %56 = phi i32 [ 0, %13 ], [ 0, %19 ], [ %29, %33 ], [ %52, %51 ]
  %57 = load ptr, ptr @err_table, align 8, !tbaa !11
  %58 = getelementptr inbounds ptr, ptr %57, i64 %15
  %59 = load ptr, ptr %58, align 8, !tbaa !11
  %60 = icmp eq ptr %59, null
  br i1 %60, label %84, label %61

61:                                               ; preds = %55
  %62 = load i16, ptr %59, align 2, !tbaa !71
  %63 = icmp sgt i16 %62, 0
  br i1 %63, label %64, label %84

64:                                               ; preds = %61
  %65 = zext i16 %62 to i64
  %66 = load ptr, ptr @shiftset.14, align 8
  br label %67

67:                                               ; preds = %81, %64
  %68 = phi i64 [ 0, %64 ], [ %82, %81 ]
  %69 = getelementptr inbounds %struct.errs, ptr %59, i64 0, i32 1, i64 %68
  %70 = load i16, ptr %69, align 2, !tbaa !13
  %71 = icmp eq i16 %70, 0
  br i1 %71, label %81, label %72

72:                                               ; preds = %67
  %73 = sext i16 %70 to i32
  %74 = and i32 %73, 31
  %75 = shl nuw i32 1, %74
  %76 = ashr i32 %73, 5
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, ptr %66, i64 %77
  %79 = load i32, ptr %78, align 4, !tbaa !7
  %80 = or i32 %79, %75
  store i32 %80, ptr %78, align 4, !tbaa !7
  br label %81

81:                                               ; preds = %72, %67
  %82 = add nuw nsw i64 %68, 1
  %83 = icmp eq i64 %82, %65
  br i1 %83, label %84, label %67, !llvm.loop !86

84:                                               ; preds = %81, %61, %55
  %85 = load ptr, ptr @lookaheads, align 8, !tbaa !11
  %86 = getelementptr inbounds i16, ptr %85, i64 %15
  %87 = load i16, ptr %86, align 2, !tbaa !13
  %88 = sext i16 %87 to i32
  %89 = add nsw i32 %0, 1
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i16, ptr %85, i64 %90
  %92 = load i16, ptr %91, align 2, !tbaa !13
  %93 = sext i16 %92 to i32
  %94 = sub nsw i32 %93, %88
  %95 = icmp ne i32 %94, 1
  %96 = icmp ne i32 %56, 0
  %97 = select i1 %95, i1 true, i1 %96
  br i1 %97, label %171, label %98

98:                                               ; preds = %84
  %99 = load ptr, ptr @LAruleno, align 8, !tbaa !11
  %100 = sext i16 %87 to i64
  %101 = getelementptr inbounds i16, ptr %99, i64 %100
  %102 = load i16, ptr %101, align 2, !tbaa !13
  %103 = sext i16 %102 to i32
  %104 = load i32, ptr @tokensetsize, align 4, !tbaa !7
  %105 = load ptr, ptr @lookaheadset, align 8, !tbaa !11
  %106 = sext i32 %104 to i64
  %107 = getelementptr inbounds i32, ptr %105, i64 %106
  %108 = icmp sgt i32 %104, 0
  br i1 %108, label %109, label %115

109:                                              ; preds = %98
  %110 = load ptr, ptr @shiftset.14, align 8, !tbaa !11
  %111 = load ptr, ptr @LA, align 8, !tbaa !11
  %112 = mul nsw i32 %104, %88
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, ptr %111, i64 %113
  br label %119

115:                                              ; preds = %119, %98
  %116 = load i32, ptr @ntokens, align 4, !tbaa !7
  %117 = icmp sgt i32 %116, 0
  %118 = sext i16 %102 to i64
  br i1 %117, label %130, label %161

119:                                              ; preds = %119, %109
  %120 = phi ptr [ %123, %119 ], [ %114, %109 ]
  %121 = phi ptr [ %128, %119 ], [ %105, %109 ]
  %122 = phi ptr [ %125, %119 ], [ %110, %109 ]
  %123 = getelementptr inbounds i32, ptr %120, i64 1
  %124 = load i32, ptr %120, align 4, !tbaa !7
  %125 = getelementptr inbounds i32, ptr %122, i64 1
  %126 = load i32, ptr %122, align 4, !tbaa !7
  %127 = and i32 %126, %124
  %128 = getelementptr inbounds i32, ptr %121, i64 1
  store i32 %127, ptr %121, align 4, !tbaa !7
  %129 = icmp ult ptr %128, %107
  br i1 %129, label %119, label %115, !llvm.loop !87

130:                                              ; preds = %151, %115
  %131 = phi i32 [ %152, %151 ], [ %116, %115 ]
  %132 = phi i64 [ %158, %151 ], [ 0, %115 ]
  %133 = phi i32 [ %157, %151 ], [ 1, %115 ]
  %134 = phi ptr [ %156, %151 ], [ %105, %115 ]
  %135 = load i32, ptr %134, align 4, !tbaa !7
  %136 = and i32 %135, %133
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %151, label %138

138:                                              ; preds = %130
  %139 = load ptr, ptr @foutput, align 8, !tbaa !11
  %140 = load ptr, ptr @tags, align 8, !tbaa !11
  %141 = getelementptr inbounds ptr, ptr %140, i64 %132
  %142 = load ptr, ptr %141, align 8, !tbaa !11
  %143 = load ptr, ptr @rlhs, align 8, !tbaa !11
  %144 = getelementptr inbounds i16, ptr %143, i64 %118
  %145 = load i16, ptr %144, align 2, !tbaa !13
  %146 = sext i16 %145 to i64
  %147 = getelementptr inbounds ptr, ptr %140, i64 %146
  %148 = load ptr, ptr %147, align 8, !tbaa !11
  %149 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %139, ptr noundef nonnull @.str.11, ptr noundef %142, i32 noundef %103, ptr noundef %148) #30
  %150 = load i32, ptr @ntokens, align 4, !tbaa !7
  br label %151

151:                                              ; preds = %138, %130
  %152 = phi i32 [ %150, %138 ], [ %131, %130 ]
  %153 = shl i32 %133, 1
  %154 = icmp eq i32 %153, 0
  %155 = zext i1 %154 to i64
  %156 = getelementptr inbounds i32, ptr %134, i64 %155
  %157 = tail call i32 @llvm.umax.i32(i32 %153, i32 1)
  %158 = add nuw nsw i64 %132, 1
  %159 = sext i32 %152 to i64
  %160 = icmp slt i64 %158, %159
  br i1 %160, label %130, label %161, !llvm.loop !88

161:                                              ; preds = %151, %115
  %162 = load ptr, ptr @foutput, align 8, !tbaa !11
  %163 = load ptr, ptr @tags, align 8, !tbaa !11
  %164 = load ptr, ptr @rlhs, align 8, !tbaa !11
  %165 = getelementptr inbounds i16, ptr %164, i64 %118
  %166 = load i16, ptr %165, align 2, !tbaa !13
  %167 = sext i16 %166 to i64
  %168 = getelementptr inbounds ptr, ptr %163, i64 %167
  %169 = load ptr, ptr %168, align 8, !tbaa !11
  %170 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %162, ptr noundef nonnull @.str.12, i32 noundef %103, ptr noundef %169) #30
  br label %432

171:                                              ; preds = %84
  %172 = icmp sgt i32 %94, 0
  br i1 %172, label %173, label %432

173:                                              ; preds = %171
  %174 = load ptr, ptr @lookaheadset, align 8, !tbaa !11
  %175 = load i32, ptr @tokensetsize, align 4, !tbaa !7
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i32, ptr %174, i64 %176
  %178 = icmp sge i16 %87, %92
  %179 = or i1 %178, %96
  br i1 %179, label %255, label %180

180:                                              ; preds = %173
  %181 = load ptr, ptr @LA, align 8, !tbaa !11
  %182 = load ptr, ptr @shiftset.14, align 8, !tbaa !11
  %183 = icmp sgt i32 %175, 0
  %184 = load ptr, ptr @LAruleno, align 8
  %185 = sext i16 %87 to i64
  %186 = sext i16 %92 to i64
  br label %187

187:                                              ; preds = %250, %180
  %188 = phi i64 [ %185, %180 ], [ %251, %250 ]
  %189 = phi i32 [ 0, %180 ], [ %240, %250 ]
  %190 = phi i32 [ undef, %180 ], [ %239, %250 ]
  %191 = phi i32 [ -1, %180 ], [ %238, %250 ]
  br i1 %183, label %192, label %197

192:                                              ; preds = %187
  %193 = load i32, ptr @tokensetsize, align 4, !tbaa !7
  %194 = sext i32 %193 to i64
  %195 = mul nsw i64 %188, %194
  %196 = getelementptr inbounds i32, ptr %181, i64 %195
  br label %200

197:                                              ; preds = %200, %187
  %198 = load i32, ptr @ntokens, align 4, !tbaa !7
  %199 = icmp sgt i32 %198, 0
  br i1 %199, label %212, label %229

200:                                              ; preds = %200, %192
  %201 = phi ptr [ %204, %200 ], [ %196, %192 ]
  %202 = phi ptr [ %210, %200 ], [ %174, %192 ]
  %203 = phi ptr [ %206, %200 ], [ %182, %192 ]
  %204 = getelementptr inbounds i32, ptr %201, i64 1
  %205 = load i32, ptr %201, align 4, !tbaa !7
  %206 = getelementptr inbounds i32, ptr %203, i64 1
  %207 = load i32, ptr %203, align 4, !tbaa !7
  %208 = xor i32 %207, -1
  %209 = and i32 %205, %208
  %210 = getelementptr inbounds i32, ptr %202, i64 1
  store i32 %209, ptr %202, align 4, !tbaa !7
  %211 = icmp ult ptr %210, %177
  br i1 %211, label %200, label %197, !llvm.loop !89

212:                                              ; preds = %212, %197
  %213 = phi i32 [ %227, %212 ], [ 0, %197 ]
  %214 = phi i32 [ %221, %212 ], [ 0, %197 ]
  %215 = phi i32 [ %226, %212 ], [ 1, %197 ]
  %216 = phi ptr [ %225, %212 ], [ %174, %197 ]
  %217 = load i32, ptr %216, align 4, !tbaa !7
  %218 = and i32 %217, %215
  %219 = icmp ne i32 %218, 0
  %220 = zext i1 %219 to i32
  %221 = add nuw nsw i32 %214, %220
  %222 = shl i32 %215, 1
  %223 = icmp eq i32 %222, 0
  %224 = zext i1 %223 to i64
  %225 = getelementptr inbounds i32, ptr %216, i64 %224
  %226 = tail call i32 @llvm.umax.i32(i32 %222, i32 1)
  %227 = add nuw nsw i32 %213, 1
  %228 = icmp eq i32 %227, %198
  br i1 %228, label %229, label %212, !llvm.loop !90

229:                                              ; preds = %212, %197
  %230 = phi i32 [ 0, %197 ], [ %221, %212 ]
  %231 = icmp sgt i32 %230, %189
  br i1 %231, label %232, label %237

232:                                              ; preds = %229
  %233 = getelementptr inbounds i16, ptr %184, i64 %188
  %234 = load i16, ptr %233, align 2, !tbaa !13
  %235 = sext i16 %234 to i32
  %236 = trunc i64 %188 to i32
  br label %237

237:                                              ; preds = %232, %229
  %238 = phi i32 [ %236, %232 ], [ %191, %229 ]
  %239 = phi i32 [ %235, %232 ], [ %190, %229 ]
  %240 = phi i32 [ %230, %232 ], [ %189, %229 ]
  br i1 %183, label %241, label %250

241:                                              ; preds = %241, %237
  %242 = phi ptr [ %244, %241 ], [ %174, %237 ]
  %243 = phi ptr [ %246, %241 ], [ %182, %237 ]
  %244 = getelementptr inbounds i32, ptr %242, i64 1
  %245 = load i32, ptr %242, align 4, !tbaa !7
  %246 = getelementptr inbounds i32, ptr %243, i64 1
  %247 = load i32, ptr %243, align 4, !tbaa !7
  %248 = or i32 %247, %245
  store i32 %248, ptr %243, align 4, !tbaa !7
  %249 = icmp ult ptr %244, %177
  br i1 %249, label %241, label %250, !llvm.loop !91

250:                                              ; preds = %241, %237
  %251 = add nsw i64 %188, 1
  %252 = icmp eq i64 %251, %186
  br i1 %252, label %253, label %187, !llvm.loop !92

253:                                              ; preds = %250
  %.lcssa1 = phi i32 [ %238, %250 ]
  %.lcssa = phi i32 [ %239, %250 ]
  %254 = load i32, ptr @tokensetsize, align 4, !tbaa !7
  br label %255

255:                                              ; preds = %253, %173
  %256 = phi i32 [ %175, %173 ], [ %254, %253 ]
  %257 = phi i32 [ -1, %173 ], [ %.lcssa1, %253 ]
  %258 = phi i32 [ undef, %173 ], [ %.lcssa, %253 ]
  %259 = icmp sgt i32 %256, 0
  br i1 %259, label %260, label %269

260:                                              ; preds = %255
  %261 = load ptr, ptr @shiftset.14, align 8, !tbaa !11
  br label %262

262:                                              ; preds = %262, %260
  %263 = phi i64 [ 0, %260 ], [ %265, %262 ]
  %264 = getelementptr inbounds i32, ptr %261, i64 %263
  store i32 0, ptr %264, align 4, !tbaa !7
  %265 = add nuw nsw i64 %263, 1
  %266 = load i32, ptr @tokensetsize, align 4, !tbaa !7
  %267 = sext i32 %266 to i64
  %268 = icmp slt i64 %265, %267
  br i1 %268, label %262, label %269, !llvm.loop !93

269:                                              ; preds = %262, %255
  br i1 %18, label %270, label %272

270:                                              ; preds = %269
  %271 = load ptr, ptr @shiftset.14, align 8, !tbaa !11
  br label %303

272:                                              ; preds = %269
  %273 = getelementptr inbounds %struct.shifts, ptr %17, i64 0, i32 2
  %274 = load i16, ptr %273, align 2, !tbaa !35
  %275 = icmp sgt i16 %274, 0
  %276 = load ptr, ptr @shiftset.14, align 8
  br i1 %275, label %277, label %303

277:                                              ; preds = %272
  %278 = zext i16 %274 to i64
  %279 = load ptr, ptr @accessing_symbol, align 8
  br label %280

280:                                              ; preds = %300, %277
  %281 = phi i64 [ 0, %277 ], [ %301, %300 ]
  %282 = getelementptr inbounds %struct.shifts, ptr %17, i64 0, i32 3, i64 %281
  %283 = load i16, ptr %282, align 2, !tbaa !13
  %284 = icmp eq i16 %283, 0
  br i1 %284, label %300, label %285

285:                                              ; preds = %280
  %286 = sext i16 %283 to i64
  %287 = getelementptr inbounds i16, ptr %279, i64 %286
  %288 = load i16, ptr %287, align 2, !tbaa !13
  %289 = sext i16 %288 to i32
  %290 = load i32, ptr @ntokens, align 4, !tbaa !7
  %291 = icmp sgt i32 %290, %289
  br i1 %291, label %292, label %306

292:                                              ; preds = %285
  %293 = and i32 %289, 31
  %294 = shl nuw i32 1, %293
  %295 = ashr i32 %289, 5
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds i32, ptr %276, i64 %296
  %298 = load i32, ptr %297, align 4, !tbaa !7
  %299 = or i32 %298, %294
  store i32 %299, ptr %297, align 4, !tbaa !7
  br label %300

300:                                              ; preds = %292, %280
  %301 = add nuw nsw i64 %281, 1
  %302 = icmp eq i64 %301, %278
  br i1 %302, label %303, label %280, !llvm.loop !94

303:                                              ; preds = %300, %272, %270
  %304 = phi ptr [ %276, %272 ], [ %271, %270 ], [ %276, %300 ]
  %305 = load i32, ptr @ntokens, align 4, !tbaa !7
  br label %306

306:                                              ; preds = %303, %285
  %307 = phi i32 [ %305, %303 ], [ %290, %285 ]
  %308 = phi ptr [ %304, %303 ], [ %276, %285 ]
  %309 = icmp sgt i32 %307, 0
  br i1 %309, label %310, label %416

310:                                              ; preds = %306
  %311 = load ptr, ptr @LA, align 8, !tbaa !11
  %312 = load i32, ptr @tokensetsize, align 4, !tbaa !7
  %313 = mul nsw i32 %312, %88
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds i32, ptr %311, i64 %314
  %316 = icmp slt i16 %87, %92
  %317 = sext i32 %257 to i64
  %318 = sext i16 %87 to i64
  %319 = sext i16 %92 to i64
  br label %320

320:                                              ; preds = %406, %310
  %321 = phi i32 [ %307, %310 ], [ %407, %406 ]
  %322 = phi i64 [ 0, %310 ], [ %413, %406 ]
  %323 = phi ptr [ %315, %310 ], [ %412, %406 ]
  %324 = phi i32 [ 1, %310 ], [ %410, %406 ]
  br i1 %316, label %325, label %406

325:                                              ; preds = %320
  %326 = load i32, ptr %308, align 4, !tbaa !7
  %327 = and i32 %326, %324
  %328 = icmp ne i32 %327, 0
  %329 = zext i1 %328 to i32
  br label %330

330:                                              ; preds = %396, %325
  %331 = phi i64 [ %318, %325 ], [ %402, %396 ]
  %332 = phi i32 [ 0, %325 ], [ %398, %396 ]
  %333 = phi i32 [ %329, %325 ], [ %397, %396 ]
  %334 = phi ptr [ %323, %325 ], [ %401, %396 ]
  %335 = load i32, ptr %334, align 4, !tbaa !7
  %336 = and i32 %335, %324
  %337 = icmp eq i32 %336, 0
  br i1 %337, label %396, label %338

338:                                              ; preds = %330
  %339 = icmp eq i32 %333, 0
  br i1 %339, label %340, label %359

340:                                              ; preds = %338
  %341 = icmp eq i64 %331, %317
  br i1 %341, label %396, label %342

342:                                              ; preds = %340
  %343 = load ptr, ptr @LAruleno, align 8, !tbaa !11
  %344 = getelementptr inbounds i16, ptr %343, i64 %331
  %345 = load i16, ptr %344, align 2, !tbaa !13
  %346 = sext i16 %345 to i32
  %347 = load ptr, ptr @foutput, align 8, !tbaa !11
  %348 = load ptr, ptr @tags, align 8, !tbaa !11
  %349 = getelementptr inbounds ptr, ptr %348, i64 %322
  %350 = load ptr, ptr %349, align 8, !tbaa !11
  %351 = load ptr, ptr @rlhs, align 8, !tbaa !11
  %352 = sext i16 %345 to i64
  %353 = getelementptr inbounds i16, ptr %351, i64 %352
  %354 = load i16, ptr %353, align 2, !tbaa !13
  %355 = sext i16 %354 to i64
  %356 = getelementptr inbounds ptr, ptr %348, i64 %355
  %357 = load ptr, ptr %356, align 8, !tbaa !11
  %358 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %347, ptr noundef nonnull @.str.13, ptr noundef %350, i32 noundef %346, ptr noundef %357) #30
  br label %396

359:                                              ; preds = %338
  %360 = icmp eq i32 %332, 0
  %361 = load ptr, ptr @LAruleno, align 8, !tbaa !11
  br i1 %360, label %379, label %362

362:                                              ; preds = %359
  %363 = getelementptr inbounds i16, ptr %361, i64 %317
  %364 = load i16, ptr %363, align 2, !tbaa !13
  %365 = sext i16 %364 to i32
  %366 = load ptr, ptr @foutput, align 8, !tbaa !11
  %367 = load ptr, ptr @tags, align 8, !tbaa !11
  %368 = getelementptr inbounds ptr, ptr %367, i64 %322
  %369 = load ptr, ptr %368, align 8, !tbaa !11
  %370 = load ptr, ptr @rlhs, align 8, !tbaa !11
  %371 = sext i16 %364 to i64
  %372 = getelementptr inbounds i16, ptr %370, i64 %371
  %373 = load i16, ptr %372, align 2, !tbaa !13
  %374 = sext i16 %373 to i64
  %375 = getelementptr inbounds ptr, ptr %367, i64 %374
  %376 = load ptr, ptr %375, align 8, !tbaa !11
  %377 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %366, ptr noundef nonnull @.str.13, ptr noundef %369, i32 noundef %365, ptr noundef %376) #30
  %378 = load ptr, ptr @LAruleno, align 8, !tbaa !11
  br label %379

379:                                              ; preds = %362, %359
  %380 = phi ptr [ %378, %362 ], [ %361, %359 ]
  %381 = getelementptr inbounds i16, ptr %380, i64 %331
  %382 = load i16, ptr %381, align 2, !tbaa !13
  %383 = sext i16 %382 to i32
  %384 = load ptr, ptr @foutput, align 8, !tbaa !11
  %385 = load ptr, ptr @tags, align 8, !tbaa !11
  %386 = getelementptr inbounds ptr, ptr %385, i64 %322
  %387 = load ptr, ptr %386, align 8, !tbaa !11
  %388 = load ptr, ptr @rlhs, align 8, !tbaa !11
  %389 = sext i16 %382 to i64
  %390 = getelementptr inbounds i16, ptr %388, i64 %389
  %391 = load i16, ptr %390, align 2, !tbaa !13
  %392 = sext i16 %391 to i64
  %393 = getelementptr inbounds ptr, ptr %385, i64 %392
  %394 = load ptr, ptr %393, align 8, !tbaa !11
  %395 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %384, ptr noundef nonnull @.str.11, ptr noundef %387, i32 noundef %383, ptr noundef %394) #30
  br label %396

396:                                              ; preds = %379, %342, %340, %330
  %397 = phi i32 [ 1, %379 ], [ %333, %330 ], [ 1, %340 ], [ 1, %342 ]
  %398 = phi i32 [ 0, %379 ], [ %332, %330 ], [ 1, %340 ], [ %332, %342 ]
  %399 = load i32, ptr @tokensetsize, align 4, !tbaa !7
  %400 = sext i32 %399 to i64
  %401 = getelementptr inbounds i32, ptr %334, i64 %400
  %402 = add nsw i64 %331, 1
  %403 = icmp eq i64 %402, %319
  br i1 %403, label %404, label %330, !llvm.loop !95

404:                                              ; preds = %396
  %405 = load i32, ptr @ntokens, align 4, !tbaa !7
  br label %406

406:                                              ; preds = %404, %320
  %407 = phi i32 [ %405, %404 ], [ %321, %320 ]
  %408 = shl i32 %324, 1
  %409 = icmp eq i32 %408, 0
  %410 = tail call i32 @llvm.umax.i32(i32 %408, i32 1)
  %411 = zext i1 %409 to i64
  %412 = getelementptr inbounds i32, ptr %323, i64 %411
  %413 = add nuw nsw i64 %322, 1
  %414 = sext i32 %407 to i64
  %415 = icmp slt i64 %413, %414
  br i1 %415, label %320, label %416, !llvm.loop !96

416:                                              ; preds = %406, %306
  %417 = icmp sgt i32 %257, -1
  br i1 %417, label %418, label %429

418:                                              ; preds = %416
  %419 = load ptr, ptr @foutput, align 8, !tbaa !11
  %420 = load ptr, ptr @tags, align 8, !tbaa !11
  %421 = load ptr, ptr @rlhs, align 8, !tbaa !11
  %422 = sext i32 %258 to i64
  %423 = getelementptr inbounds i16, ptr %421, i64 %422
  %424 = load i16, ptr %423, align 2, !tbaa !13
  %425 = sext i16 %424 to i64
  %426 = getelementptr inbounds ptr, ptr %420, i64 %425
  %427 = load ptr, ptr %426, align 8, !tbaa !11
  %428 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %419, ptr noundef nonnull @.str.14, i32 noundef %258, ptr noundef %427) #30
  br label %429

429:                                              ; preds = %418, %416
  %430 = load ptr, ptr @foutput, align 8, !tbaa !11
  %431 = tail call i32 @putc(i32 noundef 10, ptr noundef %430) #30
  br label %432

432:                                              ; preds = %429, %171, %161
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @set_derives() #0 {
  %1 = load i32, ptr @nvars, align 4, !tbaa !7
  %2 = shl i32 %1, 3
  %3 = tail call ptr (i32, ...) @mallocate(i32 noundef %2) #29
  %4 = load i32, ptr @ntokens, align 4, !tbaa !7
  %5 = sext i32 %4 to i64
  %6 = sub nsw i64 0, %5
  %7 = getelementptr inbounds ptr, ptr %3, i64 %6
  %8 = load i32, ptr @nrules, align 4, !tbaa !7
  %9 = shl i32 %8, 4
  %10 = add i32 %9, 16
  %11 = tail call ptr (i32, ...) @mallocate(i32 noundef %10) #29
  %12 = load i32, ptr @nrules, align 4, !tbaa !7
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %30

14:                                               ; preds = %0
  %15 = zext i32 %12 to i64
  br label %16

16:                                               ; preds = %16, %14
  %17 = phi i64 [ %15, %14 ], [ %28, %16 ]
  %18 = phi ptr [ %11, %14 ], [ %27, %16 ]
  %19 = load ptr, ptr @rlhs, align 8, !tbaa !11
  %20 = getelementptr inbounds i16, ptr %19, i64 %17
  %21 = load i16, ptr %20, align 2, !tbaa !13
  %22 = sext i16 %21 to i64
  %23 = getelementptr inbounds ptr, ptr %7, i64 %22
  %24 = load ptr, ptr %23, align 8, !tbaa !11
  store ptr %24, ptr %18, align 8, !tbaa !97
  %25 = trunc i64 %17 to i16
  %26 = getelementptr inbounds %struct.shorts, ptr %18, i64 0, i32 1
  store i16 %25, ptr %26, align 8, !tbaa !99
  store ptr %18, ptr %23, align 8, !tbaa !11
  %27 = getelementptr inbounds %struct.shorts, ptr %18, i64 1
  %28 = add nsw i64 %17, -1
  %29 = icmp ugt i64 %17, 1
  br i1 %29, label %16, label %30, !llvm.loop !100

30:                                               ; preds = %16, %0
  %31 = load i32, ptr @nvars, align 4, !tbaa !7
  %32 = shl i32 %31, 3
  %33 = tail call ptr (i32, ...) @mallocate(i32 noundef %32) #29
  %34 = load i32, ptr @ntokens, align 4, !tbaa !7
  %35 = sext i32 %34 to i64
  %36 = sub nsw i64 0, %35
  %37 = getelementptr inbounds ptr, ptr %33, i64 %36
  store ptr %37, ptr @derives, align 8, !tbaa !11
  %38 = load i32, ptr @nvars, align 4, !tbaa !7
  %39 = load i32, ptr @nrules, align 4, !tbaa !7
  %40 = add nsw i32 %39, %38
  %41 = shl i32 %40, 1
  %42 = tail call ptr (i32, ...) @mallocate(i32 noundef %41) #29
  %43 = load i32, ptr @ntokens, align 4, !tbaa !7
  %44 = load i32, ptr @nsyms, align 4, !tbaa !7
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %70

46:                                               ; preds = %30
  %47 = sext i32 %43 to i64
  %48 = sext i32 %44 to i64
  br label %49

49:                                               ; preds = %65, %46
  %50 = phi i64 [ %47, %46 ], [ %68, %65 ]
  %51 = phi ptr [ %42, %46 ], [ %67, %65 ]
  %52 = load ptr, ptr @derives, align 8, !tbaa !11
  %53 = getelementptr inbounds ptr, ptr %52, i64 %50
  store ptr %51, ptr %53, align 8, !tbaa !11
  %54 = getelementptr inbounds ptr, ptr %7, i64 %50
  %55 = load ptr, ptr %54, align 8, !tbaa !11
  %56 = icmp eq ptr %55, null
  br i1 %56, label %65, label %57

57:                                               ; preds = %57, %49
  %58 = phi ptr [ %63, %57 ], [ %55, %49 ]
  %59 = phi ptr [ %62, %57 ], [ %51, %49 ]
  %60 = getelementptr inbounds %struct.shorts, ptr %58, i64 0, i32 1
  %61 = load i16, ptr %60, align 8, !tbaa !99
  %62 = getelementptr inbounds i16, ptr %59, i64 1
  store i16 %61, ptr %59, align 2, !tbaa !13
  %63 = load ptr, ptr %58, align 8, !tbaa !11
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %57, !llvm.loop !101

65:                                               ; preds = %57, %49
  %66 = phi ptr [ %51, %49 ], [ %62, %57 ]
  %67 = getelementptr inbounds i16, ptr %66, i64 1
  store i16 -1, ptr %66, align 2, !tbaa !13
  %68 = add nsw i64 %50, 1
  %69 = icmp eq i64 %68, %48
  br i1 %69, label %70, label %49, !llvm.loop !102

70:                                               ; preds = %65, %30
  %71 = icmp eq ptr %3, null
  br i1 %71, label %75, label %72

72:                                               ; preds = %70
  %73 = sext i32 %43 to i64
  %74 = getelementptr inbounds ptr, ptr %7, i64 %73
  tail call void @free(ptr noundef %74) #29
  br label %75

75:                                               ; preds = %72, %70
  %76 = icmp eq ptr %11, null
  br i1 %76, label %78, label %77

77:                                               ; preds = %75
  tail call void @free(ptr noundef nonnull %11) #29
  br label %78

78:                                               ; preds = %77, %75
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @stringappend(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = load i8, ptr %2, align 1, !tbaa !61
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %13, label %6

6:                                                ; preds = %6, %3
  %7 = phi i32 [ %10, %6 ], [ 0, %3 ]
  %8 = phi ptr [ %9, %6 ], [ %2, %3 ]
  %9 = getelementptr inbounds i8, ptr %8, i64 1
  %10 = add nuw nsw i32 %7, 1
  %11 = load i8, ptr %9, align 1, !tbaa !61
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %6, !llvm.loop !103

13:                                               ; preds = %6, %3
  %14 = phi i32 [ 0, %3 ], [ %10, %6 ]
  %15 = add i32 %1, 1
  %16 = add i32 %15, %14
  %17 = tail call ptr (i32, ...) @mallocate(i32 noundef %16) #29
  %18 = icmp sgt i32 %1, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %19, %13
  %20 = phi i32 [ %26, %19 ], [ 0, %13 ]
  %21 = phi ptr [ %23, %19 ], [ %0, %13 ]
  %22 = phi ptr [ %25, %19 ], [ %17, %13 ]
  %23 = getelementptr inbounds i8, ptr %21, i64 1
  %24 = load i8, ptr %21, align 1, !tbaa !61
  %25 = getelementptr inbounds i8, ptr %22, i64 1
  store i8 %24, ptr %22, align 1, !tbaa !61
  %26 = add nuw nsw i32 %20, 1
  %27 = icmp eq i32 %26, %1
  br i1 %27, label %28, label %19, !llvm.loop !104

28:                                               ; preds = %19, %13
  %29 = phi ptr [ %17, %13 ], [ %25, %19 ]
  br label %30

30:                                               ; preds = %30, %28
  %31 = phi ptr [ %35, %30 ], [ %29, %28 ]
  %32 = phi ptr [ %33, %30 ], [ %2, %28 ]
  %33 = getelementptr inbounds i8, ptr %32, i64 1
  %34 = load i8, ptr %32, align 1, !tbaa !61
  %35 = getelementptr inbounds i8, ptr %31, i64 1
  store i8 %34, ptr %31, align 1, !tbaa !61
  %36 = icmp eq i8 %34, 0
  br i1 %36, label %37, label %30, !llvm.loop !105

37:                                               ; preds = %30
  ret ptr %17
}

; Function Attrs: nounwind optsize uwtable
define internal void @openfiles() #0 {
  %1 = load ptr, ptr @spec_outfile, align 8, !tbaa !11
  %2 = icmp eq ptr %1, null
  br i1 %2, label %26, label %3

3:                                                ; preds = %0
  %4 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #34
  %5 = trunc i64 %4 to i32
  %6 = shl i64 %4, 32
  %7 = ashr exact i64 %6, 32
  %8 = getelementptr inbounds i8, ptr %1, i64 %7
  %9 = getelementptr inbounds i8, ptr %8, i64 -2
  %10 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(3) @.str.1.19) #34
  %11 = icmp eq i32 %10, 0
  %12 = add nsw i32 %5, -2
  %13 = select i1 %11, i32 %12, i32 %5
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i8, ptr %1, i64 %14
  %16 = getelementptr inbounds i8, ptr %15, i64 -4
  %17 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %16, ptr noundef nonnull dereferenceable(5) @.str.2.20) #34
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = add nsw i32 %13, -4
  br label %55

21:                                               ; preds = %3
  %22 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %16, ptr noundef nonnull dereferenceable(5) @.str.3.21) #34
  %23 = icmp eq i32 %22, 0
  %24 = add nsw i32 %13, -4
  %25 = select i1 %23, i32 %24, i32 %13
  br label %55

26:                                               ; preds = %0
  %27 = load i32, ptr @fixed_outfiles, align 4, !tbaa !7
  %28 = icmp eq i32 %27, 0
  %29 = load ptr, ptr @infile, align 8
  %30 = select i1 %28, ptr %29, ptr @.str.4.24
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  tail call void @exit(i32 noundef 1) #36
  unreachable

33:                                               ; preds = %39, %26
  %34 = phi ptr [ %41, %39 ], [ %30, %26 ]
  %35 = phi ptr [ %40, %39 ], [ %30, %26 ]
  %36 = load i8, ptr %34, align 1, !tbaa !61
  switch i8 %36, label %39 [
    i8 0, label %42
    i8 47, label %37
  ]

37:                                               ; preds = %33
  %38 = getelementptr inbounds i8, ptr %34, i64 1
  br label %39

39:                                               ; preds = %37, %33
  %40 = phi ptr [ %38, %37 ], [ %35, %33 ]
  %41 = getelementptr inbounds i8, ptr %34, i64 1
  br label %33, !llvm.loop !106

42:                                               ; preds = %33
  %.lcssa = phi ptr [ %35, %33 ]
  %43 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.lcssa) #34
  %44 = trunc i64 %43 to i32
  %45 = shl i64 %43, 32
  %46 = ashr exact i64 %45, 32
  %47 = getelementptr inbounds i8, ptr %.lcssa, i64 %46
  %48 = getelementptr inbounds i8, ptr %47, i64 -2
  %49 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %48, ptr noundef nonnull dereferenceable(3) @.str.5.25) #34
  %50 = icmp eq i32 %49, 0
  %51 = add nsw i32 %44, -2
  %52 = select i1 %50, i32 %51, i32 %44
  %53 = tail call ptr @stringappend(ptr noundef %.lcssa, i32 noundef %52, ptr noundef nonnull @.str.2.20) #30
  %54 = add nsw i32 %52, 4
  br label %55

55:                                               ; preds = %42, %21, %19
  %56 = phi i32 [ %13, %19 ], [ %54, %42 ], [ %13, %21 ]
  %57 = phi i32 [ %20, %19 ], [ %52, %42 ], [ %25, %21 ]
  %58 = phi ptr [ %1, %19 ], [ %53, %42 ], [ %1, %21 ]
  %59 = load ptr, ptr @infile, align 8, !tbaa !11
  %60 = tail call ptr @tryopen(ptr noundef %59, ptr noundef nonnull @.str.6.26) #30
  store ptr %60, ptr @finput, align 8, !tbaa !11
  %61 = load i32, ptr @verboseflag, align 4, !tbaa !7
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %55
  %64 = tail call ptr @stringappend(ptr noundef %58, i32 noundef %57, ptr noundef nonnull @.str.7.27) #30
  store ptr %64, ptr @outfile, align 8, !tbaa !11
  %65 = load ptr, ptr @stdout, align 8, !tbaa !11
  store ptr %65, ptr @foutput, align 8, !tbaa !11
  br label %66

66:                                               ; preds = %63, %55
  %67 = load i32, ptr @definesflag, align 4, !tbaa !7
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %66
  %70 = tail call ptr @stringappend(ptr noundef %58, i32 noundef %56, ptr noundef nonnull @.str.8.30) #30
  store ptr %70, ptr @defsfile, align 8, !tbaa !11
  %71 = load ptr, ptr @stdout, align 8, !tbaa !11
  store ptr %71, ptr @fdefines, align 8, !tbaa !11
  br label %72

72:                                               ; preds = %69, %66
  %73 = tail call ptr @stringappend(ptr noundef nonnull @.str.31, i32 noundef 7, ptr noundef nonnull @.str.9.32) #30
  %74 = tail call ptr @mktemp(ptr noundef %73) #29
  store ptr %74, ptr @actfile, align 8, !tbaa !11
  %75 = load ptr, ptr @stdout, align 8, !tbaa !11
  store ptr %75, ptr @faction, align 8, !tbaa !11
  %76 = tail call ptr @stringappend(ptr noundef nonnull @.str.31, i32 noundef 7, ptr noundef nonnull @.str.10.33) #30
  %77 = tail call ptr @mktemp(ptr noundef %76) #29
  store ptr %77, ptr @tmpattrsfile, align 8, !tbaa !11
  %78 = load ptr, ptr @stdout, align 8, !tbaa !11
  store ptr %78, ptr @fattrs, align 8, !tbaa !11
  %79 = tail call ptr @stringappend(ptr noundef nonnull @.str.31, i32 noundef 7, ptr noundef nonnull @.str.11.34) #30
  %80 = tail call ptr @mktemp(ptr noundef %79) #29
  store ptr %80, ptr @tmptabfile, align 8, !tbaa !11
  %81 = load ptr, ptr @stdout, align 8, !tbaa !11
  store ptr %81, ptr @ftable, align 8, !tbaa !11
  %82 = load ptr, ptr @spec_outfile, align 8, !tbaa !11
  %83 = icmp eq ptr %82, null
  br i1 %83, label %84, label %86

84:                                               ; preds = %72
  %85 = tail call ptr @stringappend(ptr noundef %58, i32 noundef %56, ptr noundef nonnull @.str.1.19) #30
  br label %86

86:                                               ; preds = %84, %72
  %87 = phi ptr [ %85, %84 ], [ %82, %72 ]
  store ptr %87, ptr @tabfile, align 8, !tbaa !11
  %88 = tail call ptr @stringappend(ptr noundef %58, i32 noundef %57, ptr noundef nonnull @.str.12.35) #30
  store ptr %88, ptr @attrsfile, align 8, !tbaa !11
  %89 = tail call ptr @stringappend(ptr noundef %58, i32 noundef %57, ptr noundef nonnull @.str.13.36) #30
  store ptr %89, ptr @guardfile, align 8, !tbaa !11
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32 noundef) local_unnamed_addr #15

; Function Attrs: nounwind optsize uwtable
define internal noalias ptr @tryopen(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call noalias ptr @fopen(ptr noundef %0, ptr noundef %1) #30
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = load ptr, ptr @stderr, align 8, !tbaa !11
  %7 = tail call i64 @fwrite(ptr nonnull @.str.17, i64 7, i64 1, ptr %6) #32
  tail call void @perror(ptr noundef %0) #35
  tail call void @exit(i32 noundef 2) #36
  unreachable

8:                                                ; preds = %2
  ret ptr %3
}

; Function Attrs: nounwind optsize
declare ptr @mktemp(ptr noundef) local_unnamed_addr #16

; Function Attrs: nofree nounwind optsize
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #9

; Function Attrs: nofree nounwind optsize
declare void @perror(ptr nocapture noundef readonly) local_unnamed_addr #9

; Function Attrs: nounwind optsize uwtable
define internal void @open_extra_files() #0 {
  %1 = load ptr, ptr @fparser, align 8, !tbaa !11
  %2 = tail call i32 @fclose(ptr noundef %1) #30
  %3 = tail call ptr @getenv(ptr noundef nonnull @.str.14.37) #29
  %4 = icmp eq ptr %3, null
  %5 = select i1 %4, ptr @.str.15, ptr %3
  %6 = tail call ptr @tryopen(ptr noundef nonnull %5, ptr noundef nonnull @.str.6.26) #30
  store ptr %6, ptr @fparser, align 8, !tbaa !11
  %7 = load ptr, ptr @attrsfile, align 8, !tbaa !11
  %8 = tail call ptr @tryopen(ptr noundef %7, ptr noundef nonnull @.str.16.38) #30
  %9 = load ptr, ptr @fattrs, align 8, !tbaa !11
  tail call void @rewind(ptr noundef %9) #30
  br label %10

10:                                               ; preds = %14, %0
  %11 = load ptr, ptr @fattrs, align 8, !tbaa !11
  %12 = tail call i32 @getc(ptr noundef %11) #30
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %16, label %14

14:                                               ; preds = %10
  %15 = tail call i32 @putc(i32 noundef %12, ptr noundef %8) #30
  br label %10, !llvm.loop !107

16:                                               ; preds = %10
  store ptr %8, ptr @fattrs, align 8, !tbaa !11
  %17 = load ptr, ptr @guardfile, align 8, !tbaa !11
  %18 = tail call ptr @tryopen(ptr noundef %17, ptr noundef nonnull @.str.16.38) #30
  store ptr %18, ptr @fguard, align 8, !tbaa !11
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind optsize memory(read)
declare noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #17

; Function Attrs: nofree nounwind optsize
declare void @rewind(ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind optsize
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: noreturn nounwind optsize uwtable
define internal void @done(i32 noundef %0) #18 {
  tail call void @exit(i32 noundef %0) #36
  unreachable
}

; Function Attrs: nounwind optsize uwtable
define internal void @getargs(i32 noundef %0, ptr noundef %1) #0 {
  %3 = load ptr, ptr %1, align 8, !tbaa !11
  store i32 0, ptr @verboseflag, align 4, !tbaa !7
  store i32 0, ptr @definesflag, align 4, !tbaa !7
  store i32 0, ptr @debugflag, align 4, !tbaa !7
  store i32 0, ptr @fixed_outfiles, align 4, !tbaa !7
  br label %4

4:                                                ; preds = %10, %2
  %5 = phi ptr [ %3, %2 ], [ %12, %10 ]
  %6 = phi ptr [ %3, %2 ], [ %11, %10 ]
  %7 = load i8, ptr %5, align 1, !tbaa !61
  switch i8 %7, label %10 [
    i8 0, label %13
    i8 47, label %8
  ]

8:                                                ; preds = %4
  %9 = getelementptr inbounds i8, ptr %5, i64 1
  br label %10

10:                                               ; preds = %8, %4
  %11 = phi ptr [ %9, %8 ], [ %6, %4 ]
  %12 = getelementptr inbounds i8, ptr %5, i64 1
  br label %4, !llvm.loop !108

13:                                               ; preds = %4
  %.lcssa = phi ptr [ %6, %4 ]
  %14 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.lcssa, ptr noundef nonnull dereferenceable(5) @.str.45) #34
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  store i32 1, ptr @fixed_outfiles, align 4, !tbaa !7
  br label %17

17:                                               ; preds = %16, %13
  br label %18

18:                                               ; preds = %20, %17
  %19 = tail call i32 @getopt(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.1.46) #29
  switch i32 %19, label %20 [
    i32 -1, label %28
    i32 121, label %21
    i32 118, label %22
    i32 100, label %23
    i32 108, label %24
    i32 116, label %25
    i32 111, label %26
  ]

20:                                               ; preds = %26, %25, %24, %23, %22, %21, %18
  br label %18, !llvm.loop !109

21:                                               ; preds = %18
  store i32 1, ptr @fixed_outfiles, align 4, !tbaa !7
  br label %20

22:                                               ; preds = %18
  store i32 1, ptr @verboseflag, align 4, !tbaa !7
  br label %20

23:                                               ; preds = %18
  store i32 1, ptr @definesflag, align 4, !tbaa !7
  br label %20

24:                                               ; preds = %18
  store i32 1, ptr @nolinesflag, align 4, !tbaa !7
  br label %20

25:                                               ; preds = %18
  store i32 1, ptr @debugflag, align 4, !tbaa !7
  br label %20

26:                                               ; preds = %18
  %27 = load ptr, ptr @optarg, align 8, !tbaa !11
  store ptr %27, ptr @spec_outfile, align 8, !tbaa !11
  br label %20

28:                                               ; preds = %18
  %29 = load i32, ptr @optind, align 4, !tbaa !7
  %30 = icmp eq i32 %29, %0
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  tail call void @fatal(ptr noundef nonnull @.str.2.47) #29
  %32 = load i32, ptr @optind, align 4, !tbaa !7
  br label %37

33:                                               ; preds = %28
  %34 = sext i32 %29 to i64
  %35 = getelementptr inbounds ptr, ptr %1, i64 %34
  %36 = load ptr, ptr %35, align 8, !tbaa !11
  store ptr %36, ptr @infile, align 8, !tbaa !11
  br label %37

37:                                               ; preds = %33, %31
  %38 = phi i32 [ %29, %33 ], [ %32, %31 ]
  %39 = add nsw i32 %0, -1
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = load ptr, ptr @stderr, align 8, !tbaa !11
  %43 = tail call i64 @fwrite(ptr nonnull @.str.3.48, i64 40, i64 1, ptr %42) #32
  br label %44

44:                                               ; preds = %41, %37
  ret void
}

; Function Attrs: nofree nounwind optsize uwtable
define dso_local i32 @getopt(i32 noundef %0, ptr nocapture noundef %1, ptr noundef readonly %2) #12 {
  %4 = load i32, ptr @optind, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %15

6:                                                ; preds = %3
  store i32 1, ptr @optind, align 4, !tbaa !7
  store i32 1, ptr @last_nonopt, align 4, !tbaa !7
  store i32 1, ptr @first_nonopt, align 4, !tbaa !7
  store ptr null, ptr @nextchar, align 8, !tbaa !11
  %7 = load i8, ptr %2, align 1, !tbaa !61
  %8 = icmp eq i8 %7, 45
  br i1 %8, label %9, label %10

9:                                                ; preds = %6
  store i32 2, ptr @ordering, align 4, !tbaa !61
  br label %60

10:                                               ; preds = %6
  %11 = tail call ptr @getenv(ptr noundef nonnull @.str.53) #29
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %10
  store i32 0, ptr @ordering, align 4, !tbaa !61
  br label %60

14:                                               ; preds = %10
  store i32 1, ptr @ordering, align 4, !tbaa !61
  br label %24

15:                                               ; preds = %3
  %16 = load ptr, ptr @nextchar, align 8, !tbaa !11
  %17 = icmp eq ptr %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %15
  %19 = load i8, ptr %16, align 1, !tbaa !61
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %102

21:                                               ; preds = %18, %15
  %22 = load i32, ptr @ordering, align 4, !tbaa !61
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %24, label %60

24:                                               ; preds = %21, %14
  %25 = phi i32 [ 1, %14 ], [ %4, %21 ]
  %26 = load i32, ptr @first_nonopt, align 4, !tbaa !7
  %27 = load i32, ptr @last_nonopt, align 4, !tbaa !7
  %28 = icmp eq i32 %26, %27
  %29 = icmp eq i32 %27, %25
  %30 = or i1 %28, %29
  br i1 %30, label %33, label %31

31:                                               ; preds = %24
  tail call fastcc void @exchange(ptr noundef %1) #30
  %32 = load i32, ptr @optind, align 4, !tbaa !7
  br label %35

33:                                               ; preds = %24
  br i1 %29, label %35, label %34

34:                                               ; preds = %33
  store i32 %25, ptr @first_nonopt, align 4, !tbaa !7
  br label %35

35:                                               ; preds = %34, %33, %31
  %36 = phi i32 [ %25, %33 ], [ %25, %34 ], [ %32, %31 ]
  %37 = icmp slt i32 %36, %0
  br i1 %37, label %38, label %57

38:                                               ; preds = %35
  %39 = sext i32 %36 to i64
  br label %40

40:                                               ; preds = %51, %38
  %41 = phi i32 [ %36, %38 ], [ %53, %51 ]
  %42 = phi i64 [ %39, %38 ], [ %52, %51 ]
  %43 = getelementptr inbounds ptr, ptr %1, i64 %42
  %44 = load ptr, ptr %43, align 8, !tbaa !11
  %45 = load i8, ptr %44, align 1, !tbaa !61
  %46 = icmp eq i8 %45, 45
  br i1 %46, label %47, label %51

47:                                               ; preds = %40
  %48 = getelementptr inbounds i8, ptr %44, i64 1
  %49 = load i8, ptr %48, align 1, !tbaa !61
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %47, %40
  %52 = add nsw i64 %42, 1
  %53 = trunc i64 %52 to i32
  store i32 %53, ptr @optind, align 4, !tbaa !7
  %54 = icmp eq i32 %53, %0
  br i1 %54, label %57, label %40, !llvm.loop !110

55:                                               ; preds = %47
  %.lcssa1 = phi i32 [ %41, %47 ]
  %.lcssa = phi i64 [ %42, %47 ]
  %56 = trunc i64 %.lcssa to i32
  br label %57

57:                                               ; preds = %55, %51, %35
  %58 = phi i32 [ %36, %35 ], [ %.lcssa1, %55 ], [ %0, %51 ]
  %59 = phi i32 [ %36, %35 ], [ %56, %55 ], [ %0, %51 ]
  store i32 %59, ptr @last_nonopt, align 4, !tbaa !7
  br label %60

60:                                               ; preds = %57, %21, %13, %9
  %61 = phi i32 [ 1, %9 ], [ %58, %57 ], [ %4, %21 ], [ 1, %13 ]
  %62 = icmp eq i32 %61, %0
  br i1 %62, label %82, label %63

63:                                               ; preds = %60
  %64 = sext i32 %61 to i64
  %65 = getelementptr inbounds ptr, ptr %1, i64 %64
  %66 = load ptr, ptr %65, align 8, !tbaa !11
  %67 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %66, ptr noundef nonnull dereferenceable(3) @.str.1.54) #34
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %80

69:                                               ; preds = %63
  %70 = add nsw i32 %61, 1
  store i32 %70, ptr @optind, align 4, !tbaa !7
  %71 = load i32, ptr @first_nonopt, align 4, !tbaa !7
  %72 = load i32, ptr @last_nonopt, align 4, !tbaa !7
  %73 = icmp eq i32 %71, %72
  %74 = icmp eq i32 %72, %70
  %75 = select i1 %73, i1 true, i1 %74
  br i1 %75, label %77, label %76

76:                                               ; preds = %69
  tail call fastcc void @exchange(ptr noundef nonnull %1) #30
  br label %79

77:                                               ; preds = %69
  br i1 %73, label %78, label %79

78:                                               ; preds = %77
  store i32 %70, ptr @first_nonopt, align 4, !tbaa !7
  br label %79

79:                                               ; preds = %78, %77, %76
  store i32 %0, ptr @last_nonopt, align 4, !tbaa !7
  store i32 %0, ptr @optind, align 4, !tbaa !7
  br label %82

80:                                               ; preds = %63
  %81 = icmp eq i32 %61, %0
  br i1 %81, label %82, label %87

82:                                               ; preds = %80, %79, %60
  %83 = load i32, ptr @first_nonopt, align 4, !tbaa !7
  %84 = load i32, ptr @last_nonopt, align 4, !tbaa !7
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %164, label %86

86:                                               ; preds = %82
  store i32 %83, ptr @optind, align 4, !tbaa !7
  br label %164

87:                                               ; preds = %80
  %88 = sext i32 %61 to i64
  %89 = getelementptr inbounds ptr, ptr %1, i64 %88
  %90 = load ptr, ptr %89, align 8, !tbaa !11
  %91 = load i8, ptr %90, align 1, !tbaa !61
  %92 = icmp eq i8 %91, 45
  br i1 %92, label %93, label %97

93:                                               ; preds = %87
  %94 = getelementptr inbounds i8, ptr %90, i64 1
  %95 = load i8, ptr %94, align 1, !tbaa !61
  %96 = icmp eq i8 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %93, %87
  %98 = load i32, ptr @ordering, align 4, !tbaa !61
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %164, label %100

100:                                              ; preds = %97
  %101 = add nsw i32 %61, 1
  store i32 %101, ptr @optind, align 4, !tbaa !7
  store ptr %90, ptr @optarg, align 8, !tbaa !11
  br label %164

102:                                              ; preds = %93, %18
  %103 = phi i32 [ %4, %18 ], [ %61, %93 ]
  %104 = phi ptr [ %16, %18 ], [ %94, %93 ]
  %105 = getelementptr inbounds i8, ptr %104, i64 1
  store ptr %105, ptr @nextchar, align 8, !tbaa !11
  %106 = load i8, ptr %104, align 1, !tbaa !61
  %107 = sext i8 %106 to i32
  %108 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %2, i32 noundef %107) #34
  %109 = load i8, ptr %105, align 1, !tbaa !61
  %110 = icmp eq i8 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %102
  %112 = add nsw i32 %103, 1
  store i32 %112, ptr @optind, align 4, !tbaa !7
  br label %113

113:                                              ; preds = %111, %102
  %114 = phi i32 [ %112, %111 ], [ %103, %102 ]
  %115 = icmp eq ptr %108, null
  %116 = icmp eq i8 %106, 58
  %117 = or i1 %116, %115
  br i1 %117, label %118, label %130

118:                                              ; preds = %113
  %119 = load i32, ptr @opterr, align 4, !tbaa !7
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %164, label %121

121:                                              ; preds = %118
  %122 = add i8 %106, -127
  %123 = icmp ult i8 %122, -95
  %124 = load ptr, ptr @stderr, align 8, !tbaa !11
  %125 = load ptr, ptr %1, align 8, !tbaa !11
  br i1 %123, label %126, label %128

126:                                              ; preds = %121
  %127 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %124, ptr noundef nonnull @.str.2.57, ptr noundef %125, i32 noundef %107) #35
  br label %164

128:                                              ; preds = %121
  %129 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %124, ptr noundef nonnull @.str.3.58, ptr noundef %125, i32 noundef %107) #35
  br label %164

130:                                              ; preds = %113
  %131 = getelementptr inbounds i8, ptr %108, i64 1
  %132 = load i8, ptr %131, align 1, !tbaa !61
  %133 = icmp eq i8 %132, 58
  br i1 %133, label %134, label %164

134:                                              ; preds = %130
  %135 = getelementptr inbounds i8, ptr %108, i64 2
  %136 = load i8, ptr %135, align 1, !tbaa !61
  %137 = icmp eq i8 %136, 58
  %138 = load i8, ptr %105, align 1, !tbaa !61
  %139 = icmp eq i8 %138, 0
  br i1 %137, label %140, label %145

140:                                              ; preds = %134
  br i1 %139, label %143, label %141

141:                                              ; preds = %140
  %142 = add nsw i32 %114, 1
  store i32 %142, ptr @optind, align 4, !tbaa !7
  br label %143

143:                                              ; preds = %141, %140
  %144 = phi ptr [ %105, %141 ], [ null, %140 ]
  store ptr %144, ptr @optarg, align 8
  store ptr null, ptr @nextchar, align 8, !tbaa !11
  br label %164

145:                                              ; preds = %134
  br i1 %139, label %148, label %146

146:                                              ; preds = %145
  store ptr %105, ptr @optarg, align 8, !tbaa !11
  %147 = add nsw i32 %114, 1
  store i32 %147, ptr @optind, align 4, !tbaa !7
  br label %163

148:                                              ; preds = %145
  %149 = icmp eq i32 %114, %0
  br i1 %149, label %150, label %158

150:                                              ; preds = %148
  %151 = load i32, ptr @opterr, align 4, !tbaa !7
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %157, label %153

153:                                              ; preds = %150
  %154 = load ptr, ptr @stderr, align 8, !tbaa !11
  %155 = load ptr, ptr %1, align 8, !tbaa !11
  %156 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %154, ptr noundef nonnull @.str.4.59, ptr noundef %155, i32 noundef %107) #35
  br label %157

157:                                              ; preds = %153, %150
  store ptr null, ptr @optarg, align 8, !tbaa !11
  br label %163

158:                                              ; preds = %148
  %159 = add nsw i32 %114, 1
  store i32 %159, ptr @optind, align 4, !tbaa !7
  %160 = sext i32 %114 to i64
  %161 = getelementptr inbounds ptr, ptr %1, i64 %160
  %162 = load ptr, ptr %161, align 8, !tbaa !11
  store ptr %162, ptr @optarg, align 8, !tbaa !11
  br label %163

163:                                              ; preds = %158, %157, %146
  store ptr null, ptr @nextchar, align 8, !tbaa !11
  br label %164

164:                                              ; preds = %163, %143, %130, %128, %126, %118, %100, %97, %86, %82
  %165 = phi i32 [ 0, %100 ], [ -1, %86 ], [ -1, %82 ], [ -1, %97 ], [ 63, %126 ], [ 63, %128 ], [ 63, %118 ], [ %107, %143 ], [ %107, %163 ], [ %107, %130 ]
  ret i32 %165
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn uwtable
define internal fastcc void @exchange(ptr nocapture noundef %0) unnamed_addr #19 {
  %2 = load i32, ptr @last_nonopt, align 4, !tbaa !7
  %3 = load i32, ptr @first_nonopt, align 4, !tbaa !7
  %4 = sub nsw i32 %2, %3
  %5 = shl i32 %4, 3
  %6 = sext i32 %5 to i64
  %7 = tail call noalias ptr @malloc(i64 noundef %6) #33
  %8 = sext i32 %3 to i64
  %9 = getelementptr inbounds ptr, ptr %0, i64 %8
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %7, ptr align 8 %9, i64 %6, i1 false)
  %10 = sext i32 %2 to i64
  %11 = getelementptr inbounds ptr, ptr %0, i64 %10
  %12 = load i32, ptr @optind, align 4, !tbaa !7
  %13 = sub nsw i32 %12, %2
  %14 = sext i32 %13 to i64
  %15 = shl nsw i64 %14, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %9, ptr align 8 %11, i64 %15, i1 false)
  %16 = load i32, ptr @optind, align 4, !tbaa !7
  %17 = sub i32 %3, %2
  %18 = add i32 %17, %16
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds ptr, ptr %0, i64 %19
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %20, ptr align 8 %7, i64 %6, i1 false)
  %21 = load i32, ptr @optind, align 4, !tbaa !7
  %22 = add i32 %17, %21
  store i32 %22, ptr @first_nonopt, align 4, !tbaa !7
  store i32 %21, ptr @last_nonopt, align 4, !tbaa !7
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #14

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #11

; Function Attrs: nounwind optsize uwtable
define internal void @lalr() #0 {
  %1 = load i32, ptr @ntokens, align 4, !tbaa !7
  %2 = add nsw i32 %1, 31
  %3 = sdiv i32 %2, 32
  store i32 %3, ptr @tokensetsize, align 4, !tbaa !7
  %4 = load i32, ptr @nstates, align 4, !tbaa !7
  %5 = shl i32 %4, 3
  %6 = tail call ptr (i32, ...) @mallocate(i32 noundef %5) #29
  store ptr %6, ptr @state_table, align 8, !tbaa !11
  %7 = load ptr, ptr @first_state, align 8, !tbaa !11
  %8 = icmp eq ptr %7, null
  br i1 %8, label %18, label %9

9:                                                ; preds = %9, %0
  %10 = phi ptr [ %16, %9 ], [ %7, %0 ]
  %11 = load ptr, ptr @state_table, align 8, !tbaa !11
  %12 = getelementptr inbounds %struct.core, ptr %10, i64 0, i32 2
  %13 = load i16, ptr %12, align 8, !tbaa !23
  %14 = sext i16 %13 to i64
  %15 = getelementptr inbounds ptr, ptr %11, i64 %14
  store ptr %10, ptr %15, align 8, !tbaa !11
  %16 = load ptr, ptr %10, align 8, !tbaa !11
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %9, !llvm.loop !111

18:                                               ; preds = %9, %0
  %19 = load i32, ptr @nstates, align 4, !tbaa !7
  %20 = shl i32 %19, 1
  %21 = tail call ptr (i32, ...) @mallocate(i32 noundef %20) #29
  store ptr %21, ptr @accessing_symbol, align 8, !tbaa !11
  %22 = load ptr, ptr @first_state, align 8, !tbaa !11
  %23 = icmp eq ptr %22, null
  br i1 %23, label %34, label %24

24:                                               ; preds = %24, %18
  %25 = phi ptr [ %32, %24 ], [ %22, %18 ]
  %26 = getelementptr inbounds %struct.core, ptr %25, i64 0, i32 3
  %27 = load i16, ptr %26, align 2, !tbaa !37
  %28 = getelementptr inbounds %struct.core, ptr %25, i64 0, i32 2
  %29 = load i16, ptr %28, align 8, !tbaa !23
  %30 = sext i16 %29 to i64
  %31 = getelementptr inbounds i16, ptr %21, i64 %30
  store i16 %27, ptr %31, align 2, !tbaa !13
  %32 = load ptr, ptr %25, align 8, !tbaa !11
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %24, !llvm.loop !112

34:                                               ; preds = %24, %18
  %35 = load i32, ptr @nstates, align 4, !tbaa !7
  %36 = shl i32 %35, 3
  %37 = tail call ptr (i32, ...) @mallocate(i32 noundef %36) #29
  store ptr %37, ptr @shift_table, align 8, !tbaa !11
  %38 = load ptr, ptr @first_shift, align 8, !tbaa !11
  %39 = icmp eq ptr %38, null
  br i1 %39, label %49, label %40

40:                                               ; preds = %40, %34
  %41 = phi ptr [ %47, %40 ], [ %38, %34 ]
  %42 = load ptr, ptr @shift_table, align 8, !tbaa !11
  %43 = getelementptr inbounds %struct.shifts, ptr %41, i64 0, i32 1
  %44 = load i16, ptr %43, align 8, !tbaa !33
  %45 = sext i16 %44 to i64
  %46 = getelementptr inbounds ptr, ptr %42, i64 %45
  store ptr %41, ptr %46, align 8, !tbaa !11
  %47 = load ptr, ptr %41, align 8, !tbaa !11
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %40, !llvm.loop !113

49:                                               ; preds = %40, %34
  %50 = load i32, ptr @nstates, align 4, !tbaa !7
  %51 = shl i32 %50, 3
  %52 = tail call ptr (i32, ...) @mallocate(i32 noundef %51) #29
  store ptr %52, ptr @reduction_table, align 8, !tbaa !11
  %53 = load ptr, ptr @first_reduction, align 8, !tbaa !11
  %54 = icmp eq ptr %53, null
  br i1 %54, label %64, label %55

55:                                               ; preds = %55, %49
  %56 = phi ptr [ %62, %55 ], [ %53, %49 ]
  %57 = load ptr, ptr @reduction_table, align 8, !tbaa !11
  %58 = getelementptr inbounds %struct.shifts, ptr %56, i64 0, i32 1
  %59 = load i16, ptr %58, align 8, !tbaa !24
  %60 = sext i16 %59 to i64
  %61 = getelementptr inbounds ptr, ptr %57, i64 %60
  store ptr %56, ptr %61, align 8, !tbaa !11
  %62 = load ptr, ptr %56, align 8, !tbaa !11
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %55, !llvm.loop !114

64:                                               ; preds = %55, %49
  %65 = load ptr, ptr @ritem, align 8, !tbaa !11
  %66 = load i16, ptr %65, align 2, !tbaa !13
  %67 = icmp eq i16 %66, 0
  br i1 %67, label %81, label %68

68:                                               ; preds = %68, %64
  %69 = phi i16 [ %79, %68 ], [ %66, %64 ]
  %70 = phi i32 [ %77, %68 ], [ 0, %64 ]
  %71 = phi i32 [ %76, %68 ], [ 0, %64 ]
  %72 = phi ptr [ %78, %68 ], [ %65, %64 ]
  %73 = icmp sgt i16 %69, 0
  %74 = add nsw i32 %71, 1
  %75 = tail call i32 @llvm.smax.i32(i32 %71, i32 %70)
  %76 = select i1 %73, i32 %74, i32 0
  %77 = select i1 %73, i32 %70, i32 %75
  %78 = getelementptr inbounds i16, ptr %72, i64 1
  %79 = load i16, ptr %78, align 2, !tbaa !13
  %80 = icmp eq i16 %79, 0
  br i1 %80, label %81, label %68, !llvm.loop !115

81:                                               ; preds = %68, %64
  %82 = phi i32 [ 0, %64 ], [ %77, %68 ]
  store i32 %82, ptr @maxrhs, align 4, !tbaa !7
  tail call void @initialize_LA() #30
  tail call void @set_goto_map() #30
  tail call void @initialize_F() #30
  tail call void @build_relations() #30
  tail call void @compute_FOLLOWS() #30
  tail call void @compute_lookaheads() #30
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nounwind optsize uwtable
define internal void @initialize_LA() #0 {
  %1 = load i32, ptr @nstates, align 4, !tbaa !7
  %2 = tail call ptr (i32, ...) @mallocate(i32 noundef %1) #29
  store ptr %2, ptr @consistent, align 8, !tbaa !11
  %3 = load i32, ptr @nstates, align 4, !tbaa !7
  %4 = shl i32 %3, 1
  %5 = add i32 %4, 2
  %6 = tail call ptr (i32, ...) @mallocate(i32 noundef %5) #29
  store ptr %6, ptr @lookaheads, align 8, !tbaa !11
  %7 = load i32, ptr @nstates, align 4, !tbaa !7
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %0
  %10 = sext i32 %7 to i64
  br label %79

11:                                               ; preds = %72, %0
  %12 = phi i64 [ %73, %72 ], [ 0, %0 ]
  %13 = phi i32 [ %47, %72 ], [ 0, %0 ]
  %14 = trunc i32 %13 to i16
  %15 = load ptr, ptr @lookaheads, align 8, !tbaa !11
  %16 = getelementptr inbounds i16, ptr %15, i64 %12
  store i16 %14, ptr %16, align 2, !tbaa !13
  %17 = load ptr, ptr @reduction_table, align 8, !tbaa !11
  %18 = getelementptr inbounds ptr, ptr %17, i64 %12
  %19 = load ptr, ptr %18, align 8, !tbaa !11
  %20 = load ptr, ptr @shift_table, align 8, !tbaa !11
  %21 = getelementptr inbounds ptr, ptr %20, i64 %12
  %22 = load ptr, ptr %21, align 8, !tbaa !11
  %23 = icmp eq ptr %19, null
  br i1 %23, label %43, label %24

24:                                               ; preds = %11
  %25 = getelementptr inbounds %struct.shifts, ptr %19, i64 0, i32 2
  %26 = load i16, ptr %25, align 2, !tbaa !26
  %27 = icmp sgt i16 %26, 1
  br i1 %27, label %40, label %28

28:                                               ; preds = %24
  %29 = icmp eq ptr %22, null
  br i1 %29, label %43, label %30

30:                                               ; preds = %28
  %31 = load ptr, ptr @accessing_symbol, align 8, !tbaa !11
  %32 = getelementptr inbounds %struct.shifts, ptr %22, i64 0, i32 3
  %33 = load i16, ptr %32, align 4, !tbaa !13
  %34 = sext i16 %33 to i64
  %35 = getelementptr inbounds i16, ptr %31, i64 %34
  %36 = load i16, ptr %35, align 2, !tbaa !13
  %37 = sext i16 %36 to i32
  %38 = load i32, ptr @ntokens, align 4, !tbaa !7
  %39 = icmp sgt i32 %38, %37
  br i1 %39, label %40, label %43

40:                                               ; preds = %30, %24
  %41 = sext i16 %26 to i32
  %42 = add nsw i32 %13, %41
  br label %46

43:                                               ; preds = %30, %28, %11
  %44 = load ptr, ptr @consistent, align 8, !tbaa !11
  %45 = getelementptr inbounds i8, ptr %44, i64 %12
  store i8 1, ptr %45, align 1, !tbaa !61
  br label %46

46:                                               ; preds = %43, %40
  %47 = phi i32 [ %42, %40 ], [ %13, %43 ]
  %48 = icmp eq ptr %22, null
  br i1 %48, label %72, label %49

49:                                               ; preds = %46
  %50 = getelementptr inbounds %struct.shifts, ptr %22, i64 0, i32 2
  %51 = load i16, ptr %50, align 2, !tbaa !35
  %52 = icmp sgt i16 %51, 0
  br i1 %52, label %53, label %72

53:                                               ; preds = %49
  %54 = zext i16 %51 to i64
  %55 = load ptr, ptr @accessing_symbol, align 8, !tbaa !11
  %56 = load i32, ptr @error_token_number, align 4, !tbaa !7
  br label %60

57:                                               ; preds = %60
  %58 = add nuw nsw i64 %61, 1
  %59 = icmp eq i64 %58, %54
  br i1 %59, label %72, label %60, !llvm.loop !116

60:                                               ; preds = %57, %53
  %61 = phi i64 [ 0, %53 ], [ %58, %57 ]
  %62 = getelementptr inbounds %struct.shifts, ptr %22, i64 0, i32 3, i64 %61
  %63 = load i16, ptr %62, align 2, !tbaa !13
  %64 = sext i16 %63 to i64
  %65 = getelementptr inbounds i16, ptr %55, i64 %64
  %66 = load i16, ptr %65, align 2, !tbaa !13
  %67 = sext i16 %66 to i32
  %68 = icmp eq i32 %56, %67
  br i1 %68, label %69, label %57

69:                                               ; preds = %60
  %70 = load ptr, ptr @consistent, align 8, !tbaa !11
  %71 = getelementptr inbounds i8, ptr %70, i64 %12
  store i8 0, ptr %71, align 1, !tbaa !61
  br label %72

72:                                               ; preds = %69, %57, %49, %46
  %73 = add nuw nsw i64 %12, 1
  %74 = load i32, ptr @nstates, align 4, !tbaa !7
  %75 = sext i32 %74 to i64
  %76 = icmp slt i64 %73, %75
  br i1 %76, label %11, label %77, !llvm.loop !117

77:                                               ; preds = %72
  %.lcssa1 = phi i64 [ %75, %72 ]
  %.lcssa = phi i32 [ %47, %72 ]
  %78 = load ptr, ptr @lookaheads, align 8, !tbaa !11
  br label %79

79:                                               ; preds = %77, %9
  %80 = phi i64 [ %10, %9 ], [ %.lcssa1, %77 ]
  %81 = phi ptr [ %6, %9 ], [ %78, %77 ]
  %82 = phi i32 [ 0, %9 ], [ %.lcssa, %77 ]
  %83 = trunc i32 %82 to i16
  %84 = getelementptr inbounds i16, ptr %81, i64 %80
  store i16 %83, ptr %84, align 2, !tbaa !13
  %85 = load i32, ptr @tokensetsize, align 4, !tbaa !7
  %86 = shl i32 %82, 2
  %87 = mul i32 %86, %85
  %88 = tail call ptr (i32, ...) @mallocate(i32 noundef %87) #29
  store ptr %88, ptr @LA, align 8, !tbaa !11
  %89 = shl i32 %82, 1
  %90 = tail call ptr (i32, ...) @mallocate(i32 noundef %89) #29
  store ptr %90, ptr @LAruleno, align 8, !tbaa !11
  %91 = shl i32 %82, 3
  %92 = tail call ptr (i32, ...) @mallocate(i32 noundef %91) #29
  store ptr %92, ptr @lookback, align 8, !tbaa !11
  %93 = load i32, ptr @nstates, align 4, !tbaa !7
  %94 = icmp sgt i32 %93, 0
  br i1 %94, label %95, label %128

95:                                               ; preds = %79
  %96 = load ptr, ptr @LAruleno, align 8, !tbaa !11
  %97 = load ptr, ptr @consistent, align 8, !tbaa !11
  %98 = load ptr, ptr @reduction_table, align 8
  %99 = zext i32 %93 to i64
  br label %100

100:                                              ; preds = %124, %95
  %101 = phi i64 [ 0, %95 ], [ %126, %124 ]
  %102 = phi ptr [ %96, %95 ], [ %125, %124 ]
  %103 = getelementptr inbounds i8, ptr %97, i64 %101
  %104 = load i8, ptr %103, align 1, !tbaa !61
  %105 = icmp eq i8 %104, 0
  br i1 %105, label %106, label %124

106:                                              ; preds = %100
  %107 = getelementptr inbounds ptr, ptr %98, i64 %101
  %108 = load ptr, ptr %107, align 8, !tbaa !11
  %109 = icmp eq ptr %108, null
  br i1 %109, label %124, label %110

110:                                              ; preds = %106
  %111 = getelementptr inbounds %struct.shifts, ptr %108, i64 0, i32 2
  %112 = load i16, ptr %111, align 2, !tbaa !26
  %113 = icmp sgt i16 %112, 0
  br i1 %113, label %114, label %124

114:                                              ; preds = %114, %110
  %115 = phi i64 [ %120, %114 ], [ 0, %110 ]
  %116 = phi ptr [ %119, %114 ], [ %102, %110 ]
  %117 = getelementptr inbounds %struct.shifts, ptr %108, i64 0, i32 3, i64 %115
  %118 = load i16, ptr %117, align 2, !tbaa !13
  %119 = getelementptr inbounds i16, ptr %116, i64 1
  store i16 %118, ptr %116, align 2, !tbaa !13
  %120 = add nuw nsw i64 %115, 1
  %121 = load i16, ptr %111, align 2, !tbaa !26
  %122 = sext i16 %121 to i64
  %123 = icmp slt i64 %120, %122
  br i1 %123, label %114, label %124, !llvm.loop !118

124:                                              ; preds = %114, %110, %106, %100
  %125 = phi ptr [ %102, %100 ], [ %102, %106 ], [ %102, %110 ], [ %119, %114 ]
  %126 = add nuw nsw i64 %101, 1
  %127 = icmp eq i64 %126, %99
  br i1 %127, label %128, label %100, !llvm.loop !119

128:                                              ; preds = %124, %79
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @set_goto_map() #0 {
  %1 = load i32, ptr @nvars, align 4, !tbaa !7
  %2 = shl i32 %1, 1
  %3 = add i32 %2, 2
  %4 = tail call ptr (i32, ...) @mallocate(i32 noundef %3) #29
  %5 = load i32, ptr @ntokens, align 4, !tbaa !7
  %6 = sext i32 %5 to i64
  %7 = sub nsw i64 0, %6
  %8 = getelementptr inbounds i16, ptr %4, i64 %7
  store ptr %8, ptr @goto_map, align 8, !tbaa !11
  %9 = load i32, ptr @nvars, align 4, !tbaa !7
  %10 = shl i32 %9, 1
  %11 = add i32 %10, 2
  %12 = tail call ptr (i32, ...) @mallocate(i32 noundef %11) #29
  %13 = load i32, ptr @ntokens, align 4, !tbaa !7
  %14 = sext i32 %13 to i64
  %15 = sub nsw i64 0, %14
  %16 = getelementptr inbounds i16, ptr %12, i64 %15
  store i32 0, ptr @ngotos, align 4, !tbaa !7
  %17 = load ptr, ptr @first_shift, align 8, !tbaa !11
  %18 = icmp eq ptr %17, null
  br i1 %18, label %66, label %19

19:                                               ; preds = %61, %0
  %20 = phi i32 [ %62, %61 ], [ %13, %0 ]
  %21 = phi i32 [ %63, %61 ], [ 0, %0 ]
  %22 = phi ptr [ %64, %61 ], [ %17, %0 ]
  %23 = getelementptr inbounds %struct.shifts, ptr %22, i64 0, i32 2
  %24 = load i16, ptr %23, align 2, !tbaa !35
  %25 = icmp sgt i16 %24, 0
  br i1 %25, label %26, label %61

26:                                               ; preds = %19
  %27 = zext i16 %24 to i64
  %28 = load ptr, ptr @accessing_symbol, align 8, !tbaa !11
  %29 = load i32, ptr @ntokens, align 4, !tbaa !7
  br label %30

30:                                               ; preds = %50, %26
  %31 = phi i32 [ %21, %26 ], [ %54, %50 ]
  %32 = phi i32 [ %29, %26 ], [ %52, %50 ]
  %33 = phi ptr [ %28, %26 ], [ %53, %50 ]
  %34 = phi i64 [ %27, %26 ], [ %35, %50 ]
  %35 = add nsw i64 %34, -1
  %36 = and i64 %35, 4294967295
  %37 = getelementptr inbounds %struct.shifts, ptr %22, i64 0, i32 3, i64 %36
  %38 = load i16, ptr %37, align 2, !tbaa !13
  %39 = sext i16 %38 to i64
  %40 = getelementptr inbounds i16, ptr %33, i64 %39
  %41 = load i16, ptr %40, align 2, !tbaa !13
  %42 = sext i16 %41 to i32
  %43 = icmp sgt i32 %32, %42
  br i1 %43, label %61, label %44

44:                                               ; preds = %30
  %45 = icmp eq i32 %31, 32767
  br i1 %45, label %46, label %50

46:                                               ; preds = %44
  tail call void @toomany(ptr noundef nonnull @.str.104) #29
  %47 = load ptr, ptr @accessing_symbol, align 8, !tbaa !11
  %48 = load i32, ptr @ntokens, align 4, !tbaa !7
  %49 = load i32, ptr @ngotos, align 4, !tbaa !7
  br label %50

50:                                               ; preds = %46, %44
  %51 = phi i32 [ %49, %46 ], [ %31, %44 ]
  %52 = phi i32 [ %48, %46 ], [ %32, %44 ]
  %53 = phi ptr [ %47, %46 ], [ %33, %44 ]
  %54 = add nsw i32 %51, 1
  store i32 %54, ptr @ngotos, align 4, !tbaa !7
  %55 = load ptr, ptr @goto_map, align 8, !tbaa !11
  %56 = sext i16 %41 to i64
  %57 = getelementptr inbounds i16, ptr %55, i64 %56
  %58 = load i16, ptr %57, align 2, !tbaa !13
  %59 = add i16 %58, 1
  store i16 %59, ptr %57, align 2, !tbaa !13
  %60 = icmp ugt i64 %34, 1
  br i1 %60, label %30, label %61, !llvm.loop !120

61:                                               ; preds = %50, %30, %19
  %62 = phi i32 [ %20, %19 ], [ %32, %30 ], [ %52, %50 ]
  %63 = phi i32 [ %21, %19 ], [ %31, %30 ], [ %54, %50 ]
  %64 = load ptr, ptr %22, align 8, !tbaa !11
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %19, !llvm.loop !121

66:                                               ; preds = %61, %0
  %67 = phi i32 [ 0, %0 ], [ %63, %61 ]
  %68 = phi i32 [ %13, %0 ], [ %62, %61 ]
  %69 = load i32, ptr @nsyms, align 4, !tbaa !7
  %70 = icmp slt i32 %68, %69
  %71 = load ptr, ptr @goto_map, align 8, !tbaa !11
  br i1 %70, label %72, label %76

72:                                               ; preds = %66
  %73 = sext i32 %68 to i64
  %74 = sext i32 %69 to i64
  br label %81

75:                                               ; preds = %81
  br i1 %70, label %78, label %76

76:                                               ; preds = %75, %66
  %77 = sext i32 %69 to i64
  br label %97

78:                                               ; preds = %75
  %79 = sext i32 %68 to i64
  %80 = sext i32 %69 to i64
  br label %90

81:                                               ; preds = %81, %72
  %82 = phi i64 [ %73, %72 ], [ %88, %81 ]
  %83 = phi i16 [ 0, %72 ], [ %87, %81 ]
  %84 = getelementptr inbounds i16, ptr %16, i64 %82
  store i16 %83, ptr %84, align 2, !tbaa !13
  %85 = getelementptr inbounds i16, ptr %71, i64 %82
  %86 = load i16, ptr %85, align 2, !tbaa !13
  %87 = add i16 %86, %83
  %88 = add nsw i64 %82, 1
  %89 = icmp eq i64 %88, %74
  br i1 %89, label %75, label %81, !llvm.loop !122

90:                                               ; preds = %90, %78
  %91 = phi i64 [ %79, %78 ], [ %95, %90 ]
  %92 = getelementptr inbounds i16, ptr %16, i64 %91
  %93 = load i16, ptr %92, align 2, !tbaa !13
  %94 = getelementptr inbounds i16, ptr %71, i64 %91
  store i16 %93, ptr %94, align 2, !tbaa !13
  %95 = add nsw i64 %91, 1
  %96 = icmp eq i64 %95, %80
  br i1 %96, label %97, label %90, !llvm.loop !123

97:                                               ; preds = %90, %76
  %98 = phi i64 [ %77, %76 ], [ %80, %90 ]
  %99 = trunc i32 %67 to i16
  %100 = getelementptr inbounds i16, ptr %71, i64 %98
  store i16 %99, ptr %100, align 2, !tbaa !13
  %101 = getelementptr inbounds i16, ptr %16, i64 %98
  store i16 %99, ptr %101, align 2, !tbaa !13
  %102 = shl i32 %67, 1
  %103 = tail call ptr (i32, ...) @mallocate(i32 noundef %102) #29
  store ptr %103, ptr @from_state, align 8, !tbaa !11
  %104 = load i32, ptr @ngotos, align 4, !tbaa !7
  %105 = shl i32 %104, 1
  %106 = tail call ptr (i32, ...) @mallocate(i32 noundef %105) #29
  store ptr %106, ptr @to_state, align 8, !tbaa !11
  %107 = load ptr, ptr @first_shift, align 8, !tbaa !11
  %108 = icmp eq ptr %107, null
  br i1 %108, label %147, label %109

109:                                              ; preds = %97
  %110 = load ptr, ptr @accessing_symbol, align 8
  %111 = load i32, ptr @ntokens, align 4
  br label %112

112:                                              ; preds = %142, %109
  %113 = phi ptr [ %107, %109 ], [ %143, %142 ]
  %114 = getelementptr inbounds %struct.shifts, ptr %113, i64 0, i32 1
  %115 = load i16, ptr %114, align 8, !tbaa !33
  %116 = getelementptr inbounds %struct.shifts, ptr %113, i64 0, i32 2
  %117 = load i16, ptr %116, align 2, !tbaa !35
  %118 = icmp sgt i16 %117, 0
  br i1 %118, label %119, label %142

119:                                              ; preds = %112
  %120 = zext i16 %117 to i64
  %121 = load ptr, ptr @from_state, align 8
  br label %122

122:                                              ; preds = %133, %119
  %123 = phi i64 [ %120, %119 ], [ %124, %133 ]
  %124 = add nsw i64 %123, -1
  %125 = and i64 %124, 4294967295
  %126 = getelementptr inbounds %struct.shifts, ptr %113, i64 0, i32 3, i64 %125
  %127 = load i16, ptr %126, align 2, !tbaa !13
  %128 = sext i16 %127 to i64
  %129 = getelementptr inbounds i16, ptr %110, i64 %128
  %130 = load i16, ptr %129, align 2, !tbaa !13
  %131 = sext i16 %130 to i32
  %132 = icmp sgt i32 %111, %131
  br i1 %132, label %142, label %133

133:                                              ; preds = %122
  %134 = sext i16 %130 to i64
  %135 = getelementptr inbounds i16, ptr %16, i64 %134
  %136 = load i16, ptr %135, align 2, !tbaa !13
  %137 = add i16 %136, 1
  store i16 %137, ptr %135, align 2, !tbaa !13
  %138 = sext i16 %136 to i64
  %139 = getelementptr inbounds i16, ptr %121, i64 %138
  store i16 %115, ptr %139, align 2, !tbaa !13
  %140 = getelementptr inbounds i16, ptr %106, i64 %138
  store i16 %127, ptr %140, align 2, !tbaa !13
  %141 = icmp ugt i64 %123, 1
  br i1 %141, label %122, label %142, !llvm.loop !124

142:                                              ; preds = %133, %122, %112
  %143 = load ptr, ptr %113, align 8, !tbaa !11
  %144 = icmp eq ptr %143, null
  br i1 %144, label %145, label %112, !llvm.loop !125

145:                                              ; preds = %142
  %146 = icmp eq ptr %12, null
  br i1 %146, label %151, label %147

147:                                              ; preds = %145, %97
  %148 = load i32, ptr @ntokens, align 4, !tbaa !7
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i16, ptr %16, i64 %149
  tail call void @free(ptr noundef %150) #29
  br label %151

151:                                              ; preds = %147, %145
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @initialize_F() #0 {
  %1 = load i32, ptr @ngotos, align 4, !tbaa !7
  %2 = load i32, ptr @tokensetsize, align 4, !tbaa !7
  %3 = shl i32 %1, 2
  %4 = mul i32 %3, %2
  %5 = tail call ptr (i32, ...) @mallocate(i32 noundef %4) #29
  store ptr %5, ptr @F, align 8, !tbaa !11
  %6 = load i32, ptr @ngotos, align 4, !tbaa !7
  %7 = shl i32 %6, 3
  %8 = tail call ptr (i32, ...) @mallocate(i32 noundef %7) #29
  %9 = load i32, ptr @ngotos, align 4, !tbaa !7
  %10 = shl i32 %9, 1
  %11 = add i32 %10, 2
  %12 = tail call ptr (i32, ...) @mallocate(i32 noundef %11) #29
  %13 = load i32, ptr @ngotos, align 4, !tbaa !7
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %124

15:                                               ; preds = %0
  %16 = load ptr, ptr @F, align 8, !tbaa !11
  br label %17

17:                                               ; preds = %116, %15
  %18 = phi i64 [ 0, %15 ], [ %120, %116 ]
  %19 = phi ptr [ %16, %15 ], [ %119, %116 ]
  %20 = load ptr, ptr @to_state, align 8, !tbaa !11
  %21 = getelementptr inbounds i16, ptr %20, i64 %18
  %22 = load i16, ptr %21, align 2, !tbaa !13
  %23 = sext i16 %22 to i32
  %24 = load ptr, ptr @shift_table, align 8, !tbaa !11
  %25 = sext i16 %22 to i64
  %26 = getelementptr inbounds ptr, ptr %24, i64 %25
  %27 = load ptr, ptr %26, align 8, !tbaa !11
  %28 = icmp eq ptr %27, null
  br i1 %28, label %116, label %29

29:                                               ; preds = %17
  %30 = getelementptr inbounds %struct.shifts, ptr %27, i64 0, i32 2
  %31 = load i16, ptr %30, align 2, !tbaa !35
  %32 = sext i16 %31 to i32
  %33 = icmp sgt i16 %31, 0
  br i1 %33, label %34, label %59

34:                                               ; preds = %29
  %35 = load ptr, ptr @accessing_symbol, align 8, !tbaa !11
  %36 = zext i32 %32 to i64
  br label %37

37:                                               ; preds = %47, %34
  %38 = phi i64 [ 0, %34 ], [ %55, %47 ]
  %39 = getelementptr inbounds %struct.shifts, ptr %27, i64 0, i32 3, i64 %38
  %40 = load i16, ptr %39, align 2, !tbaa !13
  %41 = sext i16 %40 to i64
  %42 = getelementptr inbounds i16, ptr %35, i64 %41
  %43 = load i16, ptr %42, align 2, !tbaa !13
  %44 = sext i16 %43 to i32
  %45 = load i32, ptr @ntokens, align 4, !tbaa !7
  %46 = icmp sgt i32 %45, %44
  br i1 %46, label %47, label %57

47:                                               ; preds = %37
  %48 = and i32 %44, 31
  %49 = shl nuw i32 1, %48
  %50 = ashr i32 %44, 5
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, ptr %19, i64 %51
  %53 = load i32, ptr %52, align 4, !tbaa !7
  %54 = or i32 %53, %49
  store i32 %54, ptr %52, align 4, !tbaa !7
  %55 = add nuw nsw i64 %38, 1
  %56 = icmp eq i64 %55, %36
  br i1 %56, label %116, label %37, !llvm.loop !126

57:                                               ; preds = %37
  %.lcssa = phi i64 [ %38, %37 ]
  %58 = trunc i64 %.lcssa to i32
  br label %59

59:                                               ; preds = %57, %29
  %60 = phi i32 [ 0, %29 ], [ %58, %57 ]
  %61 = icmp slt i32 %60, %32
  br i1 %61, label %62, label %116

62:                                               ; preds = %59
  %63 = zext i32 %60 to i64
  %64 = load ptr, ptr @accessing_symbol, align 8, !tbaa !11
  %65 = load ptr, ptr @nullable, align 8, !tbaa !11
  br label %66

66:                                               ; preds = %89, %62
  %67 = phi ptr [ %65, %62 ], [ %90, %89 ]
  %68 = phi ptr [ %64, %62 ], [ %91, %89 ]
  %69 = phi i64 [ %63, %62 ], [ %93, %89 ]
  %70 = phi i32 [ 0, %62 ], [ %92, %89 ]
  %71 = getelementptr inbounds %struct.shifts, ptr %27, i64 0, i32 3, i64 %69
  %72 = load i16, ptr %71, align 2, !tbaa !13
  %73 = sext i16 %72 to i64
  %74 = getelementptr inbounds i16, ptr %68, i64 %73
  %75 = load i16, ptr %74, align 2, !tbaa !13
  %76 = sext i16 %75 to i64
  %77 = getelementptr inbounds i8, ptr %67, i64 %76
  %78 = load i8, ptr %77, align 1, !tbaa !61
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %89, label %80

80:                                               ; preds = %66
  %81 = sext i16 %75 to i32
  %82 = tail call i32 @map_goto(i32 noundef %23, i32 noundef %81) #30
  %83 = trunc i32 %82 to i16
  %84 = add nsw i32 %70, 1
  %85 = sext i32 %70 to i64
  %86 = getelementptr inbounds i16, ptr %12, i64 %85
  store i16 %83, ptr %86, align 2, !tbaa !13
  %87 = load ptr, ptr @accessing_symbol, align 8, !tbaa !11
  %88 = load ptr, ptr @nullable, align 8, !tbaa !11
  br label %89

89:                                               ; preds = %80, %66
  %90 = phi ptr [ %88, %80 ], [ %67, %66 ]
  %91 = phi ptr [ %87, %80 ], [ %68, %66 ]
  %92 = phi i32 [ %84, %80 ], [ %70, %66 ]
  %93 = add nuw nsw i64 %69, 1
  %94 = trunc i64 %93 to i32
  %95 = icmp slt i32 %94, %32
  br i1 %95, label %66, label %96, !llvm.loop !127

96:                                               ; preds = %89
  %.lcssa1 = phi i32 [ %92, %89 ]
  %97 = icmp eq i32 %.lcssa1, 0
  br i1 %97, label %116, label %98

98:                                               ; preds = %96
  %99 = shl i32 %.lcssa1, 1
  %100 = add i32 %99, 2
  %101 = tail call ptr (i32, ...) @mallocate(i32 noundef %100) #29
  %102 = getelementptr inbounds ptr, ptr %8, i64 %18
  store ptr %101, ptr %102, align 8, !tbaa !11
  %103 = icmp sgt i32 %.lcssa1, 0
  br i1 %103, label %104, label %113

104:                                              ; preds = %98
  %105 = zext i32 %.lcssa1 to i64
  br label %106

106:                                              ; preds = %106, %104
  %107 = phi i64 [ 0, %104 ], [ %111, %106 ]
  %108 = getelementptr inbounds i16, ptr %12, i64 %107
  %109 = load i16, ptr %108, align 2, !tbaa !13
  %110 = getelementptr inbounds i16, ptr %101, i64 %107
  store i16 %109, ptr %110, align 2, !tbaa !13
  %111 = add nuw nsw i64 %107, 1
  %112 = icmp eq i64 %111, %105
  br i1 %112, label %113, label %106, !llvm.loop !128

113:                                              ; preds = %106, %98
  %114 = sext i32 %.lcssa1 to i64
  %115 = getelementptr inbounds i16, ptr %101, i64 %114
  store i16 -1, ptr %115, align 2, !tbaa !13
  br label %116

116:                                              ; preds = %113, %96, %59, %47, %17
  %117 = load i32, ptr @tokensetsize, align 4, !tbaa !7
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, ptr %19, i64 %118
  %120 = add nuw nsw i64 %18, 1
  %121 = load i32, ptr @ngotos, align 4, !tbaa !7
  %122 = sext i32 %121 to i64
  %123 = icmp slt i64 %120, %122
  br i1 %123, label %17, label %124, !llvm.loop !129

124:                                              ; preds = %116, %0
  tail call void @digraph(ptr noundef %8) #30
  %125 = load i32, ptr @ngotos, align 4, !tbaa !7
  %126 = icmp sgt i32 %125, 0
  br i1 %126, label %127, label %138

127:                                              ; preds = %124
  %128 = zext i32 %125 to i64
  br label %129

129:                                              ; preds = %135, %127
  %130 = phi i64 [ 0, %127 ], [ %136, %135 ]
  %131 = getelementptr inbounds ptr, ptr %8, i64 %130
  %132 = load ptr, ptr %131, align 8, !tbaa !11
  %133 = icmp eq ptr %132, null
  br i1 %133, label %135, label %134

134:                                              ; preds = %129
  tail call void @free(ptr noundef nonnull %132) #29
  br label %135

135:                                              ; preds = %134, %129
  %136 = add nuw nsw i64 %130, 1
  %137 = icmp eq i64 %136, %128
  br i1 %137, label %140, label %129, !llvm.loop !130

138:                                              ; preds = %124
  %139 = icmp eq ptr %8, null
  br i1 %139, label %141, label %140

140:                                              ; preds = %138, %135
  tail call void @free(ptr noundef nonnull %8) #29
  br label %141

141:                                              ; preds = %140, %138
  %142 = icmp eq ptr %12, null
  br i1 %142, label %144, label %143

143:                                              ; preds = %141
  tail call void @free(ptr noundef nonnull %12) #29
  br label %144

144:                                              ; preds = %143, %141
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @build_relations() #0 {
  %1 = load i32, ptr @ngotos, align 4, !tbaa !7
  %2 = shl i32 %1, 3
  %3 = tail call ptr (i32, ...) @mallocate(i32 noundef %2) #29
  store ptr %3, ptr @includes, align 8, !tbaa !11
  %4 = load i32, ptr @ngotos, align 4, !tbaa !7
  %5 = shl i32 %4, 1
  %6 = add i32 %5, 2
  %7 = tail call ptr (i32, ...) @mallocate(i32 noundef %6) #29
  %8 = load i32, ptr @maxrhs, align 4, !tbaa !7
  %9 = shl i32 %8, 1
  %10 = add i32 %9, 2
  %11 = tail call ptr (i32, ...) @mallocate(i32 noundef %10) #29
  %12 = load i32, ptr @ngotos, align 4, !tbaa !7
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %165

14:                                               ; preds = %160, %0
  %15 = phi i64 [ %161, %160 ], [ 0, %0 ]
  %16 = load ptr, ptr @from_state, align 8, !tbaa !11
  %17 = getelementptr inbounds i16, ptr %16, i64 %15
  %18 = load i16, ptr %17, align 2, !tbaa !13
  %19 = sext i16 %18 to i32
  %20 = load ptr, ptr @accessing_symbol, align 8, !tbaa !11
  %21 = load ptr, ptr @to_state, align 8, !tbaa !11
  %22 = getelementptr inbounds i16, ptr %21, i64 %15
  %23 = load i16, ptr %22, align 2, !tbaa !13
  %24 = sext i16 %23 to i64
  %25 = getelementptr inbounds i16, ptr %20, i64 %24
  %26 = load i16, ptr %25, align 2, !tbaa !13
  %27 = load ptr, ptr @derives, align 8, !tbaa !11
  %28 = sext i16 %26 to i64
  %29 = getelementptr inbounds ptr, ptr %27, i64 %28
  %30 = load ptr, ptr %29, align 8, !tbaa !11
  %31 = load i16, ptr %30, align 2, !tbaa !13
  %32 = icmp sgt i16 %31, 0
  br i1 %32, label %33, label %160

33:                                               ; preds = %14
  %34 = load ptr, ptr @ritem, align 8, !tbaa !11
  %35 = trunc i64 %15 to i32
  br label %36

36:                                               ; preds = %133, %33
  %37 = phi ptr [ %135, %133 ], [ %34, %33 ]
  %38 = phi ptr [ %136, %133 ], [ %30, %33 ]
  %39 = phi i32 [ %134, %133 ], [ 0, %33 ]
  store i16 %18, ptr %11, align 2, !tbaa !13
  %40 = load ptr, ptr @rrhs, align 8, !tbaa !11
  %41 = load i16, ptr %38, align 2, !tbaa !13
  %42 = sext i16 %41 to i64
  %43 = getelementptr inbounds i16, ptr %40, i64 %42
  %44 = load i16, ptr %43, align 2, !tbaa !13
  %45 = sext i16 %44 to i64
  %46 = getelementptr inbounds i16, ptr %37, i64 %45
  %47 = load i16, ptr %46, align 2, !tbaa !13
  %48 = icmp sgt i16 %47, 0
  br i1 %48, label %49, label %88

49:                                               ; preds = %36
  %50 = load ptr, ptr @shift_table, align 8, !tbaa !11
  %51 = load ptr, ptr @accessing_symbol, align 8
  br label %52

52:                                               ; preds = %78, %49
  %53 = phi i64 [ 1, %49 ], [ %81, %78 ]
  %54 = phi i16 [ %47, %49 ], [ %84, %78 ]
  %55 = phi ptr [ %46, %49 ], [ %83, %78 ]
  %56 = phi i32 [ %19, %49 ], [ %79, %78 ]
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds ptr, ptr %50, i64 %57
  %59 = load ptr, ptr %58, align 8, !tbaa !11
  %60 = getelementptr inbounds %struct.shifts, ptr %59, i64 0, i32 2
  %61 = load i16, ptr %60, align 2, !tbaa !35
  %62 = icmp sgt i16 %61, 0
  br i1 %62, label %63, label %78

63:                                               ; preds = %52
  %64 = zext i16 %61 to i64
  br label %65

65:                                               ; preds = %65, %63
  %66 = phi i64 [ 0, %63 ], [ %73, %65 ]
  %67 = getelementptr inbounds %struct.shifts, ptr %59, i64 0, i32 3, i64 %66
  %68 = load i16, ptr %67, align 2, !tbaa !13
  %69 = sext i16 %68 to i64
  %70 = getelementptr inbounds i16, ptr %51, i64 %69
  %71 = load i16, ptr %70, align 2, !tbaa !13
  %72 = icmp ne i16 %71, %54
  %73 = add nuw nsw i64 %66, 1
  %74 = icmp ult i64 %73, %64
  %75 = select i1 %72, i1 %74, i1 false
  br i1 %75, label %65, label %76, !llvm.loop !131

76:                                               ; preds = %65
  %.lcssa = phi i16 [ %68, %65 ]
  %77 = sext i16 %.lcssa to i32
  br label %78

78:                                               ; preds = %76, %52
  %79 = phi i32 [ %56, %52 ], [ %77, %76 ]
  %80 = trunc i32 %79 to i16
  %81 = add nuw i64 %53, 1
  %82 = getelementptr inbounds i16, ptr %11, i64 %53
  store i16 %80, ptr %82, align 2, !tbaa !13
  %83 = getelementptr inbounds i16, ptr %55, i64 1
  %84 = load i16, ptr %83, align 2, !tbaa !13
  %85 = icmp sgt i16 %84, 0
  br i1 %85, label %52, label %86, !llvm.loop !132

86:                                               ; preds = %78
  %.lcssa3 = phi i32 [ %79, %78 ]
  %.lcssa2 = phi ptr [ %83, %78 ]
  %.lcssa1 = phi i64 [ %53, %78 ]
  %87 = trunc i64 %.lcssa1 to i32
  br label %88

88:                                               ; preds = %86, %36
  %89 = phi i32 [ %19, %36 ], [ %.lcssa3, %86 ]
  %90 = phi i32 [ 0, %36 ], [ %87, %86 ]
  %91 = phi ptr [ %46, %36 ], [ %.lcssa2, %86 ]
  %92 = load ptr, ptr @consistent, align 8, !tbaa !11
  %93 = sext i32 %89 to i64
  %94 = getelementptr inbounds i8, ptr %92, i64 %93
  %95 = load i8, ptr %94, align 1, !tbaa !61
  %96 = icmp eq i8 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %88
  %98 = load i16, ptr %38, align 2, !tbaa !13
  %99 = sext i16 %98 to i32
  tail call void @add_lookback_edge(i32 noundef %89, i32 noundef %99, i32 noundef %35) #30
  %100 = load ptr, ptr @ritem, align 8, !tbaa !11
  br label %101

101:                                              ; preds = %97, %88
  %102 = phi ptr [ %37, %88 ], [ %100, %97 ]
  br label %103

103:                                              ; preds = %115, %101
  %104 = phi ptr [ %132, %115 ], [ %102, %101 ]
  %105 = phi ptr [ %108, %115 ], [ %91, %101 ]
  %106 = phi i32 [ %116, %115 ], [ %90, %101 ]
  %107 = phi i32 [ %123, %115 ], [ %39, %101 ]
  %108 = getelementptr inbounds i16, ptr %105, i64 -1
  %109 = icmp ult ptr %108, %104
  br i1 %109, label %133, label %110

110:                                              ; preds = %103
  %111 = load i16, ptr %108, align 2, !tbaa !13
  %112 = sext i16 %111 to i32
  %113 = load i32, ptr @ntokens, align 4, !tbaa !7
  %114 = icmp sgt i32 %113, %112
  br i1 %114, label %133, label %115

115:                                              ; preds = %110
  %116 = add nsw i32 %106, -1
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i16, ptr %11, i64 %117
  %119 = load i16, ptr %118, align 2, !tbaa !13
  %120 = sext i16 %119 to i32
  %121 = tail call i32 @map_goto(i32 noundef %120, i32 noundef %112) #30
  %122 = trunc i32 %121 to i16
  %123 = add nsw i32 %107, 1
  %124 = sext i32 %107 to i64
  %125 = getelementptr inbounds i16, ptr %7, i64 %124
  store i16 %122, ptr %125, align 2, !tbaa !13
  %126 = load ptr, ptr @nullable, align 8, !tbaa !11
  %127 = load i16, ptr %108, align 2, !tbaa !13
  %128 = sext i16 %127 to i64
  %129 = getelementptr inbounds i8, ptr %126, i64 %128
  %130 = load i8, ptr %129, align 1, !tbaa !61
  %131 = icmp eq i8 %130, 0
  %132 = load ptr, ptr @ritem, align 8, !tbaa !11
  br i1 %131, label %133, label %103, !llvm.loop !133

133:                                              ; preds = %115, %110, %103
  %134 = phi i32 [ %123, %115 ], [ %107, %110 ], [ %107, %103 ]
  %135 = phi ptr [ %132, %115 ], [ %104, %110 ], [ %104, %103 ]
  %136 = getelementptr inbounds i16, ptr %38, i64 1
  %137 = load i16, ptr %136, align 2, !tbaa !13
  %138 = icmp sgt i16 %137, 0
  br i1 %138, label %36, label %139, !llvm.loop !134

139:                                              ; preds = %133
  %.lcssa4 = phi i32 [ %134, %133 ]
  %140 = icmp eq i32 %.lcssa4, 0
  br i1 %140, label %160, label %141

141:                                              ; preds = %139
  %142 = shl i32 %.lcssa4, 1
  %143 = add i32 %142, 2
  %144 = tail call ptr (i32, ...) @mallocate(i32 noundef %143) #29
  %145 = load ptr, ptr @includes, align 8, !tbaa !11
  %146 = getelementptr inbounds ptr, ptr %145, i64 %15
  store ptr %144, ptr %146, align 8, !tbaa !11
  %147 = icmp sgt i32 %.lcssa4, 0
  br i1 %147, label %148, label %157

148:                                              ; preds = %141
  %149 = zext i32 %.lcssa4 to i64
  br label %150

150:                                              ; preds = %150, %148
  %151 = phi i64 [ 0, %148 ], [ %155, %150 ]
  %152 = getelementptr inbounds i16, ptr %7, i64 %151
  %153 = load i16, ptr %152, align 2, !tbaa !13
  %154 = getelementptr inbounds i16, ptr %144, i64 %151
  store i16 %153, ptr %154, align 2, !tbaa !13
  %155 = add nuw nsw i64 %151, 1
  %156 = icmp eq i64 %155, %149
  br i1 %156, label %157, label %150, !llvm.loop !135

157:                                              ; preds = %150, %141
  %158 = sext i32 %.lcssa4 to i64
  %159 = getelementptr inbounds i16, ptr %144, i64 %158
  store i16 -1, ptr %159, align 2, !tbaa !13
  br label %160

160:                                              ; preds = %157, %139, %14
  %161 = add nuw nsw i64 %15, 1
  %162 = load i32, ptr @ngotos, align 4, !tbaa !7
  %163 = sext i32 %162 to i64
  %164 = icmp slt i64 %161, %163
  br i1 %164, label %14, label %165, !llvm.loop !136

165:                                              ; preds = %160, %0
  %166 = phi i32 [ %12, %0 ], [ %162, %160 ]
  %167 = load ptr, ptr @includes, align 8, !tbaa !11
  %168 = tail call ptr @transpose(ptr noundef %167, i32 noundef %166) #30
  %169 = load i32, ptr @ngotos, align 4, !tbaa !7
  %170 = icmp sgt i32 %169, 0
  %171 = load ptr, ptr @includes, align 8, !tbaa !11
  br i1 %170, label %172, label %183

172:                                              ; preds = %165
  %173 = zext i32 %169 to i64
  br label %174

174:                                              ; preds = %180, %172
  %175 = phi i64 [ 0, %172 ], [ %181, %180 ]
  %176 = getelementptr inbounds ptr, ptr %171, i64 %175
  %177 = load ptr, ptr %176, align 8, !tbaa !11
  %178 = icmp eq ptr %177, null
  br i1 %178, label %180, label %179

179:                                              ; preds = %174
  tail call void @free(ptr noundef nonnull %177) #29
  br label %180

180:                                              ; preds = %179, %174
  %181 = add nuw nsw i64 %175, 1
  %182 = icmp eq i64 %181, %173
  br i1 %182, label %185, label %174, !llvm.loop !137

183:                                              ; preds = %165
  %184 = icmp eq ptr %171, null
  br i1 %184, label %186, label %185

185:                                              ; preds = %183, %180
  tail call void @free(ptr noundef nonnull %171) #29
  br label %186

186:                                              ; preds = %185, %183
  store ptr %168, ptr @includes, align 8, !tbaa !11
  %187 = icmp eq ptr %7, null
  br i1 %187, label %189, label %188

188:                                              ; preds = %186
  tail call void @free(ptr noundef nonnull %7) #29
  br label %189

189:                                              ; preds = %188, %186
  %190 = icmp eq ptr %11, null
  br i1 %190, label %192, label %191

191:                                              ; preds = %189
  tail call void @free(ptr noundef nonnull %11) #29
  br label %192

192:                                              ; preds = %191, %189
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @compute_FOLLOWS() #0 {
  %1 = load ptr, ptr @includes, align 8, !tbaa !11
  tail call void @digraph(ptr noundef %1) #30
  %2 = load i32, ptr @ngotos, align 4, !tbaa !7
  %3 = icmp sgt i32 %2, 0
  %4 = load ptr, ptr @includes, align 8, !tbaa !11
  br i1 %3, label %5, label %16

5:                                                ; preds = %0
  %6 = zext i32 %2 to i64
  br label %7

7:                                                ; preds = %13, %5
  %8 = phi i64 [ 0, %5 ], [ %14, %13 ]
  %9 = getelementptr inbounds ptr, ptr %4, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !11
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %7
  tail call void @free(ptr noundef nonnull %10) #29
  br label %13

13:                                               ; preds = %12, %7
  %14 = add nuw nsw i64 %8, 1
  %15 = icmp eq i64 %14, %6
  br i1 %15, label %18, label %7, !llvm.loop !138

16:                                               ; preds = %0
  %17 = icmp eq ptr %4, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %16, %13
  tail call void @free(ptr noundef nonnull %4) #29
  br label %19

19:                                               ; preds = %18, %16
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @compute_lookaheads() #0 {
  %1 = load ptr, ptr @lookaheads, align 8, !tbaa !11
  %2 = load i32, ptr @nstates, align 4, !tbaa !7
  %3 = sext i32 %2 to i64
  %4 = getelementptr inbounds i16, ptr %1, i64 %3
  %5 = load i16, ptr %4, align 2, !tbaa !13
  %6 = sext i16 %5 to i32
  %7 = icmp sgt i16 %5, 0
  br i1 %7, label %8, label %65

8:                                                ; preds = %0
  %9 = load ptr, ptr @LA, align 8, !tbaa !11
  %10 = load ptr, ptr @lookback, align 8, !tbaa !11
  %11 = load ptr, ptr @F, align 8
  %12 = zext i32 %6 to i64
  br label %16

13:                                               ; preds = %49
  br i1 %7, label %14, label %65

14:                                               ; preds = %13
  %15 = zext i32 %6 to i64
  br label %52

16:                                               ; preds = %49, %8
  %17 = phi i64 [ 0, %8 ], [ %50, %49 ]
  %18 = phi ptr [ %9, %8 ], [ %21, %49 ]
  %19 = load i32, ptr @tokensetsize, align 4, !tbaa !7
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, ptr %18, i64 %20
  %22 = getelementptr inbounds ptr, ptr %10, i64 %17
  %23 = load ptr, ptr %22, align 8, !tbaa !11
  %24 = icmp eq ptr %23, null
  br i1 %24, label %49, label %25

25:                                               ; preds = %16
  %26 = icmp sgt i32 %19, 0
  br label %30

27:                                               ; preds = %40, %30
  %28 = load ptr, ptr %31, align 8, !tbaa !11
  %29 = icmp eq ptr %28, null
  br i1 %29, label %49, label %30, !llvm.loop !139

30:                                               ; preds = %27, %25
  %31 = phi ptr [ %23, %25 ], [ %28, %27 ]
  br i1 %26, label %32, label %27

32:                                               ; preds = %30
  %33 = load i32, ptr @tokensetsize, align 4, !tbaa !7
  %34 = getelementptr inbounds %struct.shorts, ptr %31, i64 0, i32 1
  %35 = load i16, ptr %34, align 8, !tbaa !99
  %36 = sext i16 %35 to i32
  %37 = mul nsw i32 %33, %36
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, ptr %11, i64 %38
  br label %40

40:                                               ; preds = %40, %32
  %41 = phi ptr [ %45, %40 ], [ %18, %32 ]
  %42 = phi ptr [ %43, %40 ], [ %39, %32 ]
  %43 = getelementptr inbounds i32, ptr %42, i64 1
  %44 = load i32, ptr %42, align 4, !tbaa !7
  %45 = getelementptr inbounds i32, ptr %41, i64 1
  %46 = load i32, ptr %41, align 4, !tbaa !7
  %47 = or i32 %46, %44
  store i32 %47, ptr %41, align 4, !tbaa !7
  %48 = icmp ult ptr %45, %21
  br i1 %48, label %40, label %27, !llvm.loop !140

49:                                               ; preds = %27, %16
  %50 = add nuw nsw i64 %17, 1
  %51 = icmp eq i64 %50, %12
  br i1 %51, label %13, label %16, !llvm.loop !141

52:                                               ; preds = %62, %14
  %53 = phi i64 [ 0, %14 ], [ %63, %62 ]
  %54 = load ptr, ptr @lookback, align 8, !tbaa !11
  %55 = getelementptr inbounds ptr, ptr %54, i64 %53
  %56 = load ptr, ptr %55, align 8, !tbaa !11
  %57 = icmp eq ptr %56, null
  br i1 %57, label %62, label %58

58:                                               ; preds = %58, %52
  %59 = phi ptr [ %60, %58 ], [ %56, %52 ]
  %60 = load ptr, ptr %59, align 8, !tbaa !97
  tail call void @free(ptr noundef nonnull %59) #29
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %58, !llvm.loop !142

62:                                               ; preds = %58, %52
  %63 = add nuw nsw i64 %53, 1
  %64 = icmp eq i64 %63, %15
  br i1 %64, label %65, label %52, !llvm.loop !143

65:                                               ; preds = %62, %13, %0
  %66 = load ptr, ptr @lookback, align 8, !tbaa !11
  %67 = icmp eq ptr %66, null
  br i1 %67, label %69, label %68

68:                                               ; preds = %65
  tail call void @free(ptr noundef nonnull %66) #29
  br label %69

69:                                               ; preds = %68, %65
  %70 = load ptr, ptr @F, align 8, !tbaa !11
  %71 = icmp eq ptr %70, null
  br i1 %71, label %73, label %72

72:                                               ; preds = %69
  tail call void @free(ptr noundef nonnull %70) #29
  br label %73

73:                                               ; preds = %72, %69
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @digraph(ptr noundef %0) #0 {
  %2 = load i32, ptr @ngotos, align 4, !tbaa !7
  %3 = add nsw i32 %2, 2
  store i32 %3, ptr @infinity, align 4, !tbaa !7
  %4 = shl i32 %2, 1
  %5 = add i32 %4, 2
  %6 = tail call ptr (i32, ...) @mallocate(i32 noundef %5) #29
  store ptr %6, ptr @INDEX, align 8, !tbaa !11
  %7 = load i32, ptr @ngotos, align 4, !tbaa !7
  %8 = shl i32 %7, 1
  %9 = add i32 %8, 2
  %10 = tail call ptr (i32, ...) @mallocate(i32 noundef %9) #29
  store ptr %10, ptr @VERTICES, align 8, !tbaa !11
  store i32 0, ptr @top, align 4, !tbaa !7
  store ptr %0, ptr @R, align 8, !tbaa !11
  %11 = load i32, ptr @ngotos, align 4, !tbaa !7
  %12 = icmp sgt i32 %11, 0
  %13 = load ptr, ptr @INDEX, align 8, !tbaa !11
  br i1 %12, label %14, label %39

14:                                               ; preds = %1
  %15 = zext i32 %11 to i64
  %16 = shl nuw nsw i64 %15, 1
  tail call void @llvm.memset.p0.i64(ptr align 2 %13, i8 0, i64 %16, i1 false), !tbaa !13
  br label %17

17:                                               ; preds = %33, %14
  %18 = phi i32 [ %11, %14 ], [ %34, %33 ]
  %19 = phi ptr [ %13, %14 ], [ %35, %33 ]
  %20 = phi i64 [ 0, %14 ], [ %36, %33 ]
  %21 = getelementptr inbounds i16, ptr %19, i64 %20
  %22 = load i16, ptr %21, align 2, !tbaa !13
  %23 = icmp eq i16 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %17
  %25 = load ptr, ptr @R, align 8, !tbaa !11
  %26 = getelementptr inbounds ptr, ptr %25, i64 %20
  %27 = load ptr, ptr %26, align 8, !tbaa !11
  %28 = icmp eq ptr %27, null
  br i1 %28, label %33, label %29

29:                                               ; preds = %24
  %30 = trunc i64 %20 to i32
  tail call void @traverse(i32 noundef %30) #30
  %31 = load ptr, ptr @INDEX, align 8, !tbaa !11
  %32 = load i32, ptr @ngotos, align 4, !tbaa !7
  br label %33

33:                                               ; preds = %29, %24, %17
  %34 = phi i32 [ %18, %17 ], [ %18, %24 ], [ %32, %29 ]
  %35 = phi ptr [ %19, %17 ], [ %19, %24 ], [ %31, %29 ]
  %36 = add nuw nsw i64 %20, 1
  %37 = sext i32 %34 to i64
  %38 = icmp slt i64 %36, %37
  br i1 %38, label %17, label %39, !llvm.loop !144

39:                                               ; preds = %33, %1
  %40 = phi ptr [ %13, %1 ], [ %35, %33 ]
  %41 = icmp eq ptr %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %39
  tail call void @free(ptr noundef nonnull %40) #29
  br label %43

43:                                               ; preds = %42, %39
  %44 = load ptr, ptr @VERTICES, align 8, !tbaa !11
  %45 = icmp eq ptr %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %43
  tail call void @free(ptr noundef nonnull %44) #29
  br label %47

47:                                               ; preds = %46, %43
  ret void
}

; Function Attrs: nofree nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal void @traverse(i32 noundef %0) #3 {
  %2 = trunc i32 %0 to i16
  %3 = load ptr, ptr @VERTICES, align 8, !tbaa !11
  %4 = load i32, ptr @top, align 4, !tbaa !7
  %5 = add nsw i32 %4, 1
  store i32 %5, ptr @top, align 4, !tbaa !7
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds i16, ptr %3, i64 %6
  store i16 %2, ptr %7, align 2, !tbaa !13
  %8 = trunc i32 %5 to i16
  %9 = load ptr, ptr @INDEX, align 8, !tbaa !11
  %10 = sext i32 %0 to i64
  %11 = getelementptr inbounds i16, ptr %9, i64 %10
  store i16 %8, ptr %11, align 2, !tbaa !13
  %12 = load ptr, ptr @F, align 8, !tbaa !11
  %13 = load i32, ptr @tokensetsize, align 4, !tbaa !7
  %14 = mul nsw i32 %13, %0
  %15 = sext i32 %14 to i64
  %16 = getelementptr i32, ptr %12, i64 %15
  %17 = sext i32 %13 to i64
  %18 = getelementptr inbounds i32, ptr %16, i64 %17
  %19 = load ptr, ptr @R, align 8, !tbaa !11
  %20 = getelementptr inbounds ptr, ptr %19, i64 %10
  %21 = load ptr, ptr %20, align 8, !tbaa !11
  %22 = icmp eq ptr %21, null
  br i1 %22, label %69, label %23

23:                                               ; preds = %1
  %24 = load i16, ptr %21, align 2, !tbaa !13
  %25 = icmp sgt i16 %24, -1
  br i1 %25, label %26, label %69

26:                                               ; preds = %23
  %27 = icmp sgt i32 %13, 0
  br label %31

28:                                               ; preds = %60, %52
  %29 = load i16, ptr %35, align 2, !tbaa !13
  %30 = icmp sgt i16 %29, -1
  br i1 %30, label %31, label %69, !llvm.loop !145

31:                                               ; preds = %28, %26
  %32 = phi ptr [ %9, %26 ], [ %47, %28 ]
  %33 = phi i16 [ %24, %26 ], [ %29, %28 ]
  %34 = phi ptr [ %21, %26 ], [ %35, %28 ]
  %35 = getelementptr inbounds i16, ptr %34, i64 1
  %36 = zext i16 %33 to i32
  %37 = zext i16 %33 to i64
  %38 = getelementptr inbounds i16, ptr %32, i64 %37
  %39 = load i16, ptr %38, align 2, !tbaa !13
  %40 = icmp eq i16 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %31
  tail call void @traverse(i32 noundef %36) #30
  %42 = load ptr, ptr @INDEX, align 8, !tbaa !11
  %43 = getelementptr inbounds i16, ptr %42, i64 %37
  %44 = load i16, ptr %43, align 2, !tbaa !13
  br label %45

45:                                               ; preds = %41, %31
  %46 = phi i16 [ %44, %41 ], [ %39, %31 ]
  %47 = phi ptr [ %42, %41 ], [ %32, %31 ]
  %48 = getelementptr inbounds i16, ptr %47, i64 %10
  %49 = load i16, ptr %48, align 2, !tbaa !13
  %50 = icmp sgt i16 %49, %46
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  store i16 %46, ptr %48, align 2, !tbaa !13
  br label %52

52:                                               ; preds = %51, %45
  %53 = phi i16 [ %46, %51 ], [ %49, %45 ]
  %54 = load ptr, ptr @F, align 8, !tbaa !11
  br i1 %27, label %55, label %28

55:                                               ; preds = %52
  %56 = load i32, ptr @tokensetsize, align 4, !tbaa !7
  %57 = mul nsw i32 %56, %36
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, ptr %54, i64 %58
  br label %60

60:                                               ; preds = %60, %55
  %61 = phi ptr [ %65, %60 ], [ %16, %55 ]
  %62 = phi ptr [ %63, %60 ], [ %59, %55 ]
  %63 = getelementptr inbounds i32, ptr %62, i64 1
  %64 = load i32, ptr %62, align 4, !tbaa !7
  %65 = getelementptr inbounds i32, ptr %61, i64 1
  %66 = load i32, ptr %61, align 4, !tbaa !7
  %67 = or i32 %66, %64
  store i32 %67, ptr %61, align 4, !tbaa !7
  %68 = icmp ult ptr %65, %18
  br i1 %68, label %60, label %28, !llvm.loop !146

69:                                               ; preds = %28, %23, %1
  %70 = phi ptr [ %12, %23 ], [ %12, %1 ], [ %54, %28 ]
  %71 = phi i16 [ %8, %23 ], [ %8, %1 ], [ %53, %28 ]
  %72 = phi ptr [ %9, %23 ], [ %9, %1 ], [ %47, %28 ]
  %73 = sext i16 %71 to i32
  %74 = icmp eq i32 %5, %73
  br i1 %74, label %75, label %118

75:                                               ; preds = %69
  %76 = load ptr, ptr @VERTICES, align 8, !tbaa !11
  %77 = load i32, ptr @infinity, align 4, !tbaa !7
  %78 = trunc i32 %77 to i16
  %79 = load i32, ptr @top, align 4, !tbaa !7
  %80 = add i32 %79, -1
  %81 = sext i32 %79 to i64
  %82 = getelementptr inbounds i16, ptr %76, i64 %81
  %83 = load i16, ptr %82, align 2, !tbaa !13
  %84 = sext i16 %83 to i32
  %85 = sext i16 %83 to i64
  %86 = getelementptr inbounds i16, ptr %72, i64 %85
  store i16 %78, ptr %86, align 2, !tbaa !13
  %87 = icmp eq i32 %84, %0
  br i1 %87, label %116, label %88

88:                                               ; preds = %75
  %89 = icmp sgt i32 %13, 0
  %90 = sext i32 %80 to i64
  br label %99

91:                                               ; preds = %107, %99
  %92 = add i64 %100, -1
  %93 = getelementptr inbounds i16, ptr %76, i64 %100
  %94 = load i16, ptr %93, align 2, !tbaa !13
  %95 = sext i16 %94 to i32
  %96 = sext i16 %94 to i64
  %97 = getelementptr inbounds i16, ptr %72, i64 %96
  store i16 %78, ptr %97, align 2, !tbaa !13
  %98 = icmp eq i32 %95, %0
  br i1 %98, label %114, label %99

99:                                               ; preds = %91, %88
  %100 = phi i64 [ %90, %88 ], [ %92, %91 ]
  %101 = phi i32 [ %84, %88 ], [ %95, %91 ]
  br i1 %89, label %102, label %91

102:                                              ; preds = %99
  %103 = load i32, ptr @tokensetsize, align 4, !tbaa !7
  %104 = mul nsw i32 %103, %101
  %105 = sext i32 %104 to i64
  %106 = getelementptr i32, ptr %70, i64 %105
  br label %107

107:                                              ; preds = %107, %102
  %108 = phi ptr [ %110, %107 ], [ %16, %102 ]
  %109 = phi ptr [ %112, %107 ], [ %106, %102 ]
  %110 = getelementptr inbounds i32, ptr %108, i64 1
  %111 = load i32, ptr %108, align 4, !tbaa !7
  %112 = getelementptr inbounds i32, ptr %109, i64 1
  store i32 %111, ptr %109, align 4, !tbaa !7
  %113 = icmp ult ptr %110, %18
  br i1 %113, label %107, label %91, !llvm.loop !147

114:                                              ; preds = %91
  %.lcssa = phi i64 [ %92, %91 ]
  %115 = trunc i64 %.lcssa to i32
  br label %116

116:                                              ; preds = %114, %75
  %117 = phi i32 [ %80, %75 ], [ %115, %114 ]
  store i32 %117, ptr @top, align 4, !tbaa !7
  br label %118

118:                                              ; preds = %116, %69
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @add_lookback_edge(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = load ptr, ptr @lookaheads, align 8, !tbaa !11
  %5 = sext i32 %0 to i64
  %6 = getelementptr inbounds i16, ptr %4, i64 %5
  %7 = load i16, ptr %6, align 2, !tbaa !13
  %8 = sext i16 %7 to i32
  %9 = add nsw i32 %0, 1
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i16, ptr %4, i64 %10
  %12 = load i16, ptr %11, align 2, !tbaa !13
  %13 = sext i16 %12 to i32
  %14 = icmp slt i16 %7, %12
  br i1 %14, label %15, label %29

15:                                               ; preds = %3
  %16 = load ptr, ptr @LAruleno, align 8, !tbaa !11
  br label %17

17:                                               ; preds = %17, %15
  %18 = phi i32 [ %8, %15 ], [ %25, %17 ]
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i16, ptr %16, i64 %19
  %21 = load i16, ptr %20, align 2, !tbaa !13
  %22 = sext i16 %21 to i32
  %23 = icmp ne i32 %22, %1
  %24 = zext i1 %23 to i32
  %25 = add nsw i32 %18, %24
  %26 = icmp slt i32 %25, %13
  %27 = select i1 %23, i1 %26, i1 false
  br i1 %27, label %17, label %28, !llvm.loop !148

28:                                               ; preds = %17
  %.lcssa1 = phi i1 [ %23, %17 ]
  %.lcssa = phi i32 [ %25, %17 ]
  br i1 %.lcssa1, label %29, label %31

29:                                               ; preds = %28, %3
  %30 = phi i32 [ %.lcssa, %28 ], [ %8, %3 ]
  tail call void @berror(ptr noundef nonnull @.str.2.103) #29
  br label %31

31:                                               ; preds = %29, %28
  %32 = phi i32 [ %30, %29 ], [ %.lcssa, %28 ]
  %33 = tail call ptr (i32, ...) @mallocate(i32 noundef 16) #29
  %34 = load ptr, ptr @lookback, align 8, !tbaa !11
  %35 = sext i32 %32 to i64
  %36 = getelementptr inbounds ptr, ptr %34, i64 %35
  %37 = load ptr, ptr %36, align 8, !tbaa !11
  store ptr %37, ptr %33, align 8, !tbaa !97
  %38 = trunc i32 %2 to i16
  %39 = getelementptr inbounds %struct.shorts, ptr %33, i64 0, i32 1
  store i16 %38, ptr %39, align 8, !tbaa !99
  store ptr %33, ptr %36, align 8, !tbaa !11
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @map_goto(i32 noundef %0, i32 noundef %1) #0 {
  %3 = load ptr, ptr @goto_map, align 8, !tbaa !11
  %4 = sext i32 %1 to i64
  %5 = getelementptr inbounds i16, ptr %3, i64 %4
  %6 = load i16, ptr %5, align 2, !tbaa !13
  %7 = add nsw i32 %1, 1
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds i16, ptr %3, i64 %8
  %10 = load i16, ptr %9, align 2, !tbaa !13
  %11 = icmp sgt i16 %6, %10
  br i1 %11, label %33, label %12

12:                                               ; preds = %2
  %13 = sext i16 %10 to i32
  %14 = sext i16 %6 to i32
  %15 = load ptr, ptr @from_state, align 8, !tbaa !11
  br label %16

16:                                               ; preds = %26, %12
  %17 = phi i32 [ %13, %12 ], [ %31, %26 ]
  %18 = phi i32 [ %14, %12 ], [ %30, %26 ]
  %19 = add nsw i32 %17, %18
  %20 = sdiv i32 %19, 2
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i16, ptr %15, i64 %21
  %23 = load i16, ptr %22, align 2, !tbaa !13
  %24 = sext i16 %23 to i32
  %25 = icmp eq i32 %24, %0
  br i1 %25, label %34, label %26

26:                                               ; preds = %16
  %27 = icmp slt i32 %24, %0
  %28 = add nsw i32 %20, 1
  %29 = add nsw i32 %20, -1
  %30 = select i1 %27, i32 %28, i32 %18
  %31 = select i1 %27, i32 %17, i32 %29
  %32 = icmp sgt i32 %30, %31
  br i1 %32, label %33, label %16, !llvm.loop !149

33:                                               ; preds = %26, %2
  tail call void @berror(ptr noundef nonnull @.str.1.100) #29
  br label %34

34:                                               ; preds = %33, %16
  %35 = phi i32 [ undef, %33 ], [ %20, %16 ]
  ret i32 %35
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @transpose(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = shl i32 %1, 1
  %4 = tail call ptr (i32, ...) @mallocate(i32 noundef %3) #29
  %5 = icmp sgt i32 %1, 0
  br i1 %5, label %6, label %29

6:                                                ; preds = %2
  %7 = zext i32 %1 to i64
  br label %8

8:                                                ; preds = %26, %6
  %9 = phi i64 [ 0, %6 ], [ %27, %26 ]
  %10 = getelementptr inbounds ptr, ptr %0, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !11
  %12 = icmp eq ptr %11, null
  br i1 %12, label %26, label %13

13:                                               ; preds = %8
  %14 = load i16, ptr %11, align 2, !tbaa !13
  %15 = icmp sgt i16 %14, -1
  br i1 %15, label %16, label %26

16:                                               ; preds = %16, %13
  %17 = phi i16 [ %24, %16 ], [ %14, %13 ]
  %18 = phi ptr [ %19, %16 ], [ %11, %13 ]
  %19 = getelementptr inbounds i16, ptr %18, i64 1
  %20 = zext i16 %17 to i64
  %21 = getelementptr inbounds i16, ptr %4, i64 %20
  %22 = load i16, ptr %21, align 2, !tbaa !13
  %23 = add i16 %22, 1
  store i16 %23, ptr %21, align 2, !tbaa !13
  %24 = load i16, ptr %19, align 2, !tbaa !13
  %25 = icmp sgt i16 %24, -1
  br i1 %25, label %16, label %26, !llvm.loop !150

26:                                               ; preds = %16, %13, %8
  %27 = add nuw nsw i64 %9, 1
  %28 = icmp eq i64 %27, %7
  br i1 %28, label %29, label %8, !llvm.loop !151

29:                                               ; preds = %26, %2
  %30 = shl i32 %1, 3
  %31 = tail call ptr (i32, ...) @mallocate(i32 noundef %30) #29
  %32 = tail call ptr (i32, ...) @mallocate(i32 noundef %30) #29
  br i1 %5, label %33, label %52

33:                                               ; preds = %29
  %34 = zext i32 %1 to i64
  br label %35

35:                                               ; preds = %49, %33
  %36 = phi i64 [ 0, %33 ], [ %50, %49 ]
  %37 = getelementptr inbounds i16, ptr %4, i64 %36
  %38 = load i16, ptr %37, align 2, !tbaa !13
  %39 = icmp sgt i16 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %35
  %41 = zext i16 %38 to i32
  %42 = shl nuw nsw i32 %41, 1
  %43 = add nuw nsw i32 %42, 2
  %44 = tail call ptr (i32, ...) @mallocate(i32 noundef %43) #29
  %45 = getelementptr inbounds ptr, ptr %31, i64 %36
  store ptr %44, ptr %45, align 8, !tbaa !11
  %46 = getelementptr inbounds ptr, ptr %32, i64 %36
  store ptr %44, ptr %46, align 8, !tbaa !11
  %47 = zext i16 %38 to i64
  %48 = getelementptr inbounds i16, ptr %44, i64 %47
  store i16 -1, ptr %48, align 2, !tbaa !13
  br label %49

49:                                               ; preds = %40, %35
  %50 = add nuw nsw i64 %36, 1
  %51 = icmp eq i64 %50, %34
  br i1 %51, label %55, label %35, !llvm.loop !152

52:                                               ; preds = %29
  %53 = icmp eq ptr %4, null
  br i1 %53, label %81, label %54

54:                                               ; preds = %52
  tail call void @free(ptr noundef nonnull %4) #29
  br label %81

55:                                               ; preds = %49
  tail call void @free(ptr noundef nonnull %4) #29
  br i1 %5, label %56, label %81

56:                                               ; preds = %55
  %57 = zext i32 %1 to i64
  br label %58

58:                                               ; preds = %78, %56
  %59 = phi i64 [ 0, %56 ], [ %79, %78 ]
  %60 = getelementptr inbounds ptr, ptr %0, i64 %59
  %61 = load ptr, ptr %60, align 8, !tbaa !11
  %62 = icmp eq ptr %61, null
  br i1 %62, label %78, label %63

63:                                               ; preds = %58
  %64 = load i16, ptr %61, align 2, !tbaa !13
  %65 = icmp sgt i16 %64, -1
  br i1 %65, label %66, label %78

66:                                               ; preds = %63
  %67 = trunc i64 %59 to i16
  br label %68

68:                                               ; preds = %68, %66
  %69 = phi i16 [ %64, %66 ], [ %76, %68 ]
  %70 = phi ptr [ %61, %66 ], [ %71, %68 ]
  %71 = getelementptr inbounds i16, ptr %70, i64 1
  %72 = zext i16 %69 to i64
  %73 = getelementptr inbounds ptr, ptr %32, i64 %72
  %74 = load ptr, ptr %73, align 8, !tbaa !11
  %75 = getelementptr inbounds i16, ptr %74, i64 1
  store ptr %75, ptr %73, align 8, !tbaa !11
  store i16 %67, ptr %74, align 2, !tbaa !13
  %76 = load i16, ptr %71, align 2, !tbaa !13
  %77 = icmp sgt i16 %76, -1
  br i1 %77, label %68, label %78, !llvm.loop !153

78:                                               ; preds = %68, %63, %58
  %79 = add nuw nsw i64 %59, 1
  %80 = icmp eq i64 %79, %57
  br i1 %80, label %81, label %58, !llvm.loop !154

81:                                               ; preds = %78, %55, %54, %52
  %82 = icmp eq ptr %32, null
  br i1 %82, label %84, label %83

83:                                               ; preds = %81
  tail call void @free(ptr noundef nonnull %32) #29
  br label %84

84:                                               ; preds = %83, %81
  ret ptr %31
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define internal void @init_lex() #20 {
  store i32 -1, ptr @unlexed, align 4, !tbaa !7
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @skip_white_space() #0 {
  br label %1

1:                                                ; preds = %33, %0
  %2 = load ptr, ptr @finput, align 8, !tbaa !11
  %3 = tail call i32 @getc(ptr noundef %2) #30
  switch i32 %3, label %34 [
    i32 47, label %4
    i32 10, label %30
    i32 32, label %33
    i32 9, label %33
    i32 12, label %33
  ]

4:                                                ; preds = %1
  %5 = load ptr, ptr @finput, align 8, !tbaa !11
  %6 = tail call i32 @getc(ptr noundef %5) #30
  %7 = icmp eq i32 %6, 42
  br i1 %7, label %9, label %8

8:                                                ; preds = %4
  tail call void @fatals(ptr noundef nonnull @.str.105, i32 noundef %6, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #29
  br label %9

9:                                                ; preds = %8, %4
  %10 = load ptr, ptr @finput, align 8, !tbaa !11
  %11 = tail call i32 @getc(ptr noundef %10) #30
  br label %12

12:                                               ; preds = %24, %9
  %13 = phi i32 [ %11, %9 ], [ %25, %24 ]
  switch i32 %13, label %27 [
    i32 42, label %14
    i32 10, label %19
    i32 -1, label %26
  ]

14:                                               ; preds = %16, %12
  %15 = phi i32 [ %18, %16 ], [ %13, %12 ]
  switch i32 %15, label %24 [
    i32 42, label %16
    i32 47, label %33
  ], !llvm.loop !155

16:                                               ; preds = %14
  %17 = load ptr, ptr @finput, align 8, !tbaa !11
  %18 = tail call i32 @getc(ptr noundef %17) #30
  br label %14, !llvm.loop !156

19:                                               ; preds = %12
  %20 = load i32, ptr @lineno, align 4, !tbaa !7
  %21 = add nsw i32 %20, 1
  store i32 %21, ptr @lineno, align 4, !tbaa !7
  %22 = load ptr, ptr @finput, align 8, !tbaa !11
  %23 = tail call i32 @getc(ptr noundef %22) #30
  br label %24

24:                                               ; preds = %27, %26, %19, %14
  %25 = phi i32 [ %23, %19 ], [ -1, %26 ], [ %29, %27 ], [ %15, %14 ]
  br label %12, !llvm.loop !155

26:                                               ; preds = %12
  tail call void @fatal(ptr noundef nonnull @.str.1.106) #29
  br label %24

27:                                               ; preds = %12
  %28 = load ptr, ptr @finput, align 8, !tbaa !11
  %29 = tail call i32 @getc(ptr noundef %28) #30
  br label %24

30:                                               ; preds = %1
  %31 = load i32, ptr @lineno, align 4, !tbaa !7
  %32 = add nsw i32 %31, 1
  store i32 %32, ptr @lineno, align 4, !tbaa !7
  br label %33

33:                                               ; preds = %30, %14, %1, %1, %1
  br label %1

34:                                               ; preds = %1
  %.lcssa = phi i32 [ %3, %1 ]
  ret i32 %.lcssa
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define internal void @unlex(i32 noundef %0) #21 {
  store i32 %0, ptr @unlexed, align 4, !tbaa !7
  %2 = load ptr, ptr @symval, align 8, !tbaa !11
  store ptr %2, ptr @unlexed_symval, align 8, !tbaa !11
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @lex() #0 {
  %1 = load i32, ptr @unlexed, align 4, !tbaa !7
  %2 = icmp sgt i32 %1, -1
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  %4 = load ptr, ptr @unlexed_symval, align 8, !tbaa !11
  store ptr %4, ptr @symval, align 8, !tbaa !11
  store i32 -1, ptr @unlexed, align 4, !tbaa !7
  br label %165

5:                                                ; preds = %0
  %6 = tail call i32 @skip_white_space() #30
  switch i32 %6, label %164 [
    i32 -1, label %165
    i32 65, label %7
    i32 66, label %7
    i32 67, label %7
    i32 68, label %7
    i32 69, label %7
    i32 70, label %7
    i32 71, label %7
    i32 72, label %7
    i32 73, label %7
    i32 74, label %7
    i32 75, label %7
    i32 76, label %7
    i32 77, label %7
    i32 78, label %7
    i32 79, label %7
    i32 80, label %7
    i32 81, label %7
    i32 82, label %7
    i32 83, label %7
    i32 84, label %7
    i32 85, label %7
    i32 86, label %7
    i32 87, label %7
    i32 88, label %7
    i32 89, label %7
    i32 90, label %7
    i32 97, label %7
    i32 98, label %7
    i32 99, label %7
    i32 100, label %7
    i32 101, label %7
    i32 102, label %7
    i32 103, label %7
    i32 104, label %7
    i32 105, label %7
    i32 106, label %7
    i32 107, label %7
    i32 108, label %7
    i32 109, label %7
    i32 110, label %7
    i32 111, label %7
    i32 112, label %7
    i32 113, label %7
    i32 114, label %7
    i32 115, label %7
    i32 116, label %7
    i32 117, label %7
    i32 118, label %7
    i32 119, label %7
    i32 120, label %7
    i32 121, label %7
    i32 122, label %7
    i32 46, label %7
    i32 95, label %7
    i32 48, label %33
    i32 49, label %33
    i32 50, label %33
    i32 51, label %33
    i32 52, label %33
    i32 53, label %33
    i32 54, label %33
    i32 55, label %33
    i32 56, label %33
    i32 57, label %33
    i32 39, label %59
    i32 44, label %135
    i32 58, label %136
    i32 59, label %137
    i32 124, label %138
    i32 123, label %139
    i32 61, label %140
    i32 60, label %150
    i32 37, label %162
  ]

7:                                                ; preds = %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5
  %8 = tail call ptr @__ctype_b_loc() #37
  br label %9

9:                                                ; preds = %25, %7
  %10 = phi i32 [ %6, %7 ], [ %28, %25 ]
  %11 = phi ptr [ @token_buffer, %7 ], [ %26, %25 ]
  %12 = load ptr, ptr %8, align 8, !tbaa !11
  %13 = sext i32 %10 to i64
  %14 = getelementptr inbounds i16, ptr %12, i64 %13
  %15 = load i16, ptr %14, align 2, !tbaa !13
  %16 = freeze i16 %15
  %17 = and i16 %16, 8
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %9
  switch i32 %10, label %29 [
    i32 95, label %20
    i32 46, label %20
  ]

20:                                               ; preds = %19, %19, %9
  %21 = icmp ult ptr %11, getelementptr inbounds ([1025 x i8], ptr @token_buffer, i64 0, i64 1024)
  br i1 %21, label %22, label %25

22:                                               ; preds = %20
  %23 = trunc i32 %10 to i8
  %24 = getelementptr inbounds i8, ptr %11, i64 1
  store i8 %23, ptr %11, align 1, !tbaa !61
  br label %25

25:                                               ; preds = %22, %20
  %26 = phi ptr [ %24, %22 ], [ %11, %20 ]
  %27 = load ptr, ptr @finput, align 8, !tbaa !11
  %28 = tail call i32 @getc(ptr noundef %27) #30
  br label %9, !llvm.loop !157

29:                                               ; preds = %19
  %.lcssa1 = phi i32 [ %10, %19 ]
  %.lcssa = phi ptr [ %11, %19 ]
  store i8 0, ptr %.lcssa, align 1, !tbaa !61
  %30 = load ptr, ptr @finput, align 8, !tbaa !11
  %31 = tail call i32 @ungetc(i32 noundef %.lcssa1, ptr noundef %30) #30
  %32 = tail call ptr (ptr, ...) @getsym(ptr noundef nonnull @token_buffer) #29
  store ptr %32, ptr @symval, align 8, !tbaa !11
  br label %165

33:                                               ; preds = %5, %5, %5, %5, %5, %5, %5, %5, %5, %5
  store i32 0, ptr @numval, align 4, !tbaa !7
  %34 = tail call ptr @__ctype_b_loc() #37
  %35 = load ptr, ptr %34, align 8, !tbaa !11
  %36 = zext i32 %6 to i64
  %37 = getelementptr inbounds i16, ptr %35, i64 %36
  %38 = load i16, ptr %37, align 2, !tbaa !13
  %39 = and i16 %38, 2048
  %40 = icmp eq i16 %39, 0
  br i1 %40, label %55, label %41

41:                                               ; preds = %41, %33
  %42 = phi i32 [ %48, %41 ], [ %6, %33 ]
  %43 = load i32, ptr @numval, align 4, !tbaa !7
  %44 = mul nsw i32 %43, 10
  %45 = add i32 %42, -48
  %46 = add i32 %45, %44
  store i32 %46, ptr @numval, align 4, !tbaa !7
  %47 = load ptr, ptr @finput, align 8, !tbaa !11
  %48 = tail call i32 @getc(ptr noundef %47) #30
  %49 = load ptr, ptr %34, align 8, !tbaa !11
  %50 = sext i32 %48 to i64
  %51 = getelementptr inbounds i16, ptr %49, i64 %50
  %52 = load i16, ptr %51, align 2, !tbaa !13
  %53 = and i16 %52, 2048
  %54 = icmp eq i16 %53, 0
  br i1 %54, label %55, label %41, !llvm.loop !158

55:                                               ; preds = %41, %33
  %56 = phi i32 [ %6, %33 ], [ %48, %41 ]
  %57 = load ptr, ptr @finput, align 8, !tbaa !11
  %58 = tail call i32 @ungetc(i32 noundef %56, ptr noundef %57) #30
  br label %165

59:                                               ; preds = %5
  store i32 -1, ptr @translations, align 4, !tbaa !7
  %60 = load ptr, ptr @finput, align 8, !tbaa !11
  %61 = tail call i32 @getc(ptr noundef %60) #30
  %62 = icmp eq i32 %61, 92
  %63 = load ptr, ptr @finput, align 8, !tbaa !11
  %64 = tail call i32 @getc(ptr noundef %63) #30
  br i1 %62, label %65, label %94

65:                                               ; preds = %59
  %66 = and i32 %64, -8
  %67 = icmp eq i32 %66, 48
  br i1 %67, label %68, label %81

68:                                               ; preds = %68, %65
  %69 = phi i32 [ %73, %68 ], [ 0, %65 ]
  %70 = phi i32 [ %75, %68 ], [ %64, %65 ]
  %71 = shl nsw i32 %69, 3
  %72 = add nsw i32 %70, -48
  %73 = add nuw nsw i32 %72, %71
  %74 = load ptr, ptr @finput, align 8, !tbaa !11
  %75 = tail call i32 @getc(ptr noundef %74) #30
  %76 = and i32 %75, -8
  %77 = icmp eq i32 %76, 48
  br i1 %77, label %68, label %78, !llvm.loop !159

78:                                               ; preds = %68
  %.lcssa3 = phi i32 [ %73, %68 ]
  %.lcssa2 = phi i32 [ %75, %68 ]
  %79 = icmp ugt i32 %.lcssa3, 127
  br i1 %79, label %80, label %94

80:                                               ; preds = %78
  tail call void @fatals(ptr noundef nonnull @.str.2.107, i32 noundef %.lcssa3, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #29
  br label %94

81:                                               ; preds = %65
  switch i32 %64, label %89 [
    i32 116, label %90
    i32 110, label %82
    i32 114, label %83
    i32 102, label %84
    i32 98, label %85
    i32 92, label %86
    i32 39, label %87
    i32 34, label %88
  ]

82:                                               ; preds = %81
  br label %90

83:                                               ; preds = %81
  br label %90

84:                                               ; preds = %81
  br label %90

85:                                               ; preds = %81
  br label %90

86:                                               ; preds = %81
  br label %90

87:                                               ; preds = %81
  br label %90

88:                                               ; preds = %81
  br label %90

89:                                               ; preds = %81
  tail call void @fatals(ptr noundef nonnull @.str.3.108, i32 noundef %64, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #29
  br label %90

90:                                               ; preds = %89, %88, %87, %86, %85, %84, %83, %82, %81
  %91 = phi i32 [ 10, %82 ], [ 13, %83 ], [ 12, %84 ], [ 8, %85 ], [ %64, %86 ], [ %64, %87 ], [ %64, %88 ], [ 0, %89 ], [ 9, %81 ]
  %92 = load ptr, ptr @finput, align 8, !tbaa !11
  %93 = tail call i32 @getc(ptr noundef %92) #30
  br label %94

94:                                               ; preds = %90, %80, %78, %59
  %95 = phi i32 [ %.lcssa2, %80 ], [ %.lcssa2, %78 ], [ %93, %90 ], [ %64, %59 ]
  %96 = phi i32 [ %.lcssa3, %80 ], [ %.lcssa3, %78 ], [ %91, %90 ], [ %61, %59 ]
  %97 = icmp eq i32 %95, 39
  br i1 %97, label %99, label %98

98:                                               ; preds = %94
  tail call void @fatal(ptr noundef nonnull @.str.4.109) #29
  br label %99

99:                                               ; preds = %98, %94
  store i8 39, ptr @token_buffer, align 16, !tbaa !61
  switch i32 %96, label %102 [
    i32 92, label %100
    i32 39, label %101
  ]

100:                                              ; preds = %99
  store i8 92, ptr getelementptr inbounds ([1025 x i8], ptr @token_buffer, i64 0, i64 1), align 1, !tbaa !61
  store i8 92, ptr getelementptr inbounds ([1025 x i8], ptr @token_buffer, i64 0, i64 2), align 2, !tbaa !61
  br label %125

101:                                              ; preds = %99
  store i8 92, ptr getelementptr inbounds ([1025 x i8], ptr @token_buffer, i64 0, i64 1), align 1, !tbaa !61
  store i8 39, ptr getelementptr inbounds ([1025 x i8], ptr @token_buffer, i64 0, i64 2), align 2, !tbaa !61
  br label %125

102:                                              ; preds = %99
  %103 = icmp sgt i32 %96, 31
  %104 = icmp ne i32 %96, 127
  %105 = and i1 %103, %104
  br i1 %105, label %106, label %108

106:                                              ; preds = %102
  %107 = trunc i32 %96 to i8
  store i8 %107, ptr getelementptr inbounds ([1025 x i8], ptr @token_buffer, i64 0, i64 1), align 1, !tbaa !61
  br label %125

108:                                              ; preds = %102
  switch i32 %96, label %114 [
    i32 9, label %109
    i32 10, label %110
    i32 13, label %111
    i32 8, label %112
    i32 12, label %113
  ]

109:                                              ; preds = %108
  store i8 92, ptr getelementptr inbounds ([1025 x i8], ptr @token_buffer, i64 0, i64 1), align 1, !tbaa !61
  store i8 116, ptr getelementptr inbounds ([1025 x i8], ptr @token_buffer, i64 0, i64 2), align 2, !tbaa !61
  br label %125

110:                                              ; preds = %108
  store i8 92, ptr getelementptr inbounds ([1025 x i8], ptr @token_buffer, i64 0, i64 1), align 1, !tbaa !61
  store i8 110, ptr getelementptr inbounds ([1025 x i8], ptr @token_buffer, i64 0, i64 2), align 2, !tbaa !61
  br label %125

111:                                              ; preds = %108
  store i8 92, ptr getelementptr inbounds ([1025 x i8], ptr @token_buffer, i64 0, i64 1), align 1, !tbaa !61
  store i8 114, ptr getelementptr inbounds ([1025 x i8], ptr @token_buffer, i64 0, i64 2), align 2, !tbaa !61
  br label %125

112:                                              ; preds = %108
  store i8 92, ptr getelementptr inbounds ([1025 x i8], ptr @token_buffer, i64 0, i64 1), align 1, !tbaa !61
  store i8 98, ptr getelementptr inbounds ([1025 x i8], ptr @token_buffer, i64 0, i64 2), align 2, !tbaa !61
  br label %125

113:                                              ; preds = %108
  store i8 92, ptr getelementptr inbounds ([1025 x i8], ptr @token_buffer, i64 0, i64 1), align 1, !tbaa !61
  store i8 102, ptr getelementptr inbounds ([1025 x i8], ptr @token_buffer, i64 0, i64 2), align 2, !tbaa !61
  br label %125

114:                                              ; preds = %108
  %115 = sdiv i32 %96, 64
  %116 = trunc i32 %115 to i8
  %117 = add i8 %116, 48
  store i8 %117, ptr getelementptr inbounds ([1025 x i8], ptr @token_buffer, i64 0, i64 1), align 1, !tbaa !61
  %118 = sdiv i32 %96, 8
  %119 = trunc i32 %118 to i8
  %120 = and i8 %119, 7
  %121 = or i8 %120, 48
  store i8 %121, ptr getelementptr inbounds ([1025 x i8], ptr @token_buffer, i64 0, i64 2), align 2, !tbaa !61
  %122 = trunc i32 %96 to i8
  %123 = and i8 %122, 7
  %124 = or i8 %123, 48
  store i8 %124, ptr getelementptr inbounds ([1025 x i8], ptr @token_buffer, i64 0, i64 3), align 1, !tbaa !61
  br label %125

125:                                              ; preds = %114, %113, %112, %111, %110, %109, %106, %101, %100
  %126 = phi ptr [ getelementptr inbounds ([1025 x i8], ptr @token_buffer, i64 0, i64 3), %100 ], [ getelementptr inbounds ([1025 x i8], ptr @token_buffer, i64 0, i64 3), %101 ], [ getelementptr inbounds ([1025 x i8], ptr @token_buffer, i64 0, i64 2), %106 ], [ getelementptr inbounds ([1025 x i8], ptr @token_buffer, i64 0, i64 3), %109 ], [ getelementptr inbounds ([1025 x i8], ptr @token_buffer, i64 0, i64 3), %110 ], [ getelementptr inbounds ([1025 x i8], ptr @token_buffer, i64 0, i64 3), %111 ], [ getelementptr inbounds ([1025 x i8], ptr @token_buffer, i64 0, i64 3), %112 ], [ getelementptr inbounds ([1025 x i8], ptr @token_buffer, i64 0, i64 3), %113 ], [ getelementptr inbounds ([1025 x i8], ptr @token_buffer, i64 0, i64 4), %114 ]
  %127 = getelementptr inbounds i8, ptr %126, i64 1
  store i8 39, ptr %126, align 1, !tbaa !61
  store i8 0, ptr %127, align 1, !tbaa !61
  %128 = tail call ptr (ptr, ...) @getsym(ptr noundef nonnull @token_buffer) #29
  store ptr %128, ptr @symval, align 8, !tbaa !11
  %129 = getelementptr inbounds %struct.bucket, ptr %128, i64 0, i32 8
  store i8 1, ptr %129, align 8, !tbaa !160
  %130 = getelementptr inbounds %struct.bucket, ptr %128, i64 0, i32 7
  %131 = load i16, ptr %130, align 2, !tbaa !162
  %132 = icmp eq i16 %131, 0
  br i1 %132, label %133, label %165

133:                                              ; preds = %125
  %134 = trunc i32 %96 to i16
  store i16 %134, ptr %130, align 2, !tbaa !162
  br label %165

135:                                              ; preds = %5
  br label %165

136:                                              ; preds = %5
  br label %165

137:                                              ; preds = %5
  br label %165

138:                                              ; preds = %5
  br label %165

139:                                              ; preds = %5
  br label %165

140:                                              ; preds = %143, %5
  %141 = load ptr, ptr @finput, align 8, !tbaa !11
  %142 = tail call i32 @getc(ptr noundef %141) #30
  switch i32 %142, label %147 [
    i32 10, label %144
    i32 32, label %143
    i32 9, label %143
    i32 123, label %165
  ]

143:                                              ; preds = %144, %140, %140
  br label %140

144:                                              ; preds = %140
  %145 = load i32, ptr @lineno, align 4, !tbaa !7
  %146 = add nsw i32 %145, 1
  store i32 %146, ptr @lineno, align 4, !tbaa !7
  br label %143

147:                                              ; preds = %140
  %.lcssa4 = phi i32 [ %142, %140 ]
  %148 = load ptr, ptr @finput, align 8, !tbaa !11
  %149 = tail call i32 @ungetc(i32 noundef %.lcssa4, ptr noundef %148) #30
  br label %165

150:                                              ; preds = %158, %5
  %151 = phi ptr [ %160, %158 ], [ @token_buffer, %5 ]
  %152 = load ptr, ptr @finput, align 8, !tbaa !11
  %153 = tail call i32 @getc(ptr noundef %152) #30
  switch i32 %153, label %155 [
    i32 62, label %161
    i32 -1, label %154
    i32 10, label %154
  ]

154:                                              ; preds = %150, %150
  tail call void @fatal(ptr noundef nonnull @.str.5.110) #29
  br label %155

155:                                              ; preds = %154, %150
  %156 = icmp ult ptr %151, getelementptr inbounds ([1025 x i8], ptr @token_buffer, i64 0, i64 1023)
  br i1 %156, label %158, label %157

157:                                              ; preds = %155
  tail call void @fatals(ptr noundef nonnull @.str.6.111, i32 noundef 1023, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #29
  br label %158

158:                                              ; preds = %157, %155
  %159 = trunc i32 %153 to i8
  %160 = getelementptr inbounds i8, ptr %151, i64 1
  store i8 %159, ptr %151, align 1, !tbaa !61
  br label %150, !llvm.loop !163

161:                                              ; preds = %150
  %.lcssa5 = phi ptr [ %151, %150 ]
  store i8 0, ptr %.lcssa5, align 1, !tbaa !61
  br label %165

162:                                              ; preds = %5
  %163 = tail call i32 @parse_percent_token() #30, !range !164
  br label %165

164:                                              ; preds = %5
  br label %165

165:                                              ; preds = %164, %162, %161, %147, %140, %139, %138, %137, %136, %135, %133, %125, %55, %29, %5, %3
  %166 = phi i32 [ %1, %3 ], [ 24, %164 ], [ %163, %162 ], [ 21, %161 ], [ 24, %147 ], [ 6, %139 ], [ 5, %138 ], [ 4, %137 ], [ 3, %136 ], [ 2, %135 ], [ 22, %55 ], [ 1, %29 ], [ 0, %5 ], [ 1, %133 ], [ 1, %125 ], [ 6, %140 ]
  ret i32 %166
}

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #22

; Function Attrs: nofree nounwind optsize
declare noundef i32 @ungetc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind optsize uwtable
define internal i32 @parse_percent_token() #12 {
  %1 = load ptr, ptr @finput, align 8, !tbaa !11
  %2 = tail call i32 @getc(ptr noundef %1) #30
  switch i32 %2, label %9 [
    i32 37, label %84
    i32 123, label %3
    i32 60, label %4
    i32 62, label %5
    i32 50, label %6
    i32 48, label %7
    i32 61, label %8
  ]

3:                                                ; preds = %0
  br label %84

4:                                                ; preds = %0
  br label %84

5:                                                ; preds = %0
  br label %84

6:                                                ; preds = %0
  br label %84

7:                                                ; preds = %0
  br label %84

8:                                                ; preds = %0
  br label %84

9:                                                ; preds = %0
  %10 = tail call ptr @__ctype_b_loc() #37
  %11 = load ptr, ptr %10, align 8, !tbaa !11
  %12 = sext i32 %2 to i64
  %13 = getelementptr inbounds i16, ptr %11, i64 %12
  %14 = load i16, ptr %13, align 2, !tbaa !13
  %15 = and i16 %14, 1024
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %84, label %17

17:                                               ; preds = %24, %9
  %18 = phi ptr [ %25, %24 ], [ @token_buffer, %9 ]
  %19 = phi i32 [ %27, %24 ], [ %2, %9 ]
  %20 = icmp ult ptr %18, getelementptr inbounds ([1025 x i8], ptr @token_buffer, i64 0, i64 1024)
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = trunc i32 %19 to i8
  %23 = getelementptr inbounds i8, ptr %18, i64 1
  store i8 %22, ptr %18, align 1, !tbaa !61
  br label %24

24:                                               ; preds = %21, %17
  %25 = phi ptr [ %23, %21 ], [ %18, %17 ]
  %26 = load ptr, ptr @finput, align 8, !tbaa !11
  %27 = tail call i32 @getc(ptr noundef %26) #30
  %28 = load ptr, ptr %10, align 8, !tbaa !11
  %29 = sext i32 %27 to i64
  %30 = getelementptr inbounds i16, ptr %28, i64 %29
  %31 = load i16, ptr %30, align 2, !tbaa !13
  %32 = and i16 %31, 1024
  %33 = icmp ne i16 %32, 0
  %34 = icmp eq i32 %27, 95
  %35 = or i1 %34, %33
  br i1 %35, label %17, label %36, !llvm.loop !165

36:                                               ; preds = %24
  %.lcssa1 = phi ptr [ %25, %24 ]
  %.lcssa = phi i32 [ %27, %24 ]
  %37 = load ptr, ptr @finput, align 8, !tbaa !11
  %38 = tail call i32 @ungetc(i32 noundef %.lcssa, ptr noundef %37) #30
  store i8 0, ptr %.lcssa1, align 1, !tbaa !61
  %39 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(6) @token_buffer, ptr noundef nonnull dereferenceable(6) @.str.7.112, i64 6)
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %84, label %41

41:                                               ; preds = %36
  %42 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(5) @token_buffer, ptr noundef nonnull dereferenceable(5) @.str.8.113, i64 5)
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %84, label %44

44:                                               ; preds = %41
  %45 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(6) @token_buffer, ptr noundef nonnull dereferenceable(6) @.str.9.114, i64 6)
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %84, label %47

47:                                               ; preds = %44
  %48 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(5) @token_buffer, ptr noundef nonnull dereferenceable(5) @.str.10.115, i64 5)
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %84, label %50

50:                                               ; preds = %47
  %51 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(6) @token_buffer, ptr noundef nonnull dereferenceable(6) @.str.11.116, i64 6)
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %84, label %53

53:                                               ; preds = %50
  %54 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(6) @token_buffer, ptr noundef nonnull dereferenceable(6) @.str.12.117, i64 6)
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %84, label %56

56:                                               ; preds = %53
  %57 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) @token_buffer, ptr noundef nonnull dereferenceable(7) @.str.13.118, i64 7)
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %84, label %59

59:                                               ; preds = %56
  %60 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(6) @token_buffer, ptr noundef nonnull dereferenceable(6) @.str.14.119, i64 6)
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %84, label %62

62:                                               ; preds = %59
  %63 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(5) @token_buffer, ptr noundef nonnull dereferenceable(5) @.str.15.120, i64 5)
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %84, label %65

65:                                               ; preds = %62
  %66 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(6) @token_buffer, ptr noundef nonnull dereferenceable(6) @.str.16.121, i64 6)
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %84, label %68

68:                                               ; preds = %65
  %69 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(9) @token_buffer, ptr noundef nonnull dereferenceable(9) @.str.17.122, i64 9)
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %84, label %71

71:                                               ; preds = %68
  %72 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) @token_buffer, ptr noundef nonnull dereferenceable(7) @.str.18, i64 7)
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %84, label %74

74:                                               ; preds = %71
  %75 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(16) @token_buffer, ptr noundef nonnull dereferenceable(16) @.str.19, i64 16)
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %84, label %77

77:                                               ; preds = %74
  %78 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(12) @token_buffer, ptr noundef nonnull dereferenceable(12) @.str.20, i64 12)
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %84, label %80

80:                                               ; preds = %77
  %81 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(5) @token_buffer, ptr noundef nonnull dereferenceable(5) @.str.21, i64 5)
  %82 = icmp eq i32 %81, 0
  %83 = select i1 %82, i32 18, i32 24
  br label %84

84:                                               ; preds = %80, %77, %74, %71, %68, %65, %62, %59, %56, %53, %50, %47, %44, %41, %36, %9, %8, %7, %6, %5, %4, %3, %0
  %85 = phi i32 [ 18, %8 ], [ 9, %7 ], [ 17, %6 ], [ 16, %5 ], [ 15, %4 ], [ 8, %3 ], [ 7, %0 ], [ 24, %9 ], [ 9, %41 ], [ 9, %36 ], [ 10, %44 ], [ 12, %47 ], [ 11, %50 ], [ 13, %53 ], [ 23, %56 ], [ 14, %59 ], [ 15, %62 ], [ 16, %65 ], [ 17, %71 ], [ 17, %68 ], [ 19, %74 ], [ 20, %77 ], [ %83, %80 ]
  ret i32 %85
}

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #23

; Function Attrs: nounwind optsize uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #0 {
  store i32 0, ptr @failure, align 4, !tbaa !7
  store i32 0, ptr @lineno, align 4, !tbaa !7
  tail call void @getargs(i32 noundef %0, ptr noundef %1) #29
  tail call void @openfiles() #29
  tail call void @reader() #29
  tail call void @set_derives() #29
  tail call void @set_nullable() #29
  tail call void @generate_states() #29
  tail call void @lalr() #29
  tail call void @initialize_conflicts() #29
  %3 = load i32, ptr @verboseflag, align 4, !tbaa !7
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %2
  tail call void @verbose() #29
  br label %7

6:                                                ; preds = %2
  tail call void @terse() #29
  br label %7

7:                                                ; preds = %6, %5
  tail call void @output() #29
  %8 = load i32, ptr @failure, align 4, !tbaa !7
  tail call void @done(i32 noundef %8) #29
  ret i32 0
}

; Function Attrs: nounwind optsize uwtable
define internal void @fatal(ptr noundef %0) #0 {
  %2 = load ptr, ptr @infile, align 8, !tbaa !11
  %3 = icmp eq ptr %2, null
  %4 = load ptr, ptr @stderr, align 8, !tbaa !11
  br i1 %3, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str.125, ptr noundef %0) #35
  br label %10

7:                                                ; preds = %1
  %8 = load i32, ptr @lineno, align 4, !tbaa !7
  %9 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str.1.126, ptr noundef nonnull %2, i32 noundef %8, ptr noundef %0) #35
  br label %10

10:                                               ; preds = %7, %5
  tail call void @done(i32 noundef 1) #29
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @fatals(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) #0 {
  %10 = alloca [200 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %10) #38
  %11 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %10, ptr noundef nonnull dereferenceable(1) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) #29
  call void @fatal(ptr noundef nonnull %10) #30
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %10) #38
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #24

; Function Attrs: nofree nounwind optsize
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #24

; Function Attrs: nounwind optsize uwtable
define internal void @toomany(ptr noundef %0) #0 {
  %2 = alloca [200 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %2) #38
  %3 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) @.str.2.131, i32 noundef 32767, ptr noundef %0) #29
  call void @fatal(ptr noundef nonnull %2) #30
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %2) #38
  ret void
}

; Function Attrs: noreturn nounwind optsize uwtable
define internal void @berror(ptr noundef %0) #18 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !11
  %3 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.3.134, ptr noundef %0) #35
  tail call void @abort() #36
  unreachable
}

; Function Attrs: noreturn nounwind optsize
declare void @abort() local_unnamed_addr #15

; Function Attrs: nounwind optsize uwtable
define internal void @set_nullable() #0 {
  %1 = load i32, ptr @nvars, align 4, !tbaa !7
  %2 = tail call ptr (i32, ...) @mallocate(i32 noundef %1) #29
  %3 = load i32, ptr @ntokens, align 4, !tbaa !7
  %4 = sext i32 %3 to i64
  %5 = sub nsw i64 0, %4
  %6 = getelementptr inbounds i8, ptr %2, i64 %5
  store ptr %6, ptr @nullable, align 8, !tbaa !11
  %7 = load i32, ptr @nvars, align 4, !tbaa !7
  %8 = shl i32 %7, 1
  %9 = tail call ptr (i32, ...) @mallocate(i32 noundef %8) #29
  %10 = load i32, ptr @nrules, align 4, !tbaa !7
  %11 = shl i32 %10, 1
  %12 = add i32 %11, 2
  %13 = tail call ptr (i32, ...) @mallocate(i32 noundef %12) #29
  %14 = load i32, ptr @nvars, align 4, !tbaa !7
  %15 = shl i32 %14, 3
  %16 = tail call ptr (i32, ...) @mallocate(i32 noundef %15) #29
  %17 = load i32, ptr @ntokens, align 4, !tbaa !7
  %18 = sext i32 %17 to i64
  %19 = sub nsw i64 0, %18
  %20 = getelementptr inbounds ptr, ptr %16, i64 %19
  %21 = load i32, ptr @nitems, align 4, !tbaa !7
  %22 = load i32, ptr @nvars, align 4, !tbaa !7
  %23 = add nsw i32 %22, %21
  %24 = shl i32 %23, 4
  %25 = add i32 %24, 16
  %26 = tail call ptr (i32, ...) @mallocate(i32 noundef %25) #29
  %27 = load ptr, ptr @ritem, align 8, !tbaa !11
  %28 = load i16, ptr %27, align 2, !tbaa !13
  %29 = icmp eq i16 %28, 0
  br i1 %29, label %132, label %32

30:                                               ; preds = %89
  %.lcssa3 = phi ptr [ %91, %89 ]
  %31 = icmp ult ptr %9, %.lcssa3
  br i1 %31, label %98, label %132

32:                                               ; preds = %89, %0
  %33 = phi i16 [ %93, %89 ], [ %28, %0 ]
  %34 = phi ptr [ %92, %89 ], [ %27, %0 ]
  %35 = phi ptr [ %91, %89 ], [ %9, %0 ]
  %36 = phi ptr [ %90, %89 ], [ %26, %0 ]
  %37 = sext i16 %33 to i32
  %38 = icmp slt i16 %33, 0
  br i1 %38, label %39, label %53

39:                                               ; preds = %32
  %40 = load ptr, ptr @rlhs, align 8, !tbaa !11
  %41 = getelementptr inbounds i16, ptr %34, i64 1
  %42 = sub nsw i32 0, %37
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds i16, ptr %40, i64 %43
  %45 = load i16, ptr %44, align 2, !tbaa !13
  %46 = load ptr, ptr @nullable, align 8, !tbaa !11
  %47 = sext i16 %45 to i64
  %48 = getelementptr inbounds i8, ptr %46, i64 %47
  %49 = load i8, ptr %48, align 1, !tbaa !61
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %51, label %89

51:                                               ; preds = %39
  store i8 1, ptr %48, align 1, !tbaa !61
  %52 = getelementptr inbounds i16, ptr %35, i64 1
  store i16 %45, ptr %35, align 2, !tbaa !13
  br label %89

53:                                               ; preds = %32
  %54 = getelementptr inbounds i16, ptr %34, i64 1
  %55 = load i32, ptr @ntokens, align 4, !tbaa !7
  br label %56

56:                                               ; preds = %56, %53
  %57 = phi ptr [ %54, %53 ], [ %62, %56 ]
  %58 = phi i8 [ 0, %53 ], [ %61, %56 ]
  %59 = phi i32 [ %37, %53 ], [ %64, %56 ]
  %60 = icmp slt i32 %59, %55
  %61 = select i1 %60, i8 1, i8 %58
  %62 = getelementptr inbounds i16, ptr %57, i64 1
  %63 = load i16, ptr %57, align 2, !tbaa !13
  %64 = sext i16 %63 to i32
  %65 = icmp sgt i16 %63, 0
  br i1 %65, label %56, label %66, !llvm.loop !166

66:                                               ; preds = %56
  %.lcssa2 = phi i8 [ %61, %56 ]
  %.lcssa1 = phi ptr [ %62, %56 ]
  %.lcssa = phi i32 [ %64, %56 ]
  %67 = icmp eq i8 %.lcssa2, 0
  br i1 %67, label %68, label %89

68:                                               ; preds = %66
  %69 = icmp sgt i16 %33, 0
  br i1 %69, label %70, label %89

70:                                               ; preds = %68
  %71 = sub nsw i32 0, %.lcssa
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds i16, ptr %13, i64 %72
  %74 = trunc i32 %71 to i16
  br label %75

75:                                               ; preds = %75, %70
  %76 = phi i16 [ %33, %70 ], [ %87, %75 ]
  %77 = phi ptr [ %54, %70 ], [ %86, %75 ]
  %78 = phi ptr [ %36, %70 ], [ %85, %75 ]
  %79 = zext i16 %76 to i64
  %80 = load i16, ptr %73, align 2, !tbaa !13
  %81 = add i16 %80, 1
  store i16 %81, ptr %73, align 2, !tbaa !13
  %82 = getelementptr inbounds ptr, ptr %20, i64 %79
  %83 = load ptr, ptr %82, align 8, !tbaa !11
  store ptr %83, ptr %78, align 8, !tbaa !97
  %84 = getelementptr inbounds %struct.shorts, ptr %78, i64 0, i32 1
  store i16 %74, ptr %84, align 8, !tbaa !99
  store ptr %78, ptr %82, align 8, !tbaa !11
  %85 = getelementptr inbounds %struct.shorts, ptr %78, i64 1
  %86 = getelementptr inbounds i16, ptr %77, i64 1
  %87 = load i16, ptr %77, align 2, !tbaa !13
  %88 = icmp sgt i16 %87, 0
  br i1 %88, label %75, label %89, !llvm.loop !167

89:                                               ; preds = %75, %68, %66, %51, %39
  %90 = phi ptr [ %36, %39 ], [ %36, %51 ], [ %36, %66 ], [ %36, %68 ], [ %85, %75 ]
  %91 = phi ptr [ %35, %39 ], [ %52, %51 ], [ %35, %66 ], [ %35, %68 ], [ %35, %75 ]
  %92 = phi ptr [ %41, %39 ], [ %41, %51 ], [ %.lcssa1, %66 ], [ %54, %68 ], [ %86, %75 ]
  %93 = load i16, ptr %92, align 2, !tbaa !13
  %94 = icmp eq i16 %93, 0
  br i1 %94, label %30, label %32, !llvm.loop !168

95:                                               ; preds = %129, %98
  %96 = phi ptr [ %100, %98 ], [ %130, %129 ]
  %97 = icmp ult ptr %101, %96
  br i1 %97, label %98, label %132, !llvm.loop !169

98:                                               ; preds = %95, %30
  %99 = phi ptr [ %101, %95 ], [ %9, %30 ]
  %100 = phi ptr [ %96, %95 ], [ %.lcssa3, %30 ]
  %101 = getelementptr inbounds i16, ptr %99, i64 1
  %102 = load i16, ptr %99, align 2, !tbaa !13
  %103 = sext i16 %102 to i64
  %104 = getelementptr inbounds ptr, ptr %20, i64 %103
  %105 = load ptr, ptr %104, align 8, !tbaa !11
  %106 = icmp eq ptr %105, null
  br i1 %106, label %95, label %107

107:                                              ; preds = %129, %98
  %108 = phi ptr [ %130, %129 ], [ %100, %98 ]
  %109 = phi ptr [ %112, %129 ], [ %105, %98 ]
  %110 = getelementptr inbounds %struct.shorts, ptr %109, i64 0, i32 1
  %111 = load i16, ptr %110, align 8, !tbaa !99
  %112 = load ptr, ptr %109, align 8, !tbaa !97
  %113 = sext i16 %111 to i64
  %114 = getelementptr inbounds i16, ptr %13, i64 %113
  %115 = load i16, ptr %114, align 2, !tbaa !13
  %116 = add i16 %115, -1
  store i16 %116, ptr %114, align 2, !tbaa !13
  %117 = icmp eq i16 %116, 0
  br i1 %117, label %118, label %129

118:                                              ; preds = %107
  %119 = load ptr, ptr @rlhs, align 8, !tbaa !11
  %120 = getelementptr inbounds i16, ptr %119, i64 %113
  %121 = load i16, ptr %120, align 2, !tbaa !13
  %122 = load ptr, ptr @nullable, align 8, !tbaa !11
  %123 = sext i16 %121 to i64
  %124 = getelementptr inbounds i8, ptr %122, i64 %123
  %125 = load i8, ptr %124, align 1, !tbaa !61
  %126 = icmp eq i8 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %118
  store i8 1, ptr %124, align 1, !tbaa !61
  %128 = getelementptr inbounds i16, ptr %108, i64 1
  store i16 %121, ptr %108, align 2, !tbaa !13
  br label %129

129:                                              ; preds = %127, %118, %107
  %130 = phi ptr [ %108, %118 ], [ %128, %127 ], [ %108, %107 ]
  %131 = icmp eq ptr %112, null
  br i1 %131, label %95, label %107, !llvm.loop !170

132:                                              ; preds = %95, %30, %0
  %133 = icmp eq ptr %9, null
  br i1 %133, label %135, label %134

134:                                              ; preds = %132
  tail call void @free(ptr noundef nonnull %9) #29
  br label %135

135:                                              ; preds = %134, %132
  %136 = icmp eq ptr %13, null
  br i1 %136, label %138, label %137

137:                                              ; preds = %135
  tail call void @free(ptr noundef nonnull %13) #29
  br label %138

138:                                              ; preds = %137, %135
  %139 = icmp eq ptr %16, null
  br i1 %139, label %144, label %140

140:                                              ; preds = %138
  %141 = load i32, ptr @ntokens, align 4, !tbaa !7
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds ptr, ptr %20, i64 %142
  tail call void @free(ptr noundef %143) #29
  br label %144

144:                                              ; preds = %140, %138
  %145 = icmp eq ptr %26, null
  br i1 %145, label %147, label %146

146:                                              ; preds = %144
  tail call void @free(ptr noundef nonnull %26) #29
  br label %147

147:                                              ; preds = %146, %144
  ret void
}

; Function Attrs: nofree nounwind optsize uwtable
define internal void @output_headers() #12 {
  %1 = load i32, ptr @semantic_parser, align 4, !tbaa !7
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %10, label %3

3:                                                ; preds = %0
  %4 = load ptr, ptr @fguard, align 8, !tbaa !11
  %5 = load ptr, ptr @attrsfile, align 8, !tbaa !11
  %6 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str.139, ptr noundef %5) #30
  %7 = load i32, ptr @semantic_parser, align 4, !tbaa !7
  %8 = icmp eq i32 %7, 0
  %9 = select i1 %8, ptr @.str.2.140, ptr @.str.1.141
  br label %10

10:                                               ; preds = %3, %0
  %11 = phi ptr [ %9, %3 ], [ @.str.2.140, %0 ]
  %12 = load ptr, ptr @faction, align 8, !tbaa !11
  %13 = load ptr, ptr @attrsfile, align 8, !tbaa !11
  %14 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %12, ptr noundef nonnull %11, ptr noundef %13) #30
  ret void
}

; Function Attrs: nofree nounwind optsize uwtable
define internal void @output_trailers() #12 {
  %1 = load i32, ptr @semantic_parser, align 4, !tbaa !7
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %8, label %3

3:                                                ; preds = %0
  %4 = load ptr, ptr @fguard, align 8, !tbaa !11
  %5 = tail call i64 @fwrite(ptr nonnull @.str.3.142, i64 9, i64 1, ptr %4)
  %6 = load ptr, ptr @faction, align 8, !tbaa !11
  %7 = tail call i64 @fwrite(ptr nonnull @.str.3.142, i64 9, i64 1, ptr %6)
  br label %11

8:                                                ; preds = %0
  %9 = load ptr, ptr @faction, align 8, !tbaa !11
  %10 = tail call i64 @fwrite(ptr nonnull @.str.4.143, i64 3, i64 1, ptr %9)
  br label %11

11:                                               ; preds = %8, %3
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @output() #0 {
  %1 = load i32, ptr @debugflag, align 4, !tbaa !7
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %6, label %3

3:                                                ; preds = %0
  %4 = load ptr, ptr @ftable, align 8, !tbaa !11
  %5 = tail call i64 @fwrite(ptr nonnull @.str.5.146, i64 16, i64 1, ptr %4)
  br label %6

6:                                                ; preds = %3, %0
  %7 = load i32, ptr @semantic_parser, align 4, !tbaa !7
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %6
  %10 = load ptr, ptr @ftable, align 8, !tbaa !11
  %11 = load ptr, ptr @attrsfile, align 8, !tbaa !11
  %12 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef nonnull @.str.6.147, ptr noundef %11) #30
  br label %13

13:                                               ; preds = %9, %6
  %14 = load ptr, ptr @ftable, align 8, !tbaa !11
  %15 = tail call i64 @fwrite(ptr nonnull @.str.7.148, i64 20, i64 1, ptr %14)
  %16 = load ptr, ptr @ftable, align 8, !tbaa !11
  %17 = tail call i64 @fwrite(ptr nonnull @.str.8.149, i64 39, i64 1, ptr %16)
  tail call void @free_itemsets() #30
  tail call void @output_defines() #30
  tail call void @output_token_translations() #30
  %18 = load i32, ptr @semantic_parser, align 4, !tbaa !7
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %13
  tail call void @output_gram() #30
  br label %21

21:                                               ; preds = %20, %13
  %22 = load ptr, ptr @ritem, align 8, !tbaa !11
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %21
  tail call void @free(ptr noundef nonnull %22) #29
  br label %25

25:                                               ; preds = %24, %21
  %26 = load i32, ptr @semantic_parser, align 4, !tbaa !7
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %25
  tail call void @output_stos() #30
  br label %29

29:                                               ; preds = %28, %25
  tail call void @output_rule_data() #30
  tail call void @output_actions() #30
  tail call void @output_parser() #30
  tail call void @output_program() #30
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @free_itemsets() #0 {
  %1 = load ptr, ptr @state_table, align 8, !tbaa !11
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @free(ptr noundef nonnull %1) #29
  br label %4

4:                                                ; preds = %3, %0
  %5 = load ptr, ptr @first_state, align 8, !tbaa !11
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %7, %4
  %8 = phi ptr [ %9, %7 ], [ %5, %4 ]
  %9 = load ptr, ptr %8, align 8, !tbaa !20
  tail call void @free(ptr noundef nonnull %8) #29
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %7, !llvm.loop !171

11:                                               ; preds = %7, %4
  ret void
}

; Function Attrs: nofree nounwind optsize uwtable
define internal void @output_defines() #12 {
  %1 = load ptr, ptr @ftable, align 8, !tbaa !11
  %2 = load i32, ptr @final_state, align 4, !tbaa !7
  %3 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.29, i32 noundef %2) #30
  %4 = load ptr, ptr @ftable, align 8, !tbaa !11
  %5 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str.30, i32 noundef -32768) #30
  %6 = load ptr, ptr @ftable, align 8, !tbaa !11
  %7 = load i32, ptr @ntokens, align 4, !tbaa !7
  %8 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef nonnull @.str.31.164, i32 noundef %7) #30
  ret void
}

; Function Attrs: nofree nounwind optsize uwtable
define internal void @output_token_translations() #12 {
  %1 = load i32, ptr @translations, align 4, !tbaa !7
  %2 = icmp eq i32 %1, 0
  %3 = load ptr, ptr @ftable, align 8, !tbaa !11
  br i1 %2, label %44, label %4

4:                                                ; preds = %0
  %5 = load i32, ptr @max_user_token_number, align 4, !tbaa !7
  %6 = load i32, ptr @nsyms, align 4, !tbaa !7
  %7 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef nonnull @.str.9.160, i32 noundef %5, i32 noundef %6) #30
  %8 = load i32, ptr @ntokens, align 4, !tbaa !7
  %9 = icmp slt i32 %8, 127
  %10 = load ptr, ptr @ftable, align 8, !tbaa !11
  br i1 %9, label %11, label %13

11:                                               ; preds = %4
  %12 = tail call i64 @fwrite(ptr nonnull @.str.10.161, i64 42, i64 1, ptr %10)
  br label %15

13:                                               ; preds = %4
  %14 = tail call i64 @fwrite(ptr nonnull @.str.11.162, i64 43, i64 1, ptr %10)
  br label %15

15:                                               ; preds = %13, %11
  %16 = load i32, ptr @max_user_token_number, align 4, !tbaa !7
  %17 = icmp slt i32 %16, 1
  br i1 %17, label %41, label %18

18:                                               ; preds = %29, %15
  %19 = phi i64 [ %37, %29 ], [ 1, %15 ]
  %20 = phi i32 [ %30, %29 ], [ 10, %15 ]
  %21 = load ptr, ptr @ftable, align 8, !tbaa !11
  %22 = tail call i32 @putc(i32 noundef 44, ptr noundef %21) #30
  %23 = icmp sgt i32 %20, 9
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = load ptr, ptr @ftable, align 8, !tbaa !11
  %26 = tail call i32 @putc(i32 noundef 10, ptr noundef %25) #30
  br label %29

27:                                               ; preds = %18
  %28 = add nuw nsw i32 %20, 1
  br label %29

29:                                               ; preds = %27, %24
  %30 = phi i32 [ 1, %24 ], [ %28, %27 ]
  %31 = load ptr, ptr @ftable, align 8, !tbaa !11
  %32 = load ptr, ptr @token_translations, align 8, !tbaa !11
  %33 = getelementptr inbounds i16, ptr %32, i64 %19
  %34 = load i16, ptr %33, align 2, !tbaa !13
  %35 = sext i16 %34 to i32
  %36 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %31, ptr noundef nonnull @.str.12.151, i32 noundef %35) #30
  %37 = add nuw nsw i64 %19, 1
  %38 = load i32, ptr @max_user_token_number, align 4, !tbaa !7
  %39 = sext i32 %38 to i64
  %40 = icmp slt i64 %19, %39
  br i1 %40, label %18, label %41, !llvm.loop !172

41:                                               ; preds = %29, %15
  %42 = load ptr, ptr @ftable, align 8, !tbaa !11
  %43 = tail call i64 @fwrite(ptr nonnull @.str.13.152, i64 4, i64 1, ptr %42)
  br label %46

44:                                               ; preds = %0
  %45 = tail call i64 @fwrite(ptr nonnull @.str.14.163, i64 28, i64 1, ptr %3)
  br label %46

46:                                               ; preds = %44, %41
  ret void
}

; Function Attrs: nofree nounwind optsize uwtable
define internal void @output_gram() #12 {
  %1 = load ptr, ptr @ftable, align 8, !tbaa !11
  %2 = tail call i64 @fwrite(ptr nonnull @.str.15.157, i64 38, i64 1, ptr %1)
  %3 = load i32, ptr @nrules, align 4, !tbaa !7
  %4 = icmp slt i32 %3, 1
  br i1 %4, label %28, label %5

5:                                                ; preds = %16, %0
  %6 = phi i64 [ %24, %16 ], [ 1, %0 ]
  %7 = phi i32 [ %17, %16 ], [ 10, %0 ]
  %8 = load ptr, ptr @ftable, align 8, !tbaa !11
  %9 = tail call i32 @putc(i32 noundef 44, ptr noundef %8) #30
  %10 = icmp sgt i32 %7, 9
  br i1 %10, label %11, label %14

11:                                               ; preds = %5
  %12 = load ptr, ptr @ftable, align 8, !tbaa !11
  %13 = tail call i32 @putc(i32 noundef 10, ptr noundef %12) #30
  br label %16

14:                                               ; preds = %5
  %15 = add nuw nsw i32 %7, 1
  br label %16

16:                                               ; preds = %14, %11
  %17 = phi i32 [ 1, %11 ], [ %15, %14 ]
  %18 = load ptr, ptr @ftable, align 8, !tbaa !11
  %19 = load ptr, ptr @rrhs, align 8, !tbaa !11
  %20 = getelementptr inbounds i16, ptr %19, i64 %6
  %21 = load i16, ptr %20, align 2, !tbaa !13
  %22 = sext i16 %21 to i32
  %23 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %18, ptr noundef nonnull @.str.12.151, i32 noundef %22) #30
  %24 = add nuw nsw i64 %6, 1
  %25 = load i32, ptr @nrules, align 4, !tbaa !7
  %26 = sext i32 %25 to i64
  %27 = icmp slt i64 %6, %26
  br i1 %27, label %5, label %28, !llvm.loop !173

28:                                               ; preds = %16, %0
  %29 = load ptr, ptr @ftable, align 8, !tbaa !11
  %30 = load ptr, ptr @ritem, align 8, !tbaa !11
  %31 = load i16, ptr %30, align 2, !tbaa !13
  %32 = sext i16 %31 to i32
  %33 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %29, ptr noundef nonnull @.str.16.158, i32 noundef %32) #30
  %34 = load ptr, ptr @ritem, align 8, !tbaa !11
  %35 = getelementptr inbounds i16, ptr %34, i64 1
  %36 = load i16, ptr %35, align 2, !tbaa !13
  %37 = icmp eq i16 %36, 0
  br i1 %37, label %64, label %38

38:                                               ; preds = %60, %28
  %39 = phi ptr [ %61, %60 ], [ %35, %28 ]
  %40 = phi i32 [ %50, %60 ], [ 10, %28 ]
  %41 = load ptr, ptr @ftable, align 8, !tbaa !11
  %42 = tail call i32 @putc(i32 noundef 44, ptr noundef %41) #30
  %43 = icmp sgt i32 %40, 9
  br i1 %43, label %44, label %47

44:                                               ; preds = %38
  %45 = load ptr, ptr @ftable, align 8, !tbaa !11
  %46 = tail call i32 @putc(i32 noundef 10, ptr noundef %45) #30
  br label %49

47:                                               ; preds = %38
  %48 = add nuw nsw i32 %40, 1
  br label %49

49:                                               ; preds = %47, %44
  %50 = phi i32 [ 1, %44 ], [ %48, %47 ]
  %51 = load i16, ptr %39, align 2, !tbaa !13
  %52 = icmp sgt i16 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %49
  %54 = zext i16 %51 to i32
  %55 = load ptr, ptr @ftable, align 8, !tbaa !11
  %56 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %55, ptr noundef nonnull @.str.12.151, i32 noundef %54) #30
  br label %60

57:                                               ; preds = %49
  %58 = load ptr, ptr @ftable, align 8, !tbaa !11
  %59 = tail call i64 @fwrite(ptr nonnull @.str.17.159, i64 6, i64 1, ptr %58)
  br label %60

60:                                               ; preds = %57, %53
  %61 = getelementptr inbounds i16, ptr %39, i64 1
  %62 = load i16, ptr %61, align 2, !tbaa !13
  %63 = icmp eq i16 %62, 0
  br i1 %63, label %64, label %38, !llvm.loop !174

64:                                               ; preds = %60, %28
  %65 = load ptr, ptr @ftable, align 8, !tbaa !11
  %66 = tail call i64 @fwrite(ptr nonnull @.str.13.152, i64 4, i64 1, ptr %65)
  ret void
}

; Function Attrs: nofree nounwind optsize uwtable
define internal void @output_stos() #12 {
  %1 = load ptr, ptr @ftable, align 8, !tbaa !11
  %2 = tail call i64 @fwrite(ptr nonnull @.str.18.156, i64 38, i64 1, ptr %1)
  %3 = load i32, ptr @nstates, align 4, !tbaa !7
  %4 = icmp sgt i32 %3, 1
  br i1 %4, label %5, label %28

5:                                                ; preds = %16, %0
  %6 = phi i64 [ %24, %16 ], [ 1, %0 ]
  %7 = phi i32 [ %17, %16 ], [ 10, %0 ]
  %8 = load ptr, ptr @ftable, align 8, !tbaa !11
  %9 = tail call i32 @putc(i32 noundef 44, ptr noundef %8) #30
  %10 = icmp sgt i32 %7, 9
  br i1 %10, label %11, label %14

11:                                               ; preds = %5
  %12 = load ptr, ptr @ftable, align 8, !tbaa !11
  %13 = tail call i32 @putc(i32 noundef 10, ptr noundef %12) #30
  br label %16

14:                                               ; preds = %5
  %15 = add nuw nsw i32 %7, 1
  br label %16

16:                                               ; preds = %14, %11
  %17 = phi i32 [ 1, %11 ], [ %15, %14 ]
  %18 = load ptr, ptr @ftable, align 8, !tbaa !11
  %19 = load ptr, ptr @accessing_symbol, align 8, !tbaa !11
  %20 = getelementptr inbounds i16, ptr %19, i64 %6
  %21 = load i16, ptr %20, align 2, !tbaa !13
  %22 = sext i16 %21 to i32
  %23 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %18, ptr noundef nonnull @.str.12.151, i32 noundef %22) #30
  %24 = add nuw nsw i64 %6, 1
  %25 = load i32, ptr @nstates, align 4, !tbaa !7
  %26 = sext i32 %25 to i64
  %27 = icmp slt i64 %24, %26
  br i1 %27, label %5, label %28, !llvm.loop !175

28:                                               ; preds = %16, %0
  %29 = load ptr, ptr @ftable, align 8, !tbaa !11
  %30 = tail call i64 @fwrite(ptr nonnull @.str.13.152, i64 4, i64 1, ptr %29)
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @output_rule_data() #0 {
  %1 = load ptr, ptr @ftable, align 8, !tbaa !11
  %2 = tail call i64 @fwrite(ptr nonnull @.str.19.153, i64 39, i64 1, ptr %1)
  %3 = load i32, ptr @nrules, align 4, !tbaa !7
  %4 = icmp slt i32 %3, 1
  br i1 %4, label %28, label %5

5:                                                ; preds = %16, %0
  %6 = phi i64 [ %24, %16 ], [ 1, %0 ]
  %7 = phi i32 [ %17, %16 ], [ 10, %0 ]
  %8 = load ptr, ptr @ftable, align 8, !tbaa !11
  %9 = tail call i32 @putc(i32 noundef 44, ptr noundef %8) #30
  %10 = icmp sgt i32 %7, 9
  br i1 %10, label %11, label %14

11:                                               ; preds = %5
  %12 = load ptr, ptr @ftable, align 8, !tbaa !11
  %13 = tail call i32 @putc(i32 noundef 10, ptr noundef %12) #30
  br label %16

14:                                               ; preds = %5
  %15 = add nuw nsw i32 %7, 1
  br label %16

16:                                               ; preds = %14, %11
  %17 = phi i32 [ 1, %11 ], [ %15, %14 ]
  %18 = load ptr, ptr @ftable, align 8, !tbaa !11
  %19 = load ptr, ptr @rline, align 8, !tbaa !11
  %20 = getelementptr inbounds i16, ptr %19, i64 %6
  %21 = load i16, ptr %20, align 2, !tbaa !13
  %22 = sext i16 %21 to i32
  %23 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %18, ptr noundef nonnull @.str.12.151, i32 noundef %22) #30
  %24 = add nuw nsw i64 %6, 1
  %25 = load i32, ptr @nrules, align 4, !tbaa !7
  %26 = sext i32 %25 to i64
  %27 = icmp slt i64 %6, %26
  br i1 %27, label %5, label %28, !llvm.loop !176

28:                                               ; preds = %16, %0
  %29 = load ptr, ptr @ftable, align 8, !tbaa !11
  %30 = tail call i64 @fwrite(ptr nonnull @.str.20.154, i64 50, i64 1, ptr %29)
  %31 = load i32, ptr @ntokens, align 4, !tbaa !7
  %32 = icmp slt i32 %31, 1
  br i1 %32, label %88, label %33

33:                                               ; preds = %81, %28
  %34 = phi i64 [ %84, %81 ], [ 1, %28 ]
  %35 = phi i32 [ %45, %81 ], [ 10, %28 ]
  %36 = load ptr, ptr @ftable, align 8, !tbaa !11
  %37 = tail call i32 @putc(i32 noundef 44, ptr noundef %36) #30
  %38 = icmp sgt i32 %35, 9
  br i1 %38, label %39, label %42

39:                                               ; preds = %33
  %40 = load ptr, ptr @ftable, align 8, !tbaa !11
  %41 = tail call i32 @putc(i32 noundef 10, ptr noundef %40) #30
  br label %44

42:                                               ; preds = %33
  %43 = add nuw nsw i32 %35, 1
  br label %44

44:                                               ; preds = %42, %39
  %45 = phi i32 [ 1, %39 ], [ %43, %42 ]
  %46 = load ptr, ptr @ftable, align 8, !tbaa !11
  %47 = tail call i32 @putc(i32 noundef 34, ptr noundef %46) #30
  %48 = load ptr, ptr @tags, align 8, !tbaa !11
  %49 = getelementptr inbounds ptr, ptr %48, i64 %34
  %50 = load ptr, ptr %49, align 8, !tbaa !11
  %51 = load i8, ptr %50, align 1, !tbaa !61
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %81, label %53

53:                                               ; preds = %77, %44
  %54 = phi i8 [ %79, %77 ], [ %51, %44 ]
  %55 = phi ptr [ %78, %77 ], [ %50, %44 ]
  %56 = sext i8 %54 to i32
  switch i8 %54, label %69 [
    i8 34, label %57
    i8 92, label %57
    i8 10, label %60
    i8 9, label %63
    i8 8, label %66
  ]

57:                                               ; preds = %53, %53
  %58 = load ptr, ptr @ftable, align 8, !tbaa !11
  %59 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %58, ptr noundef nonnull @.str.21.155, i32 noundef %56) #30
  br label %77

60:                                               ; preds = %53
  %61 = load ptr, ptr @ftable, align 8, !tbaa !11
  %62 = tail call i64 @fwrite(ptr nonnull @.str.22, i64 2, i64 1, ptr %61)
  br label %77

63:                                               ; preds = %53
  %64 = load ptr, ptr @ftable, align 8, !tbaa !11
  %65 = tail call i64 @fwrite(ptr nonnull @.str.23, i64 2, i64 1, ptr %64)
  br label %77

66:                                               ; preds = %53
  %67 = load ptr, ptr @ftable, align 8, !tbaa !11
  %68 = tail call i64 @fwrite(ptr nonnull @.str.24, i64 2, i64 1, ptr %67)
  br label %77

69:                                               ; preds = %53
  %70 = add i8 %54, -127
  %71 = icmp ult i8 %70, -95
  %72 = load ptr, ptr @ftable, align 8, !tbaa !11
  br i1 %71, label %73, label %75

73:                                               ; preds = %69
  %74 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %72, ptr noundef nonnull @.str.25, i32 noundef %56) #30
  br label %77

75:                                               ; preds = %69
  %76 = tail call i32 @putc(i32 noundef %56, ptr noundef %72) #30
  br label %77

77:                                               ; preds = %75, %73, %66, %63, %60, %57
  %78 = getelementptr inbounds i8, ptr %55, i64 1
  %79 = load i8, ptr %78, align 1, !tbaa !61
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %81, label %53, !llvm.loop !177

81:                                               ; preds = %77, %44
  %82 = load ptr, ptr @ftable, align 8, !tbaa !11
  %83 = tail call i32 @putc(i32 noundef 34, ptr noundef %82) #30
  %84 = add nuw nsw i64 %34, 1
  %85 = load i32, ptr @ntokens, align 4, !tbaa !7
  %86 = sext i32 %85 to i64
  %87 = icmp slt i64 %34, %86
  br i1 %87, label %33, label %88, !llvm.loop !178

88:                                               ; preds = %81, %28
  %89 = load ptr, ptr @ftable, align 8, !tbaa !11
  %90 = tail call i64 @fwrite(ptr nonnull @.str.26, i64 40, i64 1, ptr %89)
  %91 = load i32, ptr @nrules, align 4, !tbaa !7
  %92 = icmp slt i32 %91, 1
  br i1 %92, label %116, label %93

93:                                               ; preds = %104, %88
  %94 = phi i64 [ %112, %104 ], [ 1, %88 ]
  %95 = phi i32 [ %105, %104 ], [ 10, %88 ]
  %96 = load ptr, ptr @ftable, align 8, !tbaa !11
  %97 = tail call i32 @putc(i32 noundef 44, ptr noundef %96) #30
  %98 = icmp sgt i32 %95, 9
  br i1 %98, label %99, label %102

99:                                               ; preds = %93
  %100 = load ptr, ptr @ftable, align 8, !tbaa !11
  %101 = tail call i32 @putc(i32 noundef 10, ptr noundef %100) #30
  br label %104

102:                                              ; preds = %93
  %103 = add nuw nsw i32 %95, 1
  br label %104

104:                                              ; preds = %102, %99
  %105 = phi i32 [ 1, %99 ], [ %103, %102 ]
  %106 = load ptr, ptr @ftable, align 8, !tbaa !11
  %107 = load ptr, ptr @rlhs, align 8, !tbaa !11
  %108 = getelementptr inbounds i16, ptr %107, i64 %94
  %109 = load i16, ptr %108, align 2, !tbaa !13
  %110 = sext i16 %109 to i32
  %111 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %106, ptr noundef nonnull @.str.12.151, i32 noundef %110) #30
  %112 = add nuw nsw i64 %94, 1
  %113 = load i32, ptr @nrules, align 4, !tbaa !7
  %114 = sext i32 %113 to i64
  %115 = icmp slt i64 %94, %114
  br i1 %115, label %93, label %116, !llvm.loop !179

116:                                              ; preds = %104, %88
  %117 = load ptr, ptr @rlhs, align 8, !tbaa !11
  %118 = getelementptr inbounds i16, ptr %117, i64 1
  tail call void @free(ptr noundef nonnull %118) #29
  %119 = load ptr, ptr @ftable, align 8, !tbaa !11
  %120 = tail call i64 @fwrite(ptr nonnull @.str.27, i64 40, i64 1, ptr %119)
  %121 = load i32, ptr @nrules, align 4, !tbaa !7
  %122 = icmp sgt i32 %121, 1
  br i1 %122, label %126, label %123

123:                                              ; preds = %116
  %124 = load ptr, ptr @ftable, align 8, !tbaa !11
  %125 = tail call i32 @putc(i32 noundef 44, ptr noundef %124) #30
  br label %158

126:                                              ; preds = %137, %116
  %127 = phi i64 [ %141, %137 ], [ 1, %116 ]
  %128 = phi i32 [ %138, %137 ], [ 10, %116 ]
  %129 = load ptr, ptr @ftable, align 8, !tbaa !11
  %130 = tail call i32 @putc(i32 noundef 44, ptr noundef %129) #30
  %131 = icmp sgt i32 %128, 9
  br i1 %131, label %132, label %135

132:                                              ; preds = %126
  %133 = load ptr, ptr @ftable, align 8, !tbaa !11
  %134 = tail call i32 @putc(i32 noundef 10, ptr noundef %133) #30
  br label %137

135:                                              ; preds = %126
  %136 = add nuw nsw i32 %128, 1
  br label %137

137:                                              ; preds = %135, %132
  %138 = phi i32 [ 1, %132 ], [ %136, %135 ]
  %139 = load ptr, ptr @ftable, align 8, !tbaa !11
  %140 = load ptr, ptr @rrhs, align 8, !tbaa !11
  %141 = add nuw nsw i64 %127, 1
  %142 = getelementptr inbounds i16, ptr %140, i64 %141
  %143 = load i16, ptr %142, align 2, !tbaa !13
  %144 = sext i16 %143 to i32
  %145 = getelementptr inbounds i16, ptr %140, i64 %127
  %146 = load i16, ptr %145, align 2, !tbaa !13
  %147 = xor i16 %146, -1
  %148 = sext i16 %147 to i32
  %149 = add nsw i32 %148, %144
  %150 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %139, ptr noundef nonnull @.str.12.151, i32 noundef %149) #30
  %151 = load i32, ptr @nrules, align 4, !tbaa !7
  %152 = sext i32 %151 to i64
  %153 = icmp slt i64 %141, %152
  br i1 %153, label %126, label %154, !llvm.loop !180

154:                                              ; preds = %137
  %.lcssa = phi i32 [ %138, %137 ]
  %155 = load ptr, ptr @ftable, align 8, !tbaa !11
  %156 = tail call i32 @putc(i32 noundef 44, ptr noundef %155) #30
  %157 = icmp sgt i32 %.lcssa, 9
  br i1 %157, label %158, label %161

158:                                              ; preds = %154, %123
  %159 = load ptr, ptr @ftable, align 8, !tbaa !11
  %160 = tail call i32 @putc(i32 noundef 10, ptr noundef %159) #30
  br label %161

161:                                              ; preds = %158, %154
  %162 = load ptr, ptr @ftable, align 8, !tbaa !11
  %163 = load i32, ptr @nitems, align 4, !tbaa !7
  %164 = load ptr, ptr @rrhs, align 8, !tbaa !11
  %165 = load i32, ptr @nrules, align 4, !tbaa !7
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i16, ptr %164, i64 %166
  %168 = load i16, ptr %167, align 2, !tbaa !13
  %169 = xor i16 %168, -1
  %170 = sext i16 %169 to i32
  %171 = add i32 %163, %170
  %172 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %162, ptr noundef nonnull @.str.28, i32 noundef %171) #30
  %173 = load ptr, ptr @rrhs, align 8, !tbaa !11
  %174 = getelementptr inbounds i16, ptr %173, i64 1
  tail call void @free(ptr noundef nonnull %174) #29
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @output_actions() #0 {
  %1 = load i32, ptr @nstates, align 4, !tbaa !7
  %2 = load i32, ptr @nvars, align 4, !tbaa !7
  %3 = add nsw i32 %2, %1
  store i32 %3, ptr @nvectors, align 4, !tbaa !7
  %4 = shl i32 %3, 3
  %5 = tail call ptr (i32, ...) @mallocate(i32 noundef %4) #29
  store ptr %5, ptr @froms, align 8, !tbaa !11
  %6 = load i32, ptr @nvectors, align 4, !tbaa !7
  %7 = shl i32 %6, 3
  %8 = tail call ptr (i32, ...) @mallocate(i32 noundef %7) #29
  store ptr %8, ptr @tos, align 8, !tbaa !11
  %9 = load i32, ptr @nvectors, align 4, !tbaa !7
  %10 = shl i32 %9, 1
  %11 = tail call ptr (i32, ...) @mallocate(i32 noundef %10) #29
  store ptr %11, ptr @tally, align 8, !tbaa !11
  %12 = load i32, ptr @nvectors, align 4, !tbaa !7
  %13 = shl i32 %12, 1
  %14 = tail call ptr (i32, ...) @mallocate(i32 noundef %13) #29
  store ptr %14, ptr @width, align 8, !tbaa !11
  tail call void @token_actions() #30
  tail call void @free_shifts() #30
  tail call void @free_reductions() #30
  %15 = load ptr, ptr @lookaheads, align 8, !tbaa !11
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %0
  tail call void @free(ptr noundef nonnull %15) #29
  br label %18

18:                                               ; preds = %17, %0
  %19 = load ptr, ptr @LA, align 8, !tbaa !11
  %20 = icmp eq ptr %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %18
  tail call void @free(ptr noundef nonnull %19) #29
  br label %22

22:                                               ; preds = %21, %18
  %23 = load ptr, ptr @LAruleno, align 8, !tbaa !11
  %24 = icmp eq ptr %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %22
  tail call void @free(ptr noundef nonnull %23) #29
  br label %26

26:                                               ; preds = %25, %22
  %27 = load ptr, ptr @accessing_symbol, align 8, !tbaa !11
  %28 = icmp eq ptr %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %26
  tail call void @free(ptr noundef nonnull %27) #29
  br label %30

30:                                               ; preds = %29, %26
  tail call void @goto_actions() #30
  %31 = load ptr, ptr @goto_map, align 8, !tbaa !11
  %32 = icmp eq ptr %31, null
  br i1 %32, label %37, label %33

33:                                               ; preds = %30
  %34 = load i32, ptr @ntokens, align 4, !tbaa !7
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i16, ptr %31, i64 %35
  tail call void @free(ptr noundef %36) #29
  br label %37

37:                                               ; preds = %33, %30
  %38 = load ptr, ptr @from_state, align 8, !tbaa !11
  %39 = icmp eq ptr %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %37
  tail call void @free(ptr noundef nonnull %38) #29
  br label %41

41:                                               ; preds = %40, %37
  %42 = load ptr, ptr @to_state, align 8, !tbaa !11
  %43 = icmp eq ptr %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %41
  tail call void @free(ptr noundef nonnull %42) #29
  br label %45

45:                                               ; preds = %44, %41
  tail call void @sort_actions() #30
  tail call void @pack_table() #30
  tail call void @output_base() #30
  tail call void @output_table() #30
  tail call void @output_check() #30
  ret void
}

; Function Attrs: nofree nounwind optsize uwtable
define internal void @output_parser() #12 {
  %1 = load i32, ptr @pure_parser, align 4, !tbaa !7
  %2 = icmp eq i32 %1, 0
  %3 = load ptr, ptr @ftable, align 8, !tbaa !11
  br i1 %2, label %6, label %4

4:                                                ; preds = %0
  %5 = tail call i64 @fwrite(ptr nonnull @.str.41, i64 20, i64 1, ptr %3)
  br label %8

6:                                                ; preds = %0
  %7 = tail call i64 @fwrite(ptr nonnull @.str.42, i64 18, i64 1, ptr %3)
  br label %8

8:                                                ; preds = %6, %4
  %9 = load ptr, ptr @fparser, align 8, !tbaa !11
  %10 = icmp eq ptr %9, null
  br i1 %10, label %89, label %11

11:                                               ; preds = %8
  %12 = tail call i32 @feof(ptr noundef nonnull %9) #29
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %89

14:                                               ; preds = %11
  %15 = load ptr, ptr @fparser, align 8, !tbaa !11
  %16 = tail call i32 @getc(ptr noundef %15) #30
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %89, label %18

18:                                               ; preds = %85, %14
  %19 = phi i32 [ %87, %85 ], [ %16, %14 ]
  %20 = load i32, ptr @nolinesflag, align 4, !tbaa !7
  %21 = icmp ne i32 %20, 0
  %22 = icmp eq i32 %19, 10
  %23 = and i1 %22, %21
  br i1 %23, label %24, label %67

24:                                               ; preds = %18
  %25 = load ptr, ptr @ftable, align 8, !tbaa !11
  %26 = tail call i32 @putc(i32 noundef 10, ptr noundef %25) #30
  %27 = load ptr, ptr @fparser, align 8, !tbaa !11
  %28 = tail call i32 @getc(ptr noundef %27) #30
  %29 = icmp eq i32 %28, 35
  br i1 %29, label %30, label %67

30:                                               ; preds = %24
  %31 = load ptr, ptr @fparser, align 8, !tbaa !11
  %32 = tail call i32 @getc(ptr noundef %31) #30
  %33 = icmp eq i32 %32, 108
  br i1 %33, label %34, label %64

34:                                               ; preds = %30
  %35 = load ptr, ptr @fparser, align 8, !tbaa !11
  %36 = tail call i32 @getc(ptr noundef %35) #30
  %37 = icmp eq i32 %36, 105
  br i1 %37, label %38, label %61

38:                                               ; preds = %34
  %39 = load ptr, ptr @fparser, align 8, !tbaa !11
  %40 = tail call i32 @getc(ptr noundef %39) #30
  %41 = icmp eq i32 %40, 110
  br i1 %41, label %42, label %58

42:                                               ; preds = %38
  %43 = load ptr, ptr @fparser, align 8, !tbaa !11
  %44 = tail call i32 @getc(ptr noundef %43) #30
  %45 = icmp eq i32 %44, 101
  br i1 %45, label %46, label %55

46:                                               ; preds = %46, %42
  %47 = load ptr, ptr @fparser, align 8, !tbaa !11
  %48 = tail call i32 @getc(ptr noundef %47) #30
  %49 = icmp eq i32 %48, 10
  %50 = icmp slt i32 %48, 0
  %51 = or i1 %49, %50
  br i1 %51, label %52, label %46

52:                                               ; preds = %46
  %53 = load ptr, ptr @fparser, align 8, !tbaa !11
  %54 = tail call i32 @getc(ptr noundef %53) #30
  br label %67

55:                                               ; preds = %42
  %56 = load ptr, ptr @ftable, align 8, !tbaa !11
  %57 = tail call i64 @fwrite(ptr nonnull @.str.43, i64 4, i64 1, ptr %56)
  br label %67

58:                                               ; preds = %38
  %59 = load ptr, ptr @ftable, align 8, !tbaa !11
  %60 = tail call i64 @fwrite(ptr nonnull @.str.44, i64 3, i64 1, ptr %59)
  br label %67

61:                                               ; preds = %34
  %62 = load ptr, ptr @ftable, align 8, !tbaa !11
  %63 = tail call i64 @fwrite(ptr nonnull @.str.45.150, i64 2, i64 1, ptr %62)
  br label %67

64:                                               ; preds = %30
  %65 = load ptr, ptr @ftable, align 8, !tbaa !11
  %66 = tail call i32 @fputc(i32 35, ptr %65)
  br label %67

67:                                               ; preds = %64, %61, %58, %55, %52, %24, %18
  %68 = phi i32 [ %54, %52 ], [ %44, %55 ], [ %40, %58 ], [ %36, %61 ], [ %32, %64 ], [ %28, %24 ], [ %19, %18 ]
  %69 = icmp eq i32 %68, 36
  br i1 %69, label %70, label %82

70:                                               ; preds = %67
  %71 = load ptr, ptr @faction, align 8, !tbaa !11
  tail call void @rewind(ptr noundef %71) #30
  %72 = load ptr, ptr @faction, align 8, !tbaa !11
  %73 = tail call i32 @getc(ptr noundef %72) #30
  %74 = icmp eq i32 %73, -1
  br i1 %74, label %85, label %75

75:                                               ; preds = %75, %70
  %76 = phi i32 [ %80, %75 ], [ %73, %70 ]
  %77 = load ptr, ptr @ftable, align 8, !tbaa !11
  %78 = tail call i32 @putc(i32 noundef %76, ptr noundef %77) #30
  %79 = load ptr, ptr @faction, align 8, !tbaa !11
  %80 = tail call i32 @getc(ptr noundef %79) #30
  %81 = icmp eq i32 %80, -1
  br i1 %81, label %85, label %75, !llvm.loop !181

82:                                               ; preds = %67
  %83 = load ptr, ptr @ftable, align 8, !tbaa !11
  %84 = tail call i32 @putc(i32 noundef %68, ptr noundef %83) #30
  br label %85

85:                                               ; preds = %82, %75, %70
  %86 = load ptr, ptr @fparser, align 8, !tbaa !11
  %87 = tail call i32 @getc(ptr noundef %86) #30
  %88 = icmp eq i32 %87, -1
  br i1 %88, label %89, label %18, !llvm.loop !182

89:                                               ; preds = %85, %14, %11, %8
  ret void
}

; Function Attrs: nofree nounwind optsize uwtable
define internal void @output_program() #12 {
  %1 = load ptr, ptr @ftable, align 8, !tbaa !11
  %2 = load i32, ptr @lineno, align 4, !tbaa !7
  %3 = load ptr, ptr @infile, align 8, !tbaa !11
  %4 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %3, i32 noundef 47) #34
  %5 = icmp eq ptr %4, null
  %6 = getelementptr inbounds i8, ptr %4, i64 1
  %7 = select i1 %5, ptr %3, ptr %6
  %8 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.47, i32 noundef %2, ptr noundef %7) #30
  %9 = load ptr, ptr @finput, align 8, !tbaa !11
  %10 = tail call i32 @getc(ptr noundef %9) #30
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %19, label %12

12:                                               ; preds = %12, %0
  %13 = phi i32 [ %17, %12 ], [ %10, %0 ]
  %14 = load ptr, ptr @ftable, align 8, !tbaa !11
  %15 = tail call i32 @putc(i32 noundef %13, ptr noundef %14) #30
  %16 = load ptr, ptr @finput, align 8, !tbaa !11
  %17 = tail call i32 @getc(ptr noundef %16) #30
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %19, label %12, !llvm.loop !183

19:                                               ; preds = %12, %0
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @feof(ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind optsize uwtable
define internal void @token_actions() #0 {
  %1 = load i32, ptr @ntokens, align 4, !tbaa !7
  %2 = shl i32 %1, 1
  %3 = tail call ptr (i32, ...) @mallocate(i32 noundef %2) #29
  store ptr %3, ptr @actrow, align 8, !tbaa !11
  %4 = tail call i32 @action_row(i32 noundef 0) #30, !range !184
  %5 = load ptr, ptr @ftable, align 8, !tbaa !11
  %6 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef nonnull @.str.32, i32 noundef %4) #30
  tail call void @save_row(i32 noundef 0) #30
  %7 = load i32, ptr @nstates, align 4, !tbaa !7
  %8 = icmp sgt i32 %7, 1
  br i1 %8, label %9, label %28

9:                                                ; preds = %20, %0
  %10 = phi i32 [ %21, %20 ], [ 10, %0 ]
  %11 = phi i32 [ %25, %20 ], [ 1, %0 ]
  %12 = load ptr, ptr @ftable, align 8, !tbaa !11
  %13 = tail call i32 @putc(i32 noundef 44, ptr noundef %12) #30
  %14 = icmp sgt i32 %10, 9
  br i1 %14, label %15, label %18

15:                                               ; preds = %9
  %16 = load ptr, ptr @ftable, align 8, !tbaa !11
  %17 = tail call i32 @putc(i32 noundef 10, ptr noundef %16) #30
  br label %20

18:                                               ; preds = %9
  %19 = add nuw nsw i32 %10, 1
  br label %20

20:                                               ; preds = %18, %15
  %21 = phi i32 [ 1, %15 ], [ %19, %18 ]
  %22 = tail call i32 @action_row(i32 noundef %11) #30, !range !184
  %23 = load ptr, ptr @ftable, align 8, !tbaa !11
  %24 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %23, ptr noundef nonnull @.str.12.151, i32 noundef %22) #30
  tail call void @save_row(i32 noundef %11) #30
  %25 = add nuw nsw i32 %11, 1
  %26 = load i32, ptr @nstates, align 4, !tbaa !7
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %9, label %28, !llvm.loop !185

28:                                               ; preds = %20, %0
  %29 = load ptr, ptr @ftable, align 8, !tbaa !11
  %30 = tail call i64 @fwrite(ptr nonnull @.str.13.152, i64 4, i64 1, ptr %29)
  %31 = load ptr, ptr @actrow, align 8, !tbaa !11
  %32 = icmp eq ptr %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %28
  tail call void @free(ptr noundef nonnull %31) #29
  br label %34

34:                                               ; preds = %33, %28
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @free_shifts() #0 {
  %1 = load ptr, ptr @shift_table, align 8, !tbaa !11
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @free(ptr noundef nonnull %1) #29
  br label %4

4:                                                ; preds = %3, %0
  %5 = load ptr, ptr @first_shift, align 8, !tbaa !11
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %7, %4
  %8 = phi ptr [ %9, %7 ], [ %5, %4 ]
  %9 = load ptr, ptr %8, align 8, !tbaa !39
  tail call void @free(ptr noundef nonnull %8) #29
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %7, !llvm.loop !186

11:                                               ; preds = %7, %4
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @free_reductions() #0 {
  %1 = load ptr, ptr @reduction_table, align 8, !tbaa !11
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @free(ptr noundef nonnull %1) #29
  br label %4

4:                                                ; preds = %3, %0
  %5 = load ptr, ptr @first_reduction, align 8, !tbaa !11
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %7, %4
  %8 = phi ptr [ %9, %7 ], [ %5, %4 ]
  %9 = load ptr, ptr %8, align 8, !tbaa !187
  tail call void @free(ptr noundef nonnull %8) #29
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %7, !llvm.loop !188

11:                                               ; preds = %7, %4
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @goto_actions() #0 {
  %1 = load i32, ptr @nstates, align 4, !tbaa !7
  %2 = shl i32 %1, 1
  %3 = tail call ptr (i32, ...) @mallocate(i32 noundef %2) #29
  store ptr %3, ptr @state_count, align 8, !tbaa !11
  %4 = load i32, ptr @ntokens, align 4, !tbaa !7
  %5 = tail call i32 @default_goto(i32 noundef %4) #30
  %6 = load ptr, ptr @ftable, align 8, !tbaa !11
  %7 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef nonnull @.str.33, i32 noundef %5) #30
  %8 = load i32, ptr @ntokens, align 4, !tbaa !7
  tail call void @save_column(i32 noundef %8, i32 noundef %5) #30
  %9 = load i32, ptr @ntokens, align 4, !tbaa !7
  %10 = add nsw i32 %9, 1
  %11 = load i32, ptr @nsyms, align 4, !tbaa !7
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %32

13:                                               ; preds = %24, %0
  %14 = phi i32 [ %29, %24 ], [ %10, %0 ]
  %15 = phi i32 [ %25, %24 ], [ 10, %0 ]
  %16 = load ptr, ptr @ftable, align 8, !tbaa !11
  %17 = tail call i32 @putc(i32 noundef 44, ptr noundef %16) #30
  %18 = icmp sgt i32 %15, 9
  br i1 %18, label %19, label %22

19:                                               ; preds = %13
  %20 = load ptr, ptr @ftable, align 8, !tbaa !11
  %21 = tail call i32 @putc(i32 noundef 10, ptr noundef %20) #30
  br label %24

22:                                               ; preds = %13
  %23 = add nuw nsw i32 %15, 1
  br label %24

24:                                               ; preds = %22, %19
  %25 = phi i32 [ 1, %19 ], [ %23, %22 ]
  %26 = tail call i32 @default_goto(i32 noundef %14) #30
  %27 = load ptr, ptr @ftable, align 8, !tbaa !11
  %28 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %27, ptr noundef nonnull @.str.12.151, i32 noundef %26) #30
  tail call void @save_column(i32 noundef %14, i32 noundef %26) #30
  %29 = add nsw i32 %14, 1
  %30 = load i32, ptr @nsyms, align 4, !tbaa !7
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %13, label %32, !llvm.loop !189

32:                                               ; preds = %24, %0
  %33 = load ptr, ptr @ftable, align 8, !tbaa !11
  %34 = tail call i64 @fwrite(ptr nonnull @.str.13.152, i64 4, i64 1, ptr %33)
  %35 = load ptr, ptr @state_count, align 8, !tbaa !11
  %36 = icmp eq ptr %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %32
  tail call void @free(ptr noundef nonnull %35) #29
  br label %38

38:                                               ; preds = %37, %32
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @sort_actions() #0 {
  %1 = load i32, ptr @nvectors, align 4, !tbaa !7
  %2 = shl i32 %1, 1
  %3 = tail call ptr (i32, ...) @mallocate(i32 noundef %2) #29
  store ptr %3, ptr @order, align 8, !tbaa !11
  store i32 0, ptr @nentries, align 4, !tbaa !7
  %4 = load i32, ptr @nvectors, align 4, !tbaa !7
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %82

6:                                                ; preds = %0
  %7 = load ptr, ptr @tally, align 8, !tbaa !11
  %8 = load ptr, ptr @width, align 8
  %9 = zext i32 %4 to i64
  br label %10

10:                                               ; preds = %78, %6
  %11 = phi i64 [ 0, %6 ], [ %80, %78 ]
  %12 = phi i32 [ 0, %6 ], [ %79, %78 ]
  %13 = getelementptr inbounds i16, ptr %7, i64 %11
  %14 = load i16, ptr %13, align 2, !tbaa !13
  %15 = icmp sgt i16 %14, 0
  br i1 %15, label %16, label %78

16:                                               ; preds = %10
  %17 = getelementptr inbounds i16, ptr %8, i64 %11
  %18 = load i16, ptr %17, align 2, !tbaa !13
  %19 = zext i32 %12 to i64
  %20 = tail call i32 @llvm.smin.i32(i32 %12, i32 0)
  %21 = add i32 %20, -1
  br label %22

22:                                               ; preds = %26, %16
  %23 = phi i64 [ %27, %26 ], [ %19, %16 ]
  %24 = trunc i64 %23 to i32
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %55

26:                                               ; preds = %22
  %27 = add nsw i64 %23, -1
  %28 = and i64 %27, 4294967295
  %29 = getelementptr inbounds i16, ptr %3, i64 %28
  %30 = load i16, ptr %29, align 2, !tbaa !13
  %31 = sext i16 %30 to i64
  %32 = getelementptr inbounds i16, ptr %8, i64 %31
  %33 = load i16, ptr %32, align 2, !tbaa !13
  %34 = icmp slt i16 %33, %18
  br i1 %34, label %22, label %35, !llvm.loop !190

35:                                               ; preds = %26
  %.lcssa = phi i64 [ %27, %26 ]
  %36 = trunc i64 %.lcssa to i32
  %37 = tail call i32 @llvm.smin.i32(i32 %36, i32 0)
  %38 = add i32 %37, -1
  br label %39

39:                                               ; preds = %52, %35
  %40 = phi i32 [ %53, %52 ], [ %36, %35 ]
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds i16, ptr %3, i64 %41
  %43 = load i16, ptr %42, align 2, !tbaa !13
  %44 = sext i16 %43 to i64
  %45 = getelementptr inbounds i16, ptr %8, i64 %44
  %46 = load i16, ptr %45, align 2, !tbaa !13
  %47 = icmp eq i16 %46, %18
  br i1 %47, label %48, label %55

48:                                               ; preds = %39
  %49 = getelementptr inbounds i16, ptr %7, i64 %44
  %50 = load i16, ptr %49, align 2, !tbaa !13
  %51 = icmp slt i16 %50, %14
  br i1 %51, label %52, label %55

52:                                               ; preds = %48
  %53 = add nsw i32 %40, -1
  %54 = icmp sgt i32 %40, 0
  br i1 %54, label %39, label %55, !llvm.loop !191

55:                                               ; preds = %52, %48, %39, %22
  %56 = phi i32 [ %40, %39 ], [ %38, %52 ], [ %40, %48 ], [ %21, %22 ]
  %57 = add nsw i32 %12, -1
  %58 = icmp sgt i32 %57, %56
  br i1 %58, label %59, label %72

59:                                               ; preds = %55
  %60 = sext i32 %57 to i64
  %61 = sext i32 %56 to i64
  br label %62

62:                                               ; preds = %62, %59
  %63 = phi i64 [ %60, %59 ], [ %69, %62 ]
  %64 = phi i32 [ %12, %59 ], [ %71, %62 ]
  %65 = getelementptr inbounds i16, ptr %3, i64 %63
  %66 = load i16, ptr %65, align 2, !tbaa !13
  %67 = sext i32 %64 to i64
  %68 = getelementptr inbounds i16, ptr %3, i64 %67
  store i16 %66, ptr %68, align 2, !tbaa !13
  %69 = add nsw i64 %63, -1
  %70 = icmp sgt i64 %69, %61
  %71 = trunc i64 %63 to i32
  br i1 %70, label %62, label %72, !llvm.loop !192

72:                                               ; preds = %62, %55
  %73 = trunc i64 %11 to i16
  %74 = add nsw i32 %56, 1
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i16, ptr %3, i64 %75
  store i16 %73, ptr %76, align 2, !tbaa !13
  %77 = add nsw i32 %12, 1
  store i32 %77, ptr @nentries, align 4, !tbaa !7
  br label %78

78:                                               ; preds = %72, %10
  %79 = phi i32 [ %12, %10 ], [ %77, %72 ]
  %80 = add nuw nsw i64 %11, 1
  %81 = icmp eq i64 %80, %9
  br i1 %81, label %82, label %10, !llvm.loop !193

82:                                               ; preds = %78, %0
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @pack_table() #0 {
  %1 = load i32, ptr @nvectors, align 4, !tbaa !7
  %2 = shl i32 %1, 1
  %3 = tail call ptr (i32, ...) @mallocate(i32 noundef %2) #29
  store ptr %3, ptr @base, align 8, !tbaa !11
  %4 = load i32, ptr @nentries, align 4, !tbaa !7
  %5 = shl i32 %4, 1
  %6 = tail call ptr (i32, ...) @mallocate(i32 noundef %5) #29
  store ptr %6, ptr @pos, align 8, !tbaa !11
  %7 = tail call ptr (i32, ...) @mallocate(i32 noundef 65534) #29
  store ptr %7, ptr @table, align 8, !tbaa !11
  %8 = tail call ptr (i32, ...) @mallocate(i32 noundef 65534) #29
  store ptr %8, ptr @check, align 8, !tbaa !11
  store i32 0, ptr @lowzero, align 4, !tbaa !7
  store i32 0, ptr @high, align 4, !tbaa !7
  %9 = load i32, ptr @nvectors, align 4, !tbaa !7
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %65

11:                                               ; preds = %0
  %12 = load ptr, ptr @base, align 8, !tbaa !11
  %13 = zext i32 %9 to i64
  %14 = add nuw nsw i64 %13, 7
  %15 = and i64 %14, 8589934584
  %16 = add nsw i64 %13, -1
  %17 = insertelement <8 x i64> poison, i64 %16, i64 0
  %18 = shufflevector <8 x i64> %17, <8 x i64> poison, <8 x i32> zeroinitializer
  br label %19

19:                                               ; preds = %61, %11
  %20 = phi i64 [ 0, %11 ], [ %62, %61 ]
  %21 = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %11 ], [ %63, %61 ]
  %22 = icmp ule <8 x i64> %21, %18
  %23 = extractelement <8 x i1> %22, i64 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = getelementptr inbounds i16, ptr %12, i64 %20
  store i16 -32768, ptr %25, align 2, !tbaa !13
  br label %26

26:                                               ; preds = %24, %19
  %27 = extractelement <8 x i1> %22, i64 1
  br i1 %27, label %28, label %31

28:                                               ; preds = %26
  %29 = or i64 %20, 1
  %30 = getelementptr inbounds i16, ptr %12, i64 %29
  store i16 -32768, ptr %30, align 2, !tbaa !13
  br label %31

31:                                               ; preds = %28, %26
  %32 = extractelement <8 x i1> %22, i64 2
  br i1 %32, label %33, label %36

33:                                               ; preds = %31
  %34 = or i64 %20, 2
  %35 = getelementptr inbounds i16, ptr %12, i64 %34
  store i16 -32768, ptr %35, align 2, !tbaa !13
  br label %36

36:                                               ; preds = %33, %31
  %37 = extractelement <8 x i1> %22, i64 3
  br i1 %37, label %38, label %41

38:                                               ; preds = %36
  %39 = or i64 %20, 3
  %40 = getelementptr inbounds i16, ptr %12, i64 %39
  store i16 -32768, ptr %40, align 2, !tbaa !13
  br label %41

41:                                               ; preds = %38, %36
  %42 = extractelement <8 x i1> %22, i64 4
  br i1 %42, label %43, label %46

43:                                               ; preds = %41
  %44 = or i64 %20, 4
  %45 = getelementptr inbounds i16, ptr %12, i64 %44
  store i16 -32768, ptr %45, align 2, !tbaa !13
  br label %46

46:                                               ; preds = %43, %41
  %47 = extractelement <8 x i1> %22, i64 5
  br i1 %47, label %48, label %51

48:                                               ; preds = %46
  %49 = or i64 %20, 5
  %50 = getelementptr inbounds i16, ptr %12, i64 %49
  store i16 -32768, ptr %50, align 2, !tbaa !13
  br label %51

51:                                               ; preds = %48, %46
  %52 = extractelement <8 x i1> %22, i64 6
  br i1 %52, label %53, label %56

53:                                               ; preds = %51
  %54 = or i64 %20, 6
  %55 = getelementptr inbounds i16, ptr %12, i64 %54
  store i16 -32768, ptr %55, align 2, !tbaa !13
  br label %56

56:                                               ; preds = %53, %51
  %57 = extractelement <8 x i1> %22, i64 7
  br i1 %57, label %58, label %61

58:                                               ; preds = %56
  %59 = or i64 %20, 7
  %60 = getelementptr inbounds i16, ptr %12, i64 %59
  store i16 -32768, ptr %60, align 2, !tbaa !13
  br label %61

61:                                               ; preds = %58, %56
  %62 = add i64 %20, 8
  %63 = add <8 x i64> %21, <i64 8, i64 8, i64 8, i64 8, i64 8, i64 8, i64 8, i64 8>
  %64 = icmp eq i64 %62, %15
  br i1 %64, label %65, label %19, !llvm.loop !194

65:                                               ; preds = %61, %0
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(65534) %8, i8 -1, i64 65534, i1 false), !tbaa !13
  %66 = load i32, ptr @nentries, align 4, !tbaa !7
  %67 = icmp sgt i32 %66, 0
  br i1 %67, label %77, label %70

68:                                               ; preds = %93
  %69 = load i32, ptr @nvectors, align 4, !tbaa !7
  br label %70

70:                                               ; preds = %68, %65
  %71 = phi i32 [ %69, %68 ], [ %9, %65 ]
  %72 = icmp sgt i32 %71, 0
  %73 = load ptr, ptr @froms, align 8, !tbaa !11
  br i1 %72, label %74, label %122

74:                                               ; preds = %70
  %75 = load ptr, ptr @tos, align 8, !tbaa !11
  %76 = zext i32 %71 to i64
  br label %108

77:                                               ; preds = %93, %65
  %78 = phi i32 [ %94, %93 ], [ %66, %65 ]
  %79 = phi i64 [ %105, %93 ], [ 0, %65 ]
  %80 = trunc i64 %79 to i32
  %81 = tail call i32 @matching_state(i32 noundef %80) #30, !range !31
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %77
  %84 = tail call i32 @pack_vector(i32 noundef %80) #30, !range !197
  %85 = load ptr, ptr @base, align 8, !tbaa !11
  %86 = load i32, ptr @nentries, align 4, !tbaa !7
  br label %93

87:                                               ; preds = %77
  %88 = load ptr, ptr @base, align 8, !tbaa !11
  %89 = zext i32 %81 to i64
  %90 = getelementptr inbounds i16, ptr %88, i64 %89
  %91 = load i16, ptr %90, align 2, !tbaa !13
  %92 = zext i16 %91 to i32
  br label %93

93:                                               ; preds = %87, %83
  %94 = phi i32 [ %86, %83 ], [ %78, %87 ]
  %95 = phi ptr [ %85, %83 ], [ %88, %87 ]
  %96 = phi i32 [ %84, %83 ], [ %92, %87 ]
  %97 = trunc i32 %96 to i16
  %98 = load ptr, ptr @pos, align 8, !tbaa !11
  %99 = getelementptr inbounds i16, ptr %98, i64 %79
  store i16 %97, ptr %99, align 2, !tbaa !13
  %100 = load ptr, ptr @order, align 8, !tbaa !11
  %101 = getelementptr inbounds i16, ptr %100, i64 %79
  %102 = load i16, ptr %101, align 2, !tbaa !13
  %103 = sext i16 %102 to i64
  %104 = getelementptr inbounds i16, ptr %95, i64 %103
  store i16 %97, ptr %104, align 2, !tbaa !13
  %105 = add nuw nsw i64 %79, 1
  %106 = sext i32 %94 to i64
  %107 = icmp slt i64 %105, %106
  br i1 %107, label %77, label %68, !llvm.loop !198

108:                                              ; preds = %119, %74
  %109 = phi i64 [ 0, %74 ], [ %120, %119 ]
  %110 = getelementptr inbounds ptr, ptr %73, i64 %109
  %111 = load ptr, ptr %110, align 8, !tbaa !11
  %112 = icmp eq ptr %111, null
  br i1 %112, label %114, label %113

113:                                              ; preds = %108
  tail call void @free(ptr noundef nonnull %111) #29
  br label %114

114:                                              ; preds = %113, %108
  %115 = getelementptr inbounds ptr, ptr %75, i64 %109
  %116 = load ptr, ptr %115, align 8, !tbaa !11
  %117 = icmp eq ptr %116, null
  br i1 %117, label %119, label %118

118:                                              ; preds = %114
  tail call void @free(ptr noundef nonnull %116) #29
  br label %119

119:                                              ; preds = %118, %114
  %120 = add nuw nsw i64 %109, 1
  %121 = icmp eq i64 %120, %76
  br i1 %121, label %124, label %108, !llvm.loop !199

122:                                              ; preds = %70
  %123 = icmp eq ptr %73, null
  br i1 %123, label %125, label %124

124:                                              ; preds = %122, %119
  tail call void @free(ptr noundef nonnull %73) #29
  br label %125

125:                                              ; preds = %124, %122
  %126 = load ptr, ptr @tos, align 8, !tbaa !11
  %127 = icmp eq ptr %126, null
  br i1 %127, label %129, label %128

128:                                              ; preds = %125
  tail call void @free(ptr noundef nonnull %126) #29
  br label %129

129:                                              ; preds = %128, %125
  %130 = load ptr, ptr @pos, align 8, !tbaa !11
  %131 = icmp eq ptr %130, null
  br i1 %131, label %133, label %132

132:                                              ; preds = %129
  tail call void @free(ptr noundef nonnull %130) #29
  br label %133

133:                                              ; preds = %132, %129
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @output_base() #0 {
  %1 = load ptr, ptr @ftable, align 8, !tbaa !11
  %2 = load ptr, ptr @base, align 8, !tbaa !11
  %3 = load i16, ptr %2, align 2, !tbaa !13
  %4 = sext i16 %3 to i32
  %5 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.36, i32 noundef %4) #30
  %6 = load i32, ptr @nstates, align 4, !tbaa !7
  %7 = icmp sgt i32 %6, 1
  br i1 %7, label %10, label %8

8:                                                ; preds = %0
  %9 = sext i32 %6 to i64
  br label %33

10:                                               ; preds = %21, %0
  %11 = phi i64 [ %29, %21 ], [ 1, %0 ]
  %12 = phi i32 [ %22, %21 ], [ 10, %0 ]
  %13 = load ptr, ptr @ftable, align 8, !tbaa !11
  %14 = tail call i32 @putc(i32 noundef 44, ptr noundef %13) #30
  %15 = icmp sgt i32 %12, 9
  br i1 %15, label %16, label %19

16:                                               ; preds = %10
  %17 = load ptr, ptr @ftable, align 8, !tbaa !11
  %18 = tail call i32 @putc(i32 noundef 10, ptr noundef %17) #30
  br label %21

19:                                               ; preds = %10
  %20 = add nuw nsw i32 %12, 1
  br label %21

21:                                               ; preds = %19, %16
  %22 = phi i32 [ 1, %16 ], [ %20, %19 ]
  %23 = load ptr, ptr @ftable, align 8, !tbaa !11
  %24 = load ptr, ptr @base, align 8, !tbaa !11
  %25 = getelementptr inbounds i16, ptr %24, i64 %11
  %26 = load i16, ptr %25, align 2, !tbaa !13
  %27 = sext i16 %26 to i32
  %28 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %23, ptr noundef nonnull @.str.12.151, i32 noundef %27) #30
  %29 = add nuw nsw i64 %11, 1
  %30 = load i32, ptr @nstates, align 4, !tbaa !7
  %31 = sext i32 %30 to i64
  %32 = icmp slt i64 %29, %31
  br i1 %32, label %10, label %33, !llvm.loop !200

33:                                               ; preds = %21, %8
  %34 = phi i64 [ %9, %8 ], [ %31, %21 ]
  %35 = load ptr, ptr @ftable, align 8, !tbaa !11
  %36 = load ptr, ptr @base, align 8, !tbaa !11
  %37 = getelementptr inbounds i16, ptr %36, i64 %34
  %38 = load i16, ptr %37, align 2, !tbaa !13
  %39 = sext i16 %38 to i32
  %40 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %35, ptr noundef nonnull @.str.37, i32 noundef %39) #30
  %41 = load i32, ptr @nstates, align 4, !tbaa !7
  %42 = add nsw i32 %41, 1
  %43 = load i32, ptr @nvectors, align 4, !tbaa !7
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %71

45:                                               ; preds = %33
  %46 = sext i32 %41 to i64
  %47 = add nsw i64 %46, 1
  br label %48

48:                                               ; preds = %59, %45
  %49 = phi i64 [ %47, %45 ], [ %67, %59 ]
  %50 = phi i32 [ 10, %45 ], [ %60, %59 ]
  %51 = load ptr, ptr @ftable, align 8, !tbaa !11
  %52 = tail call i32 @putc(i32 noundef 44, ptr noundef %51) #30
  %53 = icmp sgt i32 %50, 9
  br i1 %53, label %54, label %57

54:                                               ; preds = %48
  %55 = load ptr, ptr @ftable, align 8, !tbaa !11
  %56 = tail call i32 @putc(i32 noundef 10, ptr noundef %55) #30
  br label %59

57:                                               ; preds = %48
  %58 = add nuw nsw i32 %50, 1
  br label %59

59:                                               ; preds = %57, %54
  %60 = phi i32 [ 1, %54 ], [ %58, %57 ]
  %61 = load ptr, ptr @ftable, align 8, !tbaa !11
  %62 = load ptr, ptr @base, align 8, !tbaa !11
  %63 = getelementptr inbounds i16, ptr %62, i64 %49
  %64 = load i16, ptr %63, align 2, !tbaa !13
  %65 = sext i16 %64 to i32
  %66 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %61, ptr noundef nonnull @.str.12.151, i32 noundef %65) #30
  %67 = add nsw i64 %49, 1
  %68 = load i32, ptr @nvectors, align 4, !tbaa !7
  %69 = sext i32 %68 to i64
  %70 = icmp slt i64 %67, %69
  br i1 %70, label %48, label %71, !llvm.loop !201

71:                                               ; preds = %59, %33
  %72 = load ptr, ptr @ftable, align 8, !tbaa !11
  %73 = tail call i64 @fwrite(ptr nonnull @.str.13.152, i64 4, i64 1, ptr %72)
  %74 = load ptr, ptr @base, align 8, !tbaa !11
  %75 = icmp eq ptr %74, null
  br i1 %75, label %77, label %76

76:                                               ; preds = %71
  tail call void @free(ptr noundef nonnull %74) #29
  br label %77

77:                                               ; preds = %76, %71
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @output_table() #0 {
  %1 = load ptr, ptr @ftable, align 8, !tbaa !11
  %2 = load i32, ptr @high, align 4, !tbaa !7
  %3 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.38, i32 noundef %2) #30
  %4 = load ptr, ptr @ftable, align 8, !tbaa !11
  %5 = load ptr, ptr @table, align 8, !tbaa !11
  %6 = load i16, ptr %5, align 2, !tbaa !13
  %7 = sext i16 %6 to i32
  %8 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str.39, i32 noundef %7) #30
  %9 = load i32, ptr @high, align 4, !tbaa !7
  %10 = icmp slt i32 %9, 1
  br i1 %10, label %34, label %11

11:                                               ; preds = %22, %0
  %12 = phi i64 [ %30, %22 ], [ 1, %0 ]
  %13 = phi i32 [ %23, %22 ], [ 10, %0 ]
  %14 = load ptr, ptr @ftable, align 8, !tbaa !11
  %15 = tail call i32 @putc(i32 noundef 44, ptr noundef %14) #30
  %16 = icmp sgt i32 %13, 9
  br i1 %16, label %17, label %20

17:                                               ; preds = %11
  %18 = load ptr, ptr @ftable, align 8, !tbaa !11
  %19 = tail call i32 @putc(i32 noundef 10, ptr noundef %18) #30
  br label %22

20:                                               ; preds = %11
  %21 = add nuw nsw i32 %13, 1
  br label %22

22:                                               ; preds = %20, %17
  %23 = phi i32 [ 1, %17 ], [ %21, %20 ]
  %24 = load ptr, ptr @ftable, align 8, !tbaa !11
  %25 = load ptr, ptr @table, align 8, !tbaa !11
  %26 = getelementptr inbounds i16, ptr %25, i64 %12
  %27 = load i16, ptr %26, align 2, !tbaa !13
  %28 = sext i16 %27 to i32
  %29 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %24, ptr noundef nonnull @.str.12.151, i32 noundef %28) #30
  %30 = add nuw nsw i64 %12, 1
  %31 = load i32, ptr @high, align 4, !tbaa !7
  %32 = sext i32 %31 to i64
  %33 = icmp slt i64 %12, %32
  br i1 %33, label %11, label %34, !llvm.loop !202

34:                                               ; preds = %22, %0
  %35 = load ptr, ptr @ftable, align 8, !tbaa !11
  %36 = tail call i64 @fwrite(ptr nonnull @.str.13.152, i64 4, i64 1, ptr %35)
  %37 = load ptr, ptr @table, align 8, !tbaa !11
  %38 = icmp eq ptr %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %34
  tail call void @free(ptr noundef nonnull %37) #29
  br label %40

40:                                               ; preds = %39, %34
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @output_check() #0 {
  %1 = load ptr, ptr @ftable, align 8, !tbaa !11
  %2 = load ptr, ptr @check, align 8, !tbaa !11
  %3 = load i16, ptr %2, align 2, !tbaa !13
  %4 = sext i16 %3 to i32
  %5 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.40, i32 noundef %4) #30
  %6 = load i32, ptr @high, align 4, !tbaa !7
  %7 = icmp slt i32 %6, 1
  br i1 %7, label %31, label %8

8:                                                ; preds = %19, %0
  %9 = phi i64 [ %27, %19 ], [ 1, %0 ]
  %10 = phi i32 [ %20, %19 ], [ 10, %0 ]
  %11 = load ptr, ptr @ftable, align 8, !tbaa !11
  %12 = tail call i32 @putc(i32 noundef 44, ptr noundef %11) #30
  %13 = icmp sgt i32 %10, 9
  br i1 %13, label %14, label %17

14:                                               ; preds = %8
  %15 = load ptr, ptr @ftable, align 8, !tbaa !11
  %16 = tail call i32 @putc(i32 noundef 10, ptr noundef %15) #30
  br label %19

17:                                               ; preds = %8
  %18 = add nuw nsw i32 %10, 1
  br label %19

19:                                               ; preds = %17, %14
  %20 = phi i32 [ 1, %14 ], [ %18, %17 ]
  %21 = load ptr, ptr @ftable, align 8, !tbaa !11
  %22 = load ptr, ptr @check, align 8, !tbaa !11
  %23 = getelementptr inbounds i16, ptr %22, i64 %9
  %24 = load i16, ptr %23, align 2, !tbaa !13
  %25 = sext i16 %24 to i32
  %26 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %21, ptr noundef nonnull @.str.12.151, i32 noundef %25) #30
  %27 = add nuw nsw i64 %9, 1
  %28 = load i32, ptr @high, align 4, !tbaa !7
  %29 = sext i32 %28 to i64
  %30 = icmp slt i64 %9, %29
  br i1 %30, label %8, label %31, !llvm.loop !203

31:                                               ; preds = %19, %0
  %32 = load ptr, ptr @ftable, align 8, !tbaa !11
  %33 = tail call i64 @fwrite(ptr nonnull @.str.13.152, i64 4, i64 1, ptr %32)
  %34 = load ptr, ptr @check, align 8, !tbaa !11
  %35 = icmp eq ptr %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %31
  tail call void @free(ptr noundef nonnull %34) #29
  br label %37

37:                                               ; preds = %36, %31
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal i32 @matching_state(i32 noundef %0) #25 {
  %2 = load ptr, ptr @order, align 8, !tbaa !11
  %3 = sext i32 %0 to i64
  %4 = getelementptr inbounds i16, ptr %2, i64 %3
  %5 = load i16, ptr %4, align 2, !tbaa !13
  %6 = sext i16 %5 to i32
  %7 = load i32, ptr @nstates, align 4, !tbaa !7
  %8 = icmp sgt i32 %7, %6
  br i1 %8, label %9, label %68

9:                                                ; preds = %1
  %10 = load ptr, ptr @tally, align 8, !tbaa !11
  %11 = sext i16 %5 to i64
  %12 = getelementptr inbounds i16, ptr %10, i64 %11
  %13 = load i16, ptr %12, align 2, !tbaa !13
  %14 = load ptr, ptr @width, align 8, !tbaa !11
  %15 = getelementptr inbounds i16, ptr %14, i64 %11
  %16 = load i16, ptr %15, align 2, !tbaa !13
  %17 = icmp sgt i16 %13, 0
  %18 = load ptr, ptr @tos, align 8
  %19 = getelementptr inbounds ptr, ptr %18, i64 %11
  %20 = load ptr, ptr @froms, align 8
  %21 = getelementptr inbounds ptr, ptr %20, i64 %11
  %22 = sext i16 %13 to i64
  %23 = icmp sgt i32 %0, 0
  br i1 %23, label %24, label %68

24:                                               ; preds = %9
  %25 = zext i32 %0 to i64
  br label %26

26:                                               ; preds = %63, %24
  %27 = phi i64 [ %25, %24 ], [ %28, %63 ]
  %28 = add nsw i64 %27, -1
  %29 = getelementptr inbounds i16, ptr %2, i64 %28
  %30 = load i16, ptr %29, align 2, !tbaa !13
  %31 = sext i16 %30 to i64
  %32 = getelementptr inbounds i16, ptr %14, i64 %31
  %33 = load i16, ptr %32, align 2, !tbaa !13
  %34 = icmp eq i16 %33, %16
  br i1 %34, label %35, label %68

35:                                               ; preds = %26
  %36 = getelementptr inbounds i16, ptr %10, i64 %31
  %37 = load i16, ptr %36, align 2, !tbaa !13
  %38 = icmp eq i16 %37, %13
  br i1 %38, label %39, label %68

39:                                               ; preds = %35
  br i1 %17, label %40, label %66

40:                                               ; preds = %39
  %41 = getelementptr inbounds ptr, ptr %18, i64 %31
  %42 = load ptr, ptr %41, align 8, !tbaa !11
  %43 = load ptr, ptr %19, align 8, !tbaa !11
  %44 = getelementptr inbounds ptr, ptr %20, i64 %31
  br label %45

45:                                               ; preds = %60, %40
  %46 = phi i64 [ 0, %40 ], [ %61, %60 ]
  %47 = getelementptr inbounds i16, ptr %42, i64 %46
  %48 = load i16, ptr %47, align 2, !tbaa !13
  %49 = getelementptr inbounds i16, ptr %43, i64 %46
  %50 = load i16, ptr %49, align 2, !tbaa !13
  %51 = icmp eq i16 %48, %50
  br i1 %51, label %52, label %63

52:                                               ; preds = %45
  %53 = load ptr, ptr %44, align 8, !tbaa !11
  %54 = getelementptr inbounds i16, ptr %53, i64 %46
  %55 = load i16, ptr %54, align 2, !tbaa !13
  %56 = load ptr, ptr %21, align 8, !tbaa !11
  %57 = getelementptr inbounds i16, ptr %56, i64 %46
  %58 = load i16, ptr %57, align 2, !tbaa !13
  %59 = icmp eq i16 %55, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %52
  %61 = add nuw nsw i64 %46, 1
  %62 = icmp slt i64 %61, %22
  br i1 %62, label %45, label %66, !llvm.loop !204

63:                                               ; preds = %52, %45
  %64 = trunc i64 %28 to i32
  %65 = icmp sgt i32 %64, 0
  br i1 %65, label %26, label %68, !llvm.loop !205

66:                                               ; preds = %60, %39
  %.lcssa = phi i16 [ %30, %60 ], [ %30, %39 ]
  %67 = sext i16 %.lcssa to i32
  br label %68

68:                                               ; preds = %66, %63, %35, %26, %9, %1
  %69 = phi i32 [ -1, %1 ], [ %67, %66 ], [ -1, %9 ], [ -1, %35 ], [ -1, %26 ], [ -1, %63 ]
  ret i32 %69
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @pack_vector(i32 noundef %0) #0 {
  %2 = load ptr, ptr @order, align 8, !tbaa !11
  %3 = sext i32 %0 to i64
  %4 = getelementptr inbounds i16, ptr %2, i64 %3
  %5 = load i16, ptr %4, align 2, !tbaa !13
  %6 = load ptr, ptr @tally, align 8, !tbaa !11
  %7 = sext i16 %5 to i64
  %8 = getelementptr inbounds i16, ptr %6, i64 %7
  %9 = load i16, ptr %8, align 2, !tbaa !13
  %10 = sext i16 %9 to i64
  %11 = icmp eq i16 %9, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  tail call void @berror(ptr noundef nonnull @.str.34) #29
  br label %13

13:                                               ; preds = %12, %1
  %14 = load ptr, ptr @froms, align 8, !tbaa !11
  %15 = getelementptr inbounds ptr, ptr %14, i64 %7
  %16 = load ptr, ptr %15, align 8, !tbaa !11
  %17 = load ptr, ptr @tos, align 8, !tbaa !11
  %18 = getelementptr inbounds ptr, ptr %17, i64 %7
  %19 = load ptr, ptr %18, align 8, !tbaa !11
  %20 = load i32, ptr @lowzero, align 4, !tbaa !7
  %21 = load i16, ptr %16, align 2, !tbaa !13
  %22 = sext i16 %21 to i32
  %23 = sub nsw i32 %20, %22
  %24 = icmp slt i32 %23, 32767
  br i1 %24, label %25, label %107

25:                                               ; preds = %13
  %26 = icmp sgt i16 %9, 0
  %27 = icmp sgt i32 %0, 0
  %28 = sext i16 %9 to i64
  br label %29

29:                                               ; preds = %104, %25
  %30 = phi i32 [ %23, %25 ], [ %105, %104 ]
  %31 = phi i32 [ undef, %25 ], [ %33, %104 ]
  br i1 %26, label %38, label %32

32:                                               ; preds = %46, %29
  %33 = phi i32 [ %31, %29 ], [ %43, %46 ]
  %34 = phi i1 [ true, %29 ], [ %51, %46 ]
  %35 = and i1 %34, %27
  br i1 %35, label %36, label %64

36:                                               ; preds = %32
  %37 = load ptr, ptr @pos, align 8, !tbaa !11
  br label %55

38:                                               ; preds = %46, %29
  %39 = phi i64 [ %52, %46 ], [ 0, %29 ]
  %40 = getelementptr inbounds i16, ptr %16, i64 %39
  %41 = load i16, ptr %40, align 2, !tbaa !13
  %42 = sext i16 %41 to i32
  %43 = add nsw i32 %30, %42
  %44 = icmp sgt i32 %43, 32767
  br i1 %44, label %45, label %46

45:                                               ; preds = %38
  tail call void @fatals(ptr noundef nonnull @.str.35, i32 noundef 32767, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #29
  br label %46

46:                                               ; preds = %45, %38
  %47 = load ptr, ptr @table, align 8, !tbaa !11
  %48 = sext i32 %43 to i64
  %49 = getelementptr inbounds i16, ptr %47, i64 %48
  %50 = load i16, ptr %49, align 2, !tbaa !13
  %51 = icmp eq i16 %50, 0
  %52 = add nuw nsw i64 %39, 1
  %53 = icmp slt i64 %52, %28
  %54 = select i1 %51, i1 %53, i1 false
  br i1 %54, label %38, label %32, !llvm.loop !206

55:                                               ; preds = %55, %36
  %56 = phi i64 [ 0, %36 ], [ %61, %55 ]
  %57 = getelementptr inbounds i16, ptr %37, i64 %56
  %58 = load i16, ptr %57, align 2, !tbaa !13
  %59 = sext i16 %58 to i32
  %60 = icmp ne i32 %30, %59
  %61 = add nuw nsw i64 %56, 1
  %62 = icmp slt i64 %61, %3
  %63 = select i1 %60, i1 %62, i1 false
  br i1 %63, label %55, label %64, !llvm.loop !207

64:                                               ; preds = %55, %32
  %65 = phi i1 [ %34, %32 ], [ %60, %55 ]
  br i1 %65, label %66, label %104

66:                                               ; preds = %64
  %.lcssa2 = phi i32 [ %33, %64 ]
  %.lcssa1 = phi i32 [ %30, %64 ]
  %67 = load ptr, ptr @table, align 8, !tbaa !11
  br i1 %26, label %68, label %71

68:                                               ; preds = %66
  %69 = load ptr, ptr @check, align 8, !tbaa !11
  %70 = and i64 %10, 4294967295
  br label %78

71:                                               ; preds = %78, %66
  %72 = phi i32 [ %.lcssa2, %66 ], [ %83, %78 ]
  %73 = load i32, ptr @lowzero, align 4, !tbaa !7
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i16, ptr %67, i64 %74
  %76 = load i16, ptr %75, align 2, !tbaa !13
  %77 = icmp eq i16 %76, 0
  br i1 %77, label %100, label %92

78:                                               ; preds = %78, %68
  %79 = phi i64 [ 0, %68 ], [ %90, %78 ]
  %80 = getelementptr inbounds i16, ptr %16, i64 %79
  %81 = load i16, ptr %80, align 2, !tbaa !13
  %82 = sext i16 %81 to i32
  %83 = add nsw i32 %.lcssa1, %82
  %84 = getelementptr inbounds i16, ptr %19, i64 %79
  %85 = load i16, ptr %84, align 2, !tbaa !13
  %86 = sext i32 %83 to i64
  %87 = getelementptr inbounds i16, ptr %67, i64 %86
  store i16 %85, ptr %87, align 2, !tbaa !13
  %88 = load i16, ptr %80, align 2, !tbaa !13
  %89 = getelementptr inbounds i16, ptr %69, i64 %86
  store i16 %88, ptr %89, align 2, !tbaa !13
  %90 = add nuw nsw i64 %79, 1
  %91 = icmp eq i64 %90, %70
  br i1 %91, label %71, label %78, !llvm.loop !208

92:                                               ; preds = %92, %71
  %93 = phi i64 [ %94, %92 ], [ %74, %71 ]
  %94 = add i64 %93, 1
  %95 = getelementptr inbounds i16, ptr %67, i64 %94
  %96 = load i16, ptr %95, align 2, !tbaa !13
  %97 = icmp eq i16 %96, 0
  br i1 %97, label %98, label %92, !llvm.loop !209

98:                                               ; preds = %92
  %.lcssa = phi i64 [ %94, %92 ]
  %99 = trunc i64 %.lcssa to i32
  store i32 %99, ptr @lowzero, align 4, !tbaa !7
  br label %100

100:                                              ; preds = %98, %71
  %101 = load i32, ptr @high, align 4, !tbaa !7
  %102 = icmp sgt i32 %72, %101
  br i1 %102, label %103, label %108

103:                                              ; preds = %100
  store i32 %72, ptr @high, align 4, !tbaa !7
  br label %108

104:                                              ; preds = %64
  %105 = add i32 %30, 1
  %106 = icmp eq i32 %105, 32767
  br i1 %106, label %107, label %29, !llvm.loop !210

107:                                              ; preds = %104, %13
  tail call void @berror(ptr noundef nonnull @.str.34) #29
  br label %108

108:                                              ; preds = %107, %103, %100
  %109 = phi i32 [ 0, %107 ], [ %.lcssa1, %103 ], [ %.lcssa1, %100 ]
  ret i32 %109
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nofree nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal i32 @default_goto(i32 noundef %0) #3 {
  %2 = load ptr, ptr @goto_map, align 8, !tbaa !11
  %3 = sext i32 %0 to i64
  %4 = getelementptr inbounds i16, ptr %2, i64 %3
  %5 = load i16, ptr %4, align 2, !tbaa !13
  %6 = add nsw i32 %0, 1
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds i16, ptr %2, i64 %7
  %9 = load i16, ptr %8, align 2, !tbaa !13
  %10 = icmp eq i16 %5, %9
  br i1 %10, label %52, label %11

11:                                               ; preds = %1
  %12 = load i32, ptr @nstates, align 4, !tbaa !7
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %11
  %15 = load ptr, ptr @state_count, align 8, !tbaa !11
  %16 = zext i32 %12 to i64
  %17 = shl nuw nsw i64 %16, 1
  tail call void @llvm.memset.p0.i64(ptr align 2 %15, i8 0, i64 %17, i1 false), !tbaa !13
  br label %18

18:                                               ; preds = %14, %11
  %19 = icmp slt i16 %5, %9
  br i1 %19, label %20, label %25

20:                                               ; preds = %18
  %21 = load ptr, ptr @state_count, align 8, !tbaa !11
  %22 = load ptr, ptr @to_state, align 8, !tbaa !11
  %23 = sext i16 %5 to i64
  %24 = sext i16 %9 to i64
  br label %29

25:                                               ; preds = %29, %18
  br i1 %13, label %26, label %52

26:                                               ; preds = %25
  %27 = load ptr, ptr @state_count, align 8, !tbaa !11
  %28 = zext i32 %12 to i64
  br label %39

29:                                               ; preds = %29, %20
  %30 = phi i64 [ %23, %20 ], [ %37, %29 ]
  %31 = getelementptr inbounds i16, ptr %22, i64 %30
  %32 = load i16, ptr %31, align 2, !tbaa !13
  %33 = sext i16 %32 to i64
  %34 = getelementptr inbounds i16, ptr %21, i64 %33
  %35 = load i16, ptr %34, align 2, !tbaa !13
  %36 = add i16 %35, 1
  store i16 %36, ptr %34, align 2, !tbaa !13
  %37 = add nsw i64 %30, 1
  %38 = icmp eq i64 %37, %24
  br i1 %38, label %25, label %29, !llvm.loop !211

39:                                               ; preds = %39, %26
  %40 = phi i64 [ 0, %26 ], [ %50, %39 ]
  %41 = phi i32 [ 0, %26 ], [ %49, %39 ]
  %42 = phi i32 [ -1, %26 ], [ %48, %39 ]
  %43 = getelementptr inbounds i16, ptr %27, i64 %40
  %44 = load i16, ptr %43, align 2, !tbaa !13
  %45 = sext i16 %44 to i32
  %46 = icmp slt i32 %41, %45
  %47 = trunc i64 %40 to i32
  %48 = select i1 %46, i32 %47, i32 %42
  %49 = tail call i32 @llvm.smax.i32(i32 %41, i32 %45)
  %50 = add nuw nsw i64 %40, 1
  %51 = icmp eq i64 %50, %28
  br i1 %51, label %52, label %39, !llvm.loop !212

52:                                               ; preds = %39, %25, %1
  %53 = phi i32 [ -1, %1 ], [ -1, %25 ], [ %48, %39 ]
  ret i32 %53
}

; Function Attrs: nounwind optsize uwtable
define internal void @save_column(i32 noundef %0, i32 noundef %1) #0 {
  %3 = load ptr, ptr @goto_map, align 8, !tbaa !11
  %4 = sext i32 %0 to i64
  %5 = getelementptr inbounds i16, ptr %3, i64 %4
  %6 = load i16, ptr %5, align 2, !tbaa !13
  %7 = add nsw i32 %0, 1
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds i16, ptr %3, i64 %8
  %10 = load i16, ptr %9, align 2, !tbaa !13
  %11 = icmp slt i16 %6, %10
  br i1 %11, label %12, label %78

12:                                               ; preds = %2
  %13 = load ptr, ptr @to_state, align 8, !tbaa !11
  %14 = sext i16 %6 to i64
  %15 = sext i16 %10 to i64
  br label %16

16:                                               ; preds = %16, %12
  %17 = phi i64 [ %14, %12 ], [ %25, %16 ]
  %18 = phi i32 [ 0, %12 ], [ %24, %16 ]
  %19 = getelementptr inbounds i16, ptr %13, i64 %17
  %20 = load i16, ptr %19, align 2, !tbaa !13
  %21 = sext i16 %20 to i32
  %22 = icmp ne i32 %21, %1
  %23 = zext i1 %22 to i32
  %24 = add nuw nsw i32 %18, %23
  %25 = add nsw i64 %17, 1
  %26 = icmp eq i64 %25, %15
  br i1 %26, label %27, label %16, !llvm.loop !213

27:                                               ; preds = %16
  %.lcssa = phi i32 [ %24, %16 ]
  %28 = icmp eq i32 %.lcssa, 0
  br i1 %28, label %78, label %29

29:                                               ; preds = %27
  %30 = load i32, ptr @ntokens, align 4, !tbaa !7
  %31 = sub i32 %0, %30
  %32 = load i32, ptr @nstates, align 4, !tbaa !7
  %33 = add nsw i32 %31, %32
  %34 = shl nuw i32 %.lcssa, 1
  %35 = tail call ptr (i32, ...) @mallocate(i32 noundef %34) #29
  %36 = load ptr, ptr @froms, align 8, !tbaa !11
  %37 = sext i32 %33 to i64
  %38 = getelementptr inbounds ptr, ptr %36, i64 %37
  store ptr %35, ptr %38, align 8, !tbaa !11
  %39 = tail call ptr (i32, ...) @mallocate(i32 noundef %34) #29
  %40 = load ptr, ptr @tos, align 8, !tbaa !11
  %41 = getelementptr inbounds ptr, ptr %40, i64 %37
  store ptr %39, ptr %41, align 8, !tbaa !11
  br i1 %11, label %42, label %66

42:                                               ; preds = %29
  %43 = load ptr, ptr @to_state, align 8, !tbaa !11
  %44 = load ptr, ptr @from_state, align 8
  %45 = sext i16 %6 to i64
  %46 = sext i16 %10 to i64
  br label %47

47:                                               ; preds = %61, %42
  %48 = phi i64 [ %45, %42 ], [ %64, %61 ]
  %49 = phi ptr [ %39, %42 ], [ %63, %61 ]
  %50 = phi ptr [ %35, %42 ], [ %62, %61 ]
  %51 = getelementptr inbounds i16, ptr %43, i64 %48
  %52 = load i16, ptr %51, align 2, !tbaa !13
  %53 = sext i16 %52 to i32
  %54 = icmp eq i32 %53, %1
  br i1 %54, label %61, label %55

55:                                               ; preds = %47
  %56 = getelementptr inbounds i16, ptr %44, i64 %48
  %57 = load i16, ptr %56, align 2, !tbaa !13
  %58 = getelementptr inbounds i16, ptr %50, i64 1
  store i16 %57, ptr %50, align 2, !tbaa !13
  %59 = load i16, ptr %51, align 2, !tbaa !13
  %60 = getelementptr inbounds i16, ptr %49, i64 1
  store i16 %59, ptr %49, align 2, !tbaa !13
  br label %61

61:                                               ; preds = %55, %47
  %62 = phi ptr [ %58, %55 ], [ %50, %47 ]
  %63 = phi ptr [ %60, %55 ], [ %49, %47 ]
  %64 = add nsw i64 %48, 1
  %65 = icmp eq i64 %64, %46
  br i1 %65, label %66, label %47, !llvm.loop !214

66:                                               ; preds = %61, %29
  %67 = phi ptr [ %35, %29 ], [ %62, %61 ]
  %68 = trunc i32 %.lcssa to i16
  %69 = load ptr, ptr @tally, align 8, !tbaa !11
  %70 = getelementptr inbounds i16, ptr %69, i64 %37
  store i16 %68, ptr %70, align 2, !tbaa !13
  %71 = getelementptr inbounds i16, ptr %67, i64 -1
  %72 = load i16, ptr %71, align 2, !tbaa !13
  %73 = load i16, ptr %35, align 2, !tbaa !13
  %74 = add i16 %72, 1
  %75 = sub i16 %74, %73
  %76 = load ptr, ptr @width, align 8, !tbaa !11
  %77 = getelementptr inbounds i16, ptr %76, i64 %37
  store i16 %75, ptr %77, align 2, !tbaa !13
  br label %78

78:                                               ; preds = %66, %27, %2
  ret void
}

; Function Attrs: nofree nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal i32 @action_row(i32 noundef %0) #3 {
  %2 = load i32, ptr @ntokens, align 4, !tbaa !7
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %4, label %8

4:                                                ; preds = %1
  %5 = load ptr, ptr @actrow, align 8, !tbaa !11
  %6 = zext i32 %2 to i64
  %7 = shl nuw nsw i64 %6, 1
  tail call void @llvm.memset.p0.i64(ptr align 2 %5, i8 0, i64 %7, i1 false), !tbaa !13
  br label %8

8:                                                ; preds = %4, %1
  %9 = load ptr, ptr @reduction_table, align 8, !tbaa !11
  %10 = sext i32 %0 to i64
  %11 = getelementptr inbounds ptr, ptr %9, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !11
  %13 = icmp eq ptr %12, null
  br i1 %13, label %67, label %14

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.shifts, ptr %12, i64 0, i32 2
  %16 = load i16, ptr %15, align 2, !tbaa !26
  %17 = sext i16 %16 to i32
  %18 = icmp sgt i16 %16, 0
  br i1 %18, label %19, label %67

19:                                               ; preds = %14
  %20 = load ptr, ptr @lookaheads, align 8, !tbaa !11
  %21 = getelementptr inbounds i16, ptr %20, i64 %10
  %22 = load i16, ptr %21, align 2, !tbaa !13
  %23 = sext i16 %22 to i32
  %24 = add nsw i32 %0, 1
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i16, ptr %20, i64 %25
  %27 = load i16, ptr %26, align 2, !tbaa !13
  %28 = sext i16 %27 to i32
  %29 = icmp sgt i16 %27, %22
  br i1 %29, label %30, label %67

30:                                               ; preds = %19
  %31 = load ptr, ptr @LAruleno, align 8, !tbaa !11
  %32 = load ptr, ptr @LA, align 8, !tbaa !11
  %33 = load i32, ptr @tokensetsize, align 4, !tbaa !7
  %34 = load ptr, ptr @actrow, align 8
  %35 = sext i16 %27 to i64
  %36 = sext i16 %22 to i64
  %37 = sext i32 %33 to i64
  %38 = zext i32 %2 to i64
  br label %41

39:                                               ; preds = %59, %41
  %40 = icmp sgt i64 %43, %36
  br i1 %40, label %41, label %67, !llvm.loop !215

41:                                               ; preds = %39, %30
  %42 = phi i64 [ %35, %30 ], [ %43, %39 ]
  %43 = add nsw i64 %42, -1
  %44 = getelementptr inbounds i16, ptr %31, i64 %43
  %45 = load i16, ptr %44, align 2, !tbaa !13
  %46 = sub i16 0, %45
  br i1 %3, label %47, label %39

47:                                               ; preds = %41
  %48 = mul nsw i64 %43, %37
  %49 = getelementptr inbounds i32, ptr %32, i64 %48
  br label %50

50:                                               ; preds = %59, %47
  %51 = phi i64 [ 0, %47 ], [ %65, %59 ]
  %52 = phi ptr [ %49, %47 ], [ %64, %59 ]
  %53 = phi i32 [ 1, %47 ], [ %62, %59 ]
  %54 = load i32, ptr %52, align 4, !tbaa !7
  %55 = and i32 %54, %53
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %50
  %58 = getelementptr inbounds i16, ptr %34, i64 %51
  store i16 %46, ptr %58, align 2, !tbaa !13
  br label %59

59:                                               ; preds = %57, %50
  %60 = shl i32 %53, 1
  %61 = icmp eq i32 %60, 0
  %62 = tail call i32 @llvm.umax.i32(i32 %60, i32 1)
  %63 = zext i1 %61 to i64
  %64 = getelementptr inbounds i32, ptr %52, i64 %63
  %65 = add nuw nsw i64 %51, 1
  %66 = icmp eq i64 %65, %38
  br i1 %66, label %39, label %50, !llvm.loop !216

67:                                               ; preds = %39, %19, %14, %8
  %68 = phi i32 [ undef, %14 ], [ undef, %8 ], [ %28, %19 ], [ %28, %39 ]
  %69 = phi i32 [ %17, %14 ], [ 0, %8 ], [ %17, %19 ], [ %17, %39 ]
  %70 = phi i32 [ undef, %14 ], [ undef, %8 ], [ %23, %19 ], [ %23, %39 ]
  %71 = load ptr, ptr @shift_table, align 8, !tbaa !11
  %72 = getelementptr inbounds ptr, ptr %71, i64 %10
  %73 = load ptr, ptr %72, align 8, !tbaa !11
  %74 = icmp eq ptr %73, null
  br i1 %74, label %105, label %75

75:                                               ; preds = %67
  %76 = getelementptr inbounds %struct.shifts, ptr %73, i64 0, i32 2
  %77 = load i16, ptr %76, align 2, !tbaa !35
  %78 = icmp sgt i16 %77, 0
  br i1 %78, label %79, label %105

79:                                               ; preds = %75
  %80 = zext i16 %77 to i64
  %81 = load ptr, ptr @accessing_symbol, align 8
  %82 = load ptr, ptr @actrow, align 8
  %83 = load i32, ptr @error_token_number, align 4
  br label %84

84:                                               ; preds = %101, %79
  %85 = phi i64 [ 0, %79 ], [ %103, %101 ]
  %86 = phi i32 [ 0, %79 ], [ %102, %101 ]
  %87 = getelementptr inbounds %struct.shifts, ptr %73, i64 0, i32 3, i64 %85
  %88 = load i16, ptr %87, align 2, !tbaa !13
  %89 = icmp eq i16 %88, 0
  br i1 %89, label %101, label %90

90:                                               ; preds = %84
  %91 = sext i16 %88 to i64
  %92 = getelementptr inbounds i16, ptr %81, i64 %91
  %93 = load i16, ptr %92, align 2, !tbaa !13
  %94 = sext i16 %93 to i32
  %95 = icmp sgt i32 %2, %94
  br i1 %95, label %96, label %105

96:                                               ; preds = %90
  %97 = sext i16 %93 to i64
  %98 = getelementptr inbounds i16, ptr %82, i64 %97
  store i16 %88, ptr %98, align 2, !tbaa !13
  %99 = icmp eq i32 %83, %94
  %100 = select i1 %99, i32 1, i32 %86
  br label %101

101:                                              ; preds = %96, %84
  %102 = phi i32 [ %86, %84 ], [ %100, %96 ]
  %103 = add nuw nsw i64 %85, 1
  %104 = icmp eq i64 %103, %80
  br i1 %104, label %105, label %84, !llvm.loop !217

105:                                              ; preds = %101, %90, %75, %67
  %106 = phi i32 [ 0, %67 ], [ 0, %75 ], [ %86, %90 ], [ %102, %101 ]
  %107 = load ptr, ptr @err_table, align 8, !tbaa !11
  %108 = getelementptr inbounds ptr, ptr %107, i64 %10
  %109 = load ptr, ptr %108, align 8, !tbaa !11
  %110 = icmp eq ptr %109, null
  br i1 %110, label %125, label %111

111:                                              ; preds = %105
  %112 = load i16, ptr %109, align 2, !tbaa !71
  %113 = icmp sgt i16 %112, 0
  br i1 %113, label %114, label %125

114:                                              ; preds = %111
  %115 = zext i16 %112 to i64
  %116 = load ptr, ptr @actrow, align 8, !tbaa !11
  br label %117

117:                                              ; preds = %117, %114
  %118 = phi i64 [ 0, %114 ], [ %123, %117 ]
  %119 = getelementptr inbounds %struct.errs, ptr %109, i64 0, i32 1, i64 %118
  %120 = load i16, ptr %119, align 2, !tbaa !13
  %121 = sext i16 %120 to i64
  %122 = getelementptr inbounds i16, ptr %116, i64 %121
  store i16 -32768, ptr %122, align 2, !tbaa !13
  %123 = add nuw nsw i64 %118, 1
  %124 = icmp eq i64 %123, %115
  br i1 %124, label %125, label %117, !llvm.loop !218

125:                                              ; preds = %117, %111, %105
  %126 = icmp slt i32 %69, 1
  %127 = icmp ne i32 %106, 0
  %128 = select i1 %126, i1 true, i1 %127
  br i1 %128, label %190, label %129

129:                                              ; preds = %125
  %130 = load ptr, ptr @consistent, align 8, !tbaa !11
  %131 = getelementptr inbounds i8, ptr %130, i64 %10
  %132 = load i8, ptr %131, align 1, !tbaa !61
  %133 = icmp eq i8 %132, 0
  br i1 %133, label %134, label %142

134:                                              ; preds = %129
  %135 = icmp slt i32 %70, %68
  br i1 %135, label %136, label %190

136:                                              ; preds = %134
  %137 = load ptr, ptr @LAruleno, align 8, !tbaa !11
  %138 = load ptr, ptr @actrow, align 8
  %139 = sext i32 %70 to i64
  %140 = sext i32 %68 to i64
  %141 = zext i32 %2 to i64
  br label %146

142:                                              ; preds = %129
  %143 = getelementptr inbounds %struct.shifts, ptr %12, i64 0, i32 3
  %144 = load i16, ptr %143, align 4, !tbaa !13
  %145 = sext i16 %144 to i32
  br label %190

146:                                              ; preds = %165, %136
  %147 = phi i64 [ %139, %136 ], [ %170, %165 ]
  %148 = phi i32 [ 0, %136 ], [ %169, %165 ]
  %149 = phi i32 [ 0, %136 ], [ %168, %165 ]
  %150 = getelementptr inbounds i16, ptr %137, i64 %147
  %151 = load i16, ptr %150, align 2, !tbaa !13
  %152 = sext i16 %151 to i32
  %153 = sub nsw i32 0, %152
  br i1 %3, label %154, label %165

154:                                              ; preds = %154, %146
  %155 = phi i64 [ %163, %154 ], [ 0, %146 ]
  %156 = phi i32 [ %162, %154 ], [ 0, %146 ]
  %157 = getelementptr inbounds i16, ptr %138, i64 %155
  %158 = load i16, ptr %157, align 2, !tbaa !13
  %159 = sext i16 %158 to i32
  %160 = icmp eq i32 %159, %153
  %161 = zext i1 %160 to i32
  %162 = add nuw nsw i32 %156, %161
  %163 = add nuw nsw i64 %155, 1
  %164 = icmp eq i64 %163, %141
  br i1 %164, label %165, label %154, !llvm.loop !219

165:                                              ; preds = %154, %146
  %166 = phi i32 [ 0, %146 ], [ %162, %154 ]
  %167 = icmp sgt i32 %166, %148
  %168 = select i1 %167, i32 %153, i32 %149
  %169 = tail call i32 @llvm.smax.i32(i32 %166, i32 %148)
  %170 = add nsw i64 %147, 1
  %171 = icmp eq i64 %170, %140
  br i1 %171, label %172, label %146, !llvm.loop !220

172:                                              ; preds = %165
  %.lcssa1 = phi i32 [ %168, %165 ]
  %.lcssa = phi i32 [ %169, %165 ]
  %173 = icmp sgt i32 %.lcssa, 0
  br i1 %173, label %174, label %190

174:                                              ; preds = %172
  br i1 %3, label %175, label %188

175:                                              ; preds = %174
  %176 = load ptr, ptr @actrow, align 8, !tbaa !11
  %177 = zext i32 %2 to i64
  br label %178

178:                                              ; preds = %185, %175
  %179 = phi i64 [ 0, %175 ], [ %186, %185 ]
  %180 = getelementptr inbounds i16, ptr %176, i64 %179
  %181 = load i16, ptr %180, align 2, !tbaa !13
  %182 = sext i16 %181 to i32
  %183 = icmp eq i32 %.lcssa1, %182
  br i1 %183, label %184, label %185

184:                                              ; preds = %178
  store i16 0, ptr %180, align 2, !tbaa !13
  br label %185

185:                                              ; preds = %184, %178
  %186 = add nuw nsw i64 %179, 1
  %187 = icmp eq i64 %186, %177
  br i1 %187, label %188, label %178, !llvm.loop !221

188:                                              ; preds = %185, %174
  %189 = sub nsw i32 0, %.lcssa1
  br label %190

190:                                              ; preds = %188, %172, %142, %134, %125
  %191 = phi i32 [ 0, %125 ], [ %145, %142 ], [ %189, %188 ], [ %.lcssa1, %172 ], [ 0, %134 ]
  %192 = icmp eq i32 %191, 0
  %193 = and i1 %192, %3
  br i1 %193, label %194, label %206

194:                                              ; preds = %190
  %195 = load ptr, ptr @actrow, align 8, !tbaa !11
  %196 = zext i32 %2 to i64
  br label %197

197:                                              ; preds = %203, %194
  %198 = phi i64 [ 0, %194 ], [ %204, %203 ]
  %199 = getelementptr inbounds i16, ptr %195, i64 %198
  %200 = load i16, ptr %199, align 2, !tbaa !13
  %201 = icmp eq i16 %200, -32768
  br i1 %201, label %202, label %203

202:                                              ; preds = %197
  store i16 0, ptr %199, align 2, !tbaa !13
  br label %203

203:                                              ; preds = %202, %197
  %204 = add nuw nsw i64 %198, 1
  %205 = icmp eq i64 %204, %196
  br i1 %205, label %206, label %197, !llvm.loop !222

206:                                              ; preds = %203, %190
  ret i32 %191
}

; Function Attrs: nounwind optsize uwtable
define internal void @save_row(i32 noundef %0) #0 {
  %2 = load i32, ptr @ntokens, align 4, !tbaa !7
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %4, label %62

4:                                                ; preds = %1
  %5 = load ptr, ptr @actrow, align 8, !tbaa !11
  %6 = zext i32 %2 to i64
  br label %7

7:                                                ; preds = %7, %4
  %8 = phi i64 [ 0, %4 ], [ %15, %7 ]
  %9 = phi i32 [ 0, %4 ], [ %14, %7 ]
  %10 = getelementptr inbounds i16, ptr %5, i64 %8
  %11 = load i16, ptr %10, align 2, !tbaa !13
  %12 = icmp ne i16 %11, 0
  %13 = zext i1 %12 to i32
  %14 = add nuw nsw i32 %9, %13
  %15 = add nuw nsw i64 %8, 1
  %16 = icmp eq i64 %15, %6
  br i1 %16, label %17, label %7, !llvm.loop !223

17:                                               ; preds = %7
  %.lcssa = phi i32 [ %14, %7 ]
  %18 = icmp eq i32 %.lcssa, 0
  br i1 %18, label %62, label %19

19:                                               ; preds = %17
  %20 = shl nuw i32 %.lcssa, 1
  %21 = tail call ptr (i32, ...) @mallocate(i32 noundef %20) #29
  %22 = load ptr, ptr @froms, align 8, !tbaa !11
  %23 = sext i32 %0 to i64
  %24 = getelementptr inbounds ptr, ptr %22, i64 %23
  store ptr %21, ptr %24, align 8, !tbaa !11
  %25 = tail call ptr (i32, ...) @mallocate(i32 noundef %20) #29
  %26 = load ptr, ptr @tos, align 8, !tbaa !11
  %27 = getelementptr inbounds ptr, ptr %26, i64 %23
  store ptr %25, ptr %27, align 8, !tbaa !11
  %28 = load i32, ptr @ntokens, align 4, !tbaa !7
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %50

30:                                               ; preds = %19
  %31 = load ptr, ptr @actrow, align 8, !tbaa !11
  %32 = zext i32 %28 to i64
  br label %33

33:                                               ; preds = %45, %30
  %34 = phi i64 [ 0, %30 ], [ %48, %45 ]
  %35 = phi ptr [ %25, %30 ], [ %47, %45 ]
  %36 = phi ptr [ %21, %30 ], [ %46, %45 ]
  %37 = getelementptr inbounds i16, ptr %31, i64 %34
  %38 = load i16, ptr %37, align 2, !tbaa !13
  %39 = icmp eq i16 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %33
  %41 = trunc i64 %34 to i16
  %42 = getelementptr inbounds i16, ptr %36, i64 1
  store i16 %41, ptr %36, align 2, !tbaa !13
  %43 = load i16, ptr %37, align 2, !tbaa !13
  %44 = getelementptr inbounds i16, ptr %35, i64 1
  store i16 %43, ptr %35, align 2, !tbaa !13
  br label %45

45:                                               ; preds = %40, %33
  %46 = phi ptr [ %42, %40 ], [ %36, %33 ]
  %47 = phi ptr [ %44, %40 ], [ %35, %33 ]
  %48 = add nuw nsw i64 %34, 1
  %49 = icmp eq i64 %48, %32
  br i1 %49, label %50, label %33, !llvm.loop !224

50:                                               ; preds = %45, %19
  %51 = phi ptr [ %21, %19 ], [ %46, %45 ]
  %52 = trunc i32 %.lcssa to i16
  %53 = load ptr, ptr @tally, align 8, !tbaa !11
  %54 = getelementptr inbounds i16, ptr %53, i64 %23
  store i16 %52, ptr %54, align 2, !tbaa !13
  %55 = getelementptr inbounds i16, ptr %51, i64 -1
  %56 = load i16, ptr %55, align 2, !tbaa !13
  %57 = load i16, ptr %21, align 2, !tbaa !13
  %58 = add i16 %56, 1
  %59 = sub i16 %58, %57
  %60 = load ptr, ptr @width, align 8, !tbaa !11
  %61 = getelementptr inbounds i16, ptr %60, i64 %23
  store i16 %59, ptr %61, align 2, !tbaa !13
  br label %62

62:                                               ; preds = %50, %17, %1
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @terse() #0 {
  %1 = load i8, ptr @any_conflicts, align 1, !tbaa !61
  %2 = icmp eq i8 %1, 0
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @conflict_log() #29
  br label %4

4:                                                ; preds = %3, %0
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @verbose() #0 {
  %1 = load i8, ptr @any_conflicts, align 1, !tbaa !61
  %2 = icmp eq i8 %1, 0
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @verbose_conflict_log() #29
  br label %4

4:                                                ; preds = %3, %0
  %5 = load ptr, ptr @foutput, align 8, !tbaa !11
  %6 = tail call i64 @fwrite(ptr nonnull @.str.169, i64 15, i64 1, ptr %5)
  %7 = load ptr, ptr @foutput, align 8, !tbaa !11
  %8 = load ptr, ptr @tags, align 8, !tbaa !11
  %9 = load ptr, ptr %8, align 8, !tbaa !11
  %10 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef nonnull @.str.1.170, i32 noundef -1, ptr noundef %9) #30
  %11 = load i32, ptr @translations, align 4, !tbaa !7
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %4
  %14 = load i32, ptr @max_user_token_number, align 4, !tbaa !7
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %56, label %16

16:                                               ; preds = %13
  %17 = load ptr, ptr @token_translations, align 8, !tbaa !11
  br label %21

18:                                               ; preds = %4
  %19 = load i32, ptr @ntokens, align 4, !tbaa !7
  %20 = icmp sgt i32 %19, 1
  br i1 %20, label %44, label %56

21:                                               ; preds = %38, %16
  %22 = phi i32 [ %14, %16 ], [ %39, %38 ]
  %23 = phi ptr [ %17, %16 ], [ %40, %38 ]
  %24 = phi i64 [ 0, %16 ], [ %41, %38 ]
  %25 = getelementptr inbounds i16, ptr %23, i64 %24
  %26 = load i16, ptr %25, align 2, !tbaa !13
  %27 = icmp eq i16 %26, 2
  br i1 %27, label %38, label %28

28:                                               ; preds = %21
  %29 = load ptr, ptr @foutput, align 8, !tbaa !11
  %30 = load ptr, ptr @tags, align 8, !tbaa !11
  %31 = sext i16 %26 to i64
  %32 = getelementptr inbounds ptr, ptr %30, i64 %31
  %33 = load ptr, ptr %32, align 8, !tbaa !11
  %34 = trunc i64 %24 to i32
  %35 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %29, ptr noundef nonnull @.str.1.170, i32 noundef %34, ptr noundef %33) #30
  %36 = load ptr, ptr @token_translations, align 8, !tbaa !11
  %37 = load i32, ptr @max_user_token_number, align 4, !tbaa !7
  br label %38

38:                                               ; preds = %28, %21
  %39 = phi i32 [ %22, %21 ], [ %37, %28 ]
  %40 = phi ptr [ %23, %21 ], [ %36, %28 ]
  %41 = add nuw nsw i64 %24, 1
  %42 = sext i32 %39 to i64
  %43 = icmp slt i64 %24, %42
  br i1 %43, label %21, label %56, !llvm.loop !225

44:                                               ; preds = %44, %18
  %45 = phi i64 [ %52, %44 ], [ 1, %18 ]
  %46 = load ptr, ptr @foutput, align 8, !tbaa !11
  %47 = load ptr, ptr @tags, align 8, !tbaa !11
  %48 = getelementptr inbounds ptr, ptr %47, i64 %45
  %49 = load ptr, ptr %48, align 8, !tbaa !11
  %50 = trunc i64 %45 to i32
  %51 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %46, ptr noundef nonnull @.str.1.170, i32 noundef %50, ptr noundef %49) #30
  %52 = add nuw nsw i64 %45, 1
  %53 = load i32, ptr @ntokens, align 4, !tbaa !7
  %54 = sext i32 %53 to i64
  %55 = icmp slt i64 %52, %54
  br i1 %55, label %44, label %56, !llvm.loop !226

56:                                               ; preds = %44, %38, %18, %13
  %57 = load i32, ptr @nstates, align 4, !tbaa !7
  %58 = icmp sgt i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %59, %56
  %60 = phi i32 [ %61, %59 ], [ 0, %56 ]
  tail call void @print_state(i32 noundef %60) #30
  %61 = add nuw nsw i32 %60, 1
  %62 = load i32, ptr @nstates, align 4, !tbaa !7
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %59, label %64, !llvm.loop !227

64:                                               ; preds = %59, %56
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @print_state(i32 noundef %0) #0 {
  %2 = load ptr, ptr @foutput, align 8, !tbaa !11
  %3 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.2.171, i32 noundef %0) #30
  tail call void @print_core(i32 noundef %0) #30
  tail call void @print_actions(i32 noundef %0) #30
  ret void
}

; Function Attrs: nofree nounwind optsize uwtable
define internal void @print_core(i32 noundef %0) #12 {
  %2 = load ptr, ptr @state_table, align 8, !tbaa !11
  %3 = sext i32 %0 to i64
  %4 = getelementptr inbounds ptr, ptr %2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !11
  %6 = getelementptr inbounds %struct.core, ptr %5, i64 0, i32 4
  %7 = load i16, ptr %6, align 4, !tbaa !18
  %8 = sext i16 %7 to i64
  %9 = icmp eq i16 %7, 0
  br i1 %9, label %85, label %10

10:                                               ; preds = %1
  %11 = icmp sgt i16 %7, 0
  br i1 %11, label %12, label %82

12:                                               ; preds = %10
  %13 = and i64 %8, 4294967295
  br label %14

14:                                               ; preds = %75, %12
  %15 = phi i64 [ 0, %12 ], [ %80, %75 ]
  %16 = load ptr, ptr @ritem, align 8, !tbaa !11
  %17 = getelementptr inbounds %struct.core, ptr %5, i64 0, i32 5, i64 %15
  %18 = load i16, ptr %17, align 2, !tbaa !13
  %19 = sext i16 %18 to i64
  %20 = getelementptr inbounds i16, ptr %16, i64 %19
  br label %21

21:                                               ; preds = %21, %14
  %22 = phi ptr [ %20, %14 ], [ %25, %21 ]
  %23 = load i16, ptr %22, align 2, !tbaa !13
  %24 = icmp sgt i16 %23, 0
  %25 = getelementptr inbounds i16, ptr %22, i64 1
  br i1 %24, label %21, label %26, !llvm.loop !228

26:                                               ; preds = %21
  %.lcssa = phi i16 [ %23, %21 ]
  %27 = sext i16 %.lcssa to i32
  %28 = sub nsw i32 0, %27
  %29 = load ptr, ptr @foutput, align 8, !tbaa !11
  %30 = load ptr, ptr @tags, align 8, !tbaa !11
  %31 = load ptr, ptr @rlhs, align 8, !tbaa !11
  %32 = zext i32 %28 to i64
  %33 = getelementptr inbounds i16, ptr %31, i64 %32
  %34 = load i16, ptr %33, align 2, !tbaa !13
  %35 = sext i16 %34 to i64
  %36 = getelementptr inbounds ptr, ptr %30, i64 %35
  %37 = load ptr, ptr %36, align 8, !tbaa !11
  %38 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %29, ptr noundef nonnull @.str.3.177, ptr noundef %37) #30
  %39 = load ptr, ptr @ritem, align 8, !tbaa !11
  %40 = load ptr, ptr @rrhs, align 8, !tbaa !11
  %41 = getelementptr inbounds i16, ptr %40, i64 %32
  %42 = load i16, ptr %41, align 2, !tbaa !13
  %43 = sext i16 %42 to i64
  %44 = getelementptr inbounds i16, ptr %39, i64 %43
  %45 = icmp ult ptr %44, %20
  br i1 %45, label %46, label %57

46:                                               ; preds = %46, %26
  %47 = phi ptr [ %55, %46 ], [ %44, %26 ]
  %48 = load ptr, ptr @foutput, align 8, !tbaa !11
  %49 = load ptr, ptr @tags, align 8, !tbaa !11
  %50 = load i16, ptr %47, align 2, !tbaa !13
  %51 = sext i16 %50 to i64
  %52 = getelementptr inbounds ptr, ptr %49, i64 %51
  %53 = load ptr, ptr %52, align 8, !tbaa !11
  %54 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %48, ptr noundef nonnull @.str.4.178, ptr noundef %53) #30
  %55 = getelementptr inbounds i16, ptr %47, i64 1
  %56 = icmp ult ptr %55, %20
  br i1 %56, label %46, label %57, !llvm.loop !229

57:                                               ; preds = %46, %26
  %58 = phi ptr [ %44, %26 ], [ %55, %46 ]
  %59 = load ptr, ptr @foutput, align 8, !tbaa !11
  %60 = tail call i32 @putc(i32 noundef 46, ptr noundef %59) #30
  %61 = load i16, ptr %58, align 2, !tbaa !13
  %62 = icmp sgt i16 %61, 0
  br i1 %62, label %63, label %75

63:                                               ; preds = %63, %57
  %64 = phi i16 [ %73, %63 ], [ %61, %57 ]
  %65 = phi ptr [ %72, %63 ], [ %58, %57 ]
  %66 = load ptr, ptr @foutput, align 8, !tbaa !11
  %67 = load ptr, ptr @tags, align 8, !tbaa !11
  %68 = zext i16 %64 to i64
  %69 = getelementptr inbounds ptr, ptr %67, i64 %68
  %70 = load ptr, ptr %69, align 8, !tbaa !11
  %71 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %66, ptr noundef nonnull @.str.5.179, ptr noundef %70) #30
  %72 = getelementptr inbounds i16, ptr %65, i64 1
  %73 = load i16, ptr %72, align 2, !tbaa !13
  %74 = icmp sgt i16 %73, 0
  br i1 %74, label %63, label %75, !llvm.loop !230

75:                                               ; preds = %63, %57
  %76 = load ptr, ptr @foutput, align 8, !tbaa !11
  %77 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %76, ptr noundef nonnull @.str.6.180, i32 noundef %28) #30
  %78 = load ptr, ptr @foutput, align 8, !tbaa !11
  %79 = tail call i32 @putc(i32 noundef 10, ptr noundef %78) #30
  %80 = add nuw nsw i64 %15, 1
  %81 = icmp eq i64 %80, %13
  br i1 %81, label %82, label %14, !llvm.loop !231

82:                                               ; preds = %75, %10
  %83 = load ptr, ptr @foutput, align 8, !tbaa !11
  %84 = tail call i32 @putc(i32 noundef 10, ptr noundef %83) #30
  br label %85

85:                                               ; preds = %82, %1
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @print_actions(i32 noundef %0) #0 {
  %2 = load ptr, ptr @shift_table, align 8, !tbaa !11
  %3 = sext i32 %0 to i64
  %4 = getelementptr inbounds ptr, ptr %2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !11
  %6 = load ptr, ptr @reduction_table, align 8, !tbaa !11
  %7 = getelementptr inbounds ptr, ptr %6, i64 %3
  %8 = load ptr, ptr %7, align 8, !tbaa !11
  %9 = load ptr, ptr @err_table, align 8, !tbaa !11
  %10 = getelementptr inbounds ptr, ptr %9, i64 %3
  %11 = load ptr, ptr %10, align 8, !tbaa !11
  %12 = icmp ne ptr %5, null
  %13 = icmp ne ptr %8, null
  %14 = select i1 %12, i1 true, i1 %13
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load ptr, ptr @foutput, align 8, !tbaa !11
  %17 = tail call i64 @fwrite(ptr nonnull @.str.7.172, i64 15, i64 1, ptr %16)
  br label %127

18:                                               ; preds = %1
  br i1 %12, label %19, label %49

19:                                               ; preds = %18
  %20 = getelementptr inbounds %struct.shifts, ptr %5, i64 0, i32 2
  %21 = load i16, ptr %20, align 2, !tbaa !35
  %22 = icmp slt i16 %21, 1
  br i1 %22, label %49, label %23

23:                                               ; preds = %19
  %24 = zext i16 %21 to i64
  br label %25

25:                                               ; preds = %42, %23
  %26 = phi i64 [ 0, %23 ], [ %43, %42 ]
  %27 = getelementptr inbounds %struct.shifts, ptr %5, i64 0, i32 3, i64 %26
  %28 = load i16, ptr %27, align 2, !tbaa !13
  %29 = icmp eq i16 %28, 0
  br i1 %29, label %42, label %30

30:                                               ; preds = %25
  %31 = sext i16 %28 to i32
  %32 = load ptr, ptr @accessing_symbol, align 8, !tbaa !11
  %33 = sext i16 %28 to i64
  %34 = getelementptr inbounds i16, ptr %32, i64 %33
  %35 = load i16, ptr %34, align 2, !tbaa !13
  %36 = load ptr, ptr @foutput, align 8, !tbaa !11
  %37 = load ptr, ptr @tags, align 8, !tbaa !11
  %38 = sext i16 %35 to i64
  %39 = getelementptr inbounds ptr, ptr %37, i64 %38
  %40 = load ptr, ptr %39, align 8, !tbaa !11
  %41 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %36, ptr noundef nonnull @.str.8.173, ptr noundef %40, i32 noundef %31) #30
  br label %42

42:                                               ; preds = %30, %25
  %43 = add nuw nsw i64 %26, 1
  %44 = icmp eq i64 %43, %24
  br i1 %44, label %45, label %25, !llvm.loop !232

45:                                               ; preds = %42
  br i1 %22, label %49, label %46

46:                                               ; preds = %45
  %47 = load ptr, ptr @foutput, align 8, !tbaa !11
  %48 = tail call i32 @putc(i32 noundef 10, ptr noundef %47) #30
  br label %49

49:                                               ; preds = %46, %45, %19, %18
  %50 = icmp eq ptr %11, null
  br i1 %50, label %75, label %51

51:                                               ; preds = %49
  %52 = load i16, ptr %11, align 2, !tbaa !71
  %53 = sext i16 %52 to i32
  %54 = icmp sgt i16 %52, 0
  br i1 %54, label %55, label %75

55:                                               ; preds = %51
  %56 = zext i32 %53 to i64
  br label %57

57:                                               ; preds = %69, %55
  %58 = phi i64 [ 0, %55 ], [ %70, %69 ]
  %59 = getelementptr inbounds %struct.errs, ptr %11, i64 0, i32 1, i64 %58
  %60 = load i16, ptr %59, align 2, !tbaa !13
  %61 = icmp eq i16 %60, 0
  br i1 %61, label %69, label %62

62:                                               ; preds = %57
  %63 = load ptr, ptr @foutput, align 8, !tbaa !11
  %64 = load ptr, ptr @tags, align 8, !tbaa !11
  %65 = sext i16 %60 to i64
  %66 = getelementptr inbounds ptr, ptr %64, i64 %65
  %67 = load ptr, ptr %66, align 8, !tbaa !11
  %68 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %63, ptr noundef nonnull @.str.9.174, ptr noundef %67) #30
  br label %69

69:                                               ; preds = %62, %57
  %70 = add nuw nsw i64 %58, 1
  %71 = icmp eq i64 %70, %56
  br i1 %71, label %72, label %57, !llvm.loop !233

72:                                               ; preds = %69
  %73 = load ptr, ptr @foutput, align 8, !tbaa !11
  %74 = tail call i32 @putc(i32 noundef 10, ptr noundef %73) #30
  br label %75

75:                                               ; preds = %72, %51, %49
  %76 = phi i32 [ %53, %72 ], [ 0, %49 ], [ %53, %51 ]
  %77 = phi i32 [ %53, %72 ], [ 0, %49 ], [ 0, %51 ]
  %78 = load ptr, ptr @consistent, align 8, !tbaa !11
  %79 = getelementptr inbounds i8, ptr %78, i64 %3
  %80 = load i8, ptr %79, align 1, !tbaa !61
  %81 = icmp ne i8 %80, 0
  %82 = select i1 %81, i1 %13, i1 false
  br i1 %82, label %83, label %97

83:                                               ; preds = %75
  %84 = getelementptr inbounds %struct.shifts, ptr %8, i64 0, i32 3
  %85 = load i16, ptr %84, align 4, !tbaa !13
  %86 = sext i16 %85 to i32
  %87 = load ptr, ptr @rlhs, align 8, !tbaa !11
  %88 = sext i16 %85 to i64
  %89 = getelementptr inbounds i16, ptr %87, i64 %88
  %90 = load i16, ptr %89, align 2, !tbaa !13
  %91 = load ptr, ptr @foutput, align 8, !tbaa !11
  %92 = load ptr, ptr @tags, align 8, !tbaa !11
  %93 = sext i16 %90 to i64
  %94 = getelementptr inbounds ptr, ptr %92, i64 %93
  %95 = load ptr, ptr %94, align 8, !tbaa !11
  %96 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %91, ptr noundef nonnull @.str.10.175, i32 noundef %86, ptr noundef %95) #30
  br label %99

97:                                               ; preds = %75
  br i1 %13, label %98, label %99

98:                                               ; preds = %97
  tail call void @print_reductions(i32 noundef %0) #29
  br label %99

99:                                               ; preds = %98, %97, %83
  %100 = icmp slt i32 %77, %76
  br i1 %100, label %101, label %127

101:                                              ; preds = %99
  %102 = zext i32 %77 to i64
  %103 = zext i32 %76 to i64
  br label %104

104:                                              ; preds = %121, %101
  %105 = phi i64 [ %102, %101 ], [ %122, %121 ]
  %106 = getelementptr inbounds %struct.shifts, ptr %5, i64 0, i32 3, i64 %105
  %107 = load i16, ptr %106, align 2, !tbaa !13
  %108 = icmp eq i16 %107, 0
  br i1 %108, label %121, label %109

109:                                              ; preds = %104
  %110 = sext i16 %107 to i32
  %111 = load ptr, ptr @accessing_symbol, align 8, !tbaa !11
  %112 = sext i16 %107 to i64
  %113 = getelementptr inbounds i16, ptr %111, i64 %112
  %114 = load i16, ptr %113, align 2, !tbaa !13
  %115 = load ptr, ptr @foutput, align 8, !tbaa !11
  %116 = load ptr, ptr @tags, align 8, !tbaa !11
  %117 = sext i16 %114 to i64
  %118 = getelementptr inbounds ptr, ptr %116, i64 %117
  %119 = load ptr, ptr %118, align 8, !tbaa !11
  %120 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %115, ptr noundef nonnull @.str.11.176, ptr noundef %119, i32 noundef %110) #30
  br label %121

121:                                              ; preds = %109, %104
  %122 = add nuw nsw i64 %105, 1
  %123 = icmp eq i64 %122, %103
  br i1 %123, label %124, label %104, !llvm.loop !234

124:                                              ; preds = %121
  %125 = load ptr, ptr @foutput, align 8, !tbaa !11
  %126 = tail call i32 @putc(i32 noundef 10, ptr noundef %125) #30
  br label %127

127:                                              ; preds = %124, %99, %15
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @reader() #0 {
  store i32 0, ptr @start_flag, align 4, !tbaa !7
  store ptr null, ptr @startval, align 8, !tbaa !11
  store i32 0, ptr @translations, align 4, !tbaa !7
  store i32 1, ptr @nsyms, align 4, !tbaa !7
  store i32 0, ptr @nvars, align 4, !tbaa !7
  store i32 0, ptr @nrules, align 4, !tbaa !7
  store i32 0, ptr @nitems, align 4, !tbaa !7
  store i32 10, ptr @rline_allocated, align 4, !tbaa !7
  %1 = tail call ptr (i32, ...) @mallocate(i32 noundef 20) #29
  store ptr %1, ptr @rline, align 8, !tbaa !11
  store i1 false, ptr @typed, align 4
  store i32 0, ptr @lastprec, align 4, !tbaa !7
  store i32 0, ptr @gensym_count, align 4, !tbaa !7
  store i32 0, ptr @semantic_parser, align 4, !tbaa !7
  store i32 0, ptr @pure_parser, align 4, !tbaa !7
  store i1 false, ptr @yylsp_needed, align 4
  store ptr null, ptr @grammar, align 8, !tbaa !11
  tail call void @init_lex() #29
  store i32 1, ptr @lineno, align 4, !tbaa !7
  tail call void @tabinit() #29
  %2 = tail call ptr (ptr, ...) @getsym(ptr noundef nonnull @.str.185) #29
  store ptr %2, ptr @errtoken, align 8, !tbaa !11
  %3 = getelementptr inbounds %struct.bucket, ptr %2, i64 0, i32 8
  store i8 1, ptr %3, align 8, !tbaa !160
  %4 = tail call ptr (ptr, ...) @getsym(ptr noundef nonnull @.str.1.186) #29
  %5 = getelementptr inbounds %struct.bucket, ptr %4, i64 0, i32 8
  store i8 1, ptr %5, align 8, !tbaa !160
  %6 = load ptr, ptr @ftable, align 8, !tbaa !11
  %7 = load ptr, ptr @infile, align 8, !tbaa !11
  %8 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %7, i32 noundef 47) #34
  %9 = icmp eq ptr %8, null
  %10 = getelementptr inbounds i8, ptr %8, i64 1
  %11 = select i1 %9, ptr %7, ptr %10
  %12 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef nonnull @.str.2.187, ptr noundef %11) #30
  tail call void @read_declarations() #30
  tail call void @output_ltype() #30
  tail call void @output_headers() #29
  tail call void @readgram() #30
  tail call void @output_trailers() #29
  %13 = load i1, ptr @yylsp_needed, align 4
  br i1 %13, label %14, label %17

14:                                               ; preds = %0
  %15 = load ptr, ptr @ftable, align 8, !tbaa !11
  %16 = tail call i64 @fwrite(ptr nonnull @.str.3.188, i64 22, i64 1, ptr %15)
  br label %17

17:                                               ; preds = %14, %0
  tail call void @packsymbols() #30
  tail call void @packgram() #30
  tail call void @free_symtab() #29
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @read_declarations() #0 {
  br label %1

1:                                                ; preds = %20, %0
  %2 = tail call i32 @skip_white_space() #29
  switch i32 %2, label %21 [
    i32 37, label %3
    i32 -1, label %19
  ]

3:                                                ; preds = %1
  %4 = tail call i32 @parse_percent_token() #29
  switch i32 %4, label %18 [
    i32 7, label %5
    i32 8, label %6
    i32 9, label %7
    i32 10, label %8
    i32 12, label %9
    i32 14, label %10
    i32 13, label %11
    i32 23, label %12
    i32 15, label %13
    i32 16, label %14
    i32 17, label %15
    i32 19, label %16
    i32 20, label %17
  ]

5:                                                ; preds = %3
  ret void

6:                                                ; preds = %3
  tail call void @copy_definition() #30
  br label %20

7:                                                ; preds = %3
  tail call void @parse_token_decl(i32 noundef 1, i32 noundef 2) #30
  br label %20

8:                                                ; preds = %3
  tail call void @parse_token_decl(i32 noundef 2, i32 noundef 1) #30
  br label %20

9:                                                ; preds = %3
  tail call void @parse_type_decl() #30
  br label %20

10:                                               ; preds = %3
  tail call void @parse_start_decl() #30
  br label %20

11:                                               ; preds = %3
  tail call void @parse_union_decl() #30
  br label %20

12:                                               ; preds = %3
  tail call void @parse_expect_decl() #30
  br label %20

13:                                               ; preds = %3
  tail call void @parse_assoc_decl(i32 noundef 2) #30
  br label %20

14:                                               ; preds = %3
  tail call void @parse_assoc_decl(i32 noundef 1) #30
  br label %20

15:                                               ; preds = %3
  tail call void @parse_assoc_decl(i32 noundef 3) #30
  br label %20

16:                                               ; preds = %3
  store i32 1, ptr @semantic_parser, align 4, !tbaa !7
  tail call void @open_extra_files() #29
  br label %20

17:                                               ; preds = %3
  store i32 1, ptr @pure_parser, align 4, !tbaa !7
  br label %20

18:                                               ; preds = %3
  tail call void @fatal(ptr noundef nonnull @.str.4.227) #29
  br label %20

19:                                               ; preds = %1
  tail call void @fatal(ptr noundef nonnull @.str.5.192) #29
  br label %20

20:                                               ; preds = %21, %19, %18, %17, %16, %15, %14, %13, %12, %11, %10, %9, %8, %7, %6
  br label %1

21:                                               ; preds = %1
  tail call void @fatals(ptr noundef nonnull @.str.6.228, i32 noundef %2, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #29
  br label %20
}

; Function Attrs: nofree nounwind optsize uwtable
define internal void @output_ltype() #12 {
  %1 = load ptr, ptr @fattrs, align 8, !tbaa !11
  %2 = tail call i64 @fwrite(ptr nonnull @.str.26.219, i64 188, i64 1, ptr %1)
  %3 = load ptr, ptr @fdefines, align 8, !tbaa !11
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %0
  %6 = tail call i64 @fwrite(ptr nonnull @.str.26.219, i64 188, i64 1, ptr nonnull %3)
  br label %7

7:                                                ; preds = %5, %0
  %8 = load ptr, ptr @fattrs, align 8, !tbaa !11
  %9 = tail call i64 @fwrite(ptr nonnull @.str.27.220, i64 31, i64 1, ptr %8)
  %10 = load ptr, ptr @fattrs, align 8, !tbaa !11
  %11 = tail call i64 @fwrite(ptr nonnull @.str.28.221, i64 29, i64 1, ptr %10)
  %12 = load ptr, ptr @fattrs, align 8, !tbaa !11
  %13 = tail call i64 @fwrite(ptr nonnull @.str.29.222, i64 30, i64 1, ptr %12)
  %14 = load ptr, ptr @fattrs, align 8, !tbaa !11
  %15 = tail call i64 @fwrite(ptr nonnull @.str.30.223, i64 49, i64 1, ptr %14)
  %16 = load ptr, ptr @fattrs, align 8, !tbaa !11
  %17 = tail call i64 @fwrite(ptr nonnull @.str.31.224, i64 51, i64 1, ptr %16)
  %18 = load ptr, ptr @fattrs, align 8, !tbaa !11
  %19 = tail call i64 @fwrite(ptr nonnull @.str.32.225, i64 51, i64 1, ptr %18)
  %20 = load ptr, ptr @fattrs, align 8, !tbaa !11
  %21 = tail call i64 @fwrite(ptr nonnull @.str.33.226, i64 50, i64 1, ptr %20)
  %22 = load ptr, ptr @fdefines, align 8, !tbaa !11
  %23 = icmp eq ptr %22, null
  br i1 %23, label %38, label %24

24:                                               ; preds = %7
  %25 = tail call i64 @fwrite(ptr nonnull @.str.27.220, i64 31, i64 1, ptr nonnull %22)
  %26 = load ptr, ptr @fdefines, align 8, !tbaa !11
  %27 = tail call i64 @fwrite(ptr nonnull @.str.28.221, i64 29, i64 1, ptr %26)
  %28 = load ptr, ptr @fdefines, align 8, !tbaa !11
  %29 = tail call i64 @fwrite(ptr nonnull @.str.29.222, i64 30, i64 1, ptr %28)
  %30 = load ptr, ptr @fdefines, align 8, !tbaa !11
  %31 = tail call i64 @fwrite(ptr nonnull @.str.30.223, i64 49, i64 1, ptr %30)
  %32 = load ptr, ptr @fdefines, align 8, !tbaa !11
  %33 = tail call i64 @fwrite(ptr nonnull @.str.31.224, i64 51, i64 1, ptr %32)
  %34 = load ptr, ptr @fdefines, align 8, !tbaa !11
  %35 = tail call i64 @fwrite(ptr nonnull @.str.32.225, i64 51, i64 1, ptr %34)
  %36 = load ptr, ptr @fdefines, align 8, !tbaa !11
  %37 = tail call i64 @fwrite(ptr nonnull @.str.33.226, i64 50, i64 1, ptr %36)
  br label %38

38:                                               ; preds = %24, %7
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @readgram() #0 {
  %1 = tail call i32 @lex() #29
  br label %2

2:                                                ; preds = %162, %0
  %3 = phi ptr [ null, %0 ], [ %163, %162 ]
  %4 = phi ptr [ undef, %0 ], [ %164, %162 ]
  %5 = phi i32 [ %1, %0 ], [ %165, %162 ]
  switch i32 %5, label %180 [
    i32 7, label %181
    i32 0, label %181
    i32 1, label %6
    i32 5, label %13
    i32 9, label %168
    i32 10, label %170
    i32 12, label %172
    i32 13, label %174
    i32 23, label %176
    i32 14, label %178
  ]

6:                                                ; preds = %2
  %7 = load ptr, ptr @symval, align 8, !tbaa !11
  %8 = tail call i32 @lex() #29
  %9 = icmp eq i32 %8, 3
  br i1 %9, label %16, label %10

10:                                               ; preds = %6
  tail call void @fatal(ptr noundef nonnull @.str.50) #29
  %11 = load i32, ptr @nrules, align 4, !tbaa !7
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %19, label %28

13:                                               ; preds = %2
  %14 = load i32, ptr @nrules, align 4, !tbaa !7
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %21, label %28

16:                                               ; preds = %6
  %17 = load i32, ptr @nrules, align 4, !tbaa !7
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %23, label %28

19:                                               ; preds = %10
  %20 = icmp eq i32 %8, 5
  br i1 %20, label %21, label %23

21:                                               ; preds = %19, %13
  %22 = phi ptr [ %7, %19 ], [ %4, %13 ]
  tail call void @fatal(ptr noundef nonnull @.str.51) #29
  br label %23

23:                                               ; preds = %21, %19, %16
  %24 = phi ptr [ %22, %21 ], [ %7, %19 ], [ %7, %16 ]
  %25 = load i32, ptr @start_flag, align 4, !tbaa !7
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  store ptr %24, ptr @startval, align 8, !tbaa !11
  br label %28

28:                                               ; preds = %27, %23, %16, %13, %10
  %29 = phi ptr [ %7, %16 ], [ %24, %23 ], [ %24, %27 ], [ %7, %10 ], [ %4, %13 ]
  %30 = load i32, ptr @nrules, align 4, !tbaa !7
  %31 = add nsw i32 %30, 1
  store i32 %31, ptr @nrules, align 4, !tbaa !7
  %32 = load i32, ptr @nitems, align 4, !tbaa !7
  %33 = add nsw i32 %32, 1
  store i32 %33, ptr @nitems, align 4, !tbaa !7
  tail call void @record_rule_line() #30
  %34 = tail call ptr (i32, ...) @mallocate(i32 noundef 24) #29
  %35 = getelementptr inbounds %struct.symbol_list, ptr %34, i64 0, i32 1
  store ptr %29, ptr %35, align 8, !tbaa !235
  %36 = icmp eq ptr %3, null
  %37 = select i1 %36, ptr @grammar, ptr %3
  store ptr %34, ptr %37, align 8, !tbaa !11
  %38 = getelementptr inbounds %struct.bucket, ptr %29, i64 0, i32 8
  %39 = load i8, ptr %38, align 8, !tbaa !160
  switch i8 %39, label %50 [
    i8 0, label %40
    i8 1, label %45
  ]

40:                                               ; preds = %28
  store i8 2, ptr %38, align 8, !tbaa !160
  %41 = load i32, ptr @nvars, align 4, !tbaa !7
  %42 = trunc i32 %41 to i16
  %43 = getelementptr inbounds %struct.bucket, ptr %29, i64 0, i32 4
  store i16 %42, ptr %43, align 8, !tbaa !237
  %44 = add nsw i32 %41, 1
  store i32 %44, ptr @nvars, align 4, !tbaa !7
  br label %50

45:                                               ; preds = %28
  %46 = getelementptr inbounds %struct.bucket, ptr %29, i64 0, i32 2
  %47 = load ptr, ptr %46, align 8, !tbaa !238
  %48 = ptrtoint ptr %47 to i64
  %49 = trunc i64 %48 to i32
  tail call void @fatals(ptr noundef nonnull @.str.52, i32 noundef %49, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #29
  br label %50

50:                                               ; preds = %45, %40, %28
  br label %51

51:                                               ; preds = %102, %50
  %52 = phi ptr [ %103, %102 ], [ %34, %50 ]
  %53 = phi ptr [ %104, %102 ], [ %3, %50 ]
  %54 = phi i32 [ %105, %102 ], [ 0, %50 ]
  %55 = phi i32 [ %108, %102 ], [ 0, %50 ]
  %56 = phi i32 [ %106, %102 ], [ 0, %50 ]
  %57 = phi ptr [ %107, %102 ], [ null, %50 ]
  %58 = tail call i32 @lex() #29
  switch i32 %58, label %109 [
    i32 1, label %59
    i32 6, label %100
  ]

59:                                               ; preds = %51
  %60 = load ptr, ptr @symval, align 8, !tbaa !11
  %61 = tail call i32 @lex() #29
  tail call void @unlex(i32 noundef %61) #29
  store ptr %60, ptr @symval, align 8, !tbaa !11
  %62 = icmp eq i32 %61, 3
  br i1 %62, label %63, label %65

63:                                               ; preds = %59
  %.lcssa11 = phi ptr [ %52, %59 ]
  %.lcssa5 = phi i32 [ %56, %59 ]
  %.lcssa3 = phi ptr [ %57, %59 ]
  %64 = tail call ptr (i32, ...) @mallocate(i32 noundef 24) #29
  store ptr %64, ptr %.lcssa11, align 8, !tbaa !239
  br label %130

65:                                               ; preds = %59
  %66 = icmp eq ptr %57, null
  %67 = select i1 %66, ptr %60, ptr %57
  %68 = icmp eq i32 %54, 0
  br i1 %68, label %92, label %69

69:                                               ; preds = %65
  %70 = load i32, ptr @gensym_count, align 4, !tbaa !7
  %71 = add nsw i32 %70, 1
  store i32 %71, ptr @gensym_count, align 4, !tbaa !7
  %72 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @token_buffer, ptr noundef nonnull dereferenceable(1) @.str.49, i32 noundef %71) #29
  %73 = tail call ptr (ptr, ...) @getsym(ptr noundef nonnull @token_buffer) #29
  %74 = getelementptr inbounds %struct.bucket, ptr %73, i64 0, i32 8
  store i8 2, ptr %74, align 8, !tbaa !160
  %75 = load i32, ptr @nvars, align 4, !tbaa !7
  %76 = add nsw i32 %75, 1
  store i32 %76, ptr @nvars, align 4, !tbaa !7
  %77 = trunc i32 %75 to i16
  %78 = getelementptr inbounds %struct.bucket, ptr %73, i64 0, i32 4
  store i16 %77, ptr %78, align 8, !tbaa !237
  %79 = load i32, ptr @nrules, align 4, !tbaa !7
  %80 = add nsw i32 %79, 1
  store i32 %80, ptr @nrules, align 4, !tbaa !7
  %81 = load i32, ptr @nitems, align 4, !tbaa !7
  %82 = add nsw i32 %81, 1
  store i32 %82, ptr @nitems, align 4, !tbaa !7
  tail call void @record_rule_line() #30
  %83 = tail call ptr (i32, ...) @mallocate(i32 noundef 24) #29
  %84 = icmp eq ptr %53, null
  %85 = select i1 %84, ptr @grammar, ptr %53
  store ptr %83, ptr %85, align 8, !tbaa !11
  %86 = getelementptr inbounds %struct.symbol_list, ptr %83, i64 0, i32 1
  store ptr %73, ptr %86, align 8, !tbaa !235
  %87 = tail call ptr (i32, ...) @mallocate(i32 noundef 24) #29
  store ptr %87, ptr %83, align 8, !tbaa !239
  store ptr %34, ptr %87, align 8, !tbaa !239
  %88 = load i32, ptr @nitems, align 4, !tbaa !7
  %89 = add nsw i32 %88, 1
  store i32 %89, ptr @nitems, align 4, !tbaa !7
  %90 = tail call ptr (i32, ...) @mallocate(i32 noundef 24) #29
  %91 = getelementptr inbounds %struct.symbol_list, ptr %90, i64 0, i32 1
  store ptr %73, ptr %91, align 8, !tbaa !235
  store ptr %90, ptr %52, align 8, !tbaa !239
  br label %92

92:                                               ; preds = %69, %65
  %93 = phi ptr [ %90, %69 ], [ %52, %65 ]
  %94 = phi ptr [ %87, %69 ], [ %53, %65 ]
  %95 = load i32, ptr @nitems, align 4, !tbaa !7
  %96 = add nsw i32 %95, 1
  store i32 %96, ptr @nitems, align 4, !tbaa !7
  %97 = tail call ptr (i32, ...) @mallocate(i32 noundef 24) #29
  %98 = load ptr, ptr @symval, align 8, !tbaa !11
  %99 = getelementptr inbounds %struct.symbol_list, ptr %97, i64 0, i32 1
  store ptr %98, ptr %99, align 8, !tbaa !235
  store ptr %97, ptr %93, align 8, !tbaa !239
  br label %102

100:                                              ; preds = %51
  tail call void @copy_action(ptr noundef %34, i32 noundef %55) #30
  %101 = add nsw i32 %56, 1
  br label %102

102:                                              ; preds = %100, %92
  %103 = phi ptr [ %52, %100 ], [ %97, %92 ]
  %104 = phi ptr [ %53, %100 ], [ %94, %92 ]
  %105 = phi i32 [ 1, %100 ], [ 0, %92 ]
  %106 = phi i32 [ %101, %100 ], [ %56, %92 ]
  %107 = phi ptr [ %57, %100 ], [ %67, %92 ]
  %108 = add nuw nsw i32 %55, 1
  br label %51

109:                                              ; preds = %51
  %.lcssa10 = phi ptr [ %52, %51 ]
  %.lcssa8 = phi i32 [ %54, %51 ]
  %.lcssa6 = phi i32 [ %55, %51 ]
  %.lcssa4 = phi i32 [ %56, %51 ]
  %.lcssa2 = phi ptr [ %57, %51 ]
  %.lcssa = phi i32 [ %58, %51 ]
  %110 = tail call ptr (i32, ...) @mallocate(i32 noundef 24) #29
  store ptr %110, ptr %.lcssa10, align 8, !tbaa !239
  %111 = icmp eq i32 %.lcssa, 18
  br i1 %111, label %112, label %117

112:                                              ; preds = %109
  %113 = tail call i32 @lex() #29
  %114 = load ptr, ptr @symval, align 8, !tbaa !11
  %115 = getelementptr inbounds %struct.symbol_list, ptr %34, i64 0, i32 2
  store ptr %114, ptr %115, align 8, !tbaa !240
  %116 = tail call i32 @lex() #29
  br label %117

117:                                              ; preds = %112, %109
  %118 = phi i32 [ %116, %112 ], [ %.lcssa, %109 ]
  switch i32 %118, label %130 [
    i32 11, label %119
    i32 6, label %125
  ]

119:                                              ; preds = %117
  %120 = load i32, ptr @semantic_parser, align 4, !tbaa !7
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %119
  tail call void @fatal(ptr noundef nonnull @.str.53.191) #29
  br label %123

123:                                              ; preds = %122, %119
  tail call void @copy_guard(ptr noundef %34, i32 noundef %.lcssa6) #30
  %124 = tail call i32 @lex() #29
  br label %158

125:                                              ; preds = %117
  %126 = icmp eq i32 %.lcssa8, 0
  br i1 %126, label %128, label %127

127:                                              ; preds = %125
  tail call void @fatal(ptr noundef nonnull @.str.54) #29
  br label %128

128:                                              ; preds = %127, %125
  tail call void @copy_action(ptr noundef %34, i32 noundef %.lcssa6) #30
  %129 = tail call i32 @lex() #29
  br label %158

130:                                              ; preds = %117, %63
  %131 = phi i32 [ %.lcssa5, %63 ], [ %.lcssa4, %117 ]
  %132 = phi ptr [ %.lcssa3, %63 ], [ %.lcssa2, %117 ]
  %133 = phi i32 [ 1, %63 ], [ %118, %117 ]
  %134 = phi ptr [ %64, %63 ], [ %110, %117 ]
  %135 = icmp eq i32 %131, 0
  %136 = icmp ne ptr %132, null
  %137 = select i1 %135, i1 %136, i1 false
  br i1 %137, label %138, label %158

138:                                              ; preds = %130
  %139 = getelementptr inbounds %struct.bucket, ptr %29, i64 0, i32 3
  %140 = load ptr, ptr %139, align 8, !tbaa !241
  %141 = getelementptr inbounds %struct.bucket, ptr %132, i64 0, i32 3
  %142 = load ptr, ptr %141, align 8, !tbaa !241
  %143 = icmp eq ptr %140, %142
  br i1 %143, label %158, label %144

144:                                              ; preds = %138
  %145 = icmp eq ptr %140, null
  %146 = icmp eq ptr %142, null
  %147 = or i1 %145, %146
  br i1 %147, label %151, label %148

148:                                              ; preds = %144
  %149 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %140, ptr noundef nonnull dereferenceable(1) %142) #34
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %158, label %151

151:                                              ; preds = %148, %144
  %152 = load ptr, ptr @stderr, align 8, !tbaa !11
  %153 = load ptr, ptr @infile, align 8, !tbaa !11
  %154 = load i32, ptr @lineno, align 4, !tbaa !7
  %155 = select i1 %145, ptr @.str.56, ptr %140
  %156 = select i1 %146, ptr @.str.56, ptr %142
  %157 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %152, ptr noundef nonnull @.str.55, ptr noundef %153, i32 noundef %154, ptr noundef nonnull %155, ptr noundef nonnull %156) #35
  br label %158

158:                                              ; preds = %151, %148, %138, %130, %128, %123
  %159 = phi ptr [ %110, %123 ], [ %110, %128 ], [ %134, %151 ], [ %134, %148 ], [ %134, %138 ], [ %134, %130 ]
  %160 = phi i32 [ %124, %123 ], [ %129, %128 ], [ %133, %151 ], [ %133, %148 ], [ %133, %138 ], [ %133, %130 ]
  %161 = icmp eq i32 %160, 4
  br i1 %161, label %166, label %162

162:                                              ; preds = %180, %178, %176, %174, %172, %170, %168, %166, %158
  %163 = phi ptr [ %3, %168 ], [ %3, %170 ], [ %3, %172 ], [ %3, %174 ], [ %3, %176 ], [ %3, %178 ], [ %3, %180 ], [ %159, %166 ], [ %159, %158 ]
  %164 = phi ptr [ %4, %168 ], [ %4, %170 ], [ %4, %172 ], [ %4, %174 ], [ %4, %176 ], [ %4, %178 ], [ %4, %180 ], [ %29, %166 ], [ %29, %158 ]
  %165 = phi i32 [ %169, %168 ], [ %171, %170 ], [ %173, %172 ], [ %175, %174 ], [ %177, %176 ], [ %179, %178 ], [ %5, %180 ], [ %167, %166 ], [ %160, %158 ]
  br label %2, !llvm.loop !242

166:                                              ; preds = %158
  %167 = tail call i32 @lex() #29
  br label %162

168:                                              ; preds = %2
  tail call void @parse_token_decl(i32 noundef 1, i32 noundef 2) #30
  %169 = tail call i32 @lex() #29
  br label %162

170:                                              ; preds = %2
  tail call void @parse_token_decl(i32 noundef 2, i32 noundef 1) #30
  %171 = tail call i32 @lex() #29
  br label %162

172:                                              ; preds = %2
  %173 = tail call i32 @get_type() #30
  br label %162

174:                                              ; preds = %2
  tail call void @parse_union_decl() #30
  %175 = tail call i32 @lex() #29
  br label %162

176:                                              ; preds = %2
  tail call void @parse_expect_decl() #30
  %177 = tail call i32 @lex() #29
  br label %162

178:                                              ; preds = %2
  tail call void @parse_start_decl() #30
  %179 = tail call i32 @lex() #29
  br label %162

180:                                              ; preds = %2
  tail call void @fatal(ptr noundef nonnull @.str.57) #29
  br label %162

181:                                              ; preds = %2, %2
  %182 = load i32, ptr @nrules, align 4, !tbaa !7
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %184, label %185

184:                                              ; preds = %181
  tail call void @fatal(ptr noundef nonnull @.str.5.192) #29
  br label %185

185:                                              ; preds = %184, %181
  %186 = load i1, ptr @typed, align 4
  br i1 %186, label %194, label %187

187:                                              ; preds = %185
  %188 = load ptr, ptr @fattrs, align 8, !tbaa !11
  %189 = tail call i64 @fwrite(ptr nonnull @.str.58, i64 43, i64 1, ptr %188)
  %190 = load ptr, ptr @fdefines, align 8, !tbaa !11
  %191 = icmp eq ptr %190, null
  br i1 %191, label %194, label %192

192:                                              ; preds = %187
  %193 = tail call i64 @fwrite(ptr nonnull @.str.58, i64 43, i64 1, ptr nonnull %190)
  br label %194

194:                                              ; preds = %192, %187, %185
  %195 = load ptr, ptr @firstsymbol, align 8, !tbaa !11
  %196 = icmp eq ptr %195, null
  br i1 %196, label %215, label %197

197:                                              ; preds = %211, %194
  %198 = phi ptr [ %213, %211 ], [ %195, %194 ]
  %199 = getelementptr inbounds %struct.bucket, ptr %198, i64 0, i32 8
  %200 = load i8, ptr %199, align 8, !tbaa !160
  %201 = icmp eq i8 %200, 0
  br i1 %201, label %202, label %211

202:                                              ; preds = %197
  %203 = load ptr, ptr @stderr, align 8, !tbaa !11
  %204 = getelementptr inbounds %struct.bucket, ptr %198, i64 0, i32 2
  %205 = load ptr, ptr %204, align 8, !tbaa !238
  %206 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %203, ptr noundef nonnull @.str.59, ptr noundef %205) #35
  store i32 1, ptr @failure, align 4, !tbaa !7
  store i8 2, ptr %199, align 8, !tbaa !160
  %207 = load i32, ptr @nvars, align 4, !tbaa !7
  %208 = add nsw i32 %207, 1
  store i32 %208, ptr @nvars, align 4, !tbaa !7
  %209 = trunc i32 %207 to i16
  %210 = getelementptr inbounds %struct.bucket, ptr %198, i64 0, i32 4
  store i16 %209, ptr %210, align 8, !tbaa !237
  br label %211

211:                                              ; preds = %202, %197
  %212 = getelementptr inbounds %struct.bucket, ptr %198, i64 0, i32 1
  %213 = load ptr, ptr %212, align 8, !tbaa !11
  %214 = icmp eq ptr %213, null
  br i1 %214, label %215, label %197, !llvm.loop !243

215:                                              ; preds = %211, %194
  %216 = load i32, ptr @nsyms, align 4, !tbaa !7
  %217 = load i32, ptr @nvars, align 4, !tbaa !7
  %218 = sub nsw i32 %216, %217
  store i32 %218, ptr @ntokens, align 4, !tbaa !7
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @packsymbols() #0 {
  %1 = load i32, ptr @nsyms, align 4, !tbaa !7
  %2 = shl i32 %1, 3
  %3 = add i32 %2, 8
  %4 = tail call ptr (i32, ...) @mallocate(i32 noundef %3) #29
  store ptr %4, ptr @tags, align 8, !tbaa !11
  store ptr @.str.61, ptr %4, align 8, !tbaa !11
  %5 = load i32, ptr @nsyms, align 4, !tbaa !7
  %6 = shl i32 %5, 1
  %7 = tail call ptr (i32, ...) @mallocate(i32 noundef %6) #29
  store ptr %7, ptr @sprec, align 8, !tbaa !11
  %8 = load i32, ptr @nsyms, align 4, !tbaa !7
  %9 = shl i32 %8, 1
  %10 = tail call ptr (i32, ...) @mallocate(i32 noundef %9) #29
  store ptr %10, ptr @sassoc, align 8, !tbaa !11
  store i32 255, ptr @max_user_token_number, align 4, !tbaa !7
  %11 = load ptr, ptr @firstsymbol, align 8, !tbaa !11
  %12 = icmp eq ptr %11, null
  br i1 %12, label %71, label %13

13:                                               ; preds = %0
  %14 = load i32, ptr @translations, align 4
  %15 = icmp ne i32 %14, 0
  %16 = load i32, ptr @ntokens, align 4
  %17 = trunc i32 %16 to i16
  br label %18

18:                                               ; preds = %47, %13
  %19 = phi ptr [ %11, %13 ], [ %69, %47 ]
  %20 = phi i16 [ 255, %13 ], [ %51, %47 ]
  %21 = phi i16 [ 1, %13 ], [ %50, %47 ]
  %22 = phi i32 [ 255, %13 ], [ %49, %47 ]
  %23 = getelementptr inbounds %struct.bucket, ptr %19, i64 0, i32 8
  %24 = load i8, ptr %23, align 8, !tbaa !160
  %25 = icmp eq i8 %24, 2
  br i1 %25, label %26, label %30

26:                                               ; preds = %18
  %27 = getelementptr inbounds %struct.bucket, ptr %19, i64 0, i32 4
  %28 = load i16, ptr %27, align 8, !tbaa !237
  %29 = add i16 %28, %17
  store i16 %29, ptr %27, align 8, !tbaa !237
  br label %47

30:                                               ; preds = %18
  %31 = getelementptr inbounds %struct.bucket, ptr %19, i64 0, i32 7
  %32 = load i16, ptr %31, align 2, !tbaa !162
  %33 = icmp eq i16 %32, 0
  %34 = select i1 %15, i1 %33, i1 false
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = add i16 %20, 1
  store i16 %36, ptr %31, align 2, !tbaa !162
  br label %37

37:                                               ; preds = %35, %30
  %38 = phi i16 [ %36, %35 ], [ %32, %30 ]
  %39 = phi i16 [ %36, %35 ], [ %20, %30 ]
  %40 = sext i16 %38 to i32
  %41 = icmp slt i32 %22, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  store i32 %40, ptr @max_user_token_number, align 4, !tbaa !7
  br label %43

43:                                               ; preds = %42, %37
  %44 = phi i32 [ %40, %42 ], [ %22, %37 ]
  %45 = add i16 %21, 1
  %46 = getelementptr inbounds %struct.bucket, ptr %19, i64 0, i32 4
  store i16 %21, ptr %46, align 8, !tbaa !237
  br label %47

47:                                               ; preds = %43, %26
  %48 = phi i16 [ %29, %26 ], [ %21, %43 ]
  %49 = phi i32 [ %22, %26 ], [ %44, %43 ]
  %50 = phi i16 [ %21, %26 ], [ %45, %43 ]
  %51 = phi i16 [ %20, %26 ], [ %39, %43 ]
  %52 = getelementptr inbounds %struct.bucket, ptr %19, i64 0, i32 2
  %53 = load ptr, ptr %52, align 8, !tbaa !238
  %54 = load ptr, ptr @tags, align 8, !tbaa !11
  %55 = getelementptr inbounds %struct.bucket, ptr %19, i64 0, i32 4
  %56 = sext i16 %48 to i64
  %57 = getelementptr inbounds ptr, ptr %54, i64 %56
  store ptr %53, ptr %57, align 8, !tbaa !11
  %58 = getelementptr inbounds %struct.bucket, ptr %19, i64 0, i32 5
  %59 = load i16, ptr %58, align 2, !tbaa !244
  %60 = load ptr, ptr @sprec, align 8, !tbaa !11
  %61 = getelementptr inbounds i16, ptr %60, i64 %56
  store i16 %59, ptr %61, align 2, !tbaa !13
  %62 = getelementptr inbounds %struct.bucket, ptr %19, i64 0, i32 6
  %63 = load i16, ptr %62, align 4, !tbaa !245
  %64 = load ptr, ptr @sassoc, align 8, !tbaa !11
  %65 = load i16, ptr %55, align 8, !tbaa !237
  %66 = sext i16 %65 to i64
  %67 = getelementptr inbounds i16, ptr %64, i64 %66
  store i16 %63, ptr %67, align 2, !tbaa !13
  %68 = getelementptr inbounds %struct.bucket, ptr %19, i64 0, i32 1
  %69 = load ptr, ptr %68, align 8, !tbaa !11
  %70 = icmp eq ptr %69, null
  br i1 %70, label %71, label %18, !llvm.loop !246

71:                                               ; preds = %47, %0
  %72 = phi i32 [ 255, %0 ], [ %49, %47 ]
  %73 = load i32, ptr @translations, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %135, label %75

75:                                               ; preds = %71
  %76 = shl nsw i32 %72, 1
  %77 = add i32 %76, 2
  %78 = tail call ptr (i32, ...) @mallocate(i32 noundef %77) #29
  store ptr %78, ptr @token_translations, align 8, !tbaa !11
  %79 = load i32, ptr @max_user_token_number, align 4, !tbaa !7
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %135, label %81

81:                                               ; preds = %75
  %82 = add nuw i32 %79, 1
  %83 = zext i32 %82 to i64
  %84 = add nuw nsw i64 %83, 7
  %85 = and i64 %84, 8589934584
  %86 = add nsw i64 %83, -1
  %87 = insertelement <8 x i64> poison, i64 %86, i64 0
  %88 = shufflevector <8 x i64> %87, <8 x i64> poison, <8 x i32> zeroinitializer
  br label %89

89:                                               ; preds = %131, %81
  %90 = phi i64 [ 0, %81 ], [ %132, %131 ]
  %91 = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %81 ], [ %133, %131 ]
  %92 = icmp ule <8 x i64> %91, %88
  %93 = extractelement <8 x i1> %92, i64 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %89
  %95 = getelementptr inbounds i16, ptr %78, i64 %90
  store i16 2, ptr %95, align 2, !tbaa !13
  br label %96

96:                                               ; preds = %94, %89
  %97 = extractelement <8 x i1> %92, i64 1
  br i1 %97, label %98, label %101

98:                                               ; preds = %96
  %99 = or i64 %90, 1
  %100 = getelementptr inbounds i16, ptr %78, i64 %99
  store i16 2, ptr %100, align 2, !tbaa !13
  br label %101

101:                                              ; preds = %98, %96
  %102 = extractelement <8 x i1> %92, i64 2
  br i1 %102, label %103, label %106

103:                                              ; preds = %101
  %104 = or i64 %90, 2
  %105 = getelementptr inbounds i16, ptr %78, i64 %104
  store i16 2, ptr %105, align 2, !tbaa !13
  br label %106

106:                                              ; preds = %103, %101
  %107 = extractelement <8 x i1> %92, i64 3
  br i1 %107, label %108, label %111

108:                                              ; preds = %106
  %109 = or i64 %90, 3
  %110 = getelementptr inbounds i16, ptr %78, i64 %109
  store i16 2, ptr %110, align 2, !tbaa !13
  br label %111

111:                                              ; preds = %108, %106
  %112 = extractelement <8 x i1> %92, i64 4
  br i1 %112, label %113, label %116

113:                                              ; preds = %111
  %114 = or i64 %90, 4
  %115 = getelementptr inbounds i16, ptr %78, i64 %114
  store i16 2, ptr %115, align 2, !tbaa !13
  br label %116

116:                                              ; preds = %113, %111
  %117 = extractelement <8 x i1> %92, i64 5
  br i1 %117, label %118, label %121

118:                                              ; preds = %116
  %119 = or i64 %90, 5
  %120 = getelementptr inbounds i16, ptr %78, i64 %119
  store i16 2, ptr %120, align 2, !tbaa !13
  br label %121

121:                                              ; preds = %118, %116
  %122 = extractelement <8 x i1> %92, i64 6
  br i1 %122, label %123, label %126

123:                                              ; preds = %121
  %124 = or i64 %90, 6
  %125 = getelementptr inbounds i16, ptr %78, i64 %124
  store i16 2, ptr %125, align 2, !tbaa !13
  br label %126

126:                                              ; preds = %123, %121
  %127 = extractelement <8 x i1> %92, i64 7
  br i1 %127, label %128, label %131

128:                                              ; preds = %126
  %129 = or i64 %90, 7
  %130 = getelementptr inbounds i16, ptr %78, i64 %129
  store i16 2, ptr %130, align 2, !tbaa !13
  br label %131

131:                                              ; preds = %128, %126
  %132 = add i64 %90, 8
  %133 = add <8 x i64> %91, <i64 8, i64 8, i64 8, i64 8, i64 8, i64 8, i64 8, i64 8>
  %134 = icmp eq i64 %132, %85
  br i1 %134, label %135, label %89, !llvm.loop !247

135:                                              ; preds = %131, %75, %71
  %136 = load ptr, ptr @firstsymbol, align 8, !tbaa !11
  %137 = icmp eq ptr %136, null
  br i1 %137, label %191, label %138

138:                                              ; preds = %135
  %139 = load i32, ptr @ntokens, align 4, !tbaa !7
  %140 = load i32, ptr @translations, align 4
  br label %141

141:                                              ; preds = %184, %138
  %142 = phi i32 [ %185, %184 ], [ %139, %138 ]
  %143 = phi i32 [ %186, %184 ], [ %140, %138 ]
  %144 = phi i32 [ %187, %184 ], [ %139, %138 ]
  %145 = phi ptr [ %189, %184 ], [ %136, %138 ]
  %146 = getelementptr inbounds %struct.bucket, ptr %145, i64 0, i32 4
  %147 = load i16, ptr %146, align 8, !tbaa !237
  %148 = sext i16 %147 to i32
  %149 = icmp sgt i32 %144, %148
  %150 = icmp ne i32 %143, 0
  %151 = select i1 %149, i1 %150, i1 false
  br i1 %151, label %152, label %184

152:                                              ; preds = %141
  %153 = load ptr, ptr @token_translations, align 8, !tbaa !11
  %154 = getelementptr inbounds %struct.bucket, ptr %145, i64 0, i32 7
  %155 = load i16, ptr %154, align 2, !tbaa !162
  %156 = sext i16 %155 to i64
  %157 = getelementptr inbounds i16, ptr %153, i64 %156
  %158 = load i16, ptr %157, align 2, !tbaa !13
  %159 = icmp eq i16 %158, 2
  br i1 %159, label %177, label %160

160:                                              ; preds = %152
  %161 = load ptr, ptr @tags, align 8, !tbaa !11
  %162 = sext i16 %158 to i64
  %163 = getelementptr inbounds ptr, ptr %161, i64 %162
  %164 = load ptr, ptr %163, align 8, !tbaa !11
  %165 = ptrtoint ptr %164 to i64
  %166 = trunc i64 %165 to i32
  %167 = getelementptr inbounds %struct.bucket, ptr %145, i64 0, i32 2
  %168 = load ptr, ptr %167, align 8, !tbaa !238
  %169 = ptrtoint ptr %168 to i64
  %170 = trunc i64 %169 to i32
  %171 = sext i16 %155 to i32
  tail call void @fatals(ptr noundef nonnull @.str.62, i32 noundef %166, i32 noundef %170, i32 noundef %171, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #29
  %172 = load i16, ptr %146, align 8, !tbaa !237
  %173 = load ptr, ptr @token_translations, align 8, !tbaa !11
  %174 = load i16, ptr %154, align 2, !tbaa !162
  %175 = load i32, ptr @ntokens, align 4, !tbaa !7
  %176 = sext i16 %174 to i64
  br label %177

177:                                              ; preds = %160, %152
  %178 = phi i64 [ %176, %160 ], [ %156, %152 ]
  %179 = phi i32 [ %175, %160 ], [ %142, %152 ]
  %180 = phi ptr [ %173, %160 ], [ %153, %152 ]
  %181 = phi i16 [ %172, %160 ], [ %147, %152 ]
  %182 = getelementptr inbounds i16, ptr %180, i64 %178
  store i16 %181, ptr %182, align 2, !tbaa !13
  %183 = load i32, ptr @translations, align 4
  br label %184

184:                                              ; preds = %177, %141
  %185 = phi i32 [ %179, %177 ], [ %142, %141 ]
  %186 = phi i32 [ %183, %177 ], [ %143, %141 ]
  %187 = phi i32 [ %179, %177 ], [ %144, %141 ]
  %188 = getelementptr inbounds %struct.bucket, ptr %145, i64 0, i32 1
  %189 = load ptr, ptr %188, align 8, !tbaa !11
  %190 = icmp eq ptr %189, null
  br i1 %190, label %191, label %141, !llvm.loop !248

191:                                              ; preds = %184, %135
  %192 = load ptr, ptr @errtoken, align 8, !tbaa !11
  %193 = getelementptr inbounds %struct.bucket, ptr %192, i64 0, i32 4
  %194 = load i16, ptr %193, align 8, !tbaa !237
  %195 = sext i16 %194 to i32
  store i32 %195, ptr @error_token_number, align 4, !tbaa !7
  %196 = load ptr, ptr @ftable, align 8, !tbaa !11
  tail call void @output_token_defines(ptr noundef %196) #30
  %197 = load ptr, ptr @startval, align 8, !tbaa !11
  %198 = getelementptr inbounds %struct.bucket, ptr %197, i64 0, i32 8
  %199 = load i8, ptr %198, align 8, !tbaa !160
  switch i8 %199, label %207 [
    i8 0, label %201
    i8 1, label %200
  ]

200:                                              ; preds = %191
  br label %201

201:                                              ; preds = %200, %191
  %202 = phi ptr [ @.str.64, %200 ], [ @.str.63, %191 ]
  %203 = getelementptr inbounds %struct.bucket, ptr %197, i64 0, i32 2
  %204 = load ptr, ptr %203, align 8, !tbaa !238
  %205 = ptrtoint ptr %204 to i64
  %206 = trunc i64 %205 to i32
  tail call void @fatals(ptr noundef nonnull %202, i32 noundef %206, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #29
  br label %207

207:                                              ; preds = %201, %191
  %208 = load ptr, ptr @startval, align 8, !tbaa !11
  %209 = getelementptr inbounds %struct.bucket, ptr %208, i64 0, i32 4
  %210 = load i16, ptr %209, align 8, !tbaa !237
  %211 = sext i16 %210 to i32
  store i32 %211, ptr @start_symbol, align 4, !tbaa !7
  %212 = load i32, ptr @definesflag, align 4, !tbaa !7
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %248, label %214

214:                                              ; preds = %207
  %215 = load ptr, ptr @fdefines, align 8, !tbaa !11
  tail call void @output_token_defines(ptr noundef %215) #30
  %216 = load i32, ptr @semantic_parser, align 4, !tbaa !7
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %245, label %218

218:                                              ; preds = %214
  %219 = load i32, ptr @ntokens, align 4, !tbaa !7
  %220 = load i32, ptr @nsyms, align 4, !tbaa !7
  %221 = icmp slt i32 %219, %220
  br i1 %221, label %222, label %245

222:                                              ; preds = %218
  %223 = sext i32 %219 to i64
  %224 = load ptr, ptr @tags, align 8, !tbaa !11
  br label %225

225:                                              ; preds = %239, %222
  %226 = phi i32 [ %220, %222 ], [ %240, %239 ]
  %227 = phi ptr [ %224, %222 ], [ %241, %239 ]
  %228 = phi i64 [ %223, %222 ], [ %242, %239 ]
  %229 = getelementptr inbounds ptr, ptr %227, i64 %228
  %230 = load ptr, ptr %229, align 8, !tbaa !11
  %231 = load i8, ptr %230, align 1, !tbaa !61
  %232 = icmp eq i8 %231, 64
  br i1 %232, label %239, label %233

233:                                              ; preds = %225
  %234 = load ptr, ptr @fdefines, align 8, !tbaa !11
  %235 = trunc i64 %228 to i32
  %236 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %234, ptr noundef nonnull @.str.65, ptr noundef nonnull %230, i32 noundef %235) #30
  %237 = load ptr, ptr @tags, align 8, !tbaa !11
  %238 = load i32, ptr @nsyms, align 4, !tbaa !7
  br label %239

239:                                              ; preds = %233, %225
  %240 = phi i32 [ %226, %225 ], [ %238, %233 ]
  %241 = phi ptr [ %227, %225 ], [ %237, %233 ]
  %242 = add nsw i64 %228, 1
  %243 = sext i32 %240 to i64
  %244 = icmp slt i64 %242, %243
  br i1 %244, label %225, label %245, !llvm.loop !249

245:                                              ; preds = %239, %218, %214
  %246 = load ptr, ptr @fdefines, align 8, !tbaa !11
  %247 = tail call i32 @fclose(ptr noundef %246) #30
  store ptr null, ptr @fdefines, align 8, !tbaa !11
  br label %248

248:                                              ; preds = %245, %207
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @packgram() #0 {
  %1 = load i32, ptr @nitems, align 4, !tbaa !7
  %2 = shl i32 %1, 1
  %3 = add i32 %2, 2
  %4 = tail call ptr (i32, ...) @mallocate(i32 noundef %3) #29
  store ptr %4, ptr @ritem, align 8, !tbaa !11
  %5 = load i32, ptr @nrules, align 4, !tbaa !7
  %6 = shl i32 %5, 1
  %7 = tail call ptr (i32, ...) @mallocate(i32 noundef %6) #29
  %8 = getelementptr inbounds i16, ptr %7, i64 -1
  store ptr %8, ptr @rlhs, align 8, !tbaa !11
  %9 = load i32, ptr @nrules, align 4, !tbaa !7
  %10 = shl i32 %9, 1
  %11 = tail call ptr (i32, ...) @mallocate(i32 noundef %10) #29
  %12 = getelementptr inbounds i16, ptr %11, i64 -1
  store ptr %12, ptr @rrhs, align 8, !tbaa !11
  %13 = load i32, ptr @nrules, align 4, !tbaa !7
  %14 = shl i32 %13, 1
  %15 = tail call ptr (i32, ...) @mallocate(i32 noundef %14) #29
  %16 = getelementptr inbounds i16, ptr %15, i64 -1
  store ptr %16, ptr @rprec, align 8, !tbaa !11
  %17 = load i32, ptr @nrules, align 4, !tbaa !7
  %18 = shl i32 %17, 1
  %19 = tail call ptr (i32, ...) @mallocate(i32 noundef %18) #29
  %20 = getelementptr inbounds i16, ptr %19, i64 -1
  store ptr %20, ptr @rassoc, align 8, !tbaa !11
  %21 = load ptr, ptr @grammar, align 8, !tbaa !11
  %22 = icmp eq ptr %21, null
  br i1 %22, label %99, label %23

23:                                               ; preds = %0
  %24 = load ptr, ptr @rlhs, align 8, !tbaa !11
  %25 = load ptr, ptr @rrhs, align 8, !tbaa !11
  %26 = load ptr, ptr @rprec, align 8
  %27 = load ptr, ptr @ritem, align 8, !tbaa !11
  br label %28

28:                                               ; preds = %93, %23
  %29 = phi i64 [ 1, %23 ], [ %94, %93 ]
  %30 = phi i32 [ 0, %23 ], [ %90, %93 ]
  %31 = phi ptr [ %21, %23 ], [ %95, %93 ]
  %32 = getelementptr inbounds %struct.symbol_list, ptr %31, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !235
  %34 = getelementptr inbounds %struct.bucket, ptr %33, i64 0, i32 4
  %35 = load i16, ptr %34, align 8, !tbaa !237
  %36 = getelementptr inbounds i16, ptr %24, i64 %29
  store i16 %35, ptr %36, align 2, !tbaa !13
  %37 = trunc i32 %30 to i16
  %38 = getelementptr inbounds i16, ptr %25, i64 %29
  store i16 %37, ptr %38, align 2, !tbaa !13
  %39 = getelementptr inbounds %struct.symbol_list, ptr %31, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !240
  %41 = load ptr, ptr %31, align 8, !tbaa !239
  %42 = icmp eq ptr %41, null
  br i1 %42, label %75, label %43

43:                                               ; preds = %28
  %44 = load ptr, ptr @ritem, align 8
  %45 = load ptr, ptr @rprec, align 8
  %46 = getelementptr inbounds i16, ptr %45, i64 %29
  %47 = getelementptr inbounds i16, ptr %20, i64 %29
  %48 = sext i32 %30 to i64
  br label %49

49:                                               ; preds = %70, %43
  %50 = phi i64 [ %48, %43 ], [ %59, %70 ]
  %51 = phi ptr [ %41, %43 ], [ %71, %70 ]
  %52 = phi i32 [ %30, %43 ], [ %60, %70 ]
  %53 = getelementptr inbounds %struct.symbol_list, ptr %51, i64 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !235
  %55 = icmp eq ptr %54, null
  br i1 %55, label %73, label %56

56:                                               ; preds = %49
  %57 = getelementptr inbounds %struct.bucket, ptr %54, i64 0, i32 4
  %58 = load i16, ptr %57, align 8, !tbaa !237
  %59 = add i64 %50, 1
  %60 = add nsw i32 %52, 1
  %61 = getelementptr inbounds i16, ptr %44, i64 %50
  store i16 %58, ptr %61, align 2, !tbaa !13
  %62 = getelementptr inbounds %struct.bucket, ptr %54, i64 0, i32 8
  %63 = load i8, ptr %62, align 8, !tbaa !160
  %64 = icmp eq i8 %63, 1
  br i1 %64, label %65, label %70

65:                                               ; preds = %56
  %66 = getelementptr inbounds %struct.bucket, ptr %54, i64 0, i32 5
  %67 = load i16, ptr %66, align 2, !tbaa !244
  store i16 %67, ptr %46, align 2, !tbaa !13
  %68 = getelementptr inbounds %struct.bucket, ptr %54, i64 0, i32 6
  %69 = load i16, ptr %68, align 4, !tbaa !245
  store i16 %69, ptr %47, align 2, !tbaa !13
  br label %70

70:                                               ; preds = %65, %56
  %71 = load ptr, ptr %51, align 8, !tbaa !239
  %72 = icmp eq ptr %71, null
  br i1 %72, label %75, label %49, !llvm.loop !250

73:                                               ; preds = %49
  %.lcssa1 = phi i64 [ %50, %49 ]
  %.lcssa = phi ptr [ %51, %49 ]
  %74 = trunc i64 %.lcssa1 to i32
  br label %75

75:                                               ; preds = %73, %70, %28
  %76 = phi i32 [ %30, %28 ], [ %74, %73 ], [ %60, %70 ]
  %77 = phi ptr [ null, %28 ], [ %.lcssa, %73 ], [ null, %70 ]
  %78 = phi i1 [ true, %28 ], [ false, %73 ], [ true, %70 ]
  %79 = icmp eq ptr %40, null
  br i1 %79, label %87, label %80

80:                                               ; preds = %75
  %81 = getelementptr inbounds %struct.bucket, ptr %40, i64 0, i32 5
  %82 = load i16, ptr %81, align 2, !tbaa !244
  %83 = getelementptr inbounds i16, ptr %26, i64 %29
  store i16 %82, ptr %83, align 2, !tbaa !13
  %84 = getelementptr inbounds %struct.bucket, ptr %40, i64 0, i32 6
  %85 = load i16, ptr %84, align 4, !tbaa !245
  %86 = getelementptr inbounds i16, ptr %20, i64 %29
  store i16 %85, ptr %86, align 2, !tbaa !13
  br label %87

87:                                               ; preds = %80, %75
  %88 = trunc i64 %29 to i16
  %89 = sub i16 0, %88
  %90 = add nsw i32 %76, 1
  %91 = sext i32 %76 to i64
  %92 = getelementptr inbounds i16, ptr %27, i64 %91
  store i16 %89, ptr %92, align 2, !tbaa !13
  br i1 %78, label %97, label %93

93:                                               ; preds = %87
  %94 = add nuw i64 %29, 1
  %95 = load ptr, ptr %77, align 8, !tbaa !239
  %96 = icmp eq ptr %95, null
  br i1 %96, label %97, label %28, !llvm.loop !251

97:                                               ; preds = %93, %87
  %.lcssa2 = phi i32 [ %90, %93 ], [ %90, %87 ]
  %98 = sext i32 %.lcssa2 to i64
  br label %99

99:                                               ; preds = %97, %0
  %100 = phi i64 [ 0, %0 ], [ %98, %97 ]
  %101 = load ptr, ptr @ritem, align 8, !tbaa !11
  %102 = getelementptr inbounds i16, ptr %101, i64 %100
  store i16 0, ptr %102, align 2, !tbaa !13
  ret void
}

; Function Attrs: nofree nounwind optsize uwtable
define internal void @output_token_defines(ptr nocapture noundef %0) #12 {
  %2 = load ptr, ptr @firstsymbol, align 8, !tbaa !11
  %3 = icmp eq ptr %2, null
  br i1 %3, label %51, label %4

4:                                                ; preds = %47, %1
  %5 = phi ptr [ %49, %47 ], [ %2, %1 ]
  %6 = getelementptr inbounds %struct.bucket, ptr %5, i64 0, i32 4
  %7 = load i16, ptr %6, align 8, !tbaa !237
  %8 = sext i16 %7 to i32
  %9 = load i32, ptr @ntokens, align 4, !tbaa !7
  %10 = icmp sgt i32 %9, %8
  br i1 %10, label %11, label %47

11:                                               ; preds = %4
  %12 = load ptr, ptr @tags, align 8, !tbaa !11
  %13 = sext i16 %7 to i64
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !11
  %16 = load i8, ptr %15, align 1, !tbaa !61
  %17 = icmp eq i8 %16, 39
  %18 = load ptr, ptr @errtoken, align 8
  %19 = icmp eq ptr %5, %18
  %20 = select i1 %17, i1 true, i1 %19
  br i1 %20, label %47, label %24

21:                                               ; preds = %24
  %22 = getelementptr inbounds i8, ptr %26, i64 1
  %23 = load i8, ptr %22, align 1, !tbaa !61
  br label %24

24:                                               ; preds = %21, %11
  %25 = phi i8 [ %23, %21 ], [ %16, %11 ]
  %26 = phi ptr [ %22, %21 ], [ %15, %11 ]
  switch i8 %25, label %21 [
    i8 0, label %27
    i8 46, label %47
  ]

27:                                               ; preds = %24
  %28 = load i32, ptr @translations, align 4, !tbaa !7
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.bucket, ptr %5, i64 0, i32 7
  %32 = load i16, ptr %31, align 2, !tbaa !162
  %33 = sext i16 %32 to i32
  br label %34

34:                                               ; preds = %30, %27
  %35 = phi i32 [ %8, %27 ], [ %33, %30 ]
  %36 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.66, ptr noundef nonnull %15, i32 noundef %35) #30
  %37 = load i32, ptr @semantic_parser, align 4, !tbaa !7
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %47, label %39

39:                                               ; preds = %34
  %40 = load ptr, ptr @tags, align 8, !tbaa !11
  %41 = load i16, ptr %6, align 8, !tbaa !237
  %42 = sext i16 %41 to i64
  %43 = getelementptr inbounds ptr, ptr %40, i64 %42
  %44 = load ptr, ptr %43, align 8, !tbaa !11
  %45 = sext i16 %41 to i32
  %46 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.67, ptr noundef %44, i32 noundef %45) #30
  br label %47

47:                                               ; preds = %39, %34, %24, %11, %4
  %48 = getelementptr inbounds %struct.bucket, ptr %5, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !11
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %4, !llvm.loop !252

51:                                               ; preds = %47, %1
  %52 = tail call i32 @putc(i32 noundef 10, ptr noundef %0) #30
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @record_rule_line() #0 {
  %1 = load i32, ptr @nrules, align 4, !tbaa !7
  %2 = load i32, ptr @rline_allocated, align 4, !tbaa !7
  %3 = icmp slt i32 %1, %2
  %4 = load ptr, ptr @rline, align 8, !tbaa !11
  br i1 %3, label %15, label %5

5:                                                ; preds = %0
  %6 = shl nsw i32 %1, 1
  store i32 %6, ptr @rline_allocated, align 4, !tbaa !7
  %7 = sext i32 %6 to i64
  %8 = shl nsw i64 %7, 1
  %9 = tail call ptr @realloc(ptr noundef %4, i64 noundef %8) #39
  store ptr %9, ptr @rline, align 8, !tbaa !11
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %5
  %12 = load ptr, ptr @stderr, align 8, !tbaa !11
  %13 = tail call i64 @fwrite(ptr nonnull @.str.60, i64 24, i64 1, ptr %12) #32
  tail call void @done(i32 noundef 1) #29
  %14 = load ptr, ptr @rline, align 8, !tbaa !11
  br label %15

15:                                               ; preds = %11, %5, %0
  %16 = phi ptr [ %9, %5 ], [ %14, %11 ], [ %4, %0 ]
  %17 = load i32, ptr @lineno, align 4, !tbaa !7
  %18 = trunc i32 %17 to i16
  %19 = load i32, ptr @nrules, align 4, !tbaa !7
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i16, ptr %16, i64 %20
  store i16 %18, ptr %21, align 2, !tbaa !13
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @copy_action(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = load i32, ptr @semantic_parser, align 4, !tbaa !7
  %4 = icmp eq i32 %3, 0
  %5 = select i1 %4, i32 %1, i32 0
  %6 = load ptr, ptr @faction, align 8, !tbaa !11
  %7 = load i32, ptr @nrules, align 4, !tbaa !7
  %8 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef nonnull @.str.35.204, i32 noundef %7) #30
  %9 = load i32, ptr @nolinesflag, align 4, !tbaa !7
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %20

11:                                               ; preds = %2
  %12 = load ptr, ptr @faction, align 8, !tbaa !11
  %13 = load i32, ptr @lineno, align 4, !tbaa !7
  %14 = load ptr, ptr @infile, align 8, !tbaa !11
  %15 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %14, i32 noundef 47) #34
  %16 = icmp eq ptr %15, null
  %17 = getelementptr inbounds i8, ptr %15, i64 1
  %18 = select i1 %16, ptr %14, ptr %17
  %19 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %12, ptr noundef nonnull @.str.7.205, i32 noundef %13, ptr noundef %18) #30
  br label %20

20:                                               ; preds = %11, %2
  %21 = load ptr, ptr @faction, align 8, !tbaa !11
  %22 = tail call i32 @putc(i32 noundef 123, ptr noundef %21) #30
  %23 = load ptr, ptr @finput, align 8, !tbaa !11
  %24 = tail call i32 @getc(ptr noundef %23) #30
  %25 = getelementptr inbounds %struct.symbol_list, ptr %0, i64 0, i32 1
  br label %26

26:                                               ; preds = %230, %20
  %27 = phi i32 [ %24, %20 ], [ %232, %230 ]
  %28 = phi i32 [ undef, %20 ], [ %233, %230 ]
  %29 = phi i32 [ 1, %20 ], [ %231, %230 ]
  br label %30

30:                                               ; preds = %248, %26
  %31 = phi i32 [ %252, %248 ], [ %27, %26 ]
  %32 = phi i32 [ %246, %248 ], [ %29, %26 ]
  br label %33

33:                                               ; preds = %241, %30
  %34 = phi i32 [ %31, %30 ], [ %244, %241 ]
  %35 = phi i32 [ %32, %30 ], [ %242, %241 ]
  br label %36

36:                                               ; preds = %83, %33
  %37 = phi i32 [ %87, %83 ], [ %34, %33 ]
  switch i32 %37, label %235 [
    i32 125, label %245
    i32 10, label %38
    i32 123, label %43
    i32 39, label %47
    i32 34, label %47
    i32 47, label %83
    i32 36, label %118
    i32 64, label %204
    i32 -1, label %234
  ]

38:                                               ; preds = %36
  %39 = load ptr, ptr @faction, align 8, !tbaa !11
  %40 = tail call i32 @putc(i32 noundef 10, ptr noundef %39) #30
  %41 = load i32, ptr @lineno, align 4, !tbaa !7
  %42 = add nsw i32 %41, 1
  store i32 %42, ptr @lineno, align 4, !tbaa !7
  br label %241

43:                                               ; preds = %36
  %44 = load ptr, ptr @faction, align 8, !tbaa !11
  %45 = tail call i32 @putc(i32 noundef 123, ptr noundef %44) #30
  %46 = add nsw i32 %35, 1
  br label %241

47:                                               ; preds = %36, %36
  %.lcssa4 = phi i32 [ %37, %36 ], [ %37, %36 ]
  %48 = load ptr, ptr @faction, align 8, !tbaa !11
  %49 = tail call i32 @putc(i32 noundef %.lcssa4, ptr noundef %48) #30
  %50 = load ptr, ptr @finput, align 8, !tbaa !11
  %51 = tail call i32 @getc(ptr noundef %50) #30
  %52 = icmp eq i32 %51, %.lcssa4
  br i1 %52, label %80, label %53

53:                                               ; preds = %76, %47
  %54 = phi i32 [ %78, %76 ], [ %51, %47 ]
  switch i32 %54, label %58 [
    i32 -1, label %55
    i32 10, label %55
  ]

55:                                               ; preds = %53, %53
  tail call void @fatal(ptr noundef nonnull @.str.8.207) #29
  %56 = load ptr, ptr @faction, align 8, !tbaa !11
  %57 = tail call i32 @putc(i32 noundef %54, ptr noundef %56) #30
  br label %76

58:                                               ; preds = %53
  %59 = load ptr, ptr @faction, align 8, !tbaa !11
  %60 = tail call i32 @putc(i32 noundef %54, ptr noundef %59) #30
  %61 = icmp eq i32 %54, 92
  br i1 %61, label %62, label %76

62:                                               ; preds = %58
  %63 = load ptr, ptr @finput, align 8, !tbaa !11
  %64 = tail call i32 @getc(ptr noundef %63) #30
  %65 = icmp eq i32 %64, -1
  br i1 %65, label %66, label %69

66:                                               ; preds = %62
  tail call void @fatal(ptr noundef nonnull @.str.8.207) #29
  %67 = load ptr, ptr @faction, align 8, !tbaa !11
  %68 = tail call i32 @putc(i32 noundef -1, ptr noundef %67) #30
  br label %76

69:                                               ; preds = %62
  %70 = load ptr, ptr @faction, align 8, !tbaa !11
  %71 = tail call i32 @putc(i32 noundef %64, ptr noundef %70) #30
  %72 = icmp eq i32 %64, 10
  br i1 %72, label %73, label %76

73:                                               ; preds = %69
  %74 = load i32, ptr @lineno, align 4, !tbaa !7
  %75 = add nsw i32 %74, 1
  store i32 %75, ptr @lineno, align 4, !tbaa !7
  br label %76

76:                                               ; preds = %73, %69, %66, %58, %55
  %77 = load ptr, ptr @finput, align 8, !tbaa !11
  %78 = tail call i32 @getc(ptr noundef %77) #30
  %79 = icmp eq i32 %78, %.lcssa4
  br i1 %79, label %80, label %53, !llvm.loop !253

80:                                               ; preds = %76, %47
  %81 = load ptr, ptr @faction, align 8, !tbaa !11
  %82 = tail call i32 @putc(i32 noundef %.lcssa4, ptr noundef %81) #30
  br label %241

83:                                               ; preds = %36
  %84 = load ptr, ptr @faction, align 8, !tbaa !11
  %85 = tail call i32 @putc(i32 noundef 47, ptr noundef %84) #30
  %86 = load ptr, ptr @finput, align 8, !tbaa !11
  %87 = tail call i32 @getc(ptr noundef %86) #30
  %88 = icmp eq i32 %87, 42
  br i1 %88, label %89, label %36, !llvm.loop !254

89:                                               ; preds = %83
  %90 = load ptr, ptr @faction, align 8, !tbaa !11
  %91 = tail call i32 @putc(i32 noundef 42, ptr noundef %90) #30
  %92 = load ptr, ptr @finput, align 8, !tbaa !11
  %93 = tail call i32 @getc(ptr noundef %92) #30
  br label %94

94:                                               ; preds = %110, %89
  %95 = phi i32 [ %93, %89 ], [ %111, %110 ]
  switch i32 %95, label %113 [
    i32 42, label %96
    i32 10, label %103
    i32 -1, label %112
  ]

96:                                               ; preds = %98, %94
  %97 = phi i32 [ %102, %98 ], [ %95, %94 ]
  switch i32 %97, label %110 [
    i32 42, label %98
    i32 47, label %238
  ], !llvm.loop !255

98:                                               ; preds = %96
  %99 = load ptr, ptr @faction, align 8, !tbaa !11
  %100 = tail call i32 @putc(i32 noundef 42, ptr noundef %99) #30
  %101 = load ptr, ptr @finput, align 8, !tbaa !11
  %102 = tail call i32 @getc(ptr noundef %101) #30
  br label %96, !llvm.loop !256

103:                                              ; preds = %94
  %104 = load i32, ptr @lineno, align 4, !tbaa !7
  %105 = add nsw i32 %104, 1
  store i32 %105, ptr @lineno, align 4, !tbaa !7
  %106 = load ptr, ptr @faction, align 8, !tbaa !11
  %107 = tail call i32 @putc(i32 noundef 10, ptr noundef %106) #30
  %108 = load ptr, ptr @finput, align 8, !tbaa !11
  %109 = tail call i32 @getc(ptr noundef %108) #30
  br label %110

110:                                              ; preds = %113, %112, %103, %96
  %111 = phi i32 [ %109, %103 ], [ -1, %112 ], [ %117, %113 ], [ %97, %96 ]
  br label %94, !llvm.loop !255

112:                                              ; preds = %94
  tail call void @fatal(ptr noundef nonnull @.str.24.198) #29
  br label %110

113:                                              ; preds = %94
  %114 = load ptr, ptr @faction, align 8, !tbaa !11
  %115 = tail call i32 @putc(i32 noundef %95, ptr noundef %114) #30
  %116 = load ptr, ptr @finput, align 8, !tbaa !11
  %117 = tail call i32 @getc(ptr noundef %116) #30
  br label %110

118:                                              ; preds = %36
  %119 = load ptr, ptr @finput, align 8, !tbaa !11
  %120 = tail call i32 @getc(ptr noundef %119) #30
  %121 = icmp ne i32 %120, 60
  br i1 %121, label %136, label %122

122:                                              ; preds = %129, %118
  %123 = phi ptr [ %131, %129 ], [ @token_buffer, %118 ]
  %124 = load ptr, ptr @finput, align 8, !tbaa !11
  %125 = tail call i32 @getc(ptr noundef %124) #30
  %126 = icmp ne i32 %125, 62
  %127 = icmp sgt i32 %125, 0
  %128 = and i1 %126, %127
  br i1 %128, label %129, label %132

129:                                              ; preds = %122
  %130 = trunc i32 %125 to i8
  %131 = getelementptr inbounds i8, ptr %123, i64 1
  store i8 %130, ptr %123, align 1, !tbaa !61
  br label %122, !llvm.loop !257

132:                                              ; preds = %122
  %.lcssa9 = phi ptr [ %123, %122 ]
  store i8 0, ptr %.lcssa9, align 1, !tbaa !61
  %133 = load ptr, ptr @finput, align 8, !tbaa !11
  %134 = tail call i32 @getc(ptr noundef %133) #30
  %135 = icmp eq i32 %134, 36
  br i1 %135, label %145, label %161

136:                                              ; preds = %118
  %137 = icmp eq i32 %120, 36
  br i1 %137, label %138, label %161

138:                                              ; preds = %136
  %139 = load ptr, ptr @faction, align 8, !tbaa !11
  %140 = tail call i64 @fwrite(ptr nonnull @.str.37.208, i64 5, i64 1, ptr %139)
  %141 = load ptr, ptr %25, align 8, !tbaa !235
  %142 = getelementptr inbounds %struct.bucket, ptr %141, i64 0, i32 3
  %143 = load ptr, ptr %142, align 8, !tbaa !241
  %144 = icmp eq ptr %143, null
  br i1 %144, label %152, label %148

145:                                              ; preds = %132
  %146 = load ptr, ptr @faction, align 8, !tbaa !11
  %147 = tail call i64 @fwrite(ptr nonnull @.str.37.208, i64 5, i64 1, ptr %146)
  br label %148

148:                                              ; preds = %145, %138
  %149 = phi ptr [ %143, %138 ], [ @token_buffer, %145 ]
  %150 = load ptr, ptr @faction, align 8, !tbaa !11
  %151 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %150, ptr noundef nonnull @.str.38.209, ptr noundef nonnull %149) #30
  br label %241

152:                                              ; preds = %138
  %153 = load i1, ptr @typed, align 4
  br i1 %153, label %154, label %241

154:                                              ; preds = %152
  %155 = load ptr, ptr @stderr, align 8, !tbaa !11
  %156 = load ptr, ptr @infile, align 8, !tbaa !11
  %157 = load i32, ptr @lineno, align 4, !tbaa !7
  %158 = getelementptr inbounds %struct.bucket, ptr %141, i64 0, i32 2
  %159 = load ptr, ptr %158, align 8, !tbaa !238
  %160 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %155, ptr noundef nonnull @.str.39.210, ptr noundef %156, i32 noundef %157, ptr noundef %159) #35
  br label %241

161:                                              ; preds = %136, %132
  %162 = phi ptr [ null, %136 ], [ @token_buffer, %132 ]
  %163 = phi i32 [ %120, %136 ], [ %134, %132 ]
  %164 = tail call ptr @__ctype_b_loc() #37
  %165 = load ptr, ptr %164, align 8, !tbaa !11
  %166 = sext i32 %163 to i64
  %167 = getelementptr inbounds i16, ptr %165, i64 %166
  %168 = load i16, ptr %167, align 2, !tbaa !13
  %169 = and i16 %168, 2048
  %170 = icmp ne i16 %169, 0
  %171 = icmp eq i32 %163, 45
  %172 = or i1 %171, %170
  br i1 %172, label %173, label %203

173:                                              ; preds = %161
  %.lcssa15 = phi ptr [ %162, %161 ]
  %.lcssa14 = phi i32 [ %163, %161 ]
  %.lcssa13 = phi i1 [ %121, %161 ]
  %.lcssa12 = phi i32 [ %35, %161 ]
  %174 = load ptr, ptr @finput, align 8, !tbaa !11
  %175 = tail call i32 @ungetc(i32 noundef %.lcssa14, ptr noundef %174) #30
  %176 = load ptr, ptr @finput, align 8, !tbaa !11
  %177 = tail call i32 @read_signed_integer(ptr noundef %176) #30
  %178 = load ptr, ptr @finput, align 8, !tbaa !11
  %179 = tail call i32 @getc(ptr noundef %178) #30
  %180 = icmp sgt i32 %177, 0
  %181 = select i1 %.lcssa13, i1 %180, i1 false
  br i1 %181, label %182, label %184

182:                                              ; preds = %173
  %183 = tail call ptr @get_type_name(i32 noundef %177, ptr noundef %0) #30
  br label %184

184:                                              ; preds = %182, %173
  %185 = phi ptr [ %183, %182 ], [ %.lcssa15, %173 ]
  %186 = load ptr, ptr @faction, align 8, !tbaa !11
  %187 = sub nsw i32 %177, %5
  %188 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %186, ptr noundef nonnull @.str.40.211, i32 noundef %187) #30
  %189 = icmp eq ptr %185, null
  br i1 %189, label %193, label %190

190:                                              ; preds = %184
  %191 = load ptr, ptr @faction, align 8, !tbaa !11
  %192 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %191, ptr noundef nonnull @.str.38.209, ptr noundef nonnull %185) #30
  br label %230

193:                                              ; preds = %184
  %194 = load i1, ptr @typed, align 4
  br i1 %194, label %195, label %230

195:                                              ; preds = %193
  %196 = load ptr, ptr @stderr, align 8, !tbaa !11
  %197 = load ptr, ptr @infile, align 8, !tbaa !11
  %198 = load i32, ptr @lineno, align 4, !tbaa !7
  %199 = load ptr, ptr %25, align 8, !tbaa !235
  %200 = getelementptr inbounds %struct.bucket, ptr %199, i64 0, i32 2
  %201 = load ptr, ptr %200, align 8, !tbaa !238
  %202 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %196, ptr noundef nonnull @.str.41.212, ptr noundef %197, i32 noundef %198, i32 noundef %177, ptr noundef %201) #35
  br label %230

203:                                              ; preds = %161
  tail call void @fatals(ptr noundef nonnull @.str.42.213, i32 noundef %163, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #29
  br label %241

204:                                              ; preds = %36
  %.lcssa11 = phi i32 [ %35, %36 ]
  %205 = load ptr, ptr @finput, align 8, !tbaa !11
  %206 = tail call i32 @getc(ptr noundef %205) #30
  %207 = tail call ptr @__ctype_b_loc() #37
  %208 = load ptr, ptr %207, align 8, !tbaa !11
  %209 = sext i32 %206 to i64
  %210 = getelementptr inbounds i16, ptr %208, i64 %209
  %211 = load i16, ptr %210, align 2, !tbaa !13
  %212 = and i16 %211, 2048
  %213 = icmp ne i16 %212, 0
  %214 = icmp eq i32 %206, 45
  %215 = or i1 %214, %213
  br i1 %215, label %216, label %223

216:                                              ; preds = %204
  %217 = load ptr, ptr @finput, align 8, !tbaa !11
  %218 = tail call i32 @ungetc(i32 noundef %206, ptr noundef %217) #30
  %219 = load ptr, ptr @finput, align 8, !tbaa !11
  %220 = tail call i32 @read_signed_integer(ptr noundef %219) #30
  %221 = load ptr, ptr @finput, align 8, !tbaa !11
  %222 = tail call i32 @getc(ptr noundef %221) #30
  br label %224

223:                                              ; preds = %204
  tail call void @fatal(ptr noundef nonnull @.str.47.218) #29
  br label %224

224:                                              ; preds = %223, %216
  %225 = phi i32 [ %222, %216 ], [ %206, %223 ]
  %226 = phi i32 [ %220, %216 ], [ %28, %223 ]
  %227 = load ptr, ptr @faction, align 8, !tbaa !11
  %228 = sub nsw i32 %226, %5
  %229 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %227, ptr noundef nonnull @.str.44.215, i32 noundef %228) #30
  store i1 true, ptr @yylsp_needed, align 4
  br label %230

230:                                              ; preds = %224, %195, %193, %190
  %231 = phi i32 [ %.lcssa12, %193 ], [ %.lcssa12, %195 ], [ %.lcssa12, %190 ], [ %.lcssa11, %224 ]
  %232 = phi i32 [ %179, %193 ], [ %179, %195 ], [ %179, %190 ], [ %225, %224 ]
  %233 = phi i32 [ %177, %193 ], [ %177, %195 ], [ %177, %190 ], [ %226, %224 ]
  br label %26, !llvm.loop !254

234:                                              ; preds = %36
  %.lcssa7 = phi i32 [ %37, %36 ]
  tail call void @fatal(ptr noundef nonnull @.str.48) #29
  br label %235

235:                                              ; preds = %234, %36
  %.lcssa = phi i32 [ %.lcssa7, %234 ], [ %37, %36 ]
  %236 = load ptr, ptr @faction, align 8, !tbaa !11
  %237 = tail call i32 @putc(i32 noundef %.lcssa, ptr noundef %236) #30
  br label %241

238:                                              ; preds = %96
  %239 = load ptr, ptr @faction, align 8, !tbaa !11
  %240 = tail call i32 @putc(i32 noundef 47, ptr noundef %239) #30
  br label %241

241:                                              ; preds = %238, %235, %203, %154, %152, %148, %80, %43, %38
  %242 = phi i32 [ %35, %235 ], [ %35, %154 ], [ %35, %152 ], [ %35, %203 ], [ %35, %80 ], [ %46, %43 ], [ %35, %38 ], [ %35, %148 ], [ %35, %238 ]
  %243 = load ptr, ptr @finput, align 8, !tbaa !11
  %244 = tail call i32 @getc(ptr noundef %243) #30
  br label %33, !llvm.loop !254

245:                                              ; preds = %36
  %.lcssa10 = phi i32 [ %35, %36 ]
  %246 = add nsw i32 %.lcssa10, -1
  %247 = icmp eq i32 %246, 0
  br i1 %247, label %254, label %248

248:                                              ; preds = %245
  %249 = load ptr, ptr @faction, align 8, !tbaa !11
  %250 = tail call i32 @putc(i32 noundef 125, ptr noundef %249) #30
  %251 = load ptr, ptr @finput, align 8, !tbaa !11
  %252 = tail call i32 @getc(ptr noundef %251) #30
  %253 = icmp sgt i32 %.lcssa10, 1
  br i1 %253, label %30, label %254, !llvm.loop !258

254:                                              ; preds = %248, %245
  %255 = load ptr, ptr @faction, align 8, !tbaa !11
  %256 = tail call i64 @fwrite(ptr nonnull @.str.46, i64 13, i64 1, ptr %255)
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @copy_guard(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = load i32, ptr @semantic_parser, align 4, !tbaa !7
  %4 = icmp eq i32 %3, 0
  %5 = select i1 %4, i32 %1, i32 0
  %6 = load ptr, ptr @fguard, align 8, !tbaa !11
  %7 = load i32, ptr @nrules, align 4, !tbaa !7
  %8 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef nonnull @.str.35.204, i32 noundef %7) #30
  %9 = load i32, ptr @nolinesflag, align 4, !tbaa !7
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %20

11:                                               ; preds = %2
  %12 = load ptr, ptr @fguard, align 8, !tbaa !11
  %13 = load i32, ptr @lineno, align 4, !tbaa !7
  %14 = load ptr, ptr @infile, align 8, !tbaa !11
  %15 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %14, i32 noundef 47) #34
  %16 = icmp eq ptr %15, null
  %17 = getelementptr inbounds i8, ptr %15, i64 1
  %18 = select i1 %16, ptr %14, ptr %17
  %19 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %12, ptr noundef nonnull @.str.7.205, i32 noundef %13, ptr noundef %18) #30
  br label %20

20:                                               ; preds = %11, %2
  %21 = load ptr, ptr @fguard, align 8, !tbaa !11
  %22 = tail call i32 @putc(i32 noundef 123, ptr noundef %21) #30
  %23 = load ptr, ptr @finput, align 8, !tbaa !11
  %24 = tail call i32 @getc(ptr noundef %23) #30
  %25 = getelementptr inbounds %struct.symbol_list, ptr %0, i64 0, i32 1
  br label %26

26:                                               ; preds = %202, %20
  %27 = phi i32 [ %24, %20 ], [ %205, %202 ]
  %28 = phi i32 [ undef, %20 ], [ %206, %202 ]
  %29 = phi i32 [ 0, %20 ], [ %203, %202 ]
  %30 = phi i32 [ 0, %20 ], [ %204, %202 ]
  br label %31

31:                                               ; preds = %256, %26
  %32 = phi i32 [ %27, %26 ], [ %257, %256 ]
  %33 = phi i32 [ %29, %26 ], [ %258, %256 ]
  %34 = phi i32 [ %30, %26 ], [ %259, %256 ]
  %35 = icmp eq i32 %34, 0
  %36 = icmp sgt i32 %33, 0
  br label %37

37:                                               ; preds = %90, %31
  %38 = phi i32 [ %94, %90 ], [ %32, %31 ]
  %39 = icmp ne i32 %38, 59
  %40 = select i1 %35, i1 %39, i1 %36
  br i1 %40, label %41, label %265

41:                                               ; preds = %37
  switch i32 %38, label %243 [
    i32 10, label %42
    i32 123, label %47
    i32 125, label %51
    i32 39, label %57
    i32 34, label %57
    i32 47, label %90
    i32 36, label %125
    i32 64, label %216
    i32 -1, label %242
  ]

42:                                               ; preds = %41
  %43 = load ptr, ptr @fguard, align 8, !tbaa !11
  %44 = tail call i32 @putc(i32 noundef 10, ptr noundef %43) #30
  %45 = load i32, ptr @lineno, align 4, !tbaa !7
  %46 = add nsw i32 %45, 1
  store i32 %46, ptr @lineno, align 4, !tbaa !7
  br label %260

47:                                               ; preds = %41
  %48 = load ptr, ptr @fguard, align 8, !tbaa !11
  %49 = tail call i32 @putc(i32 noundef 123, ptr noundef %48) #30
  %50 = add nsw i32 %33, 1
  br label %260

51:                                               ; preds = %41
  %52 = load ptr, ptr @fguard, align 8, !tbaa !11
  %53 = tail call i32 @putc(i32 noundef 125, ptr noundef %52) #30
  br i1 %36, label %54, label %56

54:                                               ; preds = %51
  %55 = add nsw i32 %33, -1
  br label %249

56:                                               ; preds = %51
  tail call void @fatal(ptr noundef nonnull @.str.36.206) #29
  br label %249

57:                                               ; preds = %41, %41
  %.lcssa5 = phi i32 [ %38, %41 ], [ %38, %41 ]
  %58 = load ptr, ptr @fguard, align 8, !tbaa !11
  %59 = tail call i32 @putc(i32 noundef %.lcssa5, ptr noundef %58) #30
  %60 = load ptr, ptr @finput, align 8, !tbaa !11
  %61 = tail call i32 @getc(ptr noundef %60) #30
  %62 = icmp eq i32 %61, %.lcssa5
  br i1 %62, label %87, label %63

63:                                               ; preds = %83, %57
  %64 = phi i32 [ %85, %83 ], [ %61, %57 ]
  switch i32 %64, label %68 [
    i32 -1, label %65
    i32 10, label %65
  ]

65:                                               ; preds = %63, %63
  tail call void @fatal(ptr noundef nonnull @.str.8.207) #29
  %66 = load ptr, ptr @fguard, align 8, !tbaa !11
  %67 = tail call i32 @putc(i32 noundef %64, ptr noundef %66) #30
  br label %83

68:                                               ; preds = %63
  %69 = load ptr, ptr @fguard, align 8, !tbaa !11
  %70 = tail call i32 @putc(i32 noundef %64, ptr noundef %69) #30
  %71 = icmp eq i32 %64, 92
  br i1 %71, label %72, label %83

72:                                               ; preds = %68
  %73 = load ptr, ptr @finput, align 8, !tbaa !11
  %74 = tail call i32 @getc(ptr noundef %73) #30
  %75 = icmp eq i32 %74, 10
  switch i32 %74, label %77 [
    i32 -1, label %76
    i32 10, label %76
  ]

76:                                               ; preds = %72, %72
  tail call void @fatal(ptr noundef nonnull @.str.8.207) #29
  br label %77

77:                                               ; preds = %76, %72
  %78 = load ptr, ptr @fguard, align 8, !tbaa !11
  %79 = tail call i32 @putc(i32 noundef %74, ptr noundef %78) #30
  br i1 %75, label %80, label %83

80:                                               ; preds = %77
  %81 = load i32, ptr @lineno, align 4, !tbaa !7
  %82 = add nsw i32 %81, 1
  store i32 %82, ptr @lineno, align 4, !tbaa !7
  br label %83

83:                                               ; preds = %80, %77, %68, %65
  %84 = load ptr, ptr @finput, align 8, !tbaa !11
  %85 = tail call i32 @getc(ptr noundef %84) #30
  %86 = icmp eq i32 %85, %.lcssa5
  br i1 %86, label %87, label %63, !llvm.loop !259

87:                                               ; preds = %83, %57
  %88 = load ptr, ptr @fguard, align 8, !tbaa !11
  %89 = tail call i32 @putc(i32 noundef %.lcssa5, ptr noundef %88) #30
  br label %249

90:                                               ; preds = %41
  %91 = load ptr, ptr @fguard, align 8, !tbaa !11
  %92 = tail call i32 @putc(i32 noundef 47, ptr noundef %91) #30
  %93 = load ptr, ptr @finput, align 8, !tbaa !11
  %94 = tail call i32 @getc(ptr noundef %93) #30
  %95 = icmp eq i32 %94, 42
  br i1 %95, label %96, label %37, !llvm.loop !260

96:                                               ; preds = %90
  %97 = load ptr, ptr @fguard, align 8, !tbaa !11
  %98 = tail call i32 @putc(i32 noundef 42, ptr noundef %97) #30
  %99 = load ptr, ptr @finput, align 8, !tbaa !11
  %100 = tail call i32 @getc(ptr noundef %99) #30
  br label %101

101:                                              ; preds = %117, %96
  %102 = phi i32 [ %100, %96 ], [ %118, %117 ]
  switch i32 %102, label %120 [
    i32 42, label %103
    i32 10, label %110
    i32 -1, label %119
  ]

103:                                              ; preds = %105, %101
  %104 = phi i32 [ %109, %105 ], [ %102, %101 ]
  switch i32 %104, label %117 [
    i32 42, label %105
    i32 47, label %246
  ], !llvm.loop !261

105:                                              ; preds = %103
  %106 = load ptr, ptr @fguard, align 8, !tbaa !11
  %107 = tail call i32 @putc(i32 noundef 42, ptr noundef %106) #30
  %108 = load ptr, ptr @finput, align 8, !tbaa !11
  %109 = tail call i32 @getc(ptr noundef %108) #30
  br label %103, !llvm.loop !262

110:                                              ; preds = %101
  %111 = load i32, ptr @lineno, align 4, !tbaa !7
  %112 = add nsw i32 %111, 1
  store i32 %112, ptr @lineno, align 4, !tbaa !7
  %113 = load ptr, ptr @fguard, align 8, !tbaa !11
  %114 = tail call i32 @putc(i32 noundef 10, ptr noundef %113) #30
  %115 = load ptr, ptr @finput, align 8, !tbaa !11
  %116 = tail call i32 @getc(ptr noundef %115) #30
  br label %117

117:                                              ; preds = %120, %119, %110, %103
  %118 = phi i32 [ %116, %110 ], [ -1, %119 ], [ %124, %120 ], [ %104, %103 ]
  br label %101, !llvm.loop !261

119:                                              ; preds = %101
  tail call void @fatal(ptr noundef nonnull @.str.24.198) #29
  br label %117

120:                                              ; preds = %101
  %121 = load ptr, ptr @fguard, align 8, !tbaa !11
  %122 = tail call i32 @putc(i32 noundef %102, ptr noundef %121) #30
  %123 = load ptr, ptr @finput, align 8, !tbaa !11
  %124 = tail call i32 @getc(ptr noundef %123) #30
  br label %117

125:                                              ; preds = %41
  %126 = load ptr, ptr @finput, align 8, !tbaa !11
  %127 = tail call i32 @getc(ptr noundef %126) #30
  %128 = icmp ne i32 %127, 60
  br i1 %128, label %143, label %129

129:                                              ; preds = %136, %125
  %130 = phi ptr [ %138, %136 ], [ @token_buffer, %125 ]
  %131 = load ptr, ptr @finput, align 8, !tbaa !11
  %132 = tail call i32 @getc(ptr noundef %131) #30
  %133 = icmp ne i32 %132, 62
  %134 = icmp sgt i32 %132, 0
  %135 = and i1 %133, %134
  br i1 %135, label %136, label %139

136:                                              ; preds = %129
  %137 = trunc i32 %132 to i8
  %138 = getelementptr inbounds i8, ptr %130, i64 1
  store i8 %137, ptr %130, align 1, !tbaa !61
  br label %129, !llvm.loop !263

139:                                              ; preds = %129
  %.lcssa = phi ptr [ %130, %129 ]
  store i8 0, ptr %.lcssa, align 1, !tbaa !61
  %140 = load ptr, ptr @finput, align 8, !tbaa !11
  %141 = tail call i32 @getc(ptr noundef %140) #30
  %142 = icmp eq i32 %141, 36
  br i1 %142, label %152, label %168

143:                                              ; preds = %125
  %144 = icmp eq i32 %127, 36
  br i1 %144, label %145, label %168

145:                                              ; preds = %143
  %146 = load ptr, ptr @fguard, align 8, !tbaa !11
  %147 = tail call i64 @fwrite(ptr nonnull @.str.37.208, i64 5, i64 1, ptr %146)
  %148 = load ptr, ptr %25, align 8, !tbaa !235
  %149 = getelementptr inbounds %struct.bucket, ptr %148, i64 0, i32 3
  %150 = load ptr, ptr %149, align 8, !tbaa !241
  %151 = icmp eq ptr %150, null
  br i1 %151, label %159, label %155

152:                                              ; preds = %139
  %153 = load ptr, ptr @fguard, align 8, !tbaa !11
  %154 = tail call i64 @fwrite(ptr nonnull @.str.37.208, i64 5, i64 1, ptr %153)
  br label %155

155:                                              ; preds = %152, %145
  %156 = phi ptr [ %150, %145 ], [ @token_buffer, %152 ]
  %157 = load ptr, ptr @fguard, align 8, !tbaa !11
  %158 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %157, ptr noundef nonnull @.str.38.209, ptr noundef nonnull %156) #30
  br label %260

159:                                              ; preds = %145
  %160 = load i1, ptr @typed, align 4
  br i1 %160, label %161, label %260

161:                                              ; preds = %159
  %162 = load ptr, ptr @stderr, align 8, !tbaa !11
  %163 = load ptr, ptr @infile, align 8, !tbaa !11
  %164 = load i32, ptr @lineno, align 4, !tbaa !7
  %165 = getelementptr inbounds %struct.bucket, ptr %148, i64 0, i32 2
  %166 = load ptr, ptr %165, align 8, !tbaa !238
  %167 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %162, ptr noundef nonnull @.str.39.210, ptr noundef %163, i32 noundef %164, ptr noundef %166) #35
  br label %260

168:                                              ; preds = %143, %139
  %169 = phi ptr [ null, %143 ], [ @token_buffer, %139 ]
  %170 = phi i32 [ %127, %143 ], [ %141, %139 ]
  %171 = tail call ptr @__ctype_b_loc() #37
  %172 = load ptr, ptr %171, align 8, !tbaa !11
  %173 = sext i32 %170 to i64
  %174 = getelementptr inbounds i16, ptr %172, i64 %173
  %175 = load i16, ptr %174, align 2, !tbaa !13
  %176 = and i16 %175, 2048
  %177 = icmp ne i16 %176, 0
  %178 = icmp eq i32 %170, 45
  %179 = or i1 %178, %177
  br i1 %179, label %180, label %215

180:                                              ; preds = %168
  %.lcssa18 = phi ptr [ %169, %168 ]
  %.lcssa17 = phi i32 [ %170, %168 ]
  %.lcssa16 = phi i1 [ %128, %168 ]
  %.lcssa15 = phi i32 [ %33, %168 ]
  %.lcssa12 = phi i32 [ %34, %168 ]
  %181 = load ptr, ptr @finput, align 8, !tbaa !11
  %182 = tail call i32 @ungetc(i32 noundef %.lcssa17, ptr noundef %181) #30
  %183 = load ptr, ptr @finput, align 8, !tbaa !11
  %184 = tail call i32 @read_signed_integer(ptr noundef %183) #30
  %185 = load ptr, ptr @finput, align 8, !tbaa !11
  %186 = tail call i32 @getc(ptr noundef %185) #30
  %187 = icmp sgt i32 %184, 0
  %188 = select i1 %.lcssa16, i1 %187, i1 false
  br i1 %188, label %189, label %191

189:                                              ; preds = %180
  %190 = tail call ptr @get_type_name(i32 noundef %184, ptr noundef %0) #30
  br label %191

191:                                              ; preds = %189, %180
  %192 = phi ptr [ %190, %189 ], [ %.lcssa18, %180 ]
  %193 = load ptr, ptr @fguard, align 8, !tbaa !11
  %194 = sub nsw i32 %184, %5
  %195 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %193, ptr noundef nonnull @.str.40.211, i32 noundef %194) #30
  %196 = icmp eq ptr %192, null
  br i1 %196, label %200, label %197

197:                                              ; preds = %191
  %198 = load ptr, ptr @fguard, align 8, !tbaa !11
  %199 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %198, ptr noundef nonnull @.str.38.209, ptr noundef nonnull %192) #30
  br label %202

200:                                              ; preds = %191
  %201 = load i1, ptr @typed, align 4
  br i1 %201, label %207, label %202

202:                                              ; preds = %236, %207, %200, %197
  %203 = phi i32 [ %.lcssa14, %236 ], [ %.lcssa15, %197 ], [ %.lcssa15, %207 ], [ %.lcssa15, %200 ]
  %204 = phi i32 [ %.lcssa11, %236 ], [ %.lcssa12, %197 ], [ %.lcssa12, %207 ], [ %.lcssa12, %200 ]
  %205 = phi i32 [ %237, %236 ], [ %186, %197 ], [ %186, %207 ], [ %186, %200 ]
  %206 = phi i32 [ %238, %236 ], [ %184, %197 ], [ %184, %207 ], [ %184, %200 ]
  br label %26, !llvm.loop !260

207:                                              ; preds = %200
  %208 = load ptr, ptr @stderr, align 8, !tbaa !11
  %209 = load ptr, ptr @infile, align 8, !tbaa !11
  %210 = load i32, ptr @lineno, align 4, !tbaa !7
  %211 = load ptr, ptr %25, align 8, !tbaa !235
  %212 = getelementptr inbounds %struct.bucket, ptr %211, i64 0, i32 2
  %213 = load ptr, ptr %212, align 8, !tbaa !238
  %214 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %208, ptr noundef nonnull @.str.41.212, ptr noundef %209, i32 noundef %210, i32 noundef %184, ptr noundef %213) #35
  br label %202

215:                                              ; preds = %168
  tail call void @fatals(ptr noundef nonnull @.str.42.213, i32 noundef %170, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #29
  br label %249

216:                                              ; preds = %41
  %.lcssa14 = phi i32 [ %33, %41 ]
  %.lcssa11 = phi i32 [ %34, %41 ]
  %217 = load ptr, ptr @finput, align 8, !tbaa !11
  %218 = tail call i32 @getc(ptr noundef %217) #30
  %219 = tail call ptr @__ctype_b_loc() #37
  %220 = load ptr, ptr %219, align 8, !tbaa !11
  %221 = sext i32 %218 to i64
  %222 = getelementptr inbounds i16, ptr %220, i64 %221
  %223 = load i16, ptr %222, align 2, !tbaa !13
  %224 = and i16 %223, 2048
  %225 = icmp ne i16 %224, 0
  %226 = icmp eq i32 %218, 45
  %227 = or i1 %226, %225
  br i1 %227, label %228, label %235

228:                                              ; preds = %216
  %229 = load ptr, ptr @finput, align 8, !tbaa !11
  %230 = tail call i32 @ungetc(i32 noundef %218, ptr noundef %229) #30
  %231 = load ptr, ptr @finput, align 8, !tbaa !11
  %232 = tail call i32 @read_signed_integer(ptr noundef %231) #30
  %233 = load ptr, ptr @finput, align 8, !tbaa !11
  %234 = tail call i32 @getc(ptr noundef %233) #30
  br label %236

235:                                              ; preds = %216
  tail call void @fatals(ptr noundef nonnull @.str.43.214, i32 noundef %218, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #29
  br label %236

236:                                              ; preds = %235, %228
  %237 = phi i32 [ %234, %228 ], [ %218, %235 ]
  %238 = phi i32 [ %232, %228 ], [ %28, %235 ]
  %239 = load ptr, ptr @fguard, align 8, !tbaa !11
  %240 = sub nsw i32 %238, %5
  %241 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %239, ptr noundef nonnull @.str.44.215, i32 noundef %240) #30
  store i1 true, ptr @yylsp_needed, align 4
  br label %202

242:                                              ; preds = %41
  %.lcssa8 = phi i32 [ %38, %41 ]
  tail call void @fatal(ptr noundef nonnull @.str.45.216) #29
  br label %243

243:                                              ; preds = %242, %41
  %.lcssa1 = phi i32 [ %.lcssa8, %242 ], [ %38, %41 ]
  %244 = load ptr, ptr @fguard, align 8, !tbaa !11
  %245 = tail call i32 @putc(i32 noundef %.lcssa1, ptr noundef %244) #30
  br label %249

246:                                              ; preds = %103
  %247 = load ptr, ptr @fguard, align 8, !tbaa !11
  %248 = tail call i32 @putc(i32 noundef 47, ptr noundef %247) #30
  br label %260

249:                                              ; preds = %243, %215, %87, %56, %54
  %250 = phi i32 [ %.lcssa1, %243 ], [ %170, %215 ], [ %.lcssa5, %87 ], [ 125, %54 ], [ 125, %56 ]
  %251 = phi i32 [ %33, %243 ], [ %33, %215 ], [ %33, %87 ], [ %55, %54 ], [ %33, %56 ]
  %252 = phi i32 [ %34, %243 ], [ %34, %215 ], [ %34, %87 ], [ 1, %54 ], [ 1, %56 ]
  %253 = icmp ne i32 %250, 125
  %254 = icmp ne i32 %251, 0
  %255 = select i1 %253, i1 true, i1 %254
  br i1 %255, label %260, label %256

256:                                              ; preds = %260, %249
  %257 = phi i32 [ %264, %260 ], [ 125, %249 ]
  %258 = phi i32 [ %262, %260 ], [ 0, %249 ]
  %259 = phi i32 [ %261, %260 ], [ %252, %249 ]
  br label %31, !llvm.loop !260

260:                                              ; preds = %249, %246, %161, %159, %155, %47, %42
  %261 = phi i32 [ %252, %249 ], [ %34, %161 ], [ %34, %159 ], [ %34, %47 ], [ %34, %42 ], [ %34, %155 ], [ %34, %246 ]
  %262 = phi i32 [ %251, %249 ], [ %33, %161 ], [ %33, %159 ], [ %50, %47 ], [ %33, %42 ], [ %33, %155 ], [ %33, %246 ]
  %263 = load ptr, ptr @finput, align 8, !tbaa !11
  %264 = tail call i32 @getc(ptr noundef %263) #30
  br label %256

265:                                              ; preds = %37
  %266 = tail call i32 @skip_white_space() #29
  %267 = load ptr, ptr @fguard, align 8, !tbaa !11
  %268 = tail call i64 @fwrite(ptr nonnull @.str.46, i64 13, i64 1, ptr %267)
  switch i32 %266, label %275 [
    i32 123, label %269
    i32 61, label %270
  ]

269:                                              ; preds = %265
  tail call void @copy_action(ptr noundef %0, i32 noundef %5) #30
  br label %278

270:                                              ; preds = %265
  %271 = load ptr, ptr @finput, align 8, !tbaa !11
  %272 = tail call i32 @getc(ptr noundef %271) #30
  %273 = icmp eq i32 %272, 123
  br i1 %273, label %274, label %278

274:                                              ; preds = %270
  tail call void @copy_action(ptr noundef %0, i32 noundef %5) #30
  br label %278

275:                                              ; preds = %265
  %276 = load ptr, ptr @finput, align 8, !tbaa !11
  %277 = tail call i32 @ungetc(i32 noundef %266, ptr noundef %276) #30
  br label %278

278:                                              ; preds = %275, %274, %270, %269
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @parse_token_decl(i32 noundef %0, i32 noundef %1) #0 {
  %3 = trunc i32 %0 to i8
  %4 = icmp eq i32 %0, 2
  br label %5

5:                                                ; preds = %29, %2
  %6 = phi ptr [ null, %2 ], [ %31, %29 ]
  %7 = phi i32 [ 0, %2 ], [ %30, %29 ]
  %8 = icmp eq ptr %6, null
  br label %9

9:                                                ; preds = %58, %5
  %10 = phi i32 [ %7, %5 ], [ %59, %58 ]
  br label %11

11:                                               ; preds = %18, %9
  %12 = phi i32 [ %19, %18 ], [ %10, %9 ]
  %13 = tail call i32 @skip_white_space() #29
  %14 = load ptr, ptr @finput, align 8, !tbaa !11
  %15 = tail call i32 @ungetc(i32 noundef %13, ptr noundef %14) #30
  %16 = icmp eq i32 %15, 37
  br i1 %16, label %17, label %18

17:                                               ; preds = %11
  ret void

18:                                               ; preds = %11
  %19 = tail call i32 @lex() #29
  switch i32 %19, label %65 [
    i32 2, label %11
    i32 21, label %20
    i32 1, label %32
  ]

20:                                               ; preds = %18
  %.lcssa5 = phi i32 [ %19, %18 ]
  %21 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) @token_buffer) #34
  %22 = trunc i64 %21 to i32
  %23 = icmp eq ptr %6, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  tail call void @free(ptr noundef nonnull %6) #29
  br label %25

25:                                               ; preds = %24, %20
  %26 = add nsw i32 %22, 1
  %27 = tail call ptr (i32, ...) @mallocate(i32 noundef %26) #29
  %28 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %27, ptr noundef nonnull dereferenceable(1) @token_buffer) #29
  br label %29

29:                                               ; preds = %52, %25
  %30 = phi i32 [ %.lcssa5, %25 ], [ %.lcssa6, %52 ]
  %31 = phi ptr [ %27, %25 ], [ null, %52 ]
  br label %5

32:                                               ; preds = %18
  %.lcssa6 = phi i32 [ %19, %18 ]
  %33 = load ptr, ptr @symval, align 8, !tbaa !11
  %34 = getelementptr inbounds %struct.bucket, ptr %33, i64 0, i32 8
  %35 = load i8, ptr %34, align 8, !tbaa !160
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, %1
  br i1 %37, label %38, label %44

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.bucket, ptr %33, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !238
  %41 = ptrtoint ptr %40 to i64
  %42 = trunc i64 %41 to i32
  tail call void @fatals(ptr noundef nonnull @.str.11.202, i32 noundef %42, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #29
  %43 = load ptr, ptr @symval, align 8, !tbaa !11
  br label %44

44:                                               ; preds = %38, %32
  %45 = phi ptr [ %43, %38 ], [ %33, %32 ]
  %46 = getelementptr inbounds %struct.bucket, ptr %45, i64 0, i32 8
  store i8 %3, ptr %46, align 8, !tbaa !160
  br i1 %4, label %47, label %52

47:                                               ; preds = %44
  %48 = load i32, ptr @nvars, align 4, !tbaa !7
  %49 = add nsw i32 %48, 1
  store i32 %49, ptr @nvars, align 4, !tbaa !7
  %50 = trunc i32 %48 to i16
  %51 = getelementptr inbounds %struct.bucket, ptr %45, i64 0, i32 4
  store i16 %50, ptr %51, align 8, !tbaa !237
  br label %52

52:                                               ; preds = %47, %44
  br i1 %8, label %29, label %53

53:                                               ; preds = %52
  %54 = getelementptr inbounds %struct.bucket, ptr %45, i64 0, i32 3
  %55 = load ptr, ptr %54, align 8, !tbaa !241
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %60

57:                                               ; preds = %53
  store ptr %6, ptr %54, align 8, !tbaa !241
  br label %58

58:                                               ; preds = %74, %69, %60, %57
  %59 = phi i32 [ %.lcssa4, %74 ], [ %.lcssa4, %69 ], [ %.lcssa6, %60 ], [ %.lcssa6, %57 ]
  br label %9

60:                                               ; preds = %53
  %61 = getelementptr inbounds %struct.bucket, ptr %45, i64 0, i32 2
  %62 = load ptr, ptr %61, align 8, !tbaa !238
  %63 = ptrtoint ptr %62 to i64
  %64 = trunc i64 %63 to i32
  tail call void @fatals(ptr noundef nonnull @.str.12.201, i32 noundef %64, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #29
  br label %58

65:                                               ; preds = %18
  %.lcssa4 = phi i32 [ %19, %18 ]
  %.lcssa1 = phi i32 [ %12, %18 ]
  %66 = icmp eq i32 %.lcssa1, 1
  %67 = icmp eq i32 %.lcssa4, 22
  %68 = and i1 %66, %67
  br i1 %68, label %69, label %74

69:                                               ; preds = %65
  %70 = load i32, ptr @numval, align 4, !tbaa !7
  %71 = trunc i32 %70 to i16
  %72 = load ptr, ptr @symval, align 8, !tbaa !11
  %73 = getelementptr inbounds %struct.bucket, ptr %72, i64 0, i32 7
  store i16 %71, ptr %73, align 2, !tbaa !162
  store i32 1, ptr @translations, align 4, !tbaa !7
  br label %58

74:                                               ; preds = %65
  tail call void @fatal(ptr noundef nonnull @.str.13.203) #29
  br label %58
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @get_type() #0 {
  %1 = tail call i32 @lex() #29
  %2 = icmp eq i32 %1, 21
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @fatal(ptr noundef nonnull @.str.16.200) #29
  br label %4

4:                                                ; preds = %3, %0
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) @token_buffer) #34
  %6 = trunc i64 %5 to i32
  %7 = add nsw i32 %6, 1
  %8 = tail call ptr (i32, ...) @mallocate(i32 noundef %7) #29
  %9 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %8, ptr noundef nonnull dereferenceable(1) @token_buffer) #29
  br label %10

10:                                               ; preds = %20, %4
  %11 = tail call i32 @lex() #29
  switch i32 %11, label %26 [
    i32 4, label %12
    i32 2, label %20
    i32 1, label %14
  ]

12:                                               ; preds = %10
  %13 = tail call i32 @lex() #29
  br label %26

14:                                               ; preds = %10
  %15 = load ptr, ptr @symval, align 8, !tbaa !11
  %16 = getelementptr inbounds %struct.bucket, ptr %15, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !241
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  store ptr %8, ptr %16, align 8, !tbaa !241
  br label %20

20:                                               ; preds = %21, %19, %10
  br label %10

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.bucket, ptr %15, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !238
  %24 = ptrtoint ptr %23 to i64
  %25 = trunc i64 %24 to i32
  tail call void @fatals(ptr noundef nonnull @.str.12.201, i32 noundef %25, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #29
  br label %20

26:                                               ; preds = %12, %10
  %27 = phi i32 [ %13, %12 ], [ %11, %10 ]
  ret i32 %27
}

; Function Attrs: nounwind optsize uwtable
define internal void @parse_union_decl() #0 {
  %1 = load i1, ptr @typed, align 4
  br i1 %1, label %2, label %3

2:                                                ; preds = %0
  tail call void @fatal(ptr noundef nonnull @.str.20.195) #29
  br label %3

3:                                                ; preds = %2, %0
  store i1 true, ptr @typed, align 4
  %4 = load i32, ptr @nolinesflag, align 4, !tbaa !7
  %5 = icmp eq i32 %4, 0
  %6 = load ptr, ptr @fattrs, align 8, !tbaa !11
  br i1 %5, label %7, label %15

7:                                                ; preds = %3
  %8 = load i32, ptr @lineno, align 4, !tbaa !7
  %9 = load ptr, ptr @infile, align 8, !tbaa !11
  %10 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %9, i32 noundef 47) #34
  %11 = icmp eq ptr %10, null
  %12 = getelementptr inbounds i8, ptr %10, i64 1
  %13 = select i1 %11, ptr %9, ptr %12
  %14 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef nonnull @.str.21.196, i32 noundef %8, ptr noundef %13) #30
  br label %17

15:                                               ; preds = %3
  %16 = tail call i32 @fputc(i32 10, ptr %6)
  br label %17

17:                                               ; preds = %15, %7
  %18 = load ptr, ptr @fattrs, align 8, !tbaa !11
  %19 = tail call i64 @fwrite(ptr nonnull @.str.23.197, i64 13, i64 1, ptr %18)
  %20 = load ptr, ptr @fdefines, align 8, !tbaa !11
  %21 = icmp eq ptr %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %17
  %23 = tail call i64 @fwrite(ptr nonnull @.str.23.197, i64 13, i64 1, ptr nonnull %20)
  br label %24

24:                                               ; preds = %22, %17
  %25 = load ptr, ptr @finput, align 8, !tbaa !11
  %26 = tail call i32 @getc(ptr noundef %25) #30
  %27 = icmp eq i32 %26, -1
  br i1 %27, label %105, label %28

28:                                               ; preds = %100, %24
  %29 = phi i32 [ %101, %100 ], [ 0, %24 ]
  %30 = phi i32 [ %103, %100 ], [ %26, %24 ]
  %31 = load ptr, ptr @fattrs, align 8, !tbaa !11
  %32 = tail call i32 @putc(i32 noundef %30, ptr noundef %31) #30
  %33 = load ptr, ptr @fdefines, align 8, !tbaa !11
  %34 = icmp eq ptr %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %28
  %36 = tail call i32 @putc(i32 noundef %30, ptr noundef nonnull %33) #30
  br label %37

37:                                               ; preds = %35, %28
  switch i32 %30, label %100 [
    i32 10, label %38
    i32 47, label %41
    i32 123, label %82
    i32 125, label %84
  ]

38:                                               ; preds = %37
  %39 = load i32, ptr @lineno, align 4, !tbaa !7
  %40 = add nsw i32 %39, 1
  store i32 %40, ptr @lineno, align 4, !tbaa !7
  br label %100

41:                                               ; preds = %37
  %42 = load ptr, ptr @finput, align 8, !tbaa !11
  %43 = tail call i32 @getc(ptr noundef %42) #30
  %44 = icmp eq i32 %43, 42
  br i1 %44, label %48, label %45

45:                                               ; preds = %41
  %46 = load ptr, ptr @finput, align 8, !tbaa !11
  %47 = tail call i32 @ungetc(i32 noundef %43, ptr noundef %46) #30
  br label %100

48:                                               ; preds = %41
  %49 = load ptr, ptr @fattrs, align 8, !tbaa !11
  %50 = tail call i32 @putc(i32 noundef 42, ptr noundef %49) #30
  %51 = load ptr, ptr @fdefines, align 8, !tbaa !11
  %52 = icmp eq ptr %51, null
  br i1 %52, label %55, label %53

53:                                               ; preds = %48
  %54 = tail call i32 @putc(i32 noundef 42, ptr noundef nonnull %51) #30
  br label %55

55:                                               ; preds = %53, %48
  %56 = load ptr, ptr @finput, align 8, !tbaa !11
  %57 = tail call i32 @getc(ptr noundef %56) #30
  br label %58

58:                                               ; preds = %69, %55
  %59 = phi i32 [ %57, %55 ], [ %72, %69 ]
  %60 = icmp eq i32 %59, -1
  br i1 %60, label %61, label %62

61:                                               ; preds = %58
  tail call void @fatal(ptr noundef nonnull @.str.24.198) #29
  br label %62

62:                                               ; preds = %61, %58
  %63 = load ptr, ptr @fattrs, align 8, !tbaa !11
  %64 = tail call i32 @putc(i32 noundef %59, ptr noundef %63) #30
  %65 = load ptr, ptr @fdefines, align 8, !tbaa !11
  %66 = icmp eq ptr %65, null
  br i1 %66, label %69, label %67

67:                                               ; preds = %62
  %68 = tail call i32 @putc(i32 noundef %59, ptr noundef nonnull %65) #30
  br label %69

69:                                               ; preds = %67, %62
  %70 = icmp eq i32 %59, 42
  %71 = load ptr, ptr @finput, align 8, !tbaa !11
  %72 = tail call i32 @getc(ptr noundef %71) #30
  %73 = icmp eq i32 %72, 47
  %74 = and i1 %70, %73
  br i1 %74, label %75, label %58, !llvm.loop !264

75:                                               ; preds = %69
  %76 = load ptr, ptr @fattrs, align 8, !tbaa !11
  %77 = tail call i32 @putc(i32 noundef 47, ptr noundef %76) #30
  %78 = load ptr, ptr @fdefines, align 8, !tbaa !11
  %79 = icmp eq ptr %78, null
  br i1 %79, label %100, label %80

80:                                               ; preds = %75
  %81 = tail call i32 @putc(i32 noundef 47, ptr noundef nonnull %78) #30
  br label %100

82:                                               ; preds = %37
  %83 = add nsw i32 %29, 1
  br label %100

84:                                               ; preds = %37
  %85 = add nsw i32 %29, -1
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %100

87:                                               ; preds = %84
  %88 = load ptr, ptr @fattrs, align 8, !tbaa !11
  %89 = tail call i64 @fwrite(ptr nonnull @.str.25.199, i64 10, i64 1, ptr %88)
  %90 = load ptr, ptr @fdefines, align 8, !tbaa !11
  %91 = icmp eq ptr %90, null
  br i1 %91, label %94, label %92

92:                                               ; preds = %87
  %93 = tail call i64 @fwrite(ptr nonnull @.str.25.199, i64 10, i64 1, ptr nonnull %90)
  br label %94

94:                                               ; preds = %92, %87
  %95 = tail call i32 @skip_white_space() #29
  %96 = icmp eq i32 %95, 59
  br i1 %96, label %105, label %97

97:                                               ; preds = %94
  %98 = load ptr, ptr @finput, align 8, !tbaa !11
  %99 = tail call i32 @ungetc(i32 noundef %95, ptr noundef %98) #30
  br label %105

100:                                              ; preds = %84, %82, %80, %75, %45, %38, %37
  %101 = phi i32 [ %29, %37 ], [ %85, %84 ], [ %83, %82 ], [ %29, %45 ], [ %29, %38 ], [ %29, %80 ], [ %29, %75 ]
  %102 = load ptr, ptr @finput, align 8, !tbaa !11
  %103 = tail call i32 @getc(ptr noundef %102) #30
  %104 = icmp eq i32 %103, -1
  br i1 %104, label %105, label %28, !llvm.loop !265

105:                                              ; preds = %100, %97, %94, %24
  ret void
}

; Function Attrs: nofree nounwind optsize uwtable
define internal void @parse_expect_decl() #12 {
  %1 = alloca [20 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %1) #38
  br label %2

2:                                                ; preds = %5, %0
  %3 = load ptr, ptr @finput, align 8, !tbaa !11
  %4 = tail call i32 @getc(ptr noundef %3) #30
  switch i32 %4, label %6 [
    i32 32, label %5
    i32 9, label %5
  ]

5:                                                ; preds = %2, %2
  br label %2, !llvm.loop !266

6:                                                ; preds = %2
  %.lcssa = phi i32 [ %4, %2 ]
  %7 = add i32 %.lcssa, -48
  %8 = icmp ult i32 %7, 10
  br i1 %8, label %9, label %24

9:                                                ; preds = %18, %6
  %10 = phi i32 [ %19, %18 ], [ 0, %6 ]
  %11 = phi i32 [ %21, %18 ], [ %.lcssa, %6 ]
  %12 = icmp slt i32 %10, 20
  br i1 %12, label %13, label %18

13:                                               ; preds = %9
  %14 = trunc i32 %11 to i8
  %15 = add nsw i32 %10, 1
  %16 = sext i32 %10 to i64
  %17 = getelementptr inbounds [20 x i8], ptr %1, i64 0, i64 %16
  store i8 %14, ptr %17, align 1, !tbaa !61
  br label %18

18:                                               ; preds = %13, %9
  %19 = phi i32 [ %15, %13 ], [ %10, %9 ]
  %20 = load ptr, ptr @finput, align 8, !tbaa !11
  %21 = tail call i32 @getc(ptr noundef %20) #30
  %22 = add i32 %21, -48
  %23 = icmp ult i32 %22, 10
  br i1 %23, label %9, label %24, !llvm.loop !267

24:                                               ; preds = %18, %6
  %25 = phi i32 [ %.lcssa, %6 ], [ %21, %18 ]
  %26 = load ptr, ptr @finput, align 8, !tbaa !11
  %27 = tail call i32 @ungetc(i32 noundef %25, ptr noundef %26) #30
  %28 = call i32 @atoi(ptr nocapture noundef nonnull %1) #34
  store i32 %28, ptr @expected_conflicts, align 4, !tbaa !7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %1) #38
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @parse_start_decl() #0 {
  %1 = load i32, ptr @start_flag, align 4, !tbaa !7
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @fatal(ptr noundef nonnull @.str.14.193) #29
  br label %4

4:                                                ; preds = %3, %0
  store i32 1, ptr @start_flag, align 4, !tbaa !7
  %5 = tail call i32 @lex() #29
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void @fatal(ptr noundef nonnull @.str.15.194) #29
  br label %8

8:                                                ; preds = %7, %4
  %9 = load ptr, ptr @symval, align 8, !tbaa !11
  store ptr %9, ptr @startval, align 8, !tbaa !11
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(read)
declare i32 @atoi(ptr nocapture noundef) local_unnamed_addr #26

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #27

; Function Attrs: nofree nounwind optsize uwtable
define internal i32 @read_signed_integer(ptr nocapture noundef %0) #12 {
  %2 = tail call i32 @getc(ptr noundef %0) #30
  %3 = icmp eq i32 %2, 45
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = tail call i32 @getc(ptr noundef %0) #30
  br label %6

6:                                                ; preds = %4, %1
  %7 = phi i32 [ %5, %4 ], [ %2, %1 ]
  %8 = phi i32 [ -1, %4 ], [ 1, %1 ]
  %9 = tail call ptr @__ctype_b_loc() #37
  %10 = load ptr, ptr %9, align 8, !tbaa !11
  %11 = sext i32 %7 to i64
  %12 = getelementptr inbounds i16, ptr %10, i64 %11
  %13 = load i16, ptr %12, align 2, !tbaa !13
  %14 = and i16 %13, 2048
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %29, label %16

16:                                               ; preds = %16, %6
  %17 = phi i32 [ %21, %16 ], [ 0, %6 ]
  %18 = phi i32 [ %22, %16 ], [ %7, %6 ]
  %19 = mul nsw i32 %17, 10
  %20 = add nsw i32 %18, -48
  %21 = add nsw i32 %20, %19
  %22 = tail call i32 @getc(ptr noundef %0) #30
  %23 = load ptr, ptr %9, align 8, !tbaa !11
  %24 = sext i32 %22 to i64
  %25 = getelementptr inbounds i16, ptr %23, i64 %24
  %26 = load i16, ptr %25, align 2, !tbaa !13
  %27 = and i16 %26, 2048
  %28 = icmp eq i16 %27, 0
  br i1 %28, label %29, label %16, !llvm.loop !268

29:                                               ; preds = %16, %6
  %30 = phi i32 [ %7, %6 ], [ %22, %16 ]
  %31 = phi i32 [ 0, %6 ], [ %21, %16 ]
  %32 = tail call i32 @ungetc(i32 noundef %30, ptr noundef %0) #30
  %33 = mul nsw i32 %31, %8
  ret i32 %33
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @get_type_name(i32 noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = icmp slt i32 %0, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %2
  tail call void @fatal(ptr noundef nonnull @.str.34.217) #29
  br label %20

5:                                                ; preds = %2
  %6 = icmp eq i32 %0, 0
  br i1 %6, label %20, label %7

7:                                                ; preds = %17, %5
  %8 = phi ptr [ %10, %17 ], [ %1, %5 ]
  %9 = phi i32 [ %18, %17 ], [ 0, %5 ]
  %10 = load ptr, ptr %8, align 8, !tbaa !239
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.symbol_list, ptr %10, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !235
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %12, %7
  tail call void @fatal(ptr noundef nonnull @.str.34.217) #29
  br label %17

17:                                               ; preds = %16, %12
  %18 = add nuw nsw i32 %9, 1
  %19 = icmp eq i32 %18, %0
  br i1 %19, label %20, label %7, !llvm.loop !269

20:                                               ; preds = %17, %5, %4
  %21 = phi ptr [ %1, %5 ], [ %1, %4 ], [ %10, %17 ]
  %22 = getelementptr inbounds %struct.symbol_list, ptr %21, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !235
  %24 = getelementptr inbounds %struct.bucket, ptr %23, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !241
  ret ptr %25
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #28

; Function Attrs: nounwind optsize uwtable
define internal void @copy_definition() #0 {
  %1 = load i32, ptr @nolinesflag, align 4, !tbaa !7
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %12

3:                                                ; preds = %0
  %4 = load ptr, ptr @fattrs, align 8, !tbaa !11
  %5 = load i32, ptr @lineno, align 4, !tbaa !7
  %6 = load ptr, ptr @infile, align 8, !tbaa !11
  %7 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %6, i32 noundef 47) #34
  %8 = icmp eq ptr %7, null
  %9 = getelementptr inbounds i8, ptr %7, i64 1
  %10 = select i1 %8, ptr %6, ptr %9
  %11 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str.7.205, i32 noundef %5, ptr noundef %10) #30
  br label %12

12:                                               ; preds = %3, %0
  %13 = load ptr, ptr @finput, align 8, !tbaa !11
  %14 = tail call i32 @getc(ptr noundef %13) #30
  br label %15

15:                                               ; preds = %108, %12
  %16 = phi i32 [ %14, %12 ], [ %109, %108 ]
  switch i32 %16, label %91 [
    i32 10, label %17
    i32 37, label %100
    i32 39, label %22
    i32 34, label %22
    i32 47, label %55
    i32 -1, label %90
  ]

17:                                               ; preds = %15
  %18 = load ptr, ptr @fattrs, align 8, !tbaa !11
  %19 = tail call i32 @putc(i32 noundef 10, ptr noundef %18) #30
  %20 = load i32, ptr @lineno, align 4, !tbaa !7
  %21 = add nsw i32 %20, 1
  store i32 %21, ptr @lineno, align 4, !tbaa !7
  br label %97

22:                                               ; preds = %15, %15
  %23 = load ptr, ptr @fattrs, align 8, !tbaa !11
  %24 = tail call i32 @putc(i32 noundef %16, ptr noundef %23) #30
  %25 = load ptr, ptr @finput, align 8, !tbaa !11
  %26 = tail call i32 @getc(ptr noundef %25) #30
  %27 = icmp eq i32 %26, %16
  br i1 %27, label %52, label %28

28:                                               ; preds = %48, %22
  %29 = phi i32 [ %50, %48 ], [ %26, %22 ]
  switch i32 %29, label %33 [
    i32 -1, label %30
    i32 10, label %30
  ]

30:                                               ; preds = %28, %28
  tail call void @fatal(ptr noundef nonnull @.str.8.207) #29
  %31 = load ptr, ptr @fattrs, align 8, !tbaa !11
  %32 = tail call i32 @putc(i32 noundef %29, ptr noundef %31) #30
  br label %48

33:                                               ; preds = %28
  %34 = load ptr, ptr @fattrs, align 8, !tbaa !11
  %35 = tail call i32 @putc(i32 noundef %29, ptr noundef %34) #30
  %36 = icmp eq i32 %29, 92
  br i1 %36, label %37, label %48

37:                                               ; preds = %33
  %38 = load ptr, ptr @finput, align 8, !tbaa !11
  %39 = tail call i32 @getc(ptr noundef %38) #30
  %40 = icmp eq i32 %39, 10
  switch i32 %39, label %42 [
    i32 -1, label %41
    i32 10, label %41
  ]

41:                                               ; preds = %37, %37
  tail call void @fatal(ptr noundef nonnull @.str.8.207) #29
  br label %42

42:                                               ; preds = %41, %37
  %43 = load ptr, ptr @fattrs, align 8, !tbaa !11
  %44 = tail call i32 @putc(i32 noundef %39, ptr noundef %43) #30
  br i1 %40, label %45, label %48

45:                                               ; preds = %42
  %46 = load i32, ptr @lineno, align 4, !tbaa !7
  %47 = add nsw i32 %46, 1
  store i32 %47, ptr @lineno, align 4, !tbaa !7
  br label %48

48:                                               ; preds = %45, %42, %33, %30
  %49 = load ptr, ptr @finput, align 8, !tbaa !11
  %50 = tail call i32 @getc(ptr noundef %49) #30
  %51 = icmp eq i32 %50, %16
  br i1 %51, label %52, label %28, !llvm.loop !270

52:                                               ; preds = %48, %22
  %53 = load ptr, ptr @fattrs, align 8, !tbaa !11
  %54 = tail call i32 @putc(i32 noundef %16, ptr noundef %53) #30
  br label %97

55:                                               ; preds = %15
  %56 = load ptr, ptr @fattrs, align 8, !tbaa !11
  %57 = tail call i32 @putc(i32 noundef 47, ptr noundef %56) #30
  %58 = load ptr, ptr @finput, align 8, !tbaa !11
  %59 = tail call i32 @getc(ptr noundef %58) #30
  %60 = icmp eq i32 %59, 42
  br i1 %60, label %61, label %108

61:                                               ; preds = %55
  %62 = load ptr, ptr @fattrs, align 8, !tbaa !11
  %63 = tail call i32 @putc(i32 noundef 42, ptr noundef %62) #30
  %64 = load ptr, ptr @finput, align 8, !tbaa !11
  %65 = tail call i32 @getc(ptr noundef %64) #30
  br label %66

66:                                               ; preds = %82, %61
  %67 = phi i32 [ %65, %61 ], [ %83, %82 ]
  switch i32 %67, label %85 [
    i32 42, label %68
    i32 10, label %75
    i32 -1, label %84
  ]

68:                                               ; preds = %70, %66
  %69 = phi i32 [ %74, %70 ], [ %67, %66 ]
  switch i32 %69, label %82 [
    i32 42, label %70
    i32 47, label %94
  ], !llvm.loop !271

70:                                               ; preds = %68
  %71 = load ptr, ptr @fattrs, align 8, !tbaa !11
  %72 = tail call i32 @putc(i32 noundef 42, ptr noundef %71) #30
  %73 = load ptr, ptr @finput, align 8, !tbaa !11
  %74 = tail call i32 @getc(ptr noundef %73) #30
  br label %68, !llvm.loop !272

75:                                               ; preds = %66
  %76 = load i32, ptr @lineno, align 4, !tbaa !7
  %77 = add nsw i32 %76, 1
  store i32 %77, ptr @lineno, align 4, !tbaa !7
  %78 = load ptr, ptr @fattrs, align 8, !tbaa !11
  %79 = tail call i32 @putc(i32 noundef 10, ptr noundef %78) #30
  %80 = load ptr, ptr @finput, align 8, !tbaa !11
  %81 = tail call i32 @getc(ptr noundef %80) #30
  br label %82

82:                                               ; preds = %85, %84, %75, %68
  %83 = phi i32 [ %81, %75 ], [ -1, %84 ], [ %89, %85 ], [ %69, %68 ]
  br label %66, !llvm.loop !271

84:                                               ; preds = %66
  tail call void @fatal(ptr noundef nonnull @.str.9.232) #29
  br label %82

85:                                               ; preds = %66
  %86 = load ptr, ptr @fattrs, align 8, !tbaa !11
  %87 = tail call i32 @putc(i32 noundef %67, ptr noundef %86) #30
  %88 = load ptr, ptr @finput, align 8, !tbaa !11
  %89 = tail call i32 @getc(ptr noundef %88) #30
  br label %82

90:                                               ; preds = %15
  tail call void @fatal(ptr noundef nonnull @.str.10.233) #29
  br label %91

91:                                               ; preds = %90, %15
  %92 = load ptr, ptr @fattrs, align 8, !tbaa !11
  %93 = tail call i32 @putc(i32 noundef %16, ptr noundef %92) #30
  br label %97

94:                                               ; preds = %68
  %95 = load ptr, ptr @fattrs, align 8, !tbaa !11
  %96 = tail call i32 @putc(i32 noundef 47, ptr noundef %95) #30
  br label %97

97:                                               ; preds = %94, %91, %52, %17
  %98 = load ptr, ptr @finput, align 8, !tbaa !11
  %99 = tail call i32 @getc(ptr noundef %98) #30
  br label %108

100:                                              ; preds = %15
  %101 = load ptr, ptr @finput, align 8, !tbaa !11
  %102 = tail call i32 @getc(ptr noundef %101) #30
  %103 = icmp eq i32 %102, 125
  br i1 %103, label %104, label %105

104:                                              ; preds = %100
  ret void

105:                                              ; preds = %100
  %106 = load ptr, ptr @fattrs, align 8, !tbaa !11
  %107 = tail call i32 @putc(i32 noundef 37, ptr noundef %106) #30
  br label %108

108:                                              ; preds = %105, %97, %55
  %109 = phi i32 [ %59, %55 ], [ %99, %97 ], [ %102, %105 ]
  br label %15
}

; Function Attrs: nounwind optsize uwtable
define internal void @parse_type_decl() #0 {
  %1 = tail call i32 @lex() #29
  %2 = icmp eq i32 %1, 21
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @fatal(ptr noundef nonnull @.str.16.200) #29
  br label %4

4:                                                ; preds = %3, %0
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) @token_buffer) #34
  %6 = trunc i64 %5 to i32
  %7 = add nsw i32 %6, 1
  %8 = tail call ptr (i32, ...) @mallocate(i32 noundef %7) #29
  %9 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %8, ptr noundef nonnull dereferenceable(1) @token_buffer) #29
  br label %10

10:                                               ; preds = %17, %4
  %11 = tail call i32 @skip_white_space() #29
  %12 = load ptr, ptr @finput, align 8, !tbaa !11
  %13 = tail call i32 @ungetc(i32 noundef %11, ptr noundef %12) #30
  %14 = icmp eq i32 %13, 37
  br i1 %14, label %30, label %15

15:                                               ; preds = %10
  %16 = tail call i32 @lex() #29
  switch i32 %16, label %29 [
    i32 2, label %17
    i32 1, label %18
  ]

17:                                               ; preds = %29, %24, %23, %15
  br label %10

18:                                               ; preds = %15
  %19 = load ptr, ptr @symval, align 8, !tbaa !11
  %20 = getelementptr inbounds %struct.bucket, ptr %19, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !241
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  store ptr %8, ptr %20, align 8, !tbaa !241
  br label %17

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.bucket, ptr %19, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !238
  %27 = ptrtoint ptr %26 to i64
  %28 = trunc i64 %27 to i32
  tail call void @fatals(ptr noundef nonnull @.str.12.201, i32 noundef %28, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #29
  br label %17

29:                                               ; preds = %15
  tail call void @fatal(ptr noundef nonnull @.str.17.231) #29
  br label %17

30:                                               ; preds = %10
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @parse_assoc_decl(i32 noundef %0) #0 {
  %2 = load i32, ptr @lastprec, align 4, !tbaa !7
  %3 = add nsw i32 %2, 1
  store i32 %3, ptr @lastprec, align 4, !tbaa !7
  %4 = trunc i32 %0 to i16
  br label %5

5:                                                ; preds = %20, %1
  %6 = phi i32 [ 0, %1 ], [ %13, %20 ]
  %7 = phi ptr [ null, %1 ], [ %21, %20 ]
  %8 = tail call i32 @skip_white_space() #29
  %9 = load ptr, ptr @finput, align 8, !tbaa !11
  %10 = tail call i32 @ungetc(i32 noundef %8, ptr noundef %9) #30
  %11 = icmp eq i32 %10, 37
  br i1 %11, label %60, label %12

12:                                               ; preds = %5
  %13 = tail call i32 @lex() #29
  switch i32 %13, label %59 [
    i32 21, label %14
    i32 2, label %20
    i32 1, label %22
    i32 22, label %51
    i32 4, label %60
  ]

14:                                               ; preds = %12
  %15 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) @token_buffer) #34
  %16 = trunc i64 %15 to i32
  %17 = add nsw i32 %16, 1
  %18 = tail call ptr (i32, ...) @mallocate(i32 noundef %17) #29
  %19 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %18, ptr noundef nonnull dereferenceable(1) @token_buffer) #29
  br label %20

20:                                               ; preds = %59, %58, %53, %46, %45, %37, %14, %12
  %21 = phi ptr [ %18, %14 ], [ %7, %12 ], [ %7, %59 ], [ %7, %45 ], [ %7, %46 ], [ null, %37 ], [ %7, %58 ], [ %7, %53 ]
  br label %5

22:                                               ; preds = %12
  %23 = load i32, ptr @lastprec, align 4, !tbaa !7
  %24 = trunc i32 %23 to i16
  %25 = load ptr, ptr @symval, align 8, !tbaa !11
  %26 = getelementptr inbounds %struct.bucket, ptr %25, i64 0, i32 5
  store i16 %24, ptr %26, align 2, !tbaa !244
  %27 = getelementptr inbounds %struct.bucket, ptr %25, i64 0, i32 6
  store i16 %4, ptr %27, align 4, !tbaa !245
  %28 = getelementptr inbounds %struct.bucket, ptr %25, i64 0, i32 8
  %29 = load i8, ptr %28, align 8, !tbaa !160
  %30 = icmp eq i8 %29, 2
  br i1 %30, label %31, label %37

31:                                               ; preds = %22
  %32 = getelementptr inbounds %struct.bucket, ptr %25, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !238
  %34 = ptrtoint ptr %33 to i64
  %35 = trunc i64 %34 to i32
  tail call void @fatals(ptr noundef nonnull @.str.11.202, i32 noundef %35, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #29
  %36 = load ptr, ptr @symval, align 8, !tbaa !11
  br label %37

37:                                               ; preds = %31, %22
  %38 = phi ptr [ %36, %31 ], [ %25, %22 ]
  %39 = getelementptr inbounds %struct.bucket, ptr %38, i64 0, i32 8
  store i8 1, ptr %39, align 8, !tbaa !160
  %40 = icmp eq ptr %7, null
  br i1 %40, label %20, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.bucket, ptr %38, i64 0, i32 3
  %43 = load ptr, ptr %42, align 8, !tbaa !241
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  store ptr %7, ptr %42, align 8, !tbaa !241
  br label %20

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.bucket, ptr %38, i64 0, i32 2
  %48 = load ptr, ptr %47, align 8, !tbaa !238
  %49 = ptrtoint ptr %48 to i64
  %50 = trunc i64 %49 to i32
  tail call void @fatals(ptr noundef nonnull @.str.12.201, i32 noundef %50, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #29
  br label %20

51:                                               ; preds = %12
  %52 = icmp eq i32 %6, 1
  br i1 %52, label %53, label %58

53:                                               ; preds = %51
  %54 = load i32, ptr @numval, align 4, !tbaa !7
  %55 = trunc i32 %54 to i16
  %56 = load ptr, ptr @symval, align 8, !tbaa !11
  %57 = getelementptr inbounds %struct.bucket, ptr %56, i64 0, i32 7
  store i16 %55, ptr %57, align 2, !tbaa !162
  store i32 1, ptr @translations, align 4, !tbaa !7
  br label %20

58:                                               ; preds = %51
  tail call void @fatal(ptr noundef nonnull @.str.18.229) #29
  br label %20

59:                                               ; preds = %12
  tail call void @fatal(ptr noundef nonnull @.str.19.230) #29
  br label %20

60:                                               ; preds = %12, %5
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @copys(ptr nocapture noundef readonly %0) #0 {
  %2 = load i8, ptr %0, align 1, !tbaa !61
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %11, label %4

4:                                                ; preds = %4, %1
  %5 = phi i32 [ %7, %4 ], [ 1, %1 ]
  %6 = phi ptr [ %8, %4 ], [ %0, %1 ]
  %7 = add nuw nsw i32 %5, 1
  %8 = getelementptr inbounds i8, ptr %6, i64 1
  %9 = load i8, ptr %8, align 1, !tbaa !61
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %4, !llvm.loop !273

11:                                               ; preds = %4, %1
  %12 = phi i32 [ 1, %1 ], [ %7, %4 ]
  %13 = tail call ptr (i32, ...) @mallocate(i32 noundef %12) #29
  %14 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %13, ptr noundef nonnull dereferenceable(1) %0) #30
  ret ptr %13
}

; Function Attrs: nounwind optsize uwtable
define internal void @tabinit() #0 {
  %1 = tail call ptr (i32, ...) @mallocate(i32 noundef 8072) #29
  store ptr %1, ptr @symtab, align 8, !tbaa !11
  store ptr null, ptr @firstsymbol, align 8, !tbaa !11
  store ptr null, ptr @lastsymbol, align 8, !tbaa !11
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @getsym(ptr nocapture noundef readonly %0) #0 {
  %2 = load i8, ptr %0, align 1, !tbaa !61
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %18, label %4

4:                                                ; preds = %4, %1
  %5 = phi i8 [ %13, %4 ], [ %2, %1 ]
  %6 = phi i16 [ %12, %4 ], [ 0, %1 ]
  %7 = phi ptr [ %9, %4 ], [ %0, %1 ]
  %8 = shl nuw nsw i16 %6, 1
  %9 = getelementptr inbounds i8, ptr %7, i64 1
  %10 = sext i8 %5 to i16
  %11 = xor i16 %8, %10
  %12 = and i16 %11, 16383
  %13 = load i8, ptr %9, align 1, !tbaa !61
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %4, !llvm.loop !274

15:                                               ; preds = %4
  %.lcssa = phi i16 [ %12, %4 ]
  %16 = urem i16 %.lcssa, 1009
  %17 = zext i16 %16 to i64
  br label %18

18:                                               ; preds = %15, %1
  %19 = phi i64 [ 0, %1 ], [ %17, %15 ]
  %20 = load ptr, ptr @symtab, align 8, !tbaa !11
  %21 = getelementptr inbounds ptr, ptr %20, i64 %19
  %22 = load ptr, ptr %21, align 8, !tbaa !11
  %23 = icmp eq ptr %22, null
  br i1 %23, label %34, label %24

24:                                               ; preds = %30, %18
  %25 = phi ptr [ %31, %30 ], [ %22, %18 ]
  %26 = getelementptr inbounds %struct.bucket, ptr %25, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !238
  %28 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %27) #30
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %52

30:                                               ; preds = %24
  %31 = load ptr, ptr %25, align 8, !tbaa !275
  %32 = icmp ne ptr %31, null
  %33 = and i1 %32, %29
  br i1 %33, label %24, label %34, !llvm.loop !276

34:                                               ; preds = %30, %18
  %35 = load i32, ptr @nsyms, align 4, !tbaa !7
  %36 = add nsw i32 %35, 1
  store i32 %36, ptr @nsyms, align 4, !tbaa !7
  %37 = tail call ptr (i32, ...) @mallocate(i32 noundef 48) #29
  %38 = load ptr, ptr @symtab, align 8, !tbaa !11
  %39 = getelementptr inbounds ptr, ptr %38, i64 %19
  %40 = load ptr, ptr %39, align 8, !tbaa !11
  store ptr %40, ptr %37, align 8, !tbaa !275
  %41 = getelementptr inbounds %struct.bucket, ptr %37, i64 0, i32 1
  store ptr null, ptr %41, align 8, !tbaa !277
  %42 = tail call ptr @copys(ptr noundef nonnull %0) #30
  %43 = getelementptr inbounds %struct.bucket, ptr %37, i64 0, i32 2
  store ptr %42, ptr %43, align 8, !tbaa !238
  %44 = getelementptr inbounds %struct.bucket, ptr %37, i64 0, i32 8
  store i8 0, ptr %44, align 8, !tbaa !160
  %45 = load ptr, ptr @firstsymbol, align 8, !tbaa !11
  %46 = icmp eq ptr %45, null
  %47 = load ptr, ptr @lastsymbol, align 8
  %48 = getelementptr inbounds %struct.bucket, ptr %47, i64 0, i32 1
  %49 = select i1 %46, ptr @firstsymbol, ptr %48
  store ptr %37, ptr %49, align 8, !tbaa !11
  store ptr %37, ptr @lastsymbol, align 8, !tbaa !11
  %50 = load ptr, ptr @symtab, align 8, !tbaa !11
  %51 = getelementptr inbounds ptr, ptr %50, i64 %19
  store ptr %37, ptr %51, align 8, !tbaa !11
  br label %52

52:                                               ; preds = %34, %24
  %53 = phi ptr [ %37, %34 ], [ %25, %24 ]
  ret ptr %53
}

; Function Attrs: nounwind optsize uwtable
define internal void @free_symtab() #0 {
  br label %1

1:                                                ; preds = %11, %0
  %2 = phi i64 [ 0, %0 ], [ %12, %11 ]
  %3 = load ptr, ptr @symtab, align 8, !tbaa !11
  %4 = getelementptr inbounds ptr, ptr %3, i64 %2
  %5 = load ptr, ptr %4, align 8, !tbaa !11
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %7, %1
  %8 = phi ptr [ %9, %7 ], [ %5, %1 ]
  %9 = load ptr, ptr %8, align 8, !tbaa !275
  tail call void @free(ptr noundef nonnull %8) #29
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %7, !llvm.loop !278

11:                                               ; preds = %7, %1
  %12 = add nuw nsw i64 %2, 1
  %13 = icmp eq i64 %12, 1009
  br i1 %13, label %14, label %1, !llvm.loop !279

14:                                               ; preds = %11
  ret void
}

; Function Attrs: nofree nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal void @TC(ptr noundef %0, i32 noundef %1) #3 {
  %3 = add nsw i32 %1, 31
  %4 = sdiv i32 %3, 32
  %5 = shl nsw i32 %4, 2
  %6 = mul nsw i32 %5, %1
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds i8, ptr %0, i64 %7
  %9 = icmp sgt i32 %6, 0
  br i1 %9, label %10, label %47

10:                                               ; preds = %2
  %11 = sext i32 %5 to i64
  %12 = icmp slt i32 %1, 1
  br label %13

13:                                               ; preds = %39, %10
  %14 = phi ptr [ %0, %10 ], [ %45, %39 ]
  %15 = phi ptr [ %0, %10 ], [ %44, %39 ]
  %16 = phi i32 [ 1, %10 ], [ %42, %39 ]
  br label %17

17:                                               ; preds = %35, %13
  %18 = phi ptr [ %37, %35 ], [ %15, %13 ]
  %19 = phi ptr [ %36, %35 ], [ %0, %13 ]
  %20 = load i32, ptr %18, align 4, !tbaa !7
  %21 = and i32 %20, %16
  %22 = icmp eq i32 %21, 0
  %23 = getelementptr inbounds i8, ptr %19, i64 %11
  %24 = or i1 %22, %12
  %25 = select i1 %22, ptr %23, ptr %19
  br i1 %24, label %35, label %26

26:                                               ; preds = %26, %17
  %27 = phi ptr [ %31, %26 ], [ %19, %17 ]
  %28 = phi ptr [ %29, %26 ], [ %14, %17 ]
  %29 = getelementptr inbounds i32, ptr %28, i64 1
  %30 = load i32, ptr %28, align 4, !tbaa !7
  %31 = getelementptr inbounds i32, ptr %27, i64 1
  %32 = load i32, ptr %27, align 4, !tbaa !7
  %33 = or i32 %32, %30
  store i32 %33, ptr %27, align 4, !tbaa !7
  %34 = icmp ult ptr %31, %23
  br i1 %34, label %26, label %35, !llvm.loop !280

35:                                               ; preds = %26, %17
  %36 = phi ptr [ %25, %17 ], [ %31, %26 ]
  %37 = getelementptr inbounds i8, ptr %18, i64 %11
  %38 = icmp ult ptr %36, %8
  br i1 %38, label %17, label %39, !llvm.loop !281

39:                                               ; preds = %35
  %40 = shl i32 %16, 1
  %41 = icmp eq i32 %40, 0
  %42 = tail call i32 @llvm.umax.i32(i32 %40, i32 1)
  %43 = zext i1 %41 to i64
  %44 = getelementptr inbounds i32, ptr %15, i64 %43
  %45 = getelementptr inbounds i8, ptr %14, i64 %11
  %46 = icmp ult ptr %45, %8
  br i1 %46, label %13, label %47, !llvm.loop !282

47:                                               ; preds = %39, %2
  ret void
}

; Function Attrs: nofree nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal void @RTC(ptr noundef %0, i32 noundef %1) #3 {
  tail call void @TC(ptr noundef %0, i32 noundef %1) #30
  %3 = add nsw i32 %1, 31
  %4 = sdiv i32 %3, 32
  %5 = shl nsw i32 %4, 2
  %6 = mul nsw i32 %5, %1
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds i8, ptr %0, i64 %7
  %9 = icmp sgt i32 %6, 0
  br i1 %9, label %10, label %24

10:                                               ; preds = %2
  %11 = sext i32 %5 to i64
  br label %12

12:                                               ; preds = %12, %10
  %13 = phi i32 [ 1, %10 ], [ %21, %12 ]
  %14 = phi ptr [ %0, %10 ], [ %22, %12 ]
  %15 = load i32, ptr %14, align 4, !tbaa !7
  %16 = or i32 %15, %13
  store i32 %16, ptr %14, align 4, !tbaa !7
  %17 = shl i32 %13, 1
  %18 = icmp eq i32 %17, 0
  %19 = zext i1 %18 to i64
  %20 = getelementptr inbounds i32, ptr %14, i64 %19
  %21 = tail call i32 @llvm.umax.i32(i32 %17, i32 1)
  %22 = getelementptr inbounds i8, ptr %20, i64 %11
  %23 = icmp ult ptr %22, %8
  br i1 %23, label %12, label %24, !llvm.loop !283

24:                                               ; preds = %12, %2
  ret void
}

attributes #0 = { nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { nofree nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nosync nounwind optsize memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { noreturn nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree nounwind optsize memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { noreturn nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree nosync nounwind optsize willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nofree nounwind willreturn memory(argmem: read) }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #25 = { nofree norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { mustprogress nofree nounwind optsize willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { mustprogress nounwind optsize willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { nounwind optsize }
attributes #30 = { optsize }
attributes #31 = { nounwind optsize allocsize(0,1) }
attributes #32 = { cold }
attributes #33 = { nounwind optsize allocsize(0) }
attributes #34 = { nounwind optsize willreturn memory(read) }
attributes #35 = { cold optsize }
attributes #36 = { noreturn nounwind optsize }
attributes #37 = { nounwind optsize willreturn memory(none) }
attributes #38 = { nounwind }
attributes #39 = { nounwind optsize allocsize(1) }

!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
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
!13 = !{!14, !14, i64 0}
!14 = !{!"short", !9, i64 0}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.mustprogress"}
!17 = distinct !{!17, !16}
!18 = !{!19, !14, i64 20}
!19 = !{!"core", !12, i64 0, !12, i64 8, !14, i64 16, !14, i64 18, !14, i64 20, !9, i64 22}
!20 = !{!19, !12, i64 0}
!21 = distinct !{!21, !16}
!22 = distinct !{!22, !16}
!23 = !{!19, !14, i64 16}
!24 = !{!25, !14, i64 8}
!25 = !{!"reductions", !12, i64 0, !14, i64 8, !14, i64 10, !9, i64 12}
!26 = !{!25, !14, i64 10}
!27 = distinct !{!27, !16}
!28 = distinct !{!28, !16}
!29 = distinct !{!29, !16}
!30 = distinct !{!30, !16}
!31 = !{i32 -32768, i32 32768}
!32 = distinct !{!32, !16}
!33 = !{!34, !14, i64 8}
!34 = !{!"shifts", !12, i64 0, !14, i64 8, !14, i64 10, !9, i64 12}
!35 = !{!34, !14, i64 10}
!36 = distinct !{!36, !16}
!37 = !{!19, !14, i64 18}
!38 = distinct !{!38, !16}
!39 = !{!34, !12, i64 0}
!40 = distinct !{!40, !16}
!41 = distinct !{!41, !16}
!42 = distinct !{!42, !16}
!43 = distinct !{!43, !16}
!44 = distinct !{!44, !16}
!45 = distinct !{!45, !16}
!46 = !{!19, !12, i64 8}
!47 = distinct !{!47, !16}
!48 = distinct !{!48, !16}
!49 = distinct !{!49, !16}
!50 = distinct !{!50, !16}
!51 = distinct !{!51, !16}
!52 = distinct !{!52, !16}
!53 = distinct !{!53, !16}
!54 = distinct !{!54, !16}
!55 = distinct !{!55, !16}
!56 = distinct !{!56, !16}
!57 = distinct !{!57, !16}
!58 = distinct !{!58, !16}
!59 = distinct !{!59, !16}
!60 = distinct !{!60, !16}
!61 = !{!9, !9, i64 0}
!62 = distinct !{!62, !16}
!63 = distinct !{!63, !16}
!64 = distinct !{!64, !16}
!65 = distinct !{!65, !16}
!66 = distinct !{!66, !16}
!67 = distinct !{!67, !16}
!68 = distinct !{!68, !16}
!69 = distinct !{!69, !16}
!70 = distinct !{!70, !16}
!71 = !{!72, !14, i64 0}
!72 = !{!"errs", !14, i64 0, !9, i64 2}
!73 = distinct !{!73, !16}
!74 = distinct !{!74, !16}
!75 = distinct !{!75, !16}
!76 = distinct !{!76, !16}
!77 = distinct !{!77, !16}
!78 = distinct !{!78, !16}
!79 = distinct !{!79, !16}
!80 = distinct !{!80, !16}
!81 = distinct !{!81, !16}
!82 = distinct !{!82, !16}
!83 = distinct !{!83, !16}
!84 = distinct !{!84, !16}
!85 = distinct !{!85, !16}
!86 = distinct !{!86, !16}
!87 = distinct !{!87, !16}
!88 = distinct !{!88, !16}
!89 = distinct !{!89, !16}
!90 = distinct !{!90, !16}
!91 = distinct !{!91, !16}
!92 = distinct !{!92, !16}
!93 = distinct !{!93, !16}
!94 = distinct !{!94, !16}
!95 = distinct !{!95, !16}
!96 = distinct !{!96, !16}
!97 = !{!98, !12, i64 0}
!98 = !{!"shorts", !12, i64 0, !14, i64 8}
!99 = !{!98, !14, i64 8}
!100 = distinct !{!100, !16}
!101 = distinct !{!101, !16}
!102 = distinct !{!102, !16}
!103 = distinct !{!103, !16}
!104 = distinct !{!104, !16}
!105 = distinct !{!105, !16}
!106 = distinct !{!106, !16}
!107 = distinct !{!107, !16}
!108 = distinct !{!108, !16}
!109 = distinct !{!109, !16}
!110 = distinct !{!110, !16}
!111 = distinct !{!111, !16}
!112 = distinct !{!112, !16}
!113 = distinct !{!113, !16}
!114 = distinct !{!114, !16}
!115 = distinct !{!115, !16}
!116 = distinct !{!116, !16}
!117 = distinct !{!117, !16}
!118 = distinct !{!118, !16}
!119 = distinct !{!119, !16}
!120 = distinct !{!120, !16}
!121 = distinct !{!121, !16}
!122 = distinct !{!122, !16}
!123 = distinct !{!123, !16}
!124 = distinct !{!124, !16}
!125 = distinct !{!125, !16}
!126 = distinct !{!126, !16}
!127 = distinct !{!127, !16}
!128 = distinct !{!128, !16}
!129 = distinct !{!129, !16}
!130 = distinct !{!130, !16}
!131 = distinct !{!131, !16}
!132 = distinct !{!132, !16}
!133 = distinct !{!133, !16}
!134 = distinct !{!134, !16}
!135 = distinct !{!135, !16}
!136 = distinct !{!136, !16}
!137 = distinct !{!137, !16}
!138 = distinct !{!138, !16}
!139 = distinct !{!139, !16}
!140 = distinct !{!140, !16}
!141 = distinct !{!141, !16}
!142 = distinct !{!142, !16}
!143 = distinct !{!143, !16}
!144 = distinct !{!144, !16}
!145 = distinct !{!145, !16}
!146 = distinct !{!146, !16}
!147 = distinct !{!147, !16}
!148 = distinct !{!148, !16}
!149 = distinct !{!149, !16}
!150 = distinct !{!150, !16}
!151 = distinct !{!151, !16}
!152 = distinct !{!152, !16}
!153 = distinct !{!153, !16}
!154 = distinct !{!154, !16}
!155 = distinct !{!155, !16}
!156 = distinct !{!156, !16}
!157 = distinct !{!157, !16}
!158 = distinct !{!158, !16}
!159 = distinct !{!159, !16}
!160 = !{!161, !9, i64 40}
!161 = !{!"bucket", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !14, i64 32, !14, i64 34, !14, i64 36, !14, i64 38, !9, i64 40}
!162 = !{!161, !14, i64 38}
!163 = distinct !{!163, !16}
!164 = !{i32 7, i32 25}
!165 = distinct !{!165, !16}
!166 = distinct !{!166, !16}
!167 = distinct !{!167, !16}
!168 = distinct !{!168, !16}
!169 = distinct !{!169, !16}
!170 = distinct !{!170, !16}
!171 = distinct !{!171, !16}
!172 = distinct !{!172, !16}
!173 = distinct !{!173, !16}
!174 = distinct !{!174, !16}
!175 = distinct !{!175, !16}
!176 = distinct !{!176, !16}
!177 = distinct !{!177, !16}
!178 = distinct !{!178, !16}
!179 = distinct !{!179, !16}
!180 = distinct !{!180, !16}
!181 = distinct !{!181, !16}
!182 = distinct !{!182, !16}
!183 = distinct !{!183, !16}
!184 = !{i32 -32768, i32 32769}
!185 = distinct !{!185, !16}
!186 = distinct !{!186, !16}
!187 = !{!25, !12, i64 0}
!188 = distinct !{!188, !16}
!189 = distinct !{!189, !16}
!190 = distinct !{!190, !16}
!191 = distinct !{!191, !16}
!192 = distinct !{!192, !16}
!193 = distinct !{!193, !16}
!194 = distinct !{!194, !16, !195, !196}
!195 = !{!"llvm.loop.isvectorized", i32 1}
!196 = !{!"llvm.loop.unroll.runtime.disable"}
!197 = !{i32 -2147483648, i32 32767}
!198 = distinct !{!198, !16}
!199 = distinct !{!199, !16}
!200 = distinct !{!200, !16}
!201 = distinct !{!201, !16}
!202 = distinct !{!202, !16}
!203 = distinct !{!203, !16}
!204 = distinct !{!204, !16}
!205 = distinct !{!205, !16}
!206 = distinct !{!206, !16}
!207 = distinct !{!207, !16}
!208 = distinct !{!208, !16}
!209 = distinct !{!209, !16}
!210 = distinct !{!210, !16}
!211 = distinct !{!211, !16}
!212 = distinct !{!212, !16}
!213 = distinct !{!213, !16}
!214 = distinct !{!214, !16}
!215 = distinct !{!215, !16}
!216 = distinct !{!216, !16}
!217 = distinct !{!217, !16}
!218 = distinct !{!218, !16}
!219 = distinct !{!219, !16}
!220 = distinct !{!220, !16}
!221 = distinct !{!221, !16}
!222 = distinct !{!222, !16}
!223 = distinct !{!223, !16}
!224 = distinct !{!224, !16}
!225 = distinct !{!225, !16}
!226 = distinct !{!226, !16}
!227 = distinct !{!227, !16}
!228 = distinct !{!228, !16}
!229 = distinct !{!229, !16}
!230 = distinct !{!230, !16}
!231 = distinct !{!231, !16}
!232 = distinct !{!232, !16}
!233 = distinct !{!233, !16}
!234 = distinct !{!234, !16}
!235 = !{!236, !12, i64 8}
!236 = !{!"symbol_list", !12, i64 0, !12, i64 8, !12, i64 16}
!237 = !{!161, !14, i64 32}
!238 = !{!161, !12, i64 16}
!239 = !{!236, !12, i64 0}
!240 = !{!236, !12, i64 16}
!241 = !{!161, !12, i64 24}
!242 = distinct !{!242, !16}
!243 = distinct !{!243, !16}
!244 = !{!161, !14, i64 34}
!245 = !{!161, !14, i64 36}
!246 = distinct !{!246, !16}
!247 = distinct !{!247, !16, !195, !196}
!248 = distinct !{!248, !16}
!249 = distinct !{!249, !16}
!250 = distinct !{!250, !16}
!251 = distinct !{!251, !16}
!252 = distinct !{!252, !16}
!253 = distinct !{!253, !16}
!254 = distinct !{!254, !16}
!255 = distinct !{!255, !16}
!256 = distinct !{!256, !16}
!257 = distinct !{!257, !16}
!258 = distinct !{!258, !16}
!259 = distinct !{!259, !16}
!260 = distinct !{!260, !16}
!261 = distinct !{!261, !16}
!262 = distinct !{!262, !16}
!263 = distinct !{!263, !16}
!264 = distinct !{!264, !16}
!265 = distinct !{!265, !16}
!266 = distinct !{!266, !16}
!267 = distinct !{!267, !16}
!268 = distinct !{!268, !16}
!269 = distinct !{!269, !16}
!270 = distinct !{!270, !16}
!271 = distinct !{!271, !16}
!272 = distinct !{!272, !16}
!273 = distinct !{!273, !16}
!274 = distinct !{!274, !16}
!275 = !{!161, !12, i64 0}
!276 = distinct !{!276, !16}
!277 = !{!161, !12, i64 8}
!278 = distinct !{!278, !16}
!279 = distinct !{!279, !16}
!280 = distinct !{!280, !16}
!281 = distinct !{!281, !16}
!282 = distinct !{!282, !16}
!283 = distinct !{!283, !16}
