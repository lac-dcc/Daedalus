; ModuleID = '/src/llvm-test-suite/build/MultiSource/Applications/lemon/lemon.e.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s_options = type { i32, ptr, ptr, ptr }
%struct.action = type { ptr, i32, %union.anon, ptr, ptr }
%union.anon = type { ptr }
%struct.acttab = type { i32, i32, ptr, ptr, i32, i32, i32, i32, i32 }
%struct.anon = type { i32, i32 }
%struct.lemon = type { ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, i32, i32, i32, i32, ptr }
%struct.rule = type { ptr, ptr, i32, i32, i32, ptr, ptr, i32, ptr, ptr, i32, i32, ptr, ptr }
%struct.symbol = type { ptr, i32, i32, ptr, ptr, i32, i32, ptr, i32, i32, ptr, i32, ptr, i32, i32, ptr }
%struct.config = type { ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr }
%struct.s_x4 = type { i32, i32, ptr, ptr }
%struct.s_x4node = type { ptr, ptr, ptr }
%struct.s_x3node = type { ptr, ptr, ptr, ptr }
%struct.plink = type { ptr, ptr }
%struct.state = type { ptr, ptr, i32, ptr, i32, i32, i32, i32, i32 }
%struct.pstate = type { ptr, i32, i32, ptr, ptr, i32, ptr, ptr, ptr, i32, [1000 x ptr], [1000 x ptr], ptr, ptr, ptr, ptr, i32, i32, ptr, ptr }
%struct.axset = type { ptr, i32, i32 }

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
define internal void @Action_add(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = load ptr, ptr @Action_new.freelist, align 8, !tbaa !7
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %36

7:                                                ; preds = %4
  %8 = tail call noalias dereferenceable_or_null(4000) ptr @calloc(i64 noundef 100, i64 noundef 40) #28
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
  store ptr %19, ptr %17, align 8, !tbaa !11
  br label %20

20:                                               ; preds = %16, %10
  %21 = extractelement <2 x i1> %13, i64 1
  br i1 %21, label %22, label %27

22:                                               ; preds = %20
  %23 = or i64 %11, 1
  %24 = getelementptr inbounds %struct.action, ptr %8, i64 %23, i32 3
  %25 = extractelement <2 x i64> %14, i64 1
  %26 = getelementptr inbounds %struct.action, ptr %8, i64 %25
  store ptr %26, ptr %24, align 8, !tbaa !11
  br label %27

27:                                               ; preds = %22, %20
  %28 = add i64 %11, 2
  %29 = add <2 x i64> %12, <i64 2, i64 2>
  %30 = icmp eq i64 %28, 100
  br i1 %30, label %34, label %10, !llvm.loop !13

31:                                               ; preds = %7
  %32 = load ptr, ptr @stderr, align 8, !tbaa !7
  %33 = tail call i64 @fwrite(ptr nonnull @.str.164, i64 50, i64 1, ptr %32) #29
  tail call void @exit(i32 noundef 1) #30
  unreachable

34:                                               ; preds = %27
  %35 = getelementptr inbounds %struct.action, ptr %8, i64 99, i32 3
  store ptr null, ptr %35, align 8, !tbaa !11
  br label %36

36:                                               ; preds = %34, %4
  %37 = phi ptr [ %8, %34 ], [ %5, %4 ]
  %38 = getelementptr inbounds %struct.action, ptr %37, i64 0, i32 3
  %39 = load ptr, ptr %38, align 8, !tbaa !11
  store ptr %39, ptr @Action_new.freelist, align 8, !tbaa !7
  %40 = load ptr, ptr %0, align 8, !tbaa !7
  store ptr %40, ptr %38, align 8, !tbaa !11
  store ptr %37, ptr %0, align 8, !tbaa !7
  %41 = getelementptr inbounds %struct.action, ptr %37, i64 0, i32 1
  store i32 %1, ptr %41, align 8, !tbaa !17
  store ptr %2, ptr %37, align 8, !tbaa !18
  %42 = getelementptr inbounds %struct.action, ptr %37, i64 0, i32 2
  store ptr %3, ptr %42, align 8
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind optsize uwtable
define internal noalias ptr @acttab_alloc() #0 {
  %1 = tail call noalias dereferenceable_or_null(48) ptr @calloc(i64 noundef 1, i64 noundef 48) #28
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %6

3:                                                ; preds = %0
  %4 = load ptr, ptr @stderr, align 8, !tbaa !7
  %5 = tail call i64 @fwrite(ptr nonnull @.str, i64 43, i64 1, ptr %4) #29
  tail call void @exit(i32 noundef 1) #30
  unreachable

6:                                                ; preds = %0
  ret ptr %1
}

; Function Attrs: nounwind optsize uwtable
define internal void @acttab_action(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.acttab, ptr %0, i64 0, i32 7
  %5 = load i32, ptr %4, align 4, !tbaa !19
  %6 = getelementptr inbounds %struct.acttab, ptr %0, i64 0, i32 8
  %7 = load i32, ptr %6, align 8, !tbaa !22
  %8 = icmp slt i32 %5, %7
  br i1 %8, label %22, label %9

9:                                                ; preds = %3
  %10 = add nsw i32 %7, 25
  store i32 %10, ptr %6, align 8, !tbaa !22
  %11 = getelementptr inbounds %struct.acttab, ptr %0, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !23
  %13 = sext i32 %10 to i64
  %14 = shl nsw i64 %13, 3
  %15 = tail call ptr @realloc(ptr noundef %12, i64 noundef %14) #31
  store ptr %15, ptr %11, align 8, !tbaa !23
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %9
  %18 = load ptr, ptr @stderr, align 8, !tbaa !7
  %19 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 14, i64 1, ptr %18) #29
  tail call void @exit(i32 noundef 1) #30
  unreachable

20:                                               ; preds = %9
  %21 = load i32, ptr %4, align 4, !tbaa !19
  br label %22

22:                                               ; preds = %20, %3
  %23 = phi i32 [ %21, %20 ], [ %5, %3 ]
  %24 = icmp eq i32 %23, 0
  %25 = getelementptr inbounds %struct.acttab, ptr %0, i64 0, i32 6
  br i1 %24, label %26, label %28

26:                                               ; preds = %22
  store i32 %1, ptr %25, align 8, !tbaa !24
  %27 = getelementptr inbounds %struct.acttab, ptr %0, i64 0, i32 4
  br label %36

28:                                               ; preds = %22
  %29 = load i32, ptr %25, align 8, !tbaa !24
  %30 = icmp slt i32 %29, %1
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  store i32 %1, ptr %25, align 8, !tbaa !24
  br label %32

32:                                               ; preds = %31, %28
  %33 = getelementptr inbounds %struct.acttab, ptr %0, i64 0, i32 4
  %34 = load i32, ptr %33, align 8, !tbaa !25
  %35 = icmp sgt i32 %34, %1
  br i1 %35, label %36, label %39

36:                                               ; preds = %32, %26
  %37 = phi ptr [ %27, %26 ], [ %33, %32 ]
  store i32 %1, ptr %37, align 8, !tbaa !25
  %38 = getelementptr inbounds %struct.acttab, ptr %0, i64 0, i32 5
  store i32 %2, ptr %38, align 4, !tbaa !26
  br label %39

39:                                               ; preds = %36, %32
  %40 = getelementptr inbounds %struct.acttab, ptr %0, i64 0, i32 3
  %41 = load ptr, ptr %40, align 8, !tbaa !23
  %42 = sext i32 %23 to i64
  %43 = getelementptr inbounds %struct.anon, ptr %41, i64 %42
  store i32 %1, ptr %43, align 4, !tbaa !27
  %44 = getelementptr inbounds %struct.anon, ptr %41, i64 %42, i32 1
  store i32 %2, ptr %44, align 4, !tbaa !29
  %45 = add nsw i32 %23, 1
  store i32 %45, ptr %4, align 4, !tbaa !19
  ret void
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind optsize uwtable
define internal i32 @acttab_insert(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.acttab, ptr %0, i64 0, i32 6
  %3 = load i32, ptr %2, align 8, !tbaa !24
  %4 = add nsw i32 %3, 1
  %5 = load i32, ptr %0, align 8, !tbaa !30
  %6 = add nsw i32 %4, %5
  %7 = getelementptr inbounds %struct.acttab, ptr %0, i64 0, i32 1
  %8 = load i32, ptr %7, align 4, !tbaa !31
  %9 = icmp slt i32 %6, %8
  br i1 %9, label %36, label %10

10:                                               ; preds = %1
  %11 = add i32 %8, 20
  %12 = add i32 %11, %6
  store i32 %12, ptr %7, align 4, !tbaa !31
  %13 = getelementptr inbounds %struct.acttab, ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !32
  %15 = sext i32 %12 to i64
  %16 = shl nsw i64 %15, 3
  %17 = tail call ptr @realloc(ptr noundef %14, i64 noundef %16) #31
  store ptr %17, ptr %13, align 8, !tbaa !32
  %18 = icmp eq ptr %17, null
  br i1 %18, label %31, label %19

19:                                               ; preds = %10
  %20 = load i32, ptr %7, align 4, !tbaa !31
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
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %25, i8 -1, i64 %30, i1 false), !tbaa !33
  br label %34

31:                                               ; preds = %10
  %32 = load ptr, ptr @stderr, align 8, !tbaa !7
  %33 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 14, i64 1, ptr %32) #29
  tail call void @exit(i32 noundef 1) #30
  unreachable

34:                                               ; preds = %22, %19
  %35 = load i32, ptr %0, align 8, !tbaa !30
  br label %36

36:                                               ; preds = %34, %1
  %37 = phi i32 [ %35, %34 ], [ %5, %1 ]
  %38 = getelementptr inbounds %struct.acttab, ptr %0, i64 0, i32 4
  %39 = load i32, ptr %38, align 8, !tbaa !25
  %40 = add nsw i32 %39, %37
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %156

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct.acttab, ptr %0, i64 0, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !32
  %45 = getelementptr inbounds %struct.acttab, ptr %0, i64 0, i32 5
  %46 = getelementptr inbounds %struct.acttab, ptr %0, i64 0, i32 7
  %47 = getelementptr inbounds %struct.acttab, ptr %0, i64 0, i32 3
  %48 = icmp sgt i32 %37, 0
  %49 = zext i32 %40 to i64
  %50 = zext i32 %37 to i64
  %51 = zext i32 %37 to i64
  br label %52

52:                                               ; preds = %152, %42
  %53 = phi i64 [ 0, %42 ], [ %153, %152 ]
  %54 = phi i32 [ 0, %42 ], [ %154, %152 ]
  %55 = trunc i64 %53 to i32
  %56 = getelementptr inbounds %struct.anon, ptr %44, i64 %53
  %57 = load i32, ptr %56, align 4, !tbaa !27
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %96

59:                                               ; preds = %52
  %60 = load i32, ptr %46, align 4, !tbaa !19
  %61 = icmp sgt i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %59
  %63 = load ptr, ptr %47, align 8, !tbaa !23
  %64 = zext i32 %60 to i64
  br label %71

65:                                               ; preds = %78
  %66 = add nuw nsw i64 %72, 1
  %67 = icmp eq i64 %66, %64
  br i1 %67, label %68, label %71, !llvm.loop !34

68:                                               ; preds = %65, %59
  br i1 %48, label %69, label %93

69:                                               ; preds = %68
  %70 = add i32 %39, %54
  br label %83

71:                                               ; preds = %65, %62
  %72 = phi i64 [ 0, %62 ], [ %66, %65 ]
  %73 = getelementptr inbounds %struct.anon, ptr %63, i64 %72
  %74 = load i32, ptr %73, align 4, !tbaa !27
  %75 = sub nsw i32 %74, %39
  %76 = add nsw i32 %75, %55
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %152, label %78

78:                                               ; preds = %71
  %79 = zext i32 %76 to i64
  %80 = getelementptr inbounds %struct.anon, ptr %44, i64 %79
  %81 = load i32, ptr %80, align 4, !tbaa !27
  %82 = icmp sgt i32 %81, -1
  br i1 %82, label %152, label %65

83:                                               ; preds = %90, %69
  %84 = phi i64 [ 0, %69 ], [ %91, %90 ]
  %85 = trunc i64 %84 to i32
  %86 = getelementptr inbounds %struct.anon, ptr %44, i64 %84
  %87 = load i32, ptr %86, align 4, !tbaa !27
  %88 = add i32 %70, %85
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %93, label %90

90:                                               ; preds = %83
  %91 = add nuw nsw i64 %84, 1
  %92 = icmp eq i64 %91, %51
  br i1 %92, label %156, label %83, !llvm.loop !35

93:                                               ; preds = %83, %68
  %94 = phi i32 [ 0, %68 ], [ %85, %83 ]
  %95 = icmp eq i32 %94, %37
  br i1 %95, label %156, label %152

96:                                               ; preds = %52
  %97 = icmp eq i32 %57, %39
  br i1 %97, label %98, label %152

98:                                               ; preds = %96
  %99 = getelementptr inbounds %struct.anon, ptr %44, i64 %53, i32 1
  %100 = load i32, ptr %99, align 4, !tbaa !29
  %101 = load i32, ptr %45, align 4, !tbaa !26
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %103, label %152

103:                                              ; preds = %98
  %104 = load i32, ptr %46, align 4, !tbaa !19
  %105 = icmp sgt i32 %104, 0
  br i1 %105, label %106, label %112

106:                                              ; preds = %103
  %107 = load ptr, ptr %47, align 8, !tbaa !23
  %108 = zext i32 %104 to i64
  br label %115

109:                                              ; preds = %129
  %110 = add nuw nsw i64 %116, 1
  %111 = icmp eq i64 %110, %108
  br i1 %111, label %112, label %115, !llvm.loop !36

112:                                              ; preds = %109, %103
  br i1 %48, label %113, label %149

113:                                              ; preds = %112
  %114 = add i32 %39, %54
  br label %135

115:                                              ; preds = %109, %106
  %116 = phi i64 [ 0, %106 ], [ %110, %109 ]
  %117 = getelementptr inbounds %struct.anon, ptr %107, i64 %116
  %118 = load i32, ptr %117, align 4, !tbaa !27
  %119 = sub nsw i32 %118, %39
  %120 = add nsw i32 %119, %55
  %121 = icmp sgt i32 %120, -1
  %122 = icmp slt i32 %120, %37
  %123 = and i1 %121, %122
  br i1 %123, label %124, label %152

124:                                              ; preds = %115
  %125 = zext i32 %120 to i64
  %126 = getelementptr inbounds %struct.anon, ptr %44, i64 %125
  %127 = load i32, ptr %126, align 4, !tbaa !27
  %128 = icmp eq i32 %118, %127
  br i1 %128, label %129, label %152

129:                                              ; preds = %124
  %130 = getelementptr inbounds %struct.anon, ptr %107, i64 %116, i32 1
  %131 = load i32, ptr %130, align 4, !tbaa !29
  %132 = getelementptr inbounds %struct.anon, ptr %44, i64 %125, i32 1
  %133 = load i32, ptr %132, align 4, !tbaa !29
  %134 = icmp eq i32 %131, %133
  br i1 %134, label %109, label %152

135:                                              ; preds = %135, %113
  %136 = phi i64 [ 0, %113 ], [ %147, %135 ]
  %137 = phi i32 [ 0, %113 ], [ %146, %135 ]
  %138 = trunc i64 %136 to i32
  %139 = getelementptr inbounds %struct.anon, ptr %44, i64 %136
  %140 = load i32, ptr %139, align 4, !tbaa !27
  %141 = icmp sgt i32 %140, -1
  %142 = add i32 %114, %138
  %143 = icmp eq i32 %140, %142
  %144 = and i1 %141, %143
  %145 = zext i1 %144 to i32
  %146 = add nuw nsw i32 %137, %145
  %147 = add nuw nsw i64 %136, 1
  %148 = icmp eq i64 %147, %50
  br i1 %148, label %149, label %135, !llvm.loop !37

149:                                              ; preds = %135, %112
  %150 = phi i32 [ 0, %112 ], [ %146, %135 ]
  %151 = icmp eq i32 %150, %104
  br i1 %151, label %156, label %152

152:                                              ; preds = %149, %129, %124, %115, %98, %96, %93, %78, %71
  %153 = add nuw nsw i64 %53, 1
  %154 = xor i32 %55, -1
  %155 = icmp eq i64 %153, %49
  br i1 %155, label %156, label %52, !llvm.loop !38

156:                                              ; preds = %152, %149, %93, %90, %36
  %157 = phi i32 [ 0, %36 ], [ %55, %90 ], [ %55, %149 ], [ %55, %93 ], [ %40, %152 ]
  %158 = getelementptr inbounds %struct.acttab, ptr %0, i64 0, i32 7
  %159 = load i32, ptr %158, align 4, !tbaa !19
  %160 = icmp sgt i32 %159, 0
  br i1 %160, label %161, label %187

161:                                              ; preds = %156
  %162 = getelementptr inbounds %struct.acttab, ptr %0, i64 0, i32 3
  %163 = getelementptr inbounds %struct.acttab, ptr %0, i64 0, i32 2
  br label %164

164:                                              ; preds = %180, %161
  %165 = phi i64 [ 0, %161 ], [ %181, %180 ]
  %166 = load ptr, ptr %162, align 8, !tbaa !23
  %167 = getelementptr inbounds %struct.anon, ptr %166, i64 %165
  %168 = load i32, ptr %167, align 4, !tbaa !27
  %169 = load i32, ptr %38, align 8, !tbaa !25
  %170 = sub nsw i32 %168, %169
  %171 = add nsw i32 %170, %157
  %172 = load ptr, ptr %163, align 8, !tbaa !32
  %173 = sext i32 %171 to i64
  %174 = getelementptr inbounds %struct.anon, ptr %172, i64 %173
  %175 = load i64, ptr %167, align 4
  store i64 %175, ptr %174, align 4
  %176 = load i32, ptr %0, align 8, !tbaa !30
  %177 = icmp slt i32 %171, %176
  br i1 %177, label %180, label %178

178:                                              ; preds = %164
  %179 = add nsw i32 %171, 1
  store i32 %179, ptr %0, align 8, !tbaa !30
  br label %180

180:                                              ; preds = %178, %164
  %181 = add nuw nsw i64 %165, 1
  %182 = load i32, ptr %158, align 4, !tbaa !19
  %183 = sext i32 %182 to i64
  %184 = icmp slt i64 %181, %183
  br i1 %184, label %164, label %185, !llvm.loop !39

185:                                              ; preds = %180
  %186 = load i32, ptr %38, align 8, !tbaa !25
  br label %187

187:                                              ; preds = %185, %156
  %188 = phi i32 [ %186, %185 ], [ %39, %156 ]
  store i32 0, ptr %158, align 4, !tbaa !19
  %189 = sub nsw i32 %157, %188
  ret i32 %189
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: nofree norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal void @FindRulePrecedences(ptr nocapture noundef readonly %0) #6 {
  %2 = getelementptr inbounds %struct.lemon, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !7
  %4 = icmp eq ptr %3, null
  br i1 %4, label %60, label %5

5:                                                ; preds = %56, %1
  %6 = phi ptr [ %58, %56 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct.rule, ptr %6, i64 0, i32 9
  %8 = load ptr, ptr %7, align 8, !tbaa !40
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %56

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.rule, ptr %6, i64 0, i32 4
  %12 = load i32, ptr %11, align 8, !tbaa !42
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %56

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.rule, ptr %6, i64 0, i32 5
  %16 = zext i32 %12 to i64
  br label %17

17:                                               ; preds = %52, %14
  %18 = phi i64 [ 0, %14 ], [ %54, %52 ]
  %19 = phi ptr [ null, %14 ], [ %53, %52 ]
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %56

21:                                               ; preds = %17
  %22 = load ptr, ptr %15, align 8, !tbaa !43
  %23 = getelementptr inbounds ptr, ptr %22, i64 %18
  %24 = load ptr, ptr %23, align 8, !tbaa !7
  %25 = getelementptr inbounds %struct.symbol, ptr %24, i64 0, i32 2
  %26 = load i32, ptr %25, align 4, !tbaa !44
  %27 = icmp eq i32 %26, 2
  br i1 %27, label %28, label %46

28:                                               ; preds = %21
  %29 = getelementptr inbounds %struct.symbol, ptr %24, i64 0, i32 14
  %30 = load i32, ptr %29, align 4, !tbaa !46
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %52

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.symbol, ptr %24, i64 0, i32 15
  %34 = load ptr, ptr %33, align 8, !tbaa !47
  %35 = zext i32 %30 to i64
  br label %39

36:                                               ; preds = %39
  %37 = add nuw nsw i64 %40, 1
  %38 = icmp eq i64 %37, %35
  br i1 %38, label %52, label %39, !llvm.loop !48

39:                                               ; preds = %36, %32
  %40 = phi i64 [ 0, %32 ], [ %37, %36 ]
  %41 = getelementptr inbounds ptr, ptr %34, i64 %40
  %42 = load ptr, ptr %41, align 8, !tbaa !7
  %43 = getelementptr inbounds %struct.symbol, ptr %42, i64 0, i32 5
  %44 = load i32, ptr %43, align 8, !tbaa !49
  %45 = icmp sgt i32 %44, -1
  br i1 %45, label %50, label %36

46:                                               ; preds = %21
  %47 = getelementptr inbounds %struct.symbol, ptr %24, i64 0, i32 5
  %48 = load i32, ptr %47, align 8, !tbaa !49
  %49 = icmp sgt i32 %48, -1
  br i1 %49, label %50, label %52

50:                                               ; preds = %46, %39
  %51 = phi ptr [ %24, %46 ], [ %42, %39 ]
  store ptr %51, ptr %7, align 8, !tbaa !40
  br label %52

52:                                               ; preds = %50, %46, %36, %28
  %53 = phi ptr [ null, %46 ], [ null, %28 ], [ %51, %50 ], [ null, %36 ]
  %54 = add nuw nsw i64 %18, 1
  %55 = icmp eq i64 %54, %16
  br i1 %55, label %56, label %17, !llvm.loop !50

56:                                               ; preds = %52, %17, %10, %5
  %57 = getelementptr inbounds %struct.rule, ptr %6, i64 0, i32 13
  %58 = load ptr, ptr %57, align 8, !tbaa !7
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %5, !llvm.loop !51

60:                                               ; preds = %56, %1
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @FindFirstSets(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.lemon, ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 8, !tbaa !52
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %16

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.lemon, ptr %0, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !54
  %8 = zext i32 %3 to i64
  br label %9

9:                                                ; preds = %9, %5
  %10 = phi i64 [ 0, %5 ], [ %14, %9 ]
  %11 = getelementptr inbounds ptr, ptr %7, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !7
  %13 = getelementptr inbounds %struct.symbol, ptr %12, i64 0, i32 8
  store i32 0, ptr %13, align 8, !tbaa !55
  %14 = add nuw nsw i64 %10, 1
  %15 = icmp eq i64 %14, %8
  br i1 %15, label %16, label %9, !llvm.loop !56

16:                                               ; preds = %9, %1
  %17 = getelementptr inbounds %struct.lemon, ptr %0, i64 0, i32 5
  %18 = load i32, ptr %17, align 4, !tbaa !57
  %19 = icmp slt i32 %18, %3
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.lemon, ptr %0, i64 0, i32 6
  %22 = sext i32 %18 to i64
  br label %27

23:                                               ; preds = %27, %16
  %24 = getelementptr inbounds %struct.lemon, ptr %0, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !7
  %26 = icmp eq ptr %25, null
  br i1 %26, label %84, label %38

27:                                               ; preds = %27, %20
  %28 = phi i64 [ %22, %20 ], [ %34, %27 ]
  %29 = tail call ptr @SetNew() #32
  %30 = load ptr, ptr %21, align 8, !tbaa !54
  %31 = getelementptr inbounds ptr, ptr %30, i64 %28
  %32 = load ptr, ptr %31, align 8, !tbaa !7
  %33 = getelementptr inbounds %struct.symbol, ptr %32, i64 0, i32 7
  store ptr %29, ptr %33, align 8, !tbaa !58
  %34 = add nsw i64 %28, 1
  %35 = load i32, ptr %2, align 8, !tbaa !52
  %36 = sext i32 %35 to i64
  %37 = icmp slt i64 %34, %36
  br i1 %37, label %27, label %23, !llvm.loop !59

38:                                               ; preds = %78, %23
  %39 = phi ptr [ %79, %78 ], [ %25, %23 ]
  %40 = phi i32 [ %80, %78 ], [ 0, %23 ]
  %41 = load ptr, ptr %39, align 8, !tbaa !60
  %42 = getelementptr inbounds %struct.symbol, ptr %41, i64 0, i32 8
  %43 = load i32, ptr %42, align 8, !tbaa !55
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %73

45:                                               ; preds = %38
  %46 = getelementptr inbounds %struct.rule, ptr %39, i64 0, i32 4
  %47 = load i32, ptr %46, align 8, !tbaa !42
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %49, label %69

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.rule, ptr %39, i64 0, i32 5
  %51 = load ptr, ptr %50, align 8, !tbaa !43
  %52 = zext i32 %47 to i64
  br label %53

53:                                               ; preds = %64, %49
  %54 = phi i64 [ 0, %49 ], [ %65, %64 ]
  %55 = getelementptr inbounds ptr, ptr %51, i64 %54
  %56 = load ptr, ptr %55, align 8, !tbaa !7
  %57 = getelementptr inbounds %struct.symbol, ptr %56, i64 0, i32 2
  %58 = load i32, ptr %57, align 4, !tbaa !44
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %53
  %61 = getelementptr inbounds %struct.symbol, ptr %56, i64 0, i32 8
  %62 = load i32, ptr %61, align 8, !tbaa !55
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %60
  %65 = add nuw nsw i64 %54, 1
  %66 = icmp eq i64 %65, %52
  br i1 %66, label %72, label %53, !llvm.loop !61

67:                                               ; preds = %60, %53
  %.lcssa5 = phi i64 [ %54, %60 ], [ %54, %53 ]
  %68 = trunc i64 %.lcssa5 to i32
  br label %69

69:                                               ; preds = %67, %45
  %70 = phi i32 [ 0, %45 ], [ %68, %67 ]
  %71 = icmp eq i32 %70, %47
  br i1 %71, label %72, label %73

72:                                               ; preds = %69, %64
  store i32 1, ptr %42, align 8, !tbaa !55
  br label %73

73:                                               ; preds = %72, %69, %38
  %74 = phi i32 [ %40, %38 ], [ 1, %72 ], [ %40, %69 ]
  %75 = getelementptr inbounds %struct.rule, ptr %39, i64 0, i32 13
  %76 = load ptr, ptr %75, align 8, !tbaa !7
  %77 = icmp eq ptr %76, null
  br i1 %77, label %81, label %78

78:                                               ; preds = %81, %73
  %79 = phi ptr [ %76, %73 ], [ %25, %81 ]
  %80 = phi i32 [ %74, %73 ], [ 0, %81 ]
  br label %38, !llvm.loop !62

81:                                               ; preds = %73
  %82 = icmp eq i32 %74, 0
  %83 = or i1 %82, %26
  br i1 %83, label %84, label %78

84:                                               ; preds = %81, %23
  br label %85

85:                                               ; preds = %190, %84
  %86 = load ptr, ptr %24, align 8, !tbaa !7
  %87 = icmp eq ptr %86, null
  br i1 %87, label %192, label %88

88:                                               ; preds = %185, %85
  %89 = phi ptr [ %188, %185 ], [ %86, %85 ]
  %90 = phi i32 [ %186, %185 ], [ 0, %85 ]
  %91 = load ptr, ptr %89, align 8, !tbaa !60
  %92 = getelementptr inbounds %struct.rule, ptr %89, i64 0, i32 4
  %93 = load i32, ptr %92, align 8, !tbaa !42
  %94 = icmp sgt i32 %93, 0
  br i1 %94, label %95, label %185

95:                                               ; preds = %88
  %96 = getelementptr inbounds %struct.rule, ptr %89, i64 0, i32 5
  %97 = getelementptr inbounds %struct.symbol, ptr %91, i64 0, i32 7
  %98 = getelementptr inbounds %struct.symbol, ptr %91, i64 0, i32 8
  br label %99

99:                                               ; preds = %179, %95
  %100 = phi i32 [ %93, %95 ], [ %180, %179 ]
  %101 = phi i64 [ 0, %95 ], [ %182, %179 ]
  %102 = phi i32 [ %90, %95 ], [ %181, %179 ]
  %103 = load ptr, ptr %96, align 8, !tbaa !43
  %104 = getelementptr inbounds ptr, ptr %103, i64 %101
  %105 = load ptr, ptr %104, align 8, !tbaa !7
  %106 = getelementptr inbounds %struct.symbol, ptr %105, i64 0, i32 2
  %107 = load i32, ptr %106, align 4, !tbaa !44
  switch i32 %107, label %143 [
    i32 0, label %114
    i32 2, label %108
  ]

108:                                              ; preds = %99
  %.lcssa3 = phi i32 [ %102, %99 ]
  %.lcssa1 = phi ptr [ %105, %99 ]
  %109 = getelementptr inbounds %struct.symbol, ptr %.lcssa1, i64 0, i32 14
  %110 = load i32, ptr %109, align 4, !tbaa !46
  %111 = icmp sgt i32 %110, 0
  br i1 %111, label %112, label %185

112:                                              ; preds = %108
  %113 = getelementptr inbounds %struct.symbol, ptr %.lcssa1, i64 0, i32 15
  br label %124

114:                                              ; preds = %99
  %.lcssa2 = phi i32 [ %102, %99 ]
  %.lcssa = phi ptr [ %105, %99 ]
  %115 = load ptr, ptr %97, align 8, !tbaa !58
  %116 = getelementptr inbounds %struct.symbol, ptr %.lcssa, i64 0, i32 1
  %117 = load i32, ptr %116, align 8, !tbaa !63
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i8, ptr %115, i64 %118
  %120 = load i8, ptr %119, align 1, !tbaa !64
  store i8 1, ptr %119, align 1, !tbaa !64
  %121 = icmp eq i8 %120, 0
  %122 = zext i1 %121 to i32
  %123 = add nsw i32 %.lcssa2, %122
  br label %185

124:                                              ; preds = %124, %112
  %125 = phi i64 [ 0, %112 ], [ %139, %124 ]
  %126 = phi i32 [ %.lcssa3, %112 ], [ %138, %124 ]
  %127 = load ptr, ptr %97, align 8, !tbaa !58
  %128 = load ptr, ptr %113, align 8, !tbaa !47
  %129 = getelementptr inbounds ptr, ptr %128, i64 %125
  %130 = load ptr, ptr %129, align 8, !tbaa !7
  %131 = getelementptr inbounds %struct.symbol, ptr %130, i64 0, i32 1
  %132 = load i32, ptr %131, align 8, !tbaa !63
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i8, ptr %127, i64 %133
  %135 = load i8, ptr %134, align 1, !tbaa !64
  store i8 1, ptr %134, align 1, !tbaa !64
  %136 = icmp eq i8 %135, 0
  %137 = zext i1 %136 to i32
  %138 = add nsw i32 %126, %137
  %139 = add nuw nsw i64 %125, 1
  %140 = load i32, ptr %109, align 4, !tbaa !46
  %141 = sext i32 %140 to i64
  %142 = icmp slt i64 %139, %141
  br i1 %142, label %124, label %185, !llvm.loop !65

143:                                              ; preds = %99
  %144 = icmp eq ptr %91, %105
  br i1 %144, label %145, label %148

145:                                              ; preds = %143
  %146 = load i32, ptr %98, align 8, !tbaa !55
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %185, label %179

148:                                              ; preds = %143
  %149 = load ptr, ptr %97, align 8, !tbaa !58
  %150 = getelementptr inbounds %struct.symbol, ptr %105, i64 0, i32 7
  %151 = load ptr, ptr %150, align 8, !tbaa !58
  %152 = load i32, ptr @size, align 4, !tbaa !33
  %153 = icmp sgt i32 %152, 0
  br i1 %153, label %154, label %171

154:                                              ; preds = %148
  %155 = zext i32 %152 to i64
  br label %156

156:                                              ; preds = %167, %154
  %157 = phi i64 [ 0, %154 ], [ %169, %167 ]
  %158 = phi i32 [ 0, %154 ], [ %168, %167 ]
  %159 = getelementptr inbounds i8, ptr %151, i64 %157
  %160 = load i8, ptr %159, align 1, !tbaa !64
  %161 = icmp eq i8 %160, 0
  br i1 %161, label %167, label %162

162:                                              ; preds = %156
  %163 = getelementptr inbounds i8, ptr %149, i64 %157
  %164 = load i8, ptr %163, align 1, !tbaa !64
  %165 = icmp eq i8 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %162
  store i8 1, ptr %163, align 1, !tbaa !64
  br label %167

167:                                              ; preds = %166, %162, %156
  %168 = phi i32 [ %158, %156 ], [ 1, %166 ], [ %158, %162 ]
  %169 = add nuw nsw i64 %157, 1
  %170 = icmp eq i64 %169, %155
  br i1 %170, label %171, label %156, !llvm.loop !66

171:                                              ; preds = %167, %148
  %172 = phi i32 [ 0, %148 ], [ %168, %167 ]
  %173 = add nsw i32 %172, %102
  %174 = getelementptr inbounds %struct.symbol, ptr %105, i64 0, i32 8
  %175 = load i32, ptr %174, align 8, !tbaa !55
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %185, label %177

177:                                              ; preds = %171
  %178 = load i32, ptr %92, align 8, !tbaa !42
  br label %179

179:                                              ; preds = %177, %145
  %180 = phi i32 [ %100, %145 ], [ %178, %177 ]
  %181 = phi i32 [ %102, %145 ], [ %173, %177 ]
  %182 = add nuw nsw i64 %101, 1
  %183 = sext i32 %180 to i64
  %184 = icmp slt i64 %182, %183
  br i1 %184, label %99, label %185, !llvm.loop !67

185:                                              ; preds = %179, %171, %145, %124, %114, %108, %88
  %186 = phi i32 [ %123, %114 ], [ %.lcssa3, %108 ], [ %90, %88 ], [ %138, %124 ], [ %173, %171 ], [ %102, %145 ], [ %181, %179 ]
  %187 = getelementptr inbounds %struct.rule, ptr %89, i64 0, i32 13
  %188 = load ptr, ptr %187, align 8, !tbaa !7
  %189 = icmp eq ptr %188, null
  br i1 %189, label %190, label %88, !llvm.loop !68

190:                                              ; preds = %185
  %.lcssa4 = phi i32 [ %186, %185 ]
  %191 = icmp eq i32 %.lcssa4, 0
  br i1 %191, label %192, label %85, !llvm.loop !69

192:                                              ; preds = %190, %85
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal noalias ptr @SetNew() #0 {
  %1 = load i32, ptr @size, align 4, !tbaa !33
  %2 = sext i32 %1 to i64
  %3 = tail call noalias ptr @calloc(i64 noundef %2, i64 noundef 1) #28
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %8

5:                                                ; preds = %0
  %6 = load ptr, ptr @stderr, align 8, !tbaa !7
  %7 = tail call i64 @fwrite(ptr nonnull @.str.10, i64 28, i64 1, ptr %6) #29
  tail call void @exit(i32 noundef 1) #30
  unreachable

8:                                                ; preds = %0
  ret ptr %3
}

; Function Attrs: nounwind optsize uwtable
define internal void @FindStates(ptr nocapture noundef %0) #0 {
  store ptr null, ptr @current, align 8, !tbaa !7
  store ptr @current, ptr @currentend, align 8, !tbaa !7
  store ptr null, ptr @basis, align 8, !tbaa !7
  store ptr @basis, ptr @basisend, align 8, !tbaa !7
  tail call void @Configtable_init() #32
  %2 = getelementptr inbounds %struct.lemon, ptr %0, i64 0, i32 14
  %3 = load ptr, ptr %2, align 8, !tbaa !70
  %4 = icmp eq ptr %3, null
  br i1 %4, label %18, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @Symbol_find(ptr noundef nonnull %3) #32
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %20

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.lemon, ptr %0, i64 0, i32 32
  %10 = load ptr, ptr %9, align 8, !tbaa !71
  %11 = getelementptr inbounds %struct.lemon, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !72
  %13 = load ptr, ptr %12, align 8, !tbaa !60
  %14 = load ptr, ptr %13, align 8, !tbaa !73
  tail call void (ptr, i32, ptr, ...) @ErrorMsg(ptr noundef %10, i32 noundef 0, ptr noundef nonnull @.str.2, ptr noundef nonnull %3, ptr noundef %14) #32
  %15 = getelementptr inbounds %struct.lemon, ptr %0, i64 0, i32 7
  %16 = load i32, ptr %15, align 8, !tbaa !74
  %17 = add nsw i32 %16, 1
  store i32 %17, ptr %15, align 8, !tbaa !74
  br label %24

18:                                               ; preds = %1
  %19 = getelementptr inbounds %struct.lemon, ptr %0, i64 0, i32 1
  br label %24

20:                                               ; preds = %5
  %21 = getelementptr inbounds %struct.lemon, ptr %0, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !7
  %23 = icmp eq ptr %22, null
  br i1 %23, label %62, label %28

24:                                               ; preds = %18, %8
  %25 = phi ptr [ %19, %18 ], [ %11, %8 ]
  %26 = load ptr, ptr %25, align 8, !tbaa !7
  %27 = load ptr, ptr %26, align 8, !tbaa !60
  br label %28

28:                                               ; preds = %24, %20
  %29 = phi ptr [ %6, %20 ], [ %27, %24 ]
  %30 = phi ptr [ %22, %20 ], [ %26, %24 ]
  %31 = getelementptr inbounds %struct.lemon, ptr %0, i64 0, i32 32
  %32 = getelementptr inbounds %struct.lemon, ptr %0, i64 0, i32 7
  br label %33

33:                                               ; preds = %58, %28
  %34 = phi ptr [ %30, %28 ], [ %60, %58 ]
  %35 = getelementptr inbounds %struct.rule, ptr %34, i64 0, i32 4
  %36 = load i32, ptr %35, align 8, !tbaa !42
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %58

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.rule, ptr %34, i64 0, i32 5
  br label %40

40:                                               ; preds = %53, %38
  %41 = phi i32 [ %36, %38 ], [ %54, %53 ]
  %42 = phi i64 [ 0, %38 ], [ %55, %53 ]
  %43 = load ptr, ptr %39, align 8, !tbaa !43
  %44 = getelementptr inbounds ptr, ptr %43, i64 %42
  %45 = load ptr, ptr %44, align 8, !tbaa !7
  %46 = icmp eq ptr %45, %29
  br i1 %46, label %47, label %53

47:                                               ; preds = %40
  %48 = load ptr, ptr %31, align 8, !tbaa !71
  %49 = load ptr, ptr %29, align 8, !tbaa !73
  tail call void (ptr, i32, ptr, ...) @ErrorMsg(ptr noundef %48, i32 noundef 0, ptr noundef nonnull @.str.3, ptr noundef %49) #32
  %50 = load i32, ptr %32, align 8, !tbaa !74
  %51 = add nsw i32 %50, 1
  store i32 %51, ptr %32, align 8, !tbaa !74
  %52 = load i32, ptr %35, align 8, !tbaa !42
  br label %53

53:                                               ; preds = %47, %40
  %54 = phi i32 [ %41, %40 ], [ %52, %47 ]
  %55 = add nuw nsw i64 %42, 1
  %56 = sext i32 %54 to i64
  %57 = icmp slt i64 %55, %56
  br i1 %57, label %40, label %58, !llvm.loop !75

58:                                               ; preds = %53, %33
  %59 = getelementptr inbounds %struct.rule, ptr %34, i64 0, i32 13
  %60 = load ptr, ptr %59, align 8, !tbaa !7
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %33, !llvm.loop !76

62:                                               ; preds = %58, %20
  %63 = phi ptr [ %6, %20 ], [ %29, %58 ]
  %64 = getelementptr inbounds %struct.symbol, ptr %63, i64 0, i32 3
  %65 = load ptr, ptr %64, align 8, !tbaa !7
  %66 = icmp eq ptr %65, null
  br i1 %66, label %76, label %67

67:                                               ; preds = %67, %62
  %68 = phi ptr [ %74, %67 ], [ %65, %62 ]
  %69 = getelementptr inbounds %struct.rule, ptr %68, i64 0, i32 2
  store i32 1, ptr %69, align 8, !tbaa !77
  %70 = tail call ptr @Configlist_addbasis(ptr noundef nonnull %68, i32 noundef 0) #32
  %71 = getelementptr inbounds %struct.config, ptr %70, i64 0, i32 2
  %72 = load ptr, ptr %71, align 8, !tbaa !78
  store i8 1, ptr %72, align 1, !tbaa !64
  %73 = getelementptr inbounds %struct.rule, ptr %68, i64 0, i32 12
  %74 = load ptr, ptr %73, align 8, !tbaa !7
  %75 = icmp eq ptr %74, null
  br i1 %75, label %76, label %67, !llvm.loop !80

76:                                               ; preds = %67, %62
  %77 = tail call ptr @getstate(ptr noundef %0) #32
  ret void
}

; Function Attrs: nounwind optsize memory(readwrite, argmem: write) uwtable
define internal void @Configtable_init() #7 {
  %1 = load ptr, ptr @x4a, align 8, !tbaa !7
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %21

3:                                                ; preds = %0
  %4 = tail call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #33
  store ptr %4, ptr @x4a, align 8, !tbaa !7
  %5 = icmp eq ptr %4, null
  br i1 %5, label %21, label %6

6:                                                ; preds = %3
  store i32 64, ptr %4, align 8, !tbaa !81
  %7 = getelementptr inbounds %struct.s_x4, ptr %4, i64 0, i32 1
  store i32 0, ptr %7, align 4, !tbaa !83
  %8 = tail call noalias dereferenceable_or_null(2048) ptr @malloc(i64 noundef 2048) #33
  %9 = getelementptr inbounds %struct.s_x4, ptr %4, i64 0, i32 2
  store ptr %8, ptr %9, align 8, !tbaa !84
  %10 = icmp eq ptr %8, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %6
  tail call void @free(ptr noundef nonnull %4) #34
  store ptr null, ptr @x4a, align 8, !tbaa !7
  br label %21

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.s_x4node, ptr %8, i64 64
  %14 = getelementptr inbounds %struct.s_x4, ptr %4, i64 0, i32 3
  store ptr %13, ptr %14, align 8, !tbaa !85
  br label %15

15:                                               ; preds = %15, %12
  %16 = phi i64 [ 0, %12 ], [ %19, %15 ]
  %17 = load ptr, ptr %14, align 8, !tbaa !85
  %18 = getelementptr inbounds ptr, ptr %17, i64 %16
  store ptr null, ptr %18, align 8, !tbaa !7
  %19 = add nuw nsw i64 %16, 1
  %20 = icmp eq i64 %19, 64
  br i1 %20, label %21, label %15, !llvm.loop !86

21:                                               ; preds = %15, %11, %3, %0
  ret void
}

; Function Attrs: nofree nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal ptr @Symbol_find(ptr nocapture noundef readonly %0) #8 {
  %2 = load ptr, ptr @x2a, align 8, !tbaa !7
  %3 = icmp eq ptr %2, null
  br i1 %3, label %40, label %4

4:                                                ; preds = %1
  %5 = load i8, ptr %0, align 1, !tbaa !64
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
  %15 = load i8, ptr %12, align 1, !tbaa !64
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %7, !llvm.loop !87

17:                                               ; preds = %7, %4
  %18 = phi i32 [ 0, %4 ], [ %14, %7 ]
  %19 = load i32, ptr %2, align 8, !tbaa !88
  %20 = add nsw i32 %19, -1
  %21 = and i32 %20, %18
  %22 = getelementptr inbounds %struct.s_x4, ptr %2, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !90
  %24 = sext i32 %21 to i64
  %25 = getelementptr inbounds ptr, ptr %23, i64 %24
  %26 = load ptr, ptr %25, align 8, !tbaa !7
  %27 = icmp eq ptr %26, null
  br i1 %27, label %40, label %28

28:                                               ; preds = %34, %17
  %29 = phi ptr [ %36, %34 ], [ %26, %17 ]
  %30 = getelementptr inbounds %struct.s_x3node, ptr %29, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !91
  %32 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %31, ptr noundef nonnull dereferenceable(1) %0) #35
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.s_x3node, ptr %29, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !7
  %37 = icmp eq ptr %36, null
  br i1 %37, label %40, label %28, !llvm.loop !93

38:                                               ; preds = %28
  %.lcssa = phi ptr [ %29, %28 ]
  %39 = load ptr, ptr %.lcssa, align 8, !tbaa !94
  br label %40

40:                                               ; preds = %38, %34, %17, %1
  %41 = phi ptr [ null, %1 ], [ %39, %38 ], [ null, %17 ], [ null, %34 ]
  ret ptr %41
}

; Function Attrs: nofree nounwind optsize uwtable
define internal void @ErrorMsg(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, ...) #9 {
  %4 = alloca [10000 x i8], align 16
  %5 = alloca [40 x i8], align 16
  %6 = alloca [1 x %struct.s_x4], align 16
  call void @llvm.lifetime.start.p0(i64 10000, ptr nonnull %4) #36
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #36
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #36
  call void @llvm.va_start(ptr nonnull %6)
  %7 = icmp sgt i32 %1, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %3
  %9 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef 20, ptr noundef %0, i32 noundef %1) #34
  br label %12

10:                                               ; preds = %3
  %11 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) @.str.8, i32 noundef 20, ptr noundef %0) #34
  br label %12

12:                                               ; preds = %10, %8
  %13 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %5) #35
  %14 = trunc i64 %13 to i32
  %15 = call i32 @vsprintf(ptr noundef nonnull %4, ptr noundef %2, ptr noundef nonnull %6) #34
  call void @llvm.va_end(ptr nonnull %6)
  %16 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #35
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
  %26 = load i8, ptr %25, align 1, !tbaa !64
  %27 = icmp eq i8 %26, 10
  br i1 %27, label %28, label %30

28:                                               ; preds = %21
  store i8 0, ptr %25, align 1, !tbaa !64
  %29 = icmp ugt i64 %22, 1
  br i1 %29, label %21, label %30, !llvm.loop !95

30:                                               ; preds = %28, %21, %12
  %31 = load i8, ptr %4, align 16, !tbaa !64
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
  %47 = load i8, ptr %46, align 1, !tbaa !64
  %48 = trunc i64 %44 to i32
  switch i8 %47, label %55 [
    i8 9, label %49
    i8 10, label %50
    i8 0, label %61
    i8 45, label %51
  ]

49:                                               ; preds = %43
  store i8 32, ptr %46, align 1, !tbaa !64
  br label %55

50:                                               ; preds = %43
  %.lcssa1 = phi ptr [ %46, %43 ]
  %.lcssa = phi i32 [ %48, %43 ]
  store i8 32, ptr %.lcssa1, align 1, !tbaa !64
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
  br i1 %60, label %61, label %43, !llvm.loop !96

61:                                               ; preds = %55, %50, %43, %40
  %62 = phi i32 [ %.lcssa, %50 ], [ 0, %40 ], [ %48, %43 ], [ %58, %55 ]
  %63 = add i32 %62, %42
  %64 = sext i32 %63 to i64
  br label %65

65:                                               ; preds = %65, %61
  %66 = phi i64 [ %70, %65 ], [ %64, %61 ]
  %67 = getelementptr inbounds [10000 x i8], ptr %4, i64 0, i64 %66
  %68 = load i8, ptr %67, align 1, !tbaa !64
  %69 = icmp eq i8 %68, 32
  %70 = add i64 %66, 1
  br i1 %69, label %65, label %71, !llvm.loop !97

71:                                               ; preds = %65
  %.lcssa2 = phi i64 [ %66, %65 ]
  %72 = trunc i64 %.lcssa2 to i32
  %73 = load ptr, ptr @stdout, align 8, !tbaa !7
  %74 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %73, ptr noundef nonnull @.str.9, ptr noundef nonnull %5, i32 noundef %62, ptr noundef nonnull %41) #32
  %75 = shl i64 %.lcssa2, 32
  %76 = ashr exact i64 %75, 32
  %77 = getelementptr inbounds [10000 x i8], ptr %4, i64 0, i64 %76
  %78 = load i8, ptr %77, align 1, !tbaa !64
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %80, label %40, !llvm.loop !98

80:                                               ; preds = %71, %30
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #36
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #36
  call void @llvm.lifetime.end.p0(i64 10000, ptr nonnull %4) #36
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @Configlist_addbasis(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.config, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %3) #36
  store ptr %0, ptr %3, align 8, !tbaa !99
  %4 = getelementptr inbounds %struct.config, ptr %3, i64 0, i32 1
  store i32 %1, ptr %4, align 8, !tbaa !100
  %5 = call ptr @Configtable_find(ptr noundef nonnull %3) #32
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %18

7:                                                ; preds = %2
  %8 = tail call ptr @newconfig() #32
  store ptr %0, ptr %8, align 8, !tbaa !99
  %9 = getelementptr inbounds %struct.config, ptr %8, i64 0, i32 1
  store i32 %1, ptr %9, align 8, !tbaa !100
  %10 = tail call ptr @SetNew() #32
  %11 = getelementptr inbounds %struct.config, ptr %8, i64 0, i32 2
  store ptr %10, ptr %11, align 8, !tbaa !78
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
  %17 = tail call i32 @Configtable_insert(ptr noundef nonnull %8) #32, !range !101
  br label %18

18:                                               ; preds = %7, %2
  %19 = phi ptr [ %8, %7 ], [ %5, %2 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3) #36
  ret ptr %19
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @getstate(ptr nocapture noundef %0) #0 {
  %2 = load ptr, ptr @current, align 8, !tbaa !7
  %3 = getelementptr inbounds %struct.config, ptr %2, i64 0, i32 8
  %4 = tail call fastcc ptr @msort(ptr noundef %2, ptr noundef nonnull %3, ptr noundef nonnull @Configcmp) #32
  store ptr null, ptr @basis, align 8, !tbaa !7
  store ptr null, ptr @basisend, align 8, !tbaa !7
  %5 = tail call ptr @State_find(ptr noundef %4) #32
  %6 = icmp eq ptr %5, null
  br i1 %6, label %52, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr %5, align 8, !tbaa !7
  %9 = icmp ne ptr %4, null
  %10 = icmp ne ptr %8, null
  %11 = select i1 %9, i1 %10, i1 false
  br i1 %11, label %12, label %50

12:                                               ; preds = %7
  %13 = load ptr, ptr @plink_freelist, align 8, !tbaa !7
  br label %14

14:                                               ; preds = %41, %12
  %15 = phi ptr [ %46, %41 ], [ %8, %12 ]
  %16 = phi ptr [ %44, %41 ], [ %4, %12 ]
  %17 = phi ptr [ %42, %41 ], [ %13, %12 ]
  %18 = getelementptr inbounds %struct.config, ptr %15, i64 0, i32 4
  %19 = getelementptr inbounds %struct.config, ptr %16, i64 0, i32 4
  %20 = load ptr, ptr %19, align 8, !tbaa !102
  %21 = icmp eq ptr %20, null
  br i1 %21, label %30, label %22

22:                                               ; preds = %14
  %23 = load ptr, ptr %18, align 8, !tbaa !7
  br label %24

24:                                               ; preds = %24, %22
  %25 = phi ptr [ %26, %24 ], [ %23, %22 ]
  %26 = phi ptr [ %28, %24 ], [ %20, %22 ]
  %27 = getelementptr inbounds %struct.plink, ptr %26, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !103
  store ptr %25, ptr %27, align 8, !tbaa !103
  store ptr %26, ptr %18, align 8, !tbaa !7
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %24, !llvm.loop !105

30:                                               ; preds = %24, %14
  %31 = getelementptr inbounds %struct.config, ptr %16, i64 0, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !106
  %33 = icmp eq ptr %32, null
  br i1 %33, label %41, label %34

34:                                               ; preds = %34, %30
  %35 = phi ptr [ %38, %34 ], [ %32, %30 ]
  %36 = phi ptr [ %35, %34 ], [ %17, %30 ]
  %37 = getelementptr inbounds %struct.plink, ptr %35, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !103
  store ptr %36, ptr %37, align 8, !tbaa !103
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %34, !llvm.loop !107

40:                                               ; preds = %34
  %.lcssa = phi ptr [ %35, %34 ]
  store ptr %.lcssa, ptr @plink_freelist, align 8, !tbaa !7
  br label %41

41:                                               ; preds = %40, %30
  %42 = phi ptr [ %17, %30 ], [ %.lcssa, %40 ]
  %43 = getelementptr inbounds %struct.config, ptr %16, i64 0, i32 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %31, i8 0, i64 16, i1 false)
  %44 = load ptr, ptr %43, align 8, !tbaa !108
  %45 = getelementptr inbounds %struct.config, ptr %15, i64 0, i32 8
  %46 = load ptr, ptr %45, align 8, !tbaa !7
  %47 = icmp ne ptr %44, null
  %48 = icmp ne ptr %46, null
  %49 = select i1 %47, i1 %48, i1 false
  br i1 %49, label %14, label %50, !llvm.loop !109

50:                                               ; preds = %41, %7
  %51 = load ptr, ptr @current, align 8, !tbaa !7
  store ptr null, ptr @current, align 8, !tbaa !7
  store ptr null, ptr @currentend, align 8, !tbaa !7
  tail call void @Configlist_eat(ptr noundef %51) #32
  br label %69

52:                                               ; preds = %1
  tail call void @Configlist_closure(ptr noundef %0) #32
  %53 = load ptr, ptr @current, align 8, !tbaa !7
  %54 = getelementptr inbounds %struct.config, ptr %53, i64 0, i32 7
  %55 = tail call fastcc ptr @msort(ptr noundef %53, ptr noundef nonnull %54, ptr noundef nonnull @Configcmp) #32
  store ptr null, ptr @current, align 8, !tbaa !7
  store ptr null, ptr @currentend, align 8, !tbaa !7
  %56 = tail call ptr @State_new() #32
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %61

58:                                               ; preds = %52
  %59 = load ptr, ptr @stderr, align 8, !tbaa !7
  %60 = tail call i64 @fwrite(ptr nonnull @.str.10, i64 28, i64 1, ptr %59) #29
  tail call void @exit(i32 noundef 1) #30
  unreachable

61:                                               ; preds = %52
  store ptr %4, ptr %56, align 8, !tbaa !110
  %62 = getelementptr inbounds %struct.state, ptr %56, i64 0, i32 1
  store ptr %55, ptr %62, align 8, !tbaa !112
  %63 = getelementptr inbounds %struct.lemon, ptr %0, i64 0, i32 2
  %64 = load i32, ptr %63, align 8, !tbaa !113
  %65 = add nsw i32 %64, 1
  store i32 %65, ptr %63, align 8, !tbaa !113
  %66 = getelementptr inbounds %struct.state, ptr %56, i64 0, i32 2
  store i32 %64, ptr %66, align 8, !tbaa !114
  %67 = getelementptr inbounds %struct.state, ptr %56, i64 0, i32 3
  store ptr null, ptr %67, align 8, !tbaa !115
  %68 = tail call i32 @State_insert(ptr noundef nonnull %56, ptr noundef %4) #32, !range !101
  tail call void @buildshifts(ptr noundef %0, ptr noundef nonnull %56) #32
  br label %69

69:                                               ; preds = %61, %50
  %70 = phi ptr [ %5, %50 ], [ %56, %61 ]
  ret ptr %70
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @Configcmp(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #10 {
  %3 = load ptr, ptr %0, align 8, !tbaa !99
  %4 = getelementptr inbounds %struct.rule, ptr %3, i64 0, i32 10
  %5 = load i32, ptr %4, align 8, !tbaa !116
  %6 = load ptr, ptr %1, align 8, !tbaa !99
  %7 = getelementptr inbounds %struct.rule, ptr %6, i64 0, i32 10
  %8 = load i32, ptr %7, align 8, !tbaa !116
  %9 = sub nsw i32 %5, %8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.config, ptr %0, i64 0, i32 1
  %13 = load i32, ptr %12, align 8, !tbaa !100
  %14 = getelementptr inbounds %struct.config, ptr %1, i64 0, i32 1
  %15 = load i32, ptr %14, align 8, !tbaa !100
  %16 = sub nsw i32 %13, %15
  br label %17

17:                                               ; preds = %11, %2
  %18 = phi i32 [ %16, %11 ], [ %9, %2 ]
  ret i32 %18
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc ptr @msort(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = alloca [30 x ptr], align 16
  call void @llvm.lifetime.start.p0(i64 240, ptr nonnull %4) #36
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
  %23 = tail call fastcc ptr @merge(ptr noundef %18, ptr noundef nonnull %20, ptr noundef %2, i32 noundef %9) #32
  store ptr null, ptr %19, align 8, !tbaa !7
  %24 = add nuw nsw i64 %17, 1
  %25 = icmp eq i64 %24, 29
  br i1 %25, label %26, label %16, !llvm.loop !117

26:                                               ; preds = %22, %16
  %27 = phi ptr [ %23, %22 ], [ %18, %16 ]
  %28 = phi i64 [ 29, %22 ], [ %17, %16 ]
  %29 = and i64 %28, 4294967295
  %30 = getelementptr inbounds [30 x ptr], ptr %4, i64 0, i64 %29
  store ptr %27, ptr %30, align 8, !tbaa !7
  %31 = icmp eq ptr %15, null
  br i1 %31, label %32, label %10, !llvm.loop !118

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
  %40 = tail call fastcc ptr @merge(ptr noundef %35, ptr noundef nonnull %37, ptr noundef %2, i32 noundef %9) #32
  br label %41

41:                                               ; preds = %39, %33
  %42 = phi ptr [ %40, %39 ], [ %35, %33 ]
  %43 = add nuw nsw i64 %34, 1
  %44 = icmp eq i64 %43, 30
  br i1 %44, label %45, label %33, !llvm.loop !119

45:                                               ; preds = %41
  %.lcssa = phi ptr [ %42, %41 ]
  call void @llvm.lifetime.end.p0(i64 240, ptr nonnull %4) #36
  ret ptr %.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal ptr @State_find(ptr noundef readonly %0) #11 {
  %2 = load ptr, ptr @x3a, align 8, !tbaa !7
  %3 = icmp eq ptr %2, null
  br i1 %3, label %44, label %4

4:                                                ; preds = %1
  %5 = icmp eq ptr %0, null
  br i1 %5, label %21, label %6

6:                                                ; preds = %6, %4
  %7 = phi i32 [ %17, %6 ], [ 0, %4 ]
  %8 = phi ptr [ %19, %6 ], [ %0, %4 ]
  %9 = mul nsw i32 %7, 571
  %10 = load ptr, ptr %8, align 8, !tbaa !99
  %11 = getelementptr inbounds %struct.rule, ptr %10, i64 0, i32 10
  %12 = load i32, ptr %11, align 8, !tbaa !116
  %13 = mul nsw i32 %12, 37
  %14 = add nsw i32 %13, %9
  %15 = getelementptr inbounds %struct.config, ptr %8, i64 0, i32 1
  %16 = load i32, ptr %15, align 8, !tbaa !100
  %17 = add nsw i32 %14, %16
  %18 = getelementptr inbounds %struct.config, ptr %8, i64 0, i32 8
  %19 = load ptr, ptr %18, align 8, !tbaa !108
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %6, !llvm.loop !120

21:                                               ; preds = %6, %4
  %22 = phi i32 [ 0, %4 ], [ %17, %6 ]
  %23 = load i32, ptr %2, align 8, !tbaa !121
  %24 = add nsw i32 %23, -1
  %25 = and i32 %24, %22
  %26 = getelementptr inbounds %struct.s_x4, ptr %2, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !123
  %28 = sext i32 %25 to i64
  %29 = getelementptr inbounds ptr, ptr %27, i64 %28
  %30 = load ptr, ptr %29, align 8, !tbaa !7
  %31 = icmp eq ptr %30, null
  br i1 %31, label %44, label %32

32:                                               ; preds = %38, %21
  %33 = phi ptr [ %40, %38 ], [ %30, %21 ]
  %34 = getelementptr inbounds %struct.s_x3node, ptr %33, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !124
  %36 = tail call i32 @statecmp(ptr noundef %35, ptr noundef %0) #32
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.s_x3node, ptr %33, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !7
  %41 = icmp eq ptr %40, null
  br i1 %41, label %44, label %32, !llvm.loop !126

42:                                               ; preds = %32
  %.lcssa = phi ptr [ %33, %32 ]
  %43 = load ptr, ptr %.lcssa, align 8, !tbaa !127
  br label %44

44:                                               ; preds = %42, %38, %21, %1
  %45 = phi ptr [ null, %1 ], [ %43, %42 ], [ null, %21 ], [ null, %38 ]
  ret ptr %45
}

; Function Attrs: nounwind optsize uwtable
define internal void @Configlist_eat(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %17, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr @freelist, align 8, !tbaa !7
  br label %5

5:                                                ; preds = %14, %3
  %6 = phi ptr [ %9, %14 ], [ %0, %3 ]
  %7 = phi ptr [ %6, %14 ], [ %4, %3 ]
  %8 = getelementptr inbounds %struct.config, ptr %6, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !128
  %10 = getelementptr inbounds %struct.config, ptr %6, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !78
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %5
  tail call void @free(ptr noundef nonnull %11) #34
  br label %14

14:                                               ; preds = %13, %5
  store ptr %7, ptr %8, align 8, !tbaa !128
  %15 = icmp eq ptr %9, null
  br i1 %15, label %16, label %5, !llvm.loop !129

16:                                               ; preds = %14
  %.lcssa = phi ptr [ %6, %14 ]
  store ptr %.lcssa, ptr @freelist, align 8, !tbaa !7
  br label %17

17:                                               ; preds = %16, %1
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @Configlist_closure(ptr nocapture noundef %0) #0 {
  %2 = load ptr, ptr @current, align 8, !tbaa !7
  %3 = icmp eq ptr %2, null
  br i1 %3, label %126, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.lemon, ptr %0, i64 0, i32 8
  %6 = getelementptr inbounds %struct.lemon, ptr %0, i64 0, i32 32
  %7 = getelementptr inbounds %struct.lemon, ptr %0, i64 0, i32 7
  br label %8

8:                                                ; preds = %122, %4
  %9 = phi ptr [ %2, %4 ], [ %124, %122 ]
  %10 = load ptr, ptr %9, align 8, !tbaa !99
  %11 = getelementptr inbounds %struct.config, ptr %9, i64 0, i32 1
  %12 = load i32, ptr %11, align 8, !tbaa !100
  %13 = getelementptr inbounds %struct.rule, ptr %10, i64 0, i32 4
  %14 = load i32, ptr %13, align 8, !tbaa !42
  %15 = icmp slt i32 %12, %14
  br i1 %15, label %16, label %122

16:                                               ; preds = %8
  %17 = getelementptr inbounds %struct.rule, ptr %10, i64 0, i32 5
  %18 = load ptr, ptr %17, align 8, !tbaa !43
  %19 = sext i32 %12 to i64
  %20 = getelementptr inbounds ptr, ptr %18, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !7
  %22 = getelementptr inbounds %struct.symbol, ptr %21, i64 0, i32 2
  %23 = load i32, ptr %22, align 4, !tbaa !44
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %25, label %122

25:                                               ; preds = %16
  %26 = getelementptr inbounds %struct.symbol, ptr %21, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !7
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %41

29:                                               ; preds = %25
  %30 = load ptr, ptr %5, align 8, !tbaa !130
  %31 = icmp eq ptr %21, %30
  br i1 %31, label %122, label %32

32:                                               ; preds = %29
  %33 = load ptr, ptr %6, align 8, !tbaa !71
  %34 = getelementptr inbounds %struct.rule, ptr %10, i64 0, i32 7
  %35 = load i32, ptr %34, align 8, !tbaa !131
  %36 = load ptr, ptr %21, align 8, !tbaa !73
  tail call void (ptr, i32, ptr, ...) @ErrorMsg(ptr noundef %33, i32 noundef %35, ptr noundef nonnull @.str.6, ptr noundef %36) #32
  %37 = load i32, ptr %7, align 8, !tbaa !74
  %38 = add nsw i32 %37, 1
  store i32 %38, ptr %7, align 8, !tbaa !74
  %39 = load ptr, ptr %26, align 8, !tbaa !7
  %40 = icmp eq ptr %39, null
  br i1 %40, label %122, label %41

41:                                               ; preds = %32, %25
  %42 = phi ptr [ %39, %32 ], [ %27, %25 ]
  %43 = getelementptr inbounds %struct.config, ptr %9, i64 0, i32 3
  br label %44

44:                                               ; preds = %118, %41
  %45 = phi ptr [ %42, %41 ], [ %120, %118 ]
  %46 = tail call ptr @Configlist_add(ptr noundef nonnull %45, i32 noundef 0) #32
  %47 = getelementptr inbounds %struct.config, ptr %46, i64 0, i32 2
  %48 = load i32, ptr @size, align 4
  %49 = icmp sgt i32 %48, 0
  %50 = zext i32 %48 to i64
  br label %51

51:                                               ; preds = %106, %44
  %52 = phi i64 [ %53, %106 ], [ %19, %44 ]
  %53 = add nsw i64 %52, 1
  %54 = load i32, ptr %13, align 8, !tbaa !42
  %55 = sext i32 %54 to i64
  %56 = icmp slt i64 %53, %55
  br i1 %56, label %57, label %110

57:                                               ; preds = %51
  %58 = load ptr, ptr %17, align 8, !tbaa !43
  %59 = getelementptr inbounds ptr, ptr %58, i64 %53
  %60 = load ptr, ptr %59, align 8, !tbaa !7
  %61 = getelementptr inbounds %struct.symbol, ptr %60, i64 0, i32 2
  %62 = load i32, ptr %61, align 4, !tbaa !44
  switch i32 %62, label %89 [
    i32 0, label %69
    i32 2, label %63
  ]

63:                                               ; preds = %57
  %.lcssa4 = phi i64 [ %53, %57 ]
  %.lcssa1 = phi ptr [ %60, %57 ]
  %64 = getelementptr inbounds %struct.symbol, ptr %.lcssa1, i64 0, i32 14
  %65 = load i32, ptr %64, align 4, !tbaa !46
  %66 = icmp sgt i32 %65, 0
  br i1 %66, label %67, label %110

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.symbol, ptr %.lcssa1, i64 0, i32 15
  br label %75

69:                                               ; preds = %57
  %.lcssa3 = phi i64 [ %53, %57 ]
  %.lcssa = phi ptr [ %60, %57 ]
  %70 = load ptr, ptr %47, align 8, !tbaa !78
  %71 = getelementptr inbounds %struct.symbol, ptr %.lcssa, i64 0, i32 1
  %72 = load i32, ptr %71, align 8, !tbaa !63
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8, ptr %70, i64 %73
  store i8 1, ptr %74, align 1, !tbaa !64
  br label %110

75:                                               ; preds = %75, %67
  %76 = phi i64 [ 0, %67 ], [ %85, %75 ]
  %77 = load ptr, ptr %47, align 8, !tbaa !78
  %78 = load ptr, ptr %68, align 8, !tbaa !47
  %79 = getelementptr inbounds ptr, ptr %78, i64 %76
  %80 = load ptr, ptr %79, align 8, !tbaa !7
  %81 = getelementptr inbounds %struct.symbol, ptr %80, i64 0, i32 1
  %82 = load i32, ptr %81, align 8, !tbaa !63
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8, ptr %77, i64 %83
  store i8 1, ptr %84, align 1, !tbaa !64
  %85 = add nuw nsw i64 %76, 1
  %86 = load i32, ptr %64, align 4, !tbaa !46
  %87 = sext i32 %86 to i64
  %88 = icmp slt i64 %85, %87
  br i1 %88, label %75, label %110, !llvm.loop !132

89:                                               ; preds = %57
  %90 = load ptr, ptr %47, align 8, !tbaa !78
  %91 = getelementptr inbounds %struct.symbol, ptr %60, i64 0, i32 7
  %92 = load ptr, ptr %91, align 8, !tbaa !58
  br i1 %49, label %93, label %106

93:                                               ; preds = %103, %89
  %94 = phi i64 [ %104, %103 ], [ 0, %89 ]
  %95 = getelementptr inbounds i8, ptr %92, i64 %94
  %96 = load i8, ptr %95, align 1, !tbaa !64
  %97 = icmp eq i8 %96, 0
  br i1 %97, label %103, label %98

98:                                               ; preds = %93
  %99 = getelementptr inbounds i8, ptr %90, i64 %94
  %100 = load i8, ptr %99, align 1, !tbaa !64
  %101 = icmp eq i8 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %98
  store i8 1, ptr %99, align 1, !tbaa !64
  br label %103

103:                                              ; preds = %102, %98, %93
  %104 = add nuw nsw i64 %94, 1
  %105 = icmp eq i64 %104, %50
  br i1 %105, label %106, label %93, !llvm.loop !66

106:                                              ; preds = %103, %89
  %107 = getelementptr inbounds %struct.symbol, ptr %60, i64 0, i32 8
  %108 = load i32, ptr %107, align 8, !tbaa !55
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %51, !llvm.loop !133

110:                                              ; preds = %106, %75, %69, %63, %51
  %.lcssa2 = phi i64 [ %53, %106 ], [ %.lcssa4, %75 ], [ %.lcssa3, %69 ], [ %.lcssa4, %63 ], [ %53, %51 ]
  %111 = trunc i64 %.lcssa2 to i32
  %112 = load i32, ptr %13, align 8, !tbaa !42
  %113 = icmp eq i32 %112, %111
  br i1 %113, label %114, label %118

114:                                              ; preds = %110
  %115 = tail call ptr @Plink_new() #32
  %116 = load ptr, ptr %43, align 8, !tbaa !7
  %117 = getelementptr inbounds %struct.plink, ptr %115, i64 0, i32 1
  store ptr %116, ptr %117, align 8, !tbaa !103
  store ptr %115, ptr %43, align 8, !tbaa !7
  store ptr %46, ptr %115, align 8, !tbaa !134
  br label %118

118:                                              ; preds = %114, %110
  %119 = getelementptr inbounds %struct.rule, ptr %45, i64 0, i32 12
  %120 = load ptr, ptr %119, align 8, !tbaa !7
  %121 = icmp eq ptr %120, null
  br i1 %121, label %122, label %44, !llvm.loop !135

122:                                              ; preds = %118, %32, %29, %16, %8
  %123 = getelementptr inbounds %struct.config, ptr %9, i64 0, i32 7
  %124 = load ptr, ptr %123, align 8, !tbaa !7
  %125 = icmp eq ptr %124, null
  br i1 %125, label %126, label %8, !llvm.loop !136

126:                                              ; preds = %122, %1
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal noalias ptr @State_new() #0 {
  %1 = tail call noalias dereferenceable_or_null(56) ptr @calloc(i64 noundef 1, i64 noundef 56) #28
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %6

3:                                                ; preds = %0
  %4 = load ptr, ptr @stderr, align 8, !tbaa !7
  %5 = tail call i64 @fwrite(ptr nonnull @.str.10, i64 28, i64 1, ptr %4) #29
  tail call void @exit(i32 noundef 1) #30
  unreachable

6:                                                ; preds = %0
  ret ptr %1
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @State_insert(ptr noundef %0, ptr noundef %1) #0 {
  %3 = load ptr, ptr @x3a, align 8, !tbaa !7
  %4 = icmp eq ptr %3, null
  br i1 %4, label %140, label %5

5:                                                ; preds = %2
  %6 = icmp eq ptr %1, null
  br i1 %6, label %22, label %7

7:                                                ; preds = %7, %5
  %8 = phi i32 [ %18, %7 ], [ 0, %5 ]
  %9 = phi ptr [ %20, %7 ], [ %1, %5 ]
  %10 = mul nsw i32 %8, 571
  %11 = load ptr, ptr %9, align 8, !tbaa !99
  %12 = getelementptr inbounds %struct.rule, ptr %11, i64 0, i32 10
  %13 = load i32, ptr %12, align 8, !tbaa !116
  %14 = mul nsw i32 %13, 37
  %15 = add nsw i32 %14, %10
  %16 = getelementptr inbounds %struct.config, ptr %9, i64 0, i32 1
  %17 = load i32, ptr %16, align 8, !tbaa !100
  %18 = add nsw i32 %15, %17
  %19 = getelementptr inbounds %struct.config, ptr %9, i64 0, i32 8
  %20 = load ptr, ptr %19, align 8, !tbaa !108
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %7, !llvm.loop !120

22:                                               ; preds = %7, %5
  %23 = phi i32 [ 0, %5 ], [ %18, %7 ]
  %24 = load i32, ptr %3, align 8, !tbaa !121
  %25 = add nsw i32 %24, -1
  %26 = and i32 %25, %23
  %27 = getelementptr inbounds %struct.s_x4, ptr %3, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !123
  %29 = sext i32 %26 to i64
  %30 = getelementptr inbounds ptr, ptr %28, i64 %29
  %31 = load ptr, ptr %30, align 8, !tbaa !7
  %32 = icmp eq ptr %31, null
  br i1 %32, label %43, label %37

33:                                               ; preds = %37
  %34 = getelementptr inbounds %struct.s_x3node, ptr %38, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !7
  %36 = icmp eq ptr %35, null
  br i1 %36, label %43, label %37, !llvm.loop !137

37:                                               ; preds = %33, %22
  %38 = phi ptr [ %35, %33 ], [ %31, %22 ]
  %39 = getelementptr inbounds %struct.s_x3node, ptr %38, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !124
  %41 = tail call i32 @statecmp(ptr noundef %40, ptr noundef %1) #32
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %140, label %33

43:                                               ; preds = %33, %22
  %44 = getelementptr inbounds %struct.s_x4, ptr %3, i64 0, i32 1
  %45 = load i32, ptr %44, align 4, !tbaa !138
  %46 = icmp slt i32 %45, %24
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.s_x4, ptr %3, i64 0, i32 2
  %49 = load ptr, ptr %48, align 8, !tbaa !139
  br label %119

50:                                               ; preds = %43
  %51 = shl nsw i32 %24, 1
  %52 = sext i32 %51 to i64
  %53 = mul nsw i64 %52, 40
  %54 = tail call noalias ptr @malloc(i64 noundef %53) #33
  %55 = icmp eq ptr %54, null
  br i1 %55, label %140, label %56

56:                                               ; preds = %50
  %57 = getelementptr %struct.s_x3node, ptr %54, i64 %52
  %58 = icmp sgt i32 %24, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %56
  %60 = tail call i32 @llvm.smax.i32(i32 %51, i32 1)
  %61 = zext i32 %60 to i64
  %62 = shl nuw nsw i64 %61, 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %57, i8 0, i64 %62, i1 false), !tbaa !7
  br label %63

63:                                               ; preds = %59, %56
  %64 = icmp sgt i32 %45, 0
  br i1 %64, label %67, label %65

65:                                               ; preds = %63
  %66 = add nsw i32 %51, -1
  br label %113

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.s_x4, ptr %3, i64 0, i32 2
  %69 = add nsw i32 %51, -1
  %70 = zext i32 %45 to i64
  br label %71

71:                                               ; preds = %105, %67
  %72 = phi i64 [ 0, %67 ], [ %111, %105 ]
  %73 = load ptr, ptr %68, align 8, !tbaa !139
  %74 = getelementptr inbounds %struct.s_x3node, ptr %73, i64 %72
  %75 = getelementptr inbounds %struct.s_x3node, ptr %73, i64 %72, i32 1
  %76 = load ptr, ptr %75, align 8, !tbaa !124
  %77 = icmp eq ptr %76, null
  br i1 %77, label %93, label %78

78:                                               ; preds = %78, %71
  %79 = phi i32 [ %89, %78 ], [ 0, %71 ]
  %80 = phi ptr [ %91, %78 ], [ %76, %71 ]
  %81 = mul nsw i32 %79, 571
  %82 = load ptr, ptr %80, align 8, !tbaa !99
  %83 = getelementptr inbounds %struct.rule, ptr %82, i64 0, i32 10
  %84 = load i32, ptr %83, align 8, !tbaa !116
  %85 = mul nsw i32 %84, 37
  %86 = add nsw i32 %85, %81
  %87 = getelementptr inbounds %struct.config, ptr %80, i64 0, i32 1
  %88 = load i32, ptr %87, align 8, !tbaa !100
  %89 = add nsw i32 %86, %88
  %90 = getelementptr inbounds %struct.config, ptr %80, i64 0, i32 8
  %91 = load ptr, ptr %90, align 8, !tbaa !108
  %92 = icmp eq ptr %91, null
  br i1 %92, label %93, label %78, !llvm.loop !120

93:                                               ; preds = %78, %71
  %94 = phi i32 [ 0, %71 ], [ %89, %78 ]
  %95 = and i32 %94, %69
  %96 = getelementptr inbounds %struct.s_x3node, ptr %54, i64 %72
  %97 = sext i32 %95 to i64
  %98 = getelementptr inbounds ptr, ptr %57, i64 %97
  %99 = load ptr, ptr %98, align 8, !tbaa !7
  %100 = icmp eq ptr %99, null
  br i1 %100, label %105, label %101

101:                                              ; preds = %93
  %102 = getelementptr inbounds %struct.s_x3node, ptr %54, i64 %72, i32 2
  %103 = getelementptr inbounds %struct.s_x3node, ptr %99, i64 0, i32 3
  store ptr %102, ptr %103, align 8, !tbaa !140
  %104 = load ptr, ptr %98, align 8, !tbaa !7
  br label %105

105:                                              ; preds = %101, %93
  %106 = phi ptr [ %104, %101 ], [ null, %93 ]
  %107 = getelementptr inbounds %struct.s_x3node, ptr %54, i64 %72, i32 2
  store ptr %106, ptr %107, align 8, !tbaa !141
  %108 = getelementptr inbounds %struct.s_x3node, ptr %54, i64 %72, i32 1
  store ptr %76, ptr %108, align 8, !tbaa !124
  %109 = load ptr, ptr %74, align 8, !tbaa !127
  store ptr %109, ptr %96, align 8, !tbaa !127
  %110 = getelementptr inbounds %struct.s_x3node, ptr %54, i64 %72, i32 3
  store ptr %98, ptr %110, align 8, !tbaa !140
  store ptr %96, ptr %98, align 8, !tbaa !7
  %111 = add nuw nsw i64 %72, 1
  %112 = icmp eq i64 %111, %70
  br i1 %112, label %113, label %71, !llvm.loop !142

113:                                              ; preds = %105, %65
  %114 = phi i32 [ %66, %65 ], [ %69, %105 ]
  %115 = getelementptr inbounds %struct.s_x4, ptr %3, i64 0, i32 2
  %116 = load ptr, ptr %115, align 8, !tbaa !139
  tail call void @free(ptr noundef %116) #34
  store i32 %51, ptr %3, align 8, !tbaa.struct !143
  store ptr %54, ptr %115, align 8, !tbaa.struct !144
  store ptr %57, ptr %27, align 8, !tbaa.struct !145
  %117 = and i32 %114, %23
  %118 = sext i32 %117 to i64
  br label %119

119:                                              ; preds = %113, %47
  %120 = phi i64 [ %29, %47 ], [ %118, %113 ]
  %121 = phi ptr [ %28, %47 ], [ %57, %113 ]
  %122 = phi ptr [ %49, %47 ], [ %54, %113 ]
  %123 = add nsw i32 %45, 1
  store i32 %123, ptr %44, align 4, !tbaa !138
  %124 = sext i32 %45 to i64
  %125 = getelementptr inbounds %struct.s_x3node, ptr %122, i64 %124
  %126 = getelementptr inbounds %struct.s_x3node, ptr %122, i64 %124, i32 1
  store ptr %1, ptr %126, align 8, !tbaa !124
  store ptr %0, ptr %125, align 8, !tbaa !127
  %127 = getelementptr inbounds ptr, ptr %121, i64 %120
  %128 = load ptr, ptr %127, align 8, !tbaa !7
  %129 = icmp eq ptr %128, null
  br i1 %129, label %134, label %130

130:                                              ; preds = %119
  %131 = getelementptr inbounds %struct.s_x3node, ptr %122, i64 %124, i32 2
  %132 = getelementptr inbounds %struct.s_x3node, ptr %128, i64 0, i32 3
  store ptr %131, ptr %132, align 8, !tbaa !140
  %133 = load ptr, ptr %127, align 8, !tbaa !7
  br label %134

134:                                              ; preds = %130, %119
  %135 = phi ptr [ %133, %130 ], [ null, %119 ]
  %136 = getelementptr inbounds %struct.s_x3node, ptr %122, i64 %124, i32 2
  store ptr %135, ptr %136, align 8, !tbaa !141
  store ptr %125, ptr %127, align 8, !tbaa !7
  %137 = load ptr, ptr %27, align 8, !tbaa !123
  %138 = getelementptr inbounds ptr, ptr %137, i64 %120
  %139 = getelementptr inbounds %struct.s_x3node, ptr %122, i64 %124, i32 3
  store ptr %138, ptr %139, align 8, !tbaa !140
  br label %140

140:                                              ; preds = %134, %50, %37, %2
  %141 = phi i32 [ 1, %134 ], [ 0, %2 ], [ 0, %50 ], [ 0, %37 ]
  ret i32 %141
}

; Function Attrs: nounwind optsize uwtable
define internal void @buildshifts(ptr nocapture noundef %0, ptr nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct.state, ptr %1, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !7
  %5 = icmp eq ptr %4, null
  br i1 %5, label %91, label %9

6:                                                ; preds = %9
  br i1 %5, label %91, label %7

7:                                                ; preds = %6
  %8 = getelementptr inbounds %struct.state, ptr %1, i64 0, i32 3
  br label %15

9:                                                ; preds = %9, %2
  %10 = phi ptr [ %13, %9 ], [ %4, %2 ]
  %11 = getelementptr inbounds %struct.config, ptr %10, i64 0, i32 6
  store i32 1, ptr %11, align 8, !tbaa !146
  %12 = getelementptr inbounds %struct.config, ptr %10, i64 0, i32 7
  %13 = load ptr, ptr %12, align 8, !tbaa !7
  %14 = icmp eq ptr %13, null
  br i1 %14, label %6, label %9, !llvm.loop !147

15:                                               ; preds = %87, %7
  %16 = phi ptr [ %4, %7 ], [ %89, %87 ]
  %17 = getelementptr inbounds %struct.config, ptr %16, i64 0, i32 6
  %18 = load i32, ptr %17, align 8, !tbaa !146
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %87, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.config, ptr %16, i64 0, i32 1
  %22 = load i32, ptr %21, align 8, !tbaa !100
  %23 = load ptr, ptr %16, align 8, !tbaa !99
  %24 = getelementptr inbounds %struct.rule, ptr %23, i64 0, i32 4
  %25 = load i32, ptr %24, align 8, !tbaa !42
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %87

27:                                               ; preds = %20
  store ptr null, ptr @current, align 8, !tbaa !7
  store ptr @current, ptr @currentend, align 8, !tbaa !7
  store ptr null, ptr @basis, align 8, !tbaa !7
  store ptr @basis, ptr @basisend, align 8, !tbaa !7
  tail call void (i32, ...) @Configtable_clear(i32 noundef 0) #32
  %28 = load ptr, ptr %16, align 8, !tbaa !99
  %29 = getelementptr inbounds %struct.rule, ptr %28, i64 0, i32 5
  %30 = load ptr, ptr %29, align 8, !tbaa !43
  %31 = load i32, ptr %21, align 8, !tbaa !100
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds ptr, ptr %30, i64 %32
  %34 = load ptr, ptr %33, align 8, !tbaa !7
  br label %35

35:                                               ; preds = %62, %27
  %36 = phi ptr [ %16, %27 ], [ %64, %62 ]
  %37 = getelementptr inbounds %struct.config, ptr %36, i64 0, i32 6
  %38 = load i32, ptr %37, align 8, !tbaa !146
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %62, label %40

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.config, ptr %36, i64 0, i32 1
  %42 = load i32, ptr %41, align 8, !tbaa !100
  %43 = load ptr, ptr %36, align 8, !tbaa !99
  %44 = getelementptr inbounds %struct.rule, ptr %43, i64 0, i32 4
  %45 = load i32, ptr %44, align 8, !tbaa !42
  %46 = icmp slt i32 %42, %45
  br i1 %46, label %47, label %62

47:                                               ; preds = %40
  %48 = getelementptr inbounds %struct.rule, ptr %43, i64 0, i32 5
  %49 = load ptr, ptr %48, align 8, !tbaa !43
  %50 = sext i32 %42 to i64
  %51 = getelementptr inbounds ptr, ptr %49, i64 %50
  %52 = load ptr, ptr %51, align 8, !tbaa !7
  %53 = tail call i32 @same_symbol(ptr noundef %52, ptr noundef %34) #32, !range !101
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %62, label %55

55:                                               ; preds = %47
  store i32 0, ptr %37, align 8, !tbaa !146
  %56 = add nsw i32 %42, 1
  %57 = tail call ptr @Configlist_addbasis(ptr noundef nonnull %43, i32 noundef %56) #32
  %58 = getelementptr inbounds %struct.config, ptr %57, i64 0, i32 4
  %59 = tail call ptr @Plink_new() #32
  %60 = load ptr, ptr %58, align 8, !tbaa !7
  %61 = getelementptr inbounds %struct.plink, ptr %59, i64 0, i32 1
  store ptr %60, ptr %61, align 8, !tbaa !103
  store ptr %59, ptr %58, align 8, !tbaa !7
  store ptr %36, ptr %59, align 8, !tbaa !134
  br label %62

62:                                               ; preds = %55, %47, %40, %35
  %63 = getelementptr inbounds %struct.config, ptr %36, i64 0, i32 7
  %64 = load ptr, ptr %63, align 8, !tbaa !128
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %35, !llvm.loop !148

66:                                               ; preds = %62
  %67 = tail call ptr @getstate(ptr noundef %0) #32
  %68 = getelementptr inbounds %struct.symbol, ptr %34, i64 0, i32 2
  %69 = load i32, ptr %68, align 4, !tbaa !44
  %70 = icmp eq i32 %69, 2
  br i1 %70, label %71, label %86

71:                                               ; preds = %66
  %72 = getelementptr inbounds %struct.symbol, ptr %34, i64 0, i32 14
  %73 = load i32, ptr %72, align 4, !tbaa !46
  %74 = icmp sgt i32 %73, 0
  br i1 %74, label %75, label %87

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.symbol, ptr %34, i64 0, i32 15
  br label %77

77:                                               ; preds = %77, %75
  %78 = phi i64 [ 0, %75 ], [ %82, %77 ]
  %79 = load ptr, ptr %76, align 8, !tbaa !47
  %80 = getelementptr inbounds ptr, ptr %79, i64 %78
  %81 = load ptr, ptr %80, align 8, !tbaa !7
  tail call void @Action_add(ptr noundef nonnull %8, i32 noundef 0, ptr noundef %81, ptr noundef %67) #32
  %82 = add nuw nsw i64 %78, 1
  %83 = load i32, ptr %72, align 4, !tbaa !46
  %84 = sext i32 %83 to i64
  %85 = icmp slt i64 %82, %84
  br i1 %85, label %77, label %87, !llvm.loop !149

86:                                               ; preds = %66
  tail call void @Action_add(ptr noundef nonnull %8, i32 noundef 0, ptr noundef nonnull %34, ptr noundef %67) #32
  br label %87

87:                                               ; preds = %86, %77, %71, %20, %15
  %88 = getelementptr inbounds %struct.config, ptr %16, i64 0, i32 7
  %89 = load ptr, ptr %88, align 8, !tbaa !7
  %90 = icmp eq ptr %89, null
  br i1 %90, label %91, label %15, !llvm.loop !150

91:                                               ; preds = %87, %6, %2
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @Configtable_clear(ptr noundef readonly %0) #0 {
  %2 = load ptr, ptr @x4a, align 8, !tbaa !7
  %3 = icmp eq ptr %2, null
  br i1 %3, label %41, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.s_x4, ptr %2, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !83
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
  %16 = load ptr, ptr %15, align 8, !tbaa !84
  %17 = getelementptr inbounds %struct.s_x4node, ptr %16, i64 %13
  %18 = load ptr, ptr %17, align 8, !tbaa !151
  %19 = tail call i32 (ptr, ...) %0(ptr noundef %18) #34
  %20 = add nuw nsw i64 %13, 1
  %21 = load ptr, ptr @x4a, align 8, !tbaa !7
  %22 = getelementptr inbounds %struct.s_x4, ptr %21, i64 0, i32 1
  %23 = load i32, ptr %22, align 4, !tbaa !83
  %24 = sext i32 %23 to i64
  %25 = icmp slt i64 %20, %24
  br i1 %25, label %12, label %26, !llvm.loop !153

26:                                               ; preds = %12, %8
  %27 = phi ptr [ %2, %8 ], [ %21, %12 ]
  %28 = load i32, ptr %27, align 8, !tbaa !81
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.s_x4, ptr %27, i64 0, i32 3
  %32 = zext i32 %28 to i64
  br label %33

33:                                               ; preds = %33, %30
  %34 = phi i64 [ 0, %30 ], [ %37, %33 ]
  %35 = load ptr, ptr %31, align 8, !tbaa !85
  %36 = getelementptr inbounds ptr, ptr %35, i64 %34
  store ptr null, ptr %36, align 8, !tbaa !7
  %37 = add nuw nsw i64 %34, 1
  %38 = icmp eq i64 %37, %32
  br i1 %38, label %39, label %33, !llvm.loop !154

39:                                               ; preds = %33, %26
  %40 = getelementptr inbounds %struct.s_x4, ptr %27, i64 0, i32 1
  store i32 0, ptr %40, align 4, !tbaa !83
  br label %41

41:                                               ; preds = %39, %4, %1
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal i32 @same_symbol(ptr noundef readonly %0, ptr noundef readonly %1) #11 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %36, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.symbol, ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !44
  %7 = icmp eq i32 %6, 2
  br i1 %7, label %8, label %36

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.symbol, ptr %1, i64 0, i32 2
  %10 = load i32, ptr %9, align 4, !tbaa !44
  %11 = icmp eq i32 %10, 2
  br i1 %11, label %12, label %36

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.symbol, ptr %0, i64 0, i32 14
  %14 = load i32, ptr %13, align 4, !tbaa !46
  %15 = getelementptr inbounds %struct.symbol, ptr %1, i64 0, i32 14
  %16 = load i32, ptr %15, align 4, !tbaa !46
  %17 = icmp eq i32 %14, %16
  br i1 %17, label %18, label %36

18:                                               ; preds = %12
  %19 = icmp sgt i32 %14, 0
  br i1 %19, label %20, label %36

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.symbol, ptr %0, i64 0, i32 15
  %22 = load ptr, ptr %21, align 8, !tbaa !47
  %23 = getelementptr inbounds %struct.symbol, ptr %1, i64 0, i32 15
  %24 = load ptr, ptr %23, align 8, !tbaa !47
  %25 = zext i32 %14 to i64
  br label %29

26:                                               ; preds = %29
  %27 = add nuw nsw i64 %30, 1
  %28 = icmp eq i64 %27, %25
  br i1 %28, label %36, label %29, !llvm.loop !155

29:                                               ; preds = %26, %20
  %30 = phi i64 [ 0, %20 ], [ %27, %26 ]
  %31 = getelementptr inbounds ptr, ptr %22, i64 %30
  %32 = load ptr, ptr %31, align 8, !tbaa !7
  %33 = getelementptr inbounds ptr, ptr %24, i64 %30
  %34 = load ptr, ptr %33, align 8, !tbaa !7
  %35 = icmp eq ptr %32, %34
  br i1 %35, label %26, label %36

36:                                               ; preds = %29, %26, %18, %12, %8, %4, %2
  %37 = phi i32 [ 1, %2 ], [ 0, %4 ], [ 0, %8 ], [ 0, %12 ], [ 1, %18 ], [ 0, %29 ], [ 1, %26 ]
  ret i32 %37
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @Plink_new() #0 {
  %1 = load ptr, ptr @plink_freelist, align 8, !tbaa !7
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %32

3:                                                ; preds = %0
  %4 = tail call noalias dereferenceable_or_null(1600) ptr @calloc(i64 noundef 100, i64 noundef 16) #28
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
  store ptr %15, ptr %13, align 8, !tbaa !103
  br label %16

16:                                               ; preds = %12, %6
  %17 = extractelement <2 x i1> %9, i64 1
  br i1 %17, label %18, label %23

18:                                               ; preds = %16
  %19 = or i64 %7, 1
  %20 = getelementptr inbounds %struct.plink, ptr %4, i64 %19, i32 1
  %21 = extractelement <2 x i64> %10, i64 1
  %22 = getelementptr inbounds %struct.plink, ptr %4, i64 %21
  store ptr %22, ptr %20, align 8, !tbaa !103
  br label %23

23:                                               ; preds = %18, %16
  %24 = add i64 %7, 2
  %25 = add <2 x i64> %8, <i64 2, i64 2>
  %26 = icmp eq i64 %24, 100
  br i1 %26, label %30, label %6, !llvm.loop !156

27:                                               ; preds = %3
  %28 = load ptr, ptr @stderr, align 8, !tbaa !7
  %29 = tail call i64 @fwrite(ptr nonnull @.str.48, i64 65, i64 1, ptr %28) #29
  tail call void @exit(i32 noundef 1) #30
  unreachable

30:                                               ; preds = %23
  %31 = getelementptr inbounds %struct.plink, ptr %4, i64 99, i32 1
  store ptr null, ptr %31, align 8, !tbaa !103
  br label %32

32:                                               ; preds = %30, %0
  %33 = phi ptr [ %4, %30 ], [ %1, %0 ]
  %34 = getelementptr inbounds %struct.plink, ptr %33, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !103
  store ptr %35, ptr @plink_freelist, align 8, !tbaa !7
  ret ptr %33
}

; Function Attrs: nofree norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal i32 @statecmp(ptr noundef readonly %0, ptr noundef readonly %1) #11 {
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
  %12 = load ptr, ptr %11, align 8, !tbaa !99
  %13 = getelementptr inbounds %struct.rule, ptr %12, i64 0, i32 10
  %14 = load i32, ptr %13, align 8, !tbaa !116
  %15 = load ptr, ptr %10, align 8, !tbaa !99
  %16 = getelementptr inbounds %struct.rule, ptr %15, i64 0, i32 10
  %17 = load i32, ptr %16, align 8, !tbaa !116
  %18 = sub nsw i32 %14, %17
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %9
  %21 = getelementptr inbounds %struct.config, ptr %11, i64 0, i32 1
  %22 = load i32, ptr %21, align 8, !tbaa !100
  %23 = getelementptr inbounds %struct.config, ptr %10, i64 0, i32 1
  %24 = load i32, ptr %23, align 8, !tbaa !100
  %25 = sub nsw i32 %22, %24
  br label %26

26:                                               ; preds = %20, %9
  %27 = phi i32 [ %25, %20 ], [ %18, %9 ]
  %28 = freeze i32 %27
  %29 = getelementptr inbounds %struct.config, ptr %11, i64 0, i32 8
  %30 = load ptr, ptr %29, align 8, !tbaa !108
  %31 = getelementptr inbounds %struct.config, ptr %10, i64 0, i32 8
  %32 = load ptr, ptr %31, align 8, !tbaa !108
  %33 = icmp eq i32 %28, 0
  %34 = icmp ne ptr %30, null
  %35 = select i1 %33, i1 %34, i1 false
  %36 = icmp ne ptr %32, null
  %37 = select i1 %35, i1 %36, i1 false
  br i1 %37, label %9, label %38, !llvm.loop !157

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

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #13

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: nounwind optsize uwtable
define internal ptr @Configlist_add(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.config, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %3) #36
  store ptr %0, ptr %3, align 8, !tbaa !99
  %4 = getelementptr inbounds %struct.config, ptr %3, i64 0, i32 1
  store i32 %1, ptr %4, align 8, !tbaa !100
  %5 = call ptr @Configtable_find(ptr noundef nonnull %3) #32
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %16

7:                                                ; preds = %2
  %8 = tail call ptr @newconfig() #32
  store ptr %0, ptr %8, align 8, !tbaa !99
  %9 = getelementptr inbounds %struct.config, ptr %8, i64 0, i32 1
  store i32 %1, ptr %9, align 8, !tbaa !100
  %10 = tail call ptr @SetNew() #32
  %11 = getelementptr inbounds %struct.config, ptr %8, i64 0, i32 2
  store ptr %10, ptr %11, align 8, !tbaa !78
  %12 = getelementptr inbounds %struct.config, ptr %8, i64 0, i32 3
  %13 = getelementptr inbounds %struct.config, ptr %8, i64 0, i32 7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %13, i8 0, i64 16, i1 false)
  %14 = load ptr, ptr @currentend, align 8, !tbaa !7
  store ptr %8, ptr %14, align 8, !tbaa !7
  store ptr %13, ptr @currentend, align 8, !tbaa !7
  %15 = tail call i32 @Configtable_insert(ptr noundef nonnull %8) #32, !range !101
  br label %16

16:                                               ; preds = %7, %2
  %17 = phi ptr [ %8, %7 ], [ %5, %2 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3) #36
  ret ptr %17
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #15

; Function Attrs: nofree norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal ptr @Configtable_find(ptr nocapture noundef readonly %0) #11 {
  %2 = load ptr, ptr @x4a, align 8, !tbaa !7
  %3 = icmp eq ptr %2, null
  br i1 %3, label %36, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr %0, align 8, !tbaa !99
  %6 = getelementptr inbounds %struct.rule, ptr %5, i64 0, i32 10
  %7 = load i32, ptr %6, align 8, !tbaa !116
  %8 = mul nsw i32 %7, 37
  %9 = getelementptr inbounds %struct.config, ptr %0, i64 0, i32 1
  %10 = load i32, ptr %9, align 8, !tbaa !100
  %11 = add nsw i32 %8, %10
  %12 = load i32, ptr %2, align 8, !tbaa !81
  %13 = add nsw i32 %12, -1
  %14 = and i32 %13, %11
  %15 = getelementptr inbounds %struct.s_x4, ptr %2, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !85
  %17 = sext i32 %14 to i64
  %18 = getelementptr inbounds ptr, ptr %16, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !7
  %20 = icmp eq ptr %19, null
  br i1 %20, label %36, label %21

21:                                               ; preds = %32, %4
  %22 = phi ptr [ %34, %32 ], [ %19, %4 ]
  %23 = load ptr, ptr %22, align 8, !tbaa !151
  %24 = load ptr, ptr %23, align 8, !tbaa !99
  %25 = getelementptr inbounds %struct.rule, ptr %24, i64 0, i32 10
  %26 = load i32, ptr %25, align 8, !tbaa !116
  %27 = icmp eq i32 %26, %7
  br i1 %27, label %28, label %32

28:                                               ; preds = %21
  %29 = getelementptr inbounds %struct.config, ptr %23, i64 0, i32 1
  %30 = load i32, ptr %29, align 8, !tbaa !100
  %31 = icmp eq i32 %30, %10
  br i1 %31, label %36, label %32

32:                                               ; preds = %28, %21
  %33 = getelementptr inbounds %struct.s_x4node, ptr %22, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !7
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %21, !llvm.loop !158

36:                                               ; preds = %32, %28, %4, %1
  %37 = phi ptr [ null, %1 ], [ null, %4 ], [ null, %32 ], [ %23, %28 ]
  ret ptr %37
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @newconfig() #0 {
  %1 = load ptr, ptr @freelist, align 8, !tbaa !7
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %15

3:                                                ; preds = %0
  %4 = tail call noalias dereferenceable_or_null(216) ptr @calloc(i64 noundef 3, i64 noundef 72) #28
  store ptr %4, ptr @freelist, align 8, !tbaa !7
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %9

6:                                                ; preds = %3
  %7 = load ptr, ptr @stderr, align 8, !tbaa !7
  %8 = tail call i64 @fwrite(ptr nonnull @.str.5, i64 50, i64 1, ptr %7) #29
  tail call void @exit(i32 noundef 1) #30
  unreachable

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.config, ptr %4, i64 1
  %11 = getelementptr inbounds %struct.config, ptr %4, i64 0, i32 7
  store ptr %10, ptr %11, align 8, !tbaa !128
  %12 = getelementptr inbounds %struct.config, ptr %4, i64 2
  %13 = getelementptr inbounds %struct.config, ptr %4, i64 1, i32 7
  store ptr %12, ptr %13, align 8, !tbaa !128
  %14 = getelementptr inbounds %struct.config, ptr %4, i64 2, i32 7
  store ptr null, ptr %14, align 8, !tbaa !128
  br label %15

15:                                               ; preds = %9, %0
  %16 = phi ptr [ %4, %9 ], [ %1, %0 ]
  %17 = getelementptr inbounds %struct.config, ptr %16, i64 0, i32 7
  %18 = load ptr, ptr %17, align 8, !tbaa !128
  store ptr %18, ptr @freelist, align 8, !tbaa !7
  ret ptr %16
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @Configtable_insert(ptr noundef %0) #0 {
  %2 = load ptr, ptr @x4a, align 8, !tbaa !7
  %3 = icmp eq ptr %2, null
  br i1 %3, label %118, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr %0, align 8, !tbaa !99
  %6 = getelementptr inbounds %struct.rule, ptr %5, i64 0, i32 10
  %7 = load i32, ptr %6, align 8, !tbaa !116
  %8 = mul nsw i32 %7, 37
  %9 = getelementptr inbounds %struct.config, ptr %0, i64 0, i32 1
  %10 = load i32, ptr %9, align 8, !tbaa !100
  %11 = add nsw i32 %8, %10
  %12 = load i32, ptr %2, align 8, !tbaa !81
  %13 = add nsw i32 %12, -1
  %14 = and i32 %13, %11
  %15 = getelementptr inbounds %struct.s_x4, ptr %2, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !85
  %17 = sext i32 %14 to i64
  %18 = getelementptr inbounds ptr, ptr %16, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !7
  %20 = icmp eq ptr %19, null
  br i1 %20, label %36, label %21

21:                                               ; preds = %32, %4
  %22 = phi ptr [ %34, %32 ], [ %19, %4 ]
  %23 = load ptr, ptr %22, align 8, !tbaa !151
  %24 = load ptr, ptr %23, align 8, !tbaa !99
  %25 = getelementptr inbounds %struct.rule, ptr %24, i64 0, i32 10
  %26 = load i32, ptr %25, align 8, !tbaa !116
  %27 = icmp eq i32 %26, %7
  br i1 %27, label %28, label %32

28:                                               ; preds = %21
  %29 = getelementptr inbounds %struct.config, ptr %23, i64 0, i32 1
  %30 = load i32, ptr %29, align 8, !tbaa !100
  %31 = icmp eq i32 %30, %10
  br i1 %31, label %118, label %32

32:                                               ; preds = %28, %21
  %33 = getelementptr inbounds %struct.s_x4node, ptr %22, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !7
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %21, !llvm.loop !159

36:                                               ; preds = %32, %4
  %37 = getelementptr inbounds %struct.s_x4, ptr %2, i64 0, i32 1
  %38 = load i32, ptr %37, align 4, !tbaa !83
  %39 = icmp slt i32 %38, %12
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.s_x4, ptr %2, i64 0, i32 2
  %42 = load ptr, ptr %41, align 8, !tbaa !84
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
  %66 = load ptr, ptr %61, align 8, !tbaa !84
  %67 = getelementptr inbounds %struct.s_x4node, ptr %66, i64 %65
  %68 = load ptr, ptr %67, align 8, !tbaa !151
  %69 = load ptr, ptr %68, align 8, !tbaa !99
  %70 = getelementptr inbounds %struct.rule, ptr %69, i64 0, i32 10
  %71 = load i32, ptr %70, align 8, !tbaa !116
  %72 = mul nsw i32 %71, 37
  %73 = getelementptr inbounds %struct.config, ptr %68, i64 0, i32 1
  %74 = load i32, ptr %73, align 8, !tbaa !100
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
  store ptr %83, ptr %84, align 8, !tbaa !160
  %85 = load ptr, ptr %79, align 8, !tbaa !7
  br label %86

86:                                               ; preds = %82, %64
  %87 = phi ptr [ %85, %82 ], [ null, %64 ]
  %88 = getelementptr inbounds %struct.s_x4node, ptr %47, i64 %65, i32 1
  store ptr %87, ptr %88, align 8, !tbaa !161
  store ptr %68, ptr %77, align 8, !tbaa !151
  %89 = getelementptr inbounds %struct.s_x4node, ptr %47, i64 %65, i32 2
  store ptr %79, ptr %89, align 8, !tbaa !160
  store ptr %77, ptr %79, align 8, !tbaa !7
  %90 = add nuw nsw i64 %65, 1
  %91 = icmp eq i64 %90, %63
  br i1 %91, label %92, label %64, !llvm.loop !162

92:                                               ; preds = %86, %58
  %93 = phi i32 [ %59, %58 ], [ %62, %86 ]
  %94 = getelementptr inbounds %struct.s_x4, ptr %2, i64 0, i32 2
  %95 = load ptr, ptr %94, align 8, !tbaa !84
  tail call void @free(ptr noundef %95) #34
  store i32 %44, ptr %2, align 8, !tbaa.struct !143
  store ptr %47, ptr %94, align 8, !tbaa.struct !144
  store ptr %50, ptr %15, align 8, !tbaa.struct !145
  %96 = and i32 %93, %11
  %97 = sext i32 %96 to i64
  br label %98

98:                                               ; preds = %92, %40
  %99 = phi i64 [ %17, %40 ], [ %97, %92 ]
  %100 = phi ptr [ %16, %40 ], [ %50, %92 ]
  %101 = phi ptr [ %42, %40 ], [ %47, %92 ]
  %102 = add nsw i32 %38, 1
  store i32 %102, ptr %37, align 4, !tbaa !83
  %103 = sext i32 %38 to i64
  %104 = getelementptr inbounds %struct.s_x4node, ptr %101, i64 %103
  store ptr %0, ptr %104, align 8, !tbaa !151
  %105 = getelementptr inbounds ptr, ptr %100, i64 %99
  %106 = load ptr, ptr %105, align 8, !tbaa !7
  %107 = icmp eq ptr %106, null
  br i1 %107, label %112, label %108

108:                                              ; preds = %98
  %109 = getelementptr inbounds %struct.s_x4node, ptr %101, i64 %103, i32 1
  %110 = getelementptr inbounds %struct.s_x4node, ptr %106, i64 0, i32 2
  store ptr %109, ptr %110, align 8, !tbaa !160
  %111 = load ptr, ptr %105, align 8, !tbaa !7
  br label %112

112:                                              ; preds = %108, %98
  %113 = phi ptr [ %111, %108 ], [ null, %98 ]
  %114 = getelementptr inbounds %struct.s_x4node, ptr %101, i64 %103, i32 1
  store ptr %113, ptr %114, align 8, !tbaa !161
  store ptr %104, ptr %105, align 8, !tbaa !7
  %115 = load ptr, ptr %15, align 8, !tbaa !85
  %116 = getelementptr inbounds ptr, ptr %115, i64 %99
  %117 = getelementptr inbounds %struct.s_x4node, ptr %101, i64 %103, i32 2
  store ptr %116, ptr %117, align 8, !tbaa !160
  br label %118

118:                                              ; preds = %112, %43, %28, %1
  %119 = phi i32 [ 1, %112 ], [ 0, %1 ], [ 0, %43 ], [ 0, %28 ]
  ret i32 %119
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #15

; Function Attrs: nounwind optsize uwtable
define internal fastcc ptr @merge(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) unnamed_addr #0 {
  %5 = icmp eq ptr %0, null
  br i1 %5, label %65, label %6

6:                                                ; preds = %4
  %7 = tail call i32 %2(ptr noundef nonnull %0, ptr noundef %1) #34, !callees !163
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
  br i1 %26, label %27, label %55

27:                                               ; preds = %20
  %28 = sext i32 %3 to i64
  br label %29

29:                                               ; preds = %48, %27
  %30 = phi ptr [ %23, %27 ], [ %51, %48 ]
  %31 = phi ptr [ %22, %27 ], [ %50, %48 ]
  %32 = phi ptr [ %21, %27 ], [ %49, %48 ]
  %33 = tail call i32 %2(ptr noundef nonnull %31, ptr noundef nonnull %32) #34, !callees !163
  %34 = icmp slt i32 %33, 0
  %35 = ptrtoint ptr %30 to i64
  %36 = add i64 %35, %28
  %37 = inttoptr i64 %36 to ptr
  br i1 %34, label %38, label %43

38:                                               ; preds = %29
  store ptr %31, ptr %37, align 8, !tbaa !7
  %39 = ptrtoint ptr %31 to i64
  %40 = add i64 %39, %28
  %41 = inttoptr i64 %40 to ptr
  %42 = load ptr, ptr %41, align 8, !tbaa !7
  br label %48

43:                                               ; preds = %29
  store ptr %32, ptr %37, align 8, !tbaa !7
  %44 = ptrtoint ptr %32 to i64
  %45 = add i64 %44, %28
  %46 = inttoptr i64 %45 to ptr
  %47 = load ptr, ptr %46, align 8, !tbaa !7
  br label %48

48:                                               ; preds = %43, %38
  %49 = phi ptr [ %32, %38 ], [ %47, %43 ]
  %50 = phi ptr [ %42, %38 ], [ %31, %43 ]
  %51 = phi ptr [ %31, %38 ], [ %32, %43 ]
  %52 = icmp ne ptr %50, null
  %53 = icmp ne ptr %49, null
  %54 = select i1 %52, i1 %53, i1 false
  br i1 %54, label %29, label %55, !llvm.loop !164

55:                                               ; preds = %48, %20
  %56 = phi ptr [ %21, %20 ], [ %49, %48 ]
  %57 = phi ptr [ %22, %20 ], [ %50, %48 ]
  %58 = phi ptr [ %23, %20 ], [ %51, %48 ]
  %59 = phi i1 [ %24, %20 ], [ %52, %48 ]
  %60 = ptrtoint ptr %58 to i64
  %61 = sext i32 %3 to i64
  %62 = add i64 %60, %61
  %63 = inttoptr i64 %62 to ptr
  %64 = select i1 %59, ptr %57, ptr %56
  store ptr %64, ptr %63, align 8, !tbaa !7
  br label %65

65:                                               ; preds = %55, %4
  %66 = phi ptr [ %1, %4 ], [ %23, %55 ]
  ret ptr %66
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @actioncmp(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #10 {
  %3 = load ptr, ptr %0, align 8, !tbaa !18
  %4 = getelementptr inbounds %struct.symbol, ptr %3, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !63
  %6 = load ptr, ptr %1, align 8, !tbaa !18
  %7 = getelementptr inbounds %struct.symbol, ptr %6, i64 0, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !63
  %9 = sub nsw i32 %5, %8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %30

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.action, ptr %0, i64 0, i32 1
  %13 = load i32, ptr %12, align 8, !tbaa !17
  %14 = getelementptr inbounds %struct.action, ptr %1, i64 0, i32 1
  %15 = load i32, ptr %14, align 8, !tbaa !17
  %16 = sub nsw i32 %13, %15
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %30

18:                                               ; preds = %11
  %19 = icmp eq i32 %13, 2
  br i1 %19, label %20, label %30

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.action, ptr %0, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !64
  %23 = getelementptr inbounds %struct.rule, ptr %22, i64 0, i32 10
  %24 = load i32, ptr %23, align 8, !tbaa !116
  %25 = getelementptr inbounds %struct.action, ptr %1, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !64
  %27 = getelementptr inbounds %struct.rule, ptr %26, i64 0, i32 10
  %28 = load i32, ptr %27, align 8, !tbaa !116
  %29 = sub nsw i32 %24, %28
  br label %30

30:                                               ; preds = %20, %18, %11, %2
  %31 = phi i32 [ %29, %20 ], [ 0, %18 ], [ %16, %11 ], [ %9, %2 ]
  ret i32 %31
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #16

; Function Attrs: nofree nounwind optsize
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #17

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #18

; Function Attrs: nofree nounwind optsize
declare noundef i32 @vsprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #17

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #16

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #17

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #18

; Function Attrs: nounwind optsize uwtable
define internal void @FindLinks(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.lemon, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !113
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %60

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !165
  %7 = zext i32 %3 to i64
  br label %9

8:                                                ; preds = %22
  br i1 %4, label %25, label %60

9:                                                ; preds = %22, %5
  %10 = phi i64 [ 0, %5 ], [ %23, %22 ]
  %11 = getelementptr inbounds ptr, ptr %6, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !7
  %13 = getelementptr inbounds %struct.state, ptr %12, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !7
  %15 = icmp eq ptr %14, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %16, %9
  %17 = phi ptr [ %20, %16 ], [ %14, %9 ]
  %18 = getelementptr inbounds %struct.config, ptr %17, i64 0, i32 5
  store ptr %12, ptr %18, align 8, !tbaa !166
  %19 = getelementptr inbounds %struct.config, ptr %17, i64 0, i32 7
  %20 = load ptr, ptr %19, align 8, !tbaa !7
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %16, !llvm.loop !167

22:                                               ; preds = %16, %9
  %23 = add nuw nsw i64 %10, 1
  %24 = icmp eq i64 %23, %7
  br i1 %24, label %8, label %9, !llvm.loop !168

25:                                               ; preds = %55, %8
  %26 = phi i32 [ %56, %55 ], [ %3, %8 ]
  %27 = phi i64 [ %57, %55 ], [ 0, %8 ]
  %28 = load ptr, ptr %0, align 8, !tbaa !165
  %29 = getelementptr inbounds ptr, ptr %28, i64 %27
  %30 = load ptr, ptr %29, align 8, !tbaa !7
  %31 = getelementptr inbounds %struct.state, ptr %30, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !7
  %33 = icmp eq ptr %32, null
  br i1 %33, label %55, label %34

34:                                               ; preds = %49, %25
  %35 = phi ptr [ %51, %49 ], [ %32, %25 ]
  %36 = getelementptr inbounds %struct.config, ptr %35, i64 0, i32 4
  %37 = load ptr, ptr %36, align 8, !tbaa !7
  %38 = icmp eq ptr %37, null
  br i1 %38, label %49, label %39

39:                                               ; preds = %39, %34
  %40 = phi ptr [ %47, %39 ], [ %37, %34 ]
  %41 = load ptr, ptr %40, align 8, !tbaa !134
  %42 = getelementptr inbounds %struct.config, ptr %41, i64 0, i32 3
  %43 = tail call ptr @Plink_new() #32
  %44 = load ptr, ptr %42, align 8, !tbaa !7
  %45 = getelementptr inbounds %struct.plink, ptr %43, i64 0, i32 1
  store ptr %44, ptr %45, align 8, !tbaa !103
  store ptr %43, ptr %42, align 8, !tbaa !7
  store ptr %35, ptr %43, align 8, !tbaa !134
  %46 = getelementptr inbounds %struct.plink, ptr %40, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !7
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %39, !llvm.loop !169

49:                                               ; preds = %39, %34
  %50 = getelementptr inbounds %struct.config, ptr %35, i64 0, i32 7
  %51 = load ptr, ptr %50, align 8, !tbaa !7
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %34, !llvm.loop !170

53:                                               ; preds = %49
  %54 = load i32, ptr %2, align 8, !tbaa !113
  br label %55

55:                                               ; preds = %53, %25
  %56 = phi i32 [ %54, %53 ], [ %26, %25 ]
  %57 = add nuw nsw i64 %27, 1
  %58 = sext i32 %56 to i64
  %59 = icmp slt i64 %57, %58
  br i1 %59, label %25, label %60, !llvm.loop !171

60:                                               ; preds = %55, %8, %1
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal void @FindFollowSets(ptr nocapture noundef readonly %0) #6 {
  %2 = getelementptr inbounds %struct.lemon, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !113
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %24

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !165
  %7 = zext i32 %3 to i64
  br label %8

8:                                                ; preds = %21, %5
  %9 = phi i64 [ 0, %5 ], [ %22, %21 ]
  %10 = getelementptr inbounds ptr, ptr %6, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !7
  %12 = getelementptr inbounds %struct.state, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !7
  %14 = icmp eq ptr %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %15, %8
  %16 = phi ptr [ %19, %15 ], [ %13, %8 ]
  %17 = getelementptr inbounds %struct.config, ptr %16, i64 0, i32 6
  store i32 1, ptr %17, align 8, !tbaa !146
  %18 = getelementptr inbounds %struct.config, ptr %16, i64 0, i32 7
  %19 = load ptr, ptr %18, align 8, !tbaa !7
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %15, !llvm.loop !172

21:                                               ; preds = %15, %8
  %22 = add nuw nsw i64 %9, 1
  %23 = icmp eq i64 %22, %7
  br i1 %23, label %24, label %8, !llvm.loop !173

24:                                               ; preds = %21, %1
  br label %25

25:                                               ; preds = %104, %24
  %26 = phi i32 [ %.lcssa6, %104 ], [ %3, %24 ]
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %106

28:                                               ; preds = %98, %25
  %29 = phi i32 [ %99, %98 ], [ %26, %25 ]
  %30 = phi i64 [ %101, %98 ], [ 0, %25 ]
  %31 = phi i32 [ %100, %98 ], [ 0, %25 ]
  %32 = load ptr, ptr %0, align 8, !tbaa !165
  %33 = getelementptr inbounds ptr, ptr %32, i64 %30
  %34 = load ptr, ptr %33, align 8, !tbaa !7
  %35 = getelementptr inbounds %struct.state, ptr %34, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !7
  %37 = icmp eq ptr %36, null
  br i1 %37, label %98, label %38

38:                                               ; preds = %91, %28
  %39 = phi ptr [ %94, %91 ], [ %36, %28 ]
  %40 = phi i32 [ %92, %91 ], [ %31, %28 ]
  %41 = getelementptr inbounds %struct.config, ptr %39, i64 0, i32 6
  %42 = load i32, ptr %41, align 8, !tbaa !146
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %91, label %44

44:                                               ; preds = %38
  %45 = getelementptr inbounds %struct.config, ptr %39, i64 0, i32 3
  %46 = load ptr, ptr %45, align 8, !tbaa !7
  %47 = icmp eq ptr %46, null
  br i1 %47, label %89, label %48

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.config, ptr %39, i64 0, i32 2
  br label %50

50:                                               ; preds = %84, %48
  %51 = phi ptr [ %46, %48 ], [ %87, %84 ]
  %52 = phi i32 [ %40, %48 ], [ %85, %84 ]
  %53 = load ptr, ptr %51, align 8, !tbaa !134
  %54 = getelementptr inbounds %struct.config, ptr %53, i64 0, i32 2
  %55 = load ptr, ptr %54, align 8, !tbaa !78
  %56 = load ptr, ptr %49, align 8, !tbaa !78
  %57 = load i32, ptr @size, align 4, !tbaa !33
  %58 = icmp sgt i32 %57, 0
  br i1 %58, label %59, label %84

59:                                               ; preds = %50
  %60 = zext i32 %57 to i64
  br label %61

61:                                               ; preds = %76, %59
  %62 = phi i64 [ %78, %76 ], [ 0, %59 ]
  %63 = phi i1 [ false, %76 ], [ true, %59 ]
  br label %64

64:                                               ; preds = %73, %61
  %65 = phi i64 [ %74, %73 ], [ %62, %61 ]
  %66 = getelementptr inbounds i8, ptr %56, i64 %65
  %67 = load i8, ptr %66, align 1, !tbaa !64
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %73, label %69

69:                                               ; preds = %64
  %70 = getelementptr inbounds i8, ptr %55, i64 %65
  %71 = load i8, ptr %70, align 1, !tbaa !64
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %69, %64
  %74 = add nuw nsw i64 %65, 1
  %75 = icmp eq i64 %74, %60
  br i1 %75, label %80, label %64, !llvm.loop !66

76:                                               ; preds = %69
  %.lcssa = phi i64 [ %65, %69 ]
  %77 = getelementptr inbounds i8, ptr %55, i64 %.lcssa
  store i8 1, ptr %77, align 1, !tbaa !64
  %78 = add nuw nsw i64 %.lcssa, 1
  %79 = icmp eq i64 %78, %60
  br i1 %79, label %81, label %61, !llvm.loop !66

80:                                               ; preds = %73
  %.lcssa3 = phi i1 [ %63, %73 ]
  br i1 %.lcssa3, label %84, label %81

81:                                               ; preds = %80, %76
  %82 = load ptr, ptr %51, align 8, !tbaa !134
  %83 = getelementptr inbounds %struct.config, ptr %82, i64 0, i32 6
  store i32 1, ptr %83, align 8, !tbaa !146
  br label %84

84:                                               ; preds = %81, %80, %50
  %85 = phi i32 [ 1, %81 ], [ %52, %80 ], [ %52, %50 ]
  %86 = getelementptr inbounds %struct.plink, ptr %51, i64 0, i32 1
  %87 = load ptr, ptr %86, align 8, !tbaa !7
  %88 = icmp eq ptr %87, null
  br i1 %88, label %89, label %50, !llvm.loop !174

89:                                               ; preds = %84, %44
  %90 = phi i32 [ %40, %44 ], [ %85, %84 ]
  store i32 0, ptr %41, align 8, !tbaa !146
  br label %91

91:                                               ; preds = %89, %38
  %92 = phi i32 [ %40, %38 ], [ %90, %89 ]
  %93 = getelementptr inbounds %struct.config, ptr %39, i64 0, i32 7
  %94 = load ptr, ptr %93, align 8, !tbaa !7
  %95 = icmp eq ptr %94, null
  br i1 %95, label %96, label %38, !llvm.loop !175

96:                                               ; preds = %91
  %.lcssa4 = phi i32 [ %92, %91 ]
  %97 = load i32, ptr %2, align 8, !tbaa !113
  br label %98

98:                                               ; preds = %96, %28
  %99 = phi i32 [ %29, %28 ], [ %97, %96 ]
  %100 = phi i32 [ %31, %28 ], [ %.lcssa4, %96 ]
  %101 = add nuw nsw i64 %30, 1
  %102 = sext i32 %99 to i64
  %103 = icmp slt i64 %101, %102
  br i1 %103, label %28, label %104, !llvm.loop !176

104:                                              ; preds = %98
  %.lcssa6 = phi i32 [ %99, %98 ]
  %.lcssa5 = phi i32 [ %100, %98 ]
  %105 = icmp eq i32 %.lcssa5, 0
  br i1 %105, label %106, label %25, !llvm.loop !177

106:                                              ; preds = %104, %25
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @FindActions(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.lemon, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !113
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %61

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.lemon, ptr %0, i64 0, i32 5
  %7 = getelementptr inbounds %struct.lemon, ptr %0, i64 0, i32 6
  br label %8

8:                                                ; preds = %56, %5
  %9 = phi i32 [ %3, %5 ], [ %57, %56 ]
  %10 = phi i64 [ 0, %5 ], [ %58, %56 ]
  %11 = load ptr, ptr %0, align 8, !tbaa !165
  %12 = getelementptr inbounds ptr, ptr %11, i64 %10
  %13 = load ptr, ptr %12, align 8, !tbaa !7
  %14 = getelementptr inbounds %struct.state, ptr %13, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !7
  %16 = icmp eq ptr %15, null
  br i1 %16, label %56, label %17

17:                                               ; preds = %8
  %18 = getelementptr inbounds %struct.state, ptr %13, i64 0, i32 3
  br label %19

19:                                               ; preds = %50, %17
  %20 = phi ptr [ %15, %17 ], [ %52, %50 ]
  %21 = load ptr, ptr %20, align 8, !tbaa !99
  %22 = getelementptr inbounds %struct.rule, ptr %21, i64 0, i32 4
  %23 = load i32, ptr %22, align 8, !tbaa !42
  %24 = getelementptr inbounds %struct.config, ptr %20, i64 0, i32 1
  %25 = load i32, ptr %24, align 8, !tbaa !100
  %26 = icmp eq i32 %23, %25
  br i1 %26, label %27, label %50

27:                                               ; preds = %19
  %28 = load i32, ptr %6, align 4, !tbaa !57
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %50

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.config, ptr %20, i64 0, i32 2
  br label %32

32:                                               ; preds = %45, %30
  %33 = phi i32 [ %28, %30 ], [ %46, %45 ]
  %34 = phi i64 [ 0, %30 ], [ %47, %45 ]
  %35 = load ptr, ptr %31, align 8, !tbaa !78
  %36 = getelementptr inbounds i8, ptr %35, i64 %34
  %37 = load i8, ptr %36, align 1, !tbaa !64
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %32
  %40 = load ptr, ptr %7, align 8, !tbaa !54
  %41 = getelementptr inbounds ptr, ptr %40, i64 %34
  %42 = load ptr, ptr %41, align 8, !tbaa !7
  %43 = load ptr, ptr %20, align 8, !tbaa !99
  tail call void @Action_add(ptr noundef nonnull %18, i32 noundef 2, ptr noundef %42, ptr noundef %43) #32
  %44 = load i32, ptr %6, align 4, !tbaa !57
  br label %45

45:                                               ; preds = %39, %32
  %46 = phi i32 [ %33, %32 ], [ %44, %39 ]
  %47 = add nuw nsw i64 %34, 1
  %48 = sext i32 %46 to i64
  %49 = icmp slt i64 %47, %48
  br i1 %49, label %32, label %50, !llvm.loop !178

50:                                               ; preds = %45, %27, %19
  %51 = getelementptr inbounds %struct.config, ptr %20, i64 0, i32 7
  %52 = load ptr, ptr %51, align 8, !tbaa !7
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %19, !llvm.loop !179

54:                                               ; preds = %50
  %55 = load i32, ptr %2, align 8, !tbaa !113
  br label %56

56:                                               ; preds = %54, %8
  %57 = phi i32 [ %55, %54 ], [ %9, %8 ]
  %58 = add nuw nsw i64 %10, 1
  %59 = sext i32 %57 to i64
  %60 = icmp slt i64 %58, %59
  br i1 %60, label %8, label %61, !llvm.loop !180

61:                                               ; preds = %56, %1
  %62 = getelementptr inbounds %struct.lemon, ptr %0, i64 0, i32 14
  %63 = load ptr, ptr %62, align 8, !tbaa !70
  %64 = icmp eq ptr %63, null
  br i1 %64, label %68, label %65

65:                                               ; preds = %61
  %66 = tail call ptr @Symbol_find(ptr noundef nonnull %63) #32
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %72

68:                                               ; preds = %65, %61
  %69 = getelementptr inbounds %struct.lemon, ptr %0, i64 0, i32 1
  %70 = load ptr, ptr %69, align 8, !tbaa !72
  %71 = load ptr, ptr %70, align 8, !tbaa !60
  br label %72

72:                                               ; preds = %68, %65
  %73 = phi ptr [ %66, %65 ], [ %71, %68 ]
  %74 = load ptr, ptr %0, align 8, !tbaa !165
  %75 = load ptr, ptr %74, align 8, !tbaa !7
  %76 = getelementptr inbounds %struct.state, ptr %75, i64 0, i32 3
  tail call void @Action_add(ptr noundef nonnull %76, i32 noundef 1, ptr noundef %73, ptr noundef null) #32
  %77 = load i32, ptr %2, align 8, !tbaa !113
  %78 = icmp sgt i32 %77, 0
  br i1 %78, label %79, label %194

79:                                               ; preds = %72
  %80 = getelementptr inbounds %struct.lemon, ptr %0, i64 0, i32 35
  br label %81

81:                                               ; preds = %189, %79
  %82 = phi i64 [ 0, %79 ], [ %190, %189 ]
  %83 = load ptr, ptr %0, align 8, !tbaa !165
  %84 = getelementptr inbounds ptr, ptr %83, i64 %82
  %85 = load ptr, ptr %84, align 8, !tbaa !7
  %86 = getelementptr inbounds %struct.state, ptr %85, i64 0, i32 3
  %87 = load ptr, ptr %86, align 8, !tbaa !115
  %88 = getelementptr inbounds %struct.action, ptr %87, i64 0, i32 3
  %89 = tail call fastcc ptr @msort(ptr noundef %87, ptr noundef nonnull %88, ptr noundef nonnull @actioncmp) #32
  store ptr %89, ptr %86, align 8, !tbaa !115
  %90 = icmp eq ptr %89, null
  br i1 %90, label %189, label %91

91:                                               ; preds = %81
  %92 = getelementptr inbounds %struct.action, ptr %89, i64 0, i32 3
  %93 = load ptr, ptr %92, align 8, !tbaa !11
  %94 = icmp eq ptr %93, null
  br i1 %94, label %189, label %95

95:                                               ; preds = %185, %91
  %96 = phi ptr [ %187, %185 ], [ %93, %91 ]
  %97 = phi ptr [ %96, %185 ], [ %89, %91 ]
  %98 = load ptr, ptr %97, align 8, !tbaa !18
  %99 = getelementptr inbounds %struct.action, ptr %97, i64 0, i32 1
  %100 = getelementptr inbounds %struct.symbol, ptr %98, i64 0, i32 5
  %101 = getelementptr inbounds %struct.symbol, ptr %98, i64 0, i32 6
  %102 = getelementptr inbounds %struct.action, ptr %97, i64 0, i32 2
  br label %103

103:                                              ; preds = %178, %95
  %104 = phi ptr [ %96, %95 ], [ %183, %178 ]
  %105 = load ptr, ptr %104, align 8, !tbaa !18
  %106 = icmp eq ptr %105, %98
  br i1 %106, label %107, label %185

107:                                              ; preds = %103
  %108 = load i32, ptr %99, align 8, !tbaa !17
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %141

110:                                              ; preds = %107
  %111 = getelementptr inbounds %struct.action, ptr %104, i64 0, i32 1
  %112 = load i32, ptr %111, align 8, !tbaa !17
  switch i32 %112, label %178 [
    i32 0, label %113
    i32 2, label %116
  ]

113:                                              ; preds = %110
  store i32 4, ptr %111, align 8, !tbaa !17
  %114 = load i32, ptr %99, align 8, !tbaa !17
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %178, label %141

116:                                              ; preds = %110
  %117 = getelementptr inbounds %struct.action, ptr %104, i64 0, i32 2
  %118 = load ptr, ptr %117, align 8, !tbaa !64
  %119 = getelementptr inbounds %struct.rule, ptr %118, i64 0, i32 9
  %120 = load ptr, ptr %119, align 8, !tbaa !40
  %121 = icmp eq ptr %120, null
  br i1 %121, label %129, label %122

122:                                              ; preds = %116
  %123 = load i32, ptr %100, align 8, !tbaa !49
  %124 = icmp slt i32 %123, 0
  br i1 %124, label %129, label %125

125:                                              ; preds = %122
  %126 = getelementptr inbounds %struct.symbol, ptr %120, i64 0, i32 5
  %127 = load i32, ptr %126, align 8, !tbaa !49
  %128 = icmp slt i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %125, %122, %116
  store i32 5, ptr %111, align 8, !tbaa !17
  br label %178

130:                                              ; preds = %125
  %131 = icmp ugt i32 %123, %127
  br i1 %131, label %132, label %133

132:                                              ; preds = %130
  store i32 8, ptr %111, align 8, !tbaa !17
  br label %178

133:                                              ; preds = %130
  %134 = icmp ult i32 %123, %127
  br i1 %134, label %135, label %136

135:                                              ; preds = %133
  store i32 7, ptr %99, align 8, !tbaa !17
  br label %178

136:                                              ; preds = %133
  %137 = load i32, ptr %101, align 4, !tbaa !181
  switch i32 %137, label %140 [
    i32 1, label %138
    i32 0, label %139
  ]

138:                                              ; preds = %136
  store i32 8, ptr %111, align 8, !tbaa !17
  br label %178

139:                                              ; preds = %136
  store i32 7, ptr %99, align 8, !tbaa !17
  br label %178

140:                                              ; preds = %136
  store i32 5, ptr %111, align 8, !tbaa !17
  br label %178

141:                                              ; preds = %113, %107
  %142 = phi i32 [ 1, %113 ], [ 0, %107 ]
  %143 = phi i32 [ %114, %113 ], [ %108, %107 ]
  %144 = icmp eq i32 %143, 2
  br i1 %144, label %145, label %178

145:                                              ; preds = %141
  %146 = getelementptr inbounds %struct.action, ptr %104, i64 0, i32 1
  %147 = load i32, ptr %146, align 8, !tbaa !17
  %148 = icmp eq i32 %147, 2
  br i1 %148, label %149, label %178

149:                                              ; preds = %145
  %150 = load ptr, ptr %102, align 8, !tbaa !64
  %151 = getelementptr inbounds %struct.rule, ptr %150, i64 0, i32 9
  %152 = load ptr, ptr %151, align 8, !tbaa !40
  %153 = getelementptr inbounds %struct.action, ptr %104, i64 0, i32 2
  %154 = load ptr, ptr %153, align 8, !tbaa !64
  %155 = getelementptr inbounds %struct.rule, ptr %154, i64 0, i32 9
  %156 = load ptr, ptr %155, align 8, !tbaa !40
  %157 = icmp eq ptr %152, null
  %158 = icmp eq ptr %156, null
  %159 = select i1 %157, i1 true, i1 %158
  br i1 %159, label %170, label %160

160:                                              ; preds = %149
  %161 = getelementptr inbounds %struct.symbol, ptr %152, i64 0, i32 5
  %162 = load i32, ptr %161, align 8, !tbaa !49
  %163 = icmp slt i32 %162, 0
  br i1 %163, label %170, label %164

164:                                              ; preds = %160
  %165 = getelementptr inbounds %struct.symbol, ptr %156, i64 0, i32 5
  %166 = load i32, ptr %165, align 8, !tbaa !49
  %167 = icmp slt i32 %166, 0
  %168 = icmp eq i32 %162, %166
  %169 = or i1 %167, %168
  br i1 %169, label %170, label %172

170:                                              ; preds = %164, %160, %149
  store i32 6, ptr %146, align 8, !tbaa !17
  %171 = add nuw nsw i32 %142, 1
  br label %178

172:                                              ; preds = %164
  %173 = icmp ugt i32 %162, %166
  br i1 %173, label %174, label %175

174:                                              ; preds = %172
  store i32 8, ptr %146, align 8, !tbaa !17
  br label %178

175:                                              ; preds = %172
  %176 = icmp ult i32 %162, %166
  br i1 %176, label %177, label %178

177:                                              ; preds = %175
  store i32 8, ptr %99, align 8, !tbaa !17
  br label %178

178:                                              ; preds = %177, %175, %174, %170, %145, %141, %140, %139, %138, %135, %132, %129, %113, %110
  %179 = phi i32 [ 1, %129 ], [ 0, %132 ], [ 0, %135 ], [ 0, %138 ], [ 0, %139 ], [ 1, %140 ], [ %171, %170 ], [ %142, %174 ], [ %142, %177 ], [ %142, %175 ], [ %142, %145 ], [ %142, %141 ], [ 1, %113 ], [ 0, %110 ]
  %180 = load i32, ptr %80, align 8, !tbaa !182
  %181 = add nsw i32 %180, %179
  store i32 %181, ptr %80, align 8, !tbaa !182
  %182 = getelementptr inbounds %struct.action, ptr %104, i64 0, i32 3
  %183 = load ptr, ptr %182, align 8, !tbaa !11
  %184 = icmp eq ptr %183, null
  br i1 %184, label %185, label %103, !llvm.loop !183

185:                                              ; preds = %178, %103
  %186 = getelementptr inbounds %struct.action, ptr %96, i64 0, i32 3
  %187 = load ptr, ptr %186, align 8, !tbaa !11
  %188 = icmp eq ptr %187, null
  br i1 %188, label %189, label %95, !llvm.loop !184

189:                                              ; preds = %185, %91, %81
  %190 = add nuw nsw i64 %82, 1
  %191 = load i32, ptr %2, align 8, !tbaa !113
  %192 = sext i32 %191 to i64
  %193 = icmp slt i64 %190, %192
  br i1 %193, label %81, label %194, !llvm.loop !185

194:                                              ; preds = %189, %72
  %195 = phi i32 [ %77, %72 ], [ %191, %189 ]
  %196 = getelementptr inbounds %struct.lemon, ptr %0, i64 0, i32 1
  %197 = load ptr, ptr %196, align 8, !tbaa !7
  %198 = icmp eq ptr %197, null
  br i1 %198, label %199, label %204

199:                                              ; preds = %204, %194
  %200 = icmp sgt i32 %195, 0
  br i1 %200, label %201, label %210

201:                                              ; preds = %199
  %202 = load ptr, ptr %0, align 8, !tbaa !165
  %203 = zext i32 %195 to i64
  br label %214

204:                                              ; preds = %204, %194
  %205 = phi ptr [ %208, %204 ], [ %197, %194 ]
  %206 = getelementptr inbounds %struct.rule, ptr %205, i64 0, i32 11
  store i32 0, ptr %206, align 4, !tbaa !186
  %207 = getelementptr inbounds %struct.rule, ptr %205, i64 0, i32 13
  %208 = load ptr, ptr %207, align 8, !tbaa !7
  %209 = icmp eq ptr %208, null
  br i1 %209, label %199, label %204, !llvm.loop !187

210:                                              ; preds = %234, %199
  br i1 %198, label %252, label %211

211:                                              ; preds = %210
  %212 = getelementptr inbounds %struct.lemon, ptr %0, i64 0, i32 32
  %213 = getelementptr inbounds %struct.lemon, ptr %0, i64 0, i32 7
  br label %237

214:                                              ; preds = %234, %201
  %215 = phi i64 [ 0, %201 ], [ %235, %234 ]
  %216 = getelementptr inbounds ptr, ptr %202, i64 %215
  %217 = load ptr, ptr %216, align 8, !tbaa !7
  %218 = getelementptr inbounds %struct.state, ptr %217, i64 0, i32 3
  %219 = load ptr, ptr %218, align 8, !tbaa !7
  %220 = icmp eq ptr %219, null
  br i1 %220, label %234, label %221

221:                                              ; preds = %230, %214
  %222 = phi ptr [ %232, %230 ], [ %219, %214 ]
  %223 = getelementptr inbounds %struct.action, ptr %222, i64 0, i32 1
  %224 = load i32, ptr %223, align 8, !tbaa !17
  %225 = icmp eq i32 %224, 2
  br i1 %225, label %226, label %230

226:                                              ; preds = %221
  %227 = getelementptr inbounds %struct.action, ptr %222, i64 0, i32 2
  %228 = load ptr, ptr %227, align 8, !tbaa !64
  %229 = getelementptr inbounds %struct.rule, ptr %228, i64 0, i32 11
  store i32 1, ptr %229, align 4, !tbaa !186
  br label %230

230:                                              ; preds = %226, %221
  %231 = getelementptr inbounds %struct.action, ptr %222, i64 0, i32 3
  %232 = load ptr, ptr %231, align 8, !tbaa !7
  %233 = icmp eq ptr %232, null
  br i1 %233, label %234, label %221, !llvm.loop !188

234:                                              ; preds = %230, %214
  %235 = add nuw nsw i64 %215, 1
  %236 = icmp eq i64 %235, %203
  br i1 %236, label %210, label %214, !llvm.loop !189

237:                                              ; preds = %248, %211
  %238 = phi ptr [ %197, %211 ], [ %250, %248 ]
  %239 = getelementptr inbounds %struct.rule, ptr %238, i64 0, i32 11
  %240 = load i32, ptr %239, align 4, !tbaa !186
  %241 = icmp eq i32 %240, 0
  br i1 %241, label %242, label %248

242:                                              ; preds = %237
  %243 = load ptr, ptr %212, align 8, !tbaa !71
  %244 = getelementptr inbounds %struct.rule, ptr %238, i64 0, i32 3
  %245 = load i32, ptr %244, align 4, !tbaa !190
  tail call void (ptr, i32, ptr, ...) @ErrorMsg(ptr noundef %243, i32 noundef %245, ptr noundef nonnull @.str.4) #32
  %246 = load i32, ptr %213, align 8, !tbaa !74
  %247 = add nsw i32 %246, 1
  store i32 %247, ptr %213, align 8, !tbaa !74
  br label %248

248:                                              ; preds = %242, %237
  %249 = getelementptr inbounds %struct.rule, ptr %238, i64 0, i32 13
  %250 = load ptr, ptr %249, align 8, !tbaa !7
  %251 = icmp eq ptr %250, null
  br i1 %251, label %252, label %237, !llvm.loop !191

252:                                              ; preds = %248, %210
  ret void
}

; Function Attrs: noreturn nounwind optsize uwtable
define internal i32 @lemon_main(i32 %0, ptr noundef %1) #19 {
  %3 = alloca %struct.lemon, align 8
  call void @llvm.lifetime.start.p0(i64 288, ptr nonnull %3) #36
  %4 = load ptr, ptr @stderr, align 8, !tbaa !7
  %5 = tail call i32 @OptInit(ptr noundef %1, ptr noundef nonnull @lemon_main.options, ptr noundef %4) #32
  %6 = load i32, ptr @lemon_main.version, align 4, !tbaa !33
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  tail call void @exit(i32 noundef 0) #30
  unreachable

10:                                               ; preds = %2
  %11 = tail call i32 @OptNArgs() #32
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %16, label %13

13:                                               ; preds = %10
  %14 = load ptr, ptr @stderr, align 8, !tbaa !7
  %15 = tail call i64 @fwrite(ptr nonnull @.str.28, i64 43, i64 1, ptr %14) #29
  tail call void @exit(i32 noundef 1) #30
  unreachable

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.lemon, ptr %3, i64 0, i32 7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %3, i8 0, i64 280, i1 false)
  tail call void @Strsafe_init() #32
  tail call void @Symbol_init() #32
  tail call void @State_init() #32
  %18 = load ptr, ptr %1, align 8, !tbaa !7
  %19 = getelementptr inbounds %struct.lemon, ptr %3, i64 0, i32 39
  store ptr %18, ptr %19, align 8, !tbaa !192
  %20 = tail call fastcc i32 @argindex(i32 noundef 0) #32
  %21 = icmp sgt i32 %20, -1
  br i1 %21, label %22, label %27

22:                                               ; preds = %16
  %23 = load ptr, ptr @argv, align 8, !tbaa !7
  %24 = zext i32 %20 to i64
  %25 = getelementptr inbounds ptr, ptr %23, i64 %24
  %26 = load ptr, ptr %25, align 8, !tbaa !7
  br label %27

27:                                               ; preds = %22, %16
  %28 = phi ptr [ %26, %22 ], [ null, %16 ]
  %29 = getelementptr inbounds %struct.lemon, ptr %3, i64 0, i32 32
  store ptr %28, ptr %29, align 8, !tbaa !71
  %30 = load i32, ptr @lemon_main.basisflag, align 4, !tbaa !33
  %31 = getelementptr inbounds %struct.lemon, ptr %3, i64 0, i32 37
  store i32 %30, ptr %31, align 8, !tbaa !193
  %32 = tail call ptr @Symbol_new(ptr noundef nonnull @.str.29) #32
  %33 = tail call ptr @Symbol_new(ptr noundef nonnull @.str.30) #32
  %34 = getelementptr inbounds %struct.lemon, ptr %3, i64 0, i32 8
  store ptr %33, ptr %34, align 8, !tbaa !130
  %35 = getelementptr inbounds %struct.symbol, ptr %33, i64 0, i32 9
  store i32 0, ptr %35, align 4, !tbaa !194
  call void @Parse(ptr noundef nonnull %3) #32
  %36 = load i32, ptr %17, align 8, !tbaa !74
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %27
  call void @exit(i32 noundef %36) #30
  unreachable

39:                                               ; preds = %27
  %40 = getelementptr inbounds %struct.lemon, ptr %3, i64 0, i32 3
  %41 = load i32, ptr %40, align 4, !tbaa !195
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = load ptr, ptr @stderr, align 8, !tbaa !7
  %45 = call i64 @fwrite(ptr nonnull @.str.31, i64 15, i64 1, ptr %44) #29
  call void @exit(i32 noundef 1) #30
  unreachable

46:                                               ; preds = %39
  %47 = load ptr, ptr @x2a, align 8, !tbaa !7
  %48 = icmp eq ptr %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %46
  %50 = getelementptr inbounds %struct.s_x4, ptr %47, i64 0, i32 1
  %51 = load i32, ptr %50, align 4, !tbaa !196
  br label %52

52:                                               ; preds = %49, %46
  %53 = phi i32 [ %51, %49 ], [ 0, %46 ]
  %54 = getelementptr inbounds %struct.lemon, ptr %3, i64 0, i32 4
  store i32 %53, ptr %54, align 8, !tbaa !52
  %55 = call ptr @Symbol_new(ptr noundef nonnull @.str.32) #32
  %56 = call ptr @Symbol_arrayof() #32
  %57 = getelementptr inbounds %struct.lemon, ptr %3, i64 0, i32 6
  store ptr %56, ptr %57, align 8, !tbaa !54
  %58 = load i32, ptr %54, align 8, !tbaa !52
  %59 = icmp slt i32 %58, 0
  %60 = add i32 %58, 1
  br i1 %59, label %71, label %61

61:                                               ; preds = %52
  %62 = zext i32 %60 to i64
  br label %63

63:                                               ; preds = %63, %61
  %64 = phi i64 [ 0, %61 ], [ %69, %63 ]
  %65 = getelementptr inbounds ptr, ptr %56, i64 %64
  %66 = load ptr, ptr %65, align 8, !tbaa !7
  %67 = getelementptr inbounds %struct.symbol, ptr %66, i64 0, i32 1
  %68 = trunc i64 %64 to i32
  store i32 %68, ptr %67, align 8, !tbaa !63
  %69 = add nuw nsw i64 %64, 1
  %70 = icmp eq i64 %69, %62
  br i1 %70, label %71, label %63, !llvm.loop !197

71:                                               ; preds = %63, %52
  %72 = sext i32 %60 to i64
  call void @qsort(ptr noundef %56, i64 noundef %72, i64 noundef 8, ptr noundef nonnull @Symbolcmpp) #34
  %73 = load i32, ptr %54, align 8, !tbaa !52
  %74 = icmp slt i32 %73, 0
  %75 = load ptr, ptr %57, align 8, !tbaa !54
  br i1 %74, label %79, label %76

76:                                               ; preds = %71
  %77 = add nuw i32 %73, 1
  %78 = zext i32 %77 to i64
  br label %82

79:                                               ; preds = %82, %71
  %80 = tail call ptr @__ctype_b_loc() #37
  %81 = load ptr, ptr %80, align 8, !tbaa !7
  br label %90

82:                                               ; preds = %82, %76
  %83 = phi i64 [ 0, %76 ], [ %88, %82 ]
  %84 = getelementptr inbounds ptr, ptr %75, i64 %83
  %85 = load ptr, ptr %84, align 8, !tbaa !7
  %86 = getelementptr inbounds %struct.symbol, ptr %85, i64 0, i32 1
  %87 = trunc i64 %83 to i32
  store i32 %87, ptr %86, align 8, !tbaa !63
  %88 = add nuw nsw i64 %83, 1
  %89 = icmp eq i64 %88, %78
  br i1 %89, label %79, label %82, !llvm.loop !198

90:                                               ; preds = %90, %79
  %91 = phi i64 [ %101, %90 ], [ 1, %79 ]
  %92 = getelementptr inbounds ptr, ptr %75, i64 %91
  %93 = load ptr, ptr %92, align 8, !tbaa !7
  %94 = load ptr, ptr %93, align 8, !tbaa !73
  %95 = load i8, ptr %94, align 1, !tbaa !64
  %96 = sext i8 %95 to i64
  %97 = getelementptr inbounds i16, ptr %81, i64 %96
  %98 = load i16, ptr %97, align 2, !tbaa !199
  %99 = and i16 %98, 256
  %100 = icmp eq i16 %99, 0
  %101 = add nuw i64 %91, 1
  br i1 %100, label %102, label %90, !llvm.loop !201

102:                                              ; preds = %90
  %.lcssa = phi i64 [ %91, %90 ]
  %103 = trunc i64 %.lcssa to i32
  %104 = getelementptr inbounds %struct.lemon, ptr %3, i64 0, i32 5
  store i32 %103, ptr %104, align 4, !tbaa !57
  %105 = load i32, ptr @lemon_main.rpflag, align 4, !tbaa !33
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %108, label %107

107:                                              ; preds = %102
  call void @Reprint(ptr noundef nonnull %3) #32
  br label %124

108:                                              ; preds = %102
  %109 = add nuw nsw i32 %103, 2
  store i32 %109, ptr @size, align 4, !tbaa !33
  call void @FindRulePrecedences(ptr noundef nonnull %3) #32
  call void @FindFirstSets(ptr noundef nonnull %3) #32
  %110 = getelementptr inbounds %struct.lemon, ptr %3, i64 0, i32 2
  store i32 0, ptr %110, align 8, !tbaa !113
  call void @FindStates(ptr noundef nonnull %3) #32
  %111 = call ptr @State_arrayof() #32
  store ptr %111, ptr %3, align 8, !tbaa !165
  call void @FindLinks(ptr noundef nonnull %3) #32
  call void @FindFollowSets(ptr noundef nonnull %3) #32
  call void @FindActions(ptr noundef nonnull %3) #32
  %112 = load i32, ptr @lemon_main.compress, align 4, !tbaa !33
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %108
  call void @CompressTables(ptr noundef nonnull %3) #32
  br label %115

115:                                              ; preds = %114, %108
  call void @ResortStates(ptr noundef nonnull %3) #32
  %116 = load i32, ptr @lemon_main.quiet, align 4, !tbaa !33
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %115
  call void @ReportOutput(ptr noundef nonnull %3) #32
  br label %119

119:                                              ; preds = %118, %115
  %120 = load i32, ptr @lemon_main.mhflag, align 4, !tbaa !33
  call void @ReportTable(ptr noundef nonnull %3, i32 noundef %120) #32
  %121 = load i32, ptr @lemon_main.mhflag, align 4, !tbaa !33
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %119
  call void @ReportHeader(ptr noundef nonnull %3) #32
  br label %124

124:                                              ; preds = %123, %119, %107
  %125 = load i32, ptr @lemon_main.statistics, align 4, !tbaa !33
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %140, label %127

127:                                              ; preds = %124
  %128 = load i32, ptr %104, align 4, !tbaa !57
  %129 = load i32, ptr %54, align 8, !tbaa !52
  %130 = sub nsw i32 %129, %128
  %131 = load i32, ptr %40, align 4, !tbaa !195
  %132 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.33, i32 noundef %128, i32 noundef %130, i32 noundef %131) #32
  %133 = getelementptr inbounds %struct.lemon, ptr %3, i64 0, i32 2
  %134 = load i32, ptr %133, align 8, !tbaa !113
  %135 = getelementptr inbounds %struct.lemon, ptr %3, i64 0, i32 36
  %136 = load i32, ptr %135, align 4, !tbaa !202
  %137 = getelementptr inbounds %struct.lemon, ptr %3, i64 0, i32 35
  %138 = load i32, ptr %137, align 8, !tbaa !182
  %139 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.34, i32 noundef %134, i32 noundef %136, i32 noundef %138) #32
  br label %140

140:                                              ; preds = %127, %124
  %141 = load i32, ptr %17, align 8, !tbaa !74
  %142 = getelementptr inbounds %struct.lemon, ptr %3, i64 0, i32 35
  %143 = load i32, ptr %142, align 8, !tbaa !182
  %144 = add nsw i32 %143, %141
  call void @exit(i32 noundef %144) #30
  unreachable
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @OptInit(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 8
  store ptr %0, ptr @argv, align 8, !tbaa !7
  store ptr %1, ptr @op, align 8, !tbaa !7
  store ptr %2, ptr @errstream, align 8, !tbaa !7
  %5 = icmp eq ptr %0, null
  br i1 %5, label %181, label %6

6:                                                ; preds = %3
  %7 = load ptr, ptr %0, align 8, !tbaa !7
  %8 = icmp ne ptr %7, null
  %9 = icmp ne ptr %1, null
  %10 = and i1 %9, %8
  br i1 %10, label %11, label %181

11:                                               ; preds = %6
  %12 = getelementptr inbounds ptr, ptr %0, i64 1
  %13 = load ptr, ptr %12, align 8, !tbaa !7
  %14 = icmp eq ptr %13, null
  br i1 %14, label %181, label %15

15:                                               ; preds = %11
  %16 = icmp eq ptr %2, null
  br label %17

17:                                               ; preds = %169, %15
  %18 = phi i64 [ 1, %15 ], [ %171, %169 ]
  %19 = phi ptr [ %13, %15 ], [ %174, %169 ]
  %20 = phi ptr [ %0, %15 ], [ %172, %169 ]
  %21 = phi i32 [ 0, %15 ], [ %170, %169 ]
  %22 = load i8, ptr %19, align 1, !tbaa !64
  switch i8 %22, label %67 [
    i8 43, label %23
    i8 45, label %23
  ]

23:                                               ; preds = %17, %17
  %24 = load ptr, ptr @op, align 8, !tbaa !7
  %25 = getelementptr inbounds %struct.s_options, ptr %24, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !203
  %27 = icmp eq ptr %26, null
  br i1 %27, label %41, label %28

28:                                               ; preds = %23
  %29 = getelementptr inbounds i8, ptr %19, i64 1
  br label %35

30:                                               ; preds = %35
  %31 = add nuw i64 %36, 1
  %32 = getelementptr inbounds %struct.s_options, ptr %24, i64 %31, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !203
  %34 = icmp eq ptr %33, null
  br i1 %34, label %41, label %35, !llvm.loop !205

35:                                               ; preds = %30, %28
  %36 = phi i64 [ 0, %28 ], [ %31, %30 ]
  %37 = phi ptr [ %26, %28 ], [ %33, %30 ]
  %38 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %37) #35
  %39 = tail call i32 @strncmp(ptr noundef nonnull %29, ptr noundef nonnull %37, i64 noundef %38) #35
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %45, label %30

41:                                               ; preds = %30, %23
  br i1 %16, label %64, label %42

42:                                               ; preds = %41
  %43 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %2, ptr noundef nonnull @.str.166, ptr noundef nonnull @emsg) #32
  %44 = trunc i64 %18 to i32
  tail call fastcc void @errline(i32 noundef %44, i32 noundef 1, ptr noundef nonnull %2) #32
  br label %64

45:                                               ; preds = %35
  %.lcssa = phi i64 [ %36, %35 ]
  %46 = icmp eq i8 %22, 45
  %47 = zext i1 %46 to i32
  %48 = getelementptr inbounds %struct.s_options, ptr %24, i64 %.lcssa
  %49 = load i32, ptr %48, align 8, !tbaa !206
  switch i32 %49, label %60 [
    i32 1, label %50
    i32 5, label %53
    i32 8, label %56
  ]

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.s_options, ptr %24, i64 %.lcssa, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !207
  store i32 %47, ptr %52, align 4, !tbaa !33
  br label %64

53:                                               ; preds = %45
  %54 = getelementptr inbounds %struct.s_options, ptr %24, i64 %.lcssa, i32 2
  %55 = load ptr, ptr %54, align 8, !tbaa !207
  tail call void (i32, ...) %55(i32 noundef %47) #34
  br label %64

56:                                               ; preds = %45
  %57 = getelementptr inbounds %struct.s_options, ptr %24, i64 %.lcssa, i32 2
  %58 = load ptr, ptr %57, align 8, !tbaa !207
  %59 = getelementptr inbounds i8, ptr %19, i64 2
  tail call void (ptr, ...) %58(ptr noundef nonnull %59) #34
  br label %64

60:                                               ; preds = %45
  br i1 %16, label %64, label %61

61:                                               ; preds = %60
  %62 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %2, ptr noundef nonnull @.str.167, ptr noundef nonnull @emsg) #32
  %63 = trunc i64 %18 to i32
  tail call fastcc void @errline(i32 noundef %63, i32 noundef 1, ptr noundef nonnull %2) #32
  br label %64

64:                                               ; preds = %61, %60, %56, %53, %50, %42, %41
  %65 = phi i32 [ 0, %50 ], [ 0, %53 ], [ 0, %56 ], [ 1, %42 ], [ 1, %41 ], [ 1, %61 ], [ 1, %60 ]
  %66 = add nsw i32 %65, %21
  br label %169

67:                                               ; preds = %17
  %68 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %19, i32 noundef 61) #35
  %69 = icmp eq ptr %68, null
  br i1 %69, label %169, label %70

70:                                               ; preds = %67
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #36
  store i8 0, ptr %68, align 1, !tbaa !64
  %71 = load ptr, ptr @op, align 8, !tbaa !7
  %72 = getelementptr inbounds %struct.s_options, ptr %71, i64 0, i32 1
  %73 = load ptr, ptr %72, align 8, !tbaa !203
  %74 = icmp eq ptr %73, null
  br i1 %74, label %89, label %75

75:                                               ; preds = %70
  %76 = getelementptr inbounds ptr, ptr %20, i64 %18
  %77 = load ptr, ptr %76, align 8, !tbaa !7
  br label %83

78:                                               ; preds = %83
  %79 = add nuw i64 %84, 1
  %80 = getelementptr inbounds %struct.s_options, ptr %71, i64 %79, i32 1
  %81 = load ptr, ptr %80, align 8, !tbaa !203
  %82 = icmp eq ptr %81, null
  br i1 %82, label %89, label %83, !llvm.loop !208

83:                                               ; preds = %78, %75
  %84 = phi i64 [ 0, %75 ], [ %79, %78 ]
  %85 = phi ptr [ %73, %75 ], [ %81, %78 ]
  %86 = phi ptr [ %72, %75 ], [ %80, %78 ]
  %87 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %77, ptr noundef nonnull dereferenceable(1) %85) #35
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %78

89:                                               ; preds = %83, %78, %70
  %90 = phi i64 [ 0, %70 ], [ %79, %78 ], [ %84, %83 ]
  %91 = phi ptr [ %72, %70 ], [ %80, %78 ], [ %86, %83 ]
  store i8 61, ptr %68, align 1, !tbaa !64
  %92 = load ptr, ptr %91, align 8, !tbaa !203
  %93 = icmp eq ptr %92, null
  br i1 %93, label %94, label %98

94:                                               ; preds = %89
  br i1 %16, label %166, label %95

95:                                               ; preds = %94
  %96 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %2, ptr noundef nonnull @.str.166, ptr noundef nonnull @emsg) #32
  %97 = trunc i64 %18 to i32
  tail call fastcc void @errline(i32 noundef %97, i32 noundef 0, ptr noundef nonnull %2) #32
  br label %166

98:                                               ; preds = %89
  %99 = getelementptr inbounds %struct.s_options, ptr %71, i64 %90
  %100 = getelementptr inbounds i8, ptr %68, i64 1
  %101 = load i32, ptr %99, align 8, !tbaa !206
  switch i32 %101, label %140 [
    i32 1, label %102
    i32 5, label %102
    i32 3, label %106
    i32 7, label %106
    i32 2, label %122
    i32 6, label %122
    i32 4, label %139
    i32 8, label %139
  ]

102:                                              ; preds = %98, %98
  br i1 %16, label %140, label %103

103:                                              ; preds = %102
  %104 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %2, ptr noundef nonnull @.str.168, ptr noundef nonnull @emsg) #32
  %105 = trunc i64 %18 to i32
  tail call fastcc void @errline(i32 noundef %105, i32 noundef 0, ptr noundef nonnull %2) #32
  br label %140

106:                                              ; preds = %98, %98
  %107 = call double @strtod(ptr noundef nonnull %100, ptr noundef nonnull %4) #34
  %108 = load ptr, ptr %4, align 8, !tbaa !7
  %109 = load i8, ptr %108, align 1, !tbaa !64
  %110 = icmp eq i8 %109, 0
  br i1 %110, label %140, label %111

111:                                              ; preds = %106
  br i1 %16, label %140, label %112

112:                                              ; preds = %111
  %113 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %2, ptr noundef nonnull @.str.169, ptr noundef nonnull @emsg) #32
  %114 = ptrtoint ptr %108 to i64
  %115 = load ptr, ptr @argv, align 8, !tbaa !7
  %116 = getelementptr inbounds ptr, ptr %115, i64 %18
  %117 = load ptr, ptr %116, align 8, !tbaa !7
  %118 = ptrtoint ptr %117 to i64
  %119 = sub i64 %114, %118
  %120 = trunc i64 %119 to i32
  %121 = trunc i64 %18 to i32
  tail call fastcc void @errline(i32 noundef %121, i32 noundef %120, ptr noundef nonnull %2) #32
  br label %140

122:                                              ; preds = %98, %98
  %123 = call i64 @strtol(ptr noundef nonnull %100, ptr noundef nonnull %4, i32 noundef 0) #34
  %124 = trunc i64 %123 to i32
  %125 = load ptr, ptr %4, align 8, !tbaa !7
  %126 = load i8, ptr %125, align 1, !tbaa !64
  %127 = icmp eq i8 %126, 0
  br i1 %127, label %140, label %128

128:                                              ; preds = %122
  br i1 %16, label %140, label %129

129:                                              ; preds = %128
  %130 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %2, ptr noundef nonnull @.str.170, ptr noundef nonnull @emsg) #32
  %131 = ptrtoint ptr %125 to i64
  %132 = load ptr, ptr @argv, align 8, !tbaa !7
  %133 = getelementptr inbounds ptr, ptr %132, i64 %18
  %134 = load ptr, ptr %133, align 8, !tbaa !7
  %135 = ptrtoint ptr %134 to i64
  %136 = sub i64 %131, %135
  %137 = trunc i64 %136 to i32
  %138 = trunc i64 %18 to i32
  tail call fastcc void @errline(i32 noundef %138, i32 noundef %137, ptr noundef nonnull %2) #32
  br label %140

139:                                              ; preds = %98, %98
  br label %140

140:                                              ; preds = %139, %129, %128, %122, %112, %111, %106, %103, %102, %98
  %141 = phi i32 [ 0, %98 ], [ 0, %139 ], [ %124, %122 ], [ 0, %106 ], [ 0, %103 ], [ 0, %102 ], [ 0, %112 ], [ 0, %111 ], [ %124, %129 ], [ %124, %128 ]
  %142 = phi double [ 0.000000e+00, %98 ], [ 0.000000e+00, %139 ], [ 0.000000e+00, %122 ], [ %107, %106 ], [ 0.000000e+00, %103 ], [ 0.000000e+00, %102 ], [ %107, %112 ], [ %107, %111 ], [ 0.000000e+00, %129 ], [ 0.000000e+00, %128 ]
  %143 = phi ptr [ null, %98 ], [ %100, %139 ], [ null, %122 ], [ null, %106 ], [ null, %103 ], [ null, %102 ], [ null, %112 ], [ null, %111 ], [ null, %129 ], [ null, %128 ]
  %144 = phi i32 [ 0, %98 ], [ 0, %139 ], [ 0, %122 ], [ 0, %106 ], [ 1, %103 ], [ 1, %102 ], [ 1, %112 ], [ 1, %111 ], [ 1, %129 ], [ 1, %128 ]
  %145 = load ptr, ptr @op, align 8, !tbaa !7
  %146 = getelementptr inbounds %struct.s_options, ptr %145, i64 %90
  %147 = load i32, ptr %146, align 8, !tbaa !206
  switch i32 %147, label %166 [
    i32 8, label %163
    i32 4, label %160
    i32 3, label %148
    i32 7, label %151
    i32 2, label %154
    i32 6, label %157
  ]

148:                                              ; preds = %140
  %149 = getelementptr inbounds %struct.s_options, ptr %145, i64 %90, i32 2
  %150 = load ptr, ptr %149, align 8, !tbaa !207
  store double %142, ptr %150, align 8, !tbaa !209
  br label %166

151:                                              ; preds = %140
  %152 = getelementptr inbounds %struct.s_options, ptr %145, i64 %90, i32 2
  %153 = load ptr, ptr %152, align 8, !tbaa !207
  tail call void (double, ...) %153(double noundef %142) #34
  br label %166

154:                                              ; preds = %140
  %155 = getelementptr inbounds %struct.s_options, ptr %145, i64 %90, i32 2
  %156 = load ptr, ptr %155, align 8, !tbaa !207
  store i32 %141, ptr %156, align 4, !tbaa !33
  br label %166

157:                                              ; preds = %140
  %158 = getelementptr inbounds %struct.s_options, ptr %145, i64 %90, i32 2
  %159 = load ptr, ptr %158, align 8, !tbaa !207
  tail call void (i32, ...) %159(i32 noundef %141) #34
  br label %166

160:                                              ; preds = %140
  %161 = getelementptr inbounds %struct.s_options, ptr %145, i64 %90, i32 2
  %162 = load ptr, ptr %161, align 8, !tbaa !207
  store ptr %143, ptr %162, align 8, !tbaa !7
  br label %166

163:                                              ; preds = %140
  %164 = getelementptr inbounds %struct.s_options, ptr %145, i64 %90, i32 2
  %165 = load ptr, ptr %164, align 8, !tbaa !207
  tail call void (ptr, ...) %165(ptr noundef %143) #34
  br label %166

166:                                              ; preds = %163, %160, %157, %154, %151, %148, %140, %95, %94
  %167 = phi i32 [ %144, %140 ], [ %144, %157 ], [ %144, %154 ], [ %144, %151 ], [ %144, %148 ], [ %144, %160 ], [ %144, %163 ], [ 1, %95 ], [ 1, %94 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #36
  %168 = add nsw i32 %167, %21
  br label %169

169:                                              ; preds = %166, %67, %64
  %170 = phi i32 [ %66, %64 ], [ %168, %166 ], [ %21, %67 ]
  %171 = add nuw i64 %18, 1
  %172 = load ptr, ptr @argv, align 8, !tbaa !7
  %173 = getelementptr inbounds ptr, ptr %172, i64 %171
  %174 = load ptr, ptr %173, align 8, !tbaa !7
  %175 = icmp eq ptr %174, null
  br i1 %175, label %176, label %17, !llvm.loop !211

176:                                              ; preds = %169
  %.lcssa1 = phi i32 [ %170, %169 ]
  %177 = icmp sgt i32 %.lcssa1, 0
  br i1 %177, label %178, label %181

178:                                              ; preds = %176
  %179 = load ptr, ptr %0, align 8, !tbaa !7
  %180 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.35, ptr noundef %179) #32
  tail call void @OptPrint() #32
  tail call void @exit(i32 noundef 1) #30
  unreachable

181:                                              ; preds = %176, %11, %6, %3
  ret i32 0
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal i32 @OptNArgs() #8 {
  %1 = load ptr, ptr @argv, align 8, !tbaa !7
  %2 = icmp eq ptr %1, null
  br i1 %2, label %32, label %3

3:                                                ; preds = %0
  %4 = load ptr, ptr %1, align 8, !tbaa !7
  %5 = icmp eq ptr %4, null
  br i1 %5, label %32, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds ptr, ptr %1, i64 1
  %8 = load ptr, ptr %7, align 8, !tbaa !7
  %9 = icmp eq ptr %8, null
  br i1 %9, label %32, label %10

10:                                               ; preds = %23, %6
  %11 = phi i64 [ %28, %23 ], [ 1, %6 ]
  %12 = phi ptr [ %30, %23 ], [ %8, %6 ]
  %13 = phi i32 [ %27, %23 ], [ 0, %6 ]
  %14 = phi i32 [ %24, %23 ], [ 0, %6 ]
  %15 = icmp eq i32 %13, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %10
  %17 = load i8, ptr %12, align 1, !tbaa !64
  switch i8 %17, label %18 [
    i8 45, label %23
    i8 43, label %23
  ]

18:                                               ; preds = %16
  %19 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %12, i32 noundef 61) #35
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %18, %10
  %22 = add nsw i32 %14, 1
  br label %23

23:                                               ; preds = %21, %18, %16, %16
  %24 = phi i32 [ %22, %21 ], [ %14, %16 ], [ %14, %18 ], [ %14, %16 ]
  %25 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %12, ptr noundef nonnull dereferenceable(3) @.str.36) #35
  %26 = icmp eq i32 %25, 0
  %27 = select i1 %26, i32 1, i32 %13
  %28 = add nuw nsw i64 %11, 1
  %29 = getelementptr inbounds ptr, ptr %1, i64 %28
  %30 = load ptr, ptr %29, align 8, !tbaa !7
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %10, !llvm.loop !212

32:                                               ; preds = %23, %6, %3, %0
  %33 = phi i32 [ 0, %3 ], [ 0, %0 ], [ 0, %6 ], [ %24, %23 ]
  ret i32 %33
}

; Function Attrs: nounwind optsize memory(readwrite, argmem: write) uwtable
define internal void @Strsafe_init() #7 {
  %1 = load ptr, ptr @x1a, align 8, !tbaa !7
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %21

3:                                                ; preds = %0
  %4 = tail call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #33
  store ptr %4, ptr @x1a, align 8, !tbaa !7
  %5 = icmp eq ptr %4, null
  br i1 %5, label %21, label %6

6:                                                ; preds = %3
  store i32 1024, ptr %4, align 8, !tbaa !213
  %7 = getelementptr inbounds %struct.s_x4, ptr %4, i64 0, i32 1
  store i32 0, ptr %7, align 4, !tbaa !215
  %8 = tail call noalias dereferenceable_or_null(32768) ptr @malloc(i64 noundef 32768) #33
  %9 = getelementptr inbounds %struct.s_x4, ptr %4, i64 0, i32 2
  store ptr %8, ptr %9, align 8, !tbaa !216
  %10 = icmp eq ptr %8, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %6
  tail call void @free(ptr noundef nonnull %4) #34
  store ptr null, ptr @x1a, align 8, !tbaa !7
  br label %21

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.s_x4node, ptr %8, i64 1024
  %14 = getelementptr inbounds %struct.s_x4, ptr %4, i64 0, i32 3
  store ptr %13, ptr %14, align 8, !tbaa !217
  br label %15

15:                                               ; preds = %15, %12
  %16 = phi i64 [ 0, %12 ], [ %19, %15 ]
  %17 = load ptr, ptr %14, align 8, !tbaa !217
  %18 = getelementptr inbounds ptr, ptr %17, i64 %16
  store ptr null, ptr %18, align 8, !tbaa !7
  %19 = add nuw nsw i64 %16, 1
  %20 = icmp eq i64 %19, 1024
  br i1 %20, label %21, label %15, !llvm.loop !218

21:                                               ; preds = %15, %11, %3, %0
  ret void
}

; Function Attrs: nounwind optsize memory(readwrite, argmem: write) uwtable
define internal void @Symbol_init() #7 {
  %1 = load ptr, ptr @x2a, align 8, !tbaa !7
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %21

3:                                                ; preds = %0
  %4 = tail call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #33
  store ptr %4, ptr @x2a, align 8, !tbaa !7
  %5 = icmp eq ptr %4, null
  br i1 %5, label %21, label %6

6:                                                ; preds = %3
  store i32 128, ptr %4, align 8, !tbaa !88
  %7 = getelementptr inbounds %struct.s_x4, ptr %4, i64 0, i32 1
  store i32 0, ptr %7, align 4, !tbaa !196
  %8 = tail call noalias dereferenceable_or_null(5120) ptr @malloc(i64 noundef 5120) #33
  %9 = getelementptr inbounds %struct.s_x4, ptr %4, i64 0, i32 2
  store ptr %8, ptr %9, align 8, !tbaa !219
  %10 = icmp eq ptr %8, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %6
  tail call void @free(ptr noundef nonnull %4) #34
  store ptr null, ptr @x2a, align 8, !tbaa !7
  br label %21

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.s_x3node, ptr %8, i64 128
  %14 = getelementptr inbounds %struct.s_x4, ptr %4, i64 0, i32 3
  store ptr %13, ptr %14, align 8, !tbaa !90
  br label %15

15:                                               ; preds = %15, %12
  %16 = phi i64 [ 0, %12 ], [ %19, %15 ]
  %17 = load ptr, ptr %14, align 8, !tbaa !90
  %18 = getelementptr inbounds ptr, ptr %17, i64 %16
  store ptr null, ptr %18, align 8, !tbaa !7
  %19 = add nuw nsw i64 %16, 1
  %20 = icmp eq i64 %19, 128
  br i1 %20, label %21, label %15, !llvm.loop !220

21:                                               ; preds = %15, %11, %3, %0
  ret void
}

; Function Attrs: nounwind optsize memory(readwrite, argmem: write) uwtable
define internal void @State_init() #7 {
  %1 = load ptr, ptr @x3a, align 8, !tbaa !7
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %21

3:                                                ; preds = %0
  %4 = tail call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #33
  store ptr %4, ptr @x3a, align 8, !tbaa !7
  %5 = icmp eq ptr %4, null
  br i1 %5, label %21, label %6

6:                                                ; preds = %3
  store i32 128, ptr %4, align 8, !tbaa !121
  %7 = getelementptr inbounds %struct.s_x4, ptr %4, i64 0, i32 1
  store i32 0, ptr %7, align 4, !tbaa !138
  %8 = tail call noalias dereferenceable_or_null(5120) ptr @malloc(i64 noundef 5120) #33
  %9 = getelementptr inbounds %struct.s_x4, ptr %4, i64 0, i32 2
  store ptr %8, ptr %9, align 8, !tbaa !139
  %10 = icmp eq ptr %8, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %6
  tail call void @free(ptr noundef nonnull %4) #34
  store ptr null, ptr @x3a, align 8, !tbaa !7
  br label %21

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.s_x3node, ptr %8, i64 128
  %14 = getelementptr inbounds %struct.s_x4, ptr %4, i64 0, i32 3
  store ptr %13, ptr %14, align 8, !tbaa !123
  br label %15

15:                                               ; preds = %15, %12
  %16 = phi i64 [ 0, %12 ], [ %19, %15 ]
  %17 = load ptr, ptr %14, align 8, !tbaa !123
  %18 = getelementptr inbounds ptr, ptr %17, i64 %16
  store ptr null, ptr %18, align 8, !tbaa !7
  %19 = add nuw nsw i64 %16, 1
  %20 = icmp eq i64 %19, 128
  br i1 %20, label %21, label %15, !llvm.loop !221

21:                                               ; preds = %15, %11, %3, %0
  ret void
}

; Function Attrs: nofree nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @argindex(i32 noundef %0) unnamed_addr #8 {
  %2 = load ptr, ptr @argv, align 8, !tbaa !7
  %3 = icmp eq ptr %2, null
  br i1 %3, label %37, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr %2, align 8, !tbaa !7
  %6 = icmp eq ptr %5, null
  br i1 %6, label %37, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds ptr, ptr %2, i64 1
  %9 = load ptr, ptr %8, align 8, !tbaa !7
  %10 = icmp eq ptr %9, null
  br i1 %10, label %37, label %11

11:                                               ; preds = %26, %7
  %12 = phi i64 [ %31, %26 ], [ 1, %7 ]
  %13 = phi ptr [ %33, %26 ], [ %9, %7 ]
  %14 = phi i32 [ %30, %26 ], [ 0, %7 ]
  %15 = phi i32 [ %27, %26 ], [ %0, %7 ]
  %16 = icmp eq i32 %14, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %11
  %18 = load i8, ptr %13, align 1, !tbaa !64
  switch i8 %18, label %19 [
    i8 45, label %26
    i8 43, label %26
  ]

19:                                               ; preds = %17
  %20 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %13, i32 noundef 61) #35
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %19, %11
  %23 = icmp eq i32 %15, 0
  br i1 %23, label %35, label %24

24:                                               ; preds = %22
  %25 = add nsw i32 %15, -1
  br label %26

26:                                               ; preds = %24, %19, %17, %17
  %27 = phi i32 [ %25, %24 ], [ %15, %17 ], [ %15, %19 ], [ %15, %17 ]
  %28 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %13, ptr noundef nonnull dereferenceable(3) @.str.36) #35
  %29 = icmp eq i32 %28, 0
  %30 = select i1 %29, i32 1, i32 %14
  %31 = add nuw i64 %12, 1
  %32 = getelementptr inbounds ptr, ptr %2, i64 %31
  %33 = load ptr, ptr %32, align 8, !tbaa !7
  %34 = icmp eq ptr %33, null
  br i1 %34, label %37, label %11, !llvm.loop !222

35:                                               ; preds = %22
  %.lcssa = phi i64 [ %12, %22 ]
  %36 = trunc i64 %.lcssa to i32
  br label %37

37:                                               ; preds = %35, %26, %7, %4, %1
  %38 = phi i32 [ -1, %4 ], [ -1, %1 ], [ -1, %7 ], [ %36, %35 ], [ -1, %26 ]
  ret i32 %38
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @Symbol_new(ptr noundef %0) #0 {
  %2 = tail call ptr @Symbol_find(ptr noundef %0) #32
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %25

4:                                                ; preds = %1
  %5 = tail call noalias dereferenceable_or_null(96) ptr @calloc(i64 noundef 1, i64 noundef 96) #28
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %4
  %8 = load ptr, ptr @stderr, align 8, !tbaa !7
  %9 = tail call i64 @fwrite(ptr nonnull @.str.10, i64 28, i64 1, ptr %8) #29
  tail call void @exit(i32 noundef 1) #30
  unreachable

10:                                               ; preds = %4
  %11 = tail call ptr @Strsafe(ptr noundef %0) #32
  store ptr %11, ptr %5, align 8, !tbaa !73
  %12 = tail call ptr @__ctype_b_loc() #37
  %13 = load ptr, ptr %12, align 8, !tbaa !7
  %14 = load i8, ptr %0, align 1, !tbaa !64
  %15 = sext i8 %14 to i64
  %16 = getelementptr inbounds i16, ptr %13, i64 %15
  %17 = load i16, ptr %16, align 2, !tbaa !199
  %18 = and i16 %17, 256
  %19 = icmp eq i16 %18, 0
  %20 = zext i1 %19 to i32
  %21 = getelementptr inbounds %struct.symbol, ptr %5, i64 0, i32 2
  store i32 %20, ptr %21, align 4, !tbaa !44
  %22 = getelementptr inbounds %struct.symbol, ptr %5, i64 0, i32 5
  store i32 -1, ptr %22, align 8, !tbaa !49
  %23 = getelementptr inbounds %struct.symbol, ptr %5, i64 0, i32 6
  store i32 3, ptr %23, align 4, !tbaa !181
  %24 = tail call i32 @Symbol_insert(ptr noundef nonnull %5, ptr noundef %11) #32, !range !101
  br label %25

25:                                               ; preds = %10, %1
  %26 = phi ptr [ %5, %10 ], [ %2, %1 ]
  %27 = getelementptr inbounds %struct.symbol, ptr %26, i64 0, i32 9
  %28 = load i32, ptr %27, align 4, !tbaa !194
  %29 = add nsw i32 %28, 1
  store i32 %29, ptr %27, align 4, !tbaa !194
  ret ptr %26
}

; Function Attrs: nounwind optsize uwtable
define internal void @Parse(ptr noundef %0) #0 {
  %2 = alloca %struct.pstate, align 8
  call void @llvm.lifetime.start.p0(i64 16128, ptr nonnull %2) #36
  %3 = getelementptr inbounds i8, ptr %2, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16128) %3, i8 0, i64 16120, i1 false)
  %4 = getelementptr inbounds %struct.pstate, ptr %2, i64 0, i32 4
  store ptr %0, ptr %4, align 8, !tbaa !223
  %5 = getelementptr inbounds %struct.lemon, ptr %0, i64 0, i32 32
  %6 = load ptr, ptr %5, align 8, !tbaa !71
  store ptr %6, ptr %2, align 8, !tbaa !225
  %7 = getelementptr inbounds %struct.pstate, ptr %2, i64 0, i32 2
  %8 = getelementptr inbounds %struct.pstate, ptr %2, i64 0, i32 5
  store i32 0, ptr %8, align 8, !tbaa !226
  %9 = tail call noalias ptr @fopen(ptr noundef %6, ptr noundef nonnull @.str.42) #32
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  tail call void (ptr, i32, ptr, ...) @ErrorMsg(ptr noundef %6, i32 noundef 0, ptr noundef nonnull @.str.43) #32
  %12 = getelementptr inbounds %struct.lemon, ptr %0, i64 0, i32 7
  %13 = load i32, ptr %12, align 8, !tbaa !74
  %14 = add nsw i32 %13, 1
  store i32 %14, ptr %12, align 8, !tbaa !74
  br label %1149

15:                                               ; preds = %1
  %16 = tail call i32 @fseek(ptr noundef nonnull %9, i64 noundef 0, i32 noundef 2) #32
  %17 = tail call i64 @ftell(ptr noundef nonnull %9) #32
  %18 = trunc i64 %17 to i32
  tail call void @rewind(ptr noundef nonnull %9) #32
  %19 = add nsw i32 %18, 1
  %20 = sext i32 %19 to i64
  %21 = tail call noalias ptr @malloc(i64 noundef %20) #33
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %15
  tail call void (ptr, i32, ptr, ...) @ErrorMsg(ptr noundef %6, i32 noundef 0, ptr noundef nonnull @.str.44, i32 noundef %19) #32
  %24 = getelementptr inbounds %struct.lemon, ptr %0, i64 0, i32 7
  %25 = load i32, ptr %24, align 8, !tbaa !74
  %26 = add nsw i32 %25, 1
  store i32 %26, ptr %24, align 8, !tbaa !74
  br label %1149

27:                                               ; preds = %15
  %28 = shl i64 %17, 32
  %29 = ashr exact i64 %28, 32
  %30 = tail call i64 @fread(ptr noundef nonnull %21, i64 noundef 1, i64 noundef %29, ptr noundef nonnull %9) #32
  %31 = icmp eq i64 %30, %29
  br i1 %31, label %36, label %32

32:                                               ; preds = %27
  tail call void (ptr, i32, ptr, ...) @ErrorMsg(ptr noundef %6, i32 noundef 0, ptr noundef nonnull @.str.45, i32 noundef %18) #32
  tail call void @free(ptr noundef nonnull %21) #34
  %33 = getelementptr inbounds %struct.lemon, ptr %0, i64 0, i32 7
  %34 = load i32, ptr %33, align 8, !tbaa !74
  %35 = add nsw i32 %34, 1
  store i32 %35, ptr %33, align 8, !tbaa !74
  br label %1149

36:                                               ; preds = %27
  %37 = tail call i32 @fclose(ptr noundef nonnull %9) #32
  %38 = getelementptr inbounds i8, ptr %21, i64 %29
  store i8 0, ptr %38, align 1, !tbaa !64
  %39 = load i32, ptr @nDefine, align 4
  %40 = icmp sgt i32 %39, 0
  %41 = load ptr, ptr @azDefine, align 8
  %42 = sext i32 %39 to i64
  %43 = zext i32 %39 to i64
  br label %44

44:                                               ; preds = %217, %36
  %45 = phi i64 [ %223, %217 ], [ 7, %36 ]
  %46 = phi i64 [ %222, %217 ], [ 0, %36 ]
  %47 = phi i32 [ %219, %217 ], [ 0, %36 ]
  %48 = phi i32 [ %220, %217 ], [ 0, %36 ]
  %49 = phi i32 [ %218, %217 ], [ 1, %36 ]
  %50 = phi i32 [ %221, %217 ], [ 1, %36 ]
  %51 = getelementptr inbounds i8, ptr %21, i64 %46
  %52 = load i8, ptr %51, align 1, !tbaa !64
  switch i8 %52, label %217 [
    i8 0, label %224
    i8 10, label %53
    i8 37, label %55
  ]

53:                                               ; preds = %44
  %54 = add nsw i32 %49, 1
  br label %217

55:                                               ; preds = %44
  %56 = icmp eq i64 %46, 0
  br i1 %56, label %63, label %57

57:                                               ; preds = %55
  %58 = add i64 %46, 4294967295
  %59 = and i64 %58, 4294967295
  %60 = getelementptr inbounds i8, ptr %21, i64 %59
  %61 = load i8, ptr %60, align 1, !tbaa !64
  %62 = icmp eq i8 %61, 10
  br i1 %62, label %63, label %217

63:                                               ; preds = %57, %55
  %64 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %51, ptr noundef nonnull dereferenceable(7) @.str.173, i64 noundef 6) #35
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %103

66:                                               ; preds = %63
  %67 = tail call ptr @__ctype_b_loc() #37
  %68 = load ptr, ptr %67, align 8, !tbaa !7
  %69 = add i64 %46, 6
  %70 = and i64 %69, 4294967295
  %71 = getelementptr inbounds i8, ptr %21, i64 %70
  %72 = load i8, ptr %71, align 1, !tbaa !64
  %73 = sext i8 %72 to i64
  %74 = getelementptr inbounds i16, ptr %68, i64 %73
  %75 = load i16, ptr %74, align 2, !tbaa !199
  %76 = and i16 %75, 8192
  %77 = icmp eq i16 %76, 0
  br i1 %77, label %103, label %78

78:                                               ; preds = %66
  %79 = icmp eq i32 %47, 0
  br i1 %79, label %95, label %80

80:                                               ; preds = %78
  %81 = add nsw i32 %47, -1
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %95

83:                                               ; preds = %80
  %84 = sext i32 %48 to i64
  %85 = icmp sgt i64 %46, %84
  br i1 %85, label %86, label %95

86:                                               ; preds = %92, %83
  %87 = phi i64 [ %93, %92 ], [ %84, %83 ]
  %88 = getelementptr inbounds i8, ptr %21, i64 %87
  %89 = load i8, ptr %88, align 1, !tbaa !64
  %90 = icmp eq i8 %89, 10
  br i1 %90, label %92, label %91

91:                                               ; preds = %86
  store i8 32, ptr %88, align 1, !tbaa !64
  br label %92

92:                                               ; preds = %91, %86
  %93 = add nsw i64 %87, 1
  %94 = icmp eq i64 %93, %46
  br i1 %94, label %95, label %86, !llvm.loop !227

95:                                               ; preds = %92, %83, %80, %78
  %96 = phi i32 [ %81, %80 ], [ 0, %78 ], [ 0, %83 ], [ 0, %92 ]
  br label %97

97:                                               ; preds = %101, %95
  %98 = phi i64 [ %102, %101 ], [ %46, %95 ]
  %99 = getelementptr inbounds i8, ptr %21, i64 %98
  %100 = load i8, ptr %99, align 1, !tbaa !64
  switch i8 %100, label %101 [
    i8 0, label %217
    i8 10, label %217
  ]

101:                                              ; preds = %97
  store i8 32, ptr %99, align 1, !tbaa !64
  %102 = add nuw i64 %98, 1
  br label %97, !llvm.loop !228

103:                                              ; preds = %66, %63
  %104 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %51, ptr noundef nonnull dereferenceable(7) @.str.174, i64 noundef 6) #35
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %118

106:                                              ; preds = %103
  %107 = tail call ptr @__ctype_b_loc() #37
  %108 = load ptr, ptr %107, align 8, !tbaa !7
  %109 = add i64 %46, 6
  %110 = and i64 %109, 4294967295
  %111 = getelementptr inbounds i8, ptr %21, i64 %110
  %112 = load i8, ptr %111, align 1, !tbaa !64
  %113 = sext i8 %112 to i64
  %114 = getelementptr inbounds i16, ptr %108, i64 %113
  %115 = load i16, ptr %114, align 2, !tbaa !199
  %116 = and i16 %115, 8192
  %117 = icmp eq i16 %116, 0
  br i1 %117, label %118, label %133

118:                                              ; preds = %106, %103
  %119 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %51, ptr noundef nonnull dereferenceable(8) @.str.175, i64 noundef 7) #35
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %217

121:                                              ; preds = %118
  %122 = tail call ptr @__ctype_b_loc() #37
  %123 = load ptr, ptr %122, align 8, !tbaa !7
  %124 = add i64 %46, 7
  %125 = and i64 %124, 4294967295
  %126 = getelementptr inbounds i8, ptr %21, i64 %125
  %127 = load i8, ptr %126, align 1, !tbaa !64
  %128 = sext i8 %127 to i64
  %129 = getelementptr inbounds i16, ptr %123, i64 %128
  %130 = load i16, ptr %129, align 2, !tbaa !199
  %131 = and i16 %130, 8192
  %132 = icmp eq i16 %131, 0
  br i1 %132, label %217, label %133

133:                                              ; preds = %121, %106
  %134 = icmp eq i32 %47, 0
  br i1 %134, label %137, label %135

135:                                              ; preds = %133
  %136 = add nsw i32 %47, 1
  br label %205

137:                                              ; preds = %133
  %138 = tail call ptr @__ctype_b_loc() #37
  %139 = load ptr, ptr %138, align 8, !tbaa !7
  br label %140

140:                                              ; preds = %140, %137
  %141 = phi i64 [ %149, %140 ], [ %45, %137 ]
  %142 = getelementptr inbounds i8, ptr %21, i64 %141
  %143 = load i8, ptr %142, align 1, !tbaa !64
  %144 = sext i8 %143 to i64
  %145 = getelementptr inbounds i16, ptr %139, i64 %144
  %146 = load i16, ptr %145, align 2, !tbaa !199
  %147 = and i16 %146, 8192
  %148 = icmp eq i16 %147, 0
  %149 = add i64 %141, 1
  br i1 %148, label %150, label %140, !llvm.loop !229

150:                                              ; preds = %140
  %.lcssa36 = phi i64 [ %141, %140 ]
  %151 = getelementptr inbounds i8, ptr %21, i64 %.lcssa36
  %152 = and i64 %.lcssa36, 4294967295
  %153 = getelementptr inbounds i8, ptr %21, i64 %152
  %154 = load i8, ptr %153, align 1, !tbaa !64
  %155 = icmp eq i8 %154, 0
  br i1 %155, label %174, label %156

156:                                              ; preds = %165, %150
  %157 = phi i64 [ %166, %165 ], [ 0, %150 ]
  %158 = phi i8 [ %170, %165 ], [ %154, %150 ]
  %159 = phi i32 [ %167, %165 ], [ 0, %150 ]
  %160 = sext i8 %158 to i64
  %161 = getelementptr inbounds i16, ptr %139, i64 %160
  %162 = load i16, ptr %161, align 2, !tbaa !199
  %163 = and i16 %162, 8192
  %164 = icmp eq i16 %163, 0
  br i1 %164, label %165, label %172

165:                                              ; preds = %156
  %166 = add nuw i64 %157, 1
  %167 = add nuw nsw i32 %159, 1
  %168 = add nuw nsw i64 %166, %152
  %169 = getelementptr inbounds i8, ptr %21, i64 %168
  %170 = load i8, ptr %169, align 1, !tbaa !64
  %171 = icmp eq i8 %170, 0
  br i1 %171, label %174, label %156, !llvm.loop !230

172:                                              ; preds = %156
  %.lcssa37 = phi i64 [ %157, %156 ]
  %173 = trunc i64 %.lcssa37 to i32
  br label %174

174:                                              ; preds = %172, %165, %150
  %175 = phi i32 [ 0, %150 ], [ %173, %172 ], [ %167, %165 ]
  br i1 %40, label %176, label %192

176:                                              ; preds = %174
  %177 = zext i32 %175 to i64
  br label %178

178:                                              ; preds = %188, %176
  %179 = phi i64 [ 0, %176 ], [ %189, %188 ]
  %180 = phi i1 [ true, %176 ], [ %190, %188 ]
  %181 = getelementptr inbounds ptr, ptr %41, i64 %179
  %182 = load ptr, ptr %181, align 8, !tbaa !7
  %183 = tail call i32 @strncmp(ptr noundef %182, ptr noundef nonnull %151, i64 noundef %177) #35
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %185, label %188

185:                                              ; preds = %178
  %186 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %182) #35
  %187 = icmp eq i64 %186, %177
  br i1 %187, label %192, label %188

188:                                              ; preds = %185, %178
  %189 = add nuw nsw i64 %179, 1
  %190 = icmp slt i64 %189, %42
  %191 = icmp eq i64 %189, %43
  br i1 %191, label %192, label %178, !llvm.loop !231

192:                                              ; preds = %188, %185, %174
  %193 = phi i1 [ false, %174 ], [ %190, %188 ], [ %180, %185 ]
  %194 = phi i32 [ 1, %174 ], [ 1, %188 ], [ 0, %185 ]
  %195 = add i64 %46, 3
  %196 = and i64 %195, 4294967295
  %197 = getelementptr inbounds i8, ptr %21, i64 %196
  %198 = load i8, ptr %197, align 1, !tbaa !64
  %199 = icmp eq i8 %198, 110
  %200 = zext i1 %193 to i32
  %201 = select i1 %199, i32 %200, i32 %194
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %205, label %203

203:                                              ; preds = %192
  %204 = trunc i64 %46 to i32
  br label %205

205:                                              ; preds = %203, %192, %135
  %206 = phi i32 [ %136, %135 ], [ 1, %203 ], [ 0, %192 ]
  %207 = phi i32 [ %48, %135 ], [ %204, %203 ], [ %48, %192 ]
  %208 = phi i32 [ %50, %135 ], [ %49, %203 ], [ %50, %192 ]
  br label %209

209:                                              ; preds = %212, %205
  %210 = phi i8 [ %216, %212 ], [ 37, %205 ]
  %211 = phi i64 [ %214, %212 ], [ %46, %205 ]
  switch i8 %210, label %212 [
    i8 0, label %217
    i8 10, label %217
  ]

212:                                              ; preds = %209
  %213 = getelementptr inbounds i8, ptr %21, i64 %211
  store i8 32, ptr %213, align 1, !tbaa !64
  %214 = add nuw i64 %211, 1
  %215 = getelementptr inbounds i8, ptr %21, i64 %214
  %216 = load i8, ptr %215, align 1, !tbaa !64
  br label %209, !llvm.loop !232

217:                                              ; preds = %209, %209, %121, %118, %97, %97, %57, %53, %44
  %218 = phi i32 [ %49, %57 ], [ %49, %121 ], [ %49, %118 ], [ %54, %53 ], [ %49, %44 ], [ %49, %209 ], [ %49, %209 ], [ %49, %97 ], [ %49, %97 ]
  %219 = phi i32 [ %47, %57 ], [ %47, %121 ], [ %47, %118 ], [ %47, %53 ], [ %47, %44 ], [ %206, %209 ], [ %206, %209 ], [ %96, %97 ], [ %96, %97 ]
  %220 = phi i32 [ %48, %57 ], [ %48, %121 ], [ %48, %118 ], [ %48, %53 ], [ %48, %44 ], [ %207, %209 ], [ %207, %209 ], [ %48, %97 ], [ %48, %97 ]
  %221 = phi i32 [ %50, %57 ], [ %50, %121 ], [ %50, %118 ], [ %50, %53 ], [ %50, %44 ], [ %208, %209 ], [ %208, %209 ], [ %50, %97 ], [ %50, %97 ]
  %222 = add nuw i64 %46, 1
  %223 = add i64 %45, 1
  br label %44, !llvm.loop !233

224:                                              ; preds = %44
  %.lcssa39 = phi i32 [ %47, %44 ]
  %.lcssa38 = phi i32 [ %50, %44 ]
  %225 = icmp eq i32 %.lcssa39, 0
  br i1 %225, label %226, label %241

226:                                              ; preds = %224
  %227 = getelementptr inbounds %struct.pstate, ptr %2, i64 0, i32 3
  %228 = getelementptr inbounds %struct.pstate, ptr %2, i64 0, i32 1
  %229 = getelementptr inbounds %struct.pstate, ptr %2, i64 0, i32 6
  %230 = getelementptr inbounds %struct.pstate, ptr %2, i64 0, i32 14
  %231 = getelementptr inbounds %struct.pstate, ptr %2, i64 0, i32 13
  %232 = getelementptr inbounds %struct.pstate, ptr %2, i64 0, i32 15
  %233 = getelementptr inbounds %struct.pstate, ptr %2, i64 0, i32 17
  %234 = getelementptr inbounds %struct.pstate, ptr %2, i64 0, i32 16
  %235 = getelementptr inbounds %struct.pstate, ptr %2, i64 0, i32 8
  %236 = getelementptr inbounds %struct.pstate, ptr %2, i64 0, i32 9
  %237 = getelementptr inbounds %struct.pstate, ptr %2, i64 0, i32 7
  %238 = getelementptr inbounds %struct.pstate, ptr %2, i64 0, i32 18
  %239 = getelementptr inbounds %struct.pstate, ptr %2, i64 0, i32 19
  %240 = getelementptr inbounds %struct.pstate, ptr %2, i64 0, i32 12
  br label %244

241:                                              ; preds = %224
  %242 = load ptr, ptr @stderr, align 8, !tbaa !7
  %243 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %242, ptr noundef nonnull @.str.176, i32 noundef %.lcssa38) #38
  tail call void @exit(i32 noundef 1) #30
  unreachable

244:                                              ; preds = %1141, %226
  %245 = phi ptr [ %21, %226 ], [ %1142, %1141 ]
  %246 = phi i32 [ 1, %226 ], [ %1143, %1141 ]
  %247 = load i8, ptr %245, align 1, !tbaa !64
  br label %249

248:                                              ; preds = %273, %273
  %.lcssa1 = phi ptr [ %274, %273 ], [ %274, %273 ]
  %.lcssa = phi i8 [ %275, %273 ], [ %275, %273 ]
  br label %249

249:                                              ; preds = %248, %244
  %250 = phi i8 [ %247, %244 ], [ %.lcssa, %248 ]
  %251 = phi ptr [ %245, %244 ], [ %.lcssa1, %248 ]
  %252 = phi i32 [ %246, %244 ], [ %256, %248 ]
  switch i8 %250, label %255 [
    i8 0, label %1144
    i8 10, label %253
  ]

253:                                              ; preds = %249
  %254 = add nsw i32 %252, 1
  br label %255

255:                                              ; preds = %253, %249
  %256 = phi i32 [ %254, %253 ], [ %252, %249 ]
  %257 = tail call ptr @__ctype_b_loc() #37
  %258 = load ptr, ptr %257, align 8, !tbaa !7
  %259 = sext i8 %250 to i64
  %260 = getelementptr inbounds i16, ptr %258, i64 %259
  %261 = load i16, ptr %260, align 2, !tbaa !199
  %262 = and i16 %261, 8192
  %263 = icmp eq i16 %262, 0
  br i1 %263, label %266, label %264

264:                                              ; preds = %255
  %.lcssa20 = phi i32 [ %256, %255 ]
  %.lcssa3 = phi ptr [ %251, %255 ]
  %265 = getelementptr inbounds i8, ptr %.lcssa3, i64 1
  br label %1141

266:                                              ; preds = %255
  %267 = icmp eq i8 %250, 47
  br i1 %267, label %268, label %303

268:                                              ; preds = %266
  %269 = getelementptr inbounds i8, ptr %251, i64 1
  %270 = load i8, ptr %269, align 1, !tbaa !64
  switch i8 %270, label %278 [
    i8 47, label %271
    i8 42, label %279
  ]

271:                                              ; preds = %268
  %272 = getelementptr inbounds i8, ptr %251, i64 2
  br label %273

273:                                              ; preds = %276, %271
  %274 = phi ptr [ %272, %271 ], [ %277, %276 ]
  %275 = load i8, ptr %274, align 1, !tbaa !64
  switch i8 %275, label %276 [
    i8 10, label %248
    i8 0, label %248
  ]

276:                                              ; preds = %273
  %277 = getelementptr inbounds i8, ptr %274, i64 1
  br label %273, !llvm.loop !234

278:                                              ; preds = %268
  %.lcssa22 = phi i32 [ %256, %268 ]
  %.lcssa18 = phi ptr [ %257, %268 ]
  %.lcssa14 = phi i64 [ %259, %268 ]
  %.lcssa10 = phi i8 [ %250, %268 ]
  %.lcssa5 = phi ptr [ %251, %268 ]
  store ptr %.lcssa5, ptr %227, align 8, !tbaa !235
  store i32 %.lcssa22, ptr %228, align 8, !tbaa !236
  br label %407

279:                                              ; preds = %268
  %.lcssa23 = phi i32 [ %256, %268 ]
  %.lcssa6 = phi ptr [ %251, %268 ]
  %280 = getelementptr inbounds i8, ptr %.lcssa6, i64 2
  %281 = load i8, ptr %280, align 1, !tbaa !64
  %282 = icmp eq i8 %281, 0
  br i1 %282, label %298, label %283

283:                                              ; preds = %293, %279
  %284 = phi i8 [ %296, %293 ], [ %281, %279 ]
  %285 = phi i32 [ %294, %293 ], [ %.lcssa23, %279 ]
  %286 = phi ptr [ %295, %293 ], [ %280, %279 ]
  switch i8 %284, label %293 [
    i8 47, label %287
    i8 10, label %291
  ]

287:                                              ; preds = %283
  %288 = getelementptr inbounds i8, ptr %286, i64 -1
  %289 = load i8, ptr %288, align 1, !tbaa !64
  %290 = icmp eq i8 %289, 42
  br i1 %290, label %298, label %293

291:                                              ; preds = %283
  %292 = add nsw i32 %285, 1
  br label %293

293:                                              ; preds = %291, %287, %283
  %294 = phi i32 [ %292, %291 ], [ %285, %283 ], [ %285, %287 ]
  %295 = getelementptr inbounds i8, ptr %286, i64 1
  %296 = load i8, ptr %295, align 1, !tbaa !64
  %297 = icmp eq i8 %296, 0
  br i1 %297, label %298, label %283, !llvm.loop !237

298:                                              ; preds = %293, %287, %279
  %299 = phi ptr [ %280, %279 ], [ %295, %293 ], [ %286, %287 ]
  %300 = phi i32 [ %.lcssa23, %279 ], [ %294, %293 ], [ %285, %287 ]
  %301 = phi i64 [ 0, %279 ], [ 0, %293 ], [ 1, %287 ]
  %302 = getelementptr inbounds i8, ptr %299, i64 %301
  br label %1141

303:                                              ; preds = %266
  %.lcssa21 = phi i32 [ %256, %266 ]
  %.lcssa17 = phi ptr [ %257, %266 ]
  %.lcssa13 = phi i64 [ %259, %266 ]
  %.lcssa9 = phi i8 [ %250, %266 ]
  %.lcssa4 = phi ptr [ %251, %266 ]
  store ptr %.lcssa4, ptr %227, align 8, !tbaa !235
  store i32 %.lcssa21, ptr %228, align 8, !tbaa !236
  switch i8 %.lcssa9, label %407 [
    i8 34, label %314
    i8 123, label %304
  ]

304:                                              ; preds = %303
  %305 = getelementptr inbounds i8, ptr %.lcssa4, i64 1
  %306 = load i8, ptr %305, align 1, !tbaa !64
  %307 = icmp eq i8 %306, 0
  br i1 %307, label %399, label %323

308:                                              ; preds = %314, %308
  %309 = phi ptr [ %310, %308 ], [ %315, %314 ]
  %310 = getelementptr inbounds i8, ptr %309, i64 1
  %311 = load i8, ptr %310, align 1, !tbaa !64
  switch i8 %311, label %308 [
    i8 10, label %312
    i8 0, label %317
    i8 34, label %321
  ], !llvm.loop !238

312:                                              ; preds = %308
  %.lcssa28 = phi ptr [ %310, %308 ]
  %313 = add nsw i32 %316, 1
  br label %314, !llvm.loop !238

314:                                              ; preds = %312, %303
  %315 = phi ptr [ %.lcssa28, %312 ], [ %.lcssa4, %303 ]
  %316 = phi i32 [ %313, %312 ], [ %.lcssa21, %303 ]
  br label %308

317:                                              ; preds = %308
  %.lcssa34 = phi i32 [ %316, %308 ]
  %.lcssa29 = phi ptr [ %310, %308 ]
  %318 = load ptr, ptr %2, align 8, !tbaa !225
  tail call void (ptr, i32, ptr, ...) @ErrorMsg(ptr noundef %318, i32 noundef 0, ptr noundef nonnull @.str.46) #32
  %319 = load i32, ptr %7, align 4, !tbaa !239
  %320 = add nsw i32 %319, 1
  store i32 %320, ptr %7, align 4, !tbaa !239
  br label %474

321:                                              ; preds = %308
  %.lcssa35 = phi i32 [ %316, %308 ]
  %.lcssa33 = phi ptr [ %309, %308 ]
  %.lcssa30 = phi ptr [ %310, %308 ]
  %322 = getelementptr inbounds i8, ptr %.lcssa33, i64 2
  br label %474

323:                                              ; preds = %392, %304
  %324 = phi i8 [ %397, %392 ], [ %306, %304 ]
  %325 = phi ptr [ %396, %392 ], [ %305, %304 ]
  %326 = phi i32 [ %395, %392 ], [ %.lcssa21, %304 ]
  %327 = phi i32 [ %394, %392 ], [ 1, %304 ]
  %328 = phi ptr [ %393, %392 ], [ %.lcssa4, %304 ]
  %329 = icmp sgt i32 %327, 1
  %330 = icmp ne i8 %324, 125
  %331 = or i1 %329, %330
  br i1 %331, label %332, label %405

332:                                              ; preds = %323
  switch i8 %324, label %392 [
    i8 10, label %333
    i8 123, label %335
    i8 125, label %337
    i8 47, label %339
    i8 39, label %371
    i8 34, label %371
  ]

333:                                              ; preds = %332
  %334 = add nsw i32 %326, 1
  br label %392

335:                                              ; preds = %332
  %336 = add nsw i32 %327, 1
  br label %392

337:                                              ; preds = %332
  %338 = add nsw i32 %327, -1
  br label %392

339:                                              ; preds = %332
  %340 = getelementptr inbounds i8, ptr %328, i64 2
  %341 = load i8, ptr %340, align 1, !tbaa !64
  switch i8 %341, label %392 [
    i8 42, label %342
    i8 47, label %362
  ]

342:                                              ; preds = %339
  %343 = getelementptr inbounds i8, ptr %328, i64 3
  %344 = load i8, ptr %343, align 1, !tbaa !64
  %345 = icmp eq i8 %344, 0
  br i1 %345, label %392, label %346

346:                                              ; preds = %354, %342
  %347 = phi i8 [ %360, %354 ], [ %344, %342 ]
  %348 = phi i32 [ %358, %354 ], [ %326, %342 ]
  %349 = phi i32 [ %355, %354 ], [ 0, %342 ]
  %350 = phi ptr [ %359, %354 ], [ %343, %342 ]
  %351 = icmp ne i8 %347, 47
  %352 = icmp ne i32 %349, 42
  %353 = or i1 %352, %351
  br i1 %353, label %354, label %392

354:                                              ; preds = %346
  %355 = sext i8 %347 to i32
  %356 = icmp eq i8 %347, 10
  %357 = zext i1 %356 to i32
  %358 = add nsw i32 %348, %357
  %359 = getelementptr inbounds i8, ptr %350, i64 1
  %360 = load i8, ptr %359, align 1, !tbaa !64
  %361 = icmp eq i8 %360, 0
  br i1 %361, label %392, label %346, !llvm.loop !240

362:                                              ; preds = %339
  %363 = getelementptr inbounds i8, ptr %328, i64 3
  br label %364

364:                                              ; preds = %367, %362
  %365 = phi ptr [ %363, %362 ], [ %368, %367 ]
  %366 = load i8, ptr %365, align 1, !tbaa !64
  switch i8 %366, label %367 [
    i8 0, label %392
    i8 10, label %369
  ]

367:                                              ; preds = %364
  %368 = getelementptr inbounds i8, ptr %365, i64 1
  br label %364, !llvm.loop !241

369:                                              ; preds = %364
  %.lcssa24 = phi ptr [ %365, %364 ]
  %370 = add nsw i32 %326, 1
  br label %392

371:                                              ; preds = %332, %332
  %372 = getelementptr inbounds i8, ptr %328, i64 2
  %373 = load i8, ptr %372, align 1, !tbaa !64
  %374 = icmp eq i8 %373, 0
  br i1 %374, label %392, label %375

375:                                              ; preds = %383, %371
  %376 = phi i8 [ %390, %383 ], [ %373, %371 ]
  %377 = phi i32 [ %388, %383 ], [ 0, %371 ]
  %378 = phi i32 [ %387, %383 ], [ %326, %371 ]
  %379 = phi ptr [ %389, %383 ], [ %372, %371 ]
  %380 = icmp ne i8 %376, %324
  %381 = icmp eq i32 %377, 92
  %382 = or i1 %381, %380
  br i1 %382, label %383, label %392

383:                                              ; preds = %375
  %384 = sext i8 %376 to i32
  %385 = icmp eq i8 %376, 10
  %386 = zext i1 %385 to i32
  %387 = add nsw i32 %378, %386
  %388 = select i1 %381, i32 0, i32 %384
  %389 = getelementptr inbounds i8, ptr %379, i64 1
  %390 = load i8, ptr %389, align 1, !tbaa !64
  %391 = icmp eq i8 %390, 0
  br i1 %391, label %392, label %375, !llvm.loop !242

392:                                              ; preds = %383, %375, %371, %369, %364, %354, %346, %342, %339, %337, %335, %333, %332
  %393 = phi ptr [ %325, %333 ], [ %325, %335 ], [ %325, %337 ], [ %.lcssa24, %369 ], [ %325, %339 ], [ %325, %332 ], [ %343, %342 ], [ %372, %371 ], [ %359, %354 ], [ %350, %346 ], [ %365, %364 ], [ %389, %383 ], [ %379, %375 ]
  %394 = phi i32 [ %327, %333 ], [ %336, %335 ], [ %338, %337 ], [ %327, %369 ], [ %327, %339 ], [ %327, %332 ], [ %327, %342 ], [ %327, %371 ], [ %327, %346 ], [ %327, %354 ], [ %327, %364 ], [ %327, %375 ], [ %327, %383 ]
  %395 = phi i32 [ %334, %333 ], [ %326, %335 ], [ %326, %337 ], [ %370, %369 ], [ %326, %339 ], [ %326, %332 ], [ %326, %342 ], [ %326, %371 ], [ %358, %354 ], [ %348, %346 ], [ %326, %364 ], [ %387, %383 ], [ %378, %375 ]
  %396 = getelementptr inbounds i8, ptr %393, i64 1
  %397 = load i8, ptr %396, align 1, !tbaa !64
  %398 = icmp eq i8 %397, 0
  br i1 %398, label %399, label %323, !llvm.loop !243

399:                                              ; preds = %392, %304
  %400 = phi i32 [ %.lcssa21, %304 ], [ %395, %392 ]
  %401 = phi ptr [ %305, %304 ], [ %396, %392 ]
  %402 = load ptr, ptr %2, align 8, !tbaa !225
  tail call void (ptr, i32, ptr, ...) @ErrorMsg(ptr noundef %402, i32 noundef %.lcssa21, ptr noundef nonnull @.str.47) #32
  %403 = load i32, ptr %7, align 4, !tbaa !239
  %404 = add nsw i32 %403, 1
  store i32 %404, ptr %7, align 4, !tbaa !239
  br label %474

405:                                              ; preds = %323
  %.lcssa27 = phi ptr [ %325, %323 ]
  %.lcssa26 = phi i32 [ %326, %323 ]
  %.lcssa25 = phi ptr [ %328, %323 ]
  %406 = getelementptr inbounds i8, ptr %.lcssa25, i64 2
  br label %474

407:                                              ; preds = %303, %278
  %408 = phi i32 [ %.lcssa21, %303 ], [ %.lcssa22, %278 ]
  %409 = phi ptr [ %.lcssa17, %303 ], [ %.lcssa18, %278 ]
  %410 = phi i64 [ %.lcssa13, %303 ], [ %.lcssa14, %278 ]
  %411 = phi i8 [ %.lcssa9, %303 ], [ %.lcssa10, %278 ]
  %412 = phi ptr [ %.lcssa4, %303 ], [ %.lcssa5, %278 ]
  %413 = load ptr, ptr %409, align 8, !tbaa !7
  %414 = getelementptr inbounds i16, ptr %413, i64 %410
  %415 = load i16, ptr %414, align 2, !tbaa !199
  %416 = and i16 %415, 8
  %417 = icmp eq i16 %416, 0
  br i1 %417, label %435, label %418

418:                                              ; preds = %407
  %419 = load i8, ptr %412, align 1, !tbaa !64
  %420 = icmp eq i8 %419, 0
  br i1 %420, label %474, label %421

421:                                              ; preds = %431, %418
  %422 = phi i8 [ %433, %431 ], [ %419, %418 ]
  %423 = phi ptr [ %432, %431 ], [ %412, %418 ]
  %424 = sext i8 %422 to i64
  %425 = getelementptr inbounds i16, ptr %413, i64 %424
  %426 = load i16, ptr %425, align 2, !tbaa !199
  %427 = and i16 %426, 8
  %428 = icmp ne i16 %427, 0
  %429 = icmp eq i8 %422, 95
  %430 = or i1 %429, %428
  br i1 %430, label %431, label %474

431:                                              ; preds = %421
  %432 = getelementptr inbounds i8, ptr %423, i64 1
  %433 = load i8, ptr %432, align 1, !tbaa !64
  %434 = icmp eq i8 %433, 0
  br i1 %434, label %474, label %421, !llvm.loop !244

435:                                              ; preds = %407
  switch i8 %411, label %472 [
    i8 58, label %436
    i8 124, label %446
    i8 47, label %446
  ]

436:                                              ; preds = %435
  %437 = getelementptr inbounds i8, ptr %412, i64 1
  %438 = load i8, ptr %437, align 1, !tbaa !64
  %439 = icmp eq i8 %438, 58
  br i1 %439, label %440, label %472

440:                                              ; preds = %436
  %441 = getelementptr inbounds i8, ptr %412, i64 2
  %442 = load i8, ptr %441, align 1, !tbaa !64
  %443 = icmp eq i8 %442, 61
  br i1 %443, label %444, label %472

444:                                              ; preds = %440
  %445 = getelementptr inbounds i8, ptr %412, i64 3
  br label %474

446:                                              ; preds = %435, %435
  %447 = getelementptr inbounds i8, ptr %412, i64 1
  %448 = load i8, ptr %447, align 1, !tbaa !64
  %449 = sext i8 %448 to i64
  %450 = getelementptr inbounds i16, ptr %413, i64 %449
  %451 = load i16, ptr %450, align 2, !tbaa !199
  %452 = and i16 %451, 1024
  %453 = icmp eq i16 %452, 0
  br i1 %453, label %472, label %454

454:                                              ; preds = %446
  %455 = getelementptr inbounds i8, ptr %412, i64 2
  %456 = load i8, ptr %455, align 1, !tbaa !64
  %457 = icmp eq i8 %456, 0
  br i1 %457, label %474, label %458

458:                                              ; preds = %468, %454
  %459 = phi i8 [ %470, %468 ], [ %456, %454 ]
  %460 = phi ptr [ %469, %468 ], [ %455, %454 ]
  %461 = sext i8 %459 to i64
  %462 = getelementptr inbounds i16, ptr %413, i64 %461
  %463 = load i16, ptr %462, align 2, !tbaa !199
  %464 = and i16 %463, 8
  %465 = icmp ne i16 %464, 0
  %466 = icmp eq i8 %459, 95
  %467 = or i1 %466, %465
  br i1 %467, label %468, label %474

468:                                              ; preds = %458
  %469 = getelementptr inbounds i8, ptr %460, i64 1
  %470 = load i8, ptr %469, align 1, !tbaa !64
  %471 = icmp eq i8 %470, 0
  br i1 %471, label %474, label %458, !llvm.loop !245

472:                                              ; preds = %446, %440, %436, %435
  %473 = getelementptr inbounds i8, ptr %412, i64 1
  br label %474

474:                                              ; preds = %472, %468, %458, %454, %444, %431, %421, %418, %405, %399, %321, %317
  %475 = phi ptr [ %.lcssa17, %317 ], [ %.lcssa17, %321 ], [ %409, %444 ], [ %409, %472 ], [ %.lcssa17, %405 ], [ %.lcssa17, %399 ], [ %409, %454 ], [ %409, %418 ], [ %409, %458 ], [ %409, %468 ], [ %409, %421 ], [ %409, %431 ]
  %476 = phi ptr [ %.lcssa29, %317 ], [ %.lcssa30, %321 ], [ %445, %444 ], [ %473, %472 ], [ %.lcssa27, %405 ], [ %401, %399 ], [ %455, %454 ], [ %412, %418 ], [ %460, %458 ], [ %469, %468 ], [ %423, %421 ], [ %432, %431 ]
  %477 = phi ptr [ %.lcssa29, %317 ], [ %322, %321 ], [ %445, %444 ], [ %473, %472 ], [ %406, %405 ], [ %401, %399 ], [ %455, %454 ], [ %412, %418 ], [ %460, %458 ], [ %469, %468 ], [ %423, %421 ], [ %432, %431 ]
  %478 = phi i32 [ %.lcssa34, %317 ], [ %.lcssa35, %321 ], [ %408, %444 ], [ %408, %472 ], [ %.lcssa26, %405 ], [ %400, %399 ], [ %408, %454 ], [ %408, %418 ], [ %408, %458 ], [ %408, %468 ], [ %408, %421 ], [ %408, %431 ]
  %479 = load i8, ptr %476, align 1, !tbaa !64
  store i8 0, ptr %476, align 1, !tbaa !64
  %480 = load ptr, ptr %227, align 8, !tbaa !235
  %481 = tail call ptr @Strsafe(ptr noundef %480) #32
  %482 = load i32, ptr %8, align 8, !tbaa !226
  switch i32 %482, label %1140 [
    i32 0, label %483
    i32 1, label %486
    i32 12, label %527
    i32 13, label %560
    i32 5, label %569
    i32 7, label %588
    i32 8, label %604
    i32 9, label %614
    i32 6, label %634
    i32 10, label %786
    i32 11, label %810
    i32 2, label %820
    i32 16, label %970
    i32 17, label %987
    i32 4, label %1003
    i32 3, label %1032
    i32 18, label %1070
    i32 19, label %1103
    i32 14, label %1131
    i32 15, label %1131
  ]

483:                                              ; preds = %474
  store ptr null, ptr %240, align 8, !tbaa !246
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %233, i8 0, i64 20, i1 false)
  %484 = load ptr, ptr %4, align 8, !tbaa !223
  %485 = getelementptr inbounds %struct.lemon, ptr %484, i64 0, i32 3
  store i32 0, ptr %485, align 4, !tbaa !195
  br label %486

486:                                              ; preds = %483, %474
  %487 = load i8, ptr %481, align 1, !tbaa !64
  %488 = icmp eq i8 %487, 37
  br i1 %488, label %489, label %490

489:                                              ; preds = %486
  store i32 2, ptr %8, align 8, !tbaa !226
  br label %1140

490:                                              ; preds = %486
  %491 = load ptr, ptr %475, align 8, !tbaa !7
  %492 = sext i8 %487 to i64
  %493 = getelementptr inbounds i16, ptr %491, i64 %492
  %494 = load i16, ptr %493, align 2, !tbaa !199
  %495 = and i16 %494, 512
  %496 = icmp eq i16 %495, 0
  br i1 %496, label %499, label %497

497:                                              ; preds = %490
  %498 = tail call ptr @Symbol_new(ptr noundef nonnull %481) #32
  store ptr %498, ptr %237, align 8, !tbaa !247
  store i32 0, ptr %236, align 8, !tbaa !248
  store ptr null, ptr %235, align 8, !tbaa !249
  store i32 5, ptr %8, align 8, !tbaa !226
  br label %1140

499:                                              ; preds = %490
  switch i8 %487, label %522 [
    i8 123, label %500
    i8 91, label %521
  ]

500:                                              ; preds = %499
  %501 = load ptr, ptr %240, align 8, !tbaa !246
  %502 = icmp eq ptr %501, null
  br i1 %502, label %503, label %508

503:                                              ; preds = %500
  %504 = load ptr, ptr %2, align 8, !tbaa !225
  %505 = load i32, ptr %228, align 8, !tbaa !236
  tail call void (ptr, i32, ptr, ...) @ErrorMsg(ptr noundef %504, i32 noundef %505, ptr noundef nonnull @.str.177) #32
  %506 = load i32, ptr %7, align 4, !tbaa !239
  %507 = add nsw i32 %506, 1
  store i32 %507, ptr %7, align 4, !tbaa !239
  br label %1140

508:                                              ; preds = %500
  %509 = getelementptr inbounds %struct.rule, ptr %501, i64 0, i32 8
  %510 = load ptr, ptr %509, align 8, !tbaa !250
  %511 = icmp eq ptr %510, null
  br i1 %511, label %517, label %512

512:                                              ; preds = %508
  %513 = load ptr, ptr %2, align 8, !tbaa !225
  %514 = load i32, ptr %228, align 8, !tbaa !236
  tail call void (ptr, i32, ptr, ...) @ErrorMsg(ptr noundef %513, i32 noundef %514, ptr noundef nonnull @.str.178) #32
  %515 = load i32, ptr %7, align 4, !tbaa !239
  %516 = add nsw i32 %515, 1
  store i32 %516, ptr %7, align 4, !tbaa !239
  br label %1140

517:                                              ; preds = %508
  %518 = load i32, ptr %228, align 8, !tbaa !236
  %519 = getelementptr inbounds %struct.rule, ptr %501, i64 0, i32 7
  store i32 %518, ptr %519, align 8, !tbaa !131
  %520 = getelementptr inbounds i8, ptr %481, i64 1
  store ptr %520, ptr %509, align 8, !tbaa !250
  br label %1140

521:                                              ; preds = %499
  store i32 12, ptr %8, align 8, !tbaa !226
  br label %1140

522:                                              ; preds = %499
  %523 = load ptr, ptr %2, align 8, !tbaa !225
  %524 = load i32, ptr %228, align 8, !tbaa !236
  tail call void (ptr, i32, ptr, ...) @ErrorMsg(ptr noundef %523, i32 noundef %524, ptr noundef nonnull @.str.179, ptr noundef nonnull %481) #32
  %525 = load i32, ptr %7, align 4, !tbaa !239
  %526 = add nsw i32 %525, 1
  store i32 %526, ptr %7, align 4, !tbaa !239
  br label %1140

527:                                              ; preds = %474
  %528 = load ptr, ptr %475, align 8, !tbaa !7
  %529 = load i8, ptr %481, align 1, !tbaa !64
  %530 = sext i8 %529 to i64
  %531 = getelementptr inbounds i16, ptr %528, i64 %530
  %532 = load i16, ptr %531, align 2, !tbaa !199
  %533 = and i16 %532, 256
  %534 = icmp eq i16 %533, 0
  br i1 %534, label %535, label %540

535:                                              ; preds = %527
  %536 = load ptr, ptr %2, align 8, !tbaa !225
  %537 = load i32, ptr %228, align 8, !tbaa !236
  tail call void (ptr, i32, ptr, ...) @ErrorMsg(ptr noundef %536, i32 noundef %537, ptr noundef nonnull @.str.180) #32
  %538 = load i32, ptr %7, align 4, !tbaa !239
  %539 = add nsw i32 %538, 1
  store i32 %539, ptr %7, align 4, !tbaa !239
  br label %559

540:                                              ; preds = %527
  %541 = load ptr, ptr %240, align 8, !tbaa !246
  %542 = icmp eq ptr %541, null
  br i1 %542, label %543, label %548

543:                                              ; preds = %540
  %544 = load ptr, ptr %2, align 8, !tbaa !225
  %545 = load i32, ptr %228, align 8, !tbaa !236
  tail call void (ptr, i32, ptr, ...) @ErrorMsg(ptr noundef %544, i32 noundef %545, ptr noundef nonnull @.str.181, ptr noundef nonnull %481) #32
  %546 = load i32, ptr %7, align 4, !tbaa !239
  %547 = add nsw i32 %546, 1
  store i32 %547, ptr %7, align 4, !tbaa !239
  br label %559

548:                                              ; preds = %540
  %549 = getelementptr inbounds %struct.rule, ptr %541, i64 0, i32 9
  %550 = load ptr, ptr %549, align 8, !tbaa !40
  %551 = icmp eq ptr %550, null
  br i1 %551, label %557, label %552

552:                                              ; preds = %548
  %553 = load ptr, ptr %2, align 8, !tbaa !225
  %554 = load i32, ptr %228, align 8, !tbaa !236
  tail call void (ptr, i32, ptr, ...) @ErrorMsg(ptr noundef %553, i32 noundef %554, ptr noundef nonnull @.str.182) #32
  %555 = load i32, ptr %7, align 4, !tbaa !239
  %556 = add nsw i32 %555, 1
  store i32 %556, ptr %7, align 4, !tbaa !239
  br label %559

557:                                              ; preds = %548
  %558 = tail call ptr @Symbol_new(ptr noundef nonnull %481) #32
  store ptr %558, ptr %549, align 8, !tbaa !40
  br label %559

559:                                              ; preds = %557, %552, %543, %535
  store i32 13, ptr %8, align 8, !tbaa !226
  br label %1140

560:                                              ; preds = %474
  %561 = load i8, ptr %481, align 1, !tbaa !64
  %562 = icmp eq i8 %561, 93
  br i1 %562, label %568, label %563

563:                                              ; preds = %560
  %564 = load ptr, ptr %2, align 8, !tbaa !225
  %565 = load i32, ptr %228, align 8, !tbaa !236
  tail call void (ptr, i32, ptr, ...) @ErrorMsg(ptr noundef %564, i32 noundef %565, ptr noundef nonnull @.str.183) #32
  %566 = load i32, ptr %7, align 4, !tbaa !239
  %567 = add nsw i32 %566, 1
  store i32 %567, ptr %7, align 4, !tbaa !239
  br label %568

568:                                              ; preds = %563, %560
  store i32 1, ptr %8, align 8, !tbaa !226
  br label %1140

569:                                              ; preds = %474
  %570 = load i8, ptr %481, align 1, !tbaa !64
  switch i8 %570, label %581 [
    i8 58, label %571
    i8 40, label %580
  ]

571:                                              ; preds = %569
  %572 = getelementptr inbounds i8, ptr %481, i64 1
  %573 = load i8, ptr %572, align 1, !tbaa !64
  %574 = icmp eq i8 %573, 58
  br i1 %574, label %575, label %581

575:                                              ; preds = %571
  %576 = getelementptr inbounds i8, ptr %481, i64 2
  %577 = load i8, ptr %576, align 1, !tbaa !64
  %578 = icmp eq i8 %577, 61
  br i1 %578, label %579, label %581

579:                                              ; preds = %575
  store i32 6, ptr %8, align 8, !tbaa !226
  br label %1140

580:                                              ; preds = %569
  store i32 7, ptr %8, align 8, !tbaa !226
  br label %1140

581:                                              ; preds = %575, %571, %569
  %582 = load ptr, ptr %2, align 8, !tbaa !225
  %583 = load i32, ptr %228, align 8, !tbaa !236
  %584 = load ptr, ptr %237, align 8, !tbaa !247
  %585 = load ptr, ptr %584, align 8, !tbaa !73
  tail call void (ptr, i32, ptr, ...) @ErrorMsg(ptr noundef %582, i32 noundef %583, ptr noundef nonnull @.str.184, ptr noundef %585) #32
  %586 = load i32, ptr %7, align 4, !tbaa !239
  %587 = add nsw i32 %586, 1
  store i32 %587, ptr %7, align 4, !tbaa !239
  store i32 14, ptr %8, align 8, !tbaa !226
  br label %1140

588:                                              ; preds = %474
  %589 = load ptr, ptr %475, align 8, !tbaa !7
  %590 = load i8, ptr %481, align 1, !tbaa !64
  %591 = sext i8 %590 to i64
  %592 = getelementptr inbounds i16, ptr %589, i64 %591
  %593 = load i16, ptr %592, align 2, !tbaa !199
  %594 = and i16 %593, 1024
  %595 = icmp eq i16 %594, 0
  br i1 %595, label %597, label %596

596:                                              ; preds = %588
  store ptr %481, ptr %235, align 8, !tbaa !249
  store i32 8, ptr %8, align 8, !tbaa !226
  br label %1140

597:                                              ; preds = %588
  %598 = load ptr, ptr %2, align 8, !tbaa !225
  %599 = load i32, ptr %228, align 8, !tbaa !236
  %600 = load ptr, ptr %237, align 8, !tbaa !247
  %601 = load ptr, ptr %600, align 8, !tbaa !73
  tail call void (ptr, i32, ptr, ...) @ErrorMsg(ptr noundef %598, i32 noundef %599, ptr noundef nonnull @.str.185, ptr noundef nonnull %481, ptr noundef %601) #32
  %602 = load i32, ptr %7, align 4, !tbaa !239
  %603 = add nsw i32 %602, 1
  store i32 %603, ptr %7, align 4, !tbaa !239
  store i32 14, ptr %8, align 8, !tbaa !226
  br label %1140

604:                                              ; preds = %474
  %605 = load i8, ptr %481, align 1, !tbaa !64
  %606 = icmp eq i8 %605, 41
  br i1 %606, label %607, label %608

607:                                              ; preds = %604
  store i32 9, ptr %8, align 8, !tbaa !226
  br label %1140

608:                                              ; preds = %604
  %609 = load ptr, ptr %2, align 8, !tbaa !225
  %610 = load i32, ptr %228, align 8, !tbaa !236
  %611 = load ptr, ptr %235, align 8, !tbaa !249
  tail call void (ptr, i32, ptr, ...) @ErrorMsg(ptr noundef %609, i32 noundef %610, ptr noundef nonnull @.str.186, ptr noundef %611) #32
  %612 = load i32, ptr %7, align 4, !tbaa !239
  %613 = add nsw i32 %612, 1
  store i32 %613, ptr %7, align 4, !tbaa !239
  store i32 14, ptr %8, align 8, !tbaa !226
  br label %1140

614:                                              ; preds = %474
  %615 = load i8, ptr %481, align 1, !tbaa !64
  %616 = icmp eq i8 %615, 58
  br i1 %616, label %617, label %626

617:                                              ; preds = %614
  %618 = getelementptr inbounds i8, ptr %481, i64 1
  %619 = load i8, ptr %618, align 1, !tbaa !64
  %620 = icmp eq i8 %619, 58
  br i1 %620, label %621, label %626

621:                                              ; preds = %617
  %622 = getelementptr inbounds i8, ptr %481, i64 2
  %623 = load i8, ptr %622, align 1, !tbaa !64
  %624 = icmp eq i8 %623, 61
  br i1 %624, label %625, label %626

625:                                              ; preds = %621
  store i32 6, ptr %8, align 8, !tbaa !226
  br label %1140

626:                                              ; preds = %621, %617, %614
  %627 = load ptr, ptr %2, align 8, !tbaa !225
  %628 = load i32, ptr %228, align 8, !tbaa !236
  %629 = load ptr, ptr %237, align 8, !tbaa !247
  %630 = load ptr, ptr %629, align 8, !tbaa !73
  %631 = load ptr, ptr %235, align 8, !tbaa !249
  tail call void (ptr, i32, ptr, ...) @ErrorMsg(ptr noundef %627, i32 noundef %628, ptr noundef nonnull @.str.187, ptr noundef %630, ptr noundef %631) #32
  %632 = load i32, ptr %7, align 4, !tbaa !239
  %633 = add nsw i32 %632, 1
  store i32 %633, ptr %7, align 4, !tbaa !239
  store i32 14, ptr %8, align 8, !tbaa !226
  br label %1140

634:                                              ; preds = %474
  %635 = load i8, ptr %481, align 1, !tbaa !64
  %636 = icmp eq i8 %635, 46
  br i1 %636, label %637, label %693

637:                                              ; preds = %634
  %638 = load i32, ptr %236, align 8, !tbaa !248
  %639 = sext i32 %638 to i64
  %640 = shl nsw i64 %639, 4
  %641 = add nsw i64 %640, 96
  %642 = tail call noalias ptr @calloc(i64 noundef %641, i64 noundef 1) #28
  %643 = icmp eq ptr %642, null
  br i1 %643, label %644, label %649

644:                                              ; preds = %637
  %645 = load ptr, ptr %2, align 8, !tbaa !225
  %646 = load i32, ptr %228, align 8, !tbaa !236
  tail call void (ptr, i32, ptr, ...) @ErrorMsg(ptr noundef %645, i32 noundef %646, ptr noundef nonnull @.str.188) #32
  %647 = load i32, ptr %7, align 4, !tbaa !239
  %648 = add nsw i32 %647, 1
  store i32 %648, ptr %7, align 4, !tbaa !239
  br label %692

649:                                              ; preds = %637
  %650 = load i32, ptr %228, align 8, !tbaa !236
  %651 = getelementptr inbounds %struct.rule, ptr %642, i64 0, i32 3
  store i32 %650, ptr %651, align 4, !tbaa !190
  %652 = getelementptr inbounds %struct.rule, ptr %642, i64 1
  %653 = getelementptr inbounds %struct.rule, ptr %642, i64 0, i32 5
  store ptr %652, ptr %653, align 8, !tbaa !43
  %654 = getelementptr inbounds ptr, ptr %652, i64 %639
  %655 = getelementptr inbounds %struct.rule, ptr %642, i64 0, i32 6
  store ptr %654, ptr %655, align 8, !tbaa !251
  %656 = icmp sgt i32 %638, 0
  br i1 %656, label %657, label %671

657:                                              ; preds = %649
  %658 = zext i32 %638 to i64
  br label %659

659:                                              ; preds = %659, %657
  %660 = phi i64 [ 0, %657 ], [ %669, %659 ]
  %661 = getelementptr inbounds %struct.pstate, ptr %2, i64 0, i32 10, i64 %660
  %662 = load ptr, ptr %661, align 8, !tbaa !7
  %663 = load ptr, ptr %653, align 8, !tbaa !43
  %664 = getelementptr inbounds ptr, ptr %663, i64 %660
  store ptr %662, ptr %664, align 8, !tbaa !7
  %665 = getelementptr inbounds %struct.pstate, ptr %2, i64 0, i32 11, i64 %660
  %666 = load ptr, ptr %665, align 8, !tbaa !7
  %667 = load ptr, ptr %655, align 8, !tbaa !251
  %668 = getelementptr inbounds ptr, ptr %667, i64 %660
  store ptr %666, ptr %668, align 8, !tbaa !7
  %669 = add nuw nsw i64 %660, 1
  %670 = icmp eq i64 %669, %658
  br i1 %670, label %671, label %659, !llvm.loop !252

671:                                              ; preds = %659, %649
  %672 = load ptr, ptr %237, align 8, !tbaa !247
  store ptr %672, ptr %642, align 8, !tbaa !60
  %673 = load ptr, ptr %235, align 8, !tbaa !249
  %674 = getelementptr inbounds %struct.rule, ptr %642, i64 0, i32 1
  store ptr %673, ptr %674, align 8, !tbaa !253
  %675 = getelementptr inbounds %struct.rule, ptr %642, i64 0, i32 4
  store i32 %638, ptr %675, align 8, !tbaa !42
  %676 = getelementptr inbounds %struct.rule, ptr %642, i64 0, i32 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %676, i8 0, i64 16, i1 false)
  %677 = load ptr, ptr %4, align 8, !tbaa !223
  %678 = getelementptr inbounds %struct.lemon, ptr %677, i64 0, i32 3
  %679 = load i32, ptr %678, align 4, !tbaa !195
  %680 = add nsw i32 %679, 1
  store i32 %680, ptr %678, align 4, !tbaa !195
  %681 = getelementptr inbounds %struct.rule, ptr %642, i64 0, i32 10
  store i32 %679, ptr %681, align 8, !tbaa !116
  %682 = getelementptr inbounds %struct.symbol, ptr %672, i64 0, i32 3
  %683 = load ptr, ptr %682, align 8, !tbaa !254
  %684 = getelementptr inbounds %struct.rule, ptr %642, i64 0, i32 12
  store ptr %683, ptr %684, align 8, !tbaa !255
  store ptr %642, ptr %682, align 8, !tbaa !254
  %685 = getelementptr inbounds %struct.rule, ptr %642, i64 0, i32 13
  store ptr null, ptr %685, align 8, !tbaa !256
  %686 = load ptr, ptr %238, align 8, !tbaa !257
  %687 = icmp eq ptr %686, null
  %688 = load ptr, ptr %239, align 8
  %689 = getelementptr inbounds %struct.rule, ptr %688, i64 0, i32 13
  %690 = select i1 %687, ptr %239, ptr %689
  %691 = select i1 %687, ptr %238, ptr %239
  store ptr %642, ptr %690, align 8, !tbaa !7
  store ptr %642, ptr %691, align 8, !tbaa !7
  br label %692

692:                                              ; preds = %671, %644
  store ptr %642, ptr %240, align 8, !tbaa !246
  store i32 1, ptr %8, align 8, !tbaa !226
  br label %1140

693:                                              ; preds = %634
  %694 = load ptr, ptr %475, align 8, !tbaa !7
  %695 = sext i8 %635 to i64
  %696 = getelementptr inbounds i16, ptr %694, i64 %695
  %697 = load i16, ptr %696, align 2, !tbaa !199
  %698 = and i16 %697, 1024
  %699 = icmp eq i16 %698, 0
  br i1 %699, label %714, label %700

700:                                              ; preds = %693
  %701 = load i32, ptr %236, align 8, !tbaa !248
  %702 = icmp sgt i32 %701, 999
  br i1 %702, label %703, label %708

703:                                              ; preds = %700
  %704 = load ptr, ptr %2, align 8, !tbaa !225
  %705 = load i32, ptr %228, align 8, !tbaa !236
  tail call void (ptr, i32, ptr, ...) @ErrorMsg(ptr noundef %704, i32 noundef %705, ptr noundef nonnull @.str.189, ptr noundef nonnull %481) #32
  %706 = load i32, ptr %7, align 4, !tbaa !239
  %707 = add nsw i32 %706, 1
  store i32 %707, ptr %7, align 4, !tbaa !239
  store i32 14, ptr %8, align 8, !tbaa !226
  br label %1140

708:                                              ; preds = %700
  %709 = tail call ptr @Symbol_new(ptr noundef nonnull %481) #32
  %710 = sext i32 %701 to i64
  %711 = getelementptr inbounds %struct.pstate, ptr %2, i64 0, i32 10, i64 %710
  store ptr %709, ptr %711, align 8, !tbaa !7
  %712 = getelementptr inbounds %struct.pstate, ptr %2, i64 0, i32 11, i64 %710
  store ptr null, ptr %712, align 8, !tbaa !7
  %713 = add nsw i32 %701, 1
  store i32 %713, ptr %236, align 8, !tbaa !248
  br label %1140

714:                                              ; preds = %693
  switch i8 %635, label %781 [
    i8 124, label %715
    i8 47, label %715
    i8 40, label %777
  ]

715:                                              ; preds = %714, %714
  %716 = load i32, ptr %236, align 8, !tbaa !248
  %717 = icmp sgt i32 %716, 0
  br i1 %717, label %718, label %781

718:                                              ; preds = %715
  %719 = add nsw i32 %716, -1
  %720 = zext i32 %719 to i64
  %721 = getelementptr inbounds %struct.pstate, ptr %2, i64 0, i32 10, i64 %720
  %722 = load ptr, ptr %721, align 8, !tbaa !7
  %723 = getelementptr inbounds %struct.symbol, ptr %722, i64 0, i32 2
  %724 = load i32, ptr %723, align 4, !tbaa !44
  %725 = icmp eq i32 %724, 2
  br i1 %725, label %726, label %732

726:                                              ; preds = %718
  %727 = getelementptr inbounds %struct.symbol, ptr %722, i64 0, i32 14
  %728 = load i32, ptr %727, align 4, !tbaa !46
  %729 = getelementptr inbounds %struct.symbol, ptr %722, i64 0, i32 15
  %730 = load ptr, ptr %729, align 8, !tbaa !47
  %731 = add nsw i32 %728, 1
  br label %739

732:                                              ; preds = %718
  %733 = tail call noalias dereferenceable_or_null(96) ptr @calloc(i64 noundef 1, i64 noundef 96) #28
  %734 = getelementptr inbounds %struct.symbol, ptr %733, i64 0, i32 2
  store i32 2, ptr %734, align 4, !tbaa !44
  %735 = getelementptr inbounds %struct.symbol, ptr %733, i64 0, i32 14
  store i32 1, ptr %735, align 4, !tbaa !46
  %736 = tail call noalias dereferenceable_or_null(8) ptr @calloc(i64 noundef 1, i64 noundef 8) #28
  %737 = getelementptr inbounds %struct.symbol, ptr %733, i64 0, i32 15
  store ptr %736, ptr %737, align 8, !tbaa !47
  store ptr %722, ptr %736, align 8, !tbaa !7
  %738 = load ptr, ptr %722, align 8, !tbaa !73
  store ptr %738, ptr %733, align 8, !tbaa !73
  store ptr %733, ptr %721, align 8, !tbaa !7
  br label %739

739:                                              ; preds = %732, %726
  %740 = phi ptr [ %736, %732 ], [ %730, %726 ]
  %741 = phi i32 [ 2, %732 ], [ %731, %726 ]
  %742 = phi ptr [ %733, %732 ], [ %722, %726 ]
  %743 = getelementptr inbounds %struct.symbol, ptr %742, i64 0, i32 14
  store i32 %741, ptr %743, align 4, !tbaa !46
  %744 = getelementptr inbounds %struct.symbol, ptr %742, i64 0, i32 15
  %745 = sext i32 %741 to i64
  %746 = shl nsw i64 %745, 3
  %747 = tail call ptr @realloc(ptr noundef %740, i64 noundef %746) #31
  store ptr %747, ptr %744, align 8, !tbaa !47
  %748 = getelementptr inbounds i8, ptr %481, i64 1
  %749 = tail call ptr @Symbol_new(ptr noundef nonnull %748) #32
  %750 = load ptr, ptr %744, align 8, !tbaa !47
  %751 = load i32, ptr %743, align 4, !tbaa !46
  %752 = add nsw i32 %751, -1
  %753 = sext i32 %752 to i64
  %754 = getelementptr inbounds ptr, ptr %750, i64 %753
  store ptr %749, ptr %754, align 8, !tbaa !7
  %755 = load ptr, ptr %475, align 8, !tbaa !7
  %756 = load i8, ptr %748, align 1, !tbaa !64
  %757 = sext i8 %756 to i64
  %758 = getelementptr inbounds i16, ptr %755, i64 %757
  %759 = load i16, ptr %758, align 2, !tbaa !199
  %760 = and i16 %759, 512
  %761 = icmp eq i16 %760, 0
  br i1 %761, label %762, label %772

762:                                              ; preds = %739
  %763 = load ptr, ptr %744, align 8, !tbaa !47
  %764 = load ptr, ptr %763, align 8, !tbaa !7
  %765 = load ptr, ptr %764, align 8, !tbaa !73
  %766 = load i8, ptr %765, align 1, !tbaa !64
  %767 = sext i8 %766 to i64
  %768 = getelementptr inbounds i16, ptr %755, i64 %767
  %769 = load i16, ptr %768, align 2, !tbaa !199
  %770 = and i16 %769, 512
  %771 = icmp eq i16 %770, 0
  br i1 %771, label %1140, label %772

772:                                              ; preds = %762, %739
  %773 = load ptr, ptr %2, align 8, !tbaa !225
  %774 = load i32, ptr %228, align 8, !tbaa !236
  tail call void (ptr, i32, ptr, ...) @ErrorMsg(ptr noundef %773, i32 noundef %774, ptr noundef nonnull @.str.190) #32
  %775 = load i32, ptr %7, align 4, !tbaa !239
  %776 = add nsw i32 %775, 1
  store i32 %776, ptr %7, align 4, !tbaa !239
  br label %1140

777:                                              ; preds = %714
  %778 = load i32, ptr %236, align 8, !tbaa !248
  %779 = icmp sgt i32 %778, 0
  br i1 %779, label %780, label %781

780:                                              ; preds = %777
  store i32 10, ptr %8, align 8, !tbaa !226
  br label %1140

781:                                              ; preds = %777, %715, %714
  %782 = load ptr, ptr %2, align 8, !tbaa !225
  %783 = load i32, ptr %228, align 8, !tbaa !236
  tail call void (ptr, i32, ptr, ...) @ErrorMsg(ptr noundef %782, i32 noundef %783, ptr noundef nonnull @.str.191, ptr noundef nonnull %481) #32
  %784 = load i32, ptr %7, align 4, !tbaa !239
  %785 = add nsw i32 %784, 1
  store i32 %785, ptr %7, align 4, !tbaa !239
  store i32 14, ptr %8, align 8, !tbaa !226
  br label %1140

786:                                              ; preds = %474
  %787 = load ptr, ptr %475, align 8, !tbaa !7
  %788 = load i8, ptr %481, align 1, !tbaa !64
  %789 = sext i8 %788 to i64
  %790 = getelementptr inbounds i16, ptr %787, i64 %789
  %791 = load i16, ptr %790, align 2, !tbaa !199
  %792 = and i16 %791, 1024
  %793 = icmp eq i16 %792, 0
  br i1 %793, label %799, label %794

794:                                              ; preds = %786
  %795 = load i32, ptr %236, align 8, !tbaa !248
  %796 = add nsw i32 %795, -1
  %797 = sext i32 %796 to i64
  %798 = getelementptr inbounds %struct.pstate, ptr %2, i64 0, i32 11, i64 %797
  store ptr %481, ptr %798, align 8, !tbaa !7
  store i32 11, ptr %8, align 8, !tbaa !226
  br label %1140

799:                                              ; preds = %786
  %800 = load ptr, ptr %2, align 8, !tbaa !225
  %801 = load i32, ptr %228, align 8, !tbaa !236
  %802 = load i32, ptr %236, align 8, !tbaa !248
  %803 = add nsw i32 %802, -1
  %804 = sext i32 %803 to i64
  %805 = getelementptr inbounds %struct.pstate, ptr %2, i64 0, i32 10, i64 %804
  %806 = load ptr, ptr %805, align 8, !tbaa !7
  %807 = load ptr, ptr %806, align 8, !tbaa !73
  tail call void (ptr, i32, ptr, ...) @ErrorMsg(ptr noundef %800, i32 noundef %801, ptr noundef nonnull @.str.192, ptr noundef nonnull %481, ptr noundef %807) #32
  %808 = load i32, ptr %7, align 4, !tbaa !239
  %809 = add nsw i32 %808, 1
  store i32 %809, ptr %7, align 4, !tbaa !239
  store i32 14, ptr %8, align 8, !tbaa !226
  br label %1140

810:                                              ; preds = %474
  %811 = load i8, ptr %481, align 1, !tbaa !64
  %812 = icmp eq i8 %811, 41
  br i1 %812, label %813, label %814

813:                                              ; preds = %810
  store i32 6, ptr %8, align 8, !tbaa !226
  br label %1140

814:                                              ; preds = %810
  %815 = load ptr, ptr %2, align 8, !tbaa !225
  %816 = load i32, ptr %228, align 8, !tbaa !236
  %817 = load ptr, ptr %235, align 8, !tbaa !249
  tail call void (ptr, i32, ptr, ...) @ErrorMsg(ptr noundef %815, i32 noundef %816, ptr noundef nonnull @.str.186, ptr noundef %817) #32
  %818 = load i32, ptr %7, align 4, !tbaa !239
  %819 = add nsw i32 %818, 1
  store i32 %819, ptr %7, align 4, !tbaa !239
  store i32 14, ptr %8, align 8, !tbaa !226
  br label %1140

820:                                              ; preds = %474
  %821 = load ptr, ptr %475, align 8, !tbaa !7
  %822 = load i8, ptr %481, align 1, !tbaa !64
  %823 = sext i8 %822 to i64
  %824 = getelementptr inbounds i16, ptr %821, i64 %823
  %825 = load i16, ptr %824, align 2, !tbaa !199
  %826 = and i16 %825, 1024
  %827 = icmp eq i16 %826, 0
  br i1 %827, label %965, label %828

828:                                              ; preds = %820
  store ptr %481, ptr %231, align 8, !tbaa !258
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %230, i8 0, i64 16, i1 false)
  store i32 3, ptr %8, align 8, !tbaa !226
  %829 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %481, ptr noundef nonnull dereferenceable(5) @.str.193) #35
  %830 = icmp eq i32 %829, 0
  br i1 %830, label %831, label %834

831:                                              ; preds = %828
  %832 = load ptr, ptr %4, align 8, !tbaa !223
  %833 = getelementptr inbounds %struct.lemon, ptr %832, i64 0, i32 10
  store ptr %833, ptr %230, align 8, !tbaa !259
  br label %1140

834:                                              ; preds = %828
  %835 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %481, ptr noundef nonnull dereferenceable(8) @.str.194) #35
  %836 = icmp eq i32 %835, 0
  br i1 %836, label %837, label %841

837:                                              ; preds = %834
  %838 = load ptr, ptr %4, align 8, !tbaa !223
  %839 = getelementptr inbounds %struct.lemon, ptr %838, i64 0, i32 16
  store ptr %839, ptr %230, align 8, !tbaa !259
  %840 = getelementptr inbounds %struct.lemon, ptr %838, i64 0, i32 17
  store ptr %840, ptr %232, align 8, !tbaa !260
  br label %1140

841:                                              ; preds = %834
  %842 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %481, ptr noundef nonnull dereferenceable(5) @.str.195) #35
  %843 = icmp eq i32 %842, 0
  br i1 %843, label %844, label %848

844:                                              ; preds = %841
  %845 = load ptr, ptr %4, align 8, !tbaa !223
  %846 = getelementptr inbounds %struct.lemon, ptr %845, i64 0, i32 26
  store ptr %846, ptr %230, align 8, !tbaa !259
  %847 = getelementptr inbounds %struct.lemon, ptr %845, i64 0, i32 27
  store ptr %847, ptr %232, align 8, !tbaa !260
  br label %1140

848:                                              ; preds = %841
  %849 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %481, ptr noundef nonnull dereferenceable(17) @.str.196) #35
  %850 = icmp eq i32 %849, 0
  br i1 %850, label %851, label %855

851:                                              ; preds = %848
  %852 = load ptr, ptr %4, align 8, !tbaa !223
  %853 = getelementptr inbounds %struct.lemon, ptr %852, i64 0, i32 28
  store ptr %853, ptr %230, align 8, !tbaa !259
  %854 = getelementptr inbounds %struct.lemon, ptr %852, i64 0, i32 29
  store ptr %854, ptr %232, align 8, !tbaa !260
  br label %1140

855:                                              ; preds = %848
  %856 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %481, ptr noundef nonnull dereferenceable(19) @.str.197) #35
  %857 = icmp eq i32 %856, 0
  br i1 %857, label %858, label %862

858:                                              ; preds = %855
  %859 = load ptr, ptr %4, align 8, !tbaa !223
  %860 = getelementptr inbounds %struct.lemon, ptr %859, i64 0, i32 30
  store ptr %860, ptr %230, align 8, !tbaa !259
  %861 = getelementptr inbounds %struct.lemon, ptr %859, i64 0, i32 31
  store ptr %861, ptr %232, align 8, !tbaa !260
  br label %1140

862:                                              ; preds = %855
  %863 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %481, ptr noundef nonnull dereferenceable(13) @.str.198) #35
  %864 = icmp eq i32 %863, 0
  br i1 %864, label %865, label %868

865:                                              ; preds = %862
  %866 = load ptr, ptr %4, align 8, !tbaa !223
  %867 = getelementptr inbounds %struct.lemon, ptr %866, i64 0, i32 34
  store ptr %867, ptr %230, align 8, !tbaa !259
  br label %1140

868:                                              ; preds = %862
  %869 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %481, ptr noundef nonnull dereferenceable(13) @.str.199) #35
  %870 = icmp eq i32 %869, 0
  br i1 %870, label %871, label %875

871:                                              ; preds = %868
  %872 = load ptr, ptr %4, align 8, !tbaa !223
  %873 = getelementptr inbounds %struct.lemon, ptr %872, i64 0, i32 18
  store ptr %873, ptr %230, align 8, !tbaa !259
  %874 = getelementptr inbounds %struct.lemon, ptr %872, i64 0, i32 19
  store ptr %874, ptr %232, align 8, !tbaa !260
  br label %1140

875:                                              ; preds = %868
  %876 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %481, ptr noundef nonnull dereferenceable(13) @.str.200) #35
  %877 = icmp eq i32 %876, 0
  br i1 %877, label %878, label %882

878:                                              ; preds = %875
  %879 = load ptr, ptr %4, align 8, !tbaa !223
  %880 = getelementptr inbounds %struct.lemon, ptr %879, i64 0, i32 24
  store ptr %880, ptr %230, align 8, !tbaa !259
  %881 = getelementptr inbounds %struct.lemon, ptr %879, i64 0, i32 25
  store ptr %881, ptr %232, align 8, !tbaa !260
  br label %1140

882:                                              ; preds = %875
  %883 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %481, ptr noundef nonnull dereferenceable(14) @.str.201) #35
  %884 = icmp eq i32 %883, 0
  br i1 %884, label %885, label %889

885:                                              ; preds = %882
  %886 = load ptr, ptr %4, align 8, !tbaa !223
  %887 = getelementptr inbounds %struct.lemon, ptr %886, i64 0, i32 22
  store ptr %887, ptr %230, align 8, !tbaa !259
  %888 = getelementptr inbounds %struct.lemon, ptr %886, i64 0, i32 23
  store ptr %888, ptr %232, align 8, !tbaa !260
  br label %1140

889:                                              ; preds = %882
  %890 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %481, ptr noundef nonnull dereferenceable(15) @.str.202) #35
  %891 = icmp eq i32 %890, 0
  br i1 %891, label %892, label %896

892:                                              ; preds = %889
  %893 = load ptr, ptr %4, align 8, !tbaa !223
  %894 = getelementptr inbounds %struct.lemon, ptr %893, i64 0, i32 20
  store ptr %894, ptr %230, align 8, !tbaa !259
  %895 = getelementptr inbounds %struct.lemon, ptr %893, i64 0, i32 21
  store ptr %895, ptr %232, align 8, !tbaa !260
  br label %1140

896:                                              ; preds = %889
  %897 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %481, ptr noundef nonnull dereferenceable(15) @.str.203) #35
  %898 = icmp eq i32 %897, 0
  br i1 %898, label %899, label %902

899:                                              ; preds = %896
  %900 = load ptr, ptr %4, align 8, !tbaa !223
  %901 = getelementptr inbounds %struct.lemon, ptr %900, i64 0, i32 11
  store ptr %901, ptr %230, align 8, !tbaa !259
  br label %1140

902:                                              ; preds = %896
  %903 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %481, ptr noundef nonnull dereferenceable(11) @.str.204) #35
  %904 = icmp eq i32 %903, 0
  br i1 %904, label %905, label %908

905:                                              ; preds = %902
  %906 = load ptr, ptr %4, align 8, !tbaa !223
  %907 = getelementptr inbounds %struct.lemon, ptr %906, i64 0, i32 12
  store ptr %907, ptr %230, align 8, !tbaa !259
  br label %1140

908:                                              ; preds = %902
  %909 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %481, ptr noundef nonnull dereferenceable(13) @.str.205) #35
  %910 = icmp eq i32 %909, 0
  br i1 %910, label %911, label %914

911:                                              ; preds = %908
  %912 = load ptr, ptr %4, align 8, !tbaa !223
  %913 = getelementptr inbounds %struct.lemon, ptr %912, i64 0, i32 13
  store ptr %913, ptr %230, align 8, !tbaa !259
  br label %1140

914:                                              ; preds = %908
  %915 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %481, ptr noundef nonnull dereferenceable(11) @.str.206) #35
  %916 = icmp eq i32 %915, 0
  br i1 %916, label %917, label %920

917:                                              ; preds = %914
  %918 = load ptr, ptr %4, align 8, !tbaa !223
  %919 = getelementptr inbounds %struct.lemon, ptr %918, i64 0, i32 15
  store ptr %919, ptr %230, align 8, !tbaa !259
  br label %1140

920:                                              ; preds = %914
  %921 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %481, ptr noundef nonnull dereferenceable(13) @.str.207) #35
  %922 = icmp eq i32 %921, 0
  br i1 %922, label %923, label %926

923:                                              ; preds = %920
  %924 = load ptr, ptr %4, align 8, !tbaa !223
  %925 = getelementptr inbounds %struct.lemon, ptr %924, i64 0, i32 14
  store ptr %925, ptr %230, align 8, !tbaa !259
  br label %1140

926:                                              ; preds = %920
  %927 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %481, ptr noundef nonnull dereferenceable(5) @.str.208) #35
  %928 = icmp eq i32 %927, 0
  br i1 %928, label %929, label %932

929:                                              ; preds = %926
  %930 = load i32, ptr %233, align 4, !tbaa !261
  %931 = add nsw i32 %930, 1
  store i32 %931, ptr %233, align 4, !tbaa !261
  store i32 0, ptr %234, align 8, !tbaa !262
  store i32 4, ptr %8, align 8, !tbaa !226
  br label %1140

932:                                              ; preds = %926
  %933 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %481, ptr noundef nonnull dereferenceable(6) @.str.209) #35
  %934 = icmp eq i32 %933, 0
  br i1 %934, label %935, label %938

935:                                              ; preds = %932
  %936 = load i32, ptr %233, align 4, !tbaa !261
  %937 = add nsw i32 %936, 1
  store i32 %937, ptr %233, align 4, !tbaa !261
  store i32 1, ptr %234, align 8, !tbaa !262
  store i32 4, ptr %8, align 8, !tbaa !226
  br label %1140

938:                                              ; preds = %932
  %939 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %481, ptr noundef nonnull dereferenceable(9) @.str.210) #35
  %940 = icmp eq i32 %939, 0
  br i1 %940, label %941, label %944

941:                                              ; preds = %938
  %942 = load i32, ptr %233, align 4, !tbaa !261
  %943 = add nsw i32 %942, 1
  store i32 %943, ptr %233, align 4, !tbaa !261
  store i32 2, ptr %234, align 8, !tbaa !262
  store i32 4, ptr %8, align 8, !tbaa !226
  br label %1140

944:                                              ; preds = %938
  %945 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %481, ptr noundef nonnull dereferenceable(11) @.str.211) #35
  %946 = icmp eq i32 %945, 0
  br i1 %946, label %947, label %948

947:                                              ; preds = %944
  store i32 16, ptr %8, align 8, !tbaa !226
  br label %1140

948:                                              ; preds = %944
  %949 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %481, ptr noundef nonnull dereferenceable(5) @.str.212) #35
  %950 = icmp eq i32 %949, 0
  br i1 %950, label %951, label %952

951:                                              ; preds = %948
  store i32 17, ptr %8, align 8, !tbaa !226
  br label %1140

952:                                              ; preds = %948
  %953 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %481, ptr noundef nonnull dereferenceable(9) @.str.213) #35
  %954 = icmp eq i32 %953, 0
  br i1 %954, label %955, label %956

955:                                              ; preds = %952
  store ptr null, ptr %229, align 8, !tbaa !263
  store i32 18, ptr %8, align 8, !tbaa !226
  br label %1140

956:                                              ; preds = %952
  %957 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %481, ptr noundef nonnull dereferenceable(9) @.str.214) #35
  %958 = icmp eq i32 %957, 0
  br i1 %958, label %959, label %960

959:                                              ; preds = %956
  store i32 19, ptr %8, align 8, !tbaa !226
  br label %1140

960:                                              ; preds = %956
  %961 = load ptr, ptr %2, align 8, !tbaa !225
  %962 = load i32, ptr %228, align 8, !tbaa !236
  tail call void (ptr, i32, ptr, ...) @ErrorMsg(ptr noundef %961, i32 noundef %962, ptr noundef nonnull @.str.215, ptr noundef nonnull %481) #32
  %963 = load i32, ptr %7, align 4, !tbaa !239
  %964 = add nsw i32 %963, 1
  store i32 %964, ptr %7, align 4, !tbaa !239
  store i32 15, ptr %8, align 8, !tbaa !226
  br label %1140

965:                                              ; preds = %820
  %966 = load ptr, ptr %2, align 8, !tbaa !225
  %967 = load i32, ptr %228, align 8, !tbaa !236
  tail call void (ptr, i32, ptr, ...) @ErrorMsg(ptr noundef %966, i32 noundef %967, ptr noundef nonnull @.str.216, ptr noundef nonnull %481) #32
  %968 = load i32, ptr %7, align 4, !tbaa !239
  %969 = add nsw i32 %968, 1
  store i32 %969, ptr %7, align 4, !tbaa !239
  store i32 15, ptr %8, align 8, !tbaa !226
  br label %1140

970:                                              ; preds = %474
  %971 = load ptr, ptr %475, align 8, !tbaa !7
  %972 = load i8, ptr %481, align 1, !tbaa !64
  %973 = sext i8 %972 to i64
  %974 = getelementptr inbounds i16, ptr %971, i64 %973
  %975 = load i16, ptr %974, align 2, !tbaa !199
  %976 = and i16 %975, 1024
  %977 = icmp eq i16 %976, 0
  br i1 %977, label %978, label %983

978:                                              ; preds = %970
  %979 = load ptr, ptr %2, align 8, !tbaa !225
  %980 = load i32, ptr %228, align 8, !tbaa !236
  tail call void (ptr, i32, ptr, ...) @ErrorMsg(ptr noundef %979, i32 noundef %980, ptr noundef nonnull @.str.217) #32
  %981 = load i32, ptr %7, align 4, !tbaa !239
  %982 = add nsw i32 %981, 1
  store i32 %982, ptr %7, align 4, !tbaa !239
  store i32 15, ptr %8, align 8, !tbaa !226
  br label %1140

983:                                              ; preds = %970
  %984 = tail call ptr @Symbol_new(ptr noundef nonnull %481) #32
  %985 = getelementptr inbounds %struct.symbol, ptr %984, i64 0, i32 10
  store ptr %985, ptr %230, align 8, !tbaa !259
  %986 = getelementptr inbounds %struct.symbol, ptr %984, i64 0, i32 11
  store ptr %986, ptr %232, align 8, !tbaa !260
  store i32 3, ptr %8, align 8, !tbaa !226
  br label %1140

987:                                              ; preds = %474
  %988 = load ptr, ptr %475, align 8, !tbaa !7
  %989 = load i8, ptr %481, align 1, !tbaa !64
  %990 = sext i8 %989 to i64
  %991 = getelementptr inbounds i16, ptr %988, i64 %990
  %992 = load i16, ptr %991, align 2, !tbaa !199
  %993 = and i16 %992, 1024
  %994 = icmp eq i16 %993, 0
  br i1 %994, label %995, label %1000

995:                                              ; preds = %987
  %996 = load ptr, ptr %2, align 8, !tbaa !225
  %997 = load i32, ptr %228, align 8, !tbaa !236
  tail call void (ptr, i32, ptr, ...) @ErrorMsg(ptr noundef %996, i32 noundef %997, ptr noundef nonnull @.str.217) #32
  %998 = load i32, ptr %7, align 4, !tbaa !239
  %999 = add nsw i32 %998, 1
  store i32 %999, ptr %7, align 4, !tbaa !239
  store i32 15, ptr %8, align 8, !tbaa !226
  br label %1140

1000:                                             ; preds = %987
  %1001 = tail call ptr @Symbol_new(ptr noundef nonnull %481) #32
  %1002 = getelementptr inbounds %struct.symbol, ptr %1001, i64 0, i32 12
  store ptr %1002, ptr %230, align 8, !tbaa !259
  store ptr null, ptr %232, align 8, !tbaa !260
  store i32 3, ptr %8, align 8, !tbaa !226
  br label %1140

1003:                                             ; preds = %474
  %1004 = load i8, ptr %481, align 1, !tbaa !64
  %1005 = icmp eq i8 %1004, 46
  br i1 %1005, label %1006, label %1007

1006:                                             ; preds = %1003
  store i32 1, ptr %8, align 8, !tbaa !226
  br label %1140

1007:                                             ; preds = %1003
  %1008 = load ptr, ptr %475, align 8, !tbaa !7
  %1009 = sext i8 %1004 to i64
  %1010 = getelementptr inbounds i16, ptr %1008, i64 %1009
  %1011 = load i16, ptr %1010, align 2, !tbaa !199
  %1012 = and i16 %1011, 256
  %1013 = icmp eq i16 %1012, 0
  br i1 %1013, label %1027, label %1014

1014:                                             ; preds = %1007
  %1015 = tail call ptr @Symbol_new(ptr noundef nonnull %481) #32
  %1016 = getelementptr inbounds %struct.symbol, ptr %1015, i64 0, i32 5
  %1017 = load i32, ptr %1016, align 8, !tbaa !49
  %1018 = icmp sgt i32 %1017, -1
  br i1 %1018, label %1019, label %1024

1019:                                             ; preds = %1014
  %1020 = load ptr, ptr %2, align 8, !tbaa !225
  %1021 = load i32, ptr %228, align 8, !tbaa !236
  tail call void (ptr, i32, ptr, ...) @ErrorMsg(ptr noundef %1020, i32 noundef %1021, ptr noundef nonnull @.str.218, ptr noundef nonnull %481) #32
  %1022 = load i32, ptr %7, align 4, !tbaa !239
  %1023 = add nsw i32 %1022, 1
  store i32 %1023, ptr %7, align 4, !tbaa !239
  br label %1140

1024:                                             ; preds = %1014
  %1025 = load <2 x i32>, ptr %234, align 8, !tbaa !64
  %1026 = shufflevector <2 x i32> %1025, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %1026, ptr %1016, align 8, !tbaa !64
  br label %1140

1027:                                             ; preds = %1007
  %1028 = load ptr, ptr %2, align 8, !tbaa !225
  %1029 = load i32, ptr %228, align 8, !tbaa !236
  tail call void (ptr, i32, ptr, ...) @ErrorMsg(ptr noundef %1028, i32 noundef %1029, ptr noundef nonnull @.str.219, ptr noundef nonnull %481) #32
  %1030 = load i32, ptr %7, align 4, !tbaa !239
  %1031 = add nsw i32 %1030, 1
  store i32 %1031, ptr %7, align 4, !tbaa !239
  br label %1140

1032:                                             ; preds = %474
  %1033 = load i8, ptr %481, align 1, !tbaa !64
  switch i8 %1033, label %1034 [
    i8 123, label %1041
    i8 34, label %1041
  ]

1034:                                             ; preds = %1032
  %1035 = load ptr, ptr %475, align 8, !tbaa !7
  %1036 = sext i8 %1033 to i64
  %1037 = getelementptr inbounds i16, ptr %1035, i64 %1036
  %1038 = load i16, ptr %1037, align 2, !tbaa !199
  %1039 = and i16 %1038, 8
  %1040 = icmp eq i16 %1039, 0
  br i1 %1040, label %1064, label %1041

1041:                                             ; preds = %1034, %1032, %1032
  %1042 = load ptr, ptr %230, align 8, !tbaa !259
  %1043 = load ptr, ptr %1042, align 8, !tbaa !7
  %1044 = icmp eq ptr %1043, null
  br i1 %1044, label %1054, label %1045

1045:                                             ; preds = %1041
  %1046 = load ptr, ptr %2, align 8, !tbaa !225
  %1047 = load i32, ptr %228, align 8, !tbaa !236
  %1048 = icmp eq i8 %1033, 34
  %1049 = zext i1 %1048 to i64
  %1050 = getelementptr inbounds i8, ptr %481, i64 %1049
  %1051 = load ptr, ptr %231, align 8, !tbaa !258
  tail call void (ptr, i32, ptr, ...) @ErrorMsg(ptr noundef %1046, i32 noundef %1047, ptr noundef nonnull @.str.220, ptr noundef nonnull %1050, ptr noundef %1051) #32
  %1052 = load i32, ptr %7, align 4, !tbaa !239
  %1053 = add nsw i32 %1052, 1
  store i32 %1053, ptr %7, align 4, !tbaa !239
  store i32 15, ptr %8, align 8, !tbaa !226
  br label %1140

1054:                                             ; preds = %1041
  switch i8 %1033, label %1057 [
    i8 34, label %1055
    i8 123, label %1055
  ]

1055:                                             ; preds = %1054, %1054
  %1056 = getelementptr inbounds i8, ptr %481, i64 1
  br label %1057

1057:                                             ; preds = %1055, %1054
  %1058 = phi ptr [ %1056, %1055 ], [ %481, %1054 ]
  store ptr %1058, ptr %1042, align 8, !tbaa !7
  %1059 = load ptr, ptr %232, align 8, !tbaa !260
  %1060 = icmp eq ptr %1059, null
  br i1 %1060, label %1063, label %1061

1061:                                             ; preds = %1057
  %1062 = load i32, ptr %228, align 8, !tbaa !236
  store i32 %1062, ptr %1059, align 4, !tbaa !33
  br label %1063

1063:                                             ; preds = %1061, %1057
  store i32 1, ptr %8, align 8, !tbaa !226
  br label %1140

1064:                                             ; preds = %1034
  %1065 = load ptr, ptr %2, align 8, !tbaa !225
  %1066 = load i32, ptr %228, align 8, !tbaa !236
  %1067 = load ptr, ptr %231, align 8, !tbaa !258
  tail call void (ptr, i32, ptr, ...) @ErrorMsg(ptr noundef %1065, i32 noundef %1066, ptr noundef nonnull @.str.221, ptr noundef %1067, ptr noundef nonnull %481) #32
  %1068 = load i32, ptr %7, align 4, !tbaa !239
  %1069 = add nsw i32 %1068, 1
  store i32 %1069, ptr %7, align 4, !tbaa !239
  store i32 15, ptr %8, align 8, !tbaa !226
  br label %1140

1070:                                             ; preds = %474
  %1071 = load i8, ptr %481, align 1, !tbaa !64
  %1072 = icmp eq i8 %1071, 46
  br i1 %1072, label %1073, label %1074

1073:                                             ; preds = %1070
  store i32 1, ptr %8, align 8, !tbaa !226
  br label %1140

1074:                                             ; preds = %1070
  %1075 = load ptr, ptr %475, align 8, !tbaa !7
  %1076 = sext i8 %1071 to i64
  %1077 = getelementptr inbounds i16, ptr %1075, i64 %1076
  %1078 = load i16, ptr %1077, align 2, !tbaa !199
  %1079 = and i16 %1078, 256
  %1080 = icmp eq i16 %1079, 0
  br i1 %1080, label %1081, label %1086

1081:                                             ; preds = %1074
  %1082 = load ptr, ptr %2, align 8, !tbaa !225
  %1083 = load i32, ptr %228, align 8, !tbaa !236
  tail call void (ptr, i32, ptr, ...) @ErrorMsg(ptr noundef %1082, i32 noundef %1083, ptr noundef nonnull @.str.222, ptr noundef nonnull %481) #32
  %1084 = load i32, ptr %7, align 4, !tbaa !239
  %1085 = add nsw i32 %1084, 1
  store i32 %1085, ptr %7, align 4, !tbaa !239
  br label %1140

1086:                                             ; preds = %1074
  %1087 = tail call ptr @Symbol_new(ptr noundef nonnull %481) #32
  %1088 = load ptr, ptr %229, align 8, !tbaa !263
  %1089 = icmp eq ptr %1088, null
  br i1 %1089, label %1090, label %1091

1090:                                             ; preds = %1086
  store ptr %1087, ptr %229, align 8, !tbaa !263
  br label %1140

1091:                                             ; preds = %1086
  %1092 = getelementptr inbounds %struct.symbol, ptr %1087, i64 0, i32 4
  %1093 = load ptr, ptr %1092, align 8, !tbaa !264
  %1094 = icmp eq ptr %1093, null
  br i1 %1094, label %1100, label %1095

1095:                                             ; preds = %1091
  %1096 = load ptr, ptr %2, align 8, !tbaa !225
  %1097 = load i32, ptr %228, align 8, !tbaa !236
  tail call void (ptr, i32, ptr, ...) @ErrorMsg(ptr noundef %1096, i32 noundef %1097, ptr noundef nonnull @.str.223, ptr noundef nonnull %481) #32
  %1098 = load i32, ptr %7, align 4, !tbaa !239
  %1099 = add nsw i32 %1098, 1
  store i32 %1099, ptr %7, align 4, !tbaa !239
  br label %1140

1100:                                             ; preds = %1091
  store ptr %1088, ptr %1092, align 8, !tbaa !264
  %1101 = load ptr, ptr %4, align 8, !tbaa !223
  %1102 = getelementptr inbounds %struct.lemon, ptr %1101, i64 0, i32 38
  store i32 1, ptr %1102, align 4, !tbaa !265
  br label %1140

1103:                                             ; preds = %474
  %1104 = load i8, ptr %481, align 1, !tbaa !64
  %1105 = icmp eq i8 %1104, 46
  br i1 %1105, label %1106, label %1107

1106:                                             ; preds = %1103
  store i32 1, ptr %8, align 8, !tbaa !226
  br label %1140

1107:                                             ; preds = %1103
  %1108 = load ptr, ptr %475, align 8, !tbaa !7
  %1109 = sext i8 %1104 to i64
  %1110 = getelementptr inbounds i16, ptr %1108, i64 %1109
  %1111 = load i16, ptr %1110, align 2, !tbaa !199
  %1112 = and i16 %1111, 256
  %1113 = icmp eq i16 %1112, 0
  br i1 %1113, label %1114, label %1119

1114:                                             ; preds = %1107
  %1115 = load ptr, ptr %2, align 8, !tbaa !225
  %1116 = load i32, ptr %228, align 8, !tbaa !236
  tail call void (ptr, i32, ptr, ...) @ErrorMsg(ptr noundef %1115, i32 noundef %1116, ptr noundef nonnull @.str.224, ptr noundef nonnull %481) #32
  %1117 = load i32, ptr %7, align 4, !tbaa !239
  %1118 = add nsw i32 %1117, 1
  store i32 %1118, ptr %7, align 4, !tbaa !239
  br label %1140

1119:                                             ; preds = %1107
  %1120 = tail call ptr @Symbol_new(ptr noundef nonnull %481) #32
  %1121 = load ptr, ptr %4, align 8, !tbaa !223
  %1122 = getelementptr inbounds %struct.lemon, ptr %1121, i64 0, i32 9
  %1123 = load ptr, ptr %1122, align 8, !tbaa !266
  %1124 = icmp eq ptr %1123, null
  br i1 %1124, label %1125, label %1126

1125:                                             ; preds = %1119
  store ptr %1120, ptr %1122, align 8, !tbaa !266
  br label %1140

1126:                                             ; preds = %1119
  %1127 = load ptr, ptr %2, align 8, !tbaa !225
  %1128 = load i32, ptr %228, align 8, !tbaa !236
  tail call void (ptr, i32, ptr, ...) @ErrorMsg(ptr noundef %1127, i32 noundef %1128, ptr noundef nonnull @.str.225, ptr noundef nonnull %481) #32
  %1129 = load i32, ptr %7, align 4, !tbaa !239
  %1130 = add nsw i32 %1129, 1
  store i32 %1130, ptr %7, align 4, !tbaa !239
  br label %1140

1131:                                             ; preds = %474, %474
  %1132 = load i8, ptr %481, align 1, !tbaa !64
  %1133 = icmp eq i8 %1132, 46
  br i1 %1133, label %1134, label %1136

1134:                                             ; preds = %1131
  store i32 1, ptr %8, align 8, !tbaa !226
  %1135 = load i8, ptr %481, align 1, !tbaa !64
  br label %1136

1136:                                             ; preds = %1134, %1131
  %1137 = phi i8 [ %1135, %1134 ], [ %1132, %1131 ]
  %1138 = icmp eq i8 %1137, 37
  br i1 %1138, label %1139, label %1140

1139:                                             ; preds = %1136
  store i32 2, ptr %8, align 8, !tbaa !226
  br label %1140

1140:                                             ; preds = %1139, %1136, %1126, %1125, %1114, %1106, %1100, %1095, %1090, %1081, %1073, %1064, %1063, %1045, %1027, %1024, %1019, %1006, %1000, %995, %983, %978, %965, %960, %959, %955, %951, %947, %941, %935, %929, %923, %917, %911, %905, %899, %892, %885, %878, %871, %865, %858, %851, %844, %837, %831, %814, %813, %799, %794, %781, %780, %772, %762, %708, %703, %692, %626, %625, %608, %607, %597, %596, %581, %580, %579, %568, %559, %522, %521, %517, %512, %503, %497, %489, %474
  store i8 %479, ptr %476, align 1, !tbaa !64
  br label %1141

1141:                                             ; preds = %1140, %298, %264
  %1142 = phi ptr [ %477, %1140 ], [ %302, %298 ], [ %265, %264 ]
  %1143 = phi i32 [ %478, %1140 ], [ %300, %298 ], [ %.lcssa20, %264 ]
  br label %244, !llvm.loop !267

1144:                                             ; preds = %249
  tail call void @free(ptr noundef %21) #34
  %1145 = load ptr, ptr %238, align 8, !tbaa !257
  %1146 = getelementptr inbounds %struct.lemon, ptr %0, i64 0, i32 1
  store ptr %1145, ptr %1146, align 8, !tbaa !72
  %1147 = load i32, ptr %7, align 4, !tbaa !239
  %1148 = getelementptr inbounds %struct.lemon, ptr %0, i64 0, i32 7
  store i32 %1147, ptr %1148, align 8, !tbaa !74
  br label %1149

1149:                                             ; preds = %1144, %32, %23, %11
  call void @llvm.lifetime.end.p0(i64 16128, ptr nonnull %2) #36
  ret void
}

; Function Attrs: nofree nounwind optsize memory(readwrite, argmem: read) uwtable
define internal noalias ptr @Symbol_arrayof() #20 {
  %1 = load ptr, ptr @x2a, align 8, !tbaa !7
  %2 = icmp eq ptr %1, null
  br i1 %2, label %22, label %3

3:                                                ; preds = %0
  %4 = getelementptr inbounds %struct.s_x4, ptr %1, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !196
  %6 = sext i32 %5 to i64
  %7 = tail call noalias ptr @calloc(i64 noundef %6, i64 noundef 8) #28
  %8 = icmp eq ptr %7, null
  br i1 %8, label %22, label %9

9:                                                ; preds = %3
  %10 = icmp sgt i32 %5, 0
  br i1 %10, label %11, label %22

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.s_x4, ptr %1, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !219
  %14 = zext i32 %5 to i64
  br label %15

15:                                               ; preds = %15, %11
  %16 = phi i64 [ 0, %11 ], [ %20, %15 ]
  %17 = getelementptr inbounds %struct.s_x3node, ptr %13, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !94
  %19 = getelementptr inbounds ptr, ptr %7, i64 %16
  store ptr %18, ptr %19, align 8, !tbaa !7
  %20 = add nuw nsw i64 %16, 1
  %21 = icmp eq i64 %20, %14
  br i1 %21, label %22, label %15, !llvm.loop !268

22:                                               ; preds = %15, %9, %3, %0
  %23 = phi ptr [ null, %0 ], [ null, %3 ], [ %7, %9 ], [ %7, %15 ]
  ret ptr %23
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @Symbolcmpp(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #10 {
  %3 = load ptr, ptr %0, align 8, !tbaa !7
  %4 = getelementptr inbounds %struct.symbol, ptr %3, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !63
  %6 = load ptr, ptr %1, align 8, !tbaa !7
  %7 = getelementptr inbounds %struct.symbol, ptr %6, i64 0, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !63
  %9 = load ptr, ptr %3, align 8, !tbaa !73
  %10 = load i8, ptr %9, align 1, !tbaa !64
  %11 = icmp sgt i8 %10, 90
  %12 = select i1 %11, i32 10000000, i32 0
  %13 = add nsw i32 %12, %5
  %14 = load ptr, ptr %6, align 8, !tbaa !73
  %15 = load i8, ptr %14, align 1, !tbaa !64
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
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #21

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #22

; Function Attrs: nofree nounwind optsize uwtable
define internal void @Reprint(ptr nocapture noundef readonly %0) #9 {
  %2 = getelementptr inbounds %struct.lemon, ptr %0, i64 0, i32 32
  %3 = load ptr, ptr %2, align 8, !tbaa !71
  %4 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.51, ptr noundef %3) #32
  %5 = getelementptr inbounds %struct.lemon, ptr %0, i64 0, i32 4
  %6 = load i32, ptr %5, align 8, !tbaa !52
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %23

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.lemon, ptr %0, i64 0, i32 6
  %10 = load ptr, ptr %9, align 8, !tbaa !54
  %11 = zext i32 %6 to i64
  br label %12

12:                                               ; preds = %12, %8
  %13 = phi i64 [ 0, %8 ], [ %21, %12 ]
  %14 = phi i32 [ 10, %8 ], [ %20, %12 ]
  %15 = getelementptr inbounds ptr, ptr %10, i64 %13
  %16 = load ptr, ptr %15, align 8, !tbaa !7
  %17 = load ptr, ptr %16, align 8, !tbaa !73
  %18 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %17) #35
  %19 = trunc i64 %18 to i32
  %20 = tail call i32 @llvm.smax.i32(i32 %14, i32 %19)
  %21 = add nuw nsw i64 %13, 1
  %22 = icmp eq i64 %21, %11
  br i1 %22, label %23, label %12, !llvm.loop !269

23:                                               ; preds = %12, %1
  %24 = phi i32 [ 10, %1 ], [ %20, %12 ]
  %25 = add nuw nsw i32 %24, 5
  %26 = sdiv i32 76, %25
  %27 = tail call i32 @llvm.smax.i32(i32 %26, i32 1)
  %28 = add i32 %6, -1
  %29 = add i32 %28, %27
  %30 = sdiv i32 %29, %27
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %58

32:                                               ; preds = %23
  %33 = getelementptr inbounds %struct.lemon, ptr %0, i64 0, i32 6
  %34 = zext i32 %30 to i64
  %35 = zext i32 %30 to i64
  br label %36

36:                                               ; preds = %54, %32
  %37 = phi i64 [ 0, %32 ], [ %56, %54 ]
  %38 = trunc i64 %37 to i32
  %39 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.52) #32
  %40 = load i32, ptr %5, align 8, !tbaa !52
  %41 = icmp sgt i32 %40, %38
  br i1 %41, label %42, label %54

42:                                               ; preds = %42, %36
  %43 = phi i64 [ %50, %42 ], [ %37, %36 ]
  %44 = load ptr, ptr %33, align 8, !tbaa !54
  %45 = getelementptr inbounds ptr, ptr %44, i64 %43
  %46 = load ptr, ptr %45, align 8, !tbaa !7
  %47 = load ptr, ptr %46, align 8, !tbaa !73
  %48 = trunc i64 %43 to i32
  %49 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.53, i32 noundef %48, i32 noundef %24, i32 noundef %24, ptr noundef %47) #32
  %50 = add i64 %43, %34
  %51 = load i32, ptr %5, align 8, !tbaa !52
  %52 = sext i32 %51 to i64
  %53 = icmp slt i64 %50, %52
  br i1 %53, label %42, label %54, !llvm.loop !270

54:                                               ; preds = %42, %36
  %55 = tail call i32 @putchar(i32 10)
  %56 = add nuw nsw i64 %37, 1
  %57 = icmp eq i64 %56, %35
  br i1 %57, label %58, label %36, !llvm.loop !271

58:                                               ; preds = %54, %23
  %59 = getelementptr inbounds %struct.lemon, ptr %0, i64 0, i32 1
  %60 = load ptr, ptr %59, align 8, !tbaa !7
  %61 = icmp eq ptr %60, null
  br i1 %61, label %118, label %62

62:                                               ; preds = %113, %58
  %63 = phi ptr [ %116, %113 ], [ %60, %58 ]
  %64 = load ptr, ptr %63, align 8, !tbaa !60
  %65 = load ptr, ptr %64, align 8, !tbaa !73
  %66 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.55, ptr noundef %65) #32
  %67 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.56) #32
  %68 = getelementptr inbounds %struct.rule, ptr %63, i64 0, i32 4
  %69 = load i32, ptr %68, align 8, !tbaa !42
  %70 = icmp sgt i32 %69, 0
  br i1 %70, label %71, label %105

71:                                               ; preds = %62
  %72 = getelementptr inbounds %struct.rule, ptr %63, i64 0, i32 5
  br label %73

73:                                               ; preds = %100, %71
  %74 = phi i64 [ 0, %71 ], [ %101, %100 ]
  %75 = load ptr, ptr %72, align 8, !tbaa !43
  %76 = getelementptr inbounds ptr, ptr %75, i64 %74
  %77 = load ptr, ptr %76, align 8, !tbaa !7
  %78 = load ptr, ptr %77, align 8, !tbaa !73
  %79 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.57, ptr noundef %78) #32
  %80 = getelementptr inbounds %struct.symbol, ptr %77, i64 0, i32 2
  %81 = load i32, ptr %80, align 4, !tbaa !44
  %82 = icmp eq i32 %81, 2
  br i1 %82, label %83, label %100

83:                                               ; preds = %73
  %84 = getelementptr inbounds %struct.symbol, ptr %77, i64 0, i32 14
  %85 = load i32, ptr %84, align 4, !tbaa !46
  %86 = icmp sgt i32 %85, 1
  br i1 %86, label %87, label %100

87:                                               ; preds = %83
  %88 = getelementptr inbounds %struct.symbol, ptr %77, i64 0, i32 15
  br label %89

89:                                               ; preds = %89, %87
  %90 = phi i64 [ 1, %87 ], [ %96, %89 ]
  %91 = load ptr, ptr %88, align 8, !tbaa !47
  %92 = getelementptr inbounds ptr, ptr %91, i64 %90
  %93 = load ptr, ptr %92, align 8, !tbaa !7
  %94 = load ptr, ptr %93, align 8, !tbaa !73
  %95 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.58, ptr noundef %94) #32
  %96 = add nuw nsw i64 %90, 1
  %97 = load i32, ptr %84, align 4, !tbaa !46
  %98 = sext i32 %97 to i64
  %99 = icmp slt i64 %96, %98
  br i1 %99, label %89, label %100, !llvm.loop !272

100:                                              ; preds = %89, %83, %73
  %101 = add nuw nsw i64 %74, 1
  %102 = load i32, ptr %68, align 8, !tbaa !42
  %103 = sext i32 %102 to i64
  %104 = icmp slt i64 %101, %103
  br i1 %104, label %73, label %105, !llvm.loop !273

105:                                              ; preds = %100, %62
  %106 = tail call i32 @putchar(i32 46)
  %107 = getelementptr inbounds %struct.rule, ptr %63, i64 0, i32 9
  %108 = load ptr, ptr %107, align 8, !tbaa !40
  %109 = icmp eq ptr %108, null
  br i1 %109, label %113, label %110

110:                                              ; preds = %105
  %111 = load ptr, ptr %108, align 8, !tbaa !73
  %112 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.60, ptr noundef %111) #32
  br label %113

113:                                              ; preds = %110, %105
  %114 = tail call i32 @putchar(i32 10)
  %115 = getelementptr inbounds %struct.rule, ptr %63, i64 0, i32 13
  %116 = load ptr, ptr %115, align 8, !tbaa !7
  %117 = icmp eq ptr %116, null
  br i1 %117, label %118, label %62, !llvm.loop !274

118:                                              ; preds = %113, %58
  ret void
}

; Function Attrs: nofree nounwind optsize memory(readwrite, argmem: read) uwtable
define internal noalias ptr @State_arrayof() #20 {
  %1 = load ptr, ptr @x3a, align 8, !tbaa !7
  %2 = icmp eq ptr %1, null
  br i1 %2, label %23, label %3

3:                                                ; preds = %0
  %4 = getelementptr inbounds %struct.s_x4, ptr %1, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !138
  %6 = sext i32 %5 to i64
  %7 = shl nsw i64 %6, 3
  %8 = tail call noalias ptr @malloc(i64 noundef %7) #33
  %9 = icmp eq ptr %8, null
  br i1 %9, label %23, label %10

10:                                               ; preds = %3
  %11 = icmp sgt i32 %5, 0
  br i1 %11, label %12, label %23

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.s_x4, ptr %1, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !139
  %15 = zext i32 %5 to i64
  br label %16

16:                                               ; preds = %16, %12
  %17 = phi i64 [ 0, %12 ], [ %21, %16 ]
  %18 = getelementptr inbounds %struct.s_x3node, ptr %14, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !127
  %20 = getelementptr inbounds ptr, ptr %8, i64 %17
  store ptr %19, ptr %20, align 8, !tbaa !7
  %21 = add nuw nsw i64 %17, 1
  %22 = icmp eq i64 %21, %15
  br i1 %22, label %23, label %16, !llvm.loop !275

23:                                               ; preds = %16, %10, %3, %0
  %24 = phi ptr [ null, %0 ], [ null, %3 ], [ %8, %10 ], [ %8, %16 ]
  ret ptr %24
}

; Function Attrs: nounwind optsize uwtable
define internal void @CompressTables(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.lemon, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !113
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %119

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.lemon, ptr %0, i64 0, i32 9
  br label %7

7:                                                ; preds = %114, %5
  %8 = phi i32 [ %3, %5 ], [ %115, %114 ]
  %9 = phi i64 [ 0, %5 ], [ %116, %114 ]
  %10 = load ptr, ptr %0, align 8, !tbaa !165
  %11 = getelementptr inbounds ptr, ptr %10, i64 %9
  %12 = load ptr, ptr %11, align 8, !tbaa !7
  %13 = getelementptr inbounds %struct.state, ptr %12, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !7
  %15 = icmp eq ptr %14, null
  br i1 %15, label %114, label %16

16:                                               ; preds = %64, %7
  %17 = phi ptr [ %69, %64 ], [ %14, %7 ]
  %18 = phi i32 [ %65, %64 ], [ 0, %7 ]
  %19 = phi i32 [ %67, %64 ], [ 0, %7 ]
  %20 = phi ptr [ %66, %64 ], [ null, %7 ]
  %21 = getelementptr inbounds %struct.action, ptr %17, i64 0, i32 1
  %22 = load i32, ptr %21, align 8, !tbaa !17
  switch i32 %22, label %64 [
    i32 0, label %23
    i32 2, label %28
  ]

23:                                               ; preds = %16
  %24 = load ptr, ptr %17, align 8, !tbaa !18
  %25 = load ptr, ptr %6, align 8, !tbaa !266
  %26 = icmp eq ptr %24, %25
  %27 = select i1 %26, i32 1, i32 %18
  br label %64

28:                                               ; preds = %16
  %29 = getelementptr inbounds %struct.action, ptr %17, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !64
  %31 = getelementptr inbounds %struct.rule, ptr %30, i64 0, i32 2
  %32 = load i32, ptr %31, align 8, !tbaa !77
  %33 = icmp ne i32 %32, 0
  %34 = icmp eq ptr %30, %20
  %35 = select i1 %33, i1 true, i1 %34
  br i1 %35, label %64, label %36

36:                                               ; preds = %28
  %37 = getelementptr inbounds %struct.action, ptr %17, i64 0, i32 3
  %38 = load ptr, ptr %37, align 8, !tbaa !11
  %39 = icmp eq ptr %38, null
  br i1 %39, label %59, label %40

40:                                               ; preds = %54, %36
  %41 = phi ptr [ %57, %54 ], [ %38, %36 ]
  %42 = phi i32 [ %55, %54 ], [ 1, %36 ]
  %43 = getelementptr inbounds %struct.action, ptr %41, i64 0, i32 1
  %44 = load i32, ptr %43, align 8, !tbaa !17
  %45 = icmp eq i32 %44, 2
  br i1 %45, label %46, label %54

46:                                               ; preds = %40
  %47 = getelementptr inbounds %struct.action, ptr %41, i64 0, i32 2
  %48 = load ptr, ptr %47, align 8, !tbaa !64
  %49 = icmp ne ptr %48, %20
  %50 = icmp eq ptr %48, %30
  %51 = and i1 %49, %50
  %52 = zext i1 %51 to i32
  %53 = add nsw i32 %42, %52
  br label %54

54:                                               ; preds = %46, %40
  %55 = phi i32 [ %42, %40 ], [ %53, %46 ]
  %56 = getelementptr inbounds %struct.action, ptr %41, i64 0, i32 3
  %57 = load ptr, ptr %56, align 8, !tbaa !11
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %40, !llvm.loop !276

59:                                               ; preds = %54, %36
  %60 = phi i32 [ 1, %36 ], [ %55, %54 ]
  %61 = icmp sgt i32 %60, %19
  %62 = select i1 %61, ptr %30, ptr %20
  %63 = tail call i32 @llvm.smax.i32(i32 %60, i32 %19)
  br label %64

64:                                               ; preds = %59, %28, %23, %16
  %65 = phi i32 [ %18, %28 ], [ %18, %59 ], [ %27, %23 ], [ %18, %16 ]
  %66 = phi ptr [ %20, %28 ], [ %62, %59 ], [ %20, %23 ], [ %20, %16 ]
  %67 = phi i32 [ %19, %28 ], [ %63, %59 ], [ %19, %23 ], [ %19, %16 ]
  %68 = getelementptr inbounds %struct.action, ptr %17, i64 0, i32 3
  %69 = load ptr, ptr %68, align 8, !tbaa !7
  %70 = icmp eq ptr %69, null
  br i1 %70, label %71, label %16, !llvm.loop !277

71:                                               ; preds = %64
  %.lcssa2 = phi i32 [ %65, %64 ]
  %.lcssa1 = phi ptr [ %66, %64 ]
  %.lcssa = phi i32 [ %67, %64 ]
  %72 = icmp slt i32 %.lcssa, 1
  %73 = icmp ne i32 %.lcssa2, 0
  %74 = select i1 %72, i1 true, i1 %73
  br i1 %74, label %114, label %75

75:                                               ; preds = %71
  br i1 %15, label %89, label %76

76:                                               ; preds = %85, %75
  %77 = phi ptr [ %87, %85 ], [ %14, %75 ]
  %78 = getelementptr inbounds %struct.action, ptr %77, i64 0, i32 1
  %79 = load i32, ptr %78, align 8, !tbaa !17
  %80 = icmp eq i32 %79, 2
  br i1 %80, label %81, label %85

81:                                               ; preds = %76
  %82 = getelementptr inbounds %struct.action, ptr %77, i64 0, i32 2
  %83 = load ptr, ptr %82, align 8, !tbaa !64
  %84 = icmp eq ptr %83, %.lcssa1
  br i1 %84, label %89, label %85

85:                                               ; preds = %81, %76
  %86 = getelementptr inbounds %struct.action, ptr %77, i64 0, i32 3
  %87 = load ptr, ptr %86, align 8, !tbaa !7
  %88 = icmp eq ptr %87, null
  br i1 %88, label %89, label %76, !llvm.loop !278

89:                                               ; preds = %85, %81, %75
  %90 = phi ptr [ null, %75 ], [ %77, %81 ], [ null, %85 ]
  %91 = tail call ptr @Symbol_new(ptr noundef nonnull @.str.32) #32
  store ptr %91, ptr %90, align 8, !tbaa !18
  %92 = getelementptr inbounds %struct.action, ptr %90, i64 0, i32 3
  %93 = load ptr, ptr %92, align 8, !tbaa !11
  %94 = icmp eq ptr %93, null
  br i1 %94, label %109, label %95

95:                                               ; preds = %105, %89
  %96 = phi ptr [ %107, %105 ], [ %93, %89 ]
  %97 = getelementptr inbounds %struct.action, ptr %96, i64 0, i32 1
  %98 = load i32, ptr %97, align 8, !tbaa !17
  %99 = icmp eq i32 %98, 2
  br i1 %99, label %100, label %105

100:                                              ; preds = %95
  %101 = getelementptr inbounds %struct.action, ptr %96, i64 0, i32 2
  %102 = load ptr, ptr %101, align 8, !tbaa !64
  %103 = icmp eq ptr %102, %.lcssa1
  br i1 %103, label %104, label %105

104:                                              ; preds = %100
  store i32 9, ptr %97, align 8, !tbaa !17
  br label %105

105:                                              ; preds = %104, %100, %95
  %106 = getelementptr inbounds %struct.action, ptr %96, i64 0, i32 3
  %107 = load ptr, ptr %106, align 8, !tbaa !11
  %108 = icmp eq ptr %107, null
  br i1 %108, label %109, label %95, !llvm.loop !279

109:                                              ; preds = %105, %89
  %110 = load ptr, ptr %13, align 8, !tbaa !115
  %111 = getelementptr inbounds %struct.action, ptr %110, i64 0, i32 3
  %112 = tail call fastcc ptr @msort(ptr noundef %110, ptr noundef nonnull %111, ptr noundef nonnull @actioncmp) #32
  store ptr %112, ptr %13, align 8, !tbaa !115
  %113 = load i32, ptr %2, align 8, !tbaa !113
  br label %114

114:                                              ; preds = %109, %71, %7
  %115 = phi i32 [ %8, %71 ], [ %113, %109 ], [ %8, %7 ]
  %116 = add nuw nsw i64 %9, 1
  %117 = sext i32 %115 to i64
  %118 = icmp slt i64 %116, %117
  br i1 %118, label %7, label %119, !llvm.loop !280

119:                                              ; preds = %114, %1
  ret void
}

; Function Attrs: nofree nounwind optsize uwtable
define internal void @ResortStates(ptr nocapture noundef readonly %0) #9 {
  %2 = getelementptr inbounds %struct.lemon, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !113
  %4 = icmp sgt i32 %3, 0
  %5 = load ptr, ptr %0, align 8, !tbaa !165
  br i1 %4, label %6, label %52

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.lemon, ptr %0, i64 0, i32 3
  %8 = load i32, ptr %7, align 4, !tbaa !195
  %9 = add nsw i32 %8, %3
  %10 = getelementptr inbounds %struct.lemon, ptr %0, i64 0, i32 5
  %11 = getelementptr inbounds %struct.lemon, ptr %0, i64 0, i32 4
  %12 = zext i32 %3 to i64
  br label %13

13:                                               ; preds = %49, %6
  %14 = phi i64 [ 0, %6 ], [ %50, %49 ]
  %15 = getelementptr inbounds ptr, ptr %5, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !7
  %17 = getelementptr inbounds %struct.state, ptr %16, i64 0, i32 5
  %18 = getelementptr inbounds %struct.state, ptr %16, i64 0, i32 4
  %19 = getelementptr inbounds %struct.state, ptr %16, i64 0, i32 8
  store i32 %9, ptr %19, align 8, !tbaa !281
  store <4 x i32> <i32 0, i32 0, i32 -2147483647, i32 -2147483647>, ptr %18, align 8, !tbaa !33
  %20 = getelementptr inbounds %struct.state, ptr %16, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !7
  %22 = icmp eq ptr %21, null
  br i1 %22, label %49, label %23

23:                                               ; preds = %43, %13
  %24 = phi i32 [ %44, %43 ], [ 0, %13 ]
  %25 = phi i32 [ %45, %43 ], [ 0, %13 ]
  %26 = phi ptr [ %47, %43 ], [ %21, %13 ]
  %27 = tail call i32 @compute_action(ptr noundef nonnull %0, ptr noundef nonnull %26) #32
  %28 = icmp sgt i32 %27, -1
  br i1 %28, label %29, label %43

29:                                               ; preds = %23
  %30 = load ptr, ptr %26, align 8, !tbaa !18
  %31 = getelementptr inbounds %struct.symbol, ptr %30, i64 0, i32 1
  %32 = load i32, ptr %31, align 8, !tbaa !63
  %33 = load i32, ptr %10, align 4, !tbaa !57
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = add nsw i32 %24, 1
  store i32 %36, ptr %18, align 8, !tbaa !282
  br label %43

37:                                               ; preds = %29
  %38 = load i32, ptr %11, align 8, !tbaa !52
  %39 = icmp slt i32 %32, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = add nsw i32 %25, 1
  store i32 %41, ptr %17, align 4, !tbaa !283
  br label %43

42:                                               ; preds = %37
  store i32 %27, ptr %19, align 8, !tbaa !281
  br label %43

43:                                               ; preds = %42, %40, %35, %23
  %44 = phi i32 [ %24, %23 ], [ %24, %40 ], [ %24, %42 ], [ %36, %35 ]
  %45 = phi i32 [ %25, %23 ], [ %41, %40 ], [ %25, %42 ], [ %25, %35 ]
  %46 = getelementptr inbounds %struct.action, ptr %26, i64 0, i32 3
  %47 = load ptr, ptr %46, align 8, !tbaa !7
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %23, !llvm.loop !284

49:                                               ; preds = %43, %13
  %50 = add nuw nsw i64 %14, 1
  %51 = icmp eq i64 %50, %12
  br i1 %51, label %52, label %13, !llvm.loop !285

52:                                               ; preds = %49, %1
  %53 = getelementptr inbounds ptr, ptr %5, i64 1
  %54 = add nsw i32 %3, -1
  %55 = sext i32 %54 to i64
  tail call void @qsort(ptr noundef nonnull %53, i64 noundef %55, i64 noundef 8, ptr noundef nonnull @stateResortCompare) #34
  %56 = load i32, ptr %2, align 8, !tbaa !113
  %57 = icmp sgt i32 %56, 0
  br i1 %57, label %58, label %69

58:                                               ; preds = %52
  %59 = load ptr, ptr %0, align 8, !tbaa !165
  %60 = zext i32 %56 to i64
  br label %61

61:                                               ; preds = %61, %58
  %62 = phi i64 [ 0, %58 ], [ %67, %61 ]
  %63 = getelementptr inbounds ptr, ptr %59, i64 %62
  %64 = load ptr, ptr %63, align 8, !tbaa !7
  %65 = getelementptr inbounds %struct.state, ptr %64, i64 0, i32 2
  %66 = trunc i64 %62 to i32
  store i32 %66, ptr %65, align 8, !tbaa !114
  %67 = add nuw nsw i64 %62, 1
  %68 = icmp eq i64 %67, %60
  br i1 %68, label %69, label %61, !llvm.loop !286

69:                                               ; preds = %61, %52
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @ReportOutput(ptr nocapture noundef %0) #0 {
  %2 = alloca [20 x i8], align 16
  %3 = tail call ptr @file_open(ptr noundef %0, ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.70) #32
  %4 = icmp eq ptr %3, null
  br i1 %4, label %129, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.lemon, ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !113
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %70

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.lemon, ptr %0, i64 0, i32 37
  br label %11

11:                                               ; preds = %64, %9
  %12 = phi i64 [ 0, %9 ], [ %66, %64 ]
  %13 = load ptr, ptr %0, align 8, !tbaa !165
  %14 = getelementptr inbounds ptr, ptr %13, i64 %12
  %15 = load ptr, ptr %14, align 8, !tbaa !7
  %16 = getelementptr inbounds %struct.state, ptr %15, i64 0, i32 2
  %17 = load i32, ptr %16, align 8, !tbaa !114
  %18 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %3, ptr noundef nonnull @.str.71, i32 noundef %17) #32
  %19 = load i32, ptr %10, align 8, !tbaa !193
  %20 = icmp eq i32 %19, 0
  %21 = getelementptr inbounds %struct.state, ptr %15, i64 0, i32 1
  %22 = select i1 %20, ptr %21, ptr %15
  %23 = load ptr, ptr %22, align 8, !tbaa !7
  %24 = icmp eq ptr %23, null
  br i1 %24, label %49, label %25

25:                                               ; preds = %40, %11
  %26 = phi ptr [ %47, %40 ], [ %23, %11 ]
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #36
  %27 = getelementptr inbounds %struct.config, ptr %26, i64 0, i32 1
  %28 = load i32, ptr %27, align 8, !tbaa !100
  %29 = load ptr, ptr %26, align 8, !tbaa !99
  %30 = getelementptr inbounds %struct.rule, ptr %29, i64 0, i32 4
  %31 = load i32, ptr %30, align 8, !tbaa !42
  %32 = icmp eq i32 %28, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %25
  %34 = getelementptr inbounds %struct.rule, ptr %29, i64 0, i32 10
  %35 = load i32, ptr %34, align 8, !tbaa !116
  %36 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) @.str.72, i32 noundef %35) #34
  %37 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %3, ptr noundef nonnull @.str.73, ptr noundef nonnull %2) #32
  br label %40

38:                                               ; preds = %25
  %39 = call i64 @fwrite(ptr nonnull @.str.74, i64 10, i64 1, ptr nonnull %3)
  br label %40

40:                                               ; preds = %38, %33
  call void @ConfigPrint(ptr noundef nonnull %3, ptr noundef nonnull %26) #32
  %41 = call i32 @fputc(i32 10, ptr nonnull %3)
  %42 = load i32, ptr %10, align 8, !tbaa !193
  %43 = icmp eq i32 %42, 0
  %44 = getelementptr inbounds %struct.config, ptr %26, i64 0, i32 8
  %45 = getelementptr inbounds %struct.config, ptr %26, i64 0, i32 7
  %46 = select i1 %43, ptr %45, ptr %44
  %47 = load ptr, ptr %46, align 8, !tbaa !7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #36
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %25, !llvm.loop !287

49:                                               ; preds = %40, %11
  %50 = call i32 @fputc(i32 10, ptr nonnull %3)
  %51 = getelementptr inbounds %struct.state, ptr %15, i64 0, i32 3
  %52 = load ptr, ptr %51, align 8, !tbaa !7
  %53 = icmp eq ptr %52, null
  br i1 %53, label %64, label %54

54:                                               ; preds = %60, %49
  %55 = phi ptr [ %62, %60 ], [ %52, %49 ]
  %56 = call i32 @PrintAction(ptr noundef nonnull %55, ptr noundef nonnull %3, i32 noundef 30) #32, !range !101
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %54
  %59 = call i32 @fputc(i32 10, ptr nonnull %3)
  br label %60

60:                                               ; preds = %58, %54
  %61 = getelementptr inbounds %struct.action, ptr %55, i64 0, i32 3
  %62 = load ptr, ptr %61, align 8, !tbaa !7
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %54, !llvm.loop !288

64:                                               ; preds = %60, %49
  %65 = call i32 @fputc(i32 10, ptr nonnull %3)
  %66 = add nuw nsw i64 %12, 1
  %67 = load i32, ptr %6, align 8, !tbaa !113
  %68 = sext i32 %67 to i64
  %69 = icmp slt i64 %66, %68
  br i1 %69, label %11, label %70, !llvm.loop !289

70:                                               ; preds = %64, %5
  %71 = call i64 @fwrite(ptr nonnull @.str.75, i64 53, i64 1, ptr nonnull %3)
  %72 = call i64 @fwrite(ptr nonnull @.str.76, i64 9, i64 1, ptr nonnull %3)
  %73 = getelementptr inbounds %struct.lemon, ptr %0, i64 0, i32 4
  %74 = load i32, ptr %73, align 8, !tbaa !52
  %75 = icmp sgt i32 %74, 0
  br i1 %75, label %76, label %129

76:                                               ; preds = %70
  %77 = getelementptr inbounds %struct.lemon, ptr %0, i64 0, i32 6
  %78 = getelementptr inbounds %struct.lemon, ptr %0, i64 0, i32 5
  br label %79

79:                                               ; preds = %123, %76
  %80 = phi i64 [ 0, %76 ], [ %125, %123 ]
  %81 = load ptr, ptr %77, align 8, !tbaa !54
  %82 = getelementptr inbounds ptr, ptr %81, i64 %80
  %83 = load ptr, ptr %82, align 8, !tbaa !7
  %84 = load ptr, ptr %83, align 8, !tbaa !73
  %85 = trunc i64 %80 to i32
  %86 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %3, ptr noundef nonnull @.str.77, i32 noundef %85, ptr noundef %84) #32
  %87 = getelementptr inbounds %struct.symbol, ptr %83, i64 0, i32 2
  %88 = load i32, ptr %87, align 4, !tbaa !44
  %89 = icmp eq i32 %88, 1
  br i1 %89, label %90, label %123

90:                                               ; preds = %79
  %91 = call i32 @fputc(i32 58, ptr nonnull %3)
  %92 = getelementptr inbounds %struct.symbol, ptr %83, i64 0, i32 8
  %93 = load i32, ptr %92, align 8, !tbaa !55
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %97, label %95

95:                                               ; preds = %90
  %96 = call i64 @fwrite(ptr nonnull @.str.79, i64 9, i64 1, ptr nonnull %3)
  br label %97

97:                                               ; preds = %95, %90
  %98 = load i32, ptr %78, align 4, !tbaa !57
  %99 = icmp sgt i32 %98, 0
  br i1 %99, label %100, label %123

100:                                              ; preds = %97
  %101 = getelementptr inbounds %struct.symbol, ptr %83, i64 0, i32 7
  br label %102

102:                                              ; preds = %118, %100
  %103 = phi i32 [ %98, %100 ], [ %119, %118 ]
  %104 = phi i64 [ 0, %100 ], [ %120, %118 ]
  %105 = load ptr, ptr %101, align 8, !tbaa !58
  %106 = icmp eq ptr %105, null
  br i1 %106, label %118, label %107

107:                                              ; preds = %102
  %108 = getelementptr inbounds i8, ptr %105, i64 %104
  %109 = load i8, ptr %108, align 1, !tbaa !64
  %110 = icmp eq i8 %109, 0
  br i1 %110, label %118, label %111

111:                                              ; preds = %107
  %112 = load ptr, ptr %77, align 8, !tbaa !54
  %113 = getelementptr inbounds ptr, ptr %112, i64 %104
  %114 = load ptr, ptr %113, align 8, !tbaa !7
  %115 = load ptr, ptr %114, align 8, !tbaa !73
  %116 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %3, ptr noundef nonnull @.str.57, ptr noundef %115) #32
  %117 = load i32, ptr %78, align 4, !tbaa !57
  br label %118

118:                                              ; preds = %111, %107, %102
  %119 = phi i32 [ %103, %102 ], [ %103, %107 ], [ %117, %111 ]
  %120 = add nuw nsw i64 %104, 1
  %121 = sext i32 %119 to i64
  %122 = icmp slt i64 %120, %121
  br i1 %122, label %102, label %123, !llvm.loop !290

123:                                              ; preds = %118, %97, %79
  %124 = call i32 @fputc(i32 10, ptr nonnull %3)
  %125 = add nuw nsw i64 %80, 1
  %126 = load i32, ptr %73, align 8, !tbaa !52
  %127 = sext i32 %126 to i64
  %128 = icmp slt i64 %125, %127
  br i1 %128, label %79, label %129, !llvm.loop !291

129:                                              ; preds = %123, %70, %1
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @ReportTable(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca [1000 x i8], align 16
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 1000, ptr nonnull %3) #36
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #36
  %5 = tail call ptr @tplt_open(ptr noundef %0) #32
  %6 = icmp eq ptr %5, null
  br i1 %6, label %997, label %7

7:                                                ; preds = %2
  %8 = tail call ptr @file_open(ptr noundef %0, ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.70) #32
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %7
  %11 = tail call i32 @fclose(ptr noundef nonnull %5) #32
  br label %997

12:                                               ; preds = %7
  store i32 1, ptr %4, align 4, !tbaa !33
  %13 = getelementptr inbounds %struct.lemon, ptr %0, i64 0, i32 10
  %14 = load ptr, ptr %13, align 8, !tbaa !292
  call void @tplt_xfer(ptr noundef %14, ptr noundef nonnull %5, ptr noundef nonnull %8, ptr noundef nonnull %4) #32
  %15 = getelementptr inbounds %struct.lemon, ptr %0, i64 0, i32 16
  %16 = load ptr, ptr %15, align 8, !tbaa !293
  %17 = getelementptr inbounds %struct.lemon, ptr %0, i64 0, i32 17
  %18 = load i32, ptr %17, align 8, !tbaa !294
  call void @tplt_print(ptr noundef nonnull %8, ptr noundef %0, ptr noundef %16, i32 noundef %18, ptr noundef nonnull %4) #32
  %19 = icmp eq i32 %1, 0
  br i1 %19, label %56, label %20

20:                                               ; preds = %12
  %21 = tail call ptr @file_makename(ptr noundef nonnull %0, ptr noundef nonnull @.str.113) #32
  %22 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %8, ptr noundef nonnull @.str.114, ptr noundef %21) #32
  %23 = load i32, ptr %4, align 4, !tbaa !33
  %24 = add nsw i32 %23, 1
  store i32 %24, ptr %4, align 4, !tbaa !33
  tail call void @free(ptr noundef %21) #34
  %25 = load ptr, ptr %13, align 8, !tbaa !292
  call void @tplt_xfer(ptr noundef %25, ptr noundef nonnull %5, ptr noundef nonnull %8, ptr noundef nonnull %4) #32
  %26 = tail call i64 @fwrite(ptr nonnull @.str.103, i64 14, i64 1, ptr nonnull %8)
  %27 = load i32, ptr %4, align 4, !tbaa !33
  %28 = add nsw i32 %27, 1
  %29 = getelementptr inbounds %struct.lemon, ptr %0, i64 0, i32 34
  %30 = load ptr, ptr %29, align 8, !tbaa !295
  %31 = icmp eq ptr %30, null
  %32 = select i1 %31, ptr @.str.39, ptr %30
  %33 = getelementptr inbounds %struct.lemon, ptr %0, i64 0, i32 5
  %34 = load i32, ptr %33, align 4, !tbaa !57
  %35 = icmp sgt i32 %34, 1
  br i1 %35, label %36, label %52

36:                                               ; preds = %20
  %37 = getelementptr inbounds %struct.lemon, ptr %0, i64 0, i32 6
  br label %38

38:                                               ; preds = %38, %36
  %39 = phi i64 [ 1, %36 ], [ %48, %38 ]
  %40 = phi i32 [ %28, %36 ], [ %47, %38 ]
  %41 = load ptr, ptr %37, align 8, !tbaa !54
  %42 = getelementptr inbounds ptr, ptr %41, i64 %39
  %43 = load ptr, ptr %42, align 8, !tbaa !7
  %44 = load ptr, ptr %43, align 8, !tbaa !73
  %45 = trunc i64 %39 to i32
  %46 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull @.str.115, ptr noundef nonnull %32, ptr noundef %44, i32 noundef %45) #32
  %47 = add nsw i32 %40, 1
  %48 = add nuw nsw i64 %39, 1
  %49 = load i32, ptr %33, align 4, !tbaa !57
  %50 = sext i32 %49 to i64
  %51 = icmp slt i64 %48, %50
  br i1 %51, label %38, label %52, !llvm.loop !296

52:                                               ; preds = %38, %20
  %53 = phi i32 [ %28, %20 ], [ %47, %38 ]
  %54 = tail call i64 @fwrite(ptr nonnull @.str.106, i64 7, i64 1, ptr %8)
  %55 = add nsw i32 %53, 1
  store i32 %55, ptr %4, align 4, !tbaa !33
  br label %58

56:                                               ; preds = %12
  %57 = load ptr, ptr %13, align 8, !tbaa !292
  call void @tplt_xfer(ptr noundef %57, ptr noundef nonnull %5, ptr noundef nonnull %8, ptr noundef nonnull %4) #32
  br label %58

58:                                               ; preds = %56, %52
  %59 = load ptr, ptr %13, align 8, !tbaa !292
  call void @tplt_xfer(ptr noundef %59, ptr noundef nonnull %5, ptr noundef %8, ptr noundef nonnull %4) #32
  %60 = getelementptr inbounds %struct.lemon, ptr %0, i64 0, i32 4
  %61 = load i32, ptr %60, align 8, !tbaa !52
  %62 = add nsw i32 %61, 5
  %63 = icmp slt i32 %61, 251
  %64 = icmp ult i32 %62, 65535
  %65 = select i1 %64, ptr @.str.227, ptr @.str.228
  %66 = select i1 %63, ptr @.str.226, ptr %65
  %67 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull @.str.116, ptr noundef nonnull %66) #32
  %68 = load i32, ptr %4, align 4, !tbaa !33
  %69 = load i32, ptr %60, align 8, !tbaa !52
  %70 = add nsw i32 %69, 1
  %71 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull @.str.117, i32 noundef %70) #32
  %72 = getelementptr inbounds %struct.lemon, ptr %0, i64 0, i32 2
  %73 = load i32, ptr %72, align 8, !tbaa !113
  %74 = getelementptr inbounds %struct.lemon, ptr %0, i64 0, i32 3
  %75 = load i32, ptr %74, align 4, !tbaa !195
  %76 = add nsw i32 %75, %73
  %77 = add nsw i32 %76, 5
  %78 = icmp slt i32 %76, 251
  %79 = icmp ult i32 %77, 65535
  %80 = select i1 %79, ptr @.str.227, ptr @.str.228
  %81 = select i1 %78, ptr @.str.226, ptr %80
  %82 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull @.str.118, ptr noundef nonnull %81) #32
  %83 = add nsw i32 %68, 3
  store i32 %83, ptr %4, align 4, !tbaa !33
  %84 = getelementptr inbounds %struct.lemon, ptr %0, i64 0, i32 9
  %85 = load ptr, ptr %84, align 8, !tbaa !266
  %86 = icmp eq ptr %85, null
  br i1 %86, label %92, label %87

87:                                               ; preds = %58
  %88 = getelementptr inbounds %struct.symbol, ptr %85, i64 0, i32 1
  %89 = load i32, ptr %88, align 8, !tbaa !63
  %90 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull @.str.119, i32 noundef %89) #32
  %91 = add nsw i32 %68, 4
  store i32 %91, ptr %4, align 4, !tbaa !33
  br label %92

92:                                               ; preds = %87, %58
  call void @print_stack_union(ptr noundef %8, ptr noundef nonnull %0, ptr noundef nonnull %4, i32 noundef %1) #32
  %93 = tail call i64 @fwrite(ptr nonnull @.str.120, i64 21, i64 1, ptr %8)
  %94 = load i32, ptr %4, align 4, !tbaa !33
  %95 = getelementptr inbounds %struct.lemon, ptr %0, i64 0, i32 15
  %96 = load ptr, ptr %95, align 8, !tbaa !297
  %97 = icmp eq ptr %96, null
  br i1 %97, label %100, label %98

98:                                               ; preds = %92
  %99 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull @.str.121, ptr noundef nonnull %96) #32
  br label %102

100:                                              ; preds = %92
  %101 = tail call i64 @fwrite(ptr nonnull @.str.122, i64 25, i64 1, ptr %8)
  br label %102

102:                                              ; preds = %100, %98
  %103 = tail call i64 @fwrite(ptr nonnull @.str.106, i64 7, i64 1, ptr %8)
  %104 = add nsw i32 %94, 3
  store i32 %104, ptr %4, align 4, !tbaa !33
  br i1 %19, label %108, label %105

105:                                              ; preds = %102
  %106 = tail call i64 @fwrite(ptr nonnull @.str.103, i64 14, i64 1, ptr %8)
  %107 = add nsw i32 %94, 4
  store i32 %107, ptr %4, align 4, !tbaa !33
  br label %108

108:                                              ; preds = %105, %102
  %109 = phi i32 [ %107, %105 ], [ %104, %102 ]
  %110 = load ptr, ptr %13, align 8, !tbaa !292
  %111 = icmp eq ptr %110, null
  %112 = select i1 %111, ptr @.str.83, ptr %110
  %113 = getelementptr inbounds %struct.lemon, ptr %0, i64 0, i32 11
  %114 = load ptr, ptr %113, align 8, !tbaa !298
  %115 = icmp eq ptr %114, null
  br i1 %115, label %172, label %116

116:                                              ; preds = %108
  %117 = load i8, ptr %114, align 1, !tbaa !64
  %118 = icmp eq i8 %117, 0
  br i1 %118, label %172, label %119

119:                                              ; preds = %116
  %120 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %114) #35
  %121 = trunc i64 %120 to i32
  %122 = and i64 %120, 4294967295
  %123 = tail call i32 @llvm.smin.i32(i32 %121, i32 0)
  br label %124

124:                                              ; preds = %128, %119
  %125 = phi i64 [ %131, %128 ], [ %122, %119 ]
  %126 = trunc i64 %125 to i32
  %127 = icmp sgt i32 %126, 0
  br i1 %127, label %128, label %139

128:                                              ; preds = %124
  %129 = tail call ptr @__ctype_b_loc() #37
  %130 = load ptr, ptr %129, align 8, !tbaa !7
  %131 = add nsw i64 %125, -1
  %132 = getelementptr inbounds i8, ptr %114, i64 %131
  %133 = load i8, ptr %132, align 1, !tbaa !64
  %134 = sext i8 %133 to i64
  %135 = getelementptr inbounds i16, ptr %130, i64 %134
  %136 = load i16, ptr %135, align 2, !tbaa !199
  %137 = and i16 %136, 8192
  %138 = icmp eq i16 %137, 0
  br i1 %138, label %139, label %124, !llvm.loop !299

139:                                              ; preds = %128, %124
  %140 = phi i32 [ %123, %124 ], [ %126, %128 ]
  %141 = zext i32 %140 to i64
  %142 = tail call i32 @llvm.smin.i32(i32 %140, i32 0)
  br label %143

143:                                              ; preds = %147, %139
  %144 = phi i64 [ %150, %147 ], [ %141, %139 ]
  %145 = trunc i64 %144 to i32
  %146 = icmp sgt i32 %145, 0
  br i1 %146, label %147, label %160

147:                                              ; preds = %143
  %148 = tail call ptr @__ctype_b_loc() #37
  %149 = load ptr, ptr %148, align 8, !tbaa !7
  %150 = add nsw i64 %144, -1
  %151 = getelementptr inbounds i8, ptr %114, i64 %150
  %152 = load i8, ptr %151, align 1, !tbaa !64
  %153 = sext i8 %152 to i64
  %154 = getelementptr inbounds i16, ptr %149, i64 %153
  %155 = load i16, ptr %154, align 2, !tbaa !199
  %156 = and i16 %155, 8
  %157 = icmp ne i16 %156, 0
  %158 = icmp eq i8 %152, 95
  %159 = or i1 %158, %157
  br i1 %159, label %143, label %160, !llvm.loop !300

160:                                              ; preds = %147, %143
  %161 = phi i32 [ %145, %147 ], [ %142, %143 ]
  %162 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull @.str.123, ptr noundef nonnull %112, ptr noundef nonnull %114) #32
  %163 = load ptr, ptr %113, align 8, !tbaa !298
  %164 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull @.str.124, ptr noundef nonnull %112, ptr noundef %163) #32
  %165 = load ptr, ptr %113, align 8, !tbaa !298
  %166 = sext i32 %161 to i64
  %167 = getelementptr inbounds i8, ptr %165, i64 %166
  %168 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull @.str.125, ptr noundef nonnull %112, ptr noundef %165, ptr noundef %167) #32
  %169 = load ptr, ptr %113, align 8, !tbaa !298
  %170 = getelementptr inbounds i8, ptr %169, i64 %166
  %171 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull @.str.126, ptr noundef nonnull %112, ptr noundef %170, ptr noundef %170) #32
  br label %177

172:                                              ; preds = %116, %108
  %173 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull @.str.127, ptr noundef nonnull %112) #32
  %174 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull @.str.128, ptr noundef nonnull %112) #32
  %175 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull @.str.129, ptr noundef nonnull %112) #32
  %176 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull @.str.130, ptr noundef nonnull %112) #32
  br label %177

177:                                              ; preds = %172, %160
  %178 = add nsw i32 %109, 4
  br i1 %19, label %182, label %179

179:                                              ; preds = %177
  %180 = tail call i64 @fwrite(ptr nonnull @.str.106, i64 7, i64 1, ptr %8)
  %181 = add nsw i32 %109, 5
  br label %182

182:                                              ; preds = %179, %177
  %183 = phi i32 [ %181, %179 ], [ %178, %177 ]
  %184 = load i32, ptr %72, align 8, !tbaa !113
  %185 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull @.str.131, i32 noundef %184) #32
  %186 = load i32, ptr %74, align 4, !tbaa !195
  %187 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull @.str.132, i32 noundef %186) #32
  %188 = add nsw i32 %183, 2
  store i32 %188, ptr %4, align 4, !tbaa !33
  %189 = getelementptr inbounds %struct.lemon, ptr %0, i64 0, i32 8
  %190 = load ptr, ptr %189, align 8, !tbaa !130
  %191 = getelementptr inbounds %struct.symbol, ptr %190, i64 0, i32 9
  %192 = load i32, ptr %191, align 4, !tbaa !194
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %203, label %194

194:                                              ; preds = %182
  %195 = getelementptr inbounds %struct.symbol, ptr %190, i64 0, i32 1
  %196 = load i32, ptr %195, align 8, !tbaa !63
  %197 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull @.str.133, i32 noundef %196) #32
  %198 = load ptr, ptr %189, align 8, !tbaa !130
  %199 = getelementptr inbounds %struct.symbol, ptr %198, i64 0, i32 13
  %200 = load i32, ptr %199, align 8, !tbaa !301
  %201 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull @.str.134, i32 noundef %200) #32
  %202 = add nsw i32 %183, 4
  store i32 %202, ptr %4, align 4, !tbaa !33
  br label %203

203:                                              ; preds = %194, %182
  %204 = phi i32 [ %202, %194 ], [ %188, %182 ]
  %205 = getelementptr inbounds %struct.lemon, ptr %0, i64 0, i32 38
  %206 = load i32, ptr %205, align 4, !tbaa !265
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %211, label %208

208:                                              ; preds = %203
  %209 = tail call i64 @fwrite(ptr nonnull @.str.135, i64 21, i64 1, ptr %8)
  %210 = add nsw i32 %204, 1
  store i32 %210, ptr %4, align 4, !tbaa !33
  br label %211

211:                                              ; preds = %208, %203
  %212 = load ptr, ptr %13, align 8, !tbaa !292
  call void @tplt_xfer(ptr noundef %212, ptr noundef nonnull %5, ptr noundef %8, ptr noundef nonnull %4) #32
  %213 = load i32, ptr %72, align 8, !tbaa !113
  %214 = shl nsw i32 %213, 1
  %215 = sext i32 %214 to i64
  %216 = tail call noalias ptr @calloc(i64 noundef %215, i64 noundef 16) #28
  %217 = icmp eq ptr %216, null
  br i1 %217, label %223, label %218

218:                                              ; preds = %211
  %219 = icmp sgt i32 %213, 0
  br i1 %219, label %220, label %244

220:                                              ; preds = %218
  %221 = load ptr, ptr %0, align 8, !tbaa !165
  %222 = zext i32 %213 to i64
  br label %226

223:                                              ; preds = %211
  %224 = load ptr, ptr @stderr, align 8, !tbaa !7
  %225 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 14, i64 1, ptr %224) #29
  tail call void @exit(i32 noundef 1) #30
  unreachable

226:                                              ; preds = %226, %220
  %227 = phi i64 [ 0, %220 ], [ %242, %226 ]
  %228 = getelementptr inbounds ptr, ptr %221, i64 %227
  %229 = load ptr, ptr %228, align 8, !tbaa !7
  %230 = shl nuw nsw i64 %227, 1
  %231 = getelementptr inbounds %struct.axset, ptr %216, i64 %230
  store ptr %229, ptr %231, align 8, !tbaa !302
  %232 = getelementptr inbounds %struct.axset, ptr %216, i64 %230, i32 1
  store i32 1, ptr %232, align 8, !tbaa !304
  %233 = getelementptr inbounds %struct.state, ptr %229, i64 0, i32 4
  %234 = load i32, ptr %233, align 8, !tbaa !282
  %235 = getelementptr inbounds %struct.axset, ptr %216, i64 %230, i32 2
  store i32 %234, ptr %235, align 4, !tbaa !305
  %236 = or i64 %230, 1
  %237 = getelementptr inbounds %struct.axset, ptr %216, i64 %236
  store ptr %229, ptr %237, align 8, !tbaa !302
  %238 = getelementptr inbounds %struct.axset, ptr %216, i64 %236, i32 1
  store i32 0, ptr %238, align 8, !tbaa !304
  %239 = getelementptr inbounds %struct.state, ptr %229, i64 0, i32 5
  %240 = load i32, ptr %239, align 4, !tbaa !283
  %241 = getelementptr inbounds %struct.axset, ptr %216, i64 %236, i32 2
  store i32 %240, ptr %241, align 4, !tbaa !305
  %242 = add nuw nsw i64 %227, 1
  %243 = icmp eq i64 %242, %222
  br i1 %243, label %244, label %226, !llvm.loop !306

244:                                              ; preds = %226, %218
  tail call void @qsort(ptr noundef nonnull %216, i64 noundef %215, i64 noundef 16, ptr noundef nonnull @axset_compare) #34
  %245 = tail call ptr @acttab_alloc() #32
  %246 = load i32, ptr %72, align 8, !tbaa !113
  %247 = icmp sgt i32 %246, 0
  br i1 %247, label %248, label %323

248:                                              ; preds = %244
  %249 = getelementptr inbounds %struct.lemon, ptr %0, i64 0, i32 5
  br label %250

250:                                              ; preds = %313, %248
  %251 = phi i64 [ 0, %248 ], [ %318, %313 ]
  %252 = phi i32 [ 0, %248 ], [ %317, %313 ]
  %253 = phi i32 [ 0, %248 ], [ %316, %313 ]
  %254 = phi i32 [ 0, %248 ], [ %315, %313 ]
  %255 = phi i32 [ 0, %248 ], [ %314, %313 ]
  %256 = getelementptr inbounds %struct.axset, ptr %216, i64 %251, i32 2
  %257 = load i32, ptr %256, align 4, !tbaa !305
  %258 = icmp sgt i32 %257, 0
  br i1 %258, label %259, label %323

259:                                              ; preds = %250
  %260 = getelementptr inbounds %struct.axset, ptr %216, i64 %251
  %261 = load ptr, ptr %260, align 8, !tbaa !302
  %262 = getelementptr inbounds %struct.axset, ptr %216, i64 %251, i32 1
  %263 = load i32, ptr %262, align 8, !tbaa !304
  %264 = icmp eq i32 %263, 0
  %265 = getelementptr inbounds %struct.state, ptr %261, i64 0, i32 3
  %266 = load ptr, ptr %265, align 8, !tbaa !7
  %267 = icmp eq ptr %266, null
  br i1 %264, label %289, label %268

268:                                              ; preds = %259
  br i1 %267, label %284, label %269

269:                                              ; preds = %280, %268
  %270 = phi ptr [ %282, %280 ], [ %266, %268 ]
  %271 = load ptr, ptr %270, align 8, !tbaa !18
  %272 = getelementptr inbounds %struct.symbol, ptr %271, i64 0, i32 1
  %273 = load i32, ptr %272, align 8, !tbaa !63
  %274 = load i32, ptr %249, align 4, !tbaa !57
  %275 = icmp slt i32 %273, %274
  br i1 %275, label %276, label %280

276:                                              ; preds = %269
  %277 = tail call i32 @compute_action(ptr noundef nonnull %0, ptr noundef nonnull %270) #32
  %278 = icmp slt i32 %277, 0
  br i1 %278, label %280, label %279

279:                                              ; preds = %276
  tail call void @acttab_action(ptr noundef %245, i32 noundef %273, i32 noundef %277) #32
  br label %280

280:                                              ; preds = %279, %276, %269
  %281 = getelementptr inbounds %struct.action, ptr %270, i64 0, i32 3
  %282 = load ptr, ptr %281, align 8, !tbaa !7
  %283 = icmp eq ptr %282, null
  br i1 %283, label %284, label %269, !llvm.loop !307

284:                                              ; preds = %280, %268
  %285 = tail call i32 @acttab_insert(ptr noundef %245) #32
  %286 = getelementptr inbounds %struct.state, ptr %261, i64 0, i32 6
  store i32 %285, ptr %286, align 8, !tbaa !308
  %287 = tail call i32 @llvm.smin.i32(i32 %285, i32 %252)
  %288 = tail call i32 @llvm.smax.i32(i32 %285, i32 %253)
  br label %313

289:                                              ; preds = %259
  br i1 %267, label %308, label %290

290:                                              ; preds = %304, %289
  %291 = phi ptr [ %306, %304 ], [ %266, %289 ]
  %292 = load ptr, ptr %291, align 8, !tbaa !18
  %293 = getelementptr inbounds %struct.symbol, ptr %292, i64 0, i32 1
  %294 = load i32, ptr %293, align 8, !tbaa !63
  %295 = load i32, ptr %249, align 4, !tbaa !57
  %296 = icmp slt i32 %294, %295
  br i1 %296, label %304, label %297

297:                                              ; preds = %290
  %298 = load i32, ptr %60, align 8, !tbaa !52
  %299 = icmp eq i32 %294, %298
  br i1 %299, label %304, label %300

300:                                              ; preds = %297
  %301 = tail call i32 @compute_action(ptr noundef nonnull %0, ptr noundef nonnull %291) #32
  %302 = icmp slt i32 %301, 0
  br i1 %302, label %304, label %303

303:                                              ; preds = %300
  tail call void @acttab_action(ptr noundef %245, i32 noundef %294, i32 noundef %301) #32
  br label %304

304:                                              ; preds = %303, %300, %297, %290
  %305 = getelementptr inbounds %struct.action, ptr %291, i64 0, i32 3
  %306 = load ptr, ptr %305, align 8, !tbaa !7
  %307 = icmp eq ptr %306, null
  br i1 %307, label %308, label %290, !llvm.loop !309

308:                                              ; preds = %304, %289
  %309 = tail call i32 @acttab_insert(ptr noundef %245) #32
  %310 = getelementptr inbounds %struct.state, ptr %261, i64 0, i32 7
  store i32 %309, ptr %310, align 4, !tbaa !310
  %311 = tail call i32 @llvm.smin.i32(i32 %309, i32 %254)
  %312 = tail call i32 @llvm.smax.i32(i32 %309, i32 %255)
  br label %313

313:                                              ; preds = %308, %284
  %314 = phi i32 [ %255, %284 ], [ %312, %308 ]
  %315 = phi i32 [ %254, %284 ], [ %311, %308 ]
  %316 = phi i32 [ %288, %284 ], [ %253, %308 ]
  %317 = phi i32 [ %287, %284 ], [ %252, %308 ]
  %318 = add nuw nsw i64 %251, 1
  %319 = load i32, ptr %72, align 8, !tbaa !113
  %320 = shl nsw i32 %319, 1
  %321 = sext i32 %320 to i64
  %322 = icmp slt i64 %318, %321
  br i1 %322, label %250, label %323, !llvm.loop !311

323:                                              ; preds = %313, %250, %244
  %324 = phi i32 [ 0, %244 ], [ %314, %313 ], [ %255, %250 ]
  %325 = phi i32 [ 0, %244 ], [ %315, %313 ], [ %254, %250 ]
  %326 = phi i32 [ 0, %244 ], [ %316, %313 ], [ %253, %250 ]
  %327 = phi i32 [ 0, %244 ], [ %317, %313 ], [ %252, %250 ]
  tail call void @free(ptr noundef %216) #34
  %328 = tail call i64 @fwrite(ptr nonnull @.str.136, i64 42, i64 1, ptr %8)
  %329 = load i32, ptr %4, align 4, !tbaa !33
  %330 = add nsw i32 %329, 1
  store i32 %330, ptr %4, align 4, !tbaa !33
  %331 = load i32, ptr %245, align 8, !tbaa !30
  %332 = icmp sgt i32 %331, 0
  br i1 %332, label %333, label %376

333:                                              ; preds = %323
  %334 = getelementptr inbounds %struct.acttab, ptr %245, i64 0, i32 2
  %335 = load ptr, ptr %334, align 8, !tbaa !32
  %336 = add nsw i32 %331, -1
  %337 = zext i32 %336 to i64
  %338 = zext i32 %331 to i64
  %339 = load i32, ptr %4, align 4, !tbaa !33
  br label %340

340:                                              ; preds = %369, %333
  %341 = phi i32 [ %339, %333 ], [ %370, %369 ]
  %342 = phi i64 [ 0, %333 ], [ %373, %369 ]
  %343 = phi i32 [ 0, %333 ], [ %372, %369 ]
  %344 = phi i32 [ %330, %333 ], [ %371, %369 ]
  %345 = getelementptr inbounds %struct.anon, ptr %335, i64 %342, i32 1
  %346 = load i32, ptr %345, align 4, !tbaa !29
  %347 = icmp slt i32 %346, 0
  br i1 %347, label %348, label %353

348:                                              ; preds = %340
  %349 = load i32, ptr %72, align 8, !tbaa !113
  %350 = load i32, ptr %74, align 4, !tbaa !195
  %351 = add i32 %349, 2
  %352 = add i32 %351, %350
  br label %353

353:                                              ; preds = %348, %340
  %354 = phi i32 [ %352, %348 ], [ %346, %340 ]
  %355 = icmp eq i32 %343, 0
  br i1 %355, label %356, label %359

356:                                              ; preds = %353
  %357 = trunc i64 %342 to i32
  %358 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull @.str.137, i32 noundef %357) #32
  br label %359

359:                                              ; preds = %356, %353
  %360 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull @.str.138, i32 noundef %354) #32
  %361 = icmp eq i32 %343, 9
  %362 = icmp eq i64 %342, %337
  %363 = select i1 %361, i1 true, i1 %362
  br i1 %363, label %364, label %367

364:                                              ; preds = %359
  %365 = tail call i32 @fputc(i32 10, ptr %8)
  %366 = add nsw i32 %344, 1
  br label %369

367:                                              ; preds = %359
  %368 = add nsw i32 %343, 1
  br label %369

369:                                              ; preds = %367, %364
  %370 = phi i32 [ %366, %364 ], [ %341, %367 ]
  %371 = phi i32 [ %366, %364 ], [ %344, %367 ]
  %372 = phi i32 [ 0, %364 ], [ %368, %367 ]
  %373 = add nuw nsw i64 %342, 1
  %374 = icmp eq i64 %373, %338
  br i1 %374, label %375, label %340, !llvm.loop !312

375:                                              ; preds = %369
  %.lcssa20 = phi i32 [ %370, %369 ]
  %.lcssa19 = phi i32 [ %371, %369 ]
  store i32 %.lcssa20, ptr %4, align 4, !tbaa !33
  br label %376

376:                                              ; preds = %375, %323
  %377 = phi i32 [ %330, %323 ], [ %.lcssa19, %375 ]
  %378 = tail call i64 @fwrite(ptr nonnull @.str.139, i64 3, i64 1, ptr %8)
  %379 = tail call i64 @fwrite(ptr nonnull @.str.140, i64 43, i64 1, ptr %8)
  %380 = add nsw i32 %377, 2
  store i32 %380, ptr %4, align 4, !tbaa !33
  br i1 %332, label %381, label %421

381:                                              ; preds = %376
  %382 = getelementptr inbounds %struct.acttab, ptr %245, i64 0, i32 2
  %383 = load ptr, ptr %382, align 8, !tbaa !32
  %384 = add nsw i32 %331, -1
  %385 = zext i32 %384 to i64
  %386 = zext i32 %331 to i64
  %387 = load i32, ptr %4, align 4, !tbaa !33
  br label %388

388:                                              ; preds = %414, %381
  %389 = phi i32 [ %387, %381 ], [ %415, %414 ]
  %390 = phi i64 [ 0, %381 ], [ %418, %414 ]
  %391 = phi i32 [ 0, %381 ], [ %417, %414 ]
  %392 = phi i32 [ %380, %381 ], [ %416, %414 ]
  %393 = getelementptr inbounds %struct.anon, ptr %383, i64 %390
  %394 = load i32, ptr %393, align 4, !tbaa !27
  %395 = icmp slt i32 %394, 0
  br i1 %395, label %396, label %398

396:                                              ; preds = %388
  %397 = load i32, ptr %60, align 8, !tbaa !52
  br label %398

398:                                              ; preds = %396, %388
  %399 = phi i32 [ %397, %396 ], [ %394, %388 ]
  %400 = icmp eq i32 %391, 0
  br i1 %400, label %401, label %404

401:                                              ; preds = %398
  %402 = trunc i64 %390 to i32
  %403 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull @.str.137, i32 noundef %402) #32
  br label %404

404:                                              ; preds = %401, %398
  %405 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull @.str.138, i32 noundef %399) #32
  %406 = icmp eq i32 %391, 9
  %407 = icmp eq i64 %390, %385
  %408 = select i1 %406, i1 true, i1 %407
  br i1 %408, label %409, label %412

409:                                              ; preds = %404
  %410 = tail call i32 @fputc(i32 10, ptr %8)
  %411 = add nsw i32 %392, 1
  br label %414

412:                                              ; preds = %404
  %413 = add nsw i32 %391, 1
  br label %414

414:                                              ; preds = %412, %409
  %415 = phi i32 [ %411, %409 ], [ %389, %412 ]
  %416 = phi i32 [ %411, %409 ], [ %392, %412 ]
  %417 = phi i32 [ 0, %409 ], [ %413, %412 ]
  %418 = add nuw nsw i64 %390, 1
  %419 = icmp eq i64 %418, %386
  br i1 %419, label %420, label %388, !llvm.loop !313

420:                                              ; preds = %414
  %.lcssa18 = phi i32 [ %415, %414 ]
  %.lcssa17 = phi i32 [ %416, %414 ]
  store i32 %.lcssa18, ptr %4, align 4, !tbaa !33
  br label %421

421:                                              ; preds = %420, %376
  %422 = phi i32 [ %380, %376 ], [ %.lcssa17, %420 ]
  %423 = tail call i64 @fwrite(ptr nonnull @.str.139, i64 3, i64 1, ptr %8)
  %424 = add nsw i32 %327, -1
  %425 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull @.str.141, i32 noundef %424) #32
  %426 = load i32, ptr %72, align 8, !tbaa !113
  %427 = zext i32 %426 to i64
  %428 = tail call i32 @llvm.smin.i32(i32 %426, i32 0)
  br label %429

429:                                              ; preds = %433, %421
  %430 = phi i64 [ %435, %433 ], [ %427, %421 ]
  %431 = trunc i64 %430 to i32
  %432 = icmp sgt i32 %431, 0
  br i1 %432, label %433, label %441

433:                                              ; preds = %429
  %434 = load ptr, ptr %0, align 8, !tbaa !165
  %435 = add nsw i64 %430, -1
  %436 = getelementptr inbounds ptr, ptr %434, i64 %435
  %437 = load ptr, ptr %436, align 8, !tbaa !7
  %438 = getelementptr inbounds %struct.state, ptr %437, i64 0, i32 6
  %439 = load i32, ptr %438, align 8, !tbaa !308
  %440 = icmp eq i32 %439, -2147483647
  br i1 %440, label %429, label %441, !llvm.loop !314

441:                                              ; preds = %433, %429
  %442 = phi i32 [ %428, %429 ], [ %431, %433 ]
  %443 = add nsw i32 %442, -1
  %444 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull @.str.142, i32 noundef %443) #32
  %445 = icmp ugt i32 %424, -128
  %446 = icmp slt i32 %326, 128
  %447 = and i1 %446, %445
  %448 = icmp ugt i32 %424, -32768
  %449 = icmp slt i32 %326, 32767
  %450 = and i1 %449, %448
  %451 = select i1 %450, ptr @.str.230, ptr @.str.231
  %452 = select i1 %447, ptr @.str.229, ptr %451
  %453 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull @.str.143, ptr noundef nonnull %452) #32
  %454 = add nsw i32 %422, 4
  %455 = icmp sgt i32 %442, 0
  br i1 %455, label %456, label %493

456:                                              ; preds = %441
  %457 = zext i32 %443 to i64
  %458 = zext i32 %442 to i64
  %459 = load i32, ptr %4, align 4, !tbaa !33
  br label %460

460:                                              ; preds = %486, %456
  %461 = phi i32 [ %459, %456 ], [ %487, %486 ]
  %462 = phi i64 [ 0, %456 ], [ %490, %486 ]
  %463 = phi i32 [ 0, %456 ], [ %489, %486 ]
  %464 = phi i32 [ %454, %456 ], [ %488, %486 ]
  %465 = load ptr, ptr %0, align 8, !tbaa !165
  %466 = getelementptr inbounds ptr, ptr %465, i64 %462
  %467 = load ptr, ptr %466, align 8, !tbaa !7
  %468 = getelementptr inbounds %struct.state, ptr %467, i64 0, i32 6
  %469 = load i32, ptr %468, align 8, !tbaa !308
  %470 = icmp eq i32 %469, -2147483647
  %471 = select i1 %470, i32 %424, i32 %469
  %472 = icmp eq i32 %463, 0
  br i1 %472, label %473, label %476

473:                                              ; preds = %460
  %474 = trunc i64 %462 to i32
  %475 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull @.str.137, i32 noundef %474) #32
  br label %476

476:                                              ; preds = %473, %460
  %477 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull @.str.138, i32 noundef %471) #32
  %478 = icmp eq i32 %463, 9
  %479 = icmp eq i64 %462, %457
  %480 = or i1 %478, %479
  br i1 %480, label %481, label %484

481:                                              ; preds = %476
  %482 = tail call i32 @fputc(i32 10, ptr %8)
  %483 = add nsw i32 %464, 1
  br label %486

484:                                              ; preds = %476
  %485 = add nsw i32 %463, 1
  br label %486

486:                                              ; preds = %484, %481
  %487 = phi i32 [ %483, %481 ], [ %461, %484 ]
  %488 = phi i32 [ %483, %481 ], [ %464, %484 ]
  %489 = phi i32 [ 0, %481 ], [ %485, %484 ]
  %490 = add nuw nsw i64 %462, 1
  %491 = icmp eq i64 %490, %458
  br i1 %491, label %492, label %460, !llvm.loop !315

492:                                              ; preds = %486
  %.lcssa16 = phi i32 [ %487, %486 ]
  %.lcssa15 = phi i32 [ %488, %486 ]
  store i32 %.lcssa16, ptr %4, align 4, !tbaa !33
  br label %493

493:                                              ; preds = %492, %441
  %494 = phi i32 [ %454, %441 ], [ %.lcssa15, %492 ]
  %495 = tail call i64 @fwrite(ptr nonnull @.str.139, i64 3, i64 1, ptr %8)
  %496 = add nsw i32 %325, -1
  %497 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull @.str.144, i32 noundef %496) #32
  %498 = load i32, ptr %72, align 8, !tbaa !113
  %499 = zext i32 %498 to i64
  %500 = tail call i32 @llvm.smin.i32(i32 %498, i32 0)
  br label %501

501:                                              ; preds = %505, %493
  %502 = phi i64 [ %507, %505 ], [ %499, %493 ]
  %503 = trunc i64 %502 to i32
  %504 = icmp sgt i32 %503, 0
  br i1 %504, label %505, label %513

505:                                              ; preds = %501
  %506 = load ptr, ptr %0, align 8, !tbaa !165
  %507 = add nsw i64 %502, -1
  %508 = getelementptr inbounds ptr, ptr %506, i64 %507
  %509 = load ptr, ptr %508, align 8, !tbaa !7
  %510 = getelementptr inbounds %struct.state, ptr %509, i64 0, i32 7
  %511 = load i32, ptr %510, align 4, !tbaa !310
  %512 = icmp eq i32 %511, -2147483647
  br i1 %512, label %501, label %513, !llvm.loop !316

513:                                              ; preds = %505, %501
  %514 = phi i32 [ %500, %501 ], [ %503, %505 ]
  %515 = add nsw i32 %514, -1
  %516 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull @.str.145, i32 noundef %515) #32
  %517 = icmp ugt i32 %496, -128
  %518 = icmp slt i32 %324, 128
  %519 = and i1 %518, %517
  %520 = icmp ugt i32 %496, -32768
  %521 = icmp slt i32 %324, 32767
  %522 = and i1 %521, %520
  %523 = select i1 %522, ptr @.str.230, ptr @.str.231
  %524 = select i1 %519, ptr @.str.229, ptr %523
  %525 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull @.str.146, ptr noundef nonnull %524) #32
  %526 = add nsw i32 %494, 4
  %527 = icmp sgt i32 %514, 0
  br i1 %527, label %528, label %565

528:                                              ; preds = %513
  %529 = zext i32 %515 to i64
  %530 = zext i32 %514 to i64
  %531 = load i32, ptr %4, align 4, !tbaa !33
  br label %532

532:                                              ; preds = %558, %528
  %533 = phi i32 [ %531, %528 ], [ %559, %558 ]
  %534 = phi i64 [ 0, %528 ], [ %562, %558 ]
  %535 = phi i32 [ 0, %528 ], [ %561, %558 ]
  %536 = phi i32 [ %526, %528 ], [ %560, %558 ]
  %537 = load ptr, ptr %0, align 8, !tbaa !165
  %538 = getelementptr inbounds ptr, ptr %537, i64 %534
  %539 = load ptr, ptr %538, align 8, !tbaa !7
  %540 = getelementptr inbounds %struct.state, ptr %539, i64 0, i32 7
  %541 = load i32, ptr %540, align 4, !tbaa !310
  %542 = icmp eq i32 %541, -2147483647
  %543 = select i1 %542, i32 %496, i32 %541
  %544 = icmp eq i32 %535, 0
  br i1 %544, label %545, label %548

545:                                              ; preds = %532
  %546 = trunc i64 %534 to i32
  %547 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull @.str.137, i32 noundef %546) #32
  br label %548

548:                                              ; preds = %545, %532
  %549 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull @.str.138, i32 noundef %543) #32
  %550 = icmp eq i32 %535, 9
  %551 = icmp eq i64 %534, %529
  %552 = or i1 %550, %551
  br i1 %552, label %553, label %556

553:                                              ; preds = %548
  %554 = tail call i32 @fputc(i32 10, ptr %8)
  %555 = add nsw i32 %536, 1
  br label %558

556:                                              ; preds = %548
  %557 = add nsw i32 %535, 1
  br label %558

558:                                              ; preds = %556, %553
  %559 = phi i32 [ %555, %553 ], [ %533, %556 ]
  %560 = phi i32 [ %555, %553 ], [ %536, %556 ]
  %561 = phi i32 [ 0, %553 ], [ %557, %556 ]
  %562 = add nuw nsw i64 %534, 1
  %563 = icmp eq i64 %562, %530
  br i1 %563, label %564, label %532, !llvm.loop !317

564:                                              ; preds = %558
  %.lcssa14 = phi i32 [ %559, %558 ]
  %.lcssa13 = phi i32 [ %560, %558 ]
  store i32 %.lcssa14, ptr %4, align 4, !tbaa !33
  br label %565

565:                                              ; preds = %564, %513
  %566 = phi i32 [ %526, %513 ], [ %.lcssa13, %564 ]
  %567 = tail call i64 @fwrite(ptr nonnull @.str.139, i64 3, i64 1, ptr %8)
  %568 = tail call i64 @fwrite(ptr nonnull @.str.147, i64 43, i64 1, ptr %8)
  %569 = add nsw i32 %566, 2
  %570 = load i32, ptr %72, align 8, !tbaa !113
  %571 = icmp sgt i32 %570, 0
  br i1 %571, label %572, label %604

572:                                              ; preds = %565
  %573 = add nsw i32 %570, -1
  %574 = zext i32 %573 to i64
  %575 = zext i32 %570 to i64
  br label %576

576:                                              ; preds = %599, %572
  %577 = phi i64 [ 0, %572 ], [ %602, %599 ]
  %578 = phi i32 [ 0, %572 ], [ %601, %599 ]
  %579 = phi i32 [ %569, %572 ], [ %600, %599 ]
  %580 = load ptr, ptr %0, align 8, !tbaa !165
  %581 = getelementptr inbounds ptr, ptr %580, i64 %577
  %582 = load ptr, ptr %581, align 8, !tbaa !7
  %583 = icmp eq i32 %578, 0
  br i1 %583, label %584, label %587

584:                                              ; preds = %576
  %585 = trunc i64 %577 to i32
  %586 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull @.str.137, i32 noundef %585) #32
  br label %587

587:                                              ; preds = %584, %576
  %588 = getelementptr inbounds %struct.state, ptr %582, i64 0, i32 8
  %589 = load i32, ptr %588, align 8, !tbaa !281
  %590 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull @.str.138, i32 noundef %589) #32
  %591 = icmp eq i32 %578, 9
  %592 = icmp eq i64 %577, %574
  %593 = select i1 %591, i1 true, i1 %592
  br i1 %593, label %594, label %597

594:                                              ; preds = %587
  %595 = tail call i32 @fputc(i32 10, ptr %8)
  %596 = add nsw i32 %579, 1
  br label %599

597:                                              ; preds = %587
  %598 = add nsw i32 %578, 1
  br label %599

599:                                              ; preds = %597, %594
  %600 = phi i32 [ %596, %594 ], [ %579, %597 ]
  %601 = phi i32 [ 0, %594 ], [ %598, %597 ]
  %602 = add nuw nsw i64 %577, 1
  %603 = icmp eq i64 %602, %575
  br i1 %603, label %604, label %576, !llvm.loop !318

604:                                              ; preds = %599, %565
  %605 = phi i32 [ %569, %565 ], [ %600, %599 ]
  %606 = tail call i64 @fwrite(ptr nonnull @.str.139, i64 3, i64 1, ptr %8)
  %607 = add nsw i32 %605, 1
  store i32 %607, ptr %4, align 4, !tbaa !33
  %608 = load ptr, ptr %13, align 8, !tbaa !292
  call void @tplt_xfer(ptr noundef %608, ptr noundef nonnull %5, ptr noundef %8, ptr noundef nonnull %4) #32
  %609 = load i32, ptr %205, align 4, !tbaa !265
  %610 = icmp eq i32 %609, 0
  br i1 %610, label %643, label %611

611:                                              ; preds = %604
  %612 = getelementptr inbounds %struct.lemon, ptr %0, i64 0, i32 5
  %613 = load i32, ptr %612, align 4, !tbaa !57
  %614 = icmp sgt i32 %613, 0
  br i1 %614, label %615, label %643

615:                                              ; preds = %611
  %616 = load i32, ptr %4, align 4, !tbaa !33
  %617 = getelementptr inbounds %struct.lemon, ptr %0, i64 0, i32 6
  br label %618

618:                                              ; preds = %636, %615
  %619 = phi i64 [ 0, %615 ], [ %638, %636 ]
  %620 = phi i32 [ %616, %615 ], [ %637, %636 ]
  %621 = load ptr, ptr %617, align 8, !tbaa !54
  %622 = getelementptr inbounds ptr, ptr %621, i64 %619
  %623 = load ptr, ptr %622, align 8, !tbaa !7
  %624 = getelementptr inbounds %struct.symbol, ptr %623, i64 0, i32 4
  %625 = load ptr, ptr %624, align 8, !tbaa !264
  %626 = icmp eq ptr %625, null
  br i1 %626, label %627, label %630

627:                                              ; preds = %618
  %628 = load ptr, ptr %623, align 8, !tbaa !73
  %629 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull @.str.148, ptr noundef %628) #32
  br label %636

630:                                              ; preds = %618
  %631 = getelementptr inbounds %struct.symbol, ptr %625, i64 0, i32 1
  %632 = load i32, ptr %631, align 8, !tbaa !63
  %633 = load ptr, ptr %623, align 8, !tbaa !73
  %634 = load ptr, ptr %625, align 8, !tbaa !73
  %635 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull @.str.149, i32 noundef %632, ptr noundef %633, ptr noundef %634) #32
  br label %636

636:                                              ; preds = %630, %627
  %637 = add nsw i32 %620, 1
  %638 = add nuw nsw i64 %619, 1
  %639 = load i32, ptr %612, align 4, !tbaa !57
  %640 = sext i32 %639 to i64
  %641 = icmp slt i64 %638, %640
  br i1 %641, label %618, label %642, !llvm.loop !319

642:                                              ; preds = %636
  %.lcssa12 = phi i32 [ %637, %636 ]
  store i32 %.lcssa12, ptr %4, align 4, !tbaa !33
  br label %643

643:                                              ; preds = %642, %611, %604
  %644 = load ptr, ptr %13, align 8, !tbaa !292
  call void @tplt_xfer(ptr noundef %644, ptr noundef nonnull %5, ptr noundef %8, ptr noundef nonnull %4) #32
  %645 = load i32, ptr %60, align 8, !tbaa !52
  %646 = icmp sgt i32 %645, 0
  br i1 %646, label %647, label %677

647:                                              ; preds = %643
  %648 = getelementptr inbounds %struct.lemon, ptr %0, i64 0, i32 6
  %649 = load i32, ptr %4, align 4, !tbaa !33
  br label %650

650:                                              ; preds = %664, %647
  %651 = phi i32 [ %649, %647 ], [ %665, %664 ]
  %652 = phi i64 [ 0, %647 ], [ %666, %664 ]
  %653 = load ptr, ptr %648, align 8, !tbaa !54
  %654 = getelementptr inbounds ptr, ptr %653, i64 %652
  %655 = load ptr, ptr %654, align 8, !tbaa !7
  %656 = load ptr, ptr %655, align 8, !tbaa !73
  %657 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) @.str.150, ptr noundef %656) #34
  %658 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull @.str.151, ptr noundef nonnull %3) #32
  %659 = and i64 %652, 3
  %660 = icmp eq i64 %659, 3
  br i1 %660, label %661, label %664

661:                                              ; preds = %650
  %662 = call i32 @fputc(i32 10, ptr %8)
  %663 = add nsw i32 %651, 1
  br label %664

664:                                              ; preds = %661, %650
  %665 = phi i32 [ %651, %650 ], [ %663, %661 ]
  %666 = add nuw nsw i64 %652, 1
  %667 = load i32, ptr %60, align 8, !tbaa !52
  %668 = sext i32 %667 to i64
  %669 = icmp slt i64 %666, %668
  br i1 %669, label %650, label %670, !llvm.loop !320

670:                                              ; preds = %664
  %.lcssa11 = phi i32 [ %665, %664 ]
  %.lcssa10 = phi i64 [ %666, %664 ]
  store i32 %.lcssa11, ptr %4, align 4, !tbaa !33
  %671 = and i64 %.lcssa10, 3
  %672 = icmp eq i64 %671, 0
  br i1 %672, label %677, label %673

673:                                              ; preds = %670
  %674 = call i32 @fputc(i32 10, ptr %8)
  %675 = load i32, ptr %4, align 4, !tbaa !33
  %676 = add nsw i32 %675, 1
  store i32 %676, ptr %4, align 4, !tbaa !33
  br label %677

677:                                              ; preds = %673, %670, %643
  %678 = load ptr, ptr %13, align 8, !tbaa !292
  call void @tplt_xfer(ptr noundef %678, ptr noundef nonnull %5, ptr noundef %8, ptr noundef nonnull %4) #32
  %679 = getelementptr inbounds %struct.lemon, ptr %0, i64 0, i32 1
  %680 = load ptr, ptr %679, align 8, !tbaa !7
  %681 = icmp eq ptr %680, null
  br i1 %681, label %696, label %682

682:                                              ; preds = %677
  %683 = load i32, ptr %4, align 4, !tbaa !33
  br label %684

684:                                              ; preds = %684, %682
  %685 = phi i32 [ %690, %684 ], [ %683, %682 ]
  %686 = phi ptr [ %693, %684 ], [ %680, %682 ]
  %687 = phi i32 [ %692, %684 ], [ 0, %682 ]
  %688 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull @.str.152, i32 noundef %687) #32
  call fastcc void @writeRuleText(ptr noundef %8, ptr noundef nonnull %686) #32
  %689 = call i64 @fwrite(ptr nonnull @.str.153, i64 3, i64 1, ptr %8)
  %690 = add nsw i32 %685, 1
  %691 = getelementptr inbounds %struct.rule, ptr %686, i64 0, i32 13
  %692 = add nuw nsw i32 %687, 1
  %693 = load ptr, ptr %691, align 8, !tbaa !7
  %694 = icmp eq ptr %693, null
  br i1 %694, label %695, label %684, !llvm.loop !321

695:                                              ; preds = %684
  %.lcssa9 = phi i32 [ %690, %684 ]
  store i32 %.lcssa9, ptr %4, align 4, !tbaa !33
  br label %696

696:                                              ; preds = %695, %677
  %697 = load ptr, ptr %13, align 8, !tbaa !292
  call void @tplt_xfer(ptr noundef %697, ptr noundef nonnull %5, ptr noundef %8, ptr noundef nonnull %4) #32
  %698 = getelementptr inbounds %struct.lemon, ptr %0, i64 0, i32 28
  %699 = load ptr, ptr %698, align 8, !tbaa !322
  %700 = icmp ne ptr %699, null
  %701 = load i32, ptr %60, align 8, !tbaa !52
  %702 = icmp sgt i32 %701, 0
  %703 = select i1 %700, i1 %702, i1 false
  br i1 %703, label %704, label %756

704:                                              ; preds = %696
  %705 = getelementptr inbounds %struct.lemon, ptr %0, i64 0, i32 6
  %706 = load i32, ptr %4, align 4, !tbaa !33
  br label %713

707:                                              ; preds = %732
  %.lcssa8 = phi i32 [ %733, %732 ]
  %.lcssa7 = phi i32 [ %734, %732 ]
  store i32 %.lcssa8, ptr %4, align 4, !tbaa !33
  %708 = icmp sgt i32 %.lcssa7, 0
  br i1 %708, label %709, label %756

709:                                              ; preds = %707
  %710 = getelementptr inbounds %struct.lemon, ptr %0, i64 0, i32 6
  %711 = load ptr, ptr %710, align 8, !tbaa !54
  %712 = zext i32 %.lcssa7 to i64
  br label %738

713:                                              ; preds = %732, %704
  %714 = phi i32 [ %706, %704 ], [ %733, %732 ]
  %715 = phi i32 [ %701, %704 ], [ %734, %732 ]
  %716 = phi i64 [ 0, %704 ], [ %735, %732 ]
  %717 = load ptr, ptr %705, align 8, !tbaa !54
  %718 = getelementptr inbounds ptr, ptr %717, i64 %716
  %719 = load ptr, ptr %718, align 8, !tbaa !7
  %720 = icmp eq ptr %719, null
  br i1 %720, label %732, label %721

721:                                              ; preds = %713
  %722 = getelementptr inbounds %struct.symbol, ptr %719, i64 0, i32 2
  %723 = load i32, ptr %722, align 4, !tbaa !44
  %724 = icmp eq i32 %723, 0
  br i1 %724, label %725, label %732

725:                                              ; preds = %721
  %726 = getelementptr inbounds %struct.symbol, ptr %719, i64 0, i32 1
  %727 = load i32, ptr %726, align 8, !tbaa !63
  %728 = load ptr, ptr %719, align 8, !tbaa !73
  %729 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull @.str.154, i32 noundef %727, ptr noundef %728) #32
  %730 = add nsw i32 %714, 1
  %731 = load i32, ptr %60, align 8, !tbaa !52
  br label %732

732:                                              ; preds = %725, %721, %713
  %733 = phi i32 [ %714, %713 ], [ %714, %721 ], [ %730, %725 ]
  %734 = phi i32 [ %715, %713 ], [ %715, %721 ], [ %731, %725 ]
  %735 = add nuw nsw i64 %716, 1
  %736 = sext i32 %734 to i64
  %737 = icmp slt i64 %735, %736
  br i1 %737, label %713, label %707, !llvm.loop !323

738:                                              ; preds = %745, %709
  %739 = phi i64 [ 0, %709 ], [ %746, %745 ]
  %740 = getelementptr inbounds ptr, ptr %711, i64 %739
  %741 = load ptr, ptr %740, align 8, !tbaa !7
  %742 = getelementptr inbounds %struct.symbol, ptr %741, i64 0, i32 2
  %743 = load i32, ptr %742, align 4, !tbaa !44
  %744 = icmp eq i32 %743, 0
  br i1 %744, label %748, label %745

745:                                              ; preds = %738
  %746 = add nuw nsw i64 %739, 1
  %747 = icmp eq i64 %746, %712
  br i1 %747, label %756, label %738, !llvm.loop !324

748:                                              ; preds = %738
  %.lcssa6 = phi i64 [ %739, %738 ]
  %749 = and i64 %.lcssa6, 4294967295
  %750 = getelementptr inbounds ptr, ptr %711, i64 %749
  %751 = load ptr, ptr %750, align 8, !tbaa !7
  call void @emit_destructor_code(ptr noundef %8, ptr noundef %751, ptr noundef nonnull %0, ptr noundef nonnull %4) #32
  %752 = call i64 @fwrite(ptr nonnull @.str.155, i64 13, i64 1, ptr %8)
  %753 = load i32, ptr %4, align 4, !tbaa !33
  %754 = add nsw i32 %753, 1
  store i32 %754, ptr %4, align 4, !tbaa !33
  %755 = load i32, ptr %60, align 8, !tbaa !52
  br label %756

756:                                              ; preds = %748, %745, %707, %696
  %757 = phi i32 [ %.lcssa7, %707 ], [ %755, %748 ], [ %701, %696 ], [ %.lcssa7, %745 ]
  %758 = getelementptr inbounds %struct.lemon, ptr %0, i64 0, i32 30
  %759 = load ptr, ptr %758, align 8, !tbaa !325
  %760 = icmp eq ptr %759, null
  br i1 %760, label %806, label %761

761:                                              ; preds = %756
  %762 = icmp sgt i32 %757, 0
  br i1 %762, label %763, label %894

763:                                              ; preds = %761
  %764 = getelementptr inbounds %struct.lemon, ptr %0, i64 0, i32 6
  %765 = load i32, ptr %4, align 4, !tbaa !33
  br label %766

766:                                              ; preds = %792, %763
  %767 = phi i32 [ %765, %763 ], [ %793, %792 ]
  %768 = phi i32 [ %757, %763 ], [ %794, %792 ]
  %769 = phi i64 [ 0, %763 ], [ %796, %792 ]
  %770 = phi ptr [ null, %763 ], [ %795, %792 ]
  %771 = load ptr, ptr %764, align 8, !tbaa !54
  %772 = getelementptr inbounds ptr, ptr %771, i64 %769
  %773 = load ptr, ptr %772, align 8, !tbaa !7
  %774 = icmp eq ptr %773, null
  br i1 %774, label %792, label %775

775:                                              ; preds = %766
  %776 = getelementptr inbounds %struct.symbol, ptr %773, i64 0, i32 2
  %777 = load i32, ptr %776, align 4, !tbaa !44
  %778 = icmp eq i32 %777, 0
  br i1 %778, label %792, label %779

779:                                              ; preds = %775
  %780 = getelementptr inbounds %struct.symbol, ptr %773, i64 0, i32 1
  %781 = load i32, ptr %780, align 8, !tbaa !63
  %782 = icmp slt i32 %781, 1
  br i1 %782, label %792, label %783

783:                                              ; preds = %779
  %784 = getelementptr inbounds %struct.symbol, ptr %773, i64 0, i32 10
  %785 = load ptr, ptr %784, align 8, !tbaa !326
  %786 = icmp eq ptr %785, null
  br i1 %786, label %787, label %792

787:                                              ; preds = %783
  %788 = load ptr, ptr %773, align 8, !tbaa !73
  %789 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull @.str.154, i32 noundef %781, ptr noundef %788) #32
  %790 = add nsw i32 %767, 1
  %791 = load i32, ptr %60, align 8, !tbaa !52
  br label %792

792:                                              ; preds = %787, %783, %779, %775, %766
  %793 = phi i32 [ %790, %787 ], [ %767, %783 ], [ %767, %779 ], [ %767, %775 ], [ %767, %766 ]
  %794 = phi i32 [ %791, %787 ], [ %768, %783 ], [ %768, %779 ], [ %768, %775 ], [ %768, %766 ]
  %795 = phi ptr [ %773, %787 ], [ %770, %783 ], [ %770, %779 ], [ %770, %775 ], [ %770, %766 ]
  %796 = add nuw nsw i64 %769, 1
  %797 = sext i32 %794 to i64
  %798 = icmp slt i64 %796, %797
  br i1 %798, label %766, label %799, !llvm.loop !327

799:                                              ; preds = %792
  %.lcssa5 = phi i32 [ %793, %792 ]
  %.lcssa4 = phi i32 [ %794, %792 ]
  %.lcssa3 = phi ptr [ %795, %792 ]
  store i32 %.lcssa5, ptr %4, align 4, !tbaa !33
  %800 = icmp eq ptr %.lcssa3, null
  br i1 %800, label %806, label %801

801:                                              ; preds = %799
  call void @emit_destructor_code(ptr noundef %8, ptr noundef nonnull %.lcssa3, ptr noundef nonnull %0, ptr noundef nonnull %4) #32
  %802 = call i64 @fwrite(ptr nonnull @.str.155, i64 13, i64 1, ptr %8)
  %803 = load i32, ptr %4, align 4, !tbaa !33
  %804 = add nsw i32 %803, 1
  store i32 %804, ptr %4, align 4, !tbaa !33
  %805 = load i32, ptr %60, align 8, !tbaa !52
  br label %806

806:                                              ; preds = %801, %799, %756
  %807 = phi i32 [ %.lcssa4, %799 ], [ %805, %801 ], [ %757, %756 ]
  %808 = icmp sgt i32 %807, 0
  br i1 %808, label %809, label %894

809:                                              ; preds = %806
  %810 = getelementptr inbounds %struct.lemon, ptr %0, i64 0, i32 6
  br label %811

811:                                              ; preds = %888, %809
  %812 = phi i32 [ %807, %809 ], [ %889, %888 ]
  %813 = phi i64 [ 0, %809 ], [ %890, %888 ]
  %814 = phi i64 [ 1, %809 ], [ %893, %888 ]
  %815 = load ptr, ptr %810, align 8, !tbaa !54
  %816 = getelementptr inbounds ptr, ptr %815, i64 %813
  %817 = load ptr, ptr %816, align 8, !tbaa !7
  %818 = icmp eq ptr %817, null
  br i1 %818, label %888, label %819

819:                                              ; preds = %811
  %820 = getelementptr inbounds %struct.symbol, ptr %817, i64 0, i32 2
  %821 = load i32, ptr %820, align 4, !tbaa !44
  %822 = icmp eq i32 %821, 0
  br i1 %822, label %888, label %823

823:                                              ; preds = %819
  %824 = getelementptr inbounds %struct.symbol, ptr %817, i64 0, i32 10
  %825 = load ptr, ptr %824, align 8, !tbaa !326
  %826 = icmp eq ptr %825, null
  br i1 %826, label %888, label %827

827:                                              ; preds = %823
  %828 = getelementptr inbounds %struct.symbol, ptr %817, i64 0, i32 1
  %829 = load i32, ptr %828, align 8, !tbaa !63
  %830 = load ptr, ptr %817, align 8, !tbaa !73
  %831 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull @.str.154, i32 noundef %829, ptr noundef %830) #32
  %832 = load i32, ptr %4, align 4, !tbaa !33
  %833 = add nsw i32 %832, 1
  store i32 %833, ptr %4, align 4, !tbaa !33
  %834 = add nuw nsw i64 %813, 1
  %835 = load i32, ptr %60, align 8, !tbaa !52
  %836 = sext i32 %835 to i64
  %837 = icmp slt i64 %834, %836
  br i1 %837, label %838, label %880

838:                                              ; preds = %827
  %839 = getelementptr inbounds %struct.symbol, ptr %817, i64 0, i32 13
  %840 = load i32, ptr %4, align 4, !tbaa !33
  br label %841

841:                                              ; preds = %873, %838
  %842 = phi i32 [ %840, %838 ], [ %874, %873 ]
  %843 = phi i32 [ %835, %838 ], [ %875, %873 ]
  %844 = phi i64 [ %814, %838 ], [ %876, %873 ]
  %845 = load ptr, ptr %810, align 8, !tbaa !54
  %846 = getelementptr inbounds ptr, ptr %845, i64 %844
  %847 = load ptr, ptr %846, align 8, !tbaa !7
  %848 = icmp eq ptr %847, null
  br i1 %848, label %873, label %849

849:                                              ; preds = %841
  %850 = getelementptr inbounds %struct.symbol, ptr %847, i64 0, i32 2
  %851 = load i32, ptr %850, align 4, !tbaa !44
  %852 = icmp eq i32 %851, 0
  br i1 %852, label %873, label %853

853:                                              ; preds = %849
  %854 = getelementptr inbounds %struct.symbol, ptr %847, i64 0, i32 10
  %855 = load ptr, ptr %854, align 8, !tbaa !326
  %856 = icmp eq ptr %855, null
  br i1 %856, label %873, label %857

857:                                              ; preds = %853
  %858 = getelementptr inbounds %struct.symbol, ptr %847, i64 0, i32 13
  %859 = load i32, ptr %858, align 8, !tbaa !301
  %860 = load i32, ptr %839, align 8, !tbaa !301
  %861 = icmp eq i32 %859, %860
  br i1 %861, label %862, label %873

862:                                              ; preds = %857
  %863 = load ptr, ptr %824, align 8, !tbaa !326
  %864 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %863, ptr noundef nonnull dereferenceable(1) %855) #35
  %865 = icmp eq i32 %864, 0
  br i1 %865, label %866, label %873

866:                                              ; preds = %862
  %867 = getelementptr inbounds %struct.symbol, ptr %847, i64 0, i32 1
  %868 = load i32, ptr %867, align 8, !tbaa !63
  %869 = load ptr, ptr %847, align 8, !tbaa !73
  %870 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull @.str.154, i32 noundef %868, ptr noundef %869) #32
  %871 = add nsw i32 %842, 1
  store ptr null, ptr %854, align 8, !tbaa !326
  %872 = load i32, ptr %60, align 8, !tbaa !52
  br label %873

873:                                              ; preds = %866, %862, %857, %853, %849, %841
  %874 = phi i32 [ %871, %866 ], [ %842, %862 ], [ %842, %857 ], [ %842, %853 ], [ %842, %849 ], [ %842, %841 ]
  %875 = phi i32 [ %872, %866 ], [ %843, %862 ], [ %843, %857 ], [ %843, %853 ], [ %843, %849 ], [ %843, %841 ]
  %876 = add nuw nsw i64 %844, 1
  %877 = trunc i64 %876 to i32
  %878 = icmp sgt i32 %875, %877
  br i1 %878, label %841, label %879, !llvm.loop !328

879:                                              ; preds = %873
  %.lcssa2 = phi i32 [ %874, %873 ]
  store i32 %.lcssa2, ptr %4, align 4, !tbaa !33
  br label %880

880:                                              ; preds = %879, %827
  %881 = load ptr, ptr %810, align 8, !tbaa !54
  %882 = getelementptr inbounds ptr, ptr %881, i64 %813
  %883 = load ptr, ptr %882, align 8, !tbaa !7
  call void @emit_destructor_code(ptr noundef %8, ptr noundef %883, ptr noundef nonnull %0, ptr noundef nonnull %4) #32
  %884 = call i64 @fwrite(ptr nonnull @.str.155, i64 13, i64 1, ptr %8)
  %885 = load i32, ptr %4, align 4, !tbaa !33
  %886 = add nsw i32 %885, 1
  store i32 %886, ptr %4, align 4, !tbaa !33
  %887 = load i32, ptr %60, align 8, !tbaa !52
  br label %888

888:                                              ; preds = %880, %823, %819, %811
  %889 = phi i32 [ %812, %811 ], [ %812, %819 ], [ %812, %823 ], [ %887, %880 ]
  %890 = add nuw nsw i64 %813, 1
  %891 = sext i32 %889 to i64
  %892 = icmp slt i64 %890, %891
  %893 = add nuw nsw i64 %814, 1
  br i1 %892, label %811, label %894, !llvm.loop !329

894:                                              ; preds = %888, %806, %761
  %895 = load ptr, ptr %13, align 8, !tbaa !292
  call void @tplt_xfer(ptr noundef %895, ptr noundef nonnull %5, ptr noundef %8, ptr noundef nonnull %4) #32
  %896 = getelementptr inbounds %struct.lemon, ptr %0, i64 0, i32 20
  %897 = load ptr, ptr %896, align 8, !tbaa !330
  %898 = getelementptr inbounds %struct.lemon, ptr %0, i64 0, i32 21
  %899 = load i32, ptr %898, align 8, !tbaa !331
  call void @tplt_print(ptr noundef %8, ptr noundef nonnull %0, ptr noundef %897, i32 noundef %899, ptr noundef nonnull %4) #32
  %900 = load ptr, ptr %13, align 8, !tbaa !292
  call void @tplt_xfer(ptr noundef %900, ptr noundef nonnull %5, ptr noundef %8, ptr noundef nonnull %4) #32
  %901 = load ptr, ptr %679, align 8, !tbaa !7
  %902 = icmp eq ptr %901, null
  br i1 %902, label %919, label %903

903:                                              ; preds = %894
  %904 = load i32, ptr %4, align 4, !tbaa !33
  br label %905

905:                                              ; preds = %905, %903
  %906 = phi i32 [ %914, %905 ], [ %904, %903 ]
  %907 = phi ptr [ %916, %905 ], [ %901, %903 ]
  %908 = load ptr, ptr %907, align 8, !tbaa !60
  %909 = getelementptr inbounds %struct.symbol, ptr %908, i64 0, i32 1
  %910 = load i32, ptr %909, align 8, !tbaa !63
  %911 = getelementptr inbounds %struct.rule, ptr %907, i64 0, i32 4
  %912 = load i32, ptr %911, align 8, !tbaa !42
  %913 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull @.str.156, i32 noundef %910, i32 noundef %912) #32
  %914 = add nsw i32 %906, 1
  %915 = getelementptr inbounds %struct.rule, ptr %907, i64 0, i32 13
  %916 = load ptr, ptr %915, align 8, !tbaa !7
  %917 = icmp eq ptr %916, null
  br i1 %917, label %918, label %905, !llvm.loop !332

918:                                              ; preds = %905
  %.lcssa1 = phi i32 [ %914, %905 ]
  store i32 %.lcssa1, ptr %4, align 4, !tbaa !33
  br label %919

919:                                              ; preds = %918, %894
  %920 = load ptr, ptr %13, align 8, !tbaa !292
  call void @tplt_xfer(ptr noundef %920, ptr noundef nonnull %5, ptr noundef %8, ptr noundef nonnull %4) #32
  %921 = load ptr, ptr %679, align 8, !tbaa !7
  %922 = icmp eq ptr %921, null
  br i1 %922, label %975, label %926

923:                                              ; preds = %926
  %924 = load ptr, ptr %679, align 8, !tbaa !7
  %925 = icmp eq ptr %924, null
  br i1 %925, label %975, label %931

926:                                              ; preds = %926, %919
  %927 = phi ptr [ %929, %926 ], [ %921, %919 ]
  call void @translate_code(ptr noundef %0, ptr noundef nonnull %927) #32
  %928 = getelementptr inbounds %struct.rule, ptr %927, i64 0, i32 13
  %929 = load ptr, ptr %928, align 8, !tbaa !7
  %930 = icmp eq ptr %929, null
  br i1 %930, label %923, label %926, !llvm.loop !333

931:                                              ; preds = %971, %923
  %932 = phi ptr [ %973, %971 ], [ %924, %923 ]
  %933 = getelementptr inbounds %struct.rule, ptr %932, i64 0, i32 8
  %934 = load ptr, ptr %933, align 8, !tbaa !250
  %935 = icmp eq ptr %934, null
  br i1 %935, label %971, label %936

936:                                              ; preds = %931
  %937 = getelementptr inbounds %struct.rule, ptr %932, i64 0, i32 10
  %938 = load i32, ptr %937, align 8, !tbaa !116
  %939 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull @.str.157, i32 noundef %938) #32
  call fastcc void @writeRuleText(ptr noundef %8, ptr noundef nonnull %932) #32
  %940 = call i64 @fwrite(ptr nonnull @.str.158, i64 4, i64 1, ptr %8)
  %941 = load i32, ptr %4, align 4, !tbaa !33
  %942 = add nsw i32 %941, 1
  store i32 %942, ptr %4, align 4, !tbaa !33
  %943 = getelementptr inbounds %struct.rule, ptr %932, i64 0, i32 13
  %944 = load ptr, ptr %943, align 8, !tbaa !256
  %945 = icmp eq ptr %944, null
  br i1 %945, label %967, label %946

946:                                              ; preds = %936
  %947 = load i32, ptr %4, align 4, !tbaa !33
  br label %948

948:                                              ; preds = %961, %946
  %949 = phi i32 [ %962, %961 ], [ %947, %946 ]
  %950 = phi ptr [ %964, %961 ], [ %944, %946 ]
  %951 = getelementptr inbounds %struct.rule, ptr %950, i64 0, i32 8
  %952 = load ptr, ptr %951, align 8, !tbaa !250
  %953 = load ptr, ptr %933, align 8, !tbaa !250
  %954 = icmp eq ptr %952, %953
  br i1 %954, label %955, label %961

955:                                              ; preds = %948
  %956 = getelementptr inbounds %struct.rule, ptr %950, i64 0, i32 10
  %957 = load i32, ptr %956, align 8, !tbaa !116
  %958 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull @.str.157, i32 noundef %957) #32
  call fastcc void @writeRuleText(ptr noundef %8, ptr noundef nonnull %950) #32
  %959 = call i64 @fwrite(ptr nonnull @.str.158, i64 4, i64 1, ptr %8)
  %960 = add nsw i32 %949, 1
  store ptr null, ptr %951, align 8, !tbaa !250
  br label %961

961:                                              ; preds = %955, %948
  %962 = phi i32 [ %949, %948 ], [ %960, %955 ]
  %963 = getelementptr inbounds %struct.rule, ptr %950, i64 0, i32 13
  %964 = load ptr, ptr %963, align 8, !tbaa !256
  %965 = icmp eq ptr %964, null
  br i1 %965, label %966, label %948, !llvm.loop !334

966:                                              ; preds = %961
  %.lcssa = phi i32 [ %962, %961 ]
  store i32 %.lcssa, ptr %4, align 4, !tbaa !33
  br label %967

967:                                              ; preds = %966, %936
  call void @emit_code(ptr noundef %8, ptr noundef nonnull %932, ptr noundef %0, ptr noundef nonnull %4) #32
  %968 = call i64 @fwrite(ptr nonnull @.str.159, i64 15, i64 1, ptr %8)
  %969 = load i32, ptr %4, align 4, !tbaa !33
  %970 = add nsw i32 %969, 1
  store i32 %970, ptr %4, align 4, !tbaa !33
  br label %971

971:                                              ; preds = %967, %931
  %972 = getelementptr inbounds %struct.rule, ptr %932, i64 0, i32 13
  %973 = load ptr, ptr %972, align 8, !tbaa !7
  %974 = icmp eq ptr %973, null
  br i1 %974, label %975, label %931, !llvm.loop !335

975:                                              ; preds = %971, %923, %919
  %976 = load ptr, ptr %13, align 8, !tbaa !292
  call void @tplt_xfer(ptr noundef %976, ptr noundef nonnull %5, ptr noundef %8, ptr noundef nonnull %4) #32
  %977 = getelementptr inbounds %struct.lemon, ptr %0, i64 0, i32 22
  %978 = load ptr, ptr %977, align 8, !tbaa !336
  %979 = getelementptr inbounds %struct.lemon, ptr %0, i64 0, i32 23
  %980 = load i32, ptr %979, align 8, !tbaa !337
  call void @tplt_print(ptr noundef %8, ptr noundef %0, ptr noundef %978, i32 noundef %980, ptr noundef nonnull %4) #32
  %981 = load ptr, ptr %13, align 8, !tbaa !292
  call void @tplt_xfer(ptr noundef %981, ptr noundef nonnull %5, ptr noundef %8, ptr noundef nonnull %4) #32
  %982 = getelementptr inbounds %struct.lemon, ptr %0, i64 0, i32 18
  %983 = load ptr, ptr %982, align 8, !tbaa !338
  %984 = getelementptr inbounds %struct.lemon, ptr %0, i64 0, i32 19
  %985 = load i32, ptr %984, align 8, !tbaa !339
  call void @tplt_print(ptr noundef %8, ptr noundef %0, ptr noundef %983, i32 noundef %985, ptr noundef nonnull %4) #32
  %986 = load ptr, ptr %13, align 8, !tbaa !292
  call void @tplt_xfer(ptr noundef %986, ptr noundef nonnull %5, ptr noundef %8, ptr noundef nonnull %4) #32
  %987 = getelementptr inbounds %struct.lemon, ptr %0, i64 0, i32 24
  %988 = load ptr, ptr %987, align 8, !tbaa !340
  %989 = getelementptr inbounds %struct.lemon, ptr %0, i64 0, i32 25
  %990 = load i32, ptr %989, align 8, !tbaa !341
  call void @tplt_print(ptr noundef %8, ptr noundef %0, ptr noundef %988, i32 noundef %990, ptr noundef nonnull %4) #32
  %991 = load ptr, ptr %13, align 8, !tbaa !292
  call void @tplt_xfer(ptr noundef %991, ptr noundef nonnull %5, ptr noundef %8, ptr noundef nonnull %4) #32
  %992 = getelementptr inbounds %struct.lemon, ptr %0, i64 0, i32 26
  %993 = load ptr, ptr %992, align 8, !tbaa !342
  %994 = getelementptr inbounds %struct.lemon, ptr %0, i64 0, i32 27
  %995 = load i32, ptr %994, align 8, !tbaa !343
  call void @tplt_print(ptr noundef %8, ptr noundef %0, ptr noundef %993, i32 noundef %995, ptr noundef nonnull %4) #32
  %996 = call i32 @fclose(ptr noundef nonnull %5) #32
  br label %997

997:                                              ; preds = %975, %10, %2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #36
  call void @llvm.lifetime.end.p0(i64 1000, ptr nonnull %3) #36
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @ReportHeader(ptr nocapture noundef %0) #0 {
  %2 = alloca [1000 x i8], align 16
  %3 = alloca [1000 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 1000, ptr nonnull %2) #36
  call void @llvm.lifetime.start.p0(i64 1000, ptr nonnull %3) #36
  %4 = getelementptr inbounds %struct.lemon, ptr %0, i64 0, i32 34
  %5 = load ptr, ptr %4, align 8, !tbaa !295
  %6 = icmp eq ptr %5, null
  %7 = select i1 %6, ptr @.str.39, ptr %5
  %8 = tail call ptr @file_open(ptr noundef %0, ptr noundef nonnull @.str.113, ptr noundef nonnull @.str.42) #32
  %9 = icmp eq ptr %8, null
  br i1 %9, label %40, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.lemon, ptr %0, i64 0, i32 6
  %12 = getelementptr inbounds %struct.lemon, ptr %0, i64 0, i32 5
  %13 = load i32, ptr %12, align 4, !tbaa !57
  %14 = icmp sgt i32 %13, 1
  br i1 %14, label %15, label %35

15:                                               ; preds = %28, %10
  %16 = phi i64 [ %29, %28 ], [ 1, %10 ]
  %17 = call ptr @fgets(ptr noundef nonnull %2, i32 noundef 1000, ptr noundef nonnull %8) #32
  %18 = icmp eq ptr %17, null
  %19 = trunc i64 %16 to i32
  br i1 %18, label %35, label %20

20:                                               ; preds = %15
  %21 = load ptr, ptr %11, align 8, !tbaa !54
  %22 = getelementptr inbounds ptr, ptr %21, i64 %16
  %23 = load ptr, ptr %22, align 8, !tbaa !7
  %24 = load ptr, ptr %23, align 8, !tbaa !73
  %25 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) @.str.115, ptr noundef nonnull %7, ptr noundef %24, i32 noundef %19) #34
  %26 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) %3) #35
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %20
  %29 = add nuw nsw i64 %16, 1
  %30 = load i32, ptr %12, align 4, !tbaa !57
  %31 = sext i32 %30 to i64
  %32 = icmp slt i64 %29, %31
  br i1 %32, label %15, label %33, !llvm.loop !344

33:                                               ; preds = %28
  %.lcssa = phi i64 [ %29, %28 ]
  %34 = trunc i64 %.lcssa to i32
  br label %35

35:                                               ; preds = %33, %20, %15, %10
  %36 = phi i32 [ 1, %10 ], [ %34, %33 ], [ %19, %15 ], [ %19, %20 ]
  %37 = call i32 @fclose(ptr noundef nonnull %8) #32
  %38 = load i32, ptr %12, align 4, !tbaa !57
  %39 = icmp eq i32 %36, %38
  br i1 %39, label %61, label %40

40:                                               ; preds = %35, %1
  %41 = call ptr @file_open(ptr noundef nonnull %0, ptr noundef nonnull @.str.113, ptr noundef nonnull @.str.70) #32
  %42 = icmp eq ptr %41, null
  br i1 %42, label %61, label %43

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.lemon, ptr %0, i64 0, i32 5
  %45 = load i32, ptr %44, align 4, !tbaa !57
  %46 = icmp sgt i32 %45, 1
  br i1 %46, label %47, label %61

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.lemon, ptr %0, i64 0, i32 6
  br label %49

49:                                               ; preds = %49, %47
  %50 = phi i64 [ 1, %47 ], [ %57, %49 ]
  %51 = load ptr, ptr %48, align 8, !tbaa !54
  %52 = getelementptr inbounds ptr, ptr %51, i64 %50
  %53 = load ptr, ptr %52, align 8, !tbaa !7
  %54 = load ptr, ptr %53, align 8, !tbaa !73
  %55 = trunc i64 %50 to i32
  %56 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %41, ptr noundef nonnull @.str.115, ptr noundef nonnull %7, ptr noundef %54, i32 noundef %55) #32
  %57 = add nuw nsw i64 %50, 1
  %58 = load i32, ptr %44, align 4, !tbaa !57
  %59 = sext i32 %58 to i64
  %60 = icmp slt i64 %57, %59
  br i1 %60, label %49, label %61, !llvm.loop !345

61:                                               ; preds = %49, %43, %40, %35
  call void @llvm.lifetime.end.p0(i64 1000, ptr nonnull %3) #36
  call void @llvm.lifetime.end.p0(i64 1000, ptr nonnull %2) #36
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #17

; Function Attrs: nounwind optsize uwtable
define internal ptr @file_open(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.lemon, ptr %0, i64 0, i32 33
  %5 = load ptr, ptr %4, align 8, !tbaa !346
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %3
  tail call void @free(ptr noundef nonnull %5) #34
  br label %8

8:                                                ; preds = %7, %3
  %9 = tail call ptr @file_makename(ptr noundef nonnull %0, ptr noundef %1) #32
  store ptr %9, ptr %4, align 8, !tbaa !346
  %10 = load i8, ptr %2, align 1, !tbaa !64
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
  %19 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %18, ptr noundef nonnull @.str.50, ptr noundef %9) #38
  %20 = getelementptr inbounds %struct.lemon, ptr %0, i64 0, i32 7
  %21 = load i32, ptr %20, align 8, !tbaa !74
  %22 = add nsw i32 %21, 1
  store i32 %22, ptr %20, align 8, !tbaa !74
  br label %23

23:                                               ; preds = %17, %12, %8
  %24 = phi ptr [ null, %17 ], [ null, %8 ], [ %13, %12 ]
  ret ptr %24
}

; Function Attrs: nofree nounwind optsize
declare noundef ptr @fgets(ptr noundef, i32 noundef, ptr nocapture noundef) local_unnamed_addr #17

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #17

; Function Attrs: nounwind optsize uwtable
define internal ptr @file_makename(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.lemon, ptr %0, i64 0, i32 32
  %4 = load ptr, ptr %3, align 8, !tbaa !71
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #35
  %6 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #35
  %7 = add i64 %5, 5
  %8 = add i64 %7, %6
  %9 = tail call noalias ptr @malloc(i64 noundef %8) #33
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load ptr, ptr @stderr, align 8, !tbaa !7
  %13 = tail call i64 @fwrite(ptr nonnull @.str.49, i64 37, i64 1, ptr %12) #29
  tail call void @exit(i32 noundef 1) #30
  unreachable

14:                                               ; preds = %2
  %15 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(1) %4) #34
  %16 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %9, i32 noundef 46) #35
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %14
  store i8 0, ptr %16, align 1, !tbaa !64
  br label %19

19:                                               ; preds = %18, %14
  %20 = tail call ptr @strcat(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(1) %1) #34
  ret ptr %9
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #23

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #18

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite)
declare ptr @strcat(ptr noalias noundef returned, ptr noalias nocapture noundef readonly) local_unnamed_addr #23

; Function Attrs: nofree nounwind optsize uwtable
define internal noalias ptr @tplt_open(ptr nocapture noundef %0) #9 {
  %2 = alloca [1000 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 1000, ptr nonnull %2) #36
  %3 = getelementptr inbounds %struct.lemon, ptr %0, i64 0, i32 32
  %4 = load ptr, ptr %3, align 8, !tbaa !71
  %5 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %4, i32 noundef 46) #35
  %6 = icmp eq ptr %5, null
  br i1 %6, label %13, label %7

7:                                                ; preds = %1
  %8 = ptrtoint ptr %5 to i64
  %9 = ptrtoint ptr %4 to i64
  %10 = sub i64 %8, %9
  %11 = trunc i64 %10 to i32
  %12 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) @.str.85, i32 noundef %11, ptr noundef %4) #34
  br label %15

13:                                               ; preds = %1
  %14 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) @.str.86, ptr noundef %4) #34
  br label %15

15:                                               ; preds = %13, %7
  %16 = call i32 @access(ptr noundef nonnull %2, i32 noundef 4) #34
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %25, label %18

18:                                               ; preds = %15
  %19 = tail call i32 @access(ptr noundef nonnull @tplt_open.templatename, i32 noundef 4) #34
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %18
  %22 = load ptr, ptr %3, align 8, !tbaa !71
  %23 = tail call ptr @pathsearch(ptr noundef %22, ptr noundef nonnull @tplt_open.templatename, i32 noundef 0) #32
  %24 = icmp eq ptr %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %21, %18, %15
  %26 = phi ptr [ %23, %21 ], [ @tplt_open.templatename, %18 ], [ %2, %15 ]
  %27 = call noalias ptr @fopen(ptr noundef nonnull %26, ptr noundef nonnull @.str.42) #32
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %36

29:                                               ; preds = %25, %21
  %30 = phi ptr [ @.str.87, %21 ], [ @.str.88, %25 ]
  %31 = load ptr, ptr @stderr, align 8, !tbaa !7
  %32 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %31, ptr noundef nonnull %30, ptr noundef nonnull @tplt_open.templatename) #38
  %33 = getelementptr inbounds %struct.lemon, ptr %0, i64 0, i32 7
  %34 = load i32, ptr %33, align 8, !tbaa !74
  %35 = add nsw i32 %34, 1
  store i32 %35, ptr %33, align 8, !tbaa !74
  br label %36

36:                                               ; preds = %29, %25
  %37 = phi ptr [ %27, %25 ], [ null, %29 ]
  call void @llvm.lifetime.end.p0(i64 1000, ptr nonnull %2) #36
  ret ptr %37
}

; Function Attrs: nofree nounwind optsize uwtable
define internal void @tplt_xfer(ptr noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef %2, ptr nocapture noundef %3) #9 {
  %5 = alloca [1000 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 1000, ptr nonnull %5) #36
  %6 = getelementptr inbounds [1000 x i8], ptr %5, i64 0, i64 1
  %7 = icmp eq ptr %0, null
  br label %8

8:                                                ; preds = %61, %4
  %9 = call ptr @fgets(ptr noundef nonnull %5, i32 noundef 1000, ptr noundef %1) #32
  %10 = icmp eq ptr %9, null
  br i1 %10, label %66, label %11

11:                                               ; preds = %8
  %12 = load i8, ptr %5, align 16, !tbaa !64
  %13 = icmp ne i8 %12, 37
  %14 = load i8, ptr %6, align 1
  %15 = icmp ne i8 %14, 37
  %16 = select i1 %13, i1 true, i1 %15
  br i1 %16, label %17, label %66

17:                                               ; preds = %11
  %18 = load i32, ptr %3, align 4, !tbaa !33
  %19 = add nsw i32 %18, 1
  store i32 %19, ptr %3, align 4, !tbaa !33
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
  %27 = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %26, ptr noundef nonnull dereferenceable(6) @.str.83, i64 noundef 5) #35
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %54

29:                                               ; preds = %24
  %30 = icmp eq i32 %22, 0
  br i1 %30, label %43, label %31

31:                                               ; preds = %29
  %32 = tail call ptr @__ctype_b_loc() #37
  %33 = load ptr, ptr %32, align 8, !tbaa !7
  %34 = add nsw i32 %22, -1
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [1000 x i8], ptr %5, i64 0, i64 %35
  %37 = load i8, ptr %36, align 1, !tbaa !64
  %38 = sext i8 %37 to i64
  %39 = getelementptr inbounds i16, ptr %33, i64 %38
  %40 = load i16, ptr %39, align 2, !tbaa !199
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
  %49 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.84, i32 noundef %46, ptr noundef nonnull %48) #32
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
  %60 = load i8, ptr %59, align 1, !tbaa !64
  br label %20, !llvm.loop !347

61:                                               ; preds = %20, %17
  %62 = phi i32 [ 0, %17 ], [ %23, %20 ]
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [1000 x i8], ptr %5, i64 0, i64 %63
  %65 = call i32 @fputs(ptr nonnull %64, ptr %2)
  br label %8, !llvm.loop !348

66:                                               ; preds = %11, %8
  call void @llvm.lifetime.end.p0(i64 1000, ptr nonnull %5) #36
  ret void
}

; Function Attrs: nofree nounwind optsize uwtable
define internal void @tplt_print(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2, i32 noundef %3, ptr nocapture noundef %4) #9 {
  %6 = icmp eq ptr %2, null
  br i1 %6, label %41, label %7

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.lemon, ptr %1, i64 0, i32 32
  %9 = load ptr, ptr %8, align 8, !tbaa !71
  tail call void @tplt_linedir(ptr noundef %0, i32 noundef %3, ptr noundef %9) #32
  %10 = load i32, ptr %4, align 4, !tbaa !33
  %11 = add nsw i32 %10, 1
  store i32 %11, ptr %4, align 4, !tbaa !33
  br label %12

12:                                               ; preds = %19, %7
  %13 = phi ptr [ %2, %7 ], [ %23, %19 ]
  %14 = load i8, ptr %13, align 1, !tbaa !64
  switch i8 %14, label %19 [
    i8 0, label %24
    i8 10, label %15
  ]

15:                                               ; preds = %12
  %16 = load i32, ptr %4, align 4, !tbaa !33
  %17 = add nsw i32 %16, 1
  store i32 %17, ptr %4, align 4, !tbaa !33
  %18 = load i8, ptr %13, align 1, !tbaa !64
  br label %19

19:                                               ; preds = %15, %12
  %20 = phi i8 [ %14, %12 ], [ %18, %15 ]
  %21 = sext i8 %20 to i32
  %22 = tail call i32 @putc(i32 noundef %21, ptr noundef %0) #32
  %23 = getelementptr inbounds i8, ptr %13, i64 1
  br label %12, !llvm.loop !349

24:                                               ; preds = %12
  %.lcssa = phi ptr [ %13, %12 ]
  %25 = getelementptr inbounds i8, ptr %.lcssa, i64 -1
  %26 = load i8, ptr %25, align 1, !tbaa !64
  %27 = icmp eq i8 %26, 10
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = load i32, ptr %4, align 4, !tbaa !33
  br label %34

30:                                               ; preds = %24
  %31 = tail call i32 @putc(i32 noundef 10, ptr noundef %0) #32
  %32 = load i32, ptr %4, align 4, !tbaa !33
  %33 = add nsw i32 %32, 1
  store i32 %33, ptr %4, align 4, !tbaa !33
  br label %34

34:                                               ; preds = %30, %28
  %35 = phi i32 [ %29, %28 ], [ %33, %30 ]
  %36 = add nsw i32 %35, 2
  %37 = getelementptr inbounds %struct.lemon, ptr %1, i64 0, i32 33
  %38 = load ptr, ptr %37, align 8, !tbaa !346
  tail call void @tplt_linedir(ptr noundef %0, i32 noundef %36, ptr noundef %38) #32
  %39 = load i32, ptr %4, align 4, !tbaa !33
  %40 = add nsw i32 %39, 2
  store i32 %40, ptr %4, align 4, !tbaa !33
  br label %41

41:                                               ; preds = %34, %5
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @print_stack_union(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.lemon, ptr %1, i64 0, i32 4
  %6 = load i32, ptr %5, align 8, !tbaa !52
  %7 = shl nsw i32 %6, 1
  %8 = sext i32 %7 to i64
  %9 = tail call noalias ptr @calloc(i64 noundef %8, i64 noundef 8) #28
  %10 = icmp sgt i32 %6, 0
  %11 = getelementptr inbounds %struct.lemon, ptr %1, i64 0, i32 13
  %12 = load ptr, ptr %11, align 8, !tbaa !350
  %13 = icmp ne ptr %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %4
  %15 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %12) #35
  %16 = trunc i64 %15 to i32
  br label %17

17:                                               ; preds = %14, %4
  %18 = phi i32 [ %16, %14 ], [ 0, %4 ]
  br i1 %10, label %19, label %39

19:                                               ; preds = %17
  %20 = getelementptr inbounds %struct.lemon, ptr %1, i64 0, i32 6
  %21 = load ptr, ptr %20, align 8, !tbaa !54
  %22 = zext i32 %6 to i64
  br label %23

23:                                               ; preds = %35, %19
  %24 = phi i64 [ 0, %19 ], [ %37, %35 ]
  %25 = phi i32 [ %18, %19 ], [ %36, %35 ]
  %26 = getelementptr inbounds ptr, ptr %21, i64 %24
  %27 = load ptr, ptr %26, align 8, !tbaa !7
  %28 = getelementptr inbounds %struct.symbol, ptr %27, i64 0, i32 12
  %29 = load ptr, ptr %28, align 8, !tbaa !351
  %30 = icmp eq ptr %29, null
  br i1 %30, label %35, label %31

31:                                               ; preds = %23
  %32 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %29) #35
  %33 = trunc i64 %32 to i32
  %34 = tail call i32 @llvm.smax.i32(i32 %25, i32 %33)
  br label %35

35:                                               ; preds = %31, %23
  %36 = phi i32 [ %34, %31 ], [ %25, %23 ]
  %37 = add nuw nsw i64 %24, 1
  %38 = icmp eq i64 %37, %22
  br i1 %38, label %39, label %23, !llvm.loop !352

39:                                               ; preds = %35, %17
  %40 = phi i32 [ %18, %17 ], [ %36, %35 ]
  %41 = shl nsw i32 %40, 1
  %42 = or i32 %41, 1
  %43 = sext i32 %42 to i64
  %44 = tail call noalias ptr @malloc(i64 noundef %43) #33
  %45 = icmp eq ptr %9, null
  %46 = icmp eq ptr %44, null
  %47 = or i1 %45, %46
  br i1 %47, label %57, label %48

48:                                               ; preds = %39
  br i1 %10, label %49, label %178

49:                                               ; preds = %48
  %50 = getelementptr inbounds %struct.lemon, ptr %1, i64 0, i32 6
  %51 = load ptr, ptr %50, align 8, !tbaa !54
  %52 = getelementptr inbounds %struct.lemon, ptr %1, i64 0, i32 8
  %53 = load ptr, ptr %52, align 8, !tbaa !130
  %54 = or i32 %7, 1
  %55 = zext i32 %6 to i64
  %56 = getelementptr inbounds %struct.symbol, ptr %53, i64 0, i32 13
  br label %60

57:                                               ; preds = %39
  %58 = load ptr, ptr @stderr, align 8, !tbaa !7
  %59 = tail call i64 @fwrite(ptr nonnull @.str.102, i64 15, i64 1, ptr %58) #29
  tail call void @exit(i32 noundef 1) #30
  unreachable

60:                                               ; preds = %175, %49
  %61 = phi i64 [ 0, %49 ], [ %176, %175 ]
  %62 = getelementptr inbounds ptr, ptr %51, i64 %61
  %63 = load ptr, ptr %62, align 8, !tbaa !7
  %64 = icmp eq ptr %63, %53
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  store i32 %54, ptr %56, align 8, !tbaa !301
  br label %175

66:                                               ; preds = %60
  %67 = getelementptr inbounds %struct.symbol, ptr %63, i64 0, i32 2
  %68 = load i32, ptr %67, align 4, !tbaa !44
  %69 = icmp eq i32 %68, 1
  br i1 %69, label %70, label %79

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.symbol, ptr %63, i64 0, i32 12
  %72 = load ptr, ptr %71, align 8, !tbaa !351
  %73 = icmp ne ptr %72, null
  %74 = or i1 %13, %73
  br i1 %74, label %75, label %79

75:                                               ; preds = %70
  %76 = select i1 %73, ptr %72, ptr %12
  %77 = tail call ptr @__ctype_b_loc() #37
  %78 = load ptr, ptr %77, align 8, !tbaa !7
  br label %81

79:                                               ; preds = %70, %66
  %80 = getelementptr inbounds %struct.symbol, ptr %63, i64 0, i32 13
  store i32 0, ptr %80, align 8, !tbaa !301
  br label %175

81:                                               ; preds = %81, %75
  %82 = phi ptr [ %89, %81 ], [ %76, %75 ]
  %83 = load i8, ptr %82, align 1, !tbaa !64
  %84 = sext i8 %83 to i64
  %85 = getelementptr inbounds i16, ptr %78, i64 %84
  %86 = load i16, ptr %85, align 2, !tbaa !199
  %87 = and i16 %86, 8192
  %88 = icmp eq i16 %87, 0
  %89 = getelementptr inbounds i8, ptr %82, i64 1
  br i1 %88, label %90, label %81, !llvm.loop !353

90:                                               ; preds = %81
  %.lcssa1 = phi ptr [ %82, %81 ]
  %.lcssa = phi i8 [ %83, %81 ]
  %91 = icmp eq i8 %.lcssa, 0
  br i1 %91, label %94, label %98

92:                                               ; preds = %98
  %.lcssa2 = phi i64 [ %103, %98 ]
  %93 = trunc i64 %.lcssa2 to i32
  br label %94

94:                                               ; preds = %92, %90
  %95 = phi i32 [ 0, %90 ], [ %93, %92 ]
  %96 = zext i32 %95 to i64
  %97 = tail call i32 @llvm.smin.i32(i32 %95, i32 0)
  br label %107

98:                                               ; preds = %98, %90
  %99 = phi i64 [ %103, %98 ], [ 0, %90 ]
  %100 = phi i8 [ %105, %98 ], [ %.lcssa, %90 ]
  %101 = phi ptr [ %102, %98 ], [ %.lcssa1, %90 ]
  %102 = getelementptr inbounds i8, ptr %101, i64 1
  %103 = add nuw i64 %99, 1
  %104 = getelementptr inbounds i8, ptr %44, i64 %99
  store i8 %100, ptr %104, align 1, !tbaa !64
  %105 = load i8, ptr %102, align 1, !tbaa !64
  %106 = icmp eq i8 %105, 0
  br i1 %106, label %92, label %98, !llvm.loop !354

107:                                              ; preds = %111, %94
  %108 = phi i64 [ %96, %94 ], [ %112, %111 ]
  %109 = trunc i64 %108 to i32
  %110 = icmp sgt i32 %109, 0
  br i1 %110, label %111, label %120

111:                                              ; preds = %107
  %112 = add nsw i64 %108, -1
  %113 = getelementptr inbounds i8, ptr %44, i64 %112
  %114 = load i8, ptr %113, align 1, !tbaa !64
  %115 = sext i8 %114 to i64
  %116 = getelementptr inbounds i16, ptr %78, i64 %115
  %117 = load i16, ptr %116, align 2, !tbaa !199
  %118 = and i16 %117, 8192
  %119 = icmp eq i16 %118, 0
  br i1 %119, label %120, label %107, !llvm.loop !355

120:                                              ; preds = %111, %107
  %121 = phi i32 [ %97, %107 ], [ %109, %111 ]
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i8, ptr %44, i64 %122
  store i8 0, ptr %123, align 1, !tbaa !64
  %124 = load i8, ptr %44, align 1, !tbaa !64
  %125 = icmp eq i8 %124, 0
  br i1 %125, label %137, label %126

126:                                              ; preds = %126, %120
  %127 = phi i64 [ %133, %126 ], [ 0, %120 ]
  %128 = phi i8 [ %135, %126 ], [ %124, %120 ]
  %129 = phi i32 [ %132, %126 ], [ 0, %120 ]
  %130 = mul nsw i32 %129, 53
  %131 = sext i8 %128 to i32
  %132 = add nsw i32 %130, %131
  %133 = add nuw nsw i64 %127, 1
  %134 = getelementptr inbounds i8, ptr %44, i64 %133
  %135 = load i8, ptr %134, align 1, !tbaa !64
  %136 = icmp eq i8 %135, 0
  br i1 %136, label %137, label %126, !llvm.loop !356

137:                                              ; preds = %126, %120
  %138 = phi i32 [ 0, %120 ], [ %132, %126 ]
  %139 = and i32 %138, 2147483647
  %140 = srem i32 %139, %7
  %141 = zext i32 %140 to i64
  %142 = getelementptr inbounds ptr, ptr %9, i64 %141
  %143 = load ptr, ptr %142, align 8, !tbaa !7
  %144 = icmp eq ptr %143, null
  br i1 %144, label %160, label %145

145:                                              ; preds = %151, %137
  %146 = phi ptr [ %156, %151 ], [ %143, %137 ]
  %147 = phi i32 [ %153, %151 ], [ %140, %137 ]
  %148 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %146, ptr noundef nonnull dereferenceable(1) %44) #35
  %149 = icmp eq i32 %148, 0
  %150 = add nsw i32 %147, 1
  br i1 %149, label %158, label %151

151:                                              ; preds = %145
  %152 = icmp slt i32 %150, %7
  %153 = select i1 %152, i32 %150, i32 0
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds ptr, ptr %9, i64 %154
  %156 = load ptr, ptr %155, align 8, !tbaa !7
  %157 = icmp eq ptr %156, null
  br i1 %157, label %160, label %145, !llvm.loop !357

158:                                              ; preds = %145
  %.lcssa3 = phi i32 [ %150, %145 ]
  %159 = getelementptr inbounds %struct.symbol, ptr %63, i64 0, i32 13
  store i32 %.lcssa3, ptr %159, align 8, !tbaa !301
  br label %175

160:                                              ; preds = %151, %137
  %161 = phi i64 [ %141, %137 ], [ %154, %151 ]
  %162 = phi i32 [ %140, %137 ], [ %153, %151 ]
  %163 = getelementptr inbounds ptr, ptr %9, i64 %161
  %164 = add nsw i32 %162, 1
  %165 = getelementptr inbounds %struct.symbol, ptr %63, i64 0, i32 13
  store i32 %164, ptr %165, align 8, !tbaa !301
  %166 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %44) #35
  %167 = add i64 %166, 1
  %168 = tail call noalias ptr @malloc(i64 noundef %167) #33
  store ptr %168, ptr %163, align 8, !tbaa !7
  %169 = icmp eq ptr %168, null
  br i1 %169, label %170, label %173

170:                                              ; preds = %160
  %171 = load ptr, ptr @stderr, align 8, !tbaa !7
  %172 = tail call i64 @fwrite(ptr nonnull @.str.102, i64 15, i64 1, ptr %171) #29
  tail call void @exit(i32 noundef 1) #30
  unreachable

173:                                              ; preds = %160
  %174 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %168, ptr noundef nonnull dereferenceable(1) %44) #34
  br label %175

175:                                              ; preds = %173, %158, %79, %65
  %176 = add nuw nsw i64 %61, 1
  %177 = icmp eq i64 %176, %55
  br i1 %177, label %178, label %60, !llvm.loop !358

178:                                              ; preds = %175, %48
  %179 = getelementptr inbounds %struct.lemon, ptr %1, i64 0, i32 10
  %180 = load ptr, ptr %179, align 8, !tbaa !292
  %181 = icmp eq ptr %180, null
  %182 = select i1 %181, ptr @.str.83, ptr %180
  %183 = load i32, ptr %2, align 4, !tbaa !33
  %184 = icmp eq i32 %3, 0
  br i1 %184, label %188, label %185

185:                                              ; preds = %178
  %186 = tail call i64 @fwrite(ptr nonnull @.str.103, i64 14, i64 1, ptr %0)
  %187 = add nsw i32 %183, 1
  br label %188

188:                                              ; preds = %185, %178
  %189 = phi i32 [ %187, %185 ], [ %183, %178 ]
  %190 = getelementptr inbounds %struct.lemon, ptr %1, i64 0, i32 12
  %191 = load ptr, ptr %190, align 8, !tbaa !359
  %192 = icmp eq ptr %191, null
  %193 = select i1 %192, ptr @.str.105, ptr %191
  %194 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.104, ptr noundef nonnull %182, ptr noundef nonnull %193) #32
  %195 = add nsw i32 %189, 1
  br i1 %184, label %199, label %196

196:                                              ; preds = %188
  %197 = tail call i64 @fwrite(ptr nonnull @.str.106, i64 7, i64 1, ptr %0)
  %198 = add nsw i32 %189, 2
  br label %199

199:                                              ; preds = %196, %188
  %200 = phi i32 [ %198, %196 ], [ %195, %188 ]
  %201 = tail call i64 @fwrite(ptr nonnull @.str.107, i64 16, i64 1, ptr %0)
  %202 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.108, ptr noundef nonnull %182) #32
  %203 = add nsw i32 %200, 2
  br i1 %10, label %204, label %221

204:                                              ; preds = %199
  %205 = tail call i32 @llvm.smax.i32(i32 %7, i32 1)
  %206 = zext i32 %205 to i64
  br label %207

207:                                              ; preds = %218, %204
  %208 = phi i64 [ 0, %204 ], [ %213, %218 ]
  %209 = phi i32 [ %203, %204 ], [ %219, %218 ]
  %210 = getelementptr inbounds ptr, ptr %9, i64 %208
  %211 = load ptr, ptr %210, align 8, !tbaa !7
  %212 = icmp eq ptr %211, null
  %213 = add nuw nsw i64 %208, 1
  br i1 %212, label %218, label %214

214:                                              ; preds = %207
  %215 = trunc i64 %213 to i32
  %216 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.109, ptr noundef nonnull %211, i32 noundef %215) #32
  %217 = add nsw i32 %209, 1
  tail call void @free(ptr noundef nonnull %211) #34
  br label %218

218:                                              ; preds = %214, %207
  %219 = phi i32 [ %217, %214 ], [ %209, %207 ]
  %220 = icmp eq i64 %213, %206
  br i1 %220, label %221, label %207, !llvm.loop !360

221:                                              ; preds = %218, %199
  %222 = phi i32 [ %203, %199 ], [ %219, %218 ]
  %223 = getelementptr inbounds %struct.lemon, ptr %1, i64 0, i32 8
  %224 = load ptr, ptr %223, align 8, !tbaa !130
  %225 = getelementptr inbounds %struct.symbol, ptr %224, i64 0, i32 9
  %226 = load i32, ptr %225, align 4, !tbaa !194
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %233, label %228

228:                                              ; preds = %221
  %229 = getelementptr inbounds %struct.symbol, ptr %224, i64 0, i32 13
  %230 = load i32, ptr %229, align 8, !tbaa !301
  %231 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.110, i32 noundef %230) #32
  %232 = add nsw i32 %222, 1
  br label %233

233:                                              ; preds = %228, %221
  %234 = phi i32 [ %232, %228 ], [ %222, %221 ]
  tail call void @free(ptr noundef %44) #34
  tail call void @free(ptr noundef %9) #34
  %235 = tail call i64 @fwrite(ptr nonnull @.str.111, i64 15, i64 1, ptr %0)
  %236 = add nsw i32 %234, 1
  store i32 %236, ptr %2, align 4, !tbaa !33
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #13

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @axset_compare(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #10 {
  %3 = getelementptr inbounds %struct.axset, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !305
  %5 = getelementptr inbounds %struct.axset, ptr %1, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !305
  %7 = icmp slt i32 %4, %6
  br i1 %7, label %29, label %8

8:                                                ; preds = %2
  %9 = icmp sgt i32 %4, %6
  br i1 %9, label %29, label %10

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.axset, ptr %0, i64 0, i32 1
  %12 = load i32, ptr %11, align 8, !tbaa !304
  %13 = getelementptr inbounds %struct.axset, ptr %1, i64 0, i32 1
  %14 = load i32, ptr %13, align 8, !tbaa !304
  %15 = icmp slt i32 %12, %14
  br i1 %15, label %29, label %16

16:                                               ; preds = %10
  %17 = icmp sgt i32 %12, %14
  br i1 %17, label %29, label %18

18:                                               ; preds = %16
  %19 = load ptr, ptr %0, align 8, !tbaa !302
  %20 = getelementptr inbounds %struct.state, ptr %19, i64 0, i32 2
  %21 = load i32, ptr %20, align 8, !tbaa !114
  %22 = load ptr, ptr %1, align 8, !tbaa !302
  %23 = getelementptr inbounds %struct.state, ptr %22, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !114
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @compute_action(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #10 {
  %3 = getelementptr inbounds %struct.action, ptr %1, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !17
  switch i32 %4, label %31 [
    i32 0, label %5
    i32 2, label %10
    i32 3, label %18
    i32 1, label %24
  ]

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.action, ptr %1, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !64
  %8 = getelementptr inbounds %struct.state, ptr %7, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !114
  br label %31

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.action, ptr %1, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !64
  %13 = getelementptr inbounds %struct.rule, ptr %12, i64 0, i32 10
  %14 = load i32, ptr %13, align 8, !tbaa !116
  %15 = getelementptr inbounds %struct.lemon, ptr %0, i64 0, i32 2
  %16 = load i32, ptr %15, align 8, !tbaa !113
  %17 = add nsw i32 %16, %14
  br label %31

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.lemon, ptr %0, i64 0, i32 2
  %20 = load i32, ptr %19, align 8, !tbaa !113
  %21 = getelementptr inbounds %struct.lemon, ptr %0, i64 0, i32 3
  %22 = load i32, ptr %21, align 4, !tbaa !195
  %23 = add nsw i32 %22, %20
  br label %31

24:                                               ; preds = %2
  %25 = getelementptr inbounds %struct.lemon, ptr %0, i64 0, i32 2
  %26 = load i32, ptr %25, align 8, !tbaa !113
  %27 = getelementptr inbounds %struct.lemon, ptr %0, i64 0, i32 3
  %28 = load i32, ptr %27, align 4, !tbaa !195
  %29 = add i32 %26, 1
  %30 = add i32 %29, %28
  br label %31

31:                                               ; preds = %24, %18, %10, %5, %2
  %32 = phi i32 [ %30, %24 ], [ %23, %18 ], [ %17, %10 ], [ %9, %5 ], [ -1, %2 ]
  ret i32 %32
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #17

; Function Attrs: nofree nounwind optsize uwtable
define internal fastcc void @writeRuleText(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #9 {
  %3 = load ptr, ptr %1, align 8, !tbaa !60
  %4 = load ptr, ptr %3, align 8, !tbaa !73
  %5 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.61, ptr noundef %4) #32
  %6 = getelementptr inbounds %struct.rule, ptr %1, i64 0, i32 4
  %7 = load i32, ptr %6, align 8, !tbaa !42
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %43

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.rule, ptr %1, i64 0, i32 5
  br label %11

11:                                               ; preds = %38, %9
  %12 = phi i64 [ 0, %9 ], [ %39, %38 ]
  %13 = load ptr, ptr %10, align 8, !tbaa !43
  %14 = getelementptr inbounds ptr, ptr %13, i64 %12
  %15 = load ptr, ptr %14, align 8, !tbaa !7
  %16 = load ptr, ptr %15, align 8, !tbaa !73
  %17 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.57, ptr noundef %16) #32
  %18 = getelementptr inbounds %struct.symbol, ptr %15, i64 0, i32 2
  %19 = load i32, ptr %18, align 4, !tbaa !44
  %20 = icmp eq i32 %19, 2
  br i1 %20, label %21, label %38

21:                                               ; preds = %11
  %22 = getelementptr inbounds %struct.symbol, ptr %15, i64 0, i32 14
  %23 = load i32, ptr %22, align 4, !tbaa !46
  %24 = icmp sgt i32 %23, 1
  br i1 %24, label %25, label %38

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.symbol, ptr %15, i64 0, i32 15
  br label %27

27:                                               ; preds = %27, %25
  %28 = phi i64 [ 1, %25 ], [ %34, %27 ]
  %29 = load ptr, ptr %26, align 8, !tbaa !47
  %30 = getelementptr inbounds ptr, ptr %29, i64 %28
  %31 = load ptr, ptr %30, align 8, !tbaa !7
  %32 = load ptr, ptr %31, align 8, !tbaa !73
  %33 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.58, ptr noundef %32) #32
  %34 = add nuw nsw i64 %28, 1
  %35 = load i32, ptr %22, align 4, !tbaa !46
  %36 = sext i32 %35 to i64
  %37 = icmp slt i64 %34, %36
  br i1 %37, label %27, label %38, !llvm.loop !361

38:                                               ; preds = %27, %21, %11
  %39 = add nuw nsw i64 %12, 1
  %40 = load i32, ptr %6, align 8, !tbaa !42
  %41 = sext i32 %40 to i64
  %42 = icmp slt i64 %39, %41
  br i1 %42, label %11, label %43, !llvm.loop !362

43:                                               ; preds = %38, %2
  ret void
}

; Function Attrs: nofree nounwind optsize uwtable
define internal void @emit_destructor_code(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef %3) #9 {
  %5 = getelementptr inbounds %struct.symbol, ptr %1, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !44
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %14

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.lemon, ptr %2, i64 0, i32 28
  %10 = load ptr, ptr %9, align 8, !tbaa !322
  %11 = icmp eq ptr %10, null
  br i1 %11, label %65, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.lemon, ptr %2, i64 0, i32 29
  br label %26

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.symbol, ptr %1, i64 0, i32 10
  %16 = load ptr, ptr %15, align 8, !tbaa !326
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.symbol, ptr %1, i64 0, i32 11
  br label %26

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.lemon, ptr %2, i64 0, i32 30
  %22 = load ptr, ptr %21, align 8, !tbaa !325
  %23 = icmp eq ptr %22, null
  br i1 %23, label %33, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.lemon, ptr %2, i64 0, i32 31
  br label %26

26:                                               ; preds = %24, %18, %12
  %27 = phi ptr [ %19, %18 ], [ %25, %24 ], [ %13, %12 ]
  %28 = phi ptr [ %16, %18 ], [ %22, %24 ], [ %10, %12 ]
  %29 = load i32, ptr %27, align 8, !tbaa !33
  %30 = getelementptr inbounds %struct.lemon, ptr %2, i64 0, i32 32
  %31 = load ptr, ptr %30, align 8, !tbaa !71
  tail call void @tplt_linedir(ptr noundef %0, i32 noundef %29, ptr noundef %31) #32
  %32 = tail call i32 @fputc(i32 123, ptr %0)
  br label %33

33:                                               ; preds = %26, %20
  %34 = phi ptr [ null, %20 ], [ %28, %26 ]
  %35 = getelementptr inbounds %struct.symbol, ptr %1, i64 0, i32 13
  br label %36

36:                                               ; preds = %53, %33
  %37 = phi ptr [ %34, %33 ], [ %56, %53 ]
  %38 = phi i32 [ 0, %33 ], [ %55, %53 ]
  %39 = load i8, ptr %37, align 1, !tbaa !64
  switch i8 %39, label %47 [
    i8 0, label %57
    i8 36, label %40
  ]

40:                                               ; preds = %36
  %41 = getelementptr inbounds i8, ptr %37, i64 1
  %42 = load i8, ptr %41, align 1, !tbaa !64
  %43 = icmp eq i8 %42, 36
  br i1 %43, label %44, label %47

44:                                               ; preds = %40
  %45 = load i32, ptr %35, align 8, !tbaa !301
  %46 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.92, i32 noundef %45) #32
  br label %53

47:                                               ; preds = %40, %36
  %48 = icmp eq i8 %39, 10
  %49 = zext i1 %48 to i32
  %50 = add nsw i32 %38, %49
  %51 = sext i8 %39 to i32
  %52 = tail call i32 @fputc(i32 noundef %51, ptr noundef %0) #32
  br label %53

53:                                               ; preds = %47, %44
  %54 = phi ptr [ %41, %44 ], [ %37, %47 ]
  %55 = phi i32 [ %38, %44 ], [ %50, %47 ]
  %56 = getelementptr inbounds i8, ptr %54, i64 1
  br label %36, !llvm.loop !363

57:                                               ; preds = %36
  %.lcssa = phi i32 [ %38, %36 ]
  %58 = add nsw i32 %.lcssa, 3
  %59 = load i32, ptr %3, align 4, !tbaa !33
  %60 = add nsw i32 %58, %59
  store i32 %60, ptr %3, align 4, !tbaa !33
  %61 = tail call i64 @fwrite(ptr nonnull @.str.93, i64 2, i64 1, ptr %0)
  %62 = load i32, ptr %3, align 4, !tbaa !33
  %63 = getelementptr inbounds %struct.lemon, ptr %2, i64 0, i32 33
  %64 = load ptr, ptr %63, align 8, !tbaa !346
  tail call void @tplt_linedir(ptr noundef %0, i32 noundef %62, ptr noundef %64) #32
  br label %65

65:                                               ; preds = %57, %8
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @translate_code(ptr nocapture noundef %0, ptr nocapture noundef %1) #0 {
  %3 = alloca [1000 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 1000, ptr nonnull %3) #36
  %4 = getelementptr inbounds %struct.rule, ptr %1, i64 0, i32 4
  %5 = load i32, ptr %4, align 8, !tbaa !42
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  %8 = zext i32 %5 to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %3, i8 0, i64 %8, i1 false), !tbaa !64
  br label %9

9:                                                ; preds = %7, %2
  %10 = getelementptr inbounds %struct.rule, ptr %1, i64 0, i32 8
  %11 = load ptr, ptr %10, align 8, !tbaa !250
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %9
  store ptr @.str.54, ptr %10, align 8, !tbaa !250
  %14 = getelementptr inbounds %struct.rule, ptr %1, i64 0, i32 3
  %15 = load i32, ptr %14, align 4, !tbaa !190
  %16 = getelementptr inbounds %struct.rule, ptr %1, i64 0, i32 7
  store i32 %15, ptr %16, align 8, !tbaa !131
  br label %17

17:                                               ; preds = %13, %9
  %18 = phi ptr [ @.str.54, %13 ], [ %11, %9 ]
  store i32 0, ptr @append_str.used, align 4, !tbaa !33
  %19 = load i8, ptr %18, align 1, !tbaa !64
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %131, label %21

21:                                               ; preds = %17
  %22 = tail call ptr @__ctype_b_loc() #37
  %23 = getelementptr inbounds %struct.rule, ptr %1, i64 0, i32 1
  %24 = getelementptr inbounds %struct.rule, ptr %1, i64 0, i32 6
  %25 = getelementptr inbounds %struct.rule, ptr %1, i64 0, i32 5
  br label %26

26:                                               ; preds = %124, %21
  %27 = phi i8 [ %19, %21 ], [ %129, %124 ]
  %28 = phi ptr [ %18, %21 ], [ %128, %124 ]
  %29 = phi i8 [ 0, %21 ], [ %125, %124 ]
  %30 = load ptr, ptr %22, align 8, !tbaa !7
  %31 = sext i8 %27 to i64
  %32 = getelementptr inbounds i16, ptr %30, i64 %31
  %33 = load i16, ptr %32, align 2, !tbaa !199
  %34 = and i16 %33, 1024
  %35 = icmp eq i16 %34, 0
  br i1 %35, label %124, label %36

36:                                               ; preds = %26
  %37 = load ptr, ptr %10, align 8, !tbaa !250
  %38 = icmp eq ptr %28, %37
  br i1 %38, label %49, label %39

39:                                               ; preds = %36
  %40 = getelementptr inbounds i8, ptr %28, i64 -1
  %41 = load i8, ptr %40, align 1, !tbaa !64
  %42 = sext i8 %41 to i64
  %43 = getelementptr inbounds i16, ptr %30, i64 %42
  %44 = load i16, ptr %43, align 2, !tbaa !199
  %45 = and i16 %44, 8
  %46 = icmp ne i16 %45, 0
  %47 = icmp eq i8 %41, 95
  %48 = or i1 %47, %46
  br i1 %48, label %124, label %49

49:                                               ; preds = %39, %36
  br label %50

50:                                               ; preds = %50, %49
  %51 = phi ptr [ %52, %50 ], [ %28, %49 ]
  %52 = getelementptr inbounds i8, ptr %51, i64 1
  %53 = load i8, ptr %52, align 1, !tbaa !64
  %54 = sext i8 %53 to i64
  %55 = getelementptr inbounds i16, ptr %30, i64 %54
  %56 = load i16, ptr %55, align 2, !tbaa !199
  %57 = and i16 %56, 8
  %58 = icmp ne i16 %57, 0
  %59 = icmp eq i8 %53, 95
  %60 = or i1 %59, %58
  br i1 %60, label %50, label %61, !llvm.loop !364

61:                                               ; preds = %50
  %.lcssa1 = phi ptr [ %52, %50 ]
  %.lcssa = phi i8 [ %53, %50 ]
  store i8 0, ptr %.lcssa1, align 1, !tbaa !64
  %62 = load ptr, ptr %23, align 8, !tbaa !253
  %63 = icmp eq ptr %62, null
  br i1 %63, label %72, label %64

64:                                               ; preds = %61
  %65 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %28, ptr noundef nonnull dereferenceable(1) %62) #35
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %64
  %68 = load ptr, ptr %1, align 8, !tbaa !60
  %69 = getelementptr inbounds %struct.symbol, ptr %68, i64 0, i32 13
  %70 = load i32, ptr %69, align 8, !tbaa !301
  %71 = tail call ptr @append_str(ptr noundef nonnull @.str.95, i32 noundef 0, i32 noundef %70, i32 noundef 0) #32
  br label %121

72:                                               ; preds = %64, %61
  %73 = load i32, ptr %4, align 8, !tbaa !42
  %74 = icmp sgt i32 %73, 0
  br i1 %74, label %75, label %121

75:                                               ; preds = %72
  %76 = load ptr, ptr %24, align 8, !tbaa !251
  %77 = zext i32 %73 to i64
  br label %78

78:                                               ; preds = %118, %75
  %79 = phi i64 [ 0, %75 ], [ %119, %118 ]
  %80 = getelementptr inbounds ptr, ptr %76, i64 %79
  %81 = load ptr, ptr %80, align 8, !tbaa !7
  %82 = icmp eq ptr %81, null
  br i1 %82, label %118, label %83

83:                                               ; preds = %78
  %84 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %28, ptr noundef nonnull dereferenceable(1) %81) #35
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %118

86:                                               ; preds = %83
  %.lcssa2 = phi i64 [ %79, %83 ]
  %87 = trunc i64 %.lcssa2 to i32
  %88 = load ptr, ptr %10, align 8, !tbaa !250
  %89 = icmp eq ptr %28, %88
  br i1 %89, label %98, label %90

90:                                               ; preds = %86
  %91 = getelementptr inbounds i8, ptr %28, i64 -1
  %92 = load i8, ptr %91, align 1, !tbaa !64
  %93 = icmp eq i8 %92, 64
  br i1 %93, label %94, label %98

94:                                               ; preds = %90
  %95 = add nuw i32 %87, 1
  %96 = sub i32 %95, %73
  %97 = tail call ptr @append_str(ptr noundef nonnull @.str.96, i32 noundef -1, i32 noundef %96, i32 noundef 0) #32
  br label %116

98:                                               ; preds = %90, %86
  %99 = load ptr, ptr %25, align 8, !tbaa !43
  %100 = getelementptr inbounds ptr, ptr %99, i64 %.lcssa2
  %101 = load ptr, ptr %100, align 8, !tbaa !7
  %102 = getelementptr inbounds %struct.symbol, ptr %101, i64 0, i32 2
  %103 = load i32, ptr %102, align 4, !tbaa !44
  %104 = icmp eq i32 %103, 2
  br i1 %104, label %105, label %109

105:                                              ; preds = %98
  %106 = getelementptr inbounds %struct.symbol, ptr %101, i64 0, i32 15
  %107 = load ptr, ptr %106, align 8, !tbaa !47
  %108 = load ptr, ptr %107, align 8, !tbaa !7
  br label %109

109:                                              ; preds = %105, %98
  %110 = phi ptr [ %108, %105 ], [ %101, %98 ]
  %111 = getelementptr inbounds %struct.symbol, ptr %110, i64 0, i32 13
  %112 = load i32, ptr %111, align 8, !tbaa !301
  %113 = add nuw i32 %87, 1
  %114 = sub i32 %113, %73
  %115 = tail call ptr @append_str(ptr noundef nonnull @.str.97, i32 noundef 0, i32 noundef %114, i32 noundef %112) #32
  br label %116

116:                                              ; preds = %109, %94
  %117 = getelementptr inbounds [1000 x i8], ptr %3, i64 0, i64 %.lcssa2
  store i8 1, ptr %117, align 1, !tbaa !64
  br label %121

118:                                              ; preds = %83, %78
  %119 = add nuw nsw i64 %79, 1
  %120 = icmp eq i64 %119, %77
  br i1 %120, label %121, label %78, !llvm.loop !365

121:                                              ; preds = %118, %116, %72, %67
  %122 = phi i8 [ 1, %67 ], [ %29, %116 ], [ %29, %72 ], [ %29, %118 ]
  %123 = phi ptr [ %.lcssa1, %67 ], [ %.lcssa1, %116 ], [ %28, %72 ], [ %28, %118 ]
  store i8 %.lcssa, ptr %.lcssa1, align 1, !tbaa !64
  br label %124

124:                                              ; preds = %121, %39, %26
  %125 = phi i8 [ %122, %121 ], [ %29, %39 ], [ %29, %26 ]
  %126 = phi ptr [ %123, %121 ], [ %28, %39 ], [ %28, %26 ]
  %127 = tail call ptr @append_str(ptr noundef %126, i32 noundef 1, i32 noundef 0, i32 noundef 0) #32
  %128 = getelementptr inbounds i8, ptr %126, i64 1
  %129 = load i8, ptr %128, align 1, !tbaa !64
  %130 = icmp eq i8 %129, 0
  br i1 %130, label %131, label %26, !llvm.loop !366

131:                                              ; preds = %124, %17
  %132 = phi i8 [ 0, %17 ], [ %125, %124 ]
  %133 = getelementptr inbounds %struct.rule, ptr %1, i64 0, i32 1
  %134 = load ptr, ptr %133, align 8, !tbaa !253
  %135 = icmp eq ptr %134, null
  %136 = icmp ne i8 %132, 0
  %137 = select i1 %135, i1 true, i1 %136
  br i1 %137, label %148, label %138

138:                                              ; preds = %131
  %139 = getelementptr inbounds %struct.lemon, ptr %0, i64 0, i32 32
  %140 = load ptr, ptr %139, align 8, !tbaa !71
  %141 = getelementptr inbounds %struct.rule, ptr %1, i64 0, i32 3
  %142 = load i32, ptr %141, align 4, !tbaa !190
  %143 = load ptr, ptr %1, align 8, !tbaa !60
  %144 = load ptr, ptr %143, align 8, !tbaa !73
  tail call void (ptr, i32, ptr, ...) @ErrorMsg(ptr noundef %140, i32 noundef %142, ptr noundef nonnull @.str.98, ptr noundef nonnull %134, ptr noundef %144, ptr noundef nonnull %134) #32
  %145 = getelementptr inbounds %struct.lemon, ptr %0, i64 0, i32 7
  %146 = load i32, ptr %145, align 8, !tbaa !74
  %147 = add nsw i32 %146, 1
  store i32 %147, ptr %145, align 8, !tbaa !74
  br label %148

148:                                              ; preds = %138, %131
  %149 = load i32, ptr %4, align 8, !tbaa !42
  %150 = icmp sgt i32 %149, 0
  br i1 %150, label %151, label %207

151:                                              ; preds = %148
  %152 = getelementptr inbounds %struct.rule, ptr %1, i64 0, i32 6
  %153 = getelementptr inbounds %struct.lemon, ptr %0, i64 0, i32 32
  %154 = getelementptr inbounds %struct.rule, ptr %1, i64 0, i32 3
  %155 = getelementptr inbounds %struct.rule, ptr %1, i64 0, i32 5
  %156 = getelementptr inbounds %struct.lemon, ptr %0, i64 0, i32 7
  %157 = getelementptr inbounds %struct.lemon, ptr %0, i64 0, i32 30
  %158 = getelementptr inbounds %struct.lemon, ptr %0, i64 0, i32 28
  br label %159

159:                                              ; preds = %202, %151
  %160 = phi i64 [ 0, %151 ], [ %203, %202 ]
  %161 = phi i32 [ %149, %151 ], [ %204, %202 ]
  %162 = load ptr, ptr %152, align 8, !tbaa !251
  %163 = getelementptr inbounds ptr, ptr %162, i64 %160
  %164 = load ptr, ptr %163, align 8, !tbaa !7
  %165 = icmp eq ptr %164, null
  br i1 %165, label %179, label %166

166:                                              ; preds = %159
  %167 = getelementptr inbounds [1000 x i8], ptr %3, i64 0, i64 %160
  %168 = load i8, ptr %167, align 1, !tbaa !64
  %169 = icmp eq i8 %168, 0
  br i1 %169, label %170, label %202

170:                                              ; preds = %166
  %171 = load ptr, ptr %153, align 8, !tbaa !71
  %172 = load i32, ptr %154, align 4, !tbaa !190
  %173 = load ptr, ptr %155, align 8, !tbaa !43
  %174 = getelementptr inbounds ptr, ptr %173, i64 %160
  %175 = load ptr, ptr %174, align 8, !tbaa !7
  %176 = load ptr, ptr %175, align 8, !tbaa !73
  tail call void (ptr, i32, ptr, ...) @ErrorMsg(ptr noundef %171, i32 noundef %172, ptr noundef nonnull @.str.99, ptr noundef nonnull %164, ptr noundef %176, ptr noundef nonnull %164) #32
  %177 = load i32, ptr %156, align 8, !tbaa !74
  %178 = add nsw i32 %177, 1
  store i32 %178, ptr %156, align 8, !tbaa !74
  br label %202

179:                                              ; preds = %159
  %180 = load ptr, ptr %155, align 8, !tbaa !43
  %181 = getelementptr inbounds ptr, ptr %180, i64 %160
  %182 = load ptr, ptr %181, align 8, !tbaa !7
  %183 = getelementptr inbounds %struct.symbol, ptr %182, i64 0, i32 2
  %184 = load i32, ptr %183, align 4, !tbaa !44
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %191, label %186

186:                                              ; preds = %179
  %187 = load ptr, ptr %157, align 8, !tbaa !325
  %188 = icmp eq ptr %187, null
  br i1 %188, label %189, label %195

189:                                              ; preds = %186
  %190 = getelementptr inbounds %struct.symbol, ptr %182, i64 0, i32 10
  br label %191

191:                                              ; preds = %189, %179
  %192 = phi ptr [ %190, %189 ], [ %158, %179 ]
  %193 = load ptr, ptr %192, align 8, !tbaa !7
  %194 = icmp eq ptr %193, null
  br i1 %194, label %202, label %195

195:                                              ; preds = %191, %186
  %196 = getelementptr inbounds %struct.symbol, ptr %182, i64 0, i32 1
  %197 = load i32, ptr %196, align 8, !tbaa !63
  %198 = trunc i64 %160 to i32
  %199 = add i32 %198, 1
  %200 = sub i32 %199, %161
  %201 = tail call ptr @append_str(ptr noundef nonnull @.str.100, i32 noundef 0, i32 noundef %197, i32 noundef %200) #32
  br label %202

202:                                              ; preds = %195, %191, %170, %166
  %203 = add nuw nsw i64 %160, 1
  %204 = load i32, ptr %4, align 8, !tbaa !42
  %205 = sext i32 %204 to i64
  %206 = icmp slt i64 %203, %205
  br i1 %206, label %159, label %207, !llvm.loop !367

207:                                              ; preds = %202, %148
  %208 = load ptr, ptr %10, align 8, !tbaa !250
  %209 = icmp eq ptr %208, null
  br i1 %209, label %215, label %210

210:                                              ; preds = %207
  store i32 0, ptr @append_str.used, align 4, !tbaa !33
  %211 = load ptr, ptr @append_str.z, align 8, !tbaa !7
  %212 = icmp eq ptr %211, null
  %213 = select i1 %212, ptr @.str.39, ptr %211
  %214 = tail call ptr @Strsafe(ptr noundef nonnull %213) #32
  store ptr %214, ptr %10, align 8, !tbaa !250
  br label %215

215:                                              ; preds = %210, %207
  call void @llvm.lifetime.end.p0(i64 1000, ptr nonnull %3) #36
  ret void
}

; Function Attrs: nofree nounwind optsize uwtable
define internal void @emit_code(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef %3) #9 {
  %5 = getelementptr inbounds %struct.rule, ptr %1, i64 0, i32 8
  %6 = load ptr, ptr %5, align 8, !tbaa !250
  %7 = icmp eq ptr %6, null
  br i1 %7, label %33, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.rule, ptr %1, i64 0, i32 7
  %10 = load i32, ptr %9, align 8, !tbaa !131
  %11 = getelementptr inbounds %struct.lemon, ptr %2, i64 0, i32 32
  %12 = load ptr, ptr %11, align 8, !tbaa !71
  tail call void @tplt_linedir(ptr noundef %0, i32 noundef %10, ptr noundef %12) #32
  %13 = load ptr, ptr %5, align 8, !tbaa !250
  %14 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.101, ptr noundef %13) #32
  %15 = load ptr, ptr %5, align 8, !tbaa !250
  br label %16

16:                                               ; preds = %22, %8
  %17 = phi ptr [ %15, %8 ], [ %24, %22 ]
  %18 = phi i32 [ 0, %8 ], [ %23, %22 ]
  %19 = load i8, ptr %17, align 1, !tbaa !64
  switch i8 %19, label %22 [
    i8 0, label %25
    i8 10, label %20
  ]

20:                                               ; preds = %16
  %21 = add nsw i32 %18, 1
  br label %22

22:                                               ; preds = %20, %16
  %23 = phi i32 [ %21, %20 ], [ %18, %16 ]
  %24 = getelementptr inbounds i8, ptr %17, i64 1
  br label %16, !llvm.loop !368

25:                                               ; preds = %16
  %.lcssa = phi i32 [ %18, %16 ]
  %26 = add nsw i32 %.lcssa, 3
  %27 = load i32, ptr %3, align 4, !tbaa !33
  %28 = add nsw i32 %26, %27
  store i32 %28, ptr %3, align 4, !tbaa !33
  %29 = tail call i64 @fwrite(ptr nonnull @.str.93, i64 2, i64 1, ptr %0)
  %30 = load i32, ptr %3, align 4, !tbaa !33
  %31 = getelementptr inbounds %struct.lemon, ptr %2, i64 0, i32 33
  %32 = load ptr, ptr %31, align 8, !tbaa !346
  tail call void @tplt_linedir(ptr noundef %0, i32 noundef %30, ptr noundef %32) #32
  br label %33

33:                                               ; preds = %25, %4
  ret void
}

; Function Attrs: nofree nounwind optsize uwtable
define internal void @tplt_linedir(ptr nocapture noundef %0, i32 noundef %1, ptr noundef readonly %2) #9 {
  %4 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %2, i32 noundef 47) #35
  %5 = icmp eq ptr %4, null
  %6 = getelementptr inbounds i8, ptr %4, i64 1
  %7 = select i1 %5, ptr %2, ptr %6
  %8 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.89, i32 noundef %1) #32
  br label %9

9:                                                ; preds = %15, %3
  %10 = phi ptr [ %7, %3 ], [ %19, %15 ]
  %11 = load i8, ptr %10, align 1, !tbaa !64
  switch i8 %11, label %15 [
    i8 0, label %20
    i8 92, label %12
  ]

12:                                               ; preds = %9
  %13 = tail call i32 @putc(i32 noundef 92, ptr noundef %0) #32
  %14 = load i8, ptr %10, align 1, !tbaa !64
  br label %15

15:                                               ; preds = %12, %9
  %16 = phi i8 [ %11, %9 ], [ %14, %12 ]
  %17 = sext i8 %16 to i32
  %18 = tail call i32 @putc(i32 noundef %17, ptr noundef %0) #32
  %19 = getelementptr inbounds i8, ptr %10, i64 1
  br label %9, !llvm.loop !369

20:                                               ; preds = %9
  %21 = tail call i64 @fwrite(ptr nonnull @.str.90, i64 2, i64 1, ptr %0)
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #17

; Function Attrs: nounwind optsize uwtable
define internal ptr @append_str(ptr noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca [40 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #36
  %6 = icmp eq ptr %0, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %4
  store i32 0, ptr @append_str.used, align 4, !tbaa !33
  %8 = load ptr, ptr @append_str.z, align 8, !tbaa !7
  br label %86

9:                                                ; preds = %4
  %10 = icmp slt i32 %1, 1
  br i1 %10, label %11, label %19

11:                                               ; preds = %9
  %12 = icmp slt i32 %1, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %11
  %14 = load i32, ptr @append_str.used, align 4, !tbaa !33
  %15 = add nsw i32 %14, %1
  store i32 %15, ptr @append_str.used, align 4, !tbaa !33
  br label %16

16:                                               ; preds = %13, %11
  %17 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #35
  %18 = trunc i64 %17 to i32
  br label %19

19:                                               ; preds = %16, %9
  %20 = phi i32 [ %18, %16 ], [ %1, %9 ]
  %21 = sext i32 %20 to i64
  %22 = add nsw i64 %21, 80
  %23 = load i32, ptr @append_str.used, align 4, !tbaa !33
  %24 = sext i32 %23 to i64
  %25 = add nsw i64 %22, %24
  %26 = load i32, ptr @append_str.alloced, align 4, !tbaa !33
  %27 = sext i32 %26 to i64
  %28 = icmp ult i64 %25, %27
  br i1 %28, label %35, label %29

29:                                               ; preds = %19
  %30 = trunc i64 %25 to i32
  %31 = add i32 %30, 200
  store i32 %31, ptr @append_str.alloced, align 4, !tbaa !33
  %32 = load ptr, ptr @append_str.z, align 8, !tbaa !7
  %33 = sext i32 %31 to i64
  %34 = tail call ptr @realloc(ptr noundef %32, i64 noundef %33) #31
  store ptr %34, ptr @append_str.z, align 8, !tbaa !7
  br label %37

35:                                               ; preds = %19
  %36 = load ptr, ptr @append_str.z, align 8, !tbaa !7
  br label %37

37:                                               ; preds = %35, %29
  %38 = phi ptr [ %36, %35 ], [ %34, %29 ]
  %39 = icmp eq ptr %38, null
  br i1 %39, label %86, label %40

40:                                               ; preds = %37
  %41 = icmp sgt i32 %20, 0
  br i1 %41, label %42, label %82

42:                                               ; preds = %73, %40
  %43 = phi ptr [ %74, %73 ], [ %38, %40 ]
  %44 = phi ptr [ %77, %73 ], [ %0, %40 ]
  %45 = phi i32 [ %76, %73 ], [ %2, %40 ]
  %46 = phi i32 [ %75, %73 ], [ %20, %40 ]
  %47 = add nsw i32 %46, -1
  %48 = getelementptr inbounds i8, ptr %44, i64 1
  %49 = load i8, ptr %44, align 1, !tbaa !64
  %50 = icmp eq i8 %49, 37
  %51 = icmp ne i32 %46, 1
  %52 = and i1 %51, %50
  br i1 %52, label %53, label %68

53:                                               ; preds = %42
  %54 = load i8, ptr %48, align 1, !tbaa !64
  %55 = icmp eq i8 %54, 100
  br i1 %55, label %56, label %68

56:                                               ; preds = %53
  %57 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) @.str.94, i32 noundef %45) #34
  %58 = load ptr, ptr @append_str.z, align 8, !tbaa !7
  %59 = load i32, ptr @append_str.used, align 4, !tbaa !33
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8, ptr %58, i64 %60
  %62 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %61, ptr noundef nonnull dereferenceable(1) %5) #34
  %63 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %61) #35
  %64 = trunc i64 %63 to i32
  %65 = add i32 %59, %64
  store i32 %65, ptr @append_str.used, align 4, !tbaa !33
  %66 = getelementptr inbounds i8, ptr %44, i64 2
  %67 = add nsw i32 %46, -2
  br label %73

68:                                               ; preds = %53, %42
  %69 = load i32, ptr @append_str.used, align 4, !tbaa !33
  %70 = add nsw i32 %69, 1
  store i32 %70, ptr @append_str.used, align 4, !tbaa !33
  %71 = sext i32 %69 to i64
  %72 = getelementptr inbounds i8, ptr %43, i64 %71
  store i8 %49, ptr %72, align 1, !tbaa !64
  br label %73

73:                                               ; preds = %68, %56
  %74 = phi ptr [ %58, %56 ], [ %43, %68 ]
  %75 = phi i32 [ %67, %56 ], [ %47, %68 ]
  %76 = phi i32 [ %3, %56 ], [ %45, %68 ]
  %77 = phi ptr [ %66, %56 ], [ %48, %68 ]
  %78 = icmp sgt i32 %75, 0
  br i1 %78, label %42, label %79, !llvm.loop !370

79:                                               ; preds = %73
  %.lcssa = phi ptr [ %74, %73 ]
  %80 = load i32, ptr @append_str.used, align 4, !tbaa !33
  %81 = sext i32 %80 to i64
  br label %82

82:                                               ; preds = %79, %40
  %83 = phi i64 [ %81, %79 ], [ %24, %40 ]
  %84 = phi ptr [ %.lcssa, %79 ], [ %38, %40 ]
  %85 = getelementptr inbounds i8, ptr %84, i64 %83
  store i8 0, ptr %85, align 1, !tbaa !64
  br label %86

86:                                               ; preds = %82, %37, %7
  %87 = phi ptr [ %8, %7 ], [ %84, %82 ], [ @.str.39, %37 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #36
  ret ptr %87
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @Strsafe(ptr noundef readonly %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %17, label %3

3:                                                ; preds = %1
  %4 = tail call ptr @Strsafe_find(ptr noundef nonnull %0) #32
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %17

6:                                                ; preds = %3
  %7 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #35
  %8 = add i64 %7, 1
  %9 = tail call noalias ptr @malloc(i64 noundef %8) #33
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %6
  %12 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(1) %0) #34
  %13 = tail call i32 @Strsafe_insert(ptr noundef nonnull %9) #32, !range !101
  br label %17

14:                                               ; preds = %6
  %15 = load ptr, ptr @stderr, align 8, !tbaa !7
  %16 = tail call i64 @fwrite(ptr nonnull @.str.10, i64 28, i64 1, ptr %15) #29
  tail call void @exit(i32 noundef 1) #30
  unreachable

17:                                               ; preds = %11, %3, %1
  %18 = phi ptr [ null, %1 ], [ %4, %3 ], [ %9, %11 ]
  ret ptr %18
}

; Function Attrs: nofree nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal ptr @Strsafe_find(ptr nocapture noundef readonly %0) #8 {
  %2 = load ptr, ptr @x1a, align 8, !tbaa !7
  %3 = icmp eq ptr %2, null
  br i1 %3, label %37, label %4

4:                                                ; preds = %1
  %5 = load i8, ptr %0, align 1, !tbaa !64
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
  %15 = load i8, ptr %12, align 1, !tbaa !64
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %7, !llvm.loop !87

17:                                               ; preds = %7, %4
  %18 = phi i32 [ 0, %4 ], [ %14, %7 ]
  %19 = load i32, ptr %2, align 8, !tbaa !213
  %20 = add nsw i32 %19, -1
  %21 = and i32 %20, %18
  %22 = getelementptr inbounds %struct.s_x4, ptr %2, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !217
  %24 = sext i32 %21 to i64
  %25 = getelementptr inbounds ptr, ptr %23, i64 %24
  %26 = load ptr, ptr %25, align 8, !tbaa !7
  %27 = icmp eq ptr %26, null
  br i1 %27, label %37, label %32

28:                                               ; preds = %32
  %29 = getelementptr inbounds %struct.s_x4node, ptr %33, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !7
  %31 = icmp eq ptr %30, null
  br i1 %31, label %37, label %32, !llvm.loop !371

32:                                               ; preds = %28, %17
  %33 = phi ptr [ %30, %28 ], [ %26, %17 ]
  %34 = load ptr, ptr %33, align 8, !tbaa !372
  %35 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %34, ptr noundef nonnull dereferenceable(1) %0) #35
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %28

37:                                               ; preds = %32, %28, %17, %1
  %38 = phi ptr [ null, %1 ], [ null, %17 ], [ null, %28 ], [ %34, %32 ]
  ret ptr %38
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @Strsafe_insert(ptr noundef %0) #0 {
  %2 = load ptr, ptr @x1a, align 8, !tbaa !7
  %3 = icmp eq ptr %2, null
  br i1 %3, label %126, label %4

4:                                                ; preds = %1
  %5 = load i8, ptr %0, align 1, !tbaa !64
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
  %15 = load i8, ptr %12, align 1, !tbaa !64
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %7, !llvm.loop !87

17:                                               ; preds = %7, %4
  %18 = phi i32 [ 0, %4 ], [ %14, %7 ]
  %19 = load i32, ptr %2, align 8, !tbaa !213
  %20 = add nsw i32 %19, -1
  %21 = and i32 %20, %18
  %22 = getelementptr inbounds %struct.s_x4, ptr %2, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !217
  %24 = sext i32 %21 to i64
  %25 = getelementptr inbounds ptr, ptr %23, i64 %24
  %26 = load ptr, ptr %25, align 8, !tbaa !7
  %27 = icmp eq ptr %26, null
  br i1 %27, label %37, label %32

28:                                               ; preds = %32
  %29 = getelementptr inbounds %struct.s_x4node, ptr %33, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !7
  %31 = icmp eq ptr %30, null
  br i1 %31, label %37, label %32, !llvm.loop !374

32:                                               ; preds = %28, %17
  %33 = phi ptr [ %30, %28 ], [ %26, %17 ]
  %34 = load ptr, ptr %33, align 8, !tbaa !372
  %35 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %34, ptr noundef nonnull dereferenceable(1) %0) #35
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %126, label %28

37:                                               ; preds = %28, %17
  %38 = getelementptr inbounds %struct.s_x4, ptr %2, i64 0, i32 1
  %39 = load i32, ptr %38, align 4, !tbaa !215
  %40 = icmp slt i32 %39, %19
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.s_x4, ptr %2, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !216
  br label %106

44:                                               ; preds = %37
  %45 = shl nsw i32 %19, 1
  %46 = sext i32 %45 to i64
  %47 = shl nsw i64 %46, 5
  %48 = tail call noalias ptr @malloc(i64 noundef %47) #33
  %49 = icmp eq ptr %48, null
  br i1 %49, label %126, label %50

50:                                               ; preds = %44
  %51 = getelementptr %struct.s_x4node, ptr %48, i64 %46
  %52 = icmp sgt i32 %19, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %50
  %54 = tail call i32 @llvm.smax.i32(i32 %45, i32 1)
  %55 = zext i32 %54 to i64
  %56 = shl nuw nsw i64 %55, 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %51, i8 0, i64 %56, i1 false), !tbaa !7
  br label %57

57:                                               ; preds = %53, %50
  %58 = icmp sgt i32 %39, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %57
  %60 = add nsw i32 %45, -1
  br label %100

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.s_x4, ptr %2, i64 0, i32 2
  %63 = add nsw i32 %45, -1
  %64 = zext i32 %39 to i64
  br label %65

65:                                               ; preds = %94, %61
  %66 = phi i64 [ 0, %61 ], [ %98, %94 ]
  %67 = load ptr, ptr %62, align 8, !tbaa !216
  %68 = getelementptr inbounds %struct.s_x4node, ptr %67, i64 %66
  %69 = load ptr, ptr %68, align 8, !tbaa !372
  %70 = load i8, ptr %69, align 1, !tbaa !64
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %82, label %72

72:                                               ; preds = %72, %65
  %73 = phi i8 [ %80, %72 ], [ %70, %65 ]
  %74 = phi i32 [ %79, %72 ], [ 0, %65 ]
  %75 = phi ptr [ %77, %72 ], [ %69, %65 ]
  %76 = mul nsw i32 %74, 13
  %77 = getelementptr inbounds i8, ptr %75, i64 1
  %78 = sext i8 %73 to i32
  %79 = add nsw i32 %76, %78
  %80 = load i8, ptr %77, align 1, !tbaa !64
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %82, label %72, !llvm.loop !87

82:                                               ; preds = %72, %65
  %83 = phi i32 [ 0, %65 ], [ %79, %72 ]
  %84 = and i32 %83, %63
  %85 = getelementptr inbounds %struct.s_x4node, ptr %48, i64 %66
  %86 = sext i32 %84 to i64
  %87 = getelementptr inbounds ptr, ptr %51, i64 %86
  %88 = load ptr, ptr %87, align 8, !tbaa !7
  %89 = icmp eq ptr %88, null
  br i1 %89, label %94, label %90

90:                                               ; preds = %82
  %91 = getelementptr inbounds %struct.s_x4node, ptr %48, i64 %66, i32 1
  %92 = getelementptr inbounds %struct.s_x4node, ptr %88, i64 0, i32 2
  store ptr %91, ptr %92, align 8, !tbaa !375
  %93 = load ptr, ptr %87, align 8, !tbaa !7
  br label %94

94:                                               ; preds = %90, %82
  %95 = phi ptr [ %93, %90 ], [ null, %82 ]
  %96 = getelementptr inbounds %struct.s_x4node, ptr %48, i64 %66, i32 1
  store ptr %95, ptr %96, align 8, !tbaa !376
  store ptr %69, ptr %85, align 8, !tbaa !372
  %97 = getelementptr inbounds %struct.s_x4node, ptr %48, i64 %66, i32 2
  store ptr %87, ptr %97, align 8, !tbaa !375
  store ptr %85, ptr %87, align 8, !tbaa !7
  %98 = add nuw nsw i64 %66, 1
  %99 = icmp eq i64 %98, %64
  br i1 %99, label %100, label %65, !llvm.loop !377

100:                                              ; preds = %94, %59
  %101 = phi i32 [ %60, %59 ], [ %63, %94 ]
  %102 = getelementptr inbounds %struct.s_x4, ptr %2, i64 0, i32 2
  %103 = load ptr, ptr %102, align 8, !tbaa !216
  tail call void @free(ptr noundef %103) #34
  store i32 %45, ptr %2, align 8, !tbaa.struct !143
  store ptr %48, ptr %102, align 8, !tbaa.struct !144
  store ptr %51, ptr %22, align 8, !tbaa.struct !145
  %104 = and i32 %101, %18
  %105 = sext i32 %104 to i64
  br label %106

106:                                              ; preds = %100, %41
  %107 = phi i64 [ %24, %41 ], [ %105, %100 ]
  %108 = phi ptr [ %23, %41 ], [ %51, %100 ]
  %109 = phi ptr [ %43, %41 ], [ %48, %100 ]
  %110 = add nsw i32 %39, 1
  store i32 %110, ptr %38, align 4, !tbaa !215
  %111 = sext i32 %39 to i64
  %112 = getelementptr inbounds %struct.s_x4node, ptr %109, i64 %111
  store ptr %0, ptr %112, align 8, !tbaa !372
  %113 = getelementptr inbounds ptr, ptr %108, i64 %107
  %114 = load ptr, ptr %113, align 8, !tbaa !7
  %115 = icmp eq ptr %114, null
  br i1 %115, label %120, label %116

116:                                              ; preds = %106
  %117 = getelementptr inbounds %struct.s_x4node, ptr %109, i64 %111, i32 1
  %118 = getelementptr inbounds %struct.s_x4node, ptr %114, i64 0, i32 2
  store ptr %117, ptr %118, align 8, !tbaa !375
  %119 = load ptr, ptr %113, align 8, !tbaa !7
  br label %120

120:                                              ; preds = %116, %106
  %121 = phi ptr [ %119, %116 ], [ null, %106 ]
  %122 = getelementptr inbounds %struct.s_x4node, ptr %109, i64 %111, i32 1
  store ptr %121, ptr %122, align 8, !tbaa !376
  store ptr %112, ptr %113, align 8, !tbaa !7
  %123 = load ptr, ptr %22, align 8, !tbaa !217
  %124 = getelementptr inbounds ptr, ptr %123, i64 %107
  %125 = getelementptr inbounds %struct.s_x4node, ptr %109, i64 %111, i32 2
  store ptr %124, ptr %125, align 8, !tbaa !375
  br label %126

126:                                              ; preds = %120, %44, %32, %1
  %127 = phi i32 [ 1, %120 ], [ 0, %1 ], [ 0, %44 ], [ 0, %32 ]
  ret i32 %127
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #18

; Function Attrs: nofree nounwind
declare noundef i32 @fputs(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @access(ptr nocapture noundef readonly, i32 noundef) local_unnamed_addr #17

; Function Attrs: nofree nounwind optsize uwtable
define internal noalias ptr @pathsearch(ptr noundef %0, ptr noundef %1, i32 noundef %2) #9 {
  %4 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #35
  %5 = icmp eq ptr %4, null
  br i1 %5, label %17, label %6

6:                                                ; preds = %3
  %7 = load i8, ptr %4, align 1, !tbaa !64
  store i8 0, ptr %4, align 1, !tbaa !64
  %8 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #35
  %9 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #35
  %10 = add i64 %8, 2
  %11 = add i64 %10, %9
  %12 = tail call noalias ptr @malloc(i64 noundef %11) #33
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %6
  %15 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %12, ptr noundef nonnull dereferenceable(1) @.str.80, ptr noundef %0, ptr noundef %1) #34
  br label %16

16:                                               ; preds = %14, %6
  store i8 %7, ptr %4, align 1, !tbaa !64
  br label %46

17:                                               ; preds = %3
  %18 = tail call ptr @getenv(ptr noundef nonnull @.str.81) #34
  %19 = icmp eq ptr %18, null
  %20 = select i1 %19, ptr @.str.82, ptr %18
  %21 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %20) #35
  %22 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #35
  %23 = add i64 %21, 2
  %24 = add i64 %23, %22
  %25 = tail call noalias ptr @malloc(i64 noundef %24) #33
  %26 = icmp eq ptr %25, null
  br i1 %26, label %46, label %27

27:                                               ; preds = %37, %17
  %28 = phi ptr [ %43, %37 ], [ %20, %17 ]
  %29 = load i8, ptr %28, align 1, !tbaa !64
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %46, label %31

31:                                               ; preds = %27
  %32 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %28, i32 noundef 58) #35
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %28) #35
  %36 = getelementptr inbounds i8, ptr %28, i64 %35
  br label %37

37:                                               ; preds = %34, %31
  %38 = phi ptr [ %36, %34 ], [ %32, %31 ]
  %39 = load i8, ptr %38, align 1, !tbaa !64
  store i8 0, ptr %38, align 1, !tbaa !64
  %40 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %25, ptr noundef nonnull dereferenceable(1) @.str.80, ptr noundef nonnull %28, ptr noundef %1) #34
  store i8 %39, ptr %38, align 1, !tbaa !64
  %41 = icmp eq i8 %39, 0
  %42 = getelementptr inbounds i8, ptr %38, i64 1
  %43 = select i1 %41, ptr @.str.39, ptr %42
  %44 = tail call i32 @access(ptr noundef nonnull %25, i32 noundef %2) #34
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %27, !llvm.loop !378

46:                                               ; preds = %37, %27, %17, %16
  %47 = phi ptr [ %12, %16 ], [ null, %17 ], [ %25, %27 ], [ %25, %37 ]
  ret ptr %47
}

; Function Attrs: nofree nounwind optsize
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #17

; Function Attrs: nofree nounwind optsize memory(read)
declare noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #24

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #18

; Function Attrs: nofree nounwind optsize uwtable
define internal void @ConfigPrint(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #9 {
  %3 = load ptr, ptr %1, align 8, !tbaa !99
  %4 = load ptr, ptr %3, align 8, !tbaa !60
  %5 = load ptr, ptr %4, align 8, !tbaa !73
  %6 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.61, ptr noundef %5) #32
  %7 = getelementptr inbounds %struct.rule, ptr %3, i64 0, i32 4
  %8 = load i32, ptr %7, align 8, !tbaa !42
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %57, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.config, ptr %1, i64 0, i32 1
  %12 = getelementptr inbounds %struct.rule, ptr %3, i64 0, i32 5
  br label %13

13:                                               ; preds = %52, %10
  %14 = phi i32 [ %8, %10 ], [ %54, %52 ]
  %15 = phi i64 [ 0, %10 ], [ %53, %52 ]
  %16 = load i32, ptr %11, align 8, !tbaa !100
  %17 = zext i32 %16 to i64
  %18 = icmp eq i64 %15, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %13
  %20 = tail call i64 @fwrite(ptr nonnull @.str.62, i64 2, i64 1, ptr %0)
  %21 = load i32, ptr %7, align 8, !tbaa !42
  br label %22

22:                                               ; preds = %19, %13
  %23 = phi i32 [ %21, %19 ], [ %14, %13 ]
  %24 = zext i32 %23 to i64
  %25 = icmp eq i64 %15, %24
  br i1 %25, label %57, label %26

26:                                               ; preds = %22
  %27 = load ptr, ptr %12, align 8, !tbaa !43
  %28 = getelementptr inbounds ptr, ptr %27, i64 %15
  %29 = load ptr, ptr %28, align 8, !tbaa !7
  %30 = load ptr, ptr %29, align 8, !tbaa !73
  %31 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.57, ptr noundef %30) #32
  %32 = getelementptr inbounds %struct.symbol, ptr %29, i64 0, i32 2
  %33 = load i32, ptr %32, align 4, !tbaa !44
  %34 = icmp eq i32 %33, 2
  br i1 %34, label %35, label %52

35:                                               ; preds = %26
  %36 = getelementptr inbounds %struct.symbol, ptr %29, i64 0, i32 14
  %37 = load i32, ptr %36, align 4, !tbaa !46
  %38 = icmp sgt i32 %37, 1
  br i1 %38, label %39, label %52

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.symbol, ptr %29, i64 0, i32 15
  br label %41

41:                                               ; preds = %41, %39
  %42 = phi i64 [ 1, %39 ], [ %48, %41 ]
  %43 = load ptr, ptr %40, align 8, !tbaa !47
  %44 = getelementptr inbounds ptr, ptr %43, i64 %42
  %45 = load ptr, ptr %44, align 8, !tbaa !7
  %46 = load ptr, ptr %45, align 8, !tbaa !73
  %47 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.58, ptr noundef %46) #32
  %48 = add nuw nsw i64 %42, 1
  %49 = load i32, ptr %36, align 4, !tbaa !46
  %50 = sext i32 %49 to i64
  %51 = icmp slt i64 %48, %50
  br i1 %51, label %41, label %52, !llvm.loop !379

52:                                               ; preds = %41, %35, %26
  %53 = add nuw nsw i64 %15, 1
  %54 = load i32, ptr %7, align 8, !tbaa !42
  %55 = sext i32 %54 to i64
  %56 = icmp slt i64 %15, %55
  br i1 %56, label %13, label %57, !llvm.loop !380

57:                                               ; preds = %52, %22, %2
  ret void
}

; Function Attrs: nofree nounwind optsize uwtable
define internal i32 @PrintAction(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i32 noundef %2) #9 {
  %4 = getelementptr inbounds %struct.action, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !17
  switch i32 %5, label %47 [
    i32 0, label %6
    i32 2, label %14
    i32 1, label %22
    i32 3, label %26
    i32 5, label %30
    i32 6, label %30
    i32 4, label %38
    i32 7, label %46
    i32 8, label %46
    i32 9, label %46
  ]

6:                                                ; preds = %3
  %7 = load ptr, ptr %0, align 8, !tbaa !18
  %8 = load ptr, ptr %7, align 8, !tbaa !73
  %9 = getelementptr inbounds %struct.action, ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !64
  %11 = getelementptr inbounds %struct.state, ptr %10, i64 0, i32 2
  %12 = load i32, ptr %11, align 8, !tbaa !114
  %13 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.63, i32 noundef %2, ptr noundef %8, i32 noundef %12) #32
  br label %47

14:                                               ; preds = %3
  %15 = load ptr, ptr %0, align 8, !tbaa !18
  %16 = load ptr, ptr %15, align 8, !tbaa !73
  %17 = getelementptr inbounds %struct.action, ptr %0, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !64
  %19 = getelementptr inbounds %struct.rule, ptr %18, i64 0, i32 10
  %20 = load i32, ptr %19, align 8, !tbaa !116
  %21 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.64, i32 noundef %2, ptr noundef %16, i32 noundef %20) #32
  br label %47

22:                                               ; preds = %3
  %23 = load ptr, ptr %0, align 8, !tbaa !18
  %24 = load ptr, ptr %23, align 8, !tbaa !73
  %25 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.65, i32 noundef %2, ptr noundef %24) #32
  br label %47

26:                                               ; preds = %3
  %27 = load ptr, ptr %0, align 8, !tbaa !18
  %28 = load ptr, ptr %27, align 8, !tbaa !73
  %29 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.66, i32 noundef %2, ptr noundef %28) #32
  br label %47

30:                                               ; preds = %3, %3
  %31 = load ptr, ptr %0, align 8, !tbaa !18
  %32 = load ptr, ptr %31, align 8, !tbaa !73
  %33 = getelementptr inbounds %struct.action, ptr %0, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !64
  %35 = getelementptr inbounds %struct.rule, ptr %34, i64 0, i32 10
  %36 = load i32, ptr %35, align 8, !tbaa !116
  %37 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.67, i32 noundef %2, ptr noundef %32, i32 noundef %36) #32
  br label %47

38:                                               ; preds = %3
  %39 = load ptr, ptr %0, align 8, !tbaa !18
  %40 = load ptr, ptr %39, align 8, !tbaa !73
  %41 = getelementptr inbounds %struct.action, ptr %0, i64 0, i32 2
  %42 = load ptr, ptr %41, align 8, !tbaa !64
  %43 = getelementptr inbounds %struct.state, ptr %42, i64 0, i32 2
  %44 = load i32, ptr %43, align 8, !tbaa !114
  %45 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.68, i32 noundef %2, ptr noundef %40, i32 noundef %44) #32
  br label %47

46:                                               ; preds = %3, %3, %3
  br label %47

47:                                               ; preds = %46, %38, %30, %26, %22, %14, %6, %3
  %48 = phi i32 [ 1, %3 ], [ 0, %46 ], [ 1, %38 ], [ 1, %30 ], [ 1, %26 ], [ 1, %22 ], [ 1, %14 ], [ 1, %6 ]
  ret i32 %48
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @stateResortCompare(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #10 {
  %3 = load ptr, ptr %0, align 8, !tbaa !7
  %4 = load ptr, ptr %1, align 8, !tbaa !7
  %5 = getelementptr inbounds %struct.state, ptr %3, i64 0, i32 5
  %6 = load i32, ptr %5, align 4, !tbaa !283
  %7 = getelementptr inbounds %struct.state, ptr %4, i64 0, i32 5
  %8 = load i32, ptr %7, align 4, !tbaa !283
  %9 = icmp slt i32 %6, %8
  br i1 %9, label %29, label %10

10:                                               ; preds = %2
  %11 = icmp sgt i32 %6, %8
  br i1 %11, label %29, label %12

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.state, ptr %3, i64 0, i32 4
  %14 = load i32, ptr %13, align 8, !tbaa !282
  %15 = getelementptr inbounds %struct.state, ptr %4, i64 0, i32 4
  %16 = load i32, ptr %15, align 8, !tbaa !282
  %17 = icmp slt i32 %14, %16
  br i1 %17, label %29, label %18

18:                                               ; preds = %12
  %19 = icmp sgt i32 %14, %16
  br i1 %19, label %29, label %20

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.state, ptr %3, i64 0, i32 2
  %22 = load i32, ptr %21, align 8, !tbaa !114
  %23 = getelementptr inbounds %struct.state, ptr %4, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !114
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

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fseek(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #17

; Function Attrs: nofree nounwind optsize
declare noundef i64 @ftell(ptr nocapture noundef) local_unnamed_addr #17

; Function Attrs: nofree nounwind optsize
declare void @rewind(ptr nocapture noundef) local_unnamed_addr #17

; Function Attrs: nofree nounwind optsize
declare noundef i64 @fread(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #17

; Function Attrs: nounwind optsize uwtable
define internal i32 @Symbol_insert(ptr noundef %0, ptr noundef %1) #0 {
  %3 = load ptr, ptr @x2a, align 8, !tbaa !7
  %4 = icmp eq ptr %3, null
  br i1 %4, label %132, label %5

5:                                                ; preds = %2
  %6 = load i8, ptr %1, align 1, !tbaa !64
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %18, label %8

8:                                                ; preds = %8, %5
  %9 = phi i8 [ %16, %8 ], [ %6, %5 ]
  %10 = phi i32 [ %15, %8 ], [ 0, %5 ]
  %11 = phi ptr [ %13, %8 ], [ %1, %5 ]
  %12 = mul nsw i32 %10, 13
  %13 = getelementptr inbounds i8, ptr %11, i64 1
  %14 = sext i8 %9 to i32
  %15 = add nsw i32 %12, %14
  %16 = load i8, ptr %13, align 1, !tbaa !64
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %8, !llvm.loop !87

18:                                               ; preds = %8, %5
  %19 = phi i32 [ 0, %5 ], [ %15, %8 ]
  %20 = load i32, ptr %3, align 8, !tbaa !88
  %21 = add nsw i32 %20, -1
  %22 = and i32 %21, %19
  %23 = getelementptr inbounds %struct.s_x4, ptr %3, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !90
  %25 = sext i32 %22 to i64
  %26 = getelementptr inbounds ptr, ptr %24, i64 %25
  %27 = load ptr, ptr %26, align 8, !tbaa !7
  %28 = icmp eq ptr %27, null
  br i1 %28, label %39, label %33

29:                                               ; preds = %33
  %30 = getelementptr inbounds %struct.s_x3node, ptr %34, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !7
  %32 = icmp eq ptr %31, null
  br i1 %32, label %39, label %33, !llvm.loop !381

33:                                               ; preds = %29, %18
  %34 = phi ptr [ %31, %29 ], [ %27, %18 ]
  %35 = getelementptr inbounds %struct.s_x3node, ptr %34, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !91
  %37 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %36, ptr noundef nonnull dereferenceable(1) %1) #35
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %132, label %29

39:                                               ; preds = %29, %18
  %40 = getelementptr inbounds %struct.s_x4, ptr %3, i64 0, i32 1
  %41 = load i32, ptr %40, align 4, !tbaa !196
  %42 = icmp slt i32 %41, %20
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.s_x4, ptr %3, i64 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !219
  br label %111

46:                                               ; preds = %39
  %47 = shl nsw i32 %20, 1
  %48 = sext i32 %47 to i64
  %49 = mul nsw i64 %48, 40
  %50 = tail call noalias ptr @malloc(i64 noundef %49) #33
  %51 = icmp eq ptr %50, null
  br i1 %51, label %132, label %52

52:                                               ; preds = %46
  %53 = getelementptr %struct.s_x3node, ptr %50, i64 %48
  %54 = icmp sgt i32 %20, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %52
  %56 = tail call i32 @llvm.smax.i32(i32 %47, i32 1)
  %57 = zext i32 %56 to i64
  %58 = shl nuw nsw i64 %57, 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %53, i8 0, i64 %58, i1 false), !tbaa !7
  br label %59

59:                                               ; preds = %55, %52
  %60 = icmp sgt i32 %41, 0
  br i1 %60, label %63, label %61

61:                                               ; preds = %59
  %62 = add nsw i32 %47, -1
  br label %105

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.s_x4, ptr %3, i64 0, i32 2
  %65 = add nsw i32 %47, -1
  %66 = zext i32 %41 to i64
  br label %67

67:                                               ; preds = %97, %63
  %68 = phi i64 [ 0, %63 ], [ %103, %97 ]
  %69 = load ptr, ptr %64, align 8, !tbaa !219
  %70 = getelementptr inbounds %struct.s_x3node, ptr %69, i64 %68
  %71 = getelementptr inbounds %struct.s_x3node, ptr %69, i64 %68, i32 1
  %72 = load ptr, ptr %71, align 8, !tbaa !91
  %73 = load i8, ptr %72, align 1, !tbaa !64
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %85, label %75

75:                                               ; preds = %75, %67
  %76 = phi i8 [ %83, %75 ], [ %73, %67 ]
  %77 = phi i32 [ %82, %75 ], [ 0, %67 ]
  %78 = phi ptr [ %80, %75 ], [ %72, %67 ]
  %79 = mul nsw i32 %77, 13
  %80 = getelementptr inbounds i8, ptr %78, i64 1
  %81 = sext i8 %76 to i32
  %82 = add nsw i32 %79, %81
  %83 = load i8, ptr %80, align 1, !tbaa !64
  %84 = icmp eq i8 %83, 0
  br i1 %84, label %85, label %75, !llvm.loop !87

85:                                               ; preds = %75, %67
  %86 = phi i32 [ 0, %67 ], [ %82, %75 ]
  %87 = and i32 %86, %65
  %88 = getelementptr inbounds %struct.s_x3node, ptr %50, i64 %68
  %89 = sext i32 %87 to i64
  %90 = getelementptr inbounds ptr, ptr %53, i64 %89
  %91 = load ptr, ptr %90, align 8, !tbaa !7
  %92 = icmp eq ptr %91, null
  br i1 %92, label %97, label %93

93:                                               ; preds = %85
  %94 = getelementptr inbounds %struct.s_x3node, ptr %50, i64 %68, i32 2
  %95 = getelementptr inbounds %struct.s_x3node, ptr %91, i64 0, i32 3
  store ptr %94, ptr %95, align 8, !tbaa !382
  %96 = load ptr, ptr %90, align 8, !tbaa !7
  br label %97

97:                                               ; preds = %93, %85
  %98 = phi ptr [ %96, %93 ], [ null, %85 ]
  %99 = getelementptr inbounds %struct.s_x3node, ptr %50, i64 %68, i32 2
  store ptr %98, ptr %99, align 8, !tbaa !383
  %100 = getelementptr inbounds %struct.s_x3node, ptr %50, i64 %68, i32 1
  store ptr %72, ptr %100, align 8, !tbaa !91
  %101 = load ptr, ptr %70, align 8, !tbaa !94
  store ptr %101, ptr %88, align 8, !tbaa !94
  %102 = getelementptr inbounds %struct.s_x3node, ptr %50, i64 %68, i32 3
  store ptr %90, ptr %102, align 8, !tbaa !382
  store ptr %88, ptr %90, align 8, !tbaa !7
  %103 = add nuw nsw i64 %68, 1
  %104 = icmp eq i64 %103, %66
  br i1 %104, label %105, label %67, !llvm.loop !384

105:                                              ; preds = %97, %61
  %106 = phi i32 [ %62, %61 ], [ %65, %97 ]
  %107 = getelementptr inbounds %struct.s_x4, ptr %3, i64 0, i32 2
  %108 = load ptr, ptr %107, align 8, !tbaa !219
  tail call void @free(ptr noundef %108) #34
  store i32 %47, ptr %3, align 8, !tbaa.struct !143
  store ptr %50, ptr %107, align 8, !tbaa.struct !144
  store ptr %53, ptr %23, align 8, !tbaa.struct !145
  %109 = and i32 %106, %19
  %110 = sext i32 %109 to i64
  br label %111

111:                                              ; preds = %105, %43
  %112 = phi i64 [ %25, %43 ], [ %110, %105 ]
  %113 = phi ptr [ %24, %43 ], [ %53, %105 ]
  %114 = phi ptr [ %45, %43 ], [ %50, %105 ]
  %115 = add nsw i32 %41, 1
  store i32 %115, ptr %40, align 4, !tbaa !196
  %116 = sext i32 %41 to i64
  %117 = getelementptr inbounds %struct.s_x3node, ptr %114, i64 %116
  %118 = getelementptr inbounds %struct.s_x3node, ptr %114, i64 %116, i32 1
  store ptr %1, ptr %118, align 8, !tbaa !91
  store ptr %0, ptr %117, align 8, !tbaa !94
  %119 = getelementptr inbounds ptr, ptr %113, i64 %112
  %120 = load ptr, ptr %119, align 8, !tbaa !7
  %121 = icmp eq ptr %120, null
  br i1 %121, label %126, label %122

122:                                              ; preds = %111
  %123 = getelementptr inbounds %struct.s_x3node, ptr %114, i64 %116, i32 2
  %124 = getelementptr inbounds %struct.s_x3node, ptr %120, i64 0, i32 3
  store ptr %123, ptr %124, align 8, !tbaa !382
  %125 = load ptr, ptr %119, align 8, !tbaa !7
  br label %126

126:                                              ; preds = %122, %111
  %127 = phi ptr [ %125, %122 ], [ null, %111 ]
  %128 = getelementptr inbounds %struct.s_x3node, ptr %114, i64 %116, i32 2
  store ptr %127, ptr %128, align 8, !tbaa !383
  store ptr %117, ptr %119, align 8, !tbaa !7
  %129 = load ptr, ptr %23, align 8, !tbaa !90
  %130 = getelementptr inbounds ptr, ptr %129, i64 %112
  %131 = getelementptr inbounds %struct.s_x3node, ptr %114, i64 %116, i32 3
  store ptr %130, ptr %131, align 8, !tbaa !382
  br label %132

132:                                              ; preds = %126, %46, %33, %2
  %133 = phi i32 [ 1, %126 ], [ 0, %2 ], [ 0, %46 ], [ 0, %33 ]
  ret i32 %133
}

; Function Attrs: nofree nounwind optsize uwtable
define internal fastcc void @errline(i32 noundef %0, i32 noundef %1, ptr nocapture noundef %2) unnamed_addr #9 {
  %4 = load ptr, ptr @argv, align 8, !tbaa !7
  %5 = load ptr, ptr %4, align 8, !tbaa !7, !nonnull !385, !noundef !385
  %6 = tail call i32 @fputs(ptr nonnull %5, ptr %2)
  %7 = load ptr, ptr @argv, align 8, !tbaa !7
  %8 = load ptr, ptr %7, align 8, !tbaa !7
  %9 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %8) #35
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
  %23 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.57, ptr noundef nonnull %20) #32
  %24 = load ptr, ptr @argv, align 8, !tbaa !7
  %25 = getelementptr inbounds ptr, ptr %24, i64 %17
  %26 = load ptr, ptr %25, align 8, !tbaa !7
  %27 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %26) #35
  %28 = trunc i64 %27 to i32
  %29 = add i32 %18, 1
  %30 = add i32 %29, %28
  %31 = add nuw nsw i64 %17, 1
  %32 = icmp eq i64 %31, %14
  br i1 %32, label %35, label %15, !llvm.loop !386

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
  %47 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.57, ptr noundef nonnull %46) #32
  %48 = add nuw i64 %45, 1
  %49 = load ptr, ptr @argv, align 8, !tbaa !7
  %50 = getelementptr inbounds ptr, ptr %49, i64 %48
  %51 = load ptr, ptr %50, align 8, !tbaa !7
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %44, !llvm.loop !387

53:                                               ; preds = %44, %35
  %54 = icmp slt i32 %39, 20
  br i1 %54, label %55, label %57

55:                                               ; preds = %53
  %56 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.171, i32 noundef %39, ptr noundef nonnull @.str.39) #32
  br label %60

57:                                               ; preds = %53
  %58 = add nsw i32 %39, -7
  %59 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.172, i32 noundef %58, ptr noundef nonnull @.str.39) #32
  br label %60

60:                                               ; preds = %57, %55
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #25

; Function Attrs: mustprogress nofree nounwind optsize willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #25

; Function Attrs: nofree nounwind optsize uwtable
define internal void @OptPrint() #9 {
  %1 = load ptr, ptr @op, align 8, !tbaa !7
  %2 = getelementptr inbounds %struct.s_options, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !203
  %4 = icmp eq ptr %3, null
  br i1 %4, label %73, label %10

5:                                                ; preds = %25
  %.lcssa = phi i32 [ %27, %25 ]
  br i1 %4, label %73, label %6

6:                                                ; preds = %5
  %7 = add nsw i32 %.lcssa, -8
  %8 = add nsw i32 %.lcssa, -6
  %9 = add nsw i32 %.lcssa, -9
  br label %32

10:                                               ; preds = %25, %0
  %11 = phi i64 [ %28, %25 ], [ 0, %0 ]
  %12 = phi ptr [ %30, %25 ], [ %3, %0 ]
  %13 = phi i32 [ %27, %25 ], [ 0, %0 ]
  %14 = getelementptr inbounds %struct.s_options, ptr %1, i64 %11
  %15 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %12) #35
  %16 = trunc i64 %15 to i32
  %17 = add i32 %16, 1
  %18 = load i32, ptr %14, align 8, !tbaa !206
  switch i32 %18, label %25 [
    i32 8, label %23
    i32 4, label %23
    i32 2, label %19
    i32 6, label %19
    i32 3, label %21
    i32 7, label %21
  ]

19:                                               ; preds = %10, %10
  %20 = add i32 %16, 10
  br label %25

21:                                               ; preds = %10, %10
  %22 = add i32 %16, 7
  br label %25

23:                                               ; preds = %10, %10
  %24 = add i32 %16, 9
  br label %25

25:                                               ; preds = %23, %21, %19, %10
  %26 = phi i32 [ %17, %10 ], [ %22, %21 ], [ %20, %19 ], [ %24, %23 ]
  %27 = tail call i32 @llvm.smax.i32(i32 %26, i32 %13)
  %28 = add nuw nsw i64 %11, 1
  %29 = getelementptr inbounds %struct.s_options, ptr %1, i64 %28, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !203
  %31 = icmp eq ptr %30, null
  br i1 %31, label %5, label %10, !llvm.loop !388

32:                                               ; preds = %67, %6
  %33 = phi i64 [ 0, %6 ], [ %68, %67 ]
  %34 = phi ptr [ %3, %6 ], [ %71, %67 ]
  %35 = phi ptr [ %1, %6 ], [ %69, %67 ]
  %36 = getelementptr inbounds %struct.s_options, ptr %35, i64 %33
  %37 = load i32, ptr %36, align 8, !tbaa !206
  switch i32 %37, label %67 [
    i32 1, label %38
    i32 5, label %38
    i32 2, label %43
    i32 6, label %43
    i32 3, label %51
    i32 7, label %51
    i32 4, label %59
    i32 8, label %59
  ]

38:                                               ; preds = %32, %32
  %39 = load ptr, ptr @errstream, align 8, !tbaa !7
  %40 = getelementptr inbounds %struct.s_options, ptr %35, i64 %33, i32 3
  %41 = load ptr, ptr %40, align 8, !tbaa !389
  %42 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %39, ptr noundef nonnull @.str.37, i32 noundef %.lcssa, ptr noundef nonnull %34, ptr noundef %41) #32
  br label %67

43:                                               ; preds = %32, %32
  %44 = load ptr, ptr @errstream, align 8, !tbaa !7
  %45 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %34) #35
  %46 = trunc i64 %45 to i32
  %47 = sub i32 %9, %46
  %48 = getelementptr inbounds %struct.s_options, ptr %35, i64 %33, i32 3
  %49 = load ptr, ptr %48, align 8, !tbaa !389
  %50 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %44, ptr noundef nonnull @.str.38, ptr noundef nonnull %34, i32 noundef %47, ptr noundef nonnull @.str.39, ptr noundef %49) #32
  br label %67

51:                                               ; preds = %32, %32
  %52 = load ptr, ptr @errstream, align 8, !tbaa !7
  %53 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %34) #35
  %54 = trunc i64 %53 to i32
  %55 = sub i32 %8, %54
  %56 = getelementptr inbounds %struct.s_options, ptr %35, i64 %33, i32 3
  %57 = load ptr, ptr %56, align 8, !tbaa !389
  %58 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %52, ptr noundef nonnull @.str.40, ptr noundef nonnull %34, i32 noundef %55, ptr noundef nonnull @.str.39, ptr noundef %57) #32
  br label %67

59:                                               ; preds = %32, %32
  %60 = load ptr, ptr @errstream, align 8, !tbaa !7
  %61 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %34) #35
  %62 = trunc i64 %61 to i32
  %63 = sub i32 %7, %62
  %64 = getelementptr inbounds %struct.s_options, ptr %35, i64 %33, i32 3
  %65 = load ptr, ptr %64, align 8, !tbaa !389
  %66 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %60, ptr noundef nonnull @.str.41, ptr noundef nonnull %34, i32 noundef %63, ptr noundef nonnull @.str.39, ptr noundef %65) #32
  br label %67

67:                                               ; preds = %59, %51, %43, %38, %32
  %68 = add nuw i64 %33, 1
  %69 = load ptr, ptr @op, align 8, !tbaa !7
  %70 = getelementptr inbounds %struct.s_options, ptr %69, i64 %68, i32 1
  %71 = load ptr, ptr %70, align 8, !tbaa !203
  %72 = icmp eq ptr %71, null
  br i1 %72, label %73, label %32, !llvm.loop !390

73:                                               ; preds = %67, %5, %0
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @handle_D_option(ptr nocapture noundef readonly %0) #0 {
  %2 = load i32, ptr @nDefine, align 4, !tbaa !33
  %3 = add nsw i32 %2, 1
  store i32 %3, ptr @nDefine, align 4, !tbaa !33
  %4 = load ptr, ptr @azDefine, align 8, !tbaa !7
  %5 = sext i32 %3 to i64
  %6 = shl nsw i64 %5, 3
  %7 = tail call ptr @realloc(ptr noundef %4, i64 noundef %6) #31
  store ptr %7, ptr @azDefine, align 8, !tbaa !7
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load ptr, ptr @stderr, align 8, !tbaa !7
  %11 = tail call i64 @fwrite(ptr nonnull @.str.165, i64 14, i64 1, ptr %10) #29
  tail call void @exit(i32 noundef 1) #30
  unreachable

12:                                               ; preds = %1
  %13 = sext i32 %2 to i64
  %14 = getelementptr inbounds ptr, ptr %7, i64 %13
  %15 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #35
  %16 = add i64 %15, 1
  %17 = tail call noalias ptr @malloc(i64 noundef %16) #33
  store ptr %17, ptr %14, align 8, !tbaa !7
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %12
  %20 = load ptr, ptr @stderr, align 8, !tbaa !7
  %21 = tail call i64 @fwrite(ptr nonnull @.str.165, i64 14, i64 1, ptr %20) #29
  tail call void @exit(i32 noundef 1) #30
  unreachable

22:                                               ; preds = %12
  %23 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %17, ptr noundef nonnull dereferenceable(1) %0) #34
  br label %24

24:                                               ; preds = %27, %22
  %25 = phi ptr [ %17, %22 ], [ %28, %27 ]
  %26 = load i8, ptr %25, align 1, !tbaa !64
  switch i8 %26, label %27 [
    i8 0, label %29
    i8 61, label %29
  ]

27:                                               ; preds = %24
  %28 = getelementptr inbounds i8, ptr %25, i64 1
  br label %24, !llvm.loop !391

29:                                               ; preds = %24, %24
  %.lcssa = phi ptr [ %25, %24 ], [ %25, %24 ]
  store i8 0, ptr %.lcssa, align 1, !tbaa !64
  ret void
}

; Function Attrs: nounwind optsize uwtable
define dso_local i32 @main(i32 noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca [4 x ptr], align 16
  %5 = icmp sgt i32 %0, 1
  %6 = zext i32 %0 to i64
  br label %7

7:                                                ; preds = %48, %2
  %8 = phi i32 [ 0, %2 ], [ %49, %48 ]
  br i1 %5, label %9, label %48

9:                                                ; preds = %45, %7
  %10 = phi i64 [ %46, %45 ], [ 1, %7 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #36
  %11 = call i32 @fork() #34
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %24

13:                                               ; preds = %9
  %.lcssa = phi i64 [ %10, %9 ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #36
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
  %21 = call fastcc ptr @mybasename(ptr noundef %18) #32
  %22 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %20, ptr noundef nonnull @.str.162, ptr noundef %21) #32
  %23 = call i32 @lemon_main(i32 poison, ptr noundef nonnull %4) #32
  unreachable

24:                                               ; preds = %27, %9
  %25 = call i32 @wait(ptr noundef nonnull %3) #34
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = tail call ptr @__errno_location() #37
  %29 = load i32, ptr %28, align 4, !tbaa !33
  %30 = icmp eq i32 %29, 4
  br i1 %30, label %24, label %31, !llvm.loop !392

31:                                               ; preds = %27, %24
  %32 = load i32, ptr %3, align 4, !tbaa !33
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %45, label %34

34:                                               ; preds = %31
  %35 = load ptr, ptr @stdout, align 8, !tbaa !7
  %36 = call i32 @fflush(ptr noundef %35) #32
  %37 = load ptr, ptr @stderr, align 8, !tbaa !7
  %38 = getelementptr inbounds ptr, ptr %1, i64 %10
  %39 = load ptr, ptr %38, align 8, !tbaa !7
  %40 = call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %39, i32 noundef 47) #35
  %41 = icmp eq ptr %40, null
  %42 = getelementptr inbounds i8, ptr %40, i64 1
  %43 = select i1 %41, ptr %39, ptr %42
  %44 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %37, ptr noundef nonnull @.str.163, ptr noundef %43) #38
  br label %45

45:                                               ; preds = %34, %31
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #36
  %46 = add nuw nsw i64 %10, 1
  %47 = icmp eq i64 %46, %6
  br i1 %47, label %48, label %9, !llvm.loop !393

48:                                               ; preds = %45, %7
  %49 = add nuw nsw i32 %8, 1
  %50 = icmp eq i32 %49, 20
  br i1 %50, label %51, label %7, !llvm.loop !394

51:                                               ; preds = %48
  ret i32 0
}

; Function Attrs: nofree nounwind optsize
declare i32 @fork() local_unnamed_addr #17

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @mybasename(ptr noundef readonly %0) unnamed_addr #26 {
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #35
  %3 = icmp eq ptr %2, null
  %4 = getelementptr inbounds i8, ptr %2, i64 1
  %5 = select i1 %3, ptr %0, ptr %4
  ret ptr %5
}

; Function Attrs: optsize
declare i32 @wait(ptr noundef) local_unnamed_addr #27

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #22

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #17

attributes #0 = { nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { noreturn nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind optsize willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { nofree norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind optsize memory(readwrite, argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #16 = { nocallback nofree nosync nounwind willreturn }
attributes #17 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { noreturn nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nofree nounwind optsize memory(readwrite, argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nofree optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree nosync nounwind optsize willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nofree nounwind optsize memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { mustprogress nofree nounwind optsize willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { nounwind optsize allocsize(0,1) }
attributes #29 = { cold }
attributes #30 = { noreturn nounwind optsize }
attributes #31 = { nounwind optsize allocsize(1) }
attributes #32 = { optsize }
attributes #33 = { nounwind optsize allocsize(0) }
attributes #34 = { nounwind optsize }
attributes #35 = { nounwind optsize willreturn memory(read) }
attributes #36 = { nounwind }
attributes #37 = { nounwind optsize willreturn memory(none) }
attributes #38 = { cold optsize }

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
!11 = !{!12, !8, i64 24}
!12 = !{!"action", !8, i64 0, !9, i64 8, !9, i64 16, !8, i64 24, !8, i64 32}
!13 = distinct !{!13, !14, !15, !16}
!14 = !{!"llvm.loop.mustprogress"}
!15 = !{!"llvm.loop.isvectorized", i32 1}
!16 = !{!"llvm.loop.unroll.runtime.disable"}
!17 = !{!12, !9, i64 8}
!18 = !{!12, !8, i64 0}
!19 = !{!20, !21, i64 36}
!20 = !{!"acttab", !21, i64 0, !21, i64 4, !8, i64 8, !8, i64 16, !21, i64 24, !21, i64 28, !21, i64 32, !21, i64 36, !21, i64 40}
!21 = !{!"int", !9, i64 0}
!22 = !{!20, !21, i64 40}
!23 = !{!20, !8, i64 16}
!24 = !{!20, !21, i64 32}
!25 = !{!20, !21, i64 24}
!26 = !{!20, !21, i64 28}
!27 = !{!28, !21, i64 0}
!28 = !{!"", !21, i64 0, !21, i64 4}
!29 = !{!28, !21, i64 4}
!30 = !{!20, !21, i64 0}
!31 = !{!20, !21, i64 4}
!32 = !{!20, !8, i64 8}
!33 = !{!21, !21, i64 0}
!34 = distinct !{!34, !14}
!35 = distinct !{!35, !14}
!36 = distinct !{!36, !14}
!37 = distinct !{!37, !14}
!38 = distinct !{!38, !14}
!39 = distinct !{!39, !14}
!40 = !{!41, !8, i64 64}
!41 = !{!"rule", !8, i64 0, !8, i64 8, !21, i64 16, !21, i64 20, !21, i64 24, !8, i64 32, !8, i64 40, !21, i64 48, !8, i64 56, !8, i64 64, !21, i64 72, !9, i64 76, !8, i64 80, !8, i64 88}
!42 = !{!41, !21, i64 24}
!43 = !{!41, !8, i64 32}
!44 = !{!45, !9, i64 12}
!45 = !{!"symbol", !8, i64 0, !21, i64 8, !9, i64 12, !8, i64 16, !8, i64 24, !21, i64 32, !9, i64 36, !8, i64 40, !9, i64 48, !21, i64 52, !8, i64 56, !21, i64 64, !8, i64 72, !21, i64 80, !21, i64 84, !8, i64 88}
!46 = !{!45, !21, i64 84}
!47 = !{!45, !8, i64 88}
!48 = distinct !{!48, !14}
!49 = !{!45, !21, i64 32}
!50 = distinct !{!50, !14}
!51 = distinct !{!51, !14}
!52 = !{!53, !21, i64 24}
!53 = !{!"lemon", !8, i64 0, !8, i64 8, !21, i64 16, !21, i64 20, !21, i64 24, !21, i64 28, !8, i64 32, !21, i64 40, !8, i64 48, !8, i64 56, !8, i64 64, !8, i64 72, !8, i64 80, !8, i64 88, !8, i64 96, !8, i64 104, !8, i64 112, !21, i64 120, !8, i64 128, !21, i64 136, !8, i64 144, !21, i64 152, !8, i64 160, !21, i64 168, !8, i64 176, !21, i64 184, !8, i64 192, !21, i64 200, !8, i64 208, !21, i64 216, !8, i64 224, !21, i64 232, !8, i64 240, !8, i64 248, !8, i64 256, !21, i64 264, !21, i64 268, !21, i64 272, !21, i64 276, !8, i64 280}
!54 = !{!53, !8, i64 32}
!55 = !{!45, !9, i64 48}
!56 = distinct !{!56, !14}
!57 = !{!53, !21, i64 28}
!58 = !{!45, !8, i64 40}
!59 = distinct !{!59, !14}
!60 = !{!41, !8, i64 0}
!61 = distinct !{!61, !14}
!62 = distinct !{!62, !14}
!63 = !{!45, !21, i64 8}
!64 = !{!9, !9, i64 0}
!65 = distinct !{!65, !14}
!66 = distinct !{!66, !14}
!67 = distinct !{!67, !14}
!68 = distinct !{!68, !14}
!69 = distinct !{!69, !14}
!70 = !{!53, !8, i64 96}
!71 = !{!53, !8, i64 240}
!72 = !{!53, !8, i64 8}
!73 = !{!45, !8, i64 0}
!74 = !{!53, !21, i64 40}
!75 = distinct !{!75, !14}
!76 = distinct !{!76, !14}
!77 = !{!41, !21, i64 16}
!78 = !{!79, !8, i64 16}
!79 = !{!"config", !8, i64 0, !21, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !9, i64 48, !8, i64 56, !8, i64 64}
!80 = distinct !{!80, !14}
!81 = !{!82, !21, i64 0}
!82 = !{!"s_x4", !21, i64 0, !21, i64 4, !8, i64 8, !8, i64 16}
!83 = !{!82, !21, i64 4}
!84 = !{!82, !8, i64 8}
!85 = !{!82, !8, i64 16}
!86 = distinct !{!86, !14}
!87 = distinct !{!87, !14}
!88 = !{!89, !21, i64 0}
!89 = !{!"s_x2", !21, i64 0, !21, i64 4, !8, i64 8, !8, i64 16}
!90 = !{!89, !8, i64 16}
!91 = !{!92, !8, i64 8}
!92 = !{!"s_x2node", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24}
!93 = distinct !{!93, !14}
!94 = !{!92, !8, i64 0}
!95 = distinct !{!95, !14}
!96 = distinct !{!96, !14}
!97 = distinct !{!97, !14}
!98 = distinct !{!98, !14}
!99 = !{!79, !8, i64 0}
!100 = !{!79, !21, i64 8}
!101 = !{i32 0, i32 2}
!102 = !{!79, !8, i64 32}
!103 = !{!104, !8, i64 8}
!104 = !{!"plink", !8, i64 0, !8, i64 8}
!105 = distinct !{!105, !14}
!106 = !{!79, !8, i64 24}
!107 = distinct !{!107, !14}
!108 = !{!79, !8, i64 64}
!109 = distinct !{!109, !14}
!110 = !{!111, !8, i64 0}
!111 = !{!"state", !8, i64 0, !8, i64 8, !21, i64 16, !8, i64 24, !21, i64 32, !21, i64 36, !21, i64 40, !21, i64 44, !21, i64 48}
!112 = !{!111, !8, i64 8}
!113 = !{!53, !21, i64 16}
!114 = !{!111, !21, i64 16}
!115 = !{!111, !8, i64 24}
!116 = !{!41, !21, i64 72}
!117 = distinct !{!117, !14}
!118 = distinct !{!118, !14}
!119 = distinct !{!119, !14}
!120 = distinct !{!120, !14}
!121 = !{!122, !21, i64 0}
!122 = !{!"s_x3", !21, i64 0, !21, i64 4, !8, i64 8, !8, i64 16}
!123 = !{!122, !8, i64 16}
!124 = !{!125, !8, i64 8}
!125 = !{!"s_x3node", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24}
!126 = distinct !{!126, !14}
!127 = !{!125, !8, i64 0}
!128 = !{!79, !8, i64 56}
!129 = distinct !{!129, !14}
!130 = !{!53, !8, i64 48}
!131 = !{!41, !21, i64 48}
!132 = distinct !{!132, !14}
!133 = distinct !{!133, !14}
!134 = !{!104, !8, i64 0}
!135 = distinct !{!135, !14}
!136 = distinct !{!136, !14}
!137 = distinct !{!137, !14}
!138 = !{!122, !21, i64 4}
!139 = !{!122, !8, i64 8}
!140 = !{!125, !8, i64 24}
!141 = !{!125, !8, i64 16}
!142 = distinct !{!142, !14}
!143 = !{i64 0, i64 4, !33, i64 4, i64 4, !33, i64 8, i64 8, !7, i64 16, i64 8, !7}
!144 = !{i64 0, i64 8, !7, i64 8, i64 8, !7}
!145 = !{i64 0, i64 8, !7}
!146 = !{!79, !9, i64 48}
!147 = distinct !{!147, !14}
!148 = distinct !{!148, !14}
!149 = distinct !{!149, !14}
!150 = distinct !{!150, !14}
!151 = !{!152, !8, i64 0}
!152 = !{!"s_x4node", !8, i64 0, !8, i64 8, !8, i64 16}
!153 = distinct !{!153, !14}
!154 = distinct !{!154, !14}
!155 = distinct !{!155, !14}
!156 = distinct !{!156, !14, !15, !16}
!157 = distinct !{!157, !14}
!158 = distinct !{!158, !14}
!159 = distinct !{!159, !14}
!160 = !{!152, !8, i64 16}
!161 = !{!152, !8, i64 8}
!162 = distinct !{!162, !14}
!163 = !{ptr @Configcmp, ptr @actioncmp}
!164 = distinct !{!164, !14}
!165 = !{!53, !8, i64 0}
!166 = !{!79, !8, i64 40}
!167 = distinct !{!167, !14}
!168 = distinct !{!168, !14}
!169 = distinct !{!169, !14}
!170 = distinct !{!170, !14}
!171 = distinct !{!171, !14}
!172 = distinct !{!172, !14}
!173 = distinct !{!173, !14}
!174 = distinct !{!174, !14}
!175 = distinct !{!175, !14}
!176 = distinct !{!176, !14}
!177 = distinct !{!177, !14}
!178 = distinct !{!178, !14}
!179 = distinct !{!179, !14}
!180 = distinct !{!180, !14}
!181 = !{!45, !9, i64 36}
!182 = !{!53, !21, i64 264}
!183 = distinct !{!183, !14}
!184 = distinct !{!184, !14}
!185 = distinct !{!185, !14}
!186 = !{!41, !9, i64 76}
!187 = distinct !{!187, !14}
!188 = distinct !{!188, !14}
!189 = distinct !{!189, !14}
!190 = !{!41, !21, i64 20}
!191 = distinct !{!191, !14}
!192 = !{!53, !8, i64 280}
!193 = !{!53, !21, i64 272}
!194 = !{!45, !21, i64 52}
!195 = !{!53, !21, i64 20}
!196 = !{!89, !21, i64 4}
!197 = distinct !{!197, !14}
!198 = distinct !{!198, !14}
!199 = !{!200, !200, i64 0}
!200 = !{!"short", !9, i64 0}
!201 = distinct !{!201, !14}
!202 = !{!53, !21, i64 268}
!203 = !{!204, !8, i64 8}
!204 = !{!"s_options", !9, i64 0, !8, i64 8, !8, i64 16, !8, i64 24}
!205 = distinct !{!205, !14}
!206 = !{!204, !9, i64 0}
!207 = !{!204, !8, i64 16}
!208 = distinct !{!208, !14}
!209 = !{!210, !210, i64 0}
!210 = !{!"double", !9, i64 0}
!211 = distinct !{!211, !14}
!212 = distinct !{!212, !14}
!213 = !{!214, !21, i64 0}
!214 = !{!"s_x1", !21, i64 0, !21, i64 4, !8, i64 8, !8, i64 16}
!215 = !{!214, !21, i64 4}
!216 = !{!214, !8, i64 8}
!217 = !{!214, !8, i64 16}
!218 = distinct !{!218, !14}
!219 = !{!89, !8, i64 8}
!220 = distinct !{!220, !14}
!221 = distinct !{!221, !14}
!222 = distinct !{!222, !14}
!223 = !{!224, !8, i64 24}
!224 = !{!"pstate", !8, i64 0, !21, i64 8, !21, i64 12, !8, i64 16, !8, i64 24, !9, i64 32, !8, i64 40, !8, i64 48, !8, i64 56, !21, i64 64, !9, i64 72, !9, i64 8072, !8, i64 16072, !8, i64 16080, !8, i64 16088, !8, i64 16096, !9, i64 16104, !21, i64 16108, !8, i64 16112, !8, i64 16120}
!225 = !{!224, !8, i64 0}
!226 = !{!224, !9, i64 32}
!227 = distinct !{!227, !14}
!228 = distinct !{!228, !14}
!229 = distinct !{!229, !14}
!230 = distinct !{!230, !14}
!231 = distinct !{!231, !14}
!232 = distinct !{!232, !14}
!233 = distinct !{!233, !14}
!234 = distinct !{!234, !14}
!235 = !{!224, !8, i64 16}
!236 = !{!224, !21, i64 8}
!237 = distinct !{!237, !14}
!238 = distinct !{!238, !14}
!239 = !{!224, !21, i64 12}
!240 = distinct !{!240, !14}
!241 = distinct !{!241, !14}
!242 = distinct !{!242, !14}
!243 = distinct !{!243, !14}
!244 = distinct !{!244, !14}
!245 = distinct !{!245, !14}
!246 = !{!224, !8, i64 16072}
!247 = !{!224, !8, i64 48}
!248 = !{!224, !21, i64 64}
!249 = !{!224, !8, i64 56}
!250 = !{!41, !8, i64 56}
!251 = !{!41, !8, i64 40}
!252 = distinct !{!252, !14}
!253 = !{!41, !8, i64 8}
!254 = !{!45, !8, i64 16}
!255 = !{!41, !8, i64 80}
!256 = !{!41, !8, i64 88}
!257 = !{!224, !8, i64 16112}
!258 = !{!224, !8, i64 16080}
!259 = !{!224, !8, i64 16088}
!260 = !{!224, !8, i64 16096}
!261 = !{!224, !21, i64 16108}
!262 = !{!224, !9, i64 16104}
!263 = !{!224, !8, i64 40}
!264 = !{!45, !8, i64 24}
!265 = !{!53, !21, i64 276}
!266 = !{!53, !8, i64 56}
!267 = distinct !{!267, !14}
!268 = distinct !{!268, !14}
!269 = distinct !{!269, !14}
!270 = distinct !{!270, !14}
!271 = distinct !{!271, !14}
!272 = distinct !{!272, !14}
!273 = distinct !{!273, !14}
!274 = distinct !{!274, !14}
!275 = distinct !{!275, !14}
!276 = distinct !{!276, !14}
!277 = distinct !{!277, !14}
!278 = distinct !{!278, !14}
!279 = distinct !{!279, !14}
!280 = distinct !{!280, !14}
!281 = !{!111, !21, i64 48}
!282 = !{!111, !21, i64 32}
!283 = !{!111, !21, i64 36}
!284 = distinct !{!284, !14}
!285 = distinct !{!285, !14}
!286 = distinct !{!286, !14}
!287 = distinct !{!287, !14}
!288 = distinct !{!288, !14}
!289 = distinct !{!289, !14}
!290 = distinct !{!290, !14}
!291 = distinct !{!291, !14}
!292 = !{!53, !8, i64 64}
!293 = !{!53, !8, i64 112}
!294 = !{!53, !21, i64 120}
!295 = !{!53, !8, i64 256}
!296 = distinct !{!296, !14}
!297 = !{!53, !8, i64 104}
!298 = !{!53, !8, i64 72}
!299 = distinct !{!299, !14}
!300 = distinct !{!300, !14}
!301 = !{!45, !21, i64 80}
!302 = !{!303, !8, i64 0}
!303 = !{!"axset", !8, i64 0, !21, i64 8, !21, i64 12}
!304 = !{!303, !21, i64 8}
!305 = !{!303, !21, i64 12}
!306 = distinct !{!306, !14}
!307 = distinct !{!307, !14}
!308 = !{!111, !21, i64 40}
!309 = distinct !{!309, !14}
!310 = !{!111, !21, i64 44}
!311 = distinct !{!311, !14}
!312 = distinct !{!312, !14}
!313 = distinct !{!313, !14}
!314 = distinct !{!314, !14}
!315 = distinct !{!315, !14}
!316 = distinct !{!316, !14}
!317 = distinct !{!317, !14}
!318 = distinct !{!318, !14}
!319 = distinct !{!319, !14}
!320 = distinct !{!320, !14}
!321 = distinct !{!321, !14}
!322 = !{!53, !8, i64 208}
!323 = distinct !{!323, !14}
!324 = distinct !{!324, !14}
!325 = !{!53, !8, i64 224}
!326 = !{!45, !8, i64 56}
!327 = distinct !{!327, !14}
!328 = distinct !{!328, !14}
!329 = distinct !{!329, !14}
!330 = !{!53, !8, i64 144}
!331 = !{!53, !21, i64 152}
!332 = distinct !{!332, !14}
!333 = distinct !{!333, !14}
!334 = distinct !{!334, !14}
!335 = distinct !{!335, !14}
!336 = !{!53, !8, i64 160}
!337 = !{!53, !21, i64 168}
!338 = !{!53, !8, i64 128}
!339 = !{!53, !21, i64 136}
!340 = !{!53, !8, i64 176}
!341 = !{!53, !21, i64 184}
!342 = !{!53, !8, i64 192}
!343 = !{!53, !21, i64 200}
!344 = distinct !{!344, !14}
!345 = distinct !{!345, !14}
!346 = !{!53, !8, i64 248}
!347 = distinct !{!347, !14}
!348 = distinct !{!348, !14}
!349 = distinct !{!349, !14}
!350 = !{!53, !8, i64 88}
!351 = !{!45, !8, i64 72}
!352 = distinct !{!352, !14}
!353 = distinct !{!353, !14}
!354 = distinct !{!354, !14}
!355 = distinct !{!355, !14}
!356 = distinct !{!356, !14}
!357 = distinct !{!357, !14}
!358 = distinct !{!358, !14}
!359 = !{!53, !8, i64 80}
!360 = distinct !{!360, !14}
!361 = distinct !{!361, !14}
!362 = distinct !{!362, !14}
!363 = distinct !{!363, !14}
!364 = distinct !{!364, !14}
!365 = distinct !{!365, !14}
!366 = distinct !{!366, !14}
!367 = distinct !{!367, !14}
!368 = distinct !{!368, !14}
!369 = distinct !{!369, !14}
!370 = distinct !{!370, !14}
!371 = distinct !{!371, !14}
!372 = !{!373, !8, i64 0}
!373 = !{!"s_x1node", !8, i64 0, !8, i64 8, !8, i64 16}
!374 = distinct !{!374, !14}
!375 = !{!373, !8, i64 16}
!376 = !{!373, !8, i64 8}
!377 = distinct !{!377, !14}
!378 = distinct !{!378, !14}
!379 = distinct !{!379, !14}
!380 = distinct !{!380, !14}
!381 = distinct !{!381, !14}
!382 = !{!92, !8, i64 24}
!383 = !{!92, !8, i64 16}
!384 = distinct !{!384, !14}
!385 = !{}
!386 = distinct !{!386, !14}
!387 = distinct !{!387, !14}
!388 = distinct !{!388, !14}
!389 = !{!204, !8, i64 24}
!390 = distinct !{!390, !14}
!391 = distinct !{!391, !14}
!392 = distinct !{!392, !14}
!393 = distinct !{!393, !14}
!394 = distinct !{!394, !14}
