; ModuleID = 'lemon.e.bc.ll'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s_options = type { i32, ptr, ptr, ptr }
%struct.pstate = type { ptr, i32, i32, ptr, ptr, i32, ptr, ptr, ptr, i32, [1000 x ptr], [1000 x ptr], ptr, ptr, ptr, ptr, i32, i32, ptr, ptr }
%struct.lemon = type { ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, i32, i32, i32, i32, ptr }
%struct.s_x4 = type { i32, i32, ptr, ptr }
%struct.s_x4node = type { ptr, ptr, ptr }
%struct.s_x3node = type { ptr, ptr, ptr, ptr }
%struct.symbol = type { ptr, i32, i32, ptr, ptr, i32, i32, ptr, i32, i32, ptr, i32, ptr, i32, i32, ptr }
%struct.rule = type { ptr, ptr, i32, i32, i32, ptr, ptr, i32, ptr, ptr, i32, i32, ptr, ptr }
%struct.config = type { ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr }
%struct.state = type { ptr, ptr, i32, ptr, i32, i32, i32, i32, i32 }
%struct.plink = type { ptr, ptr }
%struct.action = type { ptr, i32, %union.anon, ptr, ptr }
%union.anon = type { ptr }
%struct.axset = type { ptr, i32, i32 }
%struct.acttab = type { i32, i32, ptr, ptr, i32, i32, i32, i32, i32 }
%struct.anon = type { i32, i32 }

@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [44 x i8] c"Unable to allocate memory for a new acttab.\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"malloc failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [120 x i8] c"The specified start symbol \22%s\22 is not in a nonterminal of the grammar.  \22%s\22 will be used as the start symbol instead.\00", align 1
@.str.3 = private unnamed_addr constant [122 x i8] c"The start symbol \22%s\22 occurs on the right-hand side of a rule. This will result in a parser which does not work properly.\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"This rule can not be reduced.\0A\00", align 1
@freelist = internal unnamed_addr global ptr null, align 8
@.str.5 = private unnamed_addr constant [51 x i8] c"Unable to allocate memory for a new configuration.\00", align 1
@current = internal global ptr null, align 8
@currentend = internal unnamed_addr global ptr null, align 8
@basis = internal global ptr null, align 8
@basisend = internal unnamed_addr global ptr null, align 8
@.str.6 = private unnamed_addr constant [31 x i8] c"Nonterminal \22%s\22 has no rules.\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"%.*s:%d: \00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"%.*s: \00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@.str.9 = private unnamed_addr constant [8 x i8] c"%s%.*s\0A\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"Out of memory.  Aborting...\0A\00", align 1
@lemon_main.version = internal global i32 0, align 4
@lemon_main.rpflag = internal global i32 0, align 4
@lemon_main.basisflag = internal global i32 0, align 4
@lemon_main.compress = internal global i32 0, align 4
@lemon_main.quiet = internal global i32 0, align 4
@lemon_main.statistics = internal global i32 0, align 4
@lemon_main.mhflag = internal global i32 0, align 4
@lemon_main.options = internal global [9 x %struct.s_options] [%struct.s_options { i32 1, ptr @.str.11, ptr @lemon_main.basisflag, ptr @.str.12 }, %struct.s_options { i32 1, ptr @.str.13, ptr @lemon_main.compress, ptr @.str.14 }, %struct.s_options { i32 8, ptr @.str.15, ptr @handle_D_option, ptr @.str.16 }, %struct.s_options { i32 1, ptr @.str.17, ptr @lemon_main.rpflag, ptr @.str.18 }, %struct.s_options { i32 1, ptr @.str.19, ptr @lemon_main.mhflag, ptr @.str.20 }, %struct.s_options { i32 1, ptr @.str.21, ptr @lemon_main.quiet, ptr @.str.22 }, %struct.s_options { i32 1, ptr @.str.23, ptr @lemon_main.statistics, ptr @.str.24 }, %struct.s_options { i32 1, ptr @.str.25, ptr @lemon_main.version, ptr @.str.26 }, %struct.s_options { i32 1, ptr null, ptr null, ptr null }], align 16
@.str.11 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str.12 = private unnamed_addr constant [32 x i8] c"Print only the basis in report.\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.14 = private unnamed_addr constant [33 x i8] c"Don't compress the action table.\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"D\00", align 1
@.str.16 = private unnamed_addr constant [24 x i8] c"Define an %ifdef macro.\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"g\00", align 1
@.str.18 = private unnamed_addr constant [31 x i8] c"Print grammar without actions.\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c"m\00", align 1
@.str.20 = private unnamed_addr constant [37 x i8] c"Output a makeheaders compatible file\00", align 1
@.str.21 = private unnamed_addr constant [2 x i8] c"q\00", align 1
@.str.22 = private unnamed_addr constant [37 x i8] c"(Quiet) Don't print the report file.\00", align 1
@.str.23 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.24 = private unnamed_addr constant [39 x i8] c"Print parser stats to standard output.\00", align 1
@.str.25 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.26 = private unnamed_addr constant [26 x i8] c"Print the version number.\00", align 1
@.str.28 = private unnamed_addr constant [44 x i8] c"Exactly one filename argument is required.\0A\00", align 1
@.str.29 = private unnamed_addr constant [2 x i8] c"$\00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.31 = private unnamed_addr constant [16 x i8] c"Empty grammar.\0A\00", align 1
@.str.32 = private unnamed_addr constant [10 x i8] c"{default}\00", align 1
@.str.33 = private unnamed_addr constant [60 x i8] c"Parser statistics: %d terminals, %d nonterminals, %d rules\0A\00", align 1
@.str.34 = private unnamed_addr constant [69 x i8] c"                   %d states, %d parser table entries, %d conflicts\0A\00", align 1
@argv = internal unnamed_addr global ptr null, align 8
@op = internal unnamed_addr global ptr null, align 8
@errstream = internal unnamed_addr global ptr null, align 8
@.str.35 = private unnamed_addr constant [42 x i8] c"Valid command line options for \22%s\22 are:\0A\00", align 1
@.str.36 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@.str.37 = private unnamed_addr constant [13 x i8] c"  -%-*s  %s\0A\00", align 1
@.str.38 = private unnamed_addr constant [23 x i8] c"  %s=<integer>%*s  %s\0A\00", align 1
@.str.39 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.40 = private unnamed_addr constant [20 x i8] c"  %s=<real>%*s  %s\0A\00", align 1
@.str.41 = private unnamed_addr constant [22 x i8] c"  %s=<string>%*s  %s\0A\00", align 1
@.str.42 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.43 = private unnamed_addr constant [34 x i8] c"Can't open this file for reading.\00", align 1
@.str.44 = private unnamed_addr constant [47 x i8] c"Can't allocate %d of memory to hold this file.\00", align 1
@.str.45 = private unnamed_addr constant [41 x i8] c"Can't read in all %d bytes of this file.\00", align 1
@.str.46 = private unnamed_addr constant [75 x i8] c"String starting on this line is not terminated before the end of the file.\00", align 1
@.str.47 = private unnamed_addr constant [75 x i8] c"C code starting on this line is not terminated before the end of the file.\00", align 1
@plink_freelist = internal unnamed_addr global ptr null, align 8
@.str.48 = private unnamed_addr constant [66 x i8] c"Unable to allocate memory for a new follow-set propagation link.\0A\00", align 1
@.str.49 = private unnamed_addr constant [38 x i8] c"Can't allocate space for a filename.\0A\00", align 1
@.str.50 = private unnamed_addr constant [23 x i8] c"Can't open file \22%s\22.\0A\00", align 1
@.str.51 = private unnamed_addr constant [44 x i8] c"// Reprint of input file \22%s\22.\0A// Symbols:\0A\00", align 1
@.str.52 = private unnamed_addr constant [3 x i8] c"//\00", align 1
@.str.53 = private unnamed_addr constant [12 x i8] c" %3d %-*.*s\00", align 1
@.str.54 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.55 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.56 = private unnamed_addr constant [5 x i8] c" ::=\00", align 1
@.str.57 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.58 = private unnamed_addr constant [4 x i8] c"|%s\00", align 1
@.str.60 = private unnamed_addr constant [6 x i8] c" [%s]\00", align 1
@.str.61 = private unnamed_addr constant [7 x i8] c"%s ::=\00", align 1
@.str.62 = private unnamed_addr constant [3 x i8] c" *\00", align 1
@.str.63 = private unnamed_addr constant [14 x i8] c"%*s shift  %d\00", align 1
@.str.64 = private unnamed_addr constant [14 x i8] c"%*s reduce %d\00", align 1
@.str.65 = private unnamed_addr constant [11 x i8] c"%*s accept\00", align 1
@.str.66 = private unnamed_addr constant [10 x i8] c"%*s error\00", align 1
@.str.67 = private unnamed_addr constant [39 x i8] c"%*s reduce %-3d ** Parsing conflict **\00", align 1
@.str.68 = private unnamed_addr constant [37 x i8] c"%*s shift  %d ** Parsing conflict **\00", align 1
@.str.69 = private unnamed_addr constant [5 x i8] c".out\00", align 1
@.str.70 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.71 = private unnamed_addr constant [11 x i8] c"State %d:\0A\00", align 1
@.str.72 = private unnamed_addr constant [5 x i8] c"(%d)\00", align 1
@.str.73 = private unnamed_addr constant [9 x i8] c"    %5s \00", align 1
@.str.74 = private unnamed_addr constant [11 x i8] c"          \00", align 1
@.str.75 = private unnamed_addr constant [54 x i8] c"----------------------------------------------------\0A\00", align 1
@.str.76 = private unnamed_addr constant [10 x i8] c"Symbols:\0A\00", align 1
@.str.77 = private unnamed_addr constant [10 x i8] c"  %3d: %s\00", align 1
@.str.79 = private unnamed_addr constant [10 x i8] c" <lambda>\00", align 1
@.str.80 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.81 = private unnamed_addr constant [5 x i8] c"PATH\00", align 1
@.str.82 = private unnamed_addr constant [16 x i8] c".:/bin:/usr/bin\00", align 1
@.str.83 = private unnamed_addr constant [6 x i8] c"Parse\00", align 1
@.str.84 = private unnamed_addr constant [5 x i8] c"%.*s\00", align 1
@tplt_open.templatename = internal global [9 x i8] c"lempar.c\00", align 1
@.str.85 = private unnamed_addr constant [8 x i8] c"%.*s.lt\00", align 1
@.str.86 = private unnamed_addr constant [6 x i8] c"%s.lt\00", align 1
@.str.87 = private unnamed_addr constant [50 x i8] c"Can't find the parser driver template file \22%s\22.\0A\00", align 1
@.str.88 = private unnamed_addr constant [36 x i8] c"Can't open the template file \22%s\22.\0A\00", align 1
@.str.89 = private unnamed_addr constant [11 x i8] c"#line %d \22\00", align 1
@.str.90 = private unnamed_addr constant [3 x i8] c"\22\0A\00", align 1
@.str.92 = private unnamed_addr constant [17 x i8] c"(yypminor->yy%d)\00", align 1
@.str.93 = private unnamed_addr constant [3 x i8] c"}\0A\00", align 1
@append_str.z = internal unnamed_addr global ptr null, align 8
@append_str.alloced = internal unnamed_addr global i32 0, align 4
@append_str.used = internal unnamed_addr global i32 0, align 4
@.str.94 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.95 = private unnamed_addr constant [17 x i8] c"yygotominor.yy%d\00", align 1
@.str.96 = private unnamed_addr constant [16 x i8] c"yymsp[%d].major\00", align 1
@.str.97 = private unnamed_addr constant [21 x i8] c"yymsp[%d].minor.yy%d\00", align 1
@.str.98 = private unnamed_addr constant [39 x i8] c"Label \22%s\22 for \22%s(%s)\22 is never used.\00", align 1
@.str.99 = private unnamed_addr constant [37 x i8] c"Label %s for \22%s(%s)\22 is never used.\00", align 1
@.str.100 = private unnamed_addr constant [39 x i8] c"  yy_destructor(%d,&yymsp[%d].minor);\0A\00", align 1
@.str.101 = private unnamed_addr constant [4 x i8] c"{%s\00", align 1
@.str.102 = private unnamed_addr constant [16 x i8] c"Out of memory.\0A\00", align 1
@.str.103 = private unnamed_addr constant [15 x i8] c"#if INTERFACE\0A\00", align 1
@.str.104 = private unnamed_addr constant [24 x i8] c"#define %sTOKENTYPE %s\0A\00", align 1
@.str.105 = private unnamed_addr constant [6 x i8] c"void*\00", align 1
@.str.106 = private unnamed_addr constant [8 x i8] c"#endif\0A\00", align 1
@.str.107 = private unnamed_addr constant [17 x i8] c"typedef union {\0A\00", align 1
@.str.108 = private unnamed_addr constant [20 x i8] c"  %sTOKENTYPE yy0;\0A\00", align 1
@.str.109 = private unnamed_addr constant [12 x i8] c"  %s yy%d;\0A\00", align 1
@.str.110 = private unnamed_addr constant [13 x i8] c"  int yy%d;\0A\00", align 1
@.str.111 = private unnamed_addr constant [16 x i8] c"} YYMINORTYPE;\0A\00", align 1
@.str.112 = private unnamed_addr constant [3 x i8] c".c\00", align 1
@.str.113 = private unnamed_addr constant [3 x i8] c".h\00", align 1
@.str.114 = private unnamed_addr constant [15 x i8] c"#include \22%s\22\0A\00", align 1
@.str.115 = private unnamed_addr constant [21 x i8] c"#define %s%-30s %2d\0A\00", align 1
@.str.116 = private unnamed_addr constant [23 x i8] c"#define YYCODETYPE %s\0A\00", align 1
@.str.117 = private unnamed_addr constant [21 x i8] c"#define YYNOCODE %d\0A\00", align 1
@.str.118 = private unnamed_addr constant [25 x i8] c"#define YYACTIONTYPE %s\0A\00", align 1
@.str.119 = private unnamed_addr constant [23 x i8] c"#define YYWILDCARD %d\0A\00", align 1
@.str.120 = private unnamed_addr constant [22 x i8] c"#ifndef YYSTACKDEPTH\0A\00", align 1
@.str.121 = private unnamed_addr constant [25 x i8] c"#define YYSTACKDEPTH %s\0A\00", align 1
@.str.122 = private unnamed_addr constant [26 x i8] c"#define YYSTACKDEPTH 100\0A\00", align 1
@.str.123 = private unnamed_addr constant [25 x i8] c"#define %sARG_SDECL %s;\0A\00", align 1
@.str.124 = private unnamed_addr constant [25 x i8] c"#define %sARG_PDECL ,%s\0A\00", align 1
@.str.125 = private unnamed_addr constant [40 x i8] c"#define %sARG_FETCH %s = yypParser->%s\0A\00", align 1
@.str.126 = private unnamed_addr constant [40 x i8] c"#define %sARG_STORE yypParser->%s = %s\0A\00", align 1
@.str.127 = private unnamed_addr constant [21 x i8] c"#define %sARG_SDECL\0A\00", align 1
@.str.128 = private unnamed_addr constant [21 x i8] c"#define %sARG_PDECL\0A\00", align 1
@.str.129 = private unnamed_addr constant [21 x i8] c"#define %sARG_FETCH\0A\00", align 1
@.str.130 = private unnamed_addr constant [21 x i8] c"#define %sARG_STORE\0A\00", align 1
@.str.131 = private unnamed_addr constant [21 x i8] c"#define YYNSTATE %d\0A\00", align 1
@.str.132 = private unnamed_addr constant [20 x i8] c"#define YYNRULE %d\0A\00", align 1
@.str.133 = private unnamed_addr constant [26 x i8] c"#define YYERRORSYMBOL %d\0A\00", align 1
@.str.134 = private unnamed_addr constant [25 x i8] c"#define YYERRSYMDT yy%d\0A\00", align 1
@.str.135 = private unnamed_addr constant [22 x i8] c"#define YYFALLBACK 1\0A\00", align 1
@.str.136 = private unnamed_addr constant [43 x i8] c"static const YYACTIONTYPE yy_action[] = {\0A\00", align 1
@.str.137 = private unnamed_addr constant [12 x i8] c" /* %5d */ \00", align 1
@.str.138 = private unnamed_addr constant [6 x i8] c" %4d,\00", align 1
@.str.139 = private unnamed_addr constant [4 x i8] c"};\0A\00", align 1
@.str.140 = private unnamed_addr constant [44 x i8] c"static const YYCODETYPE yy_lookahead[] = {\0A\00", align 1
@.str.141 = private unnamed_addr constant [32 x i8] c"#define YY_SHIFT_USE_DFLT (%d)\0A\00", align 1
@.str.142 = private unnamed_addr constant [25 x i8] c"#define YY_SHIFT_MAX %d\0A\00", align 1
@.str.143 = private unnamed_addr constant [37 x i8] c"static const %s yy_shift_ofst[] = {\0A\00", align 1
@.str.144 = private unnamed_addr constant [33 x i8] c"#define YY_REDUCE_USE_DFLT (%d)\0A\00", align 1
@.str.145 = private unnamed_addr constant [26 x i8] c"#define YY_REDUCE_MAX %d\0A\00", align 1
@.str.146 = private unnamed_addr constant [38 x i8] c"static const %s yy_reduce_ofst[] = {\0A\00", align 1
@.str.147 = private unnamed_addr constant [44 x i8] c"static const YYACTIONTYPE yy_default[] = {\0A\00", align 1
@.str.148 = private unnamed_addr constant [31 x i8] c"    0,  /* %10s => nothing */\0A\00", align 1
@.str.149 = private unnamed_addr constant [26 x i8] c"  %3d,  /* %10s => %s */\0A\00", align 1
@.str.150 = private unnamed_addr constant [6 x i8] c"\22%s\22,\00", align 1
@.str.151 = private unnamed_addr constant [8 x i8] c"  %-15s\00", align 1
@.str.152 = private unnamed_addr constant [13 x i8] c" /* %3d */ \22\00", align 1
@.str.153 = private unnamed_addr constant [4 x i8] c"\22,\0A\00", align 1
@.str.154 = private unnamed_addr constant [23 x i8] c"    case %d: /* %s */\0A\00", align 1
@.str.155 = private unnamed_addr constant [14 x i8] c"      break;\0A\00", align 1
@.str.156 = private unnamed_addr constant [15 x i8] c"  { %d, %d },\0A\00", align 1
@.str.157 = private unnamed_addr constant [19 x i8] c"      case %d: /* \00", align 1
@.str.158 = private unnamed_addr constant [5 x i8] c" */\0A\00", align 1
@.str.159 = private unnamed_addr constant [16 x i8] c"        break;\0A\00", align 1
@size = internal unnamed_addr global i32 0, align 4
@x1a = internal unnamed_addr global ptr null, align 8
@x2a = internal unnamed_addr global ptr null, align 8
@x3a = internal unnamed_addr global ptr null, align 8
@x4a = internal unnamed_addr global ptr null, align 8
@.str.160 = private unnamed_addr constant [12 x i8] c"lemon-child\00", align 1
@.str.161 = private unnamed_addr constant [3 x i8] c"-s\00", align 1
@.str.162 = private unnamed_addr constant [15 x i8] c"Processing %s\0A\00", align 1
@.str.163 = private unnamed_addr constant [28 x i8] c"Error while running on: %s\0A\00", align 1
@Action_new.freelist = internal unnamed_addr global ptr null, align 8
@.str.164 = private unnamed_addr constant [51 x i8] c"Unable to allocate memory for a new parser action.\00", align 1
@nDefine = internal unnamed_addr global i32 0, align 4
@azDefine = internal unnamed_addr global ptr null, align 8
@.str.165 = private unnamed_addr constant [15 x i8] c"out of memory\0A\00", align 1
@.str.166 = private unnamed_addr constant [21 x i8] c"%sundefined option.\0A\00", align 1
@emsg = internal global [28 x i8] c"Command line syntax error: \00", align 16
@.str.167 = private unnamed_addr constant [31 x i8] c"%smissing argument on switch.\0A\00", align 1
@.str.168 = private unnamed_addr constant [32 x i8] c"%soption requires an argument.\0A\00", align 1
@.str.169 = private unnamed_addr constant [49 x i8] c"%sillegal character in floating-point argument.\0A\00", align 1
@.str.170 = private unnamed_addr constant [42 x i8] c"%sillegal character in integer argument.\0A\00", align 1
@.str.171 = private unnamed_addr constant [14 x i8] c"\0A%*s^-- here\0A\00", align 1
@.str.172 = private unnamed_addr constant [14 x i8] c"\0A%*shere --^\0A\00", align 1
@.str.173 = private unnamed_addr constant [7 x i8] c"%endif\00", align 1
@.str.174 = private unnamed_addr constant [7 x i8] c"%ifdef\00", align 1
@.str.175 = private unnamed_addr constant [8 x i8] c"%ifndef\00", align 1
@.str.176 = private unnamed_addr constant [42 x i8] c"unterminated %%ifdef starting on line %d\0A\00", align 1
@.str.177 = private unnamed_addr constant [90 x i8] c"There is not prior rule opon which to attach the code fragment which begins on this line.\00", align 1
@.str.178 = private unnamed_addr constant [83 x i8] c"Code fragment beginning on this line is not the first to follow the previous rule.\00", align 1
@.str.179 = private unnamed_addr constant [56 x i8] c"Token \22%s\22 should be either \22%%\22 or a nonterminal name.\00", align 1
@.str.180 = private unnamed_addr constant [42 x i8] c"The precedence symbol must be a terminal.\00", align 1
@.str.181 = private unnamed_addr constant [52 x i8] c"There is no prior rule to assign precedence \22[%s]\22.\00", align 1
@.str.182 = private unnamed_addr constant [75 x i8] c"Precedence mark on this line is not the first to follow the previous rule.\00", align 1
@.str.183 = private unnamed_addr constant [32 x i8] c"Missing \22]\22 on precedence mark.\00", align 1
@.str.184 = private unnamed_addr constant [53 x i8] c"Expected to see a \22:\22 following the LHS symbol \22%s\22.\00", align 1
@.str.185 = private unnamed_addr constant [44 x i8] c"\22%s\22 is not a valid alias for the LHS \22%s\22\0A\00", align 1
@.str.186 = private unnamed_addr constant [43 x i8] c"Missing \22)\22 following LHS alias name \22%s\22.\00", align 1
@.str.187 = private unnamed_addr constant [34 x i8] c"Missing \22->\22 following: \22%s(%s)\22.\00", align 1
@.str.188 = private unnamed_addr constant [44 x i8] c"Can't allocate enough memory for this rule.\00", align 1
@.str.189 = private unnamed_addr constant [51 x i8] c"Too many symbols on RHS of rule beginning at \22%s\22.\00", align 1
@.str.190 = private unnamed_addr constant [49 x i8] c"Cannot form a compound containing a non-terminal\00", align 1
@.str.191 = private unnamed_addr constant [40 x i8] c"Illegal character on RHS of rule: \22%s\22.\00", align 1
@.str.192 = private unnamed_addr constant [51 x i8] c"\22%s\22 is not a valid alias for the RHS symbol \22%s\22\0A\00", align 1
@.str.193 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.194 = private unnamed_addr constant [8 x i8] c"include\00", align 1
@.str.195 = private unnamed_addr constant [5 x i8] c"code\00", align 1
@.str.196 = private unnamed_addr constant [17 x i8] c"token_destructor\00", align 1
@.str.197 = private unnamed_addr constant [19 x i8] c"default_destructor\00", align 1
@.str.198 = private unnamed_addr constant [13 x i8] c"token_prefix\00", align 1
@.str.199 = private unnamed_addr constant [13 x i8] c"syntax_error\00", align 1
@.str.200 = private unnamed_addr constant [13 x i8] c"parse_accept\00", align 1
@.str.201 = private unnamed_addr constant [14 x i8] c"parse_failure\00", align 1
@.str.202 = private unnamed_addr constant [15 x i8] c"stack_overflow\00", align 1
@.str.203 = private unnamed_addr constant [15 x i8] c"extra_argument\00", align 1
@.str.204 = private unnamed_addr constant [11 x i8] c"token_type\00", align 1
@.str.205 = private unnamed_addr constant [13 x i8] c"default_type\00", align 1
@.str.206 = private unnamed_addr constant [11 x i8] c"stack_size\00", align 1
@.str.207 = private unnamed_addr constant [13 x i8] c"start_symbol\00", align 1
@.str.208 = private unnamed_addr constant [5 x i8] c"left\00", align 1
@.str.209 = private unnamed_addr constant [6 x i8] c"right\00", align 1
@.str.210 = private unnamed_addr constant [9 x i8] c"nonassoc\00", align 1
@.str.211 = private unnamed_addr constant [11 x i8] c"destructor\00", align 1
@.str.212 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.213 = private unnamed_addr constant [9 x i8] c"fallback\00", align 1
@.str.214 = private unnamed_addr constant [9 x i8] c"wildcard\00", align 1
@.str.215 = private unnamed_addr constant [37 x i8] c"Unknown declaration keyword: \22%%%s\22.\00", align 1
@.str.216 = private unnamed_addr constant [35 x i8] c"Illegal declaration keyword: \22%s\22.\00", align 1
@.str.217 = private unnamed_addr constant [46 x i8] c"Symbol name missing after %destructor keyword\00", align 1
@.str.218 = private unnamed_addr constant [47 x i8] c"Symbol \22%s\22 has already be given a precedence.\00", align 1
@.str.219 = private unnamed_addr constant [35 x i8] c"Can't assign a precedence to \22%s\22.\00", align 1
@.str.220 = private unnamed_addr constant [58 x i8] c"The argument \22%s\22 to declaration \22%%%s\22 is not the first.\00", align 1
@.str.221 = private unnamed_addr constant [29 x i8] c"Illegal argument to %%%s: %s\00", align 1
@.str.222 = private unnamed_addr constant [43 x i8] c"%%fallback argument \22%s\22 should be a token\00", align 1
@.str.223 = private unnamed_addr constant [44 x i8] c"More than one fallback assigned to token %s\00", align 1
@.str.224 = private unnamed_addr constant [43 x i8] c"%%wildcard argument \22%s\22 should be a token\00", align 1
@.str.225 = private unnamed_addr constant [28 x i8] c"Extra wildcard to token: %s\00", align 1
@.str.226 = private unnamed_addr constant [14 x i8] c"unsigned char\00", align 1
@.str.227 = private unnamed_addr constant [19 x i8] c"unsigned short int\00", align 1
@.str.228 = private unnamed_addr constant [13 x i8] c"unsigned int\00", align 1
@.str.229 = private unnamed_addr constant [12 x i8] c"signed char\00", align 1
@.str.230 = private unnamed_addr constant [6 x i8] c"short\00", align 1
@.str.231 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@str = private unnamed_addr constant [18 x i8] c"Lemon version 1.0\00", align 1

; Function Attrs: nounwind optsize uwtable
define dso_local i32 @main(i32 noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca [4 x ptr], align 16
  %5 = icmp sgt i32 %0, 1
  %6 = zext i32 %0 to i64
  br label %7

7:                                                ; preds = %47, %2
  %8 = phi i32 [ 0, %2 ], [ %48, %47 ]
  br i1 %5, label %9, label %47

9:                                                ; preds = %44, %7
  %10 = phi i64 [ %45, %44 ], [ 1, %7 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #25
  %11 = call i32 @fork() #26
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %9
  %.lcssa = phi i64 [ %10, %9 ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #25
  store ptr @.str.160, ptr %4, align 16, !tbaa !7
  %14 = getelementptr inbounds ptr, ptr %4, i64 1
  store ptr @.str.161, ptr %14, align 8, !tbaa !7
  %15 = getelementptr inbounds ptr, ptr %4, i64 2
  %16 = and i64 %.lcssa, 4294967295
  %17 = getelementptr inbounds ptr, ptr %1, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !7
  store ptr %18, ptr %15, align 16, !tbaa !7
  %19 = getelementptr inbounds ptr, ptr %4, i64 3
  store ptr null, ptr %19, align 8, !tbaa !7
  %20 = load ptr, ptr @stdout, align 8, !tbaa !7
  %21 = call fastcc ptr @mybasename(ptr noundef %18) #27
  %22 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %20, ptr noundef nonnull @.str.162, ptr noundef %21) #27
  call fastcc void @lemon_main(ptr noundef nonnull %4) #27
  unreachable

23:                                               ; preds = %26, %9
  %24 = call i32 @wait(ptr noundef nonnull %3) #26
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = tail call ptr @__errno_location() #28
  %28 = load i32, ptr %27, align 4, !tbaa !11
  %29 = icmp eq i32 %28, 4
  br i1 %29, label %23, label %30, !llvm.loop !13

30:                                               ; preds = %26, %23
  %31 = load i32, ptr %3, align 4, !tbaa !11
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %44, label %33

33:                                               ; preds = %30
  %34 = load ptr, ptr @stdout, align 8, !tbaa !7
  %35 = call i32 @fflush(ptr noundef %34) #27
  %36 = load ptr, ptr @stderr, align 8, !tbaa !7
  %37 = getelementptr inbounds ptr, ptr %1, i64 %10
  %38 = load ptr, ptr %37, align 8, !tbaa !7
  %39 = call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %38, i32 noundef 47) #29
  %40 = icmp eq ptr %39, null
  %41 = getelementptr inbounds i8, ptr %39, i64 1
  %42 = select i1 %40, ptr %38, ptr %41
  %43 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %36, ptr noundef nonnull @.str.163, ptr noundef %42) #30
  br label %44

44:                                               ; preds = %33, %30
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #25
  %45 = add nuw nsw i64 %10, 1
  %46 = icmp eq i64 %45, %6
  br i1 %46, label %47, label %9, !llvm.loop !15

47:                                               ; preds = %44, %7
  %48 = add nuw nsw i32 %8, 1
  %49 = icmp eq i32 %48, 20
  br i1 %49, label %50, label %7, !llvm.loop !16

50:                                               ; preds = %47
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind optsize
declare i32 @fork() local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @mybasename(ptr noundef readonly %0) unnamed_addr #3 {
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #29
  %3 = icmp eq ptr %2, null
  %4 = getelementptr inbounds i8, ptr %2, i64 1
  %5 = select i1 %3, ptr %0, ptr %4
  ret ptr %5
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: noreturn nounwind optsize uwtable
define internal fastcc void @lemon_main(ptr noundef %0) unnamed_addr #4 {
  %2 = alloca [1000 x i8], align 16
  %3 = alloca [1000 x i8], align 16
  %4 = alloca [20 x i8], align 16
  %5 = alloca [1000 x i8], align 16
  %6 = alloca [1000 x i8], align 16
  %7 = alloca [1000 x i8], align 16
  %8 = alloca i32, align 4
  %9 = alloca %struct.pstate, align 8
  %10 = alloca ptr, align 8
  %11 = alloca %struct.lemon, align 8
  call void @llvm.lifetime.start.p0(i64 288, ptr nonnull %11) #25
  %12 = load ptr, ptr @stderr, align 8, !tbaa !7
  store ptr %0, ptr @argv, align 8, !tbaa !7
  store ptr @lemon_main.options, ptr @op, align 8, !tbaa !7
  store ptr %12, ptr @errstream, align 8, !tbaa !7
  %13 = icmp eq ptr %0, null
  br i1 %13, label %192, label %14

14:                                               ; preds = %1
  %15 = load ptr, ptr %0, align 8, !tbaa !7
  %16 = icmp eq ptr %15, null
  br i1 %16, label %188, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds ptr, ptr %0, i64 1
  %19 = load ptr, ptr %18, align 8, !tbaa !7
  %20 = icmp eq ptr %19, null
  br i1 %20, label %188, label %21

21:                                               ; preds = %17
  %22 = icmp eq ptr %12, null
  br label %23

23:                                               ; preds = %176, %21
  %24 = phi i64 [ 1, %21 ], [ %178, %176 ]
  %25 = phi ptr [ %19, %21 ], [ %181, %176 ]
  %26 = phi ptr [ %0, %21 ], [ %179, %176 ]
  %27 = phi i32 [ 0, %21 ], [ %177, %176 ]
  %28 = load i8, ptr %25, align 1, !tbaa !17
  switch i8 %28, label %71 [
    i8 43, label %29
    i8 45, label %29
  ]

29:                                               ; preds = %23, %23
  %30 = load ptr, ptr getelementptr inbounds ([9 x %struct.s_options], ptr @lemon_main.options, i64 0, i64 0, i32 1), align 8, !tbaa !18
  %31 = icmp eq ptr %30, null
  br i1 %31, label %45, label %32

32:                                               ; preds = %29
  %33 = getelementptr inbounds i8, ptr %25, i64 1
  br label %39

34:                                               ; preds = %39
  %35 = add nuw i64 %40, 1
  %36 = getelementptr inbounds %struct.s_options, ptr @lemon_main.options, i64 %35, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !18
  %38 = icmp eq ptr %37, null
  br i1 %38, label %45, label %39, !llvm.loop !20

39:                                               ; preds = %34, %32
  %40 = phi i64 [ 0, %32 ], [ %35, %34 ]
  %41 = phi ptr [ %30, %32 ], [ %37, %34 ]
  %42 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %41) #29
  %43 = tail call i32 @strncmp(ptr noundef nonnull %33, ptr noundef nonnull %41, i64 noundef %42) #29
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %49, label %34

45:                                               ; preds = %34, %29
  br i1 %22, label %68, label %46

46:                                               ; preds = %45
  %47 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %12, ptr noundef nonnull @.str.166, ptr noundef nonnull @emsg) #30
  %48 = trunc i64 %24 to i32
  tail call fastcc void @errline(i32 noundef %48, i32 noundef 1, ptr noundef nonnull %12) #27
  br label %68

49:                                               ; preds = %39
  %.lcssa89 = phi i64 [ %40, %39 ]
  %50 = icmp eq i8 %28, 45
  %51 = zext i1 %50 to i32
  %52 = getelementptr inbounds %struct.s_options, ptr @lemon_main.options, i64 %.lcssa89
  %53 = load i32, ptr %52, align 16, !tbaa !21
  switch i32 %53, label %64 [
    i32 1, label %54
    i32 5, label %57
    i32 8, label %60
  ]

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.s_options, ptr @lemon_main.options, i64 %.lcssa89, i32 2
  %56 = load ptr, ptr %55, align 16, !tbaa !22
  store i32 %51, ptr %56, align 4, !tbaa !11
  br label %68

57:                                               ; preds = %49
  %58 = getelementptr inbounds %struct.s_options, ptr @lemon_main.options, i64 %.lcssa89, i32 2
  %59 = load ptr, ptr %58, align 16, !tbaa !22
  tail call void (i32, ...) %59(i32 noundef %51) #26
  br label %68

60:                                               ; preds = %49
  %61 = getelementptr inbounds %struct.s_options, ptr @lemon_main.options, i64 %.lcssa89, i32 2
  %62 = load ptr, ptr %61, align 16, !tbaa !22
  %63 = getelementptr inbounds i8, ptr %25, i64 2
  tail call void (ptr, ...) %62(ptr noundef nonnull %63) #26
  br label %68

64:                                               ; preds = %49
  br i1 %22, label %68, label %65

65:                                               ; preds = %64
  %66 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %12, ptr noundef nonnull @.str.167, ptr noundef nonnull @emsg) #30
  %67 = trunc i64 %24 to i32
  tail call fastcc void @errline(i32 noundef %67, i32 noundef 1, ptr noundef nonnull %12) #27
  br label %68

68:                                               ; preds = %65, %64, %60, %57, %54, %46, %45
  %69 = phi i32 [ 0, %54 ], [ 0, %57 ], [ 0, %60 ], [ 1, %46 ], [ 1, %45 ], [ 1, %65 ], [ 1, %64 ]
  %70 = add nsw i32 %69, %27
  br label %176

71:                                               ; preds = %23
  %72 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %25, i32 noundef 61) #29
  %73 = icmp eq ptr %72, null
  br i1 %73, label %176, label %74

74:                                               ; preds = %71
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #25
  store i8 0, ptr %72, align 1, !tbaa !17
  %75 = load ptr, ptr getelementptr inbounds ([9 x %struct.s_options], ptr @lemon_main.options, i64 0, i64 0, i32 1), align 8, !tbaa !18
  %76 = icmp eq ptr %75, null
  br i1 %76, label %91, label %77

77:                                               ; preds = %74
  %78 = getelementptr inbounds ptr, ptr %26, i64 %24
  %79 = load ptr, ptr %78, align 8, !tbaa !7
  br label %85

80:                                               ; preds = %85
  %81 = add nuw i64 %86, 1
  %82 = getelementptr inbounds %struct.s_options, ptr @lemon_main.options, i64 %81, i32 1
  %83 = load ptr, ptr %82, align 8, !tbaa !18
  %84 = icmp eq ptr %83, null
  br i1 %84, label %91, label %85, !llvm.loop !23

85:                                               ; preds = %80, %77
  %86 = phi i64 [ 0, %77 ], [ %81, %80 ]
  %87 = phi ptr [ %75, %77 ], [ %83, %80 ]
  %88 = phi ptr [ getelementptr inbounds ([9 x %struct.s_options], ptr @lemon_main.options, i64 0, i64 0, i32 1), %77 ], [ %82, %80 ]
  %89 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %79, ptr noundef nonnull dereferenceable(1) %87) #29
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %80

91:                                               ; preds = %85, %80, %74
  %92 = phi i64 [ 0, %74 ], [ %81, %80 ], [ %86, %85 ]
  %93 = phi ptr [ getelementptr inbounds ([9 x %struct.s_options], ptr @lemon_main.options, i64 0, i64 0, i32 1), %74 ], [ %82, %80 ], [ %88, %85 ]
  store i8 61, ptr %72, align 1, !tbaa !17
  %94 = load ptr, ptr %93, align 8, !tbaa !18
  %95 = icmp eq ptr %94, null
  br i1 %95, label %96, label %100

96:                                               ; preds = %91
  br i1 %22, label %173, label %97

97:                                               ; preds = %96
  %98 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %12, ptr noundef nonnull @.str.166, ptr noundef nonnull @emsg) #30
  %99 = trunc i64 %24 to i32
  tail call fastcc void @errline(i32 noundef %99, i32 noundef 0, ptr noundef nonnull %12) #27
  br label %173

100:                                              ; preds = %91
  %101 = getelementptr inbounds %struct.s_options, ptr @lemon_main.options, i64 %92
  %102 = getelementptr inbounds i8, ptr %72, i64 1
  %103 = load i32, ptr %101, align 16, !tbaa !21
  switch i32 %103, label %149 [
    i32 1, label %104
    i32 5, label %104
    i32 3, label %107
    i32 7, label %107
    i32 2, label %122
    i32 6, label %122
    i32 4, label %143
    i32 8, label %143
  ]

104:                                              ; preds = %100, %100
  br i1 %22, label %143, label %105

105:                                              ; preds = %104
  %106 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %12, ptr noundef nonnull @.str.168, ptr noundef nonnull @emsg) #30
  br label %138

107:                                              ; preds = %100, %100
  %108 = call double @strtod(ptr noundef nonnull %102, ptr noundef nonnull %10) #26
  %109 = load ptr, ptr %10, align 8, !tbaa !7
  %110 = load i8, ptr %109, align 1, !tbaa !17
  %111 = icmp eq i8 %110, 0
  br i1 %111, label %143, label %112

112:                                              ; preds = %107
  br i1 %22, label %143, label %113

113:                                              ; preds = %112
  %114 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %12, ptr noundef nonnull @.str.169, ptr noundef nonnull @emsg) #30
  %115 = ptrtoint ptr %109 to i64
  %116 = load ptr, ptr @argv, align 8, !tbaa !7
  %117 = getelementptr inbounds ptr, ptr %116, i64 %24
  %118 = load ptr, ptr %117, align 8, !tbaa !7
  %119 = ptrtoint ptr %118 to i64
  %120 = sub i64 %115, %119
  %121 = trunc i64 %120 to i32
  br label %138

122:                                              ; preds = %100, %100
  %123 = call i64 @strtol(ptr noundef nonnull %102, ptr noundef nonnull %10, i32 noundef 0) #26
  %124 = trunc i64 %123 to i32
  %125 = load ptr, ptr %10, align 8, !tbaa !7
  %126 = load i8, ptr %125, align 1, !tbaa !17
  %127 = icmp eq i8 %126, 0
  br i1 %127, label %143, label %128

128:                                              ; preds = %122
  br i1 %22, label %143, label %129

129:                                              ; preds = %128
  %130 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %12, ptr noundef nonnull @.str.170, ptr noundef nonnull @emsg) #30
  %131 = ptrtoint ptr %125 to i64
  %132 = load ptr, ptr @argv, align 8, !tbaa !7
  %133 = getelementptr inbounds ptr, ptr %132, i64 %24
  %134 = load ptr, ptr %133, align 8, !tbaa !7
  %135 = ptrtoint ptr %134 to i64
  %136 = sub i64 %131, %135
  %137 = trunc i64 %136 to i32
  br label %138

138:                                              ; preds = %129, %113, %105
  %139 = phi i32 [ 0, %105 ], [ %121, %113 ], [ %137, %129 ]
  %140 = phi i32 [ 0, %105 ], [ 0, %113 ], [ %124, %129 ]
  %141 = phi double [ 0.000000e+00, %105 ], [ %108, %113 ], [ 0.000000e+00, %129 ]
  %142 = trunc i64 %24 to i32
  tail call fastcc void @errline(i32 noundef %142, i32 noundef %139, ptr noundef nonnull %12) #27
  br label %143

143:                                              ; preds = %138, %128, %122, %112, %107, %104, %100, %100
  %144 = phi i32 [ %124, %128 ], [ 0, %112 ], [ 0, %104 ], [ 0, %107 ], [ %124, %122 ], [ 0, %100 ], [ 0, %100 ], [ %140, %138 ]
  %145 = phi double [ 0.000000e+00, %128 ], [ %108, %112 ], [ 0.000000e+00, %104 ], [ %108, %107 ], [ 0.000000e+00, %122 ], [ 0.000000e+00, %100 ], [ 0.000000e+00, %100 ], [ %141, %138 ]
  %146 = phi ptr [ null, %128 ], [ null, %112 ], [ null, %104 ], [ null, %107 ], [ null, %122 ], [ %102, %100 ], [ %102, %100 ], [ null, %138 ]
  %147 = phi i32 [ 1, %128 ], [ 1, %112 ], [ 1, %104 ], [ 0, %107 ], [ 0, %122 ], [ 0, %100 ], [ 0, %100 ], [ 1, %138 ]
  %148 = load i32, ptr %101, align 16, !tbaa !21
  br label %149

149:                                              ; preds = %143, %100
  %150 = phi i32 [ %148, %143 ], [ %103, %100 ]
  %151 = phi i32 [ %144, %143 ], [ 0, %100 ]
  %152 = phi double [ %145, %143 ], [ 0.000000e+00, %100 ]
  %153 = phi ptr [ %146, %143 ], [ null, %100 ]
  %154 = phi i32 [ %147, %143 ], [ 0, %100 ]
  switch i32 %150, label %173 [
    i32 8, label %170
    i32 4, label %167
    i32 3, label %155
    i32 7, label %158
    i32 2, label %161
    i32 6, label %164
  ]

155:                                              ; preds = %149
  %156 = getelementptr inbounds %struct.s_options, ptr @lemon_main.options, i64 %92, i32 2
  %157 = load ptr, ptr %156, align 16, !tbaa !22
  store double %152, ptr %157, align 8, !tbaa !24
  br label %173

158:                                              ; preds = %149
  %159 = getelementptr inbounds %struct.s_options, ptr @lemon_main.options, i64 %92, i32 2
  %160 = load ptr, ptr %159, align 16, !tbaa !22
  tail call void (double, ...) %160(double noundef %152) #26
  br label %173

161:                                              ; preds = %149
  %162 = getelementptr inbounds %struct.s_options, ptr @lemon_main.options, i64 %92, i32 2
  %163 = load ptr, ptr %162, align 16, !tbaa !22
  store i32 %151, ptr %163, align 4, !tbaa !11
  br label %173

164:                                              ; preds = %149
  %165 = getelementptr inbounds %struct.s_options, ptr @lemon_main.options, i64 %92, i32 2
  %166 = load ptr, ptr %165, align 16, !tbaa !22
  tail call void (i32, ...) %166(i32 noundef %151) #26
  br label %173

167:                                              ; preds = %149
  %168 = getelementptr inbounds %struct.s_options, ptr @lemon_main.options, i64 %92, i32 2
  %169 = load ptr, ptr %168, align 16, !tbaa !22
  store ptr %153, ptr %169, align 8, !tbaa !7
  br label %173

170:                                              ; preds = %149
  %171 = getelementptr inbounds %struct.s_options, ptr @lemon_main.options, i64 %92, i32 2
  %172 = load ptr, ptr %171, align 16, !tbaa !22
  tail call void (ptr, ...) %172(ptr noundef %153) #26
  br label %173

173:                                              ; preds = %170, %167, %164, %161, %158, %155, %149, %97, %96
  %174 = phi i32 [ %154, %149 ], [ %154, %164 ], [ %154, %161 ], [ %154, %158 ], [ %154, %155 ], [ %154, %167 ], [ %154, %170 ], [ 1, %97 ], [ 1, %96 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #25
  %175 = add nsw i32 %174, %27
  br label %176

176:                                              ; preds = %173, %71, %68
  %177 = phi i32 [ %70, %68 ], [ %175, %173 ], [ %27, %71 ]
  %178 = add nuw i64 %24, 1
  %179 = load ptr, ptr @argv, align 8, !tbaa !7
  %180 = getelementptr inbounds ptr, ptr %179, i64 %178
  %181 = load ptr, ptr %180, align 8, !tbaa !7
  %182 = icmp eq ptr %181, null
  br i1 %182, label %183, label %23, !llvm.loop !26

183:                                              ; preds = %176
  %.lcssa91 = phi i32 [ %177, %176 ]
  %.lcssa90 = phi ptr [ %179, %176 ]
  %184 = icmp sgt i32 %.lcssa91, 0
  br i1 %184, label %185, label %188

185:                                              ; preds = %183
  %186 = load ptr, ptr %0, align 8, !tbaa !7
  %187 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %12, ptr noundef nonnull @.str.35, ptr noundef %186) #30
  tail call fastcc void @OptPrint() #27
  tail call void @exit(i32 noundef 1) #31
  unreachable

188:                                              ; preds = %183, %17, %14
  %189 = phi ptr [ %0, %14 ], [ %0, %17 ], [ %.lcssa90, %183 ]
  %190 = load i32, ptr @lemon_main.version, align 4, !tbaa !11
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %197, label %195

192:                                              ; preds = %1
  %193 = load i32, ptr @lemon_main.version, align 4, !tbaa !11
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %228, label %195

195:                                              ; preds = %192, %188
  %196 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  tail call void @exit(i32 noundef 0) #31
  unreachable

197:                                              ; preds = %188
  %198 = load ptr, ptr %189, align 8, !tbaa !7
  %199 = icmp eq ptr %198, null
  br i1 %199, label %228, label %200

200:                                              ; preds = %197
  %201 = getelementptr inbounds ptr, ptr %189, i64 1
  %202 = load ptr, ptr %201, align 8, !tbaa !7
  %203 = icmp eq ptr %202, null
  br i1 %203, label %228, label %204

204:                                              ; preds = %217, %200
  %205 = phi i64 [ %222, %217 ], [ 1, %200 ]
  %206 = phi ptr [ %224, %217 ], [ %202, %200 ]
  %207 = phi i32 [ %221, %217 ], [ 0, %200 ]
  %208 = phi i32 [ %218, %217 ], [ 0, %200 ]
  %209 = icmp eq i32 %207, 0
  br i1 %209, label %210, label %215

210:                                              ; preds = %204
  %211 = load i8, ptr %206, align 1, !tbaa !17
  switch i8 %211, label %212 [
    i8 45, label %217
    i8 43, label %217
  ]

212:                                              ; preds = %210
  %213 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %206, i32 noundef 61) #29
  %214 = icmp eq ptr %213, null
  br i1 %214, label %215, label %217

215:                                              ; preds = %212, %204
  %216 = add nsw i32 %208, 1
  br label %217

217:                                              ; preds = %215, %212, %210, %210
  %218 = phi i32 [ %216, %215 ], [ %208, %210 ], [ %208, %212 ], [ %208, %210 ]
  %219 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %206, ptr noundef nonnull dereferenceable(3) @.str.36) #29
  %220 = icmp eq i32 %219, 0
  %221 = select i1 %220, i32 1, i32 %207
  %222 = add nuw nsw i64 %205, 1
  %223 = getelementptr inbounds ptr, ptr %189, i64 %222
  %224 = load ptr, ptr %223, align 8, !tbaa !7
  %225 = icmp eq ptr %224, null
  br i1 %225, label %226, label %204, !llvm.loop !27

226:                                              ; preds = %217
  %.lcssa88 = phi i32 [ %218, %217 ]
  %227 = icmp eq i32 %.lcssa88, 1
  br i1 %227, label %231, label %228

228:                                              ; preds = %226, %200, %197, %192
  %229 = load ptr, ptr @stderr, align 8, !tbaa !7
  %230 = tail call i64 @fwrite(ptr nonnull @.str.28, i64 43, i64 1, ptr %229) #32
  tail call void @exit(i32 noundef 1) #31
  unreachable

231:                                              ; preds = %226
  %232 = getelementptr inbounds %struct.lemon, ptr %11, i64 0, i32 7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %11, i8 0, i64 280, i1 false)
  %233 = load ptr, ptr @x1a, align 8, !tbaa !7
  %234 = icmp eq ptr %233, null
  br i1 %234, label %235, label %253

235:                                              ; preds = %231
  %236 = tail call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #33
  store ptr %236, ptr @x1a, align 8, !tbaa !7
  %237 = icmp eq ptr %236, null
  br i1 %237, label %253, label %238

238:                                              ; preds = %235
  store i32 1024, ptr %236, align 8, !tbaa !28
  %239 = getelementptr inbounds %struct.s_x4, ptr %236, i64 0, i32 1
  store i32 0, ptr %239, align 4, !tbaa !30
  %240 = tail call noalias dereferenceable_or_null(32768) ptr @malloc(i64 noundef 32768) #33
  %241 = getelementptr inbounds %struct.s_x4, ptr %236, i64 0, i32 2
  store ptr %240, ptr %241, align 8, !tbaa !31
  %242 = icmp eq ptr %240, null
  br i1 %242, label %243, label %244

243:                                              ; preds = %238
  tail call void @free(ptr noundef nonnull %236) #26
  store ptr null, ptr @x1a, align 8, !tbaa !7
  br label %253

244:                                              ; preds = %238
  %245 = getelementptr inbounds %struct.s_x4node, ptr %240, i64 1024
  %246 = getelementptr inbounds %struct.s_x4, ptr %236, i64 0, i32 3
  store ptr %245, ptr %246, align 8, !tbaa !32
  br label %247

247:                                              ; preds = %247, %244
  %248 = phi i64 [ 0, %244 ], [ %251, %247 ]
  %249 = load ptr, ptr %246, align 8, !tbaa !32
  %250 = getelementptr inbounds ptr, ptr %249, i64 %248
  store ptr null, ptr %250, align 8, !tbaa !7
  %251 = add nuw nsw i64 %248, 1
  %252 = icmp eq i64 %251, 1024
  br i1 %252, label %253, label %247, !llvm.loop !33

253:                                              ; preds = %247, %243, %235, %231
  %254 = load ptr, ptr @x2a, align 8, !tbaa !7
  %255 = icmp eq ptr %254, null
  br i1 %255, label %256, label %274

256:                                              ; preds = %253
  %257 = tail call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #33
  store ptr %257, ptr @x2a, align 8, !tbaa !7
  %258 = icmp eq ptr %257, null
  br i1 %258, label %274, label %259

259:                                              ; preds = %256
  store i32 128, ptr %257, align 8, !tbaa !34
  %260 = getelementptr inbounds %struct.s_x4, ptr %257, i64 0, i32 1
  store i32 0, ptr %260, align 4, !tbaa !36
  %261 = tail call noalias dereferenceable_or_null(5120) ptr @malloc(i64 noundef 5120) #33
  %262 = getelementptr inbounds %struct.s_x4, ptr %257, i64 0, i32 2
  store ptr %261, ptr %262, align 8, !tbaa !37
  %263 = icmp eq ptr %261, null
  br i1 %263, label %264, label %265

264:                                              ; preds = %259
  tail call void @free(ptr noundef nonnull %257) #26
  store ptr null, ptr @x2a, align 8, !tbaa !7
  br label %274

265:                                              ; preds = %259
  %266 = getelementptr inbounds %struct.s_x3node, ptr %261, i64 128
  %267 = getelementptr inbounds %struct.s_x4, ptr %257, i64 0, i32 3
  store ptr %266, ptr %267, align 8, !tbaa !38
  br label %268

268:                                              ; preds = %268, %265
  %269 = phi i64 [ 0, %265 ], [ %272, %268 ]
  %270 = load ptr, ptr %267, align 8, !tbaa !38
  %271 = getelementptr inbounds ptr, ptr %270, i64 %269
  store ptr null, ptr %271, align 8, !tbaa !7
  %272 = add nuw nsw i64 %269, 1
  %273 = icmp eq i64 %272, 128
  br i1 %273, label %274, label %268, !llvm.loop !39

274:                                              ; preds = %268, %264, %256, %253
  %275 = load ptr, ptr @x3a, align 8, !tbaa !7
  %276 = icmp eq ptr %275, null
  br i1 %276, label %277, label %295

277:                                              ; preds = %274
  %278 = tail call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #33
  store ptr %278, ptr @x3a, align 8, !tbaa !7
  %279 = icmp eq ptr %278, null
  br i1 %279, label %295, label %280

280:                                              ; preds = %277
  store i32 128, ptr %278, align 8, !tbaa !40
  %281 = getelementptr inbounds %struct.s_x4, ptr %278, i64 0, i32 1
  store i32 0, ptr %281, align 4, !tbaa !42
  %282 = tail call noalias dereferenceable_or_null(5120) ptr @malloc(i64 noundef 5120) #33
  %283 = getelementptr inbounds %struct.s_x4, ptr %278, i64 0, i32 2
  store ptr %282, ptr %283, align 8, !tbaa !43
  %284 = icmp eq ptr %282, null
  br i1 %284, label %285, label %286

285:                                              ; preds = %280
  tail call void @free(ptr noundef nonnull %278) #26
  store ptr null, ptr @x3a, align 8, !tbaa !7
  br label %295

286:                                              ; preds = %280
  %287 = getelementptr inbounds %struct.s_x3node, ptr %282, i64 128
  %288 = getelementptr inbounds %struct.s_x4, ptr %278, i64 0, i32 3
  store ptr %287, ptr %288, align 8, !tbaa !44
  br label %289

289:                                              ; preds = %289, %286
  %290 = phi i64 [ 0, %286 ], [ %293, %289 ]
  %291 = load ptr, ptr %288, align 8, !tbaa !44
  %292 = getelementptr inbounds ptr, ptr %291, i64 %290
  store ptr null, ptr %292, align 8, !tbaa !7
  %293 = add nuw nsw i64 %290, 1
  %294 = icmp eq i64 %293, 128
  br i1 %294, label %295, label %289, !llvm.loop !45

295:                                              ; preds = %289, %285, %277, %274
  %296 = load ptr, ptr %0, align 8, !tbaa !7
  %297 = getelementptr inbounds %struct.lemon, ptr %11, i64 0, i32 39
  store ptr %296, ptr %297, align 8, !tbaa !46
  %298 = load ptr, ptr %189, align 8, !tbaa !7
  %299 = icmp eq ptr %298, null
  br i1 %299, label %328, label %300

300:                                              ; preds = %295
  %301 = load ptr, ptr %201, align 8, !tbaa !7
  %302 = icmp eq ptr %301, null
  br i1 %302, label %328, label %303

303:                                              ; preds = %313, %300
  %304 = phi i64 [ %317, %313 ], [ 1, %300 ]
  %305 = phi ptr [ %319, %313 ], [ %301, %300 ]
  %306 = phi i32 [ %316, %313 ], [ 0, %300 ]
  %307 = icmp eq i32 %306, 0
  br i1 %307, label %308, label %321

308:                                              ; preds = %303
  %309 = load i8, ptr %305, align 1, !tbaa !17
  switch i8 %309, label %310 [
    i8 45, label %313
    i8 43, label %313
  ]

310:                                              ; preds = %308
  %311 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %305, i32 noundef 61) #29
  %312 = icmp eq ptr %311, null
  br i1 %312, label %321, label %313

313:                                              ; preds = %310, %308, %308
  %314 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %305, ptr noundef nonnull dereferenceable(3) @.str.36) #29
  %315 = icmp eq i32 %314, 0
  %316 = zext i1 %315 to i32
  %317 = add nuw i64 %304, 1
  %318 = getelementptr inbounds ptr, ptr %189, i64 %317
  %319 = load ptr, ptr %318, align 8, !tbaa !7
  %320 = icmp eq ptr %319, null
  br i1 %320, label %328, label %303, !llvm.loop !48

321:                                              ; preds = %310, %303
  %.lcssa87 = phi i64 [ %304, %310 ], [ %304, %303 ]
  %322 = and i64 %.lcssa87, 2147483648
  %323 = icmp eq i64 %322, 0
  br i1 %323, label %324, label %328

324:                                              ; preds = %321
  %325 = and i64 %.lcssa87, 4294967295
  %326 = getelementptr inbounds ptr, ptr %189, i64 %325
  %327 = load ptr, ptr %326, align 8, !tbaa !7
  br label %328

328:                                              ; preds = %324, %321, %313, %300, %295
  %329 = phi ptr [ %327, %324 ], [ null, %321 ], [ null, %295 ], [ null, %300 ], [ null, %313 ]
  %330 = getelementptr inbounds %struct.lemon, ptr %11, i64 0, i32 32
  store ptr %329, ptr %330, align 8, !tbaa !49
  %331 = load i32, ptr @lemon_main.basisflag, align 4, !tbaa !11
  %332 = getelementptr inbounds %struct.lemon, ptr %11, i64 0, i32 37
  store i32 %331, ptr %332, align 8, !tbaa !50
  %333 = tail call fastcc ptr @Symbol_new(ptr noundef nonnull @.str.29) #27
  %334 = tail call fastcc ptr @Symbol_new(ptr noundef nonnull @.str.30) #27
  %335 = getelementptr inbounds %struct.lemon, ptr %11, i64 0, i32 8
  store ptr %334, ptr %335, align 8, !tbaa !51
  %336 = getelementptr inbounds %struct.symbol, ptr %334, i64 0, i32 9
  store i32 0, ptr %336, align 4, !tbaa !52
  call void @llvm.lifetime.start.p0(i64 16128, ptr nonnull %9) #25
  %337 = getelementptr inbounds i8, ptr %9, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16128) %337, i8 0, i64 16120, i1 false)
  %338 = getelementptr inbounds %struct.pstate, ptr %9, i64 0, i32 4
  store ptr %11, ptr %338, align 8, !tbaa !54
  store ptr %329, ptr %9, align 8, !tbaa !56
  %339 = getelementptr inbounds %struct.pstate, ptr %9, i64 0, i32 2
  %340 = getelementptr inbounds %struct.pstate, ptr %9, i64 0, i32 5
  %341 = call noalias ptr @fopen(ptr noundef %329, ptr noundef nonnull @.str.42) #27
  %342 = icmp eq ptr %341, null
  br i1 %342, label %343, label %346

343:                                              ; preds = %328
  call void (ptr, i32, ptr, ...) @ErrorMsg(ptr noundef %329, i32 noundef 0, ptr noundef nonnull @.str.43) #27
  %344 = load i32, ptr %232, align 8, !tbaa !57
  %345 = add nsw i32 %344, 1
  br label %1476

346:                                              ; preds = %328
  %347 = call i32 @fseek(ptr noundef nonnull %341, i64 noundef 0, i32 noundef 2) #27
  %348 = call i64 @ftell(ptr noundef nonnull %341) #27
  %349 = trunc i64 %348 to i32
  call void @rewind(ptr noundef nonnull %341) #27
  %350 = add nsw i32 %349, 1
  %351 = sext i32 %350 to i64
  %352 = call noalias ptr @malloc(i64 noundef %351) #33
  %353 = icmp eq ptr %352, null
  br i1 %353, label %354, label %357

354:                                              ; preds = %346
  call void (ptr, i32, ptr, ...) @ErrorMsg(ptr noundef %329, i32 noundef 0, ptr noundef nonnull @.str.44, i32 noundef %350) #27
  %355 = load i32, ptr %232, align 8, !tbaa !57
  %356 = add nsw i32 %355, 1
  br label %1476

357:                                              ; preds = %346
  %358 = shl i64 %348, 32
  %359 = ashr exact i64 %358, 32
  %360 = call i64 @fread(ptr noundef nonnull %352, i64 noundef 1, i64 noundef %359, ptr noundef nonnull %341) #27
  %361 = icmp eq i64 %360, %359
  br i1 %361, label %365, label %362

362:                                              ; preds = %357
  call void (ptr, i32, ptr, ...) @ErrorMsg(ptr noundef %329, i32 noundef 0, ptr noundef nonnull @.str.45, i32 noundef %349) #27
  call void @free(ptr noundef nonnull %352) #26
  %363 = load i32, ptr %232, align 8, !tbaa !57
  %364 = add nsw i32 %363, 1
  br label %1476

365:                                              ; preds = %357
  %366 = call i32 @fclose(ptr noundef nonnull %341) #27
  %367 = getelementptr inbounds i8, ptr %352, i64 %359
  store i8 0, ptr %367, align 1, !tbaa !17
  %368 = load i32, ptr @nDefine, align 4
  %369 = icmp sgt i32 %368, 0
  %370 = load ptr, ptr @azDefine, align 8
  %371 = sext i32 %368 to i64
  %372 = zext i32 %368 to i64
  br label %373

373:                                              ; preds = %546, %365
  %374 = phi i64 [ %552, %546 ], [ 7, %365 ]
  %375 = phi i64 [ %551, %546 ], [ 0, %365 ]
  %376 = phi i32 [ %548, %546 ], [ 0, %365 ]
  %377 = phi i32 [ %549, %546 ], [ 0, %365 ]
  %378 = phi i32 [ %547, %546 ], [ 1, %365 ]
  %379 = phi i32 [ %550, %546 ], [ 1, %365 ]
  %380 = getelementptr inbounds i8, ptr %352, i64 %375
  %381 = load i8, ptr %380, align 1, !tbaa !17
  switch i8 %381, label %546 [
    i8 0, label %553
    i8 10, label %382
    i8 37, label %384
  ]

382:                                              ; preds = %373
  %383 = add nsw i32 %378, 1
  br label %546

384:                                              ; preds = %373
  %385 = icmp eq i64 %375, 0
  br i1 %385, label %392, label %386

386:                                              ; preds = %384
  %387 = add i64 %375, 4294967295
  %388 = and i64 %387, 4294967295
  %389 = getelementptr inbounds i8, ptr %352, i64 %388
  %390 = load i8, ptr %389, align 1, !tbaa !17
  %391 = icmp eq i8 %390, 10
  br i1 %391, label %392, label %546

392:                                              ; preds = %386, %384
  %393 = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %380, ptr noundef nonnull dereferenceable(7) @.str.173, i64 noundef 6) #29
  %394 = icmp eq i32 %393, 0
  br i1 %394, label %395, label %432

395:                                              ; preds = %392
  %396 = tail call ptr @__ctype_b_loc() #28
  %397 = load ptr, ptr %396, align 8, !tbaa !7
  %398 = add i64 %375, 6
  %399 = and i64 %398, 4294967295
  %400 = getelementptr inbounds i8, ptr %352, i64 %399
  %401 = load i8, ptr %400, align 1, !tbaa !17
  %402 = sext i8 %401 to i64
  %403 = getelementptr inbounds i16, ptr %397, i64 %402
  %404 = load i16, ptr %403, align 2, !tbaa !58
  %405 = and i16 %404, 8192
  %406 = icmp eq i16 %405, 0
  br i1 %406, label %432, label %407

407:                                              ; preds = %395
  %408 = icmp eq i32 %376, 0
  br i1 %408, label %424, label %409

409:                                              ; preds = %407
  %410 = add nsw i32 %376, -1
  %411 = icmp eq i32 %410, 0
  br i1 %411, label %412, label %424

412:                                              ; preds = %409
  %413 = sext i32 %377 to i64
  %414 = icmp sgt i64 %375, %413
  br i1 %414, label %415, label %424

415:                                              ; preds = %421, %412
  %416 = phi i64 [ %422, %421 ], [ %413, %412 ]
  %417 = getelementptr inbounds i8, ptr %352, i64 %416
  %418 = load i8, ptr %417, align 1, !tbaa !17
  %419 = icmp eq i8 %418, 10
  br i1 %419, label %421, label %420

420:                                              ; preds = %415
  store i8 32, ptr %417, align 1, !tbaa !17
  br label %421

421:                                              ; preds = %420, %415
  %422 = add nsw i64 %416, 1
  %423 = icmp eq i64 %422, %375
  br i1 %423, label %424, label %415, !llvm.loop !60

424:                                              ; preds = %421, %412, %409, %407
  %425 = phi i32 [ %410, %409 ], [ 0, %407 ], [ 0, %412 ], [ 0, %421 ]
  br label %426

426:                                              ; preds = %430, %424
  %427 = phi i64 [ %431, %430 ], [ %375, %424 ]
  %428 = getelementptr inbounds i8, ptr %352, i64 %427
  %429 = load i8, ptr %428, align 1, !tbaa !17
  switch i8 %429, label %430 [
    i8 0, label %546
    i8 10, label %546
  ]

430:                                              ; preds = %426
  store i8 32, ptr %428, align 1, !tbaa !17
  %431 = add nuw i64 %427, 1
  br label %426, !llvm.loop !61

432:                                              ; preds = %395, %392
  %433 = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %380, ptr noundef nonnull dereferenceable(7) @.str.174, i64 noundef 6) #29
  %434 = icmp eq i32 %433, 0
  br i1 %434, label %435, label %447

435:                                              ; preds = %432
  %436 = tail call ptr @__ctype_b_loc() #28
  %437 = load ptr, ptr %436, align 8, !tbaa !7
  %438 = add i64 %375, 6
  %439 = and i64 %438, 4294967295
  %440 = getelementptr inbounds i8, ptr %352, i64 %439
  %441 = load i8, ptr %440, align 1, !tbaa !17
  %442 = sext i8 %441 to i64
  %443 = getelementptr inbounds i16, ptr %437, i64 %442
  %444 = load i16, ptr %443, align 2, !tbaa !58
  %445 = and i16 %444, 8192
  %446 = icmp eq i16 %445, 0
  br i1 %446, label %447, label %462

447:                                              ; preds = %435, %432
  %448 = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %380, ptr noundef nonnull dereferenceable(8) @.str.175, i64 noundef 7) #29
  %449 = icmp eq i32 %448, 0
  br i1 %449, label %450, label %546

450:                                              ; preds = %447
  %451 = tail call ptr @__ctype_b_loc() #28
  %452 = load ptr, ptr %451, align 8, !tbaa !7
  %453 = add i64 %375, 7
  %454 = and i64 %453, 4294967295
  %455 = getelementptr inbounds i8, ptr %352, i64 %454
  %456 = load i8, ptr %455, align 1, !tbaa !17
  %457 = sext i8 %456 to i64
  %458 = getelementptr inbounds i16, ptr %452, i64 %457
  %459 = load i16, ptr %458, align 2, !tbaa !58
  %460 = and i16 %459, 8192
  %461 = icmp eq i16 %460, 0
  br i1 %461, label %546, label %462

462:                                              ; preds = %450, %435
  %463 = icmp eq i32 %376, 0
  br i1 %463, label %466, label %464

464:                                              ; preds = %462
  %465 = add nsw i32 %376, 1
  br label %534

466:                                              ; preds = %462
  %467 = tail call ptr @__ctype_b_loc() #28
  %468 = load ptr, ptr %467, align 8, !tbaa !7
  br label %469

469:                                              ; preds = %469, %466
  %470 = phi i64 [ %478, %469 ], [ %374, %466 ]
  %471 = getelementptr inbounds i8, ptr %352, i64 %470
  %472 = load i8, ptr %471, align 1, !tbaa !17
  %473 = sext i8 %472 to i64
  %474 = getelementptr inbounds i16, ptr %468, i64 %473
  %475 = load i16, ptr %474, align 2, !tbaa !58
  %476 = and i16 %475, 8192
  %477 = icmp eq i16 %476, 0
  %478 = add i64 %470, 1
  br i1 %477, label %479, label %469, !llvm.loop !62

479:                                              ; preds = %469
  %.lcssa83 = phi i64 [ %470, %469 ]
  %480 = getelementptr inbounds i8, ptr %352, i64 %.lcssa83
  %481 = and i64 %.lcssa83, 4294967295
  %482 = getelementptr inbounds i8, ptr %352, i64 %481
  %483 = load i8, ptr %482, align 1, !tbaa !17
  %484 = icmp eq i8 %483, 0
  br i1 %484, label %503, label %485

485:                                              ; preds = %494, %479
  %486 = phi i64 [ %495, %494 ], [ 0, %479 ]
  %487 = phi i8 [ %499, %494 ], [ %483, %479 ]
  %488 = phi i32 [ %496, %494 ], [ 0, %479 ]
  %489 = sext i8 %487 to i64
  %490 = getelementptr inbounds i16, ptr %468, i64 %489
  %491 = load i16, ptr %490, align 2, !tbaa !58
  %492 = and i16 %491, 8192
  %493 = icmp eq i16 %492, 0
  br i1 %493, label %494, label %501

494:                                              ; preds = %485
  %495 = add nuw i64 %486, 1
  %496 = add nuw nsw i32 %488, 1
  %497 = add nuw nsw i64 %495, %481
  %498 = getelementptr inbounds i8, ptr %352, i64 %497
  %499 = load i8, ptr %498, align 1, !tbaa !17
  %500 = icmp eq i8 %499, 0
  br i1 %500, label %503, label %485, !llvm.loop !63

501:                                              ; preds = %485
  %.lcssa84 = phi i64 [ %486, %485 ]
  %502 = trunc i64 %.lcssa84 to i32
  br label %503

503:                                              ; preds = %501, %494, %479
  %504 = phi i32 [ 0, %479 ], [ %502, %501 ], [ %496, %494 ]
  br i1 %369, label %505, label %521

505:                                              ; preds = %503
  %506 = zext i32 %504 to i64
  br label %507

507:                                              ; preds = %517, %505
  %508 = phi i64 [ 0, %505 ], [ %518, %517 ]
  %509 = phi i1 [ true, %505 ], [ %519, %517 ]
  %510 = getelementptr inbounds ptr, ptr %370, i64 %508
  %511 = load ptr, ptr %510, align 8, !tbaa !7
  %512 = call i32 @strncmp(ptr noundef %511, ptr noundef nonnull %480, i64 noundef %506) #29
  %513 = icmp eq i32 %512, 0
  br i1 %513, label %514, label %517

514:                                              ; preds = %507
  %515 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %511) #29
  %516 = icmp eq i64 %515, %506
  br i1 %516, label %521, label %517

517:                                              ; preds = %514, %507
  %518 = add nuw nsw i64 %508, 1
  %519 = icmp slt i64 %518, %371
  %520 = icmp eq i64 %518, %372
  br i1 %520, label %521, label %507, !llvm.loop !64

521:                                              ; preds = %517, %514, %503
  %522 = phi i1 [ false, %503 ], [ %519, %517 ], [ %509, %514 ]
  %523 = phi i32 [ 1, %503 ], [ 1, %517 ], [ 0, %514 ]
  %524 = add i64 %375, 3
  %525 = and i64 %524, 4294967295
  %526 = getelementptr inbounds i8, ptr %352, i64 %525
  %527 = load i8, ptr %526, align 1, !tbaa !17
  %528 = icmp eq i8 %527, 110
  %529 = zext i1 %522 to i32
  %530 = select i1 %528, i32 %529, i32 %523
  %531 = icmp eq i32 %530, 0
  br i1 %531, label %534, label %532

532:                                              ; preds = %521
  %533 = trunc i64 %375 to i32
  br label %534

534:                                              ; preds = %532, %521, %464
  %535 = phi i32 [ %465, %464 ], [ 1, %532 ], [ 0, %521 ]
  %536 = phi i32 [ %377, %464 ], [ %533, %532 ], [ %377, %521 ]
  %537 = phi i32 [ %379, %464 ], [ %378, %532 ], [ %379, %521 ]
  br label %538

538:                                              ; preds = %541, %534
  %539 = phi i8 [ %545, %541 ], [ 37, %534 ]
  %540 = phi i64 [ %543, %541 ], [ %375, %534 ]
  switch i8 %539, label %541 [
    i8 0, label %546
    i8 10, label %546
  ]

541:                                              ; preds = %538
  %542 = getelementptr inbounds i8, ptr %352, i64 %540
  store i8 32, ptr %542, align 1, !tbaa !17
  %543 = add nuw i64 %540, 1
  %544 = getelementptr inbounds i8, ptr %352, i64 %543
  %545 = load i8, ptr %544, align 1, !tbaa !17
  br label %538, !llvm.loop !65

546:                                              ; preds = %538, %538, %450, %447, %426, %426, %386, %382, %373
  %547 = phi i32 [ %378, %386 ], [ %378, %450 ], [ %378, %447 ], [ %383, %382 ], [ %378, %373 ], [ %378, %538 ], [ %378, %538 ], [ %378, %426 ], [ %378, %426 ]
  %548 = phi i32 [ %376, %386 ], [ %376, %450 ], [ %376, %447 ], [ %376, %382 ], [ %376, %373 ], [ %535, %538 ], [ %535, %538 ], [ %425, %426 ], [ %425, %426 ]
  %549 = phi i32 [ %377, %386 ], [ %377, %450 ], [ %377, %447 ], [ %377, %382 ], [ %377, %373 ], [ %536, %538 ], [ %536, %538 ], [ %377, %426 ], [ %377, %426 ]
  %550 = phi i32 [ %379, %386 ], [ %379, %450 ], [ %379, %447 ], [ %379, %382 ], [ %379, %373 ], [ %537, %538 ], [ %537, %538 ], [ %379, %426 ], [ %379, %426 ]
  %551 = add nuw i64 %375, 1
  %552 = add i64 %374, 1
  br label %373, !llvm.loop !66

553:                                              ; preds = %373
  %.lcssa86 = phi i32 [ %376, %373 ]
  %.lcssa85 = phi i32 [ %379, %373 ]
  %554 = icmp eq i32 %.lcssa86, 0
  br i1 %554, label %555, label %569

555:                                              ; preds = %553
  %556 = getelementptr inbounds %struct.pstate, ptr %9, i64 0, i32 3
  %557 = getelementptr inbounds %struct.pstate, ptr %9, i64 0, i32 6
  %558 = getelementptr inbounds %struct.pstate, ptr %9, i64 0, i32 14
  %559 = getelementptr inbounds %struct.pstate, ptr %9, i64 0, i32 13
  %560 = getelementptr inbounds %struct.pstate, ptr %9, i64 0, i32 15
  %561 = getelementptr inbounds %struct.pstate, ptr %9, i64 0, i32 17
  %562 = getelementptr inbounds %struct.pstate, ptr %9, i64 0, i32 16
  %563 = getelementptr inbounds %struct.pstate, ptr %9, i64 0, i32 8
  %564 = getelementptr inbounds %struct.pstate, ptr %9, i64 0, i32 9
  %565 = getelementptr inbounds %struct.pstate, ptr %9, i64 0, i32 7
  %566 = getelementptr inbounds %struct.pstate, ptr %9, i64 0, i32 18
  %567 = getelementptr inbounds %struct.pstate, ptr %9, i64 0, i32 19
  %568 = getelementptr inbounds %struct.pstate, ptr %9, i64 0, i32 12
  br label %572

569:                                              ; preds = %553
  %570 = load ptr, ptr @stderr, align 8, !tbaa !7
  %571 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %570, ptr noundef nonnull @.str.176, i32 noundef %.lcssa85) #30
  call void @exit(i32 noundef 1) #31
  unreachable

572:                                              ; preds = %1469, %555
  %573 = phi ptr [ %352, %555 ], [ %1470, %1469 ]
  %574 = phi i32 [ 1, %555 ], [ %1471, %1469 ]
  %575 = load i8, ptr %573, align 1, !tbaa !17
  br label %577

576:                                              ; preds = %601, %601
  %.lcssa48 = phi ptr [ %602, %601 ], [ %602, %601 ]
  %.lcssa47 = phi i8 [ %603, %601 ], [ %603, %601 ]
  br label %577

577:                                              ; preds = %576, %572
  %578 = phi i8 [ %575, %572 ], [ %.lcssa47, %576 ]
  %579 = phi ptr [ %573, %572 ], [ %.lcssa48, %576 ]
  %580 = phi i32 [ %574, %572 ], [ %584, %576 ]
  switch i8 %578, label %583 [
    i8 0, label %1472
    i8 10, label %581
  ]

581:                                              ; preds = %577
  %582 = add nsw i32 %580, 1
  br label %583

583:                                              ; preds = %581, %577
  %584 = phi i32 [ %582, %581 ], [ %580, %577 ]
  %585 = tail call ptr @__ctype_b_loc() #28
  %586 = load ptr, ptr %585, align 8, !tbaa !7
  %587 = sext i8 %578 to i64
  %588 = getelementptr inbounds i16, ptr %586, i64 %587
  %589 = load i16, ptr %588, align 2, !tbaa !58
  %590 = and i16 %589, 8192
  %591 = icmp eq i16 %590, 0
  br i1 %591, label %594, label %592

592:                                              ; preds = %583
  %.lcssa67 = phi i32 [ %584, %583 ]
  %.lcssa50 = phi ptr [ %579, %583 ]
  %593 = getelementptr inbounds i8, ptr %.lcssa50, i64 1
  br label %1469

594:                                              ; preds = %583
  %595 = icmp eq i8 %578, 47
  br i1 %595, label %596, label %631

596:                                              ; preds = %594
  %597 = getelementptr inbounds i8, ptr %579, i64 1
  %598 = load i8, ptr %597, align 1, !tbaa !17
  switch i8 %598, label %606 [
    i8 47, label %599
    i8 42, label %607
  ]

599:                                              ; preds = %596
  %600 = getelementptr inbounds i8, ptr %579, i64 2
  br label %601

601:                                              ; preds = %604, %599
  %602 = phi ptr [ %600, %599 ], [ %605, %604 ]
  %603 = load i8, ptr %602, align 1, !tbaa !17
  switch i8 %603, label %604 [
    i8 10, label %576
    i8 0, label %576
  ]

604:                                              ; preds = %601
  %605 = getelementptr inbounds i8, ptr %602, i64 1
  br label %601, !llvm.loop !67

606:                                              ; preds = %596
  %.lcssa69 = phi i32 [ %584, %596 ]
  %.lcssa65 = phi ptr [ %585, %596 ]
  %.lcssa61 = phi i64 [ %587, %596 ]
  %.lcssa57 = phi i8 [ %578, %596 ]
  %.lcssa52 = phi ptr [ %579, %596 ]
  store ptr %.lcssa52, ptr %556, align 8, !tbaa !68
  store i32 %.lcssa69, ptr %337, align 8, !tbaa !69
  br label %735

607:                                              ; preds = %596
  %.lcssa70 = phi i32 [ %584, %596 ]
  %.lcssa53 = phi ptr [ %579, %596 ]
  %608 = getelementptr inbounds i8, ptr %.lcssa53, i64 2
  %609 = load i8, ptr %608, align 1, !tbaa !17
  %610 = icmp eq i8 %609, 0
  br i1 %610, label %626, label %611

611:                                              ; preds = %621, %607
  %612 = phi i8 [ %624, %621 ], [ %609, %607 ]
  %613 = phi i32 [ %622, %621 ], [ %.lcssa70, %607 ]
  %614 = phi ptr [ %623, %621 ], [ %608, %607 ]
  switch i8 %612, label %621 [
    i8 47, label %615
    i8 10, label %619
  ]

615:                                              ; preds = %611
  %616 = getelementptr inbounds i8, ptr %614, i64 -1
  %617 = load i8, ptr %616, align 1, !tbaa !17
  %618 = icmp eq i8 %617, 42
  br i1 %618, label %626, label %621

619:                                              ; preds = %611
  %620 = add nsw i32 %613, 1
  br label %621

621:                                              ; preds = %619, %615, %611
  %622 = phi i32 [ %620, %619 ], [ %613, %611 ], [ %613, %615 ]
  %623 = getelementptr inbounds i8, ptr %614, i64 1
  %624 = load i8, ptr %623, align 1, !tbaa !17
  %625 = icmp eq i8 %624, 0
  br i1 %625, label %626, label %611, !llvm.loop !70

626:                                              ; preds = %621, %615, %607
  %627 = phi ptr [ %608, %607 ], [ %623, %621 ], [ %614, %615 ]
  %628 = phi i32 [ %.lcssa70, %607 ], [ %622, %621 ], [ %613, %615 ]
  %629 = phi i64 [ 0, %607 ], [ 0, %621 ], [ 1, %615 ]
  %630 = getelementptr inbounds i8, ptr %627, i64 %629
  br label %1469

631:                                              ; preds = %594
  %.lcssa68 = phi i32 [ %584, %594 ]
  %.lcssa64 = phi ptr [ %585, %594 ]
  %.lcssa60 = phi i64 [ %587, %594 ]
  %.lcssa56 = phi i8 [ %578, %594 ]
  %.lcssa51 = phi ptr [ %579, %594 ]
  store ptr %.lcssa51, ptr %556, align 8, !tbaa !68
  store i32 %.lcssa68, ptr %337, align 8, !tbaa !69
  switch i8 %.lcssa56, label %735 [
    i8 34, label %642
    i8 123, label %632
  ]

632:                                              ; preds = %631
  %633 = getelementptr inbounds i8, ptr %.lcssa51, i64 1
  %634 = load i8, ptr %633, align 1, !tbaa !17
  %635 = icmp eq i8 %634, 0
  br i1 %635, label %727, label %651

636:                                              ; preds = %642, %636
  %637 = phi ptr [ %638, %636 ], [ %643, %642 ]
  %638 = getelementptr inbounds i8, ptr %637, i64 1
  %639 = load i8, ptr %638, align 1, !tbaa !17
  switch i8 %639, label %636 [
    i8 10, label %640
    i8 0, label %645
    i8 34, label %649
  ], !llvm.loop !71

640:                                              ; preds = %636
  %.lcssa75 = phi ptr [ %638, %636 ]
  %641 = add nsw i32 %644, 1
  br label %642, !llvm.loop !71

642:                                              ; preds = %640, %631
  %643 = phi ptr [ %.lcssa75, %640 ], [ %.lcssa51, %631 ]
  %644 = phi i32 [ %641, %640 ], [ %.lcssa68, %631 ]
  br label %636

645:                                              ; preds = %636
  %.lcssa81 = phi i32 [ %644, %636 ]
  %.lcssa76 = phi ptr [ %638, %636 ]
  %646 = load ptr, ptr %9, align 8, !tbaa !56
  call void (ptr, i32, ptr, ...) @ErrorMsg(ptr noundef %646, i32 noundef 0, ptr noundef nonnull @.str.46) #27
  %647 = load i32, ptr %339, align 4, !tbaa !72
  %648 = add nsw i32 %647, 1
  store i32 %648, ptr %339, align 4, !tbaa !72
  br label %802

649:                                              ; preds = %636
  %.lcssa82 = phi i32 [ %644, %636 ]
  %.lcssa80 = phi ptr [ %637, %636 ]
  %.lcssa77 = phi ptr [ %638, %636 ]
  %650 = getelementptr inbounds i8, ptr %.lcssa80, i64 2
  br label %802

651:                                              ; preds = %720, %632
  %652 = phi i8 [ %725, %720 ], [ %634, %632 ]
  %653 = phi ptr [ %724, %720 ], [ %633, %632 ]
  %654 = phi i32 [ %723, %720 ], [ %.lcssa68, %632 ]
  %655 = phi i32 [ %722, %720 ], [ 1, %632 ]
  %656 = phi ptr [ %721, %720 ], [ %.lcssa51, %632 ]
  %657 = icmp sgt i32 %655, 1
  %658 = icmp ne i8 %652, 125
  %659 = or i1 %658, %657
  br i1 %659, label %660, label %733

660:                                              ; preds = %651
  switch i8 %652, label %720 [
    i8 10, label %661
    i8 123, label %663
    i8 125, label %665
    i8 47, label %667
    i8 39, label %699
    i8 34, label %699
  ]

661:                                              ; preds = %660
  %662 = add nsw i32 %654, 1
  br label %720

663:                                              ; preds = %660
  %664 = add nsw i32 %655, 1
  br label %720

665:                                              ; preds = %660
  %666 = add nsw i32 %655, -1
  br label %720

667:                                              ; preds = %660
  %668 = getelementptr inbounds i8, ptr %656, i64 2
  %669 = load i8, ptr %668, align 1, !tbaa !17
  switch i8 %669, label %720 [
    i8 42, label %670
    i8 47, label %690
  ]

670:                                              ; preds = %667
  %671 = getelementptr inbounds i8, ptr %656, i64 3
  %672 = load i8, ptr %671, align 1, !tbaa !17
  %673 = icmp eq i8 %672, 0
  br i1 %673, label %720, label %674

674:                                              ; preds = %682, %670
  %675 = phi i8 [ %688, %682 ], [ %672, %670 ]
  %676 = phi i32 [ %686, %682 ], [ %654, %670 ]
  %677 = phi i32 [ %683, %682 ], [ 0, %670 ]
  %678 = phi ptr [ %687, %682 ], [ %671, %670 ]
  %679 = icmp ne i8 %675, 47
  %680 = icmp ne i32 %677, 42
  %681 = or i1 %679, %680
  br i1 %681, label %682, label %720

682:                                              ; preds = %674
  %683 = sext i8 %675 to i32
  %684 = icmp eq i8 %675, 10
  %685 = zext i1 %684 to i32
  %686 = add nsw i32 %676, %685
  %687 = getelementptr inbounds i8, ptr %678, i64 1
  %688 = load i8, ptr %687, align 1, !tbaa !17
  %689 = icmp eq i8 %688, 0
  br i1 %689, label %720, label %674, !llvm.loop !73

690:                                              ; preds = %667
  %691 = getelementptr inbounds i8, ptr %656, i64 3
  br label %692

692:                                              ; preds = %695, %690
  %693 = phi ptr [ %691, %690 ], [ %696, %695 ]
  %694 = load i8, ptr %693, align 1, !tbaa !17
  switch i8 %694, label %695 [
    i8 0, label %720
    i8 10, label %697
  ]

695:                                              ; preds = %692
  %696 = getelementptr inbounds i8, ptr %693, i64 1
  br label %692, !llvm.loop !74

697:                                              ; preds = %692
  %.lcssa71 = phi ptr [ %693, %692 ]
  %698 = add nsw i32 %654, 1
  br label %720

699:                                              ; preds = %660, %660
  %700 = getelementptr inbounds i8, ptr %656, i64 2
  %701 = load i8, ptr %700, align 1, !tbaa !17
  %702 = icmp eq i8 %701, 0
  br i1 %702, label %720, label %703

703:                                              ; preds = %711, %699
  %704 = phi i8 [ %718, %711 ], [ %701, %699 ]
  %705 = phi i32 [ %716, %711 ], [ 0, %699 ]
  %706 = phi i32 [ %715, %711 ], [ %654, %699 ]
  %707 = phi ptr [ %717, %711 ], [ %700, %699 ]
  %708 = icmp ne i8 %704, %652
  %709 = icmp eq i32 %705, 92
  %710 = or i1 %708, %709
  br i1 %710, label %711, label %720

711:                                              ; preds = %703
  %712 = sext i8 %704 to i32
  %713 = icmp eq i8 %704, 10
  %714 = zext i1 %713 to i32
  %715 = add nsw i32 %706, %714
  %716 = select i1 %709, i32 0, i32 %712
  %717 = getelementptr inbounds i8, ptr %707, i64 1
  %718 = load i8, ptr %717, align 1, !tbaa !17
  %719 = icmp eq i8 %718, 0
  br i1 %719, label %720, label %703, !llvm.loop !75

720:                                              ; preds = %711, %703, %699, %697, %692, %682, %674, %670, %667, %665, %663, %661, %660
  %721 = phi ptr [ %653, %661 ], [ %653, %663 ], [ %653, %665 ], [ %.lcssa71, %697 ], [ %653, %667 ], [ %653, %660 ], [ %671, %670 ], [ %700, %699 ], [ %687, %682 ], [ %678, %674 ], [ %693, %692 ], [ %717, %711 ], [ %707, %703 ]
  %722 = phi i32 [ %655, %661 ], [ %664, %663 ], [ %666, %665 ], [ %655, %697 ], [ %655, %667 ], [ %655, %660 ], [ %655, %670 ], [ %655, %699 ], [ %655, %674 ], [ %655, %682 ], [ %655, %692 ], [ %655, %703 ], [ %655, %711 ]
  %723 = phi i32 [ %662, %661 ], [ %654, %663 ], [ %654, %665 ], [ %698, %697 ], [ %654, %667 ], [ %654, %660 ], [ %654, %670 ], [ %654, %699 ], [ %686, %682 ], [ %676, %674 ], [ %654, %692 ], [ %715, %711 ], [ %706, %703 ]
  %724 = getelementptr inbounds i8, ptr %721, i64 1
  %725 = load i8, ptr %724, align 1, !tbaa !17
  %726 = icmp eq i8 %725, 0
  br i1 %726, label %727, label %651, !llvm.loop !76

727:                                              ; preds = %720, %632
  %728 = phi i32 [ %.lcssa68, %632 ], [ %723, %720 ]
  %729 = phi ptr [ %633, %632 ], [ %724, %720 ]
  %730 = load ptr, ptr %9, align 8, !tbaa !56
  call void (ptr, i32, ptr, ...) @ErrorMsg(ptr noundef %730, i32 noundef %.lcssa68, ptr noundef nonnull @.str.47) #27
  %731 = load i32, ptr %339, align 4, !tbaa !72
  %732 = add nsw i32 %731, 1
  store i32 %732, ptr %339, align 4, !tbaa !72
  br label %802

733:                                              ; preds = %651
  %.lcssa74 = phi ptr [ %653, %651 ]
  %.lcssa73 = phi i32 [ %654, %651 ]
  %.lcssa72 = phi ptr [ %656, %651 ]
  %734 = getelementptr inbounds i8, ptr %.lcssa72, i64 2
  br label %802

735:                                              ; preds = %631, %606
  %736 = phi i32 [ %.lcssa68, %631 ], [ %.lcssa69, %606 ]
  %737 = phi ptr [ %.lcssa64, %631 ], [ %.lcssa65, %606 ]
  %738 = phi i64 [ %.lcssa60, %631 ], [ %.lcssa61, %606 ]
  %739 = phi i8 [ %.lcssa56, %631 ], [ %.lcssa57, %606 ]
  %740 = phi ptr [ %.lcssa51, %631 ], [ %.lcssa52, %606 ]
  %741 = load ptr, ptr %737, align 8, !tbaa !7
  %742 = getelementptr inbounds i16, ptr %741, i64 %738
  %743 = load i16, ptr %742, align 2, !tbaa !58
  %744 = and i16 %743, 8
  %745 = icmp eq i16 %744, 0
  br i1 %745, label %763, label %746

746:                                              ; preds = %735
  %747 = load i8, ptr %740, align 1, !tbaa !17
  %748 = icmp eq i8 %747, 0
  br i1 %748, label %802, label %749

749:                                              ; preds = %759, %746
  %750 = phi i8 [ %761, %759 ], [ %747, %746 ]
  %751 = phi ptr [ %760, %759 ], [ %740, %746 ]
  %752 = sext i8 %750 to i64
  %753 = getelementptr inbounds i16, ptr %741, i64 %752
  %754 = load i16, ptr %753, align 2, !tbaa !58
  %755 = and i16 %754, 8
  %756 = icmp ne i16 %755, 0
  %757 = icmp eq i8 %750, 95
  %758 = or i1 %757, %756
  br i1 %758, label %759, label %802

759:                                              ; preds = %749
  %760 = getelementptr inbounds i8, ptr %751, i64 1
  %761 = load i8, ptr %760, align 1, !tbaa !17
  %762 = icmp eq i8 %761, 0
  br i1 %762, label %802, label %749, !llvm.loop !77

763:                                              ; preds = %735
  switch i8 %739, label %800 [
    i8 58, label %764
    i8 124, label %774
    i8 47, label %774
  ]

764:                                              ; preds = %763
  %765 = getelementptr inbounds i8, ptr %740, i64 1
  %766 = load i8, ptr %765, align 1, !tbaa !17
  %767 = icmp eq i8 %766, 58
  br i1 %767, label %768, label %800

768:                                              ; preds = %764
  %769 = getelementptr inbounds i8, ptr %740, i64 2
  %770 = load i8, ptr %769, align 1, !tbaa !17
  %771 = icmp eq i8 %770, 61
  br i1 %771, label %772, label %800

772:                                              ; preds = %768
  %773 = getelementptr inbounds i8, ptr %740, i64 3
  br label %802

774:                                              ; preds = %763, %763
  %775 = getelementptr inbounds i8, ptr %740, i64 1
  %776 = load i8, ptr %775, align 1, !tbaa !17
  %777 = sext i8 %776 to i64
  %778 = getelementptr inbounds i16, ptr %741, i64 %777
  %779 = load i16, ptr %778, align 2, !tbaa !58
  %780 = and i16 %779, 1024
  %781 = icmp eq i16 %780, 0
  br i1 %781, label %800, label %782

782:                                              ; preds = %774
  %783 = getelementptr inbounds i8, ptr %740, i64 2
  %784 = load i8, ptr %783, align 1, !tbaa !17
  %785 = icmp eq i8 %784, 0
  br i1 %785, label %802, label %786

786:                                              ; preds = %796, %782
  %787 = phi i8 [ %798, %796 ], [ %784, %782 ]
  %788 = phi ptr [ %797, %796 ], [ %783, %782 ]
  %789 = sext i8 %787 to i64
  %790 = getelementptr inbounds i16, ptr %741, i64 %789
  %791 = load i16, ptr %790, align 2, !tbaa !58
  %792 = and i16 %791, 8
  %793 = icmp ne i16 %792, 0
  %794 = icmp eq i8 %787, 95
  %795 = or i1 %794, %793
  br i1 %795, label %796, label %802

796:                                              ; preds = %786
  %797 = getelementptr inbounds i8, ptr %788, i64 1
  %798 = load i8, ptr %797, align 1, !tbaa !17
  %799 = icmp eq i8 %798, 0
  br i1 %799, label %802, label %786, !llvm.loop !78

800:                                              ; preds = %774, %768, %764, %763
  %801 = getelementptr inbounds i8, ptr %740, i64 1
  br label %802

802:                                              ; preds = %800, %796, %786, %782, %772, %759, %749, %746, %733, %727, %649, %645
  %803 = phi ptr [ %.lcssa64, %645 ], [ %.lcssa64, %649 ], [ %737, %772 ], [ %737, %800 ], [ %.lcssa64, %733 ], [ %.lcssa64, %727 ], [ %737, %782 ], [ %737, %746 ], [ %737, %786 ], [ %737, %796 ], [ %737, %749 ], [ %737, %759 ]
  %804 = phi ptr [ %.lcssa76, %645 ], [ %.lcssa77, %649 ], [ %773, %772 ], [ %801, %800 ], [ %.lcssa74, %733 ], [ %729, %727 ], [ %783, %782 ], [ %740, %746 ], [ %788, %786 ], [ %797, %796 ], [ %751, %749 ], [ %760, %759 ]
  %805 = phi ptr [ %.lcssa76, %645 ], [ %650, %649 ], [ %773, %772 ], [ %801, %800 ], [ %734, %733 ], [ %729, %727 ], [ %783, %782 ], [ %740, %746 ], [ %788, %786 ], [ %797, %796 ], [ %751, %749 ], [ %760, %759 ]
  %806 = phi i32 [ %.lcssa81, %645 ], [ %.lcssa82, %649 ], [ %736, %772 ], [ %736, %800 ], [ %.lcssa73, %733 ], [ %728, %727 ], [ %736, %782 ], [ %736, %746 ], [ %736, %786 ], [ %736, %796 ], [ %736, %749 ], [ %736, %759 ]
  %807 = load i8, ptr %804, align 1, !tbaa !17
  store i8 0, ptr %804, align 1, !tbaa !17
  %808 = load ptr, ptr %556, align 8, !tbaa !68
  %809 = call fastcc ptr @Strsafe(ptr noundef %808) #27
  %810 = load i32, ptr %340, align 8, !tbaa !79
  switch i32 %810, label %1468 [
    i32 0, label %811
    i32 1, label %814
    i32 12, label %855
    i32 13, label %888
    i32 5, label %897
    i32 7, label %916
    i32 8, label %932
    i32 9, label %942
    i32 6, label %962
    i32 10, label %1114
    i32 11, label %1138
    i32 2, label %1148
    i32 16, label %1298
    i32 17, label %1315
    i32 4, label %1331
    i32 3, label %1360
    i32 18, label %1398
    i32 19, label %1431
    i32 14, label %1459
    i32 15, label %1459
  ]

811:                                              ; preds = %802
  store ptr null, ptr %568, align 8, !tbaa !80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %561, i8 0, i64 20, i1 false)
  %812 = load ptr, ptr %338, align 8, !tbaa !54
  %813 = getelementptr inbounds %struct.lemon, ptr %812, i64 0, i32 3
  store i32 0, ptr %813, align 4, !tbaa !81
  br label %814

814:                                              ; preds = %811, %802
  %815 = load i8, ptr %809, align 1, !tbaa !17
  %816 = icmp eq i8 %815, 37
  br i1 %816, label %817, label %818

817:                                              ; preds = %814
  store i32 2, ptr %340, align 8, !tbaa !79
  br label %1468

818:                                              ; preds = %814
  %819 = load ptr, ptr %803, align 8, !tbaa !7
  %820 = sext i8 %815 to i64
  %821 = getelementptr inbounds i16, ptr %819, i64 %820
  %822 = load i16, ptr %821, align 2, !tbaa !58
  %823 = and i16 %822, 512
  %824 = icmp eq i16 %823, 0
  br i1 %824, label %827, label %825

825:                                              ; preds = %818
  %826 = call fastcc ptr @Symbol_new(ptr noundef nonnull %809) #27
  store ptr %826, ptr %565, align 8, !tbaa !82
  store i32 0, ptr %564, align 8, !tbaa !83
  store ptr null, ptr %563, align 8, !tbaa !84
  store i32 5, ptr %340, align 8, !tbaa !79
  br label %1468

827:                                              ; preds = %818
  switch i8 %815, label %850 [
    i8 123, label %828
    i8 91, label %849
  ]

828:                                              ; preds = %827
  %829 = load ptr, ptr %568, align 8, !tbaa !80
  %830 = icmp eq ptr %829, null
  br i1 %830, label %831, label %836

831:                                              ; preds = %828
  %832 = load ptr, ptr %9, align 8, !tbaa !56
  %833 = load i32, ptr %337, align 8, !tbaa !69
  call void (ptr, i32, ptr, ...) @ErrorMsg(ptr noundef %832, i32 noundef %833, ptr noundef nonnull @.str.177) #27
  %834 = load i32, ptr %339, align 4, !tbaa !72
  %835 = add nsw i32 %834, 1
  store i32 %835, ptr %339, align 4, !tbaa !72
  br label %1468

836:                                              ; preds = %828
  %837 = getelementptr inbounds %struct.rule, ptr %829, i64 0, i32 8
  %838 = load ptr, ptr %837, align 8, !tbaa !85
  %839 = icmp eq ptr %838, null
  br i1 %839, label %845, label %840

840:                                              ; preds = %836
  %841 = load ptr, ptr %9, align 8, !tbaa !56
  %842 = load i32, ptr %337, align 8, !tbaa !69
  call void (ptr, i32, ptr, ...) @ErrorMsg(ptr noundef %841, i32 noundef %842, ptr noundef nonnull @.str.178) #27
  %843 = load i32, ptr %339, align 4, !tbaa !72
  %844 = add nsw i32 %843, 1
  store i32 %844, ptr %339, align 4, !tbaa !72
  br label %1468

845:                                              ; preds = %836
  %846 = load i32, ptr %337, align 8, !tbaa !69
  %847 = getelementptr inbounds %struct.rule, ptr %829, i64 0, i32 7
  store i32 %846, ptr %847, align 8, !tbaa !87
  %848 = getelementptr inbounds i8, ptr %809, i64 1
  store ptr %848, ptr %837, align 8, !tbaa !85
  br label %1468

849:                                              ; preds = %827
  store i32 12, ptr %340, align 8, !tbaa !79
  br label %1468

850:                                              ; preds = %827
  %851 = load ptr, ptr %9, align 8, !tbaa !56
  %852 = load i32, ptr %337, align 8, !tbaa !69
  call void (ptr, i32, ptr, ...) @ErrorMsg(ptr noundef %851, i32 noundef %852, ptr noundef nonnull @.str.179, ptr noundef nonnull %809) #27
  %853 = load i32, ptr %339, align 4, !tbaa !72
  %854 = add nsw i32 %853, 1
  store i32 %854, ptr %339, align 4, !tbaa !72
  br label %1468

855:                                              ; preds = %802
  %856 = load ptr, ptr %803, align 8, !tbaa !7
  %857 = load i8, ptr %809, align 1, !tbaa !17
  %858 = sext i8 %857 to i64
  %859 = getelementptr inbounds i16, ptr %856, i64 %858
  %860 = load i16, ptr %859, align 2, !tbaa !58
  %861 = and i16 %860, 256
  %862 = icmp eq i16 %861, 0
  br i1 %862, label %863, label %868

863:                                              ; preds = %855
  %864 = load ptr, ptr %9, align 8, !tbaa !56
  %865 = load i32, ptr %337, align 8, !tbaa !69
  call void (ptr, i32, ptr, ...) @ErrorMsg(ptr noundef %864, i32 noundef %865, ptr noundef nonnull @.str.180) #27
  %866 = load i32, ptr %339, align 4, !tbaa !72
  %867 = add nsw i32 %866, 1
  store i32 %867, ptr %339, align 4, !tbaa !72
  br label %887

868:                                              ; preds = %855
  %869 = load ptr, ptr %568, align 8, !tbaa !80
  %870 = icmp eq ptr %869, null
  br i1 %870, label %871, label %876

871:                                              ; preds = %868
  %872 = load ptr, ptr %9, align 8, !tbaa !56
  %873 = load i32, ptr %337, align 8, !tbaa !69
  call void (ptr, i32, ptr, ...) @ErrorMsg(ptr noundef %872, i32 noundef %873, ptr noundef nonnull @.str.181, ptr noundef nonnull %809) #27
  %874 = load i32, ptr %339, align 4, !tbaa !72
  %875 = add nsw i32 %874, 1
  store i32 %875, ptr %339, align 4, !tbaa !72
  br label %887

876:                                              ; preds = %868
  %877 = getelementptr inbounds %struct.rule, ptr %869, i64 0, i32 9
  %878 = load ptr, ptr %877, align 8, !tbaa !88
  %879 = icmp eq ptr %878, null
  br i1 %879, label %885, label %880

880:                                              ; preds = %876
  %881 = load ptr, ptr %9, align 8, !tbaa !56
  %882 = load i32, ptr %337, align 8, !tbaa !69
  call void (ptr, i32, ptr, ...) @ErrorMsg(ptr noundef %881, i32 noundef %882, ptr noundef nonnull @.str.182) #27
  %883 = load i32, ptr %339, align 4, !tbaa !72
  %884 = add nsw i32 %883, 1
  store i32 %884, ptr %339, align 4, !tbaa !72
  br label %887

885:                                              ; preds = %876
  %886 = call fastcc ptr @Symbol_new(ptr noundef nonnull %809) #27
  store ptr %886, ptr %877, align 8, !tbaa !88
  br label %887

887:                                              ; preds = %885, %880, %871, %863
  store i32 13, ptr %340, align 8, !tbaa !79
  br label %1468

888:                                              ; preds = %802
  %889 = load i8, ptr %809, align 1, !tbaa !17
  %890 = icmp eq i8 %889, 93
  br i1 %890, label %896, label %891

891:                                              ; preds = %888
  %892 = load ptr, ptr %9, align 8, !tbaa !56
  %893 = load i32, ptr %337, align 8, !tbaa !69
  call void (ptr, i32, ptr, ...) @ErrorMsg(ptr noundef %892, i32 noundef %893, ptr noundef nonnull @.str.183) #27
  %894 = load i32, ptr %339, align 4, !tbaa !72
  %895 = add nsw i32 %894, 1
  store i32 %895, ptr %339, align 4, !tbaa !72
  br label %896

896:                                              ; preds = %891, %888
  store i32 1, ptr %340, align 8, !tbaa !79
  br label %1468

897:                                              ; preds = %802
  %898 = load i8, ptr %809, align 1, !tbaa !17
  switch i8 %898, label %909 [
    i8 58, label %899
    i8 40, label %908
  ]

899:                                              ; preds = %897
  %900 = getelementptr inbounds i8, ptr %809, i64 1
  %901 = load i8, ptr %900, align 1, !tbaa !17
  %902 = icmp eq i8 %901, 58
  br i1 %902, label %903, label %909

903:                                              ; preds = %899
  %904 = getelementptr inbounds i8, ptr %809, i64 2
  %905 = load i8, ptr %904, align 1, !tbaa !17
  %906 = icmp eq i8 %905, 61
  br i1 %906, label %907, label %909

907:                                              ; preds = %903
  store i32 6, ptr %340, align 8, !tbaa !79
  br label %1468

908:                                              ; preds = %897
  store i32 7, ptr %340, align 8, !tbaa !79
  br label %1468

909:                                              ; preds = %903, %899, %897
  %910 = load ptr, ptr %9, align 8, !tbaa !56
  %911 = load i32, ptr %337, align 8, !tbaa !69
  %912 = load ptr, ptr %565, align 8, !tbaa !82
  %913 = load ptr, ptr %912, align 8, !tbaa !89
  call void (ptr, i32, ptr, ...) @ErrorMsg(ptr noundef %910, i32 noundef %911, ptr noundef nonnull @.str.184, ptr noundef %913) #27
  %914 = load i32, ptr %339, align 4, !tbaa !72
  %915 = add nsw i32 %914, 1
  store i32 %915, ptr %339, align 4, !tbaa !72
  store i32 14, ptr %340, align 8, !tbaa !79
  br label %1468

916:                                              ; preds = %802
  %917 = load ptr, ptr %803, align 8, !tbaa !7
  %918 = load i8, ptr %809, align 1, !tbaa !17
  %919 = sext i8 %918 to i64
  %920 = getelementptr inbounds i16, ptr %917, i64 %919
  %921 = load i16, ptr %920, align 2, !tbaa !58
  %922 = and i16 %921, 1024
  %923 = icmp eq i16 %922, 0
  br i1 %923, label %925, label %924

924:                                              ; preds = %916
  store ptr %809, ptr %563, align 8, !tbaa !84
  store i32 8, ptr %340, align 8, !tbaa !79
  br label %1468

925:                                              ; preds = %916
  %926 = load ptr, ptr %9, align 8, !tbaa !56
  %927 = load i32, ptr %337, align 8, !tbaa !69
  %928 = load ptr, ptr %565, align 8, !tbaa !82
  %929 = load ptr, ptr %928, align 8, !tbaa !89
  call void (ptr, i32, ptr, ...) @ErrorMsg(ptr noundef %926, i32 noundef %927, ptr noundef nonnull @.str.185, ptr noundef nonnull %809, ptr noundef %929) #27
  %930 = load i32, ptr %339, align 4, !tbaa !72
  %931 = add nsw i32 %930, 1
  store i32 %931, ptr %339, align 4, !tbaa !72
  store i32 14, ptr %340, align 8, !tbaa !79
  br label %1468

932:                                              ; preds = %802
  %933 = load i8, ptr %809, align 1, !tbaa !17
  %934 = icmp eq i8 %933, 41
  br i1 %934, label %935, label %936

935:                                              ; preds = %932
  store i32 9, ptr %340, align 8, !tbaa !79
  br label %1468

936:                                              ; preds = %932
  %937 = load ptr, ptr %9, align 8, !tbaa !56
  %938 = load i32, ptr %337, align 8, !tbaa !69
  %939 = load ptr, ptr %563, align 8, !tbaa !84
  call void (ptr, i32, ptr, ...) @ErrorMsg(ptr noundef %937, i32 noundef %938, ptr noundef nonnull @.str.186, ptr noundef %939) #27
  %940 = load i32, ptr %339, align 4, !tbaa !72
  %941 = add nsw i32 %940, 1
  store i32 %941, ptr %339, align 4, !tbaa !72
  store i32 14, ptr %340, align 8, !tbaa !79
  br label %1468

942:                                              ; preds = %802
  %943 = load i8, ptr %809, align 1, !tbaa !17
  %944 = icmp eq i8 %943, 58
  br i1 %944, label %945, label %954

945:                                              ; preds = %942
  %946 = getelementptr inbounds i8, ptr %809, i64 1
  %947 = load i8, ptr %946, align 1, !tbaa !17
  %948 = icmp eq i8 %947, 58
  br i1 %948, label %949, label %954

949:                                              ; preds = %945
  %950 = getelementptr inbounds i8, ptr %809, i64 2
  %951 = load i8, ptr %950, align 1, !tbaa !17
  %952 = icmp eq i8 %951, 61
  br i1 %952, label %953, label %954

953:                                              ; preds = %949
  store i32 6, ptr %340, align 8, !tbaa !79
  br label %1468

954:                                              ; preds = %949, %945, %942
  %955 = load ptr, ptr %9, align 8, !tbaa !56
  %956 = load i32, ptr %337, align 8, !tbaa !69
  %957 = load ptr, ptr %565, align 8, !tbaa !82
  %958 = load ptr, ptr %957, align 8, !tbaa !89
  %959 = load ptr, ptr %563, align 8, !tbaa !84
  call void (ptr, i32, ptr, ...) @ErrorMsg(ptr noundef %955, i32 noundef %956, ptr noundef nonnull @.str.187, ptr noundef %958, ptr noundef %959) #27
  %960 = load i32, ptr %339, align 4, !tbaa !72
  %961 = add nsw i32 %960, 1
  store i32 %961, ptr %339, align 4, !tbaa !72
  store i32 14, ptr %340, align 8, !tbaa !79
  br label %1468

962:                                              ; preds = %802
  %963 = load i8, ptr %809, align 1, !tbaa !17
  %964 = icmp eq i8 %963, 46
  br i1 %964, label %965, label %1021

965:                                              ; preds = %962
  %966 = load i32, ptr %564, align 8, !tbaa !83
  %967 = sext i32 %966 to i64
  %968 = shl nsw i64 %967, 4
  %969 = add nsw i64 %968, 96
  %970 = call noalias ptr @calloc(i64 noundef %969, i64 noundef 1) #34
  %971 = icmp eq ptr %970, null
  br i1 %971, label %972, label %977

972:                                              ; preds = %965
  %973 = load ptr, ptr %9, align 8, !tbaa !56
  %974 = load i32, ptr %337, align 8, !tbaa !69
  call void (ptr, i32, ptr, ...) @ErrorMsg(ptr noundef %973, i32 noundef %974, ptr noundef nonnull @.str.188) #27
  %975 = load i32, ptr %339, align 4, !tbaa !72
  %976 = add nsw i32 %975, 1
  store i32 %976, ptr %339, align 4, !tbaa !72
  br label %1020

977:                                              ; preds = %965
  %978 = load i32, ptr %337, align 8, !tbaa !69
  %979 = getelementptr inbounds %struct.rule, ptr %970, i64 0, i32 3
  store i32 %978, ptr %979, align 4, !tbaa !90
  %980 = getelementptr inbounds %struct.rule, ptr %970, i64 1
  %981 = getelementptr inbounds %struct.rule, ptr %970, i64 0, i32 5
  store ptr %980, ptr %981, align 8, !tbaa !91
  %982 = getelementptr inbounds ptr, ptr %980, i64 %967
  %983 = getelementptr inbounds %struct.rule, ptr %970, i64 0, i32 6
  store ptr %982, ptr %983, align 8, !tbaa !92
  %984 = icmp sgt i32 %966, 0
  br i1 %984, label %985, label %999

985:                                              ; preds = %977
  %986 = zext i32 %966 to i64
  br label %987

987:                                              ; preds = %987, %985
  %988 = phi i64 [ 0, %985 ], [ %997, %987 ]
  %989 = getelementptr inbounds %struct.pstate, ptr %9, i64 0, i32 10, i64 %988
  %990 = load ptr, ptr %989, align 8, !tbaa !7
  %991 = load ptr, ptr %981, align 8, !tbaa !91
  %992 = getelementptr inbounds ptr, ptr %991, i64 %988
  store ptr %990, ptr %992, align 8, !tbaa !7
  %993 = getelementptr inbounds %struct.pstate, ptr %9, i64 0, i32 11, i64 %988
  %994 = load ptr, ptr %993, align 8, !tbaa !7
  %995 = load ptr, ptr %983, align 8, !tbaa !92
  %996 = getelementptr inbounds ptr, ptr %995, i64 %988
  store ptr %994, ptr %996, align 8, !tbaa !7
  %997 = add nuw nsw i64 %988, 1
  %998 = icmp eq i64 %997, %986
  br i1 %998, label %999, label %987, !llvm.loop !93

999:                                              ; preds = %987, %977
  %1000 = load ptr, ptr %565, align 8, !tbaa !82
  store ptr %1000, ptr %970, align 8, !tbaa !94
  %1001 = load ptr, ptr %563, align 8, !tbaa !84
  %1002 = getelementptr inbounds %struct.rule, ptr %970, i64 0, i32 1
  store ptr %1001, ptr %1002, align 8, !tbaa !95
  %1003 = getelementptr inbounds %struct.rule, ptr %970, i64 0, i32 4
  store i32 %966, ptr %1003, align 8, !tbaa !96
  %1004 = getelementptr inbounds %struct.rule, ptr %970, i64 0, i32 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1004, i8 0, i64 16, i1 false)
  %1005 = load ptr, ptr %338, align 8, !tbaa !54
  %1006 = getelementptr inbounds %struct.lemon, ptr %1005, i64 0, i32 3
  %1007 = load i32, ptr %1006, align 4, !tbaa !81
  %1008 = add nsw i32 %1007, 1
  store i32 %1008, ptr %1006, align 4, !tbaa !81
  %1009 = getelementptr inbounds %struct.rule, ptr %970, i64 0, i32 10
  store i32 %1007, ptr %1009, align 8, !tbaa !97
  %1010 = getelementptr inbounds %struct.symbol, ptr %1000, i64 0, i32 3
  %1011 = load ptr, ptr %1010, align 8, !tbaa !98
  %1012 = getelementptr inbounds %struct.rule, ptr %970, i64 0, i32 12
  store ptr %1011, ptr %1012, align 8, !tbaa !99
  store ptr %970, ptr %1010, align 8, !tbaa !98
  %1013 = getelementptr inbounds %struct.rule, ptr %970, i64 0, i32 13
  store ptr null, ptr %1013, align 8, !tbaa !100
  %1014 = load ptr, ptr %566, align 8, !tbaa !101
  %1015 = icmp eq ptr %1014, null
  %1016 = load ptr, ptr %567, align 8
  %1017 = getelementptr inbounds %struct.rule, ptr %1016, i64 0, i32 13
  %1018 = select i1 %1015, ptr %567, ptr %1017
  %1019 = select i1 %1015, ptr %566, ptr %567
  store ptr %970, ptr %1018, align 8, !tbaa !7
  store ptr %970, ptr %1019, align 8, !tbaa !7
  br label %1020

1020:                                             ; preds = %999, %972
  store ptr %970, ptr %568, align 8, !tbaa !80
  store i32 1, ptr %340, align 8, !tbaa !79
  br label %1468

1021:                                             ; preds = %962
  %1022 = load ptr, ptr %803, align 8, !tbaa !7
  %1023 = sext i8 %963 to i64
  %1024 = getelementptr inbounds i16, ptr %1022, i64 %1023
  %1025 = load i16, ptr %1024, align 2, !tbaa !58
  %1026 = and i16 %1025, 1024
  %1027 = icmp eq i16 %1026, 0
  br i1 %1027, label %1042, label %1028

1028:                                             ; preds = %1021
  %1029 = load i32, ptr %564, align 8, !tbaa !83
  %1030 = icmp sgt i32 %1029, 999
  br i1 %1030, label %1031, label %1036

1031:                                             ; preds = %1028
  %1032 = load ptr, ptr %9, align 8, !tbaa !56
  %1033 = load i32, ptr %337, align 8, !tbaa !69
  call void (ptr, i32, ptr, ...) @ErrorMsg(ptr noundef %1032, i32 noundef %1033, ptr noundef nonnull @.str.189, ptr noundef nonnull %809) #27
  %1034 = load i32, ptr %339, align 4, !tbaa !72
  %1035 = add nsw i32 %1034, 1
  store i32 %1035, ptr %339, align 4, !tbaa !72
  store i32 14, ptr %340, align 8, !tbaa !79
  br label %1468

1036:                                             ; preds = %1028
  %1037 = call fastcc ptr @Symbol_new(ptr noundef nonnull %809) #27
  %1038 = sext i32 %1029 to i64
  %1039 = getelementptr inbounds %struct.pstate, ptr %9, i64 0, i32 10, i64 %1038
  store ptr %1037, ptr %1039, align 8, !tbaa !7
  %1040 = getelementptr inbounds %struct.pstate, ptr %9, i64 0, i32 11, i64 %1038
  store ptr null, ptr %1040, align 8, !tbaa !7
  %1041 = add nsw i32 %1029, 1
  store i32 %1041, ptr %564, align 8, !tbaa !83
  br label %1468

1042:                                             ; preds = %1021
  switch i8 %963, label %1109 [
    i8 124, label %1043
    i8 47, label %1043
    i8 40, label %1105
  ]

1043:                                             ; preds = %1042, %1042
  %1044 = load i32, ptr %564, align 8, !tbaa !83
  %1045 = icmp sgt i32 %1044, 0
  br i1 %1045, label %1046, label %1109

1046:                                             ; preds = %1043
  %1047 = add nsw i32 %1044, -1
  %1048 = zext i32 %1047 to i64
  %1049 = getelementptr inbounds %struct.pstate, ptr %9, i64 0, i32 10, i64 %1048
  %1050 = load ptr, ptr %1049, align 8, !tbaa !7
  %1051 = getelementptr inbounds %struct.symbol, ptr %1050, i64 0, i32 2
  %1052 = load i32, ptr %1051, align 4, !tbaa !102
  %1053 = icmp eq i32 %1052, 2
  br i1 %1053, label %1054, label %1060

1054:                                             ; preds = %1046
  %1055 = getelementptr inbounds %struct.symbol, ptr %1050, i64 0, i32 14
  %1056 = load i32, ptr %1055, align 4, !tbaa !103
  %1057 = getelementptr inbounds %struct.symbol, ptr %1050, i64 0, i32 15
  %1058 = load ptr, ptr %1057, align 8, !tbaa !104
  %1059 = add nsw i32 %1056, 1
  br label %1067

1060:                                             ; preds = %1046
  %1061 = call noalias dereferenceable_or_null(96) ptr @calloc(i64 noundef 1, i64 noundef 96) #34
  %1062 = getelementptr inbounds %struct.symbol, ptr %1061, i64 0, i32 2
  store i32 2, ptr %1062, align 4, !tbaa !102
  %1063 = getelementptr inbounds %struct.symbol, ptr %1061, i64 0, i32 14
  store i32 1, ptr %1063, align 4, !tbaa !103
  %1064 = call noalias dereferenceable_or_null(8) ptr @calloc(i64 noundef 1, i64 noundef 8) #34
  %1065 = getelementptr inbounds %struct.symbol, ptr %1061, i64 0, i32 15
  store ptr %1064, ptr %1065, align 8, !tbaa !104
  store ptr %1050, ptr %1064, align 8, !tbaa !7
  %1066 = load ptr, ptr %1050, align 8, !tbaa !89
  store ptr %1066, ptr %1061, align 8, !tbaa !89
  store ptr %1061, ptr %1049, align 8, !tbaa !7
  br label %1067

1067:                                             ; preds = %1060, %1054
  %1068 = phi ptr [ %1064, %1060 ], [ %1058, %1054 ]
  %1069 = phi i32 [ 2, %1060 ], [ %1059, %1054 ]
  %1070 = phi ptr [ %1061, %1060 ], [ %1050, %1054 ]
  %1071 = getelementptr inbounds %struct.symbol, ptr %1070, i64 0, i32 14
  store i32 %1069, ptr %1071, align 4, !tbaa !103
  %1072 = getelementptr inbounds %struct.symbol, ptr %1070, i64 0, i32 15
  %1073 = sext i32 %1069 to i64
  %1074 = shl nsw i64 %1073, 3
  %1075 = call ptr @realloc(ptr noundef %1068, i64 noundef %1074) #35
  store ptr %1075, ptr %1072, align 8, !tbaa !104
  %1076 = getelementptr inbounds i8, ptr %809, i64 1
  %1077 = call fastcc ptr @Symbol_new(ptr noundef nonnull %1076) #27
  %1078 = load ptr, ptr %1072, align 8, !tbaa !104
  %1079 = load i32, ptr %1071, align 4, !tbaa !103
  %1080 = add nsw i32 %1079, -1
  %1081 = sext i32 %1080 to i64
  %1082 = getelementptr inbounds ptr, ptr %1078, i64 %1081
  store ptr %1077, ptr %1082, align 8, !tbaa !7
  %1083 = load ptr, ptr %803, align 8, !tbaa !7
  %1084 = load i8, ptr %1076, align 1, !tbaa !17
  %1085 = sext i8 %1084 to i64
  %1086 = getelementptr inbounds i16, ptr %1083, i64 %1085
  %1087 = load i16, ptr %1086, align 2, !tbaa !58
  %1088 = and i16 %1087, 512
  %1089 = icmp eq i16 %1088, 0
  br i1 %1089, label %1090, label %1100

1090:                                             ; preds = %1067
  %1091 = load ptr, ptr %1072, align 8, !tbaa !104
  %1092 = load ptr, ptr %1091, align 8, !tbaa !7
  %1093 = load ptr, ptr %1092, align 8, !tbaa !89
  %1094 = load i8, ptr %1093, align 1, !tbaa !17
  %1095 = sext i8 %1094 to i64
  %1096 = getelementptr inbounds i16, ptr %1083, i64 %1095
  %1097 = load i16, ptr %1096, align 2, !tbaa !58
  %1098 = and i16 %1097, 512
  %1099 = icmp eq i16 %1098, 0
  br i1 %1099, label %1468, label %1100

1100:                                             ; preds = %1090, %1067
  %1101 = load ptr, ptr %9, align 8, !tbaa !56
  %1102 = load i32, ptr %337, align 8, !tbaa !69
  call void (ptr, i32, ptr, ...) @ErrorMsg(ptr noundef %1101, i32 noundef %1102, ptr noundef nonnull @.str.190) #27
  %1103 = load i32, ptr %339, align 4, !tbaa !72
  %1104 = add nsw i32 %1103, 1
  store i32 %1104, ptr %339, align 4, !tbaa !72
  br label %1468

1105:                                             ; preds = %1042
  %1106 = load i32, ptr %564, align 8, !tbaa !83
  %1107 = icmp sgt i32 %1106, 0
  br i1 %1107, label %1108, label %1109

1108:                                             ; preds = %1105
  store i32 10, ptr %340, align 8, !tbaa !79
  br label %1468

1109:                                             ; preds = %1105, %1043, %1042
  %1110 = load ptr, ptr %9, align 8, !tbaa !56
  %1111 = load i32, ptr %337, align 8, !tbaa !69
  call void (ptr, i32, ptr, ...) @ErrorMsg(ptr noundef %1110, i32 noundef %1111, ptr noundef nonnull @.str.191, ptr noundef nonnull %809) #27
  %1112 = load i32, ptr %339, align 4, !tbaa !72
  %1113 = add nsw i32 %1112, 1
  store i32 %1113, ptr %339, align 4, !tbaa !72
  store i32 14, ptr %340, align 8, !tbaa !79
  br label %1468

1114:                                             ; preds = %802
  %1115 = load ptr, ptr %803, align 8, !tbaa !7
  %1116 = load i8, ptr %809, align 1, !tbaa !17
  %1117 = sext i8 %1116 to i64
  %1118 = getelementptr inbounds i16, ptr %1115, i64 %1117
  %1119 = load i16, ptr %1118, align 2, !tbaa !58
  %1120 = and i16 %1119, 1024
  %1121 = icmp eq i16 %1120, 0
  br i1 %1121, label %1127, label %1122

1122:                                             ; preds = %1114
  %1123 = load i32, ptr %564, align 8, !tbaa !83
  %1124 = add nsw i32 %1123, -1
  %1125 = sext i32 %1124 to i64
  %1126 = getelementptr inbounds %struct.pstate, ptr %9, i64 0, i32 11, i64 %1125
  store ptr %809, ptr %1126, align 8, !tbaa !7
  store i32 11, ptr %340, align 8, !tbaa !79
  br label %1468

1127:                                             ; preds = %1114
  %1128 = load ptr, ptr %9, align 8, !tbaa !56
  %1129 = load i32, ptr %337, align 8, !tbaa !69
  %1130 = load i32, ptr %564, align 8, !tbaa !83
  %1131 = add nsw i32 %1130, -1
  %1132 = sext i32 %1131 to i64
  %1133 = getelementptr inbounds %struct.pstate, ptr %9, i64 0, i32 10, i64 %1132
  %1134 = load ptr, ptr %1133, align 8, !tbaa !7
  %1135 = load ptr, ptr %1134, align 8, !tbaa !89
  call void (ptr, i32, ptr, ...) @ErrorMsg(ptr noundef %1128, i32 noundef %1129, ptr noundef nonnull @.str.192, ptr noundef nonnull %809, ptr noundef %1135) #27
  %1136 = load i32, ptr %339, align 4, !tbaa !72
  %1137 = add nsw i32 %1136, 1
  store i32 %1137, ptr %339, align 4, !tbaa !72
  store i32 14, ptr %340, align 8, !tbaa !79
  br label %1468

1138:                                             ; preds = %802
  %1139 = load i8, ptr %809, align 1, !tbaa !17
  %1140 = icmp eq i8 %1139, 41
  br i1 %1140, label %1141, label %1142

1141:                                             ; preds = %1138
  store i32 6, ptr %340, align 8, !tbaa !79
  br label %1468

1142:                                             ; preds = %1138
  %1143 = load ptr, ptr %9, align 8, !tbaa !56
  %1144 = load i32, ptr %337, align 8, !tbaa !69
  %1145 = load ptr, ptr %563, align 8, !tbaa !84
  call void (ptr, i32, ptr, ...) @ErrorMsg(ptr noundef %1143, i32 noundef %1144, ptr noundef nonnull @.str.186, ptr noundef %1145) #27
  %1146 = load i32, ptr %339, align 4, !tbaa !72
  %1147 = add nsw i32 %1146, 1
  store i32 %1147, ptr %339, align 4, !tbaa !72
  store i32 14, ptr %340, align 8, !tbaa !79
  br label %1468

1148:                                             ; preds = %802
  %1149 = load ptr, ptr %803, align 8, !tbaa !7
  %1150 = load i8, ptr %809, align 1, !tbaa !17
  %1151 = sext i8 %1150 to i64
  %1152 = getelementptr inbounds i16, ptr %1149, i64 %1151
  %1153 = load i16, ptr %1152, align 2, !tbaa !58
  %1154 = and i16 %1153, 1024
  %1155 = icmp eq i16 %1154, 0
  br i1 %1155, label %1293, label %1156

1156:                                             ; preds = %1148
  store ptr %809, ptr %559, align 8, !tbaa !105
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %558, i8 0, i64 16, i1 false)
  store i32 3, ptr %340, align 8, !tbaa !79
  %1157 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %809, ptr noundef nonnull dereferenceable(5) @.str.193) #29
  %1158 = icmp eq i32 %1157, 0
  br i1 %1158, label %1159, label %1162

1159:                                             ; preds = %1156
  %1160 = load ptr, ptr %338, align 8, !tbaa !54
  %1161 = getelementptr inbounds %struct.lemon, ptr %1160, i64 0, i32 10
  store ptr %1161, ptr %558, align 8, !tbaa !106
  br label %1468

1162:                                             ; preds = %1156
  %1163 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %809, ptr noundef nonnull dereferenceable(8) @.str.194) #29
  %1164 = icmp eq i32 %1163, 0
  br i1 %1164, label %1165, label %1169

1165:                                             ; preds = %1162
  %1166 = load ptr, ptr %338, align 8, !tbaa !54
  %1167 = getelementptr inbounds %struct.lemon, ptr %1166, i64 0, i32 16
  store ptr %1167, ptr %558, align 8, !tbaa !106
  %1168 = getelementptr inbounds %struct.lemon, ptr %1166, i64 0, i32 17
  store ptr %1168, ptr %560, align 8, !tbaa !107
  br label %1468

1169:                                             ; preds = %1162
  %1170 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %809, ptr noundef nonnull dereferenceable(5) @.str.195) #29
  %1171 = icmp eq i32 %1170, 0
  br i1 %1171, label %1172, label %1176

1172:                                             ; preds = %1169
  %1173 = load ptr, ptr %338, align 8, !tbaa !54
  %1174 = getelementptr inbounds %struct.lemon, ptr %1173, i64 0, i32 26
  store ptr %1174, ptr %558, align 8, !tbaa !106
  %1175 = getelementptr inbounds %struct.lemon, ptr %1173, i64 0, i32 27
  store ptr %1175, ptr %560, align 8, !tbaa !107
  br label %1468

1176:                                             ; preds = %1169
  %1177 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %809, ptr noundef nonnull dereferenceable(17) @.str.196) #29
  %1178 = icmp eq i32 %1177, 0
  br i1 %1178, label %1179, label %1183

1179:                                             ; preds = %1176
  %1180 = load ptr, ptr %338, align 8, !tbaa !54
  %1181 = getelementptr inbounds %struct.lemon, ptr %1180, i64 0, i32 28
  store ptr %1181, ptr %558, align 8, !tbaa !106
  %1182 = getelementptr inbounds %struct.lemon, ptr %1180, i64 0, i32 29
  store ptr %1182, ptr %560, align 8, !tbaa !107
  br label %1468

1183:                                             ; preds = %1176
  %1184 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %809, ptr noundef nonnull dereferenceable(19) @.str.197) #29
  %1185 = icmp eq i32 %1184, 0
  br i1 %1185, label %1186, label %1190

1186:                                             ; preds = %1183
  %1187 = load ptr, ptr %338, align 8, !tbaa !54
  %1188 = getelementptr inbounds %struct.lemon, ptr %1187, i64 0, i32 30
  store ptr %1188, ptr %558, align 8, !tbaa !106
  %1189 = getelementptr inbounds %struct.lemon, ptr %1187, i64 0, i32 31
  store ptr %1189, ptr %560, align 8, !tbaa !107
  br label %1468

1190:                                             ; preds = %1183
  %1191 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %809, ptr noundef nonnull dereferenceable(13) @.str.198) #29
  %1192 = icmp eq i32 %1191, 0
  br i1 %1192, label %1193, label %1196

1193:                                             ; preds = %1190
  %1194 = load ptr, ptr %338, align 8, !tbaa !54
  %1195 = getelementptr inbounds %struct.lemon, ptr %1194, i64 0, i32 34
  store ptr %1195, ptr %558, align 8, !tbaa !106
  br label %1468

1196:                                             ; preds = %1190
  %1197 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %809, ptr noundef nonnull dereferenceable(13) @.str.199) #29
  %1198 = icmp eq i32 %1197, 0
  br i1 %1198, label %1199, label %1203

1199:                                             ; preds = %1196
  %1200 = load ptr, ptr %338, align 8, !tbaa !54
  %1201 = getelementptr inbounds %struct.lemon, ptr %1200, i64 0, i32 18
  store ptr %1201, ptr %558, align 8, !tbaa !106
  %1202 = getelementptr inbounds %struct.lemon, ptr %1200, i64 0, i32 19
  store ptr %1202, ptr %560, align 8, !tbaa !107
  br label %1468

1203:                                             ; preds = %1196
  %1204 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %809, ptr noundef nonnull dereferenceable(13) @.str.200) #29
  %1205 = icmp eq i32 %1204, 0
  br i1 %1205, label %1206, label %1210

1206:                                             ; preds = %1203
  %1207 = load ptr, ptr %338, align 8, !tbaa !54
  %1208 = getelementptr inbounds %struct.lemon, ptr %1207, i64 0, i32 24
  store ptr %1208, ptr %558, align 8, !tbaa !106
  %1209 = getelementptr inbounds %struct.lemon, ptr %1207, i64 0, i32 25
  store ptr %1209, ptr %560, align 8, !tbaa !107
  br label %1468

1210:                                             ; preds = %1203
  %1211 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %809, ptr noundef nonnull dereferenceable(14) @.str.201) #29
  %1212 = icmp eq i32 %1211, 0
  br i1 %1212, label %1213, label %1217

1213:                                             ; preds = %1210
  %1214 = load ptr, ptr %338, align 8, !tbaa !54
  %1215 = getelementptr inbounds %struct.lemon, ptr %1214, i64 0, i32 22
  store ptr %1215, ptr %558, align 8, !tbaa !106
  %1216 = getelementptr inbounds %struct.lemon, ptr %1214, i64 0, i32 23
  store ptr %1216, ptr %560, align 8, !tbaa !107
  br label %1468

1217:                                             ; preds = %1210
  %1218 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %809, ptr noundef nonnull dereferenceable(15) @.str.202) #29
  %1219 = icmp eq i32 %1218, 0
  br i1 %1219, label %1220, label %1224

1220:                                             ; preds = %1217
  %1221 = load ptr, ptr %338, align 8, !tbaa !54
  %1222 = getelementptr inbounds %struct.lemon, ptr %1221, i64 0, i32 20
  store ptr %1222, ptr %558, align 8, !tbaa !106
  %1223 = getelementptr inbounds %struct.lemon, ptr %1221, i64 0, i32 21
  store ptr %1223, ptr %560, align 8, !tbaa !107
  br label %1468

1224:                                             ; preds = %1217
  %1225 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %809, ptr noundef nonnull dereferenceable(15) @.str.203) #29
  %1226 = icmp eq i32 %1225, 0
  br i1 %1226, label %1227, label %1230

1227:                                             ; preds = %1224
  %1228 = load ptr, ptr %338, align 8, !tbaa !54
  %1229 = getelementptr inbounds %struct.lemon, ptr %1228, i64 0, i32 11
  store ptr %1229, ptr %558, align 8, !tbaa !106
  br label %1468

1230:                                             ; preds = %1224
  %1231 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %809, ptr noundef nonnull dereferenceable(11) @.str.204) #29
  %1232 = icmp eq i32 %1231, 0
  br i1 %1232, label %1233, label %1236

1233:                                             ; preds = %1230
  %1234 = load ptr, ptr %338, align 8, !tbaa !54
  %1235 = getelementptr inbounds %struct.lemon, ptr %1234, i64 0, i32 12
  store ptr %1235, ptr %558, align 8, !tbaa !106
  br label %1468

1236:                                             ; preds = %1230
  %1237 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %809, ptr noundef nonnull dereferenceable(13) @.str.205) #29
  %1238 = icmp eq i32 %1237, 0
  br i1 %1238, label %1239, label %1242

1239:                                             ; preds = %1236
  %1240 = load ptr, ptr %338, align 8, !tbaa !54
  %1241 = getelementptr inbounds %struct.lemon, ptr %1240, i64 0, i32 13
  store ptr %1241, ptr %558, align 8, !tbaa !106
  br label %1468

1242:                                             ; preds = %1236
  %1243 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %809, ptr noundef nonnull dereferenceable(11) @.str.206) #29
  %1244 = icmp eq i32 %1243, 0
  br i1 %1244, label %1245, label %1248

1245:                                             ; preds = %1242
  %1246 = load ptr, ptr %338, align 8, !tbaa !54
  %1247 = getelementptr inbounds %struct.lemon, ptr %1246, i64 0, i32 15
  store ptr %1247, ptr %558, align 8, !tbaa !106
  br label %1468

1248:                                             ; preds = %1242
  %1249 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %809, ptr noundef nonnull dereferenceable(13) @.str.207) #29
  %1250 = icmp eq i32 %1249, 0
  br i1 %1250, label %1251, label %1254

1251:                                             ; preds = %1248
  %1252 = load ptr, ptr %338, align 8, !tbaa !54
  %1253 = getelementptr inbounds %struct.lemon, ptr %1252, i64 0, i32 14
  store ptr %1253, ptr %558, align 8, !tbaa !106
  br label %1468

1254:                                             ; preds = %1248
  %1255 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %809, ptr noundef nonnull dereferenceable(5) @.str.208) #29
  %1256 = icmp eq i32 %1255, 0
  br i1 %1256, label %1257, label %1260

1257:                                             ; preds = %1254
  %1258 = load i32, ptr %561, align 4, !tbaa !108
  %1259 = add nsw i32 %1258, 1
  store i32 %1259, ptr %561, align 4, !tbaa !108
  store i32 0, ptr %562, align 8, !tbaa !109
  store i32 4, ptr %340, align 8, !tbaa !79
  br label %1468

1260:                                             ; preds = %1254
  %1261 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %809, ptr noundef nonnull dereferenceable(6) @.str.209) #29
  %1262 = icmp eq i32 %1261, 0
  br i1 %1262, label %1263, label %1266

1263:                                             ; preds = %1260
  %1264 = load i32, ptr %561, align 4, !tbaa !108
  %1265 = add nsw i32 %1264, 1
  store i32 %1265, ptr %561, align 4, !tbaa !108
  store i32 1, ptr %562, align 8, !tbaa !109
  store i32 4, ptr %340, align 8, !tbaa !79
  br label %1468

1266:                                             ; preds = %1260
  %1267 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %809, ptr noundef nonnull dereferenceable(9) @.str.210) #29
  %1268 = icmp eq i32 %1267, 0
  br i1 %1268, label %1269, label %1272

1269:                                             ; preds = %1266
  %1270 = load i32, ptr %561, align 4, !tbaa !108
  %1271 = add nsw i32 %1270, 1
  store i32 %1271, ptr %561, align 4, !tbaa !108
  store i32 2, ptr %562, align 8, !tbaa !109
  store i32 4, ptr %340, align 8, !tbaa !79
  br label %1468

1272:                                             ; preds = %1266
  %1273 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %809, ptr noundef nonnull dereferenceable(11) @.str.211) #29
  %1274 = icmp eq i32 %1273, 0
  br i1 %1274, label %1275, label %1276

1275:                                             ; preds = %1272
  store i32 16, ptr %340, align 8, !tbaa !79
  br label %1468

1276:                                             ; preds = %1272
  %1277 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %809, ptr noundef nonnull dereferenceable(5) @.str.212) #29
  %1278 = icmp eq i32 %1277, 0
  br i1 %1278, label %1279, label %1280

1279:                                             ; preds = %1276
  store i32 17, ptr %340, align 8, !tbaa !79
  br label %1468

1280:                                             ; preds = %1276
  %1281 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %809, ptr noundef nonnull dereferenceable(9) @.str.213) #29
  %1282 = icmp eq i32 %1281, 0
  br i1 %1282, label %1283, label %1284

1283:                                             ; preds = %1280
  store ptr null, ptr %557, align 8, !tbaa !110
  store i32 18, ptr %340, align 8, !tbaa !79
  br label %1468

1284:                                             ; preds = %1280
  %1285 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %809, ptr noundef nonnull dereferenceable(9) @.str.214) #29
  %1286 = icmp eq i32 %1285, 0
  br i1 %1286, label %1287, label %1288

1287:                                             ; preds = %1284
  store i32 19, ptr %340, align 8, !tbaa !79
  br label %1468

1288:                                             ; preds = %1284
  %1289 = load ptr, ptr %9, align 8, !tbaa !56
  %1290 = load i32, ptr %337, align 8, !tbaa !69
  call void (ptr, i32, ptr, ...) @ErrorMsg(ptr noundef %1289, i32 noundef %1290, ptr noundef nonnull @.str.215, ptr noundef nonnull %809) #27
  %1291 = load i32, ptr %339, align 4, !tbaa !72
  %1292 = add nsw i32 %1291, 1
  store i32 %1292, ptr %339, align 4, !tbaa !72
  store i32 15, ptr %340, align 8, !tbaa !79
  br label %1468

1293:                                             ; preds = %1148
  %1294 = load ptr, ptr %9, align 8, !tbaa !56
  %1295 = load i32, ptr %337, align 8, !tbaa !69
  call void (ptr, i32, ptr, ...) @ErrorMsg(ptr noundef %1294, i32 noundef %1295, ptr noundef nonnull @.str.216, ptr noundef nonnull %809) #27
  %1296 = load i32, ptr %339, align 4, !tbaa !72
  %1297 = add nsw i32 %1296, 1
  store i32 %1297, ptr %339, align 4, !tbaa !72
  store i32 15, ptr %340, align 8, !tbaa !79
  br label %1468

1298:                                             ; preds = %802
  %1299 = load ptr, ptr %803, align 8, !tbaa !7
  %1300 = load i8, ptr %809, align 1, !tbaa !17
  %1301 = sext i8 %1300 to i64
  %1302 = getelementptr inbounds i16, ptr %1299, i64 %1301
  %1303 = load i16, ptr %1302, align 2, !tbaa !58
  %1304 = and i16 %1303, 1024
  %1305 = icmp eq i16 %1304, 0
  br i1 %1305, label %1306, label %1311

1306:                                             ; preds = %1298
  %1307 = load ptr, ptr %9, align 8, !tbaa !56
  %1308 = load i32, ptr %337, align 8, !tbaa !69
  call void (ptr, i32, ptr, ...) @ErrorMsg(ptr noundef %1307, i32 noundef %1308, ptr noundef nonnull @.str.217) #27
  %1309 = load i32, ptr %339, align 4, !tbaa !72
  %1310 = add nsw i32 %1309, 1
  store i32 %1310, ptr %339, align 4, !tbaa !72
  store i32 15, ptr %340, align 8, !tbaa !79
  br label %1468

1311:                                             ; preds = %1298
  %1312 = call fastcc ptr @Symbol_new(ptr noundef nonnull %809) #27
  %1313 = getelementptr inbounds %struct.symbol, ptr %1312, i64 0, i32 10
  store ptr %1313, ptr %558, align 8, !tbaa !106
  %1314 = getelementptr inbounds %struct.symbol, ptr %1312, i64 0, i32 11
  store ptr %1314, ptr %560, align 8, !tbaa !107
  store i32 3, ptr %340, align 8, !tbaa !79
  br label %1468

1315:                                             ; preds = %802
  %1316 = load ptr, ptr %803, align 8, !tbaa !7
  %1317 = load i8, ptr %809, align 1, !tbaa !17
  %1318 = sext i8 %1317 to i64
  %1319 = getelementptr inbounds i16, ptr %1316, i64 %1318
  %1320 = load i16, ptr %1319, align 2, !tbaa !58
  %1321 = and i16 %1320, 1024
  %1322 = icmp eq i16 %1321, 0
  br i1 %1322, label %1323, label %1328

1323:                                             ; preds = %1315
  %1324 = load ptr, ptr %9, align 8, !tbaa !56
  %1325 = load i32, ptr %337, align 8, !tbaa !69
  call void (ptr, i32, ptr, ...) @ErrorMsg(ptr noundef %1324, i32 noundef %1325, ptr noundef nonnull @.str.217) #27
  %1326 = load i32, ptr %339, align 4, !tbaa !72
  %1327 = add nsw i32 %1326, 1
  store i32 %1327, ptr %339, align 4, !tbaa !72
  store i32 15, ptr %340, align 8, !tbaa !79
  br label %1468

1328:                                             ; preds = %1315
  %1329 = call fastcc ptr @Symbol_new(ptr noundef nonnull %809) #27
  %1330 = getelementptr inbounds %struct.symbol, ptr %1329, i64 0, i32 12
  store ptr %1330, ptr %558, align 8, !tbaa !106
  store ptr null, ptr %560, align 8, !tbaa !107
  store i32 3, ptr %340, align 8, !tbaa !79
  br label %1468

1331:                                             ; preds = %802
  %1332 = load i8, ptr %809, align 1, !tbaa !17
  %1333 = icmp eq i8 %1332, 46
  br i1 %1333, label %1334, label %1335

1334:                                             ; preds = %1331
  store i32 1, ptr %340, align 8, !tbaa !79
  br label %1468

1335:                                             ; preds = %1331
  %1336 = load ptr, ptr %803, align 8, !tbaa !7
  %1337 = sext i8 %1332 to i64
  %1338 = getelementptr inbounds i16, ptr %1336, i64 %1337
  %1339 = load i16, ptr %1338, align 2, !tbaa !58
  %1340 = and i16 %1339, 256
  %1341 = icmp eq i16 %1340, 0
  br i1 %1341, label %1355, label %1342

1342:                                             ; preds = %1335
  %1343 = call fastcc ptr @Symbol_new(ptr noundef nonnull %809) #27
  %1344 = getelementptr inbounds %struct.symbol, ptr %1343, i64 0, i32 5
  %1345 = load i32, ptr %1344, align 8, !tbaa !111
  %1346 = icmp sgt i32 %1345, -1
  br i1 %1346, label %1347, label %1352

1347:                                             ; preds = %1342
  %1348 = load ptr, ptr %9, align 8, !tbaa !56
  %1349 = load i32, ptr %337, align 8, !tbaa !69
  call void (ptr, i32, ptr, ...) @ErrorMsg(ptr noundef %1348, i32 noundef %1349, ptr noundef nonnull @.str.218, ptr noundef nonnull %809) #27
  %1350 = load i32, ptr %339, align 4, !tbaa !72
  %1351 = add nsw i32 %1350, 1
  store i32 %1351, ptr %339, align 4, !tbaa !72
  br label %1468

1352:                                             ; preds = %1342
  %1353 = load <2 x i32>, ptr %562, align 8, !tbaa !17
  %1354 = shufflevector <2 x i32> %1353, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %1354, ptr %1344, align 8, !tbaa !17
  br label %1468

1355:                                             ; preds = %1335
  %1356 = load ptr, ptr %9, align 8, !tbaa !56
  %1357 = load i32, ptr %337, align 8, !tbaa !69
  call void (ptr, i32, ptr, ...) @ErrorMsg(ptr noundef %1356, i32 noundef %1357, ptr noundef nonnull @.str.219, ptr noundef nonnull %809) #27
  %1358 = load i32, ptr %339, align 4, !tbaa !72
  %1359 = add nsw i32 %1358, 1
  store i32 %1359, ptr %339, align 4, !tbaa !72
  br label %1468

1360:                                             ; preds = %802
  %1361 = load i8, ptr %809, align 1, !tbaa !17
  switch i8 %1361, label %1362 [
    i8 123, label %1369
    i8 34, label %1369
  ]

1362:                                             ; preds = %1360
  %1363 = load ptr, ptr %803, align 8, !tbaa !7
  %1364 = sext i8 %1361 to i64
  %1365 = getelementptr inbounds i16, ptr %1363, i64 %1364
  %1366 = load i16, ptr %1365, align 2, !tbaa !58
  %1367 = and i16 %1366, 8
  %1368 = icmp eq i16 %1367, 0
  br i1 %1368, label %1392, label %1369

1369:                                             ; preds = %1362, %1360, %1360
  %1370 = load ptr, ptr %558, align 8, !tbaa !106
  %1371 = load ptr, ptr %1370, align 8, !tbaa !7
  %1372 = icmp eq ptr %1371, null
  br i1 %1372, label %1382, label %1373

1373:                                             ; preds = %1369
  %1374 = load ptr, ptr %9, align 8, !tbaa !56
  %1375 = load i32, ptr %337, align 8, !tbaa !69
  %1376 = icmp eq i8 %1361, 34
  %1377 = zext i1 %1376 to i64
  %1378 = getelementptr inbounds i8, ptr %809, i64 %1377
  %1379 = load ptr, ptr %559, align 8, !tbaa !105
  call void (ptr, i32, ptr, ...) @ErrorMsg(ptr noundef %1374, i32 noundef %1375, ptr noundef nonnull @.str.220, ptr noundef nonnull %1378, ptr noundef %1379) #27
  %1380 = load i32, ptr %339, align 4, !tbaa !72
  %1381 = add nsw i32 %1380, 1
  store i32 %1381, ptr %339, align 4, !tbaa !72
  store i32 15, ptr %340, align 8, !tbaa !79
  br label %1468

1382:                                             ; preds = %1369
  switch i8 %1361, label %1385 [
    i8 34, label %1383
    i8 123, label %1383
  ]

1383:                                             ; preds = %1382, %1382
  %1384 = getelementptr inbounds i8, ptr %809, i64 1
  br label %1385

1385:                                             ; preds = %1383, %1382
  %1386 = phi ptr [ %1384, %1383 ], [ %809, %1382 ]
  store ptr %1386, ptr %1370, align 8, !tbaa !7
  %1387 = load ptr, ptr %560, align 8, !tbaa !107
  %1388 = icmp eq ptr %1387, null
  br i1 %1388, label %1391, label %1389

1389:                                             ; preds = %1385
  %1390 = load i32, ptr %337, align 8, !tbaa !69
  store i32 %1390, ptr %1387, align 4, !tbaa !11
  br label %1391

1391:                                             ; preds = %1389, %1385
  store i32 1, ptr %340, align 8, !tbaa !79
  br label %1468

1392:                                             ; preds = %1362
  %1393 = load ptr, ptr %9, align 8, !tbaa !56
  %1394 = load i32, ptr %337, align 8, !tbaa !69
  %1395 = load ptr, ptr %559, align 8, !tbaa !105
  call void (ptr, i32, ptr, ...) @ErrorMsg(ptr noundef %1393, i32 noundef %1394, ptr noundef nonnull @.str.221, ptr noundef %1395, ptr noundef nonnull %809) #27
  %1396 = load i32, ptr %339, align 4, !tbaa !72
  %1397 = add nsw i32 %1396, 1
  store i32 %1397, ptr %339, align 4, !tbaa !72
  store i32 15, ptr %340, align 8, !tbaa !79
  br label %1468

1398:                                             ; preds = %802
  %1399 = load i8, ptr %809, align 1, !tbaa !17
  %1400 = icmp eq i8 %1399, 46
  br i1 %1400, label %1401, label %1402

1401:                                             ; preds = %1398
  store i32 1, ptr %340, align 8, !tbaa !79
  br label %1468

1402:                                             ; preds = %1398
  %1403 = load ptr, ptr %803, align 8, !tbaa !7
  %1404 = sext i8 %1399 to i64
  %1405 = getelementptr inbounds i16, ptr %1403, i64 %1404
  %1406 = load i16, ptr %1405, align 2, !tbaa !58
  %1407 = and i16 %1406, 256
  %1408 = icmp eq i16 %1407, 0
  br i1 %1408, label %1409, label %1414

1409:                                             ; preds = %1402
  %1410 = load ptr, ptr %9, align 8, !tbaa !56
  %1411 = load i32, ptr %337, align 8, !tbaa !69
  call void (ptr, i32, ptr, ...) @ErrorMsg(ptr noundef %1410, i32 noundef %1411, ptr noundef nonnull @.str.222, ptr noundef nonnull %809) #27
  %1412 = load i32, ptr %339, align 4, !tbaa !72
  %1413 = add nsw i32 %1412, 1
  store i32 %1413, ptr %339, align 4, !tbaa !72
  br label %1468

1414:                                             ; preds = %1402
  %1415 = call fastcc ptr @Symbol_new(ptr noundef nonnull %809) #27
  %1416 = load ptr, ptr %557, align 8, !tbaa !110
  %1417 = icmp eq ptr %1416, null
  br i1 %1417, label %1418, label %1419

1418:                                             ; preds = %1414
  store ptr %1415, ptr %557, align 8, !tbaa !110
  br label %1468

1419:                                             ; preds = %1414
  %1420 = getelementptr inbounds %struct.symbol, ptr %1415, i64 0, i32 4
  %1421 = load ptr, ptr %1420, align 8, !tbaa !112
  %1422 = icmp eq ptr %1421, null
  br i1 %1422, label %1428, label %1423

1423:                                             ; preds = %1419
  %1424 = load ptr, ptr %9, align 8, !tbaa !56
  %1425 = load i32, ptr %337, align 8, !tbaa !69
  call void (ptr, i32, ptr, ...) @ErrorMsg(ptr noundef %1424, i32 noundef %1425, ptr noundef nonnull @.str.223, ptr noundef nonnull %809) #27
  %1426 = load i32, ptr %339, align 4, !tbaa !72
  %1427 = add nsw i32 %1426, 1
  store i32 %1427, ptr %339, align 4, !tbaa !72
  br label %1468

1428:                                             ; preds = %1419
  store ptr %1416, ptr %1420, align 8, !tbaa !112
  %1429 = load ptr, ptr %338, align 8, !tbaa !54
  %1430 = getelementptr inbounds %struct.lemon, ptr %1429, i64 0, i32 38
  store i32 1, ptr %1430, align 4, !tbaa !113
  br label %1468

1431:                                             ; preds = %802
  %1432 = load i8, ptr %809, align 1, !tbaa !17
  %1433 = icmp eq i8 %1432, 46
  br i1 %1433, label %1434, label %1435

1434:                                             ; preds = %1431
  store i32 1, ptr %340, align 8, !tbaa !79
  br label %1468

1435:                                             ; preds = %1431
  %1436 = load ptr, ptr %803, align 8, !tbaa !7
  %1437 = sext i8 %1432 to i64
  %1438 = getelementptr inbounds i16, ptr %1436, i64 %1437
  %1439 = load i16, ptr %1438, align 2, !tbaa !58
  %1440 = and i16 %1439, 256
  %1441 = icmp eq i16 %1440, 0
  br i1 %1441, label %1442, label %1447

1442:                                             ; preds = %1435
  %1443 = load ptr, ptr %9, align 8, !tbaa !56
  %1444 = load i32, ptr %337, align 8, !tbaa !69
  call void (ptr, i32, ptr, ...) @ErrorMsg(ptr noundef %1443, i32 noundef %1444, ptr noundef nonnull @.str.224, ptr noundef nonnull %809) #27
  %1445 = load i32, ptr %339, align 4, !tbaa !72
  %1446 = add nsw i32 %1445, 1
  store i32 %1446, ptr %339, align 4, !tbaa !72
  br label %1468

1447:                                             ; preds = %1435
  %1448 = call fastcc ptr @Symbol_new(ptr noundef nonnull %809) #27
  %1449 = load ptr, ptr %338, align 8, !tbaa !54
  %1450 = getelementptr inbounds %struct.lemon, ptr %1449, i64 0, i32 9
  %1451 = load ptr, ptr %1450, align 8, !tbaa !114
  %1452 = icmp eq ptr %1451, null
  br i1 %1452, label %1453, label %1454

1453:                                             ; preds = %1447
  store ptr %1448, ptr %1450, align 8, !tbaa !114
  br label %1468

1454:                                             ; preds = %1447
  %1455 = load ptr, ptr %9, align 8, !tbaa !56
  %1456 = load i32, ptr %337, align 8, !tbaa !69
  call void (ptr, i32, ptr, ...) @ErrorMsg(ptr noundef %1455, i32 noundef %1456, ptr noundef nonnull @.str.225, ptr noundef nonnull %809) #27
  %1457 = load i32, ptr %339, align 4, !tbaa !72
  %1458 = add nsw i32 %1457, 1
  store i32 %1458, ptr %339, align 4, !tbaa !72
  br label %1468

1459:                                             ; preds = %802, %802
  %1460 = load i8, ptr %809, align 1, !tbaa !17
  %1461 = icmp eq i8 %1460, 46
  br i1 %1461, label %1462, label %1464

1462:                                             ; preds = %1459
  store i32 1, ptr %340, align 8, !tbaa !79
  %1463 = load i8, ptr %809, align 1, !tbaa !17
  br label %1464

1464:                                             ; preds = %1462, %1459
  %1465 = phi i8 [ %1463, %1462 ], [ %1460, %1459 ]
  %1466 = icmp eq i8 %1465, 37
  br i1 %1466, label %1467, label %1468

1467:                                             ; preds = %1464
  store i32 2, ptr %340, align 8, !tbaa !79
  br label %1468

1468:                                             ; preds = %1467, %1464, %1454, %1453, %1442, %1434, %1428, %1423, %1418, %1409, %1401, %1392, %1391, %1373, %1355, %1352, %1347, %1334, %1328, %1323, %1311, %1306, %1293, %1288, %1287, %1283, %1279, %1275, %1269, %1263, %1257, %1251, %1245, %1239, %1233, %1227, %1220, %1213, %1206, %1199, %1193, %1186, %1179, %1172, %1165, %1159, %1142, %1141, %1127, %1122, %1109, %1108, %1100, %1090, %1036, %1031, %1020, %954, %953, %936, %935, %925, %924, %909, %908, %907, %896, %887, %850, %849, %845, %840, %831, %825, %817, %802
  store i8 %807, ptr %804, align 1, !tbaa !17
  br label %1469

1469:                                             ; preds = %1468, %626, %592
  %1470 = phi ptr [ %805, %1468 ], [ %630, %626 ], [ %593, %592 ]
  %1471 = phi i32 [ %806, %1468 ], [ %628, %626 ], [ %.lcssa67, %592 ]
  br label %572, !llvm.loop !115

1472:                                             ; preds = %577
  call void @free(ptr noundef %352) #26
  %1473 = load ptr, ptr %566, align 8, !tbaa !101
  %1474 = getelementptr inbounds %struct.lemon, ptr %11, i64 0, i32 1
  store ptr %1473, ptr %1474, align 8, !tbaa !116
  %1475 = load i32, ptr %339, align 4, !tbaa !72
  br label %1476

1476:                                             ; preds = %1472, %362, %354, %343
  %1477 = phi i32 [ %345, %343 ], [ %356, %354 ], [ %364, %362 ], [ %1475, %1472 ]
  store i32 %1477, ptr %232, align 8, !tbaa !57
  call void @llvm.lifetime.end.p0(i64 16128, ptr nonnull %9) #25
  %1478 = icmp eq i32 %1477, 0
  br i1 %1478, label %1480, label %1479

1479:                                             ; preds = %1476
  call void @exit(i32 noundef %1477) #31
  unreachable

1480:                                             ; preds = %1476
  %1481 = getelementptr inbounds %struct.lemon, ptr %11, i64 0, i32 3
  %1482 = load i32, ptr %1481, align 4, !tbaa !81
  %1483 = icmp eq i32 %1482, 0
  br i1 %1483, label %1484, label %1487

1484:                                             ; preds = %1480
  %1485 = load ptr, ptr @stderr, align 8, !tbaa !7
  %1486 = call i64 @fwrite(ptr nonnull @.str.31, i64 15, i64 1, ptr %1485) #32
  call void @exit(i32 noundef 1) #31
  unreachable

1487:                                             ; preds = %1480
  %1488 = load ptr, ptr @x2a, align 8, !tbaa !7
  %1489 = icmp eq ptr %1488, null
  br i1 %1489, label %1493, label %1490

1490:                                             ; preds = %1487
  %1491 = getelementptr inbounds %struct.s_x4, ptr %1488, i64 0, i32 1
  %1492 = load i32, ptr %1491, align 4, !tbaa !36
  br label %1493

1493:                                             ; preds = %1490, %1487
  %1494 = phi i32 [ %1492, %1490 ], [ 0, %1487 ]
  %1495 = getelementptr inbounds %struct.lemon, ptr %11, i64 0, i32 4
  store i32 %1494, ptr %1495, align 8, !tbaa !117
  %1496 = call fastcc ptr @Symbol_new(ptr noundef nonnull @.str.32) #27
  %1497 = load ptr, ptr @x2a, align 8, !tbaa !7
  %1498 = icmp eq ptr %1497, null
  br i1 %1498, label %1518, label %1499

1499:                                             ; preds = %1493
  %1500 = getelementptr inbounds %struct.s_x4, ptr %1497, i64 0, i32 1
  %1501 = load i32, ptr %1500, align 4, !tbaa !36
  %1502 = sext i32 %1501 to i64
  %1503 = call noalias ptr @calloc(i64 noundef %1502, i64 noundef 8) #34
  %1504 = icmp eq ptr %1503, null
  br i1 %1504, label %1518, label %1505

1505:                                             ; preds = %1499
  %1506 = icmp sgt i32 %1501, 0
  br i1 %1506, label %1507, label %1518

1507:                                             ; preds = %1505
  %1508 = getelementptr inbounds %struct.s_x4, ptr %1497, i64 0, i32 2
  %1509 = load ptr, ptr %1508, align 8, !tbaa !37
  %1510 = zext i32 %1501 to i64
  br label %1511

1511:                                             ; preds = %1511, %1507
  %1512 = phi i64 [ 0, %1507 ], [ %1516, %1511 ]
  %1513 = getelementptr inbounds %struct.s_x3node, ptr %1509, i64 %1512
  %1514 = load ptr, ptr %1513, align 8, !tbaa !118
  %1515 = getelementptr inbounds ptr, ptr %1503, i64 %1512
  store ptr %1514, ptr %1515, align 8, !tbaa !7
  %1516 = add nuw nsw i64 %1512, 1
  %1517 = icmp eq i64 %1516, %1510
  br i1 %1517, label %1518, label %1511, !llvm.loop !120

1518:                                             ; preds = %1511, %1505, %1499, %1493
  %1519 = phi ptr [ null, %1493 ], [ null, %1499 ], [ %1503, %1505 ], [ %1503, %1511 ]
  %1520 = getelementptr inbounds %struct.lemon, ptr %11, i64 0, i32 6
  store ptr %1519, ptr %1520, align 8, !tbaa !121
  %1521 = load i32, ptr %1495, align 8, !tbaa !117
  %1522 = icmp slt i32 %1521, 0
  %1523 = add i32 %1521, 1
  br i1 %1522, label %1534, label %1524

1524:                                             ; preds = %1518
  %1525 = zext i32 %1523 to i64
  br label %1526

1526:                                             ; preds = %1526, %1524
  %1527 = phi i64 [ 0, %1524 ], [ %1532, %1526 ]
  %1528 = getelementptr inbounds ptr, ptr %1519, i64 %1527
  %1529 = load ptr, ptr %1528, align 8, !tbaa !7
  %1530 = getelementptr inbounds %struct.symbol, ptr %1529, i64 0, i32 1
  %1531 = trunc i64 %1527 to i32
  store i32 %1531, ptr %1530, align 8, !tbaa !122
  %1532 = add nuw nsw i64 %1527, 1
  %1533 = icmp eq i64 %1532, %1525
  br i1 %1533, label %1534, label %1526, !llvm.loop !123

1534:                                             ; preds = %1526, %1518
  %1535 = sext i32 %1523 to i64
  call void @qsort(ptr noundef %1519, i64 noundef %1535, i64 noundef 8, ptr noundef nonnull @Symbolcmpp) #26
  %1536 = load i32, ptr %1495, align 8, !tbaa !117
  %1537 = icmp slt i32 %1536, 0
  %1538 = load ptr, ptr %1520, align 8, !tbaa !121
  br i1 %1537, label %1542, label %1539

1539:                                             ; preds = %1534
  %1540 = add nuw i32 %1536, 1
  %1541 = zext i32 %1540 to i64
  br label %1545

1542:                                             ; preds = %1545, %1534
  %1543 = tail call ptr @__ctype_b_loc() #28
  %1544 = load ptr, ptr %1543, align 8, !tbaa !7
  br label %1553

1545:                                             ; preds = %1545, %1539
  %1546 = phi i64 [ 0, %1539 ], [ %1551, %1545 ]
  %1547 = getelementptr inbounds ptr, ptr %1538, i64 %1546
  %1548 = load ptr, ptr %1547, align 8, !tbaa !7
  %1549 = getelementptr inbounds %struct.symbol, ptr %1548, i64 0, i32 1
  %1550 = trunc i64 %1546 to i32
  store i32 %1550, ptr %1549, align 8, !tbaa !122
  %1551 = add nuw nsw i64 %1546, 1
  %1552 = icmp eq i64 %1551, %1541
  br i1 %1552, label %1542, label %1545, !llvm.loop !124

1553:                                             ; preds = %1553, %1542
  %1554 = phi i64 [ %1564, %1553 ], [ 1, %1542 ]
  %1555 = getelementptr inbounds ptr, ptr %1538, i64 %1554
  %1556 = load ptr, ptr %1555, align 8, !tbaa !7
  %1557 = load ptr, ptr %1556, align 8, !tbaa !89
  %1558 = load i8, ptr %1557, align 1, !tbaa !17
  %1559 = sext i8 %1558 to i64
  %1560 = getelementptr inbounds i16, ptr %1544, i64 %1559
  %1561 = load i16, ptr %1560, align 2, !tbaa !58
  %1562 = and i16 %1561, 256
  %1563 = icmp eq i16 %1562, 0
  %1564 = add nuw i64 %1554, 1
  br i1 %1563, label %1565, label %1553, !llvm.loop !125

1565:                                             ; preds = %1553
  %.lcssa46 = phi i64 [ %1554, %1553 ]
  %1566 = trunc i64 %.lcssa46 to i32
  %1567 = getelementptr inbounds %struct.lemon, ptr %11, i64 0, i32 5
  store i32 %1566, ptr %1567, align 4, !tbaa !126
  %1568 = load i32, ptr @lemon_main.rpflag, align 4, !tbaa !11
  %1569 = icmp eq i32 %1568, 0
  br i1 %1569, label %1682, label %1570

1570:                                             ; preds = %1565
  %1571 = load ptr, ptr %330, align 8, !tbaa !49
  %1572 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.51, ptr noundef %1571) #27
  %1573 = load i32, ptr %1495, align 8, !tbaa !117
  %1574 = icmp sgt i32 %1573, 0
  br i1 %1574, label %1575, label %1589

1575:                                             ; preds = %1570
  %1576 = load ptr, ptr %1520, align 8, !tbaa !121
  %1577 = zext i32 %1573 to i64
  br label %1578

1578:                                             ; preds = %1578, %1575
  %1579 = phi i64 [ 0, %1575 ], [ %1587, %1578 ]
  %1580 = phi i32 [ 10, %1575 ], [ %1586, %1578 ]
  %1581 = getelementptr inbounds ptr, ptr %1576, i64 %1579
  %1582 = load ptr, ptr %1581, align 8, !tbaa !7
  %1583 = load ptr, ptr %1582, align 8, !tbaa !89
  %1584 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1583) #29
  %1585 = trunc i64 %1584 to i32
  %1586 = call i32 @llvm.smax.i32(i32 %1580, i32 %1585)
  %1587 = add nuw nsw i64 %1579, 1
  %1588 = icmp eq i64 %1587, %1577
  br i1 %1588, label %1589, label %1578, !llvm.loop !127

1589:                                             ; preds = %1578, %1570
  %1590 = phi i32 [ 10, %1570 ], [ %1586, %1578 ]
  %1591 = add nuw nsw i32 %1590, 5
  %1592 = sdiv i32 76, %1591
  %1593 = call i32 @llvm.smax.i32(i32 %1592, i32 1)
  %1594 = add i32 %1573, -1
  %1595 = add i32 %1594, %1593
  %1596 = sdiv i32 %1595, %1593
  %1597 = icmp sgt i32 %1596, 0
  br i1 %1597, label %1598, label %1622

1598:                                             ; preds = %1589
  %1599 = zext i32 %1596 to i64
  br label %1600

1600:                                             ; preds = %1618, %1598
  %1601 = phi i64 [ 0, %1598 ], [ %1620, %1618 ]
  %1602 = trunc i64 %1601 to i32
  %1603 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.52) #27
  %1604 = load i32, ptr %1495, align 8, !tbaa !117
  %1605 = icmp sgt i32 %1604, %1602
  br i1 %1605, label %1606, label %1618

1606:                                             ; preds = %1606, %1600
  %1607 = phi i64 [ %1614, %1606 ], [ %1601, %1600 ]
  %1608 = load ptr, ptr %1520, align 8, !tbaa !121
  %1609 = getelementptr inbounds ptr, ptr %1608, i64 %1607
  %1610 = load ptr, ptr %1609, align 8, !tbaa !7
  %1611 = load ptr, ptr %1610, align 8, !tbaa !89
  %1612 = trunc i64 %1607 to i32
  %1613 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.53, i32 noundef %1612, i32 noundef %1590, i32 noundef %1590, ptr noundef %1611) #27
  %1614 = add i64 %1607, %1599
  %1615 = load i32, ptr %1495, align 8, !tbaa !117
  %1616 = sext i32 %1615 to i64
  %1617 = icmp slt i64 %1614, %1616
  br i1 %1617, label %1606, label %1618, !llvm.loop !128

1618:                                             ; preds = %1606, %1600
  %1619 = call i32 @putchar(i32 10)
  %1620 = add nuw nsw i64 %1601, 1
  %1621 = icmp eq i64 %1620, %1599
  br i1 %1621, label %1622, label %1600, !llvm.loop !129

1622:                                             ; preds = %1618, %1589
  %1623 = getelementptr inbounds %struct.lemon, ptr %11, i64 0, i32 1
  %1624 = load ptr, ptr %1623, align 8, !tbaa !7
  %1625 = icmp eq ptr %1624, null
  br i1 %1625, label %4405, label %1626

1626:                                             ; preds = %1677, %1622
  %1627 = phi ptr [ %1680, %1677 ], [ %1624, %1622 ]
  %1628 = load ptr, ptr %1627, align 8, !tbaa !94
  %1629 = load ptr, ptr %1628, align 8, !tbaa !89
  %1630 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.55, ptr noundef %1629) #27
  %1631 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.56) #27
  %1632 = getelementptr inbounds %struct.rule, ptr %1627, i64 0, i32 4
  %1633 = load i32, ptr %1632, align 8, !tbaa !96
  %1634 = icmp sgt i32 %1633, 0
  br i1 %1634, label %1635, label %1669

1635:                                             ; preds = %1626
  %1636 = getelementptr inbounds %struct.rule, ptr %1627, i64 0, i32 5
  br label %1637

1637:                                             ; preds = %1664, %1635
  %1638 = phi i64 [ 0, %1635 ], [ %1665, %1664 ]
  %1639 = load ptr, ptr %1636, align 8, !tbaa !91
  %1640 = getelementptr inbounds ptr, ptr %1639, i64 %1638
  %1641 = load ptr, ptr %1640, align 8, !tbaa !7
  %1642 = load ptr, ptr %1641, align 8, !tbaa !89
  %1643 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.57, ptr noundef %1642) #27
  %1644 = getelementptr inbounds %struct.symbol, ptr %1641, i64 0, i32 2
  %1645 = load i32, ptr %1644, align 4, !tbaa !102
  %1646 = icmp eq i32 %1645, 2
  br i1 %1646, label %1647, label %1664

1647:                                             ; preds = %1637
  %1648 = getelementptr inbounds %struct.symbol, ptr %1641, i64 0, i32 14
  %1649 = load i32, ptr %1648, align 4, !tbaa !103
  %1650 = icmp sgt i32 %1649, 1
  br i1 %1650, label %1651, label %1664

1651:                                             ; preds = %1647
  %1652 = getelementptr inbounds %struct.symbol, ptr %1641, i64 0, i32 15
  br label %1653

1653:                                             ; preds = %1653, %1651
  %1654 = phi i64 [ 1, %1651 ], [ %1660, %1653 ]
  %1655 = load ptr, ptr %1652, align 8, !tbaa !104
  %1656 = getelementptr inbounds ptr, ptr %1655, i64 %1654
  %1657 = load ptr, ptr %1656, align 8, !tbaa !7
  %1658 = load ptr, ptr %1657, align 8, !tbaa !89
  %1659 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.58, ptr noundef %1658) #27
  %1660 = add nuw nsw i64 %1654, 1
  %1661 = load i32, ptr %1648, align 4, !tbaa !103
  %1662 = sext i32 %1661 to i64
  %1663 = icmp slt i64 %1660, %1662
  br i1 %1663, label %1653, label %1664, !llvm.loop !130

1664:                                             ; preds = %1653, %1647, %1637
  %1665 = add nuw nsw i64 %1638, 1
  %1666 = load i32, ptr %1632, align 8, !tbaa !96
  %1667 = sext i32 %1666 to i64
  %1668 = icmp slt i64 %1665, %1667
  br i1 %1668, label %1637, label %1669, !llvm.loop !131

1669:                                             ; preds = %1664, %1626
  %1670 = call i32 @putchar(i32 46)
  %1671 = getelementptr inbounds %struct.rule, ptr %1627, i64 0, i32 9
  %1672 = load ptr, ptr %1671, align 8, !tbaa !88
  %1673 = icmp eq ptr %1672, null
  br i1 %1673, label %1677, label %1674

1674:                                             ; preds = %1669
  %1675 = load ptr, ptr %1672, align 8, !tbaa !89
  %1676 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.60, ptr noundef %1675) #27
  br label %1677

1677:                                             ; preds = %1674, %1669
  %1678 = call i32 @putchar(i32 10)
  %1679 = getelementptr inbounds %struct.rule, ptr %1627, i64 0, i32 13
  %1680 = load ptr, ptr %1679, align 8, !tbaa !7
  %1681 = icmp eq ptr %1680, null
  br i1 %1681, label %4405, label %1626, !llvm.loop !132

1682:                                             ; preds = %1565
  %1683 = add nuw nsw i32 %1566, 2
  store i32 %1683, ptr @size, align 4, !tbaa !11
  %1684 = getelementptr inbounds %struct.lemon, ptr %11, i64 0, i32 1
  %1685 = load ptr, ptr %1684, align 8, !tbaa !7
  %1686 = icmp eq ptr %1685, null
  br i1 %1686, label %1742, label %1687

1687:                                             ; preds = %1738, %1682
  %1688 = phi ptr [ %1740, %1738 ], [ %1685, %1682 ]
  %1689 = getelementptr inbounds %struct.rule, ptr %1688, i64 0, i32 9
  %1690 = load ptr, ptr %1689, align 8, !tbaa !88
  %1691 = icmp eq ptr %1690, null
  br i1 %1691, label %1692, label %1738

1692:                                             ; preds = %1687
  %1693 = getelementptr inbounds %struct.rule, ptr %1688, i64 0, i32 4
  %1694 = load i32, ptr %1693, align 8, !tbaa !96
  %1695 = icmp sgt i32 %1694, 0
  br i1 %1695, label %1696, label %1738

1696:                                             ; preds = %1692
  %1697 = getelementptr inbounds %struct.rule, ptr %1688, i64 0, i32 5
  %1698 = zext i32 %1694 to i64
  br label %1699

1699:                                             ; preds = %1734, %1696
  %1700 = phi i64 [ 0, %1696 ], [ %1736, %1734 ]
  %1701 = phi ptr [ null, %1696 ], [ %1735, %1734 ]
  %1702 = icmp eq ptr %1701, null
  br i1 %1702, label %1703, label %1738

1703:                                             ; preds = %1699
  %1704 = load ptr, ptr %1697, align 8, !tbaa !91
  %1705 = getelementptr inbounds ptr, ptr %1704, i64 %1700
  %1706 = load ptr, ptr %1705, align 8, !tbaa !7
  %1707 = getelementptr inbounds %struct.symbol, ptr %1706, i64 0, i32 2
  %1708 = load i32, ptr %1707, align 4, !tbaa !102
  %1709 = icmp eq i32 %1708, 2
  br i1 %1709, label %1710, label %1728

1710:                                             ; preds = %1703
  %1711 = getelementptr inbounds %struct.symbol, ptr %1706, i64 0, i32 14
  %1712 = load i32, ptr %1711, align 4, !tbaa !103
  %1713 = icmp sgt i32 %1712, 0
  br i1 %1713, label %1714, label %1734

1714:                                             ; preds = %1710
  %1715 = getelementptr inbounds %struct.symbol, ptr %1706, i64 0, i32 15
  %1716 = load ptr, ptr %1715, align 8, !tbaa !104
  %1717 = zext i32 %1712 to i64
  br label %1721

1718:                                             ; preds = %1721
  %1719 = add nuw nsw i64 %1722, 1
  %1720 = icmp eq i64 %1719, %1717
  br i1 %1720, label %1734, label %1721, !llvm.loop !133

1721:                                             ; preds = %1718, %1714
  %1722 = phi i64 [ 0, %1714 ], [ %1719, %1718 ]
  %1723 = getelementptr inbounds ptr, ptr %1716, i64 %1722
  %1724 = load ptr, ptr %1723, align 8, !tbaa !7
  %1725 = getelementptr inbounds %struct.symbol, ptr %1724, i64 0, i32 5
  %1726 = load i32, ptr %1725, align 8, !tbaa !111
  %1727 = icmp sgt i32 %1726, -1
  br i1 %1727, label %1732, label %1718

1728:                                             ; preds = %1703
  %1729 = getelementptr inbounds %struct.symbol, ptr %1706, i64 0, i32 5
  %1730 = load i32, ptr %1729, align 8, !tbaa !111
  %1731 = icmp sgt i32 %1730, -1
  br i1 %1731, label %1732, label %1734

1732:                                             ; preds = %1728, %1721
  %1733 = phi ptr [ %1706, %1728 ], [ %1724, %1721 ]
  store ptr %1733, ptr %1689, align 8, !tbaa !88
  br label %1734

1734:                                             ; preds = %1732, %1728, %1718, %1710
  %1735 = phi ptr [ null, %1728 ], [ null, %1710 ], [ %1733, %1732 ], [ null, %1718 ]
  %1736 = add nuw nsw i64 %1700, 1
  %1737 = icmp eq i64 %1736, %1698
  br i1 %1737, label %1738, label %1699, !llvm.loop !134

1738:                                             ; preds = %1734, %1699, %1692, %1687
  %1739 = getelementptr inbounds %struct.rule, ptr %1688, i64 0, i32 13
  %1740 = load ptr, ptr %1739, align 8, !tbaa !7
  %1741 = icmp eq ptr %1740, null
  br i1 %1741, label %1742, label %1687, !llvm.loop !135

1742:                                             ; preds = %1738, %1682
  %1743 = icmp sgt i32 %1536, 0
  br i1 %1743, label %1744, label %1753

1744:                                             ; preds = %1742
  %1745 = zext i32 %1536 to i64
  br label %1746

1746:                                             ; preds = %1746, %1744
  %1747 = phi i64 [ 0, %1744 ], [ %1751, %1746 ]
  %1748 = getelementptr inbounds ptr, ptr %1538, i64 %1747
  %1749 = load ptr, ptr %1748, align 8, !tbaa !7
  %1750 = getelementptr inbounds %struct.symbol, ptr %1749, i64 0, i32 8
  store i32 0, ptr %1750, align 8, !tbaa !136
  %1751 = add nuw nsw i64 %1747, 1
  %1752 = icmp eq i64 %1751, %1745
  br i1 %1752, label %1753, label %1746, !llvm.loop !137

1753:                                             ; preds = %1746, %1742
  %1754 = icmp sgt i32 %1536, %1566
  br i1 %1754, label %1755, label %1760

1755:                                             ; preds = %1753
  %1756 = shl i64 %.lcssa46, 32
  %1757 = ashr exact i64 %1756, 32
  br label %1763

1758:                                             ; preds = %1763
  %1759 = load ptr, ptr %1684, align 8, !tbaa !7
  br label %1760

1760:                                             ; preds = %1758, %1753
  %1761 = phi ptr [ %1759, %1758 ], [ %1685, %1753 ]
  %1762 = icmp eq ptr %1761, null
  br i1 %1762, label %1936, label %1818

1763:                                             ; preds = %1763, %1755
  %1764 = phi i64 [ %1757, %1755 ], [ %1770, %1763 ]
  %1765 = call fastcc ptr @SetNew() #27
  %1766 = load ptr, ptr %1520, align 8, !tbaa !121
  %1767 = getelementptr inbounds ptr, ptr %1766, i64 %1764
  %1768 = load ptr, ptr %1767, align 8, !tbaa !7
  %1769 = getelementptr inbounds %struct.symbol, ptr %1768, i64 0, i32 7
  store ptr %1765, ptr %1769, align 8, !tbaa !138
  %1770 = add nsw i64 %1764, 1
  %1771 = load i32, ptr %1495, align 8, !tbaa !117
  %1772 = sext i32 %1771 to i64
  %1773 = icmp slt i64 %1770, %1772
  br i1 %1773, label %1763, label %1758, !llvm.loop !139

1774:                                             ; preds = %1818, %1807
  %1775 = phi ptr [ %1809, %1807 ], [ %1819, %1818 ]
  %1776 = load ptr, ptr %1775, align 8, !tbaa !94
  %1777 = getelementptr inbounds %struct.symbol, ptr %1776, i64 0, i32 8
  %1778 = load i32, ptr %1777, align 8, !tbaa !136
  %1779 = icmp eq i32 %1778, 0
  br i1 %1779, label %1780, label %1807

1780:                                             ; preds = %1774
  %1781 = getelementptr inbounds %struct.rule, ptr %1775, i64 0, i32 4
  %1782 = load i32, ptr %1781, align 8, !tbaa !96
  %1783 = icmp sgt i32 %1782, 0
  br i1 %1783, label %1784, label %1804

1784:                                             ; preds = %1780
  %1785 = getelementptr inbounds %struct.rule, ptr %1775, i64 0, i32 5
  %1786 = load ptr, ptr %1785, align 8, !tbaa !91
  %1787 = zext i32 %1782 to i64
  br label %1788

1788:                                             ; preds = %1799, %1784
  %1789 = phi i64 [ 0, %1784 ], [ %1800, %1799 ]
  %1790 = getelementptr inbounds ptr, ptr %1786, i64 %1789
  %1791 = load ptr, ptr %1790, align 8, !tbaa !7
  %1792 = getelementptr inbounds %struct.symbol, ptr %1791, i64 0, i32 2
  %1793 = load i32, ptr %1792, align 4, !tbaa !102
  %1794 = icmp eq i32 %1793, 0
  br i1 %1794, label %1795, label %1802

1795:                                             ; preds = %1788
  %1796 = getelementptr inbounds %struct.symbol, ptr %1791, i64 0, i32 8
  %1797 = load i32, ptr %1796, align 8, !tbaa !136
  %1798 = icmp eq i32 %1797, 0
  br i1 %1798, label %1802, label %1799

1799:                                             ; preds = %1795
  %1800 = add nuw nsw i64 %1789, 1
  %1801 = icmp eq i64 %1800, %1787
  br i1 %1801, label %1811, label %1788, !llvm.loop !140

1802:                                             ; preds = %1795, %1788
  %.lcssa41 = phi i64 [ %1789, %1795 ], [ %1789, %1788 ]
  %1803 = trunc i64 %.lcssa41 to i32
  br label %1804

1804:                                             ; preds = %1802, %1780
  %1805 = phi i32 [ 0, %1780 ], [ %1803, %1802 ]
  %1806 = icmp eq i32 %1805, %1782
  br i1 %1806, label %1811, label %1807

1807:                                             ; preds = %1804, %1774
  %1808 = getelementptr inbounds %struct.rule, ptr %1775, i64 0, i32 13
  %1809 = load ptr, ptr %1808, align 8, !tbaa !7
  %1810 = icmp eq ptr %1809, null
  br i1 %1810, label %1821, label %1774, !llvm.loop !141

1811:                                             ; preds = %1804, %1799
  %.lcssa44 = phi ptr [ %1775, %1804 ], [ %1775, %1799 ]
  %.lcssa42 = phi ptr [ %1776, %1804 ], [ %1776, %1799 ]
  %1812 = getelementptr inbounds %struct.symbol, ptr %.lcssa42, i64 0, i32 8
  store i32 1, ptr %1812, align 8, !tbaa !136
  %1813 = getelementptr inbounds %struct.rule, ptr %.lcssa44, i64 0, i32 13
  %1814 = load ptr, ptr %1813, align 8, !tbaa !7
  %1815 = icmp ne ptr %1814, null
  %1816 = select i1 %1815, ptr %1814, ptr %1761
  %1817 = zext i1 %1815 to i32
  br label %1823

1818:                                             ; preds = %1823, %1760
  %1819 = phi ptr [ %1824, %1823 ], [ %1761, %1760 ]
  %1820 = phi i32 [ %1825, %1823 ], [ 0, %1760 ]
  br label %1774

1821:                                             ; preds = %1807
  %1822 = icmp eq i32 %1820, 0
  br i1 %1822, label %1826, label %1823

1823:                                             ; preds = %1821, %1811
  %1824 = phi ptr [ %1816, %1811 ], [ %1761, %1821 ]
  %1825 = phi i32 [ %1817, %1811 ], [ 0, %1821 ]
  br label %1818, !llvm.loop !141

1826:                                             ; preds = %1933, %1821
  %1827 = phi ptr [ %1934, %1933 ], [ %1761, %1821 ]
  %1828 = phi i32 [ %1935, %1933 ], [ 0, %1821 ]
  %1829 = load ptr, ptr %1827, align 8, !tbaa !94
  %1830 = getelementptr inbounds %struct.rule, ptr %1827, i64 0, i32 4
  %1831 = load i32, ptr %1830, align 8, !tbaa !96
  %1832 = icmp sgt i32 %1831, 0
  br i1 %1832, label %1833, label %1923

1833:                                             ; preds = %1826
  %1834 = getelementptr inbounds %struct.rule, ptr %1827, i64 0, i32 5
  %1835 = getelementptr inbounds %struct.symbol, ptr %1829, i64 0, i32 7
  %1836 = getelementptr inbounds %struct.symbol, ptr %1829, i64 0, i32 8
  br label %1837

1837:                                             ; preds = %1917, %1833
  %1838 = phi i32 [ %1831, %1833 ], [ %1918, %1917 ]
  %1839 = phi i64 [ 0, %1833 ], [ %1920, %1917 ]
  %1840 = phi i32 [ %1828, %1833 ], [ %1919, %1917 ]
  %1841 = load ptr, ptr %1834, align 8, !tbaa !91
  %1842 = getelementptr inbounds ptr, ptr %1841, i64 %1839
  %1843 = load ptr, ptr %1842, align 8, !tbaa !7
  %1844 = getelementptr inbounds %struct.symbol, ptr %1843, i64 0, i32 2
  %1845 = load i32, ptr %1844, align 4, !tbaa !102
  switch i32 %1845, label %1881 [
    i32 0, label %1852
    i32 2, label %1846
  ]

1846:                                             ; preds = %1837
  %.lcssa40 = phi i32 [ %1840, %1837 ]
  %.lcssa38 = phi ptr [ %1843, %1837 ]
  %1847 = getelementptr inbounds %struct.symbol, ptr %.lcssa38, i64 0, i32 14
  %1848 = load i32, ptr %1847, align 4, !tbaa !103
  %1849 = icmp sgt i32 %1848, 0
  br i1 %1849, label %1850, label %1923

1850:                                             ; preds = %1846
  %1851 = getelementptr inbounds %struct.symbol, ptr %.lcssa38, i64 0, i32 15
  br label %1862

1852:                                             ; preds = %1837
  %.lcssa39 = phi i32 [ %1840, %1837 ]
  %.lcssa37 = phi ptr [ %1843, %1837 ]
  %1853 = load ptr, ptr %1835, align 8, !tbaa !138
  %1854 = getelementptr inbounds %struct.symbol, ptr %.lcssa37, i64 0, i32 1
  %1855 = load i32, ptr %1854, align 8, !tbaa !122
  %1856 = sext i32 %1855 to i64
  %1857 = getelementptr inbounds i8, ptr %1853, i64 %1856
  %1858 = load i8, ptr %1857, align 1, !tbaa !17
  store i8 1, ptr %1857, align 1, !tbaa !17
  %1859 = icmp eq i8 %1858, 0
  %1860 = zext i1 %1859 to i32
  %1861 = add nsw i32 %.lcssa39, %1860
  br label %1923

1862:                                             ; preds = %1862, %1850
  %1863 = phi i64 [ 0, %1850 ], [ %1877, %1862 ]
  %1864 = phi i32 [ %.lcssa40, %1850 ], [ %1876, %1862 ]
  %1865 = load ptr, ptr %1835, align 8, !tbaa !138
  %1866 = load ptr, ptr %1851, align 8, !tbaa !104
  %1867 = getelementptr inbounds ptr, ptr %1866, i64 %1863
  %1868 = load ptr, ptr %1867, align 8, !tbaa !7
  %1869 = getelementptr inbounds %struct.symbol, ptr %1868, i64 0, i32 1
  %1870 = load i32, ptr %1869, align 8, !tbaa !122
  %1871 = sext i32 %1870 to i64
  %1872 = getelementptr inbounds i8, ptr %1865, i64 %1871
  %1873 = load i8, ptr %1872, align 1, !tbaa !17
  store i8 1, ptr %1872, align 1, !tbaa !17
  %1874 = icmp eq i8 %1873, 0
  %1875 = zext i1 %1874 to i32
  %1876 = add nsw i32 %1864, %1875
  %1877 = add nuw nsw i64 %1863, 1
  %1878 = load i32, ptr %1847, align 4, !tbaa !103
  %1879 = sext i32 %1878 to i64
  %1880 = icmp slt i64 %1877, %1879
  br i1 %1880, label %1862, label %1923, !llvm.loop !142

1881:                                             ; preds = %1837
  %1882 = icmp eq ptr %1829, %1843
  br i1 %1882, label %1883, label %1886

1883:                                             ; preds = %1881
  %1884 = load i32, ptr %1836, align 8, !tbaa !136
  %1885 = icmp eq i32 %1884, 0
  br i1 %1885, label %1923, label %1917

1886:                                             ; preds = %1881
  %1887 = load ptr, ptr %1835, align 8, !tbaa !138
  %1888 = getelementptr inbounds %struct.symbol, ptr %1843, i64 0, i32 7
  %1889 = load ptr, ptr %1888, align 8, !tbaa !138
  %1890 = load i32, ptr @size, align 4, !tbaa !11
  %1891 = icmp sgt i32 %1890, 0
  br i1 %1891, label %1892, label %1909

1892:                                             ; preds = %1886
  %1893 = zext i32 %1890 to i64
  br label %1894

1894:                                             ; preds = %1905, %1892
  %1895 = phi i64 [ 0, %1892 ], [ %1907, %1905 ]
  %1896 = phi i32 [ 0, %1892 ], [ %1906, %1905 ]
  %1897 = getelementptr inbounds i8, ptr %1889, i64 %1895
  %1898 = load i8, ptr %1897, align 1, !tbaa !17
  %1899 = icmp eq i8 %1898, 0
  br i1 %1899, label %1905, label %1900

1900:                                             ; preds = %1894
  %1901 = getelementptr inbounds i8, ptr %1887, i64 %1895
  %1902 = load i8, ptr %1901, align 1, !tbaa !17
  %1903 = icmp eq i8 %1902, 0
  br i1 %1903, label %1904, label %1905

1904:                                             ; preds = %1900
  store i8 1, ptr %1901, align 1, !tbaa !17
  br label %1905

1905:                                             ; preds = %1904, %1900, %1894
  %1906 = phi i32 [ %1896, %1894 ], [ 1, %1904 ], [ %1896, %1900 ]
  %1907 = add nuw nsw i64 %1895, 1
  %1908 = icmp eq i64 %1907, %1893
  br i1 %1908, label %1909, label %1894, !llvm.loop !143

1909:                                             ; preds = %1905, %1886
  %1910 = phi i32 [ 0, %1886 ], [ %1906, %1905 ]
  %1911 = add nsw i32 %1910, %1840
  %1912 = getelementptr inbounds %struct.symbol, ptr %1843, i64 0, i32 8
  %1913 = load i32, ptr %1912, align 8, !tbaa !136
  %1914 = icmp eq i32 %1913, 0
  br i1 %1914, label %1923, label %1915

1915:                                             ; preds = %1909
  %1916 = load i32, ptr %1830, align 8, !tbaa !96
  br label %1917

1917:                                             ; preds = %1915, %1883
  %1918 = phi i32 [ %1838, %1883 ], [ %1916, %1915 ]
  %1919 = phi i32 [ %1840, %1883 ], [ %1911, %1915 ]
  %1920 = add nuw nsw i64 %1839, 1
  %1921 = sext i32 %1918 to i64
  %1922 = icmp slt i64 %1920, %1921
  br i1 %1922, label %1837, label %1923, !llvm.loop !144

1923:                                             ; preds = %1917, %1909, %1883, %1862, %1852, %1846, %1826
  %1924 = phi i32 [ %1861, %1852 ], [ %.lcssa40, %1846 ], [ %1828, %1826 ], [ %1876, %1862 ], [ %1911, %1909 ], [ %1840, %1883 ], [ %1919, %1917 ]
  %1925 = getelementptr inbounds %struct.rule, ptr %1827, i64 0, i32 13
  %1926 = load ptr, ptr %1925, align 8, !tbaa !7
  %1927 = icmp eq ptr %1926, null
  br i1 %1927, label %1928, label %1933

1928:                                             ; preds = %1923
  %1929 = icmp eq i32 %1924, 0
  %1930 = load ptr, ptr %1684, align 8
  %1931 = icmp eq ptr %1930, null
  %1932 = select i1 %1929, i1 true, i1 %1931
  br i1 %1932, label %1936, label %1933

1933:                                             ; preds = %1928, %1923
  %1934 = phi ptr [ %1926, %1923 ], [ %1930, %1928 ]
  %1935 = phi i32 [ %1924, %1923 ], [ 0, %1928 ]
  br label %1826, !llvm.loop !145

1936:                                             ; preds = %1928, %1760
  %1937 = getelementptr inbounds %struct.lemon, ptr %11, i64 0, i32 2
  store i32 0, ptr %1937, align 8, !tbaa !146
  store ptr null, ptr @current, align 8, !tbaa !7
  store ptr @current, ptr @currentend, align 8, !tbaa !7
  store ptr null, ptr @basis, align 8, !tbaa !7
  store ptr @basis, ptr @basisend, align 8, !tbaa !7
  %1938 = load ptr, ptr @x4a, align 8, !tbaa !7
  %1939 = icmp eq ptr %1938, null
  br i1 %1939, label %1940, label %1958

1940:                                             ; preds = %1936
  %1941 = call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #33
  store ptr %1941, ptr @x4a, align 8, !tbaa !7
  %1942 = icmp eq ptr %1941, null
  br i1 %1942, label %1958, label %1943

1943:                                             ; preds = %1940
  store i32 64, ptr %1941, align 8, !tbaa !147
  %1944 = getelementptr inbounds %struct.s_x4, ptr %1941, i64 0, i32 1
  store i32 0, ptr %1944, align 4, !tbaa !149
  %1945 = call noalias dereferenceable_or_null(2048) ptr @malloc(i64 noundef 2048) #33
  %1946 = getelementptr inbounds %struct.s_x4, ptr %1941, i64 0, i32 2
  store ptr %1945, ptr %1946, align 8, !tbaa !150
  %1947 = icmp eq ptr %1945, null
  br i1 %1947, label %1948, label %1949

1948:                                             ; preds = %1943
  call void @free(ptr noundef nonnull %1941) #26
  store ptr null, ptr @x4a, align 8, !tbaa !7
  br label %1958

1949:                                             ; preds = %1943
  %1950 = getelementptr inbounds %struct.s_x4node, ptr %1945, i64 64
  %1951 = getelementptr inbounds %struct.s_x4, ptr %1941, i64 0, i32 3
  store ptr %1950, ptr %1951, align 8, !tbaa !151
  br label %1952

1952:                                             ; preds = %1952, %1949
  %1953 = phi i64 [ 0, %1949 ], [ %1956, %1952 ]
  %1954 = load ptr, ptr %1951, align 8, !tbaa !151
  %1955 = getelementptr inbounds ptr, ptr %1954, i64 %1953
  store ptr null, ptr %1955, align 8, !tbaa !7
  %1956 = add nuw nsw i64 %1953, 1
  %1957 = icmp eq i64 %1956, 64
  br i1 %1957, label %1958, label %1952, !llvm.loop !152

1958:                                             ; preds = %1952, %1948, %1940, %1936
  %1959 = getelementptr inbounds %struct.lemon, ptr %11, i64 0, i32 14
  %1960 = load ptr, ptr %1959, align 8, !tbaa !153
  %1961 = icmp eq ptr %1960, null
  br i1 %1961, label %1975, label %1962

1962:                                             ; preds = %1958
  %1963 = call fastcc ptr @Symbol_find(ptr noundef nonnull %1960) #27
  %1964 = icmp eq ptr %1963, null
  br i1 %1964, label %1965, label %1972

1965:                                             ; preds = %1962
  %1966 = load ptr, ptr %330, align 8, !tbaa !49
  %1967 = load ptr, ptr %1684, align 8, !tbaa !116
  %1968 = load ptr, ptr %1967, align 8, !tbaa !94
  %1969 = load ptr, ptr %1968, align 8, !tbaa !89
  call void (ptr, i32, ptr, ...) @ErrorMsg(ptr noundef %1966, i32 noundef 0, ptr noundef nonnull @.str.2, ptr noundef nonnull %1960, ptr noundef %1969) #27
  %1970 = load i32, ptr %232, align 8, !tbaa !57
  %1971 = add nsw i32 %1970, 1
  store i32 %1971, ptr %232, align 8, !tbaa !57
  br label %1975

1972:                                             ; preds = %1962
  %1973 = load ptr, ptr %1684, align 8, !tbaa !7
  %1974 = icmp eq ptr %1973, null
  br i1 %1974, label %2010, label %1978

1975:                                             ; preds = %1965, %1958
  %1976 = load ptr, ptr %1684, align 8, !tbaa !7
  %1977 = load ptr, ptr %1976, align 8, !tbaa !94
  br label %1978

1978:                                             ; preds = %1975, %1972
  %1979 = phi ptr [ %1963, %1972 ], [ %1977, %1975 ]
  %1980 = phi ptr [ %1973, %1972 ], [ %1976, %1975 ]
  br label %1981

1981:                                             ; preds = %2006, %1978
  %1982 = phi ptr [ %1980, %1978 ], [ %2008, %2006 ]
  %1983 = getelementptr inbounds %struct.rule, ptr %1982, i64 0, i32 4
  %1984 = load i32, ptr %1983, align 8, !tbaa !96
  %1985 = icmp sgt i32 %1984, 0
  br i1 %1985, label %1986, label %2006

1986:                                             ; preds = %1981
  %1987 = getelementptr inbounds %struct.rule, ptr %1982, i64 0, i32 5
  br label %1988

1988:                                             ; preds = %2001, %1986
  %1989 = phi i32 [ %1984, %1986 ], [ %2002, %2001 ]
  %1990 = phi i64 [ 0, %1986 ], [ %2003, %2001 ]
  %1991 = load ptr, ptr %1987, align 8, !tbaa !91
  %1992 = getelementptr inbounds ptr, ptr %1991, i64 %1990
  %1993 = load ptr, ptr %1992, align 8, !tbaa !7
  %1994 = icmp eq ptr %1993, %1979
  br i1 %1994, label %1995, label %2001

1995:                                             ; preds = %1988
  %1996 = load ptr, ptr %330, align 8, !tbaa !49
  %1997 = load ptr, ptr %1979, align 8, !tbaa !89
  call void (ptr, i32, ptr, ...) @ErrorMsg(ptr noundef %1996, i32 noundef 0, ptr noundef nonnull @.str.3, ptr noundef %1997) #27
  %1998 = load i32, ptr %232, align 8, !tbaa !57
  %1999 = add nsw i32 %1998, 1
  store i32 %1999, ptr %232, align 8, !tbaa !57
  %2000 = load i32, ptr %1983, align 8, !tbaa !96
  br label %2001

2001:                                             ; preds = %1995, %1988
  %2002 = phi i32 [ %1989, %1988 ], [ %2000, %1995 ]
  %2003 = add nuw nsw i64 %1990, 1
  %2004 = sext i32 %2002 to i64
  %2005 = icmp slt i64 %2003, %2004
  br i1 %2005, label %1988, label %2006, !llvm.loop !154

2006:                                             ; preds = %2001, %1981
  %2007 = getelementptr inbounds %struct.rule, ptr %1982, i64 0, i32 13
  %2008 = load ptr, ptr %2007, align 8, !tbaa !7
  %2009 = icmp eq ptr %2008, null
  br i1 %2009, label %2010, label %1981, !llvm.loop !155

2010:                                             ; preds = %2006, %1972
  %2011 = phi ptr [ %1963, %1972 ], [ %1979, %2006 ]
  %2012 = getelementptr inbounds %struct.symbol, ptr %2011, i64 0, i32 3
  %2013 = load ptr, ptr %2012, align 8, !tbaa !7
  %2014 = icmp eq ptr %2013, null
  br i1 %2014, label %2024, label %2015

2015:                                             ; preds = %2015, %2010
  %2016 = phi ptr [ %2022, %2015 ], [ %2013, %2010 ]
  %2017 = getelementptr inbounds %struct.rule, ptr %2016, i64 0, i32 2
  store i32 1, ptr %2017, align 8, !tbaa !156
  %2018 = call fastcc ptr @Configlist_addbasis(ptr noundef nonnull %2016, i32 noundef 0) #27
  %2019 = getelementptr inbounds %struct.config, ptr %2018, i64 0, i32 2
  %2020 = load ptr, ptr %2019, align 8, !tbaa !157
  store i8 1, ptr %2020, align 1, !tbaa !17
  %2021 = getelementptr inbounds %struct.rule, ptr %2016, i64 0, i32 12
  %2022 = load ptr, ptr %2021, align 8, !tbaa !7
  %2023 = icmp eq ptr %2022, null
  br i1 %2023, label %2024, label %2015, !llvm.loop !159

2024:                                             ; preds = %2015, %2010
  %2025 = call fastcc ptr @getstate(ptr noundef nonnull %11) #27
  %2026 = load ptr, ptr @x3a, align 8, !tbaa !7
  %2027 = icmp eq ptr %2026, null
  br i1 %2027, label %2048, label %2028

2028:                                             ; preds = %2024
  %2029 = getelementptr inbounds %struct.s_x4, ptr %2026, i64 0, i32 1
  %2030 = load i32, ptr %2029, align 4, !tbaa !42
  %2031 = sext i32 %2030 to i64
  %2032 = shl nsw i64 %2031, 3
  %2033 = call noalias ptr @malloc(i64 noundef %2032) #33
  %2034 = icmp eq ptr %2033, null
  br i1 %2034, label %2048, label %2035

2035:                                             ; preds = %2028
  %2036 = icmp sgt i32 %2030, 0
  br i1 %2036, label %2037, label %2048

2037:                                             ; preds = %2035
  %2038 = getelementptr inbounds %struct.s_x4, ptr %2026, i64 0, i32 2
  %2039 = load ptr, ptr %2038, align 8, !tbaa !43
  %2040 = zext i32 %2030 to i64
  br label %2041

2041:                                             ; preds = %2041, %2037
  %2042 = phi i64 [ 0, %2037 ], [ %2046, %2041 ]
  %2043 = getelementptr inbounds %struct.s_x3node, ptr %2039, i64 %2042
  %2044 = load ptr, ptr %2043, align 8, !tbaa !160
  %2045 = getelementptr inbounds ptr, ptr %2033, i64 %2042
  store ptr %2044, ptr %2045, align 8, !tbaa !7
  %2046 = add nuw nsw i64 %2042, 1
  %2047 = icmp eq i64 %2046, %2040
  br i1 %2047, label %2048, label %2041, !llvm.loop !162

2048:                                             ; preds = %2041, %2035, %2028, %2024
  %2049 = phi ptr [ null, %2024 ], [ null, %2028 ], [ %2033, %2035 ], [ %2033, %2041 ]
  store ptr %2049, ptr %11, align 8, !tbaa !163
  %2050 = load i32, ptr %1937, align 8, !tbaa !146
  %2051 = icmp sgt i32 %2050, 0
  br i1 %2051, label %2052, label %2126

2052:                                             ; preds = %2048
  %2053 = zext i32 %2050 to i64
  br label %2054

2054:                                             ; preds = %2067, %2052
  %2055 = phi i64 [ 0, %2052 ], [ %2068, %2067 ]
  %2056 = getelementptr inbounds ptr, ptr %2049, i64 %2055
  %2057 = load ptr, ptr %2056, align 8, !tbaa !7
  %2058 = getelementptr inbounds %struct.state, ptr %2057, i64 0, i32 1
  %2059 = load ptr, ptr %2058, align 8, !tbaa !7
  %2060 = icmp eq ptr %2059, null
  br i1 %2060, label %2067, label %2061

2061:                                             ; preds = %2061, %2054
  %2062 = phi ptr [ %2065, %2061 ], [ %2059, %2054 ]
  %2063 = getelementptr inbounds %struct.config, ptr %2062, i64 0, i32 5
  store ptr %2057, ptr %2063, align 8, !tbaa !164
  %2064 = getelementptr inbounds %struct.config, ptr %2062, i64 0, i32 7
  %2065 = load ptr, ptr %2064, align 8, !tbaa !7
  %2066 = icmp eq ptr %2065, null
  br i1 %2066, label %2067, label %2061, !llvm.loop !165

2067:                                             ; preds = %2061, %2054
  %2068 = add nuw nsw i64 %2055, 1
  %2069 = icmp eq i64 %2068, %2053
  br i1 %2069, label %2070, label %2054, !llvm.loop !166

2070:                                             ; preds = %2100, %2067
  %2071 = phi i32 [ %2101, %2100 ], [ %2050, %2067 ]
  %2072 = phi i64 [ %2102, %2100 ], [ 0, %2067 ]
  %2073 = load ptr, ptr %11, align 8, !tbaa !163
  %2074 = getelementptr inbounds ptr, ptr %2073, i64 %2072
  %2075 = load ptr, ptr %2074, align 8, !tbaa !7
  %2076 = getelementptr inbounds %struct.state, ptr %2075, i64 0, i32 1
  %2077 = load ptr, ptr %2076, align 8, !tbaa !7
  %2078 = icmp eq ptr %2077, null
  br i1 %2078, label %2100, label %2079

2079:                                             ; preds = %2094, %2070
  %2080 = phi ptr [ %2096, %2094 ], [ %2077, %2070 ]
  %2081 = getelementptr inbounds %struct.config, ptr %2080, i64 0, i32 4
  %2082 = load ptr, ptr %2081, align 8, !tbaa !7
  %2083 = icmp eq ptr %2082, null
  br i1 %2083, label %2094, label %2084

2084:                                             ; preds = %2084, %2079
  %2085 = phi ptr [ %2092, %2084 ], [ %2082, %2079 ]
  %2086 = load ptr, ptr %2085, align 8, !tbaa !167
  %2087 = getelementptr inbounds %struct.config, ptr %2086, i64 0, i32 3
  %2088 = call fastcc ptr @Plink_new() #27
  %2089 = load ptr, ptr %2087, align 8, !tbaa !7
  %2090 = getelementptr inbounds %struct.plink, ptr %2088, i64 0, i32 1
  store ptr %2089, ptr %2090, align 8, !tbaa !169
  store ptr %2088, ptr %2087, align 8, !tbaa !7
  store ptr %2080, ptr %2088, align 8, !tbaa !167
  %2091 = getelementptr inbounds %struct.plink, ptr %2085, i64 0, i32 1
  %2092 = load ptr, ptr %2091, align 8, !tbaa !7
  %2093 = icmp eq ptr %2092, null
  br i1 %2093, label %2094, label %2084, !llvm.loop !170

2094:                                             ; preds = %2084, %2079
  %2095 = getelementptr inbounds %struct.config, ptr %2080, i64 0, i32 7
  %2096 = load ptr, ptr %2095, align 8, !tbaa !7
  %2097 = icmp eq ptr %2096, null
  br i1 %2097, label %2098, label %2079, !llvm.loop !171

2098:                                             ; preds = %2094
  %2099 = load i32, ptr %1937, align 8, !tbaa !146
  br label %2100

2100:                                             ; preds = %2098, %2070
  %2101 = phi i32 [ %2099, %2098 ], [ %2071, %2070 ]
  %2102 = add nuw nsw i64 %2072, 1
  %2103 = sext i32 %2101 to i64
  %2104 = icmp slt i64 %2102, %2103
  br i1 %2104, label %2070, label %2105, !llvm.loop !172

2105:                                             ; preds = %2100
  %.lcssa36 = phi i32 [ %2101, %2100 ]
  %2106 = icmp sgt i32 %.lcssa36, 0
  br i1 %2106, label %2107, label %2126

2107:                                             ; preds = %2105
  %2108 = load ptr, ptr %11, align 8, !tbaa !163
  %2109 = zext i32 %.lcssa36 to i64
  br label %2110

2110:                                             ; preds = %2123, %2107
  %2111 = phi i64 [ 0, %2107 ], [ %2124, %2123 ]
  %2112 = getelementptr inbounds ptr, ptr %2108, i64 %2111
  %2113 = load ptr, ptr %2112, align 8, !tbaa !7
  %2114 = getelementptr inbounds %struct.state, ptr %2113, i64 0, i32 1
  %2115 = load ptr, ptr %2114, align 8, !tbaa !7
  %2116 = icmp eq ptr %2115, null
  br i1 %2116, label %2123, label %2117

2117:                                             ; preds = %2117, %2110
  %2118 = phi ptr [ %2121, %2117 ], [ %2115, %2110 ]
  %2119 = getelementptr inbounds %struct.config, ptr %2118, i64 0, i32 6
  store i32 1, ptr %2119, align 8, !tbaa !173
  %2120 = getelementptr inbounds %struct.config, ptr %2118, i64 0, i32 7
  %2121 = load ptr, ptr %2120, align 8, !tbaa !7
  %2122 = icmp eq ptr %2121, null
  br i1 %2122, label %2123, label %2117, !llvm.loop !174

2123:                                             ; preds = %2117, %2110
  %2124 = add nuw nsw i64 %2111, 1
  %2125 = icmp eq i64 %2124, %2109
  br i1 %2125, label %2126, label %2110, !llvm.loop !175

2126:                                             ; preds = %2123, %2105, %2048
  %2127 = phi i32 [ %2050, %2048 ], [ %.lcssa36, %2105 ], [ %.lcssa36, %2123 ]
  br label %2128

2128:                                             ; preds = %2207, %2126
  %2129 = phi i32 [ %.lcssa35, %2207 ], [ %2127, %2126 ]
  %2130 = icmp sgt i32 %2129, 0
  br i1 %2130, label %2131, label %2264

2131:                                             ; preds = %2201, %2128
  %2132 = phi i32 [ %2202, %2201 ], [ %2129, %2128 ]
  %2133 = phi i64 [ %2204, %2201 ], [ 0, %2128 ]
  %2134 = phi i32 [ %2203, %2201 ], [ 0, %2128 ]
  %2135 = load ptr, ptr %11, align 8, !tbaa !163
  %2136 = getelementptr inbounds ptr, ptr %2135, i64 %2133
  %2137 = load ptr, ptr %2136, align 8, !tbaa !7
  %2138 = getelementptr inbounds %struct.state, ptr %2137, i64 0, i32 1
  %2139 = load ptr, ptr %2138, align 8, !tbaa !7
  %2140 = icmp eq ptr %2139, null
  br i1 %2140, label %2201, label %2141

2141:                                             ; preds = %2194, %2131
  %2142 = phi ptr [ %2197, %2194 ], [ %2139, %2131 ]
  %2143 = phi i32 [ %2195, %2194 ], [ %2134, %2131 ]
  %2144 = getelementptr inbounds %struct.config, ptr %2142, i64 0, i32 6
  %2145 = load i32, ptr %2144, align 8, !tbaa !173
  %2146 = icmp eq i32 %2145, 0
  br i1 %2146, label %2194, label %2147

2147:                                             ; preds = %2141
  %2148 = getelementptr inbounds %struct.config, ptr %2142, i64 0, i32 3
  %2149 = load ptr, ptr %2148, align 8, !tbaa !7
  %2150 = icmp eq ptr %2149, null
  br i1 %2150, label %2192, label %2151

2151:                                             ; preds = %2147
  %2152 = getelementptr inbounds %struct.config, ptr %2142, i64 0, i32 2
  br label %2153

2153:                                             ; preds = %2187, %2151
  %2154 = phi ptr [ %2149, %2151 ], [ %2190, %2187 ]
  %2155 = phi i32 [ %2143, %2151 ], [ %2188, %2187 ]
  %2156 = load ptr, ptr %2154, align 8, !tbaa !167
  %2157 = getelementptr inbounds %struct.config, ptr %2156, i64 0, i32 2
  %2158 = load ptr, ptr %2157, align 8, !tbaa !157
  %2159 = load ptr, ptr %2152, align 8, !tbaa !157
  %2160 = load i32, ptr @size, align 4, !tbaa !11
  %2161 = icmp sgt i32 %2160, 0
  br i1 %2161, label %2162, label %2187

2162:                                             ; preds = %2153
  %2163 = zext i32 %2160 to i64
  br label %2164

2164:                                             ; preds = %2179, %2162
  %2165 = phi i64 [ %2181, %2179 ], [ 0, %2162 ]
  %2166 = phi i1 [ false, %2179 ], [ true, %2162 ]
  br label %2167

2167:                                             ; preds = %2176, %2164
  %2168 = phi i64 [ %2177, %2176 ], [ %2165, %2164 ]
  %2169 = getelementptr inbounds i8, ptr %2159, i64 %2168
  %2170 = load i8, ptr %2169, align 1, !tbaa !17
  %2171 = icmp eq i8 %2170, 0
  br i1 %2171, label %2176, label %2172

2172:                                             ; preds = %2167
  %2173 = getelementptr inbounds i8, ptr %2158, i64 %2168
  %2174 = load i8, ptr %2173, align 1, !tbaa !17
  %2175 = icmp eq i8 %2174, 0
  br i1 %2175, label %2179, label %2176

2176:                                             ; preds = %2172, %2167
  %2177 = add nuw nsw i64 %2168, 1
  %2178 = icmp eq i64 %2177, %2163
  br i1 %2178, label %2183, label %2167, !llvm.loop !143

2179:                                             ; preds = %2172
  %.lcssa29 = phi i64 [ %2168, %2172 ]
  %2180 = getelementptr inbounds i8, ptr %2158, i64 %.lcssa29
  store i8 1, ptr %2180, align 1, !tbaa !17
  %2181 = add nuw nsw i64 %.lcssa29, 1
  %2182 = icmp eq i64 %2181, %2163
  br i1 %2182, label %2184, label %2164, !llvm.loop !143

2183:                                             ; preds = %2176
  %.lcssa32 = phi i1 [ %2166, %2176 ]
  br i1 %.lcssa32, label %2187, label %2184

2184:                                             ; preds = %2183, %2179
  %2185 = load ptr, ptr %2154, align 8, !tbaa !167
  %2186 = getelementptr inbounds %struct.config, ptr %2185, i64 0, i32 6
  store i32 1, ptr %2186, align 8, !tbaa !173
  br label %2187

2187:                                             ; preds = %2184, %2183, %2153
  %2188 = phi i32 [ 1, %2184 ], [ %2155, %2183 ], [ %2155, %2153 ]
  %2189 = getelementptr inbounds %struct.plink, ptr %2154, i64 0, i32 1
  %2190 = load ptr, ptr %2189, align 8, !tbaa !7
  %2191 = icmp eq ptr %2190, null
  br i1 %2191, label %2192, label %2153, !llvm.loop !176

2192:                                             ; preds = %2187, %2147
  %2193 = phi i32 [ %2143, %2147 ], [ %2188, %2187 ]
  store i32 0, ptr %2144, align 8, !tbaa !173
  br label %2194

2194:                                             ; preds = %2192, %2141
  %2195 = phi i32 [ %2143, %2141 ], [ %2193, %2192 ]
  %2196 = getelementptr inbounds %struct.config, ptr %2142, i64 0, i32 7
  %2197 = load ptr, ptr %2196, align 8, !tbaa !7
  %2198 = icmp eq ptr %2197, null
  br i1 %2198, label %2199, label %2141, !llvm.loop !177

2199:                                             ; preds = %2194
  %.lcssa33 = phi i32 [ %2195, %2194 ]
  %2200 = load i32, ptr %1937, align 8, !tbaa !146
  br label %2201

2201:                                             ; preds = %2199, %2131
  %2202 = phi i32 [ %2132, %2131 ], [ %2200, %2199 ]
  %2203 = phi i32 [ %2134, %2131 ], [ %.lcssa33, %2199 ]
  %2204 = add nuw nsw i64 %2133, 1
  %2205 = sext i32 %2202 to i64
  %2206 = icmp slt i64 %2204, %2205
  br i1 %2206, label %2131, label %2207, !llvm.loop !178

2207:                                             ; preds = %2201
  %.lcssa35 = phi i32 [ %2202, %2201 ]
  %.lcssa34 = phi i32 [ %2203, %2201 ]
  %2208 = icmp eq i32 %.lcssa34, 0
  br i1 %2208, label %2209, label %2128, !llvm.loop !179

2209:                                             ; preds = %2207
  %.lcssa35.lcssa = phi i32 [ %.lcssa35, %2207 ]
  %2210 = icmp sgt i32 %.lcssa35.lcssa, 0
  br i1 %2210, label %2211, label %2264

2211:                                             ; preds = %2259, %2209
  %2212 = phi i32 [ %2260, %2259 ], [ %.lcssa35.lcssa, %2209 ]
  %2213 = phi i64 [ %2261, %2259 ], [ 0, %2209 ]
  %2214 = load ptr, ptr %11, align 8, !tbaa !163
  %2215 = getelementptr inbounds ptr, ptr %2214, i64 %2213
  %2216 = load ptr, ptr %2215, align 8, !tbaa !7
  %2217 = getelementptr inbounds %struct.state, ptr %2216, i64 0, i32 1
  %2218 = load ptr, ptr %2217, align 8, !tbaa !7
  %2219 = icmp eq ptr %2218, null
  br i1 %2219, label %2259, label %2220

2220:                                             ; preds = %2211
  %2221 = getelementptr inbounds %struct.state, ptr %2216, i64 0, i32 3
  br label %2222

2222:                                             ; preds = %2253, %2220
  %2223 = phi ptr [ %2218, %2220 ], [ %2255, %2253 ]
  %2224 = load ptr, ptr %2223, align 8, !tbaa !180
  %2225 = getelementptr inbounds %struct.rule, ptr %2224, i64 0, i32 4
  %2226 = load i32, ptr %2225, align 8, !tbaa !96
  %2227 = getelementptr inbounds %struct.config, ptr %2223, i64 0, i32 1
  %2228 = load i32, ptr %2227, align 8, !tbaa !181
  %2229 = icmp eq i32 %2226, %2228
  br i1 %2229, label %2230, label %2253

2230:                                             ; preds = %2222
  %2231 = load i32, ptr %1567, align 4, !tbaa !126
  %2232 = icmp sgt i32 %2231, 0
  br i1 %2232, label %2233, label %2253

2233:                                             ; preds = %2230
  %2234 = getelementptr inbounds %struct.config, ptr %2223, i64 0, i32 2
  br label %2235

2235:                                             ; preds = %2248, %2233
  %2236 = phi i32 [ %2231, %2233 ], [ %2249, %2248 ]
  %2237 = phi i64 [ 0, %2233 ], [ %2250, %2248 ]
  %2238 = load ptr, ptr %2234, align 8, !tbaa !157
  %2239 = getelementptr inbounds i8, ptr %2238, i64 %2237
  %2240 = load i8, ptr %2239, align 1, !tbaa !17
  %2241 = icmp eq i8 %2240, 0
  br i1 %2241, label %2248, label %2242

2242:                                             ; preds = %2235
  %2243 = load ptr, ptr %1520, align 8, !tbaa !121
  %2244 = getelementptr inbounds ptr, ptr %2243, i64 %2237
  %2245 = load ptr, ptr %2244, align 8, !tbaa !7
  %2246 = load ptr, ptr %2223, align 8, !tbaa !180
  call fastcc void @Action_add(ptr noundef nonnull %2221, i32 noundef 2, ptr noundef %2245, ptr noundef %2246) #27
  %2247 = load i32, ptr %1567, align 4, !tbaa !126
  br label %2248

2248:                                             ; preds = %2242, %2235
  %2249 = phi i32 [ %2236, %2235 ], [ %2247, %2242 ]
  %2250 = add nuw nsw i64 %2237, 1
  %2251 = sext i32 %2249 to i64
  %2252 = icmp slt i64 %2250, %2251
  br i1 %2252, label %2235, label %2253, !llvm.loop !182

2253:                                             ; preds = %2248, %2230, %2222
  %2254 = getelementptr inbounds %struct.config, ptr %2223, i64 0, i32 7
  %2255 = load ptr, ptr %2254, align 8, !tbaa !7
  %2256 = icmp eq ptr %2255, null
  br i1 %2256, label %2257, label %2222, !llvm.loop !183

2257:                                             ; preds = %2253
  %2258 = load i32, ptr %1937, align 8, !tbaa !146
  br label %2259

2259:                                             ; preds = %2257, %2211
  %2260 = phi i32 [ %2258, %2257 ], [ %2212, %2211 ]
  %2261 = add nuw nsw i64 %2213, 1
  %2262 = sext i32 %2260 to i64
  %2263 = icmp slt i64 %2261, %2262
  br i1 %2263, label %2211, label %2264, !llvm.loop !184

2264:                                             ; preds = %2259, %2209, %2128
  %2265 = load ptr, ptr %1959, align 8, !tbaa !153
  %2266 = icmp eq ptr %2265, null
  br i1 %2266, label %2270, label %2267

2267:                                             ; preds = %2264
  %2268 = call fastcc ptr @Symbol_find(ptr noundef nonnull %2265) #27
  %2269 = icmp eq ptr %2268, null
  br i1 %2269, label %2270, label %2273

2270:                                             ; preds = %2267, %2264
  %2271 = load ptr, ptr %1684, align 8, !tbaa !116
  %2272 = load ptr, ptr %2271, align 8, !tbaa !94
  br label %2273

2273:                                             ; preds = %2270, %2267
  %2274 = phi ptr [ %2268, %2267 ], [ %2272, %2270 ]
  %2275 = load ptr, ptr %11, align 8, !tbaa !163
  %2276 = load ptr, ptr %2275, align 8, !tbaa !7
  %2277 = getelementptr inbounds %struct.state, ptr %2276, i64 0, i32 3
  call fastcc void @Action_add(ptr noundef nonnull %2277, i32 noundef 1, ptr noundef %2274, ptr noundef null) #27
  %2278 = load i32, ptr %1937, align 8, !tbaa !146
  %2279 = icmp sgt i32 %2278, 0
  br i1 %2279, label %2280, label %2399

2280:                                             ; preds = %2273
  %2281 = getelementptr inbounds %struct.lemon, ptr %11, i64 0, i32 35
  br label %2282

2282:                                             ; preds = %2394, %2280
  %2283 = phi i64 [ 0, %2280 ], [ %2395, %2394 ]
  %2284 = load ptr, ptr %11, align 8, !tbaa !163
  %2285 = getelementptr inbounds ptr, ptr %2284, i64 %2283
  %2286 = load ptr, ptr %2285, align 8, !tbaa !7
  %2287 = getelementptr inbounds %struct.state, ptr %2286, i64 0, i32 3
  %2288 = load ptr, ptr %2287, align 8, !tbaa !185
  %2289 = getelementptr inbounds %struct.action, ptr %2288, i64 0, i32 3
  %2290 = call fastcc ptr @msort(ptr noundef %2288, ptr noundef nonnull %2289, ptr noundef nonnull @actioncmp) #27
  store ptr %2290, ptr %2287, align 8, !tbaa !185
  %2291 = icmp eq ptr %2290, null
  br i1 %2291, label %2394, label %2292

2292:                                             ; preds = %2282
  %2293 = getelementptr inbounds %struct.action, ptr %2290, i64 0, i32 3
  %2294 = load ptr, ptr %2293, align 8, !tbaa !187
  %2295 = icmp eq ptr %2294, null
  br i1 %2295, label %2394, label %2296

2296:                                             ; preds = %2292
  %2297 = load i32, ptr %2281, align 8, !tbaa !189
  br label %2298

2298:                                             ; preds = %2389, %2296
  %2299 = phi i32 [ %2390, %2389 ], [ %2297, %2296 ]
  %2300 = phi ptr [ %2392, %2389 ], [ %2294, %2296 ]
  %2301 = phi ptr [ %2300, %2389 ], [ %2290, %2296 ]
  %2302 = load ptr, ptr %2301, align 8, !tbaa !190
  %2303 = getelementptr inbounds %struct.action, ptr %2301, i64 0, i32 1
  %2304 = getelementptr inbounds %struct.symbol, ptr %2302, i64 0, i32 5
  %2305 = getelementptr inbounds %struct.symbol, ptr %2302, i64 0, i32 6
  %2306 = getelementptr inbounds %struct.action, ptr %2301, i64 0, i32 2
  br label %2307

2307:                                             ; preds = %2383, %2298
  %2308 = phi i32 [ %2299, %2298 ], [ %2385, %2383 ]
  %2309 = phi ptr [ %2300, %2298 ], [ %2387, %2383 ]
  %2310 = load ptr, ptr %2309, align 8, !tbaa !190
  %2311 = icmp eq ptr %2310, %2302
  br i1 %2311, label %2312, label %2389

2312:                                             ; preds = %2307
  %2313 = load i32, ptr %2303, align 8, !tbaa !191
  %2314 = icmp eq i32 %2313, 0
  br i1 %2314, label %2315, label %2346

2315:                                             ; preds = %2312
  %2316 = getelementptr inbounds %struct.action, ptr %2309, i64 0, i32 1
  %2317 = load i32, ptr %2316, align 8, !tbaa !191
  switch i32 %2317, label %2383 [
    i32 0, label %2318
    i32 2, label %2321
  ]

2318:                                             ; preds = %2315
  store i32 4, ptr %2316, align 8, !tbaa !191
  %2319 = load i32, ptr %2303, align 8, !tbaa !191
  %2320 = icmp eq i32 %2319, 0
  br i1 %2320, label %2383, label %2346

2321:                                             ; preds = %2315
  %2322 = getelementptr inbounds %struct.action, ptr %2309, i64 0, i32 2
  %2323 = load ptr, ptr %2322, align 8, !tbaa !17
  %2324 = getelementptr inbounds %struct.rule, ptr %2323, i64 0, i32 9
  %2325 = load ptr, ptr %2324, align 8, !tbaa !88
  %2326 = icmp eq ptr %2325, null
  br i1 %2326, label %2334, label %2327

2327:                                             ; preds = %2321
  %2328 = load i32, ptr %2304, align 8, !tbaa !111
  %2329 = icmp slt i32 %2328, 0
  br i1 %2329, label %2334, label %2330

2330:                                             ; preds = %2327
  %2331 = getelementptr inbounds %struct.symbol, ptr %2325, i64 0, i32 5
  %2332 = load i32, ptr %2331, align 8, !tbaa !111
  %2333 = icmp slt i32 %2332, 0
  br i1 %2333, label %2334, label %2335

2334:                                             ; preds = %2330, %2327, %2321
  store i32 5, ptr %2316, align 8, !tbaa !191
  br label %2383

2335:                                             ; preds = %2330
  %2336 = icmp ugt i32 %2328, %2332
  br i1 %2336, label %2337, label %2338

2337:                                             ; preds = %2335
  store i32 8, ptr %2316, align 8, !tbaa !191
  br label %2383

2338:                                             ; preds = %2335
  %2339 = icmp ult i32 %2328, %2332
  br i1 %2339, label %2340, label %2341

2340:                                             ; preds = %2338
  store i32 7, ptr %2303, align 8, !tbaa !191
  br label %2383

2341:                                             ; preds = %2338
  %2342 = load i32, ptr %2305, align 4, !tbaa !192
  switch i32 %2342, label %2345 [
    i32 1, label %2343
    i32 0, label %2344
  ]

2343:                                             ; preds = %2341
  store i32 8, ptr %2316, align 8, !tbaa !191
  br label %2383

2344:                                             ; preds = %2341
  store i32 7, ptr %2303, align 8, !tbaa !191
  br label %2383

2345:                                             ; preds = %2341
  store i32 5, ptr %2316, align 8, !tbaa !191
  br label %2383

2346:                                             ; preds = %2318, %2312
  %2347 = phi i32 [ 1, %2318 ], [ 0, %2312 ]
  %2348 = phi i32 [ %2319, %2318 ], [ %2313, %2312 ]
  %2349 = icmp eq i32 %2348, 2
  br i1 %2349, label %2350, label %2383

2350:                                             ; preds = %2346
  %2351 = getelementptr inbounds %struct.action, ptr %2309, i64 0, i32 1
  %2352 = load i32, ptr %2351, align 8, !tbaa !191
  %2353 = icmp eq i32 %2352, 2
  br i1 %2353, label %2354, label %2383

2354:                                             ; preds = %2350
  %2355 = load ptr, ptr %2306, align 8, !tbaa !17
  %2356 = getelementptr inbounds %struct.rule, ptr %2355, i64 0, i32 9
  %2357 = load ptr, ptr %2356, align 8, !tbaa !88
  %2358 = getelementptr inbounds %struct.action, ptr %2309, i64 0, i32 2
  %2359 = load ptr, ptr %2358, align 8, !tbaa !17
  %2360 = getelementptr inbounds %struct.rule, ptr %2359, i64 0, i32 9
  %2361 = load ptr, ptr %2360, align 8, !tbaa !88
  %2362 = icmp eq ptr %2357, null
  %2363 = icmp eq ptr %2361, null
  %2364 = select i1 %2362, i1 true, i1 %2363
  br i1 %2364, label %2375, label %2365

2365:                                             ; preds = %2354
  %2366 = getelementptr inbounds %struct.symbol, ptr %2357, i64 0, i32 5
  %2367 = load i32, ptr %2366, align 8, !tbaa !111
  %2368 = icmp slt i32 %2367, 0
  br i1 %2368, label %2375, label %2369

2369:                                             ; preds = %2365
  %2370 = getelementptr inbounds %struct.symbol, ptr %2361, i64 0, i32 5
  %2371 = load i32, ptr %2370, align 8, !tbaa !111
  %2372 = icmp slt i32 %2371, 0
  %2373 = icmp eq i32 %2367, %2371
  %2374 = or i1 %2372, %2373
  br i1 %2374, label %2375, label %2377

2375:                                             ; preds = %2369, %2365, %2354
  store i32 6, ptr %2351, align 8, !tbaa !191
  %2376 = add nuw nsw i32 %2347, 1
  br label %2383

2377:                                             ; preds = %2369
  %2378 = icmp ugt i32 %2367, %2371
  br i1 %2378, label %2379, label %2380

2379:                                             ; preds = %2377
  store i32 8, ptr %2351, align 8, !tbaa !191
  br label %2383

2380:                                             ; preds = %2377
  %2381 = icmp ult i32 %2367, %2371
  br i1 %2381, label %2382, label %2383

2382:                                             ; preds = %2380
  store i32 8, ptr %2303, align 8, !tbaa !191
  br label %2383

2383:                                             ; preds = %2382, %2380, %2379, %2375, %2350, %2346, %2345, %2344, %2343, %2340, %2337, %2334, %2318, %2315
  %2384 = phi i32 [ 1, %2334 ], [ 0, %2337 ], [ 0, %2340 ], [ 0, %2343 ], [ 0, %2344 ], [ 1, %2345 ], [ %2376, %2375 ], [ %2347, %2379 ], [ %2347, %2382 ], [ %2347, %2380 ], [ %2347, %2350 ], [ %2347, %2346 ], [ 1, %2318 ], [ 0, %2315 ]
  %2385 = add nsw i32 %2384, %2308
  store i32 %2385, ptr %2281, align 8, !tbaa !189
  %2386 = getelementptr inbounds %struct.action, ptr %2309, i64 0, i32 3
  %2387 = load ptr, ptr %2386, align 8, !tbaa !187
  %2388 = icmp eq ptr %2387, null
  br i1 %2388, label %2389, label %2307, !llvm.loop !193

2389:                                             ; preds = %2383, %2307
  %2390 = phi i32 [ %2385, %2383 ], [ %2308, %2307 ]
  %2391 = getelementptr inbounds %struct.action, ptr %2300, i64 0, i32 3
  %2392 = load ptr, ptr %2391, align 8, !tbaa !187
  %2393 = icmp eq ptr %2392, null
  br i1 %2393, label %2394, label %2298, !llvm.loop !194

2394:                                             ; preds = %2389, %2292, %2282
  %2395 = add nuw nsw i64 %2283, 1
  %2396 = load i32, ptr %1937, align 8, !tbaa !146
  %2397 = sext i32 %2396 to i64
  %2398 = icmp slt i64 %2395, %2397
  br i1 %2398, label %2282, label %2399, !llvm.loop !195

2399:                                             ; preds = %2394, %2273
  %2400 = phi i32 [ %2278, %2273 ], [ %2396, %2394 ]
  %2401 = load ptr, ptr %1684, align 8, !tbaa !7
  %2402 = icmp eq ptr %2401, null
  br i1 %2402, label %2403, label %2408

2403:                                             ; preds = %2408, %2399
  %2404 = icmp sgt i32 %2400, 0
  br i1 %2404, label %2405, label %2414

2405:                                             ; preds = %2403
  %2406 = load ptr, ptr %11, align 8, !tbaa !163
  %2407 = zext i32 %2400 to i64
  br label %2415

2408:                                             ; preds = %2408, %2399
  %2409 = phi ptr [ %2412, %2408 ], [ %2401, %2399 ]
  %2410 = getelementptr inbounds %struct.rule, ptr %2409, i64 0, i32 11
  store i32 0, ptr %2410, align 4, !tbaa !196
  %2411 = getelementptr inbounds %struct.rule, ptr %2409, i64 0, i32 13
  %2412 = load ptr, ptr %2411, align 8, !tbaa !7
  %2413 = icmp eq ptr %2412, null
  br i1 %2413, label %2403, label %2408, !llvm.loop !197

2414:                                             ; preds = %2435, %2403
  br i1 %2402, label %2455, label %2438

2415:                                             ; preds = %2435, %2405
  %2416 = phi i64 [ 0, %2405 ], [ %2436, %2435 ]
  %2417 = getelementptr inbounds ptr, ptr %2406, i64 %2416
  %2418 = load ptr, ptr %2417, align 8, !tbaa !7
  %2419 = getelementptr inbounds %struct.state, ptr %2418, i64 0, i32 3
  %2420 = load ptr, ptr %2419, align 8, !tbaa !7
  %2421 = icmp eq ptr %2420, null
  br i1 %2421, label %2435, label %2422

2422:                                             ; preds = %2431, %2415
  %2423 = phi ptr [ %2433, %2431 ], [ %2420, %2415 ]
  %2424 = getelementptr inbounds %struct.action, ptr %2423, i64 0, i32 1
  %2425 = load i32, ptr %2424, align 8, !tbaa !191
  %2426 = icmp eq i32 %2425, 2
  br i1 %2426, label %2427, label %2431

2427:                                             ; preds = %2422
  %2428 = getelementptr inbounds %struct.action, ptr %2423, i64 0, i32 2
  %2429 = load ptr, ptr %2428, align 8, !tbaa !17
  %2430 = getelementptr inbounds %struct.rule, ptr %2429, i64 0, i32 11
  store i32 1, ptr %2430, align 4, !tbaa !196
  br label %2431

2431:                                             ; preds = %2427, %2422
  %2432 = getelementptr inbounds %struct.action, ptr %2423, i64 0, i32 3
  %2433 = load ptr, ptr %2432, align 8, !tbaa !7
  %2434 = icmp eq ptr %2433, null
  br i1 %2434, label %2435, label %2422, !llvm.loop !198

2435:                                             ; preds = %2431, %2415
  %2436 = add nuw nsw i64 %2416, 1
  %2437 = icmp eq i64 %2436, %2407
  br i1 %2437, label %2414, label %2415, !llvm.loop !199

2438:                                             ; preds = %2449, %2414
  %2439 = phi ptr [ %2451, %2449 ], [ %2401, %2414 ]
  %2440 = getelementptr inbounds %struct.rule, ptr %2439, i64 0, i32 11
  %2441 = load i32, ptr %2440, align 4, !tbaa !196
  %2442 = icmp eq i32 %2441, 0
  br i1 %2442, label %2443, label %2449

2443:                                             ; preds = %2438
  %2444 = load ptr, ptr %330, align 8, !tbaa !49
  %2445 = getelementptr inbounds %struct.rule, ptr %2439, i64 0, i32 3
  %2446 = load i32, ptr %2445, align 4, !tbaa !90
  call void (ptr, i32, ptr, ...) @ErrorMsg(ptr noundef %2444, i32 noundef %2446, ptr noundef nonnull @.str.4) #27
  %2447 = load i32, ptr %232, align 8, !tbaa !57
  %2448 = add nsw i32 %2447, 1
  store i32 %2448, ptr %232, align 8, !tbaa !57
  br label %2449

2449:                                             ; preds = %2443, %2438
  %2450 = getelementptr inbounds %struct.rule, ptr %2439, i64 0, i32 13
  %2451 = load ptr, ptr %2450, align 8, !tbaa !7
  %2452 = icmp eq ptr %2451, null
  br i1 %2452, label %2453, label %2438, !llvm.loop !200

2453:                                             ; preds = %2449
  %2454 = load i32, ptr %1937, align 8, !tbaa !146
  br label %2455

2455:                                             ; preds = %2453, %2414
  %2456 = phi i32 [ %2454, %2453 ], [ %2400, %2414 ]
  %2457 = load i32, ptr @lemon_main.compress, align 4, !tbaa !11
  %2458 = icmp eq i32 %2457, 0
  br i1 %2458, label %2459, label %2577

2459:                                             ; preds = %2455
  %2460 = icmp sgt i32 %2456, 0
  br i1 %2460, label %2463, label %2461

2461:                                             ; preds = %2459
  %2462 = load ptr, ptr %11, align 8, !tbaa !163
  br label %2624

2463:                                             ; preds = %2459
  %2464 = getelementptr inbounds %struct.lemon, ptr %11, i64 0, i32 9
  br label %2465

2465:                                             ; preds = %2572, %2463
  %2466 = phi i32 [ %2456, %2463 ], [ %2573, %2572 ]
  %2467 = phi i64 [ 0, %2463 ], [ %2574, %2572 ]
  %2468 = load ptr, ptr %11, align 8, !tbaa !163
  %2469 = getelementptr inbounds ptr, ptr %2468, i64 %2467
  %2470 = load ptr, ptr %2469, align 8, !tbaa !7
  %2471 = getelementptr inbounds %struct.state, ptr %2470, i64 0, i32 3
  %2472 = load ptr, ptr %2471, align 8, !tbaa !7
  %2473 = icmp eq ptr %2472, null
  br i1 %2473, label %2572, label %2474

2474:                                             ; preds = %2465
  %2475 = load ptr, ptr %2464, align 8
  br label %2476

2476:                                             ; preds = %2523, %2474
  %2477 = phi ptr [ %2528, %2523 ], [ %2472, %2474 ]
  %2478 = phi i32 [ %2524, %2523 ], [ 0, %2474 ]
  %2479 = phi i32 [ %2526, %2523 ], [ 0, %2474 ]
  %2480 = phi ptr [ %2525, %2523 ], [ null, %2474 ]
  %2481 = getelementptr inbounds %struct.action, ptr %2477, i64 0, i32 1
  %2482 = load i32, ptr %2481, align 8, !tbaa !191
  switch i32 %2482, label %2523 [
    i32 0, label %2483
    i32 2, label %2487
  ]

2483:                                             ; preds = %2476
  %2484 = load ptr, ptr %2477, align 8, !tbaa !190
  %2485 = icmp eq ptr %2484, %2475
  %2486 = select i1 %2485, i32 1, i32 %2478
  br label %2523

2487:                                             ; preds = %2476
  %2488 = getelementptr inbounds %struct.action, ptr %2477, i64 0, i32 2
  %2489 = load ptr, ptr %2488, align 8, !tbaa !17
  %2490 = getelementptr inbounds %struct.rule, ptr %2489, i64 0, i32 2
  %2491 = load i32, ptr %2490, align 8, !tbaa !156
  %2492 = icmp ne i32 %2491, 0
  %2493 = icmp eq ptr %2489, %2480
  %2494 = select i1 %2492, i1 true, i1 %2493
  br i1 %2494, label %2523, label %2495

2495:                                             ; preds = %2487
  %2496 = getelementptr inbounds %struct.action, ptr %2477, i64 0, i32 3
  %2497 = load ptr, ptr %2496, align 8, !tbaa !187
  %2498 = icmp eq ptr %2497, null
  br i1 %2498, label %2518, label %2499

2499:                                             ; preds = %2513, %2495
  %2500 = phi ptr [ %2516, %2513 ], [ %2497, %2495 ]
  %2501 = phi i32 [ %2514, %2513 ], [ 1, %2495 ]
  %2502 = getelementptr inbounds %struct.action, ptr %2500, i64 0, i32 1
  %2503 = load i32, ptr %2502, align 8, !tbaa !191
  %2504 = icmp eq i32 %2503, 2
  br i1 %2504, label %2505, label %2513

2505:                                             ; preds = %2499
  %2506 = getelementptr inbounds %struct.action, ptr %2500, i64 0, i32 2
  %2507 = load ptr, ptr %2506, align 8, !tbaa !17
  %2508 = icmp ne ptr %2507, %2480
  %2509 = icmp eq ptr %2507, %2489
  %2510 = and i1 %2508, %2509
  %2511 = zext i1 %2510 to i32
  %2512 = add nsw i32 %2501, %2511
  br label %2513

2513:                                             ; preds = %2505, %2499
  %2514 = phi i32 [ %2501, %2499 ], [ %2512, %2505 ]
  %2515 = getelementptr inbounds %struct.action, ptr %2500, i64 0, i32 3
  %2516 = load ptr, ptr %2515, align 8, !tbaa !187
  %2517 = icmp eq ptr %2516, null
  br i1 %2517, label %2518, label %2499, !llvm.loop !201

2518:                                             ; preds = %2513, %2495
  %2519 = phi i32 [ 1, %2495 ], [ %2514, %2513 ]
  %2520 = icmp sgt i32 %2519, %2479
  %2521 = select i1 %2520, ptr %2489, ptr %2480
  %2522 = call i32 @llvm.smax.i32(i32 %2519, i32 %2479)
  br label %2523

2523:                                             ; preds = %2518, %2487, %2483, %2476
  %2524 = phi i32 [ %2478, %2487 ], [ %2478, %2518 ], [ %2486, %2483 ], [ %2478, %2476 ]
  %2525 = phi ptr [ %2480, %2487 ], [ %2521, %2518 ], [ %2480, %2483 ], [ %2480, %2476 ]
  %2526 = phi i32 [ %2479, %2487 ], [ %2522, %2518 ], [ %2479, %2483 ], [ %2479, %2476 ]
  %2527 = getelementptr inbounds %struct.action, ptr %2477, i64 0, i32 3
  %2528 = load ptr, ptr %2527, align 8, !tbaa !7
  %2529 = icmp eq ptr %2528, null
  br i1 %2529, label %2530, label %2476, !llvm.loop !202

2530:                                             ; preds = %2523
  %.lcssa28 = phi i32 [ %2524, %2523 ]
  %.lcssa27 = phi ptr [ %2525, %2523 ]
  %.lcssa26 = phi i32 [ %2526, %2523 ]
  %2531 = icmp slt i32 %.lcssa26, 1
  %2532 = icmp ne i32 %.lcssa28, 0
  %2533 = select i1 %2531, i1 true, i1 %2532
  br i1 %2533, label %2572, label %2534

2534:                                             ; preds = %2543, %2530
  %2535 = phi ptr [ %2545, %2543 ], [ %2472, %2530 ]
  %2536 = getelementptr inbounds %struct.action, ptr %2535, i64 0, i32 1
  %2537 = load i32, ptr %2536, align 8, !tbaa !191
  %2538 = icmp eq i32 %2537, 2
  br i1 %2538, label %2539, label %2543

2539:                                             ; preds = %2534
  %2540 = getelementptr inbounds %struct.action, ptr %2535, i64 0, i32 2
  %2541 = load ptr, ptr %2540, align 8, !tbaa !17
  %2542 = icmp eq ptr %2541, %.lcssa27
  br i1 %2542, label %2547, label %2543

2543:                                             ; preds = %2539, %2534
  %2544 = getelementptr inbounds %struct.action, ptr %2535, i64 0, i32 3
  %2545 = load ptr, ptr %2544, align 8, !tbaa !7
  %2546 = icmp eq ptr %2545, null
  br i1 %2546, label %2547, label %2534, !llvm.loop !203

2547:                                             ; preds = %2543, %2539
  %2548 = phi ptr [ %2535, %2539 ], [ null, %2543 ]
  %2549 = call fastcc ptr @Symbol_new(ptr noundef nonnull @.str.32) #27
  store ptr %2549, ptr %2548, align 8, !tbaa !190
  %2550 = getelementptr inbounds %struct.action, ptr %2548, i64 0, i32 3
  %2551 = load ptr, ptr %2550, align 8, !tbaa !187
  %2552 = icmp eq ptr %2551, null
  br i1 %2552, label %2567, label %2553

2553:                                             ; preds = %2563, %2547
  %2554 = phi ptr [ %2565, %2563 ], [ %2551, %2547 ]
  %2555 = getelementptr inbounds %struct.action, ptr %2554, i64 0, i32 1
  %2556 = load i32, ptr %2555, align 8, !tbaa !191
  %2557 = icmp eq i32 %2556, 2
  br i1 %2557, label %2558, label %2563

2558:                                             ; preds = %2553
  %2559 = getelementptr inbounds %struct.action, ptr %2554, i64 0, i32 2
  %2560 = load ptr, ptr %2559, align 8, !tbaa !17
  %2561 = icmp eq ptr %2560, %.lcssa27
  br i1 %2561, label %2562, label %2563

2562:                                             ; preds = %2558
  store i32 9, ptr %2555, align 8, !tbaa !191
  br label %2563

2563:                                             ; preds = %2562, %2558, %2553
  %2564 = getelementptr inbounds %struct.action, ptr %2554, i64 0, i32 3
  %2565 = load ptr, ptr %2564, align 8, !tbaa !187
  %2566 = icmp eq ptr %2565, null
  br i1 %2566, label %2567, label %2553, !llvm.loop !204

2567:                                             ; preds = %2563, %2547
  %2568 = load ptr, ptr %2471, align 8, !tbaa !185
  %2569 = getelementptr inbounds %struct.action, ptr %2568, i64 0, i32 3
  %2570 = call fastcc ptr @msort(ptr noundef %2568, ptr noundef nonnull %2569, ptr noundef nonnull @actioncmp) #27
  store ptr %2570, ptr %2471, align 8, !tbaa !185
  %2571 = load i32, ptr %1937, align 8, !tbaa !146
  br label %2572

2572:                                             ; preds = %2567, %2530, %2465
  %2573 = phi i32 [ %2466, %2530 ], [ %2571, %2567 ], [ %2466, %2465 ]
  %2574 = add nuw nsw i64 %2467, 1
  %2575 = sext i32 %2573 to i64
  %2576 = icmp slt i64 %2574, %2575
  br i1 %2576, label %2465, label %2577, !llvm.loop !205

2577:                                             ; preds = %2572, %2455
  %2578 = phi i32 [ %2456, %2455 ], [ %2573, %2572 ]
  %2579 = icmp sgt i32 %2578, 0
  %2580 = load ptr, ptr %11, align 8, !tbaa !163
  br i1 %2579, label %2581, label %2624

2581:                                             ; preds = %2577
  %2582 = load i32, ptr %1481, align 4, !tbaa !81
  %2583 = add nsw i32 %2582, %2578
  %2584 = zext i32 %2578 to i64
  %2585 = load i32, ptr %1567, align 4
  %2586 = load i32, ptr %1495, align 8
  br label %2587

2587:                                             ; preds = %2621, %2581
  %2588 = phi i64 [ 0, %2581 ], [ %2622, %2621 ]
  %2589 = getelementptr inbounds ptr, ptr %2580, i64 %2588
  %2590 = load ptr, ptr %2589, align 8, !tbaa !7
  %2591 = getelementptr inbounds %struct.state, ptr %2590, i64 0, i32 5
  %2592 = getelementptr inbounds %struct.state, ptr %2590, i64 0, i32 4
  %2593 = getelementptr inbounds %struct.state, ptr %2590, i64 0, i32 8
  store i32 %2583, ptr %2593, align 8, !tbaa !206
  store <4 x i32> <i32 0, i32 0, i32 -2147483647, i32 -2147483647>, ptr %2592, align 8, !tbaa !11
  %2594 = getelementptr inbounds %struct.state, ptr %2590, i64 0, i32 3
  %2595 = load ptr, ptr %2594, align 8, !tbaa !7
  %2596 = icmp eq ptr %2595, null
  br i1 %2596, label %2621, label %2597

2597:                                             ; preds = %2615, %2587
  %2598 = phi i32 [ %2616, %2615 ], [ 0, %2587 ]
  %2599 = phi i32 [ %2617, %2615 ], [ 0, %2587 ]
  %2600 = phi ptr [ %2619, %2615 ], [ %2595, %2587 ]
  %2601 = call fastcc i32 @compute_action(ptr noundef nonnull %11, ptr noundef nonnull %2600) #27
  %2602 = icmp sgt i32 %2601, -1
  br i1 %2602, label %2603, label %2615

2603:                                             ; preds = %2597
  %2604 = load ptr, ptr %2600, align 8, !tbaa !190
  %2605 = getelementptr inbounds %struct.symbol, ptr %2604, i64 0, i32 1
  %2606 = load i32, ptr %2605, align 8, !tbaa !122
  %2607 = icmp slt i32 %2606, %2585
  br i1 %2607, label %2608, label %2610

2608:                                             ; preds = %2603
  %2609 = add nsw i32 %2598, 1
  store i32 %2609, ptr %2592, align 8, !tbaa !207
  br label %2615

2610:                                             ; preds = %2603
  %2611 = icmp slt i32 %2606, %2586
  br i1 %2611, label %2612, label %2614

2612:                                             ; preds = %2610
  %2613 = add nsw i32 %2599, 1
  store i32 %2613, ptr %2591, align 4, !tbaa !208
  br label %2615

2614:                                             ; preds = %2610
  store i32 %2601, ptr %2593, align 8, !tbaa !206
  br label %2615

2615:                                             ; preds = %2614, %2612, %2608, %2597
  %2616 = phi i32 [ %2598, %2597 ], [ %2598, %2612 ], [ %2598, %2614 ], [ %2609, %2608 ]
  %2617 = phi i32 [ %2599, %2597 ], [ %2613, %2612 ], [ %2599, %2614 ], [ %2599, %2608 ]
  %2618 = getelementptr inbounds %struct.action, ptr %2600, i64 0, i32 3
  %2619 = load ptr, ptr %2618, align 8, !tbaa !7
  %2620 = icmp eq ptr %2619, null
  br i1 %2620, label %2621, label %2597, !llvm.loop !209

2621:                                             ; preds = %2615, %2587
  %2622 = add nuw nsw i64 %2588, 1
  %2623 = icmp eq i64 %2622, %2584
  br i1 %2623, label %2624, label %2587, !llvm.loop !210

2624:                                             ; preds = %2621, %2577, %2461
  %2625 = phi ptr [ %2462, %2461 ], [ %2580, %2577 ], [ %2580, %2621 ]
  %2626 = phi i32 [ %2456, %2461 ], [ %2578, %2577 ], [ %2578, %2621 ]
  %2627 = getelementptr inbounds ptr, ptr %2625, i64 1
  %2628 = add nsw i32 %2626, -1
  %2629 = sext i32 %2628 to i64
  call void @qsort(ptr noundef nonnull %2627, i64 noundef %2629, i64 noundef 8, ptr noundef nonnull @stateResortCompare) #26
  %2630 = load i32, ptr %1937, align 8, !tbaa !146
  %2631 = icmp sgt i32 %2630, 0
  br i1 %2631, label %2632, label %2643

2632:                                             ; preds = %2624
  %2633 = load ptr, ptr %11, align 8, !tbaa !163
  %2634 = zext i32 %2630 to i64
  br label %2635

2635:                                             ; preds = %2635, %2632
  %2636 = phi i64 [ 0, %2632 ], [ %2641, %2635 ]
  %2637 = getelementptr inbounds ptr, ptr %2633, i64 %2636
  %2638 = load ptr, ptr %2637, align 8, !tbaa !7
  %2639 = getelementptr inbounds %struct.state, ptr %2638, i64 0, i32 2
  %2640 = trunc i64 %2636 to i32
  store i32 %2640, ptr %2639, align 8, !tbaa !211
  %2641 = add nuw nsw i64 %2636, 1
  %2642 = icmp eq i64 %2641, %2634
  br i1 %2642, label %2643, label %2635, !llvm.loop !212

2643:                                             ; preds = %2635, %2624
  %2644 = load i32, ptr @lemon_main.quiet, align 4, !tbaa !11
  %2645 = icmp eq i32 %2644, 0
  br i1 %2645, label %2646, label %2860

2646:                                             ; preds = %2643
  %2647 = call fastcc ptr @file_open(ptr noundef nonnull %11, ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.70) #27
  %2648 = icmp eq ptr %2647, null
  br i1 %2648, label %2860, label %2649

2649:                                             ; preds = %2646
  %2650 = load i32, ptr %1937, align 8, !tbaa !146
  %2651 = icmp sgt i32 %2650, 0
  br i1 %2651, label %2652, label %2805

2652:                                             ; preds = %2799, %2649
  %2653 = phi i64 [ %2801, %2799 ], [ 0, %2649 ]
  %2654 = load ptr, ptr %11, align 8, !tbaa !163
  %2655 = getelementptr inbounds ptr, ptr %2654, i64 %2653
  %2656 = load ptr, ptr %2655, align 8, !tbaa !7
  %2657 = getelementptr inbounds %struct.state, ptr %2656, i64 0, i32 2
  %2658 = load i32, ptr %2657, align 8, !tbaa !211
  %2659 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %2647, ptr noundef nonnull @.str.71, i32 noundef %2658) #27
  %2660 = load i32, ptr %332, align 8, !tbaa !50
  %2661 = icmp eq i32 %2660, 0
  %2662 = getelementptr inbounds %struct.state, ptr %2656, i64 0, i32 1
  %2663 = select i1 %2661, ptr %2662, ptr %2656
  %2664 = load ptr, ptr %2663, align 8, !tbaa !7
  %2665 = icmp eq ptr %2664, null
  br i1 %2665, label %2744, label %2666

2666:                                             ; preds = %2735, %2652
  %2667 = phi ptr [ %2742, %2735 ], [ %2664, %2652 ]
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #25
  %2668 = getelementptr inbounds %struct.config, ptr %2667, i64 0, i32 1
  %2669 = load i32, ptr %2668, align 8, !tbaa !181
  %2670 = load ptr, ptr %2667, align 8, !tbaa !180
  %2671 = getelementptr inbounds %struct.rule, ptr %2670, i64 0, i32 4
  %2672 = load i32, ptr %2671, align 8, !tbaa !96
  %2673 = icmp eq i32 %2669, %2672
  br i1 %2673, label %2674, label %2679

2674:                                             ; preds = %2666
  %2675 = getelementptr inbounds %struct.rule, ptr %2670, i64 0, i32 10
  %2676 = load i32, ptr %2675, align 8, !tbaa !97
  %2677 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) @.str.72, i32 noundef %2676) #26
  %2678 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %2647, ptr noundef nonnull @.str.73, ptr noundef nonnull %4) #27
  br label %2681

2679:                                             ; preds = %2666
  %2680 = call i64 @fwrite(ptr nonnull @.str.74, i64 10, i64 1, ptr nonnull %2647)
  br label %2681

2681:                                             ; preds = %2679, %2674
  %2682 = load ptr, ptr %2667, align 8, !tbaa !180
  %2683 = load ptr, ptr %2682, align 8, !tbaa !94
  %2684 = load ptr, ptr %2683, align 8, !tbaa !89
  %2685 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2647, ptr noundef nonnull @.str.61, ptr noundef %2684) #27
  %2686 = getelementptr inbounds %struct.rule, ptr %2682, i64 0, i32 4
  %2687 = load i32, ptr %2686, align 8, !tbaa !96
  %2688 = icmp slt i32 %2687, 0
  br i1 %2688, label %2735, label %2689

2689:                                             ; preds = %2681
  %2690 = getelementptr inbounds %struct.rule, ptr %2682, i64 0, i32 5
  br label %2691

2691:                                             ; preds = %2730, %2689
  %2692 = phi i32 [ %2687, %2689 ], [ %2732, %2730 ]
  %2693 = phi i64 [ 0, %2689 ], [ %2731, %2730 ]
  %2694 = load i32, ptr %2668, align 8, !tbaa !181
  %2695 = zext i32 %2694 to i64
  %2696 = icmp eq i64 %2693, %2695
  br i1 %2696, label %2697, label %2700

2697:                                             ; preds = %2691
  %2698 = call i64 @fwrite(ptr nonnull @.str.62, i64 2, i64 1, ptr %2647)
  %2699 = load i32, ptr %2686, align 8, !tbaa !96
  br label %2700

2700:                                             ; preds = %2697, %2691
  %2701 = phi i32 [ %2699, %2697 ], [ %2692, %2691 ]
  %2702 = zext i32 %2701 to i64
  %2703 = icmp eq i64 %2693, %2702
  br i1 %2703, label %2735, label %2704

2704:                                             ; preds = %2700
  %2705 = load ptr, ptr %2690, align 8, !tbaa !91
  %2706 = getelementptr inbounds ptr, ptr %2705, i64 %2693
  %2707 = load ptr, ptr %2706, align 8, !tbaa !7
  %2708 = load ptr, ptr %2707, align 8, !tbaa !89
  %2709 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2647, ptr noundef nonnull @.str.57, ptr noundef %2708) #27
  %2710 = getelementptr inbounds %struct.symbol, ptr %2707, i64 0, i32 2
  %2711 = load i32, ptr %2710, align 4, !tbaa !102
  %2712 = icmp eq i32 %2711, 2
  br i1 %2712, label %2713, label %2730

2713:                                             ; preds = %2704
  %2714 = getelementptr inbounds %struct.symbol, ptr %2707, i64 0, i32 14
  %2715 = load i32, ptr %2714, align 4, !tbaa !103
  %2716 = icmp sgt i32 %2715, 1
  br i1 %2716, label %2717, label %2730

2717:                                             ; preds = %2713
  %2718 = getelementptr inbounds %struct.symbol, ptr %2707, i64 0, i32 15
  br label %2719

2719:                                             ; preds = %2719, %2717
  %2720 = phi i64 [ 1, %2717 ], [ %2726, %2719 ]
  %2721 = load ptr, ptr %2718, align 8, !tbaa !104
  %2722 = getelementptr inbounds ptr, ptr %2721, i64 %2720
  %2723 = load ptr, ptr %2722, align 8, !tbaa !7
  %2724 = load ptr, ptr %2723, align 8, !tbaa !89
  %2725 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2647, ptr noundef nonnull @.str.58, ptr noundef %2724) #27
  %2726 = add nuw nsw i64 %2720, 1
  %2727 = load i32, ptr %2714, align 4, !tbaa !103
  %2728 = sext i32 %2727 to i64
  %2729 = icmp slt i64 %2726, %2728
  br i1 %2729, label %2719, label %2730, !llvm.loop !213

2730:                                             ; preds = %2719, %2713, %2704
  %2731 = add nuw nsw i64 %2693, 1
  %2732 = load i32, ptr %2686, align 8, !tbaa !96
  %2733 = sext i32 %2732 to i64
  %2734 = icmp slt i64 %2693, %2733
  br i1 %2734, label %2691, label %2735, !llvm.loop !214

2735:                                             ; preds = %2730, %2700, %2681
  %2736 = call i32 @fputc(i32 10, ptr nonnull %2647)
  %2737 = load i32, ptr %332, align 8, !tbaa !50
  %2738 = icmp eq i32 %2737, 0
  %2739 = getelementptr inbounds %struct.config, ptr %2667, i64 0, i32 8
  %2740 = getelementptr inbounds %struct.config, ptr %2667, i64 0, i32 7
  %2741 = select i1 %2738, ptr %2740, ptr %2739
  %2742 = load ptr, ptr %2741, align 8, !tbaa !7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #25
  %2743 = icmp eq ptr %2742, null
  br i1 %2743, label %2744, label %2666, !llvm.loop !215

2744:                                             ; preds = %2735, %2652
  %2745 = call i32 @fputc(i32 10, ptr nonnull %2647)
  %2746 = getelementptr inbounds %struct.state, ptr %2656, i64 0, i32 3
  %2747 = load ptr, ptr %2746, align 8, !tbaa !7
  %2748 = icmp eq ptr %2747, null
  br i1 %2748, label %2799, label %2749

2749:                                             ; preds = %2795, %2744
  %2750 = phi ptr [ %2797, %2795 ], [ %2747, %2744 ]
  %2751 = getelementptr inbounds %struct.action, ptr %2750, i64 0, i32 1
  %2752 = load i32, ptr %2751, align 8, !tbaa !191
  switch i32 %2752, label %2793 [
    i32 0, label %2753
    i32 2, label %2761
    i32 1, label %2769
    i32 3, label %2773
    i32 5, label %2777
    i32 6, label %2777
    i32 4, label %2785
    i32 7, label %2795
    i32 8, label %2795
    i32 9, label %2795
  ]

2753:                                             ; preds = %2749
  %2754 = load ptr, ptr %2750, align 8, !tbaa !190
  %2755 = load ptr, ptr %2754, align 8, !tbaa !89
  %2756 = getelementptr inbounds %struct.action, ptr %2750, i64 0, i32 2
  %2757 = load ptr, ptr %2756, align 8, !tbaa !17
  %2758 = getelementptr inbounds %struct.state, ptr %2757, i64 0, i32 2
  %2759 = load i32, ptr %2758, align 8, !tbaa !211
  %2760 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2647, ptr noundef nonnull @.str.63, i32 noundef 30, ptr noundef %2755, i32 noundef %2759) #27
  br label %2793

2761:                                             ; preds = %2749
  %2762 = load ptr, ptr %2750, align 8, !tbaa !190
  %2763 = load ptr, ptr %2762, align 8, !tbaa !89
  %2764 = getelementptr inbounds %struct.action, ptr %2750, i64 0, i32 2
  %2765 = load ptr, ptr %2764, align 8, !tbaa !17
  %2766 = getelementptr inbounds %struct.rule, ptr %2765, i64 0, i32 10
  %2767 = load i32, ptr %2766, align 8, !tbaa !97
  %2768 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2647, ptr noundef nonnull @.str.64, i32 noundef 30, ptr noundef %2763, i32 noundef %2767) #27
  br label %2793

2769:                                             ; preds = %2749
  %2770 = load ptr, ptr %2750, align 8, !tbaa !190
  %2771 = load ptr, ptr %2770, align 8, !tbaa !89
  %2772 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2647, ptr noundef nonnull @.str.65, i32 noundef 30, ptr noundef %2771) #27
  br label %2793

2773:                                             ; preds = %2749
  %2774 = load ptr, ptr %2750, align 8, !tbaa !190
  %2775 = load ptr, ptr %2774, align 8, !tbaa !89
  %2776 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2647, ptr noundef nonnull @.str.66, i32 noundef 30, ptr noundef %2775) #27
  br label %2793

2777:                                             ; preds = %2749, %2749
  %2778 = load ptr, ptr %2750, align 8, !tbaa !190
  %2779 = load ptr, ptr %2778, align 8, !tbaa !89
  %2780 = getelementptr inbounds %struct.action, ptr %2750, i64 0, i32 2
  %2781 = load ptr, ptr %2780, align 8, !tbaa !17
  %2782 = getelementptr inbounds %struct.rule, ptr %2781, i64 0, i32 10
  %2783 = load i32, ptr %2782, align 8, !tbaa !97
  %2784 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2647, ptr noundef nonnull @.str.67, i32 noundef 30, ptr noundef %2779, i32 noundef %2783) #27
  br label %2793

2785:                                             ; preds = %2749
  %2786 = load ptr, ptr %2750, align 8, !tbaa !190
  %2787 = load ptr, ptr %2786, align 8, !tbaa !89
  %2788 = getelementptr inbounds %struct.action, ptr %2750, i64 0, i32 2
  %2789 = load ptr, ptr %2788, align 8, !tbaa !17
  %2790 = getelementptr inbounds %struct.state, ptr %2789, i64 0, i32 2
  %2791 = load i32, ptr %2790, align 8, !tbaa !211
  %2792 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2647, ptr noundef nonnull @.str.68, i32 noundef 30, ptr noundef %2787, i32 noundef %2791) #27
  br label %2793

2793:                                             ; preds = %2785, %2777, %2773, %2769, %2761, %2753, %2749
  %2794 = call i32 @fputc(i32 10, ptr nonnull %2647)
  br label %2795

2795:                                             ; preds = %2793, %2749, %2749, %2749
  %2796 = getelementptr inbounds %struct.action, ptr %2750, i64 0, i32 3
  %2797 = load ptr, ptr %2796, align 8, !tbaa !7
  %2798 = icmp eq ptr %2797, null
  br i1 %2798, label %2799, label %2749, !llvm.loop !216

2799:                                             ; preds = %2795, %2744
  %2800 = call i32 @fputc(i32 10, ptr nonnull %2647)
  %2801 = add nuw nsw i64 %2653, 1
  %2802 = load i32, ptr %1937, align 8, !tbaa !146
  %2803 = sext i32 %2802 to i64
  %2804 = icmp slt i64 %2801, %2803
  br i1 %2804, label %2652, label %2805, !llvm.loop !217

2805:                                             ; preds = %2799, %2649
  %2806 = call i64 @fwrite(ptr nonnull @.str.75, i64 53, i64 1, ptr nonnull %2647)
  %2807 = call i64 @fwrite(ptr nonnull @.str.76, i64 9, i64 1, ptr nonnull %2647)
  %2808 = load i32, ptr %1495, align 8, !tbaa !117
  %2809 = icmp sgt i32 %2808, 0
  br i1 %2809, label %2810, label %2860

2810:                                             ; preds = %2854, %2805
  %2811 = phi i64 [ %2856, %2854 ], [ 0, %2805 ]
  %2812 = load ptr, ptr %1520, align 8, !tbaa !121
  %2813 = getelementptr inbounds ptr, ptr %2812, i64 %2811
  %2814 = load ptr, ptr %2813, align 8, !tbaa !7
  %2815 = load ptr, ptr %2814, align 8, !tbaa !89
  %2816 = trunc i64 %2811 to i32
  %2817 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %2647, ptr noundef nonnull @.str.77, i32 noundef %2816, ptr noundef %2815) #27
  %2818 = getelementptr inbounds %struct.symbol, ptr %2814, i64 0, i32 2
  %2819 = load i32, ptr %2818, align 4, !tbaa !102
  %2820 = icmp eq i32 %2819, 1
  br i1 %2820, label %2821, label %2854

2821:                                             ; preds = %2810
  %2822 = call i32 @fputc(i32 58, ptr nonnull %2647)
  %2823 = getelementptr inbounds %struct.symbol, ptr %2814, i64 0, i32 8
  %2824 = load i32, ptr %2823, align 8, !tbaa !136
  %2825 = icmp eq i32 %2824, 0
  br i1 %2825, label %2828, label %2826

2826:                                             ; preds = %2821
  %2827 = call i64 @fwrite(ptr nonnull @.str.79, i64 9, i64 1, ptr nonnull %2647)
  br label %2828

2828:                                             ; preds = %2826, %2821
  %2829 = load i32, ptr %1567, align 4, !tbaa !126
  %2830 = icmp sgt i32 %2829, 0
  br i1 %2830, label %2831, label %2854

2831:                                             ; preds = %2828
  %2832 = getelementptr inbounds %struct.symbol, ptr %2814, i64 0, i32 7
  br label %2833

2833:                                             ; preds = %2849, %2831
  %2834 = phi i32 [ %2829, %2831 ], [ %2850, %2849 ]
  %2835 = phi i64 [ 0, %2831 ], [ %2851, %2849 ]
  %2836 = load ptr, ptr %2832, align 8, !tbaa !138
  %2837 = icmp eq ptr %2836, null
  br i1 %2837, label %2849, label %2838

2838:                                             ; preds = %2833
  %2839 = getelementptr inbounds i8, ptr %2836, i64 %2835
  %2840 = load i8, ptr %2839, align 1, !tbaa !17
  %2841 = icmp eq i8 %2840, 0
  br i1 %2841, label %2849, label %2842

2842:                                             ; preds = %2838
  %2843 = load ptr, ptr %1520, align 8, !tbaa !121
  %2844 = getelementptr inbounds ptr, ptr %2843, i64 %2835
  %2845 = load ptr, ptr %2844, align 8, !tbaa !7
  %2846 = load ptr, ptr %2845, align 8, !tbaa !89
  %2847 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %2647, ptr noundef nonnull @.str.57, ptr noundef %2846) #27
  %2848 = load i32, ptr %1567, align 4, !tbaa !126
  br label %2849

2849:                                             ; preds = %2842, %2838, %2833
  %2850 = phi i32 [ %2834, %2833 ], [ %2834, %2838 ], [ %2848, %2842 ]
  %2851 = add nuw nsw i64 %2835, 1
  %2852 = sext i32 %2850 to i64
  %2853 = icmp slt i64 %2851, %2852
  br i1 %2853, label %2833, label %2854, !llvm.loop !218

2854:                                             ; preds = %2849, %2828, %2810
  %2855 = call i32 @fputc(i32 10, ptr nonnull %2647)
  %2856 = add nuw nsw i64 %2811, 1
  %2857 = load i32, ptr %1495, align 8, !tbaa !117
  %2858 = sext i32 %2857 to i64
  %2859 = icmp slt i64 %2856, %2858
  br i1 %2859, label %2810, label %2860, !llvm.loop !219

2860:                                             ; preds = %2854, %2805, %2646, %2643
  %2861 = load i32, ptr @lemon_main.mhflag, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 1000, ptr nonnull %7) #25
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #25
  call void @llvm.lifetime.start.p0(i64 1000, ptr nonnull %6) #25
  %2862 = load ptr, ptr %330, align 8, !tbaa !49
  %2863 = call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %2862, i32 noundef 46) #29
  %2864 = icmp eq ptr %2863, null
  br i1 %2864, label %2871, label %2865

2865:                                             ; preds = %2860
  %2866 = ptrtoint ptr %2863 to i64
  %2867 = ptrtoint ptr %2862 to i64
  %2868 = sub i64 %2866, %2867
  %2869 = trunc i64 %2868 to i32
  %2870 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(1) @.str.85, i32 noundef %2869, ptr noundef %2862) #26
  br label %2873

2871:                                             ; preds = %2860
  %2872 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(1) @.str.86, ptr noundef %2862) #26
  br label %2873

2873:                                             ; preds = %2871, %2865
  %2874 = call i32 @access(ptr noundef nonnull %6, i32 noundef 4) #26
  %2875 = icmp eq i32 %2874, 0
  br i1 %2875, label %2926, label %2876

2876:                                             ; preds = %2873
  %2877 = call i32 @access(ptr noundef nonnull @tplt_open.templatename, i32 noundef 4) #26
  %2878 = icmp eq i32 %2877, 0
  br i1 %2878, label %2926, label %2879

2879:                                             ; preds = %2876
  %2880 = load ptr, ptr %330, align 8, !tbaa !49
  %2881 = call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %2880, i32 noundef 47) #29
  %2882 = icmp eq ptr %2881, null
  br i1 %2882, label %2894, label %2883

2883:                                             ; preds = %2879
  %2884 = load i8, ptr %2881, align 1, !tbaa !17
  store i8 0, ptr %2881, align 1, !tbaa !17
  %2885 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2880) #29
  %2886 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) @tplt_open.templatename) #29
  %2887 = add i64 %2885, 2
  %2888 = add i64 %2887, %2886
  %2889 = call noalias ptr @malloc(i64 noundef %2888) #33
  %2890 = icmp eq ptr %2889, null
  br i1 %2890, label %2893, label %2891

2891:                                             ; preds = %2883
  %2892 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %2889, ptr noundef nonnull dereferenceable(1) @.str.80, ptr noundef %2880, ptr noundef nonnull @tplt_open.templatename) #26
  br label %2893

2893:                                             ; preds = %2891, %2883
  store i8 %2884, ptr %2881, align 1, !tbaa !17
  br label %2923

2894:                                             ; preds = %2879
  %2895 = call ptr @getenv(ptr noundef nonnull @.str.81) #26
  %2896 = icmp eq ptr %2895, null
  %2897 = select i1 %2896, ptr @.str.82, ptr %2895
  %2898 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2897) #29
  %2899 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) @tplt_open.templatename) #29
  %2900 = add i64 %2898, 2
  %2901 = add i64 %2900, %2899
  %2902 = call noalias ptr @malloc(i64 noundef %2901) #33
  %2903 = icmp eq ptr %2902, null
  br i1 %2903, label %2930, label %2904

2904:                                             ; preds = %2914, %2894
  %2905 = phi ptr [ %2920, %2914 ], [ %2897, %2894 ]
  %2906 = load i8, ptr %2905, align 1, !tbaa !17
  %2907 = icmp eq i8 %2906, 0
  br i1 %2907, label %2923, label %2908

2908:                                             ; preds = %2904
  %2909 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %2905, i32 noundef 58) #29
  %2910 = icmp eq ptr %2909, null
  br i1 %2910, label %2911, label %2914

2911:                                             ; preds = %2908
  %2912 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2905) #29
  %2913 = getelementptr inbounds i8, ptr %2905, i64 %2912
  br label %2914

2914:                                             ; preds = %2911, %2908
  %2915 = phi ptr [ %2913, %2911 ], [ %2909, %2908 ]
  %2916 = load i8, ptr %2915, align 1, !tbaa !17
  store i8 0, ptr %2915, align 1, !tbaa !17
  %2917 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %2902, ptr noundef nonnull dereferenceable(1) @.str.80, ptr noundef nonnull %2905, ptr noundef nonnull @tplt_open.templatename) #26
  store i8 %2916, ptr %2915, align 1, !tbaa !17
  %2918 = icmp eq i8 %2916, 0
  %2919 = getelementptr inbounds i8, ptr %2915, i64 1
  %2920 = select i1 %2918, ptr @.str.39, ptr %2919
  %2921 = call i32 @access(ptr noundef nonnull %2902, i32 noundef 0) #26
  %2922 = icmp eq i32 %2921, 0
  br i1 %2922, label %2923, label %2904, !llvm.loop !220

2923:                                             ; preds = %2914, %2904, %2893
  %2924 = phi ptr [ %2889, %2893 ], [ %2902, %2904 ], [ %2902, %2914 ]
  %2925 = icmp eq ptr %2924, null
  br i1 %2925, label %2930, label %2926

2926:                                             ; preds = %2923, %2876, %2873
  %2927 = phi ptr [ %2924, %2923 ], [ @tplt_open.templatename, %2876 ], [ %6, %2873 ]
  %2928 = call noalias ptr @fopen(ptr noundef nonnull %2927, ptr noundef nonnull @.str.42) #27
  %2929 = icmp eq ptr %2928, null
  br i1 %2929, label %2930, label %2936

2930:                                             ; preds = %2926, %2923, %2894
  %2931 = phi ptr [ @.str.87, %2923 ], [ @.str.88, %2926 ], [ @.str.87, %2894 ]
  %2932 = load ptr, ptr @stderr, align 8, !tbaa !7
  %2933 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2932, ptr noundef nonnull %2931, ptr noundef nonnull @tplt_open.templatename) #30
  %2934 = load i32, ptr %232, align 8, !tbaa !57
  %2935 = add nsw i32 %2934, 1
  store i32 %2935, ptr %232, align 8, !tbaa !57
  call void @llvm.lifetime.end.p0(i64 1000, ptr nonnull %6) #25
  br label %4348

2936:                                             ; preds = %2926
  call void @llvm.lifetime.end.p0(i64 1000, ptr nonnull %6) #25
  %2937 = call fastcc ptr @file_open(ptr noundef nonnull %11, ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.70) #27
  %2938 = icmp eq ptr %2937, null
  br i1 %2938, label %2939, label %2941

2939:                                             ; preds = %2936
  %2940 = call i32 @fclose(ptr noundef nonnull %2928) #27
  br label %4348

2941:                                             ; preds = %2936
  store i32 1, ptr %8, align 4, !tbaa !11
  %2942 = getelementptr inbounds %struct.lemon, ptr %11, i64 0, i32 10
  %2943 = load ptr, ptr %2942, align 8, !tbaa !221
  call fastcc void @tplt_xfer(ptr noundef %2943, ptr noundef nonnull %2928, ptr noundef nonnull %2937, ptr noundef nonnull %8) #27
  %2944 = getelementptr inbounds %struct.lemon, ptr %11, i64 0, i32 16
  %2945 = load ptr, ptr %2944, align 8, !tbaa !222
  %2946 = getelementptr inbounds %struct.lemon, ptr %11, i64 0, i32 17
  %2947 = load i32, ptr %2946, align 8, !tbaa !223
  call fastcc void @tplt_print(ptr noundef nonnull %2937, ptr noundef nonnull %11, ptr noundef %2945, i32 noundef %2947, ptr noundef nonnull %8) #27
  %2948 = icmp eq i32 %2861, 0
  br i1 %2948, label %2982, label %2949

2949:                                             ; preds = %2941
  %2950 = call fastcc ptr @file_makename(ptr noundef nonnull %11, ptr noundef nonnull @.str.113) #27
  %2951 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %2937, ptr noundef nonnull @.str.114, ptr noundef %2950) #27
  %2952 = load i32, ptr %8, align 4, !tbaa !11
  %2953 = add nsw i32 %2952, 1
  store i32 %2953, ptr %8, align 4, !tbaa !11
  call void @free(ptr noundef %2950) #26
  %2954 = load ptr, ptr %2942, align 8, !tbaa !221
  call fastcc void @tplt_xfer(ptr noundef %2954, ptr noundef nonnull %2928, ptr noundef nonnull %2937, ptr noundef nonnull %8) #27
  %2955 = call i64 @fwrite(ptr nonnull @.str.103, i64 14, i64 1, ptr nonnull %2937)
  %2956 = load i32, ptr %8, align 4, !tbaa !11
  %2957 = add nsw i32 %2956, 1
  %2958 = getelementptr inbounds %struct.lemon, ptr %11, i64 0, i32 34
  %2959 = load ptr, ptr %2958, align 8, !tbaa !224
  %2960 = icmp eq ptr %2959, null
  %2961 = select i1 %2960, ptr @.str.39, ptr %2959
  %2962 = load i32, ptr %1567, align 4, !tbaa !126
  %2963 = icmp sgt i32 %2962, 1
  br i1 %2963, label %2964, label %2978

2964:                                             ; preds = %2964, %2949
  %2965 = phi i64 [ %2974, %2964 ], [ 1, %2949 ]
  %2966 = phi i32 [ %2973, %2964 ], [ %2957, %2949 ]
  %2967 = load ptr, ptr %1520, align 8, !tbaa !121
  %2968 = getelementptr inbounds ptr, ptr %2967, i64 %2965
  %2969 = load ptr, ptr %2968, align 8, !tbaa !7
  %2970 = load ptr, ptr %2969, align 8, !tbaa !89
  %2971 = trunc i64 %2965 to i32
  %2972 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2937, ptr noundef nonnull @.str.115, ptr noundef nonnull %2961, ptr noundef %2970, i32 noundef %2971) #27
  %2973 = add nsw i32 %2966, 1
  %2974 = add nuw nsw i64 %2965, 1
  %2975 = load i32, ptr %1567, align 4, !tbaa !126
  %2976 = sext i32 %2975 to i64
  %2977 = icmp slt i64 %2974, %2976
  br i1 %2977, label %2964, label %2978, !llvm.loop !225

2978:                                             ; preds = %2964, %2949
  %2979 = phi i32 [ %2957, %2949 ], [ %2973, %2964 ]
  %2980 = call i64 @fwrite(ptr nonnull @.str.106, i64 7, i64 1, ptr %2937)
  %2981 = add nsw i32 %2979, 1
  store i32 %2981, ptr %8, align 4, !tbaa !11
  br label %2984

2982:                                             ; preds = %2941
  %2983 = load ptr, ptr %2942, align 8, !tbaa !221
  call fastcc void @tplt_xfer(ptr noundef %2983, ptr noundef nonnull %2928, ptr noundef nonnull %2937, ptr noundef nonnull %8) #27
  br label %2984

2984:                                             ; preds = %2982, %2978
  %2985 = load ptr, ptr %2942, align 8, !tbaa !221
  call fastcc void @tplt_xfer(ptr noundef %2985, ptr noundef nonnull %2928, ptr noundef %2937, ptr noundef nonnull %8) #27
  %2986 = load i32, ptr %1495, align 8, !tbaa !117
  %2987 = add nsw i32 %2986, 5
  %2988 = icmp slt i32 %2986, 251
  %2989 = icmp ult i32 %2987, 65535
  %2990 = select i1 %2989, ptr @.str.227, ptr @.str.228
  %2991 = select i1 %2988, ptr @.str.226, ptr %2990
  %2992 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2937, ptr noundef nonnull @.str.116, ptr noundef nonnull %2991) #27
  %2993 = load i32, ptr %8, align 4, !tbaa !11
  %2994 = load i32, ptr %1495, align 8, !tbaa !117
  %2995 = add nsw i32 %2994, 1
  %2996 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2937, ptr noundef nonnull @.str.117, i32 noundef %2995) #27
  %2997 = load i32, ptr %1937, align 8, !tbaa !146
  %2998 = load i32, ptr %1481, align 4, !tbaa !81
  %2999 = add nsw i32 %2998, %2997
  %3000 = add nsw i32 %2999, 5
  %3001 = icmp slt i32 %2999, 251
  %3002 = icmp ult i32 %3000, 65535
  %3003 = select i1 %3002, ptr @.str.227, ptr @.str.228
  %3004 = select i1 %3001, ptr @.str.226, ptr %3003
  %3005 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2937, ptr noundef nonnull @.str.118, ptr noundef nonnull %3004) #27
  %3006 = add nsw i32 %2993, 3
  %3007 = getelementptr inbounds %struct.lemon, ptr %11, i64 0, i32 9
  %3008 = load ptr, ptr %3007, align 8, !tbaa !114
  %3009 = icmp eq ptr %3008, null
  br i1 %3009, label %3015, label %3010

3010:                                             ; preds = %2984
  %3011 = getelementptr inbounds %struct.symbol, ptr %3008, i64 0, i32 1
  %3012 = load i32, ptr %3011, align 8, !tbaa !122
  %3013 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2937, ptr noundef nonnull @.str.119, i32 noundef %3012) #27
  %3014 = add nsw i32 %2993, 4
  store i32 %3014, ptr %8, align 4, !tbaa !11
  br label %3015

3015:                                             ; preds = %3010, %2984
  %3016 = phi i32 [ %3014, %3010 ], [ %3006, %2984 ]
  %3017 = load i32, ptr %1495, align 8, !tbaa !117
  %3018 = shl nsw i32 %3017, 1
  %3019 = sext i32 %3018 to i64
  %3020 = call noalias ptr @calloc(i64 noundef %3019, i64 noundef 8) #34
  %3021 = icmp sgt i32 %3017, 0
  %3022 = getelementptr inbounds %struct.lemon, ptr %11, i64 0, i32 13
  %3023 = load ptr, ptr %3022, align 8, !tbaa !226
  %3024 = icmp ne ptr %3023, null
  br i1 %3024, label %3025, label %3028

3025:                                             ; preds = %3015
  %3026 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3023) #29
  %3027 = trunc i64 %3026 to i32
  br label %3028

3028:                                             ; preds = %3025, %3015
  %3029 = phi i32 [ %3027, %3025 ], [ 0, %3015 ]
  br i1 %3021, label %3030, label %3049

3030:                                             ; preds = %3028
  %3031 = load ptr, ptr %1520, align 8, !tbaa !121
  %3032 = zext i32 %3017 to i64
  br label %3033

3033:                                             ; preds = %3045, %3030
  %3034 = phi i64 [ 0, %3030 ], [ %3047, %3045 ]
  %3035 = phi i32 [ %3029, %3030 ], [ %3046, %3045 ]
  %3036 = getelementptr inbounds ptr, ptr %3031, i64 %3034
  %3037 = load ptr, ptr %3036, align 8, !tbaa !7
  %3038 = getelementptr inbounds %struct.symbol, ptr %3037, i64 0, i32 12
  %3039 = load ptr, ptr %3038, align 8, !tbaa !227
  %3040 = icmp eq ptr %3039, null
  br i1 %3040, label %3045, label %3041

3041:                                             ; preds = %3033
  %3042 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3039) #29
  %3043 = trunc i64 %3042 to i32
  %3044 = call i32 @llvm.smax.i32(i32 %3035, i32 %3043)
  br label %3045

3045:                                             ; preds = %3041, %3033
  %3046 = phi i32 [ %3044, %3041 ], [ %3035, %3033 ]
  %3047 = add nuw nsw i64 %3034, 1
  %3048 = icmp eq i64 %3047, %3032
  br i1 %3048, label %3049, label %3033, !llvm.loop !228

3049:                                             ; preds = %3045, %3028
  %3050 = phi i32 [ %3029, %3028 ], [ %3046, %3045 ]
  %3051 = shl nsw i32 %3050, 1
  %3052 = or i32 %3051, 1
  %3053 = sext i32 %3052 to i64
  %3054 = call noalias ptr @malloc(i64 noundef %3053) #33
  %3055 = icmp eq ptr %3020, null
  %3056 = icmp eq ptr %3054, null
  %3057 = or i1 %3055, %3056
  br i1 %3057, label %3065, label %3058

3058:                                             ; preds = %3049
  br i1 %3021, label %3059, label %3185

3059:                                             ; preds = %3058
  %3060 = load ptr, ptr %1520, align 8, !tbaa !121
  %3061 = load ptr, ptr %335, align 8, !tbaa !51
  %3062 = or i32 %3018, 1
  %3063 = zext i32 %3017 to i64
  %3064 = getelementptr inbounds %struct.symbol, ptr %3061, i64 0, i32 13
  br label %3068

3065:                                             ; preds = %3049
  %3066 = load ptr, ptr @stderr, align 8, !tbaa !7
  %3067 = call i64 @fwrite(ptr nonnull @.str.102, i64 15, i64 1, ptr %3066) #32
  call void @exit(i32 noundef 1) #31
  unreachable

3068:                                             ; preds = %3182, %3059
  %3069 = phi i64 [ 0, %3059 ], [ %3183, %3182 ]
  %3070 = getelementptr inbounds ptr, ptr %3060, i64 %3069
  %3071 = load ptr, ptr %3070, align 8, !tbaa !7
  %3072 = icmp eq ptr %3071, %3061
  br i1 %3072, label %3073, label %3074

3073:                                             ; preds = %3068
  store i32 %3062, ptr %3064, align 8, !tbaa !229
  br label %3182

3074:                                             ; preds = %3068
  %3075 = getelementptr inbounds %struct.symbol, ptr %3071, i64 0, i32 2
  %3076 = load i32, ptr %3075, align 4, !tbaa !102
  %3077 = icmp eq i32 %3076, 1
  br i1 %3077, label %3078, label %3086

3078:                                             ; preds = %3074
  %3079 = getelementptr inbounds %struct.symbol, ptr %3071, i64 0, i32 12
  %3080 = load ptr, ptr %3079, align 8, !tbaa !227
  %3081 = icmp ne ptr %3080, null
  %3082 = or i1 %3024, %3081
  br i1 %3082, label %3083, label %3086

3083:                                             ; preds = %3078
  %3084 = select i1 %3081, ptr %3080, ptr %3023
  %3085 = load ptr, ptr %1543, align 8, !tbaa !7
  br label %3088

3086:                                             ; preds = %3078, %3074
  %3087 = getelementptr inbounds %struct.symbol, ptr %3071, i64 0, i32 13
  store i32 0, ptr %3087, align 8, !tbaa !229
  br label %3182

3088:                                             ; preds = %3088, %3083
  %3089 = phi ptr [ %3096, %3088 ], [ %3084, %3083 ]
  %3090 = load i8, ptr %3089, align 1, !tbaa !17
  %3091 = sext i8 %3090 to i64
  %3092 = getelementptr inbounds i16, ptr %3085, i64 %3091
  %3093 = load i16, ptr %3092, align 2, !tbaa !58
  %3094 = and i16 %3093, 8192
  %3095 = icmp eq i16 %3094, 0
  %3096 = getelementptr inbounds i8, ptr %3089, i64 1
  br i1 %3095, label %3097, label %3088, !llvm.loop !230

3097:                                             ; preds = %3088
  %.lcssa23 = phi ptr [ %3089, %3088 ]
  %.lcssa22 = phi i8 [ %3090, %3088 ]
  %3098 = icmp eq i8 %.lcssa22, 0
  br i1 %3098, label %3101, label %3105

3099:                                             ; preds = %3105
  %.lcssa24 = phi i64 [ %3110, %3105 ]
  %3100 = trunc i64 %.lcssa24 to i32
  br label %3101

3101:                                             ; preds = %3099, %3097
  %3102 = phi i32 [ 0, %3097 ], [ %3100, %3099 ]
  %3103 = zext i32 %3102 to i64
  %3104 = call i32 @llvm.smin.i32(i32 %3102, i32 0)
  br label %3114

3105:                                             ; preds = %3105, %3097
  %3106 = phi i64 [ %3110, %3105 ], [ 0, %3097 ]
  %3107 = phi i8 [ %3112, %3105 ], [ %.lcssa22, %3097 ]
  %3108 = phi ptr [ %3109, %3105 ], [ %.lcssa23, %3097 ]
  %3109 = getelementptr inbounds i8, ptr %3108, i64 1
  %3110 = add nuw i64 %3106, 1
  %3111 = getelementptr inbounds i8, ptr %3054, i64 %3106
  store i8 %3107, ptr %3111, align 1, !tbaa !17
  %3112 = load i8, ptr %3109, align 1, !tbaa !17
  %3113 = icmp eq i8 %3112, 0
  br i1 %3113, label %3099, label %3105, !llvm.loop !231

3114:                                             ; preds = %3118, %3101
  %3115 = phi i64 [ %3103, %3101 ], [ %3119, %3118 ]
  %3116 = trunc i64 %3115 to i32
  %3117 = icmp sgt i32 %3116, 0
  br i1 %3117, label %3118, label %3127

3118:                                             ; preds = %3114
  %3119 = add nsw i64 %3115, -1
  %3120 = getelementptr inbounds i8, ptr %3054, i64 %3119
  %3121 = load i8, ptr %3120, align 1, !tbaa !17
  %3122 = sext i8 %3121 to i64
  %3123 = getelementptr inbounds i16, ptr %3085, i64 %3122
  %3124 = load i16, ptr %3123, align 2, !tbaa !58
  %3125 = and i16 %3124, 8192
  %3126 = icmp eq i16 %3125, 0
  br i1 %3126, label %3127, label %3114, !llvm.loop !232

3127:                                             ; preds = %3118, %3114
  %3128 = phi i32 [ %3104, %3114 ], [ %3116, %3118 ]
  %3129 = sext i32 %3128 to i64
  %3130 = getelementptr inbounds i8, ptr %3054, i64 %3129
  store i8 0, ptr %3130, align 1, !tbaa !17
  %3131 = load i8, ptr %3054, align 1, !tbaa !17
  %3132 = icmp eq i8 %3131, 0
  br i1 %3132, label %3144, label %3133

3133:                                             ; preds = %3133, %3127
  %3134 = phi i64 [ %3140, %3133 ], [ 0, %3127 ]
  %3135 = phi i8 [ %3142, %3133 ], [ %3131, %3127 ]
  %3136 = phi i32 [ %3139, %3133 ], [ 0, %3127 ]
  %3137 = mul nsw i32 %3136, 53
  %3138 = sext i8 %3135 to i32
  %3139 = add nsw i32 %3137, %3138
  %3140 = add nuw nsw i64 %3134, 1
  %3141 = getelementptr inbounds i8, ptr %3054, i64 %3140
  %3142 = load i8, ptr %3141, align 1, !tbaa !17
  %3143 = icmp eq i8 %3142, 0
  br i1 %3143, label %3144, label %3133, !llvm.loop !233

3144:                                             ; preds = %3133, %3127
  %3145 = phi i32 [ 0, %3127 ], [ %3139, %3133 ]
  %3146 = and i32 %3145, 2147483647
  %3147 = srem i32 %3146, %3018
  %3148 = zext i32 %3147 to i64
  %3149 = getelementptr inbounds ptr, ptr %3020, i64 %3148
  %3150 = load ptr, ptr %3149, align 8, !tbaa !7
  %3151 = icmp eq ptr %3150, null
  br i1 %3151, label %3167, label %3152

3152:                                             ; preds = %3158, %3144
  %3153 = phi ptr [ %3163, %3158 ], [ %3150, %3144 ]
  %3154 = phi i32 [ %3160, %3158 ], [ %3147, %3144 ]
  %3155 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %3153, ptr noundef nonnull dereferenceable(1) %3054) #29
  %3156 = icmp eq i32 %3155, 0
  %3157 = add nsw i32 %3154, 1
  br i1 %3156, label %3165, label %3158

3158:                                             ; preds = %3152
  %3159 = icmp slt i32 %3157, %3018
  %3160 = select i1 %3159, i32 %3157, i32 0
  %3161 = sext i32 %3160 to i64
  %3162 = getelementptr inbounds ptr, ptr %3020, i64 %3161
  %3163 = load ptr, ptr %3162, align 8, !tbaa !7
  %3164 = icmp eq ptr %3163, null
  br i1 %3164, label %3167, label %3152, !llvm.loop !234

3165:                                             ; preds = %3152
  %.lcssa25 = phi i32 [ %3157, %3152 ]
  %3166 = getelementptr inbounds %struct.symbol, ptr %3071, i64 0, i32 13
  store i32 %.lcssa25, ptr %3166, align 8, !tbaa !229
  br label %3182

3167:                                             ; preds = %3158, %3144
  %3168 = phi i64 [ %3148, %3144 ], [ %3161, %3158 ]
  %3169 = phi i32 [ %3147, %3144 ], [ %3160, %3158 ]
  %3170 = getelementptr inbounds ptr, ptr %3020, i64 %3168
  %3171 = add nsw i32 %3169, 1
  %3172 = getelementptr inbounds %struct.symbol, ptr %3071, i64 0, i32 13
  store i32 %3171, ptr %3172, align 8, !tbaa !229
  %3173 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3054) #29
  %3174 = add i64 %3173, 1
  %3175 = call noalias ptr @malloc(i64 noundef %3174) #33
  store ptr %3175, ptr %3170, align 8, !tbaa !7
  %3176 = icmp eq ptr %3175, null
  br i1 %3176, label %3177, label %3180

3177:                                             ; preds = %3167
  %3178 = load ptr, ptr @stderr, align 8, !tbaa !7
  %3179 = call i64 @fwrite(ptr nonnull @.str.102, i64 15, i64 1, ptr %3178) #32
  call void @exit(i32 noundef 1) #31
  unreachable

3180:                                             ; preds = %3167
  %3181 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %3175, ptr noundef nonnull dereferenceable(1) %3054) #26
  br label %3182

3182:                                             ; preds = %3180, %3165, %3086, %3073
  %3183 = add nuw nsw i64 %3069, 1
  %3184 = icmp eq i64 %3183, %3063
  br i1 %3184, label %3185, label %3068, !llvm.loop !235

3185:                                             ; preds = %3182, %3058
  %3186 = load ptr, ptr %2942, align 8, !tbaa !221
  %3187 = icmp eq ptr %3186, null
  %3188 = select i1 %3187, ptr @.str.83, ptr %3186
  br i1 %2948, label %3192, label %3189

3189:                                             ; preds = %3185
  %3190 = call i64 @fwrite(ptr nonnull @.str.103, i64 14, i64 1, ptr %2937)
  %3191 = add nsw i32 %3016, 1
  br label %3192

3192:                                             ; preds = %3189, %3185
  %3193 = phi i32 [ %3191, %3189 ], [ %3016, %3185 ]
  %3194 = getelementptr inbounds %struct.lemon, ptr %11, i64 0, i32 12
  %3195 = load ptr, ptr %3194, align 8, !tbaa !236
  %3196 = icmp eq ptr %3195, null
  %3197 = select i1 %3196, ptr @.str.105, ptr %3195
  %3198 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2937, ptr noundef nonnull @.str.104, ptr noundef nonnull %3188, ptr noundef nonnull %3197) #27
  %3199 = add nsw i32 %3193, 1
  br i1 %2948, label %3203, label %3200

3200:                                             ; preds = %3192
  %3201 = call i64 @fwrite(ptr nonnull @.str.106, i64 7, i64 1, ptr %2937)
  %3202 = add nsw i32 %3193, 2
  br label %3203

3203:                                             ; preds = %3200, %3192
  %3204 = phi i32 [ %3202, %3200 ], [ %3199, %3192 ]
  %3205 = call i64 @fwrite(ptr nonnull @.str.107, i64 16, i64 1, ptr %2937)
  %3206 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2937, ptr noundef nonnull @.str.108, ptr noundef nonnull %3188) #27
  %3207 = add nsw i32 %3204, 2
  br i1 %3021, label %3208, label %3225

3208:                                             ; preds = %3203
  %3209 = call i32 @llvm.smax.i32(i32 %3018, i32 1)
  %3210 = zext i32 %3209 to i64
  br label %3211

3211:                                             ; preds = %3222, %3208
  %3212 = phi i64 [ 0, %3208 ], [ %3217, %3222 ]
  %3213 = phi i32 [ %3207, %3208 ], [ %3223, %3222 ]
  %3214 = getelementptr inbounds ptr, ptr %3020, i64 %3212
  %3215 = load ptr, ptr %3214, align 8, !tbaa !7
  %3216 = icmp eq ptr %3215, null
  %3217 = add nuw nsw i64 %3212, 1
  br i1 %3216, label %3222, label %3218

3218:                                             ; preds = %3211
  %3219 = trunc i64 %3217 to i32
  %3220 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2937, ptr noundef nonnull @.str.109, ptr noundef nonnull %3215, i32 noundef %3219) #27
  %3221 = add nsw i32 %3213, 1
  call void @free(ptr noundef nonnull %3215) #26
  br label %3222

3222:                                             ; preds = %3218, %3211
  %3223 = phi i32 [ %3221, %3218 ], [ %3213, %3211 ]
  %3224 = icmp eq i64 %3217, %3210
  br i1 %3224, label %3225, label %3211, !llvm.loop !237

3225:                                             ; preds = %3222, %3203
  %3226 = phi i32 [ %3207, %3203 ], [ %3223, %3222 ]
  %3227 = load ptr, ptr %335, align 8, !tbaa !51
  %3228 = getelementptr inbounds %struct.symbol, ptr %3227, i64 0, i32 9
  %3229 = load i32, ptr %3228, align 4, !tbaa !52
  %3230 = icmp eq i32 %3229, 0
  br i1 %3230, label %3236, label %3231

3231:                                             ; preds = %3225
  %3232 = getelementptr inbounds %struct.symbol, ptr %3227, i64 0, i32 13
  %3233 = load i32, ptr %3232, align 8, !tbaa !229
  %3234 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2937, ptr noundef nonnull @.str.110, i32 noundef %3233) #27
  %3235 = add nsw i32 %3226, 1
  br label %3236

3236:                                             ; preds = %3231, %3225
  %3237 = phi i32 [ %3235, %3231 ], [ %3226, %3225 ]
  call void @free(ptr noundef %3054) #26
  call void @free(ptr noundef %3020) #26
  %3238 = call i64 @fwrite(ptr nonnull @.str.111, i64 15, i64 1, ptr %2937)
  %3239 = add nsw i32 %3237, 1
  store i32 %3239, ptr %8, align 4, !tbaa !11
  %3240 = call i64 @fwrite(ptr nonnull @.str.120, i64 21, i64 1, ptr %2937)
  %3241 = getelementptr inbounds %struct.lemon, ptr %11, i64 0, i32 15
  %3242 = load ptr, ptr %3241, align 8, !tbaa !238
  %3243 = icmp eq ptr %3242, null
  br i1 %3243, label %3246, label %3244

3244:                                             ; preds = %3236
  %3245 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2937, ptr noundef nonnull @.str.121, ptr noundef nonnull %3242) #27
  br label %3248

3246:                                             ; preds = %3236
  %3247 = call i64 @fwrite(ptr nonnull @.str.122, i64 25, i64 1, ptr %2937)
  br label %3248

3248:                                             ; preds = %3246, %3244
  %3249 = call i64 @fwrite(ptr nonnull @.str.106, i64 7, i64 1, ptr %2937)
  %3250 = add nsw i32 %3237, 4
  br i1 %2948, label %3254, label %3251

3251:                                             ; preds = %3248
  %3252 = call i64 @fwrite(ptr nonnull @.str.103, i64 14, i64 1, ptr %2937)
  %3253 = add nsw i32 %3237, 5
  br label %3254

3254:                                             ; preds = %3251, %3248
  %3255 = phi i32 [ %3253, %3251 ], [ %3250, %3248 ]
  %3256 = load ptr, ptr %2942, align 8, !tbaa !221
  %3257 = icmp eq ptr %3256, null
  %3258 = select i1 %3257, ptr @.str.83, ptr %3256
  %3259 = getelementptr inbounds %struct.lemon, ptr %11, i64 0, i32 11
  %3260 = load ptr, ptr %3259, align 8, !tbaa !239
  %3261 = icmp eq ptr %3260, null
  br i1 %3261, label %3316, label %3262

3262:                                             ; preds = %3254
  %3263 = load i8, ptr %3260, align 1, !tbaa !17
  %3264 = icmp eq i8 %3263, 0
  br i1 %3264, label %3316, label %3265

3265:                                             ; preds = %3262
  %3266 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3260) #29
  %3267 = trunc i64 %3266 to i32
  %3268 = and i64 %3266, 4294967295
  %3269 = call i32 @llvm.smin.i32(i32 %3267, i32 0)
  br label %3270

3270:                                             ; preds = %3274, %3265
  %3271 = phi i64 [ %3276, %3274 ], [ %3268, %3265 ]
  %3272 = trunc i64 %3271 to i32
  %3273 = icmp sgt i32 %3272, 0
  br i1 %3273, label %3274, label %3284

3274:                                             ; preds = %3270
  %3275 = load ptr, ptr %1543, align 8, !tbaa !7
  %3276 = add nsw i64 %3271, -1
  %3277 = getelementptr inbounds i8, ptr %3260, i64 %3276
  %3278 = load i8, ptr %3277, align 1, !tbaa !17
  %3279 = sext i8 %3278 to i64
  %3280 = getelementptr inbounds i16, ptr %3275, i64 %3279
  %3281 = load i16, ptr %3280, align 2, !tbaa !58
  %3282 = and i16 %3281, 8192
  %3283 = icmp eq i16 %3282, 0
  br i1 %3283, label %3284, label %3270, !llvm.loop !240

3284:                                             ; preds = %3274, %3270
  %3285 = phi i32 [ %3269, %3270 ], [ %3272, %3274 ]
  %3286 = zext i32 %3285 to i64
  %3287 = call i32 @llvm.smin.i32(i32 %3285, i32 0)
  br label %3288

3288:                                             ; preds = %3292, %3284
  %3289 = phi i64 [ %3294, %3292 ], [ %3286, %3284 ]
  %3290 = trunc i64 %3289 to i32
  %3291 = icmp sgt i32 %3290, 0
  br i1 %3291, label %3292, label %3304

3292:                                             ; preds = %3288
  %3293 = load ptr, ptr %1543, align 8, !tbaa !7
  %3294 = add nsw i64 %3289, -1
  %3295 = getelementptr inbounds i8, ptr %3260, i64 %3294
  %3296 = load i8, ptr %3295, align 1, !tbaa !17
  %3297 = sext i8 %3296 to i64
  %3298 = getelementptr inbounds i16, ptr %3293, i64 %3297
  %3299 = load i16, ptr %3298, align 2, !tbaa !58
  %3300 = and i16 %3299, 8
  %3301 = icmp ne i16 %3300, 0
  %3302 = icmp eq i8 %3296, 95
  %3303 = or i1 %3302, %3301
  br i1 %3303, label %3288, label %3304, !llvm.loop !241

3304:                                             ; preds = %3292, %3288
  %3305 = phi i32 [ %3290, %3292 ], [ %3287, %3288 ]
  %3306 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2937, ptr noundef nonnull @.str.123, ptr noundef nonnull %3258, ptr noundef nonnull %3260) #27
  %3307 = load ptr, ptr %3259, align 8, !tbaa !239
  %3308 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2937, ptr noundef nonnull @.str.124, ptr noundef nonnull %3258, ptr noundef %3307) #27
  %3309 = load ptr, ptr %3259, align 8, !tbaa !239
  %3310 = sext i32 %3305 to i64
  %3311 = getelementptr inbounds i8, ptr %3309, i64 %3310
  %3312 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2937, ptr noundef nonnull @.str.125, ptr noundef nonnull %3258, ptr noundef %3309, ptr noundef %3311) #27
  %3313 = load ptr, ptr %3259, align 8, !tbaa !239
  %3314 = getelementptr inbounds i8, ptr %3313, i64 %3310
  %3315 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2937, ptr noundef nonnull @.str.126, ptr noundef nonnull %3258, ptr noundef %3314, ptr noundef %3314) #27
  br label %3321

3316:                                             ; preds = %3262, %3254
  %3317 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2937, ptr noundef nonnull @.str.127, ptr noundef nonnull %3258) #27
  %3318 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2937, ptr noundef nonnull @.str.128, ptr noundef nonnull %3258) #27
  %3319 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2937, ptr noundef nonnull @.str.129, ptr noundef nonnull %3258) #27
  %3320 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2937, ptr noundef nonnull @.str.130, ptr noundef nonnull %3258) #27
  br label %3321

3321:                                             ; preds = %3316, %3304
  %3322 = add nsw i32 %3255, 4
  br i1 %2948, label %3326, label %3323

3323:                                             ; preds = %3321
  %3324 = call i64 @fwrite(ptr nonnull @.str.106, i64 7, i64 1, ptr %2937)
  %3325 = add nsw i32 %3255, 5
  br label %3326

3326:                                             ; preds = %3323, %3321
  %3327 = phi i32 [ %3325, %3323 ], [ %3322, %3321 ]
  %3328 = load i32, ptr %1937, align 8, !tbaa !146
  %3329 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2937, ptr noundef nonnull @.str.131, i32 noundef %3328) #27
  %3330 = load i32, ptr %1481, align 4, !tbaa !81
  %3331 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2937, ptr noundef nonnull @.str.132, i32 noundef %3330) #27
  %3332 = add nsw i32 %3327, 2
  store i32 %3332, ptr %8, align 4, !tbaa !11
  %3333 = load ptr, ptr %335, align 8, !tbaa !51
  %3334 = getelementptr inbounds %struct.symbol, ptr %3333, i64 0, i32 9
  %3335 = load i32, ptr %3334, align 4, !tbaa !52
  %3336 = icmp eq i32 %3335, 0
  br i1 %3336, label %3346, label %3337

3337:                                             ; preds = %3326
  %3338 = getelementptr inbounds %struct.symbol, ptr %3333, i64 0, i32 1
  %3339 = load i32, ptr %3338, align 8, !tbaa !122
  %3340 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2937, ptr noundef nonnull @.str.133, i32 noundef %3339) #27
  %3341 = load ptr, ptr %335, align 8, !tbaa !51
  %3342 = getelementptr inbounds %struct.symbol, ptr %3341, i64 0, i32 13
  %3343 = load i32, ptr %3342, align 8, !tbaa !229
  %3344 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2937, ptr noundef nonnull @.str.134, i32 noundef %3343) #27
  %3345 = add nsw i32 %3327, 4
  store i32 %3345, ptr %8, align 4, !tbaa !11
  br label %3346

3346:                                             ; preds = %3337, %3326
  %3347 = phi i32 [ %3345, %3337 ], [ %3332, %3326 ]
  %3348 = getelementptr inbounds %struct.lemon, ptr %11, i64 0, i32 38
  %3349 = load i32, ptr %3348, align 4, !tbaa !113
  %3350 = icmp eq i32 %3349, 0
  br i1 %3350, label %3354, label %3351

3351:                                             ; preds = %3346
  %3352 = call i64 @fwrite(ptr nonnull @.str.135, i64 21, i64 1, ptr %2937)
  %3353 = add nsw i32 %3347, 1
  store i32 %3353, ptr %8, align 4, !tbaa !11
  br label %3354

3354:                                             ; preds = %3351, %3346
  %3355 = load ptr, ptr %2942, align 8, !tbaa !221
  call fastcc void @tplt_xfer(ptr noundef %3355, ptr noundef nonnull %2928, ptr noundef %2937, ptr noundef nonnull %8) #27
  %3356 = load i32, ptr %1937, align 8, !tbaa !146
  %3357 = shl nsw i32 %3356, 1
  %3358 = sext i32 %3357 to i64
  %3359 = call noalias ptr @calloc(i64 noundef %3358, i64 noundef 16) #34
  %3360 = icmp eq ptr %3359, null
  br i1 %3360, label %3366, label %3361

3361:                                             ; preds = %3354
  %3362 = icmp sgt i32 %3356, 0
  br i1 %3362, label %3363, label %3387

3363:                                             ; preds = %3361
  %3364 = load ptr, ptr %11, align 8, !tbaa !163
  %3365 = zext i32 %3356 to i64
  br label %3369

3366:                                             ; preds = %3354
  %3367 = load ptr, ptr @stderr, align 8, !tbaa !7
  %3368 = call i64 @fwrite(ptr nonnull @.str.1, i64 14, i64 1, ptr %3367) #32
  call void @exit(i32 noundef 1) #31
  unreachable

3369:                                             ; preds = %3369, %3363
  %3370 = phi i64 [ 0, %3363 ], [ %3385, %3369 ]
  %3371 = getelementptr inbounds ptr, ptr %3364, i64 %3370
  %3372 = load ptr, ptr %3371, align 8, !tbaa !7
  %3373 = shl nuw nsw i64 %3370, 1
  %3374 = getelementptr inbounds %struct.axset, ptr %3359, i64 %3373
  store ptr %3372, ptr %3374, align 8, !tbaa !242
  %3375 = getelementptr inbounds %struct.axset, ptr %3359, i64 %3373, i32 1
  store i32 1, ptr %3375, align 8, !tbaa !244
  %3376 = getelementptr inbounds %struct.state, ptr %3372, i64 0, i32 4
  %3377 = load i32, ptr %3376, align 8, !tbaa !207
  %3378 = getelementptr inbounds %struct.axset, ptr %3359, i64 %3373, i32 2
  store i32 %3377, ptr %3378, align 4, !tbaa !245
  %3379 = or i64 %3373, 1
  %3380 = getelementptr inbounds %struct.axset, ptr %3359, i64 %3379
  store ptr %3372, ptr %3380, align 8, !tbaa !242
  %3381 = getelementptr inbounds %struct.axset, ptr %3359, i64 %3379, i32 1
  store i32 0, ptr %3381, align 8, !tbaa !244
  %3382 = getelementptr inbounds %struct.state, ptr %3372, i64 0, i32 5
  %3383 = load i32, ptr %3382, align 4, !tbaa !208
  %3384 = getelementptr inbounds %struct.axset, ptr %3359, i64 %3379, i32 2
  store i32 %3383, ptr %3384, align 4, !tbaa !245
  %3385 = add nuw nsw i64 %3370, 1
  %3386 = icmp eq i64 %3385, %3365
  br i1 %3386, label %3387, label %3369, !llvm.loop !246

3387:                                             ; preds = %3369, %3361
  call void @qsort(ptr noundef nonnull %3359, i64 noundef %3358, i64 noundef 16, ptr noundef nonnull @axset_compare) #26
  %3388 = call noalias dereferenceable_or_null(48) ptr @calloc(i64 noundef 1, i64 noundef 48) #34
  %3389 = icmp eq ptr %3388, null
  br i1 %3389, label %3390, label %3393

3390:                                             ; preds = %3387
  %3391 = load ptr, ptr @stderr, align 8, !tbaa !7
  %3392 = call i64 @fwrite(ptr nonnull @.str, i64 43, i64 1, ptr %3391) #32
  call void @exit(i32 noundef 1) #31
  unreachable

3393:                                             ; preds = %3387
  %3394 = load i32, ptr %1937, align 8, !tbaa !146
  %3395 = icmp sgt i32 %3394, 0
  br i1 %3395, label %3396, label %3469

3396:                                             ; preds = %3459, %3393
  %3397 = phi i64 [ %3464, %3459 ], [ 0, %3393 ]
  %3398 = phi i32 [ %3463, %3459 ], [ 0, %3393 ]
  %3399 = phi i32 [ %3462, %3459 ], [ 0, %3393 ]
  %3400 = phi i32 [ %3461, %3459 ], [ 0, %3393 ]
  %3401 = phi i32 [ %3460, %3459 ], [ 0, %3393 ]
  %3402 = getelementptr inbounds %struct.axset, ptr %3359, i64 %3397, i32 2
  %3403 = load i32, ptr %3402, align 4, !tbaa !245
  %3404 = icmp sgt i32 %3403, 0
  br i1 %3404, label %3405, label %3469

3405:                                             ; preds = %3396
  %3406 = getelementptr inbounds %struct.axset, ptr %3359, i64 %3397
  %3407 = load ptr, ptr %3406, align 8, !tbaa !242
  %3408 = getelementptr inbounds %struct.axset, ptr %3359, i64 %3397, i32 1
  %3409 = load i32, ptr %3408, align 8, !tbaa !244
  %3410 = icmp eq i32 %3409, 0
  %3411 = getelementptr inbounds %struct.state, ptr %3407, i64 0, i32 3
  %3412 = load ptr, ptr %3411, align 8, !tbaa !7
  %3413 = icmp eq ptr %3412, null
  br i1 %3410, label %3435, label %3414

3414:                                             ; preds = %3405
  br i1 %3413, label %3430, label %3415

3415:                                             ; preds = %3426, %3414
  %3416 = phi ptr [ %3428, %3426 ], [ %3412, %3414 ]
  %3417 = load ptr, ptr %3416, align 8, !tbaa !190
  %3418 = getelementptr inbounds %struct.symbol, ptr %3417, i64 0, i32 1
  %3419 = load i32, ptr %3418, align 8, !tbaa !122
  %3420 = load i32, ptr %1567, align 4, !tbaa !126
  %3421 = icmp slt i32 %3419, %3420
  br i1 %3421, label %3422, label %3426

3422:                                             ; preds = %3415
  %3423 = call fastcc i32 @compute_action(ptr noundef nonnull %11, ptr noundef nonnull %3416) #27
  %3424 = icmp slt i32 %3423, 0
  br i1 %3424, label %3426, label %3425

3425:                                             ; preds = %3422
  call fastcc void @acttab_action(ptr noundef nonnull %3388, i32 noundef %3419, i32 noundef %3423) #27
  br label %3426

3426:                                             ; preds = %3425, %3422, %3415
  %3427 = getelementptr inbounds %struct.action, ptr %3416, i64 0, i32 3
  %3428 = load ptr, ptr %3427, align 8, !tbaa !7
  %3429 = icmp eq ptr %3428, null
  br i1 %3429, label %3430, label %3415, !llvm.loop !247

3430:                                             ; preds = %3426, %3414
  %3431 = call fastcc i32 @acttab_insert(ptr noundef nonnull %3388) #27
  %3432 = getelementptr inbounds %struct.state, ptr %3407, i64 0, i32 6
  store i32 %3431, ptr %3432, align 8, !tbaa !248
  %3433 = call i32 @llvm.smin.i32(i32 %3431, i32 %3398)
  %3434 = call i32 @llvm.smax.i32(i32 %3431, i32 %3399)
  br label %3459

3435:                                             ; preds = %3405
  br i1 %3413, label %3454, label %3436

3436:                                             ; preds = %3450, %3435
  %3437 = phi ptr [ %3452, %3450 ], [ %3412, %3435 ]
  %3438 = load ptr, ptr %3437, align 8, !tbaa !190
  %3439 = getelementptr inbounds %struct.symbol, ptr %3438, i64 0, i32 1
  %3440 = load i32, ptr %3439, align 8, !tbaa !122
  %3441 = load i32, ptr %1567, align 4, !tbaa !126
  %3442 = icmp slt i32 %3440, %3441
  %3443 = load i32, ptr %1495, align 8
  %3444 = icmp eq i32 %3440, %3443
  %3445 = select i1 %3442, i1 true, i1 %3444
  br i1 %3445, label %3450, label %3446

3446:                                             ; preds = %3436
  %3447 = call fastcc i32 @compute_action(ptr noundef nonnull %11, ptr noundef nonnull %3437) #27
  %3448 = icmp slt i32 %3447, 0
  br i1 %3448, label %3450, label %3449

3449:                                             ; preds = %3446
  call fastcc void @acttab_action(ptr noundef nonnull %3388, i32 noundef %3440, i32 noundef %3447) #27
  br label %3450

3450:                                             ; preds = %3449, %3446, %3436
  %3451 = getelementptr inbounds %struct.action, ptr %3437, i64 0, i32 3
  %3452 = load ptr, ptr %3451, align 8, !tbaa !7
  %3453 = icmp eq ptr %3452, null
  br i1 %3453, label %3454, label %3436, !llvm.loop !249

3454:                                             ; preds = %3450, %3435
  %3455 = call fastcc i32 @acttab_insert(ptr noundef nonnull %3388) #27
  %3456 = getelementptr inbounds %struct.state, ptr %3407, i64 0, i32 7
  store i32 %3455, ptr %3456, align 4, !tbaa !250
  %3457 = call i32 @llvm.smin.i32(i32 %3455, i32 %3400)
  %3458 = call i32 @llvm.smax.i32(i32 %3455, i32 %3401)
  br label %3459

3459:                                             ; preds = %3454, %3430
  %3460 = phi i32 [ %3401, %3430 ], [ %3458, %3454 ]
  %3461 = phi i32 [ %3400, %3430 ], [ %3457, %3454 ]
  %3462 = phi i32 [ %3434, %3430 ], [ %3399, %3454 ]
  %3463 = phi i32 [ %3433, %3430 ], [ %3398, %3454 ]
  %3464 = add nuw nsw i64 %3397, 1
  %3465 = load i32, ptr %1937, align 8, !tbaa !146
  %3466 = shl nsw i32 %3465, 1
  %3467 = sext i32 %3466 to i64
  %3468 = icmp slt i64 %3464, %3467
  br i1 %3468, label %3396, label %3469, !llvm.loop !251

3469:                                             ; preds = %3459, %3396, %3393
  %3470 = phi i32 [ 0, %3393 ], [ %3460, %3459 ], [ %3401, %3396 ]
  %3471 = phi i32 [ 0, %3393 ], [ %3461, %3459 ], [ %3400, %3396 ]
  %3472 = phi i32 [ 0, %3393 ], [ %3462, %3459 ], [ %3399, %3396 ]
  %3473 = phi i32 [ 0, %3393 ], [ %3463, %3459 ], [ %3398, %3396 ]
  call void @free(ptr noundef %3359) #26
  %3474 = call i64 @fwrite(ptr nonnull @.str.136, i64 42, i64 1, ptr %2937)
  %3475 = load i32, ptr %8, align 4, !tbaa !11
  %3476 = add nsw i32 %3475, 1
  %3477 = load i32, ptr %3388, align 8, !tbaa !252
  %3478 = icmp sgt i32 %3477, 0
  br i1 %3478, label %3479, label %3519

3479:                                             ; preds = %3469
  %3480 = getelementptr inbounds %struct.acttab, ptr %3388, i64 0, i32 2
  %3481 = load ptr, ptr %3480, align 8, !tbaa !254
  %3482 = add nsw i32 %3477, -1
  %3483 = zext i32 %3482 to i64
  %3484 = zext i32 %3477 to i64
  br label %3485

3485:                                             ; preds = %3512, %3479
  %3486 = phi i32 [ %3476, %3479 ], [ %3513, %3512 ]
  %3487 = phi i64 [ 0, %3479 ], [ %3516, %3512 ]
  %3488 = phi i32 [ 0, %3479 ], [ %3515, %3512 ]
  %3489 = phi i32 [ %3476, %3479 ], [ %3514, %3512 ]
  %3490 = getelementptr inbounds %struct.anon, ptr %3481, i64 %3487, i32 1
  %3491 = load i32, ptr %3490, align 4, !tbaa !255
  %3492 = icmp slt i32 %3491, 0
  %3493 = load i32, ptr %1937, align 8
  %3494 = load i32, ptr %1481, align 4
  %3495 = add i32 %3493, 2
  %3496 = add i32 %3495, %3494
  %3497 = select i1 %3492, i32 %3496, i32 %3491
  %3498 = icmp eq i32 %3488, 0
  br i1 %3498, label %3499, label %3502

3499:                                             ; preds = %3485
  %3500 = trunc i64 %3487 to i32
  %3501 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2937, ptr noundef nonnull @.str.137, i32 noundef %3500) #27
  br label %3502

3502:                                             ; preds = %3499, %3485
  %3503 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2937, ptr noundef nonnull @.str.138, i32 noundef %3497) #27
  %3504 = icmp eq i32 %3488, 9
  %3505 = icmp eq i64 %3487, %3483
  %3506 = select i1 %3504, i1 true, i1 %3505
  br i1 %3506, label %3507, label %3510

3507:                                             ; preds = %3502
  %3508 = call i32 @fputc(i32 10, ptr %2937)
  %3509 = add nsw i32 %3489, 1
  br label %3512

3510:                                             ; preds = %3502
  %3511 = add nsw i32 %3488, 1
  br label %3512

3512:                                             ; preds = %3510, %3507
  %3513 = phi i32 [ %3509, %3507 ], [ %3486, %3510 ]
  %3514 = phi i32 [ %3509, %3507 ], [ %3489, %3510 ]
  %3515 = phi i32 [ 0, %3507 ], [ %3511, %3510 ]
  %3516 = add nuw nsw i64 %3487, 1
  %3517 = icmp eq i64 %3516, %3484
  br i1 %3517, label %3518, label %3485, !llvm.loop !257

3518:                                             ; preds = %3512
  %.lcssa21 = phi i32 [ %3513, %3512 ]
  %.lcssa20 = phi i32 [ %3514, %3512 ]
  store i32 %.lcssa21, ptr %8, align 4, !tbaa !11
  br label %3519

3519:                                             ; preds = %3518, %3469
  %3520 = phi i32 [ %3476, %3469 ], [ %.lcssa20, %3518 ]
  %3521 = call i64 @fwrite(ptr nonnull @.str.139, i64 3, i64 1, ptr %2937)
  %3522 = call i64 @fwrite(ptr nonnull @.str.140, i64 43, i64 1, ptr %2937)
  %3523 = add nsw i32 %3520, 2
  br i1 %3478, label %3524, label %3560

3524:                                             ; preds = %3519
  %3525 = getelementptr inbounds %struct.acttab, ptr %3388, i64 0, i32 2
  %3526 = load ptr, ptr %3525, align 8, !tbaa !254
  %3527 = add nsw i32 %3477, -1
  %3528 = zext i32 %3527 to i64
  %3529 = zext i32 %3477 to i64
  br label %3530

3530:                                             ; preds = %3554, %3524
  %3531 = phi i32 [ %3523, %3524 ], [ %3555, %3554 ]
  %3532 = phi i64 [ 0, %3524 ], [ %3558, %3554 ]
  %3533 = phi i32 [ 0, %3524 ], [ %3557, %3554 ]
  %3534 = phi i32 [ %3523, %3524 ], [ %3556, %3554 ]
  %3535 = getelementptr inbounds %struct.anon, ptr %3526, i64 %3532
  %3536 = load i32, ptr %3535, align 4, !tbaa !258
  %3537 = icmp slt i32 %3536, 0
  %3538 = load i32, ptr %1495, align 8
  %3539 = select i1 %3537, i32 %3538, i32 %3536
  %3540 = icmp eq i32 %3533, 0
  br i1 %3540, label %3541, label %3544

3541:                                             ; preds = %3530
  %3542 = trunc i64 %3532 to i32
  %3543 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2937, ptr noundef nonnull @.str.137, i32 noundef %3542) #27
  br label %3544

3544:                                             ; preds = %3541, %3530
  %3545 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2937, ptr noundef nonnull @.str.138, i32 noundef %3539) #27
  %3546 = icmp eq i32 %3533, 9
  %3547 = icmp eq i64 %3532, %3528
  %3548 = select i1 %3546, i1 true, i1 %3547
  br i1 %3548, label %3549, label %3552

3549:                                             ; preds = %3544
  %3550 = call i32 @fputc(i32 10, ptr %2937)
  %3551 = add nsw i32 %3534, 1
  br label %3554

3552:                                             ; preds = %3544
  %3553 = add nsw i32 %3533, 1
  br label %3554

3554:                                             ; preds = %3552, %3549
  %3555 = phi i32 [ %3551, %3549 ], [ %3531, %3552 ]
  %3556 = phi i32 [ %3551, %3549 ], [ %3534, %3552 ]
  %3557 = phi i32 [ 0, %3549 ], [ %3553, %3552 ]
  %3558 = add nuw nsw i64 %3532, 1
  %3559 = icmp eq i64 %3558, %3529
  br i1 %3559, label %3560, label %3530, !llvm.loop !259

3560:                                             ; preds = %3554, %3519
  %3561 = phi i32 [ %3523, %3519 ], [ %3555, %3554 ]
  %3562 = phi i32 [ %3523, %3519 ], [ %3556, %3554 ]
  %3563 = call i64 @fwrite(ptr nonnull @.str.139, i64 3, i64 1, ptr %2937)
  %3564 = add nsw i32 %3473, -1
  %3565 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2937, ptr noundef nonnull @.str.141, i32 noundef %3564) #27
  %3566 = load i32, ptr %1937, align 8, !tbaa !146
  %3567 = zext i32 %3566 to i64
  %3568 = call i32 @llvm.smin.i32(i32 %3566, i32 0)
  %3569 = load ptr, ptr %11, align 8
  br label %3570

3570:                                             ; preds = %3574, %3560
  %3571 = phi i64 [ %3575, %3574 ], [ %3567, %3560 ]
  %3572 = trunc i64 %3571 to i32
  %3573 = icmp sgt i32 %3572, 0
  br i1 %3573, label %3574, label %3581

3574:                                             ; preds = %3570
  %3575 = add nsw i64 %3571, -1
  %3576 = getelementptr inbounds ptr, ptr %3569, i64 %3575
  %3577 = load ptr, ptr %3576, align 8, !tbaa !7
  %3578 = getelementptr inbounds %struct.state, ptr %3577, i64 0, i32 6
  %3579 = load i32, ptr %3578, align 8, !tbaa !248
  %3580 = icmp eq i32 %3579, -2147483647
  br i1 %3580, label %3570, label %3581, !llvm.loop !260

3581:                                             ; preds = %3574, %3570
  %3582 = phi i32 [ %3568, %3570 ], [ %3572, %3574 ]
  %3583 = add nsw i32 %3582, -1
  %3584 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2937, ptr noundef nonnull @.str.142, i32 noundef %3583) #27
  %3585 = icmp ugt i32 %3564, -128
  %3586 = icmp slt i32 %3472, 128
  %3587 = and i1 %3586, %3585
  %3588 = icmp ugt i32 %3564, -32768
  %3589 = icmp slt i32 %3472, 32767
  %3590 = and i1 %3589, %3588
  %3591 = select i1 %3590, ptr @.str.230, ptr @.str.231
  %3592 = select i1 %3587, ptr @.str.229, ptr %3591
  %3593 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2937, ptr noundef nonnull @.str.143, ptr noundef nonnull %3592) #27
  %3594 = add nsw i32 %3562, 4
  %3595 = icmp sgt i32 %3582, 0
  br i1 %3595, label %3596, label %3632

3596:                                             ; preds = %3581
  %3597 = zext i32 %3583 to i64
  %3598 = zext i32 %3582 to i64
  br label %3599

3599:                                             ; preds = %3625, %3596
  %3600 = phi i32 [ %3561, %3596 ], [ %3626, %3625 ]
  %3601 = phi i64 [ 0, %3596 ], [ %3629, %3625 ]
  %3602 = phi i32 [ 0, %3596 ], [ %3628, %3625 ]
  %3603 = phi i32 [ %3594, %3596 ], [ %3627, %3625 ]
  %3604 = load ptr, ptr %11, align 8, !tbaa !163
  %3605 = getelementptr inbounds ptr, ptr %3604, i64 %3601
  %3606 = load ptr, ptr %3605, align 8, !tbaa !7
  %3607 = getelementptr inbounds %struct.state, ptr %3606, i64 0, i32 6
  %3608 = load i32, ptr %3607, align 8, !tbaa !248
  %3609 = icmp eq i32 %3608, -2147483647
  %3610 = select i1 %3609, i32 %3564, i32 %3608
  %3611 = icmp eq i32 %3602, 0
  br i1 %3611, label %3612, label %3615

3612:                                             ; preds = %3599
  %3613 = trunc i64 %3601 to i32
  %3614 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2937, ptr noundef nonnull @.str.137, i32 noundef %3613) #27
  br label %3615

3615:                                             ; preds = %3612, %3599
  %3616 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2937, ptr noundef nonnull @.str.138, i32 noundef %3610) #27
  %3617 = icmp eq i32 %3602, 9
  %3618 = icmp eq i64 %3601, %3597
  %3619 = or i1 %3618, %3617
  br i1 %3619, label %3620, label %3623

3620:                                             ; preds = %3615
  %3621 = call i32 @fputc(i32 10, ptr %2937)
  %3622 = add nsw i32 %3603, 1
  br label %3625

3623:                                             ; preds = %3615
  %3624 = add nsw i32 %3602, 1
  br label %3625

3625:                                             ; preds = %3623, %3620
  %3626 = phi i32 [ %3622, %3620 ], [ %3600, %3623 ]
  %3627 = phi i32 [ %3622, %3620 ], [ %3603, %3623 ]
  %3628 = phi i32 [ 0, %3620 ], [ %3624, %3623 ]
  %3629 = add nuw nsw i64 %3601, 1
  %3630 = icmp eq i64 %3629, %3598
  br i1 %3630, label %3631, label %3599, !llvm.loop !261

3631:                                             ; preds = %3625
  %.lcssa19 = phi i32 [ %3626, %3625 ]
  %.lcssa18 = phi i32 [ %3627, %3625 ]
  store i32 %.lcssa19, ptr %8, align 4, !tbaa !11
  br label %3632

3632:                                             ; preds = %3631, %3581
  %3633 = phi i32 [ %3594, %3581 ], [ %.lcssa18, %3631 ]
  %3634 = call i64 @fwrite(ptr nonnull @.str.139, i64 3, i64 1, ptr %2937)
  %3635 = add nsw i32 %3471, -1
  %3636 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2937, ptr noundef nonnull @.str.144, i32 noundef %3635) #27
  %3637 = load i32, ptr %1937, align 8, !tbaa !146
  %3638 = zext i32 %3637 to i64
  %3639 = call i32 @llvm.smin.i32(i32 %3637, i32 0)
  %3640 = load ptr, ptr %11, align 8
  br label %3641

3641:                                             ; preds = %3645, %3632
  %3642 = phi i64 [ %3646, %3645 ], [ %3638, %3632 ]
  %3643 = trunc i64 %3642 to i32
  %3644 = icmp sgt i32 %3643, 0
  br i1 %3644, label %3645, label %3652

3645:                                             ; preds = %3641
  %3646 = add nsw i64 %3642, -1
  %3647 = getelementptr inbounds ptr, ptr %3640, i64 %3646
  %3648 = load ptr, ptr %3647, align 8, !tbaa !7
  %3649 = getelementptr inbounds %struct.state, ptr %3648, i64 0, i32 7
  %3650 = load i32, ptr %3649, align 4, !tbaa !250
  %3651 = icmp eq i32 %3650, -2147483647
  br i1 %3651, label %3641, label %3652, !llvm.loop !262

3652:                                             ; preds = %3645, %3641
  %3653 = phi i32 [ %3639, %3641 ], [ %3643, %3645 ]
  %3654 = add nsw i32 %3653, -1
  %3655 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2937, ptr noundef nonnull @.str.145, i32 noundef %3654) #27
  %3656 = icmp ugt i32 %3635, -128
  %3657 = icmp slt i32 %3470, 128
  %3658 = and i1 %3657, %3656
  %3659 = icmp ugt i32 %3635, -32768
  %3660 = icmp slt i32 %3470, 32767
  %3661 = and i1 %3660, %3659
  %3662 = select i1 %3661, ptr @.str.230, ptr @.str.231
  %3663 = select i1 %3658, ptr @.str.229, ptr %3662
  %3664 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2937, ptr noundef nonnull @.str.146, ptr noundef nonnull %3663) #27
  %3665 = add nsw i32 %3633, 4
  %3666 = icmp sgt i32 %3653, 0
  br i1 %3666, label %3667, label %3700

3667:                                             ; preds = %3652
  %3668 = zext i32 %3654 to i64
  %3669 = zext i32 %3653 to i64
  br label %3670

3670:                                             ; preds = %3695, %3667
  %3671 = phi i64 [ 0, %3667 ], [ %3698, %3695 ]
  %3672 = phi i32 [ 0, %3667 ], [ %3697, %3695 ]
  %3673 = phi i32 [ %3665, %3667 ], [ %3696, %3695 ]
  %3674 = load ptr, ptr %11, align 8, !tbaa !163
  %3675 = getelementptr inbounds ptr, ptr %3674, i64 %3671
  %3676 = load ptr, ptr %3675, align 8, !tbaa !7
  %3677 = getelementptr inbounds %struct.state, ptr %3676, i64 0, i32 7
  %3678 = load i32, ptr %3677, align 4, !tbaa !250
  %3679 = icmp eq i32 %3678, -2147483647
  %3680 = select i1 %3679, i32 %3635, i32 %3678
  %3681 = icmp eq i32 %3672, 0
  br i1 %3681, label %3682, label %3685

3682:                                             ; preds = %3670
  %3683 = trunc i64 %3671 to i32
  %3684 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2937, ptr noundef nonnull @.str.137, i32 noundef %3683) #27
  br label %3685

3685:                                             ; preds = %3682, %3670
  %3686 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2937, ptr noundef nonnull @.str.138, i32 noundef %3680) #27
  %3687 = icmp eq i32 %3672, 9
  %3688 = icmp eq i64 %3671, %3668
  %3689 = or i1 %3688, %3687
  br i1 %3689, label %3690, label %3693

3690:                                             ; preds = %3685
  %3691 = call i32 @fputc(i32 10, ptr %2937)
  %3692 = add nsw i32 %3673, 1
  br label %3695

3693:                                             ; preds = %3685
  %3694 = add nsw i32 %3672, 1
  br label %3695

3695:                                             ; preds = %3693, %3690
  %3696 = phi i32 [ %3692, %3690 ], [ %3673, %3693 ]
  %3697 = phi i32 [ 0, %3690 ], [ %3694, %3693 ]
  %3698 = add nuw nsw i64 %3671, 1
  %3699 = icmp eq i64 %3698, %3669
  br i1 %3699, label %3700, label %3670, !llvm.loop !263

3700:                                             ; preds = %3695, %3652
  %3701 = phi i32 [ %3665, %3652 ], [ %3696, %3695 ]
  %3702 = call i64 @fwrite(ptr nonnull @.str.139, i64 3, i64 1, ptr %2937)
  %3703 = call i64 @fwrite(ptr nonnull @.str.147, i64 43, i64 1, ptr %2937)
  %3704 = add nsw i32 %3701, 2
  %3705 = load i32, ptr %1937, align 8, !tbaa !146
  %3706 = icmp sgt i32 %3705, 0
  br i1 %3706, label %3707, label %3739

3707:                                             ; preds = %3700
  %3708 = add nsw i32 %3705, -1
  %3709 = zext i32 %3708 to i64
  %3710 = zext i32 %3705 to i64
  br label %3711

3711:                                             ; preds = %3734, %3707
  %3712 = phi i64 [ 0, %3707 ], [ %3737, %3734 ]
  %3713 = phi i32 [ 0, %3707 ], [ %3736, %3734 ]
  %3714 = phi i32 [ %3704, %3707 ], [ %3735, %3734 ]
  %3715 = load ptr, ptr %11, align 8, !tbaa !163
  %3716 = getelementptr inbounds ptr, ptr %3715, i64 %3712
  %3717 = load ptr, ptr %3716, align 8, !tbaa !7
  %3718 = icmp eq i32 %3713, 0
  br i1 %3718, label %3719, label %3722

3719:                                             ; preds = %3711
  %3720 = trunc i64 %3712 to i32
  %3721 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2937, ptr noundef nonnull @.str.137, i32 noundef %3720) #27
  br label %3722

3722:                                             ; preds = %3719, %3711
  %3723 = getelementptr inbounds %struct.state, ptr %3717, i64 0, i32 8
  %3724 = load i32, ptr %3723, align 8, !tbaa !206
  %3725 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2937, ptr noundef nonnull @.str.138, i32 noundef %3724) #27
  %3726 = icmp eq i32 %3713, 9
  %3727 = icmp eq i64 %3712, %3709
  %3728 = select i1 %3726, i1 true, i1 %3727
  br i1 %3728, label %3729, label %3732

3729:                                             ; preds = %3722
  %3730 = call i32 @fputc(i32 10, ptr %2937)
  %3731 = add nsw i32 %3714, 1
  br label %3734

3732:                                             ; preds = %3722
  %3733 = add nsw i32 %3713, 1
  br label %3734

3734:                                             ; preds = %3732, %3729
  %3735 = phi i32 [ %3731, %3729 ], [ %3714, %3732 ]
  %3736 = phi i32 [ 0, %3729 ], [ %3733, %3732 ]
  %3737 = add nuw nsw i64 %3712, 1
  %3738 = icmp eq i64 %3737, %3710
  br i1 %3738, label %3739, label %3711, !llvm.loop !264

3739:                                             ; preds = %3734, %3700
  %3740 = phi i32 [ %3704, %3700 ], [ %3735, %3734 ]
  %3741 = call i64 @fwrite(ptr nonnull @.str.139, i64 3, i64 1, ptr %2937)
  %3742 = add nsw i32 %3740, 1
  store i32 %3742, ptr %8, align 4, !tbaa !11
  %3743 = load ptr, ptr %2942, align 8, !tbaa !221
  call fastcc void @tplt_xfer(ptr noundef %3743, ptr noundef nonnull %2928, ptr noundef %2937, ptr noundef nonnull %8) #27
  %3744 = load i32, ptr %3348, align 4, !tbaa !113
  %3745 = icmp ne i32 %3744, 0
  %3746 = load i32, ptr %1567, align 4
  %3747 = icmp sgt i32 %3746, 0
  %3748 = select i1 %3745, i1 %3747, i1 false
  br i1 %3748, label %3749, label %3776

3749:                                             ; preds = %3739
  %3750 = load i32, ptr %8, align 4, !tbaa !11
  br label %3751

3751:                                             ; preds = %3769, %3749
  %3752 = phi i64 [ 0, %3749 ], [ %3771, %3769 ]
  %3753 = phi i32 [ %3750, %3749 ], [ %3770, %3769 ]
  %3754 = load ptr, ptr %1520, align 8, !tbaa !121
  %3755 = getelementptr inbounds ptr, ptr %3754, i64 %3752
  %3756 = load ptr, ptr %3755, align 8, !tbaa !7
  %3757 = getelementptr inbounds %struct.symbol, ptr %3756, i64 0, i32 4
  %3758 = load ptr, ptr %3757, align 8, !tbaa !112
  %3759 = icmp eq ptr %3758, null
  br i1 %3759, label %3760, label %3763

3760:                                             ; preds = %3751
  %3761 = load ptr, ptr %3756, align 8, !tbaa !89
  %3762 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2937, ptr noundef nonnull @.str.148, ptr noundef %3761) #27
  br label %3769

3763:                                             ; preds = %3751
  %3764 = getelementptr inbounds %struct.symbol, ptr %3758, i64 0, i32 1
  %3765 = load i32, ptr %3764, align 8, !tbaa !122
  %3766 = load ptr, ptr %3756, align 8, !tbaa !89
  %3767 = load ptr, ptr %3758, align 8, !tbaa !89
  %3768 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2937, ptr noundef nonnull @.str.149, i32 noundef %3765, ptr noundef %3766, ptr noundef %3767) #27
  br label %3769

3769:                                             ; preds = %3763, %3760
  %3770 = add nsw i32 %3753, 1
  %3771 = add nuw nsw i64 %3752, 1
  %3772 = load i32, ptr %1567, align 4, !tbaa !126
  %3773 = sext i32 %3772 to i64
  %3774 = icmp slt i64 %3771, %3773
  br i1 %3774, label %3751, label %3775, !llvm.loop !265

3775:                                             ; preds = %3769
  %.lcssa17 = phi i32 [ %3770, %3769 ]
  store i32 %.lcssa17, ptr %8, align 4, !tbaa !11
  br label %3776

3776:                                             ; preds = %3775, %3739
  %3777 = load ptr, ptr %2942, align 8, !tbaa !221
  call fastcc void @tplt_xfer(ptr noundef %3777, ptr noundef nonnull %2928, ptr noundef %2937, ptr noundef nonnull %8) #27
  %3778 = load i32, ptr %1495, align 8, !tbaa !117
  %3779 = icmp sgt i32 %3778, 0
  br i1 %3779, label %3780, label %3808

3780:                                             ; preds = %3776
  %3781 = load i32, ptr %8, align 4, !tbaa !11
  br label %3782

3782:                                             ; preds = %3796, %3780
  %3783 = phi i32 [ %3781, %3780 ], [ %3797, %3796 ]
  %3784 = phi i64 [ 0, %3780 ], [ %3798, %3796 ]
  %3785 = load ptr, ptr %1520, align 8, !tbaa !121
  %3786 = getelementptr inbounds ptr, ptr %3785, i64 %3784
  %3787 = load ptr, ptr %3786, align 8, !tbaa !7
  %3788 = load ptr, ptr %3787, align 8, !tbaa !89
  %3789 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(1) @.str.150, ptr noundef %3788) #26
  %3790 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2937, ptr noundef nonnull @.str.151, ptr noundef nonnull %7) #27
  %3791 = and i64 %3784, 3
  %3792 = icmp eq i64 %3791, 3
  br i1 %3792, label %3793, label %3796

3793:                                             ; preds = %3782
  %3794 = call i32 @fputc(i32 10, ptr %2937)
  %3795 = add nsw i32 %3783, 1
  br label %3796

3796:                                             ; preds = %3793, %3782
  %3797 = phi i32 [ %3783, %3782 ], [ %3795, %3793 ]
  %3798 = add nuw nsw i64 %3784, 1
  %3799 = load i32, ptr %1495, align 8, !tbaa !117
  %3800 = sext i32 %3799 to i64
  %3801 = icmp slt i64 %3798, %3800
  br i1 %3801, label %3782, label %3802, !llvm.loop !266

3802:                                             ; preds = %3796
  %.lcssa16 = phi i32 [ %3797, %3796 ]
  %.lcssa15 = phi i64 [ %3798, %3796 ]
  store i32 %.lcssa16, ptr %8, align 4, !tbaa !11
  %3803 = and i64 %.lcssa15, 3
  %3804 = icmp eq i64 %3803, 0
  br i1 %3804, label %3808, label %3805

3805:                                             ; preds = %3802
  %3806 = call i32 @fputc(i32 10, ptr %2937)
  %3807 = add nsw i32 %.lcssa16, 1
  store i32 %3807, ptr %8, align 4, !tbaa !11
  br label %3808

3808:                                             ; preds = %3805, %3802, %3776
  %3809 = load ptr, ptr %2942, align 8, !tbaa !221
  call fastcc void @tplt_xfer(ptr noundef %3809, ptr noundef nonnull %2928, ptr noundef %2937, ptr noundef nonnull %8) #27
  %3810 = load ptr, ptr %1684, align 8, !tbaa !7
  %3811 = icmp eq ptr %3810, null
  br i1 %3811, label %3826, label %3812

3812:                                             ; preds = %3808
  %3813 = load i32, ptr %8, align 4, !tbaa !11
  br label %3814

3814:                                             ; preds = %3814, %3812
  %3815 = phi i32 [ %3820, %3814 ], [ %3813, %3812 ]
  %3816 = phi ptr [ %3823, %3814 ], [ %3810, %3812 ]
  %3817 = phi i32 [ %3822, %3814 ], [ 0, %3812 ]
  %3818 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2937, ptr noundef nonnull @.str.152, i32 noundef %3817) #27
  call fastcc void @writeRuleText(ptr noundef %2937, ptr noundef nonnull %3816) #27
  %3819 = call i64 @fwrite(ptr nonnull @.str.153, i64 3, i64 1, ptr %2937)
  %3820 = add nsw i32 %3815, 1
  %3821 = getelementptr inbounds %struct.rule, ptr %3816, i64 0, i32 13
  %3822 = add nuw nsw i32 %3817, 1
  %3823 = load ptr, ptr %3821, align 8, !tbaa !7
  %3824 = icmp eq ptr %3823, null
  br i1 %3824, label %3825, label %3814, !llvm.loop !267

3825:                                             ; preds = %3814
  %.lcssa14 = phi i32 [ %3820, %3814 ]
  store i32 %.lcssa14, ptr %8, align 4, !tbaa !11
  br label %3826

3826:                                             ; preds = %3825, %3808
  %3827 = load ptr, ptr %2942, align 8, !tbaa !221
  call fastcc void @tplt_xfer(ptr noundef %3827, ptr noundef nonnull %2928, ptr noundef %2937, ptr noundef nonnull %8) #27
  %3828 = getelementptr inbounds %struct.lemon, ptr %11, i64 0, i32 28
  %3829 = load ptr, ptr %3828, align 8, !tbaa !268
  %3830 = icmp ne ptr %3829, null
  %3831 = load i32, ptr %1495, align 8, !tbaa !117
  %3832 = icmp sgt i32 %3831, 0
  %3833 = select i1 %3830, i1 %3832, i1 false
  br i1 %3833, label %3834, label %3884

3834:                                             ; preds = %3826
  %3835 = load i32, ptr %8, align 4, !tbaa !11
  br label %3841

3836:                                             ; preds = %3860
  %.lcssa13 = phi i32 [ %3861, %3860 ]
  %.lcssa12 = phi i32 [ %3862, %3860 ]
  store i32 %.lcssa13, ptr %8, align 4, !tbaa !11
  %3837 = icmp sgt i32 %.lcssa12, 0
  br i1 %3837, label %3838, label %3884

3838:                                             ; preds = %3836
  %3839 = load ptr, ptr %1520, align 8, !tbaa !121
  %3840 = zext i32 %.lcssa12 to i64
  br label %3866

3841:                                             ; preds = %3860, %3834
  %3842 = phi i32 [ %3835, %3834 ], [ %3861, %3860 ]
  %3843 = phi i32 [ %3831, %3834 ], [ %3862, %3860 ]
  %3844 = phi i64 [ 0, %3834 ], [ %3863, %3860 ]
  %3845 = load ptr, ptr %1520, align 8, !tbaa !121
  %3846 = getelementptr inbounds ptr, ptr %3845, i64 %3844
  %3847 = load ptr, ptr %3846, align 8, !tbaa !7
  %3848 = icmp eq ptr %3847, null
  br i1 %3848, label %3860, label %3849

3849:                                             ; preds = %3841
  %3850 = getelementptr inbounds %struct.symbol, ptr %3847, i64 0, i32 2
  %3851 = load i32, ptr %3850, align 4, !tbaa !102
  %3852 = icmp eq i32 %3851, 0
  br i1 %3852, label %3853, label %3860

3853:                                             ; preds = %3849
  %3854 = getelementptr inbounds %struct.symbol, ptr %3847, i64 0, i32 1
  %3855 = load i32, ptr %3854, align 8, !tbaa !122
  %3856 = load ptr, ptr %3847, align 8, !tbaa !89
  %3857 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2937, ptr noundef nonnull @.str.154, i32 noundef %3855, ptr noundef %3856) #27
  %3858 = add nsw i32 %3842, 1
  %3859 = load i32, ptr %1495, align 8, !tbaa !117
  br label %3860

3860:                                             ; preds = %3853, %3849, %3841
  %3861 = phi i32 [ %3842, %3841 ], [ %3842, %3849 ], [ %3858, %3853 ]
  %3862 = phi i32 [ %3843, %3841 ], [ %3843, %3849 ], [ %3859, %3853 ]
  %3863 = add nuw nsw i64 %3844, 1
  %3864 = sext i32 %3862 to i64
  %3865 = icmp slt i64 %3863, %3864
  br i1 %3865, label %3841, label %3836, !llvm.loop !269

3866:                                             ; preds = %3873, %3838
  %3867 = phi i64 [ 0, %3838 ], [ %3874, %3873 ]
  %3868 = getelementptr inbounds ptr, ptr %3839, i64 %3867
  %3869 = load ptr, ptr %3868, align 8, !tbaa !7
  %3870 = getelementptr inbounds %struct.symbol, ptr %3869, i64 0, i32 2
  %3871 = load i32, ptr %3870, align 4, !tbaa !102
  %3872 = icmp eq i32 %3871, 0
  br i1 %3872, label %3876, label %3873

3873:                                             ; preds = %3866
  %3874 = add nuw nsw i64 %3867, 1
  %3875 = icmp eq i64 %3874, %3840
  br i1 %3875, label %3884, label %3866, !llvm.loop !270

3876:                                             ; preds = %3866
  %.lcssa11 = phi i64 [ %3867, %3866 ]
  %3877 = and i64 %.lcssa11, 4294967295
  %3878 = getelementptr inbounds ptr, ptr %3839, i64 %3877
  %3879 = load ptr, ptr %3878, align 8, !tbaa !7
  call fastcc void @emit_destructor_code(ptr noundef %2937, ptr noundef %3879, ptr noundef nonnull %11, ptr noundef nonnull %8) #27
  %3880 = call i64 @fwrite(ptr nonnull @.str.155, i64 13, i64 1, ptr %2937)
  %3881 = load i32, ptr %8, align 4, !tbaa !11
  %3882 = add nsw i32 %3881, 1
  store i32 %3882, ptr %8, align 4, !tbaa !11
  %3883 = load i32, ptr %1495, align 8, !tbaa !117
  br label %3884

3884:                                             ; preds = %3876, %3873, %3836, %3826
  %3885 = phi i32 [ %.lcssa12, %3836 ], [ %3883, %3876 ], [ %3831, %3826 ], [ %.lcssa12, %3873 ]
  %3886 = getelementptr inbounds %struct.lemon, ptr %11, i64 0, i32 30
  %3887 = load ptr, ptr %3886, align 8, !tbaa !271
  %3888 = icmp eq ptr %3887, null
  br i1 %3888, label %3933, label %3889

3889:                                             ; preds = %3884
  %3890 = icmp sgt i32 %3885, 0
  br i1 %3890, label %3891, label %4018

3891:                                             ; preds = %3889
  %3892 = load i32, ptr %8, align 4, !tbaa !11
  br label %3893

3893:                                             ; preds = %3919, %3891
  %3894 = phi i32 [ %3892, %3891 ], [ %3920, %3919 ]
  %3895 = phi i32 [ %3885, %3891 ], [ %3921, %3919 ]
  %3896 = phi i64 [ 0, %3891 ], [ %3923, %3919 ]
  %3897 = phi ptr [ null, %3891 ], [ %3922, %3919 ]
  %3898 = load ptr, ptr %1520, align 8, !tbaa !121
  %3899 = getelementptr inbounds ptr, ptr %3898, i64 %3896
  %3900 = load ptr, ptr %3899, align 8, !tbaa !7
  %3901 = icmp eq ptr %3900, null
  br i1 %3901, label %3919, label %3902

3902:                                             ; preds = %3893
  %3903 = getelementptr inbounds %struct.symbol, ptr %3900, i64 0, i32 2
  %3904 = load i32, ptr %3903, align 4, !tbaa !102
  %3905 = icmp eq i32 %3904, 0
  br i1 %3905, label %3919, label %3906

3906:                                             ; preds = %3902
  %3907 = getelementptr inbounds %struct.symbol, ptr %3900, i64 0, i32 1
  %3908 = load i32, ptr %3907, align 8, !tbaa !122
  %3909 = icmp slt i32 %3908, 1
  br i1 %3909, label %3919, label %3910

3910:                                             ; preds = %3906
  %3911 = getelementptr inbounds %struct.symbol, ptr %3900, i64 0, i32 10
  %3912 = load ptr, ptr %3911, align 8, !tbaa !272
  %3913 = icmp eq ptr %3912, null
  br i1 %3913, label %3914, label %3919

3914:                                             ; preds = %3910
  %3915 = load ptr, ptr %3900, align 8, !tbaa !89
  %3916 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2937, ptr noundef nonnull @.str.154, i32 noundef %3908, ptr noundef %3915) #27
  %3917 = add nsw i32 %3894, 1
  %3918 = load i32, ptr %1495, align 8, !tbaa !117
  br label %3919

3919:                                             ; preds = %3914, %3910, %3906, %3902, %3893
  %3920 = phi i32 [ %3917, %3914 ], [ %3894, %3910 ], [ %3894, %3906 ], [ %3894, %3902 ], [ %3894, %3893 ]
  %3921 = phi i32 [ %3918, %3914 ], [ %3895, %3910 ], [ %3895, %3906 ], [ %3895, %3902 ], [ %3895, %3893 ]
  %3922 = phi ptr [ %3900, %3914 ], [ %3897, %3910 ], [ %3897, %3906 ], [ %3897, %3902 ], [ %3897, %3893 ]
  %3923 = add nuw nsw i64 %3896, 1
  %3924 = sext i32 %3921 to i64
  %3925 = icmp slt i64 %3923, %3924
  br i1 %3925, label %3893, label %3926, !llvm.loop !273

3926:                                             ; preds = %3919
  %.lcssa10 = phi i32 [ %3920, %3919 ]
  %.lcssa9 = phi i32 [ %3921, %3919 ]
  %.lcssa8 = phi ptr [ %3922, %3919 ]
  store i32 %.lcssa10, ptr %8, align 4, !tbaa !11
  %3927 = icmp eq ptr %.lcssa8, null
  br i1 %3927, label %3933, label %3928

3928:                                             ; preds = %3926
  call fastcc void @emit_destructor_code(ptr noundef %2937, ptr noundef nonnull %.lcssa8, ptr noundef nonnull %11, ptr noundef nonnull %8) #27
  %3929 = call i64 @fwrite(ptr nonnull @.str.155, i64 13, i64 1, ptr %2937)
  %3930 = load i32, ptr %8, align 4, !tbaa !11
  %3931 = add nsw i32 %3930, 1
  store i32 %3931, ptr %8, align 4, !tbaa !11
  %3932 = load i32, ptr %1495, align 8, !tbaa !117
  br label %3933

3933:                                             ; preds = %3928, %3926, %3884
  %3934 = phi i32 [ %.lcssa9, %3926 ], [ %3932, %3928 ], [ %3885, %3884 ]
  %3935 = icmp sgt i32 %3934, 0
  br i1 %3935, label %3936, label %4018

3936:                                             ; preds = %4012, %3933
  %3937 = phi i32 [ %4013, %4012 ], [ %3934, %3933 ]
  %3938 = phi i64 [ %4014, %4012 ], [ 0, %3933 ]
  %3939 = phi i64 [ %4017, %4012 ], [ 1, %3933 ]
  %3940 = load ptr, ptr %1520, align 8, !tbaa !121
  %3941 = getelementptr inbounds ptr, ptr %3940, i64 %3938
  %3942 = load ptr, ptr %3941, align 8, !tbaa !7
  %3943 = icmp eq ptr %3942, null
  br i1 %3943, label %4012, label %3944

3944:                                             ; preds = %3936
  %3945 = getelementptr inbounds %struct.symbol, ptr %3942, i64 0, i32 2
  %3946 = load i32, ptr %3945, align 4, !tbaa !102
  %3947 = icmp eq i32 %3946, 0
  br i1 %3947, label %4012, label %3948

3948:                                             ; preds = %3944
  %3949 = getelementptr inbounds %struct.symbol, ptr %3942, i64 0, i32 10
  %3950 = load ptr, ptr %3949, align 8, !tbaa !272
  %3951 = icmp eq ptr %3950, null
  br i1 %3951, label %4012, label %3952

3952:                                             ; preds = %3948
  %3953 = getelementptr inbounds %struct.symbol, ptr %3942, i64 0, i32 1
  %3954 = load i32, ptr %3953, align 8, !tbaa !122
  %3955 = load ptr, ptr %3942, align 8, !tbaa !89
  %3956 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2937, ptr noundef nonnull @.str.154, i32 noundef %3954, ptr noundef %3955) #27
  %3957 = load i32, ptr %8, align 4, !tbaa !11
  %3958 = add nsw i32 %3957, 1
  store i32 %3958, ptr %8, align 4, !tbaa !11
  %3959 = add nuw nsw i64 %3938, 1
  %3960 = load i32, ptr %1495, align 8, !tbaa !117
  %3961 = sext i32 %3960 to i64
  %3962 = icmp slt i64 %3959, %3961
  br i1 %3962, label %3963, label %4004

3963:                                             ; preds = %3952
  %3964 = getelementptr inbounds %struct.symbol, ptr %3942, i64 0, i32 13
  br label %3965

3965:                                             ; preds = %3997, %3963
  %3966 = phi i32 [ %3958, %3963 ], [ %3998, %3997 ]
  %3967 = phi i32 [ %3960, %3963 ], [ %3999, %3997 ]
  %3968 = phi i64 [ %3939, %3963 ], [ %4000, %3997 ]
  %3969 = load ptr, ptr %1520, align 8, !tbaa !121
  %3970 = getelementptr inbounds ptr, ptr %3969, i64 %3968
  %3971 = load ptr, ptr %3970, align 8, !tbaa !7
  %3972 = icmp eq ptr %3971, null
  br i1 %3972, label %3997, label %3973

3973:                                             ; preds = %3965
  %3974 = getelementptr inbounds %struct.symbol, ptr %3971, i64 0, i32 2
  %3975 = load i32, ptr %3974, align 4, !tbaa !102
  %3976 = icmp eq i32 %3975, 0
  br i1 %3976, label %3997, label %3977

3977:                                             ; preds = %3973
  %3978 = getelementptr inbounds %struct.symbol, ptr %3971, i64 0, i32 10
  %3979 = load ptr, ptr %3978, align 8, !tbaa !272
  %3980 = icmp eq ptr %3979, null
  br i1 %3980, label %3997, label %3981

3981:                                             ; preds = %3977
  %3982 = getelementptr inbounds %struct.symbol, ptr %3971, i64 0, i32 13
  %3983 = load i32, ptr %3982, align 8, !tbaa !229
  %3984 = load i32, ptr %3964, align 8, !tbaa !229
  %3985 = icmp eq i32 %3983, %3984
  br i1 %3985, label %3986, label %3997

3986:                                             ; preds = %3981
  %3987 = load ptr, ptr %3949, align 8, !tbaa !272
  %3988 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %3987, ptr noundef nonnull dereferenceable(1) %3979) #29
  %3989 = icmp eq i32 %3988, 0
  br i1 %3989, label %3990, label %3997

3990:                                             ; preds = %3986
  %3991 = getelementptr inbounds %struct.symbol, ptr %3971, i64 0, i32 1
  %3992 = load i32, ptr %3991, align 8, !tbaa !122
  %3993 = load ptr, ptr %3971, align 8, !tbaa !89
  %3994 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2937, ptr noundef nonnull @.str.154, i32 noundef %3992, ptr noundef %3993) #27
  %3995 = add nsw i32 %3966, 1
  store ptr null, ptr %3978, align 8, !tbaa !272
  %3996 = load i32, ptr %1495, align 8, !tbaa !117
  br label %3997

3997:                                             ; preds = %3990, %3986, %3981, %3977, %3973, %3965
  %3998 = phi i32 [ %3995, %3990 ], [ %3966, %3986 ], [ %3966, %3981 ], [ %3966, %3977 ], [ %3966, %3973 ], [ %3966, %3965 ]
  %3999 = phi i32 [ %3996, %3990 ], [ %3967, %3986 ], [ %3967, %3981 ], [ %3967, %3977 ], [ %3967, %3973 ], [ %3967, %3965 ]
  %4000 = add nuw nsw i64 %3968, 1
  %4001 = trunc i64 %4000 to i32
  %4002 = icmp sgt i32 %3999, %4001
  br i1 %4002, label %3965, label %4003, !llvm.loop !274

4003:                                             ; preds = %3997
  %.lcssa7 = phi i32 [ %3998, %3997 ]
  store i32 %.lcssa7, ptr %8, align 4, !tbaa !11
  br label %4004

4004:                                             ; preds = %4003, %3952
  %4005 = load ptr, ptr %1520, align 8, !tbaa !121
  %4006 = getelementptr inbounds ptr, ptr %4005, i64 %3938
  %4007 = load ptr, ptr %4006, align 8, !tbaa !7
  call fastcc void @emit_destructor_code(ptr noundef %2937, ptr noundef %4007, ptr noundef nonnull %11, ptr noundef nonnull %8) #27
  %4008 = call i64 @fwrite(ptr nonnull @.str.155, i64 13, i64 1, ptr %2937)
  %4009 = load i32, ptr %8, align 4, !tbaa !11
  %4010 = add nsw i32 %4009, 1
  store i32 %4010, ptr %8, align 4, !tbaa !11
  %4011 = load i32, ptr %1495, align 8, !tbaa !117
  br label %4012

4012:                                             ; preds = %4004, %3948, %3944, %3936
  %4013 = phi i32 [ %3937, %3936 ], [ %3937, %3944 ], [ %3937, %3948 ], [ %4011, %4004 ]
  %4014 = add nuw nsw i64 %3938, 1
  %4015 = sext i32 %4013 to i64
  %4016 = icmp slt i64 %4014, %4015
  %4017 = add nuw nsw i64 %3939, 1
  br i1 %4016, label %3936, label %4018, !llvm.loop !275

4018:                                             ; preds = %4012, %3933, %3889
  %4019 = load ptr, ptr %2942, align 8, !tbaa !221
  call fastcc void @tplt_xfer(ptr noundef %4019, ptr noundef nonnull %2928, ptr noundef %2937, ptr noundef nonnull %8) #27
  %4020 = getelementptr inbounds %struct.lemon, ptr %11, i64 0, i32 20
  %4021 = load ptr, ptr %4020, align 8, !tbaa !276
  %4022 = getelementptr inbounds %struct.lemon, ptr %11, i64 0, i32 21
  %4023 = load i32, ptr %4022, align 8, !tbaa !277
  call fastcc void @tplt_print(ptr noundef %2937, ptr noundef nonnull %11, ptr noundef %4021, i32 noundef %4023, ptr noundef nonnull %8) #27
  %4024 = load ptr, ptr %2942, align 8, !tbaa !221
  call fastcc void @tplt_xfer(ptr noundef %4024, ptr noundef nonnull %2928, ptr noundef %2937, ptr noundef nonnull %8) #27
  %4025 = load ptr, ptr %1684, align 8, !tbaa !7
  %4026 = icmp eq ptr %4025, null
  br i1 %4026, label %4043, label %4027

4027:                                             ; preds = %4018
  %4028 = load i32, ptr %8, align 4, !tbaa !11
  br label %4029

4029:                                             ; preds = %4029, %4027
  %4030 = phi i32 [ %4038, %4029 ], [ %4028, %4027 ]
  %4031 = phi ptr [ %4040, %4029 ], [ %4025, %4027 ]
  %4032 = load ptr, ptr %4031, align 8, !tbaa !94
  %4033 = getelementptr inbounds %struct.symbol, ptr %4032, i64 0, i32 1
  %4034 = load i32, ptr %4033, align 8, !tbaa !122
  %4035 = getelementptr inbounds %struct.rule, ptr %4031, i64 0, i32 4
  %4036 = load i32, ptr %4035, align 8, !tbaa !96
  %4037 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2937, ptr noundef nonnull @.str.156, i32 noundef %4034, i32 noundef %4036) #27
  %4038 = add nsw i32 %4030, 1
  %4039 = getelementptr inbounds %struct.rule, ptr %4031, i64 0, i32 13
  %4040 = load ptr, ptr %4039, align 8, !tbaa !7
  %4041 = icmp eq ptr %4040, null
  br i1 %4041, label %4042, label %4029, !llvm.loop !278

4042:                                             ; preds = %4029
  %.lcssa6 = phi i32 [ %4038, %4029 ]
  store i32 %.lcssa6, ptr %8, align 4, !tbaa !11
  br label %4043

4043:                                             ; preds = %4042, %4018
  %4044 = load ptr, ptr %2942, align 8, !tbaa !221
  call fastcc void @tplt_xfer(ptr noundef %4044, ptr noundef nonnull %2928, ptr noundef %2937, ptr noundef nonnull %8) #27
  %4045 = load ptr, ptr %1684, align 8, !tbaa !7
  %4046 = icmp eq ptr %4045, null
  br i1 %4046, label %4326, label %4053

4047:                                             ; preds = %4254
  %4048 = load ptr, ptr %1684, align 8, !tbaa !7
  %4049 = icmp eq ptr %4048, null
  br i1 %4049, label %4326, label %4050

4050:                                             ; preds = %4047
  %4051 = load i32, ptr %8, align 4, !tbaa !11
  %4052 = getelementptr inbounds %struct.lemon, ptr %11, i64 0, i32 33
  br label %4258

4053:                                             ; preds = %4254, %4043
  %4054 = phi ptr [ %4256, %4254 ], [ %4045, %4043 ]
  call void @llvm.lifetime.start.p0(i64 1000, ptr nonnull %5) #25
  %4055 = getelementptr inbounds %struct.rule, ptr %4054, i64 0, i32 4
  %4056 = load i32, ptr %4055, align 8, !tbaa !96
  %4057 = icmp sgt i32 %4056, 0
  br i1 %4057, label %4058, label %4060

4058:                                             ; preds = %4053
  %4059 = zext i32 %4056 to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %5, i8 0, i64 %4059, i1 false), !tbaa !17
  br label %4060

4060:                                             ; preds = %4058, %4053
  %4061 = getelementptr inbounds %struct.rule, ptr %4054, i64 0, i32 8
  %4062 = load ptr, ptr %4061, align 8, !tbaa !85
  %4063 = icmp eq ptr %4062, null
  br i1 %4063, label %4064, label %4068

4064:                                             ; preds = %4060
  store ptr @.str.54, ptr %4061, align 8, !tbaa !85
  %4065 = getelementptr inbounds %struct.rule, ptr %4054, i64 0, i32 3
  %4066 = load i32, ptr %4065, align 4, !tbaa !90
  %4067 = getelementptr inbounds %struct.rule, ptr %4054, i64 0, i32 7
  store i32 %4066, ptr %4067, align 8, !tbaa !87
  br label %4068

4068:                                             ; preds = %4064, %4060
  %4069 = phi ptr [ @.str.54, %4064 ], [ %4062, %4060 ]
  store i32 0, ptr @append_str.used, align 4, !tbaa !11
  %4070 = load i8, ptr %4069, align 1, !tbaa !17
  %4071 = icmp eq i8 %4070, 0
  br i1 %4071, label %4177, label %4072

4072:                                             ; preds = %4068
  %4073 = getelementptr inbounds %struct.rule, ptr %4054, i64 0, i32 1
  %4074 = getelementptr inbounds %struct.rule, ptr %4054, i64 0, i32 6
  %4075 = getelementptr inbounds %struct.rule, ptr %4054, i64 0, i32 5
  br label %4076

4076:                                             ; preds = %4171, %4072
  %4077 = phi i8 [ %4070, %4072 ], [ %4175, %4171 ]
  %4078 = phi ptr [ %4069, %4072 ], [ %4174, %4171 ]
  %4079 = phi i8 [ 0, %4072 ], [ %4172, %4171 ]
  %4080 = load ptr, ptr %1543, align 8, !tbaa !7
  %4081 = sext i8 %4077 to i64
  %4082 = getelementptr inbounds i16, ptr %4080, i64 %4081
  %4083 = load i16, ptr %4082, align 2, !tbaa !58
  %4084 = and i16 %4083, 1024
  %4085 = icmp eq i16 %4084, 0
  br i1 %4085, label %4171, label %4086

4086:                                             ; preds = %4076
  %4087 = load ptr, ptr %4061, align 8, !tbaa !85
  %4088 = icmp eq ptr %4078, %4087
  br i1 %4088, label %4099, label %4089

4089:                                             ; preds = %4086
  %4090 = getelementptr inbounds i8, ptr %4078, i64 -1
  %4091 = load i8, ptr %4090, align 1, !tbaa !17
  %4092 = sext i8 %4091 to i64
  %4093 = getelementptr inbounds i16, ptr %4080, i64 %4092
  %4094 = load i16, ptr %4093, align 2, !tbaa !58
  %4095 = and i16 %4094, 8
  %4096 = icmp ne i16 %4095, 0
  %4097 = icmp eq i8 %4091, 95
  %4098 = or i1 %4097, %4096
  br i1 %4098, label %4171, label %4099

4099:                                             ; preds = %4089, %4086
  br label %4100

4100:                                             ; preds = %4100, %4099
  %4101 = phi ptr [ %4102, %4100 ], [ %4078, %4099 ]
  %4102 = getelementptr inbounds i8, ptr %4101, i64 1
  %4103 = load i8, ptr %4102, align 1, !tbaa !17
  %4104 = sext i8 %4103 to i64
  %4105 = getelementptr inbounds i16, ptr %4080, i64 %4104
  %4106 = load i16, ptr %4105, align 2, !tbaa !58
  %4107 = and i16 %4106, 8
  %4108 = icmp ne i16 %4107, 0
  %4109 = icmp eq i8 %4103, 95
  %4110 = or i1 %4109, %4108
  br i1 %4110, label %4100, label %4111, !llvm.loop !279

4111:                                             ; preds = %4100
  %.lcssa4 = phi ptr [ %4102, %4100 ]
  %.lcssa3 = phi i8 [ %4103, %4100 ]
  store i8 0, ptr %.lcssa4, align 1, !tbaa !17
  %4112 = load ptr, ptr %4073, align 8, !tbaa !95
  %4113 = icmp eq ptr %4112, null
  br i1 %4113, label %4121, label %4114

4114:                                             ; preds = %4111
  %4115 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %4078, ptr noundef nonnull dereferenceable(1) %4112) #29
  %4116 = icmp eq i32 %4115, 0
  br i1 %4116, label %4117, label %4121

4117:                                             ; preds = %4114
  %4118 = load ptr, ptr %4054, align 8, !tbaa !94
  %4119 = getelementptr inbounds %struct.symbol, ptr %4118, i64 0, i32 13
  %4120 = load i32, ptr %4119, align 8, !tbaa !229
  call fastcc void @append_str(ptr noundef nonnull @.str.95, i32 noundef 0, i32 noundef %4120, i32 noundef 0) #27
  br label %4168

4121:                                             ; preds = %4114, %4111
  %4122 = load i32, ptr %4055, align 8, !tbaa !96
  %4123 = icmp sgt i32 %4122, 0
  br i1 %4123, label %4124, label %4168

4124:                                             ; preds = %4121
  %4125 = load ptr, ptr %4074, align 8, !tbaa !92
  %4126 = zext i32 %4122 to i64
  br label %4127

4127:                                             ; preds = %4165, %4124
  %4128 = phi i64 [ 0, %4124 ], [ %4166, %4165 ]
  %4129 = getelementptr inbounds ptr, ptr %4125, i64 %4128
  %4130 = load ptr, ptr %4129, align 8, !tbaa !7
  %4131 = icmp eq ptr %4130, null
  br i1 %4131, label %4165, label %4132

4132:                                             ; preds = %4127
  %4133 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %4078, ptr noundef nonnull dereferenceable(1) %4130) #29
  %4134 = icmp eq i32 %4133, 0
  br i1 %4134, label %4135, label %4165

4135:                                             ; preds = %4132
  %.lcssa5 = phi i64 [ %4128, %4132 ]
  %4136 = trunc i64 %.lcssa5 to i32
  %4137 = load ptr, ptr %4061, align 8, !tbaa !85
  %4138 = icmp eq ptr %4078, %4137
  br i1 %4138, label %4146, label %4139

4139:                                             ; preds = %4135
  %4140 = getelementptr inbounds i8, ptr %4078, i64 -1
  %4141 = load i8, ptr %4140, align 1, !tbaa !17
  %4142 = icmp eq i8 %4141, 64
  br i1 %4142, label %4143, label %4146

4143:                                             ; preds = %4139
  %4144 = sub i32 %4136, %4122
  %4145 = add i32 %4144, 1
  call fastcc void @append_str(ptr noundef nonnull @.str.96, i32 noundef -1, i32 noundef %4145, i32 noundef 0) #27
  br label %4163

4146:                                             ; preds = %4139, %4135
  %4147 = load ptr, ptr %4075, align 8, !tbaa !91
  %4148 = getelementptr inbounds ptr, ptr %4147, i64 %.lcssa5
  %4149 = load ptr, ptr %4148, align 8, !tbaa !7
  %4150 = getelementptr inbounds %struct.symbol, ptr %4149, i64 0, i32 2
  %4151 = load i32, ptr %4150, align 4, !tbaa !102
  %4152 = icmp eq i32 %4151, 2
  br i1 %4152, label %4153, label %4157

4153:                                             ; preds = %4146
  %4154 = getelementptr inbounds %struct.symbol, ptr %4149, i64 0, i32 15
  %4155 = load ptr, ptr %4154, align 8, !tbaa !104
  %4156 = load ptr, ptr %4155, align 8, !tbaa !7
  br label %4157

4157:                                             ; preds = %4153, %4146
  %4158 = phi ptr [ %4156, %4153 ], [ %4149, %4146 ]
  %4159 = getelementptr inbounds %struct.symbol, ptr %4158, i64 0, i32 13
  %4160 = load i32, ptr %4159, align 8, !tbaa !229
  %4161 = sub i32 %4136, %4122
  %4162 = add i32 %4161, 1
  call fastcc void @append_str(ptr noundef nonnull @.str.97, i32 noundef 0, i32 noundef %4162, i32 noundef %4160) #27
  br label %4163

4163:                                             ; preds = %4157, %4143
  %4164 = getelementptr inbounds [1000 x i8], ptr %5, i64 0, i64 %.lcssa5
  store i8 1, ptr %4164, align 1, !tbaa !17
  br label %4168

4165:                                             ; preds = %4132, %4127
  %4166 = add nuw nsw i64 %4128, 1
  %4167 = icmp eq i64 %4166, %4126
  br i1 %4167, label %4168, label %4127, !llvm.loop !280

4168:                                             ; preds = %4165, %4163, %4121, %4117
  %4169 = phi i8 [ 1, %4117 ], [ %4079, %4163 ], [ %4079, %4121 ], [ %4079, %4165 ]
  %4170 = phi ptr [ %.lcssa4, %4117 ], [ %.lcssa4, %4163 ], [ %4078, %4121 ], [ %4078, %4165 ]
  store i8 %.lcssa3, ptr %.lcssa4, align 1, !tbaa !17
  br label %4171

4171:                                             ; preds = %4168, %4089, %4076
  %4172 = phi i8 [ %4169, %4168 ], [ %4079, %4089 ], [ %4079, %4076 ]
  %4173 = phi ptr [ %4170, %4168 ], [ %4078, %4089 ], [ %4078, %4076 ]
  call fastcc void @append_str(ptr noundef %4173, i32 noundef 1, i32 noundef 0, i32 noundef 0) #27
  %4174 = getelementptr inbounds i8, ptr %4173, i64 1
  %4175 = load i8, ptr %4174, align 1, !tbaa !17
  %4176 = icmp eq i8 %4175, 0
  br i1 %4176, label %4177, label %4076, !llvm.loop !281

4177:                                             ; preds = %4171, %4068
  %4178 = phi i8 [ 0, %4068 ], [ %4172, %4171 ]
  %4179 = getelementptr inbounds %struct.rule, ptr %4054, i64 0, i32 1
  %4180 = load ptr, ptr %4179, align 8, !tbaa !95
  %4181 = icmp eq ptr %4180, null
  %4182 = icmp ne i8 %4178, 0
  %4183 = select i1 %4181, i1 true, i1 %4182
  br i1 %4183, label %4192, label %4184

4184:                                             ; preds = %4177
  %4185 = load ptr, ptr %330, align 8, !tbaa !49
  %4186 = getelementptr inbounds %struct.rule, ptr %4054, i64 0, i32 3
  %4187 = load i32, ptr %4186, align 4, !tbaa !90
  %4188 = load ptr, ptr %4054, align 8, !tbaa !94
  %4189 = load ptr, ptr %4188, align 8, !tbaa !89
  call void (ptr, i32, ptr, ...) @ErrorMsg(ptr noundef %4185, i32 noundef %4187, ptr noundef nonnull @.str.98, ptr noundef nonnull %4180, ptr noundef %4189, ptr noundef nonnull %4180) #27
  %4190 = load i32, ptr %232, align 8, !tbaa !57
  %4191 = add nsw i32 %4190, 1
  store i32 %4191, ptr %232, align 8, !tbaa !57
  br label %4192

4192:                                             ; preds = %4184, %4177
  %4193 = load i32, ptr %4055, align 8, !tbaa !96
  %4194 = icmp sgt i32 %4193, 0
  br i1 %4194, label %4195, label %4246

4195:                                             ; preds = %4192
  %4196 = getelementptr inbounds %struct.rule, ptr %4054, i64 0, i32 6
  %4197 = getelementptr inbounds %struct.rule, ptr %4054, i64 0, i32 3
  %4198 = getelementptr inbounds %struct.rule, ptr %4054, i64 0, i32 5
  br label %4199

4199:                                             ; preds = %4241, %4195
  %4200 = phi i64 [ 0, %4195 ], [ %4242, %4241 ]
  %4201 = phi i32 [ %4193, %4195 ], [ %4243, %4241 ]
  %4202 = load ptr, ptr %4196, align 8, !tbaa !92
  %4203 = getelementptr inbounds ptr, ptr %4202, i64 %4200
  %4204 = load ptr, ptr %4203, align 8, !tbaa !7
  %4205 = icmp eq ptr %4204, null
  br i1 %4205, label %4219, label %4206

4206:                                             ; preds = %4199
  %4207 = getelementptr inbounds [1000 x i8], ptr %5, i64 0, i64 %4200
  %4208 = load i8, ptr %4207, align 1, !tbaa !17
  %4209 = icmp eq i8 %4208, 0
  br i1 %4209, label %4210, label %4241

4210:                                             ; preds = %4206
  %4211 = load ptr, ptr %330, align 8, !tbaa !49
  %4212 = load i32, ptr %4197, align 4, !tbaa !90
  %4213 = load ptr, ptr %4198, align 8, !tbaa !91
  %4214 = getelementptr inbounds ptr, ptr %4213, i64 %4200
  %4215 = load ptr, ptr %4214, align 8, !tbaa !7
  %4216 = load ptr, ptr %4215, align 8, !tbaa !89
  call void (ptr, i32, ptr, ...) @ErrorMsg(ptr noundef %4211, i32 noundef %4212, ptr noundef nonnull @.str.99, ptr noundef nonnull %4204, ptr noundef %4216, ptr noundef nonnull %4204) #27
  %4217 = load i32, ptr %232, align 8, !tbaa !57
  %4218 = add nsw i32 %4217, 1
  store i32 %4218, ptr %232, align 8, !tbaa !57
  br label %4241

4219:                                             ; preds = %4199
  %4220 = load ptr, ptr %4198, align 8, !tbaa !91
  %4221 = getelementptr inbounds ptr, ptr %4220, i64 %4200
  %4222 = load ptr, ptr %4221, align 8, !tbaa !7
  %4223 = getelementptr inbounds %struct.symbol, ptr %4222, i64 0, i32 2
  %4224 = load i32, ptr %4223, align 4, !tbaa !102
  %4225 = icmp eq i32 %4224, 0
  br i1 %4225, label %4231, label %4226

4226:                                             ; preds = %4219
  %4227 = load ptr, ptr %3886, align 8, !tbaa !271
  %4228 = icmp eq ptr %4227, null
  br i1 %4228, label %4229, label %4235

4229:                                             ; preds = %4226
  %4230 = getelementptr inbounds %struct.symbol, ptr %4222, i64 0, i32 10
  br label %4231

4231:                                             ; preds = %4229, %4219
  %4232 = phi ptr [ %4230, %4229 ], [ %3828, %4219 ]
  %4233 = load ptr, ptr %4232, align 8, !tbaa !7
  %4234 = icmp eq ptr %4233, null
  br i1 %4234, label %4241, label %4235

4235:                                             ; preds = %4231, %4226
  %4236 = getelementptr inbounds %struct.symbol, ptr %4222, i64 0, i32 1
  %4237 = load i32, ptr %4236, align 8, !tbaa !122
  %4238 = trunc i64 %4200 to i32
  %4239 = add i32 %4238, 1
  %4240 = sub i32 %4239, %4201
  call fastcc void @append_str(ptr noundef nonnull @.str.100, i32 noundef 0, i32 noundef %4237, i32 noundef %4240) #27
  br label %4241

4241:                                             ; preds = %4235, %4231, %4210, %4206
  %4242 = add nuw nsw i64 %4200, 1
  %4243 = load i32, ptr %4055, align 8, !tbaa !96
  %4244 = sext i32 %4243 to i64
  %4245 = icmp slt i64 %4242, %4244
  br i1 %4245, label %4199, label %4246, !llvm.loop !282

4246:                                             ; preds = %4241, %4192
  %4247 = load ptr, ptr %4061, align 8, !tbaa !85
  %4248 = icmp eq ptr %4247, null
  br i1 %4248, label %4254, label %4249

4249:                                             ; preds = %4246
  store i32 0, ptr @append_str.used, align 4, !tbaa !11
  %4250 = load ptr, ptr @append_str.z, align 8, !tbaa !7
  %4251 = icmp eq ptr %4250, null
  %4252 = select i1 %4251, ptr @.str.39, ptr %4250
  %4253 = call fastcc ptr @Strsafe(ptr noundef nonnull %4252) #27
  store ptr %4253, ptr %4061, align 8, !tbaa !85
  br label %4254

4254:                                             ; preds = %4249, %4246
  call void @llvm.lifetime.end.p0(i64 1000, ptr nonnull %5) #25
  %4255 = getelementptr inbounds %struct.rule, ptr %4054, i64 0, i32 13
  %4256 = load ptr, ptr %4255, align 8, !tbaa !7
  %4257 = icmp eq ptr %4256, null
  br i1 %4257, label %4047, label %4053, !llvm.loop !283

4258:                                             ; preds = %4320, %4050
  %4259 = phi i32 [ %4321, %4320 ], [ %4051, %4050 ]
  %4260 = phi ptr [ %4323, %4320 ], [ %4048, %4050 ]
  %4261 = getelementptr inbounds %struct.rule, ptr %4260, i64 0, i32 8
  %4262 = load ptr, ptr %4261, align 8, !tbaa !85
  %4263 = icmp eq ptr %4262, null
  br i1 %4263, label %4320, label %4264

4264:                                             ; preds = %4258
  %4265 = getelementptr inbounds %struct.rule, ptr %4260, i64 0, i32 10
  %4266 = load i32, ptr %4265, align 8, !tbaa !97
  %4267 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2937, ptr noundef nonnull @.str.157, i32 noundef %4266) #27
  call fastcc void @writeRuleText(ptr noundef %2937, ptr noundef nonnull %4260) #27
  %4268 = call i64 @fwrite(ptr nonnull @.str.158, i64 4, i64 1, ptr %2937)
  %4269 = add nsw i32 %4259, 1
  %4270 = getelementptr inbounds %struct.rule, ptr %4260, i64 0, i32 13
  %4271 = load ptr, ptr %4270, align 8, !tbaa !100
  %4272 = icmp eq ptr %4271, null
  br i1 %4272, label %4291, label %4273

4273:                                             ; preds = %4286, %4264
  %4274 = phi i32 [ %4287, %4286 ], [ %4269, %4264 ]
  %4275 = phi ptr [ %4289, %4286 ], [ %4271, %4264 ]
  %4276 = getelementptr inbounds %struct.rule, ptr %4275, i64 0, i32 8
  %4277 = load ptr, ptr %4276, align 8, !tbaa !85
  %4278 = load ptr, ptr %4261, align 8, !tbaa !85
  %4279 = icmp eq ptr %4277, %4278
  br i1 %4279, label %4280, label %4286

4280:                                             ; preds = %4273
  %4281 = getelementptr inbounds %struct.rule, ptr %4275, i64 0, i32 10
  %4282 = load i32, ptr %4281, align 8, !tbaa !97
  %4283 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2937, ptr noundef nonnull @.str.157, i32 noundef %4282) #27
  call fastcc void @writeRuleText(ptr noundef %2937, ptr noundef nonnull %4275) #27
  %4284 = call i64 @fwrite(ptr nonnull @.str.158, i64 4, i64 1, ptr %2937)
  %4285 = add nsw i32 %4274, 1
  store ptr null, ptr %4276, align 8, !tbaa !85
  br label %4286

4286:                                             ; preds = %4280, %4273
  %4287 = phi i32 [ %4274, %4273 ], [ %4285, %4280 ]
  %4288 = getelementptr inbounds %struct.rule, ptr %4275, i64 0, i32 13
  %4289 = load ptr, ptr %4288, align 8, !tbaa !100
  %4290 = icmp eq ptr %4289, null
  br i1 %4290, label %4291, label %4273, !llvm.loop !284

4291:                                             ; preds = %4286, %4264
  %4292 = phi i32 [ %4269, %4264 ], [ %4287, %4286 ]
  %4293 = load ptr, ptr %4261, align 8, !tbaa !85
  %4294 = icmp eq ptr %4293, null
  br i1 %4294, label %4316, label %4295

4295:                                             ; preds = %4291
  %4296 = getelementptr inbounds %struct.rule, ptr %4260, i64 0, i32 7
  %4297 = load i32, ptr %4296, align 8, !tbaa !87
  %4298 = load ptr, ptr %330, align 8, !tbaa !49
  call fastcc void @tplt_linedir(ptr noundef %2937, i32 noundef %4297, ptr noundef %4298) #27
  %4299 = load ptr, ptr %4261, align 8, !tbaa !85
  %4300 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2937, ptr noundef nonnull @.str.101, ptr noundef %4299) #27
  %4301 = load ptr, ptr %4261, align 8, !tbaa !85
  br label %4302

4302:                                             ; preds = %4308, %4295
  %4303 = phi ptr [ %4301, %4295 ], [ %4310, %4308 ]
  %4304 = phi i32 [ 0, %4295 ], [ %4309, %4308 ]
  %4305 = load i8, ptr %4303, align 1, !tbaa !17
  switch i8 %4305, label %4308 [
    i8 0, label %4311
    i8 10, label %4306
  ]

4306:                                             ; preds = %4302
  %4307 = add nsw i32 %4304, 1
  br label %4308

4308:                                             ; preds = %4306, %4302
  %4309 = phi i32 [ %4307, %4306 ], [ %4304, %4302 ]
  %4310 = getelementptr inbounds i8, ptr %4303, i64 1
  br label %4302, !llvm.loop !285

4311:                                             ; preds = %4302
  %.lcssa1 = phi i32 [ %4304, %4302 ]
  %4312 = add i32 %4292, 3
  %4313 = add i32 %4312, %.lcssa1
  %4314 = call i64 @fwrite(ptr nonnull @.str.93, i64 2, i64 1, ptr %2937)
  %4315 = load ptr, ptr %4052, align 8, !tbaa !286
  call fastcc void @tplt_linedir(ptr noundef %2937, i32 noundef %4313, ptr noundef %4315) #27
  br label %4316

4316:                                             ; preds = %4311, %4291
  %4317 = phi i32 [ %4292, %4291 ], [ %4313, %4311 ]
  %4318 = call i64 @fwrite(ptr nonnull @.str.159, i64 15, i64 1, ptr %2937)
  %4319 = add nsw i32 %4317, 1
  br label %4320

4320:                                             ; preds = %4316, %4258
  %4321 = phi i32 [ %4319, %4316 ], [ %4259, %4258 ]
  %4322 = getelementptr inbounds %struct.rule, ptr %4260, i64 0, i32 13
  %4323 = load ptr, ptr %4322, align 8, !tbaa !7
  %4324 = icmp eq ptr %4323, null
  br i1 %4324, label %4325, label %4258, !llvm.loop !287

4325:                                             ; preds = %4320
  %.lcssa2 = phi i32 [ %4321, %4320 ]
  store i32 %.lcssa2, ptr %8, align 4, !tbaa !11
  br label %4326

4326:                                             ; preds = %4325, %4047, %4043
  %4327 = load ptr, ptr %2942, align 8, !tbaa !221
  call fastcc void @tplt_xfer(ptr noundef %4327, ptr noundef nonnull %2928, ptr noundef %2937, ptr noundef nonnull %8) #27
  %4328 = getelementptr inbounds %struct.lemon, ptr %11, i64 0, i32 22
  %4329 = load ptr, ptr %4328, align 8, !tbaa !288
  %4330 = getelementptr inbounds %struct.lemon, ptr %11, i64 0, i32 23
  %4331 = load i32, ptr %4330, align 8, !tbaa !289
  call fastcc void @tplt_print(ptr noundef %2937, ptr noundef nonnull %11, ptr noundef %4329, i32 noundef %4331, ptr noundef nonnull %8) #27
  %4332 = load ptr, ptr %2942, align 8, !tbaa !221
  call fastcc void @tplt_xfer(ptr noundef %4332, ptr noundef nonnull %2928, ptr noundef %2937, ptr noundef nonnull %8) #27
  %4333 = getelementptr inbounds %struct.lemon, ptr %11, i64 0, i32 18
  %4334 = load ptr, ptr %4333, align 8, !tbaa !290
  %4335 = getelementptr inbounds %struct.lemon, ptr %11, i64 0, i32 19
  %4336 = load i32, ptr %4335, align 8, !tbaa !291
  call fastcc void @tplt_print(ptr noundef %2937, ptr noundef nonnull %11, ptr noundef %4334, i32 noundef %4336, ptr noundef nonnull %8) #27
  %4337 = load ptr, ptr %2942, align 8, !tbaa !221
  call fastcc void @tplt_xfer(ptr noundef %4337, ptr noundef nonnull %2928, ptr noundef %2937, ptr noundef nonnull %8) #27
  %4338 = getelementptr inbounds %struct.lemon, ptr %11, i64 0, i32 24
  %4339 = load ptr, ptr %4338, align 8, !tbaa !292
  %4340 = getelementptr inbounds %struct.lemon, ptr %11, i64 0, i32 25
  %4341 = load i32, ptr %4340, align 8, !tbaa !293
  call fastcc void @tplt_print(ptr noundef %2937, ptr noundef nonnull %11, ptr noundef %4339, i32 noundef %4341, ptr noundef nonnull %8) #27
  %4342 = load ptr, ptr %2942, align 8, !tbaa !221
  call fastcc void @tplt_xfer(ptr noundef %4342, ptr noundef nonnull %2928, ptr noundef %2937, ptr noundef nonnull %8) #27
  %4343 = getelementptr inbounds %struct.lemon, ptr %11, i64 0, i32 26
  %4344 = load ptr, ptr %4343, align 8, !tbaa !294
  %4345 = getelementptr inbounds %struct.lemon, ptr %11, i64 0, i32 27
  %4346 = load i32, ptr %4345, align 8, !tbaa !295
  call fastcc void @tplt_print(ptr noundef %2937, ptr noundef nonnull %11, ptr noundef %4344, i32 noundef %4346, ptr noundef nonnull %8) #27
  %4347 = call i32 @fclose(ptr noundef nonnull %2928) #27
  br label %4348

4348:                                             ; preds = %4326, %2939, %2930
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(i64 1000, ptr nonnull %7) #25
  %4349 = load i32, ptr @lemon_main.mhflag, align 4, !tbaa !11
  %4350 = icmp eq i32 %4349, 0
  br i1 %4350, label %4351, label %4405

4351:                                             ; preds = %4348
  call void @llvm.lifetime.start.p0(i64 1000, ptr nonnull %2) #25
  call void @llvm.lifetime.start.p0(i64 1000, ptr nonnull %3) #25
  %4352 = getelementptr inbounds %struct.lemon, ptr %11, i64 0, i32 34
  %4353 = load ptr, ptr %4352, align 8, !tbaa !224
  %4354 = icmp eq ptr %4353, null
  %4355 = select i1 %4354, ptr @.str.39, ptr %4353
  %4356 = call fastcc ptr @file_open(ptr noundef nonnull %11, ptr noundef nonnull @.str.113, ptr noundef nonnull @.str.42) #27
  %4357 = icmp eq ptr %4356, null
  br i1 %4357, label %4386, label %4358

4358:                                             ; preds = %4351
  %4359 = load i32, ptr %1567, align 4, !tbaa !126
  %4360 = icmp sgt i32 %4359, 1
  br i1 %4360, label %4361, label %4381

4361:                                             ; preds = %4374, %4358
  %4362 = phi i64 [ %4375, %4374 ], [ 1, %4358 ]
  %4363 = call ptr @fgets(ptr noundef nonnull %2, i32 noundef 1000, ptr noundef nonnull %4356) #27
  %4364 = icmp eq ptr %4363, null
  %4365 = trunc i64 %4362 to i32
  br i1 %4364, label %4381, label %4366

4366:                                             ; preds = %4361
  %4367 = load ptr, ptr %1520, align 8, !tbaa !121
  %4368 = getelementptr inbounds ptr, ptr %4367, i64 %4362
  %4369 = load ptr, ptr %4368, align 8, !tbaa !7
  %4370 = load ptr, ptr %4369, align 8, !tbaa !89
  %4371 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) @.str.115, ptr noundef nonnull %4355, ptr noundef %4370, i32 noundef %4365) #26
  %4372 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) %3) #29
  %4373 = icmp eq i32 %4372, 0
  br i1 %4373, label %4374, label %4381

4374:                                             ; preds = %4366
  %4375 = add nuw nsw i64 %4362, 1
  %4376 = load i32, ptr %1567, align 4, !tbaa !126
  %4377 = sext i32 %4376 to i64
  %4378 = icmp slt i64 %4375, %4377
  br i1 %4378, label %4361, label %4379, !llvm.loop !296

4379:                                             ; preds = %4374
  %.lcssa = phi i64 [ %4375, %4374 ]
  %4380 = trunc i64 %.lcssa to i32
  br label %4381

4381:                                             ; preds = %4379, %4366, %4361, %4358
  %4382 = phi i32 [ 1, %4358 ], [ %4380, %4379 ], [ %4365, %4361 ], [ %4365, %4366 ]
  %4383 = call i32 @fclose(ptr noundef nonnull %4356) #27
  %4384 = load i32, ptr %1567, align 4, !tbaa !126
  %4385 = icmp eq i32 %4382, %4384
  br i1 %4385, label %4404, label %4386

4386:                                             ; preds = %4381, %4351
  %4387 = call fastcc ptr @file_open(ptr noundef nonnull %11, ptr noundef nonnull @.str.113, ptr noundef nonnull @.str.70) #27
  %4388 = icmp ne ptr %4387, null
  %4389 = load i32, ptr %1567, align 4
  %4390 = icmp sgt i32 %4389, 1
  %4391 = select i1 %4388, i1 %4390, i1 false
  br i1 %4391, label %4392, label %4404

4392:                                             ; preds = %4392, %4386
  %4393 = phi i64 [ %4400, %4392 ], [ 1, %4386 ]
  %4394 = load ptr, ptr %1520, align 8, !tbaa !121
  %4395 = getelementptr inbounds ptr, ptr %4394, i64 %4393
  %4396 = load ptr, ptr %4395, align 8, !tbaa !7
  %4397 = load ptr, ptr %4396, align 8, !tbaa !89
  %4398 = trunc i64 %4393 to i32
  %4399 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %4387, ptr noundef nonnull @.str.115, ptr noundef nonnull %4355, ptr noundef %4397, i32 noundef %4398) #27
  %4400 = add nuw nsw i64 %4393, 1
  %4401 = load i32, ptr %1567, align 4, !tbaa !126
  %4402 = sext i32 %4401 to i64
  %4403 = icmp slt i64 %4400, %4402
  br i1 %4403, label %4392, label %4404, !llvm.loop !297

4404:                                             ; preds = %4392, %4386, %4381
  call void @llvm.lifetime.end.p0(i64 1000, ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(i64 1000, ptr nonnull %2) #25
  br label %4405

4405:                                             ; preds = %4404, %4348, %1677, %1622
  %4406 = load i32, ptr @lemon_main.statistics, align 4, !tbaa !11
  %4407 = icmp eq i32 %4406, 0
  br i1 %4407, label %4421, label %4408

4408:                                             ; preds = %4405
  %4409 = load i32, ptr %1567, align 4, !tbaa !126
  %4410 = load i32, ptr %1495, align 8, !tbaa !117
  %4411 = sub nsw i32 %4410, %4409
  %4412 = load i32, ptr %1481, align 4, !tbaa !81
  %4413 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.33, i32 noundef %4409, i32 noundef %4411, i32 noundef %4412) #27
  %4414 = getelementptr inbounds %struct.lemon, ptr %11, i64 0, i32 2
  %4415 = load i32, ptr %4414, align 8, !tbaa !146
  %4416 = getelementptr inbounds %struct.lemon, ptr %11, i64 0, i32 36
  %4417 = load i32, ptr %4416, align 4, !tbaa !298
  %4418 = getelementptr inbounds %struct.lemon, ptr %11, i64 0, i32 35
  %4419 = load i32, ptr %4418, align 8, !tbaa !189
  %4420 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.34, i32 noundef %4415, i32 noundef %4417, i32 noundef %4419) #27
  br label %4421

4421:                                             ; preds = %4408, %4405
  %4422 = load i32, ptr %232, align 8, !tbaa !57
  %4423 = getelementptr inbounds %struct.lemon, ptr %11, i64 0, i32 35
  %4424 = load i32, ptr %4423, align 8, !tbaa !189
  %4425 = add nsw i32 %4424, %4422
  call void @exit(i32 noundef %4425) #31
  unreachable
}

; Function Attrs: optsize
declare i32 @wait(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #6

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind optsize uwtable
define internal fastcc void @errline(i32 noundef %0, i32 noundef %1, ptr nocapture noundef %2) unnamed_addr #8 {
  %4 = load ptr, ptr @argv, align 8, !tbaa !7
  %5 = load ptr, ptr %4, align 8, !tbaa !7, !nonnull !299, !noundef !299
  %6 = tail call i32 @fputs(ptr nonnull %5, ptr %2)
  %7 = load ptr, ptr @argv, align 8, !tbaa !7
  %8 = load ptr, ptr %7, align 8, !tbaa !7
  %9 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %8) #29
  %10 = trunc i64 %9 to i32
  %11 = add i32 %10, 1
  %12 = icmp sgt i32 %0, 1
  br i1 %12, label %13, label %35

13:                                               ; preds = %3
  %14 = zext i32 %0 to i64
  br label %15

15:                                               ; preds = %22, %13
  %16 = phi ptr [ %7, %13 ], [ %24, %22 ]
  %17 = phi i64 [ 1, %13 ], [ %31, %22 ]
  %18 = phi i32 [ %11, %13 ], [ %30, %22 ]
  %19 = getelementptr inbounds ptr, ptr %16, i64 %17
  %20 = load ptr, ptr %19, align 8, !tbaa !7
  %21 = icmp eq ptr %20, null
  br i1 %21, label %33, label %22

22:                                               ; preds = %15
  %23 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.57, ptr noundef nonnull %20) #27
  %24 = load ptr, ptr @argv, align 8, !tbaa !7
  %25 = getelementptr inbounds ptr, ptr %24, i64 %17
  %26 = load ptr, ptr %25, align 8, !tbaa !7
  %27 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %26) #29
  %28 = trunc i64 %27 to i32
  %29 = add i32 %18, 1
  %30 = add i32 %29, %28
  %31 = add nuw nsw i64 %17, 1
  %32 = icmp eq i64 %31, %14
  br i1 %32, label %35, label %15, !llvm.loop !300

33:                                               ; preds = %15
  %.lcssa2 = phi ptr [ %16, %15 ]
  %.lcssa1 = phi i64 [ %17, %15 ]
  %.lcssa = phi i32 [ %18, %15 ]
  %34 = trunc i64 %.lcssa1 to i32
  br label %35

35:                                               ; preds = %33, %22, %3
  %36 = phi ptr [ %7, %3 ], [ %.lcssa2, %33 ], [ %24, %22 ]
  %37 = phi i32 [ %11, %3 ], [ %.lcssa, %33 ], [ %30, %22 ]
  %38 = phi i32 [ 1, %3 ], [ %34, %33 ], [ %0, %22 ]
  %39 = add nsw i32 %37, %1
  %40 = zext i32 %38 to i64
  %41 = getelementptr inbounds ptr, ptr %36, i64 %40
  %42 = load ptr, ptr %41, align 8, !tbaa !7
  %43 = icmp eq ptr %42, null
  br i1 %43, label %53, label %44

44:                                               ; preds = %44, %35
  %45 = phi i64 [ %48, %44 ], [ %40, %35 ]
  %46 = phi ptr [ %51, %44 ], [ %42, %35 ]
  %47 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.57, ptr noundef nonnull %46) #27
  %48 = add nuw i64 %45, 1
  %49 = load ptr, ptr @argv, align 8, !tbaa !7
  %50 = getelementptr inbounds ptr, ptr %49, i64 %48
  %51 = load ptr, ptr %50, align 8, !tbaa !7
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %44, !llvm.loop !301

53:                                               ; preds = %44, %35
  %54 = icmp slt i32 %39, 20
  br i1 %54, label %55, label %57

55:                                               ; preds = %53
  %56 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.171, i32 noundef %39, ptr noundef nonnull @.str.39) #27
  br label %60

57:                                               ; preds = %53
  %58 = add nsw i32 %39, -7
  %59 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.172, i32 noundef %58, ptr noundef nonnull @.str.39) #27
  br label %60

60:                                               ; preds = %57, %55
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind optsize willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind optsize willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind optsize uwtable
define internal fastcc void @OptPrint() unnamed_addr #8 {
  %1 = load ptr, ptr @op, align 8, !tbaa !7
  %2 = load ptr, ptr getelementptr inbounds ([9 x %struct.s_options], ptr @lemon_main.options, i64 0, i64 0, i32 1), align 8, !tbaa !18
  %3 = icmp eq ptr %2, null
  br i1 %3, label %71, label %8

4:                                                ; preds = %23
  %.lcssa = phi i32 [ %25, %23 ]
  %5 = add nsw i32 %.lcssa, -8
  %6 = add nsw i32 %.lcssa, -6
  %7 = add nsw i32 %.lcssa, -9
  br label %30

8:                                                ; preds = %23, %0
  %9 = phi i64 [ %26, %23 ], [ 0, %0 ]
  %10 = phi ptr [ %28, %23 ], [ %2, %0 ]
  %11 = phi i32 [ %25, %23 ], [ 0, %0 ]
  %12 = getelementptr inbounds %struct.s_options, ptr %1, i64 %9
  %13 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %10) #29
  %14 = trunc i64 %13 to i32
  %15 = add i32 %14, 1
  %16 = load i32, ptr %12, align 8, !tbaa !21
  switch i32 %16, label %23 [
    i32 8, label %21
    i32 4, label %21
    i32 2, label %17
    i32 6, label %17
    i32 3, label %19
    i32 7, label %19
  ]

17:                                               ; preds = %8, %8
  %18 = add i32 %14, 10
  br label %23

19:                                               ; preds = %8, %8
  %20 = add i32 %14, 7
  br label %23

21:                                               ; preds = %8, %8
  %22 = add i32 %14, 9
  br label %23

23:                                               ; preds = %21, %19, %17, %8
  %24 = phi i32 [ %15, %8 ], [ %20, %19 ], [ %18, %17 ], [ %22, %21 ]
  %25 = tail call i32 @llvm.smax.i32(i32 %24, i32 %11)
  %26 = add nuw nsw i64 %9, 1
  %27 = getelementptr inbounds %struct.s_options, ptr %1, i64 %26, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !18
  %29 = icmp eq ptr %28, null
  br i1 %29, label %4, label %8, !llvm.loop !302

30:                                               ; preds = %65, %4
  %31 = phi i64 [ 0, %4 ], [ %66, %65 ]
  %32 = phi ptr [ %2, %4 ], [ %69, %65 ]
  %33 = phi ptr [ %1, %4 ], [ %67, %65 ]
  %34 = getelementptr inbounds %struct.s_options, ptr %33, i64 %31
  %35 = load i32, ptr %34, align 8, !tbaa !21
  switch i32 %35, label %65 [
    i32 1, label %36
    i32 5, label %36
    i32 2, label %41
    i32 6, label %41
    i32 3, label %49
    i32 7, label %49
    i32 4, label %57
    i32 8, label %57
  ]

36:                                               ; preds = %30, %30
  %37 = load ptr, ptr @errstream, align 8, !tbaa !7
  %38 = getelementptr inbounds %struct.s_options, ptr %33, i64 %31, i32 3
  %39 = load ptr, ptr %38, align 8, !tbaa !303
  %40 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %37, ptr noundef nonnull @.str.37, i32 noundef %.lcssa, ptr noundef nonnull %32, ptr noundef %39) #27
  br label %65

41:                                               ; preds = %30, %30
  %42 = load ptr, ptr @errstream, align 8, !tbaa !7
  %43 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %32) #29
  %44 = trunc i64 %43 to i32
  %45 = sub i32 %7, %44
  %46 = getelementptr inbounds %struct.s_options, ptr %33, i64 %31, i32 3
  %47 = load ptr, ptr %46, align 8, !tbaa !303
  %48 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %42, ptr noundef nonnull @.str.38, ptr noundef nonnull %32, i32 noundef %45, ptr noundef nonnull @.str.39, ptr noundef %47) #27
  br label %65

49:                                               ; preds = %30, %30
  %50 = load ptr, ptr @errstream, align 8, !tbaa !7
  %51 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %32) #29
  %52 = trunc i64 %51 to i32
  %53 = sub i32 %6, %52
  %54 = getelementptr inbounds %struct.s_options, ptr %33, i64 %31, i32 3
  %55 = load ptr, ptr %54, align 8, !tbaa !303
  %56 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %50, ptr noundef nonnull @.str.40, ptr noundef nonnull %32, i32 noundef %53, ptr noundef nonnull @.str.39, ptr noundef %55) #27
  br label %65

57:                                               ; preds = %30, %30
  %58 = load ptr, ptr @errstream, align 8, !tbaa !7
  %59 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %32) #29
  %60 = trunc i64 %59 to i32
  %61 = sub i32 %5, %60
  %62 = getelementptr inbounds %struct.s_options, ptr %33, i64 %31, i32 3
  %63 = load ptr, ptr %62, align 8, !tbaa !303
  %64 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %58, ptr noundef nonnull @.str.41, ptr noundef nonnull %32, i32 noundef %61, ptr noundef nonnull @.str.39, ptr noundef %63) #27
  br label %65

65:                                               ; preds = %57, %49, %41, %36, %30
  %66 = add nuw i64 %31, 1
  %67 = load ptr, ptr @op, align 8, !tbaa !7
  %68 = getelementptr inbounds %struct.s_options, ptr %67, i64 %66, i32 1
  %69 = load ptr, ptr %68, align 8, !tbaa !18
  %70 = icmp eq ptr %69, null
  br i1 %70, label %71, label %30, !llvm.loop !304

71:                                               ; preds = %65, %0
  ret void
}

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32 noundef) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #12

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: nounwind optsize uwtable
define internal fastcc ptr @Symbol_new(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @Symbol_find(ptr noundef %0) #27
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %153

4:                                                ; preds = %1
  %5 = tail call noalias dereferenceable_or_null(96) ptr @calloc(i64 noundef 1, i64 noundef 96) #34
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %4
  %8 = load ptr, ptr @stderr, align 8, !tbaa !7
  %9 = tail call i64 @fwrite(ptr nonnull @.str.10, i64 28, i64 1, ptr %8) #32
  tail call void @exit(i32 noundef 1) #31
  unreachable

10:                                               ; preds = %4
  %11 = tail call fastcc ptr @Strsafe(ptr noundef %0) #27
  store ptr %11, ptr %5, align 8, !tbaa !89
  %12 = tail call ptr @__ctype_b_loc() #28
  %13 = load ptr, ptr %12, align 8, !tbaa !7
  %14 = load i8, ptr %0, align 1, !tbaa !17
  %15 = sext i8 %14 to i64
  %16 = getelementptr inbounds i16, ptr %13, i64 %15
  %17 = load i16, ptr %16, align 2, !tbaa !58
  %18 = and i16 %17, 256
  %19 = icmp eq i16 %18, 0
  %20 = zext i1 %19 to i32
  %21 = getelementptr inbounds %struct.symbol, ptr %5, i64 0, i32 2
  store i32 %20, ptr %21, align 4, !tbaa !102
  %22 = getelementptr inbounds %struct.symbol, ptr %5, i64 0, i32 5
  store i32 -1, ptr %22, align 8, !tbaa !111
  %23 = getelementptr inbounds %struct.symbol, ptr %5, i64 0, i32 6
  store i32 3, ptr %23, align 4, !tbaa !192
  %24 = load ptr, ptr @x2a, align 8, !tbaa !7
  %25 = icmp eq ptr %24, null
  br i1 %25, label %153, label %26

26:                                               ; preds = %10
  %27 = load i8, ptr %11, align 1, !tbaa !17
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %39, label %29

29:                                               ; preds = %29, %26
  %30 = phi i8 [ %37, %29 ], [ %27, %26 ]
  %31 = phi i32 [ %36, %29 ], [ 0, %26 ]
  %32 = phi ptr [ %34, %29 ], [ %11, %26 ]
  %33 = mul nsw i32 %31, 13
  %34 = getelementptr inbounds i8, ptr %32, i64 1
  %35 = sext i8 %30 to i32
  %36 = add nsw i32 %33, %35
  %37 = load i8, ptr %34, align 1, !tbaa !17
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %29, !llvm.loop !305

39:                                               ; preds = %29, %26
  %40 = phi i32 [ 0, %26 ], [ %36, %29 ]
  %41 = load i32, ptr %24, align 8, !tbaa !34
  %42 = add nsw i32 %41, -1
  %43 = and i32 %42, %40
  %44 = getelementptr inbounds %struct.s_x4, ptr %24, i64 0, i32 3
  %45 = load ptr, ptr %44, align 8, !tbaa !38
  %46 = sext i32 %43 to i64
  %47 = getelementptr inbounds ptr, ptr %45, i64 %46
  %48 = load ptr, ptr %47, align 8, !tbaa !7
  %49 = icmp eq ptr %48, null
  br i1 %49, label %60, label %54

50:                                               ; preds = %54
  %51 = getelementptr inbounds %struct.s_x3node, ptr %55, i64 0, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !7
  %53 = icmp eq ptr %52, null
  br i1 %53, label %60, label %54, !llvm.loop !306

54:                                               ; preds = %50, %39
  %55 = phi ptr [ %52, %50 ], [ %48, %39 ]
  %56 = getelementptr inbounds %struct.s_x3node, ptr %55, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !307
  %58 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %57, ptr noundef nonnull dereferenceable(1) %11) #29
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %153, label %50

60:                                               ; preds = %50, %39
  %61 = getelementptr inbounds %struct.s_x4, ptr %24, i64 0, i32 1
  %62 = load i32, ptr %61, align 4, !tbaa !36
  %63 = icmp slt i32 %62, %41
  br i1 %63, label %64, label %67

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.s_x4, ptr %24, i64 0, i32 2
  %66 = load ptr, ptr %65, align 8, !tbaa !37
  br label %132

67:                                               ; preds = %60
  %68 = shl nsw i32 %41, 1
  %69 = sext i32 %68 to i64
  %70 = mul nsw i64 %69, 40
  %71 = tail call noalias ptr @malloc(i64 noundef %70) #33
  %72 = icmp eq ptr %71, null
  br i1 %72, label %153, label %73

73:                                               ; preds = %67
  %74 = getelementptr %struct.s_x3node, ptr %71, i64 %69
  %75 = icmp sgt i32 %41, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %73
  %77 = tail call i32 @llvm.smax.i32(i32 %68, i32 1)
  %78 = zext i32 %77 to i64
  %79 = shl nuw nsw i64 %78, 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %74, i8 0, i64 %79, i1 false), !tbaa !7
  br label %80

80:                                               ; preds = %76, %73
  %81 = icmp sgt i32 %62, 0
  br i1 %81, label %84, label %82

82:                                               ; preds = %80
  %83 = add nsw i32 %68, -1
  br label %126

84:                                               ; preds = %80
  %85 = getelementptr inbounds %struct.s_x4, ptr %24, i64 0, i32 2
  %86 = add nsw i32 %68, -1
  %87 = zext i32 %62 to i64
  br label %88

88:                                               ; preds = %118, %84
  %89 = phi i64 [ 0, %84 ], [ %124, %118 ]
  %90 = load ptr, ptr %85, align 8, !tbaa !37
  %91 = getelementptr inbounds %struct.s_x3node, ptr %90, i64 %89
  %92 = getelementptr inbounds %struct.s_x3node, ptr %90, i64 %89, i32 1
  %93 = load ptr, ptr %92, align 8, !tbaa !307
  %94 = load i8, ptr %93, align 1, !tbaa !17
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %106, label %96

96:                                               ; preds = %96, %88
  %97 = phi i8 [ %104, %96 ], [ %94, %88 ]
  %98 = phi i32 [ %103, %96 ], [ 0, %88 ]
  %99 = phi ptr [ %101, %96 ], [ %93, %88 ]
  %100 = mul nsw i32 %98, 13
  %101 = getelementptr inbounds i8, ptr %99, i64 1
  %102 = sext i8 %97 to i32
  %103 = add nsw i32 %100, %102
  %104 = load i8, ptr %101, align 1, !tbaa !17
  %105 = icmp eq i8 %104, 0
  br i1 %105, label %106, label %96, !llvm.loop !305

106:                                              ; preds = %96, %88
  %107 = phi i32 [ 0, %88 ], [ %103, %96 ]
  %108 = and i32 %107, %86
  %109 = getelementptr inbounds %struct.s_x3node, ptr %71, i64 %89
  %110 = sext i32 %108 to i64
  %111 = getelementptr inbounds ptr, ptr %74, i64 %110
  %112 = load ptr, ptr %111, align 8, !tbaa !7
  %113 = icmp eq ptr %112, null
  br i1 %113, label %118, label %114

114:                                              ; preds = %106
  %115 = getelementptr inbounds %struct.s_x3node, ptr %71, i64 %89, i32 2
  %116 = getelementptr inbounds %struct.s_x3node, ptr %112, i64 0, i32 3
  store ptr %115, ptr %116, align 8, !tbaa !308
  %117 = load ptr, ptr %111, align 8, !tbaa !7
  br label %118

118:                                              ; preds = %114, %106
  %119 = phi ptr [ %117, %114 ], [ null, %106 ]
  %120 = getelementptr inbounds %struct.s_x3node, ptr %71, i64 %89, i32 2
  store ptr %119, ptr %120, align 8, !tbaa !309
  %121 = getelementptr inbounds %struct.s_x3node, ptr %71, i64 %89, i32 1
  store ptr %93, ptr %121, align 8, !tbaa !307
  %122 = load ptr, ptr %91, align 8, !tbaa !118
  store ptr %122, ptr %109, align 8, !tbaa !118
  %123 = getelementptr inbounds %struct.s_x3node, ptr %71, i64 %89, i32 3
  store ptr %111, ptr %123, align 8, !tbaa !308
  store ptr %109, ptr %111, align 8, !tbaa !7
  %124 = add nuw nsw i64 %89, 1
  %125 = icmp eq i64 %124, %87
  br i1 %125, label %126, label %88, !llvm.loop !310

126:                                              ; preds = %118, %82
  %127 = phi i32 [ %83, %82 ], [ %86, %118 ]
  %128 = getelementptr inbounds %struct.s_x4, ptr %24, i64 0, i32 2
  %129 = load ptr, ptr %128, align 8, !tbaa !37
  tail call void @free(ptr noundef %129) #26
  store i32 %68, ptr %24, align 8, !tbaa.struct !311
  store ptr %71, ptr %128, align 8, !tbaa.struct !312
  store ptr %74, ptr %44, align 8, !tbaa.struct !313
  %130 = and i32 %127, %40
  %131 = sext i32 %130 to i64
  br label %132

132:                                              ; preds = %126, %64
  %133 = phi i64 [ %46, %64 ], [ %131, %126 ]
  %134 = phi ptr [ %45, %64 ], [ %74, %126 ]
  %135 = phi ptr [ %66, %64 ], [ %71, %126 ]
  %136 = add nsw i32 %62, 1
  store i32 %136, ptr %61, align 4, !tbaa !36
  %137 = sext i32 %62 to i64
  %138 = getelementptr inbounds %struct.s_x3node, ptr %135, i64 %137
  %139 = getelementptr inbounds %struct.s_x3node, ptr %135, i64 %137, i32 1
  store ptr %11, ptr %139, align 8, !tbaa !307
  store ptr %5, ptr %138, align 8, !tbaa !118
  %140 = getelementptr inbounds ptr, ptr %134, i64 %133
  %141 = load ptr, ptr %140, align 8, !tbaa !7
  %142 = icmp eq ptr %141, null
  br i1 %142, label %147, label %143

143:                                              ; preds = %132
  %144 = getelementptr inbounds %struct.s_x3node, ptr %135, i64 %137, i32 2
  %145 = getelementptr inbounds %struct.s_x3node, ptr %141, i64 0, i32 3
  store ptr %144, ptr %145, align 8, !tbaa !308
  %146 = load ptr, ptr %140, align 8, !tbaa !7
  br label %147

147:                                              ; preds = %143, %132
  %148 = phi ptr [ %146, %143 ], [ null, %132 ]
  %149 = getelementptr inbounds %struct.s_x3node, ptr %135, i64 %137, i32 2
  store ptr %148, ptr %149, align 8, !tbaa !309
  store ptr %138, ptr %140, align 8, !tbaa !7
  %150 = load ptr, ptr %44, align 8, !tbaa !38
  %151 = getelementptr inbounds ptr, ptr %150, i64 %133
  %152 = getelementptr inbounds %struct.s_x3node, ptr %135, i64 %137, i32 3
  store ptr %151, ptr %152, align 8, !tbaa !308
  br label %153

153:                                              ; preds = %147, %67, %54, %10, %1
  %154 = phi ptr [ %2, %1 ], [ %5, %10 ], [ %5, %67 ], [ %5, %147 ], [ %5, %54 ]
  %155 = getelementptr inbounds %struct.symbol, ptr %154, i64 0, i32 9
  %156 = load i32, ptr %155, align 4, !tbaa !52
  %157 = add nsw i32 %156, 1
  store i32 %157, ptr %155, align 4, !tbaa !52
  ret ptr %154
}

; Function Attrs: nofree nounwind optsize
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize uwtable
define internal void @ErrorMsg(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, ...) unnamed_addr #8 {
  %4 = alloca [10000 x i8], align 16
  %5 = alloca [40 x i8], align 16
  %6 = alloca [1 x %struct.s_x4], align 16
  call void @llvm.lifetime.start.p0(i64 10000, ptr nonnull %4) #25
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #25
  call void @llvm.va_start(ptr nonnull %6)
  %7 = icmp sgt i32 %1, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %3
  %9 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef 20, ptr noundef %0, i32 noundef %1) #26
  br label %12

10:                                               ; preds = %3
  %11 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) @.str.8, i32 noundef 20, ptr noundef %0) #26
  br label %12

12:                                               ; preds = %10, %8
  %13 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %5) #29
  %14 = trunc i64 %13 to i32
  %15 = call i32 @vsprintf(ptr noundef nonnull %4, ptr noundef %2, ptr noundef nonnull %6) #26
  call void @llvm.va_end(ptr nonnull %6)
  %16 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #29
  %17 = trunc i64 %16 to i32
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %30

19:                                               ; preds = %12
  %20 = and i64 %16, 4294967295
  br label %21

21:                                               ; preds = %28, %19
  %22 = phi i64 [ %20, %19 ], [ %23, %28 ]
  %23 = add nsw i64 %22, -1
  %24 = and i64 %23, 4294967295
  %25 = getelementptr inbounds [10000 x i8], ptr %4, i64 0, i64 %24
  %26 = load i8, ptr %25, align 1, !tbaa !17
  %27 = icmp eq i8 %26, 10
  br i1 %27, label %28, label %30

28:                                               ; preds = %21
  store i8 0, ptr %25, align 1, !tbaa !17
  %29 = icmp ugt i64 %22, 1
  br i1 %29, label %21, label %30, !llvm.loop !314

30:                                               ; preds = %28, %21, %12
  %31 = load i8, ptr %4, align 16, !tbaa !17
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %80, label %33

33:                                               ; preds = %30
  %34 = icmp sgt i32 %14, 79
  %35 = shl i64 %13, 32
  %36 = sub i64 335007449088, %35
  %37 = ashr exact i64 %36, 32
  %38 = sub i64 80, %13
  %39 = and i64 %38, 4294967295
  br label %40

40:                                               ; preds = %71, %33
  %41 = phi ptr [ %4, %33 ], [ %77, %71 ]
  %42 = phi i32 [ 0, %33 ], [ %72, %71 ]
  br i1 %34, label %61, label %43

43:                                               ; preds = %55, %40
  %44 = phi i64 [ %59, %55 ], [ 0, %40 ]
  %45 = phi i32 [ %58, %55 ], [ 0, %40 ]
  %46 = getelementptr inbounds i8, ptr %41, i64 %44
  %47 = load i8, ptr %46, align 1, !tbaa !17
  %48 = trunc i64 %44 to i32
  switch i8 %47, label %55 [
    i8 9, label %49
    i8 10, label %50
    i8 0, label %61
    i8 45, label %51
  ]

49:                                               ; preds = %43
  store i8 32, ptr %46, align 1, !tbaa !17
  br label %55

50:                                               ; preds = %43
  %.lcssa1 = phi ptr [ %46, %43 ]
  %.lcssa = phi i32 [ %48, %43 ]
  store i8 32, ptr %.lcssa1, align 1, !tbaa !17
  br label %61

51:                                               ; preds = %43
  %52 = icmp slt i64 %44, %37
  %53 = add i32 %48, 1
  %54 = select i1 %52, i32 %53, i32 %45
  br label %55

55:                                               ; preds = %51, %49, %43
  %56 = phi i32 [ %45, %49 ], [ %45, %43 ], [ %54, %51 ]
  %57 = icmp eq i8 %47, 32
  %58 = select i1 %57, i32 %48, i32 %56
  %59 = add nuw nsw i64 %44, 1
  %60 = icmp eq i64 %59, %39
  br i1 %60, label %61, label %43, !llvm.loop !315

61:                                               ; preds = %55, %50, %43, %40
  %62 = phi i32 [ %.lcssa, %50 ], [ 0, %40 ], [ %58, %55 ], [ %48, %43 ]
  %63 = add i32 %62, %42
  %64 = sext i32 %63 to i64
  br label %65

65:                                               ; preds = %65, %61
  %66 = phi i64 [ %70, %65 ], [ %64, %61 ]
  %67 = getelementptr inbounds [10000 x i8], ptr %4, i64 0, i64 %66
  %68 = load i8, ptr %67, align 1, !tbaa !17
  %69 = icmp eq i8 %68, 32
  %70 = add i64 %66, 1
  br i1 %69, label %65, label %71, !llvm.loop !316

71:                                               ; preds = %65
  %.lcssa2 = phi i64 [ %66, %65 ]
  %72 = trunc i64 %.lcssa2 to i32
  %73 = load ptr, ptr @stdout, align 8, !tbaa !7
  %74 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %73, ptr noundef nonnull @.str.9, ptr noundef nonnull %5, i32 noundef %62, ptr noundef nonnull %41) #27
  %75 = shl i64 %.lcssa2, 32
  %76 = ashr exact i64 %75, 32
  %77 = getelementptr inbounds [10000 x i8], ptr %4, i64 0, i64 %76
  %78 = load i8, ptr %77, align 1, !tbaa !17
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %80, label %40, !llvm.loop !317

80:                                               ; preds = %71, %30
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(i64 10000, ptr nonnull %4) #25
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fseek(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i64 @ftell(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare void @rewind(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i64 @fread(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #6

; Function Attrs: nounwind optsize uwtable
define internal fastcc ptr @Strsafe(ptr noundef readonly %0) unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %173, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr @x1a, align 8, !tbaa !7
  %5 = icmp eq ptr %4, null
  br i1 %5, label %41, label %6

6:                                                ; preds = %3
  %7 = load i8, ptr %0, align 1, !tbaa !17
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %19, label %9

9:                                                ; preds = %9, %6
  %10 = phi i8 [ %17, %9 ], [ %7, %6 ]
  %11 = phi i32 [ %16, %9 ], [ 0, %6 ]
  %12 = phi ptr [ %14, %9 ], [ %0, %6 ]
  %13 = mul nsw i32 %11, 13
  %14 = getelementptr inbounds i8, ptr %12, i64 1
  %15 = sext i8 %10 to i32
  %16 = add nsw i32 %13, %15
  %17 = load i8, ptr %14, align 1, !tbaa !17
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %9, !llvm.loop !305

19:                                               ; preds = %9, %6
  %20 = phi i32 [ 0, %6 ], [ %16, %9 ]
  %21 = load i32, ptr %4, align 8, !tbaa !28
  %22 = add nsw i32 %21, -1
  %23 = and i32 %22, %20
  %24 = getelementptr inbounds %struct.s_x4, ptr %4, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !32
  %26 = sext i32 %23 to i64
  %27 = getelementptr inbounds ptr, ptr %25, i64 %26
  %28 = load ptr, ptr %27, align 8, !tbaa !7
  %29 = icmp eq ptr %28, null
  br i1 %29, label %41, label %34

30:                                               ; preds = %34
  %31 = getelementptr inbounds %struct.s_x4node, ptr %35, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !7
  %33 = icmp eq ptr %32, null
  br i1 %33, label %41, label %34, !llvm.loop !318

34:                                               ; preds = %30, %19
  %35 = phi ptr [ %32, %30 ], [ %28, %19 ]
  %36 = load ptr, ptr %35, align 8, !tbaa !319
  %37 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %36, ptr noundef nonnull dereferenceable(1) %0) #29
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %30

39:                                               ; preds = %34
  %.lcssa = phi ptr [ %36, %34 ]
  %40 = icmp eq ptr %.lcssa, null
  br i1 %40, label %41, label %173

41:                                               ; preds = %39, %30, %19, %3
  %42 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #29
  %43 = add i64 %42, 1
  %44 = tail call noalias ptr @malloc(i64 noundef %43) #33
  %45 = icmp eq ptr %44, null
  br i1 %45, label %170, label %46

46:                                               ; preds = %41
  %47 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %44, ptr noundef nonnull dereferenceable(1) %0) #26
  br i1 %5, label %173, label %48

48:                                               ; preds = %46
  %49 = load i8, ptr %44, align 1, !tbaa !17
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %61, label %51

51:                                               ; preds = %51, %48
  %52 = phi i8 [ %59, %51 ], [ %49, %48 ]
  %53 = phi i32 [ %58, %51 ], [ 0, %48 ]
  %54 = phi ptr [ %56, %51 ], [ %44, %48 ]
  %55 = mul nsw i32 %53, 13
  %56 = getelementptr inbounds i8, ptr %54, i64 1
  %57 = sext i8 %52 to i32
  %58 = add nsw i32 %55, %57
  %59 = load i8, ptr %56, align 1, !tbaa !17
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %61, label %51, !llvm.loop !305

61:                                               ; preds = %51, %48
  %62 = phi i32 [ 0, %48 ], [ %58, %51 ]
  %63 = load i32, ptr %4, align 8, !tbaa !28
  %64 = add nsw i32 %63, -1
  %65 = and i32 %64, %62
  %66 = getelementptr inbounds %struct.s_x4, ptr %4, i64 0, i32 3
  %67 = load ptr, ptr %66, align 8, !tbaa !32
  %68 = sext i32 %65 to i64
  %69 = getelementptr inbounds ptr, ptr %67, i64 %68
  %70 = load ptr, ptr %69, align 8, !tbaa !7
  %71 = icmp eq ptr %70, null
  br i1 %71, label %81, label %76

72:                                               ; preds = %76
  %73 = getelementptr inbounds %struct.s_x4node, ptr %77, i64 0, i32 1
  %74 = load ptr, ptr %73, align 8, !tbaa !7
  %75 = icmp eq ptr %74, null
  br i1 %75, label %81, label %76, !llvm.loop !321

76:                                               ; preds = %72, %61
  %77 = phi ptr [ %74, %72 ], [ %70, %61 ]
  %78 = load ptr, ptr %77, align 8, !tbaa !319
  %79 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %78, ptr noundef nonnull dereferenceable(1) %44) #29
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %173, label %72

81:                                               ; preds = %72, %61
  %82 = getelementptr inbounds %struct.s_x4, ptr %4, i64 0, i32 1
  %83 = load i32, ptr %82, align 4, !tbaa !30
  %84 = icmp slt i32 %83, %63
  br i1 %84, label %85, label %88

85:                                               ; preds = %81
  %86 = getelementptr inbounds %struct.s_x4, ptr %4, i64 0, i32 2
  %87 = load ptr, ptr %86, align 8, !tbaa !31
  br label %150

88:                                               ; preds = %81
  %89 = shl nsw i32 %63, 1
  %90 = sext i32 %89 to i64
  %91 = shl nsw i64 %90, 5
  %92 = tail call noalias ptr @malloc(i64 noundef %91) #33
  %93 = icmp eq ptr %92, null
  br i1 %93, label %173, label %94

94:                                               ; preds = %88
  %95 = getelementptr %struct.s_x4node, ptr %92, i64 %90
  %96 = icmp sgt i32 %63, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %94
  %98 = tail call i32 @llvm.smax.i32(i32 %89, i32 1)
  %99 = zext i32 %98 to i64
  %100 = shl nuw nsw i64 %99, 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %95, i8 0, i64 %100, i1 false), !tbaa !7
  br label %101

101:                                              ; preds = %97, %94
  %102 = icmp sgt i32 %83, 0
  br i1 %102, label %105, label %103

103:                                              ; preds = %101
  %104 = add nsw i32 %89, -1
  br label %144

105:                                              ; preds = %101
  %106 = getelementptr inbounds %struct.s_x4, ptr %4, i64 0, i32 2
  %107 = add nsw i32 %89, -1
  %108 = zext i32 %83 to i64
  br label %109

109:                                              ; preds = %138, %105
  %110 = phi i64 [ 0, %105 ], [ %142, %138 ]
  %111 = load ptr, ptr %106, align 8, !tbaa !31
  %112 = getelementptr inbounds %struct.s_x4node, ptr %111, i64 %110
  %113 = load ptr, ptr %112, align 8, !tbaa !319
  %114 = load i8, ptr %113, align 1, !tbaa !17
  %115 = icmp eq i8 %114, 0
  br i1 %115, label %126, label %116

116:                                              ; preds = %116, %109
  %117 = phi i8 [ %124, %116 ], [ %114, %109 ]
  %118 = phi i32 [ %123, %116 ], [ 0, %109 ]
  %119 = phi ptr [ %121, %116 ], [ %113, %109 ]
  %120 = mul nsw i32 %118, 13
  %121 = getelementptr inbounds i8, ptr %119, i64 1
  %122 = sext i8 %117 to i32
  %123 = add nsw i32 %120, %122
  %124 = load i8, ptr %121, align 1, !tbaa !17
  %125 = icmp eq i8 %124, 0
  br i1 %125, label %126, label %116, !llvm.loop !305

126:                                              ; preds = %116, %109
  %127 = phi i32 [ 0, %109 ], [ %123, %116 ]
  %128 = and i32 %127, %107
  %129 = getelementptr inbounds %struct.s_x4node, ptr %92, i64 %110
  %130 = sext i32 %128 to i64
  %131 = getelementptr inbounds ptr, ptr %95, i64 %130
  %132 = load ptr, ptr %131, align 8, !tbaa !7
  %133 = icmp eq ptr %132, null
  br i1 %133, label %138, label %134

134:                                              ; preds = %126
  %135 = getelementptr inbounds %struct.s_x4node, ptr %92, i64 %110, i32 1
  %136 = getelementptr inbounds %struct.s_x4node, ptr %132, i64 0, i32 2
  store ptr %135, ptr %136, align 8, !tbaa !322
  %137 = load ptr, ptr %131, align 8, !tbaa !7
  br label %138

138:                                              ; preds = %134, %126
  %139 = phi ptr [ %137, %134 ], [ null, %126 ]
  %140 = getelementptr inbounds %struct.s_x4node, ptr %92, i64 %110, i32 1
  store ptr %139, ptr %140, align 8, !tbaa !323
  store ptr %113, ptr %129, align 8, !tbaa !319
  %141 = getelementptr inbounds %struct.s_x4node, ptr %92, i64 %110, i32 2
  store ptr %131, ptr %141, align 8, !tbaa !322
  store ptr %129, ptr %131, align 8, !tbaa !7
  %142 = add nuw nsw i64 %110, 1
  %143 = icmp eq i64 %142, %108
  br i1 %143, label %144, label %109, !llvm.loop !324

144:                                              ; preds = %138, %103
  %145 = phi i32 [ %104, %103 ], [ %107, %138 ]
  %146 = getelementptr inbounds %struct.s_x4, ptr %4, i64 0, i32 2
  %147 = load ptr, ptr %146, align 8, !tbaa !31
  tail call void @free(ptr noundef %147) #26
  store i32 %89, ptr %4, align 8, !tbaa.struct !311
  store ptr %92, ptr %146, align 8, !tbaa.struct !312
  store ptr %95, ptr %66, align 8, !tbaa.struct !313
  %148 = and i32 %145, %62
  %149 = sext i32 %148 to i64
  br label %150

150:                                              ; preds = %144, %85
  %151 = phi i64 [ %68, %85 ], [ %149, %144 ]
  %152 = phi ptr [ %67, %85 ], [ %95, %144 ]
  %153 = phi ptr [ %87, %85 ], [ %92, %144 ]
  %154 = add nsw i32 %83, 1
  store i32 %154, ptr %82, align 4, !tbaa !30
  %155 = sext i32 %83 to i64
  %156 = getelementptr inbounds %struct.s_x4node, ptr %153, i64 %155
  store ptr %44, ptr %156, align 8, !tbaa !319
  %157 = getelementptr inbounds ptr, ptr %152, i64 %151
  %158 = load ptr, ptr %157, align 8, !tbaa !7
  %159 = icmp eq ptr %158, null
  br i1 %159, label %164, label %160

160:                                              ; preds = %150
  %161 = getelementptr inbounds %struct.s_x4node, ptr %153, i64 %155, i32 1
  %162 = getelementptr inbounds %struct.s_x4node, ptr %158, i64 0, i32 2
  store ptr %161, ptr %162, align 8, !tbaa !322
  %163 = load ptr, ptr %157, align 8, !tbaa !7
  br label %164

164:                                              ; preds = %160, %150
  %165 = phi ptr [ %163, %160 ], [ null, %150 ]
  %166 = getelementptr inbounds %struct.s_x4node, ptr %153, i64 %155, i32 1
  store ptr %165, ptr %166, align 8, !tbaa !323
  store ptr %156, ptr %157, align 8, !tbaa !7
  %167 = load ptr, ptr %66, align 8, !tbaa !32
  %168 = getelementptr inbounds ptr, ptr %167, i64 %151
  %169 = getelementptr inbounds %struct.s_x4node, ptr %153, i64 %155, i32 2
  store ptr %168, ptr %169, align 8, !tbaa !322
  br label %173

170:                                              ; preds = %41
  %171 = load ptr, ptr @stderr, align 8, !tbaa !7
  %172 = tail call i64 @fwrite(ptr nonnull @.str.10, i64 28, i64 1, ptr %171) #32
  tail call void @exit(i32 noundef 1) #31
  unreachable

173:                                              ; preds = %164, %88, %76, %46, %39, %1
  %174 = phi ptr [ null, %1 ], [ %.lcssa, %39 ], [ %44, %46 ], [ %44, %88 ], [ %44, %164 ], [ %44, %76 ]
  ret ptr %174
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nounwind optsize willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #16

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @Symbolcmpp(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #17 {
  %3 = load ptr, ptr %0, align 8, !tbaa !7
  %4 = getelementptr inbounds %struct.symbol, ptr %3, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !122
  %6 = load ptr, ptr %1, align 8, !tbaa !7
  %7 = getelementptr inbounds %struct.symbol, ptr %6, i64 0, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !122
  %9 = load ptr, ptr %3, align 8, !tbaa !89
  %10 = load i8, ptr %9, align 1, !tbaa !17
  %11 = icmp sgt i8 %10, 90
  %12 = select i1 %11, i32 10000000, i32 0
  %13 = add nsw i32 %12, %5
  %14 = load ptr, ptr %6, align 8, !tbaa !89
  %15 = load i8, ptr %14, align 1, !tbaa !17
  %16 = icmp sgt i8 %15, 90
  %17 = select i1 %16, i32 10000000, i32 0
  %18 = add nsw i32 %17, %8
  %19 = icmp slt i32 %13, %18
  br i1 %19, label %27, label %20

20:                                               ; preds = %2
  %21 = icmp sgt i32 %13, %18
  br i1 %21, label %27, label %22

22:                                               ; preds = %20
  %23 = icmp slt i32 %5, %8
  br i1 %23, label %27, label %24

24:                                               ; preds = %22
  %25 = icmp sgt i32 %5, %8
  %26 = zext i1 %25 to i32
  br label %27

27:                                               ; preds = %24, %22, %20, %2
  %28 = phi i32 [ -1, %2 ], [ 1, %20 ], [ -1, %22 ], [ %26, %24 ]
  ret i32 %28
}

; Function Attrs: nofree optsize
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #18

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #19

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #11

; Function Attrs: nounwind optsize uwtable
define internal fastcc noalias ptr @SetNew() unnamed_addr #0 {
  %1 = load i32, ptr @size, align 4, !tbaa !11
  %2 = sext i32 %1 to i64
  %3 = tail call noalias ptr @calloc(i64 noundef %2, i64 noundef 1) #34
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %8

5:                                                ; preds = %0
  %6 = load ptr, ptr @stderr, align 8, !tbaa !7
  %7 = tail call i64 @fwrite(ptr nonnull @.str.10, i64 28, i64 1, ptr %6) #32
  tail call void @exit(i32 noundef 1) #31
  unreachable

8:                                                ; preds = %0
  ret ptr %3
}

; Function Attrs: nofree nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @Symbol_find(ptr nocapture noundef readonly %0) unnamed_addr #20 {
  %2 = load ptr, ptr @x2a, align 8, !tbaa !7
  %3 = icmp eq ptr %2, null
  br i1 %3, label %40, label %4

4:                                                ; preds = %1
  %5 = load i8, ptr %0, align 1, !tbaa !17
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %17, label %7

7:                                                ; preds = %7, %4
  %8 = phi i8 [ %15, %7 ], [ %5, %4 ]
  %9 = phi i32 [ %14, %7 ], [ 0, %4 ]
  %10 = phi ptr [ %12, %7 ], [ %0, %4 ]
  %11 = mul nsw i32 %9, 13
  %12 = getelementptr inbounds i8, ptr %10, i64 1
  %13 = sext i8 %8 to i32
  %14 = add nsw i32 %11, %13
  %15 = load i8, ptr %12, align 1, !tbaa !17
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %7, !llvm.loop !305

17:                                               ; preds = %7, %4
  %18 = phi i32 [ 0, %4 ], [ %14, %7 ]
  %19 = load i32, ptr %2, align 8, !tbaa !34
  %20 = add nsw i32 %19, -1
  %21 = and i32 %20, %18
  %22 = getelementptr inbounds %struct.s_x4, ptr %2, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !38
  %24 = sext i32 %21 to i64
  %25 = getelementptr inbounds ptr, ptr %23, i64 %24
  %26 = load ptr, ptr %25, align 8, !tbaa !7
  %27 = icmp eq ptr %26, null
  br i1 %27, label %40, label %28

28:                                               ; preds = %34, %17
  %29 = phi ptr [ %36, %34 ], [ %26, %17 ]
  %30 = getelementptr inbounds %struct.s_x3node, ptr %29, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !307
  %32 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %31, ptr noundef nonnull dereferenceable(1) %0) #29
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.s_x3node, ptr %29, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !7
  %37 = icmp eq ptr %36, null
  br i1 %37, label %40, label %28, !llvm.loop !325

38:                                               ; preds = %28
  %.lcssa = phi ptr [ %29, %28 ]
  %39 = load ptr, ptr %.lcssa, align 8, !tbaa !118
  br label %40

40:                                               ; preds = %38, %34, %17, %1
  %41 = phi ptr [ null, %1 ], [ %39, %38 ], [ null, %17 ], [ null, %34 ]
  ret ptr %41
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc ptr @Configlist_addbasis(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.config, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %3) #25
  store ptr %0, ptr %3, align 8, !tbaa !180
  %4 = getelementptr inbounds %struct.config, ptr %3, i64 0, i32 1
  store i32 %1, ptr %4, align 8, !tbaa !181
  %5 = call fastcc ptr @Configtable_find(ptr noundef nonnull %3) #27
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %17

7:                                                ; preds = %2
  %8 = tail call fastcc ptr @newconfig() #27
  store ptr %0, ptr %8, align 8, !tbaa !180
  %9 = getelementptr inbounds %struct.config, ptr %8, i64 0, i32 1
  store i32 %1, ptr %9, align 8, !tbaa !181
  %10 = tail call fastcc ptr @SetNew() #27
  %11 = getelementptr inbounds %struct.config, ptr %8, i64 0, i32 2
  store ptr %10, ptr %11, align 8, !tbaa !157
  %12 = getelementptr inbounds %struct.config, ptr %8, i64 0, i32 3
  %13 = getelementptr inbounds %struct.config, ptr %8, i64 0, i32 7
  %14 = getelementptr inbounds %struct.config, ptr %8, i64 0, i32 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %13, i8 0, i64 16, i1 false)
  %15 = load ptr, ptr @currentend, align 8, !tbaa !7
  store ptr %8, ptr %15, align 8, !tbaa !7
  store ptr %13, ptr @currentend, align 8, !tbaa !7
  %16 = load ptr, ptr @basisend, align 8, !tbaa !7
  store ptr %8, ptr %16, align 8, !tbaa !7
  store ptr %14, ptr @basisend, align 8, !tbaa !7
  tail call fastcc void @Configtable_insert(ptr noundef nonnull %8) #27
  br label %17

17:                                               ; preds = %7, %2
  %18 = phi ptr [ %8, %7 ], [ %5, %2 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3) #25
  ret ptr %18
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc ptr @getstate(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = alloca %struct.config, align 8
  %3 = load ptr, ptr @current, align 8, !tbaa !7
  %4 = getelementptr inbounds %struct.config, ptr %3, i64 0, i32 8
  %5 = tail call fastcc ptr @msort(ptr noundef %3, ptr noundef nonnull %4, ptr noundef nonnull @Configcmp) #27
  store ptr null, ptr @basis, align 8, !tbaa !7
  store ptr null, ptr @basisend, align 8, !tbaa !7
  %6 = load ptr, ptr @x3a, align 8, !tbaa !7
  %7 = icmp eq ptr %6, null
  br i1 %7, label %109, label %8

8:                                                ; preds = %1
  %9 = icmp eq ptr %5, null
  br i1 %9, label %25, label %10

10:                                               ; preds = %10, %8
  %11 = phi i32 [ %21, %10 ], [ 0, %8 ]
  %12 = phi ptr [ %23, %10 ], [ %5, %8 ]
  %13 = mul nsw i32 %11, 571
  %14 = load ptr, ptr %12, align 8, !tbaa !180
  %15 = getelementptr inbounds %struct.rule, ptr %14, i64 0, i32 10
  %16 = load i32, ptr %15, align 8, !tbaa !97
  %17 = mul nsw i32 %16, 37
  %18 = add nsw i32 %17, %13
  %19 = getelementptr inbounds %struct.config, ptr %12, i64 0, i32 1
  %20 = load i32, ptr %19, align 8, !tbaa !181
  %21 = add nsw i32 %18, %20
  %22 = getelementptr inbounds %struct.config, ptr %12, i64 0, i32 8
  %23 = load ptr, ptr %22, align 8, !tbaa !326
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %10, !llvm.loop !327

25:                                               ; preds = %10, %8
  %26 = phi i32 [ 0, %8 ], [ %21, %10 ]
  %27 = load i32, ptr %6, align 8, !tbaa !40
  %28 = add nsw i32 %27, -1
  %29 = and i32 %28, %26
  %30 = getelementptr inbounds %struct.s_x4, ptr %6, i64 0, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !44
  %32 = sext i32 %29 to i64
  %33 = getelementptr inbounds ptr, ptr %31, i64 %32
  %34 = load ptr, ptr %33, align 8, !tbaa !7
  %35 = icmp eq ptr %34, null
  br i1 %35, label %109, label %36

36:                                               ; preds = %42, %25
  %37 = phi ptr [ %44, %42 ], [ %34, %25 ]
  %38 = getelementptr inbounds %struct.s_x3node, ptr %37, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !328
  %40 = tail call fastcc i32 @statecmp(ptr noundef %39, ptr noundef %5) #27
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct.s_x3node, ptr %37, i64 0, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !7
  %45 = icmp eq ptr %44, null
  br i1 %45, label %109, label %36, !llvm.loop !329

46:                                               ; preds = %36
  %.lcssa7 = phi ptr [ %37, %36 ]
  %47 = load ptr, ptr %.lcssa7, align 8, !tbaa !160
  %48 = icmp eq ptr %47, null
  br i1 %48, label %109, label %49

49:                                               ; preds = %46
  %50 = load ptr, ptr %47, align 8, !tbaa !7
  %51 = icmp ne ptr %5, null
  %52 = icmp ne ptr %50, null
  %53 = select i1 %51, i1 %52, i1 false
  br i1 %53, label %54, label %92

54:                                               ; preds = %49
  %55 = load ptr, ptr @plink_freelist, align 8, !tbaa !7
  br label %56

56:                                               ; preds = %83, %54
  %57 = phi ptr [ %88, %83 ], [ %50, %54 ]
  %58 = phi ptr [ %86, %83 ], [ %5, %54 ]
  %59 = phi ptr [ %84, %83 ], [ %55, %54 ]
  %60 = getelementptr inbounds %struct.config, ptr %57, i64 0, i32 4
  %61 = getelementptr inbounds %struct.config, ptr %58, i64 0, i32 4
  %62 = load ptr, ptr %61, align 8, !tbaa !330
  %63 = icmp eq ptr %62, null
  br i1 %63, label %72, label %64

64:                                               ; preds = %56
  %65 = load ptr, ptr %60, align 8, !tbaa !7
  br label %66

66:                                               ; preds = %66, %64
  %67 = phi ptr [ %68, %66 ], [ %65, %64 ]
  %68 = phi ptr [ %70, %66 ], [ %62, %64 ]
  %69 = getelementptr inbounds %struct.plink, ptr %68, i64 0, i32 1
  %70 = load ptr, ptr %69, align 8, !tbaa !169
  store ptr %67, ptr %69, align 8, !tbaa !169
  store ptr %68, ptr %60, align 8, !tbaa !7
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %66, !llvm.loop !331

72:                                               ; preds = %66, %56
  %73 = getelementptr inbounds %struct.config, ptr %58, i64 0, i32 3
  %74 = load ptr, ptr %73, align 8, !tbaa !332
  %75 = icmp eq ptr %74, null
  br i1 %75, label %83, label %76

76:                                               ; preds = %76, %72
  %77 = phi ptr [ %80, %76 ], [ %74, %72 ]
  %78 = phi ptr [ %77, %76 ], [ %59, %72 ]
  %79 = getelementptr inbounds %struct.plink, ptr %77, i64 0, i32 1
  %80 = load ptr, ptr %79, align 8, !tbaa !169
  store ptr %78, ptr %79, align 8, !tbaa !169
  %81 = icmp eq ptr %80, null
  br i1 %81, label %82, label %76, !llvm.loop !333

82:                                               ; preds = %76
  %.lcssa6 = phi ptr [ %77, %76 ]
  store ptr %.lcssa6, ptr @plink_freelist, align 8, !tbaa !7
  br label %83

83:                                               ; preds = %82, %72
  %84 = phi ptr [ %59, %72 ], [ %.lcssa6, %82 ]
  %85 = getelementptr inbounds %struct.config, ptr %58, i64 0, i32 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %73, i8 0, i64 16, i1 false)
  %86 = load ptr, ptr %85, align 8, !tbaa !326
  %87 = getelementptr inbounds %struct.config, ptr %57, i64 0, i32 8
  %88 = load ptr, ptr %87, align 8, !tbaa !7
  %89 = icmp ne ptr %86, null
  %90 = icmp ne ptr %88, null
  %91 = select i1 %89, i1 %90, i1 false
  br i1 %91, label %56, label %92, !llvm.loop !334

92:                                               ; preds = %83, %49
  %93 = load ptr, ptr @current, align 8, !tbaa !7
  store ptr null, ptr @current, align 8, !tbaa !7
  store ptr null, ptr @currentend, align 8, !tbaa !7
  %94 = icmp eq ptr %93, null
  br i1 %94, label %514, label %95

95:                                               ; preds = %92
  %96 = load ptr, ptr @freelist, align 8, !tbaa !7
  br label %97

97:                                               ; preds = %106, %95
  %98 = phi ptr [ %101, %106 ], [ %93, %95 ]
  %99 = phi ptr [ %98, %106 ], [ %96, %95 ]
  %100 = getelementptr inbounds %struct.config, ptr %98, i64 0, i32 7
  %101 = load ptr, ptr %100, align 8, !tbaa !335
  %102 = getelementptr inbounds %struct.config, ptr %98, i64 0, i32 2
  %103 = load ptr, ptr %102, align 8, !tbaa !157
  %104 = icmp eq ptr %103, null
  br i1 %104, label %106, label %105

105:                                              ; preds = %97
  tail call void @free(ptr noundef nonnull %103) #26
  br label %106

106:                                              ; preds = %105, %97
  store ptr %99, ptr %100, align 8, !tbaa !335
  %107 = icmp eq ptr %101, null
  br i1 %107, label %108, label %97, !llvm.loop !336

108:                                              ; preds = %106
  %.lcssa5 = phi ptr [ %98, %106 ]
  store ptr %.lcssa5, ptr @freelist, align 8, !tbaa !7
  br label %514

109:                                              ; preds = %46, %42, %25, %1
  %110 = load ptr, ptr @current, align 8, !tbaa !7
  %111 = icmp eq ptr %110, null
  br i1 %111, label %248, label %112

112:                                              ; preds = %109
  %113 = getelementptr inbounds %struct.lemon, ptr %0, i64 0, i32 8
  %114 = getelementptr inbounds %struct.lemon, ptr %0, i64 0, i32 32
  %115 = getelementptr inbounds %struct.lemon, ptr %0, i64 0, i32 7
  %116 = getelementptr inbounds %struct.config, ptr %2, i64 0, i32 1
  br label %117

117:                                              ; preds = %242, %112
  %118 = phi ptr [ %110, %112 ], [ %244, %242 ]
  %119 = load ptr, ptr %118, align 8, !tbaa !180
  %120 = getelementptr inbounds %struct.config, ptr %118, i64 0, i32 1
  %121 = load i32, ptr %120, align 8, !tbaa !181
  %122 = getelementptr inbounds %struct.rule, ptr %119, i64 0, i32 4
  %123 = load i32, ptr %122, align 8, !tbaa !96
  %124 = icmp slt i32 %121, %123
  br i1 %124, label %125, label %242

125:                                              ; preds = %117
  %126 = getelementptr inbounds %struct.rule, ptr %119, i64 0, i32 5
  %127 = load ptr, ptr %126, align 8, !tbaa !91
  %128 = sext i32 %121 to i64
  %129 = getelementptr inbounds ptr, ptr %127, i64 %128
  %130 = load ptr, ptr %129, align 8, !tbaa !7
  %131 = getelementptr inbounds %struct.symbol, ptr %130, i64 0, i32 2
  %132 = load i32, ptr %131, align 4, !tbaa !102
  %133 = icmp eq i32 %132, 1
  br i1 %133, label %134, label %242

134:                                              ; preds = %125
  %135 = getelementptr inbounds %struct.symbol, ptr %130, i64 0, i32 3
  %136 = load ptr, ptr %135, align 8, !tbaa !7
  %137 = icmp eq ptr %136, null
  br i1 %137, label %138, label %150

138:                                              ; preds = %134
  %139 = load ptr, ptr %113, align 8, !tbaa !51
  %140 = icmp eq ptr %130, %139
  br i1 %140, label %242, label %141

141:                                              ; preds = %138
  %142 = load ptr, ptr %114, align 8, !tbaa !49
  %143 = getelementptr inbounds %struct.rule, ptr %119, i64 0, i32 7
  %144 = load i32, ptr %143, align 8, !tbaa !87
  %145 = load ptr, ptr %130, align 8, !tbaa !89
  tail call void (ptr, i32, ptr, ...) @ErrorMsg(ptr noundef %142, i32 noundef %144, ptr noundef nonnull @.str.6, ptr noundef %145) #27
  %146 = load i32, ptr %115, align 8, !tbaa !57
  %147 = add nsw i32 %146, 1
  store i32 %147, ptr %115, align 8, !tbaa !57
  %148 = load ptr, ptr %135, align 8, !tbaa !7
  %149 = icmp eq ptr %148, null
  br i1 %149, label %242, label %150

150:                                              ; preds = %141, %134
  %151 = phi ptr [ %148, %141 ], [ %136, %134 ]
  %152 = getelementptr inbounds %struct.config, ptr %118, i64 0, i32 3
  br label %153

153:                                              ; preds = %238, %150
  %154 = phi ptr [ %151, %150 ], [ %240, %238 ]
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %2) #25
  store ptr %154, ptr %2, align 8, !tbaa !180
  store i32 0, ptr %116, align 8, !tbaa !181
  %155 = call fastcc ptr @Configtable_find(ptr noundef nonnull %2) #27
  %156 = icmp eq ptr %155, null
  br i1 %156, label %157, label %165

157:                                              ; preds = %153
  %158 = tail call fastcc ptr @newconfig() #27
  store ptr %154, ptr %158, align 8, !tbaa !180
  %159 = getelementptr inbounds %struct.config, ptr %158, i64 0, i32 1
  store i32 0, ptr %159, align 8, !tbaa !181
  %160 = tail call fastcc ptr @SetNew() #27
  %161 = getelementptr inbounds %struct.config, ptr %158, i64 0, i32 2
  store ptr %160, ptr %161, align 8, !tbaa !157
  %162 = getelementptr inbounds %struct.config, ptr %158, i64 0, i32 3
  %163 = getelementptr inbounds %struct.config, ptr %158, i64 0, i32 7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %162, i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %163, i8 0, i64 16, i1 false)
  %164 = load ptr, ptr @currentend, align 8, !tbaa !7
  store ptr %158, ptr %164, align 8, !tbaa !7
  store ptr %163, ptr @currentend, align 8, !tbaa !7
  tail call fastcc void @Configtable_insert(ptr noundef nonnull %158) #27
  br label %165

165:                                              ; preds = %157, %153
  %166 = phi ptr [ %158, %157 ], [ %155, %153 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %2) #25
  %167 = getelementptr inbounds %struct.config, ptr %166, i64 0, i32 2
  %168 = load i32, ptr @size, align 4
  %169 = icmp sgt i32 %168, 0
  %170 = zext i32 %168 to i64
  br label %171

171:                                              ; preds = %226, %165
  %172 = phi i64 [ %173, %226 ], [ %128, %165 ]
  %173 = add nsw i64 %172, 1
  %174 = load i32, ptr %122, align 8, !tbaa !96
  %175 = sext i32 %174 to i64
  %176 = icmp slt i64 %173, %175
  br i1 %176, label %177, label %230

177:                                              ; preds = %171
  %178 = load ptr, ptr %126, align 8, !tbaa !91
  %179 = getelementptr inbounds ptr, ptr %178, i64 %173
  %180 = load ptr, ptr %179, align 8, !tbaa !7
  %181 = getelementptr inbounds %struct.symbol, ptr %180, i64 0, i32 2
  %182 = load i32, ptr %181, align 4, !tbaa !102
  switch i32 %182, label %209 [
    i32 0, label %189
    i32 2, label %183
  ]

183:                                              ; preds = %177
  %.lcssa4 = phi i64 [ %173, %177 ]
  %.lcssa1 = phi ptr [ %180, %177 ]
  %184 = getelementptr inbounds %struct.symbol, ptr %.lcssa1, i64 0, i32 14
  %185 = load i32, ptr %184, align 4, !tbaa !103
  %186 = icmp sgt i32 %185, 0
  br i1 %186, label %187, label %230

187:                                              ; preds = %183
  %188 = getelementptr inbounds %struct.symbol, ptr %.lcssa1, i64 0, i32 15
  br label %195

189:                                              ; preds = %177
  %.lcssa3 = phi i64 [ %173, %177 ]
  %.lcssa = phi ptr [ %180, %177 ]
  %190 = load ptr, ptr %167, align 8, !tbaa !157
  %191 = getelementptr inbounds %struct.symbol, ptr %.lcssa, i64 0, i32 1
  %192 = load i32, ptr %191, align 8, !tbaa !122
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i8, ptr %190, i64 %193
  store i8 1, ptr %194, align 1, !tbaa !17
  br label %230

195:                                              ; preds = %195, %187
  %196 = phi i64 [ 0, %187 ], [ %205, %195 ]
  %197 = load ptr, ptr %167, align 8, !tbaa !157
  %198 = load ptr, ptr %188, align 8, !tbaa !104
  %199 = getelementptr inbounds ptr, ptr %198, i64 %196
  %200 = load ptr, ptr %199, align 8, !tbaa !7
  %201 = getelementptr inbounds %struct.symbol, ptr %200, i64 0, i32 1
  %202 = load i32, ptr %201, align 8, !tbaa !122
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i8, ptr %197, i64 %203
  store i8 1, ptr %204, align 1, !tbaa !17
  %205 = add nuw nsw i64 %196, 1
  %206 = load i32, ptr %184, align 4, !tbaa !103
  %207 = sext i32 %206 to i64
  %208 = icmp slt i64 %205, %207
  br i1 %208, label %195, label %230, !llvm.loop !337

209:                                              ; preds = %177
  %210 = load ptr, ptr %167, align 8, !tbaa !157
  %211 = getelementptr inbounds %struct.symbol, ptr %180, i64 0, i32 7
  %212 = load ptr, ptr %211, align 8, !tbaa !138
  br i1 %169, label %213, label %226

213:                                              ; preds = %223, %209
  %214 = phi i64 [ %224, %223 ], [ 0, %209 ]
  %215 = getelementptr inbounds i8, ptr %212, i64 %214
  %216 = load i8, ptr %215, align 1, !tbaa !17
  %217 = icmp eq i8 %216, 0
  br i1 %217, label %223, label %218

218:                                              ; preds = %213
  %219 = getelementptr inbounds i8, ptr %210, i64 %214
  %220 = load i8, ptr %219, align 1, !tbaa !17
  %221 = icmp eq i8 %220, 0
  br i1 %221, label %222, label %223

222:                                              ; preds = %218
  store i8 1, ptr %219, align 1, !tbaa !17
  br label %223

223:                                              ; preds = %222, %218, %213
  %224 = add nuw nsw i64 %214, 1
  %225 = icmp eq i64 %224, %170
  br i1 %225, label %226, label %213, !llvm.loop !143

226:                                              ; preds = %223, %209
  %227 = getelementptr inbounds %struct.symbol, ptr %180, i64 0, i32 8
  %228 = load i32, ptr %227, align 8, !tbaa !136
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %230, label %171, !llvm.loop !338

230:                                              ; preds = %226, %195, %189, %183, %171
  %.lcssa2 = phi i64 [ %173, %226 ], [ %.lcssa4, %195 ], [ %.lcssa3, %189 ], [ %.lcssa4, %183 ], [ %173, %171 ]
  %231 = trunc i64 %.lcssa2 to i32
  %232 = load i32, ptr %122, align 8, !tbaa !96
  %233 = icmp eq i32 %232, %231
  br i1 %233, label %234, label %238

234:                                              ; preds = %230
  %235 = tail call fastcc ptr @Plink_new() #27
  %236 = load ptr, ptr %152, align 8, !tbaa !7
  %237 = getelementptr inbounds %struct.plink, ptr %235, i64 0, i32 1
  store ptr %236, ptr %237, align 8, !tbaa !169
  store ptr %235, ptr %152, align 8, !tbaa !7
  store ptr %166, ptr %235, align 8, !tbaa !167
  br label %238

238:                                              ; preds = %234, %230
  %239 = getelementptr inbounds %struct.rule, ptr %154, i64 0, i32 12
  %240 = load ptr, ptr %239, align 8, !tbaa !7
  %241 = icmp eq ptr %240, null
  br i1 %241, label %242, label %153, !llvm.loop !339

242:                                              ; preds = %238, %141, %138, %125, %117
  %243 = getelementptr inbounds %struct.config, ptr %118, i64 0, i32 7
  %244 = load ptr, ptr %243, align 8, !tbaa !7
  %245 = icmp eq ptr %244, null
  br i1 %245, label %246, label %117, !llvm.loop !340

246:                                              ; preds = %242
  %247 = load ptr, ptr @current, align 8, !tbaa !7
  br label %248

248:                                              ; preds = %246, %109
  %249 = phi ptr [ %247, %246 ], [ null, %109 ]
  %250 = getelementptr inbounds %struct.config, ptr %249, i64 0, i32 7
  %251 = tail call fastcc ptr @msort(ptr noundef %249, ptr noundef nonnull %250, ptr noundef nonnull @Configcmp) #27
  store ptr null, ptr @current, align 8, !tbaa !7
  store ptr null, ptr @currentend, align 8, !tbaa !7
  %252 = tail call noalias dereferenceable_or_null(56) ptr @calloc(i64 noundef 1, i64 noundef 56) #34
  %253 = icmp eq ptr %252, null
  br i1 %253, label %254, label %257

254:                                              ; preds = %248
  %255 = load ptr, ptr @stderr, align 8, !tbaa !7
  %256 = tail call i64 @fwrite(ptr nonnull @.str.10, i64 28, i64 1, ptr %255) #32
  tail call void @exit(i32 noundef 1) #31
  unreachable

257:                                              ; preds = %248
  store ptr %5, ptr %252, align 8, !tbaa !341
  %258 = getelementptr inbounds %struct.state, ptr %252, i64 0, i32 1
  store ptr %251, ptr %258, align 8, !tbaa !342
  %259 = getelementptr inbounds %struct.lemon, ptr %0, i64 0, i32 2
  %260 = load i32, ptr %259, align 8, !tbaa !146
  %261 = add nsw i32 %260, 1
  store i32 %261, ptr %259, align 8, !tbaa !146
  %262 = getelementptr inbounds %struct.state, ptr %252, i64 0, i32 2
  store i32 %260, ptr %262, align 8, !tbaa !211
  %263 = getelementptr inbounds %struct.state, ptr %252, i64 0, i32 3
  store ptr null, ptr %263, align 8, !tbaa !185
  %264 = load ptr, ptr @x3a, align 8, !tbaa !7
  %265 = icmp eq ptr %264, null
  br i1 %265, label %402, label %266

266:                                              ; preds = %257
  %267 = icmp eq ptr %5, null
  br i1 %267, label %283, label %268

268:                                              ; preds = %268, %266
  %269 = phi i32 [ %279, %268 ], [ 0, %266 ]
  %270 = phi ptr [ %281, %268 ], [ %5, %266 ]
  %271 = mul nsw i32 %269, 571
  %272 = load ptr, ptr %270, align 8, !tbaa !180
  %273 = getelementptr inbounds %struct.rule, ptr %272, i64 0, i32 10
  %274 = load i32, ptr %273, align 8, !tbaa !97
  %275 = mul nsw i32 %274, 37
  %276 = add nsw i32 %275, %271
  %277 = getelementptr inbounds %struct.config, ptr %270, i64 0, i32 1
  %278 = load i32, ptr %277, align 8, !tbaa !181
  %279 = add nsw i32 %276, %278
  %280 = getelementptr inbounds %struct.config, ptr %270, i64 0, i32 8
  %281 = load ptr, ptr %280, align 8, !tbaa !326
  %282 = icmp eq ptr %281, null
  br i1 %282, label %283, label %268, !llvm.loop !327

283:                                              ; preds = %268, %266
  %284 = phi i32 [ 0, %266 ], [ %279, %268 ]
  %285 = load i32, ptr %264, align 8, !tbaa !40
  %286 = add nsw i32 %285, -1
  %287 = and i32 %286, %284
  %288 = getelementptr inbounds %struct.s_x4, ptr %264, i64 0, i32 3
  %289 = load ptr, ptr %288, align 8, !tbaa !44
  %290 = sext i32 %287 to i64
  %291 = getelementptr inbounds ptr, ptr %289, i64 %290
  %292 = load ptr, ptr %291, align 8, !tbaa !7
  %293 = icmp eq ptr %292, null
  br i1 %293, label %304, label %298

294:                                              ; preds = %298
  %295 = getelementptr inbounds %struct.s_x3node, ptr %299, i64 0, i32 2
  %296 = load ptr, ptr %295, align 8, !tbaa !7
  %297 = icmp eq ptr %296, null
  br i1 %297, label %304, label %298, !llvm.loop !343

298:                                              ; preds = %294, %283
  %299 = phi ptr [ %296, %294 ], [ %292, %283 ]
  %300 = getelementptr inbounds %struct.s_x3node, ptr %299, i64 0, i32 1
  %301 = load ptr, ptr %300, align 8, !tbaa !328
  %302 = tail call fastcc i32 @statecmp(ptr noundef %301, ptr noundef %5) #27
  %303 = icmp eq i32 %302, 0
  br i1 %303, label %402, label %294

304:                                              ; preds = %294, %283
  %305 = getelementptr inbounds %struct.s_x4, ptr %264, i64 0, i32 1
  %306 = load i32, ptr %305, align 4, !tbaa !42
  %307 = icmp slt i32 %306, %285
  br i1 %307, label %308, label %311

308:                                              ; preds = %304
  %309 = getelementptr inbounds %struct.s_x4, ptr %264, i64 0, i32 2
  %310 = load ptr, ptr %309, align 8, !tbaa !43
  br label %380

311:                                              ; preds = %304
  %312 = shl nsw i32 %285, 1
  %313 = sext i32 %312 to i64
  %314 = mul nsw i64 %313, 40
  %315 = tail call noalias ptr @malloc(i64 noundef %314) #33
  %316 = icmp eq ptr %315, null
  br i1 %316, label %402, label %317

317:                                              ; preds = %311
  %318 = getelementptr %struct.s_x3node, ptr %315, i64 %313
  %319 = icmp sgt i32 %285, 0
  br i1 %319, label %320, label %324

320:                                              ; preds = %317
  %321 = tail call i32 @llvm.smax.i32(i32 %312, i32 1)
  %322 = zext i32 %321 to i64
  %323 = shl nuw nsw i64 %322, 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %318, i8 0, i64 %323, i1 false), !tbaa !7
  br label %324

324:                                              ; preds = %320, %317
  %325 = icmp sgt i32 %306, 0
  br i1 %325, label %328, label %326

326:                                              ; preds = %324
  %327 = add nsw i32 %312, -1
  br label %374

328:                                              ; preds = %324
  %329 = getelementptr inbounds %struct.s_x4, ptr %264, i64 0, i32 2
  %330 = add nsw i32 %312, -1
  %331 = zext i32 %306 to i64
  br label %332

332:                                              ; preds = %366, %328
  %333 = phi i64 [ 0, %328 ], [ %372, %366 ]
  %334 = load ptr, ptr %329, align 8, !tbaa !43
  %335 = getelementptr inbounds %struct.s_x3node, ptr %334, i64 %333
  %336 = getelementptr inbounds %struct.s_x3node, ptr %334, i64 %333, i32 1
  %337 = load ptr, ptr %336, align 8, !tbaa !328
  %338 = icmp eq ptr %337, null
  br i1 %338, label %354, label %339

339:                                              ; preds = %339, %332
  %340 = phi i32 [ %350, %339 ], [ 0, %332 ]
  %341 = phi ptr [ %352, %339 ], [ %337, %332 ]
  %342 = mul nsw i32 %340, 571
  %343 = load ptr, ptr %341, align 8, !tbaa !180
  %344 = getelementptr inbounds %struct.rule, ptr %343, i64 0, i32 10
  %345 = load i32, ptr %344, align 8, !tbaa !97
  %346 = mul nsw i32 %345, 37
  %347 = add nsw i32 %346, %342
  %348 = getelementptr inbounds %struct.config, ptr %341, i64 0, i32 1
  %349 = load i32, ptr %348, align 8, !tbaa !181
  %350 = add nsw i32 %347, %349
  %351 = getelementptr inbounds %struct.config, ptr %341, i64 0, i32 8
  %352 = load ptr, ptr %351, align 8, !tbaa !326
  %353 = icmp eq ptr %352, null
  br i1 %353, label %354, label %339, !llvm.loop !327

354:                                              ; preds = %339, %332
  %355 = phi i32 [ 0, %332 ], [ %350, %339 ]
  %356 = and i32 %355, %330
  %357 = getelementptr inbounds %struct.s_x3node, ptr %315, i64 %333
  %358 = sext i32 %356 to i64
  %359 = getelementptr inbounds ptr, ptr %318, i64 %358
  %360 = load ptr, ptr %359, align 8, !tbaa !7
  %361 = icmp eq ptr %360, null
  br i1 %361, label %366, label %362

362:                                              ; preds = %354
  %363 = getelementptr inbounds %struct.s_x3node, ptr %315, i64 %333, i32 2
  %364 = getelementptr inbounds %struct.s_x3node, ptr %360, i64 0, i32 3
  store ptr %363, ptr %364, align 8, !tbaa !344
  %365 = load ptr, ptr %359, align 8, !tbaa !7
  br label %366

366:                                              ; preds = %362, %354
  %367 = phi ptr [ %365, %362 ], [ null, %354 ]
  %368 = getelementptr inbounds %struct.s_x3node, ptr %315, i64 %333, i32 2
  store ptr %367, ptr %368, align 8, !tbaa !345
  %369 = getelementptr inbounds %struct.s_x3node, ptr %315, i64 %333, i32 1
  store ptr %337, ptr %369, align 8, !tbaa !328
  %370 = load ptr, ptr %335, align 8, !tbaa !160
  store ptr %370, ptr %357, align 8, !tbaa !160
  %371 = getelementptr inbounds %struct.s_x3node, ptr %315, i64 %333, i32 3
  store ptr %359, ptr %371, align 8, !tbaa !344
  store ptr %357, ptr %359, align 8, !tbaa !7
  %372 = add nuw nsw i64 %333, 1
  %373 = icmp eq i64 %372, %331
  br i1 %373, label %374, label %332, !llvm.loop !346

374:                                              ; preds = %366, %326
  %375 = phi i32 [ %327, %326 ], [ %330, %366 ]
  %376 = getelementptr inbounds %struct.s_x4, ptr %264, i64 0, i32 2
  %377 = load ptr, ptr %376, align 8, !tbaa !43
  tail call void @free(ptr noundef %377) #26
  store i32 %312, ptr %264, align 8, !tbaa.struct !311
  store ptr %315, ptr %376, align 8, !tbaa.struct !312
  store ptr %318, ptr %288, align 8, !tbaa.struct !313
  %378 = and i32 %375, %284
  %379 = sext i32 %378 to i64
  br label %380

380:                                              ; preds = %374, %308
  %381 = phi i64 [ %290, %308 ], [ %379, %374 ]
  %382 = phi ptr [ %289, %308 ], [ %318, %374 ]
  %383 = phi ptr [ %310, %308 ], [ %315, %374 ]
  %384 = add nsw i32 %306, 1
  store i32 %384, ptr %305, align 4, !tbaa !42
  %385 = sext i32 %306 to i64
  %386 = getelementptr inbounds %struct.s_x3node, ptr %383, i64 %385
  %387 = getelementptr inbounds %struct.s_x3node, ptr %383, i64 %385, i32 1
  store ptr %5, ptr %387, align 8, !tbaa !328
  store ptr %252, ptr %386, align 8, !tbaa !160
  %388 = getelementptr inbounds ptr, ptr %382, i64 %381
  %389 = load ptr, ptr %388, align 8, !tbaa !7
  %390 = icmp eq ptr %389, null
  br i1 %390, label %395, label %391

391:                                              ; preds = %380
  %392 = getelementptr inbounds %struct.s_x3node, ptr %383, i64 %385, i32 2
  %393 = getelementptr inbounds %struct.s_x3node, ptr %389, i64 0, i32 3
  store ptr %392, ptr %393, align 8, !tbaa !344
  %394 = load ptr, ptr %388, align 8, !tbaa !7
  br label %395

395:                                              ; preds = %391, %380
  %396 = phi ptr [ %394, %391 ], [ null, %380 ]
  %397 = getelementptr inbounds %struct.s_x3node, ptr %383, i64 %385, i32 2
  store ptr %396, ptr %397, align 8, !tbaa !345
  store ptr %386, ptr %388, align 8, !tbaa !7
  %398 = load ptr, ptr %288, align 8, !tbaa !44
  %399 = getelementptr inbounds ptr, ptr %398, i64 %381
  %400 = getelementptr inbounds %struct.s_x3node, ptr %383, i64 %385, i32 3
  store ptr %399, ptr %400, align 8, !tbaa !344
  %401 = load ptr, ptr %258, align 8, !tbaa !7
  br label %402

402:                                              ; preds = %395, %311, %298, %257
  %403 = phi ptr [ %251, %257 ], [ %251, %311 ], [ %401, %395 ], [ %251, %298 ]
  %404 = icmp eq ptr %403, null
  br i1 %404, label %514, label %405

405:                                              ; preds = %405, %402
  %406 = phi ptr [ %409, %405 ], [ %403, %402 ]
  %407 = getelementptr inbounds %struct.config, ptr %406, i64 0, i32 6
  store i32 1, ptr %407, align 8, !tbaa !173
  %408 = getelementptr inbounds %struct.config, ptr %406, i64 0, i32 7
  %409 = load ptr, ptr %408, align 8, !tbaa !7
  %410 = icmp eq ptr %409, null
  br i1 %410, label %411, label %405, !llvm.loop !347

411:                                              ; preds = %510, %405
  %412 = phi ptr [ %512, %510 ], [ %403, %405 ]
  %413 = getelementptr inbounds %struct.config, ptr %412, i64 0, i32 6
  %414 = load i32, ptr %413, align 8, !tbaa !173
  %415 = icmp eq i32 %414, 0
  br i1 %415, label %510, label %416

416:                                              ; preds = %411
  %417 = getelementptr inbounds %struct.config, ptr %412, i64 0, i32 1
  %418 = load i32, ptr %417, align 8, !tbaa !181
  %419 = load ptr, ptr %412, align 8, !tbaa !180
  %420 = getelementptr inbounds %struct.rule, ptr %419, i64 0, i32 4
  %421 = load i32, ptr %420, align 8, !tbaa !96
  %422 = icmp slt i32 %418, %421
  br i1 %422, label %423, label %510

423:                                              ; preds = %416
  store ptr null, ptr @current, align 8, !tbaa !7
  store ptr @current, ptr @currentend, align 8, !tbaa !7
  store ptr null, ptr @basis, align 8, !tbaa !7
  store ptr @basis, ptr @basisend, align 8, !tbaa !7
  tail call void (i32, ...) @Configtable_clear(i32 noundef 0) #27
  %424 = load ptr, ptr %412, align 8, !tbaa !180
  %425 = getelementptr inbounds %struct.rule, ptr %424, i64 0, i32 5
  %426 = load ptr, ptr %425, align 8, !tbaa !91
  %427 = load i32, ptr %417, align 8, !tbaa !181
  %428 = sext i32 %427 to i64
  %429 = getelementptr inbounds ptr, ptr %426, i64 %428
  %430 = load ptr, ptr %429, align 8, !tbaa !7
  %431 = getelementptr inbounds %struct.symbol, ptr %430, i64 0, i32 2
  %432 = getelementptr inbounds %struct.symbol, ptr %430, i64 0, i32 14
  %433 = getelementptr inbounds %struct.symbol, ptr %430, i64 0, i32 15
  br label %434

434:                                              ; preds = %489, %423
  %435 = phi ptr [ %412, %423 ], [ %491, %489 ]
  %436 = getelementptr inbounds %struct.config, ptr %435, i64 0, i32 6
  %437 = load i32, ptr %436, align 8, !tbaa !173
  %438 = icmp eq i32 %437, 0
  br i1 %438, label %489, label %439

439:                                              ; preds = %434
  %440 = getelementptr inbounds %struct.config, ptr %435, i64 0, i32 1
  %441 = load i32, ptr %440, align 8, !tbaa !181
  %442 = load ptr, ptr %435, align 8, !tbaa !180
  %443 = getelementptr inbounds %struct.rule, ptr %442, i64 0, i32 4
  %444 = load i32, ptr %443, align 8, !tbaa !96
  %445 = icmp slt i32 %441, %444
  br i1 %445, label %446, label %489

446:                                              ; preds = %439
  %447 = getelementptr inbounds %struct.rule, ptr %442, i64 0, i32 5
  %448 = load ptr, ptr %447, align 8, !tbaa !91
  %449 = sext i32 %441 to i64
  %450 = getelementptr inbounds ptr, ptr %448, i64 %449
  %451 = load ptr, ptr %450, align 8, !tbaa !7
  %452 = icmp eq ptr %451, %430
  br i1 %452, label %482, label %453

453:                                              ; preds = %446
  %454 = getelementptr inbounds %struct.symbol, ptr %451, i64 0, i32 2
  %455 = load i32, ptr %454, align 4, !tbaa !102
  %456 = icmp eq i32 %455, 2
  br i1 %456, label %457, label %489

457:                                              ; preds = %453
  %458 = load i32, ptr %431, align 4, !tbaa !102
  %459 = icmp eq i32 %458, 2
  br i1 %459, label %460, label %489

460:                                              ; preds = %457
  %461 = getelementptr inbounds %struct.symbol, ptr %451, i64 0, i32 14
  %462 = load i32, ptr %461, align 4, !tbaa !103
  %463 = load i32, ptr %432, align 4, !tbaa !103
  %464 = icmp eq i32 %462, %463
  br i1 %464, label %465, label %489

465:                                              ; preds = %460
  %466 = icmp sgt i32 %462, 0
  br i1 %466, label %467, label %482

467:                                              ; preds = %465
  %468 = getelementptr inbounds %struct.symbol, ptr %451, i64 0, i32 15
  %469 = load ptr, ptr %468, align 8, !tbaa !104
  %470 = load ptr, ptr %433, align 8, !tbaa !104
  %471 = zext i32 %462 to i64
  br label %475

472:                                              ; preds = %475
  %473 = add nuw nsw i64 %476, 1
  %474 = icmp eq i64 %473, %471
  br i1 %474, label %482, label %475, !llvm.loop !348

475:                                              ; preds = %472, %467
  %476 = phi i64 [ 0, %467 ], [ %473, %472 ]
  %477 = getelementptr inbounds ptr, ptr %469, i64 %476
  %478 = load ptr, ptr %477, align 8, !tbaa !7
  %479 = getelementptr inbounds ptr, ptr %470, i64 %476
  %480 = load ptr, ptr %479, align 8, !tbaa !7
  %481 = icmp eq ptr %478, %480
  br i1 %481, label %472, label %489

482:                                              ; preds = %472, %465, %446
  store i32 0, ptr %436, align 8, !tbaa !173
  %483 = add nsw i32 %441, 1
  %484 = tail call fastcc ptr @Configlist_addbasis(ptr noundef nonnull %442, i32 noundef %483) #27
  %485 = getelementptr inbounds %struct.config, ptr %484, i64 0, i32 4
  %486 = tail call fastcc ptr @Plink_new() #27
  %487 = load ptr, ptr %485, align 8, !tbaa !7
  %488 = getelementptr inbounds %struct.plink, ptr %486, i64 0, i32 1
  store ptr %487, ptr %488, align 8, !tbaa !169
  store ptr %486, ptr %485, align 8, !tbaa !7
  store ptr %435, ptr %486, align 8, !tbaa !167
  br label %489

489:                                              ; preds = %482, %475, %460, %457, %453, %439, %434
  %490 = getelementptr inbounds %struct.config, ptr %435, i64 0, i32 7
  %491 = load ptr, ptr %490, align 8, !tbaa !335
  %492 = icmp eq ptr %491, null
  br i1 %492, label %493, label %434, !llvm.loop !349

493:                                              ; preds = %489
  %494 = tail call fastcc ptr @getstate(ptr noundef %0) #27
  %495 = load i32, ptr %431, align 4, !tbaa !102
  %496 = icmp eq i32 %495, 2
  br i1 %496, label %497, label %509

497:                                              ; preds = %493
  %498 = load i32, ptr %432, align 4, !tbaa !103
  %499 = icmp sgt i32 %498, 0
  br i1 %499, label %500, label %510

500:                                              ; preds = %500, %497
  %501 = phi i64 [ %505, %500 ], [ 0, %497 ]
  %502 = load ptr, ptr %433, align 8, !tbaa !104
  %503 = getelementptr inbounds ptr, ptr %502, i64 %501
  %504 = load ptr, ptr %503, align 8, !tbaa !7
  tail call fastcc void @Action_add(ptr noundef nonnull %263, i32 noundef 0, ptr noundef %504, ptr noundef %494) #27
  %505 = add nuw nsw i64 %501, 1
  %506 = load i32, ptr %432, align 4, !tbaa !103
  %507 = sext i32 %506 to i64
  %508 = icmp slt i64 %505, %507
  br i1 %508, label %500, label %510, !llvm.loop !350

509:                                              ; preds = %493
  tail call fastcc void @Action_add(ptr noundef nonnull %263, i32 noundef 0, ptr noundef nonnull %430, ptr noundef %494) #27
  br label %510

510:                                              ; preds = %509, %500, %497, %416, %411
  %511 = getelementptr inbounds %struct.config, ptr %412, i64 0, i32 7
  %512 = load ptr, ptr %511, align 8, !tbaa !7
  %513 = icmp eq ptr %512, null
  br i1 %513, label %514, label %411, !llvm.loop !351

514:                                              ; preds = %510, %402, %108, %92
  %515 = phi ptr [ %47, %92 ], [ %47, %108 ], [ %252, %402 ], [ %252, %510 ]
  ret ptr %515
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc ptr @Plink_new() unnamed_addr #0 {
  %1 = load ptr, ptr @plink_freelist, align 8, !tbaa !7
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %32

3:                                                ; preds = %0
  %4 = tail call noalias dereferenceable_or_null(1600) ptr @calloc(i64 noundef 100, i64 noundef 16) #34
  store ptr %4, ptr @plink_freelist, align 8, !tbaa !7
  %5 = icmp eq ptr %4, null
  br i1 %5, label %27, label %6

6:                                                ; preds = %23, %3
  %7 = phi i64 [ %24, %23 ], [ 0, %3 ]
  %8 = phi <2 x i64> [ %25, %23 ], [ <i64 0, i64 1>, %3 ]
  %9 = icmp ult <2 x i64> %8, <i64 99, i64 99>
  %10 = add nuw nsw <2 x i64> %8, <i64 1, i64 1>
  %11 = extractelement <2 x i1> %9, i64 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.plink, ptr %4, i64 %7, i32 1
  %14 = extractelement <2 x i64> %10, i64 0
  %15 = getelementptr inbounds %struct.plink, ptr %4, i64 %14
  store ptr %15, ptr %13, align 8, !tbaa !169
  br label %16

16:                                               ; preds = %12, %6
  %17 = extractelement <2 x i1> %9, i64 1
  br i1 %17, label %18, label %23

18:                                               ; preds = %16
  %19 = or i64 %7, 1
  %20 = getelementptr inbounds %struct.plink, ptr %4, i64 %19, i32 1
  %21 = extractelement <2 x i64> %10, i64 1
  %22 = getelementptr inbounds %struct.plink, ptr %4, i64 %21
  store ptr %22, ptr %20, align 8, !tbaa !169
  br label %23

23:                                               ; preds = %18, %16
  %24 = add nuw nsw i64 %7, 2
  %25 = add <2 x i64> %8, <i64 2, i64 2>
  %26 = icmp eq i64 %24, 100
  br i1 %26, label %30, label %6, !llvm.loop !352

27:                                               ; preds = %3
  %28 = load ptr, ptr @stderr, align 8, !tbaa !7
  %29 = tail call i64 @fwrite(ptr nonnull @.str.48, i64 65, i64 1, ptr %28) #32
  tail call void @exit(i32 noundef 1) #31
  unreachable

30:                                               ; preds = %23
  %31 = getelementptr inbounds %struct.plink, ptr %4, i64 99, i32 1
  store ptr null, ptr %31, align 8, !tbaa !169
  br label %32

32:                                               ; preds = %30, %0
  %33 = phi ptr [ %4, %30 ], [ %1, %0 ]
  %34 = getelementptr inbounds %struct.plink, ptr %33, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !169
  store ptr %35, ptr @plink_freelist, align 8, !tbaa !7
  ret ptr %33
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @Action_add(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = load ptr, ptr @Action_new.freelist, align 8, !tbaa !7
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %36

7:                                                ; preds = %4
  %8 = tail call noalias dereferenceable_or_null(4000) ptr @calloc(i64 noundef 100, i64 noundef 40) #34
  store ptr %8, ptr @Action_new.freelist, align 8, !tbaa !7
  %9 = icmp eq ptr %8, null
  br i1 %9, label %31, label %10

10:                                               ; preds = %27, %7
  %11 = phi i64 [ %28, %27 ], [ 0, %7 ]
  %12 = phi <2 x i64> [ %29, %27 ], [ <i64 0, i64 1>, %7 ]
  %13 = icmp ult <2 x i64> %12, <i64 99, i64 99>
  %14 = add nuw nsw <2 x i64> %12, <i64 1, i64 1>
  %15 = extractelement <2 x i1> %13, i64 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.action, ptr %8, i64 %11, i32 3
  %18 = extractelement <2 x i64> %14, i64 0
  %19 = getelementptr inbounds %struct.action, ptr %8, i64 %18
  store ptr %19, ptr %17, align 8, !tbaa !187
  br label %20

20:                                               ; preds = %16, %10
  %21 = extractelement <2 x i1> %13, i64 1
  br i1 %21, label %22, label %27

22:                                               ; preds = %20
  %23 = or i64 %11, 1
  %24 = getelementptr inbounds %struct.action, ptr %8, i64 %23, i32 3
  %25 = extractelement <2 x i64> %14, i64 1
  %26 = getelementptr inbounds %struct.action, ptr %8, i64 %25
  store ptr %26, ptr %24, align 8, !tbaa !187
  br label %27

27:                                               ; preds = %22, %20
  %28 = add nuw nsw i64 %11, 2
  %29 = add <2 x i64> %12, <i64 2, i64 2>
  %30 = icmp eq i64 %28, 100
  br i1 %30, label %34, label %10, !llvm.loop !355

31:                                               ; preds = %7
  %32 = load ptr, ptr @stderr, align 8, !tbaa !7
  %33 = tail call i64 @fwrite(ptr nonnull @.str.164, i64 50, i64 1, ptr %32) #32
  tail call void @exit(i32 noundef 1) #31
  unreachable

34:                                               ; preds = %27
  %35 = getelementptr inbounds %struct.action, ptr %8, i64 99, i32 3
  store ptr null, ptr %35, align 8, !tbaa !187
  br label %36

36:                                               ; preds = %34, %4
  %37 = phi ptr [ %8, %34 ], [ %5, %4 ]
  %38 = getelementptr inbounds %struct.action, ptr %37, i64 0, i32 3
  %39 = load ptr, ptr %38, align 8, !tbaa !187
  store ptr %39, ptr @Action_new.freelist, align 8, !tbaa !7
  %40 = load ptr, ptr %0, align 8, !tbaa !7
  store ptr %40, ptr %38, align 8, !tbaa !187
  store ptr %37, ptr %0, align 8, !tbaa !7
  %41 = getelementptr inbounds %struct.action, ptr %37, i64 0, i32 1
  store i32 %1, ptr %41, align 8, !tbaa !191
  store ptr %2, ptr %37, align 8, !tbaa !190
  %42 = getelementptr inbounds %struct.action, ptr %37, i64 0, i32 2
  store ptr %3, ptr %42, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @actioncmp(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #17 {
  %3 = load ptr, ptr %0, align 8, !tbaa !190
  %4 = getelementptr inbounds %struct.symbol, ptr %3, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !122
  %6 = load ptr, ptr %1, align 8, !tbaa !190
  %7 = getelementptr inbounds %struct.symbol, ptr %6, i64 0, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !122
  %9 = sub nsw i32 %5, %8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %30

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.action, ptr %0, i64 0, i32 1
  %13 = load i32, ptr %12, align 8, !tbaa !191
  %14 = getelementptr inbounds %struct.action, ptr %1, i64 0, i32 1
  %15 = load i32, ptr %14, align 8, !tbaa !191
  %16 = sub nsw i32 %13, %15
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %30

18:                                               ; preds = %11
  %19 = icmp eq i32 %13, 2
  br i1 %19, label %20, label %30

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.action, ptr %0, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !17
  %23 = getelementptr inbounds %struct.rule, ptr %22, i64 0, i32 10
  %24 = load i32, ptr %23, align 8, !tbaa !97
  %25 = getelementptr inbounds %struct.action, ptr %1, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !17
  %27 = getelementptr inbounds %struct.rule, ptr %26, i64 0, i32 10
  %28 = load i32, ptr %27, align 8, !tbaa !97
  %29 = sub nsw i32 %24, %28
  br label %30

30:                                               ; preds = %20, %18, %11, %2
  %31 = phi i32 [ %29, %20 ], [ 0, %18 ], [ %16, %11 ], [ %9, %2 ]
  ret i32 %31
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc ptr @msort(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = alloca [30 x ptr], align 16
  call void @llvm.lifetime.start.p0(i64 240, ptr nonnull %4) #25
  %5 = ptrtoint ptr %0 to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(240) %4, i8 0, i64 240, i1 false), !tbaa !7
  %6 = ptrtoint ptr %1 to i64
  %7 = sub i64 %6, %5
  %8 = icmp eq ptr %0, null
  %9 = trunc i64 %7 to i32
  br i1 %8, label %32, label %10

10:                                               ; preds = %26, %3
  %11 = phi ptr [ %15, %26 ], [ %0, %3 ]
  %12 = ptrtoint ptr %11 to i64
  %13 = add i64 %7, %12
  %14 = inttoptr i64 %13 to ptr
  %15 = load ptr, ptr %14, align 8, !tbaa !7
  store ptr null, ptr %14, align 8, !tbaa !7
  br label %16

16:                                               ; preds = %22, %10
  %17 = phi i64 [ 0, %10 ], [ %24, %22 ]
  %18 = phi ptr [ %11, %10 ], [ %23, %22 ]
  %19 = getelementptr inbounds [30 x ptr], ptr %4, i64 0, i64 %17
  %20 = load ptr, ptr %19, align 8, !tbaa !7
  %21 = icmp eq ptr %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %16
  %23 = tail call fastcc ptr @merge(ptr noundef %18, ptr noundef nonnull %20, ptr noundef %2, i32 noundef %9) #27
  store ptr null, ptr %19, align 8, !tbaa !7
  %24 = add nuw nsw i64 %17, 1
  %25 = icmp eq i64 %24, 29
  br i1 %25, label %26, label %16, !llvm.loop !356

26:                                               ; preds = %22, %16
  %27 = phi ptr [ %23, %22 ], [ %18, %16 ]
  %28 = phi i64 [ 29, %22 ], [ %17, %16 ]
  %29 = and i64 %28, 4294967295
  %30 = getelementptr inbounds [30 x ptr], ptr %4, i64 0, i64 %29
  store ptr %27, ptr %30, align 8, !tbaa !7
  %31 = icmp eq ptr %15, null
  br i1 %31, label %32, label %10, !llvm.loop !357

32:                                               ; preds = %26, %3
  br label %33

33:                                               ; preds = %41, %32
  %34 = phi i64 [ %43, %41 ], [ 0, %32 ]
  %35 = phi ptr [ %42, %41 ], [ null, %32 ]
  %36 = getelementptr inbounds [30 x ptr], ptr %4, i64 0, i64 %34
  %37 = load ptr, ptr %36, align 8, !tbaa !7
  %38 = icmp eq ptr %37, null
  br i1 %38, label %41, label %39

39:                                               ; preds = %33
  %40 = tail call fastcc ptr @merge(ptr noundef %35, ptr noundef nonnull %37, ptr noundef %2, i32 noundef %9) #27
  br label %41

41:                                               ; preds = %39, %33
  %42 = phi ptr [ %40, %39 ], [ %35, %33 ]
  %43 = add nuw nsw i64 %34, 1
  %44 = icmp eq i64 %43, 30
  br i1 %44, label %45, label %33, !llvm.loop !358

45:                                               ; preds = %41
  %.lcssa = phi ptr [ %42, %41 ]
  call void @llvm.lifetime.end.p0(i64 240, ptr nonnull %4) #25
  ret ptr %.lcssa
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @compute_action(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #17 {
  %3 = getelementptr inbounds %struct.action, ptr %1, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !191
  switch i32 %4, label %31 [
    i32 0, label %5
    i32 2, label %10
    i32 3, label %18
    i32 1, label %24
  ]

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.action, ptr %1, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !17
  %8 = getelementptr inbounds %struct.state, ptr %7, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !211
  br label %31

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.action, ptr %1, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !17
  %13 = getelementptr inbounds %struct.rule, ptr %12, i64 0, i32 10
  %14 = load i32, ptr %13, align 8, !tbaa !97
  %15 = getelementptr inbounds %struct.lemon, ptr %0, i64 0, i32 2
  %16 = load i32, ptr %15, align 8, !tbaa !146
  %17 = add nsw i32 %16, %14
  br label %31

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.lemon, ptr %0, i64 0, i32 2
  %20 = load i32, ptr %19, align 8, !tbaa !146
  %21 = getelementptr inbounds %struct.lemon, ptr %0, i64 0, i32 3
  %22 = load i32, ptr %21, align 4, !tbaa !81
  %23 = add nsw i32 %22, %20
  br label %31

24:                                               ; preds = %2
  %25 = getelementptr inbounds %struct.lemon, ptr %0, i64 0, i32 2
  %26 = load i32, ptr %25, align 8, !tbaa !146
  %27 = getelementptr inbounds %struct.lemon, ptr %0, i64 0, i32 3
  %28 = load i32, ptr %27, align 4, !tbaa !81
  %29 = add i32 %26, 1
  %30 = add i32 %29, %28
  br label %31

31:                                               ; preds = %24, %18, %10, %5, %2
  %32 = phi i32 [ %30, %24 ], [ %23, %18 ], [ %17, %10 ], [ %9, %5 ], [ -1, %2 ]
  ret i32 %32
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @stateResortCompare(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #17 {
  %3 = load ptr, ptr %0, align 8, !tbaa !7
  %4 = load ptr, ptr %1, align 8, !tbaa !7
  %5 = getelementptr inbounds %struct.state, ptr %3, i64 0, i32 5
  %6 = load i32, ptr %5, align 4, !tbaa !208
  %7 = getelementptr inbounds %struct.state, ptr %4, i64 0, i32 5
  %8 = load i32, ptr %7, align 4, !tbaa !208
  %9 = icmp slt i32 %6, %8
  br i1 %9, label %29, label %10

10:                                               ; preds = %2
  %11 = icmp sgt i32 %6, %8
  br i1 %11, label %29, label %12

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.state, ptr %3, i64 0, i32 4
  %14 = load i32, ptr %13, align 8, !tbaa !207
  %15 = getelementptr inbounds %struct.state, ptr %4, i64 0, i32 4
  %16 = load i32, ptr %15, align 8, !tbaa !207
  %17 = icmp slt i32 %14, %16
  br i1 %17, label %29, label %18

18:                                               ; preds = %12
  %19 = icmp sgt i32 %14, %16
  br i1 %19, label %29, label %20

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.state, ptr %3, i64 0, i32 2
  %22 = load i32, ptr %21, align 8, !tbaa !211
  %23 = getelementptr inbounds %struct.state, ptr %4, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !211
  %25 = icmp slt i32 %22, %24
  br i1 %25, label %29, label %26

26:                                               ; preds = %20
  %27 = icmp sgt i32 %22, %24
  %28 = zext i1 %27 to i32
  br label %29

29:                                               ; preds = %26, %20, %18, %12, %10, %2
  %30 = phi i32 [ -1, %2 ], [ 1, %10 ], [ -1, %12 ], [ 1, %18 ], [ -1, %20 ], [ %28, %26 ]
  ret i32 %30
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc ptr @file_open(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.lemon, ptr %0, i64 0, i32 33
  %5 = load ptr, ptr %4, align 8, !tbaa !286
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %3
  tail call void @free(ptr noundef nonnull %5) #26
  br label %8

8:                                                ; preds = %7, %3
  %9 = tail call fastcc ptr @file_makename(ptr noundef nonnull %0, ptr noundef %1) #27
  store ptr %9, ptr %4, align 8, !tbaa !286
  %10 = load i8, ptr %2, align 1, !tbaa !17
  %11 = icmp eq i8 %10, 114
  br i1 %11, label %23, label %12

12:                                               ; preds = %8
  %13 = load ptr, ptr @stdout, align 8, !tbaa !7
  %14 = icmp eq ptr %13, null
  %15 = icmp eq i8 %10, 119
  %16 = and i1 %15, %14
  br i1 %16, label %17, label %23

17:                                               ; preds = %12
  %18 = load ptr, ptr @stderr, align 8, !tbaa !7
  %19 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %18, ptr noundef nonnull @.str.50, ptr noundef %9) #30
  %20 = getelementptr inbounds %struct.lemon, ptr %0, i64 0, i32 7
  %21 = load i32, ptr %20, align 8, !tbaa !57
  %22 = add nsw i32 %21, 1
  store i32 %22, ptr %20, align 8, !tbaa !57
  br label %23

23:                                               ; preds = %17, %12, %8
  %24 = phi ptr [ null, %17 ], [ null, %8 ], [ %13, %12 ]
  ret ptr %24
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @access(ptr nocapture noundef readonly, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize memory(read)
declare noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #21

; Function Attrs: nofree nounwind optsize uwtable
define internal fastcc void @tplt_xfer(ptr noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef %2, ptr nocapture noundef %3) unnamed_addr #8 {
  %5 = alloca [1000 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 1000, ptr nonnull %5) #25
  %6 = getelementptr inbounds [1000 x i8], ptr %5, i64 0, i64 1
  %7 = icmp eq ptr %0, null
  br label %8

8:                                                ; preds = %61, %4
  %9 = call ptr @fgets(ptr noundef nonnull %5, i32 noundef 1000, ptr noundef %1) #27
  %10 = icmp eq ptr %9, null
  br i1 %10, label %66, label %11

11:                                               ; preds = %8
  %12 = load i8, ptr %5, align 16, !tbaa !17
  %13 = icmp ne i8 %12, 37
  %14 = load i8, ptr %6, align 1
  %15 = icmp ne i8 %14, 37
  %16 = select i1 %13, i1 true, i1 %15
  br i1 %16, label %17, label %66

17:                                               ; preds = %11
  %18 = load i32, ptr %3, align 4, !tbaa !11
  %19 = add nsw i32 %18, 1
  store i32 %19, ptr %3, align 4, !tbaa !11
  br i1 %7, label %61, label %20

20:                                               ; preds = %54, %17
  %21 = phi i8 [ %60, %54 ], [ %12, %17 ]
  %22 = phi i32 [ %57, %54 ], [ 0, %17 ]
  %23 = phi i32 [ %56, %54 ], [ 0, %17 ]
  switch i8 %21, label %54 [
    i8 0, label %61
    i8 80, label %24
  ]

24:                                               ; preds = %20
  %25 = sext i32 %22 to i64
  %26 = getelementptr inbounds [1000 x i8], ptr %5, i64 0, i64 %25
  %27 = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %26, ptr noundef nonnull dereferenceable(6) @.str.83, i64 noundef 5) #29
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %54

29:                                               ; preds = %24
  %30 = icmp eq i32 %22, 0
  br i1 %30, label %43, label %31

31:                                               ; preds = %29
  %32 = tail call ptr @__ctype_b_loc() #28
  %33 = load ptr, ptr %32, align 8, !tbaa !7
  %34 = add nsw i32 %22, -1
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [1000 x i8], ptr %5, i64 0, i64 %35
  %37 = load i8, ptr %36, align 1, !tbaa !17
  %38 = sext i8 %37 to i64
  %39 = getelementptr inbounds i16, ptr %33, i64 %38
  %40 = load i16, ptr %39, align 2, !tbaa !58
  %41 = and i16 %40, 1024
  %42 = icmp eq i16 %41, 0
  br i1 %42, label %43, label %54

43:                                               ; preds = %31, %29
  %44 = icmp sgt i32 %22, %23
  br i1 %44, label %45, label %50

45:                                               ; preds = %43
  %46 = sub nsw i32 %22, %23
  %47 = sext i32 %23 to i64
  %48 = getelementptr inbounds [1000 x i8], ptr %5, i64 0, i64 %47
  %49 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.84, i32 noundef %46, ptr noundef nonnull %48) #27
  br label %50

50:                                               ; preds = %45, %43
  %51 = call i32 @fputs(ptr nonnull %0, ptr %2)
  %52 = add nsw i32 %22, 4
  %53 = add nsw i32 %22, 5
  br label %54

54:                                               ; preds = %50, %31, %24, %20
  %55 = phi i32 [ %52, %50 ], [ %22, %31 ], [ %22, %24 ], [ %22, %20 ]
  %56 = phi i32 [ %53, %50 ], [ %23, %31 ], [ %23, %24 ], [ %23, %20 ]
  %57 = add nsw i32 %55, 1
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [1000 x i8], ptr %5, i64 0, i64 %58
  %60 = load i8, ptr %59, align 1, !tbaa !17
  br label %20, !llvm.loop !359

61:                                               ; preds = %20, %17
  %62 = phi i32 [ 0, %17 ], [ %23, %20 ]
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [1000 x i8], ptr %5, i64 0, i64 %63
  %65 = call i32 @fputs(ptr nonnull %64, ptr %2)
  br label %8, !llvm.loop !360

66:                                               ; preds = %11, %8
  call void @llvm.lifetime.end.p0(i64 1000, ptr nonnull %5) #25
  ret void
}

; Function Attrs: nofree nounwind optsize uwtable
define internal fastcc void @tplt_print(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2, i32 noundef %3, ptr nocapture noundef %4) unnamed_addr #8 {
  %6 = icmp eq ptr %2, null
  br i1 %6, label %41, label %7

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.lemon, ptr %1, i64 0, i32 32
  %9 = load ptr, ptr %8, align 8, !tbaa !49
  tail call fastcc void @tplt_linedir(ptr noundef %0, i32 noundef %3, ptr noundef %9) #27
  %10 = load i32, ptr %4, align 4, !tbaa !11
  %11 = add nsw i32 %10, 1
  store i32 %11, ptr %4, align 4, !tbaa !11
  br label %12

12:                                               ; preds = %19, %7
  %13 = phi ptr [ %2, %7 ], [ %23, %19 ]
  %14 = load i8, ptr %13, align 1, !tbaa !17
  switch i8 %14, label %19 [
    i8 0, label %24
    i8 10, label %15
  ]

15:                                               ; preds = %12
  %16 = load i32, ptr %4, align 4, !tbaa !11
  %17 = add nsw i32 %16, 1
  store i32 %17, ptr %4, align 4, !tbaa !11
  %18 = load i8, ptr %13, align 1, !tbaa !17
  br label %19

19:                                               ; preds = %15, %12
  %20 = phi i8 [ %14, %12 ], [ %18, %15 ]
  %21 = sext i8 %20 to i32
  %22 = tail call i32 @putc(i32 noundef %21, ptr noundef %0) #27
  %23 = getelementptr inbounds i8, ptr %13, i64 1
  br label %12, !llvm.loop !361

24:                                               ; preds = %12
  %.lcssa = phi ptr [ %13, %12 ]
  %25 = getelementptr inbounds i8, ptr %.lcssa, i64 -1
  %26 = load i8, ptr %25, align 1, !tbaa !17
  %27 = icmp eq i8 %26, 10
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = load i32, ptr %4, align 4, !tbaa !11
  br label %34

30:                                               ; preds = %24
  %31 = tail call i32 @putc(i32 noundef 10, ptr noundef %0) #27
  %32 = load i32, ptr %4, align 4, !tbaa !11
  %33 = add nsw i32 %32, 1
  store i32 %33, ptr %4, align 4, !tbaa !11
  br label %34

34:                                               ; preds = %30, %28
  %35 = phi i32 [ %29, %28 ], [ %33, %30 ]
  %36 = add nsw i32 %35, 2
  %37 = getelementptr inbounds %struct.lemon, ptr %1, i64 0, i32 33
  %38 = load ptr, ptr %37, align 8, !tbaa !286
  tail call fastcc void @tplt_linedir(ptr noundef %0, i32 noundef %36, ptr noundef %38) #27
  %39 = load i32, ptr %4, align 4, !tbaa !11
  %40 = add nsw i32 %39, 2
  store i32 %40, ptr %4, align 4, !tbaa !11
  br label %41

41:                                               ; preds = %34, %5
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc ptr @file_makename(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.lemon, ptr %0, i64 0, i32 32
  %4 = load ptr, ptr %3, align 8, !tbaa !49
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #29
  %6 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #29
  %7 = add i64 %5, 5
  %8 = add i64 %7, %6
  %9 = tail call noalias ptr @malloc(i64 noundef %8) #33
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load ptr, ptr @stderr, align 8, !tbaa !7
  %13 = tail call i64 @fwrite(ptr nonnull @.str.49, i64 37, i64 1, ptr %12) #32
  tail call void @exit(i32 noundef 1) #31
  unreachable

14:                                               ; preds = %2
  %15 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(1) %4) #26
  %16 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %9, i32 noundef 46) #29
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %14
  store i8 0, ptr %16, align 1, !tbaa !17
  br label %19

19:                                               ; preds = %18, %14
  %20 = tail call ptr @strcat(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(1) %1) #26
  ret ptr %9
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #19

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #22

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @axset_compare(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #17 {
  %3 = getelementptr inbounds %struct.axset, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !245
  %5 = getelementptr inbounds %struct.axset, ptr %1, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !245
  %7 = icmp slt i32 %4, %6
  br i1 %7, label %29, label %8

8:                                                ; preds = %2
  %9 = icmp sgt i32 %4, %6
  br i1 %9, label %29, label %10

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.axset, ptr %0, i64 0, i32 1
  %12 = load i32, ptr %11, align 8, !tbaa !244
  %13 = getelementptr inbounds %struct.axset, ptr %1, i64 0, i32 1
  %14 = load i32, ptr %13, align 8, !tbaa !244
  %15 = icmp slt i32 %12, %14
  br i1 %15, label %29, label %16

16:                                               ; preds = %10
  %17 = icmp sgt i32 %12, %14
  br i1 %17, label %29, label %18

18:                                               ; preds = %16
  %19 = load ptr, ptr %0, align 8, !tbaa !242
  %20 = getelementptr inbounds %struct.state, ptr %19, i64 0, i32 2
  %21 = load i32, ptr %20, align 8, !tbaa !211
  %22 = load ptr, ptr %1, align 8, !tbaa !242
  %23 = getelementptr inbounds %struct.state, ptr %22, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !211
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %29, label %26

26:                                               ; preds = %18
  %27 = icmp sgt i32 %21, %24
  %28 = zext i1 %27 to i32
  br label %29

29:                                               ; preds = %26, %18, %16, %10, %8, %2
  %30 = phi i32 [ -1, %2 ], [ 1, %8 ], [ -1, %10 ], [ 1, %16 ], [ -1, %18 ], [ %28, %26 ]
  ret i32 %30
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @acttab_action(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.acttab, ptr %0, i64 0, i32 7
  %5 = load i32, ptr %4, align 4, !tbaa !362
  %6 = getelementptr inbounds %struct.acttab, ptr %0, i64 0, i32 8
  %7 = load i32, ptr %6, align 8, !tbaa !363
  %8 = icmp slt i32 %5, %7
  br i1 %8, label %22, label %9

9:                                                ; preds = %3
  %10 = add nsw i32 %7, 25
  store i32 %10, ptr %6, align 8, !tbaa !363
  %11 = getelementptr inbounds %struct.acttab, ptr %0, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !364
  %13 = sext i32 %10 to i64
  %14 = shl nsw i64 %13, 3
  %15 = tail call ptr @realloc(ptr noundef %12, i64 noundef %14) #35
  store ptr %15, ptr %11, align 8, !tbaa !364
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %9
  %18 = load ptr, ptr @stderr, align 8, !tbaa !7
  %19 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 14, i64 1, ptr %18) #32
  tail call void @exit(i32 noundef 1) #31
  unreachable

20:                                               ; preds = %9
  %21 = load i32, ptr %4, align 4, !tbaa !362
  br label %22

22:                                               ; preds = %20, %3
  %23 = phi i32 [ %21, %20 ], [ %5, %3 ]
  %24 = icmp eq i32 %23, 0
  %25 = getelementptr inbounds %struct.acttab, ptr %0, i64 0, i32 6
  br i1 %24, label %26, label %28

26:                                               ; preds = %22
  store i32 %1, ptr %25, align 8, !tbaa !365
  %27 = getelementptr inbounds %struct.acttab, ptr %0, i64 0, i32 4
  br label %36

28:                                               ; preds = %22
  %29 = load i32, ptr %25, align 8, !tbaa !365
  %30 = icmp slt i32 %29, %1
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  store i32 %1, ptr %25, align 8, !tbaa !365
  br label %32

32:                                               ; preds = %31, %28
  %33 = getelementptr inbounds %struct.acttab, ptr %0, i64 0, i32 4
  %34 = load i32, ptr %33, align 8, !tbaa !366
  %35 = icmp sgt i32 %34, %1
  br i1 %35, label %36, label %39

36:                                               ; preds = %32, %26
  %37 = phi ptr [ %27, %26 ], [ %33, %32 ]
  store i32 %1, ptr %37, align 8, !tbaa !366
  %38 = getelementptr inbounds %struct.acttab, ptr %0, i64 0, i32 5
  store i32 %2, ptr %38, align 4, !tbaa !367
  br label %39

39:                                               ; preds = %36, %32
  %40 = getelementptr inbounds %struct.acttab, ptr %0, i64 0, i32 3
  %41 = load ptr, ptr %40, align 8, !tbaa !364
  %42 = sext i32 %23 to i64
  %43 = getelementptr inbounds %struct.anon, ptr %41, i64 %42
  store i32 %1, ptr %43, align 4, !tbaa !258
  %44 = getelementptr inbounds %struct.anon, ptr %41, i64 %42, i32 1
  store i32 %2, ptr %44, align 4, !tbaa !255
  %45 = add nsw i32 %23, 1
  store i32 %45, ptr %4, align 4, !tbaa !362
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @acttab_insert(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.acttab, ptr %0, i64 0, i32 6
  %3 = load i32, ptr %2, align 8, !tbaa !365
  %4 = add nsw i32 %3, 1
  %5 = load i32, ptr %0, align 8, !tbaa !252
  %6 = add nsw i32 %4, %5
  %7 = getelementptr inbounds %struct.acttab, ptr %0, i64 0, i32 1
  %8 = load i32, ptr %7, align 4, !tbaa !368
  %9 = icmp slt i32 %6, %8
  br i1 %9, label %36, label %10

10:                                               ; preds = %1
  %11 = add i32 %8, 20
  %12 = add i32 %11, %6
  store i32 %12, ptr %7, align 4, !tbaa !368
  %13 = getelementptr inbounds %struct.acttab, ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !254
  %15 = sext i32 %12 to i64
  %16 = shl nsw i64 %15, 3
  %17 = tail call ptr @realloc(ptr noundef %14, i64 noundef %16) #35
  store ptr %17, ptr %13, align 8, !tbaa !254
  %18 = icmp eq ptr %17, null
  br i1 %18, label %31, label %19

19:                                               ; preds = %10
  %20 = load i32, ptr %7, align 4, !tbaa !368
  %21 = icmp slt i32 %8, %20
  br i1 %21, label %22, label %34

22:                                               ; preds = %19
  %23 = sext i32 %8 to i64
  %24 = shl nsw i64 %23, 3
  %25 = getelementptr i8, ptr %17, i64 %24
  %26 = xor i32 %8, -1
  %27 = add i32 %20, %26
  %28 = zext i32 %27 to i64
  %29 = shl nuw nsw i64 %28, 3
  %30 = add nuw nsw i64 %29, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %25, i8 -1, i64 %30, i1 false), !tbaa !11
  br label %34

31:                                               ; preds = %10
  %32 = load ptr, ptr @stderr, align 8, !tbaa !7
  %33 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 14, i64 1, ptr %32) #32
  tail call void @exit(i32 noundef 1) #31
  unreachable

34:                                               ; preds = %22, %19
  %35 = load i32, ptr %0, align 8, !tbaa !252
  br label %36

36:                                               ; preds = %34, %1
  %37 = phi i32 [ %35, %34 ], [ %5, %1 ]
  %38 = getelementptr inbounds %struct.acttab, ptr %0, i64 0, i32 4
  %39 = load i32, ptr %38, align 8, !tbaa !366
  %40 = add nsw i32 %39, %37
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %155

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct.acttab, ptr %0, i64 0, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !254
  %45 = getelementptr inbounds %struct.acttab, ptr %0, i64 0, i32 5
  %46 = getelementptr inbounds %struct.acttab, ptr %0, i64 0, i32 7
  %47 = getelementptr inbounds %struct.acttab, ptr %0, i64 0, i32 3
  %48 = icmp sgt i32 %37, 0
  %49 = zext i32 %40 to i64
  %50 = zext i32 %37 to i64
  br label %51

51:                                               ; preds = %151, %42
  %52 = phi i64 [ 0, %42 ], [ %152, %151 ]
  %53 = phi i32 [ 0, %42 ], [ %153, %151 ]
  %54 = trunc i64 %52 to i32
  %55 = getelementptr inbounds %struct.anon, ptr %44, i64 %52
  %56 = load i32, ptr %55, align 4, !tbaa !258
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %95

58:                                               ; preds = %51
  %59 = load i32, ptr %46, align 4, !tbaa !362
  %60 = icmp sgt i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %58
  %62 = load ptr, ptr %47, align 8, !tbaa !364
  %63 = zext i32 %59 to i64
  br label %70

64:                                               ; preds = %77
  %65 = add nuw nsw i64 %71, 1
  %66 = icmp eq i64 %65, %63
  br i1 %66, label %67, label %70, !llvm.loop !369

67:                                               ; preds = %64, %58
  br i1 %48, label %68, label %92

68:                                               ; preds = %67
  %69 = add i32 %53, %39
  br label %82

70:                                               ; preds = %64, %61
  %71 = phi i64 [ 0, %61 ], [ %65, %64 ]
  %72 = getelementptr inbounds %struct.anon, ptr %62, i64 %71
  %73 = load i32, ptr %72, align 4, !tbaa !258
  %74 = sub nsw i32 %73, %39
  %75 = add nsw i32 %74, %54
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %151, label %77

77:                                               ; preds = %70
  %78 = zext i32 %75 to i64
  %79 = getelementptr inbounds %struct.anon, ptr %44, i64 %78
  %80 = load i32, ptr %79, align 4, !tbaa !258
  %81 = icmp sgt i32 %80, -1
  br i1 %81, label %151, label %64

82:                                               ; preds = %89, %68
  %83 = phi i64 [ 0, %68 ], [ %90, %89 ]
  %84 = trunc i64 %83 to i32
  %85 = getelementptr inbounds %struct.anon, ptr %44, i64 %83
  %86 = load i32, ptr %85, align 4, !tbaa !258
  %87 = add i32 %69, %84
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %92, label %89

89:                                               ; preds = %82
  %90 = add nuw nsw i64 %83, 1
  %91 = icmp eq i64 %90, %50
  br i1 %91, label %155, label %82, !llvm.loop !370

92:                                               ; preds = %82, %67
  %93 = phi i32 [ 0, %67 ], [ %84, %82 ]
  %94 = icmp eq i32 %93, %37
  br i1 %94, label %155, label %151

95:                                               ; preds = %51
  %96 = icmp eq i32 %56, %39
  br i1 %96, label %97, label %151

97:                                               ; preds = %95
  %98 = getelementptr inbounds %struct.anon, ptr %44, i64 %52, i32 1
  %99 = load i32, ptr %98, align 4, !tbaa !255
  %100 = load i32, ptr %45, align 4, !tbaa !367
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %102, label %151

102:                                              ; preds = %97
  %103 = load i32, ptr %46, align 4, !tbaa !362
  %104 = icmp sgt i32 %103, 0
  br i1 %104, label %105, label %111

105:                                              ; preds = %102
  %106 = load ptr, ptr %47, align 8, !tbaa !364
  %107 = zext i32 %103 to i64
  br label %114

108:                                              ; preds = %128
  %109 = add nuw nsw i64 %115, 1
  %110 = icmp eq i64 %109, %107
  br i1 %110, label %111, label %114, !llvm.loop !371

111:                                              ; preds = %108, %102
  br i1 %48, label %112, label %148

112:                                              ; preds = %111
  %113 = add i32 %53, %39
  br label %134

114:                                              ; preds = %108, %105
  %115 = phi i64 [ 0, %105 ], [ %109, %108 ]
  %116 = getelementptr inbounds %struct.anon, ptr %106, i64 %115
  %117 = load i32, ptr %116, align 4, !tbaa !258
  %118 = sub nsw i32 %117, %39
  %119 = add nsw i32 %118, %54
  %120 = icmp sgt i32 %119, -1
  %121 = icmp slt i32 %119, %37
  %122 = and i1 %120, %121
  br i1 %122, label %123, label %151

123:                                              ; preds = %114
  %124 = zext i32 %119 to i64
  %125 = getelementptr inbounds %struct.anon, ptr %44, i64 %124
  %126 = load i32, ptr %125, align 4, !tbaa !258
  %127 = icmp eq i32 %117, %126
  br i1 %127, label %128, label %151

128:                                              ; preds = %123
  %129 = getelementptr inbounds %struct.anon, ptr %106, i64 %115, i32 1
  %130 = load i32, ptr %129, align 4, !tbaa !255
  %131 = getelementptr inbounds %struct.anon, ptr %44, i64 %124, i32 1
  %132 = load i32, ptr %131, align 4, !tbaa !255
  %133 = icmp eq i32 %130, %132
  br i1 %133, label %108, label %151

134:                                              ; preds = %134, %112
  %135 = phi i64 [ 0, %112 ], [ %146, %134 ]
  %136 = phi i32 [ 0, %112 ], [ %145, %134 ]
  %137 = trunc i64 %135 to i32
  %138 = getelementptr inbounds %struct.anon, ptr %44, i64 %135
  %139 = load i32, ptr %138, align 4, !tbaa !258
  %140 = icmp sgt i32 %139, -1
  %141 = add i32 %113, %137
  %142 = icmp eq i32 %139, %141
  %143 = and i1 %140, %142
  %144 = zext i1 %143 to i32
  %145 = add nuw nsw i32 %136, %144
  %146 = add nuw nsw i64 %135, 1
  %147 = icmp eq i64 %146, %50
  br i1 %147, label %148, label %134, !llvm.loop !372

148:                                              ; preds = %134, %111
  %149 = phi i32 [ 0, %111 ], [ %145, %134 ]
  %150 = icmp eq i32 %149, %103
  br i1 %150, label %155, label %151

151:                                              ; preds = %148, %128, %123, %114, %97, %95, %92, %77, %70
  %152 = add nuw nsw i64 %52, 1
  %153 = xor i32 %54, -1
  %154 = icmp eq i64 %152, %49
  br i1 %154, label %155, label %51, !llvm.loop !373

155:                                              ; preds = %151, %148, %92, %89, %36
  %156 = phi i32 [ 0, %36 ], [ %54, %89 ], [ %40, %151 ], [ %54, %92 ], [ %54, %148 ]
  %157 = getelementptr inbounds %struct.acttab, ptr %0, i64 0, i32 7
  %158 = load i32, ptr %157, align 4, !tbaa !362
  %159 = icmp sgt i32 %158, 0
  br i1 %159, label %160, label %186

160:                                              ; preds = %155
  %161 = getelementptr inbounds %struct.acttab, ptr %0, i64 0, i32 3
  %162 = getelementptr inbounds %struct.acttab, ptr %0, i64 0, i32 2
  br label %163

163:                                              ; preds = %179, %160
  %164 = phi i64 [ 0, %160 ], [ %180, %179 ]
  %165 = load ptr, ptr %161, align 8, !tbaa !364
  %166 = getelementptr inbounds %struct.anon, ptr %165, i64 %164
  %167 = load i32, ptr %166, align 4, !tbaa !258
  %168 = load i32, ptr %38, align 8, !tbaa !366
  %169 = sub nsw i32 %167, %168
  %170 = add nsw i32 %169, %156
  %171 = load ptr, ptr %162, align 8, !tbaa !254
  %172 = sext i32 %170 to i64
  %173 = getelementptr inbounds %struct.anon, ptr %171, i64 %172
  %174 = load i64, ptr %166, align 4
  store i64 %174, ptr %173, align 4
  %175 = load i32, ptr %0, align 8, !tbaa !252
  %176 = icmp slt i32 %170, %175
  br i1 %176, label %179, label %177

177:                                              ; preds = %163
  %178 = add nsw i32 %170, 1
  store i32 %178, ptr %0, align 8, !tbaa !252
  br label %179

179:                                              ; preds = %177, %163
  %180 = add nuw nsw i64 %164, 1
  %181 = load i32, ptr %157, align 4, !tbaa !362
  %182 = sext i32 %181 to i64
  %183 = icmp slt i64 %180, %182
  br i1 %183, label %163, label %184, !llvm.loop !374

184:                                              ; preds = %179
  %185 = load i32, ptr %38, align 8, !tbaa !366
  br label %186

186:                                              ; preds = %184, %155
  %187 = phi i32 [ %185, %184 ], [ %39, %155 ]
  store i32 0, ptr %157, align 4, !tbaa !362
  %188 = sub nsw i32 %156, %187
  ret i32 %188
}

; Function Attrs: nofree nounwind optsize uwtable
define internal fastcc void @writeRuleText(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #8 {
  %3 = load ptr, ptr %1, align 8, !tbaa !94
  %4 = load ptr, ptr %3, align 8, !tbaa !89
  %5 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.61, ptr noundef %4) #27
  %6 = getelementptr inbounds %struct.rule, ptr %1, i64 0, i32 4
  %7 = load i32, ptr %6, align 8, !tbaa !96
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %43

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.rule, ptr %1, i64 0, i32 5
  br label %11

11:                                               ; preds = %38, %9
  %12 = phi i64 [ 0, %9 ], [ %39, %38 ]
  %13 = load ptr, ptr %10, align 8, !tbaa !91
  %14 = getelementptr inbounds ptr, ptr %13, i64 %12
  %15 = load ptr, ptr %14, align 8, !tbaa !7
  %16 = load ptr, ptr %15, align 8, !tbaa !89
  %17 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.57, ptr noundef %16) #27
  %18 = getelementptr inbounds %struct.symbol, ptr %15, i64 0, i32 2
  %19 = load i32, ptr %18, align 4, !tbaa !102
  %20 = icmp eq i32 %19, 2
  br i1 %20, label %21, label %38

21:                                               ; preds = %11
  %22 = getelementptr inbounds %struct.symbol, ptr %15, i64 0, i32 14
  %23 = load i32, ptr %22, align 4, !tbaa !103
  %24 = icmp sgt i32 %23, 1
  br i1 %24, label %25, label %38

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.symbol, ptr %15, i64 0, i32 15
  br label %27

27:                                               ; preds = %27, %25
  %28 = phi i64 [ 1, %25 ], [ %34, %27 ]
  %29 = load ptr, ptr %26, align 8, !tbaa !104
  %30 = getelementptr inbounds ptr, ptr %29, i64 %28
  %31 = load ptr, ptr %30, align 8, !tbaa !7
  %32 = load ptr, ptr %31, align 8, !tbaa !89
  %33 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.58, ptr noundef %32) #27
  %34 = add nuw nsw i64 %28, 1
  %35 = load i32, ptr %22, align 4, !tbaa !103
  %36 = sext i32 %35 to i64
  %37 = icmp slt i64 %34, %36
  br i1 %37, label %27, label %38, !llvm.loop !375

38:                                               ; preds = %27, %21, %11
  %39 = add nuw nsw i64 %12, 1
  %40 = load i32, ptr %6, align 8, !tbaa !96
  %41 = sext i32 %40 to i64
  %42 = icmp slt i64 %39, %41
  br i1 %42, label %11, label %43, !llvm.loop !376

43:                                               ; preds = %38, %2
  ret void
}

; Function Attrs: nofree nounwind optsize uwtable
define internal fastcc void @emit_destructor_code(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef %3) unnamed_addr #8 {
  %5 = getelementptr inbounds %struct.symbol, ptr %1, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !102
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %14

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.lemon, ptr %2, i64 0, i32 28
  %10 = load ptr, ptr %9, align 8, !tbaa !268
  %11 = icmp eq ptr %10, null
  br i1 %11, label %65, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.lemon, ptr %2, i64 0, i32 29
  br label %26

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.symbol, ptr %1, i64 0, i32 10
  %16 = load ptr, ptr %15, align 8, !tbaa !272
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.symbol, ptr %1, i64 0, i32 11
  br label %26

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.lemon, ptr %2, i64 0, i32 30
  %22 = load ptr, ptr %21, align 8, !tbaa !271
  %23 = icmp eq ptr %22, null
  br i1 %23, label %33, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.lemon, ptr %2, i64 0, i32 31
  br label %26

26:                                               ; preds = %24, %18, %12
  %27 = phi ptr [ %19, %18 ], [ %25, %24 ], [ %13, %12 ]
  %28 = phi ptr [ %16, %18 ], [ %22, %24 ], [ %10, %12 ]
  %29 = load i32, ptr %27, align 8, !tbaa !11
  %30 = getelementptr inbounds %struct.lemon, ptr %2, i64 0, i32 32
  %31 = load ptr, ptr %30, align 8, !tbaa !49
  tail call fastcc void @tplt_linedir(ptr noundef %0, i32 noundef %29, ptr noundef %31) #27
  %32 = tail call i32 @fputc(i32 123, ptr %0)
  br label %33

33:                                               ; preds = %26, %20
  %34 = phi ptr [ null, %20 ], [ %28, %26 ]
  %35 = getelementptr inbounds %struct.symbol, ptr %1, i64 0, i32 13
  br label %36

36:                                               ; preds = %53, %33
  %37 = phi ptr [ %34, %33 ], [ %56, %53 ]
  %38 = phi i32 [ 0, %33 ], [ %55, %53 ]
  %39 = load i8, ptr %37, align 1, !tbaa !17
  switch i8 %39, label %47 [
    i8 0, label %57
    i8 36, label %40
  ]

40:                                               ; preds = %36
  %41 = getelementptr inbounds i8, ptr %37, i64 1
  %42 = load i8, ptr %41, align 1, !tbaa !17
  %43 = icmp eq i8 %42, 36
  br i1 %43, label %44, label %47

44:                                               ; preds = %40
  %45 = load i32, ptr %35, align 8, !tbaa !229
  %46 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.92, i32 noundef %45) #27
  br label %53

47:                                               ; preds = %40, %36
  %48 = icmp eq i8 %39, 10
  %49 = zext i1 %48 to i32
  %50 = add nsw i32 %38, %49
  %51 = sext i8 %39 to i32
  %52 = tail call i32 @fputc(i32 noundef %51, ptr noundef %0) #27
  br label %53

53:                                               ; preds = %47, %44
  %54 = phi ptr [ %41, %44 ], [ %37, %47 ]
  %55 = phi i32 [ %38, %44 ], [ %50, %47 ]
  %56 = getelementptr inbounds i8, ptr %54, i64 1
  br label %36, !llvm.loop !377

57:                                               ; preds = %36
  %.lcssa = phi i32 [ %38, %36 ]
  %58 = add nsw i32 %.lcssa, 3
  %59 = load i32, ptr %3, align 4, !tbaa !11
  %60 = add nsw i32 %58, %59
  store i32 %60, ptr %3, align 4, !tbaa !11
  %61 = tail call i64 @fwrite(ptr nonnull @.str.93, i64 2, i64 1, ptr %0)
  %62 = load i32, ptr %3, align 4, !tbaa !11
  %63 = getelementptr inbounds %struct.lemon, ptr %2, i64 0, i32 33
  %64 = load ptr, ptr %63, align 8, !tbaa !286
  tail call fastcc void @tplt_linedir(ptr noundef %0, i32 noundef %62, ptr noundef %64) #27
  br label %65

65:                                               ; preds = %57, %8
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @append_str(ptr noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca [40 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #25
  %6 = icmp eq ptr %0, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %4
  store i32 0, ptr @append_str.used, align 4, !tbaa !11
  br label %85

8:                                                ; preds = %4
  %9 = icmp slt i32 %1, 1
  br i1 %9, label %10, label %18

10:                                               ; preds = %8
  %11 = icmp slt i32 %1, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %10
  %13 = load i32, ptr @append_str.used, align 4, !tbaa !11
  %14 = add nsw i32 %13, -1
  store i32 %14, ptr @append_str.used, align 4, !tbaa !11
  br label %15

15:                                               ; preds = %12, %10
  %16 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #29
  %17 = trunc i64 %16 to i32
  br label %18

18:                                               ; preds = %15, %8
  %19 = phi i32 [ %17, %15 ], [ 1, %8 ]
  %20 = sext i32 %19 to i64
  %21 = add nsw i64 %20, 80
  %22 = load i32, ptr @append_str.used, align 4, !tbaa !11
  %23 = sext i32 %22 to i64
  %24 = add nsw i64 %21, %23
  %25 = load i32, ptr @append_str.alloced, align 4, !tbaa !11
  %26 = sext i32 %25 to i64
  %27 = icmp ult i64 %24, %26
  br i1 %27, label %34, label %28

28:                                               ; preds = %18
  %29 = trunc i64 %24 to i32
  %30 = add i32 %29, 200
  store i32 %30, ptr @append_str.alloced, align 4, !tbaa !11
  %31 = load ptr, ptr @append_str.z, align 8, !tbaa !7
  %32 = sext i32 %30 to i64
  %33 = tail call ptr @realloc(ptr noundef %31, i64 noundef %32) #35
  store ptr %33, ptr @append_str.z, align 8, !tbaa !7
  br label %36

34:                                               ; preds = %18
  %35 = load ptr, ptr @append_str.z, align 8, !tbaa !7
  br label %36

36:                                               ; preds = %34, %28
  %37 = phi ptr [ %35, %34 ], [ %33, %28 ]
  %38 = icmp eq ptr %37, null
  br i1 %38, label %85, label %39

39:                                               ; preds = %36
  %40 = icmp sgt i32 %19, 0
  br i1 %40, label %41, label %81

41:                                               ; preds = %72, %39
  %42 = phi ptr [ %73, %72 ], [ %37, %39 ]
  %43 = phi ptr [ %76, %72 ], [ %0, %39 ]
  %44 = phi i32 [ %75, %72 ], [ %2, %39 ]
  %45 = phi i32 [ %74, %72 ], [ %19, %39 ]
  %46 = add nsw i32 %45, -1
  %47 = getelementptr inbounds i8, ptr %43, i64 1
  %48 = load i8, ptr %43, align 1, !tbaa !17
  %49 = icmp eq i8 %48, 37
  %50 = icmp ne i32 %45, 1
  %51 = and i1 %50, %49
  br i1 %51, label %52, label %67

52:                                               ; preds = %41
  %53 = load i8, ptr %47, align 1, !tbaa !17
  %54 = icmp eq i8 %53, 100
  br i1 %54, label %55, label %67

55:                                               ; preds = %52
  %56 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) @.str.94, i32 noundef %44) #26
  %57 = load ptr, ptr @append_str.z, align 8, !tbaa !7
  %58 = load i32, ptr @append_str.used, align 4, !tbaa !11
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8, ptr %57, i64 %59
  %61 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %60, ptr noundef nonnull dereferenceable(1) %5) #26
  %62 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %60) #29
  %63 = trunc i64 %62 to i32
  %64 = add i32 %58, %63
  store i32 %64, ptr @append_str.used, align 4, !tbaa !11
  %65 = getelementptr inbounds i8, ptr %43, i64 2
  %66 = add nsw i32 %45, -2
  br label %72

67:                                               ; preds = %52, %41
  %68 = load i32, ptr @append_str.used, align 4, !tbaa !11
  %69 = add nsw i32 %68, 1
  store i32 %69, ptr @append_str.used, align 4, !tbaa !11
  %70 = sext i32 %68 to i64
  %71 = getelementptr inbounds i8, ptr %42, i64 %70
  store i8 %48, ptr %71, align 1, !tbaa !17
  br label %72

72:                                               ; preds = %67, %55
  %73 = phi ptr [ %57, %55 ], [ %42, %67 ]
  %74 = phi i32 [ %66, %55 ], [ %46, %67 ]
  %75 = phi i32 [ %3, %55 ], [ %44, %67 ]
  %76 = phi ptr [ %65, %55 ], [ %47, %67 ]
  %77 = icmp sgt i32 %74, 0
  br i1 %77, label %41, label %78, !llvm.loop !378

78:                                               ; preds = %72
  %.lcssa = phi ptr [ %73, %72 ]
  %79 = load i32, ptr @append_str.used, align 4, !tbaa !11
  %80 = sext i32 %79 to i64
  br label %81

81:                                               ; preds = %78, %39
  %82 = phi i64 [ %80, %78 ], [ %23, %39 ]
  %83 = phi ptr [ %.lcssa, %78 ], [ %37, %39 ]
  %84 = getelementptr inbounds i8, ptr %83, i64 %82
  store i8 0, ptr %84, align 1, !tbaa !17
  br label %85

85:                                               ; preds = %81, %36, %7
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #25
  ret void
}

; Function Attrs: nofree nounwind optsize uwtable
define internal fastcc void @tplt_linedir(ptr nocapture noundef %0, i32 noundef %1, ptr noundef readonly %2) unnamed_addr #8 {
  %4 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %2, i32 noundef 47) #29
  %5 = icmp eq ptr %4, null
  %6 = getelementptr inbounds i8, ptr %4, i64 1
  %7 = select i1 %5, ptr %2, ptr %6
  %8 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.89, i32 noundef %1) #27
  br label %9

9:                                                ; preds = %15, %3
  %10 = phi ptr [ %7, %3 ], [ %19, %15 ]
  %11 = load i8, ptr %10, align 1, !tbaa !17
  switch i8 %11, label %15 [
    i8 0, label %20
    i8 92, label %12
  ]

12:                                               ; preds = %9
  %13 = tail call i32 @putc(i32 noundef 92, ptr noundef %0) #27
  %14 = load i8, ptr %10, align 1, !tbaa !17
  br label %15

15:                                               ; preds = %12, %9
  %16 = phi i8 [ %11, %9 ], [ %14, %12 ]
  %17 = sext i8 %16 to i32
  %18 = tail call i32 @putc(i32 noundef %17, ptr noundef %0) #27
  %19 = getelementptr inbounds i8, ptr %10, i64 1
  br label %9, !llvm.loop !379

20:                                               ; preds = %9
  %21 = tail call i64 @fwrite(ptr nonnull @.str.90, i64 2, i64 1, ptr %0)
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef ptr @fgets(ptr noundef, i32 noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite)
declare ptr @strcat(ptr noalias noundef returned, ptr noalias nocapture noundef readonly) local_unnamed_addr #22

; Function Attrs: nofree nounwind
declare noundef i32 @fputs(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: nounwind optsize uwtable
define internal fastcc ptr @merge(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) unnamed_addr #0 {
  %5 = icmp eq ptr %0, null
  br i1 %5, label %62, label %6

6:                                                ; preds = %4
  %7 = tail call i32 %2(ptr noundef nonnull %0, ptr noundef %1) #26, !callees !380
  %8 = icmp slt i32 %7, 0
  %9 = sext i32 %3 to i64
  br i1 %8, label %10, label %15

10:                                               ; preds = %6
  %11 = ptrtoint ptr %0 to i64
  %12 = add i64 %9, %11
  %13 = inttoptr i64 %12 to ptr
  %14 = load ptr, ptr %13, align 8, !tbaa !7
  br label %20

15:                                               ; preds = %6
  %16 = ptrtoint ptr %1 to i64
  %17 = add i64 %9, %16
  %18 = inttoptr i64 %17 to ptr
  %19 = load ptr, ptr %18, align 8, !tbaa !7
  br label %20

20:                                               ; preds = %15, %10
  %21 = phi ptr [ %1, %10 ], [ %19, %15 ]
  %22 = phi ptr [ %14, %10 ], [ %0, %15 ]
  %23 = phi ptr [ %0, %10 ], [ %1, %15 ]
  %24 = icmp ne ptr %22, null
  %25 = icmp ne ptr %21, null
  %26 = select i1 %24, i1 %25, i1 false
  br i1 %26, label %27, label %53

27:                                               ; preds = %46, %20
  %28 = phi ptr [ %49, %46 ], [ %23, %20 ]
  %29 = phi ptr [ %48, %46 ], [ %22, %20 ]
  %30 = phi ptr [ %47, %46 ], [ %21, %20 ]
  %31 = tail call i32 %2(ptr noundef nonnull %29, ptr noundef nonnull %30) #26, !callees !380
  %32 = icmp slt i32 %31, 0
  %33 = ptrtoint ptr %28 to i64
  %34 = add i64 %33, %9
  %35 = inttoptr i64 %34 to ptr
  br i1 %32, label %36, label %41

36:                                               ; preds = %27
  store ptr %29, ptr %35, align 8, !tbaa !7
  %37 = ptrtoint ptr %29 to i64
  %38 = add i64 %37, %9
  %39 = inttoptr i64 %38 to ptr
  %40 = load ptr, ptr %39, align 8, !tbaa !7
  br label %46

41:                                               ; preds = %27
  store ptr %30, ptr %35, align 8, !tbaa !7
  %42 = ptrtoint ptr %30 to i64
  %43 = add i64 %42, %9
  %44 = inttoptr i64 %43 to ptr
  %45 = load ptr, ptr %44, align 8, !tbaa !7
  br label %46

46:                                               ; preds = %41, %36
  %47 = phi ptr [ %30, %36 ], [ %45, %41 ]
  %48 = phi ptr [ %40, %36 ], [ %29, %41 ]
  %49 = phi ptr [ %29, %36 ], [ %30, %41 ]
  %50 = icmp ne ptr %48, null
  %51 = icmp ne ptr %47, null
  %52 = select i1 %50, i1 %51, i1 false
  br i1 %52, label %27, label %53, !llvm.loop !381

53:                                               ; preds = %46, %20
  %54 = phi ptr [ %21, %20 ], [ %47, %46 ]
  %55 = phi ptr [ %22, %20 ], [ %48, %46 ]
  %56 = phi ptr [ %23, %20 ], [ %49, %46 ]
  %57 = phi i1 [ %24, %20 ], [ %50, %46 ]
  %58 = ptrtoint ptr %56 to i64
  %59 = add i64 %58, %9
  %60 = inttoptr i64 %59 to ptr
  %61 = select i1 %57, ptr %55, ptr %54
  store ptr %61, ptr %60, align 8, !tbaa !7
  br label %62

62:                                               ; preds = %53, %4
  %63 = phi ptr [ %1, %4 ], [ %23, %53 ]
  ret ptr %63
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @Configcmp(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #17 {
  %3 = load ptr, ptr %0, align 8, !tbaa !180
  %4 = getelementptr inbounds %struct.rule, ptr %3, i64 0, i32 10
  %5 = load i32, ptr %4, align 8, !tbaa !97
  %6 = load ptr, ptr %1, align 8, !tbaa !180
  %7 = getelementptr inbounds %struct.rule, ptr %6, i64 0, i32 10
  %8 = load i32, ptr %7, align 8, !tbaa !97
  %9 = sub nsw i32 %5, %8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.config, ptr %0, i64 0, i32 1
  %13 = load i32, ptr %12, align 8, !tbaa !181
  %14 = getelementptr inbounds %struct.config, ptr %1, i64 0, i32 1
  %15 = load i32, ptr %14, align 8, !tbaa !181
  %16 = sub nsw i32 %13, %15
  br label %17

17:                                               ; preds = %11, %2
  %18 = phi i32 [ %16, %11 ], [ %9, %2 ]
  ret i32 %18
}

; Function Attrs: nofree norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @statecmp(ptr noundef readonly %0, ptr noundef readonly %1) unnamed_addr #23 {
  %3 = icmp ne ptr %0, null
  %4 = icmp ne ptr %1, null
  %5 = and i1 %3, %4
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = zext i1 %3 to i32
  %8 = select i1 %4, i32 -1, i32 %7
  br label %41

9:                                                ; preds = %26, %2
  %10 = phi ptr [ %32, %26 ], [ %1, %2 ]
  %11 = phi ptr [ %30, %26 ], [ %0, %2 ]
  %12 = load ptr, ptr %11, align 8, !tbaa !180
  %13 = getelementptr inbounds %struct.rule, ptr %12, i64 0, i32 10
  %14 = load i32, ptr %13, align 8, !tbaa !97
  %15 = load ptr, ptr %10, align 8, !tbaa !180
  %16 = getelementptr inbounds %struct.rule, ptr %15, i64 0, i32 10
  %17 = load i32, ptr %16, align 8, !tbaa !97
  %18 = sub nsw i32 %14, %17
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %9
  %21 = getelementptr inbounds %struct.config, ptr %11, i64 0, i32 1
  %22 = load i32, ptr %21, align 8, !tbaa !181
  %23 = getelementptr inbounds %struct.config, ptr %10, i64 0, i32 1
  %24 = load i32, ptr %23, align 8, !tbaa !181
  %25 = sub nsw i32 %22, %24
  br label %26

26:                                               ; preds = %20, %9
  %27 = phi i32 [ %25, %20 ], [ %18, %9 ]
  %28 = freeze i32 %27
  %29 = getelementptr inbounds %struct.config, ptr %11, i64 0, i32 8
  %30 = load ptr, ptr %29, align 8, !tbaa !326
  %31 = getelementptr inbounds %struct.config, ptr %10, i64 0, i32 8
  %32 = load ptr, ptr %31, align 8, !tbaa !326
  %33 = icmp eq i32 %28, 0
  %34 = icmp ne ptr %30, null
  %35 = select i1 %33, i1 %34, i1 false
  %36 = icmp ne ptr %32, null
  %37 = select i1 %35, i1 %36, i1 false
  br i1 %37, label %9, label %38, !llvm.loop !382

38:                                               ; preds = %26
  %.lcssa3 = phi i32 [ %28, %26 ]
  %.lcssa2 = phi i1 [ %33, %26 ]
  %.lcssa1 = phi i1 [ %34, %26 ]
  %.lcssa = phi i1 [ %36, %26 ]
  %39 = zext i1 %.lcssa1 to i32
  %40 = select i1 %.lcssa, i32 -1, i32 %39
  br i1 %.lcssa2, label %41, label %43

41:                                               ; preds = %38, %6
  %42 = phi i32 [ %8, %6 ], [ %40, %38 ]
  br label %43

43:                                               ; preds = %41, %38
  %44 = phi i32 [ %42, %41 ], [ %.lcssa3, %38 ]
  ret i32 %44
}

; Function Attrs: nofree norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @Configtable_find(ptr nocapture noundef readonly %0) unnamed_addr #23 {
  %2 = load ptr, ptr @x4a, align 8, !tbaa !7
  %3 = icmp eq ptr %2, null
  br i1 %3, label %36, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr %0, align 8, !tbaa !180
  %6 = getelementptr inbounds %struct.rule, ptr %5, i64 0, i32 10
  %7 = load i32, ptr %6, align 8, !tbaa !97
  %8 = mul nsw i32 %7, 37
  %9 = getelementptr inbounds %struct.config, ptr %0, i64 0, i32 1
  %10 = load i32, ptr %9, align 8, !tbaa !181
  %11 = add nsw i32 %8, %10
  %12 = load i32, ptr %2, align 8, !tbaa !147
  %13 = add nsw i32 %12, -1
  %14 = and i32 %13, %11
  %15 = getelementptr inbounds %struct.s_x4, ptr %2, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !151
  %17 = sext i32 %14 to i64
  %18 = getelementptr inbounds ptr, ptr %16, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !7
  %20 = icmp eq ptr %19, null
  br i1 %20, label %36, label %21

21:                                               ; preds = %32, %4
  %22 = phi ptr [ %34, %32 ], [ %19, %4 ]
  %23 = load ptr, ptr %22, align 8, !tbaa !383
  %24 = load ptr, ptr %23, align 8, !tbaa !180
  %25 = getelementptr inbounds %struct.rule, ptr %24, i64 0, i32 10
  %26 = load i32, ptr %25, align 8, !tbaa !97
  %27 = icmp eq i32 %26, %7
  br i1 %27, label %28, label %32

28:                                               ; preds = %21
  %29 = getelementptr inbounds %struct.config, ptr %23, i64 0, i32 1
  %30 = load i32, ptr %29, align 8, !tbaa !181
  %31 = icmp eq i32 %30, %10
  br i1 %31, label %36, label %32

32:                                               ; preds = %28, %21
  %33 = getelementptr inbounds %struct.s_x4node, ptr %22, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !7
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %21, !llvm.loop !385

36:                                               ; preds = %32, %28, %4, %1
  %37 = phi ptr [ null, %1 ], [ null, %4 ], [ %23, %28 ], [ null, %32 ]
  ret ptr %37
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc ptr @newconfig() unnamed_addr #0 {
  %1 = load ptr, ptr @freelist, align 8, !tbaa !7
  %2 = icmp eq ptr %1, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %0
  %4 = getelementptr inbounds %struct.config, ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !335
  br label %17

6:                                                ; preds = %0
  %7 = tail call noalias dereferenceable_or_null(216) ptr @calloc(i64 noundef 3, i64 noundef 72) #34
  store ptr %7, ptr @freelist, align 8, !tbaa !7
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %6
  %10 = load ptr, ptr @stderr, align 8, !tbaa !7
  %11 = tail call i64 @fwrite(ptr nonnull @.str.5, i64 50, i64 1, ptr %10) #32
  tail call void @exit(i32 noundef 1) #31
  unreachable

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.config, ptr %7, i64 1
  %14 = getelementptr inbounds %struct.config, ptr %7, i64 0, i32 7
  store ptr %13, ptr %14, align 8, !tbaa !335
  %15 = getelementptr inbounds %struct.config, ptr %7, i64 2
  %16 = getelementptr inbounds %struct.config, ptr %7, i64 1, i32 7
  store ptr %15, ptr %16, align 8, !tbaa !335
  br label %17

17:                                               ; preds = %12, %3
  %18 = phi ptr [ %13, %12 ], [ %5, %3 ]
  %19 = phi ptr [ %7, %12 ], [ %1, %3 ]
  store ptr %18, ptr @freelist, align 8, !tbaa !7
  ret ptr %19
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @Configtable_insert(ptr noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr @x4a, align 8, !tbaa !7
  %3 = icmp eq ptr %2, null
  br i1 %3, label %118, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr %0, align 8, !tbaa !180
  %6 = getelementptr inbounds %struct.rule, ptr %5, i64 0, i32 10
  %7 = load i32, ptr %6, align 8, !tbaa !97
  %8 = mul nsw i32 %7, 37
  %9 = getelementptr inbounds %struct.config, ptr %0, i64 0, i32 1
  %10 = load i32, ptr %9, align 8, !tbaa !181
  %11 = add nsw i32 %8, %10
  %12 = load i32, ptr %2, align 8, !tbaa !147
  %13 = add nsw i32 %12, -1
  %14 = and i32 %13, %11
  %15 = getelementptr inbounds %struct.s_x4, ptr %2, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !151
  %17 = sext i32 %14 to i64
  %18 = getelementptr inbounds ptr, ptr %16, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !7
  %20 = icmp eq ptr %19, null
  br i1 %20, label %36, label %21

21:                                               ; preds = %32, %4
  %22 = phi ptr [ %34, %32 ], [ %19, %4 ]
  %23 = load ptr, ptr %22, align 8, !tbaa !383
  %24 = load ptr, ptr %23, align 8, !tbaa !180
  %25 = getelementptr inbounds %struct.rule, ptr %24, i64 0, i32 10
  %26 = load i32, ptr %25, align 8, !tbaa !97
  %27 = icmp eq i32 %26, %7
  br i1 %27, label %28, label %32

28:                                               ; preds = %21
  %29 = getelementptr inbounds %struct.config, ptr %23, i64 0, i32 1
  %30 = load i32, ptr %29, align 8, !tbaa !181
  %31 = icmp eq i32 %30, %10
  br i1 %31, label %118, label %32

32:                                               ; preds = %28, %21
  %33 = getelementptr inbounds %struct.s_x4node, ptr %22, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !7
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %21, !llvm.loop !386

36:                                               ; preds = %32, %4
  %37 = getelementptr inbounds %struct.s_x4, ptr %2, i64 0, i32 1
  %38 = load i32, ptr %37, align 4, !tbaa !149
  %39 = icmp slt i32 %38, %12
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.s_x4, ptr %2, i64 0, i32 2
  %42 = load ptr, ptr %41, align 8, !tbaa !150
  br label %98

43:                                               ; preds = %36
  %44 = shl nsw i32 %12, 1
  %45 = sext i32 %44 to i64
  %46 = shl nsw i64 %45, 5
  %47 = tail call noalias ptr @malloc(i64 noundef %46) #33
  %48 = icmp eq ptr %47, null
  br i1 %48, label %118, label %49

49:                                               ; preds = %43
  %50 = getelementptr %struct.s_x4node, ptr %47, i64 %45
  %51 = icmp sgt i32 %12, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %49
  %53 = tail call i32 @llvm.smax.i32(i32 %44, i32 1)
  %54 = zext i32 %53 to i64
  %55 = shl nuw nsw i64 %54, 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %50, i8 0, i64 %55, i1 false), !tbaa !7
  br label %56

56:                                               ; preds = %52, %49
  %57 = icmp sgt i32 %38, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %56
  %59 = add nsw i32 %44, -1
  br label %92

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.s_x4, ptr %2, i64 0, i32 2
  %62 = add nsw i32 %44, -1
  %63 = zext i32 %38 to i64
  br label %64

64:                                               ; preds = %86, %60
  %65 = phi i64 [ 0, %60 ], [ %90, %86 ]
  %66 = load ptr, ptr %61, align 8, !tbaa !150
  %67 = getelementptr inbounds %struct.s_x4node, ptr %66, i64 %65
  %68 = load ptr, ptr %67, align 8, !tbaa !383
  %69 = load ptr, ptr %68, align 8, !tbaa !180
  %70 = getelementptr inbounds %struct.rule, ptr %69, i64 0, i32 10
  %71 = load i32, ptr %70, align 8, !tbaa !97
  %72 = mul nsw i32 %71, 37
  %73 = getelementptr inbounds %struct.config, ptr %68, i64 0, i32 1
  %74 = load i32, ptr %73, align 8, !tbaa !181
  %75 = add nsw i32 %72, %74
  %76 = and i32 %75, %62
  %77 = getelementptr inbounds %struct.s_x4node, ptr %47, i64 %65
  %78 = sext i32 %76 to i64
  %79 = getelementptr inbounds ptr, ptr %50, i64 %78
  %80 = load ptr, ptr %79, align 8, !tbaa !7
  %81 = icmp eq ptr %80, null
  br i1 %81, label %86, label %82

82:                                               ; preds = %64
  %83 = getelementptr inbounds %struct.s_x4node, ptr %47, i64 %65, i32 1
  %84 = getelementptr inbounds %struct.s_x4node, ptr %80, i64 0, i32 2
  store ptr %83, ptr %84, align 8, !tbaa !387
  %85 = load ptr, ptr %79, align 8, !tbaa !7
  br label %86

86:                                               ; preds = %82, %64
  %87 = phi ptr [ %85, %82 ], [ null, %64 ]
  %88 = getelementptr inbounds %struct.s_x4node, ptr %47, i64 %65, i32 1
  store ptr %87, ptr %88, align 8, !tbaa !388
  store ptr %68, ptr %77, align 8, !tbaa !383
  %89 = getelementptr inbounds %struct.s_x4node, ptr %47, i64 %65, i32 2
  store ptr %79, ptr %89, align 8, !tbaa !387
  store ptr %77, ptr %79, align 8, !tbaa !7
  %90 = add nuw nsw i64 %65, 1
  %91 = icmp eq i64 %90, %63
  br i1 %91, label %92, label %64, !llvm.loop !389

92:                                               ; preds = %86, %58
  %93 = phi i32 [ %59, %58 ], [ %62, %86 ]
  %94 = getelementptr inbounds %struct.s_x4, ptr %2, i64 0, i32 2
  %95 = load ptr, ptr %94, align 8, !tbaa !150
  tail call void @free(ptr noundef %95) #26
  store i32 %44, ptr %2, align 8, !tbaa.struct !311
  store ptr %47, ptr %94, align 8, !tbaa.struct !312
  store ptr %50, ptr %15, align 8, !tbaa.struct !313
  %96 = and i32 %93, %11
  %97 = sext i32 %96 to i64
  br label %98

98:                                               ; preds = %92, %40
  %99 = phi i64 [ %17, %40 ], [ %97, %92 ]
  %100 = phi ptr [ %16, %40 ], [ %50, %92 ]
  %101 = phi ptr [ %42, %40 ], [ %47, %92 ]
  %102 = add nsw i32 %38, 1
  store i32 %102, ptr %37, align 4, !tbaa !149
  %103 = sext i32 %38 to i64
  %104 = getelementptr inbounds %struct.s_x4node, ptr %101, i64 %103
  store ptr %0, ptr %104, align 8, !tbaa !383
  %105 = getelementptr inbounds ptr, ptr %100, i64 %99
  %106 = load ptr, ptr %105, align 8, !tbaa !7
  %107 = icmp eq ptr %106, null
  br i1 %107, label %112, label %108

108:                                              ; preds = %98
  %109 = getelementptr inbounds %struct.s_x4node, ptr %101, i64 %103, i32 1
  %110 = getelementptr inbounds %struct.s_x4node, ptr %106, i64 0, i32 2
  store ptr %109, ptr %110, align 8, !tbaa !387
  %111 = load ptr, ptr %105, align 8, !tbaa !7
  br label %112

112:                                              ; preds = %108, %98
  %113 = phi ptr [ %111, %108 ], [ null, %98 ]
  %114 = getelementptr inbounds %struct.s_x4node, ptr %101, i64 %103, i32 1
  store ptr %113, ptr %114, align 8, !tbaa !388
  store ptr %104, ptr %105, align 8, !tbaa !7
  %115 = load ptr, ptr %15, align 8, !tbaa !151
  %116 = getelementptr inbounds ptr, ptr %115, i64 %99
  %117 = getelementptr inbounds %struct.s_x4node, ptr %101, i64 %103, i32 2
  store ptr %116, ptr %117, align 8, !tbaa !387
  br label %118

118:                                              ; preds = %112, %43, %28, %1
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @Configtable_clear(ptr noundef readonly %0) unnamed_addr #0 {
  %2 = load ptr, ptr @x4a, align 8, !tbaa !7
  %3 = icmp eq ptr %2, null
  br i1 %3, label %41, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.s_x4, ptr %2, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !149
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %41, label %8

8:                                                ; preds = %4
  %9 = icmp ne ptr %0, null
  %10 = icmp sgt i32 %6, 0
  %11 = and i1 %9, %10
  br i1 %11, label %12, label %26

12:                                               ; preds = %12, %8
  %13 = phi i64 [ %20, %12 ], [ 0, %8 ]
  %14 = phi ptr [ %21, %12 ], [ %2, %8 ]
  %15 = getelementptr inbounds %struct.s_x4, ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !150
  %17 = getelementptr inbounds %struct.s_x4node, ptr %16, i64 %13
  %18 = load ptr, ptr %17, align 8, !tbaa !383
  %19 = tail call i32 (ptr, ...) %0(ptr noundef %18) #26
  %20 = add nuw nsw i64 %13, 1
  %21 = load ptr, ptr @x4a, align 8, !tbaa !7
  %22 = getelementptr inbounds %struct.s_x4, ptr %21, i64 0, i32 1
  %23 = load i32, ptr %22, align 4, !tbaa !149
  %24 = sext i32 %23 to i64
  %25 = icmp slt i64 %20, %24
  br i1 %25, label %12, label %26, !llvm.loop !390

26:                                               ; preds = %12, %8
  %27 = phi ptr [ %2, %8 ], [ %21, %12 ]
  %28 = load i32, ptr %27, align 8, !tbaa !147
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.s_x4, ptr %27, i64 0, i32 3
  %32 = zext i32 %28 to i64
  br label %33

33:                                               ; preds = %33, %30
  %34 = phi i64 [ 0, %30 ], [ %37, %33 ]
  %35 = load ptr, ptr %31, align 8, !tbaa !151
  %36 = getelementptr inbounds ptr, ptr %35, i64 %34
  store ptr null, ptr %36, align 8, !tbaa !7
  %37 = add nuw nsw i64 %34, 1
  %38 = icmp eq i64 %37, %32
  br i1 %38, label %39, label %33, !llvm.loop !391

39:                                               ; preds = %33, %26
  %40 = getelementptr inbounds %struct.s_x4, ptr %27, i64 0, i32 1
  store i32 0, ptr %40, align 4, !tbaa !149
  br label %41

41:                                               ; preds = %39, %4, %1
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #24

; Function Attrs: nofree nounwind optsize
declare noundef i32 @vsprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #24

; Function Attrs: nounwind optsize uwtable
define internal void @handle_D_option(ptr nocapture noundef readonly %0) #0 {
  %2 = load i32, ptr @nDefine, align 4, !tbaa !11
  %3 = add nsw i32 %2, 1
  store i32 %3, ptr @nDefine, align 4, !tbaa !11
  %4 = load ptr, ptr @azDefine, align 8, !tbaa !7
  %5 = sext i32 %3 to i64
  %6 = shl nsw i64 %5, 3
  %7 = tail call ptr @realloc(ptr noundef %4, i64 noundef %6) #35
  store ptr %7, ptr @azDefine, align 8, !tbaa !7
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load ptr, ptr @stderr, align 8, !tbaa !7
  %11 = tail call i64 @fwrite(ptr nonnull @.str.165, i64 14, i64 1, ptr %10) #32
  tail call void @exit(i32 noundef 1) #31
  unreachable

12:                                               ; preds = %1
  %13 = sext i32 %2 to i64
  %14 = getelementptr inbounds ptr, ptr %7, i64 %13
  %15 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #29
  %16 = add i64 %15, 1
  %17 = tail call noalias ptr @malloc(i64 noundef %16) #33
  store ptr %17, ptr %14, align 8, !tbaa !7
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %12
  %20 = load ptr, ptr @stderr, align 8, !tbaa !7
  %21 = tail call i64 @fwrite(ptr nonnull @.str.165, i64 14, i64 1, ptr %20) #32
  tail call void @exit(i32 noundef 1) #31
  unreachable

22:                                               ; preds = %12
  %23 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %17, ptr noundef nonnull dereferenceable(1) %0) #26
  br label %24

24:                                               ; preds = %27, %22
  %25 = phi ptr [ %17, %22 ], [ %28, %27 ]
  %26 = load i8, ptr %25, align 1, !tbaa !17
  switch i8 %26, label %27 [
    i8 0, label %29
    i8 61, label %29
  ]

27:                                               ; preds = %24
  %28 = getelementptr inbounds i8, ptr %25, i64 1
  br label %24, !llvm.loop !392

29:                                               ; preds = %24, %24
  %.lcssa = phi ptr [ %25, %24 ], [ %25, %24 ]
  store i8 0, ptr %.lcssa, align 1, !tbaa !17
  ret void
}

attributes #0 = { nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nosync nounwind optsize willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind optsize willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noreturn nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind }
attributes #12 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #13 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nounwind optsize willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { nofree nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nofree nounwind optsize memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nofree norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nocallback nofree nosync nounwind willreturn }
attributes #25 = { nounwind }
attributes #26 = { nounwind optsize }
attributes #27 = { optsize }
attributes #28 = { nounwind optsize willreturn memory(none) }
attributes #29 = { nounwind optsize willreturn memory(read) }
attributes #30 = { cold optsize }
attributes #31 = { noreturn nounwind optsize }
attributes #32 = { cold }
attributes #33 = { nounwind optsize allocsize(0) }
attributes #34 = { nounwind optsize allocsize(0,1) }
attributes #35 = { nounwind optsize allocsize(1) }

!llvm.ident = !{!0}
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
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.mustprogress"}
!15 = distinct !{!15, !14}
!16 = distinct !{!16, !14}
!17 = !{!9, !9, i64 0}
!18 = !{!19, !8, i64 8}
!19 = !{!"s_options", !9, i64 0, !8, i64 8, !8, i64 16, !8, i64 24}
!20 = distinct !{!20, !14}
!21 = !{!19, !9, i64 0}
!22 = !{!19, !8, i64 16}
!23 = distinct !{!23, !14}
!24 = !{!25, !25, i64 0}
!25 = !{!"double", !9, i64 0}
!26 = distinct !{!26, !14}
!27 = distinct !{!27, !14}
!28 = !{!29, !12, i64 0}
!29 = !{!"s_x1", !12, i64 0, !12, i64 4, !8, i64 8, !8, i64 16}
!30 = !{!29, !12, i64 4}
!31 = !{!29, !8, i64 8}
!32 = !{!29, !8, i64 16}
!33 = distinct !{!33, !14}
!34 = !{!35, !12, i64 0}
!35 = !{!"s_x2", !12, i64 0, !12, i64 4, !8, i64 8, !8, i64 16}
!36 = !{!35, !12, i64 4}
!37 = !{!35, !8, i64 8}
!38 = !{!35, !8, i64 16}
!39 = distinct !{!39, !14}
!40 = !{!41, !12, i64 0}
!41 = !{!"s_x3", !12, i64 0, !12, i64 4, !8, i64 8, !8, i64 16}
!42 = !{!41, !12, i64 4}
!43 = !{!41, !8, i64 8}
!44 = !{!41, !8, i64 16}
!45 = distinct !{!45, !14}
!46 = !{!47, !8, i64 280}
!47 = !{!"lemon", !8, i64 0, !8, i64 8, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !8, i64 32, !12, i64 40, !8, i64 48, !8, i64 56, !8, i64 64, !8, i64 72, !8, i64 80, !8, i64 88, !8, i64 96, !8, i64 104, !8, i64 112, !12, i64 120, !8, i64 128, !12, i64 136, !8, i64 144, !12, i64 152, !8, i64 160, !12, i64 168, !8, i64 176, !12, i64 184, !8, i64 192, !12, i64 200, !8, i64 208, !12, i64 216, !8, i64 224, !12, i64 232, !8, i64 240, !8, i64 248, !8, i64 256, !12, i64 264, !12, i64 268, !12, i64 272, !12, i64 276, !8, i64 280}
!48 = distinct !{!48, !14}
!49 = !{!47, !8, i64 240}
!50 = !{!47, !12, i64 272}
!51 = !{!47, !8, i64 48}
!52 = !{!53, !12, i64 52}
!53 = !{!"symbol", !8, i64 0, !12, i64 8, !9, i64 12, !8, i64 16, !8, i64 24, !12, i64 32, !9, i64 36, !8, i64 40, !9, i64 48, !12, i64 52, !8, i64 56, !12, i64 64, !8, i64 72, !12, i64 80, !12, i64 84, !8, i64 88}
!54 = !{!55, !8, i64 24}
!55 = !{!"pstate", !8, i64 0, !12, i64 8, !12, i64 12, !8, i64 16, !8, i64 24, !9, i64 32, !8, i64 40, !8, i64 48, !8, i64 56, !12, i64 64, !9, i64 72, !9, i64 8072, !8, i64 16072, !8, i64 16080, !8, i64 16088, !8, i64 16096, !9, i64 16104, !12, i64 16108, !8, i64 16112, !8, i64 16120}
!56 = !{!55, !8, i64 0}
!57 = !{!47, !12, i64 40}
!58 = !{!59, !59, i64 0}
!59 = !{!"short", !9, i64 0}
!60 = distinct !{!60, !14}
!61 = distinct !{!61, !14}
!62 = distinct !{!62, !14}
!63 = distinct !{!63, !14}
!64 = distinct !{!64, !14}
!65 = distinct !{!65, !14}
!66 = distinct !{!66, !14}
!67 = distinct !{!67, !14}
!68 = !{!55, !8, i64 16}
!69 = !{!55, !12, i64 8}
!70 = distinct !{!70, !14}
!71 = distinct !{!71, !14}
!72 = !{!55, !12, i64 12}
!73 = distinct !{!73, !14}
!74 = distinct !{!74, !14}
!75 = distinct !{!75, !14}
!76 = distinct !{!76, !14}
!77 = distinct !{!77, !14}
!78 = distinct !{!78, !14}
!79 = !{!55, !9, i64 32}
!80 = !{!55, !8, i64 16072}
!81 = !{!47, !12, i64 20}
!82 = !{!55, !8, i64 48}
!83 = !{!55, !12, i64 64}
!84 = !{!55, !8, i64 56}
!85 = !{!86, !8, i64 56}
!86 = !{!"rule", !8, i64 0, !8, i64 8, !12, i64 16, !12, i64 20, !12, i64 24, !8, i64 32, !8, i64 40, !12, i64 48, !8, i64 56, !8, i64 64, !12, i64 72, !9, i64 76, !8, i64 80, !8, i64 88}
!87 = !{!86, !12, i64 48}
!88 = !{!86, !8, i64 64}
!89 = !{!53, !8, i64 0}
!90 = !{!86, !12, i64 20}
!91 = !{!86, !8, i64 32}
!92 = !{!86, !8, i64 40}
!93 = distinct !{!93, !14}
!94 = !{!86, !8, i64 0}
!95 = !{!86, !8, i64 8}
!96 = !{!86, !12, i64 24}
!97 = !{!86, !12, i64 72}
!98 = !{!53, !8, i64 16}
!99 = !{!86, !8, i64 80}
!100 = !{!86, !8, i64 88}
!101 = !{!55, !8, i64 16112}
!102 = !{!53, !9, i64 12}
!103 = !{!53, !12, i64 84}
!104 = !{!53, !8, i64 88}
!105 = !{!55, !8, i64 16080}
!106 = !{!55, !8, i64 16088}
!107 = !{!55, !8, i64 16096}
!108 = !{!55, !12, i64 16108}
!109 = !{!55, !9, i64 16104}
!110 = !{!55, !8, i64 40}
!111 = !{!53, !12, i64 32}
!112 = !{!53, !8, i64 24}
!113 = !{!47, !12, i64 276}
!114 = !{!47, !8, i64 56}
!115 = distinct !{!115, !14}
!116 = !{!47, !8, i64 8}
!117 = !{!47, !12, i64 24}
!118 = !{!119, !8, i64 0}
!119 = !{!"s_x2node", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24}
!120 = distinct !{!120, !14}
!121 = !{!47, !8, i64 32}
!122 = !{!53, !12, i64 8}
!123 = distinct !{!123, !14}
!124 = distinct !{!124, !14}
!125 = distinct !{!125, !14}
!126 = !{!47, !12, i64 28}
!127 = distinct !{!127, !14}
!128 = distinct !{!128, !14}
!129 = distinct !{!129, !14}
!130 = distinct !{!130, !14}
!131 = distinct !{!131, !14}
!132 = distinct !{!132, !14}
!133 = distinct !{!133, !14}
!134 = distinct !{!134, !14}
!135 = distinct !{!135, !14}
!136 = !{!53, !9, i64 48}
!137 = distinct !{!137, !14}
!138 = !{!53, !8, i64 40}
!139 = distinct !{!139, !14}
!140 = distinct !{!140, !14}
!141 = distinct !{!141, !14}
!142 = distinct !{!142, !14}
!143 = distinct !{!143, !14}
!144 = distinct !{!144, !14}
!145 = distinct !{!145, !14}
!146 = !{!47, !12, i64 16}
!147 = !{!148, !12, i64 0}
!148 = !{!"s_x4", !12, i64 0, !12, i64 4, !8, i64 8, !8, i64 16}
!149 = !{!148, !12, i64 4}
!150 = !{!148, !8, i64 8}
!151 = !{!148, !8, i64 16}
!152 = distinct !{!152, !14}
!153 = !{!47, !8, i64 96}
!154 = distinct !{!154, !14}
!155 = distinct !{!155, !14}
!156 = !{!86, !12, i64 16}
!157 = !{!158, !8, i64 16}
!158 = !{!"config", !8, i64 0, !12, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !9, i64 48, !8, i64 56, !8, i64 64}
!159 = distinct !{!159, !14}
!160 = !{!161, !8, i64 0}
!161 = !{!"s_x3node", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24}
!162 = distinct !{!162, !14}
!163 = !{!47, !8, i64 0}
!164 = !{!158, !8, i64 40}
!165 = distinct !{!165, !14}
!166 = distinct !{!166, !14}
!167 = !{!168, !8, i64 0}
!168 = !{!"plink", !8, i64 0, !8, i64 8}
!169 = !{!168, !8, i64 8}
!170 = distinct !{!170, !14}
!171 = distinct !{!171, !14}
!172 = distinct !{!172, !14}
!173 = !{!158, !9, i64 48}
!174 = distinct !{!174, !14}
!175 = distinct !{!175, !14}
!176 = distinct !{!176, !14}
!177 = distinct !{!177, !14}
!178 = distinct !{!178, !14}
!179 = distinct !{!179, !14}
!180 = !{!158, !8, i64 0}
!181 = !{!158, !12, i64 8}
!182 = distinct !{!182, !14}
!183 = distinct !{!183, !14}
!184 = distinct !{!184, !14}
!185 = !{!186, !8, i64 24}
!186 = !{!"state", !8, i64 0, !8, i64 8, !12, i64 16, !8, i64 24, !12, i64 32, !12, i64 36, !12, i64 40, !12, i64 44, !12, i64 48}
!187 = !{!188, !8, i64 24}
!188 = !{!"action", !8, i64 0, !9, i64 8, !9, i64 16, !8, i64 24, !8, i64 32}
!189 = !{!47, !12, i64 264}
!190 = !{!188, !8, i64 0}
!191 = !{!188, !9, i64 8}
!192 = !{!53, !9, i64 36}
!193 = distinct !{!193, !14}
!194 = distinct !{!194, !14}
!195 = distinct !{!195, !14}
!196 = !{!86, !9, i64 76}
!197 = distinct !{!197, !14}
!198 = distinct !{!198, !14}
!199 = distinct !{!199, !14}
!200 = distinct !{!200, !14}
!201 = distinct !{!201, !14}
!202 = distinct !{!202, !14}
!203 = distinct !{!203, !14}
!204 = distinct !{!204, !14}
!205 = distinct !{!205, !14}
!206 = !{!186, !12, i64 48}
!207 = !{!186, !12, i64 32}
!208 = !{!186, !12, i64 36}
!209 = distinct !{!209, !14}
!210 = distinct !{!210, !14}
!211 = !{!186, !12, i64 16}
!212 = distinct !{!212, !14}
!213 = distinct !{!213, !14}
!214 = distinct !{!214, !14}
!215 = distinct !{!215, !14}
!216 = distinct !{!216, !14}
!217 = distinct !{!217, !14}
!218 = distinct !{!218, !14}
!219 = distinct !{!219, !14}
!220 = distinct !{!220, !14}
!221 = !{!47, !8, i64 64}
!222 = !{!47, !8, i64 112}
!223 = !{!47, !12, i64 120}
!224 = !{!47, !8, i64 256}
!225 = distinct !{!225, !14}
!226 = !{!47, !8, i64 88}
!227 = !{!53, !8, i64 72}
!228 = distinct !{!228, !14}
!229 = !{!53, !12, i64 80}
!230 = distinct !{!230, !14}
!231 = distinct !{!231, !14}
!232 = distinct !{!232, !14}
!233 = distinct !{!233, !14}
!234 = distinct !{!234, !14}
!235 = distinct !{!235, !14}
!236 = !{!47, !8, i64 80}
!237 = distinct !{!237, !14}
!238 = !{!47, !8, i64 104}
!239 = !{!47, !8, i64 72}
!240 = distinct !{!240, !14}
!241 = distinct !{!241, !14}
!242 = !{!243, !8, i64 0}
!243 = !{!"axset", !8, i64 0, !12, i64 8, !12, i64 12}
!244 = !{!243, !12, i64 8}
!245 = !{!243, !12, i64 12}
!246 = distinct !{!246, !14}
!247 = distinct !{!247, !14}
!248 = !{!186, !12, i64 40}
!249 = distinct !{!249, !14}
!250 = !{!186, !12, i64 44}
!251 = distinct !{!251, !14}
!252 = !{!253, !12, i64 0}
!253 = !{!"acttab", !12, i64 0, !12, i64 4, !8, i64 8, !8, i64 16, !12, i64 24, !12, i64 28, !12, i64 32, !12, i64 36, !12, i64 40}
!254 = !{!253, !8, i64 8}
!255 = !{!256, !12, i64 4}
!256 = !{!"", !12, i64 0, !12, i64 4}
!257 = distinct !{!257, !14}
!258 = !{!256, !12, i64 0}
!259 = distinct !{!259, !14}
!260 = distinct !{!260, !14}
!261 = distinct !{!261, !14}
!262 = distinct !{!262, !14}
!263 = distinct !{!263, !14}
!264 = distinct !{!264, !14}
!265 = distinct !{!265, !14}
!266 = distinct !{!266, !14}
!267 = distinct !{!267, !14}
!268 = !{!47, !8, i64 208}
!269 = distinct !{!269, !14}
!270 = distinct !{!270, !14}
!271 = !{!47, !8, i64 224}
!272 = !{!53, !8, i64 56}
!273 = distinct !{!273, !14}
!274 = distinct !{!274, !14}
!275 = distinct !{!275, !14}
!276 = !{!47, !8, i64 144}
!277 = !{!47, !12, i64 152}
!278 = distinct !{!278, !14}
!279 = distinct !{!279, !14}
!280 = distinct !{!280, !14}
!281 = distinct !{!281, !14}
!282 = distinct !{!282, !14}
!283 = distinct !{!283, !14}
!284 = distinct !{!284, !14}
!285 = distinct !{!285, !14}
!286 = !{!47, !8, i64 248}
!287 = distinct !{!287, !14}
!288 = !{!47, !8, i64 160}
!289 = !{!47, !12, i64 168}
!290 = !{!47, !8, i64 128}
!291 = !{!47, !12, i64 136}
!292 = !{!47, !8, i64 176}
!293 = !{!47, !12, i64 184}
!294 = !{!47, !8, i64 192}
!295 = !{!47, !12, i64 200}
!296 = distinct !{!296, !14}
!297 = distinct !{!297, !14}
!298 = !{!47, !12, i64 268}
!299 = !{}
!300 = distinct !{!300, !14}
!301 = distinct !{!301, !14}
!302 = distinct !{!302, !14}
!303 = !{!19, !8, i64 24}
!304 = distinct !{!304, !14}
!305 = distinct !{!305, !14}
!306 = distinct !{!306, !14}
!307 = !{!119, !8, i64 8}
!308 = !{!119, !8, i64 24}
!309 = !{!119, !8, i64 16}
!310 = distinct !{!310, !14}
!311 = !{i64 0, i64 4, !11, i64 4, i64 4, !11, i64 8, i64 8, !7, i64 16, i64 8, !7}
!312 = !{i64 0, i64 8, !7, i64 8, i64 8, !7}
!313 = !{i64 0, i64 8, !7}
!314 = distinct !{!314, !14}
!315 = distinct !{!315, !14}
!316 = distinct !{!316, !14}
!317 = distinct !{!317, !14}
!318 = distinct !{!318, !14}
!319 = !{!320, !8, i64 0}
!320 = !{!"s_x1node", !8, i64 0, !8, i64 8, !8, i64 16}
!321 = distinct !{!321, !14}
!322 = !{!320, !8, i64 16}
!323 = !{!320, !8, i64 8}
!324 = distinct !{!324, !14}
!325 = distinct !{!325, !14}
!326 = !{!158, !8, i64 64}
!327 = distinct !{!327, !14}
!328 = !{!161, !8, i64 8}
!329 = distinct !{!329, !14}
!330 = !{!158, !8, i64 32}
!331 = distinct !{!331, !14}
!332 = !{!158, !8, i64 24}
!333 = distinct !{!333, !14}
!334 = distinct !{!334, !14}
!335 = !{!158, !8, i64 56}
!336 = distinct !{!336, !14}
!337 = distinct !{!337, !14}
!338 = distinct !{!338, !14}
!339 = distinct !{!339, !14}
!340 = distinct !{!340, !14}
!341 = !{!186, !8, i64 0}
!342 = !{!186, !8, i64 8}
!343 = distinct !{!343, !14}
!344 = !{!161, !8, i64 24}
!345 = !{!161, !8, i64 16}
!346 = distinct !{!346, !14}
!347 = distinct !{!347, !14}
!348 = distinct !{!348, !14}
!349 = distinct !{!349, !14}
!350 = distinct !{!350, !14}
!351 = distinct !{!351, !14}
!352 = distinct !{!352, !14, !353, !354}
!353 = !{!"llvm.loop.isvectorized", i32 1}
!354 = !{!"llvm.loop.unroll.runtime.disable"}
!355 = distinct !{!355, !14, !353, !354}
!356 = distinct !{!356, !14}
!357 = distinct !{!357, !14}
!358 = distinct !{!358, !14}
!359 = distinct !{!359, !14}
!360 = distinct !{!360, !14}
!361 = distinct !{!361, !14}
!362 = !{!253, !12, i64 36}
!363 = !{!253, !12, i64 40}
!364 = !{!253, !8, i64 16}
!365 = !{!253, !12, i64 32}
!366 = !{!253, !12, i64 24}
!367 = !{!253, !12, i64 28}
!368 = !{!253, !12, i64 4}
!369 = distinct !{!369, !14}
!370 = distinct !{!370, !14}
!371 = distinct !{!371, !14}
!372 = distinct !{!372, !14}
!373 = distinct !{!373, !14}
!374 = distinct !{!374, !14}
!375 = distinct !{!375, !14}
!376 = distinct !{!376, !14}
!377 = distinct !{!377, !14}
!378 = distinct !{!378, !14}
!379 = distinct !{!379, !14}
!380 = !{ptr @Configcmp, ptr @actioncmp}
!381 = distinct !{!381, !14}
!382 = distinct !{!382, !14}
!383 = !{!384, !8, i64 0}
!384 = !{!"s_x4node", !8, i64 0, !8, i64 8, !8, i64 16}
!385 = distinct !{!385, !14}
!386 = distinct !{!386, !14}
!387 = !{!384, !8, i64 16}
!388 = !{!384, !8, i64 8}
!389 = distinct !{!389, !14}
!390 = distinct !{!390, !14}
!391 = distinct !{!391, !14}
!392 = distinct !{!392, !14}
