; ModuleID = 'mybison.e.bc.ll'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bucket = type { ptr, ptr, ptr, ptr, i16, i16, i16, i16, i8 }
%struct.symbol_list = type { ptr, ptr, ptr }
%struct.shorts = type { ptr, i16 }
%struct.core = type { ptr, ptr, i16, i16, i16, [1 x i16] }
%struct.shifts = type { ptr, i16, i16, [1 x i16] }
%struct.errs = type { i16, [1 x i16] }

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
@itemset = internal unnamed_addr global ptr null, align 8
@rulesetsize = internal unnamed_addr global i32 0, align 4
@ruleset = internal unnamed_addr global ptr null, align 8
@fderives = internal unnamed_addr global ptr null, align 8
@firsts = internal unnamed_addr global ptr null, align 8
@varsetsize = internal unnamed_addr global i32 0, align 4
@itemsetend = internal unnamed_addr global ptr null, align 8
@conflicts = internal unnamed_addr global ptr null, align 8
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
@outfile = internal unnamed_addr global ptr null, align 8
@stdout = external local_unnamed_addr global ptr, align 8
@.str.8.30 = private unnamed_addr constant [3 x i8] c".h\00", align 1
@defsfile = internal unnamed_addr global ptr null, align 8
@.str.9.32 = private unnamed_addr constant [11 x i8] c"act.XXXXXX\00", align 1
@actfile = internal unnamed_addr global ptr null, align 8
@.str.10.33 = private unnamed_addr constant [13 x i8] c"attrs.XXXXXX\00", align 1
@tmpattrsfile = internal unnamed_addr global ptr null, align 8
@.str.11.34 = private unnamed_addr constant [11 x i8] c"tab.XXXXXX\00", align 1
@tmptabfile = internal unnamed_addr global ptr null, align 8
@tabfile = internal unnamed_addr global ptr null, align 8
@.str.12.35 = private unnamed_addr constant [9 x i8] c".stype.h\00", align 1
@.str.13.36 = private unnamed_addr constant [9 x i8] c".guard.c\00", align 1
@guardfile = internal unnamed_addr global ptr null, align 8
@.str.14.37 = private unnamed_addr constant [12 x i8] c"BISON_HAIRY\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"parse.y.in\00", align 1
@.str.16.38 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"bison: \00", align 1
@fixed_outfiles = internal unnamed_addr global i1 false, align 4
@.str.45 = private unnamed_addr constant [5 x i8] c"yacc\00", align 1
@.str.1.46 = private unnamed_addr constant [8 x i8] c"yvdlto:\00", align 1
@spec_outfile = internal unnamed_addr global ptr null, align 8
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
@derives = internal unnamed_addr global ptr null, align 8
@.str.2.103 = private unnamed_addr constant [18 x i8] c"add_lookback_edge\00", align 1
@infinity = internal unnamed_addr global i32 0, align 4
@INDEX = internal unnamed_addr global ptr null, align 8
@VERTICES = internal unnamed_addr global ptr null, align 8
@top = internal unnamed_addr global i32 0, align 4
@R = internal unnamed_addr global ptr null, align 8
@unlexed = internal unnamed_addr global i32 0, align 4
@.str.105 = private unnamed_addr constant [23 x i8] c"unexpected '/%c' found\00", align 1
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
@verboseflag = internal unnamed_addr global i1 false, align 4
@.str.125 = private unnamed_addr constant [17 x i8] c"fatal error: %s\0A\00", align 1
@.str.1.126 = private unnamed_addr constant [19 x i8] c"\22%s\22, line %d: %s\0A\00", align 1
@.str.2.131 = private unnamed_addr constant [34 x i8] c"limit of %d exceeded, too many %s\00", align 1
@.str.3.134 = private unnamed_addr constant [20 x i8] c"internal error, %s\0A\00", align 1
@nullable = internal unnamed_addr global ptr null, align 8
@.str.139 = private unnamed_addr constant [248 x i8] c"\0A#include \22%s\22\0Aextern int yyerror;\0Aextern int yycost;\0Aextern char * yymsg;\0Aextern YYSTYPE yyval;\0A\0Ayyguard(n, yyvsp, yylsp)\0Aregister int n;\0Aregister YYSTYPE *yyvsp;\0Aregister YYLTYPE *yylsp;\0A{\0A  yyerror = 0;\0Ayycost = 0;\0A  yymsg = 0;\0Aswitch (n)\0A    {\00", align 1
@attrsfile = internal unnamed_addr global ptr null, align 8
@.str.1.141 = private unnamed_addr constant [164 x i8] c"\0A#include \22%s\22\0Aextern YYSTYPE yyval;\0Aextern int yychar;yyaction(n, yyvsp, yylsp)\0Aregister int n;\0Aregister YYSTYPE *yyvsp;\0Aregister YYLTYPE *yylsp;\0A{\0A  switch (n)\0A{\00", align 1
@.str.2.140 = private unnamed_addr constant [19 x i8] c"\0A  switch (yyn) {\0A\00", align 1
@.str.3.142 = private unnamed_addr constant [10 x i8] c"\0A    }\0A}\0A\00", align 1
@.str.4.143 = private unnamed_addr constant [4 x i8] c"\0A}\0A\00", align 1
@debugflag = internal unnamed_addr global i1 false, align 4
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
@final_state = internal unnamed_addr global i32 0, align 4
@.str.30 = private unnamed_addr constant [20 x i8] c"#define\09YYFLAG\09\09%d\0A\00", align 1
@.str.31.164 = private unnamed_addr constant [21 x i8] c"#define\09YYNTBASE\09%d\0A\00", align 1
@nvectors = internal unnamed_addr global i32 0, align 4
@froms = internal unnamed_addr global ptr null, align 8
@tos = internal unnamed_addr global ptr null, align 8
@tally = internal unnamed_addr global ptr null, align 8
@width = internal unnamed_addr global ptr null, align 8
@lookaheads = internal unnamed_addr global ptr null, align 8
@LA = internal unnamed_addr global ptr null, align 8
@LAruleno = internal unnamed_addr global ptr null, align 8
@goto_map = internal unnamed_addr global ptr null, align 8
@from_state = internal unnamed_addr global ptr null, align 8
@to_state = internal unnamed_addr global ptr null, align 8
@actrow = internal unnamed_addr global ptr null, align 8
@.str.32 = private unnamed_addr constant [38 x i8] c"\0Astatic const short yydefact[] = {%6d\00", align 1
@tokensetsize = internal unnamed_addr global i32 0, align 4
@state_count = internal unnamed_addr global ptr null, align 8
@.str.33 = private unnamed_addr constant [39 x i8] c"\0Astatic const short yydefgoto[] = {%6d\00", align 1
@order = internal unnamed_addr global ptr null, align 8
@nentries = internal unnamed_addr global i32 0, align 4
@base = internal unnamed_addr global ptr null, align 8
@pos = internal unnamed_addr global ptr null, align 8
@table = internal unnamed_addr global ptr null, align 8
@check = internal unnamed_addr global ptr null, align 8
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
@fparser = internal unnamed_addr global ptr null, align 8
@.str.43 = private unnamed_addr constant [5 x i8] c"#lin\00", align 1
@.str.44 = private unnamed_addr constant [4 x i8] c"#li\00", align 1
@.str.45.150 = private unnamed_addr constant [3 x i8] c"#l\00", align 1
@first_state = internal unnamed_addr global ptr null, align 8
@first_shift = internal unnamed_addr global ptr null, align 8
@first_reduction = internal unnamed_addr global ptr null, align 8
@any_conflicts = internal unnamed_addr global i1 false, align 1
@foutput = internal unnamed_addr global ptr null, align 8
@.str.169 = private unnamed_addr constant [16 x i8] c"\0A\0Atoken types:\0A\00", align 1
@nstates = internal unnamed_addr global i32 0, align 4
@.str.1.170 = private unnamed_addr constant [16 x i8] c" type %d is %s\0A\00", align 1
@.str.2.171 = private unnamed_addr constant [13 x i8] c"\0A\0Astate %d\0A\0A\00", align 1
@state_table = internal unnamed_addr global ptr null, align 8
@.str.3.177 = private unnamed_addr constant [13 x i8] c"    %s  ->  \00", align 1
@.str.4.178 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.5.179 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.6.180 = private unnamed_addr constant [8 x i8] c"   (%d)\00", align 1
@shift_table = internal unnamed_addr global ptr null, align 8
@reduction_table = internal unnamed_addr global ptr null, align 8
@err_table = internal unnamed_addr global ptr null, align 8
@.str.7.172 = private unnamed_addr constant [16 x i8] c"    NO ACTIONS\0A\00", align 1
@accessing_symbol = internal unnamed_addr global ptr null, align 8
@.str.8.173 = private unnamed_addr constant [20 x i8] c"    %-4s\09shift  %d\0A\00", align 1
@.str.9.174 = private unnamed_addr constant [33 x i8] c"    %-4s\09error (nonassociative)\0A\00", align 1
@consistent = internal unnamed_addr global ptr null, align 8
@.str.10.175 = private unnamed_addr constant [32 x i8] c"    $default\09reduce  %d  (%s)\0A\0A\00", align 1
@.str.11.176 = private unnamed_addr constant [19 x i8] c"    %-4s\09goto  %d\0A\00", align 1
@start_flag = internal unnamed_addr global i1 false, align 4
@startval = internal unnamed_addr global ptr null, align 8
@translations = internal unnamed_addr global i32 0, align 4
@nvars = internal unnamed_addr global i32 0, align 4
@nrules = internal unnamed_addr global i32 0, align 4
@nitems = internal unnamed_addr global i32 0, align 4
@rline_allocated = internal unnamed_addr global i32 0, align 4
@rline = internal unnamed_addr global ptr null, align 8
@typed = internal unnamed_addr global i1 false, align 4
@lastprec = internal unnamed_addr global i32 0, align 4
@gensym_count = internal unnamed_addr global i32 0, align 4
@semantic_parser = internal unnamed_addr global i1 false, align 4
@pure_parser = internal unnamed_addr global i1 false, align 4
@yylsp_needed = internal unnamed_addr global i1 false, align 4
@grammar = internal unnamed_addr global ptr null, align 8
@lineno = internal unnamed_addr global i32 0, align 4
@.str.185 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@errtoken = internal unnamed_addr global ptr null, align 8
@.str.1.186 = private unnamed_addr constant [10 x i8] c"$illegal.\00", align 1
@ftable = internal unnamed_addr global ptr null, align 8
@.str.2.187 = private unnamed_addr constant [40 x i8] c"\0A/*  A Bison parser, made from %s  */\0A\0A\00", align 1
@infile = internal unnamed_addr global ptr null, align 8
@.str.3.188 = private unnamed_addr constant [23 x i8] c"#define YYLSP_NEEDED\0A\0A\00", align 1
@.str.4.227 = private unnamed_addr constant [35 x i8] c"junk after % in definition section\00", align 1
@.str.5.192 = private unnamed_addr constant [17 x i8] c"no input grammar\00", align 1
@.str.6.228 = private unnamed_addr constant [46 x i8] c"Unrecognized char '%c' in declaration section\00", align 1
@nolinesflag = internal unnamed_addr global i1 false, align 4
@fattrs = internal unnamed_addr global ptr null, align 8
@.str.7.205 = private unnamed_addr constant [15 x i8] c"#line %d \22%s\22\0A\00", align 1
@finput = internal unnamed_addr global ptr null, align 8
@.str.8.207 = private unnamed_addr constant [20 x i8] c"unterminated string\00", align 1
@.str.9.232 = private unnamed_addr constant [38 x i8] c"unterminated comment in %{ definition\00", align 1
@.str.10.233 = private unnamed_addr constant [27 x i8] c"unterminated %{ definition\00", align 1
@token_buffer = internal global [1025 x i8] zeroinitializer, align 16
@symval = internal unnamed_addr global ptr null, align 8
@.str.11.202 = private unnamed_addr constant [20 x i8] c"symbol %s redefined\00", align 1
@.str.12.201 = private unnamed_addr constant [26 x i8] c"type redeclaration for %s\00", align 1
@numval = internal unnamed_addr global i32 0, align 4
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
@fdefines = internal unnamed_addr global ptr null, align 8
@.str.24.198 = private unnamed_addr constant [21 x i8] c"unterminated comment\00", align 1
@.str.25.199 = private unnamed_addr constant [11 x i8] c" YYSTYPE;\0A\00", align 1
@expected_conflicts = internal unnamed_addr global i32 0, align 4
@.str.26.219 = private unnamed_addr constant [189 x i8] c"\0A#ifndef YYLTYPE\0Atypedef\0A  struct yyltype\0A    {\0A      int first_line;\0A      int first_column;\0A      int last_line;\0A      int last_column;\0A    }\0A  yyltype;\0A\0A#define YYLTYPE yyltype\0A#endif\0A\0A\00", align 1
@.str.27.220 = private unnamed_addr constant [32 x i8] c"#define\09YYACCEPT\09goto yyaccept\0A\00", align 1
@.str.28.221 = private unnamed_addr constant [30 x i8] c"#define\09YYABORT\09goto yyabort\0A\00", align 1
@.str.29.222 = private unnamed_addr constant [31 x i8] c"#define\09YYERROR\09goto yyerrlab\0A\00", align 1
@.str.30.223 = private unnamed_addr constant [50 x i8] c"#define\09yytext\09(*_yytext)\0Aextern char **_yytext;\0A\00", align 1
@.str.31.224 = private unnamed_addr constant [52 x i8] c"#define\09yylval\09(*_yylval)\0Aextern YYSTYPE *_yylval;\0A\00", align 1
@.str.32.225 = private unnamed_addr constant [52 x i8] c"#define\09yylloc\09(*_yylloc)\0Aextern YYLTYPE *_yylloc;\0A\00", align 1
@.str.33.226 = private unnamed_addr constant [51 x i8] c"#define\09yyppval\09(*_yyppval)\0Aextern int *_yyppval;\0A\00", align 1
@.str.34.217 = private unnamed_addr constant [16 x i8] c"invalid $ value\00", align 1
@fguard = internal unnamed_addr global ptr null, align 8
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
@faction = internal unnamed_addr global ptr null, align 8
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
@failure = internal unnamed_addr global i1 false, align 4
@ntokens = internal unnamed_addr global i32 0, align 4
@.str.60 = private unnamed_addr constant [25 x i8] c"bison: memory exhausted\0A\00", align 1
@tags = internal unnamed_addr global ptr null, align 8
@.str.61 = private unnamed_addr constant [2 x i8] c"$\00", align 1
@sprec = internal unnamed_addr global ptr null, align 8
@sassoc = internal unnamed_addr global ptr null, align 8
@max_user_token_number = internal unnamed_addr global i32 0, align 4
@token_translations = internal unnamed_addr global ptr null, align 8
@.str.62 = private unnamed_addr constant [41 x i8] c"tokens %s and %s both assigned number %d\00", align 1
@error_token_number = internal unnamed_addr global i32 0, align 4
@.str.63 = private unnamed_addr constant [33 x i8] c"the start symbol %s is undefined\00", align 1
@.str.64 = private unnamed_addr constant [31 x i8] c"the start symbol %s is a token\00", align 1
@start_symbol = internal unnamed_addr global i32 0, align 4
@definesflag = internal unnamed_addr global i1 false, align 4
@.str.65 = private unnamed_addr constant [17 x i8] c"#define\09NT%s\09%d\0A\00", align 1
@.str.66 = private unnamed_addr constant [15 x i8] c"#define\09%s\09%d\0A\00", align 1
@.str.67 = private unnamed_addr constant [16 x i8] c"#define\09T%s\09%d\0A\00", align 1
@ritem = internal unnamed_addr global ptr null, align 8
@rlhs = internal unnamed_addr global ptr null, align 8
@rrhs = internal unnamed_addr global ptr null, align 8
@rprec = internal unnamed_addr global ptr null, align 8
@rassoc = internal unnamed_addr global ptr null, align 8
@symtab = internal unnamed_addr global ptr null, align 8
@firstsymbol = internal unnamed_addr global ptr null, align 8
@lastsymbol = internal unnamed_addr global ptr null, align 8
@nsyms = internal unnamed_addr global i32 0, align 4

; Function Attrs: nofree nounwind optsize uwtable
define dso_local i32 @getopt(i32 noundef %0, ptr nocapture noundef %1, ptr noundef readonly %2) #0 {
  %4 = load i32, ptr @optind, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %15

6:                                                ; preds = %3
  store i32 1, ptr @optind, align 4, !tbaa !7
  store i32 1, ptr @last_nonopt, align 4, !tbaa !7
  store i32 1, ptr @first_nonopt, align 4, !tbaa !7
  store ptr null, ptr @nextchar, align 8, !tbaa !11
  %7 = load i8, ptr %2, align 1, !tbaa !13
  %8 = icmp eq i8 %7, 45
  br i1 %8, label %9, label %10

9:                                                ; preds = %6
  store i32 2, ptr @ordering, align 4, !tbaa !13
  br label %57

10:                                               ; preds = %6
  %11 = tail call ptr @getenv(ptr noundef nonnull @.str.53) #25
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %10
  store i32 0, ptr @ordering, align 4, !tbaa !13
  br label %57

14:                                               ; preds = %10
  store i32 1, ptr @ordering, align 4, !tbaa !13
  br label %34

15:                                               ; preds = %3
  %16 = load ptr, ptr @nextchar, align 8, !tbaa !11
  %17 = icmp eq ptr %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %15
  %19 = load i8, ptr %16, align 1, !tbaa !13
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %96

21:                                               ; preds = %18, %15
  %22 = load i32, ptr @ordering, align 4, !tbaa !13
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %24, label %57

24:                                               ; preds = %21
  %25 = load i32, ptr @first_nonopt, align 4, !tbaa !7
  %26 = load i32, ptr @last_nonopt, align 4, !tbaa !7
  %27 = icmp eq i32 %25, %26
  %28 = icmp eq i32 %26, %4
  %29 = or i1 %27, %28
  br i1 %29, label %32, label %30

30:                                               ; preds = %24
  tail call fastcc void @exchange(ptr noundef %1) #26
  %31 = load i32, ptr @optind, align 4, !tbaa !7
  br label %34

32:                                               ; preds = %24
  br i1 %28, label %34, label %33

33:                                               ; preds = %32
  store i32 %4, ptr @first_nonopt, align 4, !tbaa !7
  br label %34

34:                                               ; preds = %33, %32, %30, %14
  %35 = phi i32 [ %26, %32 ], [ %4, %33 ], [ %31, %30 ], [ 1, %14 ]
  %36 = icmp slt i32 %35, %0
  br i1 %36, label %37, label %55

37:                                               ; preds = %34
  %38 = sext i32 %35 to i64
  br label %39

39:                                               ; preds = %49, %37
  %40 = phi i64 [ %38, %37 ], [ %50, %49 ]
  %41 = getelementptr inbounds ptr, ptr %1, i64 %40
  %42 = load ptr, ptr %41, align 8, !tbaa !11
  %43 = load i8, ptr %42, align 1, !tbaa !13
  %44 = icmp eq i8 %43, 45
  br i1 %44, label %45, label %49

45:                                               ; preds = %39
  %46 = getelementptr inbounds i8, ptr %42, i64 1
  %47 = load i8, ptr %46, align 1, !tbaa !13
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %45, %39
  %50 = add nsw i64 %40, 1
  %51 = trunc i64 %50 to i32
  store i32 %51, ptr @optind, align 4, !tbaa !7
  %52 = icmp eq i32 %51, %0
  br i1 %52, label %55, label %39, !llvm.loop !14

53:                                               ; preds = %45
  %.lcssa = phi i64 [ %40, %45 ]
  %54 = trunc i64 %.lcssa to i32
  br label %55

55:                                               ; preds = %53, %49, %34
  %56 = phi i32 [ %35, %34 ], [ %54, %53 ], [ %0, %49 ]
  store i32 %56, ptr @last_nonopt, align 4, !tbaa !7
  br label %57

57:                                               ; preds = %55, %21, %13, %9
  %58 = phi i32 [ 1, %9 ], [ %56, %55 ], [ %4, %21 ], [ 1, %13 ]
  %59 = icmp eq i32 %58, %0
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  %61 = load i32, ptr @last_nonopt, align 4, !tbaa !7
  br label %79

62:                                               ; preds = %57
  %63 = sext i32 %58 to i64
  %64 = getelementptr inbounds ptr, ptr %1, i64 %63
  %65 = load ptr, ptr %64, align 8, !tbaa !11
  %66 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %65, ptr noundef nonnull dereferenceable(3) @.str.1.54) #27
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %84

68:                                               ; preds = %62
  %69 = add nsw i32 %58, 1
  store i32 %69, ptr @optind, align 4, !tbaa !7
  %70 = load i32, ptr @first_nonopt, align 4, !tbaa !7
  %71 = load i32, ptr @last_nonopt, align 4, !tbaa !7
  %72 = icmp eq i32 %70, %71
  %73 = icmp eq i32 %71, %69
  %74 = select i1 %72, i1 true, i1 %73
  br i1 %74, label %76, label %75

75:                                               ; preds = %68
  tail call fastcc void @exchange(ptr noundef nonnull %1) #26
  br label %78

76:                                               ; preds = %68
  br i1 %72, label %77, label %78

77:                                               ; preds = %76
  store i32 %69, ptr @first_nonopt, align 4, !tbaa !7
  br label %78

78:                                               ; preds = %77, %76, %75
  store i32 %0, ptr @last_nonopt, align 4, !tbaa !7
  store i32 %0, ptr @optind, align 4, !tbaa !7
  br label %79

79:                                               ; preds = %78, %60
  %80 = phi i32 [ %61, %60 ], [ %0, %78 ]
  %81 = load i32, ptr @first_nonopt, align 4, !tbaa !7
  %82 = icmp eq i32 %81, %80
  br i1 %82, label %158, label %83

83:                                               ; preds = %79
  store i32 %81, ptr @optind, align 4, !tbaa !7
  br label %158

84:                                               ; preds = %62
  %85 = load i8, ptr %65, align 1, !tbaa !13
  %86 = icmp eq i8 %85, 45
  br i1 %86, label %87, label %91

87:                                               ; preds = %84
  %88 = getelementptr inbounds i8, ptr %65, i64 1
  %89 = load i8, ptr %88, align 1, !tbaa !13
  %90 = icmp eq i8 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %87, %84
  %92 = load i32, ptr @ordering, align 4, !tbaa !13
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %158, label %94

94:                                               ; preds = %91
  %95 = add nsw i32 %58, 1
  store i32 %95, ptr @optind, align 4, !tbaa !7
  store ptr %65, ptr @optarg, align 8, !tbaa !11
  br label %158

96:                                               ; preds = %87, %18
  %97 = phi i8 [ %19, %18 ], [ %89, %87 ]
  %98 = phi i32 [ %4, %18 ], [ %58, %87 ]
  %99 = phi ptr [ %16, %18 ], [ %88, %87 ]
  %100 = getelementptr inbounds i8, ptr %99, i64 1
  store ptr %100, ptr @nextchar, align 8, !tbaa !11
  %101 = sext i8 %97 to i32
  %102 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %2, i32 noundef %101) #27
  %103 = load i8, ptr %100, align 1, !tbaa !13
  %104 = icmp eq i8 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %96
  %106 = add nsw i32 %98, 1
  store i32 %106, ptr @optind, align 4, !tbaa !7
  br label %107

107:                                              ; preds = %105, %96
  %108 = phi i32 [ %106, %105 ], [ %98, %96 ]
  %109 = icmp eq ptr %102, null
  %110 = icmp eq i8 %97, 58
  %111 = or i1 %110, %109
  br i1 %111, label %112, label %124

112:                                              ; preds = %107
  %113 = load i32, ptr @opterr, align 4, !tbaa !7
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %158, label %115

115:                                              ; preds = %112
  %116 = add i8 %97, -127
  %117 = icmp ult i8 %116, -95
  %118 = load ptr, ptr @stderr, align 8, !tbaa !11
  %119 = load ptr, ptr %1, align 8, !tbaa !11
  br i1 %117, label %120, label %122

120:                                              ; preds = %115
  %121 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %118, ptr noundef nonnull @.str.2.57, ptr noundef %119, i32 noundef %101) #28
  br label %158

122:                                              ; preds = %115
  %123 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %118, ptr noundef nonnull @.str.3.58, ptr noundef %119, i32 noundef %101) #28
  br label %158

124:                                              ; preds = %107
  %125 = getelementptr inbounds i8, ptr %102, i64 1
  %126 = load i8, ptr %125, align 1, !tbaa !13
  %127 = icmp eq i8 %126, 58
  br i1 %127, label %128, label %158

128:                                              ; preds = %124
  %129 = getelementptr inbounds i8, ptr %102, i64 2
  %130 = load i8, ptr %129, align 1, !tbaa !13
  %131 = icmp eq i8 %130, 58
  %132 = load i8, ptr %100, align 1, !tbaa !13
  %133 = icmp eq i8 %132, 0
  br i1 %131, label %134, label %139

134:                                              ; preds = %128
  br i1 %133, label %137, label %135

135:                                              ; preds = %134
  %136 = add nsw i32 %108, 1
  store i32 %136, ptr @optind, align 4, !tbaa !7
  br label %137

137:                                              ; preds = %135, %134
  %138 = phi ptr [ %100, %135 ], [ null, %134 ]
  store ptr %138, ptr @optarg, align 8
  store ptr null, ptr @nextchar, align 8, !tbaa !11
  br label %158

139:                                              ; preds = %128
  br i1 %133, label %142, label %140

140:                                              ; preds = %139
  store ptr %100, ptr @optarg, align 8, !tbaa !11
  %141 = add nsw i32 %108, 1
  store i32 %141, ptr @optind, align 4, !tbaa !7
  br label %157

142:                                              ; preds = %139
  %143 = icmp eq i32 %108, %0
  br i1 %143, label %144, label %152

144:                                              ; preds = %142
  %145 = load i32, ptr @opterr, align 4, !tbaa !7
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %151, label %147

147:                                              ; preds = %144
  %148 = load ptr, ptr @stderr, align 8, !tbaa !11
  %149 = load ptr, ptr %1, align 8, !tbaa !11
  %150 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %148, ptr noundef nonnull @.str.4.59, ptr noundef %149, i32 noundef %101) #28
  br label %151

151:                                              ; preds = %147, %144
  store ptr null, ptr @optarg, align 8, !tbaa !11
  br label %157

152:                                              ; preds = %142
  %153 = add nsw i32 %108, 1
  store i32 %153, ptr @optind, align 4, !tbaa !7
  %154 = sext i32 %108 to i64
  %155 = getelementptr inbounds ptr, ptr %1, i64 %154
  %156 = load ptr, ptr %155, align 8, !tbaa !11
  store ptr %156, ptr @optarg, align 8, !tbaa !11
  br label %157

157:                                              ; preds = %152, %151, %140
  store ptr null, ptr @nextchar, align 8, !tbaa !11
  br label %158

158:                                              ; preds = %157, %137, %124, %122, %120, %112, %94, %91, %83, %79
  %159 = phi i32 [ 0, %94 ], [ -1, %83 ], [ -1, %79 ], [ -1, %91 ], [ 63, %120 ], [ 63, %122 ], [ 63, %112 ], [ %101, %137 ], [ %101, %157 ], [ %101, %124 ]
  ret i32 %159
}

; Function Attrs: nofree nounwind optsize memory(read)
declare noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind optsize willreturn uwtable
define internal fastcc void @exchange(ptr nocapture noundef %0) unnamed_addr #2 {
  %2 = load i32, ptr @last_nonopt, align 4, !tbaa !7
  %3 = load i32, ptr @first_nonopt, align 4, !tbaa !7
  %4 = sub nsw i32 %2, %3
  %5 = shl i32 %4, 3
  %6 = sext i32 %5 to i64
  %7 = tail call noalias ptr @malloc(i64 noundef %6) #29
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
  %18 = add i32 %16, %17
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds ptr, ptr %0, i64 %19
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %20, ptr align 8 %7, i64 %6, i1 false)
  %21 = load i32, ptr @optind, align 4, !tbaa !7
  %22 = add i32 %21, %17
  store i32 %22, ptr @first_nonopt, align 4, !tbaa !7
  store i32 %21, ptr @last_nonopt, align 4, !tbaa !7
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: noreturn nounwind optsize uwtable
define dso_local i32 @main(i32 noundef %0, ptr nocapture noundef %1) #7 {
  %3 = alloca [200 x i8], align 16
  %4 = alloca [200 x i8], align 16
  %5 = alloca [200 x i8], align 16
  %6 = alloca [200 x i8], align 16
  %7 = alloca [200 x i8], align 16
  %8 = alloca [200 x i8], align 16
  %9 = alloca [200 x i8], align 16
  %10 = alloca [200 x i8], align 16
  %11 = alloca [200 x i8], align 16
  store i1 false, ptr @failure, align 4
  store i32 0, ptr @lineno, align 4, !tbaa !7
  %12 = load ptr, ptr %1, align 8, !tbaa !11
  store i1 false, ptr @verboseflag, align 4
  store i1 false, ptr @definesflag, align 4
  store i1 false, ptr @debugflag, align 4
  store i1 false, ptr @fixed_outfiles, align 4
  br label %13

13:                                               ; preds = %19, %2
  %14 = phi ptr [ %12, %2 ], [ %21, %19 ]
  %15 = phi ptr [ %12, %2 ], [ %20, %19 ]
  %16 = load i8, ptr %14, align 1, !tbaa !13
  switch i8 %16, label %19 [
    i8 0, label %22
    i8 47, label %17
  ]

17:                                               ; preds = %13
  %18 = getelementptr inbounds i8, ptr %14, i64 1
  br label %19

19:                                               ; preds = %17, %13
  %20 = phi ptr [ %18, %17 ], [ %15, %13 ]
  %21 = getelementptr inbounds i8, ptr %14, i64 1
  br label %13, !llvm.loop !16

22:                                               ; preds = %13
  %.lcssa130 = phi ptr [ %15, %13 ]
  %23 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.lcssa130, ptr noundef nonnull dereferenceable(5) @.str.45) #27
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  store i1 true, ptr @fixed_outfiles, align 4
  br label %26

26:                                               ; preds = %25, %22
  br label %27

27:                                               ; preds = %36, %26
  %28 = tail call i32 @getopt(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.1.46) #25, !range !17
  switch i32 %28, label %36 [
    i32 -1, label %37
    i32 121, label %29
    i32 118, label %30
    i32 100, label %31
    i32 108, label %32
    i32 116, label %33
    i32 111, label %34
  ]

29:                                               ; preds = %27
  store i1 true, ptr @fixed_outfiles, align 4
  br label %36

30:                                               ; preds = %27
  store i1 true, ptr @verboseflag, align 4
  br label %36

31:                                               ; preds = %27
  store i1 true, ptr @definesflag, align 4
  br label %36

32:                                               ; preds = %27
  store i1 true, ptr @nolinesflag, align 4
  br label %36

33:                                               ; preds = %27
  store i1 true, ptr @debugflag, align 4
  br label %36

34:                                               ; preds = %27
  %35 = load ptr, ptr @optarg, align 8, !tbaa !11
  store ptr %35, ptr @spec_outfile, align 8, !tbaa !11
  br label %36

36:                                               ; preds = %34, %33, %32, %31, %30, %29, %27
  br label %27, !llvm.loop !18

37:                                               ; preds = %27
  %38 = load i32, ptr @optind, align 4, !tbaa !7
  %39 = icmp eq i32 %38, %0
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  tail call fastcc void @fatal(ptr noundef nonnull @.str.2.47) #25
  unreachable

41:                                               ; preds = %37
  %42 = sext i32 %38 to i64
  %43 = getelementptr inbounds ptr, ptr %1, i64 %42
  %44 = load ptr, ptr %43, align 8, !tbaa !11
  store ptr %44, ptr @infile, align 8, !tbaa !11
  %45 = add nsw i32 %0, -1
  %46 = icmp slt i32 %38, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %41
  %48 = load ptr, ptr @stderr, align 8, !tbaa !11
  %49 = tail call i64 @fwrite(ptr nonnull @.str.3.48, i64 40, i64 1, ptr %48) #30
  br label %50

50:                                               ; preds = %47, %41
  %51 = load ptr, ptr @spec_outfile, align 8, !tbaa !11
  %52 = icmp eq ptr %51, null
  br i1 %52, label %76, label %53

53:                                               ; preds = %50
  %54 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %51) #27
  %55 = trunc i64 %54 to i32
  %56 = shl i64 %54, 32
  %57 = ashr exact i64 %56, 32
  %58 = getelementptr inbounds i8, ptr %51, i64 %57
  %59 = getelementptr inbounds i8, ptr %58, i64 -2
  %60 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %59, ptr noundef nonnull dereferenceable(3) @.str.1.19) #27
  %61 = icmp eq i32 %60, 0
  %62 = add nsw i32 %55, -2
  %63 = select i1 %61, i32 %62, i32 %55
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8, ptr %51, i64 %64
  %66 = getelementptr inbounds i8, ptr %65, i64 -4
  %67 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %66, ptr noundef nonnull dereferenceable(5) @.str.2.20) #27
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %53
  %70 = add nsw i32 %63, -4
  br label %104

71:                                               ; preds = %53
  %72 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %66, ptr noundef nonnull dereferenceable(5) @.str.3.21) #27
  %73 = icmp eq i32 %72, 0
  %74 = add nsw i32 %63, -4
  %75 = select i1 %73, i32 %74, i32 %63
  br label %104

76:                                               ; preds = %50
  %77 = load i1, ptr @fixed_outfiles, align 4
  %78 = load ptr, ptr @infile, align 8
  %79 = select i1 %77, ptr @.str.4.24, ptr %78
  %80 = icmp eq ptr %79, null
  br i1 %80, label %81, label %82

81:                                               ; preds = %76
  tail call void @exit(i32 noundef 1) #31
  unreachable

82:                                               ; preds = %88, %76
  %83 = phi ptr [ %90, %88 ], [ %79, %76 ]
  %84 = phi ptr [ %89, %88 ], [ %79, %76 ]
  %85 = load i8, ptr %83, align 1, !tbaa !13
  switch i8 %85, label %88 [
    i8 0, label %91
    i8 47, label %86
  ]

86:                                               ; preds = %82
  %87 = getelementptr inbounds i8, ptr %83, i64 1
  br label %88

88:                                               ; preds = %86, %82
  %89 = phi ptr [ %87, %86 ], [ %84, %82 ]
  %90 = getelementptr inbounds i8, ptr %83, i64 1
  br label %82, !llvm.loop !19

91:                                               ; preds = %82
  %.lcssa129 = phi ptr [ %84, %82 ]
  %92 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.lcssa129) #27
  %93 = trunc i64 %92 to i32
  %94 = shl i64 %92, 32
  %95 = ashr exact i64 %94, 32
  %96 = getelementptr inbounds i8, ptr %.lcssa129, i64 %95
  %97 = getelementptr inbounds i8, ptr %96, i64 -2
  %98 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %97, ptr noundef nonnull dereferenceable(3) @.str.5.25) #27
  %99 = icmp eq i32 %98, 0
  %100 = add nsw i32 %93, -2
  %101 = select i1 %99, i32 %100, i32 %93
  %102 = tail call fastcc ptr @stringappend(ptr noundef %.lcssa129, i32 noundef %101, ptr noundef nonnull @.str.2.20) #26
  %103 = add nsw i32 %101, 4
  br label %104

104:                                              ; preds = %91, %71, %69
  %105 = phi i32 [ %63, %69 ], [ %103, %91 ], [ %63, %71 ]
  %106 = phi i32 [ %70, %69 ], [ %101, %91 ], [ %75, %71 ]
  %107 = phi ptr [ %51, %69 ], [ %102, %91 ], [ %51, %71 ]
  %108 = load ptr, ptr @infile, align 8, !tbaa !11
  %109 = tail call fastcc ptr @tryopen(ptr noundef %108, ptr noundef nonnull @.str.6.26) #26
  store ptr %109, ptr @finput, align 8, !tbaa !11
  %110 = load i1, ptr @verboseflag, align 4
  br i1 %110, label %111, label %114

111:                                              ; preds = %104
  %112 = tail call fastcc ptr @stringappend(ptr noundef %107, i32 noundef %106, ptr noundef nonnull @.str.7.27) #26
  store ptr %112, ptr @outfile, align 8, !tbaa !11
  %113 = load ptr, ptr @stdout, align 8, !tbaa !11
  store ptr %113, ptr @foutput, align 8, !tbaa !11
  br label %114

114:                                              ; preds = %111, %104
  %115 = load i1, ptr @definesflag, align 4
  br i1 %115, label %116, label %119

116:                                              ; preds = %114
  %117 = tail call fastcc ptr @stringappend(ptr noundef %107, i32 noundef %105, ptr noundef nonnull @.str.8.30) #26
  store ptr %117, ptr @defsfile, align 8, !tbaa !11
  %118 = load ptr, ptr @stdout, align 8, !tbaa !11
  store ptr %118, ptr @fdefines, align 8, !tbaa !11
  br label %119

119:                                              ; preds = %116, %114
  %120 = tail call fastcc ptr @stringappend(ptr noundef nonnull @.str.31, i32 noundef 7, ptr noundef nonnull @.str.9.32) #26
  %121 = tail call ptr @mktemp(ptr noundef %120) #25
  store ptr %121, ptr @actfile, align 8, !tbaa !11
  %122 = load ptr, ptr @stdout, align 8, !tbaa !11
  store ptr %122, ptr @faction, align 8, !tbaa !11
  %123 = tail call fastcc ptr @stringappend(ptr noundef nonnull @.str.31, i32 noundef 7, ptr noundef nonnull @.str.10.33) #26
  %124 = tail call ptr @mktemp(ptr noundef %123) #25
  store ptr %124, ptr @tmpattrsfile, align 8, !tbaa !11
  %125 = load ptr, ptr @stdout, align 8, !tbaa !11
  store ptr %125, ptr @fattrs, align 8, !tbaa !11
  %126 = tail call fastcc ptr @stringappend(ptr noundef nonnull @.str.31, i32 noundef 7, ptr noundef nonnull @.str.11.34) #26
  %127 = tail call ptr @mktemp(ptr noundef %126) #25
  store ptr %127, ptr @tmptabfile, align 8, !tbaa !11
  %128 = load ptr, ptr @stdout, align 8, !tbaa !11
  store ptr %128, ptr @ftable, align 8, !tbaa !11
  %129 = load ptr, ptr @spec_outfile, align 8, !tbaa !11
  %130 = icmp eq ptr %129, null
  br i1 %130, label %131, label %133

131:                                              ; preds = %119
  %132 = tail call fastcc ptr @stringappend(ptr noundef %107, i32 noundef %105, ptr noundef nonnull @.str.1.19) #26
  br label %133

133:                                              ; preds = %131, %119
  %134 = phi ptr [ %132, %131 ], [ %129, %119 ]
  store ptr %134, ptr @tabfile, align 8, !tbaa !11
  %135 = tail call fastcc ptr @stringappend(ptr noundef %107, i32 noundef %106, ptr noundef nonnull @.str.12.35) #26
  store ptr %135, ptr @attrsfile, align 8, !tbaa !11
  %136 = tail call fastcc ptr @stringappend(ptr noundef %107, i32 noundef %106, ptr noundef nonnull @.str.13.36) #26
  store ptr %136, ptr @guardfile, align 8, !tbaa !11
  store i1 false, ptr @start_flag, align 4
  store ptr null, ptr @startval, align 8, !tbaa !11
  store i32 0, ptr @translations, align 4, !tbaa !7
  store i32 1, ptr @nsyms, align 4, !tbaa !7
  store i32 0, ptr @nvars, align 4, !tbaa !7
  store i32 0, ptr @nrules, align 4, !tbaa !7
  store i32 0, ptr @nitems, align 4, !tbaa !7
  store i32 10, ptr @rline_allocated, align 4, !tbaa !7
  %137 = tail call fastcc ptr @mallocate(i32 noundef 20) #25
  store ptr %137, ptr @rline, align 8, !tbaa !11
  store i1 false, ptr @typed, align 4
  store i32 0, ptr @lastprec, align 4, !tbaa !7
  store i32 0, ptr @gensym_count, align 4, !tbaa !7
  store i1 false, ptr @semantic_parser, align 4
  store i1 false, ptr @pure_parser, align 4
  store i1 false, ptr @yylsp_needed, align 4
  store ptr null, ptr @grammar, align 8, !tbaa !11
  store i32 -1, ptr @unlexed, align 4, !tbaa !7
  store i32 1, ptr @lineno, align 4, !tbaa !7
  %138 = tail call fastcc ptr @mallocate(i32 noundef 8072) #25
  store ptr %138, ptr @symtab, align 8, !tbaa !11
  store ptr null, ptr @firstsymbol, align 8, !tbaa !11
  store ptr null, ptr @lastsymbol, align 8, !tbaa !11
  %139 = tail call fastcc ptr @getsym(ptr noundef nonnull @.str.185) #25
  store ptr %139, ptr @errtoken, align 8, !tbaa !11
  %140 = getelementptr inbounds %struct.bucket, ptr %139, i64 0, i32 8
  store i8 1, ptr %140, align 8, !tbaa !20
  %141 = tail call fastcc ptr @getsym(ptr noundef nonnull @.str.1.186) #25
  %142 = getelementptr inbounds %struct.bucket, ptr %141, i64 0, i32 8
  store i8 1, ptr %142, align 8, !tbaa !20
  %143 = load ptr, ptr @ftable, align 8, !tbaa !11
  %144 = load ptr, ptr @infile, align 8, !tbaa !11
  %145 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %144, i32 noundef 47) #27
  %146 = icmp eq ptr %145, null
  %147 = getelementptr inbounds i8, ptr %145, i64 1
  %148 = select i1 %146, ptr %144, ptr %147
  %149 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %143, ptr noundef nonnull @.str.2.187, ptr noundef %148) #26
  br label %150

150:                                              ; preds = %311, %133
  %151 = tail call fastcc i32 @skip_white_space() #25
  switch i32 %151, label %314 [
    i32 37, label %152
    i32 -1, label %313
  ]

152:                                              ; preds = %150
  %153 = tail call fastcc i32 @parse_percent_token() #25, !range !23
  switch i32 %153, label %312 [
    i32 7, label %316
    i32 8, label %154
    i32 9, label %252
    i32 10, label %253
    i32 12, label %254
    i32 14, label %285
    i32 13, label %286
    i32 23, label %287
    i32 15, label %288
    i32 16, label %289
    i32 17, label %290
    i32 19, label %291
    i32 20, label %310
  ]

154:                                              ; preds = %152
  %155 = load i1, ptr @nolinesflag, align 4
  br i1 %155, label %165, label %156

156:                                              ; preds = %154
  %157 = load ptr, ptr @fattrs, align 8, !tbaa !11
  %158 = load i32, ptr @lineno, align 4, !tbaa !7
  %159 = load ptr, ptr @infile, align 8, !tbaa !11
  %160 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %159, i32 noundef 47) #27
  %161 = icmp eq ptr %160, null
  %162 = getelementptr inbounds i8, ptr %160, i64 1
  %163 = select i1 %161, ptr %159, ptr %162
  %164 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %157, ptr noundef nonnull @.str.7.205, i32 noundef %158, ptr noundef %163) #26
  br label %165

165:                                              ; preds = %156, %154
  %166 = load ptr, ptr @finput, align 8, !tbaa !11
  %167 = tail call i32 @getc(ptr noundef %166) #26
  br label %168

168:                                              ; preds = %250, %165
  %169 = phi i32 [ %167, %165 ], [ %251, %250 ]
  switch i32 %169, label %234 [
    i32 10, label %170
    i32 37, label %243
    i32 39, label %175
    i32 34, label %175
    i32 47, label %202
    i32 -1, label %233
  ]

170:                                              ; preds = %168
  %171 = load ptr, ptr @fattrs, align 8, !tbaa !11
  %172 = tail call i32 @putc(i32 noundef 10, ptr noundef %171) #26
  %173 = load i32, ptr @lineno, align 4, !tbaa !7
  %174 = add nsw i32 %173, 1
  store i32 %174, ptr @lineno, align 4, !tbaa !7
  br label %240

175:                                              ; preds = %168, %168
  %176 = load ptr, ptr @fattrs, align 8, !tbaa !11
  %177 = tail call i32 @putc(i32 noundef %169, ptr noundef %176) #26
  %178 = load ptr, ptr @finput, align 8, !tbaa !11
  %179 = tail call i32 @getc(ptr noundef %178) #26
  %180 = icmp eq i32 %179, %169
  br i1 %180, label %199, label %181

181:                                              ; preds = %195, %175
  %182 = phi i32 [ %197, %195 ], [ %179, %175 ]
  switch i32 %182, label %184 [
    i32 -1, label %183
    i32 10, label %183
  ]

183:                                              ; preds = %181, %181
  tail call fastcc void @fatal(ptr noundef nonnull @.str.8.207) #25
  unreachable

184:                                              ; preds = %181
  %185 = load ptr, ptr @fattrs, align 8, !tbaa !11
  %186 = tail call i32 @putc(i32 noundef %182, ptr noundef %185) #26
  %187 = icmp eq i32 %182, 92
  br i1 %187, label %188, label %195

188:                                              ; preds = %184
  %189 = load ptr, ptr @finput, align 8, !tbaa !11
  %190 = tail call i32 @getc(ptr noundef %189) #26
  switch i32 %190, label %192 [
    i32 -1, label %191
    i32 10, label %191
  ]

191:                                              ; preds = %188, %188
  tail call fastcc void @fatal(ptr noundef nonnull @.str.8.207) #25
  unreachable

192:                                              ; preds = %188
  %193 = load ptr, ptr @fattrs, align 8, !tbaa !11
  %194 = tail call i32 @putc(i32 noundef %190, ptr noundef %193) #26
  br label %195

195:                                              ; preds = %192, %184
  %196 = load ptr, ptr @finput, align 8, !tbaa !11
  %197 = tail call i32 @getc(ptr noundef %196) #26
  %198 = icmp eq i32 %197, %169
  br i1 %198, label %199, label %181, !llvm.loop !24

199:                                              ; preds = %195, %175
  %200 = load ptr, ptr @fattrs, align 8, !tbaa !11
  %201 = tail call i32 @putc(i32 noundef %169, ptr noundef %200) #26
  br label %240

202:                                              ; preds = %168
  %203 = load ptr, ptr @fattrs, align 8, !tbaa !11
  %204 = tail call i32 @putc(i32 noundef 47, ptr noundef %203) #26
  %205 = load ptr, ptr @finput, align 8, !tbaa !11
  %206 = tail call i32 @getc(ptr noundef %205) #26
  %207 = icmp eq i32 %206, 42
  br i1 %207, label %208, label %250

208:                                              ; preds = %202
  %209 = load ptr, ptr @fattrs, align 8, !tbaa !11
  %210 = tail call i32 @putc(i32 noundef 42, ptr noundef %209) #26
  %211 = load ptr, ptr @finput, align 8, !tbaa !11
  %212 = tail call i32 @getc(ptr noundef %211) #26
  br label %213

213:                                              ; preds = %230, %208
  %214 = phi i32 [ %212, %208 ], [ %231, %230 ]
  switch i32 %214, label %225 [
    i32 42, label %215
    i32 10, label %222
    i32 -1, label %232
  ]

215:                                              ; preds = %217, %213
  %216 = phi i32 [ %221, %217 ], [ %214, %213 ]
  switch i32 %216, label %230 [
    i32 42, label %217
    i32 47, label %237
  ], !llvm.loop !25

217:                                              ; preds = %215
  %218 = load ptr, ptr @fattrs, align 8, !tbaa !11
  %219 = tail call i32 @putc(i32 noundef 42, ptr noundef %218) #26
  %220 = load ptr, ptr @finput, align 8, !tbaa !11
  %221 = tail call i32 @getc(ptr noundef %220) #26
  br label %215, !llvm.loop !26

222:                                              ; preds = %213
  %223 = load i32, ptr @lineno, align 4, !tbaa !7
  %224 = add nsw i32 %223, 1
  store i32 %224, ptr @lineno, align 4, !tbaa !7
  br label %225

225:                                              ; preds = %222, %213
  %226 = load ptr, ptr @fattrs, align 8, !tbaa !11
  %227 = tail call i32 @putc(i32 noundef %214, ptr noundef %226) #26
  %228 = load ptr, ptr @finput, align 8, !tbaa !11
  %229 = tail call i32 @getc(ptr noundef %228) #26
  br label %230

230:                                              ; preds = %225, %215
  %231 = phi i32 [ %229, %225 ], [ %216, %215 ]
  br label %213, !llvm.loop !25

232:                                              ; preds = %213
  tail call fastcc void @fatal(ptr noundef nonnull @.str.9.232) #25
  unreachable

233:                                              ; preds = %168
  tail call fastcc void @fatal(ptr noundef nonnull @.str.10.233) #25
  unreachable

234:                                              ; preds = %168
  %235 = load ptr, ptr @fattrs, align 8, !tbaa !11
  %236 = tail call i32 @putc(i32 noundef %169, ptr noundef %235) #26
  br label %240

237:                                              ; preds = %215
  %238 = load ptr, ptr @fattrs, align 8, !tbaa !11
  %239 = tail call i32 @putc(i32 noundef 47, ptr noundef %238) #26
  br label %240

240:                                              ; preds = %237, %234, %199, %170
  %241 = load ptr, ptr @finput, align 8, !tbaa !11
  %242 = tail call i32 @getc(ptr noundef %241) #26
  br label %250

243:                                              ; preds = %168
  %244 = load ptr, ptr @finput, align 8, !tbaa !11
  %245 = tail call i32 @getc(ptr noundef %244) #26
  %246 = icmp eq i32 %245, 125
  br i1 %246, label %311, label %247

247:                                              ; preds = %243
  %248 = load ptr, ptr @fattrs, align 8, !tbaa !11
  %249 = tail call i32 @putc(i32 noundef 37, ptr noundef %248) #26
  br label %250

250:                                              ; preds = %247, %240, %202
  %251 = phi i32 [ %206, %202 ], [ %242, %240 ], [ %245, %247 ]
  br label %168

252:                                              ; preds = %152
  tail call fastcc void @parse_token_decl(i32 noundef 1, i32 noundef 2) #26
  br label %311

253:                                              ; preds = %152
  tail call fastcc void @parse_token_decl(i32 noundef 2, i32 noundef 1) #26
  br label %311

254:                                              ; preds = %152
  %255 = tail call fastcc i32 @lex() #25, !range !27
  %256 = icmp eq i32 %255, 21
  br i1 %256, label %258, label %257

257:                                              ; preds = %254
  tail call fastcc void @fatal(ptr noundef nonnull @.str.16.200) #25
  unreachable

258:                                              ; preds = %254
  %259 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) @token_buffer) #27
  %260 = trunc i64 %259 to i32
  %261 = add nsw i32 %260, 1
  %262 = tail call fastcc ptr @mallocate(i32 noundef %261) #25
  %263 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %262, ptr noundef nonnull dereferenceable(1) @token_buffer) #25
  br label %264

264:                                              ; preds = %277, %258
  %265 = tail call fastcc i32 @skip_white_space() #25
  %266 = load ptr, ptr @finput, align 8, !tbaa !11
  %267 = tail call i32 @ungetc(i32 noundef %265, ptr noundef %266) #26
  %268 = icmp eq i32 %267, 37
  br i1 %268, label %311, label %269

269:                                              ; preds = %264
  %270 = tail call fastcc i32 @lex() #25, !range !27
  switch i32 %270, label %284 [
    i32 2, label %277
    i32 1, label %271
  ]

271:                                              ; preds = %269
  %272 = load ptr, ptr @symval, align 8, !tbaa !11
  %273 = getelementptr inbounds %struct.bucket, ptr %272, i64 0, i32 3
  %274 = load ptr, ptr %273, align 8, !tbaa !28
  %275 = icmp eq ptr %274, null
  br i1 %275, label %276, label %278

276:                                              ; preds = %271
  store ptr %262, ptr %273, align 8, !tbaa !28
  br label %277

277:                                              ; preds = %276, %269
  br label %264

278:                                              ; preds = %271
  %.lcssa117 = phi ptr [ %272, %271 ]
  %279 = getelementptr inbounds %struct.bucket, ptr %.lcssa117, i64 0, i32 2
  %280 = load ptr, ptr %279, align 8, !tbaa !29
  %281 = ptrtoint ptr %280 to i64
  %282 = trunc i64 %281 to i32
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %11) #32
  %283 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %11, ptr noundef nonnull dereferenceable(1) @.str.12.201, i32 noundef %282, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #25
  call fastcc void @fatal(ptr noundef nonnull %11) #26
  unreachable

284:                                              ; preds = %269
  tail call fastcc void @fatal(ptr noundef nonnull @.str.17.231) #25
  unreachable

285:                                              ; preds = %152
  tail call fastcc void @parse_start_decl() #26
  br label %311

286:                                              ; preds = %152
  tail call fastcc void @parse_union_decl() #26
  br label %311

287:                                              ; preds = %152
  tail call fastcc void @parse_expect_decl() #26
  br label %311

288:                                              ; preds = %152
  tail call fastcc void @parse_assoc_decl(i32 noundef 2) #26
  br label %311

289:                                              ; preds = %152
  tail call fastcc void @parse_assoc_decl(i32 noundef 1) #26
  br label %311

290:                                              ; preds = %152
  tail call fastcc void @parse_assoc_decl(i32 noundef 3) #26
  br label %311

291:                                              ; preds = %152
  store i1 true, ptr @semantic_parser, align 4
  %292 = load ptr, ptr @fparser, align 8, !tbaa !11
  %293 = tail call i32 @fclose(ptr noundef %292) #26
  %294 = tail call ptr @getenv(ptr noundef nonnull @.str.14.37) #25
  %295 = icmp eq ptr %294, null
  %296 = select i1 %295, ptr @.str.15, ptr %294
  %297 = tail call fastcc ptr @tryopen(ptr noundef nonnull %296, ptr noundef nonnull @.str.6.26) #26
  store ptr %297, ptr @fparser, align 8, !tbaa !11
  %298 = load ptr, ptr @attrsfile, align 8, !tbaa !11
  %299 = tail call fastcc ptr @tryopen(ptr noundef %298, ptr noundef nonnull @.str.16.38) #26
  %300 = load ptr, ptr @fattrs, align 8, !tbaa !11
  tail call void @rewind(ptr noundef %300) #26
  br label %301

301:                                              ; preds = %305, %291
  %302 = load ptr, ptr @fattrs, align 8, !tbaa !11
  %303 = tail call i32 @getc(ptr noundef %302) #26
  %304 = icmp eq i32 %303, -1
  br i1 %304, label %307, label %305

305:                                              ; preds = %301
  %306 = tail call i32 @putc(i32 noundef %303, ptr noundef %299) #26
  br label %301, !llvm.loop !30

307:                                              ; preds = %301
  store ptr %299, ptr @fattrs, align 8, !tbaa !11
  %308 = load ptr, ptr @guardfile, align 8, !tbaa !11
  %309 = tail call fastcc ptr @tryopen(ptr noundef %308, ptr noundef nonnull @.str.16.38) #26
  store ptr %309, ptr @fguard, align 8, !tbaa !11
  br label %311

310:                                              ; preds = %152
  store i1 true, ptr @pure_parser, align 4
  br label %311

311:                                              ; preds = %310, %307, %290, %289, %288, %287, %286, %285, %264, %253, %252, %243
  br label %150

312:                                              ; preds = %152
  tail call fastcc void @fatal(ptr noundef nonnull @.str.4.227) #25
  unreachable

313:                                              ; preds = %150
  tail call fastcc void @fatal(ptr noundef nonnull @.str.5.192) #25
  unreachable

314:                                              ; preds = %150
  %.lcssa118 = phi i32 [ %151, %150 ]
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %10) #32
  %315 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %10, ptr noundef nonnull dereferenceable(1) @.str.6.228, i32 noundef %.lcssa118, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #25
  call fastcc void @fatal(ptr noundef nonnull %10) #26
  unreachable

316:                                              ; preds = %152
  %317 = load ptr, ptr @fattrs, align 8, !tbaa !11
  %318 = tail call i64 @fwrite(ptr nonnull @.str.26.219, i64 188, i64 1, ptr %317)
  %319 = load ptr, ptr @fdefines, align 8, !tbaa !11
  %320 = icmp eq ptr %319, null
  br i1 %320, label %323, label %321

321:                                              ; preds = %316
  %322 = tail call i64 @fwrite(ptr nonnull @.str.26.219, i64 188, i64 1, ptr nonnull %319)
  br label %323

323:                                              ; preds = %321, %316
  %324 = load ptr, ptr @fattrs, align 8, !tbaa !11
  %325 = tail call i64 @fwrite(ptr nonnull @.str.27.220, i64 31, i64 1, ptr %324)
  %326 = load ptr, ptr @fattrs, align 8, !tbaa !11
  %327 = tail call i64 @fwrite(ptr nonnull @.str.28.221, i64 29, i64 1, ptr %326)
  %328 = load ptr, ptr @fattrs, align 8, !tbaa !11
  %329 = tail call i64 @fwrite(ptr nonnull @.str.29.222, i64 30, i64 1, ptr %328)
  %330 = load ptr, ptr @fattrs, align 8, !tbaa !11
  %331 = tail call i64 @fwrite(ptr nonnull @.str.30.223, i64 49, i64 1, ptr %330)
  %332 = load ptr, ptr @fattrs, align 8, !tbaa !11
  %333 = tail call i64 @fwrite(ptr nonnull @.str.31.224, i64 51, i64 1, ptr %332)
  %334 = load ptr, ptr @fattrs, align 8, !tbaa !11
  %335 = tail call i64 @fwrite(ptr nonnull @.str.32.225, i64 51, i64 1, ptr %334)
  %336 = load ptr, ptr @fattrs, align 8, !tbaa !11
  %337 = tail call i64 @fwrite(ptr nonnull @.str.33.226, i64 50, i64 1, ptr %336)
  %338 = load ptr, ptr @fdefines, align 8, !tbaa !11
  %339 = icmp eq ptr %338, null
  br i1 %339, label %354, label %340

340:                                              ; preds = %323
  %341 = tail call i64 @fwrite(ptr nonnull @.str.27.220, i64 31, i64 1, ptr nonnull %338)
  %342 = load ptr, ptr @fdefines, align 8, !tbaa !11
  %343 = tail call i64 @fwrite(ptr nonnull @.str.28.221, i64 29, i64 1, ptr %342)
  %344 = load ptr, ptr @fdefines, align 8, !tbaa !11
  %345 = tail call i64 @fwrite(ptr nonnull @.str.29.222, i64 30, i64 1, ptr %344)
  %346 = load ptr, ptr @fdefines, align 8, !tbaa !11
  %347 = tail call i64 @fwrite(ptr nonnull @.str.30.223, i64 49, i64 1, ptr %346)
  %348 = load ptr, ptr @fdefines, align 8, !tbaa !11
  %349 = tail call i64 @fwrite(ptr nonnull @.str.31.224, i64 51, i64 1, ptr %348)
  %350 = load ptr, ptr @fdefines, align 8, !tbaa !11
  %351 = tail call i64 @fwrite(ptr nonnull @.str.32.225, i64 51, i64 1, ptr %350)
  %352 = load ptr, ptr @fdefines, align 8, !tbaa !11
  %353 = tail call i64 @fwrite(ptr nonnull @.str.33.226, i64 50, i64 1, ptr %352)
  br label %354

354:                                              ; preds = %340, %323
  %355 = load i1, ptr @semantic_parser, align 4
  br i1 %355, label %356, label %362

356:                                              ; preds = %354
  %357 = load ptr, ptr @fguard, align 8, !tbaa !11
  %358 = load ptr, ptr @attrsfile, align 8, !tbaa !11
  %359 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %357, ptr noundef nonnull @.str.139, ptr noundef %358) #26
  %360 = load i1, ptr @semantic_parser, align 4
  %361 = select i1 %360, ptr @.str.1.141, ptr @.str.2.140
  br label %362

362:                                              ; preds = %356, %354
  %363 = phi ptr [ %361, %356 ], [ @.str.2.140, %354 ]
  %364 = load ptr, ptr @faction, align 8, !tbaa !11
  %365 = load ptr, ptr @attrsfile, align 8, !tbaa !11
  %366 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %364, ptr noundef nonnull %363, ptr noundef %365) #26
  br label %367

367:                                              ; preds = %793, %362
  %368 = phi ptr [ %794, %793 ], [ null, %362 ]
  %369 = phi ptr [ %795, %793 ], [ undef, %362 ]
  %370 = tail call fastcc i32 @lex() #25, !range !27
  br label %371

371:                                              ; preds = %789, %367
  %372 = phi ptr [ %368, %367 ], [ %790, %789 ]
  %373 = phi ptr [ %369, %367 ], [ %394, %789 ]
  %374 = phi i32 [ %370, %367 ], [ %791, %789 ]
  br label %375

375:                                              ; preds = %808, %371
  %376 = phi i32 [ %374, %371 ], [ %809, %808 ]
  switch i32 %376, label %826 [
    i32 7, label %827
    i32 0, label %827
    i32 1, label %377
    i32 5, label %382
    i32 9, label %796
    i32 10, label %797
    i32 12, label %798
    i32 13, label %823
    i32 23, label %824
    i32 14, label %825
  ]

377:                                              ; preds = %375
  %378 = load ptr, ptr @symval, align 8, !tbaa !11
  %379 = tail call fastcc i32 @lex() #25, !range !27
  %380 = icmp eq i32 %379, 3
  br i1 %380, label %385, label %381

381:                                              ; preds = %377
  tail call fastcc void @fatal(ptr noundef nonnull @.str.50) #25
  unreachable

382:                                              ; preds = %375
  %383 = load i32, ptr @nrules, align 4, !tbaa !7
  %384 = icmp eq i32 %383, 0
  br i1 %384, label %388, label %392

385:                                              ; preds = %377
  %386 = load i32, ptr @nrules, align 4, !tbaa !7
  %387 = icmp eq i32 %386, 0
  br i1 %387, label %389, label %392

388:                                              ; preds = %382
  tail call fastcc void @fatal(ptr noundef nonnull @.str.51) #25
  unreachable

389:                                              ; preds = %385
  %390 = load i1, ptr @start_flag, align 4
  br i1 %390, label %392, label %391

391:                                              ; preds = %389
  store ptr %378, ptr @startval, align 8, !tbaa !11
  br label %392

392:                                              ; preds = %391, %389, %385, %382
  %393 = phi i32 [ %386, %385 ], [ 0, %389 ], [ 0, %391 ], [ %383, %382 ]
  %394 = phi ptr [ %378, %385 ], [ %378, %389 ], [ %378, %391 ], [ %373, %382 ]
  %395 = add nsw i32 %393, 1
  store i32 %395, ptr @nrules, align 4, !tbaa !7
  %396 = load i32, ptr @nitems, align 4, !tbaa !7
  %397 = add nsw i32 %396, 1
  store i32 %397, ptr @nitems, align 4, !tbaa !7
  tail call fastcc void @record_rule_line() #26
  %398 = tail call fastcc ptr @mallocate(i32 noundef 24) #25
  %399 = getelementptr inbounds %struct.symbol_list, ptr %398, i64 0, i32 1
  store ptr %394, ptr %399, align 8, !tbaa !31
  %400 = icmp eq ptr %372, null
  %401 = select i1 %400, ptr @grammar, ptr %372
  store ptr %398, ptr %401, align 8, !tbaa !11
  %402 = getelementptr inbounds %struct.bucket, ptr %394, i64 0, i32 8
  %403 = load i8, ptr %402, align 8, !tbaa !20
  switch i8 %403, label %404 [
    i8 0, label %405
    i8 1, label %410
  ]

404:                                              ; preds = %405, %392
  br label %416

405:                                              ; preds = %392
  store i8 2, ptr %402, align 8, !tbaa !20
  %406 = load i32, ptr @nvars, align 4, !tbaa !7
  %407 = trunc i32 %406 to i16
  %408 = getelementptr inbounds %struct.bucket, ptr %394, i64 0, i32 4
  store i16 %407, ptr %408, align 8, !tbaa !33
  %409 = add nsw i32 %406, 1
  store i32 %409, ptr @nvars, align 4, !tbaa !7
  br label %404

410:                                              ; preds = %392
  %.lcssa60 = phi ptr [ %394, %392 ]
  %411 = getelementptr inbounds %struct.bucket, ptr %.lcssa60, i64 0, i32 2
  %412 = load ptr, ptr %411, align 8, !tbaa !29
  %413 = ptrtoint ptr %412 to i64
  %414 = trunc i64 %413 to i32
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %9) #32
  %415 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(1) @.str.52, i32 noundef %414, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #25
  call fastcc void @fatal(ptr noundef nonnull %9) #26
  unreachable

416:                                              ; preds = %468, %404
  %417 = phi ptr [ %469, %468 ], [ %398, %404 ]
  %418 = phi ptr [ %470, %468 ], [ %372, %404 ]
  %419 = phi i32 [ %471, %468 ], [ 0, %404 ]
  %420 = phi i32 [ %474, %468 ], [ 0, %404 ]
  %421 = phi i32 [ %472, %468 ], [ 0, %404 ]
  %422 = phi ptr [ %473, %468 ], [ null, %404 ]
  %423 = tail call fastcc i32 @lex() #25, !range !27
  switch i32 %423, label %475 [
    i32 1, label %424
    i32 6, label %466
  ]

424:                                              ; preds = %416
  %425 = load ptr, ptr @symval, align 8, !tbaa !11
  %426 = tail call fastcc i32 @lex() #25, !range !27
  store i32 %426, ptr @unlexed, align 4, !tbaa !7
  %427 = load ptr, ptr @symval, align 8, !tbaa !11
  store ptr %427, ptr @unlexed_symval, align 8, !tbaa !11
  store ptr %425, ptr @symval, align 8, !tbaa !11
  %428 = icmp eq i32 %426, 3
  br i1 %428, label %429, label %431

429:                                              ; preds = %424
  %.lcssa44 = phi ptr [ %417, %424 ]
  %.lcssa38 = phi i32 [ %421, %424 ]
  %.lcssa36 = phi ptr [ %422, %424 ]
  %430 = tail call fastcc ptr @mallocate(i32 noundef 24) #25
  store ptr %430, ptr %.lcssa44, align 8, !tbaa !34
  br label %761

431:                                              ; preds = %424
  %432 = icmp eq ptr %422, null
  %433 = select i1 %432, ptr %425, ptr %422
  %434 = icmp eq i32 %419, 0
  br i1 %434, label %458, label %435

435:                                              ; preds = %431
  %436 = load i32, ptr @gensym_count, align 4, !tbaa !7
  %437 = add nsw i32 %436, 1
  store i32 %437, ptr @gensym_count, align 4, !tbaa !7
  %438 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @token_buffer, ptr noundef nonnull dereferenceable(1) @.str.49, i32 noundef %437) #25
  %439 = tail call fastcc ptr @getsym(ptr noundef nonnull @token_buffer) #25
  %440 = getelementptr inbounds %struct.bucket, ptr %439, i64 0, i32 8
  store i8 2, ptr %440, align 8, !tbaa !20
  %441 = load i32, ptr @nvars, align 4, !tbaa !7
  %442 = add nsw i32 %441, 1
  store i32 %442, ptr @nvars, align 4, !tbaa !7
  %443 = trunc i32 %441 to i16
  %444 = getelementptr inbounds %struct.bucket, ptr %439, i64 0, i32 4
  store i16 %443, ptr %444, align 8, !tbaa !33
  %445 = load i32, ptr @nrules, align 4, !tbaa !7
  %446 = add nsw i32 %445, 1
  store i32 %446, ptr @nrules, align 4, !tbaa !7
  %447 = load i32, ptr @nitems, align 4, !tbaa !7
  %448 = add nsw i32 %447, 1
  store i32 %448, ptr @nitems, align 4, !tbaa !7
  tail call fastcc void @record_rule_line() #26
  %449 = tail call fastcc ptr @mallocate(i32 noundef 24) #25
  %450 = icmp eq ptr %418, null
  %451 = select i1 %450, ptr @grammar, ptr %418
  store ptr %449, ptr %451, align 8, !tbaa !11
  %452 = getelementptr inbounds %struct.symbol_list, ptr %449, i64 0, i32 1
  store ptr %439, ptr %452, align 8, !tbaa !31
  %453 = tail call fastcc ptr @mallocate(i32 noundef 24) #25
  store ptr %453, ptr %449, align 8, !tbaa !34
  store ptr %398, ptr %453, align 8, !tbaa !34
  %454 = load i32, ptr @nitems, align 4, !tbaa !7
  %455 = add nsw i32 %454, 1
  store i32 %455, ptr @nitems, align 4, !tbaa !7
  %456 = tail call fastcc ptr @mallocate(i32 noundef 24) #25
  %457 = getelementptr inbounds %struct.symbol_list, ptr %456, i64 0, i32 1
  store ptr %439, ptr %457, align 8, !tbaa !31
  store ptr %456, ptr %417, align 8, !tbaa !34
  br label %458

458:                                              ; preds = %435, %431
  %459 = phi ptr [ %456, %435 ], [ %417, %431 ]
  %460 = phi ptr [ %453, %435 ], [ %418, %431 ]
  %461 = load i32, ptr @nitems, align 4, !tbaa !7
  %462 = add nsw i32 %461, 1
  store i32 %462, ptr @nitems, align 4, !tbaa !7
  %463 = tail call fastcc ptr @mallocate(i32 noundef 24) #25
  %464 = load ptr, ptr @symval, align 8, !tbaa !11
  %465 = getelementptr inbounds %struct.symbol_list, ptr %463, i64 0, i32 1
  store ptr %464, ptr %465, align 8, !tbaa !31
  store ptr %463, ptr %459, align 8, !tbaa !34
  br label %468

466:                                              ; preds = %416
  tail call fastcc void @copy_action(ptr noundef %398, i32 noundef %420) #26
  %467 = add nsw i32 %421, 1
  br label %468

468:                                              ; preds = %466, %458
  %469 = phi ptr [ %417, %466 ], [ %463, %458 ]
  %470 = phi ptr [ %418, %466 ], [ %460, %458 ]
  %471 = phi i32 [ 1, %466 ], [ 0, %458 ]
  %472 = phi i32 [ %467, %466 ], [ %421, %458 ]
  %473 = phi ptr [ %422, %466 ], [ %433, %458 ]
  %474 = add nuw nsw i32 %420, 1
  br label %416

475:                                              ; preds = %416
  %.lcssa43 = phi ptr [ %417, %416 ]
  %.lcssa41 = phi i32 [ %419, %416 ]
  %.lcssa39 = phi i32 [ %420, %416 ]
  %.lcssa37 = phi i32 [ %421, %416 ]
  %.lcssa35 = phi ptr [ %422, %416 ]
  %.lcssa33 = phi i32 [ %423, %416 ]
  %476 = tail call fastcc ptr @mallocate(i32 noundef 24) #25
  store ptr %476, ptr %.lcssa43, align 8, !tbaa !34
  %477 = icmp eq i32 %.lcssa33, 18
  br i1 %477, label %478, label %483

478:                                              ; preds = %475
  %479 = tail call fastcc i32 @lex() #25, !range !27
  %480 = load ptr, ptr @symval, align 8, !tbaa !11
  %481 = getelementptr inbounds %struct.symbol_list, ptr %398, i64 0, i32 2
  store ptr %480, ptr %481, align 8, !tbaa !35
  %482 = tail call fastcc i32 @lex() #25, !range !27
  br label %483

483:                                              ; preds = %478, %475
  %484 = phi i32 [ %482, %478 ], [ %.lcssa33, %475 ]
  switch i32 %484, label %761 [
    i32 11, label %485
    i32 6, label %756
  ]

485:                                              ; preds = %483
  %486 = load i1, ptr @semantic_parser, align 4
  br i1 %486, label %488, label %487

487:                                              ; preds = %485
  tail call fastcc void @fatal(ptr noundef nonnull @.str.53.191) #25
  unreachable

488:                                              ; preds = %485
  %489 = load ptr, ptr @fguard, align 8, !tbaa !11
  %490 = load i32, ptr @nrules, align 4, !tbaa !7
  %491 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %489, ptr noundef nonnull @.str.35.204, i32 noundef %490) #26
  %492 = load i1, ptr @nolinesflag, align 4
  br i1 %492, label %502, label %493

493:                                              ; preds = %488
  %494 = load ptr, ptr @fguard, align 8, !tbaa !11
  %495 = load i32, ptr @lineno, align 4, !tbaa !7
  %496 = load ptr, ptr @infile, align 8, !tbaa !11
  %497 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %496, i32 noundef 47) #27
  %498 = icmp eq ptr %497, null
  %499 = getelementptr inbounds i8, ptr %497, i64 1
  %500 = select i1 %498, ptr %496, ptr %499
  %501 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %494, ptr noundef nonnull @.str.7.205, i32 noundef %495, ptr noundef %500) #26
  br label %502

502:                                              ; preds = %493, %488
  %503 = load ptr, ptr @fguard, align 8, !tbaa !11
  %504 = tail call i32 @putc(i32 noundef 123, ptr noundef %503) #26
  %505 = load ptr, ptr @finput, align 8, !tbaa !11
  %506 = tail call i32 @getc(ptr noundef %505) #26
  br label %507

507:                                              ; preds = %737, %502
  %508 = phi i32 [ %506, %502 ], [ %738, %737 ]
  %509 = phi i32 [ 0, %502 ], [ %739, %737 ]
  %510 = phi i32 [ 0, %502 ], [ %740, %737 ]
  %511 = icmp eq i32 %510, 0
  %512 = icmp sgt i32 %509, 0
  br label %513

513:                                              ; preds = %714, %507
  %514 = phi i32 [ %508, %507 ], [ %715, %714 ]
  br label %515

515:                                              ; preds = %562, %513
  %516 = phi i32 [ %566, %562 ], [ %514, %513 ]
  %517 = icmp ne i32 %516, 59
  %518 = select i1 %511, i1 %517, i1 %512
  br i1 %518, label %519, label %741

519:                                              ; preds = %515
  switch i32 %516, label %719 [
    i32 10, label %520
    i32 123, label %525
    i32 125, label %529
    i32 39, label %535
    i32 34, label %535
    i32 47, label %562
    i32 36, label %593
    i32 64, label %693
    i32 -1, label %718
  ]

520:                                              ; preds = %519
  %521 = load ptr, ptr @fguard, align 8, !tbaa !11
  %522 = tail call i32 @putc(i32 noundef 10, ptr noundef %521) #26
  %523 = load i32, ptr @lineno, align 4, !tbaa !7
  %524 = add nsw i32 %523, 1
  store i32 %524, ptr @lineno, align 4, !tbaa !7
  br label %732

525:                                              ; preds = %519
  %526 = load ptr, ptr @fguard, align 8, !tbaa !11
  %527 = tail call i32 @putc(i32 noundef 123, ptr noundef %526) #26
  %528 = add nsw i32 %509, 1
  br label %732

529:                                              ; preds = %519
  %.lcssa49 = phi i32 [ %516, %519 ]
  %530 = load ptr, ptr @fguard, align 8, !tbaa !11
  %531 = tail call i32 @putc(i32 noundef 125, ptr noundef %530) #26
  br i1 %512, label %532, label %534

532:                                              ; preds = %529
  %533 = add nsw i32 %509, -1
  br label %725

534:                                              ; preds = %529
  tail call fastcc void @fatal(ptr noundef nonnull @.str.36.206) #25
  unreachable

535:                                              ; preds = %519, %519
  %.lcssa50 = phi i32 [ %516, %519 ], [ %516, %519 ]
  %536 = load ptr, ptr @fguard, align 8, !tbaa !11
  %537 = tail call i32 @putc(i32 noundef %.lcssa50, ptr noundef %536) #26
  %538 = load ptr, ptr @finput, align 8, !tbaa !11
  %539 = tail call i32 @getc(ptr noundef %538) #26
  %540 = icmp eq i32 %539, %.lcssa50
  br i1 %540, label %559, label %541

541:                                              ; preds = %555, %535
  %542 = phi i32 [ %557, %555 ], [ %539, %535 ]
  switch i32 %542, label %544 [
    i32 -1, label %543
    i32 10, label %543
  ]

543:                                              ; preds = %541, %541
  tail call fastcc void @fatal(ptr noundef nonnull @.str.8.207) #25
  unreachable

544:                                              ; preds = %541
  %545 = load ptr, ptr @fguard, align 8, !tbaa !11
  %546 = tail call i32 @putc(i32 noundef %542, ptr noundef %545) #26
  %547 = icmp eq i32 %542, 92
  br i1 %547, label %548, label %555

548:                                              ; preds = %544
  %549 = load ptr, ptr @finput, align 8, !tbaa !11
  %550 = tail call i32 @getc(ptr noundef %549) #26
  switch i32 %550, label %552 [
    i32 -1, label %551
    i32 10, label %551
  ]

551:                                              ; preds = %548, %548
  tail call fastcc void @fatal(ptr noundef nonnull @.str.8.207) #25
  unreachable

552:                                              ; preds = %548
  %553 = load ptr, ptr @fguard, align 8, !tbaa !11
  %554 = tail call i32 @putc(i32 noundef %550, ptr noundef %553) #26
  br label %555

555:                                              ; preds = %552, %544
  %556 = load ptr, ptr @finput, align 8, !tbaa !11
  %557 = tail call i32 @getc(ptr noundef %556) #26
  %558 = icmp eq i32 %557, %.lcssa50
  br i1 %558, label %559, label %541, !llvm.loop !36

559:                                              ; preds = %555, %535
  %560 = load ptr, ptr @fguard, align 8, !tbaa !11
  %561 = tail call i32 @putc(i32 noundef %.lcssa50, ptr noundef %560) #26
  br label %725

562:                                              ; preds = %519
  %563 = load ptr, ptr @fguard, align 8, !tbaa !11
  %564 = tail call i32 @putc(i32 noundef 47, ptr noundef %563) #26
  %565 = load ptr, ptr @finput, align 8, !tbaa !11
  %566 = tail call i32 @getc(ptr noundef %565) #26
  %567 = icmp eq i32 %566, 42
  br i1 %567, label %568, label %515, !llvm.loop !37

568:                                              ; preds = %562
  %569 = load ptr, ptr @fguard, align 8, !tbaa !11
  %570 = tail call i32 @putc(i32 noundef 42, ptr noundef %569) #26
  %571 = load ptr, ptr @finput, align 8, !tbaa !11
  %572 = tail call i32 @getc(ptr noundef %571) #26
  br label %573

573:                                              ; preds = %590, %568
  %574 = phi i32 [ %572, %568 ], [ %591, %590 ]
  switch i32 %574, label %585 [
    i32 42, label %575
    i32 10, label %582
    i32 -1, label %592
  ]

575:                                              ; preds = %577, %573
  %576 = phi i32 [ %581, %577 ], [ %574, %573 ]
  switch i32 %576, label %590 [
    i32 42, label %577
    i32 47, label %722
  ], !llvm.loop !38

577:                                              ; preds = %575
  %578 = load ptr, ptr @fguard, align 8, !tbaa !11
  %579 = tail call i32 @putc(i32 noundef 42, ptr noundef %578) #26
  %580 = load ptr, ptr @finput, align 8, !tbaa !11
  %581 = tail call i32 @getc(ptr noundef %580) #26
  br label %575, !llvm.loop !39

582:                                              ; preds = %573
  %583 = load i32, ptr @lineno, align 4, !tbaa !7
  %584 = add nsw i32 %583, 1
  store i32 %584, ptr @lineno, align 4, !tbaa !7
  br label %585

585:                                              ; preds = %582, %573
  %586 = load ptr, ptr @fguard, align 8, !tbaa !11
  %587 = tail call i32 @putc(i32 noundef %574, ptr noundef %586) #26
  %588 = load ptr, ptr @finput, align 8, !tbaa !11
  %589 = tail call i32 @getc(ptr noundef %588) #26
  br label %590

590:                                              ; preds = %585, %575
  %591 = phi i32 [ %589, %585 ], [ %576, %575 ]
  br label %573, !llvm.loop !38

592:                                              ; preds = %573
  tail call fastcc void @fatal(ptr noundef nonnull @.str.24.198) #25
  unreachable

593:                                              ; preds = %519
  %594 = load ptr, ptr @finput, align 8, !tbaa !11
  %595 = tail call i32 @getc(ptr noundef %594) #26
  %596 = icmp ne i32 %595, 60
  br i1 %596, label %611, label %597

597:                                              ; preds = %604, %593
  %598 = phi ptr [ %606, %604 ], [ @token_buffer, %593 ]
  %599 = load ptr, ptr @finput, align 8, !tbaa !11
  %600 = tail call i32 @getc(ptr noundef %599) #26
  %601 = icmp ne i32 %600, 62
  %602 = icmp sgt i32 %600, 0
  %603 = and i1 %601, %602
  br i1 %603, label %604, label %607

604:                                              ; preds = %597
  %605 = trunc i32 %600 to i8
  %606 = getelementptr inbounds i8, ptr %598, i64 1
  store i8 %605, ptr %598, align 1, !tbaa !13
  br label %597, !llvm.loop !40

607:                                              ; preds = %597
  %.lcssa55 = phi ptr [ %598, %597 ]
  store i8 0, ptr %.lcssa55, align 1, !tbaa !13
  %608 = load ptr, ptr @finput, align 8, !tbaa !11
  %609 = tail call i32 @getc(ptr noundef %608) #26
  %610 = icmp eq i32 %609, 36
  br i1 %610, label %620, label %636

611:                                              ; preds = %593
  %612 = icmp eq i32 %595, 36
  br i1 %612, label %613, label %636

613:                                              ; preds = %611
  %614 = load ptr, ptr @fguard, align 8, !tbaa !11
  %615 = tail call i64 @fwrite(ptr nonnull @.str.37.208, i64 5, i64 1, ptr %614)
  %616 = load ptr, ptr %399, align 8, !tbaa !31
  %617 = getelementptr inbounds %struct.bucket, ptr %616, i64 0, i32 3
  %618 = load ptr, ptr %617, align 8, !tbaa !28
  %619 = icmp eq ptr %618, null
  br i1 %619, label %627, label %623

620:                                              ; preds = %607
  %621 = load ptr, ptr @fguard, align 8, !tbaa !11
  %622 = tail call i64 @fwrite(ptr nonnull @.str.37.208, i64 5, i64 1, ptr %621)
  br label %623

623:                                              ; preds = %620, %613
  %624 = phi ptr [ %618, %613 ], [ @token_buffer, %620 ]
  %625 = load ptr, ptr @fguard, align 8, !tbaa !11
  %626 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %625, ptr noundef nonnull @.str.38.209, ptr noundef nonnull %624) #26
  br label %732

627:                                              ; preds = %613
  %628 = load i1, ptr @typed, align 4
  br i1 %628, label %629, label %732

629:                                              ; preds = %627
  %630 = load ptr, ptr @stderr, align 8, !tbaa !11
  %631 = load ptr, ptr @infile, align 8, !tbaa !11
  %632 = load i32, ptr @lineno, align 4, !tbaa !7
  %633 = getelementptr inbounds %struct.bucket, ptr %616, i64 0, i32 2
  %634 = load ptr, ptr %633, align 8, !tbaa !29
  %635 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %630, ptr noundef nonnull @.str.39.210, ptr noundef %631, i32 noundef %632, ptr noundef %634) #28
  br label %732

636:                                              ; preds = %611, %607
  %637 = phi ptr [ null, %611 ], [ @token_buffer, %607 ]
  %638 = phi i32 [ %595, %611 ], [ %609, %607 ]
  %639 = tail call ptr @__ctype_b_loc() #33
  %640 = load ptr, ptr %639, align 8, !tbaa !11
  %641 = sext i32 %638 to i64
  %642 = getelementptr inbounds i16, ptr %640, i64 %641
  %643 = load i16, ptr %642, align 2, !tbaa !41
  %644 = and i16 %643, 2048
  %645 = icmp ne i16 %644, 0
  %646 = icmp eq i32 %638, 45
  %647 = or i1 %646, %645
  br i1 %647, label %648, label %691

648:                                              ; preds = %636
  %649 = load ptr, ptr @finput, align 8, !tbaa !11
  %650 = tail call i32 @ungetc(i32 noundef %638, ptr noundef %649) #26
  %651 = load ptr, ptr @finput, align 8, !tbaa !11
  %652 = tail call fastcc i32 @read_signed_integer(ptr noundef %651) #26
  %653 = load ptr, ptr @finput, align 8, !tbaa !11
  %654 = tail call i32 @getc(ptr noundef %653) #26
  %655 = icmp sgt i32 %652, 0
  %656 = select i1 %596, i1 %655, i1 false
  br i1 %656, label %657, label %673

657:                                              ; preds = %667, %648
  %658 = phi ptr [ %660, %667 ], [ %398, %648 ]
  %659 = phi i32 [ %668, %667 ], [ 0, %648 ]
  %660 = load ptr, ptr %658, align 8, !tbaa !34
  %661 = icmp eq ptr %660, null
  br i1 %661, label %666, label %662

662:                                              ; preds = %657
  %663 = getelementptr inbounds %struct.symbol_list, ptr %660, i64 0, i32 1
  %664 = load ptr, ptr %663, align 8, !tbaa !31
  %665 = icmp eq ptr %664, null
  br i1 %665, label %666, label %667

666:                                              ; preds = %662, %657
  tail call fastcc void @fatal(ptr noundef nonnull @.str.34.217) #25
  unreachable

667:                                              ; preds = %662
  %668 = add nuw nsw i32 %659, 1
  %669 = icmp eq i32 %668, %652
  br i1 %669, label %670, label %657, !llvm.loop !42

670:                                              ; preds = %667
  %.lcssa56 = phi ptr [ %664, %667 ]
  %671 = getelementptr inbounds %struct.bucket, ptr %.lcssa56, i64 0, i32 3
  %672 = load ptr, ptr %671, align 8, !tbaa !28
  br label %673

673:                                              ; preds = %670, %648
  %674 = phi ptr [ %672, %670 ], [ %637, %648 ]
  %675 = load ptr, ptr @fguard, align 8, !tbaa !11
  %676 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %675, ptr noundef nonnull @.str.40.211, i32 noundef %652) #26
  %677 = icmp eq ptr %674, null
  br i1 %677, label %681, label %678

678:                                              ; preds = %673
  %679 = load ptr, ptr @fguard, align 8, !tbaa !11
  %680 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %679, ptr noundef nonnull @.str.38.209, ptr noundef nonnull %674) #26
  br label %714

681:                                              ; preds = %673
  %682 = load i1, ptr @typed, align 4
  br i1 %682, label %683, label %714

683:                                              ; preds = %681
  %684 = load ptr, ptr @stderr, align 8, !tbaa !11
  %685 = load ptr, ptr @infile, align 8, !tbaa !11
  %686 = load i32, ptr @lineno, align 4, !tbaa !7
  %687 = load ptr, ptr %399, align 8, !tbaa !31
  %688 = getelementptr inbounds %struct.bucket, ptr %687, i64 0, i32 2
  %689 = load ptr, ptr %688, align 8, !tbaa !29
  %690 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %684, ptr noundef nonnull @.str.41.212, ptr noundef %685, i32 noundef %686, i32 noundef %652, ptr noundef %689) #28
  br label %714

691:                                              ; preds = %636
  %.lcssa58 = phi i32 [ %638, %636 ]
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %8) #32
  %692 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %8, ptr noundef nonnull dereferenceable(1) @.str.42.213, i32 noundef %.lcssa58, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #25
  call fastcc void @fatal(ptr noundef nonnull %8) #26
  unreachable

693:                                              ; preds = %519
  %694 = load ptr, ptr @finput, align 8, !tbaa !11
  %695 = tail call i32 @getc(ptr noundef %694) #26
  %696 = tail call ptr @__ctype_b_loc() #33
  %697 = load ptr, ptr %696, align 8, !tbaa !11
  %698 = sext i32 %695 to i64
  %699 = getelementptr inbounds i16, ptr %697, i64 %698
  %700 = load i16, ptr %699, align 2, !tbaa !41
  %701 = and i16 %700, 2048
  %702 = icmp ne i16 %701, 0
  %703 = icmp eq i32 %695, 45
  %704 = or i1 %703, %702
  br i1 %704, label %705, label %716

705:                                              ; preds = %693
  %706 = load ptr, ptr @finput, align 8, !tbaa !11
  %707 = tail call i32 @ungetc(i32 noundef %695, ptr noundef %706) #26
  %708 = load ptr, ptr @finput, align 8, !tbaa !11
  %709 = tail call fastcc i32 @read_signed_integer(ptr noundef %708) #26
  %710 = load ptr, ptr @finput, align 8, !tbaa !11
  %711 = tail call i32 @getc(ptr noundef %710) #26
  %712 = load ptr, ptr @fguard, align 8, !tbaa !11
  %713 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %712, ptr noundef nonnull @.str.44.215, i32 noundef %709) #26
  store i1 true, ptr @yylsp_needed, align 4
  br label %714

714:                                              ; preds = %705, %683, %681, %678
  %715 = phi i32 [ %711, %705 ], [ %654, %678 ], [ %654, %683 ], [ %654, %681 ]
  br label %513, !llvm.loop !37

716:                                              ; preds = %693
  %.lcssa57 = phi i32 [ %695, %693 ]
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %7) #32
  %717 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(1) @.str.43.214, i32 noundef %.lcssa57, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #25
  call fastcc void @fatal(ptr noundef nonnull %7) #26
  unreachable

718:                                              ; preds = %519
  tail call fastcc void @fatal(ptr noundef nonnull @.str.45.216) #25
  unreachable

719:                                              ; preds = %519
  %.lcssa46 = phi i32 [ %516, %519 ]
  %720 = load ptr, ptr @fguard, align 8, !tbaa !11
  %721 = tail call i32 @putc(i32 noundef %.lcssa46, ptr noundef %720) #26
  br label %725

722:                                              ; preds = %575
  %723 = load ptr, ptr @fguard, align 8, !tbaa !11
  %724 = tail call i32 @putc(i32 noundef 47, ptr noundef %723) #26
  br label %732

725:                                              ; preds = %719, %559, %532
  %726 = phi i32 [ %.lcssa46, %719 ], [ %.lcssa50, %559 ], [ %.lcssa49, %532 ]
  %727 = phi i32 [ %509, %719 ], [ %509, %559 ], [ %533, %532 ]
  %728 = phi i32 [ %510, %719 ], [ %510, %559 ], [ 1, %532 ]
  %729 = icmp ne i32 %726, 125
  %730 = icmp ne i32 %727, 0
  %731 = select i1 %729, i1 true, i1 %730
  br i1 %731, label %732, label %737

732:                                              ; preds = %725, %722, %629, %627, %623, %525, %520
  %733 = phi i32 [ %728, %725 ], [ %510, %629 ], [ %510, %627 ], [ %510, %525 ], [ %510, %520 ], [ %510, %623 ], [ %510, %722 ]
  %734 = phi i32 [ %727, %725 ], [ %509, %629 ], [ %509, %627 ], [ %528, %525 ], [ %509, %520 ], [ %509, %623 ], [ %509, %722 ]
  %735 = load ptr, ptr @finput, align 8, !tbaa !11
  %736 = tail call i32 @getc(ptr noundef %735) #26
  br label %737

737:                                              ; preds = %732, %725
  %738 = phi i32 [ 125, %725 ], [ %736, %732 ]
  %739 = phi i32 [ 0, %725 ], [ %734, %732 ]
  %740 = phi i32 [ %728, %725 ], [ %733, %732 ]
  br label %507, !llvm.loop !37

741:                                              ; preds = %515
  %742 = tail call fastcc i32 @skip_white_space() #25
  %743 = load ptr, ptr @fguard, align 8, !tbaa !11
  %744 = tail call i64 @fwrite(ptr nonnull @.str.46, i64 13, i64 1, ptr %743)
  switch i32 %742, label %751 [
    i32 123, label %745
    i32 61, label %746
  ]

745:                                              ; preds = %741
  tail call fastcc void @copy_action(ptr noundef %398, i32 noundef 0) #26
  br label %754

746:                                              ; preds = %741
  %747 = load ptr, ptr @finput, align 8, !tbaa !11
  %748 = tail call i32 @getc(ptr noundef %747) #26
  %749 = icmp eq i32 %748, 123
  br i1 %749, label %750, label %754

750:                                              ; preds = %746
  tail call fastcc void @copy_action(ptr noundef %398, i32 noundef 0) #26
  br label %754

751:                                              ; preds = %741
  %752 = load ptr, ptr @finput, align 8, !tbaa !11
  %753 = tail call i32 @ungetc(i32 noundef %742, ptr noundef %752) #26
  br label %754

754:                                              ; preds = %751, %750, %746, %745
  %755 = tail call fastcc i32 @lex() #25, !range !27
  br label %789

756:                                              ; preds = %483
  %757 = icmp eq i32 %.lcssa41, 0
  br i1 %757, label %759, label %758

758:                                              ; preds = %756
  tail call fastcc void @fatal(ptr noundef nonnull @.str.54) #25
  unreachable

759:                                              ; preds = %756
  tail call fastcc void @copy_action(ptr noundef %398, i32 noundef %.lcssa39) #26
  %760 = tail call fastcc i32 @lex() #25, !range !27
  br label %789

761:                                              ; preds = %483, %429
  %762 = phi i32 [ %.lcssa38, %429 ], [ %.lcssa37, %483 ]
  %763 = phi ptr [ %.lcssa36, %429 ], [ %.lcssa35, %483 ]
  %764 = phi i32 [ 1, %429 ], [ %484, %483 ]
  %765 = phi ptr [ %430, %429 ], [ %476, %483 ]
  %766 = icmp eq i32 %762, 0
  %767 = icmp ne ptr %763, null
  %768 = select i1 %766, i1 %767, i1 false
  br i1 %768, label %769, label %789

769:                                              ; preds = %761
  %770 = getelementptr inbounds %struct.bucket, ptr %394, i64 0, i32 3
  %771 = load ptr, ptr %770, align 8, !tbaa !28
  %772 = getelementptr inbounds %struct.bucket, ptr %763, i64 0, i32 3
  %773 = load ptr, ptr %772, align 8, !tbaa !28
  %774 = icmp eq ptr %771, %773
  br i1 %774, label %789, label %775

775:                                              ; preds = %769
  %776 = icmp eq ptr %771, null
  %777 = icmp eq ptr %773, null
  %778 = or i1 %776, %777
  br i1 %778, label %782, label %779

779:                                              ; preds = %775
  %780 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %771, ptr noundef nonnull dereferenceable(1) %773) #27
  %781 = icmp eq i32 %780, 0
  br i1 %781, label %789, label %782

782:                                              ; preds = %779, %775
  %783 = load ptr, ptr @stderr, align 8, !tbaa !11
  %784 = load ptr, ptr @infile, align 8, !tbaa !11
  %785 = load i32, ptr @lineno, align 4, !tbaa !7
  %786 = select i1 %776, ptr @.str.56, ptr %771
  %787 = select i1 %777, ptr @.str.56, ptr %773
  %788 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %783, ptr noundef nonnull @.str.55, ptr noundef %784, i32 noundef %785, ptr noundef nonnull %786, ptr noundef nonnull %787) #28
  br label %789

789:                                              ; preds = %782, %779, %769, %761, %759, %754
  %790 = phi ptr [ %476, %754 ], [ %476, %759 ], [ %765, %782 ], [ %765, %779 ], [ %765, %769 ], [ %765, %761 ]
  %791 = phi i32 [ %755, %754 ], [ %760, %759 ], [ %764, %782 ], [ %764, %779 ], [ %764, %769 ], [ %764, %761 ]
  %792 = icmp eq i32 %791, 4
  br i1 %792, label %793, label %371, !llvm.loop !43

793:                                              ; preds = %825, %824, %823, %808, %797, %796, %789
  %794 = phi ptr [ %.lcssa100, %825 ], [ %.lcssa99, %824 ], [ %.lcssa98, %823 ], [ %.lcssa97, %797 ], [ %.lcssa96, %796 ], [ %372, %808 ], [ %790, %789 ]
  %795 = phi ptr [ %.lcssa77, %825 ], [ %.lcssa76, %824 ], [ %.lcssa75, %823 ], [ %.lcssa74, %797 ], [ %.lcssa73, %796 ], [ %373, %808 ], [ %394, %789 ]
  br label %367, !llvm.loop !43

796:                                              ; preds = %375
  %.lcssa96 = phi ptr [ %372, %375 ]
  %.lcssa73 = phi ptr [ %373, %375 ]
  tail call fastcc void @parse_token_decl(i32 noundef 1, i32 noundef 2) #26
  br label %793

797:                                              ; preds = %375
  %.lcssa97 = phi ptr [ %372, %375 ]
  %.lcssa74 = phi ptr [ %373, %375 ]
  tail call fastcc void @parse_token_decl(i32 noundef 2, i32 noundef 1) #26
  br label %793

798:                                              ; preds = %375
  %799 = tail call fastcc i32 @lex() #25, !range !27
  %800 = icmp eq i32 %799, 21
  br i1 %800, label %802, label %801

801:                                              ; preds = %798
  tail call fastcc void @fatal(ptr noundef nonnull @.str.16.200) #25
  unreachable

802:                                              ; preds = %798
  %803 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) @token_buffer) #27
  %804 = trunc i64 %803 to i32
  %805 = add nsw i32 %804, 1
  %806 = tail call fastcc ptr @mallocate(i32 noundef %805) #25
  %807 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %806, ptr noundef nonnull dereferenceable(1) @token_buffer) #25
  br label %808

808:                                              ; preds = %816, %802
  %809 = tail call fastcc i32 @lex() #25, !range !27
  switch i32 %809, label %375 [
    i32 4, label %793
    i32 2, label %816
    i32 1, label %810
  ]

810:                                              ; preds = %808
  %811 = load ptr, ptr @symval, align 8, !tbaa !11
  %812 = getelementptr inbounds %struct.bucket, ptr %811, i64 0, i32 3
  %813 = load ptr, ptr %812, align 8, !tbaa !28
  %814 = icmp eq ptr %813, null
  br i1 %814, label %815, label %817

815:                                              ; preds = %810
  store ptr %806, ptr %812, align 8, !tbaa !28
  br label %816

816:                                              ; preds = %815, %808
  br label %808, !llvm.loop !43

817:                                              ; preds = %810
  %.lcssa32 = phi ptr [ %811, %810 ]
  %818 = getelementptr inbounds %struct.bucket, ptr %.lcssa32, i64 0, i32 2
  %819 = load ptr, ptr %818, align 8, !tbaa !29
  %820 = ptrtoint ptr %819 to i64
  %821 = trunc i64 %820 to i32
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %6) #32
  %822 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(1) @.str.12.201, i32 noundef %821, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #25
  call fastcc void @fatal(ptr noundef nonnull %6) #26
  unreachable

823:                                              ; preds = %375
  %.lcssa98 = phi ptr [ %372, %375 ]
  %.lcssa75 = phi ptr [ %373, %375 ]
  tail call fastcc void @parse_union_decl() #26
  br label %793

824:                                              ; preds = %375
  %.lcssa99 = phi ptr [ %372, %375 ]
  %.lcssa76 = phi ptr [ %373, %375 ]
  tail call fastcc void @parse_expect_decl() #26
  br label %793

825:                                              ; preds = %375
  %.lcssa100 = phi ptr [ %372, %375 ]
  %.lcssa77 = phi ptr [ %373, %375 ]
  tail call fastcc void @parse_start_decl() #26
  br label %793

826:                                              ; preds = %375
  tail call fastcc void @fatal(ptr noundef nonnull @.str.57) #25
  unreachable

827:                                              ; preds = %375, %375
  %828 = load i32, ptr @nrules, align 4, !tbaa !7
  %829 = icmp eq i32 %828, 0
  br i1 %829, label %830, label %831

830:                                              ; preds = %827
  tail call fastcc void @fatal(ptr noundef nonnull @.str.5.192) #25
  unreachable

831:                                              ; preds = %827
  %832 = load i1, ptr @typed, align 4
  br i1 %832, label %840, label %833

833:                                              ; preds = %831
  %834 = load ptr, ptr @fattrs, align 8, !tbaa !11
  %835 = tail call i64 @fwrite(ptr nonnull @.str.58, i64 43, i64 1, ptr %834)
  %836 = load ptr, ptr @fdefines, align 8, !tbaa !11
  %837 = icmp eq ptr %836, null
  br i1 %837, label %840, label %838

838:                                              ; preds = %833
  %839 = tail call i64 @fwrite(ptr nonnull @.str.58, i64 43, i64 1, ptr nonnull %836)
  br label %840

840:                                              ; preds = %838, %833, %831
  %841 = load ptr, ptr @firstsymbol, align 8, !tbaa !11
  %842 = icmp eq ptr %841, null
  br i1 %842, label %861, label %843

843:                                              ; preds = %857, %840
  %844 = phi ptr [ %859, %857 ], [ %841, %840 ]
  %845 = getelementptr inbounds %struct.bucket, ptr %844, i64 0, i32 8
  %846 = load i8, ptr %845, align 8, !tbaa !20
  %847 = icmp eq i8 %846, 0
  br i1 %847, label %848, label %857

848:                                              ; preds = %843
  %849 = load ptr, ptr @stderr, align 8, !tbaa !11
  %850 = getelementptr inbounds %struct.bucket, ptr %844, i64 0, i32 2
  %851 = load ptr, ptr %850, align 8, !tbaa !29
  %852 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %849, ptr noundef nonnull @.str.59, ptr noundef %851) #28
  store i1 true, ptr @failure, align 4
  store i8 2, ptr %845, align 8, !tbaa !20
  %853 = load i32, ptr @nvars, align 4, !tbaa !7
  %854 = add nsw i32 %853, 1
  store i32 %854, ptr @nvars, align 4, !tbaa !7
  %855 = trunc i32 %853 to i16
  %856 = getelementptr inbounds %struct.bucket, ptr %844, i64 0, i32 4
  store i16 %855, ptr %856, align 8, !tbaa !33
  br label %857

857:                                              ; preds = %848, %843
  %858 = getelementptr inbounds %struct.bucket, ptr %844, i64 0, i32 1
  %859 = load ptr, ptr %858, align 8, !tbaa !11
  %860 = icmp eq ptr %859, null
  br i1 %860, label %861, label %843, !llvm.loop !44

861:                                              ; preds = %857, %840
  %862 = load i32, ptr @nsyms, align 4, !tbaa !7
  %863 = load i32, ptr @nvars, align 4, !tbaa !7
  %864 = sub nsw i32 %862, %863
  store i32 %864, ptr @ntokens, align 4, !tbaa !7
  %865 = load i1, ptr @semantic_parser, align 4
  br i1 %865, label %866, label %871

866:                                              ; preds = %861
  %867 = load ptr, ptr @fguard, align 8, !tbaa !11
  %868 = tail call i64 @fwrite(ptr nonnull @.str.3.142, i64 9, i64 1, ptr %867)
  %869 = load ptr, ptr @faction, align 8, !tbaa !11
  %870 = tail call i64 @fwrite(ptr nonnull @.str.3.142, i64 9, i64 1, ptr %869)
  br label %874

871:                                              ; preds = %861
  %872 = load ptr, ptr @faction, align 8, !tbaa !11
  %873 = tail call i64 @fwrite(ptr nonnull @.str.4.143, i64 3, i64 1, ptr %872)
  br label %874

874:                                              ; preds = %871, %866
  %875 = load i1, ptr @yylsp_needed, align 4
  br i1 %875, label %876, label %879

876:                                              ; preds = %874
  %877 = load ptr, ptr @ftable, align 8, !tbaa !11
  %878 = tail call i64 @fwrite(ptr nonnull @.str.3.188, i64 22, i64 1, ptr %877)
  br label %879

879:                                              ; preds = %876, %874
  %880 = load i32, ptr @nsyms, align 4, !tbaa !7
  %881 = shl i32 %880, 3
  %882 = add i32 %881, 8
  %883 = tail call fastcc ptr @mallocate(i32 noundef %882) #25
  store ptr %883, ptr @tags, align 8, !tbaa !11
  store ptr @.str.61, ptr %883, align 8, !tbaa !11
  %884 = load i32, ptr @nsyms, align 4, !tbaa !7
  %885 = shl i32 %884, 1
  %886 = tail call fastcc ptr @mallocate(i32 noundef %885) #25
  store ptr %886, ptr @sprec, align 8, !tbaa !11
  %887 = load i32, ptr @nsyms, align 4, !tbaa !7
  %888 = shl i32 %887, 1
  %889 = tail call fastcc ptr @mallocate(i32 noundef %888) #25
  store ptr %889, ptr @sassoc, align 8, !tbaa !11
  store i32 255, ptr @max_user_token_number, align 4, !tbaa !7
  %890 = load ptr, ptr @firstsymbol, align 8, !tbaa !11
  %891 = icmp eq ptr %890, null
  %892 = load i32, ptr @translations, align 4
  br i1 %891, label %949, label %893

893:                                              ; preds = %879
  %894 = icmp ne i32 %892, 0
  %895 = load i32, ptr @ntokens, align 4
  %896 = trunc i32 %895 to i16
  %897 = load ptr, ptr @tags, align 8, !tbaa !11
  %898 = load ptr, ptr @sprec, align 8, !tbaa !11
  br label %899

899:                                              ; preds = %928, %893
  %900 = phi ptr [ %890, %893 ], [ %947, %928 ]
  %901 = phi i16 [ 255, %893 ], [ %932, %928 ]
  %902 = phi i16 [ 1, %893 ], [ %931, %928 ]
  %903 = phi i32 [ 255, %893 ], [ %930, %928 ]
  %904 = getelementptr inbounds %struct.bucket, ptr %900, i64 0, i32 8
  %905 = load i8, ptr %904, align 8, !tbaa !20
  %906 = icmp eq i8 %905, 2
  br i1 %906, label %907, label %911

907:                                              ; preds = %899
  %908 = getelementptr inbounds %struct.bucket, ptr %900, i64 0, i32 4
  %909 = load i16, ptr %908, align 8, !tbaa !33
  %910 = add i16 %909, %896
  store i16 %910, ptr %908, align 8, !tbaa !33
  br label %928

911:                                              ; preds = %899
  %912 = getelementptr inbounds %struct.bucket, ptr %900, i64 0, i32 7
  %913 = load i16, ptr %912, align 2, !tbaa !45
  %914 = icmp eq i16 %913, 0
  %915 = select i1 %894, i1 %914, i1 false
  br i1 %915, label %916, label %918

916:                                              ; preds = %911
  %917 = add i16 %901, 1
  store i16 %917, ptr %912, align 2, !tbaa !45
  br label %918

918:                                              ; preds = %916, %911
  %919 = phi i16 [ %917, %916 ], [ %913, %911 ]
  %920 = phi i16 [ %917, %916 ], [ %901, %911 ]
  %921 = sext i16 %919 to i32
  %922 = icmp slt i32 %903, %921
  br i1 %922, label %923, label %924

923:                                              ; preds = %918
  store i32 %921, ptr @max_user_token_number, align 4, !tbaa !7
  br label %924

924:                                              ; preds = %923, %918
  %925 = phi i32 [ %921, %923 ], [ %903, %918 ]
  %926 = add i16 %902, 1
  %927 = getelementptr inbounds %struct.bucket, ptr %900, i64 0, i32 4
  store i16 %902, ptr %927, align 8, !tbaa !33
  br label %928

928:                                              ; preds = %924, %907
  %929 = phi i16 [ %910, %907 ], [ %902, %924 ]
  %930 = phi i32 [ %903, %907 ], [ %925, %924 ]
  %931 = phi i16 [ %902, %907 ], [ %926, %924 ]
  %932 = phi i16 [ %901, %907 ], [ %920, %924 ]
  %933 = getelementptr inbounds %struct.bucket, ptr %900, i64 0, i32 2
  %934 = load ptr, ptr %933, align 8, !tbaa !29
  %935 = getelementptr inbounds %struct.bucket, ptr %900, i64 0, i32 4
  %936 = sext i16 %929 to i64
  %937 = getelementptr inbounds ptr, ptr %897, i64 %936
  store ptr %934, ptr %937, align 8, !tbaa !11
  %938 = getelementptr inbounds %struct.bucket, ptr %900, i64 0, i32 5
  %939 = load i16, ptr %938, align 2, !tbaa !46
  %940 = getelementptr inbounds i16, ptr %898, i64 %936
  store i16 %939, ptr %940, align 2, !tbaa !41
  %941 = getelementptr inbounds %struct.bucket, ptr %900, i64 0, i32 6
  %942 = load i16, ptr %941, align 4, !tbaa !47
  %943 = load i16, ptr %935, align 8, !tbaa !33
  %944 = sext i16 %943 to i64
  %945 = getelementptr inbounds i16, ptr %889, i64 %944
  store i16 %942, ptr %945, align 2, !tbaa !41
  %946 = getelementptr inbounds %struct.bucket, ptr %900, i64 0, i32 1
  %947 = load ptr, ptr %946, align 8, !tbaa !11
  %948 = icmp eq ptr %947, null
  br i1 %948, label %949, label %899, !llvm.loop !48

949:                                              ; preds = %928, %879
  %950 = phi i32 [ 255, %879 ], [ %930, %928 ]
  %951 = icmp eq i32 %892, 0
  br i1 %951, label %1010, label %952

952:                                              ; preds = %949
  %953 = shl nuw nsw i32 %950, 1
  %954 = add nuw nsw i32 %953, 2
  %955 = tail call fastcc ptr @mallocate(i32 noundef %954) #25
  store ptr %955, ptr @token_translations, align 8, !tbaa !11
  %956 = load i32, ptr @max_user_token_number, align 4, !tbaa !7
  %957 = add nuw nsw i32 %956, 1
  %958 = zext i32 %957 to i64
  %959 = add nuw nsw i64 %958, 7
  %960 = and i64 %959, 8589934584
  %961 = add nsw i64 %958, -1
  %962 = insertelement <8 x i64> poison, i64 %961, i64 0
  %963 = shufflevector <8 x i64> %962, <8 x i64> poison, <8 x i32> zeroinitializer
  br label %964

964:                                              ; preds = %1006, %952
  %965 = phi i64 [ 0, %952 ], [ %1007, %1006 ]
  %966 = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %952 ], [ %1008, %1006 ]
  %967 = icmp ule <8 x i64> %966, %963
  %968 = extractelement <8 x i1> %967, i64 0
  br i1 %968, label %969, label %971

969:                                              ; preds = %964
  %970 = getelementptr inbounds i16, ptr %955, i64 %965
  store i16 2, ptr %970, align 2, !tbaa !41
  br label %971

971:                                              ; preds = %969, %964
  %972 = extractelement <8 x i1> %967, i64 1
  br i1 %972, label %973, label %976

973:                                              ; preds = %971
  %974 = or i64 %965, 1
  %975 = getelementptr inbounds i16, ptr %955, i64 %974
  store i16 2, ptr %975, align 2, !tbaa !41
  br label %976

976:                                              ; preds = %973, %971
  %977 = extractelement <8 x i1> %967, i64 2
  br i1 %977, label %978, label %981

978:                                              ; preds = %976
  %979 = or i64 %965, 2
  %980 = getelementptr inbounds i16, ptr %955, i64 %979
  store i16 2, ptr %980, align 2, !tbaa !41
  br label %981

981:                                              ; preds = %978, %976
  %982 = extractelement <8 x i1> %967, i64 3
  br i1 %982, label %983, label %986

983:                                              ; preds = %981
  %984 = or i64 %965, 3
  %985 = getelementptr inbounds i16, ptr %955, i64 %984
  store i16 2, ptr %985, align 2, !tbaa !41
  br label %986

986:                                              ; preds = %983, %981
  %987 = extractelement <8 x i1> %967, i64 4
  br i1 %987, label %988, label %991

988:                                              ; preds = %986
  %989 = or i64 %965, 4
  %990 = getelementptr inbounds i16, ptr %955, i64 %989
  store i16 2, ptr %990, align 2, !tbaa !41
  br label %991

991:                                              ; preds = %988, %986
  %992 = extractelement <8 x i1> %967, i64 5
  br i1 %992, label %993, label %996

993:                                              ; preds = %991
  %994 = or i64 %965, 5
  %995 = getelementptr inbounds i16, ptr %955, i64 %994
  store i16 2, ptr %995, align 2, !tbaa !41
  br label %996

996:                                              ; preds = %993, %991
  %997 = extractelement <8 x i1> %967, i64 6
  br i1 %997, label %998, label %1001

998:                                              ; preds = %996
  %999 = or i64 %965, 6
  %1000 = getelementptr inbounds i16, ptr %955, i64 %999
  store i16 2, ptr %1000, align 2, !tbaa !41
  br label %1001

1001:                                             ; preds = %998, %996
  %1002 = extractelement <8 x i1> %967, i64 7
  br i1 %1002, label %1003, label %1006

1003:                                             ; preds = %1001
  %1004 = or i64 %965, 7
  %1005 = getelementptr inbounds i16, ptr %955, i64 %1004
  store i16 2, ptr %1005, align 2, !tbaa !41
  br label %1006

1006:                                             ; preds = %1003, %1001
  %1007 = add i64 %965, 8
  %1008 = add <8 x i64> %966, <i64 8, i64 8, i64 8, i64 8, i64 8, i64 8, i64 8, i64 8>
  %1009 = icmp eq i64 %1007, %960
  br i1 %1009, label %1010, label %964, !llvm.loop !49

1010:                                             ; preds = %1006, %949
  %1011 = load ptr, ptr @firstsymbol, align 8, !tbaa !11
  %1012 = icmp eq ptr %1011, null
  br i1 %1012, label %1050, label %1013

1013:                                             ; preds = %1010
  %1014 = load i32, ptr @ntokens, align 4, !tbaa !7
  %1015 = load i32, ptr @translations, align 4
  %1016 = icmp ne i32 %1015, 0
  %1017 = load ptr, ptr @token_translations, align 8
  br label %1018

1018:                                             ; preds = %1046, %1013
  %1019 = phi ptr [ %1048, %1046 ], [ %1011, %1013 ]
  %1020 = getelementptr inbounds %struct.bucket, ptr %1019, i64 0, i32 4
  %1021 = load i16, ptr %1020, align 8, !tbaa !33
  %1022 = sext i16 %1021 to i32
  %1023 = icmp sgt i32 %1014, %1022
  %1024 = select i1 %1023, i1 %1016, i1 false
  br i1 %1024, label %1025, label %1046

1025:                                             ; preds = %1018
  %1026 = getelementptr inbounds %struct.bucket, ptr %1019, i64 0, i32 7
  %1027 = load i16, ptr %1026, align 2, !tbaa !45
  %1028 = sext i16 %1027 to i64
  %1029 = getelementptr inbounds i16, ptr %1017, i64 %1028
  %1030 = load i16, ptr %1029, align 2, !tbaa !41
  %1031 = icmp eq i16 %1030, 2
  br i1 %1031, label %1045, label %1032

1032:                                             ; preds = %1025
  %.lcssa31 = phi i16 [ %1027, %1025 ]
  %.lcssa30 = phi i16 [ %1030, %1025 ]
  %.lcssa29 = phi ptr [ %1019, %1025 ]
  %1033 = load ptr, ptr @tags, align 8, !tbaa !11
  %1034 = sext i16 %.lcssa30 to i64
  %1035 = getelementptr inbounds ptr, ptr %1033, i64 %1034
  %1036 = load ptr, ptr %1035, align 8, !tbaa !11
  %1037 = ptrtoint ptr %1036 to i64
  %1038 = trunc i64 %1037 to i32
  %1039 = getelementptr inbounds %struct.bucket, ptr %.lcssa29, i64 0, i32 2
  %1040 = load ptr, ptr %1039, align 8, !tbaa !29
  %1041 = ptrtoint ptr %1040 to i64
  %1042 = trunc i64 %1041 to i32
  %1043 = sext i16 %.lcssa31 to i32
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %5) #32
  %1044 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) @.str.62, i32 noundef %1038, i32 noundef %1042, i32 noundef %1043, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #25
  call fastcc void @fatal(ptr noundef nonnull %5) #26
  unreachable

1045:                                             ; preds = %1025
  store i16 %1021, ptr %1029, align 2, !tbaa !41
  br label %1046

1046:                                             ; preds = %1045, %1018
  %1047 = getelementptr inbounds %struct.bucket, ptr %1019, i64 0, i32 1
  %1048 = load ptr, ptr %1047, align 8, !tbaa !11
  %1049 = icmp eq ptr %1048, null
  br i1 %1049, label %1050, label %1018, !llvm.loop !52

1050:                                             ; preds = %1046, %1010
  %1051 = load ptr, ptr @errtoken, align 8, !tbaa !11
  %1052 = getelementptr inbounds %struct.bucket, ptr %1051, i64 0, i32 4
  %1053 = load i16, ptr %1052, align 8, !tbaa !33
  %1054 = sext i16 %1053 to i32
  store i32 %1054, ptr @error_token_number, align 4, !tbaa !7
  %1055 = load ptr, ptr @ftable, align 8, !tbaa !11
  tail call fastcc void @output_token_defines(ptr noundef %1055) #26
  %1056 = load ptr, ptr @startval, align 8, !tbaa !11
  %1057 = getelementptr inbounds %struct.bucket, ptr %1056, i64 0, i32 8
  %1058 = load i8, ptr %1057, align 8, !tbaa !20
  switch i8 %1058, label %1067 [
    i8 0, label %1060
    i8 1, label %1059
  ]

1059:                                             ; preds = %1050
  br label %1060

1060:                                             ; preds = %1059, %1050
  %1061 = phi ptr [ @.str.64, %1059 ], [ @.str.63, %1050 ]
  %1062 = getelementptr inbounds %struct.bucket, ptr %1056, i64 0, i32 2
  %1063 = load ptr, ptr %1062, align 8, !tbaa !29
  %1064 = ptrtoint ptr %1063 to i64
  %1065 = trunc i64 %1064 to i32
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %4) #32
  %1066 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) %1061, i32 noundef %1065, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #25
  call fastcc void @fatal(ptr noundef nonnull %4) #26
  unreachable

1067:                                             ; preds = %1050
  %1068 = getelementptr inbounds %struct.bucket, ptr %1056, i64 0, i32 4
  %1069 = load i16, ptr %1068, align 8, !tbaa !33
  %1070 = sext i16 %1069 to i32
  store i32 %1070, ptr @start_symbol, align 4, !tbaa !7
  %1071 = load i1, ptr @definesflag, align 4
  br i1 %1071, label %1072, label %1105

1072:                                             ; preds = %1067
  %1073 = load ptr, ptr @fdefines, align 8, !tbaa !11
  tail call fastcc void @output_token_defines(ptr noundef %1073) #26
  %1074 = load i1, ptr @semantic_parser, align 4
  br i1 %1074, label %1075, label %1102

1075:                                             ; preds = %1072
  %1076 = load i32, ptr @ntokens, align 4, !tbaa !7
  %1077 = load i32, ptr @nsyms, align 4, !tbaa !7
  %1078 = icmp slt i32 %1076, %1077
  br i1 %1078, label %1079, label %1102

1079:                                             ; preds = %1075
  %1080 = sext i32 %1076 to i64
  %1081 = load ptr, ptr @tags, align 8, !tbaa !11
  br label %1082

1082:                                             ; preds = %1096, %1079
  %1083 = phi i32 [ %1077, %1079 ], [ %1097, %1096 ]
  %1084 = phi ptr [ %1081, %1079 ], [ %1098, %1096 ]
  %1085 = phi i64 [ %1080, %1079 ], [ %1099, %1096 ]
  %1086 = getelementptr inbounds ptr, ptr %1084, i64 %1085
  %1087 = load ptr, ptr %1086, align 8, !tbaa !11
  %1088 = load i8, ptr %1087, align 1, !tbaa !13
  %1089 = icmp eq i8 %1088, 64
  br i1 %1089, label %1096, label %1090

1090:                                             ; preds = %1082
  %1091 = load ptr, ptr @fdefines, align 8, !tbaa !11
  %1092 = trunc i64 %1085 to i32
  %1093 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1091, ptr noundef nonnull @.str.65, ptr noundef nonnull %1087, i32 noundef %1092) #26
  %1094 = load ptr, ptr @tags, align 8, !tbaa !11
  %1095 = load i32, ptr @nsyms, align 4, !tbaa !7
  br label %1096

1096:                                             ; preds = %1090, %1082
  %1097 = phi i32 [ %1083, %1082 ], [ %1095, %1090 ]
  %1098 = phi ptr [ %1084, %1082 ], [ %1094, %1090 ]
  %1099 = add nsw i64 %1085, 1
  %1100 = sext i32 %1097 to i64
  %1101 = icmp slt i64 %1099, %1100
  br i1 %1101, label %1082, label %1102, !llvm.loop !53

1102:                                             ; preds = %1096, %1075, %1072
  %1103 = load ptr, ptr @fdefines, align 8, !tbaa !11
  %1104 = tail call i32 @fclose(ptr noundef %1103) #26
  store ptr null, ptr @fdefines, align 8, !tbaa !11
  br label %1105

1105:                                             ; preds = %1102, %1067
  %1106 = load i32, ptr @nitems, align 4, !tbaa !7
  %1107 = shl i32 %1106, 1
  %1108 = add i32 %1107, 2
  %1109 = tail call fastcc ptr @mallocate(i32 noundef %1108) #25
  store ptr %1109, ptr @ritem, align 8, !tbaa !11
  %1110 = load i32, ptr @nrules, align 4, !tbaa !7
  %1111 = shl i32 %1110, 1
  %1112 = tail call fastcc ptr @mallocate(i32 noundef %1111) #25
  %1113 = getelementptr inbounds i16, ptr %1112, i64 -1
  store ptr %1113, ptr @rlhs, align 8, !tbaa !11
  %1114 = load i32, ptr @nrules, align 4, !tbaa !7
  %1115 = shl i32 %1114, 1
  %1116 = tail call fastcc ptr @mallocate(i32 noundef %1115) #25
  %1117 = getelementptr inbounds i16, ptr %1116, i64 -1
  store ptr %1117, ptr @rrhs, align 8, !tbaa !11
  %1118 = load i32, ptr @nrules, align 4, !tbaa !7
  %1119 = shl i32 %1118, 1
  %1120 = tail call fastcc ptr @mallocate(i32 noundef %1119) #25
  %1121 = getelementptr inbounds i16, ptr %1120, i64 -1
  store ptr %1121, ptr @rprec, align 8, !tbaa !11
  %1122 = load i32, ptr @nrules, align 4, !tbaa !7
  %1123 = shl i32 %1122, 1
  %1124 = tail call fastcc ptr @mallocate(i32 noundef %1123) #25
  %1125 = getelementptr inbounds i16, ptr %1124, i64 -1
  store ptr %1125, ptr @rassoc, align 8, !tbaa !11
  %1126 = load ptr, ptr @grammar, align 8, !tbaa !11
  %1127 = icmp eq ptr %1126, null
  %1128 = load ptr, ptr @ritem, align 8
  br i1 %1127, label %1202, label %1129

1129:                                             ; preds = %1105
  %1130 = load ptr, ptr @rlhs, align 8, !tbaa !11
  %1131 = load ptr, ptr @rrhs, align 8, !tbaa !11
  %1132 = load ptr, ptr @rprec, align 8
  br label %1133

1133:                                             ; preds = %1196, %1129
  %1134 = phi i64 [ 1, %1129 ], [ %1197, %1196 ]
  %1135 = phi i32 [ 0, %1129 ], [ %1193, %1196 ]
  %1136 = phi ptr [ %1126, %1129 ], [ %1198, %1196 ]
  %1137 = getelementptr inbounds %struct.symbol_list, ptr %1136, i64 0, i32 1
  %1138 = load ptr, ptr %1137, align 8, !tbaa !31
  %1139 = getelementptr inbounds %struct.bucket, ptr %1138, i64 0, i32 4
  %1140 = load i16, ptr %1139, align 8, !tbaa !33
  %1141 = getelementptr inbounds i16, ptr %1130, i64 %1134
  store i16 %1140, ptr %1141, align 2, !tbaa !41
  %1142 = trunc i32 %1135 to i16
  %1143 = getelementptr inbounds i16, ptr %1131, i64 %1134
  store i16 %1142, ptr %1143, align 2, !tbaa !41
  %1144 = getelementptr inbounds %struct.symbol_list, ptr %1136, i64 0, i32 2
  %1145 = load ptr, ptr %1144, align 8, !tbaa !35
  %1146 = load ptr, ptr %1136, align 8, !tbaa !34
  %1147 = icmp eq ptr %1146, null
  br i1 %1147, label %1178, label %1148

1148:                                             ; preds = %1133
  %1149 = getelementptr inbounds i16, ptr %1132, i64 %1134
  %1150 = getelementptr inbounds i16, ptr %1125, i64 %1134
  %1151 = sext i32 %1135 to i64
  br label %1152

1152:                                             ; preds = %1171, %1148
  %1153 = phi i64 [ %1151, %1148 ], [ %1161, %1171 ]
  %1154 = phi ptr [ %1146, %1148 ], [ %1172, %1171 ]
  %1155 = getelementptr inbounds %struct.symbol_list, ptr %1154, i64 0, i32 1
  %1156 = load ptr, ptr %1155, align 8, !tbaa !31
  %1157 = icmp eq ptr %1156, null
  br i1 %1157, label %1174, label %1158

1158:                                             ; preds = %1152
  %1159 = getelementptr inbounds %struct.bucket, ptr %1156, i64 0, i32 4
  %1160 = load i16, ptr %1159, align 8, !tbaa !33
  %1161 = add i64 %1153, 1
  %1162 = getelementptr inbounds i16, ptr %1128, i64 %1153
  store i16 %1160, ptr %1162, align 2, !tbaa !41
  %1163 = getelementptr inbounds %struct.bucket, ptr %1156, i64 0, i32 8
  %1164 = load i8, ptr %1163, align 8, !tbaa !20
  %1165 = icmp eq i8 %1164, 1
  br i1 %1165, label %1166, label %1171

1166:                                             ; preds = %1158
  %1167 = getelementptr inbounds %struct.bucket, ptr %1156, i64 0, i32 5
  %1168 = load i16, ptr %1167, align 2, !tbaa !46
  store i16 %1168, ptr %1149, align 2, !tbaa !41
  %1169 = getelementptr inbounds %struct.bucket, ptr %1156, i64 0, i32 6
  %1170 = load i16, ptr %1169, align 4, !tbaa !47
  store i16 %1170, ptr %1150, align 2, !tbaa !41
  br label %1171

1171:                                             ; preds = %1166, %1158
  %1172 = load ptr, ptr %1154, align 8, !tbaa !34
  %1173 = icmp eq ptr %1172, null
  br i1 %1173, label %1176, label %1152, !llvm.loop !54

1174:                                             ; preds = %1152
  %.lcssa25 = phi i64 [ %1153, %1152 ]
  %.lcssa23 = phi ptr [ %1154, %1152 ]
  %1175 = trunc i64 %.lcssa25 to i32
  br label %1178

1176:                                             ; preds = %1171
  %.lcssa27 = phi i64 [ %1161, %1171 ]
  %1177 = trunc i64 %.lcssa27 to i32
  br label %1178

1178:                                             ; preds = %1176, %1174, %1133
  %1179 = phi i32 [ %1135, %1133 ], [ %1175, %1174 ], [ %1177, %1176 ]
  %1180 = phi ptr [ null, %1133 ], [ %.lcssa23, %1174 ], [ null, %1176 ]
  %1181 = phi i1 [ true, %1133 ], [ false, %1174 ], [ true, %1176 ]
  %1182 = icmp eq ptr %1145, null
  br i1 %1182, label %1190, label %1183

1183:                                             ; preds = %1178
  %1184 = getelementptr inbounds %struct.bucket, ptr %1145, i64 0, i32 5
  %1185 = load i16, ptr %1184, align 2, !tbaa !46
  %1186 = getelementptr inbounds i16, ptr %1132, i64 %1134
  store i16 %1185, ptr %1186, align 2, !tbaa !41
  %1187 = getelementptr inbounds %struct.bucket, ptr %1145, i64 0, i32 6
  %1188 = load i16, ptr %1187, align 4, !tbaa !47
  %1189 = getelementptr inbounds i16, ptr %1125, i64 %1134
  store i16 %1188, ptr %1189, align 2, !tbaa !41
  br label %1190

1190:                                             ; preds = %1183, %1178
  %1191 = trunc i64 %1134 to i16
  %1192 = sub i16 0, %1191
  %1193 = add nsw i32 %1179, 1
  %1194 = sext i32 %1179 to i64
  %1195 = getelementptr inbounds i16, ptr %1128, i64 %1194
  store i16 %1192, ptr %1195, align 2, !tbaa !41
  br i1 %1181, label %1200, label %1196

1196:                                             ; preds = %1190
  %1197 = add nuw i64 %1134, 1
  %1198 = load ptr, ptr %1180, align 8, !tbaa !34
  %1199 = icmp eq ptr %1198, null
  br i1 %1199, label %1200, label %1133, !llvm.loop !55

1200:                                             ; preds = %1196, %1190
  %.lcssa28 = phi i32 [ %1193, %1196 ], [ %1193, %1190 ]
  %1201 = sext i32 %.lcssa28 to i64
  br label %1202

1202:                                             ; preds = %1200, %1105
  %1203 = phi i64 [ 0, %1105 ], [ %1201, %1200 ]
  %1204 = getelementptr inbounds i16, ptr %1128, i64 %1203
  store i16 0, ptr %1204, align 2, !tbaa !41
  br label %1205

1205:                                             ; preds = %1215, %1202
  %1206 = phi i64 [ 0, %1202 ], [ %1216, %1215 ]
  %1207 = load ptr, ptr @symtab, align 8, !tbaa !11
  %1208 = getelementptr inbounds ptr, ptr %1207, i64 %1206
  %1209 = load ptr, ptr %1208, align 8, !tbaa !11
  %1210 = icmp eq ptr %1209, null
  br i1 %1210, label %1215, label %1211

1211:                                             ; preds = %1211, %1205
  %1212 = phi ptr [ %1213, %1211 ], [ %1209, %1205 ]
  %1213 = load ptr, ptr %1212, align 8, !tbaa !56
  tail call void @free(ptr noundef nonnull %1212) #25
  %1214 = icmp eq ptr %1213, null
  br i1 %1214, label %1215, label %1211, !llvm.loop !57

1215:                                             ; preds = %1211, %1205
  %1216 = add nuw nsw i64 %1206, 1
  %1217 = icmp eq i64 %1216, 1009
  br i1 %1217, label %1218, label %1205, !llvm.loop !58

1218:                                             ; preds = %1215
  %1219 = load i32, ptr @nvars, align 4, !tbaa !7
  %1220 = shl i32 %1219, 3
  %1221 = tail call fastcc ptr @mallocate(i32 noundef %1220) #25
  %1222 = load i32, ptr @ntokens, align 4, !tbaa !7
  %1223 = sext i32 %1222 to i64
  %1224 = sub nsw i64 0, %1223
  %1225 = getelementptr inbounds ptr, ptr %1221, i64 %1224
  %1226 = load i32, ptr @nrules, align 4, !tbaa !7
  %1227 = shl i32 %1226, 4
  %1228 = add i32 %1227, 16
  %1229 = tail call fastcc ptr @mallocate(i32 noundef %1228) #25
  %1230 = load i32, ptr @nrules, align 4, !tbaa !7
  %1231 = icmp sgt i32 %1230, 0
  br i1 %1231, label %1232, label %1248

1232:                                             ; preds = %1218
  %1233 = zext i32 %1230 to i64
  %1234 = load ptr, ptr @rlhs, align 8, !tbaa !11
  br label %1235

1235:                                             ; preds = %1235, %1232
  %1236 = phi i64 [ %1233, %1232 ], [ %1246, %1235 ]
  %1237 = phi ptr [ %1229, %1232 ], [ %1245, %1235 ]
  %1238 = getelementptr inbounds i16, ptr %1234, i64 %1236
  %1239 = load i16, ptr %1238, align 2, !tbaa !41
  %1240 = sext i16 %1239 to i64
  %1241 = getelementptr inbounds ptr, ptr %1225, i64 %1240
  %1242 = load ptr, ptr %1241, align 8, !tbaa !11
  store ptr %1242, ptr %1237, align 8, !tbaa !59
  %1243 = trunc i64 %1236 to i16
  %1244 = getelementptr inbounds %struct.shorts, ptr %1237, i64 0, i32 1
  store i16 %1243, ptr %1244, align 8, !tbaa !61
  store ptr %1237, ptr %1241, align 8, !tbaa !11
  %1245 = getelementptr inbounds %struct.shorts, ptr %1237, i64 1
  %1246 = add nsw i64 %1236, -1
  %1247 = icmp ugt i64 %1236, 1
  br i1 %1247, label %1235, label %1248, !llvm.loop !62

1248:                                             ; preds = %1235, %1218
  %1249 = load i32, ptr @nvars, align 4, !tbaa !7
  %1250 = shl i32 %1249, 3
  %1251 = tail call fastcc ptr @mallocate(i32 noundef %1250) #25
  %1252 = load i32, ptr @ntokens, align 4, !tbaa !7
  %1253 = sext i32 %1252 to i64
  %1254 = sub nsw i64 0, %1253
  %1255 = getelementptr inbounds ptr, ptr %1251, i64 %1254
  store ptr %1255, ptr @derives, align 8, !tbaa !11
  %1256 = load i32, ptr @nvars, align 4, !tbaa !7
  %1257 = load i32, ptr @nrules, align 4, !tbaa !7
  %1258 = add nsw i32 %1257, %1256
  %1259 = shl i32 %1258, 1
  %1260 = tail call fastcc ptr @mallocate(i32 noundef %1259) #25
  %1261 = load i32, ptr @ntokens, align 4, !tbaa !7
  %1262 = load i32, ptr @nsyms, align 4, !tbaa !7
  %1263 = icmp slt i32 %1261, %1262
  br i1 %1263, label %1264, label %1288

1264:                                             ; preds = %1248
  %1265 = sext i32 %1261 to i64
  %1266 = sext i32 %1262 to i64
  %1267 = load ptr, ptr @derives, align 8, !tbaa !11
  br label %1268

1268:                                             ; preds = %1283, %1264
  %1269 = phi i64 [ %1265, %1264 ], [ %1286, %1283 ]
  %1270 = phi ptr [ %1260, %1264 ], [ %1285, %1283 ]
  %1271 = getelementptr inbounds ptr, ptr %1267, i64 %1269
  store ptr %1270, ptr %1271, align 8, !tbaa !11
  %1272 = getelementptr inbounds ptr, ptr %1225, i64 %1269
  %1273 = load ptr, ptr %1272, align 8, !tbaa !11
  %1274 = icmp eq ptr %1273, null
  br i1 %1274, label %1283, label %1275

1275:                                             ; preds = %1275, %1268
  %1276 = phi ptr [ %1281, %1275 ], [ %1273, %1268 ]
  %1277 = phi ptr [ %1280, %1275 ], [ %1270, %1268 ]
  %1278 = getelementptr inbounds %struct.shorts, ptr %1276, i64 0, i32 1
  %1279 = load i16, ptr %1278, align 8, !tbaa !61
  %1280 = getelementptr inbounds i16, ptr %1277, i64 1
  store i16 %1279, ptr %1277, align 2, !tbaa !41
  %1281 = load ptr, ptr %1276, align 8, !tbaa !11
  %1282 = icmp eq ptr %1281, null
  br i1 %1282, label %1283, label %1275, !llvm.loop !63

1283:                                             ; preds = %1275, %1268
  %1284 = phi ptr [ %1270, %1268 ], [ %1280, %1275 ]
  %1285 = getelementptr inbounds i16, ptr %1284, i64 1
  store i16 -1, ptr %1284, align 2, !tbaa !41
  %1286 = add nsw i64 %1269, 1
  %1287 = icmp eq i64 %1286, %1266
  br i1 %1287, label %1288, label %1268, !llvm.loop !64

1288:                                             ; preds = %1283, %1248
  %1289 = icmp eq ptr %1221, null
  br i1 %1289, label %1293, label %1290

1290:                                             ; preds = %1288
  %1291 = sext i32 %1261 to i64
  %1292 = getelementptr inbounds ptr, ptr %1225, i64 %1291
  tail call void @free(ptr noundef %1292) #25
  br label %1293

1293:                                             ; preds = %1290, %1288
  %1294 = icmp eq ptr %1229, null
  br i1 %1294, label %1296, label %1295

1295:                                             ; preds = %1293
  tail call void @free(ptr noundef nonnull %1229) #25
  br label %1296

1296:                                             ; preds = %1295, %1293
  %1297 = load i32, ptr @nvars, align 4, !tbaa !7
  %1298 = tail call fastcc ptr @mallocate(i32 noundef %1297) #25
  %1299 = load i32, ptr @ntokens, align 4, !tbaa !7
  %1300 = sext i32 %1299 to i64
  %1301 = sub nsw i64 0, %1300
  %1302 = getelementptr inbounds i8, ptr %1298, i64 %1301
  store ptr %1302, ptr @nullable, align 8, !tbaa !11
  %1303 = load i32, ptr @nvars, align 4, !tbaa !7
  %1304 = shl i32 %1303, 1
  %1305 = tail call fastcc ptr @mallocate(i32 noundef %1304) #25
  %1306 = load i32, ptr @nrules, align 4, !tbaa !7
  %1307 = shl i32 %1306, 1
  %1308 = add i32 %1307, 2
  %1309 = tail call fastcc ptr @mallocate(i32 noundef %1308) #25
  %1310 = load i32, ptr @nvars, align 4, !tbaa !7
  %1311 = shl i32 %1310, 3
  %1312 = tail call fastcc ptr @mallocate(i32 noundef %1311) #25
  %1313 = load i32, ptr @ntokens, align 4, !tbaa !7
  %1314 = sext i32 %1313 to i64
  %1315 = sub nsw i64 0, %1314
  %1316 = getelementptr inbounds ptr, ptr %1312, i64 %1315
  %1317 = load i32, ptr @nitems, align 4, !tbaa !7
  %1318 = load i32, ptr @nvars, align 4, !tbaa !7
  %1319 = add nsw i32 %1318, %1317
  %1320 = shl i32 %1319, 4
  %1321 = add i32 %1320, 16
  %1322 = tail call fastcc ptr @mallocate(i32 noundef %1321) #25
  %1323 = load ptr, ptr @ritem, align 8, !tbaa !11
  %1324 = load i16, ptr %1323, align 2, !tbaa !41
  %1325 = icmp eq i16 %1324, 0
  br i1 %1325, label %1426, label %1326

1326:                                             ; preds = %1296
  %1327 = load i32, ptr @ntokens, align 4
  %1328 = load ptr, ptr @rlhs, align 8
  %1329 = load ptr, ptr @nullable, align 8
  br label %1332

1330:                                             ; preds = %1382
  %.lcssa22 = phi ptr [ %1384, %1382 ]
  %1331 = icmp ult ptr %1305, %.lcssa22
  br i1 %1331, label %1391, label %1426

1332:                                             ; preds = %1382, %1326
  %1333 = phi i16 [ %1386, %1382 ], [ %1324, %1326 ]
  %1334 = phi ptr [ %1385, %1382 ], [ %1323, %1326 ]
  %1335 = phi ptr [ %1384, %1382 ], [ %1305, %1326 ]
  %1336 = phi ptr [ %1383, %1382 ], [ %1322, %1326 ]
  %1337 = sext i16 %1333 to i32
  %1338 = icmp slt i16 %1333, 0
  %1339 = getelementptr inbounds i16, ptr %1334, i64 1
  br i1 %1338, label %1340, label %1351

1340:                                             ; preds = %1332
  %1341 = sub nsw i32 0, %1337
  %1342 = zext i32 %1341 to i64
  %1343 = getelementptr inbounds i16, ptr %1328, i64 %1342
  %1344 = load i16, ptr %1343, align 2, !tbaa !41
  %1345 = sext i16 %1344 to i64
  %1346 = getelementptr inbounds i8, ptr %1329, i64 %1345
  %1347 = load i8, ptr %1346, align 1, !tbaa !13
  %1348 = icmp eq i8 %1347, 0
  br i1 %1348, label %1349, label %1382

1349:                                             ; preds = %1340
  store i8 1, ptr %1346, align 1, !tbaa !13
  %1350 = getelementptr inbounds i16, ptr %1335, i64 1
  store i16 %1344, ptr %1335, align 2, !tbaa !41
  br label %1382

1351:                                             ; preds = %1351, %1332
  %1352 = phi ptr [ %1357, %1351 ], [ %1339, %1332 ]
  %1353 = phi i8 [ %1356, %1351 ], [ 0, %1332 ]
  %1354 = phi i32 [ %1359, %1351 ], [ %1337, %1332 ]
  %1355 = icmp slt i32 %1354, %1327
  %1356 = select i1 %1355, i8 1, i8 %1353
  %1357 = getelementptr inbounds i16, ptr %1352, i64 1
  %1358 = load i16, ptr %1352, align 2, !tbaa !41
  %1359 = sext i16 %1358 to i32
  %1360 = icmp sgt i16 %1358, 0
  br i1 %1360, label %1351, label %1361, !llvm.loop !65

1361:                                             ; preds = %1351
  %.lcssa21 = phi i8 [ %1356, %1351 ]
  %.lcssa20 = phi ptr [ %1357, %1351 ]
  %.lcssa19 = phi i32 [ %1359, %1351 ]
  %1362 = icmp eq i8 %.lcssa21, 0
  br i1 %1362, label %1363, label %1382

1363:                                             ; preds = %1361
  %1364 = sub nsw i32 0, %.lcssa19
  %1365 = zext i32 %1364 to i64
  %1366 = getelementptr inbounds i16, ptr %1309, i64 %1365
  %1367 = trunc i32 %1364 to i16
  br label %1368

1368:                                             ; preds = %1368, %1363
  %1369 = phi i16 [ %1333, %1363 ], [ %1380, %1368 ]
  %1370 = phi ptr [ %1339, %1363 ], [ %1379, %1368 ]
  %1371 = phi ptr [ %1336, %1363 ], [ %1378, %1368 ]
  %1372 = zext i16 %1369 to i64
  %1373 = load i16, ptr %1366, align 2, !tbaa !41
  %1374 = add i16 %1373, 1
  store i16 %1374, ptr %1366, align 2, !tbaa !41
  %1375 = getelementptr inbounds ptr, ptr %1316, i64 %1372
  %1376 = load ptr, ptr %1375, align 8, !tbaa !11
  store ptr %1376, ptr %1371, align 8, !tbaa !59
  %1377 = getelementptr inbounds %struct.shorts, ptr %1371, i64 0, i32 1
  store i16 %1367, ptr %1377, align 8, !tbaa !61
  store ptr %1371, ptr %1375, align 8, !tbaa !11
  %1378 = getelementptr inbounds %struct.shorts, ptr %1371, i64 1
  %1379 = getelementptr inbounds i16, ptr %1370, i64 1
  %1380 = load i16, ptr %1370, align 2, !tbaa !41
  %1381 = icmp sgt i16 %1380, 0
  br i1 %1381, label %1368, label %1382, !llvm.loop !66

1382:                                             ; preds = %1368, %1361, %1349, %1340
  %1383 = phi ptr [ %1336, %1340 ], [ %1336, %1349 ], [ %1336, %1361 ], [ %1378, %1368 ]
  %1384 = phi ptr [ %1335, %1340 ], [ %1350, %1349 ], [ %1335, %1361 ], [ %1335, %1368 ]
  %1385 = phi ptr [ %1339, %1340 ], [ %1339, %1349 ], [ %.lcssa20, %1361 ], [ %1379, %1368 ]
  %1386 = load i16, ptr %1385, align 2, !tbaa !41
  %1387 = icmp eq i16 %1386, 0
  br i1 %1387, label %1330, label %1332, !llvm.loop !67

1388:                                             ; preds = %1423, %1391
  %1389 = phi ptr [ %1393, %1391 ], [ %1424, %1423 ]
  %1390 = icmp ult ptr %1394, %1389
  br i1 %1390, label %1391, label %1426, !llvm.loop !68

1391:                                             ; preds = %1388, %1330
  %1392 = phi ptr [ %1394, %1388 ], [ %1305, %1330 ]
  %1393 = phi ptr [ %1389, %1388 ], [ %.lcssa22, %1330 ]
  %1394 = getelementptr inbounds i16, ptr %1392, i64 1
  %1395 = load i16, ptr %1392, align 2, !tbaa !41
  %1396 = sext i16 %1395 to i64
  %1397 = getelementptr inbounds ptr, ptr %1316, i64 %1396
  %1398 = load ptr, ptr %1397, align 8, !tbaa !11
  %1399 = icmp eq ptr %1398, null
  br i1 %1399, label %1388, label %1400

1400:                                             ; preds = %1391
  %1401 = load ptr, ptr @rlhs, align 8
  %1402 = load ptr, ptr @nullable, align 8
  br label %1403

1403:                                             ; preds = %1423, %1400
  %1404 = phi ptr [ %1424, %1423 ], [ %1393, %1400 ]
  %1405 = phi ptr [ %1408, %1423 ], [ %1398, %1400 ]
  %1406 = getelementptr inbounds %struct.shorts, ptr %1405, i64 0, i32 1
  %1407 = load i16, ptr %1406, align 8, !tbaa !61
  %1408 = load ptr, ptr %1405, align 8, !tbaa !59
  %1409 = sext i16 %1407 to i64
  %1410 = getelementptr inbounds i16, ptr %1309, i64 %1409
  %1411 = load i16, ptr %1410, align 2, !tbaa !41
  %1412 = add i16 %1411, -1
  store i16 %1412, ptr %1410, align 2, !tbaa !41
  %1413 = icmp eq i16 %1412, 0
  br i1 %1413, label %1414, label %1423

1414:                                             ; preds = %1403
  %1415 = getelementptr inbounds i16, ptr %1401, i64 %1409
  %1416 = load i16, ptr %1415, align 2, !tbaa !41
  %1417 = sext i16 %1416 to i64
  %1418 = getelementptr inbounds i8, ptr %1402, i64 %1417
  %1419 = load i8, ptr %1418, align 1, !tbaa !13
  %1420 = icmp eq i8 %1419, 0
  br i1 %1420, label %1421, label %1423

1421:                                             ; preds = %1414
  store i8 1, ptr %1418, align 1, !tbaa !13
  %1422 = getelementptr inbounds i16, ptr %1404, i64 1
  store i16 %1416, ptr %1404, align 2, !tbaa !41
  br label %1423

1423:                                             ; preds = %1421, %1414, %1403
  %1424 = phi ptr [ %1404, %1414 ], [ %1422, %1421 ], [ %1404, %1403 ]
  %1425 = icmp eq ptr %1408, null
  br i1 %1425, label %1388, label %1403, !llvm.loop !69

1426:                                             ; preds = %1388, %1330, %1296
  %1427 = icmp eq ptr %1305, null
  br i1 %1427, label %1429, label %1428

1428:                                             ; preds = %1426
  tail call void @free(ptr noundef nonnull %1305) #25
  br label %1429

1429:                                             ; preds = %1428, %1426
  %1430 = icmp eq ptr %1309, null
  br i1 %1430, label %1432, label %1431

1431:                                             ; preds = %1429
  tail call void @free(ptr noundef nonnull %1309) #25
  br label %1432

1432:                                             ; preds = %1431, %1429
  %1433 = icmp eq ptr %1312, null
  br i1 %1433, label %1438, label %1434

1434:                                             ; preds = %1432
  %1435 = load i32, ptr @ntokens, align 4, !tbaa !7
  %1436 = sext i32 %1435 to i64
  %1437 = getelementptr inbounds ptr, ptr %1316, i64 %1436
  tail call void @free(ptr noundef %1437) #25
  br label %1438

1438:                                             ; preds = %1434, %1432
  %1439 = icmp eq ptr %1322, null
  br i1 %1439, label %1441, label %1440

1440:                                             ; preds = %1438
  tail call void @free(ptr noundef nonnull %1322) #25
  br label %1441

1441:                                             ; preds = %1440, %1438
  %1442 = load i32, ptr @nsyms, align 4, !tbaa !7
  %1443 = shl i32 %1442, 1
  %1444 = tail call fastcc ptr @mallocate(i32 noundef %1443) #25
  %1445 = load ptr, ptr @ritem, align 8, !tbaa !11
  %1446 = load i16, ptr %1445, align 2, !tbaa !41
  %1447 = icmp eq i16 %1446, 0
  br i1 %1447, label %1464, label %1448

1448:                                             ; preds = %1460, %1441
  %1449 = phi i16 [ %1462, %1460 ], [ %1446, %1441 ]
  %1450 = phi ptr [ %1452, %1460 ], [ %1445, %1441 ]
  %1451 = phi i32 [ %1461, %1460 ], [ 0, %1441 ]
  %1452 = getelementptr inbounds i16, ptr %1450, i64 1
  %1453 = icmp sgt i16 %1449, 0
  br i1 %1453, label %1454, label %1460

1454:                                             ; preds = %1448
  %1455 = zext i16 %1449 to i64
  %1456 = add nsw i32 %1451, 1
  %1457 = getelementptr inbounds i16, ptr %1444, i64 %1455
  %1458 = load i16, ptr %1457, align 2, !tbaa !41
  %1459 = add i16 %1458, 1
  store i16 %1459, ptr %1457, align 2, !tbaa !41
  br label %1460

1460:                                             ; preds = %1454, %1448
  %1461 = phi i32 [ %1456, %1454 ], [ %1451, %1448 ]
  %1462 = load i16, ptr %1452, align 2, !tbaa !41
  %1463 = icmp eq i16 %1462, 0
  br i1 %1463, label %1464, label %1448, !llvm.loop !70

1464:                                             ; preds = %1460, %1441
  %1465 = phi i32 [ 0, %1441 ], [ %1461, %1460 ]
  %1466 = load i32, ptr @nsyms, align 4, !tbaa !7
  %1467 = shl i32 %1466, 3
  %1468 = tail call fastcc ptr @mallocate(i32 noundef %1467) #25
  store ptr %1468, ptr @kernel_base, align 8, !tbaa !11
  %1469 = shl i32 %1465, 1
  %1470 = tail call fastcc ptr @mallocate(i32 noundef %1469) #25
  store ptr %1470, ptr @kernel_items, align 8, !tbaa !11
  %1471 = load i32, ptr @nsyms, align 4, !tbaa !7
  %1472 = icmp sgt i32 %1471, 0
  br i1 %1472, label %1473, label %1488

1473:                                             ; preds = %1464
  %1474 = load ptr, ptr @kernel_base, align 8, !tbaa !11
  %1475 = zext i32 %1471 to i64
  br label %1476

1476:                                             ; preds = %1476, %1473
  %1477 = phi i64 [ 0, %1473 ], [ %1486, %1476 ]
  %1478 = phi i32 [ 0, %1473 ], [ %1485, %1476 ]
  %1479 = sext i32 %1478 to i64
  %1480 = getelementptr inbounds i16, ptr %1470, i64 %1479
  %1481 = getelementptr inbounds ptr, ptr %1474, i64 %1477
  store ptr %1480, ptr %1481, align 8, !tbaa !11
  %1482 = getelementptr inbounds i16, ptr %1444, i64 %1477
  %1483 = load i16, ptr %1482, align 2, !tbaa !41
  %1484 = sext i16 %1483 to i32
  %1485 = add nsw i32 %1478, %1484
  %1486 = add nuw nsw i64 %1477, 1
  %1487 = icmp eq i64 %1486, %1475
  br i1 %1487, label %1488, label %1476, !llvm.loop !71

1488:                                             ; preds = %1476, %1464
  store ptr %1444, ptr @shift_symbol, align 8, !tbaa !11
  %1489 = shl i32 %1471, 3
  %1490 = tail call fastcc ptr @mallocate(i32 noundef %1489) #25
  store ptr %1490, ptr @kernel_end, align 8, !tbaa !11
  %1491 = load i32, ptr @nsyms, align 4, !tbaa !7
  %1492 = shl i32 %1491, 1
  %1493 = tail call fastcc ptr @mallocate(i32 noundef %1492) #25
  store ptr %1493, ptr @shiftset, align 8, !tbaa !11
  %1494 = load i32, ptr @nrules, align 4, !tbaa !7
  %1495 = shl i32 %1494, 1
  %1496 = add i32 %1495, 2
  %1497 = tail call fastcc ptr @mallocate(i32 noundef %1496) #25
  store ptr %1497, ptr @redset, align 8, !tbaa !11
  %1498 = tail call fastcc ptr @mallocate(i32 noundef 8072) #25
  store ptr %1498, ptr @state_table.89, align 8, !tbaa !11
  %1499 = load i32, ptr @nitems, align 4, !tbaa !7
  %1500 = shl i32 %1499, 1
  %1501 = tail call fastcc ptr @mallocate(i32 noundef %1500) #25
  store ptr %1501, ptr @itemset, align 8, !tbaa !11
  %1502 = load i32, ptr @nrules, align 4, !tbaa !7
  %1503 = add nsw i32 %1502, 32
  %1504 = sdiv i32 %1503, 32
  store i32 %1504, ptr @rulesetsize, align 4, !tbaa !7
  %1505 = shl nsw i32 %1504, 2
  %1506 = tail call fastcc ptr @mallocate(i32 noundef %1505) #25
  store ptr %1506, ptr @ruleset, align 8, !tbaa !11
  %1507 = load i32, ptr @nvars, align 4, !tbaa !7
  %1508 = load i32, ptr @rulesetsize, align 4, !tbaa !7
  %1509 = shl i32 %1507, 2
  %1510 = mul i32 %1509, %1508
  %1511 = tail call fastcc ptr @mallocate(i32 noundef %1510) #25
  %1512 = load i32, ptr @ntokens, align 4, !tbaa !7
  %1513 = load i32, ptr @rulesetsize, align 4, !tbaa !7
  %1514 = mul nsw i32 %1513, %1512
  %1515 = sext i32 %1514 to i64
  %1516 = sub nsw i64 0, %1515
  %1517 = getelementptr inbounds i32, ptr %1511, i64 %1516
  store ptr %1517, ptr @fderives, align 8, !tbaa !11
  %1518 = load i32, ptr @nvars, align 4, !tbaa !7
  %1519 = add nsw i32 %1518, 31
  %1520 = sdiv i32 %1519, 32
  store i32 %1520, ptr @varsetsize, align 4, !tbaa !7
  %1521 = shl i32 %1518, 2
  %1522 = mul i32 %1521, %1520
  %1523 = tail call fastcc ptr @mallocate(i32 noundef %1522) #25
  store ptr %1523, ptr @firsts, align 8, !tbaa !11
  %1524 = load i32, ptr @ntokens, align 4, !tbaa !7
  %1525 = load i32, ptr @nsyms, align 4, !tbaa !7
  %1526 = icmp slt i32 %1524, %1525
  br i1 %1526, label %1527, label %1569

1527:                                             ; preds = %1488
  %1528 = load ptr, ptr @derives, align 8, !tbaa !11
  %1529 = load ptr, ptr @ritem, align 8
  %1530 = load ptr, ptr @rrhs, align 8
  %1531 = sext i32 %1520 to i64
  %1532 = sext i32 %1524 to i64
  %1533 = sext i32 %1525 to i64
  br label %1534

1534:                                             ; preds = %1565, %1527
  %1535 = phi i64 [ %1532, %1527 ], [ %1567, %1565 ]
  %1536 = phi ptr [ %1523, %1527 ], [ %1566, %1565 ]
  %1537 = getelementptr inbounds ptr, ptr %1528, i64 %1535
  %1538 = load ptr, ptr %1537, align 8, !tbaa !11
  %1539 = load i16, ptr %1538, align 2, !tbaa !41
  %1540 = icmp sgt i16 %1539, -1
  br i1 %1540, label %1541, label %1565

1541:                                             ; preds = %1562, %1534
  %1542 = phi i16 [ %1563, %1562 ], [ %1539, %1534 ]
  %1543 = phi ptr [ %1544, %1562 ], [ %1538, %1534 ]
  %1544 = getelementptr inbounds i16, ptr %1543, i64 1
  %1545 = zext i16 %1542 to i64
  %1546 = getelementptr inbounds i16, ptr %1530, i64 %1545
  %1547 = load i16, ptr %1546, align 2, !tbaa !41
  %1548 = sext i16 %1547 to i64
  %1549 = getelementptr inbounds i16, ptr %1529, i64 %1548
  %1550 = load i16, ptr %1549, align 2, !tbaa !41
  %1551 = sext i16 %1550 to i32
  %1552 = icmp sgt i32 %1524, %1551
  br i1 %1552, label %1562, label %1553

1553:                                             ; preds = %1541
  %1554 = sub nsw i32 %1551, %1524
  %1555 = and i32 %1554, 31
  %1556 = shl nuw i32 1, %1555
  %1557 = ashr i32 %1554, 5
  %1558 = sext i32 %1557 to i64
  %1559 = getelementptr inbounds i32, ptr %1536, i64 %1558
  %1560 = load i32, ptr %1559, align 4, !tbaa !7
  %1561 = or i32 %1560, %1556
  store i32 %1561, ptr %1559, align 4, !tbaa !7
  br label %1562

1562:                                             ; preds = %1553, %1541
  %1563 = load i16, ptr %1544, align 2, !tbaa !41
  %1564 = icmp sgt i16 %1563, -1
  br i1 %1564, label %1541, label %1565, !llvm.loop !72

1565:                                             ; preds = %1562, %1534
  %1566 = getelementptr inbounds i32, ptr %1536, i64 %1531
  %1567 = add nsw i64 %1535, 1
  %1568 = icmp eq i64 %1567, %1533
  br i1 %1568, label %1569, label %1534, !llvm.loop !73

1569:                                             ; preds = %1565, %1488
  %1570 = load i32, ptr @nvars, align 4, !tbaa !7
  %1571 = add nsw i32 %1570, 31
  %1572 = sdiv i32 %1571, 32
  %1573 = shl nsw i32 %1572, 2
  %1574 = mul nsw i32 %1573, %1570
  %1575 = sext i32 %1574 to i64
  %1576 = getelementptr inbounds i8, ptr %1523, i64 %1575
  %1577 = icmp sgt i32 %1574, 0
  br i1 %1577, label %1578, label %1627

1578:                                             ; preds = %1569
  %1579 = sext i32 %1573 to i64
  %1580 = icmp slt i32 %1570, 1
  br label %1581

1581:                                             ; preds = %1607, %1578
  %1582 = phi ptr [ %1523, %1578 ], [ %1613, %1607 ]
  %1583 = phi ptr [ %1523, %1578 ], [ %1612, %1607 ]
  %1584 = phi i32 [ 1, %1578 ], [ %1610, %1607 ]
  br label %1585

1585:                                             ; preds = %1603, %1581
  %1586 = phi ptr [ %1605, %1603 ], [ %1583, %1581 ]
  %1587 = phi ptr [ %1604, %1603 ], [ %1523, %1581 ]
  %1588 = load i32, ptr %1586, align 4, !tbaa !7
  %1589 = and i32 %1588, %1584
  %1590 = icmp eq i32 %1589, 0
  %1591 = getelementptr inbounds i8, ptr %1587, i64 %1579
  %1592 = or i1 %1580, %1590
  %1593 = select i1 %1590, ptr %1591, ptr %1587
  br i1 %1592, label %1603, label %1594

1594:                                             ; preds = %1594, %1585
  %1595 = phi ptr [ %1599, %1594 ], [ %1587, %1585 ]
  %1596 = phi ptr [ %1597, %1594 ], [ %1582, %1585 ]
  %1597 = getelementptr inbounds i32, ptr %1596, i64 1
  %1598 = load i32, ptr %1596, align 4, !tbaa !7
  %1599 = getelementptr inbounds i32, ptr %1595, i64 1
  %1600 = load i32, ptr %1595, align 4, !tbaa !7
  %1601 = or i32 %1600, %1598
  store i32 %1601, ptr %1595, align 4, !tbaa !7
  %1602 = icmp ult ptr %1599, %1591
  br i1 %1602, label %1594, label %1603, !llvm.loop !74

1603:                                             ; preds = %1594, %1585
  %1604 = phi ptr [ %1593, %1585 ], [ %1599, %1594 ]
  %1605 = getelementptr inbounds i8, ptr %1586, i64 %1579
  %1606 = icmp ult ptr %1604, %1576
  br i1 %1606, label %1585, label %1607, !llvm.loop !75

1607:                                             ; preds = %1603
  %1608 = shl i32 %1584, 1
  %1609 = icmp eq i32 %1608, 0
  %1610 = tail call i32 @llvm.umax.i32(i32 %1608, i32 1)
  %1611 = zext i1 %1609 to i64
  %1612 = getelementptr inbounds i32, ptr %1583, i64 %1611
  %1613 = getelementptr inbounds i8, ptr %1582, i64 %1579
  %1614 = icmp ult ptr %1613, %1576
  br i1 %1614, label %1581, label %1615, !llvm.loop !76

1615:                                             ; preds = %1615, %1607
  %1616 = phi i32 [ %1624, %1615 ], [ 1, %1607 ]
  %1617 = phi ptr [ %1625, %1615 ], [ %1523, %1607 ]
  %1618 = load i32, ptr %1617, align 4, !tbaa !7
  %1619 = or i32 %1618, %1616
  store i32 %1619, ptr %1617, align 4, !tbaa !7
  %1620 = shl i32 %1616, 1
  %1621 = icmp eq i32 %1620, 0
  %1622 = zext i1 %1621 to i64
  %1623 = getelementptr inbounds i32, ptr %1617, i64 %1622
  %1624 = tail call i32 @llvm.umax.i32(i32 %1620, i32 1)
  %1625 = getelementptr inbounds i8, ptr %1623, i64 %1579
  %1626 = icmp ult ptr %1625, %1576
  br i1 %1626, label %1615, label %1627, !llvm.loop !77

1627:                                             ; preds = %1615, %1569
  br i1 %1526, label %1628, label %1692

1628:                                             ; preds = %1627
  %1629 = load ptr, ptr @fderives, align 8, !tbaa !11
  %1630 = load i32, ptr @rulesetsize, align 4, !tbaa !7
  %1631 = mul nsw i32 %1630, %1524
  %1632 = sext i32 %1631 to i64
  %1633 = getelementptr inbounds i32, ptr %1629, i64 %1632
  %1634 = load i32, ptr @varsetsize, align 4, !tbaa !7
  %1635 = sext i32 %1630 to i64
  %1636 = load ptr, ptr @derives, align 8
  %1637 = sext i32 %1524 to i64
  %1638 = sext i32 %1525 to i64
  %1639 = sext i32 %1634 to i64
  br label %1640

1640:                                             ; preds = %1688, %1628
  %1641 = phi i64 [ %1690, %1688 ], [ %1637, %1628 ]
  %1642 = phi ptr [ %1689, %1688 ], [ %1633, %1628 ]
  %1643 = sub nsw i64 %1641, %1637
  %1644 = mul nsw i64 %1643, %1639
  %1645 = getelementptr inbounds i32, ptr %1523, i64 %1644
  %1646 = load i32, ptr %1645, align 4, !tbaa !7
  %1647 = getelementptr inbounds i32, ptr %1645, i64 1
  br label %1648

1648:                                             ; preds = %1683, %1640
  %1649 = phi i64 [ %1637, %1640 ], [ %1677, %1683 ]
  %1650 = phi i32 [ %1646, %1640 ], [ %1686, %1683 ]
  %1651 = phi i32 [ 1, %1640 ], [ %1685, %1683 ]
  %1652 = phi ptr [ %1647, %1640 ], [ %1684, %1683 ]
  %1653 = and i32 %1651, %1650
  %1654 = icmp eq i32 %1653, 0
  br i1 %1654, label %1674, label %1655

1655:                                             ; preds = %1648
  %1656 = getelementptr inbounds ptr, ptr %1636, i64 %1649
  %1657 = load ptr, ptr %1656, align 8, !tbaa !11
  %1658 = load i16, ptr %1657, align 2, !tbaa !41
  %1659 = icmp sgt i16 %1658, 0
  br i1 %1659, label %1660, label %1674

1660:                                             ; preds = %1660, %1655
  %1661 = phi i16 [ %1672, %1660 ], [ %1658, %1655 ]
  %1662 = phi ptr [ %1664, %1660 ], [ %1657, %1655 ]
  %1663 = zext i16 %1661 to i32
  %1664 = getelementptr inbounds i16, ptr %1662, i64 1
  %1665 = and i32 %1663, 31
  %1666 = shl nuw i32 1, %1665
  %1667 = lshr i32 %1663, 5
  %1668 = zext i32 %1667 to i64
  %1669 = getelementptr inbounds i32, ptr %1642, i64 %1668
  %1670 = load i32, ptr %1669, align 4, !tbaa !7
  %1671 = or i32 %1666, %1670
  store i32 %1671, ptr %1669, align 4, !tbaa !7
  %1672 = load i16, ptr %1664, align 2, !tbaa !41
  %1673 = icmp sgt i16 %1672, 0
  br i1 %1673, label %1660, label %1674, !llvm.loop !78

1674:                                             ; preds = %1660, %1655, %1648
  %1675 = shl i32 %1651, 1
  %1676 = icmp eq i32 %1675, 0
  %1677 = add nsw i64 %1649, 1
  br i1 %1676, label %1678, label %1683

1678:                                             ; preds = %1674
  %1679 = icmp slt i64 %1677, %1638
  br i1 %1679, label %1680, label %1683

1680:                                             ; preds = %1678
  %1681 = getelementptr inbounds i32, ptr %1652, i64 1
  %1682 = load i32, ptr %1652, align 4, !tbaa !7
  br label %1683

1683:                                             ; preds = %1680, %1678, %1674
  %1684 = phi ptr [ %1652, %1678 ], [ %1681, %1680 ], [ %1652, %1674 ]
  %1685 = phi i32 [ 0, %1678 ], [ 1, %1680 ], [ %1675, %1674 ]
  %1686 = phi i32 [ %1650, %1678 ], [ %1682, %1680 ], [ %1650, %1674 ]
  %1687 = icmp eq i64 %1677, %1638
  br i1 %1687, label %1688, label %1648, !llvm.loop !79

1688:                                             ; preds = %1683
  %1689 = getelementptr inbounds i32, ptr %1642, i64 %1635
  %1690 = add nsw i64 %1641, 1
  %1691 = icmp eq i64 %1690, %1638
  br i1 %1691, label %1692, label %1640, !llvm.loop !80

1692:                                             ; preds = %1688, %1627
  %1693 = icmp eq ptr %1523, null
  br i1 %1693, label %1695, label %1694

1694:                                             ; preds = %1692
  tail call void @free(ptr noundef nonnull %1523) #25
  br label %1695

1695:                                             ; preds = %1694, %1692
  %1696 = tail call fastcc ptr @mallocate(i32 noundef 22) #25
  store ptr %1696, ptr @this_state, align 8, !tbaa !11
  store ptr %1696, ptr @last_state, align 8, !tbaa !11
  store ptr %1696, ptr @first_state, align 8, !tbaa !11
  store i32 1, ptr @nstates, align 4, !tbaa !7
  %1697 = icmp eq ptr %1696, null
  br i1 %1697, label %2075, label %1698

1698:                                             ; preds = %2071, %1695
  %1699 = phi ptr [ %2073, %2071 ], [ %1696, %1695 ]
  %1700 = getelementptr inbounds %struct.core, ptr %1699, i64 0, i32 5
  %1701 = getelementptr inbounds %struct.core, ptr %1699, i64 0, i32 4
  %1702 = load i16, ptr %1701, align 4, !tbaa !81
  %1703 = load ptr, ptr @ruleset, align 8, !tbaa !11
  %1704 = ptrtoint ptr %1703 to i64
  %1705 = load i32, ptr @rulesetsize, align 4, !tbaa !7
  %1706 = sext i32 %1705 to i64
  %1707 = getelementptr inbounds i32, ptr %1703, i64 %1706
  %1708 = sext i16 %1702 to i64
  %1709 = getelementptr inbounds i16, ptr %1700, i64 %1708
  %1710 = icmp eq i16 %1702, 0
  %1711 = icmp slt i32 %1705, 1
  br i1 %1710, label %1722, label %1712

1712:                                             ; preds = %1698
  br i1 %1711, label %1738, label %1713

1713:                                             ; preds = %1712
  %1714 = shl nsw i64 %1706, 2
  %1715 = add i64 %1714, %1704
  %1716 = add i64 %1704, 4
  %1717 = tail call i64 @llvm.umax.i64(i64 %1715, i64 %1716)
  %1718 = xor i64 %1704, -1
  %1719 = add i64 %1717, %1718
  %1720 = and i64 %1719, -4
  %1721 = add i64 %1720, 4
  tail call void @llvm.memset.p0.i64(ptr align 4 %1703, i8 0, i64 %1721, i1 false), !tbaa !7
  br label %1738

1722:                                             ; preds = %1698
  br i1 %1711, label %1723, label %1725

1723:                                             ; preds = %1722
  %1724 = load ptr, ptr @itemset, align 8, !tbaa !11
  store ptr %1724, ptr @itemsetend, align 8, !tbaa !11
  br label %1772

1725:                                             ; preds = %1722
  %1726 = load ptr, ptr @fderives, align 8, !tbaa !11
  %1727 = load i32, ptr @start_symbol, align 4, !tbaa !7
  %1728 = mul nsw i32 %1727, %1705
  %1729 = sext i32 %1728 to i64
  %1730 = getelementptr i32, ptr %1726, i64 %1729
  br label %1731

1731:                                             ; preds = %1731, %1725
  %1732 = phi ptr [ %1734, %1731 ], [ %1730, %1725 ]
  %1733 = phi ptr [ %1736, %1731 ], [ %1703, %1725 ]
  %1734 = getelementptr inbounds i32, ptr %1732, i64 1
  %1735 = load i32, ptr %1732, align 4, !tbaa !7
  %1736 = getelementptr inbounds i32, ptr %1733, i64 1
  store i32 %1735, ptr %1733, align 4, !tbaa !7
  %1737 = icmp ult ptr %1736, %1707
  br i1 %1737, label %1731, label %1769, !llvm.loop !83

1738:                                             ; preds = %1713, %1712
  %1739 = icmp sgt i16 %1702, 0
  br i1 %1739, label %1740, label %1769

1740:                                             ; preds = %1738
  %1741 = load ptr, ptr @ritem, align 8, !tbaa !11
  %1742 = load ptr, ptr @fderives, align 8
  %1743 = load i32, ptr @ntokens, align 4, !tbaa !7
  br label %1744

1744:                                             ; preds = %1767, %1740
  %1745 = phi ptr [ %1700, %1740 ], [ %1746, %1767 ]
  %1746 = getelementptr inbounds i16, ptr %1745, i64 1
  %1747 = load i16, ptr %1745, align 2, !tbaa !41
  %1748 = sext i16 %1747 to i64
  %1749 = getelementptr inbounds i16, ptr %1741, i64 %1748
  %1750 = load i16, ptr %1749, align 2, !tbaa !41
  %1751 = sext i16 %1750 to i32
  %1752 = icmp sgt i32 %1743, %1751
  %1753 = select i1 %1752, i1 true, i1 %1711
  br i1 %1753, label %1767, label %1754

1754:                                             ; preds = %1744
  %1755 = mul nsw i32 %1705, %1751
  %1756 = sext i32 %1755 to i64
  %1757 = getelementptr inbounds i32, ptr %1742, i64 %1756
  br label %1758

1758:                                             ; preds = %1758, %1754
  %1759 = phi ptr [ %1761, %1758 ], [ %1757, %1754 ]
  %1760 = phi ptr [ %1763, %1758 ], [ %1703, %1754 ]
  %1761 = getelementptr inbounds i32, ptr %1759, i64 1
  %1762 = load i32, ptr %1759, align 4, !tbaa !7
  %1763 = getelementptr inbounds i32, ptr %1760, i64 1
  %1764 = load i32, ptr %1760, align 4, !tbaa !7
  %1765 = or i32 %1764, %1762
  store i32 %1765, ptr %1760, align 4, !tbaa !7
  %1766 = icmp ult ptr %1763, %1707
  br i1 %1766, label %1758, label %1767, !llvm.loop !84

1767:                                             ; preds = %1758, %1744
  %1768 = icmp ult ptr %1746, %1709
  br i1 %1768, label %1744, label %1769, !llvm.loop !85

1769:                                             ; preds = %1767, %1738, %1731
  %1770 = load ptr, ptr @itemset, align 8, !tbaa !11
  store ptr %1770, ptr @itemsetend, align 8, !tbaa !11
  %1771 = icmp sgt i32 %1705, 0
  br i1 %1771, label %1777, label %1772

1772:                                             ; preds = %1824, %1769, %1723
  %1773 = phi ptr [ %1770, %1769 ], [ %1724, %1723 ], [ %1770, %1824 ]
  %1774 = phi ptr [ %1770, %1769 ], [ %1724, %1723 ], [ %1825, %1824 ]
  %1775 = phi ptr [ %1700, %1769 ], [ %1700, %1723 ], [ %1826, %1824 ]
  %1776 = icmp ult ptr %1775, %1709
  br i1 %1776, label %1829, label %1837

1777:                                             ; preds = %1824, %1769
  %1778 = phi i32 [ %1827, %1824 ], [ 0, %1769 ]
  %1779 = phi ptr [ %1826, %1824 ], [ %1700, %1769 ]
  %1780 = phi ptr [ %1782, %1824 ], [ %1703, %1769 ]
  %1781 = phi ptr [ %1825, %1824 ], [ %1770, %1769 ]
  %1782 = getelementptr inbounds i32, ptr %1780, i64 1
  %1783 = load i32, ptr %1780, align 4, !tbaa !7
  %1784 = icmp eq i32 %1783, 0
  br i1 %1784, label %1788, label %1785

1785:                                             ; preds = %1777
  %1786 = load ptr, ptr @rrhs, align 8
  %1787 = sext i32 %1778 to i64
  br label %1790

1788:                                             ; preds = %1777
  %1789 = add nsw i32 %1778, 32
  br label %1824

1790:                                             ; preds = %1815, %1785
  %1791 = phi i64 [ %1787, %1785 ], [ %1820, %1815 ]
  %1792 = phi ptr [ %1781, %1785 ], [ %1816, %1815 ]
  %1793 = phi i32 [ 1, %1785 ], [ %1819, %1815 ]
  %1794 = phi ptr [ %1779, %1785 ], [ %1818, %1815 ]
  %1795 = phi ptr [ %1781, %1785 ], [ %1817, %1815 ]
  %1796 = and i32 %1793, %1783
  %1797 = icmp eq i32 %1796, 0
  br i1 %1797, label %1815, label %1798

1798:                                             ; preds = %1790
  %1799 = getelementptr inbounds i16, ptr %1786, i64 %1791
  %1800 = load i16, ptr %1799, align 2, !tbaa !41
  %1801 = icmp ult ptr %1794, %1709
  br i1 %1801, label %1802, label %1811

1802:                                             ; preds = %1807, %1798
  %1803 = phi ptr [ %1808, %1807 ], [ %1794, %1798 ]
  %1804 = phi ptr [ %1809, %1807 ], [ %1795, %1798 ]
  %1805 = load i16, ptr %1803, align 2, !tbaa !41
  %1806 = icmp slt i16 %1805, %1800
  br i1 %1806, label %1807, label %1811

1807:                                             ; preds = %1802
  %1808 = getelementptr inbounds i16, ptr %1803, i64 1
  %1809 = getelementptr inbounds i16, ptr %1804, i64 1
  store i16 %1805, ptr %1804, align 2, !tbaa !41
  %1810 = icmp ult ptr %1808, %1709
  br i1 %1810, label %1802, label %1811, !llvm.loop !86

1811:                                             ; preds = %1807, %1802, %1798
  %1812 = phi ptr [ %1795, %1798 ], [ %1804, %1802 ], [ %1809, %1807 ]
  %1813 = phi ptr [ %1794, %1798 ], [ %1803, %1802 ], [ %1808, %1807 ]
  %1814 = getelementptr inbounds i16, ptr %1812, i64 1
  store ptr %1814, ptr @itemsetend, align 8, !tbaa !11
  store i16 %1800, ptr %1812, align 2, !tbaa !41
  br label %1815

1815:                                             ; preds = %1811, %1790
  %1816 = phi ptr [ %1814, %1811 ], [ %1792, %1790 ]
  %1817 = phi ptr [ %1814, %1811 ], [ %1795, %1790 ]
  %1818 = phi ptr [ %1813, %1811 ], [ %1794, %1790 ]
  %1819 = shl i32 %1793, 1
  %1820 = add nsw i64 %1791, 1
  %1821 = icmp eq i32 %1819, 0
  br i1 %1821, label %1822, label %1790, !llvm.loop !87

1822:                                             ; preds = %1815
  %.lcssa11 = phi ptr [ %1816, %1815 ]
  %.lcssa10 = phi ptr [ %1818, %1815 ]
  %.lcssa9 = phi i64 [ %1820, %1815 ]
  %1823 = trunc i64 %.lcssa9 to i32
  br label %1824

1824:                                             ; preds = %1822, %1788
  %1825 = phi ptr [ %1781, %1788 ], [ %.lcssa11, %1822 ]
  %1826 = phi ptr [ %1779, %1788 ], [ %.lcssa10, %1822 ]
  %1827 = phi i32 [ %1789, %1788 ], [ %1823, %1822 ]
  %1828 = icmp ult ptr %1782, %1707
  br i1 %1828, label %1777, label %1772, !llvm.loop !88

1829:                                             ; preds = %1829, %1772
  %1830 = phi ptr [ %1832, %1829 ], [ %1775, %1772 ]
  %1831 = phi ptr [ %1834, %1829 ], [ %1774, %1772 ]
  %1832 = getelementptr inbounds i16, ptr %1830, i64 1
  %1833 = load i16, ptr %1830, align 2, !tbaa !41
  %1834 = getelementptr inbounds i16, ptr %1831, i64 1
  store i16 %1833, ptr %1831, align 2, !tbaa !41
  %1835 = icmp ult ptr %1832, %1709
  br i1 %1835, label %1829, label %1836, !llvm.loop !89

1836:                                             ; preds = %1829
  %.lcssa12 = phi ptr [ %1834, %1829 ]
  store ptr %.lcssa12, ptr @itemsetend, align 8, !tbaa !11
  br label %1837

1837:                                             ; preds = %1836, %1772
  %1838 = phi ptr [ %1774, %1772 ], [ %.lcssa12, %1836 ]
  %1839 = icmp ult ptr %1773, %1838
  br i1 %1839, label %1840, label %1889

1840:                                             ; preds = %1837
  %1841 = load ptr, ptr @ritem, align 8, !tbaa !11
  %1842 = load ptr, ptr @redset, align 8
  br label %1843

1843:                                             ; preds = %1856, %1840
  %1844 = phi ptr [ %1773, %1840 ], [ %1858, %1856 ]
  %1845 = phi i32 [ 0, %1840 ], [ %1857, %1856 ]
  %1846 = load i16, ptr %1844, align 2, !tbaa !41
  %1847 = sext i16 %1846 to i64
  %1848 = getelementptr inbounds i16, ptr %1841, i64 %1847
  %1849 = load i16, ptr %1848, align 2, !tbaa !41
  %1850 = icmp slt i16 %1849, 0
  br i1 %1850, label %1851, label %1856

1851:                                             ; preds = %1843
  %1852 = sub i16 0, %1849
  %1853 = add nsw i32 %1845, 1
  %1854 = sext i32 %1845 to i64
  %1855 = getelementptr inbounds i16, ptr %1842, i64 %1854
  store i16 %1852, ptr %1855, align 2, !tbaa !41
  br label %1856

1856:                                             ; preds = %1851, %1843
  %1857 = phi i32 [ %1853, %1851 ], [ %1845, %1843 ]
  %1858 = getelementptr inbounds i16, ptr %1844, i64 1
  %1859 = icmp ult ptr %1858, %1838
  br i1 %1859, label %1843, label %1860, !llvm.loop !90

1860:                                             ; preds = %1856
  %.lcssa13 = phi i32 [ %1857, %1856 ]
  %1861 = icmp eq i32 %.lcssa13, 0
  br i1 %1861, label %1889, label %1862

1862:                                             ; preds = %1860
  %1863 = shl i32 %.lcssa13, 1
  %1864 = add i32 %1863, 14
  %1865 = tail call fastcc ptr @mallocate(i32 noundef %1864) #25
  %1866 = load ptr, ptr @this_state, align 8, !tbaa !11
  %1867 = getelementptr inbounds %struct.core, ptr %1866, i64 0, i32 2
  %1868 = load i16, ptr %1867, align 8, !tbaa !91
  %1869 = getelementptr inbounds %struct.shifts, ptr %1865, i64 0, i32 1
  store i16 %1868, ptr %1869, align 8, !tbaa !92
  %1870 = trunc i32 %.lcssa13 to i16
  %1871 = getelementptr inbounds %struct.shifts, ptr %1865, i64 0, i32 2
  store i16 %1870, ptr %1871, align 2, !tbaa !94
  %1872 = load ptr, ptr @redset, align 8, !tbaa !11
  %1873 = sext i32 %.lcssa13 to i64
  %1874 = getelementptr inbounds i16, ptr %1872, i64 %1873
  %1875 = icmp sgt i32 %.lcssa13, 0
  br i1 %1875, label %1876, label %1885

1876:                                             ; preds = %1862
  %1877 = getelementptr %struct.shifts, ptr %1865, i64 0, i32 3
  br label %1878

1878:                                             ; preds = %1878, %1876
  %1879 = phi ptr [ %1881, %1878 ], [ %1872, %1876 ]
  %1880 = phi ptr [ %1883, %1878 ], [ %1877, %1876 ]
  %1881 = getelementptr inbounds i16, ptr %1879, i64 1
  %1882 = load i16, ptr %1879, align 2, !tbaa !41
  %1883 = getelementptr inbounds i16, ptr %1880, i64 1
  store i16 %1882, ptr %1880, align 2, !tbaa !41
  %1884 = icmp ult ptr %1881, %1874
  br i1 %1884, label %1878, label %1885, !llvm.loop !95

1885:                                             ; preds = %1878, %1862
  %1886 = load ptr, ptr @last_reduction, align 8, !tbaa !11
  %1887 = icmp eq ptr %1886, null
  %1888 = select i1 %1887, ptr @first_reduction, ptr %1886
  store ptr %1865, ptr %1888, align 8, !tbaa !11
  store ptr %1865, ptr @last_reduction, align 8, !tbaa !11
  br label %1889

1889:                                             ; preds = %1885, %1860, %1837
  %1890 = phi ptr [ %1699, %1837 ], [ %1699, %1860 ], [ %1866, %1885 ]
  %1891 = load i32, ptr @nsyms, align 4, !tbaa !7
  %1892 = icmp sgt i32 %1891, 0
  br i1 %1892, label %1893, label %1897

1893:                                             ; preds = %1889
  %1894 = load ptr, ptr @kernel_end, align 8, !tbaa !11
  %1895 = zext i32 %1891 to i64
  %1896 = shl nuw nsw i64 %1895, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %1894, i8 0, i64 %1896, i1 false), !tbaa !11
  br label %1897

1897:                                             ; preds = %1893, %1889
  %1898 = load ptr, ptr @itemset, align 8, !tbaa !11
  %1899 = load ptr, ptr @itemsetend, align 8, !tbaa !11
  %1900 = icmp ult ptr %1898, %1899
  br i1 %1900, label %1902, label %1901

1901:                                             ; preds = %1897
  store i32 0, ptr @nshifts, align 4, !tbaa !7
  br label %2071

1902:                                             ; preds = %1897
  %1903 = load ptr, ptr @kernel_end, align 8
  %1904 = load ptr, ptr @shift_symbol, align 8
  %1905 = load ptr, ptr @kernel_base, align 8
  %1906 = load ptr, ptr @ritem, align 8, !tbaa !11
  br label %1907

1907:                                             ; preds = %1932, %1902
  %1908 = phi ptr [ %1898, %1902 ], [ %1910, %1932 ]
  %1909 = phi i32 [ 0, %1902 ], [ %1933, %1932 ]
  %1910 = getelementptr inbounds i16, ptr %1908, i64 1
  %1911 = load i16, ptr %1908, align 2, !tbaa !41
  %1912 = sext i16 %1911 to i64
  %1913 = getelementptr inbounds i16, ptr %1906, i64 %1912
  %1914 = load i16, ptr %1913, align 2, !tbaa !41
  %1915 = icmp sgt i16 %1914, 0
  br i1 %1915, label %1916, label %1932

1916:                                             ; preds = %1907
  %1917 = zext i16 %1914 to i64
  %1918 = getelementptr inbounds ptr, ptr %1903, i64 %1917
  %1919 = load ptr, ptr %1918, align 8, !tbaa !11
  %1920 = icmp eq ptr %1919, null
  br i1 %1920, label %1921, label %1927

1921:                                             ; preds = %1916
  %1922 = add nsw i32 %1909, 1
  %1923 = sext i32 %1909 to i64
  %1924 = getelementptr inbounds i16, ptr %1904, i64 %1923
  store i16 %1914, ptr %1924, align 2, !tbaa !41
  %1925 = getelementptr inbounds ptr, ptr %1905, i64 %1917
  %1926 = load ptr, ptr %1925, align 8, !tbaa !11
  br label %1927

1927:                                             ; preds = %1921, %1916
  %1928 = phi i32 [ %1909, %1916 ], [ %1922, %1921 ]
  %1929 = phi ptr [ %1919, %1916 ], [ %1926, %1921 ]
  %1930 = add i16 %1911, 1
  %1931 = getelementptr inbounds i16, ptr %1929, i64 1
  store i16 %1930, ptr %1929, align 2, !tbaa !41
  store ptr %1931, ptr %1918, align 8, !tbaa !11
  br label %1932

1932:                                             ; preds = %1927, %1907
  %1933 = phi i32 [ %1928, %1927 ], [ %1909, %1907 ]
  %1934 = icmp ult ptr %1910, %1899
  br i1 %1934, label %1907, label %1935, !llvm.loop !96

1935:                                             ; preds = %1932
  %.lcssa14 = phi i32 [ %1933, %1932 ]
  store i32 %.lcssa14, ptr @nshifts, align 4, !tbaa !7
  %1936 = icmp sgt i32 %.lcssa14, 1
  br i1 %1936, label %1937, label %1939

1937:                                             ; preds = %1935
  %1938 = zext i32 %.lcssa14 to i64
  br label %1941

1939:                                             ; preds = %1955, %1935
  %1940 = icmp sgt i32 %.lcssa14, 0
  br i1 %1940, label %1962, label %2071

1941:                                             ; preds = %1955, %1937
  %1942 = phi i64 [ 1, %1937 ], [ %1960, %1955 ]
  %1943 = getelementptr inbounds i16, ptr %1904, i64 %1942
  %1944 = load i16, ptr %1943, align 2, !tbaa !41
  br label %1945

1945:                                             ; preds = %1952, %1941
  %1946 = phi i64 [ %1942, %1941 ], [ %1947, %1952 ]
  %1947 = add nsw i64 %1946, -1
  %1948 = and i64 %1947, 4294967295
  %1949 = getelementptr inbounds i16, ptr %1904, i64 %1948
  %1950 = load i16, ptr %1949, align 2, !tbaa !41
  %1951 = icmp sgt i16 %1950, %1944
  br i1 %1951, label %1952, label %1955

1952:                                             ; preds = %1945
  %1953 = getelementptr inbounds i16, ptr %1904, i64 %1946
  store i16 %1950, ptr %1953, align 2, !tbaa !41
  %1954 = icmp sgt i64 %1946, 1
  br i1 %1954, label %1945, label %1955, !llvm.loop !97

1955:                                             ; preds = %1952, %1945
  %1956 = phi i64 [ 0, %1952 ], [ %1946, %1945 ]
  %1957 = shl i64 %1956, 32
  %1958 = ashr exact i64 %1957, 32
  %1959 = getelementptr inbounds i16, ptr %1904, i64 %1958
  store i16 %1944, ptr %1959, align 2, !tbaa !41
  %1960 = add nuw nsw i64 %1942, 1
  %1961 = icmp eq i64 %1960, %1938
  br i1 %1961, label %1939, label %1941, !llvm.loop !98

1962:                                             ; preds = %2029, %1939
  %1963 = phi i64 [ %2035, %2029 ], [ 0, %1939 ]
  %1964 = load ptr, ptr @shift_symbol, align 8, !tbaa !11
  %1965 = getelementptr inbounds i16, ptr %1964, i64 %1963
  %1966 = load i16, ptr %1965, align 2, !tbaa !41
  %1967 = sext i16 %1966 to i32
  %1968 = load ptr, ptr @kernel_base, align 8
  %1969 = sext i16 %1966 to i64
  %1970 = getelementptr inbounds ptr, ptr %1968, i64 %1969
  %1971 = load ptr, ptr %1970, align 8, !tbaa !11
  %1972 = load ptr, ptr @kernel_end, align 8, !tbaa !11
  %1973 = getelementptr inbounds ptr, ptr %1972, i64 %1969
  %1974 = load ptr, ptr %1973, align 8, !tbaa !11
  %1975 = ptrtoint ptr %1974 to i64
  %1976 = ptrtoint ptr %1971 to i64
  %1977 = sub i64 %1975, %1976
  %1978 = lshr exact i64 %1977, 1
  %1979 = trunc i64 %1978 to i32
  %1980 = icmp ult ptr %1971, %1974
  br i1 %1980, label %1981, label %1992

1981:                                             ; preds = %1981, %1962
  %1982 = phi i32 [ %1987, %1981 ], [ 0, %1962 ]
  %1983 = phi ptr [ %1984, %1981 ], [ %1971, %1962 ]
  %1984 = getelementptr inbounds i16, ptr %1983, i64 1
  %1985 = load i16, ptr %1983, align 2, !tbaa !41
  %1986 = sext i16 %1985 to i32
  %1987 = add nsw i32 %1982, %1986
  %1988 = icmp ult ptr %1984, %1974
  br i1 %1988, label %1981, label %1989, !llvm.loop !99

1989:                                             ; preds = %1981
  %.lcssa15 = phi i32 [ %1987, %1981 ]
  %1990 = srem i32 %.lcssa15, 1009
  %1991 = sext i32 %1990 to i64
  br label %1992

1992:                                             ; preds = %1989, %1962
  %1993 = phi i64 [ 0, %1962 ], [ %1991, %1989 ]
  %1994 = load ptr, ptr @state_table.89, align 8, !tbaa !11
  %1995 = getelementptr inbounds ptr, ptr %1994, i64 %1993
  %1996 = load ptr, ptr %1995, align 8, !tbaa !11
  %1997 = icmp eq ptr %1996, null
  br i1 %1997, label %2025, label %1998

1998:                                             ; preds = %2018, %1992
  %1999 = phi ptr [ %2020, %2018 ], [ %1996, %1992 ]
  %2000 = getelementptr inbounds %struct.core, ptr %1999, i64 0, i32 4
  %2001 = load i16, ptr %2000, align 4, !tbaa !81
  %2002 = sext i16 %2001 to i32
  %2003 = icmp eq i32 %2002, %1979
  br i1 %2003, label %2004, label %2018

2004:                                             ; preds = %1998
  br i1 %1980, label %2005, label %2029

2005:                                             ; preds = %2004
  %2006 = getelementptr inbounds %struct.core, ptr %1999, i64 0, i32 5
  br label %2007

2007:                                             ; preds = %2007, %2005
  %2008 = phi ptr [ %2010, %2007 ], [ %1971, %2005 ]
  %2009 = phi ptr [ %2012, %2007 ], [ %2006, %2005 ]
  %2010 = getelementptr inbounds i16, ptr %2008, i64 1
  %2011 = load i16, ptr %2008, align 2, !tbaa !41
  %2012 = getelementptr inbounds i16, ptr %2009, i64 1
  %2013 = load i16, ptr %2009, align 2, !tbaa !41
  %2014 = icmp eq i16 %2011, %2013
  %2015 = icmp ult ptr %2010, %1974
  %2016 = select i1 %2014, i1 %2015, i1 false
  br i1 %2016, label %2007, label %2017, !llvm.loop !100

2017:                                             ; preds = %2007
  %.lcssa16 = phi i1 [ %2014, %2007 ]
  br i1 %.lcssa16, label %2029, label %2018

2018:                                             ; preds = %2017, %1998
  %2019 = getelementptr inbounds %struct.core, ptr %1999, i64 0, i32 1
  %2020 = load ptr, ptr %2019, align 8, !tbaa !101
  %2021 = icmp eq ptr %2020, null
  br i1 %2021, label %2022, label %1998, !llvm.loop !102

2022:                                             ; preds = %2018
  %.lcssa17 = phi ptr [ %1999, %2018 ]
  %2023 = getelementptr inbounds %struct.core, ptr %.lcssa17, i64 0, i32 1
  %2024 = tail call fastcc ptr @new_state(i32 noundef %1967) #26
  store ptr %2024, ptr %2023, align 8, !tbaa !101
  br label %2029

2025:                                             ; preds = %1992
  %2026 = tail call fastcc ptr @new_state(i32 noundef %1967) #26
  %2027 = load ptr, ptr @state_table.89, align 8, !tbaa !11
  %2028 = getelementptr inbounds ptr, ptr %2027, i64 %1993
  store ptr %2026, ptr %2028, align 8, !tbaa !11
  br label %2029

2029:                                             ; preds = %2025, %2022, %2017, %2004
  %2030 = phi ptr [ %2026, %2025 ], [ %2024, %2022 ], [ %1999, %2004 ], [ %1999, %2017 ]
  %2031 = getelementptr inbounds %struct.core, ptr %2030, i64 0, i32 2
  %2032 = load i16, ptr %2031, align 8, !tbaa !91
  %2033 = load ptr, ptr @shiftset, align 8, !tbaa !11
  %2034 = getelementptr inbounds i16, ptr %2033, i64 %1963
  store i16 %2032, ptr %2034, align 2, !tbaa !41
  %2035 = add nuw nsw i64 %1963, 1
  %2036 = load i32, ptr @nshifts, align 4, !tbaa !7
  %2037 = sext i32 %2036 to i64
  %2038 = icmp slt i64 %2035, %2037
  br i1 %2038, label %1962, label %2039, !llvm.loop !103

2039:                                             ; preds = %2029
  %.lcssa18 = phi i32 [ %2036, %2029 ]
  %2040 = icmp sgt i32 %.lcssa18, 0
  br i1 %2040, label %2043, label %2041

2041:                                             ; preds = %2039
  %2042 = load ptr, ptr @this_state, align 8, !tbaa !11
  br label %2071

2043:                                             ; preds = %2039
  %2044 = shl nuw i32 %.lcssa18, 1
  %2045 = add i32 %2044, 14
  %2046 = tail call fastcc ptr @mallocate(i32 noundef %2045) #25
  %2047 = load ptr, ptr @this_state, align 8, !tbaa !11
  %2048 = getelementptr inbounds %struct.core, ptr %2047, i64 0, i32 2
  %2049 = load i16, ptr %2048, align 8, !tbaa !91
  %2050 = getelementptr inbounds %struct.shifts, ptr %2046, i64 0, i32 1
  store i16 %2049, ptr %2050, align 8, !tbaa !104
  %2051 = load i32, ptr @nshifts, align 4, !tbaa !7
  %2052 = trunc i32 %2051 to i16
  %2053 = getelementptr inbounds %struct.shifts, ptr %2046, i64 0, i32 2
  store i16 %2052, ptr %2053, align 2, !tbaa !106
  %2054 = load ptr, ptr @shiftset, align 8, !tbaa !11
  %2055 = sext i32 %2051 to i64
  %2056 = getelementptr inbounds i16, ptr %2054, i64 %2055
  %2057 = icmp sgt i32 %2051, 0
  br i1 %2057, label %2058, label %2067

2058:                                             ; preds = %2043
  %2059 = getelementptr %struct.shifts, ptr %2046, i64 0, i32 3
  br label %2060

2060:                                             ; preds = %2060, %2058
  %2061 = phi ptr [ %2063, %2060 ], [ %2054, %2058 ]
  %2062 = phi ptr [ %2065, %2060 ], [ %2059, %2058 ]
  %2063 = getelementptr inbounds i16, ptr %2061, i64 1
  %2064 = load i16, ptr %2061, align 2, !tbaa !41
  %2065 = getelementptr inbounds i16, ptr %2062, i64 1
  store i16 %2064, ptr %2062, align 2, !tbaa !41
  %2066 = icmp ult ptr %2063, %2056
  br i1 %2066, label %2060, label %2067, !llvm.loop !107

2067:                                             ; preds = %2060, %2043
  %2068 = load ptr, ptr @last_shift, align 8, !tbaa !11
  %2069 = icmp eq ptr %2068, null
  %2070 = select i1 %2069, ptr @first_shift, ptr %2068
  store ptr %2046, ptr %2070, align 8, !tbaa !11
  store ptr %2046, ptr @last_shift, align 8, !tbaa !11
  br label %2071

2071:                                             ; preds = %2067, %2041, %1939, %1901
  %2072 = phi ptr [ %1890, %1901 ], [ %2047, %2067 ], [ %2042, %2041 ], [ %1890, %1939 ]
  %2073 = load ptr, ptr %2072, align 8, !tbaa !108
  store ptr %2073, ptr @this_state, align 8, !tbaa !11
  %2074 = icmp eq ptr %2073, null
  br i1 %2074, label %2075, label %1698, !llvm.loop !109

2075:                                             ; preds = %2071, %1695
  %2076 = load ptr, ptr @itemset, align 8, !tbaa !11
  %2077 = icmp eq ptr %2076, null
  br i1 %2077, label %2079, label %2078

2078:                                             ; preds = %2075
  tail call void @free(ptr noundef nonnull %2076) #25
  br label %2079

2079:                                             ; preds = %2078, %2075
  %2080 = load ptr, ptr @ruleset, align 8, !tbaa !11
  %2081 = icmp eq ptr %2080, null
  br i1 %2081, label %2083, label %2082

2082:                                             ; preds = %2079
  tail call void @free(ptr noundef nonnull %2080) #25
  br label %2083

2083:                                             ; preds = %2082, %2079
  %2084 = load ptr, ptr @fderives, align 8, !tbaa !11
  %2085 = icmp eq ptr %2084, null
  br i1 %2085, label %2092, label %2086

2086:                                             ; preds = %2083
  %2087 = load i32, ptr @ntokens, align 4, !tbaa !7
  %2088 = load i32, ptr @rulesetsize, align 4, !tbaa !7
  %2089 = mul nsw i32 %2088, %2087
  %2090 = sext i32 %2089 to i64
  %2091 = getelementptr inbounds i32, ptr %2084, i64 %2090
  tail call void @free(ptr noundef %2091) #25
  br label %2092

2092:                                             ; preds = %2086, %2083
  %2093 = load ptr, ptr @shift_symbol, align 8, !tbaa !11
  %2094 = icmp eq ptr %2093, null
  br i1 %2094, label %2096, label %2095

2095:                                             ; preds = %2092
  tail call void @free(ptr noundef nonnull %2093) #25
  br label %2096

2096:                                             ; preds = %2095, %2092
  %2097 = load ptr, ptr @redset, align 8, !tbaa !11
  %2098 = icmp eq ptr %2097, null
  br i1 %2098, label %2100, label %2099

2099:                                             ; preds = %2096
  tail call void @free(ptr noundef nonnull %2097) #25
  br label %2100

2100:                                             ; preds = %2099, %2096
  %2101 = load ptr, ptr @shiftset, align 8, !tbaa !11
  %2102 = icmp eq ptr %2101, null
  br i1 %2102, label %2104, label %2103

2103:                                             ; preds = %2100
  tail call void @free(ptr noundef nonnull %2101) #25
  br label %2104

2104:                                             ; preds = %2103, %2100
  %2105 = load ptr, ptr @kernel_base, align 8, !tbaa !11
  %2106 = icmp eq ptr %2105, null
  br i1 %2106, label %2108, label %2107

2107:                                             ; preds = %2104
  tail call void @free(ptr noundef nonnull %2105) #25
  br label %2108

2108:                                             ; preds = %2107, %2104
  %2109 = load ptr, ptr @kernel_end, align 8, !tbaa !11
  %2110 = icmp eq ptr %2109, null
  br i1 %2110, label %2112, label %2111

2111:                                             ; preds = %2108
  tail call void @free(ptr noundef nonnull %2109) #25
  br label %2112

2112:                                             ; preds = %2111, %2108
  %2113 = load ptr, ptr @kernel_items, align 8, !tbaa !11
  %2114 = icmp eq ptr %2113, null
  br i1 %2114, label %2116, label %2115

2115:                                             ; preds = %2112
  tail call void @free(ptr noundef nonnull %2113) #25
  br label %2116

2116:                                             ; preds = %2115, %2112
  %2117 = load ptr, ptr @state_table.89, align 8, !tbaa !11
  %2118 = icmp eq ptr %2117, null
  br i1 %2118, label %2120, label %2119

2119:                                             ; preds = %2116
  tail call void @free(ptr noundef nonnull %2117) #25
  br label %2120

2120:                                             ; preds = %2119, %2116
  %2121 = load ptr, ptr @first_shift, align 8, !tbaa !11
  %2122 = icmp eq ptr %2121, null
  br i1 %2122, label %2274, label %2123

2123:                                             ; preds = %2120
  %2124 = getelementptr inbounds %struct.shifts, ptr %2121, i64 0, i32 1
  %2125 = load i16, ptr %2124, align 8, !tbaa !104
  %2126 = icmp eq i16 %2125, 0
  br i1 %2126, label %2127, label %2250

2127:                                             ; preds = %2123
  %2128 = getelementptr inbounds %struct.shifts, ptr %2121, i64 0, i32 2
  %2129 = load i16, ptr %2128, align 2, !tbaa !106
  %2130 = load ptr, ptr @first_state, align 8, !tbaa !11
  %2131 = load i32, ptr @start_symbol, align 4, !tbaa !7
  br label %2132

2132:                                             ; preds = %2132, %2127
  %2133 = phi ptr [ %2130, %2127 ], [ %2134, %2132 ]
  %2134 = load ptr, ptr %2133, align 8, !tbaa !108
  %2135 = getelementptr inbounds %struct.core, ptr %2134, i64 0, i32 3
  %2136 = load i16, ptr %2135, align 2, !tbaa !110
  %2137 = sext i16 %2136 to i32
  %2138 = icmp sgt i32 %2131, %2137
  %2139 = getelementptr inbounds %struct.core, ptr %2134, i64 0, i32 2
  %2140 = load i16, ptr %2139, align 8, !tbaa !91
  %2141 = icmp slt i16 %2140, %2129
  %2142 = select i1 %2138, i1 %2141, i1 false
  br i1 %2142, label %2132, label %2143, !llvm.loop !111

2143:                                             ; preds = %2132
  %.lcssa8 = phi i32 [ %2137, %2132 ]
  %.lcssa7 = phi i16 [ %2140, %2132 ]
  %2144 = icmp eq i32 %2131, %.lcssa8
  br i1 %2144, label %2145, label %2193

2145:                                             ; preds = %2143
  %2146 = icmp sgt i16 %.lcssa7, 0
  br i1 %2146, label %2147, label %2153

2147:                                             ; preds = %2147, %2145
  %2148 = phi ptr [ %2149, %2147 ], [ %2121, %2145 ]
  %2149 = load ptr, ptr %2148, align 8, !tbaa !112
  %2150 = getelementptr inbounds %struct.shifts, ptr %2149, i64 0, i32 1
  %2151 = load i16, ptr %2150, align 8, !tbaa !104
  %2152 = icmp slt i16 %2151, %.lcssa7
  br i1 %2152, label %2147, label %2153, !llvm.loop !113

2153:                                             ; preds = %2147, %2145
  %2154 = phi ptr [ %2121, %2145 ], [ %2149, %2147 ]
  %2155 = phi ptr [ undef, %2145 ], [ %2148, %2147 ]
  %2156 = phi i16 [ 0, %2145 ], [ %2151, %2147 ]
  %2157 = icmp eq i16 %2156, %.lcssa7
  br i1 %2157, label %2158, label %2186

2158:                                             ; preds = %2153
  %2159 = getelementptr inbounds %struct.shifts, ptr %2154, i64 0, i32 2
  %2160 = load i16, ptr %2159, align 2, !tbaa !106
  %2161 = sext i16 %2160 to i32
  %2162 = shl nsw i32 %2161, 1
  %2163 = add nsw i32 %2162, 16
  %2164 = tail call fastcc ptr @mallocate(i32 noundef %2163) #25
  %2165 = load ptr, ptr %2154, align 8, !tbaa !112
  store ptr %2165, ptr %2164, align 8, !tbaa !112
  %2166 = getelementptr inbounds %struct.shifts, ptr %2164, i64 0, i32 1
  store i16 %.lcssa7, ptr %2166, align 8, !tbaa !104
  %2167 = load i16, ptr %2159, align 2, !tbaa !106
  %2168 = add i16 %2167, 1
  %2169 = getelementptr inbounds %struct.shifts, ptr %2164, i64 0, i32 2
  store i16 %2168, ptr %2169, align 2, !tbaa !106
  %2170 = load i32, ptr @nstates, align 4, !tbaa !7
  %2171 = trunc i32 %2170 to i16
  %2172 = getelementptr inbounds %struct.shifts, ptr %2164, i64 0, i32 3
  store i16 %2171, ptr %2172, align 4, !tbaa !41
  %2173 = load i16, ptr %2159, align 2, !tbaa !106
  %2174 = icmp sgt i16 %2173, 0
  br i1 %2174, label %2175, label %2185

2175:                                             ; preds = %2158
  %2176 = zext i16 %2173 to i64
  br label %2177

2177:                                             ; preds = %2177, %2175
  %2178 = phi i64 [ %2176, %2175 ], [ %2179, %2177 ]
  %2179 = add nsw i64 %2178, -1
  %2180 = and i64 %2179, 4294967295
  %2181 = getelementptr inbounds %struct.shifts, ptr %2154, i64 0, i32 3, i64 %2180
  %2182 = load i16, ptr %2181, align 2, !tbaa !41
  %2183 = getelementptr inbounds %struct.shifts, ptr %2164, i64 0, i32 3, i64 %2178
  store i16 %2182, ptr %2183, align 2, !tbaa !41
  %2184 = icmp ugt i64 %2178, 1
  br i1 %2184, label %2177, label %2185, !llvm.loop !114

2185:                                             ; preds = %2177, %2158
  store ptr %2164, ptr %2155, align 8, !tbaa !112
  tail call void @free(ptr noundef nonnull %2154) #25
  br label %2297

2186:                                             ; preds = %2153
  %2187 = tail call fastcc ptr @mallocate(i32 noundef 16) #25
  store ptr %2154, ptr %2187, align 8, !tbaa !112
  %2188 = getelementptr inbounds %struct.shifts, ptr %2187, i64 0, i32 1
  store i16 %.lcssa7, ptr %2188, align 8, !tbaa !104
  %2189 = getelementptr inbounds %struct.shifts, ptr %2187, i64 0, i32 2
  store i16 1, ptr %2189, align 2, !tbaa !106
  %2190 = load i32, ptr @nstates, align 4, !tbaa !7
  %2191 = trunc i32 %2190 to i16
  %2192 = getelementptr inbounds %struct.shifts, ptr %2187, i64 0, i32 3
  store i16 %2191, ptr %2192, align 4, !tbaa !41
  store ptr %2187, ptr %2155, align 8, !tbaa !112
  br label %2297

2193:                                             ; preds = %2143
  %2194 = sext i16 %2129 to i32
  %2195 = shl nsw i32 %2194, 1
  %2196 = add nsw i32 %2195, 16
  %2197 = tail call fastcc ptr @mallocate(i32 noundef %2196) #25
  %2198 = load ptr, ptr %2121, align 8, !tbaa !112
  store ptr %2198, ptr %2197, align 8, !tbaa !112
  %2199 = load i16, ptr %2128, align 2, !tbaa !106
  %2200 = add i16 %2199, 1
  %2201 = getelementptr inbounds %struct.shifts, ptr %2197, i64 0, i32 2
  store i16 %2200, ptr %2201, align 2, !tbaa !106
  %2202 = icmp sgt i16 %.lcssa7, 0
  br i1 %2202, label %2203, label %2212

2203:                                             ; preds = %2193
  %2204 = zext i16 %.lcssa7 to i64
  br label %2205

2205:                                             ; preds = %2205, %2203
  %2206 = phi i64 [ 0, %2203 ], [ %2210, %2205 ]
  %2207 = getelementptr inbounds %struct.shifts, ptr %2121, i64 0, i32 3, i64 %2206
  %2208 = load i16, ptr %2207, align 2, !tbaa !41
  %2209 = getelementptr inbounds %struct.shifts, ptr %2197, i64 0, i32 3, i64 %2206
  store i16 %2208, ptr %2209, align 2, !tbaa !41
  %2210 = add nuw nsw i64 %2206, 1
  %2211 = icmp eq i64 %2210, %2204
  br i1 %2211, label %2212, label %2205, !llvm.loop !115

2212:                                             ; preds = %2205, %2193
  %2213 = load i32, ptr @nstates, align 4, !tbaa !7
  %2214 = trunc i32 %2213 to i16
  %2215 = sext i16 %.lcssa7 to i64
  %2216 = getelementptr inbounds %struct.shifts, ptr %2197, i64 0, i32 3, i64 %2215
  store i16 %2214, ptr %2216, align 2, !tbaa !41
  %2217 = load i16, ptr %2128, align 2, !tbaa !106
  %2218 = icmp slt i16 %.lcssa7, %2217
  br i1 %2218, label %2219, label %2228

2219:                                             ; preds = %2219, %2212
  %2220 = phi i64 [ %2223, %2219 ], [ %2215, %2212 ]
  %2221 = getelementptr inbounds %struct.shifts, ptr %2121, i64 0, i32 3, i64 %2220
  %2222 = load i16, ptr %2221, align 2, !tbaa !41
  %2223 = add nsw i64 %2220, 1
  %2224 = getelementptr inbounds %struct.shifts, ptr %2197, i64 0, i32 3, i64 %2223
  store i16 %2222, ptr %2224, align 2, !tbaa !41
  %2225 = load i16, ptr %2128, align 2, !tbaa !106
  %2226 = sext i16 %2225 to i64
  %2227 = icmp slt i64 %2223, %2226
  br i1 %2227, label %2219, label %2228, !llvm.loop !116

2228:                                             ; preds = %2219, %2212
  store ptr %2197, ptr @first_shift, align 8, !tbaa !11
  %2229 = load ptr, ptr @last_shift, align 8, !tbaa !11
  %2230 = icmp eq ptr %2229, %2121
  br i1 %2230, label %2231, label %2232

2231:                                             ; preds = %2228
  store ptr %2197, ptr @last_shift, align 8, !tbaa !11
  br label %2232

2232:                                             ; preds = %2231, %2228
  tail call void @free(ptr noundef nonnull %2121) #25
  %2233 = tail call fastcc ptr @mallocate(i32 noundef 22) #25
  %2234 = load i32, ptr @nstates, align 4, !tbaa !7
  %2235 = trunc i32 %2234 to i16
  %2236 = getelementptr inbounds %struct.core, ptr %2233, i64 0, i32 2
  store i16 %2235, ptr %2236, align 8, !tbaa !91
  %2237 = load i32, ptr @start_symbol, align 4, !tbaa !7
  %2238 = trunc i32 %2237 to i16
  %2239 = getelementptr inbounds %struct.core, ptr %2233, i64 0, i32 3
  store i16 %2238, ptr %2239, align 2, !tbaa !110
  %2240 = load ptr, ptr @last_state, align 8, !tbaa !11
  store ptr %2233, ptr %2240, align 8, !tbaa !108
  store ptr %2233, ptr @last_state, align 8, !tbaa !11
  %2241 = tail call fastcc ptr @mallocate(i32 noundef 16) #25
  %2242 = load i32, ptr @nstates, align 4, !tbaa !7
  %2243 = add nsw i32 %2242, 1
  store i32 %2243, ptr @nstates, align 4, !tbaa !7
  %2244 = trunc i32 %2242 to i16
  %2245 = getelementptr inbounds %struct.shifts, ptr %2241, i64 0, i32 1
  store i16 %2244, ptr %2245, align 8, !tbaa !104
  %2246 = getelementptr inbounds %struct.shifts, ptr %2241, i64 0, i32 2
  store i16 1, ptr %2246, align 2, !tbaa !106
  %2247 = trunc i32 %2243 to i16
  %2248 = getelementptr inbounds %struct.shifts, ptr %2241, i64 0, i32 3
  store i16 %2247, ptr %2248, align 4, !tbaa !41
  %2249 = load ptr, ptr @last_shift, align 8, !tbaa !11
  store ptr %2241, ptr %2249, align 8, !tbaa !112
  store ptr %2241, ptr @last_shift, align 8, !tbaa !11
  br label %2297

2250:                                             ; preds = %2123
  %2251 = tail call fastcc ptr @mallocate(i32 noundef 16) #25
  %2252 = load ptr, ptr @first_shift, align 8, !tbaa !11
  store ptr %2252, ptr %2251, align 8, !tbaa !112
  %2253 = getelementptr inbounds %struct.shifts, ptr %2251, i64 0, i32 2
  store i16 1, ptr %2253, align 2, !tbaa !106
  %2254 = load i32, ptr @nstates, align 4, !tbaa !7
  %2255 = trunc i32 %2254 to i16
  %2256 = getelementptr inbounds %struct.shifts, ptr %2251, i64 0, i32 3
  store i16 %2255, ptr %2256, align 4, !tbaa !41
  store ptr %2251, ptr @first_shift, align 8, !tbaa !11
  %2257 = tail call fastcc ptr @mallocate(i32 noundef 22) #25
  %2258 = load i32, ptr @nstates, align 4, !tbaa !7
  %2259 = trunc i32 %2258 to i16
  %2260 = getelementptr inbounds %struct.core, ptr %2257, i64 0, i32 2
  store i16 %2259, ptr %2260, align 8, !tbaa !91
  %2261 = load i32, ptr @start_symbol, align 4, !tbaa !7
  %2262 = trunc i32 %2261 to i16
  %2263 = getelementptr inbounds %struct.core, ptr %2257, i64 0, i32 3
  store i16 %2262, ptr %2263, align 2, !tbaa !110
  %2264 = load ptr, ptr @last_state, align 8, !tbaa !11
  store ptr %2257, ptr %2264, align 8, !tbaa !108
  store ptr %2257, ptr @last_state, align 8, !tbaa !11
  %2265 = tail call fastcc ptr @mallocate(i32 noundef 16) #25
  %2266 = load i32, ptr @nstates, align 4, !tbaa !7
  %2267 = add nsw i32 %2266, 1
  store i32 %2267, ptr @nstates, align 4, !tbaa !7
  %2268 = trunc i32 %2266 to i16
  %2269 = getelementptr inbounds %struct.shifts, ptr %2265, i64 0, i32 1
  store i16 %2268, ptr %2269, align 8, !tbaa !104
  %2270 = getelementptr inbounds %struct.shifts, ptr %2265, i64 0, i32 2
  store i16 1, ptr %2270, align 2, !tbaa !106
  %2271 = trunc i32 %2267 to i16
  %2272 = getelementptr inbounds %struct.shifts, ptr %2265, i64 0, i32 3
  store i16 %2271, ptr %2272, align 4, !tbaa !41
  %2273 = load ptr, ptr @last_shift, align 8, !tbaa !11
  store ptr %2265, ptr %2273, align 8, !tbaa !112
  store ptr %2265, ptr @last_shift, align 8, !tbaa !11
  br label %2297

2274:                                             ; preds = %2120
  %2275 = tail call fastcc ptr @mallocate(i32 noundef 16) #25
  %2276 = getelementptr inbounds %struct.shifts, ptr %2275, i64 0, i32 2
  store i16 1, ptr %2276, align 2, !tbaa !106
  %2277 = load i32, ptr @nstates, align 4, !tbaa !7
  %2278 = trunc i32 %2277 to i16
  %2279 = getelementptr inbounds %struct.shifts, ptr %2275, i64 0, i32 3
  store i16 %2278, ptr %2279, align 4, !tbaa !41
  store ptr %2275, ptr @first_shift, align 8, !tbaa !11
  store ptr %2275, ptr @last_shift, align 8, !tbaa !11
  %2280 = tail call fastcc ptr @mallocate(i32 noundef 22) #25
  %2281 = load i32, ptr @nstates, align 4, !tbaa !7
  %2282 = trunc i32 %2281 to i16
  %2283 = getelementptr inbounds %struct.core, ptr %2280, i64 0, i32 2
  store i16 %2282, ptr %2283, align 8, !tbaa !91
  %2284 = load i32, ptr @start_symbol, align 4, !tbaa !7
  %2285 = trunc i32 %2284 to i16
  %2286 = getelementptr inbounds %struct.core, ptr %2280, i64 0, i32 3
  store i16 %2285, ptr %2286, align 2, !tbaa !110
  %2287 = load ptr, ptr @last_state, align 8, !tbaa !11
  store ptr %2280, ptr %2287, align 8, !tbaa !108
  store ptr %2280, ptr @last_state, align 8, !tbaa !11
  %2288 = tail call fastcc ptr @mallocate(i32 noundef 16) #25
  %2289 = load i32, ptr @nstates, align 4, !tbaa !7
  %2290 = add nsw i32 %2289, 1
  store i32 %2290, ptr @nstates, align 4, !tbaa !7
  %2291 = trunc i32 %2289 to i16
  %2292 = getelementptr inbounds %struct.shifts, ptr %2288, i64 0, i32 1
  store i16 %2291, ptr %2292, align 8, !tbaa !104
  %2293 = getelementptr inbounds %struct.shifts, ptr %2288, i64 0, i32 2
  store i16 1, ptr %2293, align 2, !tbaa !106
  %2294 = trunc i32 %2290 to i16
  %2295 = getelementptr inbounds %struct.shifts, ptr %2288, i64 0, i32 3
  store i16 %2294, ptr %2295, align 4, !tbaa !41
  %2296 = load ptr, ptr @last_shift, align 8, !tbaa !11
  store ptr %2288, ptr %2296, align 8, !tbaa !112
  store ptr %2288, ptr @last_shift, align 8, !tbaa !11
  br label %2297

2297:                                             ; preds = %2274, %2250, %2232, %2186, %2185
  %2298 = tail call fastcc ptr @mallocate(i32 noundef 22) #25
  %2299 = load i32, ptr @nstates, align 4, !tbaa !7
  %2300 = trunc i32 %2299 to i16
  %2301 = getelementptr inbounds %struct.core, ptr %2298, i64 0, i32 2
  store i16 %2300, ptr %2301, align 8, !tbaa !91
  %2302 = load ptr, ptr @last_state, align 8, !tbaa !11
  store ptr %2298, ptr %2302, align 8, !tbaa !108
  store ptr %2298, ptr @last_state, align 8, !tbaa !11
  %2303 = tail call fastcc ptr @mallocate(i32 noundef 16) #25
  %2304 = load i32, ptr @nstates, align 4, !tbaa !7
  %2305 = add nsw i32 %2304, 1
  store i32 %2305, ptr @nstates, align 4, !tbaa !7
  %2306 = trunc i32 %2304 to i16
  %2307 = getelementptr inbounds %struct.shifts, ptr %2303, i64 0, i32 1
  store i16 %2306, ptr %2307, align 8, !tbaa !104
  %2308 = getelementptr inbounds %struct.shifts, ptr %2303, i64 0, i32 2
  store i16 1, ptr %2308, align 2, !tbaa !106
  %2309 = trunc i32 %2305 to i16
  %2310 = getelementptr inbounds %struct.shifts, ptr %2303, i64 0, i32 3
  store i16 %2309, ptr %2310, align 4, !tbaa !41
  %2311 = load ptr, ptr @last_shift, align 8, !tbaa !11
  store ptr %2303, ptr %2311, align 8, !tbaa !112
  store ptr %2303, ptr @last_shift, align 8, !tbaa !11
  store i32 %2305, ptr @final_state, align 4, !tbaa !7
  %2312 = tail call fastcc ptr @mallocate(i32 noundef 22) #25
  %2313 = load i32, ptr @nstates, align 4, !tbaa !7
  %2314 = add nsw i32 %2313, 1
  store i32 %2314, ptr @nstates, align 4, !tbaa !7
  %2315 = trunc i32 %2313 to i16
  %2316 = getelementptr inbounds %struct.core, ptr %2312, i64 0, i32 2
  store i16 %2315, ptr %2316, align 8, !tbaa !91
  %2317 = load ptr, ptr @last_state, align 8, !tbaa !11
  store ptr %2312, ptr %2317, align 8, !tbaa !108
  store ptr %2312, ptr @last_state, align 8, !tbaa !11
  %2318 = load i32, ptr @ntokens, align 4, !tbaa !7
  %2319 = add nsw i32 %2318, 31
  %2320 = sdiv i32 %2319, 32
  store i32 %2320, ptr @tokensetsize, align 4, !tbaa !7
  %2321 = shl i32 %2314, 3
  %2322 = tail call fastcc ptr @mallocate(i32 noundef %2321) #25
  store ptr %2322, ptr @state_table, align 8, !tbaa !11
  %2323 = load ptr, ptr @first_state, align 8, !tbaa !11
  %2324 = icmp eq ptr %2323, null
  br i1 %2324, label %2333, label %2325

2325:                                             ; preds = %2325, %2297
  %2326 = phi ptr [ %2331, %2325 ], [ %2323, %2297 ]
  %2327 = getelementptr inbounds %struct.core, ptr %2326, i64 0, i32 2
  %2328 = load i16, ptr %2327, align 8, !tbaa !91
  %2329 = sext i16 %2328 to i64
  %2330 = getelementptr inbounds ptr, ptr %2322, i64 %2329
  store ptr %2326, ptr %2330, align 8, !tbaa !11
  %2331 = load ptr, ptr %2326, align 8, !tbaa !11
  %2332 = icmp eq ptr %2331, null
  br i1 %2332, label %2333, label %2325, !llvm.loop !117

2333:                                             ; preds = %2325, %2297
  %2334 = load i32, ptr @nstates, align 4, !tbaa !7
  %2335 = shl i32 %2334, 1
  %2336 = tail call fastcc ptr @mallocate(i32 noundef %2335) #25
  store ptr %2336, ptr @accessing_symbol, align 8, !tbaa !11
  %2337 = load ptr, ptr @first_state, align 8, !tbaa !11
  %2338 = icmp eq ptr %2337, null
  br i1 %2338, label %2349, label %2339

2339:                                             ; preds = %2339, %2333
  %2340 = phi ptr [ %2347, %2339 ], [ %2337, %2333 ]
  %2341 = getelementptr inbounds %struct.core, ptr %2340, i64 0, i32 3
  %2342 = load i16, ptr %2341, align 2, !tbaa !110
  %2343 = getelementptr inbounds %struct.core, ptr %2340, i64 0, i32 2
  %2344 = load i16, ptr %2343, align 8, !tbaa !91
  %2345 = sext i16 %2344 to i64
  %2346 = getelementptr inbounds i16, ptr %2336, i64 %2345
  store i16 %2342, ptr %2346, align 2, !tbaa !41
  %2347 = load ptr, ptr %2340, align 8, !tbaa !11
  %2348 = icmp eq ptr %2347, null
  br i1 %2348, label %2349, label %2339, !llvm.loop !118

2349:                                             ; preds = %2339, %2333
  %2350 = load i32, ptr @nstates, align 4, !tbaa !7
  %2351 = shl i32 %2350, 3
  %2352 = tail call fastcc ptr @mallocate(i32 noundef %2351) #25
  store ptr %2352, ptr @shift_table, align 8, !tbaa !11
  %2353 = load ptr, ptr @first_shift, align 8, !tbaa !11
  %2354 = icmp eq ptr %2353, null
  br i1 %2354, label %2363, label %2355

2355:                                             ; preds = %2355, %2349
  %2356 = phi ptr [ %2361, %2355 ], [ %2353, %2349 ]
  %2357 = getelementptr inbounds %struct.shifts, ptr %2356, i64 0, i32 1
  %2358 = load i16, ptr %2357, align 8, !tbaa !104
  %2359 = sext i16 %2358 to i64
  %2360 = getelementptr inbounds ptr, ptr %2352, i64 %2359
  store ptr %2356, ptr %2360, align 8, !tbaa !11
  %2361 = load ptr, ptr %2356, align 8, !tbaa !11
  %2362 = icmp eq ptr %2361, null
  br i1 %2362, label %2363, label %2355, !llvm.loop !119

2363:                                             ; preds = %2355, %2349
  %2364 = load i32, ptr @nstates, align 4, !tbaa !7
  %2365 = shl i32 %2364, 3
  %2366 = tail call fastcc ptr @mallocate(i32 noundef %2365) #25
  store ptr %2366, ptr @reduction_table, align 8, !tbaa !11
  %2367 = load ptr, ptr @first_reduction, align 8, !tbaa !11
  %2368 = icmp eq ptr %2367, null
  br i1 %2368, label %2377, label %2369

2369:                                             ; preds = %2369, %2363
  %2370 = phi ptr [ %2375, %2369 ], [ %2367, %2363 ]
  %2371 = getelementptr inbounds %struct.shifts, ptr %2370, i64 0, i32 1
  %2372 = load i16, ptr %2371, align 8, !tbaa !92
  %2373 = sext i16 %2372 to i64
  %2374 = getelementptr inbounds ptr, ptr %2366, i64 %2373
  store ptr %2370, ptr %2374, align 8, !tbaa !11
  %2375 = load ptr, ptr %2370, align 8, !tbaa !11
  %2376 = icmp eq ptr %2375, null
  br i1 %2376, label %2377, label %2369, !llvm.loop !120

2377:                                             ; preds = %2369, %2363
  %2378 = load ptr, ptr @ritem, align 8, !tbaa !11
  %2379 = load i16, ptr %2378, align 2, !tbaa !41
  %2380 = icmp eq i16 %2379, 0
  br i1 %2380, label %2394, label %2381

2381:                                             ; preds = %2381, %2377
  %2382 = phi i16 [ %2392, %2381 ], [ %2379, %2377 ]
  %2383 = phi i32 [ %2390, %2381 ], [ 0, %2377 ]
  %2384 = phi i32 [ %2389, %2381 ], [ 0, %2377 ]
  %2385 = phi ptr [ %2391, %2381 ], [ %2378, %2377 ]
  %2386 = icmp sgt i16 %2382, 0
  %2387 = add nsw i32 %2384, 1
  %2388 = tail call i32 @llvm.smax.i32(i32 %2384, i32 %2383)
  %2389 = select i1 %2386, i32 %2387, i32 0
  %2390 = select i1 %2386, i32 %2383, i32 %2388
  %2391 = getelementptr inbounds i16, ptr %2385, i64 1
  %2392 = load i16, ptr %2391, align 2, !tbaa !41
  %2393 = icmp eq i16 %2392, 0
  br i1 %2393, label %2394, label %2381, !llvm.loop !121

2394:                                             ; preds = %2381, %2377
  %2395 = phi i32 [ 0, %2377 ], [ %2390, %2381 ]
  store i32 %2395, ptr @maxrhs, align 4, !tbaa !7
  %2396 = load i32, ptr @nstates, align 4, !tbaa !7
  %2397 = tail call fastcc ptr @mallocate(i32 noundef %2396) #25
  store ptr %2397, ptr @consistent, align 8, !tbaa !11
  %2398 = load i32, ptr @nstates, align 4, !tbaa !7
  %2399 = shl i32 %2398, 1
  %2400 = add i32 %2399, 2
  %2401 = tail call fastcc ptr @mallocate(i32 noundef %2400) #25
  store ptr %2401, ptr @lookaheads, align 8, !tbaa !11
  %2402 = load i32, ptr @nstates, align 4, !tbaa !7
  %2403 = icmp sgt i32 %2402, 0
  br i1 %2403, label %2404, label %2412

2404:                                             ; preds = %2394
  %2405 = load ptr, ptr @reduction_table, align 8, !tbaa !11
  %2406 = load ptr, ptr @shift_table, align 8, !tbaa !11
  %2407 = zext i32 %2402 to i64
  %2408 = load ptr, ptr @accessing_symbol, align 8
  %2409 = load i32, ptr @ntokens, align 4
  %2410 = load ptr, ptr @consistent, align 8
  %2411 = load i32, ptr @error_token_number, align 4
  br label %2414

2412:                                             ; preds = %2394
  %2413 = sext i32 %2402 to i64
  br label %2469

2414:                                             ; preds = %2466, %2404
  %2415 = phi i64 [ %2467, %2466 ], [ 0, %2404 ]
  %2416 = phi i32 [ %2444, %2466 ], [ 0, %2404 ]
  %2417 = trunc i32 %2416 to i16
  %2418 = getelementptr inbounds i16, ptr %2401, i64 %2415
  store i16 %2417, ptr %2418, align 2, !tbaa !41
  %2419 = getelementptr inbounds ptr, ptr %2405, i64 %2415
  %2420 = load ptr, ptr %2419, align 8, !tbaa !11
  %2421 = getelementptr inbounds ptr, ptr %2406, i64 %2415
  %2422 = load ptr, ptr %2421, align 8, !tbaa !11
  %2423 = icmp eq ptr %2420, null
  br i1 %2423, label %2441, label %2424

2424:                                             ; preds = %2414
  %2425 = getelementptr inbounds %struct.shifts, ptr %2420, i64 0, i32 2
  %2426 = load i16, ptr %2425, align 2, !tbaa !94
  %2427 = icmp sgt i16 %2426, 1
  br i1 %2427, label %2438, label %2428

2428:                                             ; preds = %2424
  %2429 = icmp eq ptr %2422, null
  br i1 %2429, label %2441, label %2430

2430:                                             ; preds = %2428
  %2431 = getelementptr inbounds %struct.shifts, ptr %2422, i64 0, i32 3
  %2432 = load i16, ptr %2431, align 4, !tbaa !41
  %2433 = sext i16 %2432 to i64
  %2434 = getelementptr inbounds i16, ptr %2408, i64 %2433
  %2435 = load i16, ptr %2434, align 2, !tbaa !41
  %2436 = sext i16 %2435 to i32
  %2437 = icmp sgt i32 %2409, %2436
  br i1 %2437, label %2438, label %2441

2438:                                             ; preds = %2430, %2424
  %2439 = sext i16 %2426 to i32
  %2440 = add nsw i32 %2416, %2439
  br label %2443

2441:                                             ; preds = %2430, %2428, %2414
  %2442 = getelementptr inbounds i8, ptr %2410, i64 %2415
  store i8 1, ptr %2442, align 1, !tbaa !13
  br label %2443

2443:                                             ; preds = %2441, %2438
  %2444 = phi i32 [ %2440, %2438 ], [ %2416, %2441 ]
  %2445 = icmp eq ptr %2422, null
  br i1 %2445, label %2466, label %2446

2446:                                             ; preds = %2443
  %2447 = getelementptr inbounds %struct.shifts, ptr %2422, i64 0, i32 2
  %2448 = load i16, ptr %2447, align 2, !tbaa !106
  %2449 = icmp sgt i16 %2448, 0
  br i1 %2449, label %2450, label %2466

2450:                                             ; preds = %2446
  %2451 = zext i16 %2448 to i64
  br label %2455

2452:                                             ; preds = %2455
  %2453 = add nuw nsw i64 %2456, 1
  %2454 = icmp eq i64 %2453, %2451
  br i1 %2454, label %2466, label %2455, !llvm.loop !122

2455:                                             ; preds = %2452, %2450
  %2456 = phi i64 [ 0, %2450 ], [ %2453, %2452 ]
  %2457 = getelementptr inbounds %struct.shifts, ptr %2422, i64 0, i32 3, i64 %2456
  %2458 = load i16, ptr %2457, align 2, !tbaa !41
  %2459 = sext i16 %2458 to i64
  %2460 = getelementptr inbounds i16, ptr %2408, i64 %2459
  %2461 = load i16, ptr %2460, align 2, !tbaa !41
  %2462 = sext i16 %2461 to i32
  %2463 = icmp eq i32 %2411, %2462
  br i1 %2463, label %2464, label %2452

2464:                                             ; preds = %2455
  %2465 = getelementptr inbounds i8, ptr %2410, i64 %2415
  store i8 0, ptr %2465, align 1, !tbaa !13
  br label %2466

2466:                                             ; preds = %2464, %2452, %2446, %2443
  %2467 = add nuw nsw i64 %2415, 1
  %2468 = icmp eq i64 %2467, %2407
  br i1 %2468, label %2469, label %2414, !llvm.loop !123

2469:                                             ; preds = %2466, %2412
  %2470 = phi i64 [ %2413, %2412 ], [ %2407, %2466 ]
  %2471 = phi i32 [ 0, %2412 ], [ %2444, %2466 ]
  %2472 = trunc i32 %2471 to i16
  %2473 = getelementptr inbounds i16, ptr %2401, i64 %2470
  store i16 %2472, ptr %2473, align 2, !tbaa !41
  %2474 = load i32, ptr @tokensetsize, align 4, !tbaa !7
  %2475 = shl i32 %2471, 2
  %2476 = mul i32 %2475, %2474
  %2477 = tail call fastcc ptr @mallocate(i32 noundef %2476) #25
  store ptr %2477, ptr @LA, align 8, !tbaa !11
  %2478 = shl i32 %2471, 1
  %2479 = tail call fastcc ptr @mallocate(i32 noundef %2478) #25
  store ptr %2479, ptr @LAruleno, align 8, !tbaa !11
  %2480 = shl i32 %2471, 3
  %2481 = tail call fastcc ptr @mallocate(i32 noundef %2480) #25
  store ptr %2481, ptr @lookback, align 8, !tbaa !11
  %2482 = load i32, ptr @nstates, align 4, !tbaa !7
  %2483 = icmp sgt i32 %2482, 0
  br i1 %2483, label %2484, label %2517

2484:                                             ; preds = %2469
  %2485 = load ptr, ptr @LAruleno, align 8, !tbaa !11
  %2486 = load ptr, ptr @consistent, align 8, !tbaa !11
  %2487 = load ptr, ptr @reduction_table, align 8
  %2488 = zext i32 %2482 to i64
  br label %2489

2489:                                             ; preds = %2513, %2484
  %2490 = phi i64 [ 0, %2484 ], [ %2515, %2513 ]
  %2491 = phi ptr [ %2485, %2484 ], [ %2514, %2513 ]
  %2492 = getelementptr inbounds i8, ptr %2486, i64 %2490
  %2493 = load i8, ptr %2492, align 1, !tbaa !13
  %2494 = icmp eq i8 %2493, 0
  br i1 %2494, label %2495, label %2513

2495:                                             ; preds = %2489
  %2496 = getelementptr inbounds ptr, ptr %2487, i64 %2490
  %2497 = load ptr, ptr %2496, align 8, !tbaa !11
  %2498 = icmp eq ptr %2497, null
  br i1 %2498, label %2513, label %2499

2499:                                             ; preds = %2495
  %2500 = getelementptr inbounds %struct.shifts, ptr %2497, i64 0, i32 2
  %2501 = load i16, ptr %2500, align 2, !tbaa !94
  %2502 = icmp sgt i16 %2501, 0
  br i1 %2502, label %2503, label %2513

2503:                                             ; preds = %2503, %2499
  %2504 = phi i64 [ %2509, %2503 ], [ 0, %2499 ]
  %2505 = phi ptr [ %2508, %2503 ], [ %2491, %2499 ]
  %2506 = getelementptr inbounds %struct.shifts, ptr %2497, i64 0, i32 3, i64 %2504
  %2507 = load i16, ptr %2506, align 2, !tbaa !41
  %2508 = getelementptr inbounds i16, ptr %2505, i64 1
  store i16 %2507, ptr %2505, align 2, !tbaa !41
  %2509 = add nuw nsw i64 %2504, 1
  %2510 = load i16, ptr %2500, align 2, !tbaa !94
  %2511 = sext i16 %2510 to i64
  %2512 = icmp slt i64 %2509, %2511
  br i1 %2512, label %2503, label %2513, !llvm.loop !124

2513:                                             ; preds = %2503, %2499, %2495, %2489
  %2514 = phi ptr [ %2491, %2489 ], [ %2491, %2495 ], [ %2491, %2499 ], [ %2508, %2503 ]
  %2515 = add nuw nsw i64 %2490, 1
  %2516 = icmp eq i64 %2515, %2488
  br i1 %2516, label %2517, label %2489, !llvm.loop !125

2517:                                             ; preds = %2513, %2469
  %2518 = load i32, ptr @nvars, align 4, !tbaa !7
  %2519 = shl i32 %2518, 1
  %2520 = add i32 %2519, 2
  %2521 = tail call fastcc ptr @mallocate(i32 noundef %2520) #25
  %2522 = load i32, ptr @ntokens, align 4, !tbaa !7
  %2523 = sext i32 %2522 to i64
  %2524 = sub nsw i64 0, %2523
  %2525 = getelementptr inbounds i16, ptr %2521, i64 %2524
  store ptr %2525, ptr @goto_map, align 8, !tbaa !11
  %2526 = load i32, ptr @nvars, align 4, !tbaa !7
  %2527 = shl i32 %2526, 1
  %2528 = add i32 %2527, 2
  %2529 = tail call fastcc ptr @mallocate(i32 noundef %2528) #25
  %2530 = load i32, ptr @ntokens, align 4, !tbaa !7
  %2531 = sext i32 %2530 to i64
  %2532 = sub nsw i64 0, %2531
  %2533 = getelementptr inbounds i16, ptr %2529, i64 %2532
  store i32 0, ptr @ngotos, align 4, !tbaa !7
  %2534 = load ptr, ptr @first_shift, align 8, !tbaa !11
  %2535 = icmp eq ptr %2534, null
  %2536 = load ptr, ptr @goto_map, align 8
  br i1 %2535, label %2574, label %2537

2537:                                             ; preds = %2517
  %2538 = load ptr, ptr @accessing_symbol, align 8
  br label %2539

2539:                                             ; preds = %2570, %2537
  %2540 = phi i32 [ %2571, %2570 ], [ 0, %2537 ]
  %2541 = phi ptr [ %2572, %2570 ], [ %2534, %2537 ]
  %2542 = getelementptr inbounds %struct.shifts, ptr %2541, i64 0, i32 2
  %2543 = load i16, ptr %2542, align 2, !tbaa !106
  %2544 = icmp sgt i16 %2543, 0
  br i1 %2544, label %2545, label %2570

2545:                                             ; preds = %2539
  %2546 = zext i16 %2543 to i64
  br label %2547

2547:                                             ; preds = %2563, %2545
  %2548 = phi i32 [ %2540, %2545 ], [ %2564, %2563 ]
  %2549 = phi i64 [ %2546, %2545 ], [ %2550, %2563 ]
  %2550 = add nsw i64 %2549, -1
  %2551 = and i64 %2550, 4294967295
  %2552 = getelementptr inbounds %struct.shifts, ptr %2541, i64 0, i32 3, i64 %2551
  %2553 = load i16, ptr %2552, align 2, !tbaa !41
  %2554 = sext i16 %2553 to i64
  %2555 = getelementptr inbounds i16, ptr %2538, i64 %2554
  %2556 = load i16, ptr %2555, align 2, !tbaa !41
  %2557 = sext i16 %2556 to i32
  %2558 = icmp sgt i32 %2530, %2557
  br i1 %2558, label %2570, label %2559

2559:                                             ; preds = %2547
  %2560 = icmp eq i32 %2548, 32767
  br i1 %2560, label %2561, label %2563

2561:                                             ; preds = %2559
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %3) #32
  %2562 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) @.str.2.131, i32 noundef 32767, ptr noundef nonnull @.str.104) #25
  call fastcc void @fatal(ptr noundef nonnull %3) #26
  unreachable

2563:                                             ; preds = %2559
  %2564 = add nsw i32 %2548, 1
  store i32 %2564, ptr @ngotos, align 4, !tbaa !7
  %2565 = sext i16 %2556 to i64
  %2566 = getelementptr inbounds i16, ptr %2536, i64 %2565
  %2567 = load i16, ptr %2566, align 2, !tbaa !41
  %2568 = add i16 %2567, 1
  store i16 %2568, ptr %2566, align 2, !tbaa !41
  %2569 = icmp ugt i64 %2549, 1
  br i1 %2569, label %2547, label %2570, !llvm.loop !126

2570:                                             ; preds = %2563, %2547, %2539
  %2571 = phi i32 [ %2540, %2539 ], [ %2564, %2563 ], [ %2548, %2547 ]
  %2572 = load ptr, ptr %2541, align 8, !tbaa !11
  %2573 = icmp eq ptr %2572, null
  br i1 %2573, label %2574, label %2539, !llvm.loop !127

2574:                                             ; preds = %2570, %2517
  %2575 = phi i32 [ 0, %2517 ], [ %2571, %2570 ]
  %2576 = load i32, ptr @nsyms, align 4, !tbaa !7
  %2577 = icmp slt i32 %2530, %2576
  %2578 = sext i32 %2576 to i64
  br i1 %2577, label %2579, label %2593

2579:                                             ; preds = %2579, %2574
  %2580 = phi i64 [ %2586, %2579 ], [ %2531, %2574 ]
  %2581 = phi i16 [ %2585, %2579 ], [ 0, %2574 ]
  %2582 = getelementptr inbounds i16, ptr %2533, i64 %2580
  store i16 %2581, ptr %2582, align 2, !tbaa !41
  %2583 = getelementptr inbounds i16, ptr %2536, i64 %2580
  %2584 = load i16, ptr %2583, align 2, !tbaa !41
  %2585 = add i16 %2584, %2581
  %2586 = add nsw i64 %2580, 1
  %2587 = icmp eq i64 %2586, %2578
  br i1 %2587, label %2588, label %2579, !llvm.loop !128

2588:                                             ; preds = %2579
  %2589 = shl nsw i64 %2531, 1
  %2590 = getelementptr i8, ptr %2536, i64 %2589
  %2591 = sub nsw i64 %2578, %2531
  %2592 = shl nsw i64 %2591, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %2590, ptr nonnull align 2 %2529, i64 %2592, i1 false), !tbaa !41
  br label %2593

2593:                                             ; preds = %2588, %2574
  %2594 = trunc i32 %2575 to i16
  %2595 = getelementptr inbounds i16, ptr %2536, i64 %2578
  store i16 %2594, ptr %2595, align 2, !tbaa !41
  %2596 = getelementptr inbounds i16, ptr %2533, i64 %2578
  store i16 %2594, ptr %2596, align 2, !tbaa !41
  %2597 = shl i32 %2575, 1
  %2598 = tail call fastcc ptr @mallocate(i32 noundef %2597) #25
  store ptr %2598, ptr @from_state, align 8, !tbaa !11
  %2599 = load i32, ptr @ngotos, align 4, !tbaa !7
  %2600 = shl i32 %2599, 1
  %2601 = tail call fastcc ptr @mallocate(i32 noundef %2600) #25
  store ptr %2601, ptr @to_state, align 8, !tbaa !11
  %2602 = load ptr, ptr @first_shift, align 8, !tbaa !11
  %2603 = icmp eq ptr %2602, null
  %2604 = load i32, ptr @ntokens, align 4
  br i1 %2603, label %2642, label %2605

2605:                                             ; preds = %2593
  %2606 = load ptr, ptr @accessing_symbol, align 8
  %2607 = load ptr, ptr @from_state, align 8
  br label %2608

2608:                                             ; preds = %2637, %2605
  %2609 = phi ptr [ %2602, %2605 ], [ %2638, %2637 ]
  %2610 = getelementptr inbounds %struct.shifts, ptr %2609, i64 0, i32 1
  %2611 = load i16, ptr %2610, align 8, !tbaa !104
  %2612 = getelementptr inbounds %struct.shifts, ptr %2609, i64 0, i32 2
  %2613 = load i16, ptr %2612, align 2, !tbaa !106
  %2614 = icmp sgt i16 %2613, 0
  br i1 %2614, label %2615, label %2637

2615:                                             ; preds = %2608
  %2616 = zext i16 %2613 to i64
  br label %2617

2617:                                             ; preds = %2628, %2615
  %2618 = phi i64 [ %2616, %2615 ], [ %2619, %2628 ]
  %2619 = add nsw i64 %2618, -1
  %2620 = and i64 %2619, 4294967295
  %2621 = getelementptr inbounds %struct.shifts, ptr %2609, i64 0, i32 3, i64 %2620
  %2622 = load i16, ptr %2621, align 2, !tbaa !41
  %2623 = sext i16 %2622 to i64
  %2624 = getelementptr inbounds i16, ptr %2606, i64 %2623
  %2625 = load i16, ptr %2624, align 2, !tbaa !41
  %2626 = sext i16 %2625 to i32
  %2627 = icmp sgt i32 %2604, %2626
  br i1 %2627, label %2637, label %2628

2628:                                             ; preds = %2617
  %2629 = sext i16 %2625 to i64
  %2630 = getelementptr inbounds i16, ptr %2533, i64 %2629
  %2631 = load i16, ptr %2630, align 2, !tbaa !41
  %2632 = add i16 %2631, 1
  store i16 %2632, ptr %2630, align 2, !tbaa !41
  %2633 = sext i16 %2631 to i64
  %2634 = getelementptr inbounds i16, ptr %2607, i64 %2633
  store i16 %2611, ptr %2634, align 2, !tbaa !41
  %2635 = getelementptr inbounds i16, ptr %2601, i64 %2633
  store i16 %2622, ptr %2635, align 2, !tbaa !41
  %2636 = icmp ugt i64 %2618, 1
  br i1 %2636, label %2617, label %2637, !llvm.loop !129

2637:                                             ; preds = %2628, %2617, %2608
  %2638 = load ptr, ptr %2609, align 8, !tbaa !11
  %2639 = icmp eq ptr %2638, null
  br i1 %2639, label %2640, label %2608, !llvm.loop !130

2640:                                             ; preds = %2637
  %2641 = icmp eq ptr %2529, null
  br i1 %2641, label %2645, label %2642

2642:                                             ; preds = %2640, %2593
  %2643 = sext i32 %2604 to i64
  %2644 = getelementptr inbounds i16, ptr %2533, i64 %2643
  tail call void @free(ptr noundef %2644) #25
  br label %2645

2645:                                             ; preds = %2642, %2640
  %2646 = load i32, ptr @ngotos, align 4, !tbaa !7
  %2647 = load i32, ptr @tokensetsize, align 4, !tbaa !7
  %2648 = shl i32 %2646, 2
  %2649 = mul i32 %2648, %2647
  %2650 = tail call fastcc ptr @mallocate(i32 noundef %2649) #25
  store ptr %2650, ptr @F, align 8, !tbaa !11
  %2651 = load i32, ptr @ngotos, align 4, !tbaa !7
  %2652 = shl i32 %2651, 3
  %2653 = tail call fastcc ptr @mallocate(i32 noundef %2652) #25
  %2654 = load i32, ptr @ngotos, align 4, !tbaa !7
  %2655 = shl i32 %2654, 1
  %2656 = add i32 %2655, 2
  %2657 = tail call fastcc ptr @mallocate(i32 noundef %2656) #25
  %2658 = load i32, ptr @ngotos, align 4, !tbaa !7
  %2659 = icmp sgt i32 %2658, 0
  br i1 %2659, label %2660, label %2763

2660:                                             ; preds = %2645
  %2661 = load ptr, ptr @F, align 8, !tbaa !11
  br label %2662

2662:                                             ; preds = %2755, %2660
  %2663 = phi i64 [ 0, %2660 ], [ %2759, %2755 ]
  %2664 = phi ptr [ %2661, %2660 ], [ %2758, %2755 ]
  %2665 = load ptr, ptr @to_state, align 8, !tbaa !11
  %2666 = getelementptr inbounds i16, ptr %2665, i64 %2663
  %2667 = load i16, ptr %2666, align 2, !tbaa !41
  %2668 = sext i16 %2667 to i32
  %2669 = load ptr, ptr @shift_table, align 8, !tbaa !11
  %2670 = sext i16 %2667 to i64
  %2671 = getelementptr inbounds ptr, ptr %2669, i64 %2670
  %2672 = load ptr, ptr %2671, align 8, !tbaa !11
  %2673 = icmp eq ptr %2672, null
  br i1 %2673, label %2755, label %2674

2674:                                             ; preds = %2662
  %2675 = getelementptr inbounds %struct.shifts, ptr %2672, i64 0, i32 2
  %2676 = load i16, ptr %2675, align 2, !tbaa !106
  %2677 = sext i16 %2676 to i32
  %2678 = icmp sgt i16 %2676, 0
  br i1 %2678, label %2679, label %2704

2679:                                             ; preds = %2674
  %2680 = load ptr, ptr @accessing_symbol, align 8, !tbaa !11
  %2681 = zext i32 %2677 to i64
  %2682 = load i32, ptr @ntokens, align 4, !tbaa !7
  br label %2683

2683:                                             ; preds = %2692, %2679
  %2684 = phi i64 [ 0, %2679 ], [ %2700, %2692 ]
  %2685 = getelementptr inbounds %struct.shifts, ptr %2672, i64 0, i32 3, i64 %2684
  %2686 = load i16, ptr %2685, align 2, !tbaa !41
  %2687 = sext i16 %2686 to i64
  %2688 = getelementptr inbounds i16, ptr %2680, i64 %2687
  %2689 = load i16, ptr %2688, align 2, !tbaa !41
  %2690 = sext i16 %2689 to i32
  %2691 = icmp sgt i32 %2682, %2690
  br i1 %2691, label %2692, label %2702

2692:                                             ; preds = %2683
  %2693 = and i32 %2690, 31
  %2694 = shl nuw i32 1, %2693
  %2695 = ashr i32 %2690, 5
  %2696 = sext i32 %2695 to i64
  %2697 = getelementptr inbounds i32, ptr %2664, i64 %2696
  %2698 = load i32, ptr %2697, align 4, !tbaa !7
  %2699 = or i32 %2698, %2694
  store i32 %2699, ptr %2697, align 4, !tbaa !7
  %2700 = add nuw nsw i64 %2684, 1
  %2701 = icmp eq i64 %2700, %2681
  br i1 %2701, label %2755, label %2683, !llvm.loop !131

2702:                                             ; preds = %2683
  %.lcssa5 = phi i64 [ %2684, %2683 ]
  %2703 = trunc i64 %.lcssa5 to i32
  br label %2704

2704:                                             ; preds = %2702, %2674
  %2705 = phi i32 [ 0, %2674 ], [ %2703, %2702 ]
  %2706 = icmp slt i32 %2705, %2677
  br i1 %2706, label %2707, label %2755

2707:                                             ; preds = %2704
  %2708 = zext i32 %2705 to i64
  %2709 = load ptr, ptr @accessing_symbol, align 8, !tbaa !11
  %2710 = load ptr, ptr @nullable, align 8, !tbaa !11
  %2711 = zext i32 %2677 to i64
  br label %2712

2712:                                             ; preds = %2735, %2707
  %2713 = phi ptr [ %2710, %2707 ], [ %2736, %2735 ]
  %2714 = phi ptr [ %2709, %2707 ], [ %2737, %2735 ]
  %2715 = phi i64 [ %2708, %2707 ], [ %2739, %2735 ]
  %2716 = phi i32 [ 0, %2707 ], [ %2738, %2735 ]
  %2717 = getelementptr inbounds %struct.shifts, ptr %2672, i64 0, i32 3, i64 %2715
  %2718 = load i16, ptr %2717, align 2, !tbaa !41
  %2719 = sext i16 %2718 to i64
  %2720 = getelementptr inbounds i16, ptr %2714, i64 %2719
  %2721 = load i16, ptr %2720, align 2, !tbaa !41
  %2722 = sext i16 %2721 to i64
  %2723 = getelementptr inbounds i8, ptr %2713, i64 %2722
  %2724 = load i8, ptr %2723, align 1, !tbaa !13
  %2725 = icmp eq i8 %2724, 0
  br i1 %2725, label %2735, label %2726

2726:                                             ; preds = %2712
  %2727 = sext i16 %2721 to i32
  %2728 = tail call fastcc i32 @map_goto(i32 noundef %2668, i32 noundef %2727) #26, !range !132
  %2729 = trunc i32 %2728 to i16
  %2730 = add nsw i32 %2716, 1
  %2731 = sext i32 %2716 to i64
  %2732 = getelementptr inbounds i16, ptr %2657, i64 %2731
  store i16 %2729, ptr %2732, align 2, !tbaa !41
  %2733 = load ptr, ptr @accessing_symbol, align 8, !tbaa !11
  %2734 = load ptr, ptr @nullable, align 8, !tbaa !11
  br label %2735

2735:                                             ; preds = %2726, %2712
  %2736 = phi ptr [ %2734, %2726 ], [ %2713, %2712 ]
  %2737 = phi ptr [ %2733, %2726 ], [ %2714, %2712 ]
  %2738 = phi i32 [ %2730, %2726 ], [ %2716, %2712 ]
  %2739 = add nuw nsw i64 %2715, 1
  %2740 = icmp eq i64 %2739, %2711
  br i1 %2740, label %2741, label %2712, !llvm.loop !133

2741:                                             ; preds = %2735
  %.lcssa6 = phi i32 [ %2738, %2735 ]
  %2742 = icmp eq i32 %.lcssa6, 0
  br i1 %2742, label %2755, label %2743

2743:                                             ; preds = %2741
  %2744 = shl i32 %.lcssa6, 1
  %2745 = add i32 %2744, 2
  %2746 = tail call fastcc ptr @mallocate(i32 noundef %2745) #25
  %2747 = getelementptr inbounds ptr, ptr %2653, i64 %2663
  store ptr %2746, ptr %2747, align 8, !tbaa !11
  %2748 = icmp sgt i32 %.lcssa6, 0
  br i1 %2748, label %2749, label %2752

2749:                                             ; preds = %2743
  %2750 = zext i32 %.lcssa6 to i64
  %2751 = shl nuw nsw i64 %2750, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %2746, ptr align 2 %2657, i64 %2751, i1 false), !tbaa !41
  br label %2752

2752:                                             ; preds = %2749, %2743
  %2753 = sext i32 %.lcssa6 to i64
  %2754 = getelementptr inbounds i16, ptr %2746, i64 %2753
  store i16 -1, ptr %2754, align 2, !tbaa !41
  br label %2755

2755:                                             ; preds = %2752, %2741, %2704, %2692, %2662
  %2756 = load i32, ptr @tokensetsize, align 4, !tbaa !7
  %2757 = sext i32 %2756 to i64
  %2758 = getelementptr inbounds i32, ptr %2664, i64 %2757
  %2759 = add nuw nsw i64 %2663, 1
  %2760 = load i32, ptr @ngotos, align 4, !tbaa !7
  %2761 = sext i32 %2760 to i64
  %2762 = icmp slt i64 %2759, %2761
  br i1 %2762, label %2662, label %2763, !llvm.loop !134

2763:                                             ; preds = %2755, %2645
  tail call fastcc void @digraph(ptr noundef %2653) #26
  %2764 = load i32, ptr @ngotos, align 4, !tbaa !7
  %2765 = icmp sgt i32 %2764, 0
  br i1 %2765, label %2766, label %2777

2766:                                             ; preds = %2763
  %2767 = zext i32 %2764 to i64
  br label %2768

2768:                                             ; preds = %2774, %2766
  %2769 = phi i64 [ 0, %2766 ], [ %2775, %2774 ]
  %2770 = getelementptr inbounds ptr, ptr %2653, i64 %2769
  %2771 = load ptr, ptr %2770, align 8, !tbaa !11
  %2772 = icmp eq ptr %2771, null
  br i1 %2772, label %2774, label %2773

2773:                                             ; preds = %2768
  tail call void @free(ptr noundef nonnull %2771) #25
  br label %2774

2774:                                             ; preds = %2773, %2768
  %2775 = add nuw nsw i64 %2769, 1
  %2776 = icmp eq i64 %2775, %2767
  br i1 %2776, label %2779, label %2768, !llvm.loop !135

2777:                                             ; preds = %2763
  %2778 = icmp eq ptr %2653, null
  br i1 %2778, label %2780, label %2779

2779:                                             ; preds = %2777, %2774
  tail call void @free(ptr noundef nonnull %2653) #25
  br label %2780

2780:                                             ; preds = %2779, %2777
  %2781 = icmp eq ptr %2657, null
  br i1 %2781, label %2783, label %2782

2782:                                             ; preds = %2780
  tail call void @free(ptr noundef nonnull %2657) #25
  br label %2783

2783:                                             ; preds = %2782, %2780
  %2784 = shl i32 %2764, 3
  %2785 = tail call fastcc ptr @mallocate(i32 noundef %2784) #25
  store ptr %2785, ptr @includes, align 8, !tbaa !11
  %2786 = load i32, ptr @ngotos, align 4, !tbaa !7
  %2787 = shl i32 %2786, 1
  %2788 = add i32 %2787, 2
  %2789 = tail call fastcc ptr @mallocate(i32 noundef %2788) #25
  %2790 = load i32, ptr @maxrhs, align 4, !tbaa !7
  %2791 = shl i32 %2790, 1
  %2792 = add i32 %2791, 2
  %2793 = tail call fastcc ptr @mallocate(i32 noundef %2792) #25
  %2794 = load i32, ptr @ngotos, align 4, !tbaa !7
  %2795 = icmp sgt i32 %2794, 0
  br i1 %2795, label %2796, label %2972

2796:                                             ; preds = %2967, %2783
  %2797 = phi i64 [ %2968, %2967 ], [ 0, %2783 ]
  %2798 = load ptr, ptr @from_state, align 8, !tbaa !11
  %2799 = getelementptr inbounds i16, ptr %2798, i64 %2797
  %2800 = load i16, ptr %2799, align 2, !tbaa !41
  %2801 = sext i16 %2800 to i32
  %2802 = load ptr, ptr @accessing_symbol, align 8, !tbaa !11
  %2803 = load ptr, ptr @to_state, align 8, !tbaa !11
  %2804 = getelementptr inbounds i16, ptr %2803, i64 %2797
  %2805 = load i16, ptr %2804, align 2, !tbaa !41
  %2806 = sext i16 %2805 to i64
  %2807 = getelementptr inbounds i16, ptr %2802, i64 %2806
  %2808 = load i16, ptr %2807, align 2, !tbaa !41
  %2809 = load ptr, ptr @derives, align 8, !tbaa !11
  %2810 = sext i16 %2808 to i64
  %2811 = getelementptr inbounds ptr, ptr %2809, i64 %2810
  %2812 = load ptr, ptr %2811, align 8, !tbaa !11
  %2813 = load i16, ptr %2812, align 2, !tbaa !41
  %2814 = icmp sgt i16 %2813, 0
  br i1 %2814, label %2815, label %2967

2815:                                             ; preds = %2796
  %2816 = load ptr, ptr @ritem, align 8, !tbaa !11
  %2817 = trunc i64 %2797 to i16
  br label %2818

2818:                                             ; preds = %2944, %2815
  %2819 = phi i16 [ %2948, %2944 ], [ %2813, %2815 ]
  %2820 = phi ptr [ %2946, %2944 ], [ %2816, %2815 ]
  %2821 = phi ptr [ %2947, %2944 ], [ %2812, %2815 ]
  %2822 = phi i64 [ %2945, %2944 ], [ 0, %2815 ]
  store i16 %2800, ptr %2793, align 2, !tbaa !41
  %2823 = load ptr, ptr @rrhs, align 8, !tbaa !11
  %2824 = zext i16 %2819 to i64
  %2825 = getelementptr inbounds i16, ptr %2823, i64 %2824
  %2826 = load i16, ptr %2825, align 2, !tbaa !41
  %2827 = sext i16 %2826 to i64
  %2828 = getelementptr inbounds i16, ptr %2820, i64 %2827
  %2829 = load i16, ptr %2828, align 2, !tbaa !41
  %2830 = icmp sgt i16 %2829, 0
  br i1 %2830, label %2831, label %2868

2831:                                             ; preds = %2818
  %2832 = load ptr, ptr @shift_table, align 8, !tbaa !11
  %2833 = load ptr, ptr @accessing_symbol, align 8
  br label %2834

2834:                                             ; preds = %2860, %2831
  %2835 = phi i64 [ 1, %2831 ], [ %2863, %2860 ]
  %2836 = phi i16 [ %2829, %2831 ], [ %2866, %2860 ]
  %2837 = phi ptr [ %2828, %2831 ], [ %2865, %2860 ]
  %2838 = phi i32 [ %2801, %2831 ], [ %2861, %2860 ]
  %2839 = sext i32 %2838 to i64
  %2840 = getelementptr inbounds ptr, ptr %2832, i64 %2839
  %2841 = load ptr, ptr %2840, align 8, !tbaa !11
  %2842 = getelementptr inbounds %struct.shifts, ptr %2841, i64 0, i32 2
  %2843 = load i16, ptr %2842, align 2, !tbaa !106
  %2844 = icmp sgt i16 %2843, 0
  br i1 %2844, label %2845, label %2860

2845:                                             ; preds = %2834
  %2846 = zext i16 %2843 to i64
  br label %2847

2847:                                             ; preds = %2847, %2845
  %2848 = phi i64 [ 0, %2845 ], [ %2855, %2847 ]
  %2849 = getelementptr inbounds %struct.shifts, ptr %2841, i64 0, i32 3, i64 %2848
  %2850 = load i16, ptr %2849, align 2, !tbaa !41
  %2851 = sext i16 %2850 to i64
  %2852 = getelementptr inbounds i16, ptr %2833, i64 %2851
  %2853 = load i16, ptr %2852, align 2, !tbaa !41
  %2854 = icmp ne i16 %2853, %2836
  %2855 = add nuw nsw i64 %2848, 1
  %2856 = icmp ult i64 %2855, %2846
  %2857 = select i1 %2854, i1 %2856, i1 false
  br i1 %2857, label %2847, label %2858, !llvm.loop !136

2858:                                             ; preds = %2847
  %.lcssa1 = phi i16 [ %2850, %2847 ]
  %2859 = sext i16 %.lcssa1 to i32
  br label %2860

2860:                                             ; preds = %2858, %2834
  %2861 = phi i32 [ %2838, %2834 ], [ %2859, %2858 ]
  %2862 = trunc i32 %2861 to i16
  %2863 = add nuw i64 %2835, 1
  %2864 = getelementptr inbounds i16, ptr %2793, i64 %2835
  store i16 %2862, ptr %2864, align 2, !tbaa !41
  %2865 = getelementptr inbounds i16, ptr %2837, i64 1
  %2866 = load i16, ptr %2865, align 2, !tbaa !41
  %2867 = icmp sgt i16 %2866, 0
  br i1 %2867, label %2834, label %2868, !llvm.loop !137

2868:                                             ; preds = %2860, %2818
  %2869 = phi i32 [ %2801, %2818 ], [ %2861, %2860 ]
  %2870 = phi i64 [ 0, %2818 ], [ %2835, %2860 ]
  %2871 = phi ptr [ %2828, %2818 ], [ %2865, %2860 ]
  %2872 = load ptr, ptr @consistent, align 8, !tbaa !11
  %2873 = sext i32 %2869 to i64
  %2874 = getelementptr inbounds i8, ptr %2872, i64 %2873
  %2875 = load i8, ptr %2874, align 1, !tbaa !13
  %2876 = icmp eq i8 %2875, 0
  br i1 %2876, label %2877, label %2910

2877:                                             ; preds = %2868
  %2878 = load ptr, ptr @lookaheads, align 8, !tbaa !11
  %2879 = getelementptr inbounds i16, ptr %2878, i64 %2873
  %2880 = load i16, ptr %2879, align 2, !tbaa !41
  %2881 = add nsw i32 %2869, 1
  %2882 = sext i32 %2881 to i64
  %2883 = getelementptr inbounds i16, ptr %2878, i64 %2882
  %2884 = load i16, ptr %2883, align 2, !tbaa !41
  %2885 = sext i16 %2884 to i32
  %2886 = icmp slt i16 %2880, %2884
  br i1 %2886, label %2887, label %2901

2887:                                             ; preds = %2877
  %2888 = sext i16 %2880 to i32
  %2889 = load ptr, ptr @LAruleno, align 8, !tbaa !11
  br label %2890

2890:                                             ; preds = %2890, %2887
  %2891 = phi i32 [ %2888, %2887 ], [ %2897, %2890 ]
  %2892 = sext i32 %2891 to i64
  %2893 = getelementptr inbounds i16, ptr %2889, i64 %2892
  %2894 = load i16, ptr %2893, align 2, !tbaa !41
  %2895 = icmp ne i16 %2894, %2819
  %2896 = zext i1 %2895 to i32
  %2897 = add nsw i32 %2891, %2896
  %2898 = icmp slt i32 %2897, %2885
  %2899 = select i1 %2895, i1 %2898, i1 false
  br i1 %2899, label %2890, label %2900, !llvm.loop !138

2900:                                             ; preds = %2890
  %.lcssa3 = phi i1 [ %2895, %2890 ]
  %.lcssa2 = phi i32 [ %2897, %2890 ]
  br i1 %.lcssa3, label %2901, label %2902

2901:                                             ; preds = %2900, %2877
  tail call fastcc void @berror(ptr noundef nonnull @.str.2.103) #25
  unreachable

2902:                                             ; preds = %2900
  %2903 = tail call fastcc ptr @mallocate(i32 noundef 16) #25
  %2904 = load ptr, ptr @lookback, align 8, !tbaa !11
  %2905 = sext i32 %.lcssa2 to i64
  %2906 = getelementptr inbounds ptr, ptr %2904, i64 %2905
  %2907 = load ptr, ptr %2906, align 8, !tbaa !11
  store ptr %2907, ptr %2903, align 8, !tbaa !59
  %2908 = getelementptr inbounds %struct.shorts, ptr %2903, i64 0, i32 1
  store i16 %2817, ptr %2908, align 8, !tbaa !61
  store ptr %2903, ptr %2906, align 8, !tbaa !11
  %2909 = load ptr, ptr @ritem, align 8, !tbaa !11
  br label %2910

2910:                                             ; preds = %2902, %2868
  %2911 = phi ptr [ %2820, %2868 ], [ %2909, %2902 ]
  %2912 = shl i64 %2870, 32
  %2913 = ashr exact i64 %2912, 32
  %2914 = shl i64 %2822, 32
  %2915 = ashr exact i64 %2914, 32
  br label %2916

2916:                                             ; preds = %2928, %2910
  %2917 = phi i64 [ %2935, %2928 ], [ %2915, %2910 ]
  %2918 = phi i64 [ %2929, %2928 ], [ %2913, %2910 ]
  %2919 = phi ptr [ %2943, %2928 ], [ %2911, %2910 ]
  %2920 = phi ptr [ %2921, %2928 ], [ %2871, %2910 ]
  %2921 = getelementptr inbounds i16, ptr %2920, i64 -1
  %2922 = icmp ult ptr %2921, %2919
  br i1 %2922, label %2944, label %2923

2923:                                             ; preds = %2916
  %2924 = load i16, ptr %2921, align 2, !tbaa !41
  %2925 = sext i16 %2924 to i32
  %2926 = load i32, ptr @ntokens, align 4, !tbaa !7
  %2927 = icmp sgt i32 %2926, %2925
  br i1 %2927, label %2944, label %2928

2928:                                             ; preds = %2923
  %2929 = add i64 %2918, -1
  %2930 = getelementptr inbounds i16, ptr %2793, i64 %2929
  %2931 = load i16, ptr %2930, align 2, !tbaa !41
  %2932 = sext i16 %2931 to i32
  %2933 = tail call fastcc i32 @map_goto(i32 noundef %2932, i32 noundef %2925) #26, !range !132
  %2934 = trunc i32 %2933 to i16
  %2935 = add i64 %2917, 1
  %2936 = getelementptr inbounds i16, ptr %2789, i64 %2917
  store i16 %2934, ptr %2936, align 2, !tbaa !41
  %2937 = load ptr, ptr @nullable, align 8, !tbaa !11
  %2938 = load i16, ptr %2921, align 2, !tbaa !41
  %2939 = sext i16 %2938 to i64
  %2940 = getelementptr inbounds i8, ptr %2937, i64 %2939
  %2941 = load i8, ptr %2940, align 1, !tbaa !13
  %2942 = icmp eq i8 %2941, 0
  %2943 = load ptr, ptr @ritem, align 8, !tbaa !11
  br i1 %2942, label %2944, label %2916, !llvm.loop !139

2944:                                             ; preds = %2928, %2923, %2916
  %2945 = phi i64 [ %2935, %2928 ], [ %2917, %2923 ], [ %2917, %2916 ]
  %2946 = phi ptr [ %2943, %2928 ], [ %2919, %2923 ], [ %2919, %2916 ]
  %2947 = getelementptr inbounds i16, ptr %2821, i64 1
  %2948 = load i16, ptr %2947, align 2, !tbaa !41
  %2949 = icmp sgt i16 %2948, 0
  br i1 %2949, label %2818, label %2950, !llvm.loop !140

2950:                                             ; preds = %2944
  %.lcssa4 = phi i64 [ %2945, %2944 ]
  %2951 = trunc i64 %.lcssa4 to i32
  %2952 = icmp eq i32 %2951, 0
  br i1 %2952, label %2967, label %2953

2953:                                             ; preds = %2950
  %2954 = shl i32 %2951, 1
  %2955 = add i32 %2954, 2
  %2956 = tail call fastcc ptr @mallocate(i32 noundef %2955) #25
  %2957 = load ptr, ptr @includes, align 8, !tbaa !11
  %2958 = getelementptr inbounds ptr, ptr %2957, i64 %2797
  store ptr %2956, ptr %2958, align 8, !tbaa !11
  %2959 = icmp sgt i32 %2951, 0
  br i1 %2959, label %2960, label %2963

2960:                                             ; preds = %2953
  %2961 = shl i64 %.lcssa4, 1
  %2962 = and i64 %2961, 8589934590
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %2956, ptr align 2 %2789, i64 %2962, i1 false), !tbaa !41
  br label %2963

2963:                                             ; preds = %2960, %2953
  %2964 = shl i64 %.lcssa4, 32
  %2965 = ashr exact i64 %2964, 32
  %2966 = getelementptr inbounds i16, ptr %2956, i64 %2965
  store i16 -1, ptr %2966, align 2, !tbaa !41
  br label %2967

2967:                                             ; preds = %2963, %2950, %2796
  %2968 = add nuw nsw i64 %2797, 1
  %2969 = load i32, ptr @ngotos, align 4, !tbaa !7
  %2970 = sext i32 %2969 to i64
  %2971 = icmp slt i64 %2968, %2970
  br i1 %2971, label %2796, label %2972, !llvm.loop !141

2972:                                             ; preds = %2967, %2783
  %2973 = phi i32 [ %2794, %2783 ], [ %2969, %2967 ]
  %2974 = load ptr, ptr @includes, align 8, !tbaa !11
  %2975 = shl i32 %2973, 1
  %2976 = tail call fastcc ptr @mallocate(i32 noundef %2975) #25
  %2977 = icmp sgt i32 %2973, 0
  br i1 %2977, label %2978, label %3001

2978:                                             ; preds = %2972
  %2979 = zext i32 %2973 to i64
  br label %2980

2980:                                             ; preds = %2998, %2978
  %2981 = phi i64 [ 0, %2978 ], [ %2999, %2998 ]
  %2982 = getelementptr inbounds ptr, ptr %2974, i64 %2981
  %2983 = load ptr, ptr %2982, align 8, !tbaa !11
  %2984 = icmp eq ptr %2983, null
  br i1 %2984, label %2998, label %2985

2985:                                             ; preds = %2980
  %2986 = load i16, ptr %2983, align 2, !tbaa !41
  %2987 = icmp sgt i16 %2986, -1
  br i1 %2987, label %2988, label %2998

2988:                                             ; preds = %2988, %2985
  %2989 = phi i16 [ %2996, %2988 ], [ %2986, %2985 ]
  %2990 = phi ptr [ %2991, %2988 ], [ %2983, %2985 ]
  %2991 = getelementptr inbounds i16, ptr %2990, i64 1
  %2992 = zext i16 %2989 to i64
  %2993 = getelementptr inbounds i16, ptr %2976, i64 %2992
  %2994 = load i16, ptr %2993, align 2, !tbaa !41
  %2995 = add i16 %2994, 1
  store i16 %2995, ptr %2993, align 2, !tbaa !41
  %2996 = load i16, ptr %2991, align 2, !tbaa !41
  %2997 = icmp sgt i16 %2996, -1
  br i1 %2997, label %2988, label %2998, !llvm.loop !142

2998:                                             ; preds = %2988, %2985, %2980
  %2999 = add nuw nsw i64 %2981, 1
  %3000 = icmp eq i64 %2999, %2979
  br i1 %3000, label %3001, label %2980, !llvm.loop !143

3001:                                             ; preds = %2998, %2972
  %3002 = shl i32 %2973, 3
  %3003 = tail call fastcc ptr @mallocate(i32 noundef %3002) #25
  %3004 = tail call fastcc ptr @mallocate(i32 noundef %3002) #25
  br i1 %2977, label %3005, label %3024

3005:                                             ; preds = %3001
  %3006 = zext i32 %2973 to i64
  br label %3007

3007:                                             ; preds = %3021, %3005
  %3008 = phi i64 [ 0, %3005 ], [ %3022, %3021 ]
  %3009 = getelementptr inbounds i16, ptr %2976, i64 %3008
  %3010 = load i16, ptr %3009, align 2, !tbaa !41
  %3011 = icmp sgt i16 %3010, 0
  br i1 %3011, label %3012, label %3021

3012:                                             ; preds = %3007
  %3013 = zext i16 %3010 to i32
  %3014 = shl nuw nsw i32 %3013, 1
  %3015 = add nuw nsw i32 %3014, 2
  %3016 = tail call fastcc ptr @mallocate(i32 noundef %3015) #25
  %3017 = getelementptr inbounds ptr, ptr %3003, i64 %3008
  store ptr %3016, ptr %3017, align 8, !tbaa !11
  %3018 = getelementptr inbounds ptr, ptr %3004, i64 %3008
  store ptr %3016, ptr %3018, align 8, !tbaa !11
  %3019 = zext i16 %3010 to i64
  %3020 = getelementptr inbounds i16, ptr %3016, i64 %3019
  store i16 -1, ptr %3020, align 2, !tbaa !41
  br label %3021

3021:                                             ; preds = %3012, %3007
  %3022 = add nuw nsw i64 %3008, 1
  %3023 = icmp eq i64 %3022, %3006
  br i1 %3023, label %3027, label %3007, !llvm.loop !144

3024:                                             ; preds = %3001
  %3025 = icmp eq ptr %2976, null
  br i1 %3025, label %3051, label %3026

3026:                                             ; preds = %3024
  tail call void @free(ptr noundef nonnull %2976) #25
  br label %3051

3027:                                             ; preds = %3021
  tail call void @free(ptr noundef nonnull %2976) #25
  br label %3028

3028:                                             ; preds = %3048, %3027
  %3029 = phi i64 [ 0, %3027 ], [ %3049, %3048 ]
  %3030 = getelementptr inbounds ptr, ptr %2974, i64 %3029
  %3031 = load ptr, ptr %3030, align 8, !tbaa !11
  %3032 = icmp eq ptr %3031, null
  br i1 %3032, label %3048, label %3033

3033:                                             ; preds = %3028
  %3034 = load i16, ptr %3031, align 2, !tbaa !41
  %3035 = icmp sgt i16 %3034, -1
  br i1 %3035, label %3036, label %3048

3036:                                             ; preds = %3033
  %3037 = trunc i64 %3029 to i16
  br label %3038

3038:                                             ; preds = %3038, %3036
  %3039 = phi i16 [ %3034, %3036 ], [ %3046, %3038 ]
  %3040 = phi ptr [ %3031, %3036 ], [ %3041, %3038 ]
  %3041 = getelementptr inbounds i16, ptr %3040, i64 1
  %3042 = zext i16 %3039 to i64
  %3043 = getelementptr inbounds ptr, ptr %3004, i64 %3042
  %3044 = load ptr, ptr %3043, align 8, !tbaa !11
  %3045 = getelementptr inbounds i16, ptr %3044, i64 1
  store ptr %3045, ptr %3043, align 8, !tbaa !11
  store i16 %3037, ptr %3044, align 2, !tbaa !41
  %3046 = load i16, ptr %3041, align 2, !tbaa !41
  %3047 = icmp sgt i16 %3046, -1
  br i1 %3047, label %3038, label %3048, !llvm.loop !145

3048:                                             ; preds = %3038, %3033, %3028
  %3049 = add nuw nsw i64 %3029, 1
  %3050 = icmp eq i64 %3049, %3006
  br i1 %3050, label %3051, label %3028, !llvm.loop !146

3051:                                             ; preds = %3048, %3026, %3024
  %3052 = icmp eq ptr %3004, null
  br i1 %3052, label %3054, label %3053

3053:                                             ; preds = %3051
  tail call void @free(ptr noundef nonnull %3004) #25
  br label %3054

3054:                                             ; preds = %3053, %3051
  %3055 = load i32, ptr @ngotos, align 4, !tbaa !7
  %3056 = icmp sgt i32 %3055, 0
  %3057 = load ptr, ptr @includes, align 8, !tbaa !11
  br i1 %3056, label %3058, label %3069

3058:                                             ; preds = %3054
  %3059 = zext i32 %3055 to i64
  br label %3060

3060:                                             ; preds = %3066, %3058
  %3061 = phi i64 [ 0, %3058 ], [ %3067, %3066 ]
  %3062 = getelementptr inbounds ptr, ptr %3057, i64 %3061
  %3063 = load ptr, ptr %3062, align 8, !tbaa !11
  %3064 = icmp eq ptr %3063, null
  br i1 %3064, label %3066, label %3065

3065:                                             ; preds = %3060
  tail call void @free(ptr noundef nonnull %3063) #25
  br label %3066

3066:                                             ; preds = %3065, %3060
  %3067 = add nuw nsw i64 %3061, 1
  %3068 = icmp eq i64 %3067, %3059
  br i1 %3068, label %3071, label %3060, !llvm.loop !147

3069:                                             ; preds = %3054
  %3070 = icmp eq ptr %3057, null
  br i1 %3070, label %3072, label %3071

3071:                                             ; preds = %3069, %3066
  tail call void @free(ptr noundef nonnull %3057) #25
  br label %3072

3072:                                             ; preds = %3071, %3069
  store ptr %3003, ptr @includes, align 8, !tbaa !11
  %3073 = icmp eq ptr %2789, null
  br i1 %3073, label %3075, label %3074

3074:                                             ; preds = %3072
  tail call void @free(ptr noundef nonnull %2789) #25
  br label %3075

3075:                                             ; preds = %3074, %3072
  %3076 = icmp eq ptr %2793, null
  br i1 %3076, label %3078, label %3077

3077:                                             ; preds = %3075
  tail call void @free(ptr noundef nonnull %2793) #25
  br label %3078

3078:                                             ; preds = %3077, %3075
  tail call fastcc void @digraph(ptr noundef %3003) #26
  %3079 = load i32, ptr @ngotos, align 4, !tbaa !7
  %3080 = icmp sgt i32 %3079, 0
  %3081 = load ptr, ptr @includes, align 8, !tbaa !11
  br i1 %3080, label %3082, label %3093

3082:                                             ; preds = %3078
  %3083 = zext i32 %3079 to i64
  br label %3084

3084:                                             ; preds = %3090, %3082
  %3085 = phi i64 [ 0, %3082 ], [ %3091, %3090 ]
  %3086 = getelementptr inbounds ptr, ptr %3081, i64 %3085
  %3087 = load ptr, ptr %3086, align 8, !tbaa !11
  %3088 = icmp eq ptr %3087, null
  br i1 %3088, label %3090, label %3089

3089:                                             ; preds = %3084
  tail call void @free(ptr noundef nonnull %3087) #25
  br label %3090

3090:                                             ; preds = %3089, %3084
  %3091 = add nuw nsw i64 %3085, 1
  %3092 = icmp eq i64 %3091, %3083
  br i1 %3092, label %3095, label %3084, !llvm.loop !148

3093:                                             ; preds = %3078
  %3094 = icmp eq ptr %3081, null
  br i1 %3094, label %3096, label %3095

3095:                                             ; preds = %3093, %3090
  tail call void @free(ptr noundef nonnull %3081) #25
  br label %3096

3096:                                             ; preds = %3095, %3093
  %3097 = load ptr, ptr @lookaheads, align 8, !tbaa !11
  %3098 = load i32, ptr @nstates, align 4, !tbaa !7
  %3099 = sext i32 %3098 to i64
  %3100 = getelementptr inbounds i16, ptr %3097, i64 %3099
  %3101 = load i16, ptr %3100, align 2, !tbaa !41
  %3102 = icmp sgt i16 %3101, 0
  %3103 = load ptr, ptr @lookback, align 8, !tbaa !11
  br i1 %3102, label %3104, label %3157

3104:                                             ; preds = %3096
  %3105 = zext i16 %3101 to i64
  %3106 = load ptr, ptr @LA, align 8, !tbaa !11
  %3107 = load ptr, ptr @F, align 8
  %3108 = load i32, ptr @tokensetsize, align 4, !tbaa !7
  %3109 = sext i32 %3108 to i64
  %3110 = icmp sgt i32 %3108, 0
  br label %3111

3111:                                             ; preds = %3139, %3104
  %3112 = phi i64 [ 0, %3104 ], [ %3140, %3139 ]
  %3113 = phi ptr [ %3106, %3104 ], [ %3114, %3139 ]
  %3114 = getelementptr inbounds i32, ptr %3113, i64 %3109
  %3115 = getelementptr inbounds ptr, ptr %3103, i64 %3112
  %3116 = load ptr, ptr %3115, align 8, !tbaa !11
  %3117 = icmp eq ptr %3116, null
  br i1 %3117, label %3139, label %3121

3118:                                             ; preds = %3130, %3121
  %3119 = load ptr, ptr %3122, align 8, !tbaa !11
  %3120 = icmp eq ptr %3119, null
  br i1 %3120, label %3139, label %3121, !llvm.loop !149

3121:                                             ; preds = %3118, %3111
  %3122 = phi ptr [ %3119, %3118 ], [ %3116, %3111 ]
  br i1 %3110, label %3123, label %3118

3123:                                             ; preds = %3121
  %3124 = getelementptr inbounds %struct.shorts, ptr %3122, i64 0, i32 1
  %3125 = load i16, ptr %3124, align 8, !tbaa !61
  %3126 = sext i16 %3125 to i32
  %3127 = mul nsw i32 %3108, %3126
  %3128 = sext i32 %3127 to i64
  %3129 = getelementptr inbounds i32, ptr %3107, i64 %3128
  br label %3130

3130:                                             ; preds = %3130, %3123
  %3131 = phi ptr [ %3135, %3130 ], [ %3113, %3123 ]
  %3132 = phi ptr [ %3133, %3130 ], [ %3129, %3123 ]
  %3133 = getelementptr inbounds i32, ptr %3132, i64 1
  %3134 = load i32, ptr %3132, align 4, !tbaa !7
  %3135 = getelementptr inbounds i32, ptr %3131, i64 1
  %3136 = load i32, ptr %3131, align 4, !tbaa !7
  %3137 = or i32 %3136, %3134
  store i32 %3137, ptr %3131, align 4, !tbaa !7
  %3138 = icmp ult ptr %3135, %3114
  br i1 %3138, label %3130, label %3118, !llvm.loop !150

3139:                                             ; preds = %3118, %3111
  %3140 = add nuw nsw i64 %3112, 1
  %3141 = icmp eq i64 %3140, %3105
  br i1 %3141, label %3142, label %3111, !llvm.loop !151

3142:                                             ; preds = %3152, %3139
  %3143 = phi i64 [ %3153, %3152 ], [ 0, %3139 ]
  %3144 = load ptr, ptr @lookback, align 8, !tbaa !11
  %3145 = getelementptr inbounds ptr, ptr %3144, i64 %3143
  %3146 = load ptr, ptr %3145, align 8, !tbaa !11
  %3147 = icmp eq ptr %3146, null
  br i1 %3147, label %3152, label %3148

3148:                                             ; preds = %3148, %3142
  %3149 = phi ptr [ %3150, %3148 ], [ %3146, %3142 ]
  %3150 = load ptr, ptr %3149, align 8, !tbaa !59
  tail call void @free(ptr noundef nonnull %3149) #25
  %3151 = icmp eq ptr %3150, null
  br i1 %3151, label %3152, label %3148, !llvm.loop !152

3152:                                             ; preds = %3148, %3142
  %3153 = add nuw nsw i64 %3143, 1
  %3154 = icmp eq i64 %3153, %3105
  br i1 %3154, label %3155, label %3142, !llvm.loop !153

3155:                                             ; preds = %3152
  %3156 = load ptr, ptr @lookback, align 8, !tbaa !11
  br label %3157

3157:                                             ; preds = %3155, %3096
  %3158 = phi ptr [ %3156, %3155 ], [ %3103, %3096 ]
  %3159 = icmp eq ptr %3158, null
  br i1 %3159, label %3161, label %3160

3160:                                             ; preds = %3157
  tail call void @free(ptr noundef nonnull %3158) #25
  br label %3161

3161:                                             ; preds = %3160, %3157
  %3162 = load ptr, ptr @F, align 8, !tbaa !11
  %3163 = icmp eq ptr %3162, null
  br i1 %3163, label %3165, label %3164

3164:                                             ; preds = %3161
  tail call void @free(ptr noundef nonnull %3162) #25
  br label %3165

3165:                                             ; preds = %3164, %3161
  %3166 = load i32, ptr @nstates, align 4, !tbaa !7
  %3167 = tail call fastcc ptr @mallocate(i32 noundef %3166) #25
  store ptr %3167, ptr @conflicts, align 8, !tbaa !11
  %3168 = load i32, ptr @tokensetsize, align 4, !tbaa !7
  %3169 = shl nsw i32 %3168, 2
  %3170 = tail call fastcc ptr @mallocate(i32 noundef %3169) #25
  store ptr %3170, ptr @shiftset.14, align 8, !tbaa !11
  %3171 = load i32, ptr @tokensetsize, align 4, !tbaa !7
  %3172 = shl nsw i32 %3171, 2
  %3173 = tail call fastcc ptr @mallocate(i32 noundef %3172) #25
  store ptr %3173, ptr @lookaheadset, align 8, !tbaa !11
  %3174 = load i32, ptr @nstates, align 4, !tbaa !7
  %3175 = shl i32 %3174, 3
  %3176 = tail call fastcc ptr @mallocate(i32 noundef %3175) #25
  store ptr %3176, ptr @err_table, align 8, !tbaa !11
  store i1 false, ptr @any_conflicts, align 1
  %3177 = load i32, ptr @nstates, align 4, !tbaa !7
  %3178 = icmp sgt i32 %3177, 0
  br i1 %3178, label %3179, label %3486

3179:                                             ; preds = %3481, %3165
  %3180 = phi i64 [ %3482, %3481 ], [ 0, %3165 ]
  %3181 = load ptr, ptr @consistent, align 8, !tbaa !11
  %3182 = getelementptr inbounds i8, ptr %3181, i64 %3180
  %3183 = load i8, ptr %3182, align 1, !tbaa !13
  %3184 = icmp eq i8 %3183, 0
  br i1 %3184, label %3187, label %3185

3185:                                             ; preds = %3179
  %3186 = add nuw nsw i64 %3180, 1
  br label %3481

3187:                                             ; preds = %3179
  %3188 = load i32, ptr @tokensetsize, align 4, !tbaa !7
  %3189 = icmp sgt i32 %3188, 0
  br i1 %3189, label %3190, label %3194

3190:                                             ; preds = %3187
  %3191 = load ptr, ptr @lookaheadset, align 8, !tbaa !11
  %3192 = zext i32 %3188 to i64
  %3193 = shl nuw nsw i64 %3192, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %3191, i8 0, i64 %3193, i1 false), !tbaa !7
  br label %3194

3194:                                             ; preds = %3190, %3187
  %3195 = load ptr, ptr @shift_table, align 8, !tbaa !11
  %3196 = getelementptr inbounds ptr, ptr %3195, i64 %3180
  %3197 = load ptr, ptr %3196, align 8, !tbaa !11
  %3198 = icmp eq ptr %3197, null
  br i1 %3198, label %3199, label %3201

3199:                                             ; preds = %3194
  %3200 = load ptr, ptr @lookaheadset, align 8, !tbaa !11
  br label %3229

3201:                                             ; preds = %3194
  %3202 = getelementptr inbounds %struct.shifts, ptr %3197, i64 0, i32 2
  %3203 = load i16, ptr %3202, align 2, !tbaa !106
  %3204 = icmp sgt i16 %3203, 0
  %3205 = load ptr, ptr @lookaheadset, align 8
  br i1 %3204, label %3206, label %3229

3206:                                             ; preds = %3201
  %3207 = zext i16 %3203 to i64
  %3208 = load ptr, ptr @accessing_symbol, align 8, !tbaa !11
  %3209 = load i32, ptr @ntokens, align 4, !tbaa !7
  br label %3210

3210:                                             ; preds = %3219, %3206
  %3211 = phi i64 [ 0, %3206 ], [ %3227, %3219 ]
  %3212 = getelementptr inbounds %struct.shifts, ptr %3197, i64 0, i32 3, i64 %3211
  %3213 = load i16, ptr %3212, align 2, !tbaa !41
  %3214 = sext i16 %3213 to i64
  %3215 = getelementptr inbounds i16, ptr %3208, i64 %3214
  %3216 = load i16, ptr %3215, align 2, !tbaa !41
  %3217 = sext i16 %3216 to i32
  %3218 = icmp sgt i32 %3209, %3217
  br i1 %3218, label %3219, label %3229

3219:                                             ; preds = %3210
  %3220 = and i32 %3217, 31
  %3221 = shl nuw i32 1, %3220
  %3222 = ashr i32 %3217, 5
  %3223 = sext i32 %3222 to i64
  %3224 = getelementptr inbounds i32, ptr %3205, i64 %3223
  %3225 = load i32, ptr %3224, align 4, !tbaa !7
  %3226 = or i32 %3225, %3221
  store i32 %3226, ptr %3224, align 4, !tbaa !7
  %3227 = add nuw nsw i64 %3211, 1
  %3228 = icmp eq i64 %3227, %3207
  br i1 %3228, label %3229, label %3210, !llvm.loop !154

3229:                                             ; preds = %3219, %3210, %3201, %3199
  %3230 = phi ptr [ %3200, %3199 ], [ %3205, %3201 ], [ %3205, %3210 ], [ %3205, %3219 ]
  %3231 = load ptr, ptr @lookaheads, align 8, !tbaa !11
  %3232 = add nuw nsw i64 %3180, 1
  %3233 = getelementptr inbounds i16, ptr %3231, i64 %3232
  %3234 = load i16, ptr %3233, align 2, !tbaa !41
  %3235 = sext i32 %3188 to i64
  %3236 = getelementptr inbounds i32, ptr %3230, i64 %3235
  %3237 = getelementptr inbounds i16, ptr %3231, i64 %3180
  %3238 = load i16, ptr %3237, align 2, !tbaa !41
  %3239 = icmp slt i16 %3238, %3234
  br i1 %3239, label %3240, label %3440

3240:                                             ; preds = %3229
  %3241 = sext i16 %3238 to i64
  %3242 = sext i16 %3234 to i64
  %3243 = load ptr, ptr @rprec, align 8, !tbaa !11
  %3244 = load ptr, ptr @LAruleno, align 8, !tbaa !11
  %3245 = trunc i64 %3180 to i32
  br label %3246

3246:                                             ; preds = %3431, %3240
  %3247 = phi ptr [ %3244, %3240 ], [ %3432, %3431 ]
  %3248 = phi ptr [ %3243, %3240 ], [ %3433, %3431 ]
  %3249 = phi i64 [ %3241, %3240 ], [ %3434, %3431 ]
  %3250 = getelementptr inbounds i16, ptr %3247, i64 %3249
  %3251 = load i16, ptr %3250, align 2, !tbaa !41
  %3252 = sext i16 %3251 to i64
  %3253 = getelementptr inbounds i16, ptr %3248, i64 %3252
  %3254 = load i16, ptr %3253, align 2, !tbaa !41
  %3255 = icmp eq i16 %3254, 0
  br i1 %3255, label %3431, label %3256

3256:                                             ; preds = %3246
  %3257 = load ptr, ptr @LA, align 8, !tbaa !11
  %3258 = load i32, ptr @tokensetsize, align 4, !tbaa !7
  %3259 = sext i32 %3258 to i64
  %3260 = mul nsw i64 %3249, %3259
  %3261 = getelementptr inbounds i32, ptr %3257, i64 %3260
  %3262 = load ptr, ptr @lookaheadset, align 8, !tbaa !11
  br label %3263

3263:                                             ; preds = %3267, %3256
  %3264 = phi ptr [ %3261, %3256 ], [ %3268, %3267 ]
  %3265 = phi ptr [ %3262, %3256 ], [ %3270, %3267 ]
  %3266 = icmp ult ptr %3265, %3236
  br i1 %3266, label %3267, label %3431

3267:                                             ; preds = %3263
  %3268 = getelementptr inbounds i32, ptr %3264, i64 1
  %3269 = load i32, ptr %3264, align 4, !tbaa !7
  %3270 = getelementptr inbounds i32, ptr %3265, i64 1
  %3271 = load i32, ptr %3265, align 4, !tbaa !7
  %3272 = and i32 %3271, %3269
  %3273 = icmp eq i32 %3272, 0
  br i1 %3273, label %3263, label %3274, !llvm.loop !155

3274:                                             ; preds = %3267
  %3275 = load i32, ptr @ntokens, align 4, !tbaa !7
  %3276 = sext i32 %3275 to i64
  %3277 = shl nsw i64 %3276, 1
  %3278 = add nsw i64 %3277, 4
  %3279 = tail call noalias ptr @malloc(i64 noundef %3278) #29
  %3280 = getelementptr inbounds %struct.errs, ptr %3279, i64 0, i32 1
  %3281 = shl i64 %3249, 32
  %3282 = ashr exact i64 %3281, 32
  %3283 = getelementptr inbounds i16, ptr %3247, i64 %3282
  %3284 = load i16, ptr %3283, align 2, !tbaa !41
  %3285 = sext i16 %3284 to i64
  %3286 = getelementptr inbounds i16, ptr %3248, i64 %3285
  %3287 = load i16, ptr %3286, align 2, !tbaa !41
  %3288 = icmp sgt i32 %3275, 0
  br i1 %3288, label %3289, label %3408

3289:                                             ; preds = %3274
  %3290 = trunc i64 %3249 to i32
  %3291 = mul nsw i32 %3258, %3290
  %3292 = sext i32 %3291 to i64
  %3293 = getelementptr inbounds i32, ptr %3257, i64 %3292
  br label %3294

3294:                                             ; preds = %3396, %3289
  %3295 = phi i64 [ 0, %3289 ], [ %3404, %3396 ]
  %3296 = phi ptr [ %3280, %3289 ], [ %3397, %3396 ]
  %3297 = phi i32 [ 1, %3289 ], [ %3403, %3396 ]
  %3298 = phi ptr [ %3262, %3289 ], [ %3402, %3396 ]
  %3299 = phi ptr [ %3293, %3289 ], [ %3401, %3396 ]
  %3300 = load i32, ptr %3298, align 4, !tbaa !7
  %3301 = load i32, ptr %3299, align 4, !tbaa !7
  %3302 = and i32 %3300, %3297
  %3303 = and i32 %3302, %3301
  %3304 = icmp eq i32 %3303, 0
  br i1 %3304, label %3396, label %3305

3305:                                             ; preds = %3294
  %3306 = load ptr, ptr @sprec, align 8, !tbaa !11
  %3307 = getelementptr inbounds i16, ptr %3306, i64 %3295
  %3308 = load i16, ptr %3307, align 2, !tbaa !41
  %3309 = icmp eq i16 %3308, 0
  br i1 %3309, label %3396, label %3310

3310:                                             ; preds = %3305
  %3311 = icmp slt i16 %3308, %3287
  br i1 %3311, label %3312, label %3330

3312:                                             ; preds = %3310
  %3313 = load i1, ptr @verboseflag, align 4
  br i1 %3313, label %3314, label %3325

3314:                                             ; preds = %3312
  %3315 = load ptr, ptr @foutput, align 8, !tbaa !11
  %3316 = load ptr, ptr @LAruleno, align 8, !tbaa !11
  %3317 = getelementptr inbounds i16, ptr %3316, i64 %3282
  %3318 = load i16, ptr %3317, align 2, !tbaa !41
  %3319 = sext i16 %3318 to i32
  %3320 = load ptr, ptr @tags, align 8, !tbaa !11
  %3321 = getelementptr inbounds ptr, ptr %3320, i64 %3295
  %3322 = load ptr, ptr %3321, align 8, !tbaa !11
  %3323 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3315, ptr noundef nonnull @.str.3.15, i32 noundef %3245, i32 noundef %3319, ptr noundef %3322, ptr noundef nonnull @.str.16) #26
  %3324 = load i32, ptr %3298, align 4, !tbaa !7
  br label %3325

3325:                                             ; preds = %3314, %3312
  %3326 = phi i32 [ %3324, %3314 ], [ %3300, %3312 ]
  %3327 = xor i32 %3297, -1
  %3328 = and i32 %3326, %3327
  store i32 %3328, ptr %3298, align 4, !tbaa !7
  %3329 = trunc i64 %3295 to i32
  tail call fastcc void @flush_shift(i32 noundef %3245, i32 noundef %3329) #26
  br label %3396

3330:                                             ; preds = %3310
  %3331 = icmp sgt i16 %3308, %3287
  br i1 %3331, label %3332, label %3349

3332:                                             ; preds = %3330
  %3333 = load i1, ptr @verboseflag, align 4
  br i1 %3333, label %3334, label %3345

3334:                                             ; preds = %3332
  %3335 = load ptr, ptr @foutput, align 8, !tbaa !11
  %3336 = load ptr, ptr @LAruleno, align 8, !tbaa !11
  %3337 = getelementptr inbounds i16, ptr %3336, i64 %3282
  %3338 = load i16, ptr %3337, align 2, !tbaa !41
  %3339 = sext i16 %3338 to i32
  %3340 = load ptr, ptr @tags, align 8, !tbaa !11
  %3341 = getelementptr inbounds ptr, ptr %3340, i64 %3295
  %3342 = load ptr, ptr %3341, align 8, !tbaa !11
  %3343 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3335, ptr noundef nonnull @.str.3.15, i32 noundef %3245, i32 noundef %3339, ptr noundef %3342, ptr noundef nonnull @.str.1) #26
  %3344 = load i32, ptr %3299, align 4, !tbaa !7
  br label %3345

3345:                                             ; preds = %3334, %3332
  %3346 = phi i32 [ %3344, %3334 ], [ %3301, %3332 ]
  %3347 = xor i32 %3297, -1
  %3348 = and i32 %3346, %3347
  store i32 %3348, ptr %3299, align 4, !tbaa !7
  br label %3396

3349:                                             ; preds = %3330
  %3350 = load ptr, ptr @sassoc, align 8, !tbaa !11
  %3351 = getelementptr inbounds i16, ptr %3350, i64 %3295
  %3352 = load i16, ptr %3351, align 2, !tbaa !41
  %3353 = sext i16 %3352 to i32
  switch i32 %3353, label %3374 [
    i32 1, label %3354
    i32 2, label %3356
    i32 3, label %3358
  ]

3354:                                             ; preds = %3349
  %3355 = load i1, ptr @verboseflag, align 4
  br i1 %3355, label %3360, label %3374

3356:                                             ; preds = %3349
  %3357 = load i1, ptr @verboseflag, align 4
  br i1 %3357, label %3360, label %3374

3358:                                             ; preds = %3349
  %3359 = load i1, ptr @verboseflag, align 4
  br i1 %3359, label %3360, label %3374

3360:                                             ; preds = %3358, %3356, %3354
  %3361 = phi ptr [ @.str.1, %3354 ], [ @.str.16, %3356 ], [ @.str.2, %3358 ]
  %3362 = load ptr, ptr @foutput, align 8, !tbaa !11
  %3363 = load ptr, ptr @LAruleno, align 8, !tbaa !11
  %3364 = getelementptr inbounds i16, ptr %3363, i64 %3282
  %3365 = load i16, ptr %3364, align 2, !tbaa !41
  %3366 = sext i16 %3365 to i32
  %3367 = load ptr, ptr @tags, align 8, !tbaa !11
  %3368 = getelementptr inbounds ptr, ptr %3367, i64 %3295
  %3369 = load ptr, ptr %3368, align 8, !tbaa !11
  %3370 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3362, ptr noundef nonnull @.str.3.15, i32 noundef %3245, i32 noundef %3366, ptr noundef %3369, ptr noundef nonnull %3361) #26
  %3371 = load ptr, ptr @sassoc, align 8, !tbaa !11
  %3372 = getelementptr inbounds i16, ptr %3371, i64 %3295
  %3373 = load i16, ptr %3372, align 2, !tbaa !41
  br label %3374

3374:                                             ; preds = %3360, %3358, %3356, %3354, %3349
  %3375 = phi i16 [ %3373, %3360 ], [ %3352, %3358 ], [ %3352, %3356 ], [ %3352, %3354 ], [ %3352, %3349 ]
  %3376 = icmp eq i16 %3375, 1
  %3377 = xor i32 %3297, -1
  br i1 %3376, label %3378, label %3381

3378:                                             ; preds = %3374
  %3379 = load i32, ptr %3299, align 4, !tbaa !7
  %3380 = and i32 %3379, %3377
  store i32 %3380, ptr %3299, align 4, !tbaa !7
  br label %3396

3381:                                             ; preds = %3374
  %3382 = load i32, ptr %3298, align 4, !tbaa !7
  %3383 = and i32 %3382, %3377
  store i32 %3383, ptr %3298, align 4, !tbaa !7
  %3384 = trunc i64 %3295 to i32
  tail call fastcc void @flush_shift(i32 noundef %3245, i32 noundef %3384) #26
  %3385 = load ptr, ptr @sassoc, align 8, !tbaa !11
  %3386 = getelementptr inbounds i16, ptr %3385, i64 %3295
  %3387 = load i16, ptr %3386, align 2, !tbaa !41
  %3388 = icmp eq i16 %3387, 2
  br i1 %3388, label %3396, label %3389

3389:                                             ; preds = %3381
  %3390 = load i32, ptr %3299, align 4, !tbaa !7
  %3391 = and i32 %3390, %3377
  store i32 %3391, ptr %3299, align 4, !tbaa !7
  %3392 = icmp eq i16 %3387, 3
  br i1 %3392, label %3393, label %3396

3393:                                             ; preds = %3389
  %3394 = trunc i64 %3295 to i16
  %3395 = getelementptr inbounds i16, ptr %3296, i64 1
  store i16 %3394, ptr %3296, align 2, !tbaa !41
  br label %3396

3396:                                             ; preds = %3393, %3389, %3381, %3378, %3345, %3325, %3305, %3294
  %3397 = phi ptr [ %3296, %3325 ], [ %3296, %3345 ], [ %3395, %3393 ], [ %3296, %3389 ], [ %3296, %3305 ], [ %3296, %3294 ], [ %3296, %3381 ], [ %3296, %3378 ]
  %3398 = shl i32 %3297, 1
  %3399 = icmp eq i32 %3398, 0
  %3400 = zext i1 %3399 to i64
  %3401 = getelementptr inbounds i32, ptr %3299, i64 %3400
  %3402 = getelementptr inbounds i32, ptr %3298, i64 %3400
  %3403 = tail call i32 @llvm.umax.i32(i32 %3398, i32 1)
  %3404 = add nuw nsw i64 %3295, 1
  %3405 = load i32, ptr @ntokens, align 4, !tbaa !7
  %3406 = sext i32 %3405 to i64
  %3407 = icmp slt i64 %3404, %3406
  br i1 %3407, label %3294, label %3408, !llvm.loop !156

3408:                                             ; preds = %3396, %3274
  %3409 = phi ptr [ %3280, %3274 ], [ %3397, %3396 ]
  %3410 = ptrtoint ptr %3409 to i64
  %3411 = ptrtoint ptr %3280 to i64
  %3412 = sub i64 %3410, %3411
  %3413 = lshr exact i64 %3412, 1
  %3414 = trunc i64 %3413 to i16
  store i16 %3414, ptr %3279, align 2, !tbaa !157
  %3415 = icmp eq i16 %3414, 0
  br i1 %3415, label %3425, label %3416

3416:                                             ; preds = %3408
  %3417 = ptrtoint ptr %3279 to i64
  %3418 = sub i64 %3410, %3417
  %3419 = trunc i64 %3418 to i32
  %3420 = tail call fastcc ptr @mallocate(i32 noundef %3419) #25
  %3421 = load ptr, ptr @err_table, align 8, !tbaa !11
  %3422 = getelementptr inbounds ptr, ptr %3421, i64 %3180
  store ptr %3420, ptr %3422, align 8, !tbaa !11
  %3423 = shl i64 %3418, 32
  %3424 = ashr exact i64 %3423, 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %3420, ptr nonnull align 1 %3279, i64 %3424, i1 false)
  br label %3428

3425:                                             ; preds = %3408
  %3426 = load ptr, ptr @err_table, align 8, !tbaa !11
  %3427 = getelementptr inbounds ptr, ptr %3426, i64 %3180
  store ptr null, ptr %3427, align 8, !tbaa !11
  br label %3428

3428:                                             ; preds = %3425, %3416
  %3429 = load ptr, ptr @rprec, align 8, !tbaa !11
  %3430 = load ptr, ptr @LAruleno, align 8, !tbaa !11
  br label %3431

3431:                                             ; preds = %3428, %3263, %3246
  %3432 = phi ptr [ %3247, %3246 ], [ %3430, %3428 ], [ %3247, %3263 ]
  %3433 = phi ptr [ %3248, %3246 ], [ %3429, %3428 ], [ %3248, %3263 ]
  %3434 = add nsw i64 %3249, 1
  %3435 = icmp eq i64 %3434, %3242
  br i1 %3435, label %3436, label %3246, !llvm.loop !159

3436:                                             ; preds = %3431
  %3437 = load ptr, ptr @lookaheads, align 8, !tbaa !11
  %3438 = getelementptr inbounds i16, ptr %3437, i64 %3180
  %3439 = load i16, ptr %3438, align 2, !tbaa !41
  br label %3440

3440:                                             ; preds = %3436, %3229
  %3441 = phi i16 [ %3439, %3436 ], [ %3238, %3229 ]
  %3442 = icmp slt i16 %3441, %3234
  br i1 %3442, label %3443, label %3481

3443:                                             ; preds = %3440
  %3444 = load ptr, ptr @lookaheadset, align 8, !tbaa !11
  %3445 = icmp ult ptr %3444, %3236
  %3446 = load ptr, ptr @LA, align 8, !tbaa !11
  %3447 = load i32, ptr @tokensetsize, align 4, !tbaa !7
  %3448 = load ptr, ptr @conflicts, align 8
  %3449 = getelementptr inbounds i8, ptr %3448, i64 %3180
  %3450 = sext i16 %3441 to i64
  %3451 = sext i32 %3447 to i64
  %3452 = sext i16 %3234 to i64
  br label %3453

3453:                                             ; preds = %3478, %3443
  %3454 = phi i64 [ %3479, %3478 ], [ %3450, %3443 ]
  %3455 = mul nsw i64 %3454, %3451
  %3456 = getelementptr inbounds i32, ptr %3446, i64 %3455
  br i1 %3445, label %3457, label %3478

3457:                                             ; preds = %3467, %3453
  %3458 = phi ptr [ %3462, %3467 ], [ %3444, %3453 ]
  %3459 = phi ptr [ %3460, %3467 ], [ %3456, %3453 ]
  %3460 = getelementptr inbounds i32, ptr %3459, i64 1
  %3461 = load i32, ptr %3459, align 4, !tbaa !7
  %3462 = getelementptr inbounds i32, ptr %3458, i64 1
  %3463 = load i32, ptr %3458, align 4, !tbaa !7
  %3464 = and i32 %3463, %3461
  %3465 = icmp eq i32 %3464, 0
  br i1 %3465, label %3467, label %3466

3466:                                             ; preds = %3457
  store i8 1, ptr %3449, align 1, !tbaa !13
  store i1 true, ptr @any_conflicts, align 1
  br label %3467

3467:                                             ; preds = %3466, %3457
  %3468 = icmp ult ptr %3462, %3236
  br i1 %3468, label %3457, label %3469, !llvm.loop !160

3469:                                             ; preds = %3469, %3467
  %3470 = phi ptr [ %3474, %3469 ], [ %3444, %3467 ]
  %3471 = phi ptr [ %3472, %3469 ], [ %3456, %3467 ]
  %3472 = getelementptr inbounds i32, ptr %3471, i64 1
  %3473 = load i32, ptr %3471, align 4, !tbaa !7
  %3474 = getelementptr inbounds i32, ptr %3470, i64 1
  %3475 = load i32, ptr %3470, align 4, !tbaa !7
  %3476 = or i32 %3475, %3473
  store i32 %3476, ptr %3470, align 4, !tbaa !7
  %3477 = icmp ult ptr %3474, %3236
  br i1 %3477, label %3469, label %3478, !llvm.loop !161

3478:                                             ; preds = %3469, %3453
  %3479 = add nsw i64 %3454, 1
  %3480 = icmp eq i64 %3479, %3452
  br i1 %3480, label %3481, label %3453, !llvm.loop !162

3481:                                             ; preds = %3478, %3440, %3185
  %3482 = phi i64 [ %3186, %3185 ], [ %3232, %3440 ], [ %3232, %3478 ]
  %3483 = load i32, ptr @nstates, align 4, !tbaa !7
  %3484 = sext i32 %3483 to i64
  %3485 = icmp slt i64 %3482, %3484
  br i1 %3485, label %3179, label %3486, !llvm.loop !163

3486:                                             ; preds = %3481, %3165
  %3487 = phi i32 [ %3177, %3165 ], [ %3483, %3481 ]
  %3488 = load i1, ptr @verboseflag, align 4
  %3489 = load i1, ptr @any_conflicts, align 1
  br i1 %3488, label %3490, label %4230

3490:                                             ; preds = %3486
  br i1 %3489, label %3491, label %3557

3491:                                             ; preds = %3490
  store i32 0, ptr @src_total, align 4, !tbaa !7
  store i32 0, ptr @rrc_total, align 4, !tbaa !7
  %3492 = icmp sgt i32 %3487, 0
  br i1 %3492, label %3493, label %3556

3493:                                             ; preds = %3491
  %3494 = load ptr, ptr @conflicts, align 8, !tbaa !11
  br label %3495

3495:                                             ; preds = %3550, %3493
  %3496 = phi i32 [ %3487, %3493 ], [ %3551, %3550 ]
  %3497 = phi ptr [ %3494, %3493 ], [ %3552, %3550 ]
  %3498 = phi i64 [ 0, %3493 ], [ %3553, %3550 ]
  %3499 = getelementptr inbounds i8, ptr %3497, i64 %3498
  %3500 = load i8, ptr %3499, align 1, !tbaa !13
  %3501 = icmp eq i8 %3500, 0
  br i1 %3501, label %3550, label %3502

3502:                                             ; preds = %3495
  %3503 = trunc i64 %3498 to i32
  tail call fastcc void @count_sr_conflicts(i32 noundef %3503) #26
  tail call fastcc void @count_rr_conflicts(i32 noundef %3503) #26
  %3504 = load i32, ptr @src_count, align 4, !tbaa !7
  %3505 = load i32, ptr @src_total, align 4, !tbaa !7
  %3506 = add nsw i32 %3505, %3504
  store i32 %3506, ptr @src_total, align 4, !tbaa !7
  %3507 = load i32, ptr @rrc_count, align 4, !tbaa !7
  %3508 = load i32, ptr @rrc_total, align 4, !tbaa !7
  %3509 = add nsw i32 %3508, %3507
  store i32 %3509, ptr @rrc_total, align 4, !tbaa !7
  %3510 = load ptr, ptr @foutput, align 8, !tbaa !11
  %3511 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3510, ptr noundef nonnull @.str.4, i32 noundef %3503) #26
  %3512 = load i32, ptr @src_count, align 4, !tbaa !7
  %3513 = icmp eq i32 %3512, 1
  br i1 %3513, label %3514, label %3517

3514:                                             ; preds = %3502
  %3515 = load ptr, ptr @foutput, align 8, !tbaa !11
  %3516 = tail call i64 @fwrite(ptr nonnull @.str.5, i64 24, i64 1, ptr %3515)
  br label %3522

3517:                                             ; preds = %3502
  %3518 = icmp sgt i32 %3512, 1
  br i1 %3518, label %3519, label %3522

3519:                                             ; preds = %3517
  %3520 = load ptr, ptr @foutput, align 8, !tbaa !11
  %3521 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3520, ptr noundef nonnull @.str.6, i32 noundef %3512) #26
  br label %3522

3522:                                             ; preds = %3519, %3517, %3514
  %3523 = load i32, ptr @src_count, align 4, !tbaa !7
  %3524 = icmp sgt i32 %3523, 0
  %3525 = load i32, ptr @rrc_count, align 4
  %3526 = icmp sgt i32 %3525, 0
  %3527 = select i1 %3524, i1 %3526, i1 false
  br i1 %3527, label %3528, label %3532

3528:                                             ; preds = %3522
  %3529 = load ptr, ptr @foutput, align 8, !tbaa !11
  %3530 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 4, i64 1, ptr %3529)
  %3531 = load i32, ptr @rrc_count, align 4, !tbaa !7
  br label %3532

3532:                                             ; preds = %3528, %3522
  %3533 = phi i32 [ %3531, %3528 ], [ %3525, %3522 ]
  %3534 = icmp eq i32 %3533, 1
  br i1 %3534, label %3535, label %3538

3535:                                             ; preds = %3532
  %3536 = load ptr, ptr @foutput, align 8, !tbaa !11
  %3537 = tail call i64 @fwrite(ptr nonnull @.str.8, i64 25, i64 1, ptr %3536)
  br label %3543

3538:                                             ; preds = %3532
  %3539 = icmp sgt i32 %3533, 1
  br i1 %3539, label %3540, label %3543

3540:                                             ; preds = %3538
  %3541 = load ptr, ptr @foutput, align 8, !tbaa !11
  %3542 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3541, ptr noundef nonnull @.str.9, i32 noundef %3533) #26
  br label %3543

3543:                                             ; preds = %3540, %3538, %3535
  %3544 = load ptr, ptr @foutput, align 8, !tbaa !11
  %3545 = tail call i32 @putc(i32 noundef 46, ptr noundef %3544) #26
  %3546 = load ptr, ptr @foutput, align 8, !tbaa !11
  %3547 = tail call i32 @putc(i32 noundef 10, ptr noundef %3546) #26
  %3548 = load ptr, ptr @conflicts, align 8, !tbaa !11
  %3549 = load i32, ptr @nstates, align 4, !tbaa !7
  br label %3550

3550:                                             ; preds = %3543, %3495
  %3551 = phi i32 [ %3496, %3495 ], [ %3549, %3543 ]
  %3552 = phi ptr [ %3497, %3495 ], [ %3548, %3543 ]
  %3553 = add nuw nsw i64 %3498, 1
  %3554 = sext i32 %3551 to i64
  %3555 = icmp slt i64 %3553, %3554
  br i1 %3555, label %3495, label %3556, !llvm.loop !164

3556:                                             ; preds = %3550, %3491
  tail call fastcc void @total_conflicts() #26
  br label %3557

3557:                                             ; preds = %3556, %3490
  %3558 = load ptr, ptr @foutput, align 8, !tbaa !11
  %3559 = tail call i64 @fwrite(ptr nonnull @.str.169, i64 15, i64 1, ptr %3558)
  %3560 = load ptr, ptr @foutput, align 8, !tbaa !11
  %3561 = load ptr, ptr @tags, align 8, !tbaa !11
  %3562 = load ptr, ptr %3561, align 8, !tbaa !11
  %3563 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3560, ptr noundef nonnull @.str.1.170, i32 noundef -1, ptr noundef %3562) #26
  %3564 = load i32, ptr @translations, align 4, !tbaa !7
  %3565 = icmp eq i32 %3564, 0
  br i1 %3565, label %3569, label %3566

3566:                                             ; preds = %3557
  %3567 = load i32, ptr @max_user_token_number, align 4, !tbaa !7
  %3568 = load ptr, ptr @token_translations, align 8, !tbaa !11
  br label %3572

3569:                                             ; preds = %3557
  %3570 = load i32, ptr @ntokens, align 4, !tbaa !7
  %3571 = icmp sgt i32 %3570, 1
  br i1 %3571, label %3595, label %3607

3572:                                             ; preds = %3589, %3566
  %3573 = phi i32 [ %3567, %3566 ], [ %3590, %3589 ]
  %3574 = phi ptr [ %3568, %3566 ], [ %3591, %3589 ]
  %3575 = phi i64 [ 0, %3566 ], [ %3592, %3589 ]
  %3576 = getelementptr inbounds i16, ptr %3574, i64 %3575
  %3577 = load i16, ptr %3576, align 2, !tbaa !41
  %3578 = icmp eq i16 %3577, 2
  br i1 %3578, label %3589, label %3579

3579:                                             ; preds = %3572
  %3580 = load ptr, ptr @foutput, align 8, !tbaa !11
  %3581 = load ptr, ptr @tags, align 8, !tbaa !11
  %3582 = sext i16 %3577 to i64
  %3583 = getelementptr inbounds ptr, ptr %3581, i64 %3582
  %3584 = load ptr, ptr %3583, align 8, !tbaa !11
  %3585 = trunc i64 %3575 to i32
  %3586 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3580, ptr noundef nonnull @.str.1.170, i32 noundef %3585, ptr noundef %3584) #26
  %3587 = load ptr, ptr @token_translations, align 8, !tbaa !11
  %3588 = load i32, ptr @max_user_token_number, align 4, !tbaa !7
  br label %3589

3589:                                             ; preds = %3579, %3572
  %3590 = phi i32 [ %3573, %3572 ], [ %3588, %3579 ]
  %3591 = phi ptr [ %3574, %3572 ], [ %3587, %3579 ]
  %3592 = add nuw nsw i64 %3575, 1
  %3593 = zext i32 %3590 to i64
  %3594 = icmp ult i64 %3575, %3593
  br i1 %3594, label %3572, label %3607, !llvm.loop !165

3595:                                             ; preds = %3595, %3569
  %3596 = phi i64 [ %3603, %3595 ], [ 1, %3569 ]
  %3597 = load ptr, ptr @foutput, align 8, !tbaa !11
  %3598 = load ptr, ptr @tags, align 8, !tbaa !11
  %3599 = getelementptr inbounds ptr, ptr %3598, i64 %3596
  %3600 = load ptr, ptr %3599, align 8, !tbaa !11
  %3601 = trunc i64 %3596 to i32
  %3602 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3597, ptr noundef nonnull @.str.1.170, i32 noundef %3601, ptr noundef %3600) #26
  %3603 = add nuw nsw i64 %3596, 1
  %3604 = load i32, ptr @ntokens, align 4, !tbaa !7
  %3605 = sext i32 %3604 to i64
  %3606 = icmp slt i64 %3603, %3605
  br i1 %3606, label %3595, label %3607, !llvm.loop !166

3607:                                             ; preds = %3595, %3589, %3569
  %3608 = load i32, ptr @nstates, align 4, !tbaa !7
  %3609 = icmp sgt i32 %3608, 0
  br i1 %3609, label %3610, label %4259

3610:                                             ; preds = %4225, %3607
  %3611 = phi i64 [ %4226, %4225 ], [ 0, %3607 ]
  %3612 = load ptr, ptr @foutput, align 8, !tbaa !11
  %3613 = trunc i64 %3611 to i32
  %3614 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3612, ptr noundef nonnull @.str.2.171, i32 noundef %3613) #26
  %3615 = load ptr, ptr @state_table, align 8, !tbaa !11
  %3616 = getelementptr inbounds ptr, ptr %3615, i64 %3611
  %3617 = load ptr, ptr %3616, align 8, !tbaa !11
  %3618 = getelementptr inbounds %struct.core, ptr %3617, i64 0, i32 4
  %3619 = load i16, ptr %3618, align 4, !tbaa !81
  %3620 = sext i16 %3619 to i64
  %3621 = icmp eq i16 %3619, 0
  br i1 %3621, label %3697, label %3622

3622:                                             ; preds = %3610
  %3623 = icmp sgt i16 %3619, 0
  br i1 %3623, label %3624, label %3694

3624:                                             ; preds = %3622
  %3625 = and i64 %3620, 4294967295
  br label %3626

3626:                                             ; preds = %3687, %3624
  %3627 = phi i64 [ 0, %3624 ], [ %3692, %3687 ]
  %3628 = load ptr, ptr @ritem, align 8, !tbaa !11
  %3629 = getelementptr inbounds %struct.core, ptr %3617, i64 0, i32 5, i64 %3627
  %3630 = load i16, ptr %3629, align 2, !tbaa !41
  %3631 = sext i16 %3630 to i64
  %3632 = getelementptr inbounds i16, ptr %3628, i64 %3631
  br label %3633

3633:                                             ; preds = %3633, %3626
  %3634 = phi ptr [ %3632, %3626 ], [ %3637, %3633 ]
  %3635 = load i16, ptr %3634, align 2, !tbaa !41
  %3636 = icmp sgt i16 %3635, 0
  %3637 = getelementptr inbounds i16, ptr %3634, i64 1
  br i1 %3636, label %3633, label %3638, !llvm.loop !167

3638:                                             ; preds = %3633
  %.lcssa = phi i16 [ %3635, %3633 ]
  %3639 = sext i16 %.lcssa to i32
  %3640 = sub nsw i32 0, %3639
  %3641 = load ptr, ptr @foutput, align 8, !tbaa !11
  %3642 = load ptr, ptr @tags, align 8, !tbaa !11
  %3643 = load ptr, ptr @rlhs, align 8, !tbaa !11
  %3644 = zext i32 %3640 to i64
  %3645 = getelementptr inbounds i16, ptr %3643, i64 %3644
  %3646 = load i16, ptr %3645, align 2, !tbaa !41
  %3647 = sext i16 %3646 to i64
  %3648 = getelementptr inbounds ptr, ptr %3642, i64 %3647
  %3649 = load ptr, ptr %3648, align 8, !tbaa !11
  %3650 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3641, ptr noundef nonnull @.str.3.177, ptr noundef %3649) #26
  %3651 = load ptr, ptr @ritem, align 8, !tbaa !11
  %3652 = load ptr, ptr @rrhs, align 8, !tbaa !11
  %3653 = getelementptr inbounds i16, ptr %3652, i64 %3644
  %3654 = load i16, ptr %3653, align 2, !tbaa !41
  %3655 = sext i16 %3654 to i64
  %3656 = getelementptr inbounds i16, ptr %3651, i64 %3655
  %3657 = icmp ult ptr %3656, %3632
  br i1 %3657, label %3658, label %3669

3658:                                             ; preds = %3658, %3638
  %3659 = phi ptr [ %3667, %3658 ], [ %3656, %3638 ]
  %3660 = load ptr, ptr @foutput, align 8, !tbaa !11
  %3661 = load ptr, ptr @tags, align 8, !tbaa !11
  %3662 = load i16, ptr %3659, align 2, !tbaa !41
  %3663 = sext i16 %3662 to i64
  %3664 = getelementptr inbounds ptr, ptr %3661, i64 %3663
  %3665 = load ptr, ptr %3664, align 8, !tbaa !11
  %3666 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3660, ptr noundef nonnull @.str.4.178, ptr noundef %3665) #26
  %3667 = getelementptr inbounds i16, ptr %3659, i64 1
  %3668 = icmp ult ptr %3667, %3632
  br i1 %3668, label %3658, label %3669, !llvm.loop !168

3669:                                             ; preds = %3658, %3638
  %3670 = phi ptr [ %3656, %3638 ], [ %3667, %3658 ]
  %3671 = load ptr, ptr @foutput, align 8, !tbaa !11
  %3672 = tail call i32 @putc(i32 noundef 46, ptr noundef %3671) #26
  %3673 = load i16, ptr %3670, align 2, !tbaa !41
  %3674 = icmp sgt i16 %3673, 0
  br i1 %3674, label %3675, label %3687

3675:                                             ; preds = %3675, %3669
  %3676 = phi i16 [ %3685, %3675 ], [ %3673, %3669 ]
  %3677 = phi ptr [ %3684, %3675 ], [ %3670, %3669 ]
  %3678 = load ptr, ptr @foutput, align 8, !tbaa !11
  %3679 = load ptr, ptr @tags, align 8, !tbaa !11
  %3680 = zext i16 %3676 to i64
  %3681 = getelementptr inbounds ptr, ptr %3679, i64 %3680
  %3682 = load ptr, ptr %3681, align 8, !tbaa !11
  %3683 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3678, ptr noundef nonnull @.str.5.179, ptr noundef %3682) #26
  %3684 = getelementptr inbounds i16, ptr %3677, i64 1
  %3685 = load i16, ptr %3684, align 2, !tbaa !41
  %3686 = icmp sgt i16 %3685, 0
  br i1 %3686, label %3675, label %3687, !llvm.loop !169

3687:                                             ; preds = %3675, %3669
  %3688 = load ptr, ptr @foutput, align 8, !tbaa !11
  %3689 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3688, ptr noundef nonnull @.str.6.180, i32 noundef %3640) #26
  %3690 = load ptr, ptr @foutput, align 8, !tbaa !11
  %3691 = tail call i32 @putc(i32 noundef 10, ptr noundef %3690) #26
  %3692 = add nuw nsw i64 %3627, 1
  %3693 = icmp eq i64 %3692, %3625
  br i1 %3693, label %3694, label %3626, !llvm.loop !170

3694:                                             ; preds = %3687, %3622
  %3695 = load ptr, ptr @foutput, align 8, !tbaa !11
  %3696 = tail call i32 @putc(i32 noundef 10, ptr noundef %3695) #26
  br label %3697

3697:                                             ; preds = %3694, %3610
  %3698 = load ptr, ptr @shift_table, align 8, !tbaa !11
  %3699 = getelementptr inbounds ptr, ptr %3698, i64 %3611
  %3700 = load ptr, ptr %3699, align 8, !tbaa !11
  %3701 = load ptr, ptr @reduction_table, align 8, !tbaa !11
  %3702 = getelementptr inbounds ptr, ptr %3701, i64 %3611
  %3703 = load ptr, ptr %3702, align 8, !tbaa !11
  %3704 = load ptr, ptr @err_table, align 8, !tbaa !11
  %3705 = getelementptr inbounds ptr, ptr %3704, i64 %3611
  %3706 = load ptr, ptr %3705, align 8, !tbaa !11
  %3707 = icmp ne ptr %3700, null
  %3708 = icmp ne ptr %3703, null
  %3709 = select i1 %3707, i1 true, i1 %3708
  br i1 %3709, label %3713, label %3710

3710:                                             ; preds = %3697
  %3711 = load ptr, ptr @foutput, align 8, !tbaa !11
  %3712 = tail call i64 @fwrite(ptr nonnull @.str.7.172, i64 15, i64 1, ptr %3711)
  br label %4225

3713:                                             ; preds = %3697
  br i1 %3707, label %3714, label %3743

3714:                                             ; preds = %3713
  %3715 = getelementptr inbounds %struct.shifts, ptr %3700, i64 0, i32 2
  %3716 = load i16, ptr %3715, align 2, !tbaa !106
  %3717 = icmp slt i16 %3716, 1
  br i1 %3717, label %3743, label %3718

3718:                                             ; preds = %3714
  %3719 = zext i16 %3716 to i64
  br label %3720

3720:                                             ; preds = %3737, %3718
  %3721 = phi i64 [ 0, %3718 ], [ %3738, %3737 ]
  %3722 = getelementptr inbounds %struct.shifts, ptr %3700, i64 0, i32 3, i64 %3721
  %3723 = load i16, ptr %3722, align 2, !tbaa !41
  %3724 = icmp eq i16 %3723, 0
  br i1 %3724, label %3737, label %3725

3725:                                             ; preds = %3720
  %3726 = sext i16 %3723 to i32
  %3727 = load ptr, ptr @accessing_symbol, align 8, !tbaa !11
  %3728 = sext i16 %3723 to i64
  %3729 = getelementptr inbounds i16, ptr %3727, i64 %3728
  %3730 = load i16, ptr %3729, align 2, !tbaa !41
  %3731 = load ptr, ptr @foutput, align 8, !tbaa !11
  %3732 = load ptr, ptr @tags, align 8, !tbaa !11
  %3733 = sext i16 %3730 to i64
  %3734 = getelementptr inbounds ptr, ptr %3732, i64 %3733
  %3735 = load ptr, ptr %3734, align 8, !tbaa !11
  %3736 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3731, ptr noundef nonnull @.str.8.173, ptr noundef %3735, i32 noundef %3726) #26
  br label %3737

3737:                                             ; preds = %3725, %3720
  %3738 = add nuw nsw i64 %3721, 1
  %3739 = icmp eq i64 %3738, %3719
  br i1 %3739, label %3740, label %3720, !llvm.loop !171

3740:                                             ; preds = %3737
  %3741 = load ptr, ptr @foutput, align 8, !tbaa !11
  %3742 = tail call i32 @putc(i32 noundef 10, ptr noundef %3741) #26
  br label %3743

3743:                                             ; preds = %3740, %3714, %3713
  %3744 = icmp eq ptr %3706, null
  br i1 %3744, label %3769, label %3745

3745:                                             ; preds = %3743
  %3746 = load i16, ptr %3706, align 2, !tbaa !157
  %3747 = sext i16 %3746 to i32
  %3748 = icmp sgt i16 %3746, 0
  br i1 %3748, label %3749, label %3769

3749:                                             ; preds = %3745
  %3750 = zext i32 %3747 to i64
  br label %3751

3751:                                             ; preds = %3763, %3749
  %3752 = phi i64 [ 0, %3749 ], [ %3764, %3763 ]
  %3753 = getelementptr inbounds %struct.errs, ptr %3706, i64 0, i32 1, i64 %3752
  %3754 = load i16, ptr %3753, align 2, !tbaa !41
  %3755 = icmp eq i16 %3754, 0
  br i1 %3755, label %3763, label %3756

3756:                                             ; preds = %3751
  %3757 = load ptr, ptr @foutput, align 8, !tbaa !11
  %3758 = load ptr, ptr @tags, align 8, !tbaa !11
  %3759 = sext i16 %3754 to i64
  %3760 = getelementptr inbounds ptr, ptr %3758, i64 %3759
  %3761 = load ptr, ptr %3760, align 8, !tbaa !11
  %3762 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3757, ptr noundef nonnull @.str.9.174, ptr noundef %3761) #26
  br label %3763

3763:                                             ; preds = %3756, %3751
  %3764 = add nuw nsw i64 %3752, 1
  %3765 = icmp eq i64 %3764, %3750
  br i1 %3765, label %3766, label %3751, !llvm.loop !172

3766:                                             ; preds = %3763
  %3767 = load ptr, ptr @foutput, align 8, !tbaa !11
  %3768 = tail call i32 @putc(i32 noundef 10, ptr noundef %3767) #26
  br label %3769

3769:                                             ; preds = %3766, %3745, %3743
  %3770 = phi i32 [ %3747, %3766 ], [ 0, %3743 ], [ %3747, %3745 ]
  %3771 = phi i32 [ %3747, %3766 ], [ 0, %3743 ], [ 0, %3745 ]
  %3772 = load ptr, ptr @consistent, align 8, !tbaa !11
  %3773 = getelementptr inbounds i8, ptr %3772, i64 %3611
  %3774 = load i8, ptr %3773, align 1, !tbaa !13
  %3775 = icmp ne i8 %3774, 0
  %3776 = select i1 %3775, i1 %3708, i1 false
  br i1 %3776, label %3777, label %3791

3777:                                             ; preds = %3769
  %3778 = getelementptr inbounds %struct.shifts, ptr %3703, i64 0, i32 3
  %3779 = load i16, ptr %3778, align 4, !tbaa !41
  %3780 = sext i16 %3779 to i32
  %3781 = load ptr, ptr @rlhs, align 8, !tbaa !11
  %3782 = sext i16 %3779 to i64
  %3783 = getelementptr inbounds i16, ptr %3781, i64 %3782
  %3784 = load i16, ptr %3783, align 2, !tbaa !41
  %3785 = load ptr, ptr @foutput, align 8, !tbaa !11
  %3786 = load ptr, ptr @tags, align 8, !tbaa !11
  %3787 = sext i16 %3784 to i64
  %3788 = getelementptr inbounds ptr, ptr %3786, i64 %3787
  %3789 = load ptr, ptr %3788, align 8, !tbaa !11
  %3790 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3785, ptr noundef nonnull @.str.10.175, i32 noundef %3780, ptr noundef %3789) #26
  br label %4197

3791:                                             ; preds = %3769
  br i1 %3708, label %3792, label %4197

3792:                                             ; preds = %3791
  %3793 = load i32, ptr @tokensetsize, align 4, !tbaa !7
  %3794 = icmp sgt i32 %3793, 0
  br i1 %3794, label %3795, label %3799

3795:                                             ; preds = %3792
  %3796 = load ptr, ptr @shiftset.14, align 8, !tbaa !11
  %3797 = zext i32 %3793 to i64
  %3798 = shl nuw nsw i64 %3797, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %3796, i8 0, i64 %3798, i1 false), !tbaa !7
  br label %3799

3799:                                             ; preds = %3795, %3792
  %3800 = load ptr, ptr @shift_table, align 8, !tbaa !11
  %3801 = getelementptr inbounds ptr, ptr %3800, i64 %3611
  %3802 = load ptr, ptr %3801, align 8, !tbaa !11
  %3803 = icmp eq ptr %3802, null
  br i1 %3803, label %3840, label %3804

3804:                                             ; preds = %3799
  %3805 = getelementptr inbounds %struct.shifts, ptr %3802, i64 0, i32 2
  %3806 = load i16, ptr %3805, align 2, !tbaa !106
  %3807 = icmp sgt i16 %3806, 0
  br i1 %3807, label %3808, label %3840

3808:                                             ; preds = %3804
  %3809 = zext i16 %3806 to i64
  %3810 = load ptr, ptr @accessing_symbol, align 8
  %3811 = load ptr, ptr @shiftset.14, align 8
  %3812 = load i32, ptr @ntokens, align 4
  %3813 = load i32, ptr @error_token_number, align 4
  br label %3814

3814:                                             ; preds = %3836, %3808
  %3815 = phi i64 [ 0, %3808 ], [ %3838, %3836 ]
  %3816 = phi i32 [ 0, %3808 ], [ %3837, %3836 ]
  %3817 = getelementptr inbounds %struct.shifts, ptr %3802, i64 0, i32 3, i64 %3815
  %3818 = load i16, ptr %3817, align 2, !tbaa !41
  %3819 = icmp eq i16 %3818, 0
  br i1 %3819, label %3836, label %3820

3820:                                             ; preds = %3814
  %3821 = sext i16 %3818 to i64
  %3822 = getelementptr inbounds i16, ptr %3810, i64 %3821
  %3823 = load i16, ptr %3822, align 2, !tbaa !41
  %3824 = sext i16 %3823 to i32
  %3825 = icmp sgt i32 %3812, %3824
  br i1 %3825, label %3826, label %3840

3826:                                             ; preds = %3820
  %3827 = icmp eq i32 %3813, %3824
  %3828 = select i1 %3827, i32 1, i32 %3816
  %3829 = and i32 %3824, 31
  %3830 = shl nuw i32 1, %3829
  %3831 = ashr i32 %3824, 5
  %3832 = sext i32 %3831 to i64
  %3833 = getelementptr inbounds i32, ptr %3811, i64 %3832
  %3834 = load i32, ptr %3833, align 4, !tbaa !7
  %3835 = or i32 %3834, %3830
  store i32 %3835, ptr %3833, align 4, !tbaa !7
  br label %3836

3836:                                             ; preds = %3826, %3814
  %3837 = phi i32 [ %3828, %3826 ], [ %3816, %3814 ]
  %3838 = add nuw nsw i64 %3815, 1
  %3839 = icmp eq i64 %3838, %3809
  br i1 %3839, label %3840, label %3814, !llvm.loop !173

3840:                                             ; preds = %3836, %3820, %3804, %3799
  %3841 = phi i32 [ 0, %3799 ], [ 0, %3804 ], [ %3837, %3836 ], [ %3816, %3820 ]
  %3842 = load ptr, ptr @err_table, align 8, !tbaa !11
  %3843 = getelementptr inbounds ptr, ptr %3842, i64 %3611
  %3844 = load ptr, ptr %3843, align 8, !tbaa !11
  %3845 = icmp eq ptr %3844, null
  br i1 %3845, label %3869, label %3846

3846:                                             ; preds = %3840
  %3847 = load i16, ptr %3844, align 2, !tbaa !157
  %3848 = icmp sgt i16 %3847, 0
  br i1 %3848, label %3849, label %3869

3849:                                             ; preds = %3846
  %3850 = zext i16 %3847 to i64
  %3851 = load ptr, ptr @shiftset.14, align 8
  br label %3852

3852:                                             ; preds = %3866, %3849
  %3853 = phi i64 [ 0, %3849 ], [ %3867, %3866 ]
  %3854 = getelementptr inbounds %struct.errs, ptr %3844, i64 0, i32 1, i64 %3853
  %3855 = load i16, ptr %3854, align 2, !tbaa !41
  %3856 = icmp eq i16 %3855, 0
  br i1 %3856, label %3866, label %3857

3857:                                             ; preds = %3852
  %3858 = sext i16 %3855 to i32
  %3859 = and i32 %3858, 31
  %3860 = shl nuw i32 1, %3859
  %3861 = ashr i32 %3858, 5
  %3862 = sext i32 %3861 to i64
  %3863 = getelementptr inbounds i32, ptr %3851, i64 %3862
  %3864 = load i32, ptr %3863, align 4, !tbaa !7
  %3865 = or i32 %3864, %3860
  store i32 %3865, ptr %3863, align 4, !tbaa !7
  br label %3866

3866:                                             ; preds = %3857, %3852
  %3867 = add nuw nsw i64 %3853, 1
  %3868 = icmp eq i64 %3867, %3850
  br i1 %3868, label %3869, label %3852, !llvm.loop !174

3869:                                             ; preds = %3866, %3846, %3840
  %3870 = load ptr, ptr @lookaheads, align 8, !tbaa !11
  %3871 = getelementptr inbounds i16, ptr %3870, i64 %3611
  %3872 = load i16, ptr %3871, align 2, !tbaa !41
  %3873 = sext i16 %3872 to i32
  %3874 = add nuw nsw i64 %3611, 1
  %3875 = getelementptr inbounds i16, ptr %3870, i64 %3874
  %3876 = load i16, ptr %3875, align 2, !tbaa !41
  %3877 = sext i16 %3876 to i32
  %3878 = sub nsw i32 %3877, %3873
  %3879 = icmp ne i32 %3878, 1
  %3880 = icmp ne i32 %3841, 0
  %3881 = select i1 %3879, i1 true, i1 %3880
  br i1 %3881, label %3953, label %3882

3882:                                             ; preds = %3869
  %3883 = load ptr, ptr @LAruleno, align 8, !tbaa !11
  %3884 = sext i16 %3872 to i64
  %3885 = getelementptr inbounds i16, ptr %3883, i64 %3884
  %3886 = load i16, ptr %3885, align 2, !tbaa !41
  %3887 = sext i16 %3886 to i32
  %3888 = load ptr, ptr @lookaheadset, align 8, !tbaa !11
  %3889 = sext i32 %3793 to i64
  %3890 = getelementptr inbounds i32, ptr %3888, i64 %3889
  br i1 %3794, label %3891, label %3897

3891:                                             ; preds = %3882
  %3892 = load ptr, ptr @shiftset.14, align 8, !tbaa !11
  %3893 = load ptr, ptr @LA, align 8, !tbaa !11
  %3894 = mul nsw i32 %3793, %3873
  %3895 = sext i32 %3894 to i64
  %3896 = getelementptr inbounds i32, ptr %3893, i64 %3895
  br label %3901

3897:                                             ; preds = %3901, %3882
  %3898 = load i32, ptr @ntokens, align 4, !tbaa !7
  %3899 = icmp sgt i32 %3898, 0
  %3900 = sext i16 %3886 to i64
  br i1 %3899, label %3912, label %3943

3901:                                             ; preds = %3901, %3891
  %3902 = phi ptr [ %3905, %3901 ], [ %3896, %3891 ]
  %3903 = phi ptr [ %3910, %3901 ], [ %3888, %3891 ]
  %3904 = phi ptr [ %3907, %3901 ], [ %3892, %3891 ]
  %3905 = getelementptr inbounds i32, ptr %3902, i64 1
  %3906 = load i32, ptr %3902, align 4, !tbaa !7
  %3907 = getelementptr inbounds i32, ptr %3904, i64 1
  %3908 = load i32, ptr %3904, align 4, !tbaa !7
  %3909 = and i32 %3908, %3906
  %3910 = getelementptr inbounds i32, ptr %3903, i64 1
  store i32 %3909, ptr %3903, align 4, !tbaa !7
  %3911 = icmp ult ptr %3910, %3890
  br i1 %3911, label %3901, label %3897, !llvm.loop !175

3912:                                             ; preds = %3933, %3897
  %3913 = phi i32 [ %3934, %3933 ], [ %3898, %3897 ]
  %3914 = phi i64 [ %3940, %3933 ], [ 0, %3897 ]
  %3915 = phi i32 [ %3939, %3933 ], [ 1, %3897 ]
  %3916 = phi ptr [ %3938, %3933 ], [ %3888, %3897 ]
  %3917 = load i32, ptr %3916, align 4, !tbaa !7
  %3918 = and i32 %3917, %3915
  %3919 = icmp eq i32 %3918, 0
  br i1 %3919, label %3933, label %3920

3920:                                             ; preds = %3912
  %3921 = load ptr, ptr @foutput, align 8, !tbaa !11
  %3922 = load ptr, ptr @tags, align 8, !tbaa !11
  %3923 = getelementptr inbounds ptr, ptr %3922, i64 %3914
  %3924 = load ptr, ptr %3923, align 8, !tbaa !11
  %3925 = load ptr, ptr @rlhs, align 8, !tbaa !11
  %3926 = getelementptr inbounds i16, ptr %3925, i64 %3900
  %3927 = load i16, ptr %3926, align 2, !tbaa !41
  %3928 = sext i16 %3927 to i64
  %3929 = getelementptr inbounds ptr, ptr %3922, i64 %3928
  %3930 = load ptr, ptr %3929, align 8, !tbaa !11
  %3931 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3921, ptr noundef nonnull @.str.11, ptr noundef %3924, i32 noundef %3887, ptr noundef %3930) #26
  %3932 = load i32, ptr @ntokens, align 4, !tbaa !7
  br label %3933

3933:                                             ; preds = %3920, %3912
  %3934 = phi i32 [ %3932, %3920 ], [ %3913, %3912 ]
  %3935 = shl i32 %3915, 1
  %3936 = icmp eq i32 %3935, 0
  %3937 = zext i1 %3936 to i64
  %3938 = getelementptr inbounds i32, ptr %3916, i64 %3937
  %3939 = tail call i32 @llvm.umax.i32(i32 %3935, i32 1)
  %3940 = add nuw nsw i64 %3914, 1
  %3941 = sext i32 %3934 to i64
  %3942 = icmp slt i64 %3940, %3941
  br i1 %3942, label %3912, label %3943, !llvm.loop !176

3943:                                             ; preds = %3933, %3897
  %3944 = load ptr, ptr @foutput, align 8, !tbaa !11
  %3945 = load ptr, ptr @tags, align 8, !tbaa !11
  %3946 = load ptr, ptr @rlhs, align 8, !tbaa !11
  %3947 = getelementptr inbounds i16, ptr %3946, i64 %3900
  %3948 = load i16, ptr %3947, align 2, !tbaa !41
  %3949 = sext i16 %3948 to i64
  %3950 = getelementptr inbounds ptr, ptr %3945, i64 %3949
  %3951 = load ptr, ptr %3950, align 8, !tbaa !11
  %3952 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3944, ptr noundef nonnull @.str.10.175, i32 noundef %3887, ptr noundef %3951) #26
  br label %4197

3953:                                             ; preds = %3869
  %3954 = icmp sgt i32 %3878, 0
  br i1 %3954, label %3955, label %4197

3955:                                             ; preds = %3953
  %3956 = load ptr, ptr @lookaheadset, align 8, !tbaa !11
  %3957 = sext i32 %3793 to i64
  %3958 = getelementptr inbounds i32, ptr %3956, i64 %3957
  %3959 = icmp sge i16 %3872, %3876
  %3960 = or i1 %3880, %3959
  br i1 %3960, label %4031, label %3961

3961:                                             ; preds = %3955
  %3962 = load ptr, ptr @LA, align 8, !tbaa !11
  %3963 = load ptr, ptr @shiftset.14, align 8, !tbaa !11
  %3964 = load ptr, ptr @LAruleno, align 8
  %3965 = sext i16 %3872 to i64
  %3966 = sext i16 %3876 to i64
  %3967 = load i32, ptr @ntokens, align 4, !tbaa !7
  %3968 = icmp sgt i32 %3967, 0
  br label %3969

3969:                                             ; preds = %4028, %3961
  %3970 = phi i64 [ %3965, %3961 ], [ %4029, %4028 ]
  %3971 = phi i32 [ 0, %3961 ], [ %4018, %4028 ]
  %3972 = phi i32 [ undef, %3961 ], [ %4017, %4028 ]
  %3973 = phi i32 [ -1, %3961 ], [ %4016, %4028 ]
  br i1 %3794, label %3974, label %3977

3974:                                             ; preds = %3969
  %3975 = mul nsw i64 %3970, %3957
  %3976 = getelementptr inbounds i32, ptr %3962, i64 %3975
  br label %3978

3977:                                             ; preds = %3978, %3969
  br i1 %3968, label %3990, label %4007

3978:                                             ; preds = %3978, %3974
  %3979 = phi ptr [ %3982, %3978 ], [ %3976, %3974 ]
  %3980 = phi ptr [ %3988, %3978 ], [ %3956, %3974 ]
  %3981 = phi ptr [ %3984, %3978 ], [ %3963, %3974 ]
  %3982 = getelementptr inbounds i32, ptr %3979, i64 1
  %3983 = load i32, ptr %3979, align 4, !tbaa !7
  %3984 = getelementptr inbounds i32, ptr %3981, i64 1
  %3985 = load i32, ptr %3981, align 4, !tbaa !7
  %3986 = xor i32 %3985, -1
  %3987 = and i32 %3983, %3986
  %3988 = getelementptr inbounds i32, ptr %3980, i64 1
  store i32 %3987, ptr %3980, align 4, !tbaa !7
  %3989 = icmp ult ptr %3988, %3958
  br i1 %3989, label %3978, label %3977, !llvm.loop !177

3990:                                             ; preds = %3990, %3977
  %3991 = phi i32 [ %4005, %3990 ], [ 0, %3977 ]
  %3992 = phi i32 [ %3999, %3990 ], [ 0, %3977 ]
  %3993 = phi i32 [ %4004, %3990 ], [ 1, %3977 ]
  %3994 = phi ptr [ %4003, %3990 ], [ %3956, %3977 ]
  %3995 = load i32, ptr %3994, align 4, !tbaa !7
  %3996 = and i32 %3995, %3993
  %3997 = icmp ne i32 %3996, 0
  %3998 = zext i1 %3997 to i32
  %3999 = add nuw nsw i32 %3992, %3998
  %4000 = shl i32 %3993, 1
  %4001 = icmp eq i32 %4000, 0
  %4002 = zext i1 %4001 to i64
  %4003 = getelementptr inbounds i32, ptr %3994, i64 %4002
  %4004 = tail call i32 @llvm.umax.i32(i32 %4000, i32 1)
  %4005 = add nuw nsw i32 %3991, 1
  %4006 = icmp eq i32 %4005, %3967
  br i1 %4006, label %4007, label %3990, !llvm.loop !178

4007:                                             ; preds = %3990, %3977
  %4008 = phi i32 [ 0, %3977 ], [ %3999, %3990 ]
  %4009 = icmp sgt i32 %4008, %3971
  br i1 %4009, label %4010, label %4015

4010:                                             ; preds = %4007
  %4011 = getelementptr inbounds i16, ptr %3964, i64 %3970
  %4012 = load i16, ptr %4011, align 2, !tbaa !41
  %4013 = sext i16 %4012 to i32
  %4014 = trunc i64 %3970 to i32
  br label %4015

4015:                                             ; preds = %4010, %4007
  %4016 = phi i32 [ %4014, %4010 ], [ %3973, %4007 ]
  %4017 = phi i32 [ %4013, %4010 ], [ %3972, %4007 ]
  %4018 = phi i32 [ %4008, %4010 ], [ %3971, %4007 ]
  br i1 %3794, label %4019, label %4028

4019:                                             ; preds = %4019, %4015
  %4020 = phi ptr [ %4022, %4019 ], [ %3956, %4015 ]
  %4021 = phi ptr [ %4024, %4019 ], [ %3963, %4015 ]
  %4022 = getelementptr inbounds i32, ptr %4020, i64 1
  %4023 = load i32, ptr %4020, align 4, !tbaa !7
  %4024 = getelementptr inbounds i32, ptr %4021, i64 1
  %4025 = load i32, ptr %4021, align 4, !tbaa !7
  %4026 = or i32 %4025, %4023
  store i32 %4026, ptr %4021, align 4, !tbaa !7
  %4027 = icmp ult ptr %4022, %3958
  br i1 %4027, label %4019, label %4028, !llvm.loop !179

4028:                                             ; preds = %4019, %4015
  %4029 = add nsw i64 %3970, 1
  %4030 = icmp eq i64 %4029, %3966
  br i1 %4030, label %4031, label %3969, !llvm.loop !180

4031:                                             ; preds = %4028, %3955
  %4032 = phi i32 [ -1, %3955 ], [ %4016, %4028 ]
  %4033 = phi i32 [ undef, %3955 ], [ %4017, %4028 ]
  br i1 %3794, label %4034, label %4037

4034:                                             ; preds = %4031
  %4035 = load ptr, ptr @shiftset.14, align 8, !tbaa !11
  %4036 = shl nuw nsw i64 %3957, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %4035, i8 0, i64 %4036, i1 false), !tbaa !7
  br label %4037

4037:                                             ; preds = %4034, %4031
  br i1 %3803, label %4038, label %4041

4038:                                             ; preds = %4037
  %4039 = load ptr, ptr @shiftset.14, align 8, !tbaa !11
  %4040 = load i32, ptr @ntokens, align 4, !tbaa !7
  br label %4072

4041:                                             ; preds = %4037
  %4042 = getelementptr inbounds %struct.shifts, ptr %3802, i64 0, i32 2
  %4043 = load i16, ptr %4042, align 2, !tbaa !106
  %4044 = icmp sgt i16 %4043, 0
  %4045 = load ptr, ptr @shiftset.14, align 8
  %4046 = load i32, ptr @ntokens, align 4
  br i1 %4044, label %4047, label %4072

4047:                                             ; preds = %4041
  %4048 = zext i16 %4043 to i64
  %4049 = load ptr, ptr @accessing_symbol, align 8
  br label %4050

4050:                                             ; preds = %4069, %4047
  %4051 = phi i64 [ 0, %4047 ], [ %4070, %4069 ]
  %4052 = getelementptr inbounds %struct.shifts, ptr %3802, i64 0, i32 3, i64 %4051
  %4053 = load i16, ptr %4052, align 2, !tbaa !41
  %4054 = icmp eq i16 %4053, 0
  br i1 %4054, label %4069, label %4055

4055:                                             ; preds = %4050
  %4056 = sext i16 %4053 to i64
  %4057 = getelementptr inbounds i16, ptr %4049, i64 %4056
  %4058 = load i16, ptr %4057, align 2, !tbaa !41
  %4059 = sext i16 %4058 to i32
  %4060 = icmp sgt i32 %4046, %4059
  br i1 %4060, label %4061, label %4072

4061:                                             ; preds = %4055
  %4062 = and i32 %4059, 31
  %4063 = shl nuw i32 1, %4062
  %4064 = ashr i32 %4059, 5
  %4065 = sext i32 %4064 to i64
  %4066 = getelementptr inbounds i32, ptr %4045, i64 %4065
  %4067 = load i32, ptr %4066, align 4, !tbaa !7
  %4068 = or i32 %4067, %4063
  store i32 %4068, ptr %4066, align 4, !tbaa !7
  br label %4069

4069:                                             ; preds = %4061, %4050
  %4070 = add nuw nsw i64 %4051, 1
  %4071 = icmp eq i64 %4070, %4048
  br i1 %4071, label %4072, label %4050, !llvm.loop !181

4072:                                             ; preds = %4069, %4055, %4041, %4038
  %4073 = phi i32 [ %4046, %4041 ], [ %4040, %4038 ], [ %4046, %4055 ], [ %4046, %4069 ]
  %4074 = phi ptr [ %4045, %4041 ], [ %4039, %4038 ], [ %4045, %4055 ], [ %4045, %4069 ]
  %4075 = icmp sgt i32 %4073, 0
  br i1 %4075, label %4076, label %4181

4076:                                             ; preds = %4072
  %4077 = load ptr, ptr @LA, align 8, !tbaa !11
  %4078 = mul nsw i32 %3793, %3873
  %4079 = sext i32 %4078 to i64
  %4080 = getelementptr inbounds i32, ptr %4077, i64 %4079
  %4081 = icmp slt i16 %3872, %3876
  %4082 = sext i32 %4032 to i64
  %4083 = sext i16 %3872 to i64
  %4084 = sext i16 %3876 to i64
  br label %4085

4085:                                             ; preds = %4171, %4076
  %4086 = phi i32 [ %4073, %4076 ], [ %4172, %4171 ]
  %4087 = phi i64 [ 0, %4076 ], [ %4178, %4171 ]
  %4088 = phi ptr [ %4080, %4076 ], [ %4177, %4171 ]
  %4089 = phi i32 [ 1, %4076 ], [ %4175, %4171 ]
  br i1 %4081, label %4090, label %4171

4090:                                             ; preds = %4085
  %4091 = load i32, ptr %4074, align 4, !tbaa !7
  %4092 = and i32 %4091, %4089
  %4093 = icmp ne i32 %4092, 0
  %4094 = zext i1 %4093 to i32
  br label %4095

4095:                                             ; preds = %4161, %4090
  %4096 = phi i64 [ %4083, %4090 ], [ %4167, %4161 ]
  %4097 = phi i32 [ 0, %4090 ], [ %4163, %4161 ]
  %4098 = phi i32 [ %4094, %4090 ], [ %4162, %4161 ]
  %4099 = phi ptr [ %4088, %4090 ], [ %4166, %4161 ]
  %4100 = load i32, ptr %4099, align 4, !tbaa !7
  %4101 = and i32 %4100, %4089
  %4102 = icmp eq i32 %4101, 0
  br i1 %4102, label %4161, label %4103

4103:                                             ; preds = %4095
  %4104 = icmp eq i32 %4098, 0
  br i1 %4104, label %4105, label %4124

4105:                                             ; preds = %4103
  %4106 = icmp eq i64 %4096, %4082
  br i1 %4106, label %4161, label %4107

4107:                                             ; preds = %4105
  %4108 = load ptr, ptr @LAruleno, align 8, !tbaa !11
  %4109 = getelementptr inbounds i16, ptr %4108, i64 %4096
  %4110 = load i16, ptr %4109, align 2, !tbaa !41
  %4111 = sext i16 %4110 to i32
  %4112 = load ptr, ptr @foutput, align 8, !tbaa !11
  %4113 = load ptr, ptr @tags, align 8, !tbaa !11
  %4114 = getelementptr inbounds ptr, ptr %4113, i64 %4087
  %4115 = load ptr, ptr %4114, align 8, !tbaa !11
  %4116 = load ptr, ptr @rlhs, align 8, !tbaa !11
  %4117 = sext i16 %4110 to i64
  %4118 = getelementptr inbounds i16, ptr %4116, i64 %4117
  %4119 = load i16, ptr %4118, align 2, !tbaa !41
  %4120 = sext i16 %4119 to i64
  %4121 = getelementptr inbounds ptr, ptr %4113, i64 %4120
  %4122 = load ptr, ptr %4121, align 8, !tbaa !11
  %4123 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4112, ptr noundef nonnull @.str.13, ptr noundef %4115, i32 noundef %4111, ptr noundef %4122) #26
  br label %4161

4124:                                             ; preds = %4103
  %4125 = icmp eq i32 %4097, 0
  %4126 = load ptr, ptr @LAruleno, align 8, !tbaa !11
  br i1 %4125, label %4144, label %4127

4127:                                             ; preds = %4124
  %4128 = getelementptr inbounds i16, ptr %4126, i64 %4082
  %4129 = load i16, ptr %4128, align 2, !tbaa !41
  %4130 = sext i16 %4129 to i32
  %4131 = load ptr, ptr @foutput, align 8, !tbaa !11
  %4132 = load ptr, ptr @tags, align 8, !tbaa !11
  %4133 = getelementptr inbounds ptr, ptr %4132, i64 %4087
  %4134 = load ptr, ptr %4133, align 8, !tbaa !11
  %4135 = load ptr, ptr @rlhs, align 8, !tbaa !11
  %4136 = sext i16 %4129 to i64
  %4137 = getelementptr inbounds i16, ptr %4135, i64 %4136
  %4138 = load i16, ptr %4137, align 2, !tbaa !41
  %4139 = sext i16 %4138 to i64
  %4140 = getelementptr inbounds ptr, ptr %4132, i64 %4139
  %4141 = load ptr, ptr %4140, align 8, !tbaa !11
  %4142 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4131, ptr noundef nonnull @.str.13, ptr noundef %4134, i32 noundef %4130, ptr noundef %4141) #26
  %4143 = load ptr, ptr @LAruleno, align 8, !tbaa !11
  br label %4144

4144:                                             ; preds = %4127, %4124
  %4145 = phi ptr [ %4143, %4127 ], [ %4126, %4124 ]
  %4146 = getelementptr inbounds i16, ptr %4145, i64 %4096
  %4147 = load i16, ptr %4146, align 2, !tbaa !41
  %4148 = sext i16 %4147 to i32
  %4149 = load ptr, ptr @foutput, align 8, !tbaa !11
  %4150 = load ptr, ptr @tags, align 8, !tbaa !11
  %4151 = getelementptr inbounds ptr, ptr %4150, i64 %4087
  %4152 = load ptr, ptr %4151, align 8, !tbaa !11
  %4153 = load ptr, ptr @rlhs, align 8, !tbaa !11
  %4154 = sext i16 %4147 to i64
  %4155 = getelementptr inbounds i16, ptr %4153, i64 %4154
  %4156 = load i16, ptr %4155, align 2, !tbaa !41
  %4157 = sext i16 %4156 to i64
  %4158 = getelementptr inbounds ptr, ptr %4150, i64 %4157
  %4159 = load ptr, ptr %4158, align 8, !tbaa !11
  %4160 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4149, ptr noundef nonnull @.str.11, ptr noundef %4152, i32 noundef %4148, ptr noundef %4159) #26
  br label %4161

4161:                                             ; preds = %4144, %4107, %4105, %4095
  %4162 = phi i32 [ 1, %4144 ], [ %4098, %4095 ], [ 1, %4105 ], [ 1, %4107 ]
  %4163 = phi i32 [ 0, %4144 ], [ %4097, %4095 ], [ 1, %4105 ], [ %4097, %4107 ]
  %4164 = load i32, ptr @tokensetsize, align 4, !tbaa !7
  %4165 = sext i32 %4164 to i64
  %4166 = getelementptr inbounds i32, ptr %4099, i64 %4165
  %4167 = add nsw i64 %4096, 1
  %4168 = icmp eq i64 %4167, %4084
  br i1 %4168, label %4169, label %4095, !llvm.loop !182

4169:                                             ; preds = %4161
  %4170 = load i32, ptr @ntokens, align 4, !tbaa !7
  br label %4171

4171:                                             ; preds = %4169, %4085
  %4172 = phi i32 [ %4170, %4169 ], [ %4086, %4085 ]
  %4173 = shl i32 %4089, 1
  %4174 = icmp eq i32 %4173, 0
  %4175 = tail call i32 @llvm.umax.i32(i32 %4173, i32 1)
  %4176 = zext i1 %4174 to i64
  %4177 = getelementptr inbounds i32, ptr %4088, i64 %4176
  %4178 = add nuw nsw i64 %4087, 1
  %4179 = sext i32 %4172 to i64
  %4180 = icmp slt i64 %4178, %4179
  br i1 %4180, label %4085, label %4181, !llvm.loop !183

4181:                                             ; preds = %4171, %4072
  %4182 = icmp sgt i32 %4032, -1
  br i1 %4182, label %4183, label %4194

4183:                                             ; preds = %4181
  %4184 = load ptr, ptr @foutput, align 8, !tbaa !11
  %4185 = load ptr, ptr @tags, align 8, !tbaa !11
  %4186 = load ptr, ptr @rlhs, align 8, !tbaa !11
  %4187 = sext i32 %4033 to i64
  %4188 = getelementptr inbounds i16, ptr %4186, i64 %4187
  %4189 = load i16, ptr %4188, align 2, !tbaa !41
  %4190 = sext i16 %4189 to i64
  %4191 = getelementptr inbounds ptr, ptr %4185, i64 %4190
  %4192 = load ptr, ptr %4191, align 8, !tbaa !11
  %4193 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4184, ptr noundef nonnull @.str.14, i32 noundef %4033, ptr noundef %4192) #26
  br label %4194

4194:                                             ; preds = %4183, %4181
  %4195 = load ptr, ptr @foutput, align 8, !tbaa !11
  %4196 = tail call i32 @putc(i32 noundef 10, ptr noundef %4195) #26
  br label %4197

4197:                                             ; preds = %4194, %3953, %3943, %3791, %3777
  %4198 = icmp slt i32 %3771, %3770
  br i1 %4198, label %4199, label %4225

4199:                                             ; preds = %4197
  %4200 = zext i32 %3771 to i64
  %4201 = zext i32 %3770 to i64
  br label %4202

4202:                                             ; preds = %4219, %4199
  %4203 = phi i64 [ %4200, %4199 ], [ %4220, %4219 ]
  %4204 = getelementptr inbounds %struct.shifts, ptr %3700, i64 0, i32 3, i64 %4203
  %4205 = load i16, ptr %4204, align 2, !tbaa !41
  %4206 = icmp eq i16 %4205, 0
  br i1 %4206, label %4219, label %4207

4207:                                             ; preds = %4202
  %4208 = sext i16 %4205 to i32
  %4209 = load ptr, ptr @accessing_symbol, align 8, !tbaa !11
  %4210 = sext i16 %4205 to i64
  %4211 = getelementptr inbounds i16, ptr %4209, i64 %4210
  %4212 = load i16, ptr %4211, align 2, !tbaa !41
  %4213 = load ptr, ptr @foutput, align 8, !tbaa !11
  %4214 = load ptr, ptr @tags, align 8, !tbaa !11
  %4215 = sext i16 %4212 to i64
  %4216 = getelementptr inbounds ptr, ptr %4214, i64 %4215
  %4217 = load ptr, ptr %4216, align 8, !tbaa !11
  %4218 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4213, ptr noundef nonnull @.str.11.176, ptr noundef %4217, i32 noundef %4208) #26
  br label %4219

4219:                                             ; preds = %4207, %4202
  %4220 = add nuw nsw i64 %4203, 1
  %4221 = icmp eq i64 %4220, %4201
  br i1 %4221, label %4222, label %4202, !llvm.loop !184

4222:                                             ; preds = %4219
  %4223 = load ptr, ptr @foutput, align 8, !tbaa !11
  %4224 = tail call i32 @putc(i32 noundef 10, ptr noundef %4223) #26
  br label %4225

4225:                                             ; preds = %4222, %4197, %3710
  %4226 = add nuw nsw i64 %3611, 1
  %4227 = load i32, ptr @nstates, align 4, !tbaa !7
  %4228 = sext i32 %4227 to i64
  %4229 = icmp slt i64 %4226, %4228
  br i1 %4229, label %3610, label %4259, !llvm.loop !185

4230:                                             ; preds = %3486
  br i1 %3489, label %4231, label %4259

4231:                                             ; preds = %4230
  store i32 0, ptr @src_total, align 4, !tbaa !7
  store i32 0, ptr @rrc_total, align 4, !tbaa !7
  %4232 = icmp sgt i32 %3487, 0
  br i1 %4232, label %4233, label %4258

4233:                                             ; preds = %4231
  %4234 = load ptr, ptr @conflicts, align 8, !tbaa !11
  br label %4235

4235:                                             ; preds = %4252, %4233
  %4236 = phi i32 [ %3487, %4233 ], [ %4253, %4252 ]
  %4237 = phi ptr [ %4234, %4233 ], [ %4254, %4252 ]
  %4238 = phi i64 [ 0, %4233 ], [ %4255, %4252 ]
  %4239 = getelementptr inbounds i8, ptr %4237, i64 %4238
  %4240 = load i8, ptr %4239, align 1, !tbaa !13
  %4241 = icmp eq i8 %4240, 0
  br i1 %4241, label %4252, label %4242

4242:                                             ; preds = %4235
  %4243 = trunc i64 %4238 to i32
  tail call fastcc void @count_sr_conflicts(i32 noundef %4243) #26
  tail call fastcc void @count_rr_conflicts(i32 noundef %4243) #26
  %4244 = load i32, ptr @src_count, align 4, !tbaa !7
  %4245 = load i32, ptr @src_total, align 4, !tbaa !7
  %4246 = add nsw i32 %4245, %4244
  store i32 %4246, ptr @src_total, align 4, !tbaa !7
  %4247 = load i32, ptr @rrc_count, align 4, !tbaa !7
  %4248 = load i32, ptr @rrc_total, align 4, !tbaa !7
  %4249 = add nsw i32 %4248, %4247
  store i32 %4249, ptr @rrc_total, align 4, !tbaa !7
  %4250 = load ptr, ptr @conflicts, align 8, !tbaa !11
  %4251 = load i32, ptr @nstates, align 4, !tbaa !7
  br label %4252

4252:                                             ; preds = %4242, %4235
  %4253 = phi i32 [ %4236, %4235 ], [ %4251, %4242 ]
  %4254 = phi ptr [ %4237, %4235 ], [ %4250, %4242 ]
  %4255 = add nuw nsw i64 %4238, 1
  %4256 = sext i32 %4253 to i64
  %4257 = icmp slt i64 %4255, %4256
  br i1 %4257, label %4235, label %4258, !llvm.loop !186

4258:                                             ; preds = %4252, %4231
  tail call fastcc void @total_conflicts() #26
  br label %4259

4259:                                             ; preds = %4258, %4230, %4225, %3607
  tail call fastcc void @output() #25
  %4260 = load i1, ptr @failure, align 4
  %4261 = zext i1 %4260 to i32
  tail call fastcc void @done(i32 noundef %4261) #25
  unreachable
}

; Function Attrs: noreturn nounwind optsize uwtable
define internal fastcc void @fatal(ptr noundef %0) unnamed_addr #7 {
  %2 = load ptr, ptr @infile, align 8, !tbaa !11
  %3 = icmp eq ptr %2, null
  %4 = load ptr, ptr @stderr, align 8, !tbaa !11
  br i1 %3, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str.125, ptr noundef %0) #28
  br label %10

7:                                                ; preds = %1
  %8 = load i32, ptr @lineno, align 4, !tbaa !7
  %9 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str.1.126, ptr noundef nonnull %2, i32 noundef %8, ptr noundef %0) #28
  br label %10

10:                                               ; preds = %7, %5
  tail call fastcc void @done(i32 noundef 1) #25
  unreachable
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32 noundef) local_unnamed_addr #9

; Function Attrs: nounwind optsize uwtable
define internal fastcc noalias ptr @stringappend(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #10 {
  %4 = load i8, ptr %2, align 1, !tbaa !13
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %13, label %6

6:                                                ; preds = %6, %3
  %7 = phi i32 [ %10, %6 ], [ 0, %3 ]
  %8 = phi ptr [ %9, %6 ], [ %2, %3 ]
  %9 = getelementptr inbounds i8, ptr %8, i64 1
  %10 = add nuw nsw i32 %7, 1
  %11 = load i8, ptr %9, align 1, !tbaa !13
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %6, !llvm.loop !187

13:                                               ; preds = %6, %3
  %14 = phi i32 [ 0, %3 ], [ %10, %6 ]
  %15 = add i32 %1, 1
  %16 = add i32 %15, %14
  %17 = tail call fastcc ptr @mallocate(i32 noundef %16) #25
  %18 = icmp sgt i32 %1, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %13
  %20 = zext i32 %1 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %17, ptr align 1 %0, i64 %20, i1 false), !tbaa !13
  %21 = zext i32 %1 to i64
  %22 = getelementptr i8, ptr %17, i64 %21
  br label %23

23:                                               ; preds = %19, %13
  %24 = phi ptr [ %22, %19 ], [ %17, %13 ]
  br label %25

25:                                               ; preds = %25, %23
  %26 = phi ptr [ %30, %25 ], [ %24, %23 ]
  %27 = phi ptr [ %28, %25 ], [ %2, %23 ]
  %28 = getelementptr inbounds i8, ptr %27, i64 1
  %29 = load i8, ptr %27, align 1, !tbaa !13
  %30 = getelementptr inbounds i8, ptr %26, i64 1
  store i8 %29, ptr %26, align 1, !tbaa !13
  %31 = icmp eq i8 %29, 0
  br i1 %31, label %32, label %25, !llvm.loop !188

32:                                               ; preds = %25
  ret ptr %17
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc noalias ptr @tryopen(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #10 {
  %3 = tail call noalias ptr @fopen(ptr noundef %0, ptr noundef %1) #26
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = load ptr, ptr @stderr, align 8, !tbaa !11
  %7 = tail call i64 @fwrite(ptr nonnull @.str.17, i64 7, i64 1, ptr %6) #30
  tail call void @perror(ptr noundef %0) #28
  tail call void @exit(i32 noundef 2) #31
  unreachable

8:                                                ; preds = %2
  ret ptr %3
}

; Function Attrs: nounwind optsize
declare ptr @mktemp(ptr noundef) local_unnamed_addr #11

; Function Attrs: nounwind optsize uwtable
define internal fastcc noalias ptr @mallocate(i32 noundef %0) unnamed_addr #10 {
  %2 = zext i32 %0 to i64
  %3 = tail call noalias ptr @calloc(i64 noundef %2, i64 noundef 1) #34
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = load ptr, ptr @stderr, align 8, !tbaa !11
  %7 = tail call i64 @fwrite(ptr nonnull @.str.60, i64 24, i64 1, ptr %6) #30
  tail call fastcc void @done(i32 noundef 1) #25
  unreachable

8:                                                ; preds = %1
  ret ptr %3
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc ptr @getsym(ptr nocapture noundef readonly %0) unnamed_addr #10 {
  %2 = load i8, ptr %0, align 1, !tbaa !13
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
  %13 = load i8, ptr %9, align 1, !tbaa !13
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %4, !llvm.loop !189

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
  br i1 %23, label %33, label %24

24:                                               ; preds = %30, %18
  %25 = phi ptr [ %31, %30 ], [ %22, %18 ]
  %26 = getelementptr inbounds %struct.bucket, ptr %25, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !29
  %28 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %27) #26
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %63, label %30

30:                                               ; preds = %24
  %31 = load ptr, ptr %25, align 8, !tbaa !56
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %24, !llvm.loop !190

33:                                               ; preds = %30, %18
  %34 = load i32, ptr @nsyms, align 4, !tbaa !7
  %35 = add nsw i32 %34, 1
  store i32 %35, ptr @nsyms, align 4, !tbaa !7
  %36 = tail call fastcc ptr @mallocate(i32 noundef 48) #25
  %37 = load ptr, ptr @symtab, align 8, !tbaa !11
  %38 = getelementptr inbounds ptr, ptr %37, i64 %19
  %39 = load ptr, ptr %38, align 8, !tbaa !11
  store ptr %39, ptr %36, align 8, !tbaa !56
  %40 = getelementptr inbounds %struct.bucket, ptr %36, i64 0, i32 1
  store ptr null, ptr %40, align 8, !tbaa !191
  %41 = load i8, ptr %0, align 1, !tbaa !13
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %50, label %43

43:                                               ; preds = %43, %33
  %44 = phi i32 [ %46, %43 ], [ 1, %33 ]
  %45 = phi ptr [ %47, %43 ], [ %0, %33 ]
  %46 = add nuw nsw i32 %44, 1
  %47 = getelementptr inbounds i8, ptr %45, i64 1
  %48 = load i8, ptr %47, align 1, !tbaa !13
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %50, label %43, !llvm.loop !192

50:                                               ; preds = %43, %33
  %51 = phi i32 [ 1, %33 ], [ %46, %43 ]
  %52 = tail call fastcc ptr @mallocate(i32 noundef %51) #25
  %53 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %52, ptr noundef nonnull dereferenceable(1) %0) #26
  %54 = getelementptr inbounds %struct.bucket, ptr %36, i64 0, i32 2
  store ptr %52, ptr %54, align 8, !tbaa !29
  %55 = getelementptr inbounds %struct.bucket, ptr %36, i64 0, i32 8
  store i8 0, ptr %55, align 8, !tbaa !20
  %56 = load ptr, ptr @firstsymbol, align 8, !tbaa !11
  %57 = icmp eq ptr %56, null
  %58 = load ptr, ptr @lastsymbol, align 8
  %59 = getelementptr inbounds %struct.bucket, ptr %58, i64 0, i32 1
  %60 = select i1 %57, ptr @firstsymbol, ptr %59
  store ptr %36, ptr %60, align 8, !tbaa !11
  store ptr %36, ptr @lastsymbol, align 8, !tbaa !11
  %61 = load ptr, ptr @symtab, align 8, !tbaa !11
  %62 = getelementptr inbounds ptr, ptr %61, i64 %19
  store ptr %36, ptr %62, align 8, !tbaa !11
  br label %63

63:                                               ; preds = %50, %24
  %64 = phi ptr [ %36, %50 ], [ %25, %24 ]
  ret ptr %64
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @skip_white_space() unnamed_addr #10 {
  %1 = alloca [200 x i8], align 16
  br label %2

2:                                                ; preds = %33, %0
  %3 = load ptr, ptr @finput, align 8, !tbaa !11
  %4 = tail call i32 @getc(ptr noundef %3) #26
  switch i32 %4, label %34 [
    i32 47, label %5
    i32 10, label %30
    i32 32, label %33
    i32 9, label %33
    i32 12, label %33
  ]

5:                                                ; preds = %2
  %6 = load ptr, ptr @finput, align 8, !tbaa !11
  %7 = tail call i32 @getc(ptr noundef %6) #26
  %8 = icmp eq i32 %7, 42
  br i1 %8, label %11, label %9

9:                                                ; preds = %5
  %.lcssa3 = phi i32 [ %7, %5 ]
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %1) #32
  %10 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) @.str.105, i32 noundef %.lcssa3, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #25
  call fastcc void @fatal(ptr noundef nonnull %1) #26
  unreachable

11:                                               ; preds = %5
  %12 = load ptr, ptr @finput, align 8, !tbaa !11
  %13 = tail call i32 @getc(ptr noundef %12) #26
  br label %14

14:                                               ; preds = %27, %11
  %15 = phi i32 [ %13, %11 ], [ %28, %27 ]
  switch i32 %15, label %24 [
    i32 42, label %16
    i32 10, label %21
    i32 -1, label %29
  ]

16:                                               ; preds = %18, %14
  %17 = phi i32 [ %20, %18 ], [ %15, %14 ]
  switch i32 %17, label %27 [
    i32 42, label %18
    i32 47, label %33
  ], !llvm.loop !193

18:                                               ; preds = %16
  %19 = load ptr, ptr @finput, align 8, !tbaa !11
  %20 = tail call i32 @getc(ptr noundef %19) #26
  br label %16, !llvm.loop !194

21:                                               ; preds = %14
  %22 = load i32, ptr @lineno, align 4, !tbaa !7
  %23 = add nsw i32 %22, 1
  store i32 %23, ptr @lineno, align 4, !tbaa !7
  br label %24

24:                                               ; preds = %21, %14
  %25 = load ptr, ptr @finput, align 8, !tbaa !11
  %26 = tail call i32 @getc(ptr noundef %25) #26
  br label %27

27:                                               ; preds = %24, %16
  %28 = phi i32 [ %26, %24 ], [ %17, %16 ]
  br label %14, !llvm.loop !193

29:                                               ; preds = %14
  tail call fastcc void @fatal(ptr noundef nonnull @.str.24.198) #25
  unreachable

30:                                               ; preds = %2
  %31 = load i32, ptr @lineno, align 4, !tbaa !7
  %32 = add nsw i32 %31, 1
  store i32 %32, ptr @lineno, align 4, !tbaa !7
  br label %33

33:                                               ; preds = %30, %16, %2, %2, %2
  br label %2

34:                                               ; preds = %2
  %.lcssa = phi i32 [ %4, %2 ]
  ret i32 %.lcssa
}

; Function Attrs: nofree nounwind optsize uwtable
define internal fastcc i32 @parse_percent_token() unnamed_addr #0 {
  %1 = load ptr, ptr @finput, align 8, !tbaa !11
  %2 = tail call i32 @getc(ptr noundef %1) #26
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
  %10 = tail call ptr @__ctype_b_loc() #33
  %11 = load ptr, ptr %10, align 8, !tbaa !11
  %12 = sext i32 %2 to i64
  %13 = getelementptr inbounds i16, ptr %11, i64 %12
  %14 = load i16, ptr %13, align 2, !tbaa !41
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
  store i8 %22, ptr %18, align 1, !tbaa !13
  br label %24

24:                                               ; preds = %21, %17
  %25 = phi ptr [ %23, %21 ], [ %18, %17 ]
  %26 = load ptr, ptr @finput, align 8, !tbaa !11
  %27 = tail call i32 @getc(ptr noundef %26) #26
  %28 = load ptr, ptr %10, align 8, !tbaa !11
  %29 = sext i32 %27 to i64
  %30 = getelementptr inbounds i16, ptr %28, i64 %29
  %31 = load i16, ptr %30, align 2, !tbaa !41
  %32 = and i16 %31, 1024
  %33 = icmp ne i16 %32, 0
  %34 = icmp eq i32 %27, 95
  %35 = or i1 %34, %33
  br i1 %35, label %17, label %36, !llvm.loop !195

36:                                               ; preds = %24
  %.lcssa1 = phi ptr [ %25, %24 ]
  %.lcssa = phi i32 [ %27, %24 ]
  %37 = load ptr, ptr @finput, align 8, !tbaa !11
  %38 = tail call i32 @ungetc(i32 noundef %.lcssa, ptr noundef %37) #26
  store i8 0, ptr %.lcssa1, align 1, !tbaa !13
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

; Function Attrs: nofree nounwind optsize
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind optsize
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @parse_token_decl(i32 noundef %0, i32 noundef %1) unnamed_addr #10 {
  %3 = alloca [200 x i8], align 16
  %4 = alloca [200 x i8], align 16
  %5 = trunc i32 %0 to i8
  %6 = icmp eq i32 %0, 2
  br label %7

7:                                                ; preds = %30, %2
  %8 = phi ptr [ null, %2 ], [ %31, %30 ]
  %9 = phi i32 [ 0, %2 ], [ %.lcssa4, %30 ]
  %10 = icmp eq ptr %8, null
  br label %11

11:                                               ; preds = %20, %7
  %12 = phi i32 [ %9, %7 ], [ %21, %20 ]
  %13 = tail call fastcc i32 @skip_white_space() #25
  %14 = load ptr, ptr @finput, align 8, !tbaa !11
  %15 = tail call i32 @ungetc(i32 noundef %13, ptr noundef %14) #26
  %16 = icmp eq i32 %15, 37
  br i1 %16, label %17, label %18

17:                                               ; preds = %11
  ret void

18:                                               ; preds = %11
  %19 = tail call fastcc i32 @lex() #25, !range !27
  switch i32 %19, label %62 [
    i32 2, label %20
    i32 21, label %22
    i32 1, label %32
  ]

20:                                               ; preds = %66, %55, %18
  %21 = phi i32 [ %19, %18 ], [ 22, %66 ], [ 1, %55 ]
  br label %11

22:                                               ; preds = %18
  %.lcssa2 = phi i32 [ %19, %18 ]
  %23 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) @token_buffer) #27
  %24 = trunc i64 %23 to i32
  br i1 %10, label %26, label %25

25:                                               ; preds = %22
  tail call void @free(ptr noundef nonnull %8) #25
  br label %26

26:                                               ; preds = %25, %22
  %27 = add nsw i32 %24, 1
  %28 = tail call fastcc ptr @mallocate(i32 noundef %27) #25
  %29 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %28, ptr noundef nonnull dereferenceable(1) @token_buffer) #25
  br label %30

30:                                               ; preds = %50, %26
  %.lcssa4 = phi i32 [ %19, %50 ], [ %.lcssa2, %26 ]
  %31 = phi ptr [ %28, %26 ], [ null, %50 ]
  br label %7

32:                                               ; preds = %18
  %33 = load ptr, ptr @symval, align 8, !tbaa !11
  %34 = getelementptr inbounds %struct.bucket, ptr %33, i64 0, i32 8
  %35 = load i8, ptr %34, align 8, !tbaa !20
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, %1
  br i1 %37, label %38, label %44

38:                                               ; preds = %32
  %.lcssa = phi ptr [ %33, %32 ]
  %39 = getelementptr inbounds %struct.bucket, ptr %.lcssa, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !29
  %41 = ptrtoint ptr %40 to i64
  %42 = trunc i64 %41 to i32
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %4) #32
  %43 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) @.str.11.202, i32 noundef %42, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #25
  call fastcc void @fatal(ptr noundef nonnull %4) #26
  unreachable

44:                                               ; preds = %32
  store i8 %5, ptr %34, align 8, !tbaa !20
  br i1 %6, label %45, label %50

45:                                               ; preds = %44
  %46 = load i32, ptr @nvars, align 4, !tbaa !7
  %47 = add nsw i32 %46, 1
  store i32 %47, ptr @nvars, align 4, !tbaa !7
  %48 = trunc i32 %46 to i16
  %49 = getelementptr inbounds %struct.bucket, ptr %33, i64 0, i32 4
  store i16 %48, ptr %49, align 8, !tbaa !33
  br label %50

50:                                               ; preds = %45, %44
  br i1 %10, label %30, label %51

51:                                               ; preds = %50
  %52 = getelementptr inbounds %struct.bucket, ptr %33, i64 0, i32 3
  %53 = load ptr, ptr %52, align 8, !tbaa !28
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %56

55:                                               ; preds = %51
  store ptr %8, ptr %52, align 8, !tbaa !28
  br label %20

56:                                               ; preds = %51
  %.lcssa1 = phi ptr [ %33, %51 ]
  %57 = getelementptr inbounds %struct.bucket, ptr %.lcssa1, i64 0, i32 2
  %58 = load ptr, ptr %57, align 8, !tbaa !29
  %59 = ptrtoint ptr %58 to i64
  %60 = trunc i64 %59 to i32
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %3) #32
  %61 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) @.str.12.201, i32 noundef %60, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #25
  call fastcc void @fatal(ptr noundef nonnull %3) #26
  unreachable

62:                                               ; preds = %18
  %63 = icmp eq i32 %12, 1
  %64 = icmp eq i32 %19, 22
  %65 = and i1 %63, %64
  br i1 %65, label %66, label %71

66:                                               ; preds = %62
  %67 = load i32, ptr @numval, align 4, !tbaa !7
  %68 = trunc i32 %67 to i16
  %69 = load ptr, ptr @symval, align 8, !tbaa !11
  %70 = getelementptr inbounds %struct.bucket, ptr %69, i64 0, i32 7
  store i16 %68, ptr %70, align 2, !tbaa !45
  store i32 1, ptr @translations, align 4, !tbaa !7
  br label %20

71:                                               ; preds = %62
  tail call fastcc void @fatal(ptr noundef nonnull @.str.13.203) #25
  unreachable
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @lex() unnamed_addr #10 {
  %1 = alloca [200 x i8], align 16
  %2 = load i32, ptr @unlexed, align 4, !tbaa !7
  %3 = icmp sgt i32 %2, -1
  br i1 %3, label %4, label %6

4:                                                ; preds = %0
  %5 = load ptr, ptr @unlexed_symval, align 8, !tbaa !11
  store ptr %5, ptr @symval, align 8, !tbaa !11
  store i32 -1, ptr @unlexed, align 4, !tbaa !7
  br label %167

6:                                                ; preds = %0
  %7 = tail call fastcc i32 @skip_white_space() #26
  switch i32 %7, label %166 [
    i32 -1, label %167
    i32 65, label %8
    i32 66, label %8
    i32 67, label %8
    i32 68, label %8
    i32 69, label %8
    i32 70, label %8
    i32 71, label %8
    i32 72, label %8
    i32 73, label %8
    i32 74, label %8
    i32 75, label %8
    i32 76, label %8
    i32 77, label %8
    i32 78, label %8
    i32 79, label %8
    i32 80, label %8
    i32 81, label %8
    i32 82, label %8
    i32 83, label %8
    i32 84, label %8
    i32 85, label %8
    i32 86, label %8
    i32 87, label %8
    i32 88, label %8
    i32 89, label %8
    i32 90, label %8
    i32 97, label %8
    i32 98, label %8
    i32 99, label %8
    i32 100, label %8
    i32 101, label %8
    i32 102, label %8
    i32 103, label %8
    i32 104, label %8
    i32 105, label %8
    i32 106, label %8
    i32 107, label %8
    i32 108, label %8
    i32 109, label %8
    i32 110, label %8
    i32 111, label %8
    i32 112, label %8
    i32 113, label %8
    i32 114, label %8
    i32 115, label %8
    i32 116, label %8
    i32 117, label %8
    i32 118, label %8
    i32 119, label %8
    i32 120, label %8
    i32 121, label %8
    i32 122, label %8
    i32 46, label %8
    i32 95, label %8
    i32 48, label %34
    i32 49, label %34
    i32 50, label %34
    i32 51, label %34
    i32 52, label %34
    i32 53, label %34
    i32 54, label %34
    i32 55, label %34
    i32 56, label %34
    i32 57, label %34
    i32 39, label %60
    i32 44, label %136
    i32 58, label %137
    i32 59, label %138
    i32 124, label %139
    i32 123, label %140
    i32 61, label %141
    i32 60, label %151
    i32 37, label %164
  ]

8:                                                ; preds = %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6
  %9 = tail call ptr @__ctype_b_loc() #33
  br label %10

10:                                               ; preds = %26, %8
  %11 = phi i32 [ %7, %8 ], [ %29, %26 ]
  %12 = phi ptr [ @token_buffer, %8 ], [ %27, %26 ]
  %13 = load ptr, ptr %9, align 8, !tbaa !11
  %14 = sext i32 %11 to i64
  %15 = getelementptr inbounds i16, ptr %13, i64 %14
  %16 = load i16, ptr %15, align 2, !tbaa !41
  %17 = freeze i16 %16
  %18 = and i16 %17, 8
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %10
  switch i32 %11, label %30 [
    i32 95, label %21
    i32 46, label %21
  ]

21:                                               ; preds = %20, %20, %10
  %22 = icmp ult ptr %12, getelementptr inbounds ([1025 x i8], ptr @token_buffer, i64 0, i64 1024)
  br i1 %22, label %23, label %26

23:                                               ; preds = %21
  %24 = trunc i32 %11 to i8
  %25 = getelementptr inbounds i8, ptr %12, i64 1
  store i8 %24, ptr %12, align 1, !tbaa !13
  br label %26

26:                                               ; preds = %23, %21
  %27 = phi ptr [ %25, %23 ], [ %12, %21 ]
  %28 = load ptr, ptr @finput, align 8, !tbaa !11
  %29 = tail call i32 @getc(ptr noundef %28) #26
  br label %10, !llvm.loop !196

30:                                               ; preds = %20
  %.lcssa1 = phi i32 [ %11, %20 ]
  %.lcssa = phi ptr [ %12, %20 ]
  store i8 0, ptr %.lcssa, align 1, !tbaa !13
  %31 = load ptr, ptr @finput, align 8, !tbaa !11
  %32 = tail call i32 @ungetc(i32 noundef %.lcssa1, ptr noundef %31) #26
  %33 = tail call fastcc ptr @getsym(ptr noundef nonnull @token_buffer) #25
  store ptr %33, ptr @symval, align 8, !tbaa !11
  br label %167

34:                                               ; preds = %6, %6, %6, %6, %6, %6, %6, %6, %6, %6
  store i32 0, ptr @numval, align 4, !tbaa !7
  %35 = tail call ptr @__ctype_b_loc() #33
  %36 = load ptr, ptr %35, align 8, !tbaa !11
  %37 = zext i32 %7 to i64
  %38 = getelementptr inbounds i16, ptr %36, i64 %37
  %39 = load i16, ptr %38, align 2, !tbaa !41
  %40 = and i16 %39, 2048
  %41 = icmp eq i16 %40, 0
  br i1 %41, label %56, label %42

42:                                               ; preds = %42, %34
  %43 = phi i32 [ %49, %42 ], [ %7, %34 ]
  %44 = load i32, ptr @numval, align 4, !tbaa !7
  %45 = mul nsw i32 %44, 10
  %46 = add i32 %43, -48
  %47 = add i32 %46, %45
  store i32 %47, ptr @numval, align 4, !tbaa !7
  %48 = load ptr, ptr @finput, align 8, !tbaa !11
  %49 = tail call i32 @getc(ptr noundef %48) #26
  %50 = load ptr, ptr %35, align 8, !tbaa !11
  %51 = sext i32 %49 to i64
  %52 = getelementptr inbounds i16, ptr %50, i64 %51
  %53 = load i16, ptr %52, align 2, !tbaa !41
  %54 = and i16 %53, 2048
  %55 = icmp eq i16 %54, 0
  br i1 %55, label %56, label %42, !llvm.loop !197

56:                                               ; preds = %42, %34
  %57 = phi i32 [ %7, %34 ], [ %49, %42 ]
  %58 = load ptr, ptr @finput, align 8, !tbaa !11
  %59 = tail call i32 @ungetc(i32 noundef %57, ptr noundef %58) #26
  br label %167

60:                                               ; preds = %6
  store i32 -1, ptr @translations, align 4, !tbaa !7
  %61 = load ptr, ptr @finput, align 8, !tbaa !11
  %62 = tail call i32 @getc(ptr noundef %61) #26
  %63 = icmp eq i32 %62, 92
  %64 = load ptr, ptr @finput, align 8, !tbaa !11
  %65 = tail call i32 @getc(ptr noundef %64) #26
  br i1 %63, label %66, label %95

66:                                               ; preds = %60
  %67 = and i32 %65, -8
  %68 = icmp eq i32 %67, 48
  br i1 %68, label %69, label %82

69:                                               ; preds = %69, %66
  %70 = phi i32 [ %74, %69 ], [ 0, %66 ]
  %71 = phi i32 [ %76, %69 ], [ %65, %66 ]
  %72 = shl nsw i32 %70, 3
  %73 = add nsw i32 %71, -48
  %74 = add nuw nsw i32 %73, %72
  %75 = load ptr, ptr @finput, align 8, !tbaa !11
  %76 = tail call i32 @getc(ptr noundef %75) #26
  %77 = and i32 %76, -8
  %78 = icmp eq i32 %77, 48
  br i1 %78, label %69, label %79, !llvm.loop !198

79:                                               ; preds = %69
  %.lcssa3 = phi i32 [ %74, %69 ]
  %.lcssa2 = phi i32 [ %76, %69 ]
  %80 = icmp ugt i32 %.lcssa3, 127
  br i1 %80, label %81, label %95

81:                                               ; preds = %79
  tail call fastcc void @fatals(ptr noundef nonnull @.str.2.107, i32 noundef %.lcssa3, i32 noundef 0, i32 noundef 0) #25
  unreachable

82:                                               ; preds = %66
  switch i32 %65, label %90 [
    i32 116, label %91
    i32 110, label %83
    i32 114, label %84
    i32 102, label %85
    i32 98, label %86
    i32 92, label %87
    i32 39, label %88
    i32 34, label %89
  ]

83:                                               ; preds = %82
  br label %91

84:                                               ; preds = %82
  br label %91

85:                                               ; preds = %82
  br label %91

86:                                               ; preds = %82
  br label %91

87:                                               ; preds = %82
  br label %91

88:                                               ; preds = %82
  br label %91

89:                                               ; preds = %82
  br label %91

90:                                               ; preds = %82
  tail call fastcc void @fatals(ptr noundef nonnull @.str.3.108, i32 noundef %65, i32 noundef 0, i32 noundef 0) #25
  unreachable

91:                                               ; preds = %89, %88, %87, %86, %85, %84, %83, %82
  %92 = phi i32 [ 10, %83 ], [ 13, %84 ], [ 12, %85 ], [ 8, %86 ], [ %65, %87 ], [ %65, %88 ], [ %65, %89 ], [ 9, %82 ]
  %93 = load ptr, ptr @finput, align 8, !tbaa !11
  %94 = tail call i32 @getc(ptr noundef %93) #26
  br label %95

95:                                               ; preds = %91, %79, %60
  %96 = phi i32 [ %.lcssa2, %79 ], [ %94, %91 ], [ %65, %60 ]
  %97 = phi i32 [ %.lcssa3, %79 ], [ %92, %91 ], [ %62, %60 ]
  %98 = icmp eq i32 %96, 39
  br i1 %98, label %100, label %99

99:                                               ; preds = %95
  tail call fastcc void @fatal(ptr noundef nonnull @.str.4.109) #25
  unreachable

100:                                              ; preds = %95
  store i8 39, ptr @token_buffer, align 16, !tbaa !13
  switch i32 %97, label %103 [
    i32 92, label %101
    i32 39, label %102
  ]

101:                                              ; preds = %100
  store i8 92, ptr getelementptr inbounds ([1025 x i8], ptr @token_buffer, i64 0, i64 1), align 1, !tbaa !13
  store i8 92, ptr getelementptr inbounds ([1025 x i8], ptr @token_buffer, i64 0, i64 2), align 2, !tbaa !13
  br label %126

102:                                              ; preds = %100
  store i8 92, ptr getelementptr inbounds ([1025 x i8], ptr @token_buffer, i64 0, i64 1), align 1, !tbaa !13
  store i8 39, ptr getelementptr inbounds ([1025 x i8], ptr @token_buffer, i64 0, i64 2), align 2, !tbaa !13
  br label %126

103:                                              ; preds = %100
  %104 = icmp sgt i32 %97, 31
  %105 = icmp ne i32 %97, 127
  %106 = and i1 %104, %105
  br i1 %106, label %107, label %109

107:                                              ; preds = %103
  %108 = trunc i32 %97 to i8
  store i8 %108, ptr getelementptr inbounds ([1025 x i8], ptr @token_buffer, i64 0, i64 1), align 1, !tbaa !13
  br label %126

109:                                              ; preds = %103
  switch i32 %97, label %115 [
    i32 9, label %110
    i32 10, label %111
    i32 13, label %112
    i32 8, label %113
    i32 12, label %114
  ]

110:                                              ; preds = %109
  store i8 92, ptr getelementptr inbounds ([1025 x i8], ptr @token_buffer, i64 0, i64 1), align 1, !tbaa !13
  store i8 116, ptr getelementptr inbounds ([1025 x i8], ptr @token_buffer, i64 0, i64 2), align 2, !tbaa !13
  br label %126

111:                                              ; preds = %109
  store i8 92, ptr getelementptr inbounds ([1025 x i8], ptr @token_buffer, i64 0, i64 1), align 1, !tbaa !13
  store i8 110, ptr getelementptr inbounds ([1025 x i8], ptr @token_buffer, i64 0, i64 2), align 2, !tbaa !13
  br label %126

112:                                              ; preds = %109
  store i8 92, ptr getelementptr inbounds ([1025 x i8], ptr @token_buffer, i64 0, i64 1), align 1, !tbaa !13
  store i8 114, ptr getelementptr inbounds ([1025 x i8], ptr @token_buffer, i64 0, i64 2), align 2, !tbaa !13
  br label %126

113:                                              ; preds = %109
  store i8 92, ptr getelementptr inbounds ([1025 x i8], ptr @token_buffer, i64 0, i64 1), align 1, !tbaa !13
  store i8 98, ptr getelementptr inbounds ([1025 x i8], ptr @token_buffer, i64 0, i64 2), align 2, !tbaa !13
  br label %126

114:                                              ; preds = %109
  store i8 92, ptr getelementptr inbounds ([1025 x i8], ptr @token_buffer, i64 0, i64 1), align 1, !tbaa !13
  store i8 102, ptr getelementptr inbounds ([1025 x i8], ptr @token_buffer, i64 0, i64 2), align 2, !tbaa !13
  br label %126

115:                                              ; preds = %109
  %116 = sdiv i32 %97, 64
  %117 = trunc i32 %116 to i8
  %118 = add i8 %117, 48
  store i8 %118, ptr getelementptr inbounds ([1025 x i8], ptr @token_buffer, i64 0, i64 1), align 1, !tbaa !13
  %119 = sdiv i32 %97, 8
  %120 = trunc i32 %119 to i8
  %121 = and i8 %120, 7
  %122 = or i8 %121, 48
  store i8 %122, ptr getelementptr inbounds ([1025 x i8], ptr @token_buffer, i64 0, i64 2), align 2, !tbaa !13
  %123 = trunc i32 %97 to i8
  %124 = and i8 %123, 7
  %125 = or i8 %124, 48
  store i8 %125, ptr getelementptr inbounds ([1025 x i8], ptr @token_buffer, i64 0, i64 3), align 1, !tbaa !13
  br label %126

126:                                              ; preds = %115, %114, %113, %112, %111, %110, %107, %102, %101
  %127 = phi ptr [ getelementptr inbounds ([1025 x i8], ptr @token_buffer, i64 0, i64 3), %101 ], [ getelementptr inbounds ([1025 x i8], ptr @token_buffer, i64 0, i64 3), %102 ], [ getelementptr inbounds ([1025 x i8], ptr @token_buffer, i64 0, i64 2), %107 ], [ getelementptr inbounds ([1025 x i8], ptr @token_buffer, i64 0, i64 3), %110 ], [ getelementptr inbounds ([1025 x i8], ptr @token_buffer, i64 0, i64 3), %111 ], [ getelementptr inbounds ([1025 x i8], ptr @token_buffer, i64 0, i64 3), %112 ], [ getelementptr inbounds ([1025 x i8], ptr @token_buffer, i64 0, i64 3), %113 ], [ getelementptr inbounds ([1025 x i8], ptr @token_buffer, i64 0, i64 3), %114 ], [ getelementptr inbounds ([1025 x i8], ptr @token_buffer, i64 0, i64 4), %115 ]
  %128 = getelementptr inbounds i8, ptr %127, i64 1
  store i8 39, ptr %127, align 1, !tbaa !13
  store i8 0, ptr %128, align 1, !tbaa !13
  %129 = tail call fastcc ptr @getsym(ptr noundef nonnull @token_buffer) #25
  store ptr %129, ptr @symval, align 8, !tbaa !11
  %130 = getelementptr inbounds %struct.bucket, ptr %129, i64 0, i32 8
  store i8 1, ptr %130, align 8, !tbaa !20
  %131 = getelementptr inbounds %struct.bucket, ptr %129, i64 0, i32 7
  %132 = load i16, ptr %131, align 2, !tbaa !45
  %133 = icmp eq i16 %132, 0
  br i1 %133, label %134, label %167

134:                                              ; preds = %126
  %135 = trunc i32 %97 to i16
  store i16 %135, ptr %131, align 2, !tbaa !45
  br label %167

136:                                              ; preds = %6
  br label %167

137:                                              ; preds = %6
  br label %167

138:                                              ; preds = %6
  br label %167

139:                                              ; preds = %6
  br label %167

140:                                              ; preds = %6
  br label %167

141:                                              ; preds = %147, %6
  %142 = load ptr, ptr @finput, align 8, !tbaa !11
  %143 = tail call i32 @getc(ptr noundef %142) #26
  switch i32 %143, label %148 [
    i32 10, label %144
    i32 32, label %147
    i32 9, label %147
    i32 123, label %167
  ]

144:                                              ; preds = %141
  %145 = load i32, ptr @lineno, align 4, !tbaa !7
  %146 = add nsw i32 %145, 1
  store i32 %146, ptr @lineno, align 4, !tbaa !7
  br label %147

147:                                              ; preds = %144, %141, %141
  br label %141

148:                                              ; preds = %141
  %.lcssa4 = phi i32 [ %143, %141 ]
  %149 = load ptr, ptr @finput, align 8, !tbaa !11
  %150 = tail call i32 @ungetc(i32 noundef %.lcssa4, ptr noundef %149) #26
  br label %167

151:                                              ; preds = %160, %6
  %152 = phi ptr [ %162, %160 ], [ @token_buffer, %6 ]
  %153 = load ptr, ptr @finput, align 8, !tbaa !11
  %154 = tail call i32 @getc(ptr noundef %153) #26
  switch i32 %154, label %156 [
    i32 62, label %163
    i32 -1, label %155
    i32 10, label %155
  ]

155:                                              ; preds = %151, %151
  tail call fastcc void @fatal(ptr noundef nonnull @.str.5.110) #25
  unreachable

156:                                              ; preds = %151
  %157 = icmp ult ptr %152, getelementptr inbounds ([1025 x i8], ptr @token_buffer, i64 0, i64 1023)
  br i1 %157, label %160, label %158

158:                                              ; preds = %156
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %1) #32
  %159 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) @.str.6.111, i32 noundef 1023, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #25
  call fastcc void @fatal(ptr noundef nonnull %1) #26
  unreachable

160:                                              ; preds = %156
  %161 = trunc i32 %154 to i8
  %162 = getelementptr inbounds i8, ptr %152, i64 1
  store i8 %161, ptr %152, align 1, !tbaa !13
  br label %151, !llvm.loop !199

163:                                              ; preds = %151
  %.lcssa5 = phi ptr [ %152, %151 ]
  store i8 0, ptr %.lcssa5, align 1, !tbaa !13
  br label %167

164:                                              ; preds = %6
  %165 = tail call fastcc i32 @parse_percent_token() #26, !range !23
  br label %167

166:                                              ; preds = %6
  br label %167

167:                                              ; preds = %166, %164, %163, %148, %141, %140, %139, %138, %137, %136, %134, %126, %56, %30, %6, %4
  %168 = phi i32 [ %2, %4 ], [ 24, %166 ], [ %165, %164 ], [ 21, %163 ], [ 24, %148 ], [ 6, %140 ], [ 5, %139 ], [ 4, %138 ], [ 3, %137 ], [ 2, %136 ], [ 22, %56 ], [ 1, %30 ], [ 0, %6 ], [ 1, %134 ], [ 1, %126 ], [ 6, %141 ]
  ret i32 %168
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #12

; Function Attrs: nofree nounwind optsize
declare noundef i32 @ungetc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #13

; Function Attrs: nofree nounwind optsize
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @parse_start_decl() unnamed_addr #10 {
  %1 = load i1, ptr @start_flag, align 4
  br i1 %1, label %2, label %3

2:                                                ; preds = %0
  tail call fastcc void @fatal(ptr noundef nonnull @.str.14.193) #25
  unreachable

3:                                                ; preds = %0
  store i1 true, ptr @start_flag, align 4
  %4 = tail call fastcc i32 @lex() #25, !range !27
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call fastcc void @fatal(ptr noundef nonnull @.str.15.194) #25
  unreachable

7:                                                ; preds = %3
  %8 = load ptr, ptr @symval, align 8, !tbaa !11
  store ptr %8, ptr @startval, align 8, !tbaa !11
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @parse_union_decl() unnamed_addr #10 {
  %1 = load i1, ptr @typed, align 4
  br i1 %1, label %2, label %3

2:                                                ; preds = %0
  tail call fastcc void @fatal(ptr noundef nonnull @.str.20.195) #25
  unreachable

3:                                                ; preds = %0
  store i1 true, ptr @typed, align 4
  %4 = load i1, ptr @nolinesflag, align 4
  %5 = load ptr, ptr @fattrs, align 8, !tbaa !11
  br i1 %4, label %14, label %6

6:                                                ; preds = %3
  %7 = load i32, ptr @lineno, align 4, !tbaa !7
  %8 = load ptr, ptr @infile, align 8, !tbaa !11
  %9 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %8, i32 noundef 47) #27
  %10 = icmp eq ptr %9, null
  %11 = getelementptr inbounds i8, ptr %9, i64 1
  %12 = select i1 %10, ptr %8, ptr %11
  %13 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef nonnull @.str.21.196, i32 noundef %7, ptr noundef %12) #26
  br label %16

14:                                               ; preds = %3
  %15 = tail call i32 @fputc(i32 10, ptr %5)
  br label %16

16:                                               ; preds = %14, %6
  %17 = load ptr, ptr @fattrs, align 8, !tbaa !11
  %18 = tail call i64 @fwrite(ptr nonnull @.str.23.197, i64 13, i64 1, ptr %17)
  %19 = load ptr, ptr @fdefines, align 8, !tbaa !11
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %16
  %22 = tail call i64 @fwrite(ptr nonnull @.str.23.197, i64 13, i64 1, ptr nonnull %19)
  br label %23

23:                                               ; preds = %21, %16
  %24 = load ptr, ptr @finput, align 8, !tbaa !11
  %25 = tail call i32 @getc(ptr noundef %24) #26
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %104, label %27

27:                                               ; preds = %99, %23
  %28 = phi i32 [ %100, %99 ], [ 0, %23 ]
  %29 = phi i32 [ %102, %99 ], [ %25, %23 ]
  %30 = load ptr, ptr @fattrs, align 8, !tbaa !11
  %31 = tail call i32 @putc(i32 noundef %29, ptr noundef %30) #26
  %32 = load ptr, ptr @fdefines, align 8, !tbaa !11
  %33 = icmp eq ptr %32, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %27
  %35 = tail call i32 @putc(i32 noundef %29, ptr noundef nonnull %32) #26
  br label %36

36:                                               ; preds = %34, %27
  switch i32 %29, label %99 [
    i32 10, label %37
    i32 47, label %40
    i32 123, label %81
    i32 125, label %83
  ]

37:                                               ; preds = %36
  %38 = load i32, ptr @lineno, align 4, !tbaa !7
  %39 = add nsw i32 %38, 1
  store i32 %39, ptr @lineno, align 4, !tbaa !7
  br label %99

40:                                               ; preds = %36
  %41 = load ptr, ptr @finput, align 8, !tbaa !11
  %42 = tail call i32 @getc(ptr noundef %41) #26
  %43 = icmp eq i32 %42, 42
  br i1 %43, label %47, label %44

44:                                               ; preds = %40
  %45 = load ptr, ptr @finput, align 8, !tbaa !11
  %46 = tail call i32 @ungetc(i32 noundef %42, ptr noundef %45) #26
  br label %99

47:                                               ; preds = %40
  %48 = load ptr, ptr @fattrs, align 8, !tbaa !11
  %49 = tail call i32 @putc(i32 noundef 42, ptr noundef %48) #26
  %50 = load ptr, ptr @fdefines, align 8, !tbaa !11
  %51 = icmp eq ptr %50, null
  br i1 %51, label %54, label %52

52:                                               ; preds = %47
  %53 = tail call i32 @putc(i32 noundef 42, ptr noundef nonnull %50) #26
  br label %54

54:                                               ; preds = %52, %47
  %55 = load ptr, ptr @finput, align 8, !tbaa !11
  %56 = tail call i32 @getc(ptr noundef %55) #26
  br label %57

57:                                               ; preds = %68, %54
  %58 = phi i32 [ %56, %54 ], [ %71, %68 ]
  %59 = icmp eq i32 %58, -1
  br i1 %59, label %60, label %61

60:                                               ; preds = %57
  tail call fastcc void @fatal(ptr noundef nonnull @.str.24.198) #25
  unreachable

61:                                               ; preds = %57
  %62 = load ptr, ptr @fattrs, align 8, !tbaa !11
  %63 = tail call i32 @putc(i32 noundef %58, ptr noundef %62) #26
  %64 = load ptr, ptr @fdefines, align 8, !tbaa !11
  %65 = icmp eq ptr %64, null
  br i1 %65, label %68, label %66

66:                                               ; preds = %61
  %67 = tail call i32 @putc(i32 noundef %58, ptr noundef nonnull %64) #26
  br label %68

68:                                               ; preds = %66, %61
  %69 = icmp eq i32 %58, 42
  %70 = load ptr, ptr @finput, align 8, !tbaa !11
  %71 = tail call i32 @getc(ptr noundef %70) #26
  %72 = icmp eq i32 %71, 47
  %73 = and i1 %69, %72
  br i1 %73, label %74, label %57, !llvm.loop !200

74:                                               ; preds = %68
  %75 = load ptr, ptr @fattrs, align 8, !tbaa !11
  %76 = tail call i32 @putc(i32 noundef 47, ptr noundef %75) #26
  %77 = load ptr, ptr @fdefines, align 8, !tbaa !11
  %78 = icmp eq ptr %77, null
  br i1 %78, label %99, label %79

79:                                               ; preds = %74
  %80 = tail call i32 @putc(i32 noundef 47, ptr noundef nonnull %77) #26
  br label %99

81:                                               ; preds = %36
  %82 = add nsw i32 %28, 1
  br label %99

83:                                               ; preds = %36
  %84 = add nsw i32 %28, -1
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %99

86:                                               ; preds = %83
  %87 = load ptr, ptr @fattrs, align 8, !tbaa !11
  %88 = tail call i64 @fwrite(ptr nonnull @.str.25.199, i64 10, i64 1, ptr %87)
  %89 = load ptr, ptr @fdefines, align 8, !tbaa !11
  %90 = icmp eq ptr %89, null
  br i1 %90, label %93, label %91

91:                                               ; preds = %86
  %92 = tail call i64 @fwrite(ptr nonnull @.str.25.199, i64 10, i64 1, ptr nonnull %89)
  br label %93

93:                                               ; preds = %91, %86
  %94 = tail call fastcc i32 @skip_white_space() #25
  %95 = icmp eq i32 %94, 59
  br i1 %95, label %104, label %96

96:                                               ; preds = %93
  %97 = load ptr, ptr @finput, align 8, !tbaa !11
  %98 = tail call i32 @ungetc(i32 noundef %94, ptr noundef %97) #26
  br label %104

99:                                               ; preds = %83, %81, %79, %74, %44, %37, %36
  %100 = phi i32 [ %28, %36 ], [ %84, %83 ], [ %82, %81 ], [ %28, %44 ], [ %28, %37 ], [ %28, %79 ], [ %28, %74 ]
  %101 = load ptr, ptr @finput, align 8, !tbaa !11
  %102 = tail call i32 @getc(ptr noundef %101) #26
  %103 = icmp eq i32 %102, -1
  br i1 %103, label %104, label %27, !llvm.loop !201

104:                                              ; preds = %99, %96, %93, %23
  ret void
}

; Function Attrs: nofree nounwind optsize uwtable
define internal fastcc void @parse_expect_decl() unnamed_addr #0 {
  %1 = alloca [20 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %1) #32
  br label %2

2:                                                ; preds = %5, %0
  %3 = load ptr, ptr @finput, align 8, !tbaa !11
  %4 = tail call i32 @getc(ptr noundef %3) #26
  switch i32 %4, label %6 [
    i32 32, label %5
    i32 9, label %5
  ]

5:                                                ; preds = %2, %2
  br label %2, !llvm.loop !202

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
  store i8 %14, ptr %17, align 1, !tbaa !13
  br label %18

18:                                               ; preds = %13, %9
  %19 = phi i32 [ %15, %13 ], [ %10, %9 ]
  %20 = load ptr, ptr @finput, align 8, !tbaa !11
  %21 = tail call i32 @getc(ptr noundef %20) #26
  %22 = add i32 %21, -48
  %23 = icmp ult i32 %22, 10
  br i1 %23, label %9, label %24, !llvm.loop !203

24:                                               ; preds = %18, %6
  %25 = phi i32 [ %.lcssa, %6 ], [ %21, %18 ]
  %26 = load ptr, ptr @finput, align 8, !tbaa !11
  %27 = tail call i32 @ungetc(i32 noundef %25, ptr noundef %26) #26
  %28 = call i32 @atoi(ptr nocapture noundef nonnull %1) #27
  store i32 %28, ptr @expected_conflicts, align 4, !tbaa !7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %1) #32
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @parse_assoc_decl(i32 noundef %0) unnamed_addr #10 {
  %2 = alloca [200 x i8], align 16
  %3 = alloca [200 x i8], align 16
  %4 = load i32, ptr @lastprec, align 4, !tbaa !7
  %5 = add nsw i32 %4, 1
  store i32 %5, ptr @lastprec, align 4, !tbaa !7
  %6 = trunc i32 %0 to i16
  br label %7

7:                                                ; preds = %25, %1
  %8 = phi i32 [ 0, %1 ], [ %.lcssa4, %25 ]
  %9 = phi ptr [ null, %1 ], [ %26, %25 ]
  %10 = icmp eq ptr %9, null
  br label %11

11:                                               ; preds = %61, %7
  %12 = phi i32 [ %8, %7 ], [ %18, %61 ]
  %13 = tail call fastcc i32 @skip_white_space() #25
  %14 = load ptr, ptr @finput, align 8, !tbaa !11
  %15 = tail call i32 @ungetc(i32 noundef %13, ptr noundef %14) #26
  %16 = icmp eq i32 %15, 37
  br i1 %16, label %64, label %17

17:                                               ; preds = %11
  %18 = tail call fastcc i32 @lex() #25, !range !27
  switch i32 %18, label %63 [
    i32 21, label %19
    i32 2, label %61
    i32 1, label %27
    i32 22, label %54
    i32 4, label %64
  ]

19:                                               ; preds = %17
  %.lcssa1 = phi i32 [ %18, %17 ]
  %20 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) @token_buffer) #27
  %21 = trunc i64 %20 to i32
  %22 = add nsw i32 %21, 1
  %23 = tail call fastcc ptr @mallocate(i32 noundef %22) #25
  %24 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %23, ptr noundef nonnull dereferenceable(1) @token_buffer) #25
  br label %25

25:                                               ; preds = %42, %19
  %.lcssa4 = phi i32 [ %18, %42 ], [ %.lcssa1, %19 ]
  %26 = phi ptr [ %23, %19 ], [ null, %42 ]
  br label %7

27:                                               ; preds = %17
  %28 = load i32, ptr @lastprec, align 4, !tbaa !7
  %29 = trunc i32 %28 to i16
  %30 = load ptr, ptr @symval, align 8, !tbaa !11
  %31 = getelementptr inbounds %struct.bucket, ptr %30, i64 0, i32 5
  store i16 %29, ptr %31, align 2, !tbaa !46
  %32 = getelementptr inbounds %struct.bucket, ptr %30, i64 0, i32 6
  store i16 %6, ptr %32, align 4, !tbaa !47
  %33 = getelementptr inbounds %struct.bucket, ptr %30, i64 0, i32 8
  %34 = load i8, ptr %33, align 8, !tbaa !20
  %35 = icmp eq i8 %34, 2
  br i1 %35, label %36, label %42

36:                                               ; preds = %27
  %.lcssa6 = phi ptr [ %30, %27 ]
  %37 = getelementptr inbounds %struct.bucket, ptr %.lcssa6, i64 0, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !29
  %39 = ptrtoint ptr %38 to i64
  %40 = trunc i64 %39 to i32
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %3) #32
  %41 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) @.str.11.202, i32 noundef %40, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #25
  call fastcc void @fatal(ptr noundef nonnull %3) #26
  unreachable

42:                                               ; preds = %27
  store i8 1, ptr %33, align 8, !tbaa !20
  br i1 %10, label %25, label %43

43:                                               ; preds = %42
  %44 = getelementptr inbounds %struct.bucket, ptr %30, i64 0, i32 3
  %45 = load ptr, ptr %44, align 8, !tbaa !28
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  store ptr %9, ptr %44, align 8, !tbaa !28
  br label %61

48:                                               ; preds = %43
  %.lcssa7 = phi ptr [ %30, %43 ]
  %49 = getelementptr inbounds %struct.bucket, ptr %.lcssa7, i64 0, i32 2
  %50 = load ptr, ptr %49, align 8, !tbaa !29
  %51 = ptrtoint ptr %50 to i64
  %52 = trunc i64 %51 to i32
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %2) #32
  %53 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) @.str.12.201, i32 noundef %52, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #25
  call fastcc void @fatal(ptr noundef nonnull %2) #26
  unreachable

54:                                               ; preds = %17
  %55 = icmp eq i32 %12, 1
  br i1 %55, label %56, label %62

56:                                               ; preds = %54
  %57 = load i32, ptr @numval, align 4, !tbaa !7
  %58 = trunc i32 %57 to i16
  %59 = load ptr, ptr @symval, align 8, !tbaa !11
  %60 = getelementptr inbounds %struct.bucket, ptr %59, i64 0, i32 7
  store i16 %58, ptr %60, align 2, !tbaa !45
  store i32 1, ptr @translations, align 4, !tbaa !7
  br label %61

61:                                               ; preds = %56, %47, %17
  br label %11

62:                                               ; preds = %54
  tail call fastcc void @fatal(ptr noundef nonnull @.str.18.229) #25
  unreachable

63:                                               ; preds = %17
  tail call fastcc void @fatal(ptr noundef nonnull @.str.19.230) #25
  unreachable

64:                                               ; preds = %17, %11
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind optsize
declare void @rewind(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @record_rule_line() unnamed_addr #10 {
  %1 = load i32, ptr @nrules, align 4, !tbaa !7
  %2 = load i32, ptr @rline_allocated, align 4, !tbaa !7
  %3 = icmp slt i32 %1, %2
  %4 = load ptr, ptr @rline, align 8, !tbaa !11
  br i1 %3, label %14, label %5

5:                                                ; preds = %0
  %6 = shl nsw i32 %1, 1
  store i32 %6, ptr @rline_allocated, align 4, !tbaa !7
  %7 = sext i32 %6 to i64
  %8 = shl nsw i64 %7, 1
  %9 = tail call ptr @realloc(ptr noundef %4, i64 noundef %8) #35
  store ptr %9, ptr @rline, align 8, !tbaa !11
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %5
  %12 = load ptr, ptr @stderr, align 8, !tbaa !11
  %13 = tail call i64 @fwrite(ptr nonnull @.str.60, i64 24, i64 1, ptr %12) #30
  tail call fastcc void @done(i32 noundef 1) #25
  unreachable

14:                                               ; preds = %5, %0
  %15 = phi ptr [ %9, %5 ], [ %4, %0 ]
  %16 = load i32, ptr @lineno, align 4, !tbaa !7
  %17 = trunc i32 %16 to i16
  %18 = sext i32 %1 to i64
  %19 = getelementptr inbounds i16, ptr %15, i64 %18
  store i16 %17, ptr %19, align 2, !tbaa !41
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @copy_action(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #10 {
  %3 = alloca [200 x i8], align 16
  %4 = load i1, ptr @semantic_parser, align 4
  %5 = select i1 %4, i32 0, i32 %1
  %6 = load ptr, ptr @faction, align 8, !tbaa !11
  %7 = load i32, ptr @nrules, align 4, !tbaa !7
  %8 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef nonnull @.str.35.204, i32 noundef %7) #26
  %9 = load i1, ptr @nolinesflag, align 4
  br i1 %9, label %19, label %10

10:                                               ; preds = %2
  %11 = load ptr, ptr @faction, align 8, !tbaa !11
  %12 = load i32, ptr @lineno, align 4, !tbaa !7
  %13 = load ptr, ptr @infile, align 8, !tbaa !11
  %14 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %13, i32 noundef 47) #27
  %15 = icmp eq ptr %14, null
  %16 = getelementptr inbounds i8, ptr %14, i64 1
  %17 = select i1 %15, ptr %13, ptr %16
  %18 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %11, ptr noundef nonnull @.str.7.205, i32 noundef %12, ptr noundef %17) #26
  br label %19

19:                                               ; preds = %10, %2
  %20 = load ptr, ptr @faction, align 8, !tbaa !11
  %21 = tail call i32 @putc(i32 noundef 123, ptr noundef %20) #26
  %22 = load ptr, ptr @finput, align 8, !tbaa !11
  %23 = tail call i32 @getc(ptr noundef %22) #26
  %24 = getelementptr inbounds %struct.symbol_list, ptr %0, i64 0, i32 1
  br label %25

25:                                               ; preds = %242, %19
  %26 = phi i32 [ %23, %19 ], [ %243, %242 ]
  %27 = phi i32 [ 1, %19 ], [ %244, %242 ]
  br label %28

28:                                               ; preds = %228, %25
  %29 = phi i32 [ %26, %25 ], [ %229, %228 ]
  br label %30

30:                                               ; preds = %73, %28
  %31 = phi i32 [ %77, %73 ], [ %29, %28 ]
  switch i32 %31, label %232 [
    i32 125, label %245
    i32 10, label %32
    i32 123, label %37
    i32 39, label %41
    i32 34, label %41
    i32 47, label %73
    i32 36, label %105
    i32 64, label %206
    i32 -1, label %231
  ]

32:                                               ; preds = %30
  %33 = load ptr, ptr @faction, align 8, !tbaa !11
  %34 = tail call i32 @putc(i32 noundef 10, ptr noundef %33) #26
  %35 = load i32, ptr @lineno, align 4, !tbaa !7
  %36 = add nsw i32 %35, 1
  store i32 %36, ptr @lineno, align 4, !tbaa !7
  br label %238

37:                                               ; preds = %30
  %38 = load ptr, ptr @faction, align 8, !tbaa !11
  %39 = tail call i32 @putc(i32 noundef 123, ptr noundef %38) #26
  %40 = add nsw i32 %27, 1
  br label %238

41:                                               ; preds = %30, %30
  %.lcssa4 = phi i32 [ %31, %30 ], [ %31, %30 ]
  %42 = load ptr, ptr @faction, align 8, !tbaa !11
  %43 = tail call i32 @putc(i32 noundef %.lcssa4, ptr noundef %42) #26
  %44 = load ptr, ptr @finput, align 8, !tbaa !11
  %45 = tail call i32 @getc(ptr noundef %44) #26
  %46 = icmp eq i32 %45, %.lcssa4
  br i1 %46, label %70, label %47

47:                                               ; preds = %66, %41
  %48 = phi i32 [ %68, %66 ], [ %45, %41 ]
  switch i32 %48, label %50 [
    i32 -1, label %49
    i32 10, label %49
  ]

49:                                               ; preds = %47, %47
  tail call fastcc void @fatal(ptr noundef nonnull @.str.8.207) #25
  unreachable

50:                                               ; preds = %47
  %51 = load ptr, ptr @faction, align 8, !tbaa !11
  %52 = tail call i32 @putc(i32 noundef %48, ptr noundef %51) #26
  %53 = icmp eq i32 %48, 92
  br i1 %53, label %54, label %66

54:                                               ; preds = %50
  %55 = load ptr, ptr @finput, align 8, !tbaa !11
  %56 = tail call i32 @getc(ptr noundef %55) #26
  %57 = icmp eq i32 %56, -1
  br i1 %57, label %58, label %59

58:                                               ; preds = %54
  tail call fastcc void @fatal(ptr noundef nonnull @.str.8.207) #25
  unreachable

59:                                               ; preds = %54
  %60 = load ptr, ptr @faction, align 8, !tbaa !11
  %61 = tail call i32 @putc(i32 noundef %56, ptr noundef %60) #26
  %62 = icmp eq i32 %56, 10
  br i1 %62, label %63, label %66

63:                                               ; preds = %59
  %64 = load i32, ptr @lineno, align 4, !tbaa !7
  %65 = add nsw i32 %64, 1
  store i32 %65, ptr @lineno, align 4, !tbaa !7
  br label %66

66:                                               ; preds = %63, %59, %50
  %67 = load ptr, ptr @finput, align 8, !tbaa !11
  %68 = tail call i32 @getc(ptr noundef %67) #26
  %69 = icmp eq i32 %68, %.lcssa4
  br i1 %69, label %70, label %47, !llvm.loop !204

70:                                               ; preds = %66, %41
  %71 = load ptr, ptr @faction, align 8, !tbaa !11
  %72 = tail call i32 @putc(i32 noundef %.lcssa4, ptr noundef %71) #26
  br label %238

73:                                               ; preds = %30
  %74 = load ptr, ptr @faction, align 8, !tbaa !11
  %75 = tail call i32 @putc(i32 noundef 47, ptr noundef %74) #26
  %76 = load ptr, ptr @finput, align 8, !tbaa !11
  %77 = tail call i32 @getc(ptr noundef %76) #26
  %78 = icmp eq i32 %77, 42
  br i1 %78, label %79, label %30, !llvm.loop !205

79:                                               ; preds = %73
  %80 = load ptr, ptr @faction, align 8, !tbaa !11
  %81 = tail call i32 @putc(i32 noundef 42, ptr noundef %80) #26
  %82 = load ptr, ptr @finput, align 8, !tbaa !11
  %83 = tail call i32 @getc(ptr noundef %82) #26
  br label %84

84:                                               ; preds = %102, %79
  %85 = phi i32 [ %83, %79 ], [ %103, %102 ]
  switch i32 %85, label %96 [
    i32 42, label %86
    i32 10, label %93
    i32 -1, label %104
  ]

86:                                               ; preds = %88, %84
  %87 = phi i32 [ %92, %88 ], [ %85, %84 ]
  switch i32 %87, label %102 [
    i32 42, label %88
    i32 47, label %235
  ], !llvm.loop !206

88:                                               ; preds = %86
  %89 = load ptr, ptr @faction, align 8, !tbaa !11
  %90 = tail call i32 @putc(i32 noundef 42, ptr noundef %89) #26
  %91 = load ptr, ptr @finput, align 8, !tbaa !11
  %92 = tail call i32 @getc(ptr noundef %91) #26
  br label %86, !llvm.loop !207

93:                                               ; preds = %84
  %94 = load i32, ptr @lineno, align 4, !tbaa !7
  %95 = add nsw i32 %94, 1
  store i32 %95, ptr @lineno, align 4, !tbaa !7
  br label %96

96:                                               ; preds = %93, %84
  %97 = phi i32 [ 10, %93 ], [ %85, %84 ]
  %98 = load ptr, ptr @faction, align 8, !tbaa !11
  %99 = tail call i32 @putc(i32 noundef %97, ptr noundef %98) #26
  %100 = load ptr, ptr @finput, align 8, !tbaa !11
  %101 = tail call i32 @getc(ptr noundef %100) #26
  br label %102

102:                                              ; preds = %96, %86
  %103 = phi i32 [ %101, %96 ], [ %87, %86 ]
  br label %84, !llvm.loop !206

104:                                              ; preds = %84
  tail call fastcc void @fatal(ptr noundef nonnull @.str.24.198) #25
  unreachable

105:                                              ; preds = %30
  %106 = load ptr, ptr @finput, align 8, !tbaa !11
  %107 = tail call i32 @getc(ptr noundef %106) #26
  %108 = icmp ne i32 %107, 60
  br i1 %108, label %123, label %109

109:                                              ; preds = %116, %105
  %110 = phi ptr [ %118, %116 ], [ @token_buffer, %105 ]
  %111 = load ptr, ptr @finput, align 8, !tbaa !11
  %112 = tail call i32 @getc(ptr noundef %111) #26
  %113 = icmp ne i32 %112, 62
  %114 = icmp sgt i32 %112, 0
  %115 = and i1 %113, %114
  br i1 %115, label %116, label %119

116:                                              ; preds = %109
  %117 = trunc i32 %112 to i8
  %118 = getelementptr inbounds i8, ptr %110, i64 1
  store i8 %117, ptr %110, align 1, !tbaa !13
  br label %109, !llvm.loop !208

119:                                              ; preds = %109
  %.lcssa9 = phi ptr [ %110, %109 ]
  store i8 0, ptr %.lcssa9, align 1, !tbaa !13
  %120 = load ptr, ptr @finput, align 8, !tbaa !11
  %121 = tail call i32 @getc(ptr noundef %120) #26
  %122 = icmp eq i32 %121, 36
  br i1 %122, label %132, label %148

123:                                              ; preds = %105
  %124 = icmp eq i32 %107, 36
  br i1 %124, label %125, label %148

125:                                              ; preds = %123
  %126 = load ptr, ptr @faction, align 8, !tbaa !11
  %127 = tail call i64 @fwrite(ptr nonnull @.str.37.208, i64 5, i64 1, ptr %126)
  %128 = load ptr, ptr %24, align 8, !tbaa !31
  %129 = getelementptr inbounds %struct.bucket, ptr %128, i64 0, i32 3
  %130 = load ptr, ptr %129, align 8, !tbaa !28
  %131 = icmp eq ptr %130, null
  br i1 %131, label %139, label %135

132:                                              ; preds = %119
  %133 = load ptr, ptr @faction, align 8, !tbaa !11
  %134 = tail call i64 @fwrite(ptr nonnull @.str.37.208, i64 5, i64 1, ptr %133)
  br label %135

135:                                              ; preds = %132, %125
  %136 = phi ptr [ %130, %125 ], [ @token_buffer, %132 ]
  %137 = load ptr, ptr @faction, align 8, !tbaa !11
  %138 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %137, ptr noundef nonnull @.str.38.209, ptr noundef nonnull %136) #26
  br label %238

139:                                              ; preds = %125
  %140 = load i1, ptr @typed, align 4
  br i1 %140, label %141, label %238

141:                                              ; preds = %139
  %142 = load ptr, ptr @stderr, align 8, !tbaa !11
  %143 = load ptr, ptr @infile, align 8, !tbaa !11
  %144 = load i32, ptr @lineno, align 4, !tbaa !7
  %145 = getelementptr inbounds %struct.bucket, ptr %128, i64 0, i32 2
  %146 = load ptr, ptr %145, align 8, !tbaa !29
  %147 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %142, ptr noundef nonnull @.str.39.210, ptr noundef %143, i32 noundef %144, ptr noundef %146) #28
  br label %238

148:                                              ; preds = %123, %119
  %149 = phi ptr [ null, %123 ], [ @token_buffer, %119 ]
  %150 = phi i32 [ %107, %123 ], [ %121, %119 ]
  %151 = tail call ptr @__ctype_b_loc() #33
  %152 = load ptr, ptr %151, align 8, !tbaa !11
  %153 = sext i32 %150 to i64
  %154 = getelementptr inbounds i16, ptr %152, i64 %153
  %155 = load i16, ptr %154, align 2, !tbaa !41
  %156 = and i16 %155, 2048
  %157 = icmp ne i16 %156, 0
  %158 = icmp eq i32 %150, 45
  %159 = or i1 %158, %157
  br i1 %159, label %160, label %204

160:                                              ; preds = %148
  %161 = load ptr, ptr @finput, align 8, !tbaa !11
  %162 = tail call i32 @ungetc(i32 noundef %150, ptr noundef %161) #26
  %163 = load ptr, ptr @finput, align 8, !tbaa !11
  %164 = tail call fastcc i32 @read_signed_integer(ptr noundef %163) #26
  %165 = load ptr, ptr @finput, align 8, !tbaa !11
  %166 = tail call i32 @getc(ptr noundef %165) #26
  %167 = icmp sgt i32 %164, 0
  %168 = select i1 %108, i1 %167, i1 false
  br i1 %168, label %169, label %185

169:                                              ; preds = %179, %160
  %170 = phi ptr [ %172, %179 ], [ %0, %160 ]
  %171 = phi i32 [ %180, %179 ], [ 0, %160 ]
  %172 = load ptr, ptr %170, align 8, !tbaa !34
  %173 = icmp eq ptr %172, null
  br i1 %173, label %178, label %174

174:                                              ; preds = %169
  %175 = getelementptr inbounds %struct.symbol_list, ptr %172, i64 0, i32 1
  %176 = load ptr, ptr %175, align 8, !tbaa !31
  %177 = icmp eq ptr %176, null
  br i1 %177, label %178, label %179

178:                                              ; preds = %174, %169
  tail call fastcc void @fatal(ptr noundef nonnull @.str.34.217) #25
  unreachable

179:                                              ; preds = %174
  %180 = add nuw nsw i32 %171, 1
  %181 = icmp eq i32 %180, %164
  br i1 %181, label %182, label %169, !llvm.loop !42

182:                                              ; preds = %179
  %.lcssa10 = phi ptr [ %176, %179 ]
  %183 = getelementptr inbounds %struct.bucket, ptr %.lcssa10, i64 0, i32 3
  %184 = load ptr, ptr %183, align 8, !tbaa !28
  br label %185

185:                                              ; preds = %182, %160
  %186 = phi ptr [ %184, %182 ], [ %149, %160 ]
  %187 = load ptr, ptr @faction, align 8, !tbaa !11
  %188 = sub nsw i32 %164, %5
  %189 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %187, ptr noundef nonnull @.str.40.211, i32 noundef %188) #26
  %190 = icmp eq ptr %186, null
  br i1 %190, label %194, label %191

191:                                              ; preds = %185
  %192 = load ptr, ptr @faction, align 8, !tbaa !11
  %193 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %192, ptr noundef nonnull @.str.38.209, ptr noundef nonnull %186) #26
  br label %228

194:                                              ; preds = %185
  %195 = load i1, ptr @typed, align 4
  br i1 %195, label %196, label %228

196:                                              ; preds = %194
  %197 = load ptr, ptr @stderr, align 8, !tbaa !11
  %198 = load ptr, ptr @infile, align 8, !tbaa !11
  %199 = load i32, ptr @lineno, align 4, !tbaa !7
  %200 = load ptr, ptr %24, align 8, !tbaa !31
  %201 = getelementptr inbounds %struct.bucket, ptr %200, i64 0, i32 2
  %202 = load ptr, ptr %201, align 8, !tbaa !29
  %203 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %197, ptr noundef nonnull @.str.41.212, ptr noundef %198, i32 noundef %199, i32 noundef %164, ptr noundef %202) #28
  br label %228

204:                                              ; preds = %148
  %.lcssa11 = phi i32 [ %150, %148 ]
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %3) #32
  %205 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) @.str.42.213, i32 noundef %.lcssa11, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #25
  call fastcc void @fatal(ptr noundef nonnull %3) #26
  unreachable

206:                                              ; preds = %30
  %207 = load ptr, ptr @finput, align 8, !tbaa !11
  %208 = tail call i32 @getc(ptr noundef %207) #26
  %209 = tail call ptr @__ctype_b_loc() #33
  %210 = load ptr, ptr %209, align 8, !tbaa !11
  %211 = sext i32 %208 to i64
  %212 = getelementptr inbounds i16, ptr %210, i64 %211
  %213 = load i16, ptr %212, align 2, !tbaa !41
  %214 = and i16 %213, 2048
  %215 = icmp ne i16 %214, 0
  %216 = icmp eq i32 %208, 45
  %217 = or i1 %216, %215
  br i1 %217, label %218, label %230

218:                                              ; preds = %206
  %219 = load ptr, ptr @finput, align 8, !tbaa !11
  %220 = tail call i32 @ungetc(i32 noundef %208, ptr noundef %219) #26
  %221 = load ptr, ptr @finput, align 8, !tbaa !11
  %222 = tail call fastcc i32 @read_signed_integer(ptr noundef %221) #26
  %223 = load ptr, ptr @finput, align 8, !tbaa !11
  %224 = tail call i32 @getc(ptr noundef %223) #26
  %225 = load ptr, ptr @faction, align 8, !tbaa !11
  %226 = sub nsw i32 %222, %5
  %227 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %225, ptr noundef nonnull @.str.44.215, i32 noundef %226) #26
  store i1 true, ptr @yylsp_needed, align 4
  br label %228

228:                                              ; preds = %218, %196, %194, %191
  %229 = phi i32 [ %166, %194 ], [ %166, %196 ], [ %166, %191 ], [ %224, %218 ]
  br label %28, !llvm.loop !205

230:                                              ; preds = %206
  tail call fastcc void @fatal(ptr noundef nonnull @.str.47.218) #25
  unreachable

231:                                              ; preds = %30
  tail call fastcc void @fatal(ptr noundef nonnull @.str.48) #25
  unreachable

232:                                              ; preds = %30
  %.lcssa = phi i32 [ %31, %30 ]
  %233 = load ptr, ptr @faction, align 8, !tbaa !11
  %234 = tail call i32 @putc(i32 noundef %.lcssa, ptr noundef %233) #26
  br label %238

235:                                              ; preds = %86
  %236 = load ptr, ptr @faction, align 8, !tbaa !11
  %237 = tail call i32 @putc(i32 noundef 47, ptr noundef %236) #26
  br label %238

238:                                              ; preds = %235, %232, %141, %139, %135, %70, %37, %32
  %239 = phi i32 [ %27, %232 ], [ %27, %141 ], [ %27, %139 ], [ %27, %70 ], [ %40, %37 ], [ %27, %32 ], [ %27, %135 ], [ %27, %235 ]
  %240 = load ptr, ptr @finput, align 8, !tbaa !11
  %241 = tail call i32 @getc(ptr noundef %240) #26
  br label %242

242:                                              ; preds = %248, %238
  %243 = phi i32 [ %252, %248 ], [ %241, %238 ]
  %244 = phi i32 [ %246, %248 ], [ %239, %238 ]
  br label %25, !llvm.loop !209

245:                                              ; preds = %30
  %246 = add nsw i32 %27, -1
  %247 = icmp eq i32 %246, 0
  br i1 %247, label %254, label %248

248:                                              ; preds = %245
  %249 = load ptr, ptr @faction, align 8, !tbaa !11
  %250 = tail call i32 @putc(i32 noundef 125, ptr noundef %249) #26
  %251 = load ptr, ptr @finput, align 8, !tbaa !11
  %252 = tail call i32 @getc(ptr noundef %251) #26
  %253 = icmp sgt i32 %27, 1
  br i1 %253, label %242, label %254

254:                                              ; preds = %248, %245
  %255 = load ptr, ptr @faction, align 8, !tbaa !11
  %256 = tail call i64 @fwrite(ptr nonnull @.str.46, i64 13, i64 1, ptr %255)
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #14

; Function Attrs: nofree nounwind optsize uwtable
define internal fastcc i32 @read_signed_integer(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = tail call i32 @getc(ptr noundef %0) #26
  %3 = icmp eq i32 %2, 45
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = tail call i32 @getc(ptr noundef %0) #26
  br label %6

6:                                                ; preds = %4, %1
  %7 = phi i32 [ %5, %4 ], [ %2, %1 ]
  %8 = phi i32 [ -1, %4 ], [ 1, %1 ]
  %9 = tail call ptr @__ctype_b_loc() #33
  %10 = load ptr, ptr %9, align 8, !tbaa !11
  %11 = sext i32 %7 to i64
  %12 = getelementptr inbounds i16, ptr %10, i64 %11
  %13 = load i16, ptr %12, align 2, !tbaa !41
  %14 = and i16 %13, 2048
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %29, label %16

16:                                               ; preds = %16, %6
  %17 = phi i32 [ %21, %16 ], [ 0, %6 ]
  %18 = phi i32 [ %22, %16 ], [ %7, %6 ]
  %19 = mul nsw i32 %17, 10
  %20 = add nsw i32 %18, -48
  %21 = add nsw i32 %20, %19
  %22 = tail call i32 @getc(ptr noundef %0) #26
  %23 = load ptr, ptr %9, align 8, !tbaa !11
  %24 = sext i32 %22 to i64
  %25 = getelementptr inbounds i16, ptr %23, i64 %24
  %26 = load i16, ptr %25, align 2, !tbaa !41
  %27 = and i16 %26, 2048
  %28 = icmp eq i16 %27, 0
  br i1 %28, label %29, label %16, !llvm.loop !210

29:                                               ; preds = %16, %6
  %30 = phi i32 [ %7, %6 ], [ %22, %16 ]
  %31 = phi i32 [ 0, %6 ], [ %21, %16 ]
  %32 = tail call i32 @ungetc(i32 noundef %30, ptr noundef %0) #26
  %33 = mul nsw i32 %31, %8
  ret i32 %33
}

; Function Attrs: nofree nounwind optsize uwtable
define internal fastcc void @output_token_defines(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr @firstsymbol, align 8, !tbaa !11
  %3 = icmp eq ptr %2, null
  br i1 %3, label %50, label %4

4:                                                ; preds = %46, %1
  %5 = phi ptr [ %48, %46 ], [ %2, %1 ]
  %6 = getelementptr inbounds %struct.bucket, ptr %5, i64 0, i32 4
  %7 = load i16, ptr %6, align 8, !tbaa !33
  %8 = sext i16 %7 to i32
  %9 = load i32, ptr @ntokens, align 4, !tbaa !7
  %10 = icmp sgt i32 %9, %8
  br i1 %10, label %11, label %46

11:                                               ; preds = %4
  %12 = load ptr, ptr @tags, align 8, !tbaa !11
  %13 = sext i16 %7 to i64
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !11
  %16 = load i8, ptr %15, align 1, !tbaa !13
  %17 = icmp eq i8 %16, 39
  %18 = load ptr, ptr @errtoken, align 8
  %19 = icmp eq ptr %5, %18
  %20 = select i1 %17, i1 true, i1 %19
  br i1 %20, label %46, label %24

21:                                               ; preds = %24
  %22 = getelementptr inbounds i8, ptr %26, i64 1
  %23 = load i8, ptr %22, align 1, !tbaa !13
  br label %24

24:                                               ; preds = %21, %11
  %25 = phi i8 [ %23, %21 ], [ %16, %11 ]
  %26 = phi ptr [ %22, %21 ], [ %15, %11 ]
  switch i8 %25, label %21 [
    i8 0, label %27
    i8 46, label %46
  ]

27:                                               ; preds = %24
  %28 = load i32, ptr @translations, align 4, !tbaa !7
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.bucket, ptr %5, i64 0, i32 7
  %32 = load i16, ptr %31, align 2, !tbaa !45
  %33 = sext i16 %32 to i32
  br label %34

34:                                               ; preds = %30, %27
  %35 = phi i32 [ %8, %27 ], [ %33, %30 ]
  %36 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.66, ptr noundef nonnull %15, i32 noundef %35) #26
  %37 = load i1, ptr @semantic_parser, align 4
  br i1 %37, label %38, label %46

38:                                               ; preds = %34
  %39 = load ptr, ptr @tags, align 8, !tbaa !11
  %40 = load i16, ptr %6, align 8, !tbaa !33
  %41 = sext i16 %40 to i64
  %42 = getelementptr inbounds ptr, ptr %39, i64 %41
  %43 = load ptr, ptr %42, align 8, !tbaa !11
  %44 = sext i16 %40 to i32
  %45 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.67, ptr noundef %43, i32 noundef %44) #26
  br label %46

46:                                               ; preds = %38, %34, %24, %11, %4
  %47 = getelementptr inbounds %struct.bucket, ptr %5, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !11
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %4, !llvm.loop !211

50:                                               ; preds = %46, %1
  %51 = tail call i32 @putc(i32 noundef 10, ptr noundef %0) #26
  ret void
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #16

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #17

; Function Attrs: nounwind optsize uwtable
define internal fastcc ptr @new_state(i32 noundef %0) unnamed_addr #10 {
  %2 = alloca [200 x i8], align 16
  %3 = load i32, ptr @nstates, align 4, !tbaa !7
  %4 = icmp sgt i32 %3, 32766
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %2) #32
  %6 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) @.str.2.131, i32 noundef 32767, ptr noundef nonnull @.str) #25
  call fastcc void @fatal(ptr noundef nonnull %2) #26
  unreachable

7:                                                ; preds = %1
  %8 = load ptr, ptr @kernel_base, align 8, !tbaa !11
  %9 = sext i32 %0 to i64
  %10 = getelementptr inbounds ptr, ptr %8, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !11
  %12 = load ptr, ptr @kernel_end, align 8, !tbaa !11
  %13 = getelementptr inbounds ptr, ptr %12, i64 %9
  %14 = load ptr, ptr %13, align 8, !tbaa !11
  %15 = ptrtoint ptr %14 to i64
  %16 = ptrtoint ptr %11 to i64
  %17 = sub i64 %15, %16
  %18 = lshr exact i64 %17, 1
  %19 = trunc i64 %17 to i32
  %20 = and i32 %19, -2
  %21 = add i32 %20, 22
  %22 = tail call fastcc ptr @mallocate(i32 noundef %21) #25
  %23 = trunc i32 %0 to i16
  %24 = getelementptr inbounds %struct.core, ptr %22, i64 0, i32 3
  store i16 %23, ptr %24, align 2, !tbaa !110
  %25 = load i32, ptr @nstates, align 4, !tbaa !7
  %26 = trunc i32 %25 to i16
  %27 = getelementptr inbounds %struct.core, ptr %22, i64 0, i32 2
  store i16 %26, ptr %27, align 8, !tbaa !91
  %28 = trunc i64 %18 to i16
  %29 = getelementptr inbounds %struct.core, ptr %22, i64 0, i32 4
  store i16 %28, ptr %29, align 4, !tbaa !81
  %30 = icmp ult ptr %11, %14
  br i1 %30, label %31, label %40

31:                                               ; preds = %7
  %32 = getelementptr %struct.core, ptr %22, i64 0, i32 5
  br label %33

33:                                               ; preds = %33, %31
  %34 = phi ptr [ %36, %33 ], [ %11, %31 ]
  %35 = phi ptr [ %38, %33 ], [ %32, %31 ]
  %36 = getelementptr inbounds i16, ptr %34, i64 1
  %37 = load i16, ptr %34, align 2, !tbaa !41
  %38 = getelementptr inbounds i16, ptr %35, i64 1
  store i16 %37, ptr %35, align 2, !tbaa !41
  %39 = icmp ult ptr %36, %14
  br i1 %39, label %33, label %40, !llvm.loop !212

40:                                               ; preds = %33, %7
  %41 = load ptr, ptr @last_state, align 8, !tbaa !11
  store ptr %22, ptr %41, align 8, !tbaa !108
  store ptr %22, ptr @last_state, align 8, !tbaa !11
  %42 = add nsw i32 %25, 1
  store i32 %42, ptr @nstates, align 4, !tbaa !7
  ret ptr %22
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #16

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @map_goto(i32 noundef %0, i32 noundef %1) unnamed_addr #10 {
  %3 = load ptr, ptr @goto_map, align 8, !tbaa !11
  %4 = sext i32 %1 to i64
  %5 = getelementptr inbounds i16, ptr %3, i64 %4
  %6 = load i16, ptr %5, align 2, !tbaa !41
  %7 = add nsw i32 %1, 1
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds i16, ptr %3, i64 %8
  %10 = load i16, ptr %9, align 2, !tbaa !41
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
  %19 = add nsw i32 %18, %17
  %20 = sdiv i32 %19, 2
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i16, ptr %15, i64 %21
  %23 = load i16, ptr %22, align 2, !tbaa !41
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
  br i1 %32, label %33, label %16, !llvm.loop !213

33:                                               ; preds = %26, %2
  tail call fastcc void @berror(ptr noundef nonnull @.str.1.100) #25
  unreachable

34:                                               ; preds = %16
  %.lcssa = phi i32 [ %20, %16 ]
  ret i32 %.lcssa
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @digraph(ptr noundef %0) unnamed_addr #10 {
  %2 = load i32, ptr @ngotos, align 4, !tbaa !7
  %3 = add nsw i32 %2, 2
  store i32 %3, ptr @infinity, align 4, !tbaa !7
  %4 = shl i32 %2, 1
  %5 = add i32 %4, 2
  %6 = tail call fastcc ptr @mallocate(i32 noundef %5) #25
  store ptr %6, ptr @INDEX, align 8, !tbaa !11
  %7 = load i32, ptr @ngotos, align 4, !tbaa !7
  %8 = shl i32 %7, 1
  %9 = add i32 %8, 2
  %10 = tail call fastcc ptr @mallocate(i32 noundef %9) #25
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
  tail call void @llvm.memset.p0.i64(ptr align 2 %13, i8 0, i64 %16, i1 false), !tbaa !41
  br label %17

17:                                               ; preds = %33, %14
  %18 = phi i32 [ %11, %14 ], [ %34, %33 ]
  %19 = phi ptr [ %13, %14 ], [ %35, %33 ]
  %20 = phi i64 [ 0, %14 ], [ %36, %33 ]
  %21 = getelementptr inbounds i16, ptr %19, i64 %20
  %22 = load i16, ptr %21, align 2, !tbaa !41
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
  tail call fastcc void @traverse(i32 noundef %30) #26
  %31 = load ptr, ptr @INDEX, align 8, !tbaa !11
  %32 = load i32, ptr @ngotos, align 4, !tbaa !7
  br label %33

33:                                               ; preds = %29, %24, %17
  %34 = phi i32 [ %18, %17 ], [ %18, %24 ], [ %32, %29 ]
  %35 = phi ptr [ %19, %17 ], [ %19, %24 ], [ %31, %29 ]
  %36 = add nuw nsw i64 %20, 1
  %37 = sext i32 %34 to i64
  %38 = icmp slt i64 %36, %37
  br i1 %38, label %17, label %39, !llvm.loop !214

39:                                               ; preds = %33, %1
  %40 = phi ptr [ %13, %1 ], [ %35, %33 ]
  %41 = icmp eq ptr %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %39
  tail call void @free(ptr noundef nonnull %40) #25
  br label %43

43:                                               ; preds = %42, %39
  %44 = load ptr, ptr @VERTICES, align 8, !tbaa !11
  %45 = icmp eq ptr %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %43
  tail call void @free(ptr noundef nonnull %44) #25
  br label %47

47:                                               ; preds = %46, %43
  ret void
}

; Function Attrs: noreturn nounwind optsize uwtable
define internal fastcc void @berror(ptr noundef %0) unnamed_addr #7 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !11
  %3 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.3.134, ptr noundef %0) #28
  tail call void @abort() #31
  unreachable
}

; Function Attrs: nofree norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @flush_shift(i32 noundef %0, i32 noundef %1) unnamed_addr #18 {
  %3 = load ptr, ptr @shift_table, align 8, !tbaa !11
  %4 = sext i32 %0 to i64
  %5 = getelementptr inbounds ptr, ptr %3, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !11
  %7 = icmp eq ptr %6, null
  br i1 %7, label %30, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.shifts, ptr %6, i64 0, i32 2
  %10 = load i16, ptr %9, align 2, !tbaa !106
  %11 = icmp sgt i16 %10, 0
  br i1 %11, label %12, label %30

12:                                               ; preds = %8
  %13 = zext i16 %10 to i64
  %14 = load ptr, ptr @accessing_symbol, align 8
  br label %15

15:                                               ; preds = %27, %12
  %16 = phi i64 [ 0, %12 ], [ %28, %27 ]
  %17 = getelementptr inbounds %struct.shifts, ptr %6, i64 0, i32 3, i64 %16
  %18 = load i16, ptr %17, align 2, !tbaa !41
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %15
  %21 = sext i16 %18 to i64
  %22 = getelementptr inbounds i16, ptr %14, i64 %21
  %23 = load i16, ptr %22, align 2, !tbaa !41
  %24 = sext i16 %23 to i32
  %25 = icmp eq i32 %24, %1
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  store i16 0, ptr %17, align 2, !tbaa !41
  br label %27

27:                                               ; preds = %26, %20, %15
  %28 = add nuw nsw i64 %16, 1
  %29 = icmp eq i64 %28, %13
  br i1 %29, label %30, label %15, !llvm.loop !215

30:                                               ; preds = %27, %8, %2
  ret void
}

; Function Attrs: nofree nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @count_sr_conflicts(i32 noundef %0) unnamed_addr #19 {
  store i32 0, ptr @src_count, align 4, !tbaa !7
  %2 = load ptr, ptr @shift_table, align 8, !tbaa !11
  %3 = sext i32 %0 to i64
  %4 = getelementptr inbounds ptr, ptr %2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !11
  %6 = icmp eq ptr %5, null
  br i1 %6, label %118, label %7

7:                                                ; preds = %1
  %8 = load i32, ptr @tokensetsize, align 4, !tbaa !7
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %20

10:                                               ; preds = %7
  %11 = load ptr, ptr @shiftset.14, align 8, !tbaa !11
  %12 = load ptr, ptr @lookaheadset, align 8, !tbaa !11
  %13 = zext i32 %8 to i64
  br label %14

14:                                               ; preds = %14, %10
  %15 = phi i64 [ 0, %10 ], [ %18, %14 ]
  %16 = getelementptr inbounds i32, ptr %11, i64 %15
  store i32 0, ptr %16, align 4, !tbaa !7
  %17 = getelementptr inbounds i32, ptr %12, i64 %15
  store i32 0, ptr %17, align 4, !tbaa !7
  %18 = add nuw nsw i64 %15, 1
  %19 = icmp eq i64 %18, %13
  br i1 %19, label %20, label %14, !llvm.loop !216

20:                                               ; preds = %14, %7
  %21 = getelementptr inbounds %struct.shifts, ptr %5, i64 0, i32 2
  %22 = load i16, ptr %21, align 2, !tbaa !106
  %23 = icmp sgt i16 %22, 0
  br i1 %23, label %24, label %51

24:                                               ; preds = %20
  %25 = zext i16 %22 to i64
  %26 = load ptr, ptr @accessing_symbol, align 8
  %27 = load ptr, ptr @shiftset.14, align 8
  %28 = load i32, ptr @ntokens, align 4
  br label %29

29:                                               ; preds = %48, %24
  %30 = phi i64 [ 0, %24 ], [ %49, %48 ]
  %31 = getelementptr inbounds %struct.shifts, ptr %5, i64 0, i32 3, i64 %30
  %32 = load i16, ptr %31, align 2, !tbaa !41
  %33 = icmp eq i16 %32, 0
  br i1 %33, label %48, label %34

34:                                               ; preds = %29
  %35 = sext i16 %32 to i64
  %36 = getelementptr inbounds i16, ptr %26, i64 %35
  %37 = load i16, ptr %36, align 2, !tbaa !41
  %38 = sext i16 %37 to i32
  %39 = icmp sgt i32 %28, %38
  br i1 %39, label %40, label %51

40:                                               ; preds = %34
  %41 = and i32 %38, 31
  %42 = shl nuw i32 1, %41
  %43 = ashr i32 %38, 5
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, ptr %27, i64 %44
  %46 = load i32, ptr %45, align 4, !tbaa !7
  %47 = or i32 %46, %42
  store i32 %47, ptr %45, align 4, !tbaa !7
  br label %48

48:                                               ; preds = %40, %29
  %49 = add nuw nsw i64 %30, 1
  %50 = icmp eq i64 %49, %25
  br i1 %50, label %51, label %29, !llvm.loop !217

51:                                               ; preds = %48, %34, %20
  %52 = load ptr, ptr @lookaheads, align 8, !tbaa !11
  %53 = add nsw i32 %0, 1
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i16, ptr %52, i64 %54
  %56 = load i16, ptr %55, align 2, !tbaa !41
  %57 = load ptr, ptr @lookaheadset, align 8, !tbaa !11
  %58 = sext i32 %8 to i64
  %59 = getelementptr inbounds i32, ptr %57, i64 %58
  %60 = getelementptr inbounds i16, ptr %52, i64 %3
  %61 = load i16, ptr %60, align 2, !tbaa !41
  %62 = icmp slt i16 %61, %56
  br i1 %62, label %63, label %84

63:                                               ; preds = %51
  %64 = load ptr, ptr @LA, align 8, !tbaa !11
  %65 = sext i16 %61 to i64
  %66 = sext i16 %56 to i64
  br label %67

67:                                               ; preds = %81, %63
  %68 = phi i64 [ %82, %81 ], [ %65, %63 ]
  br i1 %9, label %69, label %81

69:                                               ; preds = %67
  %70 = mul nsw i64 %68, %58
  %71 = getelementptr inbounds i32, ptr %64, i64 %70
  br label %72

72:                                               ; preds = %72, %69
  %73 = phi ptr [ %77, %72 ], [ %57, %69 ]
  %74 = phi ptr [ %75, %72 ], [ %71, %69 ]
  %75 = getelementptr inbounds i32, ptr %74, i64 1
  %76 = load i32, ptr %74, align 4, !tbaa !7
  %77 = getelementptr inbounds i32, ptr %73, i64 1
  %78 = load i32, ptr %73, align 4, !tbaa !7
  %79 = or i32 %78, %76
  store i32 %79, ptr %73, align 4, !tbaa !7
  %80 = icmp ult ptr %77, %59
  br i1 %80, label %72, label %81, !llvm.loop !218

81:                                               ; preds = %72, %67
  %82 = add nsw i64 %68, 1
  %83 = icmp eq i64 %82, %66
  br i1 %83, label %84, label %67, !llvm.loop !219

84:                                               ; preds = %81, %51
  br i1 %9, label %85, label %87

85:                                               ; preds = %84
  %86 = load ptr, ptr @shiftset.14, align 8, !tbaa !11
  br label %90

87:                                               ; preds = %90, %84
  %88 = load i32, ptr @ntokens, align 4, !tbaa !7
  %89 = icmp sgt i32 %88, 0
  br i1 %89, label %99, label %118

90:                                               ; preds = %90, %85
  %91 = phi ptr [ %95, %90 ], [ %57, %85 ]
  %92 = phi ptr [ %93, %90 ], [ %86, %85 ]
  %93 = getelementptr inbounds i32, ptr %92, i64 1
  %94 = load i32, ptr %92, align 4, !tbaa !7
  %95 = getelementptr inbounds i32, ptr %91, i64 1
  %96 = load i32, ptr %91, align 4, !tbaa !7
  %97 = and i32 %96, %94
  store i32 %97, ptr %91, align 4, !tbaa !7
  %98 = icmp ult ptr %95, %59
  br i1 %98, label %90, label %87, !llvm.loop !220

99:                                               ; preds = %109, %87
  %100 = phi i32 [ %116, %109 ], [ 0, %87 ]
  %101 = phi ptr [ %115, %109 ], [ %57, %87 ]
  %102 = phi i32 [ %113, %109 ], [ 1, %87 ]
  %103 = phi i32 [ %110, %109 ], [ 0, %87 ]
  %104 = load i32, ptr %101, align 4, !tbaa !7
  %105 = and i32 %104, %102
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %109, label %107

107:                                              ; preds = %99
  %108 = add nsw i32 %103, 1
  store i32 %108, ptr @src_count, align 4, !tbaa !7
  br label %109

109:                                              ; preds = %107, %99
  %110 = phi i32 [ %108, %107 ], [ %103, %99 ]
  %111 = shl i32 %102, 1
  %112 = icmp eq i32 %111, 0
  %113 = tail call i32 @llvm.umax.i32(i32 %111, i32 1)
  %114 = zext i1 %112 to i64
  %115 = getelementptr inbounds i32, ptr %101, i64 %114
  %116 = add nuw nsw i32 %100, 1
  %117 = icmp eq i32 %116, %88
  br i1 %117, label %118, label %99, !llvm.loop !221

118:                                              ; preds = %109, %87, %1
  ret void
}

; Function Attrs: nofree nosync nounwind optsize memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define internal fastcc void @count_rr_conflicts(i32 noundef %0) unnamed_addr #20 {
  store i32 0, ptr @rrc_count, align 4, !tbaa !7
  %2 = load ptr, ptr @lookaheads, align 8, !tbaa !11
  %3 = sext i32 %0 to i64
  %4 = getelementptr inbounds i16, ptr %2, i64 %3
  %5 = load i16, ptr %4, align 2, !tbaa !41
  %6 = sext i16 %5 to i32
  %7 = add nsw i32 %0, 1
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds i16, ptr %2, i64 %8
  %10 = load i16, ptr %9, align 2, !tbaa !41
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
  br i1 %41, label %42, label %30, !llvm.loop !222

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
  br i1 %54, label %55, label %25, !llvm.loop !223

55:                                               ; preds = %46, %14, %1
  ret void
}

; Function Attrs: nofree nounwind optsize uwtable
define internal fastcc void @total_conflicts() unnamed_addr #0 {
  %1 = load i32, ptr @src_total, align 4, !tbaa !7
  %2 = load i32, ptr @expected_conflicts, align 4, !tbaa !7
  %3 = icmp eq i32 %1, %2
  %4 = load i32, ptr @rrc_total, align 4
  %5 = icmp eq i32 %4, 0
  %6 = select i1 %3, i1 %5, i1 false
  br i1 %6, label %53, label %7

7:                                                ; preds = %0
  %8 = load ptr, ptr @stdout, align 8, !tbaa !11
  %9 = tail call i32 @fflush(ptr noundef %8) #26
  %10 = load ptr, ptr @stderr, align 8, !tbaa !11
  %11 = load ptr, ptr @infile, align 8, !tbaa !11
  %12 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %11, i32 noundef 47) #27
  %13 = icmp eq ptr %12, null
  %14 = getelementptr inbounds i8, ptr %12, i64 1
  %15 = select i1 %13, ptr %11, ptr %14
  %16 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef nonnull @.str.10, ptr noundef %15) #28
  %17 = load i32, ptr @src_total, align 4, !tbaa !7
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %22

19:                                               ; preds = %7
  %20 = load ptr, ptr @stderr, align 8, !tbaa !11
  %21 = tail call i64 @fwrite(ptr nonnull @.str.5, i64 24, i64 1, ptr %20) #30
  br label %27

22:                                               ; preds = %7
  %23 = icmp sgt i32 %17, 1
  br i1 %23, label %24, label %27

24:                                               ; preds = %22
  %25 = load ptr, ptr @stderr, align 8, !tbaa !11
  %26 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %25, ptr noundef nonnull @.str.6, i32 noundef %17) #28
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
  %35 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 4, i64 1, ptr %34) #30
  %36 = load i32, ptr @rrc_total, align 4, !tbaa !7
  br label %37

37:                                               ; preds = %33, %27
  %38 = phi i32 [ %36, %33 ], [ %30, %27 ]
  %39 = icmp eq i32 %38, 1
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = load ptr, ptr @stderr, align 8, !tbaa !11
  %42 = tail call i64 @fwrite(ptr nonnull @.str.8, i64 25, i64 1, ptr %41) #30
  br label %48

43:                                               ; preds = %37
  %44 = icmp sgt i32 %38, 1
  br i1 %44, label %45, label %48

45:                                               ; preds = %43
  %46 = load ptr, ptr @stderr, align 8, !tbaa !11
  %47 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %46, ptr noundef nonnull @.str.9, i32 noundef %38) #28
  br label %48

48:                                               ; preds = %45, %43, %40
  %49 = load ptr, ptr @stderr, align 8, !tbaa !11
  %50 = tail call i32 @putc(i32 noundef 46, ptr noundef %49) #26
  %51 = load ptr, ptr @stderr, align 8, !tbaa !11
  %52 = tail call i32 @putc(i32 noundef 10, ptr noundef %51) #26
  br label %53

53:                                               ; preds = %48, %0
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @output() unnamed_addr #10 {
  %1 = alloca [200 x i8], align 16
  %2 = load i1, ptr @debugflag, align 4
  br i1 %2, label %3, label %6

3:                                                ; preds = %0
  %4 = load ptr, ptr @ftable, align 8, !tbaa !11
  %5 = tail call i64 @fwrite(ptr nonnull @.str.5.146, i64 16, i64 1, ptr %4)
  br label %6

6:                                                ; preds = %3, %0
  %7 = load i1, ptr @semantic_parser, align 4
  br i1 %7, label %8, label %12

8:                                                ; preds = %6
  %9 = load ptr, ptr @ftable, align 8, !tbaa !11
  %10 = load ptr, ptr @attrsfile, align 8, !tbaa !11
  %11 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef nonnull @.str.6.147, ptr noundef %10) #26
  br label %12

12:                                               ; preds = %8, %6
  %13 = load ptr, ptr @ftable, align 8, !tbaa !11
  %14 = tail call i64 @fwrite(ptr nonnull @.str.7.148, i64 20, i64 1, ptr %13)
  %15 = load ptr, ptr @ftable, align 8, !tbaa !11
  %16 = tail call i64 @fwrite(ptr nonnull @.str.8.149, i64 39, i64 1, ptr %15)
  %17 = load ptr, ptr @state_table, align 8, !tbaa !11
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %12
  tail call void @free(ptr noundef nonnull %17) #25
  br label %20

20:                                               ; preds = %19, %12
  %21 = load ptr, ptr @first_state, align 8, !tbaa !11
  %22 = icmp eq ptr %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %23, %20
  %24 = phi ptr [ %25, %23 ], [ %21, %20 ]
  %25 = load ptr, ptr %24, align 8, !tbaa !108
  tail call void @free(ptr noundef nonnull %24) #25
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %23, !llvm.loop !224

27:                                               ; preds = %23, %20
  %28 = load ptr, ptr @ftable, align 8, !tbaa !11
  %29 = load i32, ptr @final_state, align 4, !tbaa !7
  %30 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %28, ptr noundef nonnull @.str.29, i32 noundef %29) #26
  %31 = load ptr, ptr @ftable, align 8, !tbaa !11
  %32 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %31, ptr noundef nonnull @.str.30, i32 noundef -32768) #26
  %33 = load ptr, ptr @ftable, align 8, !tbaa !11
  %34 = load i32, ptr @ntokens, align 4, !tbaa !7
  %35 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %33, ptr noundef nonnull @.str.31.164, i32 noundef %34) #26
  %36 = load i32, ptr @translations, align 4, !tbaa !7
  %37 = icmp eq i32 %36, 0
  %38 = load ptr, ptr @ftable, align 8, !tbaa !11
  br i1 %37, label %79, label %39

39:                                               ; preds = %27
  %40 = load i32, ptr @max_user_token_number, align 4, !tbaa !7
  %41 = load i32, ptr @nsyms, align 4, !tbaa !7
  %42 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %38, ptr noundef nonnull @.str.9.160, i32 noundef %40, i32 noundef %41) #26
  %43 = load i32, ptr @ntokens, align 4, !tbaa !7
  %44 = icmp slt i32 %43, 127
  %45 = load ptr, ptr @ftable, align 8, !tbaa !11
  br i1 %44, label %46, label %48

46:                                               ; preds = %39
  %47 = tail call i64 @fwrite(ptr nonnull @.str.10.161, i64 42, i64 1, ptr %45)
  br label %50

48:                                               ; preds = %39
  %49 = tail call i64 @fwrite(ptr nonnull @.str.11.162, i64 43, i64 1, ptr %45)
  br label %50

50:                                               ; preds = %48, %46
  %51 = load i32, ptr @max_user_token_number, align 4, !tbaa !7
  %52 = icmp slt i32 %51, 1
  br i1 %52, label %76, label %53

53:                                               ; preds = %64, %50
  %54 = phi i64 [ %72, %64 ], [ 1, %50 ]
  %55 = phi i32 [ %65, %64 ], [ 10, %50 ]
  %56 = load ptr, ptr @ftable, align 8, !tbaa !11
  %57 = tail call i32 @putc(i32 noundef 44, ptr noundef %56) #26
  %58 = icmp sgt i32 %55, 9
  br i1 %58, label %59, label %62

59:                                               ; preds = %53
  %60 = load ptr, ptr @ftable, align 8, !tbaa !11
  %61 = tail call i32 @putc(i32 noundef 10, ptr noundef %60) #26
  br label %64

62:                                               ; preds = %53
  %63 = add nuw nsw i32 %55, 1
  br label %64

64:                                               ; preds = %62, %59
  %65 = phi i32 [ 1, %59 ], [ %63, %62 ]
  %66 = load ptr, ptr @ftable, align 8, !tbaa !11
  %67 = load ptr, ptr @token_translations, align 8, !tbaa !11
  %68 = getelementptr inbounds i16, ptr %67, i64 %54
  %69 = load i16, ptr %68, align 2, !tbaa !41
  %70 = sext i16 %69 to i32
  %71 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %66, ptr noundef nonnull @.str.12.151, i32 noundef %70) #26
  %72 = add nuw nsw i64 %54, 1
  %73 = load i32, ptr @max_user_token_number, align 4, !tbaa !7
  %74 = zext i32 %73 to i64
  %75 = icmp ult i64 %54, %74
  br i1 %75, label %53, label %76, !llvm.loop !225

76:                                               ; preds = %64, %50
  %77 = load ptr, ptr @ftable, align 8, !tbaa !11
  %78 = tail call i64 @fwrite(ptr nonnull @.str.13.152, i64 4, i64 1, ptr %77)
  br label %81

79:                                               ; preds = %27
  %80 = tail call i64 @fwrite(ptr nonnull @.str.14.163, i64 28, i64 1, ptr %38)
  br label %81

81:                                               ; preds = %79, %76
  %82 = load i1, ptr @semantic_parser, align 4
  br i1 %82, label %83, label %150

83:                                               ; preds = %81
  %84 = load ptr, ptr @ftable, align 8, !tbaa !11
  %85 = tail call i64 @fwrite(ptr nonnull @.str.15.157, i64 38, i64 1, ptr %84)
  %86 = load i32, ptr @nrules, align 4, !tbaa !7
  %87 = icmp slt i32 %86, 1
  br i1 %87, label %111, label %88

88:                                               ; preds = %99, %83
  %89 = phi i64 [ %107, %99 ], [ 1, %83 ]
  %90 = phi i32 [ %100, %99 ], [ 10, %83 ]
  %91 = load ptr, ptr @ftable, align 8, !tbaa !11
  %92 = tail call i32 @putc(i32 noundef 44, ptr noundef %91) #26
  %93 = icmp sgt i32 %90, 9
  br i1 %93, label %94, label %97

94:                                               ; preds = %88
  %95 = load ptr, ptr @ftable, align 8, !tbaa !11
  %96 = tail call i32 @putc(i32 noundef 10, ptr noundef %95) #26
  br label %99

97:                                               ; preds = %88
  %98 = add nuw nsw i32 %90, 1
  br label %99

99:                                               ; preds = %97, %94
  %100 = phi i32 [ 1, %94 ], [ %98, %97 ]
  %101 = load ptr, ptr @ftable, align 8, !tbaa !11
  %102 = load ptr, ptr @rrhs, align 8, !tbaa !11
  %103 = getelementptr inbounds i16, ptr %102, i64 %89
  %104 = load i16, ptr %103, align 2, !tbaa !41
  %105 = sext i16 %104 to i32
  %106 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %101, ptr noundef nonnull @.str.12.151, i32 noundef %105) #26
  %107 = add nuw nsw i64 %89, 1
  %108 = load i32, ptr @nrules, align 4, !tbaa !7
  %109 = sext i32 %108 to i64
  %110 = icmp slt i64 %89, %109
  br i1 %110, label %88, label %111, !llvm.loop !226

111:                                              ; preds = %99, %83
  %112 = load ptr, ptr @ftable, align 8, !tbaa !11
  %113 = load ptr, ptr @ritem, align 8, !tbaa !11
  %114 = load i16, ptr %113, align 2, !tbaa !41
  %115 = sext i16 %114 to i32
  %116 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %112, ptr noundef nonnull @.str.16.158, i32 noundef %115) #26
  %117 = load ptr, ptr @ritem, align 8, !tbaa !11
  %118 = getelementptr inbounds i16, ptr %117, i64 1
  %119 = load i16, ptr %118, align 2, !tbaa !41
  %120 = icmp eq i16 %119, 0
  br i1 %120, label %147, label %121

121:                                              ; preds = %143, %111
  %122 = phi ptr [ %144, %143 ], [ %118, %111 ]
  %123 = phi i32 [ %133, %143 ], [ 10, %111 ]
  %124 = load ptr, ptr @ftable, align 8, !tbaa !11
  %125 = tail call i32 @putc(i32 noundef 44, ptr noundef %124) #26
  %126 = icmp sgt i32 %123, 9
  br i1 %126, label %127, label %130

127:                                              ; preds = %121
  %128 = load ptr, ptr @ftable, align 8, !tbaa !11
  %129 = tail call i32 @putc(i32 noundef 10, ptr noundef %128) #26
  br label %132

130:                                              ; preds = %121
  %131 = add nuw nsw i32 %123, 1
  br label %132

132:                                              ; preds = %130, %127
  %133 = phi i32 [ 1, %127 ], [ %131, %130 ]
  %134 = load i16, ptr %122, align 2, !tbaa !41
  %135 = icmp sgt i16 %134, 0
  br i1 %135, label %136, label %140

136:                                              ; preds = %132
  %137 = zext i16 %134 to i32
  %138 = load ptr, ptr @ftable, align 8, !tbaa !11
  %139 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %138, ptr noundef nonnull @.str.12.151, i32 noundef %137) #26
  br label %143

140:                                              ; preds = %132
  %141 = load ptr, ptr @ftable, align 8, !tbaa !11
  %142 = tail call i64 @fwrite(ptr nonnull @.str.17.159, i64 6, i64 1, ptr %141)
  br label %143

143:                                              ; preds = %140, %136
  %144 = getelementptr inbounds i16, ptr %122, i64 1
  %145 = load i16, ptr %144, align 2, !tbaa !41
  %146 = icmp eq i16 %145, 0
  br i1 %146, label %147, label %121, !llvm.loop !227

147:                                              ; preds = %143, %111
  %148 = load ptr, ptr @ftable, align 8, !tbaa !11
  %149 = tail call i64 @fwrite(ptr nonnull @.str.13.152, i64 4, i64 1, ptr %148)
  br label %150

150:                                              ; preds = %147, %81
  %151 = load ptr, ptr @ritem, align 8, !tbaa !11
  %152 = icmp eq ptr %151, null
  br i1 %152, label %154, label %153

153:                                              ; preds = %150
  tail call void @free(ptr noundef nonnull %151) #25
  br label %154

154:                                              ; preds = %153, %150
  %155 = load i1, ptr @semantic_parser, align 4
  br i1 %155, label %156, label %187

156:                                              ; preds = %154
  %157 = load ptr, ptr @ftable, align 8, !tbaa !11
  %158 = tail call i64 @fwrite(ptr nonnull @.str.18.156, i64 38, i64 1, ptr %157)
  %159 = load i32, ptr @nstates, align 4, !tbaa !7
  %160 = icmp sgt i32 %159, 1
  br i1 %160, label %161, label %184

161:                                              ; preds = %172, %156
  %162 = phi i64 [ %180, %172 ], [ 1, %156 ]
  %163 = phi i32 [ %173, %172 ], [ 10, %156 ]
  %164 = load ptr, ptr @ftable, align 8, !tbaa !11
  %165 = tail call i32 @putc(i32 noundef 44, ptr noundef %164) #26
  %166 = icmp sgt i32 %163, 9
  br i1 %166, label %167, label %170

167:                                              ; preds = %161
  %168 = load ptr, ptr @ftable, align 8, !tbaa !11
  %169 = tail call i32 @putc(i32 noundef 10, ptr noundef %168) #26
  br label %172

170:                                              ; preds = %161
  %171 = add nuw nsw i32 %163, 1
  br label %172

172:                                              ; preds = %170, %167
  %173 = phi i32 [ 1, %167 ], [ %171, %170 ]
  %174 = load ptr, ptr @ftable, align 8, !tbaa !11
  %175 = load ptr, ptr @accessing_symbol, align 8, !tbaa !11
  %176 = getelementptr inbounds i16, ptr %175, i64 %162
  %177 = load i16, ptr %176, align 2, !tbaa !41
  %178 = sext i16 %177 to i32
  %179 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %174, ptr noundef nonnull @.str.12.151, i32 noundef %178) #26
  %180 = add nuw nsw i64 %162, 1
  %181 = load i32, ptr @nstates, align 4, !tbaa !7
  %182 = sext i32 %181 to i64
  %183 = icmp slt i64 %180, %182
  br i1 %183, label %161, label %184, !llvm.loop !228

184:                                              ; preds = %172, %156
  %185 = load ptr, ptr @ftable, align 8, !tbaa !11
  %186 = tail call i64 @fwrite(ptr nonnull @.str.13.152, i64 4, i64 1, ptr %185)
  br label %187

187:                                              ; preds = %184, %154
  %188 = load ptr, ptr @ftable, align 8, !tbaa !11
  %189 = tail call i64 @fwrite(ptr nonnull @.str.19.153, i64 39, i64 1, ptr %188)
  %190 = load i32, ptr @nrules, align 4, !tbaa !7
  %191 = icmp slt i32 %190, 1
  br i1 %191, label %215, label %192

192:                                              ; preds = %203, %187
  %193 = phi i64 [ %211, %203 ], [ 1, %187 ]
  %194 = phi i32 [ %204, %203 ], [ 10, %187 ]
  %195 = load ptr, ptr @ftable, align 8, !tbaa !11
  %196 = tail call i32 @putc(i32 noundef 44, ptr noundef %195) #26
  %197 = icmp sgt i32 %194, 9
  br i1 %197, label %198, label %201

198:                                              ; preds = %192
  %199 = load ptr, ptr @ftable, align 8, !tbaa !11
  %200 = tail call i32 @putc(i32 noundef 10, ptr noundef %199) #26
  br label %203

201:                                              ; preds = %192
  %202 = add nuw nsw i32 %194, 1
  br label %203

203:                                              ; preds = %201, %198
  %204 = phi i32 [ 1, %198 ], [ %202, %201 ]
  %205 = load ptr, ptr @ftable, align 8, !tbaa !11
  %206 = load ptr, ptr @rline, align 8, !tbaa !11
  %207 = getelementptr inbounds i16, ptr %206, i64 %193
  %208 = load i16, ptr %207, align 2, !tbaa !41
  %209 = sext i16 %208 to i32
  %210 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %205, ptr noundef nonnull @.str.12.151, i32 noundef %209) #26
  %211 = add nuw nsw i64 %193, 1
  %212 = load i32, ptr @nrules, align 4, !tbaa !7
  %213 = sext i32 %212 to i64
  %214 = icmp slt i64 %193, %213
  br i1 %214, label %192, label %215, !llvm.loop !229

215:                                              ; preds = %203, %187
  %216 = load ptr, ptr @ftable, align 8, !tbaa !11
  %217 = tail call i64 @fwrite(ptr nonnull @.str.20.154, i64 50, i64 1, ptr %216)
  %218 = load i32, ptr @ntokens, align 4, !tbaa !7
  %219 = icmp slt i32 %218, 1
  br i1 %219, label %275, label %220

220:                                              ; preds = %268, %215
  %221 = phi i64 [ %271, %268 ], [ 1, %215 ]
  %222 = phi i32 [ %232, %268 ], [ 10, %215 ]
  %223 = load ptr, ptr @ftable, align 8, !tbaa !11
  %224 = tail call i32 @putc(i32 noundef 44, ptr noundef %223) #26
  %225 = icmp sgt i32 %222, 9
  br i1 %225, label %226, label %229

226:                                              ; preds = %220
  %227 = load ptr, ptr @ftable, align 8, !tbaa !11
  %228 = tail call i32 @putc(i32 noundef 10, ptr noundef %227) #26
  br label %231

229:                                              ; preds = %220
  %230 = add nuw nsw i32 %222, 1
  br label %231

231:                                              ; preds = %229, %226
  %232 = phi i32 [ 1, %226 ], [ %230, %229 ]
  %233 = load ptr, ptr @ftable, align 8, !tbaa !11
  %234 = tail call i32 @putc(i32 noundef 34, ptr noundef %233) #26
  %235 = load ptr, ptr @tags, align 8, !tbaa !11
  %236 = getelementptr inbounds ptr, ptr %235, i64 %221
  %237 = load ptr, ptr %236, align 8, !tbaa !11
  %238 = load i8, ptr %237, align 1, !tbaa !13
  %239 = icmp eq i8 %238, 0
  br i1 %239, label %268, label %240

240:                                              ; preds = %264, %231
  %241 = phi i8 [ %266, %264 ], [ %238, %231 ]
  %242 = phi ptr [ %265, %264 ], [ %237, %231 ]
  %243 = sext i8 %241 to i32
  switch i8 %241, label %256 [
    i8 34, label %244
    i8 92, label %244
    i8 10, label %247
    i8 9, label %250
    i8 8, label %253
  ]

244:                                              ; preds = %240, %240
  %245 = load ptr, ptr @ftable, align 8, !tbaa !11
  %246 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %245, ptr noundef nonnull @.str.21.155, i32 noundef %243) #26
  br label %264

247:                                              ; preds = %240
  %248 = load ptr, ptr @ftable, align 8, !tbaa !11
  %249 = tail call i64 @fwrite(ptr nonnull @.str.22, i64 2, i64 1, ptr %248)
  br label %264

250:                                              ; preds = %240
  %251 = load ptr, ptr @ftable, align 8, !tbaa !11
  %252 = tail call i64 @fwrite(ptr nonnull @.str.23, i64 2, i64 1, ptr %251)
  br label %264

253:                                              ; preds = %240
  %254 = load ptr, ptr @ftable, align 8, !tbaa !11
  %255 = tail call i64 @fwrite(ptr nonnull @.str.24, i64 2, i64 1, ptr %254)
  br label %264

256:                                              ; preds = %240
  %257 = add i8 %241, -127
  %258 = icmp ult i8 %257, -95
  %259 = load ptr, ptr @ftable, align 8, !tbaa !11
  br i1 %258, label %260, label %262

260:                                              ; preds = %256
  %261 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %259, ptr noundef nonnull @.str.25, i32 noundef %243) #26
  br label %264

262:                                              ; preds = %256
  %263 = tail call i32 @putc(i32 noundef %243, ptr noundef %259) #26
  br label %264

264:                                              ; preds = %262, %260, %253, %250, %247, %244
  %265 = getelementptr inbounds i8, ptr %242, i64 1
  %266 = load i8, ptr %265, align 1, !tbaa !13
  %267 = icmp eq i8 %266, 0
  br i1 %267, label %268, label %240, !llvm.loop !230

268:                                              ; preds = %264, %231
  %269 = load ptr, ptr @ftable, align 8, !tbaa !11
  %270 = tail call i32 @putc(i32 noundef 34, ptr noundef %269) #26
  %271 = add nuw nsw i64 %221, 1
  %272 = load i32, ptr @ntokens, align 4, !tbaa !7
  %273 = sext i32 %272 to i64
  %274 = icmp slt i64 %221, %273
  br i1 %274, label %220, label %275, !llvm.loop !231

275:                                              ; preds = %268, %215
  %276 = load ptr, ptr @ftable, align 8, !tbaa !11
  %277 = tail call i64 @fwrite(ptr nonnull @.str.26, i64 40, i64 1, ptr %276)
  %278 = load i32, ptr @nrules, align 4, !tbaa !7
  %279 = icmp slt i32 %278, 1
  br i1 %279, label %303, label %280

280:                                              ; preds = %291, %275
  %281 = phi i64 [ %299, %291 ], [ 1, %275 ]
  %282 = phi i32 [ %292, %291 ], [ 10, %275 ]
  %283 = load ptr, ptr @ftable, align 8, !tbaa !11
  %284 = tail call i32 @putc(i32 noundef 44, ptr noundef %283) #26
  %285 = icmp sgt i32 %282, 9
  br i1 %285, label %286, label %289

286:                                              ; preds = %280
  %287 = load ptr, ptr @ftable, align 8, !tbaa !11
  %288 = tail call i32 @putc(i32 noundef 10, ptr noundef %287) #26
  br label %291

289:                                              ; preds = %280
  %290 = add nuw nsw i32 %282, 1
  br label %291

291:                                              ; preds = %289, %286
  %292 = phi i32 [ 1, %286 ], [ %290, %289 ]
  %293 = load ptr, ptr @ftable, align 8, !tbaa !11
  %294 = load ptr, ptr @rlhs, align 8, !tbaa !11
  %295 = getelementptr inbounds i16, ptr %294, i64 %281
  %296 = load i16, ptr %295, align 2, !tbaa !41
  %297 = sext i16 %296 to i32
  %298 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %293, ptr noundef nonnull @.str.12.151, i32 noundef %297) #26
  %299 = add nuw nsw i64 %281, 1
  %300 = load i32, ptr @nrules, align 4, !tbaa !7
  %301 = sext i32 %300 to i64
  %302 = icmp slt i64 %281, %301
  br i1 %302, label %280, label %303, !llvm.loop !232

303:                                              ; preds = %291, %275
  %304 = load ptr, ptr @rlhs, align 8, !tbaa !11
  %305 = getelementptr inbounds i16, ptr %304, i64 1
  tail call void @free(ptr noundef nonnull %305) #25
  %306 = load ptr, ptr @ftable, align 8, !tbaa !11
  %307 = tail call i64 @fwrite(ptr nonnull @.str.27, i64 40, i64 1, ptr %306)
  %308 = load i32, ptr @nrules, align 4, !tbaa !7
  %309 = icmp sgt i32 %308, 1
  br i1 %309, label %313, label %310

310:                                              ; preds = %303
  %311 = load ptr, ptr @ftable, align 8, !tbaa !11
  %312 = tail call i32 @putc(i32 noundef 44, ptr noundef %311) #26
  br label %345

313:                                              ; preds = %324, %303
  %314 = phi i64 [ %328, %324 ], [ 1, %303 ]
  %315 = phi i32 [ %325, %324 ], [ 10, %303 ]
  %316 = load ptr, ptr @ftable, align 8, !tbaa !11
  %317 = tail call i32 @putc(i32 noundef 44, ptr noundef %316) #26
  %318 = icmp sgt i32 %315, 9
  br i1 %318, label %319, label %322

319:                                              ; preds = %313
  %320 = load ptr, ptr @ftable, align 8, !tbaa !11
  %321 = tail call i32 @putc(i32 noundef 10, ptr noundef %320) #26
  br label %324

322:                                              ; preds = %313
  %323 = add nuw nsw i32 %315, 1
  br label %324

324:                                              ; preds = %322, %319
  %325 = phi i32 [ 1, %319 ], [ %323, %322 ]
  %326 = load ptr, ptr @ftable, align 8, !tbaa !11
  %327 = load ptr, ptr @rrhs, align 8, !tbaa !11
  %328 = add nuw nsw i64 %314, 1
  %329 = getelementptr inbounds i16, ptr %327, i64 %328
  %330 = load i16, ptr %329, align 2, !tbaa !41
  %331 = sext i16 %330 to i32
  %332 = getelementptr inbounds i16, ptr %327, i64 %314
  %333 = load i16, ptr %332, align 2, !tbaa !41
  %334 = xor i16 %333, -1
  %335 = sext i16 %334 to i32
  %336 = add nsw i32 %335, %331
  %337 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %326, ptr noundef nonnull @.str.12.151, i32 noundef %336) #26
  %338 = load i32, ptr @nrules, align 4, !tbaa !7
  %339 = sext i32 %338 to i64
  %340 = icmp slt i64 %328, %339
  br i1 %340, label %313, label %341, !llvm.loop !233

341:                                              ; preds = %324
  %.lcssa7 = phi i32 [ %325, %324 ]
  %342 = load ptr, ptr @ftable, align 8, !tbaa !11
  %343 = tail call i32 @putc(i32 noundef 44, ptr noundef %342) #26
  %344 = icmp sgt i32 %.lcssa7, 9
  br i1 %344, label %345, label %348

345:                                              ; preds = %341, %310
  %346 = load ptr, ptr @ftable, align 8, !tbaa !11
  %347 = tail call i32 @putc(i32 noundef 10, ptr noundef %346) #26
  br label %348

348:                                              ; preds = %345, %341
  %349 = load ptr, ptr @ftable, align 8, !tbaa !11
  %350 = load i32, ptr @nitems, align 4, !tbaa !7
  %351 = load ptr, ptr @rrhs, align 8, !tbaa !11
  %352 = load i32, ptr @nrules, align 4, !tbaa !7
  %353 = sext i32 %352 to i64
  %354 = getelementptr inbounds i16, ptr %351, i64 %353
  %355 = load i16, ptr %354, align 2, !tbaa !41
  %356 = xor i16 %355, -1
  %357 = sext i16 %356 to i32
  %358 = add i32 %350, %357
  %359 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %349, ptr noundef nonnull @.str.28, i32 noundef %358) #26
  %360 = load ptr, ptr @rrhs, align 8, !tbaa !11
  %361 = getelementptr inbounds i16, ptr %360, i64 1
  tail call void @free(ptr noundef nonnull %361) #25
  %362 = load i32, ptr @nstates, align 4, !tbaa !7
  %363 = load i32, ptr @nvars, align 4, !tbaa !7
  %364 = add nsw i32 %363, %362
  store i32 %364, ptr @nvectors, align 4, !tbaa !7
  %365 = shl i32 %364, 3
  %366 = tail call fastcc ptr @mallocate(i32 noundef %365) #25
  store ptr %366, ptr @froms, align 8, !tbaa !11
  %367 = load i32, ptr @nvectors, align 4, !tbaa !7
  %368 = shl i32 %367, 3
  %369 = tail call fastcc ptr @mallocate(i32 noundef %368) #25
  store ptr %369, ptr @tos, align 8, !tbaa !11
  %370 = load i32, ptr @nvectors, align 4, !tbaa !7
  %371 = shl i32 %370, 1
  %372 = tail call fastcc ptr @mallocate(i32 noundef %371) #25
  store ptr %372, ptr @tally, align 8, !tbaa !11
  %373 = load i32, ptr @nvectors, align 4, !tbaa !7
  %374 = shl i32 %373, 1
  %375 = tail call fastcc ptr @mallocate(i32 noundef %374) #25
  store ptr %375, ptr @width, align 8, !tbaa !11
  %376 = load i32, ptr @ntokens, align 4, !tbaa !7
  %377 = shl i32 %376, 1
  %378 = tail call fastcc ptr @mallocate(i32 noundef %377) #25
  store ptr %378, ptr @actrow, align 8, !tbaa !11
  %379 = tail call fastcc i32 @action_row(i32 noundef 0) #26, !range !234
  %380 = load ptr, ptr @ftable, align 8, !tbaa !11
  %381 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %380, ptr noundef nonnull @.str.32, i32 noundef %379) #26
  tail call fastcc void @save_row(i32 noundef 0) #26
  %382 = load i32, ptr @nstates, align 4, !tbaa !7
  %383 = icmp sgt i32 %382, 1
  br i1 %383, label %384, label %403

384:                                              ; preds = %395, %348
  %385 = phi i32 [ %396, %395 ], [ 10, %348 ]
  %386 = phi i32 [ %400, %395 ], [ 1, %348 ]
  %387 = load ptr, ptr @ftable, align 8, !tbaa !11
  %388 = tail call i32 @putc(i32 noundef 44, ptr noundef %387) #26
  %389 = icmp sgt i32 %385, 9
  br i1 %389, label %390, label %393

390:                                              ; preds = %384
  %391 = load ptr, ptr @ftable, align 8, !tbaa !11
  %392 = tail call i32 @putc(i32 noundef 10, ptr noundef %391) #26
  br label %395

393:                                              ; preds = %384
  %394 = add nuw nsw i32 %385, 1
  br label %395

395:                                              ; preds = %393, %390
  %396 = phi i32 [ 1, %390 ], [ %394, %393 ]
  %397 = tail call fastcc i32 @action_row(i32 noundef %386) #26, !range !234
  %398 = load ptr, ptr @ftable, align 8, !tbaa !11
  %399 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %398, ptr noundef nonnull @.str.12.151, i32 noundef %397) #26
  tail call fastcc void @save_row(i32 noundef %386) #26
  %400 = add nuw nsw i32 %386, 1
  %401 = load i32, ptr @nstates, align 4, !tbaa !7
  %402 = icmp slt i32 %400, %401
  br i1 %402, label %384, label %403, !llvm.loop !235

403:                                              ; preds = %395, %348
  %404 = load ptr, ptr @ftable, align 8, !tbaa !11
  %405 = tail call i64 @fwrite(ptr nonnull @.str.13.152, i64 4, i64 1, ptr %404)
  %406 = load ptr, ptr @actrow, align 8, !tbaa !11
  %407 = icmp eq ptr %406, null
  br i1 %407, label %409, label %408

408:                                              ; preds = %403
  tail call void @free(ptr noundef nonnull %406) #25
  br label %409

409:                                              ; preds = %408, %403
  %410 = load ptr, ptr @shift_table, align 8, !tbaa !11
  %411 = icmp eq ptr %410, null
  br i1 %411, label %413, label %412

412:                                              ; preds = %409
  tail call void @free(ptr noundef nonnull %410) #25
  br label %413

413:                                              ; preds = %412, %409
  %414 = load ptr, ptr @first_shift, align 8, !tbaa !11
  %415 = icmp eq ptr %414, null
  br i1 %415, label %420, label %416

416:                                              ; preds = %416, %413
  %417 = phi ptr [ %418, %416 ], [ %414, %413 ]
  %418 = load ptr, ptr %417, align 8, !tbaa !112
  tail call void @free(ptr noundef nonnull %417) #25
  %419 = icmp eq ptr %418, null
  br i1 %419, label %420, label %416, !llvm.loop !236

420:                                              ; preds = %416, %413
  %421 = load ptr, ptr @reduction_table, align 8, !tbaa !11
  %422 = icmp eq ptr %421, null
  br i1 %422, label %424, label %423

423:                                              ; preds = %420
  tail call void @free(ptr noundef nonnull %421) #25
  br label %424

424:                                              ; preds = %423, %420
  %425 = load ptr, ptr @first_reduction, align 8, !tbaa !11
  %426 = icmp eq ptr %425, null
  br i1 %426, label %431, label %427

427:                                              ; preds = %427, %424
  %428 = phi ptr [ %429, %427 ], [ %425, %424 ]
  %429 = load ptr, ptr %428, align 8, !tbaa !237
  tail call void @free(ptr noundef nonnull %428) #25
  %430 = icmp eq ptr %429, null
  br i1 %430, label %431, label %427, !llvm.loop !238

431:                                              ; preds = %427, %424
  %432 = load ptr, ptr @lookaheads, align 8, !tbaa !11
  %433 = icmp eq ptr %432, null
  br i1 %433, label %435, label %434

434:                                              ; preds = %431
  tail call void @free(ptr noundef nonnull %432) #25
  br label %435

435:                                              ; preds = %434, %431
  %436 = load ptr, ptr @LA, align 8, !tbaa !11
  %437 = icmp eq ptr %436, null
  br i1 %437, label %439, label %438

438:                                              ; preds = %435
  tail call void @free(ptr noundef nonnull %436) #25
  br label %439

439:                                              ; preds = %438, %435
  %440 = load ptr, ptr @LAruleno, align 8, !tbaa !11
  %441 = icmp eq ptr %440, null
  br i1 %441, label %443, label %442

442:                                              ; preds = %439
  tail call void @free(ptr noundef nonnull %440) #25
  br label %443

443:                                              ; preds = %442, %439
  %444 = load ptr, ptr @accessing_symbol, align 8, !tbaa !11
  %445 = icmp eq ptr %444, null
  br i1 %445, label %447, label %446

446:                                              ; preds = %443
  tail call void @free(ptr noundef nonnull %444) #25
  br label %447

447:                                              ; preds = %446, %443
  %448 = load i32, ptr @nstates, align 4, !tbaa !7
  %449 = shl i32 %448, 1
  %450 = tail call fastcc ptr @mallocate(i32 noundef %449) #25
  store ptr %450, ptr @state_count, align 8, !tbaa !11
  %451 = load i32, ptr @ntokens, align 4, !tbaa !7
  %452 = tail call fastcc i32 @default_goto(i32 noundef %451) #26
  %453 = load ptr, ptr @ftable, align 8, !tbaa !11
  %454 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %453, ptr noundef nonnull @.str.33, i32 noundef %452) #26
  %455 = load i32, ptr @ntokens, align 4, !tbaa !7
  tail call fastcc void @save_column(i32 noundef %455, i32 noundef %452) #26
  %456 = load i32, ptr @ntokens, align 4, !tbaa !7
  %457 = add nsw i32 %456, 1
  %458 = load i32, ptr @nsyms, align 4, !tbaa !7
  %459 = icmp slt i32 %457, %458
  br i1 %459, label %460, label %479

460:                                              ; preds = %471, %447
  %461 = phi i32 [ %476, %471 ], [ %457, %447 ]
  %462 = phi i32 [ %472, %471 ], [ 10, %447 ]
  %463 = load ptr, ptr @ftable, align 8, !tbaa !11
  %464 = tail call i32 @putc(i32 noundef 44, ptr noundef %463) #26
  %465 = icmp sgt i32 %462, 9
  br i1 %465, label %466, label %469

466:                                              ; preds = %460
  %467 = load ptr, ptr @ftable, align 8, !tbaa !11
  %468 = tail call i32 @putc(i32 noundef 10, ptr noundef %467) #26
  br label %471

469:                                              ; preds = %460
  %470 = add nuw nsw i32 %462, 1
  br label %471

471:                                              ; preds = %469, %466
  %472 = phi i32 [ 1, %466 ], [ %470, %469 ]
  %473 = tail call fastcc i32 @default_goto(i32 noundef %461) #26
  %474 = load ptr, ptr @ftable, align 8, !tbaa !11
  %475 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %474, ptr noundef nonnull @.str.12.151, i32 noundef %473) #26
  tail call fastcc void @save_column(i32 noundef %461, i32 noundef %473) #26
  %476 = add nsw i32 %461, 1
  %477 = load i32, ptr @nsyms, align 4, !tbaa !7
  %478 = icmp slt i32 %476, %477
  br i1 %478, label %460, label %479, !llvm.loop !239

479:                                              ; preds = %471, %447
  %480 = load ptr, ptr @ftable, align 8, !tbaa !11
  %481 = tail call i64 @fwrite(ptr nonnull @.str.13.152, i64 4, i64 1, ptr %480)
  %482 = load ptr, ptr @state_count, align 8, !tbaa !11
  %483 = icmp eq ptr %482, null
  br i1 %483, label %485, label %484

484:                                              ; preds = %479
  tail call void @free(ptr noundef nonnull %482) #25
  br label %485

485:                                              ; preds = %484, %479
  %486 = load ptr, ptr @goto_map, align 8, !tbaa !11
  %487 = icmp eq ptr %486, null
  br i1 %487, label %492, label %488

488:                                              ; preds = %485
  %489 = load i32, ptr @ntokens, align 4, !tbaa !7
  %490 = sext i32 %489 to i64
  %491 = getelementptr inbounds i16, ptr %486, i64 %490
  tail call void @free(ptr noundef %491) #25
  br label %492

492:                                              ; preds = %488, %485
  %493 = load ptr, ptr @from_state, align 8, !tbaa !11
  %494 = icmp eq ptr %493, null
  br i1 %494, label %496, label %495

495:                                              ; preds = %492
  tail call void @free(ptr noundef nonnull %493) #25
  br label %496

496:                                              ; preds = %495, %492
  %497 = load ptr, ptr @to_state, align 8, !tbaa !11
  %498 = icmp eq ptr %497, null
  br i1 %498, label %500, label %499

499:                                              ; preds = %496
  tail call void @free(ptr noundef nonnull %497) #25
  br label %500

500:                                              ; preds = %499, %496
  %501 = load i32, ptr @nvectors, align 4, !tbaa !7
  %502 = shl i32 %501, 1
  %503 = tail call fastcc ptr @mallocate(i32 noundef %502) #25
  store ptr %503, ptr @order, align 8, !tbaa !11
  store i32 0, ptr @nentries, align 4, !tbaa !7
  %504 = load i32, ptr @nvectors, align 4, !tbaa !7
  %505 = icmp sgt i32 %504, 0
  br i1 %505, label %506, label %582

506:                                              ; preds = %500
  %507 = load ptr, ptr @tally, align 8, !tbaa !11
  %508 = load ptr, ptr @width, align 8
  %509 = zext i32 %504 to i64
  br label %510

510:                                              ; preds = %578, %506
  %511 = phi i64 [ 0, %506 ], [ %580, %578 ]
  %512 = phi i32 [ 0, %506 ], [ %579, %578 ]
  %513 = getelementptr inbounds i16, ptr %507, i64 %511
  %514 = load i16, ptr %513, align 2, !tbaa !41
  %515 = icmp sgt i16 %514, 0
  br i1 %515, label %516, label %578

516:                                              ; preds = %510
  %517 = getelementptr inbounds i16, ptr %508, i64 %511
  %518 = load i16, ptr %517, align 2, !tbaa !41
  %519 = zext i32 %512 to i64
  %520 = tail call i32 @llvm.smin.i32(i32 %512, i32 0)
  %521 = add i32 %520, -1
  br label %522

522:                                              ; preds = %526, %516
  %523 = phi i64 [ %527, %526 ], [ %519, %516 ]
  %524 = trunc i64 %523 to i32
  %525 = icmp sgt i32 %524, 0
  br i1 %525, label %526, label %555

526:                                              ; preds = %522
  %527 = add nsw i64 %523, -1
  %528 = and i64 %527, 4294967295
  %529 = getelementptr inbounds i16, ptr %503, i64 %528
  %530 = load i16, ptr %529, align 2, !tbaa !41
  %531 = sext i16 %530 to i64
  %532 = getelementptr inbounds i16, ptr %508, i64 %531
  %533 = load i16, ptr %532, align 2, !tbaa !41
  %534 = icmp slt i16 %533, %518
  br i1 %534, label %522, label %535, !llvm.loop !240

535:                                              ; preds = %526
  %.lcssa6 = phi i64 [ %527, %526 ]
  %536 = trunc i64 %.lcssa6 to i32
  %537 = tail call i32 @llvm.smin.i32(i32 %536, i32 0)
  %538 = add i32 %537, -1
  br label %539

539:                                              ; preds = %552, %535
  %540 = phi i32 [ %553, %552 ], [ %536, %535 ]
  %541 = zext i32 %540 to i64
  %542 = getelementptr inbounds i16, ptr %503, i64 %541
  %543 = load i16, ptr %542, align 2, !tbaa !41
  %544 = sext i16 %543 to i64
  %545 = getelementptr inbounds i16, ptr %508, i64 %544
  %546 = load i16, ptr %545, align 2, !tbaa !41
  %547 = icmp eq i16 %546, %518
  br i1 %547, label %548, label %555

548:                                              ; preds = %539
  %549 = getelementptr inbounds i16, ptr %507, i64 %544
  %550 = load i16, ptr %549, align 2, !tbaa !41
  %551 = icmp slt i16 %550, %514
  br i1 %551, label %552, label %555

552:                                              ; preds = %548
  %553 = add nsw i32 %540, -1
  %554 = icmp sgt i32 %540, 0
  br i1 %554, label %539, label %555, !llvm.loop !241

555:                                              ; preds = %552, %548, %539, %522
  %556 = phi i32 [ %540, %548 ], [ %538, %552 ], [ %540, %539 ], [ %521, %522 ]
  %557 = add nsw i32 %512, -1
  %558 = icmp sgt i32 %557, %556
  br i1 %558, label %559, label %572

559:                                              ; preds = %555
  %560 = sext i32 %557 to i64
  %561 = sext i32 %556 to i64
  br label %562

562:                                              ; preds = %562, %559
  %563 = phi i64 [ %560, %559 ], [ %569, %562 ]
  %564 = phi i32 [ %512, %559 ], [ %571, %562 ]
  %565 = getelementptr inbounds i16, ptr %503, i64 %563
  %566 = load i16, ptr %565, align 2, !tbaa !41
  %567 = sext i32 %564 to i64
  %568 = getelementptr inbounds i16, ptr %503, i64 %567
  store i16 %566, ptr %568, align 2, !tbaa !41
  %569 = add nsw i64 %563, -1
  %570 = icmp sgt i64 %569, %561
  %571 = trunc i64 %563 to i32
  br i1 %570, label %562, label %572, !llvm.loop !242

572:                                              ; preds = %562, %555
  %573 = trunc i64 %511 to i16
  %574 = add nsw i32 %556, 1
  %575 = sext i32 %574 to i64
  %576 = getelementptr inbounds i16, ptr %503, i64 %575
  store i16 %573, ptr %576, align 2, !tbaa !41
  %577 = add nsw i32 %512, 1
  store i32 %577, ptr @nentries, align 4, !tbaa !7
  br label %578

578:                                              ; preds = %572, %510
  %579 = phi i32 [ %512, %510 ], [ %577, %572 ]
  %580 = add nuw nsw i64 %511, 1
  %581 = icmp eq i64 %580, %509
  br i1 %581, label %582, label %510, !llvm.loop !243

582:                                              ; preds = %578, %500
  %583 = shl i32 %504, 1
  %584 = tail call fastcc ptr @mallocate(i32 noundef %583) #25
  store ptr %584, ptr @base, align 8, !tbaa !11
  %585 = load i32, ptr @nentries, align 4, !tbaa !7
  %586 = shl i32 %585, 1
  %587 = tail call fastcc ptr @mallocate(i32 noundef %586) #25
  store ptr %587, ptr @pos, align 8, !tbaa !11
  %588 = tail call fastcc ptr @mallocate(i32 noundef 65534) #25
  store ptr %588, ptr @table, align 8, !tbaa !11
  %589 = tail call fastcc ptr @mallocate(i32 noundef 65534) #25
  store ptr %589, ptr @check, align 8, !tbaa !11
  store i32 0, ptr @high, align 4, !tbaa !7
  %590 = load i32, ptr @nvectors, align 4, !tbaa !7
  %591 = icmp sgt i32 %590, 0
  br i1 %591, label %592, label %646

592:                                              ; preds = %582
  %593 = load ptr, ptr @base, align 8, !tbaa !11
  %594 = zext i32 %590 to i64
  %595 = add nuw nsw i64 %594, 7
  %596 = and i64 %595, 8589934584
  %597 = add nsw i64 %594, -1
  %598 = insertelement <8 x i64> poison, i64 %597, i64 0
  %599 = shufflevector <8 x i64> %598, <8 x i64> poison, <8 x i32> zeroinitializer
  br label %600

600:                                              ; preds = %642, %592
  %601 = phi i64 [ 0, %592 ], [ %643, %642 ]
  %602 = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %592 ], [ %644, %642 ]
  %603 = icmp ule <8 x i64> %602, %599
  %604 = extractelement <8 x i1> %603, i64 0
  br i1 %604, label %605, label %607

605:                                              ; preds = %600
  %606 = getelementptr inbounds i16, ptr %593, i64 %601
  store i16 -32768, ptr %606, align 2, !tbaa !41
  br label %607

607:                                              ; preds = %605, %600
  %608 = extractelement <8 x i1> %603, i64 1
  br i1 %608, label %609, label %612

609:                                              ; preds = %607
  %610 = or i64 %601, 1
  %611 = getelementptr inbounds i16, ptr %593, i64 %610
  store i16 -32768, ptr %611, align 2, !tbaa !41
  br label %612

612:                                              ; preds = %609, %607
  %613 = extractelement <8 x i1> %603, i64 2
  br i1 %613, label %614, label %617

614:                                              ; preds = %612
  %615 = or i64 %601, 2
  %616 = getelementptr inbounds i16, ptr %593, i64 %615
  store i16 -32768, ptr %616, align 2, !tbaa !41
  br label %617

617:                                              ; preds = %614, %612
  %618 = extractelement <8 x i1> %603, i64 3
  br i1 %618, label %619, label %622

619:                                              ; preds = %617
  %620 = or i64 %601, 3
  %621 = getelementptr inbounds i16, ptr %593, i64 %620
  store i16 -32768, ptr %621, align 2, !tbaa !41
  br label %622

622:                                              ; preds = %619, %617
  %623 = extractelement <8 x i1> %603, i64 4
  br i1 %623, label %624, label %627

624:                                              ; preds = %622
  %625 = or i64 %601, 4
  %626 = getelementptr inbounds i16, ptr %593, i64 %625
  store i16 -32768, ptr %626, align 2, !tbaa !41
  br label %627

627:                                              ; preds = %624, %622
  %628 = extractelement <8 x i1> %603, i64 5
  br i1 %628, label %629, label %632

629:                                              ; preds = %627
  %630 = or i64 %601, 5
  %631 = getelementptr inbounds i16, ptr %593, i64 %630
  store i16 -32768, ptr %631, align 2, !tbaa !41
  br label %632

632:                                              ; preds = %629, %627
  %633 = extractelement <8 x i1> %603, i64 6
  br i1 %633, label %634, label %637

634:                                              ; preds = %632
  %635 = or i64 %601, 6
  %636 = getelementptr inbounds i16, ptr %593, i64 %635
  store i16 -32768, ptr %636, align 2, !tbaa !41
  br label %637

637:                                              ; preds = %634, %632
  %638 = extractelement <8 x i1> %603, i64 7
  br i1 %638, label %639, label %642

639:                                              ; preds = %637
  %640 = or i64 %601, 7
  %641 = getelementptr inbounds i16, ptr %593, i64 %640
  store i16 -32768, ptr %641, align 2, !tbaa !41
  br label %642

642:                                              ; preds = %639, %637
  %643 = add nuw nsw i64 %601, 8
  %644 = add <8 x i64> %602, <i64 8, i64 8, i64 8, i64 8, i64 8, i64 8, i64 8, i64 8>
  %645 = icmp eq i64 %643, %596
  br i1 %645, label %646, label %600, !llvm.loop !244

646:                                              ; preds = %642, %582
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(65534) %589, i8 -1, i64 65534, i1 false), !tbaa !41
  %647 = load i32, ptr @nentries, align 4, !tbaa !7
  %648 = icmp sgt i32 %647, 0
  %649 = load ptr, ptr @froms, align 8
  br i1 %648, label %650, label %660

650:                                              ; preds = %646
  %651 = load ptr, ptr @order, align 8, !tbaa !11
  %652 = load i32, ptr @nstates, align 4, !tbaa !7
  %653 = load ptr, ptr @tally, align 8
  %654 = load ptr, ptr @width, align 8
  %655 = load ptr, ptr @tos, align 8
  %656 = load ptr, ptr @base, align 8
  %657 = load ptr, ptr @table, align 8
  %658 = load ptr, ptr @pos, align 8
  %659 = zext i32 %647 to i64
  br label %664

660:                                              ; preds = %823, %646
  br i1 %591, label %661, label %849

661:                                              ; preds = %660
  %662 = load ptr, ptr @tos, align 8, !tbaa !11
  %663 = zext i32 %590 to i64
  br label %835

664:                                              ; preds = %823, %650
  %665 = phi i32 [ %824, %823 ], [ 0, %650 ]
  %666 = phi i32 [ %825, %823 ], [ 0, %650 ]
  %667 = phi i64 [ %833, %823 ], [ 0, %650 ]
  %668 = shl i64 %667, 32
  %669 = ashr exact i64 %668, 32
  %670 = getelementptr inbounds i16, ptr %651, i64 %669
  %671 = load i16, ptr %670, align 2, !tbaa !41
  %672 = sext i16 %671 to i32
  %673 = icmp sgt i32 %652, %672
  %674 = sext i16 %671 to i64
  %675 = getelementptr inbounds i16, ptr %653, i64 %674
  %676 = load i16, ptr %675, align 2, !tbaa !41
  br i1 %673, label %679, label %677

677:                                              ; preds = %664
  %678 = sext i16 %676 to i64
  br label %728

679:                                              ; preds = %664
  %680 = getelementptr inbounds i16, ptr %654, i64 %674
  %681 = load i16, ptr %680, align 2, !tbaa !41
  %682 = icmp sgt i16 %676, 0
  %683 = getelementptr inbounds ptr, ptr %655, i64 %674
  %684 = getelementptr inbounds ptr, ptr %649, i64 %674
  %685 = sext i16 %676 to i64
  %686 = icmp eq i64 %667, 0
  br i1 %686, label %728, label %687

687:                                              ; preds = %724, %679
  %688 = phi i64 [ %689, %724 ], [ %667, %679 ]
  %689 = add nsw i64 %688, -1
  %690 = getelementptr inbounds i16, ptr %651, i64 %689
  %691 = load i16, ptr %690, align 2, !tbaa !41
  %692 = sext i16 %691 to i64
  %693 = getelementptr inbounds i16, ptr %654, i64 %692
  %694 = load i16, ptr %693, align 2, !tbaa !41
  %695 = icmp eq i16 %694, %681
  br i1 %695, label %696, label %728

696:                                              ; preds = %687
  %697 = getelementptr inbounds i16, ptr %653, i64 %692
  %698 = load i16, ptr %697, align 2, !tbaa !41
  %699 = icmp eq i16 %698, %676
  br i1 %699, label %700, label %728

700:                                              ; preds = %696
  br i1 %682, label %701, label %726

701:                                              ; preds = %700
  %702 = getelementptr inbounds ptr, ptr %655, i64 %692
  %703 = load ptr, ptr %702, align 8, !tbaa !11
  %704 = load ptr, ptr %683, align 8, !tbaa !11
  %705 = getelementptr inbounds ptr, ptr %649, i64 %692
  br label %706

706:                                              ; preds = %721, %701
  %707 = phi i64 [ 0, %701 ], [ %722, %721 ]
  %708 = getelementptr inbounds i16, ptr %703, i64 %707
  %709 = load i16, ptr %708, align 2, !tbaa !41
  %710 = getelementptr inbounds i16, ptr %704, i64 %707
  %711 = load i16, ptr %710, align 2, !tbaa !41
  %712 = icmp eq i16 %709, %711
  br i1 %712, label %713, label %724

713:                                              ; preds = %706
  %714 = load ptr, ptr %705, align 8, !tbaa !11
  %715 = getelementptr inbounds i16, ptr %714, i64 %707
  %716 = load i16, ptr %715, align 2, !tbaa !41
  %717 = load ptr, ptr %684, align 8, !tbaa !11
  %718 = getelementptr inbounds i16, ptr %717, i64 %707
  %719 = load i16, ptr %718, align 2, !tbaa !41
  %720 = icmp eq i16 %716, %719
  br i1 %720, label %721, label %724

721:                                              ; preds = %713
  %722 = add nuw nsw i64 %707, 1
  %723 = icmp eq i64 %722, %685
  br i1 %723, label %726, label %706, !llvm.loop !245

724:                                              ; preds = %713, %706
  %725 = icmp sgt i64 %688, 1
  br i1 %725, label %687, label %728, !llvm.loop !246

726:                                              ; preds = %721, %700
  %.lcssa1 = phi i16 [ %691, %721 ], [ %691, %700 ]
  %.lcssa = phi i64 [ %692, %721 ], [ %692, %700 ]
  %727 = icmp slt i16 %.lcssa1, 0
  br i1 %727, label %728, label %818

728:                                              ; preds = %726, %724, %696, %687, %679, %677
  %729 = phi i64 [ %678, %677 ], [ %685, %679 ], [ %685, %726 ], [ %685, %687 ], [ %685, %696 ], [ %685, %724 ]
  %730 = icmp eq i16 %676, 0
  br i1 %730, label %731, label %732

731:                                              ; preds = %728
  tail call fastcc void @berror(ptr noundef nonnull @.str.34) #25
  unreachable

732:                                              ; preds = %728
  %733 = getelementptr inbounds ptr, ptr %649, i64 %674
  %734 = load ptr, ptr %733, align 8, !tbaa !11
  %735 = getelementptr inbounds ptr, ptr %655, i64 %674
  %736 = load ptr, ptr %735, align 8, !tbaa !11
  %737 = load i16, ptr %734, align 2, !tbaa !41
  %738 = sext i16 %737 to i32
  %739 = sub nsw i32 %666, %738
  %740 = icmp slt i32 %739, 32767
  br i1 %740, label %741, label %817

741:                                              ; preds = %732
  %742 = icmp sgt i16 %676, 0
  %743 = icmp ne i64 %667, 0
  br label %744

744:                                              ; preds = %814, %741
  %745 = phi i32 [ %739, %741 ], [ %815, %814 ]
  %746 = phi i32 [ undef, %741 ], [ %748, %814 ]
  br i1 %742, label %751, label %747

747:                                              ; preds = %760, %744
  %748 = phi i32 [ %746, %744 ], [ %756, %760 ]
  %749 = phi i1 [ true, %744 ], [ %764, %760 ]
  %750 = and i1 %743, %749
  br i1 %750, label %768, label %777

751:                                              ; preds = %760, %744
  %752 = phi i64 [ %765, %760 ], [ 0, %744 ]
  %753 = getelementptr inbounds i16, ptr %734, i64 %752
  %754 = load i16, ptr %753, align 2, !tbaa !41
  %755 = sext i16 %754 to i32
  %756 = add nsw i32 %745, %755
  %757 = icmp sgt i32 %756, 32767
  br i1 %757, label %758, label %760

758:                                              ; preds = %751
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %1) #32
  %759 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) @.str.35, i32 noundef 32767, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #25
  call fastcc void @fatal(ptr noundef nonnull %1) #26
  unreachable

760:                                              ; preds = %751
  %761 = sext i32 %756 to i64
  %762 = getelementptr inbounds i16, ptr %657, i64 %761
  %763 = load i16, ptr %762, align 2, !tbaa !41
  %764 = icmp eq i16 %763, 0
  %765 = add nuw nsw i64 %752, 1
  %766 = icmp slt i64 %765, %729
  %767 = select i1 %764, i1 %766, i1 false
  br i1 %767, label %751, label %747, !llvm.loop !247

768:                                              ; preds = %768, %747
  %769 = phi i64 [ %774, %768 ], [ 0, %747 ]
  %770 = getelementptr inbounds i16, ptr %658, i64 %769
  %771 = load i16, ptr %770, align 2, !tbaa !41
  %772 = sext i16 %771 to i32
  %773 = icmp ne i32 %745, %772
  %774 = add nuw nsw i64 %769, 1
  %775 = icmp ult i64 %774, %669
  %776 = select i1 %773, i1 %775, i1 false
  br i1 %776, label %768, label %777, !llvm.loop !248

777:                                              ; preds = %768, %747
  %778 = phi i1 [ %749, %747 ], [ %773, %768 ]
  br i1 %778, label %779, label %814

779:                                              ; preds = %777
  %.lcssa4 = phi i32 [ %748, %777 ]
  %.lcssa3 = phi i32 [ %745, %777 ]
  br i1 %742, label %780, label %782

780:                                              ; preds = %779
  %781 = and i64 %729, 4294967295
  br label %788

782:                                              ; preds = %788, %779
  %783 = phi i32 [ %.lcssa4, %779 ], [ %793, %788 ]
  %784 = sext i32 %666 to i64
  %785 = getelementptr inbounds i16, ptr %657, i64 %784
  %786 = load i16, ptr %785, align 2, !tbaa !41
  %787 = icmp eq i16 %786, 0
  br i1 %787, label %810, label %802

788:                                              ; preds = %788, %780
  %789 = phi i64 [ 0, %780 ], [ %800, %788 ]
  %790 = getelementptr inbounds i16, ptr %734, i64 %789
  %791 = load i16, ptr %790, align 2, !tbaa !41
  %792 = sext i16 %791 to i32
  %793 = add nsw i32 %.lcssa3, %792
  %794 = getelementptr inbounds i16, ptr %736, i64 %789
  %795 = load i16, ptr %794, align 2, !tbaa !41
  %796 = sext i32 %793 to i64
  %797 = getelementptr inbounds i16, ptr %657, i64 %796
  store i16 %795, ptr %797, align 2, !tbaa !41
  %798 = load i16, ptr %790, align 2, !tbaa !41
  %799 = getelementptr inbounds i16, ptr %589, i64 %796
  store i16 %798, ptr %799, align 2, !tbaa !41
  %800 = add nuw nsw i64 %789, 1
  %801 = icmp eq i64 %800, %781
  br i1 %801, label %782, label %788, !llvm.loop !249

802:                                              ; preds = %802, %782
  %803 = phi i64 [ %804, %802 ], [ %784, %782 ]
  %804 = add i64 %803, 1
  %805 = getelementptr inbounds i16, ptr %657, i64 %804
  %806 = load i16, ptr %805, align 2, !tbaa !41
  %807 = icmp eq i16 %806, 0
  br i1 %807, label %808, label %802, !llvm.loop !250

808:                                              ; preds = %802
  %.lcssa5 = phi i64 [ %804, %802 ]
  %809 = trunc i64 %.lcssa5 to i32
  br label %810

810:                                              ; preds = %808, %782
  %811 = phi i32 [ %809, %808 ], [ %666, %782 ]
  %812 = icmp sgt i32 %783, %665
  br i1 %812, label %813, label %823

813:                                              ; preds = %810
  store i32 %783, ptr @high, align 4, !tbaa !7
  br label %823

814:                                              ; preds = %777
  %815 = add nsw i32 %745, 1
  %816 = icmp eq i32 %815, 32767
  br i1 %816, label %817, label %744, !llvm.loop !251

817:                                              ; preds = %814, %732
  tail call fastcc void @berror(ptr noundef nonnull @.str.34) #25
  unreachable

818:                                              ; preds = %726
  %819 = and i64 %.lcssa, 4294967295
  %820 = getelementptr inbounds i16, ptr %656, i64 %819
  %821 = load i16, ptr %820, align 2, !tbaa !41
  %822 = zext i16 %821 to i32
  br label %823

823:                                              ; preds = %818, %813, %810
  %824 = phi i32 [ %665, %818 ], [ %665, %810 ], [ %783, %813 ]
  %825 = phi i32 [ %666, %818 ], [ %811, %810 ], [ %811, %813 ]
  %826 = phi i32 [ %822, %818 ], [ %.lcssa3, %810 ], [ %.lcssa3, %813 ]
  %827 = trunc i32 %826 to i16
  %828 = getelementptr inbounds i16, ptr %658, i64 %667
  store i16 %827, ptr %828, align 2, !tbaa !41
  %829 = getelementptr inbounds i16, ptr %651, i64 %667
  %830 = load i16, ptr %829, align 2, !tbaa !41
  %831 = sext i16 %830 to i64
  %832 = getelementptr inbounds i16, ptr %656, i64 %831
  store i16 %827, ptr %832, align 2, !tbaa !41
  %833 = add nuw nsw i64 %667, 1
  %834 = icmp eq i64 %833, %659
  br i1 %834, label %660, label %664, !llvm.loop !252

835:                                              ; preds = %846, %661
  %836 = phi i64 [ 0, %661 ], [ %847, %846 ]
  %837 = getelementptr inbounds ptr, ptr %649, i64 %836
  %838 = load ptr, ptr %837, align 8, !tbaa !11
  %839 = icmp eq ptr %838, null
  br i1 %839, label %841, label %840

840:                                              ; preds = %835
  tail call void @free(ptr noundef nonnull %838) #25
  br label %841

841:                                              ; preds = %840, %835
  %842 = getelementptr inbounds ptr, ptr %662, i64 %836
  %843 = load ptr, ptr %842, align 8, !tbaa !11
  %844 = icmp eq ptr %843, null
  br i1 %844, label %846, label %845

845:                                              ; preds = %841
  tail call void @free(ptr noundef nonnull %843) #25
  br label %846

846:                                              ; preds = %845, %841
  %847 = add nuw nsw i64 %836, 1
  %848 = icmp eq i64 %847, %663
  br i1 %848, label %851, label %835, !llvm.loop !253

849:                                              ; preds = %660
  %850 = icmp eq ptr %649, null
  br i1 %850, label %852, label %851

851:                                              ; preds = %849, %846
  tail call void @free(ptr noundef nonnull %649) #25
  br label %852

852:                                              ; preds = %851, %849
  %853 = load ptr, ptr @tos, align 8, !tbaa !11
  %854 = icmp eq ptr %853, null
  br i1 %854, label %856, label %855

855:                                              ; preds = %852
  tail call void @free(ptr noundef nonnull %853) #25
  br label %856

856:                                              ; preds = %855, %852
  %857 = load ptr, ptr @pos, align 8, !tbaa !11
  %858 = icmp eq ptr %857, null
  br i1 %858, label %860, label %859

859:                                              ; preds = %856
  tail call void @free(ptr noundef nonnull %857) #25
  br label %860

860:                                              ; preds = %859, %856
  %861 = load ptr, ptr @ftable, align 8, !tbaa !11
  %862 = load ptr, ptr @base, align 8, !tbaa !11
  %863 = load i16, ptr %862, align 2, !tbaa !41
  %864 = sext i16 %863 to i32
  %865 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %861, ptr noundef nonnull @.str.36, i32 noundef %864) #26
  %866 = load i32, ptr @nstates, align 4, !tbaa !7
  %867 = icmp sgt i32 %866, 1
  br i1 %867, label %870, label %868

868:                                              ; preds = %860
  %869 = sext i32 %866 to i64
  br label %893

870:                                              ; preds = %881, %860
  %871 = phi i64 [ %889, %881 ], [ 1, %860 ]
  %872 = phi i32 [ %882, %881 ], [ 10, %860 ]
  %873 = load ptr, ptr @ftable, align 8, !tbaa !11
  %874 = tail call i32 @putc(i32 noundef 44, ptr noundef %873) #26
  %875 = icmp sgt i32 %872, 9
  br i1 %875, label %876, label %879

876:                                              ; preds = %870
  %877 = load ptr, ptr @ftable, align 8, !tbaa !11
  %878 = tail call i32 @putc(i32 noundef 10, ptr noundef %877) #26
  br label %881

879:                                              ; preds = %870
  %880 = add nuw nsw i32 %872, 1
  br label %881

881:                                              ; preds = %879, %876
  %882 = phi i32 [ 1, %876 ], [ %880, %879 ]
  %883 = load ptr, ptr @ftable, align 8, !tbaa !11
  %884 = load ptr, ptr @base, align 8, !tbaa !11
  %885 = getelementptr inbounds i16, ptr %884, i64 %871
  %886 = load i16, ptr %885, align 2, !tbaa !41
  %887 = sext i16 %886 to i32
  %888 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %883, ptr noundef nonnull @.str.12.151, i32 noundef %887) #26
  %889 = add nuw nsw i64 %871, 1
  %890 = load i32, ptr @nstates, align 4, !tbaa !7
  %891 = sext i32 %890 to i64
  %892 = icmp slt i64 %889, %891
  br i1 %892, label %870, label %893, !llvm.loop !254

893:                                              ; preds = %881, %868
  %894 = phi i64 [ %869, %868 ], [ %891, %881 ]
  %895 = load ptr, ptr @ftable, align 8, !tbaa !11
  %896 = load ptr, ptr @base, align 8, !tbaa !11
  %897 = getelementptr inbounds i16, ptr %896, i64 %894
  %898 = load i16, ptr %897, align 2, !tbaa !41
  %899 = sext i16 %898 to i32
  %900 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %895, ptr noundef nonnull @.str.37, i32 noundef %899) #26
  %901 = load i32, ptr @nstates, align 4, !tbaa !7
  %902 = add nsw i32 %901, 1
  %903 = load i32, ptr @nvectors, align 4, !tbaa !7
  %904 = icmp slt i32 %902, %903
  br i1 %904, label %905, label %931

905:                                              ; preds = %893
  %906 = sext i32 %901 to i64
  %907 = add nsw i64 %906, 1
  br label %908

908:                                              ; preds = %919, %905
  %909 = phi i64 [ %907, %905 ], [ %927, %919 ]
  %910 = phi i32 [ 10, %905 ], [ %920, %919 ]
  %911 = load ptr, ptr @ftable, align 8, !tbaa !11
  %912 = tail call i32 @putc(i32 noundef 44, ptr noundef %911) #26
  %913 = icmp sgt i32 %910, 9
  br i1 %913, label %914, label %917

914:                                              ; preds = %908
  %915 = load ptr, ptr @ftable, align 8, !tbaa !11
  %916 = tail call i32 @putc(i32 noundef 10, ptr noundef %915) #26
  br label %919

917:                                              ; preds = %908
  %918 = add nuw nsw i32 %910, 1
  br label %919

919:                                              ; preds = %917, %914
  %920 = phi i32 [ 1, %914 ], [ %918, %917 ]
  %921 = load ptr, ptr @ftable, align 8, !tbaa !11
  %922 = load ptr, ptr @base, align 8, !tbaa !11
  %923 = getelementptr inbounds i16, ptr %922, i64 %909
  %924 = load i16, ptr %923, align 2, !tbaa !41
  %925 = sext i16 %924 to i32
  %926 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %921, ptr noundef nonnull @.str.12.151, i32 noundef %925) #26
  %927 = add nsw i64 %909, 1
  %928 = load i32, ptr @nvectors, align 4, !tbaa !7
  %929 = sext i32 %928 to i64
  %930 = icmp slt i64 %927, %929
  br i1 %930, label %908, label %931, !llvm.loop !255

931:                                              ; preds = %919, %893
  %932 = load ptr, ptr @ftable, align 8, !tbaa !11
  %933 = tail call i64 @fwrite(ptr nonnull @.str.13.152, i64 4, i64 1, ptr %932)
  %934 = load ptr, ptr @base, align 8, !tbaa !11
  %935 = icmp eq ptr %934, null
  br i1 %935, label %937, label %936

936:                                              ; preds = %931
  tail call void @free(ptr noundef nonnull %934) #25
  br label %937

937:                                              ; preds = %936, %931
  %938 = load ptr, ptr @ftable, align 8, !tbaa !11
  %939 = load i32, ptr @high, align 4, !tbaa !7
  %940 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %938, ptr noundef nonnull @.str.38, i32 noundef %939) #26
  %941 = load ptr, ptr @ftable, align 8, !tbaa !11
  %942 = load ptr, ptr @table, align 8, !tbaa !11
  %943 = load i16, ptr %942, align 2, !tbaa !41
  %944 = sext i16 %943 to i32
  %945 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %941, ptr noundef nonnull @.str.39, i32 noundef %944) #26
  %946 = load i32, ptr @high, align 4, !tbaa !7
  %947 = icmp slt i32 %946, 1
  br i1 %947, label %971, label %948

948:                                              ; preds = %959, %937
  %949 = phi i64 [ %967, %959 ], [ 1, %937 ]
  %950 = phi i32 [ %960, %959 ], [ 10, %937 ]
  %951 = load ptr, ptr @ftable, align 8, !tbaa !11
  %952 = tail call i32 @putc(i32 noundef 44, ptr noundef %951) #26
  %953 = icmp sgt i32 %950, 9
  br i1 %953, label %954, label %957

954:                                              ; preds = %948
  %955 = load ptr, ptr @ftable, align 8, !tbaa !11
  %956 = tail call i32 @putc(i32 noundef 10, ptr noundef %955) #26
  br label %959

957:                                              ; preds = %948
  %958 = add nuw nsw i32 %950, 1
  br label %959

959:                                              ; preds = %957, %954
  %960 = phi i32 [ 1, %954 ], [ %958, %957 ]
  %961 = load ptr, ptr @ftable, align 8, !tbaa !11
  %962 = load ptr, ptr @table, align 8, !tbaa !11
  %963 = getelementptr inbounds i16, ptr %962, i64 %949
  %964 = load i16, ptr %963, align 2, !tbaa !41
  %965 = sext i16 %964 to i32
  %966 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %961, ptr noundef nonnull @.str.12.151, i32 noundef %965) #26
  %967 = add nuw nsw i64 %949, 1
  %968 = load i32, ptr @high, align 4, !tbaa !7
  %969 = zext i32 %968 to i64
  %970 = icmp ult i64 %949, %969
  br i1 %970, label %948, label %971, !llvm.loop !256

971:                                              ; preds = %959, %937
  %972 = load ptr, ptr @ftable, align 8, !tbaa !11
  %973 = tail call i64 @fwrite(ptr nonnull @.str.13.152, i64 4, i64 1, ptr %972)
  %974 = load ptr, ptr @table, align 8, !tbaa !11
  %975 = icmp eq ptr %974, null
  br i1 %975, label %977, label %976

976:                                              ; preds = %971
  tail call void @free(ptr noundef nonnull %974) #25
  br label %977

977:                                              ; preds = %976, %971
  %978 = load ptr, ptr @ftable, align 8, !tbaa !11
  %979 = load ptr, ptr @check, align 8, !tbaa !11
  %980 = load i16, ptr %979, align 2, !tbaa !41
  %981 = sext i16 %980 to i32
  %982 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %978, ptr noundef nonnull @.str.40, i32 noundef %981) #26
  %983 = load i32, ptr @high, align 4, !tbaa !7
  %984 = icmp slt i32 %983, 1
  br i1 %984, label %1008, label %985

985:                                              ; preds = %996, %977
  %986 = phi i64 [ %1004, %996 ], [ 1, %977 ]
  %987 = phi i32 [ %997, %996 ], [ 10, %977 ]
  %988 = load ptr, ptr @ftable, align 8, !tbaa !11
  %989 = tail call i32 @putc(i32 noundef 44, ptr noundef %988) #26
  %990 = icmp sgt i32 %987, 9
  br i1 %990, label %991, label %994

991:                                              ; preds = %985
  %992 = load ptr, ptr @ftable, align 8, !tbaa !11
  %993 = tail call i32 @putc(i32 noundef 10, ptr noundef %992) #26
  br label %996

994:                                              ; preds = %985
  %995 = add nuw nsw i32 %987, 1
  br label %996

996:                                              ; preds = %994, %991
  %997 = phi i32 [ 1, %991 ], [ %995, %994 ]
  %998 = load ptr, ptr @ftable, align 8, !tbaa !11
  %999 = load ptr, ptr @check, align 8, !tbaa !11
  %1000 = getelementptr inbounds i16, ptr %999, i64 %986
  %1001 = load i16, ptr %1000, align 2, !tbaa !41
  %1002 = sext i16 %1001 to i32
  %1003 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %998, ptr noundef nonnull @.str.12.151, i32 noundef %1002) #26
  %1004 = add nuw nsw i64 %986, 1
  %1005 = load i32, ptr @high, align 4, !tbaa !7
  %1006 = zext i32 %1005 to i64
  %1007 = icmp ult i64 %986, %1006
  br i1 %1007, label %985, label %1008, !llvm.loop !257

1008:                                             ; preds = %996, %977
  %1009 = load ptr, ptr @ftable, align 8, !tbaa !11
  %1010 = tail call i64 @fwrite(ptr nonnull @.str.13.152, i64 4, i64 1, ptr %1009)
  %1011 = load ptr, ptr @check, align 8, !tbaa !11
  %1012 = icmp eq ptr %1011, null
  br i1 %1012, label %1014, label %1013

1013:                                             ; preds = %1008
  tail call void @free(ptr noundef nonnull %1011) #25
  br label %1014

1014:                                             ; preds = %1013, %1008
  %1015 = load i1, ptr @pure_parser, align 4
  %1016 = load ptr, ptr @ftable, align 8, !tbaa !11
  br i1 %1015, label %1017, label %1019

1017:                                             ; preds = %1014
  %1018 = tail call i64 @fwrite(ptr nonnull @.str.41, i64 20, i64 1, ptr %1016)
  br label %1021

1019:                                             ; preds = %1014
  %1020 = tail call i64 @fwrite(ptr nonnull @.str.42, i64 18, i64 1, ptr %1016)
  br label %1021

1021:                                             ; preds = %1019, %1017
  %1022 = load ptr, ptr @fparser, align 8, !tbaa !11
  %1023 = icmp eq ptr %1022, null
  br i1 %1023, label %1101, label %1024

1024:                                             ; preds = %1021
  %1025 = tail call i32 @feof(ptr noundef nonnull %1022) #25
  %1026 = icmp eq i32 %1025, 0
  br i1 %1026, label %1027, label %1101

1027:                                             ; preds = %1024
  %1028 = load ptr, ptr @fparser, align 8, !tbaa !11
  %1029 = tail call i32 @getc(ptr noundef %1028) #26
  %1030 = icmp eq i32 %1029, -1
  br i1 %1030, label %1101, label %1031

1031:                                             ; preds = %1097, %1027
  %1032 = phi i32 [ %1099, %1097 ], [ %1029, %1027 ]
  %1033 = load i1, ptr @nolinesflag, align 4
  %1034 = icmp eq i32 %1032, 10
  %1035 = and i1 %1034, %1033
  br i1 %1035, label %1036, label %1079

1036:                                             ; preds = %1031
  %1037 = load ptr, ptr @ftable, align 8, !tbaa !11
  %1038 = tail call i32 @putc(i32 noundef 10, ptr noundef %1037) #26
  %1039 = load ptr, ptr @fparser, align 8, !tbaa !11
  %1040 = tail call i32 @getc(ptr noundef %1039) #26
  %1041 = icmp eq i32 %1040, 35
  br i1 %1041, label %1042, label %1079

1042:                                             ; preds = %1036
  %1043 = load ptr, ptr @fparser, align 8, !tbaa !11
  %1044 = tail call i32 @getc(ptr noundef %1043) #26
  %1045 = icmp eq i32 %1044, 108
  br i1 %1045, label %1046, label %1076

1046:                                             ; preds = %1042
  %1047 = load ptr, ptr @fparser, align 8, !tbaa !11
  %1048 = tail call i32 @getc(ptr noundef %1047) #26
  %1049 = icmp eq i32 %1048, 105
  br i1 %1049, label %1050, label %1073

1050:                                             ; preds = %1046
  %1051 = load ptr, ptr @fparser, align 8, !tbaa !11
  %1052 = tail call i32 @getc(ptr noundef %1051) #26
  %1053 = icmp eq i32 %1052, 110
  br i1 %1053, label %1054, label %1070

1054:                                             ; preds = %1050
  %1055 = load ptr, ptr @fparser, align 8, !tbaa !11
  %1056 = tail call i32 @getc(ptr noundef %1055) #26
  %1057 = icmp eq i32 %1056, 101
  br i1 %1057, label %1058, label %1067

1058:                                             ; preds = %1058, %1054
  %1059 = load ptr, ptr @fparser, align 8, !tbaa !11
  %1060 = tail call i32 @getc(ptr noundef %1059) #26
  %1061 = icmp eq i32 %1060, 10
  %1062 = icmp slt i32 %1060, 0
  %1063 = or i1 %1061, %1062
  br i1 %1063, label %1064, label %1058

1064:                                             ; preds = %1058
  %1065 = load ptr, ptr @fparser, align 8, !tbaa !11
  %1066 = tail call i32 @getc(ptr noundef %1065) #26
  br label %1079

1067:                                             ; preds = %1054
  %1068 = load ptr, ptr @ftable, align 8, !tbaa !11
  %1069 = tail call i64 @fwrite(ptr nonnull @.str.43, i64 4, i64 1, ptr %1068)
  br label %1079

1070:                                             ; preds = %1050
  %1071 = load ptr, ptr @ftable, align 8, !tbaa !11
  %1072 = tail call i64 @fwrite(ptr nonnull @.str.44, i64 3, i64 1, ptr %1071)
  br label %1079

1073:                                             ; preds = %1046
  %1074 = load ptr, ptr @ftable, align 8, !tbaa !11
  %1075 = tail call i64 @fwrite(ptr nonnull @.str.45.150, i64 2, i64 1, ptr %1074)
  br label %1079

1076:                                             ; preds = %1042
  %1077 = load ptr, ptr @ftable, align 8, !tbaa !11
  %1078 = tail call i32 @fputc(i32 35, ptr %1077)
  br label %1079

1079:                                             ; preds = %1076, %1073, %1070, %1067, %1064, %1036, %1031
  %1080 = phi i32 [ %1066, %1064 ], [ %1056, %1067 ], [ %1052, %1070 ], [ %1048, %1073 ], [ %1044, %1076 ], [ %1040, %1036 ], [ %1032, %1031 ]
  %1081 = icmp eq i32 %1080, 36
  br i1 %1081, label %1082, label %1094

1082:                                             ; preds = %1079
  %1083 = load ptr, ptr @faction, align 8, !tbaa !11
  tail call void @rewind(ptr noundef %1083) #26
  %1084 = load ptr, ptr @faction, align 8, !tbaa !11
  %1085 = tail call i32 @getc(ptr noundef %1084) #26
  %1086 = icmp eq i32 %1085, -1
  br i1 %1086, label %1097, label %1087

1087:                                             ; preds = %1087, %1082
  %1088 = phi i32 [ %1092, %1087 ], [ %1085, %1082 ]
  %1089 = load ptr, ptr @ftable, align 8, !tbaa !11
  %1090 = tail call i32 @putc(i32 noundef %1088, ptr noundef %1089) #26
  %1091 = load ptr, ptr @faction, align 8, !tbaa !11
  %1092 = tail call i32 @getc(ptr noundef %1091) #26
  %1093 = icmp eq i32 %1092, -1
  br i1 %1093, label %1097, label %1087, !llvm.loop !258

1094:                                             ; preds = %1079
  %1095 = load ptr, ptr @ftable, align 8, !tbaa !11
  %1096 = tail call i32 @putc(i32 noundef %1080, ptr noundef %1095) #26
  br label %1097

1097:                                             ; preds = %1094, %1087, %1082
  %1098 = load ptr, ptr @fparser, align 8, !tbaa !11
  %1099 = tail call i32 @getc(ptr noundef %1098) #26
  %1100 = icmp eq i32 %1099, -1
  br i1 %1100, label %1101, label %1031, !llvm.loop !259

1101:                                             ; preds = %1097, %1027, %1024, %1021
  %1102 = load ptr, ptr @ftable, align 8, !tbaa !11
  %1103 = load i32, ptr @lineno, align 4, !tbaa !7
  %1104 = load ptr, ptr @infile, align 8, !tbaa !11
  %1105 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %1104, i32 noundef 47) #27
  %1106 = icmp eq ptr %1105, null
  %1107 = getelementptr inbounds i8, ptr %1105, i64 1
  %1108 = select i1 %1106, ptr %1104, ptr %1107
  %1109 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1102, ptr noundef nonnull @.str.7.205, i32 noundef %1103, ptr noundef %1108) #26
  %1110 = load ptr, ptr @finput, align 8, !tbaa !11
  %1111 = tail call i32 @getc(ptr noundef %1110) #26
  %1112 = icmp eq i32 %1111, -1
  br i1 %1112, label %1120, label %1113

1113:                                             ; preds = %1113, %1101
  %1114 = phi i32 [ %1118, %1113 ], [ %1111, %1101 ]
  %1115 = load ptr, ptr @ftable, align 8, !tbaa !11
  %1116 = tail call i32 @putc(i32 noundef %1114, ptr noundef %1115) #26
  %1117 = load ptr, ptr @finput, align 8, !tbaa !11
  %1118 = tail call i32 @getc(ptr noundef %1117) #26
  %1119 = icmp eq i32 %1118, -1
  br i1 %1119, label %1120, label %1113, !llvm.loop !260

1120:                                             ; preds = %1113, %1101
  ret void
}

; Function Attrs: noreturn nounwind optsize uwtable
define internal fastcc void @done(i32 noundef %0) unnamed_addr #7 {
  tail call void @exit(i32 noundef %0) #31
  unreachable
}

; Function Attrs: nofree nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc i32 @action_row(i32 noundef %0) unnamed_addr #19 {
  %2 = load i32, ptr @ntokens, align 4, !tbaa !7
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %4, label %8

4:                                                ; preds = %1
  %5 = load ptr, ptr @actrow, align 8, !tbaa !11
  %6 = zext i32 %2 to i64
  %7 = shl nuw nsw i64 %6, 1
  tail call void @llvm.memset.p0.i64(ptr align 2 %5, i8 0, i64 %7, i1 false), !tbaa !41
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
  %16 = load i16, ptr %15, align 2, !tbaa !94
  %17 = sext i16 %16 to i32
  %18 = icmp sgt i16 %16, 0
  br i1 %18, label %19, label %67

19:                                               ; preds = %14
  %20 = load ptr, ptr @lookaheads, align 8, !tbaa !11
  %21 = getelementptr inbounds i16, ptr %20, i64 %10
  %22 = load i16, ptr %21, align 2, !tbaa !41
  %23 = sext i16 %22 to i32
  %24 = add nsw i32 %0, 1
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i16, ptr %20, i64 %25
  %27 = load i16, ptr %26, align 2, !tbaa !41
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
  br i1 %40, label %41, label %67, !llvm.loop !261

41:                                               ; preds = %39, %30
  %42 = phi i64 [ %35, %30 ], [ %43, %39 ]
  %43 = add nsw i64 %42, -1
  %44 = getelementptr inbounds i16, ptr %31, i64 %43
  %45 = load i16, ptr %44, align 2, !tbaa !41
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
  store i16 %46, ptr %58, align 2, !tbaa !41
  br label %59

59:                                               ; preds = %57, %50
  %60 = shl i32 %53, 1
  %61 = icmp eq i32 %60, 0
  %62 = tail call i32 @llvm.umax.i32(i32 %60, i32 1)
  %63 = zext i1 %61 to i64
  %64 = getelementptr inbounds i32, ptr %52, i64 %63
  %65 = add nuw nsw i64 %51, 1
  %66 = icmp eq i64 %65, %38
  br i1 %66, label %39, label %50, !llvm.loop !262

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
  %77 = load i16, ptr %76, align 2, !tbaa !106
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
  %88 = load i16, ptr %87, align 2, !tbaa !41
  %89 = icmp eq i16 %88, 0
  br i1 %89, label %101, label %90

90:                                               ; preds = %84
  %91 = sext i16 %88 to i64
  %92 = getelementptr inbounds i16, ptr %81, i64 %91
  %93 = load i16, ptr %92, align 2, !tbaa !41
  %94 = sext i16 %93 to i32
  %95 = icmp sgt i32 %2, %94
  br i1 %95, label %96, label %105

96:                                               ; preds = %90
  %97 = sext i16 %93 to i64
  %98 = getelementptr inbounds i16, ptr %82, i64 %97
  store i16 %88, ptr %98, align 2, !tbaa !41
  %99 = icmp eq i32 %83, %94
  %100 = select i1 %99, i32 1, i32 %86
  br label %101

101:                                              ; preds = %96, %84
  %102 = phi i32 [ %86, %84 ], [ %100, %96 ]
  %103 = add nuw nsw i64 %85, 1
  %104 = icmp eq i64 %103, %80
  br i1 %104, label %105, label %84, !llvm.loop !263

105:                                              ; preds = %101, %90, %75, %67
  %106 = phi i32 [ 0, %67 ], [ 0, %75 ], [ %102, %101 ], [ %86, %90 ]
  %107 = load ptr, ptr @err_table, align 8, !tbaa !11
  %108 = getelementptr inbounds ptr, ptr %107, i64 %10
  %109 = load ptr, ptr %108, align 8, !tbaa !11
  %110 = icmp eq ptr %109, null
  br i1 %110, label %125, label %111

111:                                              ; preds = %105
  %112 = load i16, ptr %109, align 2, !tbaa !157
  %113 = icmp sgt i16 %112, 0
  br i1 %113, label %114, label %125

114:                                              ; preds = %111
  %115 = zext i16 %112 to i64
  %116 = load ptr, ptr @actrow, align 8, !tbaa !11
  br label %117

117:                                              ; preds = %117, %114
  %118 = phi i64 [ 0, %114 ], [ %123, %117 ]
  %119 = getelementptr inbounds %struct.errs, ptr %109, i64 0, i32 1, i64 %118
  %120 = load i16, ptr %119, align 2, !tbaa !41
  %121 = sext i16 %120 to i64
  %122 = getelementptr inbounds i16, ptr %116, i64 %121
  store i16 -32768, ptr %122, align 2, !tbaa !41
  %123 = add nuw nsw i64 %118, 1
  %124 = icmp eq i64 %123, %115
  br i1 %124, label %125, label %117, !llvm.loop !264

125:                                              ; preds = %117, %111, %105
  %126 = icmp slt i32 %69, 1
  %127 = icmp ne i32 %106, 0
  %128 = select i1 %126, i1 true, i1 %127
  br i1 %128, label %187, label %129

129:                                              ; preds = %125
  %130 = load ptr, ptr @consistent, align 8, !tbaa !11
  %131 = getelementptr inbounds i8, ptr %130, i64 %10
  %132 = load i8, ptr %131, align 1, !tbaa !13
  %133 = icmp eq i8 %132, 0
  br i1 %133, label %134, label %142

134:                                              ; preds = %129
  %135 = icmp slt i32 %70, %68
  br i1 %135, label %136, label %187

136:                                              ; preds = %134
  %137 = load ptr, ptr @LAruleno, align 8, !tbaa !11
  %138 = load ptr, ptr @actrow, align 8
  %139 = sext i32 %70 to i64
  %140 = sext i32 %68 to i64
  %141 = zext i32 %2 to i64
  br label %146

142:                                              ; preds = %129
  %143 = getelementptr inbounds %struct.shifts, ptr %12, i64 0, i32 3
  %144 = load i16, ptr %143, align 4, !tbaa !41
  %145 = sext i16 %144 to i32
  br label %187

146:                                              ; preds = %165, %136
  %147 = phi i64 [ %139, %136 ], [ %170, %165 ]
  %148 = phi i32 [ 0, %136 ], [ %169, %165 ]
  %149 = phi i32 [ 0, %136 ], [ %168, %165 ]
  %150 = getelementptr inbounds i16, ptr %137, i64 %147
  %151 = load i16, ptr %150, align 2, !tbaa !41
  %152 = sext i16 %151 to i32
  %153 = sub nsw i32 0, %152
  br i1 %3, label %154, label %165

154:                                              ; preds = %154, %146
  %155 = phi i64 [ %163, %154 ], [ 0, %146 ]
  %156 = phi i32 [ %162, %154 ], [ 0, %146 ]
  %157 = getelementptr inbounds i16, ptr %138, i64 %155
  %158 = load i16, ptr %157, align 2, !tbaa !41
  %159 = sext i16 %158 to i32
  %160 = icmp eq i32 %159, %153
  %161 = zext i1 %160 to i32
  %162 = add nuw nsw i32 %156, %161
  %163 = add nuw nsw i64 %155, 1
  %164 = icmp eq i64 %163, %141
  br i1 %164, label %165, label %154, !llvm.loop !265

165:                                              ; preds = %154, %146
  %166 = phi i32 [ 0, %146 ], [ %162, %154 ]
  %167 = icmp sgt i32 %166, %148
  %168 = select i1 %167, i32 %153, i32 %149
  %169 = tail call i32 @llvm.smax.i32(i32 %166, i32 %148)
  %170 = add nsw i64 %147, 1
  %171 = icmp eq i64 %170, %140
  br i1 %171, label %172, label %146, !llvm.loop !266

172:                                              ; preds = %165
  %.lcssa1 = phi i32 [ %168, %165 ]
  %.lcssa = phi i32 [ %169, %165 ]
  %173 = icmp sgt i32 %.lcssa, 0
  br i1 %173, label %174, label %187

174:                                              ; preds = %172
  br i1 %3, label %175, label %185

175:                                              ; preds = %182, %174
  %176 = phi i64 [ %183, %182 ], [ 0, %174 ]
  %177 = getelementptr inbounds i16, ptr %138, i64 %176
  %178 = load i16, ptr %177, align 2, !tbaa !41
  %179 = sext i16 %178 to i32
  %180 = icmp eq i32 %.lcssa1, %179
  br i1 %180, label %181, label %182

181:                                              ; preds = %175
  store i16 0, ptr %177, align 2, !tbaa !41
  br label %182

182:                                              ; preds = %181, %175
  %183 = add nuw nsw i64 %176, 1
  %184 = icmp eq i64 %183, %141
  br i1 %184, label %185, label %175, !llvm.loop !267

185:                                              ; preds = %182, %174
  %186 = sub nsw i32 0, %.lcssa1
  br label %187

187:                                              ; preds = %185, %172, %142, %134, %125
  %188 = phi i32 [ 0, %125 ], [ %145, %142 ], [ %186, %185 ], [ %.lcssa1, %172 ], [ 0, %134 ]
  %189 = icmp eq i32 %188, 0
  %190 = and i1 %3, %189
  br i1 %190, label %191, label %203

191:                                              ; preds = %187
  %192 = load ptr, ptr @actrow, align 8, !tbaa !11
  %193 = zext i32 %2 to i64
  br label %194

194:                                              ; preds = %200, %191
  %195 = phi i64 [ 0, %191 ], [ %201, %200 ]
  %196 = getelementptr inbounds i16, ptr %192, i64 %195
  %197 = load i16, ptr %196, align 2, !tbaa !41
  %198 = icmp eq i16 %197, -32768
  br i1 %198, label %199, label %200

199:                                              ; preds = %194
  store i16 0, ptr %196, align 2, !tbaa !41
  br label %200

200:                                              ; preds = %199, %194
  %201 = add nuw nsw i64 %195, 1
  %202 = icmp eq i64 %201, %193
  br i1 %202, label %203, label %194, !llvm.loop !268

203:                                              ; preds = %200, %187
  ret i32 %188
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @save_row(i32 noundef %0) unnamed_addr #10 {
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
  %11 = load i16, ptr %10, align 2, !tbaa !41
  %12 = icmp ne i16 %11, 0
  %13 = zext i1 %12 to i32
  %14 = add nuw nsw i32 %9, %13
  %15 = add nuw nsw i64 %8, 1
  %16 = icmp eq i64 %15, %6
  br i1 %16, label %17, label %7, !llvm.loop !269

17:                                               ; preds = %7
  %.lcssa = phi i32 [ %14, %7 ]
  %18 = icmp eq i32 %.lcssa, 0
  br i1 %18, label %62, label %19

19:                                               ; preds = %17
  %20 = shl nuw i32 %.lcssa, 1
  %21 = tail call fastcc ptr @mallocate(i32 noundef %20) #25
  %22 = load ptr, ptr @froms, align 8, !tbaa !11
  %23 = sext i32 %0 to i64
  %24 = getelementptr inbounds ptr, ptr %22, i64 %23
  store ptr %21, ptr %24, align 8, !tbaa !11
  %25 = tail call fastcc ptr @mallocate(i32 noundef %20) #25
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
  %38 = load i16, ptr %37, align 2, !tbaa !41
  %39 = icmp eq i16 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %33
  %41 = trunc i64 %34 to i16
  %42 = getelementptr inbounds i16, ptr %36, i64 1
  store i16 %41, ptr %36, align 2, !tbaa !41
  %43 = load i16, ptr %37, align 2, !tbaa !41
  %44 = getelementptr inbounds i16, ptr %35, i64 1
  store i16 %43, ptr %35, align 2, !tbaa !41
  br label %45

45:                                               ; preds = %40, %33
  %46 = phi ptr [ %42, %40 ], [ %36, %33 ]
  %47 = phi ptr [ %44, %40 ], [ %35, %33 ]
  %48 = add nuw nsw i64 %34, 1
  %49 = icmp eq i64 %48, %32
  br i1 %49, label %50, label %33, !llvm.loop !270

50:                                               ; preds = %45, %19
  %51 = phi ptr [ %21, %19 ], [ %46, %45 ]
  %52 = trunc i32 %.lcssa to i16
  %53 = load ptr, ptr @tally, align 8, !tbaa !11
  %54 = getelementptr inbounds i16, ptr %53, i64 %23
  store i16 %52, ptr %54, align 2, !tbaa !41
  %55 = getelementptr inbounds i16, ptr %51, i64 -1
  %56 = load i16, ptr %55, align 2, !tbaa !41
  %57 = load i16, ptr %21, align 2, !tbaa !41
  %58 = add i16 %56, 1
  %59 = sub i16 %58, %57
  %60 = load ptr, ptr @width, align 8, !tbaa !11
  %61 = getelementptr inbounds i16, ptr %60, i64 %23
  store i16 %59, ptr %61, align 2, !tbaa !41
  br label %62

62:                                               ; preds = %50, %17, %1
  ret void
}

; Function Attrs: nofree nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc i32 @default_goto(i32 noundef %0) unnamed_addr #19 {
  %2 = load ptr, ptr @goto_map, align 8, !tbaa !11
  %3 = sext i32 %0 to i64
  %4 = getelementptr inbounds i16, ptr %2, i64 %3
  %5 = load i16, ptr %4, align 2, !tbaa !41
  %6 = add nsw i32 %0, 1
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds i16, ptr %2, i64 %7
  %9 = load i16, ptr %8, align 2, !tbaa !41
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
  tail call void @llvm.memset.p0.i64(ptr align 2 %15, i8 0, i64 %17, i1 false), !tbaa !41
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
  %32 = load i16, ptr %31, align 2, !tbaa !41
  %33 = sext i16 %32 to i64
  %34 = getelementptr inbounds i16, ptr %21, i64 %33
  %35 = load i16, ptr %34, align 2, !tbaa !41
  %36 = add i16 %35, 1
  store i16 %36, ptr %34, align 2, !tbaa !41
  %37 = add nsw i64 %30, 1
  %38 = icmp eq i64 %37, %24
  br i1 %38, label %25, label %29, !llvm.loop !271

39:                                               ; preds = %39, %26
  %40 = phi i64 [ 0, %26 ], [ %50, %39 ]
  %41 = phi i32 [ 0, %26 ], [ %49, %39 ]
  %42 = phi i32 [ -1, %26 ], [ %48, %39 ]
  %43 = getelementptr inbounds i16, ptr %27, i64 %40
  %44 = load i16, ptr %43, align 2, !tbaa !41
  %45 = sext i16 %44 to i32
  %46 = icmp slt i32 %41, %45
  %47 = trunc i64 %40 to i32
  %48 = select i1 %46, i32 %47, i32 %42
  %49 = tail call i32 @llvm.smax.i32(i32 %41, i32 %45)
  %50 = add nuw nsw i64 %40, 1
  %51 = icmp eq i64 %50, %28
  br i1 %51, label %52, label %39, !llvm.loop !272

52:                                               ; preds = %39, %25, %1
  %53 = phi i32 [ -1, %1 ], [ -1, %25 ], [ %48, %39 ]
  ret i32 %53
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @save_column(i32 noundef %0, i32 noundef %1) unnamed_addr #10 {
  %3 = load ptr, ptr @goto_map, align 8, !tbaa !11
  %4 = sext i32 %0 to i64
  %5 = getelementptr inbounds i16, ptr %3, i64 %4
  %6 = load i16, ptr %5, align 2, !tbaa !41
  %7 = add nsw i32 %0, 1
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds i16, ptr %3, i64 %8
  %10 = load i16, ptr %9, align 2, !tbaa !41
  %11 = icmp slt i16 %6, %10
  br i1 %11, label %12, label %74

12:                                               ; preds = %2
  %13 = load ptr, ptr @to_state, align 8, !tbaa !11
  %14 = sext i16 %6 to i64
  %15 = sext i16 %10 to i64
  br label %16

16:                                               ; preds = %16, %12
  %17 = phi i64 [ %14, %12 ], [ %25, %16 ]
  %18 = phi i32 [ 0, %12 ], [ %24, %16 ]
  %19 = getelementptr inbounds i16, ptr %13, i64 %17
  %20 = load i16, ptr %19, align 2, !tbaa !41
  %21 = sext i16 %20 to i32
  %22 = icmp ne i32 %21, %1
  %23 = zext i1 %22 to i32
  %24 = add nuw nsw i32 %18, %23
  %25 = add nsw i64 %17, 1
  %26 = icmp eq i64 %25, %15
  br i1 %26, label %27, label %16, !llvm.loop !273

27:                                               ; preds = %16
  %.lcssa1 = phi i32 [ %24, %16 ]
  %28 = icmp eq i32 %.lcssa1, 0
  br i1 %28, label %74, label %29

29:                                               ; preds = %27
  %30 = load i32, ptr @ntokens, align 4, !tbaa !7
  %31 = sub i32 %0, %30
  %32 = load i32, ptr @nstates, align 4, !tbaa !7
  %33 = add nsw i32 %31, %32
  %34 = shl nuw i32 %.lcssa1, 1
  %35 = tail call fastcc ptr @mallocate(i32 noundef %34) #25
  %36 = load ptr, ptr @froms, align 8, !tbaa !11
  %37 = sext i32 %33 to i64
  %38 = getelementptr inbounds ptr, ptr %36, i64 %37
  store ptr %35, ptr %38, align 8, !tbaa !11
  %39 = tail call fastcc ptr @mallocate(i32 noundef %34) #25
  %40 = load ptr, ptr @tos, align 8, !tbaa !11
  %41 = getelementptr inbounds ptr, ptr %40, i64 %37
  store ptr %39, ptr %41, align 8, !tbaa !11
  %42 = load ptr, ptr @to_state, align 8, !tbaa !11
  %43 = load ptr, ptr @from_state, align 8
  br label %44

44:                                               ; preds = %58, %29
  %45 = phi i64 [ %14, %29 ], [ %61, %58 ]
  %46 = phi ptr [ %39, %29 ], [ %60, %58 ]
  %47 = phi ptr [ %35, %29 ], [ %59, %58 ]
  %48 = getelementptr inbounds i16, ptr %42, i64 %45
  %49 = load i16, ptr %48, align 2, !tbaa !41
  %50 = sext i16 %49 to i32
  %51 = icmp eq i32 %50, %1
  br i1 %51, label %58, label %52

52:                                               ; preds = %44
  %53 = getelementptr inbounds i16, ptr %43, i64 %45
  %54 = load i16, ptr %53, align 2, !tbaa !41
  %55 = getelementptr inbounds i16, ptr %47, i64 1
  store i16 %54, ptr %47, align 2, !tbaa !41
  %56 = load i16, ptr %48, align 2, !tbaa !41
  %57 = getelementptr inbounds i16, ptr %46, i64 1
  store i16 %56, ptr %46, align 2, !tbaa !41
  br label %58

58:                                               ; preds = %52, %44
  %59 = phi ptr [ %55, %52 ], [ %47, %44 ]
  %60 = phi ptr [ %57, %52 ], [ %46, %44 ]
  %61 = add nsw i64 %45, 1
  %62 = icmp eq i64 %61, %15
  br i1 %62, label %63, label %44, !llvm.loop !274

63:                                               ; preds = %58
  %.lcssa = phi ptr [ %59, %58 ]
  %64 = trunc i32 %.lcssa1 to i16
  %65 = load ptr, ptr @tally, align 8, !tbaa !11
  %66 = getelementptr inbounds i16, ptr %65, i64 %37
  store i16 %64, ptr %66, align 2, !tbaa !41
  %67 = getelementptr inbounds i16, ptr %.lcssa, i64 -1
  %68 = load i16, ptr %67, align 2, !tbaa !41
  %69 = load i16, ptr %35, align 2, !tbaa !41
  %70 = add i16 %68, 1
  %71 = sub i16 %70, %69
  %72 = load ptr, ptr @width, align 8, !tbaa !11
  %73 = getelementptr inbounds i16, ptr %72, i64 %37
  store i16 %71, ptr %73, align 2, !tbaa !41
  br label %74

74:                                               ; preds = %63, %27, %2
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #16

; Function Attrs: nofree nounwind optsize
declare noundef i32 @feof(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: noreturn nounwind optsize
declare void @abort() local_unnamed_addr #9

; Function Attrs: nofree nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @traverse(i32 noundef %0) unnamed_addr #19 {
  %2 = trunc i32 %0 to i16
  %3 = load ptr, ptr @VERTICES, align 8, !tbaa !11
  %4 = load i32, ptr @top, align 4, !tbaa !7
  %5 = add nsw i32 %4, 1
  store i32 %5, ptr @top, align 4, !tbaa !7
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds i16, ptr %3, i64 %6
  store i16 %2, ptr %7, align 2, !tbaa !41
  %8 = trunc i32 %5 to i16
  %9 = load ptr, ptr @INDEX, align 8, !tbaa !11
  %10 = sext i32 %0 to i64
  %11 = getelementptr inbounds i16, ptr %9, i64 %10
  store i16 %8, ptr %11, align 2, !tbaa !41
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
  %24 = load i16, ptr %21, align 2, !tbaa !41
  %25 = icmp sgt i16 %24, -1
  br i1 %25, label %26, label %69

26:                                               ; preds = %23
  %27 = icmp sgt i32 %13, 0
  br label %31

28:                                               ; preds = %60, %52
  %29 = load i16, ptr %35, align 2, !tbaa !41
  %30 = icmp sgt i16 %29, -1
  br i1 %30, label %31, label %69, !llvm.loop !275

31:                                               ; preds = %28, %26
  %32 = phi ptr [ %9, %26 ], [ %47, %28 ]
  %33 = phi i16 [ %24, %26 ], [ %29, %28 ]
  %34 = phi ptr [ %21, %26 ], [ %35, %28 ]
  %35 = getelementptr inbounds i16, ptr %34, i64 1
  %36 = zext i16 %33 to i32
  %37 = zext i16 %33 to i64
  %38 = getelementptr inbounds i16, ptr %32, i64 %37
  %39 = load i16, ptr %38, align 2, !tbaa !41
  %40 = icmp eq i16 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %31
  tail call fastcc void @traverse(i32 noundef %36) #26
  %42 = load ptr, ptr @INDEX, align 8, !tbaa !11
  %43 = getelementptr inbounds i16, ptr %42, i64 %37
  %44 = load i16, ptr %43, align 2, !tbaa !41
  br label %45

45:                                               ; preds = %41, %31
  %46 = phi i16 [ %44, %41 ], [ %39, %31 ]
  %47 = phi ptr [ %42, %41 ], [ %32, %31 ]
  %48 = getelementptr inbounds i16, ptr %47, i64 %10
  %49 = load i16, ptr %48, align 2, !tbaa !41
  %50 = icmp sgt i16 %49, %46
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  store i16 %46, ptr %48, align 2, !tbaa !41
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
  br i1 %68, label %60, label %28, !llvm.loop !276

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
  %83 = load i16, ptr %82, align 2, !tbaa !41
  %84 = sext i16 %83 to i32
  %85 = sext i16 %83 to i64
  %86 = getelementptr inbounds i16, ptr %72, i64 %85
  store i16 %78, ptr %86, align 2, !tbaa !41
  %87 = icmp eq i32 %84, %0
  br i1 %87, label %116, label %88

88:                                               ; preds = %75
  %89 = icmp sgt i32 %13, 0
  %90 = sext i32 %80 to i64
  %91 = load i32, ptr @tokensetsize, align 4
  br label %100

92:                                               ; preds = %107, %100
  %93 = add i64 %101, -1
  %94 = getelementptr inbounds i16, ptr %76, i64 %101
  %95 = load i16, ptr %94, align 2, !tbaa !41
  %96 = sext i16 %95 to i32
  %97 = sext i16 %95 to i64
  %98 = getelementptr inbounds i16, ptr %72, i64 %97
  store i16 %78, ptr %98, align 2, !tbaa !41
  %99 = icmp eq i32 %96, %0
  br i1 %99, label %114, label %100

100:                                              ; preds = %92, %88
  %101 = phi i64 [ %90, %88 ], [ %93, %92 ]
  %102 = phi i32 [ %84, %88 ], [ %96, %92 ]
  br i1 %89, label %103, label %92

103:                                              ; preds = %100
  %104 = mul nsw i32 %91, %102
  %105 = sext i32 %104 to i64
  %106 = getelementptr i32, ptr %70, i64 %105
  br label %107

107:                                              ; preds = %107, %103
  %108 = phi ptr [ %110, %107 ], [ %16, %103 ]
  %109 = phi ptr [ %112, %107 ], [ %106, %103 ]
  %110 = getelementptr inbounds i32, ptr %108, i64 1
  %111 = load i32, ptr %108, align 4, !tbaa !7
  %112 = getelementptr inbounds i32, ptr %109, i64 1
  store i32 %111, ptr %109, align 4, !tbaa !7
  %113 = icmp ult ptr %110, %18
  br i1 %113, label %107, label %92, !llvm.loop !277

114:                                              ; preds = %92
  %.lcssa = phi i64 [ %93, %92 ]
  %115 = trunc i64 %.lcssa to i32
  br label %116

116:                                              ; preds = %114, %75
  %117 = phi i32 [ %80, %75 ], [ %115, %114 ]
  store i32 %117, ptr @top, align 4, !tbaa !7
  br label %118

118:                                              ; preds = %116, %69
  ret void
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #21

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(read)
declare i32 @atoi(ptr nocapture noundef) local_unnamed_addr #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #13

; Function Attrs: noreturn nounwind optsize uwtable
define internal fastcc void @fatals(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #7 {
  %5 = alloca [200 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %5) #32
  %6 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #25
  call fastcc void @fatal(ptr noundef nonnull %5) #26
  unreachable
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #23

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #24

; Function Attrs: nofree nounwind optsize
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: nofree nounwind optsize
declare void @perror(ptr nocapture noundef readonly) local_unnamed_addr #4

attributes #0 = { nofree nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind optsize memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { noreturn nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind }
attributes #9 = { noreturn nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #14 = { mustprogress nofree nosync nounwind optsize willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #18 = { nofree norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nofree nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nofree nosync nounwind optsize memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nounwind optsize willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree nounwind optsize willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nofree nounwind willreturn memory(argmem: read) }
attributes #24 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { nounwind optsize }
attributes #26 = { optsize }
attributes #27 = { nounwind optsize willreturn memory(read) }
attributes #28 = { cold optsize }
attributes #29 = { nounwind optsize allocsize(0) }
attributes #30 = { cold }
attributes #31 = { noreturn nounwind optsize }
attributes #32 = { nounwind }
attributes #33 = { nounwind optsize willreturn memory(none) }
attributes #34 = { nounwind optsize allocsize(0,1) }
attributes #35 = { nounwind optsize allocsize(1) }

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
!13 = !{!9, !9, i64 0}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.mustprogress"}
!16 = distinct !{!16, !15}
!17 = !{i32 -128, i32 128}
!18 = distinct !{!18, !15}
!19 = distinct !{!19, !15}
!20 = !{!21, !9, i64 40}
!21 = !{!"bucket", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !22, i64 32, !22, i64 34, !22, i64 36, !22, i64 38, !9, i64 40}
!22 = !{!"short", !9, i64 0}
!23 = !{i32 7, i32 25}
!24 = distinct !{!24, !15}
!25 = distinct !{!25, !15}
!26 = distinct !{!26, !15}
!27 = !{i32 0, i32 25}
!28 = !{!21, !12, i64 24}
!29 = !{!21, !12, i64 16}
!30 = distinct !{!30, !15}
!31 = !{!32, !12, i64 8}
!32 = !{!"symbol_list", !12, i64 0, !12, i64 8, !12, i64 16}
!33 = !{!21, !22, i64 32}
!34 = !{!32, !12, i64 0}
!35 = !{!32, !12, i64 16}
!36 = distinct !{!36, !15}
!37 = distinct !{!37, !15}
!38 = distinct !{!38, !15}
!39 = distinct !{!39, !15}
!40 = distinct !{!40, !15}
!41 = !{!22, !22, i64 0}
!42 = distinct !{!42, !15}
!43 = distinct !{!43, !15}
!44 = distinct !{!44, !15}
!45 = !{!21, !22, i64 38}
!46 = !{!21, !22, i64 34}
!47 = !{!21, !22, i64 36}
!48 = distinct !{!48, !15}
!49 = distinct !{!49, !15, !50, !51}
!50 = !{!"llvm.loop.isvectorized", i32 1}
!51 = !{!"llvm.loop.unroll.runtime.disable"}
!52 = distinct !{!52, !15}
!53 = distinct !{!53, !15}
!54 = distinct !{!54, !15}
!55 = distinct !{!55, !15}
!56 = !{!21, !12, i64 0}
!57 = distinct !{!57, !15}
!58 = distinct !{!58, !15}
!59 = !{!60, !12, i64 0}
!60 = !{!"shorts", !12, i64 0, !22, i64 8}
!61 = !{!60, !22, i64 8}
!62 = distinct !{!62, !15}
!63 = distinct !{!63, !15}
!64 = distinct !{!64, !15}
!65 = distinct !{!65, !15}
!66 = distinct !{!66, !15}
!67 = distinct !{!67, !15}
!68 = distinct !{!68, !15}
!69 = distinct !{!69, !15}
!70 = distinct !{!70, !15}
!71 = distinct !{!71, !15}
!72 = distinct !{!72, !15}
!73 = distinct !{!73, !15}
!74 = distinct !{!74, !15}
!75 = distinct !{!75, !15}
!76 = distinct !{!76, !15}
!77 = distinct !{!77, !15}
!78 = distinct !{!78, !15}
!79 = distinct !{!79, !15}
!80 = distinct !{!80, !15}
!81 = !{!82, !22, i64 20}
!82 = !{!"core", !12, i64 0, !12, i64 8, !22, i64 16, !22, i64 18, !22, i64 20, !9, i64 22}
!83 = distinct !{!83, !15}
!84 = distinct !{!84, !15}
!85 = distinct !{!85, !15}
!86 = distinct !{!86, !15}
!87 = distinct !{!87, !15}
!88 = distinct !{!88, !15}
!89 = distinct !{!89, !15}
!90 = distinct !{!90, !15}
!91 = !{!82, !22, i64 16}
!92 = !{!93, !22, i64 8}
!93 = !{!"reductions", !12, i64 0, !22, i64 8, !22, i64 10, !9, i64 12}
!94 = !{!93, !22, i64 10}
!95 = distinct !{!95, !15}
!96 = distinct !{!96, !15}
!97 = distinct !{!97, !15}
!98 = distinct !{!98, !15}
!99 = distinct !{!99, !15}
!100 = distinct !{!100, !15}
!101 = !{!82, !12, i64 8}
!102 = distinct !{!102, !15}
!103 = distinct !{!103, !15}
!104 = !{!105, !22, i64 8}
!105 = !{!"shifts", !12, i64 0, !22, i64 8, !22, i64 10, !9, i64 12}
!106 = !{!105, !22, i64 10}
!107 = distinct !{!107, !15}
!108 = !{!82, !12, i64 0}
!109 = distinct !{!109, !15}
!110 = !{!82, !22, i64 18}
!111 = distinct !{!111, !15}
!112 = !{!105, !12, i64 0}
!113 = distinct !{!113, !15}
!114 = distinct !{!114, !15}
!115 = distinct !{!115, !15}
!116 = distinct !{!116, !15}
!117 = distinct !{!117, !15}
!118 = distinct !{!118, !15}
!119 = distinct !{!119, !15}
!120 = distinct !{!120, !15}
!121 = distinct !{!121, !15}
!122 = distinct !{!122, !15}
!123 = distinct !{!123, !15}
!124 = distinct !{!124, !15}
!125 = distinct !{!125, !15}
!126 = distinct !{!126, !15}
!127 = distinct !{!127, !15}
!128 = distinct !{!128, !15}
!129 = distinct !{!129, !15}
!130 = distinct !{!130, !15}
!131 = distinct !{!131, !15}
!132 = !{i32 -32768, i32 32768}
!133 = distinct !{!133, !15}
!134 = distinct !{!134, !15}
!135 = distinct !{!135, !15}
!136 = distinct !{!136, !15}
!137 = distinct !{!137, !15}
!138 = distinct !{!138, !15}
!139 = distinct !{!139, !15}
!140 = distinct !{!140, !15}
!141 = distinct !{!141, !15}
!142 = distinct !{!142, !15}
!143 = distinct !{!143, !15}
!144 = distinct !{!144, !15}
!145 = distinct !{!145, !15}
!146 = distinct !{!146, !15}
!147 = distinct !{!147, !15}
!148 = distinct !{!148, !15}
!149 = distinct !{!149, !15}
!150 = distinct !{!150, !15}
!151 = distinct !{!151, !15}
!152 = distinct !{!152, !15}
!153 = distinct !{!153, !15}
!154 = distinct !{!154, !15}
!155 = distinct !{!155, !15}
!156 = distinct !{!156, !15}
!157 = !{!158, !22, i64 0}
!158 = !{!"errs", !22, i64 0, !9, i64 2}
!159 = distinct !{!159, !15}
!160 = distinct !{!160, !15}
!161 = distinct !{!161, !15}
!162 = distinct !{!162, !15}
!163 = distinct !{!163, !15}
!164 = distinct !{!164, !15}
!165 = distinct !{!165, !15}
!166 = distinct !{!166, !15}
!167 = distinct !{!167, !15}
!168 = distinct !{!168, !15}
!169 = distinct !{!169, !15}
!170 = distinct !{!170, !15}
!171 = distinct !{!171, !15}
!172 = distinct !{!172, !15}
!173 = distinct !{!173, !15}
!174 = distinct !{!174, !15}
!175 = distinct !{!175, !15}
!176 = distinct !{!176, !15}
!177 = distinct !{!177, !15}
!178 = distinct !{!178, !15}
!179 = distinct !{!179, !15}
!180 = distinct !{!180, !15}
!181 = distinct !{!181, !15}
!182 = distinct !{!182, !15}
!183 = distinct !{!183, !15}
!184 = distinct !{!184, !15}
!185 = distinct !{!185, !15}
!186 = distinct !{!186, !15}
!187 = distinct !{!187, !15}
!188 = distinct !{!188, !15}
!189 = distinct !{!189, !15}
!190 = distinct !{!190, !15}
!191 = !{!21, !12, i64 8}
!192 = distinct !{!192, !15}
!193 = distinct !{!193, !15}
!194 = distinct !{!194, !15}
!195 = distinct !{!195, !15}
!196 = distinct !{!196, !15}
!197 = distinct !{!197, !15}
!198 = distinct !{!198, !15}
!199 = distinct !{!199, !15}
!200 = distinct !{!200, !15}
!201 = distinct !{!201, !15}
!202 = distinct !{!202, !15}
!203 = distinct !{!203, !15}
!204 = distinct !{!204, !15}
!205 = distinct !{!205, !15}
!206 = distinct !{!206, !15}
!207 = distinct !{!207, !15}
!208 = distinct !{!208, !15}
!209 = distinct !{!209, !15}
!210 = distinct !{!210, !15}
!211 = distinct !{!211, !15}
!212 = distinct !{!212, !15}
!213 = distinct !{!213, !15}
!214 = distinct !{!214, !15}
!215 = distinct !{!215, !15}
!216 = distinct !{!216, !15}
!217 = distinct !{!217, !15}
!218 = distinct !{!218, !15}
!219 = distinct !{!219, !15}
!220 = distinct !{!220, !15}
!221 = distinct !{!221, !15}
!222 = distinct !{!222, !15}
!223 = distinct !{!223, !15}
!224 = distinct !{!224, !15}
!225 = distinct !{!225, !15}
!226 = distinct !{!226, !15}
!227 = distinct !{!227, !15}
!228 = distinct !{!228, !15}
!229 = distinct !{!229, !15}
!230 = distinct !{!230, !15}
!231 = distinct !{!231, !15}
!232 = distinct !{!232, !15}
!233 = distinct !{!233, !15}
!234 = !{i32 -32768, i32 32769}
!235 = distinct !{!235, !15}
!236 = distinct !{!236, !15}
!237 = !{!93, !12, i64 0}
!238 = distinct !{!238, !15}
!239 = distinct !{!239, !15}
!240 = distinct !{!240, !15}
!241 = distinct !{!241, !15}
!242 = distinct !{!242, !15}
!243 = distinct !{!243, !15}
!244 = distinct !{!244, !15, !50, !51}
!245 = distinct !{!245, !15}
!246 = distinct !{!246, !15}
!247 = distinct !{!247, !15}
!248 = distinct !{!248, !15}
!249 = distinct !{!249, !15}
!250 = distinct !{!250, !15}
!251 = distinct !{!251, !15}
!252 = distinct !{!252, !15}
!253 = distinct !{!253, !15}
!254 = distinct !{!254, !15}
!255 = distinct !{!255, !15}
!256 = distinct !{!256, !15}
!257 = distinct !{!257, !15}
!258 = distinct !{!258, !15}
!259 = distinct !{!259, !15}
!260 = distinct !{!260, !15}
!261 = distinct !{!261, !15}
!262 = distinct !{!262, !15}
!263 = distinct !{!263, !15}
!264 = distinct !{!264, !15}
!265 = distinct !{!265, !15}
!266 = distinct !{!266, !15}
!267 = distinct !{!267, !15}
!268 = distinct !{!268, !15}
!269 = distinct !{!269, !15}
!270 = distinct !{!270, !15}
!271 = distinct !{!271, !15}
!272 = distinct !{!272, !15}
!273 = distinct !{!273, !15}
!274 = distinct !{!274, !15}
!275 = distinct !{!275, !15}
!276 = distinct !{!276, !15}
!277 = distinct !{!277, !15}
